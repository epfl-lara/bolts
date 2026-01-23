; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341886 () Bool)

(assert start!341886)

(declare-fun b!3654738 () Bool)

(declare-fun b_free!96257 () Bool)

(declare-fun b_next!96961 () Bool)

(assert (=> b!3654738 (= b_free!96257 (not b_next!96961))))

(declare-fun tp!1113838 () Bool)

(declare-fun b_and!270667 () Bool)

(assert (=> b!3654738 (= tp!1113838 b_and!270667)))

(declare-fun b_free!96259 () Bool)

(declare-fun b_next!96963 () Bool)

(assert (=> b!3654738 (= b_free!96259 (not b_next!96963))))

(declare-fun tp!1113837 () Bool)

(declare-fun b_and!270669 () Bool)

(assert (=> b!3654738 (= tp!1113837 b_and!270669)))

(declare-fun b!3654744 () Bool)

(declare-fun b_free!96261 () Bool)

(declare-fun b_next!96965 () Bool)

(assert (=> b!3654744 (= b_free!96261 (not b_next!96965))))

(declare-fun tp!1113839 () Bool)

(declare-fun b_and!270671 () Bool)

(assert (=> b!3654744 (= tp!1113839 b_and!270671)))

(declare-fun b_free!96263 () Bool)

(declare-fun b_next!96967 () Bool)

(assert (=> b!3654744 (= b_free!96263 (not b_next!96967))))

(declare-fun tp!1113845 () Bool)

(declare-fun b_and!270673 () Bool)

(assert (=> b!3654744 (= tp!1113845 b_and!270673)))

(declare-fun b!3654760 () Bool)

(declare-fun b_free!96265 () Bool)

(declare-fun b_next!96969 () Bool)

(assert (=> b!3654760 (= b_free!96265 (not b_next!96969))))

(declare-fun tp!1113835 () Bool)

(declare-fun b_and!270675 () Bool)

(assert (=> b!3654760 (= tp!1113835 b_and!270675)))

(declare-fun b_free!96267 () Bool)

(declare-fun b_next!96971 () Bool)

(assert (=> b!3654760 (= b_free!96267 (not b_next!96971))))

(declare-fun tp!1113846 () Bool)

(declare-fun b_and!270677 () Bool)

(assert (=> b!3654760 (= tp!1113846 b_and!270677)))

(declare-fun b!3654756 () Bool)

(declare-fun b_free!96269 () Bool)

(declare-fun b_next!96973 () Bool)

(assert (=> b!3654756 (= b_free!96269 (not b_next!96973))))

(declare-fun tp!1113832 () Bool)

(declare-fun b_and!270679 () Bool)

(assert (=> b!3654756 (= tp!1113832 b_and!270679)))

(declare-fun b_free!96271 () Bool)

(declare-fun b_next!96975 () Bool)

(assert (=> b!3654756 (= b_free!96271 (not b_next!96975))))

(declare-fun tp!1113840 () Bool)

(declare-fun b_and!270681 () Bool)

(assert (=> b!3654756 (= tp!1113840 b_and!270681)))

(declare-fun b!3654728 () Bool)

(declare-fun res!1483111 () Bool)

(declare-fun e!2262867 () Bool)

(assert (=> b!3654728 (=> (not res!1483111) (not e!2262867))))

(declare-datatypes ((List!38673 0))(
  ( (Nil!38549) (Cons!38549 (h!43969 (_ BitVec 16)) (t!297896 List!38673)) )
))
(declare-datatypes ((TokenValue!6008 0))(
  ( (FloatLiteralValue!12016 (text!42501 List!38673)) (TokenValueExt!6007 (__x!24233 Int)) (Broken!30040 (value!185107 List!38673)) (Object!6131) (End!6008) (Def!6008) (Underscore!6008) (Match!6008) (Else!6008) (Error!6008) (Case!6008) (If!6008) (Extends!6008) (Abstract!6008) (Class!6008) (Val!6008) (DelimiterValue!12016 (del!6068 List!38673)) (KeywordValue!6014 (value!185108 List!38673)) (CommentValue!12016 (value!185109 List!38673)) (WhitespaceValue!12016 (value!185110 List!38673)) (IndentationValue!6008 (value!185111 List!38673)) (String!43373) (Int32!6008) (Broken!30041 (value!185112 List!38673)) (Boolean!6009) (Unit!55646) (OperatorValue!6011 (op!6068 List!38673)) (IdentifierValue!12016 (value!185113 List!38673)) (IdentifierValue!12017 (value!185114 List!38673)) (WhitespaceValue!12017 (value!185115 List!38673)) (True!12016) (False!12016) (Broken!30042 (value!185116 List!38673)) (Broken!30043 (value!185117 List!38673)) (True!12017) (RightBrace!6008) (RightBracket!6008) (Colon!6008) (Null!6008) (Comma!6008) (LeftBracket!6008) (False!12017) (LeftBrace!6008) (ImaginaryLiteralValue!6008 (text!42502 List!38673)) (StringLiteralValue!18024 (value!185118 List!38673)) (EOFValue!6008 (value!185119 List!38673)) (IdentValue!6008 (value!185120 List!38673)) (DelimiterValue!12017 (value!185121 List!38673)) (DedentValue!6008 (value!185122 List!38673)) (NewLineValue!6008 (value!185123 List!38673)) (IntegerValue!18024 (value!185124 (_ BitVec 32)) (text!42503 List!38673)) (IntegerValue!18025 (value!185125 Int) (text!42504 List!38673)) (Times!6008) (Or!6008) (Equal!6008) (Minus!6008) (Broken!30044 (value!185126 List!38673)) (And!6008) (Div!6008) (LessEqual!6008) (Mod!6008) (Concat!16545) (Not!6008) (Plus!6008) (SpaceValue!6008 (value!185127 List!38673)) (IntegerValue!18026 (value!185128 Int) (text!42505 List!38673)) (StringLiteralValue!18025 (text!42506 List!38673)) (FloatLiteralValue!12017 (text!42507 List!38673)) (BytesLiteralValue!6008 (value!185129 List!38673)) (CommentValue!12017 (value!185130 List!38673)) (StringLiteralValue!18026 (value!185131 List!38673)) (ErrorTokenValue!6008 (msg!6069 List!38673)) )
))
(declare-datatypes ((C!21260 0))(
  ( (C!21261 (val!12678 Int)) )
))
(declare-datatypes ((Regex!10537 0))(
  ( (ElementMatch!10537 (c!631664 C!21260)) (Concat!16546 (regOne!21586 Regex!10537) (regTwo!21586 Regex!10537)) (EmptyExpr!10537) (Star!10537 (reg!10866 Regex!10537)) (EmptyLang!10537) (Union!10537 (regOne!21587 Regex!10537) (regTwo!21587 Regex!10537)) )
))
(declare-datatypes ((String!43374 0))(
  ( (String!43375 (value!185132 String)) )
))
(declare-datatypes ((List!38674 0))(
  ( (Nil!38550) (Cons!38550 (h!43970 C!21260) (t!297897 List!38674)) )
))
(declare-datatypes ((IArray!23571 0))(
  ( (IArray!23572 (innerList!11843 List!38674)) )
))
(declare-datatypes ((Conc!11783 0))(
  ( (Node!11783 (left!30090 Conc!11783) (right!30420 Conc!11783) (csize!23796 Int) (cheight!11994 Int)) (Leaf!18283 (xs!14985 IArray!23571) (csize!23797 Int)) (Empty!11783) )
))
(declare-datatypes ((BalanceConc!23180 0))(
  ( (BalanceConc!23181 (c!631665 Conc!11783)) )
))
(declare-datatypes ((TokenValueInjection!11444 0))(
  ( (TokenValueInjection!11445 (toValue!8070 Int) (toChars!7929 Int)) )
))
(declare-datatypes ((Rule!11356 0))(
  ( (Rule!11357 (regex!5778 Regex!10537) (tag!6548 String!43374) (isSeparator!5778 Bool) (transformation!5778 TokenValueInjection!11444)) )
))
(declare-datatypes ((List!38675 0))(
  ( (Nil!38551) (Cons!38551 (h!43971 Rule!11356) (t!297898 List!38675)) )
))
(declare-fun rules!3307 () List!38675)

