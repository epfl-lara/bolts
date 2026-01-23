; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403926 () Bool)

(assert start!403926)

(declare-fun b!4224926 () Bool)

(declare-fun b_free!124347 () Bool)

(declare-fun b_next!125051 () Bool)

(assert (=> b!4224926 (= b_free!124347 (not b_next!125051))))

(declare-fun tp!1293223 () Bool)

(declare-fun b_and!333581 () Bool)

(assert (=> b!4224926 (= tp!1293223 b_and!333581)))

(declare-fun b_free!124349 () Bool)

(declare-fun b_next!125053 () Bool)

(assert (=> b!4224926 (= b_free!124349 (not b_next!125053))))

(declare-fun tp!1293226 () Bool)

(declare-fun b_and!333583 () Bool)

(assert (=> b!4224926 (= tp!1293226 b_and!333583)))

(declare-fun b!4224931 () Bool)

(declare-fun b_free!124351 () Bool)

(declare-fun b_next!125055 () Bool)

(assert (=> b!4224931 (= b_free!124351 (not b_next!125055))))

(declare-fun tp!1293221 () Bool)

(declare-fun b_and!333585 () Bool)

(assert (=> b!4224931 (= tp!1293221 b_and!333585)))

(declare-fun b_free!124353 () Bool)

(declare-fun b_next!125057 () Bool)

(assert (=> b!4224931 (= b_free!124353 (not b_next!125057))))

(declare-fun tp!1293224 () Bool)

(declare-fun b_and!333587 () Bool)

(assert (=> b!4224931 (= tp!1293224 b_and!333587)))

(declare-fun e!2623091 () Bool)

(assert (=> b!4224926 (= e!2623091 (and tp!1293223 tp!1293226))))

(declare-fun e!2623092 () Bool)

(declare-fun e!2623089 () Bool)

(declare-fun b!4224927 () Bool)

(declare-fun tp!1293222 () Bool)

(declare-datatypes ((List!46651 0))(
  ( (Nil!46527) (Cons!46527 (h!51947 (_ BitVec 16)) (t!349268 List!46651)) )
))
(declare-datatypes ((TokenValue!8046 0))(
  ( (FloatLiteralValue!16092 (text!56767 List!46651)) (TokenValueExt!8045 (__x!28315 Int)) (Broken!40230 (value!243257 List!46651)) (Object!8169) (End!8046) (Def!8046) (Underscore!8046) (Match!8046) (Else!8046) (Error!8046) (Case!8046) (If!8046) (Extends!8046) (Abstract!8046) (Class!8046) (Val!8046) (DelimiterValue!16092 (del!8106 List!46651)) (KeywordValue!8052 (value!243258 List!46651)) (CommentValue!16092 (value!243259 List!46651)) (WhitespaceValue!16092 (value!243260 List!46651)) (IndentationValue!8046 (value!243261 List!46651)) (String!54099) (Int32!8046) (Broken!40231 (value!243262 List!46651)) (Boolean!8047) (Unit!65686) (OperatorValue!8049 (op!8106 List!46651)) (IdentifierValue!16092 (value!243263 List!46651)) (IdentifierValue!16093 (value!243264 List!46651)) (WhitespaceValue!16093 (value!243265 List!46651)) (True!16092) (False!16092) (Broken!40232 (value!243266 List!46651)) (Broken!40233 (value!243267 List!46651)) (True!16093) (RightBrace!8046) (RightBracket!8046) (Colon!8046) (Null!8046) (Comma!8046) (LeftBracket!8046) (False!16093) (LeftBrace!8046) (ImaginaryLiteralValue!8046 (text!56768 List!46651)) (StringLiteralValue!24138 (value!243268 List!46651)) (EOFValue!8046 (value!243269 List!46651)) (IdentValue!8046 (value!243270 List!46651)) (DelimiterValue!16093 (value!243271 List!46651)) (DedentValue!8046 (value!243272 List!46651)) (NewLineValue!8046 (value!243273 List!46651)) (IntegerValue!24138 (value!243274 (_ BitVec 32)) (text!56769 List!46651)) (IntegerValue!24139 (value!243275 Int) (text!56770 List!46651)) (Times!8046) (Or!8046) (Equal!8046) (Minus!8046) (Broken!40234 (value!243276 List!46651)) (And!8046) (Div!8046) (LessEqual!8046) (Mod!8046) (Concat!20767) (Not!8046) (Plus!8046) (SpaceValue!8046 (value!243277 List!46651)) (IntegerValue!24140 (value!243278 Int) (text!56771 List!46651)) (StringLiteralValue!24139 (text!56772 List!46651)) (FloatLiteralValue!16093 (text!56773 List!46651)) (BytesLiteralValue!8046 (value!243279 List!46651)) (CommentValue!16093 (value!243280 List!46651)) (StringLiteralValue!24140 (value!243281 List!46651)) (ErrorTokenValue!8046 (msg!8107 List!46651)) )
))
(declare-datatypes ((C!25636 0))(
  ( (C!25637 (val!14980 Int)) )
))
(declare-datatypes ((List!46652 0))(
  ( (Nil!46528) (Cons!46528 (h!51948 C!25636) (t!349269 List!46652)) )
))
(declare-datatypes ((IArray!28059 0))(
  ( (IArray!28060 (innerList!14087 List!46652)) )
))
(declare-datatypes ((Conc!14027 0))(
  ( (Node!14027 (left!34590 Conc!14027) (right!34920 Conc!14027) (csize!28284 Int) (cheight!14238 Int)) (Leaf!21679 (xs!17333 IArray!28059) (csize!28285 Int)) (Empty!14027) )
))
(declare-datatypes ((BalanceConc!27648 0))(
  ( (BalanceConc!27649 (c!718588 Conc!14027)) )
))
(declare-datatypes ((TokenValueInjection!15520 0))(
  ( (TokenValueInjection!15521 (toValue!10544 Int) (toChars!10403 Int)) )
))
(declare-datatypes ((Regex!12721 0))(
  ( (ElementMatch!12721 (c!718589 C!25636)) (Concat!20768 (regOne!25954 Regex!12721) (regTwo!25954 Regex!12721)) (EmptyExpr!12721) (Star!12721 (reg!13050 Regex!12721)) (EmptyLang!12721) (Union!12721 (regOne!25955 Regex!12721) (regTwo!25955 Regex!12721)) )
))
(declare-datatypes ((String!54100 0))(
  ( (String!54101 (value!243282 String)) )
))
(declare-datatypes ((Rule!15432 0))(
  ( (Rule!15433 (regex!7816 Regex!12721) (tag!8680 String!54100) (isSeparator!7816 Bool) (transformation!7816 TokenValueInjection!15520)) )
))
(declare-fun r!4313 () Rule!15432)

