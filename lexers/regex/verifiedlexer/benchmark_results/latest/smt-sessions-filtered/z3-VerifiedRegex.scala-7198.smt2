; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383824 () Bool)

(assert start!383824)

(declare-fun b!4068732 () Bool)

(declare-fun b_free!113185 () Bool)

(declare-fun b_next!113889 () Bool)

(assert (=> b!4068732 (= b_free!113185 (not b_next!113889))))

(declare-fun tp!1231446 () Bool)

(declare-fun b_and!312691 () Bool)

(assert (=> b!4068732 (= tp!1231446 b_and!312691)))

(declare-fun b_free!113187 () Bool)

(declare-fun b_next!113891 () Bool)

(assert (=> b!4068732 (= b_free!113187 (not b_next!113891))))

(declare-fun tp!1231445 () Bool)

(declare-fun b_and!312693 () Bool)

(assert (=> b!4068732 (= tp!1231445 b_and!312693)))

(declare-fun b!4068750 () Bool)

(declare-fun b_free!113189 () Bool)

(declare-fun b_next!113893 () Bool)

(assert (=> b!4068750 (= b_free!113189 (not b_next!113893))))

(declare-fun tp!1231449 () Bool)

(declare-fun b_and!312695 () Bool)

(assert (=> b!4068750 (= tp!1231449 b_and!312695)))

(declare-fun b_free!113191 () Bool)

(declare-fun b_next!113895 () Bool)

(assert (=> b!4068750 (= b_free!113191 (not b_next!113895))))

(declare-fun tp!1231450 () Bool)

(declare-fun b_and!312697 () Bool)

(assert (=> b!4068750 (= tp!1231450 b_and!312697)))

(declare-fun e!2525109 () Bool)

(assert (=> b!4068732 (= e!2525109 (and tp!1231446 tp!1231445))))

(declare-fun b!4068733 () Bool)

(declare-fun e!2525102 () Bool)

(declare-fun e!2525120 () Bool)

(assert (=> b!4068733 (= e!2525102 e!2525120)))

(declare-fun res!1661009 () Bool)

(assert (=> b!4068733 (=> res!1661009 e!2525120)))

(declare-datatypes ((C!23964 0))(
  ( (C!23965 (val!14076 Int)) )
))
(declare-datatypes ((List!43583 0))(
  ( (Nil!43459) (Cons!43459 (h!48879 C!23964) (t!336958 List!43583)) )
))
(declare-datatypes ((IArray!26395 0))(
  ( (IArray!26396 (innerList!13255 List!43583)) )
))
(declare-datatypes ((Conc!13195 0))(
  ( (Node!13195 (left!32685 Conc!13195) (right!33015 Conc!13195) (csize!26620 Int) (cheight!13406 Int)) (Leaf!20394 (xs!16501 IArray!26395) (csize!26621 Int)) (Empty!13195) )
))
(declare-datatypes ((BalanceConc!25984 0))(
  ( (BalanceConc!25985 (c!702410 Conc!13195)) )
))
(declare-datatypes ((List!43584 0))(
  ( (Nil!43460) (Cons!43460 (h!48880 (_ BitVec 16)) (t!336959 List!43584)) )
))
(declare-datatypes ((TokenValue!7214 0))(
  ( (FloatLiteralValue!14428 (text!50943 List!43584)) (TokenValueExt!7213 (__x!26645 Int)) (Broken!36070 (value!219652 List!43584)) (Object!7337) (End!7214) (Def!7214) (Underscore!7214) (Match!7214) (Else!7214) (Error!7214) (Case!7214) (If!7214) (Extends!7214) (Abstract!7214) (Class!7214) (Val!7214) (DelimiterValue!14428 (del!7274 List!43584)) (KeywordValue!7220 (value!219653 List!43584)) (CommentValue!14428 (value!219654 List!43584)) (WhitespaceValue!14428 (value!219655 List!43584)) (IndentationValue!7214 (value!219656 List!43584)) (String!49787) (Int32!7214) (Broken!36071 (value!219657 List!43584)) (Boolean!7215) (Unit!63026) (OperatorValue!7217 (op!7274 List!43584)) (IdentifierValue!14428 (value!219658 List!43584)) (IdentifierValue!14429 (value!219659 List!43584)) (WhitespaceValue!14429 (value!219660 List!43584)) (True!14428) (False!14428) (Broken!36072 (value!219661 List!43584)) (Broken!36073 (value!219662 List!43584)) (True!14429) (RightBrace!7214) (RightBracket!7214) (Colon!7214) (Null!7214) (Comma!7214) (LeftBracket!7214) (False!14429) (LeftBrace!7214) (ImaginaryLiteralValue!7214 (text!50944 List!43584)) (StringLiteralValue!21642 (value!219663 List!43584)) (EOFValue!7214 (value!219664 List!43584)) (IdentValue!7214 (value!219665 List!43584)) (DelimiterValue!14429 (value!219666 List!43584)) (DedentValue!7214 (value!219667 List!43584)) (NewLineValue!7214 (value!219668 List!43584)) (IntegerValue!21642 (value!219669 (_ BitVec 32)) (text!50945 List!43584)) (IntegerValue!21643 (value!219670 Int) (text!50946 List!43584)) (Times!7214) (Or!7214) (Equal!7214) (Minus!7214) (Broken!36074 (value!219671 List!43584)) (And!7214) (Div!7214) (LessEqual!7214) (Mod!7214) (Concat!19103) (Not!7214) (Plus!7214) (SpaceValue!7214 (value!219672 List!43584)) (IntegerValue!21644 (value!219673 Int) (text!50947 List!43584)) (StringLiteralValue!21643 (text!50948 List!43584)) (FloatLiteralValue!14429 (text!50949 List!43584)) (BytesLiteralValue!7214 (value!219674 List!43584)) (CommentValue!14429 (value!219675 List!43584)) (StringLiteralValue!21644 (value!219676 List!43584)) (ErrorTokenValue!7214 (msg!7275 List!43584)) )
))
(declare-datatypes ((Regex!11889 0))(
  ( (ElementMatch!11889 (c!702411 C!23964)) (Concat!19104 (regOne!24290 Regex!11889) (regTwo!24290 Regex!11889)) (EmptyExpr!11889) (Star!11889 (reg!12218 Regex!11889)) (EmptyLang!11889) (Union!11889 (regOne!24291 Regex!11889) (regTwo!24291 Regex!11889)) )
))
(declare-datatypes ((String!49788 0))(
  ( (String!49789 (value!219677 String)) )
))
(declare-datatypes ((TokenValueInjection!13856 0))(
  ( (TokenValueInjection!13857 (toValue!9544 Int) (toChars!9403 Int)) )
))
(declare-datatypes ((Rule!13768 0))(
  ( (Rule!13769 (regex!6984 Regex!11889) (tag!7844 String!49788) (isSeparator!6984 Bool) (transformation!6984 TokenValueInjection!13856)) )
))
(declare-datatypes ((Token!13106 0))(
  ( (Token!13107 (value!219678 TokenValue!7214) (rule!10088 Rule!13768) (size!32491 Int) (originalCharacters!7584 List!43583)) )
))
(declare-datatypes ((tuple2!42510 0))(
  ( (tuple2!42511 (_1!24389 Token!13106) (_2!24389 List!43583)) )
))
(declare-datatypes ((Option!9398 0))(
  ( (None!9397) (Some!9397 (v!39827 tuple2!42510)) )
))
(declare-fun lt!1456327 () Option!9398)

(declare-fun lt!1456318 () Option!9398)

(assert (=> b!4068733 (= res!1661009 (not (= lt!1456327 lt!1456318)))))

(declare-fun lt!1456334 () Token!13106)

(declare-fun suffixResult!105 () List!43583)

(assert (=> b!4068733 (= lt!1456327 (Some!9397 (tuple2!42511 lt!1456334 suffixResult!105)))))

(declare-fun token!484 () Token!13106)

(declare-fun lt!1456322 () List!43583)

(declare-datatypes ((LexerInterface!6573 0))(
  ( (LexerInterfaceExt!6570 (__x!26646 Int)) (Lexer!6571) )
))
(declare-fun thiss!21717 () LexerInterface!6573)

(declare-fun maxPrefixOneRule!2883 (LexerInterface!6573 Rule!13768 List!43583) Option!9398)

(assert (=> b!4068733 (= lt!1456327 (maxPrefixOneRule!2883 thiss!21717 (rule!10088 token!484) lt!1456322))))

(declare-fun lt!1456312 () List!43583)

(declare-fun lt!1456305 () TokenValue!7214)

(declare-fun lt!1456316 () Int)

(assert (=> b!4068733 (= lt!1456334 (Token!13107 lt!1456305 (rule!10088 token!484) lt!1456316 lt!1456312))))

(declare-fun apply!10173 (TokenValueInjection!13856 BalanceConc!25984) TokenValue!7214)

(declare-fun seqFromList!5201 (List!43583) BalanceConc!25984)

(assert (=> b!4068733 (= lt!1456305 (apply!10173 (transformation!6984 (rule!10088 token!484)) (seqFromList!5201 lt!1456312)))))

(declare-datatypes ((List!43585 0))(
  ( (Nil!43461) (Cons!43461 (h!48881 Rule!13768) (t!336960 List!43585)) )
))
(declare-fun rules!2999 () List!43585)

(declare-datatypes ((Unit!63027 0))(
  ( (Unit!63028) )
))
(declare-fun lt!1456313 () Unit!63027)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1689 (LexerInterface!6573 List!43585 List!43583 List!43583 List!43583 Rule!13768) Unit!63027)

(assert (=> b!4068733 (= lt!1456313 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1689 thiss!21717 rules!2999 lt!1456312 lt!1456322 suffixResult!105 (rule!10088 token!484)))))

(declare-fun lt!1456330 () List!43583)

(assert (=> b!4068733 (= lt!1456330 suffixResult!105)))

(declare-fun lt!1456315 () Unit!63027)

(declare-fun lemmaSamePrefixThenSameSuffix!2232 (List!43583 List!43583 List!43583 List!43583 List!43583) Unit!63027)

(assert (=> b!4068733 (= lt!1456315 (lemmaSamePrefixThenSameSuffix!2232 lt!1456312 lt!1456330 lt!1456312 suffixResult!105 lt!1456322))))

(declare-fun lt!1456320 () List!43583)

(declare-fun isPrefix!4071 (List!43583 List!43583) Bool)

(assert (=> b!4068733 (isPrefix!4071 lt!1456312 lt!1456320)))

(declare-fun lt!1456332 () Unit!63027)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2906 (List!43583 List!43583) Unit!63027)

(assert (=> b!4068733 (= lt!1456332 (lemmaConcatTwoListThenFirstIsPrefix!2906 lt!1456312 lt!1456330))))

(declare-fun b!4068734 () Bool)

(declare-fun e!2525101 () Bool)

(declare-fun tp_is_empty!20749 () Bool)

(declare-fun tp!1231454 () Bool)

(assert (=> b!4068734 (= e!2525101 (and tp_is_empty!20749 tp!1231454))))

(declare-fun b!4068735 () Bool)

(declare-fun e!2525121 () Bool)

(assert (=> b!4068735 (= e!2525120 e!2525121)))

(declare-fun res!1661010 () Bool)

(assert (=> b!4068735 (=> res!1661010 e!2525121)))

(declare-fun matchR!5842 (Regex!11889 List!43583) Bool)

(assert (=> b!4068735 (= res!1661010 (not (matchR!5842 (regex!6984 (rule!10088 token!484)) lt!1456312)))))

(declare-fun lt!1456331 () List!43583)

(assert (=> b!4068735 (isPrefix!4071 lt!1456312 lt!1456331)))

(declare-fun prefix!494 () List!43583)

(declare-fun newSuffix!27 () List!43583)

(declare-fun lt!1456323 () Unit!63027)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!864 (List!43583 List!43583 List!43583) Unit!63027)

(assert (=> b!4068735 (= lt!1456323 (lemmaPrefixStaysPrefixWhenAddingToSuffix!864 lt!1456312 prefix!494 newSuffix!27))))

(declare-fun lt!1456325 () Unit!63027)

(declare-fun suffix!1299 () List!43583)

(assert (=> b!4068735 (= lt!1456325 (lemmaPrefixStaysPrefixWhenAddingToSuffix!864 lt!1456312 prefix!494 suffix!1299))))

(declare-fun b!4068736 () Bool)

(declare-fun e!2525119 () Bool)

(declare-fun tp!1231453 () Bool)

(assert (=> b!4068736 (= e!2525119 (and tp_is_empty!20749 tp!1231453))))

(declare-fun b!4068738 () Bool)

(declare-fun res!1661011 () Bool)

(declare-fun e!2525107 () Bool)

(assert (=> b!4068738 (=> (not res!1661011) (not e!2525107))))

(declare-fun size!32492 (List!43583) Int)

(assert (=> b!4068738 (= res!1661011 (>= (size!32492 suffix!1299) (size!32492 newSuffix!27)))))

(declare-fun b!4068739 () Bool)

(declare-fun e!2525105 () Bool)

(declare-fun e!2525117 () Bool)

(assert (=> b!4068739 (= e!2525105 e!2525117)))

(declare-fun res!1661008 () Bool)

(assert (=> b!4068739 (=> (not res!1661008) (not e!2525117))))

(declare-fun maxPrefix!3871 (LexerInterface!6573 List!43585 List!43583) Option!9398)

(assert (=> b!4068739 (= res!1661008 (= (maxPrefix!3871 thiss!21717 rules!2999 lt!1456322) lt!1456318))))

(declare-fun lt!1456317 () tuple2!42510)

(assert (=> b!4068739 (= lt!1456318 (Some!9397 lt!1456317))))

(assert (=> b!4068739 (= lt!1456317 (tuple2!42511 token!484 suffixResult!105))))

(declare-fun ++!11386 (List!43583 List!43583) List!43583)

(assert (=> b!4068739 (= lt!1456322 (++!11386 prefix!494 suffix!1299))))

(declare-fun b!4068740 () Bool)

(declare-fun e!2525113 () Bool)

(assert (=> b!4068740 (= e!2525113 e!2525102)))

(declare-fun res!1661002 () Bool)

(assert (=> b!4068740 (=> res!1661002 e!2525102)))

(declare-fun lt!1456307 () List!43583)

(assert (=> b!4068740 (= res!1661002 (or (not (= lt!1456322 lt!1456307)) (not (= lt!1456322 lt!1456320))))))

(assert (=> b!4068740 (= lt!1456307 lt!1456320)))

(assert (=> b!4068740 (= lt!1456320 (++!11386 lt!1456312 lt!1456330))))

(declare-fun lt!1456336 () List!43583)

(assert (=> b!4068740 (= lt!1456307 (++!11386 lt!1456336 suffix!1299))))

(declare-fun lt!1456309 () List!43583)

(assert (=> b!4068740 (= lt!1456330 (++!11386 lt!1456309 suffix!1299))))

(declare-fun lt!1456310 () Unit!63027)

(declare-fun lemmaConcatAssociativity!2688 (List!43583 List!43583 List!43583) Unit!63027)

(assert (=> b!4068740 (= lt!1456310 (lemmaConcatAssociativity!2688 lt!1456312 lt!1456309 suffix!1299))))

(declare-fun b!4068741 () Bool)

(declare-fun res!1661001 () Bool)

(assert (=> b!4068741 (=> (not res!1661001) (not e!2525107))))

(declare-fun isEmpty!25937 (List!43585) Bool)

(assert (=> b!4068741 (= res!1661001 (not (isEmpty!25937 rules!2999)))))

(declare-fun b!4068742 () Bool)

(declare-fun res!1661013 () Bool)

(assert (=> b!4068742 (=> (not res!1661013) (not e!2525107))))

(declare-fun rulesInvariant!5916 (LexerInterface!6573 List!43585) Bool)

(assert (=> b!4068742 (= res!1661013 (rulesInvariant!5916 thiss!21717 rules!2999))))

(declare-fun b!4068743 () Bool)

(declare-fun e!2525111 () Bool)

(declare-fun e!2525108 () Bool)

(assert (=> b!4068743 (= e!2525111 e!2525108)))

(declare-fun res!1661015 () Bool)

(assert (=> b!4068743 (=> res!1661015 e!2525108)))

(get-info :version)

(assert (=> b!4068743 (= res!1661015 ((_ is Some!9397) (maxPrefix!3871 thiss!21717 rules!2999 lt!1456331)))))

(declare-fun lt!1456319 () List!43583)

(assert (=> b!4068743 (and (= suffixResult!105 lt!1456319) (= lt!1456317 (tuple2!42511 lt!1456334 lt!1456319)))))

(declare-fun lt!1456308 () Unit!63027)

(assert (=> b!4068743 (= lt!1456308 (lemmaSamePrefixThenSameSuffix!2232 lt!1456312 suffixResult!105 lt!1456312 lt!1456319 lt!1456322))))

(declare-fun lt!1456324 () List!43583)

(assert (=> b!4068743 (isPrefix!4071 lt!1456312 lt!1456324)))

(declare-fun lt!1456329 () Unit!63027)

(assert (=> b!4068743 (= lt!1456329 (lemmaConcatTwoListThenFirstIsPrefix!2906 lt!1456312 lt!1456319))))

(declare-fun b!4068744 () Bool)

(declare-fun e!2525106 () Bool)

(assert (=> b!4068744 (= e!2525117 (not e!2525106))))

(declare-fun res!1660999 () Bool)

(assert (=> b!4068744 (=> res!1660999 e!2525106)))

(declare-fun lt!1456337 () List!43583)

(assert (=> b!4068744 (= res!1660999 (not (= lt!1456337 lt!1456322)))))

(assert (=> b!4068744 (= lt!1456337 (++!11386 lt!1456312 suffixResult!105))))

(declare-fun lt!1456306 () Unit!63027)

(declare-fun lemmaInv!1193 (TokenValueInjection!13856) Unit!63027)

(assert (=> b!4068744 (= lt!1456306 (lemmaInv!1193 (transformation!6984 (rule!10088 token!484))))))

(declare-fun ruleValid!2914 (LexerInterface!6573 Rule!13768) Bool)

(assert (=> b!4068744 (ruleValid!2914 thiss!21717 (rule!10088 token!484))))

(declare-fun lt!1456314 () Unit!63027)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1984 (LexerInterface!6573 Rule!13768 List!43585) Unit!63027)

(assert (=> b!4068744 (= lt!1456314 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1984 thiss!21717 (rule!10088 token!484) rules!2999))))

(declare-fun b!4068745 () Bool)

(declare-fun e!2525112 () Bool)

(declare-fun e!2525098 () Bool)

(declare-fun tp!1231444 () Bool)

(assert (=> b!4068745 (= e!2525112 (and e!2525098 tp!1231444))))

(declare-fun b!4068746 () Bool)

(declare-fun res!1661014 () Bool)

(assert (=> b!4068746 (=> (not res!1661014) (not e!2525107))))

(assert (=> b!4068746 (= res!1661014 (isPrefix!4071 newSuffix!27 suffix!1299))))

(declare-fun b!4068747 () Bool)

(declare-fun e!2525104 () Bool)

(declare-fun tp!1231451 () Bool)

(assert (=> b!4068747 (= e!2525104 (and tp_is_empty!20749 tp!1231451))))

(declare-fun b!4068748 () Bool)

(declare-fun res!1660996 () Bool)

(declare-fun e!2525096 () Bool)

(assert (=> b!4068748 (=> (not res!1660996) (not e!2525096))))

(assert (=> b!4068748 (= res!1660996 (= (value!219678 token!484) lt!1456305))))

(declare-fun b!4068749 () Bool)

(declare-fun e!2525097 () Bool)

(assert (=> b!4068749 (= e!2525106 e!2525097)))

(declare-fun res!1660998 () Bool)

(assert (=> b!4068749 (=> res!1660998 e!2525097)))

(assert (=> b!4068749 (= res!1660998 (not (isPrefix!4071 lt!1456312 lt!1456322)))))

(assert (=> b!4068749 (isPrefix!4071 prefix!494 lt!1456322)))

(declare-fun lt!1456311 () Unit!63027)

(assert (=> b!4068749 (= lt!1456311 (lemmaConcatTwoListThenFirstIsPrefix!2906 prefix!494 suffix!1299))))

(assert (=> b!4068749 (isPrefix!4071 lt!1456312 lt!1456337)))

(declare-fun lt!1456321 () Unit!63027)

(assert (=> b!4068749 (= lt!1456321 (lemmaConcatTwoListThenFirstIsPrefix!2906 lt!1456312 suffixResult!105))))

(declare-fun e!2525114 () Bool)

(assert (=> b!4068750 (= e!2525114 (and tp!1231449 tp!1231450))))

(declare-fun b!4068751 () Bool)

(declare-fun e!2525099 () Bool)

(assert (=> b!4068751 (= e!2525099 e!2525105)))

(declare-fun res!1661006 () Bool)

(assert (=> b!4068751 (=> (not res!1661006) (not e!2525105))))

(declare-fun lt!1456333 () List!43583)

(assert (=> b!4068751 (= res!1661006 (= lt!1456333 lt!1456331))))