(declare-fun anOtherTypeRule!33 () Rule!11356)

(declare-fun contains!7621 (List!38675 Rule!11356) Bool)

(assert (=> b!3654728 (= res!1483111 (contains!7621 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3654729 () Bool)

(declare-fun res!1483101 () Bool)

(declare-fun e!2262852 () Bool)

(assert (=> b!3654729 (=> res!1483101 e!2262852)))

(declare-fun sepAndNonSepRulesDisjointChars!1946 (List!38675 List!38675) Bool)

(assert (=> b!3654729 (= res!1483101 (not (sepAndNonSepRulesDisjointChars!1946 rules!3307 rules!3307)))))

(declare-fun b!3654730 () Bool)

(declare-fun e!2262869 () Bool)

(declare-fun e!2262851 () Bool)

(assert (=> b!3654730 (= e!2262869 e!2262851)))

(declare-fun res!1483117 () Bool)

(assert (=> b!3654730 (=> (not res!1483117) (not e!2262851))))

(declare-fun lt!1269115 () Rule!11356)

(declare-datatypes ((Token!10922 0))(
  ( (Token!10923 (value!185133 TokenValue!6008) (rule!8582 Rule!11356) (size!29443 Int) (originalCharacters!6492 List!38674)) )
))
(declare-datatypes ((tuple2!38416 0))(
  ( (tuple2!38417 (_1!22342 Token!10922) (_2!22342 List!38674)) )
))
(declare-fun lt!1269112 () tuple2!38416)

(declare-fun matchR!5106 (Regex!10537 List!38674) Bool)

(declare-fun list!14292 (BalanceConc!23180) List!38674)

(declare-fun charsOf!3792 (Token!10922) BalanceConc!23180)

(assert (=> b!3654730 (= res!1483117 (matchR!5106 (regex!5778 lt!1269115) (list!14292 (charsOf!3792 (_1!22342 lt!1269112)))))))

(declare-datatypes ((Option!8184 0))(
  ( (None!8183) (Some!8183 (v!38055 Rule!11356)) )
))
(declare-fun lt!1269091 () Option!8184)

(declare-fun get!12683 (Option!8184) Rule!11356)

(assert (=> b!3654730 (= lt!1269115 (get!12683 lt!1269091))))

(declare-fun b!3654731 () Bool)

(declare-fun res!1483116 () Bool)

(declare-fun e!2262861 () Bool)

(assert (=> b!3654731 (=> (not res!1483116) (not e!2262861))))

(declare-fun token!511 () Token!10922)

(declare-fun rule!403 () Rule!11356)

(assert (=> b!3654731 (= res!1483116 (= (rule!8582 token!511) rule!403))))

(declare-fun b!3654732 () Bool)

(assert (=> b!3654732 false))

(declare-datatypes ((Unit!55647 0))(
  ( (Unit!55648) )
))
(declare-fun lt!1269101 () Unit!55647)

(declare-fun call!264207 () Unit!55647)

(assert (=> b!3654732 (= lt!1269101 call!264207)))

(declare-fun call!264208 () Bool)

(assert (=> b!3654732 (not call!264208)))

(declare-fun lt!1269088 () C!21260)

(declare-fun lt!1269096 () Unit!55647)

(declare-datatypes ((LexerInterface!5367 0))(
  ( (LexerInterfaceExt!5364 (__x!24234 Int)) (Lexer!5365) )
))
(declare-fun thiss!23823 () LexerInterface!5367)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!424 (LexerInterface!5367 List!38675 List!38675 Rule!11356 Rule!11356 C!21260) Unit!55647)

(assert (=> b!3654732 (= lt!1269096 (lemmaNonSepRuleNotContainsCharContainedInASepRule!424 thiss!23823 rules!3307 rules!3307 (rule!8582 (_1!22342 lt!1269112)) anOtherTypeRule!33 lt!1269088))))

(declare-fun e!2262862 () Unit!55647)

(declare-fun Unit!55649 () Unit!55647)

(assert (=> b!3654732 (= e!2262862 Unit!55649)))

(declare-fun tp!1113834 () Bool)

(declare-fun e!2262882 () Bool)

(declare-fun b!3654733 () Bool)

(declare-fun e!2262874 () Bool)

(declare-fun inv!52004 (String!43374) Bool)

(declare-fun inv!52007 (TokenValueInjection!11444) Bool)

(assert (=> b!3654733 (= e!2262874 (and tp!1113834 (inv!52004 (tag!6548 anOtherTypeRule!33)) (inv!52007 (transformation!5778 anOtherTypeRule!33)) e!2262882))))

(declare-fun b!3654734 () Bool)

(declare-fun e!2262877 () Unit!55647)

(declare-fun e!2262872 () Unit!55647)

(assert (=> b!3654734 (= e!2262877 e!2262872)))

(declare-fun c!631658 () Bool)

(assert (=> b!3654734 (= c!631658 (not (isSeparator!5778 (rule!8582 (_1!22342 lt!1269112)))))))

(declare-fun b!3654735 () Bool)

(declare-fun e!2262875 () Bool)

(declare-fun e!2262855 () Bool)

(assert (=> b!3654735 (= e!2262875 e!2262855)))

(declare-fun res!1483110 () Bool)

(assert (=> b!3654735 (=> res!1483110 e!2262855)))

(declare-fun lt!1269092 () Int)

(declare-fun lt!1269100 () Int)

(assert (=> b!3654735 (= res!1483110 (>= lt!1269092 lt!1269100))))

(declare-fun lt!1269083 () Unit!55647)

(declare-fun e!2262880 () Unit!55647)

(assert (=> b!3654735 (= lt!1269083 e!2262880)))

(declare-fun c!631659 () Bool)

(assert (=> b!3654735 (= c!631659 (> lt!1269092 lt!1269100))))

(declare-fun lt!1269103 () BalanceConc!23180)

(declare-fun size!29444 (BalanceConc!23180) Int)

(assert (=> b!3654735 (= lt!1269100 (size!29444 lt!1269103))))

(declare-fun lt!1269106 () Unit!55647)

(assert (=> b!3654735 (= lt!1269106 e!2262877)))

(declare-fun c!631662 () Bool)

(assert (=> b!3654735 (= c!631662 (isSeparator!5778 rule!403))))

(declare-fun lt!1269076 () Unit!55647)

(declare-fun e!2262850 () Unit!55647)

(assert (=> b!3654735 (= lt!1269076 e!2262850)))

(declare-fun c!631660 () Bool)

(declare-fun lt!1269114 () List!38674)

(declare-fun lt!1269104 () C!21260)

(declare-fun contains!7622 (List!38674 C!21260) Bool)

(assert (=> b!3654735 (= c!631660 (not (contains!7622 lt!1269114 lt!1269104)))))

(declare-fun lt!1269107 () List!38674)

(declare-fun head!7798 (List!38674) C!21260)

(assert (=> b!3654735 (= lt!1269104 (head!7798 lt!1269107))))

(declare-fun b!3654736 () Bool)

(declare-fun e!2262858 () Bool)

(assert (=> b!3654736 (= e!2262858 e!2262861)))

(declare-fun res!1483104 () Bool)

(assert (=> b!3654736 (=> (not res!1483104) (not e!2262861))))

(declare-fun lt!1269081 () tuple2!38416)

(assert (=> b!3654736 (= res!1483104 (= (_1!22342 lt!1269081) token!511))))

(declare-datatypes ((Option!8185 0))(
  ( (None!8184) (Some!8184 (v!38056 tuple2!38416)) )
))
(declare-fun lt!1269094 () Option!8185)

(declare-fun get!12684 (Option!8185) tuple2!38416)

(assert (=> b!3654736 (= lt!1269081 (get!12684 lt!1269094))))

(declare-fun res!1483120 () Bool)

(assert (=> start!341886 (=> (not res!1483120) (not e!2262867))))

(get-info :version)

(assert (=> start!341886 (= res!1483120 ((_ is Lexer!5365) thiss!23823))))

(assert (=> start!341886 e!2262867))

(declare-fun e!2262857 () Bool)

(assert (=> start!341886 e!2262857))

(declare-fun e!2262863 () Bool)

(assert (=> start!341886 e!2262863))

(assert (=> start!341886 true))

(declare-fun e!2262859 () Bool)

(declare-fun inv!52008 (Token!10922) Bool)

(assert (=> start!341886 (and (inv!52008 token!511) e!2262859)))

(declare-fun e!2262876 () Bool)

(assert (=> start!341886 e!2262876))

(assert (=> start!341886 e!2262874))

(declare-fun b!3654737 () Bool)

(declare-fun res!1483112 () Bool)

(assert (=> b!3654737 (=> (not res!1483112) (not e!2262867))))

(assert (=> b!3654737 (= res!1483112 (not (= (isSeparator!5778 anOtherTypeRule!33) (isSeparator!5778 rule!403))))))

(declare-fun e!2262868 () Bool)

(assert (=> b!3654738 (= e!2262868 (and tp!1113838 tp!1113837))))

(declare-fun b!3654739 () Bool)

(assert (=> b!3654739 (= e!2262855 true)))

(declare-fun lt!1269082 () Bool)

(assert (=> b!3654739 (= lt!1269082 (contains!7621 rules!3307 (rule!8582 (_1!22342 lt!1269112))))))

(declare-fun tp!1113843 () Bool)

(declare-fun b!3654740 () Bool)

(assert (=> b!3654740 (= e!2262876 (and tp!1113843 (inv!52004 (tag!6548 rule!403)) (inv!52007 (transformation!5778 rule!403)) e!2262868))))

(declare-fun b!3654741 () Bool)

(declare-fun Unit!55650 () Unit!55647)

(assert (=> b!3654741 (= e!2262850 Unit!55650)))

(declare-fun b!3654742 () Bool)

(assert (=> b!3654742 false))

(declare-fun lt!1269072 () Unit!55647)

(declare-fun call!264203 () Unit!55647)

(assert (=> b!3654742 (= lt!1269072 call!264203)))

(declare-fun call!264204 () Bool)

(assert (=> b!3654742 (not call!264204)))

(declare-fun lt!1269090 () Unit!55647)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!306 (LexerInterface!5367 List!38675 List!38675 Rule!11356 Rule!11356 C!21260) Unit!55647)

(assert (=> b!3654742 (= lt!1269090 (lemmaSepRuleNotContainsCharContainedInANonSepRule!306 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8582 (_1!22342 lt!1269112)) lt!1269104))))

