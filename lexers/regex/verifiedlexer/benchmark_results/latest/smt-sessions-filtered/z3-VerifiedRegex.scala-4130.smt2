; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221396 () Bool)

(assert start!221396)

(declare-fun b!2266377 () Bool)

(declare-fun b_free!67181 () Bool)

(declare-fun b_next!67885 () Bool)

(assert (=> b!2266377 (= b_free!67181 (not b_next!67885))))

(declare-fun tp!717072 () Bool)

(declare-fun b_and!178361 () Bool)

(assert (=> b!2266377 (= tp!717072 b_and!178361)))

(declare-fun b_free!67183 () Bool)

(declare-fun b_next!67887 () Bool)

(assert (=> b!2266377 (= b_free!67183 (not b_next!67887))))

(declare-fun tp!717070 () Bool)

(declare-fun b_and!178363 () Bool)

(assert (=> b!2266377 (= tp!717070 b_and!178363)))

(declare-fun b!2266353 () Bool)

(declare-fun b_free!67185 () Bool)

(declare-fun b_next!67889 () Bool)

(assert (=> b!2266353 (= b_free!67185 (not b_next!67889))))

(declare-fun tp!717081 () Bool)

(declare-fun b_and!178365 () Bool)

(assert (=> b!2266353 (= tp!717081 b_and!178365)))

(declare-fun b_free!67187 () Bool)

(declare-fun b_next!67891 () Bool)

(assert (=> b!2266353 (= b_free!67187 (not b_next!67891))))

(declare-fun tp!717068 () Bool)

(declare-fun b_and!178367 () Bool)

(assert (=> b!2266353 (= tp!717068 b_and!178367)))

(declare-fun b!2266364 () Bool)

(declare-fun b_free!67189 () Bool)

(declare-fun b_next!67893 () Bool)

(assert (=> b!2266364 (= b_free!67189 (not b_next!67893))))

(declare-fun tp!717067 () Bool)

(declare-fun b_and!178369 () Bool)

(assert (=> b!2266364 (= tp!717067 b_and!178369)))

(declare-fun b_free!67191 () Bool)

(declare-fun b_next!67895 () Bool)

(assert (=> b!2266364 (= b_free!67191 (not b_next!67895))))

(declare-fun tp!717071 () Bool)

(declare-fun b_and!178371 () Bool)

(assert (=> b!2266364 (= tp!717071 b_and!178371)))

(declare-fun b!2266368 () Bool)

(declare-fun b_free!67193 () Bool)

(declare-fun b_next!67897 () Bool)

(assert (=> b!2266368 (= b_free!67193 (not b_next!67897))))

(declare-fun tp!717069 () Bool)

(declare-fun b_and!178373 () Bool)

(assert (=> b!2266368 (= tp!717069 b_and!178373)))

(declare-fun b_free!67195 () Bool)

(declare-fun b_next!67899 () Bool)

(assert (=> b!2266368 (= b_free!67195 (not b_next!67899))))

(declare-fun tp!717077 () Bool)

(declare-fun b_and!178375 () Bool)

(assert (=> b!2266368 (= tp!717077 b_and!178375)))

(declare-fun b!2266349 () Bool)

(declare-fun e!1451454 () Bool)

