; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7694 () Bool)

(assert start!7694)

(declare-fun b!88142 () Bool)

(declare-fun b_free!2721 () Bool)

(declare-fun b_next!2721 () Bool)

(assert (=> b!88142 (= b_free!2721 (not b_next!2721))))

(declare-fun tp!53133 () Bool)

(declare-fun b_and!3999 () Bool)

(assert (=> b!88142 (= tp!53133 b_and!3999)))

(declare-fun b_free!2723 () Bool)

(declare-fun b_next!2723 () Bool)

(assert (=> b!88142 (= b_free!2723 (not b_next!2723))))

(declare-fun tp!53131 () Bool)

(declare-fun b_and!4001 () Bool)

(assert (=> b!88142 (= tp!53131 b_and!4001)))

(declare-datatypes ((C!1716 0))(
  ( (C!1717 (val!465 Int)) )
))
(declare-datatypes ((List!1508 0))(
  ( (Nil!1502) (Cons!1502 (h!6899 C!1716) (t!20697 List!1508)) )
))
(declare-datatypes ((IArray!921 0))(
  ( (IArray!922 (innerList!518 List!1508)) )
))
(declare-datatypes ((Conc!460 0))(
  ( (Node!460 (left!1141 Conc!460) (right!1471 Conc!460) (csize!1150 Int) (cheight!671 Int)) (Leaf!760 (xs!3043 IArray!921) (csize!1151 Int)) (Empty!460) )
))
(declare-datatypes ((BalanceConc!924 0))(
  ( (BalanceConc!925 (c!21982 Conc!460)) )
))
(declare-datatypes ((Regex!397 0))(
  ( (ElementMatch!397 (c!21983 C!1716)) (Concat!716 (regOne!1306 Regex!397) (regTwo!1306 Regex!397)) (EmptyExpr!397) (Star!397 (reg!726 Regex!397)) (EmptyLang!397) (Union!397 (regOne!1307 Regex!397) (regTwo!1307 Regex!397)) )
))
(declare-datatypes ((String!1986 0))(
  ( (String!1987 (value!12246 String)) )
))
(declare-datatypes ((List!1509 0))(
  ( (Nil!1503) (Cons!1503 (h!6900 (_ BitVec 16)) (t!20698 List!1509)) )
))
(declare-datatypes ((TokenValue!319 0))(
  ( (FloatLiteralValue!638 (text!2678 List!1509)) (TokenValueExt!318 (__x!1733 Int)) (Broken!1595 (value!12247 List!1509)) (Object!324) (End!319) (Def!319) (Underscore!319) (Match!319) (Else!319) (Error!319) (Case!319) (If!319) (Extends!319) (Abstract!319) (Class!319) (Val!319) (DelimiterValue!638 (del!379 List!1509)) (KeywordValue!325 (value!12248 List!1509)) (CommentValue!638 (value!12249 List!1509)) (WhitespaceValue!638 (value!12250 List!1509)) (IndentationValue!319 (value!12251 List!1509)) (String!1988) (Int32!319) (Broken!1596 (value!12252 List!1509)) (Boolean!320) (Unit!953) (OperatorValue!322 (op!379 List!1509)) (IdentifierValue!638 (value!12253 List!1509)) (IdentifierValue!639 (value!12254 List!1509)) (WhitespaceValue!639 (value!12255 List!1509)) (True!638) (False!638) (Broken!1597 (value!12256 List!1509)) (Broken!1598 (value!12257 List!1509)) (True!639) (RightBrace!319) (RightBracket!319) (Colon!319) (Null!319) (Comma!319) (LeftBracket!319) (False!639) (LeftBrace!319) (ImaginaryLiteralValue!319 (text!2679 List!1509)) (StringLiteralValue!957 (value!12258 List!1509)) (EOFValue!319 (value!12259 List!1509)) (IdentValue!319 (value!12260 List!1509)) (DelimiterValue!639 (value!12261 List!1509)) (DedentValue!319 (value!12262 List!1509)) (NewLineValue!319 (value!12263 List!1509)) (IntegerValue!957 (value!12264 (_ BitVec 32)) (text!2680 List!1509)) (IntegerValue!958 (value!12265 Int) (text!2681 List!1509)) (Times!319) (Or!319) (Equal!319) (Minus!319) (Broken!1599 (value!12266 List!1509)) (And!319) (Div!319) (LessEqual!319) (Mod!319) (Concat!717) (Not!319) (Plus!319) (SpaceValue!319 (value!12267 List!1509)) (IntegerValue!959 (value!12268 Int) (text!2682 List!1509)) (StringLiteralValue!958 (text!2683 List!1509)) (FloatLiteralValue!639 (text!2684 List!1509)) (BytesLiteralValue!319 (value!12269 List!1509)) (CommentValue!639 (value!12270 List!1509)) (StringLiteralValue!959 (value!12271 List!1509)) (ErrorTokenValue!319 (msg!380 List!1509)) )
))
(declare-datatypes ((TokenValueInjection!462 0))(
  ( (TokenValueInjection!463 (toValue!856 Int) (toChars!715 Int)) )
))
(declare-datatypes ((Rule!458 0))(
  ( (Rule!459 (regex!329 Regex!397) (tag!507 String!1986) (isSeparator!329 Bool) (transformation!329 TokenValueInjection!462)) )
))
(declare-datatypes ((List!1510 0))(
  ( (Nil!1504) (Cons!1504 (h!6901 Rule!458) (t!20699 List!1510)) )
))
(declare-fun rules!2471 () List!1510)

(declare-fun e!49112 () Bool)

(declare-fun tp!53130 () Bool)

(declare-fun b!88138 () Bool)

(declare-fun e!49109 () Bool)

(declare-fun inv!1852 (String!1986) Bool)

(declare-fun inv!1854 (TokenValueInjection!462) Bool)

(assert (=> b!88138 (= e!49112 (and tp!53130 (inv!1852 (tag!507 (h!6901 rules!2471))) (inv!1854 (transformation!329 (h!6901 rules!2471))) e!49109))))

(declare-fun b!88139 () Bool)

(declare-fun e!49110 () Bool)

(declare-fun e!49105 () Bool)

(assert (=> b!88139 (= e!49110 e!49105)))

(declare-fun res!44421 () Bool)

(assert (=> b!88139 (=> (not res!44421) (not e!49105))))

(declare-datatypes ((Token!418 0))(
  ( (Token!419 (value!12272 TokenValue!319) (rule!820 Rule!458) (size!1293 Int) (originalCharacters!380 List!1508)) )
))
(declare-datatypes ((List!1511 0))(
  ( (Nil!1505) (Cons!1505 (h!6902 Token!418) (t!20700 List!1511)) )
))
(declare-datatypes ((IArray!923 0))(
  ( (IArray!924 (innerList!519 List!1511)) )
))
(declare-datatypes ((Conc!461 0))(
  ( (Node!461 (left!1142 Conc!461) (right!1472 Conc!461) (csize!1152 Int) (cheight!672 Int)) (Leaf!761 (xs!3044 IArray!923) (csize!1153 Int)) (Empty!461) )
))
(declare-datatypes ((BalanceConc!926 0))(
  ( (BalanceConc!927 (c!21984 Conc!461)) )
))
(declare-datatypes ((tuple2!1574 0))(
  ( (tuple2!1575 (_1!994 BalanceConc!926) (_2!994 BalanceConc!924)) )
))
(declare-fun lt!21401 () tuple2!1574)

(declare-fun isEmpty!557 (BalanceConc!924) Bool)

(assert (=> b!88139 (= res!44421 (not (isEmpty!557 (_2!994 lt!21401))))))

(declare-datatypes ((LexerInterface!221 0))(
  ( (LexerInterfaceExt!218 (__x!1734 Int)) (Lexer!219) )
))
(declare-fun thiss!19403 () LexerInterface!221)

(declare-fun input!2238 () List!1508)

(declare-fun lex!129 (LexerInterface!221 List!1510 BalanceConc!924) tuple2!1574)

(declare-fun seqFromList!166 (List!1508) BalanceConc!924)

(assert (=> b!88139 (= lt!21401 (lex!129 thiss!19403 rules!2471 (seqFromList!166 input!2238)))))

(declare-fun b!88140 () Bool)

(declare-fun e!49107 () Bool)

(declare-fun tp_is_empty!717 () Bool)

(declare-fun tp!53132 () Bool)

(assert (=> b!88140 (= e!49107 (and tp_is_empty!717 tp!53132))))

(declare-fun b!88141 () Bool)

(declare-fun e!49111 () Bool)

(assert (=> b!88141 (= e!49105 e!49111)))

(declare-fun res!44419 () Bool)

(assert (=> b!88141 (=> (not res!44419) (not e!49111))))

(declare-fun lt!21400 () Bool)

(declare-fun lt!21403 () List!1511)

(get-info :version)

(assert (=> b!88141 (= res!44419 (and (or lt!21400 (not ((_ is Nil!1505) (t!20700 lt!21403)))) (not lt!21400)))))

(assert (=> b!88141 (= lt!21400 (not ((_ is Cons!1505) lt!21403)))))

(declare-fun list!541 (BalanceConc!926) List!1511)

(assert (=> b!88141 (= lt!21403 (list!541 (_1!994 lt!21401)))))

(assert (=> b!88142 (= e!49109 (and tp!53133 tp!53131))))

(declare-fun b!88143 () Bool)

(declare-datatypes ((tuple2!1576 0))(
  ( (tuple2!1577 (_1!995 Token!418) (_2!995 List!1508)) )
))
(declare-fun lt!21398 () tuple2!1576)

(declare-fun ++!180 (List!1508 List!1508) List!1508)

(declare-fun list!542 (BalanceConc!924) List!1508)

(declare-fun charsOf!64 (Token!418) BalanceConc!924)

(assert (=> b!88143 (= e!49111 (not (= input!2238 (++!180 (list!542 (charsOf!64 (_1!995 lt!21398))) (_2!995 lt!21398)))))))

(declare-fun lt!21399 () List!1508)

(declare-fun lt!21406 () tuple2!1574)

(declare-fun lt!21408 () List!1508)

(declare-datatypes ((tuple2!1578 0))(
  ( (tuple2!1579 (_1!996 List!1511) (_2!996 List!1508)) )
))
(declare-fun tail!144 (List!1511) List!1511)

(assert (=> b!88143 (= (tuple2!1579 (list!541 (_1!994 lt!21406)) lt!21399) (tuple2!1579 (tail!144 lt!21403) lt!21408))))

(declare-datatypes ((Unit!954 0))(
  ( (Unit!955) )
))
(declare-fun lt!21402 () Unit!954)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!36 (LexerInterface!221 List!1510 List!1508 List!1511 List!1508) Unit!954)

(assert (=> b!88143 (= lt!21402 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!36 thiss!19403 rules!2471 input!2238 lt!21403 lt!21408))))

(assert (=> b!88143 (= lt!21408 (list!542 (_2!994 lt!21401)))))

(declare-fun lt!21404 () List!1508)

(assert (=> b!88143 (= (++!180 lt!21404 lt!21399) (_2!995 lt!21398))))

(assert (=> b!88143 (= lt!21399 (list!542 (_2!994 lt!21406)))))

(declare-fun print!60 (LexerInterface!221 BalanceConc!926) BalanceConc!924)

(assert (=> b!88143 (= lt!21404 (list!542 (print!60 thiss!19403 (_1!994 lt!21406))))))

(assert (=> b!88143 (= lt!21406 (lex!129 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398))))))

(declare-fun lt!21405 () Unit!954)

(declare-fun theoremInvertFromString!40 (LexerInterface!221 List!1510 List!1508) Unit!954)

(assert (=> b!88143 (= lt!21405 (theoremInvertFromString!40 thiss!19403 rules!2471 (_2!995 lt!21398)))))

(declare-datatypes ((Option!140 0))(
  ( (None!139) (Some!139 (v!12864 tuple2!1576)) )
))
(declare-fun get!382 (Option!140) tuple2!1576)

(declare-fun maxPrefix!63 (LexerInterface!221 List!1510 List!1508) Option!140)

(assert (=> b!88143 (= lt!21398 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!93 (BalanceConc!926 Token!418) BalanceConc!926)

(declare-fun seqFromList!167 (List!1511) BalanceConc!926)

(assert (=> b!88143 (= lt!21403 (list!541 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403))))))

(declare-fun lt!21407 () Unit!954)

(declare-fun seqFromListBHdTlConstructive!48 (Token!418 List!1511 BalanceConc!926) Unit!954)

(assert (=> b!88143 (= lt!21407 (seqFromListBHdTlConstructive!48 (h!6902 lt!21403) (t!20700 lt!21403) (_1!994 lt!21401)))))

(declare-fun b!88144 () Bool)

(declare-fun res!44423 () Bool)

(assert (=> b!88144 (=> (not res!44423) (not e!49110))))

(declare-fun isEmpty!558 (List!1510) Bool)

(assert (=> b!88144 (= res!44423 (not (isEmpty!558 rules!2471)))))

(declare-fun b!88145 () Bool)

(declare-fun res!44420 () Bool)

(assert (=> b!88145 (=> (not res!44420) (not e!49110))))

(declare-fun rulesInvariant!215 (LexerInterface!221 List!1510) Bool)

(assert (=> b!88145 (= res!44420 (rulesInvariant!215 thiss!19403 rules!2471))))

(declare-fun res!44422 () Bool)

(assert (=> start!7694 (=> (not res!44422) (not e!49110))))

(assert (=> start!7694 (= res!44422 ((_ is Lexer!219) thiss!19403))))

(assert (=> start!7694 e!49110))

(assert (=> start!7694 true))

(declare-fun e!49106 () Bool)

(assert (=> start!7694 e!49106))

(assert (=> start!7694 e!49107))

(declare-fun b!88146 () Bool)

(declare-fun tp!53134 () Bool)

(assert (=> b!88146 (= e!49106 (and e!49112 tp!53134))))

(assert (= (and start!7694 res!44422) b!88144))

(assert (= (and b!88144 res!44423) b!88145))

(assert (= (and b!88145 res!44420) b!88139))

(assert (= (and b!88139 res!44421) b!88141))

(assert (= (and b!88141 res!44419) b!88143))

(assert (= b!88138 b!88142))

(assert (= b!88146 b!88138))

(assert (= (and start!7694 ((_ is Cons!1504) rules!2471)) b!88146))

(assert (= (and start!7694 ((_ is Cons!1502) input!2238)) b!88140))

(declare-fun m!67578 () Bool)

(assert (=> b!88138 m!67578))

(declare-fun m!67580 () Bool)

(assert (=> b!88138 m!67580))

(declare-fun m!67582 () Bool)

(assert (=> b!88145 m!67582))

(declare-fun m!67584 () Bool)

(assert (=> b!88144 m!67584))

(declare-fun m!67586 () Bool)

(assert (=> b!88139 m!67586))

(declare-fun m!67588 () Bool)

(assert (=> b!88139 m!67588))

(assert (=> b!88139 m!67588))

(declare-fun m!67590 () Bool)

(assert (=> b!88139 m!67590))

(declare-fun m!67592 () Bool)

(assert (=> b!88141 m!67592))

(declare-fun m!67594 () Bool)

(assert (=> b!88143 m!67594))

(declare-fun m!67596 () Bool)

(assert (=> b!88143 m!67596))

(declare-fun m!67598 () Bool)

(assert (=> b!88143 m!67598))

(declare-fun m!67600 () Bool)

(assert (=> b!88143 m!67600))

(declare-fun m!67602 () Bool)

(assert (=> b!88143 m!67602))

(declare-fun m!67604 () Bool)

(assert (=> b!88143 m!67604))

(declare-fun m!67606 () Bool)

(assert (=> b!88143 m!67606))

(declare-fun m!67608 () Bool)

(assert (=> b!88143 m!67608))

(assert (=> b!88143 m!67594))

(declare-fun m!67610 () Bool)

(assert (=> b!88143 m!67610))

(declare-fun m!67612 () Bool)

(assert (=> b!88143 m!67612))

(declare-fun m!67614 () Bool)

(assert (=> b!88143 m!67614))

(declare-fun m!67616 () Bool)

(assert (=> b!88143 m!67616))

(declare-fun m!67618 () Bool)

(assert (=> b!88143 m!67618))

(assert (=> b!88143 m!67618))

(declare-fun m!67620 () Bool)

(assert (=> b!88143 m!67620))

(declare-fun m!67622 () Bool)

(assert (=> b!88143 m!67622))

(assert (=> b!88143 m!67614))

(declare-fun m!67624 () Bool)

(assert (=> b!88143 m!67624))

(assert (=> b!88143 m!67616))

(declare-fun m!67626 () Bool)

(assert (=> b!88143 m!67626))

(assert (=> b!88143 m!67622))

(declare-fun m!67628 () Bool)

(assert (=> b!88143 m!67628))

(assert (=> b!88143 m!67600))

(declare-fun m!67630 () Bool)

(assert (=> b!88143 m!67630))

(declare-fun m!67632 () Bool)

(assert (=> b!88143 m!67632))

(assert (=> b!88143 m!67608))

(check-sat (not b!88145) (not b!88144) (not b_next!2721) (not b!88146) (not b_next!2723) (not b!88138) (not b!88140) tp_is_empty!717 (not b!88139) b_and!4001 b_and!3999 (not b!88141) (not b!88143))
(check-sat b_and!4001 b_and!3999 (not b_next!2723) (not b_next!2721))
(get-model)

(declare-fun d!18536 () Bool)

(declare-fun list!545 (Conc!461) List!1511)

(assert (=> d!18536 (= (list!541 (_1!994 lt!21401)) (list!545 (c!21984 (_1!994 lt!21401))))))

(declare-fun bs!8907 () Bool)

(assert (= bs!8907 d!18536))

(declare-fun m!67680 () Bool)

(assert (=> bs!8907 m!67680))

(assert (=> b!88141 d!18536))

(declare-fun d!18538 () Bool)

(declare-fun res!44446 () Bool)

(declare-fun e!49130 () Bool)

(assert (=> d!18538 (=> (not res!44446) (not e!49130))))

(declare-fun rulesValid!73 (LexerInterface!221 List!1510) Bool)

(assert (=> d!18538 (= res!44446 (rulesValid!73 thiss!19403 rules!2471))))

(assert (=> d!18538 (= (rulesInvariant!215 thiss!19403 rules!2471) e!49130)))

(declare-fun b!88172 () Bool)

(declare-datatypes ((List!1513 0))(
  ( (Nil!1507) (Cons!1507 (h!6904 String!1986) (t!20710 List!1513)) )
))
(declare-fun noDuplicateTag!73 (LexerInterface!221 List!1510 List!1513) Bool)

(assert (=> b!88172 (= e!49130 (noDuplicateTag!73 thiss!19403 rules!2471 Nil!1507))))

(assert (= (and d!18538 res!44446) b!88172))

(declare-fun m!67682 () Bool)

(assert (=> d!18538 m!67682))

(declare-fun m!67684 () Bool)

(assert (=> b!88172 m!67684))

(assert (=> b!88145 d!18538))

(declare-fun d!18540 () Bool)

(declare-fun lt!21420 () Bool)

(declare-fun isEmpty!563 (List!1508) Bool)

(assert (=> d!18540 (= lt!21420 (isEmpty!563 (list!542 (_2!994 lt!21401))))))

(declare-fun isEmpty!564 (Conc!460) Bool)

(assert (=> d!18540 (= lt!21420 (isEmpty!564 (c!21982 (_2!994 lt!21401))))))

(assert (=> d!18540 (= (isEmpty!557 (_2!994 lt!21401)) lt!21420)))

(declare-fun bs!8908 () Bool)

(assert (= bs!8908 d!18540))

(assert (=> bs!8908 m!67630))

(assert (=> bs!8908 m!67630))

(declare-fun m!67686 () Bool)

(assert (=> bs!8908 m!67686))

(declare-fun m!67688 () Bool)

(assert (=> bs!8908 m!67688))

(assert (=> b!88139 d!18540))

(declare-fun b!88227 () Bool)

(declare-fun e!49158 () Bool)

(declare-fun lt!21449 () tuple2!1574)

(assert (=> b!88227 (= e!49158 (= (_2!994 lt!21449) (seqFromList!166 input!2238)))))

(declare-fun b!88228 () Bool)

(declare-fun e!49157 () Bool)

(declare-fun isEmpty!565 (BalanceConc!926) Bool)

(assert (=> b!88228 (= e!49157 (not (isEmpty!565 (_1!994 lt!21449))))))

(declare-fun b!88229 () Bool)

(declare-fun e!49159 () Bool)

(declare-fun lexList!53 (LexerInterface!221 List!1510 List!1508) tuple2!1578)

(assert (=> b!88229 (= e!49159 (= (list!542 (_2!994 lt!21449)) (_2!996 (lexList!53 thiss!19403 rules!2471 (list!542 (seqFromList!166 input!2238))))))))

(declare-fun b!88230 () Bool)

(assert (=> b!88230 (= e!49158 e!49157)))

(declare-fun res!44485 () Bool)

(declare-fun size!1297 (BalanceConc!924) Int)

(assert (=> b!88230 (= res!44485 (< (size!1297 (_2!994 lt!21449)) (size!1297 (seqFromList!166 input!2238))))))

(assert (=> b!88230 (=> (not res!44485) (not e!49157))))

(declare-fun b!88231 () Bool)

(declare-fun res!44487 () Bool)

(assert (=> b!88231 (=> (not res!44487) (not e!49159))))

(assert (=> b!88231 (= res!44487 (= (list!541 (_1!994 lt!21449)) (_1!996 (lexList!53 thiss!19403 rules!2471 (list!542 (seqFromList!166 input!2238))))))))

(declare-fun d!18542 () Bool)

(assert (=> d!18542 e!49159))

(declare-fun res!44486 () Bool)

(assert (=> d!18542 (=> (not res!44486) (not e!49159))))

(assert (=> d!18542 (= res!44486 e!49158)))

(declare-fun c!21997 () Bool)

(declare-fun size!1298 (BalanceConc!926) Int)

(assert (=> d!18542 (= c!21997 (> (size!1298 (_1!994 lt!21449)) 0))))

(declare-fun lexTailRecV2!50 (LexerInterface!221 List!1510 BalanceConc!924 BalanceConc!924 BalanceConc!924 BalanceConc!926) tuple2!1574)

(assert (=> d!18542 (= lt!21449 (lexTailRecV2!50 thiss!19403 rules!2471 (seqFromList!166 input!2238) (BalanceConc!925 Empty!460) (seqFromList!166 input!2238) (BalanceConc!927 Empty!461)))))

(assert (=> d!18542 (= (lex!129 thiss!19403 rules!2471 (seqFromList!166 input!2238)) lt!21449)))

(assert (= (and d!18542 c!21997) b!88230))

(assert (= (and d!18542 (not c!21997)) b!88227))

(assert (= (and b!88230 res!44485) b!88228))

(assert (= (and d!18542 res!44486) b!88231))

(assert (= (and b!88231 res!44487) b!88229))

(declare-fun m!67760 () Bool)

(assert (=> b!88229 m!67760))

(assert (=> b!88229 m!67588))

(declare-fun m!67762 () Bool)

(assert (=> b!88229 m!67762))

(assert (=> b!88229 m!67762))

(declare-fun m!67764 () Bool)

(assert (=> b!88229 m!67764))

(declare-fun m!67766 () Bool)

(assert (=> b!88228 m!67766))

(declare-fun m!67768 () Bool)

(assert (=> b!88231 m!67768))

(assert (=> b!88231 m!67588))

(assert (=> b!88231 m!67762))

(assert (=> b!88231 m!67762))

(assert (=> b!88231 m!67764))

(declare-fun m!67770 () Bool)

(assert (=> d!18542 m!67770))

(assert (=> d!18542 m!67588))

(assert (=> d!18542 m!67588))

(declare-fun m!67772 () Bool)

(assert (=> d!18542 m!67772))

(declare-fun m!67774 () Bool)

(assert (=> b!88230 m!67774))

(assert (=> b!88230 m!67588))

(declare-fun m!67776 () Bool)

(assert (=> b!88230 m!67776))

(assert (=> b!88139 d!18542))

(declare-fun d!18554 () Bool)

(declare-fun fromListB!62 (List!1508) BalanceConc!924)

(assert (=> d!18554 (= (seqFromList!166 input!2238) (fromListB!62 input!2238))))

(declare-fun bs!8910 () Bool)

(assert (= bs!8910 d!18554))

(declare-fun m!67778 () Bool)

(assert (=> bs!8910 m!67778))

(assert (=> b!88139 d!18554))

(declare-fun d!18556 () Bool)

(assert (=> d!18556 (= (isEmpty!558 rules!2471) ((_ is Nil!1504) rules!2471))))

(assert (=> b!88144 d!18556))

(declare-fun b!88251 () Bool)

(declare-fun res!44506 () Bool)

(declare-fun e!49168 () Bool)

(assert (=> b!88251 (=> (not res!44506) (not e!49168))))

(declare-fun lt!21464 () Option!140)

(declare-fun size!1299 (List!1508) Int)

(assert (=> b!88251 (= res!44506 (< (size!1299 (_2!995 (get!382 lt!21464))) (size!1299 input!2238)))))

(declare-fun b!88252 () Bool)

(declare-fun contains!229 (List!1510 Rule!458) Bool)

(assert (=> b!88252 (= e!49168 (contains!229 rules!2471 (rule!820 (_1!995 (get!382 lt!21464)))))))

(declare-fun call!4032 () Option!140)

(declare-fun bm!4027 () Bool)

(declare-fun maxPrefixOneRule!27 (LexerInterface!221 Rule!458 List!1508) Option!140)

(assert (=> bm!4027 (= call!4032 (maxPrefixOneRule!27 thiss!19403 (h!6901 rules!2471) input!2238))))

(declare-fun b!88254 () Bool)

(declare-fun res!44507 () Bool)

(assert (=> b!88254 (=> (not res!44507) (not e!49168))))

(assert (=> b!88254 (= res!44507 (= (list!542 (charsOf!64 (_1!995 (get!382 lt!21464)))) (originalCharacters!380 (_1!995 (get!382 lt!21464)))))))

(declare-fun b!88255 () Bool)

(declare-fun res!44504 () Bool)

(assert (=> b!88255 (=> (not res!44504) (not e!49168))))

(assert (=> b!88255 (= res!44504 (= (++!180 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464)))) (_2!995 (get!382 lt!21464))) input!2238))))

(declare-fun b!88253 () Bool)

(declare-fun e!49169 () Option!140)

(declare-fun lt!21462 () Option!140)

(declare-fun lt!21461 () Option!140)

(assert (=> b!88253 (= e!49169 (ite (and ((_ is None!139) lt!21462) ((_ is None!139) lt!21461)) None!139 (ite ((_ is None!139) lt!21461) lt!21462 (ite ((_ is None!139) lt!21462) lt!21461 (ite (>= (size!1293 (_1!995 (v!12864 lt!21462))) (size!1293 (_1!995 (v!12864 lt!21461)))) lt!21462 lt!21461)))))))

(assert (=> b!88253 (= lt!21462 call!4032)))

(assert (=> b!88253 (= lt!21461 (maxPrefix!63 thiss!19403 (t!20699 rules!2471) input!2238))))

(declare-fun d!18558 () Bool)

(declare-fun e!49167 () Bool)

(assert (=> d!18558 e!49167))

(declare-fun res!44509 () Bool)

(assert (=> d!18558 (=> res!44509 e!49167)))

(declare-fun isEmpty!566 (Option!140) Bool)

(assert (=> d!18558 (= res!44509 (isEmpty!566 lt!21464))))

(assert (=> d!18558 (= lt!21464 e!49169)))

(declare-fun c!22000 () Bool)

(assert (=> d!18558 (= c!22000 (and ((_ is Cons!1504) rules!2471) ((_ is Nil!1504) (t!20699 rules!2471))))))

(declare-fun lt!21463 () Unit!954)

(declare-fun lt!21465 () Unit!954)

(assert (=> d!18558 (= lt!21463 lt!21465)))

(declare-fun isPrefix!29 (List!1508 List!1508) Bool)

(assert (=> d!18558 (isPrefix!29 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!29 (List!1508 List!1508) Unit!954)

(assert (=> d!18558 (= lt!21465 (lemmaIsPrefixRefl!29 input!2238 input!2238))))

(declare-fun rulesValidInductive!54 (LexerInterface!221 List!1510) Bool)

(assert (=> d!18558 (rulesValidInductive!54 thiss!19403 rules!2471)))

(assert (=> d!18558 (= (maxPrefix!63 thiss!19403 rules!2471 input!2238) lt!21464)))

(declare-fun b!88256 () Bool)

(declare-fun res!44503 () Bool)

(assert (=> b!88256 (=> (not res!44503) (not e!49168))))

(declare-fun matchR!31 (Regex!397 List!1508) Bool)

(assert (=> b!88256 (= res!44503 (matchR!31 (regex!329 (rule!820 (_1!995 (get!382 lt!21464)))) (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))))))

(declare-fun b!88257 () Bool)

(assert (=> b!88257 (= e!49167 e!49168)))

(declare-fun res!44508 () Bool)

(assert (=> b!88257 (=> (not res!44508) (not e!49168))))

(declare-fun isDefined!40 (Option!140) Bool)

(assert (=> b!88257 (= res!44508 (isDefined!40 lt!21464))))

(declare-fun b!88258 () Bool)

(declare-fun res!44505 () Bool)

(assert (=> b!88258 (=> (not res!44505) (not e!49168))))

(declare-fun apply!219 (TokenValueInjection!462 BalanceConc!924) TokenValue!319)

(assert (=> b!88258 (= res!44505 (= (value!12272 (_1!995 (get!382 lt!21464))) (apply!219 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464)))) (seqFromList!166 (originalCharacters!380 (_1!995 (get!382 lt!21464)))))))))

(declare-fun b!88259 () Bool)

(assert (=> b!88259 (= e!49169 call!4032)))

(assert (= (and d!18558 c!22000) b!88259))

