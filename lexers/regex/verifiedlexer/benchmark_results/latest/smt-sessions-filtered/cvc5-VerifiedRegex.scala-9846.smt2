; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!515610 () Bool)

(assert start!515610)

(declare-fun b!4912160 () Bool)

(declare-fun b_free!132007 () Bool)

(declare-fun b_next!132797 () Bool)

(assert (=> b!4912160 (= b_free!132007 (not b_next!132797))))

(declare-fun tp!1381199 () Bool)

(declare-fun b_and!346823 () Bool)

(assert (=> b!4912160 (= tp!1381199 b_and!346823)))

(declare-fun b_free!132009 () Bool)

(declare-fun b_next!132799 () Bool)

(assert (=> b!4912160 (= b_free!132009 (not b_next!132799))))

(declare-fun tp!1381198 () Bool)

(declare-fun b_and!346825 () Bool)

(assert (=> b!4912160 (= tp!1381198 b_and!346825)))

(declare-fun b!4912175 () Bool)

(declare-fun e!3070334 () Bool)

(assert (=> b!4912175 (= e!3070334 true)))

(declare-fun b!4912174 () Bool)

(declare-fun e!3070333 () Bool)

(assert (=> b!4912174 (= e!3070333 e!3070334)))

(declare-fun b!4912163 () Bool)

(assert (=> b!4912163 e!3070333))

(assert (= b!4912174 b!4912175))

(assert (= b!4912163 b!4912174))

(declare-fun order!25941 () Int)

(declare-fun order!25939 () Int)

(declare-fun lambda!244783 () Int)

(declare-datatypes ((C!26866 0))(
  ( (C!26867 (val!22767 Int)) )
))
(declare-datatypes ((Regex!13334 0))(
  ( (ElementMatch!13334 (c!834966 C!26866)) (Concat!21903 (regOne!27180 Regex!13334) (regTwo!27180 Regex!13334)) (EmptyExpr!13334) (Star!13334 (reg!13663 Regex!13334)) (EmptyLang!13334) (Union!13334 (regOne!27181 Regex!13334) (regTwo!27181 Regex!13334)) )
))
(declare-datatypes ((String!64288 0))(
  ( (String!64289 (value!264487 String)) )
))
(declare-datatypes ((List!56716 0))(
  ( (Nil!56592) (Cons!56592 (h!63040 (_ BitVec 16)) (t!367102 List!56716)) )
))
(declare-datatypes ((TokenValue!8569 0))(
  ( (FloatLiteralValue!17138 (text!60428 List!56716)) (TokenValueExt!8568 (__x!34431 Int)) (Broken!42845 (value!264488 List!56716)) (Object!8692) (End!8569) (Def!8569) (Underscore!8569) (Match!8569) (Else!8569) (Error!8569) (Case!8569) (If!8569) (Extends!8569) (Abstract!8569) (Class!8569) (Val!8569) (DelimiterValue!17138 (del!8629 List!56716)) (KeywordValue!8575 (value!264489 List!56716)) (CommentValue!17138 (value!264490 List!56716)) (WhitespaceValue!17138 (value!264491 List!56716)) (IndentationValue!8569 (value!264492 List!56716)) (String!64290) (Int32!8569) (Broken!42846 (value!264493 List!56716)) (Boolean!8570) (Unit!146876) (OperatorValue!8572 (op!8629 List!56716)) (IdentifierValue!17138 (value!264494 List!56716)) (IdentifierValue!17139 (value!264495 List!56716)) (WhitespaceValue!17139 (value!264496 List!56716)) (True!17138) (False!17138) (Broken!42847 (value!264497 List!56716)) (Broken!42848 (value!264498 List!56716)) (True!17139) (RightBrace!8569) (RightBracket!8569) (Colon!8569) (Null!8569) (Comma!8569) (LeftBracket!8569) (False!17139) (LeftBrace!8569) (ImaginaryLiteralValue!8569 (text!60429 List!56716)) (StringLiteralValue!25707 (value!264499 List!56716)) (EOFValue!8569 (value!264500 List!56716)) (IdentValue!8569 (value!264501 List!56716)) (DelimiterValue!17139 (value!264502 List!56716)) (DedentValue!8569 (value!264503 List!56716)) (NewLineValue!8569 (value!264504 List!56716)) (IntegerValue!25707 (value!264505 (_ BitVec 32)) (text!60430 List!56716)) (IntegerValue!25708 (value!264506 Int) (text!60431 List!56716)) (Times!8569) (Or!8569) (Equal!8569) (Minus!8569) (Broken!42849 (value!264507 List!56716)) (And!8569) (Div!8569) (LessEqual!8569) (Mod!8569) (Concat!21904) (Not!8569) (Plus!8569) (SpaceValue!8569 (value!264508 List!56716)) (IntegerValue!25709 (value!264509 Int) (text!60432 List!56716)) (StringLiteralValue!25708 (text!60433 List!56716)) (FloatLiteralValue!17139 (text!60434 List!56716)) (BytesLiteralValue!8569 (value!264510 List!56716)) (CommentValue!17139 (value!264511 List!56716)) (StringLiteralValue!25709 (value!264512 List!56716)) (ErrorTokenValue!8569 (msg!8630 List!56716)) )
))
(declare-datatypes ((List!56717 0))(
  ( (Nil!56593) (Cons!56593 (h!63041 C!26866) (t!367103 List!56717)) )
))
(declare-datatypes ((IArray!29715 0))(
  ( (IArray!29716 (innerList!14915 List!56717)) )
))
(declare-datatypes ((Conc!14827 0))(
  ( (Node!14827 (left!41249 Conc!14827) (right!41579 Conc!14827) (csize!29884 Int) (cheight!15038 Int)) (Leaf!24674 (xs!18143 IArray!29715) (csize!29885 Int)) (Empty!14827) )
))
(declare-datatypes ((BalanceConc!29084 0))(
  ( (BalanceConc!29085 (c!834967 Conc!14827)) )
))
(declare-datatypes ((TokenValueInjection!16446 0))(
  ( (TokenValueInjection!16447 (toValue!11208 Int) (toChars!11067 Int)) )
))
(declare-datatypes ((Rule!16318 0))(
  ( (Rule!16319 (regex!8259 Regex!13334) (tag!9123 String!64288) (isSeparator!8259 Bool) (transformation!8259 TokenValueInjection!16446)) )
))
(declare-fun rule!164 () Rule!16318)

(declare-fun dynLambda!22976 (Int Int) Int)

(declare-fun dynLambda!22977 (Int Int) Int)

(assert (=> b!4912175 (< (dynLambda!22976 order!25939 (toValue!11208 (transformation!8259 rule!164))) (dynLambda!22977 order!25941 lambda!244783))))

(declare-fun order!25943 () Int)

(declare-fun dynLambda!22978 (Int Int) Int)

(assert (=> b!4912175 (< (dynLambda!22978 order!25943 (toChars!11067 (transformation!8259 rule!164))) (dynLambda!22977 order!25941 lambda!244783))))

(declare-fun b!4912152 () Bool)

(declare-fun e!3070318 () Bool)

(declare-fun e!3070323 () Bool)

(assert (=> b!4912152 (= e!3070318 e!3070323)))

(declare-fun res!2098331 () Bool)

(assert (=> b!4912152 (=> res!2098331 e!3070323)))

(declare-datatypes ((Token!15042 0))(
  ( (Token!15043 (value!264513 TokenValue!8569) (rule!11477 Rule!16318) (size!37368 Int) (originalCharacters!8552 List!56717)) )
))
(declare-fun lt!2016635 () Token!15042)

(declare-datatypes ((tuple2!60986 0))(
  ( (tuple2!60987 (_1!33796 Token!15042) (_2!33796 List!56717)) )
))
(declare-fun lt!2016629 () tuple2!60986)

(declare-fun lt!2016633 () TokenValue!8569)

(declare-fun lt!2016625 () Int)

(declare-fun lt!2016622 () List!56717)

(assert (=> b!4912152 (= res!2098331 (or (not (= (value!264513 (_1!33796 lt!2016629)) lt!2016633)) (not (= (rule!11477 (_1!33796 lt!2016629)) rule!164)) (not (= (size!37368 (_1!33796 lt!2016629)) lt!2016625)) (not (= (originalCharacters!8552 (_1!33796 lt!2016629)) lt!2016622)) (not (= lt!2016635 (_1!33796 lt!2016629)))))))

(declare-datatypes ((Option!14147 0))(
  ( (None!14146) (Some!14146 (v!50108 tuple2!60986)) )
))
(declare-fun lt!2016634 () Option!14147)

(declare-fun get!19597 (Option!14147) tuple2!60986)

(assert (=> b!4912152 (= lt!2016629 (get!19597 lt!2016634))))

(declare-fun res!2098323 () Bool)

(declare-fun e!3070321 () Bool)

(assert (=> start!515610 (=> (not res!2098323) (not e!3070321))))

(declare-datatypes ((LexerInterface!7851 0))(
  ( (LexerInterfaceExt!7848 (__x!34432 Int)) (Lexer!7849) )
))
(declare-fun thiss!15943 () LexerInterface!7851)

(assert (=> start!515610 (= res!2098323 (is-Lexer!7849 thiss!15943))))

(assert (=> start!515610 e!3070321))

(assert (=> start!515610 true))

(declare-fun e!3070320 () Bool)

(assert (=> start!515610 e!3070320))

(declare-fun input!1509 () BalanceConc!29084)

(declare-fun e!3070325 () Bool)

(declare-fun inv!73194 (BalanceConc!29084) Bool)

(assert (=> start!515610 (and (inv!73194 input!1509) e!3070325)))

(declare-fun b!4912153 () Bool)

(declare-fun res!2098326 () Bool)

(declare-fun e!3070326 () Bool)

(assert (=> b!4912153 (=> res!2098326 e!3070326)))

(declare-fun lt!2016628 () BalanceConc!29084)

(declare-fun list!17869 (BalanceConc!29084) List!56717)

(assert (=> b!4912153 (= res!2098326 (not (= (list!17869 lt!2016628) lt!2016622)))))

(declare-fun b!4912154 () Bool)

(declare-fun res!2098329 () Bool)

(assert (=> b!4912154 (=> (not res!2098329) (not e!3070321))))

(declare-fun ruleValid!3756 (LexerInterface!7851 Rule!16318) Bool)

(assert (=> b!4912154 (= res!2098329 (ruleValid!3756 thiss!15943 rule!164))))

(declare-fun b!4912155 () Bool)

(assert (=> b!4912155 (= e!3070326 e!3070318)))

(declare-fun res!2098322 () Bool)

(assert (=> b!4912155 (=> res!2098322 e!3070318)))

(declare-fun apply!13601 (TokenValueInjection!16446 BalanceConc!29084) TokenValue!8569)

(assert (=> b!4912155 (= res!2098322 (not (= (apply!13601 (transformation!8259 rule!164) lt!2016628) lt!2016633)))))

(declare-datatypes ((Unit!146877 0))(
  ( (Unit!146878) )
))
(declare-fun lt!2016627 () Unit!146877)

(declare-datatypes ((tuple2!60988 0))(
  ( (tuple2!60989 (_1!33797 BalanceConc!29084) (_2!33797 BalanceConc!29084)) )
))
(declare-fun lt!2016620 () tuple2!60988)

(declare-fun lemmaEqSameImage!1135 (TokenValueInjection!16446 BalanceConc!29084 BalanceConc!29084) Unit!146877)

(assert (=> b!4912155 (= lt!2016627 (lemmaEqSameImage!1135 (transformation!8259 rule!164) (_1!33797 lt!2016620) lt!2016628))))

(declare-fun b!4912156 () Bool)

(declare-fun e!3070317 () Bool)

(assert (=> b!4912156 (= e!3070317 e!3070326)))

(declare-fun res!2098325 () Bool)

(assert (=> b!4912156 (=> res!2098325 e!3070326)))

(declare-fun lt!2016630 () Bool)

(declare-fun isDefined!11154 (Option!14147) Bool)

(assert (=> b!4912156 (= res!2098325 (not (= lt!2016630 (isDefined!11154 lt!2016634))))))

(declare-datatypes ((tuple2!60990 0))(
  ( (tuple2!60991 (_1!33798 Token!15042) (_2!33798 BalanceConc!29084)) )
))
(declare-datatypes ((Option!14148 0))(
  ( (None!14147) (Some!14147 (v!50109 tuple2!60990)) )
))
(declare-fun lt!2016621 () Option!14148)