(assert (=> b!4068751 (= lt!1456331 (++!11386 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43583)

(assert (=> b!4068751 (= lt!1456333 (++!11386 lt!1456312 newSuffixResult!27))))

(declare-fun b!4068752 () Bool)

(declare-fun e!2525116 () Bool)

(declare-fun tp!1231452 () Bool)

(declare-fun inv!58095 (String!49788) Bool)

(declare-fun inv!58098 (TokenValueInjection!13856) Bool)

(assert (=> b!4068752 (= e!2525116 (and tp!1231452 (inv!58095 (tag!7844 (rule!10088 token!484))) (inv!58098 (transformation!6984 (rule!10088 token!484))) e!2525109))))

(declare-fun b!4068753 () Bool)

(declare-fun res!1661003 () Bool)

(assert (=> b!4068753 (=> res!1661003 e!2525108)))

(declare-fun rulesValidInductive!2557 (LexerInterface!6573 List!43585) Bool)

(assert (=> b!4068753 (= res!1661003 (not (rulesValidInductive!2557 thiss!21717 rules!2999)))))

(declare-fun b!4068754 () Bool)

(declare-fun res!1661005 () Bool)

(assert (=> b!4068754 (=> (not res!1661005) (not e!2525096))))

(assert (=> b!4068754 (= res!1661005 (= (size!32491 token!484) (size!32492 (originalCharacters!7584 token!484))))))

(declare-fun tp!1231456 () Bool)

(declare-fun e!2525110 () Bool)

(declare-fun b!4068755 () Bool)

(declare-fun inv!21 (TokenValue!7214) Bool)

(assert (=> b!4068755 (= e!2525110 (and (inv!21 (value!219678 token!484)) e!2525116 tp!1231456))))

(declare-fun b!4068756 () Bool)

(assert (=> b!4068756 (= e!2525096 (and (= (size!32491 token!484) lt!1456316) (= (originalCharacters!7584 token!484) lt!1456312)))))

(declare-fun b!4068757 () Bool)

(assert (=> b!4068757 (= e!2525107 e!2525099)))

(declare-fun res!1661012 () Bool)

(assert (=> b!4068757 (=> (not res!1661012) (not e!2525099))))

(declare-fun lt!1456326 () Int)

(assert (=> b!4068757 (= res!1661012 (>= lt!1456326 lt!1456316))))

(assert (=> b!4068757 (= lt!1456316 (size!32492 lt!1456312))))

(assert (=> b!4068757 (= lt!1456326 (size!32492 prefix!494))))

(declare-fun list!16204 (BalanceConc!25984) List!43583)

(declare-fun charsOf!4800 (Token!13106) BalanceConc!25984)

(assert (=> b!4068757 (= lt!1456312 (list!16204 (charsOf!4800 token!484)))))

(declare-fun b!4068737 () Bool)

(assert (=> b!4068737 (= e!2525097 e!2525113)))

(declare-fun res!1661000 () Bool)

(assert (=> b!4068737 (=> res!1661000 e!2525113)))

(assert (=> b!4068737 (= res!1661000 (not (= lt!1456336 prefix!494)))))

(assert (=> b!4068737 (= lt!1456336 (++!11386 lt!1456312 lt!1456309))))

(declare-fun getSuffix!2488 (List!43583 List!43583) List!43583)

(assert (=> b!4068737 (= lt!1456309 (getSuffix!2488 prefix!494 lt!1456312))))

(assert (=> b!4068737 (isPrefix!4071 lt!1456312 prefix!494)))

(declare-fun lt!1456335 () Unit!63027)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!635 (List!43583 List!43583 List!43583) Unit!63027)

(assert (=> b!4068737 (= lt!1456335 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!635 prefix!494 lt!1456312 lt!1456322))))

(declare-fun res!1660997 () Bool)

(assert (=> start!383824 (=> (not res!1660997) (not e!2525107))))

(assert (=> start!383824 (= res!1660997 ((_ is Lexer!6571) thiss!21717))))

(assert (=> start!383824 e!2525107))

(assert (=> start!383824 e!2525119))

(declare-fun inv!58099 (Token!13106) Bool)

(assert (=> start!383824 (and (inv!58099 token!484) e!2525110)))

(declare-fun e!2525103 () Bool)

(assert (=> start!383824 e!2525103))

(assert (=> start!383824 e!2525104))

(declare-fun e!2525122 () Bool)

(assert (=> start!383824 e!2525122))

(assert (=> start!383824 true))

(assert (=> start!383824 e!2525112))

(assert (=> start!383824 e!2525101))

(declare-fun b!4068758 () Bool)

(declare-fun contains!8650 (List!43585 Rule!13768) Bool)

(assert (=> b!4068758 (= e!2525108 (contains!8650 rules!2999 (rule!10088 token!484)))))

(declare-fun b!4068759 () Bool)

(declare-fun tp!1231448 () Bool)

(assert (=> b!4068759 (= e!2525103 (and tp_is_empty!20749 tp!1231448))))

(declare-fun tp!1231447 () Bool)

(declare-fun b!4068760 () Bool)

(assert (=> b!4068760 (= e!2525098 (and tp!1231447 (inv!58095 (tag!7844 (h!48881 rules!2999))) (inv!58098 (transformation!6984 (h!48881 rules!2999))) e!2525114))))

(declare-fun b!4068761 () Bool)

(declare-fun tp!1231455 () Bool)

(assert (=> b!4068761 (= e!2525122 (and tp_is_empty!20749 tp!1231455))))

(declare-fun b!4068762 () Bool)

(assert (=> b!4068762 (= e!2525121 e!2525111)))

(declare-fun res!1661007 () Bool)

(assert (=> b!4068762 (=> res!1661007 e!2525111)))

(assert (=> b!4068762 (= res!1661007 (not (= lt!1456324 lt!1456322)))))

(assert (=> b!4068762 (= lt!1456324 (++!11386 lt!1456312 lt!1456319))))

(assert (=> b!4068762 (= lt!1456319 (getSuffix!2488 lt!1456322 lt!1456312))))

(assert (=> b!4068762 e!2525096))

(declare-fun res!1661004 () Bool)

(assert (=> b!4068762 (=> (not res!1661004) (not e!2525096))))

(assert (=> b!4068762 (= res!1661004 (isPrefix!4071 lt!1456322 lt!1456322))))

(declare-fun lt!1456328 () Unit!63027)

(declare-fun lemmaIsPrefixRefl!2638 (List!43583 List!43583) Unit!63027)

(assert (=> b!4068762 (= lt!1456328 (lemmaIsPrefixRefl!2638 lt!1456322 lt!1456322))))

(assert (= (and start!383824 res!1660997) b!4068741))

(assert (= (and b!4068741 res!1661001) b!4068742))

(assert (= (and b!4068742 res!1661013) b!4068738))

(assert (= (and b!4068738 res!1661011) b!4068746))

(assert (= (and b!4068746 res!1661014) b!4068757))

(assert (= (and b!4068757 res!1661012) b!4068751))

(assert (= (and b!4068751 res!1661006) b!4068739))

(assert (= (and b!4068739 res!1661008) b!4068744))

(assert (= (and b!4068744 (not res!1660999)) b!4068749))

(assert (= (and b!4068749 (not res!1660998)) b!4068737))

(assert (= (and b!4068737 (not res!1661000)) b!4068740))

(assert (= (and b!4068740 (not res!1661002)) b!4068733))

(assert (= (and b!4068733 (not res!1661009)) b!4068735))

(assert (= (and b!4068735 (not res!1661010)) b!4068762))

(assert (= (and b!4068762 res!1661004) b!4068748))

(assert (= (and b!4068748 res!1660996) b!4068754))

(assert (= (and b!4068754 res!1661005) b!4068756))

(assert (= (and b!4068762 (not res!1661007)) b!4068743))

(assert (= (and b!4068743 (not res!1661015)) b!4068753))

(assert (= (and b!4068753 (not res!1661003)) b!4068758))

(assert (= (and start!383824 ((_ is Cons!43459) prefix!494)) b!4068736))

(assert (= b!4068752 b!4068732))

(assert (= b!4068755 b!4068752))

(assert (= start!383824 b!4068755))

(assert (= (and start!383824 ((_ is Cons!43459) suffixResult!105)) b!4068759))

(assert (= (and start!383824 ((_ is Cons!43459) suffix!1299)) b!4068747))

(assert (= (and start!383824 ((_ is Cons!43459) newSuffix!27)) b!4068761))

(assert (= b!4068760 b!4068750))

(assert (= b!4068745 b!4068760))

(assert (= (and start!383824 ((_ is Cons!43461) rules!2999)) b!4068745))

(assert (= (and start!383824 ((_ is Cons!43459) newSuffixResult!27)) b!4068734))

(declare-fun m!4677413 () Bool)

(assert (=> b!4068749 m!4677413))

(declare-fun m!4677415 () Bool)

(assert (=> b!4068749 m!4677415))

(declare-fun m!4677417 () Bool)

(assert (=> b!4068749 m!4677417))

(declare-fun m!4677419 () Bool)

(assert (=> b!4068749 m!4677419))

(declare-fun m!4677421 () Bool)

(assert (=> b!4068749 m!4677421))

(declare-fun m!4677423 () Bool)

(assert (=> b!4068755 m!4677423))

(declare-fun m!4677425 () Bool)

(assert (=> b!4068737 m!4677425))

(declare-fun m!4677427 () Bool)

(assert (=> b!4068737 m!4677427))

(declare-fun m!4677429 () Bool)

(assert (=> b!4068737 m!4677429))

(declare-fun m!4677431 () Bool)

(assert (=> b!4068737 m!4677431))

(declare-fun m!4677433 () Bool)

(assert (=> b!4068757 m!4677433))

(declare-fun m!4677435 () Bool)

(assert (=> b!4068757 m!4677435))

(declare-fun m!4677437 () Bool)

(assert (=> b!4068757 m!4677437))

(assert (=> b!4068757 m!4677437))

(declare-fun m!4677439 () Bool)

(assert (=> b!4068757 m!4677439))

(declare-fun m!4677441 () Bool)

(assert (=> b!4068753 m!4677441))

(declare-fun m!4677443 () Bool)

(assert (=> b!4068758 m!4677443))

(declare-fun m!4677445 () Bool)

(assert (=> b!4068739 m!4677445))

(declare-fun m!4677447 () Bool)

(assert (=> b!4068739 m!4677447))

(declare-fun m!4677449 () Bool)

(assert (=> b!4068762 m!4677449))

(declare-fun m!4677451 () Bool)

(assert (=> b!4068762 m!4677451))

(declare-fun m!4677453 () Bool)

(assert (=> b!4068762 m!4677453))

(declare-fun m!4677455 () Bool)

(assert (=> b!4068762 m!4677455))

(declare-fun m!4677457 () Bool)

(assert (=> b!4068742 m!4677457))

(declare-fun m!4677459 () Bool)

(assert (=> b!4068760 m!4677459))

(declare-fun m!4677461 () Bool)

(assert (=> b!4068760 m!4677461))

(declare-fun m!4677463 () Bool)

(assert (=> b!4068754 m!4677463))

(declare-fun m!4677465 () Bool)

(assert (=> b!4068741 m!4677465))

(declare-fun m!4677467 () Bool)

(assert (=> b!4068740 m!4677467))

(declare-fun m!4677469 () Bool)

(assert (=> b!4068740 m!4677469))

(declare-fun m!4677471 () Bool)

(assert (=> b!4068740 m!4677471))

(declare-fun m!4677473 () Bool)

(assert (=> b!4068740 m!4677473))

(declare-fun m!4677475 () Bool)

(assert (=> b!4068738 m!4677475))

(declare-fun m!4677477 () Bool)

(assert (=> b!4068738 m!4677477))

(declare-fun m!4677479 () Bool)

(assert (=> start!383824 m!4677479))

(declare-fun m!4677481 () Bool)

(assert (=> b!4068735 m!4677481))

(declare-fun m!4677483 () Bool)

(assert (=> b!4068735 m!4677483))

(declare-fun m!4677485 () Bool)

(assert (=> b!4068735 m!4677485))

(declare-fun m!4677487 () Bool)

(assert (=> b!4068735 m!4677487))

(declare-fun m!4677489 () Bool)

(assert (=> b!4068751 m!4677489))

(declare-fun m!4677491 () Bool)

(assert (=> b!4068751 m!4677491))

(declare-fun m!4677493 () Bool)

(assert (=> b!4068752 m!4677493))

(declare-fun m!4677495 () Bool)

(assert (=> b!4068752 m!4677495))

(declare-fun m!4677497 () Bool)

(assert (=> b!4068746 m!4677497))

(declare-fun m!4677499 () Bool)

(assert (=> b!4068733 m!4677499))

(declare-fun m!4677501 () Bool)

(assert (=> b!4068733 m!4677501))

(assert (=> b!4068733 m!4677501))

(declare-fun m!4677503 () Bool)

(assert (=> b!4068733 m!4677503))

(declare-fun m!4677505 () Bool)

(assert (=> b!4068733 m!4677505))

(declare-fun m!4677507 () Bool)

(assert (=> b!4068733 m!4677507))

(declare-fun m!4677509 () Bool)

(assert (=> b!4068733 m!4677509))

(declare-fun m!4677511 () Bool)

(assert (=> b!4068733 m!4677511))

(declare-fun m!4677513 () Bool)

(assert (=> b!4068743 m!4677513))

(declare-fun m!4677515 () Bool)

(assert (=> b!4068743 m!4677515))

(declare-fun m!4677517 () Bool)

(assert (=> b!4068743 m!4677517))

(declare-fun m!4677519 () Bool)

(assert (=> b!4068743 m!4677519))

(declare-fun m!4677521 () Bool)

(assert (=> b!4068744 m!4677521))

(declare-fun m!4677523 () Bool)

(assert (=> b!4068744 m!4677523))

(declare-fun m!4677525 () Bool)

(assert (=> b!4068744 m!4677525))

(declare-fun m!4677527 () Bool)

(assert (=> b!4068744 m!4677527))

(check-sat (not b!4068746) (not b_next!113893) (not b_next!113891) (not b!4068742) b_and!312697 (not b!4068735) (not b!4068755) (not b_next!113895) (not b!4068747) (not b_next!113889) (not b!4068753) (not b!4068749) (not b!4068741) (not b!4068743) (not b!4068738) (not b!4068758) b_and!312693 (not b!4068757) (not b!4068740) (not b!4068761) (not b!4068745) (not b!4068759) (not b!4068737) (not b!4068751) (not b!4068736) (not b!4068734) (not start!383824) (not b!4068760) (not b!4068733) (not b!4068744) (not b!4068752) b_and!312691 tp_is_empty!20749 b_and!312695 (not b!4068762) (not b!4068739) (not b!4068754))
(check-sat (not b_next!113893) (not b_next!113891) b_and!312697 (not b_next!113895) (not b_next!113889) b_and!312691 b_and!312695 b_and!312693)
(get-model)

(declare-fun b!4068803 () Bool)

(declare-fun res!1661047 () Bool)

(declare-fun e!2525150 () Bool)

(assert (=> b!4068803 (=> res!1661047 e!2525150)))

(declare-fun isEmpty!25940 (List!43583) Bool)

(declare-fun tail!6317 (List!43583) List!43583)

(assert (=> b!4068803 (= res!1661047 (not (isEmpty!25940 (tail!6317 lt!1456312))))))

(declare-fun b!4068804 () Bool)

(declare-fun e!2525147 () Bool)

(declare-fun lt!1456346 () Bool)

(assert (=> b!4068804 (= e!2525147 (not lt!1456346))))

(declare-fun b!4068805 () Bool)

(declare-fun e!2525145 () Bool)

(declare-fun head!8585 (List!43583) C!23964)

(assert (=> b!4068805 (= e!2525145 (= (head!8585 lt!1456312) (c!702411 (regex!6984 (rule!10088 token!484)))))))

(declare-fun d!1209393 () Bool)

(declare-fun e!2525148 () Bool)

(assert (=> d!1209393 e!2525148))

(declare-fun c!702424 () Bool)

(assert (=> d!1209393 (= c!702424 ((_ is EmptyExpr!11889) (regex!6984 (rule!10088 token!484))))))

(declare-fun e!2525149 () Bool)

(assert (=> d!1209393 (= lt!1456346 e!2525149)))

(declare-fun c!702423 () Bool)

(assert (=> d!1209393 (= c!702423 (isEmpty!25940 lt!1456312))))

(declare-fun validRegex!5382 (Regex!11889) Bool)

(assert (=> d!1209393 (validRegex!5382 (regex!6984 (rule!10088 token!484)))))

(assert (=> d!1209393 (= (matchR!5842 (regex!6984 (rule!10088 token!484)) lt!1456312) lt!1456346)))

(declare-fun b!4068806 () Bool)

(declare-fun nullable!4182 (Regex!11889) Bool)

(assert (=> b!4068806 (= e!2525149 (nullable!4182 (regex!6984 (rule!10088 token!484))))))

(declare-fun b!4068807 () Bool)

(assert (=> b!4068807 (= e!2525148 e!2525147)))

(declare-fun c!702422 () Bool)

(assert (=> b!4068807 (= c!702422 ((_ is EmptyLang!11889) (regex!6984 (rule!10088 token!484))))))

(declare-fun b!4068808 () Bool)

(declare-fun res!1661040 () Bool)

(declare-fun e!2525146 () Bool)

(assert (=> b!4068808 (=> res!1661040 e!2525146)))

(assert (=> b!4068808 (= res!1661040 (not ((_ is ElementMatch!11889) (regex!6984 (rule!10088 token!484)))))))

(assert (=> b!4068808 (= e!2525147 e!2525146)))

(declare-fun b!4068809 () Bool)

(declare-fun res!1661041 () Bool)

(assert (=> b!4068809 (=> res!1661041 e!2525146)))

(assert (=> b!4068809 (= res!1661041 e!2525145)))

(declare-fun res!1661046 () Bool)

(assert (=> b!4068809 (=> (not res!1661046) (not e!2525145))))

(assert (=> b!4068809 (= res!1661046 lt!1456346)))

(declare-fun b!4068810 () Bool)

(declare-fun e!2525151 () Bool)

(assert (=> b!4068810 (= e!2525151 e!2525150)))

(declare-fun res!1661045 () Bool)

(assert (=> b!4068810 (=> res!1661045 e!2525150)))

(declare-fun call!288329 () Bool)

(assert (=> b!4068810 (= res!1661045 call!288329)))

(declare-fun bm!288324 () Bool)

(assert (=> bm!288324 (= call!288329 (isEmpty!25940 lt!1456312))))

(declare-fun b!4068811 () Bool)

(declare-fun res!1661043 () Bool)

(assert (=> b!4068811 (=> (not res!1661043) (not e!2525145))))

(assert (=> b!4068811 (= res!1661043 (not call!288329))))

(declare-fun b!4068812 () Bool)

(assert (=> b!4068812 (= e!2525146 e!2525151)))

(declare-fun res!1661044 () Bool)

(assert (=> b!4068812 (=> (not res!1661044) (not e!2525151))))

(assert (=> b!4068812 (= res!1661044 (not lt!1456346))))

(declare-fun b!4068813 () Bool)

(declare-fun res!1661042 () Bool)

(assert (=> b!4068813 (=> (not res!1661042) (not e!2525145))))

(assert (=> b!4068813 (= res!1661042 (isEmpty!25940 (tail!6317 lt!1456312)))))

(declare-fun b!4068814 () Bool)

(assert (=> b!4068814 (= e!2525150 (not (= (head!8585 lt!1456312) (c!702411 (regex!6984 (rule!10088 token!484))))))))

(declare-fun b!4068815 () Bool)

(declare-fun derivativeStep!3587 (Regex!11889 C!23964) Regex!11889)

(assert (=> b!4068815 (= e!2525149 (matchR!5842 (derivativeStep!3587 (regex!6984 (rule!10088 token!484)) (head!8585 lt!1456312)) (tail!6317 lt!1456312)))))

(declare-fun b!4068816 () Bool)

(assert (=> b!4068816 (= e!2525148 (= lt!1456346 call!288329))))

(assert (= (and d!1209393 c!702423) b!4068806))

(assert (= (and d!1209393 (not c!702423)) b!4068815))

(assert (= (and d!1209393 c!702424) b!4068816))

(assert (= (and d!1209393 (not c!702424)) b!4068807))

(assert (= (and b!4068807 c!702422) b!4068804))

(assert (= (and b!4068807 (not c!702422)) b!4068808))

(assert (= (and b!4068808 (not res!1661040)) b!4068809))

(assert (= (and b!4068809 res!1661046) b!4068811))

(assert (= (and b!4068811 res!1661043) b!4068813))

(assert (= (and b!4068813 res!1661042) b!4068805))

(assert (= (and b!4068809 (not res!1661041)) b!4068812))

(assert (= (and b!4068812 res!1661044) b!4068810))

(assert (= (and b!4068810 (not res!1661045)) b!4068803))

(assert (= (and b!4068803 (not res!1661047)) b!4068814))

(assert (= (or b!4068816 b!4068810 b!4068811) bm!288324))

(declare-fun m!4677533 () Bool)

(assert (=> b!4068806 m!4677533))

(declare-fun m!4677535 () Bool)

(assert (=> bm!288324 m!4677535))

(declare-fun m!4677537 () Bool)

(assert (=> b!4068813 m!4677537))

(assert (=> b!4068813 m!4677537))

(declare-fun m!4677539 () Bool)

(assert (=> b!4068813 m!4677539))

(declare-fun m!4677541 () Bool)

(assert (=> b!4068815 m!4677541))

(assert (=> b!4068815 m!4677541))

(declare-fun m!4677543 () Bool)

(assert (=> b!4068815 m!4677543))

(assert (=> b!4068815 m!4677537))

(assert (=> b!4068815 m!4677543))

(assert (=> b!4068815 m!4677537))

(declare-fun m!4677545 () Bool)

(assert (=> b!4068815 m!4677545))

(assert (=> b!4068805 m!4677541))

(assert (=> b!4068814 m!4677541))

(assert (=> d!1209393 m!4677535))

(declare-fun m!4677547 () Bool)

(assert (=> d!1209393 m!4677547))

(assert (=> b!4068803 m!4677537))

(assert (=> b!4068803 m!4677537))

(assert (=> b!4068803 m!4677539))

(assert (=> b!4068735 d!1209393))

(declare-fun d!1209395 () Bool)

(declare-fun e!2525159 () Bool)

(assert (=> d!1209395 e!2525159))

(declare-fun res!1661057 () Bool)

(assert (=> d!1209395 (=> res!1661057 e!2525159)))

(declare-fun lt!1456349 () Bool)

(assert (=> d!1209395 (= res!1661057 (not lt!1456349))))

(declare-fun e!2525158 () Bool)

(assert (=> d!1209395 (= lt!1456349 e!2525158)))

(declare-fun res!1661056 () Bool)

(assert (=> d!1209395 (=> res!1661056 e!2525158)))

(assert (=> d!1209395 (= res!1661056 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209395 (= (isPrefix!4071 lt!1456312 lt!1456331) lt!1456349)))

(declare-fun b!4068827 () Bool)

(declare-fun e!2525160 () Bool)

(assert (=> b!4068827 (= e!2525160 (isPrefix!4071 (tail!6317 lt!1456312) (tail!6317 lt!1456331)))))

(declare-fun b!4068828 () Bool)

(assert (=> b!4068828 (= e!2525159 (>= (size!32492 lt!1456331) (size!32492 lt!1456312)))))

(declare-fun b!4068825 () Bool)

(assert (=> b!4068825 (= e!2525158 e!2525160)))

(declare-fun res!1661058 () Bool)

(assert (=> b!4068825 (=> (not res!1661058) (not e!2525160))))

(assert (=> b!4068825 (= res!1661058 (not ((_ is Nil!43459) lt!1456331)))))

(declare-fun b!4068826 () Bool)

(declare-fun res!1661059 () Bool)

(assert (=> b!4068826 (=> (not res!1661059) (not e!2525160))))

(assert (=> b!4068826 (= res!1661059 (= (head!8585 lt!1456312) (head!8585 lt!1456331)))))

(assert (= (and d!1209395 (not res!1661056)) b!4068825))

(assert (= (and b!4068825 res!1661058) b!4068826))

(assert (= (and b!4068826 res!1661059) b!4068827))

(assert (= (and d!1209395 (not res!1661057)) b!4068828))

(assert (=> b!4068827 m!4677537))

(declare-fun m!4677549 () Bool)

(assert (=> b!4068827 m!4677549))

(assert (=> b!4068827 m!4677537))

(assert (=> b!4068827 m!4677549))

(declare-fun m!4677551 () Bool)

(assert (=> b!4068827 m!4677551))

(declare-fun m!4677553 () Bool)

(assert (=> b!4068828 m!4677553))

(assert (=> b!4068828 m!4677433))

(assert (=> b!4068826 m!4677541))

(declare-fun m!4677555 () Bool)

(assert (=> b!4068826 m!4677555))

(assert (=> b!4068735 d!1209395))

(declare-fun d!1209397 () Bool)

(assert (=> d!1209397 (isPrefix!4071 lt!1456312 (++!11386 prefix!494 newSuffix!27))))

(declare-fun lt!1456352 () Unit!63027)

(declare-fun choose!24806 (List!43583 List!43583 List!43583) Unit!63027)

(assert (=> d!1209397 (= lt!1456352 (choose!24806 lt!1456312 prefix!494 newSuffix!27))))

(assert (=> d!1209397 (isPrefix!4071 lt!1456312 prefix!494)))

(assert (=> d!1209397 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!864 lt!1456312 prefix!494 newSuffix!27) lt!1456352)))