(assert (= (and d!18558 (not c!22000)) b!88253))

(assert (= (or b!88259 b!88253) bm!4027))

(assert (= (and d!18558 (not res!44509)) b!88257))

(assert (= (and b!88257 res!44508) b!88254))

(assert (= (and b!88254 res!44507) b!88251))

(assert (= (and b!88251 res!44506) b!88255))

(assert (= (and b!88255 res!44504) b!88258))

(assert (= (and b!88258 res!44505) b!88256))

(assert (= (and b!88256 res!44503) b!88252))

(declare-fun m!67780 () Bool)

(assert (=> bm!4027 m!67780))

(declare-fun m!67782 () Bool)

(assert (=> d!18558 m!67782))

(declare-fun m!67784 () Bool)

(assert (=> d!18558 m!67784))

(declare-fun m!67786 () Bool)

(assert (=> d!18558 m!67786))

(declare-fun m!67788 () Bool)

(assert (=> d!18558 m!67788))

(declare-fun m!67790 () Bool)

(assert (=> b!88258 m!67790))

(declare-fun m!67792 () Bool)

(assert (=> b!88258 m!67792))

(assert (=> b!88258 m!67792))

(declare-fun m!67794 () Bool)

(assert (=> b!88258 m!67794))

(assert (=> b!88254 m!67790))

(declare-fun m!67796 () Bool)

(assert (=> b!88254 m!67796))

(assert (=> b!88254 m!67796))

(declare-fun m!67798 () Bool)

(assert (=> b!88254 m!67798))

(assert (=> b!88252 m!67790))

(declare-fun m!67800 () Bool)

(assert (=> b!88252 m!67800))

(declare-fun m!67802 () Bool)

(assert (=> b!88253 m!67802))

(declare-fun m!67804 () Bool)

(assert (=> b!88257 m!67804))

(assert (=> b!88256 m!67790))

(assert (=> b!88256 m!67796))

(assert (=> b!88256 m!67796))

(assert (=> b!88256 m!67798))

(assert (=> b!88256 m!67798))

(declare-fun m!67806 () Bool)

(assert (=> b!88256 m!67806))

(assert (=> b!88255 m!67790))

(assert (=> b!88255 m!67796))

(assert (=> b!88255 m!67796))

(assert (=> b!88255 m!67798))

(assert (=> b!88255 m!67798))

(declare-fun m!67808 () Bool)

(assert (=> b!88255 m!67808))

(assert (=> b!88251 m!67790))

(declare-fun m!67810 () Bool)

(assert (=> b!88251 m!67810))

(declare-fun m!67812 () Bool)

(assert (=> b!88251 m!67812))

(assert (=> b!88143 d!18558))

(declare-fun d!18560 () Bool)

(declare-fun list!546 (Conc!460) List!1508)

(assert (=> d!18560 (= (list!542 (_2!994 lt!21406)) (list!546 (c!21982 (_2!994 lt!21406))))))

(declare-fun bs!8911 () Bool)

(assert (= bs!8911 d!18560))

(declare-fun m!67814 () Bool)

(assert (=> bs!8911 m!67814))

(assert (=> b!88143 d!18560))

(declare-fun d!18562 () Bool)

(assert (=> d!18562 (= (list!542 (_2!994 lt!21401)) (list!546 (c!21982 (_2!994 lt!21401))))))

(declare-fun bs!8912 () Bool)

(assert (= bs!8912 d!18562))

(declare-fun m!67816 () Bool)

(assert (=> bs!8912 m!67816))

(assert (=> b!88143 d!18562))

(declare-fun b!88270 () Bool)

(declare-fun res!44514 () Bool)

(declare-fun e!49175 () Bool)

(assert (=> b!88270 (=> (not res!44514) (not e!49175))))

(declare-fun lt!21468 () List!1508)

(assert (=> b!88270 (= res!44514 (= (size!1299 lt!21468) (+ (size!1299 (list!542 (charsOf!64 (_1!995 lt!21398)))) (size!1299 (_2!995 lt!21398)))))))

(declare-fun b!88271 () Bool)

(assert (=> b!88271 (= e!49175 (or (not (= (_2!995 lt!21398) Nil!1502)) (= lt!21468 (list!542 (charsOf!64 (_1!995 lt!21398))))))))

(declare-fun d!18564 () Bool)

(assert (=> d!18564 e!49175))

(declare-fun res!44515 () Bool)

(assert (=> d!18564 (=> (not res!44515) (not e!49175))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!92 (List!1508) (InoxSet C!1716))

(assert (=> d!18564 (= res!44515 (= (content!92 lt!21468) ((_ map or) (content!92 (list!542 (charsOf!64 (_1!995 lt!21398)))) (content!92 (_2!995 lt!21398)))))))

(declare-fun e!49174 () List!1508)

(assert (=> d!18564 (= lt!21468 e!49174)))

(declare-fun c!22003 () Bool)

(assert (=> d!18564 (= c!22003 ((_ is Nil!1502) (list!542 (charsOf!64 (_1!995 lt!21398)))))))

(assert (=> d!18564 (= (++!180 (list!542 (charsOf!64 (_1!995 lt!21398))) (_2!995 lt!21398)) lt!21468)))

(declare-fun b!88269 () Bool)

(assert (=> b!88269 (= e!49174 (Cons!1502 (h!6899 (list!542 (charsOf!64 (_1!995 lt!21398)))) (++!180 (t!20697 (list!542 (charsOf!64 (_1!995 lt!21398)))) (_2!995 lt!21398))))))

(declare-fun b!88268 () Bool)

(assert (=> b!88268 (= e!49174 (_2!995 lt!21398))))

(assert (= (and d!18564 c!22003) b!88268))

(assert (= (and d!18564 (not c!22003)) b!88269))

(assert (= (and d!18564 res!44515) b!88270))

(assert (= (and b!88270 res!44514) b!88271))

(declare-fun m!67818 () Bool)

(assert (=> b!88270 m!67818))

(assert (=> b!88270 m!67594))

(declare-fun m!67820 () Bool)

(assert (=> b!88270 m!67820))

(declare-fun m!67822 () Bool)

(assert (=> b!88270 m!67822))

(declare-fun m!67824 () Bool)

(assert (=> d!18564 m!67824))

(assert (=> d!18564 m!67594))

(declare-fun m!67826 () Bool)

(assert (=> d!18564 m!67826))

(declare-fun m!67828 () Bool)

(assert (=> d!18564 m!67828))

(declare-fun m!67830 () Bool)

(assert (=> b!88269 m!67830))

(assert (=> b!88143 d!18564))

(declare-fun d!18566 () Bool)

(declare-fun e!49178 () Bool)

(assert (=> d!18566 e!49178))

(declare-fun res!44518 () Bool)

(assert (=> d!18566 (=> (not res!44518) (not e!49178))))

(declare-fun isBalanced!100 (Conc!461) Bool)

(declare-fun prepend!95 (Conc!461 Token!418) Conc!461)

(assert (=> d!18566 (= res!44518 (isBalanced!100 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403))))))

(declare-fun lt!21471 () BalanceConc!926)

(assert (=> d!18566 (= lt!21471 (BalanceConc!927 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403))))))

(assert (=> d!18566 (= (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403)) lt!21471)))

(declare-fun b!88274 () Bool)

(assert (=> b!88274 (= e!49178 (= (list!541 lt!21471) (Cons!1505 (h!6902 lt!21403) (list!541 (seqFromList!167 (t!20700 lt!21403))))))))

(assert (= (and d!18566 res!44518) b!88274))

(declare-fun m!67832 () Bool)

(assert (=> d!18566 m!67832))

(assert (=> d!18566 m!67832))

(declare-fun m!67834 () Bool)

(assert (=> d!18566 m!67834))

(declare-fun m!67836 () Bool)

(assert (=> b!88274 m!67836))

(assert (=> b!88274 m!67616))

(declare-fun m!67838 () Bool)

(assert (=> b!88274 m!67838))

(assert (=> b!88143 d!18566))

(declare-fun d!18568 () Bool)

(declare-fun fromListB!63 (List!1511) BalanceConc!926)

(assert (=> d!18568 (= (seqFromList!167 (t!20700 lt!21403)) (fromListB!63 (t!20700 lt!21403)))))

(declare-fun bs!8913 () Bool)

(assert (= bs!8913 d!18568))

(declare-fun m!67840 () Bool)

(assert (=> bs!8913 m!67840))

(assert (=> b!88143 d!18568))

(declare-fun d!18570 () Bool)

(assert (=> d!18570 (= (list!542 (print!60 thiss!19403 (_1!994 lt!21406))) (list!546 (c!21982 (print!60 thiss!19403 (_1!994 lt!21406)))))))

(declare-fun bs!8914 () Bool)

(assert (= bs!8914 d!18570))

(declare-fun m!67842 () Bool)

(assert (=> bs!8914 m!67842))

(assert (=> b!88143 d!18570))

(declare-fun d!18572 () Bool)

(declare-fun lt!21476 () BalanceConc!924)

(declare-fun printList!25 (LexerInterface!221 List!1511) List!1508)

(assert (=> d!18572 (= (list!542 lt!21476) (printList!25 thiss!19403 (list!541 (_1!994 lt!21406))))))

(declare-fun printTailRec!25 (LexerInterface!221 BalanceConc!926 Int BalanceConc!924) BalanceConc!924)

(assert (=> d!18572 (= lt!21476 (printTailRec!25 thiss!19403 (_1!994 lt!21406) 0 (BalanceConc!925 Empty!460)))))

(assert (=> d!18572 (= (print!60 thiss!19403 (_1!994 lt!21406)) lt!21476)))

(declare-fun bs!8915 () Bool)

(assert (= bs!8915 d!18572))

(declare-fun m!67844 () Bool)

(assert (=> bs!8915 m!67844))

(assert (=> bs!8915 m!67626))

(assert (=> bs!8915 m!67626))

(declare-fun m!67846 () Bool)

(assert (=> bs!8915 m!67846))

(declare-fun m!67848 () Bool)

(assert (=> bs!8915 m!67848))

(assert (=> b!88143 d!18572))

(declare-fun d!18574 () Bool)

(assert (=> d!18574 (= (list!541 (_1!994 lt!21401)) (list!541 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403))))))

(declare-fun lt!21483 () Unit!954)

(declare-fun choose!1336 (Token!418 List!1511 BalanceConc!926) Unit!954)

(assert (=> d!18574 (= lt!21483 (choose!1336 (h!6902 lt!21403) (t!20700 lt!21403) (_1!994 lt!21401)))))

(declare-fun $colon$colon!28 (List!1511 Token!418) List!1511)

(assert (=> d!18574 (= (list!541 (_1!994 lt!21401)) (list!541 (seqFromList!167 ($colon$colon!28 (t!20700 lt!21403) (h!6902 lt!21403)))))))

(assert (=> d!18574 (= (seqFromListBHdTlConstructive!48 (h!6902 lt!21403) (t!20700 lt!21403) (_1!994 lt!21401)) lt!21483)))

(declare-fun bs!8918 () Bool)

(assert (= bs!8918 d!18574))

(assert (=> bs!8918 m!67616))

(declare-fun m!67862 () Bool)

(assert (=> bs!8918 m!67862))

(declare-fun m!67864 () Bool)

(assert (=> bs!8918 m!67864))

(declare-fun m!67866 () Bool)

(assert (=> bs!8918 m!67866))

(declare-fun m!67868 () Bool)

(assert (=> bs!8918 m!67868))

(assert (=> bs!8918 m!67618))

(assert (=> bs!8918 m!67620))

(assert (=> bs!8918 m!67592))

(assert (=> bs!8918 m!67862))

(assert (=> bs!8918 m!67866))

(assert (=> bs!8918 m!67616))

(assert (=> bs!8918 m!67618))

(assert (=> b!88143 d!18574))

(declare-fun d!18580 () Bool)

(assert (=> d!18580 (= (list!542 (charsOf!64 (_1!995 lt!21398))) (list!546 (c!21982 (charsOf!64 (_1!995 lt!21398)))))))

(declare-fun bs!8919 () Bool)

(assert (= bs!8919 d!18580))

(declare-fun m!67870 () Bool)

(assert (=> bs!8919 m!67870))

(assert (=> b!88143 d!18580))

(declare-fun d!18582 () Bool)

(assert (=> d!18582 (= (list!541 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403))) (list!545 (c!21984 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403)))))))

(declare-fun bs!8920 () Bool)

(assert (= bs!8920 d!18582))

(declare-fun m!67872 () Bool)

(assert (=> bs!8920 m!67872))

(assert (=> b!88143 d!18582))

(declare-fun b!88277 () Bool)

(declare-fun res!44519 () Bool)

(declare-fun e!49180 () Bool)

(assert (=> b!88277 (=> (not res!44519) (not e!49180))))

(declare-fun lt!21486 () List!1508)

(assert (=> b!88277 (= res!44519 (= (size!1299 lt!21486) (+ (size!1299 lt!21404) (size!1299 lt!21399))))))

(declare-fun b!88278 () Bool)

(assert (=> b!88278 (= e!49180 (or (not (= lt!21399 Nil!1502)) (= lt!21486 lt!21404)))))

(declare-fun d!18584 () Bool)

(assert (=> d!18584 e!49180))

(declare-fun res!44520 () Bool)

(assert (=> d!18584 (=> (not res!44520) (not e!49180))))

(assert (=> d!18584 (= res!44520 (= (content!92 lt!21486) ((_ map or) (content!92 lt!21404) (content!92 lt!21399))))))

(declare-fun e!49179 () List!1508)

(assert (=> d!18584 (= lt!21486 e!49179)))

(declare-fun c!22005 () Bool)

(assert (=> d!18584 (= c!22005 ((_ is Nil!1502) lt!21404))))

(assert (=> d!18584 (= (++!180 lt!21404 lt!21399) lt!21486)))

(declare-fun b!88276 () Bool)

(assert (=> b!88276 (= e!49179 (Cons!1502 (h!6899 lt!21404) (++!180 (t!20697 lt!21404) lt!21399)))))

(declare-fun b!88275 () Bool)

(assert (=> b!88275 (= e!49179 lt!21399)))

(assert (= (and d!18584 c!22005) b!88275))

(assert (= (and d!18584 (not c!22005)) b!88276))

(assert (= (and d!18584 res!44520) b!88277))

(assert (= (and b!88277 res!44519) b!88278))

(declare-fun m!67874 () Bool)

(assert (=> b!88277 m!67874))

(declare-fun m!67876 () Bool)

(assert (=> b!88277 m!67876))

(declare-fun m!67878 () Bool)

(assert (=> b!88277 m!67878))

(declare-fun m!67880 () Bool)

(assert (=> d!18584 m!67880))

(declare-fun m!67882 () Bool)

(assert (=> d!18584 m!67882))

(declare-fun m!67884 () Bool)

(assert (=> d!18584 m!67884))

(declare-fun m!67886 () Bool)

(assert (=> b!88276 m!67886))

(assert (=> b!88143 d!18584))

(declare-fun d!18586 () Bool)

(declare-fun lt!21498 () tuple2!1574)

(assert (=> d!18586 (= (++!180 (list!542 (print!60 thiss!19403 (_1!994 lt!21498))) (list!542 (_2!994 lt!21498))) (_2!995 lt!21398))))

(assert (=> d!18586 (= lt!21498 (lex!129 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398))))))

(declare-fun lt!21497 () Unit!954)

(declare-fun choose!1337 (LexerInterface!221 List!1510 List!1508) Unit!954)

(assert (=> d!18586 (= lt!21497 (choose!1337 thiss!19403 rules!2471 (_2!995 lt!21398)))))

(assert (=> d!18586 (not (isEmpty!558 rules!2471))))

(assert (=> d!18586 (= (theoremInvertFromString!40 thiss!19403 rules!2471 (_2!995 lt!21398)) lt!21497)))

(declare-fun bs!8927 () Bool)

(assert (= bs!8927 d!18586))

(declare-fun m!67944 () Bool)

(assert (=> bs!8927 m!67944))

(declare-fun m!67946 () Bool)

(assert (=> bs!8927 m!67946))

(declare-fun m!67948 () Bool)

(assert (=> bs!8927 m!67948))

(assert (=> bs!8927 m!67946))

(assert (=> bs!8927 m!67584))

(assert (=> bs!8927 m!67614))

(assert (=> bs!8927 m!67624))

(declare-fun m!67950 () Bool)

(assert (=> bs!8927 m!67950))

(assert (=> bs!8927 m!67948))

(assert (=> bs!8927 m!67950))

(declare-fun m!67952 () Bool)

(assert (=> bs!8927 m!67952))

(assert (=> bs!8927 m!67614))

(assert (=> b!88143 d!18586))

(declare-fun d!18606 () Bool)

(assert (=> d!18606 (= (tail!144 lt!21403) (t!20700 lt!21403))))

(assert (=> b!88143 d!18606))

(declare-fun d!18608 () Bool)

(assert (=> d!18608 (= (list!541 (_1!994 lt!21406)) (list!545 (c!21984 (_1!994 lt!21406))))))

(declare-fun bs!8928 () Bool)

(assert (= bs!8928 d!18608))

(declare-fun m!67954 () Bool)

(assert (=> bs!8928 m!67954))

(assert (=> b!88143 d!18608))

(declare-fun d!18610 () Bool)

(declare-fun lt!21501 () BalanceConc!924)

(assert (=> d!18610 (= (list!542 lt!21501) (originalCharacters!380 (_1!995 lt!21398)))))

(declare-fun dynLambda!380 (Int TokenValue!319) BalanceConc!924)

(assert (=> d!18610 (= lt!21501 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398))))))

(assert (=> d!18610 (= (charsOf!64 (_1!995 lt!21398)) lt!21501)))

(declare-fun b_lambda!1015 () Bool)

(assert (=> (not b_lambda!1015) (not d!18610)))

(declare-fun t!20707 () Bool)

(declare-fun tb!2719 () Bool)

(assert (=> (and b!88142 (= (toChars!715 (transformation!329 (h!6901 rules!2471))) (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398))))) t!20707) tb!2719))

(declare-fun b!88322 () Bool)

(declare-fun e!49206 () Bool)

(declare-fun tp!53170 () Bool)

(declare-fun inv!1857 (Conc!460) Bool)

(assert (=> b!88322 (= e!49206 (and (inv!1857 (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398))))) tp!53170))))

(declare-fun result!3904 () Bool)

(declare-fun inv!1858 (BalanceConc!924) Bool)

(assert (=> tb!2719 (= result!3904 (and (inv!1858 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398)))) e!49206))))

(assert (= tb!2719 b!88322))

(declare-fun m!67956 () Bool)

(assert (=> b!88322 m!67956))

(declare-fun m!67958 () Bool)

(assert (=> tb!2719 m!67958))

(assert (=> d!18610 t!20707))

(declare-fun b_and!4009 () Bool)

(assert (= b_and!4001 (and (=> t!20707 result!3904) b_and!4009)))

(declare-fun m!67960 () Bool)

(assert (=> d!18610 m!67960))

(declare-fun m!67962 () Bool)

(assert (=> d!18610 m!67962))

(assert (=> b!88143 d!18610))

(declare-fun b!88323 () Bool)

(declare-fun e!49208 () Bool)

(declare-fun lt!21502 () tuple2!1574)

(assert (=> b!88323 (= e!49208 (= (_2!994 lt!21502) (seqFromList!166 (_2!995 lt!21398))))))

(declare-fun b!88324 () Bool)

(declare-fun e!49207 () Bool)

(assert (=> b!88324 (= e!49207 (not (isEmpty!565 (_1!994 lt!21502))))))

(declare-fun b!88325 () Bool)

(declare-fun e!49209 () Bool)

(assert (=> b!88325 (= e!49209 (= (list!542 (_2!994 lt!21502)) (_2!996 (lexList!53 thiss!19403 rules!2471 (list!542 (seqFromList!166 (_2!995 lt!21398)))))))))

(declare-fun b!88326 () Bool)

(assert (=> b!88326 (= e!49208 e!49207)))

(declare-fun res!44526 () Bool)

(assert (=> b!88326 (= res!44526 (< (size!1297 (_2!994 lt!21502)) (size!1297 (seqFromList!166 (_2!995 lt!21398)))))))

(assert (=> b!88326 (=> (not res!44526) (not e!49207))))

(declare-fun b!88327 () Bool)

(declare-fun res!44528 () Bool)

(assert (=> b!88327 (=> (not res!44528) (not e!49209))))

(assert (=> b!88327 (= res!44528 (= (list!541 (_1!994 lt!21502)) (_1!996 (lexList!53 thiss!19403 rules!2471 (list!542 (seqFromList!166 (_2!995 lt!21398)))))))))

(declare-fun d!18612 () Bool)

(assert (=> d!18612 e!49209))

(declare-fun res!44527 () Bool)

(assert (=> d!18612 (=> (not res!44527) (not e!49209))))

(assert (=> d!18612 (= res!44527 e!49208)))

(declare-fun c!22008 () Bool)

(assert (=> d!18612 (= c!22008 (> (size!1298 (_1!994 lt!21502)) 0))))

(assert (=> d!18612 (= lt!21502 (lexTailRecV2!50 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398)) (BalanceConc!925 Empty!460) (seqFromList!166 (_2!995 lt!21398)) (BalanceConc!927 Empty!461)))))

(assert (=> d!18612 (= (lex!129 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398))) lt!21502)))

(assert (= (and d!18612 c!22008) b!88326))

(assert (= (and d!18612 (not c!22008)) b!88323))

(assert (= (and b!88326 res!44526) b!88324))

(assert (= (and d!18612 res!44527) b!88327))

(assert (= (and b!88327 res!44528) b!88325))

(declare-fun m!67964 () Bool)

(assert (=> b!88325 m!67964))

(assert (=> b!88325 m!67614))

(declare-fun m!67966 () Bool)

(assert (=> b!88325 m!67966))

(assert (=> b!88325 m!67966))

(declare-fun m!67968 () Bool)

(assert (=> b!88325 m!67968))

(declare-fun m!67970 () Bool)

(assert (=> b!88324 m!67970))

(declare-fun m!67972 () Bool)

(assert (=> b!88327 m!67972))

(assert (=> b!88327 m!67614))

(assert (=> b!88327 m!67966))

(assert (=> b!88327 m!67966))

(assert (=> b!88327 m!67968))

(declare-fun m!67974 () Bool)

(assert (=> d!18612 m!67974))

(assert (=> d!18612 m!67614))

(assert (=> d!18612 m!67614))

(declare-fun m!67976 () Bool)

(assert (=> d!18612 m!67976))

(declare-fun m!67978 () Bool)

(assert (=> b!88326 m!67978))

(assert (=> b!88326 m!67614))

(declare-fun m!67980 () Bool)

(assert (=> b!88326 m!67980))

(assert (=> b!88143 d!18612))

(declare-fun d!18614 () Bool)

(assert (=> d!18614 (= (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238)) (v!12864 (maxPrefix!63 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!88143 d!18614))

(declare-fun d!18616 () Bool)

(assert (=> d!18616 (= (seqFromList!166 (_2!995 lt!21398)) (fromListB!62 (_2!995 lt!21398)))))

(declare-fun bs!8929 () Bool)

(assert (= bs!8929 d!18616))

(declare-fun m!67982 () Bool)

(assert (=> bs!8929 m!67982))

(assert (=> b!88143 d!18616))

(declare-fun d!18618 () Bool)

(declare-fun lt!21508 () tuple2!1574)

(assert (=> d!18618 (= (tuple2!1579 (list!541 (_1!994 lt!21508)) (list!542 (_2!994 lt!21508))) (tuple2!1579 (tail!144 lt!21403) lt!21408))))

(assert (=> d!18618 (= lt!21508 (lex!129 thiss!19403 rules!2471 (seqFromList!166 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!21507 () Unit!954)

(declare-fun choose!1338 (LexerInterface!221 List!1510 List!1508 List!1511 List!1508) Unit!954)

(assert (=> d!18618 (= lt!21507 (choose!1338 thiss!19403 rules!2471 input!2238 lt!21403 lt!21408))))

(assert (=> d!18618 (rulesInvariant!215 thiss!19403 rules!2471)))

(assert (=> d!18618 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!36 thiss!19403 rules!2471 input!2238 lt!21403 lt!21408) lt!21507)))

(declare-fun bs!8930 () Bool)

(assert (= bs!8930 d!18618))

(declare-fun m!67984 () Bool)

(assert (=> bs!8930 m!67984))

(assert (=> bs!8930 m!67582))

(declare-fun m!67986 () Bool)

(assert (=> bs!8930 m!67986))

(declare-fun m!67988 () Bool)

(assert (=> bs!8930 m!67988))

(assert (=> bs!8930 m!67984))

(declare-fun m!67990 () Bool)

(assert (=> bs!8930 m!67990))

(assert (=> bs!8930 m!67606))

(assert (=> bs!8930 m!67600))

(declare-fun m!67992 () Bool)

(assert (=> bs!8930 m!67992))

(assert (=> bs!8930 m!67600))

(assert (=> bs!8930 m!67602))

(assert (=> b!88143 d!18618))

(declare-fun d!18620 () Bool)

(assert (=> d!18620 (= (inv!1852 (tag!507 (h!6901 rules!2471))) (= (mod (str.len (value!12246 (tag!507 (h!6901 rules!2471)))) 2) 0))))

(assert (=> b!88138 d!18620))

(declare-fun d!18622 () Bool)

(declare-fun res!44531 () Bool)

(declare-fun e!49212 () Bool)

(assert (=> d!18622 (=> (not res!44531) (not e!49212))))

(declare-fun semiInverseModEq!65 (Int Int) Bool)

(assert (=> d!18622 (= res!44531 (semiInverseModEq!65 (toChars!715 (transformation!329 (h!6901 rules!2471))) (toValue!856 (transformation!329 (h!6901 rules!2471)))))))

(assert (=> d!18622 (= (inv!1854 (transformation!329 (h!6901 rules!2471))) e!49212)))

(declare-fun b!88330 () Bool)

(declare-fun equivClasses!61 (Int Int) Bool)

(assert (=> b!88330 (= e!49212 (equivClasses!61 (toChars!715 (transformation!329 (h!6901 rules!2471))) (toValue!856 (transformation!329 (h!6901 rules!2471)))))))

(assert (= (and d!18622 res!44531) b!88330))

(declare-fun m!67994 () Bool)

(assert (=> d!18622 m!67994))

(declare-fun m!67996 () Bool)

(assert (=> b!88330 m!67996))

(assert (=> b!88138 d!18622))

(declare-fun b!88341 () Bool)

(declare-fun b_free!2729 () Bool)

(declare-fun b_next!2729 () Bool)

(assert (=> b!88341 (= b_free!2729 (not b_next!2729))))

(declare-fun tp!53180 () Bool)

(declare-fun b_and!4011 () Bool)

(assert (=> b!88341 (= tp!53180 b_and!4011)))

(declare-fun b_free!2731 () Bool)

(declare-fun b_next!2731 () Bool)

(assert (=> b!88341 (= b_free!2731 (not b_next!2731))))

(declare-fun t!20709 () Bool)

(declare-fun tb!2721 () Bool)

(assert (=> (and b!88341 (= (toChars!715 (transformation!329 (h!6901 (t!20699 rules!2471)))) (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398))))) t!20709) tb!2721))

(declare-fun result!3910 () Bool)

(assert (= result!3910 result!3904))

(assert (=> d!18610 t!20709))

(declare-fun tp!53179 () Bool)

(declare-fun b_and!4013 () Bool)

(assert (=> b!88341 (= tp!53179 (and (=> t!20709 result!3910) b_and!4013))))

(declare-fun e!49224 () Bool)

(assert (=> b!88341 (= e!49224 (and tp!53180 tp!53179))))

(declare-fun b!88340 () Bool)

(declare-fun tp!53181 () Bool)

(declare-fun e!49223 () Bool)

(assert (=> b!88340 (= e!49223 (and tp!53181 (inv!1852 (tag!507 (h!6901 (t!20699 rules!2471)))) (inv!1854 (transformation!329 (h!6901 (t!20699 rules!2471)))) e!49224))))

(declare-fun b!88339 () Bool)

(declare-fun e!49221 () Bool)

(declare-fun tp!53182 () Bool)

(assert (=> b!88339 (= e!49221 (and e!49223 tp!53182))))

(assert (=> b!88146 (= tp!53134 e!49221)))

(assert (= b!88340 b!88341))

(assert (= b!88339 b!88340))

(assert (= (and b!88146 ((_ is Cons!1504) (t!20699 rules!2471))) b!88339))

(declare-fun m!67998 () Bool)

(assert (=> b!88340 m!67998))

(declare-fun m!68000 () Bool)

(assert (=> b!88340 m!68000))

(declare-fun b!88346 () Bool)

(declare-fun e!49227 () Bool)

(declare-fun tp!53185 () Bool)

(assert (=> b!88346 (= e!49227 (and tp_is_empty!717 tp!53185))))

(assert (=> b!88140 (= tp!53132 e!49227)))

(assert (= (and b!88140 ((_ is Cons!1502) (t!20697 input!2238))) b!88346))

(declare-fun b!88357 () Bool)

(declare-fun e!49230 () Bool)

(assert (=> b!88357 (= e!49230 tp_is_empty!717)))

(assert (=> b!88138 (= tp!53130 e!49230)))

(declare-fun b!88358 () Bool)

(declare-fun tp!53199 () Bool)

(declare-fun tp!53196 () Bool)

(assert (=> b!88358 (= e!49230 (and tp!53199 tp!53196))))

(declare-fun b!88360 () Bool)

(declare-fun tp!53197 () Bool)

(declare-fun tp!53200 () Bool)

(assert (=> b!88360 (= e!49230 (and tp!53197 tp!53200))))

(declare-fun b!88359 () Bool)

(declare-fun tp!53198 () Bool)

(assert (=> b!88359 (= e!49230 tp!53198)))

(assert (= (and b!88138 ((_ is ElementMatch!397) (regex!329 (h!6901 rules!2471)))) b!88357))

(assert (= (and b!88138 ((_ is Concat!716) (regex!329 (h!6901 rules!2471)))) b!88358))

(assert (= (and b!88138 ((_ is Star!397) (regex!329 (h!6901 rules!2471)))) b!88359))

(assert (= (and b!88138 ((_ is Union!397) (regex!329 (h!6901 rules!2471)))) b!88360))

(check-sat b_and!3999 (not d!18542) (not d!18612) (not tb!2719) (not b_lambda!1015) (not d!18610) (not d!18584) (not d!18554) (not d!18538) (not b!88322) (not b!88253) (not b!88274) (not d!18560) (not b!88229) (not b!88330) (not b!88252) (not b_next!2729) (not b!88339) (not bm!4027) (not b!88277) (not b!88340) (not d!18562) (not d!18558) (not b_next!2721) (not b!88256) (not d!18570) b_and!4011 (not d!18568) (not b!88359) (not d!18582) (not d!18586) (not b_next!2723) (not b!88269) (not b!88257) (not b!88251) (not b!88324) (not b!88276) (not b!88346) (not b!88230) (not d!18618) (not d!18540) (not d!18580) (not b!88270) (not b!88231) b_and!4013 (not d!18622) b_and!4009 (not b_next!2731) tp_is_empty!717 (not d!18572) (not d!18574) (not d!18616) (not d!18566) (not b!88172) (not b!88358) (not d!18564) (not b!88255) (not b!88258) (not b!88360) (not d!18536) (not d!18608) (not b!88327) (not b!88325) (not b!88228) (not b!88254) (not b!88326))
(check-sat (not b_next!2729) (not b_next!2721) b_and!3999 b_and!4011 (not b_next!2723) b_and!4013 b_and!4009 (not b_next!2731))
(get-model)

(declare-fun d!18630 () Bool)

(assert (=> d!18630 (= (list!541 lt!21471) (list!545 (c!21984 lt!21471)))))

(declare-fun bs!8932 () Bool)

(assert (= bs!8932 d!18630))

(declare-fun m!68014 () Bool)

(assert (=> bs!8932 m!68014))

(assert (=> b!88274 d!18630))

(declare-fun d!18632 () Bool)

(assert (=> d!18632 (= (list!541 (seqFromList!167 (t!20700 lt!21403))) (list!545 (c!21984 (seqFromList!167 (t!20700 lt!21403)))))))

(declare-fun bs!8933 () Bool)

(assert (= bs!8933 d!18632))

(declare-fun m!68016 () Bool)

(assert (=> bs!8933 m!68016))

(assert (=> b!88274 d!18632))

(declare-fun d!18634 () Bool)

(declare-fun lt!21514 () Int)

(declare-fun size!1302 (List!1511) Int)

(assert (=> d!18634 (= lt!21514 (size!1302 (list!541 (_1!994 lt!21502))))))

(declare-fun size!1303 (Conc!461) Int)

(assert (=> d!18634 (= lt!21514 (size!1303 (c!21984 (_1!994 lt!21502))))))

(assert (=> d!18634 (= (size!1298 (_1!994 lt!21502)) lt!21514)))

(declare-fun bs!8934 () Bool)

(assert (= bs!8934 d!18634))

(assert (=> bs!8934 m!67972))

(assert (=> bs!8934 m!67972))

(declare-fun m!68018 () Bool)

(assert (=> bs!8934 m!68018))

(declare-fun m!68020 () Bool)

(assert (=> bs!8934 m!68020))

(assert (=> d!18612 d!18634))

(declare-fun lt!21696 () tuple2!1574)

(declare-fun e!49278 () Bool)

(declare-fun b!88443 () Bool)

(declare-fun lexRec!32 (LexerInterface!221 List!1510 BalanceConc!924) tuple2!1574)

(assert (=> b!88443 (= e!49278 (= (list!542 (_2!994 lt!21696)) (list!542 (_2!994 (lexRec!32 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398)))))))))

