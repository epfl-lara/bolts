; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398106 () Bool)

(assert start!398106)

(declare-fun b!4175310 () Bool)

(declare-fun b_free!121055 () Bool)

(declare-fun b_next!121759 () Bool)

(assert (=> b!4175310 (= b_free!121055 (not b_next!121759))))

(declare-fun tp!1275883 () Bool)

(declare-fun b_and!326285 () Bool)

(assert (=> b!4175310 (= tp!1275883 b_and!326285)))

(declare-fun b_free!121057 () Bool)

(declare-fun b_next!121761 () Bool)

(assert (=> b!4175310 (= b_free!121057 (not b_next!121761))))

(declare-fun tp!1275886 () Bool)

(declare-fun b_and!326287 () Bool)

(assert (=> b!4175310 (= tp!1275886 b_and!326287)))

(declare-fun b!4175292 () Bool)

(declare-fun b_free!121059 () Bool)

(declare-fun b_next!121763 () Bool)

(assert (=> b!4175292 (= b_free!121059 (not b_next!121763))))

(declare-fun tp!1275881 () Bool)

(declare-fun b_and!326289 () Bool)

(assert (=> b!4175292 (= tp!1275881 b_and!326289)))

(declare-fun b_free!121061 () Bool)

(declare-fun b_next!121765 () Bool)

(assert (=> b!4175292 (= b_free!121061 (not b_next!121765))))

(declare-fun tp!1275887 () Bool)

(declare-fun b_and!326291 () Bool)

(assert (=> b!4175292 (= tp!1275887 b_and!326291)))

(declare-fun b!4175294 () Bool)

(declare-fun b_free!121063 () Bool)

(declare-fun b_next!121767 () Bool)

(assert (=> b!4175294 (= b_free!121063 (not b_next!121767))))

(declare-fun tp!1275880 () Bool)

(declare-fun b_and!326293 () Bool)

(assert (=> b!4175294 (= tp!1275880 b_and!326293)))

(declare-fun b_free!121065 () Bool)

(declare-fun b_next!121769 () Bool)

(assert (=> b!4175294 (= b_free!121065 (not b_next!121769))))

(declare-fun tp!1275890 () Bool)

(declare-fun b_and!326295 () Bool)

(assert (=> b!4175294 (= tp!1275890 b_and!326295)))

(declare-fun b!4175291 () Bool)

(declare-fun e!2592108 () Bool)

(declare-fun tp_is_empty!21981 () Bool)

(declare-fun tp!1275882 () Bool)

(assert (=> b!4175291 (= e!2592108 (and tp_is_empty!21981 tp!1275882))))

(declare-fun e!2592105 () Bool)

(assert (=> b!4175292 (= e!2592105 (and tp!1275881 tp!1275887))))

(declare-fun b!4175293 () Bool)

(declare-fun e!2592101 () Bool)

(declare-fun tp!1275891 () Bool)

(assert (=> b!4175293 (= e!2592101 (and tp_is_empty!21981 tp!1275891))))

(declare-fun e!2592107 () Bool)

(assert (=> b!4175294 (= e!2592107 (and tp!1275880 tp!1275890))))

(declare-fun b!4175295 () Bool)

(declare-fun res!1711357 () Bool)

(declare-fun e!2592116 () Bool)

(assert (=> b!4175295 (=> (not res!1711357) (not e!2592116))))