(declare-fun isDefined!11155 (Option!14148) Bool)

(assert (=> b!4912156 (= lt!2016630 (isDefined!11155 lt!2016621))))

(declare-fun lt!2016632 () List!56717)

(declare-fun maxPrefixOneRule!3592 (LexerInterface!7851 Rule!16318 List!56717) Option!14147)

(assert (=> b!4912156 (= lt!2016634 (maxPrefixOneRule!3592 thiss!15943 rule!164 lt!2016632))))

(assert (=> b!4912156 (= lt!2016621 (Some!14147 (tuple2!60991 lt!2016635 (_2!33797 lt!2016620))))))

(assert (=> b!4912156 (= lt!2016635 (Token!15043 lt!2016633 rule!164 lt!2016625 lt!2016622))))

(declare-fun size!37369 (BalanceConc!29084) Int)

(assert (=> b!4912156 (= lt!2016625 (size!37369 (_1!33797 lt!2016620)))))

(assert (=> b!4912156 (= lt!2016633 (apply!13601 (transformation!8259 rule!164) (_1!33797 lt!2016620)))))

(declare-fun lt!2016619 () Unit!146877)

(declare-fun ForallOf!1194 (Int BalanceConc!29084) Unit!146877)

(assert (=> b!4912156 (= lt!2016619 (ForallOf!1194 lambda!244783 lt!2016628))))

(declare-fun seqFromList!5999 (List!56717) BalanceConc!29084)

(assert (=> b!4912156 (= lt!2016628 (seqFromList!5999 lt!2016622))))

(assert (=> b!4912156 (= lt!2016622 (list!17869 (_1!33797 lt!2016620)))))

(declare-fun lt!2016626 () Unit!146877)

(assert (=> b!4912156 (= lt!2016626 (ForallOf!1194 lambda!244783 (_1!33797 lt!2016620)))))

(declare-fun b!4912157 () Bool)

(declare-fun e!3070328 () Bool)

(declare-fun inv!73195 (Token!15042) Bool)

(assert (=> b!4912157 (= e!3070328 (inv!73195 lt!2016635))))

(declare-fun b!4912158 () Bool)

(declare-fun tp!1381196 () Bool)

(declare-fun inv!73196 (Conc!14827) Bool)

(assert (=> b!4912158 (= e!3070325 (and (inv!73196 (c!834967 input!1509)) tp!1381196))))

(declare-fun b!4912159 () Bool)

(declare-fun e!3070322 () Bool)

(assert (=> b!4912159 (= e!3070321 e!3070322)))

(declare-fun res!2098319 () Bool)

(assert (=> b!4912159 (=> (not res!2098319) (not e!3070322))))

(declare-fun isEmpty!30527 (BalanceConc!29084) Bool)

(assert (=> b!4912159 (= res!2098319 (not (isEmpty!30527 (_1!33797 lt!2016620))))))

(declare-fun findLongestMatchWithZipperSequence!347 (Regex!13334 BalanceConc!29084) tuple2!60988)

(assert (=> b!4912159 (= lt!2016620 (findLongestMatchWithZipperSequence!347 (regex!8259 rule!164) input!1509))))

(declare-fun e!3070319 () Bool)

(assert (=> b!4912160 (= e!3070319 (and tp!1381199 tp!1381198))))

(declare-fun b!4912161 () Bool)

(declare-fun e!3070327 () Bool)

(declare-datatypes ((tuple2!60992 0))(
  ( (tuple2!60993 (_1!33799 List!56717) (_2!33799 List!56717)) )
))
(declare-fun lt!2016624 () tuple2!60992)

(declare-fun matchR!6599 (Regex!13334 List!56717) Bool)

(assert (=> b!4912161 (= e!3070327 (matchR!6599 (regex!8259 rule!164) (_1!33799 lt!2016624)))))

(declare-fun b!4912162 () Bool)

(declare-fun res!2098328 () Bool)

(assert (=> b!4912162 (=> res!2098328 e!3070328)))

(declare-fun lt!2016618 () tuple2!60990)

(assert (=> b!4912162 (= res!2098328 (not (= (list!17869 (_2!33798 lt!2016618)) (_2!33796 lt!2016629))))))

(declare-fun res!2098320 () Bool)

(assert (=> b!4912163 (=> res!2098320 e!3070317)))

(declare-fun Forall!1754 (Int) Bool)

(assert (=> b!4912163 (= res!2098320 (not (Forall!1754 lambda!244783)))))

(declare-fun b!4912164 () Bool)

(assert (=> b!4912164 (= e!3070323 e!3070328)))

(declare-fun res!2098330 () Bool)

(assert (=> b!4912164 (=> res!2098330 e!3070328)))

(assert (=> b!4912164 (= res!2098330 (not (= (_1!33798 lt!2016618) (_1!33796 lt!2016629))))))

(declare-fun get!19598 (Option!14148) tuple2!60990)

(assert (=> b!4912164 (= lt!2016618 (get!19598 lt!2016621))))

(declare-fun b!4912165 () Bool)

(assert (=> b!4912165 (= e!3070322 (not e!3070317))))

(declare-fun res!2098324 () Bool)

(assert (=> b!4912165 (=> res!2098324 e!3070317)))

(declare-fun semiInverseModEq!3660 (Int Int) Bool)

(assert (=> b!4912165 (= res!2098324 (not (semiInverseModEq!3660 (toChars!11067 (transformation!8259 rule!164)) (toValue!11208 (transformation!8259 rule!164)))))))

(declare-fun lt!2016623 () Unit!146877)

(declare-fun lemmaInv!1301 (TokenValueInjection!16446) Unit!146877)

(assert (=> b!4912165 (= lt!2016623 (lemmaInv!1301 (transformation!8259 rule!164)))))

(assert (=> b!4912165 e!3070327))

(declare-fun res!2098321 () Bool)

(assert (=> b!4912165 (=> res!2098321 e!3070327)))

(declare-fun isEmpty!30528 (List!56717) Bool)

(assert (=> b!4912165 (= res!2098321 (isEmpty!30528 (_1!33799 lt!2016624)))))

(declare-fun findLongestMatchInner!1820 (Regex!13334 List!56717 Int List!56717 List!56717 Int) tuple2!60992)

(declare-fun size!37370 (List!56717) Int)

(assert (=> b!4912165 (= lt!2016624 (findLongestMatchInner!1820 (regex!8259 rule!164) Nil!56593 (size!37370 Nil!56593) lt!2016632 lt!2016632 (size!37370 lt!2016632)))))

(declare-fun lt!2016631 () Unit!146877)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1783 (Regex!13334 List!56717) Unit!146877)

(assert (=> b!4912165 (= lt!2016631 (longestMatchIsAcceptedByMatchOrIsEmpty!1783 (regex!8259 rule!164) lt!2016632))))

(assert (=> b!4912165 (= lt!2016632 (list!17869 input!1509))))

(declare-fun tp!1381197 () Bool)

(declare-fun b!4912166 () Bool)

(declare-fun inv!73191 (String!64288) Bool)

(declare-fun inv!73197 (TokenValueInjection!16446) Bool)

(assert (=> b!4912166 (= e!3070320 (and tp!1381197 (inv!73191 (tag!9123 rule!164)) (inv!73197 (transformation!8259 rule!164)) e!3070319))))

(declare-fun b!4912167 () Bool)

(declare-fun res!2098327 () Bool)

(assert (=> b!4912167 (=> res!2098327 e!3070326)))

(assert (=> b!4912167 (= res!2098327 (not lt!2016630))))

(assert (= (and start!515610 res!2098323) b!4912154))

(assert (= (and b!4912154 res!2098329) b!4912159))

(assert (= (and b!4912159 res!2098319) b!4912165))

(assert (= (and b!4912165 (not res!2098321)) b!4912161))

(assert (= (and b!4912165 (not res!2098324)) b!4912163))

(assert (= (and b!4912163 (not res!2098320)) b!4912156))

(assert (= (and b!4912156 (not res!2098325)) b!4912167))

(assert (= (and b!4912167 (not res!2098327)) b!4912153))

(assert (= (and b!4912153 (not res!2098326)) b!4912155))

(assert (= (and b!4912155 (not res!2098322)) b!4912152))

(assert (= (and b!4912152 (not res!2098331)) b!4912164))

(assert (= (and b!4912164 (not res!2098330)) b!4912162))

(assert (= (and b!4912162 (not res!2098328)) b!4912157))

(assert (= b!4912166 b!4912160))

(assert (= start!515610 b!4912166))

(assert (= start!515610 b!4912158))

(declare-fun m!5921970 () Bool)

(assert (=> start!515610 m!5921970))

(declare-fun m!5921972 () Bool)

(assert (=> b!4912156 m!5921972))

(declare-fun m!5921974 () Bool)

(assert (=> b!4912156 m!5921974))

(declare-fun m!5921976 () Bool)

(assert (=> b!4912156 m!5921976))

(declare-fun m!5921978 () Bool)

(assert (=> b!4912156 m!5921978))

(declare-fun m!5921980 () Bool)

(assert (=> b!4912156 m!5921980))

(declare-fun m!5921982 () Bool)

(assert (=> b!4912156 m!5921982))

(declare-fun m!5921984 () Bool)

(assert (=> b!4912156 m!5921984))

(declare-fun m!5921986 () Bool)

(assert (=> b!4912156 m!5921986))

(declare-fun m!5921988 () Bool)

(assert (=> b!4912156 m!5921988))

(declare-fun m!5921990 () Bool)

(assert (=> b!4912162 m!5921990))

(declare-fun m!5921992 () Bool)

(assert (=> b!4912159 m!5921992))

(declare-fun m!5921994 () Bool)

(assert (=> b!4912159 m!5921994))

(declare-fun m!5921996 () Bool)

(assert (=> b!4912154 m!5921996))

(declare-fun m!5921998 () Bool)

(assert (=> b!4912166 m!5921998))

(declare-fun m!5922000 () Bool)

(assert (=> b!4912166 m!5922000))

(declare-fun m!5922002 () Bool)

(assert (=> b!4912155 m!5922002))

(declare-fun m!5922004 () Bool)

(assert (=> b!4912155 m!5922004))

(declare-fun m!5922006 () Bool)

(assert (=> b!4912161 m!5922006))

(declare-fun m!5922008 () Bool)

(assert (=> b!4912163 m!5922008))

(declare-fun m!5922010 () Bool)

(assert (=> b!4912153 m!5922010))

(declare-fun m!5922012 () Bool)

(assert (=> b!4912157 m!5922012))

(declare-fun m!5922014 () Bool)

(assert (=> b!4912158 m!5922014))

(declare-fun m!5922016 () Bool)

(assert (=> b!4912164 m!5922016))

(declare-fun m!5922018 () Bool)

(assert (=> b!4912165 m!5922018))

(declare-fun m!5922020 () Bool)

(assert (=> b!4912165 m!5922020))

(declare-fun m!5922022 () Bool)

(assert (=> b!4912165 m!5922022))

(declare-fun m!5922024 () Bool)

(assert (=> b!4912165 m!5922024))

(assert (=> b!4912165 m!5922020))

(assert (=> b!4912165 m!5922022))

(declare-fun m!5922026 () Bool)

(assert (=> b!4912165 m!5922026))

(declare-fun m!5922028 () Bool)

(assert (=> b!4912165 m!5922028))

(declare-fun m!5922030 () Bool)

(assert (=> b!4912165 m!5922030))

(declare-fun m!5922032 () Bool)

(assert (=> b!4912165 m!5922032))

(declare-fun m!5922034 () Bool)

(assert (=> b!4912152 m!5922034))

(push 1)

(assert (not b!4912164))

(assert (not b!4912157))

(assert (not b!4912152))

(assert (not b_next!132799))

(assert (not b!4912156))

(assert (not b_next!132797))

(assert b_and!346823)

(assert (not b!4912161))

(assert (not b!4912166))

(assert (not b!4912154))

(assert (not b!4912155))

(assert (not b!4912163))

(assert (not start!515610))

(assert (not b!4912158))

(assert (not b!4912159))

(assert (not b!4912162))

(assert b_and!346825)

(assert (not b!4912153))

(assert (not b!4912165))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346825)

(assert b_and!346823)

(assert (not b_next!132799))