(declare-fun b!88444 () Bool)

(declare-fun e!49277 () tuple2!1574)

(assert (=> b!88444 (= e!49277 (tuple2!1575 (BalanceConc!927 Empty!461) (seqFromList!166 (_2!995 lt!21398))))))

(declare-fun d!18636 () Bool)

(assert (=> d!18636 e!49278))

(declare-fun res!44550 () Bool)

(assert (=> d!18636 (=> (not res!44550) (not e!49278))))

(assert (=> d!18636 (= res!44550 (= (list!541 (_1!994 lt!21696)) (list!541 (_1!994 (lexRec!32 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398)))))))))

(declare-fun e!49279 () tuple2!1574)

(assert (=> d!18636 (= lt!21696 e!49279)))

(declare-fun c!22047 () Bool)

(declare-datatypes ((tuple2!1582 0))(
  ( (tuple2!1583 (_1!998 Token!418) (_2!998 BalanceConc!924)) )
))
(declare-datatypes ((Option!142 0))(
  ( (None!141) (Some!141 (v!12876 tuple2!1582)) )
))
(declare-fun lt!21704 () Option!142)

(assert (=> d!18636 (= c!22047 ((_ is Some!141) lt!21704))))

(declare-fun maxPrefixZipperSequenceV2!27 (LexerInterface!221 List!1510 BalanceConc!924 BalanceConc!924) Option!142)

(assert (=> d!18636 (= lt!21704 (maxPrefixZipperSequenceV2!27 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398)) (seqFromList!166 (_2!995 lt!21398))))))

(declare-fun lt!21700 () Unit!954)

(declare-fun lt!21720 () Unit!954)

(assert (=> d!18636 (= lt!21700 lt!21720)))

(declare-fun lt!21724 () List!1508)

(declare-fun lt!21698 () List!1508)

(declare-fun isSuffix!27 (List!1508 List!1508) Bool)

(assert (=> d!18636 (isSuffix!27 lt!21724 (++!180 lt!21698 lt!21724))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!27 (List!1508 List!1508) Unit!954)

(assert (=> d!18636 (= lt!21720 (lemmaConcatTwoListThenFSndIsSuffix!27 lt!21698 lt!21724))))

(assert (=> d!18636 (= lt!21724 (list!542 (seqFromList!166 (_2!995 lt!21398))))))

(assert (=> d!18636 (= lt!21698 (list!542 (BalanceConc!925 Empty!460)))))

(assert (=> d!18636 (= (lexTailRecV2!50 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398)) (BalanceConc!925 Empty!460) (seqFromList!166 (_2!995 lt!21398)) (BalanceConc!927 Empty!461)) lt!21696)))

(declare-fun b!88445 () Bool)

(declare-fun lt!21721 () Option!142)

(declare-fun lt!21712 () tuple2!1574)

(assert (=> b!88445 (= lt!21712 (lexRec!32 thiss!19403 rules!2471 (_2!998 (v!12876 lt!21721))))))

(declare-fun e!49276 () tuple2!1574)

(assert (=> b!88445 (= e!49276 (tuple2!1575 (prepend!93 (_1!994 lt!21712) (_1!998 (v!12876 lt!21721))) (_2!994 lt!21712)))))

(declare-fun b!88446 () Bool)

(assert (=> b!88446 (= e!49279 (tuple2!1575 (BalanceConc!927 Empty!461) (seqFromList!166 (_2!995 lt!21398))))))

(declare-fun b!88447 () Bool)

(declare-fun lt!21729 () Option!142)

(declare-fun lt!21706 () tuple2!1574)

(assert (=> b!88447 (= lt!21706 (lexRec!32 thiss!19403 rules!2471 (_2!998 (v!12876 lt!21729))))))

(assert (=> b!88447 (= e!49277 (tuple2!1575 (prepend!93 (_1!994 lt!21706) (_1!998 (v!12876 lt!21729))) (_2!994 lt!21706)))))

(declare-fun b!88448 () Bool)

(declare-fun lt!21717 () BalanceConc!924)

(assert (=> b!88448 (= e!49276 (tuple2!1575 (BalanceConc!927 Empty!461) lt!21717))))

(declare-fun lt!21727 () BalanceConc!924)

(declare-fun b!88449 () Bool)

(declare-fun append!37 (BalanceConc!926 Token!418) BalanceConc!926)

(assert (=> b!88449 (= e!49279 (lexTailRecV2!50 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398)) lt!21727 (_2!998 (v!12876 lt!21704)) (append!37 (BalanceConc!927 Empty!461) (_1!998 (v!12876 lt!21704)))))))

(declare-fun lt!21728 () tuple2!1574)

(assert (=> b!88449 (= lt!21728 (lexRec!32 thiss!19403 rules!2471 (_2!998 (v!12876 lt!21704))))))

(declare-fun lt!21713 () List!1508)

(assert (=> b!88449 (= lt!21713 (list!542 (BalanceConc!925 Empty!460)))))

(declare-fun lt!21705 () List!1508)

(assert (=> b!88449 (= lt!21705 (list!542 (charsOf!64 (_1!998 (v!12876 lt!21704)))))))

(declare-fun lt!21726 () List!1508)

(assert (=> b!88449 (= lt!21726 (list!542 (_2!998 (v!12876 lt!21704))))))

(declare-fun lt!21707 () Unit!954)

(declare-fun lemmaConcatAssociativity!62 (List!1508 List!1508 List!1508) Unit!954)

(assert (=> b!88449 (= lt!21707 (lemmaConcatAssociativity!62 lt!21713 lt!21705 lt!21726))))

(assert (=> b!88449 (= (++!180 (++!180 lt!21713 lt!21705) lt!21726) (++!180 lt!21713 (++!180 lt!21705 lt!21726)))))

(declare-fun lt!21725 () Unit!954)

(assert (=> b!88449 (= lt!21725 lt!21707)))

(declare-fun maxPrefixZipperSequence!30 (LexerInterface!221 List!1510 BalanceConc!924) Option!142)

(assert (=> b!88449 (= lt!21729 (maxPrefixZipperSequence!30 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398))))))

(declare-fun c!22045 () Bool)

(assert (=> b!88449 (= c!22045 ((_ is Some!141) lt!21729))))

(assert (=> b!88449 (= (lexRec!32 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398))) e!49277)))

(declare-fun lt!21699 () Unit!954)

(declare-fun Unit!958 () Unit!954)

(assert (=> b!88449 (= lt!21699 Unit!958)))

(declare-fun lt!21701 () List!1511)

(assert (=> b!88449 (= lt!21701 (list!541 (BalanceConc!927 Empty!461)))))

(declare-fun lt!21710 () List!1511)

(assert (=> b!88449 (= lt!21710 (Cons!1505 (_1!998 (v!12876 lt!21704)) Nil!1505))))

(declare-fun lt!21715 () List!1511)

(assert (=> b!88449 (= lt!21715 (list!541 (_1!994 lt!21728)))))

(declare-fun lt!21697 () Unit!954)

(declare-fun lemmaConcatAssociativity!63 (List!1511 List!1511 List!1511) Unit!954)

(assert (=> b!88449 (= lt!21697 (lemmaConcatAssociativity!63 lt!21701 lt!21710 lt!21715))))

(declare-fun ++!184 (List!1511 List!1511) List!1511)

(assert (=> b!88449 (= (++!184 (++!184 lt!21701 lt!21710) lt!21715) (++!184 lt!21701 (++!184 lt!21710 lt!21715)))))

(declare-fun lt!21702 () Unit!954)

(assert (=> b!88449 (= lt!21702 lt!21697)))

(declare-fun lt!21711 () List!1508)

(assert (=> b!88449 (= lt!21711 (++!180 (list!542 (BalanceConc!925 Empty!460)) (list!542 (charsOf!64 (_1!998 (v!12876 lt!21704))))))))

(declare-fun lt!21703 () List!1508)

(assert (=> b!88449 (= lt!21703 (list!542 (_2!998 (v!12876 lt!21704))))))

(declare-fun lt!21718 () List!1511)

(assert (=> b!88449 (= lt!21718 (list!541 (append!37 (BalanceConc!927 Empty!461) (_1!998 (v!12876 lt!21704)))))))

(declare-fun lt!21723 () Unit!954)

(declare-fun lemmaLexThenLexPrefix!27 (LexerInterface!221 List!1510 List!1508 List!1508 List!1511 List!1511 List!1508) Unit!954)

(assert (=> b!88449 (= lt!21723 (lemmaLexThenLexPrefix!27 thiss!19403 rules!2471 lt!21711 lt!21703 lt!21718 (list!541 (_1!994 lt!21728)) (list!542 (_2!994 lt!21728))))))

(assert (=> b!88449 (= (lexList!53 thiss!19403 rules!2471 lt!21711) (tuple2!1579 lt!21718 Nil!1502))))

(declare-fun lt!21719 () Unit!954)

(assert (=> b!88449 (= lt!21719 lt!21723)))

(declare-fun ++!185 (BalanceConc!924 BalanceConc!924) BalanceConc!924)

(assert (=> b!88449 (= lt!21717 (++!185 (BalanceConc!925 Empty!460) (charsOf!64 (_1!998 (v!12876 lt!21704)))))))

(assert (=> b!88449 (= lt!21721 (maxPrefixZipperSequence!30 thiss!19403 rules!2471 lt!21717))))

(declare-fun c!22046 () Bool)

(assert (=> b!88449 (= c!22046 ((_ is Some!141) lt!21721))))

(assert (=> b!88449 (= (lexRec!32 thiss!19403 rules!2471 (++!185 (BalanceConc!925 Empty!460) (charsOf!64 (_1!998 (v!12876 lt!21704))))) e!49276)))

(declare-fun lt!21722 () Unit!954)

(declare-fun Unit!959 () Unit!954)

(assert (=> b!88449 (= lt!21722 Unit!959)))

(assert (=> b!88449 (= lt!21727 (++!185 (BalanceConc!925 Empty!460) (charsOf!64 (_1!998 (v!12876 lt!21704)))))))

(declare-fun lt!21714 () List!1508)

(assert (=> b!88449 (= lt!21714 (list!542 lt!21727))))

(declare-fun lt!21708 () List!1508)

(assert (=> b!88449 (= lt!21708 (list!542 (_2!998 (v!12876 lt!21704))))))

(declare-fun lt!21709 () Unit!954)

(assert (=> b!88449 (= lt!21709 (lemmaConcatTwoListThenFSndIsSuffix!27 lt!21714 lt!21708))))

(assert (=> b!88449 (isSuffix!27 lt!21708 (++!180 lt!21714 lt!21708))))

(declare-fun lt!21716 () Unit!954)

(assert (=> b!88449 (= lt!21716 lt!21709)))

(assert (= (and d!18636 c!22047) b!88449))

(assert (= (and d!18636 (not c!22047)) b!88446))

(assert (= (and b!88449 c!22045) b!88447))

(assert (= (and b!88449 (not c!22045)) b!88444))

(assert (= (and b!88449 c!22046) b!88445))

(assert (= (and b!88449 (not c!22046)) b!88448))

(assert (= (and d!18636 res!44550) b!88443))

(declare-fun m!68178 () Bool)

(assert (=> b!88443 m!68178))

(assert (=> b!88443 m!67614))

(declare-fun m!68180 () Bool)

(assert (=> b!88443 m!68180))

(declare-fun m!68182 () Bool)

(assert (=> b!88443 m!68182))

(declare-fun m!68184 () Bool)

(assert (=> d!18636 m!68184))

(declare-fun m!68186 () Bool)

(assert (=> d!18636 m!68186))

(declare-fun m!68188 () Bool)

(assert (=> d!18636 m!68188))

(declare-fun m!68190 () Bool)

(assert (=> d!18636 m!68190))

(assert (=> d!18636 m!67614))

(assert (=> d!18636 m!67966))

(assert (=> d!18636 m!67614))

(assert (=> d!18636 m!67614))

(declare-fun m!68192 () Bool)

(assert (=> d!18636 m!68192))

(assert (=> d!18636 m!68186))

(declare-fun m!68194 () Bool)

(assert (=> d!18636 m!68194))

(declare-fun m!68196 () Bool)

(assert (=> d!18636 m!68196))

(assert (=> d!18636 m!67614))

(assert (=> d!18636 m!68180))

(declare-fun m!68198 () Bool)

(assert (=> b!88445 m!68198))

(declare-fun m!68200 () Bool)

(assert (=> b!88445 m!68200))

(declare-fun m!68202 () Bool)

(assert (=> b!88449 m!68202))

(declare-fun m!68204 () Bool)

(assert (=> b!88449 m!68204))

(declare-fun m!68206 () Bool)

(assert (=> b!88449 m!68206))

(declare-fun m!68208 () Bool)

(assert (=> b!88449 m!68208))

(declare-fun m!68210 () Bool)

(assert (=> b!88449 m!68210))

(declare-fun m!68212 () Bool)

(assert (=> b!88449 m!68212))

(assert (=> b!88449 m!68208))

(declare-fun m!68216 () Bool)

(assert (=> b!88449 m!68216))

(declare-fun m!68218 () Bool)

(assert (=> b!88449 m!68218))

(declare-fun m!68220 () Bool)

(assert (=> b!88449 m!68220))

(declare-fun m!68222 () Bool)

(assert (=> b!88449 m!68222))

(declare-fun m!68224 () Bool)

(assert (=> b!88449 m!68224))

(declare-fun m!68226 () Bool)

(assert (=> b!88449 m!68226))

(assert (=> b!88449 m!68190))

(declare-fun m!68228 () Bool)

(assert (=> b!88449 m!68228))

(declare-fun m!68230 () Bool)

(assert (=> b!88449 m!68230))

(declare-fun m!68232 () Bool)

(assert (=> b!88449 m!68232))

(assert (=> b!88449 m!68226))

(declare-fun m!68234 () Bool)

(assert (=> b!88449 m!68234))

(assert (=> b!88449 m!68190))

(assert (=> b!88449 m!67614))

(declare-fun m!68236 () Bool)

(assert (=> b!88449 m!68236))

(assert (=> b!88449 m!67614))

(assert (=> b!88449 m!68180))

(assert (=> b!88449 m!68204))

(declare-fun m!68238 () Bool)

(assert (=> b!88449 m!68238))

(declare-fun m!68240 () Bool)

(assert (=> b!88449 m!68240))

(declare-fun m!68242 () Bool)

(assert (=> b!88449 m!68242))

(assert (=> b!88449 m!68222))

(assert (=> b!88449 m!68228))

(declare-fun m!68244 () Bool)

(assert (=> b!88449 m!68244))

(assert (=> b!88449 m!68202))

(declare-fun m!68248 () Bool)

(assert (=> b!88449 m!68248))

(declare-fun m!68252 () Bool)

(assert (=> b!88449 m!68252))

(declare-fun m!68256 () Bool)

(assert (=> b!88449 m!68256))

(declare-fun m!68258 () Bool)

(assert (=> b!88449 m!68258))

(assert (=> b!88449 m!68256))

(assert (=> b!88449 m!68232))

(declare-fun m!68266 () Bool)

(assert (=> b!88449 m!68266))

(assert (=> b!88449 m!67614))

(assert (=> b!88449 m!68208))

(declare-fun m!68270 () Bool)

(assert (=> b!88449 m!68270))

(assert (=> b!88449 m!68210))

(declare-fun m!68272 () Bool)

(assert (=> b!88449 m!68272))

(assert (=> b!88449 m!68222))

(assert (=> b!88449 m!68218))

(assert (=> b!88449 m!68244))

(declare-fun m!68274 () Bool)

(assert (=> b!88449 m!68274))

(declare-fun m!68276 () Bool)

(assert (=> b!88449 m!68276))

(declare-fun m!68278 () Bool)

(assert (=> b!88449 m!68278))

(declare-fun m!68280 () Bool)

(assert (=> b!88447 m!68280))

(declare-fun m!68282 () Bool)

(assert (=> b!88447 m!68282))

(assert (=> d!18612 d!18636))

(declare-fun d!18670 () Bool)

(assert (=> d!18670 (= (list!542 lt!21476) (list!546 (c!21982 lt!21476)))))

(declare-fun bs!8944 () Bool)

(assert (= bs!8944 d!18670))

(declare-fun m!68288 () Bool)

(assert (=> bs!8944 m!68288))

(assert (=> d!18572 d!18670))

(declare-fun d!18674 () Bool)

(declare-fun c!22057 () Bool)

(assert (=> d!18674 (= c!22057 ((_ is Cons!1505) (list!541 (_1!994 lt!21406))))))

(declare-fun e!49291 () List!1508)

(assert (=> d!18674 (= (printList!25 thiss!19403 (list!541 (_1!994 lt!21406))) e!49291)))

(declare-fun b!88470 () Bool)

(assert (=> b!88470 (= e!49291 (++!180 (list!542 (charsOf!64 (h!6902 (list!541 (_1!994 lt!21406))))) (printList!25 thiss!19403 (t!20700 (list!541 (_1!994 lt!21406))))))))

(declare-fun b!88471 () Bool)

(assert (=> b!88471 (= e!49291 Nil!1502)))

(assert (= (and d!18674 c!22057) b!88470))

(assert (= (and d!18674 (not c!22057)) b!88471))

(declare-fun m!68296 () Bool)

(assert (=> b!88470 m!68296))

(assert (=> b!88470 m!68296))

(declare-fun m!68298 () Bool)

(assert (=> b!88470 m!68298))

(declare-fun m!68300 () Bool)

(assert (=> b!88470 m!68300))

(assert (=> b!88470 m!68298))

(assert (=> b!88470 m!68300))

(declare-fun m!68302 () Bool)

(assert (=> b!88470 m!68302))

(assert (=> d!18572 d!18674))

(assert (=> d!18572 d!18608))

(declare-fun d!18682 () Bool)

(declare-fun lt!21759 () BalanceConc!924)

(declare-fun printListTailRec!15 (LexerInterface!221 List!1511 List!1508) List!1508)

(declare-fun dropList!23 (BalanceConc!926 Int) List!1511)

(assert (=> d!18682 (= (list!542 lt!21759) (printListTailRec!15 thiss!19403 (dropList!23 (_1!994 lt!21406) 0) (list!542 (BalanceConc!925 Empty!460))))))

(declare-fun e!49306 () BalanceConc!924)

(assert (=> d!18682 (= lt!21759 e!49306)))

(declare-fun c!22060 () Bool)

(assert (=> d!18682 (= c!22060 (>= 0 (size!1298 (_1!994 lt!21406))))))

(declare-fun e!49305 () Bool)

(assert (=> d!18682 e!49305))

(declare-fun res!44576 () Bool)

(assert (=> d!18682 (=> (not res!44576) (not e!49305))))

(assert (=> d!18682 (= res!44576 (>= 0 0))))

(assert (=> d!18682 (= (printTailRec!25 thiss!19403 (_1!994 lt!21406) 0 (BalanceConc!925 Empty!460)) lt!21759)))

(declare-fun b!88499 () Bool)

(assert (=> b!88499 (= e!49305 (<= 0 (size!1298 (_1!994 lt!21406))))))

(declare-fun b!88500 () Bool)

(assert (=> b!88500 (= e!49306 (BalanceConc!925 Empty!460))))

(declare-fun b!88501 () Bool)

(declare-fun apply!220 (BalanceConc!926 Int) Token!418)

(assert (=> b!88501 (= e!49306 (printTailRec!25 thiss!19403 (_1!994 lt!21406) (+ 0 1) (++!185 (BalanceConc!925 Empty!460) (charsOf!64 (apply!220 (_1!994 lt!21406) 0)))))))

(declare-fun lt!21762 () List!1511)

(assert (=> b!88501 (= lt!21762 (list!541 (_1!994 lt!21406)))))

(declare-fun lt!21761 () Unit!954)

(declare-fun lemmaDropApply!79 (List!1511 Int) Unit!954)

(assert (=> b!88501 (= lt!21761 (lemmaDropApply!79 lt!21762 0))))

(declare-fun head!433 (List!1511) Token!418)

(declare-fun drop!83 (List!1511 Int) List!1511)

(declare-fun apply!221 (List!1511 Int) Token!418)

(assert (=> b!88501 (= (head!433 (drop!83 lt!21762 0)) (apply!221 lt!21762 0))))

(declare-fun lt!21760 () Unit!954)

(assert (=> b!88501 (= lt!21760 lt!21761)))

(declare-fun lt!21763 () List!1511)

(assert (=> b!88501 (= lt!21763 (list!541 (_1!994 lt!21406)))))

(declare-fun lt!21764 () Unit!954)

(declare-fun lemmaDropTail!71 (List!1511 Int) Unit!954)

(assert (=> b!88501 (= lt!21764 (lemmaDropTail!71 lt!21763 0))))

(assert (=> b!88501 (= (tail!144 (drop!83 lt!21763 0)) (drop!83 lt!21763 (+ 0 1)))))

(declare-fun lt!21758 () Unit!954)

(assert (=> b!88501 (= lt!21758 lt!21764)))

(assert (= (and d!18682 res!44576) b!88499))

(assert (= (and d!18682 c!22060) b!88500))

(assert (= (and d!18682 (not c!22060)) b!88501))

(declare-fun m!68330 () Bool)

(assert (=> d!18682 m!68330))

(declare-fun m!68332 () Bool)

(assert (=> d!18682 m!68332))

(assert (=> d!18682 m!68330))

(assert (=> d!18682 m!68190))

(declare-fun m!68334 () Bool)

(assert (=> d!18682 m!68334))

(declare-fun m!68336 () Bool)

(assert (=> d!18682 m!68336))

(assert (=> d!18682 m!68190))

(assert (=> b!88499 m!68336))

(declare-fun m!68338 () Bool)

(assert (=> b!88501 m!68338))

(declare-fun m!68340 () Bool)

(assert (=> b!88501 m!68340))

(declare-fun m!68342 () Bool)

(assert (=> b!88501 m!68342))

(declare-fun m!68344 () Bool)

(assert (=> b!88501 m!68344))

(declare-fun m!68346 () Bool)

(assert (=> b!88501 m!68346))

(declare-fun m!68348 () Bool)

(assert (=> b!88501 m!68348))

(declare-fun m!68350 () Bool)

(assert (=> b!88501 m!68350))

(assert (=> b!88501 m!68346))

(declare-fun m!68352 () Bool)

(assert (=> b!88501 m!68352))

(assert (=> b!88501 m!68344))

(declare-fun m!68354 () Bool)

(assert (=> b!88501 m!68354))

(assert (=> b!88501 m!68354))

(declare-fun m!68356 () Bool)

(assert (=> b!88501 m!68356))

(assert (=> b!88501 m!67626))

(declare-fun m!68358 () Bool)

(assert (=> b!88501 m!68358))

(assert (=> b!88501 m!68342))

(assert (=> b!88501 m!68358))

(declare-fun m!68360 () Bool)

(assert (=> b!88501 m!68360))

(assert (=> d!18572 d!18682))

(declare-fun d!18690 () Bool)

(declare-fun lt!21765 () Int)

(assert (=> d!18690 (= lt!21765 (size!1302 (list!541 (_1!994 lt!21449))))))

(assert (=> d!18690 (= lt!21765 (size!1303 (c!21984 (_1!994 lt!21449))))))

(assert (=> d!18690 (= (size!1298 (_1!994 lt!21449)) lt!21765)))

(declare-fun bs!8946 () Bool)

(assert (= bs!8946 d!18690))

(assert (=> bs!8946 m!67768))

(assert (=> bs!8946 m!67768))

(declare-fun m!68362 () Bool)

(assert (=> bs!8946 m!68362))

(declare-fun m!68364 () Bool)

(assert (=> bs!8946 m!68364))

(assert (=> d!18542 d!18690))

(declare-fun lt!21766 () tuple2!1574)

(declare-fun b!88502 () Bool)

(declare-fun e!49309 () Bool)

(assert (=> b!88502 (= e!49309 (= (list!542 (_2!994 lt!21766)) (list!542 (_2!994 (lexRec!32 thiss!19403 rules!2471 (seqFromList!166 input!2238))))))))

(declare-fun b!88503 () Bool)

(declare-fun e!49308 () tuple2!1574)

(assert (=> b!88503 (= e!49308 (tuple2!1575 (BalanceConc!927 Empty!461) (seqFromList!166 input!2238)))))

(declare-fun d!18692 () Bool)

(assert (=> d!18692 e!49309))

(declare-fun res!44577 () Bool)

(assert (=> d!18692 (=> (not res!44577) (not e!49309))))

(assert (=> d!18692 (= res!44577 (= (list!541 (_1!994 lt!21766)) (list!541 (_1!994 (lexRec!32 thiss!19403 rules!2471 (seqFromList!166 input!2238))))))))

(declare-fun e!49310 () tuple2!1574)

(assert (=> d!18692 (= lt!21766 e!49310)))

(declare-fun c!22063 () Bool)

(declare-fun lt!21774 () Option!142)

(assert (=> d!18692 (= c!22063 ((_ is Some!141) lt!21774))))

(assert (=> d!18692 (= lt!21774 (maxPrefixZipperSequenceV2!27 thiss!19403 rules!2471 (seqFromList!166 input!2238) (seqFromList!166 input!2238)))))

(declare-fun lt!21770 () Unit!954)

(declare-fun lt!21790 () Unit!954)

(assert (=> d!18692 (= lt!21770 lt!21790)))

(declare-fun lt!21794 () List!1508)

(declare-fun lt!21768 () List!1508)

(assert (=> d!18692 (isSuffix!27 lt!21794 (++!180 lt!21768 lt!21794))))

(assert (=> d!18692 (= lt!21790 (lemmaConcatTwoListThenFSndIsSuffix!27 lt!21768 lt!21794))))

(assert (=> d!18692 (= lt!21794 (list!542 (seqFromList!166 input!2238)))))

(assert (=> d!18692 (= lt!21768 (list!542 (BalanceConc!925 Empty!460)))))

(assert (=> d!18692 (= (lexTailRecV2!50 thiss!19403 rules!2471 (seqFromList!166 input!2238) (BalanceConc!925 Empty!460) (seqFromList!166 input!2238) (BalanceConc!927 Empty!461)) lt!21766)))

