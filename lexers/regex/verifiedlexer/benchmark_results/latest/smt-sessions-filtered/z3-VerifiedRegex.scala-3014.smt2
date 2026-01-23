; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180234 () Bool)

(assert start!180234)

(declare-fun b!1820178 () Bool)

(declare-fun b_free!50455 () Bool)

(declare-fun b_next!51159 () Bool)

(assert (=> b!1820178 (= b_free!50455 (not b_next!51159))))

(declare-fun tp!514422 () Bool)

(declare-fun b_and!141105 () Bool)

(assert (=> b!1820178 (= tp!514422 b_and!141105)))

(declare-fun b_free!50457 () Bool)

(declare-fun b_next!51161 () Bool)

(assert (=> b!1820178 (= b_free!50457 (not b_next!51161))))

(declare-fun tp!514421 () Bool)

(declare-fun b_and!141107 () Bool)

(assert (=> b!1820178 (= tp!514421 b_and!141107)))

(declare-fun b!1820175 () Bool)

(declare-fun b_free!50459 () Bool)

(declare-fun b_next!51163 () Bool)

(assert (=> b!1820175 (= b_free!50459 (not b_next!51163))))

(declare-fun tp!514420 () Bool)

(declare-fun b_and!141109 () Bool)

(assert (=> b!1820175 (= tp!514420 b_and!141109)))

(declare-fun b_free!50461 () Bool)

(declare-fun b_next!51165 () Bool)

(assert (=> b!1820175 (= b_free!50461 (not b_next!51165))))

(declare-fun tp!514426 () Bool)

(declare-fun b_and!141111 () Bool)

(assert (=> b!1820175 (= tp!514426 b_and!141111)))

(declare-fun b!1820170 () Bool)

(declare-fun b_free!50463 () Bool)

(declare-fun b_next!51167 () Bool)

(assert (=> b!1820170 (= b_free!50463 (not b_next!51167))))

(declare-fun tp!514416 () Bool)

(declare-fun b_and!141113 () Bool)

(assert (=> b!1820170 (= tp!514416 b_and!141113)))

(declare-fun b_free!50465 () Bool)

(declare-fun b_next!51169 () Bool)

(assert (=> b!1820170 (= b_free!50465 (not b_next!51169))))

(declare-fun tp!514415 () Bool)

(declare-fun b_and!141115 () Bool)

(assert (=> b!1820170 (= tp!514415 b_and!141115)))

(declare-fun b!1820161 () Bool)

(declare-fun e!1163081 () Bool)

(declare-fun e!1163073 () Bool)

(assert (=> b!1820161 (= e!1163081 e!1163073)))

(declare-fun res!818496 () Bool)

(assert (=> b!1820161 (=> (not res!818496) (not e!1163073))))

(declare-datatypes ((C!10008 0))(
  ( (C!10009 (val!5600 Int)) )
))
(declare-datatypes ((List!19994 0))(
  ( (Nil!19924) (Cons!19924 (h!25325 C!10008) (t!169839 List!19994)) )
))
(declare-fun suffix!1667 () List!19994)

(declare-fun input!3612 () List!19994)

(declare-fun lt!707162 () List!19994)

(declare-fun ++!5413 (List!19994 List!19994) List!19994)

(assert (=> b!1820161 (= res!818496 (= input!3612 (++!5413 lt!707162 suffix!1667)))))

