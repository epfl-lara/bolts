; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271672 () Bool)

(assert start!271672)

(declare-fun b!2808325 () Bool)

(declare-fun b_free!80053 () Bool)

(declare-fun b_next!80757 () Bool)

(assert (=> b!2808325 (= b_free!80053 (not b_next!80757))))

(declare-fun tp!896373 () Bool)

(declare-fun b_and!205119 () Bool)

(assert (=> b!2808325 (= tp!896373 b_and!205119)))

(declare-fun b_free!80055 () Bool)

(declare-fun b_next!80759 () Bool)

(assert (=> b!2808325 (= b_free!80055 (not b_next!80759))))

(declare-fun tp!896371 () Bool)

(declare-fun b_and!205121 () Bool)

(assert (=> b!2808325 (= tp!896371 b_and!205121)))

(declare-fun b!2808315 () Bool)

(declare-fun b_free!80057 () Bool)

(declare-fun b_next!80761 () Bool)

(assert (=> b!2808315 (= b_free!80057 (not b_next!80761))))

(declare-fun tp!896377 () Bool)

(declare-fun b_and!205123 () Bool)

(assert (=> b!2808315 (= tp!896377 b_and!205123)))

(declare-fun b_free!80059 () Bool)

(declare-fun b_next!80763 () Bool)

(assert (=> b!2808315 (= b_free!80059 (not b_next!80763))))

(declare-fun tp!896375 () Bool)

(declare-fun b_and!205125 () Bool)

(assert (=> b!2808315 (= tp!896375 b_and!205125)))

(declare-fun e!1775731 () Bool)

(assert (=> b!2808315 (= e!1775731 (and tp!896377 tp!896375))))

(declare-fun b!2808316 () Bool)

(declare-fun e!1775729 () Bool)