(declare-fun bs!592485 () Bool)

(assert (= bs!592485 d!1209397))

(assert (=> bs!592485 m!4677489))

(assert (=> bs!592485 m!4677489))

(declare-fun m!4677557 () Bool)

(assert (=> bs!592485 m!4677557))

(declare-fun m!4677559 () Bool)

(assert (=> bs!592485 m!4677559))

(assert (=> bs!592485 m!4677429))

(assert (=> b!4068735 d!1209397))

(declare-fun d!1209399 () Bool)

(assert (=> d!1209399 (isPrefix!4071 lt!1456312 (++!11386 prefix!494 suffix!1299))))

(declare-fun lt!1456353 () Unit!63027)

(assert (=> d!1209399 (= lt!1456353 (choose!24806 lt!1456312 prefix!494 suffix!1299))))

(assert (=> d!1209399 (isPrefix!4071 lt!1456312 prefix!494)))

(assert (=> d!1209399 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!864 lt!1456312 prefix!494 suffix!1299) lt!1456353)))

(declare-fun bs!592486 () Bool)

(assert (= bs!592486 d!1209399))

(assert (=> bs!592486 m!4677447))

(assert (=> bs!592486 m!4677447))

(declare-fun m!4677561 () Bool)

(assert (=> bs!592486 m!4677561))

(declare-fun m!4677563 () Bool)

(assert (=> bs!592486 m!4677563))

(assert (=> bs!592486 m!4677429))

(assert (=> b!4068735 d!1209399))

(declare-fun d!1209401 () Bool)

(declare-fun e!2525162 () Bool)

(assert (=> d!1209401 e!2525162))

(declare-fun res!1661061 () Bool)

(assert (=> d!1209401 (=> res!1661061 e!2525162)))

(declare-fun lt!1456354 () Bool)

(assert (=> d!1209401 (= res!1661061 (not lt!1456354))))

(declare-fun e!2525161 () Bool)

(assert (=> d!1209401 (= lt!1456354 e!2525161)))

(declare-fun res!1661060 () Bool)

(assert (=> d!1209401 (=> res!1661060 e!2525161)))

(assert (=> d!1209401 (= res!1661060 ((_ is Nil!43459) newSuffix!27))))

(assert (=> d!1209401 (= (isPrefix!4071 newSuffix!27 suffix!1299) lt!1456354)))

(declare-fun b!4068831 () Bool)

(declare-fun e!2525163 () Bool)

(assert (=> b!4068831 (= e!2525163 (isPrefix!4071 (tail!6317 newSuffix!27) (tail!6317 suffix!1299)))))

(declare-fun b!4068832 () Bool)

(assert (=> b!4068832 (= e!2525162 (>= (size!32492 suffix!1299) (size!32492 newSuffix!27)))))

(declare-fun b!4068829 () Bool)

(assert (=> b!4068829 (= e!2525161 e!2525163)))

(declare-fun res!1661062 () Bool)

(assert (=> b!4068829 (=> (not res!1661062) (not e!2525163))))

(assert (=> b!4068829 (= res!1661062 (not ((_ is Nil!43459) suffix!1299)))))

(declare-fun b!4068830 () Bool)

(declare-fun res!1661063 () Bool)

(assert (=> b!4068830 (=> (not res!1661063) (not e!2525163))))

(assert (=> b!4068830 (= res!1661063 (= (head!8585 newSuffix!27) (head!8585 suffix!1299)))))

(assert (= (and d!1209401 (not res!1661060)) b!4068829))

(assert (= (and b!4068829 res!1661062) b!4068830))

(assert (= (and b!4068830 res!1661063) b!4068831))

(assert (= (and d!1209401 (not res!1661061)) b!4068832))

(declare-fun m!4677565 () Bool)

(assert (=> b!4068831 m!4677565))

(declare-fun m!4677567 () Bool)

(assert (=> b!4068831 m!4677567))

(assert (=> b!4068831 m!4677565))

(assert (=> b!4068831 m!4677567))

(declare-fun m!4677569 () Bool)

(assert (=> b!4068831 m!4677569))

(assert (=> b!4068832 m!4677475))

(assert (=> b!4068832 m!4677477))

(declare-fun m!4677571 () Bool)

(assert (=> b!4068830 m!4677571))

(declare-fun m!4677573 () Bool)

(assert (=> b!4068830 m!4677573))

(assert (=> b!4068746 d!1209401))

(declare-fun d!1209403 () Bool)

(declare-fun lt!1456357 () Int)

(assert (=> d!1209403 (>= lt!1456357 0)))

(declare-fun e!2525166 () Int)

(assert (=> d!1209403 (= lt!1456357 e!2525166)))

(declare-fun c!702427 () Bool)

