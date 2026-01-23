; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!61500 () Bool)

(assert start!61500)

(declare-fun b!630519 () Bool)

(declare-fun e!382693 () Bool)

(declare-datatypes ((List!6564 0))(
  ( (Nil!6550) (Cons!6550 (h!11951 (_ BitVec 16)) (t!83002 List!6564)) )
))
(declare-datatypes ((TokenValue!1372 0))(
  ( (FloatLiteralValue!2744 (text!10049 List!6564)) (TokenValueExt!1371 (__x!4632 Int)) (Broken!6860 (value!43259 List!6564)) (Object!1385) (End!1372) (Def!1372) (Underscore!1372) (Match!1372) (Else!1372) (Error!1372) (Case!1372) (If!1372) (Extends!1372) (Abstract!1372) (Class!1372) (Val!1372) (DelimiterValue!2744 (del!1432 List!6564)) (KeywordValue!1378 (value!43260 List!6564)) (CommentValue!2744 (value!43261 List!6564)) (WhitespaceValue!2744 (value!43262 List!6564)) (IndentationValue!1372 (value!43263 List!6564)) (String!8597) (Int32!1372) (Broken!6861 (value!43264 List!6564)) (Boolean!1373) (Unit!11596) (OperatorValue!1375 (op!1432 List!6564)) (IdentifierValue!2744 (value!43265 List!6564)) (IdentifierValue!2745 (value!43266 List!6564)) (WhitespaceValue!2745 (value!43267 List!6564)) (True!2744) (False!2744) (Broken!6862 (value!43268 List!6564)) (Broken!6863 (value!43269 List!6564)) (True!2745) (RightBrace!1372) (RightBracket!1372) (Colon!1372) (Null!1372) (Comma!1372) (LeftBracket!1372) (False!2745) (LeftBrace!1372) (ImaginaryLiteralValue!1372 (text!10050 List!6564)) (StringLiteralValue!4116 (value!43270 List!6564)) (EOFValue!1372 (value!43271 List!6564)) (IdentValue!1372 (value!43272 List!6564)) (DelimiterValue!2745 (value!43273 List!6564)) (DedentValue!1372 (value!43274 List!6564)) (NewLineValue!1372 (value!43275 List!6564)) (IntegerValue!4116 (value!43276 (_ BitVec 32)) (text!10051 List!6564)) (IntegerValue!4117 (value!43277 Int) (text!10052 List!6564)) (Times!1372) (Or!1372) (Equal!1372) (Minus!1372) (Broken!6864 (value!43278 List!6564)) (And!1372) (Div!1372) (LessEqual!1372) (Mod!1372) (Concat!3044) (Not!1372) (Plus!1372) (SpaceValue!1372 (value!43279 List!6564)) (IntegerValue!4118 (value!43280 Int) (text!10053 List!6564)) (StringLiteralValue!4117 (text!10054 List!6564)) (FloatLiteralValue!2745 (text!10055 List!6564)) (BytesLiteralValue!1372 (value!43281 List!6564)) (CommentValue!2745 (value!43282 List!6564)) (StringLiteralValue!4118 (value!43283 List!6564)) (ErrorTokenValue!1372 (msg!1433 List!6564)) )
))
(declare-datatypes ((Regex!1672 0))(
  ( (ElementMatch!1672 (c!115778 (_ BitVec 16))) (Concat!3045 (regOne!3856 Regex!1672) (regTwo!3856 Regex!1672)) (EmptyExpr!1672) (Star!1672 (reg!2001 Regex!1672)) (EmptyLang!1672) (Union!1672 (regOne!3857 Regex!1672) (regTwo!3857 Regex!1672)) )
))
(declare-datatypes ((String!8598 0))(
  ( (String!8599 (value!43284 String)) )
))
(declare-datatypes ((IArray!4303 0))(
  ( (IArray!4304 (innerList!2209 List!6564)) )
))
(declare-datatypes ((Conc!2151 0))(
  ( (Node!2151 (left!5253 Conc!2151) (right!5583 Conc!2151) (csize!4532 Int) (cheight!2362 Int)) (Leaf!3336 (xs!4792 IArray!4303) (csize!4533 Int)) (Empty!2151) )
))
(declare-datatypes ((BalanceConc!4314 0))(
  ( (BalanceConc!4315 (c!115779 Conc!2151)) )
))
(declare-datatypes ((TokenValueInjection!2496 0))(
  ( (TokenValueInjection!2497 (toValue!2279 Int) (toChars!2138 Int)) )
))
(declare-datatypes ((Rule!2476 0))(
  ( (Rule!2477 (regex!1338 Regex!1672) (tag!1600 String!8598) (isSeparator!1338 Bool) (transformation!1338 TokenValueInjection!2496)) )
))
(declare-datatypes ((Token!2400 0))(
  ( (Token!2401 (value!43285 TokenValue!1372) (rule!2134 Rule!2476) (size!5139 Int) (originalCharacters!1371 List!6564)) )
))
(declare-datatypes ((List!6565 0))(
  ( (Nil!6551) (Cons!6551 (h!11952 Token!2400) (t!83003 List!6565)) )
))
(declare-datatypes ((IArray!4305 0))(
  ( (IArray!4306 (innerList!2210 List!6565)) )
))
(declare-datatypes ((Conc!2152 0))(
  ( (Node!2152 (left!5254 Conc!2152) (right!5584 Conc!2152) (csize!4534 Int) (cheight!2363 Int)) (Leaf!3337 (xs!4793 IArray!4305) (csize!4535 Int)) (Empty!2152) )
))
(declare-datatypes ((List!6566 0))(
  ( (Nil!6552) (Cons!6552 (h!11953 Rule!2476) (t!83004 List!6566)) )
))
(declare-datatypes ((BalanceConc!4316 0))(
  ( (BalanceConc!4317 (c!115780 Conc!2152)) )
))
(declare-datatypes ((PrintableTokens!58 0))(
  ( (PrintableTokens!59 (rules!8138 List!6566) (tokens!1159 BalanceConc!4316)) )
))
(declare-fun printableTokens!2 () PrintableTokens!58)

(declare-fun tp!196615 () Bool)