(declare-fun b!88504 () Bool)

(declare-fun lt!21791 () Option!142)

(declare-fun lt!21782 () tuple2!1574)

(assert (=> b!88504 (= lt!21782 (lexRec!32 thiss!19403 rules!2471 (_2!998 (v!12876 lt!21791))))))

(declare-fun e!49307 () tuple2!1574)

(assert (=> b!88504 (= e!49307 (tuple2!1575 (prepend!93 (_1!994 lt!21782) (_1!998 (v!12876 lt!21791))) (_2!994 lt!21782)))))

(declare-fun b!88505 () Bool)

(assert (=> b!88505 (= e!49310 (tuple2!1575 (BalanceConc!927 Empty!461) (seqFromList!166 input!2238)))))

(declare-fun b!88506 () Bool)

(declare-fun lt!21799 () Option!142)

(declare-fun lt!21776 () tuple2!1574)

(assert (=> b!88506 (= lt!21776 (lexRec!32 thiss!19403 rules!2471 (_2!998 (v!12876 lt!21799))))))

(assert (=> b!88506 (= e!49308 (tuple2!1575 (prepend!93 (_1!994 lt!21776) (_1!998 (v!12876 lt!21799))) (_2!994 lt!21776)))))

(declare-fun b!88507 () Bool)

(declare-fun lt!21787 () BalanceConc!924)

(assert (=> b!88507 (= e!49307 (tuple2!1575 (BalanceConc!927 Empty!461) lt!21787))))

(declare-fun b!88508 () Bool)

(declare-fun lt!21797 () BalanceConc!924)

(assert (=> b!88508 (= e!49310 (lexTailRecV2!50 thiss!19403 rules!2471 (seqFromList!166 input!2238) lt!21797 (_2!998 (v!12876 lt!21774)) (append!37 (BalanceConc!927 Empty!461) (_1!998 (v!12876 lt!21774)))))))

(declare-fun lt!21798 () tuple2!1574)

(assert (=> b!88508 (= lt!21798 (lexRec!32 thiss!19403 rules!2471 (_2!998 (v!12876 lt!21774))))))

(declare-fun lt!21783 () List!1508)

(assert (=> b!88508 (= lt!21783 (list!542 (BalanceConc!925 Empty!460)))))

(declare-fun lt!21775 () List!1508)

(assert (=> b!88508 (= lt!21775 (list!542 (charsOf!64 (_1!998 (v!12876 lt!21774)))))))

(declare-fun lt!21796 () List!1508)

(assert (=> b!88508 (= lt!21796 (list!542 (_2!998 (v!12876 lt!21774))))))

(declare-fun lt!21777 () Unit!954)

(assert (=> b!88508 (= lt!21777 (lemmaConcatAssociativity!62 lt!21783 lt!21775 lt!21796))))

(assert (=> b!88508 (= (++!180 (++!180 lt!21783 lt!21775) lt!21796) (++!180 lt!21783 (++!180 lt!21775 lt!21796)))))

(declare-fun lt!21795 () Unit!954)

(assert (=> b!88508 (= lt!21795 lt!21777)))

(assert (=> b!88508 (= lt!21799 (maxPrefixZipperSequence!30 thiss!19403 rules!2471 (seqFromList!166 input!2238)))))

(declare-fun c!22061 () Bool)

(assert (=> b!88508 (= c!22061 ((_ is Some!141) lt!21799))))

(assert (=> b!88508 (= (lexRec!32 thiss!19403 rules!2471 (seqFromList!166 input!2238)) e!49308)))

(declare-fun lt!21769 () Unit!954)

(declare-fun Unit!960 () Unit!954)

(assert (=> b!88508 (= lt!21769 Unit!960)))

(declare-fun lt!21771 () List!1511)

(assert (=> b!88508 (= lt!21771 (list!541 (BalanceConc!927 Empty!461)))))

(declare-fun lt!21780 () List!1511)

(assert (=> b!88508 (= lt!21780 (Cons!1505 (_1!998 (v!12876 lt!21774)) Nil!1505))))

(declare-fun lt!21785 () List!1511)

(assert (=> b!88508 (= lt!21785 (list!541 (_1!994 lt!21798)))))

(declare-fun lt!21767 () Unit!954)

(assert (=> b!88508 (= lt!21767 (lemmaConcatAssociativity!63 lt!21771 lt!21780 lt!21785))))

(assert (=> b!88508 (= (++!184 (++!184 lt!21771 lt!21780) lt!21785) (++!184 lt!21771 (++!184 lt!21780 lt!21785)))))

(declare-fun lt!21772 () Unit!954)

(assert (=> b!88508 (= lt!21772 lt!21767)))

(declare-fun lt!21781 () List!1508)

(assert (=> b!88508 (= lt!21781 (++!180 (list!542 (BalanceConc!925 Empty!460)) (list!542 (charsOf!64 (_1!998 (v!12876 lt!21774))))))))

(declare-fun lt!21773 () List!1508)

(assert (=> b!88508 (= lt!21773 (list!542 (_2!998 (v!12876 lt!21774))))))

(declare-fun lt!21788 () List!1511)

(assert (=> b!88508 (= lt!21788 (list!541 (append!37 (BalanceConc!927 Empty!461) (_1!998 (v!12876 lt!21774)))))))

(declare-fun lt!21793 () Unit!954)

(assert (=> b!88508 (= lt!21793 (lemmaLexThenLexPrefix!27 thiss!19403 rules!2471 lt!21781 lt!21773 lt!21788 (list!541 (_1!994 lt!21798)) (list!542 (_2!994 lt!21798))))))

(assert (=> b!88508 (= (lexList!53 thiss!19403 rules!2471 lt!21781) (tuple2!1579 lt!21788 Nil!1502))))

(declare-fun lt!21789 () Unit!954)

(assert (=> b!88508 (= lt!21789 lt!21793)))

(assert (=> b!88508 (= lt!21787 (++!185 (BalanceConc!925 Empty!460) (charsOf!64 (_1!998 (v!12876 lt!21774)))))))

(assert (=> b!88508 (= lt!21791 (maxPrefixZipperSequence!30 thiss!19403 rules!2471 lt!21787))))

(declare-fun c!22062 () Bool)

(assert (=> b!88508 (= c!22062 ((_ is Some!141) lt!21791))))

(assert (=> b!88508 (= (lexRec!32 thiss!19403 rules!2471 (++!185 (BalanceConc!925 Empty!460) (charsOf!64 (_1!998 (v!12876 lt!21774))))) e!49307)))

(declare-fun lt!21792 () Unit!954)

(declare-fun Unit!961 () Unit!954)

(assert (=> b!88508 (= lt!21792 Unit!961)))

(assert (=> b!88508 (= lt!21797 (++!185 (BalanceConc!925 Empty!460) (charsOf!64 (_1!998 (v!12876 lt!21774)))))))

(declare-fun lt!21784 () List!1508)

(assert (=> b!88508 (= lt!21784 (list!542 lt!21797))))

(declare-fun lt!21778 () List!1508)

(assert (=> b!88508 (= lt!21778 (list!542 (_2!998 (v!12876 lt!21774))))))

(declare-fun lt!21779 () Unit!954)

(assert (=> b!88508 (= lt!21779 (lemmaConcatTwoListThenFSndIsSuffix!27 lt!21784 lt!21778))))

(assert (=> b!88508 (isSuffix!27 lt!21778 (++!180 lt!21784 lt!21778))))

(declare-fun lt!21786 () Unit!954)

(assert (=> b!88508 (= lt!21786 lt!21779)))

(assert (= (and d!18692 c!22063) b!88508))

(assert (= (and d!18692 (not c!22063)) b!88505))

(assert (= (and b!88508 c!22061) b!88506))

(assert (= (and b!88508 (not c!22061)) b!88503))

(assert (= (and b!88508 c!22062) b!88504))

(assert (= (and b!88508 (not c!22062)) b!88507))

(assert (= (and d!18692 res!44577) b!88502))

(declare-fun m!68366 () Bool)

(assert (=> b!88502 m!68366))

(assert (=> b!88502 m!67588))

(declare-fun m!68368 () Bool)

(assert (=> b!88502 m!68368))

(declare-fun m!68370 () Bool)

(assert (=> b!88502 m!68370))

(declare-fun m!68372 () Bool)

(assert (=> d!18692 m!68372))

(declare-fun m!68374 () Bool)

(assert (=> d!18692 m!68374))

(declare-fun m!68376 () Bool)

(assert (=> d!18692 m!68376))

(assert (=> d!18692 m!68190))

(assert (=> d!18692 m!67588))

(assert (=> d!18692 m!67762))

(assert (=> d!18692 m!67588))

(assert (=> d!18692 m!67588))

(declare-fun m!68378 () Bool)

(assert (=> d!18692 m!68378))

(assert (=> d!18692 m!68374))

(declare-fun m!68380 () Bool)

(assert (=> d!18692 m!68380))

(declare-fun m!68382 () Bool)

(assert (=> d!18692 m!68382))

(assert (=> d!18692 m!67588))

(assert (=> d!18692 m!68368))

(declare-fun m!68384 () Bool)

(assert (=> b!88504 m!68384))

(declare-fun m!68386 () Bool)

(assert (=> b!88504 m!68386))

(declare-fun m!68388 () Bool)

(assert (=> b!88508 m!68388))

(declare-fun m!68390 () Bool)

(assert (=> b!88508 m!68390))

(declare-fun m!68392 () Bool)

(assert (=> b!88508 m!68392))

(declare-fun m!68394 () Bool)

(assert (=> b!88508 m!68394))

(declare-fun m!68396 () Bool)

(assert (=> b!88508 m!68396))

(declare-fun m!68398 () Bool)

(assert (=> b!88508 m!68398))

(assert (=> b!88508 m!68394))

(declare-fun m!68400 () Bool)

(assert (=> b!88508 m!68400))

(declare-fun m!68402 () Bool)

(assert (=> b!88508 m!68402))

(declare-fun m!68404 () Bool)

(assert (=> b!88508 m!68404))

(declare-fun m!68406 () Bool)

(assert (=> b!88508 m!68406))

(declare-fun m!68408 () Bool)

(assert (=> b!88508 m!68408))

(declare-fun m!68410 () Bool)

(assert (=> b!88508 m!68410))

(assert (=> b!88508 m!68190))

(declare-fun m!68412 () Bool)

(assert (=> b!88508 m!68412))

(declare-fun m!68414 () Bool)

(assert (=> b!88508 m!68414))

(declare-fun m!68416 () Bool)

(assert (=> b!88508 m!68416))

(assert (=> b!88508 m!68410))

(declare-fun m!68418 () Bool)

(assert (=> b!88508 m!68418))

(assert (=> b!88508 m!68190))

(assert (=> b!88508 m!67588))

(declare-fun m!68420 () Bool)

(assert (=> b!88508 m!68420))

(assert (=> b!88508 m!67588))

(assert (=> b!88508 m!68368))

(assert (=> b!88508 m!68390))

(assert (=> b!88508 m!68238))

(declare-fun m!68422 () Bool)

(assert (=> b!88508 m!68422))

(declare-fun m!68424 () Bool)

(assert (=> b!88508 m!68424))

(assert (=> b!88508 m!68406))

(assert (=> b!88508 m!68412))

(declare-fun m!68426 () Bool)

(assert (=> b!88508 m!68426))

(assert (=> b!88508 m!68388))

(declare-fun m!68428 () Bool)

(assert (=> b!88508 m!68428))

(declare-fun m!68430 () Bool)

(assert (=> b!88508 m!68430))

(declare-fun m!68432 () Bool)

(assert (=> b!88508 m!68432))

(declare-fun m!68434 () Bool)

(assert (=> b!88508 m!68434))

(assert (=> b!88508 m!68432))

(assert (=> b!88508 m!68416))

(declare-fun m!68436 () Bool)

(assert (=> b!88508 m!68436))

(assert (=> b!88508 m!67588))

(assert (=> b!88508 m!68394))

(declare-fun m!68438 () Bool)

(assert (=> b!88508 m!68438))

(assert (=> b!88508 m!68396))

(declare-fun m!68440 () Bool)

(assert (=> b!88508 m!68440))

(assert (=> b!88508 m!68406))

(assert (=> b!88508 m!68402))

(assert (=> b!88508 m!68426))

(declare-fun m!68442 () Bool)

(assert (=> b!88508 m!68442))

(declare-fun m!68444 () Bool)

(assert (=> b!88508 m!68444))

(declare-fun m!68446 () Bool)

(assert (=> b!88508 m!68446))

(declare-fun m!68448 () Bool)

(assert (=> b!88506 m!68448))

(declare-fun m!68450 () Bool)

(assert (=> b!88506 m!68450))

(assert (=> d!18542 d!18692))

(declare-fun d!18694 () Bool)

(assert (=> d!18694 true))

(declare-fun order!589 () Int)

(declare-fun order!591 () Int)

(declare-fun lambda!1580 () Int)

(declare-fun dynLambda!384 (Int Int) Int)

(declare-fun dynLambda!385 (Int Int) Int)

(assert (=> d!18694 (< (dynLambda!384 order!589 (toChars!715 (transformation!329 (h!6901 rules!2471)))) (dynLambda!385 order!591 lambda!1580))))

(assert (=> d!18694 true))

(declare-fun order!593 () Int)

(declare-fun dynLambda!386 (Int Int) Int)

(assert (=> d!18694 (< (dynLambda!386 order!593 (toValue!856 (transformation!329 (h!6901 rules!2471)))) (dynLambda!385 order!591 lambda!1580))))

(declare-fun Forall!48 (Int) Bool)

(assert (=> d!18694 (= (semiInverseModEq!65 (toChars!715 (transformation!329 (h!6901 rules!2471))) (toValue!856 (transformation!329 (h!6901 rules!2471)))) (Forall!48 lambda!1580))))

(declare-fun bs!8948 () Bool)

(assert (= bs!8948 d!18694))

(declare-fun m!68510 () Bool)

(assert (=> bs!8948 m!68510))

(assert (=> d!18622 d!18694))

(declare-fun b!88573 () Bool)

(declare-fun e!49344 () List!1511)

(assert (=> b!88573 (= e!49344 (++!184 (list!545 (left!1142 (c!21984 (_1!994 lt!21406)))) (list!545 (right!1472 (c!21984 (_1!994 lt!21406))))))))

(declare-fun d!18710 () Bool)

(declare-fun c!22074 () Bool)

(assert (=> d!18710 (= c!22074 ((_ is Empty!461) (c!21984 (_1!994 lt!21406))))))

(declare-fun e!49343 () List!1511)

(assert (=> d!18710 (= (list!545 (c!21984 (_1!994 lt!21406))) e!49343)))

(declare-fun b!88571 () Bool)

(assert (=> b!88571 (= e!49343 e!49344)))

(declare-fun c!22075 () Bool)

(assert (=> b!88571 (= c!22075 ((_ is Leaf!761) (c!21984 (_1!994 lt!21406))))))

(declare-fun b!88570 () Bool)

(assert (=> b!88570 (= e!49343 Nil!1505)))

(declare-fun b!88572 () Bool)

(declare-fun list!549 (IArray!923) List!1511)

(assert (=> b!88572 (= e!49344 (list!549 (xs!3044 (c!21984 (_1!994 lt!21406)))))))

(assert (= (and d!18710 c!22074) b!88570))

(assert (= (and d!18710 (not c!22074)) b!88571))

(assert (= (and b!88571 c!22075) b!88572))

(assert (= (and b!88571 (not c!22075)) b!88573))

(declare-fun m!68512 () Bool)

(assert (=> b!88573 m!68512))

(declare-fun m!68514 () Bool)

(assert (=> b!88573 m!68514))

(assert (=> b!88573 m!68512))

(assert (=> b!88573 m!68514))

(declare-fun m!68516 () Bool)

(assert (=> b!88573 m!68516))

(declare-fun m!68518 () Bool)

(assert (=> b!88572 m!68518))

(assert (=> d!18608 d!18710))

(declare-fun b!88577 () Bool)

(declare-fun e!49346 () List!1511)

(assert (=> b!88577 (= e!49346 (++!184 (list!545 (left!1142 (c!21984 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403))))) (list!545 (right!1472 (c!21984 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403)))))))))

(declare-fun d!18712 () Bool)

(declare-fun c!22076 () Bool)

(assert (=> d!18712 (= c!22076 ((_ is Empty!461) (c!21984 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403)))))))

(declare-fun e!49345 () List!1511)

(assert (=> d!18712 (= (list!545 (c!21984 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403)))) e!49345)))

(declare-fun b!88575 () Bool)

(assert (=> b!88575 (= e!49345 e!49346)))

(declare-fun c!22077 () Bool)

(assert (=> b!88575 (= c!22077 ((_ is Leaf!761) (c!21984 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403)))))))

(declare-fun b!88574 () Bool)

(assert (=> b!88574 (= e!49345 Nil!1505)))

(declare-fun b!88576 () Bool)

(assert (=> b!88576 (= e!49346 (list!549 (xs!3044 (c!21984 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403))))))))

(assert (= (and d!18712 c!22076) b!88574))

(assert (= (and d!18712 (not c!22076)) b!88575))

(assert (= (and b!88575 c!22077) b!88576))

(assert (= (and b!88575 (not c!22077)) b!88577))

(declare-fun m!68520 () Bool)

(assert (=> b!88577 m!68520))

(declare-fun m!68522 () Bool)

(assert (=> b!88577 m!68522))

(assert (=> b!88577 m!68520))

(assert (=> b!88577 m!68522))

(declare-fun m!68524 () Bool)

(assert (=> b!88577 m!68524))

(declare-fun m!68526 () Bool)

(assert (=> b!88576 m!68526))

(assert (=> d!18582 d!18712))

(declare-fun d!18714 () Bool)

(declare-fun e!49349 () Bool)

(assert (=> d!18714 e!49349))

(declare-fun res!44617 () Bool)

(assert (=> d!18714 (=> (not res!44617) (not e!49349))))

(declare-fun lt!21828 () BalanceConc!924)

(assert (=> d!18714 (= res!44617 (= (list!542 lt!21828) (_2!995 lt!21398)))))

(declare-fun fromList!37 (List!1508) Conc!460)

(assert (=> d!18714 (= lt!21828 (BalanceConc!925 (fromList!37 (_2!995 lt!21398))))))

(assert (=> d!18714 (= (fromListB!62 (_2!995 lt!21398)) lt!21828)))

(declare-fun b!88580 () Bool)

(declare-fun isBalanced!102 (Conc!460) Bool)

(assert (=> b!88580 (= e!49349 (isBalanced!102 (fromList!37 (_2!995 lt!21398))))))

(assert (= (and d!18714 res!44617) b!88580))

(declare-fun m!68528 () Bool)

(assert (=> d!18714 m!68528))

(declare-fun m!68530 () Bool)

(assert (=> d!18714 m!68530))

(assert (=> b!88580 m!68530))

(assert (=> b!88580 m!68530))

(declare-fun m!68532 () Bool)

(assert (=> b!88580 m!68532))

(assert (=> d!18616 d!18714))

(declare-fun d!18716 () Bool)

(declare-fun c!22081 () Bool)

(assert (=> d!18716 (= c!22081 ((_ is Nil!1502) lt!21468))))

(declare-fun e!49352 () (InoxSet C!1716))

(assert (=> d!18716 (= (content!92 lt!21468) e!49352)))

(declare-fun b!88585 () Bool)

(assert (=> b!88585 (= e!49352 ((as const (Array C!1716 Bool)) false))))

(declare-fun b!88586 () Bool)

(assert (=> b!88586 (= e!49352 ((_ map or) (store ((as const (Array C!1716 Bool)) false) (h!6899 lt!21468) true) (content!92 (t!20697 lt!21468))))))

(assert (= (and d!18716 c!22081) b!88585))

(assert (= (and d!18716 (not c!22081)) b!88586))

(declare-fun m!68534 () Bool)

(assert (=> b!88586 m!68534))

(declare-fun m!68536 () Bool)

(assert (=> b!88586 m!68536))

(assert (=> d!18564 d!18716))

(declare-fun d!18718 () Bool)

(declare-fun c!22082 () Bool)

(assert (=> d!18718 (= c!22082 ((_ is Nil!1502) (list!542 (charsOf!64 (_1!995 lt!21398)))))))

(declare-fun e!49353 () (InoxSet C!1716))

(assert (=> d!18718 (= (content!92 (list!542 (charsOf!64 (_1!995 lt!21398)))) e!49353)))

(declare-fun b!88587 () Bool)

(assert (=> b!88587 (= e!49353 ((as const (Array C!1716 Bool)) false))))

(declare-fun b!88588 () Bool)

(assert (=> b!88588 (= e!49353 ((_ map or) (store ((as const (Array C!1716 Bool)) false) (h!6899 (list!542 (charsOf!64 (_1!995 lt!21398)))) true) (content!92 (t!20697 (list!542 (charsOf!64 (_1!995 lt!21398)))))))))

(assert (= (and d!18718 c!22082) b!88587))

(assert (= (and d!18718 (not c!22082)) b!88588))

(declare-fun m!68538 () Bool)

(assert (=> b!88588 m!68538))

(declare-fun m!68540 () Bool)

(assert (=> b!88588 m!68540))

(assert (=> d!18564 d!18718))

(declare-fun d!18720 () Bool)

(declare-fun c!22083 () Bool)

(assert (=> d!18720 (= c!22083 ((_ is Nil!1502) (_2!995 lt!21398)))))

(declare-fun e!49354 () (InoxSet C!1716))

(assert (=> d!18720 (= (content!92 (_2!995 lt!21398)) e!49354)))

(declare-fun b!88589 () Bool)

(assert (=> b!88589 (= e!49354 ((as const (Array C!1716 Bool)) false))))

(declare-fun b!88590 () Bool)

(assert (=> b!88590 (= e!49354 ((_ map or) (store ((as const (Array C!1716 Bool)) false) (h!6899 (_2!995 lt!21398)) true) (content!92 (t!20697 (_2!995 lt!21398)))))))

(assert (= (and d!18720 c!22083) b!88589))

(assert (= (and d!18720 (not c!22083)) b!88590))

(declare-fun m!68542 () Bool)

(assert (=> b!88590 m!68542))

(declare-fun m!68544 () Bool)

(assert (=> b!88590 m!68544))

(assert (=> d!18564 d!18720))

(declare-fun d!18722 () Bool)

(assert (=> d!18722 (= (isEmpty!566 lt!21464) (not ((_ is Some!139) lt!21464)))))

(assert (=> d!18558 d!18722))

(declare-fun b!88600 () Bool)

(declare-fun res!44628 () Bool)

(declare-fun e!49363 () Bool)

(assert (=> b!88600 (=> (not res!44628) (not e!49363))))

(declare-fun head!436 (List!1508) C!1716)

(assert (=> b!88600 (= res!44628 (= (head!436 input!2238) (head!436 input!2238)))))

(declare-fun d!18724 () Bool)

(declare-fun e!49361 () Bool)

(assert (=> d!18724 e!49361))

(declare-fun res!44627 () Bool)

(assert (=> d!18724 (=> res!44627 e!49361)))

(declare-fun lt!21831 () Bool)

(assert (=> d!18724 (= res!44627 (not lt!21831))))

(declare-fun e!49362 () Bool)

(assert (=> d!18724 (= lt!21831 e!49362)))

(declare-fun res!44626 () Bool)

(assert (=> d!18724 (=> res!44626 e!49362)))

(assert (=> d!18724 (= res!44626 ((_ is Nil!1502) input!2238))))

(assert (=> d!18724 (= (isPrefix!29 input!2238 input!2238) lt!21831)))

(declare-fun b!88599 () Bool)

(assert (=> b!88599 (= e!49362 e!49363)))

(declare-fun res!44629 () Bool)

(assert (=> b!88599 (=> (not res!44629) (not e!49363))))

(assert (=> b!88599 (= res!44629 (not ((_ is Nil!1502) input!2238)))))

(declare-fun b!88602 () Bool)

(assert (=> b!88602 (= e!49361 (>= (size!1299 input!2238) (size!1299 input!2238)))))

(declare-fun b!88601 () Bool)

(declare-fun tail!146 (List!1508) List!1508)

(assert (=> b!88601 (= e!49363 (isPrefix!29 (tail!146 input!2238) (tail!146 input!2238)))))

(assert (= (and d!18724 (not res!44626)) b!88599))

(assert (= (and b!88599 res!44629) b!88600))

(assert (= (and b!88600 res!44628) b!88601))

(assert (= (and d!18724 (not res!44627)) b!88602))

(declare-fun m!68546 () Bool)

(assert (=> b!88600 m!68546))

(assert (=> b!88600 m!68546))

(assert (=> b!88602 m!67812))

(assert (=> b!88602 m!67812))

(declare-fun m!68548 () Bool)

(assert (=> b!88601 m!68548))

(assert (=> b!88601 m!68548))

(assert (=> b!88601 m!68548))

(assert (=> b!88601 m!68548))

(declare-fun m!68550 () Bool)

(assert (=> b!88601 m!68550))

(assert (=> d!18558 d!18724))

(declare-fun d!18726 () Bool)

(assert (=> d!18726 (isPrefix!29 input!2238 input!2238)))

(declare-fun lt!21834 () Unit!954)

(declare-fun choose!1340 (List!1508 List!1508) Unit!954)

(assert (=> d!18726 (= lt!21834 (choose!1340 input!2238 input!2238))))

(assert (=> d!18726 (= (lemmaIsPrefixRefl!29 input!2238 input!2238) lt!21834)))

(declare-fun bs!8949 () Bool)

(assert (= bs!8949 d!18726))

(assert (=> bs!8949 m!67784))

(declare-fun m!68552 () Bool)

(assert (=> bs!8949 m!68552))

(assert (=> d!18558 d!18726))

(declare-fun d!18728 () Bool)

(assert (=> d!18728 true))

(declare-fun lt!21837 () Bool)

(declare-fun lambda!1583 () Int)

(declare-fun forall!200 (List!1510 Int) Bool)

(assert (=> d!18728 (= lt!21837 (forall!200 rules!2471 lambda!1583))))

(declare-fun e!49368 () Bool)

(assert (=> d!18728 (= lt!21837 e!49368)))

(declare-fun res!44634 () Bool)

(assert (=> d!18728 (=> res!44634 e!49368)))

(assert (=> d!18728 (= res!44634 (not ((_ is Cons!1504) rules!2471)))))

(assert (=> d!18728 (= (rulesValidInductive!54 thiss!19403 rules!2471) lt!21837)))

(declare-fun b!88607 () Bool)

(declare-fun e!49369 () Bool)

(assert (=> b!88607 (= e!49368 e!49369)))

(declare-fun res!44635 () Bool)

(assert (=> b!88607 (=> (not res!44635) (not e!49369))))

(declare-fun ruleValid!32 (LexerInterface!221 Rule!458) Bool)

(assert (=> b!88607 (= res!44635 (ruleValid!32 thiss!19403 (h!6901 rules!2471)))))

(declare-fun b!88608 () Bool)

(assert (=> b!88608 (= e!49369 (rulesValidInductive!54 thiss!19403 (t!20699 rules!2471)))))

(assert (= (and d!18728 (not res!44634)) b!88607))

(assert (= (and b!88607 res!44635) b!88608))

(declare-fun m!68554 () Bool)

(assert (=> d!18728 m!68554))

(declare-fun m!68556 () Bool)

(assert (=> b!88607 m!68556))

(declare-fun m!68558 () Bool)

(assert (=> b!88608 m!68558))

(assert (=> d!18558 d!18728))

(declare-fun d!18730 () Bool)

(declare-fun lt!21840 () Int)

(assert (=> d!18730 (= lt!21840 (size!1299 (list!542 (_2!994 lt!21502))))))

(declare-fun size!1304 (Conc!460) Int)

(assert (=> d!18730 (= lt!21840 (size!1304 (c!21982 (_2!994 lt!21502))))))

(assert (=> d!18730 (= (size!1297 (_2!994 lt!21502)) lt!21840)))

(declare-fun bs!8950 () Bool)

(assert (= bs!8950 d!18730))

(assert (=> bs!8950 m!67964))

(assert (=> bs!8950 m!67964))

(declare-fun m!68560 () Bool)

(assert (=> bs!8950 m!68560))

(declare-fun m!68562 () Bool)

(assert (=> bs!8950 m!68562))

(assert (=> b!88326 d!18730))

(declare-fun d!18732 () Bool)

(declare-fun lt!21841 () Int)

(assert (=> d!18732 (= lt!21841 (size!1299 (list!542 (seqFromList!166 (_2!995 lt!21398)))))))

(assert (=> d!18732 (= lt!21841 (size!1304 (c!21982 (seqFromList!166 (_2!995 lt!21398)))))))

(assert (=> d!18732 (= (size!1297 (seqFromList!166 (_2!995 lt!21398))) lt!21841)))

(declare-fun bs!8951 () Bool)

(assert (= bs!8951 d!18732))

(assert (=> bs!8951 m!67614))

(assert (=> bs!8951 m!67966))

(assert (=> bs!8951 m!67966))

(declare-fun m!68564 () Bool)

(assert (=> bs!8951 m!68564))

(declare-fun m!68566 () Bool)

(assert (=> bs!8951 m!68566))

(assert (=> b!88326 d!18732))

(declare-fun d!18734 () Bool)

(assert (=> d!18734 (= (isEmpty!563 (list!542 (_2!994 lt!21401))) ((_ is Nil!1502) (list!542 (_2!994 lt!21401))))))

(assert (=> d!18540 d!18734))

(assert (=> d!18540 d!18562))

(declare-fun d!18736 () Bool)

(declare-fun lt!21844 () Bool)

(assert (=> d!18736 (= lt!21844 (isEmpty!563 (list!546 (c!21982 (_2!994 lt!21401)))))))

(assert (=> d!18736 (= lt!21844 (= (size!1304 (c!21982 (_2!994 lt!21401))) 0))))

