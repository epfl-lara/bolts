; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104636 () Bool)

(assert start!104636)

(declare-fun b!1181367 () Bool)

(declare-fun b_free!28133 () Bool)

(declare-fun b_next!28837 () Bool)

(assert (=> b!1181367 (= b_free!28133 (not b_next!28837))))

(declare-fun tp!336492 () Bool)

(declare-fun b_and!81125 () Bool)

(assert (=> b!1181367 (= tp!336492 b_and!81125)))

(declare-fun b_free!28135 () Bool)

(declare-fun b_next!28839 () Bool)

(assert (=> b!1181367 (= b_free!28135 (not b_next!28839))))

(declare-fun tp!336486 () Bool)

(declare-fun b_and!81127 () Bool)

(assert (=> b!1181367 (= tp!336486 b_and!81127)))

(declare-fun b!1181368 () Bool)

(declare-fun b_free!28137 () Bool)

(declare-fun b_next!28841 () Bool)

(assert (=> b!1181368 (= b_free!28137 (not b_next!28841))))

(declare-fun tp!336490 () Bool)

(declare-fun b_and!81129 () Bool)

(assert (=> b!1181368 (= tp!336490 b_and!81129)))

(declare-fun b_free!28139 () Bool)

(declare-fun b_next!28843 () Bool)

(assert (=> b!1181368 (= b_free!28139 (not b_next!28843))))

(declare-fun tp!336485 () Bool)

(declare-fun b_and!81131 () Bool)

(assert (=> b!1181368 (= tp!336485 b_and!81131)))

(declare-fun b!1181358 () Bool)

(declare-fun e!758282 () Bool)

(declare-fun e!758271 () Bool)

(assert (=> b!1181358 (= e!758282 e!758271)))

(declare-fun res!533921 () Bool)

(assert (=> b!1181358 (=> (not res!533921) (not e!758271))))

