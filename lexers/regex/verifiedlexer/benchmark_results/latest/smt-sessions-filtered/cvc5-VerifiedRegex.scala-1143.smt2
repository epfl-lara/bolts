; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!59338 () Bool)

(assert start!59338)

(declare-fun b!618448 () Bool)

(declare-fun b_free!17873 () Bool)

(declare-fun b_next!17889 () Bool)

(assert (=> b!618448 (= b_free!17873 (not b_next!17889))))

(declare-fun tp!191509 () Bool)

(declare-fun b_and!61387 () Bool)

(assert (=> b!618448 (= tp!191509 b_and!61387)))

(declare-fun b_free!17875 () Bool)

(declare-fun b_next!17891 () Bool)

(assert (=> b!618448 (= b_free!17875 (not b_next!17891))))

(declare-fun tp!191503 () Bool)

(declare-fun b_and!61389 () Bool)

(assert (=> b!618448 (= tp!191503 b_and!61389)))

(declare-fun b!618445 () Bool)

(declare-fun b_free!17877 () Bool)

(declare-fun b_next!17893 () Bool)

(assert (=> b!618445 (= b_free!17877 (not b_next!17893))))

(declare-fun tp!191504 () Bool)

(declare-fun b_and!61391 () Bool)

(assert (=> b!618445 (= tp!191504 b_and!61391)))

(declare-fun b_free!17879 () Bool)

(declare-fun b_next!17895 () Bool)

(assert (=> b!618445 (= b_free!17879 (not b_next!17895))))

(declare-fun tp!191502 () Bool)

(declare-fun b_and!61393 () Bool)

(assert (=> b!618445 (= tp!191502 b_and!61393)))

(declare-fun b!618437 () Bool)

(declare-fun e!375144 () Bool)

(declare-fun tp_is_empty!3567 () Bool)

(declare-fun tp!191505 () Bool)

(assert (=> b!618437 (= e!375144 (and tp_is_empty!3567 tp!191505))))

(declare-fun b!618438 () Bool)

(declare-fun e!375146 () Bool)

(declare-fun tp!191507 () Bool)

(assert (=> b!618438 (= e!375146 (and tp_is_empty!3567 tp!191507))))

(declare-fun b!618439 () Bool)

(declare-fun res!269369 () Bool)

(declare-fun e!375142 () Bool)

(assert (=> b!618439 (=> (not res!269369) (not e!375142))))

(declare-datatypes ((List!6279 0))(
  ( (Nil!6269) (Cons!6269 (h!11670 (_ BitVec 16)) (t!81518 List!6279)) )
))
(declare-datatypes ((TokenValue!1294 0))(
  ( (FloatLiteralValue!2588 (text!9503 List!6279)) (TokenValueExt!1293 (__x!4488 Int)) (Broken!6470 (value!41034 List!6279)) (Object!1303) (End!1294) (Def!1294) (Underscore!1294) (Match!1294) (Else!1294) (Error!1294) (Case!1294) (If!1294) (Extends!1294) (Abstract!1294) (Class!1294) (Val!1294) (DelimiterValue!2588 (del!1354 List!6279)) (KeywordValue!1300 (value!41035 List!6279)) (CommentValue!2588 (value!41036 List!6279)) (WhitespaceValue!2588 (value!41037 List!6279)) (IndentationValue!1294 (value!41038 List!6279)) (String!8219) (Int32!1294) (Broken!6471 (value!41039 List!6279)) (Boolean!1295) (Unit!11406) (OperatorValue!1297 (op!1354 List!6279)) (IdentifierValue!2588 (value!41040 List!6279)) (IdentifierValue!2589 (value!41041 List!6279)) (WhitespaceValue!2589 (value!41042 List!6279)) (True!2588) (False!2588) (Broken!6472 (value!41043 List!6279)) (Broken!6473 (value!41044 List!6279)) (True!2589) (RightBrace!1294) (RightBracket!1294) (Colon!1294) (Null!1294) (Comma!1294) (LeftBracket!1294) (False!2589) (LeftBrace!1294) (ImaginaryLiteralValue!1294 (text!9504 List!6279)) (StringLiteralValue!3882 (value!41045 List!6279)) (EOFValue!1294 (value!41046 List!6279)) (IdentValue!1294 (value!41047 List!6279)) (DelimiterValue!2589 (value!41048 List!6279)) (DedentValue!1294 (value!41049 List!6279)) (NewLineValue!1294 (value!41050 List!6279)) (IntegerValue!3882 (value!41051 (_ BitVec 32)) (text!9505 List!6279)) (IntegerValue!3883 (value!41052 Int) (text!9506 List!6279)) (Times!1294) (Or!1294) (Equal!1294) (Minus!1294) (Broken!6474 (value!41053 List!6279)) (And!1294) (Div!1294) (LessEqual!1294) (Mod!1294) (Concat!2898) (Not!1294) (Plus!1294) (SpaceValue!1294 (value!41054 List!6279)) (IntegerValue!3884 (value!41055 Int) (text!9507 List!6279)) (StringLiteralValue!3883 (text!9508 List!6279)) (FloatLiteralValue!2589 (text!9509 List!6279)) (BytesLiteralValue!1294 (value!41056 List!6279)) (CommentValue!2589 (value!41057 List!6279)) (StringLiteralValue!3884 (value!41058 List!6279)) (ErrorTokenValue!1294 (msg!1355 List!6279)) )
))
(declare-datatypes ((C!4134 0))(
  ( (C!4135 (val!2293 Int)) )
))
(declare-datatypes ((Regex!1604 0))(
  ( (ElementMatch!1604 (c!113867 C!4134)) (Concat!2899 (regOne!3720 Regex!1604) (regTwo!3720 Regex!1604)) (EmptyExpr!1604) (Star!1604 (reg!1933 Regex!1604)) (EmptyLang!1604) (Union!1604 (regOne!3721 Regex!1604) (regTwo!3721 Regex!1604)) )
))
(declare-datatypes ((String!8220 0))(
  ( (String!8221 (value!41059 String)) )
))
(declare-datatypes ((List!6280 0))(
  ( (Nil!6270) (Cons!6270 (h!11671 C!4134) (t!81519 List!6280)) )
))
(declare-datatypes ((IArray!3975 0))(
  ( (IArray!3976 (innerList!2045 List!6280)) )
))
(declare-datatypes ((Conc!1987 0))(
  ( (Node!1987 (left!4984 Conc!1987) (right!5314 Conc!1987) (csize!4204 Int) (cheight!2198 Int)) (Leaf!3131 (xs!4624 IArray!3975) (csize!4205 Int)) (Empty!1987) )
))
(declare-datatypes ((BalanceConc!3982 0))(
  ( (BalanceConc!3983 (c!113868 Conc!1987)) )
))
(declare-datatypes ((TokenValueInjection!2356 0))(
  ( (TokenValueInjection!2357 (toValue!2183 Int) (toChars!2042 Int)) )
))
(declare-datatypes ((Rule!2340 0))(
  ( (Rule!2341 (regex!1270 Regex!1604) (tag!1532 String!8220) (isSeparator!1270 Bool) (transformation!1270 TokenValueInjection!2356)) )
))
(declare-datatypes ((List!6281 0))(
  ( (Nil!6271) (Cons!6271 (h!11672 Rule!2340) (t!81520 List!6281)) )
))
(declare-fun rules!3744 () List!6281)

