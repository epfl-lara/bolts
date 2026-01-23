; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392366 () Bool)

(assert start!392366)

(declare-fun b!4132760 () Bool)

(declare-fun b_free!117307 () Bool)

(declare-fun b_next!118011 () Bool)

(assert (=> b!4132760 (= b_free!117307 (not b_next!118011))))

(declare-fun tp!1259676 () Bool)

(declare-fun b_and!320433 () Bool)

(assert (=> b!4132760 (= tp!1259676 b_and!320433)))

(declare-fun b_free!117309 () Bool)

(declare-fun b_next!118013 () Bool)

(assert (=> b!4132760 (= b_free!117309 (not b_next!118013))))

(declare-fun tp!1259672 () Bool)

(declare-fun b_and!320435 () Bool)

(assert (=> b!4132760 (= tp!1259672 b_and!320435)))

(declare-fun b!4132756 () Bool)

(declare-fun b_free!117311 () Bool)

(declare-fun b_next!118015 () Bool)

(assert (=> b!4132756 (= b_free!117311 (not b_next!118015))))

(declare-fun tp!1259670 () Bool)

(declare-fun b_and!320437 () Bool)

(assert (=> b!4132756 (= tp!1259670 b_and!320437)))

(declare-fun b_free!117313 () Bool)

(declare-fun b_next!118017 () Bool)

(assert (=> b!4132756 (= b_free!117313 (not b_next!118017))))

(declare-fun tp!1259667 () Bool)

(declare-fun b_and!320439 () Bool)

(assert (=> b!4132756 (= tp!1259667 b_and!320439)))

(declare-fun b!4132763 () Bool)

(declare-fun b_free!117315 () Bool)

(declare-fun b_next!118019 () Bool)

(assert (=> b!4132763 (= b_free!117315 (not b_next!118019))))

(declare-fun tp!1259675 () Bool)

(declare-fun b_and!320441 () Bool)

(assert (=> b!4132763 (= tp!1259675 b_and!320441)))

(declare-fun b_free!117317 () Bool)

(declare-fun b_next!118021 () Bool)

(assert (=> b!4132763 (= b_free!117317 (not b_next!118021))))

(declare-fun tp!1259668 () Bool)

(declare-fun b_and!320443 () Bool)

(assert (=> b!4132763 (= tp!1259668 b_and!320443)))

(declare-fun e!2564218 () Bool)

(declare-fun e!2564211 () Bool)

