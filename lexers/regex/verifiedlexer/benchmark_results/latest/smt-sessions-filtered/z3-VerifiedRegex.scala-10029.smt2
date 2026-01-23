; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525118 () Bool)

(assert start!525118)

(declare-fun b!4976524 () Bool)

(declare-fun b_free!132939 () Bool)

(declare-fun b_next!133729 () Bool)

(assert (=> b!4976524 (= b_free!132939 (not b_next!133729))))

(declare-fun tp!1395432 () Bool)

(declare-fun b_and!349351 () Bool)

(assert (=> b!4976524 (= tp!1395432 b_and!349351)))

(declare-fun b_free!132941 () Bool)

(declare-fun b_next!133731 () Bool)

(assert (=> b!4976524 (= b_free!132941 (not b_next!133731))))

(declare-fun tp!1395430 () Bool)

(declare-fun b_and!349353 () Bool)

(assert (=> b!4976524 (= tp!1395430 b_and!349353)))

(declare-fun b!4976518 () Bool)

(declare-fun e!3110219 () Bool)

(assert (=> b!4976518 (= e!3110219 false)))

(declare-fun lt!2055178 () Bool)

(declare-datatypes ((C!27536 0))(
  ( (C!27537 (val!23134 Int)) )
))
(declare-datatypes ((List!57616 0))(
  ( (Nil!57492) (Cons!57492 (h!63940 C!27536) (t!369628 List!57616)) )
))
(declare-datatypes ((IArray!30385 0))(
  ( (IArray!30386 (innerList!15250 List!57616)) )
))
(declare-datatypes ((Conc!15162 0))(
  ( (Node!15162 (left!41949 Conc!15162) (right!42279 Conc!15162) (csize!30554 Int) (cheight!15373 Int)) (Leaf!25192 (xs!18488 IArray!30385) (csize!30555 Int)) (Empty!15162) )
))
(declare-datatypes ((BalanceConc!29754 0))(
  ( (BalanceConc!29755 (c!849187 Conc!15162)) )
))
(declare-fun totalInput!520 () BalanceConc!29754)

(declare-fun input!1580 () BalanceConc!29754)

(declare-datatypes ((String!65473 0))(
  ( (String!65474 (value!269092 String)) )
))
(declare-datatypes ((List!57617 0))(
  ( (Nil!57493) (Cons!57493 (h!63941 (_ BitVec 16)) (t!369629 List!57617)) )
))
(declare-datatypes ((Regex!13643 0))(
  ( (ElementMatch!13643 (c!849188 C!27536)) (Concat!22363 (regOne!27798 Regex!13643) (regTwo!27798 Regex!13643)) (EmptyExpr!13643) (Star!13643 (reg!13972 Regex!13643)) (EmptyLang!13643) (Union!13643 (regOne!27799 Regex!13643) (regTwo!27799 Regex!13643)) )
))
(declare-datatypes ((TokenValue!8720 0))(
  ( (FloatLiteralValue!17440 (text!61485 List!57617)) (TokenValueExt!8719 (__x!34733 Int)) (Broken!43600 (value!269093 List!57617)) (Object!8843) (End!8720) (Def!8720) (Underscore!8720) (Match!8720) (Else!8720) (Error!8720) (Case!8720) (If!8720) (Extends!8720) (Abstract!8720) (Class!8720) (Val!8720) (DelimiterValue!17440 (del!8780 List!57617)) (KeywordValue!8726 (value!269094 List!57617)) (CommentValue!17440 (value!269095 List!57617)) (WhitespaceValue!17440 (value!269096 List!57617)) (IndentationValue!8720 (value!269097 List!57617)) (String!65475) (Int32!8720) (Broken!43601 (value!269098 List!57617)) (Boolean!8721) (Unit!148483) (OperatorValue!8723 (op!8780 List!57617)) (IdentifierValue!17440 (value!269099 List!57617)) (IdentifierValue!17441 (value!269100 List!57617)) (WhitespaceValue!17441 (value!269101 List!57617)) (True!17440) (False!17440) (Broken!43602 (value!269102 List!57617)) (Broken!43603 (value!269103 List!57617)) (True!17441) (RightBrace!8720) (RightBracket!8720) (Colon!8720) (Null!8720) (Comma!8720) (LeftBracket!8720) (False!17441) (LeftBrace!8720) (ImaginaryLiteralValue!8720 (text!61486 List!57617)) (StringLiteralValue!26160 (value!269104 List!57617)) (EOFValue!8720 (value!269105 List!57617)) (IdentValue!8720 (value!269106 List!57617)) (DelimiterValue!17441 (value!269107 List!57617)) (DedentValue!8720 (value!269108 List!57617)) (NewLineValue!8720 (value!269109 List!57617)) (IntegerValue!26160 (value!269110 (_ BitVec 32)) (text!61487 List!57617)) (IntegerValue!26161 (value!269111 Int) (text!61488 List!57617)) (Times!8720) (Or!8720) (Equal!8720) (Minus!8720) (Broken!43604 (value!269112 List!57617)) (And!8720) (Div!8720) (LessEqual!8720) (Mod!8720) (Concat!22364) (Not!8720) (Plus!8720) (SpaceValue!8720 (value!269113 List!57617)) (IntegerValue!26162 (value!269114 Int) (text!61489 List!57617)) (StringLiteralValue!26161 (text!61490 List!57617)) (FloatLiteralValue!17441 (text!61491 List!57617)) (BytesLiteralValue!8720 (value!269115 List!57617)) (CommentValue!17441 (value!269116 List!57617)) (StringLiteralValue!26162 (value!269117 List!57617)) (ErrorTokenValue!8720 (msg!8781 List!57617)) )
))
(declare-datatypes ((TokenValueInjection!16748 0))(
  ( (TokenValueInjection!16749 (toValue!11385 Int) (toChars!11244 Int)) )
))
(declare-datatypes ((Rule!16620 0))(
  ( (Rule!16621 (regex!8410 Regex!13643) (tag!9274 String!65473) (isSeparator!8410 Bool) (transformation!8410 TokenValueInjection!16748)) )
))
(declare-fun rule!200 () Rule!16620)