(declare-datatypes ((LexerInterface!1158 0))(
  ( (LexerInterfaceExt!1155 (__x!4489 Int)) (Lexer!1156) )
))
(declare-fun thiss!25598 () LexerInterface!1158)

(declare-fun input!3215 () List!6280)

(declare-datatypes ((Token!2264 0))(
  ( (Token!2265 (value!41060 TokenValue!1294) (rule!2060 Rule!2340) (size!4882 Int) (originalCharacters!1303 List!6280)) )
))
(declare-datatypes ((tuple2!7072 0))(
  ( (tuple2!7073 (_1!3800 Token!2264) (_2!3800 List!6280)) )
))
(declare-datatypes ((Option!1615 0))(
  ( (None!1614) (Some!1614 (v!16539 tuple2!7072)) )
))
(declare-fun isEmpty!4509 (Option!1615) Bool)

(declare-fun maxPrefix!848 (LexerInterface!1158 List!6281 List!6280) Option!1615)

(assert (=> b!618439 (= res!269369 (isEmpty!4509 (maxPrefix!848 thiss!25598 rules!3744 input!3215)))))

(declare-fun e!375145 () Bool)

(declare-fun b!618440 () Bool)

(declare-fun e!375143 () Bool)

(declare-fun tp!191508 () Bool)

(declare-fun inv!7945 (String!8220) Bool)

(declare-fun inv!7948 (TokenValueInjection!2356) Bool)

(assert (=> b!618440 (= e!375145 (and tp!191508 (inv!7945 (tag!1532 (h!11672 rules!3744))) (inv!7948 (transformation!1270 (h!11672 rules!3744))) e!375143))))

(declare-fun b!618441 () Bool)

(declare-fun res!269365 () Bool)

(assert (=> b!618441 (=> (not res!269365) (not e!375142))))

(declare-fun p!2908 () List!6280)

(declare-fun isPrefix!900 (List!6280 List!6280) Bool)

(assert (=> b!618441 (= res!269365 (isPrefix!900 p!2908 input!3215))))

(declare-fun b!618442 () Bool)

(declare-fun e!375140 () Bool)

(declare-fun tp!191510 () Bool)

(assert (=> b!618442 (= e!375140 (and e!375145 tp!191510))))

(declare-fun res!269364 () Bool)

(assert (=> start!59338 (=> (not res!269364) (not e!375142))))

(assert (=> start!59338 (= res!269364 (is-Lexer!1156 thiss!25598))))

(assert (=> start!59338 e!375142))

(declare-fun e!375147 () Bool)

(assert (=> start!59338 e!375147))

(assert (=> start!59338 e!375146))

(assert (=> start!59338 e!375140))

(assert (=> start!59338 true))

(assert (=> start!59338 e!375144))

(declare-fun b!618436 () Bool)

(declare-fun res!269366 () Bool)

(assert (=> b!618436 (=> (not res!269366) (not e!375142))))

(declare-fun rulesInvariant!1119 (LexerInterface!1158 List!6281) Bool)

(assert (=> b!618436 (= res!269366 (rulesInvariant!1119 thiss!25598 rules!3744))))

(declare-fun r!3983 () Rule!2340)

(declare-fun e!375148 () Bool)

(declare-fun tp!191506 () Bool)

(declare-fun b!618443 () Bool)

(assert (=> b!618443 (= e!375147 (and tp!191506 (inv!7945 (tag!1532 r!3983)) (inv!7948 (transformation!1270 r!3983)) e!375148))))

(declare-fun b!618444 () Bool)

(declare-fun res!269367 () Bool)

(assert (=> b!618444 (=> (not res!269367) (not e!375142))))

(declare-fun isEmpty!4510 (List!6281) Bool)

(assert (=> b!618444 (= res!269367 (not (isEmpty!4510 rules!3744)))))

(assert (=> b!618445 (= e!375148 (and tp!191504 tp!191502))))

(declare-fun b!618446 () Bool)

(declare-fun res!269368 () Bool)

(assert (=> b!618446 (=> (not res!269368) (not e!375142))))

(declare-fun contains!1487 (List!6281 Rule!2340) Bool)

(assert (=> b!618446 (= res!269368 (contains!1487 rules!3744 r!3983))))

(declare-fun b!618447 () Bool)

(declare-fun lt!264739 () Option!1615)

(assert (=> b!618447 (= e!375142 (not (= lt!264739 None!1614)))))

(assert (=> b!618447 (isEmpty!4509 lt!264739)))

(declare-fun maxPrefixOneRule!500 (LexerInterface!1158 Rule!2340 List!6280) Option!1615)

(assert (=> b!618447 (= lt!264739 (maxPrefixOneRule!500 thiss!25598 r!3983 input!3215))))

(declare-datatypes ((Unit!11407 0))(
  ( (Unit!11408) )
))
(declare-fun lt!264741 () Unit!11407)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!105 (LexerInterface!1158 Rule!2340 List!6281 List!6280) Unit!11407)

(assert (=> b!618447 (= lt!264741 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!105 thiss!25598 r!3983 rules!3744 input!3215))))

(declare-fun ruleValid!449 (LexerInterface!1158 Rule!2340) Bool)

(assert (=> b!618447 (ruleValid!449 thiss!25598 r!3983)))

(declare-fun lt!264740 () Unit!11407)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!293 (LexerInterface!1158 Rule!2340 List!6281) Unit!11407)

(assert (=> b!618447 (= lt!264740 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!293 thiss!25598 r!3983 rules!3744))))

(assert (=> b!618448 (= e!375143 (and tp!191509 tp!191503))))

(assert (= (and start!59338 res!269364) b!618441))

(assert (= (and b!618441 res!269365) b!618444))

(assert (= (and b!618444 res!269367) b!618436))

(assert (= (and b!618436 res!269366) b!618446))

(assert (= (and b!618446 res!269368) b!618439))

(assert (= (and b!618439 res!269369) b!618447))

