; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!526072 () Bool)

(assert start!526072)

(declare-fun b!4982545 () Bool)

(declare-fun b_free!133119 () Bool)

(declare-fun b_next!133909 () Bool)

(assert (=> b!4982545 (= b_free!133119 (not b_next!133909))))

(declare-fun tp!1396728 () Bool)

(declare-fun b_and!349651 () Bool)

(assert (=> b!4982545 (= tp!1396728 b_and!349651)))

(declare-fun b_free!133121 () Bool)

(declare-fun b_next!133911 () Bool)

(assert (=> b!4982545 (= b_free!133121 (not b_next!133911))))

(declare-fun tp!1396727 () Bool)

(declare-fun b_and!349653 () Bool)

(assert (=> b!4982545 (= tp!1396727 b_and!349653)))

(declare-fun b!4982564 () Bool)

(declare-fun e!3114094 () Bool)

(assert (=> b!4982564 (= e!3114094 true)))

(declare-fun b!4982563 () Bool)

(declare-fun e!3114093 () Bool)

(assert (=> b!4982563 (= e!3114093 e!3114094)))

(declare-fun b!4982543 () Bool)

(assert (=> b!4982543 e!3114093))

(assert (= b!4982563 b!4982564))

(assert (= b!4982543 b!4982563))

(declare-fun order!26497 () Int)

(declare-fun lambda!247859 () Int)

(declare-fun order!26495 () Int)

(declare-datatypes ((C!27626 0))(
  ( (C!27627 (val!23179 Int)) )
))
(declare-datatypes ((List!57706 0))(
  ( (Nil!57582) (Cons!57582 (h!64030 C!27626) (t!369838 List!57706)) )
))
(declare-datatypes ((IArray!30475 0))(
  ( (IArray!30476 (innerList!15295 List!57706)) )
))
(declare-datatypes ((List!57707 0))(
  ( (Nil!57583) (Cons!57583 (h!64031 (_ BitVec 16)) (t!369839 List!57707)) )
))
(declare-datatypes ((Regex!13688 0))(
  ( (ElementMatch!13688 (c!850262 C!27626)) (Concat!22453 (regOne!27888 Regex!13688) (regTwo!27888 Regex!13688)) (EmptyExpr!13688) (Star!13688 (reg!14017 Regex!13688)) (EmptyLang!13688) (Union!13688 (regOne!27889 Regex!13688) (regTwo!27889 Regex!13688)) )
))
(declare-datatypes ((Conc!15207 0))(
  ( (Node!15207 (left!42091 Conc!15207) (right!42421 Conc!15207) (csize!30644 Int) (cheight!15418 Int)) (Leaf!25260 (xs!18533 IArray!30475) (csize!30645 Int)) (Empty!15207) )
))
(declare-datatypes ((BalanceConc!29844 0))(
  ( (BalanceConc!29845 (c!850263 Conc!15207)) )
))
(declare-datatypes ((TokenValue!8765 0))(
  ( (FloatLiteralValue!17530 (text!61800 List!57707)) (TokenValueExt!8764 (__x!34823 Int)) (Broken!43825 (value!270363 List!57707)) (Object!8888) (End!8765) (Def!8765) (Underscore!8765) (Match!8765) (Else!8765) (Error!8765) (Case!8765) (If!8765) (Extends!8765) (Abstract!8765) (Class!8765) (Val!8765) (DelimiterValue!17530 (del!8825 List!57707)) (KeywordValue!8771 (value!270364 List!57707)) (CommentValue!17530 (value!270365 List!57707)) (WhitespaceValue!17530 (value!270366 List!57707)) (IndentationValue!8765 (value!270367 List!57707)) (String!65700) (Int32!8765) (Broken!43826 (value!270368 List!57707)) (Boolean!8766) (Unit!148658) (OperatorValue!8768 (op!8825 List!57707)) (IdentifierValue!17530 (value!270369 List!57707)) (IdentifierValue!17531 (value!270370 List!57707)) (WhitespaceValue!17531 (value!270371 List!57707)) (True!17530) (False!17530) (Broken!43827 (value!270372 List!57707)) (Broken!43828 (value!270373 List!57707)) (True!17531) (RightBrace!8765) (RightBracket!8765) (Colon!8765) (Null!8765) (Comma!8765) (LeftBracket!8765) (False!17531) (LeftBrace!8765) (ImaginaryLiteralValue!8765 (text!61801 List!57707)) (StringLiteralValue!26295 (value!270374 List!57707)) (EOFValue!8765 (value!270375 List!57707)) (IdentValue!8765 (value!270376 List!57707)) (DelimiterValue!17531 (value!270377 List!57707)) (DedentValue!8765 (value!270378 List!57707)) (NewLineValue!8765 (value!270379 List!57707)) (IntegerValue!26295 (value!270380 (_ BitVec 32)) (text!61802 List!57707)) (IntegerValue!26296 (value!270381 Int) (text!61803 List!57707)) (Times!8765) (Or!8765) (Equal!8765) (Minus!8765) (Broken!43829 (value!270382 List!57707)) (And!8765) (Div!8765) (LessEqual!8765) (Mod!8765) (Concat!22454) (Not!8765) (Plus!8765) (SpaceValue!8765 (value!270383 List!57707)) (IntegerValue!26297 (value!270384 Int) (text!61804 List!57707)) (StringLiteralValue!26296 (text!61805 List!57707)) (FloatLiteralValue!17531 (text!61806 List!57707)) (BytesLiteralValue!8765 (value!270385 List!57707)) (CommentValue!17531 (value!270386 List!57707)) (StringLiteralValue!26297 (value!270387 List!57707)) (ErrorTokenValue!8765 (msg!8826 List!57707)) )
))
(declare-datatypes ((TokenValueInjection!16838 0))(
  ( (TokenValueInjection!16839 (toValue!11446 Int) (toChars!11305 Int)) )
))
(declare-datatypes ((String!65701 0))(
  ( (String!65702 (value!270388 String)) )
))
(declare-datatypes ((Rule!16710 0))(
  ( (Rule!16711 (regex!8455 Regex!13688) (tag!9319 String!65701) (isSeparator!8455 Bool) (transformation!8455 TokenValueInjection!16838)) )
))
(declare-fun rule!200 () Rule!16710)

(declare-fun dynLambda!23357 (Int Int) Int)

(declare-fun dynLambda!23358 (Int Int) Int)

(assert (=> b!4982564 (< (dynLambda!23357 order!26495 (toValue!11446 (transformation!8455 rule!200))) (dynLambda!23358 order!26497 lambda!247859))))

(declare-fun order!26499 () Int)

(declare-fun dynLambda!23359 (Int Int) Int)

(assert (=> b!4982564 (< (dynLambda!23359 order!26499 (toChars!11305 (transformation!8455 rule!200))) (dynLambda!23358 order!26497 lambda!247859))))

(declare-fun res!2126930 () Bool)

(declare-fun e!3114082 () Bool)

(assert (=> start!526072 (=> (not res!2126930) (not e!3114082))))

(declare-datatypes ((LexerInterface!8047 0))(
  ( (LexerInterfaceExt!8044 (__x!34824 Int)) (Lexer!8045) )
))
(declare-fun thiss!16165 () LexerInterface!8047)

(assert (=> start!526072 (= res!2126930 (is-Lexer!8045 thiss!16165))))

(assert (=> start!526072 e!3114082))

(assert (=> start!526072 true))

(declare-fun e!3114080 () Bool)

(assert (=> start!526072 e!3114080))

(declare-fun totalInput!520 () BalanceConc!29844)

(declare-fun e!3114086 () Bool)

(declare-fun inv!75422 (BalanceConc!29844) Bool)

(assert (=> start!526072 (and (inv!75422 totalInput!520) e!3114086)))

(declare-fun input!1580 () BalanceConc!29844)

(declare-fun e!3114078 () Bool)

(assert (=> start!526072 (and (inv!75422 input!1580) e!3114078)))

(declare-fun res!2126931 () Bool)

(declare-fun e!3114083 () Bool)

(assert (=> b!4982543 (=> res!2126931 e!3114083)))

(declare-fun Forall!1805 (Int) Bool)

(assert (=> b!4982543 (= res!2126931 (not (Forall!1805 lambda!247859)))))

(declare-fun b!4982544 () Bool)

(declare-fun res!2126924 () Bool)

(declare-fun e!3114087 () Bool)

(assert (=> b!4982544 (=> res!2126924 e!3114087)))

(declare-fun lt!2058456 () Bool)

(assert (=> b!4982544 (= res!2126924 (not lt!2058456))))

(declare-fun e!3114079 () Bool)

(assert (=> b!4982545 (= e!3114079 (and tp!1396728 tp!1396727))))

(declare-fun b!4982546 () Bool)

(declare-fun res!2126928 () Bool)

(assert (=> b!4982546 (=> (not res!2126928) (not e!3114082))))

(declare-fun ruleValid!3863 (LexerInterface!8047 Rule!16710) Bool)

(assert (=> b!4982546 (= res!2126928 (ruleValid!3863 thiss!16165 rule!200))))

(declare-fun b!4982547 () Bool)

(declare-fun e!3114088 () Bool)

(assert (=> b!4982547 (= e!3114082 e!3114088)))

(declare-fun res!2126926 () Bool)

(assert (=> b!4982547 (=> (not res!2126926) (not e!3114088))))

(declare-fun lt!2058454 () List!57706)

(declare-fun isSuffix!1254 (List!57706 List!57706) Bool)

(declare-fun list!18463 (BalanceConc!29844) List!57706)

(assert (=> b!4982547 (= res!2126926 (isSuffix!1254 lt!2058454 (list!18463 totalInput!520)))))

(assert (=> b!4982547 (= lt!2058454 (list!18463 input!1580))))

(declare-fun b!4982548 () Bool)

(declare-fun e!3114081 () Bool)

(assert (=> b!4982548 (= e!3114088 e!3114081)))

(declare-fun res!2126929 () Bool)

(assert (=> b!4982548 (=> (not res!2126929) (not e!3114081))))

(declare-datatypes ((tuple2!62520 0))(
  ( (tuple2!62521 (_1!34563 BalanceConc!29844) (_2!34563 BalanceConc!29844)) )
))
(declare-fun lt!2058458 () tuple2!62520)

(declare-fun isEmpty!31093 (BalanceConc!29844) Bool)

(assert (=> b!4982548 (= res!2126929 (not (isEmpty!31093 (_1!34563 lt!2058458))))))

(declare-fun findLongestMatchWithZipperSequenceV2!218 (Regex!13688 BalanceConc!29844 BalanceConc!29844) tuple2!62520)

(assert (=> b!4982548 (= lt!2058458 (findLongestMatchWithZipperSequenceV2!218 (regex!8455 rule!200) input!1580 totalInput!520))))

(declare-fun b!4982549 () Bool)

(declare-fun tp!1396730 () Bool)

(declare-fun inv!75423 (Conc!15207) Bool)

(assert (=> b!4982549 (= e!3114078 (and (inv!75423 (c!850263 input!1580)) tp!1396730))))

(declare-fun b!4982550 () Bool)

(assert (=> b!4982550 (= e!3114081 (not e!3114083))))

(declare-fun res!2126922 () Bool)

(assert (=> b!4982550 (=> res!2126922 e!3114083)))

(declare-fun semiInverseModEq!3748 (Int Int) Bool)

(assert (=> b!4982550 (= res!2126922 (not (semiInverseModEq!3748 (toChars!11305 (transformation!8455 rule!200)) (toValue!11446 (transformation!8455 rule!200)))))))

(declare-datatypes ((Unit!148659 0))(
  ( (Unit!148660) )
))
(declare-fun lt!2058450 () Unit!148659)

(declare-fun lemmaInv!1378 (TokenValueInjection!16838) Unit!148659)

(assert (=> b!4982550 (= lt!2058450 (lemmaInv!1378 (transformation!8455 rule!200)))))

(declare-fun e!3114084 () Bool)

(assert (=> b!4982550 e!3114084))

(declare-fun res!2126923 () Bool)

(assert (=> b!4982550 (=> res!2126923 e!3114084)))

(declare-datatypes ((tuple2!62522 0))(
  ( (tuple2!62523 (_1!34564 List!57706) (_2!34564 List!57706)) )
))
(declare-fun lt!2058453 () tuple2!62522)

(declare-fun isEmpty!31094 (List!57706) Bool)