(declare-fun e!2262866 () Unit!55647)

(declare-fun Unit!55651 () Unit!55647)

(assert (=> b!3654742 (= e!2262866 Unit!55651)))

(declare-fun b!3654743 () Bool)

(declare-fun res!1483109 () Bool)

(declare-fun e!2262864 () Bool)

(assert (=> b!3654743 (=> res!1483109 e!2262864)))

(assert (=> b!3654743 (= res!1483109 (not (matchR!5106 (regex!5778 (rule!8582 (_1!22342 lt!1269112))) lt!1269107)))))

(declare-fun bm!264198 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!726 (Regex!10537 List!38674 C!21260) Unit!55647)

(assert (=> bm!264198 (= call!264207 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!726 (regex!5778 (rule!8582 (_1!22342 lt!1269112))) lt!1269107 lt!1269088))))

(declare-fun bm!264199 () Bool)

(declare-fun call!264205 () List!38674)

(assert (=> bm!264199 (= call!264208 (contains!7622 call!264205 lt!1269088))))

(assert (=> b!3654744 (= e!2262882 (and tp!1113839 tp!1113845))))

(declare-fun b!3654745 () Bool)

(assert (=> b!3654745 (= e!2262867 e!2262858)))

(declare-fun res!1483108 () Bool)

