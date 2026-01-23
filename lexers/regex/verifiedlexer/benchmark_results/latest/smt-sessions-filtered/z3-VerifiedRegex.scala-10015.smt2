; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!523194 () Bool)

(assert start!523194)

(declare-fun b!4962037 () Bool)

(declare-fun b_free!132651 () Bool)

(declare-fun b_next!133441 () Bool)

(assert (=> b!4962037 (= b_free!132651 (not b_next!133441))))

(declare-fun tp!1391973 () Bool)

(declare-fun b_and!347511 () Bool)

(assert (=> b!4962037 (= tp!1391973 b_and!347511)))

(declare-fun b_free!132653 () Bool)

(declare-fun b_next!133443 () Bool)

(assert (=> b!4962037 (= b_free!132653 (not b_next!133443))))

(declare-fun tp!1391979 () Bool)

(declare-fun b_and!347513 () Bool)

(assert (=> b!4962037 (= tp!1391979 b_and!347513)))

(declare-fun b!4962030 () Bool)

(declare-fun b_free!132655 () Bool)

(declare-fun b_next!133445 () Bool)

(assert (=> b!4962030 (= b_free!132655 (not b_next!133445))))

(declare-fun tp!1391980 () Bool)

(declare-fun b_and!347515 () Bool)

(assert (=> b!4962030 (= tp!1391980 b_and!347515)))

(declare-fun b_free!132657 () Bool)

(declare-fun b_next!133447 () Bool)

(assert (=> b!4962030 (= b_free!132657 (not b_next!133447))))

(declare-fun tp!1391977 () Bool)

(declare-fun b_and!347517 () Bool)

(assert (=> b!4962030 (= tp!1391977 b_and!347517)))

(declare-fun e!3101617 () Bool)

(declare-fun b!4962023 () Bool)

(declare-fun e!3101600 () Bool)

