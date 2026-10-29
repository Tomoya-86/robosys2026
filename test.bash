#!/bin/bash
# SPDX-FileCopyrightText: 2026 Tomoya Usuki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目のテスト失敗    # 関数ngの定義 (P18と同じ)
    res=1                       # 失敗したことを記録
}

res=0                           # 0: 失敗なし (ngが呼ばれると1になる)

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
