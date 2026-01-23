; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513644 () Bool)

(assert start!513644)

(declare-fun b!4902977 () Bool)

(declare-fun b_free!131875 () Bool)

(declare-fun b_next!132665 () Bool)

(assert (=> b!4902977 (= b_free!131875 (not b_next!132665))))

(declare-fun tp!1379559 () Bool)

(declare-fun b_and!346267 () Bool)

(assert (=> b!4902977 (= tp!1379559 b_and!346267)))

(declare-fun b_free!131877 () Bool)

(declare-fun b_next!132667 () Bool)

(assert (=> b!4902977 (= b_free!131877 (not b_next!132667))))

(declare-fun tp!1379556 () Bool)

(declare-fun b_and!346269 () Bool)

(assert (=> b!4902977 (= tp!1379556 b_and!346269)))

(declare-fun res!2094419 () Bool)

(declare-fun e!3064989 () Bool)

(assert (=> start!513644 (=> (not res!2094419) (not e!3064989))))

(declare-datatypes ((LexerInterface!7818 0))(
  ( (LexerInterfaceExt!7815 (__x!34365 Int)) (Lexer!7816) )
))
(declare-fun thiss!15943 () LexerInterface!7818)

(get-info :version)

(assert (=> start!513644 (= res!2094419 ((_ is Lexer!7816) thiss!15943))))

(assert (=> start!513644 e!3064989))

(assert (=> start!513644 true))

(declare-fun e!3064994 () Bool)

(assert (=> start!513644 e!3064994))

(declare-datatypes ((C!26800 0))(
  ( (C!26801 (val!22734 Int)) )
))
(declare-datatypes ((List!56650 0))(
  ( (Nil!56526) (Cons!56526 (h!62974 C!26800) (t!366742 List!56650)) )
))
(declare-datatypes ((IArray!29649 0))(
  ( (IArray!29650 (innerList!14882 List!56650)) )
))
(declare-datatypes ((Conc!14794 0))(
  ( (Node!14794 (left!41133 Conc!14794) (right!41463 Conc!14794) (csize!29818 Int) (cheight!15005 Int)) (Leaf!24624 (xs!18110 IArray!29649) (csize!29819 Int)) (Empty!14794) )
))
(declare-datatypes ((BalanceConc!29018 0))(
  ( (BalanceConc!29019 (c!833227 Conc!14794)) )
))
(declare-fun input!1509 () BalanceConc!29018)

(declare-fun e!3064993 () Bool)

(declare-fun inv!72948 (BalanceConc!29018) Bool)

(assert (=> start!513644 (and (inv!72948 input!1509) e!3064993)))

(declare-fun e!3064992 () Bool)

(assert (=> b!4902977 (= e!3064992 (and tp!1379559 tp!1379556))))

(declare-fun b!4902978 () Bool)

(declare-fun res!2094417 () Bool)

(assert (=> b!4902978 (=> (not res!2094417) (not e!3064989))))

(declare-datatypes ((Regex!13301 0))(
  ( (ElementMatch!13301 (c!833228 C!26800)) (Concat!21837 (regOne!27114 Regex!13301) (regTwo!27114 Regex!13301)) (EmptyExpr!13301) (Star!13301 (reg!13630 Regex!13301)) (EmptyLang!13301) (Union!13301 (regOne!27115 Regex!13301) (regTwo!27115 Regex!13301)) )
))
(declare-datatypes ((String!64121 0))(
  ( (String!64122 (value!263550 String)) )
))
(declare-datatypes ((List!56651 0))(
  ( (Nil!56527) (Cons!56527 (h!62975 (_ BitVec 16)) (t!366743 List!56651)) )
))
(declare-datatypes ((TokenValue!8536 0))(
  ( (FloatLiteralValue!17072 (text!60197 List!56651)) (TokenValueExt!8535 (__x!34366 Int)) (Broken!42680 (value!263551 List!56651)) (Object!8659) (End!8536) (Def!8536) (Underscore!8536) (Match!8536) (Else!8536) (Error!8536) (Case!8536) (If!8536) (Extends!8536) (Abstract!8536) (Class!8536) (Val!8536) (DelimiterValue!17072 (del!8596 List!56651)) (KeywordValue!8542 (value!263552 List!56651)) (CommentValue!17072 (value!263553 List!56651)) (WhitespaceValue!17072 (value!263554 List!56651)) (IndentationValue!8536 (value!263555 List!56651)) (String!64123) (Int32!8536) (Broken!42681 (value!263556 List!56651)) (Boolean!8537) (Unit!146646) (OperatorValue!8539 (op!8596 List!56651)) (IdentifierValue!17072 (value!263557 List!56651)) (IdentifierValue!17073 (value!263558 List!56651)) (WhitespaceValue!17073 (value!263559 List!56651)) (True!17072) (False!17072) (Broken!42682 (value!263560 List!56651)) (Broken!42683 (value!263561 List!56651)) (True!17073) (RightBrace!8536) (RightBracket!8536) (Colon!8536) (Null!8536) (Comma!8536) (LeftBracket!8536) (False!17073) (LeftBrace!8536) (ImaginaryLiteralValue!8536 (text!60198 List!56651)) (StringLiteralValue!25608 (value!263562 List!56651)) (EOFValue!8536 (value!263563 List!56651)) (IdentValue!8536 (value!263564 List!56651)) (DelimiterValue!17073 (value!263565 List!56651)) (DedentValue!8536 (value!263566 List!56651)) (NewLineValue!8536 (value!263567 List!56651)) (IntegerValue!25608 (value!263568 (_ BitVec 32)) (text!60199 List!56651)) (IntegerValue!25609 (value!263569 Int) (text!60200 List!56651)) (Times!8536) (Or!8536) (Equal!8536) (Minus!8536) (Broken!42684 (value!263570 List!56651)) (And!8536) (Div!8536) (LessEqual!8536) (Mod!8536) (Concat!21838) (Not!8536) (Plus!8536) (SpaceValue!8536 (value!263571 List!56651)) (IntegerValue!25610 (value!263572 Int) (text!60201 List!56651)) (StringLiteralValue!25609 (text!60202 List!56651)) (FloatLiteralValue!17073 (text!60203 List!56651)) (BytesLiteralValue!8536 (value!263573 List!56651)) (CommentValue!17073 (value!263574 List!56651)) (StringLiteralValue!25610 (value!263575 List!56651)) (ErrorTokenValue!8536 (msg!8597 List!56651)) )
))
(declare-datatypes ((TokenValueInjection!16380 0))(
  ( (TokenValueInjection!16381 (toValue!11137 Int) (toChars!10996 Int)) )
))
(declare-datatypes ((Rule!16252 0))(
  ( (Rule!16253 (regex!8226 Regex!13301) (tag!9090 String!64121) (isSeparator!8226 Bool) (transformation!8226 TokenValueInjection!16380)) )
))
(declare-fun rule!164 () Rule!16252)

(declare-fun isEmpty!30387 (BalanceConc!29018) Bool)