(assert (not b_next!132797))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1578511 () Bool)

(declare-fun isBalanced!4055 (Conc!14827) Bool)

(assert (=> d!1578511 (= (inv!73194 input!1509) (isBalanced!4055 (c!834967 input!1509)))))

(declare-fun bs!1177547 () Bool)

(assert (= bs!1177547 d!1578511))

(declare-fun m!5922102 () Bool)

(assert (=> bs!1177547 m!5922102))

(assert (=> start!515610 d!1578511))

(declare-fun d!1578513 () Bool)

(declare-fun res!2098377 () Bool)

(declare-fun e!3070379 () Bool)

(assert (=> d!1578513 (=> (not res!2098377) (not e!3070379))))

(assert (=> d!1578513 (= res!2098377 (not (isEmpty!30528 (originalCharacters!8552 lt!2016635))))))

(assert (=> d!1578513 (= (inv!73195 lt!2016635) e!3070379)))

(declare-fun b!4912236 () Bool)

(declare-fun res!2098378 () Bool)

(assert (=> b!4912236 (=> (not res!2098378) (not e!3070379))))

(declare-fun dynLambda!22982 (Int TokenValue!8569) BalanceConc!29084)

(assert (=> b!4912236 (= res!2098378 (= (originalCharacters!8552 lt!2016635) (list!17869 (dynLambda!22982 (toChars!11067 (transformation!8259 (rule!11477 lt!2016635))) (value!264513 lt!2016635)))))))

(declare-fun b!4912237 () Bool)

(assert (=> b!4912237 (= e!3070379 (= (size!37368 lt!2016635) (size!37370 (originalCharacters!8552 lt!2016635))))))

(assert (= (and d!1578513 res!2098377) b!4912236))

(assert (= (and b!4912236 res!2098378) b!4912237))

(declare-fun b_lambda!196081 () Bool)

(assert (=> (not b_lambda!196081) (not b!4912236)))

(declare-fun tb!260111 () Bool)

(declare-fun t!367107 () Bool)

(assert (=> (and b!4912160 (= (toChars!11067 (transformation!8259 rule!164)) (toChars!11067 (transformation!8259 (rule!11477 lt!2016635)))) t!367107) tb!260111))

(declare-fun b!4912242 () Bool)

(declare-fun e!3070382 () Bool)

(declare-fun tp!1381214 () Bool)

(assert (=> b!4912242 (= e!3070382 (and (inv!73196 (c!834967 (dynLambda!22982 (toChars!11067 (transformation!8259 (rule!11477 lt!2016635))) (value!264513 lt!2016635)))) tp!1381214))))

(declare-fun result!324054 () Bool)

(assert (=> tb!260111 (= result!324054 (and (inv!73194 (dynLambda!22982 (toChars!11067 (transformation!8259 (rule!11477 lt!2016635))) (value!264513 lt!2016635))) e!3070382))))

(assert (= tb!260111 b!4912242))

(declare-fun m!5922104 () Bool)

(assert (=> b!4912242 m!5922104))

(declare-fun m!5922106 () Bool)

(assert (=> tb!260111 m!5922106))

(assert (=> b!4912236 t!367107))

(declare-fun b_and!346831 () Bool)

(assert (= b_and!346825 (and (=> t!367107 result!324054) b_and!346831)))

(declare-fun m!5922108 () Bool)

(assert (=> d!1578513 m!5922108))

(declare-fun m!5922110 () Bool)

(assert (=> b!4912236 m!5922110))

(assert (=> b!4912236 m!5922110))

(declare-fun m!5922112 () Bool)

(assert (=> b!4912236 m!5922112))

(declare-fun m!5922114 () Bool)

(assert (=> b!4912237 m!5922114))

(assert (=> b!4912157 d!1578513))

(declare-fun d!1578515 () Bool)

(declare-fun c!834973 () Bool)

(assert (=> d!1578515 (= c!834973 (is-Node!14827 (c!834967 input!1509)))))

(declare-fun e!3070387 () Bool)

(assert (=> d!1578515 (= (inv!73196 (c!834967 input!1509)) e!3070387)))

(declare-fun b!4912249 () Bool)

(declare-fun inv!73202 (Conc!14827) Bool)

(assert (=> b!4912249 (= e!3070387 (inv!73202 (c!834967 input!1509)))))

(declare-fun b!4912250 () Bool)

(declare-fun e!3070388 () Bool)

(assert (=> b!4912250 (= e!3070387 e!3070388)))

(declare-fun res!2098382 () Bool)

(assert (=> b!4912250 (= res!2098382 (not (is-Leaf!24674 (c!834967 input!1509))))))

(assert (=> b!4912250 (=> res!2098382 e!3070388)))

(declare-fun b!4912251 () Bool)

(declare-fun inv!73203 (Conc!14827) Bool)

(assert (=> b!4912251 (= e!3070388 (inv!73203 (c!834967 input!1509)))))

(assert (= (and d!1578515 c!834973) b!4912249))

(assert (= (and d!1578515 (not c!834973)) b!4912250))

(assert (= (and b!4912250 (not res!2098382)) b!4912251))

(declare-fun m!5922116 () Bool)

(assert (=> b!4912249 m!5922116))

(declare-fun m!5922118 () Bool)

(assert (=> b!4912251 m!5922118))

(assert (=> b!4912158 d!1578515))

(declare-fun d!1578517 () Bool)

(declare-fun lt!2016692 () Int)

(assert (=> d!1578517 (= lt!2016692 (size!37370 (list!17869 (_1!33797 lt!2016620))))))

(declare-fun size!37374 (Conc!14827) Int)

(assert (=> d!1578517 (= lt!2016692 (size!37374 (c!834967 (_1!33797 lt!2016620))))))

(assert (=> d!1578517 (= (size!37369 (_1!33797 lt!2016620)) lt!2016692)))

(declare-fun bs!1177548 () Bool)

(assert (= bs!1177548 d!1578517))

(assert (=> bs!1177548 m!5921976))

(assert (=> bs!1177548 m!5921976))

(declare-fun m!5922120 () Bool)

(assert (=> bs!1177548 m!5922120))

(declare-fun m!5922122 () Bool)

(assert (=> bs!1177548 m!5922122))

(assert (=> b!4912156 d!1578517))

(declare-fun d!1578519 () Bool)

(declare-fun fromListB!2725 (List!56717) BalanceConc!29084)

(assert (=> d!1578519 (= (seqFromList!5999 lt!2016622) (fromListB!2725 lt!2016622))))

(declare-fun bs!1177549 () Bool)

(assert (= bs!1177549 d!1578519))

(declare-fun m!5922124 () Bool)

(assert (=> bs!1177549 m!5922124))

(assert (=> b!4912156 d!1578519))

(declare-fun d!1578521 () Bool)

(declare-fun isEmpty!30531 (Option!14148) Bool)

(assert (=> d!1578521 (= (isDefined!11155 lt!2016621) (not (isEmpty!30531 lt!2016621)))))

(declare-fun bs!1177550 () Bool)

(assert (= bs!1177550 d!1578521))

(declare-fun m!5922126 () Bool)

(assert (=> bs!1177550 m!5922126))

(assert (=> b!4912156 d!1578521))

(declare-fun d!1578523 () Bool)

(declare-fun dynLambda!22983 (Int BalanceConc!29084) Bool)

(assert (=> d!1578523 (dynLambda!22983 lambda!244783 (_1!33797 lt!2016620))))

(declare-fun lt!2016695 () Unit!146877)

(declare-fun choose!35943 (Int BalanceConc!29084) Unit!146877)

(assert (=> d!1578523 (= lt!2016695 (choose!35943 lambda!244783 (_1!33797 lt!2016620)))))

(assert (=> d!1578523 (Forall!1754 lambda!244783)))

(assert (=> d!1578523 (= (ForallOf!1194 lambda!244783 (_1!33797 lt!2016620)) lt!2016695)))

(declare-fun b_lambda!196083 () Bool)

(assert (=> (not b_lambda!196083) (not d!1578523)))

(declare-fun bs!1177551 () Bool)

(assert (= bs!1177551 d!1578523))

(declare-fun m!5922128 () Bool)

(assert (=> bs!1177551 m!5922128))

(declare-fun m!5922130 () Bool)

(assert (=> bs!1177551 m!5922130))

(assert (=> bs!1177551 m!5922008))

(assert (=> b!4912156 d!1578523))

(declare-fun d!1578525 () Bool)

(declare-fun list!17871 (Conc!14827) List!56717)

(assert (=> d!1578525 (= (list!17869 (_1!33797 lt!2016620)) (list!17871 (c!834967 (_1!33797 lt!2016620))))))

(declare-fun bs!1177552 () Bool)

(assert (= bs!1177552 d!1578525))

(declare-fun m!5922132 () Bool)

(assert (=> bs!1177552 m!5922132))

(assert (=> b!4912156 d!1578525))

(declare-fun b!4912270 () Bool)

(declare-fun res!2098403 () Bool)

(declare-fun e!3070400 () Bool)

(assert (=> b!4912270 (=> (not res!2098403) (not e!3070400))))

(declare-fun lt!2016709 () Option!14147)

(declare-fun ++!12284 (List!56717 List!56717) List!56717)

(declare-fun charsOf!5408 (Token!15042) BalanceConc!29084)

(assert (=> b!4912270 (= res!2098403 (= (++!12284 (list!17869 (charsOf!5408 (_1!33796 (get!19597 lt!2016709)))) (_2!33796 (get!19597 lt!2016709))) lt!2016632))))

(declare-fun b!4912271 () Bool)

(declare-fun e!3070398 () Option!14147)

(declare-fun lt!2016707 () tuple2!60992)

(assert (=> b!4912271 (= e!3070398 (Some!14146 (tuple2!60987 (Token!15043 (apply!13601 (transformation!8259 rule!164) (seqFromList!5999 (_1!33799 lt!2016707))) rule!164 (size!37369 (seqFromList!5999 (_1!33799 lt!2016707))) (_1!33799 lt!2016707)) (_2!33799 lt!2016707))))))

(declare-fun lt!2016710 () Unit!146877)

(assert (=> b!4912271 (= lt!2016710 (longestMatchIsAcceptedByMatchOrIsEmpty!1783 (regex!8259 rule!164) lt!2016632))))

(declare-fun res!2098402 () Bool)

(assert (=> b!4912271 (= res!2098402 (isEmpty!30528 (_1!33799 (findLongestMatchInner!1820 (regex!8259 rule!164) Nil!56593 (size!37370 Nil!56593) lt!2016632 lt!2016632 (size!37370 lt!2016632)))))))

(declare-fun e!3070397 () Bool)

(assert (=> b!4912271 (=> res!2098402 e!3070397)))

(assert (=> b!4912271 e!3070397))

(declare-fun lt!2016708 () Unit!146877)

(assert (=> b!4912271 (= lt!2016708 lt!2016710)))

(declare-fun lt!2016706 () Unit!146877)

(declare-fun lemmaSemiInverse!2596 (TokenValueInjection!16446 BalanceConc!29084) Unit!146877)

(assert (=> b!4912271 (= lt!2016706 (lemmaSemiInverse!2596 (transformation!8259 rule!164) (seqFromList!5999 (_1!33799 lt!2016707))))))

(declare-fun d!1578527 () Bool)

(declare-fun e!3070399 () Bool)

(assert (=> d!1578527 e!3070399))

(declare-fun res!2098404 () Bool)

(assert (=> d!1578527 (=> res!2098404 e!3070399)))

(declare-fun isEmpty!30532 (Option!14147) Bool)

(assert (=> d!1578527 (= res!2098404 (isEmpty!30532 lt!2016709))))

(assert (=> d!1578527 (= lt!2016709 e!3070398)))

(declare-fun c!834976 () Bool)

(assert (=> d!1578527 (= c!834976 (isEmpty!30528 (_1!33799 lt!2016707)))))

(declare-fun findLongestMatch!1687 (Regex!13334 List!56717) tuple2!60992)

(assert (=> d!1578527 (= lt!2016707 (findLongestMatch!1687 (regex!8259 rule!164) lt!2016632))))

(assert (=> d!1578527 (ruleValid!3756 thiss!15943 rule!164)))

(assert (=> d!1578527 (= (maxPrefixOneRule!3592 thiss!15943 rule!164 lt!2016632) lt!2016709)))

(declare-fun b!4912272 () Bool)

