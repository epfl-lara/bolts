; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398258 () Bool)

(assert start!398258)

(declare-fun b!4177772 () Bool)

(declare-fun b_free!121327 () Bool)

(declare-fun b_next!122031 () Bool)

(assert (=> b!4177772 (= b_free!121327 (not b_next!122031))))

(declare-fun tp!1276837 () Bool)

(declare-fun b_and!326605 () Bool)

(assert (=> b!4177772 (= tp!1276837 b_and!326605)))

(declare-fun b_free!121329 () Bool)

(declare-fun b_next!122033 () Bool)

(assert (=> b!4177772 (= b_free!121329 (not b_next!122033))))

(declare-fun tp!1276833 () Bool)

(declare-fun b_and!326607 () Bool)

(assert (=> b!4177772 (= tp!1276833 b_and!326607)))

(declare-fun b!4177776 () Bool)

(declare-fun b_free!121331 () Bool)

(declare-fun b_next!122035 () Bool)

(assert (=> b!4177776 (= b_free!121331 (not b_next!122035))))

(declare-fun tp!1276835 () Bool)

(declare-fun b_and!326609 () Bool)

(assert (=> b!4177776 (= tp!1276835 b_and!326609)))

(declare-fun b_free!121333 () Bool)

(declare-fun b_next!122037 () Bool)

(assert (=> b!4177776 (= b_free!121333 (not b_next!122037))))

(declare-fun tp!1276834 () Bool)

(declare-fun b_and!326611 () Bool)

(assert (=> b!4177776 (= tp!1276834 b_and!326611)))

(declare-fun b!4177775 () Bool)

(declare-fun b_free!121335 () Bool)

(declare-fun b_next!122039 () Bool)

(assert (=> b!4177775 (= b_free!121335 (not b_next!122039))))

(declare-fun tp!1276832 () Bool)

(declare-fun b_and!326613 () Bool)

(assert (=> b!4177775 (= tp!1276832 b_and!326613)))

(declare-fun b_free!121337 () Bool)

(declare-fun b_next!122041 () Bool)

(assert (=> b!4177775 (= b_free!121337 (not b_next!122041))))

(declare-fun tp!1276841 () Bool)

(declare-fun b_and!326615 () Bool)

(assert (=> b!4177775 (= tp!1276841 b_and!326615)))

(declare-fun b!4177771 () Bool)

(declare-fun e!2593724 () Bool)

(declare-fun tp_is_empty!22025 () Bool)

(declare-fun tp!1276831 () Bool)

(assert (=> b!4177771 (= e!2593724 (and tp_is_empty!22025 tp!1276831))))

(declare-fun e!2593712 () Bool)

(assert (=> b!4177772 (= e!2593712 (and tp!1276837 tp!1276833))))

(declare-fun b!4177773 () Bool)

(declare-fun e!2593723 () Bool)

(declare-fun tp!1276838 () Bool)

(assert (=> b!4177773 (= e!2593723 (and tp_is_empty!22025 tp!1276838))))

(declare-fun b!4177774 () Bool)

(declare-fun tp!1276842 () Bool)

(declare-datatypes ((List!45983 0))(
  ( (Nil!45859) (Cons!45859 (h!51279 (_ BitVec 16)) (t!344792 List!45983)) )
))
(declare-datatypes ((TokenValue!7856 0))(
  ( (FloatLiteralValue!15712 (text!55437 List!45983)) (TokenValueExt!7855 (__x!27933 Int)) (Broken!39280 (value!237847 List!45983)) (Object!7979) (End!7856) (Def!7856) (Underscore!7856) (Match!7856) (Else!7856) (Error!7856) (Case!7856) (If!7856) (Extends!7856) (Abstract!7856) (Class!7856) (Val!7856) (DelimiterValue!15712 (del!7916 List!45983)) (KeywordValue!7862 (value!237848 List!45983)) (CommentValue!15712 (value!237849 List!45983)) (WhitespaceValue!15712 (value!237850 List!45983)) (IndentationValue!7856 (value!237851 List!45983)) (String!53145) (Int32!7856) (Broken!39281 (value!237852 List!45983)) (Boolean!7857) (Unit!64942) (OperatorValue!7859 (op!7916 List!45983)) (IdentifierValue!15712 (value!237853 List!45983)) (IdentifierValue!15713 (value!237854 List!45983)) (WhitespaceValue!15713 (value!237855 List!45983)) (True!15712) (False!15712) (Broken!39282 (value!237856 List!45983)) (Broken!39283 (value!237857 List!45983)) (True!15713) (RightBrace!7856) (RightBracket!7856) (Colon!7856) (Null!7856) (Comma!7856) (LeftBracket!7856) (False!15713) (LeftBrace!7856) (ImaginaryLiteralValue!7856 (text!55438 List!45983)) (StringLiteralValue!23568 (value!237858 List!45983)) (EOFValue!7856 (value!237859 List!45983)) (IdentValue!7856 (value!237860 List!45983)) (DelimiterValue!15713 (value!237861 List!45983)) (DedentValue!7856 (value!237862 List!45983)) (NewLineValue!7856 (value!237863 List!45983)) (IntegerValue!23568 (value!237864 (_ BitVec 32)) (text!55439 List!45983)) (IntegerValue!23569 (value!237865 Int) (text!55440 List!45983)) (Times!7856) (Or!7856) (Equal!7856) (Minus!7856) (Broken!39284 (value!237866 List!45983)) (And!7856) (Div!7856) (LessEqual!7856) (Mod!7856) (Concat!20387) (Not!7856) (Plus!7856) (SpaceValue!7856 (value!237867 List!45983)) (IntegerValue!23570 (value!237868 Int) (text!55441 List!45983)) (StringLiteralValue!23569 (text!55442 List!45983)) (FloatLiteralValue!15713 (text!55443 List!45983)) (BytesLiteralValue!7856 (value!237869 List!45983)) (CommentValue!15713 (value!237870 List!45983)) (StringLiteralValue!23570 (value!237871 List!45983)) (ErrorTokenValue!7856 (msg!7917 List!45983)) )
))
(declare-datatypes ((String!53146 0))(
  ( (String!53147 (value!237872 String)) )
))
(declare-datatypes ((C!25252 0))(
  ( (C!25253 (val!14788 Int)) )
))
(declare-datatypes ((List!45984 0))(
  ( (Nil!45860) (Cons!45860 (h!51280 C!25252) (t!344793 List!45984)) )
))
(declare-datatypes ((IArray!27679 0))(
  ( (IArray!27680 (innerList!13897 List!45984)) )
))
(declare-datatypes ((Conc!13837 0))(
  ( (Node!13837 (left!34160 Conc!13837) (right!34490 Conc!13837) (csize!27904 Int) (cheight!14048 Int)) (Leaf!21393 (xs!17143 IArray!27679) (csize!27905 Int)) (Empty!13837) )
))
(declare-datatypes ((BalanceConc!27268 0))(
  ( (BalanceConc!27269 (c!713538 Conc!13837)) )
))
(declare-datatypes ((Regex!12531 0))(
  ( (ElementMatch!12531 (c!713539 C!25252)) (Concat!20388 (regOne!25574 Regex!12531) (regTwo!25574 Regex!12531)) (EmptyExpr!12531) (Star!12531 (reg!12860 Regex!12531)) (EmptyLang!12531) (Union!12531 (regOne!25575 Regex!12531) (regTwo!25575 Regex!12531)) )
))
(declare-datatypes ((TokenValueInjection!15140 0))(
  ( (TokenValueInjection!15141 (toValue!10310 Int) (toChars!10169 Int)) )
))
(declare-datatypes ((Rule!15052 0))(
  ( (Rule!15053 (regex!7626 Regex!12531) (tag!8490 String!53146) (isSeparator!7626 Bool) (transformation!7626 TokenValueInjection!15140)) )
))
(declare-fun r!4142 () Rule!15052)

(declare-fun e!2593711 () Bool)

(declare-fun inv!60378 (String!53146) Bool)

(declare-fun inv!60380 (TokenValueInjection!15140) Bool)

(assert (=> b!4177774 (= e!2593711 (and tp!1276842 (inv!60378 (tag!8490 r!4142)) (inv!60380 (transformation!7626 r!4142)) e!2593712))))

(declare-fun e!2593718 () Bool)

(assert (=> b!4177775 (= e!2593718 (and tp!1276832 tp!1276841))))

(declare-fun e!2593721 () Bool)

(assert (=> b!4177776 (= e!2593721 (and tp!1276835 tp!1276834))))

(declare-fun b!4177777 () Bool)

(declare-fun res!1712874 () Bool)

(declare-fun e!2593709 () Bool)

(assert (=> b!4177777 (=> (not res!1712874) (not e!2593709))))

(declare-fun p!2959 () List!45984)

(declare-fun input!3342 () List!45984)

(declare-fun isPrefix!4483 (List!45984 List!45984) Bool)

(assert (=> b!4177777 (= res!1712874 (isPrefix!4483 p!2959 input!3342))))

(declare-fun b!4177778 () Bool)

(declare-fun res!1712867 () Bool)

(assert (=> b!4177778 (=> (not res!1712867) (not e!2593709))))

(declare-datatypes ((List!45985 0))(
  ( (Nil!45861) (Cons!45861 (h!51281 Rule!15052) (t!344794 List!45985)) )
))
(declare-fun rules!3843 () List!45985)

(declare-fun rBis!167 () Rule!15052)

(declare-fun contains!9429 (List!45985 Rule!15052) Bool)

(assert (=> b!4177778 (= res!1712867 (contains!9429 rules!3843 rBis!167))))

(declare-fun b!4177779 () Bool)

(declare-fun e!2593719 () Bool)

(declare-fun tp!1276840 () Bool)

(assert (=> b!4177779 (= e!2593719 (and tp_is_empty!22025 tp!1276840))))

(declare-fun b!4177780 () Bool)

(declare-fun tp!1276830 () Bool)

(declare-fun e!2593715 () Bool)

(assert (=> b!4177780 (= e!2593715 (and tp!1276830 (inv!60378 (tag!8490 rBis!167)) (inv!60380 (transformation!7626 rBis!167)) e!2593718))))

(declare-fun b!4177781 () Bool)

(declare-fun res!1712858 () Bool)

(assert (=> b!4177781 (=> (not res!1712858) (not e!2593709))))

(declare-fun matchR!6270 (Regex!12531 List!45984) Bool)

(assert (=> b!4177781 (= res!1712858 (matchR!6270 (regex!7626 r!4142) p!2959))))

(declare-fun b!4177782 () Bool)

(declare-fun res!1712868 () Bool)

(assert (=> b!4177782 (=> (not res!1712868) (not e!2593709))))

(declare-datatypes ((LexerInterface!7219 0))(
  ( (LexerInterfaceExt!7216 (__x!27934 Int)) (Lexer!7217) )
))
(declare-fun thiss!25986 () LexerInterface!7219)

(declare-fun rulesInvariant!6432 (LexerInterface!7219 List!45985) Bool)

(assert (=> b!4177782 (= res!1712868 (rulesInvariant!6432 thiss!25986 rules!3843))))

(declare-fun b!4177770 () Bool)

(declare-fun res!1712859 () Bool)

(assert (=> b!4177770 (=> (not res!1712859) (not e!2593709))))

(declare-fun pBis!107 () List!45984)

(assert (=> b!4177770 (= res!1712859 (isPrefix!4483 pBis!107 input!3342))))

(declare-fun res!1712873 () Bool)

(assert (=> start!398258 (=> (not res!1712873) (not e!2593709))))

(get-info :version)

(assert (=> start!398258 (= res!1712873 ((_ is Lexer!7217) thiss!25986))))

(assert (=> start!398258 e!2593709))

(assert (=> start!398258 true))

(assert (=> start!398258 e!2593715))

(assert (=> start!398258 e!2593711))

(declare-fun e!2593714 () Bool)

(assert (=> start!398258 e!2593714))

(assert (=> start!398258 e!2593719))

(assert (=> start!398258 e!2593724))

(assert (=> start!398258 e!2593723))

(declare-fun b!4177783 () Bool)

(declare-fun res!1712869 () Bool)

(assert (=> b!4177783 (=> (not res!1712869) (not e!2593709))))

(declare-fun ruleValid!3344 (LexerInterface!7219 Rule!15052) Bool)

(assert (=> b!4177783 (= res!1712869 (ruleValid!3344 thiss!25986 r!4142))))

(declare-fun b!4177784 () Bool)

(declare-fun e!2593716 () Bool)

(declare-fun tp!1276839 () Bool)

(assert (=> b!4177784 (= e!2593714 (and e!2593716 tp!1276839))))

(declare-fun b!4177785 () Bool)

(declare-fun res!1712866 () Bool)

(assert (=> b!4177785 (=> (not res!1712866) (not e!2593709))))

(declare-fun isEmpty!27132 (List!45985) Bool)

(assert (=> b!4177785 (= res!1712866 (not (isEmpty!27132 rules!3843)))))

(declare-fun b!4177786 () Bool)

(declare-fun res!1712860 () Bool)

(assert (=> b!4177786 (=> (not res!1712860) (not e!2593709))))

(assert (=> b!4177786 (= res!1712860 (contains!9429 rules!3843 r!4142))))

(declare-fun b!4177787 () Bool)

(declare-fun e!2593707 () Bool)

(declare-fun lt!1487991 () List!45984)

(assert (=> b!4177787 (= e!2593707 (isPrefix!4483 lt!1487991 input!3342))))

(declare-fun b!4177788 () Bool)

(declare-fun res!1712872 () Bool)

(assert (=> b!4177788 (=> res!1712872 e!2593707)))

(declare-fun lt!1487997 () BalanceConc!27268)

(declare-fun lt!1487992 () Int)

(declare-fun size!33674 (BalanceConc!27268) Int)

(assert (=> b!4177788 (= res!1712872 (>= (size!33674 lt!1487997) lt!1487992))))

(declare-fun b!4177789 () Bool)

(declare-fun res!1712863 () Bool)

(declare-fun e!2593708 () Bool)

(assert (=> b!4177789 (=> res!1712863 e!2593708)))

(assert (=> b!4177789 (= res!1712863 (not (ruleValid!3344 thiss!25986 rBis!167)))))

(declare-fun b!4177790 () Bool)

(declare-fun e!2593710 () Bool)

(assert (=> b!4177790 (= e!2593709 (not e!2593710))))

(declare-fun res!1712864 () Bool)

(assert (=> b!4177790 (=> res!1712864 e!2593710)))

(declare-datatypes ((Token!13966 0))(
  ( (Token!13967 (value!237873 TokenValue!7856) (rule!10682 Rule!15052) (size!33675 Int) (originalCharacters!8014 List!45984)) )
))
(declare-datatypes ((tuple2!43682 0))(
  ( (tuple2!43683 (_1!24975 Token!13966) (_2!24975 List!45984)) )
))
(declare-datatypes ((Option!9822 0))(
  ( (None!9821) (Some!9821 (v!40623 tuple2!43682)) )
))
(declare-fun lt!1487996 () Option!9822)

(declare-fun maxPrefixOneRule!3230 (LexerInterface!7219 Rule!15052 List!45984) Option!9822)

(assert (=> b!4177790 (= res!1712864 (not (= (maxPrefixOneRule!3230 thiss!25986 r!4142 input!3342) lt!1487996)))))

(declare-fun lt!1487994 () Int)

(declare-fun lt!1487988 () TokenValue!7856)

(declare-fun getSuffix!2778 (List!45984 List!45984) List!45984)

(assert (=> b!4177790 (= lt!1487996 (Some!9821 (tuple2!43683 (Token!13967 lt!1487988 r!4142 lt!1487994 p!2959) (getSuffix!2778 input!3342 p!2959))))))

(declare-fun size!33676 (List!45984) Int)

(assert (=> b!4177790 (= lt!1487994 (size!33676 p!2959))))

(declare-fun lt!1487999 () BalanceConc!27268)

(declare-fun apply!10591 (TokenValueInjection!15140 BalanceConc!27268) TokenValue!7856)

(assert (=> b!4177790 (= lt!1487988 (apply!10591 (transformation!7626 r!4142) lt!1487999))))