(declare-datatypes ((List!19995 0))(
  ( (Nil!19925) (Cons!19925 (h!25326 (_ BitVec 16)) (t!169840 List!19995)) )
))
(declare-datatypes ((TokenValue!3679 0))(
  ( (FloatLiteralValue!7358 (text!26198 List!19995)) (TokenValueExt!3678 (__x!12660 Int)) (Broken!18395 (value!111927 List!19995)) (Object!3748) (End!3679) (Def!3679) (Underscore!3679) (Match!3679) (Else!3679) (Error!3679) (Case!3679) (If!3679) (Extends!3679) (Abstract!3679) (Class!3679) (Val!3679) (DelimiterValue!7358 (del!3739 List!19995)) (KeywordValue!3685 (value!111928 List!19995)) (CommentValue!7358 (value!111929 List!19995)) (WhitespaceValue!7358 (value!111930 List!19995)) (IndentationValue!3679 (value!111931 List!19995)) (String!22726) (Int32!3679) (Broken!18396 (value!111932 List!19995)) (Boolean!3680) (Unit!34604) (OperatorValue!3682 (op!3739 List!19995)) (IdentifierValue!7358 (value!111933 List!19995)) (IdentifierValue!7359 (value!111934 List!19995)) (WhitespaceValue!7359 (value!111935 List!19995)) (True!7358) (False!7358) (Broken!18397 (value!111936 List!19995)) (Broken!18398 (value!111937 List!19995)) (True!7359) (RightBrace!3679) (RightBracket!3679) (Colon!3679) (Null!3679) (Comma!3679) (LeftBracket!3679) (False!7359) (LeftBrace!3679) (ImaginaryLiteralValue!3679 (text!26199 List!19995)) (StringLiteralValue!11037 (value!111938 List!19995)) (EOFValue!3679 (value!111939 List!19995)) (IdentValue!3679 (value!111940 List!19995)) (DelimiterValue!7359 (value!111941 List!19995)) (DedentValue!3679 (value!111942 List!19995)) (NewLineValue!3679 (value!111943 List!19995)) (IntegerValue!11037 (value!111944 (_ BitVec 32)) (text!26200 List!19995)) (IntegerValue!11038 (value!111945 Int) (text!26201 List!19995)) (Times!3679) (Or!3679) (Equal!3679) (Minus!3679) (Broken!18399 (value!111946 List!19995)) (And!3679) (Div!3679) (LessEqual!3679) (Mod!3679) (Concat!8596) (Not!3679) (Plus!3679) (SpaceValue!3679 (value!111947 List!19995)) (IntegerValue!11039 (value!111948 Int) (text!26202 List!19995)) (StringLiteralValue!11038 (text!26203 List!19995)) (FloatLiteralValue!7359 (text!26204 List!19995)) (BytesLiteralValue!3679 (value!111949 List!19995)) (CommentValue!7359 (value!111950 List!19995)) (StringLiteralValue!11039 (value!111951 List!19995)) (ErrorTokenValue!3679 (msg!3740 List!19995)) )
))
(declare-datatypes ((IArray!13247 0))(
  ( (IArray!13248 (innerList!6681 List!19994)) )
))
(declare-datatypes ((Conc!6621 0))(
  ( (Node!6621 (left!15961 Conc!6621) (right!16291 Conc!6621) (csize!13472 Int) (cheight!6832 Int)) (Leaf!9636 (xs!9497 IArray!13247) (csize!13473 Int)) (Empty!6621) )
))
(declare-datatypes ((BalanceConc!13186 0))(
  ( (BalanceConc!13187 (c!297066 Conc!6621)) )
))
(declare-datatypes ((TokenValueInjection!7018 0))(
  ( (TokenValueInjection!7019 (toValue!5124 Int) (toChars!4983 Int)) )
))
(declare-datatypes ((Regex!4917 0))(
  ( (ElementMatch!4917 (c!297067 C!10008)) (Concat!8597 (regOne!10346 Regex!4917) (regTwo!10346 Regex!4917)) (EmptyExpr!4917) (Star!4917 (reg!5246 Regex!4917)) (EmptyLang!4917) (Union!4917 (regOne!10347 Regex!4917) (regTwo!10347 Regex!4917)) )
))
(declare-datatypes ((String!22727 0))(
  ( (String!22728 (value!111952 String)) )
))
(declare-datatypes ((Rule!6978 0))(
  ( (Rule!6979 (regex!3589 Regex!4917) (tag!4003 String!22727) (isSeparator!3589 Bool) (transformation!3589 TokenValueInjection!7018)) )
))
(declare-datatypes ((Token!6732 0))(
  ( (Token!6733 (value!111953 TokenValue!3679) (rule!5713 Rule!6978) (size!15815 Int) (originalCharacters!4397 List!19994)) )
))
(declare-fun token!556 () Token!6732)

