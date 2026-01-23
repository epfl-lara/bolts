; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274560 () Bool)

(assert start!274560)

(declare-fun b!2827992 () Bool)

(declare-fun b_free!81117 () Bool)

(declare-fun b_next!81821 () Bool)

(assert (=> b!2827992 (= b_free!81117 (not b_next!81821))))

(declare-fun tp!903193 () Bool)

(declare-fun b_and!206771 () Bool)

(assert (=> b!2827992 (= tp!903193 b_and!206771)))

(declare-fun b_free!81119 () Bool)

(declare-fun b_next!81823 () Bool)

(assert (=> b!2827992 (= b_free!81119 (not b_next!81823))))

(declare-fun tp!903195 () Bool)

(declare-fun b_and!206773 () Bool)

(assert (=> b!2827992 (= tp!903195 b_and!206773)))

(declare-fun b!2827980 () Bool)

(declare-fun res!1177346 () Bool)

(declare-fun e!1789982 () Bool)

(assert (=> b!2827980 (=> (not res!1177346) (not e!1789982))))

(declare-datatypes ((C!16918 0))(
  ( (C!16919 (val!10471 Int)) )
))
(declare-datatypes ((Regex!8368 0))(
  ( (ElementMatch!8368 (c!457540 C!16918)) (Concat!13576 (regOne!17248 Regex!8368) (regTwo!17248 Regex!8368)) (EmptyExpr!8368) (Star!8368 (reg!8697 Regex!8368)) (EmptyLang!8368) (Union!8368 (regOne!17249 Regex!8368) (regTwo!17249 Regex!8368)) )
))
(declare-datatypes ((String!36561 0))(
  ( (String!36562 (value!160216 String)) )
))
(declare-datatypes ((List!33360 0))(
  ( (Nil!33236) (Cons!33236 (h!38656 (_ BitVec 16)) (t!231159 List!33360)) )
))
(declare-datatypes ((TokenValue!5208 0))(
  ( (FloatLiteralValue!10416 (text!36901 List!33360)) (TokenValueExt!5207 (__x!22089 Int)) (Broken!26040 (value!160217 List!33360)) (Object!5331) (End!5208) (Def!5208) (Underscore!5208) (Match!5208) (Else!5208) (Error!5208) (Case!5208) (If!5208) (Extends!5208) (Abstract!5208) (Class!5208) (Val!5208) (DelimiterValue!10416 (del!5268 List!33360)) (KeywordValue!5214 (value!160218 List!33360)) (CommentValue!10416 (value!160219 List!33360)) (WhitespaceValue!10416 (value!160220 List!33360)) (IndentationValue!5208 (value!160221 List!33360)) (String!36563) (Int32!5208) (Broken!26041 (value!160222 List!33360)) (Boolean!5209) (Unit!47288) (OperatorValue!5211 (op!5268 List!33360)) (IdentifierValue!10416 (value!160223 List!33360)) (IdentifierValue!10417 (value!160224 List!33360)) (WhitespaceValue!10417 (value!160225 List!33360)) (True!10416) (False!10416) (Broken!26042 (value!160226 List!33360)) (Broken!26043 (value!160227 List!33360)) (True!10417) (RightBrace!5208) (RightBracket!5208) (Colon!5208) (Null!5208) (Comma!5208) (LeftBracket!5208) (False!10417) (LeftBrace!5208) (ImaginaryLiteralValue!5208 (text!36902 List!33360)) (StringLiteralValue!15624 (value!160228 List!33360)) (EOFValue!5208 (value!160229 List!33360)) (IdentValue!5208 (value!160230 List!33360)) (DelimiterValue!10417 (value!160231 List!33360)) (DedentValue!5208 (value!160232 List!33360)) (NewLineValue!5208 (value!160233 List!33360)) (IntegerValue!15624 (value!160234 (_ BitVec 32)) (text!36903 List!33360)) (IntegerValue!15625 (value!160235 Int) (text!36904 List!33360)) (Times!5208) (Or!5208) (Equal!5208) (Minus!5208) (Broken!26044 (value!160236 List!33360)) (And!5208) (Div!5208) (LessEqual!5208) (Mod!5208) (Concat!13577) (Not!5208) (Plus!5208) (SpaceValue!5208 (value!160237 List!33360)) (IntegerValue!15626 (value!160238 Int) (text!36905 List!33360)) (StringLiteralValue!15625 (text!36906 List!33360)) (FloatLiteralValue!10417 (text!36907 List!33360)) (BytesLiteralValue!5208 (value!160239 List!33360)) (CommentValue!10417 (value!160240 List!33360)) (StringLiteralValue!15626 (value!160241 List!33360)) (ErrorTokenValue!5208 (msg!5269 List!33360)) )
))
(declare-datatypes ((List!33361 0))(
  ( (Nil!33237) (Cons!33237 (h!38657 C!16918) (t!231160 List!33361)) )
))
(declare-datatypes ((IArray!20627 0))(
  ( (IArray!20628 (innerList!10371 List!33361)) )
))
(declare-datatypes ((Conc!10311 0))(
  ( (Node!10311 (left!25107 Conc!10311) (right!25437 Conc!10311) (csize!20852 Int) (cheight!10522 Int)) (Leaf!15708 (xs!13423 IArray!20627) (csize!20853 Int)) (Empty!10311) )
))
(declare-datatypes ((BalanceConc!20260 0))(
  ( (BalanceConc!20261 (c!457541 Conc!10311)) )
))
(declare-datatypes ((TokenValueInjection!9844 0))(
  ( (TokenValueInjection!9845 (toValue!7000 Int) (toChars!6859 Int)) )
))
(declare-datatypes ((Rule!9756 0))(
  ( (Rule!9757 (regex!4978 Regex!8368) (tag!5482 String!36561) (isSeparator!4978 Bool) (transformation!4978 TokenValueInjection!9844)) )
))
(declare-datatypes ((List!33362 0))(
  ( (Nil!33238) (Cons!33238 (h!38658 Rule!9756) (t!231161 List!33362)) )
))
(declare-fun rules!1102 () List!33362)

(declare-datatypes ((Token!9358 0))(
  ( (Token!9359 (value!160242 TokenValue!5208) (rule!7406 Rule!9756) (size!25867 Int) (originalCharacters!5710 List!33361)) )
))
(declare-datatypes ((List!33363 0))(
  ( (Nil!33239) (Cons!33239 (h!38659 Token!9358) (t!231162 List!33363)) )
))
(declare-datatypes ((IArray!20629 0))(
  ( (IArray!20630 (innerList!10372 List!33363)) )
))
(declare-datatypes ((Conc!10312 0))(
  ( (Node!10312 (left!25108 Conc!10312) (right!25438 Conc!10312) (csize!20854 Int) (cheight!10523 Int)) (Leaf!15709 (xs!13424 IArray!20629) (csize!20855 Int)) (Empty!10312) )
))
(declare-datatypes ((BalanceConc!20262 0))(
  ( (BalanceConc!20263 (c!457542 Conc!10312)) )
))
(declare-fun v!6247 () BalanceConc!20262)

(declare-datatypes ((LexerInterface!4569 0))(
  ( (LexerInterfaceExt!4566 (__x!22090 Int)) (Lexer!4567) )
))
(declare-fun thiss!11212 () LexerInterface!4569)

(declare-fun rulesProduceEachTokenIndividually!1089 (LexerInterface!4569 List!33362 BalanceConc!20262) Bool)

(assert (=> b!2827980 (= res!1177346 (rulesProduceEachTokenIndividually!1089 thiss!11212 rules!1102 v!6247))))

(declare-fun b!2827981 () Bool)

(declare-fun e!1789981 () Bool)

(declare-fun lt!1008606 () BalanceConc!20260)

(declare-fun isEmpty!18367 (BalanceConc!20260) Bool)

(assert (=> b!2827981 (= e!1789981 (not (isEmpty!18367 lt!1008606)))))

(declare-fun size!25868 (BalanceConc!20260) Int)

(assert (=> b!2827981 (> (size!25868 lt!1008606) 0)))

(declare-fun lt!1008610 () Token!9358)

(declare-fun charsOf!3086 (Token!9358) BalanceConc!20260)

(assert (=> b!2827981 (= lt!1008606 (charsOf!3086 lt!1008610))))

(declare-fun rulesProduceIndividualToken!2107 (LexerInterface!4569 List!33362 Token!9358) Bool)

(assert (=> b!2827981 (rulesProduceIndividualToken!2107 thiss!11212 rules!1102 lt!1008610)))

(declare-fun lt!1008618 () List!33363)

(declare-datatypes ((Unit!47289 0))(
  ( (Unit!47290) )
))
(declare-fun lt!1008616 () Unit!47289)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!725 (LexerInterface!4569 List!33362 List!33363 Token!9358) Unit!47289)

(assert (=> b!2827981 (= lt!1008616 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!725 thiss!11212 rules!1102 lt!1008618 lt!1008610))))

(declare-fun lt!1008614 () Token!9358)

(assert (=> b!2827981 (rulesProduceIndividualToken!2107 thiss!11212 rules!1102 lt!1008614)))

(declare-fun lt!1008617 () Unit!47289)

(assert (=> b!2827981 (= lt!1008617 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!725 thiss!11212 rules!1102 lt!1008618 lt!1008614))))

(declare-fun b!2827982 () Bool)

(declare-fun res!1177348 () Bool)

(declare-fun e!1789983 () Bool)

(assert (=> b!2827982 (=> res!1177348 e!1789983)))

(declare-fun contains!6061 (List!33363 Token!9358) Bool)

(assert (=> b!2827982 (= res!1177348 (not (contains!6061 lt!1008618 lt!1008614)))))

(declare-fun b!2827983 () Bool)

(declare-fun res!1177345 () Bool)

(assert (=> b!2827983 (=> (not res!1177345) (not e!1789982))))

(declare-fun isEmpty!18368 (List!33362) Bool)

(assert (=> b!2827983 (= res!1177345 (not (isEmpty!18368 rules!1102)))))

(declare-fun b!2827984 () Bool)

(declare-fun e!1789979 () Bool)

(declare-fun tp!903197 () Bool)

(declare-fun inv!45190 (Conc!10312) Bool)

(assert (=> b!2827984 (= e!1789979 (and (inv!45190 (c!457542 v!6247)) tp!903197))))

(declare-fun b!2827985 () Bool)

(declare-fun e!1789980 () Bool)

(assert (=> b!2827985 (= e!1789980 e!1789982)))

(declare-fun res!1177349 () Bool)

(assert (=> b!2827985 (=> (not res!1177349) (not e!1789982))))

(declare-fun from!827 () Int)

(declare-fun lt!1008608 () Int)

(assert (=> b!2827985 (= res!1177349 (<= from!827 lt!1008608))))

(declare-fun size!25869 (BalanceConc!20262) Int)

(assert (=> b!2827985 (= lt!1008608 (size!25869 v!6247))))

(declare-fun b!2827986 () Bool)

(declare-fun res!1177344 () Bool)

(assert (=> b!2827986 (=> (not res!1177344) (not e!1789982))))

(declare-fun rulesInvariant!3987 (LexerInterface!4569 List!33362) Bool)

(assert (=> b!2827986 (= res!1177344 (rulesInvariant!3987 thiss!11212 rules!1102))))

(declare-fun e!1789976 () Bool)

(declare-fun e!1789975 () Bool)

(declare-fun b!2827987 () Bool)

(declare-fun tp!903194 () Bool)

(declare-fun inv!45187 (String!36561) Bool)

(declare-fun inv!45191 (TokenValueInjection!9844) Bool)

(assert (=> b!2827987 (= e!1789976 (and tp!903194 (inv!45187 (tag!5482 (h!38658 rules!1102))) (inv!45191 (transformation!4978 (h!38658 rules!1102))) e!1789975))))

(declare-fun b!2827988 () Bool)

(assert (=> b!2827988 (= e!1789983 e!1789981)))

(declare-fun res!1177347 () Bool)

(assert (=> b!2827988 (=> res!1177347 e!1789981)))

(declare-fun contains!6062 (BalanceConc!20262 Token!9358) Bool)

(assert (=> b!2827988 (= res!1177347 (not (contains!6062 v!6247 lt!1008610)))))

(declare-fun apply!7753 (BalanceConc!20262 Int) Token!9358)

(assert (=> b!2827988 (= lt!1008610 (apply!7753 v!6247 (+ 1 from!827)))))

(declare-fun b!2827989 () Bool)

(declare-fun res!1177353 () Bool)

(assert (=> b!2827989 (=> res!1177353 e!1789981)))

(assert (=> b!2827989 (= res!1177353 (not (contains!6061 lt!1008618 lt!1008610)))))

(declare-fun b!2827990 () Bool)

(declare-fun res!1177352 () Bool)

(assert (=> b!2827990 (=> (not res!1177352) (not e!1789982))))

(assert (=> b!2827990 (= res!1177352 (< from!827 (- lt!1008608 1)))))

(declare-fun res!1177350 () Bool)

(assert (=> start!274560 (=> (not res!1177350) (not e!1789980))))

(assert (=> start!274560 (= res!1177350 (and (is-Lexer!4567 thiss!11212) (>= from!827 0)))))

(assert (=> start!274560 e!1789980))

(assert (=> start!274560 true))

(declare-fun e!1789977 () Bool)

(assert (=> start!274560 e!1789977))

(declare-fun inv!45192 (BalanceConc!20262) Bool)

(assert (=> start!274560 (and (inv!45192 v!6247) e!1789979)))

(declare-fun b!2827991 () Bool)

(assert (=> b!2827991 (= e!1789982 (not e!1789983))))

(declare-fun res!1177351 () Bool)

(assert (=> b!2827991 (=> res!1177351 e!1789983)))

(assert (=> b!2827991 (= res!1177351 (not (contains!6062 v!6247 lt!1008614)))))

(assert (=> b!2827991 (= lt!1008614 (apply!7753 v!6247 from!827))))

(declare-fun lt!1008611 () List!33363)

(declare-fun tail!4457 (List!33363) List!33363)

(declare-fun drop!1781 (List!33363 Int) List!33363)

(assert (=> b!2827991 (= (tail!4457 lt!1008611) (drop!1781 lt!1008618 (+ 2 from!827)))))

(declare-fun lt!1008609 () Unit!47289)

(declare-fun lemmaDropTail!867 (List!33363 Int) Unit!47289)

(assert (=> b!2827991 (= lt!1008609 (lemmaDropTail!867 lt!1008618 (+ 1 from!827)))))

(declare-fun lt!1008612 () List!33363)

(assert (=> b!2827991 (= (tail!4457 lt!1008612) lt!1008611)))

(declare-fun lt!1008607 () Unit!47289)

(assert (=> b!2827991 (= lt!1008607 (lemmaDropTail!867 lt!1008618 from!827))))

(declare-fun head!6232 (List!33363) Token!9358)

(declare-fun apply!7754 (List!33363 Int) Token!9358)

(assert (=> b!2827991 (= (head!6232 lt!1008611) (apply!7754 lt!1008618 (+ 1 from!827)))))

(assert (=> b!2827991 (= lt!1008611 (drop!1781 lt!1008618 (+ 1 from!827)))))

(declare-fun lt!1008613 () Unit!47289)

(declare-fun lemmaDropApply!979 (List!33363 Int) Unit!47289)

(assert (=> b!2827991 (= lt!1008613 (lemmaDropApply!979 lt!1008618 (+ 1 from!827)))))

(assert (=> b!2827991 (= (head!6232 lt!1008612) (apply!7754 lt!1008618 from!827))))

(assert (=> b!2827991 (= lt!1008612 (drop!1781 lt!1008618 from!827))))

(declare-fun lt!1008615 () Unit!47289)

(assert (=> b!2827991 (= lt!1008615 (lemmaDropApply!979 lt!1008618 from!827))))

(declare-fun list!12445 (BalanceConc!20262) List!33363)

(assert (=> b!2827991 (= lt!1008618 (list!12445 v!6247))))

(assert (=> b!2827992 (= e!1789975 (and tp!903193 tp!903195))))

(declare-fun b!2827993 () Bool)

(declare-fun tp!903196 () Bool)

(assert (=> b!2827993 (= e!1789977 (and e!1789976 tp!903196))))

(assert (= (and start!274560 res!1177350) b!2827985))

(assert (= (and b!2827985 res!1177349) b!2827983))

(assert (= (and b!2827983 res!1177345) b!2827986))

(assert (= (and b!2827986 res!1177344) b!2827980))

(assert (= (and b!2827980 res!1177346) b!2827990))

(assert (= (and b!2827990 res!1177352) b!2827991))

(assert (= (and b!2827991 (not res!1177351)) b!2827982))

(assert (= (and b!2827982 (not res!1177348)) b!2827988))

(assert (= (and b!2827988 (not res!1177347)) b!2827989))

(assert (= (and b!2827989 (not res!1177353)) b!2827981))

(assert (= b!2827987 b!2827992))

(assert (= b!2827993 b!2827987))

(assert (= (and start!274560 (is-Cons!33238 rules!1102)) b!2827993))

(assert (= start!274560 b!2827984))

(declare-fun m!3257355 () Bool)

(assert (=> b!2827983 m!3257355))

(declare-fun m!3257357 () Bool)

(assert (=> b!2827991 m!3257357))

(declare-fun m!3257359 () Bool)

(assert (=> b!2827991 m!3257359))

(declare-fun m!3257361 () Bool)

(assert (=> b!2827991 m!3257361))

(declare-fun m!3257363 () Bool)

(assert (=> b!2827991 m!3257363))

(declare-fun m!3257365 () Bool)

(assert (=> b!2827991 m!3257365))

(declare-fun m!3257367 () Bool)

(assert (=> b!2827991 m!3257367))

(declare-fun m!3257369 () Bool)

(assert (=> b!2827991 m!3257369))

(declare-fun m!3257371 () Bool)

(assert (=> b!2827991 m!3257371))

(declare-fun m!3257373 () Bool)

(assert (=> b!2827991 m!3257373))

(declare-fun m!3257375 () Bool)

(assert (=> b!2827991 m!3257375))

(declare-fun m!3257377 () Bool)

(assert (=> b!2827991 m!3257377))

(declare-fun m!3257379 () Bool)

(assert (=> b!2827991 m!3257379))

(declare-fun m!3257381 () Bool)

(assert (=> b!2827991 m!3257381))

(declare-fun m!3257383 () Bool)

(assert (=> b!2827991 m!3257383))

(declare-fun m!3257385 () Bool)

(assert (=> b!2827991 m!3257385))

(declare-fun m!3257387 () Bool)

(assert (=> b!2827991 m!3257387))

(declare-fun m!3257389 () Bool)

(assert (=> b!2827982 m!3257389))

(declare-fun m!3257391 () Bool)

(assert (=> b!2827981 m!3257391))

(declare-fun m!3257393 () Bool)

(assert (=> b!2827981 m!3257393))

(declare-fun m!3257395 () Bool)

(assert (=> b!2827981 m!3257395))

(declare-fun m!3257397 () Bool)

(assert (=> b!2827981 m!3257397))

(declare-fun m!3257399 () Bool)

(assert (=> b!2827981 m!3257399))

(declare-fun m!3257401 () Bool)

(assert (=> b!2827981 m!3257401))

(declare-fun m!3257403 () Bool)

(assert (=> b!2827981 m!3257403))

(declare-fun m!3257405 () Bool)

(assert (=> b!2827987 m!3257405))

(declare-fun m!3257407 () Bool)

(assert (=> b!2827987 m!3257407))

(declare-fun m!3257409 () Bool)

(assert (=> b!2827989 m!3257409))

(declare-fun m!3257411 () Bool)

(assert (=> b!2827986 m!3257411))

(declare-fun m!3257413 () Bool)

(assert (=> b!2827980 m!3257413))

(declare-fun m!3257415 () Bool)

(assert (=> start!274560 m!3257415))

(declare-fun m!3257417 () Bool)

(assert (=> b!2827988 m!3257417))

(declare-fun m!3257419 () Bool)

(assert (=> b!2827988 m!3257419))

(declare-fun m!3257421 () Bool)

(assert (=> b!2827985 m!3257421))

(declare-fun m!3257423 () Bool)

(assert (=> b!2827984 m!3257423))

(push 1)

(assert (not b!2827988))

(assert (not b_next!81821))

(assert (not b!2827984))

(assert (not b!2827986))

(assert (not b!2827982))

(assert (not b!2827991))

(assert (not b!2827980))

(assert (not b_next!81823))

(assert b_and!206773)

(assert (not b!2827983))

(assert (not b!2827981))

(assert (not b!2827993))

(assert b_and!206771)

(assert (not b!2827985))

(assert (not start!274560))

(assert (not b!2827989))

(assert (not b!2827987))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206773)

(assert b_and!206771)

(assert (not b_next!81821))

(assert (not b_next!81823))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!820645 () Bool)

(assert (=> d!820645 (rulesProduceIndividualToken!2107 thiss!11212 rules!1102 lt!1008614)))

(declare-fun lt!1008674 () Unit!47289)

(declare-fun choose!16707 (LexerInterface!4569 List!33362 List!33363 Token!9358) Unit!47289)

(assert (=> d!820645 (= lt!1008674 (choose!16707 thiss!11212 rules!1102 lt!1008618 lt!1008614))))

(assert (=> d!820645 (not (isEmpty!18368 rules!1102))))

(assert (=> d!820645 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!725 thiss!11212 rules!1102 lt!1008618 lt!1008614) lt!1008674)))

(declare-fun bs!518121 () Bool)

(assert (= bs!518121 d!820645))

(assert (=> bs!518121 m!3257403))

(declare-fun m!3257531 () Bool)

(assert (=> bs!518121 m!3257531))

(assert (=> bs!518121 m!3257355))

(assert (=> b!2827981 d!820645))

(declare-fun d!820665 () Bool)

(declare-fun lt!1008691 () Bool)

(declare-fun e!1790067 () Bool)

(assert (=> d!820665 (= lt!1008691 e!1790067)))

(declare-fun res!1177419 () Bool)

(assert (=> d!820665 (=> (not res!1177419) (not e!1790067))))

(declare-datatypes ((tuple2!33426 0))(
  ( (tuple2!33427 (_1!19806 BalanceConc!20262) (_2!19806 BalanceConc!20260)) )
))
(declare-fun lex!2009 (LexerInterface!4569 List!33362 BalanceConc!20260) tuple2!33426)

(declare-fun print!1728 (LexerInterface!4569 BalanceConc!20262) BalanceConc!20260)

(declare-fun singletonSeq!2154 (Token!9358) BalanceConc!20262)

(assert (=> d!820665 (= res!1177419 (= (list!12445 (_1!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614))))) (list!12445 (singletonSeq!2154 lt!1008614))))))

(declare-fun e!1790066 () Bool)

(assert (=> d!820665 (= lt!1008691 e!1790066)))

(declare-fun res!1177418 () Bool)

(assert (=> d!820665 (=> (not res!1177418) (not e!1790066))))

(declare-fun lt!1008690 () tuple2!33426)

(assert (=> d!820665 (= res!1177418 (= (size!25869 (_1!19806 lt!1008690)) 1))))

(assert (=> d!820665 (= lt!1008690 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614))))))

(assert (=> d!820665 (not (isEmpty!18368 rules!1102))))

(assert (=> d!820665 (= (rulesProduceIndividualToken!2107 thiss!11212 rules!1102 lt!1008614) lt!1008691)))

(declare-fun b!2828120 () Bool)

(declare-fun res!1177420 () Bool)

(assert (=> b!2828120 (=> (not res!1177420) (not e!1790066))))

(assert (=> b!2828120 (= res!1177420 (= (apply!7753 (_1!19806 lt!1008690) 0) lt!1008614))))

(declare-fun b!2828121 () Bool)

(assert (=> b!2828121 (= e!1790066 (isEmpty!18367 (_2!19806 lt!1008690)))))

(declare-fun b!2828122 () Bool)

(assert (=> b!2828122 (= e!1790067 (isEmpty!18367 (_2!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614))))))))

(assert (= (and d!820665 res!1177418) b!2828120))

(assert (= (and b!2828120 res!1177420) b!2828121))

(assert (= (and d!820665 res!1177419) b!2828122))

(declare-fun m!3257575 () Bool)

(assert (=> d!820665 m!3257575))

(declare-fun m!3257577 () Bool)

(assert (=> d!820665 m!3257577))

(declare-fun m!3257579 () Bool)

(assert (=> d!820665 m!3257579))

(declare-fun m!3257581 () Bool)

(assert (=> d!820665 m!3257581))

(declare-fun m!3257583 () Bool)

(assert (=> d!820665 m!3257583))

(assert (=> d!820665 m!3257355))

(assert (=> d!820665 m!3257577))

(declare-fun m!3257585 () Bool)

(assert (=> d!820665 m!3257585))

(assert (=> d!820665 m!3257577))

(assert (=> d!820665 m!3257581))

(declare-fun m!3257587 () Bool)

(assert (=> b!2828120 m!3257587))

(declare-fun m!3257589 () Bool)

(assert (=> b!2828121 m!3257589))

(assert (=> b!2828122 m!3257577))

(assert (=> b!2828122 m!3257577))

(assert (=> b!2828122 m!3257581))

(assert (=> b!2828122 m!3257581))

(assert (=> b!2828122 m!3257583))

(declare-fun m!3257591 () Bool)

(assert (=> b!2828122 m!3257591))

(assert (=> b!2827981 d!820665))

(declare-fun d!820693 () Bool)

(declare-fun lt!1008693 () Bool)

(declare-fun e!1790069 () Bool)

(assert (=> d!820693 (= lt!1008693 e!1790069)))

(declare-fun res!1177422 () Bool)

(assert (=> d!820693 (=> (not res!1177422) (not e!1790069))))

(assert (=> d!820693 (= res!1177422 (= (list!12445 (_1!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610))))) (list!12445 (singletonSeq!2154 lt!1008610))))))

(declare-fun e!1790068 () Bool)

(assert (=> d!820693 (= lt!1008693 e!1790068)))

(declare-fun res!1177421 () Bool)

(assert (=> d!820693 (=> (not res!1177421) (not e!1790068))))

(declare-fun lt!1008692 () tuple2!33426)

(assert (=> d!820693 (= res!1177421 (= (size!25869 (_1!19806 lt!1008692)) 1))))

(assert (=> d!820693 (= lt!1008692 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610))))))

(assert (=> d!820693 (not (isEmpty!18368 rules!1102))))

(assert (=> d!820693 (= (rulesProduceIndividualToken!2107 thiss!11212 rules!1102 lt!1008610) lt!1008693)))

(declare-fun b!2828123 () Bool)

(declare-fun res!1177423 () Bool)

(assert (=> b!2828123 (=> (not res!1177423) (not e!1790068))))

(assert (=> b!2828123 (= res!1177423 (= (apply!7753 (_1!19806 lt!1008692) 0) lt!1008610))))

(declare-fun b!2828124 () Bool)

(assert (=> b!2828124 (= e!1790068 (isEmpty!18367 (_2!19806 lt!1008692)))))

(declare-fun b!2828125 () Bool)

(assert (=> b!2828125 (= e!1790069 (isEmpty!18367 (_2!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610))))))))

(assert (= (and d!820693 res!1177421) b!2828123))

(assert (= (and b!2828123 res!1177423) b!2828124))

(assert (= (and d!820693 res!1177422) b!2828125))

(declare-fun m!3257593 () Bool)

(assert (=> d!820693 m!3257593))

(declare-fun m!3257595 () Bool)

(assert (=> d!820693 m!3257595))

(declare-fun m!3257597 () Bool)

(assert (=> d!820693 m!3257597))

(declare-fun m!3257599 () Bool)

(assert (=> d!820693 m!3257599))

(declare-fun m!3257601 () Bool)

(assert (=> d!820693 m!3257601))

(assert (=> d!820693 m!3257355))

(assert (=> d!820693 m!3257595))

(declare-fun m!3257603 () Bool)

(assert (=> d!820693 m!3257603))

(assert (=> d!820693 m!3257595))

(assert (=> d!820693 m!3257599))

(declare-fun m!3257605 () Bool)

(assert (=> b!2828123 m!3257605))

(declare-fun m!3257607 () Bool)

(assert (=> b!2828124 m!3257607))

(assert (=> b!2828125 m!3257595))

(assert (=> b!2828125 m!3257595))

(assert (=> b!2828125 m!3257599))

(assert (=> b!2828125 m!3257599))

(assert (=> b!2828125 m!3257601))

(declare-fun m!3257609 () Bool)

