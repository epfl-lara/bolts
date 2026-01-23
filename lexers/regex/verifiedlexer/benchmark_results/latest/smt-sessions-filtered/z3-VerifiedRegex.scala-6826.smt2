; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358996 () Bool)

(assert start!358996)

(declare-fun b!3835565 () Bool)

(declare-fun b_free!101925 () Bool)

(declare-fun b_next!102629 () Bool)

(assert (=> b!3835565 (= b_free!101925 (not b_next!102629))))

(declare-fun tp!1160975 () Bool)

(declare-fun b_and!285247 () Bool)

(assert (=> b!3835565 (= tp!1160975 b_and!285247)))

(declare-fun b_free!101927 () Bool)

(declare-fun b_next!102631 () Bool)

(assert (=> b!3835565 (= b_free!101927 (not b_next!102631))))

(declare-fun tp!1160971 () Bool)

(declare-fun b_and!285249 () Bool)

(assert (=> b!3835565 (= tp!1160971 b_and!285249)))

(declare-fun b!3835566 () Bool)

(declare-fun b_free!101929 () Bool)

(declare-fun b_next!102633 () Bool)

(assert (=> b!3835566 (= b_free!101929 (not b_next!102633))))

(declare-fun tp!1160985 () Bool)

(declare-fun b_and!285251 () Bool)

(assert (=> b!3835566 (= tp!1160985 b_and!285251)))

(declare-fun b_free!101931 () Bool)

(declare-fun b_next!102635 () Bool)

(assert (=> b!3835566 (= b_free!101931 (not b_next!102635))))

(declare-fun tp!1160974 () Bool)

(declare-fun b_and!285253 () Bool)

(assert (=> b!3835566 (= tp!1160974 b_and!285253)))

(declare-fun b!3835559 () Bool)

(declare-fun b_free!101933 () Bool)

(declare-fun b_next!102637 () Bool)

(assert (=> b!3835559 (= b_free!101933 (not b_next!102637))))

(declare-fun tp!1160979 () Bool)

(declare-fun b_and!285255 () Bool)

(assert (=> b!3835559 (= tp!1160979 b_and!285255)))

(declare-fun b_free!101935 () Bool)

(declare-fun b_next!102639 () Bool)

(assert (=> b!3835559 (= b_free!101935 (not b_next!102639))))

(declare-fun tp!1160970 () Bool)

(declare-fun b_and!285257 () Bool)

(assert (=> b!3835559 (= tp!1160970 b_and!285257)))

(declare-fun b!3835548 () Bool)

(declare-fun tp!1160976 () Bool)

(declare-fun e!2368809 () Bool)

(declare-datatypes ((List!40634 0))(
  ( (Nil!40510) (Cons!40510 (h!45930 (_ BitVec 16)) (t!309621 List!40634)) )
))
(declare-datatypes ((TokenValue!6470 0))(
  ( (FloatLiteralValue!12940 (text!45735 List!40634)) (TokenValueExt!6469 (__x!25157 Int)) (Broken!32350 (value!198448 List!40634)) (Object!6593) (End!6470) (Def!6470) (Underscore!6470) (Match!6470) (Else!6470) (Error!6470) (Case!6470) (If!6470) (Extends!6470) (Abstract!6470) (Class!6470) (Val!6470) (DelimiterValue!12940 (del!6530 List!40634)) (KeywordValue!6476 (value!198449 List!40634)) (CommentValue!12940 (value!198450 List!40634)) (WhitespaceValue!12940 (value!198451 List!40634)) (IndentationValue!6470 (value!198452 List!40634)) (String!46067) (Int32!6470) (Broken!32351 (value!198453 List!40634)) (Boolean!6471) (Unit!58245) (OperatorValue!6473 (op!6530 List!40634)) (IdentifierValue!12940 (value!198454 List!40634)) (IdentifierValue!12941 (value!198455 List!40634)) (WhitespaceValue!12941 (value!198456 List!40634)) (True!12940) (False!12940) (Broken!32352 (value!198457 List!40634)) (Broken!32353 (value!198458 List!40634)) (True!12941) (RightBrace!6470) (RightBracket!6470) (Colon!6470) (Null!6470) (Comma!6470) (LeftBracket!6470) (False!12941) (LeftBrace!6470) (ImaginaryLiteralValue!6470 (text!45736 List!40634)) (StringLiteralValue!19410 (value!198459 List!40634)) (EOFValue!6470 (value!198460 List!40634)) (IdentValue!6470 (value!198461 List!40634)) (DelimiterValue!12941 (value!198462 List!40634)) (DedentValue!6470 (value!198463 List!40634)) (NewLineValue!6470 (value!198464 List!40634)) (IntegerValue!19410 (value!198465 (_ BitVec 32)) (text!45737 List!40634)) (IntegerValue!19411 (value!198466 Int) (text!45738 List!40634)) (Times!6470) (Or!6470) (Equal!6470) (Minus!6470) (Broken!32354 (value!198467 List!40634)) (And!6470) (Div!6470) (LessEqual!6470) (Mod!6470) (Concat!17615) (Not!6470) (Plus!6470) (SpaceValue!6470 (value!198468 List!40634)) (IntegerValue!19412 (value!198469 Int) (text!45739 List!40634)) (StringLiteralValue!19411 (text!45740 List!40634)) (FloatLiteralValue!12941 (text!45741 List!40634)) (BytesLiteralValue!6470 (value!198470 List!40634)) (CommentValue!12941 (value!198471 List!40634)) (StringLiteralValue!19412 (value!198472 List!40634)) (ErrorTokenValue!6470 (msg!6531 List!40634)) )
))
(declare-datatypes ((C!22476 0))(
  ( (C!22477 (val!13332 Int)) )
))
(declare-datatypes ((Regex!11145 0))(
  ( (ElementMatch!11145 (c!668784 C!22476)) (Concat!17616 (regOne!22802 Regex!11145) (regTwo!22802 Regex!11145)) (EmptyExpr!11145) (Star!11145 (reg!11474 Regex!11145)) (EmptyLang!11145) (Union!11145 (regOne!22803 Regex!11145) (regTwo!22803 Regex!11145)) )
))
(declare-datatypes ((String!46068 0))(
  ( (String!46069 (value!198473 String)) )
))
(declare-datatypes ((List!40635 0))(
  ( (Nil!40511) (Cons!40511 (h!45931 C!22476) (t!309622 List!40635)) )
))
(declare-datatypes ((IArray!24907 0))(
  ( (IArray!24908 (innerList!12511 List!40635)) )
))
(declare-datatypes ((Conc!12451 0))(
  ( (Node!12451 (left!31333 Conc!12451) (right!31663 Conc!12451) (csize!25132 Int) (cheight!12662 Int)) (Leaf!19278 (xs!15757 IArray!24907) (csize!25133 Int)) (Empty!12451) )
))
(declare-datatypes ((BalanceConc!24496 0))(
  ( (BalanceConc!24497 (c!668785 Conc!12451)) )
))
(declare-datatypes ((TokenValueInjection!12368 0))(
  ( (TokenValueInjection!12369 (toValue!8652 Int) (toChars!8511 Int)) )
))
(declare-datatypes ((Rule!12280 0))(
  ( (Rule!12281 (regex!6240 Regex!11145) (tag!7100 String!46068) (isSeparator!6240 Bool) (transformation!6240 TokenValueInjection!12368)) )
))
(declare-datatypes ((Token!11618 0))(
  ( (Token!11619 (value!198474 TokenValue!6470) (rule!9074 Rule!12280) (size!30515 Int) (originalCharacters!6840 List!40635)) )
))
(declare-datatypes ((List!40636 0))(
  ( (Nil!40512) (Cons!40512 (h!45932 Token!11618) (t!309623 List!40636)) )
))
(declare-fun prefixTokens!80 () List!40636)

(declare-fun e!2368813 () Bool)

(declare-fun inv!21 (TokenValue!6470) Bool)

(assert (=> b!3835548 (= e!2368813 (and (inv!21 (value!198474 (h!45932 prefixTokens!80))) e!2368809 tp!1160976))))

(declare-fun b!3835549 () Bool)

(declare-fun res!1552448 () Bool)

(declare-fun e!2368815 () Bool)

(assert (=> b!3835549 (=> (not res!1552448) (not e!2368815))))

(declare-datatypes ((LexerInterface!5829 0))(
  ( (LexerInterfaceExt!5826 (__x!25158 Int)) (Lexer!5827) )
))
(declare-fun thiss!20629 () LexerInterface!5829)

(declare-fun suffix!1176 () List!40635)

(declare-datatypes ((List!40637 0))(
  ( (Nil!40513) (Cons!40513 (h!45933 Rule!12280) (t!309624 List!40637)) )
))
(declare-fun rules!2768 () List!40637)

(declare-fun suffixTokens!72 () List!40636)

(declare-fun suffixResult!91 () List!40635)

(declare-datatypes ((tuple2!39686 0))(
  ( (tuple2!39687 (_1!22977 List!40636) (_2!22977 List!40635)) )
))
(declare-fun lexList!1597 (LexerInterface!5829 List!40637 List!40635) tuple2!39686)

(assert (=> b!3835549 (= res!1552448 (= (lexList!1597 thiss!20629 rules!2768 suffix!1176) (tuple2!39687 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3835550 () Bool)

(declare-fun e!2368800 () Bool)

(declare-fun tp!1160978 () Bool)

(declare-fun inv!54654 (String!46068) Bool)

(declare-fun inv!54657 (TokenValueInjection!12368) Bool)

(assert (=> b!3835550 (= e!2368809 (and tp!1160978 (inv!54654 (tag!7100 (rule!9074 (h!45932 prefixTokens!80)))) (inv!54657 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) e!2368800))))

(declare-fun b!3835551 () Bool)

(declare-fun e!2368808 () Bool)

(declare-fun e!2368806 () Bool)

(declare-fun tp!1160980 () Bool)

(assert (=> b!3835551 (= e!2368808 (and e!2368806 tp!1160980))))

(declare-fun res!1552452 () Bool)

(declare-fun e!2368811 () Bool)

(assert (=> start!358996 (=> (not res!1552452) (not e!2368811))))

(get-info :version)

(assert (=> start!358996 (= res!1552452 ((_ is Lexer!5827) thiss!20629))))

(assert (=> start!358996 e!2368811))

(declare-fun e!2368796 () Bool)

(assert (=> start!358996 e!2368796))

(assert (=> start!358996 true))

(declare-fun e!2368807 () Bool)

(assert (=> start!358996 e!2368807))

(assert (=> start!358996 e!2368808))

(declare-fun e!2368799 () Bool)

(assert (=> start!358996 e!2368799))

(declare-fun e!2368817 () Bool)

(assert (=> start!358996 e!2368817))

(declare-fun e!2368805 () Bool)

(assert (=> start!358996 e!2368805))

(declare-fun b!3835552 () Bool)

(declare-fun e!2368812 () Bool)

(assert (=> b!3835552 (= e!2368815 e!2368812)))

(declare-fun res!1552455 () Bool)

(assert (=> b!3835552 (=> (not res!1552455) (not e!2368812))))

(declare-datatypes ((tuple2!39688 0))(
  ( (tuple2!39689 (_1!22978 Token!11618) (_2!22978 List!40635)) )
))
(declare-datatypes ((Option!8658 0))(
  ( (None!8657) (Some!8657 (v!38947 tuple2!39688)) )
))
(declare-fun lt!1331185 () Option!8658)

(assert (=> b!3835552 (= res!1552455 ((_ is Some!8657) lt!1331185))))

(declare-fun lt!1331184 () List!40635)

(declare-fun maxPrefix!3133 (LexerInterface!5829 List!40637 List!40635) Option!8658)

(assert (=> b!3835552 (= lt!1331185 (maxPrefix!3133 thiss!20629 rules!2768 lt!1331184))))

(declare-fun b!3835553 () Bool)

(declare-fun e!2368814 () Bool)

(declare-fun tp!1160972 () Bool)

(declare-fun inv!54658 (Token!11618) Bool)

(assert (=> b!3835553 (= e!2368817 (and (inv!54658 (h!45932 suffixTokens!72)) e!2368814 tp!1160972))))

(declare-fun b!3835554 () Bool)

(declare-fun e!2368818 () Bool)

(assert (=> b!3835554 (= e!2368812 (not e!2368818))))

(declare-fun res!1552449 () Bool)

(assert (=> b!3835554 (=> res!1552449 e!2368818)))

(declare-fun lt!1331183 () List!40635)

(declare-fun size!30516 (List!40635) Int)

(assert (=> b!3835554 (= res!1552449 (< (size!30516 lt!1331184) (size!30516 lt!1331183)))))

(declare-fun isPrefix!3339 (List!40635 List!40635) Bool)

(declare-fun ++!10237 (List!40635 List!40635) List!40635)

(assert (=> b!3835554 (isPrefix!3339 lt!1331183 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185))))))

(declare-datatypes ((Unit!58246 0))(
  ( (Unit!58247) )
))
(declare-fun lt!1331181 () Unit!58246)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2202 (List!40635 List!40635) Unit!58246)

(assert (=> b!3835554 (= lt!1331181 (lemmaConcatTwoListThenFirstIsPrefix!2202 lt!1331183 (_2!22978 (v!38947 lt!1331185))))))

(declare-fun list!15092 (BalanceConc!24496) List!40635)

(declare-fun charsOf!4068 (Token!11618) BalanceConc!24496)

(assert (=> b!3835554 (= lt!1331183 (list!15092 (charsOf!4068 (_1!22978 (v!38947 lt!1331185)))))))

(declare-fun ruleValid!2192 (LexerInterface!5829 Rule!12280) Bool)

(assert (=> b!3835554 (ruleValid!2192 thiss!20629 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))

(declare-fun lt!1331182 () Unit!58246)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1272 (LexerInterface!5829 Rule!12280 List!40637) Unit!58246)

(assert (=> b!3835554 (= lt!1331182 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1272 thiss!20629 (rule!9074 (_1!22978 (v!38947 lt!1331185))) rules!2768))))

(declare-fun lt!1331180 () Unit!58246)

(declare-fun lemmaCharactersSize!901 (Token!11618) Unit!58246)

(assert (=> b!3835554 (= lt!1331180 (lemmaCharactersSize!901 (_1!22978 (v!38947 lt!1331185))))))

(declare-fun b!3835555 () Bool)

(declare-fun tp_is_empty!19261 () Bool)

(declare-fun tp!1160977 () Bool)

(assert (=> b!3835555 (= e!2368807 (and tp_is_empty!19261 tp!1160977))))

(declare-fun b!3835556 () Bool)

(declare-fun tp!1160986 () Bool)

(assert (=> b!3835556 (= e!2368796 (and tp_is_empty!19261 tp!1160986))))

(declare-fun b!3835557 () Bool)

(assert (=> b!3835557 (= e!2368818 (isPrefix!3339 lt!1331183 lt!1331184))))

(declare-fun b!3835558 () Bool)

(declare-fun tp!1160984 () Bool)

(declare-fun e!2368816 () Bool)

(assert (=> b!3835558 (= e!2368806 (and tp!1160984 (inv!54654 (tag!7100 (h!45933 rules!2768))) (inv!54657 (transformation!6240 (h!45933 rules!2768))) e!2368816))))

(assert (=> b!3835559 (= e!2368816 (and tp!1160979 tp!1160970))))

(declare-fun b!3835560 () Bool)

(declare-fun res!1552447 () Bool)

(assert (=> b!3835560 (=> (not res!1552447) (not e!2368811))))

(declare-fun prefix!426 () List!40635)

(declare-fun isEmpty!23922 (List!40635) Bool)

(assert (=> b!3835560 (= res!1552447 (not (isEmpty!23922 prefix!426)))))

(declare-fun b!3835561 () Bool)

(declare-fun res!1552450 () Bool)

(assert (=> b!3835561 (=> (not res!1552450) (not e!2368811))))

(declare-fun rulesInvariant!5172 (LexerInterface!5829 List!40637) Bool)

(assert (=> b!3835561 (= res!1552450 (rulesInvariant!5172 thiss!20629 rules!2768))))

(declare-fun e!2368802 () Bool)

(declare-fun tp!1160973 () Bool)

(declare-fun e!2368798 () Bool)

(declare-fun b!3835562 () Bool)

(assert (=> b!3835562 (= e!2368798 (and tp!1160973 (inv!54654 (tag!7100 (rule!9074 (h!45932 suffixTokens!72)))) (inv!54657 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) e!2368802))))

(declare-fun b!3835563 () Bool)

(declare-fun res!1552454 () Bool)

(assert (=> b!3835563 (=> (not res!1552454) (not e!2368811))))

(declare-fun isEmpty!23923 (List!40637) Bool)

(assert (=> b!3835563 (= res!1552454 (not (isEmpty!23923 rules!2768)))))

(declare-fun tp!1160981 () Bool)

(declare-fun b!3835564 () Bool)

(assert (=> b!3835564 (= e!2368814 (and (inv!21 (value!198474 (h!45932 suffixTokens!72))) e!2368798 tp!1160981))))

(assert (=> b!3835565 (= e!2368800 (and tp!1160975 tp!1160971))))

(assert (=> b!3835566 (= e!2368802 (and tp!1160985 tp!1160974))))

(declare-fun b!3835567 () Bool)

(assert (=> b!3835567 (= e!2368811 e!2368815)))

(declare-fun res!1552451 () Bool)

(assert (=> b!3835567 (=> (not res!1552451) (not e!2368815))))

(declare-fun ++!10238 (List!40636 List!40636) List!40636)

(assert (=> b!3835567 (= res!1552451 (= (lexList!1597 thiss!20629 rules!2768 lt!1331184) (tuple2!39687 (++!10238 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(assert (=> b!3835567 (= lt!1331184 (++!10237 prefix!426 suffix!1176))))

(declare-fun b!3835568 () Bool)

(declare-fun tp!1160983 () Bool)

(assert (=> b!3835568 (= e!2368799 (and (inv!54658 (h!45932 prefixTokens!80)) e!2368813 tp!1160983))))

(declare-fun b!3835569 () Bool)

(declare-fun tp!1160982 () Bool)

(assert (=> b!3835569 (= e!2368805 (and tp_is_empty!19261 tp!1160982))))

(declare-fun b!3835570 () Bool)

(declare-fun res!1552453 () Bool)

(assert (=> b!3835570 (=> (not res!1552453) (not e!2368811))))

(declare-fun isEmpty!23924 (List!40636) Bool)

(assert (=> b!3835570 (= res!1552453 (not (isEmpty!23924 prefixTokens!80)))))

(assert (= (and start!358996 res!1552452) b!3835563))

(assert (= (and b!3835563 res!1552454) b!3835561))

(assert (= (and b!3835561 res!1552450) b!3835570))

(assert (= (and b!3835570 res!1552453) b!3835560))

(assert (= (and b!3835560 res!1552447) b!3835567))

(assert (= (and b!3835567 res!1552451) b!3835549))

(assert (= (and b!3835549 res!1552448) b!3835552))

(assert (= (and b!3835552 res!1552455) b!3835554))

(assert (= (and b!3835554 (not res!1552449)) b!3835557))

(assert (= (and start!358996 ((_ is Cons!40511) suffixResult!91)) b!3835556))

(assert (= (and start!358996 ((_ is Cons!40511) suffix!1176)) b!3835555))

(assert (= b!3835558 b!3835559))

(assert (= b!3835551 b!3835558))

(assert (= (and start!358996 ((_ is Cons!40513) rules!2768)) b!3835551))

(assert (= b!3835550 b!3835565))

(assert (= b!3835548 b!3835550))

(assert (= b!3835568 b!3835548))

(assert (= (and start!358996 ((_ is Cons!40512) prefixTokens!80)) b!3835568))

(assert (= b!3835562 b!3835566))

(assert (= b!3835564 b!3835562))

(assert (= b!3835553 b!3835564))

(assert (= (and start!358996 ((_ is Cons!40512) suffixTokens!72)) b!3835553))

(assert (= (and start!358996 ((_ is Cons!40511) prefix!426)) b!3835569))

(declare-fun m!4389849 () Bool)

(assert (=> b!3835560 m!4389849))

(declare-fun m!4389851 () Bool)

(assert (=> b!3835553 m!4389851))

(declare-fun m!4389853 () Bool)

(assert (=> b!3835567 m!4389853))

(declare-fun m!4389855 () Bool)

(assert (=> b!3835567 m!4389855))

(declare-fun m!4389857 () Bool)

(assert (=> b!3835567 m!4389857))

(declare-fun m!4389859 () Bool)

(assert (=> b!3835552 m!4389859))

(declare-fun m!4389861 () Bool)

(assert (=> b!3835570 m!4389861))

(declare-fun m!4389863 () Bool)

(assert (=> b!3835562 m!4389863))

(declare-fun m!4389865 () Bool)

(assert (=> b!3835562 m!4389865))

(declare-fun m!4389867 () Bool)

(assert (=> b!3835548 m!4389867))

(declare-fun m!4389869 () Bool)

(assert (=> b!3835564 m!4389869))

(declare-fun m!4389871 () Bool)

(assert (=> b!3835554 m!4389871))

(declare-fun m!4389873 () Bool)

(assert (=> b!3835554 m!4389873))

(declare-fun m!4389875 () Bool)

(assert (=> b!3835554 m!4389875))

(declare-fun m!4389877 () Bool)

(assert (=> b!3835554 m!4389877))

(declare-fun m!4389879 () Bool)

(assert (=> b!3835554 m!4389879))

(declare-fun m!4389881 () Bool)

(assert (=> b!3835554 m!4389881))

(declare-fun m!4389883 () Bool)

(assert (=> b!3835554 m!4389883))

(assert (=> b!3835554 m!4389875))

(declare-fun m!4389885 () Bool)

(assert (=> b!3835554 m!4389885))

(declare-fun m!4389887 () Bool)

(assert (=> b!3835554 m!4389887))

(declare-fun m!4389889 () Bool)

(assert (=> b!3835554 m!4389889))

(assert (=> b!3835554 m!4389881))

(declare-fun m!4389891 () Bool)

(assert (=> b!3835557 m!4389891))

(declare-fun m!4389893 () Bool)

(assert (=> b!3835561 m!4389893))

(declare-fun m!4389895 () Bool)

(assert (=> b!3835568 m!4389895))

(declare-fun m!4389897 () Bool)

(assert (=> b!3835558 m!4389897))

(declare-fun m!4389899 () Bool)

(assert (=> b!3835558 m!4389899))

(declare-fun m!4389901 () Bool)

(assert (=> b!3835549 m!4389901))

(declare-fun m!4389903 () Bool)

(assert (=> b!3835563 m!4389903))

(declare-fun m!4389905 () Bool)

(assert (=> b!3835550 m!4389905))

(declare-fun m!4389907 () Bool)

(assert (=> b!3835550 m!4389907))

(check-sat (not b_next!102635) b_and!285255 (not b!3835570) (not b!3835558) b_and!285253 b_and!285257 (not b!3835553) tp_is_empty!19261 (not b!3835567) b_and!285249 b_and!285251 (not b!3835549) (not b!3835556) (not b!3835557) (not b_next!102629) (not b!3835569) (not b!3835561) (not b!3835548) (not b_next!102631) (not b!3835555) (not b!3835550) (not b_next!102639) b_and!285247 (not b!3835568) (not b!3835560) (not b!3835564) (not b!3835563) (not b!3835554) (not b!3835562) (not b_next!102637) (not b!3835551) (not b_next!102633) (not b!3835552))
(check-sat (not b_next!102635) b_and!285255 (not b_next!102629) (not b_next!102631) b_and!285253 b_and!285257 (not b_next!102637) (not b_next!102633) b_and!285249 b_and!285251 (not b_next!102639) b_and!285247)
(get-model)

(declare-fun b!3835581 () Bool)

(declare-fun e!2368826 () Bool)

(declare-fun e!2368827 () Bool)

(assert (=> b!3835581 (= e!2368826 e!2368827)))

(declare-fun res!1552462 () Bool)

(declare-fun lt!1331192 () tuple2!39686)

(assert (=> b!3835581 (= res!1552462 (< (size!30516 (_2!22977 lt!1331192)) (size!30516 lt!1331184)))))

(assert (=> b!3835581 (=> (not res!1552462) (not e!2368827))))

(declare-fun b!3835582 () Bool)

(assert (=> b!3835582 (= e!2368826 (= (_2!22977 lt!1331192) lt!1331184))))

(declare-fun b!3835583 () Bool)

(assert (=> b!3835583 (= e!2368827 (not (isEmpty!23924 (_1!22977 lt!1331192))))))

(declare-fun d!1138551 () Bool)

(assert (=> d!1138551 e!2368826))

(declare-fun c!668790 () Bool)

(declare-fun size!30518 (List!40636) Int)

(assert (=> d!1138551 (= c!668790 (> (size!30518 (_1!22977 lt!1331192)) 0))))

(declare-fun e!2368825 () tuple2!39686)

(assert (=> d!1138551 (= lt!1331192 e!2368825)))

(declare-fun c!668791 () Bool)

(declare-fun lt!1331193 () Option!8658)

(assert (=> d!1138551 (= c!668791 ((_ is Some!8657) lt!1331193))))

(assert (=> d!1138551 (= lt!1331193 (maxPrefix!3133 thiss!20629 rules!2768 lt!1331184))))

(assert (=> d!1138551 (= (lexList!1597 thiss!20629 rules!2768 lt!1331184) lt!1331192)))

(declare-fun b!3835584 () Bool)

(declare-fun lt!1331194 () tuple2!39686)

(assert (=> b!3835584 (= e!2368825 (tuple2!39687 (Cons!40512 (_1!22978 (v!38947 lt!1331193)) (_1!22977 lt!1331194)) (_2!22977 lt!1331194)))))

(assert (=> b!3835584 (= lt!1331194 (lexList!1597 thiss!20629 rules!2768 (_2!22978 (v!38947 lt!1331193))))))

(declare-fun b!3835585 () Bool)

(assert (=> b!3835585 (= e!2368825 (tuple2!39687 Nil!40512 lt!1331184))))

(assert (= (and d!1138551 c!668791) b!3835584))

(assert (= (and d!1138551 (not c!668791)) b!3835585))

(assert (= (and d!1138551 c!668790) b!3835581))

(assert (= (and d!1138551 (not c!668790)) b!3835582))

(assert (= (and b!3835581 res!1552462) b!3835583))

(declare-fun m!4389909 () Bool)

(assert (=> b!3835581 m!4389909))

(assert (=> b!3835581 m!4389879))

(declare-fun m!4389911 () Bool)

(assert (=> b!3835583 m!4389911))

(declare-fun m!4389913 () Bool)

(assert (=> d!1138551 m!4389913))

(assert (=> d!1138551 m!4389859))

(declare-fun m!4389915 () Bool)

(assert (=> b!3835584 m!4389915))

(assert (=> b!3835567 d!1138551))

(declare-fun b!3835595 () Bool)

(declare-fun e!2368833 () List!40636)

(assert (=> b!3835595 (= e!2368833 (Cons!40512 (h!45932 prefixTokens!80) (++!10238 (t!309623 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1138555 () Bool)

(declare-fun e!2368832 () Bool)

(assert (=> d!1138555 e!2368832))

(declare-fun res!1552467 () Bool)

(assert (=> d!1138555 (=> (not res!1552467) (not e!2368832))))

(declare-fun lt!1331197 () List!40636)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6017 (List!40636) (InoxSet Token!11618))

(assert (=> d!1138555 (= res!1552467 (= (content!6017 lt!1331197) ((_ map or) (content!6017 prefixTokens!80) (content!6017 suffixTokens!72))))))

(assert (=> d!1138555 (= lt!1331197 e!2368833)))

(declare-fun c!668794 () Bool)

(assert (=> d!1138555 (= c!668794 ((_ is Nil!40512) prefixTokens!80))))

(assert (=> d!1138555 (= (++!10238 prefixTokens!80 suffixTokens!72) lt!1331197)))

(declare-fun b!3835597 () Bool)

(assert (=> b!3835597 (= e!2368832 (or (not (= suffixTokens!72 Nil!40512)) (= lt!1331197 prefixTokens!80)))))

(declare-fun b!3835596 () Bool)

(declare-fun res!1552468 () Bool)

(assert (=> b!3835596 (=> (not res!1552468) (not e!2368832))))

(assert (=> b!3835596 (= res!1552468 (= (size!30518 lt!1331197) (+ (size!30518 prefixTokens!80) (size!30518 suffixTokens!72))))))

(declare-fun b!3835594 () Bool)

(assert (=> b!3835594 (= e!2368833 suffixTokens!72)))

(assert (= (and d!1138555 c!668794) b!3835594))

(assert (= (and d!1138555 (not c!668794)) b!3835595))

(assert (= (and d!1138555 res!1552467) b!3835596))

(assert (= (and b!3835596 res!1552468) b!3835597))

(declare-fun m!4389917 () Bool)

(assert (=> b!3835595 m!4389917))

(declare-fun m!4389919 () Bool)

(assert (=> d!1138555 m!4389919))

(declare-fun m!4389921 () Bool)

(assert (=> d!1138555 m!4389921))

(declare-fun m!4389923 () Bool)

(assert (=> d!1138555 m!4389923))

(declare-fun m!4389925 () Bool)

(assert (=> b!3835596 m!4389925))

(declare-fun m!4389927 () Bool)

(assert (=> b!3835596 m!4389927))

(declare-fun m!4389929 () Bool)

(assert (=> b!3835596 m!4389929))

(assert (=> b!3835567 d!1138555))

(declare-fun b!3835609 () Bool)

(declare-fun lt!1331200 () List!40635)

(declare-fun e!2368839 () Bool)

(assert (=> b!3835609 (= e!2368839 (or (not (= suffix!1176 Nil!40511)) (= lt!1331200 prefix!426)))))

(declare-fun b!3835608 () Bool)

(declare-fun res!1552473 () Bool)

(assert (=> b!3835608 (=> (not res!1552473) (not e!2368839))))

(assert (=> b!3835608 (= res!1552473 (= (size!30516 lt!1331200) (+ (size!30516 prefix!426) (size!30516 suffix!1176))))))

(declare-fun b!3835607 () Bool)

(declare-fun e!2368838 () List!40635)

(assert (=> b!3835607 (= e!2368838 (Cons!40511 (h!45931 prefix!426) (++!10237 (t!309622 prefix!426) suffix!1176)))))

(declare-fun d!1138557 () Bool)

(assert (=> d!1138557 e!2368839))

(declare-fun res!1552474 () Bool)

(assert (=> d!1138557 (=> (not res!1552474) (not e!2368839))))

(declare-fun content!6018 (List!40635) (InoxSet C!22476))

(assert (=> d!1138557 (= res!1552474 (= (content!6018 lt!1331200) ((_ map or) (content!6018 prefix!426) (content!6018 suffix!1176))))))

(assert (=> d!1138557 (= lt!1331200 e!2368838)))

(declare-fun c!668797 () Bool)

(assert (=> d!1138557 (= c!668797 ((_ is Nil!40511) prefix!426))))

(assert (=> d!1138557 (= (++!10237 prefix!426 suffix!1176) lt!1331200)))

(declare-fun b!3835606 () Bool)

(assert (=> b!3835606 (= e!2368838 suffix!1176)))

(assert (= (and d!1138557 c!668797) b!3835606))

(assert (= (and d!1138557 (not c!668797)) b!3835607))

(assert (= (and d!1138557 res!1552474) b!3835608))

(assert (= (and b!3835608 res!1552473) b!3835609))

(declare-fun m!4389931 () Bool)

(assert (=> b!3835608 m!4389931))

(declare-fun m!4389933 () Bool)

(assert (=> b!3835608 m!4389933))

(declare-fun m!4389935 () Bool)

(assert (=> b!3835608 m!4389935))

(declare-fun m!4389937 () Bool)

(assert (=> b!3835607 m!4389937))

(declare-fun m!4389939 () Bool)

(assert (=> d!1138557 m!4389939))

(declare-fun m!4389941 () Bool)

(assert (=> d!1138557 m!4389941))

(declare-fun m!4389943 () Bool)

(assert (=> d!1138557 m!4389943))

(assert (=> b!3835567 d!1138557))

(declare-fun d!1138559 () Bool)

(declare-fun res!1552493 () Bool)

(declare-fun e!2368848 () Bool)

(assert (=> d!1138559 (=> (not res!1552493) (not e!2368848))))

(assert (=> d!1138559 (= res!1552493 (not (isEmpty!23922 (originalCharacters!6840 (h!45932 prefixTokens!80)))))))

(assert (=> d!1138559 (= (inv!54658 (h!45932 prefixTokens!80)) e!2368848)))

(declare-fun b!3835632 () Bool)

(declare-fun res!1552494 () Bool)

(assert (=> b!3835632 (=> (not res!1552494) (not e!2368848))))

(declare-fun dynLambda!17543 (Int TokenValue!6470) BalanceConc!24496)

(assert (=> b!3835632 (= res!1552494 (= (originalCharacters!6840 (h!45932 prefixTokens!80)) (list!15092 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80))))))))

(declare-fun b!3835633 () Bool)

(assert (=> b!3835633 (= e!2368848 (= (size!30515 (h!45932 prefixTokens!80)) (size!30516 (originalCharacters!6840 (h!45932 prefixTokens!80)))))))

(assert (= (and d!1138559 res!1552493) b!3835632))

(assert (= (and b!3835632 res!1552494) b!3835633))

(declare-fun b_lambda!112139 () Bool)

(assert (=> (not b_lambda!112139) (not b!3835632)))

(declare-fun t!309626 () Bool)

(declare-fun tb!220297 () Bool)

(assert (=> (and b!3835565 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) t!309626) tb!220297))

(declare-fun b!3835638 () Bool)

(declare-fun e!2368851 () Bool)

(declare-fun tp!1160989 () Bool)

(declare-fun inv!54659 (Conc!12451) Bool)

(assert (=> b!3835638 (= e!2368851 (and (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80))))) tp!1160989))))

(declare-fun result!268514 () Bool)

(declare-fun inv!54660 (BalanceConc!24496) Bool)

(assert (=> tb!220297 (= result!268514 (and (inv!54660 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80)))) e!2368851))))

(assert (= tb!220297 b!3835638))

(declare-fun m!4389945 () Bool)

(assert (=> b!3835638 m!4389945))

(declare-fun m!4389947 () Bool)

(assert (=> tb!220297 m!4389947))

(assert (=> b!3835632 t!309626))

(declare-fun b_and!285259 () Bool)

(assert (= b_and!285249 (and (=> t!309626 result!268514) b_and!285259)))

(declare-fun t!309628 () Bool)

(declare-fun tb!220299 () Bool)

(assert (=> (and b!3835566 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) t!309628) tb!220299))

(declare-fun result!268518 () Bool)

(assert (= result!268518 result!268514))

(assert (=> b!3835632 t!309628))

(declare-fun b_and!285261 () Bool)

(assert (= b_and!285253 (and (=> t!309628 result!268518) b_and!285261)))

(declare-fun tb!220301 () Bool)

(declare-fun t!309630 () Bool)

(assert (=> (and b!3835559 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) t!309630) tb!220301))

(declare-fun result!268520 () Bool)

(assert (= result!268520 result!268514))

(assert (=> b!3835632 t!309630))

(declare-fun b_and!285263 () Bool)

(assert (= b_and!285257 (and (=> t!309630 result!268520) b_and!285263)))

(declare-fun m!4389949 () Bool)

(assert (=> d!1138559 m!4389949))

(declare-fun m!4389951 () Bool)

(assert (=> b!3835632 m!4389951))

(assert (=> b!3835632 m!4389951))

(declare-fun m!4389953 () Bool)

(assert (=> b!3835632 m!4389953))

(declare-fun m!4389955 () Bool)

(assert (=> b!3835633 m!4389955))

(assert (=> b!3835568 d!1138559))

(declare-fun b!3835658 () Bool)

(declare-fun e!2368862 () Bool)

(declare-fun tail!5799 (List!40635) List!40635)

(assert (=> b!3835658 (= e!2368862 (isPrefix!3339 (tail!5799 lt!1331183) (tail!5799 lt!1331184)))))

(declare-fun d!1138561 () Bool)

(declare-fun e!2368861 () Bool)

(assert (=> d!1138561 e!2368861))

(declare-fun res!1552512 () Bool)

(assert (=> d!1138561 (=> res!1552512 e!2368861)))

(declare-fun lt!1331218 () Bool)

(assert (=> d!1138561 (= res!1552512 (not lt!1331218))))

(declare-fun e!2368863 () Bool)

(assert (=> d!1138561 (= lt!1331218 e!2368863)))

(declare-fun res!1552513 () Bool)

(assert (=> d!1138561 (=> res!1552513 e!2368863)))

(assert (=> d!1138561 (= res!1552513 ((_ is Nil!40511) lt!1331183))))

(assert (=> d!1138561 (= (isPrefix!3339 lt!1331183 lt!1331184) lt!1331218)))

(declare-fun b!3835659 () Bool)

(assert (=> b!3835659 (= e!2368861 (>= (size!30516 lt!1331184) (size!30516 lt!1331183)))))

(declare-fun b!3835656 () Bool)

(assert (=> b!3835656 (= e!2368863 e!2368862)))

(declare-fun res!1552511 () Bool)

(assert (=> b!3835656 (=> (not res!1552511) (not e!2368862))))

(assert (=> b!3835656 (= res!1552511 (not ((_ is Nil!40511) lt!1331184)))))

(declare-fun b!3835657 () Bool)

(declare-fun res!1552510 () Bool)

(assert (=> b!3835657 (=> (not res!1552510) (not e!2368862))))

(declare-fun head!8072 (List!40635) C!22476)

(assert (=> b!3835657 (= res!1552510 (= (head!8072 lt!1331183) (head!8072 lt!1331184)))))

(assert (= (and d!1138561 (not res!1552513)) b!3835656))

(assert (= (and b!3835656 res!1552511) b!3835657))

(assert (= (and b!3835657 res!1552510) b!3835658))

(assert (= (and d!1138561 (not res!1552512)) b!3835659))

(declare-fun m!4389989 () Bool)