(assert (=> b!3654745 (=> (not res!1483108) (not e!2262858))))

(declare-fun isDefined!6416 (Option!8185) Bool)

(assert (=> b!3654745 (= res!1483108 (isDefined!6416 lt!1269094))))

(declare-fun lt!1269074 () List!38674)

(declare-fun maxPrefix!2901 (LexerInterface!5367 List!38675 List!38674) Option!8185)

(assert (=> b!3654745 (= lt!1269094 (maxPrefix!2901 thiss!23823 rules!3307 lt!1269074))))

(assert (=> b!3654745 (= lt!1269074 (list!14292 lt!1269103))))

(assert (=> b!3654745 (= lt!1269103 (charsOf!3792 token!511))))

(declare-fun b!3654746 () Bool)

(assert (=> b!3654746 (= e!2262851 (= (rule!8582 (_1!22342 lt!1269112)) lt!1269115))))

(declare-fun b!3654747 () Bool)

(declare-fun res!1483113 () Bool)

(assert (=> b!3654747 (=> (not res!1483113) (not e!2262867))))

(assert (=> b!3654747 (= res!1483113 (contains!7621 rules!3307 rule!403))))

(declare-fun b!3654748 () Bool)

(declare-fun res!1483118 () Bool)

(declare-fun e!2262853 () Bool)

(assert (=> b!3654748 (=> res!1483118 e!2262853)))

(declare-fun suffix!1395 () List!38674)

(declare-fun isEmpty!22852 (List!38674) Bool)

(assert (=> b!3654748 (= res!1483118 (isEmpty!22852 suffix!1395))))

(declare-fun b!3654749 () Bool)

(declare-fun res!1483114 () Bool)

(assert (=> b!3654749 (=> res!1483114 e!2262852)))

(declare-fun usedCharacters!990 (Regex!10537) List!38674)

(assert (=> b!3654749 (= res!1483114 (not (contains!7622 (usedCharacters!990 (regex!5778 anOtherTypeRule!33)) lt!1269088)))))

(declare-fun e!2262854 () Bool)

(declare-fun tp!1113844 () Bool)

(declare-fun b!3654750 () Bool)

(declare-fun e!2262860 () Bool)

(assert (=> b!3654750 (= e!2262860 (and tp!1113844 (inv!52004 (tag!6548 (h!43971 rules!3307))) (inv!52007 (transformation!5778 (h!43971 rules!3307))) e!2262854))))

(declare-fun b!3654751 () Bool)

(declare-fun tp_is_empty!18157 () Bool)

(declare-fun tp!1113842 () Bool)

(assert (=> b!3654751 (= e!2262863 (and tp_is_empty!18157 tp!1113842))))

(declare-fun b!3654752 () Bool)

(assert (=> b!3654752 false))

(declare-fun lt!1269102 () Unit!55647)

(assert (=> b!3654752 (= lt!1269102 call!264207)))

(assert (=> b!3654752 (not call!264208)))

(declare-fun lt!1269113 () Unit!55647)

(assert (=> b!3654752 (= lt!1269113 (lemmaSepRuleNotContainsCharContainedInANonSepRule!306 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8582 (_1!22342 lt!1269112)) lt!1269088))))

(declare-fun Unit!55652 () Unit!55647)

(assert (=> b!3654752 (= e!2262862 Unit!55652)))

(declare-fun b!3654753 () Bool)

(declare-fun Unit!55653 () Unit!55647)

(assert (=> b!3654753 (= e!2262880 Unit!55653)))

(declare-fun b!3654754 () Bool)

(declare-fun res!1483107 () Bool)

(assert (=> b!3654754 (=> (not res!1483107) (not e!2262867))))

(declare-fun isEmpty!22853 (List!38675) Bool)

(assert (=> b!3654754 (= res!1483107 (not (isEmpty!22853 rules!3307)))))

(declare-fun b!3654755 () Bool)

(declare-fun Unit!55654 () Unit!55647)

(assert (=> b!3654755 (= e!2262866 Unit!55654)))

(declare-fun e!2262878 () Bool)

(assert (=> b!3654756 (= e!2262878 (and tp!1113832 tp!1113840))))

(declare-fun b!3654757 () Bool)

(assert (=> b!3654757 false))

(declare-fun lt!1269116 () Unit!55647)

(assert (=> b!3654757 (= lt!1269116 call!264203)))

(assert (=> b!3654757 (not call!264204)))

(declare-fun lt!1269086 () Unit!55647)

(assert (=> b!3654757 (= lt!1269086 (lemmaNonSepRuleNotContainsCharContainedInASepRule!424 thiss!23823 rules!3307 rules!3307 (rule!8582 (_1!22342 lt!1269112)) rule!403 lt!1269104))))

(declare-fun Unit!55655 () Unit!55647)

(assert (=> b!3654757 (= e!2262872 Unit!55655)))

(declare-fun b!3654758 () Bool)

(assert (=> b!3654758 (= e!2262877 e!2262866)))

(declare-fun c!631663 () Bool)

(assert (=> b!3654758 (= c!631663 (isSeparator!5778 (rule!8582 (_1!22342 lt!1269112))))))

(declare-fun b!3654759 () Bool)