(assert (=> b!2828125 m!3257609))

(assert (=> b!2827981 d!820693))

(declare-fun d!820695 () Bool)

(declare-fun lt!1008696 () Int)

(declare-fun size!25873 (List!33361) Int)

(declare-fun list!12447 (BalanceConc!20260) List!33361)

(assert (=> d!820695 (= lt!1008696 (size!25873 (list!12447 lt!1008606)))))

(declare-fun size!25874 (Conc!10311) Int)

(assert (=> d!820695 (= lt!1008696 (size!25874 (c!457541 lt!1008606)))))

(assert (=> d!820695 (= (size!25868 lt!1008606) lt!1008696)))

(declare-fun bs!518123 () Bool)

(assert (= bs!518123 d!820695))

(declare-fun m!3257611 () Bool)

(assert (=> bs!518123 m!3257611))

(assert (=> bs!518123 m!3257611))

(declare-fun m!3257613 () Bool)

(assert (=> bs!518123 m!3257613))

(declare-fun m!3257615 () Bool)

(assert (=> bs!518123 m!3257615))

(assert (=> b!2827981 d!820695))

(declare-fun d!820697 () Bool)

(assert (=> d!820697 (rulesProduceIndividualToken!2107 thiss!11212 rules!1102 lt!1008610)))

(declare-fun lt!1008697 () Unit!47289)

(assert (=> d!820697 (= lt!1008697 (choose!16707 thiss!11212 rules!1102 lt!1008618 lt!1008610))))

(assert (=> d!820697 (not (isEmpty!18368 rules!1102))))

(assert (=> d!820697 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!725 thiss!11212 rules!1102 lt!1008618 lt!1008610) lt!1008697)))

(declare-fun bs!518124 () Bool)

(assert (= bs!518124 d!820697))

(assert (=> bs!518124 m!3257397))

(declare-fun m!3257617 () Bool)

(assert (=> bs!518124 m!3257617))

(assert (=> bs!518124 m!3257355))

(assert (=> b!2827981 d!820697))

(declare-fun d!820699 () Bool)

(declare-fun lt!1008700 () Bool)

(declare-fun isEmpty!18371 (List!33361) Bool)

(assert (=> d!820699 (= lt!1008700 (isEmpty!18371 (list!12447 lt!1008606)))))

(declare-fun isEmpty!18372 (Conc!10311) Bool)

(assert (=> d!820699 (= lt!1008700 (isEmpty!18372 (c!457541 lt!1008606)))))

(assert (=> d!820699 (= (isEmpty!18367 lt!1008606) lt!1008700)))

(declare-fun bs!518125 () Bool)

(assert (= bs!518125 d!820699))

(assert (=> bs!518125 m!3257611))

(assert (=> bs!518125 m!3257611))

(declare-fun m!3257619 () Bool)

(assert (=> bs!518125 m!3257619))

(declare-fun m!3257621 () Bool)

(assert (=> bs!518125 m!3257621))

(assert (=> b!2827981 d!820699))

(declare-fun d!820701 () Bool)

(declare-fun lt!1008703 () BalanceConc!20260)

(assert (=> d!820701 (= (list!12447 lt!1008703) (originalCharacters!5710 lt!1008610))))

(declare-fun dynLambda!13978 (Int TokenValue!5208) BalanceConc!20260)

(assert (=> d!820701 (= lt!1008703 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610)))))

(assert (=> d!820701 (= (charsOf!3086 lt!1008610) lt!1008703)))

(declare-fun b_lambda!84979 () Bool)

(assert (=> (not b_lambda!84979) (not d!820701)))

(declare-fun t!231170 () Bool)

(declare-fun tb!154157 () Bool)

(assert (=> (and b!2827992 (= (toChars!6859 (transformation!4978 (h!38658 rules!1102))) (toChars!6859 (transformation!4978 (rule!7406 lt!1008610)))) t!231170) tb!154157))

(declare-fun b!2828130 () Bool)

(declare-fun e!1790072 () Bool)

(declare-fun tp!903215 () Bool)

(declare-fun inv!45196 (Conc!10311) Bool)

(assert (=> b!2828130 (= e!1790072 (and (inv!45196 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610)))) tp!903215))))

(declare-fun result!192098 () Bool)

(declare-fun inv!45197 (BalanceConc!20260) Bool)

(assert (=> tb!154157 (= result!192098 (and (inv!45197 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610))) e!1790072))))

(assert (= tb!154157 b!2828130))

(declare-fun m!3257623 () Bool)

(assert (=> b!2828130 m!3257623))

(declare-fun m!3257625 () Bool)

(assert (=> tb!154157 m!3257625))

(assert (=> d!820701 t!231170))

(declare-fun b_and!206779 () Bool)

(assert (= b_and!206773 (and (=> t!231170 result!192098) b_and!206779)))

(declare-fun m!3257627 () Bool)

(assert (=> d!820701 m!3257627))

(declare-fun m!3257629 () Bool)

(assert (=> d!820701 m!3257629))

(assert (=> b!2827981 d!820701))

(declare-fun d!820703 () Bool)

(assert (=> d!820703 (= (head!6232 lt!1008611) (h!38659 lt!1008611))))

(assert (=> b!2827991 d!820703))

(declare-fun d!820705 () Bool)

(assert (=> d!820705 (= (tail!4457 (drop!1781 lt!1008618 from!827)) (drop!1781 lt!1008618 (+ from!827 1)))))

(declare-fun lt!1008706 () Unit!47289)

(declare-fun choose!16708 (List!33363 Int) Unit!47289)

(assert (=> d!820705 (= lt!1008706 (choose!16708 lt!1008618 from!827))))

(declare-fun e!1790075 () Bool)

(assert (=> d!820705 e!1790075))

(declare-fun res!1177426 () Bool)

(assert (=> d!820705 (=> (not res!1177426) (not e!1790075))))

(assert (=> d!820705 (= res!1177426 (>= from!827 0))))

(assert (=> d!820705 (= (lemmaDropTail!867 lt!1008618 from!827) lt!1008706)))

(declare-fun b!2828133 () Bool)

(declare-fun size!25875 (List!33363) Int)

(assert (=> b!2828133 (= e!1790075 (< from!827 (size!25875 lt!1008618)))))

(assert (= (and d!820705 res!1177426) b!2828133))

(assert (=> d!820705 m!3257377))

(assert (=> d!820705 m!3257377))

(declare-fun m!3257631 () Bool)

(assert (=> d!820705 m!3257631))

(declare-fun m!3257633 () Bool)

(assert (=> d!820705 m!3257633))

(declare-fun m!3257635 () Bool)

(assert (=> d!820705 m!3257635))

(declare-fun m!3257637 () Bool)

(assert (=> b!2828133 m!3257637))

(assert (=> b!2827991 d!820705))

(declare-fun d!820707 () Bool)

(declare-fun lt!1008709 () Token!9358)

(assert (=> d!820707 (contains!6061 lt!1008618 lt!1008709)))

(declare-fun e!1790081 () Token!9358)

(assert (=> d!820707 (= lt!1008709 e!1790081)))

(declare-fun c!457575 () Bool)

(assert (=> d!820707 (= c!457575 (= from!827 0))))

(declare-fun e!1790080 () Bool)

(assert (=> d!820707 e!1790080))

(declare-fun res!1177429 () Bool)

(assert (=> d!820707 (=> (not res!1177429) (not e!1790080))))

(assert (=> d!820707 (= res!1177429 (<= 0 from!827))))

(assert (=> d!820707 (= (apply!7754 lt!1008618 from!827) lt!1008709)))

(declare-fun b!2828140 () Bool)

(assert (=> b!2828140 (= e!1790080 (< from!827 (size!25875 lt!1008618)))))

(declare-fun b!2828141 () Bool)

(assert (=> b!2828141 (= e!1790081 (head!6232 lt!1008618))))

(declare-fun b!2828142 () Bool)

(assert (=> b!2828142 (= e!1790081 (apply!7754 (tail!4457 lt!1008618) (- from!827 1)))))

(assert (= (and d!820707 res!1177429) b!2828140))

(assert (= (and d!820707 c!457575) b!2828141))

(assert (= (and d!820707 (not c!457575)) b!2828142))

(declare-fun m!3257639 () Bool)

(assert (=> d!820707 m!3257639))

(assert (=> b!2828140 m!3257637))

(declare-fun m!3257641 () Bool)

(assert (=> b!2828141 m!3257641))

(declare-fun m!3257643 () Bool)

(assert (=> b!2828142 m!3257643))

(assert (=> b!2828142 m!3257643))

(declare-fun m!3257645 () Bool)

(assert (=> b!2828142 m!3257645))

(assert (=> b!2827991 d!820707))

(declare-fun d!820709 () Bool)

(assert (=> d!820709 (= (tail!4457 (drop!1781 lt!1008618 (+ 1 from!827))) (drop!1781 lt!1008618 (+ 1 from!827 1)))))

(declare-fun lt!1008710 () Unit!47289)

(assert (=> d!820709 (= lt!1008710 (choose!16708 lt!1008618 (+ 1 from!827)))))

(declare-fun e!1790082 () Bool)

(assert (=> d!820709 e!1790082))

(declare-fun res!1177430 () Bool)

(assert (=> d!820709 (=> (not res!1177430) (not e!1790082))))

(assert (=> d!820709 (= res!1177430 (>= (+ 1 from!827) 0))))

(assert (=> d!820709 (= (lemmaDropTail!867 lt!1008618 (+ 1 from!827)) lt!1008710)))

(declare-fun b!2828143 () Bool)

(assert (=> b!2828143 (= e!1790082 (< (+ 1 from!827) (size!25875 lt!1008618)))))

(assert (= (and d!820709 res!1177430) b!2828143))

(assert (=> d!820709 m!3257385))

(assert (=> d!820709 m!3257385))

(declare-fun m!3257647 () Bool)

(assert (=> d!820709 m!3257647))

(declare-fun m!3257649 () Bool)

(assert (=> d!820709 m!3257649))

(declare-fun m!3257651 () Bool)

(assert (=> d!820709 m!3257651))

(assert (=> b!2828143 m!3257637))

(assert (=> b!2827991 d!820709))

(declare-fun b!2828162 () Bool)

(declare-fun e!1790096 () Int)

(declare-fun call!183254 () Int)

(assert (=> b!2828162 (= e!1790096 call!183254)))

(declare-fun b!2828163 () Bool)

(declare-fun e!1790095 () Bool)

(declare-fun lt!1008713 () List!33363)

(assert (=> b!2828163 (= e!1790095 (= (size!25875 lt!1008713) e!1790096))))

(declare-fun c!457587 () Bool)

(assert (=> b!2828163 (= c!457587 (<= (+ 1 from!827) 0))))

(declare-fun b!2828164 () Bool)

(declare-fun e!1790094 () Int)

(assert (=> b!2828164 (= e!1790094 (- call!183254 (+ 1 from!827)))))

(declare-fun b!2828165 () Bool)

(declare-fun e!1790097 () List!33363)

(assert (=> b!2828165 (= e!1790097 (drop!1781 (t!231162 lt!1008618) (- (+ 1 from!827) 1)))))

(declare-fun d!820711 () Bool)

(assert (=> d!820711 e!1790095))

(declare-fun res!1177433 () Bool)

(assert (=> d!820711 (=> (not res!1177433) (not e!1790095))))

(declare-fun content!4631 (List!33363) (Set Token!9358))

(assert (=> d!820711 (= res!1177433 (set.subset (content!4631 lt!1008713) (content!4631 lt!1008618)))))

(declare-fun e!1790093 () List!33363)

(assert (=> d!820711 (= lt!1008713 e!1790093)))

(declare-fun c!457585 () Bool)

(assert (=> d!820711 (= c!457585 (is-Nil!33239 lt!1008618))))

(assert (=> d!820711 (= (drop!1781 lt!1008618 (+ 1 from!827)) lt!1008713)))

(declare-fun b!2828166 () Bool)

(assert (=> b!2828166 (= e!1790097 lt!1008618)))

(declare-fun b!2828167 () Bool)

(assert (=> b!2828167 (= e!1790093 Nil!33239)))

(declare-fun b!2828168 () Bool)

(assert (=> b!2828168 (= e!1790096 e!1790094)))

(declare-fun c!457586 () Bool)

(assert (=> b!2828168 (= c!457586 (>= (+ 1 from!827) call!183254))))

(declare-fun b!2828169 () Bool)

(assert (=> b!2828169 (= e!1790094 0)))

(declare-fun b!2828170 () Bool)

(assert (=> b!2828170 (= e!1790093 e!1790097)))

(declare-fun c!457584 () Bool)

(assert (=> b!2828170 (= c!457584 (<= (+ 1 from!827) 0))))

(declare-fun bm!183249 () Bool)

(assert (=> bm!183249 (= call!183254 (size!25875 lt!1008618))))

(assert (= (and d!820711 c!457585) b!2828167))

(assert (= (and d!820711 (not c!457585)) b!2828170))

(assert (= (and b!2828170 c!457584) b!2828166))

(assert (= (and b!2828170 (not c!457584)) b!2828165))

(assert (= (and d!820711 res!1177433) b!2828163))

(assert (= (and b!2828163 c!457587) b!2828162))

(assert (= (and b!2828163 (not c!457587)) b!2828168))

(assert (= (and b!2828168 c!457586) b!2828169))

(assert (= (and b!2828168 (not c!457586)) b!2828164))

(assert (= (or b!2828162 b!2828168 b!2828164) bm!183249))

(declare-fun m!3257653 () Bool)

(assert (=> b!2828163 m!3257653))

(declare-fun m!3257655 () Bool)

(assert (=> b!2828165 m!3257655))

(declare-fun m!3257657 () Bool)

(assert (=> d!820711 m!3257657))

(declare-fun m!3257659 () Bool)

(assert (=> d!820711 m!3257659))

(assert (=> bm!183249 m!3257637))

(assert (=> b!2827991 d!820711))

(declare-fun d!820713 () Bool)

(declare-fun lt!1008716 () Bool)

(assert (=> d!820713 (= lt!1008716 (contains!6061 (list!12445 v!6247) lt!1008614))))

(declare-fun contains!6065 (Conc!10312 Token!9358) Bool)

(assert (=> d!820713 (= lt!1008716 (contains!6065 (c!457542 v!6247) lt!1008614))))

(assert (=> d!820713 (= (contains!6062 v!6247 lt!1008614) lt!1008716)))

(declare-fun bs!518126 () Bool)

(assert (= bs!518126 d!820713))

(assert (=> bs!518126 m!3257371))

(assert (=> bs!518126 m!3257371))

(declare-fun m!3257661 () Bool)

(assert (=> bs!518126 m!3257661))

(declare-fun m!3257663 () Bool)

(assert (=> bs!518126 m!3257663))

(assert (=> b!2827991 d!820713))

(declare-fun b!2828171 () Bool)

(declare-fun e!1790101 () Int)

(declare-fun call!183255 () Int)

(assert (=> b!2828171 (= e!1790101 call!183255)))

(declare-fun b!2828172 () Bool)

(declare-fun e!1790100 () Bool)

(declare-fun lt!1008717 () List!33363)

(assert (=> b!2828172 (= e!1790100 (= (size!25875 lt!1008717) e!1790101))))

(declare-fun c!457591 () Bool)

(assert (=> b!2828172 (= c!457591 (<= (+ 2 from!827) 0))))

(declare-fun b!2828173 () Bool)

(declare-fun e!1790099 () Int)

(assert (=> b!2828173 (= e!1790099 (- call!183255 (+ 2 from!827)))))

(declare-fun b!2828174 () Bool)

(declare-fun e!1790102 () List!33363)

(assert (=> b!2828174 (= e!1790102 (drop!1781 (t!231162 lt!1008618) (- (+ 2 from!827) 1)))))

(declare-fun d!820715 () Bool)

(assert (=> d!820715 e!1790100))

(declare-fun res!1177434 () Bool)

(assert (=> d!820715 (=> (not res!1177434) (not e!1790100))))

(assert (=> d!820715 (= res!1177434 (set.subset (content!4631 lt!1008717) (content!4631 lt!1008618)))))

(declare-fun e!1790098 () List!33363)

(assert (=> d!820715 (= lt!1008717 e!1790098)))

(declare-fun c!457589 () Bool)

(assert (=> d!820715 (= c!457589 (is-Nil!33239 lt!1008618))))

(assert (=> d!820715 (= (drop!1781 lt!1008618 (+ 2 from!827)) lt!1008717)))

(declare-fun b!2828175 () Bool)

(assert (=> b!2828175 (= e!1790102 lt!1008618)))

(declare-fun b!2828176 () Bool)

(assert (=> b!2828176 (= e!1790098 Nil!33239)))

(declare-fun b!2828177 () Bool)

(assert (=> b!2828177 (= e!1790101 e!1790099)))

(declare-fun c!457590 () Bool)

(assert (=> b!2828177 (= c!457590 (>= (+ 2 from!827) call!183255))))

(declare-fun b!2828178 () Bool)

(assert (=> b!2828178 (= e!1790099 0)))

(declare-fun b!2828179 () Bool)

(assert (=> b!2828179 (= e!1790098 e!1790102)))

(declare-fun c!457588 () Bool)

(assert (=> b!2828179 (= c!457588 (<= (+ 2 from!827) 0))))

(declare-fun bm!183250 () Bool)

(assert (=> bm!183250 (= call!183255 (size!25875 lt!1008618))))

(assert (= (and d!820715 c!457589) b!2828176))

(assert (= (and d!820715 (not c!457589)) b!2828179))

(assert (= (and b!2828179 c!457588) b!2828175))

(assert (= (and b!2828179 (not c!457588)) b!2828174))

(assert (= (and d!820715 res!1177434) b!2828172))

(assert (= (and b!2828172 c!457591) b!2828171))

(assert (= (and b!2828172 (not c!457591)) b!2828177))

(assert (= (and b!2828177 c!457590) b!2828178))

(assert (= (and b!2828177 (not c!457590)) b!2828173))

(assert (= (or b!2828171 b!2828177 b!2828173) bm!183250))

(declare-fun m!3257665 () Bool)

(assert (=> b!2828172 m!3257665))

(declare-fun m!3257667 () Bool)

(assert (=> b!2828174 m!3257667))

(declare-fun m!3257669 () Bool)

(assert (=> d!820715 m!3257669))

(assert (=> d!820715 m!3257659))

(assert (=> bm!183250 m!3257637))

(assert (=> b!2827991 d!820715))

(declare-fun d!820717 () Bool)

(assert (=> d!820717 (= (tail!4457 lt!1008611) (t!231162 lt!1008611))))

(assert (=> b!2827991 d!820717))

(declare-fun d!820719 () Bool)

(declare-fun lt!1008720 () Token!9358)

(assert (=> d!820719 (= lt!1008720 (apply!7754 (list!12445 v!6247) from!827))))

(declare-fun apply!7757 (Conc!10312 Int) Token!9358)

(assert (=> d!820719 (= lt!1008720 (apply!7757 (c!457542 v!6247) from!827))))

(declare-fun e!1790105 () Bool)

(assert (=> d!820719 e!1790105))

(declare-fun res!1177437 () Bool)

(assert (=> d!820719 (=> (not res!1177437) (not e!1790105))))

(assert (=> d!820719 (= res!1177437 (<= 0 from!827))))

(assert (=> d!820719 (= (apply!7753 v!6247 from!827) lt!1008720)))

(declare-fun b!2828182 () Bool)

(assert (=> b!2828182 (= e!1790105 (< from!827 (size!25869 v!6247)))))

(assert (= (and d!820719 res!1177437) b!2828182))

(assert (=> d!820719 m!3257371))

(assert (=> d!820719 m!3257371))

(declare-fun m!3257671 () Bool)

(assert (=> d!820719 m!3257671))

(declare-fun m!3257673 () Bool)

(assert (=> d!820719 m!3257673))

(assert (=> b!2828182 m!3257421))

(assert (=> b!2827991 d!820719))

(declare-fun b!2828183 () Bool)

(declare-fun e!1790109 () Int)

(declare-fun call!183256 () Int)

(assert (=> b!2828183 (= e!1790109 call!183256)))

(declare-fun b!2828184 () Bool)

(declare-fun e!1790108 () Bool)

(declare-fun lt!1008721 () List!33363)

(assert (=> b!2828184 (= e!1790108 (= (size!25875 lt!1008721) e!1790109))))

(declare-fun c!457595 () Bool)

(assert (=> b!2828184 (= c!457595 (<= from!827 0))))

(declare-fun b!2828185 () Bool)

(declare-fun e!1790107 () Int)

(assert (=> b!2828185 (= e!1790107 (- call!183256 from!827))))

(declare-fun b!2828186 () Bool)

(declare-fun e!1790110 () List!33363)

(assert (=> b!2828186 (= e!1790110 (drop!1781 (t!231162 lt!1008618) (- from!827 1)))))

(declare-fun d!820721 () Bool)

(assert (=> d!820721 e!1790108))

(declare-fun res!1177438 () Bool)

(assert (=> d!820721 (=> (not res!1177438) (not e!1790108))))

(assert (=> d!820721 (= res!1177438 (set.subset (content!4631 lt!1008721) (content!4631 lt!1008618)))))

(declare-fun e!1790106 () List!33363)

(assert (=> d!820721 (= lt!1008721 e!1790106)))

(declare-fun c!457593 () Bool)

(assert (=> d!820721 (= c!457593 (is-Nil!33239 lt!1008618))))

(assert (=> d!820721 (= (drop!1781 lt!1008618 from!827) lt!1008721)))

(declare-fun b!2828187 () Bool)

(assert (=> b!2828187 (= e!1790110 lt!1008618)))

(declare-fun b!2828188 () Bool)

(assert (=> b!2828188 (= e!1790106 Nil!33239)))

(declare-fun b!2828189 () Bool)

(assert (=> b!2828189 (= e!1790109 e!1790107)))

(declare-fun c!457594 () Bool)

(assert (=> b!2828189 (= c!457594 (>= from!827 call!183256))))

(declare-fun b!2828190 () Bool)

(assert (=> b!2828190 (= e!1790107 0)))

(declare-fun b!2828191 () Bool)

(assert (=> b!2828191 (= e!1790106 e!1790110)))

(declare-fun c!457592 () Bool)

(assert (=> b!2828191 (= c!457592 (<= from!827 0))))

(declare-fun bm!183251 () Bool)

(assert (=> bm!183251 (= call!183256 (size!25875 lt!1008618))))

(assert (= (and d!820721 c!457593) b!2828188))

(assert (= (and d!820721 (not c!457593)) b!2828191))

(assert (= (and b!2828191 c!457592) b!2828187))

(assert (= (and b!2828191 (not c!457592)) b!2828186))

(assert (= (and d!820721 res!1177438) b!2828184))

(assert (= (and b!2828184 c!457595) b!2828183))

(assert (= (and b!2828184 (not c!457595)) b!2828189))

(assert (= (and b!2828189 c!457594) b!2828190))

(assert (= (and b!2828189 (not c!457594)) b!2828185))

(assert (= (or b!2828183 b!2828189 b!2828185) bm!183251))

(declare-fun m!3257675 () Bool)

(assert (=> b!2828184 m!3257675))

(declare-fun m!3257677 () Bool)

(assert (=> b!2828186 m!3257677))

(declare-fun m!3257679 () Bool)

(assert (=> d!820721 m!3257679))

(assert (=> d!820721 m!3257659))

(assert (=> bm!183251 m!3257637))

(assert (=> b!2827991 d!820721))

(declare-fun d!820723 () Bool)

(assert (=> d!820723 (= (head!6232 (drop!1781 lt!1008618 from!827)) (apply!7754 lt!1008618 from!827))))

(declare-fun lt!1008724 () Unit!47289)

(declare-fun choose!16709 (List!33363 Int) Unit!47289)

(assert (=> d!820723 (= lt!1008724 (choose!16709 lt!1008618 from!827))))

(declare-fun e!1790113 () Bool)

(assert (=> d!820723 e!1790113))

(declare-fun res!1177441 () Bool)

(assert (=> d!820723 (=> (not res!1177441) (not e!1790113))))

(assert (=> d!820723 (= res!1177441 (>= from!827 0))))

(assert (=> d!820723 (= (lemmaDropApply!979 lt!1008618 from!827) lt!1008724)))

(declare-fun b!2828194 () Bool)

(assert (=> b!2828194 (= e!1790113 (< from!827 (size!25875 lt!1008618)))))

(assert (= (and d!820723 res!1177441) b!2828194))

(assert (=> d!820723 m!3257377))

(assert (=> d!820723 m!3257377))

(declare-fun m!3257681 () Bool)

(assert (=> d!820723 m!3257681))

(assert (=> d!820723 m!3257367))

(declare-fun m!3257683 () Bool)

(assert (=> d!820723 m!3257683))

(assert (=> b!2828194 m!3257637))

(assert (=> b!2827991 d!820723))

(declare-fun d!820725 () Bool)

(assert (=> d!820725 (= (tail!4457 lt!1008612) (t!231162 lt!1008612))))

(assert (=> b!2827991 d!820725))

(declare-fun d!820727 () Bool)

(declare-fun list!12448 (Conc!10312) List!33363)

(assert (=> d!820727 (= (list!12445 v!6247) (list!12448 (c!457542 v!6247)))))

(declare-fun bs!518127 () Bool)

(assert (= bs!518127 d!820727))

(declare-fun m!3257685 () Bool)

(assert (=> bs!518127 m!3257685))

(assert (=> b!2827991 d!820727))

(declare-fun d!820729 () Bool)

(assert (=> d!820729 (= (head!6232 lt!1008612) (h!38659 lt!1008612))))

(assert (=> b!2827991 d!820729))

(declare-fun d!820731 () Bool)

(assert (=> d!820731 (= (head!6232 (drop!1781 lt!1008618 (+ 1 from!827))) (apply!7754 lt!1008618 (+ 1 from!827)))))

(declare-fun lt!1008725 () Unit!47289)

(assert (=> d!820731 (= lt!1008725 (choose!16709 lt!1008618 (+ 1 from!827)))))

(declare-fun e!1790114 () Bool)

(assert (=> d!820731 e!1790114))

(declare-fun res!1177442 () Bool)

(assert (=> d!820731 (=> (not res!1177442) (not e!1790114))))

(assert (=> d!820731 (= res!1177442 (>= (+ 1 from!827) 0))))

(assert (=> d!820731 (= (lemmaDropApply!979 lt!1008618 (+ 1 from!827)) lt!1008725)))

(declare-fun b!2828195 () Bool)

(assert (=> b!2828195 (= e!1790114 (< (+ 1 from!827) (size!25875 lt!1008618)))))

(assert (= (and d!820731 res!1177442) b!2828195))

(assert (=> d!820731 m!3257385))

(assert (=> d!820731 m!3257385))

(declare-fun m!3257687 () Bool)

(assert (=> d!820731 m!3257687))

(assert (=> d!820731 m!3257381))

(declare-fun m!3257689 () Bool)

(assert (=> d!820731 m!3257689))

(assert (=> b!2828195 m!3257637))

(assert (=> b!2827991 d!820731))

(declare-fun d!820733 () Bool)

(declare-fun lt!1008726 () Token!9358)

(assert (=> d!820733 (contains!6061 lt!1008618 lt!1008726)))

(declare-fun e!1790116 () Token!9358)

(assert (=> d!820733 (= lt!1008726 e!1790116)))

(declare-fun c!457596 () Bool)

(assert (=> d!820733 (= c!457596 (= (+ 1 from!827) 0))))

(declare-fun e!1790115 () Bool)

(assert (=> d!820733 e!1790115))

(declare-fun res!1177443 () Bool)

(assert (=> d!820733 (=> (not res!1177443) (not e!1790115))))

(assert (=> d!820733 (= res!1177443 (<= 0 (+ 1 from!827)))))

(assert (=> d!820733 (= (apply!7754 lt!1008618 (+ 1 from!827)) lt!1008726)))

(declare-fun b!2828196 () Bool)

(assert (=> b!2828196 (= e!1790115 (< (+ 1 from!827) (size!25875 lt!1008618)))))

(declare-fun b!2828197 () Bool)

(assert (=> b!2828197 (= e!1790116 (head!6232 lt!1008618))))

(declare-fun b!2828198 () Bool)

(assert (=> b!2828198 (= e!1790116 (apply!7754 (tail!4457 lt!1008618) (- (+ 1 from!827) 1)))))

(assert (= (and d!820733 res!1177443) b!2828196))

(assert (= (and d!820733 c!457596) b!2828197))