(declare-fun inv!8450 (Conc!2152) Bool)

(assert (=> b!630519 (= e!382693 (and (inv!8450 (c!115780 (tokens!1159 printableTokens!2))) tp!196615))))

(declare-fun res!273516 () Bool)

(declare-fun e!382691 () Bool)

(assert (=> start!61500 (=> (not res!273516) (not e!382691))))

(declare-fun lt!268072 () Int)

(assert (=> start!61500 (= res!273516 (> lt!268072 0))))

(declare-fun size!5140 (PrintableTokens!58) Int)

(assert (=> start!61500 (= lt!268072 (size!5140 printableTokens!2))))

(assert (=> start!61500 e!382691))

(declare-fun e!382694 () Bool)

(declare-fun inv!8451 (PrintableTokens!58) Bool)

(assert (=> start!61500 (and (inv!8451 printableTokens!2) e!382694)))

(declare-fun b!630520 () Bool)

(declare-fun lambda!16826 () Int)

(declare-fun e!382692 () Bool)

(declare-fun lambda!16825 () Int)

(declare-datatypes ((List!6567 0))(
  ( (Nil!6553) (Cons!6553 (h!11954 PrintableTokens!58) (t!83005 List!6567)) )
))
(declare-datatypes ((IArray!4307 0))(
  ( (IArray!4308 (innerList!2211 List!6567)) )
))
(declare-datatypes ((Conc!2153 0))(
  ( (Node!2153 (left!5255 Conc!2153) (right!5585 Conc!2153) (csize!4536 Int) (cheight!2364 Int)) (Leaf!3338 (xs!4794 IArray!4307) (csize!4537 Int)) (Empty!2153) )
))
(declare-datatypes ((BalanceConc!4318 0))(
  ( (BalanceConc!4319 (c!115781 Conc!2153)) )
))
(declare-fun lt!268074 () BalanceConc!4318)

(declare-datatypes ((tuple2!7174 0))(
  ( (tuple2!7175 (_1!3851 Int) (_2!3851 PrintableTokens!58)) )
))
(declare-datatypes ((List!6568 0))(
  ( (Nil!6554) (Cons!6554 (h!11955 tuple2!7174) (t!83006 List!6568)) )
))
(declare-datatypes ((IArray!4309 0))(
  ( (IArray!4310 (innerList!2212 List!6568)) )
))
(declare-datatypes ((Conc!2154 0))(
  ( (Node!2154 (left!5256 Conc!2154) (right!5586 Conc!2154) (csize!4538 Int) (cheight!2365 Int)) (Leaf!3339 (xs!4795 IArray!4309) (csize!4539 Int)) (Empty!2154) )
))
(declare-datatypes ((BalanceConc!4320 0))(
  ( (BalanceConc!4321 (c!115782 Conc!2154)) )
))
(declare-fun forall!1631 (BalanceConc!4320 Int) Bool)

(declare-fun map!1380 (BalanceConc!4318 Int) BalanceConc!4320)

(assert (=> b!630520 (= e!382692 (not (forall!1631 (map!1380 lt!268074 lambda!16825) lambda!16826)))))

(declare-fun lt!268071 () List!6567)

(declare-datatypes ((Unit!11597 0))(
  ( (Unit!11598) )
))
(declare-fun lt!268070 () Unit!11597)

(declare-fun mapPred!1 (List!6567 Int Int) Unit!11597)

(assert (=> b!630520 (= lt!268070 (mapPred!1 lt!268071 lambda!16825 lambda!16826))))

(declare-fun lt!268073 () Unit!11597)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6567) Unit!11597)

(assert (=> b!630520 (= lt!268073 (lemmaAddIdsPreservesRules!0 lt!268071))))

(declare-fun list!2783 (BalanceConc!4318) List!6567)

(assert (=> b!630520 (= lt!268071 (list!2783 lt!268074))))

(declare-datatypes ((List!6569 0))(
  ( (Nil!6555) (Cons!6555 (h!11956 Int) (t!83007 List!6569)) )
))
(declare-datatypes ((IArray!4311 0))(
  ( (IArray!4312 (innerList!2213 List!6569)) )
))
(declare-datatypes ((Conc!2155 0))(
  ( (Node!2155 (left!5257 Conc!2155) (right!5587 Conc!2155) (csize!4540 Int) (cheight!2366 Int)) (Leaf!3340 (xs!4796 IArray!4311) (csize!4541 Int)) (Empty!2155) )
))
(declare-datatypes ((BalanceConc!4322 0))(
  ( (BalanceConc!4323 (c!115783 Conc!2155)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!58 Int BalanceConc!4322 BalanceConc!4318) BalanceConc!4318)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4316 Int Int BalanceConc!4322) BalanceConc!4322)

(assert (=> b!630520 (= lt!268074 (slicesMulti!0 printableTokens!2 lt!268072 (indicesOfOpenBraces!0 (tokens!1159 printableTokens!2) lt!268072 0 (BalanceConc!4323 Empty!2155)) (BalanceConc!4319 Empty!2153)))))

(declare-fun b!630521 () Bool)

(declare-fun res!273515 () Bool)

(assert (=> b!630521 (=> (not res!273515) (not e!382692))))

(declare-fun lt!268069 () List!6566)

(declare-datatypes ((LexerInterface!1224 0))(
  ( (LexerInterfaceExt!1221 (__x!4633 Int)) (Lexer!1222) )
))
(declare-fun rulesInvariant!1159 (LexerInterface!1224 List!6566) Bool)

(assert (=> b!630521 (= res!273515 (rulesInvariant!1159 Lexer!1222 lt!268069))))

(declare-fun b!630522 () Bool)

(declare-fun res!273514 () Bool)

(assert (=> b!630522 (=> (not res!273514) (not e!382692))))

(declare-fun usesJsonRules!0 (PrintableTokens!58) Bool)

