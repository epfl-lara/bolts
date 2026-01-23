; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746154 () Bool)

(assert start!746154)

(declare-fun b!7907261 () Bool)

(declare-fun b_free!135035 () Bool)

(declare-fun b_next!135825 () Bool)

(assert (=> b!7907261 (= b_free!135035 (not b_next!135825))))

(declare-fun tp!2355635 () Bool)

(declare-fun b_and!353231 () Bool)

(assert (=> b!7907261 (= tp!2355635 b_and!353231)))

(declare-fun b_free!135037 () Bool)

(declare-fun b_next!135827 () Bool)

(assert (=> b!7907261 (= b_free!135037 (not b_next!135827))))

(declare-fun tp!2355639 () Bool)

(declare-fun b_and!353233 () Bool)

(assert (=> b!7907261 (= tp!2355639 b_and!353233)))

(declare-fun b!7907249 () Bool)

(declare-fun res!3137994 () Bool)

(declare-fun e!4667605 () Bool)

(assert (=> b!7907249 (=> (not res!3137994) (not e!4667605))))

(declare-datatypes ((LexerInterface!8225 0))(
  ( (LexerInterfaceExt!8222 (__x!35185 Int)) (Lexer!8223) )
))
(declare-fun thiss!14377 () LexerInterface!8225)

(declare-datatypes ((List!74419 0))(
  ( (Nil!74295) (Cons!74295 (h!80743 (_ BitVec 16)) (t!389688 List!74419)) )
))
(declare-datatypes ((TokenValue!8949 0))(
  ( (FloatLiteralValue!17898 (text!63088 List!74419)) (TokenValueExt!8948 (__x!35186 Int)) (Broken!44745 (value!287997 List!74419)) (Object!9072) (End!8949) (Def!8949) (Underscore!8949) (Match!8949) (Else!8949) (Error!8949) (Case!8949) (If!8949) (Extends!8949) (Abstract!8949) (Class!8949) (Val!8949) (DelimiterValue!17898 (del!9009 List!74419)) (KeywordValue!8955 (value!287998 List!74419)) (CommentValue!17898 (value!287999 List!74419)) (WhitespaceValue!17898 (value!288000 List!74419)) (IndentationValue!8949 (value!288001 List!74419)) (String!83168) (Int32!8949) (Broken!44746 (value!288002 List!74419)) (Boolean!8950) (Unit!169337) (OperatorValue!8952 (op!9009 List!74419)) (IdentifierValue!17898 (value!288003 List!74419)) (IdentifierValue!17899 (value!288004 List!74419)) (WhitespaceValue!17899 (value!288005 List!74419)) (True!17898) (False!17898) (Broken!44747 (value!288006 List!74419)) (Broken!44748 (value!288007 List!74419)) (True!17899) (RightBrace!8949) (RightBracket!8949) (Colon!8949) (Null!8949) (Comma!8949) (LeftBracket!8949) (False!17899) (LeftBrace!8949) (ImaginaryLiteralValue!8949 (text!63089 List!74419)) (StringLiteralValue!26847 (value!288008 List!74419)) (EOFValue!8949 (value!288009 List!74419)) (IdentValue!8949 (value!288010 List!74419)) (DelimiterValue!17899 (value!288011 List!74419)) (DedentValue!8949 (value!288012 List!74419)) (NewLineValue!8949 (value!288013 List!74419)) (IntegerValue!26847 (value!288014 (_ BitVec 32)) (text!63090 List!74419)) (IntegerValue!26848 (value!288015 Int) (text!63091 List!74419)) (Times!8949) (Or!8949) (Equal!8949) (Minus!8949) (Broken!44749 (value!288016 List!74419)) (And!8949) (Div!8949) (LessEqual!8949) (Mod!8949) (Concat!30285) (Not!8949) (Plus!8949) (SpaceValue!8949 (value!288017 List!74419)) (IntegerValue!26849 (value!288018 Int) (text!63092 List!74419)) (StringLiteralValue!26848 (text!63093 List!74419)) (FloatLiteralValue!17899 (text!63094 List!74419)) (BytesLiteralValue!8949 (value!288019 List!74419)) (CommentValue!17899 (value!288020 List!74419)) (StringLiteralValue!26849 (value!288021 List!74419)) (ErrorTokenValue!8949 (msg!9010 List!74419)) )
))
(declare-datatypes ((C!43002 0))(
  ( (C!43003 (val!31965 Int)) )
))
(declare-datatypes ((List!74420 0))(
  ( (Nil!74296) (Cons!74296 (h!80744 C!43002) (t!389689 List!74420)) )
))
(declare-datatypes ((IArray!31675 0))(
  ( (IArray!31676 (innerList!15895 List!74420)) )
))
(declare-datatypes ((Conc!15807 0))(
  ( (Node!15807 (left!56671 Conc!15807) (right!57001 Conc!15807) (csize!31844 Int) (cheight!16018 Int)) (Leaf!30092 (xs!19189 IArray!31675) (csize!31845 Int)) (Empty!15807) )
))
(declare-datatypes ((BalanceConc!30732 0))(
  ( (BalanceConc!30733 (c!1450832 Conc!15807)) )
))
(declare-datatypes ((Regex!21336 0))(
  ( (ElementMatch!21336 (c!1450833 C!43002)) (Concat!30286 (regOne!43184 Regex!21336) (regTwo!43184 Regex!21336)) (EmptyExpr!21336) (Star!21336 (reg!21665 Regex!21336)) (EmptyLang!21336) (Union!21336 (regOne!43185 Regex!21336) (regTwo!43185 Regex!21336)) )
))
(declare-datatypes ((String!83169 0))(
  ( (String!83170 (value!288022 String)) )
))
(declare-datatypes ((TokenValueInjection!17206 0))(
  ( (TokenValueInjection!17207 (toValue!11690 Int) (toChars!11549 Int)) )
))
(declare-datatypes ((Rule!17066 0))(
  ( (Rule!17067 (regex!8633 Regex!21336) (tag!9497 String!83169) (isSeparator!8633 Bool) (transformation!8633 TokenValueInjection!17206)) )
))
(declare-datatypes ((List!74421 0))(
  ( (Nil!74297) (Cons!74297 (h!80745 Rule!17066) (t!389690 List!74421)) )
))
(declare-fun rulesArg!141 () List!74421)

(declare-fun rulesValidInductive!3444 (LexerInterface!8225 List!74421) Bool)

(assert (=> b!7907249 (= res!3137994 (rulesValidInductive!3444 thiss!14377 rulesArg!141))))

(declare-fun b!7907250 () Bool)

(declare-fun res!3138000 () Bool)

(declare-fun e!4667607 () Bool)

(assert (=> b!7907250 (=> (not res!3138000) (not e!4667607))))

(declare-datatypes ((Token!15686 0))(
  ( (Token!15687 (value!288023 TokenValue!8949) (rule!11931 Rule!17066) (size!43071 Int) (originalCharacters!8874 List!74420)) )
))
(declare-datatypes ((tuple2!70310 0))(
  ( (tuple2!70311 (_1!38458 Token!15686) (_2!38458 List!74420)) )
))
(declare-fun lt!2685470 () tuple2!70310)

(declare-fun apply!14356 (TokenValueInjection!17206 BalanceConc!30732) TokenValue!8949)

(declare-fun seqFromList!6174 (List!74420) BalanceConc!30732)

(assert (=> b!7907250 (= res!3138000 (= (value!288023 (_1!38458 lt!2685470)) (apply!14356 (transformation!8633 (rule!11931 (_1!38458 lt!2685470))) (seqFromList!6174 (originalCharacters!8874 (_1!38458 lt!2685470))))))))

(declare-fun b!7907251 () Bool)

(declare-fun contains!20897 (List!74421 Rule!17066) Bool)

(assert (=> b!7907251 (= e!4667607 (contains!20897 rulesArg!141 (rule!11931 (_1!38458 lt!2685470))))))

(declare-fun res!3137999 () Bool)

(assert (=> start!746154 (=> (not res!3137999) (not e!4667605))))

(assert (=> start!746154 (= res!3137999 (is-Lexer!8223 thiss!14377))))

(assert (=> start!746154 e!4667605))

(assert (=> start!746154 true))

(declare-fun e!4667604 () Bool)

(assert (=> start!746154 e!4667604))

(declare-fun e!4667602 () Bool)

(assert (=> start!746154 e!4667602))

(declare-fun b!7907252 () Bool)

(declare-fun e!4667606 () Bool)

(declare-fun e!4667608 () Bool)

(declare-fun tp!2355638 () Bool)

(declare-fun inv!95307 (String!83169) Bool)

(declare-fun inv!95310 (TokenValueInjection!17206) Bool)

(assert (=> b!7907252 (= e!4667608 (and tp!2355638 (inv!95307 (tag!9497 (h!80745 rulesArg!141))) (inv!95310 (transformation!8633 (h!80745 rulesArg!141))) e!4667606))))

(declare-fun b!7907253 () Bool)

(declare-fun res!3138001 () Bool)