(assert (=> d!18736 (= (isEmpty!564 (c!21982 (_2!994 lt!21401))) lt!21844)))

(declare-fun bs!8952 () Bool)

(assert (= bs!8952 d!18736))

(assert (=> bs!8952 m!67816))

(assert (=> bs!8952 m!67816))

(declare-fun m!68568 () Bool)

(assert (=> bs!8952 m!68568))

(declare-fun m!68570 () Bool)

(assert (=> bs!8952 m!68570))

(assert (=> d!18540 d!18736))

(declare-fun d!18738 () Bool)

(declare-fun e!49372 () Bool)

(assert (=> d!18738 e!49372))

(declare-fun res!44638 () Bool)

(assert (=> d!18738 (=> (not res!44638) (not e!49372))))

(declare-fun lt!21847 () BalanceConc!926)

(assert (=> d!18738 (= res!44638 (= (list!541 lt!21847) (t!20700 lt!21403)))))

(declare-fun fromList!38 (List!1511) Conc!461)

(assert (=> d!18738 (= lt!21847 (BalanceConc!927 (fromList!38 (t!20700 lt!21403))))))

(assert (=> d!18738 (= (fromListB!63 (t!20700 lt!21403)) lt!21847)))

(declare-fun b!88613 () Bool)

(assert (=> b!88613 (= e!49372 (isBalanced!100 (fromList!38 (t!20700 lt!21403))))))

(assert (= (and d!18738 res!44638) b!88613))

(declare-fun m!68572 () Bool)

(assert (=> d!18738 m!68572))

(declare-fun m!68574 () Bool)

(assert (=> d!18738 m!68574))

(assert (=> b!88613 m!68574))

(assert (=> b!88613 m!68574))

(declare-fun m!68576 () Bool)

(assert (=> b!88613 m!68576))

(assert (=> d!18568 d!18738))

(declare-fun d!18740 () Bool)

(assert (=> d!18740 (= (isDefined!40 lt!21464) (not (isEmpty!566 lt!21464)))))

(declare-fun bs!8953 () Bool)

(assert (= bs!8953 d!18740))

(assert (=> bs!8953 m!67782))

(assert (=> b!88257 d!18740))

(declare-fun b!88623 () Bool)

(declare-fun e!49377 () List!1508)

(declare-fun e!49378 () List!1508)

(assert (=> b!88623 (= e!49377 e!49378)))

(declare-fun c!22090 () Bool)

(assert (=> b!88623 (= c!22090 ((_ is Leaf!760) (c!21982 (_2!994 lt!21401))))))

(declare-fun b!88625 () Bool)

(assert (=> b!88625 (= e!49378 (++!180 (list!546 (left!1141 (c!21982 (_2!994 lt!21401)))) (list!546 (right!1471 (c!21982 (_2!994 lt!21401))))))))

(declare-fun b!88624 () Bool)

(declare-fun list!550 (IArray!921) List!1508)

(assert (=> b!88624 (= e!49378 (list!550 (xs!3043 (c!21982 (_2!994 lt!21401)))))))

(declare-fun b!88622 () Bool)

(assert (=> b!88622 (= e!49377 Nil!1502)))

(declare-fun d!18742 () Bool)

(declare-fun c!22089 () Bool)

(assert (=> d!18742 (= c!22089 ((_ is Empty!460) (c!21982 (_2!994 lt!21401))))))

(assert (=> d!18742 (= (list!546 (c!21982 (_2!994 lt!21401))) e!49377)))

(assert (= (and d!18742 c!22089) b!88622))

(assert (= (and d!18742 (not c!22089)) b!88623))

(assert (= (and b!88623 c!22090) b!88624))

(assert (= (and b!88623 (not c!22090)) b!88625))

(declare-fun m!68578 () Bool)

(assert (=> b!88625 m!68578))

(declare-fun m!68580 () Bool)

(assert (=> b!88625 m!68580))

(assert (=> b!88625 m!68578))

(assert (=> b!88625 m!68580))

(declare-fun m!68582 () Bool)

(assert (=> b!88625 m!68582))

(declare-fun m!68584 () Bool)

(assert (=> b!88624 m!68584))

(assert (=> d!18562 d!18742))

(declare-fun bs!8954 () Bool)

(declare-fun d!18744 () Bool)

(assert (= bs!8954 (and d!18744 d!18728)))

(declare-fun lambda!1586 () Int)

(assert (=> bs!8954 (= lambda!1586 lambda!1583)))

(assert (=> d!18744 true))

(declare-fun lt!21850 () Bool)

(assert (=> d!18744 (= lt!21850 (rulesValidInductive!54 thiss!19403 rules!2471))))

(assert (=> d!18744 (= lt!21850 (forall!200 rules!2471 lambda!1586))))

(assert (=> d!18744 (= (rulesValid!73 thiss!19403 rules!2471) lt!21850)))

(declare-fun bs!8955 () Bool)

(assert (= bs!8955 d!18744))

(assert (=> bs!8955 m!67788))

(declare-fun m!68586 () Bool)

(assert (=> bs!8955 m!68586))

(assert (=> d!18538 d!18744))

(declare-fun d!18746 () Bool)

(declare-fun lt!21851 () Int)

(assert (=> d!18746 (= lt!21851 (size!1299 (list!542 (_2!994 lt!21449))))))

(assert (=> d!18746 (= lt!21851 (size!1304 (c!21982 (_2!994 lt!21449))))))

(assert (=> d!18746 (= (size!1297 (_2!994 lt!21449)) lt!21851)))

(declare-fun bs!8956 () Bool)

(assert (= bs!8956 d!18746))

(assert (=> bs!8956 m!67760))

(assert (=> bs!8956 m!67760))

(declare-fun m!68588 () Bool)

(assert (=> bs!8956 m!68588))

(declare-fun m!68590 () Bool)

(assert (=> bs!8956 m!68590))

(assert (=> b!88230 d!18746))

(declare-fun d!18748 () Bool)

(declare-fun lt!21852 () Int)

(assert (=> d!18748 (= lt!21852 (size!1299 (list!542 (seqFromList!166 input!2238))))))

(assert (=> d!18748 (= lt!21852 (size!1304 (c!21982 (seqFromList!166 input!2238))))))

(assert (=> d!18748 (= (size!1297 (seqFromList!166 input!2238)) lt!21852)))

(declare-fun bs!8957 () Bool)

(assert (= bs!8957 d!18748))

(assert (=> bs!8957 m!67588))

(assert (=> bs!8957 m!67762))

(assert (=> bs!8957 m!67762))

(declare-fun m!68592 () Bool)

(assert (=> bs!8957 m!68592))

(declare-fun m!68594 () Bool)

(assert (=> bs!8957 m!68594))

(assert (=> b!88230 d!18748))

(declare-fun b!88627 () Bool)

(declare-fun e!49379 () List!1508)

(declare-fun e!49380 () List!1508)

(assert (=> b!88627 (= e!49379 e!49380)))

(declare-fun c!22092 () Bool)

(assert (=> b!88627 (= c!22092 ((_ is Leaf!760) (c!21982 (_2!994 lt!21406))))))

(declare-fun b!88629 () Bool)

(assert (=> b!88629 (= e!49380 (++!180 (list!546 (left!1141 (c!21982 (_2!994 lt!21406)))) (list!546 (right!1471 (c!21982 (_2!994 lt!21406))))))))

(declare-fun b!88628 () Bool)

(assert (=> b!88628 (= e!49380 (list!550 (xs!3043 (c!21982 (_2!994 lt!21406)))))))

(declare-fun b!88626 () Bool)

(assert (=> b!88626 (= e!49379 Nil!1502)))

(declare-fun d!18750 () Bool)

(declare-fun c!22091 () Bool)

(assert (=> d!18750 (= c!22091 ((_ is Empty!460) (c!21982 (_2!994 lt!21406))))))

(assert (=> d!18750 (= (list!546 (c!21982 (_2!994 lt!21406))) e!49379)))

(assert (= (and d!18750 c!22091) b!88626))

(assert (= (and d!18750 (not c!22091)) b!88627))

(assert (= (and b!88627 c!22092) b!88628))

(assert (= (and b!88627 (not c!22092)) b!88629))

(declare-fun m!68596 () Bool)

(assert (=> b!88629 m!68596))

(declare-fun m!68598 () Bool)

(assert (=> b!88629 m!68598))

(assert (=> b!88629 m!68596))

(assert (=> b!88629 m!68598))

(declare-fun m!68600 () Bool)

(assert (=> b!88629 m!68600))

(declare-fun m!68602 () Bool)

(assert (=> b!88628 m!68602))

(assert (=> d!18560 d!18750))

(declare-fun b!88690 () Bool)

(declare-fun e!49412 () Bool)

(declare-fun lt!21932 () Option!140)

(assert (=> b!88690 (= e!49412 (= (size!1293 (_1!995 (get!382 lt!21932))) (size!1299 (originalCharacters!380 (_1!995 (get!382 lt!21932))))))))

(declare-fun b!88691 () Bool)

(declare-fun e!49413 () Bool)

(declare-datatypes ((tuple2!1586 0))(
  ( (tuple2!1587 (_1!1000 List!1508) (_2!1000 List!1508)) )
))
(declare-fun findLongestMatchInner!17 (Regex!397 List!1508 Int List!1508 List!1508 Int) tuple2!1586)

(assert (=> b!88691 (= e!49413 (matchR!31 (regex!329 (h!6901 rules!2471)) (_1!1000 (findLongestMatchInner!17 (regex!329 (h!6901 rules!2471)) Nil!1502 (size!1299 Nil!1502) input!2238 input!2238 (size!1299 input!2238)))))))

(declare-fun b!88692 () Bool)

(declare-fun res!44674 () Bool)

(assert (=> b!88692 (=> (not res!44674) (not e!49412))))

(assert (=> b!88692 (= res!44674 (< (size!1299 (_2!995 (get!382 lt!21932))) (size!1299 input!2238)))))

(declare-fun b!88693 () Bool)

(declare-fun res!44675 () Bool)

(assert (=> b!88693 (=> (not res!44675) (not e!49412))))

(assert (=> b!88693 (= res!44675 (= (rule!820 (_1!995 (get!382 lt!21932))) (h!6901 rules!2471)))))

(declare-fun b!88694 () Bool)

(declare-fun res!44672 () Bool)

(assert (=> b!88694 (=> (not res!44672) (not e!49412))))

(assert (=> b!88694 (= res!44672 (= (++!180 (list!542 (charsOf!64 (_1!995 (get!382 lt!21932)))) (_2!995 (get!382 lt!21932))) input!2238))))

(declare-fun b!88695 () Bool)

(declare-fun e!49411 () Option!140)

(assert (=> b!88695 (= e!49411 None!139)))

(declare-fun b!88696 () Bool)

(declare-fun res!44669 () Bool)

(assert (=> b!88696 (=> (not res!44669) (not e!49412))))

(assert (=> b!88696 (= res!44669 (= (value!12272 (_1!995 (get!382 lt!21932))) (apply!219 (transformation!329 (rule!820 (_1!995 (get!382 lt!21932)))) (seqFromList!166 (originalCharacters!380 (_1!995 (get!382 lt!21932)))))))))

(declare-fun d!18752 () Bool)

(declare-fun e!49410 () Bool)

(assert (=> d!18752 e!49410))

(declare-fun res!44670 () Bool)

(assert (=> d!18752 (=> res!44670 e!49410)))

(assert (=> d!18752 (= res!44670 (isEmpty!566 lt!21932))))

(assert (=> d!18752 (= lt!21932 e!49411)))

(declare-fun c!22106 () Bool)

(declare-fun lt!21934 () tuple2!1586)

(assert (=> d!18752 (= c!22106 (isEmpty!563 (_1!1000 lt!21934)))))

(declare-fun findLongestMatch!16 (Regex!397 List!1508) tuple2!1586)

(assert (=> d!18752 (= lt!21934 (findLongestMatch!16 (regex!329 (h!6901 rules!2471)) input!2238))))

(assert (=> d!18752 (ruleValid!32 thiss!19403 (h!6901 rules!2471))))

(assert (=> d!18752 (= (maxPrefixOneRule!27 thiss!19403 (h!6901 rules!2471) input!2238) lt!21932)))

(declare-fun b!88697 () Bool)

(assert (=> b!88697 (= e!49410 e!49412)))

(declare-fun res!44673 () Bool)

(assert (=> b!88697 (=> (not res!44673) (not e!49412))))

(assert (=> b!88697 (= res!44673 (matchR!31 (regex!329 (h!6901 rules!2471)) (list!542 (charsOf!64 (_1!995 (get!382 lt!21932))))))))

(declare-fun b!88698 () Bool)

(assert (=> b!88698 (= e!49411 (Some!139 (tuple2!1577 (Token!419 (apply!219 (transformation!329 (h!6901 rules!2471)) (seqFromList!166 (_1!1000 lt!21934))) (h!6901 rules!2471) (size!1297 (seqFromList!166 (_1!1000 lt!21934))) (_1!1000 lt!21934)) (_2!1000 lt!21934))))))

(declare-fun lt!21935 () Unit!954)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!18 (Regex!397 List!1508) Unit!954)

(assert (=> b!88698 (= lt!21935 (longestMatchIsAcceptedByMatchOrIsEmpty!18 (regex!329 (h!6901 rules!2471)) input!2238))))

(declare-fun res!44671 () Bool)

(assert (=> b!88698 (= res!44671 (isEmpty!563 (_1!1000 (findLongestMatchInner!17 (regex!329 (h!6901 rules!2471)) Nil!1502 (size!1299 Nil!1502) input!2238 input!2238 (size!1299 input!2238)))))))

(assert (=> b!88698 (=> res!44671 e!49413)))

(assert (=> b!88698 e!49413))

(declare-fun lt!21933 () Unit!954)

(assert (=> b!88698 (= lt!21933 lt!21935)))

(declare-fun lt!21931 () Unit!954)

(declare-fun lemmaSemiInverse!16 (TokenValueInjection!462 BalanceConc!924) Unit!954)

(assert (=> b!88698 (= lt!21931 (lemmaSemiInverse!16 (transformation!329 (h!6901 rules!2471)) (seqFromList!166 (_1!1000 lt!21934))))))

(assert (= (and d!18752 c!22106) b!88695))

(assert (= (and d!18752 (not c!22106)) b!88698))

(assert (= (and b!88698 (not res!44671)) b!88691))

(assert (= (and d!18752 (not res!44670)) b!88697))

(assert (= (and b!88697 res!44673) b!88694))

(assert (= (and b!88694 res!44672) b!88692))

(assert (= (and b!88692 res!44674) b!88693))

(assert (= (and b!88693 res!44675) b!88696))

(assert (= (and b!88696 res!44669) b!88690))

(declare-fun m!68776 () Bool)

(assert (=> b!88690 m!68776))

(declare-fun m!68778 () Bool)

(assert (=> b!88690 m!68778))

(assert (=> b!88693 m!68776))

(declare-fun m!68780 () Bool)

(assert (=> d!18752 m!68780))

(declare-fun m!68782 () Bool)

(assert (=> d!18752 m!68782))

(declare-fun m!68784 () Bool)

(assert (=> d!18752 m!68784))

(assert (=> d!18752 m!68556))

(declare-fun m!68786 () Bool)

(assert (=> b!88698 m!68786))

(declare-fun m!68788 () Bool)

(assert (=> b!88698 m!68788))

(declare-fun m!68790 () Bool)

(assert (=> b!88698 m!68790))

(declare-fun m!68792 () Bool)

(assert (=> b!88698 m!68792))

(assert (=> b!88698 m!67812))

(declare-fun m!68794 () Bool)

(assert (=> b!88698 m!68794))

(assert (=> b!88698 m!68786))

(declare-fun m!68796 () Bool)

(assert (=> b!88698 m!68796))

(assert (=> b!88698 m!67812))

(assert (=> b!88698 m!68786))

(declare-fun m!68798 () Bool)

(assert (=> b!88698 m!68798))

(assert (=> b!88698 m!68786))

(declare-fun m!68800 () Bool)

(assert (=> b!88698 m!68800))

(assert (=> b!88698 m!68792))

(assert (=> b!88692 m!68776))

(declare-fun m!68802 () Bool)

(assert (=> b!88692 m!68802))

(assert (=> b!88692 m!67812))

(assert (=> b!88694 m!68776))

(declare-fun m!68804 () Bool)

(assert (=> b!88694 m!68804))

(assert (=> b!88694 m!68804))

(declare-fun m!68806 () Bool)

(assert (=> b!88694 m!68806))

(assert (=> b!88694 m!68806))

(declare-fun m!68808 () Bool)

(assert (=> b!88694 m!68808))

(assert (=> b!88697 m!68776))

(assert (=> b!88697 m!68804))

(assert (=> b!88697 m!68804))

(assert (=> b!88697 m!68806))

(assert (=> b!88697 m!68806))

(declare-fun m!68810 () Bool)

(assert (=> b!88697 m!68810))

(assert (=> b!88696 m!68776))

(declare-fun m!68812 () Bool)

(assert (=> b!88696 m!68812))

(assert (=> b!88696 m!68812))

(declare-fun m!68814 () Bool)

(assert (=> b!88696 m!68814))

(assert (=> b!88691 m!68792))

(assert (=> b!88691 m!67812))

(assert (=> b!88691 m!68792))

(assert (=> b!88691 m!67812))

(assert (=> b!88691 m!68794))

(declare-fun m!68816 () Bool)

(assert (=> b!88691 m!68816))

(assert (=> bm!4027 d!18752))

(declare-fun d!18774 () Bool)

(declare-fun res!44690 () Bool)

(declare-fun e!49428 () Bool)

(assert (=> d!18774 (=> res!44690 e!49428)))

(assert (=> d!18774 (= res!44690 ((_ is Nil!1504) rules!2471))))

(assert (=> d!18774 (= (noDuplicateTag!73 thiss!19403 rules!2471 Nil!1507) e!49428)))

(declare-fun b!88713 () Bool)

(declare-fun e!49429 () Bool)

(assert (=> b!88713 (= e!49428 e!49429)))

(declare-fun res!44691 () Bool)

(assert (=> b!88713 (=> (not res!44691) (not e!49429))))

(declare-fun contains!231 (List!1513 String!1986) Bool)

(assert (=> b!88713 (= res!44691 (not (contains!231 Nil!1507 (tag!507 (h!6901 rules!2471)))))))

(declare-fun b!88714 () Bool)

(assert (=> b!88714 (= e!49429 (noDuplicateTag!73 thiss!19403 (t!20699 rules!2471) (Cons!1507 (tag!507 (h!6901 rules!2471)) Nil!1507)))))

(assert (= (and d!18774 (not res!44690)) b!88713))

(assert (= (and b!88713 res!44691) b!88714))

(declare-fun m!68822 () Bool)

(assert (=> b!88713 m!68822))

(declare-fun m!68824 () Bool)

(assert (=> b!88714 m!68824))

(assert (=> b!88172 d!18774))

(declare-fun b!88735 () Bool)

(declare-fun res!44713 () Bool)

(declare-fun e!49440 () Bool)

(assert (=> b!88735 (=> (not res!44713) (not e!49440))))

(assert (=> b!88735 (= res!44713 (isBalanced!100 (right!1472 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403)))))))

(declare-fun b!88737 () Bool)

(declare-fun res!44710 () Bool)

(assert (=> b!88737 (=> (not res!44710) (not e!49440))))

(assert (=> b!88737 (= res!44710 (isBalanced!100 (left!1142 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403)))))))

(declare-fun b!88738 () Bool)

(declare-fun e!49441 () Bool)

(assert (=> b!88738 (= e!49441 e!49440)))

(declare-fun res!44711 () Bool)

(assert (=> b!88738 (=> (not res!44711) (not e!49440))))

(declare-fun height!38 (Conc!461) Int)

(assert (=> b!88738 (= res!44711 (<= (- 1) (- (height!38 (left!1142 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403)))) (height!38 (right!1472 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403)))))))))

(declare-fun b!88739 () Bool)

(declare-fun res!44709 () Bool)

(assert (=> b!88739 (=> (not res!44709) (not e!49440))))

(declare-fun isEmpty!569 (Conc!461) Bool)

(assert (=> b!88739 (= res!44709 (not (isEmpty!569 (left!1142 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403))))))))

(declare-fun b!88740 () Bool)

(declare-fun res!44708 () Bool)

(assert (=> b!88740 (=> (not res!44708) (not e!49440))))

(assert (=> b!88740 (= res!44708 (<= (- (height!38 (left!1142 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403)))) (height!38 (right!1472 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403))))) 1))))

(declare-fun b!88736 () Bool)

(assert (=> b!88736 (= e!49440 (not (isEmpty!569 (right!1472 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403))))))))

(declare-fun d!18778 () Bool)

(declare-fun res!44712 () Bool)

(assert (=> d!18778 (=> res!44712 e!49441)))

(assert (=> d!18778 (= res!44712 (not ((_ is Node!461) (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403)))))))

(assert (=> d!18778 (= (isBalanced!100 (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403))) e!49441)))

(assert (= (and d!18778 (not res!44712)) b!88738))

(assert (= (and b!88738 res!44711) b!88740))

(assert (= (and b!88740 res!44708) b!88737))

(assert (= (and b!88737 res!44710) b!88735))

(assert (= (and b!88735 res!44713) b!88739))

(assert (= (and b!88739 res!44709) b!88736))

(declare-fun m!68842 () Bool)

(assert (=> b!88739 m!68842))

(declare-fun m!68844 () Bool)

(assert (=> b!88740 m!68844))

(declare-fun m!68846 () Bool)

(assert (=> b!88740 m!68846))

(assert (=> b!88738 m!68844))

(assert (=> b!88738 m!68846))

(declare-fun m!68848 () Bool)

(assert (=> b!88736 m!68848))

(declare-fun m!68850 () Bool)

(assert (=> b!88737 m!68850))

(declare-fun m!68852 () Bool)

(assert (=> b!88735 m!68852))

(assert (=> d!18566 d!18778))

(declare-fun d!18788 () Bool)

(declare-fun e!49449 () Bool)

(assert (=> d!18788 e!49449))

(declare-fun res!44717 () Bool)

(assert (=> d!18788 (=> (not res!44717) (not e!49449))))

(declare-fun lt!21946 () Conc!461)

(assert (=> d!18788 (= res!44717 (isBalanced!100 lt!21946))))

(declare-fun ++!186 (Conc!461 Conc!461) Conc!461)

(declare-fun fill!21 (Int Token!418) IArray!923)

(assert (=> d!18788 (= lt!21946 (++!186 (Leaf!761 (fill!21 1 (h!6902 lt!21403)) 1) (c!21984 (seqFromList!167 (t!20700 lt!21403)))))))

(assert (=> d!18788 (isBalanced!100 (c!21984 (seqFromList!167 (t!20700 lt!21403))))))

(assert (=> d!18788 (= (prepend!95 (c!21984 (seqFromList!167 (t!20700 lt!21403))) (h!6902 lt!21403)) lt!21946)))

(declare-fun b!88754 () Bool)

(assert (=> b!88754 (= e!49449 (= (list!545 lt!21946) (Cons!1505 (h!6902 lt!21403) (list!545 (c!21984 (seqFromList!167 (t!20700 lt!21403)))))))))

(assert (= (and d!18788 res!44717) b!88754))

(declare-fun m!68882 () Bool)

(assert (=> d!18788 m!68882))

(declare-fun m!68884 () Bool)

(assert (=> d!18788 m!68884))

(declare-fun m!68886 () Bool)

(assert (=> d!18788 m!68886))

(declare-fun m!68888 () Bool)

(assert (=> d!18788 m!68888))

(declare-fun m!68890 () Bool)

(assert (=> b!88754 m!68890))

(assert (=> b!88754 m!68016))

(assert (=> d!18566 d!18788))

(declare-fun b!88764 () Bool)

(declare-fun e!49454 () List!1511)

(assert (=> b!88764 (= e!49454 (++!184 (list!545 (left!1142 (c!21984 (_1!994 lt!21401)))) (list!545 (right!1472 (c!21984 (_1!994 lt!21401))))))))

(declare-fun d!18806 () Bool)

(declare-fun c!22115 () Bool)

(assert (=> d!18806 (= c!22115 ((_ is Empty!461) (c!21984 (_1!994 lt!21401))))))

(declare-fun e!49453 () List!1511)

(assert (=> d!18806 (= (list!545 (c!21984 (_1!994 lt!21401))) e!49453)))

(declare-fun b!88762 () Bool)

(assert (=> b!88762 (= e!49453 e!49454)))

(declare-fun c!22116 () Bool)

(assert (=> b!88762 (= c!22116 ((_ is Leaf!761) (c!21984 (_1!994 lt!21401))))))

(declare-fun b!88761 () Bool)

(assert (=> b!88761 (= e!49453 Nil!1505)))

(declare-fun b!88763 () Bool)

(assert (=> b!88763 (= e!49454 (list!549 (xs!3044 (c!21984 (_1!994 lt!21401)))))))

(assert (= (and d!18806 c!22115) b!88761))

(assert (= (and d!18806 (not c!22115)) b!88762))

(assert (= (and b!88762 c!22116) b!88763))

(assert (= (and b!88762 (not c!22116)) b!88764))

(declare-fun m!68894 () Bool)

(assert (=> b!88764 m!68894))

(declare-fun m!68896 () Bool)

(assert (=> b!88764 m!68896))

(assert (=> b!88764 m!68894))

(assert (=> b!88764 m!68896))

(declare-fun m!68906 () Bool)

(assert (=> b!88764 m!68906))

(declare-fun m!68910 () Bool)

(assert (=> b!88763 m!68910))

(assert (=> d!18536 d!18806))

(declare-fun b!88767 () Bool)

(declare-fun res!44720 () Bool)

(declare-fun e!49456 () Bool)

(assert (=> b!88767 (=> (not res!44720) (not e!49456))))

(declare-fun lt!21948 () List!1508)

(assert (=> b!88767 (= res!44720 (= (size!1299 lt!21948) (+ (size!1299 (list!542 (print!60 thiss!19403 (_1!994 lt!21498)))) (size!1299 (list!542 (_2!994 lt!21498))))))))

(declare-fun b!88768 () Bool)

(assert (=> b!88768 (= e!49456 (or (not (= (list!542 (_2!994 lt!21498)) Nil!1502)) (= lt!21948 (list!542 (print!60 thiss!19403 (_1!994 lt!21498))))))))

(declare-fun d!18810 () Bool)

(assert (=> d!18810 e!49456))

(declare-fun res!44721 () Bool)

(assert (=> d!18810 (=> (not res!44721) (not e!49456))))

(assert (=> d!18810 (= res!44721 (= (content!92 lt!21948) ((_ map or) (content!92 (list!542 (print!60 thiss!19403 (_1!994 lt!21498)))) (content!92 (list!542 (_2!994 lt!21498))))))))

(declare-fun e!49455 () List!1508)

(assert (=> d!18810 (= lt!21948 e!49455)))

(declare-fun c!22117 () Bool)

(assert (=> d!18810 (= c!22117 ((_ is Nil!1502) (list!542 (print!60 thiss!19403 (_1!994 lt!21498)))))))

(assert (=> d!18810 (= (++!180 (list!542 (print!60 thiss!19403 (_1!994 lt!21498))) (list!542 (_2!994 lt!21498))) lt!21948)))

(declare-fun b!88766 () Bool)

(assert (=> b!88766 (= e!49455 (Cons!1502 (h!6899 (list!542 (print!60 thiss!19403 (_1!994 lt!21498)))) (++!180 (t!20697 (list!542 (print!60 thiss!19403 (_1!994 lt!21498)))) (list!542 (_2!994 lt!21498)))))))

(declare-fun b!88765 () Bool)

(assert (=> b!88765 (= e!49455 (list!542 (_2!994 lt!21498)))))

(assert (= (and d!18810 c!22117) b!88765))

(assert (= (and d!18810 (not c!22117)) b!88766))

(assert (= (and d!18810 res!44721) b!88767))

(assert (= (and b!88767 res!44720) b!88768))

(declare-fun m!68914 () Bool)

(assert (=> b!88767 m!68914))

(assert (=> b!88767 m!67948))

(declare-fun m!68916 () Bool)

(assert (=> b!88767 m!68916))

(assert (=> b!88767 m!67950))

(declare-fun m!68918 () Bool)

(assert (=> b!88767 m!68918))

(declare-fun m!68920 () Bool)

(assert (=> d!18810 m!68920))

(assert (=> d!18810 m!67948))

(declare-fun m!68922 () Bool)

(assert (=> d!18810 m!68922))

(assert (=> d!18810 m!67950))

(declare-fun m!68924 () Bool)

(assert (=> d!18810 m!68924))

(assert (=> b!88766 m!67950))

(declare-fun m!68926 () Bool)

(assert (=> b!88766 m!68926))

(assert (=> d!18586 d!18810))

(declare-fun d!18814 () Bool)

(assert (=> d!18814 (= (list!542 (_2!994 lt!21498)) (list!546 (c!21982 (_2!994 lt!21498))))))

(declare-fun bs!8969 () Bool)

(assert (= bs!8969 d!18814))

(declare-fun m!68928 () Bool)

(assert (=> bs!8969 m!68928))

(assert (=> d!18586 d!18814))

(declare-fun d!18816 () Bool)

(declare-fun lt!21950 () BalanceConc!924)

(assert (=> d!18816 (= (list!542 lt!21950) (printList!25 thiss!19403 (list!541 (_1!994 lt!21498))))))

(assert (=> d!18816 (= lt!21950 (printTailRec!25 thiss!19403 (_1!994 lt!21498) 0 (BalanceConc!925 Empty!460)))))

(assert (=> d!18816 (= (print!60 thiss!19403 (_1!994 lt!21498)) lt!21950)))

(declare-fun bs!8970 () Bool)

(assert (= bs!8970 d!18816))

(declare-fun m!68934 () Bool)

(assert (=> bs!8970 m!68934))

(declare-fun m!68936 () Bool)