(assert (=> b!630522 (= res!273514 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!630523 () Bool)

(assert (=> b!630523 (= e!382691 e!382692)))

(declare-fun res!273517 () Bool)

(assert (=> b!630523 (=> (not res!273517) (not e!382692))))

(declare-fun isEmpty!4616 (List!6566) Bool)

(assert (=> b!630523 (= res!273517 (not (isEmpty!4616 lt!268069)))))

(declare-datatypes ((JsonLexer!132 0))(
  ( (JsonLexer!133) )
))
(declare-fun rules!109 (JsonLexer!132) List!6566)

(assert (=> b!630523 (= lt!268069 (rules!109 JsonLexer!133))))

(declare-fun b!630524 () Bool)

(declare-fun tp!196614 () Bool)

(declare-fun inv!8452 (BalanceConc!4316) Bool)

(assert (=> b!630524 (= e!382694 (and tp!196614 (inv!8452 (tokens!1159 printableTokens!2)) e!382693))))

(assert (= (and start!61500 res!273516) b!630523))

(assert (= (and b!630523 res!273517) b!630521))

(assert (= (and b!630521 res!273515) b!630522))

(assert (= (and b!630522 res!273514) b!630520))

(assert (= b!630524 b!630519))

(assert (= start!61500 b!630524))

(declare-fun m!899679 () Bool)

(assert (=> b!630520 m!899679))

(declare-fun m!899681 () Bool)

(assert (=> b!630520 m!899681))

(declare-fun m!899683 () Bool)

(assert (=> b!630520 m!899683))

(declare-fun m!899685 () Bool)

(assert (=> b!630520 m!899685))

(declare-fun m!899687 () Bool)

(assert (=> b!630520 m!899687))

(assert (=> b!630520 m!899683))

(declare-fun m!899689 () Bool)

(assert (=> b!630520 m!899689))

(declare-fun m!899691 () Bool)

(assert (=> b!630520 m!899691))

(assert (=> b!630520 m!899689))

(declare-fun m!899693 () Bool)

(assert (=> b!630522 m!899693))

(declare-fun m!899695 () Bool)

(assert (=> b!630521 m!899695))

(declare-fun m!899697 () Bool)

(assert (=> b!630524 m!899697))

(declare-fun m!899699 () Bool)

(assert (=> b!630523 m!899699))

(declare-fun m!899701 () Bool)

(assert (=> b!630523 m!899701))

(declare-fun m!899703 () Bool)

(assert (=> start!61500 m!899703))

(declare-fun m!899705 () Bool)

(assert (=> start!61500 m!899705))

(declare-fun m!899707 () Bool)

(assert (=> b!630519 m!899707))

(push 1)

(assert (not b!630520))

(assert (not b!630519))

(assert (not b!630521))

(assert (not b!630524))

(assert (not b!630523))

(assert (not b!630522))

(assert (not start!61500))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!220695 () Bool)

(assert (=> d!220695 (= (usesJsonRules!0 printableTokens!2) (= (rules!8138 printableTokens!2) (rules!109 JsonLexer!133)))))

(declare-fun bs!73030 () Bool)

(assert (= bs!73030 d!220695))

(assert (=> bs!73030 m!899701))

(assert (=> b!630522 d!220695))

(declare-fun d!220701 () Bool)

(declare-fun size!5147 (BalanceConc!4316) Int)

(assert (=> d!220701 (= (size!5140 printableTokens!2) (size!5147 (tokens!1159 printableTokens!2)))))

(declare-fun bs!73031 () Bool)

(assert (= bs!73031 d!220701))

(declare-fun m!899743 () Bool)

(assert (=> bs!73031 m!899743))

(assert (=> start!61500 d!220701))

(declare-fun d!220703 () Bool)

(declare-fun res!273551 () Bool)

(declare-fun e!382727 () Bool)

(assert (=> d!220703 (=> (not res!273551) (not e!382727))))

(assert (=> d!220703 (= res!273551 (not (isEmpty!4616 (rules!8138 printableTokens!2))))))

(assert (=> d!220703 (= (inv!8451 printableTokens!2) e!382727)))

(declare-fun b!630578 () Bool)

(declare-fun res!273552 () Bool)

(assert (=> b!630578 (=> (not res!273552) (not e!382727))))

(assert (=> b!630578 (= res!273552 (rulesInvariant!1159 Lexer!1222 (rules!8138 printableTokens!2)))))

(declare-fun b!630579 () Bool)

(declare-fun res!273553 () Bool)

(assert (=> b!630579 (=> (not res!273553) (not e!382727))))

(declare-fun rulesProduceEachTokenIndividually!567 (LexerInterface!1224 List!6566 BalanceConc!4316) Bool)

(assert (=> b!630579 (= res!273553 (rulesProduceEachTokenIndividually!567 Lexer!1222 (rules!8138 printableTokens!2) (tokens!1159 printableTokens!2)))))

(declare-fun b!630580 () Bool)

(declare-fun separableTokens!17 (LexerInterface!1224 BalanceConc!4316 List!6566) Bool)

(assert (=> b!630580 (= e!382727 (separableTokens!17 Lexer!1222 (tokens!1159 printableTokens!2) (rules!8138 printableTokens!2)))))

(assert (= (and d!220703 res!273551) b!630578))

(assert (= (and b!630578 res!273552) b!630579))

(assert (= (and b!630579 res!273553) b!630580))

(declare-fun m!899765 () Bool)

(assert (=> d!220703 m!899765))

(declare-fun m!899767 () Bool)

(assert (=> b!630578 m!899767))

(declare-fun m!899769 () Bool)

(assert (=> b!630579 m!899769))

(declare-fun m!899771 () Bool)

(assert (=> b!630580 m!899771))

(assert (=> start!61500 d!220703))

(declare-fun d!220709 () Bool)

(declare-fun res!273556 () Bool)

(declare-fun e!382730 () Bool)

(assert (=> d!220709 (=> (not res!273556) (not e!382730))))

(declare-fun rulesValid!495 (LexerInterface!1224 List!6566) Bool)

(assert (=> d!220709 (= res!273556 (rulesValid!495 Lexer!1222 lt!268069))))

(assert (=> d!220709 (= (rulesInvariant!1159 Lexer!1222 lt!268069) e!382730)))

(declare-fun b!630583 () Bool)

(declare-datatypes ((List!6576 0))(
  ( (Nil!6562) (Cons!6562 (h!11963 String!8598) (t!83033 List!6576)) )
))
(declare-fun noDuplicateTag!495 (LexerInterface!1224 List!6566 List!6576) Bool)

(assert (=> b!630583 (= e!382730 (noDuplicateTag!495 Lexer!1222 lt!268069 Nil!6562))))

(assert (= (and d!220709 res!273556) b!630583))

(declare-fun m!899773 () Bool)

(assert (=> d!220709 m!899773))

(declare-fun m!899775 () Bool)

(assert (=> b!630583 m!899775))

(assert (=> b!630521 d!220709))

(declare-fun d!220711 () Bool)

(declare-fun c!115801 () Bool)

(assert (=> d!220711 (= c!115801 (is-Node!2152 (c!115780 (tokens!1159 printableTokens!2))))))

(declare-fun e!382735 () Bool)

(assert (=> d!220711 (= (inv!8450 (c!115780 (tokens!1159 printableTokens!2))) e!382735)))

(declare-fun b!630590 () Bool)

(declare-fun inv!8456 (Conc!2152) Bool)

(assert (=> b!630590 (= e!382735 (inv!8456 (c!115780 (tokens!1159 printableTokens!2))))))

(declare-fun b!630591 () Bool)

(declare-fun e!382736 () Bool)

(assert (=> b!630591 (= e!382735 e!382736)))

(declare-fun res!273559 () Bool)

(assert (=> b!630591 (= res!273559 (not (is-Leaf!3337 (c!115780 (tokens!1159 printableTokens!2)))))))

(assert (=> b!630591 (=> res!273559 e!382736)))

(declare-fun b!630592 () Bool)

(declare-fun inv!8457 (Conc!2152) Bool)

(assert (=> b!630592 (= e!382736 (inv!8457 (c!115780 (tokens!1159 printableTokens!2))))))

(assert (= (and d!220711 c!115801) b!630590))

(assert (= (and d!220711 (not c!115801)) b!630591))

(assert (= (and b!630591 (not res!273559)) b!630592))

(declare-fun m!899777 () Bool)

(assert (=> b!630590 m!899777))

(declare-fun m!899779 () Bool)

(assert (=> b!630592 m!899779))

(assert (=> b!630519 d!220711))

(declare-fun d!220713 () Bool)

(declare-fun lambda!16848 () Int)

(declare-fun lambda!16847 () Int)

(assert (=> d!220713 (not (= lambda!16848 lambda!16847))))

(declare-fun forall!1633 (List!6567 Int) Bool)

(assert (=> d!220713 (forall!1633 lt!268071 lambda!16848)))

(declare-fun lt!268106 () Unit!11597)

(declare-fun e!382739 () Unit!11597)

(assert (=> d!220713 (= lt!268106 e!382739)))

(declare-fun c!115804 () Bool)

(assert (=> d!220713 (= c!115804 (is-Nil!6553 lt!268071))))

(assert (=> d!220713 (forall!1633 lt!268071 lambda!16847)))

(assert (=> d!220713 (= (lemmaAddIdsPreservesRules!0 lt!268071) lt!268106)))

(declare-fun b!630597 () Bool)

(declare-fun Unit!11602 () Unit!11597)

(assert (=> b!630597 (= e!382739 Unit!11602)))

(declare-fun b!630598 () Bool)

(declare-fun Unit!11603 () Unit!11597)

(assert (=> b!630598 (= e!382739 Unit!11603)))

(declare-fun lt!268107 () Unit!11597)

(assert (=> b!630598 (= lt!268107 (lemmaAddIdsPreservesRules!0 (t!83005 lt!268071)))))

(assert (= (and d!220713 c!115804) b!630597))

(assert (= (and d!220713 (not c!115804)) b!630598))

(declare-fun m!899781 () Bool)

(assert (=> d!220713 m!899781))

(declare-fun m!899783 () Bool)

(assert (=> d!220713 m!899783))

(declare-fun m!899785 () Bool)

(assert (=> b!630598 m!899785))

(assert (=> b!630520 d!220713))

(declare-fun bs!73034 () Bool)

(declare-fun d!220715 () Bool)

(assert (= bs!73034 (and d!220715 d!220713)))

(declare-fun lambda!16851 () Int)

(assert (=> bs!73034 (not (= lambda!16851 lambda!16847))))

(assert (=> bs!73034 (not (= lambda!16851 lambda!16848))))

(assert (=> d!220715 true))

(declare-fun order!5053 () Int)

(declare-fun order!5051 () Int)

(declare-fun dynLambda!3671 (Int Int) Int)

(declare-fun dynLambda!3672 (Int Int) Int)

(assert (=> d!220715 (< (dynLambda!3671 order!5051 lambda!16825) (dynLambda!3672 order!5053 lambda!16851))))

(assert (=> d!220715 true))

(declare-fun order!5055 () Int)

(declare-fun dynLambda!3673 (Int Int) Int)

(assert (=> d!220715 (< (dynLambda!3673 order!5055 lambda!16826) (dynLambda!3672 order!5053 lambda!16851))))

(declare-fun forall!1634 (List!6568 Int) Bool)

(declare-fun map!1382 (List!6567 Int) List!6568)

(assert (=> d!220715 (forall!1634 (map!1382 lt!268071 lambda!16825) lambda!16826)))

(declare-fun lt!268110 () Unit!11597)

(declare-fun choose!4580 (List!6567 Int Int) Unit!11597)

(assert (=> d!220715 (= lt!268110 (choose!4580 lt!268071 lambda!16825 lambda!16826))))

(assert (=> d!220715 (forall!1633 lt!268071 lambda!16851)))

(assert (=> d!220715 (= (mapPred!1 lt!268071 lambda!16825 lambda!16826) lt!268110)))

(declare-fun bs!73035 () Bool)

(assert (= bs!73035 d!220715))

(declare-fun m!899787 () Bool)

(assert (=> bs!73035 m!899787))

(assert (=> bs!73035 m!899787))

(declare-fun m!899789 () Bool)

(assert (=> bs!73035 m!899789))

(declare-fun m!899791 () Bool)

(assert (=> bs!73035 m!899791))

(declare-fun m!899793 () Bool)

(assert (=> bs!73035 m!899793))

(assert (=> b!630520 d!220715))

(declare-fun lt!268113 () Bool)

(declare-fun d!220717 () Bool)

(declare-fun list!2785 (BalanceConc!4320) List!6568)

(assert (=> d!220717 (= lt!268113 (forall!1634 (list!2785 (map!1380 lt!268074 lambda!16825)) lambda!16826))))

(declare-fun forall!1635 (Conc!2154 Int) Bool)

(assert (=> d!220717 (= lt!268113 (forall!1635 (c!115782 (map!1380 lt!268074 lambda!16825)) lambda!16826))))

(assert (=> d!220717 (= (forall!1631 (map!1380 lt!268074 lambda!16825) lambda!16826) lt!268113)))

(declare-fun bs!73036 () Bool)

(assert (= bs!73036 d!220717))

(assert (=> bs!73036 m!899683))

(declare-fun m!899795 () Bool)

(assert (=> bs!73036 m!899795))

(assert (=> bs!73036 m!899795))

(declare-fun m!899797 () Bool)

(assert (=> bs!73036 m!899797))

(declare-fun m!899799 () Bool)

(assert (=> bs!73036 m!899799))

(assert (=> b!630520 d!220717))

(declare-fun bs!73039 () Bool)

(declare-fun b!630625 () Bool)

(assert (= bs!73039 (and b!630625 d!220713)))

(declare-fun lambda!16862 () Int)

(assert (=> bs!73039 (= lambda!16862 lambda!16847)))

(assert (=> bs!73039 (not (= lambda!16862 lambda!16848))))

(declare-fun bs!73040 () Bool)

(assert (= bs!73040 (and b!630625 d!220715)))

(assert (=> bs!73040 (not (= lambda!16862 lambda!16851))))

(declare-fun bs!73041 () Bool)

(declare-fun d!220719 () Bool)

(assert (= bs!73041 (and d!220719 d!220713)))

(declare-fun lambda!16863 () Int)

(assert (=> bs!73041 (= lambda!16863 lambda!16847)))

(assert (=> bs!73041 (not (= lambda!16863 lambda!16848))))

(declare-fun bs!73042 () Bool)

(assert (= bs!73042 (and d!220719 d!220715)))

(assert (=> bs!73042 (not (= lambda!16863 lambda!16851))))

(declare-fun bs!73043 () Bool)

(assert (= bs!73043 (and d!220719 b!630625)))

(assert (=> bs!73043 (= lambda!16863 lambda!16862)))

(declare-fun b!630623 () Bool)

(declare-fun e!382750 () PrintableTokens!58)

(declare-fun call!41374 () PrintableTokens!58)

(assert (=> b!630623 (= e!382750 call!41374)))

(declare-fun b!630624 () Bool)

(assert (=> b!630624 (= e!382750 call!41374)))

(declare-fun lt!268145 () Int)

(declare-fun c!115816 () Bool)

(declare-fun bm!41369 () Bool)

(declare-fun lt!268142 () Int)

(declare-fun slice!19 (PrintableTokens!58 Int Int) PrintableTokens!58)

(assert (=> bm!41369 (= call!41374 (slice!19 printableTokens!2 (ite c!115816 lt!268145 lt!268142) (ite c!115816 (+ lt!268142 1) (+ lt!268145 1))))))

(declare-fun lt!268146 () PrintableTokens!58)

(declare-fun e!382751 () BalanceConc!4318)

(declare-fun tail!869 (BalanceConc!4322) BalanceConc!4322)

(declare-fun append!179 (BalanceConc!4318 PrintableTokens!58) BalanceConc!4318)

(assert (=> b!630625 (= e!382751 (slicesMulti!0 printableTokens!2 lt!268072 (tail!869 (tail!869 (indicesOfOpenBraces!0 (tokens!1159 printableTokens!2) lt!268072 0 (BalanceConc!4323 Empty!2155)))) (append!179 (BalanceConc!4319 Empty!2153) lt!268146)))))

(declare-fun apply!1561 (BalanceConc!4322 Int) Int)

(assert (=> b!630625 (= lt!268145 (apply!1561 (indicesOfOpenBraces!0 (tokens!1159 printableTokens!2) lt!268072 0 (BalanceConc!4323 Empty!2155)) 0))))

(assert (=> b!630625 (= lt!268142 (apply!1561 (indicesOfOpenBraces!0 (tokens!1159 printableTokens!2) lt!268072 0 (BalanceConc!4323 Empty!2155)) 1))))

(assert (=> b!630625 (= c!115816 (<= lt!268145 lt!268142))))

(assert (=> b!630625 (= lt!268146 e!382750)))

(declare-fun lt!268143 () Unit!11597)

(declare-fun lemmaConcatPreservesForall!11 (List!6567 List!6567 Int) Unit!11597)

(assert (=> b!630625 (= lt!268143 (lemmaConcatPreservesForall!11 (list!2783 (BalanceConc!4319 Empty!2153)) (Cons!6553 lt!268146 Nil!6553) lambda!16862))))

(declare-fun b!630626 () Bool)

(assert (=> b!630626 (= e!382751 (BalanceConc!4319 Empty!2153))))

(declare-fun lt!268144 () BalanceConc!4318)

(declare-fun forall!1636 (BalanceConc!4318 Int) Bool)

(assert (=> d!220719 (forall!1636 lt!268144 lambda!16863)))

(assert (=> d!220719 (= lt!268144 e!382751)))

(declare-fun c!115815 () Bool)

(declare-fun size!5148 (BalanceConc!4322) Int)

(assert (=> d!220719 (= c!115815 (>= (size!5148 (indicesOfOpenBraces!0 (tokens!1159 printableTokens!2) lt!268072 0 (BalanceConc!4323 Empty!2155))) 2))))

(assert (=> d!220719 (= (size!5140 printableTokens!2) lt!268072)))

(assert (=> d!220719 (= (slicesMulti!0 printableTokens!2 lt!268072 (indicesOfOpenBraces!0 (tokens!1159 printableTokens!2) lt!268072 0 (BalanceConc!4323 Empty!2155)) (BalanceConc!4319 Empty!2153)) lt!268144)))

(assert (= (and d!220719 c!115815) b!630625))

(assert (= (and d!220719 (not c!115815)) b!630626))

(assert (= (and b!630625 c!115816) b!630623))

(assert (= (and b!630625 (not c!115816)) b!630624))

(assert (= (or b!630623 b!630624) bm!41369))

(declare-fun m!899829 () Bool)

(assert (=> bm!41369 m!899829))

(assert (=> b!630625 m!899689))

(declare-fun m!899831 () Bool)

(assert (=> b!630625 m!899831))

(assert (=> b!630625 m!899689))

(declare-fun m!899833 () Bool)

(assert (=> b!630625 m!899833))

(assert (=> b!630625 m!899689))

(declare-fun m!899835 () Bool)

(assert (=> b!630625 m!899835))

(declare-fun m!899837 () Bool)

(assert (=> b!630625 m!899837))

(declare-fun m!899839 () Bool)

(assert (=> b!630625 m!899839))

(assert (=> b!630625 m!899837))

(declare-fun m!899841 () Bool)

(assert (=> b!630625 m!899841))

(declare-fun m!899843 () Bool)

(assert (=> b!630625 m!899843))

(declare-fun m!899845 () Bool)

(assert (=> b!630625 m!899845))

(assert (=> b!630625 m!899831))

(assert (=> b!630625 m!899841))

(assert (=> b!630625 m!899843))

(declare-fun m!899847 () Bool)

(assert (=> d!220719 m!899847))

(assert (=> d!220719 m!899689))

(declare-fun m!899849 () Bool)

(assert (=> d!220719 m!899849))

(assert (=> d!220719 m!899703))

(assert (=> b!630520 d!220719))

(declare-fun d!220725 () Bool)

(declare-fun list!2786 (Conc!2153) List!6567)

(assert (=> d!220725 (= (list!2783 lt!268074) (list!2786 (c!115781 lt!268074)))))

(declare-fun bs!73044 () Bool)

(assert (= bs!73044 d!220725))

(declare-fun m!899851 () Bool)

(assert (=> bs!73044 m!899851))

(assert (=> b!630520 d!220725))

(declare-fun b!630657 () Bool)

(assert (=> b!630657 true))

(declare-fun bs!73051 () Bool)

(declare-fun d!220727 () Bool)

(assert (= bs!73051 (and d!220727 b!630657)))

(declare-fun lambda!16878 () Int)

(declare-fun lambda!16877 () Int)

(assert (=> bs!73051 (= lambda!16878 lambda!16877)))

(assert (=> d!220727 true))

(declare-fun b!630653 () Bool)

(declare-fun e!382768 () Bool)

(assert (=> b!630653 (= e!382768 (<= 0 (size!5147 (tokens!1159 printableTokens!2))))))

(declare-fun b!630654 () Bool)

(declare-fun e!382765 () BalanceConc!4322)

(assert (=> b!630654 (= e!382765 (BalanceConc!4323 Empty!2155))))

(declare-fun b!630655 () Bool)

(declare-fun e!382769 () Bool)

(declare-fun lt!268164 () Token!2400)

(declare-fun isKeywordValue!0 (Token!2400 TokenValue!1372) Bool)

(assert (=> b!630655 (= e!382769 (isKeywordValue!0 lt!268164 RightBrace!1372))))

(declare-fun lt!268162 () BalanceConc!4322)

(declare-fun forall!1637 (BalanceConc!4322 Int) Bool)

(assert (=> d!220727 (forall!1637 lt!268162 lambda!16878)))

(declare-fun e!382767 () BalanceConc!4322)

(assert (=> d!220727 (= lt!268162 e!382767)))

(declare-fun c!115826 () Bool)

(assert (=> d!220727 (= c!115826 (>= 0 (size!5147 (tokens!1159 printableTokens!2))))))

(assert (=> d!220727 e!382768))

(declare-fun res!273564 () Bool)

(assert (=> d!220727 (=> (not res!273564) (not e!382768))))

(assert (=> d!220727 (= res!273564 (>= 0 0))))

(assert (=> d!220727 (= (indicesOfOpenBraces!0 (tokens!1159 printableTokens!2) lt!268072 0 (BalanceConc!4323 Empty!2155)) lt!268162)))

(declare-fun bm!41372 () Bool)

(declare-fun c!115827 () Bool)

(declare-fun c!115828 () Bool)

(assert (=> bm!41372 (= c!115827 c!115828)))

(declare-fun call!41377 () BalanceConc!4322)

(assert (=> bm!41372 (= call!41377 (indicesOfOpenBraces!0 (tokens!1159 printableTokens!2) lt!268072 (+ 0 1) e!382765))))

(declare-fun b!630656 () Bool)

(declare-fun e!382766 () BalanceConc!4322)

(assert (=> b!630656 (= e!382767 e!382766)))

(declare-fun apply!1562 (BalanceConc!4316 Int) Token!2400)

(assert (=> b!630656 (= lt!268164 (apply!1562 (tokens!1159 printableTokens!2) 0))))

(declare-fun res!273565 () Bool)

(assert (=> b!630656 (= res!273565 (isKeywordValue!0 lt!268164 LeftBrace!1372))))

(assert (=> b!630656 (=> res!273565 e!382769)))

(assert (=> b!630656 (= c!115828 e!382769)))

(declare-fun lt!268163 () Unit!11597)

(declare-fun lemmaConcatPreservesForall!12 (List!6569 List!6569 Int) Unit!11597)

(declare-fun list!2787 (BalanceConc!4322) List!6569)

(assert (=> b!630657 (= lt!268163 (lemmaConcatPreservesForall!12 (list!2787 (BalanceConc!4323 Empty!2155)) (Cons!6555 0 Nil!6555) lambda!16877))))

(assert (=> b!630657 (= e!382766 call!41377)))

(declare-fun b!630658 () Bool)

(declare-fun append!180 (BalanceConc!4322 Int) BalanceConc!4322)

(assert (=> b!630658 (= e!382765 (append!180 (BalanceConc!4323 Empty!2155) 0))))

(declare-fun b!630659 () Bool)

(assert (=> b!630659 (= e!382767 (BalanceConc!4323 Empty!2155))))

(declare-fun b!630660 () Bool)

(assert (=> b!630660 (= e!382766 call!41377)))

(assert (= (and d!220727 res!273564) b!630653))

(assert (= (and d!220727 c!115826) b!630659))

(assert (= (and d!220727 (not c!115826)) b!630656))

(assert (= (and b!630656 (not res!273565)) b!630655))

(assert (= (and b!630656 c!115828) b!630657))

(assert (= (and b!630656 (not c!115828)) b!630660))

(assert (= (or b!630657 b!630660) bm!41372))

(assert (= (and bm!41372 c!115827) b!630658))

(assert (= (and bm!41372 (not c!115827)) b!630654))

(declare-fun m!899867 () Bool)

(assert (=> b!630655 m!899867))

(declare-fun m!899869 () Bool)

(assert (=> bm!41372 m!899869))

(assert (=> b!630653 m!899743))

(declare-fun m!899871 () Bool)

(assert (=> b!630656 m!899871))

(declare-fun m!899873 () Bool)

(assert (=> b!630656 m!899873))

(declare-fun m!899875 () Bool)

(assert (=> b!630658 m!899875))

(declare-fun m!899877 () Bool)

(assert (=> b!630657 m!899877))

(assert (=> b!630657 m!899877))

(declare-fun m!899879 () Bool)

(assert (=> b!630657 m!899879))

(declare-fun m!899881 () Bool)

(assert (=> d!220727 m!899881))

(assert (=> d!220727 m!899743))

(assert (=> b!630520 d!220727))

(declare-fun d!220733 () Bool)

(declare-fun e!382775 () Bool)

(assert (=> d!220733 e!382775))

(declare-fun res!273571 () Bool)

(assert (=> d!220733 (=> (not res!273571) (not e!382775))))

(declare-fun lt!268170 () BalanceConc!4320)

(assert (=> d!220733 (= res!273571 (= (list!2785 lt!268170) (map!1382 (list!2783 lt!268074) lambda!16825)))))

(declare-fun map!1383 (Conc!2153 Int) Conc!2154)

(assert (=> d!220733 (= lt!268170 (BalanceConc!4321 (map!1383 (c!115781 lt!268074) lambda!16825)))))

(assert (=> d!220733 (= (map!1380 lt!268074 lambda!16825) lt!268170)))

(declare-fun b!630668 () Bool)

(declare-fun isBalanced!574 (Conc!2154) Bool)

(assert (=> b!630668 (= e!382775 (isBalanced!574 (map!1383 (c!115781 lt!268074) lambda!16825)))))

(assert (= (and d!220733 res!273571) b!630668))

(declare-fun m!899893 () Bool)

(assert (=> d!220733 m!899893))

(assert (=> d!220733 m!899679))

(assert (=> d!220733 m!899679))

(declare-fun m!899895 () Bool)

(assert (=> d!220733 m!899895))

(declare-fun m!899897 () Bool)

(assert (=> d!220733 m!899897))

(assert (=> b!630668 m!899897))

(assert (=> b!630668 m!899897))

(declare-fun m!899899 () Bool)

(assert (=> b!630668 m!899899))

(assert (=> b!630520 d!220733))

(declare-fun d!220741 () Bool)

(assert (=> d!220741 (= (isEmpty!4616 lt!268069) (is-Nil!6552 lt!268069))))

(assert (=> b!630523 d!220741))

(declare-fun d!220743 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!132) Rule!2476)