(assert (=> b!3835658 m!4389989))

(declare-fun m!4389991 () Bool)

(assert (=> b!3835658 m!4389991))

(assert (=> b!3835658 m!4389989))

(assert (=> b!3835658 m!4389991))

(declare-fun m!4389993 () Bool)

(assert (=> b!3835658 m!4389993))

(assert (=> b!3835659 m!4389879))

(assert (=> b!3835659 m!4389871))

(declare-fun m!4389995 () Bool)

(assert (=> b!3835657 m!4389995))

(declare-fun m!4389997 () Bool)

(assert (=> b!3835657 m!4389997))

(assert (=> b!3835557 d!1138561))

(declare-fun d!1138565 () Bool)

(assert (=> d!1138565 (= (inv!54654 (tag!7100 (h!45933 rules!2768))) (= (mod (str.len (value!198473 (tag!7100 (h!45933 rules!2768)))) 2) 0))))

(assert (=> b!3835558 d!1138565))

(declare-fun d!1138567 () Bool)

(declare-fun res!1552519 () Bool)

(declare-fun e!2368869 () Bool)

(assert (=> d!1138567 (=> (not res!1552519) (not e!2368869))))

(declare-fun semiInverseModEq!2677 (Int Int) Bool)

(assert (=> d!1138567 (= res!1552519 (semiInverseModEq!2677 (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toValue!8652 (transformation!6240 (h!45933 rules!2768)))))))

(assert (=> d!1138567 (= (inv!54657 (transformation!6240 (h!45933 rules!2768))) e!2368869)))

(declare-fun b!3835665 () Bool)

(declare-fun equivClasses!2576 (Int Int) Bool)

(assert (=> b!3835665 (= e!2368869 (equivClasses!2576 (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toValue!8652 (transformation!6240 (h!45933 rules!2768)))))))

(assert (= (and d!1138567 res!1552519) b!3835665))

(declare-fun m!4390003 () Bool)

(assert (=> d!1138567 m!4390003))

(declare-fun m!4390005 () Bool)

(assert (=> b!3835665 m!4390005))

(assert (=> b!3835558 d!1138567))

(declare-fun b!3835676 () Bool)

(declare-fun e!2368878 () Bool)

(declare-fun e!2368876 () Bool)

(assert (=> b!3835676 (= e!2368878 e!2368876)))

(declare-fun c!668805 () Bool)

(assert (=> b!3835676 (= c!668805 ((_ is IntegerValue!19411) (value!198474 (h!45932 prefixTokens!80))))))

(declare-fun b!3835677 () Bool)

(declare-fun e!2368877 () Bool)

(declare-fun inv!15 (TokenValue!6470) Bool)

(assert (=> b!3835677 (= e!2368877 (inv!15 (value!198474 (h!45932 prefixTokens!80))))))

(declare-fun b!3835678 () Bool)

(declare-fun inv!17 (TokenValue!6470) Bool)

(assert (=> b!3835678 (= e!2368876 (inv!17 (value!198474 (h!45932 prefixTokens!80))))))

(declare-fun b!3835679 () Bool)

(declare-fun res!1552522 () Bool)

(assert (=> b!3835679 (=> res!1552522 e!2368877)))

(assert (=> b!3835679 (= res!1552522 (not ((_ is IntegerValue!19412) (value!198474 (h!45932 prefixTokens!80)))))))

(assert (=> b!3835679 (= e!2368876 e!2368877)))

(declare-fun d!1138571 () Bool)

(declare-fun c!668806 () Bool)

(assert (=> d!1138571 (= c!668806 ((_ is IntegerValue!19410) (value!198474 (h!45932 prefixTokens!80))))))

(assert (=> d!1138571 (= (inv!21 (value!198474 (h!45932 prefixTokens!80))) e!2368878)))

(declare-fun b!3835680 () Bool)

(declare-fun inv!16 (TokenValue!6470) Bool)

(assert (=> b!3835680 (= e!2368878 (inv!16 (value!198474 (h!45932 prefixTokens!80))))))

(assert (= (and d!1138571 c!668806) b!3835680))

(assert (= (and d!1138571 (not c!668806)) b!3835676))

(assert (= (and b!3835676 c!668805) b!3835678))

(assert (= (and b!3835676 (not c!668805)) b!3835679))

(assert (= (and b!3835679 (not res!1552522)) b!3835677))

(declare-fun m!4390007 () Bool)

(assert (=> b!3835677 m!4390007))

(declare-fun m!4390009 () Bool)

(assert (=> b!3835678 m!4390009))

(declare-fun m!4390011 () Bool)

(assert (=> b!3835680 m!4390011))

(assert (=> b!3835548 d!1138571))

(declare-fun d!1138573 () Bool)

(assert (=> d!1138573 (= (size!30515 (_1!22978 (v!38947 lt!1331185))) (size!30516 (originalCharacters!6840 (_1!22978 (v!38947 lt!1331185)))))))

(declare-fun Unit!58249 () Unit!58246)

(assert (=> d!1138573 (= (lemmaCharactersSize!901 (_1!22978 (v!38947 lt!1331185))) Unit!58249)))

(declare-fun bs!582461 () Bool)

(assert (= bs!582461 d!1138573))

(declare-fun m!4390013 () Bool)

(assert (=> bs!582461 m!4390013))

(assert (=> b!3835554 d!1138573))

(declare-fun d!1138575 () Bool)

(declare-fun lt!1331221 () Int)

(assert (=> d!1138575 (>= lt!1331221 0)))

(declare-fun e!2368881 () Int)

(assert (=> d!1138575 (= lt!1331221 e!2368881)))

(declare-fun c!668809 () Bool)

(assert (=> d!1138575 (= c!668809 ((_ is Nil!40511) lt!1331184))))

(assert (=> d!1138575 (= (size!30516 lt!1331184) lt!1331221)))

(declare-fun b!3835685 () Bool)

(assert (=> b!3835685 (= e!2368881 0)))

(declare-fun b!3835686 () Bool)

(assert (=> b!3835686 (= e!2368881 (+ 1 (size!30516 (t!309622 lt!1331184))))))

(assert (= (and d!1138575 c!668809) b!3835685))

(assert (= (and d!1138575 (not c!668809)) b!3835686))

(declare-fun m!4390015 () Bool)

(assert (=> b!3835686 m!4390015))

(assert (=> b!3835554 d!1138575))

(declare-fun d!1138577 () Bool)

(declare-fun lt!1331222 () Int)

(assert (=> d!1138577 (>= lt!1331222 0)))

(declare-fun e!2368882 () Int)

(assert (=> d!1138577 (= lt!1331222 e!2368882)))

(declare-fun c!668810 () Bool)

(assert (=> d!1138577 (= c!668810 ((_ is Nil!40511) lt!1331183))))

(assert (=> d!1138577 (= (size!30516 lt!1331183) lt!1331222)))

(declare-fun b!3835687 () Bool)

(assert (=> b!3835687 (= e!2368882 0)))

(declare-fun b!3835688 () Bool)

(assert (=> b!3835688 (= e!2368882 (+ 1 (size!30516 (t!309622 lt!1331183))))))

(assert (= (and d!1138577 c!668810) b!3835687))

(assert (= (and d!1138577 (not c!668810)) b!3835688))

(declare-fun m!4390017 () Bool)

(assert (=> b!3835688 m!4390017))

(assert (=> b!3835554 d!1138577))

(declare-fun d!1138579 () Bool)

(declare-fun list!15093 (Conc!12451) List!40635)

(assert (=> d!1138579 (= (list!15092 (charsOf!4068 (_1!22978 (v!38947 lt!1331185)))) (list!15093 (c!668785 (charsOf!4068 (_1!22978 (v!38947 lt!1331185))))))))

(declare-fun bs!582462 () Bool)

(assert (= bs!582462 d!1138579))

(declare-fun m!4390019 () Bool)

(assert (=> bs!582462 m!4390019))

(assert (=> b!3835554 d!1138579))

(declare-fun d!1138581 () Bool)

(assert (=> d!1138581 (isPrefix!3339 lt!1331183 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185))))))

(declare-fun lt!1331237 () Unit!58246)

(declare-fun choose!22550 (List!40635 List!40635) Unit!58246)

(assert (=> d!1138581 (= lt!1331237 (choose!22550 lt!1331183 (_2!22978 (v!38947 lt!1331185))))))

(assert (=> d!1138581 (= (lemmaConcatTwoListThenFirstIsPrefix!2202 lt!1331183 (_2!22978 (v!38947 lt!1331185))) lt!1331237)))

(declare-fun bs!582463 () Bool)

(assert (= bs!582463 d!1138581))

(assert (=> bs!582463 m!4389875))

(assert (=> bs!582463 m!4389875))

(assert (=> bs!582463 m!4389885))

(declare-fun m!4390041 () Bool)

(assert (=> bs!582463 m!4390041))

(assert (=> b!3835554 d!1138581))

(declare-fun d!1138587 () Bool)

(assert (=> d!1138587 (ruleValid!2192 thiss!20629 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))

(declare-fun lt!1331243 () Unit!58246)

(declare-fun choose!22551 (LexerInterface!5829 Rule!12280 List!40637) Unit!58246)

(assert (=> d!1138587 (= lt!1331243 (choose!22551 thiss!20629 (rule!9074 (_1!22978 (v!38947 lt!1331185))) rules!2768))))

(declare-fun contains!8220 (List!40637 Rule!12280) Bool)

(assert (=> d!1138587 (contains!8220 rules!2768 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))

(assert (=> d!1138587 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1272 thiss!20629 (rule!9074 (_1!22978 (v!38947 lt!1331185))) rules!2768) lt!1331243)))

(declare-fun bs!582464 () Bool)

(assert (= bs!582464 d!1138587))

(assert (=> bs!582464 m!4389877))

(declare-fun m!4390057 () Bool)

(assert (=> bs!582464 m!4390057))

(declare-fun m!4390059 () Bool)

(assert (=> bs!582464 m!4390059))

(assert (=> b!3835554 d!1138587))

(declare-fun d!1138591 () Bool)

(declare-fun res!1552543 () Bool)

(declare-fun e!2368909 () Bool)

(assert (=> d!1138591 (=> (not res!1552543) (not e!2368909))))

(declare-fun validRegex!5076 (Regex!11145) Bool)

(assert (=> d!1138591 (= res!1552543 (validRegex!5076 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))))

(assert (=> d!1138591 (= (ruleValid!2192 thiss!20629 (rule!9074 (_1!22978 (v!38947 lt!1331185)))) e!2368909)))

(declare-fun b!3835737 () Bool)

(declare-fun res!1552544 () Bool)

(assert (=> b!3835737 (=> (not res!1552544) (not e!2368909))))

(declare-fun nullable!3877 (Regex!11145) Bool)

(assert (=> b!3835737 (= res!1552544 (not (nullable!3877 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))))))

(declare-fun b!3835738 () Bool)

(assert (=> b!3835738 (= e!2368909 (not (= (tag!7100 (rule!9074 (_1!22978 (v!38947 lt!1331185)))) (String!46069 ""))))))

(assert (= (and d!1138591 res!1552543) b!3835737))

(assert (= (and b!3835737 res!1552544) b!3835738))

(declare-fun m!4390073 () Bool)

(assert (=> d!1138591 m!4390073))

(declare-fun m!4390075 () Bool)

(assert (=> b!3835737 m!4390075))

(assert (=> b!3835554 d!1138591))

(declare-fun d!1138595 () Bool)

(declare-fun lt!1331252 () BalanceConc!24496)

(assert (=> d!1138595 (= (list!15092 lt!1331252) (originalCharacters!6840 (_1!22978 (v!38947 lt!1331185))))))

(assert (=> d!1138595 (= lt!1331252 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185)))))))

(assert (=> d!1138595 (= (charsOf!4068 (_1!22978 (v!38947 lt!1331185))) lt!1331252)))

(declare-fun b_lambda!112141 () Bool)

(assert (=> (not b_lambda!112141) (not d!1138595)))

(declare-fun t!309632 () Bool)

(declare-fun tb!220303 () Bool)

(assert (=> (and b!3835565 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))) t!309632) tb!220303))

(declare-fun b!3835751 () Bool)

(declare-fun e!2368919 () Bool)

(declare-fun tp!1160990 () Bool)

(assert (=> b!3835751 (= e!2368919 (and (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185)))))) tp!1160990))))

(declare-fun result!268522 () Bool)

(assert (=> tb!220303 (= result!268522 (and (inv!54660 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185))))) e!2368919))))

(assert (= tb!220303 b!3835751))

(declare-fun m!4390087 () Bool)

(assert (=> b!3835751 m!4390087))

(declare-fun m!4390089 () Bool)

(assert (=> tb!220303 m!4390089))

(assert (=> d!1138595 t!309632))

(declare-fun b_and!285265 () Bool)

(assert (= b_and!285259 (and (=> t!309632 result!268522) b_and!285265)))

(declare-fun tb!220305 () Bool)

(declare-fun t!309634 () Bool)

(assert (=> (and b!3835566 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))) t!309634) tb!220305))

(declare-fun result!268524 () Bool)

(assert (= result!268524 result!268522))

(assert (=> d!1138595 t!309634))

(declare-fun b_and!285267 () Bool)

(assert (= b_and!285261 (and (=> t!309634 result!268524) b_and!285267)))

(declare-fun tb!220307 () Bool)

(declare-fun t!309636 () Bool)

(assert (=> (and b!3835559 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))) t!309636) tb!220307))

(declare-fun result!268526 () Bool)

(assert (= result!268526 result!268522))

(assert (=> d!1138595 t!309636))

(declare-fun b_and!285269 () Bool)

(assert (= b_and!285263 (and (=> t!309636 result!268526) b_and!285269)))

(declare-fun m!4390091 () Bool)

(assert (=> d!1138595 m!4390091))

(declare-fun m!4390093 () Bool)

(assert (=> d!1138595 m!4390093))

(assert (=> b!3835554 d!1138595))

(declare-fun e!2368923 () Bool)

(declare-fun lt!1331253 () List!40635)

(declare-fun b!3835757 () Bool)

(assert (=> b!3835757 (= e!2368923 (or (not (= (_2!22978 (v!38947 lt!1331185)) Nil!40511)) (= lt!1331253 lt!1331183)))))

(declare-fun b!3835756 () Bool)

(declare-fun res!1552559 () Bool)

(assert (=> b!3835756 (=> (not res!1552559) (not e!2368923))))

(assert (=> b!3835756 (= res!1552559 (= (size!30516 lt!1331253) (+ (size!30516 lt!1331183) (size!30516 (_2!22978 (v!38947 lt!1331185))))))))

(declare-fun b!3835755 () Bool)

(declare-fun e!2368922 () List!40635)

(assert (=> b!3835755 (= e!2368922 (Cons!40511 (h!45931 lt!1331183) (++!10237 (t!309622 lt!1331183) (_2!22978 (v!38947 lt!1331185)))))))

(declare-fun d!1138601 () Bool)

(assert (=> d!1138601 e!2368923))

(declare-fun res!1552560 () Bool)

(assert (=> d!1138601 (=> (not res!1552560) (not e!2368923))))

(assert (=> d!1138601 (= res!1552560 (= (content!6018 lt!1331253) ((_ map or) (content!6018 lt!1331183) (content!6018 (_2!22978 (v!38947 lt!1331185))))))))

(assert (=> d!1138601 (= lt!1331253 e!2368922)))

(declare-fun c!668825 () Bool)

(assert (=> d!1138601 (= c!668825 ((_ is Nil!40511) lt!1331183))))

(assert (=> d!1138601 (= (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185))) lt!1331253)))

(declare-fun b!3835754 () Bool)

(assert (=> b!3835754 (= e!2368922 (_2!22978 (v!38947 lt!1331185)))))

(assert (= (and d!1138601 c!668825) b!3835754))

(assert (= (and d!1138601 (not c!668825)) b!3835755))

(assert (= (and d!1138601 res!1552560) b!3835756))

(assert (= (and b!3835756 res!1552559) b!3835757))

(declare-fun m!4390099 () Bool)

(assert (=> b!3835756 m!4390099))

(assert (=> b!3835756 m!4389871))

(declare-fun m!4390101 () Bool)

(assert (=> b!3835756 m!4390101))

(declare-fun m!4390103 () Bool)

(assert (=> b!3835755 m!4390103))

(declare-fun m!4390107 () Bool)

(assert (=> d!1138601 m!4390107))

(declare-fun m!4390111 () Bool)

(assert (=> d!1138601 m!4390111))

(declare-fun m!4390113 () Bool)

(assert (=> d!1138601 m!4390113))

(assert (=> b!3835554 d!1138601))

(declare-fun b!3835762 () Bool)

(declare-fun e!2368927 () Bool)

(assert (=> b!3835762 (= e!2368927 (isPrefix!3339 (tail!5799 lt!1331183) (tail!5799 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185))))))))

(declare-fun d!1138609 () Bool)

(declare-fun e!2368926 () Bool)

(assert (=> d!1138609 e!2368926))

(declare-fun res!1552565 () Bool)

(assert (=> d!1138609 (=> res!1552565 e!2368926)))

(declare-fun lt!1331254 () Bool)

(assert (=> d!1138609 (= res!1552565 (not lt!1331254))))

(declare-fun e!2368928 () Bool)

(assert (=> d!1138609 (= lt!1331254 e!2368928)))

(declare-fun res!1552566 () Bool)

(assert (=> d!1138609 (=> res!1552566 e!2368928)))

(assert (=> d!1138609 (= res!1552566 ((_ is Nil!40511) lt!1331183))))

(assert (=> d!1138609 (= (isPrefix!3339 lt!1331183 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))) lt!1331254)))

(declare-fun b!3835763 () Bool)

(assert (=> b!3835763 (= e!2368926 (>= (size!30516 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))) (size!30516 lt!1331183)))))

(declare-fun b!3835760 () Bool)

(assert (=> b!3835760 (= e!2368928 e!2368927)))

(declare-fun res!1552564 () Bool)

(assert (=> b!3835760 (=> (not res!1552564) (not e!2368927))))

(assert (=> b!3835760 (= res!1552564 (not ((_ is Nil!40511) (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185))))))))

(declare-fun b!3835761 () Bool)

(declare-fun res!1552563 () Bool)

(assert (=> b!3835761 (=> (not res!1552563) (not e!2368927))))

(assert (=> b!3835761 (= res!1552563 (= (head!8072 lt!1331183) (head!8072 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185))))))))

(assert (= (and d!1138609 (not res!1552566)) b!3835760))

(assert (= (and b!3835760 res!1552564) b!3835761))

(assert (= (and b!3835761 res!1552563) b!3835762))

(assert (= (and d!1138609 (not res!1552565)) b!3835763))

(assert (=> b!3835762 m!4389989))

(assert (=> b!3835762 m!4389875))

(declare-fun m!4390119 () Bool)

(assert (=> b!3835762 m!4390119))

(assert (=> b!3835762 m!4389989))

(assert (=> b!3835762 m!4390119))

(declare-fun m!4390121 () Bool)

(assert (=> b!3835762 m!4390121))

(assert (=> b!3835763 m!4389875))

(declare-fun m!4390123 () Bool)

(assert (=> b!3835763 m!4390123))

(assert (=> b!3835763 m!4389871))

(assert (=> b!3835761 m!4389995))

(assert (=> b!3835761 m!4389875))

(declare-fun m!4390125 () Bool)

(assert (=> b!3835761 m!4390125))

(assert (=> b!3835554 d!1138609))

(declare-fun d!1138617 () Bool)

(assert (=> d!1138617 (= (inv!54654 (tag!7100 (rule!9074 (h!45932 suffixTokens!72)))) (= (mod (str.len (value!198473 (tag!7100 (rule!9074 (h!45932 suffixTokens!72))))) 2) 0))))

(assert (=> b!3835562 d!1138617))

(declare-fun d!1138619 () Bool)

(declare-fun res!1552568 () Bool)

(declare-fun e!2368930 () Bool)

(assert (=> d!1138619 (=> (not res!1552568) (not e!2368930))))

(assert (=> d!1138619 (= res!1552568 (semiInverseModEq!2677 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))))))

(assert (=> d!1138619 (= (inv!54657 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) e!2368930)))

(declare-fun b!3835765 () Bool)

(assert (=> b!3835765 (= e!2368930 (equivClasses!2576 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))))))

(assert (= (and d!1138619 res!1552568) b!3835765))

(declare-fun m!4390127 () Bool)

(assert (=> d!1138619 m!4390127))

(declare-fun m!4390129 () Bool)

(assert (=> b!3835765 m!4390129))

(assert (=> b!3835562 d!1138619))

(declare-fun b!3835901 () Bool)

(declare-fun res!1552610 () Bool)

(declare-fun e!2369019 () Bool)

(assert (=> b!3835901 (=> (not res!1552610) (not e!2369019))))

(declare-fun lt!1331283 () Option!8658)

(declare-fun matchR!5328 (Regex!11145 List!40635) Bool)

(declare-fun get!13436 (Option!8658) tuple2!39688)

(assert (=> b!3835901 (= res!1552610 (matchR!5328 (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))) (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))))))

(declare-fun b!3835902 () Bool)

(declare-fun res!1552608 () Bool)

(assert (=> b!3835902 (=> (not res!1552608) (not e!2369019))))

(declare-fun apply!9485 (TokenValueInjection!12368 BalanceConc!24496) TokenValue!6470)

(declare-fun seqFromList!4513 (List!40635) BalanceConc!24496)

(assert (=> b!3835902 (= res!1552608 (= (value!198474 (_1!22978 (get!13436 lt!1331283))) (apply!9485 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))) (seqFromList!4513 (originalCharacters!6840 (_1!22978 (get!13436 lt!1331283)))))))))

(declare-fun b!3835903 () Bool)

(assert (=> b!3835903 (= e!2369019 (contains!8220 rules!2768 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))))

(declare-fun b!3835904 () Bool)

(declare-fun e!2369018 () Option!8658)

(declare-fun call!281870 () Option!8658)

(assert (=> b!3835904 (= e!2369018 call!281870)))

(declare-fun d!1138621 () Bool)

(declare-fun e!2369020 () Bool)

(assert (=> d!1138621 e!2369020))

(declare-fun res!1552613 () Bool)

(assert (=> d!1138621 (=> res!1552613 e!2369020)))

(declare-fun isEmpty!23926 (Option!8658) Bool)

(assert (=> d!1138621 (= res!1552613 (isEmpty!23926 lt!1331283))))

(assert (=> d!1138621 (= lt!1331283 e!2369018)))

(declare-fun c!668841 () Bool)

(assert (=> d!1138621 (= c!668841 (and ((_ is Cons!40513) rules!2768) ((_ is Nil!40513) (t!309624 rules!2768))))))

(declare-fun lt!1331280 () Unit!58246)

(declare-fun lt!1331281 () Unit!58246)

(assert (=> d!1138621 (= lt!1331280 lt!1331281)))

(assert (=> d!1138621 (isPrefix!3339 lt!1331184 lt!1331184)))

(declare-fun lemmaIsPrefixRefl!2124 (List!40635 List!40635) Unit!58246)

(assert (=> d!1138621 (= lt!1331281 (lemmaIsPrefixRefl!2124 lt!1331184 lt!1331184))))

(declare-fun rulesValidInductive!2202 (LexerInterface!5829 List!40637) Bool)

(assert (=> d!1138621 (rulesValidInductive!2202 thiss!20629 rules!2768)))

(assert (=> d!1138621 (= (maxPrefix!3133 thiss!20629 rules!2768 lt!1331184) lt!1331283)))

(declare-fun b!3835905 () Bool)

(declare-fun res!1552609 () Bool)

(assert (=> b!3835905 (=> (not res!1552609) (not e!2369019))))

(assert (=> b!3835905 (= res!1552609 (= (++!10237 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283)))) (_2!22978 (get!13436 lt!1331283))) lt!1331184))))

(declare-fun b!3835906 () Bool)

(declare-fun lt!1331282 () Option!8658)

(declare-fun lt!1331284 () Option!8658)

(assert (=> b!3835906 (= e!2369018 (ite (and ((_ is None!8657) lt!1331282) ((_ is None!8657) lt!1331284)) None!8657 (ite ((_ is None!8657) lt!1331284) lt!1331282 (ite ((_ is None!8657) lt!1331282) lt!1331284 (ite (>= (size!30515 (_1!22978 (v!38947 lt!1331282))) (size!30515 (_1!22978 (v!38947 lt!1331284)))) lt!1331282 lt!1331284)))))))

(assert (=> b!3835906 (= lt!1331282 call!281870)))

(assert (=> b!3835906 (= lt!1331284 (maxPrefix!3133 thiss!20629 (t!309624 rules!2768) lt!1331184))))

(declare-fun bm!281865 () Bool)

(declare-fun maxPrefixOneRule!2229 (LexerInterface!5829 Rule!12280 List!40635) Option!8658)

(assert (=> bm!281865 (= call!281870 (maxPrefixOneRule!2229 thiss!20629 (h!45933 rules!2768) lt!1331184))))

(declare-fun b!3835907 () Bool)

(declare-fun res!1552612 () Bool)

(assert (=> b!3835907 (=> (not res!1552612) (not e!2369019))))

(assert (=> b!3835907 (= res!1552612 (= (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283)))) (originalCharacters!6840 (_1!22978 (get!13436 lt!1331283)))))))

(declare-fun b!3835908 () Bool)

(declare-fun res!1552607 () Bool)

(assert (=> b!3835908 (=> (not res!1552607) (not e!2369019))))

(assert (=> b!3835908 (= res!1552607 (< (size!30516 (_2!22978 (get!13436 lt!1331283))) (size!30516 lt!1331184)))))

(declare-fun b!3835909 () Bool)

(assert (=> b!3835909 (= e!2369020 e!2369019)))

(declare-fun res!1552611 () Bool)

(assert (=> b!3835909 (=> (not res!1552611) (not e!2369019))))

(declare-fun isDefined!6817 (Option!8658) Bool)

(assert (=> b!3835909 (= res!1552611 (isDefined!6817 lt!1331283))))

(assert (= (and d!1138621 c!668841) b!3835904))

(assert (= (and d!1138621 (not c!668841)) b!3835906))

(assert (= (or b!3835904 b!3835906) bm!281865))

(assert (= (and d!1138621 (not res!1552613)) b!3835909))

(assert (= (and b!3835909 res!1552611) b!3835907))

(assert (= (and b!3835907 res!1552612) b!3835908))

(assert (= (and b!3835908 res!1552607) b!3835905))

(assert (= (and b!3835905 res!1552609) b!3835902))

(assert (= (and b!3835902 res!1552608) b!3835901))

(assert (= (and b!3835901 res!1552610) b!3835903))

(declare-fun m!4390233 () Bool)

(assert (=> b!3835901 m!4390233))

(declare-fun m!4390235 () Bool)

(assert (=> b!3835901 m!4390235))

(assert (=> b!3835901 m!4390235))

(declare-fun m!4390237 () Bool)

(assert (=> b!3835901 m!4390237))

(assert (=> b!3835901 m!4390237))

(declare-fun m!4390239 () Bool)

(assert (=> b!3835901 m!4390239))

(declare-fun m!4390241 () Bool)

(assert (=> d!1138621 m!4390241))

(declare-fun m!4390243 () Bool)

(assert (=> d!1138621 m!4390243))

(declare-fun m!4390245 () Bool)

(assert (=> d!1138621 m!4390245))

(declare-fun m!4390247 () Bool)

(assert (=> d!1138621 m!4390247))

(declare-fun m!4390249 () Bool)

(assert (=> bm!281865 m!4390249))

(assert (=> b!3835907 m!4390233))

(assert (=> b!3835907 m!4390235))

(assert (=> b!3835907 m!4390235))

(assert (=> b!3835907 m!4390237))

(assert (=> b!3835908 m!4390233))

(declare-fun m!4390251 () Bool)

(assert (=> b!3835908 m!4390251))

(assert (=> b!3835908 m!4389879))

(assert (=> b!3835905 m!4390233))

(assert (=> b!3835905 m!4390235))

(assert (=> b!3835905 m!4390235))

(assert (=> b!3835905 m!4390237))

(assert (=> b!3835905 m!4390237))

(declare-fun m!4390253 () Bool)

(assert (=> b!3835905 m!4390253))

(declare-fun m!4390255 () Bool)

(assert (=> b!3835906 m!4390255))

(assert (=> b!3835902 m!4390233))

(declare-fun m!4390257 () Bool)

(assert (=> b!3835902 m!4390257))

(assert (=> b!3835902 m!4390257))

(declare-fun m!4390259 () Bool)

(assert (=> b!3835902 m!4390259))

(assert (=> b!3835903 m!4390233))

(declare-fun m!4390261 () Bool)

(assert (=> b!3835903 m!4390261))

(declare-fun m!4390263 () Bool)

(assert (=> b!3835909 m!4390263))

(assert (=> b!3835552 d!1138621))

(declare-fun d!1138653 () Bool)

(assert (=> d!1138653 (= (isEmpty!23923 rules!2768) ((_ is Nil!40513) rules!2768))))

(assert (=> b!3835563 d!1138653))

(declare-fun b!3835910 () Bool)

(declare-fun e!2369023 () Bool)

(declare-fun e!2369021 () Bool)

(assert (=> b!3835910 (= e!2369023 e!2369021)))

(declare-fun c!668842 () Bool)

(assert (=> b!3835910 (= c!668842 ((_ is IntegerValue!19411) (value!198474 (h!45932 suffixTokens!72))))))

(declare-fun b!3835911 () Bool)

(declare-fun e!2369022 () Bool)

(assert (=> b!3835911 (= e!2369022 (inv!15 (value!198474 (h!45932 suffixTokens!72))))))

(declare-fun b!3835912 () Bool)

(assert (=> b!3835912 (= e!2369021 (inv!17 (value!198474 (h!45932 suffixTokens!72))))))

(declare-fun b!3835913 () Bool)

(declare-fun res!1552614 () Bool)

(assert (=> b!3835913 (=> res!1552614 e!2369022)))

(assert (=> b!3835913 (= res!1552614 (not ((_ is IntegerValue!19412) (value!198474 (h!45932 suffixTokens!72)))))))

(assert (=> b!3835913 (= e!2369021 e!2369022)))

(declare-fun d!1138655 () Bool)

(declare-fun c!668843 () Bool)

(assert (=> d!1138655 (= c!668843 ((_ is IntegerValue!19410) (value!198474 (h!45932 suffixTokens!72))))))

(assert (=> d!1138655 (= (inv!21 (value!198474 (h!45932 suffixTokens!72))) e!2369023)))

(declare-fun b!3835914 () Bool)

(assert (=> b!3835914 (= e!2369023 (inv!16 (value!198474 (h!45932 suffixTokens!72))))))

(assert (= (and d!1138655 c!668843) b!3835914))

(assert (= (and d!1138655 (not c!668843)) b!3835910))

(assert (= (and b!3835910 c!668842) b!3835912))

(assert (= (and b!3835910 (not c!668842)) b!3835913))

(assert (= (and b!3835913 (not res!1552614)) b!3835911))

(declare-fun m!4390265 () Bool)

(assert (=> b!3835911 m!4390265))

(declare-fun m!4390267 () Bool)

(assert (=> b!3835912 m!4390267))

(declare-fun m!4390269 () Bool)

(assert (=> b!3835914 m!4390269))

(assert (=> b!3835564 d!1138655))

(declare-fun d!1138657 () Bool)

(declare-fun res!1552615 () Bool)

(declare-fun e!2369024 () Bool)

(assert (=> d!1138657 (=> (not res!1552615) (not e!2369024))))

(assert (=> d!1138657 (= res!1552615 (not (isEmpty!23922 (originalCharacters!6840 (h!45932 suffixTokens!72)))))))

(assert (=> d!1138657 (= (inv!54658 (h!45932 suffixTokens!72)) e!2369024)))

(declare-fun b!3835915 () Bool)

(declare-fun res!1552616 () Bool)

(assert (=> b!3835915 (=> (not res!1552616) (not e!2369024))))

(assert (=> b!3835915 (= res!1552616 (= (originalCharacters!6840 (h!45932 suffixTokens!72)) (list!15092 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72))))))))

(declare-fun b!3835916 () Bool)

(assert (=> b!3835916 (= e!2369024 (= (size!30515 (h!45932 suffixTokens!72)) (size!30516 (originalCharacters!6840 (h!45932 suffixTokens!72)))))))

(assert (= (and d!1138657 res!1552615) b!3835915))

(assert (= (and b!3835915 res!1552616) b!3835916))

(declare-fun b_lambda!112153 () Bool)

(assert (=> (not b_lambda!112153) (not b!3835915)))

(declare-fun t!309675 () Bool)

(declare-fun tb!220345 () Bool)

(assert (=> (and b!3835565 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) t!309675) tb!220345))

(declare-fun b!3835917 () Bool)

(declare-fun e!2369025 () Bool)

(declare-fun tp!1161060 () Bool)

(assert (=> b!3835917 (= e!2369025 (and (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72))))) tp!1161060))))

(declare-fun result!268574 () Bool)

(assert (=> tb!220345 (= result!268574 (and (inv!54660 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72)))) e!2369025))))

(assert (= tb!220345 b!3835917))

(declare-fun m!4390271 () Bool)

(assert (=> b!3835917 m!4390271))

(declare-fun m!4390273 () Bool)

(assert (=> tb!220345 m!4390273))

(assert (=> b!3835915 t!309675))

(declare-fun b_and!285301 () Bool)

(assert (= b_and!285265 (and (=> t!309675 result!268574) b_and!285301)))

(declare-fun t!309677 () Bool)

(declare-fun tb!220347 () Bool)

(assert (=> (and b!3835566 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) t!309677) tb!220347))

(declare-fun result!268576 () Bool)

(assert (= result!268576 result!268574))

(assert (=> b!3835915 t!309677))

(declare-fun b_and!285303 () Bool)

(assert (= b_and!285267 (and (=> t!309677 result!268576) b_and!285303)))

(declare-fun t!309679 () Bool)

(declare-fun tb!220349 () Bool)

(assert (=> (and b!3835559 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) t!309679) tb!220349))

(declare-fun result!268578 () Bool)

(assert (= result!268578 result!268574))

(assert (=> b!3835915 t!309679))

(declare-fun b_and!285305 () Bool)

(assert (= b_and!285269 (and (=> t!309679 result!268578) b_and!285305)))

(declare-fun m!4390275 () Bool)

(assert (=> d!1138657 m!4390275))

(declare-fun m!4390277 () Bool)

(assert (=> b!3835915 m!4390277))

(assert (=> b!3835915 m!4390277))

(declare-fun m!4390279 () Bool)

(assert (=> b!3835915 m!4390279))

(declare-fun m!4390281 () Bool)

(assert (=> b!3835916 m!4390281))

(assert (=> b!3835553 d!1138657))

(declare-fun d!1138659 () Bool)

(assert (=> d!1138659 (= (isEmpty!23924 prefixTokens!80) ((_ is Nil!40512) prefixTokens!80))))

(assert (=> b!3835570 d!1138659))

(declare-fun d!1138661 () Bool)

(assert (=> d!1138661 (= (isEmpty!23922 prefix!426) ((_ is Nil!40511) prefix!426))))

(assert (=> b!3835560 d!1138661))

(declare-fun b!3835918 () Bool)

(declare-fun e!2369027 () Bool)

(declare-fun e!2369028 () Bool)

(assert (=> b!3835918 (= e!2369027 e!2369028)))

(declare-fun res!1552617 () Bool)

(declare-fun lt!1331285 () tuple2!39686)

(assert (=> b!3835918 (= res!1552617 (< (size!30516 (_2!22977 lt!1331285)) (size!30516 suffix!1176)))))

(assert (=> b!3835918 (=> (not res!1552617) (not e!2369028))))

(declare-fun b!3835919 () Bool)

(assert (=> b!3835919 (= e!2369027 (= (_2!22977 lt!1331285) suffix!1176))))

(declare-fun b!3835920 () Bool)

(assert (=> b!3835920 (= e!2369028 (not (isEmpty!23924 (_1!22977 lt!1331285))))))

(declare-fun d!1138663 () Bool)

(assert (=> d!1138663 e!2369027))

(declare-fun c!668844 () Bool)

(assert (=> d!1138663 (= c!668844 (> (size!30518 (_1!22977 lt!1331285)) 0))))

(declare-fun e!2369026 () tuple2!39686)

(assert (=> d!1138663 (= lt!1331285 e!2369026)))

(declare-fun c!668845 () Bool)

(declare-fun lt!1331286 () Option!8658)

(assert (=> d!1138663 (= c!668845 ((_ is Some!8657) lt!1331286))))

(assert (=> d!1138663 (= lt!1331286 (maxPrefix!3133 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1138663 (= (lexList!1597 thiss!20629 rules!2768 suffix!1176) lt!1331285)))

(declare-fun b!3835921 () Bool)

(declare-fun lt!1331287 () tuple2!39686)

(assert (=> b!3835921 (= e!2369026 (tuple2!39687 (Cons!40512 (_1!22978 (v!38947 lt!1331286)) (_1!22977 lt!1331287)) (_2!22977 lt!1331287)))))

(assert (=> b!3835921 (= lt!1331287 (lexList!1597 thiss!20629 rules!2768 (_2!22978 (v!38947 lt!1331286))))))

(declare-fun b!3835922 () Bool)

(assert (=> b!3835922 (= e!2369026 (tuple2!39687 Nil!40512 suffix!1176))))

(assert (= (and d!1138663 c!668845) b!3835921))

(assert (= (and d!1138663 (not c!668845)) b!3835922))

(assert (= (and d!1138663 c!668844) b!3835918))

(assert (= (and d!1138663 (not c!668844)) b!3835919))

(assert (= (and b!3835918 res!1552617) b!3835920))

(declare-fun m!4390283 () Bool)

(assert (=> b!3835918 m!4390283))

(assert (=> b!3835918 m!4389935))

(declare-fun m!4390285 () Bool)

(assert (=> b!3835920 m!4390285))

(declare-fun m!4390287 () Bool)

(assert (=> d!1138663 m!4390287))

(declare-fun m!4390289 () Bool)

(assert (=> d!1138663 m!4390289))

(declare-fun m!4390291 () Bool)

(assert (=> b!3835921 m!4390291))

(assert (=> b!3835549 d!1138663))

(declare-fun d!1138665 () Bool)

(assert (=> d!1138665 (= (inv!54654 (tag!7100 (rule!9074 (h!45932 prefixTokens!80)))) (= (mod (str.len (value!198473 (tag!7100 (rule!9074 (h!45932 prefixTokens!80))))) 2) 0))))

(assert (=> b!3835550 d!1138665))

(declare-fun d!1138667 () Bool)

(declare-fun res!1552618 () Bool)

(declare-fun e!2369029 () Bool)

(assert (=> d!1138667 (=> (not res!1552618) (not e!2369029))))

(assert (=> d!1138667 (= res!1552618 (semiInverseModEq!2677 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))))))