(declare-datatypes ((List!45915 0))(
  ( (Nil!45791) (Cons!45791 (h!51211 (_ BitVec 16)) (t!344674 List!45915)) )
))
(declare-datatypes ((TokenValue!7834 0))(
  ( (FloatLiteralValue!15668 (text!55283 List!45915)) (TokenValueExt!7833 (__x!27889 Int)) (Broken!39170 (value!237220 List!45915)) (Object!7957) (End!7834) (Def!7834) (Underscore!7834) (Match!7834) (Else!7834) (Error!7834) (Case!7834) (If!7834) (Extends!7834) (Abstract!7834) (Class!7834) (Val!7834) (DelimiterValue!15668 (del!7894 List!45915)) (KeywordValue!7840 (value!237221 List!45915)) (CommentValue!15668 (value!237222 List!45915)) (WhitespaceValue!15668 (value!237223 List!45915)) (IndentationValue!7834 (value!237224 List!45915)) (String!53035) (Int32!7834) (Broken!39171 (value!237225 List!45915)) (Boolean!7835) (Unit!64856) (OperatorValue!7837 (op!7894 List!45915)) (IdentifierValue!15668 (value!237226 List!45915)) (IdentifierValue!15669 (value!237227 List!45915)) (WhitespaceValue!15669 (value!237228 List!45915)) (True!15668) (False!15668) (Broken!39172 (value!237229 List!45915)) (Broken!39173 (value!237230 List!45915)) (True!15669) (RightBrace!7834) (RightBracket!7834) (Colon!7834) (Null!7834) (Comma!7834) (LeftBracket!7834) (False!15669) (LeftBrace!7834) (ImaginaryLiteralValue!7834 (text!55284 List!45915)) (StringLiteralValue!23502 (value!237231 List!45915)) (EOFValue!7834 (value!237232 List!45915)) (IdentValue!7834 (value!237233 List!45915)) (DelimiterValue!15669 (value!237234 List!45915)) (DedentValue!7834 (value!237235 List!45915)) (NewLineValue!7834 (value!237236 List!45915)) (IntegerValue!23502 (value!237237 (_ BitVec 32)) (text!55285 List!45915)) (IntegerValue!23503 (value!237238 Int) (text!55286 List!45915)) (Times!7834) (Or!7834) (Equal!7834) (Minus!7834) (Broken!39174 (value!237239 List!45915)) (And!7834) (Div!7834) (LessEqual!7834) (Mod!7834) (Concat!20343) (Not!7834) (Plus!7834) (SpaceValue!7834 (value!237240 List!45915)) (IntegerValue!23504 (value!237241 Int) (text!55287 List!45915)) (StringLiteralValue!23503 (text!55288 List!45915)) (FloatLiteralValue!15669 (text!55289 List!45915)) (BytesLiteralValue!7834 (value!237242 List!45915)) (CommentValue!15669 (value!237243 List!45915)) (StringLiteralValue!23504 (value!237244 List!45915)) (ErrorTokenValue!7834 (msg!7895 List!45915)) )
))
(declare-datatypes ((C!25208 0))(
  ( (C!25209 (val!14766 Int)) )
))
(declare-datatypes ((List!45916 0))(
  ( (Nil!45792) (Cons!45792 (h!51212 C!25208) (t!344675 List!45916)) )
))
(declare-datatypes ((IArray!27635 0))(
  ( (IArray!27636 (innerList!13875 List!45916)) )
))
(declare-datatypes ((Conc!13815 0))(
  ( (Node!13815 (left!34123 Conc!13815) (right!34453 Conc!13815) (csize!27860 Int) (cheight!14026 Int)) (Leaf!21360 (xs!17121 IArray!27635) (csize!27861 Int)) (Empty!13815) )
))
(declare-datatypes ((BalanceConc!27224 0))(
  ( (BalanceConc!27225 (c!713364 Conc!13815)) )
))
(declare-datatypes ((Regex!12509 0))(
  ( (ElementMatch!12509 (c!713365 C!25208)) (Concat!20344 (regOne!25530 Regex!12509) (regTwo!25530 Regex!12509)) (EmptyExpr!12509) (Star!12509 (reg!12838 Regex!12509)) (EmptyLang!12509) (Union!12509 (regOne!25531 Regex!12509) (regTwo!25531 Regex!12509)) )
))
(declare-datatypes ((String!53036 0))(
  ( (String!53037 (value!237245 String)) )
))
(declare-datatypes ((TokenValueInjection!15096 0))(
  ( (TokenValueInjection!15097 (toValue!10288 Int) (toChars!10147 Int)) )
))
(declare-datatypes ((Rule!15008 0))(
  ( (Rule!15009 (regex!7604 Regex!12509) (tag!8468 String!53036) (isSeparator!7604 Bool) (transformation!7604 TokenValueInjection!15096)) )
))
(declare-datatypes ((List!45917 0))(
  ( (Nil!45793) (Cons!45793 (h!51213 Rule!15008) (t!344676 List!45917)) )
))
(declare-fun rules!3843 () List!45917)