(assert (=> bs!8970 m!68936))

(assert (=> bs!8970 m!68936))

(declare-fun m!68938 () Bool)

(assert (=> bs!8970 m!68938))

(declare-fun m!68940 () Bool)

(assert (=> bs!8970 m!68940))

(assert (=> d!18586 d!18816))

(assert (=> d!18586 d!18556))

(assert (=> d!18586 d!18612))

(assert (=> d!18586 d!18616))

(declare-fun d!18818 () Bool)

(assert (=> d!18818 (= (list!542 (print!60 thiss!19403 (_1!994 lt!21498))) (list!546 (c!21982 (print!60 thiss!19403 (_1!994 lt!21498)))))))

(declare-fun bs!8971 () Bool)

(assert (= bs!8971 d!18818))

(declare-fun m!68946 () Bool)

(assert (=> bs!8971 m!68946))

(assert (=> d!18586 d!18818))

(declare-fun d!18822 () Bool)

(declare-fun lt!21967 () tuple2!1574)

(assert (=> d!18822 (= (++!180 (list!542 (print!60 thiss!19403 (_1!994 lt!21967))) (list!542 (_2!994 lt!21967))) (_2!995 lt!21398))))

(assert (=> d!18822 (= lt!21967 (lex!129 thiss!19403 rules!2471 (seqFromList!166 (_2!995 lt!21398))))))

(assert (=> d!18822 true))

(declare-fun _$31!112 () Unit!954)

(assert (=> d!18822 (= (choose!1337 thiss!19403 rules!2471 (_2!995 lt!21398)) _$31!112)))

(declare-fun bs!8977 () Bool)

(assert (= bs!8977 d!18822))

(declare-fun m!69016 () Bool)

(assert (=> bs!8977 m!69016))

(declare-fun m!69018 () Bool)

(assert (=> bs!8977 m!69018))

(assert (=> bs!8977 m!67614))

(assert (=> bs!8977 m!67624))

(assert (=> bs!8977 m!69016))

(declare-fun m!69020 () Bool)

(assert (=> bs!8977 m!69020))

(assert (=> bs!8977 m!67614))

(assert (=> bs!8977 m!69018))

(assert (=> bs!8977 m!69020))

(declare-fun m!69022 () Bool)

(assert (=> bs!8977 m!69022))

(assert (=> d!18586 d!18822))

(declare-fun d!18850 () Bool)

(declare-fun lt!21970 () Bool)

(declare-fun content!94 (List!1510) (InoxSet Rule!458))

(assert (=> d!18850 (= lt!21970 (select (content!94 rules!2471) (rule!820 (_1!995 (get!382 lt!21464)))))))

(declare-fun e!49501 () Bool)

(assert (=> d!18850 (= lt!21970 e!49501)))

(declare-fun res!44761 () Bool)

(assert (=> d!18850 (=> (not res!44761) (not e!49501))))

(assert (=> d!18850 (= res!44761 ((_ is Cons!1504) rules!2471))))

(assert (=> d!18850 (= (contains!229 rules!2471 (rule!820 (_1!995 (get!382 lt!21464)))) lt!21970)))

(declare-fun b!88844 () Bool)

(declare-fun e!49500 () Bool)

(assert (=> b!88844 (= e!49501 e!49500)))

(declare-fun res!44760 () Bool)

(assert (=> b!88844 (=> res!44760 e!49500)))

(assert (=> b!88844 (= res!44760 (= (h!6901 rules!2471) (rule!820 (_1!995 (get!382 lt!21464)))))))

(declare-fun b!88845 () Bool)

(assert (=> b!88845 (= e!49500 (contains!229 (t!20699 rules!2471) (rule!820 (_1!995 (get!382 lt!21464)))))))

(assert (= (and d!18850 res!44761) b!88844))

(assert (= (and b!88844 (not res!44760)) b!88845))

(declare-fun m!69024 () Bool)

(assert (=> d!18850 m!69024))

(declare-fun m!69026 () Bool)

(assert (=> d!18850 m!69026))

(declare-fun m!69028 () Bool)

(assert (=> b!88845 m!69028))

(assert (=> b!88252 d!18850))

(declare-fun d!18852 () Bool)

(assert (=> d!18852 (= (get!382 lt!21464) (v!12864 lt!21464))))

(assert (=> b!88252 d!18852))

(declare-fun d!18854 () Bool)

(declare-fun lt!21973 () Bool)

(declare-fun isEmpty!570 (List!1511) Bool)

(assert (=> d!18854 (= lt!21973 (isEmpty!570 (list!541 (_1!994 lt!21449))))))

(assert (=> d!18854 (= lt!21973 (isEmpty!569 (c!21984 (_1!994 lt!21449))))))

(assert (=> d!18854 (= (isEmpty!565 (_1!994 lt!21449)) lt!21973)))

(declare-fun bs!8978 () Bool)

(assert (= bs!8978 d!18854))

(assert (=> bs!8978 m!67768))

(assert (=> bs!8978 m!67768))

(declare-fun m!69030 () Bool)

(assert (=> bs!8978 m!69030))

(declare-fun m!69032 () Bool)

(assert (=> bs!8978 m!69032))

(assert (=> b!88228 d!18854))

(declare-fun d!18856 () Bool)

(declare-fun lt!21976 () Int)

(assert (=> d!18856 (>= lt!21976 0)))

(declare-fun e!49504 () Int)

(assert (=> d!18856 (= lt!21976 e!49504)))

(declare-fun c!22139 () Bool)

(assert (=> d!18856 (= c!22139 ((_ is Nil!1502) lt!21486))))

(assert (=> d!18856 (= (size!1299 lt!21486) lt!21976)))

(declare-fun b!88850 () Bool)

(assert (=> b!88850 (= e!49504 0)))

(declare-fun b!88851 () Bool)

(assert (=> b!88851 (= e!49504 (+ 1 (size!1299 (t!20697 lt!21486))))))

(assert (= (and d!18856 c!22139) b!88850))

(assert (= (and d!18856 (not c!22139)) b!88851))

(declare-fun m!69034 () Bool)

(assert (=> b!88851 m!69034))

(assert (=> b!88277 d!18856))

(declare-fun d!18858 () Bool)

(declare-fun lt!21977 () Int)

(assert (=> d!18858 (>= lt!21977 0)))

(declare-fun e!49505 () Int)

(assert (=> d!18858 (= lt!21977 e!49505)))

(declare-fun c!22140 () Bool)

(assert (=> d!18858 (= c!22140 ((_ is Nil!1502) lt!21404))))

(assert (=> d!18858 (= (size!1299 lt!21404) lt!21977)))

(declare-fun b!88852 () Bool)

(assert (=> b!88852 (= e!49505 0)))

(declare-fun b!88853 () Bool)

(assert (=> b!88853 (= e!49505 (+ 1 (size!1299 (t!20697 lt!21404))))))

(assert (= (and d!18858 c!22140) b!88852))

(assert (= (and d!18858 (not c!22140)) b!88853))

(declare-fun m!69036 () Bool)

(assert (=> b!88853 m!69036))

(assert (=> b!88277 d!18858))

(declare-fun d!18860 () Bool)

(declare-fun lt!21978 () Int)

(assert (=> d!18860 (>= lt!21978 0)))

(declare-fun e!49506 () Int)

(assert (=> d!18860 (= lt!21978 e!49506)))

(declare-fun c!22141 () Bool)

(assert (=> d!18860 (= c!22141 ((_ is Nil!1502) lt!21399))))

(assert (=> d!18860 (= (size!1299 lt!21399) lt!21978)))

(declare-fun b!88854 () Bool)

(assert (=> b!88854 (= e!49506 0)))

(declare-fun b!88855 () Bool)

(assert (=> b!88855 (= e!49506 (+ 1 (size!1299 (t!20697 lt!21399))))))

(assert (= (and d!18860 c!22141) b!88854))

(assert (= (and d!18860 (not c!22141)) b!88855))

(declare-fun m!69038 () Bool)

(assert (=> b!88855 m!69038))

(assert (=> b!88277 d!18860))

(declare-fun b!88858 () Bool)

(declare-fun res!44762 () Bool)

(declare-fun e!49508 () Bool)

(assert (=> b!88858 (=> (not res!44762) (not e!49508))))

(declare-fun lt!21979 () List!1508)

(assert (=> b!88858 (= res!44762 (= (size!1299 lt!21979) (+ (size!1299 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))) (size!1299 (_2!995 (get!382 lt!21464))))))))

(declare-fun b!88859 () Bool)

(assert (=> b!88859 (= e!49508 (or (not (= (_2!995 (get!382 lt!21464)) Nil!1502)) (= lt!21979 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464)))))))))

(declare-fun d!18862 () Bool)

(assert (=> d!18862 e!49508))

(declare-fun res!44763 () Bool)

(assert (=> d!18862 (=> (not res!44763) (not e!49508))))

(assert (=> d!18862 (= res!44763 (= (content!92 lt!21979) ((_ map or) (content!92 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))) (content!92 (_2!995 (get!382 lt!21464))))))))

(declare-fun e!49507 () List!1508)

(assert (=> d!18862 (= lt!21979 e!49507)))

(declare-fun c!22142 () Bool)

(assert (=> d!18862 (= c!22142 ((_ is Nil!1502) (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))))))

(assert (=> d!18862 (= (++!180 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464)))) (_2!995 (get!382 lt!21464))) lt!21979)))

(declare-fun b!88857 () Bool)

(assert (=> b!88857 (= e!49507 (Cons!1502 (h!6899 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))) (++!180 (t!20697 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))) (_2!995 (get!382 lt!21464)))))))

(declare-fun b!88856 () Bool)

(assert (=> b!88856 (= e!49507 (_2!995 (get!382 lt!21464)))))

(assert (= (and d!18862 c!22142) b!88856))

(assert (= (and d!18862 (not c!22142)) b!88857))

(assert (= (and d!18862 res!44763) b!88858))

(assert (= (and b!88858 res!44762) b!88859))

(declare-fun m!69040 () Bool)

(assert (=> b!88858 m!69040))

(assert (=> b!88858 m!67798))

(declare-fun m!69042 () Bool)

(assert (=> b!88858 m!69042))

(assert (=> b!88858 m!67810))

(declare-fun m!69044 () Bool)

(assert (=> d!18862 m!69044))

(assert (=> d!18862 m!67798))

(declare-fun m!69046 () Bool)

(assert (=> d!18862 m!69046))

(declare-fun m!69048 () Bool)

(assert (=> d!18862 m!69048))

(declare-fun m!69050 () Bool)

(assert (=> b!88857 m!69050))

(assert (=> b!88255 d!18862))

(declare-fun d!18864 () Bool)

(assert (=> d!18864 (= (list!542 (charsOf!64 (_1!995 (get!382 lt!21464)))) (list!546 (c!21982 (charsOf!64 (_1!995 (get!382 lt!21464))))))))

(declare-fun bs!8979 () Bool)

(assert (= bs!8979 d!18864))

(declare-fun m!69052 () Bool)

(assert (=> bs!8979 m!69052))

(assert (=> b!88255 d!18864))

(declare-fun d!18866 () Bool)

(declare-fun lt!21980 () BalanceConc!924)

(assert (=> d!18866 (= (list!542 lt!21980) (originalCharacters!380 (_1!995 (get!382 lt!21464))))))

(assert (=> d!18866 (= lt!21980 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464))))) (value!12272 (_1!995 (get!382 lt!21464)))))))

(assert (=> d!18866 (= (charsOf!64 (_1!995 (get!382 lt!21464))) lt!21980)))

(declare-fun b_lambda!1019 () Bool)

(assert (=> (not b_lambda!1019) (not d!18866)))

(declare-fun tb!2727 () Bool)

(declare-fun t!20726 () Bool)

(assert (=> (and b!88142 (= (toChars!715 (transformation!329 (h!6901 rules!2471))) (toChars!715 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464)))))) t!20726) tb!2727))

(declare-fun b!88860 () Bool)

(declare-fun e!49509 () Bool)

(declare-fun tp!53202 () Bool)

(assert (=> b!88860 (= e!49509 (and (inv!1857 (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464))))) (value!12272 (_1!995 (get!382 lt!21464)))))) tp!53202))))

(declare-fun result!3920 () Bool)

(assert (=> tb!2727 (= result!3920 (and (inv!1858 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464))))) (value!12272 (_1!995 (get!382 lt!21464))))) e!49509))))

(assert (= tb!2727 b!88860))

(declare-fun m!69054 () Bool)

(assert (=> b!88860 m!69054))

(declare-fun m!69056 () Bool)

(assert (=> tb!2727 m!69056))

(assert (=> d!18866 t!20726))

(declare-fun b_and!4019 () Bool)

(assert (= b_and!4009 (and (=> t!20726 result!3920) b_and!4019)))

(declare-fun t!20728 () Bool)

(declare-fun tb!2729 () Bool)

(assert (=> (and b!88341 (= (toChars!715 (transformation!329 (h!6901 (t!20699 rules!2471)))) (toChars!715 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464)))))) t!20728) tb!2729))

(declare-fun result!3922 () Bool)

(assert (= result!3922 result!3920))

(assert (=> d!18866 t!20728))

(declare-fun b_and!4021 () Bool)

(assert (= b_and!4013 (and (=> t!20728 result!3922) b_and!4021)))

(declare-fun m!69058 () Bool)

(assert (=> d!18866 m!69058))

(declare-fun m!69060 () Bool)

(assert (=> d!18866 m!69060))

(assert (=> b!88255 d!18866))

(assert (=> b!88255 d!18852))

(declare-fun d!18868 () Bool)

(declare-fun lt!21981 () Bool)

(assert (=> d!18868 (= lt!21981 (isEmpty!570 (list!541 (_1!994 lt!21502))))))

(assert (=> d!18868 (= lt!21981 (isEmpty!569 (c!21984 (_1!994 lt!21502))))))

(assert (=> d!18868 (= (isEmpty!565 (_1!994 lt!21502)) lt!21981)))

(declare-fun bs!8980 () Bool)

(assert (= bs!8980 d!18868))

(assert (=> bs!8980 m!67972))

(assert (=> bs!8980 m!67972))

(declare-fun m!69062 () Bool)

(assert (=> bs!8980 m!69062))

(declare-fun m!69064 () Bool)

(assert (=> bs!8980 m!69064))

(assert (=> b!88324 d!18868))

(declare-fun d!18870 () Bool)

(declare-fun lt!21982 () Int)

(assert (=> d!18870 (>= lt!21982 0)))

(declare-fun e!49510 () Int)

(assert (=> d!18870 (= lt!21982 e!49510)))

(declare-fun c!22143 () Bool)

(assert (=> d!18870 (= c!22143 ((_ is Nil!1502) lt!21468))))

(assert (=> d!18870 (= (size!1299 lt!21468) lt!21982)))

(declare-fun b!88861 () Bool)

(assert (=> b!88861 (= e!49510 0)))

(declare-fun b!88862 () Bool)

(assert (=> b!88862 (= e!49510 (+ 1 (size!1299 (t!20697 lt!21468))))))

(assert (= (and d!18870 c!22143) b!88861))

(assert (= (and d!18870 (not c!22143)) b!88862))

(declare-fun m!69066 () Bool)

(assert (=> b!88862 m!69066))

(assert (=> b!88270 d!18870))

(declare-fun d!18872 () Bool)

(declare-fun lt!21983 () Int)

(assert (=> d!18872 (>= lt!21983 0)))

(declare-fun e!49511 () Int)

(assert (=> d!18872 (= lt!21983 e!49511)))

(declare-fun c!22144 () Bool)

(assert (=> d!18872 (= c!22144 ((_ is Nil!1502) (list!542 (charsOf!64 (_1!995 lt!21398)))))))

(assert (=> d!18872 (= (size!1299 (list!542 (charsOf!64 (_1!995 lt!21398)))) lt!21983)))

(declare-fun b!88863 () Bool)

(assert (=> b!88863 (= e!49511 0)))

(declare-fun b!88864 () Bool)

(assert (=> b!88864 (= e!49511 (+ 1 (size!1299 (t!20697 (list!542 (charsOf!64 (_1!995 lt!21398)))))))))

(assert (= (and d!18872 c!22144) b!88863))

(assert (= (and d!18872 (not c!22144)) b!88864))

(declare-fun m!69068 () Bool)

(assert (=> b!88864 m!69068))

(assert (=> b!88270 d!18872))

(declare-fun d!18874 () Bool)

(declare-fun lt!21984 () Int)

(assert (=> d!18874 (>= lt!21984 0)))

(declare-fun e!49512 () Int)

(assert (=> d!18874 (= lt!21984 e!49512)))

(declare-fun c!22145 () Bool)

(assert (=> d!18874 (= c!22145 ((_ is Nil!1502) (_2!995 lt!21398)))))

(assert (=> d!18874 (= (size!1299 (_2!995 lt!21398)) lt!21984)))

(declare-fun b!88865 () Bool)

(assert (=> b!88865 (= e!49512 0)))

(declare-fun b!88866 () Bool)

(assert (=> b!88866 (= e!49512 (+ 1 (size!1299 (t!20697 (_2!995 lt!21398)))))))

(assert (= (and d!18874 c!22145) b!88865))

(assert (= (and d!18874 (not c!22145)) b!88866))

(declare-fun m!69070 () Bool)

(assert (=> b!88866 m!69070))

(assert (=> b!88270 d!18874))

(declare-fun d!18876 () Bool)

(assert (=> d!18876 (= (inv!1852 (tag!507 (h!6901 (t!20699 rules!2471)))) (= (mod (str.len (value!12246 (tag!507 (h!6901 (t!20699 rules!2471))))) 2) 0))))

(assert (=> b!88340 d!18876))

(declare-fun d!18878 () Bool)

(declare-fun res!44764 () Bool)

(declare-fun e!49513 () Bool)

(assert (=> d!18878 (=> (not res!44764) (not e!49513))))

(assert (=> d!18878 (= res!44764 (semiInverseModEq!65 (toChars!715 (transformation!329 (h!6901 (t!20699 rules!2471)))) (toValue!856 (transformation!329 (h!6901 (t!20699 rules!2471))))))))

(assert (=> d!18878 (= (inv!1854 (transformation!329 (h!6901 (t!20699 rules!2471)))) e!49513)))

(declare-fun b!88867 () Bool)

(assert (=> b!88867 (= e!49513 (equivClasses!61 (toChars!715 (transformation!329 (h!6901 (t!20699 rules!2471)))) (toValue!856 (transformation!329 (h!6901 (t!20699 rules!2471))))))))

(assert (= (and d!18878 res!44764) b!88867))

(declare-fun m!69072 () Bool)

(assert (=> d!18878 m!69072))

(declare-fun m!69074 () Bool)

(assert (=> b!88867 m!69074))

(assert (=> b!88340 d!18878))

(declare-fun d!18880 () Bool)

(assert (=> d!18880 true))

(declare-fun order!603 () Int)

(declare-fun lambda!1601 () Int)

(declare-fun dynLambda!388 (Int Int) Int)

(assert (=> d!18880 (< (dynLambda!386 order!593 (toValue!856 (transformation!329 (h!6901 rules!2471)))) (dynLambda!388 order!603 lambda!1601))))

(declare-fun Forall2!37 (Int) Bool)

(assert (=> d!18880 (= (equivClasses!61 (toChars!715 (transformation!329 (h!6901 rules!2471))) (toValue!856 (transformation!329 (h!6901 rules!2471)))) (Forall2!37 lambda!1601))))

(declare-fun bs!8981 () Bool)

(assert (= bs!8981 d!18880))

(declare-fun m!69076 () Bool)

(assert (=> bs!8981 m!69076))

(assert (=> b!88330 d!18880))

(assert (=> d!18574 d!18566))

(assert (=> d!18574 d!18568))

(assert (=> d!18574 d!18536))

(assert (=> d!18574 d!18582))

(declare-fun d!18882 () Bool)

(assert (=> d!18882 (= (list!541 (_1!994 lt!21401)) (list!541 (prepend!93 (seqFromList!167 (t!20700 lt!21403)) (h!6902 lt!21403))))))

(assert (=> d!18882 true))

(declare-fun _$1!9871 () Unit!954)

(assert (=> d!18882 (= (choose!1336 (h!6902 lt!21403) (t!20700 lt!21403) (_1!994 lt!21401)) _$1!9871)))

(declare-fun bs!8982 () Bool)

(assert (= bs!8982 d!18882))

(assert (=> bs!8982 m!67592))

(assert (=> bs!8982 m!67616))

(assert (=> bs!8982 m!67616))

(assert (=> bs!8982 m!67618))

(assert (=> bs!8982 m!67618))

(assert (=> bs!8982 m!67620))

(assert (=> d!18574 d!18882))

(declare-fun d!18884 () Bool)

(assert (=> d!18884 (= ($colon$colon!28 (t!20700 lt!21403) (h!6902 lt!21403)) (Cons!1505 (h!6902 lt!21403) (t!20700 lt!21403)))))

(assert (=> d!18574 d!18884))

(declare-fun d!18886 () Bool)

(assert (=> d!18886 (= (seqFromList!167 ($colon$colon!28 (t!20700 lt!21403) (h!6902 lt!21403))) (fromListB!63 ($colon$colon!28 (t!20700 lt!21403) (h!6902 lt!21403))))))

(declare-fun bs!8983 () Bool)

(assert (= bs!8983 d!18886))

(assert (=> bs!8983 m!67862))

(declare-fun m!69078 () Bool)

(assert (=> bs!8983 m!69078))

(assert (=> d!18574 d!18886))

(declare-fun d!18888 () Bool)

(assert (=> d!18888 (= (list!541 (seqFromList!167 ($colon$colon!28 (t!20700 lt!21403) (h!6902 lt!21403)))) (list!545 (c!21984 (seqFromList!167 ($colon$colon!28 (t!20700 lt!21403) (h!6902 lt!21403))))))))

(declare-fun bs!8984 () Bool)

(assert (= bs!8984 d!18888))

(declare-fun m!69080 () Bool)

(assert (=> bs!8984 m!69080))

(assert (=> d!18574 d!18888))

(declare-fun d!18890 () Bool)

(assert (=> d!18890 (= (list!542 lt!21501) (list!546 (c!21982 lt!21501)))))

(declare-fun bs!8985 () Bool)

(assert (= bs!8985 d!18890))

(declare-fun m!69082 () Bool)

(assert (=> bs!8985 m!69082))

(assert (=> d!18610 d!18890))

(assert (=> d!18618 d!18558))

(declare-fun d!18892 () Bool)

(assert (=> d!18892 (= (list!542 (_2!994 lt!21508)) (list!546 (c!21982 (_2!994 lt!21508))))))

(declare-fun bs!8986 () Bool)

(assert (= bs!8986 d!18892))

(declare-fun m!69084 () Bool)

(assert (=> bs!8986 m!69084))

(assert (=> d!18618 d!18892))

(assert (=> d!18618 d!18538))

(assert (=> d!18618 d!18606))

(declare-fun d!18894 () Bool)

(assert (=> d!18894 (= (seqFromList!166 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238)))) (fromListB!62 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238)))))))

(declare-fun bs!8987 () Bool)

(assert (= bs!8987 d!18894))

(declare-fun m!69086 () Bool)

(assert (=> bs!8987 m!69086))

(assert (=> d!18618 d!18894))

(assert (=> d!18618 d!18614))

(declare-fun d!18896 () Bool)

(declare-fun lt!21996 () tuple2!1574)

(assert (=> d!18896 (= (tuple2!1579 (list!541 (_1!994 lt!21996)) (list!542 (_2!994 lt!21996))) (tuple2!1579 (tail!144 lt!21403) lt!21408))))

(assert (=> d!18896 (= lt!21996 (lex!129 thiss!19403 rules!2471 (seqFromList!166 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238))))))))

(assert (=> d!18896 true))

(declare-fun _$54!168 () Unit!954)

(assert (=> d!18896 (= (choose!1338 thiss!19403 rules!2471 input!2238 lt!21403 lt!21408) _$54!168)))

(declare-fun bs!8999 () Bool)

(assert (= bs!8999 d!18896))

(assert (=> bs!8999 m!67984))

(assert (=> bs!8999 m!67990))

(assert (=> bs!8999 m!67984))

(declare-fun m!69168 () Bool)

(assert (=> bs!8999 m!69168))

(assert (=> bs!8999 m!67606))

(assert (=> bs!8999 m!67600))

(declare-fun m!69170 () Bool)

(assert (=> bs!8999 m!69170))

(assert (=> bs!8999 m!67600))

(assert (=> bs!8999 m!67602))

(assert (=> d!18618 d!18896))

(declare-fun d!18936 () Bool)

(assert (=> d!18936 (= (list!541 (_1!994 lt!21508)) (list!545 (c!21984 (_1!994 lt!21508))))))

(declare-fun bs!9000 () Bool)

(assert (= bs!9000 d!18936))

(declare-fun m!69172 () Bool)

(assert (=> bs!9000 m!69172))

(assert (=> d!18618 d!18936))

(declare-fun lt!21997 () tuple2!1574)

(declare-fun b!88932 () Bool)

(declare-fun e!49547 () Bool)

(assert (=> b!88932 (= e!49547 (= (_2!994 lt!21997) (seqFromList!166 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238))))))))

(declare-fun b!88933 () Bool)

(declare-fun e!49546 () Bool)

(assert (=> b!88933 (= e!49546 (not (isEmpty!565 (_1!994 lt!21997))))))

(declare-fun e!49548 () Bool)

(declare-fun b!88934 () Bool)