(declare-datatypes ((List!27033 0))(
  ( (Nil!26939) (Cons!26939 (h!32340 (_ BitVec 16)) (t!202127 List!27033)) )
))
(declare-datatypes ((TokenValue!4453 0))(
  ( (FloatLiteralValue!8906 (text!31616 List!27033)) (TokenValueExt!4452 (__x!17966 Int)) (Broken!22265 (value!136087 List!27033)) (Object!4546) (End!4453) (Def!4453) (Underscore!4453) (Match!4453) (Else!4453) (Error!4453) (Case!4453) (If!4453) (Extends!4453) (Abstract!4453) (Class!4453) (Val!4453) (DelimiterValue!8906 (del!4513 List!27033)) (KeywordValue!4459 (value!136088 List!27033)) (CommentValue!8906 (value!136089 List!27033)) (WhitespaceValue!8906 (value!136090 List!27033)) (IndentationValue!4453 (value!136091 List!27033)) (String!29368) (Int32!4453) (Broken!22266 (value!136092 List!27033)) (Boolean!4454) (Unit!39893) (OperatorValue!4456 (op!4513 List!27033)) (IdentifierValue!8906 (value!136093 List!27033)) (IdentifierValue!8907 (value!136094 List!27033)) (WhitespaceValue!8907 (value!136095 List!27033)) (True!8906) (False!8906) (Broken!22267 (value!136096 List!27033)) (Broken!22268 (value!136097 List!27033)) (True!8907) (RightBrace!4453) (RightBracket!4453) (Colon!4453) (Null!4453) (Comma!4453) (LeftBracket!4453) (False!8907) (LeftBrace!4453) (ImaginaryLiteralValue!4453 (text!31617 List!27033)) (StringLiteralValue!13359 (value!136098 List!27033)) (EOFValue!4453 (value!136099 List!27033)) (IdentValue!4453 (value!136100 List!27033)) (DelimiterValue!8907 (value!136101 List!27033)) (DedentValue!4453 (value!136102 List!27033)) (NewLineValue!4453 (value!136103 List!27033)) (IntegerValue!13359 (value!136104 (_ BitVec 32)) (text!31618 List!27033)) (IntegerValue!13360 (value!136105 Int) (text!31619 List!27033)) (Times!4453) (Or!4453) (Equal!4453) (Minus!4453) (Broken!22269 (value!136106 List!27033)) (And!4453) (Div!4453) (LessEqual!4453) (Mod!4453) (Concat!11092) (Not!4453) (Plus!4453) (SpaceValue!4453 (value!136107 List!27033)) (IntegerValue!13361 (value!136108 Int) (text!31620 List!27033)) (StringLiteralValue!13360 (text!31621 List!27033)) (FloatLiteralValue!8907 (text!31622 List!27033)) (BytesLiteralValue!4453 (value!136109 List!27033)) (CommentValue!8907 (value!136110 List!27033)) (StringLiteralValue!13361 (value!136111 List!27033)) (ErrorTokenValue!4453 (msg!4514 List!27033)) )
))
(declare-datatypes ((C!13424 0))(
  ( (C!13425 (val!7760 Int)) )
))
(declare-datatypes ((List!27034 0))(
  ( (Nil!26940) (Cons!26940 (h!32341 C!13424) (t!202128 List!27034)) )
))
(declare-datatypes ((IArray!17465 0))(
  ( (IArray!17466 (innerList!8790 List!27034)) )
))
(declare-datatypes ((Conc!8730 0))(
  ( (Node!8730 (left!20444 Conc!8730) (right!20774 Conc!8730) (csize!17690 Int) (cheight!8941 Int)) (Leaf!12861 (xs!11672 IArray!17465) (csize!17691 Int)) (Empty!8730) )
))
(declare-datatypes ((BalanceConc!17188 0))(
  ( (BalanceConc!17189 (c!359916 Conc!8730)) )
))
(declare-datatypes ((String!29369 0))(
  ( (String!29370 (value!136112 String)) )
))
(declare-datatypes ((Regex!6639 0))(
  ( (ElementMatch!6639 (c!359917 C!13424)) (Concat!11093 (regOne!13790 Regex!6639) (regTwo!13790 Regex!6639)) (EmptyExpr!6639) (Star!6639 (reg!6968 Regex!6639)) (EmptyLang!6639) (Union!6639 (regOne!13791 Regex!6639) (regTwo!13791 Regex!6639)) )
))
(declare-datatypes ((TokenValueInjection!8446 0))(
  ( (TokenValueInjection!8447 (toValue!6045 Int) (toChars!5904 Int)) )
))
(declare-datatypes ((Rule!8382 0))(
  ( (Rule!8383 (regex!4291 Regex!6639) (tag!4781 String!29369) (isSeparator!4291 Bool) (transformation!4291 TokenValueInjection!8446)) )
))
(declare-datatypes ((Token!8060 0))(
  ( (Token!8061 (value!136113 TokenValue!4453) (rule!6607 Rule!8382) (size!21126 Int) (originalCharacters!5061 List!27034)) )
))
(declare-datatypes ((List!27035 0))(
  ( (Nil!26941) (Cons!26941 (h!32342 Token!8060) (t!202129 List!27035)) )
))
(declare-fun tokens!456 () List!27035)

(declare-fun r!2363 () Rule!8382)