(declare-fun inv!61196 (String!54100) Bool)

(declare-fun inv!61198 (TokenValueInjection!15520) Bool)

(assert (=> b!4224927 (= e!2623092 (and tp!1293222 (inv!61196 (tag!8680 r!4313)) (inv!61198 (transformation!7816 r!4313)) e!2623089))))

(declare-fun b!4224928 () Bool)

(declare-fun e!2623090 () Bool)

(declare-fun e!2623087 () Bool)

(assert (=> b!4224928 (= e!2623090 (not e!2623087))))

(declare-fun res!1737042 () Bool)

(assert (=> b!4224928 (=> res!1737042 e!2623087)))

(declare-datatypes ((List!46653 0))(
  ( (Nil!46529) (Cons!46529 (h!51949 Rule!15432) (t!349270 List!46653)) )
))
(declare-fun rules!4013 () List!46653)

(get-info :version)

(assert (=> b!4224928 (= res!1737042 (or (and ((_ is Cons!46529) rules!4013) (= r!4313 (h!51949 rules!4013))) (not ((_ is Cons!46529) rules!4013)) (= r!4313 (h!51949 rules!4013))))))

(declare-datatypes ((LexerInterface!7411 0))(
  ( (LexerInterfaceExt!7408 (__x!28316 Int)) (Lexer!7409) )
))
(declare-fun thiss!26728 () LexerInterface!7411)

(declare-fun ruleValid!3524 (LexerInterface!7411 Rule!15432) Bool)

(assert (=> b!4224928 (ruleValid!3524 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65687 0))(
  ( (Unit!65688) )
))
(declare-fun lt!1502812 () Unit!65687)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2436 (LexerInterface!7411 Rule!15432 List!46653) Unit!65687)

(assert (=> b!4224928 (= lt!1502812 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2436 thiss!26728 r!4313 rules!4013))))

(declare-fun b!4224929 () Bool)

(declare-fun res!1737045 () Bool)

(assert (=> b!4224929 (=> res!1737045 e!2623087)))

(declare-fun isEmpty!27572 (List!46653) Bool)

(assert (=> b!4224929 (= res!1737045 (isEmpty!27572 (t!349270 rules!4013)))))

(declare-fun b!4224930 () Bool)

(declare-fun res!1737043 () Bool)

(assert (=> b!4224930 (=> (not res!1737043) (not e!2623090))))

(declare-fun input!3561 () List!46652)

(declare-datatypes ((Token!14330 0))(
  ( (Token!14331 (value!243283 TokenValue!8046) (rule!10960 Rule!15432) (size!34151 Int) (originalCharacters!8196 List!46652)) )
))
(declare-datatypes ((tuple2!44234 0))(
  ( (tuple2!44235 (_1!25251 Token!14330) (_2!25251 List!46652)) )
))
(declare-datatypes ((Option!10002 0))(
  ( (None!10001) (Some!10001 (v!40905 tuple2!44234)) )
))
(declare-fun isEmpty!27573 (Option!10002) Bool)

(declare-fun maxPrefix!4449 (LexerInterface!7411 List!46653 List!46652) Option!10002)

(assert (=> b!4224930 (= res!1737043 (isEmpty!27573 (maxPrefix!4449 thiss!26728 rules!4013 input!3561)))))

(assert (=> b!4224931 (= e!2623089 (and tp!1293221 tp!1293224))))

(declare-fun b!4224933 () Bool)

(declare-fun rulesValidInductive!2920 (LexerInterface!7411 List!46653) Bool)

(assert (=> b!4224933 (= e!2623087 (rulesValidInductive!2920 thiss!26728 (t!349270 rules!4013)))))

(declare-fun b!4224934 () Bool)

(declare-fun res!1737041 () Bool)

(assert (=> b!4224934 (=> (not res!1737041) (not e!2623090))))

(declare-fun contains!9639 (List!46653 Rule!15432) Bool)