(assert (= (and d!820733 (not c!457596)) b!2828198))

(declare-fun m!3257691 () Bool)

(assert (=> d!820733 m!3257691))

(assert (=> b!2828196 m!3257637))

(assert (=> b!2828197 m!3257641))

(assert (=> b!2828198 m!3257643))

(assert (=> b!2828198 m!3257643))

(declare-fun m!3257693 () Bool)

(assert (=> b!2828198 m!3257693))

(assert (=> b!2827991 d!820733))

(declare-fun b!2828229 () Bool)

(declare-fun e!1790139 () Bool)

(assert (=> b!2828229 (= e!1790139 true)))

(declare-fun b!2828228 () Bool)

(declare-fun e!1790138 () Bool)

(assert (=> b!2828228 (= e!1790138 e!1790139)))

(declare-fun b!2828227 () Bool)

(declare-fun e!1790137 () Bool)

(assert (=> b!2828227 (= e!1790137 e!1790138)))

(declare-fun d!820735 () Bool)

(assert (=> d!820735 e!1790137))

(assert (= b!2828228 b!2828229))

(assert (= b!2828227 b!2828228))

(assert (= (and d!820735 (is-Cons!33238 rules!1102)) b!2828227))

(declare-fun lambda!103862 () Int)

(declare-fun order!17721 () Int)

(declare-fun order!17723 () Int)

(declare-fun dynLambda!13979 (Int Int) Int)

(declare-fun dynLambda!13980 (Int Int) Int)

(assert (=> b!2828229 (< (dynLambda!13979 order!17721 (toValue!7000 (transformation!4978 (h!38658 rules!1102)))) (dynLambda!13980 order!17723 lambda!103862))))

(declare-fun order!17725 () Int)

(declare-fun dynLambda!13981 (Int Int) Int)

(assert (=> b!2828229 (< (dynLambda!13981 order!17725 (toChars!6859 (transformation!4978 (h!38658 rules!1102)))) (dynLambda!13980 order!17723 lambda!103862))))

(assert (=> d!820735 true))

(declare-fun e!1790130 () Bool)

(assert (=> d!820735 e!1790130))

(declare-fun res!1177458 () Bool)

(assert (=> d!820735 (=> (not res!1177458) (not e!1790130))))

(declare-fun lt!1008752 () Bool)

(declare-fun forall!6836 (List!33363 Int) Bool)

(assert (=> d!820735 (= res!1177458 (= lt!1008752 (forall!6836 (list!12445 v!6247) lambda!103862)))))

(declare-fun forall!6837 (BalanceConc!20262 Int) Bool)

(assert (=> d!820735 (= lt!1008752 (forall!6837 v!6247 lambda!103862))))

(assert (=> d!820735 (not (isEmpty!18368 rules!1102))))

(assert (=> d!820735 (= (rulesProduceEachTokenIndividually!1089 thiss!11212 rules!1102 v!6247) lt!1008752)))

(declare-fun b!2828218 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1621 (LexerInterface!4569 List!33362 List!33363) Bool)

(assert (=> b!2828218 (= e!1790130 (= lt!1008752 (rulesProduceEachTokenIndividuallyList!1621 thiss!11212 rules!1102 (list!12445 v!6247))))))

(assert (= (and d!820735 res!1177458) b!2828218))

(assert (=> d!820735 m!3257371))

(assert (=> d!820735 m!3257371))

(declare-fun m!3257753 () Bool)

(assert (=> d!820735 m!3257753))

(declare-fun m!3257755 () Bool)

(assert (=> d!820735 m!3257755))

(assert (=> d!820735 m!3257355))

(assert (=> b!2828218 m!3257371))

(assert (=> b!2828218 m!3257371))

(declare-fun m!3257757 () Bool)

(assert (=> b!2828218 m!3257757))

(assert (=> b!2827980 d!820735))

(declare-fun d!820751 () Bool)

(declare-fun c!457599 () Bool)

(assert (=> d!820751 (= c!457599 (is-Node!10312 (c!457542 v!6247)))))

(declare-fun e!1790144 () Bool)

(assert (=> d!820751 (= (inv!45190 (c!457542 v!6247)) e!1790144)))

(declare-fun b!2828238 () Bool)

(declare-fun inv!45198 (Conc!10312) Bool)

(assert (=> b!2828238 (= e!1790144 (inv!45198 (c!457542 v!6247)))))

(declare-fun b!2828239 () Bool)

(declare-fun e!1790145 () Bool)

(assert (=> b!2828239 (= e!1790144 e!1790145)))

(declare-fun res!1177461 () Bool)

(assert (=> b!2828239 (= res!1177461 (not (is-Leaf!15709 (c!457542 v!6247))))))

(assert (=> b!2828239 (=> res!1177461 e!1790145)))

(declare-fun b!2828240 () Bool)

(declare-fun inv!45199 (Conc!10312) Bool)

(assert (=> b!2828240 (= e!1790145 (inv!45199 (c!457542 v!6247)))))

(assert (= (and d!820751 c!457599) b!2828238))

(assert (= (and d!820751 (not c!457599)) b!2828239))

(assert (= (and b!2828239 (not res!1177461)) b!2828240))

(declare-fun m!3257759 () Bool)

(assert (=> b!2828238 m!3257759))

(declare-fun m!3257761 () Bool)

(assert (=> b!2828240 m!3257761))

(assert (=> b!2827984 d!820751))

(declare-fun d!820753 () Bool)

(declare-fun lt!1008755 () Bool)

(assert (=> d!820753 (= lt!1008755 (set.member lt!1008614 (content!4631 lt!1008618)))))

(declare-fun e!1790151 () Bool)

(assert (=> d!820753 (= lt!1008755 e!1790151)))

(declare-fun res!1177467 () Bool)

(assert (=> d!820753 (=> (not res!1177467) (not e!1790151))))

(assert (=> d!820753 (= res!1177467 (is-Cons!33239 lt!1008618))))

(assert (=> d!820753 (= (contains!6061 lt!1008618 lt!1008614) lt!1008755)))

(declare-fun b!2828245 () Bool)

(declare-fun e!1790150 () Bool)

(assert (=> b!2828245 (= e!1790151 e!1790150)))

(declare-fun res!1177466 () Bool)

(assert (=> b!2828245 (=> res!1177466 e!1790150)))

(assert (=> b!2828245 (= res!1177466 (= (h!38659 lt!1008618) lt!1008614))))

(declare-fun b!2828246 () Bool)

(assert (=> b!2828246 (= e!1790150 (contains!6061 (t!231162 lt!1008618) lt!1008614))))

(assert (= (and d!820753 res!1177467) b!2828245))

(assert (= (and b!2828245 (not res!1177466)) b!2828246))

(assert (=> d!820753 m!3257659))

(declare-fun m!3257763 () Bool)

(assert (=> d!820753 m!3257763))

(declare-fun m!3257765 () Bool)

(assert (=> b!2828246 m!3257765))

(assert (=> b!2827982 d!820753))

(declare-fun d!820755 () Bool)

(assert (=> d!820755 (= (isEmpty!18368 rules!1102) (is-Nil!33238 rules!1102))))

(assert (=> b!2827983 d!820755))

(declare-fun d!820757 () Bool)

(declare-fun res!1177470 () Bool)

(declare-fun e!1790154 () Bool)

(assert (=> d!820757 (=> (not res!1177470) (not e!1790154))))

(declare-fun rulesValid!1841 (LexerInterface!4569 List!33362) Bool)

(assert (=> d!820757 (= res!1177470 (rulesValid!1841 thiss!11212 rules!1102))))

(assert (=> d!820757 (= (rulesInvariant!3987 thiss!11212 rules!1102) e!1790154)))

(declare-fun b!2828249 () Bool)

(declare-datatypes ((List!33368 0))(
  ( (Nil!33244) (Cons!33244 (h!38664 String!36561) (t!231183 List!33368)) )
))
(declare-fun noDuplicateTag!1837 (LexerInterface!4569 List!33362 List!33368) Bool)

(assert (=> b!2828249 (= e!1790154 (noDuplicateTag!1837 thiss!11212 rules!1102 Nil!33244))))

(assert (= (and d!820757 res!1177470) b!2828249))

(declare-fun m!3257767 () Bool)

(assert (=> d!820757 m!3257767))

(declare-fun m!3257769 () Bool)

(assert (=> b!2828249 m!3257769))

(assert (=> b!2827986 d!820757))

(declare-fun d!820759 () Bool)

(assert (=> d!820759 (= (inv!45187 (tag!5482 (h!38658 rules!1102))) (= (mod (str.len (value!160216 (tag!5482 (h!38658 rules!1102)))) 2) 0))))

(assert (=> b!2827987 d!820759))

(declare-fun d!820761 () Bool)

(declare-fun res!1177473 () Bool)

(declare-fun e!1790157 () Bool)

(assert (=> d!820761 (=> (not res!1177473) (not e!1790157))))

(declare-fun semiInverseModEq!2071 (Int Int) Bool)

(assert (=> d!820761 (= res!1177473 (semiInverseModEq!2071 (toChars!6859 (transformation!4978 (h!38658 rules!1102))) (toValue!7000 (transformation!4978 (h!38658 rules!1102)))))))

(assert (=> d!820761 (= (inv!45191 (transformation!4978 (h!38658 rules!1102))) e!1790157)))

(declare-fun b!2828252 () Bool)

(declare-fun equivClasses!1970 (Int Int) Bool)

(assert (=> b!2828252 (= e!1790157 (equivClasses!1970 (toChars!6859 (transformation!4978 (h!38658 rules!1102))) (toValue!7000 (transformation!4978 (h!38658 rules!1102)))))))

(assert (= (and d!820761 res!1177473) b!2828252))

(declare-fun m!3257771 () Bool)

(assert (=> d!820761 m!3257771))

(declare-fun m!3257773 () Bool)

(assert (=> b!2828252 m!3257773))

(assert (=> b!2827987 d!820761))

(declare-fun d!820763 () Bool)

(declare-fun lt!1008758 () Int)

(assert (=> d!820763 (= lt!1008758 (size!25875 (list!12445 v!6247)))))

(declare-fun size!25876 (Conc!10312) Int)

(assert (=> d!820763 (= lt!1008758 (size!25876 (c!457542 v!6247)))))

(assert (=> d!820763 (= (size!25869 v!6247) lt!1008758)))

(declare-fun bs!518132 () Bool)

(assert (= bs!518132 d!820763))

(assert (=> bs!518132 m!3257371))

(assert (=> bs!518132 m!3257371))

(declare-fun m!3257775 () Bool)

(assert (=> bs!518132 m!3257775))

(declare-fun m!3257777 () Bool)

(assert (=> bs!518132 m!3257777))

(assert (=> b!2827985 d!820763))

(declare-fun d!820765 () Bool)

(declare-fun lt!1008759 () Bool)

(assert (=> d!820765 (= lt!1008759 (set.member lt!1008610 (content!4631 lt!1008618)))))

(declare-fun e!1790159 () Bool)

(assert (=> d!820765 (= lt!1008759 e!1790159)))

(declare-fun res!1177475 () Bool)

(assert (=> d!820765 (=> (not res!1177475) (not e!1790159))))

(assert (=> d!820765 (= res!1177475 (is-Cons!33239 lt!1008618))))

(assert (=> d!820765 (= (contains!6061 lt!1008618 lt!1008610) lt!1008759)))

(declare-fun b!2828253 () Bool)

(declare-fun e!1790158 () Bool)

(assert (=> b!2828253 (= e!1790159 e!1790158)))

(declare-fun res!1177474 () Bool)

(assert (=> b!2828253 (=> res!1177474 e!1790158)))

(assert (=> b!2828253 (= res!1177474 (= (h!38659 lt!1008618) lt!1008610))))

(declare-fun b!2828254 () Bool)

(assert (=> b!2828254 (= e!1790158 (contains!6061 (t!231162 lt!1008618) lt!1008610))))

(assert (= (and d!820765 res!1177475) b!2828253))

(assert (= (and b!2828253 (not res!1177474)) b!2828254))

(assert (=> d!820765 m!3257659))

(declare-fun m!3257779 () Bool)

(assert (=> d!820765 m!3257779))

(declare-fun m!3257781 () Bool)

(assert (=> b!2828254 m!3257781))

(assert (=> b!2827989 d!820765))

(declare-fun d!820767 () Bool)

(declare-fun isBalanced!3118 (Conc!10312) Bool)

(assert (=> d!820767 (= (inv!45192 v!6247) (isBalanced!3118 (c!457542 v!6247)))))

(declare-fun bs!518133 () Bool)

(assert (= bs!518133 d!820767))

(declare-fun m!3257783 () Bool)

(assert (=> bs!518133 m!3257783))

(assert (=> start!274560 d!820767))

(declare-fun d!820769 () Bool)

(declare-fun lt!1008760 () Bool)

(assert (=> d!820769 (= lt!1008760 (contains!6061 (list!12445 v!6247) lt!1008610))))

(assert (=> d!820769 (= lt!1008760 (contains!6065 (c!457542 v!6247) lt!1008610))))

(assert (=> d!820769 (= (contains!6062 v!6247 lt!1008610) lt!1008760)))

(declare-fun bs!518134 () Bool)

(assert (= bs!518134 d!820769))

(assert (=> bs!518134 m!3257371))

(assert (=> bs!518134 m!3257371))

(declare-fun m!3257785 () Bool)

(assert (=> bs!518134 m!3257785))

(declare-fun m!3257787 () Bool)

(assert (=> bs!518134 m!3257787))

(assert (=> b!2827988 d!820769))

(declare-fun d!820771 () Bool)

(declare-fun lt!1008761 () Token!9358)

(assert (=> d!820771 (= lt!1008761 (apply!7754 (list!12445 v!6247) (+ 1 from!827)))))

(assert (=> d!820771 (= lt!1008761 (apply!7757 (c!457542 v!6247) (+ 1 from!827)))))

(declare-fun e!1790160 () Bool)

(assert (=> d!820771 e!1790160))

(declare-fun res!1177476 () Bool)

(assert (=> d!820771 (=> (not res!1177476) (not e!1790160))))

(assert (=> d!820771 (= res!1177476 (<= 0 (+ 1 from!827)))))

(assert (=> d!820771 (= (apply!7753 v!6247 (+ 1 from!827)) lt!1008761)))

(declare-fun b!2828255 () Bool)

(assert (=> b!2828255 (= e!1790160 (< (+ 1 from!827) (size!25869 v!6247)))))

(assert (= (and d!820771 res!1177476) b!2828255))

(assert (=> d!820771 m!3257371))

(assert (=> d!820771 m!3257371))

(declare-fun m!3257789 () Bool)

(assert (=> d!820771 m!3257789))

(declare-fun m!3257791 () Bool)

(assert (=> d!820771 m!3257791))

(assert (=> b!2828255 m!3257421))

(assert (=> b!2827988 d!820771))

(declare-fun b!2828267 () Bool)

(declare-fun e!1790163 () Bool)

(declare-fun tp!903229 () Bool)

(declare-fun tp!903233 () Bool)

(assert (=> b!2828267 (= e!1790163 (and tp!903229 tp!903233))))

(declare-fun b!2828266 () Bool)

(declare-fun tp_is_empty!14553 () Bool)

(assert (=> b!2828266 (= e!1790163 tp_is_empty!14553)))

(assert (=> b!2827987 (= tp!903194 e!1790163)))

(declare-fun b!2828268 () Bool)

(declare-fun tp!903230 () Bool)

(assert (=> b!2828268 (= e!1790163 tp!903230)))

(declare-fun b!2828269 () Bool)

(declare-fun tp!903232 () Bool)

(declare-fun tp!903231 () Bool)

(assert (=> b!2828269 (= e!1790163 (and tp!903232 tp!903231))))

(assert (= (and b!2827987 (is-ElementMatch!8368 (regex!4978 (h!38658 rules!1102)))) b!2828266))

(assert (= (and b!2827987 (is-Concat!13576 (regex!4978 (h!38658 rules!1102)))) b!2828267))

(assert (= (and b!2827987 (is-Star!8368 (regex!4978 (h!38658 rules!1102)))) b!2828268))

(assert (= (and b!2827987 (is-Union!8368 (regex!4978 (h!38658 rules!1102)))) b!2828269))

(declare-fun tp!903240 () Bool)

(declare-fun e!1790169 () Bool)

(declare-fun b!2828278 () Bool)

(declare-fun tp!903242 () Bool)

(assert (=> b!2828278 (= e!1790169 (and (inv!45190 (left!25108 (c!457542 v!6247))) tp!903240 (inv!45190 (right!25438 (c!457542 v!6247))) tp!903242))))

(declare-fun b!2828280 () Bool)

(declare-fun e!1790168 () Bool)

(declare-fun tp!903241 () Bool)

(assert (=> b!2828280 (= e!1790168 tp!903241)))

(declare-fun b!2828279 () Bool)

(declare-fun inv!45200 (IArray!20629) Bool)

(assert (=> b!2828279 (= e!1790169 (and (inv!45200 (xs!13424 (c!457542 v!6247))) e!1790168))))

(assert (=> b!2827984 (= tp!903197 (and (inv!45190 (c!457542 v!6247)) e!1790169))))

(assert (= (and b!2827984 (is-Node!10312 (c!457542 v!6247))) b!2828278))

(assert (= b!2828279 b!2828280))

(assert (= (and b!2827984 (is-Leaf!15709 (c!457542 v!6247))) b!2828279))

(declare-fun m!3257793 () Bool)

(assert (=> b!2828278 m!3257793))

(declare-fun m!3257795 () Bool)

(assert (=> b!2828278 m!3257795))

(declare-fun m!3257797 () Bool)

(assert (=> b!2828279 m!3257797))

(assert (=> b!2827984 m!3257423))

(declare-fun b!2828291 () Bool)

(declare-fun b_free!81125 () Bool)

(declare-fun b_next!81829 () Bool)

(assert (=> b!2828291 (= b_free!81125 (not b_next!81829))))

(declare-fun tp!903253 () Bool)

(declare-fun b_and!206783 () Bool)

(assert (=> b!2828291 (= tp!903253 b_and!206783)))

(declare-fun b_free!81127 () Bool)

(declare-fun b_next!81831 () Bool)

(assert (=> b!2828291 (= b_free!81127 (not b_next!81831))))

(declare-fun t!231182 () Bool)

(declare-fun tb!154161 () Bool)

(assert (=> (and b!2828291 (= (toChars!6859 (transformation!4978 (h!38658 (t!231161 rules!1102)))) (toChars!6859 (transformation!4978 (rule!7406 lt!1008610)))) t!231182) tb!154161))

(declare-fun result!192112 () Bool)

(assert (= result!192112 result!192098))

(assert (=> d!820701 t!231182))

(declare-fun b_and!206785 () Bool)

(declare-fun tp!903252 () Bool)

(assert (=> b!2828291 (= tp!903252 (and (=> t!231182 result!192112) b_and!206785))))

(declare-fun e!1790180 () Bool)

(assert (=> b!2828291 (= e!1790180 (and tp!903253 tp!903252))))

(declare-fun tp!903251 () Bool)

(declare-fun b!2828290 () Bool)

(declare-fun e!1790178 () Bool)

(assert (=> b!2828290 (= e!1790178 (and tp!903251 (inv!45187 (tag!5482 (h!38658 (t!231161 rules!1102)))) (inv!45191 (transformation!4978 (h!38658 (t!231161 rules!1102)))) e!1790180))))

(declare-fun b!2828289 () Bool)

(declare-fun e!1790181 () Bool)

(declare-fun tp!903254 () Bool)

(assert (=> b!2828289 (= e!1790181 (and e!1790178 tp!903254))))

(assert (=> b!2827993 (= tp!903196 e!1790181)))

(assert (= b!2828290 b!2828291))

(assert (= b!2828289 b!2828290))

(assert (= (and b!2827993 (is-Cons!33238 (t!231161 rules!1102))) b!2828289))

(declare-fun m!3257799 () Bool)

(assert (=> b!2828290 m!3257799))

(declare-fun m!3257801 () Bool)

(assert (=> b!2828290 m!3257801))

(push 1)

(assert (not b!2828125))

(assert (not bm!183249))

(assert (not d!820707))

(assert (not b!2828195))

(assert (not b!2828124))

(assert (not b!2828289))

(assert (not d!820697))

(assert (not b!2828238))

(assert (not b!2828268))

(assert (not b!2828163))

(assert (not d!820765))

(assert (not b!2828254))

(assert (not b_next!81821))

(assert b_and!206771)

(assert (not d!820769))

(assert (not b!2828198))

(assert (not b!2828130))

(assert (not b!2828122))

(assert (not d!820693))

(assert (not d!820665))

(assert (not b!2828186))

(assert (not d!820757))

(assert (not b!2828290))

(assert (not d!820731))

(assert (not b!2828252))

(assert (not b!2828279))

(assert (not d!820723))

(assert b_and!206779)

(assert (not d!820705))

(assert (not b!2828165))

(assert (not b!2827984))

(assert (not b!2828184))

(assert (not d!820767))

(assert (not b!2828174))

(assert (not d!820709))

(assert (not bm!183251))

(assert (not b!2828133))

(assert (not b_lambda!84979))

(assert (not b!2828278))

(assert (not b!2828269))

(assert (not d!820735))

(assert (not b!2828249))

(assert (not b!2828182))

(assert (not d!820699))

(assert (not b_next!81829))

(assert (not d!820727))

(assert (not d!820645))

(assert (not d!820695))

(assert tp_is_empty!14553)

(assert (not d!820711))

(assert (not d!820719))

(assert (not d!820763))

(assert (not b!2828227))

(assert (not b_next!81823))

(assert (not d!820713))

(assert (not d!820715))

(assert (not d!820701))

(assert (not b!2828267))

(assert (not b!2828246))

(assert (not b!2828121))

(assert (not bm!183250))

(assert (not b!2828240))

(assert (not b!2828218))

(assert b_and!206783)

(assert (not b!2828142))

(assert (not d!820771))

(assert (not d!820753))

(assert (not b!2828197))

(assert (not b!2828194))

(assert (not b_next!81831))

(assert (not d!820733))

(assert (not b!2828172))

(assert (not tb!154157))

(assert (not b!2828280))

(assert (not b!2828141))

(assert (not b!2828120))

(assert (not b!2828123))

(assert (not b!2828143))

(assert (not d!820721))

(assert (not d!820761))

(assert (not b!2828196))

(assert (not b!2828255))

(assert (not b!2828140))

(assert b_and!206785)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81821))

(assert b_and!206771)

(assert b_and!206779)

(assert (not b_next!81829))

(assert (not b_next!81823))

(assert b_and!206783)

(assert (not b_next!81831))

(assert b_and!206785)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!820785 () Bool)

(assert (=> d!820785 true))

(declare-fun lambda!103870 () Int)

(declare-fun order!17733 () Int)

(declare-fun dynLambda!13986 (Int Int) Int)

(assert (=> d!820785 (< (dynLambda!13981 order!17725 (toChars!6859 (transformation!4978 (h!38658 rules!1102)))) (dynLambda!13986 order!17733 lambda!103870))))

(assert (=> d!820785 true))

(assert (=> d!820785 (< (dynLambda!13979 order!17721 (toValue!7000 (transformation!4978 (h!38658 rules!1102)))) (dynLambda!13986 order!17733 lambda!103870))))

(declare-fun Forall!1235 (Int) Bool)

(assert (=> d!820785 (= (semiInverseModEq!2071 (toChars!6859 (transformation!4978 (h!38658 rules!1102))) (toValue!7000 (transformation!4978 (h!38658 rules!1102)))) (Forall!1235 lambda!103870))))

(declare-fun bs!518136 () Bool)

(assert (= bs!518136 d!820785))

(declare-fun m!3257839 () Bool)

(assert (=> bs!518136 m!3257839))

(assert (=> d!820761 d!820785))

(declare-fun d!820787 () Bool)

(declare-fun c!457602 () Bool)

(assert (=> d!820787 (= c!457602 (is-Nil!33239 lt!1008721))))

(declare-fun e!1790231 () (Set Token!9358))

(assert (=> d!820787 (= (content!4631 lt!1008721) e!1790231)))

(declare-fun b!2828366 () Bool)

(assert (=> b!2828366 (= e!1790231 (as set.empty (Set Token!9358)))))

(declare-fun b!2828367 () Bool)

(assert (=> b!2828367 (= e!1790231 (set.union (set.insert (h!38659 lt!1008721) (as set.empty (Set Token!9358))) (content!4631 (t!231162 lt!1008721))))))

(assert (= (and d!820787 c!457602) b!2828366))

(assert (= (and d!820787 (not c!457602)) b!2828367))

(declare-fun m!3257841 () Bool)

(assert (=> b!2828367 m!3257841))

(declare-fun m!3257843 () Bool)

(assert (=> b!2828367 m!3257843))

(assert (=> d!820721 d!820787))

(declare-fun d!820789 () Bool)

(declare-fun c!457603 () Bool)

(assert (=> d!820789 (= c!457603 (is-Nil!33239 lt!1008618))))

(declare-fun e!1790232 () (Set Token!9358))

(assert (=> d!820789 (= (content!4631 lt!1008618) e!1790232)))

(declare-fun b!2828368 () Bool)

(assert (=> b!2828368 (= e!1790232 (as set.empty (Set Token!9358)))))

(declare-fun b!2828369 () Bool)

(assert (=> b!2828369 (= e!1790232 (set.union (set.insert (h!38659 lt!1008618) (as set.empty (Set Token!9358))) (content!4631 (t!231162 lt!1008618))))))

(assert (= (and d!820789 c!457603) b!2828368))

(assert (= (and d!820789 (not c!457603)) b!2828369))

(declare-fun m!3257845 () Bool)

(assert (=> b!2828369 m!3257845))

(declare-fun m!3257847 () Bool)

(assert (=> b!2828369 m!3257847))

(assert (=> d!820721 d!820789))

(declare-fun d!820791 () Bool)

(declare-fun lt!1008772 () Int)

(assert (=> d!820791 (>= lt!1008772 0)))

(declare-fun e!1790235 () Int)

(assert (=> d!820791 (= lt!1008772 e!1790235)))

(declare-fun c!457606 () Bool)

(assert (=> d!820791 (= c!457606 (is-Nil!33239 lt!1008618))))

(assert (=> d!820791 (= (size!25875 lt!1008618) lt!1008772)))

(declare-fun b!2828374 () Bool)

(assert (=> b!2828374 (= e!1790235 0)))

(declare-fun b!2828375 () Bool)

(assert (=> b!2828375 (= e!1790235 (+ 1 (size!25875 (t!231162 lt!1008618))))))

(assert (= (and d!820791 c!457606) b!2828374))

(assert (= (and d!820791 (not c!457606)) b!2828375))

(declare-fun m!3257849 () Bool)

(assert (=> b!2828375 m!3257849))

(assert (=> b!2828194 d!820791))

(declare-fun b!2828388 () Bool)

(declare-fun res!1177510 () Bool)

(declare-fun e!1790240 () Bool)

(assert (=> b!2828388 (=> (not res!1177510) (not e!1790240))))

(declare-fun height!1505 (Conc!10312) Int)

(assert (=> b!2828388 (= res!1177510 (<= (- (height!1505 (left!25108 (c!457542 v!6247))) (height!1505 (right!25438 (c!457542 v!6247)))) 1))))

(declare-fun b!2828389 () Bool)

(declare-fun res!1177512 () Bool)

(assert (=> b!2828389 (=> (not res!1177512) (not e!1790240))))

(assert (=> b!2828389 (= res!1177512 (isBalanced!3118 (right!25438 (c!457542 v!6247))))))

(declare-fun b!2828390 () Bool)

(declare-fun res!1177511 () Bool)

(assert (=> b!2828390 (=> (not res!1177511) (not e!1790240))))

(assert (=> b!2828390 (= res!1177511 (isBalanced!3118 (left!25108 (c!457542 v!6247))))))

(declare-fun b!2828391 () Bool)

(declare-fun e!1790241 () Bool)

(assert (=> b!2828391 (= e!1790241 e!1790240)))

(declare-fun res!1177508 () Bool)

(assert (=> b!2828391 (=> (not res!1177508) (not e!1790240))))

(assert (=> b!2828391 (= res!1177508 (<= (- 1) (- (height!1505 (left!25108 (c!457542 v!6247))) (height!1505 (right!25438 (c!457542 v!6247))))))))

(declare-fun b!2828392 () Bool)

(declare-fun res!1177509 () Bool)

(assert (=> b!2828392 (=> (not res!1177509) (not e!1790240))))

