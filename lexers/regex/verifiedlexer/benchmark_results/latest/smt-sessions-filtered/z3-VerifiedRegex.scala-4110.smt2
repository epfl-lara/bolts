; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220180 () Bool)

(assert start!220180)

(declare-fun b!2256259 () Bool)

(declare-fun b_free!66381 () Bool)

(declare-fun b_next!67085 () Bool)

(assert (=> b!2256259 (= b_free!66381 (not b_next!67085))))

(declare-fun tp!713153 () Bool)

(declare-fun b_and!177073 () Bool)

(assert (=> b!2256259 (= tp!713153 b_and!177073)))

(declare-fun b_free!66383 () Bool)

(declare-fun b_next!67087 () Bool)

(assert (=> b!2256259 (= b_free!66383 (not b_next!67087))))

(declare-fun tp!713151 () Bool)

(declare-fun b_and!177075 () Bool)

(assert (=> b!2256259 (= tp!713151 b_and!177075)))

(declare-fun b!2256278 () Bool)

(declare-fun b_free!66385 () Bool)

(declare-fun b_next!67089 () Bool)

(assert (=> b!2256278 (= b_free!66385 (not b_next!67089))))

(declare-fun tp!713146 () Bool)

(declare-fun b_and!177077 () Bool)

(assert (=> b!2256278 (= tp!713146 b_and!177077)))

(declare-fun b_free!66387 () Bool)

(declare-fun b_next!67091 () Bool)

(assert (=> b!2256278 (= b_free!66387 (not b_next!67091))))

(declare-fun tp!713155 () Bool)

(declare-fun b_and!177079 () Bool)

(assert (=> b!2256278 (= tp!713155 b_and!177079)))

(declare-fun b!2256284 () Bool)

(declare-fun b_free!66389 () Bool)

(declare-fun b_next!67093 () Bool)

(assert (=> b!2256284 (= b_free!66389 (not b_next!67093))))

(declare-fun tp!713141 () Bool)

(declare-fun b_and!177081 () Bool)

(assert (=> b!2256284 (= tp!713141 b_and!177081)))

(declare-fun b_free!66391 () Bool)

(declare-fun b_next!67095 () Bool)

(assert (=> b!2256284 (= b_free!66391 (not b_next!67095))))

(declare-fun tp!713145 () Bool)

(declare-fun b_and!177083 () Bool)

(assert (=> b!2256284 (= tp!713145 b_and!177083)))

(declare-fun b!2256274 () Bool)

(declare-fun b_free!66393 () Bool)

(declare-fun b_next!67097 () Bool)

(assert (=> b!2256274 (= b_free!66393 (not b_next!67097))))

(declare-fun tp!713147 () Bool)

(declare-fun b_and!177085 () Bool)

(assert (=> b!2256274 (= tp!713147 b_and!177085)))

(declare-fun b_free!66395 () Bool)

(declare-fun b_next!67099 () Bool)

(assert (=> b!2256274 (= b_free!66395 (not b_next!67099))))

(declare-fun tp!713142 () Bool)

(declare-fun b_and!177087 () Bool)

(assert (=> b!2256274 (= tp!713142 b_and!177087)))

(declare-fun b!2256254 () Bool)

(declare-fun res!964471 () Bool)

(declare-fun e!1444275 () Bool)

(assert (=> b!2256254 (=> (not res!964471) (not e!1444275))))

(declare-datatypes ((LexerInterface!3848 0))(
  ( (LexerInterfaceExt!3845 (__x!17886 Int)) (Lexer!3846) )
))
(declare-fun thiss!16613 () LexerInterface!3848)