(declare-datatypes ((List!57532 0))(
  ( (Nil!57408) (Cons!57408 (h!63856 (_ BitVec 16)) (t!368110 List!57532)) )
))
(declare-datatypes ((TokenValue!8692 0))(
  ( (FloatLiteralValue!17384 (text!61289 List!57532)) (TokenValueExt!8691 (__x!34677 Int)) (Broken!43460 (value!268303 List!57532)) (Object!8815) (End!8692) (Def!8692) (Underscore!8692) (Match!8692) (Else!8692) (Error!8692) (Case!8692) (If!8692) (Extends!8692) (Abstract!8692) (Class!8692) (Val!8692) (DelimiterValue!17384 (del!8752 List!57532)) (KeywordValue!8698 (value!268304 List!57532)) (CommentValue!17384 (value!268305 List!57532)) (WhitespaceValue!17384 (value!268306 List!57532)) (IndentationValue!8692 (value!268307 List!57532)) (String!65333) (Int32!8692) (Broken!43461 (value!268308 List!57532)) (Boolean!8693) (Unit!148302) (OperatorValue!8695 (op!8752 List!57532)) (IdentifierValue!17384 (value!268309 List!57532)) (IdentifierValue!17385 (value!268310 List!57532)) (WhitespaceValue!17385 (value!268311 List!57532)) (True!17384) (False!17384) (Broken!43462 (value!268312 List!57532)) (Broken!43463 (value!268313 List!57532)) (True!17385) (RightBrace!8692) (RightBracket!8692) (Colon!8692) (Null!8692) (Comma!8692) (LeftBracket!8692) (False!17385) (LeftBrace!8692) (ImaginaryLiteralValue!8692 (text!61290 List!57532)) (StringLiteralValue!26076 (value!268314 List!57532)) (EOFValue!8692 (value!268315 List!57532)) (IdentValue!8692 (value!268316 List!57532)) (DelimiterValue!17385 (value!268317 List!57532)) (DedentValue!8692 (value!268318 List!57532)) (NewLineValue!8692 (value!268319 List!57532)) (IntegerValue!26076 (value!268320 (_ BitVec 32)) (text!61291 List!57532)) (IntegerValue!26077 (value!268321 Int) (text!61292 List!57532)) (Times!8692) (Or!8692) (Equal!8692) (Minus!8692) (Broken!43464 (value!268322 List!57532)) (And!8692) (Div!8692) (LessEqual!8692) (Mod!8692) (Concat!22307) (Not!8692) (Plus!8692) (SpaceValue!8692 (value!268323 List!57532)) (IntegerValue!26078 (value!268324 Int) (text!61293 List!57532)) (StringLiteralValue!26077 (text!61294 List!57532)) (FloatLiteralValue!17385 (text!61295 List!57532)) (BytesLiteralValue!8692 (value!268325 List!57532)) (CommentValue!17385 (value!268326 List!57532)) (StringLiteralValue!26078 (value!268327 List!57532)) (ErrorTokenValue!8692 (msg!8753 List!57532)) )
))
(declare-datatypes ((C!27480 0))(
  ( (C!27481 (val!23106 Int)) )
))
(declare-datatypes ((Regex!13615 0))(
  ( (ElementMatch!13615 (c!846643 C!27480)) (Concat!22308 (regOne!27742 Regex!13615) (regTwo!27742 Regex!13615)) (EmptyExpr!13615) (Star!13615 (reg!13944 Regex!13615)) (EmptyLang!13615) (Union!13615 (regOne!27743 Regex!13615) (regTwo!27743 Regex!13615)) )
))
(declare-datatypes ((String!65334 0))(
  ( (String!65335 (value!268328 String)) )
))
(declare-datatypes ((List!57533 0))(
  ( (Nil!57409) (Cons!57409 (h!63857 C!27480) (t!368111 List!57533)) )
))
(declare-datatypes ((IArray!30329 0))(
  ( (IArray!30330 (innerList!15222 List!57533)) )
))
(declare-datatypes ((Conc!15134 0))(
  ( (Node!15134 (left!41863 Conc!15134) (right!42193 Conc!15134) (csize!30498 Int) (cheight!15345 Int)) (Leaf!25150 (xs!18460 IArray!30329) (csize!30499 Int)) (Empty!15134) )
))
(declare-datatypes ((BalanceConc!29698 0))(
  ( (BalanceConc!29699 (c!846644 Conc!15134)) )
))
(declare-datatypes ((TokenValueInjection!16692 0))(
  ( (TokenValueInjection!16693 (toValue!11333 Int) (toChars!11192 Int)) )
))
(declare-datatypes ((Rule!16564 0))(
  ( (Rule!16565 (regex!8382 Regex!13615) (tag!9246 String!65334) (isSeparator!8382 Bool) (transformation!8382 TokenValueInjection!16692)) )
))
(declare-datatypes ((Token!15264 0))(
  ( (Token!15265 (value!268329 TokenValue!8692) (rule!11614 Rule!16564) (size!38038 Int) (originalCharacters!8663 List!57533)) )
))
(declare-datatypes ((tuple2!62104 0))(
  ( (tuple2!62105 (_1!34355 Token!15264) (_2!34355 BalanceConc!29698)) )
))
(declare-datatypes ((Option!14431 0))(
  ( (None!14430) (Some!14430 (v!50415 tuple2!62104)) )
))
(declare-fun err!4577 () Option!14431)

(declare-fun e!3101614 () Bool)

(declare-fun inv!74993 (Token!15264) Bool)

(declare-fun inv!74994 (BalanceConc!29698) Bool)

(assert (=> b!4962023 (= e!3101617 (and (inv!74993 (_1!34355 (v!50415 err!4577))) e!3101614 (inv!74994 (_2!34355 (v!50415 err!4577))) e!3101600))))

(declare-fun b!4962024 () Bool)

(declare-fun e!3101612 () Bool)

(declare-fun e!3101619 () Bool)

(assert (=> b!4962024 (= e!3101612 e!3101619)))

(declare-fun res!2117945 () Bool)

(assert (=> b!4962024 (=> res!2117945 e!3101619)))

(declare-fun e!3101601 () Bool)

(assert (=> b!4962024 (= res!2117945 e!3101601)))

(declare-fun res!2117948 () Bool)

(assert (=> b!4962024 (=> (not res!2117948) (not e!3101601))))

(declare-fun lt!2048724 () Bool)

(assert (=> b!4962024 (= res!2117948 (not lt!2048724))))

(declare-fun lt!2048717 () Bool)

(assert (=> b!4962024 (= lt!2048724 (not lt!2048717))))

(declare-fun b!4962025 () Bool)

(declare-fun e!3101607 () Bool)

(declare-fun e!3101603 () Bool)

(declare-fun tp!1391976 () Bool)

(assert (=> b!4962025 (= e!3101607 (and e!3101603 tp!1391976))))

(declare-fun b!4962026 () Bool)

(declare-fun e!3101616 () Bool)

(declare-fun input!1342 () BalanceConc!29698)