(assert (=> d!1138667 (= (inv!54657 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) e!2369029)))

(declare-fun b!3835923 () Bool)

(assert (=> b!3835923 (= e!2369029 (equivClasses!2576 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))))))

(assert (= (and d!1138667 res!1552618) b!3835923))

(declare-fun m!4390293 () Bool)

(assert (=> d!1138667 m!4390293))

(declare-fun m!4390295 () Bool)

(assert (=> b!3835923 m!4390295))

(assert (=> b!3835550 d!1138667))

(declare-fun d!1138669 () Bool)

(declare-fun res!1552621 () Bool)

(declare-fun e!2369032 () Bool)

(assert (=> d!1138669 (=> (not res!1552621) (not e!2369032))))

(declare-fun rulesValid!2412 (LexerInterface!5829 List!40637) Bool)

(assert (=> d!1138669 (= res!1552621 (rulesValid!2412 thiss!20629 rules!2768))))

(assert (=> d!1138669 (= (rulesInvariant!5172 thiss!20629 rules!2768) e!2369032)))

(declare-fun b!3835926 () Bool)

(declare-datatypes ((List!40639 0))(
  ( (Nil!40515) (Cons!40515 (h!45935 String!46068) (t!309698 List!40639)) )
))
(declare-fun noDuplicateTag!2413 (LexerInterface!5829 List!40637 List!40639) Bool)

(assert (=> b!3835926 (= e!2369032 (noDuplicateTag!2413 thiss!20629 rules!2768 Nil!40515))))

(assert (= (and d!1138669 res!1552621) b!3835926))

(declare-fun m!4390297 () Bool)

(assert (=> d!1138669 m!4390297))

(declare-fun m!4390299 () Bool)

(assert (=> b!3835926 m!4390299))

(assert (=> b!3835561 d!1138669))

(declare-fun b!3835940 () Bool)

(declare-fun b_free!101949 () Bool)

(declare-fun b_next!102653 () Bool)

(assert (=> b!3835940 (= b_free!101949 (not b_next!102653))))

(declare-fun tp!1161072 () Bool)

(declare-fun b_and!285307 () Bool)

(assert (=> b!3835940 (= tp!1161072 b_and!285307)))

(declare-fun b_free!101951 () Bool)

(declare-fun b_next!102655 () Bool)

(assert (=> b!3835940 (= b_free!101951 (not b_next!102655))))

(declare-fun t!309681 () Bool)

(declare-fun tb!220351 () Bool)

(assert (=> (and b!3835940 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) t!309681) tb!220351))

(declare-fun result!268582 () Bool)

(assert (= result!268582 result!268514))

(assert (=> b!3835632 t!309681))

(declare-fun t!309683 () Bool)

(declare-fun tb!220353 () Bool)

(assert (=> (and b!3835940 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))) t!309683) tb!220353))

(declare-fun result!268584 () Bool)

(assert (= result!268584 result!268522))

(assert (=> d!1138595 t!309683))

(declare-fun tb!220355 () Bool)

(declare-fun t!309685 () Bool)

(assert (=> (and b!3835940 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) t!309685) tb!220355))

(declare-fun result!268586 () Bool)

(assert (= result!268586 result!268574))

(assert (=> b!3835915 t!309685))

(declare-fun tp!1161075 () Bool)

(declare-fun b_and!285309 () Bool)

(assert (=> b!3835940 (= tp!1161075 (and (=> t!309681 result!268582) (=> t!309683 result!268584) (=> t!309685 result!268586) b_and!285309))))

(declare-fun e!2369049 () Bool)

(declare-fun b!3835939 () Bool)

(declare-fun tp!1161074 () Bool)

(declare-fun e!2369047 () Bool)

(assert (=> b!3835939 (= e!2369049 (and tp!1161074 (inv!54654 (tag!7100 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (inv!54657 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) e!2369047))))

(declare-fun b!3835938 () Bool)

(declare-fun e!2369045 () Bool)

(declare-fun tp!1161073 () Bool)

(assert (=> b!3835938 (= e!2369045 (and (inv!21 (value!198474 (h!45932 (t!309623 prefixTokens!80)))) e!2369049 tp!1161073))))

(assert (=> b!3835940 (= e!2369047 (and tp!1161072 tp!1161075))))

(declare-fun b!3835937 () Bool)

(declare-fun tp!1161071 () Bool)

(declare-fun e!2369046 () Bool)

(assert (=> b!3835937 (= e!2369046 (and (inv!54658 (h!45932 (t!309623 prefixTokens!80))) e!2369045 tp!1161071))))

(assert (=> b!3835568 (= tp!1160983 e!2369046)))

(assert (= b!3835939 b!3835940))

(assert (= b!3835938 b!3835939))

(assert (= b!3835937 b!3835938))

(assert (= (and b!3835568 ((_ is Cons!40512) (t!309623 prefixTokens!80))) b!3835937))

(declare-fun m!4390301 () Bool)

(assert (=> b!3835939 m!4390301))

(declare-fun m!4390303 () Bool)

(assert (=> b!3835939 m!4390303))

(declare-fun m!4390305 () Bool)

(assert (=> b!3835938 m!4390305))

(declare-fun m!4390307 () Bool)

(assert (=> b!3835937 m!4390307))

(declare-fun b!3835953 () Bool)

(declare-fun e!2369053 () Bool)

(declare-fun tp!1161090 () Bool)

(assert (=> b!3835953 (= e!2369053 tp!1161090)))

(declare-fun b!3835954 () Bool)

(declare-fun tp!1161087 () Bool)

(declare-fun tp!1161086 () Bool)

(assert (=> b!3835954 (= e!2369053 (and tp!1161087 tp!1161086))))

(assert (=> b!3835558 (= tp!1160984 e!2369053)))

(declare-fun b!3835951 () Bool)

(assert (=> b!3835951 (= e!2369053 tp_is_empty!19261)))

(declare-fun b!3835952 () Bool)

(declare-fun tp!1161088 () Bool)

(declare-fun tp!1161089 () Bool)

(assert (=> b!3835952 (= e!2369053 (and tp!1161088 tp!1161089))))

(assert (= (and b!3835558 ((_ is ElementMatch!11145) (regex!6240 (h!45933 rules!2768)))) b!3835951))

(assert (= (and b!3835558 ((_ is Concat!17616) (regex!6240 (h!45933 rules!2768)))) b!3835952))

(assert (= (and b!3835558 ((_ is Star!11145) (regex!6240 (h!45933 rules!2768)))) b!3835953))

(assert (= (and b!3835558 ((_ is Union!11145) (regex!6240 (h!45933 rules!2768)))) b!3835954))

(declare-fun b!3835959 () Bool)

(declare-fun e!2369056 () Bool)

(declare-fun tp!1161093 () Bool)

(assert (=> b!3835959 (= e!2369056 (and tp_is_empty!19261 tp!1161093))))

(assert (=> b!3835548 (= tp!1160976 e!2369056)))

(assert (= (and b!3835548 ((_ is Cons!40511) (originalCharacters!6840 (h!45932 prefixTokens!80)))) b!3835959))

(declare-fun b!3835960 () Bool)

(declare-fun e!2369057 () Bool)

(declare-fun tp!1161094 () Bool)

(assert (=> b!3835960 (= e!2369057 (and tp_is_empty!19261 tp!1161094))))

(assert (=> b!3835569 (= tp!1160982 e!2369057)))

(assert (= (and b!3835569 ((_ is Cons!40511) (t!309622 prefix!426))) b!3835960))

(declare-fun b!3835961 () Bool)

(declare-fun e!2369058 () Bool)

(declare-fun tp!1161095 () Bool)

(assert (=> b!3835961 (= e!2369058 (and tp_is_empty!19261 tp!1161095))))

(assert (=> b!3835555 (= tp!1160977 e!2369058)))

(assert (= (and b!3835555 ((_ is Cons!40511) (t!309622 suffix!1176))) b!3835961))

(declare-fun b!3835962 () Bool)

(declare-fun e!2369059 () Bool)

(declare-fun tp!1161096 () Bool)

(assert (=> b!3835962 (= e!2369059 (and tp_is_empty!19261 tp!1161096))))

(assert (=> b!3835556 (= tp!1160986 e!2369059)))

(assert (= (and b!3835556 ((_ is Cons!40511) (t!309622 suffixResult!91))) b!3835962))

(declare-fun b!3835965 () Bool)

(declare-fun e!2369060 () Bool)

(declare-fun tp!1161101 () Bool)

(assert (=> b!3835965 (= e!2369060 tp!1161101)))

(declare-fun b!3835966 () Bool)

(declare-fun tp!1161098 () Bool)

(declare-fun tp!1161097 () Bool)

(assert (=> b!3835966 (= e!2369060 (and tp!1161098 tp!1161097))))

(assert (=> b!3835562 (= tp!1160973 e!2369060)))

(declare-fun b!3835963 () Bool)

(assert (=> b!3835963 (= e!2369060 tp_is_empty!19261)))

(declare-fun b!3835964 () Bool)

(declare-fun tp!1161099 () Bool)

(declare-fun tp!1161100 () Bool)

(assert (=> b!3835964 (= e!2369060 (and tp!1161099 tp!1161100))))

(assert (= (and b!3835562 ((_ is ElementMatch!11145) (regex!6240 (rule!9074 (h!45932 suffixTokens!72))))) b!3835963))

(assert (= (and b!3835562 ((_ is Concat!17616) (regex!6240 (rule!9074 (h!45932 suffixTokens!72))))) b!3835964))

(assert (= (and b!3835562 ((_ is Star!11145) (regex!6240 (rule!9074 (h!45932 suffixTokens!72))))) b!3835965))

(assert (= (and b!3835562 ((_ is Union!11145) (regex!6240 (rule!9074 (h!45932 suffixTokens!72))))) b!3835966))

(declare-fun b!3835977 () Bool)

(declare-fun b_free!101953 () Bool)

(declare-fun b_next!102657 () Bool)

(assert (=> b!3835977 (= b_free!101953 (not b_next!102657))))

(declare-fun tp!1161110 () Bool)

(declare-fun b_and!285311 () Bool)

(assert (=> b!3835977 (= tp!1161110 b_and!285311)))

(declare-fun b_free!101955 () Bool)

(declare-fun b_next!102659 () Bool)

(assert (=> b!3835977 (= b_free!101955 (not b_next!102659))))

(declare-fun t!309687 () Bool)

(declare-fun tb!220357 () Bool)

(assert (=> (and b!3835977 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) t!309687) tb!220357))

(declare-fun result!268594 () Bool)

(assert (= result!268594 result!268514))

(assert (=> b!3835632 t!309687))

(declare-fun tb!220359 () Bool)

(declare-fun t!309689 () Bool)

(assert (=> (and b!3835977 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))) t!309689) tb!220359))

(declare-fun result!268596 () Bool)

(assert (= result!268596 result!268522))

(assert (=> d!1138595 t!309689))

(declare-fun tb!220361 () Bool)

(declare-fun t!309691 () Bool)

(assert (=> (and b!3835977 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) t!309691) tb!220361))

(declare-fun result!268598 () Bool)

(assert (= result!268598 result!268574))

(assert (=> b!3835915 t!309691))

(declare-fun tp!1161113 () Bool)

(declare-fun b_and!285313 () Bool)

(assert (=> b!3835977 (= tp!1161113 (and (=> t!309687 result!268594) (=> t!309689 result!268596) (=> t!309691 result!268598) b_and!285313))))

(declare-fun e!2369070 () Bool)

(assert (=> b!3835977 (= e!2369070 (and tp!1161110 tp!1161113))))

(declare-fun tp!1161112 () Bool)

(declare-fun e!2369069 () Bool)

(declare-fun b!3835976 () Bool)

(assert (=> b!3835976 (= e!2369069 (and tp!1161112 (inv!54654 (tag!7100 (h!45933 (t!309624 rules!2768)))) (inv!54657 (transformation!6240 (h!45933 (t!309624 rules!2768)))) e!2369070))))

(declare-fun b!3835975 () Bool)

(declare-fun e!2369071 () Bool)

(declare-fun tp!1161111 () Bool)

(assert (=> b!3835975 (= e!2369071 (and e!2369069 tp!1161111))))

(assert (=> b!3835551 (= tp!1160980 e!2369071)))

(assert (= b!3835976 b!3835977))

(assert (= b!3835975 b!3835976))

(assert (= (and b!3835551 ((_ is Cons!40513) (t!309624 rules!2768))) b!3835975))

(declare-fun m!4390309 () Bool)

(assert (=> b!3835976 m!4390309))

(declare-fun m!4390311 () Bool)

(assert (=> b!3835976 m!4390311))

(declare-fun b!3835978 () Bool)

(declare-fun e!2369073 () Bool)

(declare-fun tp!1161114 () Bool)

(assert (=> b!3835978 (= e!2369073 (and tp_is_empty!19261 tp!1161114))))

(assert (=> b!3835564 (= tp!1160981 e!2369073)))

(assert (= (and b!3835564 ((_ is Cons!40511) (originalCharacters!6840 (h!45932 suffixTokens!72)))) b!3835978))

(declare-fun b!3835982 () Bool)

(declare-fun b_free!101957 () Bool)

(declare-fun b_next!102661 () Bool)

(assert (=> b!3835982 (= b_free!101957 (not b_next!102661))))

(declare-fun tp!1161116 () Bool)

(declare-fun b_and!285315 () Bool)

(assert (=> b!3835982 (= tp!1161116 b_and!285315)))

(declare-fun b_free!101959 () Bool)

(declare-fun b_next!102663 () Bool)

(assert (=> b!3835982 (= b_free!101959 (not b_next!102663))))

(declare-fun tb!220363 () Bool)

(declare-fun t!309693 () Bool)

(assert (=> (and b!3835982 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) t!309693) tb!220363))

(declare-fun result!268600 () Bool)

(assert (= result!268600 result!268514))

(assert (=> b!3835632 t!309693))

(declare-fun t!309695 () Bool)

(declare-fun tb!220365 () Bool)

(assert (=> (and b!3835982 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))) t!309695) tb!220365))

(declare-fun result!268602 () Bool)

(assert (= result!268602 result!268522))

(assert (=> d!1138595 t!309695))

(declare-fun t!309697 () Bool)

(declare-fun tb!220367 () Bool)

(assert (=> (and b!3835982 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) t!309697) tb!220367))

(declare-fun result!268604 () Bool)

(assert (= result!268604 result!268574))

(assert (=> b!3835915 t!309697))

(declare-fun tp!1161119 () Bool)

(declare-fun b_and!285317 () Bool)

(assert (=> b!3835982 (= tp!1161119 (and (=> t!309693 result!268600) (=> t!309695 result!268602) (=> t!309697 result!268604) b_and!285317))))

(declare-fun b!3835981 () Bool)

(declare-fun e!2369078 () Bool)

(declare-fun e!2369076 () Bool)

(declare-fun tp!1161118 () Bool)

(assert (=> b!3835981 (= e!2369078 (and tp!1161118 (inv!54654 (tag!7100 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (inv!54657 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) e!2369076))))

(declare-fun tp!1161117 () Bool)

(declare-fun e!2369074 () Bool)

(declare-fun b!3835980 () Bool)

(assert (=> b!3835980 (= e!2369074 (and (inv!21 (value!198474 (h!45932 (t!309623 suffixTokens!72)))) e!2369078 tp!1161117))))

(assert (=> b!3835982 (= e!2369076 (and tp!1161116 tp!1161119))))

(declare-fun e!2369075 () Bool)

(declare-fun b!3835979 () Bool)

(declare-fun tp!1161115 () Bool)

(assert (=> b!3835979 (= e!2369075 (and (inv!54658 (h!45932 (t!309623 suffixTokens!72))) e!2369074 tp!1161115))))

(assert (=> b!3835553 (= tp!1160972 e!2369075)))

(assert (= b!3835981 b!3835982))

(assert (= b!3835980 b!3835981))

(assert (= b!3835979 b!3835980))

(assert (= (and b!3835553 ((_ is Cons!40512) (t!309623 suffixTokens!72))) b!3835979))

(declare-fun m!4390313 () Bool)

(assert (=> b!3835981 m!4390313))

(declare-fun m!4390315 () Bool)

(assert (=> b!3835981 m!4390315))

(declare-fun m!4390317 () Bool)

(assert (=> b!3835980 m!4390317))

(declare-fun m!4390319 () Bool)

(assert (=> b!3835979 m!4390319))

(declare-fun b!3835985 () Bool)

(declare-fun e!2369080 () Bool)

(declare-fun tp!1161124 () Bool)

(assert (=> b!3835985 (= e!2369080 tp!1161124)))

(declare-fun b!3835986 () Bool)

(declare-fun tp!1161121 () Bool)

(declare-fun tp!1161120 () Bool)

(assert (=> b!3835986 (= e!2369080 (and tp!1161121 tp!1161120))))

(assert (=> b!3835550 (= tp!1160978 e!2369080)))

(declare-fun b!3835983 () Bool)

(assert (=> b!3835983 (= e!2369080 tp_is_empty!19261)))

(declare-fun b!3835984 () Bool)

(declare-fun tp!1161122 () Bool)

(declare-fun tp!1161123 () Bool)

(assert (=> b!3835984 (= e!2369080 (and tp!1161122 tp!1161123))))

(assert (= (and b!3835550 ((_ is ElementMatch!11145) (regex!6240 (rule!9074 (h!45932 prefixTokens!80))))) b!3835983))

(assert (= (and b!3835550 ((_ is Concat!17616) (regex!6240 (rule!9074 (h!45932 prefixTokens!80))))) b!3835984))

(assert (= (and b!3835550 ((_ is Star!11145) (regex!6240 (rule!9074 (h!45932 prefixTokens!80))))) b!3835985))

(assert (= (and b!3835550 ((_ is Union!11145) (regex!6240 (rule!9074 (h!45932 prefixTokens!80))))) b!3835986))

(declare-fun b_lambda!112155 () Bool)

(assert (= b_lambda!112153 (or (and b!3835982 b_free!101959 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))))) (and b!3835566 b_free!101931) (and b!3835559 b_free!101935 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))))) (and b!3835977 b_free!101955 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))))) (and b!3835565 b_free!101927 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))))) (and b!3835940 b_free!101951 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b_lambda!112155)))

(declare-fun b_lambda!112157 () Bool)

(assert (= b_lambda!112139 (or (and b!3835565 b_free!101927) (and b!3835982 b_free!101959 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))))) (and b!3835940 b_free!101951 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))))) (and b!3835977 b_free!101955 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))))) (and b!3835559 b_free!101935 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))))) (and b!3835566 b_free!101931 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b_lambda!112157)))

(check-sat (not b!3835920) (not b_next!102657) (not b!3835737) (not b!3835959) (not b!3835921) (not b!3835966) (not d!1138555) (not d!1138587) (not b_next!102635) (not b!3835632) (not b!3835911) (not b!3835954) (not d!1138621) b_and!285255 (not b!3835975) (not b!3835686) (not b!3835905) (not d!1138551) (not b!3835960) (not b!3835938) (not b_next!102661) (not b_next!102629) (not b!3835976) (not b!3835678) (not b!3835633) (not b!3835765) (not b!3835756) (not b!3835688) (not b!3835939) (not b!3835918) (not b_next!102631) (not b_next!102639) (not b!3835915) b_and!285301 b_and!285247 (not b!3835908) (not b!3835596) (not b!3835979) (not b!3835937) (not b!3835607) (not bm!281865) (not b!3835680) (not d!1138669) (not d!1138657) (not b!3835978) (not b!3835985) (not b!3835906) (not b!3835916) b_and!285307 b_and!285315 (not d!1138595) (not b!3835952) (not b!3835677) (not tb!220345) (not tb!220297) (not b_next!102637) (not b!3835581) (not b!3835901) (not b!3835751) (not d!1138667) (not b!3835962) (not b!3835984) b_and!285311 (not b!3835638) (not b!3835658) (not b!3835909) (not b!3835986) (not d!1138619) (not b_lambda!112141) b_and!285305 (not d!1138557) (not b!3835608) (not d!1138591) b_and!285303 (not b_next!102663) (not b!3835755) (not b!3835953) (not b!3835907) (not b_next!102655) (not d!1138601) (not b!3835961) (not b!3835584) (not b!3835902) (not b!3835923) (not b_next!102653) (not b!3835917) (not d!1138567) (not b_next!102633) (not b!3835763) (not b!3835762) (not b!3835981) (not b!3835965) b_and!285309 (not b!3835659) tp_is_empty!19261 (not b!3835914) (not b!3835583) (not b!3835980) (not b_lambda!112157) (not d!1138573) (not d!1138579) (not b!3835912) (not b!3835595) (not b!3835964) (not b!3835761) (not b!3835903) (not b!3835926) (not d!1138581) (not b_lambda!112155) (not b!3835657) b_and!285317 (not d!1138559) (not tb!220303) (not d!1138663) b_and!285251 (not b_next!102659) b_and!285313 (not b!3835665))
(check-sat (not b_next!102635) b_and!285255 (not b_next!102657) (not b_next!102631) b_and!285307 b_and!285315 (not b_next!102637) b_and!285311 b_and!285305 b_and!285303 (not b_next!102663) (not b_next!102655) (not b_next!102653) (not b_next!102633) b_and!285309 b_and!285317 b_and!285251 (not b_next!102661) (not b_next!102629) (not b_next!102639) b_and!285301 b_and!285247 (not b_next!102659) b_and!285313)
(get-model)

(declare-fun d!1138717 () Bool)

(declare-fun lt!1331307 () Int)

(assert (=> d!1138717 (>= lt!1331307 0)))

(declare-fun e!2369129 () Int)

(assert (=> d!1138717 (= lt!1331307 e!2369129)))

(declare-fun c!668867 () Bool)

(assert (=> d!1138717 (= c!668867 ((_ is Nil!40511) lt!1331200))))

(assert (=> d!1138717 (= (size!30516 lt!1331200) lt!1331307)))

(declare-fun b!3836056 () Bool)

(assert (=> b!3836056 (= e!2369129 0)))

(declare-fun b!3836057 () Bool)

(assert (=> b!3836057 (= e!2369129 (+ 1 (size!30516 (t!309622 lt!1331200))))))

(assert (= (and d!1138717 c!668867) b!3836056))

(assert (= (and d!1138717 (not c!668867)) b!3836057))

(declare-fun m!4390387 () Bool)

(assert (=> b!3836057 m!4390387))

(assert (=> b!3835608 d!1138717))

(declare-fun d!1138719 () Bool)

(declare-fun lt!1331308 () Int)

(assert (=> d!1138719 (>= lt!1331308 0)))

(declare-fun e!2369130 () Int)

(assert (=> d!1138719 (= lt!1331308 e!2369130)))

(declare-fun c!668868 () Bool)

(assert (=> d!1138719 (= c!668868 ((_ is Nil!40511) prefix!426))))

(assert (=> d!1138719 (= (size!30516 prefix!426) lt!1331308)))

(declare-fun b!3836058 () Bool)

(assert (=> b!3836058 (= e!2369130 0)))

(declare-fun b!3836059 () Bool)

(assert (=> b!3836059 (= e!2369130 (+ 1 (size!30516 (t!309622 prefix!426))))))

(assert (= (and d!1138719 c!668868) b!3836058))

(assert (= (and d!1138719 (not c!668868)) b!3836059))

(declare-fun m!4390389 () Bool)

(assert (=> b!3836059 m!4390389))

(assert (=> b!3835608 d!1138719))

(declare-fun d!1138721 () Bool)

(declare-fun lt!1331309 () Int)

(assert (=> d!1138721 (>= lt!1331309 0)))

(declare-fun e!2369131 () Int)

(assert (=> d!1138721 (= lt!1331309 e!2369131)))

(declare-fun c!668869 () Bool)

(assert (=> d!1138721 (= c!668869 ((_ is Nil!40511) suffix!1176))))

(assert (=> d!1138721 (= (size!30516 suffix!1176) lt!1331309)))

(declare-fun b!3836060 () Bool)

(assert (=> b!3836060 (= e!2369131 0)))

(declare-fun b!3836061 () Bool)

(assert (=> b!3836061 (= e!2369131 (+ 1 (size!30516 (t!309622 suffix!1176))))))

(assert (= (and d!1138721 c!668869) b!3836060))

(assert (= (and d!1138721 (not c!668869)) b!3836061))

(declare-fun m!4390391 () Bool)

(assert (=> b!3836061 m!4390391))

(assert (=> b!3835608 d!1138721))

(declare-fun d!1138723 () Bool)

(declare-fun lt!1331310 () Int)

(assert (=> d!1138723 (>= lt!1331310 0)))

(declare-fun e!2369132 () Int)

(assert (=> d!1138723 (= lt!1331310 e!2369132)))

(declare-fun c!668870 () Bool)

(assert (=> d!1138723 (= c!668870 ((_ is Nil!40511) (_2!22977 lt!1331285)))))

(assert (=> d!1138723 (= (size!30516 (_2!22977 lt!1331285)) lt!1331310)))

(declare-fun b!3836062 () Bool)

(assert (=> b!3836062 (= e!2369132 0)))

(declare-fun b!3836063 () Bool)

(assert (=> b!3836063 (= e!2369132 (+ 1 (size!30516 (t!309622 (_2!22977 lt!1331285)))))))

(assert (= (and d!1138723 c!668870) b!3836062))

(assert (= (and d!1138723 (not c!668870)) b!3836063))

(declare-fun m!4390393 () Bool)

(assert (=> b!3836063 m!4390393))

(assert (=> b!3835918 d!1138723))

(assert (=> b!3835918 d!1138721))

(declare-fun d!1138725 () Bool)

(assert (=> d!1138725 true))

(declare-fun lambda!126056 () Int)

(declare-fun order!22135 () Int)

(declare-fun order!22137 () Int)

(declare-fun dynLambda!17548 (Int Int) Int)

(declare-fun dynLambda!17549 (Int Int) Int)

(assert (=> d!1138725 (< (dynLambda!17548 order!22135 (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) (dynLambda!17549 order!22137 lambda!126056))))

(declare-fun Forall2!1027 (Int) Bool)

(assert (=> d!1138725 (= (equivClasses!2576 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) (Forall2!1027 lambda!126056))))

(declare-fun bs!582483 () Bool)

(assert (= bs!582483 d!1138725))

(declare-fun m!4390555 () Bool)

(assert (=> bs!582483 m!4390555))

(assert (=> b!3835923 d!1138725))

(assert (=> d!1138581 d!1138609))

(assert (=> d!1138581 d!1138601))

(declare-fun d!1138797 () Bool)

(assert (=> d!1138797 (isPrefix!3339 lt!1331183 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185))))))

(assert (=> d!1138797 true))

(declare-fun _$46!1502 () Unit!58246)

(assert (=> d!1138797 (= (choose!22550 lt!1331183 (_2!22978 (v!38947 lt!1331185))) _$46!1502)))

(declare-fun bs!582484 () Bool)

(assert (= bs!582484 d!1138797))

(assert (=> bs!582484 m!4389875))

(assert (=> bs!582484 m!4389875))

(assert (=> bs!582484 m!4389885))

(assert (=> d!1138581 d!1138797))

(declare-fun d!1138799 () Bool)

(declare-fun charsToInt!0 (List!40634) (_ BitVec 32))

(assert (=> d!1138799 (= (inv!16 (value!198474 (h!45932 prefixTokens!80))) (= (charsToInt!0 (text!45737 (value!198474 (h!45932 prefixTokens!80)))) (value!198465 (value!198474 (h!45932 prefixTokens!80)))))))

(declare-fun bs!582485 () Bool)

(assert (= bs!582485 d!1138799))

(declare-fun m!4390557 () Bool)

(assert (=> bs!582485 m!4390557))

(assert (=> b!3835680 d!1138799))

(declare-fun d!1138801 () Bool)

(assert (=> d!1138801 (= (isEmpty!23924 (_1!22977 lt!1331285)) ((_ is Nil!40512) (_1!22977 lt!1331285)))))

(assert (=> b!3835920 d!1138801))

(declare-fun bs!582486 () Bool)

(declare-fun d!1138803 () Bool)

(assert (= bs!582486 (and d!1138803 d!1138725)))

(declare-fun lambda!126057 () Int)

(assert (=> bs!582486 (= (= (toValue!8652 (transformation!6240 (h!45933 rules!2768))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) (= lambda!126057 lambda!126056))))

(assert (=> d!1138803 true))

(assert (=> d!1138803 (< (dynLambda!17548 order!22135 (toValue!8652 (transformation!6240 (h!45933 rules!2768)))) (dynLambda!17549 order!22137 lambda!126057))))

(assert (=> d!1138803 (= (equivClasses!2576 (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toValue!8652 (transformation!6240 (h!45933 rules!2768)))) (Forall2!1027 lambda!126057))))

(declare-fun bs!582487 () Bool)

(assert (= bs!582487 d!1138803))

(declare-fun m!4390559 () Bool)

(assert (=> bs!582487 m!4390559))

(assert (=> b!3835665 d!1138803))

(declare-fun d!1138805 () Bool)

(declare-fun lt!1331348 () Int)

(assert (=> d!1138805 (>= lt!1331348 0)))

(declare-fun e!2369220 () Int)

(assert (=> d!1138805 (= lt!1331348 e!2369220)))

(declare-fun c!668907 () Bool)

(assert (=> d!1138805 (= c!668907 ((_ is Nil!40511) (originalCharacters!6840 (h!45932 suffixTokens!72))))))

(assert (=> d!1138805 (= (size!30516 (originalCharacters!6840 (h!45932 suffixTokens!72))) lt!1331348)))

(declare-fun b!3836225 () Bool)

(assert (=> b!3836225 (= e!2369220 0)))

(declare-fun b!3836226 () Bool)

(assert (=> b!3836226 (= e!2369220 (+ 1 (size!30516 (t!309622 (originalCharacters!6840 (h!45932 suffixTokens!72))))))))

(assert (= (and d!1138805 c!668907) b!3836225))

(assert (= (and d!1138805 (not c!668907)) b!3836226))

(declare-fun m!4390561 () Bool)

(assert (=> b!3836226 m!4390561))

(assert (=> b!3835916 d!1138805))

(declare-fun d!1138807 () Bool)

(declare-fun c!668910 () Bool)

(assert (=> d!1138807 (= c!668910 ((_ is Nil!40511) lt!1331253))))

(declare-fun e!2369223 () (InoxSet C!22476))

(assert (=> d!1138807 (= (content!6018 lt!1331253) e!2369223)))

(declare-fun b!3836231 () Bool)

(assert (=> b!3836231 (= e!2369223 ((as const (Array C!22476 Bool)) false))))

(declare-fun b!3836232 () Bool)

(assert (=> b!3836232 (= e!2369223 ((_ map or) (store ((as const (Array C!22476 Bool)) false) (h!45931 lt!1331253) true) (content!6018 (t!309622 lt!1331253))))))

(assert (= (and d!1138807 c!668910) b!3836231))

(assert (= (and d!1138807 (not c!668910)) b!3836232))

(declare-fun m!4390563 () Bool)

(assert (=> b!3836232 m!4390563))

(declare-fun m!4390565 () Bool)

(assert (=> b!3836232 m!4390565))

(assert (=> d!1138601 d!1138807))

(declare-fun d!1138809 () Bool)

(declare-fun c!668911 () Bool)

(assert (=> d!1138809 (= c!668911 ((_ is Nil!40511) lt!1331183))))

(declare-fun e!2369224 () (InoxSet C!22476))

(assert (=> d!1138809 (= (content!6018 lt!1331183) e!2369224)))

(declare-fun b!3836233 () Bool)

(assert (=> b!3836233 (= e!2369224 ((as const (Array C!22476 Bool)) false))))

(declare-fun b!3836234 () Bool)

(assert (=> b!3836234 (= e!2369224 ((_ map or) (store ((as const (Array C!22476 Bool)) false) (h!45931 lt!1331183) true) (content!6018 (t!309622 lt!1331183))))))

(assert (= (and d!1138809 c!668911) b!3836233))

(assert (= (and d!1138809 (not c!668911)) b!3836234))

(declare-fun m!4390567 () Bool)

(assert (=> b!3836234 m!4390567))

(declare-fun m!4390569 () Bool)

(assert (=> b!3836234 m!4390569))

(assert (=> d!1138601 d!1138809))

(declare-fun d!1138811 () Bool)

(declare-fun c!668912 () Bool)

(assert (=> d!1138811 (= c!668912 ((_ is Nil!40511) (_2!22978 (v!38947 lt!1331185))))))

(declare-fun e!2369225 () (InoxSet C!22476))

(assert (=> d!1138811 (= (content!6018 (_2!22978 (v!38947 lt!1331185))) e!2369225)))

(declare-fun b!3836235 () Bool)

(assert (=> b!3836235 (= e!2369225 ((as const (Array C!22476 Bool)) false))))

(declare-fun b!3836236 () Bool)

(assert (=> b!3836236 (= e!2369225 ((_ map or) (store ((as const (Array C!22476 Bool)) false) (h!45931 (_2!22978 (v!38947 lt!1331185))) true) (content!6018 (t!309622 (_2!22978 (v!38947 lt!1331185))))))))

(assert (= (and d!1138811 c!668912) b!3836235))

(assert (= (and d!1138811 (not c!668912)) b!3836236))

(declare-fun m!4390571 () Bool)

(assert (=> b!3836236 m!4390571))

(declare-fun m!4390573 () Bool)

(assert (=> b!3836236 m!4390573))

(assert (=> d!1138601 d!1138811))

(declare-fun d!1138813 () Bool)

(declare-fun isBalanced!3620 (Conc!12451) Bool)

(assert (=> d!1138813 (= (inv!54660 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185))))) (isBalanced!3620 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185)))))))))

(declare-fun bs!582488 () Bool)

(assert (= bs!582488 d!1138813))

(declare-fun m!4390575 () Bool)

(assert (=> bs!582488 m!4390575))

(assert (=> tb!220303 d!1138813))

(declare-fun d!1138815 () Bool)

(declare-fun lt!1331349 () Int)

(assert (=> d!1138815 (>= lt!1331349 0)))

(declare-fun e!2369226 () Int)

(assert (=> d!1138815 (= lt!1331349 e!2369226)))

(declare-fun c!668913 () Bool)

(assert (=> d!1138815 (= c!668913 ((_ is Nil!40511) (_2!22978 (get!13436 lt!1331283))))))

(assert (=> d!1138815 (= (size!30516 (_2!22978 (get!13436 lt!1331283))) lt!1331349)))

(declare-fun b!3836237 () Bool)

(assert (=> b!3836237 (= e!2369226 0)))

(declare-fun b!3836238 () Bool)

(assert (=> b!3836238 (= e!2369226 (+ 1 (size!30516 (t!309622 (_2!22978 (get!13436 lt!1331283))))))))

(assert (= (and d!1138815 c!668913) b!3836237))

(assert (= (and d!1138815 (not c!668913)) b!3836238))

(declare-fun m!4390577 () Bool)

(assert (=> b!3836238 m!4390577))

(assert (=> b!3835908 d!1138815))

(declare-fun d!1138817 () Bool)

(assert (=> d!1138817 (= (get!13436 lt!1331283) (v!38947 lt!1331283))))

(assert (=> b!3835908 d!1138817))

(assert (=> b!3835908 d!1138575))

(declare-fun d!1138819 () Bool)

(assert (=> d!1138819 true))

(declare-fun order!22139 () Int)

(declare-fun lambda!126060 () Int)

(declare-fun order!22141 () Int)

(declare-fun dynLambda!17550 (Int Int) Int)

(declare-fun dynLambda!17551 (Int Int) Int)

(assert (=> d!1138819 (< (dynLambda!17550 order!22139 (toChars!8511 (transformation!6240 (h!45933 rules!2768)))) (dynLambda!17551 order!22141 lambda!126060))))

(assert (=> d!1138819 true))

(assert (=> d!1138819 (< (dynLambda!17548 order!22135 (toValue!8652 (transformation!6240 (h!45933 rules!2768)))) (dynLambda!17551 order!22141 lambda!126060))))

(declare-fun Forall!1430 (Int) Bool)

(assert (=> d!1138819 (= (semiInverseModEq!2677 (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toValue!8652 (transformation!6240 (h!45933 rules!2768)))) (Forall!1430 lambda!126060))))

(declare-fun bs!582489 () Bool)

(assert (= bs!582489 d!1138819))

(declare-fun m!4390579 () Bool)

(assert (=> bs!582489 m!4390579))

(assert (=> d!1138567 d!1138819))

(declare-fun d!1138821 () Bool)

(assert (=> d!1138821 (= (isEmpty!23922 (originalCharacters!6840 (h!45932 prefixTokens!80))) ((_ is Nil!40511) (originalCharacters!6840 (h!45932 prefixTokens!80))))))

(assert (=> d!1138559 d!1138821))

(declare-fun d!1138823 () Bool)

(declare-fun charsToBigInt!1 (List!40634) Int)

(assert (=> d!1138823 (= (inv!17 (value!198474 (h!45932 prefixTokens!80))) (= (charsToBigInt!1 (text!45738 (value!198474 (h!45932 prefixTokens!80)))) (value!198466 (value!198474 (h!45932 prefixTokens!80)))))))

(declare-fun bs!582490 () Bool)