(declare-fun head!4878 (List!27035) Token!8060)

(assert (=> b!2266349 (= e!1451454 (= (rule!6607 (head!4878 tokens!456)) r!2363))))

(declare-fun b!2266350 () Bool)

(declare-fun e!1451438 () Bool)

(declare-fun otherP!12 () List!27034)

(declare-fun size!21127 (BalanceConc!17188) Int)

(declare-fun charsOf!2679 (Token!8060) BalanceConc!17188)

(declare-fun size!21128 (List!27034) Int)

(assert (=> b!2266350 (= e!1451438 (<= (size!21127 (charsOf!2679 (head!4878 tokens!456))) (size!21128 otherP!12)))))

(declare-fun b!2266351 () Bool)

(declare-fun e!1451462 () Bool)

(declare-fun tp_is_empty!10499 () Bool)

(declare-fun tp!717066 () Bool)

(assert (=> b!2266351 (= e!1451462 (and tp_is_empty!10499 tp!717066))))

(declare-fun b!2266352 () Bool)

(declare-fun e!1451450 () Bool)

(declare-fun e!1451440 () Bool)

(assert (=> b!2266352 (= e!1451450 e!1451440)))

(declare-fun res!968978 () Bool)

(assert (=> b!2266352 (=> res!968978 e!1451440)))

(declare-fun lt!842257 () List!27034)

(assert (=> b!2266352 (= res!968978 (> (size!21128 otherP!12) (size!21128 lt!842257)))))

(declare-datatypes ((tuple2!26582 0))(
  ( (tuple2!26583 (_1!15801 Token!8060) (_2!15801 List!27034)) )
))
(declare-fun lt!842249 () tuple2!26582)

(declare-fun lt!842250 () List!27034)

(assert (=> b!2266352 (= (_2!15801 lt!842249) lt!842250)))

(declare-fun input!1722 () List!27034)

(declare-datatypes ((Unit!39894 0))(
  ( (Unit!39895) )
))
(declare-fun lt!842256 () Unit!39894)

(declare-fun lemmaSamePrefixThenSameSuffix!1010 (List!27034 List!27034 List!27034 List!27034 List!27034) Unit!39894)

(assert (=> b!2266352 (= lt!842256 (lemmaSamePrefixThenSameSuffix!1010 lt!842257 (_2!15801 lt!842249) lt!842257 lt!842250 input!1722))))

(declare-fun getSuffix!1092 (List!27034 List!27034) List!27034)

(assert (=> b!2266352 (= lt!842250 (getSuffix!1092 input!1722 lt!842257))))

(declare-fun isPrefix!2281 (List!27034 List!27034) Bool)

(declare-fun ++!6563 (List!27034 List!27034) List!27034)

(assert (=> b!2266352 (isPrefix!2281 lt!842257 (++!6563 lt!842257 (_2!15801 lt!842249)))))

(declare-fun lt!842251 () Unit!39894)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1506 (List!27034 List!27034) Unit!39894)

(assert (=> b!2266352 (= lt!842251 (lemmaConcatTwoListThenFirstIsPrefix!1506 lt!842257 (_2!15801 lt!842249)))))

(declare-fun list!10417 (BalanceConc!17188) List!27034)

(assert (=> b!2266352 (= lt!842257 (list!10417 (charsOf!2679 (h!32342 tokens!456))))))

(declare-datatypes ((LexerInterface!3888 0))(
  ( (LexerInterfaceExt!3885 (__x!17967 Int)) (Lexer!3886) )
))
(declare-fun thiss!16613 () LexerInterface!3888)

(declare-datatypes ((List!27036 0))(
  ( (Nil!26942) (Cons!26942 (h!32343 Rule!8382) (t!202130 List!27036)) )
))
(declare-fun rules!1750 () List!27036)

(declare-datatypes ((Option!5269 0))(
  ( (None!5268) (Some!5268 (v!30308 tuple2!26582)) )
))
(declare-fun get!8130 (Option!5269) tuple2!26582)

(declare-fun maxPrefix!2162 (LexerInterface!3888 List!27036 List!27034) Option!5269)

(assert (=> b!2266352 (= lt!842249 (get!8130 (maxPrefix!2162 thiss!16613 rules!1750 input!1722)))))