(declare-fun isEmpty!30990 (BalanceConc!29754) Bool)

(declare-datatypes ((tuple2!62238 0))(
  ( (tuple2!62239 (_1!34422 BalanceConc!29754) (_2!34422 BalanceConc!29754)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2!173 (Regex!13643 BalanceConc!29754 BalanceConc!29754) tuple2!62238)

(assert (=> b!4976518 (= lt!2055178 (isEmpty!30990 (_1!34422 (findLongestMatchWithZipperSequenceV2!173 (regex!8410 rule!200) input!1580 totalInput!520))))))

(declare-fun b!4976519 () Bool)

(declare-fun e!3110216 () Bool)

(declare-fun tp!1395429 () Bool)

(declare-fun inv!75189 (Conc!15162) Bool)

(assert (=> b!4976519 (= e!3110216 (and (inv!75189 (c!849187 input!1580)) tp!1395429))))

(declare-fun b!4976520 () Bool)

(declare-fun res!2124261 () Bool)

(assert (=> b!4976520 (=> (not res!2124261) (not e!3110219))))

(declare-fun isSuffix!1209 (List!57616 List!57616) Bool)

(declare-fun list!18402 (BalanceConc!29754) List!57616)

(assert (=> b!4976520 (= res!2124261 (isSuffix!1209 (list!18402 input!1580) (list!18402 totalInput!520)))))

(declare-fun b!4976521 () Bool)

(declare-fun tp!1395428 () Bool)

(declare-fun e!3110218 () Bool)

(declare-fun e!3110217 () Bool)

(declare-fun inv!75185 (String!65473) Bool)

(declare-fun inv!75190 (TokenValueInjection!16748) Bool)

(assert (=> b!4976521 (= e!3110217 (and tp!1395428 (inv!75185 (tag!9274 rule!200)) (inv!75190 (transformation!8410 rule!200)) e!3110218))))

(declare-fun b!4976522 () Bool)

(declare-fun e!3110221 () Bool)

(declare-fun tp!1395431 () Bool)

(assert (=> b!4976522 (= e!3110221 (and (inv!75189 (c!849187 totalInput!520)) tp!1395431))))

(assert (=> b!4976524 (= e!3110218 (and tp!1395432 tp!1395430))))

(declare-fun b!4976523 () Bool)

(declare-fun res!2124260 () Bool)

(assert (=> b!4976523 (=> (not res!2124260) (not e!3110219))))

(declare-datatypes ((LexerInterface!8002 0))(
  ( (LexerInterfaceExt!7999 (__x!34734 Int)) (Lexer!8000) )
))
(declare-fun thiss!16165 () LexerInterface!8002)

(declare-fun ruleValid!3818 (LexerInterface!8002 Rule!16620) Bool)

(assert (=> b!4976523 (= res!2124260 (ruleValid!3818 thiss!16165 rule!200))))

(declare-fun res!2124259 () Bool)

(assert (=> start!525118 (=> (not res!2124259) (not e!3110219))))

(get-info :version)

(assert (=> start!525118 (= res!2124259 ((_ is Lexer!8000) thiss!16165))))

(assert (=> start!525118 e!3110219))

(assert (=> start!525118 true))

(assert (=> start!525118 e!3110217))

(declare-fun inv!75191 (BalanceConc!29754) Bool)

(assert (=> start!525118 (and (inv!75191 input!1580) e!3110216)))

(assert (=> start!525118 (and (inv!75191 totalInput!520) e!3110221)))

(assert (= (and start!525118 res!2124259) b!4976523))

(assert (= (and b!4976523 res!2124260) b!4976520))

(assert (= (and b!4976520 res!2124261) b!4976518))

(assert (= b!4976521 b!4976524))

(assert (= start!525118 b!4976521))

(assert (= start!525118 b!4976519))

(assert (= start!525118 b!4976522))

(declare-fun m!6006718 () Bool)

(assert (=> b!4976522 m!6006718))

(declare-fun m!6006720 () Bool)

(assert (=> start!525118 m!6006720))

(declare-fun m!6006722 () Bool)

(assert (=> start!525118 m!6006722))

(declare-fun m!6006724 () Bool)

(assert (=> b!4976520 m!6006724))

(declare-fun m!6006726 () Bool)

(assert (=> b!4976520 m!6006726))

(assert (=> b!4976520 m!6006724))

(assert (=> b!4976520 m!6006726))

(declare-fun m!6006728 () Bool)

(assert (=> b!4976520 m!6006728))

(declare-fun m!6006730 () Bool)

(assert (=> b!4976518 m!6006730))

(declare-fun m!6006732 () Bool)

(assert (=> b!4976518 m!6006732))

(declare-fun m!6006734 () Bool)

(assert (=> b!4976523 m!6006734))

(declare-fun m!6006736 () Bool)

(assert (=> b!4976521 m!6006736))

(declare-fun m!6006738 () Bool)

(assert (=> b!4976521 m!6006738))

(declare-fun m!6006740 () Bool)

(assert (=> b!4976519 m!6006740))

(check-sat (not b!4976518) (not b!4976520) (not b_next!133729) (not b!4976519) b_and!349351 (not b_next!133731) (not b!4976522) b_and!349353 (not start!525118) (not b!4976523) (not b!4976521))
(check-sat b_and!349353 b_and!349351 (not b_next!133731) (not b_next!133729))