(assert (=> b!4982550 (= res!2126923 (isEmpty!31094 (_1!34564 lt!2058453)))))

(declare-fun findLongestMatchInner!1899 (Regex!13688 List!57706 Int List!57706 List!57706 Int) tuple2!62522)

(declare-fun size!38210 (List!57706) Int)

(assert (=> b!4982550 (= lt!2058453 (findLongestMatchInner!1899 (regex!8455 rule!200) Nil!57582 (size!38210 Nil!57582) lt!2058454 lt!2058454 (size!38210 lt!2058454)))))

(declare-fun lt!2058448 () Unit!148659)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1860 (Regex!13688 List!57706) Unit!148659)

(assert (=> b!4982550 (= lt!2058448 (longestMatchIsAcceptedByMatchOrIsEmpty!1860 (regex!8455 rule!200) lt!2058454))))

(declare-fun b!4982551 () Bool)

(assert (=> b!4982551 (= e!3114083 e!3114087)))

(declare-fun res!2126925 () Bool)

(assert (=> b!4982551 (=> res!2126925 e!3114087)))

(declare-datatypes ((Token!15366 0))(
  ( (Token!15367 (value!270389 TokenValue!8765) (rule!11709 Rule!16710) (size!38211 Int) (originalCharacters!8714 List!57706)) )
))
(declare-datatypes ((tuple2!62524 0))(
  ( (tuple2!62525 (_1!34565 Token!15366) (_2!34565 List!57706)) )
))
(declare-datatypes ((Option!14529 0))(
  ( (None!14528) (Some!14528 (v!50525 tuple2!62524)) )
))
(declare-fun isDefined!11438 (Option!14529) Bool)

(declare-fun maxPrefixOneRule!3671 (LexerInterface!8047 Rule!16710 List!57706) Option!14529)

(assert (=> b!4982551 (= res!2126925 (not (= lt!2058456 (isDefined!11438 (maxPrefixOneRule!3671 thiss!16165 rule!200 lt!2058454)))))))

(declare-fun lt!2058447 () TokenValue!8765)

(declare-fun lt!2058455 () List!57706)

(declare-datatypes ((tuple2!62526 0))(
  ( (tuple2!62527 (_1!34566 Token!15366) (_2!34566 BalanceConc!29844)) )
))
(declare-datatypes ((Option!14530 0))(
  ( (None!14529) (Some!14529 (v!50526 tuple2!62526)) )
))
(declare-fun isDefined!11439 (Option!14530) Bool)

(declare-fun size!38212 (BalanceConc!29844) Int)

(assert (=> b!4982551 (= lt!2058456 (isDefined!11439 (Some!14529 (tuple2!62527 (Token!15367 lt!2058447 rule!200 (size!38212 (_1!34563 lt!2058458)) lt!2058455) (_2!34563 lt!2058458)))))))

(declare-fun apply!13942 (TokenValueInjection!16838 BalanceConc!29844) TokenValue!8765)

(assert (=> b!4982551 (= lt!2058447 (apply!13942 (transformation!8455 rule!200) (_1!34563 lt!2058458)))))

(declare-fun lt!2058457 () Unit!148659)

(declare-fun lt!2058449 () BalanceConc!29844)

(declare-fun ForallOf!1265 (Int BalanceConc!29844) Unit!148659)

(assert (=> b!4982551 (= lt!2058457 (ForallOf!1265 lambda!247859 lt!2058449))))

(declare-fun seqFromList!6076 (List!57706) BalanceConc!29844)

(assert (=> b!4982551 (= lt!2058449 (seqFromList!6076 lt!2058455))))

(assert (=> b!4982551 (= lt!2058455 (list!18463 (_1!34563 lt!2058458)))))

(declare-fun lt!2058451 () Unit!148659)

(assert (=> b!4982551 (= lt!2058451 (ForallOf!1265 lambda!247859 (_1!34563 lt!2058458)))))

(declare-fun b!4982552 () Bool)

(assert (=> b!4982552 (= e!3114087 (= (apply!13942 (transformation!8455 rule!200) lt!2058449) lt!2058447))))

(declare-fun lt!2058452 () Unit!148659)

(declare-fun lemmaEqSameImage!1194 (TokenValueInjection!16838 BalanceConc!29844 BalanceConc!29844) Unit!148659)

(assert (=> b!4982552 (= lt!2058452 (lemmaEqSameImage!1194 (transformation!8455 rule!200) (_1!34563 lt!2058458) lt!2058449))))

(declare-fun b!4982553 () Bool)

(declare-fun res!2126927 () Bool)

(assert (=> b!4982553 (=> res!2126927 e!3114087)))

(assert (=> b!4982553 (= res!2126927 (not (= (list!18463 lt!2058449) lt!2058455)))))

(declare-fun b!4982554 () Bool)

(declare-fun tp!1396731 () Bool)

(assert (=> b!4982554 (= e!3114086 (and (inv!75423 (c!850263 totalInput!520)) tp!1396731))))

(declare-fun b!4982555 () Bool)

(declare-fun matchR!6682 (Regex!13688 List!57706) Bool)

(assert (=> b!4982555 (= e!3114084 (matchR!6682 (regex!8455 rule!200) (_1!34564 lt!2058453)))))

(declare-fun b!4982556 () Bool)

(declare-fun tp!1396729 () Bool)

(declare-fun inv!75419 (String!65701) Bool)

(declare-fun inv!75424 (TokenValueInjection!16838) Bool)

(assert (=> b!4982556 (= e!3114080 (and tp!1396729 (inv!75419 (tag!9319 rule!200)) (inv!75424 (transformation!8455 rule!200)) e!3114079))))

(assert (= (and start!526072 res!2126930) b!4982546))

(assert (= (and b!4982546 res!2126928) b!4982547))

(assert (= (and b!4982547 res!2126926) b!4982548))

(assert (= (and b!4982548 res!2126929) b!4982550))

(assert (= (and b!4982550 (not res!2126923)) b!4982555))

(assert (= (and b!4982550 (not res!2126922)) b!4982543))

(assert (= (and b!4982543 (not res!2126931)) b!4982551))

(assert (= (and b!4982551 (not res!2126925)) b!4982544))

(assert (= (and b!4982544 (not res!2126924)) b!4982553))

(assert (= (and b!4982553 (not res!2126927)) b!4982552))

(assert (= b!4982556 b!4982545))

(assert (= start!526072 b!4982556))

(assert (= start!526072 b!4982554))

(assert (= start!526072 b!4982549))

(declare-fun m!6013922 () Bool)

(assert (=> b!4982553 m!6013922))

(declare-fun m!6013924 () Bool)

(assert (=> b!4982555 m!6013924))

(declare-fun m!6013926 () Bool)

(assert (=> b!4982556 m!6013926))

(declare-fun m!6013928 () Bool)

(assert (=> b!4982556 m!6013928))

(declare-fun m!6013930 () Bool)

(assert (=> b!4982554 m!6013930))

(declare-fun m!6013932 () Bool)

(assert (=> b!4982547 m!6013932))

(assert (=> b!4982547 m!6013932))

(declare-fun m!6013934 () Bool)

(assert (=> b!4982547 m!6013934))

(declare-fun m!6013936 () Bool)

(assert (=> b!4982547 m!6013936))

(declare-fun m!6013938 () Bool)

(assert (=> start!526072 m!6013938))

(declare-fun m!6013940 () Bool)

(assert (=> start!526072 m!6013940))

(declare-fun m!6013942 () Bool)

(assert (=> b!4982546 m!6013942))

(declare-fun m!6013944 () Bool)

(assert (=> b!4982548 m!6013944))

(declare-fun m!6013946 () Bool)

(assert (=> b!4982548 m!6013946))

(declare-fun m!6013948 () Bool)

(assert (=> b!4982543 m!6013948))

(declare-fun m!6013950 () Bool)

(assert (=> b!4982552 m!6013950))

(declare-fun m!6013952 () Bool)

(assert (=> b!4982552 m!6013952))

(declare-fun m!6013954 () Bool)

(assert (=> b!4982549 m!6013954))

(declare-fun m!6013956 () Bool)

(assert (=> b!4982551 m!6013956))

(declare-fun m!6013958 () Bool)

(assert (=> b!4982551 m!6013958))

(assert (=> b!4982551 m!6013958))

(declare-fun m!6013960 () Bool)

(assert (=> b!4982551 m!6013960))

(declare-fun m!6013962 () Bool)

(assert (=> b!4982551 m!6013962))

(declare-fun m!6013964 () Bool)

(assert (=> b!4982551 m!6013964))

(declare-fun m!6013966 () Bool)

(assert (=> b!4982551 m!6013966))

(declare-fun m!6013968 () Bool)

(assert (=> b!4982551 m!6013968))

(declare-fun m!6013970 () Bool)

(assert (=> b!4982551 m!6013970))

(declare-fun m!6013972 () Bool)

(assert (=> b!4982551 m!6013972))

(declare-fun m!6013974 () Bool)

(assert (=> b!4982550 m!6013974))

(declare-fun m!6013976 () Bool)

(assert (=> b!4982550 m!6013976))

(declare-fun m!6013978 () Bool)

(assert (=> b!4982550 m!6013978))

(declare-fun m!6013980 () Bool)

(assert (=> b!4982550 m!6013980))

(declare-fun m!6013982 () Bool)

(assert (=> b!4982550 m!6013982))

(declare-fun m!6013984 () Bool)

(assert (=> b!4982550 m!6013984))

(declare-fun m!6013986 () Bool)

(assert (=> b!4982550 m!6013986))

(assert (=> b!4982550 m!6013978))

(assert (=> b!4982550 m!6013976))

(push 1)

(assert (not b!4982552))

(assert (not b!4982554))

(assert (not b!4982556))

(assert (not b!4982551))

(assert (not b!4982547))

(assert (not b!4982550))

(assert (not start!526072))

(assert (not b_next!133911))

(assert b_and!349651)

(assert (not b!4982549))

(assert (not b!4982543))

(assert b_and!349653)

(assert (not b!4982548))

(assert (not b_next!133909))

(assert (not b!4982555))

(assert (not b!4982553))

(assert (not b!4982546))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349653)

(assert b_and!349651)

(assert (not b_next!133911))

(assert (not b_next!133909))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1604641 () Bool)

(declare-fun e!3114136 () Bool)

(assert (=> d!1604641 e!3114136))

(declare-fun res!2126968 () Bool)

(assert (=> d!1604641 (=> res!2126968 e!3114136)))

(declare-fun lt!2058497 () Bool)

(assert (=> d!1604641 (= res!2126968 (not lt!2058497))))

(declare-fun drop!2371 (List!57706 Int) List!57706)

(assert (=> d!1604641 (= lt!2058497 (= lt!2058454 (drop!2371 (list!18463 totalInput!520) (- (size!38210 (list!18463 totalInput!520)) (size!38210 lt!2058454)))))))

(assert (=> d!1604641 (= (isSuffix!1254 lt!2058454 (list!18463 totalInput!520)) lt!2058497)))

(declare-fun b!4982617 () Bool)

(assert (=> b!4982617 (= e!3114136 (>= (size!38210 (list!18463 totalInput!520)) (size!38210 lt!2058454)))))

(assert (= (and d!1604641 (not res!2126968)) b!4982617))

(assert (=> d!1604641 m!6013932))

(declare-fun m!6014054 () Bool)

(assert (=> d!1604641 m!6014054))

(assert (=> d!1604641 m!6013978))

(assert (=> d!1604641 m!6013932))

(declare-fun m!6014056 () Bool)

(assert (=> d!1604641 m!6014056))

(assert (=> b!4982617 m!6013932))

(assert (=> b!4982617 m!6014054))

(assert (=> b!4982617 m!6013978))

(assert (=> b!4982547 d!1604641))

(declare-fun d!1604643 () Bool)

(declare-fun list!18465 (Conc!15207) List!57706)

(assert (=> d!1604643 (= (list!18463 totalInput!520) (list!18465 (c!850263 totalInput!520)))))

(declare-fun bs!1184365 () Bool)

(assert (= bs!1184365 d!1604643))

(declare-fun m!6014058 () Bool)

(assert (=> bs!1184365 m!6014058))

(assert (=> b!4982547 d!1604643))

(declare-fun d!1604645 () Bool)

(assert (=> d!1604645 (= (list!18463 input!1580) (list!18465 (c!850263 input!1580)))))