(declare-fun isEmpty!18375 (Conc!10312) Bool)

(assert (=> b!2828392 (= res!1177509 (not (isEmpty!18375 (left!25108 (c!457542 v!6247)))))))

(declare-fun d!820793 () Bool)

(declare-fun res!1177513 () Bool)

(assert (=> d!820793 (=> res!1177513 e!1790241)))

(assert (=> d!820793 (= res!1177513 (not (is-Node!10312 (c!457542 v!6247))))))

(assert (=> d!820793 (= (isBalanced!3118 (c!457542 v!6247)) e!1790241)))

(declare-fun b!2828393 () Bool)

(assert (=> b!2828393 (= e!1790240 (not (isEmpty!18375 (right!25438 (c!457542 v!6247)))))))

(assert (= (and d!820793 (not res!1177513)) b!2828391))

(assert (= (and b!2828391 res!1177508) b!2828388))

(assert (= (and b!2828388 res!1177510) b!2828390))

(assert (= (and b!2828390 res!1177511) b!2828389))

(assert (= (and b!2828389 res!1177512) b!2828392))

(assert (= (and b!2828392 res!1177509) b!2828393))

(declare-fun m!3257851 () Bool)

(assert (=> b!2828393 m!3257851))

(declare-fun m!3257853 () Bool)

(assert (=> b!2828388 m!3257853))

(declare-fun m!3257855 () Bool)

(assert (=> b!2828388 m!3257855))

(declare-fun m!3257857 () Bool)

(assert (=> b!2828390 m!3257857))

(assert (=> b!2828391 m!3257853))

(assert (=> b!2828391 m!3257855))

(declare-fun m!3257859 () Bool)

(assert (=> b!2828392 m!3257859))

(declare-fun m!3257861 () Bool)

(assert (=> b!2828389 m!3257861))

(assert (=> d!820767 d!820793))

(declare-fun d!820795 () Bool)

(declare-fun lt!1008775 () BalanceConc!20260)

(declare-fun printList!1223 (LexerInterface!4569 List!33363) List!33361)

(assert (=> d!820795 (= (list!12447 lt!1008775) (printList!1223 thiss!11212 (list!12445 (singletonSeq!2154 lt!1008614))))))

(declare-fun printTailRec!1166 (LexerInterface!4569 BalanceConc!20262 Int BalanceConc!20260) BalanceConc!20260)

(assert (=> d!820795 (= lt!1008775 (printTailRec!1166 thiss!11212 (singletonSeq!2154 lt!1008614) 0 (BalanceConc!20261 Empty!10311)))))

(assert (=> d!820795 (= (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614)) lt!1008775)))

(declare-fun bs!518137 () Bool)

(assert (= bs!518137 d!820795))

(declare-fun m!3257863 () Bool)

(assert (=> bs!518137 m!3257863))

(assert (=> bs!518137 m!3257577))

(assert (=> bs!518137 m!3257579))

(assert (=> bs!518137 m!3257579))

(declare-fun m!3257865 () Bool)

(assert (=> bs!518137 m!3257865))

(assert (=> bs!518137 m!3257577))

(declare-fun m!3257867 () Bool)

(assert (=> bs!518137 m!3257867))

(assert (=> d!820665 d!820795))

(assert (=> d!820665 d!820755))

(declare-fun d!820797 () Bool)

(declare-fun e!1790249 () Bool)

(assert (=> d!820797 e!1790249))

(declare-fun res!1177523 () Bool)

(assert (=> d!820797 (=> (not res!1177523) (not e!1790249))))

(declare-fun e!1790250 () Bool)

(assert (=> d!820797 (= res!1177523 e!1790250)))

(declare-fun c!457610 () Bool)

(declare-fun lt!1008778 () tuple2!33426)

(assert (=> d!820797 (= c!457610 (> (size!25869 (_1!19806 lt!1008778)) 0))))

(declare-fun lexTailRecV2!887 (LexerInterface!4569 List!33362 BalanceConc!20260 BalanceConc!20260 BalanceConc!20260 BalanceConc!20262) tuple2!33426)

(assert (=> d!820797 (= lt!1008778 (lexTailRecV2!887 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614)) (BalanceConc!20261 Empty!10311) (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614)) (BalanceConc!20263 Empty!10312)))))

(assert (=> d!820797 (= (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614))) lt!1008778)))

(declare-fun b!2828404 () Bool)

(assert (=> b!2828404 (= e!1790250 (= (_2!19806 lt!1008778) (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614))))))

(declare-fun b!2828405 () Bool)

(declare-fun e!1790248 () Bool)

(assert (=> b!2828405 (= e!1790250 e!1790248)))

(declare-fun res!1177524 () Bool)

(assert (=> b!2828405 (= res!1177524 (< (size!25868 (_2!19806 lt!1008778)) (size!25868 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614)))))))

(assert (=> b!2828405 (=> (not res!1177524) (not e!1790248))))

(declare-fun b!2828406 () Bool)

(declare-datatypes ((tuple2!33430 0))(
  ( (tuple2!33431 (_1!19808 List!33363) (_2!19808 List!33361)) )
))
(declare-fun lexList!1249 (LexerInterface!4569 List!33362 List!33361) tuple2!33430)

(assert (=> b!2828406 (= e!1790249 (= (list!12447 (_2!19806 lt!1008778)) (_2!19808 (lexList!1249 thiss!11212 rules!1102 (list!12447 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614)))))))))

(declare-fun b!2828407 () Bool)

(declare-fun res!1177525 () Bool)

(assert (=> b!2828407 (=> (not res!1177525) (not e!1790249))))

(assert (=> b!2828407 (= res!1177525 (= (list!12445 (_1!19806 lt!1008778)) (_1!19808 (lexList!1249 thiss!11212 rules!1102 (list!12447 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614)))))))))

(declare-fun b!2828408 () Bool)

(declare-fun isEmpty!18376 (BalanceConc!20262) Bool)

(assert (=> b!2828408 (= e!1790248 (not (isEmpty!18376 (_1!19806 lt!1008778))))))

(assert (= (and d!820797 c!457610) b!2828405))

(assert (= (and d!820797 (not c!457610)) b!2828404))

(assert (= (and b!2828405 res!1177524) b!2828408))

(assert (= (and d!820797 res!1177523) b!2828407))

(assert (= (and b!2828407 res!1177525) b!2828406))

(declare-fun m!3257869 () Bool)

(assert (=> b!2828405 m!3257869))

(assert (=> b!2828405 m!3257581))

(declare-fun m!3257871 () Bool)

(assert (=> b!2828405 m!3257871))

(declare-fun m!3257873 () Bool)

(assert (=> b!2828406 m!3257873))

(assert (=> b!2828406 m!3257581))

(declare-fun m!3257875 () Bool)

(assert (=> b!2828406 m!3257875))

(assert (=> b!2828406 m!3257875))

(declare-fun m!3257877 () Bool)

(assert (=> b!2828406 m!3257877))

(declare-fun m!3257879 () Bool)

(assert (=> b!2828407 m!3257879))

(assert (=> b!2828407 m!3257581))

(assert (=> b!2828407 m!3257875))

(assert (=> b!2828407 m!3257875))

(assert (=> b!2828407 m!3257877))

(declare-fun m!3257881 () Bool)

(assert (=> b!2828408 m!3257881))

(declare-fun m!3257883 () Bool)

(assert (=> d!820797 m!3257883))

(assert (=> d!820797 m!3257581))

(assert (=> d!820797 m!3257581))

(declare-fun m!3257885 () Bool)

(assert (=> d!820797 m!3257885))

(assert (=> d!820665 d!820797))

(declare-fun d!820799 () Bool)

(assert (=> d!820799 (= (list!12445 (_1!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614))))) (list!12448 (c!457542 (_1!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614)))))))))

(declare-fun bs!518138 () Bool)

(assert (= bs!518138 d!820799))

(declare-fun m!3257887 () Bool)

(assert (=> bs!518138 m!3257887))

(assert (=> d!820665 d!820799))

(declare-fun d!820801 () Bool)

(assert (=> d!820801 (= (list!12445 (singletonSeq!2154 lt!1008614)) (list!12448 (c!457542 (singletonSeq!2154 lt!1008614))))))

(declare-fun bs!518139 () Bool)

(assert (= bs!518139 d!820801))

(declare-fun m!3257889 () Bool)

(assert (=> bs!518139 m!3257889))

(assert (=> d!820665 d!820801))

(declare-fun d!820803 () Bool)

(declare-fun e!1790253 () Bool)

(assert (=> d!820803 e!1790253))

(declare-fun res!1177528 () Bool)

(assert (=> d!820803 (=> (not res!1177528) (not e!1790253))))

(declare-fun lt!1008781 () BalanceConc!20262)

(assert (=> d!820803 (= res!1177528 (= (list!12445 lt!1008781) (Cons!33239 lt!1008614 Nil!33239)))))

(declare-fun singleton!943 (Token!9358) BalanceConc!20262)

(assert (=> d!820803 (= lt!1008781 (singleton!943 lt!1008614))))

(assert (=> d!820803 (= (singletonSeq!2154 lt!1008614) lt!1008781)))

(declare-fun b!2828411 () Bool)

(assert (=> b!2828411 (= e!1790253 (isBalanced!3118 (c!457542 lt!1008781)))))

(assert (= (and d!820803 res!1177528) b!2828411))

(declare-fun m!3257891 () Bool)

(assert (=> d!820803 m!3257891))

(declare-fun m!3257893 () Bool)

(assert (=> d!820803 m!3257893))

(declare-fun m!3257895 () Bool)

(assert (=> b!2828411 m!3257895))

(assert (=> d!820665 d!820803))

(declare-fun d!820805 () Bool)

(declare-fun lt!1008782 () Int)

(assert (=> d!820805 (= lt!1008782 (size!25875 (list!12445 (_1!19806 lt!1008690))))))

(assert (=> d!820805 (= lt!1008782 (size!25876 (c!457542 (_1!19806 lt!1008690))))))

(assert (=> d!820805 (= (size!25869 (_1!19806 lt!1008690)) lt!1008782)))

(declare-fun bs!518140 () Bool)

(assert (= bs!518140 d!820805))

(declare-fun m!3257897 () Bool)

(assert (=> bs!518140 m!3257897))

(assert (=> bs!518140 m!3257897))

(declare-fun m!3257899 () Bool)

(assert (=> bs!518140 m!3257899))

(declare-fun m!3257901 () Bool)

(assert (=> bs!518140 m!3257901))

(assert (=> d!820665 d!820805))

(declare-fun d!820807 () Bool)

(declare-fun lt!1008783 () Token!9358)

(assert (=> d!820807 (= lt!1008783 (apply!7754 (list!12445 (_1!19806 lt!1008690)) 0))))

(assert (=> d!820807 (= lt!1008783 (apply!7757 (c!457542 (_1!19806 lt!1008690)) 0))))

(declare-fun e!1790254 () Bool)

(assert (=> d!820807 e!1790254))

(declare-fun res!1177529 () Bool)

(assert (=> d!820807 (=> (not res!1177529) (not e!1790254))))

(assert (=> d!820807 (= res!1177529 (<= 0 0))))

(assert (=> d!820807 (= (apply!7753 (_1!19806 lt!1008690) 0) lt!1008783)))

(declare-fun b!2828412 () Bool)

(assert (=> b!2828412 (= e!1790254 (< 0 (size!25869 (_1!19806 lt!1008690))))))

(assert (= (and d!820807 res!1177529) b!2828412))

(assert (=> d!820807 m!3257897))

(assert (=> d!820807 m!3257897))

(declare-fun m!3257903 () Bool)

(assert (=> d!820807 m!3257903))

(declare-fun m!3257905 () Bool)

(assert (=> d!820807 m!3257905))

(assert (=> b!2828412 m!3257585))

(assert (=> b!2828120 d!820807))

(assert (=> b!2827984 d!820751))

(declare-fun d!820809 () Bool)

(declare-fun res!1177534 () Bool)

(declare-fun e!1790259 () Bool)

(assert (=> d!820809 (=> res!1177534 e!1790259)))

(assert (=> d!820809 (= res!1177534 (is-Nil!33239 (list!12445 v!6247)))))

(assert (=> d!820809 (= (forall!6836 (list!12445 v!6247) lambda!103862) e!1790259)))

(declare-fun b!2828417 () Bool)

(declare-fun e!1790260 () Bool)

(assert (=> b!2828417 (= e!1790259 e!1790260)))

(declare-fun res!1177535 () Bool)

(assert (=> b!2828417 (=> (not res!1177535) (not e!1790260))))

(declare-fun dynLambda!13987 (Int Token!9358) Bool)

(assert (=> b!2828417 (= res!1177535 (dynLambda!13987 lambda!103862 (h!38659 (list!12445 v!6247))))))

(declare-fun b!2828418 () Bool)

(assert (=> b!2828418 (= e!1790260 (forall!6836 (t!231162 (list!12445 v!6247)) lambda!103862))))

(assert (= (and d!820809 (not res!1177534)) b!2828417))

(assert (= (and b!2828417 res!1177535) b!2828418))

(declare-fun b_lambda!84983 () Bool)

(assert (=> (not b_lambda!84983) (not b!2828417)))

(declare-fun m!3257907 () Bool)

(assert (=> b!2828417 m!3257907))

(declare-fun m!3257909 () Bool)

(assert (=> b!2828418 m!3257909))

(assert (=> d!820735 d!820809))

(assert (=> d!820735 d!820727))

(declare-fun d!820811 () Bool)

(declare-fun lt!1008786 () Bool)

(assert (=> d!820811 (= lt!1008786 (forall!6836 (list!12445 v!6247) lambda!103862))))

(declare-fun forall!6840 (Conc!10312 Int) Bool)

(assert (=> d!820811 (= lt!1008786 (forall!6840 (c!457542 v!6247) lambda!103862))))

(assert (=> d!820811 (= (forall!6837 v!6247 lambda!103862) lt!1008786)))

(declare-fun bs!518141 () Bool)

(assert (= bs!518141 d!820811))

(assert (=> bs!518141 m!3257371))

(assert (=> bs!518141 m!3257371))

(assert (=> bs!518141 m!3257753))

(declare-fun m!3257911 () Bool)

(assert (=> bs!518141 m!3257911))

(assert (=> d!820735 d!820811))

(assert (=> d!820735 d!820755))

(declare-fun d!820813 () Bool)

(declare-fun lt!1008787 () Bool)

(assert (=> d!820813 (= lt!1008787 (isEmpty!18371 (list!12447 (_2!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614)))))))))

(assert (=> d!820813 (= lt!1008787 (isEmpty!18372 (c!457541 (_2!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614)))))))))

(assert (=> d!820813 (= (isEmpty!18367 (_2!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008614))))) lt!1008787)))

(declare-fun bs!518142 () Bool)

(assert (= bs!518142 d!820813))

(declare-fun m!3257913 () Bool)

(assert (=> bs!518142 m!3257913))

(assert (=> bs!518142 m!3257913))

(declare-fun m!3257915 () Bool)

(assert (=> bs!518142 m!3257915))

(declare-fun m!3257917 () Bool)

(assert (=> bs!518142 m!3257917))

(assert (=> b!2828122 d!820813))

(assert (=> b!2828122 d!820797))

(assert (=> b!2828122 d!820795))

(assert (=> b!2828122 d!820803))

(assert (=> d!820697 d!820693))

(declare-fun d!820815 () Bool)

(assert (=> d!820815 (rulesProduceIndividualToken!2107 thiss!11212 rules!1102 lt!1008610)))

(assert (=> d!820815 true))

(declare-fun _$77!735 () Unit!47289)

(assert (=> d!820815 (= (choose!16707 thiss!11212 rules!1102 lt!1008618 lt!1008610) _$77!735)))

(declare-fun bs!518143 () Bool)

(assert (= bs!518143 d!820815))

(assert (=> bs!518143 m!3257397))

(assert (=> d!820697 d!820815))

(assert (=> d!820697 d!820755))

(declare-fun d!820817 () Bool)

(declare-fun list!12451 (Conc!10311) List!33361)

(assert (=> d!820817 (= (list!12447 lt!1008703) (list!12451 (c!457541 lt!1008703)))))

(declare-fun bs!518144 () Bool)

(assert (= bs!518144 d!820817))

(declare-fun m!3257919 () Bool)

(assert (=> bs!518144 m!3257919))

(assert (=> d!820701 d!820817))

(declare-fun bs!518148 () Bool)

(declare-fun d!820819 () Bool)

(assert (= bs!518148 (and d!820819 d!820735)))

(declare-fun lambda!103873 () Int)

(assert (=> bs!518148 (= lambda!103873 lambda!103862)))

(declare-fun b!2828489 () Bool)

(declare-fun e!1790302 () Bool)

(assert (=> b!2828489 (= e!1790302 true)))

(declare-fun b!2828488 () Bool)

(declare-fun e!1790301 () Bool)

(assert (=> b!2828488 (= e!1790301 e!1790302)))

(declare-fun b!2828487 () Bool)

(declare-fun e!1790300 () Bool)

(assert (=> b!2828487 (= e!1790300 e!1790301)))

(assert (=> d!820819 e!1790300))

(assert (= b!2828488 b!2828489))

(assert (= b!2828487 b!2828488))

(assert (= (and d!820819 (is-Cons!33238 rules!1102)) b!2828487))

(assert (=> b!2828489 (< (dynLambda!13979 order!17721 (toValue!7000 (transformation!4978 (h!38658 rules!1102)))) (dynLambda!13980 order!17723 lambda!103873))))

(assert (=> b!2828489 (< (dynLambda!13981 order!17725 (toChars!6859 (transformation!4978 (h!38658 rules!1102)))) (dynLambda!13980 order!17723 lambda!103873))))

(assert (=> d!820819 true))

(declare-fun lt!1008801 () Bool)

(assert (=> d!820819 (= lt!1008801 (forall!6836 (list!12445 v!6247) lambda!103873))))

(declare-fun e!1790299 () Bool)

(assert (=> d!820819 (= lt!1008801 e!1790299)))

(declare-fun res!1177569 () Bool)

(assert (=> d!820819 (=> res!1177569 e!1790299)))

(assert (=> d!820819 (= res!1177569 (not (is-Cons!33239 (list!12445 v!6247))))))

(assert (=> d!820819 (not (isEmpty!18368 rules!1102))))

(assert (=> d!820819 (= (rulesProduceEachTokenIndividuallyList!1621 thiss!11212 rules!1102 (list!12445 v!6247)) lt!1008801)))

(declare-fun b!2828485 () Bool)

(declare-fun e!1790298 () Bool)

(assert (=> b!2828485 (= e!1790299 e!1790298)))

(declare-fun res!1177568 () Bool)

(assert (=> b!2828485 (=> (not res!1177568) (not e!1790298))))

(assert (=> b!2828485 (= res!1177568 (rulesProduceIndividualToken!2107 thiss!11212 rules!1102 (h!38659 (list!12445 v!6247))))))

(declare-fun b!2828486 () Bool)

(assert (=> b!2828486 (= e!1790298 (rulesProduceEachTokenIndividuallyList!1621 thiss!11212 rules!1102 (t!231162 (list!12445 v!6247))))))

(assert (= (and d!820819 (not res!1177569)) b!2828485))

(assert (= (and b!2828485 res!1177568) b!2828486))

(assert (=> d!820819 m!3257371))

(declare-fun m!3257979 () Bool)

(assert (=> d!820819 m!3257979))

(assert (=> d!820819 m!3257355))

(declare-fun m!3257981 () Bool)

(assert (=> b!2828485 m!3257981))

(declare-fun m!3257983 () Bool)

(assert (=> b!2828486 m!3257983))

(assert (=> b!2828218 d!820819))

(assert (=> b!2828218 d!820727))

(declare-fun d!820849 () Bool)

(declare-fun c!457628 () Bool)

(assert (=> d!820849 (= c!457628 (is-Node!10312 (left!25108 (c!457542 v!6247))))))

(declare-fun e!1790303 () Bool)

(assert (=> d!820849 (= (inv!45190 (left!25108 (c!457542 v!6247))) e!1790303)))

(declare-fun b!2828490 () Bool)

(assert (=> b!2828490 (= e!1790303 (inv!45198 (left!25108 (c!457542 v!6247))))))

(declare-fun b!2828491 () Bool)

(declare-fun e!1790304 () Bool)

(assert (=> b!2828491 (= e!1790303 e!1790304)))

(declare-fun res!1177570 () Bool)

(assert (=> b!2828491 (= res!1177570 (not (is-Leaf!15709 (left!25108 (c!457542 v!6247)))))))

(assert (=> b!2828491 (=> res!1177570 e!1790304)))

(declare-fun b!2828492 () Bool)

(assert (=> b!2828492 (= e!1790304 (inv!45199 (left!25108 (c!457542 v!6247))))))

(assert (= (and d!820849 c!457628) b!2828490))

(assert (= (and d!820849 (not c!457628)) b!2828491))

(assert (= (and b!2828491 (not res!1177570)) b!2828492))

(declare-fun m!3257985 () Bool)

(assert (=> b!2828490 m!3257985))

(declare-fun m!3257987 () Bool)

(assert (=> b!2828492 m!3257987))

(assert (=> b!2828278 d!820849))

(declare-fun d!820851 () Bool)

(declare-fun c!457629 () Bool)

(assert (=> d!820851 (= c!457629 (is-Node!10312 (right!25438 (c!457542 v!6247))))))

(declare-fun e!1790305 () Bool)

(assert (=> d!820851 (= (inv!45190 (right!25438 (c!457542 v!6247))) e!1790305)))

(declare-fun b!2828493 () Bool)

(assert (=> b!2828493 (= e!1790305 (inv!45198 (right!25438 (c!457542 v!6247))))))

(declare-fun b!2828494 () Bool)

(declare-fun e!1790306 () Bool)

(assert (=> b!2828494 (= e!1790305 e!1790306)))

(declare-fun res!1177571 () Bool)

(assert (=> b!2828494 (= res!1177571 (not (is-Leaf!15709 (right!25438 (c!457542 v!6247)))))))

(assert (=> b!2828494 (=> res!1177571 e!1790306)))

(declare-fun b!2828495 () Bool)

(assert (=> b!2828495 (= e!1790306 (inv!45199 (right!25438 (c!457542 v!6247))))))

(assert (= (and d!820851 c!457629) b!2828493))

(assert (= (and d!820851 (not c!457629)) b!2828494))

(assert (= (and b!2828494 (not res!1177571)) b!2828495))

(declare-fun m!3257989 () Bool)

(assert (=> b!2828493 m!3257989))

(declare-fun m!3257991 () Bool)

(assert (=> b!2828495 m!3257991))

(assert (=> b!2828278 d!820851))

(declare-fun d!820853 () Bool)

(declare-fun c!457630 () Bool)

(assert (=> d!820853 (= c!457630 (is-Nil!33239 lt!1008717))))

(declare-fun e!1790307 () (Set Token!9358))

(assert (=> d!820853 (= (content!4631 lt!1008717) e!1790307)))

(declare-fun b!2828496 () Bool)

(assert (=> b!2828496 (= e!1790307 (as set.empty (Set Token!9358)))))

(declare-fun b!2828497 () Bool)

(assert (=> b!2828497 (= e!1790307 (set.union (set.insert (h!38659 lt!1008717) (as set.empty (Set Token!9358))) (content!4631 (t!231162 lt!1008717))))))

(assert (= (and d!820853 c!457630) b!2828496))

(assert (= (and d!820853 (not c!457630)) b!2828497))

(declare-fun m!3257993 () Bool)

(assert (=> b!2828497 m!3257993))

(declare-fun m!3257995 () Bool)

(assert (=> b!2828497 m!3257995))

(assert (=> d!820715 d!820853))

(assert (=> d!820715 d!820789))

(declare-fun d!820855 () Bool)

(assert (=> d!820855 (= (tail!4457 (drop!1781 lt!1008618 from!827)) (t!231162 (drop!1781 lt!1008618 from!827)))))

(assert (=> d!820705 d!820855))

(assert (=> d!820705 d!820721))

(declare-fun b!2828498 () Bool)

(declare-fun e!1790311 () Int)

(declare-fun call!183258 () Int)

(assert (=> b!2828498 (= e!1790311 call!183258)))

(declare-fun b!2828499 () Bool)

(declare-fun e!1790310 () Bool)

(declare-fun lt!1008802 () List!33363)

(assert (=> b!2828499 (= e!1790310 (= (size!25875 lt!1008802) e!1790311))))

(declare-fun c!457634 () Bool)

(assert (=> b!2828499 (= c!457634 (<= (+ from!827 1) 0))))

(declare-fun b!2828500 () Bool)

(declare-fun e!1790309 () Int)

(assert (=> b!2828500 (= e!1790309 (- call!183258 (+ from!827 1)))))

(declare-fun b!2828501 () Bool)

(declare-fun e!1790312 () List!33363)

(assert (=> b!2828501 (= e!1790312 (drop!1781 (t!231162 lt!1008618) (- (+ from!827 1) 1)))))

(declare-fun d!820857 () Bool)

(assert (=> d!820857 e!1790310))

(declare-fun res!1177572 () Bool)

(assert (=> d!820857 (=> (not res!1177572) (not e!1790310))))

(assert (=> d!820857 (= res!1177572 (set.subset (content!4631 lt!1008802) (content!4631 lt!1008618)))))

(declare-fun e!1790308 () List!33363)

(assert (=> d!820857 (= lt!1008802 e!1790308)))

(declare-fun c!457632 () Bool)

(assert (=> d!820857 (= c!457632 (is-Nil!33239 lt!1008618))))

(assert (=> d!820857 (= (drop!1781 lt!1008618 (+ from!827 1)) lt!1008802)))

(declare-fun b!2828502 () Bool)

(assert (=> b!2828502 (= e!1790312 lt!1008618)))

(declare-fun b!2828503 () Bool)

(assert (=> b!2828503 (= e!1790308 Nil!33239)))

(declare-fun b!2828504 () Bool)

(assert (=> b!2828504 (= e!1790311 e!1790309)))

(declare-fun c!457633 () Bool)

(assert (=> b!2828504 (= c!457633 (>= (+ from!827 1) call!183258))))

(declare-fun b!2828505 () Bool)

(assert (=> b!2828505 (= e!1790309 0)))

(declare-fun b!2828506 () Bool)

(assert (=> b!2828506 (= e!1790308 e!1790312)))

(declare-fun c!457631 () Bool)

(assert (=> b!2828506 (= c!457631 (<= (+ from!827 1) 0))))

(declare-fun bm!183253 () Bool)

(assert (=> bm!183253 (= call!183258 (size!25875 lt!1008618))))

(assert (= (and d!820857 c!457632) b!2828503))

(assert (= (and d!820857 (not c!457632)) b!2828506))

(assert (= (and b!2828506 c!457631) b!2828502))

(assert (= (and b!2828506 (not c!457631)) b!2828501))

(assert (= (and d!820857 res!1177572) b!2828499))

(assert (= (and b!2828499 c!457634) b!2828498))

(assert (= (and b!2828499 (not c!457634)) b!2828504))

(assert (= (and b!2828504 c!457633) b!2828505))

(assert (= (and b!2828504 (not c!457633)) b!2828500))

(assert (= (or b!2828498 b!2828504 b!2828500) bm!183253))

(declare-fun m!3257997 () Bool)

(assert (=> b!2828499 m!3257997))

(declare-fun m!3257999 () Bool)

(assert (=> b!2828501 m!3257999))

(declare-fun m!3258001 () Bool)

(assert (=> d!820857 m!3258001))

(assert (=> d!820857 m!3257659))

(assert (=> bm!183253 m!3257637))

(assert (=> d!820705 d!820857))

(declare-fun d!820859 () Bool)

(assert (=> d!820859 (= (tail!4457 (drop!1781 lt!1008618 from!827)) (drop!1781 lt!1008618 (+ from!827 1)))))

(assert (=> d!820859 true))

(declare-fun _$28!594 () Unit!47289)

(assert (=> d!820859 (= (choose!16708 lt!1008618 from!827) _$28!594)))

(declare-fun bs!518149 () Bool)

(assert (= bs!518149 d!820859))

(assert (=> bs!518149 m!3257377))

(assert (=> bs!518149 m!3257377))

(assert (=> bs!518149 m!3257631))

(assert (=> bs!518149 m!3257633))

(assert (=> d!820705 d!820859))

(assert (=> d!820765 d!820789))

(declare-fun d!820861 () Bool)

(declare-fun c!457639 () Bool)

