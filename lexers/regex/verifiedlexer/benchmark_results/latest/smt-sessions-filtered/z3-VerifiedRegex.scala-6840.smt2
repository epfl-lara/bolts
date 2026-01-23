; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359648 () Bool)

(assert start!359648)

(declare-fun b!3841073 () Bool)

(declare-fun b_free!102441 () Bool)

(declare-fun b_next!103145 () Bool)

(assert (=> b!3841073 (= b_free!102441 (not b_next!103145))))

(declare-fun tp!1163522 () Bool)

(declare-fun b_and!286119 () Bool)

(assert (=> b!3841073 (= tp!1163522 b_and!286119)))

(declare-fun b_free!102443 () Bool)

(declare-fun b_next!103147 () Bool)

(assert (=> b!3841073 (= b_free!102443 (not b_next!103147))))

(declare-fun tp!1163515 () Bool)

(declare-fun b_and!286121 () Bool)

(assert (=> b!3841073 (= tp!1163515 b_and!286121)))

(declare-fun b!3841062 () Bool)

(declare-fun b_free!102445 () Bool)

(declare-fun b_next!103149 () Bool)

(assert (=> b!3841062 (= b_free!102445 (not b_next!103149))))

(declare-fun tp!1163509 () Bool)

(declare-fun b_and!286123 () Bool)

(assert (=> b!3841062 (= tp!1163509 b_and!286123)))

(declare-fun b_free!102447 () Bool)

(declare-fun b_next!103151 () Bool)

(assert (=> b!3841062 (= b_free!102447 (not b_next!103151))))

(declare-fun tp!1163517 () Bool)

(declare-fun b_and!286125 () Bool)

(assert (=> b!3841062 (= tp!1163517 b_and!286125)))

(declare-fun b!3841057 () Bool)

(declare-fun b_free!102449 () Bool)

(declare-fun b_next!103153 () Bool)

(assert (=> b!3841057 (= b_free!102449 (not b_next!103153))))

(declare-fun tp!1163527 () Bool)

(declare-fun b_and!286127 () Bool)

(assert (=> b!3841057 (= tp!1163527 b_and!286127)))

(declare-fun b_free!102451 () Bool)

(declare-fun b_next!103155 () Bool)

(assert (=> b!3841057 (= b_free!102451 (not b_next!103155))))

(declare-fun tp!1163512 () Bool)

(declare-fun b_and!286129 () Bool)

(assert (=> b!3841057 (= tp!1163512 b_and!286129)))

(declare-fun b!3841067 () Bool)

(declare-fun b_free!102453 () Bool)

(declare-fun b_next!103157 () Bool)

(assert (=> b!3841067 (= b_free!102453 (not b_next!103157))))

(declare-fun tp!1163516 () Bool)

(declare-fun b_and!286131 () Bool)

(assert (=> b!3841067 (= tp!1163516 b_and!286131)))

(declare-fun b_free!102455 () Bool)

(declare-fun b_next!103159 () Bool)

(assert (=> b!3841067 (= b_free!102455 (not b_next!103159))))

(declare-fun tp!1163526 () Bool)

(declare-fun b_and!286133 () Bool)

(assert (=> b!3841067 (= tp!1163526 b_and!286133)))

(declare-datatypes ((LexerInterface!5857 0))(
  ( (LexerInterfaceExt!5854 (__x!25213 Int)) (Lexer!5855) )
))
(declare-fun thiss!20629 () LexerInterface!5857)