(assert (=> b!4177790 (isPrefix!4483 input!3342 input!3342)))

(declare-datatypes ((Unit!64943 0))(
  ( (Unit!64944) )
))
(declare-fun lt!1487990 () Unit!64943)

(declare-fun lemmaIsPrefixRefl!2912 (List!45984 List!45984) Unit!64943)

(assert (=> b!4177790 (= lt!1487990 (lemmaIsPrefixRefl!2912 input!3342 input!3342))))

(declare-fun lt!1487987 () Unit!64943)

(declare-fun lemmaSemiInverse!2392 (TokenValueInjection!15140 BalanceConc!27268) Unit!64943)

(assert (=> b!4177790 (= lt!1487987 (lemmaSemiInverse!2392 (transformation!7626 r!4142) lt!1487999))))

(declare-fun seqFromList!5651 (List!45984) BalanceConc!27268)

(assert (=> b!4177790 (= lt!1487999 (seqFromList!5651 p!2959))))

(declare-fun b!4177791 () Bool)

(declare-fun e!2593720 () Bool)

(assert (=> b!4177791 (= e!2593720 e!2593707)))

(declare-fun res!1712865 () Bool)

(assert (=> b!4177791 (=> res!1712865 e!2593707)))

(assert (=> b!4177791 (= res!1712865 (= lt!1487991 pBis!107))))

(declare-fun lt!1487993 () tuple2!43682)

(declare-fun ++!11704 (List!45984 List!45984) List!45984)

(assert (=> b!4177791 (isPrefix!4483 lt!1487991 (++!11704 lt!1487991 (_2!24975 lt!1487993)))))

(declare-fun lt!1488000 () Unit!64943)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2990 (List!45984 List!45984) Unit!64943)

(assert (=> b!4177791 (= lt!1488000 (lemmaConcatTwoListThenFirstIsPrefix!2990 lt!1487991 (_2!24975 lt!1487993)))))

(declare-fun list!16563 (BalanceConc!27268) List!45984)

(assert (=> b!4177791 (= lt!1487991 (list!16563 lt!1487997))))

(declare-fun charsOf!5067 (Token!13966) BalanceConc!27268)

(assert (=> b!4177791 (= lt!1487997 (charsOf!5067 (_1!24975 lt!1487993)))))

(declare-fun lt!1487995 () Option!9822)

(declare-fun get!14904 (Option!9822) tuple2!43682)

(assert (=> b!4177791 (= lt!1487993 (get!14904 lt!1487995))))

(declare-fun b!4177792 () Bool)

(declare-fun tp!1276836 () Bool)

(assert (=> b!4177792 (= e!2593716 (and tp!1276836 (inv!60378 (tag!8490 (h!51281 rules!3843))) (inv!60380 (transformation!7626 (h!51281 rules!3843))) e!2593721))))

(declare-fun b!4177793 () Bool)

(declare-fun res!1712871 () Bool)

(assert (=> b!4177793 (=> (not res!1712871) (not e!2593709))))

(declare-fun validRegex!5648 (Regex!12531) Bool)

(assert (=> b!4177793 (= res!1712871 (validRegex!5648 (regex!7626 r!4142)))))

(declare-fun b!4177794 () Bool)

(declare-fun res!1712870 () Bool)

(assert (=> b!4177794 (=> res!1712870 e!2593708)))

(declare-fun maxPrefix!4271 (LexerInterface!7219 List!45985 List!45984) Option!9822)

(assert (=> b!4177794 (= res!1712870 (not (= (maxPrefix!4271 thiss!25986 rules!3843 input!3342) lt!1487996)))))

(declare-fun b!4177795 () Bool)

(assert (=> b!4177795 (= e!2593708 e!2593720)))

(declare-fun res!1712861 () Bool)

(assert (=> b!4177795 (=> res!1712861 e!2593720)))

(declare-fun isEmpty!27133 (Option!9822) Bool)

(assert (=> b!4177795 (= res!1712861 (isEmpty!27133 lt!1487995))))