(declare-datatypes ((List!44881 0))(
  ( (Nil!44757) (Cons!44757 (h!50177 (_ BitVec 16)) (t!341710 List!44881)) )
))
(declare-datatypes ((TokenValue!7562 0))(
  ( (FloatLiteralValue!15124 (text!53379 List!44881)) (TokenValueExt!7561 (__x!27341 Int)) (Broken!37810 (value!229490 List!44881)) (Object!7685) (End!7562) (Def!7562) (Underscore!7562) (Match!7562) (Else!7562) (Error!7562) (Case!7562) (If!7562) (Extends!7562) (Abstract!7562) (Class!7562) (Val!7562) (DelimiterValue!15124 (del!7622 List!44881)) (KeywordValue!7568 (value!229491 List!44881)) (CommentValue!15124 (value!229492 List!44881)) (WhitespaceValue!15124 (value!229493 List!44881)) (IndentationValue!7562 (value!229494 List!44881)) (String!51559) (Int32!7562) (Broken!37811 (value!229495 List!44881)) (Boolean!7563) (Unit!64078) (OperatorValue!7565 (op!7622 List!44881)) (IdentifierValue!15124 (value!229496 List!44881)) (IdentifierValue!15125 (value!229497 List!44881)) (WhitespaceValue!15125 (value!229498 List!44881)) (True!15124) (False!15124) (Broken!37812 (value!229499 List!44881)) (Broken!37813 (value!229500 List!44881)) (True!15125) (RightBrace!7562) (RightBracket!7562) (Colon!7562) (Null!7562) (Comma!7562) (LeftBracket!7562) (False!15125) (LeftBrace!7562) (ImaginaryLiteralValue!7562 (text!53380 List!44881)) (StringLiteralValue!22686 (value!229501 List!44881)) (EOFValue!7562 (value!229502 List!44881)) (IdentValue!7562 (value!229503 List!44881)) (DelimiterValue!15125 (value!229504 List!44881)) (DedentValue!7562 (value!229505 List!44881)) (NewLineValue!7562 (value!229506 List!44881)) (IntegerValue!22686 (value!229507 (_ BitVec 32)) (text!53381 List!44881)) (IntegerValue!22687 (value!229508 Int) (text!53382 List!44881)) (Times!7562) (Or!7562) (Equal!7562) (Minus!7562) (Broken!37814 (value!229509 List!44881)) (And!7562) (Div!7562) (LessEqual!7562) (Mod!7562) (Concat!19799) (Not!7562) (Plus!7562) (SpaceValue!7562 (value!229510 List!44881)) (IntegerValue!22688 (value!229511 Int) (text!53383 List!44881)) (StringLiteralValue!22687 (text!53384 List!44881)) (FloatLiteralValue!15125 (text!53385 List!44881)) (BytesLiteralValue!7562 (value!229512 List!44881)) (CommentValue!15125 (value!229513 List!44881)) (StringLiteralValue!22688 (value!229514 List!44881)) (ErrorTokenValue!7562 (msg!7623 List!44881)) )
))
(declare-datatypes ((C!24660 0))(
  ( (C!24661 (val!14440 Int)) )
))
(declare-datatypes ((List!44882 0))(
  ( (Nil!44758) (Cons!44758 (h!50178 C!24660) (t!341711 List!44882)) )
))
(declare-datatypes ((IArray!27091 0))(
  ( (IArray!27092 (innerList!13603 List!44882)) )
))
(declare-datatypes ((Conc!13543 0))(
  ( (Node!13543 (left!33519 Conc!13543) (right!33849 Conc!13543) (csize!27316 Int) (cheight!13754 Int)) (Leaf!20924 (xs!16849 IArray!27091) (csize!27317 Int)) (Empty!13543) )
))
(declare-datatypes ((BalanceConc!26680 0))(
  ( (BalanceConc!26681 (c!709000 Conc!13543)) )
))
(declare-datatypes ((String!51560 0))(
  ( (String!51561 (value!229515 String)) )
))
(declare-datatypes ((Regex!12237 0))(
  ( (ElementMatch!12237 (c!709001 C!24660)) (Concat!19800 (regOne!24986 Regex!12237) (regTwo!24986 Regex!12237)) (EmptyExpr!12237) (Star!12237 (reg!12566 Regex!12237)) (EmptyLang!12237) (Union!12237 (regOne!24987 Regex!12237) (regTwo!24987 Regex!12237)) )
))
(declare-datatypes ((TokenValueInjection!14552 0))(
  ( (TokenValueInjection!14553 (toValue!9996 Int) (toChars!9855 Int)) )
))
(declare-datatypes ((Rule!14464 0))(
  ( (Rule!14465 (regex!7332 Regex!12237) (tag!8192 String!51560) (isSeparator!7332 Bool) (transformation!7332 TokenValueInjection!14552)) )
))
(declare-fun r!4008 () Rule!14464)

(declare-fun b!4132749 () Bool)

(declare-fun tp!1259666 () Bool)

(declare-fun inv!59359 (String!51560) Bool)

(declare-fun inv!59361 (TokenValueInjection!14552) Bool)

(assert (=> b!4132749 (= e!2564218 (and tp!1259666 (inv!59359 (tag!8192 r!4008)) (inv!59361 (transformation!7332 r!4008)) e!2564211))))

(declare-fun b!4132750 () Bool)

(declare-fun res!1689594 () Bool)

(declare-fun e!2564207 () Bool)

(assert (=> b!4132750 (=> (not res!1689594) (not e!2564207))))

(declare-datatypes ((List!44883 0))(
  ( (Nil!44759) (Cons!44759 (h!50179 Rule!14464) (t!341712 List!44883)) )
))
(declare-fun rules!3756 () List!44883)

(declare-fun rBis!149 () Rule!14464)

(declare-fun contains!9010 (List!44883 Rule!14464) Bool)

(assert (=> b!4132750 (= res!1689594 (contains!9010 rules!3756 rBis!149))))

(declare-fun b!4132751 () Bool)

(declare-fun res!1689596 () Bool)