(declare-fun bs!1184366 () Bool)

(assert (= bs!1184366 d!1604645))

(declare-fun m!6014060 () Bool)

(assert (=> bs!1184366 m!6014060))

(assert (=> b!4982547 d!1604645))

(declare-fun d!1604647 () Bool)

(declare-fun isBalanced!4225 (Conc!15207) Bool)

(assert (=> d!1604647 (= (inv!75422 totalInput!520) (isBalanced!4225 (c!850263 totalInput!520)))))

(declare-fun bs!1184367 () Bool)

(assert (= bs!1184367 d!1604647))

(declare-fun m!6014062 () Bool)

(assert (=> bs!1184367 m!6014062))

(assert (=> start!526072 d!1604647))

(declare-fun d!1604649 () Bool)

(assert (=> d!1604649 (= (inv!75422 input!1580) (isBalanced!4225 (c!850263 input!1580)))))

(declare-fun bs!1184368 () Bool)

(assert (= bs!1184368 d!1604649))

(declare-fun m!6014064 () Bool)

(assert (=> bs!1184368 m!6014064))

(assert (=> start!526072 d!1604649))

(declare-fun d!1604651 () Bool)

(assert (=> d!1604651 (= (inv!75419 (tag!9319 rule!200)) (= (mod (str.len (value!270388 (tag!9319 rule!200))) 2) 0))))

(assert (=> b!4982556 d!1604651))

(declare-fun d!1604653 () Bool)

(declare-fun res!2126971 () Bool)

(declare-fun e!3114139 () Bool)

(assert (=> d!1604653 (=> (not res!2126971) (not e!3114139))))

(assert (=> d!1604653 (= res!2126971 (semiInverseModEq!3748 (toChars!11305 (transformation!8455 rule!200)) (toValue!11446 (transformation!8455 rule!200))))))

(assert (=> d!1604653 (= (inv!75424 (transformation!8455 rule!200)) e!3114139)))

(declare-fun b!4982620 () Bool)

(declare-fun equivClasses!3570 (Int Int) Bool)

(assert (=> b!4982620 (= e!3114139 (equivClasses!3570 (toChars!11305 (transformation!8455 rule!200)) (toValue!11446 (transformation!8455 rule!200))))))

(assert (= (and d!1604653 res!2126971) b!4982620))

(assert (=> d!1604653 m!6013982))

(declare-fun m!6014066 () Bool)

(assert (=> b!4982620 m!6014066))

(assert (=> b!4982556 d!1604653))

(declare-fun d!1604655 () Bool)

(declare-fun res!2126976 () Bool)

(declare-fun e!3114142 () Bool)

(assert (=> d!1604655 (=> (not res!2126976) (not e!3114142))))

(declare-fun validRegex!5989 (Regex!13688) Bool)

(assert (=> d!1604655 (= res!2126976 (validRegex!5989 (regex!8455 rule!200)))))

(assert (=> d!1604655 (= (ruleValid!3863 thiss!16165 rule!200) e!3114142)))

(declare-fun b!4982625 () Bool)

(declare-fun res!2126977 () Bool)

(assert (=> b!4982625 (=> (not res!2126977) (not e!3114142))))

(declare-fun nullable!4640 (Regex!13688) Bool)

(assert (=> b!4982625 (= res!2126977 (not (nullable!4640 (regex!8455 rule!200))))))

(declare-fun b!4982626 () Bool)

(assert (=> b!4982626 (= e!3114142 (not (= (tag!9319 rule!200) (String!65702 ""))))))

(assert (= (and d!1604655 res!2126976) b!4982625))

(assert (= (and b!4982625 res!2126977) b!4982626))

(declare-fun m!6014068 () Bool)

(assert (=> d!1604655 m!6014068))

(declare-fun m!6014070 () Bool)

(assert (=> b!4982625 m!6014070))

(assert (=> b!4982546 d!1604655))

(declare-fun d!1604657 () Bool)

(declare-fun lt!2058500 () Int)

(assert (=> d!1604657 (>= lt!2058500 0)))

(declare-fun e!3114145 () Int)

(assert (=> d!1604657 (= lt!2058500 e!3114145)))

(declare-fun c!850269 () Bool)

(assert (=> d!1604657 (= c!850269 (is-Nil!57582 lt!2058454))))

(assert (=> d!1604657 (= (size!38210 lt!2058454) lt!2058500)))

(declare-fun b!4982631 () Bool)

(assert (=> b!4982631 (= e!3114145 0)))

(declare-fun b!4982632 () Bool)

(assert (=> b!4982632 (= e!3114145 (+ 1 (size!38210 (t!369838 lt!2058454))))))

(assert (= (and d!1604657 c!850269) b!4982631))

(assert (= (and d!1604657 (not c!850269)) b!4982632))

(declare-fun m!6014072 () Bool)

(assert (=> b!4982632 m!6014072))

(assert (=> b!4982550 d!1604657))

(declare-fun d!1604659 () Bool)

(declare-fun lt!2058501 () Int)

(assert (=> d!1604659 (>= lt!2058501 0)))

(declare-fun e!3114146 () Int)

(assert (=> d!1604659 (= lt!2058501 e!3114146)))

(declare-fun c!850270 () Bool)

(assert (=> d!1604659 (= c!850270 (is-Nil!57582 Nil!57582))))

(assert (=> d!1604659 (= (size!38210 Nil!57582) lt!2058501)))

(declare-fun b!4982633 () Bool)

(assert (=> b!4982633 (= e!3114146 0)))

(declare-fun b!4982634 () Bool)

(assert (=> b!4982634 (= e!3114146 (+ 1 (size!38210 (t!369838 Nil!57582))))))

(assert (= (and d!1604659 c!850270) b!4982633))

(assert (= (and d!1604659 (not c!850270)) b!4982634))

(declare-fun m!6014074 () Bool)

(assert (=> b!4982634 m!6014074))

(assert (=> b!4982550 d!1604659))

(declare-fun d!1604661 () Bool)

(declare-fun e!3114149 () Bool)

(assert (=> d!1604661 e!3114149))

(declare-fun res!2126980 () Bool)

(assert (=> d!1604661 (=> (not res!2126980) (not e!3114149))))

(assert (=> d!1604661 (= res!2126980 (semiInverseModEq!3748 (toChars!11305 (transformation!8455 rule!200)) (toValue!11446 (transformation!8455 rule!200))))))

(declare-fun Unit!148664 () Unit!148659)

(assert (=> d!1604661 (= (lemmaInv!1378 (transformation!8455 rule!200)) Unit!148664)))

(declare-fun b!4982637 () Bool)

(assert (=> b!4982637 (= e!3114149 (equivClasses!3570 (toChars!11305 (transformation!8455 rule!200)) (toValue!11446 (transformation!8455 rule!200))))))

(assert (= (and d!1604661 res!2126980) b!4982637))

(assert (=> d!1604661 m!6013982))

(assert (=> b!4982637 m!6014066))

(assert (=> b!4982550 d!1604661))

(declare-fun bm!347599 () Bool)

(declare-fun call!347605 () Regex!13688)

(declare-fun call!347606 () C!27626)

(declare-fun derivativeStep!3940 (Regex!13688 C!27626) Regex!13688)

(assert (=> bm!347599 (= call!347605 (derivativeStep!3940 (regex!8455 rule!200) call!347606))))

(declare-fun bm!347600 () Bool)

(declare-fun call!347608 () Unit!148659)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1226 (List!57706 List!57706 List!57706) Unit!148659)

(assert (=> bm!347600 (= call!347608 (lemmaIsPrefixSameLengthThenSameList!1226 lt!2058454 Nil!57582 lt!2058454))))

(declare-fun b!4982687 () Bool)

(declare-fun e!3114182 () Bool)

(declare-fun lt!2058586 () tuple2!62522)

(assert (=> b!4982687 (= e!3114182 (>= (size!38210 (_1!34564 lt!2058586)) (size!38210 Nil!57582)))))

(declare-fun b!4982688 () Bool)

(declare-fun e!3114183 () tuple2!62522)

(assert (=> b!4982688 (= e!3114183 (tuple2!62523 Nil!57582 lt!2058454))))

(declare-fun b!4982689 () Bool)

(declare-fun c!850290 () Bool)

(declare-fun call!347607 () Bool)

(assert (=> b!4982689 (= c!850290 call!347607)))

(declare-fun lt!2058568 () Unit!148659)

(declare-fun lt!2058592 () Unit!148659)

(assert (=> b!4982689 (= lt!2058568 lt!2058592)))

(declare-fun lt!2058574 () C!27626)

(declare-fun lt!2058572 () List!57706)

(declare-fun ++!12552 (List!57706 List!57706) List!57706)