(declare-fun list!8103 (BalanceConc!13186) List!19994)

(declare-fun charsOf!2232 (Token!6732) BalanceConc!13186)

(assert (=> b!1820161 (= lt!707162 (list!8103 (charsOf!2232 token!556)))))

(declare-fun b!1820162 () Bool)

(declare-fun e!1163067 () Bool)

(assert (=> b!1820162 (= e!1163067 e!1163081)))

(declare-fun res!818495 () Bool)

(assert (=> b!1820162 (=> (not res!818495) (not e!1163081))))

(declare-datatypes ((LexerInterface!3218 0))(
  ( (LexerInterfaceExt!3215 (__x!12661 Int)) (Lexer!3216) )
))
(declare-fun thiss!28068 () LexerInterface!3218)

(declare-datatypes ((List!19996 0))(
  ( (Nil!19926) (Cons!19926 (h!25327 Rule!6978) (t!169841 List!19996)) )
))
(declare-fun rules!4538 () List!19996)

(declare-datatypes ((tuple2!19458 0))(
  ( (tuple2!19459 (_1!11131 Token!6732) (_2!11131 List!19994)) )
))
(declare-datatypes ((Option!4169 0))(
  ( (None!4168) (Some!4168 (v!25705 tuple2!19458)) )
))
(declare-fun lt!707165 () Option!4169)

(declare-fun maxPrefix!1766 (LexerInterface!3218 List!19996 List!19994) Option!4169)

(assert (=> b!1820162 (= res!818495 (= (maxPrefix!1766 thiss!28068 rules!4538 input!3612) lt!707165))))

(assert (=> b!1820162 (= lt!707165 (Some!4168 (tuple2!19459 token!556 suffix!1667)))))

(declare-fun b!1820163 () Bool)

(declare-fun res!818494 () Bool)

(assert (=> b!1820163 (=> (not res!818494) (not e!1163067))))

(declare-fun rule!559 () Rule!6978)

(declare-fun contains!3626 (List!19996 Rule!6978) Bool)

(assert (=> b!1820163 (= res!818494 (contains!3626 rules!4538 rule!559))))

(declare-fun b!1820164 () Bool)

(declare-fun e!1163085 () Bool)

(assert (=> b!1820164 (= e!1163073 (not e!1163085))))

(declare-fun res!818492 () Bool)

(assert (=> b!1820164 (=> res!818492 e!1163085)))

(declare-fun matchR!2382 (Regex!4917 List!19994) Bool)

(assert (=> b!1820164 (= res!818492 (not (matchR!2382 (regex!3589 rule!559) lt!707162)))))

(declare-fun ruleValid!1081 (LexerInterface!3218 Rule!6978) Bool)

(assert (=> b!1820164 (ruleValid!1081 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34605 0))(
  ( (Unit!34606) )
))
(declare-fun lt!707163 () Unit!34605)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!602 (LexerInterface!3218 Rule!6978 List!19996) Unit!34605)