(assert (= bs!582490 d!1138823))

(declare-fun m!4390581 () Bool)

(assert (=> bs!582490 m!4390581))

(assert (=> b!3835678 d!1138823))

(declare-fun b!3836243 () Bool)

(declare-fun e!2369229 () Bool)

(declare-fun e!2369227 () Bool)

(assert (=> b!3836243 (= e!2369229 e!2369227)))

(declare-fun c!668914 () Bool)

(assert (=> b!3836243 (= c!668914 ((_ is IntegerValue!19411) (value!198474 (h!45932 (t!309623 suffixTokens!72)))))))

(declare-fun b!3836244 () Bool)

(declare-fun e!2369228 () Bool)

(assert (=> b!3836244 (= e!2369228 (inv!15 (value!198474 (h!45932 (t!309623 suffixTokens!72)))))))

(declare-fun b!3836245 () Bool)

(assert (=> b!3836245 (= e!2369227 (inv!17 (value!198474 (h!45932 (t!309623 suffixTokens!72)))))))

(declare-fun b!3836246 () Bool)

(declare-fun res!1552733 () Bool)

(assert (=> b!3836246 (=> res!1552733 e!2369228)))

(assert (=> b!3836246 (= res!1552733 (not ((_ is IntegerValue!19412) (value!198474 (h!45932 (t!309623 suffixTokens!72))))))))

(assert (=> b!3836246 (= e!2369227 e!2369228)))

(declare-fun d!1138825 () Bool)

(declare-fun c!668915 () Bool)

(assert (=> d!1138825 (= c!668915 ((_ is IntegerValue!19410) (value!198474 (h!45932 (t!309623 suffixTokens!72)))))))

(assert (=> d!1138825 (= (inv!21 (value!198474 (h!45932 (t!309623 suffixTokens!72)))) e!2369229)))

(declare-fun b!3836247 () Bool)

(assert (=> b!3836247 (= e!2369229 (inv!16 (value!198474 (h!45932 (t!309623 suffixTokens!72)))))))

(assert (= (and d!1138825 c!668915) b!3836247))

(assert (= (and d!1138825 (not c!668915)) b!3836243))

(assert (= (and b!3836243 c!668914) b!3836245))

(assert (= (and b!3836243 (not c!668914)) b!3836246))

(assert (= (and b!3836246 (not res!1552733)) b!3836244))

(declare-fun m!4390583 () Bool)

(assert (=> b!3836244 m!4390583))

(declare-fun m!4390585 () Bool)

(assert (=> b!3836245 m!4390585))

(declare-fun m!4390587 () Bool)

(assert (=> b!3836247 m!4390587))

(assert (=> b!3835980 d!1138825))

(declare-fun d!1138827 () Bool)

(assert (=> d!1138827 (= (head!8072 lt!1331183) (h!45931 lt!1331183))))

(assert (=> b!3835657 d!1138827))

(declare-fun d!1138829 () Bool)

(assert (=> d!1138829 (= (head!8072 lt!1331184) (h!45931 lt!1331184))))

(assert (=> b!3835657 d!1138829))

(declare-fun d!1138831 () Bool)

(declare-fun lt!1331357 () Int)

(assert (=> d!1138831 (>= lt!1331357 0)))

(declare-fun e!2369236 () Int)

(assert (=> d!1138831 (= lt!1331357 e!2369236)))

(declare-fun c!668919 () Bool)

(assert (=> d!1138831 (= c!668919 ((_ is Nil!40512) lt!1331197))))

(assert (=> d!1138831 (= (size!30518 lt!1331197) lt!1331357)))

(declare-fun b!3836261 () Bool)

(assert (=> b!3836261 (= e!2369236 0)))

(declare-fun b!3836262 () Bool)

(assert (=> b!3836262 (= e!2369236 (+ 1 (size!30518 (t!309623 lt!1331197))))))

(assert (= (and d!1138831 c!668919) b!3836261))

(assert (= (and d!1138831 (not c!668919)) b!3836262))

(declare-fun m!4390589 () Bool)

(assert (=> b!3836262 m!4390589))

(assert (=> b!3835596 d!1138831))

(declare-fun d!1138833 () Bool)

(declare-fun lt!1331358 () Int)

(assert (=> d!1138833 (>= lt!1331358 0)))

(declare-fun e!2369237 () Int)

(assert (=> d!1138833 (= lt!1331358 e!2369237)))

(declare-fun c!668920 () Bool)

(assert (=> d!1138833 (= c!668920 ((_ is Nil!40512) prefixTokens!80))))

(assert (=> d!1138833 (= (size!30518 prefixTokens!80) lt!1331358)))

(declare-fun b!3836263 () Bool)

(assert (=> b!3836263 (= e!2369237 0)))

(declare-fun b!3836264 () Bool)

(assert (=> b!3836264 (= e!2369237 (+ 1 (size!30518 (t!309623 prefixTokens!80))))))

(assert (= (and d!1138833 c!668920) b!3836263))

(assert (= (and d!1138833 (not c!668920)) b!3836264))

(declare-fun m!4390591 () Bool)

(assert (=> b!3836264 m!4390591))

(assert (=> b!3835596 d!1138833))

(declare-fun d!1138835 () Bool)

(declare-fun lt!1331359 () Int)

(assert (=> d!1138835 (>= lt!1331359 0)))

(declare-fun e!2369238 () Int)

(assert (=> d!1138835 (= lt!1331359 e!2369238)))

(declare-fun c!668921 () Bool)

(assert (=> d!1138835 (= c!668921 ((_ is Nil!40512) suffixTokens!72))))

(assert (=> d!1138835 (= (size!30518 suffixTokens!72) lt!1331359)))

(declare-fun b!3836265 () Bool)

(assert (=> b!3836265 (= e!2369238 0)))

(declare-fun b!3836266 () Bool)

(assert (=> b!3836266 (= e!2369238 (+ 1 (size!30518 (t!309623 suffixTokens!72))))))

(assert (= (and d!1138835 c!668921) b!3836265))

(assert (= (and d!1138835 (not c!668921)) b!3836266))

(declare-fun m!4390597 () Bool)

(assert (=> b!3836266 m!4390597))

(assert (=> b!3835596 d!1138835))

(declare-fun d!1138837 () Bool)

(declare-fun res!1552745 () Bool)

(declare-fun e!2369243 () Bool)

(assert (=> d!1138837 (=> res!1552745 e!2369243)))

(assert (=> d!1138837 (= res!1552745 ((_ is Nil!40513) rules!2768))))

(assert (=> d!1138837 (= (noDuplicateTag!2413 thiss!20629 rules!2768 Nil!40515) e!2369243)))

(declare-fun b!3836271 () Bool)

(declare-fun e!2369244 () Bool)

(assert (=> b!3836271 (= e!2369243 e!2369244)))

(declare-fun res!1552746 () Bool)

(assert (=> b!3836271 (=> (not res!1552746) (not e!2369244))))

(declare-fun contains!8221 (List!40639 String!46068) Bool)

(assert (=> b!3836271 (= res!1552746 (not (contains!8221 Nil!40515 (tag!7100 (h!45933 rules!2768)))))))

(declare-fun b!3836272 () Bool)

(assert (=> b!3836272 (= e!2369244 (noDuplicateTag!2413 thiss!20629 (t!309624 rules!2768) (Cons!40515 (tag!7100 (h!45933 rules!2768)) Nil!40515)))))

(assert (= (and d!1138837 (not res!1552745)) b!3836271))

(assert (= (and b!3836271 res!1552746) b!3836272))

(declare-fun m!4390639 () Bool)

(assert (=> b!3836271 m!4390639))

(declare-fun m!4390641 () Bool)

(assert (=> b!3836272 m!4390641))

(assert (=> b!3835926 d!1138837))

(declare-fun bs!582492 () Bool)

(declare-fun d!1138845 () Bool)

(assert (= bs!582492 (and d!1138845 d!1138819)))

(declare-fun lambda!126061 () Int)

(assert (=> bs!582492 (= (and (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (h!45933 rules!2768)))) (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toValue!8652 (transformation!6240 (h!45933 rules!2768))))) (= lambda!126061 lambda!126060))))

(assert (=> d!1138845 true))

(assert (=> d!1138845 (< (dynLambda!17550 order!22139 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) (dynLambda!17551 order!22141 lambda!126061))))

(assert (=> d!1138845 true))

(assert (=> d!1138845 (< (dynLambda!17548 order!22135 (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) (dynLambda!17551 order!22141 lambda!126061))))

(assert (=> d!1138845 (= (semiInverseModEq!2677 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) (Forall!1430 lambda!126061))))

(declare-fun bs!582493 () Bool)

(assert (= bs!582493 d!1138845))

(declare-fun m!4390643 () Bool)

(assert (=> bs!582493 m!4390643))

(assert (=> d!1138619 d!1138845))

(assert (=> b!3835659 d!1138575))

(assert (=> b!3835659 d!1138577))

(declare-fun b!3836276 () Bool)

(declare-fun e!2369246 () Bool)

(declare-fun lt!1331360 () List!40635)

(assert (=> b!3836276 (= e!2369246 (or (not (= (_2!22978 (get!13436 lt!1331283)) Nil!40511)) (= lt!1331360 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283)))))))))

(declare-fun b!3836275 () Bool)

(declare-fun res!1552747 () Bool)

(assert (=> b!3836275 (=> (not res!1552747) (not e!2369246))))

(assert (=> b!3836275 (= res!1552747 (= (size!30516 lt!1331360) (+ (size!30516 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))) (size!30516 (_2!22978 (get!13436 lt!1331283))))))))

(declare-fun b!3836274 () Bool)

(declare-fun e!2369245 () List!40635)

(assert (=> b!3836274 (= e!2369245 (Cons!40511 (h!45931 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))) (++!10237 (t!309622 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))) (_2!22978 (get!13436 lt!1331283)))))))

(declare-fun d!1138847 () Bool)

(assert (=> d!1138847 e!2369246))

(declare-fun res!1552748 () Bool)

(assert (=> d!1138847 (=> (not res!1552748) (not e!2369246))))

(assert (=> d!1138847 (= res!1552748 (= (content!6018 lt!1331360) ((_ map or) (content!6018 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))) (content!6018 (_2!22978 (get!13436 lt!1331283))))))))

(assert (=> d!1138847 (= lt!1331360 e!2369245)))

(declare-fun c!668922 () Bool)

(assert (=> d!1138847 (= c!668922 ((_ is Nil!40511) (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))))))

(assert (=> d!1138847 (= (++!10237 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283)))) (_2!22978 (get!13436 lt!1331283))) lt!1331360)))

(declare-fun b!3836273 () Bool)

(assert (=> b!3836273 (= e!2369245 (_2!22978 (get!13436 lt!1331283)))))

(assert (= (and d!1138847 c!668922) b!3836273))

(assert (= (and d!1138847 (not c!668922)) b!3836274))

(assert (= (and d!1138847 res!1552748) b!3836275))

(assert (= (and b!3836275 res!1552747) b!3836276))

(declare-fun m!4390647 () Bool)

(assert (=> b!3836275 m!4390647))

(assert (=> b!3836275 m!4390237))

(declare-fun m!4390649 () Bool)

(assert (=> b!3836275 m!4390649))

(assert (=> b!3836275 m!4390251))

(declare-fun m!4390651 () Bool)

(assert (=> b!3836274 m!4390651))

(declare-fun m!4390653 () Bool)

(assert (=> d!1138847 m!4390653))

(assert (=> d!1138847 m!4390237))

(declare-fun m!4390655 () Bool)

(assert (=> d!1138847 m!4390655))

(declare-fun m!4390657 () Bool)

(assert (=> d!1138847 m!4390657))

(assert (=> b!3835905 d!1138847))

(declare-fun d!1138851 () Bool)

(assert (=> d!1138851 (= (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283)))) (list!15093 (c!668785 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))))))

(declare-fun bs!582495 () Bool)

(assert (= bs!582495 d!1138851))

(declare-fun m!4390659 () Bool)

(assert (=> bs!582495 m!4390659))

(assert (=> b!3835905 d!1138851))

(declare-fun d!1138853 () Bool)

(declare-fun lt!1331361 () BalanceConc!24496)

(assert (=> d!1138853 (= (list!15092 lt!1331361) (originalCharacters!6840 (_1!22978 (get!13436 lt!1331283))))))

(assert (=> d!1138853 (= lt!1331361 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283))))) (value!198474 (_1!22978 (get!13436 lt!1331283)))))))

(assert (=> d!1138853 (= (charsOf!4068 (_1!22978 (get!13436 lt!1331283))) lt!1331361)))

(declare-fun b_lambda!112163 () Bool)

(assert (=> (not b_lambda!112163) (not d!1138853)))

(declare-fun t!309725 () Bool)

(declare-fun tb!220393 () Bool)

(assert (=> (and b!3835940 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309725) tb!220393))

(declare-fun b!3836283 () Bool)

(declare-fun e!2369250 () Bool)

(declare-fun tp!1161127 () Bool)

(assert (=> b!3836283 (= e!2369250 (and (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283))))) (value!198474 (_1!22978 (get!13436 lt!1331283)))))) tp!1161127))))

(declare-fun result!268630 () Bool)

(assert (=> tb!220393 (= result!268630 (and (inv!54660 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283))))) (value!198474 (_1!22978 (get!13436 lt!1331283))))) e!2369250))))

(assert (= tb!220393 b!3836283))

(declare-fun m!4390665 () Bool)

(assert (=> b!3836283 m!4390665))

(declare-fun m!4390667 () Bool)

(assert (=> tb!220393 m!4390667))

(assert (=> d!1138853 t!309725))

(declare-fun b_and!285343 () Bool)

(assert (= b_and!285309 (and (=> t!309725 result!268630) b_and!285343)))

(declare-fun t!309727 () Bool)

(declare-fun tb!220395 () Bool)

(assert (=> (and b!3835982 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309727) tb!220395))

(declare-fun result!268632 () Bool)

(assert (= result!268632 result!268630))

(assert (=> d!1138853 t!309727))

(declare-fun b_and!285345 () Bool)

(assert (= b_and!285317 (and (=> t!309727 result!268632) b_and!285345)))

(declare-fun t!309729 () Bool)

(declare-fun tb!220397 () Bool)

(assert (=> (and b!3835977 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309729) tb!220397))

(declare-fun result!268634 () Bool)

(assert (= result!268634 result!268630))

(assert (=> d!1138853 t!309729))

(declare-fun b_and!285347 () Bool)

(assert (= b_and!285313 (and (=> t!309729 result!268634) b_and!285347)))

(declare-fun t!309731 () Bool)

(declare-fun tb!220399 () Bool)

(assert (=> (and b!3835559 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309731) tb!220399))

(declare-fun result!268636 () Bool)

(assert (= result!268636 result!268630))

(assert (=> d!1138853 t!309731))

(declare-fun b_and!285349 () Bool)

(assert (= b_and!285305 (and (=> t!309731 result!268636) b_and!285349)))

(declare-fun t!309733 () Bool)

(declare-fun tb!220401 () Bool)

(assert (=> (and b!3835566 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309733) tb!220401))

(declare-fun result!268638 () Bool)

(assert (= result!268638 result!268630))

(assert (=> d!1138853 t!309733))

(declare-fun b_and!285351 () Bool)

(assert (= b_and!285303 (and (=> t!309733 result!268638) b_and!285351)))

(declare-fun tb!220403 () Bool)

(declare-fun t!309735 () Bool)

(assert (=> (and b!3835565 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309735) tb!220403))

(declare-fun result!268640 () Bool)

(assert (= result!268640 result!268630))

(assert (=> d!1138853 t!309735))

(declare-fun b_and!285353 () Bool)

(assert (= b_and!285301 (and (=> t!309735 result!268640) b_and!285353)))

(declare-fun m!4390677 () Bool)

(assert (=> d!1138853 m!4390677))

(declare-fun m!4390679 () Bool)

(assert (=> d!1138853 m!4390679))

(assert (=> b!3835905 d!1138853))

(assert (=> b!3835905 d!1138817))

(declare-fun d!1138861 () Bool)

(declare-fun lt!1331362 () Int)

(assert (=> d!1138861 (>= lt!1331362 0)))

(declare-fun e!2369253 () Int)

(assert (=> d!1138861 (= lt!1331362 e!2369253)))

(declare-fun c!668928 () Bool)

(assert (=> d!1138861 (= c!668928 ((_ is Nil!40512) (_1!22977 lt!1331285)))))

(assert (=> d!1138861 (= (size!30518 (_1!22977 lt!1331285)) lt!1331362)))

(declare-fun b!3836288 () Bool)

(assert (=> b!3836288 (= e!2369253 0)))

(declare-fun b!3836289 () Bool)

(assert (=> b!3836289 (= e!2369253 (+ 1 (size!30518 (t!309623 (_1!22977 lt!1331285)))))))

(assert (= (and d!1138861 c!668928) b!3836288))

(assert (= (and d!1138861 (not c!668928)) b!3836289))

(declare-fun m!4390681 () Bool)

(assert (=> b!3836289 m!4390681))

(assert (=> d!1138663 d!1138861))

(declare-fun b!3836290 () Bool)

(declare-fun res!1552752 () Bool)

(declare-fun e!2369255 () Bool)

(assert (=> b!3836290 (=> (not res!1552752) (not e!2369255))))

(declare-fun lt!1331366 () Option!8658)

(assert (=> b!3836290 (= res!1552752 (matchR!5328 (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331366)))) (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331366))))))))

(declare-fun b!3836291 () Bool)

(declare-fun res!1552750 () Bool)

(assert (=> b!3836291 (=> (not res!1552750) (not e!2369255))))

(assert (=> b!3836291 (= res!1552750 (= (value!198474 (_1!22978 (get!13436 lt!1331366))) (apply!9485 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331366)))) (seqFromList!4513 (originalCharacters!6840 (_1!22978 (get!13436 lt!1331366)))))))))

(declare-fun b!3836292 () Bool)

(assert (=> b!3836292 (= e!2369255 (contains!8220 rules!2768 (rule!9074 (_1!22978 (get!13436 lt!1331366)))))))

(declare-fun b!3836293 () Bool)

(declare-fun e!2369254 () Option!8658)

(declare-fun call!281884 () Option!8658)

(assert (=> b!3836293 (= e!2369254 call!281884)))

(declare-fun d!1138863 () Bool)

(declare-fun e!2369256 () Bool)

(assert (=> d!1138863 e!2369256))

(declare-fun res!1552755 () Bool)

(assert (=> d!1138863 (=> res!1552755 e!2369256)))

(assert (=> d!1138863 (= res!1552755 (isEmpty!23926 lt!1331366))))

(assert (=> d!1138863 (= lt!1331366 e!2369254)))

(declare-fun c!668929 () Bool)

(assert (=> d!1138863 (= c!668929 (and ((_ is Cons!40513) rules!2768) ((_ is Nil!40513) (t!309624 rules!2768))))))

(declare-fun lt!1331363 () Unit!58246)

(declare-fun lt!1331364 () Unit!58246)

(assert (=> d!1138863 (= lt!1331363 lt!1331364)))

(assert (=> d!1138863 (isPrefix!3339 suffix!1176 suffix!1176)))

(assert (=> d!1138863 (= lt!1331364 (lemmaIsPrefixRefl!2124 suffix!1176 suffix!1176))))

(assert (=> d!1138863 (rulesValidInductive!2202 thiss!20629 rules!2768)))

(assert (=> d!1138863 (= (maxPrefix!3133 thiss!20629 rules!2768 suffix!1176) lt!1331366)))

(declare-fun b!3836294 () Bool)

(declare-fun res!1552751 () Bool)

(assert (=> b!3836294 (=> (not res!1552751) (not e!2369255))))

(assert (=> b!3836294 (= res!1552751 (= (++!10237 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331366)))) (_2!22978 (get!13436 lt!1331366))) suffix!1176))))

(declare-fun b!3836295 () Bool)

(declare-fun lt!1331365 () Option!8658)

(declare-fun lt!1331367 () Option!8658)

(assert (=> b!3836295 (= e!2369254 (ite (and ((_ is None!8657) lt!1331365) ((_ is None!8657) lt!1331367)) None!8657 (ite ((_ is None!8657) lt!1331367) lt!1331365 (ite ((_ is None!8657) lt!1331365) lt!1331367 (ite (>= (size!30515 (_1!22978 (v!38947 lt!1331365))) (size!30515 (_1!22978 (v!38947 lt!1331367)))) lt!1331365 lt!1331367)))))))

(assert (=> b!3836295 (= lt!1331365 call!281884)))

(assert (=> b!3836295 (= lt!1331367 (maxPrefix!3133 thiss!20629 (t!309624 rules!2768) suffix!1176))))

(declare-fun bm!281879 () Bool)

(assert (=> bm!281879 (= call!281884 (maxPrefixOneRule!2229 thiss!20629 (h!45933 rules!2768) suffix!1176))))

(declare-fun b!3836296 () Bool)

(declare-fun res!1552754 () Bool)

(assert (=> b!3836296 (=> (not res!1552754) (not e!2369255))))

(assert (=> b!3836296 (= res!1552754 (= (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331366)))) (originalCharacters!6840 (_1!22978 (get!13436 lt!1331366)))))))

(declare-fun b!3836297 () Bool)

(declare-fun res!1552749 () Bool)

(assert (=> b!3836297 (=> (not res!1552749) (not e!2369255))))

(assert (=> b!3836297 (= res!1552749 (< (size!30516 (_2!22978 (get!13436 lt!1331366))) (size!30516 suffix!1176)))))

(declare-fun b!3836298 () Bool)

(assert (=> b!3836298 (= e!2369256 e!2369255)))

(declare-fun res!1552753 () Bool)

(assert (=> b!3836298 (=> (not res!1552753) (not e!2369255))))

(assert (=> b!3836298 (= res!1552753 (isDefined!6817 lt!1331366))))

(assert (= (and d!1138863 c!668929) b!3836293))

(assert (= (and d!1138863 (not c!668929)) b!3836295))

(assert (= (or b!3836293 b!3836295) bm!281879))

(assert (= (and d!1138863 (not res!1552755)) b!3836298))

(assert (= (and b!3836298 res!1552753) b!3836296))

(assert (= (and b!3836296 res!1552754) b!3836297))

(assert (= (and b!3836297 res!1552749) b!3836294))

(assert (= (and b!3836294 res!1552751) b!3836291))

(assert (= (and b!3836291 res!1552750) b!3836290))

(assert (= (and b!3836290 res!1552752) b!3836292))

(declare-fun m!4390685 () Bool)

(assert (=> b!3836290 m!4390685))

(declare-fun m!4390687 () Bool)

(assert (=> b!3836290 m!4390687))

(assert (=> b!3836290 m!4390687))

(declare-fun m!4390689 () Bool)

(assert (=> b!3836290 m!4390689))

(assert (=> b!3836290 m!4390689))

(declare-fun m!4390691 () Bool)

(assert (=> b!3836290 m!4390691))

(declare-fun m!4390693 () Bool)

(assert (=> d!1138863 m!4390693))

(declare-fun m!4390695 () Bool)

(assert (=> d!1138863 m!4390695))

(declare-fun m!4390697 () Bool)

(assert (=> d!1138863 m!4390697))

(assert (=> d!1138863 m!4390247))

(declare-fun m!4390699 () Bool)

(assert (=> bm!281879 m!4390699))

(assert (=> b!3836296 m!4390685))

(assert (=> b!3836296 m!4390687))

(assert (=> b!3836296 m!4390687))

(assert (=> b!3836296 m!4390689))

(assert (=> b!3836297 m!4390685))

(declare-fun m!4390701 () Bool)

(assert (=> b!3836297 m!4390701))

(assert (=> b!3836297 m!4389935))

(assert (=> b!3836294 m!4390685))

(assert (=> b!3836294 m!4390687))

(assert (=> b!3836294 m!4390687))

(assert (=> b!3836294 m!4390689))

(assert (=> b!3836294 m!4390689))

(declare-fun m!4390703 () Bool)

(assert (=> b!3836294 m!4390703))

(declare-fun m!4390705 () Bool)

(assert (=> b!3836295 m!4390705))

(assert (=> b!3836291 m!4390685))

(declare-fun m!4390707 () Bool)

(assert (=> b!3836291 m!4390707))

(assert (=> b!3836291 m!4390707))

(declare-fun m!4390709 () Bool)

(assert (=> b!3836291 m!4390709))

(assert (=> b!3836292 m!4390685))

(declare-fun m!4390711 () Bool)

(assert (=> b!3836292 m!4390711))

(declare-fun m!4390713 () Bool)

(assert (=> b!3836298 m!4390713))

(assert (=> d!1138663 d!1138863))

(declare-fun d!1138869 () Bool)

(declare-fun lt!1331368 () Int)

(assert (=> d!1138869 (>= lt!1331368 0)))

(declare-fun e!2369257 () Int)

(assert (=> d!1138869 (= lt!1331368 e!2369257)))

(declare-fun c!668930 () Bool)

(assert (=> d!1138869 (= c!668930 ((_ is Nil!40511) (t!309622 lt!1331184)))))

(assert (=> d!1138869 (= (size!30516 (t!309622 lt!1331184)) lt!1331368)))

(declare-fun b!3836299 () Bool)

(assert (=> b!3836299 (= e!2369257 0)))

(declare-fun b!3836300 () Bool)

(assert (=> b!3836300 (= e!2369257 (+ 1 (size!30516 (t!309622 (t!309622 lt!1331184)))))))

(assert (= (and d!1138869 c!668930) b!3836299))

(assert (= (and d!1138869 (not c!668930)) b!3836300))

(declare-fun m!4390715 () Bool)

(assert (=> b!3836300 m!4390715))

(assert (=> b!3835686 d!1138869))

(declare-fun b!3836303 () Bool)

(declare-fun e!2369261 () Bool)

(declare-fun e!2369262 () Bool)

(assert (=> b!3836303 (= e!2369261 e!2369262)))

(declare-fun res!1552756 () Bool)

(declare-fun lt!1331369 () tuple2!39686)

(assert (=> b!3836303 (= res!1552756 (< (size!30516 (_2!22977 lt!1331369)) (size!30516 (_2!22978 (v!38947 lt!1331193)))))))

(assert (=> b!3836303 (=> (not res!1552756) (not e!2369262))))

(declare-fun b!3836304 () Bool)

(assert (=> b!3836304 (= e!2369261 (= (_2!22977 lt!1331369) (_2!22978 (v!38947 lt!1331193))))))

(declare-fun b!3836305 () Bool)

(assert (=> b!3836305 (= e!2369262 (not (isEmpty!23924 (_1!22977 lt!1331369))))))

(declare-fun d!1138871 () Bool)

(assert (=> d!1138871 e!2369261))

(declare-fun c!668931 () Bool)

(assert (=> d!1138871 (= c!668931 (> (size!30518 (_1!22977 lt!1331369)) 0))))

(declare-fun e!2369260 () tuple2!39686)

(assert (=> d!1138871 (= lt!1331369 e!2369260)))

(declare-fun c!668932 () Bool)

(declare-fun lt!1331370 () Option!8658)

(assert (=> d!1138871 (= c!668932 ((_ is Some!8657) lt!1331370))))

(assert (=> d!1138871 (= lt!1331370 (maxPrefix!3133 thiss!20629 rules!2768 (_2!22978 (v!38947 lt!1331193))))))

(assert (=> d!1138871 (= (lexList!1597 thiss!20629 rules!2768 (_2!22978 (v!38947 lt!1331193))) lt!1331369)))

(declare-fun b!3836306 () Bool)

(declare-fun lt!1331371 () tuple2!39686)

(assert (=> b!3836306 (= e!2369260 (tuple2!39687 (Cons!40512 (_1!22978 (v!38947 lt!1331370)) (_1!22977 lt!1331371)) (_2!22977 lt!1331371)))))

(assert (=> b!3836306 (= lt!1331371 (lexList!1597 thiss!20629 rules!2768 (_2!22978 (v!38947 lt!1331370))))))

(declare-fun b!3836307 () Bool)

(assert (=> b!3836307 (= e!2369260 (tuple2!39687 Nil!40512 (_2!22978 (v!38947 lt!1331193))))))

(assert (= (and d!1138871 c!668932) b!3836306))

(assert (= (and d!1138871 (not c!668932)) b!3836307))

(assert (= (and d!1138871 c!668931) b!3836303))

(assert (= (and d!1138871 (not c!668931)) b!3836304))

(assert (= (and b!3836303 res!1552756) b!3836305))

(declare-fun m!4390719 () Bool)

(assert (=> b!3836303 m!4390719))

(declare-fun m!4390721 () Bool)

(assert (=> b!3836303 m!4390721))

(declare-fun m!4390723 () Bool)

(assert (=> b!3836305 m!4390723))

(declare-fun m!4390725 () Bool)

(assert (=> d!1138871 m!4390725))

(declare-fun m!4390727 () Bool)

(assert (=> d!1138871 m!4390727))

(declare-fun m!4390729 () Bool)

(assert (=> b!3836306 m!4390729))

(assert (=> b!3835584 d!1138871))

(declare-fun d!1138873 () Bool)

(declare-fun lt!1331375 () Bool)

(declare-fun content!6020 (List!40637) (InoxSet Rule!12280))

(assert (=> d!1138873 (= lt!1331375 (select (content!6020 rules!2768) (rule!9074 (_1!22978 (get!13436 lt!1331283)))))))

(declare-fun e!2369271 () Bool)

(assert (=> d!1138873 (= lt!1331375 e!2369271)))

(declare-fun res!1552763 () Bool)

(assert (=> d!1138873 (=> (not res!1552763) (not e!2369271))))

(assert (=> d!1138873 (= res!1552763 ((_ is Cons!40513) rules!2768))))

(assert (=> d!1138873 (= (contains!8220 rules!2768 (rule!9074 (_1!22978 (get!13436 lt!1331283)))) lt!1331375)))

(declare-fun b!3836316 () Bool)

(declare-fun e!2369270 () Bool)

(assert (=> b!3836316 (= e!2369271 e!2369270)))

(declare-fun res!1552764 () Bool)

(assert (=> b!3836316 (=> res!1552764 e!2369270)))

(assert (=> b!3836316 (= res!1552764 (= (h!45933 rules!2768) (rule!9074 (_1!22978 (get!13436 lt!1331283)))))))

(declare-fun b!3836317 () Bool)

(assert (=> b!3836317 (= e!2369270 (contains!8220 (t!309624 rules!2768) (rule!9074 (_1!22978 (get!13436 lt!1331283)))))))

(assert (= (and d!1138873 res!1552763) b!3836316))

(assert (= (and b!3836316 (not res!1552764)) b!3836317))

(declare-fun m!4390737 () Bool)

(assert (=> d!1138873 m!4390737))

(declare-fun m!4390743 () Bool)

(assert (=> d!1138873 m!4390743))

(declare-fun m!4390745 () Bool)

(assert (=> b!3836317 m!4390745))

(assert (=> b!3835903 d!1138873))

(assert (=> b!3835903 d!1138817))

(declare-fun d!1138881 () Bool)

(assert (=> d!1138881 (= (list!15092 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80)))) (list!15093 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80))))))))

(declare-fun bs!582501 () Bool)

(assert (= bs!582501 d!1138881))

(declare-fun m!4390747 () Bool)

(assert (=> bs!582501 m!4390747))

(assert (=> b!3835632 d!1138881))

(declare-fun b!3836491 () Bool)

(declare-fun e!2369358 () Bool)

(declare-fun lt!1331403 () Option!8658)

(assert (=> b!3836491 (= e!2369358 (= (size!30515 (_1!22978 (get!13436 lt!1331403))) (size!30516 (originalCharacters!6840 (_1!22978 (get!13436 lt!1331403))))))))

(declare-fun b!3836492 () Bool)

(declare-fun res!1552803 () Bool)

(assert (=> b!3836492 (=> (not res!1552803) (not e!2369358))))

(assert (=> b!3836492 (= res!1552803 (< (size!30516 (_2!22978 (get!13436 lt!1331403))) (size!30516 lt!1331184)))))

(declare-fun d!1138885 () Bool)

(declare-fun e!2369356 () Bool)

(assert (=> d!1138885 e!2369356))

(declare-fun res!1552800 () Bool)

(assert (=> d!1138885 (=> res!1552800 e!2369356)))

(assert (=> d!1138885 (= res!1552800 (isEmpty!23926 lt!1331403))))

(declare-fun e!2369359 () Option!8658)

(assert (=> d!1138885 (= lt!1331403 e!2369359)))

(declare-fun c!668949 () Bool)

(declare-datatypes ((tuple2!39690 0))(
  ( (tuple2!39691 (_1!22979 List!40635) (_2!22979 List!40635)) )
))
(declare-fun lt!1331404 () tuple2!39690)

(assert (=> d!1138885 (= c!668949 (isEmpty!23922 (_1!22979 lt!1331404)))))

(declare-fun findLongestMatch!1062 (Regex!11145 List!40635) tuple2!39690)

(assert (=> d!1138885 (= lt!1331404 (findLongestMatch!1062 (regex!6240 (h!45933 rules!2768)) lt!1331184))))

(assert (=> d!1138885 (ruleValid!2192 thiss!20629 (h!45933 rules!2768))))

(assert (=> d!1138885 (= (maxPrefixOneRule!2229 thiss!20629 (h!45933 rules!2768) lt!1331184) lt!1331403)))

(declare-fun b!3836493 () Bool)

(declare-fun e!2369357 () Bool)

(declare-fun findLongestMatchInner!1149 (Regex!11145 List!40635 Int List!40635 List!40635 Int) tuple2!39690)

(assert (=> b!3836493 (= e!2369357 (matchR!5328 (regex!6240 (h!45933 rules!2768)) (_1!22979 (findLongestMatchInner!1149 (regex!6240 (h!45933 rules!2768)) Nil!40511 (size!30516 Nil!40511) lt!1331184 lt!1331184 (size!30516 lt!1331184)))))))

(declare-fun b!3836494 () Bool)

(assert (=> b!3836494 (= e!2369359 None!8657)))

(declare-fun b!3836495 () Bool)

(declare-fun res!1552805 () Bool)

(assert (=> b!3836495 (=> (not res!1552805) (not e!2369358))))

(assert (=> b!3836495 (= res!1552805 (= (value!198474 (_1!22978 (get!13436 lt!1331403))) (apply!9485 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331403)))) (seqFromList!4513 (originalCharacters!6840 (_1!22978 (get!13436 lt!1331403)))))))))

(declare-fun b!3836496 () Bool)

(declare-fun size!30519 (BalanceConc!24496) Int)

(assert (=> b!3836496 (= e!2369359 (Some!8657 (tuple2!39689 (Token!11619 (apply!9485 (transformation!6240 (h!45933 rules!2768)) (seqFromList!4513 (_1!22979 lt!1331404))) (h!45933 rules!2768) (size!30519 (seqFromList!4513 (_1!22979 lt!1331404))) (_1!22979 lt!1331404)) (_2!22979 lt!1331404))))))

(declare-fun lt!1331400 () Unit!58246)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1122 (Regex!11145 List!40635) Unit!58246)

(assert (=> b!3836496 (= lt!1331400 (longestMatchIsAcceptedByMatchOrIsEmpty!1122 (regex!6240 (h!45933 rules!2768)) lt!1331184))))

(declare-fun res!1552806 () Bool)

(assert (=> b!3836496 (= res!1552806 (isEmpty!23922 (_1!22979 (findLongestMatchInner!1149 (regex!6240 (h!45933 rules!2768)) Nil!40511 (size!30516 Nil!40511) lt!1331184 lt!1331184 (size!30516 lt!1331184)))))))

(assert (=> b!3836496 (=> res!1552806 e!2369357)))

(assert (=> b!3836496 e!2369357))

(declare-fun lt!1331401 () Unit!58246)

(assert (=> b!3836496 (= lt!1331401 lt!1331400)))

(declare-fun lt!1331402 () Unit!58246)

(declare-fun lemmaSemiInverse!1653 (TokenValueInjection!12368 BalanceConc!24496) Unit!58246)

(assert (=> b!3836496 (= lt!1331402 (lemmaSemiInverse!1653 (transformation!6240 (h!45933 rules!2768)) (seqFromList!4513 (_1!22979 lt!1331404))))))

(declare-fun b!3836497 () Bool)

(declare-fun res!1552802 () Bool)

(assert (=> b!3836497 (=> (not res!1552802) (not e!2369358))))

(assert (=> b!3836497 (= res!1552802 (= (rule!9074 (_1!22978 (get!13436 lt!1331403))) (h!45933 rules!2768)))))

(declare-fun b!3836498 () Bool)

(assert (=> b!3836498 (= e!2369356 e!2369358)))

(declare-fun res!1552801 () Bool)

(assert (=> b!3836498 (=> (not res!1552801) (not e!2369358))))

(assert (=> b!3836498 (= res!1552801 (matchR!5328 (regex!6240 (h!45933 rules!2768)) (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331403))))))))

(declare-fun b!3836499 () Bool)

(declare-fun res!1552804 () Bool)

(assert (=> b!3836499 (=> (not res!1552804) (not e!2369358))))

(assert (=> b!3836499 (= res!1552804 (= (++!10237 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331403)))) (_2!22978 (get!13436 lt!1331403))) lt!1331184))))

(assert (= (and d!1138885 c!668949) b!3836494))

(assert (= (and d!1138885 (not c!668949)) b!3836496))

(assert (= (and b!3836496 (not res!1552806)) b!3836493))

(assert (= (and d!1138885 (not res!1552800)) b!3836498))

(assert (= (and b!3836498 res!1552801) b!3836499))

(assert (= (and b!3836499 res!1552804) b!3836492))

(assert (= (and b!3836492 res!1552803) b!3836497))

(assert (= (and b!3836497 res!1552802) b!3836495))

(assert (= (and b!3836495 res!1552805) b!3836491))

(declare-fun m!4390907 () Bool)

(assert (=> b!3836495 m!4390907))

(declare-fun m!4390909 () Bool)

(assert (=> b!3836495 m!4390909))

(assert (=> b!3836495 m!4390909))