(declare-fun e!1451460 () Bool)

(assert (=> b!2266353 (= e!1451460 (and tp!717081 tp!717068))))

(declare-fun b!2266354 () Bool)

(declare-fun res!968986 () Bool)

(declare-fun e!1451463 () Bool)

(assert (=> b!2266354 (=> (not res!968986) (not e!1451463))))

(declare-fun otherR!12 () Rule!8382)

(declare-fun contains!4649 (List!27036 Rule!8382) Bool)

(assert (=> b!2266354 (= res!968986 (contains!4649 rules!1750 otherR!12))))

(declare-fun b!2266355 () Bool)

(declare-fun e!1451457 () Unit!39894)

(declare-fun Unit!39896 () Unit!39894)

(assert (=> b!2266355 (= e!1451457 Unit!39896)))

(declare-fun b!2266356 () Bool)

(declare-fun e!1451449 () Bool)

(declare-fun tp!717083 () Bool)

(assert (=> b!2266356 (= e!1451449 (and tp_is_empty!10499 tp!717083))))

(declare-fun b!2266357 () Bool)

(declare-fun e!1451439 () Bool)

(declare-fun e!1451447 () Bool)

(assert (=> b!2266357 (= e!1451439 e!1451447)))

(declare-fun res!968970 () Bool)

(assert (=> b!2266357 (=> (not res!968970) (not e!1451447))))

(assert (=> b!2266357 (= res!968970 e!1451438)))

(declare-fun res!968987 () Bool)

(assert (=> b!2266357 (=> res!968987 e!1451438)))

(declare-fun lt!842252 () Bool)

(assert (=> b!2266357 (= res!968987 lt!842252)))

(declare-fun isEmpty!15243 (List!27035) Bool)

(assert (=> b!2266357 (= lt!842252 (isEmpty!15243 tokens!456))))

(declare-fun b!2266358 () Bool)

(declare-fun e!1451452 () Bool)

(declare-fun tp!717073 () Bool)

(declare-fun e!1451442 () Bool)

(declare-fun inv!36481 (String!29369) Bool)

(declare-fun inv!36484 (TokenValueInjection!8446) Bool)

(assert (=> b!2266358 (= e!1451442 (and tp!717073 (inv!36481 (tag!4781 r!2363)) (inv!36484 (transformation!4291 r!2363)) e!1451452))))

(declare-fun b!2266359 () Bool)

(assert (=> b!2266359 (= e!1451463 e!1451439)))

(declare-fun res!968985 () Bool)

(assert (=> b!2266359 (=> (not res!968985) (not e!1451439))))

(declare-datatypes ((IArray!17467 0))(
  ( (IArray!17468 (innerList!8791 List!27035)) )
))
(declare-datatypes ((Conc!8731 0))(
  ( (Node!8731 (left!20445 Conc!8731) (right!20775 Conc!8731) (csize!17692 Int) (cheight!8942 Int)) (Leaf!12862 (xs!11673 IArray!17467) (csize!17693 Int)) (Empty!8731) )
))
(declare-datatypes ((BalanceConc!17190 0))(
  ( (BalanceConc!17191 (c!359918 Conc!8731)) )
))
(declare-datatypes ((tuple2!26584 0))(
  ( (tuple2!26585 (_1!15802 BalanceConc!17190) (_2!15802 BalanceConc!17188)) )
))
(declare-fun lt!842258 () tuple2!26584)

(declare-fun suffix!886 () List!27034)

(declare-datatypes ((tuple2!26586 0))(
  ( (tuple2!26587 (_1!15803 List!27035) (_2!15803 List!27034)) )
))
(declare-fun list!10418 (BalanceConc!17190) List!27035)

(assert (=> b!2266359 (= res!968985 (= (tuple2!26587 (list!10418 (_1!15802 lt!842258)) (list!10417 (_2!15802 lt!842258))) (tuple2!26587 tokens!456 suffix!886)))))

(declare-fun lex!1727 (LexerInterface!3888 List!27036 BalanceConc!17188) tuple2!26584)

(declare-fun seqFromList!2995 (List!27034) BalanceConc!17188)

(assert (=> b!2266359 (= lt!842258 (lex!1727 thiss!16613 rules!1750 (seqFromList!2995 input!1722)))))

(declare-fun b!2266360 () Bool)