(declare-fun tp!1391970 () Bool)

(declare-fun inv!74995 (Conc!15134) Bool)

(assert (=> b!4962026 (= e!3101616 (and (inv!74995 (c!846644 input!1342)) tp!1391970))))

(declare-fun tp!1391972 () Bool)

(declare-datatypes ((List!57534 0))(
  ( (Nil!57410) (Cons!57410 (h!63858 Rule!16564) (t!368112 List!57534)) )
))
(declare-fun rulesArg!259 () List!57534)

(declare-fun b!4962027 () Bool)

(declare-fun e!3101611 () Bool)

(declare-fun inv!74988 (String!65334) Bool)

(declare-fun inv!74996 (TokenValueInjection!16692) Bool)

(assert (=> b!4962027 (= e!3101603 (and tp!1391972 (inv!74988 (tag!9246 (h!63858 rulesArg!259))) (inv!74996 (transformation!8382 (h!63858 rulesArg!259))) e!3101611))))

(declare-fun b!4962028 () Bool)

(declare-fun e!3101602 () Bool)

(declare-fun lt!2048720 () tuple2!62104)

(declare-datatypes ((tuple2!62106 0))(
  ( (tuple2!62107 (_1!34356 Token!15264) (_2!34356 List!57533)) )
))
(declare-fun lt!2048718 () tuple2!62106)

(declare-fun list!18341 (BalanceConc!29698) List!57533)

(assert (=> b!4962028 (= e!3101602 (not (= (list!18341 (_2!34355 lt!2048720)) (_2!34356 lt!2048718))))))

(declare-fun b!4962029 () Bool)

(declare-fun res!2117941 () Bool)

(declare-fun e!3101615 () Bool)

(assert (=> b!4962029 (=> (not res!2117941) (not e!3101615))))

(declare-fun isEmpty!30892 (List!57534) Bool)

(assert (=> b!4962029 (= res!2117941 (not (isEmpty!30892 rulesArg!259)))))

(declare-fun e!3101605 () Bool)

(assert (=> b!4962030 (= e!3101605 (and tp!1391980 tp!1391977))))

(declare-fun tp!1391974 () Bool)

(declare-fun b!4962031 () Bool)

(declare-fun e!3101610 () Bool)

(declare-fun inv!21 (TokenValue!8692) Bool)

(assert (=> b!4962031 (= e!3101614 (and (inv!21 (value!268329 (_1!34355 (v!50415 err!4577)))) e!3101610 tp!1391974))))

(declare-fun b!4962032 () Bool)

(declare-fun res!2117940 () Bool)

(assert (=> b!4962032 (=> (not res!2117940) (not e!3101615))))

(declare-datatypes ((LexerInterface!7974 0))(
  ( (LexerInterfaceExt!7971 (__x!34678 Int)) (Lexer!7972) )
))
(declare-fun thiss!15247 () LexerInterface!7974)

(declare-fun rulesValidInductive!3285 (LexerInterface!7974 List!57534) Bool)

(assert (=> b!4962032 (= res!2117940 (rulesValidInductive!3285 thiss!15247 rulesArg!259))))

(declare-fun b!4962033 () Bool)

(declare-fun e!3101618 () Bool)

(assert (=> b!4962033 (= e!3101618 e!3101612)))

(declare-fun res!2117939 () Bool)

(assert (=> b!4962033 (=> res!2117939 e!3101612)))

(declare-datatypes ((Option!14432 0))(
  ( (None!14431) (Some!14431 (v!50416 tuple2!62106)) )
))
(declare-fun lt!2048723 () Option!14432)

(declare-fun isDefined!11344 (Option!14432) Bool)

(assert (=> b!4962033 (= res!2117939 (not (= lt!2048717 (isDefined!11344 lt!2048723))))))

(declare-fun lt!2048721 () Option!14431)

(declare-fun isDefined!11345 (Option!14431) Bool)

(assert (=> b!4962033 (= lt!2048717 (isDefined!11345 lt!2048721))))

(declare-fun lt!2048716 () List!57533)

(declare-fun maxPrefixZipper!779 (LexerInterface!7974 List!57534 List!57533) Option!14432)

(assert (=> b!4962033 (= lt!2048723 (maxPrefixZipper!779 thiss!15247 rulesArg!259 lt!2048716))))

(assert (=> b!4962033 (= lt!2048721 err!4577)))

(assert (=> b!4962033 true))

(assert (=> b!4962033 e!3101617))

(declare-fun b!4962034 () Bool)