(assert (=> b!4912272 (= e!3070398 None!14146)))

(declare-fun b!4912273 () Bool)

(declare-fun res!2098401 () Bool)

(assert (=> b!4912273 (=> (not res!2098401) (not e!3070400))))

(assert (=> b!4912273 (= res!2098401 (= (value!264513 (_1!33796 (get!19597 lt!2016709))) (apply!13601 (transformation!8259 (rule!11477 (_1!33796 (get!19597 lt!2016709)))) (seqFromList!5999 (originalCharacters!8552 (_1!33796 (get!19597 lt!2016709)))))))))

(declare-fun b!4912274 () Bool)

(declare-fun res!2098400 () Bool)

(assert (=> b!4912274 (=> (not res!2098400) (not e!3070400))))

(assert (=> b!4912274 (= res!2098400 (= (rule!11477 (_1!33796 (get!19597 lt!2016709))) rule!164))))

(declare-fun b!4912275 () Bool)

(assert (=> b!4912275 (= e!3070399 e!3070400)))

(declare-fun res!2098398 () Bool)

(assert (=> b!4912275 (=> (not res!2098398) (not e!3070400))))

(assert (=> b!4912275 (= res!2098398 (matchR!6599 (regex!8259 rule!164) (list!17869 (charsOf!5408 (_1!33796 (get!19597 lt!2016709))))))))

(declare-fun b!4912276 () Bool)

(assert (=> b!4912276 (= e!3070397 (matchR!6599 (regex!8259 rule!164) (_1!33799 (findLongestMatchInner!1820 (regex!8259 rule!164) Nil!56593 (size!37370 Nil!56593) lt!2016632 lt!2016632 (size!37370 lt!2016632)))))))

(declare-fun b!4912277 () Bool)

(declare-fun res!2098399 () Bool)

(assert (=> b!4912277 (=> (not res!2098399) (not e!3070400))))

(assert (=> b!4912277 (= res!2098399 (< (size!37370 (_2!33796 (get!19597 lt!2016709))) (size!37370 lt!2016632)))))

(declare-fun b!4912278 () Bool)

(assert (=> b!4912278 (= e!3070400 (= (size!37368 (_1!33796 (get!19597 lt!2016709))) (size!37370 (originalCharacters!8552 (_1!33796 (get!19597 lt!2016709))))))))

(assert (= (and d!1578527 c!834976) b!4912272))

(assert (= (and d!1578527 (not c!834976)) b!4912271))

(assert (= (and b!4912271 (not res!2098402)) b!4912276))

(assert (= (and d!1578527 (not res!2098404)) b!4912275))

(assert (= (and b!4912275 res!2098398) b!4912270))

(assert (= (and b!4912270 res!2098403) b!4912277))

(assert (= (and b!4912277 res!2098399) b!4912274))

(assert (= (and b!4912274 res!2098400) b!4912273))

(assert (= (and b!4912273 res!2098401) b!4912278))

(declare-fun m!5922134 () Bool)

(assert (=> b!4912270 m!5922134))

(declare-fun m!5922136 () Bool)

(assert (=> b!4912270 m!5922136))

(assert (=> b!4912270 m!5922136))

(declare-fun m!5922138 () Bool)

(assert (=> b!4912270 m!5922138))

(assert (=> b!4912270 m!5922138))

(declare-fun m!5922140 () Bool)

(assert (=> b!4912270 m!5922140))

(assert (=> b!4912273 m!5922134))

(declare-fun m!5922142 () Bool)

(assert (=> b!4912273 m!5922142))

(assert (=> b!4912273 m!5922142))

(declare-fun m!5922144 () Bool)

(assert (=> b!4912273 m!5922144))

(assert (=> b!4912277 m!5922134))

(declare-fun m!5922146 () Bool)

(assert (=> b!4912277 m!5922146))

(assert (=> b!4912277 m!5922022))

(assert (=> b!4912274 m!5922134))

(declare-fun m!5922148 () Bool)

(assert (=> d!1578527 m!5922148))

(declare-fun m!5922150 () Bool)

(assert (=> d!1578527 m!5922150))

(declare-fun m!5922152 () Bool)

(assert (=> d!1578527 m!5922152))

(assert (=> d!1578527 m!5921996))

(assert (=> b!4912271 m!5922020))

(declare-fun m!5922154 () Bool)

(assert (=> b!4912271 m!5922154))

(declare-fun m!5922156 () Bool)

(assert (=> b!4912271 m!5922156))

(assert (=> b!4912271 m!5922024))

(assert (=> b!4912271 m!5922154))

(declare-fun m!5922158 () Bool)

(assert (=> b!4912271 m!5922158))

(assert (=> b!4912271 m!5922154))

(declare-fun m!5922160 () Bool)

(assert (=> b!4912271 m!5922160))

(assert (=> b!4912271 m!5922154))

(declare-fun m!5922162 () Bool)

(assert (=> b!4912271 m!5922162))

(assert (=> b!4912271 m!5922020))

(assert (=> b!4912271 m!5922022))

(assert (=> b!4912271 m!5922026))

(assert (=> b!4912271 m!5922022))

(assert (=> b!4912275 m!5922134))

(assert (=> b!4912275 m!5922136))

(assert (=> b!4912275 m!5922136))

(assert (=> b!4912275 m!5922138))

(assert (=> b!4912275 m!5922138))

(declare-fun m!5922164 () Bool)

(assert (=> b!4912275 m!5922164))

(assert (=> b!4912278 m!5922134))

(declare-fun m!5922166 () Bool)

(assert (=> b!4912278 m!5922166))

(assert (=> b!4912276 m!5922020))

(assert (=> b!4912276 m!5922022))

(assert (=> b!4912276 m!5922020))

(assert (=> b!4912276 m!5922022))

(assert (=> b!4912276 m!5922026))

(declare-fun m!5922168 () Bool)

(assert (=> b!4912276 m!5922168))

(assert (=> b!4912156 d!1578527))

(declare-fun d!1578529 () Bool)

(assert (=> d!1578529 (dynLambda!22983 lambda!244783 lt!2016628)))

(declare-fun lt!2016711 () Unit!146877)

(assert (=> d!1578529 (= lt!2016711 (choose!35943 lambda!244783 lt!2016628))))

(assert (=> d!1578529 (Forall!1754 lambda!244783)))

(assert (=> d!1578529 (= (ForallOf!1194 lambda!244783 lt!2016628) lt!2016711)))

(declare-fun b_lambda!196085 () Bool)

(assert (=> (not b_lambda!196085) (not d!1578529)))

(declare-fun bs!1177553 () Bool)

(assert (= bs!1177553 d!1578529))

(declare-fun m!5922170 () Bool)

(assert (=> bs!1177553 m!5922170))

(declare-fun m!5922172 () Bool)

(assert (=> bs!1177553 m!5922172))

(assert (=> bs!1177553 m!5922008))

(assert (=> b!4912156 d!1578529))

(declare-fun d!1578531 () Bool)

(assert (=> d!1578531 (= (isDefined!11154 lt!2016634) (not (isEmpty!30532 lt!2016634)))))

(declare-fun bs!1177554 () Bool)

(assert (= bs!1177554 d!1578531))

(declare-fun m!5922174 () Bool)

(assert (=> bs!1177554 m!5922174))

(assert (=> b!4912156 d!1578531))

(declare-fun d!1578533 () Bool)

(declare-fun dynLambda!22984 (Int BalanceConc!29084) TokenValue!8569)

(assert (=> d!1578533 (= (apply!13601 (transformation!8259 rule!164) (_1!33797 lt!2016620)) (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) (_1!33797 lt!2016620)))))

(declare-fun b_lambda!196087 () Bool)

(assert (=> (not b_lambda!196087) (not d!1578533)))

(declare-fun t!367109 () Bool)

(declare-fun tb!260113 () Bool)

(assert (=> (and b!4912160 (= (toValue!11208 (transformation!8259 rule!164)) (toValue!11208 (transformation!8259 rule!164))) t!367109) tb!260113))

(declare-fun result!324058 () Bool)

(declare-fun inv!21 (TokenValue!8569) Bool)

(assert (=> tb!260113 (= result!324058 (inv!21 (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) (_1!33797 lt!2016620))))))

(declare-fun m!5922176 () Bool)

(assert (=> tb!260113 m!5922176))

(assert (=> d!1578533 t!367109))

(declare-fun b_and!346833 () Bool)

(assert (= b_and!346823 (and (=> t!367109 result!324058) b_and!346833)))

(declare-fun m!5922178 () Bool)

(assert (=> d!1578533 m!5922178))

(assert (=> b!4912156 d!1578533))

(declare-fun d!1578535 () Bool)

(assert (=> d!1578535 (= (list!17869 input!1509) (list!17871 (c!834967 input!1509)))))

(declare-fun bs!1177555 () Bool)

(assert (= bs!1177555 d!1578535))

(declare-fun m!5922180 () Bool)

(assert (=> bs!1177555 m!5922180))

(assert (=> b!4912165 d!1578535))

(declare-fun d!1578537 () Bool)

(declare-fun lt!2016714 () Int)

(assert (=> d!1578537 (>= lt!2016714 0)))

(declare-fun e!3070406 () Int)

(assert (=> d!1578537 (= lt!2016714 e!3070406)))

(declare-fun c!834979 () Bool)

(assert (=> d!1578537 (= c!834979 (is-Nil!56593 lt!2016632))))

(assert (=> d!1578537 (= (size!37370 lt!2016632) lt!2016714)))

(declare-fun b!4912285 () Bool)

(assert (=> b!4912285 (= e!3070406 0)))

(declare-fun b!4912286 () Bool)

(assert (=> b!4912286 (= e!3070406 (+ 1 (size!37370 (t!367103 lt!2016632))))))

(assert (= (and d!1578537 c!834979) b!4912285))

(assert (= (and d!1578537 (not c!834979)) b!4912286))

(declare-fun m!5922182 () Bool)

(assert (=> b!4912286 m!5922182))

(assert (=> b!4912165 d!1578537))

(declare-fun d!1578539 () Bool)

(declare-fun e!3070409 () Bool)

(assert (=> d!1578539 e!3070409))

(declare-fun res!2098407 () Bool)

(assert (=> d!1578539 (=> (not res!2098407) (not e!3070409))))

(assert (=> d!1578539 (= res!2098407 (semiInverseModEq!3660 (toChars!11067 (transformation!8259 rule!164)) (toValue!11208 (transformation!8259 rule!164))))))

(declare-fun Unit!146882 () Unit!146877)

(assert (=> d!1578539 (= (lemmaInv!1301 (transformation!8259 rule!164)) Unit!146882)))

(declare-fun b!4912289 () Bool)

(declare-fun equivClasses!3510 (Int Int) Bool)

(assert (=> b!4912289 (= e!3070409 (equivClasses!3510 (toChars!11067 (transformation!8259 rule!164)) (toValue!11208 (transformation!8259 rule!164))))))

(assert (= (and d!1578539 res!2098407) b!4912289))

(assert (=> d!1578539 m!5922018))

(declare-fun m!5922184 () Bool)

(assert (=> b!4912289 m!5922184))

(assert (=> b!4912165 d!1578539))

(declare-fun d!1578543 () Bool)

(declare-fun e!3070415 () Bool)

(assert (=> d!1578543 e!3070415))

(declare-fun res!2098410 () Bool)

(assert (=> d!1578543 (=> res!2098410 e!3070415)))

(assert (=> d!1578543 (= res!2098410 (isEmpty!30528 (_1!33799 (findLongestMatchInner!1820 (regex!8259 rule!164) Nil!56593 (size!37370 Nil!56593) lt!2016632 lt!2016632 (size!37370 lt!2016632)))))))

(declare-fun lt!2016717 () Unit!146877)

(declare-fun choose!35944 (Regex!13334 List!56717) Unit!146877)

(assert (=> d!1578543 (= lt!2016717 (choose!35944 (regex!8259 rule!164) lt!2016632))))

(declare-fun validRegex!5925 (Regex!13334) Bool)

(assert (=> d!1578543 (validRegex!5925 (regex!8259 rule!164))))

(assert (=> d!1578543 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1783 (regex!8259 rule!164) lt!2016632) lt!2016717)))

(declare-fun b!4912294 () Bool)