(assert (=> b!7907253 (=> (not res!3138001) (not e!4667607))))

(declare-fun lt!2685469 () List!74420)

(declare-fun input!1184 () List!74420)

(declare-fun ++!18187 (List!74420 List!74420) List!74420)

(assert (=> b!7907253 (= res!3138001 (= (++!18187 lt!2685469 (_2!38458 lt!2685470)) input!1184))))

(declare-fun b!7907254 () Bool)

(declare-fun tp_is_empty!53047 () Bool)

(declare-fun tp!2355636 () Bool)

(assert (=> b!7907254 (= e!4667602 (and tp_is_empty!53047 tp!2355636))))

(declare-fun b!7907255 () Bool)

(declare-fun e!4667609 () Bool)

(declare-fun e!4667603 () Bool)

(assert (=> b!7907255 (= e!4667609 e!4667603)))

(declare-fun res!3137996 () Bool)

(assert (=> b!7907255 (=> (not res!3137996) (not e!4667603))))

(declare-datatypes ((Option!17915 0))(
  ( (None!17914) (Some!17914 (v!55063 tuple2!70310)) )
))
(declare-fun lt!2685467 () Option!17915)

(declare-fun isDefined!14487 (Option!17915) Bool)

(assert (=> b!7907255 (= res!3137996 (isDefined!14487 lt!2685467))))

(declare-fun b!7907256 () Bool)

(assert (=> b!7907256 (= e!4667603 e!4667607)))

(declare-fun res!3138002 () Bool)

(assert (=> b!7907256 (=> (not res!3138002) (not e!4667607))))

(assert (=> b!7907256 (= res!3138002 (= lt!2685469 (originalCharacters!8874 (_1!38458 lt!2685470))))))

(declare-fun list!19273 (BalanceConc!30732) List!74420)

(declare-fun charsOf!5577 (Token!15686) BalanceConc!30732)

(assert (=> b!7907256 (= lt!2685469 (list!19273 (charsOf!5577 (_1!38458 lt!2685470))))))

(declare-fun get!26704 (Option!17915) tuple2!70310)

(assert (=> b!7907256 (= lt!2685470 (get!26704 lt!2685467))))

(declare-fun b!7907257 () Bool)

(declare-fun res!3138004 () Bool)

(assert (=> b!7907257 (=> (not res!3138004) (not e!4667607))))

(declare-fun matchR!10663 (Regex!21336 List!74420) Bool)

(assert (=> b!7907257 (= res!3138004 (matchR!10663 (regex!8633 (rule!11931 (_1!38458 lt!2685470))) lt!2685469))))

(declare-fun b!7907258 () Bool)

(declare-fun res!3138005 () Bool)

(assert (=> b!7907258 (=> res!3138005 e!4667609)))

(declare-fun isEmpty!42644 (Option!17915) Bool)

(assert (=> b!7907258 (= res!3138005 (isEmpty!42644 lt!2685467))))

(declare-fun b!7907259 () Bool)

(declare-fun res!3137997 () Bool)

(assert (=> b!7907259 (=> (not res!3137997) (not e!4667607))))

(declare-fun size!43072 (List!74420) Int)

(assert (=> b!7907259 (= res!3137997 (< (size!43072 (_2!38458 lt!2685470)) (size!43072 input!1184)))))

(declare-fun b!7907260 () Bool)

(declare-fun e!4667601 () Bool)

(assert (=> b!7907260 (= e!4667601 e!4667609)))

(declare-fun res!3137998 () Bool)

(assert (=> b!7907260 (=> res!3137998 e!4667609)))

(declare-fun lt!2685468 () Option!17915)

(assert (=> b!7907260 (= res!3137998 (or (and (is-None!17914 lt!2685468) (is-None!17914 lt!2685467)) (is-None!17914 lt!2685467) (not (is-None!17914 lt!2685468))))))

(declare-fun maxPrefix!4750 (LexerInterface!8225 List!74421 List!74420) Option!17915)