(declare-fun e!1451441 () Bool)

(declare-fun matchR!2900 (Regex!6639 List!27034) Bool)

(assert (=> b!2266360 (= e!1451441 (not (matchR!2900 (regex!4291 r!2363) (list!10417 (charsOf!2679 (head!4878 tokens!456))))))))

(declare-fun b!2266361 () Bool)

(declare-fun res!968972 () Bool)

(assert (=> b!2266361 (=> (not res!968972) (not e!1451463))))

(declare-fun isEmpty!15244 (List!27036) Bool)

(assert (=> b!2266361 (= res!968972 (not (isEmpty!15244 rules!1750)))))

(declare-fun b!2266362 () Bool)

(declare-fun res!968974 () Bool)

(assert (=> b!2266362 (=> (not res!968974) (not e!1451447))))

(assert (=> b!2266362 (= res!968974 (isPrefix!2281 otherP!12 input!1722))))

(declare-fun b!2266363 () Bool)

(declare-fun e!1451437 () Bool)

(declare-fun tp!717080 () Bool)

(assert (=> b!2266363 (= e!1451437 (and tp_is_empty!10499 tp!717080))))

(declare-fun e!1451453 () Bool)

(assert (=> b!2266364 (= e!1451453 (and tp!717067 tp!717071))))

(declare-fun b!2266365 () Bool)

(declare-fun Unit!39897 () Unit!39894)

(assert (=> b!2266365 (= e!1451457 Unit!39897)))

(declare-fun lt!842246 () Unit!39894)

(declare-fun lemmaSameIndexThenSameElement!158 (List!27036 Rule!8382 Rule!8382) Unit!39894)

(assert (=> b!2266365 (= lt!842246 (lemmaSameIndexThenSameElement!158 rules!1750 r!2363 otherR!12))))

(assert (=> b!2266365 false))

(declare-fun b!2266366 () Bool)

(declare-fun e!1451448 () Bool)

(declare-fun e!1451446 () Bool)

(assert (=> b!2266366 (= e!1451448 e!1451446)))

(declare-fun res!968976 () Bool)

(assert (=> b!2266366 (=> res!968976 e!1451446)))

(declare-fun lt!842248 () Int)

(declare-fun lt!842253 () Int)

(assert (=> b!2266366 (= res!968976 (> lt!842248 lt!842253))))

(declare-fun getIndex!312 (List!27036 Rule!8382) Int)

(assert (=> b!2266366 (= lt!842253 (getIndex!312 rules!1750 otherR!12))))

(assert (=> b!2266366 (= lt!842248 (getIndex!312 rules!1750 r!2363))))

(declare-fun ruleValid!1383 (LexerInterface!3888 Rule!8382) Bool)

(assert (=> b!2266366 (ruleValid!1383 thiss!16613 otherR!12)))

(declare-fun lt!842247 () Unit!39894)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!790 (LexerInterface!3888 Rule!8382 List!27036) Unit!39894)