(assert (=> b!1820164 (= lt!707163 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!602 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1820165 () Bool)

(declare-fun res!818490 () Bool)

(assert (=> b!1820165 (=> (not res!818490) (not e!1163081))))

(assert (=> b!1820165 (= res!818490 (= (rule!5713 token!556) rule!559))))

(declare-fun e!1163080 () Bool)

(declare-fun b!1820166 () Bool)

(declare-fun tp!514423 () Bool)

(declare-fun e!1163068 () Bool)

(declare-fun inv!25958 (String!22727) Bool)

(declare-fun inv!25961 (TokenValueInjection!7018) Bool)

(assert (=> b!1820166 (= e!1163068 (and tp!514423 (inv!25958 (tag!4003 (h!25327 rules!4538))) (inv!25961 (transformation!3589 (h!25327 rules!4538))) e!1163080))))

(declare-fun b!1820167 () Bool)

(declare-fun res!818493 () Bool)

(assert (=> b!1820167 (=> (not res!818493) (not e!1163067))))

(declare-fun isEmpty!12597 (List!19996) Bool)

(assert (=> b!1820167 (= res!818493 (not (isEmpty!12597 rules!4538)))))

(declare-fun b!1820168 () Bool)

(declare-fun e!1163077 () Bool)

(assert (=> b!1820168 (= e!1163085 e!1163077)))

(declare-fun res!818489 () Bool)

(assert (=> b!1820168 (=> res!818489 e!1163077)))

(declare-fun lt!707157 () Option!4169)

(assert (=> b!1820168 (= res!818489 (not (= lt!707157 lt!707165)))))

(declare-fun lt!707164 () TokenValue!3679)

(declare-fun lt!707158 () Int)

(assert (=> b!1820168 (= lt!707157 (Some!4168 (tuple2!19459 (Token!6733 lt!707164 rule!559 lt!707158 lt!707162) suffix!1667)))))

(declare-fun maxPrefixOneRule!1131 (LexerInterface!3218 Rule!6978 List!19994) Option!4169)

(assert (=> b!1820168 (= lt!707157 (maxPrefixOneRule!1131 thiss!28068 rule!559 input!3612))))

(declare-fun size!15816 (List!19994) Int)

(assert (=> b!1820168 (= lt!707158 (size!15816 lt!707162))))

(declare-fun apply!5381 (TokenValueInjection!7018 BalanceConc!13186) TokenValue!3679)

(declare-fun seqFromList!2550 (List!19994) BalanceConc!13186)

(assert (=> b!1820168 (= lt!707164 (apply!5381 (transformation!3589 rule!559) (seqFromList!2550 lt!707162)))))

(declare-fun lt!707161 () Unit!34605)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!507 (LexerInterface!3218 List!19996 List!19994 List!19994 List!19994 Rule!6978) Unit!34605)

(assert (=> b!1820168 (= lt!707161 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!507 thiss!28068 rules!4538 lt!707162 input!3612 suffix!1667 rule!559))))

(declare-fun e!1163082 () Bool)

(declare-fun tp!514417 () Bool)

(declare-fun e!1163075 () Bool)

(declare-fun b!1820169 () Bool)

(assert (=> b!1820169 (= e!1163075 (and tp!514417 (inv!25958 (tag!4003 rule!559)) (inv!25961 (transformation!3589 rule!559)) e!1163082))))

(assert (=> b!1820170 (= e!1163080 (and tp!514416 tp!514415))))

(declare-fun res!818487 () Bool)

(assert (=> start!180234 (=> (not res!818487) (not e!1163067))))

(get-info :version)

(assert (=> start!180234 (= res!818487 ((_ is Lexer!3216) thiss!28068))))

(assert (=> start!180234 e!1163067))

(declare-fun e!1163070 () Bool)

(assert (=> start!180234 e!1163070))

(assert (=> start!180234 true))

(declare-fun e!1163071 () Bool)

(assert (=> start!180234 e!1163071))

(declare-fun e!1163086 () Bool)

(declare-fun inv!25962 (Token!6732) Bool)

(assert (=> start!180234 (and (inv!25962 token!556) e!1163086)))

(assert (=> start!180234 e!1163075))

(declare-fun e!1163076 () Bool)

(assert (=> start!180234 e!1163076))

(declare-fun b!1820171 () Bool)

(declare-fun res!818491 () Bool)

(assert (=> b!1820171 (=> (not res!818491) (not e!1163067))))

(declare-fun rulesInvariant!2887 (LexerInterface!3218 List!19996) Bool)

(assert (=> b!1820171 (= res!818491 (rulesInvariant!2887 thiss!28068 rules!4538))))

(declare-fun b!1820172 () Bool)

(declare-fun tp_is_empty!8069 () Bool)

(declare-fun tp!514424 () Bool)

(assert (=> b!1820172 (= e!1163070 (and tp_is_empty!8069 tp!514424))))

(declare-fun tp!514425 () Bool)

(declare-fun b!1820173 () Bool)