(declare-fun e!2262870 () Bool)

(declare-fun tp!1113833 () Bool)

(assert (=> b!3654759 (= e!2262870 (and tp!1113833 (inv!52004 (tag!6548 (rule!8582 token!511))) (inv!52007 (transformation!5778 (rule!8582 token!511))) e!2262878))))

(assert (=> b!3654760 (= e!2262854 (and tp!1113835 tp!1113846))))

(declare-fun b!3654761 () Bool)

(declare-fun res!1483106 () Bool)

(assert (=> b!3654761 (=> (not res!1483106) (not e!2262867))))

(declare-fun rulesInvariant!4764 (LexerInterface!5367 List!38675) Bool)

(assert (=> b!3654761 (= res!1483106 (rulesInvariant!4764 thiss!23823 rules!3307))))

(declare-fun bm!264200 () Bool)

(declare-fun call!264206 () List!38674)

(assert (=> bm!264200 (= call!264204 (contains!7622 call!264206 lt!1269104))))

(declare-fun bm!264201 () Bool)

(assert (=> bm!264201 (= call!264206 (usedCharacters!990 (regex!5778 (rule!8582 (_1!22342 lt!1269112)))))))

(declare-fun b!3654762 () Bool)

(assert (=> b!3654762 (= e!2262853 e!2262852)))

(declare-fun res!1483103 () Bool)

(assert (=> b!3654762 (=> res!1483103 e!2262852)))

(assert (=> b!3654762 (= res!1483103 (contains!7622 lt!1269114 lt!1269088))))

(assert (=> b!3654762 (= lt!1269088 (head!7798 suffix!1395))))

(assert (=> b!3654762 (= lt!1269114 (usedCharacters!990 (regex!5778 rule!403)))))

(declare-fun bm!264202 () Bool)

(assert (=> bm!264202 (= call!264205 (usedCharacters!990 (regex!5778 (rule!8582 (_1!22342 lt!1269112)))))))

(declare-fun b!3654763 () Bool)

(declare-fun res!1483102 () Bool)

(assert (=> b!3654763 (=> (not res!1483102) (not e!2262861))))

(assert (=> b!3654763 (= res!1483102 (isEmpty!22852 (_2!22342 lt!1269081)))))

(declare-fun b!3654764 () Bool)

(declare-fun e!2262873 () Bool)

(assert (=> b!3654764 (= e!2262873 e!2262875)))

(declare-fun res!1483121 () Bool)

(assert (=> b!3654764 (=> res!1483121 e!2262875)))

(declare-fun lt!1269080 () List!38674)

(declare-fun lt!1269099 () Option!8185)

(assert (=> b!3654764 (= res!1483121 (or (not (= lt!1269080 (_2!22342 lt!1269112))) (not (= lt!1269099 (Some!8184 (tuple2!38417 (_1!22342 lt!1269112) lt!1269080))))))))

(assert (=> b!3654764 (= (_2!22342 lt!1269112) lt!1269080)))

(declare-fun lt!1269105 () List!38674)

(declare-fun lt!1269110 () Unit!55647)

(declare-fun lemmaSamePrefixThenSameSuffix!1468 (List!38674 List!38674 List!38674 List!38674 List!38674) Unit!55647)

(assert (=> b!3654764 (= lt!1269110 (lemmaSamePrefixThenSameSuffix!1468 lt!1269107 (_2!22342 lt!1269112) lt!1269107 lt!1269080 lt!1269105))))

(declare-fun getSuffix!1694 (List!38674 List!38674) List!38674)

(assert (=> b!3654764 (= lt!1269080 (getSuffix!1694 lt!1269105 lt!1269107))))

(declare-fun lt!1269078 () TokenValue!6008)

(declare-fun lt!1269077 () Int)

(assert (=> b!3654764 (= lt!1269099 (Some!8184 (tuple2!38417 (Token!10923 lt!1269078 (rule!8582 (_1!22342 lt!1269112)) lt!1269077 lt!1269107) (_2!22342 lt!1269112))))))

(declare-fun maxPrefixOneRule!2039 (LexerInterface!5367 Rule!11356 List!38674) Option!8185)

(assert (=> b!3654764 (= lt!1269099 (maxPrefixOneRule!2039 thiss!23823 (rule!8582 (_1!22342 lt!1269112)) lt!1269105))))

(declare-fun size!29445 (List!38674) Int)

(assert (=> b!3654764 (= lt!1269077 (size!29445 lt!1269107))))

(declare-fun apply!9280 (TokenValueInjection!11444 BalanceConc!23180) TokenValue!6008)

(declare-fun seqFromList!4327 (List!38674) BalanceConc!23180)

(assert (=> b!3654764 (= lt!1269078 (apply!9280 (transformation!5778 (rule!8582 (_1!22342 lt!1269112))) (seqFromList!4327 lt!1269107)))))

(declare-fun lt!1269075 () Unit!55647)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1095 (LexerInterface!5367 List!38675 List!38674 List!38674 List!38674 Rule!11356) Unit!55647)

(assert (=> b!3654764 (= lt!1269075 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1095 thiss!23823 rules!3307 lt!1269107 lt!1269105 (_2!22342 lt!1269112) (rule!8582 (_1!22342 lt!1269112))))))

(declare-fun b!3654765 () Bool)

(assert (=> b!3654765 (= e!2262861 (not e!2262853))))

(declare-fun res!1483105 () Bool)

(assert (=> b!3654765 (=> res!1483105 e!2262853)))

(assert (=> b!3654765 (= res!1483105 (not (matchR!5106 (regex!5778 rule!403) lt!1269074)))))

(declare-fun ruleValid!2042 (LexerInterface!5367 Rule!11356) Bool)

(assert (=> b!3654765 (ruleValid!2042 thiss!23823 rule!403)))

(declare-fun lt!1269084 () Unit!55647)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1196 (LexerInterface!5367 Rule!11356 List!38675) Unit!55647)