(declare-datatypes ((List!40756 0))(
  ( (Nil!40632) (Cons!40632 (h!46052 (_ BitVec 16)) (t!310425 List!40756)) )
))
(declare-datatypes ((TokenValue!6498 0))(
  ( (FloatLiteralValue!12996 (text!45931 List!40756)) (TokenValueExt!6497 (__x!25214 Int)) (Broken!32490 (value!199246 List!40756)) (Object!6621) (End!6498) (Def!6498) (Underscore!6498) (Match!6498) (Else!6498) (Error!6498) (Case!6498) (If!6498) (Extends!6498) (Abstract!6498) (Class!6498) (Val!6498) (DelimiterValue!12996 (del!6558 List!40756)) (KeywordValue!6504 (value!199247 List!40756)) (CommentValue!12996 (value!199248 List!40756)) (WhitespaceValue!12996 (value!199249 List!40756)) (IndentationValue!6498 (value!199250 List!40756)) (String!46207) (Int32!6498) (Broken!32491 (value!199251 List!40756)) (Boolean!6499) (Unit!58339) (OperatorValue!6501 (op!6558 List!40756)) (IdentifierValue!12996 (value!199252 List!40756)) (IdentifierValue!12997 (value!199253 List!40756)) (WhitespaceValue!12997 (value!199254 List!40756)) (True!12996) (False!12996) (Broken!32492 (value!199255 List!40756)) (Broken!32493 (value!199256 List!40756)) (True!12997) (RightBrace!6498) (RightBracket!6498) (Colon!6498) (Null!6498) (Comma!6498) (LeftBracket!6498) (False!12997) (LeftBrace!6498) (ImaginaryLiteralValue!6498 (text!45932 List!40756)) (StringLiteralValue!19494 (value!199257 List!40756)) (EOFValue!6498 (value!199258 List!40756)) (IdentValue!6498 (value!199259 List!40756)) (DelimiterValue!12997 (value!199260 List!40756)) (DedentValue!6498 (value!199261 List!40756)) (NewLineValue!6498 (value!199262 List!40756)) (IntegerValue!19494 (value!199263 (_ BitVec 32)) (text!45933 List!40756)) (IntegerValue!19495 (value!199264 Int) (text!45934 List!40756)) (Times!6498) (Or!6498) (Equal!6498) (Minus!6498) (Broken!32494 (value!199265 List!40756)) (And!6498) (Div!6498) (LessEqual!6498) (Mod!6498) (Concat!17671) (Not!6498) (Plus!6498) (SpaceValue!6498 (value!199266 List!40756)) (IntegerValue!19496 (value!199267 Int) (text!45935 List!40756)) (StringLiteralValue!19495 (text!45936 List!40756)) (FloatLiteralValue!12997 (text!45937 List!40756)) (BytesLiteralValue!6498 (value!199268 List!40756)) (CommentValue!12997 (value!199269 List!40756)) (StringLiteralValue!19496 (value!199270 List!40756)) (ErrorTokenValue!6498 (msg!6559 List!40756)) )
))
(declare-datatypes ((C!22532 0))(
  ( (C!22533 (val!13360 Int)) )
))
(declare-datatypes ((Regex!11173 0))(
  ( (ElementMatch!11173 (c!669434 C!22532)) (Concat!17672 (regOne!22858 Regex!11173) (regTwo!22858 Regex!11173)) (EmptyExpr!11173) (Star!11173 (reg!11502 Regex!11173)) (EmptyLang!11173) (Union!11173 (regOne!22859 Regex!11173) (regTwo!22859 Regex!11173)) )
))
(declare-datatypes ((String!46208 0))(
  ( (String!46209 (value!199271 String)) )
))
(declare-datatypes ((List!40757 0))(
  ( (Nil!40633) (Cons!40633 (h!46053 C!22532) (t!310426 List!40757)) )
))
(declare-datatypes ((IArray!24963 0))(
  ( (IArray!24964 (innerList!12539 List!40757)) )
))
(declare-datatypes ((Conc!12479 0))(
  ( (Node!12479 (left!31387 Conc!12479) (right!31717 Conc!12479) (csize!25188 Int) (cheight!12690 Int)) (Leaf!19320 (xs!15785 IArray!24963) (csize!25189 Int)) (Empty!12479) )
))
(declare-datatypes ((BalanceConc!24552 0))(
  ( (BalanceConc!24553 (c!669435 Conc!12479)) )
))
(declare-datatypes ((TokenValueInjection!12424 0))(
  ( (TokenValueInjection!12425 (toValue!8684 Int) (toChars!8543 Int)) )
))
(declare-datatypes ((Rule!12336 0))(
  ( (Rule!12337 (regex!6268 Regex!11173) (tag!7128 String!46208) (isSeparator!6268 Bool) (transformation!6268 TokenValueInjection!12424)) )
))
(declare-datatypes ((Token!11674 0))(
  ( (Token!11675 (value!199272 TokenValue!6498) (rule!9106 Rule!12336) (size!30583 Int) (originalCharacters!6868 List!40757)) )
))
(declare-datatypes ((tuple2!39806 0))(
  ( (tuple2!39807 (_1!23037 Token!11674) (_2!23037 List!40757)) )
))
(declare-datatypes ((Option!8686 0))(
  ( (None!8685) (Some!8685 (v!38977 tuple2!39806)) )
))
(declare-fun lt!1333105 () Option!8686)

(declare-datatypes ((List!40758 0))(
  ( (Nil!40634) (Cons!40634 (h!46054 Rule!12336) (t!310427 List!40758)) )
))
(declare-fun rules!2768 () List!40758)

(declare-fun b!3841041 () Bool)

(declare-fun lt!1333115 () List!40757)

(declare-fun maxPrefix!3161 (LexerInterface!5857 List!40758 List!40757) Option!8686)