(assert (= b!618443 b!618445))

(assert (= start!59338 b!618443))

(assert (= (and start!59338 (is-Cons!6270 p!2908)) b!618438))

(assert (= b!618440 b!618448))

(assert (= b!618442 b!618440))

(assert (= (and start!59338 (is-Cons!6271 rules!3744)) b!618442))

(assert (= (and start!59338 (is-Cons!6270 input!3215)) b!618437))

(declare-fun m!886451 () Bool)

(assert (=> b!618439 m!886451))

(assert (=> b!618439 m!886451))

(declare-fun m!886453 () Bool)

(assert (=> b!618439 m!886453))

(declare-fun m!886455 () Bool)

(assert (=> b!618444 m!886455))

(declare-fun m!886457 () Bool)

(assert (=> b!618447 m!886457))

(declare-fun m!886459 () Bool)

(assert (=> b!618447 m!886459))

(declare-fun m!886461 () Bool)

(assert (=> b!618447 m!886461))

(declare-fun m!886463 () Bool)

(assert (=> b!618447 m!886463))

(declare-fun m!886465 () Bool)

(assert (=> b!618447 m!886465))

(declare-fun m!886467 () Bool)

(assert (=> b!618443 m!886467))

(declare-fun m!886469 () Bool)

(assert (=> b!618443 m!886469))

(declare-fun m!886471 () Bool)

(assert (=> b!618436 m!886471))

(declare-fun m!886473 () Bool)

(assert (=> b!618441 m!886473))

(declare-fun m!886475 () Bool)

(assert (=> b!618440 m!886475))

(declare-fun m!886477 () Bool)

(assert (=> b!618440 m!886477))

(declare-fun m!886479 () Bool)

(assert (=> b!618446 m!886479))

(push 1)

(assert (not b!618443))

(assert (not b!618441))

(assert (not b!618447))

(assert (not b!618438))

(assert b_and!61391)

(assert (not b!618439))

(assert tp_is_empty!3567)

(assert (not b!618442))

(assert (not b_next!17889))

(assert (not b!618437))

(assert (not b!618440))

(assert (not b!618444))

(assert (not b_next!17891))

(assert b_and!61389)

(assert (not b!618436))

(assert (not b_next!17893))

(assert (not b!618446))

(assert (not b_next!17895))

(assert b_and!61393)

(assert b_and!61387)

(check-sat)

(pop 1)

(push 1)

(assert b_and!61391)

(assert b_and!61389)

(assert (not b_next!17889))

(assert (not b_next!17893))

(assert (not b_next!17891))

(assert (not b_next!17895))

(assert b_and!61393)

(assert b_and!61387)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!216872 () Bool)

(assert (=> d!216872 (= (inv!7945 (tag!1532 (h!11672 rules!3744))) (= (mod (str.len (value!41059 (tag!1532 (h!11672 rules!3744)))) 2) 0))))

(assert (=> b!618440 d!216872))

(declare-fun d!216874 () Bool)

(declare-fun res!269404 () Bool)

(declare-fun e!375188 () Bool)

(assert (=> d!216874 (=> (not res!269404) (not e!375188))))

(declare-fun semiInverseModEq!512 (Int Int) Bool)

(assert (=> d!216874 (= res!269404 (semiInverseModEq!512 (toChars!2042 (transformation!1270 (h!11672 rules!3744))) (toValue!2183 (transformation!1270 (h!11672 rules!3744)))))))

(assert (=> d!216874 (= (inv!7948 (transformation!1270 (h!11672 rules!3744))) e!375188)))

(declare-fun b!618497 () Bool)

(declare-fun equivClasses!495 (Int Int) Bool)

(assert (=> b!618497 (= e!375188 (equivClasses!495 (toChars!2042 (transformation!1270 (h!11672 rules!3744))) (toValue!2183 (transformation!1270 (h!11672 rules!3744)))))))

(assert (= (and d!216874 res!269404) b!618497))

(declare-fun m!886523 () Bool)

(assert (=> d!216874 m!886523))

(declare-fun m!886525 () Bool)

(assert (=> b!618497 m!886525))

(assert (=> b!618440 d!216874))

(declare-fun d!216876 () Bool)

(declare-fun lt!264753 () Bool)

(declare-fun content!1142 (List!6281) (Set Rule!2340))

(assert (=> d!216876 (= lt!264753 (set.member r!3983 (content!1142 rules!3744)))))

(declare-fun e!375193 () Bool)

(assert (=> d!216876 (= lt!264753 e!375193)))

(declare-fun res!269410 () Bool)

(assert (=> d!216876 (=> (not res!269410) (not e!375193))))

(assert (=> d!216876 (= res!269410 (is-Cons!6271 rules!3744))))

(assert (=> d!216876 (= (contains!1487 rules!3744 r!3983) lt!264753)))

(declare-fun b!618502 () Bool)

(declare-fun e!375194 () Bool)

(assert (=> b!618502 (= e!375193 e!375194)))

(declare-fun res!269409 () Bool)

(assert (=> b!618502 (=> res!269409 e!375194)))

(assert (=> b!618502 (= res!269409 (= (h!11672 rules!3744) r!3983))))

(declare-fun b!618503 () Bool)

(assert (=> b!618503 (= e!375194 (contains!1487 (t!81520 rules!3744) r!3983))))

(assert (= (and d!216876 res!269410) b!618502))

(assert (= (and b!618502 (not res!269409)) b!618503))

(declare-fun m!886527 () Bool)

(assert (=> d!216876 m!886527))

(declare-fun m!886529 () Bool)

(assert (=> d!216876 m!886529))

(declare-fun m!886531 () Bool)

(assert (=> b!618503 m!886531))

(assert (=> b!618446 d!216876))

(declare-fun d!216878 () Bool)

(declare-fun e!375203 () Bool)

(assert (=> d!216878 e!375203))

(declare-fun res!269422 () Bool)

(assert (=> d!216878 (=> res!269422 e!375203)))

(declare-fun lt!264756 () Bool)

(assert (=> d!216878 (= res!269422 (not lt!264756))))

(declare-fun e!375202 () Bool)

(assert (=> d!216878 (= lt!264756 e!375202)))

(declare-fun res!269420 () Bool)

(assert (=> d!216878 (=> res!269420 e!375202)))

(assert (=> d!216878 (= res!269420 (is-Nil!6270 p!2908))))

(assert (=> d!216878 (= (isPrefix!900 p!2908 input!3215) lt!264756)))

(declare-fun b!618514 () Bool)

(declare-fun e!375201 () Bool)

(declare-fun tail!839 (List!6280) List!6280)