(assert (=> b!4912294 (= e!3070415 (matchR!6599 (regex!8259 rule!164) (_1!33799 (findLongestMatchInner!1820 (regex!8259 rule!164) Nil!56593 (size!37370 Nil!56593) lt!2016632 lt!2016632 (size!37370 lt!2016632)))))))

(assert (= (and d!1578543 (not res!2098410)) b!4912294))

(assert (=> d!1578543 m!5922020))

(declare-fun m!5922194 () Bool)

(assert (=> d!1578543 m!5922194))

(assert (=> d!1578543 m!5922022))

(declare-fun m!5922196 () Bool)

(assert (=> d!1578543 m!5922196))

(assert (=> d!1578543 m!5922020))

(assert (=> d!1578543 m!5922022))

(assert (=> d!1578543 m!5922026))

(assert (=> d!1578543 m!5922156))

(assert (=> b!4912294 m!5922020))

(assert (=> b!4912294 m!5922022))

(assert (=> b!4912294 m!5922020))

(assert (=> b!4912294 m!5922022))

(assert (=> b!4912294 m!5922026))

(assert (=> b!4912294 m!5922168))

(assert (=> b!4912165 d!1578543))

(declare-fun d!1578551 () Bool)

(declare-fun lt!2016718 () Int)

(assert (=> d!1578551 (>= lt!2016718 0)))

(declare-fun e!3070416 () Int)

(assert (=> d!1578551 (= lt!2016718 e!3070416)))

(declare-fun c!834980 () Bool)

(assert (=> d!1578551 (= c!834980 (is-Nil!56593 Nil!56593))))

(assert (=> d!1578551 (= (size!37370 Nil!56593) lt!2016718)))

(declare-fun b!4912295 () Bool)

(assert (=> b!4912295 (= e!3070416 0)))

(declare-fun b!4912296 () Bool)

(assert (=> b!4912296 (= e!3070416 (+ 1 (size!37370 (t!367103 Nil!56593))))))

(assert (= (and d!1578551 c!834980) b!4912295))

(assert (= (and d!1578551 (not c!834980)) b!4912296))

(declare-fun m!5922198 () Bool)

(assert (=> b!4912296 m!5922198))

(assert (=> b!4912165 d!1578551))

(declare-fun bs!1177558 () Bool)

(declare-fun d!1578553 () Bool)

(assert (= bs!1177558 (and d!1578553 b!4912163)))

(declare-fun lambda!244793 () Int)

(assert (=> bs!1177558 (= lambda!244793 lambda!244783)))

(assert (=> d!1578553 true))

(assert (=> d!1578553 (< (dynLambda!22978 order!25943 (toChars!11067 (transformation!8259 rule!164))) (dynLambda!22977 order!25941 lambda!244793))))

(assert (=> d!1578553 true))

(assert (=> d!1578553 (< (dynLambda!22976 order!25939 (toValue!11208 (transformation!8259 rule!164))) (dynLambda!22977 order!25941 lambda!244793))))

(assert (=> d!1578553 (= (semiInverseModEq!3660 (toChars!11067 (transformation!8259 rule!164)) (toValue!11208 (transformation!8259 rule!164))) (Forall!1754 lambda!244793))))

(declare-fun bs!1177559 () Bool)

(assert (= bs!1177559 d!1578553))

(declare-fun m!5922200 () Bool)

(assert (=> bs!1177559 m!5922200))

(assert (=> b!4912165 d!1578553))

(declare-fun b!4912336 () Bool)

(declare-fun e!3070445 () Bool)

(declare-fun e!3070446 () Bool)

(assert (=> b!4912336 (= e!3070445 e!3070446)))

(declare-fun res!2098417 () Bool)

(assert (=> b!4912336 (=> res!2098417 e!3070446)))

(declare-fun lt!2016794 () tuple2!60992)

(assert (=> b!4912336 (= res!2098417 (isEmpty!30528 (_1!33799 lt!2016794)))))

(declare-fun b!4912337 () Bool)

(declare-fun e!3070443 () Unit!146877)

(declare-fun Unit!146883 () Unit!146877)

(assert (=> b!4912337 (= e!3070443 Unit!146883)))

(declare-fun lt!2016786 () Unit!146877)

(declare-fun call!341163 () Unit!146877)

(assert (=> b!4912337 (= lt!2016786 call!341163)))

(declare-fun call!341159 () Bool)

(assert (=> b!4912337 call!341159))

(declare-fun lt!2016784 () Unit!146877)

(assert (=> b!4912337 (= lt!2016784 lt!2016786)))

(declare-fun lt!2016802 () Unit!146877)

(declare-fun call!341160 () Unit!146877)

(assert (=> b!4912337 (= lt!2016802 call!341160)))

(assert (=> b!4912337 (= lt!2016632 Nil!56593)))

(declare-fun lt!2016792 () Unit!146877)

(assert (=> b!4912337 (= lt!2016792 lt!2016802)))

(assert (=> b!4912337 false))

(declare-fun bm!341152 () Bool)

(declare-fun isPrefix!4937 (List!56717 List!56717) Bool)

(assert (=> bm!341152 (= call!341159 (isPrefix!4937 lt!2016632 lt!2016632))))

(declare-fun bm!341153 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1096 (List!56717 List!56717 List!56717) Unit!146877)

(assert (=> bm!341153 (= call!341160 (lemmaIsPrefixSameLengthThenSameList!1096 lt!2016632 Nil!56593 lt!2016632))))

(declare-fun bm!341154 () Bool)

(declare-fun call!341157 () C!26866)

(declare-fun head!10497 (List!56717) C!26866)

(assert (=> bm!341154 (= call!341157 (head!10497 lt!2016632))))

(declare-fun b!4912338 () Bool)

(declare-fun Unit!146884 () Unit!146877)

(assert (=> b!4912338 (= e!3070443 Unit!146884)))

(declare-fun call!341158 () Regex!13334)

(declare-fun bm!341155 () Bool)

(declare-fun call!341161 () List!56717)

(declare-fun lt!2016801 () List!56717)

(declare-fun call!341164 () tuple2!60992)

(assert (=> bm!341155 (= call!341164 (findLongestMatchInner!1820 call!341158 lt!2016801 (+ (size!37370 Nil!56593) 1) call!341161 lt!2016632 (size!37370 lt!2016632)))))

(declare-fun bm!341156 () Bool)

(declare-fun lemmaIsPrefixRefl!3334 (List!56717 List!56717) Unit!146877)

(assert (=> bm!341156 (= call!341163 (lemmaIsPrefixRefl!3334 lt!2016632 lt!2016632))))

(declare-fun b!4912339 () Bool)

(assert (=> b!4912339 (= e!3070446 (>= (size!37370 (_1!33799 lt!2016794)) (size!37370 Nil!56593)))))

(declare-fun bm!341157 () Bool)

(declare-fun derivativeStep!3916 (Regex!13334 C!26866) Regex!13334)

(assert (=> bm!341157 (= call!341158 (derivativeStep!3916 (regex!8259 rule!164) call!341157))))

(declare-fun bm!341158 () Bool)

(declare-fun tail!9644 (List!56717) List!56717)

(assert (=> bm!341158 (= call!341161 (tail!9644 lt!2016632))))

(declare-fun b!4912340 () Bool)

(declare-fun e!3070441 () tuple2!60992)

(assert (=> b!4912340 (= e!3070441 (tuple2!60993 Nil!56593 lt!2016632))))

(declare-fun b!4912341 () Bool)

(declare-fun e!3070444 () tuple2!60992)

(assert (=> b!4912341 (= e!3070444 (tuple2!60993 Nil!56593 lt!2016632))))

(declare-fun b!4912342 () Bool)

(declare-fun c!834995 () Bool)

(declare-fun call!341162 () Bool)

(assert (=> b!4912342 (= c!834995 call!341162)))

(declare-fun lt!2016789 () Unit!146877)

(declare-fun lt!2016807 () Unit!146877)

(assert (=> b!4912342 (= lt!2016789 lt!2016807)))

(declare-fun lt!2016803 () C!26866)

(declare-fun lt!2016796 () List!56717)