(assert (=> b!3841041 (= lt!1333105 (maxPrefix!3161 thiss!20629 (t!310427 rules!2768) lt!1333115))))

(declare-fun lt!1333121 () Option!8686)

(declare-fun call!281954 () Option!8686)

(assert (=> b!3841041 (= lt!1333121 call!281954)))

(declare-fun e!2372976 () Option!8686)

(get-info :version)

(assert (=> b!3841041 (= e!2372976 (ite (and ((_ is None!8685) lt!1333121) ((_ is None!8685) lt!1333105)) None!8685 (ite ((_ is None!8685) lt!1333105) lt!1333121 (ite ((_ is None!8685) lt!1333121) lt!1333105 (ite (>= (size!30583 (_1!23037 (v!38977 lt!1333121))) (size!30583 (_1!23037 (v!38977 lt!1333105)))) (Some!8685 (v!38977 lt!1333121)) lt!1333105)))))))

(declare-fun b!3841042 () Bool)

(declare-fun e!2372970 () Bool)

(declare-fun tp_is_empty!19317 () Bool)

(declare-fun tp!1163513 () Bool)

(assert (=> b!3841042 (= e!2372970 (and tp_is_empty!19317 tp!1163513))))

(declare-fun b!3841043 () Bool)

(declare-fun res!1554609 () Bool)

(declare-fun e!2372951 () Bool)

(assert (=> b!3841043 (=> (not res!1554609) (not e!2372951))))

(declare-fun prefix!426 () List!40757)

(declare-fun isEmpty!24016 (List!40757) Bool)

(assert (=> b!3841043 (= res!1554609 (not (isEmpty!24016 prefix!426)))))

(declare-fun b!3841044 () Bool)

(declare-fun e!2372950 () Bool)

(assert (=> b!3841044 (= e!2372950 true)))

(declare-fun lt!1333110 () List!40757)

(assert (=> b!3841044 (= lt!1333110 prefix!426)))

(declare-fun lt!1333109 () Option!8686)

(declare-datatypes ((Unit!58340 0))(
  ( (Unit!58341) )
))
(declare-fun lt!1333119 () Unit!58340)

(declare-fun suffix!1176 () List!40757)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!396 (List!40757 List!40757 List!40757 List!40757) Unit!58340)

(assert (=> b!3841044 (= lt!1333119 (lemmaConcatSameAndSameSizesThenSameLists!396 lt!1333110 (_2!23037 (v!38977 lt!1333109)) prefix!426 suffix!1176))))

(declare-fun b!3841045 () Bool)

(declare-fun e!2372968 () Bool)

(declare-fun e!2372953 () Option!8686)

(assert (=> b!3841045 (= e!2372968 (= lt!1333109 e!2372953))))

(declare-fun c!669433 () Bool)

(assert (=> b!3841045 (= c!669433 (and ((_ is Cons!40634) rules!2768) ((_ is Nil!40634) (t!310427 rules!2768))))))

(declare-fun bm!281949 () Bool)

(declare-fun maxPrefixOneRule!2245 (LexerInterface!5857 Rule!12336 List!40757) Option!8686)

(assert (=> bm!281949 (= call!281954 (maxPrefixOneRule!2245 thiss!20629 (h!46054 rules!2768) lt!1333115))))

(declare-fun e!2372962 () Bool)

(declare-fun tp!1163511 () Bool)

(declare-fun b!3841046 () Bool)

(declare-fun err!4225 () Option!8686)

(declare-fun e!2372963 () Bool)

(declare-fun inv!54778 (String!46208) Bool)

(declare-fun inv!54781 (TokenValueInjection!12424) Bool)

(assert (=> b!3841046 (= e!2372962 (and tp!1163511 (inv!54778 (tag!7128 (rule!9106 (_1!23037 (v!38977 err!4225))))) (inv!54781 (transformation!6268 (rule!9106 (_1!23037 (v!38977 err!4225))))) e!2372963))))

(declare-fun b!3841047 () Bool)

(declare-fun res!1554603 () Bool)

(declare-fun e!2372956 () Bool)

(assert (=> b!3841047 (=> (not res!1554603) (not e!2372956))))

(declare-fun suffixResult!91 () List!40757)

(declare-datatypes ((List!40759 0))(
  ( (Nil!40635) (Cons!40635 (h!46055 Token!11674) (t!310428 List!40759)) )
))
(declare-fun suffixTokens!72 () List!40759)

(declare-datatypes ((tuple2!39808 0))(
  ( (tuple2!39809 (_1!23038 List!40759) (_2!23038 List!40757)) )
))
(declare-fun lexList!1625 (LexerInterface!5857 List!40758 List!40757) tuple2!39808)