(assert (=> b!88934 (= e!49548 (= (list!542 (_2!994 lt!21997)) (_2!996 (lexList!53 thiss!19403 rules!2471 (list!542 (seqFromList!166 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun b!88935 () Bool)

(assert (=> b!88935 (= e!49547 e!49546)))

(declare-fun res!44770 () Bool)

(assert (=> b!88935 (= res!44770 (< (size!1297 (_2!994 lt!21997)) (size!1297 (seqFromList!166 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238)))))))))

(assert (=> b!88935 (=> (not res!44770) (not e!49546))))

(declare-fun b!88936 () Bool)

(declare-fun res!44772 () Bool)

(assert (=> b!88936 (=> (not res!44772) (not e!49548))))

(assert (=> b!88936 (= res!44772 (= (list!541 (_1!994 lt!21997)) (_1!996 (lexList!53 thiss!19403 rules!2471 (list!542 (seqFromList!166 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun d!18938 () Bool)

(assert (=> d!18938 e!49548))

(declare-fun res!44771 () Bool)

(assert (=> d!18938 (=> (not res!44771) (not e!49548))))

(assert (=> d!18938 (= res!44771 e!49547)))

(declare-fun c!22154 () Bool)

(assert (=> d!18938 (= c!22154 (> (size!1298 (_1!994 lt!21997)) 0))))

(assert (=> d!18938 (= lt!21997 (lexTailRecV2!50 thiss!19403 rules!2471 (seqFromList!166 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238)))) (BalanceConc!925 Empty!460) (seqFromList!166 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238)))) (BalanceConc!927 Empty!461)))))

(assert (=> d!18938 (= (lex!129 thiss!19403 rules!2471 (seqFromList!166 (_2!995 (get!382 (maxPrefix!63 thiss!19403 rules!2471 input!2238))))) lt!21997)))

(assert (= (and d!18938 c!22154) b!88935))

(assert (= (and d!18938 (not c!22154)) b!88932))

(assert (= (and b!88935 res!44770) b!88933))

(assert (= (and d!18938 res!44771) b!88936))

(assert (= (and b!88936 res!44772) b!88934))

(declare-fun m!69174 () Bool)

(assert (=> b!88934 m!69174))

(assert (=> b!88934 m!67984))

(declare-fun m!69176 () Bool)

(assert (=> b!88934 m!69176))

(assert (=> b!88934 m!69176))

(declare-fun m!69178 () Bool)

(assert (=> b!88934 m!69178))

(declare-fun m!69180 () Bool)

(assert (=> b!88933 m!69180))

(declare-fun m!69182 () Bool)

(assert (=> b!88936 m!69182))

(assert (=> b!88936 m!67984))

(assert (=> b!88936 m!69176))

(assert (=> b!88936 m!69176))

(assert (=> b!88936 m!69178))

(declare-fun m!69184 () Bool)

(assert (=> d!18938 m!69184))

(assert (=> d!18938 m!67984))

(assert (=> d!18938 m!67984))

(declare-fun m!69186 () Bool)

(assert (=> d!18938 m!69186))

(declare-fun m!69188 () Bool)

(assert (=> b!88935 m!69188))

(assert (=> b!88935 m!67984))

(declare-fun m!69190 () Bool)

(assert (=> b!88935 m!69190))

(assert (=> d!18618 d!18938))

(declare-fun d!18940 () Bool)

(declare-fun c!22155 () Bool)

(assert (=> d!18940 (= c!22155 ((_ is Nil!1502) lt!21486))))

(declare-fun e!49549 () (InoxSet C!1716))

(assert (=> d!18940 (= (content!92 lt!21486) e!49549)))

(declare-fun b!88937 () Bool)

(assert (=> b!88937 (= e!49549 ((as const (Array C!1716 Bool)) false))))

(declare-fun b!88938 () Bool)

(assert (=> b!88938 (= e!49549 ((_ map or) (store ((as const (Array C!1716 Bool)) false) (h!6899 lt!21486) true) (content!92 (t!20697 lt!21486))))))

(assert (= (and d!18940 c!22155) b!88937))

(assert (= (and d!18940 (not c!22155)) b!88938))

(declare-fun m!69192 () Bool)

(assert (=> b!88938 m!69192))

(declare-fun m!69194 () Bool)

(assert (=> b!88938 m!69194))

(assert (=> d!18584 d!18940))

(declare-fun d!18942 () Bool)

(declare-fun c!22156 () Bool)

(assert (=> d!18942 (= c!22156 ((_ is Nil!1502) lt!21404))))

(declare-fun e!49550 () (InoxSet C!1716))

(assert (=> d!18942 (= (content!92 lt!21404) e!49550)))

(declare-fun b!88939 () Bool)

(assert (=> b!88939 (= e!49550 ((as const (Array C!1716 Bool)) false))))

(declare-fun b!88940 () Bool)

(assert (=> b!88940 (= e!49550 ((_ map or) (store ((as const (Array C!1716 Bool)) false) (h!6899 lt!21404) true) (content!92 (t!20697 lt!21404))))))

(assert (= (and d!18942 c!22156) b!88939))

(assert (= (and d!18942 (not c!22156)) b!88940))

(declare-fun m!69196 () Bool)

(assert (=> b!88940 m!69196))

(declare-fun m!69198 () Bool)

(assert (=> b!88940 m!69198))

(assert (=> d!18584 d!18942))

(declare-fun d!18944 () Bool)

(declare-fun c!22157 () Bool)

(assert (=> d!18944 (= c!22157 ((_ is Nil!1502) lt!21399))))

(declare-fun e!49551 () (InoxSet C!1716))

(assert (=> d!18944 (= (content!92 lt!21399) e!49551)))

(declare-fun b!88941 () Bool)

(assert (=> b!88941 (= e!49551 ((as const (Array C!1716 Bool)) false))))

(declare-fun b!88942 () Bool)

(assert (=> b!88942 (= e!49551 ((_ map or) (store ((as const (Array C!1716 Bool)) false) (h!6899 lt!21399) true) (content!92 (t!20697 lt!21399))))))

(assert (= (and d!18944 c!22157) b!88941))

(assert (= (and d!18944 (not c!22157)) b!88942))

(declare-fun m!69200 () Bool)

(assert (=> b!88942 m!69200))

(declare-fun m!69202 () Bool)

(assert (=> b!88942 m!69202))

(assert (=> d!18584 d!18944))

(declare-fun d!18946 () Bool)

(declare-fun lt!21998 () Int)

(assert (=> d!18946 (>= lt!21998 0)))

(declare-fun e!49552 () Int)

(assert (=> d!18946 (= lt!21998 e!49552)))

(declare-fun c!22158 () Bool)

(assert (=> d!18946 (= c!22158 ((_ is Nil!1502) (_2!995 (get!382 lt!21464))))))

(assert (=> d!18946 (= (size!1299 (_2!995 (get!382 lt!21464))) lt!21998)))

(declare-fun b!88943 () Bool)

(assert (=> b!88943 (= e!49552 0)))

(declare-fun b!88944 () Bool)

(assert (=> b!88944 (= e!49552 (+ 1 (size!1299 (t!20697 (_2!995 (get!382 lt!21464))))))))

(assert (= (and d!18946 c!22158) b!88943))

(assert (= (and d!18946 (not c!22158)) b!88944))

(declare-fun m!69204 () Bool)

(assert (=> b!88944 m!69204))

(assert (=> b!88251 d!18946))

(assert (=> b!88251 d!18852))

(declare-fun d!18948 () Bool)

(declare-fun lt!21999 () Int)

(assert (=> d!18948 (>= lt!21999 0)))

(declare-fun e!49553 () Int)

(assert (=> d!18948 (= lt!21999 e!49553)))

(declare-fun c!22159 () Bool)

(assert (=> d!18948 (= c!22159 ((_ is Nil!1502) input!2238))))

(assert (=> d!18948 (= (size!1299 input!2238) lt!21999)))

(declare-fun b!88945 () Bool)

(assert (=> b!88945 (= e!49553 0)))

(declare-fun b!88946 () Bool)

(assert (=> b!88946 (= e!49553 (+ 1 (size!1299 (t!20697 input!2238))))))

(assert (= (and d!18948 c!22159) b!88945))

(assert (= (and d!18948 (not c!22159)) b!88946))

(declare-fun m!69206 () Bool)

(assert (=> b!88946 m!69206))

(assert (=> b!88251 d!18948))

(declare-fun b!88948 () Bool)

(declare-fun e!49554 () List!1508)

(declare-fun e!49555 () List!1508)

(assert (=> b!88948 (= e!49554 e!49555)))

(declare-fun c!22161 () Bool)

(assert (=> b!88948 (= c!22161 ((_ is Leaf!760) (c!21982 (charsOf!64 (_1!995 lt!21398)))))))

(declare-fun b!88950 () Bool)

(assert (=> b!88950 (= e!49555 (++!180 (list!546 (left!1141 (c!21982 (charsOf!64 (_1!995 lt!21398))))) (list!546 (right!1471 (c!21982 (charsOf!64 (_1!995 lt!21398)))))))))

(declare-fun b!88949 () Bool)

(assert (=> b!88949 (= e!49555 (list!550 (xs!3043 (c!21982 (charsOf!64 (_1!995 lt!21398))))))))

(declare-fun b!88947 () Bool)

(assert (=> b!88947 (= e!49554 Nil!1502)))

(declare-fun d!18950 () Bool)

(declare-fun c!22160 () Bool)

(assert (=> d!18950 (= c!22160 ((_ is Empty!460) (c!21982 (charsOf!64 (_1!995 lt!21398)))))))

(assert (=> d!18950 (= (list!546 (c!21982 (charsOf!64 (_1!995 lt!21398)))) e!49554)))

(assert (= (and d!18950 c!22160) b!88947))

(assert (= (and d!18950 (not c!22160)) b!88948))

(assert (= (and b!88948 c!22161) b!88949))

(assert (= (and b!88948 (not c!22161)) b!88950))

(declare-fun m!69208 () Bool)

(assert (=> b!88950 m!69208))

(declare-fun m!69210 () Bool)

(assert (=> b!88950 m!69210))

(assert (=> b!88950 m!69208))

(assert (=> b!88950 m!69210))

(declare-fun m!69212 () Bool)

(assert (=> b!88950 m!69212))

(declare-fun m!69214 () Bool)

(assert (=> b!88949 m!69214))

(assert (=> d!18580 d!18950))

(declare-fun d!18952 () Bool)

(declare-fun e!49556 () Bool)

(assert (=> d!18952 e!49556))

(declare-fun res!44773 () Bool)

(assert (=> d!18952 (=> (not res!44773) (not e!49556))))

(declare-fun lt!22000 () BalanceConc!924)

(assert (=> d!18952 (= res!44773 (= (list!542 lt!22000) input!2238))))

(assert (=> d!18952 (= lt!22000 (BalanceConc!925 (fromList!37 input!2238)))))

(assert (=> d!18952 (= (fromListB!62 input!2238) lt!22000)))

(declare-fun b!88951 () Bool)

(assert (=> b!88951 (= e!49556 (isBalanced!102 (fromList!37 input!2238)))))

(assert (= (and d!18952 res!44773) b!88951))

(declare-fun m!69216 () Bool)

(assert (=> d!18952 m!69216))

(declare-fun m!69218 () Bool)

(assert (=> d!18952 m!69218))

(assert (=> b!88951 m!69218))

(assert (=> b!88951 m!69218))

(declare-fun m!69220 () Bool)

(assert (=> b!88951 m!69220))

(assert (=> d!18554 d!18952))

(declare-fun b!88953 () Bool)

(declare-fun e!49557 () List!1508)

(declare-fun e!49558 () List!1508)

(assert (=> b!88953 (= e!49557 e!49558)))

(declare-fun c!22163 () Bool)

(assert (=> b!88953 (= c!22163 ((_ is Leaf!760) (c!21982 (print!60 thiss!19403 (_1!994 lt!21406)))))))

(declare-fun b!88955 () Bool)

(assert (=> b!88955 (= e!49558 (++!180 (list!546 (left!1141 (c!21982 (print!60 thiss!19403 (_1!994 lt!21406))))) (list!546 (right!1471 (c!21982 (print!60 thiss!19403 (_1!994 lt!21406)))))))))

(declare-fun b!88954 () Bool)

(assert (=> b!88954 (= e!49558 (list!550 (xs!3043 (c!21982 (print!60 thiss!19403 (_1!994 lt!21406))))))))

(declare-fun b!88952 () Bool)

(assert (=> b!88952 (= e!49557 Nil!1502)))

(declare-fun d!18954 () Bool)

(declare-fun c!22162 () Bool)

(assert (=> d!18954 (= c!22162 ((_ is Empty!460) (c!21982 (print!60 thiss!19403 (_1!994 lt!21406)))))))

(assert (=> d!18954 (= (list!546 (c!21982 (print!60 thiss!19403 (_1!994 lt!21406)))) e!49557)))

(assert (= (and d!18954 c!22162) b!88952))

(assert (= (and d!18954 (not c!22162)) b!88953))

(assert (= (and b!88953 c!22163) b!88954))

(assert (= (and b!88953 (not c!22163)) b!88955))

(declare-fun m!69222 () Bool)

(assert (=> b!88955 m!69222))

(declare-fun m!69224 () Bool)

(assert (=> b!88955 m!69224))

(assert (=> b!88955 m!69222))

(assert (=> b!88955 m!69224))

(declare-fun m!69226 () Bool)

(assert (=> b!88955 m!69226))

(declare-fun m!69228 () Bool)

(assert (=> b!88954 m!69228))

(assert (=> d!18570 d!18954))

(assert (=> b!88258 d!18852))

(declare-fun d!18956 () Bool)

(declare-fun dynLambda!390 (Int BalanceConc!924) TokenValue!319)

(assert (=> d!18956 (= (apply!219 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464)))) (seqFromList!166 (originalCharacters!380 (_1!995 (get!382 lt!21464))))) (dynLambda!390 (toValue!856 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464))))) (seqFromList!166 (originalCharacters!380 (_1!995 (get!382 lt!21464))))))))

(declare-fun b_lambda!1025 () Bool)

(assert (=> (not b_lambda!1025) (not d!18956)))

(declare-fun tb!2741 () Bool)

(declare-fun t!20742 () Bool)

(assert (=> (and b!88142 (= (toValue!856 (transformation!329 (h!6901 rules!2471))) (toValue!856 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464)))))) t!20742) tb!2741))

(declare-fun result!3938 () Bool)

(declare-fun inv!21 (TokenValue!319) Bool)

(assert (=> tb!2741 (= result!3938 (inv!21 (dynLambda!390 (toValue!856 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464))))) (seqFromList!166 (originalCharacters!380 (_1!995 (get!382 lt!21464)))))))))

(declare-fun m!69230 () Bool)

(assert (=> tb!2741 m!69230))

(assert (=> d!18956 t!20742))

(declare-fun b_and!4031 () Bool)

(assert (= b_and!3999 (and (=> t!20742 result!3938) b_and!4031)))

(declare-fun t!20744 () Bool)

(declare-fun tb!2743 () Bool)

(assert (=> (and b!88341 (= (toValue!856 (transformation!329 (h!6901 (t!20699 rules!2471)))) (toValue!856 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464)))))) t!20744) tb!2743))

(declare-fun result!3942 () Bool)

(assert (= result!3942 result!3938))

(assert (=> d!18956 t!20744))

(declare-fun b_and!4033 () Bool)

(assert (= b_and!4011 (and (=> t!20744 result!3942) b_and!4033)))

(assert (=> d!18956 m!67792))

(declare-fun m!69232 () Bool)

(assert (=> d!18956 m!69232))

(assert (=> b!88258 d!18956))

(declare-fun d!18958 () Bool)

(assert (=> d!18958 (= (seqFromList!166 (originalCharacters!380 (_1!995 (get!382 lt!21464)))) (fromListB!62 (originalCharacters!380 (_1!995 (get!382 lt!21464)))))))

(declare-fun bs!9001 () Bool)

(assert (= bs!9001 d!18958))

(declare-fun m!69234 () Bool)

(assert (=> bs!9001 m!69234))

(assert (=> b!88258 d!18958))

(declare-fun d!18960 () Bool)

(assert (=> d!18960 (= (list!541 (_1!994 lt!21502)) (list!545 (c!21984 (_1!994 lt!21502))))))

(declare-fun bs!9002 () Bool)

(assert (= bs!9002 d!18960))

(declare-fun m!69236 () Bool)

(assert (=> bs!9002 m!69236))

(assert (=> b!88327 d!18960))

(declare-fun b!88968 () Bool)

(declare-fun e!49568 () tuple2!1578)

(declare-fun lt!22007 () Option!140)

(declare-fun lt!22008 () tuple2!1578)

(assert (=> b!88968 (= e!49568 (tuple2!1579 (Cons!1505 (_1!995 (v!12864 lt!22007)) (_1!996 lt!22008)) (_2!996 lt!22008)))))

(assert (=> b!88968 (= lt!22008 (lexList!53 thiss!19403 rules!2471 (_2!995 (v!12864 lt!22007))))))

(declare-fun d!18962 () Bool)

(declare-fun e!49569 () Bool)

(assert (=> d!18962 e!49569))

(declare-fun c!22168 () Bool)

(declare-fun lt!22009 () tuple2!1578)

(assert (=> d!18962 (= c!22168 (> (size!1302 (_1!996 lt!22009)) 0))))

(assert (=> d!18962 (= lt!22009 e!49568)))

(declare-fun c!22169 () Bool)

(assert (=> d!18962 (= c!22169 ((_ is Some!139) lt!22007))))

(assert (=> d!18962 (= lt!22007 (maxPrefix!63 thiss!19403 rules!2471 (list!542 (seqFromList!166 (_2!995 lt!21398)))))))

(assert (=> d!18962 (= (lexList!53 thiss!19403 rules!2471 (list!542 (seqFromList!166 (_2!995 lt!21398)))) lt!22009)))

(declare-fun b!88969 () Bool)

(declare-fun e!49570 () Bool)

(assert (=> b!88969 (= e!49570 (not (isEmpty!570 (_1!996 lt!22009))))))

(declare-fun b!88970 () Bool)

(assert (=> b!88970 (= e!49568 (tuple2!1579 Nil!1505 (list!542 (seqFromList!166 (_2!995 lt!21398)))))))

(declare-fun b!88971 () Bool)

(assert (=> b!88971 (= e!49569 (= (_2!996 lt!22009) (list!542 (seqFromList!166 (_2!995 lt!21398)))))))

(declare-fun b!88972 () Bool)

(assert (=> b!88972 (= e!49569 e!49570)))

(declare-fun res!44776 () Bool)

(assert (=> b!88972 (= res!44776 (< (size!1299 (_2!996 lt!22009)) (size!1299 (list!542 (seqFromList!166 (_2!995 lt!21398))))))))

(assert (=> b!88972 (=> (not res!44776) (not e!49570))))

(assert (= (and d!18962 c!22169) b!88968))

(assert (= (and d!18962 (not c!22169)) b!88970))

(assert (= (and d!18962 c!22168) b!88972))

(assert (= (and d!18962 (not c!22168)) b!88971))

(assert (= (and b!88972 res!44776) b!88969))

(declare-fun m!69238 () Bool)

(assert (=> b!88968 m!69238))

(declare-fun m!69240 () Bool)

(assert (=> d!18962 m!69240))

(assert (=> d!18962 m!67966))

(declare-fun m!69242 () Bool)

(assert (=> d!18962 m!69242))

(declare-fun m!69244 () Bool)

(assert (=> b!88969 m!69244))

(declare-fun m!69246 () Bool)

(assert (=> b!88972 m!69246))

(assert (=> b!88972 m!67966))

(assert (=> b!88972 m!68564))

(assert (=> b!88327 d!18962))

(declare-fun d!18964 () Bool)

(assert (=> d!18964 (= (list!542 (seqFromList!166 (_2!995 lt!21398))) (list!546 (c!21982 (seqFromList!166 (_2!995 lt!21398)))))))

(declare-fun bs!9003 () Bool)

(assert (= bs!9003 d!18964))

(declare-fun m!69248 () Bool)

(assert (=> bs!9003 m!69248))

(assert (=> b!88327 d!18964))

(declare-fun d!18966 () Bool)

(assert (=> d!18966 (= (list!542 (_2!994 lt!21502)) (list!546 (c!21982 (_2!994 lt!21502))))))

(declare-fun bs!9004 () Bool)

(assert (= bs!9004 d!18966))

(declare-fun m!69250 () Bool)

(assert (=> bs!9004 m!69250))

(assert (=> b!88325 d!18966))

(assert (=> b!88325 d!18962))

(assert (=> b!88325 d!18964))

(declare-fun d!18968 () Bool)

(assert (=> d!18968 (= (inv!1858 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398)))) (isBalanced!102 (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398))))))))

(declare-fun bs!9005 () Bool)

(assert (= bs!9005 d!18968))

(declare-fun m!69252 () Bool)

(assert (=> bs!9005 m!69252))

(assert (=> tb!2719 d!18968))

(declare-fun d!18970 () Bool)

(assert (=> d!18970 (= (list!542 (_2!994 lt!21449)) (list!546 (c!21982 (_2!994 lt!21449))))))

(declare-fun bs!9006 () Bool)

(assert (= bs!9006 d!18970))

(declare-fun m!69254 () Bool)

(assert (=> bs!9006 m!69254))

(assert (=> b!88229 d!18970))

(declare-fun b!88973 () Bool)

(declare-fun e!49571 () tuple2!1578)

(declare-fun lt!22010 () Option!140)

(declare-fun lt!22011 () tuple2!1578)

(assert (=> b!88973 (= e!49571 (tuple2!1579 (Cons!1505 (_1!995 (v!12864 lt!22010)) (_1!996 lt!22011)) (_2!996 lt!22011)))))

(assert (=> b!88973 (= lt!22011 (lexList!53 thiss!19403 rules!2471 (_2!995 (v!12864 lt!22010))))))

(declare-fun d!18972 () Bool)

(declare-fun e!49572 () Bool)

(assert (=> d!18972 e!49572))

(declare-fun c!22170 () Bool)

(declare-fun lt!22012 () tuple2!1578)

(assert (=> d!18972 (= c!22170 (> (size!1302 (_1!996 lt!22012)) 0))))

(assert (=> d!18972 (= lt!22012 e!49571)))

(declare-fun c!22171 () Bool)

(assert (=> d!18972 (= c!22171 ((_ is Some!139) lt!22010))))

(assert (=> d!18972 (= lt!22010 (maxPrefix!63 thiss!19403 rules!2471 (list!542 (seqFromList!166 input!2238))))))

(assert (=> d!18972 (= (lexList!53 thiss!19403 rules!2471 (list!542 (seqFromList!166 input!2238))) lt!22012)))

(declare-fun b!88974 () Bool)

(declare-fun e!49573 () Bool)

(assert (=> b!88974 (= e!49573 (not (isEmpty!570 (_1!996 lt!22012))))))

(declare-fun b!88975 () Bool)

(assert (=> b!88975 (= e!49571 (tuple2!1579 Nil!1505 (list!542 (seqFromList!166 input!2238))))))

(declare-fun b!88976 () Bool)

(assert (=> b!88976 (= e!49572 (= (_2!996 lt!22012) (list!542 (seqFromList!166 input!2238))))))

(declare-fun b!88977 () Bool)

(assert (=> b!88977 (= e!49572 e!49573)))

(declare-fun res!44777 () Bool)

(assert (=> b!88977 (= res!44777 (< (size!1299 (_2!996 lt!22012)) (size!1299 (list!542 (seqFromList!166 input!2238)))))))

(assert (=> b!88977 (=> (not res!44777) (not e!49573))))

(assert (= (and d!18972 c!22171) b!88973))

(assert (= (and d!18972 (not c!22171)) b!88975))

(assert (= (and d!18972 c!22170) b!88977))

(assert (= (and d!18972 (not c!22170)) b!88976))

(assert (= (and b!88977 res!44777) b!88974))

(declare-fun m!69256 () Bool)

(assert (=> b!88973 m!69256))

(declare-fun m!69258 () Bool)

(assert (=> d!18972 m!69258))

(assert (=> d!18972 m!67762))

(declare-fun m!69260 () Bool)

(assert (=> d!18972 m!69260))

(declare-fun m!69262 () Bool)

(assert (=> b!88974 m!69262))

(declare-fun m!69264 () Bool)

(assert (=> b!88977 m!69264))

(assert (=> b!88977 m!67762))

(assert (=> b!88977 m!68592))

(assert (=> b!88229 d!18972))

(declare-fun d!18974 () Bool)

(assert (=> d!18974 (= (list!542 (seqFromList!166 input!2238)) (list!546 (c!21982 (seqFromList!166 input!2238))))))

(declare-fun bs!9007 () Bool)

(assert (= bs!9007 d!18974))

(declare-fun m!69266 () Bool)

(assert (=> bs!9007 m!69266))

(assert (=> b!88229 d!18974))

(declare-fun b!88978 () Bool)

(declare-fun res!44781 () Bool)

(declare-fun e!49575 () Bool)

(assert (=> b!88978 (=> (not res!44781) (not e!49575))))

(declare-fun lt!22016 () Option!140)

(assert (=> b!88978 (= res!44781 (< (size!1299 (_2!995 (get!382 lt!22016))) (size!1299 input!2238)))))

(declare-fun b!88979 () Bool)

(assert (=> b!88979 (= e!49575 (contains!229 (t!20699 rules!2471) (rule!820 (_1!995 (get!382 lt!22016)))))))

(declare-fun bm!4032 () Bool)

(declare-fun call!4037 () Option!140)

(assert (=> bm!4032 (= call!4037 (maxPrefixOneRule!27 thiss!19403 (h!6901 (t!20699 rules!2471)) input!2238))))

(declare-fun b!88981 () Bool)

(declare-fun res!44782 () Bool)

(assert (=> b!88981 (=> (not res!44782) (not e!49575))))

(assert (=> b!88981 (= res!44782 (= (list!542 (charsOf!64 (_1!995 (get!382 lt!22016)))) (originalCharacters!380 (_1!995 (get!382 lt!22016)))))))

(declare-fun b!88982 () Bool)

(declare-fun res!44779 () Bool)

(assert (=> b!88982 (=> (not res!44779) (not e!49575))))

(assert (=> b!88982 (= res!44779 (= (++!180 (list!542 (charsOf!64 (_1!995 (get!382 lt!22016)))) (_2!995 (get!382 lt!22016))) input!2238))))

(declare-fun b!88980 () Bool)

(declare-fun e!49576 () Option!140)

(declare-fun lt!22014 () Option!140)

(declare-fun lt!22013 () Option!140)

(assert (=> b!88980 (= e!49576 (ite (and ((_ is None!139) lt!22014) ((_ is None!139) lt!22013)) None!139 (ite ((_ is None!139) lt!22013) lt!22014 (ite ((_ is None!139) lt!22014) lt!22013 (ite (>= (size!1293 (_1!995 (v!12864 lt!22014))) (size!1293 (_1!995 (v!12864 lt!22013)))) lt!22014 lt!22013)))))))

(assert (=> b!88980 (= lt!22014 call!4037)))

(assert (=> b!88980 (= lt!22013 (maxPrefix!63 thiss!19403 (t!20699 (t!20699 rules!2471)) input!2238))))

(declare-fun d!18976 () Bool)

(declare-fun e!49574 () Bool)

(assert (=> d!18976 e!49574))

(declare-fun res!44784 () Bool)

(assert (=> d!18976 (=> res!44784 e!49574)))

(assert (=> d!18976 (= res!44784 (isEmpty!566 lt!22016))))

(assert (=> d!18976 (= lt!22016 e!49576)))

(declare-fun c!22172 () Bool)

(assert (=> d!18976 (= c!22172 (and ((_ is Cons!1504) (t!20699 rules!2471)) ((_ is Nil!1504) (t!20699 (t!20699 rules!2471)))))))

(declare-fun lt!22015 () Unit!954)

(declare-fun lt!22017 () Unit!954)

(assert (=> d!18976 (= lt!22015 lt!22017)))

(assert (=> d!18976 (isPrefix!29 input!2238 input!2238)))

(assert (=> d!18976 (= lt!22017 (lemmaIsPrefixRefl!29 input!2238 input!2238))))

(assert (=> d!18976 (rulesValidInductive!54 thiss!19403 (t!20699 rules!2471))))

(assert (=> d!18976 (= (maxPrefix!63 thiss!19403 (t!20699 rules!2471) input!2238) lt!22016)))

(declare-fun b!88983 () Bool)

(declare-fun res!44778 () Bool)

(assert (=> b!88983 (=> (not res!44778) (not e!49575))))

(assert (=> b!88983 (= res!44778 (matchR!31 (regex!329 (rule!820 (_1!995 (get!382 lt!22016)))) (list!542 (charsOf!64 (_1!995 (get!382 lt!22016))))))))

(declare-fun b!88984 () Bool)

(assert (=> b!88984 (= e!49574 e!49575)))

(declare-fun res!44783 () Bool)

(assert (=> b!88984 (=> (not res!44783) (not e!49575))))

(assert (=> b!88984 (= res!44783 (isDefined!40 lt!22016))))

(declare-fun b!88985 () Bool)

(declare-fun res!44780 () Bool)

(assert (=> b!88985 (=> (not res!44780) (not e!49575))))

(assert (=> b!88985 (= res!44780 (= (value!12272 (_1!995 (get!382 lt!22016))) (apply!219 (transformation!329 (rule!820 (_1!995 (get!382 lt!22016)))) (seqFromList!166 (originalCharacters!380 (_1!995 (get!382 lt!22016)))))))))

(declare-fun b!88986 () Bool)

(assert (=> b!88986 (= e!49576 call!4037)))

(assert (= (and d!18976 c!22172) b!88986))

(assert (= (and d!18976 (not c!22172)) b!88980))

(assert (= (or b!88986 b!88980) bm!4032))

(assert (= (and d!18976 (not res!44784)) b!88984))

(assert (= (and b!88984 res!44783) b!88981))

(assert (= (and b!88981 res!44782) b!88978))

(assert (= (and b!88978 res!44781) b!88982))

(assert (= (and b!88982 res!44779) b!88985))

(assert (= (and b!88985 res!44780) b!88983))

(assert (= (and b!88983 res!44778) b!88979))

(declare-fun m!69268 () Bool)

(assert (=> bm!4032 m!69268))

(declare-fun m!69270 () Bool)

(assert (=> d!18976 m!69270))

(assert (=> d!18976 m!67784))

(assert (=> d!18976 m!67786))

(assert (=> d!18976 m!68558))

(declare-fun m!69272 () Bool)

(assert (=> b!88985 m!69272))

(declare-fun m!69274 () Bool)

(assert (=> b!88985 m!69274))

(assert (=> b!88985 m!69274))

(declare-fun m!69276 () Bool)

(assert (=> b!88985 m!69276))

(assert (=> b!88981 m!69272))

(declare-fun m!69278 () Bool)

(assert (=> b!88981 m!69278))

(assert (=> b!88981 m!69278))

(declare-fun m!69280 () Bool)

(assert (=> b!88981 m!69280))

(assert (=> b!88979 m!69272))

(declare-fun m!69282 () Bool)

(assert (=> b!88979 m!69282))

(declare-fun m!69284 () Bool)

(assert (=> b!88980 m!69284))

(declare-fun m!69286 () Bool)

(assert (=> b!88984 m!69286))

(assert (=> b!88983 m!69272))

(assert (=> b!88983 m!69278))

(assert (=> b!88983 m!69278))

(assert (=> b!88983 m!69280))

(assert (=> b!88983 m!69280))

(declare-fun m!69288 () Bool)

(assert (=> b!88983 m!69288))

(assert (=> b!88982 m!69272))

(assert (=> b!88982 m!69278))

(assert (=> b!88982 m!69278))

(assert (=> b!88982 m!69280))

(assert (=> b!88982 m!69280))

(declare-fun m!69290 () Bool)

(assert (=> b!88982 m!69290))

(assert (=> b!88978 m!69272))

(declare-fun m!69292 () Bool)

(assert (=> b!88978 m!69292))

(assert (=> b!88978 m!67812))

(assert (=> b!88253 d!18976))

(declare-fun d!18978 () Bool)

(declare-fun c!22175 () Bool)

(assert (=> d!18978 (= c!22175 ((_ is Node!460) (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398))))))))

(declare-fun e!49581 () Bool)

(assert (=> d!18978 (= (inv!1857 (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398))))) e!49581)))

(declare-fun b!88993 () Bool)

(declare-fun inv!1862 (Conc!460) Bool)

(assert (=> b!88993 (= e!49581 (inv!1862 (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398))))))))

(declare-fun b!88994 () Bool)

(declare-fun e!49582 () Bool)

(assert (=> b!88994 (= e!49581 e!49582)))

(declare-fun res!44787 () Bool)

(assert (=> b!88994 (= res!44787 (not ((_ is Leaf!760) (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398)))))))))

(assert (=> b!88994 (=> res!44787 e!49582)))

(declare-fun b!88995 () Bool)

(declare-fun inv!1863 (Conc!460) Bool)

(assert (=> b!88995 (= e!49582 (inv!1863 (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398))))))))

(assert (= (and d!18978 c!22175) b!88993))

(assert (= (and d!18978 (not c!22175)) b!88994))

(assert (= (and b!88994 (not res!44787)) b!88995))

(declare-fun m!69294 () Bool)

(assert (=> b!88993 m!69294))

(declare-fun m!69296 () Bool)

(assert (=> b!88995 m!69296))

(assert (=> b!88322 d!18978))

(declare-fun b!89024 () Bool)

(declare-fun e!49603 () Bool)

(declare-fun e!49599 () Bool)

(assert (=> b!89024 (= e!49603 e!49599)))

(declare-fun c!22184 () Bool)

(assert (=> b!89024 (= c!22184 ((_ is EmptyLang!397) (regex!329 (rule!820 (_1!995 (get!382 lt!21464))))))))

(declare-fun b!89025 () Bool)

(declare-fun lt!22020 () Bool)

(declare-fun call!4040 () Bool)

(assert (=> b!89025 (= e!49603 (= lt!22020 call!4040))))

(declare-fun b!89026 () Bool)

(declare-fun res!44810 () Bool)

(declare-fun e!49597 () Bool)

(assert (=> b!89026 (=> (not res!44810) (not e!49597))))