(declare-datatypes ((List!26859 0))(
  ( (Nil!26765) (Cons!26765 (h!32166 (_ BitVec 16)) (t!201279 List!26859)) )
))
(declare-datatypes ((TokenValue!4413 0))(
  ( (FloatLiteralValue!8826 (text!31336 List!26859)) (TokenValueExt!4412 (__x!17887 Int)) (Broken!22065 (value!134947 List!26859)) (Object!4506) (End!4413) (Def!4413) (Underscore!4413) (Match!4413) (Else!4413) (Error!4413) (Case!4413) (If!4413) (Extends!4413) (Abstract!4413) (Class!4413) (Val!4413) (DelimiterValue!8826 (del!4473 List!26859)) (KeywordValue!4419 (value!134948 List!26859)) (CommentValue!8826 (value!134949 List!26859)) (WhitespaceValue!8826 (value!134950 List!26859)) (IndentationValue!4413 (value!134951 List!26859)) (String!29168) (Int32!4413) (Broken!22066 (value!134952 List!26859)) (Boolean!4414) (Unit!39681) (OperatorValue!4416 (op!4473 List!26859)) (IdentifierValue!8826 (value!134953 List!26859)) (IdentifierValue!8827 (value!134954 List!26859)) (WhitespaceValue!8827 (value!134955 List!26859)) (True!8826) (False!8826) (Broken!22067 (value!134956 List!26859)) (Broken!22068 (value!134957 List!26859)) (True!8827) (RightBrace!4413) (RightBracket!4413) (Colon!4413) (Null!4413) (Comma!4413) (LeftBracket!4413) (False!8827) (LeftBrace!4413) (ImaginaryLiteralValue!4413 (text!31337 List!26859)) (StringLiteralValue!13239 (value!134958 List!26859)) (EOFValue!4413 (value!134959 List!26859)) (IdentValue!4413 (value!134960 List!26859)) (DelimiterValue!8827 (value!134961 List!26859)) (DedentValue!4413 (value!134962 List!26859)) (NewLineValue!4413 (value!134963 List!26859)) (IntegerValue!13239 (value!134964 (_ BitVec 32)) (text!31338 List!26859)) (IntegerValue!13240 (value!134965 Int) (text!31339 List!26859)) (Times!4413) (Or!4413) (Equal!4413) (Minus!4413) (Broken!22069 (value!134966 List!26859)) (And!4413) (Div!4413) (LessEqual!4413) (Mod!4413) (Concat!11012) (Not!4413) (Plus!4413) (SpaceValue!4413 (value!134967 List!26859)) (IntegerValue!13241 (value!134968 Int) (text!31340 List!26859)) (StringLiteralValue!13240 (text!31341 List!26859)) (FloatLiteralValue!8827 (text!31342 List!26859)) (BytesLiteralValue!4413 (value!134969 List!26859)) (CommentValue!8827 (value!134970 List!26859)) (StringLiteralValue!13241 (value!134971 List!26859)) (ErrorTokenValue!4413 (msg!4474 List!26859)) )
))
(declare-datatypes ((C!13344 0))(
  ( (C!13345 (val!7720 Int)) )
))
(declare-datatypes ((List!26860 0))(
  ( (Nil!26766) (Cons!26766 (h!32167 C!13344) (t!201280 List!26860)) )
))
(declare-datatypes ((IArray!17305 0))(
  ( (IArray!17306 (innerList!8710 List!26860)) )
))
(declare-datatypes ((Conc!8650 0))(
  ( (Node!8650 (left!20328 Conc!8650) (right!20658 Conc!8650) (csize!17530 Int) (cheight!8861 Int)) (Leaf!12761 (xs!11592 IArray!17305) (csize!17531 Int)) (Empty!8650) )
))
(declare-datatypes ((BalanceConc!17028 0))(
  ( (BalanceConc!17029 (c!358584 Conc!8650)) )
))
(declare-datatypes ((Regex!6599 0))(
  ( (ElementMatch!6599 (c!358585 C!13344)) (Concat!11013 (regOne!13710 Regex!6599) (regTwo!13710 Regex!6599)) (EmptyExpr!6599) (Star!6599 (reg!6928 Regex!6599)) (EmptyLang!6599) (Union!6599 (regOne!13711 Regex!6599) (regTwo!13711 Regex!6599)) )
))
(declare-datatypes ((String!29169 0))(
  ( (String!29170 (value!134972 String)) )
))
(declare-datatypes ((TokenValueInjection!8366 0))(
  ( (TokenValueInjection!8367 (toValue!5993 Int) (toChars!5852 Int)) )
))
(declare-datatypes ((Rule!8302 0))(
  ( (Rule!8303 (regex!4251 Regex!6599) (tag!4741 String!29169) (isSeparator!4251 Bool) (transformation!4251 TokenValueInjection!8366)) )
))
(declare-datatypes ((List!26861 0))(
  ( (Nil!26767) (Cons!26767 (h!32168 Rule!8302) (t!201281 List!26861)) )
))
(declare-fun rules!1750 () List!26861)

