; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190068 () Bool)

(assert start!190068)

(declare-fun b!1895848 () Bool)

(declare-fun b_free!52945 () Bool)

(declare-fun b_next!53649 () Bool)

(assert (=> b!1895848 (= b_free!52945 (not b_next!53649))))

(declare-fun tp!541081 () Bool)

(declare-fun b_and!146243 () Bool)

(assert (=> b!1895848 (= tp!541081 b_and!146243)))

(declare-fun b_free!52947 () Bool)

(declare-fun b_next!53651 () Bool)

(assert (=> b!1895848 (= b_free!52947 (not b_next!53651))))

(declare-fun tp!541086 () Bool)

(declare-fun b_and!146245 () Bool)

(assert (=> b!1895848 (= tp!541086 b_and!146245)))

(declare-fun b!1895855 () Bool)

(declare-fun b_free!52949 () Bool)

(declare-fun b_next!53653 () Bool)

(assert (=> b!1895855 (= b_free!52949 (not b_next!53653))))

(declare-fun tp!541092 () Bool)

(declare-fun b_and!146247 () Bool)

(assert (=> b!1895855 (= tp!541092 b_and!146247)))

(declare-fun b_free!52951 () Bool)

(declare-fun b_next!53655 () Bool)

(assert (=> b!1895855 (= b_free!52951 (not b_next!53655))))

(declare-fun tp!541089 () Bool)

(declare-fun b_and!146249 () Bool)

(assert (=> b!1895855 (= tp!541089 b_and!146249)))

(declare-fun b!1895856 () Bool)

(declare-fun b_free!52953 () Bool)

(declare-fun b_next!53657 () Bool)

(assert (=> b!1895856 (= b_free!52953 (not b_next!53657))))

(declare-fun tp!541084 () Bool)

(declare-fun b_and!146251 () Bool)

(assert (=> b!1895856 (= tp!541084 b_and!146251)))

(declare-fun b_free!52955 () Bool)

(declare-fun b_next!53659 () Bool)

(assert (=> b!1895856 (= b_free!52955 (not b_next!53659))))

(declare-fun tp!541080 () Bool)

(declare-fun b_and!146253 () Bool)

(assert (=> b!1895856 (= tp!541080 b_and!146253)))

(declare-fun tp!541082 () Bool)

(declare-fun e!1210327 () Bool)

(declare-fun b!1895839 () Bool)

(declare-fun e!1210337 () Bool)

(declare-datatypes ((List!21340 0))(
  ( (Nil!21258) (Cons!21258 (h!26659 (_ BitVec 16)) (t!176183 List!21340)) )
))
(declare-datatypes ((TokenValue!3910 0))(
  ( (FloatLiteralValue!7820 (text!27815 List!21340)) (TokenValueExt!3909 (__x!13318 Int)) (Broken!19550 (value!119124 List!21340)) (Object!3991) (End!3910) (Def!3910) (Underscore!3910) (Match!3910) (Else!3910) (Error!3910) (Case!3910) (If!3910) (Extends!3910) (Abstract!3910) (Class!3910) (Val!3910) (DelimiterValue!7820 (del!3970 List!21340)) (KeywordValue!3916 (value!119125 List!21340)) (CommentValue!7820 (value!119126 List!21340)) (WhitespaceValue!7820 (value!119127 List!21340)) (IndentationValue!3910 (value!119128 List!21340)) (String!24667) (Int32!3910) (Broken!19551 (value!119129 List!21340)) (Boolean!3911) (Unit!35617) (OperatorValue!3913 (op!3970 List!21340)) (IdentifierValue!7820 (value!119130 List!21340)) (IdentifierValue!7821 (value!119131 List!21340)) (WhitespaceValue!7821 (value!119132 List!21340)) (True!7820) (False!7820) (Broken!19552 (value!119133 List!21340)) (Broken!19553 (value!119134 List!21340)) (True!7821) (RightBrace!3910) (RightBracket!3910) (Colon!3910) (Null!3910) (Comma!3910) (LeftBracket!3910) (False!7821) (LeftBrace!3910) (ImaginaryLiteralValue!3910 (text!27816 List!21340)) (StringLiteralValue!11730 (value!119135 List!21340)) (EOFValue!3910 (value!119136 List!21340)) (IdentValue!3910 (value!119137 List!21340)) (DelimiterValue!7821 (value!119138 List!21340)) (DedentValue!3910 (value!119139 List!21340)) (NewLineValue!3910 (value!119140 List!21340)) (IntegerValue!11730 (value!119141 (_ BitVec 32)) (text!27817 List!21340)) (IntegerValue!11731 (value!119142 Int) (text!27818 List!21340)) (Times!3910) (Or!3910) (Equal!3910) (Minus!3910) (Broken!19554 (value!119143 List!21340)) (And!3910) (Div!3910) (LessEqual!3910) (Mod!3910) (Concat!9109) (Not!3910) (Plus!3910) (SpaceValue!3910 (value!119144 List!21340)) (IntegerValue!11732 (value!119145 Int) (text!27819 List!21340)) (StringLiteralValue!11731 (text!27820 List!21340)) (FloatLiteralValue!7821 (text!27821 List!21340)) (BytesLiteralValue!3910 (value!119146 List!21340)) (CommentValue!7821 (value!119147 List!21340)) (StringLiteralValue!11732 (value!119148 List!21340)) (ErrorTokenValue!3910 (msg!3971 List!21340)) )
))
(declare-datatypes ((C!10544 0))(
  ( (C!10545 (val!6224 Int)) )
))
(declare-datatypes ((List!21341 0))(
  ( (Nil!21259) (Cons!21259 (h!26660 C!10544) (t!176184 List!21341)) )
))
(declare-datatypes ((String!24668 0))(
  ( (String!24669 (value!119149 String)) )
))
(declare-datatypes ((Regex!5199 0))(
  ( (ElementMatch!5199 (c!309269 C!10544)) (Concat!9110 (regOne!10910 Regex!5199) (regTwo!10910 Regex!5199)) (EmptyExpr!5199) (Star!5199 (reg!5528 Regex!5199)) (EmptyLang!5199) (Union!5199 (regOne!10911 Regex!5199) (regTwo!10911 Regex!5199)) )
))
(declare-datatypes ((IArray!14159 0))(
  ( (IArray!14160 (innerList!7137 List!21341)) )
))
(declare-datatypes ((Conc!7077 0))(
  ( (Node!7077 (left!17050 Conc!7077) (right!17380 Conc!7077) (csize!14384 Int) (cheight!7288 Int)) (Leaf!10427 (xs!9971 IArray!14159) (csize!14385 Int)) (Empty!7077) )
))
(declare-datatypes ((BalanceConc!13970 0))(
  ( (BalanceConc!13971 (c!309270 Conc!7077)) )
))
(declare-datatypes ((TokenValueInjection!7404 0))(
  ( (TokenValueInjection!7405 (toValue!5391 Int) (toChars!5250 Int)) )
))
(declare-datatypes ((Rule!7348 0))(
  ( (Rule!7349 (regex!3774 Regex!5199) (tag!4190 String!24668) (isSeparator!3774 Bool) (transformation!3774 TokenValueInjection!7404)) )
))
(declare-datatypes ((Token!7100 0))(
  ( (Token!7101 (value!119150 TokenValue!3910) (rule!5967 Rule!7348) (size!16848 Int) (originalCharacters!4581 List!21341)) )
))
(declare-datatypes ((List!21342 0))(
  ( (Nil!21260) (Cons!21260 (h!26661 Token!7100) (t!176185 List!21342)) )
))
(declare-fun tokens!598 () List!21342)

(declare-fun inv!28361 (Token!7100) Bool)

(assert (=> b!1895839 (= e!1210337 (and (inv!28361 (h!26661 tokens!598)) e!1210327 tp!541082))))

(declare-fun e!1210336 () Bool)

(declare-fun b!1895840 () Bool)

(declare-fun e!1210332 () Bool)

(declare-fun separatorToken!354 () Token!7100)

(declare-fun tp!541091 () Bool)

(declare-fun inv!28358 (String!24668) Bool)

(declare-fun inv!28362 (TokenValueInjection!7404) Bool)

(assert (=> b!1895840 (= e!1210336 (and tp!541091 (inv!28358 (tag!4190 (rule!5967 separatorToken!354))) (inv!28362 (transformation!3774 (rule!5967 separatorToken!354))) e!1210332))))

(declare-fun tp!541088 () Bool)

(declare-fun b!1895841 () Bool)

(declare-fun e!1210334 () Bool)

(declare-fun inv!21 (TokenValue!3910) Bool)

(assert (=> b!1895841 (= e!1210327 (and (inv!21 (value!119150 (h!26661 tokens!598))) e!1210334 tp!541088))))

(declare-fun b!1895842 () Bool)

(declare-fun res!846114 () Bool)

(declare-fun e!1210323 () Bool)

(assert (=> b!1895842 (=> (not res!846114) (not e!1210323))))

(declare-datatypes ((List!21343 0))(
  ( (Nil!21261) (Cons!21261 (h!26662 Rule!7348) (t!176186 List!21343)) )
))
(declare-fun rules!3198 () List!21343)

(declare-fun isEmpty!13048 (List!21343) Bool)

(assert (=> b!1895842 (= res!846114 (not (isEmpty!13048 rules!3198)))))

(declare-fun lt!725156 () BalanceConc!13970)

(declare-datatypes ((LexerInterface!3387 0))(
  ( (LexerInterfaceExt!3384 (__x!13319 Int)) (Lexer!3385) )
))
(declare-fun thiss!23328 () LexerInterface!3387)

(declare-fun b!1895843 () Bool)

(declare-fun e!1210333 () Bool)

(declare-datatypes ((tuple2!20068 0))(
  ( (tuple2!20069 (_1!11503 Token!7100) (_2!11503 List!21341)) )
))
(declare-datatypes ((Option!4253 0))(
  ( (None!4252) (Some!4252 (v!26281 tuple2!20068)) )
))
(declare-fun isDefined!3551 (Option!4253) Bool)

(declare-fun maxPrefix!1833 (LexerInterface!3387 List!21343 List!21341) Option!4253)

(declare-fun list!8646 (BalanceConc!13970) List!21341)

(assert (=> b!1895843 (= e!1210333 (isDefined!3551 (maxPrefix!1833 thiss!23328 rules!3198 (list!8646 lt!725156))))))

(declare-fun e!1210324 () Bool)

(declare-fun tp!541090 () Bool)

(declare-fun b!1895844 () Bool)

(assert (=> b!1895844 (= e!1210334 (and tp!541090 (inv!28358 (tag!4190 (rule!5967 (h!26661 tokens!598)))) (inv!28362 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) e!1210324))))

(declare-fun b!1895845 () Bool)

(declare-fun res!846113 () Bool)

(assert (=> b!1895845 (=> (not res!846113) (not e!1210323))))

(assert (=> b!1895845 (= res!846113 (isSeparator!3774 (rule!5967 separatorToken!354)))))

(declare-fun b!1895846 () Bool)

(declare-fun e!1210328 () Bool)

(declare-fun lt!725154 () Rule!7348)

(assert (=> b!1895846 (= e!1210328 (= (rule!5967 separatorToken!354) lt!725154))))

(declare-fun b!1895847 () Bool)

(declare-fun res!846120 () Bool)

(assert (=> b!1895847 (=> (not res!846120) (not e!1210323))))

(declare-fun lambda!74069 () Int)

(declare-fun forall!4450 (List!21342 Int) Bool)

(assert (=> b!1895847 (= res!846120 (forall!4450 tokens!598 lambda!74069))))

(assert (=> b!1895848 (= e!1210324 (and tp!541081 tp!541086))))

(declare-fun e!1210321 () Bool)

(declare-fun b!1895849 () Bool)

(declare-fun tp!541087 () Bool)

(assert (=> b!1895849 (= e!1210321 (and (inv!21 (value!119150 separatorToken!354)) e!1210336 tp!541087))))

(declare-fun b!1895850 () Bool)

(declare-fun res!846115 () Bool)

(assert (=> b!1895850 (=> (not res!846115) (not e!1210333))))

(assert (=> b!1895850 (= res!846115 e!1210328)))

(declare-fun res!846119 () Bool)

(assert (=> b!1895850 (=> (not res!846119) (not e!1210328))))

(declare-fun lt!725155 () List!21341)

(declare-fun matchR!2485 (Regex!5199 List!21341) Bool)

(assert (=> b!1895850 (= res!846119 (matchR!2485 (regex!3774 lt!725154) lt!725155))))

(declare-datatypes ((Option!4254 0))(
  ( (None!4253) (Some!4253 (v!26282 Rule!7348)) )
))
(declare-fun lt!725153 () Option!4254)

(declare-fun get!6548 (Option!4254) Rule!7348)

(assert (=> b!1895850 (= lt!725154 (get!6548 lt!725153))))

(declare-fun b!1895851 () Bool)

(declare-fun rulesValidInductive!1278 (LexerInterface!3387 List!21343) Bool)

(assert (=> b!1895851 (= e!1210323 (not (rulesValidInductive!1278 thiss!23328 rules!3198)))))

(assert (=> b!1895851 e!1210333))

(declare-fun res!846112 () Bool)

(assert (=> b!1895851 (=> (not res!846112) (not e!1210333))))

(declare-fun isDefined!3552 (Option!4254) Bool)

(assert (=> b!1895851 (= res!846112 (isDefined!3552 lt!725153))))

(declare-fun getRuleFromTag!617 (LexerInterface!3387 List!21343 String!24668) Option!4254)

(assert (=> b!1895851 (= lt!725153 (getRuleFromTag!617 thiss!23328 rules!3198 (tag!4190 (rule!5967 separatorToken!354))))))

(declare-datatypes ((Unit!35618 0))(
  ( (Unit!35619) )
))
(declare-fun lt!725157 () Unit!35618)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!617 (LexerInterface!3387 List!21343 List!21341 Token!7100) Unit!35618)

(assert (=> b!1895851 (= lt!725157 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!617 thiss!23328 rules!3198 lt!725155 separatorToken!354))))

(declare-fun charsOf!2330 (Token!7100) BalanceConc!13970)