(assert (=> d!820861 (= c!457639 (is-Empty!10312 (c!457542 v!6247)))))

(declare-fun e!1790317 () List!33363)

(assert (=> d!820861 (= (list!12448 (c!457542 v!6247)) e!1790317)))

(declare-fun b!2828518 () Bool)

(declare-fun e!1790318 () List!33363)

(declare-fun ++!8095 (List!33363 List!33363) List!33363)

(assert (=> b!2828518 (= e!1790318 (++!8095 (list!12448 (left!25108 (c!457542 v!6247))) (list!12448 (right!25438 (c!457542 v!6247)))))))

(declare-fun b!2828516 () Bool)

(assert (=> b!2828516 (= e!1790317 e!1790318)))

(declare-fun c!457640 () Bool)

(assert (=> b!2828516 (= c!457640 (is-Leaf!15709 (c!457542 v!6247)))))

(declare-fun b!2828517 () Bool)

(declare-fun list!12452 (IArray!20629) List!33363)

(assert (=> b!2828517 (= e!1790318 (list!12452 (xs!13424 (c!457542 v!6247))))))

(declare-fun b!2828515 () Bool)

(assert (=> b!2828515 (= e!1790317 Nil!33239)))

(assert (= (and d!820861 c!457639) b!2828515))

(assert (= (and d!820861 (not c!457639)) b!2828516))

(assert (= (and b!2828516 c!457640) b!2828517))

(assert (= (and b!2828516 (not c!457640)) b!2828518))

(declare-fun m!3258003 () Bool)

(assert (=> b!2828518 m!3258003))

(declare-fun m!3258005 () Bool)

(assert (=> b!2828518 m!3258005))

(assert (=> b!2828518 m!3258003))

(assert (=> b!2828518 m!3258005))

(declare-fun m!3258007 () Bool)

(assert (=> b!2828518 m!3258007))

(declare-fun m!3258009 () Bool)

(assert (=> b!2828517 m!3258009))

(assert (=> d!820727 d!820861))

(declare-fun d!820863 () Bool)

(declare-fun lt!1008803 () Bool)

(assert (=> d!820863 (= lt!1008803 (set.member lt!1008610 (content!4631 (list!12445 v!6247))))))

(declare-fun e!1790320 () Bool)

(assert (=> d!820863 (= lt!1008803 e!1790320)))

(declare-fun res!1177574 () Bool)

(assert (=> d!820863 (=> (not res!1177574) (not e!1790320))))

(assert (=> d!820863 (= res!1177574 (is-Cons!33239 (list!12445 v!6247)))))

(assert (=> d!820863 (= (contains!6061 (list!12445 v!6247) lt!1008610) lt!1008803)))

(declare-fun b!2828519 () Bool)

(declare-fun e!1790319 () Bool)

(assert (=> b!2828519 (= e!1790320 e!1790319)))

(declare-fun res!1177573 () Bool)

(assert (=> b!2828519 (=> res!1177573 e!1790319)))

(assert (=> b!2828519 (= res!1177573 (= (h!38659 (list!12445 v!6247)) lt!1008610))))

(declare-fun b!2828520 () Bool)

(assert (=> b!2828520 (= e!1790319 (contains!6061 (t!231162 (list!12445 v!6247)) lt!1008610))))

(assert (= (and d!820863 res!1177574) b!2828519))

(assert (= (and b!2828519 (not res!1177573)) b!2828520))

(assert (=> d!820863 m!3257371))

(declare-fun m!3258011 () Bool)

(assert (=> d!820863 m!3258011))

(declare-fun m!3258013 () Bool)

(assert (=> d!820863 m!3258013))

(declare-fun m!3258015 () Bool)

(assert (=> b!2828520 m!3258015))

(assert (=> d!820769 d!820863))

(assert (=> d!820769 d!820727))

(declare-fun b!2828531 () Bool)

(declare-fun e!1790329 () Bool)

(declare-fun e!1790328 () Bool)

(assert (=> b!2828531 (= e!1790329 e!1790328)))

(declare-fun res!1177580 () Bool)

(assert (=> b!2828531 (= res!1177580 (contains!6065 (left!25108 (c!457542 v!6247)) lt!1008610))))

(assert (=> b!2828531 (=> res!1177580 e!1790328)))

(declare-fun b!2828529 () Bool)

(declare-fun e!1790327 () Bool)

(assert (=> b!2828529 (= e!1790327 e!1790329)))

(declare-fun c!457643 () Bool)

(assert (=> b!2828529 (= c!457643 (is-Leaf!15709 (c!457542 v!6247)))))

(declare-fun b!2828532 () Bool)

(assert (=> b!2828532 (= e!1790328 (contains!6065 (right!25438 (c!457542 v!6247)) lt!1008610))))

(declare-fun b!2828530 () Bool)

(declare-fun contains!6067 (IArray!20629 Token!9358) Bool)

(assert (=> b!2828530 (= e!1790329 (contains!6067 (xs!13424 (c!457542 v!6247)) lt!1008610))))

(declare-fun d!820865 () Bool)

(declare-fun lt!1008806 () Bool)

(assert (=> d!820865 (= lt!1008806 (contains!6061 (list!12448 (c!457542 v!6247)) lt!1008610))))

(assert (=> d!820865 (= lt!1008806 e!1790327)))

(declare-fun res!1177579 () Bool)

(assert (=> d!820865 (=> (not res!1177579) (not e!1790327))))

(assert (=> d!820865 (= res!1177579 (not (is-Empty!10312 (c!457542 v!6247))))))

(assert (=> d!820865 (= (contains!6065 (c!457542 v!6247) lt!1008610) lt!1008806)))

(assert (= (and d!820865 res!1177579) b!2828529))

(assert (= (and b!2828529 c!457643) b!2828530))

(assert (= (and b!2828529 (not c!457643)) b!2828531))

(assert (= (and b!2828531 (not res!1177580)) b!2828532))

(declare-fun m!3258017 () Bool)

(assert (=> b!2828531 m!3258017))

(declare-fun m!3258019 () Bool)

(assert (=> b!2828532 m!3258019))

(declare-fun m!3258021 () Bool)

(assert (=> b!2828530 m!3258021))

(assert (=> d!820865 m!3257685))

(assert (=> d!820865 m!3257685))

(declare-fun m!3258023 () Bool)

(assert (=> d!820865 m!3258023))

(assert (=> d!820769 d!820865))

(declare-fun d!820867 () Bool)

(assert (=> d!820867 (= (inv!45187 (tag!5482 (h!38658 (t!231161 rules!1102)))) (= (mod (str.len (value!160216 (tag!5482 (h!38658 (t!231161 rules!1102))))) 2) 0))))

(assert (=> b!2828290 d!820867))

(declare-fun d!820869 () Bool)

(declare-fun res!1177581 () Bool)

(declare-fun e!1790330 () Bool)

(assert (=> d!820869 (=> (not res!1177581) (not e!1790330))))

(assert (=> d!820869 (= res!1177581 (semiInverseModEq!2071 (toChars!6859 (transformation!4978 (h!38658 (t!231161 rules!1102)))) (toValue!7000 (transformation!4978 (h!38658 (t!231161 rules!1102))))))))

(assert (=> d!820869 (= (inv!45191 (transformation!4978 (h!38658 (t!231161 rules!1102)))) e!1790330)))

(declare-fun b!2828533 () Bool)

(assert (=> b!2828533 (= e!1790330 (equivClasses!1970 (toChars!6859 (transformation!4978 (h!38658 (t!231161 rules!1102)))) (toValue!7000 (transformation!4978 (h!38658 (t!231161 rules!1102))))))))

(assert (= (and d!820869 res!1177581) b!2828533))

(declare-fun m!3258025 () Bool)

(assert (=> d!820869 m!3258025))

(declare-fun m!3258027 () Bool)

(assert (=> b!2828533 m!3258027))

(assert (=> b!2828290 d!820869))

(declare-fun d!820871 () Bool)

(declare-fun c!457646 () Bool)

(assert (=> d!820871 (= c!457646 (is-Node!10311 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610)))))))

(declare-fun e!1790335 () Bool)

(assert (=> d!820871 (= (inv!45196 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610)))) e!1790335)))

(declare-fun b!2828540 () Bool)

(declare-fun inv!45206 (Conc!10311) Bool)

(assert (=> b!2828540 (= e!1790335 (inv!45206 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610)))))))

(declare-fun b!2828541 () Bool)

(declare-fun e!1790336 () Bool)

(assert (=> b!2828541 (= e!1790335 e!1790336)))

(declare-fun res!1177584 () Bool)

(assert (=> b!2828541 (= res!1177584 (not (is-Leaf!15708 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610))))))))

(assert (=> b!2828541 (=> res!1177584 e!1790336)))

(declare-fun b!2828542 () Bool)

(declare-fun inv!45207 (Conc!10311) Bool)

(assert (=> b!2828542 (= e!1790336 (inv!45207 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610)))))))

(assert (= (and d!820871 c!457646) b!2828540))

(assert (= (and d!820871 (not c!457646)) b!2828541))

(assert (= (and b!2828541 (not res!1177584)) b!2828542))

(declare-fun m!3258029 () Bool)

(assert (=> b!2828540 m!3258029))

(declare-fun m!3258031 () Bool)

(assert (=> b!2828542 m!3258031))

(assert (=> b!2828130 d!820871))

(declare-fun d!820873 () Bool)

(declare-fun res!1177589 () Bool)

(declare-fun e!1790341 () Bool)

(assert (=> d!820873 (=> res!1177589 e!1790341)))

(assert (=> d!820873 (= res!1177589 (is-Nil!33238 rules!1102))))

(assert (=> d!820873 (= (noDuplicateTag!1837 thiss!11212 rules!1102 Nil!33244) e!1790341)))

(declare-fun b!2828547 () Bool)

(declare-fun e!1790342 () Bool)

(assert (=> b!2828547 (= e!1790341 e!1790342)))

(declare-fun res!1177590 () Bool)

(assert (=> b!2828547 (=> (not res!1177590) (not e!1790342))))

(declare-fun contains!6068 (List!33368 String!36561) Bool)

(assert (=> b!2828547 (= res!1177590 (not (contains!6068 Nil!33244 (tag!5482 (h!38658 rules!1102)))))))

(declare-fun b!2828548 () Bool)

(assert (=> b!2828548 (= e!1790342 (noDuplicateTag!1837 thiss!11212 (t!231161 rules!1102) (Cons!33244 (tag!5482 (h!38658 rules!1102)) Nil!33244)))))

(assert (= (and d!820873 (not res!1177589)) b!2828547))

(assert (= (and b!2828547 res!1177590) b!2828548))

(declare-fun m!3258033 () Bool)

(assert (=> b!2828547 m!3258033))

(declare-fun m!3258035 () Bool)

(assert (=> b!2828548 m!3258035))

(assert (=> b!2828249 d!820873))

(declare-fun d!820875 () Bool)

(declare-fun lt!1008807 () Int)

(assert (=> d!820875 (>= lt!1008807 0)))

(declare-fun e!1790343 () Int)

(assert (=> d!820875 (= lt!1008807 e!1790343)))

(declare-fun c!457647 () Bool)

(assert (=> d!820875 (= c!457647 (is-Nil!33239 lt!1008721))))

(assert (=> d!820875 (= (size!25875 lt!1008721) lt!1008807)))

(declare-fun b!2828549 () Bool)

(assert (=> b!2828549 (= e!1790343 0)))

(declare-fun b!2828550 () Bool)

(assert (=> b!2828550 (= e!1790343 (+ 1 (size!25875 (t!231162 lt!1008721))))))

(assert (= (and d!820875 c!457647) b!2828549))

(assert (= (and d!820875 (not c!457647)) b!2828550))

(declare-fun m!3258037 () Bool)

(assert (=> b!2828550 m!3258037))

(assert (=> b!2828184 d!820875))

(declare-fun d!820877 () Bool)

(assert (=> d!820877 true))

(declare-fun order!17735 () Int)

(declare-fun lambda!103876 () Int)

(declare-fun dynLambda!13988 (Int Int) Int)

(assert (=> d!820877 (< (dynLambda!13979 order!17721 (toValue!7000 (transformation!4978 (h!38658 rules!1102)))) (dynLambda!13988 order!17735 lambda!103876))))

(declare-fun Forall2!832 (Int) Bool)

(assert (=> d!820877 (= (equivClasses!1970 (toChars!6859 (transformation!4978 (h!38658 rules!1102))) (toValue!7000 (transformation!4978 (h!38658 rules!1102)))) (Forall2!832 lambda!103876))))

(declare-fun bs!518150 () Bool)

(assert (= bs!518150 d!820877))

(declare-fun m!3258039 () Bool)

(assert (=> bs!518150 m!3258039))

(assert (=> b!2828252 d!820877))

(declare-fun d!820879 () Bool)

(assert (=> d!820879 (= (isEmpty!18371 (list!12447 lt!1008606)) (is-Nil!33237 (list!12447 lt!1008606)))))

(assert (=> d!820699 d!820879))

(declare-fun d!820881 () Bool)

(assert (=> d!820881 (= (list!12447 lt!1008606) (list!12451 (c!457541 lt!1008606)))))

(declare-fun bs!518151 () Bool)

(assert (= bs!518151 d!820881))

(declare-fun m!3258041 () Bool)

(assert (=> bs!518151 m!3258041))

(assert (=> d!820699 d!820881))

(declare-fun d!820883 () Bool)

(declare-fun lt!1008810 () Bool)

(assert (=> d!820883 (= lt!1008810 (isEmpty!18371 (list!12451 (c!457541 lt!1008606))))))

(assert (=> d!820883 (= lt!1008810 (= (size!25874 (c!457541 lt!1008606)) 0))))

(assert (=> d!820883 (= (isEmpty!18372 (c!457541 lt!1008606)) lt!1008810)))

(declare-fun bs!518152 () Bool)

(assert (= bs!518152 d!820883))

(assert (=> bs!518152 m!3258041))

(assert (=> bs!518152 m!3258041))

(declare-fun m!3258043 () Bool)

(assert (=> bs!518152 m!3258043))

(assert (=> bs!518152 m!3257615))

(assert (=> d!820699 d!820883))

(declare-fun d!820885 () Bool)

(declare-fun lt!1008813 () Int)

(assert (=> d!820885 (>= lt!1008813 0)))

(declare-fun e!1790348 () Int)

(assert (=> d!820885 (= lt!1008813 e!1790348)))

(declare-fun c!457650 () Bool)

(assert (=> d!820885 (= c!457650 (is-Nil!33237 (list!12447 lt!1008606)))))

(assert (=> d!820885 (= (size!25873 (list!12447 lt!1008606)) lt!1008813)))

(declare-fun b!2828559 () Bool)

(assert (=> b!2828559 (= e!1790348 0)))

(declare-fun b!2828560 () Bool)

(assert (=> b!2828560 (= e!1790348 (+ 1 (size!25873 (t!231160 (list!12447 lt!1008606)))))))

(assert (= (and d!820885 c!457650) b!2828559))

(assert (= (and d!820885 (not c!457650)) b!2828560))

(declare-fun m!3258045 () Bool)

(assert (=> b!2828560 m!3258045))

(assert (=> d!820695 d!820885))

(assert (=> d!820695 d!820881))

(declare-fun d!820887 () Bool)

(declare-fun lt!1008816 () Int)

(assert (=> d!820887 (= lt!1008816 (size!25873 (list!12451 (c!457541 lt!1008606))))))

(assert (=> d!820887 (= lt!1008816 (ite (is-Empty!10311 (c!457541 lt!1008606)) 0 (ite (is-Leaf!15708 (c!457541 lt!1008606)) (csize!20853 (c!457541 lt!1008606)) (csize!20852 (c!457541 lt!1008606)))))))

(assert (=> d!820887 (= (size!25874 (c!457541 lt!1008606)) lt!1008816)))

(declare-fun bs!518153 () Bool)

(assert (= bs!518153 d!820887))

(assert (=> bs!518153 m!3258041))

(assert (=> bs!518153 m!3258041))

(declare-fun m!3258047 () Bool)

(assert (=> bs!518153 m!3258047))

(assert (=> d!820695 d!820887))

(declare-fun d!820889 () Bool)

(declare-fun lt!1008817 () Bool)

(assert (=> d!820889 (= lt!1008817 (isEmpty!18371 (list!12447 (_2!19806 lt!1008692))))))

(assert (=> d!820889 (= lt!1008817 (isEmpty!18372 (c!457541 (_2!19806 lt!1008692))))))

(assert (=> d!820889 (= (isEmpty!18367 (_2!19806 lt!1008692)) lt!1008817)))

(declare-fun bs!518154 () Bool)

(assert (= bs!518154 d!820889))

(declare-fun m!3258049 () Bool)

(assert (=> bs!518154 m!3258049))

(assert (=> bs!518154 m!3258049))

(declare-fun m!3258051 () Bool)

(assert (=> bs!518154 m!3258051))

(declare-fun m!3258053 () Bool)

(assert (=> bs!518154 m!3258053))

(assert (=> b!2828124 d!820889))

(declare-fun d!820891 () Bool)

(declare-fun isBalanced!3120 (Conc!10311) Bool)

(assert (=> d!820891 (= (inv!45197 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610))) (isBalanced!3120 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610)))))))

(declare-fun bs!518155 () Bool)

(assert (= bs!518155 d!820891))

(declare-fun m!3258055 () Bool)

(assert (=> bs!518155 m!3258055))

(assert (=> tb!154157 d!820891))

(assert (=> b!2828140 d!820791))

(declare-fun d!820893 () Bool)

(assert (=> d!820893 (= (head!6232 lt!1008618) (h!38659 lt!1008618))))

(assert (=> b!2828197 d!820893))

(declare-fun b!2828561 () Bool)

(declare-fun e!1790352 () Int)

(declare-fun call!183259 () Int)

(assert (=> b!2828561 (= e!1790352 call!183259)))

(declare-fun b!2828562 () Bool)

(declare-fun e!1790351 () Bool)

(declare-fun lt!1008818 () List!33363)

(assert (=> b!2828562 (= e!1790351 (= (size!25875 lt!1008818) e!1790352))))

(declare-fun c!457654 () Bool)

(assert (=> b!2828562 (= c!457654 (<= (- from!827 1) 0))))

(declare-fun b!2828563 () Bool)

(declare-fun e!1790350 () Int)

(assert (=> b!2828563 (= e!1790350 (- call!183259 (- from!827 1)))))

(declare-fun b!2828564 () Bool)

(declare-fun e!1790353 () List!33363)

(assert (=> b!2828564 (= e!1790353 (drop!1781 (t!231162 (t!231162 lt!1008618)) (- (- from!827 1) 1)))))

(declare-fun d!820895 () Bool)

(assert (=> d!820895 e!1790351))

(declare-fun res!1177593 () Bool)

(assert (=> d!820895 (=> (not res!1177593) (not e!1790351))))

(assert (=> d!820895 (= res!1177593 (set.subset (content!4631 lt!1008818) (content!4631 (t!231162 lt!1008618))))))

(declare-fun e!1790349 () List!33363)

(assert (=> d!820895 (= lt!1008818 e!1790349)))

(declare-fun c!457652 () Bool)

(assert (=> d!820895 (= c!457652 (is-Nil!33239 (t!231162 lt!1008618)))))

(assert (=> d!820895 (= (drop!1781 (t!231162 lt!1008618) (- from!827 1)) lt!1008818)))

(declare-fun b!2828565 () Bool)

(assert (=> b!2828565 (= e!1790353 (t!231162 lt!1008618))))

(declare-fun b!2828566 () Bool)

(assert (=> b!2828566 (= e!1790349 Nil!33239)))

(declare-fun b!2828567 () Bool)

(assert (=> b!2828567 (= e!1790352 e!1790350)))

(declare-fun c!457653 () Bool)

(assert (=> b!2828567 (= c!457653 (>= (- from!827 1) call!183259))))

(declare-fun b!2828568 () Bool)

(assert (=> b!2828568 (= e!1790350 0)))

(declare-fun b!2828569 () Bool)

(assert (=> b!2828569 (= e!1790349 e!1790353)))

(declare-fun c!457651 () Bool)

(assert (=> b!2828569 (= c!457651 (<= (- from!827 1) 0))))

(declare-fun bm!183254 () Bool)

(assert (=> bm!183254 (= call!183259 (size!25875 (t!231162 lt!1008618)))))

(assert (= (and d!820895 c!457652) b!2828566))

(assert (= (and d!820895 (not c!457652)) b!2828569))

(assert (= (and b!2828569 c!457651) b!2828565))

(assert (= (and b!2828569 (not c!457651)) b!2828564))

(assert (= (and d!820895 res!1177593) b!2828562))

(assert (= (and b!2828562 c!457654) b!2828561))

(assert (= (and b!2828562 (not c!457654)) b!2828567))

(assert (= (and b!2828567 c!457653) b!2828568))

(assert (= (and b!2828567 (not c!457653)) b!2828563))

(assert (= (or b!2828561 b!2828567 b!2828563) bm!183254))

(declare-fun m!3258057 () Bool)

(assert (=> b!2828562 m!3258057))

(declare-fun m!3258059 () Bool)

(assert (=> b!2828564 m!3258059))

(declare-fun m!3258061 () Bool)

(assert (=> d!820895 m!3258061))

(assert (=> d!820895 m!3257847))

(assert (=> bm!183254 m!3257849))

(assert (=> b!2828186 d!820895))

(declare-fun d!820897 () Bool)

(declare-fun lt!1008819 () Token!9358)

(assert (=> d!820897 (contains!6061 (tail!4457 lt!1008618) lt!1008819)))

(declare-fun e!1790355 () Token!9358)

(assert (=> d!820897 (= lt!1008819 e!1790355)))

(declare-fun c!457655 () Bool)

(assert (=> d!820897 (= c!457655 (= (- from!827 1) 0))))

(declare-fun e!1790354 () Bool)

(assert (=> d!820897 e!1790354))

(declare-fun res!1177594 () Bool)

(assert (=> d!820897 (=> (not res!1177594) (not e!1790354))))

(assert (=> d!820897 (= res!1177594 (<= 0 (- from!827 1)))))

(assert (=> d!820897 (= (apply!7754 (tail!4457 lt!1008618) (- from!827 1)) lt!1008819)))

(declare-fun b!2828570 () Bool)

(assert (=> b!2828570 (= e!1790354 (< (- from!827 1) (size!25875 (tail!4457 lt!1008618))))))

(declare-fun b!2828571 () Bool)

(assert (=> b!2828571 (= e!1790355 (head!6232 (tail!4457 lt!1008618)))))

(declare-fun b!2828572 () Bool)

(assert (=> b!2828572 (= e!1790355 (apply!7754 (tail!4457 (tail!4457 lt!1008618)) (- (- from!827 1) 1)))))

(assert (= (and d!820897 res!1177594) b!2828570))

(assert (= (and d!820897 c!457655) b!2828571))

(assert (= (and d!820897 (not c!457655)) b!2828572))

(assert (=> d!820897 m!3257643))

(declare-fun m!3258063 () Bool)

(assert (=> d!820897 m!3258063))

(assert (=> b!2828570 m!3257643))

(declare-fun m!3258065 () Bool)

(assert (=> b!2828570 m!3258065))

(assert (=> b!2828571 m!3257643))

(declare-fun m!3258067 () Bool)

(assert (=> b!2828571 m!3258067))

(assert (=> b!2828572 m!3257643))

(declare-fun m!3258069 () Bool)

(assert (=> b!2828572 m!3258069))

(assert (=> b!2828572 m!3258069))

(declare-fun m!3258071 () Bool)

(assert (=> b!2828572 m!3258071))

(assert (=> b!2828142 d!820897))

(declare-fun d!820899 () Bool)

(assert (=> d!820899 (= (tail!4457 lt!1008618) (t!231162 lt!1008618))))

(assert (=> b!2828142 d!820899))

(declare-fun d!820901 () Bool)

(declare-fun lt!1008820 () Token!9358)

(assert (=> d!820901 (contains!6061 (list!12445 v!6247) lt!1008820)))

(declare-fun e!1790357 () Token!9358)

(assert (=> d!820901 (= lt!1008820 e!1790357)))

(declare-fun c!457656 () Bool)

(assert (=> d!820901 (= c!457656 (= (+ 1 from!827) 0))))

(declare-fun e!1790356 () Bool)

(assert (=> d!820901 e!1790356))

(declare-fun res!1177595 () Bool)

(assert (=> d!820901 (=> (not res!1177595) (not e!1790356))))

(assert (=> d!820901 (= res!1177595 (<= 0 (+ 1 from!827)))))

(assert (=> d!820901 (= (apply!7754 (list!12445 v!6247) (+ 1 from!827)) lt!1008820)))

(declare-fun b!2828573 () Bool)

(assert (=> b!2828573 (= e!1790356 (< (+ 1 from!827) (size!25875 (list!12445 v!6247))))))

(declare-fun b!2828574 () Bool)

(assert (=> b!2828574 (= e!1790357 (head!6232 (list!12445 v!6247)))))

(declare-fun b!2828575 () Bool)

(assert (=> b!2828575 (= e!1790357 (apply!7754 (tail!4457 (list!12445 v!6247)) (- (+ 1 from!827) 1)))))

(assert (= (and d!820901 res!1177595) b!2828573))

(assert (= (and d!820901 c!457656) b!2828574))

(assert (= (and d!820901 (not c!457656)) b!2828575))

(assert (=> d!820901 m!3257371))

(declare-fun m!3258073 () Bool)

(assert (=> d!820901 m!3258073))

(assert (=> b!2828573 m!3257371))

(assert (=> b!2828573 m!3257775))

(assert (=> b!2828574 m!3257371))

(declare-fun m!3258075 () Bool)

(assert (=> b!2828574 m!3258075))

(assert (=> b!2828575 m!3257371))

(declare-fun m!3258077 () Bool)

(assert (=> b!2828575 m!3258077))

(assert (=> b!2828575 m!3258077))

(declare-fun m!3258079 () Bool)

(assert (=> b!2828575 m!3258079))

(assert (=> d!820771 d!820901))

(assert (=> d!820771 d!820727))

(declare-fun b!2828590 () Bool)

(declare-fun e!1790368 () Int)

(assert (=> b!2828590 (= e!1790368 (+ 1 from!827))))

(declare-fun bm!183257 () Bool)

(declare-fun c!457663 () Bool)

(declare-fun c!457664 () Bool)

(assert (=> bm!183257 (= c!457663 c!457664)))

(declare-fun call!183262 () Token!9358)

(assert (=> bm!183257 (= call!183262 (apply!7757 (ite c!457664 (left!25108 (c!457542 v!6247)) (right!25438 (c!457542 v!6247))) e!1790368))))

(declare-fun b!2828591 () Bool)

(declare-fun e!1790369 () Token!9358)

(assert (=> b!2828591 (= e!1790369 call!183262)))

(declare-fun b!2828592 () Bool)

(declare-fun e!1790366 () Bool)

(assert (=> b!2828592 (= e!1790366 (< (+ 1 from!827) (size!25876 (c!457542 v!6247))))))

(declare-fun b!2828594 () Bool)

(declare-fun e!1790367 () Token!9358)

(assert (=> b!2828594 (= e!1790367 e!1790369)))

(declare-fun lt!1008826 () Bool)

(declare-fun appendIndex!292 (List!33363 List!33363 Int) Bool)

(assert (=> b!2828594 (= lt!1008826 (appendIndex!292 (list!12448 (left!25108 (c!457542 v!6247))) (list!12448 (right!25438 (c!457542 v!6247))) (+ 1 from!827)))))

(assert (=> b!2828594 (= c!457664 (< (+ 1 from!827) (size!25876 (left!25108 (c!457542 v!6247)))))))

(declare-fun b!2828595 () Bool)

(declare-fun apply!7759 (IArray!20629 Int) Token!9358)

(assert (=> b!2828595 (= e!1790367 (apply!7759 (xs!13424 (c!457542 v!6247)) (+ 1 from!827)))))

(declare-fun b!2828596 () Bool)

(assert (=> b!2828596 (= e!1790368 (- (+ 1 from!827) (size!25876 (left!25108 (c!457542 v!6247)))))))

(declare-fun b!2828593 () Bool)

(assert (=> b!2828593 (= e!1790369 call!183262)))

(declare-fun d!820903 () Bool)

(declare-fun lt!1008825 () Token!9358)

(assert (=> d!820903 (= lt!1008825 (apply!7754 (list!12448 (c!457542 v!6247)) (+ 1 from!827)))))