(declare-fun isEmpty!27086 (List!45917) Bool)

(assert (=> b!4175295 (= res!1711357 (not (isEmpty!27086 rules!3843)))))

(declare-fun b!4175296 () Bool)

(declare-fun res!1711356 () Bool)

(assert (=> b!4175296 (=> (not res!1711356) (not e!2592116))))

(declare-fun rBis!167 () Rule!15008)

(declare-fun contains!9407 (List!45917 Rule!15008) Bool)

(assert (=> b!4175296 (= res!1711356 (contains!9407 rules!3843 rBis!167))))

(declare-fun b!4175297 () Bool)

(declare-fun res!1711364 () Bool)

(assert (=> b!4175297 (=> (not res!1711364) (not e!2592116))))

(declare-fun r!4142 () Rule!15008)

(assert (=> b!4175297 (= res!1711364 (contains!9407 rules!3843 r!4142))))

(declare-fun b!4175298 () Bool)

(declare-fun res!1711359 () Bool)

(assert (=> b!4175298 (=> (not res!1711359) (not e!2592116))))

(declare-fun validRegex!5626 (Regex!12509) Bool)

(assert (=> b!4175298 (= res!1711359 (validRegex!5626 (regex!7604 r!4142)))))

(declare-fun b!4175299 () Bool)

(declare-fun e!2592112 () Bool)

(declare-fun e!2592113 () Bool)

(assert (=> b!4175299 (= e!2592112 e!2592113)))

(declare-fun res!1711353 () Bool)

(assert (=> b!4175299 (=> res!1711353 e!2592113)))

(declare-fun lt!1486710 () Int)

(declare-fun lt!1486712 () Int)

(assert (=> b!4175299 (= res!1711353 (<= lt!1486710 lt!1486712))))

(declare-fun pBis!107 () List!45916)

(declare-fun size!33611 (List!45916) Int)

(assert (=> b!4175299 (= lt!1486710 (size!33611 pBis!107))))

(declare-fun b!4175300 () Bool)

(declare-fun res!1711361 () Bool)

(assert (=> b!4175300 (=> res!1711361 e!2592113)))

(declare-datatypes ((LexerInterface!7197 0))(
  ( (LexerInterfaceExt!7194 (__x!27890 Int)) (Lexer!7195) )
))
(declare-fun thiss!25986 () LexerInterface!7197)

(declare-fun ruleValid!3322 (LexerInterface!7197 Rule!15008) Bool)

(assert (=> b!4175300 (= res!1711361 (not (ruleValid!3322 thiss!25986 rBis!167)))))

(declare-fun b!4175302 () Bool)

(declare-fun e!2592100 () Bool)

(declare-fun tp!1275889 () Bool)

(assert (=> b!4175302 (= e!2592100 (and tp_is_empty!21981 tp!1275889))))

(declare-fun b!4175303 () Bool)

(declare-fun e!2592104 () Bool)

(assert (=> b!4175303 (= e!2592104 true)))

(declare-fun lt!1486709 () List!45916)

(declare-datatypes ((Token!13922 0))(
  ( (Token!13923 (value!237246 TokenValue!7834) (rule!10658 Rule!15008) (size!33612 Int) (originalCharacters!7992 List!45916)) )
))
(declare-datatypes ((tuple2!43634 0))(
  ( (tuple2!43635 (_1!24951 Token!13922) (_2!24951 List!45916)) )
))
(declare-fun lt!1486720 () tuple2!43634)

(declare-fun ++!11682 (List!45916 List!45916) List!45916)

(assert (=> b!4175303 (= lt!1486709 (++!11682 pBis!107 (_2!24951 lt!1486720)))))

(declare-fun b!4175304 () Bool)

(declare-fun e!2592111 () Bool)

(assert (=> b!4175304 (= e!2592111 e!2592104)))

(declare-fun res!1711362 () Bool)

(assert (=> b!4175304 (=> res!1711362 e!2592104)))