(declare-datatypes ((List!32859 0))(
  ( (Nil!32759) (Cons!32759 (h!38179 (_ BitVec 16)) (t!229539 List!32859)) )
))
(declare-datatypes ((TokenValue!5123 0))(
  ( (FloatLiteralValue!10246 (text!36306 List!32859)) (TokenValueExt!5122 (__x!21903 Int)) (Broken!25615 (value!157562 List!32859)) (Object!5222) (End!5123) (Def!5123) (Underscore!5123) (Match!5123) (Else!5123) (Error!5123) (Case!5123) (If!5123) (Extends!5123) (Abstract!5123) (Class!5123) (Val!5123) (DelimiterValue!10246 (del!5183 List!32859)) (KeywordValue!5129 (value!157563 List!32859)) (CommentValue!10246 (value!157564 List!32859)) (WhitespaceValue!10246 (value!157565 List!32859)) (IndentationValue!5123 (value!157566 List!32859)) (String!35950) (Int32!5123) (Broken!25616 (value!157567 List!32859)) (Boolean!5124) (Unit!46797) (OperatorValue!5126 (op!5183 List!32859)) (IdentifierValue!10246 (value!157568 List!32859)) (IdentifierValue!10247 (value!157569 List!32859)) (WhitespaceValue!10247 (value!157570 List!32859)) (True!10246) (False!10246) (Broken!25617 (value!157571 List!32859)) (Broken!25618 (value!157572 List!32859)) (True!10247) (RightBrace!5123) (RightBracket!5123) (Colon!5123) (Null!5123) (Comma!5123) (LeftBracket!5123) (False!10247) (LeftBrace!5123) (ImaginaryLiteralValue!5123 (text!36307 List!32859)) (StringLiteralValue!15369 (value!157573 List!32859)) (EOFValue!5123 (value!157574 List!32859)) (IdentValue!5123 (value!157575 List!32859)) (DelimiterValue!10247 (value!157576 List!32859)) (DedentValue!5123 (value!157577 List!32859)) (NewLineValue!5123 (value!157578 List!32859)) (IntegerValue!15369 (value!157579 (_ BitVec 32)) (text!36308 List!32859)) (IntegerValue!15370 (value!157580 Int) (text!36309 List!32859)) (Times!5123) (Or!5123) (Equal!5123) (Minus!5123) (Broken!25619 (value!157581 List!32859)) (And!5123) (Div!5123) (LessEqual!5123) (Mod!5123) (Concat!13394) (Not!5123) (Plus!5123) (SpaceValue!5123 (value!157582 List!32859)) (IntegerValue!15371 (value!157583 Int) (text!36310 List!32859)) (StringLiteralValue!15370 (text!36311 List!32859)) (FloatLiteralValue!10247 (text!36312 List!32859)) (BytesLiteralValue!5123 (value!157584 List!32859)) (CommentValue!10247 (value!157585 List!32859)) (StringLiteralValue!15371 (value!157586 List!32859)) (ErrorTokenValue!5123 (msg!5184 List!32859)) )
))
(declare-datatypes ((C!16700 0))(
  ( (C!16701 (val!10284 Int)) )
))
(declare-datatypes ((List!32860 0))(
  ( (Nil!32760) (Cons!32760 (h!38180 C!16700) (t!229540 List!32860)) )
))
(declare-datatypes ((IArray!20285 0))(
  ( (IArray!20286 (innerList!10200 List!32860)) )
))
(declare-datatypes ((Conc!10140 0))(
  ( (Node!10140 (left!24725 Conc!10140) (right!25055 Conc!10140) (csize!20510 Int) (cheight!10351 Int)) (Leaf!15444 (xs!13252 IArray!20285) (csize!20511 Int)) (Empty!10140) )
))
(declare-datatypes ((BalanceConc!19894 0))(
  ( (BalanceConc!19895 (c!454904 Conc!10140)) )
))
(declare-datatypes ((TokenValueInjection!9686 0))(
  ( (TokenValueInjection!9687 (toValue!6903 Int) (toChars!6762 Int)) )
))
(declare-datatypes ((Regex!8271 0))(
  ( (ElementMatch!8271 (c!454905 C!16700)) (Concat!13395 (regOne!17054 Regex!8271) (regTwo!17054 Regex!8271)) (EmptyExpr!8271) (Star!8271 (reg!8600 Regex!8271)) (EmptyLang!8271) (Union!8271 (regOne!17055 Regex!8271) (regTwo!17055 Regex!8271)) )
))
(declare-datatypes ((String!35951 0))(
  ( (String!35952 (value!157587 String)) )
))
(declare-datatypes ((Rule!9602 0))(
  ( (Rule!9603 (regex!4901 Regex!8271) (tag!5405 String!35951) (isSeparator!4901 Bool) (transformation!4901 TokenValueInjection!9686)) )
))
(declare-datatypes ((Token!9204 0))(
  ( (Token!9205 (value!157588 TokenValue!5123) (rule!7329 Rule!9602) (size!25544 Int) (originalCharacters!5633 List!32860)) )
))
(declare-fun separatorToken!99 () Token!9204)

(declare-fun tp!896370 () Bool)

(declare-fun inv!44444 (String!35951) Bool)

(declare-fun inv!44447 (TokenValueInjection!9686) Bool)

(assert (=> b!2808316 (= e!1775729 (and tp!896370 (inv!44444 (tag!5405 (rule!7329 separatorToken!99))) (inv!44447 (transformation!4901 (rule!7329 separatorToken!99))) e!1775731))))

(declare-fun b!2808317 () Bool)

(declare-fun e!1775726 () Bool)

(declare-fun lt!1003498 () List!32860)

(assert (=> b!2808317 (= e!1775726 (= lt!1003498 Nil!32760))))

(declare-datatypes ((List!32861 0))(
  ( (Nil!32761) (Cons!32761 (h!38181 Token!9204) (t!229541 List!32861)) )
))
(declare-fun lt!1003496 () List!32861)

(declare-fun e!1775723 () Bool)

(declare-fun lt!1003493 () List!32860)

(declare-datatypes ((LexerInterface!4492 0))(
  ( (LexerInterfaceExt!4489 (__x!21904 Int)) (Lexer!4490) )
))
(declare-fun thiss!13843 () LexerInterface!4492)

(declare-fun b!2808318 () Bool)

(declare-fun ++!8045 (List!32860 List!32860) List!32860)

(declare-fun list!12265 (BalanceConc!19894) List!32860)

(declare-fun charsOf!3044 (Token!9204) BalanceConc!19894)

(declare-fun printList!1204 (LexerInterface!4492 List!32861) List!32860)