(assert (=> b!4912342 (= (++!12284 (++!12284 Nil!56593 (Cons!56593 lt!2016803 Nil!56593)) lt!2016796) lt!2016632)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1368 (List!56717 C!26866 List!56717 List!56717) Unit!146877)

(assert (=> b!4912342 (= lt!2016807 (lemmaMoveElementToOtherListKeepsConcatEq!1368 Nil!56593 lt!2016803 lt!2016796 lt!2016632))))

(assert (=> b!4912342 (= lt!2016796 (tail!9644 lt!2016632))))

(assert (=> b!4912342 (= lt!2016803 (head!10497 lt!2016632))))

(declare-fun lt!2016799 () Unit!146877)

(declare-fun lt!2016798 () Unit!146877)

(assert (=> b!4912342 (= lt!2016799 lt!2016798)))

(declare-fun getSuffix!2925 (List!56717 List!56717) List!56717)

(assert (=> b!4912342 (isPrefix!4937 (++!12284 Nil!56593 (Cons!56593 (head!10497 (getSuffix!2925 lt!2016632 Nil!56593)) Nil!56593)) lt!2016632)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!750 (List!56717 List!56717) Unit!146877)

(assert (=> b!4912342 (= lt!2016798 (lemmaAddHeadSuffixToPrefixStillPrefix!750 Nil!56593 lt!2016632))))

(declare-fun lt!2016787 () Unit!146877)

(declare-fun lt!2016811 () Unit!146877)

(assert (=> b!4912342 (= lt!2016787 lt!2016811)))

(assert (=> b!4912342 (= lt!2016811 (lemmaAddHeadSuffixToPrefixStillPrefix!750 Nil!56593 lt!2016632))))

(assert (=> b!4912342 (= lt!2016801 (++!12284 Nil!56593 (Cons!56593 (head!10497 lt!2016632) Nil!56593)))))

(declare-fun lt!2016806 () Unit!146877)

(assert (=> b!4912342 (= lt!2016806 e!3070443)))

(declare-fun c!834996 () Bool)

(assert (=> b!4912342 (= c!834996 (= (size!37370 Nil!56593) (size!37370 lt!2016632)))))

(declare-fun lt!2016810 () Unit!146877)

(declare-fun lt!2016795 () Unit!146877)

(assert (=> b!4912342 (= lt!2016810 lt!2016795)))

(assert (=> b!4912342 (<= (size!37370 Nil!56593) (size!37370 lt!2016632))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!662 (List!56717 List!56717) Unit!146877)

(assert (=> b!4912342 (= lt!2016795 (lemmaIsPrefixThenSmallerEqSize!662 Nil!56593 lt!2016632))))

(declare-fun e!3070439 () tuple2!60992)

(declare-fun e!3070440 () tuple2!60992)

(assert (=> b!4912342 (= e!3070439 e!3070440)))

(declare-fun b!4912343 () Bool)

(declare-fun lt!2016793 () tuple2!60992)

(assert (=> b!4912343 (= e!3070441 lt!2016793)))

(declare-fun d!1578555 () Bool)

(assert (=> d!1578555 e!3070445))

(declare-fun res!2098418 () Bool)

(assert (=> d!1578555 (=> (not res!2098418) (not e!3070445))))

(assert (=> d!1578555 (= res!2098418 (= (++!12284 (_1!33799 lt!2016794) (_2!33799 lt!2016794)) lt!2016632))))

(declare-fun e!3070442 () tuple2!60992)

(assert (=> d!1578555 (= lt!2016794 e!3070442)))

(declare-fun c!834993 () Bool)

(declare-fun lostCause!1124 (Regex!13334) Bool)

(assert (=> d!1578555 (= c!834993 (lostCause!1124 (regex!8259 rule!164)))))

(declare-fun lt!2016805 () Unit!146877)

(declare-fun Unit!146885 () Unit!146877)

(assert (=> d!1578555 (= lt!2016805 Unit!146885)))

(assert (=> d!1578555 (= (getSuffix!2925 lt!2016632 Nil!56593) lt!2016632)))

(declare-fun lt!2016809 () Unit!146877)

(declare-fun lt!2016804 () Unit!146877)

(assert (=> d!1578555 (= lt!2016809 lt!2016804)))

(declare-fun lt!2016785 () List!56717)

(assert (=> d!1578555 (= lt!2016632 lt!2016785)))

(declare-fun lemmaSamePrefixThenSameSuffix!2341 (List!56717 List!56717 List!56717 List!56717 List!56717) Unit!146877)

(assert (=> d!1578555 (= lt!2016804 (lemmaSamePrefixThenSameSuffix!2341 Nil!56593 lt!2016632 Nil!56593 lt!2016785 lt!2016632))))

(assert (=> d!1578555 (= lt!2016785 (getSuffix!2925 lt!2016632 Nil!56593))))

(declare-fun lt!2016800 () Unit!146877)

(declare-fun lt!2016790 () Unit!146877)

(assert (=> d!1578555 (= lt!2016800 lt!2016790)))

(assert (=> d!1578555 (isPrefix!4937 Nil!56593 (++!12284 Nil!56593 lt!2016632))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3161 (List!56717 List!56717) Unit!146877)

(assert (=> d!1578555 (= lt!2016790 (lemmaConcatTwoListThenFirstIsPrefix!3161 Nil!56593 lt!2016632))))

(assert (=> d!1578555 (validRegex!5925 (regex!8259 rule!164))))

(assert (=> d!1578555 (= (findLongestMatchInner!1820 (regex!8259 rule!164) Nil!56593 (size!37370 Nil!56593) lt!2016632 lt!2016632 (size!37370 lt!2016632)) lt!2016794)))

(declare-fun b!4912344 () Bool)

(assert (=> b!4912344 (= e!3070442 (tuple2!60993 Nil!56593 lt!2016632))))

(declare-fun b!4912345 () Bool)

(assert (=> b!4912345 (= e!3070440 call!341164)))

(declare-fun bm!341159 () Bool)

(declare-fun nullable!4598 (Regex!13334) Bool)

(assert (=> bm!341159 (= call!341162 (nullable!4598 (regex!8259 rule!164)))))

(declare-fun b!4912346 () Bool)

(assert (=> b!4912346 (= e!3070442 e!3070439)))

(declare-fun c!834997 () Bool)

(assert (=> b!4912346 (= c!834997 (= (size!37370 Nil!56593) (size!37370 lt!2016632)))))

(declare-fun b!4912347 () Bool)

(assert (=> b!4912347 (= e!3070444 (tuple2!60993 Nil!56593 Nil!56593))))

(declare-fun b!4912348 () Bool)

(assert (=> b!4912348 (= e!3070440 e!3070441)))

(assert (=> b!4912348 (= lt!2016793 call!341164)))

(declare-fun c!834998 () Bool)

(assert (=> b!4912348 (= c!834998 (isEmpty!30528 (_1!33799 lt!2016793)))))

(declare-fun b!4912349 () Bool)

(declare-fun c!834994 () Bool)

(assert (=> b!4912349 (= c!834994 call!341162)))

(declare-fun lt!2016791 () Unit!146877)

(declare-fun lt!2016797 () Unit!146877)

(assert (=> b!4912349 (= lt!2016791 lt!2016797)))

(assert (=> b!4912349 (= lt!2016632 Nil!56593)))

(assert (=> b!4912349 (= lt!2016797 call!341160)))

(declare-fun lt!2016788 () Unit!146877)

(declare-fun lt!2016808 () Unit!146877)

(assert (=> b!4912349 (= lt!2016788 lt!2016808)))

(assert (=> b!4912349 call!341159))

(assert (=> b!4912349 (= lt!2016808 call!341163)))

(assert (=> b!4912349 (= e!3070439 e!3070444)))

(assert (= (and d!1578555 c!834993) b!4912344))

(assert (= (and d!1578555 (not c!834993)) b!4912346))

(assert (= (and b!4912346 c!834997) b!4912349))

(assert (= (and b!4912346 (not c!834997)) b!4912342))

(assert (= (and b!4912349 c!834994) b!4912347))

(assert (= (and b!4912349 (not c!834994)) b!4912341))

(assert (= (and b!4912342 c!834996) b!4912337))

(assert (= (and b!4912342 (not c!834996)) b!4912338))

(assert (= (and b!4912342 c!834995) b!4912348))

(assert (= (and b!4912342 (not c!834995)) b!4912345))

(assert (= (and b!4912348 c!834998) b!4912340))

(assert (= (and b!4912348 (not c!834998)) b!4912343))

(assert (= (or b!4912348 b!4912345) bm!341154))

(assert (= (or b!4912348 b!4912345) bm!341158))

(assert (= (or b!4912348 b!4912345) bm!341157))

(assert (= (or b!4912348 b!4912345) bm!341155))

(assert (= (or b!4912349 b!4912337) bm!341152))

(assert (= (or b!4912349 b!4912337) bm!341156))

(assert (= (or b!4912349 b!4912337) bm!341153))

(assert (= (or b!4912349 b!4912342) bm!341159))

(assert (= (and d!1578555 res!2098418) b!4912336))

(assert (= (and b!4912336 (not res!2098417)) b!4912339))

(declare-fun m!5922224 () Bool)

(assert (=> bm!341157 m!5922224))

(declare-fun m!5922226 () Bool)

(assert (=> b!4912342 m!5922226))

(assert (=> b!4912342 m!5922022))

(declare-fun m!5922228 () Bool)

(assert (=> b!4912342 m!5922228))

(declare-fun m!5922230 () Bool)

(assert (=> b!4912342 m!5922230))

(declare-fun m!5922232 () Bool)

(assert (=> b!4912342 m!5922232))

(declare-fun m!5922234 () Bool)

(assert (=> b!4912342 m!5922234))

(declare-fun m!5922236 () Bool)

(assert (=> b!4912342 m!5922236))

(declare-fun m!5922238 () Bool)

(assert (=> b!4912342 m!5922238))

(declare-fun m!5922240 () Bool)

(assert (=> b!4912342 m!5922240))

(assert (=> b!4912342 m!5922234))

(declare-fun m!5922242 () Bool)

(assert (=> b!4912342 m!5922242))

(declare-fun m!5922244 () Bool)

(assert (=> b!4912342 m!5922244))

(assert (=> b!4912342 m!5922240))

(declare-fun m!5922246 () Bool)

(assert (=> b!4912342 m!5922246))

(assert (=> b!4912342 m!5922020))

(assert (=> b!4912342 m!5922226))

(declare-fun m!5922248 () Bool)

(assert (=> b!4912342 m!5922248))

(declare-fun m!5922250 () Bool)

(assert (=> bm!341159 m!5922250))

(declare-fun m!5922252 () Bool)

(assert (=> bm!341153 m!5922252))

(declare-fun m!5922254 () Bool)

(assert (=> b!4912336 m!5922254))

(assert (=> bm!341155 m!5922022))

(declare-fun m!5922256 () Bool)

(assert (=> bm!341155 m!5922256))

(declare-fun m!5922258 () Bool)

(assert (=> bm!341156 m!5922258))

(assert (=> bm!341158 m!5922238))

(declare-fun m!5922260 () Bool)

(assert (=> b!4912339 m!5922260))

(assert (=> b!4912339 m!5922020))

(assert (=> bm!341154 m!5922228))

(declare-fun m!5922262 () Bool)

(assert (=> bm!341152 m!5922262))

(declare-fun m!5922264 () Bool)

(assert (=> d!1578555 m!5922264))

(declare-fun m!5922266 () Bool)

(assert (=> d!1578555 m!5922266))

(assert (=> d!1578555 m!5922196))

(declare-fun m!5922268 () Bool)

(assert (=> d!1578555 m!5922268))

(declare-fun m!5922270 () Bool)

(assert (=> d!1578555 m!5922270))

(declare-fun m!5922272 () Bool)

(assert (=> d!1578555 m!5922272))

(assert (=> d!1578555 m!5922268))

(declare-fun m!5922274 () Bool)

(assert (=> d!1578555 m!5922274))

(assert (=> d!1578555 m!5922240))

(declare-fun m!5922276 () Bool)

(assert (=> b!4912348 m!5922276))

(assert (=> b!4912165 d!1578555))

(declare-fun d!1578569 () Bool)

(assert (=> d!1578569 (= (isEmpty!30528 (_1!33799 lt!2016624)) (is-Nil!56593 (_1!33799 lt!2016624)))))

(assert (=> b!4912165 d!1578569))

(declare-fun d!1578571 () Bool)

(assert (=> d!1578571 (= (inv!73191 (tag!9123 rule!164)) (= (mod (str.len (value!264487 (tag!9123 rule!164))) 2) 0))))

(assert (=> b!4912166 d!1578571))

(declare-fun d!1578573 () Bool)

(declare-fun res!2098421 () Bool)

(declare-fun e!3070449 () Bool)

(assert (=> d!1578573 (=> (not res!2098421) (not e!3070449))))

(assert (=> d!1578573 (= res!2098421 (semiInverseModEq!3660 (toChars!11067 (transformation!8259 rule!164)) (toValue!11208 (transformation!8259 rule!164))))))

(assert (=> d!1578573 (= (inv!73197 (transformation!8259 rule!164)) e!3070449)))

(declare-fun b!4912352 () Bool)

(assert (=> b!4912352 (= e!3070449 (equivClasses!3510 (toChars!11067 (transformation!8259 rule!164)) (toValue!11208 (transformation!8259 rule!164))))))

(assert (= (and d!1578573 res!2098421) b!4912352))

(assert (=> d!1578573 m!5922018))

(assert (=> b!4912352 m!5922184))

(assert (=> b!4912166 d!1578573))

(declare-fun d!1578575 () Bool)

(assert (=> d!1578575 (= (apply!13601 (transformation!8259 rule!164) lt!2016628) (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) lt!2016628))))

(declare-fun b_lambda!196095 () Bool)

(assert (=> (not b_lambda!196095) (not d!1578575)))

(declare-fun t!367115 () Bool)

(declare-fun tb!260119 () Bool)

(assert (=> (and b!4912160 (= (toValue!11208 (transformation!8259 rule!164)) (toValue!11208 (transformation!8259 rule!164))) t!367115) tb!260119))

(declare-fun result!324068 () Bool)

(assert (=> tb!260119 (= result!324068 (inv!21 (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) lt!2016628)))))

(declare-fun m!5922278 () Bool)

(assert (=> tb!260119 m!5922278))

(assert (=> d!1578575 t!367115))

(declare-fun b_and!346841 () Bool)

(assert (= b_and!346833 (and (=> t!367115 result!324068) b_and!346841)))

(declare-fun m!5922280 () Bool)

(assert (=> d!1578575 m!5922280))

(assert (=> b!4912155 d!1578575))

(declare-fun b!4912359 () Bool)

(declare-fun e!3070455 () Bool)

(assert (=> b!4912359 (= e!3070455 true)))

(declare-fun d!1578577 () Bool)

(assert (=> d!1578577 e!3070455))

(assert (= d!1578577 b!4912359))

(declare-fun order!25953 () Int)

(declare-fun lambda!244799 () Int)

(declare-fun dynLambda!22985 (Int Int) Int)

(assert (=> b!4912359 (< (dynLambda!22976 order!25939 (toValue!11208 (transformation!8259 rule!164))) (dynLambda!22985 order!25953 lambda!244799))))

(assert (=> b!4912359 (< (dynLambda!22978 order!25943 (toChars!11067 (transformation!8259 rule!164))) (dynLambda!22985 order!25953 lambda!244799))))

(assert (=> d!1578577 (= (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) (_1!33797 lt!2016620)) (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) lt!2016628))))

(declare-fun lt!2016814 () Unit!146877)

(declare-fun Forall2of!471 (Int BalanceConc!29084 BalanceConc!29084) Unit!146877)

(assert (=> d!1578577 (= lt!2016814 (Forall2of!471 lambda!244799 (_1!33797 lt!2016620) lt!2016628))))

(assert (=> d!1578577 (= (list!17869 (_1!33797 lt!2016620)) (list!17869 lt!2016628))))

(assert (=> d!1578577 (= (lemmaEqSameImage!1135 (transformation!8259 rule!164) (_1!33797 lt!2016620) lt!2016628) lt!2016814)))

(declare-fun b_lambda!196097 () Bool)

(assert (=> (not b_lambda!196097) (not d!1578577)))

(assert (=> d!1578577 t!367109))

(declare-fun b_and!346843 () Bool)

(assert (= b_and!346841 (and (=> t!367109 result!324058) b_and!346843)))

(declare-fun b_lambda!196099 () Bool)

(assert (=> (not b_lambda!196099) (not d!1578577)))

(assert (=> d!1578577 t!367115))

(declare-fun b_and!346845 () Bool)