(declare-fun m!4390911 () Bool)

(assert (=> b!3836495 m!4390911))

(declare-fun m!4390913 () Bool)

(assert (=> b!3836496 m!4390913))

(assert (=> b!3836496 m!4389879))

(declare-fun m!4390915 () Bool)

(assert (=> b!3836496 m!4390915))

(declare-fun m!4390917 () Bool)

(assert (=> b!3836496 m!4390917))

(declare-fun m!4390919 () Bool)

(assert (=> b!3836496 m!4390919))

(declare-fun m!4390921 () Bool)

(assert (=> b!3836496 m!4390921))

(declare-fun m!4390923 () Bool)

(assert (=> b!3836496 m!4390923))

(assert (=> b!3836496 m!4390921))

(declare-fun m!4390925 () Bool)

(assert (=> b!3836496 m!4390925))

(assert (=> b!3836496 m!4390921))

(assert (=> b!3836496 m!4389879))

(assert (=> b!3836496 m!4390921))

(declare-fun m!4390927 () Bool)

(assert (=> b!3836496 m!4390927))

(assert (=> b!3836496 m!4390913))

(assert (=> b!3836499 m!4390907))

(declare-fun m!4390929 () Bool)

(assert (=> b!3836499 m!4390929))

(assert (=> b!3836499 m!4390929))

(declare-fun m!4390931 () Bool)

(assert (=> b!3836499 m!4390931))

(assert (=> b!3836499 m!4390931))

(declare-fun m!4390933 () Bool)

(assert (=> b!3836499 m!4390933))

(assert (=> b!3836491 m!4390907))

(declare-fun m!4390935 () Bool)

(assert (=> b!3836491 m!4390935))

(assert (=> b!3836498 m!4390907))

(assert (=> b!3836498 m!4390929))

(assert (=> b!3836498 m!4390929))

(assert (=> b!3836498 m!4390931))

(assert (=> b!3836498 m!4390931))

(declare-fun m!4390937 () Bool)

(assert (=> b!3836498 m!4390937))

(assert (=> b!3836497 m!4390907))

(assert (=> b!3836493 m!4390913))

(assert (=> b!3836493 m!4389879))

(assert (=> b!3836493 m!4390913))

(assert (=> b!3836493 m!4389879))

(assert (=> b!3836493 m!4390915))

(declare-fun m!4390939 () Bool)

(assert (=> b!3836493 m!4390939))

(declare-fun m!4390941 () Bool)

(assert (=> d!1138885 m!4390941))

(declare-fun m!4390943 () Bool)

(assert (=> d!1138885 m!4390943))

(declare-fun m!4390945 () Bool)

(assert (=> d!1138885 m!4390945))

(declare-fun m!4390947 () Bool)

(assert (=> d!1138885 m!4390947))

(assert (=> b!3836492 m!4390907))

(declare-fun m!4390949 () Bool)

(assert (=> b!3836492 m!4390949))

(assert (=> b!3836492 m!4389879))

(assert (=> bm!281865 d!1138885))

(declare-fun d!1138945 () Bool)

(declare-fun c!668952 () Bool)

(assert (=> d!1138945 (= c!668952 ((_ is Node!12451) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72))))))))

(declare-fun e!2369364 () Bool)

(assert (=> d!1138945 (= (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72))))) e!2369364)))

(declare-fun b!3836506 () Bool)

(declare-fun inv!54665 (Conc!12451) Bool)

(assert (=> b!3836506 (= e!2369364 (inv!54665 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72))))))))

(declare-fun b!3836507 () Bool)

(declare-fun e!2369365 () Bool)

(assert (=> b!3836507 (= e!2369364 e!2369365)))

(declare-fun res!1552809 () Bool)

(assert (=> b!3836507 (= res!1552809 (not ((_ is Leaf!19278) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72)))))))))

(assert (=> b!3836507 (=> res!1552809 e!2369365)))

(declare-fun b!3836508 () Bool)

(declare-fun inv!54666 (Conc!12451) Bool)

(assert (=> b!3836508 (= e!2369365 (inv!54666 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72))))))))

(assert (= (and d!1138945 c!668952) b!3836506))

(assert (= (and d!1138945 (not c!668952)) b!3836507))

(assert (= (and b!3836507 (not res!1552809)) b!3836508))

(declare-fun m!4390951 () Bool)

(assert (=> b!3836506 m!4390951))

(declare-fun m!4390953 () Bool)

(assert (=> b!3836508 m!4390953))

(assert (=> b!3835917 d!1138945))

(declare-fun d!1138947 () Bool)

(declare-fun c!668953 () Bool)

(assert (=> d!1138947 (= c!668953 ((_ is Nil!40511) lt!1331200))))

(declare-fun e!2369366 () (InoxSet C!22476))

(assert (=> d!1138947 (= (content!6018 lt!1331200) e!2369366)))

(declare-fun b!3836509 () Bool)

(assert (=> b!3836509 (= e!2369366 ((as const (Array C!22476 Bool)) false))))

(declare-fun b!3836510 () Bool)

(assert (=> b!3836510 (= e!2369366 ((_ map or) (store ((as const (Array C!22476 Bool)) false) (h!45931 lt!1331200) true) (content!6018 (t!309622 lt!1331200))))))

(assert (= (and d!1138947 c!668953) b!3836509))

(assert (= (and d!1138947 (not c!668953)) b!3836510))

(declare-fun m!4390955 () Bool)

(assert (=> b!3836510 m!4390955))

(declare-fun m!4390957 () Bool)

(assert (=> b!3836510 m!4390957))

(assert (=> d!1138557 d!1138947))

(declare-fun d!1138949 () Bool)

(declare-fun c!668954 () Bool)

(assert (=> d!1138949 (= c!668954 ((_ is Nil!40511) prefix!426))))

(declare-fun e!2369367 () (InoxSet C!22476))

(assert (=> d!1138949 (= (content!6018 prefix!426) e!2369367)))

(declare-fun b!3836511 () Bool)

(assert (=> b!3836511 (= e!2369367 ((as const (Array C!22476 Bool)) false))))

(declare-fun b!3836512 () Bool)

(assert (=> b!3836512 (= e!2369367 ((_ map or) (store ((as const (Array C!22476 Bool)) false) (h!45931 prefix!426) true) (content!6018 (t!309622 prefix!426))))))

(assert (= (and d!1138949 c!668954) b!3836511))

(assert (= (and d!1138949 (not c!668954)) b!3836512))

(declare-fun m!4390959 () Bool)

(assert (=> b!3836512 m!4390959))

(declare-fun m!4390961 () Bool)

(assert (=> b!3836512 m!4390961))

(assert (=> d!1138557 d!1138949))

(declare-fun d!1138951 () Bool)

(declare-fun c!668955 () Bool)

(assert (=> d!1138951 (= c!668955 ((_ is Nil!40511) suffix!1176))))

(declare-fun e!2369368 () (InoxSet C!22476))

(assert (=> d!1138951 (= (content!6018 suffix!1176) e!2369368)))

(declare-fun b!3836513 () Bool)

(assert (=> b!3836513 (= e!2369368 ((as const (Array C!22476 Bool)) false))))

(declare-fun b!3836514 () Bool)

(assert (=> b!3836514 (= e!2369368 ((_ map or) (store ((as const (Array C!22476 Bool)) false) (h!45931 suffix!1176) true) (content!6018 (t!309622 suffix!1176))))))

(assert (= (and d!1138951 c!668955) b!3836513))

(assert (= (and d!1138951 (not c!668955)) b!3836514))

(declare-fun m!4390963 () Bool)

(assert (=> b!3836514 m!4390963))

(declare-fun m!4390965 () Bool)

(assert (=> b!3836514 m!4390965))

(assert (=> d!1138557 d!1138951))

(declare-fun b!3836517 () Bool)

(declare-fun e!2369370 () Bool)

(assert (=> b!3836517 (= e!2369370 (isPrefix!3339 (tail!5799 (tail!5799 lt!1331183)) (tail!5799 (tail!5799 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))))))))

(declare-fun d!1138953 () Bool)

(declare-fun e!2369369 () Bool)

(assert (=> d!1138953 e!2369369))

(declare-fun res!1552812 () Bool)

(assert (=> d!1138953 (=> res!1552812 e!2369369)))

(declare-fun lt!1331405 () Bool)

(assert (=> d!1138953 (= res!1552812 (not lt!1331405))))

(declare-fun e!2369371 () Bool)

(assert (=> d!1138953 (= lt!1331405 e!2369371)))

(declare-fun res!1552813 () Bool)

(assert (=> d!1138953 (=> res!1552813 e!2369371)))

(assert (=> d!1138953 (= res!1552813 ((_ is Nil!40511) (tail!5799 lt!1331183)))))

(assert (=> d!1138953 (= (isPrefix!3339 (tail!5799 lt!1331183) (tail!5799 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185))))) lt!1331405)))

(declare-fun b!3836518 () Bool)

(assert (=> b!3836518 (= e!2369369 (>= (size!30516 (tail!5799 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185))))) (size!30516 (tail!5799 lt!1331183))))))

(declare-fun b!3836515 () Bool)

(assert (=> b!3836515 (= e!2369371 e!2369370)))

(declare-fun res!1552811 () Bool)

(assert (=> b!3836515 (=> (not res!1552811) (not e!2369370))))

(assert (=> b!3836515 (= res!1552811 (not ((_ is Nil!40511) (tail!5799 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))))))))

(declare-fun b!3836516 () Bool)

(declare-fun res!1552810 () Bool)

(assert (=> b!3836516 (=> (not res!1552810) (not e!2369370))))

(assert (=> b!3836516 (= res!1552810 (= (head!8072 (tail!5799 lt!1331183)) (head!8072 (tail!5799 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))))))))

(assert (= (and d!1138953 (not res!1552813)) b!3836515))

(assert (= (and b!3836515 res!1552811) b!3836516))

(assert (= (and b!3836516 res!1552810) b!3836517))

(assert (= (and d!1138953 (not res!1552812)) b!3836518))

(assert (=> b!3836517 m!4389989))

(declare-fun m!4390967 () Bool)

(assert (=> b!3836517 m!4390967))

(assert (=> b!3836517 m!4390119))

(declare-fun m!4390969 () Bool)

(assert (=> b!3836517 m!4390969))

(assert (=> b!3836517 m!4390967))

(assert (=> b!3836517 m!4390969))

(declare-fun m!4390971 () Bool)

(assert (=> b!3836517 m!4390971))

(assert (=> b!3836518 m!4390119))

(declare-fun m!4390973 () Bool)

(assert (=> b!3836518 m!4390973))

(assert (=> b!3836518 m!4389989))

(declare-fun m!4390975 () Bool)

(assert (=> b!3836518 m!4390975))

(assert (=> b!3836516 m!4389989))

(declare-fun m!4390977 () Bool)

(assert (=> b!3836516 m!4390977))

(assert (=> b!3836516 m!4390119))

(declare-fun m!4390979 () Bool)

(assert (=> b!3836516 m!4390979))

(assert (=> b!3835762 d!1138953))

(declare-fun d!1138955 () Bool)

(assert (=> d!1138955 (= (tail!5799 lt!1331183) (t!309622 lt!1331183))))

(assert (=> b!3835762 d!1138955))

(declare-fun d!1138957 () Bool)

(assert (=> d!1138957 (= (tail!5799 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))) (t!309622 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))))))

(assert (=> b!3835762 d!1138957))

(declare-fun b!3836537 () Bool)

(declare-fun e!2369391 () Bool)

(declare-fun e!2369389 () Bool)

(assert (=> b!3836537 (= e!2369391 e!2369389)))

(declare-fun res!1552825 () Bool)

(assert (=> b!3836537 (= res!1552825 (not (nullable!3877 (reg!11474 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))))))

(assert (=> b!3836537 (=> (not res!1552825) (not e!2369389))))

(declare-fun b!3836538 () Bool)

(declare-fun e!2369390 () Bool)

(declare-fun e!2369392 () Bool)

(assert (=> b!3836538 (= e!2369390 e!2369392)))

(declare-fun res!1552828 () Bool)

(assert (=> b!3836538 (=> (not res!1552828) (not e!2369392))))

(declare-fun call!281894 () Bool)

(assert (=> b!3836538 (= res!1552828 call!281894)))

(declare-fun d!1138959 () Bool)

(declare-fun res!1552824 () Bool)

(declare-fun e!2369387 () Bool)

(assert (=> d!1138959 (=> res!1552824 e!2369387)))

(assert (=> d!1138959 (= res!1552824 ((_ is ElementMatch!11145) (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))))

(assert (=> d!1138959 (= (validRegex!5076 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) e!2369387)))

(declare-fun c!668960 () Bool)

(declare-fun c!668961 () Bool)

(declare-fun bm!281887 () Bool)

(declare-fun call!281893 () Bool)

(assert (=> bm!281887 (= call!281893 (validRegex!5076 (ite c!668961 (reg!11474 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (ite c!668960 (regOne!22803 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (regTwo!22802 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))))))))

(declare-fun b!3836539 () Bool)

(declare-fun e!2369386 () Bool)

(assert (=> b!3836539 (= e!2369391 e!2369386)))

(assert (=> b!3836539 (= c!668960 ((_ is Union!11145) (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))))

(declare-fun b!3836540 () Bool)

(assert (=> b!3836540 (= e!2369389 call!281893)))

(declare-fun b!3836541 () Bool)

(declare-fun res!1552827 () Bool)

(assert (=> b!3836541 (=> res!1552827 e!2369390)))

(assert (=> b!3836541 (= res!1552827 (not ((_ is Concat!17616) (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))))))

(assert (=> b!3836541 (= e!2369386 e!2369390)))

(declare-fun b!3836542 () Bool)

(assert (=> b!3836542 (= e!2369387 e!2369391)))

(assert (=> b!3836542 (= c!668961 ((_ is Star!11145) (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))))

(declare-fun bm!281888 () Bool)

(declare-fun call!281892 () Bool)

(assert (=> bm!281888 (= call!281892 call!281893)))

(declare-fun bm!281889 () Bool)

(assert (=> bm!281889 (= call!281894 (validRegex!5076 (ite c!668960 (regTwo!22803 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (regOne!22802 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))))))

(declare-fun b!3836543 () Bool)

(declare-fun res!1552826 () Bool)

(declare-fun e!2369388 () Bool)

(assert (=> b!3836543 (=> (not res!1552826) (not e!2369388))))

(assert (=> b!3836543 (= res!1552826 call!281892)))

(assert (=> b!3836543 (= e!2369386 e!2369388)))

(declare-fun b!3836544 () Bool)

(assert (=> b!3836544 (= e!2369392 call!281892)))

(declare-fun b!3836545 () Bool)

(assert (=> b!3836545 (= e!2369388 call!281894)))

(assert (= (and d!1138959 (not res!1552824)) b!3836542))

(assert (= (and b!3836542 c!668961) b!3836537))

(assert (= (and b!3836542 (not c!668961)) b!3836539))

(assert (= (and b!3836537 res!1552825) b!3836540))

(assert (= (and b!3836539 c!668960) b!3836543))

(assert (= (and b!3836539 (not c!668960)) b!3836541))

(assert (= (and b!3836543 res!1552826) b!3836545))

(assert (= (and b!3836541 (not res!1552827)) b!3836538))

(assert (= (and b!3836538 res!1552828) b!3836544))

(assert (= (or b!3836545 b!3836538) bm!281889))

(assert (= (or b!3836543 b!3836544) bm!281888))

(assert (= (or b!3836540 bm!281888) bm!281887))

(declare-fun m!4390981 () Bool)

(assert (=> b!3836537 m!4390981))

(declare-fun m!4390983 () Bool)

(assert (=> bm!281887 m!4390983))

(declare-fun m!4390985 () Bool)

(assert (=> bm!281889 m!4390985))

(assert (=> d!1138591 d!1138959))

(declare-fun d!1138961 () Bool)

(declare-fun c!668964 () Bool)

(assert (=> d!1138961 (= c!668964 ((_ is Nil!40512) lt!1331197))))

(declare-fun e!2369395 () (InoxSet Token!11618))

(assert (=> d!1138961 (= (content!6017 lt!1331197) e!2369395)))

(declare-fun b!3836550 () Bool)

(assert (=> b!3836550 (= e!2369395 ((as const (Array Token!11618 Bool)) false))))

(declare-fun b!3836551 () Bool)

(assert (=> b!3836551 (= e!2369395 ((_ map or) (store ((as const (Array Token!11618 Bool)) false) (h!45932 lt!1331197) true) (content!6017 (t!309623 lt!1331197))))))

(assert (= (and d!1138961 c!668964) b!3836550))

(assert (= (and d!1138961 (not c!668964)) b!3836551))

(declare-fun m!4390987 () Bool)

(assert (=> b!3836551 m!4390987))

(declare-fun m!4390989 () Bool)

(assert (=> b!3836551 m!4390989))

(assert (=> d!1138555 d!1138961))

(declare-fun d!1138963 () Bool)

(declare-fun c!668965 () Bool)

(assert (=> d!1138963 (= c!668965 ((_ is Nil!40512) prefixTokens!80))))

(declare-fun e!2369396 () (InoxSet Token!11618))

(assert (=> d!1138963 (= (content!6017 prefixTokens!80) e!2369396)))

(declare-fun b!3836552 () Bool)

(assert (=> b!3836552 (= e!2369396 ((as const (Array Token!11618 Bool)) false))))

(declare-fun b!3836553 () Bool)

(assert (=> b!3836553 (= e!2369396 ((_ map or) (store ((as const (Array Token!11618 Bool)) false) (h!45932 prefixTokens!80) true) (content!6017 (t!309623 prefixTokens!80))))))

(assert (= (and d!1138963 c!668965) b!3836552))

(assert (= (and d!1138963 (not c!668965)) b!3836553))

(declare-fun m!4390991 () Bool)

(assert (=> b!3836553 m!4390991))

(declare-fun m!4390993 () Bool)

(assert (=> b!3836553 m!4390993))

(assert (=> d!1138555 d!1138963))

(declare-fun d!1138965 () Bool)

(declare-fun c!668966 () Bool)

(assert (=> d!1138965 (= c!668966 ((_ is Nil!40512) suffixTokens!72))))

(declare-fun e!2369397 () (InoxSet Token!11618))

(assert (=> d!1138965 (= (content!6017 suffixTokens!72) e!2369397)))

(declare-fun b!3836554 () Bool)

(assert (=> b!3836554 (= e!2369397 ((as const (Array Token!11618 Bool)) false))))

(declare-fun b!3836555 () Bool)

(assert (=> b!3836555 (= e!2369397 ((_ map or) (store ((as const (Array Token!11618 Bool)) false) (h!45932 suffixTokens!72) true) (content!6017 (t!309623 suffixTokens!72))))))

(assert (= (and d!1138965 c!668966) b!3836554))

(assert (= (and d!1138965 (not c!668966)) b!3836555))

(declare-fun m!4390995 () Bool)

(assert (=> b!3836555 m!4390995))

(declare-fun m!4390997 () Bool)

(assert (=> b!3836555 m!4390997))

(assert (=> d!1138555 d!1138965))

(declare-fun b!3836566 () Bool)

(declare-fun e!2369403 () List!40635)

(declare-fun list!15096 (IArray!24907) List!40635)

(assert (=> b!3836566 (= e!2369403 (list!15096 (xs!15757 (c!668785 (charsOf!4068 (_1!22978 (v!38947 lt!1331185)))))))))

(declare-fun b!3836567 () Bool)

(assert (=> b!3836567 (= e!2369403 (++!10237 (list!15093 (left!31333 (c!668785 (charsOf!4068 (_1!22978 (v!38947 lt!1331185)))))) (list!15093 (right!31663 (c!668785 (charsOf!4068 (_1!22978 (v!38947 lt!1331185))))))))))

(declare-fun b!3836564 () Bool)

(declare-fun e!2369402 () List!40635)

(assert (=> b!3836564 (= e!2369402 Nil!40511)))

(declare-fun d!1138967 () Bool)

(declare-fun c!668971 () Bool)

(assert (=> d!1138967 (= c!668971 ((_ is Empty!12451) (c!668785 (charsOf!4068 (_1!22978 (v!38947 lt!1331185))))))))

(assert (=> d!1138967 (= (list!15093 (c!668785 (charsOf!4068 (_1!22978 (v!38947 lt!1331185))))) e!2369402)))

(declare-fun b!3836565 () Bool)

(assert (=> b!3836565 (= e!2369402 e!2369403)))

(declare-fun c!668972 () Bool)

(assert (=> b!3836565 (= c!668972 ((_ is Leaf!19278) (c!668785 (charsOf!4068 (_1!22978 (v!38947 lt!1331185))))))))

(assert (= (and d!1138967 c!668971) b!3836564))

(assert (= (and d!1138967 (not c!668971)) b!3836565))

(assert (= (and b!3836565 c!668972) b!3836566))

(assert (= (and b!3836565 (not c!668972)) b!3836567))

(declare-fun m!4390999 () Bool)

(assert (=> b!3836566 m!4390999))

(declare-fun m!4391001 () Bool)

(assert (=> b!3836567 m!4391001))

(declare-fun m!4391003 () Bool)

(assert (=> b!3836567 m!4391003))

(assert (=> b!3836567 m!4391001))

(assert (=> b!3836567 m!4391003))

(declare-fun m!4391005 () Bool)

(assert (=> b!3836567 m!4391005))

(assert (=> d!1138579 d!1138967))

(declare-fun d!1138969 () Bool)

(declare-fun lt!1331406 () Int)

(assert (=> d!1138969 (>= lt!1331406 0)))

(declare-fun e!2369404 () Int)

(assert (=> d!1138969 (= lt!1331406 e!2369404)))

(declare-fun c!668973 () Bool)

(assert (=> d!1138969 (= c!668973 ((_ is Nil!40511) lt!1331253))))

(assert (=> d!1138969 (= (size!30516 lt!1331253) lt!1331406)))

(declare-fun b!3836568 () Bool)

(assert (=> b!3836568 (= e!2369404 0)))

(declare-fun b!3836569 () Bool)

(assert (=> b!3836569 (= e!2369404 (+ 1 (size!30516 (t!309622 lt!1331253))))))

(assert (= (and d!1138969 c!668973) b!3836568))

(assert (= (and d!1138969 (not c!668973)) b!3836569))

(declare-fun m!4391007 () Bool)

(assert (=> b!3836569 m!4391007))

(assert (=> b!3835756 d!1138969))

(assert (=> b!3835756 d!1138577))

(declare-fun d!1138971 () Bool)

(declare-fun lt!1331407 () Int)

(assert (=> d!1138971 (>= lt!1331407 0)))

(declare-fun e!2369405 () Int)

(assert (=> d!1138971 (= lt!1331407 e!2369405)))

(declare-fun c!668974 () Bool)

(assert (=> d!1138971 (= c!668974 ((_ is Nil!40511) (_2!22978 (v!38947 lt!1331185))))))

(assert (=> d!1138971 (= (size!30516 (_2!22978 (v!38947 lt!1331185))) lt!1331407)))

(declare-fun b!3836570 () Bool)

(assert (=> b!3836570 (= e!2369405 0)))

(declare-fun b!3836571 () Bool)

(assert (=> b!3836571 (= e!2369405 (+ 1 (size!30516 (t!309622 (_2!22978 (v!38947 lt!1331185))))))))

(assert (= (and d!1138971 c!668974) b!3836570))

(assert (= (and d!1138971 (not c!668974)) b!3836571))

(declare-fun m!4391009 () Bool)

(assert (=> b!3836571 m!4391009))

(assert (=> b!3835756 d!1138971))

(declare-fun b!3836572 () Bool)

(declare-fun e!2369408 () Bool)

(declare-fun e!2369406 () Bool)

(assert (=> b!3836572 (= e!2369408 e!2369406)))

(declare-fun c!668975 () Bool)

(assert (=> b!3836572 (= c!668975 ((_ is IntegerValue!19411) (value!198474 (h!45932 (t!309623 prefixTokens!80)))))))

(declare-fun b!3836573 () Bool)

(declare-fun e!2369407 () Bool)

(assert (=> b!3836573 (= e!2369407 (inv!15 (value!198474 (h!45932 (t!309623 prefixTokens!80)))))))

(declare-fun b!3836574 () Bool)

(assert (=> b!3836574 (= e!2369406 (inv!17 (value!198474 (h!45932 (t!309623 prefixTokens!80)))))))

(declare-fun b!3836575 () Bool)

(declare-fun res!1552829 () Bool)

(assert (=> b!3836575 (=> res!1552829 e!2369407)))

(assert (=> b!3836575 (= res!1552829 (not ((_ is IntegerValue!19412) (value!198474 (h!45932 (t!309623 prefixTokens!80))))))))

(assert (=> b!3836575 (= e!2369406 e!2369407)))

(declare-fun d!1138973 () Bool)

(declare-fun c!668976 () Bool)

(assert (=> d!1138973 (= c!668976 ((_ is IntegerValue!19410) (value!198474 (h!45932 (t!309623 prefixTokens!80)))))))

(assert (=> d!1138973 (= (inv!21 (value!198474 (h!45932 (t!309623 prefixTokens!80)))) e!2369408)))

(declare-fun b!3836576 () Bool)

(assert (=> b!3836576 (= e!2369408 (inv!16 (value!198474 (h!45932 (t!309623 prefixTokens!80)))))))

(assert (= (and d!1138973 c!668976) b!3836576))

(assert (= (and d!1138973 (not c!668976)) b!3836572))

(assert (= (and b!3836572 c!668975) b!3836574))

(assert (= (and b!3836572 (not c!668975)) b!3836575))

(assert (= (and b!3836575 (not res!1552829)) b!3836573))

(declare-fun m!4391011 () Bool)

(assert (=> b!3836573 m!4391011))

(declare-fun m!4391013 () Bool)

(assert (=> b!3836574 m!4391013))

(declare-fun m!4391015 () Bool)

(assert (=> b!3836576 m!4391015))

(assert (=> b!3835938 d!1138973))

(declare-fun b!3836605 () Bool)

(declare-fun e!2369426 () Bool)

(declare-fun e!2369425 () Bool)

(assert (=> b!3836605 (= e!2369426 e!2369425)))

(declare-fun res!1552852 () Bool)

(assert (=> b!3836605 (=> (not res!1552852) (not e!2369425))))

(declare-fun lt!1331410 () Bool)

(assert (=> b!3836605 (= res!1552852 (not lt!1331410))))

(declare-fun b!3836606 () Bool)

(declare-fun res!1552853 () Bool)

(declare-fun e!2369429 () Bool)

(assert (=> b!3836606 (=> res!1552853 e!2369429)))

(assert (=> b!3836606 (= res!1552853 (not (isEmpty!23922 (tail!5799 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))))))))

(declare-fun b!3836607 () Bool)

(assert (=> b!3836607 (= e!2369425 e!2369429)))

(declare-fun res!1552846 () Bool)

(assert (=> b!3836607 (=> res!1552846 e!2369429)))

(declare-fun call!281897 () Bool)

(assert (=> b!3836607 (= res!1552846 call!281897)))

(declare-fun b!3836608 () Bool)

(declare-fun res!1552851 () Bool)

(declare-fun e!2369423 () Bool)

(assert (=> b!3836608 (=> (not res!1552851) (not e!2369423))))

(assert (=> b!3836608 (= res!1552851 (isEmpty!23922 (tail!5799 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283)))))))))

(declare-fun b!3836609 () Bool)

(declare-fun e!2369424 () Bool)

(declare-fun e!2369427 () Bool)

(assert (=> b!3836609 (= e!2369424 e!2369427)))

(declare-fun c!668985 () Bool)

(assert (=> b!3836609 (= c!668985 ((_ is EmptyLang!11145) (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283))))))))

(declare-fun d!1138975 () Bool)

(assert (=> d!1138975 e!2369424))

(declare-fun c!668984 () Bool)

(assert (=> d!1138975 (= c!668984 ((_ is EmptyExpr!11145) (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283))))))))

(declare-fun e!2369428 () Bool)

(assert (=> d!1138975 (= lt!1331410 e!2369428)))

(declare-fun c!668983 () Bool)

(assert (=> d!1138975 (= c!668983 (isEmpty!23922 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))))))

(assert (=> d!1138975 (validRegex!5076 (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))))

(assert (=> d!1138975 (= (matchR!5328 (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))) (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))) lt!1331410)))

(declare-fun b!3836610 () Bool)

(assert (=> b!3836610 (= e!2369423 (= (head!8072 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))) (c!668784 (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))))))

(declare-fun b!3836611 () Bool)

(assert (=> b!3836611 (= e!2369429 (not (= (head!8072 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))) (c!668784 (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283))))))))))

(declare-fun b!3836612 () Bool)

(assert (=> b!3836612 (= e!2369427 (not lt!1331410))))

(declare-fun b!3836613 () Bool)

(declare-fun res!1552847 () Bool)

(assert (=> b!3836613 (=> res!1552847 e!2369426)))

(assert (=> b!3836613 (= res!1552847 e!2369423)))

(declare-fun res!1552850 () Bool)

(assert (=> b!3836613 (=> (not res!1552850) (not e!2369423))))

(assert (=> b!3836613 (= res!1552850 lt!1331410)))

(declare-fun b!3836614 () Bool)

(declare-fun derivativeStep!3394 (Regex!11145 C!22476) Regex!11145)

(assert (=> b!3836614 (= e!2369428 (matchR!5328 (derivativeStep!3394 (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))) (head!8072 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283)))))) (tail!5799 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283)))))))))

(declare-fun b!3836615 () Bool)

(assert (=> b!3836615 (= e!2369424 (= lt!1331410 call!281897))))

(declare-fun b!3836616 () Bool)

(declare-fun res!1552848 () Bool)

(assert (=> b!3836616 (=> res!1552848 e!2369426)))

(assert (=> b!3836616 (= res!1552848 (not ((_ is ElementMatch!11145) (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))))))

(assert (=> b!3836616 (= e!2369427 e!2369426)))

(declare-fun b!3836617 () Bool)

(assert (=> b!3836617 (= e!2369428 (nullable!3877 (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283))))))))

(declare-fun b!3836618 () Bool)

(declare-fun res!1552849 () Bool)

(assert (=> b!3836618 (=> (not res!1552849) (not e!2369423))))

(assert (=> b!3836618 (= res!1552849 (not call!281897))))

(declare-fun bm!281892 () Bool)

(assert (=> bm!281892 (= call!281897 (isEmpty!23922 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331283))))))))

(assert (= (and d!1138975 c!668983) b!3836617))

(assert (= (and d!1138975 (not c!668983)) b!3836614))

(assert (= (and d!1138975 c!668984) b!3836615))

(assert (= (and d!1138975 (not c!668984)) b!3836609))

(assert (= (and b!3836609 c!668985) b!3836612))

(assert (= (and b!3836609 (not c!668985)) b!3836616))

(assert (= (and b!3836616 (not res!1552848)) b!3836613))

(assert (= (and b!3836613 res!1552850) b!3836618))

(assert (= (and b!3836618 res!1552849) b!3836608))

(assert (= (and b!3836608 res!1552851) b!3836610))

(assert (= (and b!3836613 (not res!1552847)) b!3836605))

(assert (= (and b!3836605 res!1552852) b!3836607))

(assert (= (and b!3836607 (not res!1552846)) b!3836606))

(assert (= (and b!3836606 (not res!1552853)) b!3836611))

(assert (= (or b!3836615 b!3836607 b!3836618) bm!281892))

(assert (=> b!3836614 m!4390237))

(declare-fun m!4391017 () Bool)

(assert (=> b!3836614 m!4391017))

(assert (=> b!3836614 m!4391017))

(declare-fun m!4391019 () Bool)

(assert (=> b!3836614 m!4391019))

(assert (=> b!3836614 m!4390237))

(declare-fun m!4391021 () Bool)

(assert (=> b!3836614 m!4391021))

(assert (=> b!3836614 m!4391019))

(assert (=> b!3836614 m!4391021))

(declare-fun m!4391023 () Bool)

(assert (=> b!3836614 m!4391023))

(assert (=> d!1138975 m!4390237))

(declare-fun m!4391025 () Bool)

(assert (=> d!1138975 m!4391025))

(declare-fun m!4391027 () Bool)

(assert (=> d!1138975 m!4391027))

(assert (=> b!3836610 m!4390237))

(assert (=> b!3836610 m!4391017))

(assert (=> bm!281892 m!4390237))

(assert (=> bm!281892 m!4391025))

(assert (=> b!3836611 m!4390237))

(assert (=> b!3836611 m!4391017))

(declare-fun m!4391029 () Bool)

(assert (=> b!3836617 m!4391029))

(assert (=> b!3836606 m!4390237))

(assert (=> b!3836606 m!4391021))

(assert (=> b!3836606 m!4391021))

(declare-fun m!4391031 () Bool)

(assert (=> b!3836606 m!4391031))

(assert (=> b!3836608 m!4390237))

(assert (=> b!3836608 m!4391021))

(assert (=> b!3836608 m!4391021))

(assert (=> b!3836608 m!4391031))

(assert (=> b!3835901 d!1138975))

(assert (=> b!3835901 d!1138817))

(assert (=> b!3835901 d!1138851))

(assert (=> b!3835901 d!1138853))

(declare-fun d!1138977 () Bool)

(declare-fun charsToBigInt!0 (List!40634 Int) Int)

(assert (=> d!1138977 (= (inv!15 (value!198474 (h!45932 suffixTokens!72))) (= (charsToBigInt!0 (text!45739 (value!198474 (h!45932 suffixTokens!72))) 0) (value!198469 (value!198474 (h!45932 suffixTokens!72)))))))

(declare-fun bs!582514 () Bool)

(assert (= bs!582514 d!1138977))

(declare-fun m!4391033 () Bool)

(assert (=> bs!582514 m!4391033))

(assert (=> b!3835911 d!1138977))

(declare-fun d!1138979 () Bool)

(declare-fun c!668986 () Bool)

(assert (=> d!1138979 (= c!668986 ((_ is Node!12451) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185)))))))))

(declare-fun e!2369430 () Bool)

(assert (=> d!1138979 (= (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185)))))) e!2369430)))

(declare-fun b!3836619 () Bool)

(assert (=> b!3836619 (= e!2369430 (inv!54665 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185)))))))))

(declare-fun b!3836620 () Bool)

(declare-fun e!2369431 () Bool)

(assert (=> b!3836620 (= e!2369430 e!2369431)))

(declare-fun res!1552854 () Bool)

(assert (=> b!3836620 (= res!1552854 (not ((_ is Leaf!19278) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185))))))))))

(assert (=> b!3836620 (=> res!1552854 e!2369431)))

(declare-fun b!3836621 () Bool)

(assert (=> b!3836621 (= e!2369431 (inv!54666 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185)))))))))

(assert (= (and d!1138979 c!668986) b!3836619))

(assert (= (and d!1138979 (not c!668986)) b!3836620))

(assert (= (and b!3836620 (not res!1552854)) b!3836621))

(declare-fun m!4391035 () Bool)

(assert (=> b!3836619 m!4391035))

(declare-fun m!4391037 () Bool)

(assert (=> b!3836621 m!4391037))

(assert (=> b!3835751 d!1138979))

(declare-fun d!1138981 () Bool)

(assert (=> d!1138981 (= (list!15092 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72)))) (list!15093 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72))))))))

(declare-fun bs!582515 () Bool)

(assert (= bs!582515 d!1138981))

(declare-fun m!4391039 () Bool)

(assert (=> bs!582515 m!4391039))

(assert (=> b!3835915 d!1138981))

(assert (=> d!1138587 d!1138591))

(declare-fun d!1138983 () Bool)