(declare-fun e!1163084 () Bool)

(declare-fun inv!21 (TokenValue!3679) Bool)

(assert (=> b!1820173 (= e!1163086 (and (inv!21 (value!111953 token!556)) e!1163084 tp!514425))))

(declare-fun b!1820174 () Bool)

(declare-fun e!1163079 () Bool)

(assert (=> b!1820174 (= e!1163077 e!1163079)))

(declare-fun res!818488 () Bool)

(assert (=> b!1820174 (=> res!818488 e!1163079)))

(declare-fun lambda!71212 () Int)

(declare-fun rulesRegex!921 (LexerInterface!3218 List!19996) Regex!4917)

(declare-datatypes ((List!19997 0))(
  ( (Nil!19927) (Cons!19927 (h!25328 Regex!4917) (t!169842 List!19997)) )
))
(declare-fun generalisedUnion!444 (List!19997) Regex!4917)

(declare-fun map!4114 (List!19996 Int) List!19997)

(assert (=> b!1820174 (= res!818488 (not (= (rulesRegex!921 thiss!28068 rules!4538) (generalisedUnion!444 (map!4114 rules!4538 lambda!71212)))))))

(declare-fun lt!707159 () Unit!34605)

(declare-fun lemma!445 (List!19994 Rule!6978 List!19996 List!19994 LexerInterface!3218 Token!6732 List!19996) Unit!34605)