(assert (=> b!2808318 (= e!1775723 (= lt!1003493 (++!8045 (list!12265 (charsOf!3044 (h!38181 lt!1003496))) (printList!1204 thiss!13843 (t!229541 lt!1003496)))))))

(declare-fun b!2808319 () Bool)

(assert (=> b!2808319 (= e!1775723 (= lt!1003493 Nil!32760))))

(declare-fun res!1169709 () Bool)

(declare-fun e!1775719 () Bool)

(assert (=> start!271672 (=> (not res!1169709) (not e!1775719))))

(declare-fun l!4240 () List!32861)

(get-info :version)

(assert (=> start!271672 (= res!1169709 (and ((_ is Lexer!4490) thiss!13843) (isSeparator!4901 (rule!7329 separatorToken!99)) ((_ is Cons!32761) l!4240)))))

(assert (=> start!271672 e!1775719))

(assert (=> start!271672 true))

(declare-fun e!1775720 () Bool)

(declare-fun inv!44448 (Token!9204) Bool)

(assert (=> start!271672 (and (inv!44448 separatorToken!99) e!1775720)))

(declare-fun e!1775722 () Bool)

(assert (=> start!271672 e!1775722))

(declare-fun lt!1003497 () List!32861)

(declare-fun b!2808320 () Bool)

(assert (=> b!2808320 (= e!1775726 (= lt!1003498 (++!8045 (list!12265 (charsOf!3044 (h!38181 lt!1003497))) (printList!1204 thiss!13843 (t!229541 lt!1003497)))))))

(declare-fun b!2808321 () Bool)

(declare-fun tp!896372 () Bool)

(declare-fun inv!21 (TokenValue!5123) Bool)

(assert (=> b!2808321 (= e!1775720 (and (inv!21 (value!157588 separatorToken!99)) e!1775729 tp!896372))))

(declare-fun b!2808322 () Bool)

(assert (=> b!2808322 (= e!1775719 (not true))))

(declare-fun lt!1003494 () List!32860)

(assert (=> b!2808322 (= lt!1003494 (list!12265 (charsOf!3044 separatorToken!99)))))

(declare-fun lt!1003495 () List!32860)

(assert (=> b!2808322 (= lt!1003495 (list!12265 (charsOf!3044 (h!38181 l!4240))))))

(assert (=> b!2808322 e!1775723))

(declare-fun c!454903 () Bool)

(assert (=> b!2808322 (= c!454903 ((_ is Cons!32761) lt!1003496))))

(assert (=> b!2808322 (= lt!1003493 (printList!1204 thiss!13843 lt!1003496))))

(assert (=> b!2808322 e!1775726))

(declare-fun c!454902 () Bool)

(assert (=> b!2808322 (= c!454902 ((_ is Cons!32761) lt!1003497))))

(assert (=> b!2808322 (= lt!1003498 (printList!1204 thiss!13843 lt!1003497))))

(declare-fun $colon$colon!552 (List!32861 Token!9204) List!32861)

(assert (=> b!2808322 (= lt!1003497 ($colon$colon!552 lt!1003496 (h!38181 l!4240)))))

(declare-fun withSeparatorTokenList!140 (LexerInterface!4492 List!32861 Token!9204) List!32861)

(assert (=> b!2808322 (= lt!1003496 ($colon$colon!552 (withSeparatorTokenList!140 thiss!13843 (t!229541 l!4240) separatorToken!99) separatorToken!99))))

(declare-fun b!2808323 () Bool)

(declare-fun e!1775727 () Bool)

(declare-fun e!1775725 () Bool)

(declare-fun tp!896378 () Bool)

(assert (=> b!2808323 (= e!1775725 (and tp!896378 (inv!44444 (tag!5405 (rule!7329 (h!38181 l!4240)))) (inv!44447 (transformation!4901 (rule!7329 (h!38181 l!4240)))) e!1775727))))

(declare-fun tp!896376 () Bool)

(declare-fun b!2808324 () Bool)

(declare-fun e!1775724 () Bool)

(assert (=> b!2808324 (= e!1775724 (and (inv!21 (value!157588 (h!38181 l!4240))) e!1775725 tp!896376))))

(assert (=> b!2808325 (= e!1775727 (and tp!896373 tp!896371))))