(assert (=> b!4962034 (= e!3101601 e!3101602)))

(declare-fun res!2117943 () Bool)

(assert (=> b!4962034 (=> res!2117943 e!3101602)))

(assert (=> b!4962034 (= res!2117943 (not (= (_1!34355 lt!2048720) (_1!34356 lt!2048718))))))

(declare-fun get!19916 (Option!14432) tuple2!62106)

(assert (=> b!4962034 (= lt!2048718 (get!19916 lt!2048723))))

(declare-fun get!19917 (Option!14431) tuple2!62104)

(assert (=> b!4962034 (= lt!2048720 (get!19917 lt!2048721))))

(declare-fun b!4962036 () Bool)

(declare-fun e!3101609 () Bool)

(assert (=> b!4962036 (= e!3101609 (not e!3101618))))

(declare-fun res!2117946 () Bool)

(assert (=> b!4962036 (=> res!2117946 e!3101618)))

(get-info :version)

(assert (=> b!4962036 (= res!2117946 (or (and ((_ is Cons!57410) rulesArg!259) ((_ is Nil!57410) (t!368112 rulesArg!259))) ((_ is Cons!57410) rulesArg!259)))))

(declare-fun isPrefix!5235 (List!57533 List!57533) Bool)

(assert (=> b!4962036 (isPrefix!5235 lt!2048716 lt!2048716)))

(declare-datatypes ((Unit!148303 0))(
  ( (Unit!148304) )
))
(declare-fun lt!2048722 () Unit!148303)

(declare-fun lemmaIsPrefixRefl!3559 (List!57533 List!57533) Unit!148303)

(assert (=> b!4962036 (= lt!2048722 (lemmaIsPrefixRefl!3559 lt!2048716 lt!2048716))))

(assert (=> b!4962037 (= e!3101611 (and tp!1391973 tp!1391979))))

(declare-fun b!4962038 () Bool)

(declare-fun res!2117947 () Bool)

(assert (=> b!4962038 (=> res!2117947 e!3101619)))

(assert (=> b!4962038 (= res!2117947 lt!2048724)))

(declare-fun b!4962039 () Bool)

(declare-fun e!3101608 () Bool)

(declare-fun totalInput!464 () BalanceConc!29698)

(declare-fun tp!1391978 () Bool)

(assert (=> b!4962039 (= e!3101608 (and (inv!74995 (c!846644 totalInput!464)) tp!1391978))))

(declare-fun b!4962040 () Bool)

(assert (=> b!4962040 (= e!3101619 true)))

(declare-fun lt!2048719 () Option!14432)

(declare-fun maxPrefix!4653 (LexerInterface!7974 List!57534 List!57533) Option!14432)

(assert (=> b!4962040 (= lt!2048719 (maxPrefix!4653 thiss!15247 rulesArg!259 lt!2048716))))

(declare-fun b!4962041 () Bool)

(declare-fun tp!1391975 () Bool)

(assert (=> b!4962041 (= e!3101600 (and (inv!74995 (c!846644 (_2!34355 (v!50415 err!4577)))) tp!1391975))))

(declare-fun b!4962042 () Bool)

(assert (=> b!4962042 (= e!3101615 e!3101609)))

(declare-fun res!2117942 () Bool)

(assert (=> b!4962042 (=> (not res!2117942) (not e!3101609))))

(declare-fun isSuffix!1181 (List!57533 List!57533) Bool)

(assert (=> b!4962042 (= res!2117942 (isSuffix!1181 lt!2048716 (list!18341 totalInput!464)))))

(assert (=> b!4962042 (= lt!2048716 (list!18341 input!1342))))

(declare-fun res!2117944 () Bool)

(assert (=> start!523194 (=> (not res!2117944) (not e!3101615))))

(assert (=> start!523194 (= res!2117944 ((_ is Lexer!7972) thiss!15247))))

(assert (=> start!523194 e!3101615))

(assert (=> start!523194 true))

(assert (=> start!523194 e!3101607))

(assert (=> start!523194 (and (inv!74994 input!1342) e!3101616)))

(assert (=> start!523194 (and (inv!74994 totalInput!464) e!3101608)))

(declare-fun b!4962035 () Bool)

(declare-fun tp!1391971 () Bool)

(assert (=> b!4962035 (= e!3101610 (and tp!1391971 (inv!74988 (tag!9246 (rule!11614 (_1!34355 (v!50415 err!4577))))) (inv!74996 (transformation!8382 (rule!11614 (_1!34355 (v!50415 err!4577))))) e!3101605))))