(declare-datatypes ((C!6954 0))(
  ( (C!6955 (val!3773 Int)) )
))
(declare-datatypes ((List!11780 0))(
  ( (Nil!11756) (Cons!11756 (h!17157 C!6954) (t!111450 List!11780)) )
))
(declare-datatypes ((IArray!7713 0))(
  ( (IArray!7714 (innerList!3914 List!11780)) )
))
(declare-datatypes ((Conc!3854 0))(
  ( (Node!3854 (left!10252 Conc!3854) (right!10582 Conc!3854) (csize!7938 Int) (cheight!4065 Int)) (Leaf!5909 (xs!6559 IArray!7713) (csize!7939 Int)) (Empty!3854) )
))
(declare-datatypes ((List!11781 0))(
  ( (Nil!11757) (Cons!11757 (h!17158 (_ BitVec 16)) (t!111451 List!11781)) )
))
(declare-datatypes ((BalanceConc!7730 0))(
  ( (BalanceConc!7731 (c!196794 Conc!3854)) )
))
(declare-datatypes ((TokenValue!2114 0))(
  ( (FloatLiteralValue!4228 (text!15243 List!11781)) (TokenValueExt!2113 (__x!7939 Int)) (Broken!10570 (value!66400 List!11781)) (Object!2137) (End!2114) (Def!2114) (Underscore!2114) (Match!2114) (Else!2114) (Error!2114) (Case!2114) (If!2114) (Extends!2114) (Abstract!2114) (Class!2114) (Val!2114) (DelimiterValue!4228 (del!2174 List!11781)) (KeywordValue!2120 (value!66401 List!11781)) (CommentValue!4228 (value!66402 List!11781)) (WhitespaceValue!4228 (value!66403 List!11781)) (IndentationValue!2114 (value!66404 List!11781)) (String!14239) (Int32!2114) (Broken!10571 (value!66405 List!11781)) (Boolean!2115) (Unit!18080) (OperatorValue!2117 (op!2174 List!11781)) (IdentifierValue!4228 (value!66406 List!11781)) (IdentifierValue!4229 (value!66407 List!11781)) (WhitespaceValue!4229 (value!66408 List!11781)) (True!4228) (False!4228) (Broken!10572 (value!66409 List!11781)) (Broken!10573 (value!66410 List!11781)) (True!4229) (RightBrace!2114) (RightBracket!2114) (Colon!2114) (Null!2114) (Comma!2114) (LeftBracket!2114) (False!4229) (LeftBrace!2114) (ImaginaryLiteralValue!2114 (text!15244 List!11781)) (StringLiteralValue!6342 (value!66411 List!11781)) (EOFValue!2114 (value!66412 List!11781)) (IdentValue!2114 (value!66413 List!11781)) (DelimiterValue!4229 (value!66414 List!11781)) (DedentValue!2114 (value!66415 List!11781)) (NewLineValue!2114 (value!66416 List!11781)) (IntegerValue!6342 (value!66417 (_ BitVec 32)) (text!15245 List!11781)) (IntegerValue!6343 (value!66418 Int) (text!15246 List!11781)) (Times!2114) (Or!2114) (Equal!2114) (Minus!2114) (Broken!10574 (value!66419 List!11781)) (And!2114) (Div!2114) (LessEqual!2114) (Mod!2114) (Concat!5432) (Not!2114) (Plus!2114) (SpaceValue!2114 (value!66420 List!11781)) (IntegerValue!6344 (value!66421 Int) (text!15247 List!11781)) (StringLiteralValue!6343 (text!15248 List!11781)) (FloatLiteralValue!4229 (text!15249 List!11781)) (BytesLiteralValue!2114 (value!66422 List!11781)) (CommentValue!4229 (value!66423 List!11781)) (StringLiteralValue!6344 (value!66424 List!11781)) (ErrorTokenValue!2114 (msg!2175 List!11781)) )
))
(declare-datatypes ((Regex!3318 0))(
  ( (ElementMatch!3318 (c!196795 C!6954)) (Concat!5433 (regOne!7148 Regex!3318) (regTwo!7148 Regex!3318)) (EmptyExpr!3318) (Star!3318 (reg!3647 Regex!3318)) (EmptyLang!3318) (Union!3318 (regOne!7149 Regex!3318) (regTwo!7149 Regex!3318)) )
))
(declare-datatypes ((String!14240 0))(
  ( (String!14241 (value!66425 String)) )
))
(declare-datatypes ((TokenValueInjection!3928 0))(
  ( (TokenValueInjection!3929 (toValue!3157 Int) (toChars!3016 Int)) )
))
(declare-datatypes ((Rule!3896 0))(
  ( (Rule!3897 (regex!2048 Regex!3318) (tag!2310 String!14240) (isSeparator!2048 Bool) (transformation!2048 TokenValueInjection!3928)) )
))
(declare-datatypes ((List!11782 0))(
  ( (Nil!11758) (Cons!11758 (h!17159 Rule!3896) (t!111452 List!11782)) )
))
(declare-fun rules!4386 () List!11782)

(declare-datatypes ((LexerInterface!1743 0))(
  ( (LexerInterfaceExt!1740 (__x!7940 Int)) (Lexer!1741) )
))
(declare-fun thiss!27592 () LexerInterface!1743)

(declare-datatypes ((Token!3758 0))(
  ( (Token!3759 (value!66426 TokenValue!2114) (rule!3469 Rule!3896) (size!9300 Int) (originalCharacters!2602 List!11780)) )
))
(declare-datatypes ((List!11783 0))(
  ( (Nil!11759) (Cons!11759 (h!17160 Token!3758) (t!111453 List!11783)) )
))
(declare-fun lt!406757 () List!11783)

(declare-fun rulesProduceIndividualToken!774 (LexerInterface!1743 List!11782 Token!3758) Bool)

(assert (=> b!1181358 (= res!533921 (rulesProduceIndividualToken!774 thiss!27592 rules!4386 (h!17160 lt!406757)))))

(declare-fun b!1181359 () Bool)

(declare-fun res!533925 () Bool)

(declare-fun e!758275 () Bool)

(assert (=> b!1181359 (=> (not res!533925) (not e!758275))))

(declare-fun rulesInvariant!1617 (LexerInterface!1743 List!11782) Bool)

(assert (=> b!1181359 (= res!533925 (rulesInvariant!1617 thiss!27592 rules!4386))))

(declare-fun b!1181360 () Bool)

(declare-fun tp!336491 () Bool)

(declare-fun l!6534 () List!11783)