(assert (=> b!4224934 (= res!1737041 (contains!9639 rules!4013 r!4313))))

(declare-fun b!4224935 () Bool)

(declare-fun res!1737044 () Bool)

(assert (=> b!4224935 (=> (not res!1737044) (not e!2623090))))

(assert (=> b!4224935 (= res!1737044 (not (isEmpty!27572 rules!4013)))))

(declare-fun res!1737040 () Bool)

(assert (=> start!403926 (=> (not res!1737040) (not e!2623090))))

(assert (=> start!403926 (= res!1737040 ((_ is Lexer!7409) thiss!26728))))

(assert (=> start!403926 e!2623090))

(assert (=> start!403926 true))

(declare-fun e!2623083 () Bool)

(assert (=> start!403926 e!2623083))

(assert (=> start!403926 e!2623092))

(declare-fun e!2623088 () Bool)

(assert (=> start!403926 e!2623088))

(declare-fun b!4224932 () Bool)

(declare-fun tp_is_empty!22405 () Bool)

(declare-fun tp!1293225 () Bool)

(assert (=> b!4224932 (= e!2623088 (and tp_is_empty!22405 tp!1293225))))

(declare-fun b!4224936 () Bool)

(declare-fun res!1737039 () Bool)

(assert (=> b!4224936 (=> (not res!1737039) (not e!2623090))))

(assert (=> b!4224936 (= res!1737039 (rulesValidInductive!2920 thiss!26728 rules!4013))))

(declare-fun e!2623085 () Bool)

(declare-fun tp!1293220 () Bool)

(declare-fun b!4224937 () Bool)

(assert (=> b!4224937 (= e!2623085 (and tp!1293220 (inv!61196 (tag!8680 (h!51949 rules!4013))) (inv!61198 (transformation!7816 (h!51949 rules!4013))) e!2623091))))

(declare-fun b!4224938 () Bool)

(declare-fun tp!1293219 () Bool)

(assert (=> b!4224938 (= e!2623083 (and e!2623085 tp!1293219))))

(assert (= (and start!403926 res!1737040) b!4224935))

(assert (= (and b!4224935 res!1737044) b!4224936))

(assert (= (and b!4224936 res!1737039) b!4224934))

(assert (= (and b!4224934 res!1737041) b!4224930))

(assert (= (and b!4224930 res!1737043) b!4224928))

(assert (= (and b!4224928 (not res!1737042)) b!4224929))

(assert (= (and b!4224929 (not res!1737045)) b!4224933))

(assert (= b!4224937 b!4224926))

(assert (= b!4224938 b!4224937))

(assert (= (and start!403926 ((_ is Cons!46529) rules!4013)) b!4224938))

(assert (= b!4224927 b!4224931))

(assert (= start!403926 b!4224927))

(assert (= (and start!403926 ((_ is Cons!46528) input!3561)) b!4224932))

(declare-fun m!4813113 () Bool)

(assert (=> b!4224930 m!4813113))

(assert (=> b!4224930 m!4813113))

(declare-fun m!4813115 () Bool)

(assert (=> b!4224930 m!4813115))

(declare-fun m!4813117 () Bool)

(assert (=> b!4224927 m!4813117))

(declare-fun m!4813119 () Bool)

(assert (=> b!4224927 m!4813119))

(declare-fun m!4813121 () Bool)

(assert (=> b!4224928 m!4813121))

(declare-fun m!4813123 () Bool)

(assert (=> b!4224928 m!4813123))

(declare-fun m!4813125 () Bool)

(assert (=> b!4224929 m!4813125))

(declare-fun m!4813127 () Bool)

(assert (=> b!4224936 m!4813127))

(declare-fun m!4813129 () Bool)

(assert (=> b!4224937 m!4813129))

(declare-fun m!4813131 () Bool)

(assert (=> b!4224937 m!4813131))

(declare-fun m!4813133 () Bool)

(assert (=> b!4224934 m!4813133))

(declare-fun m!4813135 () Bool)

(assert (=> b!4224935 m!4813135))

(declare-fun m!4813137 () Bool)

(assert (=> b!4224933 m!4813137))

(check-sat (not b!4224932) b_and!333585 (not b!4224937) (not b_next!125055) (not b!4224930) b_and!333587 (not b!4224928) (not b!4224929) (not b!4224927) b_and!333583 (not b!4224934) (not b_next!125051) tp_is_empty!22405 (not b!4224933) (not b!4224938) (not b_next!125053) (not b!4224936) b_and!333581 (not b!4224935) (not b_next!125057))
(check-sat b_and!333585 (not b_next!125055) b_and!333587 b_and!333581 b_and!333583 (not b_next!125057) (not b_next!125051) (not b_next!125053))
(get-model)

(declare-fun d!1244044 () Bool)

(declare-fun res!1737054 () Bool)

(declare-fun e!2623095 () Bool)

(assert (=> d!1244044 (=> (not res!1737054) (not e!2623095))))

(declare-fun validRegex!5773 (Regex!12721) Bool)

(assert (=> d!1244044 (= res!1737054 (validRegex!5773 (regex!7816 r!4313)))))

(assert (=> d!1244044 (= (ruleValid!3524 thiss!26728 r!4313) e!2623095)))

(declare-fun b!4224943 () Bool)

(declare-fun res!1737055 () Bool)