(assert (=> b!89026 (= res!44810 (not call!4040))))

(declare-fun b!89027 () Bool)

(declare-fun res!44804 () Bool)

(declare-fun e!49601 () Bool)

(assert (=> b!89027 (=> res!44804 e!49601)))

(assert (=> b!89027 (= res!44804 (not ((_ is ElementMatch!397) (regex!329 (rule!820 (_1!995 (get!382 lt!21464)))))))))

(assert (=> b!89027 (= e!49599 e!49601)))

(declare-fun b!89028 () Bool)

(declare-fun res!44811 () Bool)

(assert (=> b!89028 (=> (not res!44811) (not e!49597))))

(assert (=> b!89028 (= res!44811 (isEmpty!563 (tail!146 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464)))))))))

(declare-fun d!18980 () Bool)

(assert (=> d!18980 e!49603))

(declare-fun c!22182 () Bool)

(assert (=> d!18980 (= c!22182 ((_ is EmptyExpr!397) (regex!329 (rule!820 (_1!995 (get!382 lt!21464))))))))

(declare-fun e!49598 () Bool)

(assert (=> d!18980 (= lt!22020 e!49598)))

(declare-fun c!22183 () Bool)

(assert (=> d!18980 (= c!22183 (isEmpty!563 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))))))

(declare-fun validRegex!47 (Regex!397) Bool)

(assert (=> d!18980 (validRegex!47 (regex!329 (rule!820 (_1!995 (get!382 lt!21464)))))))

(assert (=> d!18980 (= (matchR!31 (regex!329 (rule!820 (_1!995 (get!382 lt!21464)))) (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))) lt!22020)))

(declare-fun b!89029 () Bool)

(declare-fun e!49600 () Bool)

(assert (=> b!89029 (= e!49600 (not (= (head!436 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))) (c!21983 (regex!329 (rule!820 (_1!995 (get!382 lt!21464))))))))))

(declare-fun b!89030 () Bool)

(declare-fun res!44806 () Bool)

(assert (=> b!89030 (=> res!44806 e!49601)))

(assert (=> b!89030 (= res!44806 e!49597)))

(declare-fun res!44809 () Bool)

(assert (=> b!89030 (=> (not res!44809) (not e!49597))))

(assert (=> b!89030 (= res!44809 lt!22020)))

(declare-fun b!89031 () Bool)

(declare-fun nullable!40 (Regex!397) Bool)

(assert (=> b!89031 (= e!49598 (nullable!40 (regex!329 (rule!820 (_1!995 (get!382 lt!21464))))))))

(declare-fun b!89032 () Bool)

(assert (=> b!89032 (= e!49599 (not lt!22020))))

(declare-fun bm!4035 () Bool)

(assert (=> bm!4035 (= call!4040 (isEmpty!563 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))))))

(declare-fun b!89033 () Bool)

(declare-fun e!49602 () Bool)

(assert (=> b!89033 (= e!49602 e!49600)))

(declare-fun res!44808 () Bool)

(assert (=> b!89033 (=> res!44808 e!49600)))

(assert (=> b!89033 (= res!44808 call!4040)))

(declare-fun b!89034 () Bool)

(assert (=> b!89034 (= e!49601 e!49602)))

(declare-fun res!44807 () Bool)

(assert (=> b!89034 (=> (not res!44807) (not e!49602))))

(assert (=> b!89034 (= res!44807 (not lt!22020))))

(declare-fun b!89035 () Bool)

(declare-fun res!44805 () Bool)

(assert (=> b!89035 (=> res!44805 e!49600)))

(assert (=> b!89035 (= res!44805 (not (isEmpty!563 (tail!146 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))))))))

(declare-fun b!89036 () Bool)

(assert (=> b!89036 (= e!49597 (= (head!436 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464))))) (c!21983 (regex!329 (rule!820 (_1!995 (get!382 lt!21464)))))))))

(declare-fun b!89037 () Bool)

(declare-fun derivativeStep!22 (Regex!397 C!1716) Regex!397)

(assert (=> b!89037 (= e!49598 (matchR!31 (derivativeStep!22 (regex!329 (rule!820 (_1!995 (get!382 lt!21464)))) (head!436 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464)))))) (tail!146 (list!542 (charsOf!64 (_1!995 (get!382 lt!21464)))))))))

(assert (= (and d!18980 c!22183) b!89031))

(assert (= (and d!18980 (not c!22183)) b!89037))

(assert (= (and d!18980 c!22182) b!89025))

(assert (= (and d!18980 (not c!22182)) b!89024))

(assert (= (and b!89024 c!22184) b!89032))

(assert (= (and b!89024 (not c!22184)) b!89027))

(assert (= (and b!89027 (not res!44804)) b!89030))

(assert (= (and b!89030 res!44809) b!89026))

(assert (= (and b!89026 res!44810) b!89028))

(assert (= (and b!89028 res!44811) b!89036))

(assert (= (and b!89030 (not res!44806)) b!89034))

(assert (= (and b!89034 res!44807) b!89033))

(assert (= (and b!89033 (not res!44808)) b!89035))

(assert (= (and b!89035 (not res!44805)) b!89029))

(assert (= (or b!89025 b!89033 b!89026) bm!4035))

(assert (=> b!89035 m!67798))

(declare-fun m!69298 () Bool)

(assert (=> b!89035 m!69298))

(assert (=> b!89035 m!69298))

(declare-fun m!69300 () Bool)

(assert (=> b!89035 m!69300))

(declare-fun m!69302 () Bool)

(assert (=> b!89031 m!69302))

(assert (=> b!89028 m!67798))

(assert (=> b!89028 m!69298))

(assert (=> b!89028 m!69298))

(assert (=> b!89028 m!69300))

(assert (=> bm!4035 m!67798))

(declare-fun m!69304 () Bool)

(assert (=> bm!4035 m!69304))

(assert (=> d!18980 m!67798))

(assert (=> d!18980 m!69304))

(declare-fun m!69306 () Bool)

(assert (=> d!18980 m!69306))

(assert (=> b!89037 m!67798))

(declare-fun m!69308 () Bool)

(assert (=> b!89037 m!69308))

(assert (=> b!89037 m!69308))

(declare-fun m!69310 () Bool)

(assert (=> b!89037 m!69310))

(assert (=> b!89037 m!67798))

(assert (=> b!89037 m!69298))

(assert (=> b!89037 m!69310))

(assert (=> b!89037 m!69298))

(declare-fun m!69312 () Bool)

(assert (=> b!89037 m!69312))

(assert (=> b!89036 m!67798))

(assert (=> b!89036 m!69308))

(assert (=> b!89029 m!67798))

(assert (=> b!89029 m!69308))

(assert (=> b!88256 d!18980))

(assert (=> b!88256 d!18852))

(assert (=> b!88256 d!18864))

(assert (=> b!88256 d!18866))

(assert (=> b!88254 d!18864))

(assert (=> b!88254 d!18866))

(assert (=> b!88254 d!18852))

(declare-fun b!89040 () Bool)

(declare-fun res!44812 () Bool)

(declare-fun e!49605 () Bool)

(assert (=> b!89040 (=> (not res!44812) (not e!49605))))

(declare-fun lt!22021 () List!1508)

(assert (=> b!89040 (= res!44812 (= (size!1299 lt!22021) (+ (size!1299 (t!20697 (list!542 (charsOf!64 (_1!995 lt!21398))))) (size!1299 (_2!995 lt!21398)))))))

(declare-fun b!89041 () Bool)

(assert (=> b!89041 (= e!49605 (or (not (= (_2!995 lt!21398) Nil!1502)) (= lt!22021 (t!20697 (list!542 (charsOf!64 (_1!995 lt!21398)))))))))

(declare-fun d!18982 () Bool)

(assert (=> d!18982 e!49605))

(declare-fun res!44813 () Bool)

(assert (=> d!18982 (=> (not res!44813) (not e!49605))))

(assert (=> d!18982 (= res!44813 (= (content!92 lt!22021) ((_ map or) (content!92 (t!20697 (list!542 (charsOf!64 (_1!995 lt!21398))))) (content!92 (_2!995 lt!21398)))))))

(declare-fun e!49604 () List!1508)

(assert (=> d!18982 (= lt!22021 e!49604)))

(declare-fun c!22185 () Bool)

(assert (=> d!18982 (= c!22185 ((_ is Nil!1502) (t!20697 (list!542 (charsOf!64 (_1!995 lt!21398))))))))

(assert (=> d!18982 (= (++!180 (t!20697 (list!542 (charsOf!64 (_1!995 lt!21398)))) (_2!995 lt!21398)) lt!22021)))

(declare-fun b!89039 () Bool)

(assert (=> b!89039 (= e!49604 (Cons!1502 (h!6899 (t!20697 (list!542 (charsOf!64 (_1!995 lt!21398))))) (++!180 (t!20697 (t!20697 (list!542 (charsOf!64 (_1!995 lt!21398))))) (_2!995 lt!21398))))))

(declare-fun b!89038 () Bool)

(assert (=> b!89038 (= e!49604 (_2!995 lt!21398))))

(assert (= (and d!18982 c!22185) b!89038))

(assert (= (and d!18982 (not c!22185)) b!89039))

(assert (= (and d!18982 res!44813) b!89040))

(assert (= (and b!89040 res!44812) b!89041))

(declare-fun m!69314 () Bool)

(assert (=> b!89040 m!69314))

(assert (=> b!89040 m!69068))

(assert (=> b!89040 m!67822))

(declare-fun m!69316 () Bool)

(assert (=> d!18982 m!69316))

(assert (=> d!18982 m!68540))

(assert (=> d!18982 m!67828))

(declare-fun m!69318 () Bool)

(assert (=> b!89039 m!69318))

(assert (=> b!88269 d!18982))

(declare-fun d!18984 () Bool)

(assert (=> d!18984 (= (list!541 (_1!994 lt!21449)) (list!545 (c!21984 (_1!994 lt!21449))))))

(declare-fun bs!9008 () Bool)

(assert (= bs!9008 d!18984))

(declare-fun m!69320 () Bool)

(assert (=> bs!9008 m!69320))

(assert (=> b!88231 d!18984))

(assert (=> b!88231 d!18972))

(assert (=> b!88231 d!18974))

(declare-fun b!89044 () Bool)

(declare-fun res!44814 () Bool)

(declare-fun e!49607 () Bool)

(assert (=> b!89044 (=> (not res!44814) (not e!49607))))

(declare-fun lt!22022 () List!1508)

(assert (=> b!89044 (= res!44814 (= (size!1299 lt!22022) (+ (size!1299 (t!20697 lt!21404)) (size!1299 lt!21399))))))

(declare-fun b!89045 () Bool)

(assert (=> b!89045 (= e!49607 (or (not (= lt!21399 Nil!1502)) (= lt!22022 (t!20697 lt!21404))))))

(declare-fun d!18986 () Bool)

(assert (=> d!18986 e!49607))

(declare-fun res!44815 () Bool)

(assert (=> d!18986 (=> (not res!44815) (not e!49607))))

(assert (=> d!18986 (= res!44815 (= (content!92 lt!22022) ((_ map or) (content!92 (t!20697 lt!21404)) (content!92 lt!21399))))))

(declare-fun e!49606 () List!1508)

(assert (=> d!18986 (= lt!22022 e!49606)))

(declare-fun c!22186 () Bool)

(assert (=> d!18986 (= c!22186 ((_ is Nil!1502) (t!20697 lt!21404)))))

(assert (=> d!18986 (= (++!180 (t!20697 lt!21404) lt!21399) lt!22022)))

(declare-fun b!89043 () Bool)

(assert (=> b!89043 (= e!49606 (Cons!1502 (h!6899 (t!20697 lt!21404)) (++!180 (t!20697 (t!20697 lt!21404)) lt!21399)))))

(declare-fun b!89042 () Bool)

(assert (=> b!89042 (= e!49606 lt!21399)))

(assert (= (and d!18986 c!22186) b!89042))

(assert (= (and d!18986 (not c!22186)) b!89043))

(assert (= (and d!18986 res!44815) b!89044))

(assert (= (and b!89044 res!44814) b!89045))

(declare-fun m!69322 () Bool)

(assert (=> b!89044 m!69322))

(assert (=> b!89044 m!69036))

(assert (=> b!89044 m!67878))

(declare-fun m!69324 () Bool)

(assert (=> d!18986 m!69324))

(assert (=> d!18986 m!69198))

(assert (=> d!18986 m!67884))

(declare-fun m!69326 () Bool)

(assert (=> b!89043 m!69326))

(assert (=> b!88276 d!18986))

(declare-fun b!89048 () Bool)

(declare-fun b_free!2737 () Bool)

(declare-fun b_next!2737 () Bool)

(assert (=> b!89048 (= b_free!2737 (not b_next!2737))))

(declare-fun tb!2745 () Bool)

(declare-fun t!20746 () Bool)

(assert (=> (and b!89048 (= (toValue!856 (transformation!329 (h!6901 (t!20699 (t!20699 rules!2471))))) (toValue!856 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464)))))) t!20746) tb!2745))

(declare-fun result!3944 () Bool)

(assert (= result!3944 result!3938))

(assert (=> d!18956 t!20746))

(declare-fun tp!53248 () Bool)

(declare-fun b_and!4035 () Bool)

(assert (=> b!89048 (= tp!53248 (and (=> t!20746 result!3944) b_and!4035))))

(declare-fun b_free!2739 () Bool)

(declare-fun b_next!2739 () Bool)

(assert (=> b!89048 (= b_free!2739 (not b_next!2739))))

(declare-fun t!20748 () Bool)

(declare-fun tb!2747 () Bool)

(assert (=> (and b!89048 (= (toChars!715 (transformation!329 (h!6901 (t!20699 (t!20699 rules!2471))))) (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398))))) t!20748) tb!2747))

(declare-fun result!3946 () Bool)

(assert (= result!3946 result!3904))

(assert (=> d!18610 t!20748))

(declare-fun t!20750 () Bool)

(declare-fun tb!2749 () Bool)

(assert (=> (and b!89048 (= (toChars!715 (transformation!329 (h!6901 (t!20699 (t!20699 rules!2471))))) (toChars!715 (transformation!329 (rule!820 (_1!995 (get!382 lt!21464)))))) t!20750) tb!2749))

(declare-fun result!3948 () Bool)

(assert (= result!3948 result!3920))

(assert (=> d!18866 t!20750))

(declare-fun b_and!4037 () Bool)

(declare-fun tp!53247 () Bool)

(assert (=> b!89048 (= tp!53247 (and (=> t!20748 result!3946) (=> t!20750 result!3948) b_and!4037))))

(declare-fun e!49611 () Bool)

(assert (=> b!89048 (= e!49611 (and tp!53248 tp!53247))))

(declare-fun e!49610 () Bool)

(declare-fun tp!53249 () Bool)

(declare-fun b!89047 () Bool)

(assert (=> b!89047 (= e!49610 (and tp!53249 (inv!1852 (tag!507 (h!6901 (t!20699 (t!20699 rules!2471))))) (inv!1854 (transformation!329 (h!6901 (t!20699 (t!20699 rules!2471))))) e!49611))))

(declare-fun b!89046 () Bool)

(declare-fun e!49608 () Bool)

(declare-fun tp!53250 () Bool)

(assert (=> b!89046 (= e!49608 (and e!49610 tp!53250))))

(assert (=> b!88339 (= tp!53182 e!49608)))

(assert (= b!89047 b!89048))

(assert (= b!89046 b!89047))

(assert (= (and b!88339 ((_ is Cons!1504) (t!20699 (t!20699 rules!2471)))) b!89046))

(declare-fun m!69328 () Bool)

(assert (=> b!89047 m!69328))

(declare-fun m!69330 () Bool)

(assert (=> b!89047 m!69330))

(declare-fun b!89049 () Bool)

(declare-fun e!49612 () Bool)

(assert (=> b!89049 (= e!49612 tp_is_empty!717)))

(assert (=> b!88360 (= tp!53197 e!49612)))

(declare-fun b!89050 () Bool)

(declare-fun tp!53254 () Bool)

(declare-fun tp!53251 () Bool)

(assert (=> b!89050 (= e!49612 (and tp!53254 tp!53251))))

(declare-fun b!89052 () Bool)

(declare-fun tp!53252 () Bool)

(declare-fun tp!53255 () Bool)

(assert (=> b!89052 (= e!49612 (and tp!53252 tp!53255))))

(declare-fun b!89051 () Bool)

(declare-fun tp!53253 () Bool)

(assert (=> b!89051 (= e!49612 tp!53253)))

(assert (= (and b!88360 ((_ is ElementMatch!397) (regOne!1307 (regex!329 (h!6901 rules!2471))))) b!89049))

(assert (= (and b!88360 ((_ is Concat!716) (regOne!1307 (regex!329 (h!6901 rules!2471))))) b!89050))

(assert (= (and b!88360 ((_ is Star!397) (regOne!1307 (regex!329 (h!6901 rules!2471))))) b!89051))

(assert (= (and b!88360 ((_ is Union!397) (regOne!1307 (regex!329 (h!6901 rules!2471))))) b!89052))

(declare-fun b!89053 () Bool)

(declare-fun e!49613 () Bool)

(assert (=> b!89053 (= e!49613 tp_is_empty!717)))

(assert (=> b!88360 (= tp!53200 e!49613)))

(declare-fun b!89054 () Bool)

(declare-fun tp!53259 () Bool)

(declare-fun tp!53256 () Bool)

(assert (=> b!89054 (= e!49613 (and tp!53259 tp!53256))))

(declare-fun b!89056 () Bool)

(declare-fun tp!53257 () Bool)

(declare-fun tp!53260 () Bool)

(assert (=> b!89056 (= e!49613 (and tp!53257 tp!53260))))

(declare-fun b!89055 () Bool)

(declare-fun tp!53258 () Bool)

(assert (=> b!89055 (= e!49613 tp!53258)))

(assert (= (and b!88360 ((_ is ElementMatch!397) (regTwo!1307 (regex!329 (h!6901 rules!2471))))) b!89053))

(assert (= (and b!88360 ((_ is Concat!716) (regTwo!1307 (regex!329 (h!6901 rules!2471))))) b!89054))

(assert (= (and b!88360 ((_ is Star!397) (regTwo!1307 (regex!329 (h!6901 rules!2471))))) b!89055))

(assert (= (and b!88360 ((_ is Union!397) (regTwo!1307 (regex!329 (h!6901 rules!2471))))) b!89056))

(declare-fun b!89057 () Bool)

(declare-fun e!49614 () Bool)

(assert (=> b!89057 (= e!49614 tp_is_empty!717)))

(assert (=> b!88358 (= tp!53199 e!49614)))

(declare-fun b!89058 () Bool)

(declare-fun tp!53264 () Bool)

(declare-fun tp!53261 () Bool)

(assert (=> b!89058 (= e!49614 (and tp!53264 tp!53261))))

(declare-fun b!89060 () Bool)

(declare-fun tp!53262 () Bool)

(declare-fun tp!53265 () Bool)

(assert (=> b!89060 (= e!49614 (and tp!53262 tp!53265))))

(declare-fun b!89059 () Bool)

(declare-fun tp!53263 () Bool)

(assert (=> b!89059 (= e!49614 tp!53263)))

(assert (= (and b!88358 ((_ is ElementMatch!397) (regOne!1306 (regex!329 (h!6901 rules!2471))))) b!89057))

(assert (= (and b!88358 ((_ is Concat!716) (regOne!1306 (regex!329 (h!6901 rules!2471))))) b!89058))

(assert (= (and b!88358 ((_ is Star!397) (regOne!1306 (regex!329 (h!6901 rules!2471))))) b!89059))

(assert (= (and b!88358 ((_ is Union!397) (regOne!1306 (regex!329 (h!6901 rules!2471))))) b!89060))

(declare-fun b!89061 () Bool)

(declare-fun e!49615 () Bool)

(assert (=> b!89061 (= e!49615 tp_is_empty!717)))

(assert (=> b!88358 (= tp!53196 e!49615)))

(declare-fun b!89062 () Bool)

(declare-fun tp!53269 () Bool)

(declare-fun tp!53266 () Bool)

(assert (=> b!89062 (= e!49615 (and tp!53269 tp!53266))))

(declare-fun b!89064 () Bool)

(declare-fun tp!53267 () Bool)

(declare-fun tp!53270 () Bool)

(assert (=> b!89064 (= e!49615 (and tp!53267 tp!53270))))

(declare-fun b!89063 () Bool)

(declare-fun tp!53268 () Bool)

(assert (=> b!89063 (= e!49615 tp!53268)))

(assert (= (and b!88358 ((_ is ElementMatch!397) (regTwo!1306 (regex!329 (h!6901 rules!2471))))) b!89061))

(assert (= (and b!88358 ((_ is Concat!716) (regTwo!1306 (regex!329 (h!6901 rules!2471))))) b!89062))

(assert (= (and b!88358 ((_ is Star!397) (regTwo!1306 (regex!329 (h!6901 rules!2471))))) b!89063))

(assert (= (and b!88358 ((_ is Union!397) (regTwo!1306 (regex!329 (h!6901 rules!2471))))) b!89064))

(declare-fun b!89065 () Bool)

(declare-fun e!49616 () Bool)

(assert (=> b!89065 (= e!49616 tp_is_empty!717)))

(assert (=> b!88359 (= tp!53198 e!49616)))

(declare-fun b!89066 () Bool)

(declare-fun tp!53274 () Bool)

(declare-fun tp!53271 () Bool)

(assert (=> b!89066 (= e!49616 (and tp!53274 tp!53271))))

(declare-fun b!89068 () Bool)

(declare-fun tp!53272 () Bool)

(declare-fun tp!53275 () Bool)

(assert (=> b!89068 (= e!49616 (and tp!53272 tp!53275))))

(declare-fun b!89067 () Bool)

(declare-fun tp!53273 () Bool)

(assert (=> b!89067 (= e!49616 tp!53273)))

(assert (= (and b!88359 ((_ is ElementMatch!397) (reg!726 (regex!329 (h!6901 rules!2471))))) b!89065))

(assert (= (and b!88359 ((_ is Concat!716) (reg!726 (regex!329 (h!6901 rules!2471))))) b!89066))

(assert (= (and b!88359 ((_ is Star!397) (reg!726 (regex!329 (h!6901 rules!2471))))) b!89067))

(assert (= (and b!88359 ((_ is Union!397) (reg!726 (regex!329 (h!6901 rules!2471))))) b!89068))

(declare-fun tp!53284 () Bool)

(declare-fun tp!53283 () Bool)

(declare-fun b!89077 () Bool)

(declare-fun e!49621 () Bool)

(assert (=> b!89077 (= e!49621 (and (inv!1857 (left!1141 (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398)))))) tp!53283 (inv!1857 (right!1471 (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398)))))) tp!53284))))

(declare-fun b!89079 () Bool)

(declare-fun e!49622 () Bool)

(declare-fun tp!53282 () Bool)

(assert (=> b!89079 (= e!49622 tp!53282)))

(declare-fun b!89078 () Bool)

(declare-fun inv!1864 (IArray!921) Bool)

(assert (=> b!89078 (= e!49621 (and (inv!1864 (xs!3043 (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398)))))) e!49622))))

(assert (=> b!88322 (= tp!53170 (and (inv!1857 (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398))))) e!49621))))

(assert (= (and b!88322 ((_ is Node!460) (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398)))))) b!89077))

(assert (= b!89078 b!89079))

(assert (= (and b!88322 ((_ is Leaf!760) (c!21982 (dynLambda!380 (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))) (value!12272 (_1!995 lt!21398)))))) b!89078))

(declare-fun m!69332 () Bool)

(assert (=> b!89077 m!69332))

(declare-fun m!69334 () Bool)

(assert (=> b!89077 m!69334))

(declare-fun m!69336 () Bool)

(assert (=> b!89078 m!69336))

(assert (=> b!88322 m!67956))

(declare-fun b!89080 () Bool)

(declare-fun e!49623 () Bool)

(assert (=> b!89080 (= e!49623 tp_is_empty!717)))

(assert (=> b!88340 (= tp!53181 e!49623)))

(declare-fun b!89081 () Bool)

(declare-fun tp!53288 () Bool)

(declare-fun tp!53285 () Bool)

(assert (=> b!89081 (= e!49623 (and tp!53288 tp!53285))))

(declare-fun b!89083 () Bool)

(declare-fun tp!53286 () Bool)

(declare-fun tp!53289 () Bool)

(assert (=> b!89083 (= e!49623 (and tp!53286 tp!53289))))

(declare-fun b!89082 () Bool)

(declare-fun tp!53287 () Bool)

(assert (=> b!89082 (= e!49623 tp!53287)))

(assert (= (and b!88340 ((_ is ElementMatch!397) (regex!329 (h!6901 (t!20699 rules!2471))))) b!89080))

(assert (= (and b!88340 ((_ is Concat!716) (regex!329 (h!6901 (t!20699 rules!2471))))) b!89081))

(assert (= (and b!88340 ((_ is Star!397) (regex!329 (h!6901 (t!20699 rules!2471))))) b!89082))

(assert (= (and b!88340 ((_ is Union!397) (regex!329 (h!6901 (t!20699 rules!2471))))) b!89083))

(declare-fun b!89084 () Bool)

(declare-fun e!49624 () Bool)

(declare-fun tp!53290 () Bool)

(assert (=> b!89084 (= e!49624 (and tp_is_empty!717 tp!53290))))

(assert (=> b!88346 (= tp!53185 e!49624)))

(assert (= (and b!88346 ((_ is Cons!1502) (t!20697 (t!20697 input!2238)))) b!89084))

(declare-fun b_lambda!1027 () Bool)

(assert (= b_lambda!1015 (or (and b!88142 b_free!2723 (= (toChars!715 (transformation!329 (h!6901 rules!2471))) (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))))) (and b!88341 b_free!2731 (= (toChars!715 (transformation!329 (h!6901 (t!20699 rules!2471)))) (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))))) (and b!89048 b_free!2739 (= (toChars!715 (transformation!329 (h!6901 (t!20699 (t!20699 rules!2471))))) (toChars!715 (transformation!329 (rule!820 (_1!995 lt!21398)))))) b_lambda!1027)))

(check-sat (not d!18958) (not b!88867) (not d!18868) (not b!89068) (not d!18730) (not b!88322) (not d!18752) (not b!89077) (not b!88602) (not b!88767) (not b!88740) (not d!18970) (not b!88950) (not b!88690) (not b!89044) (not b!88940) (not d!18878) (not b!88694) (not b!88985) (not d!18952) (not b!89063) (not b!88853) (not b!88501) (not b!88951) (not b!88969) (not d!18890) (not b!88576) (not b_next!2729) (not d!18748) (not d!18714) (not b_next!2739) (not b!88696) (not d!18690) (not d!18810) (not b!88629) (not b!88855) (not b!88934) (not b!88506) (not b!89082) (not b!88698) b_and!4033 (not b!88449) (not b!89058) (not d!18634) (not b!88978) (not d!18974) (not d!18850) (not d!18822) (not b!88736) (not d!18894) (not b!88984) (not b!88586) (not d!18736) (not b!88949) (not b!89064) (not b!88942) (not b_next!2721) (not b!88607) (not d!18938) (not d!18896) (not b!89079) (not b!89037) (not b!89054) (not b!88737) (not b!88697) (not b!88739) (not d!18694) (not b!88600) (not d!18864) (not b!88573) (not b!89052) (not d!18630) (not b!89046) (not b!88972) (not d!18692) (not b!88504) (not b!88447) (not b!88858) (not tb!2741) (not b!88764) (not d!18740) (not b!88628) (not b!89028) (not b!88982) (not b!89083) (not b!88995) (not b!89066) (not d!18746) (not b!89031) (not b!89059) (not b!88938) (not b!89029) (not b!88979) (not d!18732) (not d!18738) (not d!18984) (not d!18670) (not b!88588) (not d!18886) (not d!18682) (not b!89043) (not b_next!2737) (not b!89047) (not d!18880) (not b!88968) (not b!89084) (not b!88692) (not b_next!2723) (not b!89051) b_and!4031 (not b!88860) (not bm!4032) b_and!4037 (not b!88981) (not b!89081) (not b!88845) (not b!88766) (not b!88973) (not d!18862) (not b_lambda!1025) (not b!88693) (not d!18982) (not b!89067) (not b!89056) (not d!18892) (not d!18814) (not d!18986) (not b!88499) (not b!88935) (not d!18960) (not b!88851) (not d!18788) (not b!88735) (not d!18966) (not d!18854) (not b!88862) (not d!18726) (not b!88624) (not b!88572) (not d!18632) (not d!18976) (not b!88977) (not b!88955) b_and!4019 (not b!88993) (not d!18964) (not d!18636) (not d!18968) (not b!88470) (not b!88580) (not b!89035) (not b!89050) (not d!18980) (not d!18744) (not b!89040) (not b!88691) (not b!88954) b_and!4021 (not b!88933) (not b!88508) (not b!88601) (not b_lambda!1027) (not d!18728) (not b!88713) (not b!88946) (not b_lambda!1019) (not d!18936) (not b!88445) (not b!88936) (not b!88754) (not b!88608) (not d!18962) (not b_next!2731) tp_is_empty!717 (not d!18972) (not b!89036) (not b!89039) (not tb!2727) (not b!88714) (not bm!4035) (not b!88983) (not b!88577) (not d!18816) (not b!89060) b_and!4035 (not d!18818) (not b!88864) (not b!88443) (not b!88974) (not b!88980) (not b!88866) (not b!88763) (not d!18888) (not d!18882) (not b!88625) (not b!88857) (not b!88944) (not b!88738) (not b!89078) (not b!88590) (not b!88502) (not b!89062) (not b!88613) (not d!18866) (not b!89055))
(check-sat b_and!4033 (not b_next!2721) (not b_next!2737) b_and!4019 b_and!4021 (not b_next!2731) b_and!4035 (not b_next!2729) (not b_next!2739) (not b_next!2723) b_and!4037 b_and!4031)