(assert (=> b!4982689 (= (++!12552 (++!12552 Nil!57582 (Cons!57582 lt!2058574 Nil!57582)) lt!2058572) lt!2058454)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1463 (List!57706 C!27626 List!57706 List!57706) Unit!148659)

(assert (=> b!4982689 (= lt!2058592 (lemmaMoveElementToOtherListKeepsConcatEq!1463 Nil!57582 lt!2058574 lt!2058572 lt!2058454))))

(declare-fun tail!9822 (List!57706) List!57706)

(assert (=> b!4982689 (= lt!2058572 (tail!9822 lt!2058454))))

(declare-fun head!10689 (List!57706) C!27626)

(assert (=> b!4982689 (= lt!2058574 (head!10689 lt!2058454))))

(declare-fun lt!2058582 () Unit!148659)

(declare-fun lt!2058589 () Unit!148659)

(assert (=> b!4982689 (= lt!2058582 lt!2058589)))

(declare-fun isPrefix!5266 (List!57706 List!57706) Bool)

(declare-fun getSuffix!3106 (List!57706 List!57706) List!57706)

(assert (=> b!4982689 (isPrefix!5266 (++!12552 Nil!57582 (Cons!57582 (head!10689 (getSuffix!3106 lt!2058454 Nil!57582)) Nil!57582)) lt!2058454)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!853 (List!57706 List!57706) Unit!148659)

(assert (=> b!4982689 (= lt!2058589 (lemmaAddHeadSuffixToPrefixStillPrefix!853 Nil!57582 lt!2058454))))

(declare-fun lt!2058581 () Unit!148659)

(declare-fun lt!2058590 () Unit!148659)

(assert (=> b!4982689 (= lt!2058581 lt!2058590)))

(assert (=> b!4982689 (= lt!2058590 (lemmaAddHeadSuffixToPrefixStillPrefix!853 Nil!57582 lt!2058454))))

(declare-fun lt!2058580 () List!57706)

(assert (=> b!4982689 (= lt!2058580 (++!12552 Nil!57582 (Cons!57582 (head!10689 lt!2058454) Nil!57582)))))

(declare-fun lt!2058578 () Unit!148659)

(declare-fun e!3114178 () Unit!148659)

(assert (=> b!4982689 (= lt!2058578 e!3114178)))

(declare-fun c!850289 () Bool)

(assert (=> b!4982689 (= c!850289 (= (size!38210 Nil!57582) (size!38210 lt!2058454)))))

(declare-fun lt!2058591 () Unit!148659)

(declare-fun lt!2058576 () Unit!148659)

(assert (=> b!4982689 (= lt!2058591 lt!2058576)))

(assert (=> b!4982689 (<= (size!38210 Nil!57582) (size!38210 lt!2058454))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!779 (List!57706 List!57706) Unit!148659)

(assert (=> b!4982689 (= lt!2058576 (lemmaIsPrefixThenSmallerEqSize!779 Nil!57582 lt!2058454))))

(declare-fun e!3114181 () tuple2!62522)

(declare-fun e!3114179 () tuple2!62522)

(assert (=> b!4982689 (= e!3114181 e!3114179)))

(declare-fun b!4982690 () Bool)

(declare-fun e!3114184 () tuple2!62522)

(assert (=> b!4982690 (= e!3114184 e!3114181)))

(declare-fun c!850288 () Bool)

(assert (=> b!4982690 (= c!850288 (= (size!38210 Nil!57582) (size!38210 lt!2058454)))))

(declare-fun b!4982691 () Bool)

(declare-fun e!3114177 () tuple2!62522)

(assert (=> b!4982691 (= e!3114177 (tuple2!62523 Nil!57582 lt!2058454))))

(declare-fun b!4982692 () Bool)

(declare-fun Unit!148665 () Unit!148659)

(assert (=> b!4982692 (= e!3114178 Unit!148665)))

(declare-fun lt!2058569 () Unit!148659)

(declare-fun call!347609 () Unit!148659)

(assert (=> b!4982692 (= lt!2058569 call!347609)))

(declare-fun call!347611 () Bool)

(assert (=> b!4982692 call!347611))

(declare-fun lt!2058585 () Unit!148659)

(assert (=> b!4982692 (= lt!2058585 lt!2058569)))

(declare-fun lt!2058593 () Unit!148659)

(assert (=> b!4982692 (= lt!2058593 call!347608)))

(assert (=> b!4982692 (= lt!2058454 Nil!57582)))

(declare-fun lt!2058573 () Unit!148659)

(assert (=> b!4982692 (= lt!2058573 lt!2058593)))

(assert (=> b!4982692 false))

(declare-fun bm!347601 () Bool)

(declare-fun call!347610 () List!57706)

(assert (=> bm!347601 (= call!347610 (tail!9822 lt!2058454))))

(declare-fun b!4982693 () Bool)

(declare-fun call!347604 () tuple2!62522)

(assert (=> b!4982693 (= e!3114179 call!347604)))

(declare-fun bm!347602 () Bool)

(assert (=> bm!347602 (= call!347611 (isPrefix!5266 lt!2058454 lt!2058454))))

(declare-fun b!4982694 () Bool)

(assert (=> b!4982694 (= e!3114184 (tuple2!62523 Nil!57582 lt!2058454))))

(declare-fun b!4982695 () Bool)

(assert (=> b!4982695 (= e!3114183 (tuple2!62523 Nil!57582 Nil!57582))))

(declare-fun bm!347603 () Bool)

(declare-fun lemmaIsPrefixRefl!3590 (List!57706 List!57706) Unit!148659)

(assert (=> bm!347603 (= call!347609 (lemmaIsPrefixRefl!3590 lt!2058454 lt!2058454))))

(declare-fun b!4982696 () Bool)

(declare-fun lt!2058571 () tuple2!62522)

(assert (=> b!4982696 (= e!3114177 lt!2058571)))

(declare-fun b!4982697 () Bool)

(declare-fun Unit!148666 () Unit!148659)

(assert (=> b!4982697 (= e!3114178 Unit!148666)))

(declare-fun bm!347604 () Bool)

(assert (=> bm!347604 (= call!347606 (head!10689 lt!2058454))))

(declare-fun bm!347605 () Bool)

(assert (=> bm!347605 (= call!347607 (nullable!4640 (regex!8455 rule!200)))))

(declare-fun b!4982699 () Bool)

(declare-fun c!850287 () Bool)

(assert (=> b!4982699 (= c!850287 call!347607)))

(declare-fun lt!2058588 () Unit!148659)

(declare-fun lt!2058584 () Unit!148659)

(assert (=> b!4982699 (= lt!2058588 lt!2058584)))

(assert (=> b!4982699 (= lt!2058454 Nil!57582)))

(assert (=> b!4982699 (= lt!2058584 call!347608)))

(declare-fun lt!2058579 () Unit!148659)

(declare-fun lt!2058575 () Unit!148659)

(assert (=> b!4982699 (= lt!2058579 lt!2058575)))

(assert (=> b!4982699 call!347611))

(assert (=> b!4982699 (= lt!2058575 call!347609)))

(assert (=> b!4982699 (= e!3114181 e!3114183)))

(declare-fun b!4982700 () Bool)

(assert (=> b!4982700 (= e!3114179 e!3114177)))

(assert (=> b!4982700 (= lt!2058571 call!347604)))

(declare-fun c!850285 () Bool)

(assert (=> b!4982700 (= c!850285 (isEmpty!31094 (_1!34564 lt!2058571)))))

(declare-fun bm!347606 () Bool)

(assert (=> bm!347606 (= call!347604 (findLongestMatchInner!1899 call!347605 lt!2058580 (+ (size!38210 Nil!57582) 1) call!347610 lt!2058454 (size!38210 lt!2058454)))))

(declare-fun d!1604663 () Bool)

(declare-fun e!3114180 () Bool)

(assert (=> d!1604663 e!3114180))

(declare-fun res!2127002 () Bool)

(assert (=> d!1604663 (=> (not res!2127002) (not e!3114180))))

(assert (=> d!1604663 (= res!2127002 (= (++!12552 (_1!34564 lt!2058586) (_2!34564 lt!2058586)) lt!2058454))))

(assert (=> d!1604663 (= lt!2058586 e!3114184)))

(declare-fun c!850286 () Bool)

(declare-fun lostCause!1150 (Regex!13688) Bool)

(assert (=> d!1604663 (= c!850286 (lostCause!1150 (regex!8455 rule!200)))))

(declare-fun lt!2058594 () Unit!148659)

(declare-fun Unit!148667 () Unit!148659)

(assert (=> d!1604663 (= lt!2058594 Unit!148667)))

(assert (=> d!1604663 (= (getSuffix!3106 lt!2058454 Nil!57582) lt!2058454)))

(declare-fun lt!2058583 () Unit!148659)

(declare-fun lt!2058570 () Unit!148659)

(assert (=> d!1604663 (= lt!2058583 lt!2058570)))

(declare-fun lt!2058577 () List!57706)

(assert (=> d!1604663 (= lt!2058454 lt!2058577)))

(declare-fun lemmaSamePrefixThenSameSuffix!2518 (List!57706 List!57706 List!57706 List!57706 List!57706) Unit!148659)

(assert (=> d!1604663 (= lt!2058570 (lemmaSamePrefixThenSameSuffix!2518 Nil!57582 lt!2058454 Nil!57582 lt!2058577 lt!2058454))))

(assert (=> d!1604663 (= lt!2058577 (getSuffix!3106 lt!2058454 Nil!57582))))

(declare-fun lt!2058595 () Unit!148659)

(declare-fun lt!2058587 () Unit!148659)

(assert (=> d!1604663 (= lt!2058595 lt!2058587)))

(assert (=> d!1604663 (isPrefix!5266 Nil!57582 (++!12552 Nil!57582 lt!2058454))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3364 (List!57706 List!57706) Unit!148659)

(assert (=> d!1604663 (= lt!2058587 (lemmaConcatTwoListThenFirstIsPrefix!3364 Nil!57582 lt!2058454))))

(assert (=> d!1604663 (validRegex!5989 (regex!8455 rule!200))))

(assert (=> d!1604663 (= (findLongestMatchInner!1899 (regex!8455 rule!200) Nil!57582 (size!38210 Nil!57582) lt!2058454 lt!2058454 (size!38210 lt!2058454)) lt!2058586)))

(declare-fun b!4982698 () Bool)

(assert (=> b!4982698 (= e!3114180 e!3114182)))

(declare-fun res!2127003 () Bool)

(assert (=> b!4982698 (=> res!2127003 e!3114182)))

(assert (=> b!4982698 (= res!2127003 (isEmpty!31094 (_1!34564 lt!2058586)))))

(assert (= (and d!1604663 c!850286) b!4982694))

(assert (= (and d!1604663 (not c!850286)) b!4982690))

(assert (= (and b!4982690 c!850288) b!4982699))

(assert (= (and b!4982690 (not c!850288)) b!4982689))

(assert (= (and b!4982699 c!850287) b!4982695))

(assert (= (and b!4982699 (not c!850287)) b!4982688))

(assert (= (and b!4982689 c!850289) b!4982692))

(assert (= (and b!4982689 (not c!850289)) b!4982697))

(assert (= (and b!4982689 c!850290) b!4982700))

(assert (= (and b!4982689 (not c!850290)) b!4982693))

(assert (= (and b!4982700 c!850285) b!4982691))

(assert (= (and b!4982700 (not c!850285)) b!4982696))

(assert (= (or b!4982700 b!4982693) bm!347604))

(assert (= (or b!4982700 b!4982693) bm!347601))

(assert (= (or b!4982700 b!4982693) bm!347599))

(assert (= (or b!4982700 b!4982693) bm!347606))

(assert (= (or b!4982699 b!4982692) bm!347602))

(assert (= (or b!4982699 b!4982692) bm!347600))

(assert (= (or b!4982699 b!4982692) bm!347603))

(assert (= (or b!4982699 b!4982689) bm!347605))

(assert (= (and d!1604663 res!2127002) b!4982698))

(assert (= (and b!4982698 (not res!2127003)) b!4982687))

(declare-fun m!6014080 () Bool)

(assert (=> bm!347601 m!6014080))

(declare-fun m!6014082 () Bool)

(assert (=> b!4982698 m!6014082))

(declare-fun m!6014084 () Bool)

(assert (=> bm!347604 m!6014084))

(declare-fun m!6014086 () Bool)

(assert (=> bm!347602 m!6014086))

(declare-fun m!6014088 () Bool)

(assert (=> b!4982687 m!6014088))

(assert (=> b!4982687 m!6013976))

(declare-fun m!6014090 () Bool)

(assert (=> d!1604663 m!6014090))

(declare-fun m!6014092 () Bool)

(assert (=> d!1604663 m!6014092))

(declare-fun m!6014094 () Bool)

(assert (=> d!1604663 m!6014094))

(assert (=> d!1604663 m!6014068))

(declare-fun m!6014096 () Bool)

(assert (=> d!1604663 m!6014096))

(declare-fun m!6014098 () Bool)

(assert (=> d!1604663 m!6014098))

(declare-fun m!6014100 () Bool)

(assert (=> d!1604663 m!6014100))

(assert (=> d!1604663 m!6014098))

(declare-fun m!6014102 () Bool)

(assert (=> d!1604663 m!6014102))

(assert (=> bm!347605 m!6014070))

(declare-fun m!6014104 () Bool)

(assert (=> bm!347603 m!6014104))

(declare-fun m!6014106 () Bool)

(assert (=> b!4982700 m!6014106))

(declare-fun m!6014108 () Bool)

(assert (=> bm!347599 m!6014108))

(assert (=> bm!347606 m!6013978))

(declare-fun m!6014110 () Bool)

(assert (=> bm!347606 m!6014110))

(declare-fun m!6014112 () Bool)

(assert (=> bm!347600 m!6014112))

(declare-fun m!6014114 () Bool)

(assert (=> b!4982689 m!6014114))

(declare-fun m!6014116 () Bool)

(assert (=> b!4982689 m!6014116))

(declare-fun m!6014118 () Bool)

(assert (=> b!4982689 m!6014118))

(declare-fun m!6014120 () Bool)

(assert (=> b!4982689 m!6014120))

(assert (=> b!4982689 m!6014116))

(assert (=> b!4982689 m!6014080))

(assert (=> b!4982689 m!6013978))

(declare-fun m!6014122 () Bool)

(assert (=> b!4982689 m!6014122))

(assert (=> b!4982689 m!6014084))

(declare-fun m!6014124 () Bool)

(assert (=> b!4982689 m!6014124))

(assert (=> b!4982689 m!6013976))

(assert (=> b!4982689 m!6014094))

(declare-fun m!6014126 () Bool)

(assert (=> b!4982689 m!6014126))

(declare-fun m!6014128 () Bool)

(assert (=> b!4982689 m!6014128))

(declare-fun m!6014130 () Bool)

(assert (=> b!4982689 m!6014130))

(assert (=> b!4982689 m!6014128))

(assert (=> b!4982689 m!6014094))

(assert (=> b!4982550 d!1604663))

(declare-fun bs!1184370 () Bool)

(declare-fun d!1604673 () Bool)

(assert (= bs!1184370 (and d!1604673 b!4982543)))

(declare-fun lambda!247869 () Int)

(assert (=> bs!1184370 (= lambda!247869 lambda!247859)))

(assert (=> d!1604673 true))

(assert (=> d!1604673 (< (dynLambda!23359 order!26499 (toChars!11305 (transformation!8455 rule!200))) (dynLambda!23358 order!26497 lambda!247869))))

(assert (=> d!1604673 true))

(assert (=> d!1604673 (< (dynLambda!23357 order!26495 (toValue!11446 (transformation!8455 rule!200))) (dynLambda!23358 order!26497 lambda!247869))))

(assert (=> d!1604673 (= (semiInverseModEq!3748 (toChars!11305 (transformation!8455 rule!200)) (toValue!11446 (transformation!8455 rule!200))) (Forall!1805 lambda!247869))))

(declare-fun bs!1184371 () Bool)

(assert (= bs!1184371 d!1604673))

(declare-fun m!6014132 () Bool)

(assert (=> bs!1184371 m!6014132))

(assert (=> b!4982550 d!1604673))

(declare-fun d!1604675 () Bool)

(assert (=> d!1604675 (= (isEmpty!31094 (_1!34564 lt!2058453)) (is-Nil!57582 (_1!34564 lt!2058453)))))

(assert (=> b!4982550 d!1604675))

(declare-fun d!1604677 () Bool)

(declare-fun e!3114191 () Bool)

(assert (=> d!1604677 e!3114191))

(declare-fun res!2127013 () Bool)

(assert (=> d!1604677 (=> res!2127013 e!3114191)))

(assert (=> d!1604677 (= res!2127013 (isEmpty!31094 (_1!34564 (findLongestMatchInner!1899 (regex!8455 rule!200) Nil!57582 (size!38210 Nil!57582) lt!2058454 lt!2058454 (size!38210 lt!2058454)))))))

(declare-fun lt!2058603 () Unit!148659)

(declare-fun choose!36811 (Regex!13688 List!57706) Unit!148659)

(assert (=> d!1604677 (= lt!2058603 (choose!36811 (regex!8455 rule!200) lt!2058454))))

(assert (=> d!1604677 (validRegex!5989 (regex!8455 rule!200))))

(assert (=> d!1604677 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1860 (regex!8455 rule!200) lt!2058454) lt!2058603)))

(declare-fun b!4982716 () Bool)

(assert (=> b!4982716 (= e!3114191 (matchR!6682 (regex!8455 rule!200) (_1!34564 (findLongestMatchInner!1899 (regex!8455 rule!200) Nil!57582 (size!38210 Nil!57582) lt!2058454 lt!2058454 (size!38210 lt!2058454)))))))

(assert (= (and d!1604677 (not res!2127013)) b!4982716))

(assert (=> d!1604677 m!6014068))

(assert (=> d!1604677 m!6013978))

(declare-fun m!6014154 () Bool)

(assert (=> d!1604677 m!6014154))

(declare-fun m!6014156 () Bool)

(assert (=> d!1604677 m!6014156))

(assert (=> d!1604677 m!6013976))

(assert (=> d!1604677 m!6013976))

(assert (=> d!1604677 m!6013978))

(assert (=> d!1604677 m!6013980))

(assert (=> b!4982716 m!6013976))

(assert (=> b!4982716 m!6013978))

(assert (=> b!4982716 m!6013976))

(assert (=> b!4982716 m!6013978))

(assert (=> b!4982716 m!6013980))

(declare-fun m!6014160 () Bool)

(assert (=> b!4982716 m!6014160))

(assert (=> b!4982550 d!1604677))

(declare-fun d!1604679 () Bool)

(declare-fun lt!2058606 () Bool)

(assert (=> d!1604679 (= lt!2058606 (isEmpty!31094 (list!18463 (_1!34563 lt!2058458))))))

(declare-fun isEmpty!31097 (Conc!15207) Bool)

(assert (=> d!1604679 (= lt!2058606 (isEmpty!31097 (c!850263 (_1!34563 lt!2058458))))))

(assert (=> d!1604679 (= (isEmpty!31093 (_1!34563 lt!2058458)) lt!2058606)))

(declare-fun bs!1184372 () Bool)

(assert (= bs!1184372 d!1604679))

(assert (=> bs!1184372 m!6013964))

(assert (=> bs!1184372 m!6013964))

(declare-fun m!6014176 () Bool)

(assert (=> bs!1184372 m!6014176))

(declare-fun m!6014178 () Bool)

(assert (=> bs!1184372 m!6014178))

(assert (=> b!4982548 d!1604679))

(declare-fun d!1604683 () Bool)

(declare-fun lt!2058611 () tuple2!62520)

(declare-fun findLongestMatch!1715 (Regex!13688 List!57706) tuple2!62522)

(assert (=> d!1604683 (= (tuple2!62523 (list!18463 (_1!34563 lt!2058611)) (list!18463 (_2!34563 lt!2058611))) (findLongestMatch!1715 (regex!8455 rule!200) (list!18463 input!1580)))))

(declare-fun choose!36812 (Regex!13688 BalanceConc!29844 BalanceConc!29844) tuple2!62520)

(assert (=> d!1604683 (= lt!2058611 (choose!36812 (regex!8455 rule!200) input!1580 totalInput!520))))

(assert (=> d!1604683 (validRegex!5989 (regex!8455 rule!200))))

(assert (=> d!1604683 (= (findLongestMatchWithZipperSequenceV2!218 (regex!8455 rule!200) input!1580 totalInput!520) lt!2058611)))

(declare-fun bs!1184374 () Bool)

(assert (= bs!1184374 d!1604683))

(assert (=> bs!1184374 m!6014068))

(assert (=> bs!1184374 m!6013936))

(declare-fun m!6014186 () Bool)

(assert (=> bs!1184374 m!6014186))

(declare-fun m!6014188 () Bool)

(assert (=> bs!1184374 m!6014188))

(assert (=> bs!1184374 m!6013936))

(declare-fun m!6014190 () Bool)

(assert (=> bs!1184374 m!6014190))

(declare-fun m!6014192 () Bool)

(assert (=> bs!1184374 m!6014192))

(assert (=> b!4982548 d!1604683))

(declare-fun d!1604689 () Bool)

(declare-fun c!850294 () Bool)

(assert (=> d!1604689 (= c!850294 (is-Node!15207 (c!850263 input!1580)))))

(declare-fun e!3114199 () Bool)

(assert (=> d!1604689 (= (inv!75423 (c!850263 input!1580)) e!3114199)))

(declare-fun b!4982725 () Bool)

(declare-fun inv!75428 (Conc!15207) Bool)

(assert (=> b!4982725 (= e!3114199 (inv!75428 (c!850263 input!1580)))))

(declare-fun b!4982726 () Bool)

(declare-fun e!3114200 () Bool)

(assert (=> b!4982726 (= e!3114199 e!3114200)))

(declare-fun res!2127016 () Bool)

(assert (=> b!4982726 (= res!2127016 (not (is-Leaf!25260 (c!850263 input!1580))))))

(assert (=> b!4982726 (=> res!2127016 e!3114200)))

(declare-fun b!4982727 () Bool)

(declare-fun inv!75429 (Conc!15207) Bool)

(assert (=> b!4982727 (= e!3114200 (inv!75429 (c!850263 input!1580)))))

(assert (= (and d!1604689 c!850294) b!4982725))

(assert (= (and d!1604689 (not c!850294)) b!4982726))

(assert (= (and b!4982726 (not res!2127016)) b!4982727))

(declare-fun m!6014198 () Bool)

(assert (=> b!4982725 m!6014198))

(declare-fun m!6014200 () Bool)

(assert (=> b!4982727 m!6014200))

(assert (=> b!4982549 d!1604689))

(declare-fun d!1604693 () Bool)

(declare-fun dynLambda!23363 (Int BalanceConc!29844) TokenValue!8765)

(assert (=> d!1604693 (= (apply!13942 (transformation!8455 rule!200) lt!2058449) (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) lt!2058449))))

(declare-fun b_lambda!197913 () Bool)

(assert (=> (not b_lambda!197913) (not d!1604693)))

(declare-fun t!369845 () Bool)

(declare-fun tb!261633 () Bool)

(assert (=> (and b!4982545 (= (toValue!11446 (transformation!8455 rule!200)) (toValue!11446 (transformation!8455 rule!200))) t!369845) tb!261633))

(declare-fun result!326942 () Bool)

(declare-fun inv!21 (TokenValue!8765) Bool)

(assert (=> tb!261633 (= result!326942 (inv!21 (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) lt!2058449)))))