(assert (=> b!618514 (= e!375201 (isPrefix!900 (tail!839 p!2908) (tail!839 input!3215)))))

(declare-fun b!618513 () Bool)

(declare-fun res!269419 () Bool)

(assert (=> b!618513 (=> (not res!269419) (not e!375201))))

(declare-fun head!1310 (List!6280) C!4134)

(assert (=> b!618513 (= res!269419 (= (head!1310 p!2908) (head!1310 input!3215)))))

(declare-fun b!618512 () Bool)

(assert (=> b!618512 (= e!375202 e!375201)))

(declare-fun res!269421 () Bool)

(assert (=> b!618512 (=> (not res!269421) (not e!375201))))

(assert (=> b!618512 (= res!269421 (not (is-Nil!6270 input!3215)))))

(declare-fun b!618515 () Bool)

(declare-fun size!4884 (List!6280) Int)

(assert (=> b!618515 (= e!375203 (>= (size!4884 input!3215) (size!4884 p!2908)))))

(assert (= (and d!216878 (not res!269420)) b!618512))

(assert (= (and b!618512 res!269421) b!618513))

(assert (= (and b!618513 res!269419) b!618514))

(assert (= (and d!216878 (not res!269422)) b!618515))

(declare-fun m!886533 () Bool)

(assert (=> b!618514 m!886533))

(declare-fun m!886535 () Bool)

(assert (=> b!618514 m!886535))

(assert (=> b!618514 m!886533))

(assert (=> b!618514 m!886535))

(declare-fun m!886537 () Bool)

(assert (=> b!618514 m!886537))

(declare-fun m!886539 () Bool)

(assert (=> b!618513 m!886539))

(declare-fun m!886541 () Bool)

(assert (=> b!618513 m!886541))

(declare-fun m!886543 () Bool)

(assert (=> b!618515 m!886543))

(declare-fun m!886545 () Bool)

(assert (=> b!618515 m!886545))

(assert (=> b!618441 d!216878))

(declare-fun d!216880 () Bool)

(declare-fun res!269425 () Bool)

(declare-fun e!375206 () Bool)

(assert (=> d!216880 (=> (not res!269425) (not e!375206))))

(declare-fun rulesValid!474 (LexerInterface!1158 List!6281) Bool)

(assert (=> d!216880 (= res!269425 (rulesValid!474 thiss!25598 rules!3744))))

(assert (=> d!216880 (= (rulesInvariant!1119 thiss!25598 rules!3744) e!375206)))

(declare-fun b!618518 () Bool)

(declare-datatypes ((List!6285 0))(
  ( (Nil!6275) (Cons!6275 (h!11676 String!8220) (t!81524 List!6285)) )
))
(declare-fun noDuplicateTag!474 (LexerInterface!1158 List!6281 List!6285) Bool)

(assert (=> b!618518 (= e!375206 (noDuplicateTag!474 thiss!25598 rules!3744 Nil!6275))))

(assert (= (and d!216880 res!269425) b!618518))

(declare-fun m!886547 () Bool)

(assert (=> d!216880 m!886547))

(declare-fun m!886549 () Bool)

(assert (=> b!618518 m!886549))

(assert (=> b!618436 d!216880))

(declare-fun d!216882 () Bool)

(declare-fun res!269430 () Bool)

(declare-fun e!375209 () Bool)

(assert (=> d!216882 (=> (not res!269430) (not e!375209))))

(declare-fun validRegex!556 (Regex!1604) Bool)

(assert (=> d!216882 (= res!269430 (validRegex!556 (regex!1270 r!3983)))))

(assert (=> d!216882 (= (ruleValid!449 thiss!25598 r!3983) e!375209)))

(declare-fun b!618523 () Bool)

(declare-fun res!269431 () Bool)

(assert (=> b!618523 (=> (not res!269431) (not e!375209))))

(declare-fun nullable!461 (Regex!1604) Bool)

(assert (=> b!618523 (= res!269431 (not (nullable!461 (regex!1270 r!3983))))))

(declare-fun b!618524 () Bool)

(assert (=> b!618524 (= e!375209 (not (= (tag!1532 r!3983) (String!8221 ""))))))

(assert (= (and d!216882 res!269430) b!618523))

(assert (= (and b!618523 res!269431) b!618524))

(declare-fun m!886551 () Bool)

(assert (=> d!216882 m!886551))

(declare-fun m!886553 () Bool)

(assert (=> b!618523 m!886553))

(assert (=> b!618447 d!216882))

(declare-fun d!216884 () Bool)

(assert (=> d!216884 (= (isEmpty!4509 lt!264739) (not (is-Some!1614 lt!264739)))))

(assert (=> b!618447 d!216884))

(declare-fun d!216886 () Bool)

(assert (=> d!216886 (isEmpty!4509 (maxPrefixOneRule!500 thiss!25598 r!3983 input!3215))))

(declare-fun lt!264769 () Unit!11407)

(declare-fun choose!4535 (LexerInterface!1158 Rule!2340 List!6281 List!6280) Unit!11407)

(assert (=> d!216886 (= lt!264769 (choose!4535 thiss!25598 r!3983 rules!3744 input!3215))))

(assert (=> d!216886 (not (isEmpty!4510 rules!3744))))

(assert (=> d!216886 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!105 thiss!25598 r!3983 rules!3744 input!3215) lt!264769)))

(declare-fun bs!71871 () Bool)

(assert (= bs!71871 d!216886))

(assert (=> bs!71871 m!886461))

(assert (=> bs!71871 m!886461))

(declare-fun m!886555 () Bool)

(assert (=> bs!71871 m!886555))

(declare-fun m!886557 () Bool)

(assert (=> bs!71871 m!886557))

(assert (=> bs!71871 m!886455))

(assert (=> b!618447 d!216886))

(declare-fun b!618588 () Bool)

(declare-fun e!375242 () Bool)

(declare-fun lt!264795 () Option!1615)

(declare-fun get!2404 (Option!1615) tuple2!7072)

(assert (=> b!618588 (= e!375242 (= (size!4882 (_1!3800 (get!2404 lt!264795))) (size!4884 (originalCharacters!1303 (_1!3800 (get!2404 lt!264795))))))))

(declare-fun b!618589 () Bool)

(declare-fun res!269488 () Bool)

(assert (=> b!618589 (=> (not res!269488) (not e!375242))))

(declare-fun apply!1504 (TokenValueInjection!2356 BalanceConc!3982) TokenValue!1294)

(declare-fun seqFromList!1427 (List!6280) BalanceConc!3982)