(assert (=> b!4224943 (=> (not res!1737055) (not e!2623095))))

(declare-fun nullable!4486 (Regex!12721) Bool)

(assert (=> b!4224943 (= res!1737055 (not (nullable!4486 (regex!7816 r!4313))))))

(declare-fun b!4224944 () Bool)

(assert (=> b!4224944 (= e!2623095 (not (= (tag!8680 r!4313) (String!54101 ""))))))

(assert (= (and d!1244044 res!1737054) b!4224943))

(assert (= (and b!4224943 res!1737055) b!4224944))

(declare-fun m!4813139 () Bool)

(assert (=> d!1244044 m!4813139))

(declare-fun m!4813141 () Bool)

(assert (=> b!4224943 m!4813141))

(assert (=> b!4224928 d!1244044))

(declare-fun d!1244046 () Bool)

(assert (=> d!1244046 (ruleValid!3524 thiss!26728 r!4313)))

(declare-fun lt!1502815 () Unit!65687)

(declare-fun choose!25882 (LexerInterface!7411 Rule!15432 List!46653) Unit!65687)

(assert (=> d!1244046 (= lt!1502815 (choose!25882 thiss!26728 r!4313 rules!4013))))

(assert (=> d!1244046 (contains!9639 rules!4013 r!4313)))

(assert (=> d!1244046 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2436 thiss!26728 r!4313 rules!4013) lt!1502815)))

(declare-fun bs!597814 () Bool)

(assert (= bs!597814 d!1244046))

(assert (=> bs!597814 m!4813121))

(declare-fun m!4813143 () Bool)

(assert (=> bs!597814 m!4813143))

(assert (=> bs!597814 m!4813133))

(assert (=> b!4224928 d!1244046))

(declare-fun d!1244048 () Bool)

(assert (=> d!1244048 true))

(declare-fun lt!1502836 () Bool)

(declare-fun lambda!129883 () Int)

(declare-fun forall!8506 (List!46653 Int) Bool)

(assert (=> d!1244048 (= lt!1502836 (forall!8506 (t!349270 rules!4013) lambda!129883))))

(declare-fun e!2623115 () Bool)

(assert (=> d!1244048 (= lt!1502836 e!2623115)))

(declare-fun res!1737091 () Bool)

(assert (=> d!1244048 (=> res!1737091 e!2623115)))

(assert (=> d!1244048 (= res!1737091 (not ((_ is Cons!46529) (t!349270 rules!4013))))))

(assert (=> d!1244048 (= (rulesValidInductive!2920 thiss!26728 (t!349270 rules!4013)) lt!1502836)))

(declare-fun b!4224984 () Bool)

(declare-fun e!2623116 () Bool)

(assert (=> b!4224984 (= e!2623115 e!2623116)))

(declare-fun res!1737090 () Bool)

(assert (=> b!4224984 (=> (not res!1737090) (not e!2623116))))

(assert (=> b!4224984 (= res!1737090 (ruleValid!3524 thiss!26728 (h!51949 (t!349270 rules!4013))))))

(declare-fun b!4224985 () Bool)

(assert (=> b!4224985 (= e!2623116 (rulesValidInductive!2920 thiss!26728 (t!349270 (t!349270 rules!4013))))))

(assert (= (and d!1244048 (not res!1737091)) b!4224984))

(assert (= (and b!4224984 res!1737090) b!4224985))

(declare-fun m!4813183 () Bool)

(assert (=> d!1244048 m!4813183))

(declare-fun m!4813185 () Bool)

(assert (=> b!4224984 m!4813185))

(declare-fun m!4813187 () Bool)

(assert (=> b!4224985 m!4813187))

(assert (=> b!4224933 d!1244048))

(declare-fun d!1244058 () Bool)

(assert (=> d!1244058 (= (inv!61196 (tag!8680 r!4313)) (= (mod (str.len (value!243282 (tag!8680 r!4313))) 2) 0))))

(assert (=> b!4224927 d!1244058))

(declare-fun d!1244062 () Bool)

(declare-fun res!1737100 () Bool)

(declare-fun e!2623122 () Bool)

(assert (=> d!1244062 (=> (not res!1737100) (not e!2623122))))

(declare-fun semiInverseModEq!3399 (Int Int) Bool)

(assert (=> d!1244062 (= res!1737100 (semiInverseModEq!3399 (toChars!10403 (transformation!7816 r!4313)) (toValue!10544 (transformation!7816 r!4313))))))

(assert (=> d!1244062 (= (inv!61198 (transformation!7816 r!4313)) e!2623122)))

(declare-fun b!4224996 () Bool)

(declare-fun equivClasses!3298 (Int Int) Bool)

(assert (=> b!4224996 (= e!2623122 (equivClasses!3298 (toChars!10403 (transformation!7816 r!4313)) (toValue!10544 (transformation!7816 r!4313))))))

(assert (= (and d!1244062 res!1737100) b!4224996))

(declare-fun m!4813193 () Bool)

(assert (=> d!1244062 m!4813193))

(declare-fun m!4813195 () Bool)

(assert (=> b!4224996 m!4813195))

(assert (=> b!4224927 d!1244062))

(declare-fun d!1244066 () Bool)

(assert (=> d!1244066 (= (inv!61196 (tag!8680 (h!51949 rules!4013))) (= (mod (str.len (value!243282 (tag!8680 (h!51949 rules!4013)))) 2) 0))))