(declare-fun m!6014210 () Bool)

(assert (=> tb!261633 m!6014210))

(assert (=> d!1604693 t!369845))

(declare-fun b_and!349661 () Bool)

(assert (= b_and!349651 (and (=> t!369845 result!326942) b_and!349661)))

(declare-fun m!6014212 () Bool)

(assert (=> d!1604693 m!6014212))

(assert (=> b!4982552 d!1604693))

(declare-fun b!4982736 () Bool)

(declare-fun e!3114208 () Bool)

(assert (=> b!4982736 (= e!3114208 true)))

(declare-fun d!1604699 () Bool)

(assert (=> d!1604699 e!3114208))

(assert (= d!1604699 b!4982736))

(declare-fun order!26507 () Int)

(declare-fun lambda!247872 () Int)

(declare-fun dynLambda!23364 (Int Int) Int)

(assert (=> b!4982736 (< (dynLambda!23357 order!26495 (toValue!11446 (transformation!8455 rule!200))) (dynLambda!23364 order!26507 lambda!247872))))

(assert (=> b!4982736 (< (dynLambda!23359 order!26499 (toChars!11305 (transformation!8455 rule!200))) (dynLambda!23364 order!26507 lambda!247872))))

(assert (=> d!1604699 (= (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) (_1!34563 lt!2058458)) (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) lt!2058449))))

(declare-fun lt!2058619 () Unit!148659)

(declare-fun Forall2of!484 (Int BalanceConc!29844 BalanceConc!29844) Unit!148659)

(assert (=> d!1604699 (= lt!2058619 (Forall2of!484 lambda!247872 (_1!34563 lt!2058458) lt!2058449))))

(assert (=> d!1604699 (= (list!18463 (_1!34563 lt!2058458)) (list!18463 lt!2058449))))

(assert (=> d!1604699 (= (lemmaEqSameImage!1194 (transformation!8455 rule!200) (_1!34563 lt!2058458) lt!2058449) lt!2058619)))

(declare-fun b_lambda!197917 () Bool)

(assert (=> (not b_lambda!197917) (not d!1604699)))

(declare-fun t!369847 () Bool)

(declare-fun tb!261635 () Bool)

(assert (=> (and b!4982545 (= (toValue!11446 (transformation!8455 rule!200)) (toValue!11446 (transformation!8455 rule!200))) t!369847) tb!261635))

(declare-fun result!326946 () Bool)

(assert (=> tb!261635 (= result!326946 (inv!21 (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) (_1!34563 lt!2058458))))))

(declare-fun m!6014224 () Bool)

(assert (=> tb!261635 m!6014224))

(assert (=> d!1604699 t!369847))

(declare-fun b_and!349663 () Bool)

(assert (= b_and!349661 (and (=> t!369847 result!326946) b_and!349663)))

(declare-fun b_lambda!197919 () Bool)

(assert (=> (not b_lambda!197919) (not d!1604699)))

(assert (=> d!1604699 t!369845))

(declare-fun b_and!349665 () Bool)

(assert (= b_and!349663 (and (=> t!369845 result!326942) b_and!349665)))

(assert (=> d!1604699 m!6013964))

(declare-fun m!6014226 () Bool)

(assert (=> d!1604699 m!6014226))

(assert (=> d!1604699 m!6013922))

(assert (=> d!1604699 m!6014212))

(declare-fun m!6014228 () Bool)

(assert (=> d!1604699 m!6014228))

(assert (=> b!4982552 d!1604699))

(declare-fun d!1604711 () Bool)

(assert (=> d!1604711 (= (list!18463 lt!2058449) (list!18465 (c!850263 lt!2058449)))))

(declare-fun bs!1184383 () Bool)

(assert (= bs!1184383 d!1604711))

(declare-fun m!6014230 () Bool)

(assert (=> bs!1184383 m!6014230))

(assert (=> b!4982553 d!1604711))

(declare-fun d!1604713 () Bool)

(declare-fun fromListB!2745 (List!57706) BalanceConc!29844)

(assert (=> d!1604713 (= (seqFromList!6076 lt!2058455) (fromListB!2745 lt!2058455))))

(declare-fun bs!1184384 () Bool)

(assert (= bs!1184384 d!1604713))

(declare-fun m!6014232 () Bool)

(assert (=> bs!1184384 m!6014232))

(assert (=> b!4982551 d!1604713))

(declare-fun d!1604715 () Bool)

(declare-fun isEmpty!31098 (Option!14529) Bool)

(assert (=> d!1604715 (= (isDefined!11438 (maxPrefixOneRule!3671 thiss!16165 rule!200 lt!2058454)) (not (isEmpty!31098 (maxPrefixOneRule!3671 thiss!16165 rule!200 lt!2058454))))))