(declare-fun lt!1486708 () List!45916)

(assert (=> b!4175304 (= res!1711362 (not (= lt!1486708 pBis!107)))))

(declare-fun isPrefix!4461 (List!45916 List!45916) Bool)

(assert (=> b!4175304 (isPrefix!4461 lt!1486708 (++!11682 lt!1486708 (_2!24951 lt!1486720)))))

(declare-datatypes ((Unit!64857 0))(
  ( (Unit!64858) )
))
(declare-fun lt!1486711 () Unit!64857)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2968 (List!45916 List!45916) Unit!64857)

(assert (=> b!4175304 (= lt!1486711 (lemmaConcatTwoListThenFirstIsPrefix!2968 lt!1486708 (_2!24951 lt!1486720)))))

(declare-fun list!16539 (BalanceConc!27224) List!45916)

(declare-fun charsOf!5045 (Token!13922) BalanceConc!27224)

(assert (=> b!4175304 (= lt!1486708 (list!16539 (charsOf!5045 (_1!24951 lt!1486720))))))

(declare-datatypes ((Option!9800 0))(
  ( (None!9799) (Some!9799 (v!40599 tuple2!43634)) )
))
(declare-fun lt!1486717 () Option!9800)

(declare-fun get!14871 (Option!9800) tuple2!43634)

(assert (=> b!4175304 (= lt!1486720 (get!14871 lt!1486717))))

(declare-fun b!4175305 () Bool)

(declare-fun res!1711360 () Bool)

(assert (=> b!4175305 (=> (not res!1711360) (not e!2592116))))

(declare-fun rulesInvariant!6410 (LexerInterface!7197 List!45917) Bool)

(assert (=> b!4175305 (= res!1711360 (rulesInvariant!6410 thiss!25986 rules!3843))))

(declare-fun tp!1275888 () Bool)

(declare-fun b!4175306 () Bool)

(declare-fun e!2592106 () Bool)

(declare-fun inv!60319 (String!53036) Bool)

(declare-fun inv!60321 (TokenValueInjection!15096) Bool)

(assert (=> b!4175306 (= e!2592106 (and tp!1275888 (inv!60319 (tag!8468 rBis!167)) (inv!60321 (transformation!7604 rBis!167)) e!2592105))))

(declare-fun tp!1275884 () Bool)

(declare-fun e!2592102 () Bool)

(declare-fun e!2592103 () Bool)

(declare-fun b!4175307 () Bool)

(assert (=> b!4175307 (= e!2592102 (and tp!1275884 (inv!60319 (tag!8468 r!4142)) (inv!60321 (transformation!7604 r!4142)) e!2592103))))

(declare-fun b!4175308 () Bool)

(declare-fun res!1711349 () Bool)

(assert (=> b!4175308 (=> (not res!1711349) (not e!2592116))))

(declare-fun input!3342 () List!45916)

(assert (=> b!4175308 (= res!1711349 (isPrefix!4461 pBis!107 input!3342))))

(declare-fun b!4175309 () Bool)

(declare-fun res!1711355 () Bool)

(assert (=> b!4175309 (=> (not res!1711355) (not e!2592116))))

(assert (=> b!4175309 (= res!1711355 (ruleValid!3322 thiss!25986 r!4142))))

(assert (=> b!4175310 (= e!2592103 (and tp!1275883 tp!1275886))))

(declare-fun b!4175311 () Bool)

(declare-fun e!2592109 () Bool)

(declare-fun e!2592115 () Bool)

(declare-fun tp!1275885 () Bool)

(assert (=> b!4175311 (= e!2592109 (and e!2592115 tp!1275885))))

(declare-fun res!1711351 () Bool)

(assert (=> start!398106 (=> (not res!1711351) (not e!2592116))))

(get-info :version)

(assert (=> start!398106 (= res!1711351 ((_ is Lexer!7195) thiss!25986))))

(assert (=> start!398106 e!2592116))

(assert (=> start!398106 true))

(assert (=> start!398106 e!2592106))

(assert (=> start!398106 e!2592102))

(assert (=> start!398106 e!2592109))

(assert (=> start!398106 e!2592101))