(declare-fun integerLiteralRule!0 (JsonLexer!132) Rule!2476)

(declare-fun floatLiteralRule!0 (JsonLexer!132) Rule!2476)

(declare-fun trueRule!0 (JsonLexer!132) Rule!2476)

(declare-fun falseRule!0 (JsonLexer!132) Rule!2476)

(declare-fun nullRule!0 (JsonLexer!132) Rule!2476)

(declare-fun jsonstringRule!0 (JsonLexer!132) Rule!2476)

(declare-fun lBraceRule!0 (JsonLexer!132) Rule!2476)

(declare-fun rBraceRule!0 (JsonLexer!132) Rule!2476)

(declare-fun lBracketRule!0 (JsonLexer!132) Rule!2476)

(declare-fun rBracketRule!0 (JsonLexer!132) Rule!2476)

(declare-fun colonRule!0 (JsonLexer!132) Rule!2476)

(declare-fun commaRule!0 (JsonLexer!132) Rule!2476)

(declare-fun eofRule!0 (JsonLexer!132) Rule!2476)

(assert (=> d!220743 (= (rules!109 JsonLexer!133) (Cons!6552 (whitespaceRule!0 JsonLexer!133) (Cons!6552 (integerLiteralRule!0 JsonLexer!133) (Cons!6552 (floatLiteralRule!0 JsonLexer!133) (Cons!6552 (trueRule!0 JsonLexer!133) (Cons!6552 (falseRule!0 JsonLexer!133) (Cons!6552 (nullRule!0 JsonLexer!133) (Cons!6552 (jsonstringRule!0 JsonLexer!133) (Cons!6552 (lBraceRule!0 JsonLexer!133) (Cons!6552 (rBraceRule!0 JsonLexer!133) (Cons!6552 (lBracketRule!0 JsonLexer!133) (Cons!6552 (rBracketRule!0 JsonLexer!133) (Cons!6552 (colonRule!0 JsonLexer!133) (Cons!6552 (commaRule!0 JsonLexer!133) (Cons!6552 (eofRule!0 JsonLexer!133) Nil!6552)))))))))))))))))