(assert (=> b!618589 (= res!269488 (= (value!41060 (_1!3800 (get!2404 lt!264795))) (apply!1504 (transformation!1270 (rule!2060 (_1!3800 (get!2404 lt!264795)))) (seqFromList!1427 (originalCharacters!1303 (_1!3800 (get!2404 lt!264795)))))))))

(declare-fun b!618590 () Bool)

(declare-fun res!269489 () Bool)

(assert (=> b!618590 (=> (not res!269489) (not e!375242))))

(declare-fun ++!1741 (List!6280 List!6280) List!6280)

(declare-fun list!2614 (BalanceConc!3982) List!6280)

(declare-fun charsOf!882 (Token!2264) BalanceConc!3982)

(assert (=> b!618590 (= res!269489 (= (++!1741 (list!2614 (charsOf!882 (_1!3800 (get!2404 lt!264795)))) (_2!3800 (get!2404 lt!264795))) input!3215))))

(declare-fun b!618591 () Bool)

(declare-fun e!375244 () Option!1615)

(declare-datatypes ((tuple2!7076 0))(
  ( (tuple2!7077 (_1!3802 List!6280) (_2!3802 List!6280)) )
))
(declare-fun lt!264798 () tuple2!7076)

(declare-fun size!4885 (BalanceConc!3982) Int)

(assert (=> b!618591 (= e!375244 (Some!1614 (tuple2!7073 (Token!2265 (apply!1504 (transformation!1270 r!3983) (seqFromList!1427 (_1!3802 lt!264798))) r!3983 (size!4885 (seqFromList!1427 (_1!3802 lt!264798))) (_1!3802 lt!264798)) (_2!3802 lt!264798))))))

(declare-fun lt!264794 () Unit!11407)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!199 (Regex!1604 List!6280) Unit!11407)

(assert (=> b!618591 (= lt!264794 (longestMatchIsAcceptedByMatchOrIsEmpty!199 (regex!1270 r!3983) input!3215))))

(declare-fun res!269491 () Bool)

(declare-fun isEmpty!4513 (List!6280) Bool)

(declare-fun findLongestMatchInner!215 (Regex!1604 List!6280 Int List!6280 List!6280 Int) tuple2!7076)

(assert (=> b!618591 (= res!269491 (isEmpty!4513 (_1!3802 (findLongestMatchInner!215 (regex!1270 r!3983) Nil!6270 (size!4884 Nil!6270) input!3215 input!3215 (size!4884 input!3215)))))))

(declare-fun e!375245 () Bool)

(assert (=> b!618591 (=> res!269491 e!375245)))

(assert (=> b!618591 e!375245))

(declare-fun lt!264797 () Unit!11407)

(assert (=> b!618591 (= lt!264797 lt!264794)))

(declare-fun lt!264796 () Unit!11407)

(declare-fun lemmaSemiInverse!270 (TokenValueInjection!2356 BalanceConc!3982) Unit!11407)

(assert (=> b!618591 (= lt!264796 (lemmaSemiInverse!270 (transformation!1270 r!3983) (seqFromList!1427 (_1!3802 lt!264798))))))

(declare-fun b!618592 () Bool)

(declare-fun e!375243 () Bool)

(assert (=> b!618592 (= e!375243 e!375242)))

(declare-fun res!269486 () Bool)

(assert (=> b!618592 (=> (not res!269486) (not e!375242))))

(declare-fun matchR!688 (Regex!1604 List!6280) Bool)

(assert (=> b!618592 (= res!269486 (matchR!688 (regex!1270 r!3983) (list!2614 (charsOf!882 (_1!3800 (get!2404 lt!264795))))))))

(declare-fun b!618593 () Bool)

(assert (=> b!618593 (= e!375245 (matchR!688 (regex!1270 r!3983) (_1!3802 (findLongestMatchInner!215 (regex!1270 r!3983) Nil!6270 (size!4884 Nil!6270) input!3215 input!3215 (size!4884 input!3215)))))))

(declare-fun d!216888 () Bool)

(assert (=> d!216888 e!375243))

(declare-fun res!269490 () Bool)

(assert (=> d!216888 (=> res!269490 e!375243)))

(assert (=> d!216888 (= res!269490 (isEmpty!4509 lt!264795))))

(assert (=> d!216888 (= lt!264795 e!375244)))

(declare-fun c!113877 () Bool)

(assert (=> d!216888 (= c!113877 (isEmpty!4513 (_1!3802 lt!264798)))))

(declare-fun findLongestMatch!194 (Regex!1604 List!6280) tuple2!7076)

(assert (=> d!216888 (= lt!264798 (findLongestMatch!194 (regex!1270 r!3983) input!3215))))

(assert (=> d!216888 (ruleValid!449 thiss!25598 r!3983)))

(assert (=> d!216888 (= (maxPrefixOneRule!500 thiss!25598 r!3983 input!3215) lt!264795)))

(declare-fun b!618594 () Bool)

(assert (=> b!618594 (= e!375244 None!1614)))

(declare-fun b!618595 () Bool)

(declare-fun res!269487 () Bool)

(assert (=> b!618595 (=> (not res!269487) (not e!375242))))

(assert (=> b!618595 (= res!269487 (< (size!4884 (_2!3800 (get!2404 lt!264795))) (size!4884 input!3215)))))

(declare-fun b!618596 () Bool)

(declare-fun res!269485 () Bool)

(assert (=> b!618596 (=> (not res!269485) (not e!375242))))

(assert (=> b!618596 (= res!269485 (= (rule!2060 (_1!3800 (get!2404 lt!264795))) r!3983))))

(assert (= (and d!216888 c!113877) b!618594))

(assert (= (and d!216888 (not c!113877)) b!618591))

(assert (= (and b!618591 (not res!269491)) b!618593))

(assert (= (and d!216888 (not res!269490)) b!618592))

(assert (= (and b!618592 res!269486) b!618590))

(assert (= (and b!618590 res!269489) b!618595))

(assert (= (and b!618595 res!269487) b!618596))

(assert (= (and b!618596 res!269485) b!618589))

(assert (= (and b!618589 res!269488) b!618588))

(declare-fun m!886615 () Bool)

(assert (=> b!618589 m!886615))

(declare-fun m!886617 () Bool)

(assert (=> b!618589 m!886617))

(assert (=> b!618589 m!886617))

(declare-fun m!886619 () Bool)

(assert (=> b!618589 m!886619))

(assert (=> b!618595 m!886615))

(declare-fun m!886621 () Bool)

(assert (=> b!618595 m!886621))

(assert (=> b!618595 m!886543))

(declare-fun m!886623 () Bool)

(assert (=> b!618591 m!886623))

(declare-fun m!886625 () Bool)

(assert (=> b!618591 m!886625))

(declare-fun m!886627 () Bool)

