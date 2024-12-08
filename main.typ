// MIT No Attribution
// Copyright 2024 Shunsuke Kimura

#import "lib.typ": sci-conf, gothic
#show: sci-conf.with(
  title: [システム制御情報研究発表講演会用Typstテンプレート], 
  etitle: [Typst Template for ISCIE Conferences],
  authors: [著者の所属　◯ 著者 氏名，共著 者],
  eauthors: [A. First and B. Second \ Affiliation of the author(s) ],
  abstract: [This is the Typst template file for SCI25. This template is prepared to support document creation. Some formats such as margins, title, sections, and body text styles are pre-set for documents written in Japanese. Authors can change formats as necessary within the following submission guidelines. All papers must be written in English or Japanese. The paper must be in two column A4 format with the length 2 to 8 pages. The margins must be set larger than the specified sizes [1]. In SCI25, the proceedings will be downloaded PDF file. The total file size for a paper should not exceed a total of 10MB. The other templates are also available on the SCI25’s web site. ],
  bibliography: bibliography("refs.yml", full: false)
)

// ソースコードブロックを表示するためのパッケージ
#import "@preview/codly:1.1.1": *
#show: codly-init.with()

// 定理環境を整えるパッケージ
#import "@preview/ctheorems:1.1.3": thmplain, thmproof, thmrules
#let thmjp = thmplain.with(base: {}, separator: [#h(0.5em)], titlefmt: strong, inset: (top: 0em, left: 0em))
#let definition = thmjp("definition", text(font: gothic)[定義])
#let lemma = thmjp("lemma",text(font: gothic)[補題])
#let theorem = thmjp("theorem", text(font: gothic)[定理])
#let corollary = thmjp("corollary",text(font: gothic)[系])
#let proof = thmproof("proof", text(font: gothic)[証明], separator: [#h(0.9em)], titlefmt: strong, inset: (top: 0em, left: 0em))
#show: thmrules.with(qed-symbol: $square$)

= はじめに