(declare-fun bs!73054 () Bool)

(assert (= bs!73054 d!220743))

(declare-fun m!899901 () Bool)

(assert (=> bs!73054 m!899901))

(declare-fun m!899903 () Bool)

(assert (=> bs!73054 m!899903))

(declare-fun m!899905 () Bool)

(assert (=> bs!73054 m!899905))

(declare-fun m!899907 () Bool)

(assert (=> bs!73054 m!899907))

(declare-fun m!899909 () Bool)

(assert (=> bs!73054 m!899909))

(declare-fun m!899911 () Bool)

(assert (=> bs!73054 m!899911))

(declare-fun m!899913 () Bool)

(assert (=> bs!73054 m!899913))

(declare-fun m!899915 () Bool)

(assert (=> bs!73054 m!899915))

(declare-fun m!899917 () Bool)

(assert (=> bs!73054 m!899917))

(declare-fun m!899919 () Bool)

(assert (=> bs!73054 m!899919))

(declare-fun m!899921 () Bool)

(assert (=> bs!73054 m!899921))

(declare-fun m!899923 () Bool)

(assert (=> bs!73054 m!899923))

(declare-fun m!899925 () Bool)

(assert (=> bs!73054 m!899925))

(declare-fun m!899927 () Bool)

(assert (=> bs!73054 m!899927))