(assert (=> b!3841047 (= res!1554603 (= (lexList!1625 thiss!20629 rules!2768 suffix!1176) (tuple2!39809 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3841049 () Bool)

(declare-fun res!1554614 () Bool)

(declare-fun e!2372957 () Bool)

(assert (=> b!3841049 (=> res!1554614 e!2372957)))

(declare-fun lt!1333117 () tuple2!39808)

(assert (=> b!3841049 (= res!1554614 (or (not (= lt!1333117 (tuple2!39809 (_1!23038 lt!1333117) (_2!23038 lt!1333117)))) (not (= (_2!23037 (v!38977 lt!1333109)) suffix!1176))))))

(declare-fun b!3841050 () Bool)

(declare-fun e!2372974 () Bool)

(declare-fun e!2372948 () Bool)

(declare-fun tp!1163507 () Bool)

(assert (=> b!3841050 (= e!2372948 (and tp!1163507 (inv!54778 (tag!7128 (h!46054 rules!2768))) (inv!54781 (transformation!6268 (h!46054 rules!2768))) e!2372974))))

(declare-fun b!3841051 () Bool)

(declare-fun tp!1163508 () Bool)

(declare-fun e!2372947 () Bool)

(declare-fun inv!21 (TokenValue!6498) Bool)

(assert (=> b!3841051 (= e!2372947 (and (inv!21 (value!199272 (_1!23037 (v!38977 err!4225)))) e!2372962 tp!1163508))))

(declare-fun b!3841052 () Bool)

(declare-fun e!2372966 () Bool)

(assert (=> b!3841052 (= e!2372966 (not e!2372957))))

(declare-fun res!1554610 () Bool)

(assert (=> b!3841052 (=> res!1554610 e!2372957)))

(declare-fun lt!1333108 () List!40757)

(assert (=> b!3841052 (= res!1554610 (not (= lt!1333108 lt!1333115)))))

(assert (=> b!3841052 (= lt!1333117 (lexList!1625 thiss!20629 rules!2768 (_2!23037 (v!38977 lt!1333109))))))

(declare-fun lt!1333118 () List!40757)

(declare-fun lt!1333113 () TokenValue!6498)

(declare-fun lt!1333106 () Int)

(assert (=> b!3841052 (and (= (size!30583 (_1!23037 (v!38977 lt!1333109))) lt!1333106) (= (originalCharacters!6868 (_1!23037 (v!38977 lt!1333109))) lt!1333110) (= (tuple2!39807 (_1!23037 (v!38977 lt!1333109)) (_2!23037 (v!38977 lt!1333109))) (tuple2!39807 (Token!11675 lt!1333113 (rule!9106 (_1!23037 (v!38977 lt!1333109))) lt!1333106 lt!1333110) lt!1333118)))))

(declare-fun size!30584 (List!40757) Int)

(assert (=> b!3841052 (= lt!1333106 (size!30584 lt!1333110))))

(declare-fun e!2372964 () Bool)

(assert (=> b!3841052 e!2372964))

(declare-fun res!1554606 () Bool)

(assert (=> b!3841052 (=> (not res!1554606) (not e!2372964))))

(assert (=> b!3841052 (= res!1554606 (= (value!199272 (_1!23037 (v!38977 lt!1333109))) lt!1333113))))

(declare-fun apply!9511 (TokenValueInjection!12424 BalanceConc!24552) TokenValue!6498)

(declare-fun seqFromList!4539 (List!40757) BalanceConc!24552)

(assert (=> b!3841052 (= lt!1333113 (apply!9511 (transformation!6268 (rule!9106 (_1!23037 (v!38977 lt!1333109)))) (seqFromList!4539 lt!1333110)))))

(assert (=> b!3841052 (= (_2!23037 (v!38977 lt!1333109)) lt!1333118)))

(declare-fun lt!1333111 () Unit!58340)

(declare-fun lemmaSamePrefixThenSameSuffix!1588 (List!40757 List!40757 List!40757 List!40757 List!40757) Unit!58340)

(assert (=> b!3841052 (= lt!1333111 (lemmaSamePrefixThenSameSuffix!1588 lt!1333110 (_2!23037 (v!38977 lt!1333109)) lt!1333110 lt!1333118 lt!1333115))))

(declare-fun getSuffix!1822 (List!40757 List!40757) List!40757)

(assert (=> b!3841052 (= lt!1333118 (getSuffix!1822 lt!1333115 lt!1333110))))

(declare-fun isPrefix!3367 (List!40757 List!40757) Bool)

(assert (=> b!3841052 (isPrefix!3367 lt!1333110 lt!1333108)))

(declare-fun ++!10293 (List!40757 List!40757) List!40757)

(assert (=> b!3841052 (= lt!1333108 (++!10293 lt!1333110 (_2!23037 (v!38977 lt!1333109))))))

(declare-fun lt!1333116 () Unit!58340)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2230 (List!40757 List!40757) Unit!58340)

(assert (=> b!3841052 (= lt!1333116 (lemmaConcatTwoListThenFirstIsPrefix!2230 lt!1333110 (_2!23037 (v!38977 lt!1333109))))))

(declare-fun list!15132 (BalanceConc!24552) List!40757)

(declare-fun charsOf!4096 (Token!11674) BalanceConc!24552)

(assert (=> b!3841052 (= lt!1333110 (list!15132 (charsOf!4096 (_1!23037 (v!38977 lt!1333109)))))))

(declare-fun ruleValid!2220 (LexerInterface!5857 Rule!12336) Bool)

(assert (=> b!3841052 (ruleValid!2220 thiss!20629 (rule!9106 (_1!23037 (v!38977 lt!1333109))))))

(declare-fun lt!1333104 () Unit!58340)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1300 (LexerInterface!5857 Rule!12336 List!40758) Unit!58340)

(assert (=> b!3841052 (= lt!1333104 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1300 thiss!20629 (rule!9106 (_1!23037 (v!38977 lt!1333109))) rules!2768))))

(declare-fun lt!1333114 () Unit!58340)

(declare-fun lemmaCharactersSize!929 (Token!11674) Unit!58340)

(assert (=> b!3841052 (= lt!1333114 (lemmaCharactersSize!929 (_1!23037 (v!38977 lt!1333109))))))

(declare-fun e!2372980 () Bool)

(declare-fun e!2372952 () Bool)

(declare-fun tp!1163518 () Bool)

(declare-fun b!3841053 () Bool)

(declare-fun inv!54782 (Token!11674) Bool)

(assert (=> b!3841053 (= e!2372980 (and (inv!54782 (h!46055 suffixTokens!72)) e!2372952 tp!1163518))))

(declare-fun b!3841054 () Bool)

(assert (=> b!3841054 (= e!2372951 e!2372956)))

(declare-fun res!1554608 () Bool)

(assert (=> b!3841054 (=> (not res!1554608) (not e!2372956))))

(declare-fun lt!1333120 () List!40759)

(declare-fun lt!1333112 () tuple2!39808)

(assert (=> b!3841054 (= res!1554608 (= lt!1333112 (tuple2!39809 lt!1333120 suffixResult!91)))))

(assert (=> b!3841054 (= lt!1333112 (lexList!1625 thiss!20629 rules!2768 lt!1333115))))

(declare-fun prefixTokens!80 () List!40759)

(declare-fun ++!10294 (List!40759 List!40759) List!40759)

(assert (=> b!3841054 (= lt!1333120 (++!10294 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3841054 (= lt!1333115 (++!10293 prefix!426 suffix!1176))))

(declare-fun b!3841055 () Bool)

(declare-fun res!1554616 () Bool)

(assert (=> b!3841055 (=> (not res!1554616) (not e!2372951))))

(declare-fun isEmpty!24017 (List!40759) Bool)

(assert (=> b!3841055 (= res!1554616 (not (isEmpty!24017 prefixTokens!80)))))

(declare-fun b!3841056 () Bool)

(declare-fun tp!1163521 () Bool)

(declare-fun e!2372965 () Bool)

(assert (=> b!3841056 (= e!2372965 (and (inv!54782 (_1!23037 (v!38977 err!4225))) e!2372947 tp!1163521))))

(assert (=> b!3841057 (= e!2372963 (and tp!1163527 tp!1163512))))

(declare-fun tp!1163525 () Bool)

(declare-fun e!2372972 () Bool)

(declare-fun e!2372969 () Bool)

(declare-fun b!3841058 () Bool)

(assert (=> b!3841058 (= e!2372969 (and tp!1163525 (inv!54778 (tag!7128 (rule!9106 (h!46055 suffixTokens!72)))) (inv!54781 (transformation!6268 (rule!9106 (h!46055 suffixTokens!72)))) e!2372972))))

(declare-fun b!3841059 () Bool)

(declare-fun e!2372979 () Bool)

(declare-fun tp!1163510 () Bool)

(assert (=> b!3841059 (= e!2372979 (and e!2372948 tp!1163510))))

(declare-fun b!3841060 () Bool)

(assert (=> b!3841060 (= e!2372957 e!2372950)))

(declare-fun res!1554615 () Bool)

(assert (=> b!3841060 (=> res!1554615 e!2372950)))

(assert (=> b!3841060 (= res!1554615 (not (= lt!1333109 (Some!8685 (tuple2!39807 (_1!23037 (v!38977 lt!1333109)) (_2!23037 (v!38977 lt!1333109)))))))))

(assert (=> b!3841060 e!2372968))

(declare-fun res!1554604 () Bool)

(assert (=> b!3841060 (=> (not res!1554604) (not e!2372968))))

(assert (=> b!3841060 (= res!1554604 (isPrefix!3367 lt!1333115 lt!1333115))))

(declare-fun lt!1333107 () Unit!58340)

(declare-fun lemmaIsPrefixRefl!2140 (List!40757 List!40757) Unit!58340)

(assert (=> b!3841060 (= lt!1333107 (lemmaIsPrefixRefl!2140 lt!1333115 lt!1333115))))

(assert (=> b!3841060 (= lt!1333112 (tuple2!39809 (Cons!40635 (_1!23037 (v!38977 lt!1333109)) (_1!23038 lt!1333117)) (_2!23038 lt!1333117)))))

(declare-fun b!3841061 () Bool)

(assert (=> b!3841061 (= e!2372953 call!281954)))

(declare-fun e!2372973 () Bool)

(assert (=> b!3841062 (= e!2372973 (and tp!1163509 tp!1163517))))

(declare-fun b!3841063 () Bool)

(declare-fun e!2372958 () Bool)

(declare-fun tp!1163519 () Bool)

(declare-fun e!2372954 () Bool)

(assert (=> b!3841063 (= e!2372954 (and (inv!54782 (h!46055 prefixTokens!80)) e!2372958 tp!1163519))))

(declare-fun tp!1163524 () Bool)

(declare-fun b!3841064 () Bool)

(assert (=> b!3841064 (= e!2372952 (and (inv!21 (value!199272 (h!46055 suffixTokens!72))) e!2372969 tp!1163524))))

(declare-fun b!3841065 () Bool)

(declare-fun e!2372971 () Bool)

(declare-fun tp!1163523 () Bool)

(assert (=> b!3841065 (= e!2372971 (and tp_is_empty!19317 tp!1163523))))

(declare-fun tp!1163514 () Bool)

(declare-fun e!2372977 () Bool)

(declare-fun b!3841066 () Bool)

(assert (=> b!3841066 (= e!2372958 (and (inv!21 (value!199272 (h!46055 prefixTokens!80))) e!2372977 tp!1163514))))

(assert (=> b!3841067 (= e!2372972 (and tp!1163516 tp!1163526))))

(declare-fun b!3841068 () Bool)

(assert (=> b!3841068 (= e!2372964 (= (size!30583 (_1!23037 (v!38977 lt!1333109))) (size!30584 (originalCharacters!6868 (_1!23037 (v!38977 lt!1333109))))))))

(declare-fun b!3841069 () Bool)

(declare-fun res!1554611 () Bool)

(assert (=> b!3841069 (=> (not res!1554611) (not e!2372951))))

(declare-fun rulesInvariant!5200 (LexerInterface!5857 List!40758) Bool)

(assert (=> b!3841069 (= res!1554611 (rulesInvariant!5200 thiss!20629 rules!2768))))

(declare-fun b!3841070 () Bool)

(assert (=> b!3841070 (= e!2372953 e!2372976)))

(declare-fun c!669432 () Bool)

(assert (=> b!3841070 (= c!669432 ((_ is Cons!40634) rules!2768))))

(declare-fun b!3841071 () Bool)

(declare-fun tp!1163520 () Bool)

(assert (=> b!3841071 (= e!2372977 (and tp!1163520 (inv!54778 (tag!7128 (rule!9106 (h!46055 prefixTokens!80)))) (inv!54781 (transformation!6268 (rule!9106 (h!46055 prefixTokens!80)))) e!2372973))))

(declare-fun res!1554607 () Bool)

(assert (=> start!359648 (=> (not res!1554607) (not e!2372951))))

(assert (=> start!359648 (= res!1554607 ((_ is Lexer!5855) thiss!20629))))

(assert (=> start!359648 e!2372951))

(assert (=> start!359648 e!2372970))

(assert (=> start!359648 true))

(assert (=> start!359648 e!2372971))

(assert (=> start!359648 e!2372979))

(assert (=> start!359648 e!2372954))

(assert (=> start!359648 e!2372980))

(declare-fun e!2372967 () Bool)

(assert (=> start!359648 e!2372967))

(declare-fun b!3841048 () Bool)

(declare-fun res!1554613 () Bool)

(assert (=> b!3841048 (=> (not res!1554613) (not e!2372951))))

(declare-fun isEmpty!24018 (List!40758) Bool)

(assert (=> b!3841048 (= res!1554613 (not (isEmpty!24018 rules!2768)))))

(declare-fun b!3841072 () Bool)

(assert (=> b!3841072 (= e!2372956 e!2372966)))

(declare-fun res!1554612 () Bool)

(assert (=> b!3841072 (=> (not res!1554612) (not e!2372966))))

(assert (=> b!3841072 (= res!1554612 ((_ is Some!8685) lt!1333109))))

(assert (=> b!3841072 (= lt!1333109 (maxPrefix!3161 thiss!20629 rules!2768 lt!1333115))))

(assert (=> b!3841073 (= e!2372974 (and tp!1163522 tp!1163515))))

(declare-fun b!3841074 () Bool)

(declare-fun tp!1163528 () Bool)

(assert (=> b!3841074 (= e!2372967 (and tp_is_empty!19317 tp!1163528))))

(declare-fun b!3841075 () Bool)

(declare-fun res!1554605 () Bool)

(assert (=> b!3841075 (=> res!1554605 e!2372957)))

(assert (=> b!3841075 (= res!1554605 (not (= lt!1333112 (tuple2!39809 (++!10294 (Cons!40635 (_1!23037 (v!38977 lt!1333109)) Nil!40635) (_1!23038 lt!1333117)) (_2!23038 lt!1333117)))))))

(declare-fun b!3841076 () Bool)

(assert (=> b!3841076 true))

(assert (=> b!3841076 e!2372965))

(assert (=> b!3841076 (= e!2372976 err!4225)))

(assert (= (and start!359648 res!1554607) b!3841048))

(assert (= (and b!3841048 res!1554613) b!3841069))

(assert (= (and b!3841069 res!1554611) b!3841055))

(assert (= (and b!3841055 res!1554616) b!3841043))

(assert (= (and b!3841043 res!1554609) b!3841054))

(assert (= (and b!3841054 res!1554608) b!3841047))

(assert (= (and b!3841047 res!1554603) b!3841072))

(assert (= (and b!3841072 res!1554612) b!3841052))

(assert (= (and b!3841052 res!1554606) b!3841068))

(assert (= (and b!3841052 (not res!1554610)) b!3841075))

(assert (= (and b!3841075 (not res!1554605)) b!3841049))

(assert (= (and b!3841049 (not res!1554614)) b!3841060))

(assert (= (and b!3841060 res!1554604) b!3841045))

(assert (= (and b!3841045 c!669433) b!3841061))

(assert (= (and b!3841045 (not c!669433)) b!3841070))

(assert (= (and b!3841070 c!669432) b!3841041))

(assert (= (and b!3841070 (not c!669432)) b!3841076))

(assert (= b!3841046 b!3841057))

(assert (= b!3841051 b!3841046))

(assert (= b!3841056 b!3841051))

(assert (= (and b!3841076 ((_ is Some!8685) err!4225)) b!3841056))

(assert (= (or b!3841061 b!3841041) bm!281949))

(assert (= (and b!3841060 (not res!1554615)) b!3841044))

(assert (= (and start!359648 ((_ is Cons!40633) suffixResult!91)) b!3841042))

(assert (= (and start!359648 ((_ is Cons!40633) suffix!1176)) b!3841065))

(assert (= b!3841050 b!3841073))

(assert (= b!3841059 b!3841050))

(assert (= (and start!359648 ((_ is Cons!40634) rules!2768)) b!3841059))

(assert (= b!3841071 b!3841062))

(assert (= b!3841066 b!3841071))

(assert (= b!3841063 b!3841066))

(assert (= (and start!359648 ((_ is Cons!40635) prefixTokens!80)) b!3841063))

(assert (= b!3841058 b!3841067))

(assert (= b!3841064 b!3841058))

(assert (= b!3841053 b!3841064))

(assert (= (and start!359648 ((_ is Cons!40635) suffixTokens!72)) b!3841053))

(assert (= (and start!359648 ((_ is Cons!40633) prefix!426)) b!3841074))

(declare-fun m!4395281 () Bool)

(assert (=> b!3841055 m!4395281))

(declare-fun m!4395283 () Bool)

(assert (=> b!3841064 m!4395283))

(declare-fun m!4395285 () Bool)

(assert (=> b!3841063 m!4395285))

(declare-fun m!4395287 () Bool)

(assert (=> b!3841058 m!4395287))

(declare-fun m!4395289 () Bool)

(assert (=> b!3841058 m!4395289))

(declare-fun m!4395291 () Bool)

(assert (=> b!3841050 m!4395291))

(declare-fun m!4395293 () Bool)

(assert (=> b!3841050 m!4395293))

(declare-fun m!4395295 () Bool)

(assert (=> b!3841048 m!4395295))

(declare-fun m!4395297 () Bool)

(assert (=> b!3841072 m!4395297))

(declare-fun m!4395299 () Bool)

(assert (=> bm!281949 m!4395299))

(declare-fun m!4395301 () Bool)

(assert (=> b!3841044 m!4395301))

(declare-fun m!4395303 () Bool)

(assert (=> b!3841060 m!4395303))

(declare-fun m!4395305 () Bool)

(assert (=> b!3841060 m!4395305))

(declare-fun m!4395307 () Bool)

(assert (=> b!3841068 m!4395307))

(declare-fun m!4395309 () Bool)

(assert (=> b!3841071 m!4395309))

(declare-fun m!4395311 () Bool)

(assert (=> b!3841071 m!4395311))

(declare-fun m!4395313 () Bool)

(assert (=> b!3841052 m!4395313))

(declare-fun m!4395315 () Bool)

(assert (=> b!3841052 m!4395315))

(declare-fun m!4395317 () Bool)

(assert (=> b!3841052 m!4395317))

(declare-fun m!4395319 () Bool)

(assert (=> b!3841052 m!4395319))

(declare-fun m!4395321 () Bool)

(assert (=> b!3841052 m!4395321))

(declare-fun m!4395323 () Bool)

(assert (=> b!3841052 m!4395323))

(assert (=> b!3841052 m!4395313))

(declare-fun m!4395325 () Bool)

(assert (=> b!3841052 m!4395325))

(declare-fun m!4395327 () Bool)

(assert (=> b!3841052 m!4395327))

(declare-fun m!4395329 () Bool)

(assert (=> b!3841052 m!4395329))

(declare-fun m!4395331 () Bool)

(assert (=> b!3841052 m!4395331))

(declare-fun m!4395333 () Bool)

(assert (=> b!3841052 m!4395333))

(declare-fun m!4395335 () Bool)

(assert (=> b!3841052 m!4395335))

(declare-fun m!4395337 () Bool)

(assert (=> b!3841052 m!4395337))

(assert (=> b!3841052 m!4395321))

(declare-fun m!4395339 () Bool)

(assert (=> b!3841052 m!4395339))

(declare-fun m!4395341 () Bool)

(assert (=> b!3841066 m!4395341))

(declare-fun m!4395343 () Bool)

(assert (=> b!3841054 m!4395343))

(declare-fun m!4395345 () Bool)

(assert (=> b!3841054 m!4395345))

(declare-fun m!4395347 () Bool)

(assert (=> b!3841054 m!4395347))

(declare-fun m!4395349 () Bool)

(assert (=> b!3841053 m!4395349))

(declare-fun m!4395351 () Bool)

(assert (=> b!3841047 m!4395351))

(declare-fun m!4395353 () Bool)

(assert (=> b!3841056 m!4395353))

(declare-fun m!4395355 () Bool)

(assert (=> b!3841051 m!4395355))

(declare-fun m!4395357 () Bool)

(assert (=> b!3841069 m!4395357))

(declare-fun m!4395359 () Bool)

(assert (=> b!3841043 m!4395359))

(declare-fun m!4395361 () Bool)

(assert (=> b!3841075 m!4395361))

(declare-fun m!4395363 () Bool)

(assert (=> b!3841041 m!4395363))

(declare-fun m!4395365 () Bool)

(assert (=> b!3841046 m!4395365))

(declare-fun m!4395367 () Bool)

(assert (=> b!3841046 m!4395367))

(check-sat b_and!286133 (not b!3841065) (not b!3841055) (not b!3841047) (not b_next!103159) (not b!3841058) (not b_next!103149) (not b!3841046) b_and!286129 (not b!3841075) b_and!286123 (not b!3841069) b_and!286121 (not b_next!103147) (not b!3841048) (not b_next!103153) (not b!3841068) (not b!3841060) tp_is_empty!19317 (not bm!281949) (not b!3841041) b_and!286127 b_and!286131 b_and!286125 (not b_next!103157) (not b_next!103155) (not b!3841066) (not b!3841043) (not b_next!103145) (not b!3841050) (not b!3841071) (not b!3841063) (not b_next!103151) (not b!3841054) (not b!3841074) (not b!3841053) (not b!3841051) (not b!3841052) (not b!3841042) (not b!3841064) b_and!286119 (not b!3841059) (not b!3841072) (not b!3841056) (not b!3841044))
(check-sat (not b_next!103153) b_and!286133 b_and!286127 (not b_next!103159) (not b_next!103145) (not b_next!103151) (not b_next!103149) b_and!286119 b_and!286129 b_and!286123 b_and!286121 (not b_next!103147) b_and!286131 b_and!286125 (not b_next!103157) (not b_next!103155))