(assert (=> b!4224937 d!1244066))

(declare-fun d!1244068 () Bool)

(declare-fun res!1737101 () Bool)

(declare-fun e!2623123 () Bool)

(assert (=> d!1244068 (=> (not res!1737101) (not e!2623123))))

(assert (=> d!1244068 (= res!1737101 (semiInverseModEq!3399 (toChars!10403 (transformation!7816 (h!51949 rules!4013))) (toValue!10544 (transformation!7816 (h!51949 rules!4013)))))))

(assert (=> d!1244068 (= (inv!61198 (transformation!7816 (h!51949 rules!4013))) e!2623123)))

(declare-fun b!4224997 () Bool)

(assert (=> b!4224997 (= e!2623123 (equivClasses!3298 (toChars!10403 (transformation!7816 (h!51949 rules!4013))) (toValue!10544 (transformation!7816 (h!51949 rules!4013)))))))

(assert (= (and d!1244068 res!1737101) b!4224997))

(declare-fun m!4813197 () Bool)

(assert (=> d!1244068 m!4813197))

(declare-fun m!4813199 () Bool)

(assert (=> b!4224997 m!4813199))

(assert (=> b!4224937 d!1244068))

(declare-fun bs!597815 () Bool)

(declare-fun d!1244070 () Bool)

(assert (= bs!597815 (and d!1244070 d!1244048)))

(declare-fun lambda!129884 () Int)

(assert (=> bs!597815 (= lambda!129884 lambda!129883)))

(assert (=> d!1244070 true))

(declare-fun lt!1502839 () Bool)

(assert (=> d!1244070 (= lt!1502839 (forall!8506 rules!4013 lambda!129884))))

(declare-fun e!2623124 () Bool)

(assert (=> d!1244070 (= lt!1502839 e!2623124)))

(declare-fun res!1737103 () Bool)

(assert (=> d!1244070 (=> res!1737103 e!2623124)))

(assert (=> d!1244070 (= res!1737103 (not ((_ is Cons!46529) rules!4013)))))

(assert (=> d!1244070 (= (rulesValidInductive!2920 thiss!26728 rules!4013) lt!1502839)))

(declare-fun b!4224998 () Bool)

(declare-fun e!2623125 () Bool)

(assert (=> b!4224998 (= e!2623124 e!2623125)))

(declare-fun res!1737102 () Bool)

(assert (=> b!4224998 (=> (not res!1737102) (not e!2623125))))

(assert (=> b!4224998 (= res!1737102 (ruleValid!3524 thiss!26728 (h!51949 rules!4013)))))

(declare-fun b!4224999 () Bool)

(assert (=> b!4224999 (= e!2623125 (rulesValidInductive!2920 thiss!26728 (t!349270 rules!4013)))))

(assert (= (and d!1244070 (not res!1737103)) b!4224998))

(assert (= (and b!4224998 res!1737102) b!4224999))

(declare-fun m!4813203 () Bool)

(assert (=> d!1244070 m!4813203))

(declare-fun m!4813205 () Bool)

(assert (=> b!4224998 m!4813205))

(assert (=> b!4224999 m!4813137))

(assert (=> b!4224936 d!1244070))

(declare-fun d!1244074 () Bool)

(assert (=> d!1244074 (= (isEmpty!27573 (maxPrefix!4449 thiss!26728 rules!4013 input!3561)) (not ((_ is Some!10001) (maxPrefix!4449 thiss!26728 rules!4013 input!3561))))))

(assert (=> b!4224930 d!1244074))

(declare-fun b!4225064 () Bool)

(declare-fun e!2623163 () Option!10002)

(declare-fun lt!1502859 () Option!10002)

(declare-fun lt!1502856 () Option!10002)

(assert (=> b!4225064 (= e!2623163 (ite (and ((_ is None!10001) lt!1502859) ((_ is None!10001) lt!1502856)) None!10001 (ite ((_ is None!10001) lt!1502856) lt!1502859 (ite ((_ is None!10001) lt!1502859) lt!1502856 (ite (>= (size!34151 (_1!25251 (v!40905 lt!1502859))) (size!34151 (_1!25251 (v!40905 lt!1502856)))) lt!1502859 lt!1502856)))))))

(declare-fun call!293222 () Option!10002)

(assert (=> b!4225064 (= lt!1502859 call!293222)))

(assert (=> b!4225064 (= lt!1502856 (maxPrefix!4449 thiss!26728 (t!349270 rules!4013) input!3561))))

(declare-fun b!4225065 () Bool)

(declare-fun res!1737130 () Bool)

(declare-fun e!2623165 () Bool)

(assert (=> b!4225065 (=> (not res!1737130) (not e!2623165))))

(declare-fun lt!1502857 () Option!10002)

(declare-fun list!16830 (BalanceConc!27648) List!46652)

(declare-fun charsOf!5229 (Token!14330) BalanceConc!27648)

(declare-fun get!15142 (Option!10002) tuple2!44234)

(assert (=> b!4225065 (= res!1737130 (= (list!16830 (charsOf!5229 (_1!25251 (get!15142 lt!1502857)))) (originalCharacters!8196 (_1!25251 (get!15142 lt!1502857)))))))

(declare-fun d!1244076 () Bool)

(declare-fun e!2623164 () Bool)