(assert (=> b!630523 d!220743))

(declare-fun d!220745 () Bool)

(declare-fun isBalanced!575 (Conc!2152) Bool)

(assert (=> d!220745 (= (inv!8452 (tokens!1159 printableTokens!2)) (isBalanced!575 (c!115780 (tokens!1159 printableTokens!2))))))

(declare-fun bs!73055 () Bool)

(assert (= bs!73055 d!220745))

(declare-fun m!899929 () Bool)

(assert (=> bs!73055 m!899929))

(assert (=> b!630524 d!220745))

(declare-fun e!382780 () Bool)

(declare-fun tp!196630 () Bool)

(declare-fun b!630677 () Bool)

(declare-fun tp!196628 () Bool)

(assert (=> b!630677 (= e!382780 (and (inv!8450 (left!5254 (c!115780 (tokens!1159 printableTokens!2)))) tp!196630 (inv!8450 (right!5584 (c!115780 (tokens!1159 printableTokens!2)))) tp!196628))))

(declare-fun b!630679 () Bool)

(declare-fun e!382781 () Bool)

(declare-fun tp!196629 () Bool)

(assert (=> b!630679 (= e!382781 tp!196629)))

(declare-fun b!630678 () Bool)

(declare-fun inv!8458 (IArray!4305) Bool)