(declare-datatypes ((tuple2!60752 0))(
  ( (tuple2!60753 (_1!33679 BalanceConc!29018) (_2!33679 BalanceConc!29018)) )
))
(declare-fun findLongestMatchWithZipperSequence!314 (Regex!13301 BalanceConc!29018) tuple2!60752)

(assert (=> b!4902978 (= res!2094417 (not (isEmpty!30387 (_1!33679 (findLongestMatchWithZipperSequence!314 (regex!8226 rule!164) input!1509)))))))

(declare-fun b!4902979 () Bool)

(declare-fun semiInverseModEq!3627 (Int Int) Bool)

(assert (=> b!4902979 (= e!3064989 (not (semiInverseModEq!3627 (toChars!10996 (transformation!8226 rule!164)) (toValue!11137 (transformation!8226 rule!164)))))))

(declare-datatypes ((Unit!146647 0))(
  ( (Unit!146648) )
))
(declare-fun lt!2011060 () Unit!146647)

(declare-fun lemmaInv!1272 (TokenValueInjection!16380) Unit!146647)

(assert (=> b!4902979 (= lt!2011060 (lemmaInv!1272 (transformation!8226 rule!164)))))

(declare-fun e!3064991 () Bool)

(assert (=> b!4902979 e!3064991))

(declare-fun res!2094418 () Bool)

(assert (=> b!4902979 (=> res!2094418 e!3064991)))

(declare-datatypes ((tuple2!60754 0))(
  ( (tuple2!60755 (_1!33680 List!56650) (_2!33680 List!56650)) )
))
(declare-fun lt!2011059 () tuple2!60754)

(declare-fun isEmpty!30388 (List!56650) Bool)

(assert (=> b!4902979 (= res!2094418 (isEmpty!30388 (_1!33680 lt!2011059)))))

(declare-fun lt!2011058 () List!56650)

(declare-fun findLongestMatchInner!1789 (Regex!13301 List!56650 Int List!56650 List!56650 Int) tuple2!60754)

(declare-fun size!37256 (List!56650) Int)

(assert (=> b!4902979 (= lt!2011059 (findLongestMatchInner!1789 (regex!8226 rule!164) Nil!56526 (size!37256 Nil!56526) lt!2011058 lt!2011058 (size!37256 lt!2011058)))))

(declare-fun lt!2011061 () Unit!146647)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1752 (Regex!13301 List!56650) Unit!146647)

(assert (=> b!4902979 (= lt!2011061 (longestMatchIsAcceptedByMatchOrIsEmpty!1752 (regex!8226 rule!164) lt!2011058))))

(declare-fun list!17796 (BalanceConc!29018) List!56650)

(assert (=> b!4902979 (= lt!2011058 (list!17796 input!1509))))

(declare-fun b!4902980 () Bool)

(declare-fun tp!1379557 () Bool)

(declare-fun inv!72949 (Conc!14794) Bool)

(assert (=> b!4902980 (= e!3064993 (and (inv!72949 (c!833227 input!1509)) tp!1379557))))

(declare-fun b!4902981 () Bool)

(declare-fun matchR!6568 (Regex!13301 List!56650) Bool)

(assert (=> b!4902981 (= e!3064991 (matchR!6568 (regex!8226 rule!164) (_1!33680 lt!2011059)))))

(declare-fun b!4902982 () Bool)

(declare-fun res!2094420 () Bool)

(assert (=> b!4902982 (=> (not res!2094420) (not e!3064989))))

(declare-fun ruleValid!3723 (LexerInterface!7818 Rule!16252) Bool)

(assert (=> b!4902982 (= res!2094420 (ruleValid!3723 thiss!15943 rule!164))))

(declare-fun b!4902983 () Bool)

(declare-fun tp!1379558 () Bool)

(declare-fun inv!72944 (String!64121) Bool)

(declare-fun inv!72950 (TokenValueInjection!16380) Bool)

(assert (=> b!4902983 (= e!3064994 (and tp!1379558 (inv!72944 (tag!9090 rule!164)) (inv!72950 (transformation!8226 rule!164)) e!3064992))))

(assert (= (and start!513644 res!2094419) b!4902982))

(assert (= (and b!4902982 res!2094420) b!4902978))

(assert (= (and b!4902978 res!2094417) b!4902979))

(assert (= (and b!4902979 (not res!2094418)) b!4902981))

(assert (= b!4902983 b!4902977))

(assert (= start!513644 b!4902983))

(assert (= start!513644 b!4902980))

(declare-fun m!5911938 () Bool)

(assert (=> b!4902979 m!5911938))

(declare-fun m!5911940 () Bool)

(assert (=> b!4902979 m!5911940))

(declare-fun m!5911942 () Bool)

(assert (=> b!4902979 m!5911942))

(declare-fun m!5911944 () Bool)

(assert (=> b!4902979 m!5911944))

(assert (=> b!4902979 m!5911940))

(assert (=> b!4902979 m!5911942))

(declare-fun m!5911946 () Bool)

(assert (=> b!4902979 m!5911946))

(declare-fun m!5911948 () Bool)

(assert (=> b!4902979 m!5911948))

(declare-fun m!5911950 () Bool)

(assert (=> b!4902979 m!5911950))

(declare-fun m!5911952 () Bool)

(assert (=> b!4902979 m!5911952))

(declare-fun m!5911954 () Bool)

(assert (=> b!4902978 m!5911954))

(declare-fun m!5911956 () Bool)

(assert (=> b!4902978 m!5911956))

(declare-fun m!5911958 () Bool)

(assert (=> b!4902983 m!5911958))

(declare-fun m!5911960 () Bool)

(assert (=> b!4902983 m!5911960))

(declare-fun m!5911962 () Bool)

(assert (=> b!4902981 m!5911962))

(declare-fun m!5911964 () Bool)

(assert (=> b!4902980 m!5911964))

(declare-fun m!5911966 () Bool)

(assert (=> b!4902982 m!5911966))

(declare-fun m!5911968 () Bool)

(assert (=> start!513644 m!5911968))

(check-sat b_and!346269 (not start!513644) (not b!4902983) (not b_next!132667) (not b!4902978) (not b!4902979) (not b_next!132665) (not b!4902980) (not b!4902982) (not b!4902981) b_and!346267)
(check-sat b_and!346269 b_and!346267 (not b_next!132667) (not b_next!132665))
(get-model)

(declare-fun d!1575586 () Bool)

(declare-fun list!17798 (Conc!14794) List!56650)

(assert (=> d!1575586 (= (list!17796 input!1509) (list!17798 (c!833227 input!1509)))))

(declare-fun bs!1176857 () Bool)

(assert (= bs!1176857 d!1575586))

(declare-fun m!5911970 () Bool)

(assert (=> bs!1176857 m!5911970))

(assert (=> b!4902979 d!1575586))

(declare-fun d!1575588 () Bool)

(assert (=> d!1575588 (= (isEmpty!30388 (_1!33680 lt!2011059)) ((_ is Nil!56526) (_1!33680 lt!2011059)))))

(assert (=> b!4902979 d!1575588))

(declare-fun d!1575590 () Bool)

(declare-fun lt!2011064 () Int)