(assert (= (and start!523194 res!2117944) b!4962032))

(assert (= (and b!4962032 res!2117940) b!4962029))

(assert (= (and b!4962029 res!2117941) b!4962042))

(assert (= (and b!4962042 res!2117942) b!4962036))

(assert (= (and b!4962036 (not res!2117946)) b!4962033))

(assert (= b!4962035 b!4962030))

(assert (= b!4962031 b!4962035))

(assert (= b!4962023 b!4962031))

(assert (= b!4962023 b!4962041))

(assert (= (and b!4962033 ((_ is Some!14430) err!4577)) b!4962023))

(assert (= (and b!4962033 (not res!2117939)) b!4962024))

(assert (= (and b!4962024 res!2117948) b!4962034))

(assert (= (and b!4962034 (not res!2117943)) b!4962028))

(assert (= (and b!4962024 (not res!2117945)) b!4962038))

(assert (= (and b!4962038 (not res!2117947)) b!4962040))

(assert (= b!4962027 b!4962037))

(assert (= b!4962025 b!4962027))

(assert (= (and start!523194 ((_ is Cons!57410) rulesArg!259)) b!4962025))

(assert (= start!523194 b!4962026))

(assert (= start!523194 b!4962039))

(declare-fun m!5986480 () Bool)

(assert (=> b!4962035 m!5986480))

(declare-fun m!5986482 () Bool)

(assert (=> b!4962035 m!5986482))

(declare-fun m!5986484 () Bool)

(assert (=> b!4962027 m!5986484))

(declare-fun m!5986486 () Bool)

(assert (=> b!4962027 m!5986486))

(declare-fun m!5986488 () Bool)

(assert (=> b!4962036 m!5986488))

(declare-fun m!5986490 () Bool)

(assert (=> b!4962036 m!5986490))

(declare-fun m!5986492 () Bool)

(assert (=> b!4962040 m!5986492))

(declare-fun m!5986494 () Bool)

(assert (=> b!4962032 m!5986494))

(declare-fun m!5986496 () Bool)

(assert (=> b!4962039 m!5986496))

(declare-fun m!5986498 () Bool)

(assert (=> start!523194 m!5986498))

(declare-fun m!5986500 () Bool)

(assert (=> start!523194 m!5986500))

(declare-fun m!5986502 () Bool)

(assert (=> b!4962026 m!5986502))

(declare-fun m!5986504 () Bool)

(assert (=> b!4962028 m!5986504))

(declare-fun m!5986506 () Bool)

(assert (=> b!4962031 m!5986506))

(declare-fun m!5986508 () Bool)

(assert (=> b!4962034 m!5986508))

(declare-fun m!5986510 () Bool)

(assert (=> b!4962034 m!5986510))

(declare-fun m!5986512 () Bool)

(assert (=> b!4962029 m!5986512))

(declare-fun m!5986514 () Bool)

(assert (=> b!4962041 m!5986514))

(declare-fun m!5986516 () Bool)

(assert (=> b!4962042 m!5986516))

(assert (=> b!4962042 m!5986516))

(declare-fun m!5986518 () Bool)

(assert (=> b!4962042 m!5986518))

(declare-fun m!5986520 () Bool)

(assert (=> b!4962042 m!5986520))

(declare-fun m!5986522 () Bool)

(assert (=> b!4962033 m!5986522))

(declare-fun m!5986524 () Bool)

(assert (=> b!4962033 m!5986524))

(declare-fun m!5986526 () Bool)

(assert (=> b!4962033 m!5986526))

(declare-fun m!5986528 () Bool)

(assert (=> b!4962023 m!5986528))

(declare-fun m!5986530 () Bool)

(assert (=> b!4962023 m!5986530))

(check-sat (not b!4962035) b_and!347511 (not b!4962034) (not b!4962026) b_and!347513 (not b_next!133443) (not b!4962028) (not start!523194) b_and!347515 (not b!4962039) (not b!4962041) (not b!4962029) (not b!4962023) (not b!4962027) (not b_next!133441) (not b!4962036) (not b_next!133447) (not b!4962032) (not b!4962025) (not b!4962031) (not b_next!133445) (not b!4962033) (not b!4962040) (not b!4962042) b_and!347517)
(check-sat b_and!347511 b_and!347513 (not b_next!133443) (not b_next!133441) (not b_next!133447) (not b_next!133445) b_and!347515 b_and!347517)