(assert (=> b!630678 (= e!382780 (and (inv!8458 (xs!4793 (c!115780 (tokens!1159 printableTokens!2)))) e!382781))))

(assert (=> b!630519 (= tp!196615 (and (inv!8450 (c!115780 (tokens!1159 printableTokens!2))) e!382780))))

(assert (= (and b!630519 (is-Node!2152 (c!115780 (tokens!1159 printableTokens!2)))) b!630677))

(assert (= b!630678 b!630679))

(assert (= (and b!630519 (is-Leaf!3337 (c!115780 (tokens!1159 printableTokens!2)))) b!630678))

(declare-fun m!899931 () Bool)

(assert (=> b!630677 m!899931))

(declare-fun m!899933 () Bool)

(assert (=> b!630677 m!899933))

(declare-fun m!899935 () Bool)

(assert (=> b!630678 m!899935))

(assert (=> b!630519 m!899707))

(declare-fun b!630690 () Bool)

(declare-fun b_free!18445 () Bool)

(declare-fun b_next!18461 () Bool)

(assert (=> b!630690 (= b_free!18445 (not b_next!18461))))

(declare-fun tp!196637 () Bool)

(declare-fun b_and!62239 () Bool)

(assert (=> b!630690 (= tp!196637 b_and!62239)))