(declare-fun bs!1184385 () Bool)

(assert (= bs!1184385 d!1604715))

(assert (=> bs!1184385 m!6013958))

(declare-fun m!6014234 () Bool)

(assert (=> bs!1184385 m!6014234))

(assert (=> b!4982551 d!1604715))

(declare-fun d!1604717 () Bool)

(declare-fun lt!2058622 () Int)

(assert (=> d!1604717 (= lt!2058622 (size!38210 (list!18463 (_1!34563 lt!2058458))))))

(declare-fun size!38216 (Conc!15207) Int)

(assert (=> d!1604717 (= lt!2058622 (size!38216 (c!850263 (_1!34563 lt!2058458))))))

(assert (=> d!1604717 (= (size!38212 (_1!34563 lt!2058458)) lt!2058622)))

(declare-fun bs!1184386 () Bool)

(assert (= bs!1184386 d!1604717))

(assert (=> bs!1184386 m!6013964))

(assert (=> bs!1184386 m!6013964))

(declare-fun m!6014240 () Bool)

(assert (=> bs!1184386 m!6014240))

(declare-fun m!6014242 () Bool)

(assert (=> bs!1184386 m!6014242))

(assert (=> b!4982551 d!1604717))

(declare-fun d!1604721 () Bool)

(assert (=> d!1604721 (= (apply!13942 (transformation!8455 rule!200) (_1!34563 lt!2058458)) (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) (_1!34563 lt!2058458)))))

(declare-fun b_lambda!197921 () Bool)

(assert (=> (not b_lambda!197921) (not d!1604721)))

(assert (=> d!1604721 t!369847))

(declare-fun b_and!349667 () Bool)

(assert (= b_and!349665 (and (=> t!369847 result!326946) b_and!349667)))

(assert (=> d!1604721 m!6014228))

(assert (=> b!4982551 d!1604721))

(declare-fun d!1604723 () Bool)

(assert (=> d!1604723 (= (list!18463 (_1!34563 lt!2058458)) (list!18465 (c!850263 (_1!34563 lt!2058458))))))

(declare-fun bs!1184387 () Bool)

(assert (= bs!1184387 d!1604723))

(declare-fun m!6014244 () Bool)

(assert (=> bs!1184387 m!6014244))

(assert (=> b!4982551 d!1604723))

(declare-fun b!4982809 () Bool)

(declare-fun e!3114251 () Bool)

(declare-fun lt!2058643 () Option!14529)

(declare-fun get!20019 (Option!14529) tuple2!62524)

(assert (=> b!4982809 (= e!3114251 (= (size!38211 (_1!34565 (get!20019 lt!2058643))) (size!38210 (originalCharacters!8714 (_1!34565 (get!20019 lt!2058643))))))))

(declare-fun d!1604725 () Bool)

(declare-fun e!3114250 () Bool)

(assert (=> d!1604725 e!3114250))

(declare-fun res!2127067 () Bool)

(assert (=> d!1604725 (=> res!2127067 e!3114250)))

(assert (=> d!1604725 (= res!2127067 (isEmpty!31098 lt!2058643))))

(declare-fun e!3114249 () Option!14529)

(assert (=> d!1604725 (= lt!2058643 e!3114249)))

(declare-fun c!850309 () Bool)

(declare-fun lt!2058641 () tuple2!62522)

(assert (=> d!1604725 (= c!850309 (isEmpty!31094 (_1!34564 lt!2058641)))))

(assert (=> d!1604725 (= lt!2058641 (findLongestMatch!1715 (regex!8455 rule!200) lt!2058454))))

(assert (=> d!1604725 (ruleValid!3863 thiss!16165 rule!200)))

(assert (=> d!1604725 (= (maxPrefixOneRule!3671 thiss!16165 rule!200 lt!2058454) lt!2058643)))

(declare-fun b!4982810 () Bool)

(assert (=> b!4982810 (= e!3114249 (Some!14528 (tuple2!62525 (Token!15367 (apply!13942 (transformation!8455 rule!200) (seqFromList!6076 (_1!34564 lt!2058641))) rule!200 (size!38212 (seqFromList!6076 (_1!34564 lt!2058641))) (_1!34564 lt!2058641)) (_2!34564 lt!2058641))))))

(declare-fun lt!2058642 () Unit!148659)

(assert (=> b!4982810 (= lt!2058642 (longestMatchIsAcceptedByMatchOrIsEmpty!1860 (regex!8455 rule!200) lt!2058454))))

(declare-fun res!2127069 () Bool)

(assert (=> b!4982810 (= res!2127069 (isEmpty!31094 (_1!34564 (findLongestMatchInner!1899 (regex!8455 rule!200) Nil!57582 (size!38210 Nil!57582) lt!2058454 lt!2058454 (size!38210 lt!2058454)))))))

(declare-fun e!3114252 () Bool)

(assert (=> b!4982810 (=> res!2127069 e!3114252)))

(assert (=> b!4982810 e!3114252))

(declare-fun lt!2058640 () Unit!148659)

(assert (=> b!4982810 (= lt!2058640 lt!2058642)))

(declare-fun lt!2058639 () Unit!148659)

(declare-fun lemmaSemiInverse!2616 (TokenValueInjection!16838 BalanceConc!29844) Unit!148659)

(assert (=> b!4982810 (= lt!2058639 (lemmaSemiInverse!2616 (transformation!8455 rule!200) (seqFromList!6076 (_1!34564 lt!2058641))))))

(declare-fun b!4982811 () Bool)

(declare-fun res!2127063 () Bool)

(assert (=> b!4982811 (=> (not res!2127063) (not e!3114251))))

(assert (=> b!4982811 (= res!2127063 (= (value!270389 (_1!34565 (get!20019 lt!2058643))) (apply!13942 (transformation!8455 (rule!11709 (_1!34565 (get!20019 lt!2058643)))) (seqFromList!6076 (originalCharacters!8714 (_1!34565 (get!20019 lt!2058643)))))))))

(declare-fun b!4982812 () Bool)

(declare-fun res!2127068 () Bool)

(assert (=> b!4982812 (=> (not res!2127068) (not e!3114251))))

(declare-fun charsOf!5453 (Token!15366) BalanceConc!29844)

(assert (=> b!4982812 (= res!2127068 (= (++!12552 (list!18463 (charsOf!5453 (_1!34565 (get!20019 lt!2058643)))) (_2!34565 (get!20019 lt!2058643))) lt!2058454))))

(declare-fun b!4982813 () Bool)

(assert (=> b!4982813 (= e!3114250 e!3114251)))

(declare-fun res!2127065 () Bool)

(assert (=> b!4982813 (=> (not res!2127065) (not e!3114251))))

(assert (=> b!4982813 (= res!2127065 (matchR!6682 (regex!8455 rule!200) (list!18463 (charsOf!5453 (_1!34565 (get!20019 lt!2058643))))))))

(declare-fun b!4982814 () Bool)

(assert (=> b!4982814 (= e!3114249 None!14528)))

(declare-fun b!4982815 () Bool)

(declare-fun res!2127066 () Bool)

(assert (=> b!4982815 (=> (not res!2127066) (not e!3114251))))

(assert (=> b!4982815 (= res!2127066 (= (rule!11709 (_1!34565 (get!20019 lt!2058643))) rule!200))))

(declare-fun b!4982816 () Bool)

(assert (=> b!4982816 (= e!3114252 (matchR!6682 (regex!8455 rule!200) (_1!34564 (findLongestMatchInner!1899 (regex!8455 rule!200) Nil!57582 (size!38210 Nil!57582) lt!2058454 lt!2058454 (size!38210 lt!2058454)))))))

(declare-fun b!4982817 () Bool)

(declare-fun res!2127064 () Bool)

(assert (=> b!4982817 (=> (not res!2127064) (not e!3114251))))

(assert (=> b!4982817 (= res!2127064 (< (size!38210 (_2!34565 (get!20019 lt!2058643))) (size!38210 lt!2058454)))))

(assert (= (and d!1604725 c!850309) b!4982814))

(assert (= (and d!1604725 (not c!850309)) b!4982810))

(assert (= (and b!4982810 (not res!2127069)) b!4982816))

(assert (= (and d!1604725 (not res!2127067)) b!4982813))

(assert (= (and b!4982813 res!2127065) b!4982812))

(assert (= (and b!4982812 res!2127068) b!4982817))

(assert (= (and b!4982817 res!2127064) b!4982815))

(assert (= (and b!4982815 res!2127066) b!4982811))

(assert (= (and b!4982811 res!2127063) b!4982809))

(assert (=> b!4982810 m!6013978))

(declare-fun m!6014272 () Bool)

(assert (=> b!4982810 m!6014272))

(declare-fun m!6014274 () Bool)

(assert (=> b!4982810 m!6014274))

(assert (=> b!4982810 m!6014154))

(assert (=> b!4982810 m!6013976))

(assert (=> b!4982810 m!6013978))

(assert (=> b!4982810 m!6013980))

(assert (=> b!4982810 m!6014272))

(declare-fun m!6014276 () Bool)

(assert (=> b!4982810 m!6014276))

(assert (=> b!4982810 m!6013986))

(assert (=> b!4982810 m!6014272))

(assert (=> b!4982810 m!6013976))

(assert (=> b!4982810 m!6014272))

(declare-fun m!6014278 () Bool)

(assert (=> b!4982810 m!6014278))

(declare-fun m!6014280 () Bool)

(assert (=> b!4982809 m!6014280))

(declare-fun m!6014282 () Bool)

(assert (=> b!4982809 m!6014282))

(assert (=> b!4982815 m!6014280))

(assert (=> b!4982816 m!6013976))

(assert (=> b!4982816 m!6013978))

(assert (=> b!4982816 m!6013976))

(assert (=> b!4982816 m!6013978))

(assert (=> b!4982816 m!6013980))

(assert (=> b!4982816 m!6014160))

(assert (=> b!4982812 m!6014280))

(declare-fun m!6014284 () Bool)

(assert (=> b!4982812 m!6014284))

(assert (=> b!4982812 m!6014284))

(declare-fun m!6014286 () Bool)

(assert (=> b!4982812 m!6014286))

(assert (=> b!4982812 m!6014286))

(declare-fun m!6014288 () Bool)

(assert (=> b!4982812 m!6014288))

(declare-fun m!6014290 () Bool)

(assert (=> d!1604725 m!6014290))

(declare-fun m!6014292 () Bool)

(assert (=> d!1604725 m!6014292))

(declare-fun m!6014294 () Bool)

(assert (=> d!1604725 m!6014294))

(assert (=> d!1604725 m!6013942))

(assert (=> b!4982811 m!6014280))

(declare-fun m!6014296 () Bool)

(assert (=> b!4982811 m!6014296))

(assert (=> b!4982811 m!6014296))

(declare-fun m!6014298 () Bool)

(assert (=> b!4982811 m!6014298))

(assert (=> b!4982817 m!6014280))

(declare-fun m!6014300 () Bool)

(assert (=> b!4982817 m!6014300))

(assert (=> b!4982817 m!6013978))

(assert (=> b!4982813 m!6014280))

(assert (=> b!4982813 m!6014284))

(assert (=> b!4982813 m!6014284))

(assert (=> b!4982813 m!6014286))

(assert (=> b!4982813 m!6014286))

(declare-fun m!6014302 () Bool)

(assert (=> b!4982813 m!6014302))

(assert (=> b!4982551 d!1604725))

(declare-fun d!1604737 () Bool)

(declare-fun dynLambda!23365 (Int BalanceConc!29844) Bool)

(assert (=> d!1604737 (dynLambda!23365 lambda!247859 (_1!34563 lt!2058458))))

(declare-fun lt!2058646 () Unit!148659)

(declare-fun choose!36813 (Int BalanceConc!29844) Unit!148659)

(assert (=> d!1604737 (= lt!2058646 (choose!36813 lambda!247859 (_1!34563 lt!2058458)))))

(assert (=> d!1604737 (Forall!1805 lambda!247859)))

(assert (=> d!1604737 (= (ForallOf!1265 lambda!247859 (_1!34563 lt!2058458)) lt!2058646)))

(declare-fun b_lambda!197925 () Bool)

(assert (=> (not b_lambda!197925) (not d!1604737)))

(declare-fun bs!1184390 () Bool)

(assert (= bs!1184390 d!1604737))

(declare-fun m!6014304 () Bool)