(declare-fun b!2808326 () Bool)

(declare-fun tp!896374 () Bool)

(assert (=> b!2808326 (= e!1775722 (and (inv!44448 (h!38181 l!4240)) e!1775724 tp!896374))))

(assert (= (and start!271672 res!1169709) b!2808322))

(assert (= (and b!2808322 c!454902) b!2808320))

(assert (= (and b!2808322 (not c!454902)) b!2808317))

(assert (= (and b!2808322 c!454903) b!2808318))

(assert (= (and b!2808322 (not c!454903)) b!2808319))

(assert (= b!2808316 b!2808315))

(assert (= b!2808321 b!2808316))

(assert (= start!271672 b!2808321))

(assert (= b!2808323 b!2808325))

(assert (= b!2808324 b!2808323))

(assert (= b!2808326 b!2808324))

(assert (= (and start!271672 ((_ is Cons!32761) l!4240)) b!2808326))

(declare-fun m!3237823 () Bool)

(assert (=> b!2808322 m!3237823))

(declare-fun m!3237825 () Bool)

(assert (=> b!2808322 m!3237825))

(declare-fun m!3237827 () Bool)

(assert (=> b!2808322 m!3237827))

(declare-fun m!3237829 () Bool)

(assert (=> b!2808322 m!3237829))

(assert (=> b!2808322 m!3237829))

(declare-fun m!3237831 () Bool)

(assert (=> b!2808322 m!3237831))

(assert (=> b!2808322 m!3237825))

(declare-fun m!3237833 () Bool)

(assert (=> b!2808322 m!3237833))

(declare-fun m!3237835 () Bool)

(assert (=> b!2808322 m!3237835))

(declare-fun m!3237837 () Bool)

(assert (=> b!2808322 m!3237837))

(assert (=> b!2808322 m!3237833))

(declare-fun m!3237839 () Bool)

(assert (=> b!2808322 m!3237839))

(declare-fun m!3237841 () Bool)

(assert (=> b!2808320 m!3237841))

(assert (=> b!2808320 m!3237841))

(declare-fun m!3237843 () Bool)

(assert (=> b!2808320 m!3237843))

(declare-fun m!3237845 () Bool)

(assert (=> b!2808320 m!3237845))

(assert (=> b!2808320 m!3237843))

(assert (=> b!2808320 m!3237845))

(declare-fun m!3237847 () Bool)

(assert (=> b!2808320 m!3237847))

(declare-fun m!3237849 () Bool)

(assert (=> b!2808326 m!3237849))

(declare-fun m!3237851 () Bool)

(assert (=> b!2808324 m!3237851))

(declare-fun m!3237853 () Bool)

(assert (=> b!2808321 m!3237853))

(declare-fun m!3237855 () Bool)

(assert (=> b!2808323 m!3237855))

(declare-fun m!3237857 () Bool)

(assert (=> b!2808323 m!3237857))

(declare-fun m!3237859 () Bool)

(assert (=> start!271672 m!3237859))

(declare-fun m!3237861 () Bool)

(assert (=> b!2808318 m!3237861))

(assert (=> b!2808318 m!3237861))

(declare-fun m!3237863 () Bool)

(assert (=> b!2808318 m!3237863))

(declare-fun m!3237865 () Bool)

(assert (=> b!2808318 m!3237865))

(assert (=> b!2808318 m!3237863))

(assert (=> b!2808318 m!3237865))

(declare-fun m!3237867 () Bool)

(assert (=> b!2808318 m!3237867))

(declare-fun m!3237869 () Bool)

(assert (=> b!2808316 m!3237869))

(declare-fun m!3237871 () Bool)

(assert (=> b!2808316 m!3237871))

(check-sat (not b!2808323) b_and!205119 b_and!205121 (not b!2808316) (not b_next!80763) (not b!2808322) (not start!271672) (not b!2808320) (not b!2808326) (not b_next!80761) (not b!2808324) (not b!2808318) b_and!205123 (not b!2808321) (not b_next!80757) b_and!205125 (not b_next!80759))
(check-sat b_and!205119 (not b_next!80761) b_and!205121 (not b_next!80763) b_and!205123 (not b_next!80757) b_and!205125 (not b_next!80759))