(declare-fun e!758279 () Bool)

(declare-fun e!758278 () Bool)

(declare-fun inv!15579 (String!14240) Bool)

(declare-fun inv!15582 (TokenValueInjection!3928) Bool)

(assert (=> b!1181360 (= e!758279 (and tp!336491 (inv!15579 (tag!2310 (rule!3469 (h!17160 l!6534)))) (inv!15582 (transformation!2048 (rule!3469 (h!17160 l!6534)))) e!758278))))

(declare-fun b!1181361 () Bool)

(declare-fun res!533924 () Bool)

(assert (=> b!1181361 (=> (not res!533924) (not e!758275))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!137 (LexerInterface!1743 List!11783 List!11782) Bool)

(assert (=> b!1181361 (= res!533924 (tokensListTwoByTwoPredicateSeparableList!137 thiss!27592 l!6534 rules!4386))))

(declare-fun res!533920 () Bool)

(assert (=> start!104636 (=> (not res!533920) (not e!758275))))

(assert (=> start!104636 (= res!533920 (is-Lexer!1741 thiss!27592))))

(assert (=> start!104636 e!758275))

(assert (=> start!104636 true))

(declare-fun e!758276 () Bool)

(assert (=> start!104636 e!758276))

(declare-fun e!758272 () Bool)

(assert (=> start!104636 e!758272))

(declare-fun b!1181362 () Bool)

(declare-fun e!758273 () Bool)

(declare-fun tp!336488 () Bool)

(assert (=> b!1181362 (= e!758276 (and e!758273 tp!336488))))

(declare-fun b!1181363 () Bool)

(declare-fun res!533922 () Bool)

(assert (=> b!1181363 (=> (not res!533922) (not e!758275))))

(declare-fun rulesProduceEachTokenIndividuallyList!609 (LexerInterface!1743 List!11782 List!11783) Bool)

(assert (=> b!1181363 (= res!533922 (rulesProduceEachTokenIndividuallyList!609 thiss!27592 rules!4386 l!6534))))

(declare-fun tp!336487 () Bool)

(declare-fun b!1181364 () Bool)

(declare-fun e!758280 () Bool)

(declare-fun inv!21 (TokenValue!2114) Bool)

(assert (=> b!1181364 (= e!758280 (and (inv!21 (value!66426 (h!17160 l!6534))) e!758279 tp!336487))))

(declare-fun tp!336493 () Bool)

(declare-fun b!1181365 () Bool)

(declare-fun e!758277 () Bool)

(assert (=> b!1181365 (= e!758273 (and tp!336493 (inv!15579 (tag!2310 (h!17159 rules!4386))) (inv!15582 (transformation!2048 (h!17159 rules!4386))) e!758277))))

(declare-fun tp!336489 () Bool)

(declare-fun b!1181366 () Bool)

(declare-fun inv!15583 (Token!3758) Bool)

(assert (=> b!1181366 (= e!758272 (and (inv!15583 (h!17160 l!6534)) e!758280 tp!336489))))

(assert (=> b!1181367 (= e!758277 (and tp!336492 tp!336486))))

(assert (=> b!1181368 (= e!758278 (and tp!336490 tp!336485))))

(declare-fun b!1181369 () Bool)

(declare-fun res!533927 () Bool)

(assert (=> b!1181369 (=> (not res!533927) (not e!758275))))

(declare-fun isEmpty!7101 (List!11782) Bool)

(assert (=> b!1181369 (= res!533927 (not (isEmpty!7101 rules!4386)))))

(declare-fun b!1181370 () Bool)

(assert (=> b!1181370 (= e!758271 (rulesProduceEachTokenIndividuallyList!609 thiss!27592 rules!4386 (t!111453 lt!406757)))))

(declare-fun b!1181371 () Bool)

(assert (=> b!1181371 (= e!758275 (not true))))

(declare-fun subseq!304 (List!11783 List!11783) Bool)

(assert (=> b!1181371 (subseq!304 lt!406757 l!6534)))

(declare-datatypes ((Unit!18081 0))(
  ( (Unit!18082) )
))
(declare-fun lt!406758 () Unit!18081)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!67 (List!11783 Int) Unit!18081)