(assert (=> b!4132751 (=> (not res!1689596) (not e!2564207))))

(declare-fun p!2912 () List!44882)

(declare-fun isEmpty!26652 (List!44882) Bool)

(assert (=> b!4132751 (= res!1689596 (not (isEmpty!26652 p!2912)))))

(declare-fun b!4132752 () Bool)

(declare-fun e!2564217 () Bool)

(declare-fun tp_is_empty!21397 () Bool)

(declare-fun tp!1259671 () Bool)

(assert (=> b!4132752 (= e!2564217 (and tp_is_empty!21397 tp!1259671))))

(declare-fun b!4132753 () Bool)

(declare-fun e!2564215 () Bool)

(declare-fun tp!1259669 () Bool)

(assert (=> b!4132753 (= e!2564215 (and tp_is_empty!21397 tp!1259669))))

(declare-fun e!2564216 () Bool)

(declare-fun e!2564210 () Bool)

(declare-fun b!4132754 () Bool)

(declare-fun tp!1259665 () Bool)

(assert (=> b!4132754 (= e!2564216 (and tp!1259665 (inv!59359 (tag!8192 (h!50179 rules!3756))) (inv!59361 (transformation!7332 (h!50179 rules!3756))) e!2564210))))

(declare-fun b!4132755 () Bool)

(declare-fun res!1689597 () Bool)

(declare-fun e!2564208 () Bool)

(assert (=> b!4132755 (=> (not res!1689597) (not e!2564208))))

(declare-fun matchR!6066 (Regex!12237 List!44882) Bool)

(assert (=> b!4132755 (= res!1689597 (matchR!6066 (regex!7332 r!4008) p!2912))))

(assert (=> b!4132756 (= e!2564210 (and tp!1259670 tp!1259667))))

(declare-fun b!4132757 () Bool)

(declare-fun res!1689595 () Bool)

(assert (=> b!4132757 (=> (not res!1689595) (not e!2564208))))

(declare-datatypes ((LexerInterface!6921 0))(
  ( (LexerInterfaceExt!6918 (__x!27342 Int)) (Lexer!6919) )
))
(declare-fun thiss!25645 () LexerInterface!6921)

(declare-fun ruleValid!3138 (LexerInterface!6921 Rule!14464) Bool)

(assert (=> b!4132757 (= res!1689595 (ruleValid!3138 thiss!25645 r!4008))))

(declare-fun b!4132759 () Bool)

(declare-fun res!1689604 () Bool)

(assert (=> b!4132759 (=> (not res!1689604) (not e!2564207))))

(declare-fun rulesInvariant!6218 (LexerInterface!6921 List!44883) Bool)

(assert (=> b!4132759 (= res!1689604 (rulesInvariant!6218 thiss!25645 rules!3756))))

(declare-fun e!2564213 () Bool)

(assert (=> b!4132760 (= e!2564213 (and tp!1259676 tp!1259672))))

(declare-fun e!2564214 () Bool)

(declare-fun b!4132761 () Bool)

(declare-fun tp!1259673 () Bool)

(assert (=> b!4132761 (= e!2564214 (and tp!1259673 (inv!59359 (tag!8192 rBis!149)) (inv!59361 (transformation!7332 rBis!149)) e!2564213))))

(declare-fun b!4132762 () Bool)

(declare-fun res!1689600 () Bool)

(assert (=> b!4132762 (=> (not res!1689600) (not e!2564207))))

(declare-fun isEmpty!26653 (List!44883) Bool)

(assert (=> b!4132762 (= res!1689600 (not (isEmpty!26653 rules!3756)))))

(assert (=> b!4132763 (= e!2564211 (and tp!1259675 tp!1259668))))

(declare-fun b!4132764 () Bool)

(declare-fun res!1689598 () Bool)

(assert (=> b!4132764 (=> (not res!1689598) (not e!2564207))))

(declare-fun input!3238 () List!44882)

(declare-fun isPrefix!4267 (List!44882 List!44882) Bool)

(assert (=> b!4132764 (= res!1689598 (isPrefix!4267 p!2912 input!3238))))

(declare-fun b!4132765 () Bool)

(get-info :version)

(assert (=> b!4132765 (= e!2564208 (not (or (not ((_ is Cons!44759) rules!3756)) (not (= (h!50179 rules!3756) rBis!149)) (not (= rBis!149 r!4008)))))))