(assert (=> b!7907260 (= lt!2685467 (maxPrefix!4750 thiss!14377 (t!389690 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3801 (LexerInterface!8225 Rule!17066 List!74420) Option!17915)

(assert (=> b!7907260 (= lt!2685468 (maxPrefixOneRule!3801 thiss!14377 (h!80745 rulesArg!141) input!1184))))

(assert (=> b!7907261 (= e!4667606 (and tp!2355635 tp!2355639))))

(declare-fun b!7907262 () Bool)

(declare-fun tp!2355637 () Bool)

(assert (=> b!7907262 (= e!4667604 (and e!4667608 tp!2355637))))

(declare-fun b!7907263 () Bool)

(assert (=> b!7907263 (= e!4667605 (not e!4667601))))

(declare-fun res!3138003 () Bool)

(assert (=> b!7907263 (=> res!3138003 e!4667601)))

(assert (=> b!7907263 (= res!3138003 (or (and (is-Cons!74297 rulesArg!141) (is-Nil!74297 (t!389690 rulesArg!141))) (not (is-Cons!74297 rulesArg!141))))))

(declare-fun isPrefix!6466 (List!74420 List!74420) Bool)

(assert (=> b!7907263 (isPrefix!6466 input!1184 input!1184)))

(declare-datatypes ((Unit!169338 0))(
  ( (Unit!169339) )
))
(declare-fun lt!2685471 () Unit!169338)

(declare-fun lemmaIsPrefixRefl!3977 (List!74420 List!74420) Unit!169338)

(assert (=> b!7907263 (= lt!2685471 (lemmaIsPrefixRefl!3977 input!1184 input!1184))))

(declare-fun b!7907264 () Bool)

(declare-fun res!3137995 () Bool)

(assert (=> b!7907264 (=> (not res!3137995) (not e!4667605))))

(declare-fun isEmpty!42645 (List!74421) Bool)

(assert (=> b!7907264 (= res!3137995 (not (isEmpty!42645 rulesArg!141)))))

(assert (= (and start!746154 res!3137999) b!7907249))

(assert (= (and b!7907249 res!3137994) b!7907264))

(assert (= (and b!7907264 res!3137995) b!7907263))

(assert (= (and b!7907263 (not res!3138003)) b!7907260))

(assert (= (and b!7907260 (not res!3137998)) b!7907258))

(assert (= (and b!7907258 (not res!3138005)) b!7907255))

(assert (= (and b!7907255 res!3137996) b!7907256))

(assert (= (and b!7907256 res!3138002) b!7907259))

(assert (= (and b!7907259 res!3137997) b!7907253))

(assert (= (and b!7907253 res!3138001) b!7907250))

(assert (= (and b!7907250 res!3138000) b!7907257))

(assert (= (and b!7907257 res!3138004) b!7907251))

(assert (= b!7907252 b!7907261))

(assert (= b!7907262 b!7907252))

(assert (= (and start!746154 (is-Cons!74297 rulesArg!141)) b!7907262))

(assert (= (and start!746154 (is-Cons!74296 input!1184)) b!7907254))

(declare-fun m!8281348 () Bool)

(assert (=> b!7907256 m!8281348))

(assert (=> b!7907256 m!8281348))

(declare-fun m!8281350 () Bool)

(assert (=> b!7907256 m!8281350))

(declare-fun m!8281352 () Bool)

(assert (=> b!7907256 m!8281352))

(declare-fun m!8281354 () Bool)

(assert (=> b!7907250 m!8281354))

(assert (=> b!7907250 m!8281354))

(declare-fun m!8281356 () Bool)

(assert (=> b!7907250 m!8281356))

(declare-fun m!8281358 () Bool)

(assert (=> b!7907249 m!8281358))

(declare-fun m!8281360 () Bool)

(assert (=> b!7907252 m!8281360))

(declare-fun m!8281362 () Bool)

(assert (=> b!7907252 m!8281362))

(declare-fun m!8281364 () Bool)

(assert (=> b!7907260 m!8281364))

(declare-fun m!8281366 () Bool)

(assert (=> b!7907260 m!8281366))

(declare-fun m!8281368 () Bool)

(assert (=> b!7907251 m!8281368))

(declare-fun m!8281370 () Bool)

(assert (=> b!7907257 m!8281370))

(declare-fun m!8281372 () Bool)

(assert (=> b!7907264 m!8281372))

(declare-fun m!8281374 () Bool)

(assert (=> b!7907258 m!8281374))

(declare-fun m!8281376 () Bool)

(assert (=> b!7907259 m!8281376))

(declare-fun m!8281378 () Bool)

(assert (=> b!7907259 m!8281378))

(declare-fun m!8281380 () Bool)

(assert (=> b!7907263 m!8281380))

(declare-fun m!8281382 () Bool)

(assert (=> b!7907263 m!8281382))

(declare-fun m!8281384 () Bool)

(assert (=> b!7907253 m!8281384))

(declare-fun m!8281386 () Bool)

(assert (=> b!7907255 m!8281386))

(push 1)

(assert (not b!7907258))

(assert (not b!7907252))

(assert (not b!7907254))

(assert (not b!7907250))

(assert (not b!7907256))

(assert (not b!7907257))

(assert b_and!353231)

(assert (not b!7907255))

(assert (not b!7907262))

(assert (not b!7907253))

(assert (not b!7907249))

(assert (not b!7907251))

(assert tp_is_empty!53047)

(assert (not b_next!135827))

(assert b_and!353233)

(assert (not b!7907264))

(assert (not b_next!135825))

(assert (not b!7907259))

(assert (not b!7907263))

(assert (not b!7907260))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353233)

(assert b_and!353231)

(assert (not b_next!135827))

(assert (not b_next!135825))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2359537 () Bool)

(declare-fun lt!2685489 () Bool)

(declare-fun content!15730 (List!74421) (Set Rule!17066))

(assert (=> d!2359537 (= lt!2685489 (set.member (rule!11931 (_1!38458 lt!2685470)) (content!15730 rulesArg!141)))))

(declare-fun e!4667645 () Bool)

(assert (=> d!2359537 (= lt!2685489 e!4667645)))

(declare-fun res!3138056 () Bool)

(assert (=> d!2359537 (=> (not res!3138056) (not e!4667645))))

(assert (=> d!2359537 (= res!3138056 (is-Cons!74297 rulesArg!141))))

(assert (=> d!2359537 (= (contains!20897 rulesArg!141 (rule!11931 (_1!38458 lt!2685470))) lt!2685489)))

(declare-fun b!7907317 () Bool)

(declare-fun e!4667646 () Bool)

(assert (=> b!7907317 (= e!4667645 e!4667646)))

(declare-fun res!3138057 () Bool)

(assert (=> b!7907317 (=> res!3138057 e!4667646)))

(assert (=> b!7907317 (= res!3138057 (= (h!80745 rulesArg!141) (rule!11931 (_1!38458 lt!2685470))))))

(declare-fun b!7907318 () Bool)

(assert (=> b!7907318 (= e!4667646 (contains!20897 (t!389690 rulesArg!141) (rule!11931 (_1!38458 lt!2685470))))))

(assert (= (and d!2359537 res!3138056) b!7907317))

(assert (= (and b!7907317 (not res!3138057)) b!7907318))

(declare-fun m!8281428 () Bool)

(assert (=> d!2359537 m!8281428))

(declare-fun m!8281430 () Bool)

(assert (=> d!2359537 m!8281430))

(declare-fun m!8281432 () Bool)

(assert (=> b!7907318 m!8281432))

(assert (=> b!7907251 d!2359537))

(declare-fun b!7907329 () Bool)

(declare-fun e!4667655 () Bool)

(declare-fun tail!15699 (List!74420) List!74420)

(assert (=> b!7907329 (= e!4667655 (isPrefix!6466 (tail!15699 input!1184) (tail!15699 input!1184)))))

(declare-fun b!7907330 () Bool)

(declare-fun e!4667654 () Bool)

(assert (=> b!7907330 (= e!4667654 (>= (size!43072 input!1184) (size!43072 input!1184)))))

(declare-fun d!2359539 () Bool)

(assert (=> d!2359539 e!4667654))

(declare-fun res!3138070 () Bool)

(assert (=> d!2359539 (=> res!3138070 e!4667654)))

(declare-fun lt!2685492 () Bool)

(assert (=> d!2359539 (= res!3138070 (not lt!2685492))))

(declare-fun e!4667653 () Bool)

(assert (=> d!2359539 (= lt!2685492 e!4667653)))

(declare-fun res!3138069 () Bool)

(assert (=> d!2359539 (=> res!3138069 e!4667653)))

(assert (=> d!2359539 (= res!3138069 (is-Nil!74296 input!1184))))

(assert (=> d!2359539 (= (isPrefix!6466 input!1184 input!1184) lt!2685492)))

(declare-fun b!7907327 () Bool)

(assert (=> b!7907327 (= e!4667653 e!4667655)))

(declare-fun res!3138068 () Bool)

(assert (=> b!7907327 (=> (not res!3138068) (not e!4667655))))

(assert (=> b!7907327 (= res!3138068 (not (is-Nil!74296 input!1184)))))

(declare-fun b!7907328 () Bool)

(declare-fun res!3138067 () Bool)

(assert (=> b!7907328 (=> (not res!3138067) (not e!4667655))))

(declare-fun head!16156 (List!74420) C!43002)

(assert (=> b!7907328 (= res!3138067 (= (head!16156 input!1184) (head!16156 input!1184)))))

(assert (= (and d!2359539 (not res!3138069)) b!7907327))

(assert (= (and b!7907327 res!3138068) b!7907328))

(assert (= (and b!7907328 res!3138067) b!7907329))

(assert (= (and d!2359539 (not res!3138070)) b!7907330))

(declare-fun m!8281434 () Bool)

(assert (=> b!7907329 m!8281434))

(assert (=> b!7907329 m!8281434))

(assert (=> b!7907329 m!8281434))

(assert (=> b!7907329 m!8281434))

(declare-fun m!8281436 () Bool)

(assert (=> b!7907329 m!8281436))

(assert (=> b!7907330 m!8281378))

(assert (=> b!7907330 m!8281378))

(declare-fun m!8281438 () Bool)

(assert (=> b!7907328 m!8281438))

(assert (=> b!7907328 m!8281438))

(assert (=> b!7907263 d!2359539))

(declare-fun d!2359541 () Bool)

(assert (=> d!2359541 (isPrefix!6466 input!1184 input!1184)))

(declare-fun lt!2685495 () Unit!169338)

(declare-fun choose!59731 (List!74420 List!74420) Unit!169338)

(assert (=> d!2359541 (= lt!2685495 (choose!59731 input!1184 input!1184))))

(assert (=> d!2359541 (= (lemmaIsPrefixRefl!3977 input!1184 input!1184) lt!2685495)))

(declare-fun bs!1968152 () Bool)

(assert (= bs!1968152 d!2359541))

(assert (=> bs!1968152 m!8281380))

(declare-fun m!8281440 () Bool)

(assert (=> bs!1968152 m!8281440))

(assert (=> b!7907263 d!2359541))

(declare-fun d!2359543 () Bool)

(assert (=> d!2359543 (= (inv!95307 (tag!9497 (h!80745 rulesArg!141))) (= (mod (str.len (value!288022 (tag!9497 (h!80745 rulesArg!141)))) 2) 0))))

(assert (=> b!7907252 d!2359543))

(declare-fun d!2359545 () Bool)

(declare-fun res!3138073 () Bool)

(declare-fun e!4667658 () Bool)

(assert (=> d!2359545 (=> (not res!3138073) (not e!4667658))))

(declare-fun semiInverseModEq!3824 (Int Int) Bool)

(assert (=> d!2359545 (= res!3138073 (semiInverseModEq!3824 (toChars!11549 (transformation!8633 (h!80745 rulesArg!141))) (toValue!11690 (transformation!8633 (h!80745 rulesArg!141)))))))

(assert (=> d!2359545 (= (inv!95310 (transformation!8633 (h!80745 rulesArg!141))) e!4667658)))

(declare-fun b!7907333 () Bool)

(declare-fun equivClasses!3639 (Int Int) Bool)

(assert (=> b!7907333 (= e!4667658 (equivClasses!3639 (toChars!11549 (transformation!8633 (h!80745 rulesArg!141))) (toValue!11690 (transformation!8633 (h!80745 rulesArg!141)))))))

(assert (= (and d!2359545 res!3138073) b!7907333))

(declare-fun m!8281442 () Bool)

(assert (=> d!2359545 m!8281442))

(declare-fun m!8281444 () Bool)

(assert (=> b!7907333 m!8281444))

(assert (=> b!7907252 d!2359545))

(declare-fun d!2359547 () Bool)

(declare-fun lt!2685498 () Int)

(assert (=> d!2359547 (>= lt!2685498 0)))

(declare-fun e!4667661 () Int)

(assert (=> d!2359547 (= lt!2685498 e!4667661)))

(declare-fun c!1450839 () Bool)

(assert (=> d!2359547 (= c!1450839 (is-Nil!74296 (_2!38458 lt!2685470)))))

(assert (=> d!2359547 (= (size!43072 (_2!38458 lt!2685470)) lt!2685498)))

(declare-fun b!7907338 () Bool)

(assert (=> b!7907338 (= e!4667661 0)))

(declare-fun b!7907339 () Bool)

(assert (=> b!7907339 (= e!4667661 (+ 1 (size!43072 (t!389689 (_2!38458 lt!2685470)))))))

(assert (= (and d!2359547 c!1450839) b!7907338))

(assert (= (and d!2359547 (not c!1450839)) b!7907339))

(declare-fun m!8281446 () Bool)

(assert (=> b!7907339 m!8281446))

(assert (=> b!7907259 d!2359547))

(declare-fun d!2359549 () Bool)

(declare-fun lt!2685499 () Int)

(assert (=> d!2359549 (>= lt!2685499 0)))

(declare-fun e!4667662 () Int)

(assert (=> d!2359549 (= lt!2685499 e!4667662)))

(declare-fun c!1450840 () Bool)

(assert (=> d!2359549 (= c!1450840 (is-Nil!74296 input!1184))))

(assert (=> d!2359549 (= (size!43072 input!1184) lt!2685499)))

(declare-fun b!7907340 () Bool)

(assert (=> b!7907340 (= e!4667662 0)))

(declare-fun b!7907341 () Bool)

(assert (=> b!7907341 (= e!4667662 (+ 1 (size!43072 (t!389689 input!1184))))))

(assert (= (and d!2359549 c!1450840) b!7907340))

(assert (= (and d!2359549 (not c!1450840)) b!7907341))

(declare-fun m!8281448 () Bool)

(assert (=> b!7907341 m!8281448))

(assert (=> b!7907259 d!2359549))

(declare-fun d!2359551 () Bool)

(declare-fun dynLambda!30092 (Int BalanceConc!30732) TokenValue!8949)

(assert (=> d!2359551 (= (apply!14356 (transformation!8633 (rule!11931 (_1!38458 lt!2685470))) (seqFromList!6174 (originalCharacters!8874 (_1!38458 lt!2685470)))) (dynLambda!30092 (toValue!11690 (transformation!8633 (rule!11931 (_1!38458 lt!2685470)))) (seqFromList!6174 (originalCharacters!8874 (_1!38458 lt!2685470)))))))

(declare-fun b_lambda!289891 () Bool)

(assert (=> (not b_lambda!289891) (not d!2359551)))

(declare-fun t!389695 () Bool)

(declare-fun tb!263107 () Bool)

(assert (=> (and b!7907261 (= (toValue!11690 (transformation!8633 (h!80745 rulesArg!141))) (toValue!11690 (transformation!8633 (rule!11931 (_1!38458 lt!2685470))))) t!389695) tb!263107))

(declare-fun result!360290 () Bool)

(declare-fun inv!21 (TokenValue!8949) Bool)

(assert (=> tb!263107 (= result!360290 (inv!21 (dynLambda!30092 (toValue!11690 (transformation!8633 (rule!11931 (_1!38458 lt!2685470)))) (seqFromList!6174 (originalCharacters!8874 (_1!38458 lt!2685470))))))))

(declare-fun m!8281450 () Bool)

(assert (=> tb!263107 m!8281450))

(assert (=> d!2359551 t!389695))

(declare-fun b_and!353239 () Bool)

(assert (= b_and!353231 (and (=> t!389695 result!360290) b_and!353239)))

(assert (=> d!2359551 m!8281354))

(declare-fun m!8281452 () Bool)

(assert (=> d!2359551 m!8281452))

(assert (=> b!7907250 d!2359551))

(declare-fun d!2359553 () Bool)

(declare-fun fromListB!2784 (List!74420) BalanceConc!30732)

(assert (=> d!2359553 (= (seqFromList!6174 (originalCharacters!8874 (_1!38458 lt!2685470))) (fromListB!2784 (originalCharacters!8874 (_1!38458 lt!2685470))))))

(declare-fun bs!1968153 () Bool)

(assert (= bs!1968153 d!2359553))

(declare-fun m!8281454 () Bool)

(assert (=> bs!1968153 m!8281454))

(assert (=> b!7907250 d!2359553))

(declare-fun b!7907362 () Bool)

(declare-fun res!3138094 () Bool)

(declare-fun e!4667674 () Bool)

(assert (=> b!7907362 (=> (not res!3138094) (not e!4667674))))

(declare-fun lt!2685514 () Option!17915)

(assert (=> b!7907362 (= res!3138094 (= (++!18187 (list!19273 (charsOf!5577 (_1!38458 (get!26704 lt!2685514)))) (_2!38458 (get!26704 lt!2685514))) input!1184))))

(declare-fun b!7907363 () Bool)

(declare-fun e!4667673 () Bool)

(assert (=> b!7907363 (= e!4667673 e!4667674)))

(declare-fun res!3138089 () Bool)

(assert (=> b!7907363 (=> (not res!3138089) (not e!4667674))))

(assert (=> b!7907363 (= res!3138089 (isDefined!14487 lt!2685514))))

(declare-fun b!7907364 () Bool)

(declare-fun e!4667672 () Option!17915)

(declare-fun call!733465 () Option!17915)

(assert (=> b!7907364 (= e!4667672 call!733465)))

(declare-fun d!2359557 () Bool)

(assert (=> d!2359557 e!4667673))

(declare-fun res!3138088 () Bool)

(assert (=> d!2359557 (=> res!3138088 e!4667673)))

(assert (=> d!2359557 (= res!3138088 (isEmpty!42644 lt!2685514))))

(assert (=> d!2359557 (= lt!2685514 e!4667672)))

(declare-fun c!1450843 () Bool)

(assert (=> d!2359557 (= c!1450843 (and (is-Cons!74297 (t!389690 rulesArg!141)) (is-Nil!74297 (t!389690 (t!389690 rulesArg!141)))))))

(declare-fun lt!2685513 () Unit!169338)

(declare-fun lt!2685510 () Unit!169338)

(assert (=> d!2359557 (= lt!2685513 lt!2685510)))

(assert (=> d!2359557 (isPrefix!6466 input!1184 input!1184)))

(assert (=> d!2359557 (= lt!2685510 (lemmaIsPrefixRefl!3977 input!1184 input!1184))))

(assert (=> d!2359557 (rulesValidInductive!3444 thiss!14377 (t!389690 rulesArg!141))))

(assert (=> d!2359557 (= (maxPrefix!4750 thiss!14377 (t!389690 rulesArg!141) input!1184) lt!2685514)))

(declare-fun bm!733460 () Bool)

(assert (=> bm!733460 (= call!733465 (maxPrefixOneRule!3801 thiss!14377 (h!80745 (t!389690 rulesArg!141)) input!1184))))

(declare-fun b!7907365 () Bool)

(declare-fun res!3138093 () Bool)

(assert (=> b!7907365 (=> (not res!3138093) (not e!4667674))))

(assert (=> b!7907365 (= res!3138093 (< (size!43072 (_2!38458 (get!26704 lt!2685514))) (size!43072 input!1184)))))

(declare-fun b!7907366 () Bool)

(declare-fun res!3138090 () Bool)

(assert (=> b!7907366 (=> (not res!3138090) (not e!4667674))))

(assert (=> b!7907366 (= res!3138090 (= (value!288023 (_1!38458 (get!26704 lt!2685514))) (apply!14356 (transformation!8633 (rule!11931 (_1!38458 (get!26704 lt!2685514)))) (seqFromList!6174 (originalCharacters!8874 (_1!38458 (get!26704 lt!2685514)))))))))

(declare-fun b!7907367 () Bool)

(declare-fun res!3138092 () Bool)

(assert (=> b!7907367 (=> (not res!3138092) (not e!4667674))))

(assert (=> b!7907367 (= res!3138092 (= (list!19273 (charsOf!5577 (_1!38458 (get!26704 lt!2685514)))) (originalCharacters!8874 (_1!38458 (get!26704 lt!2685514)))))))

(declare-fun b!7907368 () Bool)

(declare-fun res!3138091 () Bool)

(assert (=> b!7907368 (=> (not res!3138091) (not e!4667674))))

(assert (=> b!7907368 (= res!3138091 (matchR!10663 (regex!8633 (rule!11931 (_1!38458 (get!26704 lt!2685514)))) (list!19273 (charsOf!5577 (_1!38458 (get!26704 lt!2685514))))))))

(declare-fun b!7907369 () Bool)

(declare-fun lt!2685512 () Option!17915)

(declare-fun lt!2685511 () Option!17915)

(assert (=> b!7907369 (= e!4667672 (ite (and (is-None!17914 lt!2685512) (is-None!17914 lt!2685511)) None!17914 (ite (is-None!17914 lt!2685511) lt!2685512 (ite (is-None!17914 lt!2685512) lt!2685511 (ite (>= (size!43071 (_1!38458 (v!55063 lt!2685512))) (size!43071 (_1!38458 (v!55063 lt!2685511)))) lt!2685512 lt!2685511)))))))

(assert (=> b!7907369 (= lt!2685512 call!733465)))

(assert (=> b!7907369 (= lt!2685511 (maxPrefix!4750 thiss!14377 (t!389690 (t!389690 rulesArg!141)) input!1184))))

(declare-fun b!7907370 () Bool)

(assert (=> b!7907370 (= e!4667674 (contains!20897 (t!389690 rulesArg!141) (rule!11931 (_1!38458 (get!26704 lt!2685514)))))))

(assert (= (and d!2359557 c!1450843) b!7907364))

(assert (= (and d!2359557 (not c!1450843)) b!7907369))

(assert (= (or b!7907364 b!7907369) bm!733460))

(assert (= (and d!2359557 (not res!3138088)) b!7907363))

(assert (= (and b!7907363 res!3138089) b!7907367))

(assert (= (and b!7907367 res!3138092) b!7907365))

(assert (= (and b!7907365 res!3138093) b!7907362))

(assert (= (and b!7907362 res!3138094) b!7907366))

(assert (= (and b!7907366 res!3138090) b!7907368))

(assert (= (and b!7907368 res!3138091) b!7907370))

(declare-fun m!8281456 () Bool)

(assert (=> b!7907369 m!8281456))

(declare-fun m!8281458 () Bool)

(assert (=> d!2359557 m!8281458))

(assert (=> d!2359557 m!8281380))

(assert (=> d!2359557 m!8281382))

(declare-fun m!8281460 () Bool)

(assert (=> d!2359557 m!8281460))

(declare-fun m!8281462 () Bool)

(assert (=> bm!733460 m!8281462))

(declare-fun m!8281464 () Bool)

(assert (=> b!7907363 m!8281464))

(declare-fun m!8281466 () Bool)

(assert (=> b!7907370 m!8281466))

(declare-fun m!8281468 () Bool)

(assert (=> b!7907370 m!8281468))

(assert (=> b!7907366 m!8281466))

(declare-fun m!8281470 () Bool)

(assert (=> b!7907366 m!8281470))

(assert (=> b!7907366 m!8281470))

(declare-fun m!8281472 () Bool)

(assert (=> b!7907366 m!8281472))

(assert (=> b!7907362 m!8281466))

(declare-fun m!8281474 () Bool)

(assert (=> b!7907362 m!8281474))

(assert (=> b!7907362 m!8281474))

(declare-fun m!8281476 () Bool)

(assert (=> b!7907362 m!8281476))

(assert (=> b!7907362 m!8281476))

(declare-fun m!8281478 () Bool)

(assert (=> b!7907362 m!8281478))

(assert (=> b!7907367 m!8281466))

(assert (=> b!7907367 m!8281474))

(assert (=> b!7907367 m!8281474))

(assert (=> b!7907367 m!8281476))

(assert (=> b!7907365 m!8281466))

(declare-fun m!8281480 () Bool)

(assert (=> b!7907365 m!8281480))

(assert (=> b!7907365 m!8281378))

(assert (=> b!7907368 m!8281466))

(assert (=> b!7907368 m!8281474))

(assert (=> b!7907368 m!8281474))

(assert (=> b!7907368 m!8281476))

(assert (=> b!7907368 m!8281476))

(declare-fun m!8281482 () Bool)

(assert (=> b!7907368 m!8281482))

(assert (=> b!7907260 d!2359557))

(declare-fun b!7907417 () Bool)

(declare-fun e!4667694 () Bool)

(declare-datatypes ((tuple2!70314 0))(
  ( (tuple2!70315 (_1!38460 List!74420) (_2!38460 List!74420)) )
))
(declare-fun findLongestMatchInner!2161 (Regex!21336 List!74420 Int List!74420 List!74420 Int) tuple2!70314)

(assert (=> b!7907417 (= e!4667694 (matchR!10663 (regex!8633 (h!80745 rulesArg!141)) (_1!38460 (findLongestMatchInner!2161 (regex!8633 (h!80745 rulesArg!141)) Nil!74296 (size!43072 Nil!74296) input!1184 input!1184 (size!43072 input!1184)))))))

(declare-fun b!7907418 () Bool)

(declare-fun e!4667695 () Option!17915)

(assert (=> b!7907418 (= e!4667695 None!17914)))

(declare-fun b!7907419 () Bool)

(declare-fun res!3138131 () Bool)

(declare-fun e!4667692 () Bool)

(assert (=> b!7907419 (=> (not res!3138131) (not e!4667692))))

(declare-fun lt!2685543 () Option!17915)

(assert (=> b!7907419 (= res!3138131 (< (size!43072 (_2!38458 (get!26704 lt!2685543))) (size!43072 input!1184)))))

(declare-fun b!7907420 () Bool)

(declare-fun e!4667693 () Bool)

(assert (=> b!7907420 (= e!4667693 e!4667692)))

(declare-fun res!3138130 () Bool)

(assert (=> b!7907420 (=> (not res!3138130) (not e!4667692))))

(assert (=> b!7907420 (= res!3138130 (matchR!10663 (regex!8633 (h!80745 rulesArg!141)) (list!19273 (charsOf!5577 (_1!38458 (get!26704 lt!2685543))))))))

(declare-fun b!7907421 () Bool)

(declare-fun res!3138132 () Bool)

(assert (=> b!7907421 (=> (not res!3138132) (not e!4667692))))

(assert (=> b!7907421 (= res!3138132 (= (value!288023 (_1!38458 (get!26704 lt!2685543))) (apply!14356 (transformation!8633 (rule!11931 (_1!38458 (get!26704 lt!2685543)))) (seqFromList!6174 (originalCharacters!8874 (_1!38458 (get!26704 lt!2685543)))))))))

(declare-fun b!7907422 () Bool)

(declare-fun res!3138133 () Bool)

(assert (=> b!7907422 (=> (not res!3138133) (not e!4667692))))

(assert (=> b!7907422 (= res!3138133 (= (rule!11931 (_1!38458 (get!26704 lt!2685543))) (h!80745 rulesArg!141)))))

(declare-fun d!2359559 () Bool)

(assert (=> d!2359559 e!4667693))

(declare-fun res!3138134 () Bool)

(assert (=> d!2359559 (=> res!3138134 e!4667693)))

(assert (=> d!2359559 (= res!3138134 (isEmpty!42644 lt!2685543))))

(assert (=> d!2359559 (= lt!2685543 e!4667695)))

(declare-fun c!1450849 () Bool)

(declare-fun lt!2685542 () tuple2!70314)

(declare-fun isEmpty!42648 (List!74420) Bool)

(assert (=> d!2359559 (= c!1450849 (isEmpty!42648 (_1!38460 lt!2685542)))))

(declare-fun findLongestMatch!1928 (Regex!21336 List!74420) tuple2!70314)

(assert (=> d!2359559 (= lt!2685542 (findLongestMatch!1928 (regex!8633 (h!80745 rulesArg!141)) input!1184))))

(declare-fun ruleValid!3944 (LexerInterface!8225 Rule!17066) Bool)

(assert (=> d!2359559 (ruleValid!3944 thiss!14377 (h!80745 rulesArg!141))))

(assert (=> d!2359559 (= (maxPrefixOneRule!3801 thiss!14377 (h!80745 rulesArg!141) input!1184) lt!2685543)))

(declare-fun b!7907416 () Bool)

(assert (=> b!7907416 (= e!4667692 (= (size!43071 (_1!38458 (get!26704 lt!2685543))) (size!43072 (originalCharacters!8874 (_1!38458 (get!26704 lt!2685543))))))))

(declare-fun b!7907423 () Bool)

(declare-fun res!3138135 () Bool)

(assert (=> b!7907423 (=> (not res!3138135) (not e!4667692))))

(assert (=> b!7907423 (= res!3138135 (= (++!18187 (list!19273 (charsOf!5577 (_1!38458 (get!26704 lt!2685543)))) (_2!38458 (get!26704 lt!2685543))) input!1184))))

(declare-fun b!7907424 () Bool)

(declare-fun size!43075 (BalanceConc!30732) Int)

(assert (=> b!7907424 (= e!4667695 (Some!17914 (tuple2!70311 (Token!15687 (apply!14356 (transformation!8633 (h!80745 rulesArg!141)) (seqFromList!6174 (_1!38460 lt!2685542))) (h!80745 rulesArg!141) (size!43075 (seqFromList!6174 (_1!38460 lt!2685542))) (_1!38460 lt!2685542)) (_2!38460 lt!2685542))))))

(declare-fun lt!2685540 () Unit!169338)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2124 (Regex!21336 List!74420) Unit!169338)

(assert (=> b!7907424 (= lt!2685540 (longestMatchIsAcceptedByMatchOrIsEmpty!2124 (regex!8633 (h!80745 rulesArg!141)) input!1184))))

(declare-fun res!3138136 () Bool)

(assert (=> b!7907424 (= res!3138136 (isEmpty!42648 (_1!38460 (findLongestMatchInner!2161 (regex!8633 (h!80745 rulesArg!141)) Nil!74296 (size!43072 Nil!74296) input!1184 input!1184 (size!43072 input!1184)))))))

(assert (=> b!7907424 (=> res!3138136 e!4667694)))

(assert (=> b!7907424 e!4667694))

(declare-fun lt!2685544 () Unit!169338)

(assert (=> b!7907424 (= lt!2685544 lt!2685540)))

(declare-fun lt!2685541 () Unit!169338)

(declare-fun lemmaSemiInverse!2671 (TokenValueInjection!17206 BalanceConc!30732) Unit!169338)

(assert (=> b!7907424 (= lt!2685541 (lemmaSemiInverse!2671 (transformation!8633 (h!80745 rulesArg!141)) (seqFromList!6174 (_1!38460 lt!2685542))))))

(assert (= (and d!2359559 c!1450849) b!7907418))

(assert (= (and d!2359559 (not c!1450849)) b!7907424))

(assert (= (and b!7907424 (not res!3138136)) b!7907417))

(assert (= (and d!2359559 (not res!3138134)) b!7907420))

(assert (= (and b!7907420 res!3138130) b!7907423))

(assert (= (and b!7907423 res!3138135) b!7907419))

(assert (= (and b!7907419 res!3138131) b!7907422))

(assert (= (and b!7907422 res!3138133) b!7907421))

(assert (= (and b!7907421 res!3138132) b!7907416))

(declare-fun m!8281512 () Bool)

(assert (=> b!7907423 m!8281512))

(declare-fun m!8281514 () Bool)

(assert (=> b!7907423 m!8281514))

(assert (=> b!7907423 m!8281514))

(declare-fun m!8281516 () Bool)

(assert (=> b!7907423 m!8281516))

(assert (=> b!7907423 m!8281516))

(declare-fun m!8281518 () Bool)

(assert (=> b!7907423 m!8281518))

(assert (=> b!7907419 m!8281512))

(declare-fun m!8281520 () Bool)

(assert (=> b!7907419 m!8281520))

(assert (=> b!7907419 m!8281378))

(declare-fun m!8281522 () Bool)

(assert (=> b!7907417 m!8281522))

(assert (=> b!7907417 m!8281378))

(assert (=> b!7907417 m!8281522))

(assert (=> b!7907417 m!8281378))

(declare-fun m!8281524 () Bool)

(assert (=> b!7907417 m!8281524))

(declare-fun m!8281526 () Bool)

(assert (=> b!7907417 m!8281526))

(assert (=> b!7907416 m!8281512))

(declare-fun m!8281528 () Bool)

(assert (=> b!7907416 m!8281528))

(assert (=> b!7907424 m!8281378))

(declare-fun m!8281530 () Bool)

(assert (=> b!7907424 m!8281530))

(declare-fun m!8281532 () Bool)

(assert (=> b!7907424 m!8281532))

(assert (=> b!7907424 m!8281522))

(assert (=> b!7907424 m!8281522))

(assert (=> b!7907424 m!8281378))

(assert (=> b!7907424 m!8281524))

(assert (=> b!7907424 m!8281530))

(declare-fun m!8281534 () Bool)

(assert (=> b!7907424 m!8281534))

(assert (=> b!7907424 m!8281530))

(declare-fun m!8281536 () Bool)

(assert (=> b!7907424 m!8281536))

(declare-fun m!8281538 () Bool)

(assert (=> b!7907424 m!8281538))

(assert (=> b!7907424 m!8281530))

(declare-fun m!8281540 () Bool)

(assert (=> b!7907424 m!8281540))

(assert (=> b!7907420 m!8281512))

(assert (=> b!7907420 m!8281514))

(assert (=> b!7907420 m!8281514))

(assert (=> b!7907420 m!8281516))

(assert (=> b!7907420 m!8281516))

(declare-fun m!8281542 () Bool)

(assert (=> b!7907420 m!8281542))

(assert (=> b!7907421 m!8281512))

(declare-fun m!8281544 () Bool)

(assert (=> b!7907421 m!8281544))

(assert (=> b!7907421 m!8281544))

(declare-fun m!8281546 () Bool)

(assert (=> b!7907421 m!8281546))

(declare-fun m!8281548 () Bool)

(assert (=> d!2359559 m!8281548))

(declare-fun m!8281550 () Bool)

(assert (=> d!2359559 m!8281550))

(declare-fun m!8281552 () Bool)

(assert (=> d!2359559 m!8281552))

(declare-fun m!8281554 () Bool)

(assert (=> d!2359559 m!8281554))

(assert (=> b!7907422 m!8281512))

(assert (=> b!7907260 d!2359559))

(declare-fun d!2359563 () Bool)

(assert (=> d!2359563 true))

(declare-fun lt!2685571 () Bool)

(declare-fun lambda!472518 () Int)

(declare-fun forall!18453 (List!74421 Int) Bool)

(assert (=> d!2359563 (= lt!2685571 (forall!18453 rulesArg!141 lambda!472518))))

(declare-fun e!4667730 () Bool)

(assert (=> d!2359563 (= lt!2685571 e!4667730)))

(declare-fun res!3138175 () Bool)

(assert (=> d!2359563 (=> res!3138175 e!4667730)))

(assert (=> d!2359563 (= res!3138175 (not (is-Cons!74297 rulesArg!141)))))

(assert (=> d!2359563 (= (rulesValidInductive!3444 thiss!14377 rulesArg!141) lt!2685571)))

(declare-fun b!7907477 () Bool)

(declare-fun e!4667729 () Bool)

(assert (=> b!7907477 (= e!4667730 e!4667729)))

(declare-fun res!3138176 () Bool)

(assert (=> b!7907477 (=> (not res!3138176) (not e!4667729))))

(assert (=> b!7907477 (= res!3138176 (ruleValid!3944 thiss!14377 (h!80745 rulesArg!141)))))

(declare-fun b!7907478 () Bool)

(assert (=> b!7907478 (= e!4667729 (rulesValidInductive!3444 thiss!14377 (t!389690 rulesArg!141)))))

(assert (= (and d!2359563 (not res!3138175)) b!7907477))

(assert (= (and b!7907477 res!3138176) b!7907478))

(declare-fun m!8281614 () Bool)

(assert (=> d!2359563 m!8281614))

(assert (=> b!7907477 m!8281554))

(assert (=> b!7907478 m!8281460))

(assert (=> b!7907249 d!2359563))

(declare-fun d!2359577 () Bool)

(declare-fun list!19275 (Conc!15807) List!74420)

(assert (=> d!2359577 (= (list!19273 (charsOf!5577 (_1!38458 lt!2685470))) (list!19275 (c!1450832 (charsOf!5577 (_1!38458 lt!2685470)))))))

(declare-fun bs!1968154 () Bool)

(assert (= bs!1968154 d!2359577))

(declare-fun m!8281616 () Bool)

(assert (=> bs!1968154 m!8281616))

(assert (=> b!7907256 d!2359577))

(declare-fun d!2359579 () Bool)

(declare-fun lt!2685574 () BalanceConc!30732)

(assert (=> d!2359579 (= (list!19273 lt!2685574) (originalCharacters!8874 (_1!38458 lt!2685470)))))

(declare-fun dynLambda!30093 (Int TokenValue!8949) BalanceConc!30732)

(assert (=> d!2359579 (= lt!2685574 (dynLambda!30093 (toChars!11549 (transformation!8633 (rule!11931 (_1!38458 lt!2685470)))) (value!288023 (_1!38458 lt!2685470))))))

(assert (=> d!2359579 (= (charsOf!5577 (_1!38458 lt!2685470)) lt!2685574)))

(declare-fun b_lambda!289893 () Bool)

(assert (=> (not b_lambda!289893) (not d!2359579)))

(declare-fun t!389697 () Bool)

(declare-fun tb!263109 () Bool)

(assert (=> (and b!7907261 (= (toChars!11549 (transformation!8633 (h!80745 rulesArg!141))) (toChars!11549 (transformation!8633 (rule!11931 (_1!38458 lt!2685470))))) t!389697) tb!263109))

(declare-fun b!7907485 () Bool)

(declare-fun e!4667733 () Bool)

(declare-fun tp!2355657 () Bool)

(declare-fun inv!95312 (Conc!15807) Bool)

(assert (=> b!7907485 (= e!4667733 (and (inv!95312 (c!1450832 (dynLambda!30093 (toChars!11549 (transformation!8633 (rule!11931 (_1!38458 lt!2685470)))) (value!288023 (_1!38458 lt!2685470))))) tp!2355657))))

(declare-fun result!360294 () Bool)

(declare-fun inv!95313 (BalanceConc!30732) Bool)

(assert (=> tb!263109 (= result!360294 (and (inv!95313 (dynLambda!30093 (toChars!11549 (transformation!8633 (rule!11931 (_1!38458 lt!2685470)))) (value!288023 (_1!38458 lt!2685470)))) e!4667733))))

(assert (= tb!263109 b!7907485))

(declare-fun m!8281618 () Bool)

(assert (=> b!7907485 m!8281618))

(declare-fun m!8281620 () Bool)

(assert (=> tb!263109 m!8281620))

(assert (=> d!2359579 t!389697))

(declare-fun b_and!353241 () Bool)

(assert (= b_and!353233 (and (=> t!389697 result!360294) b_and!353241)))

(declare-fun m!8281622 () Bool)

(assert (=> d!2359579 m!8281622))

(declare-fun m!8281624 () Bool)

(assert (=> d!2359579 m!8281624))

(assert (=> b!7907256 d!2359579))

(declare-fun d!2359581 () Bool)

(assert (=> d!2359581 (= (get!26704 lt!2685467) (v!55063 lt!2685467))))

(assert (=> b!7907256 d!2359581))

(declare-fun d!2359583 () Bool)

(assert (=> d!2359583 (= (isEmpty!42644 lt!2685467) (not (is-Some!17914 lt!2685467)))))

(assert (=> b!7907258 d!2359583))

(declare-fun b!7907515 () Bool)

(declare-fun e!4667752 () Bool)

(declare-fun nullable!9493 (Regex!21336) Bool)

(assert (=> b!7907515 (= e!4667752 (nullable!9493 (regex!8633 (rule!11931 (_1!38458 lt!2685470)))))))

(declare-fun b!7907516 () Bool)

(declare-fun derivativeStep!6435 (Regex!21336 C!43002) Regex!21336)

(assert (=> b!7907516 (= e!4667752 (matchR!10663 (derivativeStep!6435 (regex!8633 (rule!11931 (_1!38458 lt!2685470))) (head!16156 lt!2685469)) (tail!15699 lt!2685469)))))

(declare-fun b!7907517 () Bool)

(declare-fun e!4667749 () Bool)

(declare-fun e!4667753 () Bool)

(assert (=> b!7907517 (= e!4667749 e!4667753)))

(declare-fun res!3138199 () Bool)

(assert (=> b!7907517 (=> res!3138199 e!4667753)))

(declare-fun call!733471 () Bool)

(assert (=> b!7907517 (= res!3138199 call!733471)))

(declare-fun bm!733466 () Bool)

(assert (=> bm!733466 (= call!733471 (isEmpty!42648 lt!2685469))))

(declare-fun b!7907518 () Bool)

(declare-fun e!4667750 () Bool)

(declare-fun lt!2685577 () Bool)

(assert (=> b!7907518 (= e!4667750 (not lt!2685577))))

(declare-fun b!7907519 () Bool)

(declare-fun res!3138196 () Bool)

(assert (=> b!7907519 (=> res!3138196 e!4667753)))

(assert (=> b!7907519 (= res!3138196 (not (isEmpty!42648 (tail!15699 lt!2685469))))))

(declare-fun b!7907520 () Bool)

(declare-fun res!3138193 () Bool)

(declare-fun e!4667751 () Bool)

(assert (=> b!7907520 (=> (not res!3138193) (not e!4667751))))

(assert (=> b!7907520 (= res!3138193 (isEmpty!42648 (tail!15699 lt!2685469)))))

(declare-fun b!7907514 () Bool)

(declare-fun res!3138194 () Bool)

(assert (=> b!7907514 (=> (not res!3138194) (not e!4667751))))

(assert (=> b!7907514 (= res!3138194 (not call!733471))))

(declare-fun d!2359585 () Bool)

(declare-fun e!4667748 () Bool)

(assert (=> d!2359585 e!4667748))

(declare-fun c!1450864 () Bool)

(assert (=> d!2359585 (= c!1450864 (is-EmptyExpr!21336 (regex!8633 (rule!11931 (_1!38458 lt!2685470)))))))

(assert (=> d!2359585 (= lt!2685577 e!4667752)))

(declare-fun c!1450863 () Bool)

(assert (=> d!2359585 (= c!1450863 (isEmpty!42648 lt!2685469))))

(declare-fun validRegex!11656 (Regex!21336) Bool)

(assert (=> d!2359585 (validRegex!11656 (regex!8633 (rule!11931 (_1!38458 lt!2685470))))))

(assert (=> d!2359585 (= (matchR!10663 (regex!8633 (rule!11931 (_1!38458 lt!2685470))) lt!2685469) lt!2685577)))

(declare-fun b!7907521 () Bool)

(assert (=> b!7907521 (= e!4667748 e!4667750)))

(declare-fun c!1450865 () Bool)

(assert (=> b!7907521 (= c!1450865 (is-EmptyLang!21336 (regex!8633 (rule!11931 (_1!38458 lt!2685470)))))))

(declare-fun b!7907522 () Bool)

(declare-fun e!4667754 () Bool)

(assert (=> b!7907522 (= e!4667754 e!4667749)))

(declare-fun res!3138197 () Bool)

(assert (=> b!7907522 (=> (not res!3138197) (not e!4667749))))

(assert (=> b!7907522 (= res!3138197 (not lt!2685577))))

(declare-fun b!7907523 () Bool)

(assert (=> b!7907523 (= e!4667751 (= (head!16156 lt!2685469) (c!1450833 (regex!8633 (rule!11931 (_1!38458 lt!2685470))))))))

(declare-fun b!7907524 () Bool)

(declare-fun res!3138195 () Bool)

(assert (=> b!7907524 (=> res!3138195 e!4667754)))

(assert (=> b!7907524 (= res!3138195 (not (is-ElementMatch!21336 (regex!8633 (rule!11931 (_1!38458 lt!2685470))))))))

(assert (=> b!7907524 (= e!4667750 e!4667754)))

(declare-fun b!7907525 () Bool)

(assert (=> b!7907525 (= e!4667753 (not (= (head!16156 lt!2685469) (c!1450833 (regex!8633 (rule!11931 (_1!38458 lt!2685470)))))))))

(declare-fun b!7907526 () Bool)

(declare-fun res!3138198 () Bool)

(assert (=> b!7907526 (=> res!3138198 e!4667754)))

(assert (=> b!7907526 (= res!3138198 e!4667751)))

(declare-fun res!3138200 () Bool)

(assert (=> b!7907526 (=> (not res!3138200) (not e!4667751))))

(assert (=> b!7907526 (= res!3138200 lt!2685577)))

(declare-fun b!7907527 () Bool)

(assert (=> b!7907527 (= e!4667748 (= lt!2685577 call!733471))))

(assert (= (and d!2359585 c!1450863) b!7907515))

(assert (= (and d!2359585 (not c!1450863)) b!7907516))

(assert (= (and d!2359585 c!1450864) b!7907527))

(assert (= (and d!2359585 (not c!1450864)) b!7907521))

(assert (= (and b!7907521 c!1450865) b!7907518))

(assert (= (and b!7907521 (not c!1450865)) b!7907524))

(assert (= (and b!7907524 (not res!3138195)) b!7907526))

(assert (= (and b!7907526 res!3138200) b!7907514))

(assert (= (and b!7907514 res!3138194) b!7907520))

(assert (= (and b!7907520 res!3138193) b!7907523))

(assert (= (and b!7907526 (not res!3138198)) b!7907522))

(assert (= (and b!7907522 res!3138197) b!7907517))

(assert (= (and b!7907517 (not res!3138199)) b!7907519))

(assert (= (and b!7907519 (not res!3138196)) b!7907525))

(assert (= (or b!7907527 b!7907514 b!7907517) bm!733466))

(declare-fun m!8281626 () Bool)

(assert (=> b!7907516 m!8281626))

(assert (=> b!7907516 m!8281626))

(declare-fun m!8281628 () Bool)

(assert (=> b!7907516 m!8281628))

(declare-fun m!8281630 () Bool)

(assert (=> b!7907516 m!8281630))

(assert (=> b!7907516 m!8281628))

(assert (=> b!7907516 m!8281630))

(declare-fun m!8281632 () Bool)

(assert (=> b!7907516 m!8281632))

(declare-fun m!8281634 () Bool)

(assert (=> bm!733466 m!8281634))

(assert (=> b!7907520 m!8281630))

(assert (=> b!7907520 m!8281630))

(declare-fun m!8281636 () Bool)

(assert (=> b!7907520 m!8281636))

(assert (=> b!7907519 m!8281630))

(assert (=> b!7907519 m!8281630))

(assert (=> b!7907519 m!8281636))

(assert (=> b!7907523 m!8281626))

(assert (=> b!7907525 m!8281626))

(assert (=> d!2359585 m!8281634))

(declare-fun m!8281638 () Bool)

(assert (=> d!2359585 m!8281638))

(declare-fun m!8281640 () Bool)

(assert (=> b!7907515 m!8281640))

(assert (=> b!7907257 d!2359585))

(declare-fun d!2359587 () Bool)

(assert (=> d!2359587 (= (isEmpty!42645 rulesArg!141) (is-Nil!74297 rulesArg!141))))

(assert (=> b!7907264 d!2359587))

(declare-fun b!7907537 () Bool)

(declare-fun e!4667760 () List!74420)

(assert (=> b!7907537 (= e!4667760 (Cons!74296 (h!80744 lt!2685469) (++!18187 (t!389689 lt!2685469) (_2!38458 lt!2685470))))))

(declare-fun b!7907538 () Bool)

(declare-fun res!3138205 () Bool)

(declare-fun e!4667759 () Bool)

(assert (=> b!7907538 (=> (not res!3138205) (not e!4667759))))

(declare-fun lt!2685580 () List!74420)

(assert (=> b!7907538 (= res!3138205 (= (size!43072 lt!2685580) (+ (size!43072 lt!2685469) (size!43072 (_2!38458 lt!2685470)))))))

(declare-fun b!7907539 () Bool)

(assert (=> b!7907539 (= e!4667759 (or (not (= (_2!38458 lt!2685470) Nil!74296)) (= lt!2685580 lt!2685469)))))

(declare-fun d!2359589 () Bool)

(assert (=> d!2359589 e!4667759))

(declare-fun res!3138206 () Bool)

(assert (=> d!2359589 (=> (not res!3138206) (not e!4667759))))

(declare-fun content!15731 (List!74420) (Set C!43002))

(assert (=> d!2359589 (= res!3138206 (= (content!15731 lt!2685580) (set.union (content!15731 lt!2685469) (content!15731 (_2!38458 lt!2685470)))))))

(assert (=> d!2359589 (= lt!2685580 e!4667760)))

(declare-fun c!1450868 () Bool)

(assert (=> d!2359589 (= c!1450868 (is-Nil!74296 lt!2685469))))

(assert (=> d!2359589 (= (++!18187 lt!2685469 (_2!38458 lt!2685470)) lt!2685580)))

(declare-fun b!7907536 () Bool)

(assert (=> b!7907536 (= e!4667760 (_2!38458 lt!2685470))))

(assert (= (and d!2359589 c!1450868) b!7907536))

(assert (= (and d!2359589 (not c!1450868)) b!7907537))

(assert (= (and d!2359589 res!3138206) b!7907538))

(assert (= (and b!7907538 res!3138205) b!7907539))

(declare-fun m!8281642 () Bool)

(assert (=> b!7907537 m!8281642))

(declare-fun m!8281644 () Bool)

(assert (=> b!7907538 m!8281644))

(declare-fun m!8281646 () Bool)

(assert (=> b!7907538 m!8281646))

(assert (=> b!7907538 m!8281376))

(declare-fun m!8281648 () Bool)

(assert (=> d!2359589 m!8281648))

(declare-fun m!8281650 () Bool)

(assert (=> d!2359589 m!8281650))

(declare-fun m!8281652 () Bool)

(assert (=> d!2359589 m!8281652))

(assert (=> b!7907253 d!2359589))

(declare-fun d!2359591 () Bool)

(assert (=> d!2359591 (= (isDefined!14487 lt!2685467) (not (isEmpty!42644 lt!2685467)))))

(declare-fun bs!1968155 () Bool)

(assert (= bs!1968155 d!2359591))

(assert (=> bs!1968155 m!8281374))

(assert (=> b!7907255 d!2359591))

(declare-fun b!7907550 () Bool)

(declare-fun b_free!135043 () Bool)

(declare-fun b_next!135833 () Bool)

(assert (=> b!7907550 (= b_free!135043 (not b_next!135833))))

(declare-fun t!389699 () Bool)

(declare-fun tb!263111 () Bool)

(assert (=> (and b!7907550 (= (toValue!11690 (transformation!8633 (h!80745 (t!389690 rulesArg!141)))) (toValue!11690 (transformation!8633 (rule!11931 (_1!38458 lt!2685470))))) t!389699) tb!263111))

(declare-fun result!360300 () Bool)

(assert (= result!360300 result!360290))

(assert (=> d!2359551 t!389699))

(declare-fun tp!2355666 () Bool)

(declare-fun b_and!353243 () Bool)

(assert (=> b!7907550 (= tp!2355666 (and (=> t!389699 result!360300) b_and!353243))))

(declare-fun b_free!135045 () Bool)

(declare-fun b_next!135835 () Bool)

(assert (=> b!7907550 (= b_free!135045 (not b_next!135835))))

(declare-fun t!389701 () Bool)

(declare-fun tb!263113 () Bool)

(assert (=> (and b!7907550 (= (toChars!11549 (transformation!8633 (h!80745 (t!389690 rulesArg!141)))) (toChars!11549 (transformation!8633 (rule!11931 (_1!38458 lt!2685470))))) t!389701) tb!263113))

(declare-fun result!360302 () Bool)

(assert (= result!360302 result!360294))

(assert (=> d!2359579 t!389701))

(declare-fun b_and!353245 () Bool)

(declare-fun tp!2355668 () Bool)

(assert (=> b!7907550 (= tp!2355668 (and (=> t!389701 result!360302) b_and!353245))))

(declare-fun e!4667770 () Bool)

(assert (=> b!7907550 (= e!4667770 (and tp!2355666 tp!2355668))))

(declare-fun tp!2355667 () Bool)

(declare-fun b!7907549 () Bool)

(declare-fun e!4667769 () Bool)

(assert (=> b!7907549 (= e!4667769 (and tp!2355667 (inv!95307 (tag!9497 (h!80745 (t!389690 rulesArg!141)))) (inv!95310 (transformation!8633 (h!80745 (t!389690 rulesArg!141)))) e!4667770))))

(declare-fun b!7907548 () Bool)

(declare-fun e!4667772 () Bool)

(declare-fun tp!2355669 () Bool)

(assert (=> b!7907548 (= e!4667772 (and e!4667769 tp!2355669))))

(assert (=> b!7907262 (= tp!2355637 e!4667772)))

(assert (= b!7907549 b!7907550))

(assert (= b!7907548 b!7907549))

(assert (= (and b!7907262 (is-Cons!74297 (t!389690 rulesArg!141))) b!7907548))

(declare-fun m!8281654 () Bool)

(assert (=> b!7907549 m!8281654))

(declare-fun m!8281656 () Bool)

(assert (=> b!7907549 m!8281656))

(declare-fun b!7907561 () Bool)

(declare-fun e!4667775 () Bool)

(assert (=> b!7907561 (= e!4667775 tp_is_empty!53047)))

(assert (=> b!7907252 (= tp!2355638 e!4667775)))

(declare-fun b!7907562 () Bool)

(declare-fun tp!2355680 () Bool)

(declare-fun tp!2355684 () Bool)

(assert (=> b!7907562 (= e!4667775 (and tp!2355680 tp!2355684))))

(declare-fun b!7907563 () Bool)

(declare-fun tp!2355683 () Bool)

(assert (=> b!7907563 (= e!4667775 tp!2355683)))

(declare-fun b!7907564 () Bool)

(declare-fun tp!2355682 () Bool)

(declare-fun tp!2355681 () Bool)

(assert (=> b!7907564 (= e!4667775 (and tp!2355682 tp!2355681))))

(assert (= (and b!7907252 (is-ElementMatch!21336 (regex!8633 (h!80745 rulesArg!141)))) b!7907561))

(assert (= (and b!7907252 (is-Concat!30286 (regex!8633 (h!80745 rulesArg!141)))) b!7907562))

(assert (= (and b!7907252 (is-Star!21336 (regex!8633 (h!80745 rulesArg!141)))) b!7907563))

(assert (= (and b!7907252 (is-Union!21336 (regex!8633 (h!80745 rulesArg!141)))) b!7907564))

(declare-fun b!7907569 () Bool)

(declare-fun e!4667778 () Bool)

(declare-fun tp!2355687 () Bool)

(assert (=> b!7907569 (= e!4667778 (and tp_is_empty!53047 tp!2355687))))

(assert (=> b!7907254 (= tp!2355636 e!4667778)))

(assert (= (and b!7907254 (is-Cons!74296 (t!389689 input!1184))) b!7907569))

(push 1)

(assert (not b!7907421))

(assert (not b!7907422))

(assert (not d!2359559))

(assert (not b!7907330))

(assert (not b!7907538))

(assert (not b!7907564))

(assert (not b!7907363))

(assert (not b!7907370))

(assert (not b!7907362))

(assert (not b!7907519))

(assert (not bm!733466))

(assert (not d!2359579))

(assert (not b!7907485))

(assert (not b!7907365))

(assert (not b_next!135833))

(assert (not d!2359563))

(assert (not b!7907549))

(assert (not tb!263107))

(assert (not d!2359591))

(assert (not d!2359537))

(assert (not b!7907420))

(assert (not bm!733460))

(assert (not b_lambda!289893))

(assert (not b!7907328))

(assert (not b!7907366))

(assert (not b!7907515))

(assert tp_is_empty!53047)

(assert (not b!7907569))

(assert (not b!7907424))

(assert (not b_next!135827))

(assert (not b!7907417))

(assert (not b_next!135825))

(assert (not b!7907339))

(assert (not b!7907477))

(assert (not b!7907525))

(assert (not d!2359545))

(assert (not b!7907368))

(assert (not d!2359589))

(assert (not b!7907423))

(assert (not b!7907318))

(assert (not d!2359557))

(assert (not b!7907516))

(assert (not d!2359541))

(assert (not b!7907478))

(assert (not b!7907520))

(assert (not d!2359585))

(assert (not b!7907523))

(assert (not b!7907333))

(assert (not tb!263109))

(assert (not b!7907562))

(assert (not d!2359553))

(assert (not b!7907367))

(assert b_and!353241)

(assert (not d!2359577))

(assert (not b!7907548))

(assert (not b_lambda!289891))

(assert b_and!353245)

(assert (not b!7907537))

(assert (not b_next!135835))

(assert b_and!353239)

(assert (not b!7907329))

(assert (not b!7907369))

(assert (not b!7907419))

(assert (not b!7907416))

(assert (not b!7907341))

(assert (not b!7907563))

(assert b_and!353243)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!135833))

(assert (not b_next!135827))

(assert (not b_next!135825))

(assert b_and!353241)

(assert b_and!353245)

(assert b_and!353243)

(assert (not b_next!135835))

(assert b_and!353239)

(check-sat)

(pop 1)