(assert (=> b!4177795 (= lt!1487995 (maxPrefixOneRule!3230 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1487989 () Unit!64943)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2358 (LexerInterface!7219 Rule!15052 List!45985) Unit!64943)

(assert (=> b!4177795 (= lt!1487989 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2358 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4177795 (<= lt!1487992 (size!33676 input!3342))))

(declare-fun lt!1487998 () Unit!64943)

(declare-fun lemmaIsPrefixThenSmallerEqSize!515 (List!45984 List!45984) Unit!64943)

(assert (=> b!4177795 (= lt!1487998 (lemmaIsPrefixThenSmallerEqSize!515 pBis!107 input!3342))))

(declare-fun b!4177796 () Bool)

(assert (=> b!4177796 (= e!2593710 e!2593708)))

(declare-fun res!1712862 () Bool)

(assert (=> b!4177796 (=> res!1712862 e!2593708)))

(assert (=> b!4177796 (= res!1712862 (<= lt!1487992 lt!1487994))))

(assert (=> b!4177796 (= lt!1487992 (size!33676 pBis!107))))

(assert (= (and start!398258 res!1712873) b!4177777))

(assert (= (and b!4177777 res!1712874) b!4177770))

(assert (= (and b!4177770 res!1712859) b!4177785))

(assert (= (and b!4177785 res!1712866) b!4177782))

(assert (= (and b!4177782 res!1712868) b!4177786))

(assert (= (and b!4177786 res!1712860) b!4177778))

(assert (= (and b!4177778 res!1712867) b!4177793))

(assert (= (and b!4177793 res!1712871) b!4177781))

(assert (= (and b!4177781 res!1712858) b!4177783))

(assert (= (and b!4177783 res!1712869) b!4177790))

(assert (= (and b!4177790 (not res!1712864)) b!4177796))

(assert (= (and b!4177796 (not res!1712862)) b!4177789))

(assert (= (and b!4177789 (not res!1712863)) b!4177794))

(assert (= (and b!4177794 (not res!1712870)) b!4177795))

(assert (= (and b!4177795 (not res!1712861)) b!4177791))

(assert (= (and b!4177791 (not res!1712865)) b!4177788))

(assert (= (and b!4177788 (not res!1712872)) b!4177787))

(assert (= b!4177780 b!4177775))

(assert (= start!398258 b!4177780))

(assert (= b!4177774 b!4177772))

(assert (= start!398258 b!4177774))

(assert (= b!4177792 b!4177776))

(assert (= b!4177784 b!4177792))

(assert (= (and start!398258 ((_ is Cons!45861) rules!3843)) b!4177784))

(assert (= (and start!398258 ((_ is Cons!45860) input!3342)) b!4177779))

(assert (= (and start!398258 ((_ is Cons!45860) pBis!107)) b!4177771))

(assert (= (and start!398258 ((_ is Cons!45860) p!2959)) b!4177773))

(declare-fun m!4767353 () Bool)

(assert (=> b!4177787 m!4767353))

(declare-fun m!4767355 () Bool)

(assert (=> b!4177777 m!4767355))

(declare-fun m!4767357 () Bool)

(assert (=> b!4177785 m!4767357))

(declare-fun m!4767359 () Bool)

(assert (=> b!4177782 m!4767359))

(declare-fun m!4767361 () Bool)

(assert (=> b!4177794 m!4767361))

(declare-fun m!4767363 () Bool)

(assert (=> b!4177791 m!4767363))

(declare-fun m!4767365 () Bool)

(assert (=> b!4177791 m!4767365))

(declare-fun m!4767367 () Bool)

(assert (=> b!4177791 m!4767367))

(declare-fun m!4767369 () Bool)

(assert (=> b!4177791 m!4767369))

(declare-fun m!4767371 () Bool)

(assert (=> b!4177791 m!4767371))

(declare-fun m!4767373 () Bool)

(assert (=> b!4177791 m!4767373))

(assert (=> b!4177791 m!4767371))

(declare-fun m!4767375 () Bool)

(assert (=> b!4177774 m!4767375))

(declare-fun m!4767377 () Bool)

(assert (=> b!4177774 m!4767377))

(declare-fun m!4767379 () Bool)

(assert (=> b!4177792 m!4767379))

(declare-fun m!4767381 () Bool)

(assert (=> b!4177792 m!4767381))

(declare-fun m!4767383 () Bool)

(assert (=> b!4177783 m!4767383))

(declare-fun m!4767385 () Bool)

(assert (=> b!4177795 m!4767385))

(declare-fun m!4767387 () Bool)

(assert (=> b!4177795 m!4767387))

(declare-fun m!4767389 () Bool)

(assert (=> b!4177795 m!4767389))

(declare-fun m!4767391 () Bool)

(assert (=> b!4177795 m!4767391))

(declare-fun m!4767393 () Bool)

(assert (=> b!4177795 m!4767393))

(declare-fun m!4767395 () Bool)

(assert (=> b!4177786 m!4767395))

(declare-fun m!4767397 () Bool)

(assert (=> b!4177796 m!4767397))

(declare-fun m!4767399 () Bool)

(assert (=> b!4177793 m!4767399))

(declare-fun m!4767401 () Bool)

(assert (=> b!4177780 m!4767401))

(declare-fun m!4767403 () Bool)

(assert (=> b!4177780 m!4767403))

(declare-fun m!4767405 () Bool)

(assert (=> b!4177790 m!4767405))

(declare-fun m!4767407 () Bool)

(assert (=> b!4177790 m!4767407))

(declare-fun m!4767409 () Bool)

(assert (=> b!4177790 m!4767409))

(declare-fun m!4767411 () Bool)

(assert (=> b!4177790 m!4767411))

(declare-fun m!4767413 () Bool)

(assert (=> b!4177790 m!4767413))

(declare-fun m!4767415 () Bool)

(assert (=> b!4177790 m!4767415))

(declare-fun m!4767417 () Bool)

(assert (=> b!4177790 m!4767417))

(declare-fun m!4767419 () Bool)

(assert (=> b!4177790 m!4767419))

(declare-fun m!4767421 () Bool)

(assert (=> b!4177781 m!4767421))

(declare-fun m!4767423 () Bool)

(assert (=> b!4177789 m!4767423))

(declare-fun m!4767425 () Bool)

(assert (=> b!4177770 m!4767425))

(declare-fun m!4767427 () Bool)

(assert (=> b!4177788 m!4767427))

(declare-fun m!4767429 () Bool)

(assert (=> b!4177778 m!4767429))

(check-sat (not b!4177773) (not b_next!122035) (not b!4177795) (not b!4177794) (not b!4177786) (not b!4177787) (not b!4177796) b_and!326613 (not b!4177783) (not b!4177793) (not b!4177792) b_and!326611 (not b!4177774) (not b_next!122031) (not b!4177778) (not b!4177771) (not b_next!122033) b_and!326615 (not b!4177777) b_and!326605 (not b!4177779) (not b_next!122039) (not b!4177785) (not b!4177782) (not b!4177790) (not b!4177781) b_and!326609 (not b!4177791) tp_is_empty!22025 (not b!4177784) (not b!4177788) (not b_next!122037) (not b_next!122041) (not b!4177789) b_and!326607 (not b!4177770) (not b!4177780))
(check-sat (not b_next!122031) (not b_next!122035) b_and!326605 (not b_next!122039) b_and!326609 (not b_next!122037) b_and!326613 b_and!326611 (not b_next!122033) b_and!326615 (not b_next!122041) b_and!326607)
(get-model)

(declare-fun d!1233076 () Bool)

(declare-fun e!2593736 () Bool)

(assert (=> d!1233076 e!2593736))

(declare-fun res!1712899 () Bool)

(assert (=> d!1233076 (=> res!1712899 e!2593736)))

(declare-fun lt!1488003 () Bool)

(assert (=> d!1233076 (= res!1712899 (not lt!1488003))))

(declare-fun e!2593735 () Bool)

(assert (=> d!1233076 (= lt!1488003 e!2593735)))

(declare-fun res!1712898 () Bool)

(assert (=> d!1233076 (=> res!1712898 e!2593735)))

(assert (=> d!1233076 (= res!1712898 ((_ is Nil!45860) p!2959))))

(assert (=> d!1233076 (= (isPrefix!4483 p!2959 input!3342) lt!1488003)))

(declare-fun b!4177811 () Bool)

(assert (=> b!4177811 (= e!2593736 (>= (size!33676 input!3342) (size!33676 p!2959)))))

(declare-fun b!4177808 () Bool)

(declare-fun e!2593734 () Bool)

(assert (=> b!4177808 (= e!2593735 e!2593734)))

(declare-fun res!1712896 () Bool)

(assert (=> b!4177808 (=> (not res!1712896) (not e!2593734))))

(assert (=> b!4177808 (= res!1712896 (not ((_ is Nil!45860) input!3342)))))

(declare-fun b!4177810 () Bool)

(declare-fun tail!6713 (List!45984) List!45984)

(assert (=> b!4177810 (= e!2593734 (isPrefix!4483 (tail!6713 p!2959) (tail!6713 input!3342)))))

(declare-fun b!4177809 () Bool)

(declare-fun res!1712897 () Bool)

(assert (=> b!4177809 (=> (not res!1712897) (not e!2593734))))

(declare-fun head!8866 (List!45984) C!25252)

(assert (=> b!4177809 (= res!1712897 (= (head!8866 p!2959) (head!8866 input!3342)))))

(assert (= (and d!1233076 (not res!1712898)) b!4177808))

(assert (= (and b!4177808 res!1712896) b!4177809))

(assert (= (and b!4177809 res!1712897) b!4177810))

(assert (= (and d!1233076 (not res!1712899)) b!4177811))

(assert (=> b!4177811 m!4767389))

(assert (=> b!4177811 m!4767411))

(declare-fun m!4767435 () Bool)

(assert (=> b!4177810 m!4767435))

(declare-fun m!4767437 () Bool)

(assert (=> b!4177810 m!4767437))

(assert (=> b!4177810 m!4767435))

(assert (=> b!4177810 m!4767437))

(declare-fun m!4767439 () Bool)

(assert (=> b!4177810 m!4767439))

(declare-fun m!4767441 () Bool)

(assert (=> b!4177809 m!4767441))

(declare-fun m!4767443 () Bool)

(assert (=> b!4177809 m!4767443))

(assert (=> b!4177777 d!1233076))

(declare-fun d!1233082 () Bool)

(declare-fun lt!1488009 () Int)

(assert (=> d!1233082 (= lt!1488009 (size!33676 (list!16563 lt!1487997)))))

(declare-fun size!33678 (Conc!13837) Int)

(assert (=> d!1233082 (= lt!1488009 (size!33678 (c!713538 lt!1487997)))))

(assert (=> d!1233082 (= (size!33674 lt!1487997) lt!1488009)))

(declare-fun bs!596180 () Bool)

(assert (= bs!596180 d!1233082))

(assert (=> bs!596180 m!4767367))

(assert (=> bs!596180 m!4767367))

(declare-fun m!4767451 () Bool)

(assert (=> bs!596180 m!4767451))

(declare-fun m!4767453 () Bool)

(assert (=> bs!596180 m!4767453))

(assert (=> b!4177788 d!1233082))

(declare-fun d!1233086 () Bool)

(declare-fun e!2593745 () Bool)

(assert (=> d!1233086 e!2593745))

(declare-fun res!1712909 () Bool)

(assert (=> d!1233086 (=> res!1712909 e!2593745)))

(declare-fun lt!1488010 () Bool)

(assert (=> d!1233086 (= res!1712909 (not lt!1488010))))

(declare-fun e!2593744 () Bool)

(assert (=> d!1233086 (= lt!1488010 e!2593744)))

(declare-fun res!1712908 () Bool)

(assert (=> d!1233086 (=> res!1712908 e!2593744)))

(assert (=> d!1233086 (= res!1712908 ((_ is Nil!45860) lt!1487991))))

(assert (=> d!1233086 (= (isPrefix!4483 lt!1487991 input!3342) lt!1488010)))

(declare-fun b!4177821 () Bool)

(assert (=> b!4177821 (= e!2593745 (>= (size!33676 input!3342) (size!33676 lt!1487991)))))

(declare-fun b!4177818 () Bool)

(declare-fun e!2593743 () Bool)

(assert (=> b!4177818 (= e!2593744 e!2593743)))

(declare-fun res!1712906 () Bool)

(assert (=> b!4177818 (=> (not res!1712906) (not e!2593743))))

(assert (=> b!4177818 (= res!1712906 (not ((_ is Nil!45860) input!3342)))))

(declare-fun b!4177820 () Bool)

(assert (=> b!4177820 (= e!2593743 (isPrefix!4483 (tail!6713 lt!1487991) (tail!6713 input!3342)))))

(declare-fun b!4177819 () Bool)

(declare-fun res!1712907 () Bool)

(assert (=> b!4177819 (=> (not res!1712907) (not e!2593743))))

(assert (=> b!4177819 (= res!1712907 (= (head!8866 lt!1487991) (head!8866 input!3342)))))

(assert (= (and d!1233086 (not res!1712908)) b!4177818))

(assert (= (and b!4177818 res!1712906) b!4177819))

(assert (= (and b!4177819 res!1712907) b!4177820))

(assert (= (and d!1233086 (not res!1712909)) b!4177821))

(assert (=> b!4177821 m!4767389))

(declare-fun m!4767455 () Bool)

(assert (=> b!4177821 m!4767455))

(declare-fun m!4767457 () Bool)

(assert (=> b!4177820 m!4767457))

(assert (=> b!4177820 m!4767437))

(assert (=> b!4177820 m!4767457))

(assert (=> b!4177820 m!4767437))

(declare-fun m!4767459 () Bool)

(assert (=> b!4177820 m!4767459))

(declare-fun m!4767461 () Bool)

(assert (=> b!4177819 m!4767461))

(assert (=> b!4177819 m!4767443))

(assert (=> b!4177787 d!1233086))

(declare-fun d!1233088 () Bool)

(declare-fun lt!1488016 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7118 (List!45985) (InoxSet Rule!15052))

(assert (=> d!1233088 (= lt!1488016 (select (content!7118 rules!3843) r!4142))))

(declare-fun e!2593759 () Bool)

(assert (=> d!1233088 (= lt!1488016 e!2593759)))

(declare-fun res!1712926 () Bool)

(assert (=> d!1233088 (=> (not res!1712926) (not e!2593759))))

(assert (=> d!1233088 (= res!1712926 ((_ is Cons!45861) rules!3843))))

(assert (=> d!1233088 (= (contains!9429 rules!3843 r!4142) lt!1488016)))

(declare-fun b!4177838 () Bool)

(declare-fun e!2593760 () Bool)

(assert (=> b!4177838 (= e!2593759 e!2593760)))

(declare-fun res!1712927 () Bool)

(assert (=> b!4177838 (=> res!1712927 e!2593760)))

(assert (=> b!4177838 (= res!1712927 (= (h!51281 rules!3843) r!4142))))

(declare-fun b!4177839 () Bool)

(assert (=> b!4177839 (= e!2593760 (contains!9429 (t!344794 rules!3843) r!4142))))

(assert (= (and d!1233088 res!1712926) b!4177838))

(assert (= (and b!4177838 (not res!1712927)) b!4177839))

(declare-fun m!4767473 () Bool)

(assert (=> d!1233088 m!4767473))

(declare-fun m!4767475 () Bool)

(assert (=> d!1233088 m!4767475))

(declare-fun m!4767477 () Bool)

(assert (=> b!4177839 m!4767477))

(assert (=> b!4177786 d!1233088))

(declare-fun d!1233094 () Bool)

(assert (=> d!1233094 (= (inv!60378 (tag!8490 rBis!167)) (= (mod (str.len (value!237872 (tag!8490 rBis!167))) 2) 0))))

(assert (=> b!4177780 d!1233094))

(declare-fun d!1233096 () Bool)

(declare-fun res!1712939 () Bool)

(declare-fun e!2593771 () Bool)

(assert (=> d!1233096 (=> (not res!1712939) (not e!2593771))))

(declare-fun semiInverseModEq!3298 (Int Int) Bool)

(assert (=> d!1233096 (= res!1712939 (semiInverseModEq!3298 (toChars!10169 (transformation!7626 rBis!167)) (toValue!10310 (transformation!7626 rBis!167))))))

(assert (=> d!1233096 (= (inv!60380 (transformation!7626 rBis!167)) e!2593771)))

(declare-fun b!4177851 () Bool)

(declare-fun equivClasses!3197 (Int Int) Bool)

(assert (=> b!4177851 (= e!2593771 (equivClasses!3197 (toChars!10169 (transformation!7626 rBis!167)) (toValue!10310 (transformation!7626 rBis!167))))))

(assert (= (and d!1233096 res!1712939) b!4177851))

(declare-fun m!4767499 () Bool)

(assert (=> d!1233096 m!4767499))

(declare-fun m!4767501 () Bool)

(assert (=> b!4177851 m!4767501))

(assert (=> b!4177780 d!1233096))

(declare-fun d!1233110 () Bool)

(declare-fun lt!1488023 () List!45984)

(assert (=> d!1233110 (= (++!11704 p!2959 lt!1488023) input!3342)))

(declare-fun e!2593777 () List!45984)

(assert (=> d!1233110 (= lt!1488023 e!2593777)))

(declare-fun c!713545 () Bool)

(assert (=> d!1233110 (= c!713545 ((_ is Cons!45860) p!2959))))

(assert (=> d!1233110 (>= (size!33676 input!3342) (size!33676 p!2959))))

(assert (=> d!1233110 (= (getSuffix!2778 input!3342 p!2959) lt!1488023)))

(declare-fun b!4177862 () Bool)

(assert (=> b!4177862 (= e!2593777 (getSuffix!2778 (tail!6713 input!3342) (t!344793 p!2959)))))

(declare-fun b!4177863 () Bool)

(assert (=> b!4177863 (= e!2593777 input!3342)))

(assert (= (and d!1233110 c!713545) b!4177862))

(assert (= (and d!1233110 (not c!713545)) b!4177863))

(declare-fun m!4767507 () Bool)

(assert (=> d!1233110 m!4767507))

(assert (=> d!1233110 m!4767389))

(assert (=> d!1233110 m!4767411))

(assert (=> b!4177862 m!4767437))

(assert (=> b!4177862 m!4767437))

(declare-fun m!4767509 () Bool)

(assert (=> b!4177862 m!4767509))

(assert (=> b!4177790 d!1233110))

(declare-fun d!1233114 () Bool)

(declare-fun e!2593780 () Bool)

(assert (=> d!1233114 e!2593780))

(declare-fun res!1712943 () Bool)

(assert (=> d!1233114 (=> res!1712943 e!2593780)))

(declare-fun lt!1488024 () Bool)

(assert (=> d!1233114 (= res!1712943 (not lt!1488024))))

(declare-fun e!2593779 () Bool)

(assert (=> d!1233114 (= lt!1488024 e!2593779)))

(declare-fun res!1712942 () Bool)

(assert (=> d!1233114 (=> res!1712942 e!2593779)))

(assert (=> d!1233114 (= res!1712942 ((_ is Nil!45860) input!3342))))

(assert (=> d!1233114 (= (isPrefix!4483 input!3342 input!3342) lt!1488024)))

(declare-fun b!4177867 () Bool)

(assert (=> b!4177867 (= e!2593780 (>= (size!33676 input!3342) (size!33676 input!3342)))))

(declare-fun b!4177864 () Bool)

(declare-fun e!2593778 () Bool)

(assert (=> b!4177864 (= e!2593779 e!2593778)))

(declare-fun res!1712940 () Bool)

(assert (=> b!4177864 (=> (not res!1712940) (not e!2593778))))

(assert (=> b!4177864 (= res!1712940 (not ((_ is Nil!45860) input!3342)))))

(declare-fun b!4177866 () Bool)

(assert (=> b!4177866 (= e!2593778 (isPrefix!4483 (tail!6713 input!3342) (tail!6713 input!3342)))))

(declare-fun b!4177865 () Bool)

(declare-fun res!1712941 () Bool)

(assert (=> b!4177865 (=> (not res!1712941) (not e!2593778))))

(assert (=> b!4177865 (= res!1712941 (= (head!8866 input!3342) (head!8866 input!3342)))))

(assert (= (and d!1233114 (not res!1712942)) b!4177864))

(assert (= (and b!4177864 res!1712940) b!4177865))

(assert (= (and b!4177865 res!1712941) b!4177866))

(assert (= (and d!1233114 (not res!1712943)) b!4177867))

(assert (=> b!4177867 m!4767389))

(assert (=> b!4177867 m!4767389))

(assert (=> b!4177866 m!4767437))

(assert (=> b!4177866 m!4767437))

(assert (=> b!4177866 m!4767437))

(assert (=> b!4177866 m!4767437))

(declare-fun m!4767511 () Bool)

(assert (=> b!4177866 m!4767511))

(assert (=> b!4177865 m!4767443))

(assert (=> b!4177865 m!4767443))

(assert (=> b!4177790 d!1233114))

(declare-fun d!1233116 () Bool)

(declare-fun fromListB!2581 (List!45984) BalanceConc!27268)

(assert (=> d!1233116 (= (seqFromList!5651 p!2959) (fromListB!2581 p!2959))))

(declare-fun bs!596181 () Bool)

(assert (= bs!596181 d!1233116))

(declare-fun m!4767513 () Bool)

(assert (=> bs!596181 m!4767513))

(assert (=> b!4177790 d!1233116))

(declare-fun d!1233118 () Bool)

(assert (=> d!1233118 (isPrefix!4483 input!3342 input!3342)))

(declare-fun lt!1488029 () Unit!64943)

(declare-fun choose!25564 (List!45984 List!45984) Unit!64943)

(assert (=> d!1233118 (= lt!1488029 (choose!25564 input!3342 input!3342))))

(assert (=> d!1233118 (= (lemmaIsPrefixRefl!2912 input!3342 input!3342) lt!1488029)))

(declare-fun bs!596182 () Bool)

(assert (= bs!596182 d!1233118))

(assert (=> bs!596182 m!4767405))

(declare-fun m!4767515 () Bool)

(assert (=> bs!596182 m!4767515))

(assert (=> b!4177790 d!1233118))

(declare-fun b!4177886 () Bool)

(declare-fun e!2593789 () Option!9822)

(assert (=> b!4177886 (= e!2593789 None!9821)))

(declare-fun b!4177887 () Bool)

(declare-fun res!1712964 () Bool)

(declare-fun e!2593790 () Bool)

(assert (=> b!4177887 (=> (not res!1712964) (not e!2593790))))

(declare-fun lt!1488044 () Option!9822)

(assert (=> b!4177887 (= res!1712964 (< (size!33676 (_2!24975 (get!14904 lt!1488044))) (size!33676 input!3342)))))

(declare-fun b!4177888 () Bool)

(declare-fun e!2593792 () Bool)

(declare-datatypes ((tuple2!43686 0))(
  ( (tuple2!43687 (_1!24977 List!45984) (_2!24977 List!45984)) )
))
(declare-fun findLongestMatchInner!1581 (Regex!12531 List!45984 Int List!45984 List!45984 Int) tuple2!43686)

(assert (=> b!4177888 (= e!2593792 (matchR!6270 (regex!7626 r!4142) (_1!24977 (findLongestMatchInner!1581 (regex!7626 r!4142) Nil!45860 (size!33676 Nil!45860) input!3342 input!3342 (size!33676 input!3342)))))))

(declare-fun b!4177889 () Bool)

(declare-fun res!1712963 () Bool)

(assert (=> b!4177889 (=> (not res!1712963) (not e!2593790))))

(assert (=> b!4177889 (= res!1712963 (= (rule!10682 (_1!24975 (get!14904 lt!1488044))) r!4142))))

(declare-fun d!1233120 () Bool)

(declare-fun e!2593791 () Bool)

(assert (=> d!1233120 e!2593791))

(declare-fun res!1712960 () Bool)

(assert (=> d!1233120 (=> res!1712960 e!2593791)))

(assert (=> d!1233120 (= res!1712960 (isEmpty!27133 lt!1488044))))

(assert (=> d!1233120 (= lt!1488044 e!2593789)))

(declare-fun c!713549 () Bool)

(declare-fun lt!1488040 () tuple2!43686)

(declare-fun isEmpty!27135 (List!45984) Bool)

(assert (=> d!1233120 (= c!713549 (isEmpty!27135 (_1!24977 lt!1488040)))))

(declare-fun findLongestMatch!1494 (Regex!12531 List!45984) tuple2!43686)

(assert (=> d!1233120 (= lt!1488040 (findLongestMatch!1494 (regex!7626 r!4142) input!3342))))

(assert (=> d!1233120 (ruleValid!3344 thiss!25986 r!4142)))

(assert (=> d!1233120 (= (maxPrefixOneRule!3230 thiss!25986 r!4142 input!3342) lt!1488044)))

(declare-fun b!4177890 () Bool)

(declare-fun res!1712961 () Bool)

(assert (=> b!4177890 (=> (not res!1712961) (not e!2593790))))

(assert (=> b!4177890 (= res!1712961 (= (value!237873 (_1!24975 (get!14904 lt!1488044))) (apply!10591 (transformation!7626 (rule!10682 (_1!24975 (get!14904 lt!1488044)))) (seqFromList!5651 (originalCharacters!8014 (_1!24975 (get!14904 lt!1488044)))))))))

(declare-fun b!4177891 () Bool)

(assert (=> b!4177891 (= e!2593790 (= (size!33675 (_1!24975 (get!14904 lt!1488044))) (size!33676 (originalCharacters!8014 (_1!24975 (get!14904 lt!1488044))))))))

(declare-fun b!4177892 () Bool)

(declare-fun res!1712962 () Bool)

(assert (=> b!4177892 (=> (not res!1712962) (not e!2593790))))

(assert (=> b!4177892 (= res!1712962 (= (++!11704 (list!16563 (charsOf!5067 (_1!24975 (get!14904 lt!1488044)))) (_2!24975 (get!14904 lt!1488044))) input!3342))))

(declare-fun b!4177893 () Bool)

(assert (=> b!4177893 (= e!2593789 (Some!9821 (tuple2!43683 (Token!13967 (apply!10591 (transformation!7626 r!4142) (seqFromList!5651 (_1!24977 lt!1488040))) r!4142 (size!33674 (seqFromList!5651 (_1!24977 lt!1488040))) (_1!24977 lt!1488040)) (_2!24977 lt!1488040))))))

(declare-fun lt!1488043 () Unit!64943)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1554 (Regex!12531 List!45984) Unit!64943)

(assert (=> b!4177893 (= lt!1488043 (longestMatchIsAcceptedByMatchOrIsEmpty!1554 (regex!7626 r!4142) input!3342))))

(declare-fun res!1712958 () Bool)

(assert (=> b!4177893 (= res!1712958 (isEmpty!27135 (_1!24977 (findLongestMatchInner!1581 (regex!7626 r!4142) Nil!45860 (size!33676 Nil!45860) input!3342 input!3342 (size!33676 input!3342)))))))

(assert (=> b!4177893 (=> res!1712958 e!2593792)))

(assert (=> b!4177893 e!2593792))

(declare-fun lt!1488041 () Unit!64943)

(assert (=> b!4177893 (= lt!1488041 lt!1488043)))

(declare-fun lt!1488042 () Unit!64943)

(assert (=> b!4177893 (= lt!1488042 (lemmaSemiInverse!2392 (transformation!7626 r!4142) (seqFromList!5651 (_1!24977 lt!1488040))))))

(declare-fun b!4177894 () Bool)

(assert (=> b!4177894 (= e!2593791 e!2593790)))

(declare-fun res!1712959 () Bool)

(assert (=> b!4177894 (=> (not res!1712959) (not e!2593790))))

(assert (=> b!4177894 (= res!1712959 (matchR!6270 (regex!7626 r!4142) (list!16563 (charsOf!5067 (_1!24975 (get!14904 lt!1488044))))))))

(assert (= (and d!1233120 c!713549) b!4177886))

(assert (= (and d!1233120 (not c!713549)) b!4177893))

(assert (= (and b!4177893 (not res!1712958)) b!4177888))

(assert (= (and d!1233120 (not res!1712960)) b!4177894))

(assert (= (and b!4177894 res!1712959) b!4177892))

(assert (= (and b!4177892 res!1712962) b!4177887))

(assert (= (and b!4177887 res!1712964) b!4177889))

(assert (= (and b!4177889 res!1712963) b!4177890))

(assert (= (and b!4177890 res!1712961) b!4177891))

(declare-fun m!4767517 () Bool)

(assert (=> b!4177893 m!4767517))

(declare-fun m!4767519 () Bool)

(assert (=> b!4177893 m!4767519))

(assert (=> b!4177893 m!4767389))

(declare-fun m!4767521 () Bool)

(assert (=> b!4177893 m!4767521))

(assert (=> b!4177893 m!4767517))

(declare-fun m!4767523 () Bool)

(assert (=> b!4177893 m!4767523))

(declare-fun m!4767525 () Bool)

(assert (=> b!4177893 m!4767525))

(assert (=> b!4177893 m!4767389))

(declare-fun m!4767527 () Bool)

(assert (=> b!4177893 m!4767527))

(assert (=> b!4177893 m!4767525))

(assert (=> b!4177893 m!4767517))

(declare-fun m!4767529 () Bool)

(assert (=> b!4177893 m!4767529))

(assert (=> b!4177893 m!4767517))

(declare-fun m!4767531 () Bool)

(assert (=> b!4177893 m!4767531))

(declare-fun m!4767533 () Bool)

(assert (=> b!4177890 m!4767533))

(declare-fun m!4767535 () Bool)

(assert (=> b!4177890 m!4767535))

(assert (=> b!4177890 m!4767535))

(declare-fun m!4767537 () Bool)

(assert (=> b!4177890 m!4767537))

(assert (=> b!4177888 m!4767525))

(assert (=> b!4177888 m!4767389))

(assert (=> b!4177888 m!4767525))

(assert (=> b!4177888 m!4767389))

(assert (=> b!4177888 m!4767527))

(declare-fun m!4767539 () Bool)

(assert (=> b!4177888 m!4767539))

(assert (=> b!4177892 m!4767533))

(declare-fun m!4767541 () Bool)

(assert (=> b!4177892 m!4767541))

(assert (=> b!4177892 m!4767541))

(declare-fun m!4767543 () Bool)

(assert (=> b!4177892 m!4767543))

(assert (=> b!4177892 m!4767543))

(declare-fun m!4767545 () Bool)

(assert (=> b!4177892 m!4767545))

(assert (=> b!4177894 m!4767533))

(assert (=> b!4177894 m!4767541))

(assert (=> b!4177894 m!4767541))

(assert (=> b!4177894 m!4767543))

(assert (=> b!4177894 m!4767543))

(declare-fun m!4767547 () Bool)

(assert (=> b!4177894 m!4767547))

(declare-fun m!4767549 () Bool)

(assert (=> d!1233120 m!4767549))

(declare-fun m!4767551 () Bool)

(assert (=> d!1233120 m!4767551))

(declare-fun m!4767553 () Bool)

(assert (=> d!1233120 m!4767553))

(assert (=> d!1233120 m!4767383))

(assert (=> b!4177891 m!4767533))

(declare-fun m!4767555 () Bool)

(assert (=> b!4177891 m!4767555))

(assert (=> b!4177889 m!4767533))

(assert (=> b!4177887 m!4767533))

(declare-fun m!4767557 () Bool)

(assert (=> b!4177887 m!4767557))

(assert (=> b!4177887 m!4767389))

(assert (=> b!4177790 d!1233120))

(declare-fun b!4178045 () Bool)

(declare-fun e!2593868 () Bool)

(assert (=> b!4178045 (= e!2593868 true)))

(declare-fun d!1233122 () Bool)

(assert (=> d!1233122 e!2593868))

(assert (= d!1233122 b!4178045))

(declare-fun lambda!129301 () Int)

(declare-fun order!24171 () Int)

(declare-fun order!24169 () Int)

(declare-fun dynLambda!19653 (Int Int) Int)

(declare-fun dynLambda!19654 (Int Int) Int)

(assert (=> b!4178045 (< (dynLambda!19653 order!24169 (toValue!10310 (transformation!7626 r!4142))) (dynLambda!19654 order!24171 lambda!129301))))

(declare-fun order!24173 () Int)

(declare-fun dynLambda!19655 (Int Int) Int)

(assert (=> b!4178045 (< (dynLambda!19655 order!24173 (toChars!10169 (transformation!7626 r!4142))) (dynLambda!19654 order!24171 lambda!129301))))

(declare-fun dynLambda!19656 (Int TokenValue!7856) BalanceConc!27268)

(declare-fun dynLambda!19657 (Int BalanceConc!27268) TokenValue!7856)

(assert (=> d!1233122 (= (list!16563 (dynLambda!19656 (toChars!10169 (transformation!7626 r!4142)) (dynLambda!19657 (toValue!10310 (transformation!7626 r!4142)) lt!1487999))) (list!16563 lt!1487999))))

(declare-fun lt!1488100 () Unit!64943)

(declare-fun ForallOf!1032 (Int BalanceConc!27268) Unit!64943)

(assert (=> d!1233122 (= lt!1488100 (ForallOf!1032 lambda!129301 lt!1487999))))

(assert (=> d!1233122 (= (lemmaSemiInverse!2392 (transformation!7626 r!4142) lt!1487999) lt!1488100)))

(declare-fun b_lambda!122689 () Bool)

(assert (=> (not b_lambda!122689) (not d!1233122)))

(declare-fun t!344808 () Bool)

(declare-fun tb!250039 () Bool)

(assert (=> (and b!4177772 (= (toChars!10169 (transformation!7626 r!4142)) (toChars!10169 (transformation!7626 r!4142))) t!344808) tb!250039))

(declare-fun e!2593874 () Bool)

(declare-fun tp!1276849 () Bool)

(declare-fun b!4178053 () Bool)

(declare-fun inv!60383 (Conc!13837) Bool)

(assert (=> b!4178053 (= e!2593874 (and (inv!60383 (c!713538 (dynLambda!19656 (toChars!10169 (transformation!7626 r!4142)) (dynLambda!19657 (toValue!10310 (transformation!7626 r!4142)) lt!1487999)))) tp!1276849))))

(declare-fun result!304656 () Bool)

(declare-fun inv!60384 (BalanceConc!27268) Bool)

(assert (=> tb!250039 (= result!304656 (and (inv!60384 (dynLambda!19656 (toChars!10169 (transformation!7626 r!4142)) (dynLambda!19657 (toValue!10310 (transformation!7626 r!4142)) lt!1487999))) e!2593874))))

(assert (= tb!250039 b!4178053))

(declare-fun m!4767715 () Bool)

(assert (=> b!4178053 m!4767715))

(declare-fun m!4767717 () Bool)

(assert (=> tb!250039 m!4767717))

(assert (=> d!1233122 t!344808))

(declare-fun b_and!326641 () Bool)

(assert (= b_and!326607 (and (=> t!344808 result!304656) b_and!326641)))

(declare-fun tb!250047 () Bool)

(declare-fun t!344816 () Bool)

(assert (=> (and b!4177776 (= (toChars!10169 (transformation!7626 (h!51281 rules!3843))) (toChars!10169 (transformation!7626 r!4142))) t!344816) tb!250047))

(declare-fun result!304666 () Bool)

(assert (= result!304666 result!304656))

(assert (=> d!1233122 t!344816))

(declare-fun b_and!326643 () Bool)

(assert (= b_and!326611 (and (=> t!344816 result!304666) b_and!326643)))

(declare-fun t!344818 () Bool)

(declare-fun tb!250049 () Bool)

(assert (=> (and b!4177775 (= (toChars!10169 (transformation!7626 rBis!167)) (toChars!10169 (transformation!7626 r!4142))) t!344818) tb!250049))

(declare-fun result!304668 () Bool)

(assert (= result!304668 result!304656))

(assert (=> d!1233122 t!344818))

(declare-fun b_and!326645 () Bool)

(assert (= b_and!326615 (and (=> t!344818 result!304668) b_and!326645)))

(declare-fun b_lambda!122693 () Bool)

(assert (=> (not b_lambda!122693) (not d!1233122)))

(declare-fun t!344820 () Bool)

(declare-fun tb!250051 () Bool)

(assert (=> (and b!4177772 (= (toValue!10310 (transformation!7626 r!4142)) (toValue!10310 (transformation!7626 r!4142))) t!344820) tb!250051))

(declare-fun result!304670 () Bool)

(declare-fun inv!21 (TokenValue!7856) Bool)

(assert (=> tb!250051 (= result!304670 (inv!21 (dynLambda!19657 (toValue!10310 (transformation!7626 r!4142)) lt!1487999)))))

(declare-fun m!4767719 () Bool)

(assert (=> tb!250051 m!4767719))

(assert (=> d!1233122 t!344820))

(declare-fun b_and!326647 () Bool)

(assert (= b_and!326605 (and (=> t!344820 result!304670) b_and!326647)))

(declare-fun tb!250053 () Bool)

(declare-fun t!344822 () Bool)

(assert (=> (and b!4177776 (= (toValue!10310 (transformation!7626 (h!51281 rules!3843))) (toValue!10310 (transformation!7626 r!4142))) t!344822) tb!250053))

(declare-fun result!304674 () Bool)

(assert (= result!304674 result!304670))

(assert (=> d!1233122 t!344822))

(declare-fun b_and!326649 () Bool)

(assert (= b_and!326609 (and (=> t!344822 result!304674) b_and!326649)))

(declare-fun tb!250055 () Bool)

(declare-fun t!344824 () Bool)

(assert (=> (and b!4177775 (= (toValue!10310 (transformation!7626 rBis!167)) (toValue!10310 (transformation!7626 r!4142))) t!344824) tb!250055))

(declare-fun result!304676 () Bool)

(assert (= result!304676 result!304670))

(assert (=> d!1233122 t!344824))

(declare-fun b_and!326651 () Bool)

(assert (= b_and!326613 (and (=> t!344824 result!304676) b_and!326651)))

(declare-fun m!4767721 () Bool)

(assert (=> d!1233122 m!4767721))

(declare-fun m!4767723 () Bool)

(assert (=> d!1233122 m!4767723))

(assert (=> d!1233122 m!4767723))

(declare-fun m!4767725 () Bool)

(assert (=> d!1233122 m!4767725))

(assert (=> d!1233122 m!4767721))

(declare-fun m!4767727 () Bool)

(assert (=> d!1233122 m!4767727))

(declare-fun m!4767729 () Bool)

(assert (=> d!1233122 m!4767729))

(assert (=> b!4177790 d!1233122))

(declare-fun d!1233166 () Bool)

(assert (=> d!1233166 (= (apply!10591 (transformation!7626 r!4142) lt!1487999) (dynLambda!19657 (toValue!10310 (transformation!7626 r!4142)) lt!1487999))))

(declare-fun b_lambda!122695 () Bool)

(assert (=> (not b_lambda!122695) (not d!1233166)))

(assert (=> d!1233166 t!344820))

(declare-fun b_and!326653 () Bool)

(assert (= b_and!326647 (and (=> t!344820 result!304670) b_and!326653)))

(assert (=> d!1233166 t!344822))

(declare-fun b_and!326655 () Bool)

(assert (= b_and!326649 (and (=> t!344822 result!304674) b_and!326655)))

(assert (=> d!1233166 t!344824))

(declare-fun b_and!326657 () Bool)

(assert (= b_and!326651 (and (=> t!344824 result!304676) b_and!326657)))

(assert (=> d!1233166 m!4767721))

(assert (=> b!4177790 d!1233166))

(declare-fun d!1233168 () Bool)

(declare-fun lt!1488107 () Int)

(assert (=> d!1233168 (>= lt!1488107 0)))

(declare-fun e!2593894 () Int)

(assert (=> d!1233168 (= lt!1488107 e!2593894)))

(declare-fun c!713579 () Bool)

(assert (=> d!1233168 (= c!713579 ((_ is Nil!45860) p!2959))))

(assert (=> d!1233168 (= (size!33676 p!2959) lt!1488107)))

(declare-fun b!4178078 () Bool)

(assert (=> b!4178078 (= e!2593894 0)))

(declare-fun b!4178079 () Bool)

(assert (=> b!4178079 (= e!2593894 (+ 1 (size!33676 (t!344793 p!2959))))))

(assert (= (and d!1233168 c!713579) b!4178078))

(assert (= (and d!1233168 (not c!713579)) b!4178079))

(declare-fun m!4767731 () Bool)

(assert (=> b!4178079 m!4767731))

(assert (=> b!4177790 d!1233168))

(declare-fun d!1233170 () Bool)

(declare-fun res!1713078 () Bool)

(declare-fun e!2593905 () Bool)

(assert (=> d!1233170 (=> (not res!1713078) (not e!2593905))))

(assert (=> d!1233170 (= res!1713078 (validRegex!5648 (regex!7626 rBis!167)))))

(assert (=> d!1233170 (= (ruleValid!3344 thiss!25986 rBis!167) e!2593905)))

(declare-fun b!4178095 () Bool)

(declare-fun res!1713079 () Bool)

(assert (=> b!4178095 (=> (not res!1713079) (not e!2593905))))

(declare-fun nullable!4389 (Regex!12531) Bool)

(assert (=> b!4178095 (= res!1713079 (not (nullable!4389 (regex!7626 rBis!167))))))

(declare-fun b!4178096 () Bool)

(assert (=> b!4178096 (= e!2593905 (not (= (tag!8490 rBis!167) (String!53147 ""))))))

(assert (= (and d!1233170 res!1713078) b!4178095))

(assert (= (and b!4178095 res!1713079) b!4178096))

(declare-fun m!4767739 () Bool)

(assert (=> d!1233170 m!4767739))

(declare-fun m!4767741 () Bool)

(assert (=> b!4178095 m!4767741))

(assert (=> b!4177789 d!1233170))

(declare-fun d!1233176 () Bool)

(declare-fun lt!1488108 () Bool)

(assert (=> d!1233176 (= lt!1488108 (select (content!7118 rules!3843) rBis!167))))

(declare-fun e!2593906 () Bool)

(assert (=> d!1233176 (= lt!1488108 e!2593906)))

(declare-fun res!1713080 () Bool)

(assert (=> d!1233176 (=> (not res!1713080) (not e!2593906))))

(assert (=> d!1233176 (= res!1713080 ((_ is Cons!45861) rules!3843))))

(assert (=> d!1233176 (= (contains!9429 rules!3843 rBis!167) lt!1488108)))

(declare-fun b!4178097 () Bool)

(declare-fun e!2593907 () Bool)

(assert (=> b!4178097 (= e!2593906 e!2593907)))

(declare-fun res!1713081 () Bool)

(assert (=> b!4178097 (=> res!1713081 e!2593907)))

(assert (=> b!4178097 (= res!1713081 (= (h!51281 rules!3843) rBis!167))))

(declare-fun b!4178098 () Bool)

(assert (=> b!4178098 (= e!2593907 (contains!9429 (t!344794 rules!3843) rBis!167))))

(assert (= (and d!1233176 res!1713080) b!4178097))

(assert (= (and b!4178097 (not res!1713081)) b!4178098))

(assert (=> d!1233176 m!4767473))

(declare-fun m!4767743 () Bool)

(assert (=> d!1233176 m!4767743))

(declare-fun m!4767745 () Bool)

(assert (=> b!4178098 m!4767745))

(assert (=> b!4177778 d!1233176))

(declare-fun b!4178126 () Bool)

(declare-fun e!2593932 () Bool)

(declare-fun call!291486 () Bool)

(assert (=> b!4178126 (= e!2593932 call!291486)))

(declare-fun b!4178127 () Bool)

(declare-fun e!2593926 () Bool)

(assert (=> b!4178127 (= e!2593926 call!291486)))

(declare-fun bm!291481 () Bool)

(declare-fun call!291487 () Bool)

(declare-fun call!291488 () Bool)

(assert (=> bm!291481 (= call!291487 call!291488)))

(declare-fun b!4178128 () Bool)

(declare-fun e!2593929 () Bool)

(declare-fun e!2593930 () Bool)

(assert (=> b!4178128 (= e!2593929 e!2593930)))

(declare-fun c!713587 () Bool)

(assert (=> b!4178128 (= c!713587 ((_ is Union!12531) (regex!7626 r!4142)))))

(declare-fun b!4178129 () Bool)

(declare-fun res!1713103 () Bool)

(declare-fun e!2593931 () Bool)

(assert (=> b!4178129 (=> res!1713103 e!2593931)))

(assert (=> b!4178129 (= res!1713103 (not ((_ is Concat!20388) (regex!7626 r!4142))))))

(assert (=> b!4178129 (= e!2593930 e!2593931)))

(declare-fun b!4178130 () Bool)

(declare-fun e!2593928 () Bool)

(assert (=> b!4178130 (= e!2593928 call!291488)))

(declare-fun b!4178131 () Bool)

(assert (=> b!4178131 (= e!2593931 e!2593926)))

(declare-fun res!1713102 () Bool)

(assert (=> b!4178131 (=> (not res!1713102) (not e!2593926))))

(assert (=> b!4178131 (= res!1713102 call!291487)))

(declare-fun b!4178132 () Bool)

(declare-fun res!1713099 () Bool)

(assert (=> b!4178132 (=> (not res!1713099) (not e!2593932))))

(assert (=> b!4178132 (= res!1713099 call!291487)))

(assert (=> b!4178132 (= e!2593930 e!2593932)))

(declare-fun bm!291482 () Bool)

(assert (=> bm!291482 (= call!291486 (validRegex!5648 (ite c!713587 (regTwo!25575 (regex!7626 r!4142)) (regTwo!25574 (regex!7626 r!4142)))))))

(declare-fun b!4178133 () Bool)

(assert (=> b!4178133 (= e!2593929 e!2593928)))

(declare-fun res!1713101 () Bool)

(assert (=> b!4178133 (= res!1713101 (not (nullable!4389 (reg!12860 (regex!7626 r!4142)))))))

(assert (=> b!4178133 (=> (not res!1713101) (not e!2593928))))

(declare-fun d!1233180 () Bool)

(declare-fun res!1713100 () Bool)

(declare-fun e!2593927 () Bool)

(assert (=> d!1233180 (=> res!1713100 e!2593927)))

(assert (=> d!1233180 (= res!1713100 ((_ is ElementMatch!12531) (regex!7626 r!4142)))))

(assert (=> d!1233180 (= (validRegex!5648 (regex!7626 r!4142)) e!2593927)))

(declare-fun c!713588 () Bool)

(declare-fun bm!291483 () Bool)

(assert (=> bm!291483 (= call!291488 (validRegex!5648 (ite c!713588 (reg!12860 (regex!7626 r!4142)) (ite c!713587 (regOne!25575 (regex!7626 r!4142)) (regOne!25574 (regex!7626 r!4142))))))))

(declare-fun b!4178134 () Bool)

(assert (=> b!4178134 (= e!2593927 e!2593929)))

(assert (=> b!4178134 (= c!713588 ((_ is Star!12531) (regex!7626 r!4142)))))

(assert (= (and d!1233180 (not res!1713100)) b!4178134))

(assert (= (and b!4178134 c!713588) b!4178133))

(assert (= (and b!4178134 (not c!713588)) b!4178128))

(assert (= (and b!4178133 res!1713101) b!4178130))

(assert (= (and b!4178128 c!713587) b!4178132))

(assert (= (and b!4178128 (not c!713587)) b!4178129))

(assert (= (and b!4178132 res!1713099) b!4178126))

(assert (= (and b!4178129 (not res!1713103)) b!4178131))

(assert (= (and b!4178131 res!1713102) b!4178127))

(assert (= (or b!4178126 b!4178127) bm!291482))

(assert (= (or b!4178132 b!4178131) bm!291481))

(assert (= (or b!4178130 bm!291481) bm!291483))

(declare-fun m!4767789 () Bool)

(assert (=> bm!291482 m!4767789))

(declare-fun m!4767791 () Bool)

(assert (=> b!4178133 m!4767791))

(declare-fun m!4767793 () Bool)

(assert (=> bm!291483 m!4767793))

(assert (=> b!4177793 d!1233180))

(declare-fun d!1233186 () Bool)

(declare-fun res!1713106 () Bool)

(declare-fun e!2593938 () Bool)

(assert (=> d!1233186 (=> (not res!1713106) (not e!2593938))))

(declare-fun rulesValid!2966 (LexerInterface!7219 List!45985) Bool)

(assert (=> d!1233186 (= res!1713106 (rulesValid!2966 thiss!25986 rules!3843))))

(assert (=> d!1233186 (= (rulesInvariant!6432 thiss!25986 rules!3843) e!2593938)))

(declare-fun b!4178149 () Bool)

(declare-datatypes ((List!45987 0))(
  ( (Nil!45863) (Cons!45863 (h!51283 String!53146) (t!344844 List!45987)) )
))
(declare-fun noDuplicateTag!3127 (LexerInterface!7219 List!45985 List!45987) Bool)

(assert (=> b!4178149 (= e!2593938 (noDuplicateTag!3127 thiss!25986 rules!3843 Nil!45863))))

(assert (= (and d!1233186 res!1713106) b!4178149))

(declare-fun m!4767799 () Bool)

(assert (=> d!1233186 m!4767799))

(declare-fun m!4767801 () Bool)

(assert (=> b!4178149 m!4767801))

(assert (=> b!4177782 d!1233186))

(declare-fun b!4178208 () Bool)

(declare-fun res!1713128 () Bool)

(declare-fun e!2593974 () Bool)

(assert (=> b!4178208 (=> res!1713128 e!2593974)))

(assert (=> b!4178208 (= res!1713128 (not (isEmpty!27135 (tail!6713 p!2959))))))

(declare-fun b!4178209 () Bool)

(declare-fun e!2593977 () Bool)

(declare-fun lt!1488123 () Bool)

(assert (=> b!4178209 (= e!2593977 (not lt!1488123))))

(declare-fun bm!291486 () Bool)

(declare-fun call!291491 () Bool)

(assert (=> bm!291486 (= call!291491 (isEmpty!27135 p!2959))))

(declare-fun b!4178210 () Bool)

(declare-fun res!1713124 () Bool)

(declare-fun e!2593978 () Bool)

(assert (=> b!4178210 (=> res!1713124 e!2593978)))

(assert (=> b!4178210 (= res!1713124 (not ((_ is ElementMatch!12531) (regex!7626 r!4142))))))

(assert (=> b!4178210 (= e!2593977 e!2593978)))

(declare-fun b!4178212 () Bool)

(declare-fun e!2593973 () Bool)

(assert (=> b!4178212 (= e!2593973 (nullable!4389 (regex!7626 r!4142)))))

(declare-fun b!4178213 () Bool)

(declare-fun e!2593975 () Bool)

(assert (=> b!4178213 (= e!2593975 e!2593974)))

(declare-fun res!1713126 () Bool)

(assert (=> b!4178213 (=> res!1713126 e!2593974)))

(assert (=> b!4178213 (= res!1713126 call!291491)))

(declare-fun b!4178214 () Bool)

(declare-fun e!2593976 () Bool)

(assert (=> b!4178214 (= e!2593976 (= (head!8866 p!2959) (c!713539 (regex!7626 r!4142))))))

(declare-fun b!4178215 () Bool)

(assert (=> b!4178215 (= e!2593974 (not (= (head!8866 p!2959) (c!713539 (regex!7626 r!4142)))))))

(declare-fun b!4178216 () Bool)

(declare-fun res!1713123 () Bool)

(assert (=> b!4178216 (=> (not res!1713123) (not e!2593976))))

(assert (=> b!4178216 (= res!1713123 (not call!291491))))

(declare-fun b!4178217 () Bool)

(declare-fun res!1713130 () Bool)

(assert (=> b!4178217 (=> (not res!1713130) (not e!2593976))))

(assert (=> b!4178217 (= res!1713130 (isEmpty!27135 (tail!6713 p!2959)))))

(declare-fun b!4178218 () Bool)

(declare-fun e!2593979 () Bool)

(assert (=> b!4178218 (= e!2593979 e!2593977)))

(declare-fun c!713596 () Bool)

(assert (=> b!4178218 (= c!713596 ((_ is EmptyLang!12531) (regex!7626 r!4142)))))

(declare-fun b!4178219 () Bool)

(declare-fun derivativeStep!3779 (Regex!12531 C!25252) Regex!12531)

(assert (=> b!4178219 (= e!2593973 (matchR!6270 (derivativeStep!3779 (regex!7626 r!4142) (head!8866 p!2959)) (tail!6713 p!2959)))))

(declare-fun b!4178211 () Bool)

(declare-fun res!1713129 () Bool)

(assert (=> b!4178211 (=> res!1713129 e!2593978)))

(assert (=> b!4178211 (= res!1713129 e!2593976)))

(declare-fun res!1713127 () Bool)

(assert (=> b!4178211 (=> (not res!1713127) (not e!2593976))))

(assert (=> b!4178211 (= res!1713127 lt!1488123)))

(declare-fun d!1233190 () Bool)

(assert (=> d!1233190 e!2593979))

(declare-fun c!713597 () Bool)

(assert (=> d!1233190 (= c!713597 ((_ is EmptyExpr!12531) (regex!7626 r!4142)))))

(assert (=> d!1233190 (= lt!1488123 e!2593973)))

(declare-fun c!713598 () Bool)

(assert (=> d!1233190 (= c!713598 (isEmpty!27135 p!2959))))

(assert (=> d!1233190 (validRegex!5648 (regex!7626 r!4142))))

(assert (=> d!1233190 (= (matchR!6270 (regex!7626 r!4142) p!2959) lt!1488123)))

(declare-fun b!4178220 () Bool)

(assert (=> b!4178220 (= e!2593979 (= lt!1488123 call!291491))))

(declare-fun b!4178221 () Bool)

(assert (=> b!4178221 (= e!2593978 e!2593975)))

(declare-fun res!1713125 () Bool)

(assert (=> b!4178221 (=> (not res!1713125) (not e!2593975))))

(assert (=> b!4178221 (= res!1713125 (not lt!1488123))))

(assert (= (and d!1233190 c!713598) b!4178212))

(assert (= (and d!1233190 (not c!713598)) b!4178219))

(assert (= (and d!1233190 c!713597) b!4178220))

(assert (= (and d!1233190 (not c!713597)) b!4178218))

(assert (= (and b!4178218 c!713596) b!4178209))

(assert (= (and b!4178218 (not c!713596)) b!4178210))

(assert (= (and b!4178210 (not res!1713124)) b!4178211))

(assert (= (and b!4178211 res!1713127) b!4178216))

(assert (= (and b!4178216 res!1713123) b!4178217))

(assert (= (and b!4178217 res!1713130) b!4178214))

(assert (= (and b!4178211 (not res!1713129)) b!4178221))

(assert (= (and b!4178221 res!1713125) b!4178213))

(assert (= (and b!4178213 (not res!1713126)) b!4178208))

(assert (= (and b!4178208 (not res!1713128)) b!4178215))

(assert (= (or b!4178220 b!4178213 b!4178216) bm!291486))

(declare-fun m!4767807 () Bool)

(assert (=> b!4178212 m!4767807))

(assert (=> b!4178214 m!4767441))

(assert (=> b!4178219 m!4767441))

(assert (=> b!4178219 m!4767441))

(declare-fun m!4767809 () Bool)

(assert (=> b!4178219 m!4767809))

(assert (=> b!4178219 m!4767435))

(assert (=> b!4178219 m!4767809))

(assert (=> b!4178219 m!4767435))

(declare-fun m!4767811 () Bool)

(assert (=> b!4178219 m!4767811))

(assert (=> b!4178208 m!4767435))

(assert (=> b!4178208 m!4767435))

(declare-fun m!4767813 () Bool)

(assert (=> b!4178208 m!4767813))

(declare-fun m!4767815 () Bool)

(assert (=> d!1233190 m!4767815))

(assert (=> d!1233190 m!4767399))

(assert (=> bm!291486 m!4767815))

(assert (=> b!4178215 m!4767441))

(assert (=> b!4178217 m!4767435))

(assert (=> b!4178217 m!4767435))

(assert (=> b!4178217 m!4767813))

(assert (=> b!4177781 d!1233190))

(declare-fun d!1233192 () Bool)

(assert (=> d!1233192 (= (inv!60378 (tag!8490 (h!51281 rules!3843))) (= (mod (str.len (value!237872 (tag!8490 (h!51281 rules!3843)))) 2) 0))))

(assert (=> b!4177792 d!1233192))

(declare-fun d!1233194 () Bool)

(declare-fun res!1713131 () Bool)

(declare-fun e!2593980 () Bool)

(assert (=> d!1233194 (=> (not res!1713131) (not e!2593980))))

(assert (=> d!1233194 (= res!1713131 (semiInverseModEq!3298 (toChars!10169 (transformation!7626 (h!51281 rules!3843))) (toValue!10310 (transformation!7626 (h!51281 rules!3843)))))))

(assert (=> d!1233194 (= (inv!60380 (transformation!7626 (h!51281 rules!3843))) e!2593980)))

(declare-fun b!4178222 () Bool)

(assert (=> b!4178222 (= e!2593980 (equivClasses!3197 (toChars!10169 (transformation!7626 (h!51281 rules!3843))) (toValue!10310 (transformation!7626 (h!51281 rules!3843)))))))

(assert (= (and d!1233194 res!1713131) b!4178222))

(declare-fun m!4767817 () Bool)

(assert (=> d!1233194 m!4767817))

(declare-fun m!4767819 () Bool)

(assert (=> b!4178222 m!4767819))

(assert (=> b!4177792 d!1233194))

(declare-fun d!1233196 () Bool)

(assert (=> d!1233196 (isPrefix!4483 lt!1487991 (++!11704 lt!1487991 (_2!24975 lt!1487993)))))

(declare-fun lt!1488126 () Unit!64943)

(declare-fun choose!25568 (List!45984 List!45984) Unit!64943)

(assert (=> d!1233196 (= lt!1488126 (choose!25568 lt!1487991 (_2!24975 lt!1487993)))))

(assert (=> d!1233196 (= (lemmaConcatTwoListThenFirstIsPrefix!2990 lt!1487991 (_2!24975 lt!1487993)) lt!1488126)))

(declare-fun bs!596190 () Bool)

(assert (= bs!596190 d!1233196))

(assert (=> bs!596190 m!4767371))

(assert (=> bs!596190 m!4767371))

(assert (=> bs!596190 m!4767373))

(declare-fun m!4767821 () Bool)

(assert (=> bs!596190 m!4767821))

(assert (=> b!4177791 d!1233196))

(declare-fun d!1233198 () Bool)

(declare-fun lt!1488129 () BalanceConc!27268)

(assert (=> d!1233198 (= (list!16563 lt!1488129) (originalCharacters!8014 (_1!24975 lt!1487993)))))

(assert (=> d!1233198 (= lt!1488129 (dynLambda!19656 (toChars!10169 (transformation!7626 (rule!10682 (_1!24975 lt!1487993)))) (value!237873 (_1!24975 lt!1487993))))))

(assert (=> d!1233198 (= (charsOf!5067 (_1!24975 lt!1487993)) lt!1488129)))

(declare-fun b_lambda!122703 () Bool)

(assert (=> (not b_lambda!122703) (not d!1233198)))

(declare-fun tb!250063 () Bool)

(declare-fun t!344833 () Bool)

(assert (=> (and b!4177772 (= (toChars!10169 (transformation!7626 r!4142)) (toChars!10169 (transformation!7626 (rule!10682 (_1!24975 lt!1487993))))) t!344833) tb!250063))

(declare-fun b!4178223 () Bool)

(declare-fun e!2593981 () Bool)

(declare-fun tp!1276892 () Bool)

(assert (=> b!4178223 (= e!2593981 (and (inv!60383 (c!713538 (dynLambda!19656 (toChars!10169 (transformation!7626 (rule!10682 (_1!24975 lt!1487993)))) (value!237873 (_1!24975 lt!1487993))))) tp!1276892))))

(declare-fun result!304690 () Bool)

(assert (=> tb!250063 (= result!304690 (and (inv!60384 (dynLambda!19656 (toChars!10169 (transformation!7626 (rule!10682 (_1!24975 lt!1487993)))) (value!237873 (_1!24975 lt!1487993)))) e!2593981))))

(assert (= tb!250063 b!4178223))

(declare-fun m!4767823 () Bool)

(assert (=> b!4178223 m!4767823))

(declare-fun m!4767825 () Bool)

(assert (=> tb!250063 m!4767825))

(assert (=> d!1233198 t!344833))

(declare-fun b_and!326663 () Bool)

(assert (= b_and!326641 (and (=> t!344833 result!304690) b_and!326663)))

(declare-fun t!344835 () Bool)

(declare-fun tb!250065 () Bool)

(assert (=> (and b!4177776 (= (toChars!10169 (transformation!7626 (h!51281 rules!3843))) (toChars!10169 (transformation!7626 (rule!10682 (_1!24975 lt!1487993))))) t!344835) tb!250065))

(declare-fun result!304692 () Bool)

(assert (= result!304692 result!304690))

(assert (=> d!1233198 t!344835))

(declare-fun b_and!326665 () Bool)

(assert (= b_and!326643 (and (=> t!344835 result!304692) b_and!326665)))

(declare-fun tb!250067 () Bool)

(declare-fun t!344837 () Bool)

(assert (=> (and b!4177775 (= (toChars!10169 (transformation!7626 rBis!167)) (toChars!10169 (transformation!7626 (rule!10682 (_1!24975 lt!1487993))))) t!344837) tb!250067))

(declare-fun result!304694 () Bool)

(assert (= result!304694 result!304690))

(assert (=> d!1233198 t!344837))

(declare-fun b_and!326667 () Bool)

(assert (= b_and!326645 (and (=> t!344837 result!304694) b_and!326667)))

(declare-fun m!4767827 () Bool)

(assert (=> d!1233198 m!4767827))

(declare-fun m!4767829 () Bool)

(assert (=> d!1233198 m!4767829))

(assert (=> b!4177791 d!1233198))

(declare-fun d!1233200 () Bool)

(declare-fun list!16565 (Conc!13837) List!45984)

(assert (=> d!1233200 (= (list!16563 lt!1487997) (list!16565 (c!713538 lt!1487997)))))

(declare-fun bs!596191 () Bool)

(assert (= bs!596191 d!1233200))

(declare-fun m!4767831 () Bool)

(assert (=> bs!596191 m!4767831))

(assert (=> b!4177791 d!1233200))

(declare-fun d!1233202 () Bool)

(declare-fun e!2593984 () Bool)

(assert (=> d!1233202 e!2593984))

(declare-fun res!1713135 () Bool)

(assert (=> d!1233202 (=> res!1713135 e!2593984)))

(declare-fun lt!1488130 () Bool)

(assert (=> d!1233202 (= res!1713135 (not lt!1488130))))

(declare-fun e!2593983 () Bool)

(assert (=> d!1233202 (= lt!1488130 e!2593983)))

(declare-fun res!1713134 () Bool)

(assert (=> d!1233202 (=> res!1713134 e!2593983)))

(assert (=> d!1233202 (= res!1713134 ((_ is Nil!45860) lt!1487991))))

(assert (=> d!1233202 (= (isPrefix!4483 lt!1487991 (++!11704 lt!1487991 (_2!24975 lt!1487993))) lt!1488130)))

(declare-fun b!4178227 () Bool)

(assert (=> b!4178227 (= e!2593984 (>= (size!33676 (++!11704 lt!1487991 (_2!24975 lt!1487993))) (size!33676 lt!1487991)))))

(declare-fun b!4178224 () Bool)

(declare-fun e!2593982 () Bool)

(assert (=> b!4178224 (= e!2593983 e!2593982)))

(declare-fun res!1713132 () Bool)

(assert (=> b!4178224 (=> (not res!1713132) (not e!2593982))))

(assert (=> b!4178224 (= res!1713132 (not ((_ is Nil!45860) (++!11704 lt!1487991 (_2!24975 lt!1487993)))))))

(declare-fun b!4178226 () Bool)

(assert (=> b!4178226 (= e!2593982 (isPrefix!4483 (tail!6713 lt!1487991) (tail!6713 (++!11704 lt!1487991 (_2!24975 lt!1487993)))))))

(declare-fun b!4178225 () Bool)

(declare-fun res!1713133 () Bool)

(assert (=> b!4178225 (=> (not res!1713133) (not e!2593982))))

(assert (=> b!4178225 (= res!1713133 (= (head!8866 lt!1487991) (head!8866 (++!11704 lt!1487991 (_2!24975 lt!1487993)))))))

(assert (= (and d!1233202 (not res!1713134)) b!4178224))

(assert (= (and b!4178224 res!1713132) b!4178225))

(assert (= (and b!4178225 res!1713133) b!4178226))

(assert (= (and d!1233202 (not res!1713135)) b!4178227))

(assert (=> b!4178227 m!4767371))

(declare-fun m!4767833 () Bool)

(assert (=> b!4178227 m!4767833))

(assert (=> b!4178227 m!4767455))

(assert (=> b!4178226 m!4767457))

(assert (=> b!4178226 m!4767371))

(declare-fun m!4767835 () Bool)

(assert (=> b!4178226 m!4767835))

(assert (=> b!4178226 m!4767457))

(assert (=> b!4178226 m!4767835))

(declare-fun m!4767837 () Bool)

(assert (=> b!4178226 m!4767837))

(assert (=> b!4178225 m!4767461))

(assert (=> b!4178225 m!4767371))

(declare-fun m!4767839 () Bool)

(assert (=> b!4178225 m!4767839))

(assert (=> b!4177791 d!1233202))

(declare-fun b!4178237 () Bool)

(declare-fun e!2593990 () List!45984)

(assert (=> b!4178237 (= e!2593990 (Cons!45860 (h!51280 lt!1487991) (++!11704 (t!344793 lt!1487991) (_2!24975 lt!1487993))))))

(declare-fun b!4178238 () Bool)

(declare-fun res!1713141 () Bool)

(declare-fun e!2593989 () Bool)

(assert (=> b!4178238 (=> (not res!1713141) (not e!2593989))))

(declare-fun lt!1488133 () List!45984)

(assert (=> b!4178238 (= res!1713141 (= (size!33676 lt!1488133) (+ (size!33676 lt!1487991) (size!33676 (_2!24975 lt!1487993)))))))

(declare-fun b!4178239 () Bool)

(assert (=> b!4178239 (= e!2593989 (or (not (= (_2!24975 lt!1487993) Nil!45860)) (= lt!1488133 lt!1487991)))))

(declare-fun b!4178236 () Bool)

(assert (=> b!4178236 (= e!2593990 (_2!24975 lt!1487993))))

(declare-fun d!1233204 () Bool)

(assert (=> d!1233204 e!2593989))

(declare-fun res!1713140 () Bool)

(assert (=> d!1233204 (=> (not res!1713140) (not e!2593989))))

(declare-fun content!7120 (List!45984) (InoxSet C!25252))

(assert (=> d!1233204 (= res!1713140 (= (content!7120 lt!1488133) ((_ map or) (content!7120 lt!1487991) (content!7120 (_2!24975 lt!1487993)))))))

(assert (=> d!1233204 (= lt!1488133 e!2593990)))

(declare-fun c!713601 () Bool)

(assert (=> d!1233204 (= c!713601 ((_ is Nil!45860) lt!1487991))))

(assert (=> d!1233204 (= (++!11704 lt!1487991 (_2!24975 lt!1487993)) lt!1488133)))

(assert (= (and d!1233204 c!713601) b!4178236))

(assert (= (and d!1233204 (not c!713601)) b!4178237))

(assert (= (and d!1233204 res!1713140) b!4178238))

(assert (= (and b!4178238 res!1713141) b!4178239))

(declare-fun m!4767841 () Bool)

(assert (=> b!4178237 m!4767841))

(declare-fun m!4767843 () Bool)

(assert (=> b!4178238 m!4767843))

(assert (=> b!4178238 m!4767455))

(declare-fun m!4767845 () Bool)

(assert (=> b!4178238 m!4767845))

(declare-fun m!4767847 () Bool)

(assert (=> d!1233204 m!4767847))

(declare-fun m!4767849 () Bool)

(assert (=> d!1233204 m!4767849))

(declare-fun m!4767851 () Bool)

(assert (=> d!1233204 m!4767851))

(assert (=> b!4177791 d!1233204))

(declare-fun d!1233206 () Bool)

(assert (=> d!1233206 (= (get!14904 lt!1487995) (v!40623 lt!1487995))))

(assert (=> b!4177791 d!1233206))

(declare-fun d!1233208 () Bool)

(declare-fun e!2593993 () Bool)

(assert (=> d!1233208 e!2593993))

(declare-fun res!1713145 () Bool)

(assert (=> d!1233208 (=> res!1713145 e!2593993)))

(declare-fun lt!1488134 () Bool)

(assert (=> d!1233208 (= res!1713145 (not lt!1488134))))

(declare-fun e!2593992 () Bool)

(assert (=> d!1233208 (= lt!1488134 e!2593992)))

(declare-fun res!1713144 () Bool)

(assert (=> d!1233208 (=> res!1713144 e!2593992)))

(assert (=> d!1233208 (= res!1713144 ((_ is Nil!45860) pBis!107))))

(assert (=> d!1233208 (= (isPrefix!4483 pBis!107 input!3342) lt!1488134)))

(declare-fun b!4178243 () Bool)

(assert (=> b!4178243 (= e!2593993 (>= (size!33676 input!3342) (size!33676 pBis!107)))))

(declare-fun b!4178240 () Bool)

(declare-fun e!2593991 () Bool)

(assert (=> b!4178240 (= e!2593992 e!2593991)))

(declare-fun res!1713142 () Bool)

(assert (=> b!4178240 (=> (not res!1713142) (not e!2593991))))

(assert (=> b!4178240 (= res!1713142 (not ((_ is Nil!45860) input!3342)))))

(declare-fun b!4178242 () Bool)

(assert (=> b!4178242 (= e!2593991 (isPrefix!4483 (tail!6713 pBis!107) (tail!6713 input!3342)))))

(declare-fun b!4178241 () Bool)

(declare-fun res!1713143 () Bool)

(assert (=> b!4178241 (=> (not res!1713143) (not e!2593991))))

(assert (=> b!4178241 (= res!1713143 (= (head!8866 pBis!107) (head!8866 input!3342)))))

(assert (= (and d!1233208 (not res!1713144)) b!4178240))

(assert (= (and b!4178240 res!1713142) b!4178241))

(assert (= (and b!4178241 res!1713143) b!4178242))

(assert (= (and d!1233208 (not res!1713145)) b!4178243))

(assert (=> b!4178243 m!4767389))

(assert (=> b!4178243 m!4767397))

(declare-fun m!4767853 () Bool)

(assert (=> b!4178242 m!4767853))

(assert (=> b!4178242 m!4767437))

(assert (=> b!4178242 m!4767853))

(assert (=> b!4178242 m!4767437))

(declare-fun m!4767855 () Bool)

(assert (=> b!4178242 m!4767855))

(declare-fun m!4767857 () Bool)

(assert (=> b!4178241 m!4767857))

(assert (=> b!4178241 m!4767443))

(assert (=> b!4177770 d!1233208))

(declare-fun d!1233210 () Bool)

(assert (=> d!1233210 (= (isEmpty!27132 rules!3843) ((_ is Nil!45861) rules!3843))))

(assert (=> b!4177785 d!1233210))

(declare-fun d!1233212 () Bool)

(declare-fun lt!1488135 () Int)

(assert (=> d!1233212 (>= lt!1488135 0)))

(declare-fun e!2593994 () Int)

(assert (=> d!1233212 (= lt!1488135 e!2593994)))

(declare-fun c!713602 () Bool)

(assert (=> d!1233212 (= c!713602 ((_ is Nil!45860) pBis!107))))

(assert (=> d!1233212 (= (size!33676 pBis!107) lt!1488135)))

(declare-fun b!4178244 () Bool)

(assert (=> b!4178244 (= e!2593994 0)))

(declare-fun b!4178245 () Bool)

(assert (=> b!4178245 (= e!2593994 (+ 1 (size!33676 (t!344793 pBis!107))))))

(assert (= (and d!1233212 c!713602) b!4178244))

(assert (= (and d!1233212 (not c!713602)) b!4178245))

(declare-fun m!4767859 () Bool)

(assert (=> b!4178245 m!4767859))

(assert (=> b!4177796 d!1233212))

(declare-fun d!1233214 () Bool)

(assert (=> d!1233214 (ruleValid!3344 thiss!25986 rBis!167)))

(declare-fun lt!1488138 () Unit!64943)

(declare-fun choose!25569 (LexerInterface!7219 Rule!15052 List!45985) Unit!64943)

(assert (=> d!1233214 (= lt!1488138 (choose!25569 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1233214 (contains!9429 rules!3843 rBis!167)))

(assert (=> d!1233214 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2358 thiss!25986 rBis!167 rules!3843) lt!1488138)))

(declare-fun bs!596192 () Bool)

(assert (= bs!596192 d!1233214))

(assert (=> bs!596192 m!4767423))

(declare-fun m!4767861 () Bool)

(assert (=> bs!596192 m!4767861))

(assert (=> bs!596192 m!4767429))

(assert (=> b!4177795 d!1233214))

(declare-fun b!4178246 () Bool)

(declare-fun e!2593995 () Option!9822)

(assert (=> b!4178246 (= e!2593995 None!9821)))

(declare-fun b!4178247 () Bool)

(declare-fun res!1713152 () Bool)

(declare-fun e!2593996 () Bool)

(assert (=> b!4178247 (=> (not res!1713152) (not e!2593996))))

(declare-fun lt!1488143 () Option!9822)

(assert (=> b!4178247 (= res!1713152 (< (size!33676 (_2!24975 (get!14904 lt!1488143))) (size!33676 input!3342)))))

(declare-fun b!4178248 () Bool)

(declare-fun e!2593998 () Bool)

(assert (=> b!4178248 (= e!2593998 (matchR!6270 (regex!7626 rBis!167) (_1!24977 (findLongestMatchInner!1581 (regex!7626 rBis!167) Nil!45860 (size!33676 Nil!45860) input!3342 input!3342 (size!33676 input!3342)))))))

(declare-fun b!4178249 () Bool)

(declare-fun res!1713151 () Bool)

(assert (=> b!4178249 (=> (not res!1713151) (not e!2593996))))

(assert (=> b!4178249 (= res!1713151 (= (rule!10682 (_1!24975 (get!14904 lt!1488143))) rBis!167))))

(declare-fun d!1233216 () Bool)

(declare-fun e!2593997 () Bool)

(assert (=> d!1233216 e!2593997))

(declare-fun res!1713148 () Bool)

(assert (=> d!1233216 (=> res!1713148 e!2593997)))

(assert (=> d!1233216 (= res!1713148 (isEmpty!27133 lt!1488143))))

(assert (=> d!1233216 (= lt!1488143 e!2593995)))

(declare-fun c!713603 () Bool)

(declare-fun lt!1488139 () tuple2!43686)

(assert (=> d!1233216 (= c!713603 (isEmpty!27135 (_1!24977 lt!1488139)))))

(assert (=> d!1233216 (= lt!1488139 (findLongestMatch!1494 (regex!7626 rBis!167) input!3342))))

(assert (=> d!1233216 (ruleValid!3344 thiss!25986 rBis!167)))

(assert (=> d!1233216 (= (maxPrefixOneRule!3230 thiss!25986 rBis!167 input!3342) lt!1488143)))

(declare-fun b!4178250 () Bool)

(declare-fun res!1713149 () Bool)

(assert (=> b!4178250 (=> (not res!1713149) (not e!2593996))))

(assert (=> b!4178250 (= res!1713149 (= (value!237873 (_1!24975 (get!14904 lt!1488143))) (apply!10591 (transformation!7626 (rule!10682 (_1!24975 (get!14904 lt!1488143)))) (seqFromList!5651 (originalCharacters!8014 (_1!24975 (get!14904 lt!1488143)))))))))

(declare-fun b!4178251 () Bool)

(assert (=> b!4178251 (= e!2593996 (= (size!33675 (_1!24975 (get!14904 lt!1488143))) (size!33676 (originalCharacters!8014 (_1!24975 (get!14904 lt!1488143))))))))

(declare-fun b!4178252 () Bool)

(declare-fun res!1713150 () Bool)

(assert (=> b!4178252 (=> (not res!1713150) (not e!2593996))))

(assert (=> b!4178252 (= res!1713150 (= (++!11704 (list!16563 (charsOf!5067 (_1!24975 (get!14904 lt!1488143)))) (_2!24975 (get!14904 lt!1488143))) input!3342))))

(declare-fun b!4178253 () Bool)

(assert (=> b!4178253 (= e!2593995 (Some!9821 (tuple2!43683 (Token!13967 (apply!10591 (transformation!7626 rBis!167) (seqFromList!5651 (_1!24977 lt!1488139))) rBis!167 (size!33674 (seqFromList!5651 (_1!24977 lt!1488139))) (_1!24977 lt!1488139)) (_2!24977 lt!1488139))))))

(declare-fun lt!1488142 () Unit!64943)

(assert (=> b!4178253 (= lt!1488142 (longestMatchIsAcceptedByMatchOrIsEmpty!1554 (regex!7626 rBis!167) input!3342))))

(declare-fun res!1713146 () Bool)

(assert (=> b!4178253 (= res!1713146 (isEmpty!27135 (_1!24977 (findLongestMatchInner!1581 (regex!7626 rBis!167) Nil!45860 (size!33676 Nil!45860) input!3342 input!3342 (size!33676 input!3342)))))))

(assert (=> b!4178253 (=> res!1713146 e!2593998)))

(assert (=> b!4178253 e!2593998))

(declare-fun lt!1488140 () Unit!64943)

(assert (=> b!4178253 (= lt!1488140 lt!1488142)))

(declare-fun lt!1488141 () Unit!64943)

(assert (=> b!4178253 (= lt!1488141 (lemmaSemiInverse!2392 (transformation!7626 rBis!167) (seqFromList!5651 (_1!24977 lt!1488139))))))

(declare-fun b!4178254 () Bool)

(assert (=> b!4178254 (= e!2593997 e!2593996)))

(declare-fun res!1713147 () Bool)

(assert (=> b!4178254 (=> (not res!1713147) (not e!2593996))))

(assert (=> b!4178254 (= res!1713147 (matchR!6270 (regex!7626 rBis!167) (list!16563 (charsOf!5067 (_1!24975 (get!14904 lt!1488143))))))))

(assert (= (and d!1233216 c!713603) b!4178246))

(assert (= (and d!1233216 (not c!713603)) b!4178253))

(assert (= (and b!4178253 (not res!1713146)) b!4178248))

(assert (= (and d!1233216 (not res!1713148)) b!4178254))

(assert (= (and b!4178254 res!1713147) b!4178252))

(assert (= (and b!4178252 res!1713150) b!4178247))

(assert (= (and b!4178247 res!1713152) b!4178249))

(assert (= (and b!4178249 res!1713151) b!4178250))

(assert (= (and b!4178250 res!1713149) b!4178251))

(declare-fun m!4767863 () Bool)

(assert (=> b!4178253 m!4767863))

(declare-fun m!4767865 () Bool)

(assert (=> b!4178253 m!4767865))

(assert (=> b!4178253 m!4767389))

(declare-fun m!4767867 () Bool)

(assert (=> b!4178253 m!4767867))

(assert (=> b!4178253 m!4767863))

(declare-fun m!4767869 () Bool)

(assert (=> b!4178253 m!4767869))

(assert (=> b!4178253 m!4767525))

(assert (=> b!4178253 m!4767389))

(declare-fun m!4767871 () Bool)

(assert (=> b!4178253 m!4767871))

(assert (=> b!4178253 m!4767525))

(assert (=> b!4178253 m!4767863))

(declare-fun m!4767873 () Bool)

(assert (=> b!4178253 m!4767873))

(assert (=> b!4178253 m!4767863))

(declare-fun m!4767875 () Bool)

(assert (=> b!4178253 m!4767875))

(declare-fun m!4767877 () Bool)

(assert (=> b!4178250 m!4767877))

(declare-fun m!4767879 () Bool)

(assert (=> b!4178250 m!4767879))

(assert (=> b!4178250 m!4767879))

(declare-fun m!4767881 () Bool)

(assert (=> b!4178250 m!4767881))

(assert (=> b!4178248 m!4767525))

(assert (=> b!4178248 m!4767389))

(assert (=> b!4178248 m!4767525))

(assert (=> b!4178248 m!4767389))

(assert (=> b!4178248 m!4767871))

(declare-fun m!4767883 () Bool)

(assert (=> b!4178248 m!4767883))

(assert (=> b!4178252 m!4767877))

(declare-fun m!4767885 () Bool)

(assert (=> b!4178252 m!4767885))

(assert (=> b!4178252 m!4767885))

(declare-fun m!4767887 () Bool)

(assert (=> b!4178252 m!4767887))

(assert (=> b!4178252 m!4767887))

(declare-fun m!4767889 () Bool)

(assert (=> b!4178252 m!4767889))

(assert (=> b!4178254 m!4767877))

(assert (=> b!4178254 m!4767885))

(assert (=> b!4178254 m!4767885))

(assert (=> b!4178254 m!4767887))

(assert (=> b!4178254 m!4767887))

(declare-fun m!4767891 () Bool)

(assert (=> b!4178254 m!4767891))

(declare-fun m!4767893 () Bool)

(assert (=> d!1233216 m!4767893))

(declare-fun m!4767895 () Bool)

(assert (=> d!1233216 m!4767895))

(declare-fun m!4767897 () Bool)

(assert (=> d!1233216 m!4767897))

(assert (=> d!1233216 m!4767423))

(assert (=> b!4178251 m!4767877))

(declare-fun m!4767899 () Bool)

(assert (=> b!4178251 m!4767899))

(assert (=> b!4178249 m!4767877))

(assert (=> b!4178247 m!4767877))

(declare-fun m!4767901 () Bool)

(assert (=> b!4178247 m!4767901))

(assert (=> b!4178247 m!4767389))

(assert (=> b!4177795 d!1233216))

(declare-fun d!1233218 () Bool)

(assert (=> d!1233218 (<= (size!33676 pBis!107) (size!33676 input!3342))))

(declare-fun lt!1488146 () Unit!64943)

(declare-fun choose!25570 (List!45984 List!45984) Unit!64943)

(assert (=> d!1233218 (= lt!1488146 (choose!25570 pBis!107 input!3342))))

(assert (=> d!1233218 (isPrefix!4483 pBis!107 input!3342)))

(assert (=> d!1233218 (= (lemmaIsPrefixThenSmallerEqSize!515 pBis!107 input!3342) lt!1488146)))

(declare-fun bs!596193 () Bool)

(assert (= bs!596193 d!1233218))

(assert (=> bs!596193 m!4767397))

(assert (=> bs!596193 m!4767389))

(declare-fun m!4767903 () Bool)

(assert (=> bs!596193 m!4767903))

(assert (=> bs!596193 m!4767425))

(assert (=> b!4177795 d!1233218))

(declare-fun d!1233220 () Bool)

(declare-fun lt!1488147 () Int)

(assert (=> d!1233220 (>= lt!1488147 0)))

(declare-fun e!2593999 () Int)

(assert (=> d!1233220 (= lt!1488147 e!2593999)))

(declare-fun c!713604 () Bool)

(assert (=> d!1233220 (= c!713604 ((_ is Nil!45860) input!3342))))

(assert (=> d!1233220 (= (size!33676 input!3342) lt!1488147)))

(declare-fun b!4178255 () Bool)

(assert (=> b!4178255 (= e!2593999 0)))

(declare-fun b!4178256 () Bool)

(assert (=> b!4178256 (= e!2593999 (+ 1 (size!33676 (t!344793 input!3342))))))

(assert (= (and d!1233220 c!713604) b!4178255))

(assert (= (and d!1233220 (not c!713604)) b!4178256))

(declare-fun m!4767905 () Bool)

(assert (=> b!4178256 m!4767905))

(assert (=> b!4177795 d!1233220))

(declare-fun d!1233222 () Bool)

(assert (=> d!1233222 (= (isEmpty!27133 lt!1487995) (not ((_ is Some!9821) lt!1487995)))))

(assert (=> b!4177795 d!1233222))

(declare-fun d!1233224 () Bool)

(assert (=> d!1233224 (= (inv!60378 (tag!8490 r!4142)) (= (mod (str.len (value!237872 (tag!8490 r!4142))) 2) 0))))

(assert (=> b!4177774 d!1233224))

(declare-fun d!1233226 () Bool)

(declare-fun res!1713153 () Bool)

(declare-fun e!2594000 () Bool)

(assert (=> d!1233226 (=> (not res!1713153) (not e!2594000))))

(assert (=> d!1233226 (= res!1713153 (semiInverseModEq!3298 (toChars!10169 (transformation!7626 r!4142)) (toValue!10310 (transformation!7626 r!4142))))))

(assert (=> d!1233226 (= (inv!60380 (transformation!7626 r!4142)) e!2594000)))

(declare-fun b!4178257 () Bool)

(assert (=> b!4178257 (= e!2594000 (equivClasses!3197 (toChars!10169 (transformation!7626 r!4142)) (toValue!10310 (transformation!7626 r!4142))))))

(assert (= (and d!1233226 res!1713153) b!4178257))

(declare-fun m!4767907 () Bool)

(assert (=> d!1233226 m!4767907))

(declare-fun m!4767909 () Bool)

(assert (=> b!4178257 m!4767909))

(assert (=> b!4177774 d!1233226))

(declare-fun d!1233228 () Bool)

(declare-fun res!1713154 () Bool)

(declare-fun e!2594001 () Bool)

(assert (=> d!1233228 (=> (not res!1713154) (not e!2594001))))

(assert (=> d!1233228 (= res!1713154 (validRegex!5648 (regex!7626 r!4142)))))

(assert (=> d!1233228 (= (ruleValid!3344 thiss!25986 r!4142) e!2594001)))

(declare-fun b!4178258 () Bool)

(declare-fun res!1713155 () Bool)

(assert (=> b!4178258 (=> (not res!1713155) (not e!2594001))))

(assert (=> b!4178258 (= res!1713155 (not (nullable!4389 (regex!7626 r!4142))))))

(declare-fun b!4178259 () Bool)

(assert (=> b!4178259 (= e!2594001 (not (= (tag!8490 r!4142) (String!53147 ""))))))

(assert (= (and d!1233228 res!1713154) b!4178258))

(assert (= (and b!4178258 res!1713155) b!4178259))

(assert (=> d!1233228 m!4767399))

(assert (=> b!4178258 m!4767807))

(assert (=> b!4177783 d!1233228))

(declare-fun b!4178278 () Bool)

(declare-fun res!1713171 () Bool)

(declare-fun e!2594008 () Bool)

(assert (=> b!4178278 (=> (not res!1713171) (not e!2594008))))

(declare-fun lt!1488161 () Option!9822)

(assert (=> b!4178278 (= res!1713171 (< (size!33676 (_2!24975 (get!14904 lt!1488161))) (size!33676 input!3342)))))

(declare-fun b!4178279 () Bool)

(declare-fun res!1713172 () Bool)

(assert (=> b!4178279 (=> (not res!1713172) (not e!2594008))))

(assert (=> b!4178279 (= res!1713172 (matchR!6270 (regex!7626 (rule!10682 (_1!24975 (get!14904 lt!1488161)))) (list!16563 (charsOf!5067 (_1!24975 (get!14904 lt!1488161))))))))

(declare-fun bm!291489 () Bool)

(declare-fun call!291494 () Option!9822)

(assert (=> bm!291489 (= call!291494 (maxPrefixOneRule!3230 thiss!25986 (h!51281 rules!3843) input!3342))))

(declare-fun b!4178280 () Bool)

(declare-fun e!2594010 () Option!9822)

(assert (=> b!4178280 (= e!2594010 call!291494)))

(declare-fun b!4178281 () Bool)

(declare-fun res!1713174 () Bool)

(assert (=> b!4178281 (=> (not res!1713174) (not e!2594008))))

(assert (=> b!4178281 (= res!1713174 (= (++!11704 (list!16563 (charsOf!5067 (_1!24975 (get!14904 lt!1488161)))) (_2!24975 (get!14904 lt!1488161))) input!3342))))

(declare-fun d!1233230 () Bool)

(declare-fun e!2594009 () Bool)

(assert (=> d!1233230 e!2594009))

(declare-fun res!1713175 () Bool)

(assert (=> d!1233230 (=> res!1713175 e!2594009)))

(assert (=> d!1233230 (= res!1713175 (isEmpty!27133 lt!1488161))))

(assert (=> d!1233230 (= lt!1488161 e!2594010)))

(declare-fun c!713607 () Bool)

(assert (=> d!1233230 (= c!713607 (and ((_ is Cons!45861) rules!3843) ((_ is Nil!45861) (t!344794 rules!3843))))))

(declare-fun lt!1488158 () Unit!64943)

(declare-fun lt!1488160 () Unit!64943)

(assert (=> d!1233230 (= lt!1488158 lt!1488160)))

(assert (=> d!1233230 (isPrefix!4483 input!3342 input!3342)))

(assert (=> d!1233230 (= lt!1488160 (lemmaIsPrefixRefl!2912 input!3342 input!3342))))

(declare-fun rulesValidInductive!2804 (LexerInterface!7219 List!45985) Bool)

(assert (=> d!1233230 (rulesValidInductive!2804 thiss!25986 rules!3843)))

(assert (=> d!1233230 (= (maxPrefix!4271 thiss!25986 rules!3843 input!3342) lt!1488161)))

(declare-fun b!4178282 () Bool)

(declare-fun res!1713173 () Bool)

(assert (=> b!4178282 (=> (not res!1713173) (not e!2594008))))

(assert (=> b!4178282 (= res!1713173 (= (list!16563 (charsOf!5067 (_1!24975 (get!14904 lt!1488161)))) (originalCharacters!8014 (_1!24975 (get!14904 lt!1488161)))))))

(declare-fun b!4178283 () Bool)

(declare-fun lt!1488159 () Option!9822)

(declare-fun lt!1488162 () Option!9822)

(assert (=> b!4178283 (= e!2594010 (ite (and ((_ is None!9821) lt!1488159) ((_ is None!9821) lt!1488162)) None!9821 (ite ((_ is None!9821) lt!1488162) lt!1488159 (ite ((_ is None!9821) lt!1488159) lt!1488162 (ite (>= (size!33675 (_1!24975 (v!40623 lt!1488159))) (size!33675 (_1!24975 (v!40623 lt!1488162)))) lt!1488159 lt!1488162)))))))

(assert (=> b!4178283 (= lt!1488159 call!291494)))

(assert (=> b!4178283 (= lt!1488162 (maxPrefix!4271 thiss!25986 (t!344794 rules!3843) input!3342))))

(declare-fun b!4178284 () Bool)

(assert (=> b!4178284 (= e!2594008 (contains!9429 rules!3843 (rule!10682 (_1!24975 (get!14904 lt!1488161)))))))

(declare-fun b!4178285 () Bool)

(declare-fun res!1713176 () Bool)

(assert (=> b!4178285 (=> (not res!1713176) (not e!2594008))))

(assert (=> b!4178285 (= res!1713176 (= (value!237873 (_1!24975 (get!14904 lt!1488161))) (apply!10591 (transformation!7626 (rule!10682 (_1!24975 (get!14904 lt!1488161)))) (seqFromList!5651 (originalCharacters!8014 (_1!24975 (get!14904 lt!1488161)))))))))

(declare-fun b!4178286 () Bool)

(assert (=> b!4178286 (= e!2594009 e!2594008)))

(declare-fun res!1713170 () Bool)

(assert (=> b!4178286 (=> (not res!1713170) (not e!2594008))))

(declare-fun isDefined!7324 (Option!9822) Bool)

(assert (=> b!4178286 (= res!1713170 (isDefined!7324 lt!1488161))))

(assert (= (and d!1233230 c!713607) b!4178280))

(assert (= (and d!1233230 (not c!713607)) b!4178283))

(assert (= (or b!4178280 b!4178283) bm!291489))

(assert (= (and d!1233230 (not res!1713175)) b!4178286))

(assert (= (and b!4178286 res!1713170) b!4178282))

(assert (= (and b!4178282 res!1713173) b!4178278))

(assert (= (and b!4178278 res!1713171) b!4178281))

(assert (= (and b!4178281 res!1713174) b!4178285))

(assert (= (and b!4178285 res!1713176) b!4178279))

(assert (= (and b!4178279 res!1713172) b!4178284))

(declare-fun m!4767911 () Bool)

(assert (=> b!4178285 m!4767911))

(declare-fun m!4767913 () Bool)

(assert (=> b!4178285 m!4767913))

(assert (=> b!4178285 m!4767913))

(declare-fun m!4767915 () Bool)

(assert (=> b!4178285 m!4767915))

(declare-fun m!4767917 () Bool)

(assert (=> d!1233230 m!4767917))

(assert (=> d!1233230 m!4767405))

(assert (=> d!1233230 m!4767409))

(declare-fun m!4767919 () Bool)

(assert (=> d!1233230 m!4767919))

(declare-fun m!4767921 () Bool)

(assert (=> b!4178283 m!4767921))

(declare-fun m!4767923 () Bool)

(assert (=> b!4178286 m!4767923))

(declare-fun m!4767925 () Bool)

(assert (=> bm!291489 m!4767925))

(assert (=> b!4178279 m!4767911))

(declare-fun m!4767927 () Bool)

(assert (=> b!4178279 m!4767927))

(assert (=> b!4178279 m!4767927))

(declare-fun m!4767929 () Bool)

(assert (=> b!4178279 m!4767929))

(assert (=> b!4178279 m!4767929))

(declare-fun m!4767931 () Bool)

(assert (=> b!4178279 m!4767931))

(assert (=> b!4178282 m!4767911))

(assert (=> b!4178282 m!4767927))

(assert (=> b!4178282 m!4767927))

(assert (=> b!4178282 m!4767929))

(assert (=> b!4178284 m!4767911))

(declare-fun m!4767933 () Bool)

(assert (=> b!4178284 m!4767933))

(assert (=> b!4178281 m!4767911))

(assert (=> b!4178281 m!4767927))

(assert (=> b!4178281 m!4767927))

(assert (=> b!4178281 m!4767929))

(assert (=> b!4178281 m!4767929))

(declare-fun m!4767935 () Bool)

(assert (=> b!4178281 m!4767935))

(assert (=> b!4178278 m!4767911))

(declare-fun m!4767937 () Bool)

(assert (=> b!4178278 m!4767937))

(assert (=> b!4178278 m!4767389))

(assert (=> b!4177794 d!1233230))

(declare-fun b!4178291 () Bool)

(declare-fun e!2594013 () Bool)

(declare-fun tp!1276895 () Bool)

(assert (=> b!4178291 (= e!2594013 (and tp_is_empty!22025 tp!1276895))))

(assert (=> b!4177771 (= tp!1276831 e!2594013)))

(assert (= (and b!4177771 ((_ is Cons!45860) (t!344793 pBis!107))) b!4178291))

(declare-fun b!4178302 () Bool)

(declare-fun e!2594016 () Bool)

(assert (=> b!4178302 (= e!2594016 tp_is_empty!22025)))

(declare-fun b!4178304 () Bool)

(declare-fun tp!1276908 () Bool)

(assert (=> b!4178304 (= e!2594016 tp!1276908)))

(assert (=> b!4177792 (= tp!1276836 e!2594016)))

(declare-fun b!4178303 () Bool)

(declare-fun tp!1276909 () Bool)

(declare-fun tp!1276906 () Bool)

(assert (=> b!4178303 (= e!2594016 (and tp!1276909 tp!1276906))))

(declare-fun b!4178305 () Bool)

(declare-fun tp!1276907 () Bool)

(declare-fun tp!1276910 () Bool)

(assert (=> b!4178305 (= e!2594016 (and tp!1276907 tp!1276910))))

(assert (= (and b!4177792 ((_ is ElementMatch!12531) (regex!7626 (h!51281 rules!3843)))) b!4178302))

(assert (= (and b!4177792 ((_ is Concat!20388) (regex!7626 (h!51281 rules!3843)))) b!4178303))

(assert (= (and b!4177792 ((_ is Star!12531) (regex!7626 (h!51281 rules!3843)))) b!4178304))

(assert (= (and b!4177792 ((_ is Union!12531) (regex!7626 (h!51281 rules!3843)))) b!4178305))

(declare-fun b!4178306 () Bool)

(declare-fun e!2594017 () Bool)

(assert (=> b!4178306 (= e!2594017 tp_is_empty!22025)))

(declare-fun b!4178308 () Bool)

(declare-fun tp!1276913 () Bool)

(assert (=> b!4178308 (= e!2594017 tp!1276913)))

(assert (=> b!4177780 (= tp!1276830 e!2594017)))

(declare-fun b!4178307 () Bool)

(declare-fun tp!1276914 () Bool)

(declare-fun tp!1276911 () Bool)

(assert (=> b!4178307 (= e!2594017 (and tp!1276914 tp!1276911))))

(declare-fun b!4178309 () Bool)

(declare-fun tp!1276912 () Bool)

(declare-fun tp!1276915 () Bool)

(assert (=> b!4178309 (= e!2594017 (and tp!1276912 tp!1276915))))

(assert (= (and b!4177780 ((_ is ElementMatch!12531) (regex!7626 rBis!167))) b!4178306))

(assert (= (and b!4177780 ((_ is Concat!20388) (regex!7626 rBis!167))) b!4178307))

(assert (= (and b!4177780 ((_ is Star!12531) (regex!7626 rBis!167))) b!4178308))

(assert (= (and b!4177780 ((_ is Union!12531) (regex!7626 rBis!167))) b!4178309))

(declare-fun b!4178310 () Bool)

(declare-fun e!2594018 () Bool)

(declare-fun tp!1276916 () Bool)

(assert (=> b!4178310 (= e!2594018 (and tp_is_empty!22025 tp!1276916))))

(assert (=> b!4177779 (= tp!1276840 e!2594018)))

(assert (= (and b!4177779 ((_ is Cons!45860) (t!344793 input!3342))) b!4178310))

(declare-fun b!4178311 () Bool)

(declare-fun e!2594019 () Bool)

(assert (=> b!4178311 (= e!2594019 tp_is_empty!22025)))

(declare-fun b!4178313 () Bool)

(declare-fun tp!1276919 () Bool)

(assert (=> b!4178313 (= e!2594019 tp!1276919)))

(assert (=> b!4177774 (= tp!1276842 e!2594019)))

(declare-fun b!4178312 () Bool)

(declare-fun tp!1276920 () Bool)

(declare-fun tp!1276917 () Bool)

(assert (=> b!4178312 (= e!2594019 (and tp!1276920 tp!1276917))))

(declare-fun b!4178314 () Bool)

(declare-fun tp!1276918 () Bool)

(declare-fun tp!1276921 () Bool)

(assert (=> b!4178314 (= e!2594019 (and tp!1276918 tp!1276921))))

(assert (= (and b!4177774 ((_ is ElementMatch!12531) (regex!7626 r!4142))) b!4178311))

(assert (= (and b!4177774 ((_ is Concat!20388) (regex!7626 r!4142))) b!4178312))

(assert (= (and b!4177774 ((_ is Star!12531) (regex!7626 r!4142))) b!4178313))

(assert (= (and b!4177774 ((_ is Union!12531) (regex!7626 r!4142))) b!4178314))

(declare-fun b!4178315 () Bool)

(declare-fun e!2594020 () Bool)

(declare-fun tp!1276922 () Bool)

(assert (=> b!4178315 (= e!2594020 (and tp_is_empty!22025 tp!1276922))))

(assert (=> b!4177773 (= tp!1276838 e!2594020)))

(assert (= (and b!4177773 ((_ is Cons!45860) (t!344793 p!2959))) b!4178315))

(declare-fun b!4178326 () Bool)

(declare-fun b_free!121343 () Bool)

(declare-fun b_next!122047 () Bool)

(assert (=> b!4178326 (= b_free!121343 (not b_next!122047))))

(declare-fun t!344839 () Bool)

(declare-fun tb!250069 () Bool)

(assert (=> (and b!4178326 (= (toValue!10310 (transformation!7626 (h!51281 (t!344794 rules!3843)))) (toValue!10310 (transformation!7626 r!4142))) t!344839) tb!250069))

(declare-fun result!304702 () Bool)

(assert (= result!304702 result!304670))

(assert (=> d!1233122 t!344839))

(assert (=> d!1233166 t!344839))

(declare-fun b_and!326669 () Bool)

(declare-fun tp!1276932 () Bool)

(assert (=> b!4178326 (= tp!1276932 (and (=> t!344839 result!304702) b_and!326669))))

(declare-fun b_free!121345 () Bool)

(declare-fun b_next!122049 () Bool)

(assert (=> b!4178326 (= b_free!121345 (not b_next!122049))))

(declare-fun tb!250071 () Bool)

(declare-fun t!344841 () Bool)

(assert (=> (and b!4178326 (= (toChars!10169 (transformation!7626 (h!51281 (t!344794 rules!3843)))) (toChars!10169 (transformation!7626 r!4142))) t!344841) tb!250071))

(declare-fun result!304704 () Bool)

(assert (= result!304704 result!304656))

(assert (=> d!1233122 t!344841))

(declare-fun t!344843 () Bool)

(declare-fun tb!250073 () Bool)

(assert (=> (and b!4178326 (= (toChars!10169 (transformation!7626 (h!51281 (t!344794 rules!3843)))) (toChars!10169 (transformation!7626 (rule!10682 (_1!24975 lt!1487993))))) t!344843) tb!250073))

(declare-fun result!304706 () Bool)

(assert (= result!304706 result!304690))

(assert (=> d!1233198 t!344843))

(declare-fun tp!1276931 () Bool)

(declare-fun b_and!326671 () Bool)

(assert (=> b!4178326 (= tp!1276931 (and (=> t!344841 result!304704) (=> t!344843 result!304706) b_and!326671))))

(declare-fun e!2594031 () Bool)

(assert (=> b!4178326 (= e!2594031 (and tp!1276932 tp!1276931))))

(declare-fun tp!1276934 () Bool)

(declare-fun e!2594032 () Bool)

(declare-fun b!4178325 () Bool)

(assert (=> b!4178325 (= e!2594032 (and tp!1276934 (inv!60378 (tag!8490 (h!51281 (t!344794 rules!3843)))) (inv!60380 (transformation!7626 (h!51281 (t!344794 rules!3843)))) e!2594031))))

(declare-fun b!4178324 () Bool)

(declare-fun e!2594029 () Bool)

(declare-fun tp!1276933 () Bool)

(assert (=> b!4178324 (= e!2594029 (and e!2594032 tp!1276933))))

(assert (=> b!4177784 (= tp!1276839 e!2594029)))

(assert (= b!4178325 b!4178326))

(assert (= b!4178324 b!4178325))

(assert (= (and b!4177784 ((_ is Cons!45861) (t!344794 rules!3843))) b!4178324))

(declare-fun m!4767939 () Bool)

(assert (=> b!4178325 m!4767939))

(declare-fun m!4767941 () Bool)

(assert (=> b!4178325 m!4767941))

(declare-fun b_lambda!122705 () Bool)

(assert (= b_lambda!122695 (or (and b!4177772 b_free!121327) (and b!4177776 b_free!121331 (= (toValue!10310 (transformation!7626 (h!51281 rules!3843))) (toValue!10310 (transformation!7626 r!4142)))) (and b!4177775 b_free!121335 (= (toValue!10310 (transformation!7626 rBis!167)) (toValue!10310 (transformation!7626 r!4142)))) (and b!4178326 b_free!121343 (= (toValue!10310 (transformation!7626 (h!51281 (t!344794 rules!3843)))) (toValue!10310 (transformation!7626 r!4142)))) b_lambda!122705)))

(declare-fun b_lambda!122707 () Bool)

(assert (= b_lambda!122693 (or (and b!4177772 b_free!121327) (and b!4177776 b_free!121331 (= (toValue!10310 (transformation!7626 (h!51281 rules!3843))) (toValue!10310 (transformation!7626 r!4142)))) (and b!4177775 b_free!121335 (= (toValue!10310 (transformation!7626 rBis!167)) (toValue!10310 (transformation!7626 r!4142)))) (and b!4178326 b_free!121343 (= (toValue!10310 (transformation!7626 (h!51281 (t!344794 rules!3843)))) (toValue!10310 (transformation!7626 r!4142)))) b_lambda!122707)))

(declare-fun b_lambda!122709 () Bool)

(assert (= b_lambda!122689 (or (and b!4177772 b_free!121329) (and b!4177776 b_free!121333 (= (toChars!10169 (transformation!7626 (h!51281 rules!3843))) (toChars!10169 (transformation!7626 r!4142)))) (and b!4177775 b_free!121337 (= (toChars!10169 (transformation!7626 rBis!167)) (toChars!10169 (transformation!7626 r!4142)))) (and b!4178326 b_free!121345 (= (toChars!10169 (transformation!7626 (h!51281 (t!344794 rules!3843)))) (toChars!10169 (transformation!7626 r!4142)))) b_lambda!122709)))

(check-sat (not d!1233194) b_and!326663 (not b!4178282) (not d!1233122) (not b_next!122031) (not b!4177862) (not b!4178285) (not b!4177809) b_and!326653 (not b!4178307) (not d!1233230) (not b_next!122033) (not b_lambda!122703) (not b!4177866) (not b!4177820) (not b!4178314) (not b!4177839) (not b!4178227) (not b!4178237) (not b_next!122049) (not b!4178303) (not b!4178291) (not b!4177819) (not b!4177891) (not d!1233216) (not b!4178250) (not bm!291486) (not b!4178251) (not d!1233218) (not d!1233088) (not d!1233214) (not b!4178208) (not b!4178217) (not tb!250051) (not b_next!122035) (not bm!291489) (not b!4178226) (not b!4178248) (not tb!250063) (not b!4178254) (not b!4178098) (not d!1233186) (not d!1233196) (not b!4178225) (not b!4177821) (not b!4177867) (not b!4177890) (not d!1233228) (not b!4177887) (not b!4178252) (not b!4177811) (not d!1233190) (not d!1233110) (not b!4178310) (not b!4178324) (not b!4178095) (not d!1233116) (not b!4178133) (not b!4178279) (not b_next!122039) (not bm!291482) (not b!4178308) (not b!4177894) (not b!4178253) (not d!1233082) (not bm!291483) (not b!4178258) (not d!1233170) (not b!4177893) (not b!4178245) (not b!4178215) (not b_lambda!122709) (not b!4177851) (not d!1233176) (not d!1233118) (not b!4178309) (not b!4178247) (not b!4178219) (not b!4178222) (not d!1233226) (not b!4178079) (not b!4178283) tp_is_empty!22025 (not b!4178315) (not b!4178243) (not b_next!122037) (not b!4178223) (not b!4178212) (not b!4178286) (not d!1233200) (not b!4178238) (not b!4178149) (not tb!250039) (not b!4178284) (not b!4178053) (not b!4177888) (not d!1233204) (not b!4178281) (not b!4178278) (not b!4178325) b_and!326667 (not d!1233120) (not b!4178313) (not d!1233096) b_and!326657 (not b_next!122041) b_and!326669 (not b!4178256) (not b!4177889) (not b!4177810) (not b!4178304) b_and!326665 (not b!4177865) (not b!4178257) b_and!326671 (not b!4178249) (not d!1233198) (not b!4178242) b_and!326655 (not b!4177892) (not b!4178312) (not b!4178305) (not b!4178241) (not b_lambda!122705) (not b_next!122047) (not b_lambda!122707) (not b!4178214))
(check-sat (not b_next!122033) (not b_next!122049) (not b_next!122035) (not b_next!122039) (not b_next!122037) b_and!326665 b_and!326671 b_and!326655 (not b_next!122047) b_and!326663 (not b_next!122031) b_and!326653 b_and!326667 b_and!326657 (not b_next!122041) b_and!326669)