(assert (=> b!1820174 (= lt!707159 (lemma!445 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (=> b!1820175 (= e!1163082 (and tp!514420 tp!514426))))

(declare-fun e!1163072 () Bool)

(declare-fun tp!514419 () Bool)

(declare-fun b!1820176 () Bool)

(assert (=> b!1820176 (= e!1163084 (and tp!514419 (inv!25958 (tag!4003 (rule!5713 token!556))) (inv!25961 (transformation!3589 (rule!5713 token!556))) e!1163072))))

(declare-fun b!1820177 () Bool)

(declare-fun tp!514414 () Bool)

(assert (=> b!1820177 (= e!1163071 (and e!1163068 tp!514414))))

(assert (=> b!1820178 (= e!1163072 (and tp!514422 tp!514421))))

(declare-fun b!1820179 () Bool)

(declare-fun tp!514418 () Bool)

(assert (=> b!1820179 (= e!1163076 (and tp_is_empty!8069 tp!514418))))

(declare-fun b!1820180 () Bool)

(assert (=> b!1820180 (= e!1163079 true)))

(declare-fun lt!707160 () Bool)

(declare-fun contains!3627 (List!19997 Regex!4917) Bool)

(assert (=> b!1820180 (= lt!707160 (contains!3627 (map!4114 rules!4538 lambda!71212) (regex!3589 rule!559)))))

(declare-fun lt!707166 () Unit!34605)

(declare-fun lemma!446 (List!19994 Rule!6978 List!19996 List!19994 LexerInterface!3218 Token!6732 List!19996) Unit!34605)

(assert (=> b!1820180 (= lt!707166 (lemma!446 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (= (and start!180234 res!818487) b!1820167))

(assert (= (and b!1820167 res!818493) b!1820171))

(assert (= (and b!1820171 res!818491) b!1820163))

(assert (= (and b!1820163 res!818494) b!1820162))

(assert (= (and b!1820162 res!818495) b!1820165))

(assert (= (and b!1820165 res!818490) b!1820161))

(assert (= (and b!1820161 res!818496) b!1820164))

(assert (= (and b!1820164 (not res!818492)) b!1820168))

(assert (= (and b!1820168 (not res!818489)) b!1820174))

(assert (= (and b!1820174 (not res!818488)) b!1820180))

(assert (= (and start!180234 ((_ is Cons!19924) suffix!1667)) b!1820172))

(assert (= b!1820166 b!1820170))

(assert (= b!1820177 b!1820166))

(assert (= (and start!180234 ((_ is Cons!19926) rules!4538)) b!1820177))

(assert (= b!1820176 b!1820178))

(assert (= b!1820173 b!1820176))

(assert (= start!180234 b!1820173))

(assert (= b!1820169 b!1820175))

(assert (= start!180234 b!1820169))

(assert (= (and start!180234 ((_ is Cons!19924) input!3612)) b!1820179))

(declare-fun m!2249119 () Bool)

(assert (=> b!1820166 m!2249119))

(declare-fun m!2249121 () Bool)

(assert (=> b!1820166 m!2249121))

(declare-fun m!2249123 () Bool)

(assert (=> b!1820164 m!2249123))

(declare-fun m!2249125 () Bool)

(assert (=> b!1820164 m!2249125))

(declare-fun m!2249127 () Bool)

(assert (=> b!1820164 m!2249127))

(declare-fun m!2249129 () Bool)

(assert (=> b!1820167 m!2249129))

(declare-fun m!2249131 () Bool)

(assert (=> b!1820174 m!2249131))

(declare-fun m!2249133 () Bool)

(assert (=> b!1820174 m!2249133))

(assert (=> b!1820174 m!2249133))

(declare-fun m!2249135 () Bool)

(assert (=> b!1820174 m!2249135))

(declare-fun m!2249137 () Bool)

(assert (=> b!1820174 m!2249137))

(declare-fun m!2249139 () Bool)

(assert (=> b!1820173 m!2249139))

(declare-fun m!2249141 () Bool)

(assert (=> b!1820168 m!2249141))

(declare-fun m!2249143 () Bool)

(assert (=> b!1820168 m!2249143))

(assert (=> b!1820168 m!2249141))

(declare-fun m!2249145 () Bool)

(assert (=> b!1820168 m!2249145))

(declare-fun m!2249147 () Bool)

(assert (=> b!1820168 m!2249147))

(declare-fun m!2249149 () Bool)

(assert (=> b!1820168 m!2249149))

(declare-fun m!2249151 () Bool)

(assert (=> b!1820161 m!2249151))

(declare-fun m!2249153 () Bool)

(assert (=> b!1820161 m!2249153))

(assert (=> b!1820161 m!2249153))

(declare-fun m!2249155 () Bool)

(assert (=> b!1820161 m!2249155))

(declare-fun m!2249157 () Bool)

(assert (=> b!1820169 m!2249157))

(declare-fun m!2249159 () Bool)

(assert (=> b!1820169 m!2249159))

(declare-fun m!2249161 () Bool)

(assert (=> b!1820162 m!2249161))

(declare-fun m!2249163 () Bool)

(assert (=> b!1820176 m!2249163))

(declare-fun m!2249165 () Bool)

(assert (=> b!1820176 m!2249165))

(declare-fun m!2249167 () Bool)

(assert (=> b!1820163 m!2249167))

(declare-fun m!2249169 () Bool)

(assert (=> start!180234 m!2249169))

(assert (=> b!1820180 m!2249133))

(assert (=> b!1820180 m!2249133))

(declare-fun m!2249171 () Bool)

(assert (=> b!1820180 m!2249171))

(declare-fun m!2249173 () Bool)

(assert (=> b!1820180 m!2249173))

(declare-fun m!2249175 () Bool)

(assert (=> b!1820171 m!2249175))

(check-sat (not b!1820176) (not b!1820180) (not b_next!51159) b_and!141115 (not b!1820164) (not b!1820171) (not b_next!51169) (not b_next!51167) b_and!141107 (not start!180234) (not b_next!51165) (not b!1820168) (not b_next!51163) (not b!1820172) (not b!1820173) b_and!141109 (not b!1820174) (not b!1820163) (not b!1820179) tp_is_empty!8069 (not b!1820177) b_and!141111 b_and!141113 (not b!1820169) (not b!1820167) b_and!141105 (not b_next!51161) (not b!1820166) (not b!1820161) (not b!1820162))
(check-sat (not b_next!51159) (not b_next!51163) b_and!141115 b_and!141109 (not b_next!51169) b_and!141105 (not b_next!51167) (not b_next!51161) b_and!141107 (not b_next!51165) b_and!141111 b_and!141113)