(assert (=> d!1244076 e!2623164))

(declare-fun res!1737136 () Bool)

(assert (=> d!1244076 (=> res!1737136 e!2623164)))

(assert (=> d!1244076 (= res!1737136 (isEmpty!27573 lt!1502857))))

(assert (=> d!1244076 (= lt!1502857 e!2623163)))

(declare-fun c!718595 () Bool)

(assert (=> d!1244076 (= c!718595 (and ((_ is Cons!46529) rules!4013) ((_ is Nil!46529) (t!349270 rules!4013))))))

(declare-fun lt!1502858 () Unit!65687)

(declare-fun lt!1502855 () Unit!65687)

(assert (=> d!1244076 (= lt!1502858 lt!1502855)))

(declare-fun isPrefix!4665 (List!46652 List!46652) Bool)

(assert (=> d!1244076 (isPrefix!4665 input!3561 input!3561)))

(declare-fun lemmaIsPrefixRefl!3082 (List!46652 List!46652) Unit!65687)

(assert (=> d!1244076 (= lt!1502855 (lemmaIsPrefixRefl!3082 input!3561 input!3561))))

(assert (=> d!1244076 (rulesValidInductive!2920 thiss!26728 rules!4013)))

(assert (=> d!1244076 (= (maxPrefix!4449 thiss!26728 rules!4013 input!3561) lt!1502857)))

(declare-fun b!4225066 () Bool)

(assert (=> b!4225066 (= e!2623165 (contains!9639 rules!4013 (rule!10960 (_1!25251 (get!15142 lt!1502857)))))))

(declare-fun b!4225067 () Bool)

(assert (=> b!4225067 (= e!2623164 e!2623165)))

(declare-fun res!1737134 () Bool)

(assert (=> b!4225067 (=> (not res!1737134) (not e!2623165))))

(declare-fun isDefined!7420 (Option!10002) Bool)

(assert (=> b!4225067 (= res!1737134 (isDefined!7420 lt!1502857))))

(declare-fun b!4225068 () Bool)

(declare-fun res!1737131 () Bool)

(assert (=> b!4225068 (=> (not res!1737131) (not e!2623165))))

(declare-fun ++!11880 (List!46652 List!46652) List!46652)

(assert (=> b!4225068 (= res!1737131 (= (++!11880 (list!16830 (charsOf!5229 (_1!25251 (get!15142 lt!1502857)))) (_2!25251 (get!15142 lt!1502857))) input!3561))))

(declare-fun b!4225069 () Bool)

(declare-fun res!1737132 () Bool)

(assert (=> b!4225069 (=> (not res!1737132) (not e!2623165))))

(declare-fun matchR!6398 (Regex!12721 List!46652) Bool)

(assert (=> b!4225069 (= res!1737132 (matchR!6398 (regex!7816 (rule!10960 (_1!25251 (get!15142 lt!1502857)))) (list!16830 (charsOf!5229 (_1!25251 (get!15142 lt!1502857))))))))

(declare-fun bm!293217 () Bool)

(declare-fun maxPrefixOneRule!3398 (LexerInterface!7411 Rule!15432 List!46652) Option!10002)

(assert (=> bm!293217 (= call!293222 (maxPrefixOneRule!3398 thiss!26728 (h!51949 rules!4013) input!3561))))

(declare-fun b!4225070 () Bool)

(assert (=> b!4225070 (= e!2623163 call!293222)))

(declare-fun b!4225071 () Bool)

(declare-fun res!1737133 () Bool)

(assert (=> b!4225071 (=> (not res!1737133) (not e!2623165))))

(declare-fun apply!10719 (TokenValueInjection!15520 BalanceConc!27648) TokenValue!8046)

(declare-fun seqFromList!5779 (List!46652) BalanceConc!27648)

(assert (=> b!4225071 (= res!1737133 (= (value!243283 (_1!25251 (get!15142 lt!1502857))) (apply!10719 (transformation!7816 (rule!10960 (_1!25251 (get!15142 lt!1502857)))) (seqFromList!5779 (originalCharacters!8196 (_1!25251 (get!15142 lt!1502857)))))))))

(declare-fun b!4225072 () Bool)

(declare-fun res!1737135 () Bool)

(assert (=> b!4225072 (=> (not res!1737135) (not e!2623165))))

(declare-fun size!34153 (List!46652) Int)

(assert (=> b!4225072 (= res!1737135 (< (size!34153 (_2!25251 (get!15142 lt!1502857))) (size!34153 input!3561)))))

(assert (= (and d!1244076 c!718595) b!4225070))

(assert (= (and d!1244076 (not c!718595)) b!4225064))

(assert (= (or b!4225070 b!4225064) bm!293217))

(assert (= (and d!1244076 (not res!1737136)) b!4225067))

(assert (= (and b!4225067 res!1737134) b!4225065))

(assert (= (and b!4225065 res!1737130) b!4225072))

(assert (= (and b!4225072 res!1737135) b!4225068))

(assert (= (and b!4225068 res!1737131) b!4225071))

(assert (= (and b!4225071 res!1737133) b!4225069))

(assert (= (and b!4225069 res!1737132) b!4225066))

(declare-fun m!4813229 () Bool)

(assert (=> bm!293217 m!4813229))

(declare-fun m!4813231 () Bool)

(assert (=> b!4225068 m!4813231))