(declare-fun rulesInvariant!3350 (LexerInterface!3848 List!26861) Bool)

(assert (=> b!2256254 (= res!964471 (rulesInvariant!3350 thiss!16613 rules!1750))))

(declare-fun b!2256255 () Bool)

(declare-fun res!964469 () Bool)

(assert (=> b!2256255 (=> (not res!964469) (not e!1444275))))

(declare-fun isEmpty!15109 (List!26861) Bool)

(assert (=> b!2256255 (= res!964469 (not (isEmpty!15109 rules!1750)))))

(declare-fun b!2256256 () Bool)

(declare-fun e!1444286 () Bool)

(declare-fun tp_is_empty!10419 () Bool)

(declare-fun tp!713149 () Bool)

(assert (=> b!2256256 (= e!1444286 (and tp_is_empty!10419 tp!713149))))

(declare-fun b!2256257 () Bool)

(declare-fun e!1444274 () Bool)

(declare-datatypes ((Token!7980 0))(
  ( (Token!7981 (value!134973 TokenValue!4413) (rule!6557 Rule!8302) (size!20958 Int) (originalCharacters!5021 List!26860)) )
))
(declare-datatypes ((List!26862 0))(
  ( (Nil!26768) (Cons!26768 (h!32169 Token!7980) (t!201282 List!26862)) )
))
(declare-fun tokens!456 () List!26862)

(declare-fun otherP!12 () List!26860)

(declare-fun size!20959 (BalanceConc!17028) Int)

(declare-fun charsOf!2639 (Token!7980) BalanceConc!17028)

(declare-fun head!4824 (List!26862) Token!7980)

(declare-fun size!20960 (List!26860) Int)

(assert (=> b!2256257 (= e!1444274 (<= (size!20959 (charsOf!2639 (head!4824 tokens!456))) (size!20960 otherP!12)))))

(declare-fun e!1444285 () Bool)

(declare-fun tp!713144 () Bool)

(declare-fun e!1444299 () Bool)

(declare-fun b!2256258 () Bool)

(declare-fun inv!36296 (String!29169) Bool)

(declare-fun inv!36299 (TokenValueInjection!8366) Bool)

(assert (=> b!2256258 (= e!1444285 (and tp!713144 (inv!36296 (tag!4741 (rule!6557 (h!32169 tokens!456)))) (inv!36299 (transformation!4251 (rule!6557 (h!32169 tokens!456)))) e!1444299))))

(declare-fun e!1444279 () Bool)

(assert (=> b!2256259 (= e!1444279 (and tp!713153 tp!713151))))

(declare-fun b!2256261 () Bool)

(declare-fun e!1444300 () Bool)

(declare-fun e!1444283 () Bool)

(assert (=> b!2256261 (= e!1444300 (not e!1444283))))

(declare-fun res!964472 () Bool)

(assert (=> b!2256261 (=> res!964472 e!1444283)))

(declare-fun e!1444288 () Bool)

(assert (=> b!2256261 (= res!964472 e!1444288)))