(assert (=> d!820903 (= lt!1008825 e!1790367)))

(declare-fun c!457665 () Bool)

(assert (=> d!820903 (= c!457665 (is-Leaf!15709 (c!457542 v!6247)))))

(assert (=> d!820903 e!1790366))

(declare-fun res!1177598 () Bool)

(assert (=> d!820903 (=> (not res!1177598) (not e!1790366))))

(assert (=> d!820903 (= res!1177598 (<= 0 (+ 1 from!827)))))

(assert (=> d!820903 (= (apply!7757 (c!457542 v!6247) (+ 1 from!827)) lt!1008825)))

(assert (= (and d!820903 res!1177598) b!2828592))

(assert (= (and d!820903 c!457665) b!2828595))

(assert (= (and d!820903 (not c!457665)) b!2828594))

(assert (= (and b!2828594 c!457664) b!2828593))

(assert (= (and b!2828594 (not c!457664)) b!2828591))

(assert (= (or b!2828593 b!2828591) bm!183257))

(assert (= (and bm!183257 c!457663) b!2828590))

(assert (= (and bm!183257 (not c!457663)) b!2828596))

(declare-fun m!3258081 () Bool)

(assert (=> b!2828595 m!3258081))

(declare-fun m!3258083 () Bool)

(assert (=> bm!183257 m!3258083))

(assert (=> b!2828592 m!3257777))

(declare-fun m!3258085 () Bool)

(assert (=> b!2828596 m!3258085))

(assert (=> b!2828594 m!3258003))

(assert (=> b!2828594 m!3258005))

(assert (=> b!2828594 m!3258003))

(assert (=> b!2828594 m!3258005))

(declare-fun m!3258087 () Bool)

(assert (=> b!2828594 m!3258087))

(assert (=> b!2828594 m!3258085))

(assert (=> d!820903 m!3257685))

(assert (=> d!820903 m!3257685))

(declare-fun m!3258089 () Bool)

(assert (=> d!820903 m!3258089))

(assert (=> d!820771 d!820903))

(declare-fun d!820905 () Bool)

(declare-fun res!1177605 () Bool)

(declare-fun e!1790372 () Bool)

(assert (=> d!820905 (=> (not res!1177605) (not e!1790372))))

(assert (=> d!820905 (= res!1177605 (= (csize!20854 (c!457542 v!6247)) (+ (size!25876 (left!25108 (c!457542 v!6247))) (size!25876 (right!25438 (c!457542 v!6247))))))))

(assert (=> d!820905 (= (inv!45198 (c!457542 v!6247)) e!1790372)))

(declare-fun b!2828603 () Bool)

(declare-fun res!1177606 () Bool)

(assert (=> b!2828603 (=> (not res!1177606) (not e!1790372))))

(assert (=> b!2828603 (= res!1177606 (and (not (= (left!25108 (c!457542 v!6247)) Empty!10312)) (not (= (right!25438 (c!457542 v!6247)) Empty!10312))))))

(declare-fun b!2828604 () Bool)

(declare-fun res!1177607 () Bool)

(assert (=> b!2828604 (=> (not res!1177607) (not e!1790372))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2828604 (= res!1177607 (= (cheight!10523 (c!457542 v!6247)) (+ (max!0 (height!1505 (left!25108 (c!457542 v!6247))) (height!1505 (right!25438 (c!457542 v!6247)))) 1)))))

(declare-fun b!2828605 () Bool)

(assert (=> b!2828605 (= e!1790372 (<= 0 (cheight!10523 (c!457542 v!6247))))))

(assert (= (and d!820905 res!1177605) b!2828603))

(assert (= (and b!2828603 res!1177606) b!2828604))

(assert (= (and b!2828604 res!1177607) b!2828605))

(assert (=> d!820905 m!3258085))

(declare-fun m!3258091 () Bool)

(assert (=> d!820905 m!3258091))

(assert (=> b!2828604 m!3257853))

(assert (=> b!2828604 m!3257855))

(assert (=> b!2828604 m!3257853))

(assert (=> b!2828604 m!3257855))

(declare-fun m!3258093 () Bool)

(assert (=> b!2828604 m!3258093))

(assert (=> b!2828238 d!820905))

(declare-fun b!2828606 () Bool)

(declare-fun e!1790376 () Int)

(declare-fun call!183263 () Int)

(assert (=> b!2828606 (= e!1790376 call!183263)))

(declare-fun b!2828607 () Bool)

(declare-fun e!1790375 () Bool)

(declare-fun lt!1008827 () List!33363)

(assert (=> b!2828607 (= e!1790375 (= (size!25875 lt!1008827) e!1790376))))

(declare-fun c!457669 () Bool)

(assert (=> b!2828607 (= c!457669 (<= (- (+ 1 from!827) 1) 0))))

(declare-fun b!2828608 () Bool)

(declare-fun e!1790374 () Int)

(assert (=> b!2828608 (= e!1790374 (- call!183263 (- (+ 1 from!827) 1)))))

(declare-fun b!2828609 () Bool)

(declare-fun e!1790377 () List!33363)

(assert (=> b!2828609 (= e!1790377 (drop!1781 (t!231162 (t!231162 lt!1008618)) (- (- (+ 1 from!827) 1) 1)))))

(declare-fun d!820907 () Bool)

(assert (=> d!820907 e!1790375))

(declare-fun res!1177608 () Bool)

(assert (=> d!820907 (=> (not res!1177608) (not e!1790375))))

(assert (=> d!820907 (= res!1177608 (set.subset (content!4631 lt!1008827) (content!4631 (t!231162 lt!1008618))))))

(declare-fun e!1790373 () List!33363)

(assert (=> d!820907 (= lt!1008827 e!1790373)))

(declare-fun c!457667 () Bool)

(assert (=> d!820907 (= c!457667 (is-Nil!33239 (t!231162 lt!1008618)))))

(assert (=> d!820907 (= (drop!1781 (t!231162 lt!1008618) (- (+ 1 from!827) 1)) lt!1008827)))

(declare-fun b!2828610 () Bool)

(assert (=> b!2828610 (= e!1790377 (t!231162 lt!1008618))))

(declare-fun b!2828611 () Bool)

(assert (=> b!2828611 (= e!1790373 Nil!33239)))

(declare-fun b!2828612 () Bool)

(assert (=> b!2828612 (= e!1790376 e!1790374)))

(declare-fun c!457668 () Bool)

(assert (=> b!2828612 (= c!457668 (>= (- (+ 1 from!827) 1) call!183263))))

(declare-fun b!2828613 () Bool)

(assert (=> b!2828613 (= e!1790374 0)))

(declare-fun b!2828614 () Bool)

(assert (=> b!2828614 (= e!1790373 e!1790377)))

(declare-fun c!457666 () Bool)

(assert (=> b!2828614 (= c!457666 (<= (- (+ 1 from!827) 1) 0))))

(declare-fun bm!183258 () Bool)

(assert (=> bm!183258 (= call!183263 (size!25875 (t!231162 lt!1008618)))))

(assert (= (and d!820907 c!457667) b!2828611))

(assert (= (and d!820907 (not c!457667)) b!2828614))

(assert (= (and b!2828614 c!457666) b!2828610))

(assert (= (and b!2828614 (not c!457666)) b!2828609))

(assert (= (and d!820907 res!1177608) b!2828607))

(assert (= (and b!2828607 c!457669) b!2828606))

(assert (= (and b!2828607 (not c!457669)) b!2828612))

(assert (= (and b!2828612 c!457668) b!2828613))

(assert (= (and b!2828612 (not c!457668)) b!2828608))

(assert (= (or b!2828606 b!2828612 b!2828608) bm!183258))

(declare-fun m!3258095 () Bool)

(assert (=> b!2828607 m!3258095))

(declare-fun m!3258097 () Bool)

(assert (=> b!2828609 m!3258097))

(declare-fun m!3258099 () Bool)

(assert (=> d!820907 m!3258099))

(assert (=> d!820907 m!3257847))

(assert (=> bm!183258 m!3257849))

(assert (=> b!2828165 d!820907))

(declare-fun d!820909 () Bool)

(declare-fun lt!1008828 () Int)

(assert (=> d!820909 (>= lt!1008828 0)))

(declare-fun e!1790378 () Int)

(assert (=> d!820909 (= lt!1008828 e!1790378)))

(declare-fun c!457670 () Bool)

(assert (=> d!820909 (= c!457670 (is-Nil!33239 lt!1008713))))

(assert (=> d!820909 (= (size!25875 lt!1008713) lt!1008828)))

(declare-fun b!2828615 () Bool)

(assert (=> b!2828615 (= e!1790378 0)))

(declare-fun b!2828616 () Bool)

(assert (=> b!2828616 (= e!1790378 (+ 1 (size!25875 (t!231162 lt!1008713))))))

(assert (= (and d!820909 c!457670) b!2828615))

(assert (= (and d!820909 (not c!457670)) b!2828616))

(declare-fun m!3258101 () Bool)

(assert (=> b!2828616 m!3258101))

(assert (=> b!2828163 d!820909))

(declare-fun d!820911 () Bool)

(assert (=> d!820911 true))

(declare-fun lt!1008831 () Bool)

(declare-fun rulesValidInductive!1721 (LexerInterface!4569 List!33362) Bool)

(assert (=> d!820911 (= lt!1008831 (rulesValidInductive!1721 thiss!11212 rules!1102))))

(declare-fun lambda!103879 () Int)

(declare-fun forall!6841 (List!33362 Int) Bool)

(assert (=> d!820911 (= lt!1008831 (forall!6841 rules!1102 lambda!103879))))

(assert (=> d!820911 (= (rulesValid!1841 thiss!11212 rules!1102) lt!1008831)))

(declare-fun bs!518156 () Bool)

(assert (= bs!518156 d!820911))

(declare-fun m!3258103 () Bool)

(assert (=> bs!518156 m!3258103))

(declare-fun m!3258105 () Bool)

(assert (=> bs!518156 m!3258105))

(assert (=> d!820757 d!820911))

(declare-fun d!820913 () Bool)

(declare-fun lt!1008832 () Int)

(assert (=> d!820913 (>= lt!1008832 0)))

(declare-fun e!1790379 () Int)

(assert (=> d!820913 (= lt!1008832 e!1790379)))

(declare-fun c!457672 () Bool)

(assert (=> d!820913 (= c!457672 (is-Nil!33239 (list!12445 v!6247)))))

(assert (=> d!820913 (= (size!25875 (list!12445 v!6247)) lt!1008832)))

(declare-fun b!2828619 () Bool)

(assert (=> b!2828619 (= e!1790379 0)))

(declare-fun b!2828620 () Bool)

(assert (=> b!2828620 (= e!1790379 (+ 1 (size!25875 (t!231162 (list!12445 v!6247)))))))

(assert (= (and d!820913 c!457672) b!2828619))

(assert (= (and d!820913 (not c!457672)) b!2828620))

(declare-fun m!3258107 () Bool)

(assert (=> b!2828620 m!3258107))

(assert (=> d!820763 d!820913))

(assert (=> d!820763 d!820727))

(declare-fun d!820915 () Bool)

(declare-fun lt!1008835 () Int)

(assert (=> d!820915 (= lt!1008835 (size!25875 (list!12448 (c!457542 v!6247))))))

(assert (=> d!820915 (= lt!1008835 (ite (is-Empty!10312 (c!457542 v!6247)) 0 (ite (is-Leaf!15709 (c!457542 v!6247)) (csize!20855 (c!457542 v!6247)) (csize!20854 (c!457542 v!6247)))))))

(assert (=> d!820915 (= (size!25876 (c!457542 v!6247)) lt!1008835)))

(declare-fun bs!518157 () Bool)

(assert (= bs!518157 d!820915))

(assert (=> bs!518157 m!3257685))

(assert (=> bs!518157 m!3257685))

(declare-fun m!3258109 () Bool)

(assert (=> bs!518157 m!3258109))

(assert (=> d!820763 d!820915))

(assert (=> bm!183251 d!820791))

(declare-fun d!820917 () Bool)

(declare-fun res!1177613 () Bool)

(declare-fun e!1790382 () Bool)

(assert (=> d!820917 (=> (not res!1177613) (not e!1790382))))

(assert (=> d!820917 (= res!1177613 (<= (size!25875 (list!12452 (xs!13424 (c!457542 v!6247)))) 512))))

(assert (=> d!820917 (= (inv!45199 (c!457542 v!6247)) e!1790382)))

(declare-fun b!2828625 () Bool)

(declare-fun res!1177614 () Bool)

(assert (=> b!2828625 (=> (not res!1177614) (not e!1790382))))

(assert (=> b!2828625 (= res!1177614 (= (csize!20855 (c!457542 v!6247)) (size!25875 (list!12452 (xs!13424 (c!457542 v!6247))))))))

(declare-fun b!2828626 () Bool)

(assert (=> b!2828626 (= e!1790382 (and (> (csize!20855 (c!457542 v!6247)) 0) (<= (csize!20855 (c!457542 v!6247)) 512)))))

(assert (= (and d!820917 res!1177613) b!2828625))

(assert (= (and b!2828625 res!1177614) b!2828626))

(assert (=> d!820917 m!3258009))

(assert (=> d!820917 m!3258009))

(declare-fun m!3258111 () Bool)

(assert (=> d!820917 m!3258111))

(assert (=> b!2828625 m!3258009))

(assert (=> b!2828625 m!3258009))

(assert (=> b!2828625 m!3258111))

(assert (=> b!2828240 d!820917))

(declare-fun d!820919 () Bool)

(declare-fun lt!1008836 () Token!9358)

(assert (=> d!820919 (contains!6061 (list!12445 v!6247) lt!1008836)))

(declare-fun e!1790384 () Token!9358)

(assert (=> d!820919 (= lt!1008836 e!1790384)))

(declare-fun c!457673 () Bool)

(assert (=> d!820919 (= c!457673 (= from!827 0))))

(declare-fun e!1790383 () Bool)

(assert (=> d!820919 e!1790383))

(declare-fun res!1177615 () Bool)

(assert (=> d!820919 (=> (not res!1177615) (not e!1790383))))

(assert (=> d!820919 (= res!1177615 (<= 0 from!827))))

(assert (=> d!820919 (= (apply!7754 (list!12445 v!6247) from!827) lt!1008836)))

(declare-fun b!2828627 () Bool)

(assert (=> b!2828627 (= e!1790383 (< from!827 (size!25875 (list!12445 v!6247))))))

(declare-fun b!2828628 () Bool)

(assert (=> b!2828628 (= e!1790384 (head!6232 (list!12445 v!6247)))))

(declare-fun b!2828629 () Bool)

(assert (=> b!2828629 (= e!1790384 (apply!7754 (tail!4457 (list!12445 v!6247)) (- from!827 1)))))

(assert (= (and d!820919 res!1177615) b!2828627))

(assert (= (and d!820919 c!457673) b!2828628))

(assert (= (and d!820919 (not c!457673)) b!2828629))

(assert (=> d!820919 m!3257371))

(declare-fun m!3258113 () Bool)

(assert (=> d!820919 m!3258113))

(assert (=> b!2828627 m!3257371))

(assert (=> b!2828627 m!3257775))

(assert (=> b!2828628 m!3257371))

(assert (=> b!2828628 m!3258075))

(assert (=> b!2828629 m!3257371))

(assert (=> b!2828629 m!3258077))

(assert (=> b!2828629 m!3258077))

(declare-fun m!3258115 () Bool)

(assert (=> b!2828629 m!3258115))

(assert (=> d!820719 d!820919))

(assert (=> d!820719 d!820727))

(declare-fun b!2828630 () Bool)

(declare-fun e!1790387 () Int)

(assert (=> b!2828630 (= e!1790387 from!827)))

(declare-fun bm!183259 () Bool)

(declare-fun c!457674 () Bool)

(declare-fun c!457675 () Bool)

(assert (=> bm!183259 (= c!457674 c!457675)))

(declare-fun call!183264 () Token!9358)

(assert (=> bm!183259 (= call!183264 (apply!7757 (ite c!457675 (left!25108 (c!457542 v!6247)) (right!25438 (c!457542 v!6247))) e!1790387))))

(declare-fun b!2828631 () Bool)

(declare-fun e!1790388 () Token!9358)

(assert (=> b!2828631 (= e!1790388 call!183264)))

(declare-fun b!2828632 () Bool)

(declare-fun e!1790385 () Bool)

(assert (=> b!2828632 (= e!1790385 (< from!827 (size!25876 (c!457542 v!6247))))))

(declare-fun b!2828634 () Bool)

(declare-fun e!1790386 () Token!9358)

(assert (=> b!2828634 (= e!1790386 e!1790388)))

(declare-fun lt!1008840 () Bool)

(assert (=> b!2828634 (= lt!1008840 (appendIndex!292 (list!12448 (left!25108 (c!457542 v!6247))) (list!12448 (right!25438 (c!457542 v!6247))) from!827))))

(assert (=> b!2828634 (= c!457675 (< from!827 (size!25876 (left!25108 (c!457542 v!6247)))))))

(declare-fun b!2828635 () Bool)

(assert (=> b!2828635 (= e!1790386 (apply!7759 (xs!13424 (c!457542 v!6247)) from!827))))

(declare-fun b!2828636 () Bool)

(assert (=> b!2828636 (= e!1790387 (- from!827 (size!25876 (left!25108 (c!457542 v!6247)))))))

(declare-fun b!2828633 () Bool)

(assert (=> b!2828633 (= e!1790388 call!183264)))

(declare-fun d!820921 () Bool)

(declare-fun lt!1008839 () Token!9358)

(assert (=> d!820921 (= lt!1008839 (apply!7754 (list!12448 (c!457542 v!6247)) from!827))))

(assert (=> d!820921 (= lt!1008839 e!1790386)))

(declare-fun c!457676 () Bool)

(assert (=> d!820921 (= c!457676 (is-Leaf!15709 (c!457542 v!6247)))))

(assert (=> d!820921 e!1790385))

(declare-fun res!1177616 () Bool)

(assert (=> d!820921 (=> (not res!1177616) (not e!1790385))))

(assert (=> d!820921 (= res!1177616 (<= 0 from!827))))

(assert (=> d!820921 (= (apply!7757 (c!457542 v!6247) from!827) lt!1008839)))

(assert (= (and d!820921 res!1177616) b!2828632))

(assert (= (and d!820921 c!457676) b!2828635))

(assert (= (and d!820921 (not c!457676)) b!2828634))

(assert (= (and b!2828634 c!457675) b!2828633))

(assert (= (and b!2828634 (not c!457675)) b!2828631))

(assert (= (or b!2828633 b!2828631) bm!183259))

(assert (= (and bm!183259 c!457674) b!2828630))

(assert (= (and bm!183259 (not c!457674)) b!2828636))

(declare-fun m!3258117 () Bool)

(assert (=> b!2828635 m!3258117))

(declare-fun m!3258119 () Bool)

(assert (=> bm!183259 m!3258119))

(assert (=> b!2828632 m!3257777))

(assert (=> b!2828636 m!3258085))

(assert (=> b!2828634 m!3258003))

(assert (=> b!2828634 m!3258005))

(assert (=> b!2828634 m!3258003))

(assert (=> b!2828634 m!3258005))

(declare-fun m!3258121 () Bool)

(assert (=> b!2828634 m!3258121))

(assert (=> b!2828634 m!3258085))

(assert (=> d!820921 m!3257685))

(assert (=> d!820921 m!3257685))

(declare-fun m!3258123 () Bool)

(assert (=> d!820921 m!3258123))

(assert (=> d!820719 d!820921))

(assert (=> b!2828255 d!820763))

(declare-fun d!820923 () Bool)

(declare-fun lt!1008841 () Int)

(assert (=> d!820923 (>= lt!1008841 0)))

(declare-fun e!1790395 () Int)

(assert (=> d!820923 (= lt!1008841 e!1790395)))

(declare-fun c!457679 () Bool)

(assert (=> d!820923 (= c!457679 (is-Nil!33239 lt!1008717))))

(assert (=> d!820923 (= (size!25875 lt!1008717) lt!1008841)))

(declare-fun b!2828647 () Bool)

(assert (=> b!2828647 (= e!1790395 0)))

(declare-fun b!2828648 () Bool)

(assert (=> b!2828648 (= e!1790395 (+ 1 (size!25875 (t!231162 lt!1008717))))))

(assert (= (and d!820923 c!457679) b!2828647))

(assert (= (and d!820923 (not c!457679)) b!2828648))

(declare-fun m!3258125 () Bool)

(assert (=> b!2828648 m!3258125))

(assert (=> b!2828172 d!820923))

(declare-fun d!820925 () Bool)

(assert (=> d!820925 (= (head!6232 (drop!1781 lt!1008618 (+ 1 from!827))) (h!38659 (drop!1781 lt!1008618 (+ 1 from!827))))))

(assert (=> d!820731 d!820925))

(assert (=> d!820731 d!820711))

(assert (=> d!820731 d!820733))

(declare-fun d!820927 () Bool)

(assert (=> d!820927 (= (head!6232 (drop!1781 lt!1008618 (+ 1 from!827))) (apply!7754 lt!1008618 (+ 1 from!827)))))

(assert (=> d!820927 true))

(declare-fun _$27!847 () Unit!47289)

(assert (=> d!820927 (= (choose!16709 lt!1008618 (+ 1 from!827)) _$27!847)))

(declare-fun bs!518158 () Bool)

(assert (= bs!518158 d!820927))

(assert (=> bs!518158 m!3257385))

(assert (=> bs!518158 m!3257385))

(assert (=> bs!518158 m!3257687))

(assert (=> bs!518158 m!3257381))

(assert (=> d!820731 d!820927))

(assert (=> b!2828195 d!820791))

(declare-fun b!2828649 () Bool)

(declare-fun e!1790399 () Int)

(declare-fun call!183265 () Int)

(assert (=> b!2828649 (= e!1790399 call!183265)))

(declare-fun b!2828650 () Bool)

(declare-fun e!1790398 () Bool)

(declare-fun lt!1008842 () List!33363)

(assert (=> b!2828650 (= e!1790398 (= (size!25875 lt!1008842) e!1790399))))

(declare-fun c!457683 () Bool)

(assert (=> b!2828650 (= c!457683 (<= (- (+ 2 from!827) 1) 0))))

(declare-fun b!2828651 () Bool)

(declare-fun e!1790397 () Int)

(assert (=> b!2828651 (= e!1790397 (- call!183265 (- (+ 2 from!827) 1)))))

(declare-fun b!2828652 () Bool)

(declare-fun e!1790400 () List!33363)

(assert (=> b!2828652 (= e!1790400 (drop!1781 (t!231162 (t!231162 lt!1008618)) (- (- (+ 2 from!827) 1) 1)))))

(declare-fun d!820929 () Bool)

(assert (=> d!820929 e!1790398))

(declare-fun res!1177623 () Bool)

(assert (=> d!820929 (=> (not res!1177623) (not e!1790398))))

(assert (=> d!820929 (= res!1177623 (set.subset (content!4631 lt!1008842) (content!4631 (t!231162 lt!1008618))))))

(declare-fun e!1790396 () List!33363)

(assert (=> d!820929 (= lt!1008842 e!1790396)))

(declare-fun c!457681 () Bool)

(assert (=> d!820929 (= c!457681 (is-Nil!33239 (t!231162 lt!1008618)))))

(assert (=> d!820929 (= (drop!1781 (t!231162 lt!1008618) (- (+ 2 from!827) 1)) lt!1008842)))

(declare-fun b!2828653 () Bool)

(assert (=> b!2828653 (= e!1790400 (t!231162 lt!1008618))))

(declare-fun b!2828654 () Bool)

(assert (=> b!2828654 (= e!1790396 Nil!33239)))

(declare-fun b!2828655 () Bool)

(assert (=> b!2828655 (= e!1790399 e!1790397)))

(declare-fun c!457682 () Bool)

(assert (=> b!2828655 (= c!457682 (>= (- (+ 2 from!827) 1) call!183265))))

(declare-fun b!2828656 () Bool)

(assert (=> b!2828656 (= e!1790397 0)))

(declare-fun b!2828657 () Bool)

(assert (=> b!2828657 (= e!1790396 e!1790400)))

(declare-fun c!457680 () Bool)

(assert (=> b!2828657 (= c!457680 (<= (- (+ 2 from!827) 1) 0))))

(declare-fun bm!183260 () Bool)

(assert (=> bm!183260 (= call!183265 (size!25875 (t!231162 lt!1008618)))))

(assert (= (and d!820929 c!457681) b!2828654))

(assert (= (and d!820929 (not c!457681)) b!2828657))

(assert (= (and b!2828657 c!457680) b!2828653))

(assert (= (and b!2828657 (not c!457680)) b!2828652))

(assert (= (and d!820929 res!1177623) b!2828650))

(assert (= (and b!2828650 c!457683) b!2828649))

(assert (= (and b!2828650 (not c!457683)) b!2828655))

(assert (= (and b!2828655 c!457682) b!2828656))

(assert (= (and b!2828655 (not c!457682)) b!2828651))

(assert (= (or b!2828649 b!2828655 b!2828651) bm!183260))

(declare-fun m!3258127 () Bool)

(assert (=> b!2828650 m!3258127))

(declare-fun m!3258129 () Bool)

(assert (=> b!2828652 m!3258129))

(declare-fun m!3258131 () Bool)

(assert (=> d!820929 m!3258131))

(assert (=> d!820929 m!3257847))

(assert (=> bm!183260 m!3257849))

(assert (=> b!2828174 d!820929))

(assert (=> b!2828133 d!820791))

(assert (=> d!820753 d!820789))

(declare-fun d!820931 () Bool)

(assert (=> d!820931 (= (list!12445 (singletonSeq!2154 lt!1008610)) (list!12448 (c!457542 (singletonSeq!2154 lt!1008610))))))

(declare-fun bs!518159 () Bool)

(assert (= bs!518159 d!820931))

(declare-fun m!3258133 () Bool)

(assert (=> bs!518159 m!3258133))

(assert (=> d!820693 d!820931))

(assert (=> d!820693 d!820755))

(declare-fun d!820933 () Bool)

(declare-fun e!1790405 () Bool)

(assert (=> d!820933 e!1790405))

(declare-fun res!1177627 () Bool)

(assert (=> d!820933 (=> (not res!1177627) (not e!1790405))))

(declare-fun e!1790406 () Bool)

(assert (=> d!820933 (= res!1177627 e!1790406)))

(declare-fun c!457685 () Bool)

(declare-fun lt!1008844 () tuple2!33426)

(assert (=> d!820933 (= c!457685 (> (size!25869 (_1!19806 lt!1008844)) 0))))

(assert (=> d!820933 (= lt!1008844 (lexTailRecV2!887 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610)) (BalanceConc!20261 Empty!10311) (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610)) (BalanceConc!20263 Empty!10312)))))

(assert (=> d!820933 (= (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610))) lt!1008844)))

(declare-fun b!2828663 () Bool)

(assert (=> b!2828663 (= e!1790406 (= (_2!19806 lt!1008844) (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610))))))

(declare-fun b!2828664 () Bool)

(declare-fun e!1790404 () Bool)

(assert (=> b!2828664 (= e!1790406 e!1790404)))

(declare-fun res!1177628 () Bool)

(assert (=> b!2828664 (= res!1177628 (< (size!25868 (_2!19806 lt!1008844)) (size!25868 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610)))))))

(assert (=> b!2828664 (=> (not res!1177628) (not e!1790404))))

(declare-fun b!2828665 () Bool)

(assert (=> b!2828665 (= e!1790405 (= (list!12447 (_2!19806 lt!1008844)) (_2!19808 (lexList!1249 thiss!11212 rules!1102 (list!12447 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610)))))))))

(declare-fun b!2828666 () Bool)

(declare-fun res!1177629 () Bool)

(assert (=> b!2828666 (=> (not res!1177629) (not e!1790405))))

(assert (=> b!2828666 (= res!1177629 (= (list!12445 (_1!19806 lt!1008844)) (_1!19808 (lexList!1249 thiss!11212 rules!1102 (list!12447 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610)))))))))

(declare-fun b!2828667 () Bool)

(assert (=> b!2828667 (= e!1790404 (not (isEmpty!18376 (_1!19806 lt!1008844))))))

(assert (= (and d!820933 c!457685) b!2828664))

(assert (= (and d!820933 (not c!457685)) b!2828663))

(assert (= (and b!2828664 res!1177628) b!2828667))

(assert (= (and d!820933 res!1177627) b!2828666))