(declare-fun m!4813233 () Bool)

(assert (=> b!4225068 m!4813233))

(assert (=> b!4225068 m!4813233))

(declare-fun m!4813235 () Bool)

(assert (=> b!4225068 m!4813235))

(assert (=> b!4225068 m!4813235))

(declare-fun m!4813237 () Bool)

(assert (=> b!4225068 m!4813237))

(assert (=> b!4225072 m!4813231))

(declare-fun m!4813239 () Bool)

(assert (=> b!4225072 m!4813239))

(declare-fun m!4813241 () Bool)

(assert (=> b!4225072 m!4813241))

(assert (=> b!4225065 m!4813231))

(assert (=> b!4225065 m!4813233))

(assert (=> b!4225065 m!4813233))

(assert (=> b!4225065 m!4813235))

(declare-fun m!4813243 () Bool)

(assert (=> b!4225067 m!4813243))

(declare-fun m!4813245 () Bool)

(assert (=> b!4225064 m!4813245))

(assert (=> b!4225066 m!4813231))

(declare-fun m!4813247 () Bool)

(assert (=> b!4225066 m!4813247))

(assert (=> b!4225071 m!4813231))

(declare-fun m!4813249 () Bool)

(assert (=> b!4225071 m!4813249))

(assert (=> b!4225071 m!4813249))

(declare-fun m!4813251 () Bool)

(assert (=> b!4225071 m!4813251))

(assert (=> b!4225069 m!4813231))

(assert (=> b!4225069 m!4813233))

(assert (=> b!4225069 m!4813233))

(assert (=> b!4225069 m!4813235))

(assert (=> b!4225069 m!4813235))

(declare-fun m!4813253 () Bool)

(assert (=> b!4225069 m!4813253))

(declare-fun m!4813255 () Bool)

(assert (=> d!1244076 m!4813255))

(declare-fun m!4813257 () Bool)

(assert (=> d!1244076 m!4813257))

(declare-fun m!4813259 () Bool)

(assert (=> d!1244076 m!4813259))

(assert (=> d!1244076 m!4813127))

(assert (=> b!4224930 d!1244076))

(declare-fun d!1244090 () Bool)

(assert (=> d!1244090 (= (isEmpty!27572 rules!4013) ((_ is Nil!46529) rules!4013))))

(assert (=> b!4224935 d!1244090))

(declare-fun d!1244092 () Bool)

(assert (=> d!1244092 (= (isEmpty!27572 (t!349270 rules!4013)) ((_ is Nil!46529) (t!349270 rules!4013)))))

(assert (=> b!4224929 d!1244092))

(declare-fun d!1244094 () Bool)

(declare-fun lt!1502862 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7311 (List!46653) (InoxSet Rule!15432))

(assert (=> d!1244094 (= lt!1502862 (select (content!7311 rules!4013) r!4313))))

(declare-fun e!2623171 () Bool)

(assert (=> d!1244094 (= lt!1502862 e!2623171)))

(declare-fun res!1737141 () Bool)

(assert (=> d!1244094 (=> (not res!1737141) (not e!2623171))))

(assert (=> d!1244094 (= res!1737141 ((_ is Cons!46529) rules!4013))))

(assert (=> d!1244094 (= (contains!9639 rules!4013 r!4313) lt!1502862)))

(declare-fun b!4225077 () Bool)

(declare-fun e!2623170 () Bool)

(assert (=> b!4225077 (= e!2623171 e!2623170)))

(declare-fun res!1737142 () Bool)

(assert (=> b!4225077 (=> res!1737142 e!2623170)))

(assert (=> b!4225077 (= res!1737142 (= (h!51949 rules!4013) r!4313))))

(declare-fun b!4225078 () Bool)

(assert (=> b!4225078 (= e!2623170 (contains!9639 (t!349270 rules!4013) r!4313))))

(assert (= (and d!1244094 res!1737141) b!4225077))

(assert (= (and b!4225077 (not res!1737142)) b!4225078))

(declare-fun m!4813261 () Bool)

(assert (=> d!1244094 m!4813261))

(declare-fun m!4813263 () Bool)

(assert (=> d!1244094 m!4813263))

(declare-fun m!4813265 () Bool)

(assert (=> b!4225078 m!4813265))

(assert (=> b!4224934 d!1244094))

(declare-fun b!4225089 () Bool)

(declare-fun b_free!124359 () Bool)

(declare-fun b_next!125063 () Bool)

(assert (=> b!4225089 (= b_free!124359 (not b_next!125063))))

(declare-fun tp!1293273 () Bool)

(declare-fun b_and!333593 () Bool)

(assert (=> b!4225089 (= tp!1293273 b_and!333593)))

(declare-fun b_free!124361 () Bool)

(declare-fun b_next!125065 () Bool)

(assert (=> b!4225089 (= b_free!124361 (not b_next!125065))))

(declare-fun tp!1293272 () Bool)

(declare-fun b_and!333595 () Bool)

(assert (=> b!4225089 (= tp!1293272 b_and!333595)))

(declare-fun e!2623180 () Bool)

(assert (=> b!4225089 (= e!2623180 (and tp!1293273 tp!1293272))))

(declare-fun tp!1293270 () Bool)

(declare-fun e!2623183 () Bool)

(declare-fun b!4225088 () Bool)