(assert (=> b!618591 m!886627))

(assert (=> b!618591 m!886623))

(assert (=> b!618591 m!886543))

(declare-fun m!886629 () Bool)

(assert (=> b!618591 m!886629))

(assert (=> b!618591 m!886625))

(declare-fun m!886631 () Bool)

(assert (=> b!618591 m!886631))

(declare-fun m!886633 () Bool)

(assert (=> b!618591 m!886633))

(assert (=> b!618591 m!886543))

(assert (=> b!618591 m!886625))

(declare-fun m!886635 () Bool)

(assert (=> b!618591 m!886635))

(assert (=> b!618591 m!886625))

(declare-fun m!886637 () Bool)

(assert (=> b!618591 m!886637))

(assert (=> b!618593 m!886623))

(assert (=> b!618593 m!886543))

(assert (=> b!618593 m!886623))

(assert (=> b!618593 m!886543))

(assert (=> b!618593 m!886629))

(declare-fun m!886639 () Bool)

(assert (=> b!618593 m!886639))

(assert (=> b!618590 m!886615))

(declare-fun m!886641 () Bool)

(assert (=> b!618590 m!886641))

(assert (=> b!618590 m!886641))

(declare-fun m!886643 () Bool)

(assert (=> b!618590 m!886643))

(assert (=> b!618590 m!886643))

(declare-fun m!886645 () Bool)

(assert (=> b!618590 m!886645))

(assert (=> b!618596 m!886615))

(declare-fun m!886647 () Bool)

(assert (=> d!216888 m!886647))

(declare-fun m!886649 () Bool)

(assert (=> d!216888 m!886649))

(declare-fun m!886651 () Bool)

(assert (=> d!216888 m!886651))

(assert (=> d!216888 m!886459))

(assert (=> b!618588 m!886615))

(declare-fun m!886653 () Bool)

(assert (=> b!618588 m!886653))

(assert (=> b!618592 m!886615))

(assert (=> b!618592 m!886641))

(assert (=> b!618592 m!886641))

(assert (=> b!618592 m!886643))

(assert (=> b!618592 m!886643))

(declare-fun m!886655 () Bool)

(assert (=> b!618592 m!886655))

(assert (=> b!618447 d!216888))

(declare-fun d!216898 () Bool)

(assert (=> d!216898 (ruleValid!449 thiss!25598 r!3983)))

(declare-fun lt!264801 () Unit!11407)

(declare-fun choose!4536 (LexerInterface!1158 Rule!2340 List!6281) Unit!11407)

(assert (=> d!216898 (= lt!264801 (choose!4536 thiss!25598 r!3983 rules!3744))))

(assert (=> d!216898 (contains!1487 rules!3744 r!3983)))

(assert (=> d!216898 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!293 thiss!25598 r!3983 rules!3744) lt!264801)))

(declare-fun bs!71873 () Bool)

(assert (= bs!71873 d!216898))

(assert (=> bs!71873 m!886459))

(declare-fun m!886657 () Bool)

(assert (=> bs!71873 m!886657))

(assert (=> bs!71873 m!886479))

(assert (=> b!618447 d!216898))

(declare-fun d!216900 () Bool)

(assert (=> d!216900 (= (inv!7945 (tag!1532 r!3983)) (= (mod (str.len (value!41059 (tag!1532 r!3983))) 2) 0))))

(assert (=> b!618443 d!216900))

(declare-fun d!216902 () Bool)

(declare-fun res!269492 () Bool)

(declare-fun e!375246 () Bool)

(assert (=> d!216902 (=> (not res!269492) (not e!375246))))

(assert (=> d!216902 (= res!269492 (semiInverseModEq!512 (toChars!2042 (transformation!1270 r!3983)) (toValue!2183 (transformation!1270 r!3983))))))

(assert (=> d!216902 (= (inv!7948 (transformation!1270 r!3983)) e!375246)))

(declare-fun b!618597 () Bool)

(assert (=> b!618597 (= e!375246 (equivClasses!495 (toChars!2042 (transformation!1270 r!3983)) (toValue!2183 (transformation!1270 r!3983))))))

(assert (= (and d!216902 res!269492) b!618597))

(declare-fun m!886659 () Bool)

(assert (=> d!216902 m!886659))

(declare-fun m!886661 () Bool)

(assert (=> b!618597 m!886661))

(assert (=> b!618443 d!216902))

(declare-fun d!216904 () Bool)

(assert (=> d!216904 (= (isEmpty!4510 rules!3744) (is-Nil!6271 rules!3744))))

(assert (=> b!618444 d!216904))

(declare-fun d!216906 () Bool)

(assert (=> d!216906 (= (isEmpty!4509 (maxPrefix!848 thiss!25598 rules!3744 input!3215)) (not (is-Some!1614 (maxPrefix!848 thiss!25598 rules!3744 input!3215))))))

(assert (=> b!618439 d!216906))

(declare-fun d!216908 () Bool)

(declare-fun e!375255 () Bool)

(assert (=> d!216908 e!375255))

(declare-fun res!269507 () Bool)

(assert (=> d!216908 (=> res!269507 e!375255)))

(declare-fun lt!264814 () Option!1615)

(assert (=> d!216908 (= res!269507 (isEmpty!4509 lt!264814))))

(declare-fun e!375254 () Option!1615)

(assert (=> d!216908 (= lt!264814 e!375254)))

(declare-fun c!113880 () Bool)

(assert (=> d!216908 (= c!113880 (and (is-Cons!6271 rules!3744) (is-Nil!6271 (t!81520 rules!3744))))))

(declare-fun lt!264815 () Unit!11407)

(declare-fun lt!264813 () Unit!11407)

(assert (=> d!216908 (= lt!264815 lt!264813)))

(assert (=> d!216908 (isPrefix!900 input!3215 input!3215)))

(declare-fun lemmaIsPrefixRefl!615 (List!6280 List!6280) Unit!11407)

(assert (=> d!216908 (= lt!264813 (lemmaIsPrefixRefl!615 input!3215 input!3215))))

(declare-fun rulesValidInductive!487 (LexerInterface!1158 List!6281) Bool)

(assert (=> d!216908 (rulesValidInductive!487 thiss!25598 rules!3744)))

(assert (=> d!216908 (= (maxPrefix!848 thiss!25598 rules!3744 input!3215) lt!264814)))

(declare-fun b!618616 () Bool)

(declare-fun lt!264812 () Option!1615)

(declare-fun lt!264816 () Option!1615)