(assert (=> d!1575590 (>= lt!2011064 0)))

(declare-fun e!3064997 () Int)

(assert (=> d!1575590 (= lt!2011064 e!3064997)))

(declare-fun c!833231 () Bool)

(assert (=> d!1575590 (= c!833231 ((_ is Nil!56526) lt!2011058))))

(assert (=> d!1575590 (= (size!37256 lt!2011058) lt!2011064)))

(declare-fun b!4902988 () Bool)

(assert (=> b!4902988 (= e!3064997 0)))

(declare-fun b!4902989 () Bool)

(assert (=> b!4902989 (= e!3064997 (+ 1 (size!37256 (t!366742 lt!2011058))))))

(assert (= (and d!1575590 c!833231) b!4902988))

(assert (= (and d!1575590 (not c!833231)) b!4902989))

(declare-fun m!5911972 () Bool)

(assert (=> b!4902989 m!5911972))

(assert (=> b!4902979 d!1575590))

(declare-fun d!1575592 () Bool)

(declare-fun e!3065002 () Bool)

(assert (=> d!1575592 e!3065002))

(declare-fun res!2094429 () Bool)

(assert (=> d!1575592 (=> res!2094429 e!3065002)))

(assert (=> d!1575592 (= res!2094429 (isEmpty!30388 (_1!33680 (findLongestMatchInner!1789 (regex!8226 rule!164) Nil!56526 (size!37256 Nil!56526) lt!2011058 lt!2011058 (size!37256 lt!2011058)))))))

(declare-fun lt!2011069 () Unit!146647)

(declare-fun choose!35796 (Regex!13301 List!56650) Unit!146647)

(assert (=> d!1575592 (= lt!2011069 (choose!35796 (regex!8226 rule!164) lt!2011058))))

(declare-fun validRegex!5894 (Regex!13301) Bool)

(assert (=> d!1575592 (validRegex!5894 (regex!8226 rule!164))))

(assert (=> d!1575592 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1752 (regex!8226 rule!164) lt!2011058) lt!2011069)))

(declare-fun b!4902994 () Bool)

(assert (=> b!4902994 (= e!3065002 (matchR!6568 (regex!8226 rule!164) (_1!33680 (findLongestMatchInner!1789 (regex!8226 rule!164) Nil!56526 (size!37256 Nil!56526) lt!2011058 lt!2011058 (size!37256 lt!2011058)))))))

(assert (= (and d!1575592 (not res!2094429)) b!4902994))

(assert (=> d!1575592 m!5911940))

(assert (=> d!1575592 m!5911940))

(assert (=> d!1575592 m!5911942))

(assert (=> d!1575592 m!5911946))

(declare-fun m!5911974 () Bool)

(assert (=> d!1575592 m!5911974))

(assert (=> d!1575592 m!5911942))

(declare-fun m!5911976 () Bool)

(assert (=> d!1575592 m!5911976))

(declare-fun m!5911978 () Bool)

(assert (=> d!1575592 m!5911978))

(assert (=> b!4902994 m!5911940))

(assert (=> b!4902994 m!5911942))

(assert (=> b!4902994 m!5911940))

(assert (=> b!4902994 m!5911942))

(assert (=> b!4902994 m!5911946))

(declare-fun m!5911984 () Bool)

(assert (=> b!4902994 m!5911984))

(assert (=> b!4902979 d!1575592))

(declare-fun d!1575596 () Bool)

(declare-fun e!3065008 () Bool)

(assert (=> d!1575596 e!3065008))

(declare-fun res!2094435 () Bool)

(assert (=> d!1575596 (=> (not res!2094435) (not e!3065008))))

(assert (=> d!1575596 (= res!2094435 (semiInverseModEq!3627 (toChars!10996 (transformation!8226 rule!164)) (toValue!11137 (transformation!8226 rule!164))))))

(declare-fun Unit!146653 () Unit!146647)

(assert (=> d!1575596 (= (lemmaInv!1272 (transformation!8226 rule!164)) Unit!146653)))

(declare-fun b!4903000 () Bool)

(declare-fun equivClasses!3480 (Int Int) Bool)

(assert (=> b!4903000 (= e!3065008 (equivClasses!3480 (toChars!10996 (transformation!8226 rule!164)) (toValue!11137 (transformation!8226 rule!164))))))

(assert (= (and d!1575596 res!2094435) b!4903000))

(assert (=> d!1575596 m!5911938))

(declare-fun m!5911990 () Bool)

(assert (=> b!4903000 m!5911990))

(assert (=> b!4902979 d!1575596))

(declare-fun d!1575600 () Bool)

(declare-fun lt!2011071 () Int)

(assert (=> d!1575600 (>= lt!2011071 0)))

(declare-fun e!3065010 () Int)

(assert (=> d!1575600 (= lt!2011071 e!3065010)))

(declare-fun c!833232 () Bool)

(assert (=> d!1575600 (= c!833232 ((_ is Nil!56526) Nil!56526))))

(assert (=> d!1575600 (= (size!37256 Nil!56526) lt!2011071)))

(declare-fun b!4903002 () Bool)

(assert (=> b!4903002 (= e!3065010 0)))

(declare-fun b!4903003 () Bool)

(assert (=> b!4903003 (= e!3065010 (+ 1 (size!37256 (t!366742 Nil!56526))))))

(assert (= (and d!1575600 c!833232) b!4903002))

(assert (= (and d!1575600 (not c!833232)) b!4903003))

(declare-fun m!5911994 () Bool)

(assert (=> b!4903003 m!5911994))

(assert (=> b!4902979 d!1575600))

(declare-fun d!1575604 () Bool)

(assert (=> d!1575604 true))

(declare-fun order!25705 () Int)

(declare-fun order!25707 () Int)

(declare-fun lambda!244408 () Int)

(declare-fun dynLambda!22786 (Int Int) Int)

(declare-fun dynLambda!22787 (Int Int) Int)

(assert (=> d!1575604 (< (dynLambda!22786 order!25705 (toChars!10996 (transformation!8226 rule!164))) (dynLambda!22787 order!25707 lambda!244408))))

(assert (=> d!1575604 true))

(declare-fun order!25709 () Int)

(declare-fun dynLambda!22788 (Int Int) Int)

(assert (=> d!1575604 (< (dynLambda!22788 order!25709 (toValue!11137 (transformation!8226 rule!164))) (dynLambda!22787 order!25707 lambda!244408))))

(declare-fun Forall!1723 (Int) Bool)

(assert (=> d!1575604 (= (semiInverseModEq!3627 (toChars!10996 (transformation!8226 rule!164)) (toValue!11137 (transformation!8226 rule!164))) (Forall!1723 lambda!244408))))

(declare-fun bs!1176860 () Bool)

(assert (= bs!1176860 d!1575604))

(declare-fun m!5912004 () Bool)

(assert (=> bs!1176860 m!5912004))

(assert (=> b!4902979 d!1575604))

(declare-fun b!4903156 () Bool)

(declare-fun e!3065096 () tuple2!60754)

(declare-fun e!3065095 () tuple2!60754)

(assert (=> b!4903156 (= e!3065096 e!3065095)))