(assert (=> d!1209403 (= c!702427 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209403 (= (size!32492 lt!1456312) lt!1456357)))

(declare-fun b!4068837 () Bool)

(assert (=> b!4068837 (= e!2525166 0)))

(declare-fun b!4068838 () Bool)

(assert (=> b!4068838 (= e!2525166 (+ 1 (size!32492 (t!336958 lt!1456312))))))

(assert (= (and d!1209403 c!702427) b!4068837))

(assert (= (and d!1209403 (not c!702427)) b!4068838))

(declare-fun m!4677575 () Bool)

(assert (=> b!4068838 m!4677575))

(assert (=> b!4068757 d!1209403))

(declare-fun d!1209405 () Bool)

(declare-fun lt!1456358 () Int)

(assert (=> d!1209405 (>= lt!1456358 0)))

(declare-fun e!2525167 () Int)

(assert (=> d!1209405 (= lt!1456358 e!2525167)))

(declare-fun c!702428 () Bool)

(assert (=> d!1209405 (= c!702428 ((_ is Nil!43459) prefix!494))))

(assert (=> d!1209405 (= (size!32492 prefix!494) lt!1456358)))

(declare-fun b!4068839 () Bool)

(assert (=> b!4068839 (= e!2525167 0)))

(declare-fun b!4068840 () Bool)

(assert (=> b!4068840 (= e!2525167 (+ 1 (size!32492 (t!336958 prefix!494))))))

(assert (= (and d!1209405 c!702428) b!4068839))

(assert (= (and d!1209405 (not c!702428)) b!4068840))

(declare-fun m!4677577 () Bool)

(assert (=> b!4068840 m!4677577))

(assert (=> b!4068757 d!1209405))

(declare-fun d!1209407 () Bool)

(declare-fun list!16205 (Conc!13195) List!43583)

(assert (=> d!1209407 (= (list!16204 (charsOf!4800 token!484)) (list!16205 (c!702410 (charsOf!4800 token!484))))))

(declare-fun bs!592487 () Bool)

(assert (= bs!592487 d!1209407))

(declare-fun m!4677579 () Bool)

(assert (=> bs!592487 m!4677579))

(assert (=> b!4068757 d!1209407))

(declare-fun d!1209409 () Bool)

(declare-fun lt!1456361 () BalanceConc!25984)

(assert (=> d!1209409 (= (list!16204 lt!1456361) (originalCharacters!7584 token!484))))

(declare-fun dynLambda!18459 (Int TokenValue!7214) BalanceConc!25984)

(assert (=> d!1209409 (= lt!1456361 (dynLambda!18459 (toChars!9403 (transformation!6984 (rule!10088 token!484))) (value!219678 token!484)))))

(assert (=> d!1209409 (= (charsOf!4800 token!484) lt!1456361)))

(declare-fun b_lambda!118863 () Bool)

(assert (=> (not b_lambda!118863) (not d!1209409)))

(declare-fun t!336962 () Bool)

(declare-fun tb!244601 () Bool)

(assert (=> (and b!4068732 (= (toChars!9403 (transformation!6984 (rule!10088 token!484))) (toChars!9403 (transformation!6984 (rule!10088 token!484)))) t!336962) tb!244601))

(declare-fun b!4068845 () Bool)

(declare-fun e!2525170 () Bool)

(declare-fun tp!1231459 () Bool)

(declare-fun inv!58100 (Conc!13195) Bool)

(assert (=> b!4068845 (= e!2525170 (and (inv!58100 (c!702410 (dynLambda!18459 (toChars!9403 (transformation!6984 (rule!10088 token!484))) (value!219678 token!484)))) tp!1231459))))

(declare-fun result!296438 () Bool)

(declare-fun inv!58101 (BalanceConc!25984) Bool)

(assert (=> tb!244601 (= result!296438 (and (inv!58101 (dynLambda!18459 (toChars!9403 (transformation!6984 (rule!10088 token!484))) (value!219678 token!484))) e!2525170))))

(assert (= tb!244601 b!4068845))

(declare-fun m!4677581 () Bool)

(assert (=> b!4068845 m!4677581))

(declare-fun m!4677583 () Bool)

(assert (=> tb!244601 m!4677583))

(assert (=> d!1209409 t!336962))

(declare-fun b_and!312699 () Bool)

(assert (= b_and!312693 (and (=> t!336962 result!296438) b_and!312699)))

(declare-fun tb!244603 () Bool)

(declare-fun t!336964 () Bool)

(assert (=> (and b!4068750 (= (toChars!9403 (transformation!6984 (h!48881 rules!2999))) (toChars!9403 (transformation!6984 (rule!10088 token!484)))) t!336964) tb!244603))

(declare-fun result!296442 () Bool)

(assert (= result!296442 result!296438))

(assert (=> d!1209409 t!336964))

(declare-fun b_and!312701 () Bool)

(assert (= b_and!312697 (and (=> t!336964 result!296442) b_and!312701)))

(declare-fun m!4677585 () Bool)

(assert (=> d!1209409 m!4677585))

(declare-fun m!4677587 () Bool)

(assert (=> d!1209409 m!4677587))

(assert (=> b!4068757 d!1209409))

(declare-fun b!4068856 () Bool)

(declare-fun e!2525178 () Bool)

(declare-fun inv!16 (TokenValue!7214) Bool)

(assert (=> b!4068856 (= e!2525178 (inv!16 (value!219678 token!484)))))

(declare-fun b!4068857 () Bool)

(declare-fun res!1661066 () Bool)

(declare-fun e!2525179 () Bool)

(assert (=> b!4068857 (=> res!1661066 e!2525179)))

(assert (=> b!4068857 (= res!1661066 (not ((_ is IntegerValue!21644) (value!219678 token!484))))))

(declare-fun e!2525177 () Bool)

(assert (=> b!4068857 (= e!2525177 e!2525179)))

(declare-fun b!4068858 () Bool)

(assert (=> b!4068858 (= e!2525178 e!2525177)))

(declare-fun c!702434 () Bool)

(assert (=> b!4068858 (= c!702434 ((_ is IntegerValue!21643) (value!219678 token!484)))))

(declare-fun b!4068859 () Bool)

(declare-fun inv!17 (TokenValue!7214) Bool)

(assert (=> b!4068859 (= e!2525177 (inv!17 (value!219678 token!484)))))

(declare-fun b!4068860 () Bool)

(declare-fun inv!15 (TokenValue!7214) Bool)

(assert (=> b!4068860 (= e!2525179 (inv!15 (value!219678 token!484)))))

(declare-fun d!1209411 () Bool)

(declare-fun c!702433 () Bool)

(assert (=> d!1209411 (= c!702433 ((_ is IntegerValue!21642) (value!219678 token!484)))))

(assert (=> d!1209411 (= (inv!21 (value!219678 token!484)) e!2525178)))

(assert (= (and d!1209411 c!702433) b!4068856))

(assert (= (and d!1209411 (not c!702433)) b!4068858))

(assert (= (and b!4068858 c!702434) b!4068859))

(assert (= (and b!4068858 (not c!702434)) b!4068857))

(assert (= (and b!4068857 (not res!1661066)) b!4068860))

(declare-fun m!4677589 () Bool)

(assert (=> b!4068856 m!4677589))

(declare-fun m!4677591 () Bool)

(assert (=> b!4068859 m!4677591))

(declare-fun m!4677593 () Bool)

(assert (=> b!4068860 m!4677593))

(assert (=> b!4068755 d!1209411))

(declare-fun d!1209413 () Bool)

(declare-fun lt!1456362 () Int)

(assert (=> d!1209413 (>= lt!1456362 0)))

(declare-fun e!2525180 () Int)

(assert (=> d!1209413 (= lt!1456362 e!2525180)))

(declare-fun c!702435 () Bool)

(assert (=> d!1209413 (= c!702435 ((_ is Nil!43459) suffix!1299))))

(assert (=> d!1209413 (= (size!32492 suffix!1299) lt!1456362)))

(declare-fun b!4068861 () Bool)

(assert (=> b!4068861 (= e!2525180 0)))

(declare-fun b!4068862 () Bool)

(assert (=> b!4068862 (= e!2525180 (+ 1 (size!32492 (t!336958 suffix!1299))))))

(assert (= (and d!1209413 c!702435) b!4068861))

(assert (= (and d!1209413 (not c!702435)) b!4068862))

(declare-fun m!4677595 () Bool)

(assert (=> b!4068862 m!4677595))

(assert (=> b!4068738 d!1209413))

(declare-fun d!1209415 () Bool)

(declare-fun lt!1456363 () Int)

(assert (=> d!1209415 (>= lt!1456363 0)))

(declare-fun e!2525181 () Int)

(assert (=> d!1209415 (= lt!1456363 e!2525181)))

(declare-fun c!702436 () Bool)

(assert (=> d!1209415 (= c!702436 ((_ is Nil!43459) newSuffix!27))))

(assert (=> d!1209415 (= (size!32492 newSuffix!27) lt!1456363)))

(declare-fun b!4068863 () Bool)

(assert (=> b!4068863 (= e!2525181 0)))

(declare-fun b!4068864 () Bool)

(assert (=> b!4068864 (= e!2525181 (+ 1 (size!32492 (t!336958 newSuffix!27))))))

(assert (= (and d!1209415 c!702436) b!4068863))

(assert (= (and d!1209415 (not c!702436)) b!4068864))

(declare-fun m!4677597 () Bool)

(assert (=> b!4068864 m!4677597))

(assert (=> b!4068738 d!1209415))

(declare-fun d!1209417 () Bool)

(declare-fun e!2525183 () Bool)

(assert (=> d!1209417 e!2525183))

(declare-fun res!1661068 () Bool)

(assert (=> d!1209417 (=> res!1661068 e!2525183)))

(declare-fun lt!1456364 () Bool)

(assert (=> d!1209417 (= res!1661068 (not lt!1456364))))

(declare-fun e!2525182 () Bool)

(assert (=> d!1209417 (= lt!1456364 e!2525182)))

(declare-fun res!1661067 () Bool)

(assert (=> d!1209417 (=> res!1661067 e!2525182)))

(assert (=> d!1209417 (= res!1661067 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209417 (= (isPrefix!4071 lt!1456312 lt!1456337) lt!1456364)))

(declare-fun b!4068867 () Bool)

(declare-fun e!2525184 () Bool)

(assert (=> b!4068867 (= e!2525184 (isPrefix!4071 (tail!6317 lt!1456312) (tail!6317 lt!1456337)))))

(declare-fun b!4068868 () Bool)

(assert (=> b!4068868 (= e!2525183 (>= (size!32492 lt!1456337) (size!32492 lt!1456312)))))

(declare-fun b!4068865 () Bool)

(assert (=> b!4068865 (= e!2525182 e!2525184)))

(declare-fun res!1661069 () Bool)

(assert (=> b!4068865 (=> (not res!1661069) (not e!2525184))))

(assert (=> b!4068865 (= res!1661069 (not ((_ is Nil!43459) lt!1456337)))))

(declare-fun b!4068866 () Bool)

(declare-fun res!1661070 () Bool)

(assert (=> b!4068866 (=> (not res!1661070) (not e!2525184))))

(assert (=> b!4068866 (= res!1661070 (= (head!8585 lt!1456312) (head!8585 lt!1456337)))))

(assert (= (and d!1209417 (not res!1661067)) b!4068865))

(assert (= (and b!4068865 res!1661069) b!4068866))

(assert (= (and b!4068866 res!1661070) b!4068867))

(assert (= (and d!1209417 (not res!1661068)) b!4068868))

(assert (=> b!4068867 m!4677537))

(declare-fun m!4677599 () Bool)

(assert (=> b!4068867 m!4677599))

(assert (=> b!4068867 m!4677537))

(assert (=> b!4068867 m!4677599))

(declare-fun m!4677601 () Bool)

(assert (=> b!4068867 m!4677601))

(declare-fun m!4677603 () Bool)

(assert (=> b!4068868 m!4677603))

(assert (=> b!4068868 m!4677433))

(assert (=> b!4068866 m!4677541))

(declare-fun m!4677605 () Bool)

(assert (=> b!4068866 m!4677605))

(assert (=> b!4068749 d!1209417))

(declare-fun d!1209419 () Bool)

(assert (=> d!1209419 (isPrefix!4071 lt!1456312 (++!11386 lt!1456312 suffixResult!105))))

(declare-fun lt!1456367 () Unit!63027)

(declare-fun choose!24809 (List!43583 List!43583) Unit!63027)

(assert (=> d!1209419 (= lt!1456367 (choose!24809 lt!1456312 suffixResult!105))))

(assert (=> d!1209419 (= (lemmaConcatTwoListThenFirstIsPrefix!2906 lt!1456312 suffixResult!105) lt!1456367)))

(declare-fun bs!592488 () Bool)

(assert (= bs!592488 d!1209419))

(assert (=> bs!592488 m!4677521))

(assert (=> bs!592488 m!4677521))

(declare-fun m!4677607 () Bool)

(assert (=> bs!592488 m!4677607))

(declare-fun m!4677609 () Bool)

(assert (=> bs!592488 m!4677609))

(assert (=> b!4068749 d!1209419))

(declare-fun d!1209421 () Bool)

(declare-fun e!2525186 () Bool)

(assert (=> d!1209421 e!2525186))

(declare-fun res!1661072 () Bool)

(assert (=> d!1209421 (=> res!1661072 e!2525186)))

(declare-fun lt!1456368 () Bool)

(assert (=> d!1209421 (= res!1661072 (not lt!1456368))))

(declare-fun e!2525185 () Bool)

(assert (=> d!1209421 (= lt!1456368 e!2525185)))

(declare-fun res!1661071 () Bool)

(assert (=> d!1209421 (=> res!1661071 e!2525185)))

(assert (=> d!1209421 (= res!1661071 ((_ is Nil!43459) prefix!494))))

(assert (=> d!1209421 (= (isPrefix!4071 prefix!494 lt!1456322) lt!1456368)))

(declare-fun b!4068871 () Bool)

(declare-fun e!2525187 () Bool)

(assert (=> b!4068871 (= e!2525187 (isPrefix!4071 (tail!6317 prefix!494) (tail!6317 lt!1456322)))))

(declare-fun b!4068872 () Bool)

(assert (=> b!4068872 (= e!2525186 (>= (size!32492 lt!1456322) (size!32492 prefix!494)))))

(declare-fun b!4068869 () Bool)

(assert (=> b!4068869 (= e!2525185 e!2525187)))

(declare-fun res!1661073 () Bool)

(assert (=> b!4068869 (=> (not res!1661073) (not e!2525187))))

(assert (=> b!4068869 (= res!1661073 (not ((_ is Nil!43459) lt!1456322)))))

(declare-fun b!4068870 () Bool)

(declare-fun res!1661074 () Bool)

(assert (=> b!4068870 (=> (not res!1661074) (not e!2525187))))

(assert (=> b!4068870 (= res!1661074 (= (head!8585 prefix!494) (head!8585 lt!1456322)))))

(assert (= (and d!1209421 (not res!1661071)) b!4068869))

(assert (= (and b!4068869 res!1661073) b!4068870))

(assert (= (and b!4068870 res!1661074) b!4068871))

(assert (= (and d!1209421 (not res!1661072)) b!4068872))

(declare-fun m!4677611 () Bool)

(assert (=> b!4068871 m!4677611))

(declare-fun m!4677613 () Bool)

(assert (=> b!4068871 m!4677613))

(assert (=> b!4068871 m!4677611))

(assert (=> b!4068871 m!4677613))

(declare-fun m!4677615 () Bool)

(assert (=> b!4068871 m!4677615))

(declare-fun m!4677617 () Bool)

(assert (=> b!4068872 m!4677617))

(assert (=> b!4068872 m!4677435))

(declare-fun m!4677619 () Bool)

(assert (=> b!4068870 m!4677619))

(declare-fun m!4677621 () Bool)

(assert (=> b!4068870 m!4677621))

(assert (=> b!4068749 d!1209421))

(declare-fun d!1209423 () Bool)

(declare-fun e!2525189 () Bool)

(assert (=> d!1209423 e!2525189))

(declare-fun res!1661076 () Bool)

(assert (=> d!1209423 (=> res!1661076 e!2525189)))

(declare-fun lt!1456369 () Bool)

(assert (=> d!1209423 (= res!1661076 (not lt!1456369))))

(declare-fun e!2525188 () Bool)

(assert (=> d!1209423 (= lt!1456369 e!2525188)))

(declare-fun res!1661075 () Bool)

(assert (=> d!1209423 (=> res!1661075 e!2525188)))

(assert (=> d!1209423 (= res!1661075 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209423 (= (isPrefix!4071 lt!1456312 lt!1456322) lt!1456369)))

(declare-fun b!4068875 () Bool)

(declare-fun e!2525190 () Bool)

(assert (=> b!4068875 (= e!2525190 (isPrefix!4071 (tail!6317 lt!1456312) (tail!6317 lt!1456322)))))

(declare-fun b!4068876 () Bool)

(assert (=> b!4068876 (= e!2525189 (>= (size!32492 lt!1456322) (size!32492 lt!1456312)))))

(declare-fun b!4068873 () Bool)

(assert (=> b!4068873 (= e!2525188 e!2525190)))

(declare-fun res!1661077 () Bool)

(assert (=> b!4068873 (=> (not res!1661077) (not e!2525190))))

(assert (=> b!4068873 (= res!1661077 (not ((_ is Nil!43459) lt!1456322)))))

(declare-fun b!4068874 () Bool)

(declare-fun res!1661078 () Bool)

(assert (=> b!4068874 (=> (not res!1661078) (not e!2525190))))

(assert (=> b!4068874 (= res!1661078 (= (head!8585 lt!1456312) (head!8585 lt!1456322)))))

(assert (= (and d!1209423 (not res!1661075)) b!4068873))

(assert (= (and b!4068873 res!1661077) b!4068874))

(assert (= (and b!4068874 res!1661078) b!4068875))

(assert (= (and d!1209423 (not res!1661076)) b!4068876))

(assert (=> b!4068875 m!4677537))

(assert (=> b!4068875 m!4677613))

(assert (=> b!4068875 m!4677537))

(assert (=> b!4068875 m!4677613))

(declare-fun m!4677623 () Bool)

(assert (=> b!4068875 m!4677623))

(assert (=> b!4068876 m!4677617))

(assert (=> b!4068876 m!4677433))

(assert (=> b!4068874 m!4677541))

(assert (=> b!4068874 m!4677621))

(assert (=> b!4068749 d!1209423))

(declare-fun d!1209425 () Bool)

(assert (=> d!1209425 (isPrefix!4071 prefix!494 (++!11386 prefix!494 suffix!1299))))

(declare-fun lt!1456370 () Unit!63027)

(assert (=> d!1209425 (= lt!1456370 (choose!24809 prefix!494 suffix!1299))))

(assert (=> d!1209425 (= (lemmaConcatTwoListThenFirstIsPrefix!2906 prefix!494 suffix!1299) lt!1456370)))

(declare-fun bs!592489 () Bool)

(assert (= bs!592489 d!1209425))

(assert (=> bs!592489 m!4677447))

(assert (=> bs!592489 m!4677447))

(declare-fun m!4677625 () Bool)

(assert (=> bs!592489 m!4677625))

(declare-fun m!4677627 () Bool)

(assert (=> bs!592489 m!4677627))

(assert (=> b!4068749 d!1209425))

(declare-fun d!1209427 () Bool)

(assert (=> d!1209427 (= (inv!58095 (tag!7844 (h!48881 rules!2999))) (= (mod (str.len (value!219677 (tag!7844 (h!48881 rules!2999)))) 2) 0))))

(assert (=> b!4068760 d!1209427))

(declare-fun d!1209429 () Bool)

(declare-fun res!1661081 () Bool)

(declare-fun e!2525193 () Bool)

(assert (=> d!1209429 (=> (not res!1661081) (not e!2525193))))

(declare-fun semiInverseModEq!2990 (Int Int) Bool)

(assert (=> d!1209429 (= res!1661081 (semiInverseModEq!2990 (toChars!9403 (transformation!6984 (h!48881 rules!2999))) (toValue!9544 (transformation!6984 (h!48881 rules!2999)))))))

(assert (=> d!1209429 (= (inv!58098 (transformation!6984 (h!48881 rules!2999))) e!2525193)))

(declare-fun b!4068879 () Bool)

(declare-fun equivClasses!2889 (Int Int) Bool)

(assert (=> b!4068879 (= e!2525193 (equivClasses!2889 (toChars!9403 (transformation!6984 (h!48881 rules!2999))) (toValue!9544 (transformation!6984 (h!48881 rules!2999)))))))

(assert (= (and d!1209429 res!1661081) b!4068879))

(declare-fun m!4677629 () Bool)

(assert (=> d!1209429 m!4677629))

(declare-fun m!4677631 () Bool)

(assert (=> b!4068879 m!4677631))

(assert (=> b!4068760 d!1209429))

(declare-fun d!1209431 () Bool)

(declare-fun lt!1456373 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6639 (List!43585) (InoxSet Rule!13768))

(assert (=> d!1209431 (= lt!1456373 (select (content!6639 rules!2999) (rule!10088 token!484)))))

(declare-fun e!2525198 () Bool)

(assert (=> d!1209431 (= lt!1456373 e!2525198)))

(declare-fun res!1661087 () Bool)

(assert (=> d!1209431 (=> (not res!1661087) (not e!2525198))))

(assert (=> d!1209431 (= res!1661087 ((_ is Cons!43461) rules!2999))))

(assert (=> d!1209431 (= (contains!8650 rules!2999 (rule!10088 token!484)) lt!1456373)))

(declare-fun b!4068884 () Bool)

(declare-fun e!2525199 () Bool)

(assert (=> b!4068884 (= e!2525198 e!2525199)))

(declare-fun res!1661086 () Bool)

(assert (=> b!4068884 (=> res!1661086 e!2525199)))

(assert (=> b!4068884 (= res!1661086 (= (h!48881 rules!2999) (rule!10088 token!484)))))

(declare-fun b!4068885 () Bool)

(assert (=> b!4068885 (= e!2525199 (contains!8650 (t!336960 rules!2999) (rule!10088 token!484)))))

(assert (= (and d!1209431 res!1661087) b!4068884))

(assert (= (and b!4068884 (not res!1661086)) b!4068885))

(declare-fun m!4677633 () Bool)

(assert (=> d!1209431 m!4677633))

(declare-fun m!4677635 () Bool)

(assert (=> d!1209431 m!4677635))

(declare-fun m!4677637 () Bool)

(assert (=> b!4068885 m!4677637))

(assert (=> b!4068758 d!1209431))

(declare-fun b!4068895 () Bool)

(declare-fun e!2525205 () List!43583)

(assert (=> b!4068895 (= e!2525205 (Cons!43459 (h!48879 lt!1456312) (++!11386 (t!336958 lt!1456312) lt!1456309)))))

(declare-fun b!4068896 () Bool)

(declare-fun res!1661092 () Bool)

(declare-fun e!2525204 () Bool)

(assert (=> b!4068896 (=> (not res!1661092) (not e!2525204))))

(declare-fun lt!1456376 () List!43583)

(assert (=> b!4068896 (= res!1661092 (= (size!32492 lt!1456376) (+ (size!32492 lt!1456312) (size!32492 lt!1456309))))))

(declare-fun d!1209433 () Bool)

(assert (=> d!1209433 e!2525204))

(declare-fun res!1661093 () Bool)

(assert (=> d!1209433 (=> (not res!1661093) (not e!2525204))))

(declare-fun content!6640 (List!43583) (InoxSet C!23964))

(assert (=> d!1209433 (= res!1661093 (= (content!6640 lt!1456376) ((_ map or) (content!6640 lt!1456312) (content!6640 lt!1456309))))))

(assert (=> d!1209433 (= lt!1456376 e!2525205)))

(declare-fun c!702439 () Bool)

(assert (=> d!1209433 (= c!702439 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209433 (= (++!11386 lt!1456312 lt!1456309) lt!1456376)))

(declare-fun b!4068894 () Bool)

(assert (=> b!4068894 (= e!2525205 lt!1456309)))

(declare-fun b!4068897 () Bool)

(assert (=> b!4068897 (= e!2525204 (or (not (= lt!1456309 Nil!43459)) (= lt!1456376 lt!1456312)))))

(assert (= (and d!1209433 c!702439) b!4068894))

(assert (= (and d!1209433 (not c!702439)) b!4068895))

(assert (= (and d!1209433 res!1661093) b!4068896))

(assert (= (and b!4068896 res!1661092) b!4068897))

(declare-fun m!4677639 () Bool)

(assert (=> b!4068895 m!4677639))

(declare-fun m!4677641 () Bool)

(assert (=> b!4068896 m!4677641))

(assert (=> b!4068896 m!4677433))

(declare-fun m!4677643 () Bool)

(assert (=> b!4068896 m!4677643))

(declare-fun m!4677645 () Bool)

(assert (=> d!1209433 m!4677645))

(declare-fun m!4677647 () Bool)

(assert (=> d!1209433 m!4677647))

(declare-fun m!4677649 () Bool)

(assert (=> d!1209433 m!4677649))

(assert (=> b!4068737 d!1209433))

(declare-fun d!1209435 () Bool)

(declare-fun lt!1456379 () List!43583)

(assert (=> d!1209435 (= (++!11386 lt!1456312 lt!1456379) prefix!494)))

(declare-fun e!2525208 () List!43583)

(assert (=> d!1209435 (= lt!1456379 e!2525208)))

(declare-fun c!702442 () Bool)

(assert (=> d!1209435 (= c!702442 ((_ is Cons!43459) lt!1456312))))

(assert (=> d!1209435 (>= (size!32492 prefix!494) (size!32492 lt!1456312))))

(assert (=> d!1209435 (= (getSuffix!2488 prefix!494 lt!1456312) lt!1456379)))

(declare-fun b!4068902 () Bool)

(assert (=> b!4068902 (= e!2525208 (getSuffix!2488 (tail!6317 prefix!494) (t!336958 lt!1456312)))))

(declare-fun b!4068903 () Bool)

(assert (=> b!4068903 (= e!2525208 prefix!494)))

(assert (= (and d!1209435 c!702442) b!4068902))

(assert (= (and d!1209435 (not c!702442)) b!4068903))

(declare-fun m!4677651 () Bool)

(assert (=> d!1209435 m!4677651))

(assert (=> d!1209435 m!4677435))

(assert (=> d!1209435 m!4677433))

(assert (=> b!4068902 m!4677611))

(assert (=> b!4068902 m!4677611))

(declare-fun m!4677653 () Bool)

(assert (=> b!4068902 m!4677653))

(assert (=> b!4068737 d!1209435))

(declare-fun d!1209437 () Bool)

(declare-fun e!2525210 () Bool)

(assert (=> d!1209437 e!2525210))

(declare-fun res!1661095 () Bool)

(assert (=> d!1209437 (=> res!1661095 e!2525210)))

(declare-fun lt!1456380 () Bool)

(assert (=> d!1209437 (= res!1661095 (not lt!1456380))))

(declare-fun e!2525209 () Bool)

(assert (=> d!1209437 (= lt!1456380 e!2525209)))

(declare-fun res!1661094 () Bool)

(assert (=> d!1209437 (=> res!1661094 e!2525209)))

(assert (=> d!1209437 (= res!1661094 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209437 (= (isPrefix!4071 lt!1456312 prefix!494) lt!1456380)))

(declare-fun b!4068906 () Bool)

(declare-fun e!2525211 () Bool)

(assert (=> b!4068906 (= e!2525211 (isPrefix!4071 (tail!6317 lt!1456312) (tail!6317 prefix!494)))))

(declare-fun b!4068907 () Bool)

(assert (=> b!4068907 (= e!2525210 (>= (size!32492 prefix!494) (size!32492 lt!1456312)))))

(declare-fun b!4068904 () Bool)

(assert (=> b!4068904 (= e!2525209 e!2525211)))

(declare-fun res!1661096 () Bool)

(assert (=> b!4068904 (=> (not res!1661096) (not e!2525211))))

(assert (=> b!4068904 (= res!1661096 (not ((_ is Nil!43459) prefix!494)))))

(declare-fun b!4068905 () Bool)

(declare-fun res!1661097 () Bool)

(assert (=> b!4068905 (=> (not res!1661097) (not e!2525211))))

(assert (=> b!4068905 (= res!1661097 (= (head!8585 lt!1456312) (head!8585 prefix!494)))))

(assert (= (and d!1209437 (not res!1661094)) b!4068904))

(assert (= (and b!4068904 res!1661096) b!4068905))

(assert (= (and b!4068905 res!1661097) b!4068906))

(assert (= (and d!1209437 (not res!1661095)) b!4068907))

(assert (=> b!4068906 m!4677537))

(assert (=> b!4068906 m!4677611))

(assert (=> b!4068906 m!4677537))

(assert (=> b!4068906 m!4677611))

(declare-fun m!4677655 () Bool)

(assert (=> b!4068906 m!4677655))

(assert (=> b!4068907 m!4677435))

(assert (=> b!4068907 m!4677433))

(assert (=> b!4068905 m!4677541))

(assert (=> b!4068905 m!4677619))

(assert (=> b!4068737 d!1209437))

(declare-fun d!1209439 () Bool)

(assert (=> d!1209439 (isPrefix!4071 lt!1456312 prefix!494)))

(declare-fun lt!1456383 () Unit!63027)

(declare-fun choose!24811 (List!43583 List!43583 List!43583) Unit!63027)

(assert (=> d!1209439 (= lt!1456383 (choose!24811 prefix!494 lt!1456312 lt!1456322))))

(assert (=> d!1209439 (isPrefix!4071 prefix!494 lt!1456322)))

(assert (=> d!1209439 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!635 prefix!494 lt!1456312 lt!1456322) lt!1456383)))

(declare-fun bs!592490 () Bool)

(assert (= bs!592490 d!1209439))

(assert (=> bs!592490 m!4677429))

(declare-fun m!4677657 () Bool)

(assert (=> bs!592490 m!4677657))

(assert (=> bs!592490 m!4677415))

(assert (=> b!4068737 d!1209439))

(declare-fun b!4068909 () Bool)

(declare-fun e!2525213 () List!43583)

(assert (=> b!4068909 (= e!2525213 (Cons!43459 (h!48879 prefix!494) (++!11386 (t!336958 prefix!494) newSuffix!27)))))

(declare-fun b!4068910 () Bool)

(declare-fun res!1661098 () Bool)

(declare-fun e!2525212 () Bool)

(assert (=> b!4068910 (=> (not res!1661098) (not e!2525212))))

(declare-fun lt!1456384 () List!43583)

(assert (=> b!4068910 (= res!1661098 (= (size!32492 lt!1456384) (+ (size!32492 prefix!494) (size!32492 newSuffix!27))))))

(declare-fun d!1209441 () Bool)

(assert (=> d!1209441 e!2525212))

(declare-fun res!1661099 () Bool)

(assert (=> d!1209441 (=> (not res!1661099) (not e!2525212))))

(assert (=> d!1209441 (= res!1661099 (= (content!6640 lt!1456384) ((_ map or) (content!6640 prefix!494) (content!6640 newSuffix!27))))))

(assert (=> d!1209441 (= lt!1456384 e!2525213)))

(declare-fun c!702443 () Bool)

(assert (=> d!1209441 (= c!702443 ((_ is Nil!43459) prefix!494))))

(assert (=> d!1209441 (= (++!11386 prefix!494 newSuffix!27) lt!1456384)))

(declare-fun b!4068908 () Bool)

(assert (=> b!4068908 (= e!2525213 newSuffix!27)))

(declare-fun b!4068911 () Bool)

(assert (=> b!4068911 (= e!2525212 (or (not (= newSuffix!27 Nil!43459)) (= lt!1456384 prefix!494)))))

(assert (= (and d!1209441 c!702443) b!4068908))

(assert (= (and d!1209441 (not c!702443)) b!4068909))

(assert (= (and d!1209441 res!1661099) b!4068910))

(assert (= (and b!4068910 res!1661098) b!4068911))

(declare-fun m!4677659 () Bool)

(assert (=> b!4068909 m!4677659))

(declare-fun m!4677661 () Bool)

(assert (=> b!4068910 m!4677661))

(assert (=> b!4068910 m!4677435))

(assert (=> b!4068910 m!4677477))

(declare-fun m!4677663 () Bool)

(assert (=> d!1209441 m!4677663))

(declare-fun m!4677665 () Bool)

(assert (=> d!1209441 m!4677665))

(declare-fun m!4677667 () Bool)

(assert (=> d!1209441 m!4677667))

(assert (=> b!4068751 d!1209441))

(declare-fun b!4068913 () Bool)

(declare-fun e!2525215 () List!43583)

(assert (=> b!4068913 (= e!2525215 (Cons!43459 (h!48879 lt!1456312) (++!11386 (t!336958 lt!1456312) newSuffixResult!27)))))

(declare-fun b!4068914 () Bool)

(declare-fun res!1661100 () Bool)

(declare-fun e!2525214 () Bool)

(assert (=> b!4068914 (=> (not res!1661100) (not e!2525214))))

(declare-fun lt!1456385 () List!43583)

(assert (=> b!4068914 (= res!1661100 (= (size!32492 lt!1456385) (+ (size!32492 lt!1456312) (size!32492 newSuffixResult!27))))))

(declare-fun d!1209443 () Bool)

(assert (=> d!1209443 e!2525214))

(declare-fun res!1661101 () Bool)

(assert (=> d!1209443 (=> (not res!1661101) (not e!2525214))))

(assert (=> d!1209443 (= res!1661101 (= (content!6640 lt!1456385) ((_ map or) (content!6640 lt!1456312) (content!6640 newSuffixResult!27))))))

(assert (=> d!1209443 (= lt!1456385 e!2525215)))

(declare-fun c!702444 () Bool)

(assert (=> d!1209443 (= c!702444 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209443 (= (++!11386 lt!1456312 newSuffixResult!27) lt!1456385)))

(declare-fun b!4068912 () Bool)

(assert (=> b!4068912 (= e!2525215 newSuffixResult!27)))

(declare-fun b!4068915 () Bool)

(assert (=> b!4068915 (= e!2525214 (or (not (= newSuffixResult!27 Nil!43459)) (= lt!1456385 lt!1456312)))))

(assert (= (and d!1209443 c!702444) b!4068912))

(assert (= (and d!1209443 (not c!702444)) b!4068913))

(assert (= (and d!1209443 res!1661101) b!4068914))

(assert (= (and b!4068914 res!1661100) b!4068915))

(declare-fun m!4677669 () Bool)

(assert (=> b!4068913 m!4677669))

(declare-fun m!4677671 () Bool)

(assert (=> b!4068914 m!4677671))

(assert (=> b!4068914 m!4677433))

(declare-fun m!4677673 () Bool)

(assert (=> b!4068914 m!4677673))

(declare-fun m!4677675 () Bool)

(assert (=> d!1209443 m!4677675))

(assert (=> d!1209443 m!4677647))

(declare-fun m!4677677 () Bool)

(assert (=> d!1209443 m!4677677))

(assert (=> b!4068751 d!1209443))

(declare-fun b!4068917 () Bool)

(declare-fun e!2525217 () List!43583)

(assert (=> b!4068917 (= e!2525217 (Cons!43459 (h!48879 lt!1456312) (++!11386 (t!336958 lt!1456312) lt!1456319)))))

(declare-fun b!4068918 () Bool)

(declare-fun res!1661102 () Bool)

(declare-fun e!2525216 () Bool)

(assert (=> b!4068918 (=> (not res!1661102) (not e!2525216))))

(declare-fun lt!1456386 () List!43583)

(assert (=> b!4068918 (= res!1661102 (= (size!32492 lt!1456386) (+ (size!32492 lt!1456312) (size!32492 lt!1456319))))))

(declare-fun d!1209445 () Bool)

(assert (=> d!1209445 e!2525216))

(declare-fun res!1661103 () Bool)

(assert (=> d!1209445 (=> (not res!1661103) (not e!2525216))))

(assert (=> d!1209445 (= res!1661103 (= (content!6640 lt!1456386) ((_ map or) (content!6640 lt!1456312) (content!6640 lt!1456319))))))

(assert (=> d!1209445 (= lt!1456386 e!2525217)))

(declare-fun c!702445 () Bool)

(assert (=> d!1209445 (= c!702445 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209445 (= (++!11386 lt!1456312 lt!1456319) lt!1456386)))

(declare-fun b!4068916 () Bool)

(assert (=> b!4068916 (= e!2525217 lt!1456319)))

(declare-fun b!4068919 () Bool)

(assert (=> b!4068919 (= e!2525216 (or (not (= lt!1456319 Nil!43459)) (= lt!1456386 lt!1456312)))))

(assert (= (and d!1209445 c!702445) b!4068916))

(assert (= (and d!1209445 (not c!702445)) b!4068917))

(assert (= (and d!1209445 res!1661103) b!4068918))

(assert (= (and b!4068918 res!1661102) b!4068919))

(declare-fun m!4677679 () Bool)

(assert (=> b!4068917 m!4677679))

(declare-fun m!4677681 () Bool)

(assert (=> b!4068918 m!4677681))

(assert (=> b!4068918 m!4677433))

(declare-fun m!4677683 () Bool)

(assert (=> b!4068918 m!4677683))

(declare-fun m!4677685 () Bool)

(assert (=> d!1209445 m!4677685))

(assert (=> d!1209445 m!4677647))

(declare-fun m!4677687 () Bool)

(assert (=> d!1209445 m!4677687))

(assert (=> b!4068762 d!1209445))

(declare-fun d!1209447 () Bool)

(declare-fun lt!1456387 () List!43583)

(assert (=> d!1209447 (= (++!11386 lt!1456312 lt!1456387) lt!1456322)))

(declare-fun e!2525218 () List!43583)

(assert (=> d!1209447 (= lt!1456387 e!2525218)))

(declare-fun c!702446 () Bool)

(assert (=> d!1209447 (= c!702446 ((_ is Cons!43459) lt!1456312))))

(assert (=> d!1209447 (>= (size!32492 lt!1456322) (size!32492 lt!1456312))))

(assert (=> d!1209447 (= (getSuffix!2488 lt!1456322 lt!1456312) lt!1456387)))

(declare-fun b!4068920 () Bool)

(assert (=> b!4068920 (= e!2525218 (getSuffix!2488 (tail!6317 lt!1456322) (t!336958 lt!1456312)))))

(declare-fun b!4068921 () Bool)

(assert (=> b!4068921 (= e!2525218 lt!1456322)))

(assert (= (and d!1209447 c!702446) b!4068920))

(assert (= (and d!1209447 (not c!702446)) b!4068921))

(declare-fun m!4677689 () Bool)

(assert (=> d!1209447 m!4677689))

(assert (=> d!1209447 m!4677617))

(assert (=> d!1209447 m!4677433))

(assert (=> b!4068920 m!4677613))

(assert (=> b!4068920 m!4677613))

(declare-fun m!4677691 () Bool)

(assert (=> b!4068920 m!4677691))

(assert (=> b!4068762 d!1209447))

(declare-fun d!1209449 () Bool)

(declare-fun e!2525220 () Bool)

(assert (=> d!1209449 e!2525220))

(declare-fun res!1661105 () Bool)

(assert (=> d!1209449 (=> res!1661105 e!2525220)))

(declare-fun lt!1456388 () Bool)

(assert (=> d!1209449 (= res!1661105 (not lt!1456388))))

(declare-fun e!2525219 () Bool)

(assert (=> d!1209449 (= lt!1456388 e!2525219)))

(declare-fun res!1661104 () Bool)

(assert (=> d!1209449 (=> res!1661104 e!2525219)))

(assert (=> d!1209449 (= res!1661104 ((_ is Nil!43459) lt!1456322))))

(assert (=> d!1209449 (= (isPrefix!4071 lt!1456322 lt!1456322) lt!1456388)))

(declare-fun b!4068924 () Bool)

(declare-fun e!2525221 () Bool)

(assert (=> b!4068924 (= e!2525221 (isPrefix!4071 (tail!6317 lt!1456322) (tail!6317 lt!1456322)))))

(declare-fun b!4068925 () Bool)

(assert (=> b!4068925 (= e!2525220 (>= (size!32492 lt!1456322) (size!32492 lt!1456322)))))

(declare-fun b!4068922 () Bool)

(assert (=> b!4068922 (= e!2525219 e!2525221)))

(declare-fun res!1661106 () Bool)

(assert (=> b!4068922 (=> (not res!1661106) (not e!2525221))))

(assert (=> b!4068922 (= res!1661106 (not ((_ is Nil!43459) lt!1456322)))))

(declare-fun b!4068923 () Bool)

(declare-fun res!1661107 () Bool)

(assert (=> b!4068923 (=> (not res!1661107) (not e!2525221))))

(assert (=> b!4068923 (= res!1661107 (= (head!8585 lt!1456322) (head!8585 lt!1456322)))))

(assert (= (and d!1209449 (not res!1661104)) b!4068922))

(assert (= (and b!4068922 res!1661106) b!4068923))

(assert (= (and b!4068923 res!1661107) b!4068924))

(assert (= (and d!1209449 (not res!1661105)) b!4068925))

(assert (=> b!4068924 m!4677613))

(assert (=> b!4068924 m!4677613))

(assert (=> b!4068924 m!4677613))

(assert (=> b!4068924 m!4677613))

(declare-fun m!4677693 () Bool)

(assert (=> b!4068924 m!4677693))

(assert (=> b!4068925 m!4677617))

(assert (=> b!4068925 m!4677617))

(assert (=> b!4068923 m!4677621))

(assert (=> b!4068923 m!4677621))

(assert (=> b!4068762 d!1209449))

(declare-fun d!1209451 () Bool)

(assert (=> d!1209451 (isPrefix!4071 lt!1456322 lt!1456322)))

(declare-fun lt!1456391 () Unit!63027)

(declare-fun choose!24813 (List!43583 List!43583) Unit!63027)

(assert (=> d!1209451 (= lt!1456391 (choose!24813 lt!1456322 lt!1456322))))

(assert (=> d!1209451 (= (lemmaIsPrefixRefl!2638 lt!1456322 lt!1456322) lt!1456391)))

(declare-fun bs!592491 () Bool)

(assert (= bs!592491 d!1209451))

(assert (=> bs!592491 m!4677453))

(declare-fun m!4677695 () Bool)

(assert (=> bs!592491 m!4677695))

(assert (=> b!4068762 d!1209451))

(declare-fun d!1209453 () Bool)

(assert (=> d!1209453 (= (isEmpty!25937 rules!2999) ((_ is Nil!43461) rules!2999))))

(assert (=> b!4068741 d!1209453))

(declare-fun d!1209455 () Bool)

(assert (=> d!1209455 (= (inv!58095 (tag!7844 (rule!10088 token!484))) (= (mod (str.len (value!219677 (tag!7844 (rule!10088 token!484)))) 2) 0))))

(assert (=> b!4068752 d!1209455))

(declare-fun d!1209457 () Bool)

(declare-fun res!1661108 () Bool)

(declare-fun e!2525222 () Bool)

(assert (=> d!1209457 (=> (not res!1661108) (not e!2525222))))

(assert (=> d!1209457 (= res!1661108 (semiInverseModEq!2990 (toChars!9403 (transformation!6984 (rule!10088 token!484))) (toValue!9544 (transformation!6984 (rule!10088 token!484)))))))

(assert (=> d!1209457 (= (inv!58098 (transformation!6984 (rule!10088 token!484))) e!2525222)))

(declare-fun b!4068926 () Bool)

(assert (=> b!4068926 (= e!2525222 (equivClasses!2889 (toChars!9403 (transformation!6984 (rule!10088 token!484))) (toValue!9544 (transformation!6984 (rule!10088 token!484)))))))

(assert (= (and d!1209457 res!1661108) b!4068926))

(declare-fun m!4677697 () Bool)

(assert (=> d!1209457 m!4677697))

(declare-fun m!4677699 () Bool)

(assert (=> b!4068926 m!4677699))

(assert (=> b!4068752 d!1209457))

(declare-fun d!1209459 () Bool)

(declare-fun res!1661113 () Bool)

(declare-fun e!2525225 () Bool)

(assert (=> d!1209459 (=> (not res!1661113) (not e!2525225))))

(assert (=> d!1209459 (= res!1661113 (not (isEmpty!25940 (originalCharacters!7584 token!484))))))

(assert (=> d!1209459 (= (inv!58099 token!484) e!2525225)))

(declare-fun b!4068931 () Bool)

(declare-fun res!1661114 () Bool)

(assert (=> b!4068931 (=> (not res!1661114) (not e!2525225))))

(assert (=> b!4068931 (= res!1661114 (= (originalCharacters!7584 token!484) (list!16204 (dynLambda!18459 (toChars!9403 (transformation!6984 (rule!10088 token!484))) (value!219678 token!484)))))))

(declare-fun b!4068932 () Bool)

(assert (=> b!4068932 (= e!2525225 (= (size!32491 token!484) (size!32492 (originalCharacters!7584 token!484))))))

(assert (= (and d!1209459 res!1661113) b!4068931))

(assert (= (and b!4068931 res!1661114) b!4068932))

(declare-fun b_lambda!118865 () Bool)

(assert (=> (not b_lambda!118865) (not b!4068931)))

(assert (=> b!4068931 t!336962))

(declare-fun b_and!312703 () Bool)

(assert (= b_and!312699 (and (=> t!336962 result!296438) b_and!312703)))

(assert (=> b!4068931 t!336964))

(declare-fun b_and!312705 () Bool)

(assert (= b_and!312701 (and (=> t!336964 result!296442) b_and!312705)))

(declare-fun m!4677701 () Bool)

(assert (=> d!1209459 m!4677701))

(assert (=> b!4068931 m!4677587))

(assert (=> b!4068931 m!4677587))

(declare-fun m!4677703 () Bool)

(assert (=> b!4068931 m!4677703))

(assert (=> b!4068932 m!4677463))

(assert (=> start!383824 d!1209459))

(declare-fun b!4068970 () Bool)

(declare-fun e!2525244 () Bool)

(declare-fun e!2525245 () Bool)

(assert (=> b!4068970 (= e!2525244 e!2525245)))

(declare-fun res!1661145 () Bool)

(assert (=> b!4068970 (=> (not res!1661145) (not e!2525245))))

(declare-fun lt!1456409 () Option!9398)

(declare-fun isDefined!7136 (Option!9398) Bool)

(assert (=> b!4068970 (= res!1661145 (isDefined!7136 lt!1456409))))

(declare-fun b!4068971 () Bool)

(declare-fun e!2525243 () Option!9398)

(declare-fun call!288332 () Option!9398)

(assert (=> b!4068971 (= e!2525243 call!288332)))

(declare-fun bm!288327 () Bool)

(assert (=> bm!288327 (= call!288332 (maxPrefixOneRule!2883 thiss!21717 (h!48881 rules!2999) lt!1456322))))

(declare-fun d!1209461 () Bool)

(assert (=> d!1209461 e!2525244))

(declare-fun res!1661142 () Bool)

(assert (=> d!1209461 (=> res!1661142 e!2525244)))

(declare-fun isEmpty!25941 (Option!9398) Bool)

(assert (=> d!1209461 (= res!1661142 (isEmpty!25941 lt!1456409))))

(assert (=> d!1209461 (= lt!1456409 e!2525243)))

(declare-fun c!702452 () Bool)

(assert (=> d!1209461 (= c!702452 (and ((_ is Cons!43461) rules!2999) ((_ is Nil!43461) (t!336960 rules!2999))))))

(declare-fun lt!1456410 () Unit!63027)

(declare-fun lt!1456407 () Unit!63027)

(assert (=> d!1209461 (= lt!1456410 lt!1456407)))

(assert (=> d!1209461 (isPrefix!4071 lt!1456322 lt!1456322)))

(assert (=> d!1209461 (= lt!1456407 (lemmaIsPrefixRefl!2638 lt!1456322 lt!1456322))))

(assert (=> d!1209461 (rulesValidInductive!2557 thiss!21717 rules!2999)))

(assert (=> d!1209461 (= (maxPrefix!3871 thiss!21717 rules!2999 lt!1456322) lt!1456409)))

(declare-fun b!4068972 () Bool)

(declare-fun get!14252 (Option!9398) tuple2!42510)

(assert (=> b!4068972 (= e!2525245 (contains!8650 rules!2999 (rule!10088 (_1!24389 (get!14252 lt!1456409)))))))

(declare-fun b!4068973 () Bool)

(declare-fun res!1661146 () Bool)

(assert (=> b!4068973 (=> (not res!1661146) (not e!2525245))))

(assert (=> b!4068973 (= res!1661146 (< (size!32492 (_2!24389 (get!14252 lt!1456409))) (size!32492 lt!1456322)))))

(declare-fun b!4068974 () Bool)

(declare-fun res!1661144 () Bool)

(assert (=> b!4068974 (=> (not res!1661144) (not e!2525245))))

(assert (=> b!4068974 (= res!1661144 (= (value!219678 (_1!24389 (get!14252 lt!1456409))) (apply!10173 (transformation!6984 (rule!10088 (_1!24389 (get!14252 lt!1456409)))) (seqFromList!5201 (originalCharacters!7584 (_1!24389 (get!14252 lt!1456409)))))))))

(declare-fun b!4068975 () Bool)

(declare-fun res!1661141 () Bool)

(assert (=> b!4068975 (=> (not res!1661141) (not e!2525245))))

(assert (=> b!4068975 (= res!1661141 (= (++!11386 (list!16204 (charsOf!4800 (_1!24389 (get!14252 lt!1456409)))) (_2!24389 (get!14252 lt!1456409))) lt!1456322))))

(declare-fun b!4068976 () Bool)

(declare-fun res!1661140 () Bool)

(assert (=> b!4068976 (=> (not res!1661140) (not e!2525245))))

(assert (=> b!4068976 (= res!1661140 (= (list!16204 (charsOf!4800 (_1!24389 (get!14252 lt!1456409)))) (originalCharacters!7584 (_1!24389 (get!14252 lt!1456409)))))))

(declare-fun b!4068977 () Bool)

(declare-fun lt!1456408 () Option!9398)

(declare-fun lt!1456406 () Option!9398)

(assert (=> b!4068977 (= e!2525243 (ite (and ((_ is None!9397) lt!1456408) ((_ is None!9397) lt!1456406)) None!9397 (ite ((_ is None!9397) lt!1456406) lt!1456408 (ite ((_ is None!9397) lt!1456408) lt!1456406 (ite (>= (size!32491 (_1!24389 (v!39827 lt!1456408))) (size!32491 (_1!24389 (v!39827 lt!1456406)))) lt!1456408 lt!1456406)))))))

(assert (=> b!4068977 (= lt!1456408 call!288332)))

(assert (=> b!4068977 (= lt!1456406 (maxPrefix!3871 thiss!21717 (t!336960 rules!2999) lt!1456322))))

(declare-fun b!4068978 () Bool)

(declare-fun res!1661143 () Bool)

(assert (=> b!4068978 (=> (not res!1661143) (not e!2525245))))

(assert (=> b!4068978 (= res!1661143 (matchR!5842 (regex!6984 (rule!10088 (_1!24389 (get!14252 lt!1456409)))) (list!16204 (charsOf!4800 (_1!24389 (get!14252 lt!1456409))))))))

(assert (= (and d!1209461 c!702452) b!4068971))

(assert (= (and d!1209461 (not c!702452)) b!4068977))

(assert (= (or b!4068971 b!4068977) bm!288327))

(assert (= (and d!1209461 (not res!1661142)) b!4068970))

(assert (= (and b!4068970 res!1661145) b!4068976))

(assert (= (and b!4068976 res!1661140) b!4068973))

(assert (= (and b!4068973 res!1661146) b!4068975))

(assert (= (and b!4068975 res!1661141) b!4068974))

(assert (= (and b!4068974 res!1661144) b!4068978))

(assert (= (and b!4068978 res!1661143) b!4068972))

(declare-fun m!4677727 () Bool)

(assert (=> b!4068975 m!4677727))

(declare-fun m!4677729 () Bool)

(assert (=> b!4068975 m!4677729))

(assert (=> b!4068975 m!4677729))

(declare-fun m!4677731 () Bool)

(assert (=> b!4068975 m!4677731))

(assert (=> b!4068975 m!4677731))

(declare-fun m!4677737 () Bool)

(assert (=> b!4068975 m!4677737))

(declare-fun m!4677739 () Bool)

(assert (=> d!1209461 m!4677739))

(assert (=> d!1209461 m!4677453))

(assert (=> d!1209461 m!4677455))

(assert (=> d!1209461 m!4677441))

(assert (=> b!4068972 m!4677727))

(declare-fun m!4677741 () Bool)

(assert (=> b!4068972 m!4677741))

(assert (=> b!4068973 m!4677727))

(declare-fun m!4677743 () Bool)

(assert (=> b!4068973 m!4677743))

(assert (=> b!4068973 m!4677617))

(declare-fun m!4677745 () Bool)

(assert (=> b!4068970 m!4677745))

(assert (=> b!4068976 m!4677727))

(assert (=> b!4068976 m!4677729))

(assert (=> b!4068976 m!4677729))

(assert (=> b!4068976 m!4677731))

(declare-fun m!4677747 () Bool)

(assert (=> b!4068977 m!4677747))

(assert (=> b!4068978 m!4677727))

(assert (=> b!4068978 m!4677729))

(assert (=> b!4068978 m!4677729))

(assert (=> b!4068978 m!4677731))

(assert (=> b!4068978 m!4677731))

(declare-fun m!4677749 () Bool)

(assert (=> b!4068978 m!4677749))

(assert (=> b!4068974 m!4677727))

(declare-fun m!4677751 () Bool)

(assert (=> b!4068974 m!4677751))

(assert (=> b!4068974 m!4677751))

(declare-fun m!4677753 () Bool)

(assert (=> b!4068974 m!4677753))

(declare-fun m!4677755 () Bool)

(assert (=> bm!288327 m!4677755))

(assert (=> b!4068739 d!1209461))

(declare-fun b!4068986 () Bool)

(declare-fun e!2525250 () List!43583)

(assert (=> b!4068986 (= e!2525250 (Cons!43459 (h!48879 prefix!494) (++!11386 (t!336958 prefix!494) suffix!1299)))))

(declare-fun b!4068987 () Bool)

(declare-fun res!1661153 () Bool)

(declare-fun e!2525249 () Bool)

(assert (=> b!4068987 (=> (not res!1661153) (not e!2525249))))

(declare-fun lt!1456411 () List!43583)

(assert (=> b!4068987 (= res!1661153 (= (size!32492 lt!1456411) (+ (size!32492 prefix!494) (size!32492 suffix!1299))))))

(declare-fun d!1209471 () Bool)

(assert (=> d!1209471 e!2525249))

(declare-fun res!1661154 () Bool)

(assert (=> d!1209471 (=> (not res!1661154) (not e!2525249))))

(assert (=> d!1209471 (= res!1661154 (= (content!6640 lt!1456411) ((_ map or) (content!6640 prefix!494) (content!6640 suffix!1299))))))

(assert (=> d!1209471 (= lt!1456411 e!2525250)))

(declare-fun c!702453 () Bool)

(assert (=> d!1209471 (= c!702453 ((_ is Nil!43459) prefix!494))))

(assert (=> d!1209471 (= (++!11386 prefix!494 suffix!1299) lt!1456411)))

(declare-fun b!4068985 () Bool)

(assert (=> b!4068985 (= e!2525250 suffix!1299)))

(declare-fun b!4068988 () Bool)

(assert (=> b!4068988 (= e!2525249 (or (not (= suffix!1299 Nil!43459)) (= lt!1456411 prefix!494)))))

(assert (= (and d!1209471 c!702453) b!4068985))

(assert (= (and d!1209471 (not c!702453)) b!4068986))

(assert (= (and d!1209471 res!1661154) b!4068987))

(assert (= (and b!4068987 res!1661153) b!4068988))

(declare-fun m!4677757 () Bool)

(assert (=> b!4068986 m!4677757))

(declare-fun m!4677759 () Bool)

(assert (=> b!4068987 m!4677759))

(assert (=> b!4068987 m!4677435))

(assert (=> b!4068987 m!4677475))

(declare-fun m!4677761 () Bool)

(assert (=> d!1209471 m!4677761))

(assert (=> d!1209471 m!4677665))

(declare-fun m!4677763 () Bool)

(assert (=> d!1209471 m!4677763))

(assert (=> b!4068739 d!1209471))

(declare-fun b!4068990 () Bool)

(declare-fun e!2525252 () List!43583)

(assert (=> b!4068990 (= e!2525252 (Cons!43459 (h!48879 lt!1456312) (++!11386 (t!336958 lt!1456312) lt!1456330)))))

(declare-fun b!4068991 () Bool)

(declare-fun res!1661155 () Bool)

(declare-fun e!2525251 () Bool)

(assert (=> b!4068991 (=> (not res!1661155) (not e!2525251))))

(declare-fun lt!1456412 () List!43583)

(assert (=> b!4068991 (= res!1661155 (= (size!32492 lt!1456412) (+ (size!32492 lt!1456312) (size!32492 lt!1456330))))))

(declare-fun d!1209473 () Bool)

(assert (=> d!1209473 e!2525251))

(declare-fun res!1661156 () Bool)

(assert (=> d!1209473 (=> (not res!1661156) (not e!2525251))))

(assert (=> d!1209473 (= res!1661156 (= (content!6640 lt!1456412) ((_ map or) (content!6640 lt!1456312) (content!6640 lt!1456330))))))

(assert (=> d!1209473 (= lt!1456412 e!2525252)))

(declare-fun c!702454 () Bool)

(assert (=> d!1209473 (= c!702454 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209473 (= (++!11386 lt!1456312 lt!1456330) lt!1456412)))

(declare-fun b!4068989 () Bool)

(assert (=> b!4068989 (= e!2525252 lt!1456330)))

(declare-fun b!4068992 () Bool)

(assert (=> b!4068992 (= e!2525251 (or (not (= lt!1456330 Nil!43459)) (= lt!1456412 lt!1456312)))))

(assert (= (and d!1209473 c!702454) b!4068989))

(assert (= (and d!1209473 (not c!702454)) b!4068990))

(assert (= (and d!1209473 res!1661156) b!4068991))

(assert (= (and b!4068991 res!1661155) b!4068992))

(declare-fun m!4677765 () Bool)

(assert (=> b!4068990 m!4677765))

(declare-fun m!4677767 () Bool)

(assert (=> b!4068991 m!4677767))

(assert (=> b!4068991 m!4677433))

(declare-fun m!4677769 () Bool)

(assert (=> b!4068991 m!4677769))

(declare-fun m!4677771 () Bool)

(assert (=> d!1209473 m!4677771))

(assert (=> d!1209473 m!4677647))

(declare-fun m!4677773 () Bool)

(assert (=> d!1209473 m!4677773))

(assert (=> b!4068740 d!1209473))

(declare-fun b!4068994 () Bool)

(declare-fun e!2525254 () List!43583)

(assert (=> b!4068994 (= e!2525254 (Cons!43459 (h!48879 lt!1456336) (++!11386 (t!336958 lt!1456336) suffix!1299)))))

(declare-fun b!4068995 () Bool)

(declare-fun res!1661157 () Bool)

(declare-fun e!2525253 () Bool)

(assert (=> b!4068995 (=> (not res!1661157) (not e!2525253))))

(declare-fun lt!1456415 () List!43583)

(assert (=> b!4068995 (= res!1661157 (= (size!32492 lt!1456415) (+ (size!32492 lt!1456336) (size!32492 suffix!1299))))))

(declare-fun d!1209475 () Bool)

(assert (=> d!1209475 e!2525253))

(declare-fun res!1661158 () Bool)

(assert (=> d!1209475 (=> (not res!1661158) (not e!2525253))))

(assert (=> d!1209475 (= res!1661158 (= (content!6640 lt!1456415) ((_ map or) (content!6640 lt!1456336) (content!6640 suffix!1299))))))

(assert (=> d!1209475 (= lt!1456415 e!2525254)))

(declare-fun c!702455 () Bool)

(assert (=> d!1209475 (= c!702455 ((_ is Nil!43459) lt!1456336))))

(assert (=> d!1209475 (= (++!11386 lt!1456336 suffix!1299) lt!1456415)))

(declare-fun b!4068993 () Bool)

(assert (=> b!4068993 (= e!2525254 suffix!1299)))

(declare-fun b!4068996 () Bool)

(assert (=> b!4068996 (= e!2525253 (or (not (= suffix!1299 Nil!43459)) (= lt!1456415 lt!1456336)))))

(assert (= (and d!1209475 c!702455) b!4068993))

(assert (= (and d!1209475 (not c!702455)) b!4068994))

(assert (= (and d!1209475 res!1661158) b!4068995))

(assert (= (and b!4068995 res!1661157) b!4068996))

(declare-fun m!4677775 () Bool)

(assert (=> b!4068994 m!4677775))

(declare-fun m!4677777 () Bool)

(assert (=> b!4068995 m!4677777))

(declare-fun m!4677779 () Bool)

(assert (=> b!4068995 m!4677779))

(assert (=> b!4068995 m!4677475))

(declare-fun m!4677781 () Bool)

(assert (=> d!1209475 m!4677781))

(declare-fun m!4677783 () Bool)

(assert (=> d!1209475 m!4677783))

(assert (=> d!1209475 m!4677763))

(assert (=> b!4068740 d!1209475))

(declare-fun b!4068998 () Bool)

(declare-fun e!2525256 () List!43583)

(assert (=> b!4068998 (= e!2525256 (Cons!43459 (h!48879 lt!1456309) (++!11386 (t!336958 lt!1456309) suffix!1299)))))

(declare-fun b!4068999 () Bool)

(declare-fun res!1661159 () Bool)

(declare-fun e!2525255 () Bool)

(assert (=> b!4068999 (=> (not res!1661159) (not e!2525255))))

(declare-fun lt!1456417 () List!43583)

(assert (=> b!4068999 (= res!1661159 (= (size!32492 lt!1456417) (+ (size!32492 lt!1456309) (size!32492 suffix!1299))))))

(declare-fun d!1209477 () Bool)

(assert (=> d!1209477 e!2525255))

(declare-fun res!1661160 () Bool)

(assert (=> d!1209477 (=> (not res!1661160) (not e!2525255))))

(assert (=> d!1209477 (= res!1661160 (= (content!6640 lt!1456417) ((_ map or) (content!6640 lt!1456309) (content!6640 suffix!1299))))))

(assert (=> d!1209477 (= lt!1456417 e!2525256)))

(declare-fun c!702456 () Bool)

(assert (=> d!1209477 (= c!702456 ((_ is Nil!43459) lt!1456309))))

(assert (=> d!1209477 (= (++!11386 lt!1456309 suffix!1299) lt!1456417)))

(declare-fun b!4068997 () Bool)

(assert (=> b!4068997 (= e!2525256 suffix!1299)))

(declare-fun b!4069000 () Bool)

(assert (=> b!4069000 (= e!2525255 (or (not (= suffix!1299 Nil!43459)) (= lt!1456417 lt!1456309)))))

(assert (= (and d!1209477 c!702456) b!4068997))

(assert (= (and d!1209477 (not c!702456)) b!4068998))

(assert (= (and d!1209477 res!1661160) b!4068999))

(assert (= (and b!4068999 res!1661159) b!4069000))

(declare-fun m!4677787 () Bool)

(assert (=> b!4068998 m!4677787))

(declare-fun m!4677789 () Bool)

(assert (=> b!4068999 m!4677789))

(assert (=> b!4068999 m!4677643))

(assert (=> b!4068999 m!4677475))

(declare-fun m!4677791 () Bool)

(assert (=> d!1209477 m!4677791))

(assert (=> d!1209477 m!4677649))

(assert (=> d!1209477 m!4677763))

(assert (=> b!4068740 d!1209477))

(declare-fun d!1209481 () Bool)

(assert (=> d!1209481 (= (++!11386 (++!11386 lt!1456312 lt!1456309) suffix!1299) (++!11386 lt!1456312 (++!11386 lt!1456309 suffix!1299)))))

(declare-fun lt!1456420 () Unit!63027)

(declare-fun choose!24815 (List!43583 List!43583 List!43583) Unit!63027)

(assert (=> d!1209481 (= lt!1456420 (choose!24815 lt!1456312 lt!1456309 suffix!1299))))

(assert (=> d!1209481 (= (lemmaConcatAssociativity!2688 lt!1456312 lt!1456309 suffix!1299) lt!1456420)))

(declare-fun bs!592493 () Bool)

(assert (= bs!592493 d!1209481))

(assert (=> bs!592493 m!4677471))

(declare-fun m!4677793 () Bool)

(assert (=> bs!592493 m!4677793))

(assert (=> bs!592493 m!4677471))

(assert (=> bs!592493 m!4677425))

(declare-fun m!4677795 () Bool)

(assert (=> bs!592493 m!4677795))

(assert (=> bs!592493 m!4677425))

(declare-fun m!4677797 () Bool)

(assert (=> bs!592493 m!4677797))

(assert (=> b!4068740 d!1209481))

(declare-fun b!4069001 () Bool)

(declare-fun e!2525258 () Bool)

(declare-fun e!2525259 () Bool)

(assert (=> b!4069001 (= e!2525258 e!2525259)))

(declare-fun res!1661166 () Bool)

(assert (=> b!4069001 (=> (not res!1661166) (not e!2525259))))

(declare-fun lt!1456424 () Option!9398)

(assert (=> b!4069001 (= res!1661166 (isDefined!7136 lt!1456424))))

(declare-fun b!4069002 () Bool)

(declare-fun e!2525257 () Option!9398)

(declare-fun call!288333 () Option!9398)

(assert (=> b!4069002 (= e!2525257 call!288333)))

(declare-fun bm!288328 () Bool)

(assert (=> bm!288328 (= call!288333 (maxPrefixOneRule!2883 thiss!21717 (h!48881 rules!2999) lt!1456331))))

(declare-fun d!1209483 () Bool)

(assert (=> d!1209483 e!2525258))

(declare-fun res!1661163 () Bool)

(assert (=> d!1209483 (=> res!1661163 e!2525258)))

(assert (=> d!1209483 (= res!1661163 (isEmpty!25941 lt!1456424))))

(assert (=> d!1209483 (= lt!1456424 e!2525257)))

(declare-fun c!702457 () Bool)

(assert (=> d!1209483 (= c!702457 (and ((_ is Cons!43461) rules!2999) ((_ is Nil!43461) (t!336960 rules!2999))))))

(declare-fun lt!1456425 () Unit!63027)

(declare-fun lt!1456422 () Unit!63027)

(assert (=> d!1209483 (= lt!1456425 lt!1456422)))

(assert (=> d!1209483 (isPrefix!4071 lt!1456331 lt!1456331)))

(assert (=> d!1209483 (= lt!1456422 (lemmaIsPrefixRefl!2638 lt!1456331 lt!1456331))))

(assert (=> d!1209483 (rulesValidInductive!2557 thiss!21717 rules!2999)))

(assert (=> d!1209483 (= (maxPrefix!3871 thiss!21717 rules!2999 lt!1456331) lt!1456424)))

(declare-fun b!4069003 () Bool)

(assert (=> b!4069003 (= e!2525259 (contains!8650 rules!2999 (rule!10088 (_1!24389 (get!14252 lt!1456424)))))))

(declare-fun b!4069004 () Bool)

(declare-fun res!1661167 () Bool)

(assert (=> b!4069004 (=> (not res!1661167) (not e!2525259))))

(assert (=> b!4069004 (= res!1661167 (< (size!32492 (_2!24389 (get!14252 lt!1456424))) (size!32492 lt!1456331)))))

(declare-fun b!4069005 () Bool)

(declare-fun res!1661165 () Bool)

(assert (=> b!4069005 (=> (not res!1661165) (not e!2525259))))

(assert (=> b!4069005 (= res!1661165 (= (value!219678 (_1!24389 (get!14252 lt!1456424))) (apply!10173 (transformation!6984 (rule!10088 (_1!24389 (get!14252 lt!1456424)))) (seqFromList!5201 (originalCharacters!7584 (_1!24389 (get!14252 lt!1456424)))))))))

(declare-fun b!4069006 () Bool)

(declare-fun res!1661162 () Bool)

(assert (=> b!4069006 (=> (not res!1661162) (not e!2525259))))

(assert (=> b!4069006 (= res!1661162 (= (++!11386 (list!16204 (charsOf!4800 (_1!24389 (get!14252 lt!1456424)))) (_2!24389 (get!14252 lt!1456424))) lt!1456331))))

(declare-fun b!4069007 () Bool)

(declare-fun res!1661161 () Bool)

(assert (=> b!4069007 (=> (not res!1661161) (not e!2525259))))

(assert (=> b!4069007 (= res!1661161 (= (list!16204 (charsOf!4800 (_1!24389 (get!14252 lt!1456424)))) (originalCharacters!7584 (_1!24389 (get!14252 lt!1456424)))))))

(declare-fun b!4069008 () Bool)

(declare-fun lt!1456423 () Option!9398)

(declare-fun lt!1456421 () Option!9398)

(assert (=> b!4069008 (= e!2525257 (ite (and ((_ is None!9397) lt!1456423) ((_ is None!9397) lt!1456421)) None!9397 (ite ((_ is None!9397) lt!1456421) lt!1456423 (ite ((_ is None!9397) lt!1456423) lt!1456421 (ite (>= (size!32491 (_1!24389 (v!39827 lt!1456423))) (size!32491 (_1!24389 (v!39827 lt!1456421)))) lt!1456423 lt!1456421)))))))

(assert (=> b!4069008 (= lt!1456423 call!288333)))

(assert (=> b!4069008 (= lt!1456421 (maxPrefix!3871 thiss!21717 (t!336960 rules!2999) lt!1456331))))

(declare-fun b!4069009 () Bool)

(declare-fun res!1661164 () Bool)

(assert (=> b!4069009 (=> (not res!1661164) (not e!2525259))))

(assert (=> b!4069009 (= res!1661164 (matchR!5842 (regex!6984 (rule!10088 (_1!24389 (get!14252 lt!1456424)))) (list!16204 (charsOf!4800 (_1!24389 (get!14252 lt!1456424))))))))

(assert (= (and d!1209483 c!702457) b!4069002))

(assert (= (and d!1209483 (not c!702457)) b!4069008))

(assert (= (or b!4069002 b!4069008) bm!288328))

(assert (= (and d!1209483 (not res!1661163)) b!4069001))

(assert (= (and b!4069001 res!1661166) b!4069007))

(assert (= (and b!4069007 res!1661161) b!4069004))

(assert (= (and b!4069004 res!1661167) b!4069006))

(assert (= (and b!4069006 res!1661162) b!4069005))

(assert (= (and b!4069005 res!1661165) b!4069009))

(assert (= (and b!4069009 res!1661164) b!4069003))

(declare-fun m!4677799 () Bool)

(assert (=> b!4069006 m!4677799))

(declare-fun m!4677801 () Bool)

(assert (=> b!4069006 m!4677801))

(assert (=> b!4069006 m!4677801))

(declare-fun m!4677803 () Bool)

(assert (=> b!4069006 m!4677803))

(assert (=> b!4069006 m!4677803))

(declare-fun m!4677805 () Bool)

(assert (=> b!4069006 m!4677805))

(declare-fun m!4677807 () Bool)

(assert (=> d!1209483 m!4677807))

(declare-fun m!4677809 () Bool)

(assert (=> d!1209483 m!4677809))

(declare-fun m!4677811 () Bool)

(assert (=> d!1209483 m!4677811))

(assert (=> d!1209483 m!4677441))

(assert (=> b!4069003 m!4677799))

(declare-fun m!4677813 () Bool)

(assert (=> b!4069003 m!4677813))

(assert (=> b!4069004 m!4677799))

(declare-fun m!4677815 () Bool)

(assert (=> b!4069004 m!4677815))

(assert (=> b!4069004 m!4677553))

(declare-fun m!4677817 () Bool)

(assert (=> b!4069001 m!4677817))

(assert (=> b!4069007 m!4677799))

(assert (=> b!4069007 m!4677801))

(assert (=> b!4069007 m!4677801))

(assert (=> b!4069007 m!4677803))

(declare-fun m!4677819 () Bool)

(assert (=> b!4069008 m!4677819))

(assert (=> b!4069009 m!4677799))

(assert (=> b!4069009 m!4677801))

(assert (=> b!4069009 m!4677801))

(assert (=> b!4069009 m!4677803))

(assert (=> b!4069009 m!4677803))

(declare-fun m!4677821 () Bool)

(assert (=> b!4069009 m!4677821))

(assert (=> b!4069005 m!4677799))

(declare-fun m!4677823 () Bool)

(assert (=> b!4069005 m!4677823))

(assert (=> b!4069005 m!4677823))

(declare-fun m!4677825 () Bool)

(assert (=> b!4069005 m!4677825))

(declare-fun m!4677827 () Bool)

(assert (=> bm!288328 m!4677827))

(assert (=> b!4068743 d!1209483))

(declare-fun d!1209485 () Bool)

(assert (=> d!1209485 (= suffixResult!105 lt!1456319)))

(declare-fun lt!1456428 () Unit!63027)

(declare-fun choose!24816 (List!43583 List!43583 List!43583 List!43583 List!43583) Unit!63027)

(assert (=> d!1209485 (= lt!1456428 (choose!24816 lt!1456312 suffixResult!105 lt!1456312 lt!1456319 lt!1456322))))

(assert (=> d!1209485 (isPrefix!4071 lt!1456312 lt!1456322)))

(assert (=> d!1209485 (= (lemmaSamePrefixThenSameSuffix!2232 lt!1456312 suffixResult!105 lt!1456312 lt!1456319 lt!1456322) lt!1456428)))

(declare-fun bs!592494 () Bool)

(assert (= bs!592494 d!1209485))

(declare-fun m!4677829 () Bool)

(assert (=> bs!592494 m!4677829))

(assert (=> bs!592494 m!4677413))

(assert (=> b!4068743 d!1209485))

(declare-fun d!1209487 () Bool)

(declare-fun e!2525261 () Bool)

(assert (=> d!1209487 e!2525261))

(declare-fun res!1661169 () Bool)

(assert (=> d!1209487 (=> res!1661169 e!2525261)))

(declare-fun lt!1456429 () Bool)

(assert (=> d!1209487 (= res!1661169 (not lt!1456429))))

(declare-fun e!2525260 () Bool)

(assert (=> d!1209487 (= lt!1456429 e!2525260)))

(declare-fun res!1661168 () Bool)

(assert (=> d!1209487 (=> res!1661168 e!2525260)))

(assert (=> d!1209487 (= res!1661168 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209487 (= (isPrefix!4071 lt!1456312 lt!1456324) lt!1456429)))

(declare-fun b!4069012 () Bool)

(declare-fun e!2525262 () Bool)

(assert (=> b!4069012 (= e!2525262 (isPrefix!4071 (tail!6317 lt!1456312) (tail!6317 lt!1456324)))))

(declare-fun b!4069013 () Bool)

(assert (=> b!4069013 (= e!2525261 (>= (size!32492 lt!1456324) (size!32492 lt!1456312)))))

(declare-fun b!4069010 () Bool)

(assert (=> b!4069010 (= e!2525260 e!2525262)))

(declare-fun res!1661170 () Bool)

(assert (=> b!4069010 (=> (not res!1661170) (not e!2525262))))

(assert (=> b!4069010 (= res!1661170 (not ((_ is Nil!43459) lt!1456324)))))

(declare-fun b!4069011 () Bool)

(declare-fun res!1661171 () Bool)

(assert (=> b!4069011 (=> (not res!1661171) (not e!2525262))))

(assert (=> b!4069011 (= res!1661171 (= (head!8585 lt!1456312) (head!8585 lt!1456324)))))

(assert (= (and d!1209487 (not res!1661168)) b!4069010))

(assert (= (and b!4069010 res!1661170) b!4069011))

(assert (= (and b!4069011 res!1661171) b!4069012))

(assert (= (and d!1209487 (not res!1661169)) b!4069013))

(assert (=> b!4069012 m!4677537))

(declare-fun m!4677831 () Bool)

(assert (=> b!4069012 m!4677831))

(assert (=> b!4069012 m!4677537))

(assert (=> b!4069012 m!4677831))

(declare-fun m!4677833 () Bool)

(assert (=> b!4069012 m!4677833))

(declare-fun m!4677835 () Bool)

(assert (=> b!4069013 m!4677835))

(assert (=> b!4069013 m!4677433))

(assert (=> b!4069011 m!4677541))

(declare-fun m!4677837 () Bool)

(assert (=> b!4069011 m!4677837))

(assert (=> b!4068743 d!1209487))

(declare-fun d!1209489 () Bool)

(assert (=> d!1209489 (isPrefix!4071 lt!1456312 (++!11386 lt!1456312 lt!1456319))))

(declare-fun lt!1456430 () Unit!63027)

(assert (=> d!1209489 (= lt!1456430 (choose!24809 lt!1456312 lt!1456319))))

(assert (=> d!1209489 (= (lemmaConcatTwoListThenFirstIsPrefix!2906 lt!1456312 lt!1456319) lt!1456430)))

(declare-fun bs!592495 () Bool)

(assert (= bs!592495 d!1209489))

(assert (=> bs!592495 m!4677449))

(assert (=> bs!592495 m!4677449))

(declare-fun m!4677839 () Bool)

(assert (=> bs!592495 m!4677839))

(declare-fun m!4677841 () Bool)

(assert (=> bs!592495 m!4677841))

(assert (=> b!4068743 d!1209489))

(declare-fun d!1209491 () Bool)

(declare-fun lt!1456431 () Int)

(assert (=> d!1209491 (>= lt!1456431 0)))

(declare-fun e!2525263 () Int)

(assert (=> d!1209491 (= lt!1456431 e!2525263)))

(declare-fun c!702458 () Bool)

(assert (=> d!1209491 (= c!702458 ((_ is Nil!43459) (originalCharacters!7584 token!484)))))

(assert (=> d!1209491 (= (size!32492 (originalCharacters!7584 token!484)) lt!1456431)))

(declare-fun b!4069014 () Bool)

(assert (=> b!4069014 (= e!2525263 0)))

(declare-fun b!4069015 () Bool)

(assert (=> b!4069015 (= e!2525263 (+ 1 (size!32492 (t!336958 (originalCharacters!7584 token!484)))))))

(assert (= (and d!1209491 c!702458) b!4069014))

(assert (= (and d!1209491 (not c!702458)) b!4069015))

(declare-fun m!4677843 () Bool)

(assert (=> b!4069015 m!4677843))

(assert (=> b!4068754 d!1209491))

(declare-fun d!1209493 () Bool)

(declare-fun dynLambda!18462 (Int BalanceConc!25984) TokenValue!7214)

(assert (=> d!1209493 (= (apply!10173 (transformation!6984 (rule!10088 token!484)) (seqFromList!5201 lt!1456312)) (dynLambda!18462 (toValue!9544 (transformation!6984 (rule!10088 token!484))) (seqFromList!5201 lt!1456312)))))

(declare-fun b_lambda!118867 () Bool)

(assert (=> (not b_lambda!118867) (not d!1209493)))

(declare-fun t!336966 () Bool)

(declare-fun tb!244605 () Bool)

(assert (=> (and b!4068732 (= (toValue!9544 (transformation!6984 (rule!10088 token!484))) (toValue!9544 (transformation!6984 (rule!10088 token!484)))) t!336966) tb!244605))

(declare-fun result!296444 () Bool)

(assert (=> tb!244605 (= result!296444 (inv!21 (dynLambda!18462 (toValue!9544 (transformation!6984 (rule!10088 token!484))) (seqFromList!5201 lt!1456312))))))

(declare-fun m!4677845 () Bool)

(assert (=> tb!244605 m!4677845))

(assert (=> d!1209493 t!336966))

(declare-fun b_and!312707 () Bool)

(assert (= b_and!312691 (and (=> t!336966 result!296444) b_and!312707)))

(declare-fun tb!244607 () Bool)

(declare-fun t!336968 () Bool)

(assert (=> (and b!4068750 (= (toValue!9544 (transformation!6984 (h!48881 rules!2999))) (toValue!9544 (transformation!6984 (rule!10088 token!484)))) t!336968) tb!244607))

(declare-fun result!296448 () Bool)

(assert (= result!296448 result!296444))

(assert (=> d!1209493 t!336968))

(declare-fun b_and!312709 () Bool)

(assert (= b_and!312695 (and (=> t!336968 result!296448) b_and!312709)))

(assert (=> d!1209493 m!4677501))

(declare-fun m!4677847 () Bool)

(assert (=> d!1209493 m!4677847))

(assert (=> b!4068733 d!1209493))

(declare-fun d!1209495 () Bool)

(assert (=> d!1209495 (= (maxPrefixOneRule!2883 thiss!21717 (rule!10088 token!484) lt!1456322) (Some!9397 (tuple2!42511 (Token!13107 (apply!10173 (transformation!6984 (rule!10088 token!484)) (seqFromList!5201 lt!1456312)) (rule!10088 token!484) (size!32492 lt!1456312) lt!1456312) suffixResult!105)))))

(declare-fun lt!1456434 () Unit!63027)

(declare-fun choose!24817 (LexerInterface!6573 List!43585 List!43583 List!43583 List!43583 Rule!13768) Unit!63027)

(assert (=> d!1209495 (= lt!1456434 (choose!24817 thiss!21717 rules!2999 lt!1456312 lt!1456322 suffixResult!105 (rule!10088 token!484)))))

(assert (=> d!1209495 (not (isEmpty!25937 rules!2999))))

(assert (=> d!1209495 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1689 thiss!21717 rules!2999 lt!1456312 lt!1456322 suffixResult!105 (rule!10088 token!484)) lt!1456434)))

(declare-fun bs!592496 () Bool)

(assert (= bs!592496 d!1209495))

(declare-fun m!4677849 () Bool)

(assert (=> bs!592496 m!4677849))

(assert (=> bs!592496 m!4677509))

(assert (=> bs!592496 m!4677433))

(assert (=> bs!592496 m!4677501))

(assert (=> bs!592496 m!4677501))

(assert (=> bs!592496 m!4677503))

(assert (=> bs!592496 m!4677465))

(assert (=> b!4068733 d!1209495))

(declare-fun d!1209497 () Bool)

(declare-fun e!2525270 () Bool)

(assert (=> d!1209497 e!2525270))

(declare-fun res!1661173 () Bool)

(assert (=> d!1209497 (=> res!1661173 e!2525270)))

(declare-fun lt!1456443 () Bool)

(assert (=> d!1209497 (= res!1661173 (not lt!1456443))))

(declare-fun e!2525269 () Bool)

(assert (=> d!1209497 (= lt!1456443 e!2525269)))

(declare-fun res!1661172 () Bool)

(assert (=> d!1209497 (=> res!1661172 e!2525269)))

(assert (=> d!1209497 (= res!1661172 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209497 (= (isPrefix!4071 lt!1456312 lt!1456320) lt!1456443)))

(declare-fun b!4069024 () Bool)

(declare-fun e!2525271 () Bool)

(assert (=> b!4069024 (= e!2525271 (isPrefix!4071 (tail!6317 lt!1456312) (tail!6317 lt!1456320)))))

(declare-fun b!4069025 () Bool)

(assert (=> b!4069025 (= e!2525270 (>= (size!32492 lt!1456320) (size!32492 lt!1456312)))))

(declare-fun b!4069022 () Bool)

(assert (=> b!4069022 (= e!2525269 e!2525271)))

(declare-fun res!1661174 () Bool)

(assert (=> b!4069022 (=> (not res!1661174) (not e!2525271))))

(assert (=> b!4069022 (= res!1661174 (not ((_ is Nil!43459) lt!1456320)))))

(declare-fun b!4069023 () Bool)

(declare-fun res!1661175 () Bool)

(assert (=> b!4069023 (=> (not res!1661175) (not e!2525271))))

(assert (=> b!4069023 (= res!1661175 (= (head!8585 lt!1456312) (head!8585 lt!1456320)))))

(assert (= (and d!1209497 (not res!1661172)) b!4069022))

(assert (= (and b!4069022 res!1661174) b!4069023))

(assert (= (and b!4069023 res!1661175) b!4069024))

(assert (= (and d!1209497 (not res!1661173)) b!4069025))

(assert (=> b!4069024 m!4677537))

(declare-fun m!4677851 () Bool)

(assert (=> b!4069024 m!4677851))

(assert (=> b!4069024 m!4677537))

(assert (=> b!4069024 m!4677851))

(declare-fun m!4677853 () Bool)

(assert (=> b!4069024 m!4677853))

(declare-fun m!4677855 () Bool)

(assert (=> b!4069025 m!4677855))

(assert (=> b!4069025 m!4677433))

(assert (=> b!4069023 m!4677541))

(declare-fun m!4677857 () Bool)

(assert (=> b!4069023 m!4677857))

(assert (=> b!4068733 d!1209497))

(declare-fun d!1209499 () Bool)

(declare-fun fromListB!2376 (List!43583) BalanceConc!25984)

(assert (=> d!1209499 (= (seqFromList!5201 lt!1456312) (fromListB!2376 lt!1456312))))

(declare-fun bs!592497 () Bool)

(assert (= bs!592497 d!1209499))

(declare-fun m!4677859 () Bool)

(assert (=> bs!592497 m!4677859))

(assert (=> b!4068733 d!1209499))

(declare-fun b!4069181 () Bool)

(declare-fun res!1661282 () Bool)

(declare-fun e!2525353 () Bool)

(assert (=> b!4069181 (=> (not res!1661282) (not e!2525353))))

(declare-fun lt!1456494 () Option!9398)

(assert (=> b!4069181 (= res!1661282 (< (size!32492 (_2!24389 (get!14252 lt!1456494))) (size!32492 lt!1456322)))))

(declare-fun b!4069182 () Bool)

(declare-fun e!2525354 () Option!9398)

(declare-datatypes ((tuple2!42514 0))(
  ( (tuple2!42515 (_1!24391 List!43583) (_2!24391 List!43583)) )
))
(declare-fun lt!1456492 () tuple2!42514)

(declare-fun size!32494 (BalanceConc!25984) Int)

(assert (=> b!4069182 (= e!2525354 (Some!9397 (tuple2!42511 (Token!13107 (apply!10173 (transformation!6984 (rule!10088 token!484)) (seqFromList!5201 (_1!24391 lt!1456492))) (rule!10088 token!484) (size!32494 (seqFromList!5201 (_1!24391 lt!1456492))) (_1!24391 lt!1456492)) (_2!24391 lt!1456492))))))

(declare-fun lt!1456493 () Unit!63027)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1392 (Regex!11889 List!43583) Unit!63027)

(assert (=> b!4069182 (= lt!1456493 (longestMatchIsAcceptedByMatchOrIsEmpty!1392 (regex!6984 (rule!10088 token!484)) lt!1456322))))

(declare-fun res!1661280 () Bool)

(declare-fun findLongestMatchInner!1419 (Regex!11889 List!43583 Int List!43583 List!43583 Int) tuple2!42514)

(assert (=> b!4069182 (= res!1661280 (isEmpty!25940 (_1!24391 (findLongestMatchInner!1419 (regex!6984 (rule!10088 token!484)) Nil!43459 (size!32492 Nil!43459) lt!1456322 lt!1456322 (size!32492 lt!1456322)))))))

(declare-fun e!2525352 () Bool)

(assert (=> b!4069182 (=> res!1661280 e!2525352)))

(assert (=> b!4069182 e!2525352))

(declare-fun lt!1456495 () Unit!63027)

(assert (=> b!4069182 (= lt!1456495 lt!1456493)))

(declare-fun lt!1456491 () Unit!63027)

(declare-fun lemmaSemiInverse!1951 (TokenValueInjection!13856 BalanceConc!25984) Unit!63027)

(assert (=> b!4069182 (= lt!1456491 (lemmaSemiInverse!1951 (transformation!6984 (rule!10088 token!484)) (seqFromList!5201 (_1!24391 lt!1456492))))))

(declare-fun b!4069183 () Bool)

(declare-fun e!2525355 () Bool)

(assert (=> b!4069183 (= e!2525355 e!2525353)))

(declare-fun res!1661281 () Bool)

(assert (=> b!4069183 (=> (not res!1661281) (not e!2525353))))

(assert (=> b!4069183 (= res!1661281 (matchR!5842 (regex!6984 (rule!10088 token!484)) (list!16204 (charsOf!4800 (_1!24389 (get!14252 lt!1456494))))))))

(declare-fun b!4069184 () Bool)

(declare-fun res!1661285 () Bool)

(assert (=> b!4069184 (=> (not res!1661285) (not e!2525353))))

(assert (=> b!4069184 (= res!1661285 (= (rule!10088 (_1!24389 (get!14252 lt!1456494))) (rule!10088 token!484)))))

(declare-fun b!4069185 () Bool)

(assert (=> b!4069185 (= e!2525352 (matchR!5842 (regex!6984 (rule!10088 token!484)) (_1!24391 (findLongestMatchInner!1419 (regex!6984 (rule!10088 token!484)) Nil!43459 (size!32492 Nil!43459) lt!1456322 lt!1456322 (size!32492 lt!1456322)))))))

(declare-fun b!4069186 () Bool)

(declare-fun res!1661284 () Bool)

(assert (=> b!4069186 (=> (not res!1661284) (not e!2525353))))

(assert (=> b!4069186 (= res!1661284 (= (value!219678 (_1!24389 (get!14252 lt!1456494))) (apply!10173 (transformation!6984 (rule!10088 (_1!24389 (get!14252 lt!1456494)))) (seqFromList!5201 (originalCharacters!7584 (_1!24389 (get!14252 lt!1456494)))))))))

(declare-fun b!4069187 () Bool)

(assert (=> b!4069187 (= e!2525354 None!9397)))

(declare-fun b!4069188 () Bool)

(assert (=> b!4069188 (= e!2525353 (= (size!32491 (_1!24389 (get!14252 lt!1456494))) (size!32492 (originalCharacters!7584 (_1!24389 (get!14252 lt!1456494))))))))

(declare-fun b!4069189 () Bool)

(declare-fun res!1661283 () Bool)

(assert (=> b!4069189 (=> (not res!1661283) (not e!2525353))))

(assert (=> b!4069189 (= res!1661283 (= (++!11386 (list!16204 (charsOf!4800 (_1!24389 (get!14252 lt!1456494)))) (_2!24389 (get!14252 lt!1456494))) lt!1456322))))

(declare-fun d!1209501 () Bool)

(assert (=> d!1209501 e!2525355))

(declare-fun res!1661279 () Bool)

(assert (=> d!1209501 (=> res!1661279 e!2525355)))

(assert (=> d!1209501 (= res!1661279 (isEmpty!25941 lt!1456494))))

(assert (=> d!1209501 (= lt!1456494 e!2525354)))

(declare-fun c!702487 () Bool)

(assert (=> d!1209501 (= c!702487 (isEmpty!25940 (_1!24391 lt!1456492)))))

(declare-fun findLongestMatch!1332 (Regex!11889 List!43583) tuple2!42514)

(assert (=> d!1209501 (= lt!1456492 (findLongestMatch!1332 (regex!6984 (rule!10088 token!484)) lt!1456322))))

(assert (=> d!1209501 (ruleValid!2914 thiss!21717 (rule!10088 token!484))))

(assert (=> d!1209501 (= (maxPrefixOneRule!2883 thiss!21717 (rule!10088 token!484) lt!1456322) lt!1456494)))

(assert (= (and d!1209501 c!702487) b!4069187))

(assert (= (and d!1209501 (not c!702487)) b!4069182))

(assert (= (and b!4069182 (not res!1661280)) b!4069185))

(assert (= (and d!1209501 (not res!1661279)) b!4069183))

(assert (= (and b!4069183 res!1661281) b!4069189))

(assert (= (and b!4069189 res!1661283) b!4069181))

(assert (= (and b!4069181 res!1661282) b!4069184))

(assert (= (and b!4069184 res!1661285) b!4069186))

(assert (= (and b!4069186 res!1661284) b!4069188))

(declare-fun m!4678031 () Bool)

(assert (=> b!4069181 m!4678031))

(declare-fun m!4678033 () Bool)

(assert (=> b!4069181 m!4678033))

(assert (=> b!4069181 m!4677617))

(assert (=> b!4069186 m!4678031))

(declare-fun m!4678035 () Bool)

(assert (=> b!4069186 m!4678035))

(assert (=> b!4069186 m!4678035))

(declare-fun m!4678037 () Bool)

(assert (=> b!4069186 m!4678037))

(declare-fun m!4678039 () Bool)

(assert (=> b!4069185 m!4678039))

(assert (=> b!4069185 m!4677617))

(assert (=> b!4069185 m!4678039))

(assert (=> b!4069185 m!4677617))

(declare-fun m!4678041 () Bool)

(assert (=> b!4069185 m!4678041))

(declare-fun m!4678047 () Bool)

(assert (=> b!4069185 m!4678047))

(assert (=> b!4069183 m!4678031))

(declare-fun m!4678049 () Bool)

(assert (=> b!4069183 m!4678049))

(assert (=> b!4069183 m!4678049))

(declare-fun m!4678051 () Bool)

(assert (=> b!4069183 m!4678051))

(assert (=> b!4069183 m!4678051))

(declare-fun m!4678053 () Bool)

(assert (=> b!4069183 m!4678053))

(assert (=> b!4069184 m!4678031))

(assert (=> b!4069188 m!4678031))

(declare-fun m!4678055 () Bool)

(assert (=> b!4069188 m!4678055))

(declare-fun m!4678057 () Bool)

(assert (=> d!1209501 m!4678057))

(declare-fun m!4678059 () Bool)

(assert (=> d!1209501 m!4678059))

(declare-fun m!4678063 () Bool)

(assert (=> d!1209501 m!4678063))

(assert (=> d!1209501 m!4677525))

(declare-fun m!4678065 () Bool)

(assert (=> b!4069182 m!4678065))

(declare-fun m!4678067 () Bool)

(assert (=> b!4069182 m!4678067))

(assert (=> b!4069182 m!4678065))

(declare-fun m!4678071 () Bool)

(assert (=> b!4069182 m!4678071))

(assert (=> b!4069182 m!4678039))

(assert (=> b!4069182 m!4677617))

(assert (=> b!4069182 m!4678041))

(assert (=> b!4069182 m!4678065))

(declare-fun m!4678075 () Bool)

(assert (=> b!4069182 m!4678075))

(declare-fun m!4678077 () Bool)

(assert (=> b!4069182 m!4678077))

(assert (=> b!4069182 m!4678065))

(declare-fun m!4678079 () Bool)

(assert (=> b!4069182 m!4678079))

(assert (=> b!4069182 m!4677617))

(assert (=> b!4069182 m!4678039))

(assert (=> b!4069189 m!4678031))

(assert (=> b!4069189 m!4678049))

(assert (=> b!4069189 m!4678049))

(assert (=> b!4069189 m!4678051))

(assert (=> b!4069189 m!4678051))

(declare-fun m!4678083 () Bool)

(assert (=> b!4069189 m!4678083))

(assert (=> b!4068733 d!1209501))

(declare-fun d!1209551 () Bool)

(assert (=> d!1209551 (= lt!1456330 suffixResult!105)))

(declare-fun lt!1456503 () Unit!63027)

(assert (=> d!1209551 (= lt!1456503 (choose!24816 lt!1456312 lt!1456330 lt!1456312 suffixResult!105 lt!1456322))))

(assert (=> d!1209551 (isPrefix!4071 lt!1456312 lt!1456322)))

(assert (=> d!1209551 (= (lemmaSamePrefixThenSameSuffix!2232 lt!1456312 lt!1456330 lt!1456312 suffixResult!105 lt!1456322) lt!1456503)))

(declare-fun bs!592503 () Bool)

(assert (= bs!592503 d!1209551))

(declare-fun m!4678085 () Bool)

(assert (=> bs!592503 m!4678085))

(assert (=> bs!592503 m!4677413))

(assert (=> b!4068733 d!1209551))

(declare-fun d!1209553 () Bool)

(assert (=> d!1209553 (isPrefix!4071 lt!1456312 (++!11386 lt!1456312 lt!1456330))))

(declare-fun lt!1456504 () Unit!63027)

(assert (=> d!1209553 (= lt!1456504 (choose!24809 lt!1456312 lt!1456330))))

(assert (=> d!1209553 (= (lemmaConcatTwoListThenFirstIsPrefix!2906 lt!1456312 lt!1456330) lt!1456504)))

(declare-fun bs!592504 () Bool)

(assert (= bs!592504 d!1209553))

(assert (=> bs!592504 m!4677467))

(assert (=> bs!592504 m!4677467))

(declare-fun m!4678095 () Bool)

(assert (=> bs!592504 m!4678095))

(declare-fun m!4678097 () Bool)

(assert (=> bs!592504 m!4678097))

(assert (=> b!4068733 d!1209553))

(declare-fun b!4069207 () Bool)

(declare-fun e!2525369 () List!43583)

(assert (=> b!4069207 (= e!2525369 (Cons!43459 (h!48879 lt!1456312) (++!11386 (t!336958 lt!1456312) suffixResult!105)))))

(declare-fun b!4069208 () Bool)

(declare-fun res!1661302 () Bool)

(declare-fun e!2525368 () Bool)

(assert (=> b!4069208 (=> (not res!1661302) (not e!2525368))))

(declare-fun lt!1456506 () List!43583)

(assert (=> b!4069208 (= res!1661302 (= (size!32492 lt!1456506) (+ (size!32492 lt!1456312) (size!32492 suffixResult!105))))))

(declare-fun d!1209557 () Bool)

(assert (=> d!1209557 e!2525368))

(declare-fun res!1661303 () Bool)

(assert (=> d!1209557 (=> (not res!1661303) (not e!2525368))))

(assert (=> d!1209557 (= res!1661303 (= (content!6640 lt!1456506) ((_ map or) (content!6640 lt!1456312) (content!6640 suffixResult!105))))))

(assert (=> d!1209557 (= lt!1456506 e!2525369)))

(declare-fun c!702488 () Bool)

(assert (=> d!1209557 (= c!702488 ((_ is Nil!43459) lt!1456312))))

(assert (=> d!1209557 (= (++!11386 lt!1456312 suffixResult!105) lt!1456506)))

(declare-fun b!4069206 () Bool)

(assert (=> b!4069206 (= e!2525369 suffixResult!105)))

(declare-fun b!4069209 () Bool)

(assert (=> b!4069209 (= e!2525368 (or (not (= suffixResult!105 Nil!43459)) (= lt!1456506 lt!1456312)))))

(assert (= (and d!1209557 c!702488) b!4069206))

(assert (= (and d!1209557 (not c!702488)) b!4069207))

(assert (= (and d!1209557 res!1661303) b!4069208))

(assert (= (and b!4069208 res!1661302) b!4069209))

(declare-fun m!4678107 () Bool)

(assert (=> b!4069207 m!4678107))

(declare-fun m!4678109 () Bool)

(assert (=> b!4069208 m!4678109))

(assert (=> b!4069208 m!4677433))

(declare-fun m!4678111 () Bool)

(assert (=> b!4069208 m!4678111))

(declare-fun m!4678113 () Bool)

(assert (=> d!1209557 m!4678113))

(assert (=> d!1209557 m!4677647))

(declare-fun m!4678115 () Bool)

(assert (=> d!1209557 m!4678115))

(assert (=> b!4068744 d!1209557))

(declare-fun d!1209563 () Bool)

(declare-fun e!2525378 () Bool)

(assert (=> d!1209563 e!2525378))

(declare-fun res!1661312 () Bool)

(assert (=> d!1209563 (=> (not res!1661312) (not e!2525378))))

(assert (=> d!1209563 (= res!1661312 (semiInverseModEq!2990 (toChars!9403 (transformation!6984 (rule!10088 token!484))) (toValue!9544 (transformation!6984 (rule!10088 token!484)))))))

(declare-fun Unit!63030 () Unit!63027)

(assert (=> d!1209563 (= (lemmaInv!1193 (transformation!6984 (rule!10088 token!484))) Unit!63030)))

(declare-fun b!4069224 () Bool)

(assert (=> b!4069224 (= e!2525378 (equivClasses!2889 (toChars!9403 (transformation!6984 (rule!10088 token!484))) (toValue!9544 (transformation!6984 (rule!10088 token!484)))))))

(assert (= (and d!1209563 res!1661312) b!4069224))

(assert (=> d!1209563 m!4677697))

(assert (=> b!4069224 m!4677699))

(assert (=> b!4068744 d!1209563))

(declare-fun d!1209571 () Bool)

(declare-fun res!1661317 () Bool)

(declare-fun e!2525384 () Bool)

(assert (=> d!1209571 (=> (not res!1661317) (not e!2525384))))

(assert (=> d!1209571 (= res!1661317 (validRegex!5382 (regex!6984 (rule!10088 token!484))))))

(assert (=> d!1209571 (= (ruleValid!2914 thiss!21717 (rule!10088 token!484)) e!2525384)))

(declare-fun b!4069235 () Bool)

(declare-fun res!1661318 () Bool)

(assert (=> b!4069235 (=> (not res!1661318) (not e!2525384))))

(assert (=> b!4069235 (= res!1661318 (not (nullable!4182 (regex!6984 (rule!10088 token!484)))))))

(declare-fun b!4069236 () Bool)

(assert (=> b!4069236 (= e!2525384 (not (= (tag!7844 (rule!10088 token!484)) (String!49789 ""))))))

(assert (= (and d!1209571 res!1661317) b!4069235))

(assert (= (and b!4069235 res!1661318) b!4069236))

(assert (=> d!1209571 m!4677547))

(assert (=> b!4069235 m!4677533))

(assert (=> b!4068744 d!1209571))

(declare-fun d!1209581 () Bool)

(assert (=> d!1209581 (ruleValid!2914 thiss!21717 (rule!10088 token!484))))

(declare-fun lt!1456522 () Unit!63027)

(declare-fun choose!24818 (LexerInterface!6573 Rule!13768 List!43585) Unit!63027)

(assert (=> d!1209581 (= lt!1456522 (choose!24818 thiss!21717 (rule!10088 token!484) rules!2999))))

(assert (=> d!1209581 (contains!8650 rules!2999 (rule!10088 token!484))))

(assert (=> d!1209581 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1984 thiss!21717 (rule!10088 token!484) rules!2999) lt!1456522)))

(declare-fun bs!592509 () Bool)

(assert (= bs!592509 d!1209581))

(assert (=> bs!592509 m!4677525))

(declare-fun m!4678157 () Bool)

(assert (=> bs!592509 m!4678157))

(assert (=> bs!592509 m!4677443))

(assert (=> b!4068744 d!1209581))

(declare-fun d!1209585 () Bool)

(declare-fun res!1661322 () Bool)

(declare-fun e!2525391 () Bool)

(assert (=> d!1209585 (=> (not res!1661322) (not e!2525391))))

(declare-fun rulesValid!2724 (LexerInterface!6573 List!43585) Bool)

(assert (=> d!1209585 (= res!1661322 (rulesValid!2724 thiss!21717 rules!2999))))

(assert (=> d!1209585 (= (rulesInvariant!5916 thiss!21717 rules!2999) e!2525391)))

(declare-fun b!4069245 () Bool)

(declare-datatypes ((List!43587 0))(
  ( (Nil!43463) (Cons!43463 (h!48883 String!49788) (t!336986 List!43587)) )
))
(declare-fun noDuplicateTag!2725 (LexerInterface!6573 List!43585 List!43587) Bool)

(assert (=> b!4069245 (= e!2525391 (noDuplicateTag!2725 thiss!21717 rules!2999 Nil!43463))))

(assert (= (and d!1209585 res!1661322) b!4069245))

(declare-fun m!4678167 () Bool)

(assert (=> d!1209585 m!4678167))

(declare-fun m!4678169 () Bool)

(assert (=> b!4069245 m!4678169))

(assert (=> b!4068742 d!1209585))

(declare-fun d!1209593 () Bool)

(assert (=> d!1209593 true))

(declare-fun lt!1456555 () Bool)

(declare-fun lambda!127591 () Int)

(declare-fun forall!8386 (List!43585 Int) Bool)

(assert (=> d!1209593 (= lt!1456555 (forall!8386 rules!2999 lambda!127591))))

(declare-fun e!2525453 () Bool)

(assert (=> d!1209593 (= lt!1456555 e!2525453)))

(declare-fun res!1661370 () Bool)

(assert (=> d!1209593 (=> res!1661370 e!2525453)))

(assert (=> d!1209593 (= res!1661370 (not ((_ is Cons!43461) rules!2999)))))

(assert (=> d!1209593 (= (rulesValidInductive!2557 thiss!21717 rules!2999) lt!1456555)))

(declare-fun b!4069344 () Bool)

(declare-fun e!2525454 () Bool)

(assert (=> b!4069344 (= e!2525453 e!2525454)))

(declare-fun res!1661371 () Bool)

(assert (=> b!4069344 (=> (not res!1661371) (not e!2525454))))

(assert (=> b!4069344 (= res!1661371 (ruleValid!2914 thiss!21717 (h!48881 rules!2999)))))

(declare-fun b!4069345 () Bool)

(assert (=> b!4069345 (= e!2525454 (rulesValidInductive!2557 thiss!21717 (t!336960 rules!2999)))))

(assert (= (and d!1209593 (not res!1661370)) b!4069344))

(assert (= (and b!4069344 res!1661371) b!4069345))

(declare-fun m!4678267 () Bool)

(assert (=> d!1209593 m!4678267))

(declare-fun m!4678269 () Bool)

(assert (=> b!4069344 m!4678269))

(declare-fun m!4678271 () Bool)

(assert (=> b!4069345 m!4678271))

(assert (=> b!4068753 d!1209593))

(declare-fun b!4069360 () Bool)

(declare-fun e!2525457 () Bool)

(declare-fun tp!1231515 () Bool)

(assert (=> b!4069360 (= e!2525457 tp!1231515)))

(declare-fun b!4069361 () Bool)

(declare-fun tp!1231513 () Bool)

(declare-fun tp!1231517 () Bool)

(assert (=> b!4069361 (= e!2525457 (and tp!1231513 tp!1231517))))

(declare-fun b!4069359 () Bool)

(declare-fun tp!1231516 () Bool)

(declare-fun tp!1231514 () Bool)

(assert (=> b!4069359 (= e!2525457 (and tp!1231516 tp!1231514))))

(assert (=> b!4068752 (= tp!1231452 e!2525457)))

(declare-fun b!4069358 () Bool)

(assert (=> b!4069358 (= e!2525457 tp_is_empty!20749)))

(assert (= (and b!4068752 ((_ is ElementMatch!11889) (regex!6984 (rule!10088 token!484)))) b!4069358))

(assert (= (and b!4068752 ((_ is Concat!19104) (regex!6984 (rule!10088 token!484)))) b!4069359))

(assert (= (and b!4068752 ((_ is Star!11889) (regex!6984 (rule!10088 token!484)))) b!4069360))

(assert (= (and b!4068752 ((_ is Union!11889) (regex!6984 (rule!10088 token!484)))) b!4069361))

(declare-fun b!4069366 () Bool)

(declare-fun e!2525460 () Bool)

(declare-fun tp!1231520 () Bool)

(assert (=> b!4069366 (= e!2525460 (and tp_is_empty!20749 tp!1231520))))

(assert (=> b!4068736 (= tp!1231453 e!2525460)))

(assert (= (and b!4068736 ((_ is Cons!43459) (t!336958 prefix!494))) b!4069366))

(declare-fun b!4069367 () Bool)

(declare-fun e!2525461 () Bool)

(declare-fun tp!1231521 () Bool)

(assert (=> b!4069367 (= e!2525461 (and tp_is_empty!20749 tp!1231521))))

(assert (=> b!4068755 (= tp!1231456 e!2525461)))

(assert (= (and b!4068755 ((_ is Cons!43459) (originalCharacters!7584 token!484))) b!4069367))

(declare-fun b!4069368 () Bool)

(declare-fun e!2525462 () Bool)

(declare-fun tp!1231522 () Bool)

(assert (=> b!4069368 (= e!2525462 (and tp_is_empty!20749 tp!1231522))))

(assert (=> b!4068734 (= tp!1231454 e!2525462)))

(assert (= (and b!4068734 ((_ is Cons!43459) (t!336958 newSuffixResult!27))) b!4069368))

(declare-fun b!4069369 () Bool)

(declare-fun e!2525463 () Bool)

(declare-fun tp!1231523 () Bool)

(assert (=> b!4069369 (= e!2525463 (and tp_is_empty!20749 tp!1231523))))

(assert (=> b!4068761 (= tp!1231455 e!2525463)))

(assert (= (and b!4068761 ((_ is Cons!43459) (t!336958 newSuffix!27))) b!4069369))

(declare-fun b!4069380 () Bool)

(declare-fun b_free!113197 () Bool)

(declare-fun b_next!113901 () Bool)

(assert (=> b!4069380 (= b_free!113197 (not b_next!113901))))

(declare-fun t!336983 () Bool)

(declare-fun tb!244621 () Bool)

(assert (=> (and b!4069380 (= (toValue!9544 (transformation!6984 (h!48881 (t!336960 rules!2999)))) (toValue!9544 (transformation!6984 (rule!10088 token!484)))) t!336983) tb!244621))

(declare-fun result!296478 () Bool)

(assert (= result!296478 result!296444))

(assert (=> d!1209493 t!336983))

(declare-fun b_and!312727 () Bool)

(declare-fun tp!1231532 () Bool)

(assert (=> b!4069380 (= tp!1231532 (and (=> t!336983 result!296478) b_and!312727))))

(declare-fun b_free!113199 () Bool)

(declare-fun b_next!113903 () Bool)

(assert (=> b!4069380 (= b_free!113199 (not b_next!113903))))

(declare-fun t!336985 () Bool)

(declare-fun tb!244623 () Bool)

(assert (=> (and b!4069380 (= (toChars!9403 (transformation!6984 (h!48881 (t!336960 rules!2999)))) (toChars!9403 (transformation!6984 (rule!10088 token!484)))) t!336985) tb!244623))

(declare-fun result!296480 () Bool)

(assert (= result!296480 result!296438))

(assert (=> d!1209409 t!336985))

(assert (=> b!4068931 t!336985))

(declare-fun b_and!312729 () Bool)

(declare-fun tp!1231534 () Bool)

(assert (=> b!4069380 (= tp!1231534 (and (=> t!336985 result!296480) b_and!312729))))

(declare-fun e!2525474 () Bool)

(assert (=> b!4069380 (= e!2525474 (and tp!1231532 tp!1231534))))

(declare-fun tp!1231535 () Bool)

(declare-fun e!2525475 () Bool)

(declare-fun b!4069379 () Bool)

(assert (=> b!4069379 (= e!2525475 (and tp!1231535 (inv!58095 (tag!7844 (h!48881 (t!336960 rules!2999)))) (inv!58098 (transformation!6984 (h!48881 (t!336960 rules!2999)))) e!2525474))))

(declare-fun b!4069378 () Bool)

(declare-fun e!2525473 () Bool)

(declare-fun tp!1231533 () Bool)

(assert (=> b!4069378 (= e!2525473 (and e!2525475 tp!1231533))))

(assert (=> b!4068745 (= tp!1231444 e!2525473)))

(assert (= b!4069379 b!4069380))

(assert (= b!4069378 b!4069379))

(assert (= (and b!4068745 ((_ is Cons!43461) (t!336960 rules!2999))) b!4069378))

(declare-fun m!4678273 () Bool)

(assert (=> b!4069379 m!4678273))

(declare-fun m!4678275 () Bool)

(assert (=> b!4069379 m!4678275))

(declare-fun b!4069381 () Bool)

(declare-fun e!2525476 () Bool)

(declare-fun tp!1231536 () Bool)

(assert (=> b!4069381 (= e!2525476 (and tp_is_empty!20749 tp!1231536))))

(assert (=> b!4068759 (= tp!1231448 e!2525476)))

(assert (= (and b!4068759 ((_ is Cons!43459) (t!336958 suffixResult!105))) b!4069381))

(declare-fun b!4069384 () Bool)

(declare-fun e!2525477 () Bool)

(declare-fun tp!1231539 () Bool)

(assert (=> b!4069384 (= e!2525477 tp!1231539)))

(declare-fun b!4069385 () Bool)

(declare-fun tp!1231537 () Bool)

(declare-fun tp!1231541 () Bool)

(assert (=> b!4069385 (= e!2525477 (and tp!1231537 tp!1231541))))

(declare-fun b!4069383 () Bool)

(declare-fun tp!1231540 () Bool)

(declare-fun tp!1231538 () Bool)

(assert (=> b!4069383 (= e!2525477 (and tp!1231540 tp!1231538))))

(assert (=> b!4068760 (= tp!1231447 e!2525477)))

(declare-fun b!4069382 () Bool)

(assert (=> b!4069382 (= e!2525477 tp_is_empty!20749)))

(assert (= (and b!4068760 ((_ is ElementMatch!11889) (regex!6984 (h!48881 rules!2999)))) b!4069382))

(assert (= (and b!4068760 ((_ is Concat!19104) (regex!6984 (h!48881 rules!2999)))) b!4069383))

(assert (= (and b!4068760 ((_ is Star!11889) (regex!6984 (h!48881 rules!2999)))) b!4069384))

(assert (= (and b!4068760 ((_ is Union!11889) (regex!6984 (h!48881 rules!2999)))) b!4069385))

(declare-fun b!4069386 () Bool)

(declare-fun e!2525478 () Bool)

(declare-fun tp!1231542 () Bool)

(assert (=> b!4069386 (= e!2525478 (and tp_is_empty!20749 tp!1231542))))

(assert (=> b!4068747 (= tp!1231451 e!2525478)))

(assert (= (and b!4068747 ((_ is Cons!43459) (t!336958 suffix!1299))) b!4069386))

(declare-fun b_lambda!118881 () Bool)

(assert (= b_lambda!118867 (or (and b!4068732 b_free!113185) (and b!4068750 b_free!113189 (= (toValue!9544 (transformation!6984 (h!48881 rules!2999))) (toValue!9544 (transformation!6984 (rule!10088 token!484))))) (and b!4069380 b_free!113197 (= (toValue!9544 (transformation!6984 (h!48881 (t!336960 rules!2999)))) (toValue!9544 (transformation!6984 (rule!10088 token!484))))) b_lambda!118881)))

(declare-fun b_lambda!118883 () Bool)

(assert (= b_lambda!118863 (or (and b!4068732 b_free!113187) (and b!4068750 b_free!113191 (= (toChars!9403 (transformation!6984 (h!48881 rules!2999))) (toChars!9403 (transformation!6984 (rule!10088 token!484))))) (and b!4069380 b_free!113199 (= (toChars!9403 (transformation!6984 (h!48881 (t!336960 rules!2999)))) (toChars!9403 (transformation!6984 (rule!10088 token!484))))) b_lambda!118883)))

(declare-fun b_lambda!118885 () Bool)

(assert (= b_lambda!118865 (or (and b!4068732 b_free!113187) (and b!4068750 b_free!113191 (= (toChars!9403 (transformation!6984 (h!48881 rules!2999))) (toChars!9403 (transformation!6984 (rule!10088 token!484))))) (and b!4069380 b_free!113199 (= (toChars!9403 (transformation!6984 (h!48881 (t!336960 rules!2999)))) (toChars!9403 (transformation!6984 (rule!10088 token!484))))) b_lambda!118885)))

(check-sat (not b!4069006) (not b!4068813) (not b!4069378) (not b!4068906) (not b!4068806) (not b!4069361) (not b!4069023) (not d!1209451) (not b!4069383) (not b!4068830) (not b_next!113893) (not d!1209439) (not b!4068918) (not b!4068987) (not b!4068872) (not b_next!113901) (not b!4068832) (not b!4068974) (not b!4068902) (not b!4069181) (not b_next!113891) (not b!4069003) (not b!4068803) (not b!4068995) (not d!1209433) (not d!1209425) (not b!4068970) (not b!4068859) (not b!4068868) (not b!4068976) (not b!4068896) (not b!4069344) (not b!4069367) (not b!4069182) (not b!4069009) (not b!4068871) (not b!4068910) (not b!4069025) (not b!4068991) (not b!4069360) (not d!1209429) b_and!312727 (not d!1209571) (not tb!244601) (not b!4068856) (not b!4069245) (not bm!288324) (not b!4069381) (not d!1209475) (not d!1209477) (not b!4069369) (not bm!288328) (not b!4069004) b_and!312707 (not d!1209435) (not b!4068905) (not b!4068932) (not d!1209459) (not b!4069186) (not b!4068973) (not d!1209393) (not d!1209485) b_and!312705 (not b!4068972) (not d!1209397) (not b!4068815) (not d!1209483) (not d!1209399) (not b!4069015) (not d!1209409) (not d!1209419) (not b!4068831) (not b_lambda!118885) (not b!4069007) (not d!1209407) b_and!312703 (not b!4068814) (not b!4068879) (not b!4068977) (not b_next!113895) (not b!4068845) (not b!4068860) (not b!4068840) (not d!1209581) (not b!4068925) (not b!4069366) b_and!312729 (not b!4068826) (not d!1209557) (not b!4069024) (not b!4069188) (not b!4068909) (not b!4068913) (not b!4068867) (not b!4068864) (not b_lambda!118881) (not b!4068917) (not b!4069379) (not d!1209441) (not b_next!113903) (not d!1209471) (not b_next!113889) (not b!4069386) (not b!4069012) (not d!1209593) (not b!4069368) (not b!4069008) (not b!4068875) (not b!4068924) (not b!4068923) (not b!4069207) (not b!4068885) (not b!4069001) (not b!4069235) (not b!4069185) (not d!1209553) (not b_lambda!118883) (not b!4068876) (not b!4069005) (not b!4068990) (not d!1209551) (not b!4068914) (not b!4068805) (not b!4068874) (not d!1209473) b_and!312709 (not bm!288327) (not b!4069345) (not d!1209431) (not b!4069359) (not b!4069385) (not d!1209445) (not b!4068920) (not b!4068895) (not b!4068999) (not d!1209499) (not b!4069224) (not b!4069189) (not b!4068862) (not b!4069011) (not b!4069183) (not b!4068838) (not d!1209585) (not d!1209481) (not b!4068986) (not b!4069384) (not b!4068926) (not b!4069208) (not d!1209563) (not b!4069184) (not b!4068828) (not b!4068994) (not d!1209495) (not b!4069013) (not d!1209489) (not b!4068931) (not b!4068827) (not b!4068866) tp_is_empty!20749 (not b!4068978) (not tb!244605) (not b!4068907) (not d!1209447) (not d!1209457) (not d!1209501) (not d!1209443) (not b!4068998) (not b!4068975) (not d!1209461) (not b!4068870))
(check-sat (not b_next!113891) b_and!312727 b_and!312707 b_and!312705 b_and!312729 b_and!312709 (not b_next!113893) (not b_next!113901) b_and!312703 (not b_next!113895) (not b_next!113903) (not b_next!113889))