(assert (=> b!3654765 (= lt!1269084 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1196 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3654766 () Bool)

(declare-fun tp!1113836 () Bool)

(declare-fun inv!21 (TokenValue!6008) Bool)

(assert (=> b!3654766 (= e!2262859 (and (inv!21 (value!185133 token!511)) e!2262870 tp!1113836))))

(declare-fun b!3654767 () Bool)

(assert (=> b!3654767 (= e!2262864 e!2262873)))

(declare-fun res!1483119 () Bool)

(assert (=> b!3654767 (=> res!1483119 e!2262873)))

(declare-fun lt!1269093 () TokenValue!6008)

(declare-fun lt!1269089 () Option!8185)

(assert (=> b!3654767 (= res!1483119 (not (= lt!1269089 (Some!8184 (tuple2!38417 (Token!10923 lt!1269093 (rule!8582 (_1!22342 lt!1269112)) lt!1269092 lt!1269107) (_2!22342 lt!1269112))))))))

(declare-fun lt!1269097 () BalanceConc!23180)

(assert (=> b!3654767 (= lt!1269092 (size!29444 lt!1269097))))

(assert (=> b!3654767 (= lt!1269093 (apply!9280 (transformation!5778 (rule!8582 (_1!22342 lt!1269112))) lt!1269097))))

(declare-fun lt!1269098 () Unit!55647)

(declare-fun lemmaCharactersSize!823 (Token!10922) Unit!55647)

(assert (=> b!3654767 (= lt!1269098 (lemmaCharactersSize!823 (_1!22342 lt!1269112)))))

(declare-fun lt!1269108 () Unit!55647)

(declare-fun lemmaEqSameImage!961 (TokenValueInjection!11444 BalanceConc!23180 BalanceConc!23180) Unit!55647)

(assert (=> b!3654767 (= lt!1269108 (lemmaEqSameImage!961 (transformation!5778 (rule!8582 (_1!22342 lt!1269112))) lt!1269097 (seqFromList!4327 (originalCharacters!6492 (_1!22342 lt!1269112)))))))

(declare-fun lt!1269073 () Unit!55647)

(declare-fun lemmaSemiInverse!1527 (TokenValueInjection!11444 BalanceConc!23180) Unit!55647)

(assert (=> b!3654767 (= lt!1269073 (lemmaSemiInverse!1527 (transformation!5778 (rule!8582 (_1!22342 lt!1269112))) lt!1269097))))

(declare-fun b!3654768 () Bool)

(declare-fun Unit!55656 () Unit!55647)

(assert (=> b!3654768 (= e!2262850 Unit!55656)))

(declare-fun lt!1269085 () Unit!55647)

(assert (=> b!3654768 (= lt!1269085 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!726 (regex!5778 rule!403) lt!1269074 lt!1269104))))

(assert (=> b!3654768 false))

(declare-fun bm!264203 () Bool)

(assert (=> bm!264203 (= call!264203 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!726 (regex!5778 (rule!8582 (_1!22342 lt!1269112))) lt!1269107 lt!1269104))))

(declare-fun b!3654769 () Bool)

(declare-fun tp!1113841 () Bool)

(assert (=> b!3654769 (= e!2262857 (and e!2262860 tp!1113841))))

(declare-fun b!3654770 () Bool)

(assert (=> b!3654770 (= e!2262880 e!2262862)))

(declare-fun lt!1269109 () Unit!55647)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!86 (List!38674 List!38674 List!38674 List!38674) Unit!55647)

(assert (=> b!3654770 (= lt!1269109 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!86 lt!1269074 suffix!1395 lt!1269107 lt!1269105))))

(assert (=> b!3654770 (contains!7622 lt!1269107 lt!1269088)))

(declare-fun c!631661 () Bool)

(assert (=> b!3654770 (= c!631661 (isSeparator!5778 rule!403))))

(declare-fun b!3654771 () Bool)

(assert (=> b!3654771 (= e!2262852 e!2262864)))

(declare-fun res!1483115 () Bool)

(assert (=> b!3654771 (=> res!1483115 e!2262864)))

(declare-fun isPrefix!3141 (List!38674 List!38674) Bool)

(assert (=> b!3654771 (= res!1483115 (not (isPrefix!3141 lt!1269107 lt!1269105)))))

(declare-fun ++!9594 (List!38674 List!38674) List!38674)

(assert (=> b!3654771 (isPrefix!3141 lt!1269107 (++!9594 lt!1269107 (_2!22342 lt!1269112)))))

(declare-fun lt!1269111 () Unit!55647)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2060 (List!38674 List!38674) Unit!55647)

(assert (=> b!3654771 (= lt!1269111 (lemmaConcatTwoListThenFirstIsPrefix!2060 lt!1269107 (_2!22342 lt!1269112)))))

(assert (=> b!3654771 (= lt!1269107 (list!14292 lt!1269097))))

(assert (=> b!3654771 (= lt!1269097 (charsOf!3792 (_1!22342 lt!1269112)))))

(assert (=> b!3654771 e!2262869))

(declare-fun res!1483122 () Bool)

(assert (=> b!3654771 (=> (not res!1483122) (not e!2262869))))

(declare-fun isDefined!6417 (Option!8184) Bool)

(assert (=> b!3654771 (= res!1483122 (isDefined!6417 lt!1269091))))

(declare-fun getRuleFromTag!1382 (LexerInterface!5367 List!38675 String!43374) Option!8184)

(assert (=> b!3654771 (= lt!1269091 (getRuleFromTag!1382 thiss!23823 rules!3307 (tag!6548 (rule!8582 (_1!22342 lt!1269112)))))))

(declare-fun lt!1269087 () Unit!55647)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1382 (LexerInterface!5367 List!38675 List!38674 Token!10922) Unit!55647)

(assert (=> b!3654771 (= lt!1269087 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1382 thiss!23823 rules!3307 lt!1269105 (_1!22342 lt!1269112)))))

(assert (=> b!3654771 (= lt!1269112 (get!12684 lt!1269089))))

(declare-fun lt!1269079 () Unit!55647)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1045 (LexerInterface!5367 List!38675 List!38674 List!38674) Unit!55647)

(assert (=> b!3654771 (= lt!1269079 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1045 thiss!23823 rules!3307 lt!1269074 suffix!1395))))

(assert (=> b!3654771 (= lt!1269089 (maxPrefix!2901 thiss!23823 rules!3307 lt!1269105))))

(assert (=> b!3654771 (isPrefix!3141 lt!1269074 lt!1269105)))

(declare-fun lt!1269095 () Unit!55647)

(assert (=> b!3654771 (= lt!1269095 (lemmaConcatTwoListThenFirstIsPrefix!2060 lt!1269074 suffix!1395))))