(declare-fun c!833280 () Bool)

(assert (=> b!4903156 (= c!833280 (= (size!37256 Nil!56526) (size!37256 lt!2011058)))))

(declare-fun b!4903157 () Bool)

(declare-fun c!833283 () Bool)

(declare-fun call!340127 () Bool)

(assert (=> b!4903157 (= c!833283 call!340127)))

(declare-fun lt!2011232 () Unit!146647)

(declare-fun lt!2011231 () Unit!146647)

(assert (=> b!4903157 (= lt!2011232 lt!2011231)))

(declare-fun lt!2011244 () C!26800)

(declare-fun lt!2011229 () List!56650)

(declare-fun ++!12255 (List!56650 List!56650) List!56650)

(assert (=> b!4903157 (= (++!12255 (++!12255 Nil!56526 (Cons!56526 lt!2011244 Nil!56526)) lt!2011229) lt!2011058)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1339 (List!56650 C!26800 List!56650 List!56650) Unit!146647)

(assert (=> b!4903157 (= lt!2011231 (lemmaMoveElementToOtherListKeepsConcatEq!1339 Nil!56526 lt!2011244 lt!2011229 lt!2011058))))

(declare-fun tail!9615 (List!56650) List!56650)

(assert (=> b!4903157 (= lt!2011229 (tail!9615 lt!2011058))))

(declare-fun head!10468 (List!56650) C!26800)

(assert (=> b!4903157 (= lt!2011244 (head!10468 lt!2011058))))

(declare-fun lt!2011226 () Unit!146647)

(declare-fun lt!2011225 () Unit!146647)

(assert (=> b!4903157 (= lt!2011226 lt!2011225)))

(declare-fun isPrefix!4908 (List!56650 List!56650) Bool)

(declare-fun getSuffix!2896 (List!56650 List!56650) List!56650)

(assert (=> b!4903157 (isPrefix!4908 (++!12255 Nil!56526 (Cons!56526 (head!10468 (getSuffix!2896 lt!2011058 Nil!56526)) Nil!56526)) lt!2011058)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!721 (List!56650 List!56650) Unit!146647)

(assert (=> b!4903157 (= lt!2011225 (lemmaAddHeadSuffixToPrefixStillPrefix!721 Nil!56526 lt!2011058))))

(declare-fun lt!2011233 () Unit!146647)

(declare-fun lt!2011249 () Unit!146647)

(assert (=> b!4903157 (= lt!2011233 lt!2011249)))

(assert (=> b!4903157 (= lt!2011249 (lemmaAddHeadSuffixToPrefixStillPrefix!721 Nil!56526 lt!2011058))))

(declare-fun lt!2011252 () List!56650)

(assert (=> b!4903157 (= lt!2011252 (++!12255 Nil!56526 (Cons!56526 (head!10468 lt!2011058) Nil!56526)))))

(declare-fun lt!2011251 () Unit!146647)

(declare-fun e!3065093 () Unit!146647)

(assert (=> b!4903157 (= lt!2011251 e!3065093)))

(declare-fun c!833281 () Bool)

(assert (=> b!4903157 (= c!833281 (= (size!37256 Nil!56526) (size!37256 lt!2011058)))))

(declare-fun lt!2011228 () Unit!146647)

(declare-fun lt!2011243 () Unit!146647)

(assert (=> b!4903157 (= lt!2011228 lt!2011243)))

(assert (=> b!4903157 (<= (size!37256 Nil!56526) (size!37256 lt!2011058))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!633 (List!56650 List!56650) Unit!146647)

(assert (=> b!4903157 (= lt!2011243 (lemmaIsPrefixThenSmallerEqSize!633 Nil!56526 lt!2011058))))

(declare-fun e!3065090 () tuple2!60754)

(assert (=> b!4903157 (= e!3065095 e!3065090)))

(declare-fun bm!340115 () Bool)

(declare-fun call!340125 () Unit!146647)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1067 (List!56650 List!56650 List!56650) Unit!146647)

(assert (=> bm!340115 (= call!340125 (lemmaIsPrefixSameLengthThenSameList!1067 lt!2011058 Nil!56526 lt!2011058))))

(declare-fun b!4903160 () Bool)

(declare-fun e!3065091 () tuple2!60754)

(declare-fun lt!2011230 () tuple2!60754)

(assert (=> b!4903160 (= e!3065091 lt!2011230)))

(declare-fun b!4903161 () Bool)

(declare-fun c!833284 () Bool)

(assert (=> b!4903161 (= c!833284 call!340127)))

(declare-fun lt!2011239 () Unit!146647)

(declare-fun lt!2011241 () Unit!146647)

(assert (=> b!4903161 (= lt!2011239 lt!2011241)))

(assert (=> b!4903161 (= lt!2011058 Nil!56526)))

(assert (=> b!4903161 (= lt!2011241 call!340125)))

(declare-fun lt!2011250 () Unit!146647)

(declare-fun lt!2011238 () Unit!146647)

(assert (=> b!4903161 (= lt!2011250 lt!2011238)))

(declare-fun call!340123 () Bool)

(assert (=> b!4903161 call!340123))

(declare-fun call!340126 () Unit!146647)

(assert (=> b!4903161 (= lt!2011238 call!340126)))

(declare-fun e!3065097 () tuple2!60754)

(assert (=> b!4903161 (= e!3065095 e!3065097)))

(declare-fun b!4903162 () Bool)

(declare-fun e!3065092 () Bool)

(declare-fun e!3065094 () Bool)

(assert (=> b!4903162 (= e!3065092 e!3065094)))

(declare-fun res!2094483 () Bool)

(assert (=> b!4903162 (=> res!2094483 e!3065094)))

(declare-fun lt!2011227 () tuple2!60754)

(assert (=> b!4903162 (= res!2094483 (isEmpty!30388 (_1!33680 lt!2011227)))))

(declare-fun b!4903163 () Bool)

(declare-fun call!340121 () tuple2!60754)

(assert (=> b!4903163 (= e!3065090 call!340121)))

(declare-fun d!1575616 () Bool)

(assert (=> d!1575616 e!3065092))

(declare-fun res!2094484 () Bool)

(assert (=> d!1575616 (=> (not res!2094484) (not e!3065092))))

(assert (=> d!1575616 (= res!2094484 (= (++!12255 (_1!33680 lt!2011227) (_2!33680 lt!2011227)) lt!2011058))))

(assert (=> d!1575616 (= lt!2011227 e!3065096)))

(declare-fun c!833282 () Bool)

(declare-fun lostCause!1095 (Regex!13301) Bool)

(assert (=> d!1575616 (= c!833282 (lostCause!1095 (regex!8226 rule!164)))))

(declare-fun lt!2011248 () Unit!146647)

(declare-fun Unit!146654 () Unit!146647)

(assert (=> d!1575616 (= lt!2011248 Unit!146654)))

(assert (=> d!1575616 (= (getSuffix!2896 lt!2011058 Nil!56526) lt!2011058)))

(declare-fun lt!2011247 () Unit!146647)

(declare-fun lt!2011236 () Unit!146647)

(assert (=> d!1575616 (= lt!2011247 lt!2011236)))

(declare-fun lt!2011237 () List!56650)

(assert (=> d!1575616 (= lt!2011058 lt!2011237)))

(declare-fun lemmaSamePrefixThenSameSuffix!2312 (List!56650 List!56650 List!56650 List!56650 List!56650) Unit!146647)

(assert (=> d!1575616 (= lt!2011236 (lemmaSamePrefixThenSameSuffix!2312 Nil!56526 lt!2011058 Nil!56526 lt!2011237 lt!2011058))))

(assert (=> d!1575616 (= lt!2011237 (getSuffix!2896 lt!2011058 Nil!56526))))

(declare-fun lt!2011242 () Unit!146647)

(declare-fun lt!2011240 () Unit!146647)

(assert (=> d!1575616 (= lt!2011242 lt!2011240)))

(assert (=> d!1575616 (isPrefix!4908 Nil!56526 (++!12255 Nil!56526 lt!2011058))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3132 (List!56650 List!56650) Unit!146647)

(assert (=> d!1575616 (= lt!2011240 (lemmaConcatTwoListThenFirstIsPrefix!3132 Nil!56526 lt!2011058))))

(assert (=> d!1575616 (validRegex!5894 (regex!8226 rule!164))))

(assert (=> d!1575616 (= (findLongestMatchInner!1789 (regex!8226 rule!164) Nil!56526 (size!37256 Nil!56526) lt!2011058 lt!2011058 (size!37256 lt!2011058)) lt!2011227)))

(declare-fun b!4903164 () Bool)

(assert (=> b!4903164 (= e!3065097 (tuple2!60755 Nil!56526 Nil!56526))))

(declare-fun bm!340116 () Bool)

(declare-fun nullable!4567 (Regex!13301) Bool)

(assert (=> bm!340116 (= call!340127 (nullable!4567 (regex!8226 rule!164)))))

(declare-fun bm!340117 () Bool)

(declare-fun call!340122 () C!26800)

(assert (=> bm!340117 (= call!340122 (head!10468 lt!2011058))))

(declare-fun b!4903165 () Bool)

(assert (=> b!4903165 (= e!3065094 (>= (size!37256 (_1!33680 lt!2011227)) (size!37256 Nil!56526)))))

(declare-fun b!4903166 () Bool)

(assert (=> b!4903166 (= e!3065091 (tuple2!60755 Nil!56526 lt!2011058))))

(declare-fun bm!340118 () Bool)

(assert (=> bm!340118 (= call!340123 (isPrefix!4908 lt!2011058 lt!2011058))))

(declare-fun bm!340119 () Bool)

(declare-fun call!340124 () Regex!13301)

(declare-fun derivativeStep!3887 (Regex!13301 C!26800) Regex!13301)

(assert (=> bm!340119 (= call!340124 (derivativeStep!3887 (regex!8226 rule!164) call!340122))))

(declare-fun b!4903167 () Bool)

(declare-fun Unit!146655 () Unit!146647)

(assert (=> b!4903167 (= e!3065093 Unit!146655)))

(declare-fun b!4903168 () Bool)

(assert (=> b!4903168 (= e!3065097 (tuple2!60755 Nil!56526 lt!2011058))))

(declare-fun bm!340120 () Bool)

(declare-fun lemmaIsPrefixRefl!3305 (List!56650 List!56650) Unit!146647)

(assert (=> bm!340120 (= call!340126 (lemmaIsPrefixRefl!3305 lt!2011058 lt!2011058))))

(declare-fun b!4903169 () Bool)

(declare-fun Unit!146656 () Unit!146647)

(assert (=> b!4903169 (= e!3065093 Unit!146656)))

(declare-fun lt!2011245 () Unit!146647)

(assert (=> b!4903169 (= lt!2011245 call!340126)))

(assert (=> b!4903169 call!340123))

(declare-fun lt!2011246 () Unit!146647)

(assert (=> b!4903169 (= lt!2011246 lt!2011245)))

(declare-fun lt!2011234 () Unit!146647)

(assert (=> b!4903169 (= lt!2011234 call!340125)))

(assert (=> b!4903169 (= lt!2011058 Nil!56526)))

(declare-fun lt!2011235 () Unit!146647)

(assert (=> b!4903169 (= lt!2011235 lt!2011234)))

(assert (=> b!4903169 false))

(declare-fun b!4903170 () Bool)

(assert (=> b!4903170 (= e!3065096 (tuple2!60755 Nil!56526 lt!2011058))))

(declare-fun bm!340121 () Bool)

(declare-fun call!340120 () List!56650)

(assert (=> bm!340121 (= call!340121 (findLongestMatchInner!1789 call!340124 lt!2011252 (+ (size!37256 Nil!56526) 1) call!340120 lt!2011058 (size!37256 lt!2011058)))))

(declare-fun b!4903171 () Bool)

(assert (=> b!4903171 (= e!3065090 e!3065091)))

(assert (=> b!4903171 (= lt!2011230 call!340121)))

(declare-fun c!833279 () Bool)

(assert (=> b!4903171 (= c!833279 (isEmpty!30388 (_1!33680 lt!2011230)))))

(declare-fun bm!340122 () Bool)

(assert (=> bm!340122 (= call!340120 (tail!9615 lt!2011058))))

(assert (= (and d!1575616 c!833282) b!4903170))

(assert (= (and d!1575616 (not c!833282)) b!4903156))

(assert (= (and b!4903156 c!833280) b!4903161))

(assert (= (and b!4903156 (not c!833280)) b!4903157))

(assert (= (and b!4903161 c!833284) b!4903164))

(assert (= (and b!4903161 (not c!833284)) b!4903168))

(assert (= (and b!4903157 c!833281) b!4903169))

(assert (= (and b!4903157 (not c!833281)) b!4903167))

(assert (= (and b!4903157 c!833283) b!4903171))

(assert (= (and b!4903157 (not c!833283)) b!4903163))

(assert (= (and b!4903171 c!833279) b!4903166))

(assert (= (and b!4903171 (not c!833279)) b!4903160))

(assert (= (or b!4903171 b!4903163) bm!340117))

(assert (= (or b!4903171 b!4903163) bm!340122))

(assert (= (or b!4903171 b!4903163) bm!340119))

(assert (= (or b!4903171 b!4903163) bm!340121))

(assert (= (or b!4903161 b!4903169) bm!340118))

(assert (= (or b!4903161 b!4903169) bm!340120))

(assert (= (or b!4903161 b!4903169) bm!340115))

(assert (= (or b!4903161 b!4903157) bm!340116))

(assert (= (and d!1575616 res!2094484) b!4903162))

(assert (= (and b!4903162 (not res!2094483)) b!4903165))

(declare-fun m!5912096 () Bool)

(assert (=> bm!340118 m!5912096))

(declare-fun m!5912098 () Bool)

(assert (=> b!4903165 m!5912098))

(assert (=> b!4903165 m!5911940))

(declare-fun m!5912100 () Bool)

(assert (=> bm!340119 m!5912100))

(declare-fun m!5912102 () Bool)

(assert (=> bm!340120 m!5912102))

(declare-fun m!5912104 () Bool)

(assert (=> bm!340116 m!5912104))

(declare-fun m!5912106 () Bool)

(assert (=> b!4903157 m!5912106))

(declare-fun m!5912108 () Bool)

(assert (=> b!4903157 m!5912108))

(declare-fun m!5912110 () Bool)

(assert (=> b!4903157 m!5912110))

(declare-fun m!5912112 () Bool)

(assert (=> b!4903157 m!5912112))

(declare-fun m!5912114 () Bool)

(assert (=> b!4903157 m!5912114))

(assert (=> b!4903157 m!5911942))

(declare-fun m!5912116 () Bool)

(assert (=> b!4903157 m!5912116))

(assert (=> b!4903157 m!5912112))

(assert (=> b!4903157 m!5912106))

(declare-fun m!5912118 () Bool)

(assert (=> b!4903157 m!5912118))

(declare-fun m!5912120 () Bool)

(assert (=> b!4903157 m!5912120))

(declare-fun m!5912122 () Bool)

(assert (=> b!4903157 m!5912122))

(assert (=> b!4903157 m!5911940))

(declare-fun m!5912124 () Bool)

(assert (=> b!4903157 m!5912124))

(declare-fun m!5912126 () Bool)

(assert (=> b!4903157 m!5912126))

(assert (=> b!4903157 m!5912110))

(declare-fun m!5912128 () Bool)

(assert (=> b!4903157 m!5912128))

(assert (=> bm!340121 m!5911942))

(declare-fun m!5912130 () Bool)

(assert (=> bm!340121 m!5912130))

(assert (=> bm!340122 m!5912126))

(assert (=> bm!340117 m!5912120))

(declare-fun m!5912132 () Bool)

(assert (=> bm!340115 m!5912132))

(declare-fun m!5912134 () Bool)

(assert (=> b!4903171 m!5912134))

(declare-fun m!5912136 () Bool)

(assert (=> d!1575616 m!5912136))

(declare-fun m!5912138 () Bool)

(assert (=> d!1575616 m!5912138))

(assert (=> d!1575616 m!5912110))

(assert (=> d!1575616 m!5912136))

(declare-fun m!5912140 () Bool)

(assert (=> d!1575616 m!5912140))

(assert (=> d!1575616 m!5911974))

(declare-fun m!5912142 () Bool)

(assert (=> d!1575616 m!5912142))

(declare-fun m!5912144 () Bool)

(assert (=> d!1575616 m!5912144))

(declare-fun m!5912146 () Bool)

(assert (=> d!1575616 m!5912146))

(declare-fun m!5912148 () Bool)

(assert (=> b!4903162 m!5912148))

(assert (=> b!4902979 d!1575616))

(declare-fun d!1575634 () Bool)

(declare-fun c!833287 () Bool)

(assert (=> d!1575634 (= c!833287 ((_ is Node!14794) (c!833227 input!1509)))))

(declare-fun e!3065109 () Bool)

(assert (=> d!1575634 (= (inv!72949 (c!833227 input!1509)) e!3065109)))

(declare-fun b!4903195 () Bool)

(declare-fun inv!72954 (Conc!14794) Bool)

(assert (=> b!4903195 (= e!3065109 (inv!72954 (c!833227 input!1509)))))

(declare-fun b!4903196 () Bool)

(declare-fun e!3065110 () Bool)

(assert (=> b!4903196 (= e!3065109 e!3065110)))

(declare-fun res!2094487 () Bool)

(assert (=> b!4903196 (= res!2094487 (not ((_ is Leaf!24624) (c!833227 input!1509))))))

(assert (=> b!4903196 (=> res!2094487 e!3065110)))

(declare-fun b!4903197 () Bool)

(declare-fun inv!72955 (Conc!14794) Bool)

(assert (=> b!4903197 (= e!3065110 (inv!72955 (c!833227 input!1509)))))

(assert (= (and d!1575634 c!833287) b!4903195))

(assert (= (and d!1575634 (not c!833287)) b!4903196))

(assert (= (and b!4903196 (not res!2094487)) b!4903197))

(declare-fun m!5912150 () Bool)

(assert (=> b!4903195 m!5912150))

(declare-fun m!5912152 () Bool)

(assert (=> b!4903197 m!5912152))

(assert (=> b!4902980 d!1575634))

(declare-fun b!4903226 () Bool)

(declare-fun e!3065127 () Bool)

(declare-fun lt!2011255 () Bool)

(assert (=> b!4903226 (= e!3065127 (not lt!2011255))))

(declare-fun bm!340125 () Bool)

(declare-fun call!340130 () Bool)

(assert (=> bm!340125 (= call!340130 (isEmpty!30388 (_1!33680 lt!2011059)))))

(declare-fun b!4903227 () Bool)

(declare-fun e!3065130 () Bool)

(assert (=> b!4903227 (= e!3065130 (= (head!10468 (_1!33680 lt!2011059)) (c!833228 (regex!8226 rule!164))))))

(declare-fun b!4903228 () Bool)

(declare-fun res!2094507 () Bool)

(assert (=> b!4903228 (=> (not res!2094507) (not e!3065130))))

(assert (=> b!4903228 (= res!2094507 (not call!340130))))

(declare-fun b!4903229 () Bool)

(declare-fun res!2094511 () Bool)

(declare-fun e!3065129 () Bool)

(assert (=> b!4903229 (=> res!2094511 e!3065129)))

(assert (=> b!4903229 (= res!2094511 (not ((_ is ElementMatch!13301) (regex!8226 rule!164))))))

(assert (=> b!4903229 (= e!3065127 e!3065129)))

(declare-fun b!4903230 () Bool)

(declare-fun e!3065126 () Bool)

(assert (=> b!4903230 (= e!3065126 e!3065127)))

(declare-fun c!833296 () Bool)

(assert (=> b!4903230 (= c!833296 ((_ is EmptyLang!13301) (regex!8226 rule!164)))))

(declare-fun d!1575636 () Bool)

(assert (=> d!1575636 e!3065126))

(declare-fun c!833294 () Bool)

(assert (=> d!1575636 (= c!833294 ((_ is EmptyExpr!13301) (regex!8226 rule!164)))))

(declare-fun e!3065125 () Bool)

(assert (=> d!1575636 (= lt!2011255 e!3065125)))

(declare-fun c!833295 () Bool)

(assert (=> d!1575636 (= c!833295 (isEmpty!30388 (_1!33680 lt!2011059)))))

(assert (=> d!1575636 (validRegex!5894 (regex!8226 rule!164))))

(assert (=> d!1575636 (= (matchR!6568 (regex!8226 rule!164) (_1!33680 lt!2011059)) lt!2011255)))

(declare-fun b!4903231 () Bool)

(declare-fun e!3065128 () Bool)

(assert (=> b!4903231 (= e!3065128 (not (= (head!10468 (_1!33680 lt!2011059)) (c!833228 (regex!8226 rule!164)))))))

(declare-fun b!4903232 () Bool)

(assert (=> b!4903232 (= e!3065125 (matchR!6568 (derivativeStep!3887 (regex!8226 rule!164) (head!10468 (_1!33680 lt!2011059))) (tail!9615 (_1!33680 lt!2011059))))))

(declare-fun b!4903233 () Bool)

(declare-fun res!2094509 () Bool)

(assert (=> b!4903233 (=> (not res!2094509) (not e!3065130))))

(assert (=> b!4903233 (= res!2094509 (isEmpty!30388 (tail!9615 (_1!33680 lt!2011059))))))

(declare-fun b!4903234 () Bool)

(declare-fun res!2094506 () Bool)

(assert (=> b!4903234 (=> res!2094506 e!3065129)))

(assert (=> b!4903234 (= res!2094506 e!3065130)))

(declare-fun res!2094504 () Bool)

(assert (=> b!4903234 (=> (not res!2094504) (not e!3065130))))

(assert (=> b!4903234 (= res!2094504 lt!2011255)))

(declare-fun b!4903235 () Bool)

(declare-fun res!2094505 () Bool)

(assert (=> b!4903235 (=> res!2094505 e!3065128)))

(assert (=> b!4903235 (= res!2094505 (not (isEmpty!30388 (tail!9615 (_1!33680 lt!2011059)))))))

(declare-fun b!4903236 () Bool)

(declare-fun e!3065131 () Bool)

(assert (=> b!4903236 (= e!3065131 e!3065128)))

(declare-fun res!2094510 () Bool)

(assert (=> b!4903236 (=> res!2094510 e!3065128)))

(assert (=> b!4903236 (= res!2094510 call!340130)))

(declare-fun b!4903237 () Bool)

(assert (=> b!4903237 (= e!3065129 e!3065131)))

(declare-fun res!2094508 () Bool)

(assert (=> b!4903237 (=> (not res!2094508) (not e!3065131))))

(assert (=> b!4903237 (= res!2094508 (not lt!2011255))))

(declare-fun b!4903238 () Bool)

(assert (=> b!4903238 (= e!3065126 (= lt!2011255 call!340130))))

(declare-fun b!4903239 () Bool)

(assert (=> b!4903239 (= e!3065125 (nullable!4567 (regex!8226 rule!164)))))

(assert (= (and d!1575636 c!833295) b!4903239))

(assert (= (and d!1575636 (not c!833295)) b!4903232))

(assert (= (and d!1575636 c!833294) b!4903238))

(assert (= (and d!1575636 (not c!833294)) b!4903230))

(assert (= (and b!4903230 c!833296) b!4903226))

(assert (= (and b!4903230 (not c!833296)) b!4903229))

(assert (= (and b!4903229 (not res!2094511)) b!4903234))

(assert (= (and b!4903234 res!2094504) b!4903228))

(assert (= (and b!4903228 res!2094507) b!4903233))

(assert (= (and b!4903233 res!2094509) b!4903227))

(assert (= (and b!4903234 (not res!2094506)) b!4903237))

(assert (= (and b!4903237 res!2094508) b!4903236))

(assert (= (and b!4903236 (not res!2094510)) b!4903235))

(assert (= (and b!4903235 (not res!2094505)) b!4903231))

(assert (= (or b!4903238 b!4903228 b!4903236) bm!340125))

(declare-fun m!5912154 () Bool)

(assert (=> b!4903233 m!5912154))

(assert (=> b!4903233 m!5912154))

(declare-fun m!5912156 () Bool)

(assert (=> b!4903233 m!5912156))

(assert (=> b!4903235 m!5912154))

(assert (=> b!4903235 m!5912154))

(assert (=> b!4903235 m!5912156))

(assert (=> d!1575636 m!5911948))

(assert (=> d!1575636 m!5911974))

(declare-fun m!5912158 () Bool)

(assert (=> b!4903232 m!5912158))

(assert (=> b!4903232 m!5912158))

(declare-fun m!5912160 () Bool)

(assert (=> b!4903232 m!5912160))

(assert (=> b!4903232 m!5912154))

(assert (=> b!4903232 m!5912160))

(assert (=> b!4903232 m!5912154))

(declare-fun m!5912162 () Bool)

(assert (=> b!4903232 m!5912162))

(assert (=> b!4903239 m!5912104))

(assert (=> b!4903231 m!5912158))

(assert (=> b!4903227 m!5912158))

(assert (=> bm!340125 m!5911948))

(assert (=> b!4902981 d!1575636))

(declare-fun d!1575638 () Bool)

(declare-fun res!2094516 () Bool)

(declare-fun e!3065134 () Bool)

(assert (=> d!1575638 (=> (not res!2094516) (not e!3065134))))

(assert (=> d!1575638 (= res!2094516 (validRegex!5894 (regex!8226 rule!164)))))

(assert (=> d!1575638 (= (ruleValid!3723 thiss!15943 rule!164) e!3065134)))

(declare-fun b!4903244 () Bool)

(declare-fun res!2094517 () Bool)

(assert (=> b!4903244 (=> (not res!2094517) (not e!3065134))))

(assert (=> b!4903244 (= res!2094517 (not (nullable!4567 (regex!8226 rule!164))))))

(declare-fun b!4903245 () Bool)

(assert (=> b!4903245 (= e!3065134 (not (= (tag!9090 rule!164) (String!64122 ""))))))

(assert (= (and d!1575638 res!2094516) b!4903244))

(assert (= (and b!4903244 res!2094517) b!4903245))

(assert (=> d!1575638 m!5911974))

(assert (=> b!4903244 m!5912104))

(assert (=> b!4902982 d!1575638))

(declare-fun d!1575640 () Bool)

(declare-fun isBalanced!4026 (Conc!14794) Bool)

(assert (=> d!1575640 (= (inv!72948 input!1509) (isBalanced!4026 (c!833227 input!1509)))))

(declare-fun bs!1176864 () Bool)

(assert (= bs!1176864 d!1575640))

(declare-fun m!5912164 () Bool)

(assert (=> bs!1176864 m!5912164))

(assert (=> start!513644 d!1575640))

(declare-fun d!1575642 () Bool)

(declare-fun lt!2011258 () Bool)

(assert (=> d!1575642 (= lt!2011258 (isEmpty!30388 (list!17796 (_1!33679 (findLongestMatchWithZipperSequence!314 (regex!8226 rule!164) input!1509)))))))

(declare-fun isEmpty!30390 (Conc!14794) Bool)

(assert (=> d!1575642 (= lt!2011258 (isEmpty!30390 (c!833227 (_1!33679 (findLongestMatchWithZipperSequence!314 (regex!8226 rule!164) input!1509)))))))

(assert (=> d!1575642 (= (isEmpty!30387 (_1!33679 (findLongestMatchWithZipperSequence!314 (regex!8226 rule!164) input!1509))) lt!2011258)))

(declare-fun bs!1176865 () Bool)

(assert (= bs!1176865 d!1575642))

(declare-fun m!5912166 () Bool)

(assert (=> bs!1176865 m!5912166))

(assert (=> bs!1176865 m!5912166))

(declare-fun m!5912168 () Bool)

(assert (=> bs!1176865 m!5912168))

(declare-fun m!5912170 () Bool)

(assert (=> bs!1176865 m!5912170))

(assert (=> b!4902978 d!1575642))

(declare-fun d!1575644 () Bool)

(declare-fun lt!2011261 () tuple2!60752)

(declare-fun findLongestMatch!1657 (Regex!13301 List!56650) tuple2!60754)

(assert (=> d!1575644 (= (tuple2!60755 (list!17796 (_1!33679 lt!2011261)) (list!17796 (_2!33679 lt!2011261))) (findLongestMatch!1657 (regex!8226 rule!164) (list!17796 input!1509)))))

(declare-fun choose!35798 (Regex!13301 BalanceConc!29018) tuple2!60752)

(assert (=> d!1575644 (= lt!2011261 (choose!35798 (regex!8226 rule!164) input!1509))))

(assert (=> d!1575644 (validRegex!5894 (regex!8226 rule!164))))

(assert (=> d!1575644 (= (findLongestMatchWithZipperSequence!314 (regex!8226 rule!164) input!1509) lt!2011261)))

(declare-fun bs!1176866 () Bool)

(assert (= bs!1176866 d!1575644))

(assert (=> bs!1176866 m!5911950))

(declare-fun m!5912172 () Bool)

(assert (=> bs!1176866 m!5912172))

(declare-fun m!5912174 () Bool)

(assert (=> bs!1176866 m!5912174))

(assert (=> bs!1176866 m!5911974))

(assert (=> bs!1176866 m!5911950))

(declare-fun m!5912176 () Bool)

(assert (=> bs!1176866 m!5912176))

(declare-fun m!5912178 () Bool)

(assert (=> bs!1176866 m!5912178))

(assert (=> b!4902978 d!1575644))

(declare-fun d!1575646 () Bool)

(assert (=> d!1575646 (= (inv!72944 (tag!9090 rule!164)) (= (mod (str.len (value!263550 (tag!9090 rule!164))) 2) 0))))

(assert (=> b!4902983 d!1575646))

(declare-fun d!1575648 () Bool)

(declare-fun res!2094520 () Bool)

(declare-fun e!3065137 () Bool)

(assert (=> d!1575648 (=> (not res!2094520) (not e!3065137))))

(assert (=> d!1575648 (= res!2094520 (semiInverseModEq!3627 (toChars!10996 (transformation!8226 rule!164)) (toValue!11137 (transformation!8226 rule!164))))))

(assert (=> d!1575648 (= (inv!72950 (transformation!8226 rule!164)) e!3065137)))

(declare-fun b!4903248 () Bool)

(assert (=> b!4903248 (= e!3065137 (equivClasses!3480 (toChars!10996 (transformation!8226 rule!164)) (toValue!11137 (transformation!8226 rule!164))))))

(assert (= (and d!1575648 res!2094520) b!4903248))

(assert (=> d!1575648 m!5911938))

(assert (=> b!4903248 m!5911990))

(assert (=> b!4902983 d!1575648))

(declare-fun b!4903257 () Bool)

(declare-fun e!3065143 () Bool)

(declare-fun tp!1379591 () Bool)

(declare-fun tp!1379592 () Bool)

(assert (=> b!4903257 (= e!3065143 (and (inv!72949 (left!41133 (c!833227 input!1509))) tp!1379592 (inv!72949 (right!41463 (c!833227 input!1509))) tp!1379591))))

(declare-fun b!4903259 () Bool)

(declare-fun e!3065142 () Bool)

(declare-fun tp!1379590 () Bool)

(assert (=> b!4903259 (= e!3065142 tp!1379590)))

(declare-fun b!4903258 () Bool)

(declare-fun inv!72956 (IArray!29649) Bool)

(assert (=> b!4903258 (= e!3065143 (and (inv!72956 (xs!18110 (c!833227 input!1509))) e!3065142))))

(assert (=> b!4902980 (= tp!1379557 (and (inv!72949 (c!833227 input!1509)) e!3065143))))

(assert (= (and b!4902980 ((_ is Node!14794) (c!833227 input!1509))) b!4903257))

(assert (= b!4903258 b!4903259))

(assert (= (and b!4902980 ((_ is Leaf!24624) (c!833227 input!1509))) b!4903258))

(declare-fun m!5912180 () Bool)

(assert (=> b!4903257 m!5912180))

(declare-fun m!5912182 () Bool)

(assert (=> b!4903257 m!5912182))

(declare-fun m!5912184 () Bool)

(assert (=> b!4903258 m!5912184))

(assert (=> b!4902980 m!5911964))

(declare-fun b!4903272 () Bool)

(declare-fun e!3065146 () Bool)

(declare-fun tp!1379606 () Bool)

(assert (=> b!4903272 (= e!3065146 tp!1379606)))

(declare-fun b!4903270 () Bool)

(declare-fun tp_is_empty!35811 () Bool)

(assert (=> b!4903270 (= e!3065146 tp_is_empty!35811)))

(assert (=> b!4902983 (= tp!1379558 e!3065146)))

(declare-fun b!4903271 () Bool)

(declare-fun tp!1379605 () Bool)

(declare-fun tp!1379603 () Bool)

(assert (=> b!4903271 (= e!3065146 (and tp!1379605 tp!1379603))))

(declare-fun b!4903273 () Bool)

(declare-fun tp!1379604 () Bool)

(declare-fun tp!1379607 () Bool)

(assert (=> b!4903273 (= e!3065146 (and tp!1379604 tp!1379607))))

(assert (= (and b!4902983 ((_ is ElementMatch!13301) (regex!8226 rule!164))) b!4903270))

(assert (= (and b!4902983 ((_ is Concat!21837) (regex!8226 rule!164))) b!4903271))

(assert (= (and b!4902983 ((_ is Star!13301) (regex!8226 rule!164))) b!4903272))

(assert (= (and b!4902983 ((_ is Union!13301) (regex!8226 rule!164))) b!4903273))

(check-sat (not b!4903233) (not d!1575642) (not b!4903157) (not b!4902980) (not b!4903227) (not bm!340118) tp_is_empty!35811 (not b!4903195) b_and!346269 (not b!4903239) (not bm!340120) (not b!4903257) (not b!4902989) (not b_next!132665) (not b!4903003) (not bm!340116) (not d!1575586) (not b!4903162) (not bm!340115) (not bm!340117) (not d!1575638) (not b!4903248) (not b!4902994) (not b!4903258) (not bm!340125) (not d!1575604) (not d!1575648) (not d!1575640) (not d!1575616) (not b!4903271) (not b!4903000) (not b!4903235) (not d!1575636) (not d!1575596) (not b!4903273) (not b!4903232) (not b!4903165) (not b!4903197) (not b!4903244) b_and!346267 (not bm!340119) (not b!4903231) (not b!4903259) (not bm!340121) (not d!1575644) (not d!1575592) (not b!4903272) (not b!4903171) (not bm!340122) (not b_next!132667))
(check-sat b_and!346269 b_and!346267 (not b_next!132667) (not b_next!132665))