(declare-fun res!964473 () Bool)

(assert (=> b!2256261 (=> (not res!964473) (not e!1444288))))

(declare-fun lt!838726 () Bool)

(assert (=> b!2256261 (= res!964473 (not lt!838726))))

(declare-fun r!2363 () Rule!8302)

(declare-fun ruleValid!1343 (LexerInterface!3848 Rule!8302) Bool)

(assert (=> b!2256261 (ruleValid!1343 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39682 0))(
  ( (Unit!39683) )
))
(declare-fun lt!838720 () Unit!39682)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!750 (LexerInterface!3848 Rule!8302 List!26861) Unit!39682)

(assert (=> b!2256261 (= lt!838720 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!750 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2256262 () Bool)

(declare-fun e!1444297 () Bool)

(declare-fun tp!713152 () Bool)

(assert (=> b!2256262 (= e!1444297 (and tp_is_empty!10419 tp!713152))))

(declare-fun b!2256263 () Bool)

(declare-fun e!1444292 () Bool)

(assert (=> b!2256263 (= e!1444292 (= (rule!6557 (head!4824 tokens!456)) r!2363))))

(declare-fun b!2256264 () Bool)

(declare-fun matchR!2860 (Regex!6599 List!26860) Bool)

(declare-fun list!10297 (BalanceConc!17028) List!26860)

(assert (=> b!2256264 (= e!1444288 (not (matchR!2860 (regex!4251 r!2363) (list!10297 (charsOf!2639 (head!4824 tokens!456))))))))

(declare-fun b!2256265 () Bool)

(declare-fun e!1444278 () Bool)

(assert (=> b!2256265 (= e!1444275 e!1444278)))

(declare-fun res!964470 () Bool)

(assert (=> b!2256265 (=> (not res!964470) (not e!1444278))))

(declare-datatypes ((IArray!17307 0))(
  ( (IArray!17308 (innerList!8711 List!26862)) )
))
(declare-datatypes ((Conc!8651 0))(
  ( (Node!8651 (left!20329 Conc!8651) (right!20659 Conc!8651) (csize!17532 Int) (cheight!8862 Int)) (Leaf!12762 (xs!11593 IArray!17307) (csize!17533 Int)) (Empty!8651) )
))
(declare-datatypes ((BalanceConc!17030 0))(
  ( (BalanceConc!17031 (c!358586 Conc!8651)) )
))
(declare-datatypes ((tuple2!26318 0))(
  ( (tuple2!26319 (_1!15669 BalanceConc!17030) (_2!15669 BalanceConc!17028)) )
))
(declare-fun lt!838724 () tuple2!26318)

(declare-fun suffix!886 () List!26860)

(declare-datatypes ((tuple2!26320 0))(
  ( (tuple2!26321 (_1!15670 List!26862) (_2!15670 List!26860)) )
))
(declare-fun list!10298 (BalanceConc!17030) List!26862)

(assert (=> b!2256265 (= res!964470 (= (tuple2!26321 (list!10298 (_1!15669 lt!838724)) (list!10297 (_2!15669 lt!838724))) (tuple2!26321 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26860)

(declare-fun lex!1687 (LexerInterface!3848 List!26861 BalanceConc!17028) tuple2!26318)

(declare-fun seqFromList!2955 (List!26860) BalanceConc!17028)

(assert (=> b!2256265 (= lt!838724 (lex!1687 thiss!16613 rules!1750 (seqFromList!2955 input!1722)))))

(declare-fun b!2256266 () Bool)

(declare-fun e!1444281 () Bool)

(declare-fun e!1444290 () Bool)

(assert (=> b!2256266 (= e!1444281 e!1444290)))

(declare-fun res!964476 () Bool)

(assert (=> b!2256266 (=> res!964476 e!1444290)))

(get-info :version)

(assert (=> b!2256266 (= res!964476 (not ((_ is Nil!26768) tokens!456)))))

(declare-fun lt!838722 () Unit!39682)

(declare-fun e!1444282 () Unit!39682)

(assert (=> b!2256266 (= lt!838722 e!1444282)))

(declare-fun c!358583 () Bool)

(declare-fun lt!838719 () Int)

(declare-fun lt!838723 () Int)

(assert (=> b!2256266 (= c!358583 (= lt!838719 lt!838723))))

(declare-fun tp!713156 () Bool)

(declare-fun b!2256267 () Bool)

(declare-fun e!1444287 () Bool)

(declare-fun e!1444298 () Bool)

(assert (=> b!2256267 (= e!1444298 (and tp!713156 (inv!36296 (tag!4741 r!2363)) (inv!36299 (transformation!4251 r!2363)) e!1444287))))

(declare-fun b!2256268 () Bool)

(declare-fun res!964475 () Bool)

(assert (=> b!2256268 (=> (not res!964475) (not e!1444300))))

(assert (=> b!2256268 (= res!964475 e!1444292)))

(declare-fun res!964462 () Bool)

(assert (=> b!2256268 (=> res!964462 e!1444292)))

(assert (=> b!2256268 (= res!964462 lt!838726)))

(declare-fun b!2256269 () Bool)

(declare-fun res!964466 () Bool)

(assert (=> b!2256269 (=> (not res!964466) (not e!1444275))))

(declare-fun otherR!12 () Rule!8302)

(declare-fun contains!4603 (List!26861 Rule!8302) Bool)

(assert (=> b!2256269 (= res!964466 (contains!4603 rules!1750 otherR!12))))

(declare-fun b!2256270 () Bool)

(declare-fun res!964468 () Bool)

(assert (=> b!2256270 (=> res!964468 e!1444290)))

(declare-fun rulesValidInductive!1483 (LexerInterface!3848 List!26861) Bool)

(assert (=> b!2256270 (= res!964468 (not (rulesValidInductive!1483 thiss!16613 rules!1750)))))

(declare-fun e!1444277 () Bool)

(declare-fun e!1444273 () Bool)

(declare-fun tp!713140 () Bool)

(declare-fun b!2256271 () Bool)

(assert (=> b!2256271 (= e!1444273 (and tp!713140 (inv!36296 (tag!4741 (h!32168 rules!1750))) (inv!36299 (transformation!4251 (h!32168 rules!1750))) e!1444277))))

(declare-fun b!2256272 () Bool)

(declare-fun e!1444295 () Bool)

(declare-fun tp!713148 () Bool)

(assert (=> b!2256272 (= e!1444295 (and tp_is_empty!10419 tp!713148))))

(declare-fun e!1444291 () Bool)

(declare-fun b!2256273 () Bool)

(declare-fun tp!713157 () Bool)

(assert (=> b!2256273 (= e!1444291 (and tp!713157 (inv!36296 (tag!4741 otherR!12)) (inv!36299 (transformation!4251 otherR!12)) e!1444279))))

(assert (=> b!2256274 (= e!1444287 (and tp!713147 tp!713142))))

(declare-fun tp!713150 () Bool)

(declare-fun e!1444289 () Bool)

(declare-fun e!1444276 () Bool)

(declare-fun b!2256275 () Bool)

(declare-fun inv!36300 (Token!7980) Bool)

(assert (=> b!2256275 (= e!1444276 (and (inv!36300 (h!32169 tokens!456)) e!1444289 tp!713150))))

(declare-fun b!2256276 () Bool)

(declare-fun res!964467 () Bool)

(assert (=> b!2256276 (=> (not res!964467) (not e!1444300))))

(assert (=> b!2256276 (= res!964467 (not (= r!2363 otherR!12)))))

(declare-fun b!2256277 () Bool)

(declare-fun Unit!39684 () Unit!39682)

(assert (=> b!2256277 (= e!1444282 Unit!39684)))

(declare-fun lt!838721 () Unit!39682)

(declare-fun lemmaSameIndexThenSameElement!118 (List!26861 Rule!8302 Rule!8302) Unit!39682)

(assert (=> b!2256277 (= lt!838721 (lemmaSameIndexThenSameElement!118 rules!1750 r!2363 otherR!12))))

(assert (=> b!2256277 false))

(assert (=> b!2256278 (= e!1444277 (and tp!713146 tp!713155))))

(declare-fun b!2256279 () Bool)

(assert (=> b!2256279 (= e!1444283 e!1444281)))

(declare-fun res!964464 () Bool)

(assert (=> b!2256279 (=> res!964464 e!1444281)))

(assert (=> b!2256279 (= res!964464 (> lt!838719 lt!838723))))

(declare-fun getIndex!272 (List!26861 Rule!8302) Int)

(assert (=> b!2256279 (= lt!838723 (getIndex!272 rules!1750 otherR!12))))

(assert (=> b!2256279 (= lt!838719 (getIndex!272 rules!1750 r!2363))))

(assert (=> b!2256279 (ruleValid!1343 thiss!16613 otherR!12)))

(declare-fun lt!838725 () Unit!39682)

(assert (=> b!2256279 (= lt!838725 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!750 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2256280 () Bool)

(declare-fun res!964463 () Bool)

(assert (=> b!2256280 (=> (not res!964463) (not e!1444300))))

(declare-fun isPrefix!2241 (List!26860 List!26860) Bool)

(assert (=> b!2256280 (= res!964463 (isPrefix!2241 otherP!12 input!1722))))

(declare-fun b!2256281 () Bool)

(declare-fun res!964461 () Bool)

(assert (=> b!2256281 (=> (not res!964461) (not e!1444275))))

(assert (=> b!2256281 (= res!964461 (contains!4603 rules!1750 r!2363))))

(declare-fun b!2256282 () Bool)

(declare-fun tp!713143 () Bool)

(declare-fun inv!21 (TokenValue!4413) Bool)

(assert (=> b!2256282 (= e!1444289 (and (inv!21 (value!134973 (h!32169 tokens!456))) e!1444285 tp!713143))))

(declare-fun b!2256283 () Bool)

(assert (=> b!2256283 (= e!1444290 true)))

(declare-datatypes ((tuple2!26322 0))(
  ( (tuple2!26323 (_1!15671 Token!7980) (_2!15671 List!26860)) )
))
(declare-datatypes ((Option!5227 0))(
  ( (None!5226) (Some!5226 (v!30252 tuple2!26322)) )
))
(declare-fun lt!838718 () Option!5227)

(declare-fun maxPrefix!2136 (LexerInterface!3848 List!26861 List!26860) Option!5227)

(assert (=> b!2256283 (= lt!838718 (maxPrefix!2136 thiss!16613 rules!1750 input!1722))))

(assert (=> b!2256284 (= e!1444299 (and tp!713141 tp!713145))))

(declare-fun b!2256285 () Bool)

(declare-fun e!1444294 () Bool)

(declare-fun tp!713154 () Bool)

(assert (=> b!2256285 (= e!1444294 (and e!1444273 tp!713154))))

(declare-fun b!2256286 () Bool)

(declare-fun Unit!39685 () Unit!39682)

(assert (=> b!2256286 (= e!1444282 Unit!39685)))

(declare-fun res!964460 () Bool)

(assert (=> start!220180 (=> (not res!964460) (not e!1444275))))

(assert (=> start!220180 (= res!964460 ((_ is Lexer!3846) thiss!16613))))

(assert (=> start!220180 e!1444275))

(assert (=> start!220180 true))

(assert (=> start!220180 e!1444286))

(assert (=> start!220180 e!1444291))

(assert (=> start!220180 e!1444295))

(assert (=> start!220180 e!1444297))

(assert (=> start!220180 e!1444294))

(assert (=> start!220180 e!1444298))

(assert (=> start!220180 e!1444276))

(declare-fun b!2256260 () Bool)

(assert (=> b!2256260 (= e!1444278 e!1444300)))

(declare-fun res!964465 () Bool)

(assert (=> b!2256260 (=> (not res!964465) (not e!1444300))))

(assert (=> b!2256260 (= res!964465 e!1444274)))

(declare-fun res!964474 () Bool)

(assert (=> b!2256260 (=> res!964474 e!1444274)))

(assert (=> b!2256260 (= res!964474 lt!838726)))

(declare-fun isEmpty!15110 (List!26862) Bool)

(assert (=> b!2256260 (= lt!838726 (isEmpty!15110 tokens!456))))

(assert (= (and start!220180 res!964460) b!2256255))

(assert (= (and b!2256255 res!964469) b!2256254))

(assert (= (and b!2256254 res!964471) b!2256281))

(assert (= (and b!2256281 res!964461) b!2256269))

(assert (= (and b!2256269 res!964466) b!2256265))

(assert (= (and b!2256265 res!964470) b!2256260))

(assert (= (and b!2256260 (not res!964474)) b!2256257))

(assert (= (and b!2256260 res!964465) b!2256268))

(assert (= (and b!2256268 (not res!964462)) b!2256263))

(assert (= (and b!2256268 res!964475) b!2256280))

(assert (= (and b!2256280 res!964463) b!2256276))

(assert (= (and b!2256276 res!964467) b!2256261))

(assert (= (and b!2256261 res!964473) b!2256264))

(assert (= (and b!2256261 (not res!964472)) b!2256279))

(assert (= (and b!2256279 (not res!964464)) b!2256266))

(assert (= (and b!2256266 c!358583) b!2256277))

(assert (= (and b!2256266 (not c!358583)) b!2256286))

(assert (= (and b!2256266 (not res!964476)) b!2256270))

(assert (= (and b!2256270 (not res!964468)) b!2256283))

(assert (= (and start!220180 ((_ is Cons!26766) input!1722)) b!2256256))

(assert (= b!2256273 b!2256259))

(assert (= start!220180 b!2256273))

(assert (= (and start!220180 ((_ is Cons!26766) suffix!886)) b!2256272))

(assert (= (and start!220180 ((_ is Cons!26766) otherP!12)) b!2256262))

(assert (= b!2256271 b!2256278))

(assert (= b!2256285 b!2256271))

(assert (= (and start!220180 ((_ is Cons!26767) rules!1750)) b!2256285))

(assert (= b!2256267 b!2256274))

(assert (= start!220180 b!2256267))

(assert (= b!2256258 b!2256284))

(assert (= b!2256282 b!2256258))

(assert (= b!2256275 b!2256282))

(assert (= (and start!220180 ((_ is Cons!26768) tokens!456)) b!2256275))

(declare-fun m!2686693 () Bool)

(assert (=> b!2256273 m!2686693))

(declare-fun m!2686695 () Bool)

(assert (=> b!2256273 m!2686695))

(declare-fun m!2686697 () Bool)

(assert (=> b!2256257 m!2686697))

(assert (=> b!2256257 m!2686697))

(declare-fun m!2686699 () Bool)

(assert (=> b!2256257 m!2686699))

(assert (=> b!2256257 m!2686699))

(declare-fun m!2686701 () Bool)

(assert (=> b!2256257 m!2686701))

(declare-fun m!2686703 () Bool)

(assert (=> b!2256257 m!2686703))

(declare-fun m!2686705 () Bool)

(assert (=> b!2256267 m!2686705))

(declare-fun m!2686707 () Bool)

(assert (=> b!2256267 m!2686707))

(declare-fun m!2686709 () Bool)

(assert (=> b!2256265 m!2686709))

(declare-fun m!2686711 () Bool)

(assert (=> b!2256265 m!2686711))

(declare-fun m!2686713 () Bool)

(assert (=> b!2256265 m!2686713))

(assert (=> b!2256265 m!2686713))

(declare-fun m!2686715 () Bool)

(assert (=> b!2256265 m!2686715))

(declare-fun m!2686717 () Bool)

(assert (=> b!2256254 m!2686717))

(declare-fun m!2686719 () Bool)

(assert (=> b!2256269 m!2686719))

(declare-fun m!2686721 () Bool)

(assert (=> b!2256270 m!2686721))

(declare-fun m!2686723 () Bool)

(assert (=> b!2256279 m!2686723))

(declare-fun m!2686725 () Bool)

(assert (=> b!2256279 m!2686725))

(declare-fun m!2686727 () Bool)

(assert (=> b!2256279 m!2686727))

(declare-fun m!2686729 () Bool)

(assert (=> b!2256279 m!2686729))

(declare-fun m!2686731 () Bool)

(assert (=> b!2256258 m!2686731))

(declare-fun m!2686733 () Bool)

(assert (=> b!2256258 m!2686733))

(declare-fun m!2686735 () Bool)

(assert (=> b!2256280 m!2686735))

(declare-fun m!2686737 () Bool)

(assert (=> b!2256261 m!2686737))

(declare-fun m!2686739 () Bool)

(assert (=> b!2256261 m!2686739))

(assert (=> b!2256264 m!2686697))

(assert (=> b!2256264 m!2686697))

(assert (=> b!2256264 m!2686699))

(assert (=> b!2256264 m!2686699))

(declare-fun m!2686741 () Bool)

(assert (=> b!2256264 m!2686741))

(assert (=> b!2256264 m!2686741))

(declare-fun m!2686743 () Bool)

(assert (=> b!2256264 m!2686743))

(assert (=> b!2256263 m!2686697))

(declare-fun m!2686745 () Bool)

(assert (=> b!2256275 m!2686745))

(declare-fun m!2686747 () Bool)

(assert (=> b!2256271 m!2686747))

(declare-fun m!2686749 () Bool)

(assert (=> b!2256271 m!2686749))

(declare-fun m!2686751 () Bool)

(assert (=> b!2256281 m!2686751))

(declare-fun m!2686753 () Bool)

(assert (=> b!2256282 m!2686753))

(declare-fun m!2686755 () Bool)

(assert (=> b!2256283 m!2686755))

(declare-fun m!2686757 () Bool)

(assert (=> b!2256260 m!2686757))

(declare-fun m!2686759 () Bool)

(assert (=> b!2256277 m!2686759))

(declare-fun m!2686761 () Bool)

(assert (=> b!2256255 m!2686761))

(check-sat (not b!2256273) (not b!2256282) (not b!2256271) (not b!2256264) (not b!2256260) (not b!2256279) (not b!2256267) (not b_next!67091) (not b!2256258) (not b!2256272) (not b!2256269) (not b!2256261) (not b!2256255) b_and!177083 (not b!2256275) (not b!2256281) (not b_next!67093) b_and!177079 (not b!2256270) (not b_next!67085) (not b_next!67087) (not b!2256257) (not b!2256262) (not b!2256263) (not b!2256285) b_and!177081 b_and!177077 (not b!2256265) (not b!2256277) (not b_next!67089) (not b!2256280) (not b_next!67099) (not b!2256254) b_and!177073 (not b!2256256) (not b!2256283) b_and!177087 (not b_next!67095) (not b_next!67097) tp_is_empty!10419 b_and!177085 b_and!177075)
(check-sat b_and!177083 (not b_next!67093) b_and!177079 (not b_next!67089) (not b_next!67099) b_and!177073 (not b_next!67091) b_and!177087 (not b_next!67085) (not b_next!67087) b_and!177081 b_and!177077 (not b_next!67095) (not b_next!67097) b_and!177085 b_and!177075)