(declare-fun b_free!18447 () Bool)

(declare-fun b_next!18463 () Bool)

(assert (=> b!630690 (= b_free!18447 (not b_next!18463))))

(declare-fun tp!196639 () Bool)

(declare-fun b_and!62241 () Bool)

(assert (=> b!630690 (= tp!196639 b_and!62241)))

(declare-fun e!382790 () Bool)

(assert (=> b!630690 (= e!382790 (and tp!196637 tp!196639))))

(declare-fun b!630689 () Bool)

(declare-fun e!382791 () Bool)

(declare-fun inv!8447 (String!8598) Bool)

(declare-fun inv!8459 (TokenValueInjection!2496) Bool)

(assert (=> b!630689 (= e!382791 (and (inv!8447 (tag!1600 (h!11953 (rules!8138 printableTokens!2)))) (inv!8459 (transformation!1338 (h!11953 (rules!8138 printableTokens!2)))) e!382790))))

(declare-fun b!630688 () Bool)

(declare-fun e!382793 () Bool)

(declare-fun tp!196638 () Bool)

(assert (=> b!630688 (= e!382793 (and e!382791 tp!196638))))

(assert (=> b!630524 (= tp!196614 e!382793)))

(assert (= b!630689 b!630690))

(assert (= b!630688 b!630689))

(assert (= (and b!630524 (is-Cons!6552 (rules!8138 printableTokens!2))) b!630688))

(declare-fun m!899937 () Bool)

(assert (=> b!630689 m!899937))

(declare-fun m!899939 () Bool)

(assert (=> b!630689 m!899939))

(push 1)

(assert (not b!630668))

(assert (not d!220713))

(assert (not b!630625))

(assert (not d!220727))

(assert (not d!220717))

(assert (not b!630580))

(assert (not b!630519))

(assert (not b!630653))

(assert (not d!220715))

(assert (not b!630657))

(assert b_and!62239)

(assert (not d!220719))

(assert (not b_next!18461))

(assert (not b!630677))

(assert (not d!220733))

(assert (not d!220745))

(assert (not b!630688))

(assert (not b!630655))

(assert (not d!220743))

(assert b_and!62241)

(assert (not d!220725))

(assert (not bm!41369))

(assert (not b!630578))

(assert (not b!630598))

(assert (not b!630579))

(assert (not b_next!18463))

(assert (not b!630679))

(assert (not d!220701))

(assert (not d!220695))

(assert (not b!630689))

(assert (not d!220703))

(assert (not b!630590))

(assert (not b!630678))

(assert (not bm!41372))

(assert (not b!630656))

(assert (not b!630592))

(assert (not b!630583))

(assert (not b!630658))

(assert (not d!220709))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62241)

(assert b_and!62239)

(assert (not b_next!18463))

(assert (not b_next!18461))

(check-sat)

(pop 1)