(assert (= (and b!2828666 res!1177629) b!2828665))

(declare-fun m!3258153 () Bool)

(assert (=> b!2828664 m!3258153))

(assert (=> b!2828664 m!3257599))

(declare-fun m!3258155 () Bool)

(assert (=> b!2828664 m!3258155))

(declare-fun m!3258157 () Bool)

(assert (=> b!2828665 m!3258157))

(assert (=> b!2828665 m!3257599))

(declare-fun m!3258159 () Bool)

(assert (=> b!2828665 m!3258159))

(assert (=> b!2828665 m!3258159))

(declare-fun m!3258161 () Bool)

(assert (=> b!2828665 m!3258161))

(declare-fun m!3258163 () Bool)

(assert (=> b!2828666 m!3258163))

(assert (=> b!2828666 m!3257599))

(assert (=> b!2828666 m!3258159))

(assert (=> b!2828666 m!3258159))

(assert (=> b!2828666 m!3258161))

(declare-fun m!3258165 () Bool)

(assert (=> b!2828667 m!3258165))

(declare-fun m!3258167 () Bool)

(assert (=> d!820933 m!3258167))

(assert (=> d!820933 m!3257599))

(assert (=> d!820933 m!3257599))

(declare-fun m!3258169 () Bool)

(assert (=> d!820933 m!3258169))

(assert (=> d!820693 d!820933))

(declare-fun d!820937 () Bool)

(declare-fun lt!1008845 () BalanceConc!20260)

(assert (=> d!820937 (= (list!12447 lt!1008845) (printList!1223 thiss!11212 (list!12445 (singletonSeq!2154 lt!1008610))))))

(assert (=> d!820937 (= lt!1008845 (printTailRec!1166 thiss!11212 (singletonSeq!2154 lt!1008610) 0 (BalanceConc!20261 Empty!10311)))))

(assert (=> d!820937 (= (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610)) lt!1008845)))

(declare-fun bs!518160 () Bool)

(assert (= bs!518160 d!820937))

(declare-fun m!3258171 () Bool)

(assert (=> bs!518160 m!3258171))

(assert (=> bs!518160 m!3257595))

(assert (=> bs!518160 m!3257597))

(assert (=> bs!518160 m!3257597))

(declare-fun m!3258173 () Bool)

(assert (=> bs!518160 m!3258173))

(assert (=> bs!518160 m!3257595))

(declare-fun m!3258175 () Bool)

(assert (=> bs!518160 m!3258175))

(assert (=> d!820693 d!820937))

(declare-fun d!820939 () Bool)

(declare-fun e!1790407 () Bool)

(assert (=> d!820939 e!1790407))

(declare-fun res!1177630 () Bool)

(assert (=> d!820939 (=> (not res!1177630) (not e!1790407))))

(declare-fun lt!1008846 () BalanceConc!20262)

(assert (=> d!820939 (= res!1177630 (= (list!12445 lt!1008846) (Cons!33239 lt!1008610 Nil!33239)))))

(assert (=> d!820939 (= lt!1008846 (singleton!943 lt!1008610))))

(assert (=> d!820939 (= (singletonSeq!2154 lt!1008610) lt!1008846)))

(declare-fun b!2828668 () Bool)

(assert (=> b!2828668 (= e!1790407 (isBalanced!3118 (c!457542 lt!1008846)))))

(assert (= (and d!820939 res!1177630) b!2828668))

(declare-fun m!3258177 () Bool)

(assert (=> d!820939 m!3258177))

(declare-fun m!3258179 () Bool)

(assert (=> d!820939 m!3258179))

(declare-fun m!3258181 () Bool)

(assert (=> b!2828668 m!3258181))

(assert (=> d!820693 d!820939))

(declare-fun d!820941 () Bool)

(declare-fun lt!1008847 () Int)

(assert (=> d!820941 (= lt!1008847 (size!25875 (list!12445 (_1!19806 lt!1008692))))))

(assert (=> d!820941 (= lt!1008847 (size!25876 (c!457542 (_1!19806 lt!1008692))))))

(assert (=> d!820941 (= (size!25869 (_1!19806 lt!1008692)) lt!1008847)))

(declare-fun bs!518161 () Bool)

(assert (= bs!518161 d!820941))

(declare-fun m!3258183 () Bool)

(assert (=> bs!518161 m!3258183))

(assert (=> bs!518161 m!3258183))

(declare-fun m!3258185 () Bool)

(assert (=> bs!518161 m!3258185))

(declare-fun m!3258187 () Bool)

(assert (=> bs!518161 m!3258187))

(assert (=> d!820693 d!820941))

(declare-fun d!820943 () Bool)

(assert (=> d!820943 (= (list!12445 (_1!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610))))) (list!12448 (c!457542 (_1!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610)))))))))

(declare-fun bs!518162 () Bool)

(assert (= bs!518162 d!820943))

(declare-fun m!3258189 () Bool)

(assert (=> bs!518162 m!3258189))

(assert (=> d!820693 d!820943))

(assert (=> bm!183249 d!820791))

(declare-fun d!820945 () Bool)

(declare-fun lt!1008848 () Bool)

(assert (=> d!820945 (= lt!1008848 (isEmpty!18371 (list!12447 (_2!19806 lt!1008690))))))

(assert (=> d!820945 (= lt!1008848 (isEmpty!18372 (c!457541 (_2!19806 lt!1008690))))))

(assert (=> d!820945 (= (isEmpty!18367 (_2!19806 lt!1008690)) lt!1008848)))

(declare-fun bs!518163 () Bool)

(assert (= bs!518163 d!820945))

(declare-fun m!3258191 () Bool)

(assert (=> bs!518163 m!3258191))

(assert (=> bs!518163 m!3258191))

(declare-fun m!3258193 () Bool)

(assert (=> bs!518163 m!3258193))

(declare-fun m!3258195 () Bool)

(assert (=> bs!518163 m!3258195))

(assert (=> b!2828121 d!820945))

(declare-fun d!820947 () Bool)

(assert (=> d!820947 (= (inv!45200 (xs!13424 (c!457542 v!6247))) (<= (size!25875 (innerList!10372 (xs!13424 (c!457542 v!6247)))) 2147483647))))

(declare-fun bs!518164 () Bool)

(assert (= bs!518164 d!820947))

(declare-fun m!3258197 () Bool)

(assert (=> bs!518164 m!3258197))

(assert (=> b!2828279 d!820947))

(declare-fun d!820949 () Bool)

(assert (=> d!820949 (= (head!6232 (drop!1781 lt!1008618 from!827)) (h!38659 (drop!1781 lt!1008618 from!827)))))

(assert (=> d!820723 d!820949))

(assert (=> d!820723 d!820721))

(assert (=> d!820723 d!820707))

(declare-fun d!820951 () Bool)

(assert (=> d!820951 (= (head!6232 (drop!1781 lt!1008618 from!827)) (apply!7754 lt!1008618 from!827))))

(assert (=> d!820951 true))

(declare-fun _$27!848 () Unit!47289)

(assert (=> d!820951 (= (choose!16709 lt!1008618 from!827) _$27!848)))

(declare-fun bs!518165 () Bool)

(assert (= bs!518165 d!820951))

(assert (=> bs!518165 m!3257377))

(assert (=> bs!518165 m!3257377))

(assert (=> bs!518165 m!3257681))

(assert (=> bs!518165 m!3257367))

(assert (=> d!820723 d!820951))

(assert (=> bm!183250 d!820791))

(declare-fun d!820953 () Bool)

(assert (=> d!820953 (= (tail!4457 (drop!1781 lt!1008618 (+ 1 from!827))) (t!231162 (drop!1781 lt!1008618 (+ 1 from!827))))))

(assert (=> d!820709 d!820953))

(assert (=> d!820709 d!820711))

(declare-fun b!2828669 () Bool)

(declare-fun e!1790411 () Int)

(declare-fun call!183266 () Int)

(assert (=> b!2828669 (= e!1790411 call!183266)))

(declare-fun b!2828670 () Bool)

(declare-fun e!1790410 () Bool)

(declare-fun lt!1008849 () List!33363)

(assert (=> b!2828670 (= e!1790410 (= (size!25875 lt!1008849) e!1790411))))

(declare-fun c!457689 () Bool)

(assert (=> b!2828670 (= c!457689 (<= (+ 1 from!827 1) 0))))

(declare-fun b!2828671 () Bool)

(declare-fun e!1790409 () Int)

(assert (=> b!2828671 (= e!1790409 (- call!183266 (+ 1 from!827 1)))))

(declare-fun b!2828672 () Bool)

(declare-fun e!1790412 () List!33363)

(assert (=> b!2828672 (= e!1790412 (drop!1781 (t!231162 lt!1008618) (- (+ 1 from!827 1) 1)))))

(declare-fun d!820955 () Bool)

(assert (=> d!820955 e!1790410))

(declare-fun res!1177631 () Bool)

(assert (=> d!820955 (=> (not res!1177631) (not e!1790410))))

(assert (=> d!820955 (= res!1177631 (set.subset (content!4631 lt!1008849) (content!4631 lt!1008618)))))

(declare-fun e!1790408 () List!33363)

(assert (=> d!820955 (= lt!1008849 e!1790408)))

(declare-fun c!457687 () Bool)

(assert (=> d!820955 (= c!457687 (is-Nil!33239 lt!1008618))))

(assert (=> d!820955 (= (drop!1781 lt!1008618 (+ 1 from!827 1)) lt!1008849)))

(declare-fun b!2828673 () Bool)

(assert (=> b!2828673 (= e!1790412 lt!1008618)))

(declare-fun b!2828674 () Bool)

(assert (=> b!2828674 (= e!1790408 Nil!33239)))

(declare-fun b!2828675 () Bool)

(assert (=> b!2828675 (= e!1790411 e!1790409)))

(declare-fun c!457688 () Bool)

(assert (=> b!2828675 (= c!457688 (>= (+ 1 from!827 1) call!183266))))

(declare-fun b!2828676 () Bool)

(assert (=> b!2828676 (= e!1790409 0)))

(declare-fun b!2828677 () Bool)

(assert (=> b!2828677 (= e!1790408 e!1790412)))

(declare-fun c!457686 () Bool)

(assert (=> b!2828677 (= c!457686 (<= (+ 1 from!827 1) 0))))

(declare-fun bm!183261 () Bool)

(assert (=> bm!183261 (= call!183266 (size!25875 lt!1008618))))

(assert (= (and d!820955 c!457687) b!2828674))

(assert (= (and d!820955 (not c!457687)) b!2828677))

(assert (= (and b!2828677 c!457686) b!2828673))

(assert (= (and b!2828677 (not c!457686)) b!2828672))

(assert (= (and d!820955 res!1177631) b!2828670))

(assert (= (and b!2828670 c!457689) b!2828669))

(assert (= (and b!2828670 (not c!457689)) b!2828675))

(assert (= (and b!2828675 c!457688) b!2828676))

(assert (= (and b!2828675 (not c!457688)) b!2828671))

(assert (= (or b!2828669 b!2828675 b!2828671) bm!183261))

(declare-fun m!3258199 () Bool)

(assert (=> b!2828670 m!3258199))

(declare-fun m!3258201 () Bool)

(assert (=> b!2828672 m!3258201))

(declare-fun m!3258203 () Bool)

(assert (=> d!820955 m!3258203))

(assert (=> d!820955 m!3257659))

(assert (=> bm!183261 m!3257637))

(assert (=> d!820709 d!820955))

(declare-fun d!820957 () Bool)

(assert (=> d!820957 (= (tail!4457 (drop!1781 lt!1008618 (+ 1 from!827))) (drop!1781 lt!1008618 (+ 1 from!827 1)))))

(assert (=> d!820957 true))

(declare-fun _$28!595 () Unit!47289)

(assert (=> d!820957 (= (choose!16708 lt!1008618 (+ 1 from!827)) _$28!595)))

(declare-fun bs!518166 () Bool)

(assert (= bs!518166 d!820957))

(assert (=> bs!518166 m!3257385))

(assert (=> bs!518166 m!3257385))

(assert (=> bs!518166 m!3257647))

(assert (=> bs!518166 m!3257649))

(assert (=> d!820709 d!820957))

(declare-fun d!820959 () Bool)

(declare-fun lt!1008850 () Bool)

(assert (=> d!820959 (= lt!1008850 (set.member lt!1008614 (content!4631 (t!231162 lt!1008618))))))

(declare-fun e!1790414 () Bool)

(assert (=> d!820959 (= lt!1008850 e!1790414)))

(declare-fun res!1177633 () Bool)

(assert (=> d!820959 (=> (not res!1177633) (not e!1790414))))

(assert (=> d!820959 (= res!1177633 (is-Cons!33239 (t!231162 lt!1008618)))))

(assert (=> d!820959 (= (contains!6061 (t!231162 lt!1008618) lt!1008614) lt!1008850)))

(declare-fun b!2828678 () Bool)

(declare-fun e!1790413 () Bool)

(assert (=> b!2828678 (= e!1790414 e!1790413)))

(declare-fun res!1177632 () Bool)

(assert (=> b!2828678 (=> res!1177632 e!1790413)))

(assert (=> b!2828678 (= res!1177632 (= (h!38659 (t!231162 lt!1008618)) lt!1008614))))

(declare-fun b!2828679 () Bool)

(assert (=> b!2828679 (= e!1790413 (contains!6061 (t!231162 (t!231162 lt!1008618)) lt!1008614))))

(assert (= (and d!820959 res!1177633) b!2828678))

(assert (= (and b!2828678 (not res!1177632)) b!2828679))

(assert (=> d!820959 m!3257847))

(declare-fun m!3258205 () Bool)

(assert (=> d!820959 m!3258205))

(declare-fun m!3258207 () Bool)

(assert (=> b!2828679 m!3258207))

(assert (=> b!2828246 d!820959))

(assert (=> b!2828143 d!820791))

(declare-fun d!820961 () Bool)

(declare-fun lt!1008851 () Bool)

(assert (=> d!820961 (= lt!1008851 (set.member lt!1008726 (content!4631 lt!1008618)))))

(declare-fun e!1790416 () Bool)

(assert (=> d!820961 (= lt!1008851 e!1790416)))

(declare-fun res!1177635 () Bool)

(assert (=> d!820961 (=> (not res!1177635) (not e!1790416))))

(assert (=> d!820961 (= res!1177635 (is-Cons!33239 lt!1008618))))

(assert (=> d!820961 (= (contains!6061 lt!1008618 lt!1008726) lt!1008851)))

(declare-fun b!2828680 () Bool)

(declare-fun e!1790415 () Bool)

(assert (=> b!2828680 (= e!1790416 e!1790415)))

(declare-fun res!1177634 () Bool)

(assert (=> b!2828680 (=> res!1177634 e!1790415)))

(assert (=> b!2828680 (= res!1177634 (= (h!38659 lt!1008618) lt!1008726))))

(declare-fun b!2828681 () Bool)

(assert (=> b!2828681 (= e!1790415 (contains!6061 (t!231162 lt!1008618) lt!1008726))))

(assert (= (and d!820961 res!1177635) b!2828680))

(assert (= (and b!2828680 (not res!1177634)) b!2828681))

(assert (=> d!820961 m!3257659))

(declare-fun m!3258209 () Bool)

(assert (=> d!820961 m!3258209))

(declare-fun m!3258211 () Bool)

(assert (=> b!2828681 m!3258211))

(assert (=> d!820733 d!820961))

(declare-fun d!820963 () Bool)

(declare-fun lt!1008852 () Bool)

(assert (=> d!820963 (= lt!1008852 (isEmpty!18371 (list!12447 (_2!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610)))))))))

(assert (=> d!820963 (= lt!1008852 (isEmpty!18372 (c!457541 (_2!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610)))))))))

(assert (=> d!820963 (= (isEmpty!18367 (_2!19806 (lex!2009 thiss!11212 rules!1102 (print!1728 thiss!11212 (singletonSeq!2154 lt!1008610))))) lt!1008852)))

(declare-fun bs!518167 () Bool)

(assert (= bs!518167 d!820963))

(declare-fun m!3258213 () Bool)

(assert (=> bs!518167 m!3258213))

(assert (=> bs!518167 m!3258213))

(declare-fun m!3258215 () Bool)

(assert (=> bs!518167 m!3258215))

(declare-fun m!3258217 () Bool)

(assert (=> bs!518167 m!3258217))

(assert (=> b!2828125 d!820963))

(assert (=> b!2828125 d!820933))

(assert (=> b!2828125 d!820937))

(assert (=> b!2828125 d!820939))

(declare-fun d!820965 () Bool)

(declare-fun lt!1008853 () Bool)

(assert (=> d!820965 (= lt!1008853 (set.member lt!1008614 (content!4631 (list!12445 v!6247))))))

(declare-fun e!1790418 () Bool)

(assert (=> d!820965 (= lt!1008853 e!1790418)))

(declare-fun res!1177637 () Bool)

(assert (=> d!820965 (=> (not res!1177637) (not e!1790418))))

(assert (=> d!820965 (= res!1177637 (is-Cons!33239 (list!12445 v!6247)))))

(assert (=> d!820965 (= (contains!6061 (list!12445 v!6247) lt!1008614) lt!1008853)))

(declare-fun b!2828682 () Bool)

(declare-fun e!1790417 () Bool)

(assert (=> b!2828682 (= e!1790418 e!1790417)))

(declare-fun res!1177636 () Bool)

(assert (=> b!2828682 (=> res!1177636 e!1790417)))

(assert (=> b!2828682 (= res!1177636 (= (h!38659 (list!12445 v!6247)) lt!1008614))))

(declare-fun b!2828683 () Bool)

(assert (=> b!2828683 (= e!1790417 (contains!6061 (t!231162 (list!12445 v!6247)) lt!1008614))))

(assert (= (and d!820965 res!1177637) b!2828682))

(assert (= (and b!2828682 (not res!1177636)) b!2828683))

(assert (=> d!820965 m!3257371))

(assert (=> d!820965 m!3258011))

(declare-fun m!3258219 () Bool)

(assert (=> d!820965 m!3258219))

(declare-fun m!3258221 () Bool)

(assert (=> b!2828683 m!3258221))

(assert (=> d!820713 d!820965))

(assert (=> d!820713 d!820727))

(declare-fun b!2828686 () Bool)

(declare-fun e!1790421 () Bool)

(declare-fun e!1790420 () Bool)

(assert (=> b!2828686 (= e!1790421 e!1790420)))

(declare-fun res!1177639 () Bool)

(assert (=> b!2828686 (= res!1177639 (contains!6065 (left!25108 (c!457542 v!6247)) lt!1008614))))

(assert (=> b!2828686 (=> res!1177639 e!1790420)))

(declare-fun b!2828684 () Bool)

(declare-fun e!1790419 () Bool)

(assert (=> b!2828684 (= e!1790419 e!1790421)))

(declare-fun c!457690 () Bool)

(assert (=> b!2828684 (= c!457690 (is-Leaf!15709 (c!457542 v!6247)))))

(declare-fun b!2828687 () Bool)

(assert (=> b!2828687 (= e!1790420 (contains!6065 (right!25438 (c!457542 v!6247)) lt!1008614))))

(declare-fun b!2828685 () Bool)

(assert (=> b!2828685 (= e!1790421 (contains!6067 (xs!13424 (c!457542 v!6247)) lt!1008614))))

(declare-fun d!820967 () Bool)

(declare-fun lt!1008854 () Bool)

(assert (=> d!820967 (= lt!1008854 (contains!6061 (list!12448 (c!457542 v!6247)) lt!1008614))))

(assert (=> d!820967 (= lt!1008854 e!1790419)))

(declare-fun res!1177638 () Bool)

(assert (=> d!820967 (=> (not res!1177638) (not e!1790419))))

(assert (=> d!820967 (= res!1177638 (not (is-Empty!10312 (c!457542 v!6247))))))

(assert (=> d!820967 (= (contains!6065 (c!457542 v!6247) lt!1008614) lt!1008854)))

(assert (= (and d!820967 res!1177638) b!2828684))

(assert (= (and b!2828684 c!457690) b!2828685))

(assert (= (and b!2828684 (not c!457690)) b!2828686))

(assert (= (and b!2828686 (not res!1177639)) b!2828687))

(declare-fun m!3258223 () Bool)

(assert (=> b!2828686 m!3258223))

(declare-fun m!3258225 () Bool)

(assert (=> b!2828687 m!3258225))

(declare-fun m!3258227 () Bool)

(assert (=> b!2828685 m!3258227))

(assert (=> d!820967 m!3257685))

(assert (=> d!820967 m!3257685))

(declare-fun m!3258229 () Bool)

(assert (=> d!820967 m!3258229))

(assert (=> d!820713 d!820967))

(declare-fun d!820969 () Bool)

(declare-fun lt!1008855 () Token!9358)

(assert (=> d!820969 (= lt!1008855 (apply!7754 (list!12445 (_1!19806 lt!1008692)) 0))))

(assert (=> d!820969 (= lt!1008855 (apply!7757 (c!457542 (_1!19806 lt!1008692)) 0))))

(declare-fun e!1790422 () Bool)

(assert (=> d!820969 e!1790422))

(declare-fun res!1177640 () Bool)

(assert (=> d!820969 (=> (not res!1177640) (not e!1790422))))

(assert (=> d!820969 (= res!1177640 (<= 0 0))))

(assert (=> d!820969 (= (apply!7753 (_1!19806 lt!1008692) 0) lt!1008855)))

(declare-fun b!2828688 () Bool)

(assert (=> b!2828688 (= e!1790422 (< 0 (size!25869 (_1!19806 lt!1008692))))))

(assert (= (and d!820969 res!1177640) b!2828688))

(assert (=> d!820969 m!3258183))

(assert (=> d!820969 m!3258183))

(declare-fun m!3258231 () Bool)

(assert (=> d!820969 m!3258231))

(declare-fun m!3258233 () Bool)

(assert (=> d!820969 m!3258233))

(assert (=> b!2828688 m!3257603))

(assert (=> b!2828123 d!820969))

(declare-fun d!820971 () Bool)

(declare-fun lt!1008856 () Bool)

(assert (=> d!820971 (= lt!1008856 (set.member lt!1008709 (content!4631 lt!1008618)))))

(declare-fun e!1790424 () Bool)

(assert (=> d!820971 (= lt!1008856 e!1790424)))

(declare-fun res!1177642 () Bool)

(assert (=> d!820971 (=> (not res!1177642) (not e!1790424))))

(assert (=> d!820971 (= res!1177642 (is-Cons!33239 lt!1008618))))

(assert (=> d!820971 (= (contains!6061 lt!1008618 lt!1008709) lt!1008856)))

(declare-fun b!2828689 () Bool)

(declare-fun e!1790423 () Bool)

(assert (=> b!2828689 (= e!1790424 e!1790423)))

(declare-fun res!1177641 () Bool)

(assert (=> b!2828689 (=> res!1177641 e!1790423)))

(assert (=> b!2828689 (= res!1177641 (= (h!38659 lt!1008618) lt!1008709))))

(declare-fun b!2828690 () Bool)

(assert (=> b!2828690 (= e!1790423 (contains!6061 (t!231162 lt!1008618) lt!1008709))))

(assert (= (and d!820971 res!1177642) b!2828689))

(assert (= (and b!2828689 (not res!1177641)) b!2828690))

(assert (=> d!820971 m!3257659))

(declare-fun m!3258235 () Bool)

(assert (=> d!820971 m!3258235))

(declare-fun m!3258237 () Bool)

(assert (=> b!2828690 m!3258237))

(assert (=> d!820707 d!820971))

(assert (=> d!820645 d!820665))

(declare-fun d!820973 () Bool)

(assert (=> d!820973 (rulesProduceIndividualToken!2107 thiss!11212 rules!1102 lt!1008614)))

(assert (=> d!820973 true))

(declare-fun _$77!736 () Unit!47289)

(assert (=> d!820973 (= (choose!16707 thiss!11212 rules!1102 lt!1008618 lt!1008614) _$77!736)))

(declare-fun bs!518168 () Bool)

(assert (= bs!518168 d!820973))

(assert (=> bs!518168 m!3257403))

(assert (=> d!820645 d!820973))

(assert (=> d!820645 d!820755))

(assert (=> b!2828182 d!820763))

(assert (=> b!2828196 d!820791))

(declare-fun d!820975 () Bool)

(declare-fun c!457691 () Bool)

(assert (=> d!820975 (= c!457691 (is-Nil!33239 lt!1008713))))

(declare-fun e!1790425 () (Set Token!9358))

(assert (=> d!820975 (= (content!4631 lt!1008713) e!1790425)))

(declare-fun b!2828691 () Bool)

(assert (=> b!2828691 (= e!1790425 (as set.empty (Set Token!9358)))))

(declare-fun b!2828692 () Bool)

(assert (=> b!2828692 (= e!1790425 (set.union (set.insert (h!38659 lt!1008713) (as set.empty (Set Token!9358))) (content!4631 (t!231162 lt!1008713))))))

(assert (= (and d!820975 c!457691) b!2828691))

(assert (= (and d!820975 (not c!457691)) b!2828692))

(declare-fun m!3258239 () Bool)

(assert (=> b!2828692 m!3258239))

(declare-fun m!3258241 () Bool)

(assert (=> b!2828692 m!3258241))

(assert (=> d!820711 d!820975))

(assert (=> d!820711 d!820789))

(declare-fun d!820977 () Bool)

(declare-fun lt!1008857 () Bool)

(assert (=> d!820977 (= lt!1008857 (set.member lt!1008610 (content!4631 (t!231162 lt!1008618))))))

(declare-fun e!1790427 () Bool)

(assert (=> d!820977 (= lt!1008857 e!1790427)))

(declare-fun res!1177644 () Bool)

(assert (=> d!820977 (=> (not res!1177644) (not e!1790427))))

(assert (=> d!820977 (= res!1177644 (is-Cons!33239 (t!231162 lt!1008618)))))

(assert (=> d!820977 (= (contains!6061 (t!231162 lt!1008618) lt!1008610) lt!1008857)))

(declare-fun b!2828693 () Bool)

(declare-fun e!1790426 () Bool)

(assert (=> b!2828693 (= e!1790427 e!1790426)))

(declare-fun res!1177643 () Bool)

(assert (=> b!2828693 (=> res!1177643 e!1790426)))

(assert (=> b!2828693 (= res!1177643 (= (h!38659 (t!231162 lt!1008618)) lt!1008610))))

(declare-fun b!2828694 () Bool)

(assert (=> b!2828694 (= e!1790426 (contains!6061 (t!231162 (t!231162 lt!1008618)) lt!1008610))))

(assert (= (and d!820977 res!1177644) b!2828693))

(assert (= (and b!2828693 (not res!1177643)) b!2828694))

(assert (=> d!820977 m!3257847))

(declare-fun m!3258243 () Bool)

(assert (=> d!820977 m!3258243))

(declare-fun m!3258245 () Bool)

(assert (=> b!2828694 m!3258245))

(assert (=> b!2828254 d!820977))

(assert (=> b!2828141 d!820893))

(declare-fun d!820979 () Bool)

(declare-fun lt!1008858 () Token!9358)

(assert (=> d!820979 (contains!6061 (tail!4457 lt!1008618) lt!1008858)))

(declare-fun e!1790429 () Token!9358)

(assert (=> d!820979 (= lt!1008858 e!1790429)))

(declare-fun c!457692 () Bool)

(assert (=> d!820979 (= c!457692 (= (- (+ 1 from!827) 1) 0))))

(declare-fun e!1790428 () Bool)

(assert (=> d!820979 e!1790428))

(declare-fun res!1177645 () Bool)

(assert (=> d!820979 (=> (not res!1177645) (not e!1790428))))

(assert (=> d!820979 (= res!1177645 (<= 0 (- (+ 1 from!827) 1)))))

(assert (=> d!820979 (= (apply!7754 (tail!4457 lt!1008618) (- (+ 1 from!827) 1)) lt!1008858)))

(declare-fun b!2828695 () Bool)

(assert (=> b!2828695 (= e!1790428 (< (- (+ 1 from!827) 1) (size!25875 (tail!4457 lt!1008618))))))

(declare-fun b!2828696 () Bool)

(assert (=> b!2828696 (= e!1790429 (head!6232 (tail!4457 lt!1008618)))))

(declare-fun b!2828697 () Bool)

(assert (=> b!2828697 (= e!1790429 (apply!7754 (tail!4457 (tail!4457 lt!1008618)) (- (- (+ 1 from!827) 1) 1)))))

(assert (= (and d!820979 res!1177645) b!2828695))