(assert (=> b!1895851 (= lt!725155 (list!8646 (charsOf!2330 separatorToken!354)))))

(declare-fun lt!725158 () Unit!35618)

(declare-fun lemmaEqSameImage!482 (TokenValueInjection!7404 BalanceConc!13970 BalanceConc!13970) Unit!35618)

(declare-fun seqFromList!2646 (List!21341) BalanceConc!13970)

(assert (=> b!1895851 (= lt!725158 (lemmaEqSameImage!482 (transformation!3774 (rule!5967 (h!26661 tokens!598))) lt!725156 (seqFromList!2646 (originalCharacters!4581 (h!26661 tokens!598)))))))

(declare-fun lt!725152 () Unit!35618)

(declare-fun lemmaSemiInverse!753 (TokenValueInjection!7404 BalanceConc!13970) Unit!35618)

(assert (=> b!1895851 (= lt!725152 (lemmaSemiInverse!753 (transformation!3774 (rule!5967 (h!26661 tokens!598))) lt!725156))))

(assert (=> b!1895851 (= lt!725156 (charsOf!2330 (h!26661 tokens!598)))))

(declare-fun b!1895852 () Bool)

(declare-fun res!846118 () Bool)

(assert (=> b!1895852 (=> (not res!846118) (not e!1210323))))

(declare-fun rulesInvariant!2994 (LexerInterface!3387 List!21343) Bool)

(assert (=> b!1895852 (= res!846118 (rulesInvariant!2994 thiss!23328 rules!3198))))

(declare-fun b!1895853 () Bool)

(declare-fun e!1210325 () Bool)

(declare-fun e!1210322 () Bool)

(declare-fun tp!541085 () Bool)

(assert (=> b!1895853 (= e!1210325 (and e!1210322 tp!541085))))

(declare-fun b!1895854 () Bool)

(declare-fun res!846117 () Bool)

(assert (=> b!1895854 (=> (not res!846117) (not e!1210323))))

(declare-fun rulesProduceIndividualToken!1559 (LexerInterface!3387 List!21343 Token!7100) Bool)

(assert (=> b!1895854 (= res!846117 (rulesProduceIndividualToken!1559 thiss!23328 rules!3198 separatorToken!354))))

(assert (=> b!1895855 (= e!1210332 (and tp!541092 tp!541089))))

(declare-fun e!1210331 () Bool)

(assert (=> b!1895856 (= e!1210331 (and tp!541084 tp!541080))))

(declare-fun b!1895857 () Bool)

(declare-fun res!846116 () Bool)

(assert (=> b!1895857 (=> (not res!846116) (not e!1210323))))

(get-info :version)

(assert (=> b!1895857 (= res!846116 ((_ is Cons!21260) tokens!598))))

(declare-fun res!846123 () Bool)

(assert (=> start!190068 (=> (not res!846123) (not e!1210323))))

(assert (=> start!190068 (= res!846123 ((_ is Lexer!3385) thiss!23328))))

(assert (=> start!190068 e!1210323))

(assert (=> start!190068 true))

(assert (=> start!190068 e!1210325))

(assert (=> start!190068 e!1210337))

(assert (=> start!190068 (and (inv!28361 separatorToken!354) e!1210321)))

(declare-fun b!1895858 () Bool)

(declare-fun res!846121 () Bool)

(assert (=> b!1895858 (=> (not res!846121) (not e!1210323))))

(declare-fun sepAndNonSepRulesDisjointChars!872 (List!21343 List!21343) Bool)

(assert (=> b!1895858 (= res!846121 (sepAndNonSepRulesDisjointChars!872 rules!3198 rules!3198))))

(declare-fun tp!541083 () Bool)

(declare-fun b!1895859 () Bool)

(assert (=> b!1895859 (= e!1210322 (and tp!541083 (inv!28358 (tag!4190 (h!26662 rules!3198))) (inv!28362 (transformation!3774 (h!26662 rules!3198))) e!1210331))))

(declare-fun b!1895860 () Bool)

(declare-fun res!846122 () Bool)

(assert (=> b!1895860 (=> (not res!846122) (not e!1210323))))

(declare-fun rulesProduceEachTokenIndividuallyList!1118 (LexerInterface!3387 List!21343 List!21342) Bool)

(assert (=> b!1895860 (= res!846122 (rulesProduceEachTokenIndividuallyList!1118 thiss!23328 rules!3198 tokens!598))))

(assert (= (and start!190068 res!846123) b!1895842))

(assert (= (and b!1895842 res!846114) b!1895852))

(assert (= (and b!1895852 res!846118) b!1895860))

(assert (= (and b!1895860 res!846122) b!1895854))

(assert (= (and b!1895854 res!846117) b!1895845))

(assert (= (and b!1895845 res!846113) b!1895847))

(assert (= (and b!1895847 res!846120) b!1895858))

(assert (= (and b!1895858 res!846121) b!1895857))

(assert (= (and b!1895857 res!846116) b!1895851))

(assert (= (and b!1895851 res!846112) b!1895850))

(assert (= (and b!1895850 res!846119) b!1895846))

(assert (= (and b!1895850 res!846115) b!1895843))

(assert (= b!1895859 b!1895856))

(assert (= b!1895853 b!1895859))

(assert (= (and start!190068 ((_ is Cons!21261) rules!3198)) b!1895853))

(assert (= b!1895844 b!1895848))

(assert (= b!1895841 b!1895844))

(assert (= b!1895839 b!1895841))

(assert (= (and start!190068 ((_ is Cons!21260) tokens!598)) b!1895839))

(assert (= b!1895840 b!1895855))

(assert (= b!1895849 b!1895840))

(assert (= start!190068 b!1895849))

(declare-fun m!2327161 () Bool)

(assert (=> b!1895847 m!2327161))

(declare-fun m!2327163 () Bool)

(assert (=> b!1895850 m!2327163))

(declare-fun m!2327165 () Bool)

(assert (=> b!1895850 m!2327165))

(declare-fun m!2327167 () Bool)

(assert (=> b!1895851 m!2327167))

(declare-fun m!2327169 () Bool)

(assert (=> b!1895851 m!2327169))

(declare-fun m!2327171 () Bool)

(assert (=> b!1895851 m!2327171))

(declare-fun m!2327173 () Bool)

(assert (=> b!1895851 m!2327173))

(declare-fun m!2327175 () Bool)

(assert (=> b!1895851 m!2327175))

(assert (=> b!1895851 m!2327173))

(declare-fun m!2327177 () Bool)

(assert (=> b!1895851 m!2327177))

(declare-fun m!2327179 () Bool)

(assert (=> b!1895851 m!2327179))

(declare-fun m!2327181 () Bool)

(assert (=> b!1895851 m!2327181))

(assert (=> b!1895851 m!2327167))

(declare-fun m!2327183 () Bool)

(assert (=> b!1895851 m!2327183))

(declare-fun m!2327185 () Bool)

(assert (=> b!1895851 m!2327185))

(declare-fun m!2327187 () Bool)

(assert (=> b!1895852 m!2327187))

(declare-fun m!2327189 () Bool)

(assert (=> b!1895841 m!2327189))

(declare-fun m!2327191 () Bool)

(assert (=> b!1895849 m!2327191))

(declare-fun m!2327193 () Bool)

(assert (=> start!190068 m!2327193))

(declare-fun m!2327195 () Bool)

(assert (=> b!1895842 m!2327195))

(declare-fun m!2327197 () Bool)

(assert (=> b!1895859 m!2327197))

(declare-fun m!2327199 () Bool)

(assert (=> b!1895859 m!2327199))

(declare-fun m!2327201 () Bool)

(assert (=> b!1895843 m!2327201))

(assert (=> b!1895843 m!2327201))

(declare-fun m!2327203 () Bool)

(assert (=> b!1895843 m!2327203))

(assert (=> b!1895843 m!2327203))

(declare-fun m!2327205 () Bool)

(assert (=> b!1895843 m!2327205))

(declare-fun m!2327207 () Bool)

(assert (=> b!1895854 m!2327207))

(declare-fun m!2327209 () Bool)

(assert (=> b!1895860 m!2327209))

(declare-fun m!2327211 () Bool)

(assert (=> b!1895844 m!2327211))

(declare-fun m!2327213 () Bool)

(assert (=> b!1895844 m!2327213))

(declare-fun m!2327215 () Bool)

(assert (=> b!1895840 m!2327215))

(declare-fun m!2327217 () Bool)

(assert (=> b!1895840 m!2327217))

(declare-fun m!2327219 () Bool)

(assert (=> b!1895839 m!2327219))

(declare-fun m!2327221 () Bool)

(assert (=> b!1895858 m!2327221))

(check-sat (not b!1895852) (not b!1895854) (not b!1895850) b_and!146253 (not b!1895842) b_and!146249 b_and!146251 (not b!1895860) (not b!1895839) (not b!1895844) (not b!1895840) (not b_next!53653) (not b_next!53657) b_and!146243 (not b!1895849) (not b!1895847) (not b!1895841) b_and!146245 (not b!1895843) (not b!1895858) (not b!1895859) (not start!190068) (not b_next!53651) (not b_next!53649) (not b!1895851) (not b!1895853) (not b_next!53655) b_and!146247 (not b_next!53659))
(check-sat b_and!146245 b_and!146253 b_and!146249 b_and!146251 (not b_next!53653) (not b_next!53657) (not b_next!53655) b_and!146243 (not b_next!53651) (not b_next!53649) b_and!146247 (not b_next!53659))
(get-model)

(declare-fun b!1895889 () Bool)

(declare-fun res!846151 () Bool)

(declare-fun e!1210358 () Bool)

(assert (=> b!1895889 (=> (not res!846151) (not e!1210358))))

(declare-fun call!116957 () Bool)

(assert (=> b!1895889 (= res!846151 (not call!116957))))

(declare-fun b!1895890 () Bool)

(declare-fun e!1210356 () Bool)

(declare-fun e!1210355 () Bool)

(assert (=> b!1895890 (= e!1210356 e!1210355)))

(declare-fun c!309278 () Bool)

(assert (=> b!1895890 (= c!309278 ((_ is EmptyLang!5199) (regex!3774 lt!725154)))))

(declare-fun b!1895891 () Bool)

(declare-fun res!846150 () Bool)

(declare-fun e!1210359 () Bool)

(assert (=> b!1895891 (=> res!846150 e!1210359)))

(assert (=> b!1895891 (= res!846150 e!1210358)))

(declare-fun res!846154 () Bool)

(assert (=> b!1895891 (=> (not res!846154) (not e!1210358))))

(declare-fun lt!725161 () Bool)

(assert (=> b!1895891 (= res!846154 lt!725161)))

(declare-fun b!1895892 () Bool)

(declare-fun e!1210353 () Bool)

(declare-fun derivativeStep!1338 (Regex!5199 C!10544) Regex!5199)

(declare-fun head!4406 (List!21341) C!10544)

(declare-fun tail!2932 (List!21341) List!21341)

(assert (=> b!1895892 (= e!1210353 (matchR!2485 (derivativeStep!1338 (regex!3774 lt!725154) (head!4406 lt!725155)) (tail!2932 lt!725155)))))

(declare-fun b!1895893 () Bool)

(declare-fun nullable!1579 (Regex!5199) Bool)

(assert (=> b!1895893 (= e!1210353 (nullable!1579 (regex!3774 lt!725154)))))

(declare-fun b!1895894 () Bool)

(assert (=> b!1895894 (= e!1210355 (not lt!725161))))

(declare-fun b!1895895 () Bool)

(declare-fun e!1210354 () Bool)

(declare-fun e!1210357 () Bool)

(assert (=> b!1895895 (= e!1210354 e!1210357)))

(declare-fun res!846152 () Bool)

(assert (=> b!1895895 (=> res!846152 e!1210357)))

(assert (=> b!1895895 (= res!846152 call!116957)))

(declare-fun b!1895896 () Bool)

(assert (=> b!1895896 (= e!1210359 e!1210354)))

(declare-fun res!846153 () Bool)

(assert (=> b!1895896 (=> (not res!846153) (not e!1210354))))

(assert (=> b!1895896 (= res!846153 (not lt!725161))))

(declare-fun b!1895897 () Bool)

(assert (=> b!1895897 (= e!1210357 (not (= (head!4406 lt!725155) (c!309269 (regex!3774 lt!725154)))))))

(declare-fun b!1895898 () Bool)

(assert (=> b!1895898 (= e!1210358 (= (head!4406 lt!725155) (c!309269 (regex!3774 lt!725154))))))

(declare-fun b!1895899 () Bool)

(declare-fun res!846155 () Bool)

(assert (=> b!1895899 (=> res!846155 e!1210357)))

(declare-fun isEmpty!13052 (List!21341) Bool)

(assert (=> b!1895899 (= res!846155 (not (isEmpty!13052 (tail!2932 lt!725155))))))

(declare-fun b!1895900 () Bool)

(declare-fun res!846149 () Bool)

(assert (=> b!1895900 (=> (not res!846149) (not e!1210358))))

(assert (=> b!1895900 (= res!846149 (isEmpty!13052 (tail!2932 lt!725155)))))

(declare-fun bm!116952 () Bool)

(assert (=> bm!116952 (= call!116957 (isEmpty!13052 lt!725155))))

(declare-fun b!1895901 () Bool)

(assert (=> b!1895901 (= e!1210356 (= lt!725161 call!116957))))

(declare-fun d!580734 () Bool)

(assert (=> d!580734 e!1210356))

(declare-fun c!309277 () Bool)

(assert (=> d!580734 (= c!309277 ((_ is EmptyExpr!5199) (regex!3774 lt!725154)))))

(assert (=> d!580734 (= lt!725161 e!1210353)))

(declare-fun c!309279 () Bool)

(assert (=> d!580734 (= c!309279 (isEmpty!13052 lt!725155))))

(declare-fun validRegex!2103 (Regex!5199) Bool)

(assert (=> d!580734 (validRegex!2103 (regex!3774 lt!725154))))

(assert (=> d!580734 (= (matchR!2485 (regex!3774 lt!725154) lt!725155) lt!725161)))

(declare-fun b!1895902 () Bool)