(assert (=> bs!1184390 m!6014304))

(declare-fun m!6014306 () Bool)

(assert (=> bs!1184390 m!6014306))

(assert (=> bs!1184390 m!6013948))

(assert (=> b!4982551 d!1604737))

(declare-fun d!1604739 () Bool)

(declare-fun isEmpty!31099 (Option!14530) Bool)

(assert (=> d!1604739 (= (isDefined!11439 (Some!14529 (tuple2!62527 (Token!15367 lt!2058447 rule!200 (size!38212 (_1!34563 lt!2058458)) lt!2058455) (_2!34563 lt!2058458)))) (not (isEmpty!31099 (Some!14529 (tuple2!62527 (Token!15367 lt!2058447 rule!200 (size!38212 (_1!34563 lt!2058458)) lt!2058455) (_2!34563 lt!2058458))))))))

(declare-fun bs!1184391 () Bool)

(assert (= bs!1184391 d!1604739))

(declare-fun m!6014308 () Bool)

(assert (=> bs!1184391 m!6014308))

(assert (=> b!4982551 d!1604739))

(declare-fun d!1604741 () Bool)

(assert (=> d!1604741 (dynLambda!23365 lambda!247859 lt!2058449)))

(declare-fun lt!2058649 () Unit!148659)

(assert (=> d!1604741 (= lt!2058649 (choose!36813 lambda!247859 lt!2058449))))

(assert (=> d!1604741 (Forall!1805 lambda!247859)))

(assert (=> d!1604741 (= (ForallOf!1265 lambda!247859 lt!2058449) lt!2058649)))

(declare-fun b_lambda!197927 () Bool)

(assert (=> (not b_lambda!197927) (not d!1604741)))

(declare-fun bs!1184392 () Bool)

(assert (= bs!1184392 d!1604741))

(declare-fun m!6014310 () Bool)

(assert (=> bs!1184392 m!6014310))

(declare-fun m!6014312 () Bool)

(assert (=> bs!1184392 m!6014312))

(assert (=> bs!1184392 m!6013948))

(assert (=> b!4982551 d!1604741))

(declare-fun b!4982862 () Bool)

(declare-fun e!3114277 () Bool)

(declare-fun e!3114281 () Bool)

(assert (=> b!4982862 (= e!3114277 e!3114281)))

(declare-fun res!2127100 () Bool)

(assert (=> b!4982862 (=> res!2127100 e!3114281)))

(declare-fun call!347617 () Bool)

(assert (=> b!4982862 (= res!2127100 call!347617)))

(declare-fun b!4982863 () Bool)

(declare-fun e!3114279 () Bool)

(assert (=> b!4982863 (= e!3114279 e!3114277)))

(declare-fun res!2127096 () Bool)

(assert (=> b!4982863 (=> (not res!2127096) (not e!3114277))))

(declare-fun lt!2058653 () Bool)

(assert (=> b!4982863 (= res!2127096 (not lt!2058653))))

(declare-fun b!4982864 () Bool)

(declare-fun res!2127097 () Bool)

(assert (=> b!4982864 (=> res!2127097 e!3114279)))

(declare-fun e!3114282 () Bool)

(assert (=> b!4982864 (= res!2127097 e!3114282)))

(declare-fun res!2127102 () Bool)

(assert (=> b!4982864 (=> (not res!2127102) (not e!3114282))))

(assert (=> b!4982864 (= res!2127102 lt!2058653)))

(declare-fun bm!347612 () Bool)

(assert (=> bm!347612 (= call!347617 (isEmpty!31094 (_1!34564 lt!2058453)))))

(declare-fun b!4982865 () Bool)

(declare-fun res!2127093 () Bool)

(assert (=> b!4982865 (=> (not res!2127093) (not e!3114282))))

(assert (=> b!4982865 (= res!2127093 (not call!347617))))

(declare-fun b!4982866 () Bool)

(declare-fun res!2127098 () Bool)

(assert (=> b!4982866 (=> (not res!2127098) (not e!3114282))))

(assert (=> b!4982866 (= res!2127098 (isEmpty!31094 (tail!9822 (_1!34564 lt!2058453))))))

(declare-fun b!4982867 () Bool)

(assert (=> b!4982867 (= e!3114281 (not (= (head!10689 (_1!34564 lt!2058453)) (c!850262 (regex!8455 rule!200)))))))

(declare-fun b!4982869 () Bool)

(declare-fun res!2127095 () Bool)

(assert (=> b!4982869 (=> res!2127095 e!3114281)))

(assert (=> b!4982869 (= res!2127095 (not (isEmpty!31094 (tail!9822 (_1!34564 lt!2058453)))))))

(declare-fun b!4982870 () Bool)

(declare-fun res!2127094 () Bool)

(assert (=> b!4982870 (=> res!2127094 e!3114279)))

(assert (=> b!4982870 (= res!2127094 (not (is-ElementMatch!13688 (regex!8455 rule!200))))))

(declare-fun e!3114278 () Bool)

(assert (=> b!4982870 (= e!3114278 e!3114279)))

(declare-fun b!4982871 () Bool)

(declare-fun e!3114283 () Bool)

(assert (=> b!4982871 (= e!3114283 (= lt!2058653 call!347617))))

(declare-fun b!4982872 () Bool)

(declare-fun e!3114276 () Bool)

(assert (=> b!4982872 (= e!3114276 (nullable!4640 (regex!8455 rule!200)))))

(declare-fun b!4982873 () Bool)

(assert (=> b!4982873 (= e!3114278 (not lt!2058653))))

(declare-fun b!4982874 () Bool)

(assert (=> b!4982874 (= e!3114283 e!3114278)))

(declare-fun c!850318 () Bool)

(assert (=> b!4982874 (= c!850318 (is-EmptyLang!13688 (regex!8455 rule!200)))))

(declare-fun b!4982875 () Bool)

(assert (=> b!4982875 (= e!3114276 (matchR!6682 (derivativeStep!3940 (regex!8455 rule!200) (head!10689 (_1!34564 lt!2058453))) (tail!9822 (_1!34564 lt!2058453))))))

(declare-fun d!1604743 () Bool)

(assert (=> d!1604743 e!3114283))

(declare-fun c!850319 () Bool)

(assert (=> d!1604743 (= c!850319 (is-EmptyExpr!13688 (regex!8455 rule!200)))))

(assert (=> d!1604743 (= lt!2058653 e!3114276)))

(declare-fun c!850317 () Bool)

(assert (=> d!1604743 (= c!850317 (isEmpty!31094 (_1!34564 lt!2058453)))))

(assert (=> d!1604743 (validRegex!5989 (regex!8455 rule!200))))

(assert (=> d!1604743 (= (matchR!6682 (regex!8455 rule!200) (_1!34564 lt!2058453)) lt!2058653)))

(declare-fun b!4982868 () Bool)

(assert (=> b!4982868 (= e!3114282 (= (head!10689 (_1!34564 lt!2058453)) (c!850262 (regex!8455 rule!200))))))

(assert (= (and d!1604743 c!850317) b!4982872))

(assert (= (and d!1604743 (not c!850317)) b!4982875))

(assert (= (and d!1604743 c!850319) b!4982871))

(assert (= (and d!1604743 (not c!850319)) b!4982874))

(assert (= (and b!4982874 c!850318) b!4982873))

(assert (= (and b!4982874 (not c!850318)) b!4982870))

(assert (= (and b!4982870 (not res!2127094)) b!4982864))

(assert (= (and b!4982864 res!2127102) b!4982865))

(assert (= (and b!4982865 res!2127093) b!4982866))

(assert (= (and b!4982866 res!2127098) b!4982868))

(assert (= (and b!4982864 (not res!2127097)) b!4982863))

(assert (= (and b!4982863 res!2127096) b!4982862))

(assert (= (and b!4982862 (not res!2127100)) b!4982869))

(assert (= (and b!4982869 (not res!2127095)) b!4982867))

(assert (= (or b!4982871 b!4982862 b!4982865) bm!347612))

(declare-fun m!6014320 () Bool)

(assert (=> b!4982875 m!6014320))

(assert (=> b!4982875 m!6014320))

(declare-fun m!6014322 () Bool)

(assert (=> b!4982875 m!6014322))

(declare-fun m!6014324 () Bool)

(assert (=> b!4982875 m!6014324))

(assert (=> b!4982875 m!6014322))

(assert (=> b!4982875 m!6014324))

(declare-fun m!6014326 () Bool)

(assert (=> b!4982875 m!6014326))

(assert (=> b!4982868 m!6014320))

(assert (=> b!4982866 m!6014324))

(assert (=> b!4982866 m!6014324))

(declare-fun m!6014328 () Bool)

(assert (=> b!4982866 m!6014328))

(assert (=> b!4982867 m!6014320))

(assert (=> b!4982869 m!6014324))

(assert (=> b!4982869 m!6014324))

(assert (=> b!4982869 m!6014328))

(assert (=> d!1604743 m!6013984))

(assert (=> d!1604743 m!6014068))

(assert (=> b!4982872 m!6014070))

(assert (=> bm!347612 m!6013984))

(assert (=> b!4982555 d!1604743))

(declare-fun d!1604751 () Bool)

(declare-fun choose!36814 (Int) Bool)

(assert (=> d!1604751 (= (Forall!1805 lambda!247859) (choose!36814 lambda!247859))))

(declare-fun bs!1184393 () Bool)

(assert (= bs!1184393 d!1604751))

(declare-fun m!6014330 () Bool)

(assert (=> bs!1184393 m!6014330))

(assert (=> b!4982543 d!1604751))

(declare-fun d!1604753 () Bool)

(declare-fun c!850320 () Bool)

(assert (=> d!1604753 (= c!850320 (is-Node!15207 (c!850263 totalInput!520)))))

(declare-fun e!3114284 () Bool)

(assert (=> d!1604753 (= (inv!75423 (c!850263 totalInput!520)) e!3114284)))

(declare-fun b!4982876 () Bool)

(assert (=> b!4982876 (= e!3114284 (inv!75428 (c!850263 totalInput!520)))))

(declare-fun b!4982877 () Bool)

(declare-fun e!3114285 () Bool)

(assert (=> b!4982877 (= e!3114284 e!3114285)))

(declare-fun res!2127103 () Bool)

(assert (=> b!4982877 (= res!2127103 (not (is-Leaf!25260 (c!850263 totalInput!520))))))

(assert (=> b!4982877 (=> res!2127103 e!3114285)))

(declare-fun b!4982878 () Bool)

(assert (=> b!4982878 (= e!3114285 (inv!75429 (c!850263 totalInput!520)))))

(assert (= (and d!1604753 c!850320) b!4982876))

(assert (= (and d!1604753 (not c!850320)) b!4982877))

(assert (= (and b!4982877 (not res!2127103)) b!4982878))

(declare-fun m!6014336 () Bool)

(assert (=> b!4982876 m!6014336))

(declare-fun m!6014338 () Bool)

(assert (=> b!4982878 m!6014338))

(assert (=> b!4982554 d!1604753))

(declare-fun e!3114288 () Bool)

(assert (=> b!4982556 (= tp!1396729 e!3114288)))

(declare-fun b!4982891 () Bool)

(declare-fun tp!1396759 () Bool)

(assert (=> b!4982891 (= e!3114288 tp!1396759)))

(declare-fun b!4982889 () Bool)

(declare-fun tp_is_empty!36381 () Bool)

(assert (=> b!4982889 (= e!3114288 tp_is_empty!36381)))

(declare-fun b!4982890 () Bool)

(declare-fun tp!1396757 () Bool)

(declare-fun tp!1396760 () Bool)

(assert (=> b!4982890 (= e!3114288 (and tp!1396757 tp!1396760))))

(declare-fun b!4982892 () Bool)

(declare-fun tp!1396761 () Bool)

(declare-fun tp!1396758 () Bool)

(assert (=> b!4982892 (= e!3114288 (and tp!1396761 tp!1396758))))

(assert (= (and b!4982556 (is-ElementMatch!13688 (regex!8455 rule!200))) b!4982889))

(assert (= (and b!4982556 (is-Concat!22453 (regex!8455 rule!200))) b!4982890))

(assert (= (and b!4982556 (is-Star!13688 (regex!8455 rule!200))) b!4982891))

(assert (= (and b!4982556 (is-Union!13688 (regex!8455 rule!200))) b!4982892))