(assert (=> start!398106 e!2592100))

(assert (=> start!398106 e!2592108))

(declare-fun b!4175301 () Bool)

(declare-fun tp!1275892 () Bool)

(assert (=> b!4175301 (= e!2592115 (and tp!1275892 (inv!60319 (tag!8468 (h!51213 rules!3843))) (inv!60321 (transformation!7604 (h!51213 rules!3843))) e!2592107))))

(declare-fun b!4175312 () Bool)

(assert (=> b!4175312 (= e!2592113 e!2592111)))

(declare-fun res!1711348 () Bool)

(assert (=> b!4175312 (=> res!1711348 e!2592111)))

(declare-fun isEmpty!27087 (Option!9800) Bool)

(assert (=> b!4175312 (= res!1711348 (isEmpty!27087 lt!1486717))))

(declare-fun maxPrefixOneRule!3208 (LexerInterface!7197 Rule!15008 List!45916) Option!9800)

(assert (=> b!4175312 (= lt!1486717 (maxPrefixOneRule!3208 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1486707 () Unit!64857)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2336 (LexerInterface!7197 Rule!15008 List!45917) Unit!64857)

(assert (=> b!4175312 (= lt!1486707 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2336 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4175312 (<= lt!1486710 (size!33611 input!3342))))

(declare-fun lt!1486706 () Unit!64857)

(declare-fun lemmaIsPrefixThenSmallerEqSize!493 (List!45916 List!45916) Unit!64857)

(assert (=> b!4175312 (= lt!1486706 (lemmaIsPrefixThenSmallerEqSize!493 pBis!107 input!3342))))

(declare-fun b!4175313 () Bool)

(declare-fun res!1711350 () Bool)

(assert (=> b!4175313 (=> (not res!1711350) (not e!2592116))))

(declare-fun p!2959 () List!45916)

(declare-fun matchR!6248 (Regex!12509 List!45916) Bool)

(assert (=> b!4175313 (= res!1711350 (matchR!6248 (regex!7604 r!4142) p!2959))))

(declare-fun b!4175314 () Bool)

(assert (=> b!4175314 (= e!2592116 (not e!2592112))))

(declare-fun res!1711352 () Bool)

(assert (=> b!4175314 (=> res!1711352 e!2592112)))

(declare-fun lt!1486718 () Option!9800)

(assert (=> b!4175314 (= res!1711352 (not (= (maxPrefixOneRule!3208 thiss!25986 r!4142 input!3342) lt!1486718)))))

(declare-fun lt!1486713 () List!45916)

(declare-fun lt!1486714 () TokenValue!7834)

(assert (=> b!4175314 (= lt!1486718 (Some!9799 (tuple2!43635 (Token!13923 lt!1486714 r!4142 lt!1486712 p!2959) lt!1486713)))))

(declare-fun getSuffix!2756 (List!45916 List!45916) List!45916)

(assert (=> b!4175314 (= lt!1486713 (getSuffix!2756 input!3342 p!2959))))

(assert (=> b!4175314 (= lt!1486712 (size!33611 p!2959))))

(declare-fun lt!1486719 () BalanceConc!27224)

(declare-fun apply!10569 (TokenValueInjection!15096 BalanceConc!27224) TokenValue!7834)

(assert (=> b!4175314 (= lt!1486714 (apply!10569 (transformation!7604 r!4142) lt!1486719))))

(assert (=> b!4175314 (isPrefix!4461 input!3342 input!3342)))

(declare-fun lt!1486716 () Unit!64857)

(declare-fun lemmaIsPrefixRefl!2890 (List!45916 List!45916) Unit!64857)

(assert (=> b!4175314 (= lt!1486716 (lemmaIsPrefixRefl!2890 input!3342 input!3342))))

(declare-fun lt!1486715 () Unit!64857)

(declare-fun lemmaSemiInverse!2370 (TokenValueInjection!15096 BalanceConc!27224) Unit!64857)

(assert (=> b!4175314 (= lt!1486715 (lemmaSemiInverse!2370 (transformation!7604 r!4142) lt!1486719))))

(declare-fun seqFromList!5629 (List!45916) BalanceConc!27224)

(assert (=> b!4175314 (= lt!1486719 (seqFromList!5629 p!2959))))

(declare-fun b!4175315 () Bool)

(declare-fun res!1711354 () Bool)

(assert (=> b!4175315 (=> res!1711354 e!2592104)))

(assert (=> b!4175315 (= res!1711354 (or (not (= lt!1486717 (Some!9799 (tuple2!43635 (_1!24951 lt!1486720) (_2!24951 lt!1486720))))) (not (= (rule!10658 (_1!24951 lt!1486720)) rBis!167))))))

(declare-fun b!4175316 () Bool)

(declare-fun res!1711358 () Bool)

(assert (=> b!4175316 (=> res!1711358 e!2592113)))

(declare-fun maxPrefix!4249 (LexerInterface!7197 List!45917 List!45916) Option!9800)

(assert (=> b!4175316 (= res!1711358 (not (= (maxPrefix!4249 thiss!25986 rules!3843 input!3342) lt!1486718)))))

(declare-fun b!4175317 () Bool)

(declare-fun res!1711363 () Bool)

(assert (=> b!4175317 (=> (not res!1711363) (not e!2592116))))

(assert (=> b!4175317 (= res!1711363 (isPrefix!4461 p!2959 input!3342))))

(declare-fun b!4175318 () Bool)

(declare-fun res!1711347 () Bool)

(assert (=> b!4175318 (=> res!1711347 e!2592104)))

(assert (=> b!4175318 (= res!1711347 (not (= (++!11682 p!2959 lt!1486713) input!3342)))))

(assert (= (and start!398106 res!1711351) b!4175317))

(assert (= (and b!4175317 res!1711363) b!4175308))

(assert (= (and b!4175308 res!1711349) b!4175295))

(assert (= (and b!4175295 res!1711357) b!4175305))

(assert (= (and b!4175305 res!1711360) b!4175297))

(assert (= (and b!4175297 res!1711364) b!4175296))

(assert (= (and b!4175296 res!1711356) b!4175298))

(assert (= (and b!4175298 res!1711359) b!4175313))

(assert (= (and b!4175313 res!1711350) b!4175309))

(assert (= (and b!4175309 res!1711355) b!4175314))

(assert (= (and b!4175314 (not res!1711352)) b!4175299))

(assert (= (and b!4175299 (not res!1711353)) b!4175300))

(assert (= (and b!4175300 (not res!1711361)) b!4175316))

(assert (= (and b!4175316 (not res!1711358)) b!4175312))

(assert (= (and b!4175312 (not res!1711348)) b!4175304))

(assert (= (and b!4175304 (not res!1711362)) b!4175318))

(assert (= (and b!4175318 (not res!1711347)) b!4175315))

(assert (= (and b!4175315 (not res!1711354)) b!4175303))

(assert (= b!4175306 b!4175292))

(assert (= start!398106 b!4175306))

(assert (= b!4175307 b!4175310))

(assert (= start!398106 b!4175307))

(assert (= b!4175301 b!4175294))

(assert (= b!4175311 b!4175301))

(assert (= (and start!398106 ((_ is Cons!45793) rules!3843)) b!4175311))

(assert (= (and start!398106 ((_ is Cons!45792) input!3342)) b!4175293))

(assert (= (and start!398106 ((_ is Cons!45792) pBis!107)) b!4175302))

(assert (= (and start!398106 ((_ is Cons!45792) p!2959)) b!4175291))

(declare-fun m!4765017 () Bool)

(assert (=> b!4175318 m!4765017))

(declare-fun m!4765019 () Bool)

(assert (=> b!4175303 m!4765019))

(declare-fun m!4765021 () Bool)

(assert (=> b!4175317 m!4765021))

(declare-fun m!4765023 () Bool)

(assert (=> b!4175307 m!4765023))

(declare-fun m!4765025 () Bool)

(assert (=> b!4175307 m!4765025))

(declare-fun m!4765027 () Bool)

(assert (=> b!4175308 m!4765027))

(declare-fun m!4765029 () Bool)

(assert (=> b!4175300 m!4765029))

(declare-fun m!4765031 () Bool)

(assert (=> b!4175296 m!4765031))

(declare-fun m!4765033 () Bool)

(assert (=> b!4175313 m!4765033))

(declare-fun m!4765035 () Bool)

(assert (=> b!4175298 m!4765035))

(declare-fun m!4765037 () Bool)

(assert (=> b!4175304 m!4765037))

(declare-fun m!4765039 () Bool)

(assert (=> b!4175304 m!4765039))

(declare-fun m!4765041 () Bool)

(assert (=> b!4175304 m!4765041))

(declare-fun m!4765043 () Bool)

(assert (=> b!4175304 m!4765043))

(declare-fun m!4765045 () Bool)

(assert (=> b!4175304 m!4765045))

(assert (=> b!4175304 m!4765043))

(declare-fun m!4765047 () Bool)

(assert (=> b!4175304 m!4765047))

(assert (=> b!4175304 m!4765037))

(declare-fun m!4765049 () Bool)

(assert (=> b!4175297 m!4765049))

(declare-fun m!4765051 () Bool)

(assert (=> b!4175301 m!4765051))

(declare-fun m!4765053 () Bool)

(assert (=> b!4175301 m!4765053))

(declare-fun m!4765055 () Bool)

(assert (=> b!4175295 m!4765055))

(declare-fun m!4765057 () Bool)

(assert (=> b!4175312 m!4765057))

(declare-fun m!4765059 () Bool)

(assert (=> b!4175312 m!4765059))

(declare-fun m!4765061 () Bool)

(assert (=> b!4175312 m!4765061))

(declare-fun m!4765063 () Bool)

(assert (=> b!4175312 m!4765063))

(declare-fun m!4765065 () Bool)

(assert (=> b!4175312 m!4765065))

(declare-fun m!4765067 () Bool)

(assert (=> b!4175306 m!4765067))

(declare-fun m!4765069 () Bool)

(assert (=> b!4175306 m!4765069))

(declare-fun m!4765071 () Bool)

(assert (=> b!4175309 m!4765071))

(declare-fun m!4765073 () Bool)

(assert (=> b!4175299 m!4765073))

(declare-fun m!4765075 () Bool)

(assert (=> b!4175316 m!4765075))

(declare-fun m!4765077 () Bool)

(assert (=> b!4175314 m!4765077))

(declare-fun m!4765079 () Bool)

(assert (=> b!4175314 m!4765079))

(declare-fun m!4765081 () Bool)

(assert (=> b!4175314 m!4765081))

(declare-fun m!4765083 () Bool)

(assert (=> b!4175314 m!4765083))

(declare-fun m!4765085 () Bool)

(assert (=> b!4175314 m!4765085))

(declare-fun m!4765087 () Bool)

(assert (=> b!4175314 m!4765087))

(declare-fun m!4765089 () Bool)

(assert (=> b!4175314 m!4765089))

(declare-fun m!4765091 () Bool)

(assert (=> b!4175314 m!4765091))

(declare-fun m!4765093 () Bool)

(assert (=> b!4175305 m!4765093))

(check-sat b_and!326287 b_and!326289 (not b!4175299) b_and!326291 (not b!4175314) b_and!326295 (not b!4175316) (not b!4175304) (not b!4175318) (not b!4175298) (not b!4175311) (not b_next!121759) (not b!4175295) (not b_next!121763) (not b!4175297) (not b!4175309) (not b_next!121765) (not b!4175308) (not b!4175312) (not b!4175303) tp_is_empty!21981 (not b!4175300) (not b!4175313) (not b_next!121767) (not b!4175306) (not b!4175307) (not b!4175296) (not b!4175291) (not b!4175317) (not b!4175293) b_and!326293 (not b!4175301) (not b_next!121761) b_and!326285 (not b_next!121769) (not b!4175305) (not b!4175302))
(check-sat (not b_next!121765) b_and!326287 b_and!326289 b_and!326291 b_and!326295 (not b_next!121767) (not b_next!121759) (not b_next!121763) (not b_next!121769) b_and!326293 (not b_next!121761) b_and!326285)