(declare-fun res!846148 () Bool)

(assert (=> b!1895902 (=> res!846148 e!1210359)))

(assert (=> b!1895902 (= res!846148 (not ((_ is ElementMatch!5199) (regex!3774 lt!725154))))))

(assert (=> b!1895902 (= e!1210355 e!1210359)))

(assert (= (and d!580734 c!309279) b!1895893))

(assert (= (and d!580734 (not c!309279)) b!1895892))

(assert (= (and d!580734 c!309277) b!1895901))

(assert (= (and d!580734 (not c!309277)) b!1895890))

(assert (= (and b!1895890 c!309278) b!1895894))

(assert (= (and b!1895890 (not c!309278)) b!1895902))

(assert (= (and b!1895902 (not res!846148)) b!1895891))

(assert (= (and b!1895891 res!846154) b!1895889))

(assert (= (and b!1895889 res!846151) b!1895900))

(assert (= (and b!1895900 res!846149) b!1895898))

(assert (= (and b!1895891 (not res!846150)) b!1895896))

(assert (= (and b!1895896 res!846153) b!1895895))

(assert (= (and b!1895895 (not res!846152)) b!1895899))

(assert (= (and b!1895899 (not res!846155)) b!1895897))

(assert (= (or b!1895901 b!1895889 b!1895895) bm!116952))

(declare-fun m!2327225 () Bool)

(assert (=> b!1895898 m!2327225))

(declare-fun m!2327227 () Bool)

(assert (=> b!1895899 m!2327227))

(assert (=> b!1895899 m!2327227))

(declare-fun m!2327229 () Bool)

(assert (=> b!1895899 m!2327229))

(declare-fun m!2327231 () Bool)

(assert (=> d!580734 m!2327231))

(declare-fun m!2327233 () Bool)

(assert (=> d!580734 m!2327233))

(declare-fun m!2327235 () Bool)

(assert (=> b!1895893 m!2327235))

(assert (=> b!1895900 m!2327227))

(assert (=> b!1895900 m!2327227))

(assert (=> b!1895900 m!2327229))

(assert (=> b!1895892 m!2327225))

(assert (=> b!1895892 m!2327225))

(declare-fun m!2327237 () Bool)

(assert (=> b!1895892 m!2327237))

(assert (=> b!1895892 m!2327227))

(assert (=> b!1895892 m!2327237))

(assert (=> b!1895892 m!2327227))

(declare-fun m!2327239 () Bool)

(assert (=> b!1895892 m!2327239))

(assert (=> b!1895897 m!2327225))

(assert (=> bm!116952 m!2327231))

(assert (=> b!1895850 d!580734))

(declare-fun d!580740 () Bool)

(assert (=> d!580740 (= (get!6548 lt!725153) (v!26282 lt!725153))))

(assert (=> b!1895850 d!580740))

(declare-fun d!580742 () Bool)

(declare-fun e!1210371 () Bool)

(assert (=> d!580742 e!1210371))

(declare-fun res!846181 () Bool)

(assert (=> d!580742 (=> (not res!846181) (not e!1210371))))

(assert (=> d!580742 (= res!846181 (isDefined!3552 (getRuleFromTag!617 thiss!23328 rules!3198 (tag!4190 (rule!5967 separatorToken!354)))))))

(declare-fun lt!725179 () Unit!35618)

(declare-fun choose!11837 (LexerInterface!3387 List!21343 List!21341 Token!7100) Unit!35618)

(assert (=> d!580742 (= lt!725179 (choose!11837 thiss!23328 rules!3198 lt!725155 separatorToken!354))))

(assert (=> d!580742 (rulesInvariant!2994 thiss!23328 rules!3198)))

(assert (=> d!580742 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!617 thiss!23328 rules!3198 lt!725155 separatorToken!354) lt!725179)))

(declare-fun b!1895934 () Bool)

(declare-fun res!846182 () Bool)

(assert (=> b!1895934 (=> (not res!846182) (not e!1210371))))

(assert (=> b!1895934 (= res!846182 (matchR!2485 (regex!3774 (get!6548 (getRuleFromTag!617 thiss!23328 rules!3198 (tag!4190 (rule!5967 separatorToken!354))))) (list!8646 (charsOf!2330 separatorToken!354))))))

(declare-fun b!1895935 () Bool)

(assert (=> b!1895935 (= e!1210371 (= (rule!5967 separatorToken!354) (get!6548 (getRuleFromTag!617 thiss!23328 rules!3198 (tag!4190 (rule!5967 separatorToken!354))))))))

(assert (= (and d!580742 res!846181) b!1895934))

(assert (= (and b!1895934 res!846182) b!1895935))

(assert (=> d!580742 m!2327185))

(assert (=> d!580742 m!2327185))

(declare-fun m!2327275 () Bool)

(assert (=> d!580742 m!2327275))

(declare-fun m!2327277 () Bool)

(assert (=> d!580742 m!2327277))

(assert (=> d!580742 m!2327187))

(assert (=> b!1895934 m!2327177))

(declare-fun m!2327279 () Bool)

(assert (=> b!1895934 m!2327279))

(assert (=> b!1895934 m!2327185))

(assert (=> b!1895934 m!2327173))

(assert (=> b!1895934 m!2327177))

(assert (=> b!1895934 m!2327173))

(assert (=> b!1895934 m!2327185))

(declare-fun m!2327281 () Bool)

(assert (=> b!1895934 m!2327281))

(assert (=> b!1895935 m!2327185))

(assert (=> b!1895935 m!2327185))

(assert (=> b!1895935 m!2327281))

(assert (=> b!1895851 d!580742))

(declare-fun b!1896035 () Bool)

(declare-fun e!1210431 () Bool)

(assert (=> b!1896035 (= e!1210431 true)))

(declare-fun d!580748 () Bool)

(assert (=> d!580748 e!1210431))

(assert (= d!580748 b!1896035))

(declare-fun order!13423 () Int)

(declare-fun order!13421 () Int)

(declare-fun lambda!74072 () Int)

(declare-fun dynLambda!10336 (Int Int) Int)

(declare-fun dynLambda!10337 (Int Int) Int)

(assert (=> b!1896035 (< (dynLambda!10336 order!13421 (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) (dynLambda!10337 order!13423 lambda!74072))))

(declare-fun order!13425 () Int)

(declare-fun dynLambda!10338 (Int Int) Int)

(assert (=> b!1896035 (< (dynLambda!10338 order!13425 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) (dynLambda!10337 order!13423 lambda!74072))))

(declare-fun dynLambda!10339 (Int TokenValue!3910) BalanceConc!13970)

(declare-fun dynLambda!10340 (Int BalanceConc!13970) TokenValue!3910)

(assert (=> d!580748 (= (list!8646 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (dynLambda!10340 (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) lt!725156))) (list!8646 lt!725156))))

(declare-fun lt!725196 () Unit!35618)

(declare-fun ForallOf!374 (Int BalanceConc!13970) Unit!35618)

(assert (=> d!580748 (= lt!725196 (ForallOf!374 lambda!74072 lt!725156))))

(assert (=> d!580748 (= (lemmaSemiInverse!753 (transformation!3774 (rule!5967 (h!26661 tokens!598))) lt!725156) lt!725196)))

(declare-fun b_lambda!62281 () Bool)

(assert (=> (not b_lambda!62281) (not d!580748)))

(declare-fun t!176195 () Bool)

(declare-fun tb!115455 () Bool)

(assert (=> (and b!1895848 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176195) tb!115455))

(declare-fun e!1210434 () Bool)

(declare-fun b!1896040 () Bool)

(declare-fun tp!541098 () Bool)

(declare-fun inv!28365 (Conc!7077) Bool)

(assert (=> b!1896040 (= e!1210434 (and (inv!28365 (c!309270 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (dynLambda!10340 (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) lt!725156)))) tp!541098))))

(declare-fun result!139588 () Bool)

(declare-fun inv!28366 (BalanceConc!13970) Bool)

(assert (=> tb!115455 (= result!139588 (and (inv!28366 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (dynLambda!10340 (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) lt!725156))) e!1210434))))

(assert (= tb!115455 b!1896040))

(declare-fun m!2327359 () Bool)

(assert (=> b!1896040 m!2327359))

(declare-fun m!2327361 () Bool)

(assert (=> tb!115455 m!2327361))

(assert (=> d!580748 t!176195))

(declare-fun b_and!146261 () Bool)

(assert (= b_and!146245 (and (=> t!176195 result!139588) b_and!146261)))

(declare-fun t!176197 () Bool)

(declare-fun tb!115457 () Bool)

(assert (=> (and b!1895855 (= (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176197) tb!115457))

(declare-fun result!139592 () Bool)

(assert (= result!139592 result!139588))

(assert (=> d!580748 t!176197))

(declare-fun b_and!146263 () Bool)

(assert (= b_and!146249 (and (=> t!176197 result!139592) b_and!146263)))

(declare-fun t!176199 () Bool)

(declare-fun tb!115459 () Bool)

(assert (=> (and b!1895856 (= (toChars!5250 (transformation!3774 (h!26662 rules!3198))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176199) tb!115459))

(declare-fun result!139594 () Bool)

(assert (= result!139594 result!139588))

(assert (=> d!580748 t!176199))

(declare-fun b_and!146265 () Bool)

(assert (= b_and!146253 (and (=> t!176199 result!139594) b_and!146265)))

(declare-fun b_lambda!62283 () Bool)

(assert (=> (not b_lambda!62283) (not d!580748)))

(declare-fun t!176201 () Bool)

(declare-fun tb!115461 () Bool)

(assert (=> (and b!1895848 (= (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176201) tb!115461))

(declare-fun result!139596 () Bool)

(assert (=> tb!115461 (= result!139596 (inv!21 (dynLambda!10340 (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) lt!725156)))))

(declare-fun m!2327363 () Bool)

(assert (=> tb!115461 m!2327363))

(assert (=> d!580748 t!176201))

(declare-fun b_and!146267 () Bool)

(assert (= b_and!146243 (and (=> t!176201 result!139596) b_and!146267)))

(declare-fun tb!115463 () Bool)

(declare-fun t!176203 () Bool)

(assert (=> (and b!1895855 (= (toValue!5391 (transformation!3774 (rule!5967 separatorToken!354))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176203) tb!115463))

(declare-fun result!139600 () Bool)

(assert (= result!139600 result!139596))

(assert (=> d!580748 t!176203))

(declare-fun b_and!146269 () Bool)

(assert (= b_and!146247 (and (=> t!176203 result!139600) b_and!146269)))

(declare-fun t!176205 () Bool)

(declare-fun tb!115465 () Bool)

(assert (=> (and b!1895856 (= (toValue!5391 (transformation!3774 (h!26662 rules!3198))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176205) tb!115465))

(declare-fun result!139602 () Bool)

(assert (= result!139602 result!139596))

(assert (=> d!580748 t!176205))

(declare-fun b_and!146271 () Bool)

(assert (= b_and!146251 (and (=> t!176205 result!139602) b_and!146271)))

(declare-fun m!2327365 () Bool)

(assert (=> d!580748 m!2327365))

(declare-fun m!2327367 () Bool)

(assert (=> d!580748 m!2327367))

(declare-fun m!2327369 () Bool)

(assert (=> d!580748 m!2327369))

(declare-fun m!2327371 () Bool)

(assert (=> d!580748 m!2327371))

(assert (=> d!580748 m!2327365))

(assert (=> d!580748 m!2327367))

(assert (=> d!580748 m!2327201))

(assert (=> b!1895851 d!580748))

(declare-fun d!580774 () Bool)

(declare-fun list!8649 (Conc!7077) List!21341)

(assert (=> d!580774 (= (list!8646 (charsOf!2330 separatorToken!354)) (list!8649 (c!309270 (charsOf!2330 separatorToken!354))))))

(declare-fun bs!413455 () Bool)

(assert (= bs!413455 d!580774))

(declare-fun m!2327373 () Bool)

(assert (=> bs!413455 m!2327373))

(assert (=> b!1895851 d!580774))

(declare-fun d!580776 () Bool)

(declare-fun isEmpty!13054 (Option!4254) Bool)

(assert (=> d!580776 (= (isDefined!3552 lt!725153) (not (isEmpty!13054 lt!725153)))))

(declare-fun bs!413456 () Bool)

(assert (= bs!413456 d!580776))

(declare-fun m!2327375 () Bool)

(assert (=> bs!413456 m!2327375))

(assert (=> b!1895851 d!580776))

(declare-fun d!580778 () Bool)

(assert (=> d!580778 true))

(declare-fun lt!725199 () Bool)

(declare-fun lambda!74075 () Int)

(declare-fun forall!4451 (List!21343 Int) Bool)

(assert (=> d!580778 (= lt!725199 (forall!4451 rules!3198 lambda!74075))))

(declare-fun e!1210442 () Bool)

(assert (=> d!580778 (= lt!725199 e!1210442)))

(declare-fun res!846248 () Bool)

(assert (=> d!580778 (=> res!846248 e!1210442)))

(assert (=> d!580778 (= res!846248 (not ((_ is Cons!21261) rules!3198)))))

(assert (=> d!580778 (= (rulesValidInductive!1278 thiss!23328 rules!3198) lt!725199)))

(declare-fun b!1896047 () Bool)

(declare-fun e!1210443 () Bool)

(assert (=> b!1896047 (= e!1210442 e!1210443)))

(declare-fun res!846247 () Bool)

(assert (=> b!1896047 (=> (not res!846247) (not e!1210443))))

(declare-fun ruleValid!1146 (LexerInterface!3387 Rule!7348) Bool)

(assert (=> b!1896047 (= res!846247 (ruleValid!1146 thiss!23328 (h!26662 rules!3198)))))

(declare-fun b!1896048 () Bool)

(assert (=> b!1896048 (= e!1210443 (rulesValidInductive!1278 thiss!23328 (t!176186 rules!3198)))))

(assert (= (and d!580778 (not res!846248)) b!1896047))

(assert (= (and b!1896047 res!846247) b!1896048))

(declare-fun m!2327377 () Bool)

(assert (=> d!580778 m!2327377))

(declare-fun m!2327379 () Bool)

(assert (=> b!1896047 m!2327379))

(declare-fun m!2327381 () Bool)

(assert (=> b!1896048 m!2327381))

(assert (=> b!1895851 d!580778))

(declare-fun d!580780 () Bool)

(declare-fun lt!725202 () BalanceConc!13970)

(assert (=> d!580780 (= (list!8646 lt!725202) (originalCharacters!4581 separatorToken!354))))

(assert (=> d!580780 (= lt!725202 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (value!119150 separatorToken!354)))))

(assert (=> d!580780 (= (charsOf!2330 separatorToken!354) lt!725202)))

(declare-fun b_lambda!62285 () Bool)

(assert (=> (not b_lambda!62285) (not d!580780)))

(declare-fun t!176207 () Bool)

(declare-fun tb!115467 () Bool)

(assert (=> (and b!1895848 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354)))) t!176207) tb!115467))

(declare-fun b!1896051 () Bool)

(declare-fun e!1210444 () Bool)

(declare-fun tp!541099 () Bool)

(assert (=> b!1896051 (= e!1210444 (and (inv!28365 (c!309270 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (value!119150 separatorToken!354)))) tp!541099))))

(declare-fun result!139604 () Bool)

(assert (=> tb!115467 (= result!139604 (and (inv!28366 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (value!119150 separatorToken!354))) e!1210444))))

(assert (= tb!115467 b!1896051))

(declare-fun m!2327383 () Bool)

(assert (=> b!1896051 m!2327383))

(declare-fun m!2327385 () Bool)

(assert (=> tb!115467 m!2327385))

(assert (=> d!580780 t!176207))

(declare-fun b_and!146273 () Bool)

(assert (= b_and!146261 (and (=> t!176207 result!139604) b_and!146273)))

(declare-fun t!176209 () Bool)

(declare-fun tb!115469 () Bool)

(assert (=> (and b!1895855 (= (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354)))) t!176209) tb!115469))

(declare-fun result!139606 () Bool)

(assert (= result!139606 result!139604))

(assert (=> d!580780 t!176209))

(declare-fun b_and!146275 () Bool)

(assert (= b_and!146263 (and (=> t!176209 result!139606) b_and!146275)))

(declare-fun tb!115471 () Bool)

(declare-fun t!176211 () Bool)

(assert (=> (and b!1895856 (= (toChars!5250 (transformation!3774 (h!26662 rules!3198))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354)))) t!176211) tb!115471))