(assert (=> b!618616 (= e!375254 (ite (and (is-None!1614 lt!264812) (is-None!1614 lt!264816)) None!1614 (ite (is-None!1614 lt!264816) lt!264812 (ite (is-None!1614 lt!264812) lt!264816 (ite (>= (size!4882 (_1!3800 (v!16539 lt!264812))) (size!4882 (_1!3800 (v!16539 lt!264816)))) lt!264812 lt!264816)))))))

(declare-fun call!41099 () Option!1615)

(assert (=> b!618616 (= lt!264812 call!41099)))

(assert (=> b!618616 (= lt!264816 (maxPrefix!848 thiss!25598 (t!81520 rules!3744) input!3215))))

(declare-fun bm!41094 () Bool)

(assert (=> bm!41094 (= call!41099 (maxPrefixOneRule!500 thiss!25598 (h!11672 rules!3744) input!3215))))

(declare-fun b!618617 () Bool)

(declare-fun e!375253 () Bool)

(assert (=> b!618617 (= e!375255 e!375253)))

(declare-fun res!269510 () Bool)

(assert (=> b!618617 (=> (not res!269510) (not e!375253))))

(declare-fun isDefined!1416 (Option!1615) Bool)

(assert (=> b!618617 (= res!269510 (isDefined!1416 lt!264814))))

(declare-fun b!618618 () Bool)

(declare-fun res!269513 () Bool)

(assert (=> b!618618 (=> (not res!269513) (not e!375253))))

(assert (=> b!618618 (= res!269513 (= (list!2614 (charsOf!882 (_1!3800 (get!2404 lt!264814)))) (originalCharacters!1303 (_1!3800 (get!2404 lt!264814)))))))

(declare-fun b!618619 () Bool)

(assert (=> b!618619 (= e!375253 (contains!1487 rules!3744 (rule!2060 (_1!3800 (get!2404 lt!264814)))))))

(declare-fun b!618620 () Bool)

(declare-fun res!269512 () Bool)

(assert (=> b!618620 (=> (not res!269512) (not e!375253))))

(assert (=> b!618620 (= res!269512 (matchR!688 (regex!1270 (rule!2060 (_1!3800 (get!2404 lt!264814)))) (list!2614 (charsOf!882 (_1!3800 (get!2404 lt!264814))))))))

(declare-fun b!618621 () Bool)

(assert (=> b!618621 (= e!375254 call!41099)))

(declare-fun b!618622 () Bool)

(declare-fun res!269511 () Bool)

(assert (=> b!618622 (=> (not res!269511) (not e!375253))))

(assert (=> b!618622 (= res!269511 (= (value!41060 (_1!3800 (get!2404 lt!264814))) (apply!1504 (transformation!1270 (rule!2060 (_1!3800 (get!2404 lt!264814)))) (seqFromList!1427 (originalCharacters!1303 (_1!3800 (get!2404 lt!264814)))))))))

(declare-fun b!618623 () Bool)

(declare-fun res!269508 () Bool)

(assert (=> b!618623 (=> (not res!269508) (not e!375253))))

(assert (=> b!618623 (= res!269508 (< (size!4884 (_2!3800 (get!2404 lt!264814))) (size!4884 input!3215)))))

(declare-fun b!618624 () Bool)

(declare-fun res!269509 () Bool)

(assert (=> b!618624 (=> (not res!269509) (not e!375253))))

(assert (=> b!618624 (= res!269509 (= (++!1741 (list!2614 (charsOf!882 (_1!3800 (get!2404 lt!264814)))) (_2!3800 (get!2404 lt!264814))) input!3215))))

(assert (= (and d!216908 c!113880) b!618621))

(assert (= (and d!216908 (not c!113880)) b!618616))

(assert (= (or b!618621 b!618616) bm!41094))

(assert (= (and d!216908 (not res!269507)) b!618617))

(assert (= (and b!618617 res!269510) b!618618))

(assert (= (and b!618618 res!269513) b!618623))

(assert (= (and b!618623 res!269508) b!618624))

(assert (= (and b!618624 res!269509) b!618622))

(assert (= (and b!618622 res!269511) b!618620))

(assert (= (and b!618620 res!269512) b!618619))

(declare-fun m!886663 () Bool)

(assert (=> b!618620 m!886663))

(declare-fun m!886665 () Bool)

(assert (=> b!618620 m!886665))

(assert (=> b!618620 m!886665))

(declare-fun m!886667 () Bool)

(assert (=> b!618620 m!886667))

(assert (=> b!618620 m!886667))

(declare-fun m!886669 () Bool)

(assert (=> b!618620 m!886669))

(declare-fun m!886671 () Bool)

(assert (=> bm!41094 m!886671))

(assert (=> b!618622 m!886663))

(declare-fun m!886673 () Bool)

(assert (=> b!618622 m!886673))

(assert (=> b!618622 m!886673))

(declare-fun m!886675 () Bool)

(assert (=> b!618622 m!886675))

(declare-fun m!886677 () Bool)

(assert (=> d!216908 m!886677))

(declare-fun m!886679 () Bool)

(assert (=> d!216908 m!886679))

(declare-fun m!886681 () Bool)

(assert (=> d!216908 m!886681))

(declare-fun m!886683 () Bool)

(assert (=> d!216908 m!886683))

(assert (=> b!618619 m!886663))

(declare-fun m!886685 () Bool)

(assert (=> b!618619 m!886685))

(declare-fun m!886687 () Bool)

(assert (=> b!618617 m!886687))

(assert (=> b!618624 m!886663))

(assert (=> b!618624 m!886665))

(assert (=> b!618624 m!886665))

(assert (=> b!618624 m!886667))

(assert (=> b!618624 m!886667))

(declare-fun m!886689 () Bool)

(assert (=> b!618624 m!886689))

(assert (=> b!618623 m!886663))

(declare-fun m!886691 () Bool)

(assert (=> b!618623 m!886691))

(assert (=> b!618623 m!886543))

(assert (=> b!618618 m!886663))

(assert (=> b!618618 m!886665))

(assert (=> b!618618 m!886665))

(assert (=> b!618618 m!886667))

(declare-fun m!886693 () Bool)

(assert (=> b!618616 m!886693))

(assert (=> b!618439 d!216908))

(declare-fun e!375258 () Bool)

(assert (=> b!618440 (= tp!191508 e!375258)))

(declare-fun b!618636 () Bool)

(declare-fun tp!191552 () Bool)

(declare-fun tp!191549 () Bool)

(assert (=> b!618636 (= e!375258 (and tp!191552 tp!191549))))

(declare-fun b!618638 () Bool)

(declare-fun tp!191548 () Bool)

(declare-fun tp!191550 () Bool)

(assert (=> b!618638 (= e!375258 (and tp!191548 tp!191550))))

(declare-fun b!618637 () Bool)