(assert (=> d!1138983 (ruleValid!2192 thiss!20629 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))

(assert (=> d!1138983 true))

(declare-fun _$65!1314 () Unit!58246)

(assert (=> d!1138983 (= (choose!22551 thiss!20629 (rule!9074 (_1!22978 (v!38947 lt!1331185))) rules!2768) _$65!1314)))

(declare-fun bs!582516 () Bool)

(assert (= bs!582516 d!1138983))

(assert (=> bs!582516 m!4389877))

(assert (=> d!1138587 d!1138983))

(declare-fun d!1138985 () Bool)

(declare-fun lt!1331411 () Bool)

(assert (=> d!1138985 (= lt!1331411 (select (content!6020 rules!2768) (rule!9074 (_1!22978 (v!38947 lt!1331185)))))))

(declare-fun e!2369433 () Bool)

(assert (=> d!1138985 (= lt!1331411 e!2369433)))

(declare-fun res!1552855 () Bool)

(assert (=> d!1138985 (=> (not res!1552855) (not e!2369433))))

(assert (=> d!1138985 (= res!1552855 ((_ is Cons!40513) rules!2768))))

(assert (=> d!1138985 (= (contains!8220 rules!2768 (rule!9074 (_1!22978 (v!38947 lt!1331185)))) lt!1331411)))

(declare-fun b!3836622 () Bool)

(declare-fun e!2369432 () Bool)

(assert (=> b!3836622 (= e!2369433 e!2369432)))

(declare-fun res!1552856 () Bool)

(assert (=> b!3836622 (=> res!1552856 e!2369432)))

(assert (=> b!3836622 (= res!1552856 (= (h!45933 rules!2768) (rule!9074 (_1!22978 (v!38947 lt!1331185)))))))

(declare-fun b!3836623 () Bool)

(assert (=> b!3836623 (= e!2369432 (contains!8220 (t!309624 rules!2768) (rule!9074 (_1!22978 (v!38947 lt!1331185)))))))

(assert (= (and d!1138985 res!1552855) b!3836622))

(assert (= (and b!3836622 (not res!1552856)) b!3836623))

(assert (=> d!1138985 m!4390737))

(declare-fun m!4391041 () Bool)

(assert (=> d!1138985 m!4391041))

(declare-fun m!4391043 () Bool)

(assert (=> b!3836623 m!4391043))

(assert (=> d!1138587 d!1138985))

(declare-fun d!1138987 () Bool)

(assert (=> d!1138987 (= (isEmpty!23926 lt!1331283) (not ((_ is Some!8657) lt!1331283)))))

(assert (=> d!1138621 d!1138987))

(declare-fun b!3836626 () Bool)

(declare-fun e!2369435 () Bool)

(assert (=> b!3836626 (= e!2369435 (isPrefix!3339 (tail!5799 lt!1331184) (tail!5799 lt!1331184)))))

(declare-fun d!1138989 () Bool)

(declare-fun e!2369434 () Bool)

(assert (=> d!1138989 e!2369434))

(declare-fun res!1552859 () Bool)

(assert (=> d!1138989 (=> res!1552859 e!2369434)))

(declare-fun lt!1331412 () Bool)

(assert (=> d!1138989 (= res!1552859 (not lt!1331412))))

(declare-fun e!2369436 () Bool)

(assert (=> d!1138989 (= lt!1331412 e!2369436)))

(declare-fun res!1552860 () Bool)

(assert (=> d!1138989 (=> res!1552860 e!2369436)))

(assert (=> d!1138989 (= res!1552860 ((_ is Nil!40511) lt!1331184))))

(assert (=> d!1138989 (= (isPrefix!3339 lt!1331184 lt!1331184) lt!1331412)))

(declare-fun b!3836627 () Bool)

(assert (=> b!3836627 (= e!2369434 (>= (size!30516 lt!1331184) (size!30516 lt!1331184)))))

(declare-fun b!3836624 () Bool)

(assert (=> b!3836624 (= e!2369436 e!2369435)))

(declare-fun res!1552858 () Bool)

(assert (=> b!3836624 (=> (not res!1552858) (not e!2369435))))

(assert (=> b!3836624 (= res!1552858 (not ((_ is Nil!40511) lt!1331184)))))

(declare-fun b!3836625 () Bool)

(declare-fun res!1552857 () Bool)

(assert (=> b!3836625 (=> (not res!1552857) (not e!2369435))))

(assert (=> b!3836625 (= res!1552857 (= (head!8072 lt!1331184) (head!8072 lt!1331184)))))

(assert (= (and d!1138989 (not res!1552860)) b!3836624))

(assert (= (and b!3836624 res!1552858) b!3836625))

(assert (= (and b!3836625 res!1552857) b!3836626))

(assert (= (and d!1138989 (not res!1552859)) b!3836627))

(assert (=> b!3836626 m!4389991))

(assert (=> b!3836626 m!4389991))

(assert (=> b!3836626 m!4389991))

(assert (=> b!3836626 m!4389991))

(declare-fun m!4391045 () Bool)

(assert (=> b!3836626 m!4391045))

(assert (=> b!3836627 m!4389879))

(assert (=> b!3836627 m!4389879))

(assert (=> b!3836625 m!4389997))

(assert (=> b!3836625 m!4389997))

(assert (=> d!1138621 d!1138989))

(declare-fun d!1138991 () Bool)

(assert (=> d!1138991 (isPrefix!3339 lt!1331184 lt!1331184)))

(declare-fun lt!1331415 () Unit!58246)

(declare-fun choose!22554 (List!40635 List!40635) Unit!58246)

(assert (=> d!1138991 (= lt!1331415 (choose!22554 lt!1331184 lt!1331184))))

(assert (=> d!1138991 (= (lemmaIsPrefixRefl!2124 lt!1331184 lt!1331184) lt!1331415)))

(declare-fun bs!582517 () Bool)

(assert (= bs!582517 d!1138991))

(assert (=> bs!582517 m!4390243))

(declare-fun m!4391047 () Bool)

(assert (=> bs!582517 m!4391047))

(assert (=> d!1138621 d!1138991))

(declare-fun d!1138993 () Bool)

(assert (=> d!1138993 true))

(declare-fun lt!1331418 () Bool)

(declare-fun lambda!126066 () Int)

(declare-fun forall!8271 (List!40637 Int) Bool)

(assert (=> d!1138993 (= lt!1331418 (forall!8271 rules!2768 lambda!126066))))

(declare-fun e!2369441 () Bool)

(assert (=> d!1138993 (= lt!1331418 e!2369441)))

(declare-fun res!1552866 () Bool)

(assert (=> d!1138993 (=> res!1552866 e!2369441)))

(assert (=> d!1138993 (= res!1552866 (not ((_ is Cons!40513) rules!2768)))))

(assert (=> d!1138993 (= (rulesValidInductive!2202 thiss!20629 rules!2768) lt!1331418)))

(declare-fun b!3836632 () Bool)

(declare-fun e!2369442 () Bool)

(assert (=> b!3836632 (= e!2369441 e!2369442)))

(declare-fun res!1552865 () Bool)

(assert (=> b!3836632 (=> (not res!1552865) (not e!2369442))))

(assert (=> b!3836632 (= res!1552865 (ruleValid!2192 thiss!20629 (h!45933 rules!2768)))))

(declare-fun b!3836633 () Bool)

(assert (=> b!3836633 (= e!2369442 (rulesValidInductive!2202 thiss!20629 (t!309624 rules!2768)))))

(assert (= (and d!1138993 (not res!1552866)) b!3836632))

(assert (= (and b!3836632 res!1552865) b!3836633))

(declare-fun m!4391049 () Bool)

(assert (=> d!1138993 m!4391049))

(assert (=> b!3836632 m!4390947))

(declare-fun m!4391051 () Bool)

(assert (=> b!3836633 m!4391051))

(assert (=> d!1138621 d!1138993))

(declare-fun b!3836636 () Bool)

(declare-fun e!2369444 () Bool)

(declare-fun e!2369445 () Bool)

(assert (=> b!3836636 (= e!2369444 e!2369445)))

(declare-fun res!1552867 () Bool)

(declare-fun lt!1331419 () tuple2!39686)

(assert (=> b!3836636 (= res!1552867 (< (size!30516 (_2!22977 lt!1331419)) (size!30516 (_2!22978 (v!38947 lt!1331286)))))))

(assert (=> b!3836636 (=> (not res!1552867) (not e!2369445))))

(declare-fun b!3836637 () Bool)

(assert (=> b!3836637 (= e!2369444 (= (_2!22977 lt!1331419) (_2!22978 (v!38947 lt!1331286))))))

(declare-fun b!3836638 () Bool)

(assert (=> b!3836638 (= e!2369445 (not (isEmpty!23924 (_1!22977 lt!1331419))))))

(declare-fun d!1138995 () Bool)

(assert (=> d!1138995 e!2369444))

(declare-fun c!668987 () Bool)

(assert (=> d!1138995 (= c!668987 (> (size!30518 (_1!22977 lt!1331419)) 0))))

(declare-fun e!2369443 () tuple2!39686)

(assert (=> d!1138995 (= lt!1331419 e!2369443)))

(declare-fun c!668988 () Bool)

(declare-fun lt!1331420 () Option!8658)

(assert (=> d!1138995 (= c!668988 ((_ is Some!8657) lt!1331420))))

(assert (=> d!1138995 (= lt!1331420 (maxPrefix!3133 thiss!20629 rules!2768 (_2!22978 (v!38947 lt!1331286))))))

(assert (=> d!1138995 (= (lexList!1597 thiss!20629 rules!2768 (_2!22978 (v!38947 lt!1331286))) lt!1331419)))

(declare-fun b!3836639 () Bool)

(declare-fun lt!1331421 () tuple2!39686)

(assert (=> b!3836639 (= e!2369443 (tuple2!39687 (Cons!40512 (_1!22978 (v!38947 lt!1331420)) (_1!22977 lt!1331421)) (_2!22977 lt!1331421)))))

(assert (=> b!3836639 (= lt!1331421 (lexList!1597 thiss!20629 rules!2768 (_2!22978 (v!38947 lt!1331420))))))

(declare-fun b!3836640 () Bool)

(assert (=> b!3836640 (= e!2369443 (tuple2!39687 Nil!40512 (_2!22978 (v!38947 lt!1331286))))))

(assert (= (and d!1138995 c!668988) b!3836639))

(assert (= (and d!1138995 (not c!668988)) b!3836640))

(assert (= (and d!1138995 c!668987) b!3836636))

(assert (= (and d!1138995 (not c!668987)) b!3836637))

(assert (= (and b!3836636 res!1552867) b!3836638))

(declare-fun m!4391053 () Bool)

(assert (=> b!3836636 m!4391053))

(declare-fun m!4391055 () Bool)

(assert (=> b!3836636 m!4391055))

(declare-fun m!4391057 () Bool)

(assert (=> b!3836638 m!4391057))

(declare-fun m!4391059 () Bool)

(assert (=> d!1138995 m!4391059))

(declare-fun m!4391061 () Bool)

(assert (=> d!1138995 m!4391061))

(declare-fun m!4391063 () Bool)

(assert (=> b!3836639 m!4391063))

(assert (=> b!3835921 d!1138995))

(declare-fun d!1138997 () Bool)

(declare-fun lt!1331422 () Int)

(assert (=> d!1138997 (>= lt!1331422 0)))

(declare-fun e!2369446 () Int)

(assert (=> d!1138997 (= lt!1331422 e!2369446)))

(declare-fun c!668989 () Bool)

(assert (=> d!1138997 (= c!668989 ((_ is Nil!40511) (t!309622 lt!1331183)))))

(assert (=> d!1138997 (= (size!30516 (t!309622 lt!1331183)) lt!1331422)))

(declare-fun b!3836641 () Bool)

(assert (=> b!3836641 (= e!2369446 0)))

(declare-fun b!3836642 () Bool)

(assert (=> b!3836642 (= e!2369446 (+ 1 (size!30516 (t!309622 (t!309622 lt!1331183)))))))

(assert (= (and d!1138997 c!668989) b!3836641))

(assert (= (and d!1138997 (not c!668989)) b!3836642))

(declare-fun m!4391065 () Bool)

(assert (=> b!3836642 m!4391065))

(assert (=> b!3835688 d!1138997))

(declare-fun e!2369448 () Bool)

(declare-fun b!3836646 () Bool)

(declare-fun lt!1331423 () List!40635)

(assert (=> b!3836646 (= e!2369448 (or (not (= suffix!1176 Nil!40511)) (= lt!1331423 (t!309622 prefix!426))))))

(declare-fun b!3836645 () Bool)

(declare-fun res!1552868 () Bool)

(assert (=> b!3836645 (=> (not res!1552868) (not e!2369448))))

(assert (=> b!3836645 (= res!1552868 (= (size!30516 lt!1331423) (+ (size!30516 (t!309622 prefix!426)) (size!30516 suffix!1176))))))

(declare-fun b!3836644 () Bool)

(declare-fun e!2369447 () List!40635)

(assert (=> b!3836644 (= e!2369447 (Cons!40511 (h!45931 (t!309622 prefix!426)) (++!10237 (t!309622 (t!309622 prefix!426)) suffix!1176)))))

(declare-fun d!1138999 () Bool)

(assert (=> d!1138999 e!2369448))

(declare-fun res!1552869 () Bool)

(assert (=> d!1138999 (=> (not res!1552869) (not e!2369448))))

(assert (=> d!1138999 (= res!1552869 (= (content!6018 lt!1331423) ((_ map or) (content!6018 (t!309622 prefix!426)) (content!6018 suffix!1176))))))

(assert (=> d!1138999 (= lt!1331423 e!2369447)))

(declare-fun c!668990 () Bool)

(assert (=> d!1138999 (= c!668990 ((_ is Nil!40511) (t!309622 prefix!426)))))

(assert (=> d!1138999 (= (++!10237 (t!309622 prefix!426) suffix!1176) lt!1331423)))

(declare-fun b!3836643 () Bool)

(assert (=> b!3836643 (= e!2369447 suffix!1176)))

(assert (= (and d!1138999 c!668990) b!3836643))

(assert (= (and d!1138999 (not c!668990)) b!3836644))

(assert (= (and d!1138999 res!1552869) b!3836645))

(assert (= (and b!3836645 res!1552868) b!3836646))

(declare-fun m!4391067 () Bool)

(assert (=> b!3836645 m!4391067))

(assert (=> b!3836645 m!4390389))

(assert (=> b!3836645 m!4389935))

(declare-fun m!4391069 () Bool)

(assert (=> b!3836644 m!4391069))

(declare-fun m!4391071 () Bool)

(assert (=> d!1138999 m!4391071))

(assert (=> d!1138999 m!4390961))

(assert (=> d!1138999 m!4389943))

(assert (=> b!3835607 d!1138999))

(declare-fun d!1139001 () Bool)

(assert (=> d!1139001 (= (isDefined!6817 lt!1331283) (not (isEmpty!23926 lt!1331283)))))

(declare-fun bs!582518 () Bool)

(assert (= bs!582518 d!1139001))

(assert (=> bs!582518 m!4390241))

(assert (=> b!3835909 d!1139001))

(declare-fun d!1139003 () Bool)

(declare-fun lt!1331424 () Int)

(assert (=> d!1139003 (>= lt!1331424 0)))

(declare-fun e!2369449 () Int)

(assert (=> d!1139003 (= lt!1331424 e!2369449)))

(declare-fun c!668991 () Bool)

(assert (=> d!1139003 (= c!668991 ((_ is Nil!40512) (_1!22977 lt!1331192)))))

(assert (=> d!1139003 (= (size!30518 (_1!22977 lt!1331192)) lt!1331424)))

(declare-fun b!3836647 () Bool)

(assert (=> b!3836647 (= e!2369449 0)))

(declare-fun b!3836648 () Bool)

(assert (=> b!3836648 (= e!2369449 (+ 1 (size!30518 (t!309623 (_1!22977 lt!1331192)))))))

(assert (= (and d!1139003 c!668991) b!3836647))

(assert (= (and d!1139003 (not c!668991)) b!3836648))

(declare-fun m!4391073 () Bool)

(assert (=> b!3836648 m!4391073))

(assert (=> d!1138551 d!1139003))

(assert (=> d!1138551 d!1138621))

(declare-fun d!1139005 () Bool)

(assert (=> d!1139005 (= (inv!54654 (tag!7100 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (= (mod (str.len (value!198473 (tag!7100 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3835981 d!1139005))

(declare-fun d!1139007 () Bool)

(declare-fun res!1552870 () Bool)

(declare-fun e!2369450 () Bool)

(assert (=> d!1139007 (=> (not res!1552870) (not e!2369450))))

(assert (=> d!1139007 (= res!1552870 (semiInverseModEq!2677 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))))))

(assert (=> d!1139007 (= (inv!54657 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) e!2369450)))

(declare-fun b!3836649 () Bool)

(assert (=> b!3836649 (= e!2369450 (equivClasses!2576 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))))))

(assert (= (and d!1139007 res!1552870) b!3836649))

(declare-fun m!4391075 () Bool)

(assert (=> d!1139007 m!4391075))

(declare-fun m!4391077 () Bool)

(assert (=> b!3836649 m!4391077))

(assert (=> b!3835981 d!1139007))

(declare-fun d!1139009 () Bool)

(assert (=> d!1139009 (= (inv!15 (value!198474 (h!45932 prefixTokens!80))) (= (charsToBigInt!0 (text!45739 (value!198474 (h!45932 prefixTokens!80))) 0) (value!198469 (value!198474 (h!45932 prefixTokens!80)))))))

(declare-fun bs!582519 () Bool)

(assert (= bs!582519 d!1139009))

(declare-fun m!4391079 () Bool)

(assert (=> bs!582519 m!4391079))

(assert (=> b!3835677 d!1139009))

(declare-fun bs!582520 () Bool)

(declare-fun d!1139011 () Bool)

(assert (= bs!582520 (and d!1139011 d!1138725)))

(declare-fun lambda!126067 () Int)

(assert (=> bs!582520 (= (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) (= lambda!126067 lambda!126056))))

(declare-fun bs!582521 () Bool)

(assert (= bs!582521 (and d!1139011 d!1138803)))

(assert (=> bs!582521 (= (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toValue!8652 (transformation!6240 (h!45933 rules!2768)))) (= lambda!126067 lambda!126057))))

(assert (=> d!1139011 true))

(assert (=> d!1139011 (< (dynLambda!17548 order!22135 (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) (dynLambda!17549 order!22137 lambda!126067))))

(assert (=> d!1139011 (= (equivClasses!2576 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) (Forall2!1027 lambda!126067))))

(declare-fun bs!582522 () Bool)

(assert (= bs!582522 d!1139011))

(declare-fun m!4391081 () Bool)

(assert (=> bs!582522 m!4391081))

(assert (=> b!3835765 d!1139011))

(assert (=> b!3835907 d!1138851))

(assert (=> b!3835907 d!1138853))

(assert (=> b!3835907 d!1138817))

(declare-fun b!3836651 () Bool)

(declare-fun e!2369452 () List!40636)

(assert (=> b!3836651 (= e!2369452 (Cons!40512 (h!45932 (t!309623 prefixTokens!80)) (++!10238 (t!309623 (t!309623 prefixTokens!80)) suffixTokens!72)))))

(declare-fun d!1139013 () Bool)

(declare-fun e!2369451 () Bool)

(assert (=> d!1139013 e!2369451))

(declare-fun res!1552871 () Bool)

(assert (=> d!1139013 (=> (not res!1552871) (not e!2369451))))

(declare-fun lt!1331425 () List!40636)

(assert (=> d!1139013 (= res!1552871 (= (content!6017 lt!1331425) ((_ map or) (content!6017 (t!309623 prefixTokens!80)) (content!6017 suffixTokens!72))))))

(assert (=> d!1139013 (= lt!1331425 e!2369452)))

(declare-fun c!668992 () Bool)

(assert (=> d!1139013 (= c!668992 ((_ is Nil!40512) (t!309623 prefixTokens!80)))))

(assert (=> d!1139013 (= (++!10238 (t!309623 prefixTokens!80) suffixTokens!72) lt!1331425)))

(declare-fun b!3836653 () Bool)

(assert (=> b!3836653 (= e!2369451 (or (not (= suffixTokens!72 Nil!40512)) (= lt!1331425 (t!309623 prefixTokens!80))))))

(declare-fun b!3836652 () Bool)

(declare-fun res!1552872 () Bool)

(assert (=> b!3836652 (=> (not res!1552872) (not e!2369451))))

(assert (=> b!3836652 (= res!1552872 (= (size!30518 lt!1331425) (+ (size!30518 (t!309623 prefixTokens!80)) (size!30518 suffixTokens!72))))))

(declare-fun b!3836650 () Bool)

(assert (=> b!3836650 (= e!2369452 suffixTokens!72)))

(assert (= (and d!1139013 c!668992) b!3836650))

(assert (= (and d!1139013 (not c!668992)) b!3836651))

(assert (= (and d!1139013 res!1552871) b!3836652))

(assert (= (and b!3836652 res!1552872) b!3836653))

(declare-fun m!4391083 () Bool)

(assert (=> b!3836651 m!4391083))

(declare-fun m!4391085 () Bool)

(assert (=> d!1139013 m!4391085))

(assert (=> d!1139013 m!4390993))

(assert (=> d!1139013 m!4389923))

(declare-fun m!4391087 () Bool)

(assert (=> b!3836652 m!4391087))

(assert (=> b!3836652 m!4390591))

(assert (=> b!3836652 m!4389929))

(assert (=> b!3835595 d!1139013))

(declare-fun d!1139015 () Bool)

(assert (=> d!1139015 (= (inv!54660 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80)))) (isBalanced!3620 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80))))))))

(declare-fun bs!582523 () Bool)

(assert (= bs!582523 d!1139015))

(declare-fun m!4391089 () Bool)

(assert (=> bs!582523 m!4391089))

(assert (=> tb!220297 d!1139015))

(declare-fun bs!582524 () Bool)

(declare-fun d!1139017 () Bool)

(assert (= bs!582524 (and d!1139017 d!1138819)))

(declare-fun lambda!126068 () Int)

(assert (=> bs!582524 (= (and (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (h!45933 rules!2768)))) (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toValue!8652 (transformation!6240 (h!45933 rules!2768))))) (= lambda!126068 lambda!126060))))

(declare-fun bs!582525 () Bool)

(assert (= bs!582525 (and d!1139017 d!1138845)))

(assert (=> bs!582525 (= (and (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))))) (= lambda!126068 lambda!126061))))

(assert (=> d!1139017 true))

(assert (=> d!1139017 (< (dynLambda!17550 order!22139 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) (dynLambda!17551 order!22141 lambda!126068))))

(assert (=> d!1139017 true))

(assert (=> d!1139017 (< (dynLambda!17548 order!22135 (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) (dynLambda!17551 order!22141 lambda!126068))))

(assert (=> d!1139017 (= (semiInverseModEq!2677 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) (Forall!1430 lambda!126068))))

(declare-fun bs!582526 () Bool)

(assert (= bs!582526 d!1139017))

(declare-fun m!4391091 () Bool)

(assert (=> bs!582526 m!4391091))

(assert (=> d!1138667 d!1139017))

(declare-fun b!3836656 () Bool)

(declare-fun e!2369454 () Bool)

(assert (=> b!3836656 (= e!2369454 (isPrefix!3339 (tail!5799 (tail!5799 lt!1331183)) (tail!5799 (tail!5799 lt!1331184))))))

(declare-fun d!1139019 () Bool)

(declare-fun e!2369453 () Bool)

(assert (=> d!1139019 e!2369453))

(declare-fun res!1552875 () Bool)

(assert (=> d!1139019 (=> res!1552875 e!2369453)))

(declare-fun lt!1331426 () Bool)

(assert (=> d!1139019 (= res!1552875 (not lt!1331426))))

(declare-fun e!2369455 () Bool)

(assert (=> d!1139019 (= lt!1331426 e!2369455)))

(declare-fun res!1552876 () Bool)

(assert (=> d!1139019 (=> res!1552876 e!2369455)))

(assert (=> d!1139019 (= res!1552876 ((_ is Nil!40511) (tail!5799 lt!1331183)))))

(assert (=> d!1139019 (= (isPrefix!3339 (tail!5799 lt!1331183) (tail!5799 lt!1331184)) lt!1331426)))

(declare-fun b!3836657 () Bool)

(assert (=> b!3836657 (= e!2369453 (>= (size!30516 (tail!5799 lt!1331184)) (size!30516 (tail!5799 lt!1331183))))))

(declare-fun b!3836654 () Bool)

(assert (=> b!3836654 (= e!2369455 e!2369454)))

(declare-fun res!1552874 () Bool)

(assert (=> b!3836654 (=> (not res!1552874) (not e!2369454))))

(assert (=> b!3836654 (= res!1552874 (not ((_ is Nil!40511) (tail!5799 lt!1331184))))))

(declare-fun b!3836655 () Bool)

(declare-fun res!1552873 () Bool)

(assert (=> b!3836655 (=> (not res!1552873) (not e!2369454))))

(assert (=> b!3836655 (= res!1552873 (= (head!8072 (tail!5799 lt!1331183)) (head!8072 (tail!5799 lt!1331184))))))

(assert (= (and d!1139019 (not res!1552876)) b!3836654))

(assert (= (and b!3836654 res!1552874) b!3836655))

(assert (= (and b!3836655 res!1552873) b!3836656))

(assert (= (and d!1139019 (not res!1552875)) b!3836657))

(assert (=> b!3836656 m!4389989))

(assert (=> b!3836656 m!4390967))

(assert (=> b!3836656 m!4389991))

(declare-fun m!4391093 () Bool)

(assert (=> b!3836656 m!4391093))

(assert (=> b!3836656 m!4390967))

(assert (=> b!3836656 m!4391093))

(declare-fun m!4391095 () Bool)

(assert (=> b!3836656 m!4391095))

(assert (=> b!3836657 m!4389991))

(declare-fun m!4391097 () Bool)

(assert (=> b!3836657 m!4391097))

(assert (=> b!3836657 m!4389989))

(assert (=> b!3836657 m!4390975))

(assert (=> b!3836655 m!4389989))

(assert (=> b!3836655 m!4390977))

(assert (=> b!3836655 m!4389991))

(declare-fun m!4391099 () Bool)

(assert (=> b!3836655 m!4391099))

(assert (=> b!3835658 d!1139019))

(assert (=> b!3835658 d!1138955))

(declare-fun d!1139021 () Bool)

(assert (=> d!1139021 (= (tail!5799 lt!1331184) (t!309622 lt!1331184))))

(assert (=> b!3835658 d!1139021))

(declare-fun d!1139023 () Bool)

(assert (=> d!1139023 (= (isEmpty!23922 (originalCharacters!6840 (h!45932 suffixTokens!72))) ((_ is Nil!40511) (originalCharacters!6840 (h!45932 suffixTokens!72))))))

(assert (=> d!1138657 d!1139023))

(declare-fun d!1139025 () Bool)

(declare-fun c!668993 () Bool)

(assert (=> d!1139025 (= c!668993 ((_ is Node!12451) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80))))))))

(declare-fun e!2369456 () Bool)

(assert (=> d!1139025 (= (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80))))) e!2369456)))

(declare-fun b!3836658 () Bool)

(assert (=> b!3836658 (= e!2369456 (inv!54665 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80))))))))

(declare-fun b!3836659 () Bool)

(declare-fun e!2369457 () Bool)

(assert (=> b!3836659 (= e!2369456 e!2369457)))

(declare-fun res!1552877 () Bool)

(assert (=> b!3836659 (= res!1552877 (not ((_ is Leaf!19278) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80)))))))))

(assert (=> b!3836659 (=> res!1552877 e!2369457)))

(declare-fun b!3836660 () Bool)

(assert (=> b!3836660 (= e!2369457 (inv!54666 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80))))))))

(assert (= (and d!1139025 c!668993) b!3836658))

(assert (= (and d!1139025 (not c!668993)) b!3836659))

(assert (= (and b!3836659 (not res!1552877)) b!3836660))

(declare-fun m!4391101 () Bool)

(assert (=> b!3836658 m!4391101))

(declare-fun m!4391103 () Bool)

(assert (=> b!3836660 m!4391103))

(assert (=> b!3835638 d!1139025))

(declare-fun d!1139027 () Bool)

(assert (=> d!1139027 (= (isEmpty!23924 (_1!22977 lt!1331192)) ((_ is Nil!40512) (_1!22977 lt!1331192)))))

(assert (=> b!3835583 d!1139027))

(declare-fun d!1139029 () Bool)

(assert (=> d!1139029 (= (list!15092 lt!1331252) (list!15093 (c!668785 lt!1331252)))))

(declare-fun bs!582527 () Bool)

(assert (= bs!582527 d!1139029))

(declare-fun m!4391105 () Bool)

(assert (=> bs!582527 m!4391105))

(assert (=> d!1138595 d!1139029))

(declare-fun d!1139031 () Bool)

(assert (=> d!1139031 (= (inv!16 (value!198474 (h!45932 suffixTokens!72))) (= (charsToInt!0 (text!45737 (value!198474 (h!45932 suffixTokens!72)))) (value!198465 (value!198474 (h!45932 suffixTokens!72)))))))

(declare-fun bs!582528 () Bool)

(assert (= bs!582528 d!1139031))

(declare-fun m!4391107 () Bool)

(assert (=> bs!582528 m!4391107))

(assert (=> b!3835914 d!1139031))

(declare-fun d!1139033 () Bool)

(declare-fun lt!1331427 () Int)

(assert (=> d!1139033 (>= lt!1331427 0)))

(declare-fun e!2369458 () Int)

(assert (=> d!1139033 (= lt!1331427 e!2369458)))

(declare-fun c!668994 () Bool)

(assert (=> d!1139033 (= c!668994 ((_ is Nil!40511) (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))))))

(assert (=> d!1139033 (= (size!30516 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))) lt!1331427)))

(declare-fun b!3836661 () Bool)

(assert (=> b!3836661 (= e!2369458 0)))

(declare-fun b!3836662 () Bool)

(assert (=> b!3836662 (= e!2369458 (+ 1 (size!30516 (t!309622 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))))))))

(assert (= (and d!1139033 c!668994) b!3836661))

(assert (= (and d!1139033 (not c!668994)) b!3836662))

(declare-fun m!4391109 () Bool)

(assert (=> b!3836662 m!4391109))

(assert (=> b!3835763 d!1139033))

(assert (=> b!3835763 d!1138577))

(declare-fun d!1139035 () Bool)

(declare-fun res!1552878 () Bool)

(declare-fun e!2369459 () Bool)

(assert (=> d!1139035 (=> (not res!1552878) (not e!2369459))))

(assert (=> d!1139035 (= res!1552878 (not (isEmpty!23922 (originalCharacters!6840 (h!45932 (t!309623 suffixTokens!72))))))))

(assert (=> d!1139035 (= (inv!54658 (h!45932 (t!309623 suffixTokens!72))) e!2369459)))

(declare-fun b!3836663 () Bool)

(declare-fun res!1552879 () Bool)

(assert (=> b!3836663 (=> (not res!1552879) (not e!2369459))))

(assert (=> b!3836663 (= res!1552879 (= (originalCharacters!6840 (h!45932 (t!309623 suffixTokens!72))) (list!15092 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (value!198474 (h!45932 (t!309623 suffixTokens!72)))))))))

(declare-fun b!3836664 () Bool)

(assert (=> b!3836664 (= e!2369459 (= (size!30515 (h!45932 (t!309623 suffixTokens!72))) (size!30516 (originalCharacters!6840 (h!45932 (t!309623 suffixTokens!72))))))))

(assert (= (and d!1139035 res!1552878) b!3836663))

(assert (= (and b!3836663 res!1552879) b!3836664))

(declare-fun b_lambda!112175 () Bool)

(assert (=> (not b_lambda!112175) (not b!3836663)))

(declare-fun t!309804 () Bool)

(declare-fun tb!220471 () Bool)

(assert (=> (and b!3835977 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) t!309804) tb!220471))

(declare-fun b!3836665 () Bool)

(declare-fun e!2369460 () Bool)

(declare-fun tp!1161255 () Bool)

(assert (=> b!3836665 (= e!2369460 (and (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (value!198474 (h!45932 (t!309623 suffixTokens!72)))))) tp!1161255))))

(declare-fun result!268712 () Bool)

(assert (=> tb!220471 (= result!268712 (and (inv!54660 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (value!198474 (h!45932 (t!309623 suffixTokens!72))))) e!2369460))))

(assert (= tb!220471 b!3836665))

(declare-fun m!4391111 () Bool)

(assert (=> b!3836665 m!4391111))

(declare-fun m!4391113 () Bool)

(assert (=> tb!220471 m!4391113))

(assert (=> b!3836663 t!309804))

(declare-fun b_and!285391 () Bool)

(assert (= b_and!285347 (and (=> t!309804 result!268712) b_and!285391)))

(declare-fun tb!220473 () Bool)

(declare-fun t!309806 () Bool)

(assert (=> (and b!3835565 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) t!309806) tb!220473))

(declare-fun result!268714 () Bool)

(assert (= result!268714 result!268712))

(assert (=> b!3836663 t!309806))

(declare-fun b_and!285393 () Bool)

(assert (= b_and!285353 (and (=> t!309806 result!268714) b_and!285393)))

(declare-fun t!309808 () Bool)

(declare-fun tb!220475 () Bool)

(assert (=> (and b!3835940 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) t!309808) tb!220475))

(declare-fun result!268716 () Bool)

(assert (= result!268716 result!268712))

(assert (=> b!3836663 t!309808))

(declare-fun b_and!285395 () Bool)

(assert (= b_and!285343 (and (=> t!309808 result!268716) b_and!285395)))

(declare-fun t!309810 () Bool)

(declare-fun tb!220477 () Bool)

(assert (=> (and b!3835566 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) t!309810) tb!220477))

(declare-fun result!268718 () Bool)

(assert (= result!268718 result!268712))

(assert (=> b!3836663 t!309810))

(declare-fun b_and!285397 () Bool)

(assert (= b_and!285351 (and (=> t!309810 result!268718) b_and!285397)))

(declare-fun tb!220479 () Bool)

(declare-fun t!309812 () Bool)

(assert (=> (and b!3835559 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) t!309812) tb!220479))

(declare-fun result!268720 () Bool)

(assert (= result!268720 result!268712))

(assert (=> b!3836663 t!309812))

(declare-fun b_and!285399 () Bool)

(assert (= b_and!285349 (and (=> t!309812 result!268720) b_and!285399)))

(declare-fun t!309814 () Bool)

(declare-fun tb!220481 () Bool)

(assert (=> (and b!3835982 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) t!309814) tb!220481))

(declare-fun result!268722 () Bool)

(assert (= result!268722 result!268712))

(assert (=> b!3836663 t!309814))

(declare-fun b_and!285401 () Bool)

(assert (= b_and!285345 (and (=> t!309814 result!268722) b_and!285401)))

(declare-fun m!4391115 () Bool)

(assert (=> d!1139035 m!4391115))

(declare-fun m!4391117 () Bool)

(assert (=> b!3836663 m!4391117))

(assert (=> b!3836663 m!4391117))

(declare-fun m!4391119 () Bool)

(assert (=> b!3836663 m!4391119))

(declare-fun m!4391121 () Bool)

(assert (=> b!3836664 m!4391121))

(assert (=> b!3835979 d!1139035))

(declare-fun d!1139037 () Bool)

(declare-fun lt!1331428 () Int)

(assert (=> d!1139037 (>= lt!1331428 0)))

(declare-fun e!2369461 () Int)

(assert (=> d!1139037 (= lt!1331428 e!2369461)))

(declare-fun c!668995 () Bool)

(assert (=> d!1139037 (= c!668995 ((_ is Nil!40511) (originalCharacters!6840 (h!45932 prefixTokens!80))))))

(assert (=> d!1139037 (= (size!30516 (originalCharacters!6840 (h!45932 prefixTokens!80))) lt!1331428)))

(declare-fun b!3836666 () Bool)

(assert (=> b!3836666 (= e!2369461 0)))

(declare-fun b!3836667 () Bool)

(assert (=> b!3836667 (= e!2369461 (+ 1 (size!30516 (t!309622 (originalCharacters!6840 (h!45932 prefixTokens!80))))))))

(assert (= (and d!1139037 c!668995) b!3836666))

(assert (= (and d!1139037 (not c!668995)) b!3836667))

(declare-fun m!4391123 () Bool)

(assert (=> b!3836667 m!4391123))

(assert (=> b!3835633 d!1139037))

(declare-fun b!3836668 () Bool)

(declare-fun res!1552883 () Bool)

(declare-fun e!2369463 () Bool)

(assert (=> b!3836668 (=> (not res!1552883) (not e!2369463))))

(declare-fun lt!1331432 () Option!8658)

(assert (=> b!3836668 (= res!1552883 (matchR!5328 (regex!6240 (rule!9074 (_1!22978 (get!13436 lt!1331432)))) (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331432))))))))

(declare-fun b!3836669 () Bool)

(declare-fun res!1552881 () Bool)

(assert (=> b!3836669 (=> (not res!1552881) (not e!2369463))))

(assert (=> b!3836669 (= res!1552881 (= (value!198474 (_1!22978 (get!13436 lt!1331432))) (apply!9485 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331432)))) (seqFromList!4513 (originalCharacters!6840 (_1!22978 (get!13436 lt!1331432)))))))))

(declare-fun b!3836670 () Bool)

(assert (=> b!3836670 (= e!2369463 (contains!8220 (t!309624 rules!2768) (rule!9074 (_1!22978 (get!13436 lt!1331432)))))))

(declare-fun b!3836671 () Bool)

(declare-fun e!2369462 () Option!8658)

(declare-fun call!281898 () Option!8658)

(assert (=> b!3836671 (= e!2369462 call!281898)))

(declare-fun d!1139039 () Bool)

(declare-fun e!2369464 () Bool)

(assert (=> d!1139039 e!2369464))

(declare-fun res!1552886 () Bool)

(assert (=> d!1139039 (=> res!1552886 e!2369464)))

(assert (=> d!1139039 (= res!1552886 (isEmpty!23926 lt!1331432))))

(assert (=> d!1139039 (= lt!1331432 e!2369462)))

(declare-fun c!668996 () Bool)

(assert (=> d!1139039 (= c!668996 (and ((_ is Cons!40513) (t!309624 rules!2768)) ((_ is Nil!40513) (t!309624 (t!309624 rules!2768)))))))

(declare-fun lt!1331429 () Unit!58246)

(declare-fun lt!1331430 () Unit!58246)

(assert (=> d!1139039 (= lt!1331429 lt!1331430)))

(assert (=> d!1139039 (isPrefix!3339 lt!1331184 lt!1331184)))

(assert (=> d!1139039 (= lt!1331430 (lemmaIsPrefixRefl!2124 lt!1331184 lt!1331184))))

(assert (=> d!1139039 (rulesValidInductive!2202 thiss!20629 (t!309624 rules!2768))))

(assert (=> d!1139039 (= (maxPrefix!3133 thiss!20629 (t!309624 rules!2768) lt!1331184) lt!1331432)))

(declare-fun b!3836672 () Bool)

(declare-fun res!1552882 () Bool)

(assert (=> b!3836672 (=> (not res!1552882) (not e!2369463))))

(assert (=> b!3836672 (= res!1552882 (= (++!10237 (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331432)))) (_2!22978 (get!13436 lt!1331432))) lt!1331184))))

(declare-fun b!3836673 () Bool)

(declare-fun lt!1331431 () Option!8658)

(declare-fun lt!1331433 () Option!8658)

(assert (=> b!3836673 (= e!2369462 (ite (and ((_ is None!8657) lt!1331431) ((_ is None!8657) lt!1331433)) None!8657 (ite ((_ is None!8657) lt!1331433) lt!1331431 (ite ((_ is None!8657) lt!1331431) lt!1331433 (ite (>= (size!30515 (_1!22978 (v!38947 lt!1331431))) (size!30515 (_1!22978 (v!38947 lt!1331433)))) lt!1331431 lt!1331433)))))))

(assert (=> b!3836673 (= lt!1331431 call!281898)))

(assert (=> b!3836673 (= lt!1331433 (maxPrefix!3133 thiss!20629 (t!309624 (t!309624 rules!2768)) lt!1331184))))

(declare-fun bm!281893 () Bool)

(assert (=> bm!281893 (= call!281898 (maxPrefixOneRule!2229 thiss!20629 (h!45933 (t!309624 rules!2768)) lt!1331184))))