(assert (=> b!3654771 (= lt!1269105 (++!9594 lt!1269074 suffix!1395))))

(declare-fun b!3654772 () Bool)

(declare-fun Unit!55657 () Unit!55647)

(assert (=> b!3654772 (= e!2262872 Unit!55657)))

(assert (= (and start!341886 res!1483120) b!3654754))

(assert (= (and b!3654754 res!1483107) b!3654761))

(assert (= (and b!3654761 res!1483106) b!3654747))

(assert (= (and b!3654747 res!1483113) b!3654728))

(assert (= (and b!3654728 res!1483111) b!3654737))

(assert (= (and b!3654737 res!1483112) b!3654745))

(assert (= (and b!3654745 res!1483108) b!3654736))

(assert (= (and b!3654736 res!1483104) b!3654763))

(assert (= (and b!3654763 res!1483102) b!3654731))

(assert (= (and b!3654731 res!1483116) b!3654765))

(assert (= (and b!3654765 (not res!1483105)) b!3654748))

(assert (= (and b!3654748 (not res!1483118)) b!3654762))

(assert (= (and b!3654762 (not res!1483103)) b!3654749))

(assert (= (and b!3654749 (not res!1483114)) b!3654729))

(assert (= (and b!3654729 (not res!1483101)) b!3654771))

(assert (= (and b!3654771 res!1483122) b!3654730))

(assert (= (and b!3654730 res!1483117) b!3654746))

(assert (= (and b!3654771 (not res!1483115)) b!3654743))

(assert (= (and b!3654743 (not res!1483109)) b!3654767))

(assert (= (and b!3654767 (not res!1483119)) b!3654764))

(assert (= (and b!3654764 (not res!1483121)) b!3654735))

(assert (= (and b!3654735 c!631660) b!3654768))

(assert (= (and b!3654735 (not c!631660)) b!3654741))

(assert (= (and b!3654735 c!631662) b!3654734))

(assert (= (and b!3654735 (not c!631662)) b!3654758))

(assert (= (and b!3654734 c!631658) b!3654757))

(assert (= (and b!3654734 (not c!631658)) b!3654772))

(assert (= (and b!3654758 c!631663) b!3654742))

(assert (= (and b!3654758 (not c!631663)) b!3654755))

(assert (= (or b!3654757 b!3654742) bm!264203))

(assert (= (or b!3654757 b!3654742) bm!264201))

(assert (= (or b!3654757 b!3654742) bm!264200))

(assert (= (and b!3654735 c!631659) b!3654770))

(assert (= (and b!3654735 (not c!631659)) b!3654753))

(assert (= (and b!3654770 c!631661) b!3654752))

(assert (= (and b!3654770 (not c!631661)) b!3654732))

(assert (= (or b!3654752 b!3654732) bm!264198))

(assert (= (or b!3654752 b!3654732) bm!264202))

(assert (= (or b!3654752 b!3654732) bm!264199))

(assert (= (and b!3654735 (not res!1483110)) b!3654739))

(assert (= b!3654750 b!3654760))

(assert (= b!3654769 b!3654750))

(assert (= (and start!341886 ((_ is Cons!38551) rules!3307)) b!3654769))

(assert (= (and start!341886 ((_ is Cons!38550) suffix!1395)) b!3654751))

(assert (= b!3654759 b!3654756))

(assert (= b!3654766 b!3654759))

(assert (= start!341886 b!3654766))

(assert (= b!3654740 b!3654738))

(assert (= start!341886 b!3654740))

(assert (= b!3654733 b!3654744))

(assert (= start!341886 b!3654733))

(declare-fun m!4159985 () Bool)

(assert (=> bm!264202 m!4159985))

(declare-fun m!4159987 () Bool)

(assert (=> b!3654752 m!4159987))

(declare-fun m!4159989 () Bool)

(assert (=> b!3654745 m!4159989))

(declare-fun m!4159991 () Bool)

(assert (=> b!3654745 m!4159991))

(declare-fun m!4159993 () Bool)

(assert (=> b!3654745 m!4159993))

(declare-fun m!4159995 () Bool)

(assert (=> b!3654745 m!4159995))

(declare-fun m!4159997 () Bool)

(assert (=> b!3654759 m!4159997))

(declare-fun m!4159999 () Bool)

(assert (=> b!3654759 m!4159999))

(declare-fun m!4160001 () Bool)

(assert (=> b!3654768 m!4160001))

(declare-fun m!4160003 () Bool)

(assert (=> b!3654729 m!4160003))

(declare-fun m!4160005 () Bool)

(assert (=> b!3654743 m!4160005))

(declare-fun m!4160007 () Bool)

(assert (=> start!341886 m!4160007))

(declare-fun m!4160009 () Bool)

(assert (=> b!3654771 m!4160009))

(declare-fun m!4160011 () Bool)

(assert (=> b!3654771 m!4160011))

(declare-fun m!4160013 () Bool)

(assert (=> b!3654771 m!4160013))

(declare-fun m!4160015 () Bool)

(assert (=> b!3654771 m!4160015))

(declare-fun m!4160017 () Bool)

(assert (=> b!3654771 m!4160017))

(declare-fun m!4160019 () Bool)

(assert (=> b!3654771 m!4160019))

(declare-fun m!4160021 () Bool)

(assert (=> b!3654771 m!4160021))

(declare-fun m!4160023 () Bool)

(assert (=> b!3654771 m!4160023))

(declare-fun m!4160025 () Bool)

(assert (=> b!3654771 m!4160025))

(declare-fun m!4160027 () Bool)

(assert (=> b!3654771 m!4160027))

(declare-fun m!4160029 () Bool)

(assert (=> b!3654771 m!4160029))

(declare-fun m!4160031 () Bool)

(assert (=> b!3654771 m!4160031))

(declare-fun m!4160033 () Bool)

(assert (=> b!3654771 m!4160033))

(assert (=> b!3654771 m!4160021))

(declare-fun m!4160035 () Bool)

(assert (=> b!3654771 m!4160035))

(declare-fun m!4160037 () Bool)

(assert (=> b!3654771 m!4160037))

(assert (=> b!3654730 m!4160031))

(assert (=> b!3654730 m!4160031))

(declare-fun m!4160039 () Bool)

(assert (=> b!3654730 m!4160039))