(declare-fun tp!191551 () Bool)

(assert (=> b!618637 (= e!375258 tp!191551)))

(declare-fun b!618635 () Bool)

(assert (=> b!618635 (= e!375258 tp_is_empty!3567)))

(assert (= (and b!618440 (is-ElementMatch!1604 (regex!1270 (h!11672 rules!3744)))) b!618635))

(assert (= (and b!618440 (is-Concat!2899 (regex!1270 (h!11672 rules!3744)))) b!618636))

(assert (= (and b!618440 (is-Star!1604 (regex!1270 (h!11672 rules!3744)))) b!618637))

(assert (= (and b!618440 (is-Union!1604 (regex!1270 (h!11672 rules!3744)))) b!618638))

(declare-fun b!618649 () Bool)

(declare-fun b_free!17889 () Bool)

(declare-fun b_next!17905 () Bool)

(assert (=> b!618649 (= b_free!17889 (not b_next!17905))))

(declare-fun tp!191563 () Bool)

(declare-fun b_and!61403 () Bool)

(assert (=> b!618649 (= tp!191563 b_and!61403)))

(declare-fun b_free!17891 () Bool)

(declare-fun b_next!17907 () Bool)

(assert (=> b!618649 (= b_free!17891 (not b_next!17907))))

(declare-fun tp!191564 () Bool)

(declare-fun b_and!61405 () Bool)

(assert (=> b!618649 (= tp!191564 b_and!61405)))

(declare-fun e!375269 () Bool)

(assert (=> b!618649 (= e!375269 (and tp!191563 tp!191564))))

(declare-fun b!618648 () Bool)

(declare-fun e!375267 () Bool)

(declare-fun tp!191561 () Bool)

(assert (=> b!618648 (= e!375267 (and tp!191561 (inv!7945 (tag!1532 (h!11672 (t!81520 rules!3744)))) (inv!7948 (transformation!1270 (h!11672 (t!81520 rules!3744)))) e!375269))))

(declare-fun b!618647 () Bool)

(declare-fun e!375270 () Bool)

(declare-fun tp!191562 () Bool)

(assert (=> b!618647 (= e!375270 (and e!375267 tp!191562))))

(assert (=> b!618442 (= tp!191510 e!375270)))

(assert (= b!618648 b!618649))

(assert (= b!618647 b!618648))

(assert (= (and b!618442 (is-Cons!6271 (t!81520 rules!3744))) b!618647))

(declare-fun m!886695 () Bool)

(assert (=> b!618648 m!886695))

(declare-fun m!886697 () Bool)

(assert (=> b!618648 m!886697))

(declare-fun b!618654 () Bool)

(declare-fun e!375273 () Bool)

(declare-fun tp!191567 () Bool)

(assert (=> b!618654 (= e!375273 (and tp_is_empty!3567 tp!191567))))

(assert (=> b!618437 (= tp!191505 e!375273)))

(assert (= (and b!618437 (is-Cons!6270 (t!81519 input!3215))) b!618654))

(declare-fun e!375274 () Bool)

(assert (=> b!618443 (= tp!191506 e!375274)))

(declare-fun b!618656 () Bool)

(declare-fun tp!191572 () Bool)

(declare-fun tp!191569 () Bool)

(assert (=> b!618656 (= e!375274 (and tp!191572 tp!191569))))

(declare-fun b!618658 () Bool)

(declare-fun tp!191568 () Bool)

(declare-fun tp!191570 () Bool)

(assert (=> b!618658 (= e!375274 (and tp!191568 tp!191570))))

(declare-fun b!618657 () Bool)

(declare-fun tp!191571 () Bool)

(assert (=> b!618657 (= e!375274 tp!191571)))

(declare-fun b!618655 () Bool)

(assert (=> b!618655 (= e!375274 tp_is_empty!3567)))

(assert (= (and b!618443 (is-ElementMatch!1604 (regex!1270 r!3983))) b!618655))

(assert (= (and b!618443 (is-Concat!2899 (regex!1270 r!3983))) b!618656))

(assert (= (and b!618443 (is-Star!1604 (regex!1270 r!3983))) b!618657))

(assert (= (and b!618443 (is-Union!1604 (regex!1270 r!3983))) b!618658))

(declare-fun b!618659 () Bool)

(declare-fun e!375275 () Bool)

(declare-fun tp!191573 () Bool)

(assert (=> b!618659 (= e!375275 (and tp_is_empty!3567 tp!191573))))

(assert (=> b!618438 (= tp!191507 e!375275)))

(assert (= (and b!618438 (is-Cons!6270 (t!81519 p!2908))) b!618659))

(push 1)

(assert (not d!216886))

(assert (not bm!41094))

(assert b_and!61403)

(assert (not b!618589))

(assert (not b!618518))

(assert (not b!618595))

(assert (not d!216908))

(assert (not b!618659))

(assert (not d!216898))

(assert b_and!61405)

(assert (not b!618658))

(assert (not d!216880))

(assert (not b!618638))

(assert (not b!618656))

(assert (not b!618593))

(assert (not b!618514))

(assert (not b!618497))

(assert b_and!61391)

(assert (not b!618648))

(assert (not d!216902))

(assert (not b!618617))

(assert (not b!618619))

(assert (not b!618657))

(assert (not b!618588))

(assert (not b!618592))

(assert (not d!216882))

(assert (not b!618637))

(assert b_and!61389)

(assert (not d!216874))

(assert (not b!618513))

(assert (not b!618636))

(assert (not b!618620))

(assert (not b_next!17905))

(assert tp_is_empty!3567)

(assert (not b!618647))

(assert (not b!618654))

(assert (not b!618523))

(assert (not b!618515))

(assert (not b_next!17889))

(assert (not b!618590))

(assert (not b!618597))

(assert (not b!618622))

(assert (not b!618618))

(assert (not b_next!17893))

(assert (not b!618591))

(assert (not b_next!17907))

(assert (not b!618596))

(assert (not b!618616))

(assert (not b_next!17891))

(assert (not d!216876))

(assert (not b!618624))

(assert (not d!216888))

(assert (not b!618623))

(assert (not b_next!17895))

(assert b_and!61393)

(assert (not b!618503))

(assert b_and!61387)

(check-sat)

(pop 1)

(push 1)

(assert b_and!61405)

(assert b_and!61391)

(assert b_and!61389)

(assert b_and!61403)

(assert (not b_next!17905))

(assert (not b_next!17889))

(assert (not b_next!17893))

(assert (not b_next!17907))

(assert (not b_next!17891))

(assert (not b_next!17895))

(assert b_and!61393)

(assert b_and!61387)

(check-sat)

(pop 1)