(assert (= (and d!820979 c!457692) b!2828696))

(assert (= (and d!820979 (not c!457692)) b!2828697))

(assert (=> d!820979 m!3257643))

(declare-fun m!3258247 () Bool)

(assert (=> d!820979 m!3258247))

(assert (=> b!2828695 m!3257643))

(assert (=> b!2828695 m!3258065))

(assert (=> b!2828696 m!3257643))

(assert (=> b!2828696 m!3258067))

(assert (=> b!2828697 m!3257643))

(assert (=> b!2828697 m!3258069))

(assert (=> b!2828697 m!3258069))

(declare-fun m!3258249 () Bool)

(assert (=> b!2828697 m!3258249))

(assert (=> b!2828198 d!820979))

(assert (=> b!2828198 d!820899))

(declare-fun b!2828699 () Bool)

(declare-fun e!1790430 () Bool)

(declare-fun tp!903291 () Bool)

(declare-fun tp!903295 () Bool)

(assert (=> b!2828699 (= e!1790430 (and tp!903291 tp!903295))))

(declare-fun b!2828698 () Bool)

(assert (=> b!2828698 (= e!1790430 tp_is_empty!14553)))

(assert (=> b!2828290 (= tp!903251 e!1790430)))

(declare-fun b!2828700 () Bool)

(declare-fun tp!903292 () Bool)

(assert (=> b!2828700 (= e!1790430 tp!903292)))

(declare-fun b!2828701 () Bool)

(declare-fun tp!903294 () Bool)

(declare-fun tp!903293 () Bool)

(assert (=> b!2828701 (= e!1790430 (and tp!903294 tp!903293))))

(assert (= (and b!2828290 (is-ElementMatch!8368 (regex!4978 (h!38658 (t!231161 rules!1102))))) b!2828698))

(assert (= (and b!2828290 (is-Concat!13576 (regex!4978 (h!38658 (t!231161 rules!1102))))) b!2828699))

(assert (= (and b!2828290 (is-Star!8368 (regex!4978 (h!38658 (t!231161 rules!1102))))) b!2828700))

(assert (= (and b!2828290 (is-Union!8368 (regex!4978 (h!38658 (t!231161 rules!1102))))) b!2828701))

(declare-fun b!2828703 () Bool)

(declare-fun e!1790431 () Bool)

(declare-fun tp!903296 () Bool)

(declare-fun tp!903300 () Bool)

(assert (=> b!2828703 (= e!1790431 (and tp!903296 tp!903300))))

(declare-fun b!2828702 () Bool)

(assert (=> b!2828702 (= e!1790431 tp_is_empty!14553)))

(assert (=> b!2828268 (= tp!903230 e!1790431)))

(declare-fun b!2828704 () Bool)

(declare-fun tp!903297 () Bool)

(assert (=> b!2828704 (= e!1790431 tp!903297)))

(declare-fun b!2828705 () Bool)

(declare-fun tp!903299 () Bool)

(declare-fun tp!903298 () Bool)

(assert (=> b!2828705 (= e!1790431 (and tp!903299 tp!903298))))

(assert (= (and b!2828268 (is-ElementMatch!8368 (reg!8697 (regex!4978 (h!38658 rules!1102))))) b!2828702))

(assert (= (and b!2828268 (is-Concat!13576 (reg!8697 (regex!4978 (h!38658 rules!1102))))) b!2828703))

(assert (= (and b!2828268 (is-Star!8368 (reg!8697 (regex!4978 (h!38658 rules!1102))))) b!2828704))

(assert (= (and b!2828268 (is-Union!8368 (reg!8697 (regex!4978 (h!38658 rules!1102))))) b!2828705))

(declare-fun b!2828714 () Bool)

(declare-fun e!1790436 () Bool)

(declare-fun tp!903307 () Bool)

(declare-fun tp!903308 () Bool)

(assert (=> b!2828714 (= e!1790436 (and (inv!45196 (left!25107 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610))))) tp!903308 (inv!45196 (right!25437 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610))))) tp!903307))))

(declare-fun b!2828716 () Bool)

(declare-fun e!1790437 () Bool)

(declare-fun tp!903309 () Bool)

(assert (=> b!2828716 (= e!1790437 tp!903309)))

(declare-fun b!2828715 () Bool)

(declare-fun inv!45208 (IArray!20627) Bool)

(assert (=> b!2828715 (= e!1790436 (and (inv!45208 (xs!13423 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610))))) e!1790437))))

(assert (=> b!2828130 (= tp!903215 (and (inv!45196 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610)))) e!1790436))))

(assert (= (and b!2828130 (is-Node!10311 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610))))) b!2828714))

(assert (= b!2828715 b!2828716))

(assert (= (and b!2828130 (is-Leaf!15708 (c!457541 (dynLambda!13978 (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))) (value!160242 lt!1008610))))) b!2828715))

(declare-fun m!3258257 () Bool)

(assert (=> b!2828714 m!3258257))

(declare-fun m!3258259 () Bool)

(assert (=> b!2828714 m!3258259))

(declare-fun m!3258261 () Bool)

(assert (=> b!2828715 m!3258261))

(assert (=> b!2828130 m!3257623))

(declare-fun b!2828718 () Bool)

(declare-fun e!1790438 () Bool)

(declare-fun tp!903310 () Bool)

(declare-fun tp!903314 () Bool)

(assert (=> b!2828718 (= e!1790438 (and tp!903310 tp!903314))))

(declare-fun b!2828717 () Bool)

(assert (=> b!2828717 (= e!1790438 tp_is_empty!14553)))

(assert (=> b!2828269 (= tp!903232 e!1790438)))

(declare-fun b!2828719 () Bool)

(declare-fun tp!903311 () Bool)

(assert (=> b!2828719 (= e!1790438 tp!903311)))

(declare-fun b!2828720 () Bool)

(declare-fun tp!903313 () Bool)

(declare-fun tp!903312 () Bool)

(assert (=> b!2828720 (= e!1790438 (and tp!903313 tp!903312))))

(assert (= (and b!2828269 (is-ElementMatch!8368 (regOne!17249 (regex!4978 (h!38658 rules!1102))))) b!2828717))

(assert (= (and b!2828269 (is-Concat!13576 (regOne!17249 (regex!4978 (h!38658 rules!1102))))) b!2828718))

(assert (= (and b!2828269 (is-Star!8368 (regOne!17249 (regex!4978 (h!38658 rules!1102))))) b!2828719))

(assert (= (and b!2828269 (is-Union!8368 (regOne!17249 (regex!4978 (h!38658 rules!1102))))) b!2828720))

(declare-fun b!2828722 () Bool)

(declare-fun e!1790439 () Bool)

(declare-fun tp!903315 () Bool)

(declare-fun tp!903319 () Bool)

(assert (=> b!2828722 (= e!1790439 (and tp!903315 tp!903319))))

(declare-fun b!2828721 () Bool)

(assert (=> b!2828721 (= e!1790439 tp_is_empty!14553)))

(assert (=> b!2828269 (= tp!903231 e!1790439)))

(declare-fun b!2828723 () Bool)

(declare-fun tp!903316 () Bool)

(assert (=> b!2828723 (= e!1790439 tp!903316)))

(declare-fun b!2828724 () Bool)

(declare-fun tp!903318 () Bool)

(declare-fun tp!903317 () Bool)

(assert (=> b!2828724 (= e!1790439 (and tp!903318 tp!903317))))

(assert (= (and b!2828269 (is-ElementMatch!8368 (regTwo!17249 (regex!4978 (h!38658 rules!1102))))) b!2828721))

(assert (= (and b!2828269 (is-Concat!13576 (regTwo!17249 (regex!4978 (h!38658 rules!1102))))) b!2828722))

(assert (= (and b!2828269 (is-Star!8368 (regTwo!17249 (regex!4978 (h!38658 rules!1102))))) b!2828723))

(assert (= (and b!2828269 (is-Union!8368 (regTwo!17249 (regex!4978 (h!38658 rules!1102))))) b!2828724))

(declare-fun b!2828725 () Bool)

(declare-fun tp!903322 () Bool)

(declare-fun e!1790441 () Bool)

(declare-fun tp!903320 () Bool)

(assert (=> b!2828725 (= e!1790441 (and (inv!45190 (left!25108 (left!25108 (c!457542 v!6247)))) tp!903320 (inv!45190 (right!25438 (left!25108 (c!457542 v!6247)))) tp!903322))))

(declare-fun b!2828727 () Bool)

(declare-fun e!1790440 () Bool)

(declare-fun tp!903321 () Bool)

(assert (=> b!2828727 (= e!1790440 tp!903321)))

(declare-fun b!2828726 () Bool)

(assert (=> b!2828726 (= e!1790441 (and (inv!45200 (xs!13424 (left!25108 (c!457542 v!6247)))) e!1790440))))

(assert (=> b!2828278 (= tp!903240 (and (inv!45190 (left!25108 (c!457542 v!6247))) e!1790441))))

(assert (= (and b!2828278 (is-Node!10312 (left!25108 (c!457542 v!6247)))) b!2828725))

(assert (= b!2828726 b!2828727))

(assert (= (and b!2828278 (is-Leaf!15709 (left!25108 (c!457542 v!6247)))) b!2828726))

(declare-fun m!3258263 () Bool)

(assert (=> b!2828725 m!3258263))

(declare-fun m!3258265 () Bool)

(assert (=> b!2828725 m!3258265))

(declare-fun m!3258267 () Bool)

(assert (=> b!2828726 m!3258267))

(assert (=> b!2828278 m!3257793))

(declare-fun b!2828728 () Bool)

(declare-fun tp!903325 () Bool)

(declare-fun tp!903323 () Bool)

(declare-fun e!1790443 () Bool)

(assert (=> b!2828728 (= e!1790443 (and (inv!45190 (left!25108 (right!25438 (c!457542 v!6247)))) tp!903323 (inv!45190 (right!25438 (right!25438 (c!457542 v!6247)))) tp!903325))))

(declare-fun b!2828730 () Bool)

(declare-fun e!1790442 () Bool)

(declare-fun tp!903324 () Bool)

(assert (=> b!2828730 (= e!1790442 tp!903324)))

(declare-fun b!2828729 () Bool)

(assert (=> b!2828729 (= e!1790443 (and (inv!45200 (xs!13424 (right!25438 (c!457542 v!6247)))) e!1790442))))

(assert (=> b!2828278 (= tp!903242 (and (inv!45190 (right!25438 (c!457542 v!6247))) e!1790443))))

(assert (= (and b!2828278 (is-Node!10312 (right!25438 (c!457542 v!6247)))) b!2828728))

(assert (= b!2828729 b!2828730))

(assert (= (and b!2828278 (is-Leaf!15709 (right!25438 (c!457542 v!6247)))) b!2828729))

(declare-fun m!3258269 () Bool)

(assert (=> b!2828728 m!3258269))

(declare-fun m!3258271 () Bool)

(assert (=> b!2828728 m!3258271))

(declare-fun m!3258273 () Bool)

(assert (=> b!2828729 m!3258273))

(assert (=> b!2828278 m!3257795))

(declare-fun b!2828733 () Bool)

(declare-fun e!1790446 () Bool)

(assert (=> b!2828733 (= e!1790446 true)))

(declare-fun b!2828732 () Bool)

(declare-fun e!1790445 () Bool)

(assert (=> b!2828732 (= e!1790445 e!1790446)))

(declare-fun b!2828731 () Bool)

(declare-fun e!1790444 () Bool)

(assert (=> b!2828731 (= e!1790444 e!1790445)))

(assert (=> b!2828227 e!1790444))

(assert (= b!2828732 b!2828733))

(assert (= b!2828731 b!2828732))

(assert (= (and b!2828227 (is-Cons!33238 (t!231161 rules!1102))) b!2828731))

(assert (=> b!2828733 (< (dynLambda!13979 order!17721 (toValue!7000 (transformation!4978 (h!38658 (t!231161 rules!1102))))) (dynLambda!13980 order!17723 lambda!103862))))

(assert (=> b!2828733 (< (dynLambda!13981 order!17725 (toChars!6859 (transformation!4978 (h!38658 (t!231161 rules!1102))))) (dynLambda!13980 order!17723 lambda!103862))))

(declare-fun b!2828736 () Bool)

(declare-fun b_free!81133 () Bool)

(declare-fun b_next!81837 () Bool)

(assert (=> b!2828736 (= b_free!81133 (not b_next!81837))))

(declare-fun tp!903328 () Bool)

(declare-fun b_and!206791 () Bool)

(assert (=> b!2828736 (= tp!903328 b_and!206791)))

(declare-fun b_free!81135 () Bool)

(declare-fun b_next!81839 () Bool)

(assert (=> b!2828736 (= b_free!81135 (not b_next!81839))))

(declare-fun tb!154165 () Bool)

(declare-fun t!231204 () Bool)

(assert (=> (and b!2828736 (= (toChars!6859 (transformation!4978 (h!38658 (t!231161 (t!231161 rules!1102))))) (toChars!6859 (transformation!4978 (rule!7406 lt!1008610)))) t!231204) tb!154165))

(declare-fun result!192124 () Bool)

(assert (= result!192124 result!192098))

(assert (=> d!820701 t!231204))

(declare-fun b_and!206793 () Bool)

(declare-fun tp!903327 () Bool)

(assert (=> b!2828736 (= tp!903327 (and (=> t!231204 result!192124) b_and!206793))))

(declare-fun e!1790449 () Bool)

(assert (=> b!2828736 (= e!1790449 (and tp!903328 tp!903327))))

(declare-fun b!2828735 () Bool)

(declare-fun tp!903326 () Bool)

(declare-fun e!1790447 () Bool)

(assert (=> b!2828735 (= e!1790447 (and tp!903326 (inv!45187 (tag!5482 (h!38658 (t!231161 (t!231161 rules!1102))))) (inv!45191 (transformation!4978 (h!38658 (t!231161 (t!231161 rules!1102))))) e!1790449))))

(declare-fun b!2828734 () Bool)

(declare-fun e!1790450 () Bool)

(declare-fun tp!903329 () Bool)

(assert (=> b!2828734 (= e!1790450 (and e!1790447 tp!903329))))

(assert (=> b!2828289 (= tp!903254 e!1790450)))

(assert (= b!2828735 b!2828736))

(assert (= b!2828734 b!2828735))

(assert (= (and b!2828289 (is-Cons!33238 (t!231161 (t!231161 rules!1102)))) b!2828734))

(declare-fun m!3258275 () Bool)

(assert (=> b!2828735 m!3258275))

(declare-fun m!3258277 () Bool)

(assert (=> b!2828735 m!3258277))

(declare-fun b!2828756 () Bool)

(declare-fun b_free!81137 () Bool)

(declare-fun b_next!81841 () Bool)

(assert (=> b!2828756 (= b_free!81137 (not b_next!81841))))

(declare-fun tp!903343 () Bool)

(declare-fun b_and!206795 () Bool)

(assert (=> b!2828756 (= tp!903343 b_and!206795)))

(declare-fun b_free!81139 () Bool)

(declare-fun b_next!81843 () Bool)

(assert (=> b!2828756 (= b_free!81139 (not b_next!81843))))

(declare-fun t!231207 () Bool)

(declare-fun tb!154167 () Bool)

(assert (=> (and b!2828756 (= (toChars!6859 (transformation!4978 (rule!7406 (h!38659 (innerList!10372 (xs!13424 (c!457542 v!6247))))))) (toChars!6859 (transformation!4978 (rule!7406 lt!1008610)))) t!231207) tb!154167))

(declare-fun result!192128 () Bool)

(assert (= result!192128 result!192098))

(assert (=> d!820701 t!231207))

(declare-fun b_and!206797 () Bool)

(declare-fun tp!903340 () Bool)

(assert (=> b!2828756 (= tp!903340 (and (=> t!231207 result!192128) b_and!206797))))

(declare-fun b!2828753 () Bool)

(declare-fun tp!903344 () Bool)

(declare-fun e!1790473 () Bool)

(declare-fun e!1790468 () Bool)

(declare-fun inv!45209 (Token!9358) Bool)

(assert (=> b!2828753 (= e!1790468 (and (inv!45209 (h!38659 (innerList!10372 (xs!13424 (c!457542 v!6247))))) e!1790473 tp!903344))))

(declare-fun tp!903342 () Bool)

(declare-fun e!1790471 () Bool)

(declare-fun b!2828754 () Bool)

(declare-fun inv!21 (TokenValue!5208) Bool)

(assert (=> b!2828754 (= e!1790473 (and (inv!21 (value!160242 (h!38659 (innerList!10372 (xs!13424 (c!457542 v!6247)))))) e!1790471 tp!903342))))

(declare-fun e!1790472 () Bool)

(declare-fun tp!903341 () Bool)

(declare-fun b!2828755 () Bool)

(assert (=> b!2828755 (= e!1790471 (and tp!903341 (inv!45187 (tag!5482 (rule!7406 (h!38659 (innerList!10372 (xs!13424 (c!457542 v!6247))))))) (inv!45191 (transformation!4978 (rule!7406 (h!38659 (innerList!10372 (xs!13424 (c!457542 v!6247))))))) e!1790472))))

(assert (=> b!2828280 (= tp!903241 e!1790468)))

(assert (=> b!2828756 (= e!1790472 (and tp!903343 tp!903340))))

(assert (= b!2828755 b!2828756))

(assert (= b!2828754 b!2828755))

(assert (= b!2828753 b!2828754))

(assert (= (and b!2828280 (is-Cons!33239 (innerList!10372 (xs!13424 (c!457542 v!6247))))) b!2828753))

(declare-fun m!3258295 () Bool)

(assert (=> b!2828753 m!3258295))

(declare-fun m!3258297 () Bool)

(assert (=> b!2828754 m!3258297))

(declare-fun m!3258299 () Bool)

(assert (=> b!2828755 m!3258299))

(declare-fun m!3258301 () Bool)

(assert (=> b!2828755 m!3258301))

(declare-fun b!2828758 () Bool)

(declare-fun e!1790474 () Bool)

(declare-fun tp!903345 () Bool)

(declare-fun tp!903349 () Bool)

(assert (=> b!2828758 (= e!1790474 (and tp!903345 tp!903349))))

(declare-fun b!2828757 () Bool)

(assert (=> b!2828757 (= e!1790474 tp_is_empty!14553)))

(assert (=> b!2828267 (= tp!903229 e!1790474)))

(declare-fun b!2828759 () Bool)

(declare-fun tp!903346 () Bool)

(assert (=> b!2828759 (= e!1790474 tp!903346)))

(declare-fun b!2828760 () Bool)

(declare-fun tp!903348 () Bool)

(declare-fun tp!903347 () Bool)

(assert (=> b!2828760 (= e!1790474 (and tp!903348 tp!903347))))

(assert (= (and b!2828267 (is-ElementMatch!8368 (regOne!17248 (regex!4978 (h!38658 rules!1102))))) b!2828757))

(assert (= (and b!2828267 (is-Concat!13576 (regOne!17248 (regex!4978 (h!38658 rules!1102))))) b!2828758))

(assert (= (and b!2828267 (is-Star!8368 (regOne!17248 (regex!4978 (h!38658 rules!1102))))) b!2828759))

(assert (= (and b!2828267 (is-Union!8368 (regOne!17248 (regex!4978 (h!38658 rules!1102))))) b!2828760))

(declare-fun b!2828762 () Bool)

(declare-fun e!1790475 () Bool)

(declare-fun tp!903350 () Bool)

(declare-fun tp!903354 () Bool)

(assert (=> b!2828762 (= e!1790475 (and tp!903350 tp!903354))))

(declare-fun b!2828761 () Bool)

(assert (=> b!2828761 (= e!1790475 tp_is_empty!14553)))

(assert (=> b!2828267 (= tp!903233 e!1790475)))

(declare-fun b!2828763 () Bool)

(declare-fun tp!903351 () Bool)

(assert (=> b!2828763 (= e!1790475 tp!903351)))

(declare-fun b!2828764 () Bool)

(declare-fun tp!903353 () Bool)

(declare-fun tp!903352 () Bool)

(assert (=> b!2828764 (= e!1790475 (and tp!903353 tp!903352))))

(assert (= (and b!2828267 (is-ElementMatch!8368 (regTwo!17248 (regex!4978 (h!38658 rules!1102))))) b!2828761))

(assert (= (and b!2828267 (is-Concat!13576 (regTwo!17248 (regex!4978 (h!38658 rules!1102))))) b!2828762))

(assert (= (and b!2828267 (is-Star!8368 (regTwo!17248 (regex!4978 (h!38658 rules!1102))))) b!2828763))

(assert (= (and b!2828267 (is-Union!8368 (regTwo!17248 (regex!4978 (h!38658 rules!1102))))) b!2828764))

(declare-fun b_lambda!84985 () Bool)

(assert (= b_lambda!84979 (or (and b!2827992 b_free!81119 (= (toChars!6859 (transformation!4978 (h!38658 rules!1102))) (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))))) (and b!2828291 b_free!81127 (= (toChars!6859 (transformation!4978 (h!38658 (t!231161 rules!1102)))) (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))))) (and b!2828736 b_free!81135 (= (toChars!6859 (transformation!4978 (h!38658 (t!231161 (t!231161 rules!1102))))) (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))))) (and b!2828756 b_free!81139 (= (toChars!6859 (transformation!4978 (rule!7406 (h!38659 (innerList!10372 (xs!13424 (c!457542 v!6247))))))) (toChars!6859 (transformation!4978 (rule!7406 lt!1008610))))) b_lambda!84985)))

(declare-fun b_lambda!84987 () Bool)

(assert (= b_lambda!84983 (or d!820735 b_lambda!84987)))

(declare-fun bs!518170 () Bool)

(declare-fun d!820989 () Bool)

(assert (= bs!518170 (and d!820989 d!820735)))

(assert (=> bs!518170 (= (dynLambda!13987 lambda!103862 (h!38659 (list!12445 v!6247))) (rulesProduceIndividualToken!2107 thiss!11212 rules!1102 (h!38659 (list!12445 v!6247))))))

(assert (=> bs!518170 m!3257981))

(assert (=> b!2828417 d!820989))

(push 1)

(assert (not d!820915))

(assert (not b!2828492))

(assert (not b!2828533))

(assert (not b!2828547))

(assert (not b!2828411))

(assert (not b!2828704))

(assert (not b!2828517))

(assert (not b!2828762))

(assert b_and!206797)

(assert (not bm!183257))

(assert (not b!2828391))

(assert (not b!2828734))

(assert (not b_next!81839))

(assert (not b!2828531))

(assert (not d!820865))

(assert (not d!820811))

(assert (not b!2828722))

(assert (not b_lambda!84987))

(assert (not b!2828532))

(assert (not b!2828720))

(assert (not b_next!81821))

(assert (not b!2828715))

(assert (not b!2828648))

(assert (not d!820943))

(assert (not d!820795))

(assert (not b!2828696))

(assert (not d!820897))

(assert (not b!2828495))

(assert (not d!820921))

(assert (not d!820937))

(assert (not b!2828573))

(assert (not b!2828667))

(assert (not d!820891))

(assert b_and!206771)

(assert (not d!820883))

(assert (not bm!183253))

(assert (not bm!183254))

(assert (not d!820881))

(assert (not d!820945))

(assert (not b!2828130))

(assert (not d!820815))

(assert (not d!820803))

(assert (not b!2828596))

(assert (not b!2828714))

(assert (not b!2828635))

(assert (not d!820917))

(assert (not d!820877))

(assert (not d!820933))

(assert (not b!2828616))

(assert (not d!820801))

(assert (not b_next!81843))

(assert (not b!2828690))

(assert (not b!2828692))

(assert (not d!820799))

(assert (not b!2828493))

(assert (not b!2828727))

(assert (not b!2828719))

(assert (not b!2828628))

(assert (not bm!183258))

(assert (not d!820969))

(assert (not b!2828418))

(assert (not b!2828570))

(assert b_and!206779)

(assert (not b!2828405))

(assert (not b!2828701))

(assert (not b!2828683))

(assert (not d!820961))

(assert (not d!820947))

(assert (not b!2828735))

(assert (not b!2828574))

(assert (not b!2828518))

(assert (not b!2828486))

(assert (not b!2828542))

(assert (not b!2828694))

(assert (not b!2828389))

(assert (not d!820805))

(assert (not b_next!81841))

(assert (not d!820939))

(assert (not b!2828700))

(assert (not d!820869))

(assert (not b!2828724))

(assert (not b!2828540))

(assert (not b!2828759))

(assert (not d!820929))

(assert (not b!2828499))

(assert (not b!2828604))

(assert (not b!2828564))

(assert (not b!2828625))

(assert b_and!206793)

(assert (not d!820919))

(assert (not b!2828575))

(assert (not d!820857))

(assert (not d!820819))

(assert (not b!2828666))

(assert (not b!2828665))

(assert (not b!2828607))

(assert (not d!820963))

(assert (not b!2828407))

(assert (not b!2828408))

(assert (not b!2828679))

(assert (not d!820927))

(assert (not bm!183259))

(assert (not b!2828723))

(assert (not d!820859))

(assert (not b!2828681))

(assert (not b!2828530))

(assert (not b!2828278))

(assert (not b!2828594))

(assert (not d!820941))

(assert (not b!2828754))

(assert (not d!820903))

(assert (not b!2828760))

(assert (not d!820905))

(assert (not d!820895))

(assert (not d!820911))

(assert (not b!2828375))

(assert (not d!820785))

(assert (not b!2828393))

(assert (not b!2828728))

(assert (not b!2828718))

(assert (not b!2828699))

(assert (not b_lambda!84985))

(assert (not b!2828697))

(assert (not bm!183260))

(assert (not d!820977))

(assert (not b!2828670))

(assert (not b!2828629))

(assert (not b!2828390))

(assert (not b!2828634))

(assert (not b!2828520))

(assert (not b!2828668))

(assert (not d!820907))

(assert (not d!820951))

(assert (not b_next!81829))

(assert (not b!2828490))

(assert (not b!2828753))

(assert tp_is_empty!14553)

(assert (not b!2828755))

(assert (not b!2828687))

(assert (not b!2828501))

(assert (not d!820813))

(assert (not d!820973))

(assert (not b!2828592))

(assert (not b!2828412))

(assert (not b!2828650))

(assert (not b!2828388))

(assert (not b!2828695))

(assert (not b_next!81823))

(assert (not d!820955))

(assert (not d!820965))

(assert (not d!820807))

(assert (not b!2828725))

(assert (not b!2828716))

(assert (not b!2828686))

(assert (not b!2828731))

(assert (not b!2828620))

(assert (not d!820887))

(assert (not d!820889))

(assert (not b!2828672))

(assert b_and!206791)

(assert (not d!820931))

(assert (not b!2828763))

(assert (not b!2828595))

(assert (not d!820957))

(assert (not b!2828729))

(assert b_and!206795)

(assert (not b!2828487))

(assert (not b!2828367))

(assert (not d!820797))

(assert (not b!2828632))

(assert (not b!2828497))

(assert (not d!820863))

(assert (not b!2828609))

(assert (not d!820817))

(assert (not b!2828627))

(assert (not d!820901))

(assert (not b!2828548))

(assert b_and!206783)

(assert (not b!2828758))

(assert (not b!2828572))

(assert (not b!2828406))

(assert (not b!2828571))

(assert (not bm!183261))

(assert (not b!2828562))

(assert (not b!2828369))

(assert (not b!2828652))

(assert (not b_next!81831))

(assert (not bs!518170))

(assert (not b!2828664))

(assert (not b!2828703))

(assert (not b!2828685))

(assert (not b!2828636))

(assert (not b!2828726))

(assert (not b!2828688))

(assert (not b!2828705))

(assert (not d!820971))

(assert (not b!2828730))

(assert (not b!2828764))

(assert (not b!2828560))

(assert (not d!820967))

(assert (not b!2828485))

(assert (not d!820959))

(assert (not d!820979))

(assert (not b!2828550))

(assert b_and!206785)

(assert (not b_next!81837))

(assert (not b!2828392))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81821))

(assert b_and!206771)

(assert (not b_next!81843))

(assert b_and!206779)

(assert (not b_next!81841))

(assert b_and!206793)

(assert (not b_next!81829))

(assert (not b_next!81823))

(assert b_and!206791)

(assert b_and!206795)

(assert b_and!206783)

(assert (not b_next!81831))

(assert b_and!206797)

(assert (not b_next!81839))

(assert b_and!206785)

(assert (not b_next!81837))

(check-sat)

(pop 1)