(declare-fun b!3836674 () Bool)

(declare-fun res!1552885 () Bool)

(assert (=> b!3836674 (=> (not res!1552885) (not e!2369463))))

(assert (=> b!3836674 (= res!1552885 (= (list!15092 (charsOf!4068 (_1!22978 (get!13436 lt!1331432)))) (originalCharacters!6840 (_1!22978 (get!13436 lt!1331432)))))))

(declare-fun b!3836675 () Bool)

(declare-fun res!1552880 () Bool)

(assert (=> b!3836675 (=> (not res!1552880) (not e!2369463))))

(assert (=> b!3836675 (= res!1552880 (< (size!30516 (_2!22978 (get!13436 lt!1331432))) (size!30516 lt!1331184)))))

(declare-fun b!3836676 () Bool)

(assert (=> b!3836676 (= e!2369464 e!2369463)))

(declare-fun res!1552884 () Bool)

(assert (=> b!3836676 (=> (not res!1552884) (not e!2369463))))

(assert (=> b!3836676 (= res!1552884 (isDefined!6817 lt!1331432))))

(assert (= (and d!1139039 c!668996) b!3836671))

(assert (= (and d!1139039 (not c!668996)) b!3836673))

(assert (= (or b!3836671 b!3836673) bm!281893))

(assert (= (and d!1139039 (not res!1552886)) b!3836676))

(assert (= (and b!3836676 res!1552884) b!3836674))

(assert (= (and b!3836674 res!1552885) b!3836675))

(assert (= (and b!3836675 res!1552880) b!3836672))

(assert (= (and b!3836672 res!1552882) b!3836669))

(assert (= (and b!3836669 res!1552881) b!3836668))

(assert (= (and b!3836668 res!1552883) b!3836670))

(declare-fun m!4391125 () Bool)

(assert (=> b!3836668 m!4391125))

(declare-fun m!4391127 () Bool)

(assert (=> b!3836668 m!4391127))

(assert (=> b!3836668 m!4391127))

(declare-fun m!4391129 () Bool)

(assert (=> b!3836668 m!4391129))

(assert (=> b!3836668 m!4391129))

(declare-fun m!4391131 () Bool)

(assert (=> b!3836668 m!4391131))

(declare-fun m!4391133 () Bool)

(assert (=> d!1139039 m!4391133))

(assert (=> d!1139039 m!4390243))

(assert (=> d!1139039 m!4390245))

(assert (=> d!1139039 m!4391051))

(declare-fun m!4391135 () Bool)

(assert (=> bm!281893 m!4391135))

(assert (=> b!3836674 m!4391125))

(assert (=> b!3836674 m!4391127))

(assert (=> b!3836674 m!4391127))

(assert (=> b!3836674 m!4391129))

(assert (=> b!3836675 m!4391125))

(declare-fun m!4391137 () Bool)

(assert (=> b!3836675 m!4391137))

(assert (=> b!3836675 m!4389879))

(assert (=> b!3836672 m!4391125))

(assert (=> b!3836672 m!4391127))

(assert (=> b!3836672 m!4391127))

(assert (=> b!3836672 m!4391129))

(assert (=> b!3836672 m!4391129))

(declare-fun m!4391139 () Bool)

(assert (=> b!3836672 m!4391139))

(declare-fun m!4391141 () Bool)

(assert (=> b!3836673 m!4391141))

(assert (=> b!3836669 m!4391125))

(declare-fun m!4391143 () Bool)

(assert (=> b!3836669 m!4391143))

(assert (=> b!3836669 m!4391143))

(declare-fun m!4391145 () Bool)

(assert (=> b!3836669 m!4391145))

(assert (=> b!3836670 m!4391125))

(declare-fun m!4391147 () Bool)

(assert (=> b!3836670 m!4391147))

(declare-fun m!4391149 () Bool)

(assert (=> b!3836676 m!4391149))

(assert (=> b!3835906 d!1139039))

(declare-fun d!1139041 () Bool)

(declare-fun lt!1331434 () Int)

(assert (=> d!1139041 (>= lt!1331434 0)))

(declare-fun e!2369465 () Int)

(assert (=> d!1139041 (= lt!1331434 e!2369465)))

(declare-fun c!668997 () Bool)

(assert (=> d!1139041 (= c!668997 ((_ is Nil!40511) (_2!22977 lt!1331192)))))

(assert (=> d!1139041 (= (size!30516 (_2!22977 lt!1331192)) lt!1331434)))

(declare-fun b!3836677 () Bool)

(assert (=> b!3836677 (= e!2369465 0)))

(declare-fun b!3836678 () Bool)

(assert (=> b!3836678 (= e!2369465 (+ 1 (size!30516 (t!309622 (_2!22977 lt!1331192)))))))

(assert (= (and d!1139041 c!668997) b!3836677))

(assert (= (and d!1139041 (not c!668997)) b!3836678))

(declare-fun m!4391151 () Bool)

(assert (=> b!3836678 m!4391151))

(assert (=> b!3835581 d!1139041))

(assert (=> b!3835581 d!1138575))

(declare-fun bs!582529 () Bool)

(declare-fun d!1139043 () Bool)

(assert (= bs!582529 (and d!1139043 d!1138993)))

(declare-fun lambda!126071 () Int)

(assert (=> bs!582529 (= lambda!126071 lambda!126066)))

(assert (=> d!1139043 true))

(declare-fun lt!1331437 () Bool)

(assert (=> d!1139043 (= lt!1331437 (rulesValidInductive!2202 thiss!20629 rules!2768))))

(assert (=> d!1139043 (= lt!1331437 (forall!8271 rules!2768 lambda!126071))))

(assert (=> d!1139043 (= (rulesValid!2412 thiss!20629 rules!2768) lt!1331437)))

(declare-fun bs!582530 () Bool)

(assert (= bs!582530 d!1139043))

(assert (=> bs!582530 m!4390247))

(declare-fun m!4391153 () Bool)

(assert (=> bs!582530 m!4391153))

(assert (=> d!1138669 d!1139043))

(assert (=> b!3835761 d!1138827))

(declare-fun d!1139045 () Bool)

(assert (=> d!1139045 (= (head!8072 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))) (h!45931 (++!10237 lt!1331183 (_2!22978 (v!38947 lt!1331185)))))))

(assert (=> b!3835761 d!1139045))

(declare-fun d!1139047 () Bool)

(declare-fun lt!1331438 () Int)

(assert (=> d!1139047 (>= lt!1331438 0)))

(declare-fun e!2369466 () Int)

(assert (=> d!1139047 (= lt!1331438 e!2369466)))

(declare-fun c!668998 () Bool)

(assert (=> d!1139047 (= c!668998 ((_ is Nil!40511) (originalCharacters!6840 (_1!22978 (v!38947 lt!1331185)))))))

(assert (=> d!1139047 (= (size!30516 (originalCharacters!6840 (_1!22978 (v!38947 lt!1331185)))) lt!1331438)))

(declare-fun b!3836679 () Bool)

(assert (=> b!3836679 (= e!2369466 0)))

(declare-fun b!3836680 () Bool)

(assert (=> b!3836680 (= e!2369466 (+ 1 (size!30516 (t!309622 (originalCharacters!6840 (_1!22978 (v!38947 lt!1331185)))))))))

(assert (= (and d!1139047 c!668998) b!3836679))

(assert (= (and d!1139047 (not c!668998)) b!3836680))

(declare-fun m!4391155 () Bool)

(assert (=> b!3836680 m!4391155))

(assert (=> d!1138573 d!1139047))

(declare-fun e!2369468 () Bool)

(declare-fun b!3836684 () Bool)

(declare-fun lt!1331439 () List!40635)

(assert (=> b!3836684 (= e!2369468 (or (not (= (_2!22978 (v!38947 lt!1331185)) Nil!40511)) (= lt!1331439 (t!309622 lt!1331183))))))

(declare-fun b!3836683 () Bool)

(declare-fun res!1552887 () Bool)

(assert (=> b!3836683 (=> (not res!1552887) (not e!2369468))))

(assert (=> b!3836683 (= res!1552887 (= (size!30516 lt!1331439) (+ (size!30516 (t!309622 lt!1331183)) (size!30516 (_2!22978 (v!38947 lt!1331185))))))))

(declare-fun b!3836682 () Bool)

(declare-fun e!2369467 () List!40635)

(assert (=> b!3836682 (= e!2369467 (Cons!40511 (h!45931 (t!309622 lt!1331183)) (++!10237 (t!309622 (t!309622 lt!1331183)) (_2!22978 (v!38947 lt!1331185)))))))

(declare-fun d!1139049 () Bool)

(assert (=> d!1139049 e!2369468))

(declare-fun res!1552888 () Bool)

(assert (=> d!1139049 (=> (not res!1552888) (not e!2369468))))

(assert (=> d!1139049 (= res!1552888 (= (content!6018 lt!1331439) ((_ map or) (content!6018 (t!309622 lt!1331183)) (content!6018 (_2!22978 (v!38947 lt!1331185))))))))

(assert (=> d!1139049 (= lt!1331439 e!2369467)))

(declare-fun c!668999 () Bool)

(assert (=> d!1139049 (= c!668999 ((_ is Nil!40511) (t!309622 lt!1331183)))))

(assert (=> d!1139049 (= (++!10237 (t!309622 lt!1331183) (_2!22978 (v!38947 lt!1331185))) lt!1331439)))

(declare-fun b!3836681 () Bool)

(assert (=> b!3836681 (= e!2369467 (_2!22978 (v!38947 lt!1331185)))))

(assert (= (and d!1139049 c!668999) b!3836681))

(assert (= (and d!1139049 (not c!668999)) b!3836682))

(assert (= (and d!1139049 res!1552888) b!3836683))

(assert (= (and b!3836683 res!1552887) b!3836684))

(declare-fun m!4391157 () Bool)

(assert (=> b!3836683 m!4391157))

(assert (=> b!3836683 m!4390017))

(assert (=> b!3836683 m!4390101))

(declare-fun m!4391159 () Bool)

(assert (=> b!3836682 m!4391159))

(declare-fun m!4391161 () Bool)

(assert (=> d!1139049 m!4391161))

(assert (=> d!1139049 m!4390569))

(assert (=> d!1139049 m!4390113))

(assert (=> b!3835755 d!1139049))

(declare-fun d!1139051 () Bool)

(assert (=> d!1139051 (= (inv!54654 (tag!7100 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (= (mod (str.len (value!198473 (tag!7100 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3835939 d!1139051))

(declare-fun d!1139053 () Bool)

(declare-fun res!1552889 () Bool)

(declare-fun e!2369469 () Bool)

(assert (=> d!1139053 (=> (not res!1552889) (not e!2369469))))

(assert (=> d!1139053 (= res!1552889 (semiInverseModEq!2677 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))))))

(assert (=> d!1139053 (= (inv!54657 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) e!2369469)))

(declare-fun b!3836685 () Bool)

(assert (=> b!3836685 (= e!2369469 (equivClasses!2576 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toValue!8652 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))))))

(assert (= (and d!1139053 res!1552889) b!3836685))

(declare-fun m!4391163 () Bool)

(assert (=> d!1139053 m!4391163))

(declare-fun m!4391165 () Bool)

(assert (=> b!3836685 m!4391165))

(assert (=> b!3835939 d!1139053))

(assert (=> b!3835902 d!1138817))

(declare-fun d!1139055 () Bool)

(declare-fun dynLambda!17554 (Int BalanceConc!24496) TokenValue!6470)

(assert (=> d!1139055 (= (apply!9485 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))) (seqFromList!4513 (originalCharacters!6840 (_1!22978 (get!13436 lt!1331283))))) (dynLambda!17554 (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283))))) (seqFromList!4513 (originalCharacters!6840 (_1!22978 (get!13436 lt!1331283))))))))

(declare-fun b_lambda!112177 () Bool)

(assert (=> (not b_lambda!112177) (not d!1139055)))

(declare-fun tb!220483 () Bool)

(declare-fun t!309816 () Bool)

(assert (=> (and b!3835559 (= (toValue!8652 (transformation!6240 (h!45933 rules!2768))) (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309816) tb!220483))

(declare-fun result!268724 () Bool)

(assert (=> tb!220483 (= result!268724 (inv!21 (dynLambda!17554 (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283))))) (seqFromList!4513 (originalCharacters!6840 (_1!22978 (get!13436 lt!1331283)))))))))

(declare-fun m!4391167 () Bool)

(assert (=> tb!220483 m!4391167))

(assert (=> d!1139055 t!309816))

(declare-fun b_and!285403 () Bool)

(assert (= b_and!285255 (and (=> t!309816 result!268724) b_and!285403)))

(declare-fun tb!220485 () Bool)

(declare-fun t!309818 () Bool)

(assert (=> (and b!3835982 (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309818) tb!220485))

(declare-fun result!268728 () Bool)

(assert (= result!268728 result!268724))

(assert (=> d!1139055 t!309818))

(declare-fun b_and!285405 () Bool)

(assert (= b_and!285315 (and (=> t!309818 result!268728) b_and!285405)))

(declare-fun tb!220487 () Bool)

(declare-fun t!309820 () Bool)

(assert (=> (and b!3835940 (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309820) tb!220487))

(declare-fun result!268730 () Bool)

(assert (= result!268730 result!268724))

(assert (=> d!1139055 t!309820))

(declare-fun b_and!285407 () Bool)

(assert (= b_and!285307 (and (=> t!309820 result!268730) b_and!285407)))

(declare-fun t!309822 () Bool)

(declare-fun tb!220489 () Bool)

(assert (=> (and b!3835565 (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309822) tb!220489))

(declare-fun result!268732 () Bool)

(assert (= result!268732 result!268724))

(assert (=> d!1139055 t!309822))

(declare-fun b_and!285409 () Bool)

(assert (= b_and!285247 (and (=> t!309822 result!268732) b_and!285409)))

(declare-fun t!309824 () Bool)

(declare-fun tb!220491 () Bool)

(assert (=> (and b!3835977 (= (toValue!8652 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309824) tb!220491))

(declare-fun result!268734 () Bool)

(assert (= result!268734 result!268724))

(assert (=> d!1139055 t!309824))

(declare-fun b_and!285411 () Bool)

(assert (= b_and!285311 (and (=> t!309824 result!268734) b_and!285411)))

(declare-fun tb!220493 () Bool)

(declare-fun t!309826 () Bool)

(assert (=> (and b!3835566 (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309826) tb!220493))

(declare-fun result!268736 () Bool)

(assert (= result!268736 result!268724))

(assert (=> d!1139055 t!309826))

(declare-fun b_and!285413 () Bool)

(assert (= b_and!285251 (and (=> t!309826 result!268736) b_and!285413)))

(assert (=> d!1139055 m!4390257))

(declare-fun m!4391169 () Bool)

(assert (=> d!1139055 m!4391169))

(assert (=> b!3835902 d!1139055))

(declare-fun d!1139057 () Bool)

(declare-fun fromListB!2087 (List!40635) BalanceConc!24496)

(assert (=> d!1139057 (= (seqFromList!4513 (originalCharacters!6840 (_1!22978 (get!13436 lt!1331283)))) (fromListB!2087 (originalCharacters!6840 (_1!22978 (get!13436 lt!1331283)))))))

(declare-fun bs!582531 () Bool)

(assert (= bs!582531 d!1139057))

(declare-fun m!4391171 () Bool)

(assert (=> bs!582531 m!4391171))

(assert (=> b!3835902 d!1139057))

(declare-fun d!1139059 () Bool)

(assert (=> d!1139059 (= (inv!17 (value!198474 (h!45932 suffixTokens!72))) (= (charsToBigInt!1 (text!45738 (value!198474 (h!45932 suffixTokens!72)))) (value!198466 (value!198474 (h!45932 suffixTokens!72)))))))

(declare-fun bs!582532 () Bool)

(assert (= bs!582532 d!1139059))

(declare-fun m!4391173 () Bool)

(assert (=> bs!582532 m!4391173))

(assert (=> b!3835912 d!1139059))

(declare-fun d!1139061 () Bool)

(assert (=> d!1139061 (= (inv!54660 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72)))) (isBalanced!3620 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72))))))))

(declare-fun bs!582533 () Bool)

(assert (= bs!582533 d!1139061))

(declare-fun m!4391175 () Bool)

(assert (=> bs!582533 m!4391175))

(assert (=> tb!220345 d!1139061))

(declare-fun d!1139063 () Bool)

(declare-fun nullableFct!1110 (Regex!11145) Bool)

(assert (=> d!1139063 (= (nullable!3877 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (nullableFct!1110 (regex!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))))

(declare-fun bs!582534 () Bool)

(assert (= bs!582534 d!1139063))

(declare-fun m!4391177 () Bool)

(assert (=> bs!582534 m!4391177))

(assert (=> b!3835737 d!1139063))

(declare-fun d!1139065 () Bool)

(declare-fun res!1552890 () Bool)

(declare-fun e!2369473 () Bool)

(assert (=> d!1139065 (=> (not res!1552890) (not e!2369473))))

(assert (=> d!1139065 (= res!1552890 (not (isEmpty!23922 (originalCharacters!6840 (h!45932 (t!309623 prefixTokens!80))))))))

(assert (=> d!1139065 (= (inv!54658 (h!45932 (t!309623 prefixTokens!80))) e!2369473)))

(declare-fun b!3836688 () Bool)

(declare-fun res!1552891 () Bool)

(assert (=> b!3836688 (=> (not res!1552891) (not e!2369473))))

(assert (=> b!3836688 (= res!1552891 (= (originalCharacters!6840 (h!45932 (t!309623 prefixTokens!80))) (list!15092 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (value!198474 (h!45932 (t!309623 prefixTokens!80)))))))))

(declare-fun b!3836689 () Bool)

(assert (=> b!3836689 (= e!2369473 (= (size!30515 (h!45932 (t!309623 prefixTokens!80))) (size!30516 (originalCharacters!6840 (h!45932 (t!309623 prefixTokens!80))))))))

(assert (= (and d!1139065 res!1552890) b!3836688))

(assert (= (and b!3836688 res!1552891) b!3836689))

(declare-fun b_lambda!112179 () Bool)

(assert (=> (not b_lambda!112179) (not b!3836688)))

(declare-fun t!309828 () Bool)

(declare-fun tb!220495 () Bool)

(assert (=> (and b!3835565 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) t!309828) tb!220495))

(declare-fun b!3836690 () Bool)

(declare-fun e!2369474 () Bool)

(declare-fun tp!1161256 () Bool)

(assert (=> b!3836690 (= e!2369474 (and (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (value!198474 (h!45932 (t!309623 prefixTokens!80)))))) tp!1161256))))

(declare-fun result!268738 () Bool)

(assert (=> tb!220495 (= result!268738 (and (inv!54660 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (value!198474 (h!45932 (t!309623 prefixTokens!80))))) e!2369474))))

(assert (= tb!220495 b!3836690))

(declare-fun m!4391179 () Bool)

(assert (=> b!3836690 m!4391179))

(declare-fun m!4391181 () Bool)

(assert (=> tb!220495 m!4391181))

(assert (=> b!3836688 t!309828))

(declare-fun b_and!285415 () Bool)

(assert (= b_and!285393 (and (=> t!309828 result!268738) b_and!285415)))

(declare-fun t!309830 () Bool)

(declare-fun tb!220497 () Bool)

(assert (=> (and b!3835982 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) t!309830) tb!220497))

(declare-fun result!268740 () Bool)

(assert (= result!268740 result!268738))

(assert (=> b!3836688 t!309830))

(declare-fun b_and!285417 () Bool)

(assert (= b_and!285401 (and (=> t!309830 result!268740) b_and!285417)))

(declare-fun tb!220499 () Bool)

(declare-fun t!309832 () Bool)

(assert (=> (and b!3835559 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) t!309832) tb!220499))

(declare-fun result!268742 () Bool)

(assert (= result!268742 result!268738))

(assert (=> b!3836688 t!309832))

(declare-fun b_and!285419 () Bool)

(assert (= b_and!285399 (and (=> t!309832 result!268742) b_and!285419)))

(declare-fun t!309834 () Bool)

(declare-fun tb!220501 () Bool)

(assert (=> (and b!3835566 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) t!309834) tb!220501))

(declare-fun result!268744 () Bool)

(assert (= result!268744 result!268738))

(assert (=> b!3836688 t!309834))

(declare-fun b_and!285421 () Bool)

(assert (= b_and!285397 (and (=> t!309834 result!268744) b_and!285421)))

(declare-fun tb!220503 () Bool)

(declare-fun t!309836 () Bool)

(assert (=> (and b!3835977 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) t!309836) tb!220503))

(declare-fun result!268746 () Bool)

(assert (= result!268746 result!268738))

(assert (=> b!3836688 t!309836))

(declare-fun b_and!285423 () Bool)

(assert (= b_and!285391 (and (=> t!309836 result!268746) b_and!285423)))

(declare-fun t!309838 () Bool)

(declare-fun tb!220505 () Bool)

(assert (=> (and b!3835940 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) t!309838) tb!220505))

(declare-fun result!268748 () Bool)

(assert (= result!268748 result!268738))

(assert (=> b!3836688 t!309838))

(declare-fun b_and!285425 () Bool)

(assert (= b_and!285395 (and (=> t!309838 result!268748) b_and!285425)))

(declare-fun m!4391183 () Bool)

(assert (=> d!1139065 m!4391183))

(declare-fun m!4391185 () Bool)

(assert (=> b!3836688 m!4391185))

(assert (=> b!3836688 m!4391185))

(declare-fun m!4391187 () Bool)

(assert (=> b!3836688 m!4391187))

(declare-fun m!4391189 () Bool)

(assert (=> b!3836689 m!4391189))

(assert (=> b!3835937 d!1139065))

(declare-fun d!1139067 () Bool)

(assert (=> d!1139067 (= (inv!54654 (tag!7100 (h!45933 (t!309624 rules!2768)))) (= (mod (str.len (value!198473 (tag!7100 (h!45933 (t!309624 rules!2768))))) 2) 0))))

(assert (=> b!3835976 d!1139067))

(declare-fun d!1139069 () Bool)

(declare-fun res!1552892 () Bool)

(declare-fun e!2369475 () Bool)

(assert (=> d!1139069 (=> (not res!1552892) (not e!2369475))))

(assert (=> d!1139069 (= res!1552892 (semiInverseModEq!2677 (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toValue!8652 (transformation!6240 (h!45933 (t!309624 rules!2768))))))))

(assert (=> d!1139069 (= (inv!54657 (transformation!6240 (h!45933 (t!309624 rules!2768)))) e!2369475)))

(declare-fun b!3836691 () Bool)

(assert (=> b!3836691 (= e!2369475 (equivClasses!2576 (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toValue!8652 (transformation!6240 (h!45933 (t!309624 rules!2768))))))))

(assert (= (and d!1139069 res!1552892) b!3836691))

(declare-fun m!4391191 () Bool)

(assert (=> d!1139069 m!4391191))

(declare-fun m!4391193 () Bool)

(assert (=> b!3836691 m!4391193))

(assert (=> b!3835976 d!1139069))

(declare-fun b!3836694 () Bool)

(declare-fun e!2369476 () Bool)

(declare-fun tp!1161261 () Bool)

(assert (=> b!3836694 (= e!2369476 tp!1161261)))

(declare-fun b!3836695 () Bool)

(declare-fun tp!1161258 () Bool)

(declare-fun tp!1161257 () Bool)

(assert (=> b!3836695 (= e!2369476 (and tp!1161258 tp!1161257))))

(assert (=> b!3835986 (= tp!1161121 e!2369476)))

(declare-fun b!3836692 () Bool)

(assert (=> b!3836692 (= e!2369476 tp_is_empty!19261)))

(declare-fun b!3836693 () Bool)

(declare-fun tp!1161259 () Bool)

(declare-fun tp!1161260 () Bool)

(assert (=> b!3836693 (= e!2369476 (and tp!1161259 tp!1161260))))

(assert (= (and b!3835986 ((_ is ElementMatch!11145) (regOne!22803 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836692))

(assert (= (and b!3835986 ((_ is Concat!17616) (regOne!22803 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836693))

(assert (= (and b!3835986 ((_ is Star!11145) (regOne!22803 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836694))

(assert (= (and b!3835986 ((_ is Union!11145) (regOne!22803 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836695))

(declare-fun b!3836698 () Bool)

(declare-fun e!2369477 () Bool)

(declare-fun tp!1161266 () Bool)

(assert (=> b!3836698 (= e!2369477 tp!1161266)))

(declare-fun b!3836699 () Bool)

(declare-fun tp!1161263 () Bool)

(declare-fun tp!1161262 () Bool)

(assert (=> b!3836699 (= e!2369477 (and tp!1161263 tp!1161262))))

(assert (=> b!3835986 (= tp!1161120 e!2369477)))

(declare-fun b!3836696 () Bool)

(assert (=> b!3836696 (= e!2369477 tp_is_empty!19261)))

(declare-fun b!3836697 () Bool)

(declare-fun tp!1161264 () Bool)

(declare-fun tp!1161265 () Bool)

(assert (=> b!3836697 (= e!2369477 (and tp!1161264 tp!1161265))))

(assert (= (and b!3835986 ((_ is ElementMatch!11145) (regTwo!22803 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836696))

(assert (= (and b!3835986 ((_ is Concat!17616) (regTwo!22803 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836697))

(assert (= (and b!3835986 ((_ is Star!11145) (regTwo!22803 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836698))

(assert (= (and b!3835986 ((_ is Union!11145) (regTwo!22803 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836699))

(declare-fun tp!1161274 () Bool)

(declare-fun tp!1161275 () Bool)

(declare-fun b!3836708 () Bool)

(declare-fun e!2369483 () Bool)

(assert (=> b!3836708 (= e!2369483 (and (inv!54659 (left!31333 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185))))))) tp!1161275 (inv!54659 (right!31663 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185))))))) tp!1161274))))

(declare-fun b!3836710 () Bool)

(declare-fun e!2369482 () Bool)

(declare-fun tp!1161273 () Bool)

(assert (=> b!3836710 (= e!2369482 tp!1161273)))

(declare-fun b!3836709 () Bool)

(declare-fun inv!54668 (IArray!24907) Bool)

(assert (=> b!3836709 (= e!2369483 (and (inv!54668 (xs!15757 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185))))))) e!2369482))))

(assert (=> b!3835751 (= tp!1160990 (and (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185)))))) e!2369483))))

(assert (= (and b!3835751 ((_ is Node!12451) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185))))))) b!3836708))

(assert (= b!3836709 b!3836710))

(assert (= (and b!3835751 ((_ is Leaf!19278) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))) (value!198474 (_1!22978 (v!38947 lt!1331185))))))) b!3836709))

(declare-fun m!4391195 () Bool)

(assert (=> b!3836708 m!4391195))

(declare-fun m!4391197 () Bool)

(assert (=> b!3836708 m!4391197))

(declare-fun m!4391199 () Bool)

(assert (=> b!3836709 m!4391199))

(assert (=> b!3835751 m!4390087))

(declare-fun b!3836713 () Bool)

(declare-fun e!2369484 () Bool)

(declare-fun tp!1161280 () Bool)

(assert (=> b!3836713 (= e!2369484 tp!1161280)))

(declare-fun b!3836714 () Bool)

(declare-fun tp!1161277 () Bool)

(declare-fun tp!1161276 () Bool)

(assert (=> b!3836714 (= e!2369484 (and tp!1161277 tp!1161276))))

(assert (=> b!3835985 (= tp!1161124 e!2369484)))

(declare-fun b!3836711 () Bool)

(assert (=> b!3836711 (= e!2369484 tp_is_empty!19261)))

(declare-fun b!3836712 () Bool)

(declare-fun tp!1161278 () Bool)

(declare-fun tp!1161279 () Bool)

(assert (=> b!3836712 (= e!2369484 (and tp!1161278 tp!1161279))))