(assert (= b_and!346843 (and (=> t!367115 result!324068) b_and!346845)))

(assert (=> d!1578577 m!5921976))

(assert (=> d!1578577 m!5922178))

(assert (=> d!1578577 m!5922010))

(assert (=> d!1578577 m!5922280))

(declare-fun m!5922282 () Bool)

(assert (=> d!1578577 m!5922282))

(assert (=> b!4912155 d!1578577))

(declare-fun d!1578579 () Bool)

(assert (=> d!1578579 (= (get!19598 lt!2016621) (v!50109 lt!2016621))))

(assert (=> b!4912164 d!1578579))

(declare-fun d!1578581 () Bool)

(assert (=> d!1578581 (= (list!17869 lt!2016628) (list!17871 (c!834967 lt!2016628)))))

(declare-fun bs!1177563 () Bool)

(assert (= bs!1177563 d!1578581))

(declare-fun m!5922284 () Bool)

(assert (=> bs!1177563 m!5922284))

(assert (=> b!4912153 d!1578581))

(declare-fun d!1578583 () Bool)

(declare-fun res!2098428 () Bool)

(declare-fun e!3070458 () Bool)

(assert (=> d!1578583 (=> (not res!2098428) (not e!3070458))))

(assert (=> d!1578583 (= res!2098428 (validRegex!5925 (regex!8259 rule!164)))))

(assert (=> d!1578583 (= (ruleValid!3756 thiss!15943 rule!164) e!3070458)))

(declare-fun b!4912364 () Bool)

(declare-fun res!2098429 () Bool)

(assert (=> b!4912364 (=> (not res!2098429) (not e!3070458))))

(assert (=> b!4912364 (= res!2098429 (not (nullable!4598 (regex!8259 rule!164))))))

(declare-fun b!4912365 () Bool)

(assert (=> b!4912365 (= e!3070458 (not (= (tag!9123 rule!164) (String!64289 ""))))))

(assert (= (and d!1578583 res!2098428) b!4912364))

(assert (= (and b!4912364 res!2098429) b!4912365))

(assert (=> d!1578583 m!5922196))

(assert (=> b!4912364 m!5922250))

(assert (=> b!4912154 d!1578583))

(declare-fun d!1578585 () Bool)

(assert (=> d!1578585 (= (get!19597 lt!2016634) (v!50108 lt!2016634))))

(assert (=> b!4912152 d!1578585))

(declare-fun d!1578587 () Bool)

(declare-fun choose!35945 (Int) Bool)

(assert (=> d!1578587 (= (Forall!1754 lambda!244783) (choose!35945 lambda!244783))))

(declare-fun bs!1177564 () Bool)

(assert (= bs!1177564 d!1578587))

(declare-fun m!5922286 () Bool)

(assert (=> bs!1177564 m!5922286))

(assert (=> b!4912163 d!1578587))

(declare-fun b!4912394 () Bool)

(declare-fun e!3070478 () Bool)

(declare-fun e!3070475 () Bool)

(assert (=> b!4912394 (= e!3070478 e!3070475)))

(declare-fun c!835007 () Bool)

(assert (=> b!4912394 (= c!835007 (is-EmptyLang!13334 (regex!8259 rule!164)))))

(declare-fun bm!341162 () Bool)

(declare-fun call!341167 () Bool)

(assert (=> bm!341162 (= call!341167 (isEmpty!30528 (_1!33799 lt!2016624)))))

(declare-fun d!1578589 () Bool)

(assert (=> d!1578589 e!3070478))

(declare-fun c!835005 () Bool)

(assert (=> d!1578589 (= c!835005 (is-EmptyExpr!13334 (regex!8259 rule!164)))))

(declare-fun lt!2016817 () Bool)

(declare-fun e!3070476 () Bool)

(assert (=> d!1578589 (= lt!2016817 e!3070476)))

(declare-fun c!835006 () Bool)

(assert (=> d!1578589 (= c!835006 (isEmpty!30528 (_1!33799 lt!2016624)))))

(assert (=> d!1578589 (validRegex!5925 (regex!8259 rule!164))))

(assert (=> d!1578589 (= (matchR!6599 (regex!8259 rule!164) (_1!33799 lt!2016624)) lt!2016817)))

(declare-fun b!4912395 () Bool)

(assert (=> b!4912395 (= e!3070476 (matchR!6599 (derivativeStep!3916 (regex!8259 rule!164) (head!10497 (_1!33799 lt!2016624))) (tail!9644 (_1!33799 lt!2016624))))))

(declare-fun b!4912396 () Bool)

(declare-fun res!2098449 () Bool)

(declare-fun e!3070474 () Bool)

(assert (=> b!4912396 (=> res!2098449 e!3070474)))

(declare-fun e!3070479 () Bool)

(assert (=> b!4912396 (= res!2098449 e!3070479)))

(declare-fun res!2098448 () Bool)

(assert (=> b!4912396 (=> (not res!2098448) (not e!3070479))))

(assert (=> b!4912396 (= res!2098448 lt!2016817)))

(declare-fun b!4912397 () Bool)

(assert (=> b!4912397 (= e!3070475 (not lt!2016817))))

(declare-fun b!4912398 () Bool)

(assert (=> b!4912398 (= e!3070478 (= lt!2016817 call!341167))))

(declare-fun b!4912399 () Bool)

(assert (=> b!4912399 (= e!3070476 (nullable!4598 (regex!8259 rule!164)))))

(declare-fun b!4912400 () Bool)

(assert (=> b!4912400 (= e!3070479 (= (head!10497 (_1!33799 lt!2016624)) (c!834966 (regex!8259 rule!164))))))

(declare-fun b!4912401 () Bool)

(declare-fun res!2098451 () Bool)

(assert (=> b!4912401 (=> (not res!2098451) (not e!3070479))))

(assert (=> b!4912401 (= res!2098451 (isEmpty!30528 (tail!9644 (_1!33799 lt!2016624))))))

(declare-fun b!4912402 () Bool)

(declare-fun res!2098446 () Bool)

(declare-fun e!3070477 () Bool)

(assert (=> b!4912402 (=> res!2098446 e!3070477)))

(assert (=> b!4912402 (= res!2098446 (not (isEmpty!30528 (tail!9644 (_1!33799 lt!2016624)))))))

(declare-fun b!4912403 () Bool)

(declare-fun res!2098453 () Bool)

(assert (=> b!4912403 (=> res!2098453 e!3070474)))

(assert (=> b!4912403 (= res!2098453 (not (is-ElementMatch!13334 (regex!8259 rule!164))))))

(assert (=> b!4912403 (= e!3070475 e!3070474)))

(declare-fun b!4912404 () Bool)

(declare-fun e!3070473 () Bool)

(assert (=> b!4912404 (= e!3070474 e!3070473)))

(declare-fun res!2098452 () Bool)

(assert (=> b!4912404 (=> (not res!2098452) (not e!3070473))))

(assert (=> b!4912404 (= res!2098452 (not lt!2016817))))

(declare-fun b!4912405 () Bool)

(assert (=> b!4912405 (= e!3070473 e!3070477)))

(declare-fun res!2098450 () Bool)

(assert (=> b!4912405 (=> res!2098450 e!3070477)))

(assert (=> b!4912405 (= res!2098450 call!341167)))

(declare-fun b!4912406 () Bool)

(declare-fun res!2098447 () Bool)

(assert (=> b!4912406 (=> (not res!2098447) (not e!3070479))))

(assert (=> b!4912406 (= res!2098447 (not call!341167))))

(declare-fun b!4912407 () Bool)

(assert (=> b!4912407 (= e!3070477 (not (= (head!10497 (_1!33799 lt!2016624)) (c!834966 (regex!8259 rule!164)))))))

(assert (= (and d!1578589 c!835006) b!4912399))

(assert (= (and d!1578589 (not c!835006)) b!4912395))

(assert (= (and d!1578589 c!835005) b!4912398))

(assert (= (and d!1578589 (not c!835005)) b!4912394))

(assert (= (and b!4912394 c!835007) b!4912397))

(assert (= (and b!4912394 (not c!835007)) b!4912403))

(assert (= (and b!4912403 (not res!2098453)) b!4912396))

(assert (= (and b!4912396 res!2098448) b!4912406))

(assert (= (and b!4912406 res!2098447) b!4912401))

(assert (= (and b!4912401 res!2098451) b!4912400))

(assert (= (and b!4912396 (not res!2098449)) b!4912404))

(assert (= (and b!4912404 res!2098452) b!4912405))

(assert (= (and b!4912405 (not res!2098450)) b!4912402))

(assert (= (and b!4912402 (not res!2098446)) b!4912407))

(assert (= (or b!4912398 b!4912405 b!4912406) bm!341162))

(assert (=> b!4912399 m!5922250))

(declare-fun m!5922288 () Bool)

(assert (=> b!4912395 m!5922288))

(assert (=> b!4912395 m!5922288))

(declare-fun m!5922290 () Bool)

(assert (=> b!4912395 m!5922290))

(declare-fun m!5922292 () Bool)

(assert (=> b!4912395 m!5922292))

(assert (=> b!4912395 m!5922290))

(assert (=> b!4912395 m!5922292))

(declare-fun m!5922294 () Bool)

(assert (=> b!4912395 m!5922294))

(assert (=> b!4912401 m!5922292))

(assert (=> b!4912401 m!5922292))

(declare-fun m!5922296 () Bool)

(assert (=> b!4912401 m!5922296))

(assert (=> b!4912400 m!5922288))

(assert (=> d!1578589 m!5922028))

(assert (=> d!1578589 m!5922196))

(assert (=> bm!341162 m!5922028))

(assert (=> b!4912407 m!5922288))

(assert (=> b!4912402 m!5922292))

(assert (=> b!4912402 m!5922292))

(assert (=> b!4912402 m!5922296))

(assert (=> b!4912161 d!1578589))

(declare-fun d!1578591 () Bool)

(assert (=> d!1578591 (= (list!17869 (_2!33798 lt!2016618)) (list!17871 (c!834967 (_2!33798 lt!2016618))))))

(declare-fun bs!1177565 () Bool)

(assert (= bs!1177565 d!1578591))

(declare-fun m!5922298 () Bool)

(assert (=> bs!1177565 m!5922298))

(assert (=> b!4912162 d!1578591))

(declare-fun d!1578593 () Bool)

(declare-fun lt!2016820 () Bool)

(assert (=> d!1578593 (= lt!2016820 (isEmpty!30528 (list!17869 (_1!33797 lt!2016620))))))

(declare-fun isEmpty!30533 (Conc!14827) Bool)

(assert (=> d!1578593 (= lt!2016820 (isEmpty!30533 (c!834967 (_1!33797 lt!2016620))))))

(assert (=> d!1578593 (= (isEmpty!30527 (_1!33797 lt!2016620)) lt!2016820)))

(declare-fun bs!1177566 () Bool)

(assert (= bs!1177566 d!1578593))

(assert (=> bs!1177566 m!5921976))

(assert (=> bs!1177566 m!5921976))

(declare-fun m!5922300 () Bool)

(assert (=> bs!1177566 m!5922300))

(declare-fun m!5922302 () Bool)

(assert (=> bs!1177566 m!5922302))

(assert (=> b!4912159 d!1578593))

(declare-fun d!1578595 () Bool)

(declare-fun lt!2016823 () tuple2!60988)

(assert (=> d!1578595 (= (tuple2!60993 (list!17869 (_1!33797 lt!2016823)) (list!17869 (_2!33797 lt!2016823))) (findLongestMatch!1687 (regex!8259 rule!164) (list!17869 input!1509)))))

(declare-fun choose!35947 (Regex!13334 BalanceConc!29084) tuple2!60988)

(assert (=> d!1578595 (= lt!2016823 (choose!35947 (regex!8259 rule!164) input!1509))))

(assert (=> d!1578595 (validRegex!5925 (regex!8259 rule!164))))

(assert (=> d!1578595 (= (findLongestMatchWithZipperSequence!347 (regex!8259 rule!164) input!1509) lt!2016823)))

(declare-fun bs!1177567 () Bool)

(assert (= bs!1177567 d!1578595))

(assert (=> bs!1177567 m!5922030))

(declare-fun m!5922304 () Bool)

(assert (=> bs!1177567 m!5922304))

(assert (=> bs!1177567 m!5922030))

(declare-fun m!5922306 () Bool)