(assert (=> b!1181371 (= lt!406758 (lemmaDropSubseq!67 l!6534 i!1621))))

(assert (=> b!1181371 (= (rulesProduceEachTokenIndividuallyList!609 thiss!27592 rules!4386 lt!406757) e!758282)))

(declare-fun res!533923 () Bool)

(assert (=> b!1181371 (=> res!533923 e!758282)))

(assert (=> b!1181371 (= res!533923 (not (is-Cons!11759 lt!406757)))))

(declare-fun drop!528 (List!11783 Int) List!11783)

(assert (=> b!1181371 (= lt!406757 (drop!528 l!6534 i!1621))))

(declare-fun b!1181372 () Bool)

(declare-fun res!533926 () Bool)

(assert (=> b!1181372 (=> (not res!533926) (not e!758275))))

(assert (=> b!1181372 (= res!533926 (and (not (is-Nil!11759 l!6534)) (<= i!1621 0)))))

(assert (= (and start!104636 res!533920) b!1181369))

(assert (= (and b!1181369 res!533927) b!1181359))

(assert (= (and b!1181359 res!533925) b!1181363))

(assert (= (and b!1181363 res!533922) b!1181361))

(assert (= (and b!1181361 res!533924) b!1181372))

(assert (= (and b!1181372 res!533926) b!1181371))

(assert (= (and b!1181371 (not res!533923)) b!1181358))

(assert (= (and b!1181358 res!533921) b!1181370))

(assert (= b!1181365 b!1181367))

(assert (= b!1181362 b!1181365))

(assert (= (and start!104636 (is-Cons!11758 rules!4386)) b!1181362))

(assert (= b!1181360 b!1181368))

(assert (= b!1181364 b!1181360))

(assert (= b!1181366 b!1181364))

(assert (= (and start!104636 (is-Cons!11759 l!6534)) b!1181366))

(declare-fun m!1357521 () Bool)

(assert (=> b!1181358 m!1357521))

(declare-fun m!1357523 () Bool)

(assert (=> b!1181363 m!1357523))

(declare-fun m!1357525 () Bool)

(assert (=> b!1181369 m!1357525))

(declare-fun m!1357527 () Bool)

(assert (=> b!1181364 m!1357527))

(declare-fun m!1357529 () Bool)

(assert (=> b!1181361 m!1357529))

(declare-fun m!1357531 () Bool)

(assert (=> b!1181359 m!1357531))

(declare-fun m!1357533 () Bool)

(assert (=> b!1181370 m!1357533))

(declare-fun m!1357535 () Bool)

(assert (=> b!1181360 m!1357535))

(declare-fun m!1357537 () Bool)

(assert (=> b!1181360 m!1357537))

(declare-fun m!1357539 () Bool)

(assert (=> b!1181365 m!1357539))

(declare-fun m!1357541 () Bool)

(assert (=> b!1181365 m!1357541))

(declare-fun m!1357543 () Bool)

(assert (=> b!1181371 m!1357543))

(declare-fun m!1357545 () Bool)

(assert (=> b!1181371 m!1357545))

(declare-fun m!1357547 () Bool)

(assert (=> b!1181371 m!1357547))

(declare-fun m!1357549 () Bool)

(assert (=> b!1181371 m!1357549))

(declare-fun m!1357551 () Bool)

(assert (=> b!1181366 m!1357551))

(push 1)

(assert (not b_next!28843))

(assert (not b!1181365))

(assert (not b!1181366))

(assert (not b!1181359))

(assert b_and!81125)

(assert (not b!1181371))

(assert (not b!1181361))

(assert (not b_next!28839))

(assert b_and!81129)

(assert (not b!1181369))

(assert (not b_next!28841))

(assert (not b!1181370))

(assert b_and!81127)

(assert (not b!1181364))

(assert (not b_next!28837))

(assert (not b!1181358))

(assert (not b!1181363))

(assert (not b!1181362))

(assert (not b!1181360))

(assert b_and!81131)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!28843))

(assert b_and!81125)

(assert b_and!81127)

(assert (not b_next!28839))

(assert b_and!81129)

(assert (not b_next!28837))

(assert b_and!81131)

(assert (not b_next!28841))

(check-sat)

(pop 1)

