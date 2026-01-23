; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!225736 () Bool)

(assert start!225736)

(declare-fun b!2297379 () Bool)

(declare-fun b_free!69245 () Bool)

(declare-fun b_next!69949 () Bool)

(assert (=> b!2297379 (= b_free!69245 (not b_next!69949))))

(declare-fun tp!728739 () Bool)

(declare-fun b_and!182809 () Bool)

(assert (=> b!2297379 (= tp!728739 b_and!182809)))

(declare-fun b_free!69247 () Bool)

(declare-fun b_next!69951 () Bool)

(assert (=> b!2297379 (= b_free!69247 (not b_next!69951))))

(declare-fun tp!728727 () Bool)

(declare-fun b_and!182811 () Bool)

(assert (=> b!2297379 (= tp!728727 b_and!182811)))

(declare-fun b!2297359 () Bool)

(declare-fun b_free!69249 () Bool)

(declare-fun b_next!69953 () Bool)

(assert (=> b!2297359 (= b_free!69249 (not b_next!69953))))

(declare-fun tp!728725 () Bool)

(declare-fun b_and!182813 () Bool)

(assert (=> b!2297359 (= tp!728725 b_and!182813)))

(declare-fun b_free!69251 () Bool)

(declare-fun b_next!69955 () Bool)

(assert (=> b!2297359 (= b_free!69251 (not b_next!69955))))

(declare-fun tp!728734 () Bool)

(declare-fun b_and!182815 () Bool)

(assert (=> b!2297359 (= tp!728734 b_and!182815)))

(declare-fun b!2297386 () Bool)

(declare-fun b_free!69253 () Bool)

(declare-fun b_next!69957 () Bool)

(assert (=> b!2297386 (= b_free!69253 (not b_next!69957))))

(declare-fun tp!728731 () Bool)

(declare-fun b_and!182817 () Bool)

(assert (=> b!2297386 (= tp!728731 b_and!182817)))

(declare-fun b_free!69255 () Bool)

(declare-fun b_next!69959 () Bool)

(assert (=> b!2297386 (= b_free!69255 (not b_next!69959))))

(declare-fun tp!728732 () Bool)

(declare-fun b_and!182819 () Bool)

(assert (=> b!2297386 (= tp!728732 b_and!182819)))

(declare-fun b!2297367 () Bool)

(declare-fun b_free!69257 () Bool)

(declare-fun b_next!69961 () Bool)

(assert (=> b!2297367 (= b_free!69257 (not b_next!69961))))

(declare-fun tp!728728 () Bool)

(declare-fun b_and!182821 () Bool)

(assert (=> b!2297367 (= tp!728728 b_and!182821)))

(declare-fun b_free!69259 () Bool)

(declare-fun b_next!69963 () Bool)

(assert (=> b!2297367 (= b_free!69259 (not b_next!69963))))

(declare-fun tp!728726 () Bool)

(declare-fun b_and!182823 () Bool)

(assert (=> b!2297367 (= tp!728726 b_and!182823)))

(declare-fun e!1472251 () Bool)

(assert (=> b!2297359 (= e!1472251 (and tp!728725 tp!728734))))

(declare-fun b!2297360 () Bool)

(declare-datatypes ((Unit!40251 0))(
  ( (Unit!40252) )
))
(declare-fun e!1472269 () Unit!40251)

(declare-fun Unit!40253 () Unit!40251)

(assert (=> b!2297360 (= e!1472269 Unit!40253)))

(declare-fun lt!852268 () Unit!40251)

(declare-datatypes ((List!27451 0))(
  ( (Nil!27357) (Cons!27357 (h!32758 (_ BitVec 16)) (t!205449 List!27451)) )
))
(declare-datatypes ((TokenValue!4545 0))(
  ( (FloatLiteralValue!9090 (text!32260 List!27451)) (TokenValueExt!4544 (__x!18150 Int)) (Broken!22725 (value!138709 List!27451)) (Object!4638) (End!4545) (Def!4545) (Underscore!4545) (Match!4545) (Else!4545) (Error!4545) (Case!4545) (If!4545) (Extends!4545) (Abstract!4545) (Class!4545) (Val!4545) (DelimiterValue!9090 (del!4605 List!27451)) (KeywordValue!4551 (value!138710 List!27451)) (CommentValue!9090 (value!138711 List!27451)) (WhitespaceValue!9090 (value!138712 List!27451)) (IndentationValue!4545 (value!138713 List!27451)) (String!29828) (Int32!4545) (Broken!22726 (value!138714 List!27451)) (Boolean!4546) (Unit!40254) (OperatorValue!4548 (op!4605 List!27451)) (IdentifierValue!9090 (value!138715 List!27451)) (IdentifierValue!9091 (value!138716 List!27451)) (WhitespaceValue!9091 (value!138717 List!27451)) (True!9090) (False!9090) (Broken!22727 (value!138718 List!27451)) (Broken!22728 (value!138719 List!27451)) (True!9091) (RightBrace!4545) (RightBracket!4545) (Colon!4545) (Null!4545) (Comma!4545) (LeftBracket!4545) (False!9091) (LeftBrace!4545) (ImaginaryLiteralValue!4545 (text!32261 List!27451)) (StringLiteralValue!13635 (value!138720 List!27451)) (EOFValue!4545 (value!138721 List!27451)) (IdentValue!4545 (value!138722 List!27451)) (DelimiterValue!9091 (value!138723 List!27451)) (DedentValue!4545 (value!138724 List!27451)) (NewLineValue!4545 (value!138725 List!27451)) (IntegerValue!13635 (value!138726 (_ BitVec 32)) (text!32262 List!27451)) (IntegerValue!13636 (value!138727 Int) (text!32263 List!27451)) (Times!4545) (Or!4545) (Equal!4545) (Minus!4545) (Broken!22729 (value!138728 List!27451)) (And!4545) (Div!4545) (LessEqual!4545) (Mod!4545) (Concat!11276) (Not!4545) (Plus!4545) (SpaceValue!4545 (value!138729 List!27451)) (IntegerValue!13637 (value!138730 Int) (text!32264 List!27451)) (StringLiteralValue!13636 (text!32265 List!27451)) (FloatLiteralValue!9091 (text!32266 List!27451)) (BytesLiteralValue!4545 (value!138731 List!27451)) (CommentValue!9091 (value!138732 List!27451)) (StringLiteralValue!13637 (value!138733 List!27451)) (ErrorTokenValue!4545 (msg!4606 List!27451)) )
))
(declare-datatypes ((C!13608 0))(
  ( (C!13609 (val!7852 Int)) )
))
(declare-datatypes ((List!27452 0))(
  ( (Nil!27358) (Cons!27358 (h!32759 C!13608) (t!205450 List!27452)) )
))
(declare-datatypes ((IArray!17833 0))(
  ( (IArray!17834 (innerList!8974 List!27452)) )
))
(declare-datatypes ((Conc!8914 0))(
  ( (Node!8914 (left!20734 Conc!8914) (right!21064 Conc!8914) (csize!18058 Int) (cheight!9125 Int)) (Leaf!13091 (xs!11856 IArray!17833) (csize!18059 Int)) (Empty!8914) )
))
(declare-datatypes ((BalanceConc!17556 0))(
  ( (BalanceConc!17557 (c!364220 Conc!8914)) )
))
(declare-datatypes ((Regex!6731 0))(
  ( (ElementMatch!6731 (c!364221 C!13608)) (Concat!11277 (regOne!13974 Regex!6731) (regTwo!13974 Regex!6731)) (EmptyExpr!6731) (Star!6731 (reg!7060 Regex!6731)) (EmptyLang!6731) (Union!6731 (regOne!13975 Regex!6731) (regTwo!13975 Regex!6731)) )
))
(declare-datatypes ((String!29829 0))(
  ( (String!29830 (value!138734 String)) )
))
(declare-datatypes ((TokenValueInjection!8630 0))(
  ( (TokenValueInjection!8631 (toValue!6185 Int) (toChars!6044 Int)) )
))
(declare-datatypes ((Rule!8566 0))(
  ( (Rule!8567 (regex!4383 Regex!6731) (tag!4873 String!29829) (isSeparator!4383 Bool) (transformation!4383 TokenValueInjection!8630)) )
))
(declare-fun r!2363 () Rule!8566)

(declare-fun otherR!12 () Rule!8566)

(declare-datatypes ((List!27453 0))(
  ( (Nil!27359) (Cons!27359 (h!32760 Rule!8566) (t!205451 List!27453)) )
))
(declare-fun rules!1750 () List!27453)

(declare-fun lemmaSameIndexThenSameElement!176 (List!27453 Rule!8566 Rule!8566) Unit!40251)

(assert (=> b!2297360 (= lt!852268 (lemmaSameIndexThenSameElement!176 rules!1750 r!2363 otherR!12))))

(assert (=> b!2297360 false))

(declare-fun b!2297361 () Bool)

(declare-fun e!1472262 () Bool)

(declare-fun e!1472266 () Bool)

(assert (=> b!2297361 (= e!1472262 e!1472266)))

(declare-fun res!982264 () Bool)

(assert (=> b!2297361 (=> (not res!982264) (not e!1472266))))

(declare-datatypes ((Token!8244 0))(
  ( (Token!8245 (value!138735 TokenValue!4545) (rule!6725 Rule!8566) (size!21560 Int) (originalCharacters!5153 List!27452)) )
))
(declare-datatypes ((List!27454 0))(
  ( (Nil!27360) (Cons!27360 (h!32761 Token!8244) (t!205452 List!27454)) )
))
(declare-fun tokens!456 () List!27454)

(declare-fun suffix!886 () List!27452)

(declare-datatypes ((IArray!17835 0))(
  ( (IArray!17836 (innerList!8975 List!27454)) )
))
(declare-datatypes ((Conc!8915 0))(
  ( (Node!8915 (left!20735 Conc!8915) (right!21065 Conc!8915) (csize!18060 Int) (cheight!9126 Int)) (Leaf!13092 (xs!11857 IArray!17835) (csize!18061 Int)) (Empty!8915) )
))
(declare-datatypes ((BalanceConc!17558 0))(
  ( (BalanceConc!17559 (c!364222 Conc!8915)) )
))
(declare-datatypes ((tuple2!27214 0))(
  ( (tuple2!27215 (_1!16117 BalanceConc!17558) (_2!16117 BalanceConc!17556)) )
))
(declare-fun lt!852274 () tuple2!27214)

(declare-datatypes ((tuple2!27216 0))(
  ( (tuple2!27217 (_1!16118 List!27454) (_2!16118 List!27452)) )
))
(declare-fun list!10748 (BalanceConc!17558) List!27454)

(declare-fun list!10749 (BalanceConc!17556) List!27452)

(assert (=> b!2297361 (= res!982264 (= (tuple2!27217 (list!10748 (_1!16117 lt!852274)) (list!10749 (_2!16117 lt!852274))) (tuple2!27217 tokens!456 suffix!886)))))

(declare-datatypes ((LexerInterface!3980 0))(
  ( (LexerInterfaceExt!3977 (__x!18151 Int)) (Lexer!3978) )
))
(declare-fun thiss!16613 () LexerInterface!3980)

(declare-fun input!1722 () List!27452)

(declare-fun lex!1819 (LexerInterface!3980 List!27453 BalanceConc!17556) tuple2!27214)

(declare-fun seqFromList!3087 (List!27452) BalanceConc!17556)

(assert (=> b!2297361 (= lt!852274 (lex!1819 thiss!16613 rules!1750 (seqFromList!3087 input!1722)))))

(declare-fun b!2297362 () Bool)

(declare-fun e!1472263 () Bool)

(declare-fun tp!728729 () Bool)

(declare-fun e!1472250 () Bool)

(declare-fun inv!36975 (Token!8244) Bool)

(assert (=> b!2297362 (= e!1472263 (and (inv!36975 (h!32761 tokens!456)) e!1472250 tp!728729))))

(declare-fun b!2297363 () Bool)

(declare-fun e!1472259 () Bool)

(declare-fun e!1472249 () Bool)

(declare-fun tp!728722 () Bool)

(assert (=> b!2297363 (= e!1472259 (and e!1472249 tp!728722))))

(declare-fun b!2297364 () Bool)

(declare-fun res!982266 () Bool)

(declare-fun e!1472261 () Bool)

(assert (=> b!2297364 (=> (not res!982266) (not e!1472261))))

(assert (=> b!2297364 (= res!982266 (not (= r!2363 otherR!12)))))

(declare-fun b!2297365 () Bool)

(declare-fun e!1472271 () Bool)

(declare-fun lt!852265 () List!27452)

(declare-fun isPrefix!2373 (List!27452 List!27452) Bool)

(assert (=> b!2297365 (= e!1472271 (isPrefix!2373 lt!852265 input!1722))))

(declare-fun lt!852267 () List!27452)

(declare-fun getSuffix!1152 (List!27452 List!27452) List!27452)

(assert (=> b!2297365 (= lt!852267 (getSuffix!1152 input!1722 lt!852265))))

(declare-datatypes ((tuple2!27218 0))(
  ( (tuple2!27219 (_1!16119 Token!8244) (_2!16119 List!27452)) )
))
(declare-fun lt!852272 () tuple2!27218)

(declare-fun ++!6689 (List!27452 List!27452) List!27452)

(assert (=> b!2297365 (isPrefix!2373 lt!852265 (++!6689 lt!852265 (_2!16119 lt!852272)))))

(declare-fun lt!852273 () Unit!40251)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1566 (List!27452 List!27452) Unit!40251)

(assert (=> b!2297365 (= lt!852273 (lemmaConcatTwoListThenFirstIsPrefix!1566 lt!852265 (_2!16119 lt!852272)))))

(declare-fun charsOf!2771 (Token!8244) BalanceConc!17556)

(assert (=> b!2297365 (= lt!852265 (list!10749 (charsOf!2771 (h!32761 tokens!456))))))

(declare-datatypes ((Option!5375 0))(
  ( (None!5374) (Some!5374 (v!30464 tuple2!27218)) )
))
(declare-fun get!8246 (Option!5375) tuple2!27218)

(declare-fun maxPrefix!2236 (LexerInterface!3980 List!27453 List!27452) Option!5375)

(assert (=> b!2297365 (= lt!852272 (get!8246 (maxPrefix!2236 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2297366 () Bool)

(declare-fun res!982265 () Bool)

(assert (=> b!2297366 (=> (not res!982265) (not e!1472262))))

(declare-fun rulesInvariant!3482 (LexerInterface!3980 List!27453) Bool)

(assert (=> b!2297366 (= res!982265 (rulesInvariant!3482 thiss!16613 rules!1750))))

(declare-fun e!1472264 () Bool)

(assert (=> b!2297367 (= e!1472264 (and tp!728728 tp!728726))))

(declare-fun b!2297368 () Bool)

(declare-fun e!1472268 () Bool)

(declare-fun matchR!2988 (Regex!6731 List!27452) Bool)

(declare-fun head!5020 (List!27454) Token!8244)

(assert (=> b!2297368 (= e!1472268 (not (matchR!2988 (regex!4383 r!2363) (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))

(declare-fun b!2297369 () Bool)

(declare-fun res!982276 () Bool)

(assert (=> b!2297369 (=> (not res!982276) (not e!1472261))))

(declare-fun e!1472253 () Bool)

(assert (=> b!2297369 (= res!982276 e!1472253)))

(declare-fun res!982270 () Bool)

(assert (=> b!2297369 (=> res!982270 e!1472253)))

(declare-fun lt!852271 () Bool)

(assert (=> b!2297369 (= res!982270 lt!852271)))

(declare-fun b!2297370 () Bool)

(declare-fun e!1472258 () Bool)

(declare-fun tp_is_empty!10683 () Bool)

(declare-fun tp!728733 () Bool)

(assert (=> b!2297370 (= e!1472258 (and tp_is_empty!10683 tp!728733))))

(declare-fun e!1472246 () Bool)

(declare-fun b!2297371 () Bool)

(declare-fun e!1472244 () Bool)

(declare-fun tp!728738 () Bool)

(declare-fun inv!36972 (String!29829) Bool)

(declare-fun inv!36976 (TokenValueInjection!8630) Bool)

(assert (=> b!2297371 (= e!1472246 (and tp!728738 (inv!36972 (tag!4873 otherR!12)) (inv!36976 (transformation!4383 otherR!12)) e!1472244))))

(declare-fun res!982273 () Bool)

(assert (=> start!225736 (=> (not res!982273) (not e!1472262))))

(get-info :version)

(assert (=> start!225736 (= res!982273 ((_ is Lexer!3978) thiss!16613))))

(assert (=> start!225736 e!1472262))

(assert (=> start!225736 true))

(assert (=> start!225736 e!1472258))

(assert (=> start!225736 e!1472246))

(declare-fun e!1472243 () Bool)

(assert (=> start!225736 e!1472243))

(declare-fun e!1472248 () Bool)

(assert (=> start!225736 e!1472248))

(assert (=> start!225736 e!1472259))

(declare-fun e!1472254 () Bool)

(assert (=> start!225736 e!1472254))

(assert (=> start!225736 e!1472263))

(declare-fun b!2297372 () Bool)

(declare-fun res!982268 () Bool)

(assert (=> b!2297372 (=> (not res!982268) (not e!1472262))))

(declare-fun isEmpty!15601 (List!27453) Bool)

(assert (=> b!2297372 (= res!982268 (not (isEmpty!15601 rules!1750)))))

(declare-fun b!2297373 () Bool)

(assert (=> b!2297373 (= e!1472253 (= (rule!6725 (head!5020 tokens!456)) r!2363))))

(declare-fun tp!728735 () Bool)

(declare-fun b!2297374 () Bool)

(assert (=> b!2297374 (= e!1472249 (and tp!728735 (inv!36972 (tag!4873 (h!32760 rules!1750))) (inv!36976 (transformation!4383 (h!32760 rules!1750))) e!1472264))))

(declare-fun b!2297375 () Bool)

(declare-fun e!1472257 () Bool)

(assert (=> b!2297375 (= e!1472261 (not e!1472257))))

(declare-fun res!982278 () Bool)

(assert (=> b!2297375 (=> res!982278 e!1472257)))

(assert (=> b!2297375 (= res!982278 e!1472268)))

(declare-fun res!982267 () Bool)

(assert (=> b!2297375 (=> (not res!982267) (not e!1472268))))

(assert (=> b!2297375 (= res!982267 (not lt!852271))))

(declare-fun ruleValid!1473 (LexerInterface!3980 Rule!8566) Bool)

(assert (=> b!2297375 (ruleValid!1473 thiss!16613 r!2363)))

(declare-fun lt!852269 () Unit!40251)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!878 (LexerInterface!3980 Rule!8566 List!27453) Unit!40251)

(assert (=> b!2297375 (= lt!852269 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!878 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1472252 () Bool)

(declare-fun tp!728737 () Bool)

(declare-fun e!1472265 () Bool)

(declare-fun b!2297376 () Bool)

(assert (=> b!2297376 (= e!1472252 (and tp!728737 (inv!36972 (tag!4873 (rule!6725 (h!32761 tokens!456)))) (inv!36976 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) e!1472265))))

(declare-fun b!2297377 () Bool)

(declare-fun tp!728736 () Bool)

(declare-fun inv!21 (TokenValue!4545) Bool)

(assert (=> b!2297377 (= e!1472250 (and (inv!21 (value!138735 (h!32761 tokens!456))) e!1472252 tp!728736))))

(declare-fun b!2297378 () Bool)

(declare-fun res!982263 () Bool)

(assert (=> b!2297378 (=> (not res!982263) (not e!1472262))))

(declare-fun contains!4765 (List!27453 Rule!8566) Bool)

(assert (=> b!2297378 (= res!982263 (contains!4765 rules!1750 otherR!12))))

(assert (=> b!2297379 (= e!1472244 (and tp!728739 tp!728727))))

(declare-fun b!2297380 () Bool)

(assert (=> b!2297380 (= e!1472266 e!1472261)))

(declare-fun res!982275 () Bool)

(assert (=> b!2297380 (=> (not res!982275) (not e!1472261))))

(declare-fun e!1472270 () Bool)

(assert (=> b!2297380 (= res!982275 e!1472270)))

(declare-fun res!982272 () Bool)

(assert (=> b!2297380 (=> res!982272 e!1472270)))

(assert (=> b!2297380 (= res!982272 lt!852271)))

(declare-fun isEmpty!15602 (List!27454) Bool)

(assert (=> b!2297380 (= lt!852271 (isEmpty!15602 tokens!456))))

(declare-fun b!2297381 () Bool)

(declare-fun Unit!40255 () Unit!40251)

(assert (=> b!2297381 (= e!1472269 Unit!40255)))

(declare-fun b!2297382 () Bool)

(declare-fun res!982269 () Bool)

(assert (=> b!2297382 (=> (not res!982269) (not e!1472262))))

(assert (=> b!2297382 (= res!982269 (contains!4765 rules!1750 r!2363))))

(declare-fun b!2297383 () Bool)

(declare-fun e!1472245 () Bool)

(assert (=> b!2297383 (= e!1472257 e!1472245)))

(declare-fun res!982274 () Bool)

(assert (=> b!2297383 (=> res!982274 e!1472245)))

(declare-fun lt!852270 () Int)

(declare-fun lt!852266 () Int)

(assert (=> b!2297383 (= res!982274 (> lt!852270 lt!852266))))

(declare-fun getIndex!396 (List!27453 Rule!8566) Int)

(assert (=> b!2297383 (= lt!852266 (getIndex!396 rules!1750 otherR!12))))

(assert (=> b!2297383 (= lt!852270 (getIndex!396 rules!1750 r!2363))))

(assert (=> b!2297383 (ruleValid!1473 thiss!16613 otherR!12)))

(declare-fun lt!852275 () Unit!40251)

(assert (=> b!2297383 (= lt!852275 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!878 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2297384 () Bool)

(declare-fun tp!728730 () Bool)

(assert (=> b!2297384 (= e!1472243 (and tp_is_empty!10683 tp!728730))))

(declare-fun b!2297385 () Bool)

(assert (=> b!2297385 (= e!1472245 e!1472271)))

(declare-fun res!982277 () Bool)

(assert (=> b!2297385 (=> res!982277 e!1472271)))

(assert (=> b!2297385 (= res!982277 ((_ is Nil!27360) tokens!456))))

(declare-fun lt!852276 () Unit!40251)

(assert (=> b!2297385 (= lt!852276 e!1472269)))

(declare-fun c!364219 () Bool)

(assert (=> b!2297385 (= c!364219 (= lt!852270 lt!852266))))

(assert (=> b!2297386 (= e!1472265 (and tp!728731 tp!728732))))

(declare-fun b!2297387 () Bool)

(declare-fun otherP!12 () List!27452)

(declare-fun size!21561 (BalanceConc!17556) Int)

(declare-fun size!21562 (List!27452) Int)

(assert (=> b!2297387 (= e!1472270 (<= (size!21561 (charsOf!2771 (head!5020 tokens!456))) (size!21562 otherP!12)))))

(declare-fun b!2297388 () Bool)

(declare-fun tp!728723 () Bool)

(assert (=> b!2297388 (= e!1472254 (and tp!728723 (inv!36972 (tag!4873 r!2363)) (inv!36976 (transformation!4383 r!2363)) e!1472251))))

(declare-fun b!2297389 () Bool)

(declare-fun tp!728724 () Bool)

(assert (=> b!2297389 (= e!1472248 (and tp_is_empty!10683 tp!728724))))

(declare-fun b!2297390 () Bool)

(declare-fun res!982271 () Bool)

(assert (=> b!2297390 (=> (not res!982271) (not e!1472261))))

(assert (=> b!2297390 (= res!982271 (isPrefix!2373 otherP!12 input!1722))))

(assert (= (and start!225736 res!982273) b!2297372))

(assert (= (and b!2297372 res!982268) b!2297366))

(assert (= (and b!2297366 res!982265) b!2297382))

(assert (= (and b!2297382 res!982269) b!2297378))

(assert (= (and b!2297378 res!982263) b!2297361))

(assert (= (and b!2297361 res!982264) b!2297380))

(assert (= (and b!2297380 (not res!982272)) b!2297387))

(assert (= (and b!2297380 res!982275) b!2297369))

(assert (= (and b!2297369 (not res!982270)) b!2297373))

(assert (= (and b!2297369 res!982276) b!2297390))

(assert (= (and b!2297390 res!982271) b!2297364))

(assert (= (and b!2297364 res!982266) b!2297375))

(assert (= (and b!2297375 res!982267) b!2297368))

(assert (= (and b!2297375 (not res!982278)) b!2297383))

(assert (= (and b!2297383 (not res!982274)) b!2297385))

(assert (= (and b!2297385 c!364219) b!2297360))

(assert (= (and b!2297385 (not c!364219)) b!2297381))

(assert (= (and b!2297385 (not res!982277)) b!2297365))

(assert (= (and start!225736 ((_ is Cons!27358) input!1722)) b!2297370))

(assert (= b!2297371 b!2297379))

(assert (= start!225736 b!2297371))

(assert (= (and start!225736 ((_ is Cons!27358) suffix!886)) b!2297384))

(assert (= (and start!225736 ((_ is Cons!27358) otherP!12)) b!2297389))

(assert (= b!2297374 b!2297367))

(assert (= b!2297363 b!2297374))

(assert (= (and start!225736 ((_ is Cons!27359) rules!1750)) b!2297363))

(assert (= b!2297388 b!2297359))

(assert (= start!225736 b!2297388))

(assert (= b!2297376 b!2297386))

(assert (= b!2297377 b!2297376))

(assert (= b!2297362 b!2297377))

(assert (= (and start!225736 ((_ is Cons!27360) tokens!456)) b!2297362))

(declare-fun m!2724663 () Bool)

(assert (=> b!2297380 m!2724663))

(declare-fun m!2724665 () Bool)

(assert (=> b!2297368 m!2724665))

(assert (=> b!2297368 m!2724665))

(declare-fun m!2724667 () Bool)

(assert (=> b!2297368 m!2724667))

(assert (=> b!2297368 m!2724667))

(declare-fun m!2724669 () Bool)

(assert (=> b!2297368 m!2724669))

(assert (=> b!2297368 m!2724669))

(declare-fun m!2724671 () Bool)

(assert (=> b!2297368 m!2724671))

(declare-fun m!2724673 () Bool)

(assert (=> b!2297377 m!2724673))

(declare-fun m!2724675 () Bool)

(assert (=> b!2297383 m!2724675))

(declare-fun m!2724677 () Bool)

(assert (=> b!2297383 m!2724677))

(declare-fun m!2724679 () Bool)

(assert (=> b!2297383 m!2724679))

(declare-fun m!2724681 () Bool)

(assert (=> b!2297383 m!2724681))

(declare-fun m!2724683 () Bool)

(assert (=> b!2297361 m!2724683))

(declare-fun m!2724685 () Bool)

(assert (=> b!2297361 m!2724685))

(declare-fun m!2724687 () Bool)

(assert (=> b!2297361 m!2724687))

(assert (=> b!2297361 m!2724687))

(declare-fun m!2724689 () Bool)

(assert (=> b!2297361 m!2724689))

(declare-fun m!2724691 () Bool)

(assert (=> b!2297375 m!2724691))

(declare-fun m!2724693 () Bool)

(assert (=> b!2297375 m!2724693))

(declare-fun m!2724695 () Bool)

(assert (=> b!2297374 m!2724695))

(declare-fun m!2724697 () Bool)

(assert (=> b!2297374 m!2724697))

(declare-fun m!2724699 () Bool)

(assert (=> b!2297378 m!2724699))

(declare-fun m!2724701 () Bool)

(assert (=> b!2297372 m!2724701))

(assert (=> b!2297373 m!2724665))

(declare-fun m!2724703 () Bool)

(assert (=> b!2297388 m!2724703))

(declare-fun m!2724705 () Bool)

(assert (=> b!2297388 m!2724705))

(declare-fun m!2724707 () Bool)

(assert (=> b!2297371 m!2724707))

(declare-fun m!2724709 () Bool)

(assert (=> b!2297371 m!2724709))

(assert (=> b!2297387 m!2724665))

(assert (=> b!2297387 m!2724665))

(assert (=> b!2297387 m!2724667))

(assert (=> b!2297387 m!2724667))

(declare-fun m!2724711 () Bool)

(assert (=> b!2297387 m!2724711))

(declare-fun m!2724713 () Bool)

(assert (=> b!2297387 m!2724713))

(declare-fun m!2724715 () Bool)

(assert (=> b!2297362 m!2724715))

(declare-fun m!2724717 () Bool)

(assert (=> b!2297382 m!2724717))

(declare-fun m!2724719 () Bool)

(assert (=> b!2297365 m!2724719))

(declare-fun m!2724721 () Bool)

(assert (=> b!2297365 m!2724721))

(declare-fun m!2724723 () Bool)

(assert (=> b!2297365 m!2724723))

(declare-fun m!2724725 () Bool)

(assert (=> b!2297365 m!2724725))

(declare-fun m!2724727 () Bool)

(assert (=> b!2297365 m!2724727))

(declare-fun m!2724729 () Bool)

(assert (=> b!2297365 m!2724729))

(assert (=> b!2297365 m!2724727))

(declare-fun m!2724731 () Bool)

(assert (=> b!2297365 m!2724731))

(assert (=> b!2297365 m!2724731))

(declare-fun m!2724733 () Bool)

(assert (=> b!2297365 m!2724733))

(assert (=> b!2297365 m!2724725))

(declare-fun m!2724735 () Bool)

(assert (=> b!2297365 m!2724735))

(declare-fun m!2724737 () Bool)

(assert (=> b!2297366 m!2724737))

(declare-fun m!2724739 () Bool)

(assert (=> b!2297376 m!2724739))

(declare-fun m!2724741 () Bool)

(assert (=> b!2297376 m!2724741))

(declare-fun m!2724743 () Bool)

(assert (=> b!2297390 m!2724743))

(declare-fun m!2724745 () Bool)

(assert (=> b!2297360 m!2724745))

(check-sat (not b!2297361) b_and!182823 (not b!2297389) (not b!2297366) (not b!2297380) b_and!182815 (not b!2297368) (not b_next!69957) (not b!2297390) (not b!2297365) b_and!182821 (not b!2297375) b_and!182819 (not b!2297360) (not b!2297373) (not b!2297371) (not b!2297370) (not b!2297377) (not b_next!69961) (not b!2297383) (not b!2297363) (not b_next!69953) (not b!2297388) (not b_next!69963) (not b_next!69955) (not b_next!69959) b_and!182817 b_and!182811 (not b!2297376) b_and!182813 (not b_next!69949) (not b!2297378) b_and!182809 (not b_next!69951) (not b!2297374) (not b!2297372) (not b!2297382) tp_is_empty!10683 (not b!2297384) (not b!2297362) (not b!2297387))
(check-sat (not b_next!69961) b_and!182823 b_and!182815 (not b_next!69957) b_and!182821 b_and!182819 (not b_next!69953) (not b_next!69963) (not b_next!69955) (not b_next!69959) b_and!182817 b_and!182811 b_and!182813 (not b_next!69949) b_and!182809 (not b_next!69951))
(get-model)

(declare-fun b!2297417 () Bool)

(declare-fun e!1472287 () Int)

(assert (=> b!2297417 (= e!1472287 0)))

(declare-fun d!679475 () Bool)

(declare-fun lt!852290 () Int)

(assert (=> d!679475 (>= lt!852290 0)))

(assert (=> d!679475 (= lt!852290 e!1472287)))

(declare-fun c!364233 () Bool)

(assert (=> d!679475 (= c!364233 (and ((_ is Cons!27359) rules!1750) (= (h!32760 rules!1750) otherR!12)))))

(assert (=> d!679475 (contains!4765 rules!1750 otherR!12)))

(assert (=> d!679475 (= (getIndex!396 rules!1750 otherR!12) lt!852290)))

(declare-fun b!2297419 () Bool)

(declare-fun e!1472286 () Int)

(assert (=> b!2297419 (= e!1472286 (+ 1 (getIndex!396 (t!205451 rules!1750) otherR!12)))))

(declare-fun b!2297418 () Bool)

(assert (=> b!2297418 (= e!1472287 e!1472286)))

(declare-fun c!364234 () Bool)

(assert (=> b!2297418 (= c!364234 (and ((_ is Cons!27359) rules!1750) (not (= (h!32760 rules!1750) otherR!12))))))

(declare-fun b!2297420 () Bool)

(assert (=> b!2297420 (= e!1472286 (- 1))))

(assert (= (and d!679475 c!364233) b!2297417))

(assert (= (and d!679475 (not c!364233)) b!2297418))

(assert (= (and b!2297418 c!364234) b!2297419))

(assert (= (and b!2297418 (not c!364234)) b!2297420))

(assert (=> d!679475 m!2724699))

(declare-fun m!2724773 () Bool)

(assert (=> b!2297419 m!2724773))

(assert (=> b!2297383 d!679475))

(declare-fun b!2297425 () Bool)

(declare-fun e!1472291 () Int)

(assert (=> b!2297425 (= e!1472291 0)))

(declare-fun d!679483 () Bool)

(declare-fun lt!852292 () Int)

(assert (=> d!679483 (>= lt!852292 0)))

(assert (=> d!679483 (= lt!852292 e!1472291)))

(declare-fun c!364235 () Bool)

(assert (=> d!679483 (= c!364235 (and ((_ is Cons!27359) rules!1750) (= (h!32760 rules!1750) r!2363)))))

(assert (=> d!679483 (contains!4765 rules!1750 r!2363)))

(assert (=> d!679483 (= (getIndex!396 rules!1750 r!2363) lt!852292)))

(declare-fun b!2297427 () Bool)

(declare-fun e!1472290 () Int)

(assert (=> b!2297427 (= e!1472290 (+ 1 (getIndex!396 (t!205451 rules!1750) r!2363)))))

(declare-fun b!2297426 () Bool)

(assert (=> b!2297426 (= e!1472291 e!1472290)))

(declare-fun c!364236 () Bool)

(assert (=> b!2297426 (= c!364236 (and ((_ is Cons!27359) rules!1750) (not (= (h!32760 rules!1750) r!2363))))))

(declare-fun b!2297428 () Bool)

(assert (=> b!2297428 (= e!1472290 (- 1))))

(assert (= (and d!679483 c!364235) b!2297425))

(assert (= (and d!679483 (not c!364235)) b!2297426))

(assert (= (and b!2297426 c!364236) b!2297427))

(assert (= (and b!2297426 (not c!364236)) b!2297428))

(assert (=> d!679483 m!2724717))

(declare-fun m!2724779 () Bool)

(assert (=> b!2297427 m!2724779))

(assert (=> b!2297383 d!679483))

(declare-fun d!679485 () Bool)

(declare-fun res!982302 () Bool)

(declare-fun e!1472295 () Bool)

(assert (=> d!679485 (=> (not res!982302) (not e!1472295))))

(declare-fun validRegex!2538 (Regex!6731) Bool)

(assert (=> d!679485 (= res!982302 (validRegex!2538 (regex!4383 otherR!12)))))

(assert (=> d!679485 (= (ruleValid!1473 thiss!16613 otherR!12) e!1472295)))

(declare-fun b!2297434 () Bool)

(declare-fun res!982303 () Bool)

(assert (=> b!2297434 (=> (not res!982303) (not e!1472295))))

(declare-fun nullable!1875 (Regex!6731) Bool)

(assert (=> b!2297434 (= res!982303 (not (nullable!1875 (regex!4383 otherR!12))))))

(declare-fun b!2297435 () Bool)

(assert (=> b!2297435 (= e!1472295 (not (= (tag!4873 otherR!12) (String!29830 ""))))))

(assert (= (and d!679485 res!982302) b!2297434))

(assert (= (and b!2297434 res!982303) b!2297435))

(declare-fun m!2724787 () Bool)

(assert (=> d!679485 m!2724787))

(declare-fun m!2724789 () Bool)

(assert (=> b!2297434 m!2724789))

(assert (=> b!2297383 d!679485))

(declare-fun d!679493 () Bool)

(assert (=> d!679493 (ruleValid!1473 thiss!16613 otherR!12)))

(declare-fun lt!852298 () Unit!40251)

(declare-fun choose!13412 (LexerInterface!3980 Rule!8566 List!27453) Unit!40251)

(assert (=> d!679493 (= lt!852298 (choose!13412 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!679493 (contains!4765 rules!1750 otherR!12)))

(assert (=> d!679493 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!878 thiss!16613 otherR!12 rules!1750) lt!852298)))

(declare-fun bs!457455 () Bool)

(assert (= bs!457455 d!679493))

(assert (=> bs!457455 m!2724679))

(declare-fun m!2724791 () Bool)

(assert (=> bs!457455 m!2724791))

(assert (=> bs!457455 m!2724699))

(assert (=> b!2297383 d!679493))

(declare-fun d!679495 () Bool)

(declare-fun res!982308 () Bool)

(declare-fun e!1472298 () Bool)

(assert (=> d!679495 (=> (not res!982308) (not e!1472298))))

(declare-fun isEmpty!15606 (List!27452) Bool)

(assert (=> d!679495 (= res!982308 (not (isEmpty!15606 (originalCharacters!5153 (h!32761 tokens!456)))))))

(assert (=> d!679495 (= (inv!36975 (h!32761 tokens!456)) e!1472298)))

(declare-fun b!2297440 () Bool)

(declare-fun res!982309 () Bool)

(assert (=> b!2297440 (=> (not res!982309) (not e!1472298))))

(declare-fun dynLambda!11885 (Int TokenValue!4545) BalanceConc!17556)

(assert (=> b!2297440 (= res!982309 (= (originalCharacters!5153 (h!32761 tokens!456)) (list!10749 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456))))))))

(declare-fun b!2297441 () Bool)

(assert (=> b!2297441 (= e!1472298 (= (size!21560 (h!32761 tokens!456)) (size!21562 (originalCharacters!5153 (h!32761 tokens!456)))))))

(assert (= (and d!679495 res!982308) b!2297440))

(assert (= (and b!2297440 res!982309) b!2297441))

(declare-fun b_lambda!73195 () Bool)

(assert (=> (not b_lambda!73195) (not b!2297440)))

(declare-fun tb!137239 () Bool)

(declare-fun t!205462 () Bool)

(assert (=> (and b!2297379 (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) t!205462) tb!137239))

(declare-fun b!2297446 () Bool)

(declare-fun e!1472301 () Bool)

(declare-fun tp!728745 () Bool)

(declare-fun inv!36979 (Conc!8914) Bool)

(assert (=> b!2297446 (= e!1472301 (and (inv!36979 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456))))) tp!728745))))

(declare-fun result!167300 () Bool)

(declare-fun inv!36980 (BalanceConc!17556) Bool)

(assert (=> tb!137239 (= result!167300 (and (inv!36980 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456)))) e!1472301))))

(assert (= tb!137239 b!2297446))

(declare-fun m!2724793 () Bool)

(assert (=> b!2297446 m!2724793))

(declare-fun m!2724795 () Bool)

(assert (=> tb!137239 m!2724795))

(assert (=> b!2297440 t!205462))

(declare-fun b_and!182833 () Bool)

(assert (= b_and!182811 (and (=> t!205462 result!167300) b_and!182833)))

(declare-fun t!205464 () Bool)

(declare-fun tb!137241 () Bool)

(assert (=> (and b!2297359 (= (toChars!6044 (transformation!4383 r!2363)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) t!205464) tb!137241))

(declare-fun result!167304 () Bool)

(assert (= result!167304 result!167300))

(assert (=> b!2297440 t!205464))

(declare-fun b_and!182835 () Bool)

(assert (= b_and!182815 (and (=> t!205464 result!167304) b_and!182835)))

(declare-fun t!205466 () Bool)

(declare-fun tb!137243 () Bool)

(assert (=> (and b!2297386 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) t!205466) tb!137243))

(declare-fun result!167306 () Bool)

(assert (= result!167306 result!167300))

(assert (=> b!2297440 t!205466))

(declare-fun b_and!182837 () Bool)

(assert (= b_and!182819 (and (=> t!205466 result!167306) b_and!182837)))

(declare-fun t!205468 () Bool)

(declare-fun tb!137245 () Bool)

(assert (=> (and b!2297367 (= (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) t!205468) tb!137245))

(declare-fun result!167308 () Bool)

(assert (= result!167308 result!167300))

(assert (=> b!2297440 t!205468))

(declare-fun b_and!182839 () Bool)

(assert (= b_and!182823 (and (=> t!205468 result!167308) b_and!182839)))

(declare-fun m!2724797 () Bool)

(assert (=> d!679495 m!2724797))

(declare-fun m!2724799 () Bool)

(assert (=> b!2297440 m!2724799))

(assert (=> b!2297440 m!2724799))

(declare-fun m!2724801 () Bool)

(assert (=> b!2297440 m!2724801))

(declare-fun m!2724803 () Bool)

(assert (=> b!2297441 m!2724803))

(assert (=> b!2297362 d!679495))

(declare-fun d!679497 () Bool)

(declare-fun list!10752 (Conc!8915) List!27454)

(assert (=> d!679497 (= (list!10748 (_1!16117 lt!852274)) (list!10752 (c!364222 (_1!16117 lt!852274))))))

(declare-fun bs!457456 () Bool)

(assert (= bs!457456 d!679497))

(declare-fun m!2724805 () Bool)

(assert (=> bs!457456 m!2724805))

(assert (=> b!2297361 d!679497))

(declare-fun d!679499 () Bool)

(declare-fun list!10753 (Conc!8914) List!27452)

(assert (=> d!679499 (= (list!10749 (_2!16117 lt!852274)) (list!10753 (c!364220 (_2!16117 lt!852274))))))

(declare-fun bs!457457 () Bool)

(assert (= bs!457457 d!679499))

(declare-fun m!2724807 () Bool)

(assert (=> bs!457457 m!2724807))

(assert (=> b!2297361 d!679499))

(declare-fun d!679501 () Bool)

(declare-fun e!1472403 () Bool)

(assert (=> d!679501 e!1472403))

(declare-fun res!982422 () Bool)

(assert (=> d!679501 (=> (not res!982422) (not e!1472403))))

(declare-fun e!1472405 () Bool)

(assert (=> d!679501 (= res!982422 e!1472405)))

(declare-fun c!364269 () Bool)

(declare-fun lt!852345 () tuple2!27214)

(declare-fun size!21565 (BalanceConc!17558) Int)

(assert (=> d!679501 (= c!364269 (> (size!21565 (_1!16117 lt!852345)) 0))))

(declare-fun lexTailRecV2!797 (LexerInterface!3980 List!27453 BalanceConc!17556 BalanceConc!17556 BalanceConc!17556 BalanceConc!17558) tuple2!27214)

(assert (=> d!679501 (= lt!852345 (lexTailRecV2!797 thiss!16613 rules!1750 (seqFromList!3087 input!1722) (BalanceConc!17557 Empty!8914) (seqFromList!3087 input!1722) (BalanceConc!17559 Empty!8915)))))

(assert (=> d!679501 (= (lex!1819 thiss!16613 rules!1750 (seqFromList!3087 input!1722)) lt!852345)))

(declare-fun b!2297623 () Bool)

(declare-fun e!1472404 () Bool)

(declare-fun isEmpty!15607 (BalanceConc!17558) Bool)

(assert (=> b!2297623 (= e!1472404 (not (isEmpty!15607 (_1!16117 lt!852345))))))

(declare-fun b!2297624 () Bool)

(assert (=> b!2297624 (= e!1472405 e!1472404)))

(declare-fun res!982423 () Bool)

(assert (=> b!2297624 (= res!982423 (< (size!21561 (_2!16117 lt!852345)) (size!21561 (seqFromList!3087 input!1722))))))

(assert (=> b!2297624 (=> (not res!982423) (not e!1472404))))

(declare-fun b!2297625 () Bool)

(declare-fun res!982421 () Bool)

(assert (=> b!2297625 (=> (not res!982421) (not e!1472403))))

(declare-fun lexList!1122 (LexerInterface!3980 List!27453 List!27452) tuple2!27216)

(assert (=> b!2297625 (= res!982421 (= (list!10748 (_1!16117 lt!852345)) (_1!16118 (lexList!1122 thiss!16613 rules!1750 (list!10749 (seqFromList!3087 input!1722))))))))

(declare-fun b!2297626 () Bool)

(assert (=> b!2297626 (= e!1472405 (= (_2!16117 lt!852345) (seqFromList!3087 input!1722)))))

(declare-fun b!2297627 () Bool)

(assert (=> b!2297627 (= e!1472403 (= (list!10749 (_2!16117 lt!852345)) (_2!16118 (lexList!1122 thiss!16613 rules!1750 (list!10749 (seqFromList!3087 input!1722))))))))

(assert (= (and d!679501 c!364269) b!2297624))

(assert (= (and d!679501 (not c!364269)) b!2297626))

(assert (= (and b!2297624 res!982423) b!2297623))

(assert (= (and d!679501 res!982422) b!2297625))

(assert (= (and b!2297625 res!982421) b!2297627))

(declare-fun m!2724963 () Bool)

(assert (=> b!2297625 m!2724963))

(assert (=> b!2297625 m!2724687))

(declare-fun m!2724965 () Bool)

(assert (=> b!2297625 m!2724965))

(assert (=> b!2297625 m!2724965))

(declare-fun m!2724967 () Bool)

(assert (=> b!2297625 m!2724967))

(declare-fun m!2724969 () Bool)

(assert (=> b!2297624 m!2724969))

(assert (=> b!2297624 m!2724687))

(declare-fun m!2724971 () Bool)

(assert (=> b!2297624 m!2724971))

(declare-fun m!2724975 () Bool)

(assert (=> b!2297623 m!2724975))

(declare-fun m!2724979 () Bool)

(assert (=> d!679501 m!2724979))

(assert (=> d!679501 m!2724687))

(assert (=> d!679501 m!2724687))

(declare-fun m!2724983 () Bool)

(assert (=> d!679501 m!2724983))

(declare-fun m!2724985 () Bool)

(assert (=> b!2297627 m!2724985))

(assert (=> b!2297627 m!2724687))

(assert (=> b!2297627 m!2724965))

(assert (=> b!2297627 m!2724965))

(assert (=> b!2297627 m!2724967))

(assert (=> b!2297361 d!679501))

(declare-fun d!679569 () Bool)

(declare-fun fromListB!1388 (List!27452) BalanceConc!17556)

(assert (=> d!679569 (= (seqFromList!3087 input!1722) (fromListB!1388 input!1722))))

(declare-fun bs!457465 () Bool)

(assert (= bs!457465 d!679569))

(declare-fun m!2724991 () Bool)

(assert (=> bs!457465 m!2724991))

(assert (=> b!2297361 d!679569))

(declare-fun d!679571 () Bool)

(assert (=> d!679571 (= (isEmpty!15601 rules!1750) ((_ is Nil!27359) rules!1750))))

(assert (=> b!2297372 d!679571))

(declare-fun d!679573 () Bool)

(assert (=> d!679573 (= (inv!36972 (tag!4873 (h!32760 rules!1750))) (= (mod (str.len (value!138734 (tag!4873 (h!32760 rules!1750)))) 2) 0))))

(assert (=> b!2297374 d!679573))

(declare-fun d!679575 () Bool)

(declare-fun res!982429 () Bool)

(declare-fun e!1472437 () Bool)

(assert (=> d!679575 (=> (not res!982429) (not e!1472437))))

(declare-fun semiInverseModEq!1778 (Int Int) Bool)

(assert (=> d!679575 (= res!982429 (semiInverseModEq!1778 (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toValue!6185 (transformation!4383 (h!32760 rules!1750)))))))

(assert (=> d!679575 (= (inv!36976 (transformation!4383 (h!32760 rules!1750))) e!1472437)))

(declare-fun b!2297667 () Bool)

(declare-fun equivClasses!1697 (Int Int) Bool)

(assert (=> b!2297667 (= e!1472437 (equivClasses!1697 (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toValue!6185 (transformation!4383 (h!32760 rules!1750)))))))

(assert (= (and d!679575 res!982429) b!2297667))

(declare-fun m!2725001 () Bool)

(assert (=> d!679575 m!2725001))

(declare-fun m!2725003 () Bool)

(assert (=> b!2297667 m!2725003))

(assert (=> b!2297374 d!679575))

(declare-fun d!679577 () Bool)

(assert (=> d!679577 (= (head!5020 tokens!456) (h!32761 tokens!456))))

(assert (=> b!2297373 d!679577))

(declare-fun d!679579 () Bool)

(assert (=> d!679579 (= (isEmpty!15602 tokens!456) ((_ is Nil!27360) tokens!456))))

(assert (=> b!2297380 d!679579))

(declare-fun d!679581 () Bool)

(assert (=> d!679581 (= (inv!36972 (tag!4873 otherR!12)) (= (mod (str.len (value!138734 (tag!4873 otherR!12))) 2) 0))))

(assert (=> b!2297371 d!679581))

(declare-fun d!679583 () Bool)

(declare-fun res!982430 () Bool)

(declare-fun e!1472443 () Bool)

(assert (=> d!679583 (=> (not res!982430) (not e!1472443))))

(assert (=> d!679583 (= res!982430 (semiInverseModEq!1778 (toChars!6044 (transformation!4383 otherR!12)) (toValue!6185 (transformation!4383 otherR!12))))))

(assert (=> d!679583 (= (inv!36976 (transformation!4383 otherR!12)) e!1472443)))

(declare-fun b!2297685 () Bool)

(assert (=> b!2297685 (= e!1472443 (equivClasses!1697 (toChars!6044 (transformation!4383 otherR!12)) (toValue!6185 (transformation!4383 otherR!12))))))

(assert (= (and d!679583 res!982430) b!2297685))

(declare-fun m!2725005 () Bool)

(assert (=> d!679583 m!2725005))

(declare-fun m!2725007 () Bool)

(assert (=> b!2297685 m!2725007))

(assert (=> b!2297371 d!679583))

(declare-fun d!679585 () Bool)

(declare-fun lt!852349 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3678 (List!27453) (InoxSet Rule!8566))

(assert (=> d!679585 (= lt!852349 (select (content!3678 rules!1750) r!2363))))

(declare-fun e!1472462 () Bool)

(assert (=> d!679585 (= lt!852349 e!1472462)))

(declare-fun res!982435 () Bool)

(assert (=> d!679585 (=> (not res!982435) (not e!1472462))))

(assert (=> d!679585 (= res!982435 ((_ is Cons!27359) rules!1750))))

(assert (=> d!679585 (= (contains!4765 rules!1750 r!2363) lt!852349)))

(declare-fun b!2297702 () Bool)

(declare-fun e!1472461 () Bool)

(assert (=> b!2297702 (= e!1472462 e!1472461)))

(declare-fun res!982436 () Bool)

(assert (=> b!2297702 (=> res!982436 e!1472461)))

(assert (=> b!2297702 (= res!982436 (= (h!32760 rules!1750) r!2363))))

(declare-fun b!2297703 () Bool)

(assert (=> b!2297703 (= e!1472461 (contains!4765 (t!205451 rules!1750) r!2363))))

(assert (= (and d!679585 res!982435) b!2297702))

(assert (= (and b!2297702 (not res!982436)) b!2297703))

(declare-fun m!2725013 () Bool)

(assert (=> d!679585 m!2725013))

(declare-fun m!2725015 () Bool)

(assert (=> d!679585 m!2725015))

(declare-fun m!2725017 () Bool)

(assert (=> b!2297703 m!2725017))

(assert (=> b!2297382 d!679585))

(declare-fun d!679587 () Bool)

(assert (=> d!679587 (= r!2363 otherR!12)))

(declare-fun lt!852352 () Unit!40251)

(declare-fun choose!13414 (List!27453 Rule!8566 Rule!8566) Unit!40251)

(assert (=> d!679587 (= lt!852352 (choose!13414 rules!1750 r!2363 otherR!12))))

(assert (=> d!679587 (contains!4765 rules!1750 r!2363)))

(assert (=> d!679587 (= (lemmaSameIndexThenSameElement!176 rules!1750 r!2363 otherR!12) lt!852352)))

(declare-fun bs!457466 () Bool)

(assert (= bs!457466 d!679587))

(declare-fun m!2725019 () Bool)

(assert (=> bs!457466 m!2725019))

(assert (=> bs!457466 m!2724717))

(assert (=> b!2297360 d!679587))

(declare-fun d!679589 () Bool)

(declare-fun lt!852353 () Bool)

(assert (=> d!679589 (= lt!852353 (select (content!3678 rules!1750) otherR!12))))

(declare-fun e!1472464 () Bool)

(assert (=> d!679589 (= lt!852353 e!1472464)))

(declare-fun res!982437 () Bool)

(assert (=> d!679589 (=> (not res!982437) (not e!1472464))))

(assert (=> d!679589 (= res!982437 ((_ is Cons!27359) rules!1750))))

(assert (=> d!679589 (= (contains!4765 rules!1750 otherR!12) lt!852353)))

(declare-fun b!2297704 () Bool)

(declare-fun e!1472463 () Bool)

(assert (=> b!2297704 (= e!1472464 e!1472463)))

(declare-fun res!982438 () Bool)

(assert (=> b!2297704 (=> res!982438 e!1472463)))

(assert (=> b!2297704 (= res!982438 (= (h!32760 rules!1750) otherR!12))))

(declare-fun b!2297705 () Bool)

(assert (=> b!2297705 (= e!1472463 (contains!4765 (t!205451 rules!1750) otherR!12))))

(assert (= (and d!679589 res!982437) b!2297704))

(assert (= (and b!2297704 (not res!982438)) b!2297705))

(assert (=> d!679589 m!2725013))

(declare-fun m!2725021 () Bool)

(assert (=> d!679589 m!2725021))

(declare-fun m!2725023 () Bool)

(assert (=> b!2297705 m!2725023))

(assert (=> b!2297378 d!679589))

(declare-fun b!2297716 () Bool)

(declare-fun e!1472473 () Bool)

(declare-fun inv!16 (TokenValue!4545) Bool)

(assert (=> b!2297716 (= e!1472473 (inv!16 (value!138735 (h!32761 tokens!456))))))

(declare-fun b!2297717 () Bool)

(declare-fun res!982441 () Bool)

(declare-fun e!1472472 () Bool)

(assert (=> b!2297717 (=> res!982441 e!1472472)))

(assert (=> b!2297717 (= res!982441 (not ((_ is IntegerValue!13637) (value!138735 (h!32761 tokens!456)))))))

(declare-fun e!1472471 () Bool)

(assert (=> b!2297717 (= e!1472471 e!1472472)))

(declare-fun b!2297718 () Bool)

(assert (=> b!2297718 (= e!1472473 e!1472471)))

(declare-fun c!364276 () Bool)

(assert (=> b!2297718 (= c!364276 ((_ is IntegerValue!13636) (value!138735 (h!32761 tokens!456))))))

(declare-fun d!679591 () Bool)

(declare-fun c!364277 () Bool)

(assert (=> d!679591 (= c!364277 ((_ is IntegerValue!13635) (value!138735 (h!32761 tokens!456))))))

(assert (=> d!679591 (= (inv!21 (value!138735 (h!32761 tokens!456))) e!1472473)))

(declare-fun b!2297719 () Bool)

(declare-fun inv!15 (TokenValue!4545) Bool)

(assert (=> b!2297719 (= e!1472472 (inv!15 (value!138735 (h!32761 tokens!456))))))

(declare-fun b!2297720 () Bool)

(declare-fun inv!17 (TokenValue!4545) Bool)

(assert (=> b!2297720 (= e!1472471 (inv!17 (value!138735 (h!32761 tokens!456))))))

(assert (= (and d!679591 c!364277) b!2297716))

(assert (= (and d!679591 (not c!364277)) b!2297718))

(assert (= (and b!2297718 c!364276) b!2297720))

(assert (= (and b!2297718 (not c!364276)) b!2297717))

(assert (= (and b!2297717 (not res!982441)) b!2297719))

(declare-fun m!2725025 () Bool)

(assert (=> b!2297716 m!2725025))

(declare-fun m!2725027 () Bool)

(assert (=> b!2297719 m!2725027))

(declare-fun m!2725029 () Bool)

(assert (=> b!2297720 m!2725029))

(assert (=> b!2297377 d!679591))

(declare-fun d!679593 () Bool)

(assert (=> d!679593 (= (inv!36972 (tag!4873 r!2363)) (= (mod (str.len (value!138734 (tag!4873 r!2363))) 2) 0))))

(assert (=> b!2297388 d!679593))

(declare-fun d!679595 () Bool)

(declare-fun res!982442 () Bool)

(declare-fun e!1472474 () Bool)

(assert (=> d!679595 (=> (not res!982442) (not e!1472474))))

(assert (=> d!679595 (= res!982442 (semiInverseModEq!1778 (toChars!6044 (transformation!4383 r!2363)) (toValue!6185 (transformation!4383 r!2363))))))

(assert (=> d!679595 (= (inv!36976 (transformation!4383 r!2363)) e!1472474)))

(declare-fun b!2297721 () Bool)

(assert (=> b!2297721 (= e!1472474 (equivClasses!1697 (toChars!6044 (transformation!4383 r!2363)) (toValue!6185 (transformation!4383 r!2363))))))

(assert (= (and d!679595 res!982442) b!2297721))

(declare-fun m!2725031 () Bool)

(assert (=> d!679595 m!2725031))

(declare-fun m!2725033 () Bool)

(assert (=> b!2297721 m!2725033))

(assert (=> b!2297388 d!679595))

(declare-fun d!679597 () Bool)

(declare-fun e!1472483 () Bool)

(assert (=> d!679597 e!1472483))

(declare-fun res!982453 () Bool)

(assert (=> d!679597 (=> res!982453 e!1472483)))

(declare-fun lt!852356 () Bool)

(assert (=> d!679597 (= res!982453 (not lt!852356))))

(declare-fun e!1472482 () Bool)

(assert (=> d!679597 (= lt!852356 e!1472482)))

(declare-fun res!982452 () Bool)

(assert (=> d!679597 (=> res!982452 e!1472482)))

(assert (=> d!679597 (= res!982452 ((_ is Nil!27358) otherP!12))))

(assert (=> d!679597 (= (isPrefix!2373 otherP!12 input!1722) lt!852356)))

(declare-fun b!2297733 () Bool)

(assert (=> b!2297733 (= e!1472483 (>= (size!21562 input!1722) (size!21562 otherP!12)))))

(declare-fun b!2297731 () Bool)

(declare-fun res!982451 () Bool)

(declare-fun e!1472481 () Bool)

(assert (=> b!2297731 (=> (not res!982451) (not e!1472481))))

(declare-fun head!5022 (List!27452) C!13608)

(assert (=> b!2297731 (= res!982451 (= (head!5022 otherP!12) (head!5022 input!1722)))))

(declare-fun b!2297730 () Bool)

(assert (=> b!2297730 (= e!1472482 e!1472481)))

(declare-fun res!982454 () Bool)

(assert (=> b!2297730 (=> (not res!982454) (not e!1472481))))

(assert (=> b!2297730 (= res!982454 (not ((_ is Nil!27358) input!1722)))))

(declare-fun b!2297732 () Bool)

(declare-fun tail!3319 (List!27452) List!27452)

(assert (=> b!2297732 (= e!1472481 (isPrefix!2373 (tail!3319 otherP!12) (tail!3319 input!1722)))))

(assert (= (and d!679597 (not res!982452)) b!2297730))

(assert (= (and b!2297730 res!982454) b!2297731))

(assert (= (and b!2297731 res!982451) b!2297732))

(assert (= (and d!679597 (not res!982453)) b!2297733))

(declare-fun m!2725035 () Bool)

(assert (=> b!2297733 m!2725035))

(assert (=> b!2297733 m!2724713))

(declare-fun m!2725037 () Bool)

(assert (=> b!2297731 m!2725037))

(declare-fun m!2725039 () Bool)

(assert (=> b!2297731 m!2725039))

(declare-fun m!2725041 () Bool)

(assert (=> b!2297732 m!2725041))

(declare-fun m!2725043 () Bool)

(assert (=> b!2297732 m!2725043))

(assert (=> b!2297732 m!2725041))

(assert (=> b!2297732 m!2725043))

(declare-fun m!2725045 () Bool)

(assert (=> b!2297732 m!2725045))

(assert (=> b!2297390 d!679597))

(declare-fun b!2297762 () Bool)

(declare-fun res!982476 () Bool)

(declare-fun e!1472498 () Bool)

(assert (=> b!2297762 (=> res!982476 e!1472498)))

(declare-fun e!1472500 () Bool)

(assert (=> b!2297762 (= res!982476 e!1472500)))

(declare-fun res!982474 () Bool)

(assert (=> b!2297762 (=> (not res!982474) (not e!1472500))))

(declare-fun lt!852359 () Bool)

(assert (=> b!2297762 (= res!982474 lt!852359)))

(declare-fun d!679599 () Bool)

(declare-fun e!1472501 () Bool)

(assert (=> d!679599 e!1472501))

(declare-fun c!364284 () Bool)

(assert (=> d!679599 (= c!364284 ((_ is EmptyExpr!6731) (regex!4383 r!2363)))))

(declare-fun e!1472502 () Bool)

(assert (=> d!679599 (= lt!852359 e!1472502)))

(declare-fun c!364285 () Bool)

(assert (=> d!679599 (= c!364285 (isEmpty!15606 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))

(assert (=> d!679599 (validRegex!2538 (regex!4383 r!2363))))

(assert (=> d!679599 (= (matchR!2988 (regex!4383 r!2363) (list!10749 (charsOf!2771 (head!5020 tokens!456)))) lt!852359)))

(declare-fun b!2297763 () Bool)

(assert (=> b!2297763 (= e!1472502 (nullable!1875 (regex!4383 r!2363)))))

(declare-fun b!2297764 () Bool)

(declare-fun e!1472504 () Bool)

(assert (=> b!2297764 (= e!1472501 e!1472504)))

(declare-fun c!364286 () Bool)

(assert (=> b!2297764 (= c!364286 ((_ is EmptyLang!6731) (regex!4383 r!2363)))))

(declare-fun b!2297765 () Bool)

(declare-fun res!982472 () Bool)

(declare-fun e!1472499 () Bool)

(assert (=> b!2297765 (=> res!982472 e!1472499)))

(assert (=> b!2297765 (= res!982472 (not (isEmpty!15606 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))))

(declare-fun b!2297766 () Bool)

(declare-fun e!1472503 () Bool)

(assert (=> b!2297766 (= e!1472503 e!1472499)))

(declare-fun res!982473 () Bool)

(assert (=> b!2297766 (=> res!982473 e!1472499)))

(declare-fun call!136915 () Bool)

(assert (=> b!2297766 (= res!982473 call!136915)))

(declare-fun bm!136910 () Bool)

(assert (=> bm!136910 (= call!136915 (isEmpty!15606 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))

(declare-fun b!2297767 () Bool)

(assert (=> b!2297767 (= e!1472501 (= lt!852359 call!136915))))

(declare-fun b!2297768 () Bool)

(declare-fun res!982477 () Bool)

(assert (=> b!2297768 (=> (not res!982477) (not e!1472500))))

(assert (=> b!2297768 (= res!982477 (isEmpty!15606 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))

(declare-fun b!2297769 () Bool)

(declare-fun derivativeStep!1536 (Regex!6731 C!13608) Regex!6731)

(assert (=> b!2297769 (= e!1472502 (matchR!2988 (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456))))) (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))

(declare-fun b!2297770 () Bool)

(declare-fun res!982475 () Bool)

(assert (=> b!2297770 (=> (not res!982475) (not e!1472500))))

(assert (=> b!2297770 (= res!982475 (not call!136915))))

(declare-fun b!2297771 () Bool)

(assert (=> b!2297771 (= e!1472500 (= (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456)))) (c!364221 (regex!4383 r!2363))))))

(declare-fun b!2297772 () Bool)

(assert (=> b!2297772 (= e!1472504 (not lt!852359))))

(declare-fun b!2297773 () Bool)

(assert (=> b!2297773 (= e!1472499 (not (= (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456)))) (c!364221 (regex!4383 r!2363)))))))

(declare-fun b!2297774 () Bool)

(assert (=> b!2297774 (= e!1472498 e!1472503)))

(declare-fun res!982471 () Bool)

(assert (=> b!2297774 (=> (not res!982471) (not e!1472503))))

(assert (=> b!2297774 (= res!982471 (not lt!852359))))

(declare-fun b!2297775 () Bool)

(declare-fun res!982478 () Bool)

(assert (=> b!2297775 (=> res!982478 e!1472498)))

(assert (=> b!2297775 (= res!982478 (not ((_ is ElementMatch!6731) (regex!4383 r!2363))))))

(assert (=> b!2297775 (= e!1472504 e!1472498)))

(assert (= (and d!679599 c!364285) b!2297763))

(assert (= (and d!679599 (not c!364285)) b!2297769))

(assert (= (and d!679599 c!364284) b!2297767))

(assert (= (and d!679599 (not c!364284)) b!2297764))

(assert (= (and b!2297764 c!364286) b!2297772))

(assert (= (and b!2297764 (not c!364286)) b!2297775))

(assert (= (and b!2297775 (not res!982478)) b!2297762))

(assert (= (and b!2297762 res!982474) b!2297770))

(assert (= (and b!2297770 res!982475) b!2297768))

(assert (= (and b!2297768 res!982477) b!2297771))

(assert (= (and b!2297762 (not res!982476)) b!2297774))

(assert (= (and b!2297774 res!982471) b!2297766))

(assert (= (and b!2297766 (not res!982473)) b!2297765))

(assert (= (and b!2297765 (not res!982472)) b!2297773))

(assert (= (or b!2297767 b!2297766 b!2297770) bm!136910))

(assert (=> b!2297773 m!2724669))

(declare-fun m!2725047 () Bool)

(assert (=> b!2297773 m!2725047))

(assert (=> b!2297768 m!2724669))

(declare-fun m!2725049 () Bool)

(assert (=> b!2297768 m!2725049))

(assert (=> b!2297768 m!2725049))

(declare-fun m!2725051 () Bool)

(assert (=> b!2297768 m!2725051))

(assert (=> d!679599 m!2724669))

(declare-fun m!2725053 () Bool)

(assert (=> d!679599 m!2725053))

(declare-fun m!2725055 () Bool)

(assert (=> d!679599 m!2725055))

(declare-fun m!2725057 () Bool)

(assert (=> b!2297763 m!2725057))

(assert (=> b!2297771 m!2724669))

(assert (=> b!2297771 m!2725047))

(assert (=> b!2297765 m!2724669))

(assert (=> b!2297765 m!2725049))

(assert (=> b!2297765 m!2725049))

(assert (=> b!2297765 m!2725051))

(assert (=> b!2297769 m!2724669))

(assert (=> b!2297769 m!2725047))

(assert (=> b!2297769 m!2725047))

(declare-fun m!2725059 () Bool)

(assert (=> b!2297769 m!2725059))

(assert (=> b!2297769 m!2724669))

(assert (=> b!2297769 m!2725049))

(assert (=> b!2297769 m!2725059))

(assert (=> b!2297769 m!2725049))

(declare-fun m!2725061 () Bool)

(assert (=> b!2297769 m!2725061))

(assert (=> bm!136910 m!2724669))

(assert (=> bm!136910 m!2725053))

(assert (=> b!2297368 d!679599))

(declare-fun d!679601 () Bool)

(assert (=> d!679601 (= (list!10749 (charsOf!2771 (head!5020 tokens!456))) (list!10753 (c!364220 (charsOf!2771 (head!5020 tokens!456)))))))

(declare-fun bs!457467 () Bool)

(assert (= bs!457467 d!679601))

(declare-fun m!2725063 () Bool)

(assert (=> bs!457467 m!2725063))

(assert (=> b!2297368 d!679601))

(declare-fun d!679603 () Bool)

(declare-fun lt!852362 () BalanceConc!17556)

(assert (=> d!679603 (= (list!10749 lt!852362) (originalCharacters!5153 (head!5020 tokens!456)))))

(assert (=> d!679603 (= lt!852362 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456))))))

(assert (=> d!679603 (= (charsOf!2771 (head!5020 tokens!456)) lt!852362)))

(declare-fun b_lambda!73205 () Bool)

(assert (=> (not b_lambda!73205) (not d!679603)))

(declare-fun tb!137263 () Bool)

(declare-fun t!205486 () Bool)

(assert (=> (and b!2297379 (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456))))) t!205486) tb!137263))

(declare-fun b!2297776 () Bool)

(declare-fun e!1472505 () Bool)

(declare-fun tp!728810 () Bool)

(assert (=> b!2297776 (= e!1472505 (and (inv!36979 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456))))) tp!728810))))

(declare-fun result!167334 () Bool)

(assert (=> tb!137263 (= result!167334 (and (inv!36980 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456)))) e!1472505))))

(assert (= tb!137263 b!2297776))

(declare-fun m!2725065 () Bool)

(assert (=> b!2297776 m!2725065))

(declare-fun m!2725067 () Bool)

(assert (=> tb!137263 m!2725067))

(assert (=> d!679603 t!205486))

(declare-fun b_and!182865 () Bool)

(assert (= b_and!182833 (and (=> t!205486 result!167334) b_and!182865)))

(declare-fun t!205488 () Bool)

(declare-fun tb!137265 () Bool)

(assert (=> (and b!2297359 (= (toChars!6044 (transformation!4383 r!2363)) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456))))) t!205488) tb!137265))

(declare-fun result!167336 () Bool)

(assert (= result!167336 result!167334))

(assert (=> d!679603 t!205488))

(declare-fun b_and!182867 () Bool)

(assert (= b_and!182835 (and (=> t!205488 result!167336) b_and!182867)))

(declare-fun t!205490 () Bool)

(declare-fun tb!137267 () Bool)

(assert (=> (and b!2297386 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456))))) t!205490) tb!137267))

(declare-fun result!167338 () Bool)

(assert (= result!167338 result!167334))

(assert (=> d!679603 t!205490))

(declare-fun b_and!182869 () Bool)

(assert (= b_and!182837 (and (=> t!205490 result!167338) b_and!182869)))

(declare-fun t!205492 () Bool)

(declare-fun tb!137269 () Bool)

(assert (=> (and b!2297367 (= (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456))))) t!205492) tb!137269))

(declare-fun result!167340 () Bool)

(assert (= result!167340 result!167334))

(assert (=> d!679603 t!205492))

(declare-fun b_and!182871 () Bool)

(assert (= b_and!182839 (and (=> t!205492 result!167340) b_and!182871)))

(declare-fun m!2725069 () Bool)

(assert (=> d!679603 m!2725069))

(declare-fun m!2725071 () Bool)

(assert (=> d!679603 m!2725071))

(assert (=> b!2297368 d!679603))

(assert (=> b!2297368 d!679577))

(declare-fun d!679605 () Bool)

(declare-fun res!982479 () Bool)

(declare-fun e!1472506 () Bool)

(assert (=> d!679605 (=> (not res!982479) (not e!1472506))))

(assert (=> d!679605 (= res!982479 (validRegex!2538 (regex!4383 r!2363)))))

(assert (=> d!679605 (= (ruleValid!1473 thiss!16613 r!2363) e!1472506)))

(declare-fun b!2297777 () Bool)

(declare-fun res!982480 () Bool)

(assert (=> b!2297777 (=> (not res!982480) (not e!1472506))))

(assert (=> b!2297777 (= res!982480 (not (nullable!1875 (regex!4383 r!2363))))))

(declare-fun b!2297778 () Bool)

(assert (=> b!2297778 (= e!1472506 (not (= (tag!4873 r!2363) (String!29830 ""))))))

(assert (= (and d!679605 res!982479) b!2297777))

(assert (= (and b!2297777 res!982480) b!2297778))

(assert (=> d!679605 m!2725055))

(assert (=> b!2297777 m!2725057))

(assert (=> b!2297375 d!679605))

(declare-fun d!679607 () Bool)

(assert (=> d!679607 (ruleValid!1473 thiss!16613 r!2363)))

(declare-fun lt!852363 () Unit!40251)

(assert (=> d!679607 (= lt!852363 (choose!13412 thiss!16613 r!2363 rules!1750))))

(assert (=> d!679607 (contains!4765 rules!1750 r!2363)))

(assert (=> d!679607 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!878 thiss!16613 r!2363 rules!1750) lt!852363)))

(declare-fun bs!457468 () Bool)

(assert (= bs!457468 d!679607))

(assert (=> bs!457468 m!2724691))

(declare-fun m!2725073 () Bool)

(assert (=> bs!457468 m!2725073))

(assert (=> bs!457468 m!2724717))

(assert (=> b!2297375 d!679607))

(declare-fun d!679609 () Bool)

(declare-fun lt!852366 () Int)

(assert (=> d!679609 (= lt!852366 (size!21562 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))

(declare-fun size!21566 (Conc!8914) Int)

(assert (=> d!679609 (= lt!852366 (size!21566 (c!364220 (charsOf!2771 (head!5020 tokens!456)))))))

(assert (=> d!679609 (= (size!21561 (charsOf!2771 (head!5020 tokens!456))) lt!852366)))

(declare-fun bs!457469 () Bool)

(assert (= bs!457469 d!679609))

(assert (=> bs!457469 m!2724667))

(assert (=> bs!457469 m!2724669))

(assert (=> bs!457469 m!2724669))

(declare-fun m!2725075 () Bool)

(assert (=> bs!457469 m!2725075))

(declare-fun m!2725077 () Bool)

(assert (=> bs!457469 m!2725077))

(assert (=> b!2297387 d!679609))

(assert (=> b!2297387 d!679603))

(assert (=> b!2297387 d!679577))

(declare-fun d!679611 () Bool)

(declare-fun lt!852369 () Int)

(assert (=> d!679611 (>= lt!852369 0)))

(declare-fun e!1472509 () Int)

(assert (=> d!679611 (= lt!852369 e!1472509)))

(declare-fun c!364289 () Bool)

(assert (=> d!679611 (= c!364289 ((_ is Nil!27358) otherP!12))))

(assert (=> d!679611 (= (size!21562 otherP!12) lt!852369)))

(declare-fun b!2297783 () Bool)

(assert (=> b!2297783 (= e!1472509 0)))

(declare-fun b!2297784 () Bool)

(assert (=> b!2297784 (= e!1472509 (+ 1 (size!21562 (t!205450 otherP!12))))))

(assert (= (and d!679611 c!364289) b!2297783))

(assert (= (and d!679611 (not c!364289)) b!2297784))

(declare-fun m!2725079 () Bool)

(assert (=> b!2297784 m!2725079))

(assert (=> b!2297387 d!679611))

(declare-fun d!679613 () Bool)

(declare-fun res!982483 () Bool)

(declare-fun e!1472512 () Bool)

(assert (=> d!679613 (=> (not res!982483) (not e!1472512))))

(declare-fun rulesValid!1622 (LexerInterface!3980 List!27453) Bool)

(assert (=> d!679613 (= res!982483 (rulesValid!1622 thiss!16613 rules!1750))))

(assert (=> d!679613 (= (rulesInvariant!3482 thiss!16613 rules!1750) e!1472512)))

(declare-fun b!2297787 () Bool)

(declare-datatypes ((List!27456 0))(
  ( (Nil!27362) (Cons!27362 (h!32763 String!29829) (t!205502 List!27456)) )
))
(declare-fun noDuplicateTag!1620 (LexerInterface!3980 List!27453 List!27456) Bool)

(assert (=> b!2297787 (= e!1472512 (noDuplicateTag!1620 thiss!16613 rules!1750 Nil!27362))))

(assert (= (and d!679613 res!982483) b!2297787))

(declare-fun m!2725081 () Bool)

(assert (=> d!679613 m!2725081))

(declare-fun m!2725083 () Bool)

(assert (=> b!2297787 m!2725083))

(assert (=> b!2297366 d!679613))

(declare-fun d!679615 () Bool)

(declare-fun lt!852372 () List!27452)

(assert (=> d!679615 (= (++!6689 lt!852265 lt!852372) input!1722)))

(declare-fun e!1472515 () List!27452)

(assert (=> d!679615 (= lt!852372 e!1472515)))

(declare-fun c!364292 () Bool)

(assert (=> d!679615 (= c!364292 ((_ is Cons!27358) lt!852265))))

(assert (=> d!679615 (>= (size!21562 input!1722) (size!21562 lt!852265))))

(assert (=> d!679615 (= (getSuffix!1152 input!1722 lt!852265) lt!852372)))

(declare-fun b!2297792 () Bool)

(assert (=> b!2297792 (= e!1472515 (getSuffix!1152 (tail!3319 input!1722) (t!205450 lt!852265)))))

(declare-fun b!2297793 () Bool)

(assert (=> b!2297793 (= e!1472515 input!1722)))

(assert (= (and d!679615 c!364292) b!2297792))

(assert (= (and d!679615 (not c!364292)) b!2297793))

(declare-fun m!2725085 () Bool)

(assert (=> d!679615 m!2725085))

(assert (=> d!679615 m!2725035))

(declare-fun m!2725087 () Bool)

(assert (=> d!679615 m!2725087))

(assert (=> b!2297792 m!2725043))

(assert (=> b!2297792 m!2725043))

(declare-fun m!2725089 () Bool)

(assert (=> b!2297792 m!2725089))

(assert (=> b!2297365 d!679615))

(declare-fun d!679617 () Bool)

(declare-fun e!1472518 () Bool)

(assert (=> d!679617 e!1472518))

(declare-fun res!982486 () Bool)

(assert (=> d!679617 (=> res!982486 e!1472518)))

(declare-fun lt!852373 () Bool)

(assert (=> d!679617 (= res!982486 (not lt!852373))))

(declare-fun e!1472517 () Bool)

(assert (=> d!679617 (= lt!852373 e!1472517)))

(declare-fun res!982485 () Bool)

(assert (=> d!679617 (=> res!982485 e!1472517)))

(assert (=> d!679617 (= res!982485 ((_ is Nil!27358) lt!852265))))

(assert (=> d!679617 (= (isPrefix!2373 lt!852265 input!1722) lt!852373)))

(declare-fun b!2297797 () Bool)

(assert (=> b!2297797 (= e!1472518 (>= (size!21562 input!1722) (size!21562 lt!852265)))))

(declare-fun b!2297795 () Bool)

(declare-fun res!982484 () Bool)

(declare-fun e!1472516 () Bool)

(assert (=> b!2297795 (=> (not res!982484) (not e!1472516))))

(assert (=> b!2297795 (= res!982484 (= (head!5022 lt!852265) (head!5022 input!1722)))))

(declare-fun b!2297794 () Bool)

(assert (=> b!2297794 (= e!1472517 e!1472516)))

(declare-fun res!982487 () Bool)

(assert (=> b!2297794 (=> (not res!982487) (not e!1472516))))

(assert (=> b!2297794 (= res!982487 (not ((_ is Nil!27358) input!1722)))))

(declare-fun b!2297796 () Bool)

(assert (=> b!2297796 (= e!1472516 (isPrefix!2373 (tail!3319 lt!852265) (tail!3319 input!1722)))))

(assert (= (and d!679617 (not res!982485)) b!2297794))

(assert (= (and b!2297794 res!982487) b!2297795))

(assert (= (and b!2297795 res!982484) b!2297796))

(assert (= (and d!679617 (not res!982486)) b!2297797))

(assert (=> b!2297797 m!2725035))

(assert (=> b!2297797 m!2725087))

(declare-fun m!2725091 () Bool)

(assert (=> b!2297795 m!2725091))

(assert (=> b!2297795 m!2725039))

(declare-fun m!2725093 () Bool)

(assert (=> b!2297796 m!2725093))

(assert (=> b!2297796 m!2725043))

(assert (=> b!2297796 m!2725093))

(assert (=> b!2297796 m!2725043))

(declare-fun m!2725095 () Bool)

(assert (=> b!2297796 m!2725095))

(assert (=> b!2297365 d!679617))

(declare-fun lt!852376 () List!27452)

(declare-fun b!2297809 () Bool)

(declare-fun e!1472524 () Bool)

(assert (=> b!2297809 (= e!1472524 (or (not (= (_2!16119 lt!852272) Nil!27358)) (= lt!852376 lt!852265)))))

(declare-fun b!2297807 () Bool)

(declare-fun e!1472523 () List!27452)

(assert (=> b!2297807 (= e!1472523 (Cons!27358 (h!32759 lt!852265) (++!6689 (t!205450 lt!852265) (_2!16119 lt!852272))))))

(declare-fun b!2297808 () Bool)

(declare-fun res!982493 () Bool)

(assert (=> b!2297808 (=> (not res!982493) (not e!1472524))))

(assert (=> b!2297808 (= res!982493 (= (size!21562 lt!852376) (+ (size!21562 lt!852265) (size!21562 (_2!16119 lt!852272)))))))

(declare-fun b!2297806 () Bool)

(assert (=> b!2297806 (= e!1472523 (_2!16119 lt!852272))))

(declare-fun d!679619 () Bool)

(assert (=> d!679619 e!1472524))

(declare-fun res!982492 () Bool)

(assert (=> d!679619 (=> (not res!982492) (not e!1472524))))

(declare-fun content!3679 (List!27452) (InoxSet C!13608))

(assert (=> d!679619 (= res!982492 (= (content!3679 lt!852376) ((_ map or) (content!3679 lt!852265) (content!3679 (_2!16119 lt!852272)))))))

(assert (=> d!679619 (= lt!852376 e!1472523)))

(declare-fun c!364295 () Bool)

(assert (=> d!679619 (= c!364295 ((_ is Nil!27358) lt!852265))))

(assert (=> d!679619 (= (++!6689 lt!852265 (_2!16119 lt!852272)) lt!852376)))

(assert (= (and d!679619 c!364295) b!2297806))

(assert (= (and d!679619 (not c!364295)) b!2297807))

(assert (= (and d!679619 res!982492) b!2297808))

(assert (= (and b!2297808 res!982493) b!2297809))

(declare-fun m!2725097 () Bool)

(assert (=> b!2297807 m!2725097))

(declare-fun m!2725099 () Bool)

(assert (=> b!2297808 m!2725099))

(assert (=> b!2297808 m!2725087))

(declare-fun m!2725101 () Bool)

(assert (=> b!2297808 m!2725101))

(declare-fun m!2725103 () Bool)

(assert (=> d!679619 m!2725103))

(declare-fun m!2725105 () Bool)

(assert (=> d!679619 m!2725105))

(declare-fun m!2725107 () Bool)

(assert (=> d!679619 m!2725107))

(assert (=> b!2297365 d!679619))

(declare-fun d!679621 () Bool)

(assert (=> d!679621 (= (list!10749 (charsOf!2771 (h!32761 tokens!456))) (list!10753 (c!364220 (charsOf!2771 (h!32761 tokens!456)))))))

(declare-fun bs!457470 () Bool)

(assert (= bs!457470 d!679621))

(declare-fun m!2725109 () Bool)

(assert (=> bs!457470 m!2725109))

(assert (=> b!2297365 d!679621))

(declare-fun d!679623 () Bool)

(declare-fun e!1472527 () Bool)

(assert (=> d!679623 e!1472527))

(declare-fun res!982496 () Bool)

(assert (=> d!679623 (=> res!982496 e!1472527)))

(declare-fun lt!852377 () Bool)

(assert (=> d!679623 (= res!982496 (not lt!852377))))

(declare-fun e!1472526 () Bool)

(assert (=> d!679623 (= lt!852377 e!1472526)))

(declare-fun res!982495 () Bool)

(assert (=> d!679623 (=> res!982495 e!1472526)))

(assert (=> d!679623 (= res!982495 ((_ is Nil!27358) lt!852265))))

(assert (=> d!679623 (= (isPrefix!2373 lt!852265 (++!6689 lt!852265 (_2!16119 lt!852272))) lt!852377)))

(declare-fun b!2297813 () Bool)

(assert (=> b!2297813 (= e!1472527 (>= (size!21562 (++!6689 lt!852265 (_2!16119 lt!852272))) (size!21562 lt!852265)))))

(declare-fun b!2297811 () Bool)

(declare-fun res!982494 () Bool)

(declare-fun e!1472525 () Bool)

(assert (=> b!2297811 (=> (not res!982494) (not e!1472525))))

(assert (=> b!2297811 (= res!982494 (= (head!5022 lt!852265) (head!5022 (++!6689 lt!852265 (_2!16119 lt!852272)))))))

(declare-fun b!2297810 () Bool)

(assert (=> b!2297810 (= e!1472526 e!1472525)))

(declare-fun res!982497 () Bool)

(assert (=> b!2297810 (=> (not res!982497) (not e!1472525))))

(assert (=> b!2297810 (= res!982497 (not ((_ is Nil!27358) (++!6689 lt!852265 (_2!16119 lt!852272)))))))

(declare-fun b!2297812 () Bool)

(assert (=> b!2297812 (= e!1472525 (isPrefix!2373 (tail!3319 lt!852265) (tail!3319 (++!6689 lt!852265 (_2!16119 lt!852272)))))))

(assert (= (and d!679623 (not res!982495)) b!2297810))

(assert (= (and b!2297810 res!982497) b!2297811))

(assert (= (and b!2297811 res!982494) b!2297812))

(assert (= (and d!679623 (not res!982496)) b!2297813))

(assert (=> b!2297813 m!2724731))

(declare-fun m!2725111 () Bool)

(assert (=> b!2297813 m!2725111))

(assert (=> b!2297813 m!2725087))

(assert (=> b!2297811 m!2725091))

(assert (=> b!2297811 m!2724731))

(declare-fun m!2725113 () Bool)

(assert (=> b!2297811 m!2725113))

(assert (=> b!2297812 m!2725093))

(assert (=> b!2297812 m!2724731))

(declare-fun m!2725115 () Bool)

(assert (=> b!2297812 m!2725115))

(assert (=> b!2297812 m!2725093))

(assert (=> b!2297812 m!2725115))

(declare-fun m!2725117 () Bool)

(assert (=> b!2297812 m!2725117))

(assert (=> b!2297365 d!679623))

(declare-fun d!679625 () Bool)

(declare-fun lt!852378 () BalanceConc!17556)

(assert (=> d!679625 (= (list!10749 lt!852378) (originalCharacters!5153 (h!32761 tokens!456)))))

(assert (=> d!679625 (= lt!852378 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456))))))

(assert (=> d!679625 (= (charsOf!2771 (h!32761 tokens!456)) lt!852378)))

(declare-fun b_lambda!73207 () Bool)

(assert (=> (not b_lambda!73207) (not d!679625)))

(assert (=> d!679625 t!205462))

(declare-fun b_and!182873 () Bool)

(assert (= b_and!182865 (and (=> t!205462 result!167300) b_and!182873)))

(assert (=> d!679625 t!205464))

(declare-fun b_and!182875 () Bool)

(assert (= b_and!182867 (and (=> t!205464 result!167304) b_and!182875)))

(assert (=> d!679625 t!205466))

(declare-fun b_and!182877 () Bool)

(assert (= b_and!182869 (and (=> t!205466 result!167306) b_and!182877)))

(assert (=> d!679625 t!205468))

(declare-fun b_and!182879 () Bool)

(assert (= b_and!182871 (and (=> t!205468 result!167308) b_and!182879)))

(declare-fun m!2725119 () Bool)

(assert (=> d!679625 m!2725119))

(assert (=> d!679625 m!2724799))

(assert (=> b!2297365 d!679625))

(declare-fun d!679627 () Bool)

(assert (=> d!679627 (isPrefix!2373 lt!852265 (++!6689 lt!852265 (_2!16119 lt!852272)))))

(declare-fun lt!852381 () Unit!40251)

(declare-fun choose!13415 (List!27452 List!27452) Unit!40251)

(assert (=> d!679627 (= lt!852381 (choose!13415 lt!852265 (_2!16119 lt!852272)))))

(assert (=> d!679627 (= (lemmaConcatTwoListThenFirstIsPrefix!1566 lt!852265 (_2!16119 lt!852272)) lt!852381)))

(declare-fun bs!457471 () Bool)

(assert (= bs!457471 d!679627))

(assert (=> bs!457471 m!2724731))

(assert (=> bs!457471 m!2724731))

(assert (=> bs!457471 m!2724733))

(declare-fun m!2725121 () Bool)

(assert (=> bs!457471 m!2725121))

(assert (=> b!2297365 d!679627))

(declare-fun d!679629 () Bool)

(assert (=> d!679629 (= (get!8246 (maxPrefix!2236 thiss!16613 rules!1750 input!1722)) (v!30464 (maxPrefix!2236 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2297365 d!679629))

(declare-fun b!2297832 () Bool)

(declare-fun res!982514 () Bool)

(declare-fun e!1472535 () Bool)

(assert (=> b!2297832 (=> (not res!982514) (not e!1472535))))

(declare-fun lt!852395 () Option!5375)

(declare-fun apply!6647 (TokenValueInjection!8630 BalanceConc!17556) TokenValue!4545)

(assert (=> b!2297832 (= res!982514 (= (value!138735 (_1!16119 (get!8246 lt!852395))) (apply!6647 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))) (seqFromList!3087 (originalCharacters!5153 (_1!16119 (get!8246 lt!852395)))))))))

(declare-fun b!2297833 () Bool)

(declare-fun e!1472536 () Bool)

(assert (=> b!2297833 (= e!1472536 e!1472535)))

(declare-fun res!982518 () Bool)

(assert (=> b!2297833 (=> (not res!982518) (not e!1472535))))

(declare-fun isDefined!4238 (Option!5375) Bool)

(assert (=> b!2297833 (= res!982518 (isDefined!4238 lt!852395))))

(declare-fun b!2297834 () Bool)

(declare-fun res!982517 () Bool)

(assert (=> b!2297834 (=> (not res!982517) (not e!1472535))))

(assert (=> b!2297834 (= res!982517 (= (++!6689 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395)))) (_2!16119 (get!8246 lt!852395))) input!1722))))

(declare-fun call!136918 () Option!5375)

(declare-fun bm!136913 () Bool)

(declare-fun maxPrefixOneRule!1408 (LexerInterface!3980 Rule!8566 List!27452) Option!5375)

(assert (=> bm!136913 (= call!136918 (maxPrefixOneRule!1408 thiss!16613 (h!32760 rules!1750) input!1722))))

(declare-fun d!679631 () Bool)

(assert (=> d!679631 e!1472536))

(declare-fun res!982516 () Bool)

(assert (=> d!679631 (=> res!982516 e!1472536)))

(declare-fun isEmpty!15608 (Option!5375) Bool)

(assert (=> d!679631 (= res!982516 (isEmpty!15608 lt!852395))))

(declare-fun e!1472534 () Option!5375)

(assert (=> d!679631 (= lt!852395 e!1472534)))

(declare-fun c!364298 () Bool)

(assert (=> d!679631 (= c!364298 (and ((_ is Cons!27359) rules!1750) ((_ is Nil!27359) (t!205451 rules!1750))))))

(declare-fun lt!852393 () Unit!40251)

(declare-fun lt!852394 () Unit!40251)

(assert (=> d!679631 (= lt!852393 lt!852394)))

(assert (=> d!679631 (isPrefix!2373 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1505 (List!27452 List!27452) Unit!40251)

(assert (=> d!679631 (= lt!852394 (lemmaIsPrefixRefl!1505 input!1722 input!1722))))

(declare-fun rulesValidInductive!1547 (LexerInterface!3980 List!27453) Bool)

(assert (=> d!679631 (rulesValidInductive!1547 thiss!16613 rules!1750)))

(assert (=> d!679631 (= (maxPrefix!2236 thiss!16613 rules!1750 input!1722) lt!852395)))

(declare-fun b!2297835 () Bool)

(assert (=> b!2297835 (= e!1472535 (contains!4765 rules!1750 (rule!6725 (_1!16119 (get!8246 lt!852395)))))))

(declare-fun b!2297836 () Bool)

(declare-fun res!982512 () Bool)

(assert (=> b!2297836 (=> (not res!982512) (not e!1472535))))

(assert (=> b!2297836 (= res!982512 (= (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395)))) (originalCharacters!5153 (_1!16119 (get!8246 lt!852395)))))))

(declare-fun b!2297837 () Bool)

(declare-fun res!982515 () Bool)

(assert (=> b!2297837 (=> (not res!982515) (not e!1472535))))

(assert (=> b!2297837 (= res!982515 (< (size!21562 (_2!16119 (get!8246 lt!852395))) (size!21562 input!1722)))))

(declare-fun b!2297838 () Bool)

(declare-fun res!982513 () Bool)

(assert (=> b!2297838 (=> (not res!982513) (not e!1472535))))

(assert (=> b!2297838 (= res!982513 (matchR!2988 (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))) (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))))))

(declare-fun b!2297839 () Bool)

(assert (=> b!2297839 (= e!1472534 call!136918)))

(declare-fun b!2297840 () Bool)

(declare-fun lt!852396 () Option!5375)

(declare-fun lt!852392 () Option!5375)

(assert (=> b!2297840 (= e!1472534 (ite (and ((_ is None!5374) lt!852396) ((_ is None!5374) lt!852392)) None!5374 (ite ((_ is None!5374) lt!852392) lt!852396 (ite ((_ is None!5374) lt!852396) lt!852392 (ite (>= (size!21560 (_1!16119 (v!30464 lt!852396))) (size!21560 (_1!16119 (v!30464 lt!852392)))) lt!852396 lt!852392)))))))

(assert (=> b!2297840 (= lt!852396 call!136918)))

(assert (=> b!2297840 (= lt!852392 (maxPrefix!2236 thiss!16613 (t!205451 rules!1750) input!1722))))

(assert (= (and d!679631 c!364298) b!2297839))

(assert (= (and d!679631 (not c!364298)) b!2297840))

(assert (= (or b!2297839 b!2297840) bm!136913))

(assert (= (and d!679631 (not res!982516)) b!2297833))

(assert (= (and b!2297833 res!982518) b!2297836))

(assert (= (and b!2297836 res!982512) b!2297837))

(assert (= (and b!2297837 res!982515) b!2297834))

(assert (= (and b!2297834 res!982517) b!2297832))

(assert (= (and b!2297832 res!982514) b!2297838))

(assert (= (and b!2297838 res!982513) b!2297835))

(declare-fun m!2725123 () Bool)

(assert (=> b!2297834 m!2725123))

(declare-fun m!2725125 () Bool)

(assert (=> b!2297834 m!2725125))

(assert (=> b!2297834 m!2725125))

(declare-fun m!2725127 () Bool)

(assert (=> b!2297834 m!2725127))

(assert (=> b!2297834 m!2725127))

(declare-fun m!2725129 () Bool)

(assert (=> b!2297834 m!2725129))

(assert (=> b!2297837 m!2725123))

(declare-fun m!2725131 () Bool)

(assert (=> b!2297837 m!2725131))

(assert (=> b!2297837 m!2725035))

(declare-fun m!2725133 () Bool)

(assert (=> d!679631 m!2725133))

(declare-fun m!2725135 () Bool)

(assert (=> d!679631 m!2725135))

(declare-fun m!2725137 () Bool)

(assert (=> d!679631 m!2725137))

(declare-fun m!2725139 () Bool)

(assert (=> d!679631 m!2725139))

(declare-fun m!2725141 () Bool)

(assert (=> b!2297833 m!2725141))

(declare-fun m!2725143 () Bool)

(assert (=> b!2297840 m!2725143))

(assert (=> b!2297836 m!2725123))

(assert (=> b!2297836 m!2725125))

(assert (=> b!2297836 m!2725125))

(assert (=> b!2297836 m!2725127))

(assert (=> b!2297832 m!2725123))

(declare-fun m!2725145 () Bool)

(assert (=> b!2297832 m!2725145))

(assert (=> b!2297832 m!2725145))

(declare-fun m!2725147 () Bool)

(assert (=> b!2297832 m!2725147))

(assert (=> b!2297838 m!2725123))

(assert (=> b!2297838 m!2725125))

(assert (=> b!2297838 m!2725125))

(assert (=> b!2297838 m!2725127))

(assert (=> b!2297838 m!2725127))

(declare-fun m!2725149 () Bool)

(assert (=> b!2297838 m!2725149))

(declare-fun m!2725151 () Bool)

(assert (=> bm!136913 m!2725151))

(assert (=> b!2297835 m!2725123))

(declare-fun m!2725153 () Bool)

(assert (=> b!2297835 m!2725153))

(assert (=> b!2297365 d!679631))

(declare-fun d!679633 () Bool)

(assert (=> d!679633 (= (inv!36972 (tag!4873 (rule!6725 (h!32761 tokens!456)))) (= (mod (str.len (value!138734 (tag!4873 (rule!6725 (h!32761 tokens!456))))) 2) 0))))

(assert (=> b!2297376 d!679633))

(declare-fun d!679635 () Bool)

(declare-fun res!982519 () Bool)

(declare-fun e!1472537 () Bool)

(assert (=> d!679635 (=> (not res!982519) (not e!1472537))))

(assert (=> d!679635 (= res!982519 (semiInverseModEq!1778 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456))))))))

(assert (=> d!679635 (= (inv!36976 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) e!1472537)))

(declare-fun b!2297841 () Bool)

(assert (=> b!2297841 (= e!1472537 (equivClasses!1697 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456))))))))

(assert (= (and d!679635 res!982519) b!2297841))

(declare-fun m!2725155 () Bool)

(assert (=> d!679635 m!2725155))

(declare-fun m!2725157 () Bool)

(assert (=> b!2297841 m!2725157))

(assert (=> b!2297376 d!679635))

(declare-fun b!2297855 () Bool)

(declare-fun b_free!69269 () Bool)

(declare-fun b_next!69973 () Bool)

(assert (=> b!2297855 (= b_free!69269 (not b_next!69973))))

(declare-fun tp!728824 () Bool)

(declare-fun b_and!182881 () Bool)

(assert (=> b!2297855 (= tp!728824 b_and!182881)))

(declare-fun b_free!69271 () Bool)

(declare-fun b_next!69975 () Bool)

(assert (=> b!2297855 (= b_free!69271 (not b_next!69975))))

(declare-fun t!205494 () Bool)

(declare-fun tb!137271 () Bool)

(assert (=> (and b!2297855 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) t!205494) tb!137271))

(declare-fun result!167344 () Bool)

(assert (= result!167344 result!167300))

(assert (=> b!2297440 t!205494))

(declare-fun t!205496 () Bool)

(declare-fun tb!137273 () Bool)

(assert (=> (and b!2297855 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456))))) t!205496) tb!137273))

(declare-fun result!167346 () Bool)

(assert (= result!167346 result!167334))

(assert (=> d!679603 t!205496))

(assert (=> d!679625 t!205494))

(declare-fun tp!728822 () Bool)

(declare-fun b_and!182883 () Bool)

(assert (=> b!2297855 (= tp!728822 (and (=> t!205494 result!167344) (=> t!205496 result!167346) b_and!182883))))

(declare-fun e!1472551 () Bool)

(declare-fun b!2297854 () Bool)

(declare-fun tp!728821 () Bool)

(declare-fun e!1472552 () Bool)

(assert (=> b!2297854 (= e!1472552 (and tp!728821 (inv!36972 (tag!4873 (rule!6725 (h!32761 (t!205452 tokens!456))))) (inv!36976 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) e!1472551))))

(assert (=> b!2297855 (= e!1472551 (and tp!728824 tp!728822))))

(declare-fun b!2297853 () Bool)

(declare-fun tp!728823 () Bool)

(declare-fun e!1472555 () Bool)

(assert (=> b!2297853 (= e!1472555 (and (inv!21 (value!138735 (h!32761 (t!205452 tokens!456)))) e!1472552 tp!728823))))

(declare-fun e!1472550 () Bool)

(assert (=> b!2297362 (= tp!728729 e!1472550)))

(declare-fun b!2297852 () Bool)

(declare-fun tp!728825 () Bool)

(assert (=> b!2297852 (= e!1472550 (and (inv!36975 (h!32761 (t!205452 tokens!456))) e!1472555 tp!728825))))

(assert (= b!2297854 b!2297855))

(assert (= b!2297853 b!2297854))

(assert (= b!2297852 b!2297853))

(assert (= (and b!2297362 ((_ is Cons!27360) (t!205452 tokens!456))) b!2297852))

(declare-fun m!2725159 () Bool)

(assert (=> b!2297854 m!2725159))

(declare-fun m!2725161 () Bool)

(assert (=> b!2297854 m!2725161))

(declare-fun m!2725163 () Bool)

(assert (=> b!2297853 m!2725163))

(declare-fun m!2725165 () Bool)

(assert (=> b!2297852 m!2725165))

(declare-fun b!2297866 () Bool)

(declare-fun b_free!69273 () Bool)

(declare-fun b_next!69977 () Bool)

(assert (=> b!2297866 (= b_free!69273 (not b_next!69977))))

(declare-fun tp!728836 () Bool)

(declare-fun b_and!182885 () Bool)

(assert (=> b!2297866 (= tp!728836 b_and!182885)))

(declare-fun b_free!69275 () Bool)

(declare-fun b_next!69979 () Bool)

(assert (=> b!2297866 (= b_free!69275 (not b_next!69979))))

(declare-fun tb!137275 () Bool)

(declare-fun t!205498 () Bool)

(assert (=> (and b!2297866 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) t!205498) tb!137275))

(declare-fun result!167350 () Bool)

(assert (= result!167350 result!167300))

(assert (=> b!2297440 t!205498))

(declare-fun t!205500 () Bool)

(declare-fun tb!137277 () Bool)

(assert (=> (and b!2297866 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456))))) t!205500) tb!137277))

(declare-fun result!167352 () Bool)

(assert (= result!167352 result!167334))

(assert (=> d!679603 t!205500))

(assert (=> d!679625 t!205498))

(declare-fun tp!728835 () Bool)

(declare-fun b_and!182887 () Bool)

(assert (=> b!2297866 (= tp!728835 (and (=> t!205498 result!167350) (=> t!205500 result!167352) b_and!182887))))

(declare-fun e!1472567 () Bool)

(assert (=> b!2297866 (= e!1472567 (and tp!728836 tp!728835))))

(declare-fun tp!728837 () Bool)

(declare-fun b!2297865 () Bool)

(declare-fun e!1472566 () Bool)

(assert (=> b!2297865 (= e!1472566 (and tp!728837 (inv!36972 (tag!4873 (h!32760 (t!205451 rules!1750)))) (inv!36976 (transformation!4383 (h!32760 (t!205451 rules!1750)))) e!1472567))))

(declare-fun b!2297864 () Bool)

(declare-fun e!1472564 () Bool)

(declare-fun tp!728834 () Bool)

(assert (=> b!2297864 (= e!1472564 (and e!1472566 tp!728834))))

(assert (=> b!2297363 (= tp!728722 e!1472564)))

(assert (= b!2297865 b!2297866))

(assert (= b!2297864 b!2297865))

(assert (= (and b!2297363 ((_ is Cons!27359) (t!205451 rules!1750))) b!2297864))

(declare-fun m!2725167 () Bool)

(assert (=> b!2297865 m!2725167))

(declare-fun m!2725169 () Bool)

(assert (=> b!2297865 m!2725169))

(declare-fun b!2297879 () Bool)

(declare-fun e!1472570 () Bool)

(declare-fun tp!728850 () Bool)

(assert (=> b!2297879 (= e!1472570 tp!728850)))

(declare-fun b!2297878 () Bool)

(declare-fun tp!728851 () Bool)

(declare-fun tp!728848 () Bool)

(assert (=> b!2297878 (= e!1472570 (and tp!728851 tp!728848))))

(assert (=> b!2297374 (= tp!728735 e!1472570)))

(declare-fun b!2297877 () Bool)

(assert (=> b!2297877 (= e!1472570 tp_is_empty!10683)))

(declare-fun b!2297880 () Bool)

(declare-fun tp!728849 () Bool)

(declare-fun tp!728852 () Bool)

(assert (=> b!2297880 (= e!1472570 (and tp!728849 tp!728852))))

(assert (= (and b!2297374 ((_ is ElementMatch!6731) (regex!4383 (h!32760 rules!1750)))) b!2297877))

(assert (= (and b!2297374 ((_ is Concat!11277) (regex!4383 (h!32760 rules!1750)))) b!2297878))

(assert (= (and b!2297374 ((_ is Star!6731) (regex!4383 (h!32760 rules!1750)))) b!2297879))

(assert (= (and b!2297374 ((_ is Union!6731) (regex!4383 (h!32760 rules!1750)))) b!2297880))

(declare-fun b!2297885 () Bool)

(declare-fun e!1472573 () Bool)

(declare-fun tp!728855 () Bool)

(assert (=> b!2297885 (= e!1472573 (and tp_is_empty!10683 tp!728855))))

(assert (=> b!2297384 (= tp!728730 e!1472573)))

(assert (= (and b!2297384 ((_ is Cons!27358) (t!205450 suffix!886))) b!2297885))

(declare-fun b!2297886 () Bool)

(declare-fun e!1472574 () Bool)

(declare-fun tp!728856 () Bool)

(assert (=> b!2297886 (= e!1472574 (and tp_is_empty!10683 tp!728856))))

(assert (=> b!2297370 (= tp!728733 e!1472574)))

(assert (= (and b!2297370 ((_ is Cons!27358) (t!205450 input!1722))) b!2297886))

(declare-fun b!2297889 () Bool)

(declare-fun e!1472575 () Bool)

(declare-fun tp!728859 () Bool)

(assert (=> b!2297889 (= e!1472575 tp!728859)))

(declare-fun b!2297888 () Bool)

(declare-fun tp!728860 () Bool)

(declare-fun tp!728857 () Bool)

(assert (=> b!2297888 (= e!1472575 (and tp!728860 tp!728857))))

(assert (=> b!2297371 (= tp!728738 e!1472575)))

(declare-fun b!2297887 () Bool)

(assert (=> b!2297887 (= e!1472575 tp_is_empty!10683)))

(declare-fun b!2297890 () Bool)

(declare-fun tp!728858 () Bool)

(declare-fun tp!728861 () Bool)

(assert (=> b!2297890 (= e!1472575 (and tp!728858 tp!728861))))

(assert (= (and b!2297371 ((_ is ElementMatch!6731) (regex!4383 otherR!12))) b!2297887))

(assert (= (and b!2297371 ((_ is Concat!11277) (regex!4383 otherR!12))) b!2297888))

(assert (= (and b!2297371 ((_ is Star!6731) (regex!4383 otherR!12))) b!2297889))

(assert (= (and b!2297371 ((_ is Union!6731) (regex!4383 otherR!12))) b!2297890))

(declare-fun b!2297891 () Bool)

(declare-fun e!1472576 () Bool)

(declare-fun tp!728862 () Bool)

(assert (=> b!2297891 (= e!1472576 (and tp_is_empty!10683 tp!728862))))

(assert (=> b!2297377 (= tp!728736 e!1472576)))

(assert (= (and b!2297377 ((_ is Cons!27358) (originalCharacters!5153 (h!32761 tokens!456)))) b!2297891))

(declare-fun b!2297894 () Bool)

(declare-fun e!1472577 () Bool)

(declare-fun tp!728865 () Bool)

(assert (=> b!2297894 (= e!1472577 tp!728865)))

(declare-fun b!2297893 () Bool)

(declare-fun tp!728866 () Bool)

(declare-fun tp!728863 () Bool)

(assert (=> b!2297893 (= e!1472577 (and tp!728866 tp!728863))))

(assert (=> b!2297388 (= tp!728723 e!1472577)))

(declare-fun b!2297892 () Bool)

(assert (=> b!2297892 (= e!1472577 tp_is_empty!10683)))

(declare-fun b!2297895 () Bool)

(declare-fun tp!728864 () Bool)

(declare-fun tp!728867 () Bool)

(assert (=> b!2297895 (= e!1472577 (and tp!728864 tp!728867))))

(assert (= (and b!2297388 ((_ is ElementMatch!6731) (regex!4383 r!2363))) b!2297892))

(assert (= (and b!2297388 ((_ is Concat!11277) (regex!4383 r!2363))) b!2297893))

(assert (= (and b!2297388 ((_ is Star!6731) (regex!4383 r!2363))) b!2297894))

(assert (= (and b!2297388 ((_ is Union!6731) (regex!4383 r!2363))) b!2297895))

(declare-fun b!2297896 () Bool)

(declare-fun e!1472578 () Bool)

(declare-fun tp!728868 () Bool)

(assert (=> b!2297896 (= e!1472578 (and tp_is_empty!10683 tp!728868))))

(assert (=> b!2297389 (= tp!728724 e!1472578)))

(assert (= (and b!2297389 ((_ is Cons!27358) (t!205450 otherP!12))) b!2297896))

(declare-fun b!2297899 () Bool)

(declare-fun e!1472579 () Bool)

(declare-fun tp!728871 () Bool)

(assert (=> b!2297899 (= e!1472579 tp!728871)))

(declare-fun b!2297898 () Bool)

(declare-fun tp!728872 () Bool)

(declare-fun tp!728869 () Bool)

(assert (=> b!2297898 (= e!1472579 (and tp!728872 tp!728869))))

(assert (=> b!2297376 (= tp!728737 e!1472579)))

(declare-fun b!2297897 () Bool)

(assert (=> b!2297897 (= e!1472579 tp_is_empty!10683)))

(declare-fun b!2297900 () Bool)

(declare-fun tp!728870 () Bool)

(declare-fun tp!728873 () Bool)

(assert (=> b!2297900 (= e!1472579 (and tp!728870 tp!728873))))

(assert (= (and b!2297376 ((_ is ElementMatch!6731) (regex!4383 (rule!6725 (h!32761 tokens!456))))) b!2297897))

(assert (= (and b!2297376 ((_ is Concat!11277) (regex!4383 (rule!6725 (h!32761 tokens!456))))) b!2297898))

(assert (= (and b!2297376 ((_ is Star!6731) (regex!4383 (rule!6725 (h!32761 tokens!456))))) b!2297899))

(assert (= (and b!2297376 ((_ is Union!6731) (regex!4383 (rule!6725 (h!32761 tokens!456))))) b!2297900))

(declare-fun b_lambda!73209 () Bool)

(assert (= b_lambda!73195 (or (and b!2297866 b_free!69275 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (and b!2297855 b_free!69271 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (and b!2297367 b_free!69259 (= (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (and b!2297379 b_free!69247 (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (and b!2297359 b_free!69251 (= (toChars!6044 (transformation!4383 r!2363)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (and b!2297386 b_free!69255) b_lambda!73209)))

(declare-fun b_lambda!73211 () Bool)

(assert (= b_lambda!73207 (or (and b!2297866 b_free!69275 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (and b!2297855 b_free!69271 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (and b!2297367 b_free!69259 (= (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (and b!2297379 b_free!69247 (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (and b!2297359 b_free!69251 (= (toChars!6044 (transformation!4383 r!2363)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (and b!2297386 b_free!69255) b_lambda!73211)))

(check-sat b_and!182873 (not b!2297667) (not d!679497) (not b_next!69975) (not b!2297888) (not d!679613) b_and!182885 (not b!2297776) (not d!679635) (not b!2297895) (not d!679605) (not b_lambda!73211) (not b!2297765) (not d!679615) (not b_lambda!73209) (not b!2297787) (not b!2297812) (not b_next!69961) (not b!2297419) (not d!679619) (not d!679583) (not b!2297795) b_and!182875 (not b!2297773) (not d!679595) (not b!2297719) (not d!679589) (not b!2297836) (not b!2297796) (not b!2297768) (not b!2297685) (not b!2297705) (not b!2297808) (not b!2297441) (not d!679475) (not b!2297899) (not b!2297733) (not d!679625) (not b!2297853) b_and!182881 (not b_next!69973) (not b!2297878) (not b!2297721) (not b_next!69953) (not b_lambda!73205) (not b!2297837) (not d!679621) (not b_next!69963) (not d!679599) (not d!679601) (not b!2297797) (not b_next!69955) (not b_next!69959) (not b!2297840) (not b!2297898) (not b!2297811) (not b!2297885) (not b!2297763) (not b!2297716) (not d!679501) (not b!2297792) (not d!679603) (not b_next!69979) (not b!2297865) (not b_next!69957) (not b!2297854) (not b!2297900) (not d!679499) (not b!2297427) b_and!182817 (not tb!137239) (not b!2297720) (not tb!137263) (not b!2297440) (not b!2297891) (not b!2297731) (not b!2297880) (not d!679607) (not b!2297852) b_and!182813 (not d!679575) (not b!2297833) (not b_next!69949) (not b!2297623) (not b!2297886) (not b!2297879) (not b!2297864) b_and!182809 (not b_next!69951) (not b!2297890) (not b!2297625) (not b!2297784) (not d!679609) (not bm!136913) b_and!182877 tp_is_empty!10683 (not d!679483) (not d!679631) (not b!2297841) (not b!2297624) b_and!182821 (not bm!136910) (not d!679587) (not b!2297889) (not b!2297813) (not b!2297771) (not b!2297732) (not d!679485) (not b!2297769) (not b!2297832) (not b!2297627) (not b!2297434) (not b!2297894) (not b!2297896) b_and!182883 (not d!679585) b_and!182887 (not b!2297834) (not d!679495) (not d!679493) (not b!2297703) (not b_next!69977) (not d!679627) (not b!2297893) (not b!2297446) (not b!2297777) (not d!679569) b_and!182879 (not b!2297835) (not b!2297807) (not b!2297838))
(check-sat b_and!182873 (not b_next!69961) b_and!182875 (not b_next!69979) (not b_next!69957) b_and!182817 b_and!182877 b_and!182821 b_and!182883 b_and!182887 (not b_next!69977) b_and!182879 (not b_next!69975) b_and!182885 b_and!182881 (not b_next!69973) (not b_next!69953) (not b_next!69963) (not b_next!69955) (not b_next!69959) b_and!182813 (not b_next!69949) b_and!182809 (not b_next!69951))
(get-model)

(declare-fun d!679645 () Bool)

(declare-fun lt!852402 () Bool)

(assert (=> d!679645 (= lt!852402 (select (content!3678 rules!1750) (rule!6725 (_1!16119 (get!8246 lt!852395)))))))

(declare-fun e!1472584 () Bool)

(assert (=> d!679645 (= lt!852402 e!1472584)))

(declare-fun res!982533 () Bool)

(assert (=> d!679645 (=> (not res!982533) (not e!1472584))))

(assert (=> d!679645 (= res!982533 ((_ is Cons!27359) rules!1750))))

(assert (=> d!679645 (= (contains!4765 rules!1750 (rule!6725 (_1!16119 (get!8246 lt!852395)))) lt!852402)))

(declare-fun b!2297904 () Bool)

(declare-fun e!1472583 () Bool)

(assert (=> b!2297904 (= e!1472584 e!1472583)))

(declare-fun res!982534 () Bool)

(assert (=> b!2297904 (=> res!982534 e!1472583)))

(assert (=> b!2297904 (= res!982534 (= (h!32760 rules!1750) (rule!6725 (_1!16119 (get!8246 lt!852395)))))))

(declare-fun b!2297905 () Bool)

(assert (=> b!2297905 (= e!1472583 (contains!4765 (t!205451 rules!1750) (rule!6725 (_1!16119 (get!8246 lt!852395)))))))

(assert (= (and d!679645 res!982533) b!2297904))

(assert (= (and b!2297904 (not res!982534)) b!2297905))

(assert (=> d!679645 m!2725013))

(declare-fun m!2725185 () Bool)

(assert (=> d!679645 m!2725185))

(declare-fun m!2725187 () Bool)

(assert (=> b!2297905 m!2725187))

(assert (=> b!2297835 d!679645))

(declare-fun d!679647 () Bool)

(assert (=> d!679647 (= (get!8246 lt!852395) (v!30464 lt!852395))))

(assert (=> b!2297835 d!679647))

(assert (=> d!679627 d!679623))

(assert (=> d!679627 d!679619))

(declare-fun d!679649 () Bool)

(assert (=> d!679649 (isPrefix!2373 lt!852265 (++!6689 lt!852265 (_2!16119 lt!852272)))))

(assert (=> d!679649 true))

(declare-fun _$46!1332 () Unit!40251)

(assert (=> d!679649 (= (choose!13415 lt!852265 (_2!16119 lt!852272)) _$46!1332)))

(declare-fun bs!457474 () Bool)

(assert (= bs!457474 d!679649))

(assert (=> bs!457474 m!2724731))

(assert (=> bs!457474 m!2724731))

(assert (=> bs!457474 m!2724733))

(assert (=> d!679627 d!679649))

(declare-fun d!679651 () Bool)

(assert (=> d!679651 (= (inv!36972 (tag!4873 (h!32760 (t!205451 rules!1750)))) (= (mod (str.len (value!138734 (tag!4873 (h!32760 (t!205451 rules!1750))))) 2) 0))))

(assert (=> b!2297865 d!679651))

(declare-fun d!679653 () Bool)

(declare-fun res!982535 () Bool)

(declare-fun e!1472585 () Bool)

(assert (=> d!679653 (=> (not res!982535) (not e!1472585))))

(assert (=> d!679653 (= res!982535 (semiInverseModEq!1778 (toChars!6044 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toValue!6185 (transformation!4383 (h!32760 (t!205451 rules!1750))))))))

(assert (=> d!679653 (= (inv!36976 (transformation!4383 (h!32760 (t!205451 rules!1750)))) e!1472585)))

(declare-fun b!2297906 () Bool)

(assert (=> b!2297906 (= e!1472585 (equivClasses!1697 (toChars!6044 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toValue!6185 (transformation!4383 (h!32760 (t!205451 rules!1750))))))))

(assert (= (and d!679653 res!982535) b!2297906))

(declare-fun m!2725189 () Bool)

(assert (=> d!679653 m!2725189))

(declare-fun m!2725191 () Bool)

(assert (=> b!2297906 m!2725191))

(assert (=> b!2297865 d!679653))

(declare-fun b!2297910 () Bool)

(declare-fun e!1472587 () Bool)

(declare-fun lt!852403 () List!27452)

(assert (=> b!2297910 (= e!1472587 (or (not (= (_2!16119 (get!8246 lt!852395)) Nil!27358)) (= lt!852403 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395)))))))))

(declare-fun b!2297908 () Bool)

(declare-fun e!1472586 () List!27452)

(assert (=> b!2297908 (= e!1472586 (Cons!27358 (h!32759 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))) (++!6689 (t!205450 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))) (_2!16119 (get!8246 lt!852395)))))))

(declare-fun b!2297909 () Bool)

(declare-fun res!982537 () Bool)

(assert (=> b!2297909 (=> (not res!982537) (not e!1472587))))

(assert (=> b!2297909 (= res!982537 (= (size!21562 lt!852403) (+ (size!21562 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))) (size!21562 (_2!16119 (get!8246 lt!852395))))))))

(declare-fun b!2297907 () Bool)

(assert (=> b!2297907 (= e!1472586 (_2!16119 (get!8246 lt!852395)))))

(declare-fun d!679655 () Bool)

(assert (=> d!679655 e!1472587))

(declare-fun res!982536 () Bool)

(assert (=> d!679655 (=> (not res!982536) (not e!1472587))))

(assert (=> d!679655 (= res!982536 (= (content!3679 lt!852403) ((_ map or) (content!3679 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))) (content!3679 (_2!16119 (get!8246 lt!852395))))))))

(assert (=> d!679655 (= lt!852403 e!1472586)))

(declare-fun c!364300 () Bool)

(assert (=> d!679655 (= c!364300 ((_ is Nil!27358) (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))))))

(assert (=> d!679655 (= (++!6689 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395)))) (_2!16119 (get!8246 lt!852395))) lt!852403)))

(assert (= (and d!679655 c!364300) b!2297907))

(assert (= (and d!679655 (not c!364300)) b!2297908))

(assert (= (and d!679655 res!982536) b!2297909))

(assert (= (and b!2297909 res!982537) b!2297910))

(declare-fun m!2725193 () Bool)

(assert (=> b!2297908 m!2725193))

(declare-fun m!2725195 () Bool)

(assert (=> b!2297909 m!2725195))

(assert (=> b!2297909 m!2725127))

(declare-fun m!2725197 () Bool)

(assert (=> b!2297909 m!2725197))

(assert (=> b!2297909 m!2725131))

(declare-fun m!2725199 () Bool)

(assert (=> d!679655 m!2725199))

(assert (=> d!679655 m!2725127))

(declare-fun m!2725201 () Bool)

(assert (=> d!679655 m!2725201))

(declare-fun m!2725203 () Bool)

(assert (=> d!679655 m!2725203))

(assert (=> b!2297834 d!679655))

(declare-fun d!679657 () Bool)

(assert (=> d!679657 (= (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395)))) (list!10753 (c!364220 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))))))

(declare-fun bs!457475 () Bool)

(assert (= bs!457475 d!679657))

(declare-fun m!2725205 () Bool)

(assert (=> bs!457475 m!2725205))

(assert (=> b!2297834 d!679657))

(declare-fun d!679659 () Bool)

(declare-fun lt!852404 () BalanceConc!17556)

(assert (=> d!679659 (= (list!10749 lt!852404) (originalCharacters!5153 (_1!16119 (get!8246 lt!852395))))))

(assert (=> d!679659 (= lt!852404 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395))))) (value!138735 (_1!16119 (get!8246 lt!852395)))))))

(assert (=> d!679659 (= (charsOf!2771 (_1!16119 (get!8246 lt!852395))) lt!852404)))

(declare-fun b_lambda!73213 () Bool)

(assert (=> (not b_lambda!73213) (not d!679659)))

(declare-fun tb!137279 () Bool)

(declare-fun t!205504 () Bool)

(assert (=> (and b!2297367 (= (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205504) tb!137279))

(declare-fun b!2297911 () Bool)

(declare-fun e!1472588 () Bool)

(declare-fun tp!728874 () Bool)

(assert (=> b!2297911 (= e!1472588 (and (inv!36979 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395))))) (value!138735 (_1!16119 (get!8246 lt!852395)))))) tp!728874))))

(declare-fun result!167358 () Bool)

(assert (=> tb!137279 (= result!167358 (and (inv!36980 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395))))) (value!138735 (_1!16119 (get!8246 lt!852395))))) e!1472588))))

(assert (= tb!137279 b!2297911))

(declare-fun m!2725207 () Bool)

(assert (=> b!2297911 m!2725207))

(declare-fun m!2725209 () Bool)

(assert (=> tb!137279 m!2725209))

(assert (=> d!679659 t!205504))

(declare-fun b_and!182889 () Bool)

(assert (= b_and!182879 (and (=> t!205504 result!167358) b_and!182889)))

(declare-fun tb!137281 () Bool)

(declare-fun t!205506 () Bool)

(assert (=> (and b!2297386 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205506) tb!137281))

(declare-fun result!167360 () Bool)

(assert (= result!167360 result!167358))

(assert (=> d!679659 t!205506))

(declare-fun b_and!182891 () Bool)

(assert (= b_and!182877 (and (=> t!205506 result!167360) b_and!182891)))

(declare-fun tb!137283 () Bool)

(declare-fun t!205508 () Bool)

(assert (=> (and b!2297866 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205508) tb!137283))

(declare-fun result!167362 () Bool)

(assert (= result!167362 result!167358))

(assert (=> d!679659 t!205508))

(declare-fun b_and!182893 () Bool)

(assert (= b_and!182887 (and (=> t!205508 result!167362) b_and!182893)))

(declare-fun tb!137285 () Bool)

(declare-fun t!205510 () Bool)

(assert (=> (and b!2297359 (= (toChars!6044 (transformation!4383 r!2363)) (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205510) tb!137285))

(declare-fun result!167364 () Bool)

(assert (= result!167364 result!167358))

(assert (=> d!679659 t!205510))

(declare-fun b_and!182895 () Bool)

(assert (= b_and!182875 (and (=> t!205510 result!167364) b_and!182895)))

(declare-fun t!205512 () Bool)

(declare-fun tb!137287 () Bool)

(assert (=> (and b!2297855 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205512) tb!137287))

(declare-fun result!167366 () Bool)

(assert (= result!167366 result!167358))

(assert (=> d!679659 t!205512))

(declare-fun b_and!182897 () Bool)

(assert (= b_and!182883 (and (=> t!205512 result!167366) b_and!182897)))

(declare-fun tb!137289 () Bool)

(declare-fun t!205514 () Bool)

(assert (=> (and b!2297379 (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205514) tb!137289))

(declare-fun result!167368 () Bool)

(assert (= result!167368 result!167358))

(assert (=> d!679659 t!205514))

(declare-fun b_and!182899 () Bool)

(assert (= b_and!182873 (and (=> t!205514 result!167368) b_and!182899)))

(declare-fun m!2725211 () Bool)

(assert (=> d!679659 m!2725211))

(declare-fun m!2725213 () Bool)

(assert (=> d!679659 m!2725213))

(assert (=> b!2297834 d!679659))

(assert (=> b!2297834 d!679647))

(declare-fun d!679661 () Bool)

(declare-fun lt!852405 () Int)

(assert (=> d!679661 (>= lt!852405 0)))

(declare-fun e!1472589 () Int)

(assert (=> d!679661 (= lt!852405 e!1472589)))

(declare-fun c!364301 () Bool)

(assert (=> d!679661 (= c!364301 ((_ is Nil!27358) (_2!16119 (get!8246 lt!852395))))))

(assert (=> d!679661 (= (size!21562 (_2!16119 (get!8246 lt!852395))) lt!852405)))

(declare-fun b!2297912 () Bool)

(assert (=> b!2297912 (= e!1472589 0)))

(declare-fun b!2297913 () Bool)

(assert (=> b!2297913 (= e!1472589 (+ 1 (size!21562 (t!205450 (_2!16119 (get!8246 lt!852395))))))))

(assert (= (and d!679661 c!364301) b!2297912))

(assert (= (and d!679661 (not c!364301)) b!2297913))

(declare-fun m!2725215 () Bool)

(assert (=> b!2297913 m!2725215))

(assert (=> b!2297837 d!679661))

(assert (=> b!2297837 d!679647))

(declare-fun d!679663 () Bool)

(declare-fun lt!852406 () Int)

(assert (=> d!679663 (>= lt!852406 0)))

(declare-fun e!1472590 () Int)

(assert (=> d!679663 (= lt!852406 e!1472590)))

(declare-fun c!364302 () Bool)

(assert (=> d!679663 (= c!364302 ((_ is Nil!27358) input!1722))))

(assert (=> d!679663 (= (size!21562 input!1722) lt!852406)))

(declare-fun b!2297914 () Bool)

(assert (=> b!2297914 (= e!1472590 0)))

(declare-fun b!2297915 () Bool)

(assert (=> b!2297915 (= e!1472590 (+ 1 (size!21562 (t!205450 input!1722))))))

(assert (= (and d!679663 c!364302) b!2297914))

(assert (= (and d!679663 (not c!364302)) b!2297915))

(declare-fun m!2725217 () Bool)

(assert (=> b!2297915 m!2725217))

(assert (=> b!2297837 d!679663))

(declare-fun d!679665 () Bool)

(assert (=> d!679665 true))

(declare-fun lambda!85885 () Int)

(declare-fun order!15253 () Int)

(declare-fun order!15255 () Int)

(declare-fun dynLambda!11891 (Int Int) Int)

(declare-fun dynLambda!11892 (Int Int) Int)

(assert (=> d!679665 (< (dynLambda!11891 order!15253 (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) (dynLambda!11892 order!15255 lambda!85885))))

(declare-fun Forall2!714 (Int) Bool)

(assert (=> d!679665 (= (equivClasses!1697 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) (Forall2!714 lambda!85885))))

(declare-fun bs!457491 () Bool)

(assert (= bs!457491 d!679665))

(declare-fun m!2725393 () Bool)

(assert (=> bs!457491 m!2725393))

(assert (=> b!2297841 d!679665))

(declare-fun d!679753 () Bool)

(declare-fun lt!852436 () Int)

(assert (=> d!679753 (>= lt!852436 0)))

(declare-fun e!1472685 () Int)

(assert (=> d!679753 (= lt!852436 e!1472685)))

(declare-fun c!364355 () Bool)

(assert (=> d!679753 (= c!364355 ((_ is Nil!27358) (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))

(assert (=> d!679753 (= (size!21562 (list!10749 (charsOf!2771 (head!5020 tokens!456)))) lt!852436)))

(declare-fun b!2298083 () Bool)

(assert (=> b!2298083 (= e!1472685 0)))

(declare-fun b!2298084 () Bool)

(assert (=> b!2298084 (= e!1472685 (+ 1 (size!21562 (t!205450 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))))

(assert (= (and d!679753 c!364355) b!2298083))

(assert (= (and d!679753 (not c!364355)) b!2298084))

(declare-fun m!2725403 () Bool)

(assert (=> b!2298084 m!2725403))

(assert (=> d!679609 d!679753))

(assert (=> d!679609 d!679601))

(declare-fun d!679759 () Bool)

(declare-fun lt!852439 () Int)

(assert (=> d!679759 (= lt!852439 (size!21562 (list!10753 (c!364220 (charsOf!2771 (head!5020 tokens!456))))))))

(assert (=> d!679759 (= lt!852439 (ite ((_ is Empty!8914) (c!364220 (charsOf!2771 (head!5020 tokens!456)))) 0 (ite ((_ is Leaf!13091) (c!364220 (charsOf!2771 (head!5020 tokens!456)))) (csize!18059 (c!364220 (charsOf!2771 (head!5020 tokens!456)))) (csize!18058 (c!364220 (charsOf!2771 (head!5020 tokens!456)))))))))

(assert (=> d!679759 (= (size!21566 (c!364220 (charsOf!2771 (head!5020 tokens!456)))) lt!852439)))

(declare-fun bs!457492 () Bool)

(assert (= bs!457492 d!679759))

(assert (=> bs!457492 m!2725063))

(assert (=> bs!457492 m!2725063))

(declare-fun m!2725409 () Bool)

(assert (=> bs!457492 m!2725409))

(assert (=> d!679609 d!679759))

(declare-fun d!679763 () Bool)

(declare-fun isBalanced!2687 (Conc!8914) Bool)

(assert (=> d!679763 (= (inv!36980 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456)))) (isBalanced!2687 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456))))))))

(declare-fun bs!457494 () Bool)

(assert (= bs!457494 d!679763))

(declare-fun m!2725417 () Bool)

(assert (=> bs!457494 m!2725417))

(assert (=> tb!137239 d!679763))

(declare-fun d!679769 () Bool)

(declare-fun e!1472696 () Bool)

(assert (=> d!679769 e!1472696))

(declare-fun res!982597 () Bool)

(assert (=> d!679769 (=> res!982597 e!1472696)))

(declare-fun lt!852441 () Bool)

(assert (=> d!679769 (= res!982597 (not lt!852441))))

(declare-fun e!1472695 () Bool)

(assert (=> d!679769 (= lt!852441 e!1472695)))

(declare-fun res!982596 () Bool)

(assert (=> d!679769 (=> res!982596 e!1472695)))

(assert (=> d!679769 (= res!982596 ((_ is Nil!27358) (tail!3319 lt!852265)))))

(assert (=> d!679769 (= (isPrefix!2373 (tail!3319 lt!852265) (tail!3319 (++!6689 lt!852265 (_2!16119 lt!852272)))) lt!852441)))

(declare-fun b!2298097 () Bool)

(assert (=> b!2298097 (= e!1472696 (>= (size!21562 (tail!3319 (++!6689 lt!852265 (_2!16119 lt!852272)))) (size!21562 (tail!3319 lt!852265))))))

(declare-fun b!2298095 () Bool)

(declare-fun res!982595 () Bool)

(declare-fun e!1472694 () Bool)

(assert (=> b!2298095 (=> (not res!982595) (not e!1472694))))

(assert (=> b!2298095 (= res!982595 (= (head!5022 (tail!3319 lt!852265)) (head!5022 (tail!3319 (++!6689 lt!852265 (_2!16119 lt!852272))))))))

(declare-fun b!2298094 () Bool)

(assert (=> b!2298094 (= e!1472695 e!1472694)))

(declare-fun res!982598 () Bool)

(assert (=> b!2298094 (=> (not res!982598) (not e!1472694))))

(assert (=> b!2298094 (= res!982598 (not ((_ is Nil!27358) (tail!3319 (++!6689 lt!852265 (_2!16119 lt!852272))))))))

(declare-fun b!2298096 () Bool)

(assert (=> b!2298096 (= e!1472694 (isPrefix!2373 (tail!3319 (tail!3319 lt!852265)) (tail!3319 (tail!3319 (++!6689 lt!852265 (_2!16119 lt!852272))))))))

(assert (= (and d!679769 (not res!982596)) b!2298094))

(assert (= (and b!2298094 res!982598) b!2298095))

(assert (= (and b!2298095 res!982595) b!2298096))

(assert (= (and d!679769 (not res!982597)) b!2298097))

(assert (=> b!2298097 m!2725115))

(declare-fun m!2725421 () Bool)

(assert (=> b!2298097 m!2725421))

(assert (=> b!2298097 m!2725093))

(declare-fun m!2725423 () Bool)

(assert (=> b!2298097 m!2725423))

(assert (=> b!2298095 m!2725093))

(declare-fun m!2725425 () Bool)

(assert (=> b!2298095 m!2725425))

(assert (=> b!2298095 m!2725115))

(declare-fun m!2725427 () Bool)

(assert (=> b!2298095 m!2725427))

(assert (=> b!2298096 m!2725093))

(declare-fun m!2725429 () Bool)

(assert (=> b!2298096 m!2725429))

(assert (=> b!2298096 m!2725115))

(declare-fun m!2725433 () Bool)

(assert (=> b!2298096 m!2725433))

(assert (=> b!2298096 m!2725429))

(assert (=> b!2298096 m!2725433))

(declare-fun m!2725435 () Bool)

(assert (=> b!2298096 m!2725435))

(assert (=> b!2297812 d!679769))

(declare-fun d!679775 () Bool)

(assert (=> d!679775 (= (tail!3319 lt!852265) (t!205450 lt!852265))))

(assert (=> b!2297812 d!679775))

(declare-fun d!679777 () Bool)

(assert (=> d!679777 (= (tail!3319 (++!6689 lt!852265 (_2!16119 lt!852272))) (t!205450 (++!6689 lt!852265 (_2!16119 lt!852272))))))

(assert (=> b!2297812 d!679777))

(declare-fun d!679779 () Bool)

(declare-fun e!1472705 () Bool)

(assert (=> d!679779 e!1472705))

(declare-fun res!982605 () Bool)

(assert (=> d!679779 (=> (not res!982605) (not e!1472705))))

(declare-fun lt!852447 () BalanceConc!17556)

(assert (=> d!679779 (= res!982605 (= (list!10749 lt!852447) input!1722))))

(declare-fun fromList!544 (List!27452) Conc!8914)

(assert (=> d!679779 (= lt!852447 (BalanceConc!17557 (fromList!544 input!1722)))))

(assert (=> d!679779 (= (fromListB!1388 input!1722) lt!852447)))

(declare-fun b!2298110 () Bool)

(assert (=> b!2298110 (= e!1472705 (isBalanced!2687 (fromList!544 input!1722)))))

(assert (= (and d!679779 res!982605) b!2298110))

(declare-fun m!2725453 () Bool)

(assert (=> d!679779 m!2725453))

(declare-fun m!2725455 () Bool)

(assert (=> d!679779 m!2725455))

(assert (=> b!2298110 m!2725455))

(assert (=> b!2298110 m!2725455))

(declare-fun m!2725457 () Bool)

(assert (=> b!2298110 m!2725457))

(assert (=> d!679569 d!679779))

(declare-fun b!2298130 () Bool)

(declare-fun e!1472717 () List!27452)

(declare-fun list!10755 (IArray!17833) List!27452)

(assert (=> b!2298130 (= e!1472717 (list!10755 (xs!11856 (c!364220 (_2!16117 lt!852274)))))))

(declare-fun b!2298129 () Bool)

(declare-fun e!1472716 () List!27452)

(assert (=> b!2298129 (= e!1472716 e!1472717)))

(declare-fun c!364369 () Bool)

(assert (=> b!2298129 (= c!364369 ((_ is Leaf!13091) (c!364220 (_2!16117 lt!852274))))))

(declare-fun d!679793 () Bool)

(declare-fun c!364368 () Bool)

(assert (=> d!679793 (= c!364368 ((_ is Empty!8914) (c!364220 (_2!16117 lt!852274))))))

(assert (=> d!679793 (= (list!10753 (c!364220 (_2!16117 lt!852274))) e!1472716)))

(declare-fun b!2298131 () Bool)

(assert (=> b!2298131 (= e!1472717 (++!6689 (list!10753 (left!20734 (c!364220 (_2!16117 lt!852274)))) (list!10753 (right!21064 (c!364220 (_2!16117 lt!852274))))))))

(declare-fun b!2298128 () Bool)

(assert (=> b!2298128 (= e!1472716 Nil!27358)))

(assert (= (and d!679793 c!364368) b!2298128))

(assert (= (and d!679793 (not c!364368)) b!2298129))

(assert (= (and b!2298129 c!364369) b!2298130))

(assert (= (and b!2298129 (not c!364369)) b!2298131))

(declare-fun m!2725463 () Bool)

(assert (=> b!2298130 m!2725463))

(declare-fun m!2725465 () Bool)

(assert (=> b!2298131 m!2725465))

(declare-fun m!2725467 () Bool)

(assert (=> b!2298131 m!2725467))

(assert (=> b!2298131 m!2725465))

(assert (=> b!2298131 m!2725467))

(declare-fun m!2725469 () Bool)

(assert (=> b!2298131 m!2725469))

(assert (=> d!679499 d!679793))

(declare-fun d!679797 () Bool)

(declare-fun charsToBigInt!0 (List!27451 Int) Int)

(assert (=> d!679797 (= (inv!15 (value!138735 (h!32761 tokens!456))) (= (charsToBigInt!0 (text!32264 (value!138735 (h!32761 tokens!456))) 0) (value!138730 (value!138735 (h!32761 tokens!456)))))))

(declare-fun bs!457502 () Bool)

(assert (= bs!457502 d!679797))

(declare-fun m!2725477 () Bool)

(assert (=> bs!457502 m!2725477))

(assert (=> b!2297719 d!679797))

(declare-fun d!679801 () Bool)

(declare-fun lt!852449 () Bool)

(assert (=> d!679801 (= lt!852449 (select (content!3678 (t!205451 rules!1750)) otherR!12))))

(declare-fun e!1472725 () Bool)

(assert (=> d!679801 (= lt!852449 e!1472725)))

(declare-fun res!982611 () Bool)

(assert (=> d!679801 (=> (not res!982611) (not e!1472725))))

(assert (=> d!679801 (= res!982611 ((_ is Cons!27359) (t!205451 rules!1750)))))

(assert (=> d!679801 (= (contains!4765 (t!205451 rules!1750) otherR!12) lt!852449)))

(declare-fun b!2298144 () Bool)

(declare-fun e!1472724 () Bool)

(assert (=> b!2298144 (= e!1472725 e!1472724)))

(declare-fun res!982612 () Bool)

(assert (=> b!2298144 (=> res!982612 e!1472724)))

(assert (=> b!2298144 (= res!982612 (= (h!32760 (t!205451 rules!1750)) otherR!12))))

(declare-fun b!2298145 () Bool)

(assert (=> b!2298145 (= e!1472724 (contains!4765 (t!205451 (t!205451 rules!1750)) otherR!12))))

(assert (= (and d!679801 res!982611) b!2298144))

(assert (= (and b!2298144 (not res!982612)) b!2298145))

(declare-fun m!2725479 () Bool)

(assert (=> d!679801 m!2725479))

(declare-fun m!2725481 () Bool)

(assert (=> d!679801 m!2725481))

(declare-fun m!2725483 () Bool)

(assert (=> b!2298145 m!2725483))

(assert (=> b!2297705 d!679801))

(declare-fun d!679803 () Bool)

(assert (=> d!679803 (= (list!10749 (_2!16117 lt!852345)) (list!10753 (c!364220 (_2!16117 lt!852345))))))

(declare-fun bs!457503 () Bool)

(assert (= bs!457503 d!679803))

(declare-fun m!2725485 () Bool)

(assert (=> bs!457503 m!2725485))

(assert (=> b!2297627 d!679803))

(declare-fun b!2298200 () Bool)

(declare-fun e!1472759 () Bool)

(declare-fun lt!852469 () tuple2!27216)

(assert (=> b!2298200 (= e!1472759 (= (_2!16118 lt!852469) (list!10749 (seqFromList!3087 input!1722))))))

(declare-fun b!2298201 () Bool)

(declare-fun e!1472760 () Bool)

(assert (=> b!2298201 (= e!1472760 (not (isEmpty!15602 (_1!16118 lt!852469))))))

(declare-fun b!2298202 () Bool)

(assert (=> b!2298202 (= e!1472759 e!1472760)))

(declare-fun res!982636 () Bool)

(assert (=> b!2298202 (= res!982636 (< (size!21562 (_2!16118 lt!852469)) (size!21562 (list!10749 (seqFromList!3087 input!1722)))))))

(assert (=> b!2298202 (=> (not res!982636) (not e!1472760))))

(declare-fun b!2298203 () Bool)

(declare-fun e!1472761 () tuple2!27216)

(assert (=> b!2298203 (= e!1472761 (tuple2!27217 Nil!27360 (list!10749 (seqFromList!3087 input!1722))))))

(declare-fun b!2298204 () Bool)

(declare-fun lt!852470 () Option!5375)

(declare-fun lt!852468 () tuple2!27216)

(assert (=> b!2298204 (= e!1472761 (tuple2!27217 (Cons!27360 (_1!16119 (v!30464 lt!852470)) (_1!16118 lt!852468)) (_2!16118 lt!852468)))))

(assert (=> b!2298204 (= lt!852468 (lexList!1122 thiss!16613 rules!1750 (_2!16119 (v!30464 lt!852470))))))

(declare-fun d!679805 () Bool)

(assert (=> d!679805 e!1472759))

(declare-fun c!364391 () Bool)

(declare-fun size!21568 (List!27454) Int)

(assert (=> d!679805 (= c!364391 (> (size!21568 (_1!16118 lt!852469)) 0))))

(assert (=> d!679805 (= lt!852469 e!1472761)))

(declare-fun c!364390 () Bool)

(assert (=> d!679805 (= c!364390 ((_ is Some!5374) lt!852470))))

(assert (=> d!679805 (= lt!852470 (maxPrefix!2236 thiss!16613 rules!1750 (list!10749 (seqFromList!3087 input!1722))))))

(assert (=> d!679805 (= (lexList!1122 thiss!16613 rules!1750 (list!10749 (seqFromList!3087 input!1722))) lt!852469)))

(assert (= (and d!679805 c!364390) b!2298204))

(assert (= (and d!679805 (not c!364390)) b!2298203))

(assert (= (and d!679805 c!364391) b!2298202))

(assert (= (and d!679805 (not c!364391)) b!2298200))

(assert (= (and b!2298202 res!982636) b!2298201))

(declare-fun m!2725557 () Bool)

(assert (=> b!2298201 m!2725557))

(declare-fun m!2725559 () Bool)

(assert (=> b!2298202 m!2725559))

(assert (=> b!2298202 m!2724965))

(declare-fun m!2725561 () Bool)

(assert (=> b!2298202 m!2725561))

(declare-fun m!2725563 () Bool)

(assert (=> b!2298204 m!2725563))

(declare-fun m!2725565 () Bool)

(assert (=> d!679805 m!2725565))

(assert (=> d!679805 m!2724965))

(declare-fun m!2725567 () Bool)

(assert (=> d!679805 m!2725567))

(assert (=> b!2297627 d!679805))

(declare-fun d!679839 () Bool)

(assert (=> d!679839 (= (list!10749 (seqFromList!3087 input!1722)) (list!10753 (c!364220 (seqFromList!3087 input!1722))))))

(declare-fun bs!457513 () Bool)

(assert (= bs!457513 d!679839))

(declare-fun m!2725569 () Bool)

(assert (=> bs!457513 m!2725569))

(assert (=> b!2297627 d!679839))

(declare-fun d!679841 () Bool)

(assert (=> d!679841 (= r!2363 otherR!12)))

(assert (=> d!679841 true))

(declare-fun _$42!208 () Unit!40251)

(assert (=> d!679841 (= (choose!13414 rules!1750 r!2363 otherR!12) _$42!208)))

(assert (=> d!679587 d!679841))

(assert (=> d!679587 d!679585))

(assert (=> b!2297832 d!679647))

(declare-fun d!679843 () Bool)

(declare-fun dynLambda!11893 (Int BalanceConc!17556) TokenValue!4545)

(assert (=> d!679843 (= (apply!6647 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))) (seqFromList!3087 (originalCharacters!5153 (_1!16119 (get!8246 lt!852395))))) (dynLambda!11893 (toValue!6185 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395))))) (seqFromList!3087 (originalCharacters!5153 (_1!16119 (get!8246 lt!852395))))))))

(declare-fun b_lambda!73221 () Bool)

(assert (=> (not b_lambda!73221) (not d!679843)))

(declare-fun tb!137327 () Bool)

(declare-fun t!205556 () Bool)

(assert (=> (and b!2297866 (= (toValue!6185 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toValue!6185 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205556) tb!137327))

(declare-fun result!167408 () Bool)

(assert (=> tb!137327 (= result!167408 (inv!21 (dynLambda!11893 (toValue!6185 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395))))) (seqFromList!3087 (originalCharacters!5153 (_1!16119 (get!8246 lt!852395)))))))))

(declare-fun m!2725575 () Bool)

(assert (=> tb!137327 m!2725575))

(assert (=> d!679843 t!205556))

(declare-fun b_and!182937 () Bool)

(assert (= b_and!182885 (and (=> t!205556 result!167408) b_and!182937)))

(declare-fun t!205558 () Bool)

(declare-fun tb!137329 () Bool)

(assert (=> (and b!2297367 (= (toValue!6185 (transformation!4383 (h!32760 rules!1750))) (toValue!6185 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205558) tb!137329))

(declare-fun result!167412 () Bool)

(assert (= result!167412 result!167408))

(assert (=> d!679843 t!205558))

(declare-fun b_and!182939 () Bool)

(assert (= b_and!182821 (and (=> t!205558 result!167412) b_and!182939)))

(declare-fun tb!137331 () Bool)

(declare-fun t!205560 () Bool)

(assert (=> (and b!2297379 (= (toValue!6185 (transformation!4383 otherR!12)) (toValue!6185 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205560) tb!137331))

(declare-fun result!167414 () Bool)

(assert (= result!167414 result!167408))

(assert (=> d!679843 t!205560))

(declare-fun b_and!182941 () Bool)

(assert (= b_and!182809 (and (=> t!205560 result!167414) b_and!182941)))

(declare-fun tb!137333 () Bool)

(declare-fun t!205562 () Bool)

(assert (=> (and b!2297855 (= (toValue!6185 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (toValue!6185 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205562) tb!137333))

(declare-fun result!167416 () Bool)

(assert (= result!167416 result!167408))

(assert (=> d!679843 t!205562))

(declare-fun b_and!182943 () Bool)

(assert (= b_and!182881 (and (=> t!205562 result!167416) b_and!182943)))

(declare-fun tb!137335 () Bool)

(declare-fun t!205564 () Bool)

(assert (=> (and b!2297386 (= (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toValue!6185 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205564) tb!137335))

(declare-fun result!167418 () Bool)

(assert (= result!167418 result!167408))

(assert (=> d!679843 t!205564))

(declare-fun b_and!182945 () Bool)

(assert (= b_and!182817 (and (=> t!205564 result!167418) b_and!182945)))

(declare-fun tb!137337 () Bool)

(declare-fun t!205566 () Bool)

(assert (=> (and b!2297359 (= (toValue!6185 (transformation!4383 r!2363)) (toValue!6185 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205566) tb!137337))

(declare-fun result!167420 () Bool)

(assert (= result!167420 result!167408))

(assert (=> d!679843 t!205566))

(declare-fun b_and!182947 () Bool)

(assert (= b_and!182813 (and (=> t!205566 result!167420) b_and!182947)))

(assert (=> d!679843 m!2725145))

(declare-fun m!2725585 () Bool)

(assert (=> d!679843 m!2725585))

(assert (=> b!2297832 d!679843))

(declare-fun d!679853 () Bool)

(assert (=> d!679853 (= (seqFromList!3087 (originalCharacters!5153 (_1!16119 (get!8246 lt!852395)))) (fromListB!1388 (originalCharacters!5153 (_1!16119 (get!8246 lt!852395)))))))

(declare-fun bs!457516 () Bool)

(assert (= bs!457516 d!679853))

(declare-fun m!2725587 () Bool)

(assert (=> bs!457516 m!2725587))

(assert (=> b!2297832 d!679853))

(declare-fun d!679855 () Bool)

(declare-fun nullableFct!456 (Regex!6731) Bool)

(assert (=> d!679855 (= (nullable!1875 (regex!4383 otherR!12)) (nullableFct!456 (regex!4383 otherR!12)))))

(declare-fun bs!457517 () Bool)

(assert (= bs!457517 d!679855))

(declare-fun m!2725589 () Bool)

(assert (=> bs!457517 m!2725589))

(assert (=> b!2297434 d!679855))

(assert (=> d!679475 d!679589))

(declare-fun d!679857 () Bool)

(assert (=> d!679857 (= (isEmpty!15608 lt!852395) (not ((_ is Some!5374) lt!852395)))))

(assert (=> d!679631 d!679857))

(declare-fun d!679859 () Bool)

(declare-fun e!1472771 () Bool)

(assert (=> d!679859 e!1472771))

(declare-fun res!982642 () Bool)

(assert (=> d!679859 (=> res!982642 e!1472771)))

(declare-fun lt!852477 () Bool)

(assert (=> d!679859 (= res!982642 (not lt!852477))))

(declare-fun e!1472770 () Bool)

(assert (=> d!679859 (= lt!852477 e!1472770)))

(declare-fun res!982641 () Bool)

(assert (=> d!679859 (=> res!982641 e!1472770)))

(assert (=> d!679859 (= res!982641 ((_ is Nil!27358) input!1722))))

(assert (=> d!679859 (= (isPrefix!2373 input!1722 input!1722) lt!852477)))

(declare-fun b!2298215 () Bool)

(assert (=> b!2298215 (= e!1472771 (>= (size!21562 input!1722) (size!21562 input!1722)))))

(declare-fun b!2298213 () Bool)

(declare-fun res!982640 () Bool)

(declare-fun e!1472769 () Bool)

(assert (=> b!2298213 (=> (not res!982640) (not e!1472769))))

(assert (=> b!2298213 (= res!982640 (= (head!5022 input!1722) (head!5022 input!1722)))))

(declare-fun b!2298212 () Bool)

(assert (=> b!2298212 (= e!1472770 e!1472769)))

(declare-fun res!982643 () Bool)

(assert (=> b!2298212 (=> (not res!982643) (not e!1472769))))

(assert (=> b!2298212 (= res!982643 (not ((_ is Nil!27358) input!1722)))))

(declare-fun b!2298214 () Bool)

(assert (=> b!2298214 (= e!1472769 (isPrefix!2373 (tail!3319 input!1722) (tail!3319 input!1722)))))

(assert (= (and d!679859 (not res!982641)) b!2298212))

(assert (= (and b!2298212 res!982643) b!2298213))

(assert (= (and b!2298213 res!982640) b!2298214))

(assert (= (and d!679859 (not res!982642)) b!2298215))

(assert (=> b!2298215 m!2725035))

(assert (=> b!2298215 m!2725035))

(assert (=> b!2298213 m!2725039))

(assert (=> b!2298213 m!2725039))

(assert (=> b!2298214 m!2725043))

(assert (=> b!2298214 m!2725043))

(assert (=> b!2298214 m!2725043))

(assert (=> b!2298214 m!2725043))

(declare-fun m!2725595 () Bool)

(assert (=> b!2298214 m!2725595))

(assert (=> d!679631 d!679859))

(declare-fun d!679863 () Bool)

(assert (=> d!679863 (isPrefix!2373 input!1722 input!1722)))

(declare-fun lt!852481 () Unit!40251)

(declare-fun choose!13416 (List!27452 List!27452) Unit!40251)

(assert (=> d!679863 (= lt!852481 (choose!13416 input!1722 input!1722))))

(assert (=> d!679863 (= (lemmaIsPrefixRefl!1505 input!1722 input!1722) lt!852481)))

(declare-fun bs!457519 () Bool)

(assert (= bs!457519 d!679863))

(assert (=> bs!457519 m!2725135))

(declare-fun m!2725597 () Bool)

(assert (=> bs!457519 m!2725597))

(assert (=> d!679631 d!679863))

(declare-fun d!679865 () Bool)

(assert (=> d!679865 true))

(declare-fun lt!852484 () Bool)

(declare-fun lambda!85894 () Int)

(declare-fun forall!5500 (List!27453 Int) Bool)

(assert (=> d!679865 (= lt!852484 (forall!5500 rules!1750 lambda!85894))))

(declare-fun e!1472776 () Bool)

(assert (=> d!679865 (= lt!852484 e!1472776)))

(declare-fun res!982648 () Bool)

(assert (=> d!679865 (=> res!982648 e!1472776)))

(assert (=> d!679865 (= res!982648 (not ((_ is Cons!27359) rules!1750)))))

(assert (=> d!679865 (= (rulesValidInductive!1547 thiss!16613 rules!1750) lt!852484)))

(declare-fun b!2298220 () Bool)

(declare-fun e!1472777 () Bool)

(assert (=> b!2298220 (= e!1472776 e!1472777)))

(declare-fun res!982649 () Bool)

(assert (=> b!2298220 (=> (not res!982649) (not e!1472777))))

(assert (=> b!2298220 (= res!982649 (ruleValid!1473 thiss!16613 (h!32760 rules!1750)))))

(declare-fun b!2298221 () Bool)

(assert (=> b!2298221 (= e!1472777 (rulesValidInductive!1547 thiss!16613 (t!205451 rules!1750)))))

(assert (= (and d!679865 (not res!982648)) b!2298220))

(assert (= (and b!2298220 res!982649) b!2298221))

(declare-fun m!2725599 () Bool)

(assert (=> d!679865 m!2725599))

(declare-fun m!2725601 () Bool)

(assert (=> b!2298220 m!2725601))

(declare-fun m!2725603 () Bool)

(assert (=> b!2298221 m!2725603))

(assert (=> d!679631 d!679865))

(declare-fun d!679867 () Bool)

(declare-fun lt!852485 () Int)

(assert (=> d!679867 (>= lt!852485 0)))

(declare-fun e!1472778 () Int)

(assert (=> d!679867 (= lt!852485 e!1472778)))

(declare-fun c!364393 () Bool)

(assert (=> d!679867 (= c!364393 ((_ is Nil!27358) (originalCharacters!5153 (h!32761 tokens!456))))))

(assert (=> d!679867 (= (size!21562 (originalCharacters!5153 (h!32761 tokens!456))) lt!852485)))

(declare-fun b!2298224 () Bool)

(assert (=> b!2298224 (= e!1472778 0)))

(declare-fun b!2298225 () Bool)

(assert (=> b!2298225 (= e!1472778 (+ 1 (size!21562 (t!205450 (originalCharacters!5153 (h!32761 tokens!456))))))))

(assert (= (and d!679867 c!364393) b!2298224))

(assert (= (and d!679867 (not c!364393)) b!2298225))

(declare-fun m!2725605 () Bool)

(assert (=> b!2298225 m!2725605))

(assert (=> b!2297441 d!679867))

(declare-fun d!679869 () Bool)

(declare-fun lt!852488 () Bool)

(assert (=> d!679869 (= lt!852488 (isEmpty!15602 (list!10748 (_1!16117 lt!852345))))))

(declare-fun isEmpty!15609 (Conc!8915) Bool)

(assert (=> d!679869 (= lt!852488 (isEmpty!15609 (c!364222 (_1!16117 lt!852345))))))

(assert (=> d!679869 (= (isEmpty!15607 (_1!16117 lt!852345)) lt!852488)))

(declare-fun bs!457520 () Bool)

(assert (= bs!457520 d!679869))

(assert (=> bs!457520 m!2724963))

(assert (=> bs!457520 m!2724963))

(declare-fun m!2725607 () Bool)

(assert (=> bs!457520 m!2725607))

(declare-fun m!2725609 () Bool)

(assert (=> bs!457520 m!2725609))

(assert (=> b!2297623 d!679869))

(assert (=> d!679607 d!679605))

(declare-fun d!679871 () Bool)

(assert (=> d!679871 (ruleValid!1473 thiss!16613 r!2363)))

(assert (=> d!679871 true))

(declare-fun _$65!1165 () Unit!40251)

(assert (=> d!679871 (= (choose!13412 thiss!16613 r!2363 rules!1750) _$65!1165)))

(declare-fun bs!457521 () Bool)

(assert (= bs!457521 d!679871))

(assert (=> bs!457521 m!2724691))

(assert (=> d!679607 d!679871))

(assert (=> d!679607 d!679585))

(declare-fun bs!457522 () Bool)

(declare-fun d!679873 () Bool)

(assert (= bs!457522 (and d!679873 d!679865)))

(declare-fun lambda!85897 () Int)

(assert (=> bs!457522 (= lambda!85897 lambda!85894)))

(assert (=> d!679873 true))

(declare-fun lt!852491 () Bool)

(assert (=> d!679873 (= lt!852491 (rulesValidInductive!1547 thiss!16613 rules!1750))))

(assert (=> d!679873 (= lt!852491 (forall!5500 rules!1750 lambda!85897))))

(assert (=> d!679873 (= (rulesValid!1622 thiss!16613 rules!1750) lt!852491)))

(declare-fun bs!457523 () Bool)

(assert (= bs!457523 d!679873))

(assert (=> bs!457523 m!2725139))

(declare-fun m!2725611 () Bool)

(assert (=> bs!457523 m!2725611))

(assert (=> d!679613 d!679873))

(declare-fun d!679875 () Bool)

(assert (=> d!679875 (= (list!10748 (_1!16117 lt!852345)) (list!10752 (c!364222 (_1!16117 lt!852345))))))

(declare-fun bs!457524 () Bool)

(assert (= bs!457524 d!679875))

(declare-fun m!2725613 () Bool)

(assert (=> bs!457524 m!2725613))

(assert (=> b!2297625 d!679875))

(assert (=> b!2297625 d!679805))

(assert (=> b!2297625 d!679839))

(declare-fun d!679877 () Bool)

(declare-fun c!364396 () Bool)

(assert (=> d!679877 (= c!364396 ((_ is Node!8914) (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456))))))))

(declare-fun e!1472783 () Bool)

(assert (=> d!679877 (= (inv!36979 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456))))) e!1472783)))

(declare-fun b!2298232 () Bool)

(declare-fun inv!36981 (Conc!8914) Bool)

(assert (=> b!2298232 (= e!1472783 (inv!36981 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456))))))))

(declare-fun b!2298233 () Bool)

(declare-fun e!1472784 () Bool)

(assert (=> b!2298233 (= e!1472783 e!1472784)))

(declare-fun res!982652 () Bool)

(assert (=> b!2298233 (= res!982652 (not ((_ is Leaf!13091) (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456)))))))))

(assert (=> b!2298233 (=> res!982652 e!1472784)))

(declare-fun b!2298234 () Bool)

(declare-fun inv!36982 (Conc!8914) Bool)

(assert (=> b!2298234 (= e!1472784 (inv!36982 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456))))))))

(assert (= (and d!679877 c!364396) b!2298232))

(assert (= (and d!679877 (not c!364396)) b!2298233))

(assert (= (and b!2298233 (not res!982652)) b!2298234))

(declare-fun m!2725615 () Bool)

(assert (=> b!2298232 m!2725615))

(declare-fun m!2725617 () Bool)

(assert (=> b!2298234 m!2725617))

(assert (=> b!2297446 d!679877))

(declare-fun d!679879 () Bool)

(declare-fun c!364397 () Bool)

(assert (=> d!679879 (= c!364397 ((_ is Node!8914) (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456))))))))

(declare-fun e!1472785 () Bool)

(assert (=> d!679879 (= (inv!36979 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456))))) e!1472785)))

(declare-fun b!2298235 () Bool)

(assert (=> b!2298235 (= e!1472785 (inv!36981 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456))))))))

(declare-fun b!2298236 () Bool)

(declare-fun e!1472786 () Bool)

(assert (=> b!2298236 (= e!1472785 e!1472786)))

(declare-fun res!982653 () Bool)

(assert (=> b!2298236 (= res!982653 (not ((_ is Leaf!13091) (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456)))))))))

(assert (=> b!2298236 (=> res!982653 e!1472786)))

(declare-fun b!2298237 () Bool)

(assert (=> b!2298237 (= e!1472786 (inv!36982 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456))))))))

(assert (= (and d!679879 c!364397) b!2298235))

(assert (= (and d!679879 (not c!364397)) b!2298236))

(assert (= (and b!2298236 (not res!982653)) b!2298237))

(declare-fun m!2725619 () Bool)

(assert (=> b!2298235 m!2725619))

(declare-fun m!2725621 () Bool)

(assert (=> b!2298237 m!2725621))

(assert (=> b!2297776 d!679879))

(declare-fun bs!457525 () Bool)

(declare-fun d!679881 () Bool)

(assert (= bs!457525 (and d!679881 d!679665)))

(declare-fun lambda!85898 () Int)

(assert (=> bs!457525 (= (= (toValue!6185 (transformation!4383 otherR!12)) (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) (= lambda!85898 lambda!85885))))

(assert (=> d!679881 true))

(assert (=> d!679881 (< (dynLambda!11891 order!15253 (toValue!6185 (transformation!4383 otherR!12))) (dynLambda!11892 order!15255 lambda!85898))))

(assert (=> d!679881 (= (equivClasses!1697 (toChars!6044 (transformation!4383 otherR!12)) (toValue!6185 (transformation!4383 otherR!12))) (Forall2!714 lambda!85898))))

(declare-fun bs!457526 () Bool)

(assert (= bs!457526 d!679881))

(declare-fun m!2725623 () Bool)

(assert (=> bs!457526 m!2725623))

(assert (=> b!2297685 d!679881))

(declare-fun d!679883 () Bool)

(assert (=> d!679883 true))

(declare-fun lambda!85901 () Int)

(declare-fun order!15257 () Int)

(declare-fun order!15259 () Int)

(declare-fun dynLambda!11894 (Int Int) Int)

(declare-fun dynLambda!11895 (Int Int) Int)

(assert (=> d!679883 (< (dynLambda!11894 order!15257 (toChars!6044 (transformation!4383 (h!32760 rules!1750)))) (dynLambda!11895 order!15259 lambda!85901))))

(assert (=> d!679883 true))

(assert (=> d!679883 (< (dynLambda!11891 order!15253 (toValue!6185 (transformation!4383 (h!32760 rules!1750)))) (dynLambda!11895 order!15259 lambda!85901))))

(declare-fun Forall!1097 (Int) Bool)

(assert (=> d!679883 (= (semiInverseModEq!1778 (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toValue!6185 (transformation!4383 (h!32760 rules!1750)))) (Forall!1097 lambda!85901))))

(declare-fun bs!457527 () Bool)

(assert (= bs!457527 d!679883))

(declare-fun m!2725625 () Bool)

(assert (=> bs!457527 m!2725625))

(assert (=> d!679575 d!679883))

(declare-fun d!679885 () Bool)

(declare-fun e!1472789 () Bool)

(assert (=> d!679885 e!1472789))

(declare-fun res!982656 () Bool)

(assert (=> d!679885 (=> res!982656 e!1472789)))

(declare-fun lt!852492 () Bool)

(assert (=> d!679885 (= res!982656 (not lt!852492))))

(declare-fun e!1472788 () Bool)

(assert (=> d!679885 (= lt!852492 e!1472788)))

(declare-fun res!982655 () Bool)

(assert (=> d!679885 (=> res!982655 e!1472788)))

(assert (=> d!679885 (= res!982655 ((_ is Nil!27358) (tail!3319 otherP!12)))))

(assert (=> d!679885 (= (isPrefix!2373 (tail!3319 otherP!12) (tail!3319 input!1722)) lt!852492)))

(declare-fun b!2298245 () Bool)

(assert (=> b!2298245 (= e!1472789 (>= (size!21562 (tail!3319 input!1722)) (size!21562 (tail!3319 otherP!12))))))

(declare-fun b!2298243 () Bool)

(declare-fun res!982654 () Bool)

(declare-fun e!1472787 () Bool)

(assert (=> b!2298243 (=> (not res!982654) (not e!1472787))))

(assert (=> b!2298243 (= res!982654 (= (head!5022 (tail!3319 otherP!12)) (head!5022 (tail!3319 input!1722))))))

(declare-fun b!2298242 () Bool)

(assert (=> b!2298242 (= e!1472788 e!1472787)))

(declare-fun res!982657 () Bool)

(assert (=> b!2298242 (=> (not res!982657) (not e!1472787))))

(assert (=> b!2298242 (= res!982657 (not ((_ is Nil!27358) (tail!3319 input!1722))))))

(declare-fun b!2298244 () Bool)

(assert (=> b!2298244 (= e!1472787 (isPrefix!2373 (tail!3319 (tail!3319 otherP!12)) (tail!3319 (tail!3319 input!1722))))))

(assert (= (and d!679885 (not res!982655)) b!2298242))

(assert (= (and b!2298242 res!982657) b!2298243))

(assert (= (and b!2298243 res!982654) b!2298244))

(assert (= (and d!679885 (not res!982656)) b!2298245))

(assert (=> b!2298245 m!2725043))

(declare-fun m!2725627 () Bool)

(assert (=> b!2298245 m!2725627))

(assert (=> b!2298245 m!2725041))

(declare-fun m!2725629 () Bool)

(assert (=> b!2298245 m!2725629))

(assert (=> b!2298243 m!2725041))

(declare-fun m!2725631 () Bool)

(assert (=> b!2298243 m!2725631))

(assert (=> b!2298243 m!2725043))

(declare-fun m!2725633 () Bool)

(assert (=> b!2298243 m!2725633))

(assert (=> b!2298244 m!2725041))

(declare-fun m!2725635 () Bool)

(assert (=> b!2298244 m!2725635))

(assert (=> b!2298244 m!2725043))

(declare-fun m!2725637 () Bool)

(assert (=> b!2298244 m!2725637))

(assert (=> b!2298244 m!2725635))

(assert (=> b!2298244 m!2725637))

(declare-fun m!2725639 () Bool)

(assert (=> b!2298244 m!2725639))

(assert (=> b!2297732 d!679885))

(declare-fun d!679887 () Bool)

(assert (=> d!679887 (= (tail!3319 otherP!12) (t!205450 otherP!12))))

(assert (=> b!2297732 d!679887))

(declare-fun d!679889 () Bool)

(assert (=> d!679889 (= (tail!3319 input!1722) (t!205450 input!1722))))

(assert (=> b!2297732 d!679889))

(declare-fun b!2298246 () Bool)

(declare-fun e!1472791 () Int)

(assert (=> b!2298246 (= e!1472791 0)))

(declare-fun d!679891 () Bool)

(declare-fun lt!852493 () Int)

(assert (=> d!679891 (>= lt!852493 0)))

(assert (=> d!679891 (= lt!852493 e!1472791)))

(declare-fun c!364398 () Bool)

(assert (=> d!679891 (= c!364398 (and ((_ is Cons!27359) (t!205451 rules!1750)) (= (h!32760 (t!205451 rules!1750)) otherR!12)))))

(assert (=> d!679891 (contains!4765 (t!205451 rules!1750) otherR!12)))

(assert (=> d!679891 (= (getIndex!396 (t!205451 rules!1750) otherR!12) lt!852493)))

(declare-fun b!2298248 () Bool)

(declare-fun e!1472790 () Int)

(assert (=> b!2298248 (= e!1472790 (+ 1 (getIndex!396 (t!205451 (t!205451 rules!1750)) otherR!12)))))

(declare-fun b!2298247 () Bool)

(assert (=> b!2298247 (= e!1472791 e!1472790)))

(declare-fun c!364399 () Bool)

(assert (=> b!2298247 (= c!364399 (and ((_ is Cons!27359) (t!205451 rules!1750)) (not (= (h!32760 (t!205451 rules!1750)) otherR!12))))))

(declare-fun b!2298249 () Bool)

(assert (=> b!2298249 (= e!1472790 (- 1))))

(assert (= (and d!679891 c!364398) b!2298246))

(assert (= (and d!679891 (not c!364398)) b!2298247))

(assert (= (and b!2298247 c!364399) b!2298248))

(assert (= (and b!2298247 (not c!364399)) b!2298249))

(assert (=> d!679891 m!2725023))

(declare-fun m!2725641 () Bool)

(assert (=> b!2298248 m!2725641))

(assert (=> b!2297419 d!679891))

(declare-fun b!2298250 () Bool)

(declare-fun e!1472794 () Bool)

(assert (=> b!2298250 (= e!1472794 (inv!16 (value!138735 (h!32761 (t!205452 tokens!456)))))))

(declare-fun b!2298251 () Bool)

(declare-fun res!982658 () Bool)

(declare-fun e!1472793 () Bool)

(assert (=> b!2298251 (=> res!982658 e!1472793)))

(assert (=> b!2298251 (= res!982658 (not ((_ is IntegerValue!13637) (value!138735 (h!32761 (t!205452 tokens!456))))))))

(declare-fun e!1472792 () Bool)

(assert (=> b!2298251 (= e!1472792 e!1472793)))

(declare-fun b!2298252 () Bool)

(assert (=> b!2298252 (= e!1472794 e!1472792)))

(declare-fun c!364400 () Bool)

(assert (=> b!2298252 (= c!364400 ((_ is IntegerValue!13636) (value!138735 (h!32761 (t!205452 tokens!456)))))))

(declare-fun d!679893 () Bool)

(declare-fun c!364401 () Bool)

(assert (=> d!679893 (= c!364401 ((_ is IntegerValue!13635) (value!138735 (h!32761 (t!205452 tokens!456)))))))

(assert (=> d!679893 (= (inv!21 (value!138735 (h!32761 (t!205452 tokens!456)))) e!1472794)))

(declare-fun b!2298253 () Bool)

(assert (=> b!2298253 (= e!1472793 (inv!15 (value!138735 (h!32761 (t!205452 tokens!456)))))))

(declare-fun b!2298254 () Bool)

(assert (=> b!2298254 (= e!1472792 (inv!17 (value!138735 (h!32761 (t!205452 tokens!456)))))))

(assert (= (and d!679893 c!364401) b!2298250))

(assert (= (and d!679893 (not c!364401)) b!2298252))

(assert (= (and b!2298252 c!364400) b!2298254))

(assert (= (and b!2298252 (not c!364400)) b!2298251))

(assert (= (and b!2298251 (not res!982658)) b!2298253))

(declare-fun m!2725643 () Bool)

(assert (=> b!2298250 m!2725643))

(declare-fun m!2725645 () Bool)

(assert (=> b!2298253 m!2725645))

(declare-fun m!2725647 () Bool)

(assert (=> b!2298254 m!2725647))

(assert (=> b!2297853 d!679893))

(declare-fun b!2298265 () Bool)

(declare-fun e!1472800 () List!27454)

(declare-fun list!10756 (IArray!17835) List!27454)

(assert (=> b!2298265 (= e!1472800 (list!10756 (xs!11857 (c!364222 (_1!16117 lt!852274)))))))

(declare-fun b!2298264 () Bool)

(declare-fun e!1472799 () List!27454)

(assert (=> b!2298264 (= e!1472799 e!1472800)))

(declare-fun c!364407 () Bool)

(assert (=> b!2298264 (= c!364407 ((_ is Leaf!13092) (c!364222 (_1!16117 lt!852274))))))

(declare-fun b!2298263 () Bool)

(assert (=> b!2298263 (= e!1472799 Nil!27360)))

(declare-fun d!679895 () Bool)

(declare-fun c!364406 () Bool)

(assert (=> d!679895 (= c!364406 ((_ is Empty!8915) (c!364222 (_1!16117 lt!852274))))))

(assert (=> d!679895 (= (list!10752 (c!364222 (_1!16117 lt!852274))) e!1472799)))

(declare-fun b!2298266 () Bool)

(declare-fun ++!6690 (List!27454 List!27454) List!27454)

(assert (=> b!2298266 (= e!1472800 (++!6690 (list!10752 (left!20735 (c!364222 (_1!16117 lt!852274)))) (list!10752 (right!21065 (c!364222 (_1!16117 lt!852274))))))))

(assert (= (and d!679895 c!364406) b!2298263))

(assert (= (and d!679895 (not c!364406)) b!2298264))

(assert (= (and b!2298264 c!364407) b!2298265))

(assert (= (and b!2298264 (not c!364407)) b!2298266))

(declare-fun m!2725649 () Bool)

(assert (=> b!2298265 m!2725649))

(declare-fun m!2725651 () Bool)

(assert (=> b!2298266 m!2725651))

(declare-fun m!2725653 () Bool)

(assert (=> b!2298266 m!2725653))

(assert (=> b!2298266 m!2725651))

(assert (=> b!2298266 m!2725653))

(declare-fun m!2725655 () Bool)

(assert (=> b!2298266 m!2725655))

(assert (=> d!679497 d!679895))

(declare-fun d!679897 () Bool)

(declare-fun lt!852494 () Int)

(assert (=> d!679897 (>= lt!852494 0)))

(declare-fun e!1472801 () Int)

(assert (=> d!679897 (= lt!852494 e!1472801)))

(declare-fun c!364408 () Bool)

(assert (=> d!679897 (= c!364408 ((_ is Nil!27358) lt!852376))))

(assert (=> d!679897 (= (size!21562 lt!852376) lt!852494)))

(declare-fun b!2298267 () Bool)

(assert (=> b!2298267 (= e!1472801 0)))

(declare-fun b!2298268 () Bool)

(assert (=> b!2298268 (= e!1472801 (+ 1 (size!21562 (t!205450 lt!852376))))))

(assert (= (and d!679897 c!364408) b!2298267))

(assert (= (and d!679897 (not c!364408)) b!2298268))

(declare-fun m!2725657 () Bool)

(assert (=> b!2298268 m!2725657))

(assert (=> b!2297808 d!679897))

(declare-fun d!679899 () Bool)

(declare-fun lt!852495 () Int)

(assert (=> d!679899 (>= lt!852495 0)))

(declare-fun e!1472802 () Int)

(assert (=> d!679899 (= lt!852495 e!1472802)))

(declare-fun c!364409 () Bool)

(assert (=> d!679899 (= c!364409 ((_ is Nil!27358) lt!852265))))

(assert (=> d!679899 (= (size!21562 lt!852265) lt!852495)))

(declare-fun b!2298269 () Bool)

(assert (=> b!2298269 (= e!1472802 0)))

(declare-fun b!2298270 () Bool)

(assert (=> b!2298270 (= e!1472802 (+ 1 (size!21562 (t!205450 lt!852265))))))

(assert (= (and d!679899 c!364409) b!2298269))

(assert (= (and d!679899 (not c!364409)) b!2298270))

(declare-fun m!2725659 () Bool)

(assert (=> b!2298270 m!2725659))

(assert (=> b!2297808 d!679899))

(declare-fun d!679901 () Bool)

(declare-fun lt!852496 () Int)

(assert (=> d!679901 (>= lt!852496 0)))

(declare-fun e!1472803 () Int)

(assert (=> d!679901 (= lt!852496 e!1472803)))

(declare-fun c!364410 () Bool)

(assert (=> d!679901 (= c!364410 ((_ is Nil!27358) (_2!16119 lt!852272)))))

(assert (=> d!679901 (= (size!21562 (_2!16119 lt!852272)) lt!852496)))

(declare-fun b!2298271 () Bool)

(assert (=> b!2298271 (= e!1472803 0)))

(declare-fun b!2298272 () Bool)

(assert (=> b!2298272 (= e!1472803 (+ 1 (size!21562 (t!205450 (_2!16119 lt!852272)))))))

(assert (= (and d!679901 c!364410) b!2298271))

(assert (= (and d!679901 (not c!364410)) b!2298272))

(declare-fun m!2725661 () Bool)

(assert (=> b!2298272 m!2725661))

(assert (=> b!2297808 d!679901))

(declare-fun d!679903 () Bool)

(declare-fun lt!852497 () Int)

(assert (=> d!679903 (>= lt!852497 0)))

(declare-fun e!1472804 () Int)

(assert (=> d!679903 (= lt!852497 e!1472804)))

(declare-fun c!364411 () Bool)

(assert (=> d!679903 (= c!364411 ((_ is Nil!27358) (t!205450 otherP!12)))))

(assert (=> d!679903 (= (size!21562 (t!205450 otherP!12)) lt!852497)))

(declare-fun b!2298273 () Bool)

(assert (=> b!2298273 (= e!1472804 0)))

(declare-fun b!2298274 () Bool)

(assert (=> b!2298274 (= e!1472804 (+ 1 (size!21562 (t!205450 (t!205450 otherP!12)))))))

(assert (= (and d!679903 c!364411) b!2298273))

(assert (= (and d!679903 (not c!364411)) b!2298274))

(declare-fun m!2725663 () Bool)

(assert (=> b!2298274 m!2725663))

(assert (=> b!2297784 d!679903))

(declare-fun d!679905 () Bool)

(declare-fun c!364414 () Bool)

(assert (=> d!679905 (= c!364414 ((_ is Nil!27359) rules!1750))))

(declare-fun e!1472807 () (InoxSet Rule!8566))

(assert (=> d!679905 (= (content!3678 rules!1750) e!1472807)))

(declare-fun b!2298279 () Bool)

(assert (=> b!2298279 (= e!1472807 ((as const (Array Rule!8566 Bool)) false))))

(declare-fun b!2298280 () Bool)

(assert (=> b!2298280 (= e!1472807 ((_ map or) (store ((as const (Array Rule!8566 Bool)) false) (h!32760 rules!1750) true) (content!3678 (t!205451 rules!1750))))))

(assert (= (and d!679905 c!364414) b!2298279))

(assert (= (and d!679905 (not c!364414)) b!2298280))

(declare-fun m!2725665 () Bool)

(assert (=> b!2298280 m!2725665))

(assert (=> b!2298280 m!2725479))

(assert (=> d!679585 d!679905))

(declare-fun b!2298281 () Bool)

(declare-fun res!982661 () Bool)

(declare-fun e!1472809 () Bool)

(assert (=> b!2298281 (=> (not res!982661) (not e!1472809))))

(declare-fun lt!852501 () Option!5375)

(assert (=> b!2298281 (= res!982661 (= (value!138735 (_1!16119 (get!8246 lt!852501))) (apply!6647 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852501)))) (seqFromList!3087 (originalCharacters!5153 (_1!16119 (get!8246 lt!852501)))))))))

(declare-fun b!2298282 () Bool)

(declare-fun e!1472810 () Bool)

(assert (=> b!2298282 (= e!1472810 e!1472809)))

(declare-fun res!982665 () Bool)

(assert (=> b!2298282 (=> (not res!982665) (not e!1472809))))

(assert (=> b!2298282 (= res!982665 (isDefined!4238 lt!852501))))

(declare-fun b!2298283 () Bool)

(declare-fun res!982664 () Bool)

(assert (=> b!2298283 (=> (not res!982664) (not e!1472809))))

(assert (=> b!2298283 (= res!982664 (= (++!6689 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852501)))) (_2!16119 (get!8246 lt!852501))) input!1722))))

(declare-fun bm!136938 () Bool)

(declare-fun call!136943 () Option!5375)

(assert (=> bm!136938 (= call!136943 (maxPrefixOneRule!1408 thiss!16613 (h!32760 (t!205451 rules!1750)) input!1722))))

(declare-fun d!679907 () Bool)

(assert (=> d!679907 e!1472810))

(declare-fun res!982663 () Bool)

(assert (=> d!679907 (=> res!982663 e!1472810)))

(assert (=> d!679907 (= res!982663 (isEmpty!15608 lt!852501))))

(declare-fun e!1472808 () Option!5375)

(assert (=> d!679907 (= lt!852501 e!1472808)))

(declare-fun c!364415 () Bool)

(assert (=> d!679907 (= c!364415 (and ((_ is Cons!27359) (t!205451 rules!1750)) ((_ is Nil!27359) (t!205451 (t!205451 rules!1750)))))))

(declare-fun lt!852499 () Unit!40251)

(declare-fun lt!852500 () Unit!40251)

(assert (=> d!679907 (= lt!852499 lt!852500)))

(assert (=> d!679907 (isPrefix!2373 input!1722 input!1722)))

(assert (=> d!679907 (= lt!852500 (lemmaIsPrefixRefl!1505 input!1722 input!1722))))

(assert (=> d!679907 (rulesValidInductive!1547 thiss!16613 (t!205451 rules!1750))))

(assert (=> d!679907 (= (maxPrefix!2236 thiss!16613 (t!205451 rules!1750) input!1722) lt!852501)))

(declare-fun b!2298284 () Bool)

(assert (=> b!2298284 (= e!1472809 (contains!4765 (t!205451 rules!1750) (rule!6725 (_1!16119 (get!8246 lt!852501)))))))

(declare-fun b!2298285 () Bool)

(declare-fun res!982659 () Bool)

(assert (=> b!2298285 (=> (not res!982659) (not e!1472809))))

(assert (=> b!2298285 (= res!982659 (= (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852501)))) (originalCharacters!5153 (_1!16119 (get!8246 lt!852501)))))))

(declare-fun b!2298286 () Bool)

(declare-fun res!982662 () Bool)

(assert (=> b!2298286 (=> (not res!982662) (not e!1472809))))

(assert (=> b!2298286 (= res!982662 (< (size!21562 (_2!16119 (get!8246 lt!852501))) (size!21562 input!1722)))))

(declare-fun b!2298287 () Bool)

(declare-fun res!982660 () Bool)

(assert (=> b!2298287 (=> (not res!982660) (not e!1472809))))

(assert (=> b!2298287 (= res!982660 (matchR!2988 (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852501)))) (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852501))))))))

(declare-fun b!2298288 () Bool)

(assert (=> b!2298288 (= e!1472808 call!136943)))

(declare-fun b!2298289 () Bool)

(declare-fun lt!852502 () Option!5375)

(declare-fun lt!852498 () Option!5375)

(assert (=> b!2298289 (= e!1472808 (ite (and ((_ is None!5374) lt!852502) ((_ is None!5374) lt!852498)) None!5374 (ite ((_ is None!5374) lt!852498) lt!852502 (ite ((_ is None!5374) lt!852502) lt!852498 (ite (>= (size!21560 (_1!16119 (v!30464 lt!852502))) (size!21560 (_1!16119 (v!30464 lt!852498)))) lt!852502 lt!852498)))))))

(assert (=> b!2298289 (= lt!852502 call!136943)))

(assert (=> b!2298289 (= lt!852498 (maxPrefix!2236 thiss!16613 (t!205451 (t!205451 rules!1750)) input!1722))))

(assert (= (and d!679907 c!364415) b!2298288))

(assert (= (and d!679907 (not c!364415)) b!2298289))

(assert (= (or b!2298288 b!2298289) bm!136938))

(assert (= (and d!679907 (not res!982663)) b!2298282))

(assert (= (and b!2298282 res!982665) b!2298285))

(assert (= (and b!2298285 res!982659) b!2298286))

(assert (= (and b!2298286 res!982662) b!2298283))

(assert (= (and b!2298283 res!982664) b!2298281))

(assert (= (and b!2298281 res!982661) b!2298287))

(assert (= (and b!2298287 res!982660) b!2298284))

(declare-fun m!2725667 () Bool)

(assert (=> b!2298283 m!2725667))

(declare-fun m!2725669 () Bool)

(assert (=> b!2298283 m!2725669))

(assert (=> b!2298283 m!2725669))

(declare-fun m!2725671 () Bool)

(assert (=> b!2298283 m!2725671))

(assert (=> b!2298283 m!2725671))

(declare-fun m!2725673 () Bool)

(assert (=> b!2298283 m!2725673))

(assert (=> b!2298286 m!2725667))

(declare-fun m!2725675 () Bool)

(assert (=> b!2298286 m!2725675))

(assert (=> b!2298286 m!2725035))

(declare-fun m!2725677 () Bool)

(assert (=> d!679907 m!2725677))

(assert (=> d!679907 m!2725135))

(assert (=> d!679907 m!2725137))

(assert (=> d!679907 m!2725603))

(declare-fun m!2725679 () Bool)

(assert (=> b!2298282 m!2725679))

(declare-fun m!2725681 () Bool)

(assert (=> b!2298289 m!2725681))

(assert (=> b!2298285 m!2725667))

(assert (=> b!2298285 m!2725669))

(assert (=> b!2298285 m!2725669))

(assert (=> b!2298285 m!2725671))

(assert (=> b!2298281 m!2725667))

(declare-fun m!2725683 () Bool)

(assert (=> b!2298281 m!2725683))

(assert (=> b!2298281 m!2725683))

(declare-fun m!2725685 () Bool)

(assert (=> b!2298281 m!2725685))

(assert (=> b!2298287 m!2725667))

(assert (=> b!2298287 m!2725669))

(assert (=> b!2298287 m!2725669))

(assert (=> b!2298287 m!2725671))

(assert (=> b!2298287 m!2725671))

(declare-fun m!2725687 () Bool)

(assert (=> b!2298287 m!2725687))

(declare-fun m!2725689 () Bool)

(assert (=> bm!136938 m!2725689))

(assert (=> b!2298284 m!2725667))

(declare-fun m!2725691 () Bool)

(assert (=> b!2298284 m!2725691))

(assert (=> b!2297840 d!679907))

(declare-fun d!679909 () Bool)

(declare-fun lt!852503 () Bool)

(assert (=> d!679909 (= lt!852503 (select (content!3678 (t!205451 rules!1750)) r!2363))))

(declare-fun e!1472812 () Bool)

(assert (=> d!679909 (= lt!852503 e!1472812)))

(declare-fun res!982666 () Bool)

(assert (=> d!679909 (=> (not res!982666) (not e!1472812))))

(assert (=> d!679909 (= res!982666 ((_ is Cons!27359) (t!205451 rules!1750)))))

(assert (=> d!679909 (= (contains!4765 (t!205451 rules!1750) r!2363) lt!852503)))

(declare-fun b!2298290 () Bool)

(declare-fun e!1472811 () Bool)

(assert (=> b!2298290 (= e!1472812 e!1472811)))

(declare-fun res!982667 () Bool)

(assert (=> b!2298290 (=> res!982667 e!1472811)))

(assert (=> b!2298290 (= res!982667 (= (h!32760 (t!205451 rules!1750)) r!2363))))

(declare-fun b!2298291 () Bool)

(assert (=> b!2298291 (= e!1472811 (contains!4765 (t!205451 (t!205451 rules!1750)) r!2363))))

(assert (= (and d!679909 res!982666) b!2298290))

(assert (= (and b!2298290 (not res!982667)) b!2298291))

(assert (=> d!679909 m!2725479))

(declare-fun m!2725693 () Bool)

(assert (=> d!679909 m!2725693))

(declare-fun m!2725695 () Bool)

(assert (=> b!2298291 m!2725695))

(assert (=> b!2297703 d!679909))

(declare-fun d!679911 () Bool)

(assert (=> d!679911 (= (isEmpty!15606 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456))))) ((_ is Nil!27358) (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))

(assert (=> b!2297768 d!679911))

(declare-fun d!679913 () Bool)

(assert (=> d!679913 (= (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456)))) (t!205450 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))

(assert (=> b!2297768 d!679913))

(declare-fun bs!457528 () Bool)

(declare-fun d!679915 () Bool)

(assert (= bs!457528 (and d!679915 d!679883)))

(declare-fun lambda!85902 () Int)

(assert (=> bs!457528 (= (and (= (toChars!6044 (transformation!4383 r!2363)) (toChars!6044 (transformation!4383 (h!32760 rules!1750)))) (= (toValue!6185 (transformation!4383 r!2363)) (toValue!6185 (transformation!4383 (h!32760 rules!1750))))) (= lambda!85902 lambda!85901))))

(assert (=> d!679915 true))

(assert (=> d!679915 (< (dynLambda!11894 order!15257 (toChars!6044 (transformation!4383 r!2363))) (dynLambda!11895 order!15259 lambda!85902))))

(assert (=> d!679915 true))

(assert (=> d!679915 (< (dynLambda!11891 order!15253 (toValue!6185 (transformation!4383 r!2363))) (dynLambda!11895 order!15259 lambda!85902))))

(assert (=> d!679915 (= (semiInverseModEq!1778 (toChars!6044 (transformation!4383 r!2363)) (toValue!6185 (transformation!4383 r!2363))) (Forall!1097 lambda!85902))))

(declare-fun bs!457529 () Bool)

(assert (= bs!457529 d!679915))

(declare-fun m!2725697 () Bool)

(assert (=> bs!457529 m!2725697))

(assert (=> d!679595 d!679915))

(declare-fun b!2298294 () Bool)

(declare-fun e!1472814 () List!27452)

(assert (=> b!2298294 (= e!1472814 (list!10755 (xs!11856 (c!364220 (charsOf!2771 (head!5020 tokens!456))))))))

(declare-fun b!2298293 () Bool)

(declare-fun e!1472813 () List!27452)

(assert (=> b!2298293 (= e!1472813 e!1472814)))

(declare-fun c!364417 () Bool)

(assert (=> b!2298293 (= c!364417 ((_ is Leaf!13091) (c!364220 (charsOf!2771 (head!5020 tokens!456)))))))

(declare-fun d!679917 () Bool)

(declare-fun c!364416 () Bool)

(assert (=> d!679917 (= c!364416 ((_ is Empty!8914) (c!364220 (charsOf!2771 (head!5020 tokens!456)))))))

(assert (=> d!679917 (= (list!10753 (c!364220 (charsOf!2771 (head!5020 tokens!456)))) e!1472813)))

(declare-fun b!2298295 () Bool)

(assert (=> b!2298295 (= e!1472814 (++!6689 (list!10753 (left!20734 (c!364220 (charsOf!2771 (head!5020 tokens!456))))) (list!10753 (right!21064 (c!364220 (charsOf!2771 (head!5020 tokens!456)))))))))

(declare-fun b!2298292 () Bool)

(assert (=> b!2298292 (= e!1472813 Nil!27358)))

(assert (= (and d!679917 c!364416) b!2298292))

(assert (= (and d!679917 (not c!364416)) b!2298293))

(assert (= (and b!2298293 c!364417) b!2298294))

(assert (= (and b!2298293 (not c!364417)) b!2298295))

(declare-fun m!2725699 () Bool)

(assert (=> b!2298294 m!2725699))

(declare-fun m!2725701 () Bool)

(assert (=> b!2298295 m!2725701))

(declare-fun m!2725703 () Bool)

(assert (=> b!2298295 m!2725703))

(assert (=> b!2298295 m!2725701))

(assert (=> b!2298295 m!2725703))

(declare-fun m!2725705 () Bool)

(assert (=> b!2298295 m!2725705))

(assert (=> d!679601 d!679917))

(declare-fun d!679919 () Bool)

(declare-fun e!1472817 () Bool)

(assert (=> d!679919 e!1472817))

(declare-fun res!982670 () Bool)

(assert (=> d!679919 (=> res!982670 e!1472817)))

(declare-fun lt!852504 () Bool)

(assert (=> d!679919 (= res!982670 (not lt!852504))))

(declare-fun e!1472816 () Bool)

(assert (=> d!679919 (= lt!852504 e!1472816)))

(declare-fun res!982669 () Bool)

(assert (=> d!679919 (=> res!982669 e!1472816)))

(assert (=> d!679919 (= res!982669 ((_ is Nil!27358) (tail!3319 lt!852265)))))

(assert (=> d!679919 (= (isPrefix!2373 (tail!3319 lt!852265) (tail!3319 input!1722)) lt!852504)))

(declare-fun b!2298299 () Bool)

(assert (=> b!2298299 (= e!1472817 (>= (size!21562 (tail!3319 input!1722)) (size!21562 (tail!3319 lt!852265))))))

(declare-fun b!2298297 () Bool)

(declare-fun res!982668 () Bool)

(declare-fun e!1472815 () Bool)

(assert (=> b!2298297 (=> (not res!982668) (not e!1472815))))

(assert (=> b!2298297 (= res!982668 (= (head!5022 (tail!3319 lt!852265)) (head!5022 (tail!3319 input!1722))))))

(declare-fun b!2298296 () Bool)

(assert (=> b!2298296 (= e!1472816 e!1472815)))

(declare-fun res!982671 () Bool)

(assert (=> b!2298296 (=> (not res!982671) (not e!1472815))))

(assert (=> b!2298296 (= res!982671 (not ((_ is Nil!27358) (tail!3319 input!1722))))))

(declare-fun b!2298298 () Bool)

(assert (=> b!2298298 (= e!1472815 (isPrefix!2373 (tail!3319 (tail!3319 lt!852265)) (tail!3319 (tail!3319 input!1722))))))

(assert (= (and d!679919 (not res!982669)) b!2298296))

(assert (= (and b!2298296 res!982671) b!2298297))

(assert (= (and b!2298297 res!982668) b!2298298))

(assert (= (and d!679919 (not res!982670)) b!2298299))

(assert (=> b!2298299 m!2725043))

(assert (=> b!2298299 m!2725627))

(assert (=> b!2298299 m!2725093))

(assert (=> b!2298299 m!2725423))

(assert (=> b!2298297 m!2725093))

(assert (=> b!2298297 m!2725425))

(assert (=> b!2298297 m!2725043))

(assert (=> b!2298297 m!2725633))

(assert (=> b!2298298 m!2725093))

(assert (=> b!2298298 m!2725429))

(assert (=> b!2298298 m!2725043))

(assert (=> b!2298298 m!2725637))

(assert (=> b!2298298 m!2725429))

(assert (=> b!2298298 m!2725637))

(declare-fun m!2725707 () Bool)

(assert (=> b!2298298 m!2725707))

(assert (=> b!2297796 d!679919))

(assert (=> b!2297796 d!679775))

(assert (=> b!2297796 d!679889))

(declare-fun d!679921 () Bool)

(assert (=> d!679921 (= (nullable!1875 (regex!4383 r!2363)) (nullableFct!456 (regex!4383 r!2363)))))

(declare-fun bs!457530 () Bool)

(assert (= bs!457530 d!679921))

(declare-fun m!2725709 () Bool)

(assert (=> bs!457530 m!2725709))

(assert (=> b!2297777 d!679921))

(declare-fun b!2298300 () Bool)

(declare-fun e!1472819 () Int)

(assert (=> b!2298300 (= e!1472819 0)))

(declare-fun d!679923 () Bool)

(declare-fun lt!852505 () Int)

(assert (=> d!679923 (>= lt!852505 0)))

(assert (=> d!679923 (= lt!852505 e!1472819)))

(declare-fun c!364418 () Bool)

(assert (=> d!679923 (= c!364418 (and ((_ is Cons!27359) (t!205451 rules!1750)) (= (h!32760 (t!205451 rules!1750)) r!2363)))))

(assert (=> d!679923 (contains!4765 (t!205451 rules!1750) r!2363)))

(assert (=> d!679923 (= (getIndex!396 (t!205451 rules!1750) r!2363) lt!852505)))

(declare-fun b!2298302 () Bool)

(declare-fun e!1472818 () Int)

(assert (=> b!2298302 (= e!1472818 (+ 1 (getIndex!396 (t!205451 (t!205451 rules!1750)) r!2363)))))

(declare-fun b!2298301 () Bool)

(assert (=> b!2298301 (= e!1472819 e!1472818)))

(declare-fun c!364419 () Bool)

(assert (=> b!2298301 (= c!364419 (and ((_ is Cons!27359) (t!205451 rules!1750)) (not (= (h!32760 (t!205451 rules!1750)) r!2363))))))

(declare-fun b!2298303 () Bool)

(assert (=> b!2298303 (= e!1472818 (- 1))))

(assert (= (and d!679923 c!364418) b!2298300))

(assert (= (and d!679923 (not c!364418)) b!2298301))

(assert (= (and b!2298301 c!364419) b!2298302))

(assert (= (and b!2298301 (not c!364419)) b!2298303))

(assert (=> d!679923 m!2725017))

(declare-fun m!2725711 () Bool)

(assert (=> b!2298302 m!2725711))

(assert (=> b!2297427 d!679923))

(assert (=> b!2297765 d!679911))

(assert (=> b!2297765 d!679913))

(declare-fun b!2298306 () Bool)

(declare-fun e!1472821 () List!27452)

(assert (=> b!2298306 (= e!1472821 (list!10755 (xs!11856 (c!364220 (charsOf!2771 (h!32761 tokens!456))))))))

(declare-fun b!2298305 () Bool)

(declare-fun e!1472820 () List!27452)

(assert (=> b!2298305 (= e!1472820 e!1472821)))

(declare-fun c!364421 () Bool)

(assert (=> b!2298305 (= c!364421 ((_ is Leaf!13091) (c!364220 (charsOf!2771 (h!32761 tokens!456)))))))

(declare-fun d!679925 () Bool)

(declare-fun c!364420 () Bool)

(assert (=> d!679925 (= c!364420 ((_ is Empty!8914) (c!364220 (charsOf!2771 (h!32761 tokens!456)))))))

(assert (=> d!679925 (= (list!10753 (c!364220 (charsOf!2771 (h!32761 tokens!456)))) e!1472820)))

(declare-fun b!2298307 () Bool)

(assert (=> b!2298307 (= e!1472821 (++!6689 (list!10753 (left!20734 (c!364220 (charsOf!2771 (h!32761 tokens!456))))) (list!10753 (right!21064 (c!364220 (charsOf!2771 (h!32761 tokens!456)))))))))

(declare-fun b!2298304 () Bool)

(assert (=> b!2298304 (= e!1472820 Nil!27358)))

(assert (= (and d!679925 c!364420) b!2298304))

(assert (= (and d!679925 (not c!364420)) b!2298305))

(assert (= (and b!2298305 c!364421) b!2298306))

(assert (= (and b!2298305 (not c!364421)) b!2298307))

(declare-fun m!2725713 () Bool)

(assert (=> b!2298306 m!2725713))

(declare-fun m!2725715 () Bool)

(assert (=> b!2298307 m!2725715))

(declare-fun m!2725717 () Bool)

(assert (=> b!2298307 m!2725717))

(assert (=> b!2298307 m!2725715))

(assert (=> b!2298307 m!2725717))

(declare-fun m!2725719 () Bool)

(assert (=> b!2298307 m!2725719))

(assert (=> d!679621 d!679925))

(declare-fun b!2298326 () Bool)

(declare-fun e!1472832 () Bool)

(declare-fun lt!852519 () Option!5375)

(assert (=> b!2298326 (= e!1472832 (= (size!21560 (_1!16119 (get!8246 lt!852519))) (size!21562 (originalCharacters!5153 (_1!16119 (get!8246 lt!852519))))))))

(declare-fun b!2298327 () Bool)

(declare-fun res!982691 () Bool)

(assert (=> b!2298327 (=> (not res!982691) (not e!1472832))))

(assert (=> b!2298327 (= res!982691 (= (value!138735 (_1!16119 (get!8246 lt!852519))) (apply!6647 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852519)))) (seqFromList!3087 (originalCharacters!5153 (_1!16119 (get!8246 lt!852519)))))))))

(declare-fun b!2298328 () Bool)

(declare-fun res!982692 () Bool)

(assert (=> b!2298328 (=> (not res!982692) (not e!1472832))))

(assert (=> b!2298328 (= res!982692 (< (size!21562 (_2!16119 (get!8246 lt!852519))) (size!21562 input!1722)))))

(declare-fun b!2298329 () Bool)

(declare-fun e!1472830 () Option!5375)

(assert (=> b!2298329 (= e!1472830 None!5374)))

(declare-fun b!2298330 () Bool)

(declare-fun res!982687 () Bool)

(assert (=> b!2298330 (=> (not res!982687) (not e!1472832))))

(assert (=> b!2298330 (= res!982687 (= (++!6689 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852519)))) (_2!16119 (get!8246 lt!852519))) input!1722))))

(declare-fun b!2298331 () Bool)

(declare-fun res!982690 () Bool)

(assert (=> b!2298331 (=> (not res!982690) (not e!1472832))))

(assert (=> b!2298331 (= res!982690 (= (rule!6725 (_1!16119 (get!8246 lt!852519))) (h!32760 rules!1750)))))

(declare-fun d!679927 () Bool)

(declare-fun e!1472831 () Bool)

(assert (=> d!679927 e!1472831))

(declare-fun res!982689 () Bool)

(assert (=> d!679927 (=> res!982689 e!1472831)))

(assert (=> d!679927 (= res!982689 (isEmpty!15608 lt!852519))))

(assert (=> d!679927 (= lt!852519 e!1472830)))

(declare-fun c!364424 () Bool)

(declare-datatypes ((tuple2!27220 0))(
  ( (tuple2!27221 (_1!16120 List!27452) (_2!16120 List!27452)) )
))
(declare-fun lt!852517 () tuple2!27220)

(assert (=> d!679927 (= c!364424 (isEmpty!15606 (_1!16120 lt!852517)))))

(declare-fun findLongestMatch!657 (Regex!6731 List!27452) tuple2!27220)

(assert (=> d!679927 (= lt!852517 (findLongestMatch!657 (regex!4383 (h!32760 rules!1750)) input!1722))))

(assert (=> d!679927 (ruleValid!1473 thiss!16613 (h!32760 rules!1750))))

(assert (=> d!679927 (= (maxPrefixOneRule!1408 thiss!16613 (h!32760 rules!1750) input!1722) lt!852519)))

(declare-fun b!2298332 () Bool)

(declare-fun e!1472833 () Bool)

(declare-fun findLongestMatchInner!728 (Regex!6731 List!27452 Int List!27452 List!27452 Int) tuple2!27220)

(assert (=> b!2298332 (= e!1472833 (matchR!2988 (regex!4383 (h!32760 rules!1750)) (_1!16120 (findLongestMatchInner!728 (regex!4383 (h!32760 rules!1750)) Nil!27358 (size!21562 Nil!27358) input!1722 input!1722 (size!21562 input!1722)))))))

(declare-fun b!2298333 () Bool)

(assert (=> b!2298333 (= e!1472831 e!1472832)))

(declare-fun res!982686 () Bool)

(assert (=> b!2298333 (=> (not res!982686) (not e!1472832))))

(assert (=> b!2298333 (= res!982686 (matchR!2988 (regex!4383 (h!32760 rules!1750)) (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852519))))))))

(declare-fun b!2298334 () Bool)

(assert (=> b!2298334 (= e!1472830 (Some!5374 (tuple2!27219 (Token!8245 (apply!6647 (transformation!4383 (h!32760 rules!1750)) (seqFromList!3087 (_1!16120 lt!852517))) (h!32760 rules!1750) (size!21561 (seqFromList!3087 (_1!16120 lt!852517))) (_1!16120 lt!852517)) (_2!16120 lt!852517))))))

(declare-fun lt!852518 () Unit!40251)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!701 (Regex!6731 List!27452) Unit!40251)

(assert (=> b!2298334 (= lt!852518 (longestMatchIsAcceptedByMatchOrIsEmpty!701 (regex!4383 (h!32760 rules!1750)) input!1722))))

(declare-fun res!982688 () Bool)

(assert (=> b!2298334 (= res!982688 (isEmpty!15606 (_1!16120 (findLongestMatchInner!728 (regex!4383 (h!32760 rules!1750)) Nil!27358 (size!21562 Nil!27358) input!1722 input!1722 (size!21562 input!1722)))))))

(assert (=> b!2298334 (=> res!982688 e!1472833)))

(assert (=> b!2298334 e!1472833))

(declare-fun lt!852516 () Unit!40251)

(assert (=> b!2298334 (= lt!852516 lt!852518)))

(declare-fun lt!852520 () Unit!40251)

(declare-fun lemmaSemiInverse!1073 (TokenValueInjection!8630 BalanceConc!17556) Unit!40251)

(assert (=> b!2298334 (= lt!852520 (lemmaSemiInverse!1073 (transformation!4383 (h!32760 rules!1750)) (seqFromList!3087 (_1!16120 lt!852517))))))

(assert (= (and d!679927 c!364424) b!2298329))

(assert (= (and d!679927 (not c!364424)) b!2298334))

(assert (= (and b!2298334 (not res!982688)) b!2298332))

(assert (= (and d!679927 (not res!982689)) b!2298333))

(assert (= (and b!2298333 res!982686) b!2298330))

(assert (= (and b!2298330 res!982687) b!2298328))

(assert (= (and b!2298328 res!982692) b!2298331))

(assert (= (and b!2298331 res!982690) b!2298327))

(assert (= (and b!2298327 res!982691) b!2298326))

(declare-fun m!2725721 () Bool)

(assert (=> b!2298326 m!2725721))

(declare-fun m!2725723 () Bool)

(assert (=> b!2298326 m!2725723))

(declare-fun m!2725725 () Bool)

(assert (=> b!2298334 m!2725725))

(declare-fun m!2725727 () Bool)

(assert (=> b!2298334 m!2725727))

(declare-fun m!2725729 () Bool)

(assert (=> b!2298334 m!2725729))

(declare-fun m!2725731 () Bool)

(assert (=> b!2298334 m!2725731))

(assert (=> b!2298334 m!2725725))

(assert (=> b!2298334 m!2725035))

(declare-fun m!2725733 () Bool)

(assert (=> b!2298334 m!2725733))

(assert (=> b!2298334 m!2725729))

(declare-fun m!2725735 () Bool)

(assert (=> b!2298334 m!2725735))

(assert (=> b!2298334 m!2725729))

(declare-fun m!2725737 () Bool)

(assert (=> b!2298334 m!2725737))

(assert (=> b!2298334 m!2725035))

(assert (=> b!2298334 m!2725729))

(declare-fun m!2725739 () Bool)

(assert (=> b!2298334 m!2725739))

(assert (=> b!2298331 m!2725721))

(assert (=> b!2298327 m!2725721))

(declare-fun m!2725741 () Bool)

(assert (=> b!2298327 m!2725741))

(assert (=> b!2298327 m!2725741))

(declare-fun m!2725743 () Bool)

(assert (=> b!2298327 m!2725743))

(assert (=> b!2298332 m!2725725))

(assert (=> b!2298332 m!2725035))

(assert (=> b!2298332 m!2725725))

(assert (=> b!2298332 m!2725035))

(assert (=> b!2298332 m!2725733))

(declare-fun m!2725745 () Bool)

(assert (=> b!2298332 m!2725745))

(assert (=> b!2298333 m!2725721))

(declare-fun m!2725747 () Bool)

(assert (=> b!2298333 m!2725747))

(assert (=> b!2298333 m!2725747))

(declare-fun m!2725749 () Bool)

(assert (=> b!2298333 m!2725749))

(assert (=> b!2298333 m!2725749))

(declare-fun m!2725751 () Bool)

(assert (=> b!2298333 m!2725751))

(assert (=> b!2298330 m!2725721))

(assert (=> b!2298330 m!2725747))

(assert (=> b!2298330 m!2725747))

(assert (=> b!2298330 m!2725749))

(assert (=> b!2298330 m!2725749))

(declare-fun m!2725753 () Bool)

(assert (=> b!2298330 m!2725753))

(assert (=> b!2298328 m!2725721))

(declare-fun m!2725755 () Bool)

(assert (=> b!2298328 m!2725755))

(assert (=> b!2298328 m!2725035))

(declare-fun m!2725757 () Bool)

(assert (=> d!679927 m!2725757))

(declare-fun m!2725759 () Bool)

(assert (=> d!679927 m!2725759))

(declare-fun m!2725761 () Bool)

(assert (=> d!679927 m!2725761))

(assert (=> d!679927 m!2725601))

(assert (=> bm!136913 d!679927))

(assert (=> d!679493 d!679485))

(declare-fun d!679929 () Bool)

(assert (=> d!679929 (ruleValid!1473 thiss!16613 otherR!12)))

(assert (=> d!679929 true))

(declare-fun _$65!1166 () Unit!40251)

(assert (=> d!679929 (= (choose!13412 thiss!16613 otherR!12 rules!1750) _$65!1166)))

(declare-fun bs!457531 () Bool)

(assert (= bs!457531 d!679929))

(assert (=> bs!457531 m!2724679))

(assert (=> d!679493 d!679929))

(assert (=> d!679493 d!679589))

(declare-fun bs!457532 () Bool)

(declare-fun d!679931 () Bool)

(assert (= bs!457532 (and d!679931 d!679883)))

(declare-fun lambda!85903 () Int)

(assert (=> bs!457532 (= (and (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toChars!6044 (transformation!4383 (h!32760 rules!1750)))) (= (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toValue!6185 (transformation!4383 (h!32760 rules!1750))))) (= lambda!85903 lambda!85901))))

(declare-fun bs!457533 () Bool)

(assert (= bs!457533 (and d!679931 d!679915)))

(assert (=> bs!457533 (= (and (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toChars!6044 (transformation!4383 r!2363))) (= (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toValue!6185 (transformation!4383 r!2363)))) (= lambda!85903 lambda!85902))))

(assert (=> d!679931 true))

(assert (=> d!679931 (< (dynLambda!11894 order!15257 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) (dynLambda!11895 order!15259 lambda!85903))))

(assert (=> d!679931 true))

(assert (=> d!679931 (< (dynLambda!11891 order!15253 (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) (dynLambda!11895 order!15259 lambda!85903))))

(assert (=> d!679931 (= (semiInverseModEq!1778 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) (Forall!1097 lambda!85903))))

(declare-fun bs!457534 () Bool)

(assert (= bs!457534 d!679931))

(declare-fun m!2725763 () Bool)

(assert (=> bs!457534 m!2725763))

(assert (=> d!679635 d!679931))

(declare-fun d!679933 () Bool)

(assert (=> d!679933 (= (isEmpty!15606 (list!10749 (charsOf!2771 (head!5020 tokens!456)))) ((_ is Nil!27358) (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))

(assert (=> d!679599 d!679933))

(declare-fun bm!136945 () Bool)

(declare-fun call!136950 () Bool)

(declare-fun call!136952 () Bool)

(assert (=> bm!136945 (= call!136950 call!136952)))

(declare-fun b!2298353 () Bool)

(declare-fun e!1472848 () Bool)

(assert (=> b!2298353 (= e!1472848 call!136950)))

(declare-fun b!2298354 () Bool)

(declare-fun res!982706 () Bool)

(assert (=> b!2298354 (=> (not res!982706) (not e!1472848))))

(declare-fun call!136951 () Bool)

(assert (=> b!2298354 (= res!982706 call!136951)))

(declare-fun e!1472853 () Bool)

(assert (=> b!2298354 (= e!1472853 e!1472848)))

(declare-fun d!679935 () Bool)

(declare-fun res!982704 () Bool)

(declare-fun e!1472850 () Bool)

(assert (=> d!679935 (=> res!982704 e!1472850)))

(assert (=> d!679935 (= res!982704 ((_ is ElementMatch!6731) (regex!4383 r!2363)))))

(assert (=> d!679935 (= (validRegex!2538 (regex!4383 r!2363)) e!1472850)))

(declare-fun b!2298355 () Bool)

(declare-fun e!1472849 () Bool)

(assert (=> b!2298355 (= e!1472849 call!136952)))

(declare-fun b!2298356 () Bool)

(declare-fun res!982705 () Bool)

(declare-fun e!1472851 () Bool)

(assert (=> b!2298356 (=> res!982705 e!1472851)))

(assert (=> b!2298356 (= res!982705 (not ((_ is Concat!11277) (regex!4383 r!2363))))))

(assert (=> b!2298356 (= e!1472853 e!1472851)))

(declare-fun b!2298357 () Bool)

(declare-fun e!1472852 () Bool)

(assert (=> b!2298357 (= e!1472852 e!1472853)))

(declare-fun c!364429 () Bool)

(assert (=> b!2298357 (= c!364429 ((_ is Union!6731) (regex!4383 r!2363)))))

(declare-fun b!2298358 () Bool)

(assert (=> b!2298358 (= e!1472852 e!1472849)))

(declare-fun res!982703 () Bool)

(assert (=> b!2298358 (= res!982703 (not (nullable!1875 (reg!7060 (regex!4383 r!2363)))))))

(assert (=> b!2298358 (=> (not res!982703) (not e!1472849))))

(declare-fun b!2298359 () Bool)

(declare-fun e!1472854 () Bool)

(assert (=> b!2298359 (= e!1472851 e!1472854)))

(declare-fun res!982707 () Bool)

(assert (=> b!2298359 (=> (not res!982707) (not e!1472854))))

(assert (=> b!2298359 (= res!982707 call!136950)))

(declare-fun b!2298360 () Bool)

(assert (=> b!2298360 (= e!1472850 e!1472852)))

(declare-fun c!364430 () Bool)

(assert (=> b!2298360 (= c!364430 ((_ is Star!6731) (regex!4383 r!2363)))))

(declare-fun bm!136946 () Bool)

(assert (=> bm!136946 (= call!136951 (validRegex!2538 (ite c!364429 (regOne!13975 (regex!4383 r!2363)) (regTwo!13974 (regex!4383 r!2363)))))))

(declare-fun bm!136947 () Bool)

(assert (=> bm!136947 (= call!136952 (validRegex!2538 (ite c!364430 (reg!7060 (regex!4383 r!2363)) (ite c!364429 (regTwo!13975 (regex!4383 r!2363)) (regOne!13974 (regex!4383 r!2363))))))))

(declare-fun b!2298361 () Bool)

(assert (=> b!2298361 (= e!1472854 call!136951)))

(assert (= (and d!679935 (not res!982704)) b!2298360))

(assert (= (and b!2298360 c!364430) b!2298358))

(assert (= (and b!2298360 (not c!364430)) b!2298357))

(assert (= (and b!2298358 res!982703) b!2298355))

(assert (= (and b!2298357 c!364429) b!2298354))

(assert (= (and b!2298357 (not c!364429)) b!2298356))

(assert (= (and b!2298354 res!982706) b!2298353))

(assert (= (and b!2298356 (not res!982705)) b!2298359))

(assert (= (and b!2298359 res!982707) b!2298361))

(assert (= (or b!2298354 b!2298361) bm!136946))

(assert (= (or b!2298353 b!2298359) bm!136945))

(assert (= (or b!2298355 bm!136945) bm!136947))

(declare-fun m!2725765 () Bool)

(assert (=> b!2298358 m!2725765))

(declare-fun m!2725767 () Bool)

(assert (=> bm!136946 m!2725767))

(declare-fun m!2725769 () Bool)

(assert (=> bm!136947 m!2725769))

(assert (=> d!679599 d!679935))

(declare-fun b!2298362 () Bool)

(declare-fun res!982713 () Bool)

(declare-fun e!1472855 () Bool)

(assert (=> b!2298362 (=> res!982713 e!1472855)))

(declare-fun e!1472857 () Bool)

(assert (=> b!2298362 (= res!982713 e!1472857)))

(declare-fun res!982711 () Bool)

(assert (=> b!2298362 (=> (not res!982711) (not e!1472857))))

(declare-fun lt!852521 () Bool)

(assert (=> b!2298362 (= res!982711 lt!852521)))

(declare-fun d!679937 () Bool)

(declare-fun e!1472858 () Bool)

(assert (=> d!679937 e!1472858))

(declare-fun c!364431 () Bool)

(assert (=> d!679937 (= c!364431 ((_ is EmptyExpr!6731) (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852395))))))))

(declare-fun e!1472859 () Bool)

(assert (=> d!679937 (= lt!852521 e!1472859)))

(declare-fun c!364432 () Bool)

(assert (=> d!679937 (= c!364432 (isEmpty!15606 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))))))

(assert (=> d!679937 (validRegex!2538 (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))))

(assert (=> d!679937 (= (matchR!2988 (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))) (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))) lt!852521)))

(declare-fun b!2298363 () Bool)

(assert (=> b!2298363 (= e!1472859 (nullable!1875 (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852395))))))))

(declare-fun b!2298364 () Bool)

(declare-fun e!1472861 () Bool)

(assert (=> b!2298364 (= e!1472858 e!1472861)))

(declare-fun c!364433 () Bool)

(assert (=> b!2298364 (= c!364433 ((_ is EmptyLang!6731) (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852395))))))))

(declare-fun b!2298365 () Bool)

(declare-fun res!982709 () Bool)

(declare-fun e!1472856 () Bool)

(assert (=> b!2298365 (=> res!982709 e!1472856)))

(assert (=> b!2298365 (= res!982709 (not (isEmpty!15606 (tail!3319 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))))))))

(declare-fun b!2298366 () Bool)

(declare-fun e!1472860 () Bool)

(assert (=> b!2298366 (= e!1472860 e!1472856)))

(declare-fun res!982710 () Bool)

(assert (=> b!2298366 (=> res!982710 e!1472856)))

(declare-fun call!136953 () Bool)

(assert (=> b!2298366 (= res!982710 call!136953)))

(declare-fun bm!136948 () Bool)

(assert (=> bm!136948 (= call!136953 (isEmpty!15606 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))))))

(declare-fun b!2298367 () Bool)

(assert (=> b!2298367 (= e!1472858 (= lt!852521 call!136953))))

(declare-fun b!2298368 () Bool)

(declare-fun res!982714 () Bool)

(assert (=> b!2298368 (=> (not res!982714) (not e!1472857))))

(assert (=> b!2298368 (= res!982714 (isEmpty!15606 (tail!3319 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395)))))))))

(declare-fun b!2298369 () Bool)

(assert (=> b!2298369 (= e!1472859 (matchR!2988 (derivativeStep!1536 (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))) (head!5022 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395)))))) (tail!3319 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395)))))))))

(declare-fun b!2298370 () Bool)

(declare-fun res!982712 () Bool)

(assert (=> b!2298370 (=> (not res!982712) (not e!1472857))))

(assert (=> b!2298370 (= res!982712 (not call!136953))))

(declare-fun b!2298371 () Bool)

(assert (=> b!2298371 (= e!1472857 (= (head!5022 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))) (c!364221 (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))))))

(declare-fun b!2298372 () Bool)

(assert (=> b!2298372 (= e!1472861 (not lt!852521))))

(declare-fun b!2298373 () Bool)

(assert (=> b!2298373 (= e!1472856 (not (= (head!5022 (list!10749 (charsOf!2771 (_1!16119 (get!8246 lt!852395))))) (c!364221 (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852395))))))))))

(declare-fun b!2298374 () Bool)

(assert (=> b!2298374 (= e!1472855 e!1472860)))

(declare-fun res!982708 () Bool)

(assert (=> b!2298374 (=> (not res!982708) (not e!1472860))))

(assert (=> b!2298374 (= res!982708 (not lt!852521))))

(declare-fun b!2298375 () Bool)

(declare-fun res!982715 () Bool)

(assert (=> b!2298375 (=> res!982715 e!1472855)))

(assert (=> b!2298375 (= res!982715 (not ((_ is ElementMatch!6731) (regex!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))))))

(assert (=> b!2298375 (= e!1472861 e!1472855)))

(assert (= (and d!679937 c!364432) b!2298363))

(assert (= (and d!679937 (not c!364432)) b!2298369))

(assert (= (and d!679937 c!364431) b!2298367))

(assert (= (and d!679937 (not c!364431)) b!2298364))

(assert (= (and b!2298364 c!364433) b!2298372))

(assert (= (and b!2298364 (not c!364433)) b!2298375))

(assert (= (and b!2298375 (not res!982715)) b!2298362))

(assert (= (and b!2298362 res!982711) b!2298370))

(assert (= (and b!2298370 res!982712) b!2298368))

(assert (= (and b!2298368 res!982714) b!2298371))

(assert (= (and b!2298362 (not res!982713)) b!2298374))

(assert (= (and b!2298374 res!982708) b!2298366))

(assert (= (and b!2298366 (not res!982710)) b!2298365))

(assert (= (and b!2298365 (not res!982709)) b!2298373))

(assert (= (or b!2298367 b!2298366 b!2298370) bm!136948))

(assert (=> b!2298373 m!2725127))

(declare-fun m!2725771 () Bool)

(assert (=> b!2298373 m!2725771))

(assert (=> b!2298368 m!2725127))

(declare-fun m!2725773 () Bool)

(assert (=> b!2298368 m!2725773))

(assert (=> b!2298368 m!2725773))

(declare-fun m!2725775 () Bool)

(assert (=> b!2298368 m!2725775))

(assert (=> d!679937 m!2725127))

(declare-fun m!2725777 () Bool)

(assert (=> d!679937 m!2725777))

(declare-fun m!2725779 () Bool)

(assert (=> d!679937 m!2725779))

(declare-fun m!2725781 () Bool)

(assert (=> b!2298363 m!2725781))

(assert (=> b!2298371 m!2725127))

(assert (=> b!2298371 m!2725771))

(assert (=> b!2298365 m!2725127))

(assert (=> b!2298365 m!2725773))

(assert (=> b!2298365 m!2725773))

(assert (=> b!2298365 m!2725775))

(assert (=> b!2298369 m!2725127))

(assert (=> b!2298369 m!2725771))

(assert (=> b!2298369 m!2725771))

(declare-fun m!2725783 () Bool)

(assert (=> b!2298369 m!2725783))

(assert (=> b!2298369 m!2725127))

(assert (=> b!2298369 m!2725773))

(assert (=> b!2298369 m!2725783))

(assert (=> b!2298369 m!2725773))

(declare-fun m!2725785 () Bool)

(assert (=> b!2298369 m!2725785))

(assert (=> bm!136948 m!2725127))

(assert (=> bm!136948 m!2725777))

(assert (=> b!2297838 d!679937))

(assert (=> b!2297838 d!679647))

(assert (=> b!2297838 d!679657))

(assert (=> b!2297838 d!679659))

(assert (=> d!679605 d!679935))

(assert (=> bm!136910 d!679933))

(assert (=> b!2297836 d!679657))

(assert (=> b!2297836 d!679659))

(assert (=> b!2297836 d!679647))

(declare-fun d!679939 () Bool)

(declare-fun lt!852522 () Int)

(assert (=> d!679939 (>= lt!852522 0)))

(declare-fun e!1472862 () Int)

(assert (=> d!679939 (= lt!852522 e!1472862)))

(declare-fun c!364434 () Bool)

(assert (=> d!679939 (= c!364434 ((_ is Nil!27358) (++!6689 lt!852265 (_2!16119 lt!852272))))))

(assert (=> d!679939 (= (size!21562 (++!6689 lt!852265 (_2!16119 lt!852272))) lt!852522)))

(declare-fun b!2298376 () Bool)

(assert (=> b!2298376 (= e!1472862 0)))

(declare-fun b!2298377 () Bool)

(assert (=> b!2298377 (= e!1472862 (+ 1 (size!21562 (t!205450 (++!6689 lt!852265 (_2!16119 lt!852272))))))))

(assert (= (and d!679939 c!364434) b!2298376))

(assert (= (and d!679939 (not c!364434)) b!2298377))

(declare-fun m!2725787 () Bool)

(assert (=> b!2298377 m!2725787))

(assert (=> b!2297813 d!679939))

(assert (=> b!2297813 d!679899))

(declare-fun d!679941 () Bool)

(declare-fun c!364437 () Bool)

(assert (=> d!679941 (= c!364437 ((_ is Nil!27358) lt!852376))))

(declare-fun e!1472865 () (InoxSet C!13608))

(assert (=> d!679941 (= (content!3679 lt!852376) e!1472865)))

(declare-fun b!2298382 () Bool)

(assert (=> b!2298382 (= e!1472865 ((as const (Array C!13608 Bool)) false))))

(declare-fun b!2298383 () Bool)

(assert (=> b!2298383 (= e!1472865 ((_ map or) (store ((as const (Array C!13608 Bool)) false) (h!32759 lt!852376) true) (content!3679 (t!205450 lt!852376))))))

(assert (= (and d!679941 c!364437) b!2298382))

(assert (= (and d!679941 (not c!364437)) b!2298383))

(declare-fun m!2725789 () Bool)

(assert (=> b!2298383 m!2725789))

(declare-fun m!2725791 () Bool)

(assert (=> b!2298383 m!2725791))

(assert (=> d!679619 d!679941))

(declare-fun d!679943 () Bool)

(declare-fun c!364438 () Bool)

(assert (=> d!679943 (= c!364438 ((_ is Nil!27358) lt!852265))))

(declare-fun e!1472866 () (InoxSet C!13608))

(assert (=> d!679943 (= (content!3679 lt!852265) e!1472866)))

(declare-fun b!2298384 () Bool)

(assert (=> b!2298384 (= e!1472866 ((as const (Array C!13608 Bool)) false))))

(declare-fun b!2298385 () Bool)

(assert (=> b!2298385 (= e!1472866 ((_ map or) (store ((as const (Array C!13608 Bool)) false) (h!32759 lt!852265) true) (content!3679 (t!205450 lt!852265))))))

(assert (= (and d!679943 c!364438) b!2298384))

(assert (= (and d!679943 (not c!364438)) b!2298385))

(declare-fun m!2725793 () Bool)

(assert (=> b!2298385 m!2725793))

(declare-fun m!2725795 () Bool)

(assert (=> b!2298385 m!2725795))

(assert (=> d!679619 d!679943))

(declare-fun d!679945 () Bool)

(declare-fun c!364439 () Bool)

(assert (=> d!679945 (= c!364439 ((_ is Nil!27358) (_2!16119 lt!852272)))))

(declare-fun e!1472867 () (InoxSet C!13608))

(assert (=> d!679945 (= (content!3679 (_2!16119 lt!852272)) e!1472867)))

(declare-fun b!2298386 () Bool)

(assert (=> b!2298386 (= e!1472867 ((as const (Array C!13608 Bool)) false))))

(declare-fun b!2298387 () Bool)

(assert (=> b!2298387 (= e!1472867 ((_ map or) (store ((as const (Array C!13608 Bool)) false) (h!32759 (_2!16119 lt!852272)) true) (content!3679 (t!205450 (_2!16119 lt!852272)))))))

(assert (= (and d!679945 c!364439) b!2298386))

(assert (= (and d!679945 (not c!364439)) b!2298387))

(declare-fun m!2725797 () Bool)

(assert (=> b!2298387 m!2725797))

(declare-fun m!2725799 () Bool)

(assert (=> b!2298387 m!2725799))

(assert (=> d!679619 d!679945))

(declare-fun d!679947 () Bool)

(assert (=> d!679947 (= (head!5022 lt!852265) (h!32759 lt!852265))))

(assert (=> b!2297811 d!679947))

(declare-fun d!679949 () Bool)

(assert (=> d!679949 (= (head!5022 (++!6689 lt!852265 (_2!16119 lt!852272))) (h!32759 (++!6689 lt!852265 (_2!16119 lt!852272))))))

(assert (=> b!2297811 d!679949))

(assert (=> b!2297763 d!679921))

(declare-fun d!679951 () Bool)

(assert (=> d!679951 (= (isEmpty!15606 (originalCharacters!5153 (h!32761 tokens!456))) ((_ is Nil!27358) (originalCharacters!5153 (h!32761 tokens!456))))))

(assert (=> d!679495 d!679951))

(declare-fun d!679953 () Bool)

(assert (=> d!679953 (= (isDefined!4238 lt!852395) (not (isEmpty!15608 lt!852395)))))

(declare-fun bs!457535 () Bool)

(assert (= bs!457535 d!679953))

(assert (=> bs!457535 m!2725133))

(assert (=> b!2297833 d!679953))

(assert (=> d!679483 d!679585))

(declare-fun d!679955 () Bool)

(declare-fun charsToBigInt!1 (List!27451) Int)

(assert (=> d!679955 (= (inv!17 (value!138735 (h!32761 tokens!456))) (= (charsToBigInt!1 (text!32263 (value!138735 (h!32761 tokens!456)))) (value!138727 (value!138735 (h!32761 tokens!456)))))))

(declare-fun bs!457536 () Bool)

(assert (= bs!457536 d!679955))

(declare-fun m!2725801 () Bool)

(assert (=> bs!457536 m!2725801))

(assert (=> b!2297720 d!679955))

(declare-fun d!679957 () Bool)

(declare-fun charsToInt!0 (List!27451) (_ BitVec 32))

(assert (=> d!679957 (= (inv!16 (value!138735 (h!32761 tokens!456))) (= (charsToInt!0 (text!32262 (value!138735 (h!32761 tokens!456)))) (value!138726 (value!138735 (h!32761 tokens!456)))))))

(declare-fun bs!457537 () Bool)

(assert (= bs!457537 d!679957))

(declare-fun m!2725803 () Bool)

(assert (=> bs!457537 m!2725803))

(assert (=> b!2297716 d!679957))

(declare-fun d!679959 () Bool)

(declare-fun res!982716 () Bool)

(declare-fun e!1472868 () Bool)

(assert (=> d!679959 (=> (not res!982716) (not e!1472868))))

(assert (=> d!679959 (= res!982716 (not (isEmpty!15606 (originalCharacters!5153 (h!32761 (t!205452 tokens!456))))))))

(assert (=> d!679959 (= (inv!36975 (h!32761 (t!205452 tokens!456))) e!1472868)))

(declare-fun b!2298388 () Bool)

(declare-fun res!982717 () Bool)

(assert (=> b!2298388 (=> (not res!982717) (not e!1472868))))

(assert (=> b!2298388 (= res!982717 (= (originalCharacters!5153 (h!32761 (t!205452 tokens!456))) (list!10749 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (value!138735 (h!32761 (t!205452 tokens!456)))))))))

(declare-fun b!2298389 () Bool)

(assert (=> b!2298389 (= e!1472868 (= (size!21560 (h!32761 (t!205452 tokens!456))) (size!21562 (originalCharacters!5153 (h!32761 (t!205452 tokens!456))))))))

(assert (= (and d!679959 res!982716) b!2298388))

(assert (= (and b!2298388 res!982717) b!2298389))

(declare-fun b_lambda!73223 () Bool)

(assert (=> (not b_lambda!73223) (not b!2298388)))

(declare-fun tb!137339 () Bool)

(declare-fun t!205569 () Bool)

(assert (=> (and b!2297367 (= (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) t!205569) tb!137339))

(declare-fun b!2298390 () Bool)

(declare-fun e!1472869 () Bool)

(declare-fun tp!728877 () Bool)

(assert (=> b!2298390 (= e!1472869 (and (inv!36979 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (value!138735 (h!32761 (t!205452 tokens!456)))))) tp!728877))))

(declare-fun result!167422 () Bool)

(assert (=> tb!137339 (= result!167422 (and (inv!36980 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (value!138735 (h!32761 (t!205452 tokens!456))))) e!1472869))))

(assert (= tb!137339 b!2298390))

(declare-fun m!2725805 () Bool)

(assert (=> b!2298390 m!2725805))

(declare-fun m!2725807 () Bool)

(assert (=> tb!137339 m!2725807))

(assert (=> b!2298388 t!205569))

(declare-fun b_and!182949 () Bool)

(assert (= b_and!182889 (and (=> t!205569 result!167422) b_and!182949)))

(declare-fun t!205571 () Bool)

(declare-fun tb!137341 () Bool)

(assert (=> (and b!2297866 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) t!205571) tb!137341))

(declare-fun result!167424 () Bool)

(assert (= result!167424 result!167422))

(assert (=> b!2298388 t!205571))

(declare-fun b_and!182951 () Bool)

(assert (= b_and!182893 (and (=> t!205571 result!167424) b_and!182951)))

(declare-fun tb!137343 () Bool)

(declare-fun t!205573 () Bool)

(assert (=> (and b!2297359 (= (toChars!6044 (transformation!4383 r!2363)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) t!205573) tb!137343))

(declare-fun result!167426 () Bool)

(assert (= result!167426 result!167422))

(assert (=> b!2298388 t!205573))

(declare-fun b_and!182953 () Bool)

(assert (= b_and!182895 (and (=> t!205573 result!167426) b_and!182953)))

(declare-fun tb!137345 () Bool)

(declare-fun t!205575 () Bool)

(assert (=> (and b!2297379 (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) t!205575) tb!137345))

(declare-fun result!167428 () Bool)

(assert (= result!167428 result!167422))

(assert (=> b!2298388 t!205575))

(declare-fun b_and!182955 () Bool)

(assert (= b_and!182899 (and (=> t!205575 result!167428) b_and!182955)))

(declare-fun t!205577 () Bool)

(declare-fun tb!137347 () Bool)

(assert (=> (and b!2297855 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) t!205577) tb!137347))

(declare-fun result!167430 () Bool)

(assert (= result!167430 result!167422))

(assert (=> b!2298388 t!205577))

(declare-fun b_and!182957 () Bool)

(assert (= b_and!182897 (and (=> t!205577 result!167430) b_and!182957)))

(declare-fun t!205579 () Bool)

(declare-fun tb!137349 () Bool)

(assert (=> (and b!2297386 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) t!205579) tb!137349))

(declare-fun result!167432 () Bool)

(assert (= result!167432 result!167422))

(assert (=> b!2298388 t!205579))

(declare-fun b_and!182959 () Bool)

(assert (= b_and!182891 (and (=> t!205579 result!167432) b_and!182959)))

(declare-fun m!2725809 () Bool)

(assert (=> d!679959 m!2725809))

(declare-fun m!2725811 () Bool)

(assert (=> b!2298388 m!2725811))

(assert (=> b!2298388 m!2725811))

(declare-fun m!2725813 () Bool)

(assert (=> b!2298388 m!2725813))

(declare-fun m!2725815 () Bool)

(assert (=> b!2298389 m!2725815))

(assert (=> b!2297852 d!679959))

(declare-fun d!679961 () Bool)

(declare-fun lt!852523 () Int)

(assert (=> d!679961 (= lt!852523 (size!21562 (list!10749 (_2!16117 lt!852345))))))

(assert (=> d!679961 (= lt!852523 (size!21566 (c!364220 (_2!16117 lt!852345))))))

(assert (=> d!679961 (= (size!21561 (_2!16117 lt!852345)) lt!852523)))

(declare-fun bs!457538 () Bool)

(assert (= bs!457538 d!679961))

(assert (=> bs!457538 m!2724985))

(assert (=> bs!457538 m!2724985))

(declare-fun m!2725817 () Bool)

(assert (=> bs!457538 m!2725817))

(declare-fun m!2725819 () Bool)

(assert (=> bs!457538 m!2725819))

(assert (=> b!2297624 d!679961))

(declare-fun d!679963 () Bool)

(declare-fun lt!852524 () Int)

(assert (=> d!679963 (= lt!852524 (size!21562 (list!10749 (seqFromList!3087 input!1722))))))

(assert (=> d!679963 (= lt!852524 (size!21566 (c!364220 (seqFromList!3087 input!1722))))))

(assert (=> d!679963 (= (size!21561 (seqFromList!3087 input!1722)) lt!852524)))

(declare-fun bs!457539 () Bool)

(assert (= bs!457539 d!679963))

(assert (=> bs!457539 m!2724687))

(assert (=> bs!457539 m!2724965))

(assert (=> bs!457539 m!2724965))

(assert (=> bs!457539 m!2725561))

(declare-fun m!2725821 () Bool)

(assert (=> bs!457539 m!2725821))

(assert (=> b!2297624 d!679963))

(declare-fun lt!852525 () List!27452)

(declare-fun e!1472871 () Bool)

(declare-fun b!2298394 () Bool)

(assert (=> b!2298394 (= e!1472871 (or (not (= lt!852372 Nil!27358)) (= lt!852525 lt!852265)))))

(declare-fun b!2298392 () Bool)

(declare-fun e!1472870 () List!27452)

(assert (=> b!2298392 (= e!1472870 (Cons!27358 (h!32759 lt!852265) (++!6689 (t!205450 lt!852265) lt!852372)))))

(declare-fun b!2298393 () Bool)

(declare-fun res!982719 () Bool)

(assert (=> b!2298393 (=> (not res!982719) (not e!1472871))))

(assert (=> b!2298393 (= res!982719 (= (size!21562 lt!852525) (+ (size!21562 lt!852265) (size!21562 lt!852372))))))

(declare-fun b!2298391 () Bool)

(assert (=> b!2298391 (= e!1472870 lt!852372)))

(declare-fun d!679965 () Bool)

(assert (=> d!679965 e!1472871))

(declare-fun res!982718 () Bool)

(assert (=> d!679965 (=> (not res!982718) (not e!1472871))))

(assert (=> d!679965 (= res!982718 (= (content!3679 lt!852525) ((_ map or) (content!3679 lt!852265) (content!3679 lt!852372))))))

(assert (=> d!679965 (= lt!852525 e!1472870)))

(declare-fun c!364440 () Bool)

(assert (=> d!679965 (= c!364440 ((_ is Nil!27358) lt!852265))))

(assert (=> d!679965 (= (++!6689 lt!852265 lt!852372) lt!852525)))

(assert (= (and d!679965 c!364440) b!2298391))

(assert (= (and d!679965 (not c!364440)) b!2298392))

(assert (= (and d!679965 res!982718) b!2298393))

(assert (= (and b!2298393 res!982719) b!2298394))

(declare-fun m!2725823 () Bool)

(assert (=> b!2298392 m!2725823))

(declare-fun m!2725825 () Bool)

(assert (=> b!2298393 m!2725825))

(assert (=> b!2298393 m!2725087))

(declare-fun m!2725827 () Bool)

(assert (=> b!2298393 m!2725827))

(declare-fun m!2725829 () Bool)

(assert (=> d!679965 m!2725829))

(assert (=> d!679965 m!2725105))

(declare-fun m!2725831 () Bool)

(assert (=> d!679965 m!2725831))

(assert (=> d!679615 d!679965))

(assert (=> d!679615 d!679663))

(assert (=> d!679615 d!679899))

(declare-fun bs!457540 () Bool)

(declare-fun d!679967 () Bool)

(assert (= bs!457540 (and d!679967 d!679665)))

(declare-fun lambda!85904 () Int)

(assert (=> bs!457540 (= (= (toValue!6185 (transformation!4383 (h!32760 rules!1750))) (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) (= lambda!85904 lambda!85885))))

(declare-fun bs!457541 () Bool)

(assert (= bs!457541 (and d!679967 d!679881)))

(assert (=> bs!457541 (= (= (toValue!6185 (transformation!4383 (h!32760 rules!1750))) (toValue!6185 (transformation!4383 otherR!12))) (= lambda!85904 lambda!85898))))

(assert (=> d!679967 true))

(assert (=> d!679967 (< (dynLambda!11891 order!15253 (toValue!6185 (transformation!4383 (h!32760 rules!1750)))) (dynLambda!11892 order!15255 lambda!85904))))

(assert (=> d!679967 (= (equivClasses!1697 (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toValue!6185 (transformation!4383 (h!32760 rules!1750)))) (Forall2!714 lambda!85904))))

(declare-fun bs!457542 () Bool)

(assert (= bs!457542 d!679967))

(declare-fun m!2725833 () Bool)

(assert (=> bs!457542 m!2725833))

(assert (=> b!2297667 d!679967))

(declare-fun d!679969 () Bool)

(assert (=> d!679969 (= (inv!36972 (tag!4873 (rule!6725 (h!32761 (t!205452 tokens!456))))) (= (mod (str.len (value!138734 (tag!4873 (rule!6725 (h!32761 (t!205452 tokens!456)))))) 2) 0))))

(assert (=> b!2297854 d!679969))

(declare-fun d!679971 () Bool)

(declare-fun res!982720 () Bool)

(declare-fun e!1472872 () Bool)

(assert (=> d!679971 (=> (not res!982720) (not e!1472872))))

(assert (=> d!679971 (= res!982720 (semiInverseModEq!1778 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (toValue!6185 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))))))

(assert (=> d!679971 (= (inv!36976 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) e!1472872)))

(declare-fun b!2298395 () Bool)

(assert (=> b!2298395 (= e!1472872 (equivClasses!1697 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (toValue!6185 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))))))

(assert (= (and d!679971 res!982720) b!2298395))

(declare-fun m!2725835 () Bool)

(assert (=> d!679971 m!2725835))

(declare-fun m!2725837 () Bool)

(assert (=> b!2298395 m!2725837))

(assert (=> b!2297854 d!679971))

(declare-fun bm!136949 () Bool)

(declare-fun call!136954 () Bool)

(declare-fun call!136956 () Bool)

(assert (=> bm!136949 (= call!136954 call!136956)))

(declare-fun b!2298396 () Bool)

(declare-fun e!1472873 () Bool)

(assert (=> b!2298396 (= e!1472873 call!136954)))

(declare-fun b!2298397 () Bool)

(declare-fun res!982724 () Bool)

(assert (=> b!2298397 (=> (not res!982724) (not e!1472873))))

(declare-fun call!136955 () Bool)

(assert (=> b!2298397 (= res!982724 call!136955)))

(declare-fun e!1472878 () Bool)

(assert (=> b!2298397 (= e!1472878 e!1472873)))

(declare-fun d!679973 () Bool)

(declare-fun res!982722 () Bool)

(declare-fun e!1472875 () Bool)

(assert (=> d!679973 (=> res!982722 e!1472875)))

(assert (=> d!679973 (= res!982722 ((_ is ElementMatch!6731) (regex!4383 otherR!12)))))

(assert (=> d!679973 (= (validRegex!2538 (regex!4383 otherR!12)) e!1472875)))

(declare-fun b!2298398 () Bool)

(declare-fun e!1472874 () Bool)

(assert (=> b!2298398 (= e!1472874 call!136956)))

(declare-fun b!2298399 () Bool)

(declare-fun res!982723 () Bool)

(declare-fun e!1472876 () Bool)

(assert (=> b!2298399 (=> res!982723 e!1472876)))

(assert (=> b!2298399 (= res!982723 (not ((_ is Concat!11277) (regex!4383 otherR!12))))))

(assert (=> b!2298399 (= e!1472878 e!1472876)))

(declare-fun b!2298400 () Bool)

(declare-fun e!1472877 () Bool)

(assert (=> b!2298400 (= e!1472877 e!1472878)))

(declare-fun c!364441 () Bool)

(assert (=> b!2298400 (= c!364441 ((_ is Union!6731) (regex!4383 otherR!12)))))

(declare-fun b!2298401 () Bool)

(assert (=> b!2298401 (= e!1472877 e!1472874)))

(declare-fun res!982721 () Bool)

(assert (=> b!2298401 (= res!982721 (not (nullable!1875 (reg!7060 (regex!4383 otherR!12)))))))

(assert (=> b!2298401 (=> (not res!982721) (not e!1472874))))

(declare-fun b!2298402 () Bool)

(declare-fun e!1472879 () Bool)

(assert (=> b!2298402 (= e!1472876 e!1472879)))

(declare-fun res!982725 () Bool)

(assert (=> b!2298402 (=> (not res!982725) (not e!1472879))))

(assert (=> b!2298402 (= res!982725 call!136954)))

(declare-fun b!2298403 () Bool)

(assert (=> b!2298403 (= e!1472875 e!1472877)))

(declare-fun c!364442 () Bool)

(assert (=> b!2298403 (= c!364442 ((_ is Star!6731) (regex!4383 otherR!12)))))

(declare-fun bm!136950 () Bool)

(assert (=> bm!136950 (= call!136955 (validRegex!2538 (ite c!364441 (regOne!13975 (regex!4383 otherR!12)) (regTwo!13974 (regex!4383 otherR!12)))))))

(declare-fun bm!136951 () Bool)

(assert (=> bm!136951 (= call!136956 (validRegex!2538 (ite c!364442 (reg!7060 (regex!4383 otherR!12)) (ite c!364441 (regTwo!13975 (regex!4383 otherR!12)) (regOne!13974 (regex!4383 otherR!12))))))))

(declare-fun b!2298404 () Bool)

(assert (=> b!2298404 (= e!1472879 call!136955)))

(assert (= (and d!679973 (not res!982722)) b!2298403))

(assert (= (and b!2298403 c!364442) b!2298401))

(assert (= (and b!2298403 (not c!364442)) b!2298400))

(assert (= (and b!2298401 res!982721) b!2298398))

(assert (= (and b!2298400 c!364441) b!2298397))

(assert (= (and b!2298400 (not c!364441)) b!2298399))

(assert (= (and b!2298397 res!982724) b!2298396))

(assert (= (and b!2298399 (not res!982723)) b!2298402))

(assert (= (and b!2298402 res!982725) b!2298404))

(assert (= (or b!2298397 b!2298404) bm!136950))

(assert (= (or b!2298396 b!2298402) bm!136949))

(assert (= (or b!2298398 bm!136949) bm!136951))

(declare-fun m!2725839 () Bool)

(assert (=> b!2298401 m!2725839))

(declare-fun m!2725841 () Bool)

(assert (=> bm!136950 m!2725841))

(declare-fun m!2725843 () Bool)

(assert (=> bm!136951 m!2725843))

(assert (=> d!679485 d!679973))

(assert (=> b!2297733 d!679663))

(assert (=> b!2297733 d!679611))

(declare-fun d!679975 () Bool)

(assert (=> d!679975 (= (list!10749 lt!852362) (list!10753 (c!364220 lt!852362)))))

(declare-fun bs!457543 () Bool)

(assert (= bs!457543 d!679975))

(declare-fun m!2725845 () Bool)

(assert (=> bs!457543 m!2725845))

(assert (=> d!679603 d!679975))

(declare-fun d!679977 () Bool)

(declare-fun lt!852528 () Int)

(assert (=> d!679977 (= lt!852528 (size!21568 (list!10748 (_1!16117 lt!852345))))))

(declare-fun size!21570 (Conc!8915) Int)

(assert (=> d!679977 (= lt!852528 (size!21570 (c!364222 (_1!16117 lt!852345))))))

(assert (=> d!679977 (= (size!21565 (_1!16117 lt!852345)) lt!852528)))

(declare-fun bs!457544 () Bool)

(assert (= bs!457544 d!679977))

(assert (=> bs!457544 m!2724963))

(assert (=> bs!457544 m!2724963))

(declare-fun m!2725847 () Bool)

(assert (=> bs!457544 m!2725847))

(declare-fun m!2725849 () Bool)

(assert (=> bs!457544 m!2725849))

(assert (=> d!679501 d!679977))

(declare-fun d!679979 () Bool)

(declare-fun e!1472975 () Bool)

(assert (=> d!679979 e!1472975))

(declare-fun res!982761 () Bool)

(assert (=> d!679979 (=> (not res!982761) (not e!1472975))))

(declare-fun lt!852731 () tuple2!27214)

(declare-fun lexRec!547 (LexerInterface!3980 List!27453 BalanceConc!17556) tuple2!27214)

(assert (=> d!679979 (= res!982761 (= (list!10748 (_1!16117 lt!852731)) (list!10748 (_1!16117 (lexRec!547 thiss!16613 rules!1750 (seqFromList!3087 input!1722))))))))

(declare-fun e!1472973 () tuple2!27214)

(assert (=> d!679979 (= lt!852731 e!1472973)))

(declare-fun c!364468 () Bool)

(declare-datatypes ((tuple2!27226 0))(
  ( (tuple2!27227 (_1!16123 Token!8244) (_2!16123 BalanceConc!17556)) )
))
(declare-datatypes ((Option!5377 0))(
  ( (None!5376) (Some!5376 (v!30468 tuple2!27226)) )
))
(declare-fun lt!852733 () Option!5377)

(assert (=> d!679979 (= c!364468 ((_ is Some!5376) lt!852733))))

(declare-fun maxPrefixZipperSequenceV2!417 (LexerInterface!3980 List!27453 BalanceConc!17556 BalanceConc!17556) Option!5377)

(assert (=> d!679979 (= lt!852733 (maxPrefixZipperSequenceV2!417 thiss!16613 rules!1750 (seqFromList!3087 input!1722) (seqFromList!3087 input!1722)))))

(declare-fun lt!852730 () Unit!40251)

(declare-fun lt!852734 () Unit!40251)

(assert (=> d!679979 (= lt!852730 lt!852734)))

(declare-fun lt!852743 () List!27452)

(declare-fun lt!852751 () List!27452)

(declare-fun isSuffix!783 (List!27452 List!27452) Bool)

(assert (=> d!679979 (isSuffix!783 lt!852743 (++!6689 lt!852751 lt!852743))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!477 (List!27452 List!27452) Unit!40251)

(assert (=> d!679979 (= lt!852734 (lemmaConcatTwoListThenFSndIsSuffix!477 lt!852751 lt!852743))))

(assert (=> d!679979 (= lt!852743 (list!10749 (seqFromList!3087 input!1722)))))

(assert (=> d!679979 (= lt!852751 (list!10749 (BalanceConc!17557 Empty!8914)))))

(assert (=> d!679979 (= (lexTailRecV2!797 thiss!16613 rules!1750 (seqFromList!3087 input!1722) (BalanceConc!17557 Empty!8914) (seqFromList!3087 input!1722) (BalanceConc!17559 Empty!8915)) lt!852731)))

(declare-fun b!2298604 () Bool)

(assert (=> b!2298604 (= e!1472975 (= (list!10749 (_2!16117 lt!852731)) (list!10749 (_2!16117 (lexRec!547 thiss!16613 rules!1750 (seqFromList!3087 input!1722))))))))

(declare-fun b!2298605 () Bool)

(assert (=> b!2298605 (= e!1472973 (tuple2!27215 (BalanceConc!17559 Empty!8915) (seqFromList!3087 input!1722)))))

(declare-fun b!2298606 () Bool)

(declare-fun e!1472974 () tuple2!27214)

(assert (=> b!2298606 (= e!1472974 (tuple2!27215 (BalanceConc!17559 Empty!8915) (seqFromList!3087 input!1722)))))

(declare-fun b!2298607 () Bool)

(declare-fun lt!852749 () Option!5377)

(declare-fun lt!852729 () tuple2!27214)

(assert (=> b!2298607 (= lt!852729 (lexRec!547 thiss!16613 rules!1750 (_2!16123 (v!30468 lt!852749))))))

(declare-fun e!1472972 () tuple2!27214)

(declare-fun prepend!1017 (BalanceConc!17558 Token!8244) BalanceConc!17558)

(assert (=> b!2298607 (= e!1472972 (tuple2!27215 (prepend!1017 (_1!16117 lt!852729) (_1!16123 (v!30468 lt!852749))) (_2!16117 lt!852729)))))

(declare-fun lt!852742 () tuple2!27214)

(declare-fun b!2298608 () Bool)

(declare-fun lt!852721 () Option!5377)

(assert (=> b!2298608 (= lt!852742 (lexRec!547 thiss!16613 rules!1750 (_2!16123 (v!30468 lt!852721))))))

(assert (=> b!2298608 (= e!1472974 (tuple2!27215 (prepend!1017 (_1!16117 lt!852742) (_1!16123 (v!30468 lt!852721))) (_2!16117 lt!852742)))))

(declare-fun lt!852736 () BalanceConc!17556)

(declare-fun b!2298609 () Bool)

(declare-fun append!710 (BalanceConc!17558 Token!8244) BalanceConc!17558)

(assert (=> b!2298609 (= e!1472973 (lexTailRecV2!797 thiss!16613 rules!1750 (seqFromList!3087 input!1722) lt!852736 (_2!16123 (v!30468 lt!852733)) (append!710 (BalanceConc!17559 Empty!8915) (_1!16123 (v!30468 lt!852733)))))))

(declare-fun lt!852753 () tuple2!27214)

(assert (=> b!2298609 (= lt!852753 (lexRec!547 thiss!16613 rules!1750 (_2!16123 (v!30468 lt!852733))))))

(declare-fun lt!852724 () List!27452)

(assert (=> b!2298609 (= lt!852724 (list!10749 (BalanceConc!17557 Empty!8914)))))

(declare-fun lt!852752 () List!27452)

(assert (=> b!2298609 (= lt!852752 (list!10749 (charsOf!2771 (_1!16123 (v!30468 lt!852733)))))))

(declare-fun lt!852722 () List!27452)

(assert (=> b!2298609 (= lt!852722 (list!10749 (_2!16123 (v!30468 lt!852733))))))

(declare-fun lt!852748 () Unit!40251)

(declare-fun lemmaConcatAssociativity!1406 (List!27452 List!27452 List!27452) Unit!40251)

(assert (=> b!2298609 (= lt!852748 (lemmaConcatAssociativity!1406 lt!852724 lt!852752 lt!852722))))

(assert (=> b!2298609 (= (++!6689 (++!6689 lt!852724 lt!852752) lt!852722) (++!6689 lt!852724 (++!6689 lt!852752 lt!852722)))))

(declare-fun lt!852739 () Unit!40251)

(assert (=> b!2298609 (= lt!852739 lt!852748)))

(declare-fun maxPrefixZipperSequence!882 (LexerInterface!3980 List!27453 BalanceConc!17556) Option!5377)

(assert (=> b!2298609 (= lt!852721 (maxPrefixZipperSequence!882 thiss!16613 rules!1750 (seqFromList!3087 input!1722)))))

(declare-fun c!364469 () Bool)

(assert (=> b!2298609 (= c!364469 ((_ is Some!5376) lt!852721))))

(assert (=> b!2298609 (= (lexRec!547 thiss!16613 rules!1750 (seqFromList!3087 input!1722)) e!1472974)))

(declare-fun lt!852737 () Unit!40251)

(declare-fun Unit!40258 () Unit!40251)

(assert (=> b!2298609 (= lt!852737 Unit!40258)))

(declare-fun lt!852738 () List!27454)

(assert (=> b!2298609 (= lt!852738 (list!10748 (BalanceConc!17559 Empty!8915)))))

(declare-fun lt!852754 () List!27454)

(assert (=> b!2298609 (= lt!852754 (Cons!27360 (_1!16123 (v!30468 lt!852733)) Nil!27360))))

(declare-fun lt!852746 () List!27454)

(assert (=> b!2298609 (= lt!852746 (list!10748 (_1!16117 lt!852753)))))

(declare-fun lt!852745 () Unit!40251)

(declare-fun lemmaConcatAssociativity!1407 (List!27454 List!27454 List!27454) Unit!40251)

(assert (=> b!2298609 (= lt!852745 (lemmaConcatAssociativity!1407 lt!852738 lt!852754 lt!852746))))

(assert (=> b!2298609 (= (++!6690 (++!6690 lt!852738 lt!852754) lt!852746) (++!6690 lt!852738 (++!6690 lt!852754 lt!852746)))))

(declare-fun lt!852732 () Unit!40251)

(assert (=> b!2298609 (= lt!852732 lt!852745)))

(declare-fun lt!852750 () List!27452)

(assert (=> b!2298609 (= lt!852750 (++!6689 (list!10749 (BalanceConc!17557 Empty!8914)) (list!10749 (charsOf!2771 (_1!16123 (v!30468 lt!852733))))))))

(declare-fun lt!852740 () List!27452)

(assert (=> b!2298609 (= lt!852740 (list!10749 (_2!16123 (v!30468 lt!852733))))))

(declare-fun lt!852744 () List!27454)

(assert (=> b!2298609 (= lt!852744 (list!10748 (append!710 (BalanceConc!17559 Empty!8915) (_1!16123 (v!30468 lt!852733)))))))

(declare-fun lt!852747 () Unit!40251)

(declare-fun lemmaLexThenLexPrefix!361 (LexerInterface!3980 List!27453 List!27452 List!27452 List!27454 List!27454 List!27452) Unit!40251)

(assert (=> b!2298609 (= lt!852747 (lemmaLexThenLexPrefix!361 thiss!16613 rules!1750 lt!852750 lt!852740 lt!852744 (list!10748 (_1!16117 lt!852753)) (list!10749 (_2!16117 lt!852753))))))

(assert (=> b!2298609 (= (lexList!1122 thiss!16613 rules!1750 lt!852750) (tuple2!27217 lt!852744 Nil!27358))))

(declare-fun lt!852723 () Unit!40251)

(assert (=> b!2298609 (= lt!852723 lt!852747)))

(declare-fun lt!852726 () BalanceConc!17556)

(declare-fun ++!6693 (BalanceConc!17556 BalanceConc!17556) BalanceConc!17556)

(assert (=> b!2298609 (= lt!852726 (++!6693 (BalanceConc!17557 Empty!8914) (charsOf!2771 (_1!16123 (v!30468 lt!852733)))))))

(assert (=> b!2298609 (= lt!852749 (maxPrefixZipperSequence!882 thiss!16613 rules!1750 lt!852726))))

(declare-fun c!364470 () Bool)

(assert (=> b!2298609 (= c!364470 ((_ is Some!5376) lt!852749))))

(assert (=> b!2298609 (= (lexRec!547 thiss!16613 rules!1750 (++!6693 (BalanceConc!17557 Empty!8914) (charsOf!2771 (_1!16123 (v!30468 lt!852733))))) e!1472972)))

(declare-fun lt!852741 () Unit!40251)

(declare-fun Unit!40259 () Unit!40251)

(assert (=> b!2298609 (= lt!852741 Unit!40259)))

(assert (=> b!2298609 (= lt!852736 (++!6693 (BalanceConc!17557 Empty!8914) (charsOf!2771 (_1!16123 (v!30468 lt!852733)))))))

(declare-fun lt!852727 () List!27452)

(assert (=> b!2298609 (= lt!852727 (list!10749 lt!852736))))

(declare-fun lt!852735 () List!27452)

(assert (=> b!2298609 (= lt!852735 (list!10749 (_2!16123 (v!30468 lt!852733))))))

(declare-fun lt!852728 () Unit!40251)

(assert (=> b!2298609 (= lt!852728 (lemmaConcatTwoListThenFSndIsSuffix!477 lt!852727 lt!852735))))

(assert (=> b!2298609 (isSuffix!783 lt!852735 (++!6689 lt!852727 lt!852735))))

(declare-fun lt!852725 () Unit!40251)

(assert (=> b!2298609 (= lt!852725 lt!852728)))

(declare-fun b!2298610 () Bool)

(assert (=> b!2298610 (= e!1472972 (tuple2!27215 (BalanceConc!17559 Empty!8915) lt!852726))))

(assert (= (and d!679979 c!364468) b!2298609))

(assert (= (and d!679979 (not c!364468)) b!2298605))

(assert (= (and b!2298609 c!364469) b!2298608))

(assert (= (and b!2298609 (not c!364469)) b!2298606))

(assert (= (and b!2298609 c!364470) b!2298607))

(assert (= (and b!2298609 (not c!364470)) b!2298610))

(assert (= (and d!679979 res!982761) b!2298604))

(declare-fun m!2726047 () Bool)

(assert (=> b!2298608 m!2726047))

(declare-fun m!2726049 () Bool)

(assert (=> b!2298608 m!2726049))

(assert (=> d!679979 m!2724687))

(declare-fun m!2726051 () Bool)

(assert (=> d!679979 m!2726051))

(declare-fun m!2726053 () Bool)

(assert (=> d!679979 m!2726053))

(declare-fun m!2726055 () Bool)

(assert (=> d!679979 m!2726055))

(declare-fun m!2726057 () Bool)

(assert (=> d!679979 m!2726057))

(declare-fun m!2726059 () Bool)

(assert (=> d!679979 m!2726059))

(declare-fun m!2726061 () Bool)

(assert (=> d!679979 m!2726061))

(assert (=> d!679979 m!2724687))

(assert (=> d!679979 m!2724965))

(assert (=> d!679979 m!2724687))

(assert (=> d!679979 m!2724687))

(declare-fun m!2726063 () Bool)

(assert (=> d!679979 m!2726063))

(assert (=> d!679979 m!2726055))

(declare-fun m!2726065 () Bool)

(assert (=> d!679979 m!2726065))

(declare-fun m!2726067 () Bool)

(assert (=> b!2298604 m!2726067))

(assert (=> b!2298604 m!2724687))

(assert (=> b!2298604 m!2726051))

(declare-fun m!2726069 () Bool)

(assert (=> b!2298604 m!2726069))

(declare-fun m!2726071 () Bool)

(assert (=> b!2298609 m!2726071))

(declare-fun m!2726073 () Bool)

(assert (=> b!2298609 m!2726073))

(declare-fun m!2726075 () Bool)

(assert (=> b!2298609 m!2726075))

(declare-fun m!2726077 () Bool)

(assert (=> b!2298609 m!2726077))

(declare-fun m!2726079 () Bool)

(assert (=> b!2298609 m!2726079))

(declare-fun m!2726081 () Bool)

(assert (=> b!2298609 m!2726081))

(assert (=> b!2298609 m!2724687))

(assert (=> b!2298609 m!2726079))

(declare-fun m!2726083 () Bool)

(assert (=> b!2298609 m!2726083))

(declare-fun m!2726085 () Bool)

(assert (=> b!2298609 m!2726085))

(declare-fun m!2726087 () Bool)

(assert (=> b!2298609 m!2726087))

(assert (=> b!2298609 m!2724687))

(declare-fun m!2726089 () Bool)

(assert (=> b!2298609 m!2726089))

(assert (=> b!2298609 m!2726061))

(declare-fun m!2726091 () Bool)

(assert (=> b!2298609 m!2726091))

(declare-fun m!2726093 () Bool)

(assert (=> b!2298609 m!2726093))

(declare-fun m!2726095 () Bool)

(assert (=> b!2298609 m!2726095))

(assert (=> b!2298609 m!2726085))

(declare-fun m!2726097 () Bool)

(assert (=> b!2298609 m!2726097))

(declare-fun m!2726099 () Bool)

(assert (=> b!2298609 m!2726099))

(declare-fun m!2726101 () Bool)

(assert (=> b!2298609 m!2726101))

(declare-fun m!2726103 () Bool)

(assert (=> b!2298609 m!2726103))

(declare-fun m!2726105 () Bool)

(assert (=> b!2298609 m!2726105))

(declare-fun m!2726107 () Bool)

(assert (=> b!2298609 m!2726107))

(assert (=> b!2298609 m!2726101))

(declare-fun m!2726109 () Bool)

(assert (=> b!2298609 m!2726109))

(declare-fun m!2726111 () Bool)

(assert (=> b!2298609 m!2726111))

(assert (=> b!2298609 m!2726079))

(assert (=> b!2298609 m!2726061))

(declare-fun m!2726113 () Bool)

(assert (=> b!2298609 m!2726113))

(declare-fun m!2726115 () Bool)

(assert (=> b!2298609 m!2726115))

(declare-fun m!2726117 () Bool)

(assert (=> b!2298609 m!2726117))

(declare-fun m!2726119 () Bool)

(assert (=> b!2298609 m!2726119))

(assert (=> b!2298609 m!2726075))

(declare-fun m!2726121 () Bool)

(assert (=> b!2298609 m!2726121))

(declare-fun m!2726123 () Bool)

(assert (=> b!2298609 m!2726123))

(assert (=> b!2298609 m!2726099))

(declare-fun m!2726125 () Bool)

(assert (=> b!2298609 m!2726125))

(assert (=> b!2298609 m!2724687))

(assert (=> b!2298609 m!2726051))

(assert (=> b!2298609 m!2726121))

(assert (=> b!2298609 m!2726117))

(assert (=> b!2298609 m!2726099))

(assert (=> b!2298609 m!2726113))

(declare-fun m!2726127 () Bool)

(assert (=> b!2298609 m!2726127))

(assert (=> b!2298609 m!2726071))

(declare-fun m!2726129 () Bool)

(assert (=> b!2298609 m!2726129))

(assert (=> b!2298609 m!2726127))

(assert (=> b!2298609 m!2726095))

(declare-fun m!2726131 () Bool)

(assert (=> b!2298609 m!2726131))

(declare-fun m!2726133 () Bool)

(assert (=> b!2298607 m!2726133))

(declare-fun m!2726135 () Bool)

(assert (=> b!2298607 m!2726135))

(assert (=> d!679501 d!679979))

(declare-fun d!680019 () Bool)

(assert (=> d!680019 (= (list!10749 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456)))) (list!10753 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456))))))))

(declare-fun bs!457555 () Bool)

(assert (= bs!457555 d!680019))

(declare-fun m!2726137 () Bool)

(assert (=> bs!457555 m!2726137))

(assert (=> b!2297440 d!680019))

(declare-fun bs!457556 () Bool)

(declare-fun d!680021 () Bool)

(assert (= bs!457556 (and d!680021 d!679883)))

(declare-fun lambda!85906 () Int)

(assert (=> bs!457556 (= (and (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 (h!32760 rules!1750)))) (= (toValue!6185 (transformation!4383 otherR!12)) (toValue!6185 (transformation!4383 (h!32760 rules!1750))))) (= lambda!85906 lambda!85901))))

(declare-fun bs!457557 () Bool)

(assert (= bs!457557 (and d!680021 d!679915)))

(assert (=> bs!457557 (= (and (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 r!2363))) (= (toValue!6185 (transformation!4383 otherR!12)) (toValue!6185 (transformation!4383 r!2363)))) (= lambda!85906 lambda!85902))))

(declare-fun bs!457558 () Bool)

(assert (= bs!457558 (and d!680021 d!679931)))

(assert (=> bs!457558 (= (and (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) (= (toValue!6185 (transformation!4383 otherR!12)) (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456)))))) (= lambda!85906 lambda!85903))))

(assert (=> d!680021 true))

(assert (=> d!680021 (< (dynLambda!11894 order!15257 (toChars!6044 (transformation!4383 otherR!12))) (dynLambda!11895 order!15259 lambda!85906))))

(assert (=> d!680021 true))

(assert (=> d!680021 (< (dynLambda!11891 order!15253 (toValue!6185 (transformation!4383 otherR!12))) (dynLambda!11895 order!15259 lambda!85906))))

(assert (=> d!680021 (= (semiInverseModEq!1778 (toChars!6044 (transformation!4383 otherR!12)) (toValue!6185 (transformation!4383 otherR!12))) (Forall!1097 lambda!85906))))

(declare-fun bs!457559 () Bool)

(assert (= bs!457559 d!680021))

(declare-fun m!2726139 () Bool)

(assert (=> bs!457559 m!2726139))

(assert (=> d!679583 d!680021))

(assert (=> b!2297795 d!679947))

(declare-fun d!680023 () Bool)

(assert (=> d!680023 (= (head!5022 input!1722) (h!32759 input!1722))))

(assert (=> b!2297795 d!680023))

(declare-fun bs!457560 () Bool)

(declare-fun d!680025 () Bool)

(assert (= bs!457560 (and d!680025 d!679665)))

(declare-fun lambda!85907 () Int)

(assert (=> bs!457560 (= (= (toValue!6185 (transformation!4383 r!2363)) (toValue!6185 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) (= lambda!85907 lambda!85885))))

(declare-fun bs!457561 () Bool)

(assert (= bs!457561 (and d!680025 d!679881)))

(assert (=> bs!457561 (= (= (toValue!6185 (transformation!4383 r!2363)) (toValue!6185 (transformation!4383 otherR!12))) (= lambda!85907 lambda!85898))))

(declare-fun bs!457562 () Bool)

(assert (= bs!457562 (and d!680025 d!679967)))

(assert (=> bs!457562 (= (= (toValue!6185 (transformation!4383 r!2363)) (toValue!6185 (transformation!4383 (h!32760 rules!1750)))) (= lambda!85907 lambda!85904))))

(assert (=> d!680025 true))

(assert (=> d!680025 (< (dynLambda!11891 order!15253 (toValue!6185 (transformation!4383 r!2363))) (dynLambda!11892 order!15255 lambda!85907))))

(assert (=> d!680025 (= (equivClasses!1697 (toChars!6044 (transformation!4383 r!2363)) (toValue!6185 (transformation!4383 r!2363))) (Forall2!714 lambda!85907))))

(declare-fun bs!457563 () Bool)

(assert (= bs!457563 d!680025))

(declare-fun m!2726141 () Bool)

(assert (=> bs!457563 m!2726141))

(assert (=> b!2297721 d!680025))

(declare-fun b!2298614 () Bool)

(declare-fun lt!852755 () List!27452)

(declare-fun e!1472977 () Bool)

(assert (=> b!2298614 (= e!1472977 (or (not (= (_2!16119 lt!852272) Nil!27358)) (= lt!852755 (t!205450 lt!852265))))))

(declare-fun b!2298612 () Bool)

(declare-fun e!1472976 () List!27452)

(assert (=> b!2298612 (= e!1472976 (Cons!27358 (h!32759 (t!205450 lt!852265)) (++!6689 (t!205450 (t!205450 lt!852265)) (_2!16119 lt!852272))))))

(declare-fun b!2298613 () Bool)

(declare-fun res!982763 () Bool)

(assert (=> b!2298613 (=> (not res!982763) (not e!1472977))))

(assert (=> b!2298613 (= res!982763 (= (size!21562 lt!852755) (+ (size!21562 (t!205450 lt!852265)) (size!21562 (_2!16119 lt!852272)))))))

(declare-fun b!2298611 () Bool)

(assert (=> b!2298611 (= e!1472976 (_2!16119 lt!852272))))

(declare-fun d!680027 () Bool)

(assert (=> d!680027 e!1472977))

(declare-fun res!982762 () Bool)

(assert (=> d!680027 (=> (not res!982762) (not e!1472977))))

(assert (=> d!680027 (= res!982762 (= (content!3679 lt!852755) ((_ map or) (content!3679 (t!205450 lt!852265)) (content!3679 (_2!16119 lt!852272)))))))

(assert (=> d!680027 (= lt!852755 e!1472976)))

(declare-fun c!364471 () Bool)

(assert (=> d!680027 (= c!364471 ((_ is Nil!27358) (t!205450 lt!852265)))))

(assert (=> d!680027 (= (++!6689 (t!205450 lt!852265) (_2!16119 lt!852272)) lt!852755)))

(assert (= (and d!680027 c!364471) b!2298611))

(assert (= (and d!680027 (not c!364471)) b!2298612))

(assert (= (and d!680027 res!982762) b!2298613))

(assert (= (and b!2298613 res!982763) b!2298614))

(declare-fun m!2726143 () Bool)

(assert (=> b!2298612 m!2726143))

(declare-fun m!2726145 () Bool)

(assert (=> b!2298613 m!2726145))

(assert (=> b!2298613 m!2725659))

(assert (=> b!2298613 m!2725101))

(declare-fun m!2726147 () Bool)

(assert (=> d!680027 m!2726147))

(assert (=> d!680027 m!2725795))

(assert (=> d!680027 m!2725107))

(assert (=> b!2297807 d!680027))

(declare-fun b!2298615 () Bool)

(declare-fun res!982769 () Bool)

(declare-fun e!1472978 () Bool)

(assert (=> b!2298615 (=> res!982769 e!1472978)))

(declare-fun e!1472980 () Bool)

(assert (=> b!2298615 (= res!982769 e!1472980)))

(declare-fun res!982767 () Bool)

(assert (=> b!2298615 (=> (not res!982767) (not e!1472980))))

(declare-fun lt!852756 () Bool)

(assert (=> b!2298615 (= res!982767 lt!852756)))

(declare-fun d!680029 () Bool)

(declare-fun e!1472981 () Bool)

(assert (=> d!680029 e!1472981))

(declare-fun c!364472 () Bool)

(assert (=> d!680029 (= c!364472 ((_ is EmptyExpr!6731) (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))))

(declare-fun e!1472982 () Bool)

(assert (=> d!680029 (= lt!852756 e!1472982)))

(declare-fun c!364473 () Bool)

(assert (=> d!680029 (= c!364473 (isEmpty!15606 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))

(assert (=> d!680029 (validRegex!2538 (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))

(assert (=> d!680029 (= (matchR!2988 (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456))))) (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456))))) lt!852756)))

(declare-fun b!2298616 () Bool)

(assert (=> b!2298616 (= e!1472982 (nullable!1875 (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))))

(declare-fun b!2298617 () Bool)

(declare-fun e!1472984 () Bool)

(assert (=> b!2298617 (= e!1472981 e!1472984)))

(declare-fun c!364474 () Bool)

(assert (=> b!2298617 (= c!364474 ((_ is EmptyLang!6731) (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))))

(declare-fun b!2298618 () Bool)

(declare-fun res!982765 () Bool)

(declare-fun e!1472979 () Bool)

(assert (=> b!2298618 (=> res!982765 e!1472979)))

(assert (=> b!2298618 (= res!982765 (not (isEmpty!15606 (tail!3319 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))))

(declare-fun b!2298619 () Bool)

(declare-fun e!1472983 () Bool)

(assert (=> b!2298619 (= e!1472983 e!1472979)))

(declare-fun res!982766 () Bool)

(assert (=> b!2298619 (=> res!982766 e!1472979)))

(declare-fun call!136960 () Bool)

(assert (=> b!2298619 (= res!982766 call!136960)))

(declare-fun bm!136955 () Bool)

(assert (=> bm!136955 (= call!136960 (isEmpty!15606 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))

(declare-fun b!2298620 () Bool)

(assert (=> b!2298620 (= e!1472981 (= lt!852756 call!136960))))

(declare-fun b!2298621 () Bool)

(declare-fun res!982770 () Bool)

(assert (=> b!2298621 (=> (not res!982770) (not e!1472980))))

(assert (=> b!2298621 (= res!982770 (isEmpty!15606 (tail!3319 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))))

(declare-fun b!2298622 () Bool)

(assert (=> b!2298622 (= e!1472982 (matchR!2988 (derivativeStep!1536 (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456))))) (head!5022 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))) (tail!3319 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))))

(declare-fun b!2298623 () Bool)

(declare-fun res!982768 () Bool)

(assert (=> b!2298623 (=> (not res!982768) (not e!1472980))))

(assert (=> b!2298623 (= res!982768 (not call!136960))))

(declare-fun b!2298624 () Bool)

(assert (=> b!2298624 (= e!1472980 (= (head!5022 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456))))) (c!364221 (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))))

(declare-fun b!2298625 () Bool)

(assert (=> b!2298625 (= e!1472984 (not lt!852756))))

(declare-fun b!2298626 () Bool)

(assert (=> b!2298626 (= e!1472979 (not (= (head!5022 (tail!3319 (list!10749 (charsOf!2771 (head!5020 tokens!456))))) (c!364221 (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))))))

(declare-fun b!2298627 () Bool)

(assert (=> b!2298627 (= e!1472978 e!1472983)))

(declare-fun res!982764 () Bool)

(assert (=> b!2298627 (=> (not res!982764) (not e!1472983))))

(assert (=> b!2298627 (= res!982764 (not lt!852756))))

(declare-fun b!2298628 () Bool)

(declare-fun res!982771 () Bool)

(assert (=> b!2298628 (=> res!982771 e!1472978)))

(assert (=> b!2298628 (= res!982771 (not ((_ is ElementMatch!6731) (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))))

(assert (=> b!2298628 (= e!1472984 e!1472978)))

(assert (= (and d!680029 c!364473) b!2298616))

(assert (= (and d!680029 (not c!364473)) b!2298622))

(assert (= (and d!680029 c!364472) b!2298620))

(assert (= (and d!680029 (not c!364472)) b!2298617))

(assert (= (and b!2298617 c!364474) b!2298625))

(assert (= (and b!2298617 (not c!364474)) b!2298628))

(assert (= (and b!2298628 (not res!982771)) b!2298615))

(assert (= (and b!2298615 res!982767) b!2298623))

(assert (= (and b!2298623 res!982768) b!2298621))

(assert (= (and b!2298621 res!982770) b!2298624))

(assert (= (and b!2298615 (not res!982769)) b!2298627))

(assert (= (and b!2298627 res!982764) b!2298619))

(assert (= (and b!2298619 (not res!982766)) b!2298618))

(assert (= (and b!2298618 (not res!982765)) b!2298626))

(assert (= (or b!2298620 b!2298619 b!2298623) bm!136955))

(assert (=> b!2298626 m!2725049))

(declare-fun m!2726149 () Bool)

(assert (=> b!2298626 m!2726149))

(assert (=> b!2298621 m!2725049))

(declare-fun m!2726151 () Bool)

(assert (=> b!2298621 m!2726151))

(assert (=> b!2298621 m!2726151))

(declare-fun m!2726153 () Bool)

(assert (=> b!2298621 m!2726153))

(assert (=> d!680029 m!2725049))

(assert (=> d!680029 m!2725051))

(assert (=> d!680029 m!2725059))

(declare-fun m!2726155 () Bool)

(assert (=> d!680029 m!2726155))

(assert (=> b!2298616 m!2725059))

(declare-fun m!2726157 () Bool)

(assert (=> b!2298616 m!2726157))

(assert (=> b!2298624 m!2725049))

(assert (=> b!2298624 m!2726149))

(assert (=> b!2298618 m!2725049))

(assert (=> b!2298618 m!2726151))

(assert (=> b!2298618 m!2726151))

(assert (=> b!2298618 m!2726153))

(assert (=> b!2298622 m!2725049))

(assert (=> b!2298622 m!2726149))

(assert (=> b!2298622 m!2725059))

(assert (=> b!2298622 m!2726149))

(declare-fun m!2726159 () Bool)

(assert (=> b!2298622 m!2726159))

(assert (=> b!2298622 m!2725049))

(assert (=> b!2298622 m!2726151))

(assert (=> b!2298622 m!2726159))

(assert (=> b!2298622 m!2726151))

(declare-fun m!2726161 () Bool)

(assert (=> b!2298622 m!2726161))

(assert (=> bm!136955 m!2725049))

(assert (=> bm!136955 m!2725051))

(assert (=> b!2297769 d!680029))

(declare-fun e!1472998 () Regex!6731)

(declare-fun call!136969 () Regex!6731)

(declare-fun b!2298649 () Bool)

(declare-fun call!136971 () Regex!6731)

(assert (=> b!2298649 (= e!1472998 (Union!6731 (Concat!11277 call!136971 (regTwo!13974 (regex!4383 r!2363))) call!136969))))

(declare-fun b!2298650 () Bool)

(declare-fun e!1472997 () Regex!6731)

(declare-fun call!136972 () Regex!6731)

(assert (=> b!2298650 (= e!1472997 (Union!6731 call!136972 call!136969))))

(declare-fun b!2298651 () Bool)

(declare-fun c!364486 () Bool)

(assert (=> b!2298651 (= c!364486 (nullable!1875 (regOne!13974 (regex!4383 r!2363))))))

(declare-fun e!1472999 () Regex!6731)

(assert (=> b!2298651 (= e!1472999 e!1472998)))

(declare-fun b!2298652 () Bool)

(declare-fun e!1472996 () Regex!6731)

(assert (=> b!2298652 (= e!1472996 EmptyLang!6731)))

(declare-fun bm!136964 () Bool)

(declare-fun call!136970 () Regex!6731)

(assert (=> bm!136964 (= call!136971 call!136970)))

(declare-fun b!2298653 () Bool)

(assert (=> b!2298653 (= e!1472999 (Concat!11277 call!136970 (regex!4383 r!2363)))))

(declare-fun c!364488 () Bool)

(declare-fun bm!136965 () Bool)

(declare-fun c!364485 () Bool)

(assert (=> bm!136965 (= call!136972 (derivativeStep!1536 (ite c!364488 (regOne!13975 (regex!4383 r!2363)) (ite c!364485 (reg!7060 (regex!4383 r!2363)) (regOne!13974 (regex!4383 r!2363)))) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))

(declare-fun b!2298654 () Bool)

(declare-fun e!1472995 () Regex!6731)

(assert (=> b!2298654 (= e!1472995 (ite (= (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456)))) (c!364221 (regex!4383 r!2363))) EmptyExpr!6731 EmptyLang!6731))))

(declare-fun b!2298655 () Bool)

(assert (=> b!2298655 (= e!1472998 (Union!6731 (Concat!11277 call!136971 (regTwo!13974 (regex!4383 r!2363))) EmptyLang!6731))))

(declare-fun d!680031 () Bool)

(declare-fun lt!852759 () Regex!6731)

(assert (=> d!680031 (validRegex!2538 lt!852759)))

(assert (=> d!680031 (= lt!852759 e!1472996)))

(declare-fun c!364487 () Bool)

(assert (=> d!680031 (= c!364487 (or ((_ is EmptyExpr!6731) (regex!4383 r!2363)) ((_ is EmptyLang!6731) (regex!4383 r!2363))))))

(assert (=> d!680031 (validRegex!2538 (regex!4383 r!2363))))

(assert (=> d!680031 (= (derivativeStep!1536 (regex!4383 r!2363) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456))))) lt!852759)))

(declare-fun b!2298656 () Bool)

(assert (=> b!2298656 (= e!1472996 e!1472995)))

(declare-fun c!364489 () Bool)

(assert (=> b!2298656 (= c!364489 ((_ is ElementMatch!6731) (regex!4383 r!2363)))))

(declare-fun b!2298657 () Bool)

(assert (=> b!2298657 (= c!364488 ((_ is Union!6731) (regex!4383 r!2363)))))

(assert (=> b!2298657 (= e!1472995 e!1472997)))

(declare-fun b!2298658 () Bool)

(assert (=> b!2298658 (= e!1472997 e!1472999)))

(assert (=> b!2298658 (= c!364485 ((_ is Star!6731) (regex!4383 r!2363)))))

(declare-fun bm!136966 () Bool)

(assert (=> bm!136966 (= call!136970 call!136972)))

(declare-fun bm!136967 () Bool)

(assert (=> bm!136967 (= call!136969 (derivativeStep!1536 (ite c!364488 (regTwo!13975 (regex!4383 r!2363)) (regTwo!13974 (regex!4383 r!2363))) (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456))))))))

(assert (= (and d!680031 c!364487) b!2298652))

(assert (= (and d!680031 (not c!364487)) b!2298656))

(assert (= (and b!2298656 c!364489) b!2298654))

(assert (= (and b!2298656 (not c!364489)) b!2298657))

(assert (= (and b!2298657 c!364488) b!2298650))

(assert (= (and b!2298657 (not c!364488)) b!2298658))

(assert (= (and b!2298658 c!364485) b!2298653))

(assert (= (and b!2298658 (not c!364485)) b!2298651))

(assert (= (and b!2298651 c!364486) b!2298649))

(assert (= (and b!2298651 (not c!364486)) b!2298655))

(assert (= (or b!2298649 b!2298655) bm!136964))

(assert (= (or b!2298653 bm!136964) bm!136966))

(assert (= (or b!2298650 bm!136966) bm!136965))

(assert (= (or b!2298650 b!2298649) bm!136967))

(declare-fun m!2726163 () Bool)

(assert (=> b!2298651 m!2726163))

(assert (=> bm!136965 m!2725047))

(declare-fun m!2726165 () Bool)

(assert (=> bm!136965 m!2726165))

(declare-fun m!2726167 () Bool)

(assert (=> d!680031 m!2726167))

(assert (=> d!680031 m!2725055))

(assert (=> bm!136967 m!2725047))

(declare-fun m!2726169 () Bool)

(assert (=> bm!136967 m!2726169))

(assert (=> b!2297769 d!680031))

(declare-fun d!680033 () Bool)

(assert (=> d!680033 (= (head!5022 (list!10749 (charsOf!2771 (head!5020 tokens!456)))) (h!32759 (list!10749 (charsOf!2771 (head!5020 tokens!456)))))))

(assert (=> b!2297769 d!680033))

(assert (=> b!2297769 d!679913))

(declare-fun d!680035 () Bool)

(declare-fun res!982776 () Bool)

(declare-fun e!1473004 () Bool)

(assert (=> d!680035 (=> res!982776 e!1473004)))

(assert (=> d!680035 (= res!982776 ((_ is Nil!27359) rules!1750))))

(assert (=> d!680035 (= (noDuplicateTag!1620 thiss!16613 rules!1750 Nil!27362) e!1473004)))

(declare-fun b!2298663 () Bool)

(declare-fun e!1473005 () Bool)

(assert (=> b!2298663 (= e!1473004 e!1473005)))

(declare-fun res!982777 () Bool)

(assert (=> b!2298663 (=> (not res!982777) (not e!1473005))))

(declare-fun contains!4767 (List!27456 String!29829) Bool)

(assert (=> b!2298663 (= res!982777 (not (contains!4767 Nil!27362 (tag!4873 (h!32760 rules!1750)))))))

(declare-fun b!2298664 () Bool)

(assert (=> b!2298664 (= e!1473005 (noDuplicateTag!1620 thiss!16613 (t!205451 rules!1750) (Cons!27362 (tag!4873 (h!32760 rules!1750)) Nil!27362)))))

(assert (= (and d!680035 (not res!982776)) b!2298663))

(assert (= (and b!2298663 res!982777) b!2298664))

(declare-fun m!2726171 () Bool)

(assert (=> b!2298663 m!2726171))

(declare-fun m!2726173 () Bool)

(assert (=> b!2298664 m!2726173))

(assert (=> b!2297787 d!680035))

(assert (=> d!679589 d!679905))

(declare-fun d!680037 () Bool)

(assert (=> d!680037 (= (inv!36980 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456)))) (isBalanced!2687 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456))))))))

(declare-fun bs!457564 () Bool)

(assert (= bs!457564 d!680037))

(declare-fun m!2726175 () Bool)

(assert (=> bs!457564 m!2726175))

(assert (=> tb!137263 d!680037))

(declare-fun d!680039 () Bool)

(assert (=> d!680039 (= (head!5022 otherP!12) (h!32759 otherP!12))))

(assert (=> b!2297731 d!680039))

(assert (=> b!2297731 d!680023))

(assert (=> b!2297773 d!680033))

(declare-fun d!680041 () Bool)

(declare-fun lt!852760 () List!27452)

(assert (=> d!680041 (= (++!6689 (t!205450 lt!852265) lt!852760) (tail!3319 input!1722))))

(declare-fun e!1473006 () List!27452)

(assert (=> d!680041 (= lt!852760 e!1473006)))

(declare-fun c!364490 () Bool)

(assert (=> d!680041 (= c!364490 ((_ is Cons!27358) (t!205450 lt!852265)))))

(assert (=> d!680041 (>= (size!21562 (tail!3319 input!1722)) (size!21562 (t!205450 lt!852265)))))

(assert (=> d!680041 (= (getSuffix!1152 (tail!3319 input!1722) (t!205450 lt!852265)) lt!852760)))

(declare-fun b!2298665 () Bool)

(assert (=> b!2298665 (= e!1473006 (getSuffix!1152 (tail!3319 (tail!3319 input!1722)) (t!205450 (t!205450 lt!852265))))))

(declare-fun b!2298666 () Bool)

(assert (=> b!2298666 (= e!1473006 (tail!3319 input!1722))))

(assert (= (and d!680041 c!364490) b!2298665))

(assert (= (and d!680041 (not c!364490)) b!2298666))

(declare-fun m!2726177 () Bool)

(assert (=> d!680041 m!2726177))

(assert (=> d!680041 m!2725043))

(assert (=> d!680041 m!2725627))

(assert (=> d!680041 m!2725659))

(assert (=> b!2298665 m!2725043))

(assert (=> b!2298665 m!2725637))

(assert (=> b!2298665 m!2725637))

(declare-fun m!2726179 () Bool)

(assert (=> b!2298665 m!2726179))

(assert (=> b!2297792 d!680041))

(assert (=> b!2297792 d!679889))

(assert (=> b!2297797 d!679663))

(assert (=> b!2297797 d!679899))

(assert (=> b!2297771 d!680033))

(declare-fun d!680043 () Bool)

(assert (=> d!680043 (= (list!10749 lt!852378) (list!10753 (c!364220 lt!852378)))))

(declare-fun bs!457565 () Bool)

(assert (= bs!457565 d!680043))

(declare-fun m!2726181 () Bool)

(assert (=> bs!457565 m!2726181))

(assert (=> d!679625 d!680043))

(declare-fun b!2298669 () Bool)

(declare-fun e!1473007 () Bool)

(declare-fun tp!729016 () Bool)

(assert (=> b!2298669 (= e!1473007 tp!729016)))

(declare-fun b!2298668 () Bool)

(declare-fun tp!729017 () Bool)

(declare-fun tp!729014 () Bool)

(assert (=> b!2298668 (= e!1473007 (and tp!729017 tp!729014))))

(assert (=> b!2297880 (= tp!728849 e!1473007)))

(declare-fun b!2298667 () Bool)

(assert (=> b!2298667 (= e!1473007 tp_is_empty!10683)))

(declare-fun b!2298670 () Bool)

(declare-fun tp!729015 () Bool)

(declare-fun tp!729018 () Bool)

(assert (=> b!2298670 (= e!1473007 (and tp!729015 tp!729018))))

(assert (= (and b!2297880 ((_ is ElementMatch!6731) (regOne!13975 (regex!4383 (h!32760 rules!1750))))) b!2298667))

(assert (= (and b!2297880 ((_ is Concat!11277) (regOne!13975 (regex!4383 (h!32760 rules!1750))))) b!2298668))

(assert (= (and b!2297880 ((_ is Star!6731) (regOne!13975 (regex!4383 (h!32760 rules!1750))))) b!2298669))

(assert (= (and b!2297880 ((_ is Union!6731) (regOne!13975 (regex!4383 (h!32760 rules!1750))))) b!2298670))

(declare-fun b!2298673 () Bool)

(declare-fun e!1473008 () Bool)

(declare-fun tp!729021 () Bool)

(assert (=> b!2298673 (= e!1473008 tp!729021)))

(declare-fun b!2298672 () Bool)

(declare-fun tp!729022 () Bool)

(declare-fun tp!729019 () Bool)

(assert (=> b!2298672 (= e!1473008 (and tp!729022 tp!729019))))

(assert (=> b!2297880 (= tp!728852 e!1473008)))

(declare-fun b!2298671 () Bool)

(assert (=> b!2298671 (= e!1473008 tp_is_empty!10683)))

(declare-fun b!2298674 () Bool)

(declare-fun tp!729020 () Bool)

(declare-fun tp!729023 () Bool)

(assert (=> b!2298674 (= e!1473008 (and tp!729020 tp!729023))))

(assert (= (and b!2297880 ((_ is ElementMatch!6731) (regTwo!13975 (regex!4383 (h!32760 rules!1750))))) b!2298671))

(assert (= (and b!2297880 ((_ is Concat!11277) (regTwo!13975 (regex!4383 (h!32760 rules!1750))))) b!2298672))

(assert (= (and b!2297880 ((_ is Star!6731) (regTwo!13975 (regex!4383 (h!32760 rules!1750))))) b!2298673))

(assert (= (and b!2297880 ((_ is Union!6731) (regTwo!13975 (regex!4383 (h!32760 rules!1750))))) b!2298674))

(declare-fun b!2298677 () Bool)

(declare-fun e!1473009 () Bool)

(declare-fun tp!729026 () Bool)

(assert (=> b!2298677 (= e!1473009 tp!729026)))

(declare-fun b!2298676 () Bool)

(declare-fun tp!729027 () Bool)

(declare-fun tp!729024 () Bool)

(assert (=> b!2298676 (= e!1473009 (and tp!729027 tp!729024))))

(assert (=> b!2297879 (= tp!728850 e!1473009)))

(declare-fun b!2298675 () Bool)

(assert (=> b!2298675 (= e!1473009 tp_is_empty!10683)))

(declare-fun b!2298678 () Bool)

(declare-fun tp!729025 () Bool)

(declare-fun tp!729028 () Bool)

(assert (=> b!2298678 (= e!1473009 (and tp!729025 tp!729028))))

(assert (= (and b!2297879 ((_ is ElementMatch!6731) (reg!7060 (regex!4383 (h!32760 rules!1750))))) b!2298675))

(assert (= (and b!2297879 ((_ is Concat!11277) (reg!7060 (regex!4383 (h!32760 rules!1750))))) b!2298676))

(assert (= (and b!2297879 ((_ is Star!6731) (reg!7060 (regex!4383 (h!32760 rules!1750))))) b!2298677))

(assert (= (and b!2297879 ((_ is Union!6731) (reg!7060 (regex!4383 (h!32760 rules!1750))))) b!2298678))

(declare-fun b!2298681 () Bool)

(declare-fun e!1473010 () Bool)

(declare-fun tp!729031 () Bool)

(assert (=> b!2298681 (= e!1473010 tp!729031)))

(declare-fun b!2298680 () Bool)

(declare-fun tp!729032 () Bool)

(declare-fun tp!729029 () Bool)

(assert (=> b!2298680 (= e!1473010 (and tp!729032 tp!729029))))

(assert (=> b!2297865 (= tp!728837 e!1473010)))

(declare-fun b!2298679 () Bool)

(assert (=> b!2298679 (= e!1473010 tp_is_empty!10683)))

(declare-fun b!2298682 () Bool)

(declare-fun tp!729030 () Bool)

(declare-fun tp!729033 () Bool)

(assert (=> b!2298682 (= e!1473010 (and tp!729030 tp!729033))))

(assert (= (and b!2297865 ((_ is ElementMatch!6731) (regex!4383 (h!32760 (t!205451 rules!1750))))) b!2298679))

(assert (= (and b!2297865 ((_ is Concat!11277) (regex!4383 (h!32760 (t!205451 rules!1750))))) b!2298680))

(assert (= (and b!2297865 ((_ is Star!6731) (regex!4383 (h!32760 (t!205451 rules!1750))))) b!2298681))

(assert (= (and b!2297865 ((_ is Union!6731) (regex!4383 (h!32760 (t!205451 rules!1750))))) b!2298682))

(declare-fun b!2298685 () Bool)

(declare-fun e!1473011 () Bool)

(declare-fun tp!729036 () Bool)

(assert (=> b!2298685 (= e!1473011 tp!729036)))

(declare-fun b!2298684 () Bool)

(declare-fun tp!729037 () Bool)

(declare-fun tp!729034 () Bool)

(assert (=> b!2298684 (= e!1473011 (and tp!729037 tp!729034))))

(assert (=> b!2297895 (= tp!728864 e!1473011)))

(declare-fun b!2298683 () Bool)

(assert (=> b!2298683 (= e!1473011 tp_is_empty!10683)))

(declare-fun b!2298686 () Bool)

(declare-fun tp!729035 () Bool)

(declare-fun tp!729038 () Bool)

(assert (=> b!2298686 (= e!1473011 (and tp!729035 tp!729038))))

(assert (= (and b!2297895 ((_ is ElementMatch!6731) (regOne!13975 (regex!4383 r!2363)))) b!2298683))

(assert (= (and b!2297895 ((_ is Concat!11277) (regOne!13975 (regex!4383 r!2363)))) b!2298684))

(assert (= (and b!2297895 ((_ is Star!6731) (regOne!13975 (regex!4383 r!2363)))) b!2298685))

(assert (= (and b!2297895 ((_ is Union!6731) (regOne!13975 (regex!4383 r!2363)))) b!2298686))

(declare-fun b!2298689 () Bool)

(declare-fun e!1473012 () Bool)

(declare-fun tp!729041 () Bool)

(assert (=> b!2298689 (= e!1473012 tp!729041)))

(declare-fun b!2298688 () Bool)

(declare-fun tp!729042 () Bool)

(declare-fun tp!729039 () Bool)

(assert (=> b!2298688 (= e!1473012 (and tp!729042 tp!729039))))

(assert (=> b!2297895 (= tp!728867 e!1473012)))

(declare-fun b!2298687 () Bool)

(assert (=> b!2298687 (= e!1473012 tp_is_empty!10683)))

(declare-fun b!2298690 () Bool)

(declare-fun tp!729040 () Bool)

(declare-fun tp!729043 () Bool)

(assert (=> b!2298690 (= e!1473012 (and tp!729040 tp!729043))))

(assert (= (and b!2297895 ((_ is ElementMatch!6731) (regTwo!13975 (regex!4383 r!2363)))) b!2298687))

(assert (= (and b!2297895 ((_ is Concat!11277) (regTwo!13975 (regex!4383 r!2363)))) b!2298688))

(assert (= (and b!2297895 ((_ is Star!6731) (regTwo!13975 (regex!4383 r!2363)))) b!2298689))

(assert (= (and b!2297895 ((_ is Union!6731) (regTwo!13975 (regex!4383 r!2363)))) b!2298690))

(declare-fun b!2298693 () Bool)

(declare-fun e!1473013 () Bool)

(declare-fun tp!729046 () Bool)

(assert (=> b!2298693 (= e!1473013 tp!729046)))

(declare-fun b!2298692 () Bool)

(declare-fun tp!729047 () Bool)

(declare-fun tp!729044 () Bool)

(assert (=> b!2298692 (= e!1473013 (and tp!729047 tp!729044))))

(assert (=> b!2297878 (= tp!728851 e!1473013)))

(declare-fun b!2298691 () Bool)

(assert (=> b!2298691 (= e!1473013 tp_is_empty!10683)))

(declare-fun b!2298694 () Bool)

(declare-fun tp!729045 () Bool)

(declare-fun tp!729048 () Bool)

(assert (=> b!2298694 (= e!1473013 (and tp!729045 tp!729048))))

(assert (= (and b!2297878 ((_ is ElementMatch!6731) (regOne!13974 (regex!4383 (h!32760 rules!1750))))) b!2298691))

(assert (= (and b!2297878 ((_ is Concat!11277) (regOne!13974 (regex!4383 (h!32760 rules!1750))))) b!2298692))

(assert (= (and b!2297878 ((_ is Star!6731) (regOne!13974 (regex!4383 (h!32760 rules!1750))))) b!2298693))

(assert (= (and b!2297878 ((_ is Union!6731) (regOne!13974 (regex!4383 (h!32760 rules!1750))))) b!2298694))

(declare-fun b!2298697 () Bool)

(declare-fun e!1473014 () Bool)

(declare-fun tp!729051 () Bool)

(assert (=> b!2298697 (= e!1473014 tp!729051)))

(declare-fun b!2298696 () Bool)

(declare-fun tp!729052 () Bool)

(declare-fun tp!729049 () Bool)

(assert (=> b!2298696 (= e!1473014 (and tp!729052 tp!729049))))

(assert (=> b!2297878 (= tp!728848 e!1473014)))

(declare-fun b!2298695 () Bool)

(assert (=> b!2298695 (= e!1473014 tp_is_empty!10683)))

(declare-fun b!2298698 () Bool)

(declare-fun tp!729050 () Bool)

(declare-fun tp!729053 () Bool)

(assert (=> b!2298698 (= e!1473014 (and tp!729050 tp!729053))))

(assert (= (and b!2297878 ((_ is ElementMatch!6731) (regTwo!13974 (regex!4383 (h!32760 rules!1750))))) b!2298695))

(assert (= (and b!2297878 ((_ is Concat!11277) (regTwo!13974 (regex!4383 (h!32760 rules!1750))))) b!2298696))

(assert (= (and b!2297878 ((_ is Star!6731) (regTwo!13974 (regex!4383 (h!32760 rules!1750))))) b!2298697))

(assert (= (and b!2297878 ((_ is Union!6731) (regTwo!13974 (regex!4383 (h!32760 rules!1750))))) b!2298698))

(declare-fun b!2298701 () Bool)

(declare-fun b_free!69285 () Bool)

(declare-fun b_next!69989 () Bool)

(assert (=> b!2298701 (= b_free!69285 (not b_next!69989))))

(declare-fun t!205602 () Bool)

(declare-fun tb!137371 () Bool)

(assert (=> (and b!2298701 (= (toValue!6185 (transformation!4383 (h!32760 (t!205451 (t!205451 rules!1750))))) (toValue!6185 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205602) tb!137371))

(declare-fun result!167456 () Bool)

(assert (= result!167456 result!167408))

(assert (=> d!679843 t!205602))

(declare-fun b_and!182969 () Bool)

(declare-fun tp!729056 () Bool)

(assert (=> b!2298701 (= tp!729056 (and (=> t!205602 result!167456) b_and!182969))))

(declare-fun b_free!69287 () Bool)

(declare-fun b_next!69991 () Bool)

(assert (=> b!2298701 (= b_free!69287 (not b_next!69991))))

(declare-fun tb!137373 () Bool)

(declare-fun t!205604 () Bool)

(assert (=> (and b!2298701 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 (t!205451 rules!1750))))) (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205604) tb!137373))

(declare-fun result!167458 () Bool)

(assert (= result!167458 result!167358))

(assert (=> d!679659 t!205604))

(declare-fun tb!137375 () Bool)

(declare-fun t!205606 () Bool)

(assert (=> (and b!2298701 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 (t!205451 rules!1750))))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) t!205606) tb!137375))

(declare-fun result!167460 () Bool)

(assert (= result!167460 result!167300))

(assert (=> b!2297440 t!205606))

(declare-fun tb!137377 () Bool)

(declare-fun t!205608 () Bool)

(assert (=> (and b!2298701 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 (t!205451 rules!1750))))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456))))) t!205608) tb!137377))

(declare-fun result!167462 () Bool)

(assert (= result!167462 result!167334))

(assert (=> d!679603 t!205608))

(declare-fun tb!137379 () Bool)

(declare-fun t!205610 () Bool)

(assert (=> (and b!2298701 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 (t!205451 rules!1750))))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) t!205610) tb!137379))

(declare-fun result!167464 () Bool)

(assert (= result!167464 result!167422))

(assert (=> b!2298388 t!205610))

(assert (=> d!679625 t!205606))

(declare-fun b_and!182971 () Bool)

(declare-fun tp!729055 () Bool)

(assert (=> b!2298701 (= tp!729055 (and (=> t!205604 result!167458) (=> t!205606 result!167460) (=> t!205610 result!167464) (=> t!205608 result!167462) b_and!182971))))

(declare-fun e!1473018 () Bool)

(assert (=> b!2298701 (= e!1473018 (and tp!729056 tp!729055))))

(declare-fun tp!729057 () Bool)

(declare-fun b!2298700 () Bool)

(declare-fun e!1473017 () Bool)

(assert (=> b!2298700 (= e!1473017 (and tp!729057 (inv!36972 (tag!4873 (h!32760 (t!205451 (t!205451 rules!1750))))) (inv!36976 (transformation!4383 (h!32760 (t!205451 (t!205451 rules!1750))))) e!1473018))))

(declare-fun b!2298699 () Bool)

(declare-fun e!1473015 () Bool)

(declare-fun tp!729054 () Bool)

(assert (=> b!2298699 (= e!1473015 (and e!1473017 tp!729054))))

(assert (=> b!2297864 (= tp!728834 e!1473015)))

(assert (= b!2298700 b!2298701))

(assert (= b!2298699 b!2298700))

(assert (= (and b!2297864 ((_ is Cons!27359) (t!205451 (t!205451 rules!1750)))) b!2298699))

(declare-fun m!2726183 () Bool)

(assert (=> b!2298700 m!2726183))

(declare-fun m!2726185 () Bool)

(assert (=> b!2298700 m!2726185))

(declare-fun b!2298702 () Bool)

(declare-fun e!1473019 () Bool)

(declare-fun tp!729058 () Bool)

(assert (=> b!2298702 (= e!1473019 (and tp_is_empty!10683 tp!729058))))

(assert (=> b!2297896 (= tp!728868 e!1473019)))

(assert (= (and b!2297896 ((_ is Cons!27358) (t!205450 (t!205450 otherP!12)))) b!2298702))

(declare-fun b!2298703 () Bool)

(declare-fun e!1473020 () Bool)

(declare-fun tp!729059 () Bool)

(assert (=> b!2298703 (= e!1473020 (and tp_is_empty!10683 tp!729059))))

(assert (=> b!2297885 (= tp!728855 e!1473020)))

(assert (= (and b!2297885 ((_ is Cons!27358) (t!205450 (t!205450 suffix!886)))) b!2298703))

(declare-fun b!2298706 () Bool)

(declare-fun e!1473021 () Bool)

(declare-fun tp!729062 () Bool)

(assert (=> b!2298706 (= e!1473021 tp!729062)))

(declare-fun b!2298705 () Bool)

(declare-fun tp!729063 () Bool)

(declare-fun tp!729060 () Bool)

(assert (=> b!2298705 (= e!1473021 (and tp!729063 tp!729060))))

(assert (=> b!2297894 (= tp!728865 e!1473021)))

(declare-fun b!2298704 () Bool)

(assert (=> b!2298704 (= e!1473021 tp_is_empty!10683)))

(declare-fun b!2298707 () Bool)

(declare-fun tp!729061 () Bool)

(declare-fun tp!729064 () Bool)

(assert (=> b!2298707 (= e!1473021 (and tp!729061 tp!729064))))

(assert (= (and b!2297894 ((_ is ElementMatch!6731) (reg!7060 (regex!4383 r!2363)))) b!2298704))

(assert (= (and b!2297894 ((_ is Concat!11277) (reg!7060 (regex!4383 r!2363)))) b!2298705))

(assert (= (and b!2297894 ((_ is Star!6731) (reg!7060 (regex!4383 r!2363)))) b!2298706))

(assert (= (and b!2297894 ((_ is Union!6731) (reg!7060 (regex!4383 r!2363)))) b!2298707))

(declare-fun b!2298708 () Bool)

(declare-fun e!1473022 () Bool)

(declare-fun tp!729065 () Bool)

(assert (=> b!2298708 (= e!1473022 (and tp_is_empty!10683 tp!729065))))

(assert (=> b!2297886 (= tp!728856 e!1473022)))

(assert (= (and b!2297886 ((_ is Cons!27358) (t!205450 (t!205450 input!1722)))) b!2298708))

(declare-fun b!2298711 () Bool)

(declare-fun e!1473023 () Bool)

(declare-fun tp!729068 () Bool)

(assert (=> b!2298711 (= e!1473023 tp!729068)))

(declare-fun b!2298710 () Bool)

(declare-fun tp!729069 () Bool)

(declare-fun tp!729066 () Bool)

(assert (=> b!2298710 (= e!1473023 (and tp!729069 tp!729066))))

(assert (=> b!2297893 (= tp!728866 e!1473023)))

(declare-fun b!2298709 () Bool)

(assert (=> b!2298709 (= e!1473023 tp_is_empty!10683)))

(declare-fun b!2298712 () Bool)

(declare-fun tp!729067 () Bool)

(declare-fun tp!729070 () Bool)

(assert (=> b!2298712 (= e!1473023 (and tp!729067 tp!729070))))

(assert (= (and b!2297893 ((_ is ElementMatch!6731) (regOne!13974 (regex!4383 r!2363)))) b!2298709))

(assert (= (and b!2297893 ((_ is Concat!11277) (regOne!13974 (regex!4383 r!2363)))) b!2298710))

(assert (= (and b!2297893 ((_ is Star!6731) (regOne!13974 (regex!4383 r!2363)))) b!2298711))

(assert (= (and b!2297893 ((_ is Union!6731) (regOne!13974 (regex!4383 r!2363)))) b!2298712))

(declare-fun b!2298715 () Bool)

(declare-fun e!1473024 () Bool)

(declare-fun tp!729073 () Bool)

(assert (=> b!2298715 (= e!1473024 tp!729073)))

(declare-fun b!2298714 () Bool)

(declare-fun tp!729074 () Bool)

(declare-fun tp!729071 () Bool)

(assert (=> b!2298714 (= e!1473024 (and tp!729074 tp!729071))))

(assert (=> b!2297893 (= tp!728863 e!1473024)))

(declare-fun b!2298713 () Bool)

(assert (=> b!2298713 (= e!1473024 tp_is_empty!10683)))

(declare-fun b!2298716 () Bool)

(declare-fun tp!729072 () Bool)

(declare-fun tp!729075 () Bool)

(assert (=> b!2298716 (= e!1473024 (and tp!729072 tp!729075))))

(assert (= (and b!2297893 ((_ is ElementMatch!6731) (regTwo!13974 (regex!4383 r!2363)))) b!2298713))

(assert (= (and b!2297893 ((_ is Concat!11277) (regTwo!13974 (regex!4383 r!2363)))) b!2298714))

(assert (= (and b!2297893 ((_ is Star!6731) (regTwo!13974 (regex!4383 r!2363)))) b!2298715))

(assert (= (and b!2297893 ((_ is Union!6731) (regTwo!13974 (regex!4383 r!2363)))) b!2298716))

(declare-fun b!2298720 () Bool)

(declare-fun b_free!69289 () Bool)

(declare-fun b_next!69993 () Bool)

(assert (=> b!2298720 (= b_free!69289 (not b_next!69993))))

(declare-fun tb!137381 () Bool)

(declare-fun t!205612 () Bool)

(assert (=> (and b!2298720 (= (toValue!6185 (transformation!4383 (rule!6725 (h!32761 (t!205452 (t!205452 tokens!456)))))) (toValue!6185 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205612) tb!137381))

(declare-fun result!167466 () Bool)

(assert (= result!167466 result!167408))

(assert (=> d!679843 t!205612))

(declare-fun b_and!182973 () Bool)

(declare-fun tp!729079 () Bool)

(assert (=> b!2298720 (= tp!729079 (and (=> t!205612 result!167466) b_and!182973))))

(declare-fun b_free!69291 () Bool)

(declare-fun b_next!69995 () Bool)

(assert (=> b!2298720 (= b_free!69291 (not b_next!69995))))

(declare-fun t!205614 () Bool)

(declare-fun tb!137383 () Bool)

(assert (=> (and b!2298720 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 (t!205452 tokens!456)))))) (toChars!6044 (transformation!4383 (rule!6725 (_1!16119 (get!8246 lt!852395)))))) t!205614) tb!137383))

(declare-fun result!167468 () Bool)

(assert (= result!167468 result!167358))

(assert (=> d!679659 t!205614))

(declare-fun t!205616 () Bool)

(declare-fun tb!137385 () Bool)

(assert (=> (and b!2298720 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 (t!205452 tokens!456)))))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456))))) t!205616) tb!137385))

(declare-fun result!167470 () Bool)

(assert (= result!167470 result!167300))

(assert (=> b!2297440 t!205616))

(declare-fun t!205618 () Bool)

(declare-fun tb!137387 () Bool)

(assert (=> (and b!2298720 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 (t!205452 tokens!456)))))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456))))) t!205618) tb!137387))

(declare-fun result!167472 () Bool)

(assert (= result!167472 result!167334))

(assert (=> d!679603 t!205618))

(declare-fun t!205620 () Bool)

(declare-fun tb!137389 () Bool)

(assert (=> (and b!2298720 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 (t!205452 tokens!456)))))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) t!205620) tb!137389))

(declare-fun result!167474 () Bool)

(assert (= result!167474 result!167422))

(assert (=> b!2298388 t!205620))

(assert (=> d!679625 t!205616))

(declare-fun b_and!182975 () Bool)

(declare-fun tp!729077 () Bool)

(assert (=> b!2298720 (= tp!729077 (and (=> t!205616 result!167470) (=> t!205614 result!167468) (=> t!205618 result!167472) (=> t!205620 result!167474) b_and!182975))))

(declare-fun e!1473026 () Bool)

(declare-fun e!1473027 () Bool)

(declare-fun b!2298719 () Bool)

(declare-fun tp!729076 () Bool)

(assert (=> b!2298719 (= e!1473027 (and tp!729076 (inv!36972 (tag!4873 (rule!6725 (h!32761 (t!205452 (t!205452 tokens!456)))))) (inv!36976 (transformation!4383 (rule!6725 (h!32761 (t!205452 (t!205452 tokens!456)))))) e!1473026))))

(assert (=> b!2298720 (= e!1473026 (and tp!729079 tp!729077))))

(declare-fun tp!729078 () Bool)

(declare-fun e!1473030 () Bool)

(declare-fun b!2298718 () Bool)

(assert (=> b!2298718 (= e!1473030 (and (inv!21 (value!138735 (h!32761 (t!205452 (t!205452 tokens!456))))) e!1473027 tp!729078))))

(declare-fun e!1473025 () Bool)

(assert (=> b!2297852 (= tp!728825 e!1473025)))

(declare-fun b!2298717 () Bool)

(declare-fun tp!729080 () Bool)

(assert (=> b!2298717 (= e!1473025 (and (inv!36975 (h!32761 (t!205452 (t!205452 tokens!456)))) e!1473030 tp!729080))))

(assert (= b!2298719 b!2298720))

(assert (= b!2298718 b!2298719))

(assert (= b!2298717 b!2298718))

(assert (= (and b!2297852 ((_ is Cons!27360) (t!205452 (t!205452 tokens!456)))) b!2298717))

(declare-fun m!2726187 () Bool)

(assert (=> b!2298719 m!2726187))

(declare-fun m!2726189 () Bool)

(assert (=> b!2298719 m!2726189))

(declare-fun m!2726191 () Bool)

(assert (=> b!2298718 m!2726191))

(declare-fun m!2726193 () Bool)

(assert (=> b!2298717 m!2726193))

(declare-fun b!2298723 () Bool)

(declare-fun e!1473031 () Bool)

(declare-fun tp!729083 () Bool)

(assert (=> b!2298723 (= e!1473031 tp!729083)))

(declare-fun b!2298722 () Bool)

(declare-fun tp!729084 () Bool)

(declare-fun tp!729081 () Bool)

(assert (=> b!2298722 (= e!1473031 (and tp!729084 tp!729081))))

(assert (=> b!2297899 (= tp!728871 e!1473031)))

(declare-fun b!2298721 () Bool)

(assert (=> b!2298721 (= e!1473031 tp_is_empty!10683)))

(declare-fun b!2298724 () Bool)

(declare-fun tp!729082 () Bool)

(declare-fun tp!729085 () Bool)

(assert (=> b!2298724 (= e!1473031 (and tp!729082 tp!729085))))

(assert (= (and b!2297899 ((_ is ElementMatch!6731) (reg!7060 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298721))

(assert (= (and b!2297899 ((_ is Concat!11277) (reg!7060 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298722))

(assert (= (and b!2297899 ((_ is Star!6731) (reg!7060 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298723))

(assert (= (and b!2297899 ((_ is Union!6731) (reg!7060 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298724))

(declare-fun b!2298725 () Bool)

(declare-fun e!1473032 () Bool)

(declare-fun tp!729086 () Bool)

(assert (=> b!2298725 (= e!1473032 (and tp_is_empty!10683 tp!729086))))

(assert (=> b!2297891 (= tp!728862 e!1473032)))

(assert (= (and b!2297891 ((_ is Cons!27358) (t!205450 (originalCharacters!5153 (h!32761 tokens!456))))) b!2298725))

(declare-fun b!2298728 () Bool)

(declare-fun e!1473033 () Bool)

(declare-fun tp!729089 () Bool)

(assert (=> b!2298728 (= e!1473033 tp!729089)))

(declare-fun b!2298727 () Bool)

(declare-fun tp!729090 () Bool)

(declare-fun tp!729087 () Bool)

(assert (=> b!2298727 (= e!1473033 (and tp!729090 tp!729087))))

(assert (=> b!2297898 (= tp!728872 e!1473033)))

(declare-fun b!2298726 () Bool)

(assert (=> b!2298726 (= e!1473033 tp_is_empty!10683)))

(declare-fun b!2298729 () Bool)

(declare-fun tp!729088 () Bool)

(declare-fun tp!729091 () Bool)

(assert (=> b!2298729 (= e!1473033 (and tp!729088 tp!729091))))

(assert (= (and b!2297898 ((_ is ElementMatch!6731) (regOne!13974 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298726))

(assert (= (and b!2297898 ((_ is Concat!11277) (regOne!13974 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298727))

(assert (= (and b!2297898 ((_ is Star!6731) (regOne!13974 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298728))

(assert (= (and b!2297898 ((_ is Union!6731) (regOne!13974 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298729))

(declare-fun b!2298732 () Bool)

(declare-fun e!1473034 () Bool)

(declare-fun tp!729094 () Bool)

(assert (=> b!2298732 (= e!1473034 tp!729094)))

(declare-fun b!2298731 () Bool)

(declare-fun tp!729095 () Bool)

(declare-fun tp!729092 () Bool)

(assert (=> b!2298731 (= e!1473034 (and tp!729095 tp!729092))))

(assert (=> b!2297898 (= tp!728869 e!1473034)))

(declare-fun b!2298730 () Bool)

(assert (=> b!2298730 (= e!1473034 tp_is_empty!10683)))

(declare-fun b!2298733 () Bool)

(declare-fun tp!729093 () Bool)

(declare-fun tp!729096 () Bool)

(assert (=> b!2298733 (= e!1473034 (and tp!729093 tp!729096))))

(assert (= (and b!2297898 ((_ is ElementMatch!6731) (regTwo!13974 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298730))

(assert (= (and b!2297898 ((_ is Concat!11277) (regTwo!13974 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298731))

(assert (= (and b!2297898 ((_ is Star!6731) (regTwo!13974 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298732))

(assert (= (and b!2297898 ((_ is Union!6731) (regTwo!13974 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298733))

(declare-fun e!1473039 () Bool)

(declare-fun tp!729103 () Bool)

(declare-fun b!2298742 () Bool)

(declare-fun tp!729105 () Bool)

(assert (=> b!2298742 (= e!1473039 (and (inv!36979 (left!20734 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456)))))) tp!729103 (inv!36979 (right!21064 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456)))))) tp!729105))))

(declare-fun b!2298744 () Bool)

(declare-fun e!1473040 () Bool)

(declare-fun tp!729104 () Bool)

(assert (=> b!2298744 (= e!1473040 tp!729104)))

(declare-fun b!2298743 () Bool)

(declare-fun inv!36986 (IArray!17833) Bool)

(assert (=> b!2298743 (= e!1473039 (and (inv!36986 (xs!11856 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456)))))) e!1473040))))

(assert (=> b!2297446 (= tp!728745 (and (inv!36979 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456))))) e!1473039))))

(assert (= (and b!2297446 ((_ is Node!8914) (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456)))))) b!2298742))

(assert (= b!2298743 b!2298744))

(assert (= (and b!2297446 ((_ is Leaf!13091) (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (value!138735 (h!32761 tokens!456)))))) b!2298743))

(declare-fun m!2726195 () Bool)

(assert (=> b!2298742 m!2726195))

(declare-fun m!2726197 () Bool)

(assert (=> b!2298742 m!2726197))

(declare-fun m!2726199 () Bool)

(assert (=> b!2298743 m!2726199))

(assert (=> b!2297446 m!2724793))

(declare-fun e!1473041 () Bool)

(declare-fun b!2298745 () Bool)

(declare-fun tp!729108 () Bool)

(declare-fun tp!729106 () Bool)

(assert (=> b!2298745 (= e!1473041 (and (inv!36979 (left!20734 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456)))))) tp!729106 (inv!36979 (right!21064 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456)))))) tp!729108))))

(declare-fun b!2298747 () Bool)

(declare-fun e!1473042 () Bool)

(declare-fun tp!729107 () Bool)

(assert (=> b!2298747 (= e!1473042 tp!729107)))

(declare-fun b!2298746 () Bool)

(assert (=> b!2298746 (= e!1473041 (and (inv!36986 (xs!11856 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456)))))) e!1473042))))

(assert (=> b!2297776 (= tp!728810 (and (inv!36979 (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456))))) e!1473041))))

(assert (= (and b!2297776 ((_ is Node!8914) (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456)))))) b!2298745))

(assert (= b!2298746 b!2298747))

(assert (= (and b!2297776 ((_ is Leaf!13091) (c!364220 (dynLambda!11885 (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))) (value!138735 (head!5020 tokens!456)))))) b!2298746))

(declare-fun m!2726201 () Bool)

(assert (=> b!2298745 m!2726201))

(declare-fun m!2726203 () Bool)

(assert (=> b!2298745 m!2726203))

(declare-fun m!2726205 () Bool)

(assert (=> b!2298746 m!2726205))

(assert (=> b!2297776 m!2725065))

(declare-fun b!2298750 () Bool)

(declare-fun e!1473043 () Bool)

(declare-fun tp!729111 () Bool)

(assert (=> b!2298750 (= e!1473043 tp!729111)))

(declare-fun b!2298749 () Bool)

(declare-fun tp!729112 () Bool)

(declare-fun tp!729109 () Bool)

(assert (=> b!2298749 (= e!1473043 (and tp!729112 tp!729109))))

(assert (=> b!2297854 (= tp!728821 e!1473043)))

(declare-fun b!2298748 () Bool)

(assert (=> b!2298748 (= e!1473043 tp_is_empty!10683)))

(declare-fun b!2298751 () Bool)

(declare-fun tp!729110 () Bool)

(declare-fun tp!729113 () Bool)

(assert (=> b!2298751 (= e!1473043 (and tp!729110 tp!729113))))

(assert (= (and b!2297854 ((_ is ElementMatch!6731) (regex!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) b!2298748))

(assert (= (and b!2297854 ((_ is Concat!11277) (regex!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) b!2298749))

(assert (= (and b!2297854 ((_ is Star!6731) (regex!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) b!2298750))

(assert (= (and b!2297854 ((_ is Union!6731) (regex!4383 (rule!6725 (h!32761 (t!205452 tokens!456)))))) b!2298751))

(declare-fun b!2298754 () Bool)

(declare-fun e!1473044 () Bool)

(declare-fun tp!729116 () Bool)

(assert (=> b!2298754 (= e!1473044 tp!729116)))

(declare-fun b!2298753 () Bool)

(declare-fun tp!729117 () Bool)

(declare-fun tp!729114 () Bool)

(assert (=> b!2298753 (= e!1473044 (and tp!729117 tp!729114))))

(assert (=> b!2297900 (= tp!728870 e!1473044)))

(declare-fun b!2298752 () Bool)

(assert (=> b!2298752 (= e!1473044 tp_is_empty!10683)))

(declare-fun b!2298755 () Bool)

(declare-fun tp!729115 () Bool)

(declare-fun tp!729118 () Bool)

(assert (=> b!2298755 (= e!1473044 (and tp!729115 tp!729118))))

(assert (= (and b!2297900 ((_ is ElementMatch!6731) (regOne!13975 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298752))

(assert (= (and b!2297900 ((_ is Concat!11277) (regOne!13975 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298753))

(assert (= (and b!2297900 ((_ is Star!6731) (regOne!13975 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298754))

(assert (= (and b!2297900 ((_ is Union!6731) (regOne!13975 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298755))

(declare-fun b!2298758 () Bool)

(declare-fun e!1473045 () Bool)

(declare-fun tp!729121 () Bool)

(assert (=> b!2298758 (= e!1473045 tp!729121)))

(declare-fun b!2298757 () Bool)

(declare-fun tp!729122 () Bool)

(declare-fun tp!729119 () Bool)

(assert (=> b!2298757 (= e!1473045 (and tp!729122 tp!729119))))

(assert (=> b!2297900 (= tp!728873 e!1473045)))

(declare-fun b!2298756 () Bool)

(assert (=> b!2298756 (= e!1473045 tp_is_empty!10683)))

(declare-fun b!2298759 () Bool)

(declare-fun tp!729120 () Bool)

(declare-fun tp!729123 () Bool)

(assert (=> b!2298759 (= e!1473045 (and tp!729120 tp!729123))))

(assert (= (and b!2297900 ((_ is ElementMatch!6731) (regTwo!13975 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298756))

(assert (= (and b!2297900 ((_ is Concat!11277) (regTwo!13975 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298757))

(assert (= (and b!2297900 ((_ is Star!6731) (regTwo!13975 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298758))

(assert (= (and b!2297900 ((_ is Union!6731) (regTwo!13975 (regex!4383 (rule!6725 (h!32761 tokens!456)))))) b!2298759))

(declare-fun b!2298760 () Bool)

(declare-fun e!1473046 () Bool)

(declare-fun tp!729124 () Bool)

(assert (=> b!2298760 (= e!1473046 (and tp_is_empty!10683 tp!729124))))

(assert (=> b!2297853 (= tp!728823 e!1473046)))

(assert (= (and b!2297853 ((_ is Cons!27358) (originalCharacters!5153 (h!32761 (t!205452 tokens!456))))) b!2298760))

(declare-fun b!2298763 () Bool)

(declare-fun e!1473047 () Bool)

(declare-fun tp!729127 () Bool)

(assert (=> b!2298763 (= e!1473047 tp!729127)))

(declare-fun b!2298762 () Bool)

(declare-fun tp!729128 () Bool)

(declare-fun tp!729125 () Bool)

(assert (=> b!2298762 (= e!1473047 (and tp!729128 tp!729125))))

(assert (=> b!2297888 (= tp!728860 e!1473047)))

(declare-fun b!2298761 () Bool)

(assert (=> b!2298761 (= e!1473047 tp_is_empty!10683)))

(declare-fun b!2298764 () Bool)

(declare-fun tp!729126 () Bool)

(declare-fun tp!729129 () Bool)

(assert (=> b!2298764 (= e!1473047 (and tp!729126 tp!729129))))

(assert (= (and b!2297888 ((_ is ElementMatch!6731) (regOne!13974 (regex!4383 otherR!12)))) b!2298761))

(assert (= (and b!2297888 ((_ is Concat!11277) (regOne!13974 (regex!4383 otherR!12)))) b!2298762))

(assert (= (and b!2297888 ((_ is Star!6731) (regOne!13974 (regex!4383 otherR!12)))) b!2298763))

(assert (= (and b!2297888 ((_ is Union!6731) (regOne!13974 (regex!4383 otherR!12)))) b!2298764))

(declare-fun b!2298767 () Bool)

(declare-fun e!1473048 () Bool)

(declare-fun tp!729132 () Bool)

(assert (=> b!2298767 (= e!1473048 tp!729132)))

(declare-fun b!2298766 () Bool)

(declare-fun tp!729133 () Bool)

(declare-fun tp!729130 () Bool)

(assert (=> b!2298766 (= e!1473048 (and tp!729133 tp!729130))))

(assert (=> b!2297888 (= tp!728857 e!1473048)))

(declare-fun b!2298765 () Bool)

(assert (=> b!2298765 (= e!1473048 tp_is_empty!10683)))

(declare-fun b!2298768 () Bool)

(declare-fun tp!729131 () Bool)

(declare-fun tp!729134 () Bool)

(assert (=> b!2298768 (= e!1473048 (and tp!729131 tp!729134))))

(assert (= (and b!2297888 ((_ is ElementMatch!6731) (regTwo!13974 (regex!4383 otherR!12)))) b!2298765))

(assert (= (and b!2297888 ((_ is Concat!11277) (regTwo!13974 (regex!4383 otherR!12)))) b!2298766))

(assert (= (and b!2297888 ((_ is Star!6731) (regTwo!13974 (regex!4383 otherR!12)))) b!2298767))

(assert (= (and b!2297888 ((_ is Union!6731) (regTwo!13974 (regex!4383 otherR!12)))) b!2298768))

(declare-fun b!2298771 () Bool)

(declare-fun e!1473049 () Bool)

(declare-fun tp!729137 () Bool)

(assert (=> b!2298771 (= e!1473049 tp!729137)))

(declare-fun b!2298770 () Bool)

(declare-fun tp!729138 () Bool)

(declare-fun tp!729135 () Bool)

(assert (=> b!2298770 (= e!1473049 (and tp!729138 tp!729135))))

(assert (=> b!2297890 (= tp!728858 e!1473049)))

(declare-fun b!2298769 () Bool)

(assert (=> b!2298769 (= e!1473049 tp_is_empty!10683)))

(declare-fun b!2298772 () Bool)

(declare-fun tp!729136 () Bool)

(declare-fun tp!729139 () Bool)

(assert (=> b!2298772 (= e!1473049 (and tp!729136 tp!729139))))

(assert (= (and b!2297890 ((_ is ElementMatch!6731) (regOne!13975 (regex!4383 otherR!12)))) b!2298769))

(assert (= (and b!2297890 ((_ is Concat!11277) (regOne!13975 (regex!4383 otherR!12)))) b!2298770))

(assert (= (and b!2297890 ((_ is Star!6731) (regOne!13975 (regex!4383 otherR!12)))) b!2298771))

(assert (= (and b!2297890 ((_ is Union!6731) (regOne!13975 (regex!4383 otherR!12)))) b!2298772))

(declare-fun b!2298775 () Bool)

(declare-fun e!1473050 () Bool)

(declare-fun tp!729142 () Bool)

(assert (=> b!2298775 (= e!1473050 tp!729142)))

(declare-fun b!2298774 () Bool)

(declare-fun tp!729143 () Bool)

(declare-fun tp!729140 () Bool)

(assert (=> b!2298774 (= e!1473050 (and tp!729143 tp!729140))))

(assert (=> b!2297890 (= tp!728861 e!1473050)))

(declare-fun b!2298773 () Bool)

(assert (=> b!2298773 (= e!1473050 tp_is_empty!10683)))

(declare-fun b!2298776 () Bool)

(declare-fun tp!729141 () Bool)

(declare-fun tp!729144 () Bool)

(assert (=> b!2298776 (= e!1473050 (and tp!729141 tp!729144))))

(assert (= (and b!2297890 ((_ is ElementMatch!6731) (regTwo!13975 (regex!4383 otherR!12)))) b!2298773))

(assert (= (and b!2297890 ((_ is Concat!11277) (regTwo!13975 (regex!4383 otherR!12)))) b!2298774))

(assert (= (and b!2297890 ((_ is Star!6731) (regTwo!13975 (regex!4383 otherR!12)))) b!2298775))

(assert (= (and b!2297890 ((_ is Union!6731) (regTwo!13975 (regex!4383 otherR!12)))) b!2298776))

(declare-fun b!2298779 () Bool)

(declare-fun e!1473051 () Bool)

(declare-fun tp!729147 () Bool)

(assert (=> b!2298779 (= e!1473051 tp!729147)))

(declare-fun b!2298778 () Bool)

(declare-fun tp!729148 () Bool)

(declare-fun tp!729145 () Bool)

(assert (=> b!2298778 (= e!1473051 (and tp!729148 tp!729145))))

(assert (=> b!2297889 (= tp!728859 e!1473051)))

(declare-fun b!2298777 () Bool)

(assert (=> b!2298777 (= e!1473051 tp_is_empty!10683)))

(declare-fun b!2298780 () Bool)

(declare-fun tp!729146 () Bool)

(declare-fun tp!729149 () Bool)

(assert (=> b!2298780 (= e!1473051 (and tp!729146 tp!729149))))

(assert (= (and b!2297889 ((_ is ElementMatch!6731) (reg!7060 (regex!4383 otherR!12)))) b!2298777))

(assert (= (and b!2297889 ((_ is Concat!11277) (reg!7060 (regex!4383 otherR!12)))) b!2298778))

(assert (= (and b!2297889 ((_ is Star!6731) (reg!7060 (regex!4383 otherR!12)))) b!2298779))

(assert (= (and b!2297889 ((_ is Union!6731) (reg!7060 (regex!4383 otherR!12)))) b!2298780))

(declare-fun b_lambda!73229 () Bool)

(assert (= b_lambda!73223 (or (and b!2298720 b_free!69291 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 (t!205452 tokens!456)))))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))))) (and b!2297855 b_free!69271) (and b!2297367 b_free!69259 (= (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))))) (and b!2297386 b_free!69255 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))))) (and b!2297379 b_free!69247 (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))))) (and b!2298701 b_free!69287 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 (t!205451 rules!1750))))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))))) (and b!2297359 b_free!69251 (= (toChars!6044 (transformation!4383 r!2363)) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))))) (and b!2297866 b_free!69275 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))))) b_lambda!73229)))

(declare-fun b_lambda!73231 () Bool)

(assert (= b_lambda!73205 (or (and b!2297866 b_free!69275 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 rules!1750)))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))))) (and b!2297386 b_free!69255 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 tokens!456)))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))))) (and b!2297359 b_free!69251 (= (toChars!6044 (transformation!4383 r!2363)) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))))) (and b!2297379 b_free!69247 (= (toChars!6044 (transformation!4383 otherR!12)) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))))) (and b!2297855 b_free!69271 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 tokens!456))))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))))) (and b!2298720 b_free!69291 (= (toChars!6044 (transformation!4383 (rule!6725 (h!32761 (t!205452 (t!205452 tokens!456)))))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))))) (and b!2298701 b_free!69287 (= (toChars!6044 (transformation!4383 (h!32760 (t!205451 (t!205451 rules!1750))))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))))) (and b!2297367 b_free!69259 (= (toChars!6044 (transformation!4383 (h!32760 rules!1750))) (toChars!6044 (transformation!4383 (rule!6725 (head!5020 tokens!456)))))) b_lambda!73231)))

(check-sat (not d!679665) (not b!2298715) (not d!679883) (not b!2298743) (not b!2298669) (not b!2298235) (not b!2298673) (not b!2297909) (not b_next!69975) (not b!2298760) (not d!679957) b_and!182971 (not b!2298719) (not d!679959) (not b!2298613) (not d!680031) (not b!2298698) (not b!2298682) (not d!680037) (not d!679921) (not b!2297776) (not b!2298330) (not d!679963) (not b_lambda!73211) (not b!2298401) (not d!679645) (not b!2298690) (not b!2298774) (not b!2298392) (not b!2298717) (not bm!136967) (not b!2298694) (not b!2298306) (not b!2297915) (not d!679805) (not b!2298220) (not b!2298746) (not b!2298377) (not b_lambda!73209) (not b_lambda!73231) (not d!679909) (not b!2298718) (not b!2298755) (not b!2298254) (not b!2298213) (not b!2298747) (not d!679803) (not b_next!69961) (not b!2298703) (not b!2298663) (not b!2298332) (not bm!136965) (not b!2298706) (not b_lambda!73221) (not d!679875) (not d!680027) (not b!2298722) (not b!2298609) (not b!2297908) (not b!2298110) (not b!2298250) (not b!2298712) (not b!2298297) (not b!2298612) (not b!2298664) (not b!2298677) (not b!2298388) b_and!182955 (not b!2298742) (not b!2298772) (not tb!137327) (not b!2298295) (not b!2298390) (not b!2298686) (not tb!137279) (not d!679971) (not b!2298678) (not d!679967) (not b!2298618) (not d!680041) (not b!2298724) b_and!182973 (not bm!136938) (not b!2298744) (not b!2298763) (not d!679955) (not d!679979) b_and!182969 (not b!2298285) b_and!182939 (not b!2298287) (not b!2298302) (not tb!137339) (not b!2297913) (not d!679871) (not b!2298328) (not b!2298693) (not b!2298214) (not b!2298622) (not b!2298668) (not b!2298753) (not b!2298281) (not b!2298270) (not b!2298286) b_and!182941 (not d!679763) (not b_next!69973) (not b!2298685) (not b!2298385) (not b!2298371) (not d!679653) b_and!182947 (not b_next!69953) (not b!2298266) (not b!2298749) (not bm!136955) (not b_next!69963) (not b!2298395) (not d!679657) (not d!679869) (not d!679907) (not d!679977) (not b!2298294) (not b_next!69955) (not b!2298676) (not b_next!69959) (not d!680043) (not b!2298727) (not b!2298245) (not d!679797) (not b!2298767) (not d!680019) (not b!2298621) (not d!679881) (not b_next!69989) b_and!182951 (not b!2298674) (not b!2298299) (not b!2297911) (not b!2298716) (not b!2298778) (not b!2297905) (not b!2298665) (not b!2298268) (not d!680021) (not b!2298670) (not d!679839) (not b!2298700) (not d!679855) (not b!2298221) (not bm!136946) (not b_next!69979) (not b!2298307) (not b!2298084) (not b!2298604) (not bm!136951) (not b!2298708) (not b!2298626) (not b!2298274) (not b!2298745) (not b_next!69957) (not d!679779) (not b!2298729) (not b!2298750) (not b_next!69991) (not b!2298780) (not b!2298334) (not b!2298272) (not b!2298707) b_and!182937 (not d!679863) (not b!2298201) (not b_next!69993) (not b!2298243) (not b!2298725) (not d!679927) (not b!2298710) (not b!2298759) (not b!2298363) (not b!2298369) (not b!2298757) (not b_next!69995) (not b!2298131) (not b!2298298) (not d!679853) (not bm!136948) (not b!2298365) (not d!679923) (not b!2298776) (not d!680029) (not d!679801) (not d!680025) (not b!2298728) (not d!679937) (not b!2298684) (not d!679759) b_and!182943 (not b_next!69949) (not bm!136947) (not b!2298607) (not b!2298237) b_and!182953 (not b!2298244) (not b!2298280) (not b!2298733) (not b!2298651) (not b!2298764) (not d!679655) (not b!2298291) (not b!2298680) (not b!2298253) (not b!2298096) (not bm!136950) (not b!2298283) (not b!2298732) (not b!2298723) (not b!2298234) (not b!2298331) (not b!2298265) (not b_next!69951) (not b!2298770) (not b!2298688) b_and!182975 (not d!679929) (not b!2298779) (not d!679649) (not b!2298766) (not b!2298389) b_and!182959 (not b!2298696) (not b!2298714) (not b!2298689) tp_is_empty!10683 (not b!2298282) b_and!182949 (not b!2298751) (not b!2298754) (not b_lambda!73229) (not b!2298097) (not b!2298681) (not b!2298699) (not d!679873) (not b!2298731) (not b!2298215) (not b!2298711) (not b!2298095) (not b!2298383) (not d!679965) b_and!182957 (not b!2298327) (not b!2297906) (not b!2298608) (not b!2298326) (not d!679659) (not b!2298225) (not b!2298202) (not d!679953) (not d!679975) (not b!2298697) (not b!2298702) (not b!2298705) (not b!2298762) (not b!2298130) (not d!679931) (not b!2298624) (not d!679961) (not b!2298672) (not b!2298771) (not b!2298284) (not b_lambda!73213) (not b_next!69977) (not b!2298393) (not b!2298232) (not b!2298387) (not b!2298768) (not b!2298373) (not b!2298248) (not b!2298692) (not b!2298775) (not d!679891) (not b!2298289) (not d!679915) (not b!2298333) (not b!2298616) (not b!2298758) (not b!2298368) (not d!679865) b_and!182945 (not b!2298204) (not b!2297446) (not b!2298145) (not b!2298358))
(check-sat (not b_next!69961) b_and!182955 b_and!182973 (not b_next!69979) (not b_next!69995) b_and!182957 (not b_next!69977) b_and!182945 (not b_next!69975) b_and!182971 b_and!182969 b_and!182939 b_and!182941 (not b_next!69973) b_and!182947 (not b_next!69953) (not b_next!69963) (not b_next!69955) (not b_next!69989) (not b_next!69959) b_and!182951 (not b_next!69957) (not b_next!69991) (not b_next!69993) b_and!182937 b_and!182943 (not b_next!69949) b_and!182953 b_and!182975 (not b_next!69951) b_and!182959 b_and!182949)