(declare-fun tp!1396770 () Bool)

(declare-fun b!4982901 () Bool)

(declare-fun tp!1396769 () Bool)

(declare-fun e!3114293 () Bool)

(assert (=> b!4982901 (= e!3114293 (and (inv!75423 (left!42091 (c!850263 input!1580))) tp!1396770 (inv!75423 (right!42421 (c!850263 input!1580))) tp!1396769))))

(declare-fun b!4982903 () Bool)

(declare-fun e!3114294 () Bool)

(declare-fun tp!1396768 () Bool)

(assert (=> b!4982903 (= e!3114294 tp!1396768)))

(declare-fun b!4982902 () Bool)

(declare-fun inv!75430 (IArray!30475) Bool)

(assert (=> b!4982902 (= e!3114293 (and (inv!75430 (xs!18533 (c!850263 input!1580))) e!3114294))))

(assert (=> b!4982549 (= tp!1396730 (and (inv!75423 (c!850263 input!1580)) e!3114293))))

(assert (= (and b!4982549 (is-Node!15207 (c!850263 input!1580))) b!4982901))

(assert (= b!4982902 b!4982903))

(assert (= (and b!4982549 (is-Leaf!25260 (c!850263 input!1580))) b!4982902))

(declare-fun m!6014340 () Bool)

(assert (=> b!4982901 m!6014340))

(declare-fun m!6014342 () Bool)

(assert (=> b!4982901 m!6014342))

(declare-fun m!6014344 () Bool)

(assert (=> b!4982902 m!6014344))

(assert (=> b!4982549 m!6013954))

(declare-fun b!4982904 () Bool)

(declare-fun tp!1396772 () Bool)

(declare-fun tp!1396773 () Bool)

(declare-fun e!3114295 () Bool)

(assert (=> b!4982904 (= e!3114295 (and (inv!75423 (left!42091 (c!850263 totalInput!520))) tp!1396773 (inv!75423 (right!42421 (c!850263 totalInput!520))) tp!1396772))))

(declare-fun b!4982906 () Bool)

(declare-fun e!3114296 () Bool)

(declare-fun tp!1396771 () Bool)

(assert (=> b!4982906 (= e!3114296 tp!1396771)))

(declare-fun b!4982905 () Bool)

(assert (=> b!4982905 (= e!3114295 (and (inv!75430 (xs!18533 (c!850263 totalInput!520))) e!3114296))))

(assert (=> b!4982554 (= tp!1396731 (and (inv!75423 (c!850263 totalInput!520)) e!3114295))))

(assert (= (and b!4982554 (is-Node!15207 (c!850263 totalInput!520))) b!4982904))

(assert (= b!4982905 b!4982906))

(assert (= (and b!4982554 (is-Leaf!25260 (c!850263 totalInput!520))) b!4982905))

(declare-fun m!6014346 () Bool)

(assert (=> b!4982904 m!6014346))

(declare-fun m!6014348 () Bool)

(assert (=> b!4982904 m!6014348))

(declare-fun m!6014350 () Bool)

(assert (=> b!4982905 m!6014350))

(assert (=> b!4982554 m!6013930))

(declare-fun b_lambda!197933 () Bool)

(assert (= b_lambda!197919 (or (and b!4982545 b_free!133119) b_lambda!197933)))

(declare-fun b_lambda!197935 () Bool)

(assert (= b_lambda!197921 (or (and b!4982545 b_free!133119) b_lambda!197935)))

(declare-fun b_lambda!197937 () Bool)

(assert (= b_lambda!197917 (or (and b!4982545 b_free!133119) b_lambda!197937)))

(declare-fun b_lambda!197939 () Bool)

(assert (= b_lambda!197927 (or b!4982543 b_lambda!197939)))

(declare-fun bs!1184395 () Bool)

(declare-fun d!1604757 () Bool)

(assert (= bs!1184395 (and d!1604757 b!4982543)))

(declare-fun dynLambda!23366 (Int TokenValue!8765) BalanceConc!29844)

(assert (=> bs!1184395 (= (dynLambda!23365 lambda!247859 lt!2058449) (= (list!18463 (dynLambda!23366 (toChars!11305 (transformation!8455 rule!200)) (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) lt!2058449))) (list!18463 lt!2058449)))))

(declare-fun b_lambda!197945 () Bool)

(assert (=> (not b_lambda!197945) (not bs!1184395)))

(declare-fun t!369851 () Bool)

(declare-fun tb!261639 () Bool)

(assert (=> (and b!4982545 (= (toChars!11305 (transformation!8455 rule!200)) (toChars!11305 (transformation!8455 rule!200))) t!369851) tb!261639))

(declare-fun e!3114299 () Bool)

(declare-fun b!4982911 () Bool)

(declare-fun tp!1396776 () Bool)

(assert (=> b!4982911 (= e!3114299 (and (inv!75423 (c!850263 (dynLambda!23366 (toChars!11305 (transformation!8455 rule!200)) (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) lt!2058449)))) tp!1396776))))

(declare-fun result!326954 () Bool)

(assert (=> tb!261639 (= result!326954 (and (inv!75422 (dynLambda!23366 (toChars!11305 (transformation!8455 rule!200)) (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) lt!2058449))) e!3114299))))

(assert (= tb!261639 b!4982911))

(declare-fun m!6014352 () Bool)

(assert (=> b!4982911 m!6014352))

(declare-fun m!6014354 () Bool)

(assert (=> tb!261639 m!6014354))

(assert (=> bs!1184395 t!369851))

(declare-fun b_and!349675 () Bool)

(assert (= b_and!349653 (and (=> t!369851 result!326954) b_and!349675)))

(declare-fun b_lambda!197947 () Bool)

(assert (=> (not b_lambda!197947) (not bs!1184395)))

(assert (=> bs!1184395 t!369845))

(declare-fun b_and!349677 () Bool)

(assert (= b_and!349667 (and (=> t!369845 result!326942) b_and!349677)))

(assert (=> bs!1184395 m!6014212))

(declare-fun m!6014356 () Bool)

(assert (=> bs!1184395 m!6014356))

(assert (=> bs!1184395 m!6014212))

(assert (=> bs!1184395 m!6014356))

(declare-fun m!6014358 () Bool)

(assert (=> bs!1184395 m!6014358))

(assert (=> bs!1184395 m!6013922))

(assert (=> d!1604741 d!1604757))

(declare-fun b_lambda!197941 () Bool)

(assert (= b_lambda!197925 (or b!4982543 b_lambda!197941)))

(declare-fun bs!1184396 () Bool)

(declare-fun d!1604759 () Bool)

(assert (= bs!1184396 (and d!1604759 b!4982543)))

(assert (=> bs!1184396 (= (dynLambda!23365 lambda!247859 (_1!34563 lt!2058458)) (= (list!18463 (dynLambda!23366 (toChars!11305 (transformation!8455 rule!200)) (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) (_1!34563 lt!2058458)))) (list!18463 (_1!34563 lt!2058458))))))

(declare-fun b_lambda!197949 () Bool)

(assert (=> (not b_lambda!197949) (not bs!1184396)))

(declare-fun t!369853 () Bool)

(declare-fun tb!261641 () Bool)

(assert (=> (and b!4982545 (= (toChars!11305 (transformation!8455 rule!200)) (toChars!11305 (transformation!8455 rule!200))) t!369853) tb!261641))

(declare-fun e!3114300 () Bool)

(declare-fun tp!1396777 () Bool)

(declare-fun b!4982912 () Bool)

(assert (=> b!4982912 (= e!3114300 (and (inv!75423 (c!850263 (dynLambda!23366 (toChars!11305 (transformation!8455 rule!200)) (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) (_1!34563 lt!2058458))))) tp!1396777))))

(declare-fun result!326958 () Bool)

(assert (=> tb!261641 (= result!326958 (and (inv!75422 (dynLambda!23366 (toChars!11305 (transformation!8455 rule!200)) (dynLambda!23363 (toValue!11446 (transformation!8455 rule!200)) (_1!34563 lt!2058458)))) e!3114300))))

(assert (= tb!261641 b!4982912))

(declare-fun m!6014360 () Bool)

(assert (=> b!4982912 m!6014360))

(declare-fun m!6014362 () Bool)

(assert (=> tb!261641 m!6014362))

(assert (=> bs!1184396 t!369853))

(declare-fun b_and!349679 () Bool)

(assert (= b_and!349675 (and (=> t!369853 result!326958) b_and!349679)))

(declare-fun b_lambda!197951 () Bool)

(assert (=> (not b_lambda!197951) (not bs!1184396)))

(assert (=> bs!1184396 t!369847))

(declare-fun b_and!349681 () Bool)

(assert (= b_and!349677 (and (=> t!369847 result!326946) b_and!349681)))

(assert (=> bs!1184396 m!6014228))

(declare-fun m!6014364 () Bool)

(assert (=> bs!1184396 m!6014364))

(assert (=> bs!1184396 m!6014228))

(assert (=> bs!1184396 m!6014364))

(declare-fun m!6014366 () Bool)

(assert (=> bs!1184396 m!6014366))

(assert (=> bs!1184396 m!6013964))

(assert (=> d!1604737 d!1604759))

(declare-fun b_lambda!197943 () Bool)

(assert (= b_lambda!197913 (or (and b!4982545 b_free!133119) b_lambda!197943)))

(push 1)

(assert (not b!4982813))

(assert (not d!1604647))

(assert (not b!4982892))

(assert (not d!1604737))

(assert (not b!4982902))

(assert (not tb!261641))

(assert (not d!1604677))

(assert (not b!4982810))

(assert (not b!4982876))

(assert (not d!1604645))

(assert (not b!4982901))

(assert (not d!1604713))

(assert (not bm!347606))

(assert (not b!4982727))

(assert (not b!4982812))

(assert (not b_lambda!197937))

(assert (not b!4982912))

(assert (not b!4982815))

(assert (not d!1604655))

(assert (not b!4982869))

(assert (not bs!1184396))

(assert (not b!4982866))

(assert (not b!4982554))

(assert (not b!4982890))

(assert (not bm!347605))

(assert (not d!1604663))

(assert (not d!1604739))

(assert (not d!1604743))

(assert b_and!349679)

(assert (not d!1604641))

(assert (not d!1604661))

(assert (not b!4982891))

(assert (not b!4982716))

(assert (not b_lambda!197935))

(assert (not d!1604699))

(assert (not b!4982634))

(assert (not d!1604673))

(assert (not d!1604653))

(assert (not bm!347603))

(assert (not bm!347602))

(assert (not d!1604741))

(assert (not b!4982903))

(assert (not b_lambda!197939))

(assert (not tb!261639))

(assert (not b!4982811))

(assert (not b_lambda!197933))

(assert (not b!4982816))

(assert (not d!1604717))

(assert (not bm!347599))

(assert (not d!1604643))

(assert (not b!4982687))

(assert (not b_next!133911))

(assert (not bm!347612))

(assert (not b!4982872))

(assert (not d!1604649))

(assert (not b!4982868))

(assert (not bm!347604))

(assert (not b!4982904))

(assert (not b!4982809))

(assert (not b_lambda!197941))

(assert (not d!1604683))

(assert (not bs!1184395))

(assert (not b!4982700))

(assert (not tb!261635))

(assert (not b!4982725))

(assert (not b!4982698))

(assert (not b!4982549))

(assert (not b!4982905))

(assert (not b!4982911))

(assert (not b!4982617))

(assert (not b!4982875))

(assert (not bm!347600))

(assert (not d!1604679))

(assert (not d!1604715))

(assert (not b_lambda!197947))

(assert b_and!349681)

(assert (not tb!261633))

(assert (not d!1604751))

(assert (not b!4982878))

(assert (not b_lambda!197949))

(assert (not b!4982689))

(assert (not b!4982867))

(assert (not b!4982625))

(assert (not b!4982817))

(assert (not d!1604711))

(assert (not d!1604723))

(assert (not bm!347601))

(assert tp_is_empty!36381)

(assert (not d!1604725))

(assert (not b_next!133909))

(assert (not b!4982906))

(assert (not b_lambda!197943))

(assert (not b!4982637))

(assert (not b!4982632))

(assert (not b!4982620))

(assert (not b_lambda!197951))

(assert (not b_lambda!197945))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349679)

(assert b_and!349681)

(assert (not b_next!133911))

(assert (not b_next!133909))

(check-sat)

(pop 1)