(assert (= (and b!3835985 ((_ is ElementMatch!11145) (reg!11474 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836711))

(assert (= (and b!3835985 ((_ is Concat!17616) (reg!11474 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836712))

(assert (= (and b!3835985 ((_ is Star!11145) (reg!11474 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836713))

(assert (= (and b!3835985 ((_ is Union!11145) (reg!11474 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836714))

(declare-fun b!3836717 () Bool)

(declare-fun e!2369485 () Bool)

(declare-fun tp!1161285 () Bool)

(assert (=> b!3836717 (= e!2369485 tp!1161285)))

(declare-fun b!3836718 () Bool)

(declare-fun tp!1161282 () Bool)

(declare-fun tp!1161281 () Bool)

(assert (=> b!3836718 (= e!2369485 (and tp!1161282 tp!1161281))))

(assert (=> b!3835984 (= tp!1161122 e!2369485)))

(declare-fun b!3836715 () Bool)

(assert (=> b!3836715 (= e!2369485 tp_is_empty!19261)))

(declare-fun b!3836716 () Bool)

(declare-fun tp!1161283 () Bool)

(declare-fun tp!1161284 () Bool)

(assert (=> b!3836716 (= e!2369485 (and tp!1161283 tp!1161284))))

(assert (= (and b!3835984 ((_ is ElementMatch!11145) (regOne!22802 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836715))

(assert (= (and b!3835984 ((_ is Concat!17616) (regOne!22802 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836716))

(assert (= (and b!3835984 ((_ is Star!11145) (regOne!22802 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836717))

(assert (= (and b!3835984 ((_ is Union!11145) (regOne!22802 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836718))

(declare-fun b!3836721 () Bool)

(declare-fun e!2369486 () Bool)

(declare-fun tp!1161290 () Bool)

(assert (=> b!3836721 (= e!2369486 tp!1161290)))

(declare-fun b!3836722 () Bool)

(declare-fun tp!1161287 () Bool)

(declare-fun tp!1161286 () Bool)

(assert (=> b!3836722 (= e!2369486 (and tp!1161287 tp!1161286))))

(assert (=> b!3835984 (= tp!1161123 e!2369486)))

(declare-fun b!3836719 () Bool)

(assert (=> b!3836719 (= e!2369486 tp_is_empty!19261)))

(declare-fun b!3836720 () Bool)

(declare-fun tp!1161288 () Bool)

(declare-fun tp!1161289 () Bool)

(assert (=> b!3836720 (= e!2369486 (and tp!1161288 tp!1161289))))

(assert (= (and b!3835984 ((_ is ElementMatch!11145) (regTwo!22802 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836719))

(assert (= (and b!3835984 ((_ is Concat!17616) (regTwo!22802 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836720))

(assert (= (and b!3835984 ((_ is Star!11145) (regTwo!22802 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836721))

(assert (= (and b!3835984 ((_ is Union!11145) (regTwo!22802 (regex!6240 (rule!9074 (h!45932 prefixTokens!80)))))) b!3836722))

(declare-fun b!3836725 () Bool)

(declare-fun e!2369487 () Bool)

(declare-fun tp!1161295 () Bool)

(assert (=> b!3836725 (= e!2369487 tp!1161295)))

(declare-fun b!3836726 () Bool)

(declare-fun tp!1161292 () Bool)

(declare-fun tp!1161291 () Bool)

(assert (=> b!3836726 (= e!2369487 (and tp!1161292 tp!1161291))))

(assert (=> b!3835954 (= tp!1161087 e!2369487)))

(declare-fun b!3836723 () Bool)

(assert (=> b!3836723 (= e!2369487 tp_is_empty!19261)))

(declare-fun b!3836724 () Bool)

(declare-fun tp!1161293 () Bool)

(declare-fun tp!1161294 () Bool)

(assert (=> b!3836724 (= e!2369487 (and tp!1161293 tp!1161294))))

(assert (= (and b!3835954 ((_ is ElementMatch!11145) (regOne!22803 (regex!6240 (h!45933 rules!2768))))) b!3836723))

(assert (= (and b!3835954 ((_ is Concat!17616) (regOne!22803 (regex!6240 (h!45933 rules!2768))))) b!3836724))

(assert (= (and b!3835954 ((_ is Star!11145) (regOne!22803 (regex!6240 (h!45933 rules!2768))))) b!3836725))

(assert (= (and b!3835954 ((_ is Union!11145) (regOne!22803 (regex!6240 (h!45933 rules!2768))))) b!3836726))

(declare-fun b!3836729 () Bool)

(declare-fun e!2369488 () Bool)

(declare-fun tp!1161300 () Bool)

(assert (=> b!3836729 (= e!2369488 tp!1161300)))

(declare-fun b!3836730 () Bool)

(declare-fun tp!1161297 () Bool)

(declare-fun tp!1161296 () Bool)

(assert (=> b!3836730 (= e!2369488 (and tp!1161297 tp!1161296))))

(assert (=> b!3835954 (= tp!1161086 e!2369488)))

(declare-fun b!3836727 () Bool)

(assert (=> b!3836727 (= e!2369488 tp_is_empty!19261)))

(declare-fun b!3836728 () Bool)

(declare-fun tp!1161298 () Bool)

(declare-fun tp!1161299 () Bool)

(assert (=> b!3836728 (= e!2369488 (and tp!1161298 tp!1161299))))

(assert (= (and b!3835954 ((_ is ElementMatch!11145) (regTwo!22803 (regex!6240 (h!45933 rules!2768))))) b!3836727))

(assert (= (and b!3835954 ((_ is Concat!17616) (regTwo!22803 (regex!6240 (h!45933 rules!2768))))) b!3836728))

(assert (= (and b!3835954 ((_ is Star!11145) (regTwo!22803 (regex!6240 (h!45933 rules!2768))))) b!3836729))

(assert (= (and b!3835954 ((_ is Union!11145) (regTwo!22803 (regex!6240 (h!45933 rules!2768))))) b!3836730))

(declare-fun b!3836731 () Bool)

(declare-fun e!2369489 () Bool)

(declare-fun tp!1161301 () Bool)

(assert (=> b!3836731 (= e!2369489 (and tp_is_empty!19261 tp!1161301))))

(assert (=> b!3835978 (= tp!1161114 e!2369489)))

(assert (= (and b!3835978 ((_ is Cons!40511) (t!309622 (originalCharacters!6840 (h!45932 suffixTokens!72))))) b!3836731))

(declare-fun b!3836732 () Bool)

(declare-fun e!2369490 () Bool)

(declare-fun tp!1161302 () Bool)

(assert (=> b!3836732 (= e!2369490 (and tp_is_empty!19261 tp!1161302))))

(assert (=> b!3835962 (= tp!1161096 e!2369490)))

(assert (= (and b!3835962 ((_ is Cons!40511) (t!309622 (t!309622 suffixResult!91)))) b!3836732))

(declare-fun b!3836733 () Bool)

(declare-fun e!2369491 () Bool)

(declare-fun tp!1161303 () Bool)

(assert (=> b!3836733 (= e!2369491 (and tp_is_empty!19261 tp!1161303))))

(assert (=> b!3835960 (= tp!1161094 e!2369491)))

(assert (= (and b!3835960 ((_ is Cons!40511) (t!309622 (t!309622 prefix!426)))) b!3836733))

(declare-fun b!3836736 () Bool)

(declare-fun e!2369492 () Bool)

(declare-fun tp!1161308 () Bool)

(assert (=> b!3836736 (= e!2369492 tp!1161308)))

(declare-fun b!3836737 () Bool)

(declare-fun tp!1161305 () Bool)

(declare-fun tp!1161304 () Bool)

(assert (=> b!3836737 (= e!2369492 (and tp!1161305 tp!1161304))))

(assert (=> b!3835981 (= tp!1161118 e!2369492)))

(declare-fun b!3836734 () Bool)

(assert (=> b!3836734 (= e!2369492 tp_is_empty!19261)))

(declare-fun b!3836735 () Bool)

(declare-fun tp!1161306 () Bool)

(declare-fun tp!1161307 () Bool)

(assert (=> b!3836735 (= e!2369492 (and tp!1161306 tp!1161307))))

(assert (= (and b!3835981 ((_ is ElementMatch!11145) (regex!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) b!3836734))

(assert (= (and b!3835981 ((_ is Concat!17616) (regex!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) b!3836735))

(assert (= (and b!3835981 ((_ is Star!11145) (regex!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) b!3836736))

(assert (= (and b!3835981 ((_ is Union!11145) (regex!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) b!3836737))

(declare-fun b!3836738 () Bool)

(declare-fun e!2369493 () Bool)

(declare-fun tp!1161309 () Bool)

(assert (=> b!3836738 (= e!2369493 (and tp_is_empty!19261 tp!1161309))))

(assert (=> b!3835980 (= tp!1161117 e!2369493)))

(assert (= (and b!3835980 ((_ is Cons!40511) (originalCharacters!6840 (h!45932 (t!309623 suffixTokens!72))))) b!3836738))

(declare-fun b!3836739 () Bool)

(declare-fun e!2369494 () Bool)

(declare-fun tp!1161310 () Bool)

(assert (=> b!3836739 (= e!2369494 (and tp_is_empty!19261 tp!1161310))))

(assert (=> b!3835961 (= tp!1161095 e!2369494)))

(assert (= (and b!3835961 ((_ is Cons!40511) (t!309622 (t!309622 suffix!1176)))) b!3836739))

(declare-fun b!3836742 () Bool)

(declare-fun e!2369495 () Bool)

(declare-fun tp!1161315 () Bool)

(assert (=> b!3836742 (= e!2369495 tp!1161315)))

(declare-fun b!3836743 () Bool)

(declare-fun tp!1161312 () Bool)

(declare-fun tp!1161311 () Bool)

(assert (=> b!3836743 (= e!2369495 (and tp!1161312 tp!1161311))))

(assert (=> b!3835953 (= tp!1161090 e!2369495)))

(declare-fun b!3836740 () Bool)

(assert (=> b!3836740 (= e!2369495 tp_is_empty!19261)))

(declare-fun b!3836741 () Bool)

(declare-fun tp!1161313 () Bool)

(declare-fun tp!1161314 () Bool)

(assert (=> b!3836741 (= e!2369495 (and tp!1161313 tp!1161314))))

(assert (= (and b!3835953 ((_ is ElementMatch!11145) (reg!11474 (regex!6240 (h!45933 rules!2768))))) b!3836740))

(assert (= (and b!3835953 ((_ is Concat!17616) (reg!11474 (regex!6240 (h!45933 rules!2768))))) b!3836741))

(assert (= (and b!3835953 ((_ is Star!11145) (reg!11474 (regex!6240 (h!45933 rules!2768))))) b!3836742))

(assert (= (and b!3835953 ((_ is Union!11145) (reg!11474 (regex!6240 (h!45933 rules!2768))))) b!3836743))

(declare-fun b!3836746 () Bool)

(declare-fun e!2369496 () Bool)

(declare-fun tp!1161320 () Bool)

(assert (=> b!3836746 (= e!2369496 tp!1161320)))

(declare-fun b!3836747 () Bool)

(declare-fun tp!1161317 () Bool)

(declare-fun tp!1161316 () Bool)

(assert (=> b!3836747 (= e!2369496 (and tp!1161317 tp!1161316))))

(assert (=> b!3835952 (= tp!1161088 e!2369496)))

(declare-fun b!3836744 () Bool)

(assert (=> b!3836744 (= e!2369496 tp_is_empty!19261)))

(declare-fun b!3836745 () Bool)

(declare-fun tp!1161318 () Bool)

(declare-fun tp!1161319 () Bool)

(assert (=> b!3836745 (= e!2369496 (and tp!1161318 tp!1161319))))

(assert (= (and b!3835952 ((_ is ElementMatch!11145) (regOne!22802 (regex!6240 (h!45933 rules!2768))))) b!3836744))

(assert (= (and b!3835952 ((_ is Concat!17616) (regOne!22802 (regex!6240 (h!45933 rules!2768))))) b!3836745))

(assert (= (and b!3835952 ((_ is Star!11145) (regOne!22802 (regex!6240 (h!45933 rules!2768))))) b!3836746))

(assert (= (and b!3835952 ((_ is Union!11145) (regOne!22802 (regex!6240 (h!45933 rules!2768))))) b!3836747))

(declare-fun b!3836750 () Bool)

(declare-fun e!2369497 () Bool)

(declare-fun tp!1161325 () Bool)

(assert (=> b!3836750 (= e!2369497 tp!1161325)))

(declare-fun b!3836751 () Bool)

(declare-fun tp!1161322 () Bool)

(declare-fun tp!1161321 () Bool)

(assert (=> b!3836751 (= e!2369497 (and tp!1161322 tp!1161321))))

(assert (=> b!3835952 (= tp!1161089 e!2369497)))

(declare-fun b!3836748 () Bool)

(assert (=> b!3836748 (= e!2369497 tp_is_empty!19261)))

(declare-fun b!3836749 () Bool)

(declare-fun tp!1161323 () Bool)

(declare-fun tp!1161324 () Bool)

(assert (=> b!3836749 (= e!2369497 (and tp!1161323 tp!1161324))))

(assert (= (and b!3835952 ((_ is ElementMatch!11145) (regTwo!22802 (regex!6240 (h!45933 rules!2768))))) b!3836748))

(assert (= (and b!3835952 ((_ is Concat!17616) (regTwo!22802 (regex!6240 (h!45933 rules!2768))))) b!3836749))

(assert (= (and b!3835952 ((_ is Star!11145) (regTwo!22802 (regex!6240 (h!45933 rules!2768))))) b!3836750))

(assert (= (and b!3835952 ((_ is Union!11145) (regTwo!22802 (regex!6240 (h!45933 rules!2768))))) b!3836751))

(declare-fun tp!1161327 () Bool)

(declare-fun e!2369499 () Bool)

(declare-fun b!3836752 () Bool)

(declare-fun tp!1161328 () Bool)

(assert (=> b!3836752 (= e!2369499 (and (inv!54659 (left!31333 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80)))))) tp!1161328 (inv!54659 (right!31663 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80)))))) tp!1161327))))

(declare-fun b!3836754 () Bool)

(declare-fun e!2369498 () Bool)

(declare-fun tp!1161326 () Bool)

(assert (=> b!3836754 (= e!2369498 tp!1161326)))

(declare-fun b!3836753 () Bool)

(assert (=> b!3836753 (= e!2369499 (and (inv!54668 (xs!15757 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80)))))) e!2369498))))

(assert (=> b!3835638 (= tp!1160989 (and (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80))))) e!2369499))))

(assert (= (and b!3835638 ((_ is Node!12451) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80)))))) b!3836752))

(assert (= b!3836753 b!3836754))

(assert (= (and b!3835638 ((_ is Leaf!19278) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (value!198474 (h!45932 prefixTokens!80)))))) b!3836753))

(declare-fun m!4391201 () Bool)

(assert (=> b!3836752 m!4391201))

(declare-fun m!4391203 () Bool)

(assert (=> b!3836752 m!4391203))

(declare-fun m!4391205 () Bool)

(assert (=> b!3836753 m!4391205))

(assert (=> b!3835638 m!4389945))

(declare-fun b!3836757 () Bool)

(declare-fun e!2369500 () Bool)

(declare-fun tp!1161333 () Bool)

(assert (=> b!3836757 (= e!2369500 tp!1161333)))

(declare-fun b!3836758 () Bool)

(declare-fun tp!1161330 () Bool)

(declare-fun tp!1161329 () Bool)

(assert (=> b!3836758 (= e!2369500 (and tp!1161330 tp!1161329))))

(assert (=> b!3835966 (= tp!1161098 e!2369500)))

(declare-fun b!3836755 () Bool)

(assert (=> b!3836755 (= e!2369500 tp_is_empty!19261)))

(declare-fun b!3836756 () Bool)

(declare-fun tp!1161331 () Bool)

(declare-fun tp!1161332 () Bool)

(assert (=> b!3836756 (= e!2369500 (and tp!1161331 tp!1161332))))

(assert (= (and b!3835966 ((_ is ElementMatch!11145) (regOne!22803 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836755))

(assert (= (and b!3835966 ((_ is Concat!17616) (regOne!22803 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836756))

(assert (= (and b!3835966 ((_ is Star!11145) (regOne!22803 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836757))

(assert (= (and b!3835966 ((_ is Union!11145) (regOne!22803 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836758))

(declare-fun b!3836761 () Bool)

(declare-fun e!2369501 () Bool)

(declare-fun tp!1161338 () Bool)

(assert (=> b!3836761 (= e!2369501 tp!1161338)))

(declare-fun b!3836762 () Bool)

(declare-fun tp!1161335 () Bool)

(declare-fun tp!1161334 () Bool)

(assert (=> b!3836762 (= e!2369501 (and tp!1161335 tp!1161334))))

(assert (=> b!3835966 (= tp!1161097 e!2369501)))

(declare-fun b!3836759 () Bool)

(assert (=> b!3836759 (= e!2369501 tp_is_empty!19261)))

(declare-fun b!3836760 () Bool)

(declare-fun tp!1161336 () Bool)

(declare-fun tp!1161337 () Bool)

(assert (=> b!3836760 (= e!2369501 (and tp!1161336 tp!1161337))))

(assert (= (and b!3835966 ((_ is ElementMatch!11145) (regTwo!22803 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836759))

(assert (= (and b!3835966 ((_ is Concat!17616) (regTwo!22803 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836760))

(assert (= (and b!3835966 ((_ is Star!11145) (regTwo!22803 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836761))

(assert (= (and b!3835966 ((_ is Union!11145) (regTwo!22803 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836762))

(declare-fun b!3836765 () Bool)

(declare-fun e!2369502 () Bool)

(declare-fun tp!1161343 () Bool)

(assert (=> b!3836765 (= e!2369502 tp!1161343)))

(declare-fun b!3836766 () Bool)

(declare-fun tp!1161340 () Bool)

(declare-fun tp!1161339 () Bool)

(assert (=> b!3836766 (= e!2369502 (and tp!1161340 tp!1161339))))

(assert (=> b!3835965 (= tp!1161101 e!2369502)))

(declare-fun b!3836763 () Bool)

(assert (=> b!3836763 (= e!2369502 tp_is_empty!19261)))

(declare-fun b!3836764 () Bool)

(declare-fun tp!1161341 () Bool)

(declare-fun tp!1161342 () Bool)

(assert (=> b!3836764 (= e!2369502 (and tp!1161341 tp!1161342))))

(assert (= (and b!3835965 ((_ is ElementMatch!11145) (reg!11474 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836763))

(assert (= (and b!3835965 ((_ is Concat!17616) (reg!11474 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836764))

(assert (= (and b!3835965 ((_ is Star!11145) (reg!11474 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836765))

(assert (= (and b!3835965 ((_ is Union!11145) (reg!11474 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836766))

(declare-fun b!3836769 () Bool)

(declare-fun e!2369503 () Bool)

(declare-fun tp!1161348 () Bool)

(assert (=> b!3836769 (= e!2369503 tp!1161348)))

(declare-fun b!3836770 () Bool)

(declare-fun tp!1161345 () Bool)

(declare-fun tp!1161344 () Bool)

(assert (=> b!3836770 (= e!2369503 (and tp!1161345 tp!1161344))))

(assert (=> b!3835964 (= tp!1161099 e!2369503)))

(declare-fun b!3836767 () Bool)

(assert (=> b!3836767 (= e!2369503 tp_is_empty!19261)))

(declare-fun b!3836768 () Bool)

(declare-fun tp!1161346 () Bool)

(declare-fun tp!1161347 () Bool)

(assert (=> b!3836768 (= e!2369503 (and tp!1161346 tp!1161347))))

(assert (= (and b!3835964 ((_ is ElementMatch!11145) (regOne!22802 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836767))

(assert (= (and b!3835964 ((_ is Concat!17616) (regOne!22802 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836768))

(assert (= (and b!3835964 ((_ is Star!11145) (regOne!22802 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836769))

(assert (= (and b!3835964 ((_ is Union!11145) (regOne!22802 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836770))

(declare-fun b!3836773 () Bool)

(declare-fun e!2369504 () Bool)

(declare-fun tp!1161353 () Bool)

(assert (=> b!3836773 (= e!2369504 tp!1161353)))

(declare-fun b!3836774 () Bool)

(declare-fun tp!1161350 () Bool)

(declare-fun tp!1161349 () Bool)

(assert (=> b!3836774 (= e!2369504 (and tp!1161350 tp!1161349))))

(assert (=> b!3835964 (= tp!1161100 e!2369504)))

(declare-fun b!3836771 () Bool)

(assert (=> b!3836771 (= e!2369504 tp_is_empty!19261)))

(declare-fun b!3836772 () Bool)

(declare-fun tp!1161351 () Bool)

(declare-fun tp!1161352 () Bool)

(assert (=> b!3836772 (= e!2369504 (and tp!1161351 tp!1161352))))

(assert (= (and b!3835964 ((_ is ElementMatch!11145) (regTwo!22802 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836771))

(assert (= (and b!3835964 ((_ is Concat!17616) (regTwo!22802 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836772))

(assert (= (and b!3835964 ((_ is Star!11145) (regTwo!22802 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836773))

(assert (= (and b!3835964 ((_ is Union!11145) (regTwo!22802 (regex!6240 (rule!9074 (h!45932 suffixTokens!72)))))) b!3836774))

(declare-fun b!3836778 () Bool)

(declare-fun b_free!101973 () Bool)

(declare-fun b_next!102677 () Bool)

(assert (=> b!3836778 (= b_free!101973 (not b_next!102677))))

(declare-fun tb!220507 () Bool)

(declare-fun t!309840 () Bool)

(assert (=> (and b!3836778 (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309840) tb!220507))

(declare-fun result!268752 () Bool)

(assert (= result!268752 result!268724))

(assert (=> d!1139055 t!309840))

(declare-fun tp!1161355 () Bool)

(declare-fun b_and!285427 () Bool)

(assert (=> b!3836778 (= tp!1161355 (and (=> t!309840 result!268752) b_and!285427))))

(declare-fun b_free!101975 () Bool)

(declare-fun b_next!102679 () Bool)

(assert (=> b!3836778 (= b_free!101975 (not b_next!102679))))

(declare-fun t!309842 () Bool)

(declare-fun tb!220509 () Bool)

(assert (=> (and b!3836778 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) t!309842) tb!220509))

(declare-fun result!268754 () Bool)

(assert (= result!268754 result!268712))

(assert (=> b!3836663 t!309842))

(declare-fun tb!220511 () Bool)

(declare-fun t!309844 () Bool)

(assert (=> (and b!3836778 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) t!309844) tb!220511))

(declare-fun result!268756 () Bool)

(assert (= result!268756 result!268514))

(assert (=> b!3835632 t!309844))

(declare-fun t!309846 () Bool)

(declare-fun tb!220513 () Bool)

(assert (=> (and b!3836778 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))) t!309846) tb!220513))

(declare-fun result!268758 () Bool)

(assert (= result!268758 result!268522))

(assert (=> d!1138595 t!309846))

(declare-fun tb!220515 () Bool)

(declare-fun t!309848 () Bool)

(assert (=> (and b!3836778 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) t!309848) tb!220515))

(declare-fun result!268760 () Bool)

(assert (= result!268760 result!268738))

(assert (=> b!3836688 t!309848))

(declare-fun t!309850 () Bool)

(declare-fun tb!220517 () Bool)

(assert (=> (and b!3836778 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) t!309850) tb!220517))

(declare-fun result!268762 () Bool)

(assert (= result!268762 result!268574))

(assert (=> b!3835915 t!309850))

(declare-fun t!309852 () Bool)

(declare-fun tb!220519 () Bool)

(assert (=> (and b!3836778 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309852) tb!220519))

(declare-fun result!268764 () Bool)

(assert (= result!268764 result!268630))

(assert (=> d!1138853 t!309852))

(declare-fun b_and!285429 () Bool)

(declare-fun tp!1161358 () Bool)

(assert (=> b!3836778 (= tp!1161358 (and (=> t!309852 result!268764) (=> t!309842 result!268754) (=> t!309850 result!268762) (=> t!309844 result!268756) (=> t!309846 result!268758) (=> t!309848 result!268760) b_and!285429))))

(declare-fun tp!1161357 () Bool)

(declare-fun e!2369509 () Bool)

(declare-fun b!3836777 () Bool)

(declare-fun e!2369507 () Bool)

(assert (=> b!3836777 (= e!2369509 (and tp!1161357 (inv!54654 (tag!7100 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (inv!54657 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) e!2369507))))

(declare-fun b!3836776 () Bool)

(declare-fun e!2369505 () Bool)

(declare-fun tp!1161356 () Bool)

(assert (=> b!3836776 (= e!2369505 (and (inv!21 (value!198474 (h!45932 (t!309623 (t!309623 suffixTokens!72))))) e!2369509 tp!1161356))))

(assert (=> b!3836778 (= e!2369507 (and tp!1161355 tp!1161358))))

(declare-fun e!2369506 () Bool)

(declare-fun tp!1161354 () Bool)

(declare-fun b!3836775 () Bool)

(assert (=> b!3836775 (= e!2369506 (and (inv!54658 (h!45932 (t!309623 (t!309623 suffixTokens!72)))) e!2369505 tp!1161354))))

(assert (=> b!3835979 (= tp!1161115 e!2369506)))

(assert (= b!3836777 b!3836778))

(assert (= b!3836776 b!3836777))

(assert (= b!3836775 b!3836776))

(assert (= (and b!3835979 ((_ is Cons!40512) (t!309623 (t!309623 suffixTokens!72)))) b!3836775))

(declare-fun m!4391207 () Bool)

(assert (=> b!3836777 m!4391207))

(declare-fun m!4391209 () Bool)

(assert (=> b!3836777 m!4391209))

(declare-fun m!4391211 () Bool)

(assert (=> b!3836776 m!4391211))

(declare-fun m!4391213 () Bool)

(assert (=> b!3836775 m!4391213))

(declare-fun b!3836779 () Bool)

(declare-fun e!2369511 () Bool)

(declare-fun tp!1161359 () Bool)

(assert (=> b!3836779 (= e!2369511 (and tp_is_empty!19261 tp!1161359))))

(assert (=> b!3835959 (= tp!1161093 e!2369511)))

(assert (= (and b!3835959 ((_ is Cons!40511) (t!309622 (originalCharacters!6840 (h!45932 prefixTokens!80))))) b!3836779))

(declare-fun tp!1161361 () Bool)

(declare-fun b!3836780 () Bool)

(declare-fun tp!1161362 () Bool)

(declare-fun e!2369513 () Bool)

(assert (=> b!3836780 (= e!2369513 (and (inv!54659 (left!31333 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72)))))) tp!1161362 (inv!54659 (right!31663 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72)))))) tp!1161361))))

(declare-fun b!3836782 () Bool)

(declare-fun e!2369512 () Bool)

(declare-fun tp!1161360 () Bool)

(assert (=> b!3836782 (= e!2369512 tp!1161360)))

(declare-fun b!3836781 () Bool)

(assert (=> b!3836781 (= e!2369513 (and (inv!54668 (xs!15757 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72)))))) e!2369512))))

(assert (=> b!3835917 (= tp!1161060 (and (inv!54659 (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72))))) e!2369513))))

(assert (= (and b!3835917 ((_ is Node!12451) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72)))))) b!3836780))

(assert (= b!3836781 b!3836782))

(assert (= (and b!3835917 ((_ is Leaf!19278) (c!668785 (dynLambda!17543 (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (value!198474 (h!45932 suffixTokens!72)))))) b!3836781))

(declare-fun m!4391215 () Bool)

(assert (=> b!3836780 m!4391215))

(declare-fun m!4391217 () Bool)

(assert (=> b!3836780 m!4391217))

(declare-fun m!4391219 () Bool)

(assert (=> b!3836781 m!4391219))

(assert (=> b!3835917 m!4390271))

(declare-fun b!3836785 () Bool)

(declare-fun b_free!101977 () Bool)

(declare-fun b_next!102681 () Bool)

(assert (=> b!3836785 (= b_free!101977 (not b_next!102681))))

(declare-fun tb!220521 () Bool)

(declare-fun t!309854 () Bool)

(assert (=> (and b!3836785 (= (toValue!8652 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309854) tb!220521))

(declare-fun result!268766 () Bool)

(assert (= result!268766 result!268724))

(assert (=> d!1139055 t!309854))

(declare-fun tp!1161363 () Bool)

(declare-fun b_and!285431 () Bool)

(assert (=> b!3836785 (= tp!1161363 (and (=> t!309854 result!268766) b_and!285431))))

(declare-fun b_free!101979 () Bool)

(declare-fun b_next!102683 () Bool)

(assert (=> b!3836785 (= b_free!101979 (not b_next!102683))))

(declare-fun tb!220523 () Bool)

(declare-fun t!309856 () Bool)

(assert (=> (and b!3836785 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) t!309856) tb!220523))

(declare-fun result!268768 () Bool)

(assert (= result!268768 result!268712))

(assert (=> b!3836663 t!309856))

(declare-fun tb!220525 () Bool)

(declare-fun t!309858 () Bool)

(assert (=> (and b!3836785 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) t!309858) tb!220525))

(declare-fun result!268770 () Bool)

(assert (= result!268770 result!268514))

(assert (=> b!3835632 t!309858))

(declare-fun tb!220527 () Bool)

(declare-fun t!309860 () Bool)

(assert (=> (and b!3836785 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))) t!309860) tb!220527))

(declare-fun result!268772 () Bool)

(assert (= result!268772 result!268522))

(assert (=> d!1138595 t!309860))

(declare-fun tb!220529 () Bool)

(declare-fun t!309862 () Bool)

(assert (=> (and b!3836785 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) t!309862) tb!220529))

(declare-fun result!268774 () Bool)

(assert (= result!268774 result!268738))

(assert (=> b!3836688 t!309862))

(declare-fun tb!220531 () Bool)

(declare-fun t!309864 () Bool)

(assert (=> (and b!3836785 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) t!309864) tb!220531))

(declare-fun result!268776 () Bool)

(assert (= result!268776 result!268574))

(assert (=> b!3835915 t!309864))

(declare-fun tb!220533 () Bool)

(declare-fun t!309866 () Bool)

(assert (=> (and b!3836785 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309866) tb!220533))

(declare-fun result!268778 () Bool)

(assert (= result!268778 result!268630))

(assert (=> d!1138853 t!309866))

(declare-fun tp!1161366 () Bool)

(declare-fun b_and!285433 () Bool)

(assert (=> b!3836785 (= tp!1161366 (and (=> t!309856 result!268768) (=> t!309862 result!268774) (=> t!309866 result!268778) (=> t!309864 result!268776) (=> t!309858 result!268770) (=> t!309860 result!268772) b_and!285433))))

(declare-fun e!2369515 () Bool)

(assert (=> b!3836785 (= e!2369515 (and tp!1161363 tp!1161366))))

(declare-fun tp!1161365 () Bool)

(declare-fun b!3836784 () Bool)

(declare-fun e!2369514 () Bool)

(assert (=> b!3836784 (= e!2369514 (and tp!1161365 (inv!54654 (tag!7100 (h!45933 (t!309624 (t!309624 rules!2768))))) (inv!54657 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) e!2369515))))

(declare-fun b!3836783 () Bool)

(declare-fun e!2369516 () Bool)

(declare-fun tp!1161364 () Bool)

(assert (=> b!3836783 (= e!2369516 (and e!2369514 tp!1161364))))

(assert (=> b!3835975 (= tp!1161111 e!2369516)))

(assert (= b!3836784 b!3836785))

(assert (= b!3836783 b!3836784))

(assert (= (and b!3835975 ((_ is Cons!40513) (t!309624 (t!309624 rules!2768)))) b!3836783))

(declare-fun m!4391221 () Bool)

(assert (=> b!3836784 m!4391221))

(declare-fun m!4391223 () Bool)

(assert (=> b!3836784 m!4391223))

(declare-fun b!3836788 () Bool)

(declare-fun e!2369518 () Bool)

(declare-fun tp!1161371 () Bool)

(assert (=> b!3836788 (= e!2369518 tp!1161371)))

(declare-fun b!3836789 () Bool)

(declare-fun tp!1161368 () Bool)

(declare-fun tp!1161367 () Bool)

(assert (=> b!3836789 (= e!2369518 (and tp!1161368 tp!1161367))))

(assert (=> b!3835939 (= tp!1161074 e!2369518)))

(declare-fun b!3836786 () Bool)

(assert (=> b!3836786 (= e!2369518 tp_is_empty!19261)))

(declare-fun b!3836787 () Bool)

(declare-fun tp!1161369 () Bool)

(declare-fun tp!1161370 () Bool)

(assert (=> b!3836787 (= e!2369518 (and tp!1161369 tp!1161370))))

(assert (= (and b!3835939 ((_ is ElementMatch!11145) (regex!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) b!3836786))

(assert (= (and b!3835939 ((_ is Concat!17616) (regex!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) b!3836787))

(assert (= (and b!3835939 ((_ is Star!11145) (regex!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) b!3836788))

(assert (= (and b!3835939 ((_ is Union!11145) (regex!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) b!3836789))

(declare-fun b!3836790 () Bool)

(declare-fun e!2369519 () Bool)

(declare-fun tp!1161372 () Bool)

(assert (=> b!3836790 (= e!2369519 (and tp_is_empty!19261 tp!1161372))))

(assert (=> b!3835938 (= tp!1161073 e!2369519)))

(assert (= (and b!3835938 ((_ is Cons!40511) (originalCharacters!6840 (h!45932 (t!309623 prefixTokens!80))))) b!3836790))

(declare-fun b!3836794 () Bool)

(declare-fun b_free!101981 () Bool)

(declare-fun b_next!102685 () Bool)

(assert (=> b!3836794 (= b_free!101981 (not b_next!102685))))

(declare-fun t!309868 () Bool)

(declare-fun tb!220535 () Bool)

(assert (=> (and b!3836794 (= (toValue!8652 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (toValue!8652 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309868) tb!220535))

(declare-fun result!268780 () Bool)

(assert (= result!268780 result!268724))

(assert (=> d!1139055 t!309868))

(declare-fun b_and!285435 () Bool)

(declare-fun tp!1161374 () Bool)

(assert (=> b!3836794 (= tp!1161374 (and (=> t!309868 result!268780) b_and!285435))))

(declare-fun b_free!101983 () Bool)

(declare-fun b_next!102687 () Bool)

(assert (=> b!3836794 (= b_free!101983 (not b_next!102687))))

(declare-fun t!309870 () Bool)

(declare-fun tb!220537 () Bool)

(assert (=> (and b!3836794 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72)))))) t!309870) tb!220537))

(declare-fun result!268782 () Bool)

(assert (= result!268782 result!268712))

(assert (=> b!3836663 t!309870))

(declare-fun t!309872 () Bool)

(declare-fun tb!220539 () Bool)

(assert (=> (and b!3836794 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80))))) t!309872) tb!220539))

(declare-fun result!268784 () Bool)

(assert (= result!268784 result!268514))

(assert (=> b!3835632 t!309872))

(declare-fun t!309874 () Bool)

(declare-fun tb!220541 () Bool)

(assert (=> (and b!3836794 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185)))))) t!309874) tb!220541))

(declare-fun result!268786 () Bool)

(assert (= result!268786 result!268522))

(assert (=> d!1138595 t!309874))

(declare-fun t!309876 () Bool)

(declare-fun tb!220543 () Bool)

(assert (=> (and b!3836794 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80)))))) t!309876) tb!220543))

(declare-fun result!268788 () Bool)

(assert (= result!268788 result!268738))

(assert (=> b!3836688 t!309876))

(declare-fun t!309878 () Bool)

(declare-fun tb!220545 () Bool)

(assert (=> (and b!3836794 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72))))) t!309878) tb!220545))

(declare-fun result!268790 () Bool)

(assert (= result!268790 result!268574))

(assert (=> b!3835915 t!309878))

(declare-fun tb!220547 () Bool)

(declare-fun t!309880 () Bool)

(assert (=> (and b!3836794 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (get!13436 lt!1331283)))))) t!309880) tb!220547))

(declare-fun result!268792 () Bool)

(assert (= result!268792 result!268630))

(assert (=> d!1138853 t!309880))

(declare-fun tp!1161377 () Bool)

(declare-fun b_and!285437 () Bool)

(assert (=> b!3836794 (= tp!1161377 (and (=> t!309870 result!268782) (=> t!309874 result!268786) (=> t!309872 result!268784) (=> t!309880 result!268792) (=> t!309878 result!268790) (=> t!309876 result!268788) b_and!285437))))

(declare-fun b!3836793 () Bool)

(declare-fun e!2369524 () Bool)

(declare-fun e!2369522 () Bool)

(declare-fun tp!1161376 () Bool)

(assert (=> b!3836793 (= e!2369524 (and tp!1161376 (inv!54654 (tag!7100 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (inv!54657 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) e!2369522))))

(declare-fun tp!1161375 () Bool)

(declare-fun e!2369520 () Bool)

(declare-fun b!3836792 () Bool)

(assert (=> b!3836792 (= e!2369520 (and (inv!21 (value!198474 (h!45932 (t!309623 (t!309623 prefixTokens!80))))) e!2369524 tp!1161375))))

(assert (=> b!3836794 (= e!2369522 (and tp!1161374 tp!1161377))))

(declare-fun b!3836791 () Bool)

(declare-fun tp!1161373 () Bool)

(declare-fun e!2369521 () Bool)

(assert (=> b!3836791 (= e!2369521 (and (inv!54658 (h!45932 (t!309623 (t!309623 prefixTokens!80)))) e!2369520 tp!1161373))))

(assert (=> b!3835937 (= tp!1161071 e!2369521)))

(assert (= b!3836793 b!3836794))

(assert (= b!3836792 b!3836793))

(assert (= b!3836791 b!3836792))

(assert (= (and b!3835937 ((_ is Cons!40512) (t!309623 (t!309623 prefixTokens!80)))) b!3836791))

(declare-fun m!4391225 () Bool)

(assert (=> b!3836793 m!4391225))

(declare-fun m!4391227 () Bool)

(assert (=> b!3836793 m!4391227))

(declare-fun m!4391229 () Bool)

(assert (=> b!3836792 m!4391229))

(declare-fun m!4391231 () Bool)

(assert (=> b!3836791 m!4391231))

(declare-fun b!3836797 () Bool)

(declare-fun e!2369526 () Bool)

(declare-fun tp!1161382 () Bool)

(assert (=> b!3836797 (= e!2369526 tp!1161382)))

(declare-fun b!3836798 () Bool)

(declare-fun tp!1161379 () Bool)

(declare-fun tp!1161378 () Bool)

(assert (=> b!3836798 (= e!2369526 (and tp!1161379 tp!1161378))))

(assert (=> b!3835976 (= tp!1161112 e!2369526)))

(declare-fun b!3836795 () Bool)

(assert (=> b!3836795 (= e!2369526 tp_is_empty!19261)))

(declare-fun b!3836796 () Bool)

(declare-fun tp!1161380 () Bool)

(declare-fun tp!1161381 () Bool)

(assert (=> b!3836796 (= e!2369526 (and tp!1161380 tp!1161381))))

(assert (= (and b!3835976 ((_ is ElementMatch!11145) (regex!6240 (h!45933 (t!309624 rules!2768))))) b!3836795))

(assert (= (and b!3835976 ((_ is Concat!17616) (regex!6240 (h!45933 (t!309624 rules!2768))))) b!3836796))

(assert (= (and b!3835976 ((_ is Star!11145) (regex!6240 (h!45933 (t!309624 rules!2768))))) b!3836797))

(assert (= (and b!3835976 ((_ is Union!11145) (regex!6240 (h!45933 (t!309624 rules!2768))))) b!3836798))

(declare-fun b_lambda!112181 () Bool)

(assert (= b_lambda!112141 (or (and b!3835977 b_free!101955 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))) (and b!3835940 b_free!101951 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))) (and b!3836778 b_free!101975 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))) (and b!3835566 b_free!101931 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))) (and b!3835565 b_free!101927 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))) (and b!3836785 b_free!101979 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))) (and b!3835982 b_free!101959 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))) (and b!3835559 b_free!101935 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))) (and b!3836794 b_free!101983 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (toChars!8511 (transformation!6240 (rule!9074 (_1!22978 (v!38947 lt!1331185))))))) b_lambda!112181)))

(declare-fun b_lambda!112183 () Bool)

(assert (= b_lambda!112175 (or (and b!3836794 b_free!101983 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))))) (and b!3835566 b_free!101931 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))))) (and b!3836785 b_free!101979 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))))) (and b!3835565 b_free!101927 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))))) (and b!3835977 b_free!101955 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))))) (and b!3836778 b_free!101975 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))))) (and b!3835559 b_free!101935 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))))) (and b!3835982 b_free!101959) (and b!3835940 b_free!101951 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))))) b_lambda!112183)))

(declare-fun b_lambda!112185 () Bool)

(assert (= b_lambda!112179 (or (and b!3835982 b_free!101959 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 suffixTokens!72))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))))) (and b!3835940 b_free!101951) (and b!3835559 b_free!101935 (= (toChars!8511 (transformation!6240 (h!45933 rules!2768))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))))) (and b!3835566 b_free!101931 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 suffixTokens!72)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))))) (and b!3836794 b_free!101983 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 prefixTokens!80)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))))) (and b!3835565 b_free!101927 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 prefixTokens!80)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))))) (and b!3835977 b_free!101955 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 rules!2768)))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))))) (and b!3836785 b_free!101979 (= (toChars!8511 (transformation!6240 (h!45933 (t!309624 (t!309624 rules!2768))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))))) (and b!3836778 b_free!101975 (= (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 (t!309623 suffixTokens!72)))))) (toChars!8511 (transformation!6240 (rule!9074 (h!45932 (t!309623 prefixTokens!80))))))) b_lambda!112185)))

(check-sat (not d!1138799) (not b!3836517) (not b!3836632) (not b!3836765) (not b!3836752) b_and!285419 (not b!3836669) (not b_next!102635) (not b_lambda!112185) (not d!1138991) (not b!3836567) (not b!3836292) (not b!3836693) (not b!3836639) (not b!3836574) (not b!3836610) (not b!3836232) (not b!3836266) (not b!3836724) (not b!3836551) (not b_next!102683) b_and!285437 (not b!3836788) (not d!1139001) (not b!3836695) (not b!3836508) (not b!3836689) (not b!3836272) (not b!3836317) (not b_next!102685) (not b!3836773) (not d!1138981) (not bm!281893) (not b_lambda!112163) (not d!1139035) (not b!3836656) (not b!3836749) (not b_next!102661) (not b!3836682) (not b!3836626) b_and!285429 (not b_next!102629) (not b!3836780) (not d!1139013) (not b!3836606) (not b!3836675) b_and!285435 (not d!1139009) (not b!3836295) (not b!3836283) (not b!3836678) (not d!1139039) (not b!3836498) (not b!3836726) (not b!3836708) (not b!3836649) (not b!3836758) (not b!3836793) (not b!3836753) (not b!3836651) (not d!1138819) (not b!3836713) (not b!3836784) (not b!3836553) (not b_next!102657) (not b!3836690) (not b!3836638) (not b!3836750) (not b!3836576) (not b!3836569) (not tb!220483) (not b_next!102631) (not b!3836663) (not b!3836720) (not b!3836234) (not b!3836633) (not tb!220393) (not b!3836660) (not b!3836722) (not b!3836514) (not b!3836665) (not b!3836642) (not b!3836688) (not b!3836725) (not b_next!102639) (not b!3836766) (not b!3836271) (not b!3836644) (not b!3836776) (not d!1138977) (not b_next!102677) (not b!3836662) (not b!3836789) (not b!3836297) (not d!1139029) (not b!3836736) (not b_lambda!112181) (not d!1138873) (not d!1139031) b_and!285423 (not b!3836495) (not d!1139065) (not b!3836733) (not b!3836306) (not b!3836516) (not b!3836655) (not d!1138881) (not d!1139011) (not b!3836608) (not b!3836743) (not b!3836745) (not b!3836779) (not b!3836737) (not d!1139063) (not b!3836059) (not d!1138725) (not b!3836614) (not b!3836747) (not b!3836061) (not b!3836772) (not b!3836699) (not b!3836709) (not b_next!102679) (not d!1138983) (not b!3836792) (not b!3836672) (not b!3836236) (not d!1138813) (not b!3836512) b_and!285413 (not b!3836782) (not d!1139059) (not b!3836718) (not d!1138845) (not d!1138863) (not b!3836712) (not b!3836762) (not d!1138995) (not b!3836274) (not b!3836510) (not b!3836264) (not d!1139017) (not b!3836296) (not d!1139069) (not b_next!102637) (not b!3836499) (not b!3836623) (not b!3836757) (not b!3836764) (not b!3835751) (not b!3836247) (not b!3836683) (not b!3836742) (not b!3836717) (not b!3836492) (not b!3836226) (not b!3836303) (not b_lambda!112183) (not b!3836670) (not b!3835638) (not b!3836262) (not b!3836732) (not b!3836555) (not bm!281879) (not b!3836796) (not b!3836768) (not b!3836769) (not b!3836668) (not b!3836770) (not b!3836300) (not b!3836298) (not b!3836680) (not b!3836621) (not b!3836305) (not d!1138885) (not b!3836245) (not b_lambda!112177) (not d!1138853) (not b!3836791) (not b!3836491) (not b!3836518) (not b!3836739) (not b!3836625) (not b!3836290) (not b_next!102663) (not b!3836566) b_and!285425 (not b!3836571) (not b!3836751) (not b!3836697) (not b!3836244) (not b_next!102655) (not b!3836787) (not b!3836617) (not b!3836627) (not b!3836648) (not b!3836797) (not d!1139061) (not d!1139007) (not b!3836774) (not b!3836783) (not d!1138985) b_and!285431 (not b!3836573) b_and!285403 b_and!285409 (not b_next!102687) (not b!3836721) (not b!3836657) (not d!1138871) (not b!3836698) (not tb!220495) (not d!1138823) (not b!3836506) (not b!3836756) (not b!3836664) (not b!3836775) (not b!3836798) (not b!3836738) (not b_next!102653) (not b!3835917) (not b!3836777) (not b!3836063) (not b!3836493) (not b!3836537) (not b_next!102633) (not b!3836289) (not b!3836057) (not b!3836497) (not b!3836611) (not b!3836754) (not b!3836275) (not b!3836673) (not d!1139015) b_and!285427 (not tb!220471) (not b!3836619) (not d!1138999) (not b!3836658) tp_is_empty!19261 (not d!1138803) (not b!3836238) (not b!3836291) (not b!3836716) (not b!3836729) (not b_lambda!112157) (not b!3836667) b_and!285411 (not b!3836728) (not bm!281887) (not b!3836645) (not b!3836676) (not b_lambda!112155) (not b!3836760) b_and!285405 (not b!3836781) b_and!285415 (not d!1139053) (not b!3836685) (not d!1139043) (not b!3836790) b_and!285421 (not b!3836710) (not b!3836636) (not b!3836691) (not d!1138847) (not d!1138797) (not d!1138993) (not b!3836730) (not d!1139049) (not bm!281892) (not d!1139057) (not bm!281889) (not b!3836496) (not b_next!102681) b_and!285433 (not b!3836761) (not b!3836741) (not b!3836735) (not b!3836294) (not d!1138851) (not b!3836674) (not b!3836746) (not b!3836731) (not b!3836694) (not b_next!102659) (not d!1138975) (not b!3836652) b_and!285407 (not b!3836714) b_and!285417)
(check-sat b_and!285419 (not b_next!102635) (not b_next!102685) (not b_next!102657) (not b_next!102631) (not b_next!102639) (not b_next!102677) b_and!285423 (not b_next!102679) b_and!285413 (not b_next!102637) (not b_next!102655) (not b_next!102653) (not b_next!102633) b_and!285427 b_and!285411 b_and!285421 (not b_next!102683) b_and!285437 (not b_next!102661) b_and!285435 b_and!285429 (not b_next!102629) (not b_next!102663) b_and!285425 (not b_next!102687) b_and!285431 b_and!285403 b_and!285409 b_and!285405 b_and!285415 (not b_next!102681) b_and!285433 (not b_next!102659) b_and!285417 b_and!285407)