(assert (=> bs!1177567 m!5922306))

(assert (=> bs!1177567 m!5922196))

(declare-fun m!5922308 () Bool)

(assert (=> bs!1177567 m!5922308))

(declare-fun m!5922310 () Bool)

(assert (=> bs!1177567 m!5922310))

(assert (=> b!4912159 d!1578595))

(declare-fun e!3070485 () Bool)

(declare-fun tp!1381223 () Bool)

(declare-fun tp!1381221 () Bool)

(declare-fun b!4912416 () Bool)

(assert (=> b!4912416 (= e!3070485 (and (inv!73196 (left!41249 (c!834967 input!1509))) tp!1381223 (inv!73196 (right!41579 (c!834967 input!1509))) tp!1381221))))

(declare-fun b!4912418 () Bool)

(declare-fun e!3070484 () Bool)

(declare-fun tp!1381222 () Bool)

(assert (=> b!4912418 (= e!3070484 tp!1381222)))

(declare-fun b!4912417 () Bool)

(declare-fun inv!73204 (IArray!29715) Bool)

(assert (=> b!4912417 (= e!3070485 (and (inv!73204 (xs!18143 (c!834967 input!1509))) e!3070484))))

(assert (=> b!4912158 (= tp!1381196 (and (inv!73196 (c!834967 input!1509)) e!3070485))))

(assert (= (and b!4912158 (is-Node!14827 (c!834967 input!1509))) b!4912416))

(assert (= b!4912417 b!4912418))

(assert (= (and b!4912158 (is-Leaf!24674 (c!834967 input!1509))) b!4912417))

(declare-fun m!5922312 () Bool)

(assert (=> b!4912416 m!5922312))

(declare-fun m!5922314 () Bool)

(assert (=> b!4912416 m!5922314))

(declare-fun m!5922316 () Bool)

(assert (=> b!4912417 m!5922316))

(assert (=> b!4912158 m!5922014))

(declare-fun b!4912432 () Bool)

(declare-fun e!3070488 () Bool)

(declare-fun tp!1381236 () Bool)

(declare-fun tp!1381237 () Bool)

(assert (=> b!4912432 (= e!3070488 (and tp!1381236 tp!1381237))))

(assert (=> b!4912166 (= tp!1381197 e!3070488)))

(declare-fun b!4912429 () Bool)

(declare-fun tp_is_empty!35873 () Bool)

(assert (=> b!4912429 (= e!3070488 tp_is_empty!35873)))

(declare-fun b!4912431 () Bool)

(declare-fun tp!1381235 () Bool)

(assert (=> b!4912431 (= e!3070488 tp!1381235)))

(declare-fun b!4912430 () Bool)

(declare-fun tp!1381234 () Bool)

(declare-fun tp!1381238 () Bool)

(assert (=> b!4912430 (= e!3070488 (and tp!1381234 tp!1381238))))

(assert (= (and b!4912166 (is-ElementMatch!13334 (regex!8259 rule!164))) b!4912429))

(assert (= (and b!4912166 (is-Concat!21903 (regex!8259 rule!164))) b!4912430))

(assert (= (and b!4912166 (is-Star!13334 (regex!8259 rule!164))) b!4912431))

(assert (= (and b!4912166 (is-Union!13334 (regex!8259 rule!164))) b!4912432))

(declare-fun b_lambda!196101 () Bool)

(assert (= b_lambda!196099 (or (and b!4912160 b_free!132007) b_lambda!196101)))

(declare-fun b_lambda!196103 () Bool)

(assert (= b_lambda!196085 (or b!4912163 b_lambda!196103)))

(declare-fun bs!1177568 () Bool)

(declare-fun d!1578597 () Bool)

(assert (= bs!1177568 (and d!1578597 b!4912163)))

(assert (=> bs!1177568 (= (dynLambda!22983 lambda!244783 lt!2016628) (= (list!17869 (dynLambda!22982 (toChars!11067 (transformation!8259 rule!164)) (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) lt!2016628))) (list!17869 lt!2016628)))))

(declare-fun b_lambda!196113 () Bool)

(assert (=> (not b_lambda!196113) (not bs!1177568)))

(declare-fun t!367117 () Bool)

(declare-fun tb!260121 () Bool)

(assert (=> (and b!4912160 (= (toChars!11067 (transformation!8259 rule!164)) (toChars!11067 (transformation!8259 rule!164))) t!367117) tb!260121))

(declare-fun e!3070489 () Bool)

(declare-fun b!4912433 () Bool)

(declare-fun tp!1381239 () Bool)

(assert (=> b!4912433 (= e!3070489 (and (inv!73196 (c!834967 (dynLambda!22982 (toChars!11067 (transformation!8259 rule!164)) (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) lt!2016628)))) tp!1381239))))

(declare-fun result!324074 () Bool)

(assert (=> tb!260121 (= result!324074 (and (inv!73194 (dynLambda!22982 (toChars!11067 (transformation!8259 rule!164)) (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) lt!2016628))) e!3070489))))

(assert (= tb!260121 b!4912433))

(declare-fun m!5922318 () Bool)

(assert (=> b!4912433 m!5922318))

(declare-fun m!5922320 () Bool)

(assert (=> tb!260121 m!5922320))

(assert (=> bs!1177568 t!367117))

(declare-fun b_and!346847 () Bool)

(assert (= b_and!346831 (and (=> t!367117 result!324074) b_and!346847)))

(declare-fun b_lambda!196115 () Bool)

(assert (=> (not b_lambda!196115) (not bs!1177568)))

(assert (=> bs!1177568 t!367115))

(declare-fun b_and!346849 () Bool)

(assert (= b_and!346845 (and (=> t!367115 result!324068) b_and!346849)))

(declare-fun m!5922322 () Bool)

(assert (=> bs!1177568 m!5922322))

(declare-fun m!5922324 () Bool)

(assert (=> bs!1177568 m!5922324))

(assert (=> bs!1177568 m!5922280))

(assert (=> bs!1177568 m!5922010))

(assert (=> bs!1177568 m!5922280))

(assert (=> bs!1177568 m!5922322))

(assert (=> d!1578529 d!1578597))

(declare-fun b_lambda!196105 () Bool)

(assert (= b_lambda!196083 (or b!4912163 b_lambda!196105)))

(declare-fun bs!1177569 () Bool)

(declare-fun d!1578599 () Bool)

(assert (= bs!1177569 (and d!1578599 b!4912163)))

(assert (=> bs!1177569 (= (dynLambda!22983 lambda!244783 (_1!33797 lt!2016620)) (= (list!17869 (dynLambda!22982 (toChars!11067 (transformation!8259 rule!164)) (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) (_1!33797 lt!2016620)))) (list!17869 (_1!33797 lt!2016620))))))

(declare-fun b_lambda!196117 () Bool)

(assert (=> (not b_lambda!196117) (not bs!1177569)))

(declare-fun t!367119 () Bool)

(declare-fun tb!260123 () Bool)

(assert (=> (and b!4912160 (= (toChars!11067 (transformation!8259 rule!164)) (toChars!11067 (transformation!8259 rule!164))) t!367119) tb!260123))

(declare-fun e!3070490 () Bool)

(declare-fun tp!1381240 () Bool)

(declare-fun b!4912434 () Bool)

(assert (=> b!4912434 (= e!3070490 (and (inv!73196 (c!834967 (dynLambda!22982 (toChars!11067 (transformation!8259 rule!164)) (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) (_1!33797 lt!2016620))))) tp!1381240))))

(declare-fun result!324076 () Bool)

(assert (=> tb!260123 (= result!324076 (and (inv!73194 (dynLambda!22982 (toChars!11067 (transformation!8259 rule!164)) (dynLambda!22984 (toValue!11208 (transformation!8259 rule!164)) (_1!33797 lt!2016620)))) e!3070490))))

(assert (= tb!260123 b!4912434))

(declare-fun m!5922326 () Bool)

(assert (=> b!4912434 m!5922326))

(declare-fun m!5922328 () Bool)

(assert (=> tb!260123 m!5922328))

(assert (=> bs!1177569 t!367119))

(declare-fun b_and!346851 () Bool)

(assert (= b_and!346847 (and (=> t!367119 result!324076) b_and!346851)))

(declare-fun b_lambda!196119 () Bool)

(assert (=> (not b_lambda!196119) (not bs!1177569)))

(assert (=> bs!1177569 t!367109))

(declare-fun b_and!346853 () Bool)

(assert (= b_and!346849 (and (=> t!367109 result!324058) b_and!346853)))

(declare-fun m!5922330 () Bool)

(assert (=> bs!1177569 m!5922330))

(declare-fun m!5922332 () Bool)

(assert (=> bs!1177569 m!5922332))

(assert (=> bs!1177569 m!5922178))

(assert (=> bs!1177569 m!5921976))

(assert (=> bs!1177569 m!5922178))

(assert (=> bs!1177569 m!5922330))

(assert (=> d!1578523 d!1578599))

(declare-fun b_lambda!196107 () Bool)

(assert (= b_lambda!196087 (or (and b!4912160 b_free!132007) b_lambda!196107)))

(declare-fun b_lambda!196109 () Bool)

(assert (= b_lambda!196097 (or (and b!4912160 b_free!132007) b_lambda!196109)))

(declare-fun b_lambda!196111 () Bool)

(assert (= b_lambda!196095 (or (and b!4912160 b_free!132007) b_lambda!196111)))

(push 1)

(assert (not tb!260111))

(assert (not d!1578553))

(assert (not d!1578511))

(assert (not b!4912158))

(assert (not b!4912276))

(assert (not tb!260119))

(assert (not b!4912249))

(assert (not b!4912430))

(assert (not b_lambda!196111))

(assert (not bm!341152))

(assert (not b_lambda!196117))

(assert (not b!4912434))

(assert (not b!4912433))

(assert b_and!346851)

(assert (not b_lambda!196109))

(assert (not d!1578517))

(assert (not d!1578587))

(assert (not b!4912432))

(assert (not tb!260113))

(assert (not d!1578521))

(assert (not d!1578543))

(assert (not b!4912270))

(assert (not b!4912339))

(assert (not b!4912342))

(assert tp_is_empty!35873)

(assert (not d!1578525))

(assert (not bm!341155))

(assert (not b!4912395))

(assert (not bm!341162))

(assert (not d!1578583))

(assert (not b!4912236))

(assert (not b!4912417))

(assert (not b_lambda!196103))

(assert (not d!1578531))

(assert (not b!4912242))

(assert (not d!1578527))

(assert (not b!4912400))

(assert (not b!4912407))

(assert (not b!4912348))

(assert (not d!1578535))

(assert (not d!1578523))

(assert (not b!4912275))

(assert (not b_lambda!196107))

(assert (not b_lambda!196113))

(assert (not b!4912296))

(assert (not b_next!132799))

(assert (not d!1578591))

(assert (not d!1578555))

(assert (not d!1578539))

(assert (not b!4912402))

(assert (not b!4912274))

(assert (not b!4912289))

(assert (not d!1578519))

(assert (not b!4912251))

(assert (not bm!341159))

(assert (not b_lambda!196119))

(assert (not d!1578595))

(assert (not d!1578577))

(assert (not b!4912352))

(assert (not tb!260121))

(assert (not d!1578573))

(assert (not b!4912336))

(assert (not b_next!132797))

(assert (not d!1578589))

(assert (not b!4912364))

(assert (not b_lambda!196115))

(assert (not bm!341153))

(assert (not d!1578581))

(assert (not b!4912431))

(assert (not b!4912271))

(assert (not b!4912286))

(assert (not b!4912278))

(assert (not bm!341158))

(assert (not bm!341154))

(assert (not b_lambda!196101))

(assert (not d!1578529))

(assert (not d!1578593))

(assert (not b!4912418))

(assert (not bs!1177569))

(assert (not bm!341156))

(assert (not d!1578513))

(assert (not tb!260123))

(assert b_and!346853)

(assert (not b_lambda!196105))

(assert (not b!4912273))

(assert (not b!4912399))

(assert (not b!4912237))

(assert (not b!4912416))

(assert (not b!4912294))

(assert (not bs!1177568))

(assert (not b_lambda!196081))

(assert (not b!4912401))

(assert (not bm!341157))

(assert (not b!4912277))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346851)

(assert b_and!346853)

(assert (not b_next!132799))

(assert (not b_next!132797))

(check-sat)

(pop 1)