(assert (=> b!3654730 m!4160039))

(declare-fun m!4160041 () Bool)

(assert (=> b!3654730 m!4160041))

(declare-fun m!4160043 () Bool)

(assert (=> b!3654730 m!4160043))

(declare-fun m!4160045 () Bool)

(assert (=> b!3654735 m!4160045))

(declare-fun m!4160047 () Bool)

(assert (=> b!3654735 m!4160047))

(declare-fun m!4160049 () Bool)

(assert (=> b!3654735 m!4160049))

(declare-fun m!4160051 () Bool)

(assert (=> b!3654764 m!4160051))

(declare-fun m!4160053 () Bool)

(assert (=> b!3654764 m!4160053))

(declare-fun m!4160055 () Bool)

(assert (=> b!3654764 m!4160055))

(declare-fun m!4160057 () Bool)

(assert (=> b!3654764 m!4160057))

(declare-fun m!4160059 () Bool)

(assert (=> b!3654764 m!4160059))

(declare-fun m!4160061 () Bool)

(assert (=> b!3654764 m!4160061))

(assert (=> b!3654764 m!4160055))

(declare-fun m!4160063 () Bool)

(assert (=> b!3654764 m!4160063))

(declare-fun m!4160065 () Bool)

(assert (=> b!3654770 m!4160065))

(declare-fun m!4160067 () Bool)

(assert (=> b!3654770 m!4160067))

(declare-fun m!4160069 () Bool)

(assert (=> b!3654733 m!4160069))

(declare-fun m!4160071 () Bool)

(assert (=> b!3654733 m!4160071))

(declare-fun m!4160073 () Bool)

(assert (=> b!3654761 m!4160073))

(declare-fun m!4160075 () Bool)

(assert (=> b!3654728 m!4160075))

(declare-fun m!4160077 () Bool)

(assert (=> bm!264200 m!4160077))

(declare-fun m!4160079 () Bool)

(assert (=> b!3654736 m!4160079))

(declare-fun m!4160081 () Bool)

(assert (=> b!3654739 m!4160081))

(declare-fun m!4160083 () Bool)

(assert (=> b!3654732 m!4160083))

(declare-fun m!4160085 () Bool)

(assert (=> b!3654757 m!4160085))

(declare-fun m!4160087 () Bool)

(assert (=> b!3654763 m!4160087))

(declare-fun m!4160089 () Bool)

(assert (=> bm!264203 m!4160089))

(declare-fun m!4160091 () Bool)

(assert (=> b!3654766 m!4160091))

(declare-fun m!4160093 () Bool)

(assert (=> b!3654742 m!4160093))

(declare-fun m!4160095 () Bool)

(assert (=> b!3654754 m!4160095))

(declare-fun m!4160097 () Bool)

(assert (=> b!3654748 m!4160097))

(declare-fun m!4160099 () Bool)

(assert (=> b!3654767 m!4160099))

(declare-fun m!4160101 () Bool)

(assert (=> b!3654767 m!4160101))

(declare-fun m!4160103 () Bool)

(assert (=> b!3654767 m!4160103))

(declare-fun m!4160105 () Bool)

(assert (=> b!3654767 m!4160105))

(assert (=> b!3654767 m!4160101))

(declare-fun m!4160107 () Bool)

(assert (=> b!3654767 m!4160107))

(declare-fun m!4160109 () Bool)

(assert (=> b!3654767 m!4160109))

(declare-fun m!4160111 () Bool)

(assert (=> b!3654747 m!4160111))

(declare-fun m!4160113 () Bool)

(assert (=> b!3654750 m!4160113))

(declare-fun m!4160115 () Bool)

(assert (=> b!3654750 m!4160115))

(declare-fun m!4160117 () Bool)

(assert (=> bm!264199 m!4160117))

(declare-fun m!4160119 () Bool)

(assert (=> b!3654765 m!4160119))

(declare-fun m!4160121 () Bool)

(assert (=> b!3654765 m!4160121))

(declare-fun m!4160123 () Bool)

(assert (=> b!3654765 m!4160123))

(declare-fun m!4160125 () Bool)

(assert (=> b!3654762 m!4160125))

(declare-fun m!4160127 () Bool)

(assert (=> b!3654762 m!4160127))

(declare-fun m!4160129 () Bool)

(assert (=> b!3654762 m!4160129))

(declare-fun m!4160131 () Bool)

(assert (=> bm!264198 m!4160131))

(assert (=> bm!264201 m!4159985))

(declare-fun m!4160133 () Bool)

(assert (=> b!3654749 m!4160133))

(assert (=> b!3654749 m!4160133))

(declare-fun m!4160135 () Bool)

(assert (=> b!3654749 m!4160135))

(declare-fun m!4160137 () Bool)

(assert (=> b!3654740 m!4160137))

(declare-fun m!4160139 () Bool)

(assert (=> b!3654740 m!4160139))

(check-sat b_and!270681 (not b!3654739) (not b_next!96973) (not b!3654742) b_and!270671 b_and!270675 (not b!3654747) (not b!3654770) (not b!3654754) (not b!3654767) (not b!3654743) (not bm!264199) (not bm!264198) b_and!270673 (not b!3654733) (not b_next!96961) (not b!3654771) (not b!3654736) (not b!3654765) (not b_next!96963) (not b!3654751) (not b_next!96969) (not b!3654749) (not b!3654766) (not b!3654757) b_and!270667 b_and!270679 (not start!341886) (not b!3654761) (not b!3654728) tp_is_empty!18157 (not b_next!96967) b_and!270677 (not b!3654732) (not b_next!96971) (not bm!264201) (not b!3654729) (not b_next!96965) (not bm!264200) (not b!3654745) (not b!3654762) (not b!3654763) (not b!3654740) (not b!3654768) (not b!3654748) (not b!3654769) (not b!3654752) (not b!3654735) (not b_next!96975) (not b!3654730) (not b!3654764) (not b!3654759) (not bm!264202) b_and!270669 (not b!3654750) (not bm!264203))
(check-sat (not b_next!96963) (not b_next!96969) b_and!270681 (not b_next!96965) (not b_next!96973) (not b_next!96975) b_and!270669 b_and!270671 b_and!270675 b_and!270673 (not b_next!96961) b_and!270667 b_and!270679 (not b_next!96967) b_and!270677 (not b_next!96971))