(declare-fun result!139608 () Bool)

(assert (= result!139608 result!139604))

(assert (=> d!580780 t!176211))

(declare-fun b_and!146277 () Bool)

(assert (= b_and!146265 (and (=> t!176211 result!139608) b_and!146277)))

(declare-fun m!2327387 () Bool)

(assert (=> d!580780 m!2327387))

(declare-fun m!2327389 () Bool)

(assert (=> d!580780 m!2327389))

(assert (=> b!1895851 d!580780))

(declare-fun b!1896058 () Bool)

(declare-fun e!1210449 () Bool)

(assert (=> b!1896058 (= e!1210449 true)))

(declare-fun d!580782 () Bool)

(assert (=> d!580782 e!1210449))

(assert (= d!580782 b!1896058))

(declare-fun lambda!74078 () Int)

(declare-fun order!13427 () Int)

(declare-fun dynLambda!10345 (Int Int) Int)

(assert (=> b!1896058 (< (dynLambda!10336 order!13421 (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) (dynLambda!10345 order!13427 lambda!74078))))

(assert (=> b!1896058 (< (dynLambda!10338 order!13425 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) (dynLambda!10345 order!13427 lambda!74078))))

(assert (=> d!580782 (= (dynLambda!10340 (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) lt!725156) (dynLambda!10340 (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (seqFromList!2646 (originalCharacters!4581 (h!26661 tokens!598)))))))

(declare-fun lt!725205 () Unit!35618)

(declare-fun Forall2of!171 (Int BalanceConc!13970 BalanceConc!13970) Unit!35618)

(assert (=> d!580782 (= lt!725205 (Forall2of!171 lambda!74078 lt!725156 (seqFromList!2646 (originalCharacters!4581 (h!26661 tokens!598)))))))

(assert (=> d!580782 (= (list!8646 lt!725156) (list!8646 (seqFromList!2646 (originalCharacters!4581 (h!26661 tokens!598)))))))

(assert (=> d!580782 (= (lemmaEqSameImage!482 (transformation!3774 (rule!5967 (h!26661 tokens!598))) lt!725156 (seqFromList!2646 (originalCharacters!4581 (h!26661 tokens!598)))) lt!725205)))

(declare-fun b_lambda!62287 () Bool)

(assert (=> (not b_lambda!62287) (not d!580782)))

(assert (=> d!580782 t!176201))

(declare-fun b_and!146279 () Bool)

(assert (= b_and!146267 (and (=> t!176201 result!139596) b_and!146279)))

(assert (=> d!580782 t!176203))

(declare-fun b_and!146281 () Bool)

(assert (= b_and!146269 (and (=> t!176203 result!139600) b_and!146281)))

(assert (=> d!580782 t!176205))

(declare-fun b_and!146283 () Bool)

(assert (= b_and!146271 (and (=> t!176205 result!139602) b_and!146283)))

(declare-fun b_lambda!62289 () Bool)

(assert (=> (not b_lambda!62289) (not d!580782)))

(declare-fun t!176213 () Bool)

(declare-fun tb!115473 () Bool)

(assert (=> (and b!1895848 (= (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176213) tb!115473))

(declare-fun result!139610 () Bool)

(assert (=> tb!115473 (= result!139610 (inv!21 (dynLambda!10340 (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (seqFromList!2646 (originalCharacters!4581 (h!26661 tokens!598))))))))

(declare-fun m!2327391 () Bool)

(assert (=> tb!115473 m!2327391))

(assert (=> d!580782 t!176213))

(declare-fun b_and!146285 () Bool)

(assert (= b_and!146279 (and (=> t!176213 result!139610) b_and!146285)))

(declare-fun tb!115475 () Bool)

(declare-fun t!176215 () Bool)

(assert (=> (and b!1895855 (= (toValue!5391 (transformation!3774 (rule!5967 separatorToken!354))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176215) tb!115475))

(declare-fun result!139612 () Bool)

(assert (= result!139612 result!139610))

(assert (=> d!580782 t!176215))

(declare-fun b_and!146287 () Bool)

(assert (= b_and!146281 (and (=> t!176215 result!139612) b_and!146287)))

(declare-fun t!176217 () Bool)

(declare-fun tb!115477 () Bool)

(assert (=> (and b!1895856 (= (toValue!5391 (transformation!3774 (h!26662 rules!3198))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176217) tb!115477))

(declare-fun result!139614 () Bool)

(assert (= result!139614 result!139610))

(assert (=> d!580782 t!176217))

(declare-fun b_and!146289 () Bool)

(assert (= b_and!146283 (and (=> t!176217 result!139614) b_and!146289)))

(assert (=> d!580782 m!2327201))

(assert (=> d!580782 m!2327167))

(declare-fun m!2327393 () Bool)

(assert (=> d!580782 m!2327393))

(assert (=> d!580782 m!2327167))

(declare-fun m!2327395 () Bool)

(assert (=> d!580782 m!2327395))

(assert (=> d!580782 m!2327167))

(declare-fun m!2327397 () Bool)

(assert (=> d!580782 m!2327397))

(assert (=> d!580782 m!2327365))

(assert (=> b!1895851 d!580782))

(declare-fun b!1896071 () Bool)

(declare-fun e!1210462 () Option!4254)

(assert (=> b!1896071 (= e!1210462 (Some!4253 (h!26662 rules!3198)))))

(declare-fun b!1896072 () Bool)

(declare-fun e!1210461 () Bool)

(declare-fun e!1210459 () Bool)

(assert (=> b!1896072 (= e!1210461 e!1210459)))

(declare-fun res!846256 () Bool)

(assert (=> b!1896072 (=> (not res!846256) (not e!1210459))))

(declare-fun lt!725212 () Option!4254)

(declare-fun contains!3835 (List!21343 Rule!7348) Bool)

(assert (=> b!1896072 (= res!846256 (contains!3835 rules!3198 (get!6548 lt!725212)))))

(declare-fun b!1896073 () Bool)

(declare-fun e!1210460 () Option!4254)

(assert (=> b!1896073 (= e!1210460 None!4253)))

(declare-fun b!1896074 () Bool)

(declare-fun lt!725214 () Unit!35618)

(declare-fun lt!725213 () Unit!35618)

(assert (=> b!1896074 (= lt!725214 lt!725213)))

(assert (=> b!1896074 (rulesInvariant!2994 thiss!23328 (t!176186 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!239 (LexerInterface!3387 Rule!7348 List!21343) Unit!35618)

(assert (=> b!1896074 (= lt!725213 (lemmaInvariantOnRulesThenOnTail!239 thiss!23328 (h!26662 rules!3198) (t!176186 rules!3198)))))

(assert (=> b!1896074 (= e!1210460 (getRuleFromTag!617 thiss!23328 (t!176186 rules!3198) (tag!4190 (rule!5967 separatorToken!354))))))

(declare-fun b!1896075 () Bool)

(assert (=> b!1896075 (= e!1210462 e!1210460)))

(declare-fun c!309304 () Bool)

(assert (=> b!1896075 (= c!309304 (and ((_ is Cons!21261) rules!3198) (not (= (tag!4190 (h!26662 rules!3198)) (tag!4190 (rule!5967 separatorToken!354))))))))

(declare-fun b!1896076 () Bool)

(assert (=> b!1896076 (= e!1210459 (= (tag!4190 (get!6548 lt!725212)) (tag!4190 (rule!5967 separatorToken!354))))))

(declare-fun d!580784 () Bool)

(assert (=> d!580784 e!1210461))

(declare-fun res!846255 () Bool)

(assert (=> d!580784 (=> res!846255 e!1210461)))

(assert (=> d!580784 (= res!846255 (isEmpty!13054 lt!725212))))

(assert (=> d!580784 (= lt!725212 e!1210462)))

(declare-fun c!309303 () Bool)

(assert (=> d!580784 (= c!309303 (and ((_ is Cons!21261) rules!3198) (= (tag!4190 (h!26662 rules!3198)) (tag!4190 (rule!5967 separatorToken!354)))))))

(assert (=> d!580784 (rulesInvariant!2994 thiss!23328 rules!3198)))

(assert (=> d!580784 (= (getRuleFromTag!617 thiss!23328 rules!3198 (tag!4190 (rule!5967 separatorToken!354))) lt!725212)))

(assert (= (and d!580784 c!309303) b!1896071))

(assert (= (and d!580784 (not c!309303)) b!1896075))

(assert (= (and b!1896075 c!309304) b!1896074))

(assert (= (and b!1896075 (not c!309304)) b!1896073))

(assert (= (and d!580784 (not res!846255)) b!1896072))

(assert (= (and b!1896072 res!846256) b!1896076))

(declare-fun m!2327399 () Bool)

(assert (=> b!1896072 m!2327399))

(assert (=> b!1896072 m!2327399))

(declare-fun m!2327401 () Bool)

(assert (=> b!1896072 m!2327401))

(declare-fun m!2327403 () Bool)

(assert (=> b!1896074 m!2327403))

(declare-fun m!2327405 () Bool)

(assert (=> b!1896074 m!2327405))

(declare-fun m!2327407 () Bool)

(assert (=> b!1896074 m!2327407))

(assert (=> b!1896076 m!2327399))

(declare-fun m!2327409 () Bool)

(assert (=> d!580784 m!2327409))

(assert (=> d!580784 m!2327187))

(assert (=> b!1895851 d!580784))

(declare-fun d!580786 () Bool)

(declare-fun lt!725215 () BalanceConc!13970)

(assert (=> d!580786 (= (list!8646 lt!725215) (originalCharacters!4581 (h!26661 tokens!598)))))

(assert (=> d!580786 (= lt!725215 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (value!119150 (h!26661 tokens!598))))))

(assert (=> d!580786 (= (charsOf!2330 (h!26661 tokens!598)) lt!725215)))

(declare-fun b_lambda!62291 () Bool)

(assert (=> (not b_lambda!62291) (not d!580786)))

(declare-fun t!176219 () Bool)

(declare-fun tb!115479 () Bool)

(assert (=> (and b!1895848 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176219) tb!115479))

(declare-fun b!1896077 () Bool)

(declare-fun e!1210463 () Bool)

(declare-fun tp!541100 () Bool)

(assert (=> b!1896077 (= e!1210463 (and (inv!28365 (c!309270 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (value!119150 (h!26661 tokens!598))))) tp!541100))))

(declare-fun result!139616 () Bool)

(assert (=> tb!115479 (= result!139616 (and (inv!28366 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (value!119150 (h!26661 tokens!598)))) e!1210463))))

(assert (= tb!115479 b!1896077))

(declare-fun m!2327411 () Bool)

(assert (=> b!1896077 m!2327411))

(declare-fun m!2327413 () Bool)

(assert (=> tb!115479 m!2327413))

(assert (=> d!580786 t!176219))

(declare-fun b_and!146291 () Bool)

(assert (= b_and!146273 (and (=> t!176219 result!139616) b_and!146291)))

(declare-fun tb!115481 () Bool)

(declare-fun t!176221 () Bool)

(assert (=> (and b!1895855 (= (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176221) tb!115481))

(declare-fun result!139618 () Bool)

(assert (= result!139618 result!139616))

(assert (=> d!580786 t!176221))

(declare-fun b_and!146293 () Bool)

(assert (= b_and!146275 (and (=> t!176221 result!139618) b_and!146293)))

(declare-fun tb!115483 () Bool)

(declare-fun t!176223 () Bool)

(assert (=> (and b!1895856 (= (toChars!5250 (transformation!3774 (h!26662 rules!3198))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176223) tb!115483))

(declare-fun result!139620 () Bool)

(assert (= result!139620 result!139616))

(assert (=> d!580786 t!176223))

(declare-fun b_and!146295 () Bool)

(assert (= b_and!146277 (and (=> t!176223 result!139620) b_and!146295)))

(declare-fun m!2327415 () Bool)

(assert (=> d!580786 m!2327415))

(declare-fun m!2327417 () Bool)

(assert (=> d!580786 m!2327417))

(assert (=> b!1895851 d!580786))

(declare-fun d!580788 () Bool)

(declare-fun fromListB!1207 (List!21341) BalanceConc!13970)

(assert (=> d!580788 (= (seqFromList!2646 (originalCharacters!4581 (h!26661 tokens!598))) (fromListB!1207 (originalCharacters!4581 (h!26661 tokens!598))))))

(declare-fun bs!413457 () Bool)

(assert (= bs!413457 d!580788))

(declare-fun m!2327419 () Bool)

(assert (=> bs!413457 m!2327419))

(assert (=> b!1895851 d!580788))

(declare-fun d!580790 () Bool)

(assert (=> d!580790 (= (inv!28358 (tag!4190 (rule!5967 separatorToken!354))) (= (mod (str.len (value!119149 (tag!4190 (rule!5967 separatorToken!354)))) 2) 0))))

(assert (=> b!1895840 d!580790))

(declare-fun d!580792 () Bool)

(declare-fun res!846259 () Bool)

(declare-fun e!1210466 () Bool)

(assert (=> d!580792 (=> (not res!846259) (not e!1210466))))

(declare-fun semiInverseModEq!1529 (Int Int) Bool)

(assert (=> d!580792 (= res!846259 (semiInverseModEq!1529 (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (toValue!5391 (transformation!3774 (rule!5967 separatorToken!354)))))))

(assert (=> d!580792 (= (inv!28362 (transformation!3774 (rule!5967 separatorToken!354))) e!1210466)))

(declare-fun b!1896080 () Bool)

(declare-fun equivClasses!1456 (Int Int) Bool)

(assert (=> b!1896080 (= e!1210466 (equivClasses!1456 (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (toValue!5391 (transformation!3774 (rule!5967 separatorToken!354)))))))

(assert (= (and d!580792 res!846259) b!1896080))

(declare-fun m!2327421 () Bool)

(assert (=> d!580792 m!2327421))

(declare-fun m!2327423 () Bool)

(assert (=> b!1896080 m!2327423))

(assert (=> b!1895840 d!580792))

(declare-fun d!580794 () Bool)

(declare-fun c!309309 () Bool)

(assert (=> d!580794 (= c!309309 ((_ is IntegerValue!11730) (value!119150 separatorToken!354)))))

(declare-fun e!1210473 () Bool)

(assert (=> d!580794 (= (inv!21 (value!119150 separatorToken!354)) e!1210473)))

(declare-fun b!1896091 () Bool)

(declare-fun inv!16 (TokenValue!3910) Bool)

(assert (=> b!1896091 (= e!1210473 (inv!16 (value!119150 separatorToken!354)))))

(declare-fun b!1896092 () Bool)

(declare-fun e!1210474 () Bool)

(assert (=> b!1896092 (= e!1210473 e!1210474)))

(declare-fun c!309310 () Bool)

(assert (=> b!1896092 (= c!309310 ((_ is IntegerValue!11731) (value!119150 separatorToken!354)))))

(declare-fun b!1896093 () Bool)

(declare-fun res!846262 () Bool)

(declare-fun e!1210475 () Bool)

(assert (=> b!1896093 (=> res!846262 e!1210475)))

(assert (=> b!1896093 (= res!846262 (not ((_ is IntegerValue!11732) (value!119150 separatorToken!354))))))

(assert (=> b!1896093 (= e!1210474 e!1210475)))

(declare-fun b!1896094 () Bool)

(declare-fun inv!15 (TokenValue!3910) Bool)

(assert (=> b!1896094 (= e!1210475 (inv!15 (value!119150 separatorToken!354)))))

(declare-fun b!1896095 () Bool)

(declare-fun inv!17 (TokenValue!3910) Bool)

(assert (=> b!1896095 (= e!1210474 (inv!17 (value!119150 separatorToken!354)))))

(assert (= (and d!580794 c!309309) b!1896091))

(assert (= (and d!580794 (not c!309309)) b!1896092))

(assert (= (and b!1896092 c!309310) b!1896095))

(assert (= (and b!1896092 (not c!309310)) b!1896093))

(assert (= (and b!1896093 (not res!846262)) b!1896094))

(declare-fun m!2327425 () Bool)

(assert (=> b!1896091 m!2327425))

(declare-fun m!2327427 () Bool)

(assert (=> b!1896094 m!2327427))

(declare-fun m!2327429 () Bool)

(assert (=> b!1896095 m!2327429))

(assert (=> b!1895849 d!580794))

(declare-fun d!580796 () Bool)

(declare-fun res!846267 () Bool)

(declare-fun e!1210478 () Bool)

(assert (=> d!580796 (=> (not res!846267) (not e!1210478))))

(assert (=> d!580796 (= res!846267 (not (isEmpty!13052 (originalCharacters!4581 (h!26661 tokens!598)))))))

(assert (=> d!580796 (= (inv!28361 (h!26661 tokens!598)) e!1210478)))

(declare-fun b!1896100 () Bool)

(declare-fun res!846268 () Bool)

(assert (=> b!1896100 (=> (not res!846268) (not e!1210478))))

(assert (=> b!1896100 (= res!846268 (= (originalCharacters!4581 (h!26661 tokens!598)) (list!8646 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (value!119150 (h!26661 tokens!598))))))))

(declare-fun b!1896101 () Bool)

(declare-fun size!16851 (List!21341) Int)

(assert (=> b!1896101 (= e!1210478 (= (size!16848 (h!26661 tokens!598)) (size!16851 (originalCharacters!4581 (h!26661 tokens!598)))))))

(assert (= (and d!580796 res!846267) b!1896100))

(assert (= (and b!1896100 res!846268) b!1896101))

(declare-fun b_lambda!62293 () Bool)

(assert (=> (not b_lambda!62293) (not b!1896100)))

(assert (=> b!1896100 t!176219))

(declare-fun b_and!146297 () Bool)

(assert (= b_and!146291 (and (=> t!176219 result!139616) b_and!146297)))

(assert (=> b!1896100 t!176221))

(declare-fun b_and!146299 () Bool)

(assert (= b_and!146293 (and (=> t!176221 result!139618) b_and!146299)))

(assert (=> b!1896100 t!176223))

(declare-fun b_and!146301 () Bool)

(assert (= b_and!146295 (and (=> t!176223 result!139620) b_and!146301)))

(declare-fun m!2327431 () Bool)

(assert (=> d!580796 m!2327431))

(assert (=> b!1896100 m!2327417))

(assert (=> b!1896100 m!2327417))

(declare-fun m!2327433 () Bool)

(assert (=> b!1896100 m!2327433))

(declare-fun m!2327435 () Bool)

(assert (=> b!1896101 m!2327435))

(assert (=> b!1895839 d!580796))

(declare-fun bs!413459 () Bool)

(declare-fun d!580798 () Bool)

(assert (= bs!413459 (and d!580798 b!1895847)))

(declare-fun lambda!74090 () Int)

(assert (=> bs!413459 (not (= lambda!74090 lambda!74069))))

(declare-fun b!1896165 () Bool)

(declare-fun e!1210528 () Bool)

(assert (=> b!1896165 (= e!1210528 true)))

(declare-fun b!1896164 () Bool)

(declare-fun e!1210527 () Bool)

(assert (=> b!1896164 (= e!1210527 e!1210528)))

(declare-fun b!1896163 () Bool)

(declare-fun e!1210526 () Bool)

(assert (=> b!1896163 (= e!1210526 e!1210527)))

(assert (=> d!580798 e!1210526))

(assert (= b!1896164 b!1896165))

(assert (= b!1896163 b!1896164))

(assert (= (and d!580798 ((_ is Cons!21261) rules!3198)) b!1896163))

(declare-fun order!13437 () Int)

(declare-fun dynLambda!10347 (Int Int) Int)

(assert (=> b!1896165 (< (dynLambda!10336 order!13421 (toValue!5391 (transformation!3774 (h!26662 rules!3198)))) (dynLambda!10347 order!13437 lambda!74090))))

(assert (=> b!1896165 (< (dynLambda!10338 order!13425 (toChars!5250 (transformation!3774 (h!26662 rules!3198)))) (dynLambda!10347 order!13437 lambda!74090))))

(assert (=> d!580798 true))

(declare-fun lt!725238 () Bool)

(assert (=> d!580798 (= lt!725238 (forall!4450 tokens!598 lambda!74090))))

(declare-fun e!1210518 () Bool)

(assert (=> d!580798 (= lt!725238 e!1210518)))

(declare-fun res!846288 () Bool)

(assert (=> d!580798 (=> res!846288 e!1210518)))

(assert (=> d!580798 (= res!846288 (not ((_ is Cons!21260) tokens!598)))))

(assert (=> d!580798 (not (isEmpty!13048 rules!3198))))

(assert (=> d!580798 (= (rulesProduceEachTokenIndividuallyList!1118 thiss!23328 rules!3198 tokens!598) lt!725238)))

(declare-fun b!1896153 () Bool)

(declare-fun e!1210519 () Bool)

(assert (=> b!1896153 (= e!1210518 e!1210519)))

(declare-fun res!846289 () Bool)

(assert (=> b!1896153 (=> (not res!846289) (not e!1210519))))

(assert (=> b!1896153 (= res!846289 (rulesProduceIndividualToken!1559 thiss!23328 rules!3198 (h!26661 tokens!598)))))

(declare-fun b!1896154 () Bool)

(assert (=> b!1896154 (= e!1210519 (rulesProduceEachTokenIndividuallyList!1118 thiss!23328 rules!3198 (t!176185 tokens!598)))))

(assert (= (and d!580798 (not res!846288)) b!1896153))

(assert (= (and b!1896153 res!846289) b!1896154))

(declare-fun m!2327495 () Bool)

(assert (=> d!580798 m!2327495))

(assert (=> d!580798 m!2327195))

(declare-fun m!2327497 () Bool)

(assert (=> b!1896153 m!2327497))

(declare-fun m!2327499 () Bool)

(assert (=> b!1896154 m!2327499))

(assert (=> b!1895860 d!580798))

(declare-fun d!580816 () Bool)

(assert (=> d!580816 (= (isEmpty!13048 rules!3198) ((_ is Nil!21261) rules!3198))))

(assert (=> b!1895842 d!580816))

(declare-fun d!580818 () Bool)

(declare-fun isEmpty!13055 (Option!4253) Bool)

(assert (=> d!580818 (= (isDefined!3551 (maxPrefix!1833 thiss!23328 rules!3198 (list!8646 lt!725156))) (not (isEmpty!13055 (maxPrefix!1833 thiss!23328 rules!3198 (list!8646 lt!725156)))))))

(declare-fun bs!413460 () Bool)

(assert (= bs!413460 d!580818))

(assert (=> bs!413460 m!2327203))

(declare-fun m!2327501 () Bool)

(assert (=> bs!413460 m!2327501))

(assert (=> b!1895843 d!580818))

(declare-fun b!1896186 () Bool)

(declare-fun e!1210535 () Option!4253)

(declare-fun lt!725251 () Option!4253)

(declare-fun lt!725253 () Option!4253)

(assert (=> b!1896186 (= e!1210535 (ite (and ((_ is None!4252) lt!725251) ((_ is None!4252) lt!725253)) None!4252 (ite ((_ is None!4252) lt!725253) lt!725251 (ite ((_ is None!4252) lt!725251) lt!725253 (ite (>= (size!16848 (_1!11503 (v!26281 lt!725251))) (size!16848 (_1!11503 (v!26281 lt!725253)))) lt!725251 lt!725253)))))))

(declare-fun call!116966 () Option!4253)

(assert (=> b!1896186 (= lt!725251 call!116966)))

(assert (=> b!1896186 (= lt!725253 (maxPrefix!1833 thiss!23328 (t!176186 rules!3198) (list!8646 lt!725156)))))

(declare-fun b!1896188 () Bool)

(declare-fun res!846305 () Bool)

(declare-fun e!1210537 () Bool)

(assert (=> b!1896188 (=> (not res!846305) (not e!1210537))))

(declare-fun lt!725249 () Option!4253)

(declare-fun get!6550 (Option!4253) tuple2!20068)

(declare-fun apply!5599 (TokenValueInjection!7404 BalanceConc!13970) TokenValue!3910)

(assert (=> b!1896188 (= res!846305 (= (value!119150 (_1!11503 (get!6550 lt!725249))) (apply!5599 (transformation!3774 (rule!5967 (_1!11503 (get!6550 lt!725249)))) (seqFromList!2646 (originalCharacters!4581 (_1!11503 (get!6550 lt!725249)))))))))

(declare-fun bm!116961 () Bool)

(declare-fun maxPrefixOneRule!1189 (LexerInterface!3387 Rule!7348 List!21341) Option!4253)

(assert (=> bm!116961 (= call!116966 (maxPrefixOneRule!1189 thiss!23328 (h!26662 rules!3198) (list!8646 lt!725156)))))

(declare-fun b!1896189 () Bool)

(declare-fun res!846308 () Bool)

(assert (=> b!1896189 (=> (not res!846308) (not e!1210537))))

(declare-fun ++!5727 (List!21341 List!21341) List!21341)

(assert (=> b!1896189 (= res!846308 (= (++!5727 (list!8646 (charsOf!2330 (_1!11503 (get!6550 lt!725249)))) (_2!11503 (get!6550 lt!725249))) (list!8646 lt!725156)))))

(declare-fun b!1896190 () Bool)

(assert (=> b!1896190 (= e!1210537 (contains!3835 rules!3198 (rule!5967 (_1!11503 (get!6550 lt!725249)))))))

(declare-fun b!1896191 () Bool)

(declare-fun e!1210536 () Bool)

(assert (=> b!1896191 (= e!1210536 e!1210537)))

(declare-fun res!846307 () Bool)

(assert (=> b!1896191 (=> (not res!846307) (not e!1210537))))

(assert (=> b!1896191 (= res!846307 (isDefined!3551 lt!725249))))

(declare-fun b!1896192 () Bool)

(assert (=> b!1896192 (= e!1210535 call!116966)))

(declare-fun b!1896193 () Bool)

(declare-fun res!846309 () Bool)

(assert (=> b!1896193 (=> (not res!846309) (not e!1210537))))

(assert (=> b!1896193 (= res!846309 (= (list!8646 (charsOf!2330 (_1!11503 (get!6550 lt!725249)))) (originalCharacters!4581 (_1!11503 (get!6550 lt!725249)))))))

(declare-fun b!1896194 () Bool)

(declare-fun res!846310 () Bool)

(assert (=> b!1896194 (=> (not res!846310) (not e!1210537))))

(assert (=> b!1896194 (= res!846310 (< (size!16851 (_2!11503 (get!6550 lt!725249))) (size!16851 (list!8646 lt!725156))))))

(declare-fun d!580820 () Bool)

(assert (=> d!580820 e!1210536))

(declare-fun res!846304 () Bool)

(assert (=> d!580820 (=> res!846304 e!1210536)))

(assert (=> d!580820 (= res!846304 (isEmpty!13055 lt!725249))))

(assert (=> d!580820 (= lt!725249 e!1210535)))

(declare-fun c!309322 () Bool)

(assert (=> d!580820 (= c!309322 (and ((_ is Cons!21261) rules!3198) ((_ is Nil!21261) (t!176186 rules!3198))))))

(declare-fun lt!725250 () Unit!35618)

(declare-fun lt!725252 () Unit!35618)

(assert (=> d!580820 (= lt!725250 lt!725252)))

(declare-fun isPrefix!1907 (List!21341 List!21341) Bool)

(assert (=> d!580820 (isPrefix!1907 (list!8646 lt!725156) (list!8646 lt!725156))))

(declare-fun lemmaIsPrefixRefl!1225 (List!21341 List!21341) Unit!35618)

(assert (=> d!580820 (= lt!725252 (lemmaIsPrefixRefl!1225 (list!8646 lt!725156) (list!8646 lt!725156)))))

(assert (=> d!580820 (rulesValidInductive!1278 thiss!23328 rules!3198)))

(assert (=> d!580820 (= (maxPrefix!1833 thiss!23328 rules!3198 (list!8646 lt!725156)) lt!725249)))

(declare-fun b!1896187 () Bool)

(declare-fun res!846306 () Bool)

(assert (=> b!1896187 (=> (not res!846306) (not e!1210537))))

(assert (=> b!1896187 (= res!846306 (matchR!2485 (regex!3774 (rule!5967 (_1!11503 (get!6550 lt!725249)))) (list!8646 (charsOf!2330 (_1!11503 (get!6550 lt!725249))))))))

(assert (= (and d!580820 c!309322) b!1896192))

(assert (= (and d!580820 (not c!309322)) b!1896186))

(assert (= (or b!1896192 b!1896186) bm!116961))

(assert (= (and d!580820 (not res!846304)) b!1896191))

(assert (= (and b!1896191 res!846307) b!1896193))

(assert (= (and b!1896193 res!846309) b!1896194))

(assert (= (and b!1896194 res!846310) b!1896189))

(assert (= (and b!1896189 res!846308) b!1896188))

(assert (= (and b!1896188 res!846305) b!1896187))

(assert (= (and b!1896187 res!846306) b!1896190))

(declare-fun m!2327503 () Bool)

(assert (=> b!1896187 m!2327503))

(declare-fun m!2327505 () Bool)

(assert (=> b!1896187 m!2327505))

(assert (=> b!1896187 m!2327505))

(declare-fun m!2327507 () Bool)

(assert (=> b!1896187 m!2327507))

(assert (=> b!1896187 m!2327507))

(declare-fun m!2327509 () Bool)

(assert (=> b!1896187 m!2327509))

(assert (=> b!1896193 m!2327503))

(assert (=> b!1896193 m!2327505))

(assert (=> b!1896193 m!2327505))

(assert (=> b!1896193 m!2327507))

(assert (=> b!1896189 m!2327503))

(assert (=> b!1896189 m!2327505))

(assert (=> b!1896189 m!2327505))

(assert (=> b!1896189 m!2327507))

(assert (=> b!1896189 m!2327507))

(declare-fun m!2327511 () Bool)

(assert (=> b!1896189 m!2327511))

(declare-fun m!2327513 () Bool)

(assert (=> b!1896191 m!2327513))

(assert (=> b!1896190 m!2327503))

(declare-fun m!2327515 () Bool)

(assert (=> b!1896190 m!2327515))

(assert (=> bm!116961 m!2327201))

(declare-fun m!2327517 () Bool)

(assert (=> bm!116961 m!2327517))

(declare-fun m!2327519 () Bool)

(assert (=> d!580820 m!2327519))

(assert (=> d!580820 m!2327201))

(assert (=> d!580820 m!2327201))

(declare-fun m!2327521 () Bool)

(assert (=> d!580820 m!2327521))

(assert (=> d!580820 m!2327201))

(assert (=> d!580820 m!2327201))

(declare-fun m!2327523 () Bool)

(assert (=> d!580820 m!2327523))

(assert (=> d!580820 m!2327169))

(assert (=> b!1896186 m!2327201))

(declare-fun m!2327525 () Bool)

(assert (=> b!1896186 m!2327525))

(assert (=> b!1896188 m!2327503))

(declare-fun m!2327527 () Bool)

(assert (=> b!1896188 m!2327527))

(assert (=> b!1896188 m!2327527))

(declare-fun m!2327529 () Bool)

(assert (=> b!1896188 m!2327529))

(assert (=> b!1896194 m!2327503))

(declare-fun m!2327531 () Bool)

(assert (=> b!1896194 m!2327531))

(assert (=> b!1896194 m!2327201))

(declare-fun m!2327533 () Bool)

(assert (=> b!1896194 m!2327533))

(assert (=> b!1895843 d!580820))

(declare-fun d!580822 () Bool)

(assert (=> d!580822 (= (list!8646 lt!725156) (list!8649 (c!309270 lt!725156)))))

(declare-fun bs!413461 () Bool)

(assert (= bs!413461 d!580822))

(declare-fun m!2327535 () Bool)

(assert (=> bs!413461 m!2327535))

(assert (=> b!1895843 d!580822))

(declare-fun d!580824 () Bool)

(declare-fun c!309323 () Bool)

(assert (=> d!580824 (= c!309323 ((_ is IntegerValue!11730) (value!119150 (h!26661 tokens!598))))))

(declare-fun e!1210538 () Bool)

(assert (=> d!580824 (= (inv!21 (value!119150 (h!26661 tokens!598))) e!1210538)))

(declare-fun b!1896195 () Bool)

(assert (=> b!1896195 (= e!1210538 (inv!16 (value!119150 (h!26661 tokens!598))))))

(declare-fun b!1896196 () Bool)

(declare-fun e!1210539 () Bool)

(assert (=> b!1896196 (= e!1210538 e!1210539)))

(declare-fun c!309324 () Bool)

(assert (=> b!1896196 (= c!309324 ((_ is IntegerValue!11731) (value!119150 (h!26661 tokens!598))))))

(declare-fun b!1896197 () Bool)

(declare-fun res!846311 () Bool)

(declare-fun e!1210540 () Bool)

(assert (=> b!1896197 (=> res!846311 e!1210540)))

(assert (=> b!1896197 (= res!846311 (not ((_ is IntegerValue!11732) (value!119150 (h!26661 tokens!598)))))))

(assert (=> b!1896197 (= e!1210539 e!1210540)))

(declare-fun b!1896198 () Bool)

(assert (=> b!1896198 (= e!1210540 (inv!15 (value!119150 (h!26661 tokens!598))))))

(declare-fun b!1896199 () Bool)

(assert (=> b!1896199 (= e!1210539 (inv!17 (value!119150 (h!26661 tokens!598))))))

(assert (= (and d!580824 c!309323) b!1896195))

(assert (= (and d!580824 (not c!309323)) b!1896196))

(assert (= (and b!1896196 c!309324) b!1896199))

(assert (= (and b!1896196 (not c!309324)) b!1896197))

(assert (= (and b!1896197 (not res!846311)) b!1896198))

(declare-fun m!2327537 () Bool)

(assert (=> b!1896195 m!2327537))

(declare-fun m!2327539 () Bool)

(assert (=> b!1896198 m!2327539))

(declare-fun m!2327541 () Bool)

(assert (=> b!1896199 m!2327541))

(assert (=> b!1895841 d!580824))

(declare-fun d!580826 () Bool)

(declare-fun res!846318 () Bool)

(declare-fun e!1210547 () Bool)

(assert (=> d!580826 (=> (not res!846318) (not e!1210547))))

(declare-fun rulesValid!1416 (LexerInterface!3387 List!21343) Bool)

(assert (=> d!580826 (= res!846318 (rulesValid!1416 thiss!23328 rules!3198))))

(assert (=> d!580826 (= (rulesInvariant!2994 thiss!23328 rules!3198) e!1210547)))

(declare-fun b!1896206 () Bool)

(declare-datatypes ((List!21345 0))(
  ( (Nil!21263) (Cons!21263 (h!26664 String!24668) (t!176294 List!21345)) )
))
(declare-fun noDuplicateTag!1414 (LexerInterface!3387 List!21343 List!21345) Bool)

(assert (=> b!1896206 (= e!1210547 (noDuplicateTag!1414 thiss!23328 rules!3198 Nil!21263))))

(assert (= (and d!580826 res!846318) b!1896206))

(declare-fun m!2327543 () Bool)

(assert (=> d!580826 m!2327543))

(declare-fun m!2327545 () Bool)

(assert (=> b!1896206 m!2327545))

(assert (=> b!1895852 d!580826))

(declare-fun d!580828 () Bool)

(declare-fun lt!725262 () Bool)

(declare-fun e!1210612 () Bool)

(assert (=> d!580828 (= lt!725262 e!1210612)))

(declare-fun res!846338 () Bool)

(assert (=> d!580828 (=> (not res!846338) (not e!1210612))))

(declare-datatypes ((IArray!14163 0))(
  ( (IArray!14164 (innerList!7139 List!21342)) )
))
(declare-datatypes ((Conc!7079 0))(
  ( (Node!7079 (left!17056 Conc!7079) (right!17386 Conc!7079) (csize!14388 Int) (cheight!7290 Int)) (Leaf!10429 (xs!9973 IArray!14163) (csize!14389 Int)) (Empty!7079) )
))
(declare-datatypes ((BalanceConc!13974 0))(
  ( (BalanceConc!13975 (c!309326 Conc!7079)) )
))
(declare-fun list!8650 (BalanceConc!13974) List!21342)

(declare-datatypes ((tuple2!20072 0))(
  ( (tuple2!20073 (_1!11505 BalanceConc!13974) (_2!11505 BalanceConc!13970)) )
))
(declare-fun lex!1508 (LexerInterface!3387 List!21343 BalanceConc!13970) tuple2!20072)

(declare-fun print!1437 (LexerInterface!3387 BalanceConc!13974) BalanceConc!13970)

(declare-fun singletonSeq!1835 (Token!7100) BalanceConc!13974)

(assert (=> d!580828 (= res!846338 (= (list!8650 (_1!11505 (lex!1508 thiss!23328 rules!3198 (print!1437 thiss!23328 (singletonSeq!1835 separatorToken!354))))) (list!8650 (singletonSeq!1835 separatorToken!354))))))

(declare-fun e!1210611 () Bool)

(assert (=> d!580828 (= lt!725262 e!1210611)))

(declare-fun res!846337 () Bool)

(assert (=> d!580828 (=> (not res!846337) (not e!1210611))))

(declare-fun lt!725261 () tuple2!20072)

(declare-fun size!16852 (BalanceConc!13974) Int)

(assert (=> d!580828 (= res!846337 (= (size!16852 (_1!11505 lt!725261)) 1))))

(assert (=> d!580828 (= lt!725261 (lex!1508 thiss!23328 rules!3198 (print!1437 thiss!23328 (singletonSeq!1835 separatorToken!354))))))

(assert (=> d!580828 (not (isEmpty!13048 rules!3198))))

(assert (=> d!580828 (= (rulesProduceIndividualToken!1559 thiss!23328 rules!3198 separatorToken!354) lt!725262)))

(declare-fun b!1896291 () Bool)

(declare-fun res!846339 () Bool)

(assert (=> b!1896291 (=> (not res!846339) (not e!1210611))))

(declare-fun apply!5600 (BalanceConc!13974 Int) Token!7100)

(assert (=> b!1896291 (= res!846339 (= (apply!5600 (_1!11505 lt!725261) 0) separatorToken!354))))

(declare-fun b!1896292 () Bool)

(declare-fun isEmpty!13056 (BalanceConc!13970) Bool)

(assert (=> b!1896292 (= e!1210611 (isEmpty!13056 (_2!11505 lt!725261)))))

(declare-fun b!1896293 () Bool)

(assert (=> b!1896293 (= e!1210612 (isEmpty!13056 (_2!11505 (lex!1508 thiss!23328 rules!3198 (print!1437 thiss!23328 (singletonSeq!1835 separatorToken!354))))))))

(assert (= (and d!580828 res!846337) b!1896291))

(assert (= (and b!1896291 res!846339) b!1896292))

(assert (= (and d!580828 res!846338) b!1896293))

(declare-fun m!2327583 () Bool)

(assert (=> d!580828 m!2327583))

(declare-fun m!2327585 () Bool)

(assert (=> d!580828 m!2327585))

(declare-fun m!2327587 () Bool)

(assert (=> d!580828 m!2327587))

(declare-fun m!2327589 () Bool)

(assert (=> d!580828 m!2327589))

(declare-fun m!2327591 () Bool)

(assert (=> d!580828 m!2327591))

(assert (=> d!580828 m!2327583))

(declare-fun m!2327593 () Bool)

(assert (=> d!580828 m!2327593))

(assert (=> d!580828 m!2327583))

(assert (=> d!580828 m!2327587))

(assert (=> d!580828 m!2327195))

(declare-fun m!2327595 () Bool)

(assert (=> b!1896291 m!2327595))

(declare-fun m!2327597 () Bool)

(assert (=> b!1896292 m!2327597))

(assert (=> b!1896293 m!2327583))

(assert (=> b!1896293 m!2327583))

(assert (=> b!1896293 m!2327587))

(assert (=> b!1896293 m!2327587))

(assert (=> b!1896293 m!2327589))

(declare-fun m!2327599 () Bool)

(assert (=> b!1896293 m!2327599))

(assert (=> b!1895854 d!580828))

(declare-fun d!580846 () Bool)

(assert (=> d!580846 (= (inv!28358 (tag!4190 (rule!5967 (h!26661 tokens!598)))) (= (mod (str.len (value!119149 (tag!4190 (rule!5967 (h!26661 tokens!598))))) 2) 0))))

(assert (=> b!1895844 d!580846))

(declare-fun d!580848 () Bool)

(declare-fun res!846340 () Bool)

(declare-fun e!1210613 () Bool)

(assert (=> d!580848 (=> (not res!846340) (not e!1210613))))

(assert (=> d!580848 (= res!846340 (semiInverseModEq!1529 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))))))

(assert (=> d!580848 (= (inv!28362 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) e!1210613)))

(declare-fun b!1896294 () Bool)

(assert (=> b!1896294 (= e!1210613 (equivClasses!1456 (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))))))

(assert (= (and d!580848 res!846340) b!1896294))

(declare-fun m!2327601 () Bool)

(assert (=> d!580848 m!2327601))

(declare-fun m!2327603 () Bool)

(assert (=> b!1896294 m!2327603))

(assert (=> b!1895844 d!580848))

(declare-fun d!580850 () Bool)

(declare-fun res!846345 () Bool)

(declare-fun e!1210618 () Bool)

(assert (=> d!580850 (=> res!846345 e!1210618)))

(assert (=> d!580850 (= res!846345 (not ((_ is Cons!21261) rules!3198)))))

(assert (=> d!580850 (= (sepAndNonSepRulesDisjointChars!872 rules!3198 rules!3198) e!1210618)))

(declare-fun b!1896299 () Bool)

(declare-fun e!1210619 () Bool)

(assert (=> b!1896299 (= e!1210618 e!1210619)))

(declare-fun res!846346 () Bool)

(assert (=> b!1896299 (=> (not res!846346) (not e!1210619))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!414 (Rule!7348 List!21343) Bool)

(assert (=> b!1896299 (= res!846346 (ruleDisjointCharsFromAllFromOtherType!414 (h!26662 rules!3198) rules!3198))))

(declare-fun b!1896300 () Bool)

(assert (=> b!1896300 (= e!1210619 (sepAndNonSepRulesDisjointChars!872 rules!3198 (t!176186 rules!3198)))))

(assert (= (and d!580850 (not res!846345)) b!1896299))

(assert (= (and b!1896299 res!846346) b!1896300))

(declare-fun m!2327605 () Bool)

(assert (=> b!1896299 m!2327605))

(declare-fun m!2327607 () Bool)

(assert (=> b!1896300 m!2327607))

(assert (=> b!1895858 d!580850))

(declare-fun d!580852 () Bool)

(declare-fun res!846347 () Bool)

(declare-fun e!1210620 () Bool)

(assert (=> d!580852 (=> (not res!846347) (not e!1210620))))

(assert (=> d!580852 (= res!846347 (not (isEmpty!13052 (originalCharacters!4581 separatorToken!354))))))

(assert (=> d!580852 (= (inv!28361 separatorToken!354) e!1210620)))

(declare-fun b!1896301 () Bool)

(declare-fun res!846348 () Bool)

(assert (=> b!1896301 (=> (not res!846348) (not e!1210620))))

(assert (=> b!1896301 (= res!846348 (= (originalCharacters!4581 separatorToken!354) (list!8646 (dynLambda!10339 (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (value!119150 separatorToken!354)))))))

(declare-fun b!1896302 () Bool)

(assert (=> b!1896302 (= e!1210620 (= (size!16848 separatorToken!354) (size!16851 (originalCharacters!4581 separatorToken!354))))))

(assert (= (and d!580852 res!846347) b!1896301))

(assert (= (and b!1896301 res!846348) b!1896302))

(declare-fun b_lambda!62327 () Bool)

(assert (=> (not b_lambda!62327) (not b!1896301)))

(assert (=> b!1896301 t!176207))

(declare-fun b_and!146353 () Bool)

(assert (= b_and!146297 (and (=> t!176207 result!139604) b_and!146353)))

(assert (=> b!1896301 t!176209))

(declare-fun b_and!146355 () Bool)

(assert (= b_and!146299 (and (=> t!176209 result!139606) b_and!146355)))

(assert (=> b!1896301 t!176211))

(declare-fun b_and!146357 () Bool)

(assert (= b_and!146301 (and (=> t!176211 result!139608) b_and!146357)))

(declare-fun m!2327609 () Bool)

(assert (=> d!580852 m!2327609))

(assert (=> b!1896301 m!2327389))

(assert (=> b!1896301 m!2327389))

(declare-fun m!2327611 () Bool)

(assert (=> b!1896301 m!2327611))

(declare-fun m!2327613 () Bool)

(assert (=> b!1896302 m!2327613))

(assert (=> start!190068 d!580852))

(declare-fun d!580854 () Bool)

(assert (=> d!580854 (= (inv!28358 (tag!4190 (h!26662 rules!3198))) (= (mod (str.len (value!119149 (tag!4190 (h!26662 rules!3198)))) 2) 0))))

(assert (=> b!1895859 d!580854))

(declare-fun d!580856 () Bool)

(declare-fun res!846349 () Bool)

(declare-fun e!1210621 () Bool)

(assert (=> d!580856 (=> (not res!846349) (not e!1210621))))

(assert (=> d!580856 (= res!846349 (semiInverseModEq!1529 (toChars!5250 (transformation!3774 (h!26662 rules!3198))) (toValue!5391 (transformation!3774 (h!26662 rules!3198)))))))

(assert (=> d!580856 (= (inv!28362 (transformation!3774 (h!26662 rules!3198))) e!1210621)))

(declare-fun b!1896303 () Bool)

(assert (=> b!1896303 (= e!1210621 (equivClasses!1456 (toChars!5250 (transformation!3774 (h!26662 rules!3198))) (toValue!5391 (transformation!3774 (h!26662 rules!3198)))))))

(assert (= (and d!580856 res!846349) b!1896303))

(declare-fun m!2327615 () Bool)

(assert (=> d!580856 m!2327615))

(declare-fun m!2327617 () Bool)

(assert (=> b!1896303 m!2327617))

(assert (=> b!1895859 d!580856))

(declare-fun d!580858 () Bool)

(declare-fun res!846354 () Bool)

(declare-fun e!1210626 () Bool)

(assert (=> d!580858 (=> res!846354 e!1210626)))

(assert (=> d!580858 (= res!846354 ((_ is Nil!21260) tokens!598))))

(assert (=> d!580858 (= (forall!4450 tokens!598 lambda!74069) e!1210626)))

(declare-fun b!1896308 () Bool)

(declare-fun e!1210627 () Bool)

(assert (=> b!1896308 (= e!1210626 e!1210627)))

(declare-fun res!846355 () Bool)

(assert (=> b!1896308 (=> (not res!846355) (not e!1210627))))

(declare-fun dynLambda!10349 (Int Token!7100) Bool)

(assert (=> b!1896308 (= res!846355 (dynLambda!10349 lambda!74069 (h!26661 tokens!598)))))

(declare-fun b!1896309 () Bool)

(assert (=> b!1896309 (= e!1210627 (forall!4450 (t!176185 tokens!598) lambda!74069))))

(assert (= (and d!580858 (not res!846354)) b!1896308))

(assert (= (and b!1896308 res!846355) b!1896309))

(declare-fun b_lambda!62329 () Bool)

(assert (=> (not b_lambda!62329) (not b!1896308)))

(declare-fun m!2327619 () Bool)

(assert (=> b!1896308 m!2327619))

(declare-fun m!2327621 () Bool)

(assert (=> b!1896309 m!2327621))

(assert (=> b!1895847 d!580858))

(declare-fun e!1210630 () Bool)

(assert (=> b!1895840 (= tp!541091 e!1210630)))

(declare-fun b!1896320 () Bool)

(declare-fun tp_is_empty!9065 () Bool)

(assert (=> b!1896320 (= e!1210630 tp_is_empty!9065)))

(declare-fun b!1896323 () Bool)

(declare-fun tp!541173 () Bool)

(declare-fun tp!541169 () Bool)

(assert (=> b!1896323 (= e!1210630 (and tp!541173 tp!541169))))

(declare-fun b!1896322 () Bool)

(declare-fun tp!541172 () Bool)

(assert (=> b!1896322 (= e!1210630 tp!541172)))

(declare-fun b!1896321 () Bool)

(declare-fun tp!541171 () Bool)

(declare-fun tp!541170 () Bool)

(assert (=> b!1896321 (= e!1210630 (and tp!541171 tp!541170))))

(assert (= (and b!1895840 ((_ is ElementMatch!5199) (regex!3774 (rule!5967 separatorToken!354)))) b!1896320))

(assert (= (and b!1895840 ((_ is Concat!9110) (regex!3774 (rule!5967 separatorToken!354)))) b!1896321))

(assert (= (and b!1895840 ((_ is Star!5199) (regex!3774 (rule!5967 separatorToken!354)))) b!1896322))

(assert (= (and b!1895840 ((_ is Union!5199) (regex!3774 (rule!5967 separatorToken!354)))) b!1896323))

(declare-fun b!1896328 () Bool)

(declare-fun e!1210633 () Bool)

(declare-fun tp!541176 () Bool)

(assert (=> b!1896328 (= e!1210633 (and tp_is_empty!9065 tp!541176))))

(assert (=> b!1895849 (= tp!541087 e!1210633)))

(assert (= (and b!1895849 ((_ is Cons!21259) (originalCharacters!4581 separatorToken!354))) b!1896328))

(declare-fun b!1896342 () Bool)

(declare-fun b_free!52965 () Bool)

(declare-fun b_next!53669 () Bool)

(assert (=> b!1896342 (= b_free!52965 (not b_next!53669))))

(declare-fun t!176275 () Bool)

(declare-fun tb!115529 () Bool)

(assert (=> (and b!1896342 (= (toValue!5391 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176275) tb!115529))

(declare-fun result!139682 () Bool)

(assert (= result!139682 result!139596))

(assert (=> d!580748 t!176275))

(assert (=> d!580782 t!176275))

(declare-fun t!176277 () Bool)

(declare-fun tb!115531 () Bool)

(assert (=> (and b!1896342 (= (toValue!5391 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176277) tb!115531))

(declare-fun result!139684 () Bool)

(assert (= result!139684 result!139610))

(assert (=> d!580782 t!176277))

(declare-fun b_and!146359 () Bool)

(declare-fun tp!541187 () Bool)

(assert (=> b!1896342 (= tp!541187 (and (=> t!176275 result!139682) (=> t!176277 result!139684) b_and!146359))))

(declare-fun b_free!52967 () Bool)

(declare-fun b_next!53671 () Bool)

(assert (=> b!1896342 (= b_free!52967 (not b_next!53671))))

(declare-fun tb!115533 () Bool)

(declare-fun t!176279 () Bool)

(assert (=> (and b!1896342 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354)))) t!176279) tb!115533))

(declare-fun result!139686 () Bool)

(assert (= result!139686 result!139604))

(assert (=> d!580780 t!176279))

(assert (=> b!1896301 t!176279))

(declare-fun t!176281 () Bool)

(declare-fun tb!115535 () Bool)

(assert (=> (and b!1896342 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176281) tb!115535))

(declare-fun result!139688 () Bool)

(assert (= result!139688 result!139616))

(assert (=> b!1896100 t!176281))

(assert (=> d!580786 t!176281))

(declare-fun t!176283 () Bool)

(declare-fun tb!115537 () Bool)

(assert (=> (and b!1896342 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176283) tb!115537))

(declare-fun result!139690 () Bool)

(assert (= result!139690 result!139588))

(assert (=> d!580748 t!176283))

(declare-fun b_and!146361 () Bool)

(declare-fun tp!541190 () Bool)

(assert (=> b!1896342 (= tp!541190 (and (=> t!176281 result!139688) (=> t!176283 result!139690) (=> t!176279 result!139686) b_and!146361))))

(declare-fun e!1210650 () Bool)

(declare-fun b!1896339 () Bool)

(declare-fun e!1210651 () Bool)

(declare-fun tp!541188 () Bool)

(assert (=> b!1896339 (= e!1210650 (and (inv!28361 (h!26661 (t!176185 tokens!598))) e!1210651 tp!541188))))

(declare-fun b!1896340 () Bool)

(declare-fun e!1210649 () Bool)

(declare-fun tp!541189 () Bool)

(assert (=> b!1896340 (= e!1210651 (and (inv!21 (value!119150 (h!26661 (t!176185 tokens!598)))) e!1210649 tp!541189))))

(declare-fun e!1210647 () Bool)

(declare-fun tp!541191 () Bool)

(declare-fun b!1896341 () Bool)

(assert (=> b!1896341 (= e!1210649 (and tp!541191 (inv!28358 (tag!4190 (rule!5967 (h!26661 (t!176185 tokens!598))))) (inv!28362 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) e!1210647))))

(assert (=> b!1895839 (= tp!541082 e!1210650)))

(assert (=> b!1896342 (= e!1210647 (and tp!541187 tp!541190))))

(assert (= b!1896341 b!1896342))

(assert (= b!1896340 b!1896341))

(assert (= b!1896339 b!1896340))

(assert (= (and b!1895839 ((_ is Cons!21260) (t!176185 tokens!598))) b!1896339))

(declare-fun m!2327623 () Bool)

(assert (=> b!1896339 m!2327623))

(declare-fun m!2327625 () Bool)

(assert (=> b!1896340 m!2327625))

(declare-fun m!2327627 () Bool)

(assert (=> b!1896341 m!2327627))

(declare-fun m!2327629 () Bool)

(assert (=> b!1896341 m!2327629))

(declare-fun e!1210652 () Bool)

(assert (=> b!1895844 (= tp!541090 e!1210652)))

(declare-fun b!1896343 () Bool)

(assert (=> b!1896343 (= e!1210652 tp_is_empty!9065)))

(declare-fun b!1896346 () Bool)

(declare-fun tp!541196 () Bool)

(declare-fun tp!541192 () Bool)

(assert (=> b!1896346 (= e!1210652 (and tp!541196 tp!541192))))

(declare-fun b!1896345 () Bool)

(declare-fun tp!541195 () Bool)

(assert (=> b!1896345 (= e!1210652 tp!541195)))

(declare-fun b!1896344 () Bool)

(declare-fun tp!541194 () Bool)

(declare-fun tp!541193 () Bool)

(assert (=> b!1896344 (= e!1210652 (and tp!541194 tp!541193))))

(assert (= (and b!1895844 ((_ is ElementMatch!5199) (regex!3774 (rule!5967 (h!26661 tokens!598))))) b!1896343))

(assert (= (and b!1895844 ((_ is Concat!9110) (regex!3774 (rule!5967 (h!26661 tokens!598))))) b!1896344))

(assert (= (and b!1895844 ((_ is Star!5199) (regex!3774 (rule!5967 (h!26661 tokens!598))))) b!1896345))

(assert (= (and b!1895844 ((_ is Union!5199) (regex!3774 (rule!5967 (h!26661 tokens!598))))) b!1896346))

(declare-fun b!1896357 () Bool)

(declare-fun b_free!52969 () Bool)

(declare-fun b_next!53673 () Bool)

(assert (=> b!1896357 (= b_free!52969 (not b_next!53673))))

(declare-fun tb!115539 () Bool)

(declare-fun t!176285 () Bool)

(assert (=> (and b!1896357 (= (toValue!5391 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176285) tb!115539))

(declare-fun result!139694 () Bool)

(assert (= result!139694 result!139596))

(assert (=> d!580748 t!176285))

(assert (=> d!580782 t!176285))

(declare-fun t!176287 () Bool)

(declare-fun tb!115541 () Bool)

(assert (=> (and b!1896357 (= (toValue!5391 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176287) tb!115541))

(declare-fun result!139696 () Bool)

(assert (= result!139696 result!139610))

(assert (=> d!580782 t!176287))

(declare-fun b_and!146363 () Bool)

(declare-fun tp!541208 () Bool)

(assert (=> b!1896357 (= tp!541208 (and (=> t!176285 result!139694) (=> t!176287 result!139696) b_and!146363))))

(declare-fun b_free!52971 () Bool)

(declare-fun b_next!53675 () Bool)

(assert (=> b!1896357 (= b_free!52971 (not b_next!53675))))

(declare-fun tb!115543 () Bool)

(declare-fun t!176289 () Bool)

(assert (=> (and b!1896357 (= (toChars!5250 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354)))) t!176289) tb!115543))

(declare-fun result!139698 () Bool)

(assert (= result!139698 result!139604))

(assert (=> d!580780 t!176289))

(assert (=> b!1896301 t!176289))

(declare-fun t!176291 () Bool)

(declare-fun tb!115545 () Bool)

(assert (=> (and b!1896357 (= (toChars!5250 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176291) tb!115545))

(declare-fun result!139700 () Bool)

(assert (= result!139700 result!139616))

(assert (=> b!1896100 t!176291))

(assert (=> d!580786 t!176291))

(declare-fun t!176293 () Bool)

(declare-fun tb!115547 () Bool)

(assert (=> (and b!1896357 (= (toChars!5250 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598))))) t!176293) tb!115547))

(declare-fun result!139702 () Bool)

(assert (= result!139702 result!139588))

(assert (=> d!580748 t!176293))

(declare-fun b_and!146365 () Bool)

(declare-fun tp!541207 () Bool)

(assert (=> b!1896357 (= tp!541207 (and (=> t!176293 result!139702) (=> t!176289 result!139698) (=> t!176291 result!139700) b_and!146365))))

(declare-fun e!1210662 () Bool)

(assert (=> b!1896357 (= e!1210662 (and tp!541208 tp!541207))))

(declare-fun tp!541205 () Bool)

(declare-fun b!1896356 () Bool)

(declare-fun e!1210663 () Bool)

(assert (=> b!1896356 (= e!1210663 (and tp!541205 (inv!28358 (tag!4190 (h!26662 (t!176186 rules!3198)))) (inv!28362 (transformation!3774 (h!26662 (t!176186 rules!3198)))) e!1210662))))

(declare-fun b!1896355 () Bool)

(declare-fun e!1210661 () Bool)

(declare-fun tp!541206 () Bool)

(assert (=> b!1896355 (= e!1210661 (and e!1210663 tp!541206))))

(assert (=> b!1895853 (= tp!541085 e!1210661)))

(assert (= b!1896356 b!1896357))

(assert (= b!1896355 b!1896356))

(assert (= (and b!1895853 ((_ is Cons!21261) (t!176186 rules!3198))) b!1896355))

(declare-fun m!2327631 () Bool)

(assert (=> b!1896356 m!2327631))

(declare-fun m!2327633 () Bool)

(assert (=> b!1896356 m!2327633))

(declare-fun e!1210665 () Bool)

(assert (=> b!1895859 (= tp!541083 e!1210665)))

(declare-fun b!1896358 () Bool)

(assert (=> b!1896358 (= e!1210665 tp_is_empty!9065)))

(declare-fun b!1896361 () Bool)

(declare-fun tp!541213 () Bool)

(declare-fun tp!541209 () Bool)

(assert (=> b!1896361 (= e!1210665 (and tp!541213 tp!541209))))

(declare-fun b!1896360 () Bool)

(declare-fun tp!541212 () Bool)

(assert (=> b!1896360 (= e!1210665 tp!541212)))

(declare-fun b!1896359 () Bool)

(declare-fun tp!541211 () Bool)

(declare-fun tp!541210 () Bool)

(assert (=> b!1896359 (= e!1210665 (and tp!541211 tp!541210))))

(assert (= (and b!1895859 ((_ is ElementMatch!5199) (regex!3774 (h!26662 rules!3198)))) b!1896358))

(assert (= (and b!1895859 ((_ is Concat!9110) (regex!3774 (h!26662 rules!3198)))) b!1896359))

(assert (= (and b!1895859 ((_ is Star!5199) (regex!3774 (h!26662 rules!3198)))) b!1896360))

(assert (= (and b!1895859 ((_ is Union!5199) (regex!3774 (h!26662 rules!3198)))) b!1896361))

(declare-fun b!1896362 () Bool)

(declare-fun e!1210666 () Bool)

(declare-fun tp!541214 () Bool)

(assert (=> b!1896362 (= e!1210666 (and tp_is_empty!9065 tp!541214))))

(assert (=> b!1895841 (= tp!541088 e!1210666)))

(assert (= (and b!1895841 ((_ is Cons!21259) (originalCharacters!4581 (h!26661 tokens!598)))) b!1896362))

(declare-fun b_lambda!62331 () Bool)

(assert (= b_lambda!62281 (or (and b!1896357 b_free!52971 (= (toChars!5250 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895848 b_free!52947) (and b!1895855 b_free!52951 (= (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895856 b_free!52955 (= (toChars!5250 (transformation!3774 (h!26662 rules!3198))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1896342 b_free!52967 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) b_lambda!62331)))

(declare-fun b_lambda!62333 () Bool)

(assert (= b_lambda!62329 (or b!1895847 b_lambda!62333)))

(declare-fun bs!413464 () Bool)

(declare-fun d!580860 () Bool)

(assert (= bs!413464 (and d!580860 b!1895847)))

(assert (=> bs!413464 (= (dynLambda!10349 lambda!74069 (h!26661 tokens!598)) (not (isSeparator!3774 (rule!5967 (h!26661 tokens!598)))))))

(assert (=> b!1896308 d!580860))

(declare-fun b_lambda!62335 () Bool)

(assert (= b_lambda!62291 (or (and b!1896357 b_free!52971 (= (toChars!5250 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895848 b_free!52947) (and b!1895855 b_free!52951 (= (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895856 b_free!52955 (= (toChars!5250 (transformation!3774 (h!26662 rules!3198))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1896342 b_free!52967 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) b_lambda!62335)))

(declare-fun b_lambda!62337 () Bool)

(assert (= b_lambda!62327 (or (and b!1895848 b_free!52947 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))))) (and b!1895855 b_free!52951) (and b!1896342 b_free!52967 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))))) (and b!1895856 b_free!52955 (= (toChars!5250 (transformation!3774 (h!26662 rules!3198))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))))) (and b!1896357 b_free!52971 (= (toChars!5250 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))))) b_lambda!62337)))

(declare-fun b_lambda!62339 () Bool)

(assert (= b_lambda!62283 (or (and b!1895855 b_free!52949 (= (toValue!5391 (transformation!3774 (rule!5967 separatorToken!354))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1896357 b_free!52969 (= (toValue!5391 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895848 b_free!52945) (and b!1896342 b_free!52965 (= (toValue!5391 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895856 b_free!52953 (= (toValue!5391 (transformation!3774 (h!26662 rules!3198))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) b_lambda!62339)))

(declare-fun b_lambda!62341 () Bool)

(assert (= b_lambda!62287 (or (and b!1895855 b_free!52949 (= (toValue!5391 (transformation!3774 (rule!5967 separatorToken!354))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1896357 b_free!52969 (= (toValue!5391 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895848 b_free!52945) (and b!1896342 b_free!52965 (= (toValue!5391 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895856 b_free!52953 (= (toValue!5391 (transformation!3774 (h!26662 rules!3198))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) b_lambda!62341)))

(declare-fun b_lambda!62343 () Bool)

(assert (= b_lambda!62289 (or (and b!1895855 b_free!52949 (= (toValue!5391 (transformation!3774 (rule!5967 separatorToken!354))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1896357 b_free!52969 (= (toValue!5391 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895848 b_free!52945) (and b!1896342 b_free!52965 (= (toValue!5391 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895856 b_free!52953 (= (toValue!5391 (transformation!3774 (h!26662 rules!3198))) (toValue!5391 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) b_lambda!62343)))

(declare-fun b_lambda!62345 () Bool)

(assert (= b_lambda!62285 (or (and b!1895848 b_free!52947 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))))) (and b!1895855 b_free!52951) (and b!1896342 b_free!52967 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))))) (and b!1895856 b_free!52955 (= (toChars!5250 (transformation!3774 (h!26662 rules!3198))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))))) (and b!1896357 b_free!52971 (= (toChars!5250 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))))) b_lambda!62345)))

(declare-fun b_lambda!62347 () Bool)

(assert (= b_lambda!62293 (or (and b!1896357 b_free!52971 (= (toChars!5250 (transformation!3774 (h!26662 (t!176186 rules!3198)))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895848 b_free!52947) (and b!1895855 b_free!52951 (= (toChars!5250 (transformation!3774 (rule!5967 separatorToken!354))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1895856 b_free!52955 (= (toChars!5250 (transformation!3774 (h!26662 rules!3198))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) (and b!1896342 b_free!52967 (= (toChars!5250 (transformation!3774 (rule!5967 (h!26661 (t!176185 tokens!598))))) (toChars!5250 (transformation!3774 (rule!5967 (h!26661 tokens!598)))))) b_lambda!62347)))

(check-sat (not b_lambda!62337) (not b!1896048) (not b!1896187) (not d!580786) b_and!146365 (not b!1896291) (not b_next!53675) (not b!1896072) (not b!1896074) (not b_next!53673) (not b!1896340) (not b!1896189) (not b!1895935) (not b!1895898) (not d!580782) (not b!1896040) (not d!580852) (not b!1896294) (not d!580820) (not b_lambda!62331) (not b!1896076) (not d!580788) tp_is_empty!9065 (not b!1895893) (not b!1896193) b_and!146287 (not b!1896356) (not b!1896077) (not b!1896299) (not b!1896362) (not d!580856) (not b!1896191) b_and!146289 (not bm!116952) (not b!1896303) (not d!580822) (not b_lambda!62339) (not d!580826) (not b_next!53671) (not b_lambda!62341) (not d!580780) (not b!1896346) b_and!146355 (not b!1896091) (not b!1896199) (not b!1896100) b_and!146357 (not d!580734) (not b!1896095) (not bm!116961) (not b!1896094) (not d!580828) (not d!580748) (not tb!115455) (not b!1896309) (not b!1895900) (not d!580798) (not b!1895899) (not b!1896080) (not d!580818) (not b_lambda!62347) (not b!1896186) (not b!1896154) (not tb!115467) (not b_next!53651) (not b_next!53649) (not b!1896293) (not d!580778) (not b_lambda!62345) (not d!580848) (not d!580796) (not b!1896361) (not b!1896047) (not tb!115461) (not b!1896190) b_and!146359 (not tb!115473) (not b!1896101) (not b!1896339) (not b!1896163) (not b!1896301) b_and!146285 (not b!1896360) (not b!1896300) (not b_next!53653) (not b!1896344) (not tb!115479) b_and!146363 (not b!1896292) (not b!1896355) (not b!1895934) (not b_next!53657) (not b!1896153) (not d!580776) (not b!1896195) (not b_next!53655) (not b!1896321) (not b!1896341) (not b_next!53669) b_and!146353 (not b!1896322) (not b_lambda!62333) (not d!580774) (not b!1896194) (not b!1896302) (not b_lambda!62335) (not b!1896198) (not b!1896345) (not b!1896206) (not b!1895897) (not d!580792) (not b!1895892) (not d!580784) (not b!1896323) (not b!1896051) (not b_next!53659) (not d!580742) b_and!146361 (not b_lambda!62343) (not b!1896328) (not b!1896188) (not b!1896359))
(check-sat b_and!146365 b_and!146287 b_and!146289 (not b_next!53671) b_and!146359 (not b_next!53655) (not b_next!53659) b_and!146361 (not b_next!53675) (not b_next!53673) b_and!146355 b_and!146357 (not b_next!53651) (not b_next!53649) b_and!146285 (not b_next!53653) b_and!146363 (not b_next!53657) (not b_next!53669) b_and!146353)