(declare-datatypes ((Unit!64079 0))(
  ( (Unit!64080) )
))
(declare-fun lt!1473613 () Unit!64079)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2178 (LexerInterface!6921 Rule!14464 List!44883) Unit!64079)

(assert (=> b!4132765 (= lt!1473613 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2178 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4132765 (ruleValid!3138 thiss!25645 rBis!149)))

(declare-fun lt!1473611 () Unit!64079)

(assert (=> b!4132765 (= lt!1473611 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2178 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4132766 () Bool)

(assert (=> b!4132766 (= e!2564207 e!2564208)))

(declare-fun res!1689603 () Bool)

(assert (=> b!4132766 (=> (not res!1689603) (not e!2564208))))

(declare-fun lt!1473612 () BalanceConc!26680)

(declare-datatypes ((Token!13594 0))(
  ( (Token!13595 (value!229516 TokenValue!7562) (rule!10424 Rule!14464) (size!33129 Int) (originalCharacters!7828 List!44882)) )
))
(declare-datatypes ((tuple2!43170 0))(
  ( (tuple2!43171 (_1!24719 Token!13594) (_2!24719 List!44882)) )
))
(declare-datatypes ((Option!9638 0))(
  ( (None!9637) (Some!9637 (v!40253 tuple2!43170)) )
))
(declare-fun maxPrefix!4111 (LexerInterface!6921 List!44883 List!44882) Option!9638)

(declare-fun apply!10405 (TokenValueInjection!14552 BalanceConc!26680) TokenValue!7562)

(declare-fun size!33130 (List!44882) Int)

(declare-fun getSuffix!2594 (List!44882 List!44882) List!44882)

(assert (=> b!4132766 (= res!1689603 (= (maxPrefix!4111 thiss!25645 rules!3756 input!3238) (Some!9637 (tuple2!43171 (Token!13595 (apply!10405 (transformation!7332 r!4008) lt!1473612) r!4008 (size!33130 p!2912) p!2912) (getSuffix!2594 input!3238 p!2912)))))))

(declare-fun lt!1473614 () Unit!64079)

(declare-fun lemmaSemiInverse!2190 (TokenValueInjection!14552 BalanceConc!26680) Unit!64079)

(assert (=> b!4132766 (= lt!1473614 (lemmaSemiInverse!2190 (transformation!7332 r!4008) lt!1473612))))

(declare-fun seqFromList!5449 (List!44882) BalanceConc!26680)

(assert (=> b!4132766 (= lt!1473612 (seqFromList!5449 p!2912))))

(declare-fun b!4132767 () Bool)

(declare-fun e!2564209 () Bool)

(declare-fun tp!1259674 () Bool)

(assert (=> b!4132767 (= e!2564209 (and e!2564216 tp!1259674))))

(declare-fun b!4132768 () Bool)

(declare-fun res!1689599 () Bool)

(assert (=> b!4132768 (=> (not res!1689599) (not e!2564208))))

(declare-fun getIndex!678 (List!44883 Rule!14464) Int)

(assert (=> b!4132768 (= res!1689599 (< (getIndex!678 rules!3756 rBis!149) (getIndex!678 rules!3756 r!4008)))))

(declare-fun b!4132758 () Bool)

(declare-fun res!1689601 () Bool)

(assert (=> b!4132758 (=> (not res!1689601) (not e!2564207))))

(assert (=> b!4132758 (= res!1689601 (contains!9010 rules!3756 r!4008))))

(declare-fun res!1689602 () Bool)

(assert (=> start!392366 (=> (not res!1689602) (not e!2564207))))

(assert (=> start!392366 (= res!1689602 ((_ is Lexer!6919) thiss!25645))))

(assert (=> start!392366 e!2564207))

(assert (=> start!392366 e!2564209))

(assert (=> start!392366 e!2564217))

(assert (=> start!392366 true))

(assert (=> start!392366 e!2564218))

(assert (=> start!392366 e!2564215))

(assert (=> start!392366 e!2564214))

(assert (= (and start!392366 res!1689602) b!4132764))

(assert (= (and b!4132764 res!1689598) b!4132762))

(assert (= (and b!4132762 res!1689600) b!4132759))

(assert (= (and b!4132759 res!1689604) b!4132758))

(assert (= (and b!4132758 res!1689601) b!4132750))

(assert (= (and b!4132750 res!1689594) b!4132751))

(assert (= (and b!4132751 res!1689596) b!4132766))

(assert (= (and b!4132766 res!1689603) b!4132755))

(assert (= (and b!4132755 res!1689597) b!4132768))

(assert (= (and b!4132768 res!1689599) b!4132757))

(assert (= (and b!4132757 res!1689595) b!4132765))

(assert (= b!4132754 b!4132756))

(assert (= b!4132767 b!4132754))

(assert (= (and start!392366 ((_ is Cons!44759) rules!3756)) b!4132767))

(assert (= (and start!392366 ((_ is Cons!44758) p!2912)) b!4132752))

(assert (= b!4132749 b!4132763))

(assert (= start!392366 b!4132749))

(assert (= (and start!392366 ((_ is Cons!44758) input!3238)) b!4132753))

(assert (= b!4132761 b!4132760))

(assert (= start!392366 b!4132761))

(declare-fun m!4729851 () Bool)

(assert (=> b!4132761 m!4729851))

(declare-fun m!4729853 () Bool)

(assert (=> b!4132761 m!4729853))

(declare-fun m!4729855 () Bool)

(assert (=> b!4132759 m!4729855))

(declare-fun m!4729857 () Bool)

(assert (=> b!4132758 m!4729857))

(declare-fun m!4729859 () Bool)

(assert (=> b!4132768 m!4729859))

(declare-fun m!4729861 () Bool)

(assert (=> b!4132768 m!4729861))

(declare-fun m!4729863 () Bool)

(assert (=> b!4132766 m!4729863))

(declare-fun m!4729865 () Bool)

(assert (=> b!4132766 m!4729865))

(declare-fun m!4729867 () Bool)

(assert (=> b!4132766 m!4729867))

(declare-fun m!4729869 () Bool)

(assert (=> b!4132766 m!4729869))

(declare-fun m!4729871 () Bool)

(assert (=> b!4132766 m!4729871))

(declare-fun m!4729873 () Bool)

(assert (=> b!4132766 m!4729873))

(declare-fun m!4729875 () Bool)

(assert (=> b!4132749 m!4729875))

(declare-fun m!4729877 () Bool)

(assert (=> b!4132749 m!4729877))

(declare-fun m!4729879 () Bool)

(assert (=> b!4132762 m!4729879))

(declare-fun m!4729881 () Bool)

(assert (=> b!4132765 m!4729881))

(declare-fun m!4729883 () Bool)

(assert (=> b!4132765 m!4729883))

(declare-fun m!4729885 () Bool)

(assert (=> b!4132765 m!4729885))

(declare-fun m!4729887 () Bool)

(assert (=> b!4132754 m!4729887))

(declare-fun m!4729889 () Bool)

(assert (=> b!4132754 m!4729889))

(declare-fun m!4729891 () Bool)

(assert (=> b!4132750 m!4729891))

(declare-fun m!4729893 () Bool)

(assert (=> b!4132757 m!4729893))

(declare-fun m!4729895 () Bool)

(assert (=> b!4132764 m!4729895))

(declare-fun m!4729897 () Bool)

(assert (=> b!4132755 m!4729897))

(declare-fun m!4729899 () Bool)

(assert (=> b!4132751 m!4729899))

(check-sat b_and!320433 b_and!320443 (not b!4132758) (not b!4132750) (not b!4132766) b_and!320441 (not b!4132767) (not b!4132761) (not b_next!118021) (not b!4132749) (not b!4132762) (not b!4132759) tp_is_empty!21397 b_and!320435 b_and!320437 (not b!4132764) (not b!4132754) (not b!4132765) (not b!4132752) (not b!4132768) (not b!4132757) (not b_next!118013) (not b_next!118015) (not b!4132753) (not b_next!118019) (not b_next!118011) b_and!320439 (not b_next!118017) (not b!4132755) (not b!4132751))
(check-sat b_and!320433 b_and!320443 b_and!320441 (not b_next!118021) (not b_next!118013) (not b_next!118015) b_and!320435 b_and!320437 (not b_next!118019) (not b_next!118011) b_and!320439 (not b_next!118017))