(assert (=> b!2266366 (= lt!842247 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!790 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2266367 () Bool)

(declare-fun res!968977 () Bool)

(assert (=> b!2266367 (=> (not res!968977) (not e!1451463))))

(declare-fun rulesInvariant!3390 (LexerInterface!3888 List!27036) Bool)

(assert (=> b!2266367 (= res!968977 (rulesInvariant!3390 thiss!16613 rules!1750))))

(declare-fun e!1451436 () Bool)

(assert (=> b!2266368 (= e!1451436 (and tp!717069 tp!717077))))

(declare-fun b!2266369 () Bool)

(declare-fun e!1451459 () Bool)

(declare-fun e!1451444 () Bool)

(declare-fun tp!717076 () Bool)

(assert (=> b!2266369 (= e!1451459 (and e!1451444 tp!717076))))

(declare-fun res!968981 () Bool)

(assert (=> start!221396 (=> (not res!968981) (not e!1451463))))

(get-info :version)

(assert (=> start!221396 (= res!968981 ((_ is Lexer!3886) thiss!16613))))

(assert (=> start!221396 e!1451463))

(assert (=> start!221396 true))

(assert (=> start!221396 e!1451462))

(declare-fun e!1451465 () Bool)

(assert (=> start!221396 e!1451465))

(assert (=> start!221396 e!1451449))

(assert (=> start!221396 e!1451437))

(assert (=> start!221396 e!1451459))

(assert (=> start!221396 e!1451442))

(declare-fun e!1451461 () Bool)

(assert (=> start!221396 e!1451461))

(declare-fun b!2266370 () Bool)

(assert (=> b!2266370 (= e!1451446 e!1451450)))

(declare-fun res!968983 () Bool)

(assert (=> b!2266370 (=> res!968983 e!1451450)))

(assert (=> b!2266370 (= res!968983 ((_ is Nil!26941) tokens!456))))

(declare-fun lt!842254 () Unit!39894)

(assert (=> b!2266370 (= lt!842254 e!1451457)))

(declare-fun c!359915 () Bool)

(assert (=> b!2266370 (= c!359915 (= lt!842248 lt!842253))))

(declare-fun b!2266371 () Bool)

(declare-fun res!968979 () Bool)

(assert (=> b!2266371 (=> (not res!968979) (not e!1451447))))

(assert (=> b!2266371 (= res!968979 e!1451454)))

(declare-fun res!968975 () Bool)

(assert (=> b!2266371 (=> res!968975 e!1451454)))

(assert (=> b!2266371 (= res!968975 lt!842252)))

(declare-fun b!2266372 () Bool)

(declare-fun e!1451456 () Bool)

(declare-fun tp!717074 () Bool)

(declare-fun inv!36485 (Token!8060) Bool)

(assert (=> b!2266372 (= e!1451461 (and (inv!36485 (h!32342 tokens!456)) e!1451456 tp!717074))))

(declare-fun b!2266373 () Bool)

(declare-fun tp!717079 () Bool)

(assert (=> b!2266373 (= e!1451465 (and tp!717079 (inv!36481 (tag!4781 otherR!12)) (inv!36484 (transformation!4291 otherR!12)) e!1451453))))

(declare-fun b!2266374 () Bool)

(declare-fun tp!717082 () Bool)

(declare-fun e!1451458 () Bool)

(declare-fun inv!21 (TokenValue!4453) Bool)

(assert (=> b!2266374 (= e!1451456 (and (inv!21 (value!136113 (h!32342 tokens!456))) e!1451458 tp!717082))))

(declare-fun b!2266375 () Bool)

(declare-fun tp!717075 () Bool)

(assert (=> b!2266375 (= e!1451458 (and tp!717075 (inv!36481 (tag!4781 (rule!6607 (h!32342 tokens!456)))) (inv!36484 (transformation!4291 (rule!6607 (h!32342 tokens!456)))) e!1451460))))

(declare-fun b!2266376 () Bool)

(declare-fun res!968980 () Bool)

(assert (=> b!2266376 (=> (not res!968980) (not e!1451447))))

(assert (=> b!2266376 (= res!968980 (not (= r!2363 otherR!12)))))

(assert (=> b!2266377 (= e!1451452 (and tp!717072 tp!717070))))

(declare-fun tp!717078 () Bool)

(declare-fun b!2266378 () Bool)

(assert (=> b!2266378 (= e!1451444 (and tp!717078 (inv!36481 (tag!4781 (h!32343 rules!1750))) (inv!36484 (transformation!4291 (h!32343 rules!1750))) e!1451436))))

(declare-fun b!2266379 () Bool)

(declare-fun res!968971 () Bool)

(assert (=> b!2266379 (=> res!968971 e!1451440)))

(assert (=> b!2266379 (= res!968971 (>= lt!842253 lt!842248))))

(declare-fun b!2266380 () Bool)

(assert (=> b!2266380 (= e!1451447 (not e!1451448))))

(declare-fun res!968984 () Bool)

(assert (=> b!2266380 (=> res!968984 e!1451448)))

(assert (=> b!2266380 (= res!968984 e!1451441)))

(declare-fun res!968982 () Bool)

(assert (=> b!2266380 (=> (not res!968982) (not e!1451441))))

(assert (=> b!2266380 (= res!968982 (not lt!842252))))

(assert (=> b!2266380 (ruleValid!1383 thiss!16613 r!2363)))

(declare-fun lt!842255 () Unit!39894)

(assert (=> b!2266380 (= lt!842255 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!790 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2266381 () Bool)

(declare-fun validRegex!2486 (Regex!6639) Bool)

(assert (=> b!2266381 (= e!1451440 (validRegex!2486 (regex!4291 otherR!12)))))

(declare-fun b!2266382 () Bool)

(declare-fun res!968973 () Bool)

(assert (=> b!2266382 (=> (not res!968973) (not e!1451463))))

(assert (=> b!2266382 (= res!968973 (contains!4649 rules!1750 r!2363))))

(assert (= (and start!221396 res!968981) b!2266361))

(assert (= (and b!2266361 res!968972) b!2266367))

(assert (= (and b!2266367 res!968977) b!2266382))

(assert (= (and b!2266382 res!968973) b!2266354))

(assert (= (and b!2266354 res!968986) b!2266359))

(assert (= (and b!2266359 res!968985) b!2266357))

(assert (= (and b!2266357 (not res!968987)) b!2266350))

(assert (= (and b!2266357 res!968970) b!2266371))

(assert (= (and b!2266371 (not res!968975)) b!2266349))

(assert (= (and b!2266371 res!968979) b!2266362))

(assert (= (and b!2266362 res!968974) b!2266376))

(assert (= (and b!2266376 res!968980) b!2266380))

(assert (= (and b!2266380 res!968982) b!2266360))

(assert (= (and b!2266380 (not res!968984)) b!2266366))

(assert (= (and b!2266366 (not res!968976)) b!2266370))

(assert (= (and b!2266370 c!359915) b!2266365))

(assert (= (and b!2266370 (not c!359915)) b!2266355))

(assert (= (and b!2266370 (not res!968983)) b!2266352))

(assert (= (and b!2266352 (not res!968978)) b!2266379))

(assert (= (and b!2266379 (not res!968971)) b!2266381))

(assert (= (and start!221396 ((_ is Cons!26940) input!1722)) b!2266351))

(assert (= b!2266373 b!2266364))

(assert (= start!221396 b!2266373))

(assert (= (and start!221396 ((_ is Cons!26940) suffix!886)) b!2266356))

(assert (= (and start!221396 ((_ is Cons!26940) otherP!12)) b!2266363))

(assert (= b!2266378 b!2266368))

(assert (= b!2266369 b!2266378))

(assert (= (and start!221396 ((_ is Cons!26942) rules!1750)) b!2266369))

(assert (= b!2266358 b!2266377))

(assert (= start!221396 b!2266358))

(assert (= b!2266375 b!2266353))

(assert (= b!2266374 b!2266375))

(assert (= b!2266372 b!2266374))

(assert (= (and start!221396 ((_ is Cons!26941) tokens!456)) b!2266372))

(declare-fun m!2695603 () Bool)

(assert (=> b!2266349 m!2695603))

(declare-fun m!2695605 () Bool)

(assert (=> b!2266373 m!2695605))

(declare-fun m!2695607 () Bool)

(assert (=> b!2266373 m!2695607))

(declare-fun m!2695609 () Bool)

(assert (=> b!2266381 m!2695609))

(declare-fun m!2695611 () Bool)

(assert (=> b!2266361 m!2695611))

(declare-fun m!2695613 () Bool)

(assert (=> b!2266359 m!2695613))

(declare-fun m!2695615 () Bool)

(assert (=> b!2266359 m!2695615))

(declare-fun m!2695617 () Bool)

(assert (=> b!2266359 m!2695617))

(assert (=> b!2266359 m!2695617))

(declare-fun m!2695619 () Bool)

(assert (=> b!2266359 m!2695619))

(declare-fun m!2695621 () Bool)

(assert (=> b!2266365 m!2695621))

(assert (=> b!2266360 m!2695603))

(assert (=> b!2266360 m!2695603))

(declare-fun m!2695623 () Bool)

(assert (=> b!2266360 m!2695623))

(assert (=> b!2266360 m!2695623))

(declare-fun m!2695625 () Bool)

(assert (=> b!2266360 m!2695625))

(assert (=> b!2266360 m!2695625))

(declare-fun m!2695627 () Bool)

(assert (=> b!2266360 m!2695627))

(declare-fun m!2695629 () Bool)

(assert (=> b!2266374 m!2695629))

(declare-fun m!2695631 () Bool)

(assert (=> b!2266382 m!2695631))

(declare-fun m!2695633 () Bool)

(assert (=> b!2266380 m!2695633))

(declare-fun m!2695635 () Bool)

(assert (=> b!2266380 m!2695635))

(declare-fun m!2695637 () Bool)

(assert (=> b!2266357 m!2695637))

(declare-fun m!2695639 () Bool)

(assert (=> b!2266372 m!2695639))

(declare-fun m!2695641 () Bool)

(assert (=> b!2266378 m!2695641))

(declare-fun m!2695643 () Bool)

(assert (=> b!2266378 m!2695643))

(declare-fun m!2695645 () Bool)

(assert (=> b!2266367 m!2695645))

(declare-fun m!2695647 () Bool)

(assert (=> b!2266358 m!2695647))

(declare-fun m!2695649 () Bool)

(assert (=> b!2266358 m!2695649))

(declare-fun m!2695651 () Bool)

(assert (=> b!2266375 m!2695651))

(declare-fun m!2695653 () Bool)

(assert (=> b!2266375 m!2695653))

(declare-fun m!2695655 () Bool)

(assert (=> b!2266354 m!2695655))

(declare-fun m!2695657 () Bool)

(assert (=> b!2266352 m!2695657))

(declare-fun m!2695659 () Bool)

(assert (=> b!2266352 m!2695659))

(declare-fun m!2695661 () Bool)

(assert (=> b!2266352 m!2695661))

(assert (=> b!2266352 m!2695661))

(declare-fun m!2695663 () Bool)

(assert (=> b!2266352 m!2695663))

(declare-fun m!2695665 () Bool)

(assert (=> b!2266352 m!2695665))

(declare-fun m!2695667 () Bool)

(assert (=> b!2266352 m!2695667))

(assert (=> b!2266352 m!2695665))

(declare-fun m!2695669 () Bool)

(assert (=> b!2266352 m!2695669))

(declare-fun m!2695671 () Bool)

(assert (=> b!2266352 m!2695671))

(declare-fun m!2695673 () Bool)

(assert (=> b!2266352 m!2695673))

(declare-fun m!2695675 () Bool)

(assert (=> b!2266352 m!2695675))

(assert (=> b!2266352 m!2695671))

(declare-fun m!2695677 () Bool)

(assert (=> b!2266352 m!2695677))

(declare-fun m!2695679 () Bool)

(assert (=> b!2266362 m!2695679))

(declare-fun m!2695681 () Bool)

(assert (=> b!2266366 m!2695681))

(declare-fun m!2695683 () Bool)

(assert (=> b!2266366 m!2695683))

(declare-fun m!2695685 () Bool)

(assert (=> b!2266366 m!2695685))

(declare-fun m!2695687 () Bool)

(assert (=> b!2266366 m!2695687))

(assert (=> b!2266350 m!2695603))

(assert (=> b!2266350 m!2695603))

(assert (=> b!2266350 m!2695623))

(assert (=> b!2266350 m!2695623))

(declare-fun m!2695689 () Bool)

(assert (=> b!2266350 m!2695689))

(assert (=> b!2266350 m!2695675))

(check-sat (not b!2266373) (not b_next!67887) (not b!2266349) (not b!2266352) (not b!2266351) (not b_next!67899) b_and!178373 (not b!2266380) (not b!2266356) b_and!178367 (not b_next!67891) (not b!2266360) b_and!178365 (not b!2266350) (not b!2266382) b_and!178369 (not b!2266361) (not b!2266367) (not b!2266366) b_and!178375 b_and!178363 b_and!178371 (not b_next!67893) (not b!2266363) (not b!2266374) (not b!2266359) (not b_next!67885) (not b_next!67889) (not b_next!67895) (not b!2266375) (not b_next!67897) (not b!2266357) (not b!2266381) b_and!178361 (not b!2266372) (not b!2266378) tp_is_empty!10499 (not b!2266362) (not b!2266354) (not b!2266358) (not b!2266365) (not b!2266369))
(check-sat (not b_next!67887) (not b_next!67891) b_and!178365 b_and!178369 (not b_next!67899) (not b_next!67893) (not b_next!67897) b_and!178361 b_and!178373 b_and!178367 b_and!178375 b_and!178363 b_and!178371 (not b_next!67885) (not b_next!67889) (not b_next!67895))