(assert (=> b!4225088 (= e!2623183 (and tp!1293270 (inv!61196 (tag!8680 (h!51949 (t!349270 rules!4013)))) (inv!61198 (transformation!7816 (h!51949 (t!349270 rules!4013)))) e!2623180))))

(declare-fun b!4225087 () Bool)

(declare-fun e!2623181 () Bool)

(declare-fun tp!1293271 () Bool)

(assert (=> b!4225087 (= e!2623181 (and e!2623183 tp!1293271))))

(assert (=> b!4224938 (= tp!1293219 e!2623181)))

(assert (= b!4225088 b!4225089))

(assert (= b!4225087 b!4225088))

(assert (= (and b!4224938 ((_ is Cons!46529) (t!349270 rules!4013))) b!4225087))

(declare-fun m!4813267 () Bool)

(assert (=> b!4225088 m!4813267))

(declare-fun m!4813269 () Bool)

(assert (=> b!4225088 m!4813269))

(declare-fun b!4225100 () Bool)

(declare-fun e!2623186 () Bool)

(assert (=> b!4225100 (= e!2623186 tp_is_empty!22405)))

(declare-fun b!4225102 () Bool)

(declare-fun tp!1293288 () Bool)

(assert (=> b!4225102 (= e!2623186 tp!1293288)))

(declare-fun b!4225101 () Bool)

(declare-fun tp!1293287 () Bool)

(declare-fun tp!1293284 () Bool)

(assert (=> b!4225101 (= e!2623186 (and tp!1293287 tp!1293284))))

(declare-fun b!4225103 () Bool)

(declare-fun tp!1293285 () Bool)

(declare-fun tp!1293286 () Bool)

(assert (=> b!4225103 (= e!2623186 (and tp!1293285 tp!1293286))))

(assert (=> b!4224927 (= tp!1293222 e!2623186)))

(assert (= (and b!4224927 ((_ is ElementMatch!12721) (regex!7816 r!4313))) b!4225100))

(assert (= (and b!4224927 ((_ is Concat!20768) (regex!7816 r!4313))) b!4225101))

(assert (= (and b!4224927 ((_ is Star!12721) (regex!7816 r!4313))) b!4225102))

(assert (= (and b!4224927 ((_ is Union!12721) (regex!7816 r!4313))) b!4225103))

(declare-fun b!4225108 () Bool)

(declare-fun e!2623189 () Bool)

(declare-fun tp!1293291 () Bool)

(assert (=> b!4225108 (= e!2623189 (and tp_is_empty!22405 tp!1293291))))

(assert (=> b!4224932 (= tp!1293225 e!2623189)))

(assert (= (and b!4224932 ((_ is Cons!46528) (t!349269 input!3561))) b!4225108))

(declare-fun b!4225109 () Bool)

(declare-fun e!2623190 () Bool)

(assert (=> b!4225109 (= e!2623190 tp_is_empty!22405)))

(declare-fun b!4225111 () Bool)

(declare-fun tp!1293296 () Bool)

(assert (=> b!4225111 (= e!2623190 tp!1293296)))

(declare-fun b!4225110 () Bool)

(declare-fun tp!1293295 () Bool)

(declare-fun tp!1293292 () Bool)

(assert (=> b!4225110 (= e!2623190 (and tp!1293295 tp!1293292))))

(declare-fun b!4225112 () Bool)

(declare-fun tp!1293293 () Bool)

(declare-fun tp!1293294 () Bool)

(assert (=> b!4225112 (= e!2623190 (and tp!1293293 tp!1293294))))

(assert (=> b!4224937 (= tp!1293220 e!2623190)))

(assert (= (and b!4224937 ((_ is ElementMatch!12721) (regex!7816 (h!51949 rules!4013)))) b!4225109))

(assert (= (and b!4224937 ((_ is Concat!20768) (regex!7816 (h!51949 rules!4013)))) b!4225110))

(assert (= (and b!4224937 ((_ is Star!12721) (regex!7816 (h!51949 rules!4013)))) b!4225111))

(assert (= (and b!4224937 ((_ is Union!12721) (regex!7816 (h!51949 rules!4013)))) b!4225112))

(check-sat (not b_next!125063) (not b_next!125055) (not b!4225110) (not b!4225103) (not b!4225066) (not d!1244062) (not b!4225087) b_and!333581 (not b!4225071) b_and!333595 (not b!4225102) (not d!1244048) (not b!4224985) (not d!1244076) b_and!333585 (not b!4224998) (not b!4225108) (not b_next!125065) (not d!1244094) (not b!4224943) (not d!1244068) (not b!4225111) (not b!4225067) b_and!333593 (not b!4225112) (not b!4224996) (not b!4225069) (not b!4225064) (not b!4225072) b_and!333587 (not bm!293217) b_and!333583 (not d!1244044) (not b!4225101) (not b!4225088) (not d!1244070) (not b_next!125057) (not b!4224999) (not b_next!125051) (not b!4224984) (not b!4225068) tp_is_empty!22405 (not d!1244046) (not b!4225078) (not b!4225065) (not b_next!125053) (not b!4224997))
(check-sat b_and!333585 (not b_next!125065) (not b_next!125063) (not b_next!125055) b_and!333593 b_and!333587 b_and!333581 b_and!333595 b_and!333583 (not b_next!125057) (not b_next!125051) (not b_next!125053))
