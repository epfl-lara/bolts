; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!746504 () Bool)

(assert start!746504)

(declare-fun b!7909430 () Bool)

(declare-fun b_free!135167 () Bool)

(declare-fun b_next!135957 () Bool)

(assert (=> b!7909430 (= b_free!135167 (not b_next!135957))))

(declare-fun tp!2356244 () Bool)

(declare-fun b_and!353411 () Bool)

(assert (=> b!7909430 (= tp!2356244 b_and!353411)))

(declare-fun b_free!135169 () Bool)

(declare-fun b_next!135959 () Bool)

(assert (=> b!7909430 (= b_free!135169 (not b_next!135959))))

(declare-fun tp!2356245 () Bool)

(declare-fun b_and!353413 () Bool)

(assert (=> b!7909430 (= tp!2356245 b_and!353413)))

(declare-fun b!7909427 () Bool)

(declare-fun e!4668910 () Bool)

(assert (=> b!7909427 (= e!4668910 false)))

(declare-fun b!7909428 () Bool)

(declare-fun res!3139283 () Bool)

(assert (=> b!7909428 (=> (not res!3139283) (not e!4668910))))

(declare-datatypes ((LexerInterface!8248 0))(
  ( (LexerInterfaceExt!8245 (__x!35231 Int)) (Lexer!8246) )
))
(declare-fun thiss!15815 () LexerInterface!8248)

(declare-datatypes ((List!74473 0))(
  ( (Nil!74349) (Cons!74349 (h!80797 (_ BitVec 16)) (t!389826 List!74473)) )
))
(declare-datatypes ((String!83281 0))(
  ( (String!83282 (value!288648 String)) )
))
(declare-datatypes ((C!43048 0))(
  ( (C!43049 (val!31988 Int)) )
))
(declare-datatypes ((List!74474 0))(
  ( (Nil!74350) (Cons!74350 (h!80798 C!43048) (t!389827 List!74474)) )
))
(declare-datatypes ((IArray!31721 0))(
  ( (IArray!31722 (innerList!15918 List!74474)) )
))
(declare-datatypes ((Conc!15830 0))(
  ( (Node!15830 (left!56721 Conc!15830) (right!57051 Conc!15830) (csize!31890 Int) (cheight!16041 Int)) (Leaf!30126 (xs!19212 IArray!31721) (csize!31891 Int)) (Empty!15830) )
))
(declare-datatypes ((BalanceConc!30778 0))(
  ( (BalanceConc!30779 (c!1451063 Conc!15830)) )
))
(declare-datatypes ((TokenValue!8972 0))(
  ( (FloatLiteralValue!17944 (text!63249 List!74473)) (TokenValueExt!8971 (__x!35232 Int)) (Broken!44860 (value!288649 List!74473)) (Object!9095) (End!8972) (Def!8972) (Underscore!8972) (Match!8972) (Else!8972) (Error!8972) (Case!8972) (If!8972) (Extends!8972) (Abstract!8972) (Class!8972) (Val!8972) (DelimiterValue!17944 (del!9032 List!74473)) (KeywordValue!8978 (value!288650 List!74473)) (CommentValue!17944 (value!288651 List!74473)) (WhitespaceValue!17944 (value!288652 List!74473)) (IndentationValue!8972 (value!288653 List!74473)) (String!83283) (Int32!8972) (Broken!44861 (value!288654 List!74473)) (Boolean!8973) (Unit!169376) (OperatorValue!8975 (op!9032 List!74473)) (IdentifierValue!17944 (value!288655 List!74473)) (IdentifierValue!17945 (value!288656 List!74473)) (WhitespaceValue!17945 (value!288657 List!74473)) (True!17944) (False!17944) (Broken!44862 (value!288658 List!74473)) (Broken!44863 (value!288659 List!74473)) (True!17945) (RightBrace!8972) (RightBracket!8972) (Colon!8972) (Null!8972) (Comma!8972) (LeftBracket!8972) (False!17945) (LeftBrace!8972) (ImaginaryLiteralValue!8972 (text!63250 List!74473)) (StringLiteralValue!26916 (value!288660 List!74473)) (EOFValue!8972 (value!288661 List!74473)) (IdentValue!8972 (value!288662 List!74473)) (DelimiterValue!17945 (value!288663 List!74473)) (DedentValue!8972 (value!288664 List!74473)) (NewLineValue!8972 (value!288665 List!74473)) (IntegerValue!26916 (value!288666 (_ BitVec 32)) (text!63251 List!74473)) (IntegerValue!26917 (value!288667 Int) (text!63252 List!74473)) (Times!8972) (Or!8972) (Equal!8972) (Minus!8972) (Broken!44864 (value!288668 List!74473)) (And!8972) (Div!8972) (LessEqual!8972) (Mod!8972) (Concat!30331) (Not!8972) (Plus!8972) (SpaceValue!8972 (value!288669 List!74473)) (IntegerValue!26918 (value!288670 Int) (text!63253 List!74473)) (StringLiteralValue!26917 (text!63254 List!74473)) (FloatLiteralValue!17945 (text!63255 List!74473)) (BytesLiteralValue!8972 (value!288671 List!74473)) (CommentValue!17945 (value!288672 List!74473)) (StringLiteralValue!26918 (value!288673 List!74473)) (ErrorTokenValue!8972 (msg!9033 List!74473)) )
))
(declare-datatypes ((Regex!21359 0))(
  ( (ElementMatch!21359 (c!1451064 C!43048)) (Concat!30332 (regOne!43230 Regex!21359) (regTwo!43230 Regex!21359)) (EmptyExpr!21359) (Star!21359 (reg!21688 Regex!21359)) (EmptyLang!21359) (Union!21359 (regOne!43231 Regex!21359) (regTwo!43231 Regex!21359)) )
))
(declare-datatypes ((TokenValueInjection!17252 0))(
  ( (TokenValueInjection!17253 (toValue!11713 Int) (toChars!11572 Int)) )
))
(declare-datatypes ((Rule!17112 0))(
  ( (Rule!17113 (regex!8656 Regex!21359) (tag!9520 String!83281) (isSeparator!8656 Bool) (transformation!8656 TokenValueInjection!17252)) )
))
(declare-fun rule!156 () Rule!17112)

(declare-fun ruleValid!3967 (LexerInterface!8248 Rule!17112) Bool)

(assert (=> b!7909428 (= res!3139283 (ruleValid!3967 thiss!15815 rule!156))))

(declare-fun b!7909429 () Bool)

(declare-fun e!4668912 () Bool)

(declare-fun e!4668908 () Bool)

(declare-fun tp!2356246 () Bool)

(declare-fun inv!95382 (String!83281) Bool)

(declare-fun inv!95384 (TokenValueInjection!17252) Bool)

(assert (=> b!7909429 (= e!4668912 (and tp!2356246 (inv!95382 (tag!9520 rule!156)) (inv!95384 (transformation!8656 rule!156)) e!4668908))))

(declare-fun res!3139284 () Bool)

(assert (=> start!746504 (=> (not res!3139284) (not e!4668910))))

(get-info :version)

(assert (=> start!746504 (= res!3139284 ((_ is Lexer!8246) thiss!15815))))

(assert (=> start!746504 e!4668910))

(assert (=> start!746504 true))

(assert (=> start!746504 e!4668912))

(declare-fun e!4668911 () Bool)

(assert (=> start!746504 e!4668911))

(assert (=> b!7909430 (= e!4668908 (and tp!2356244 tp!2356245))))

(declare-fun b!7909431 () Bool)

(declare-fun tp_is_empty!53093 () Bool)

(declare-fun tp!2356243 () Bool)

(assert (=> b!7909431 (= e!4668911 (and tp_is_empty!53093 tp!2356243))))

(declare-fun b!7909432 () Bool)

(declare-fun res!3139282 () Bool)

(assert (=> b!7909432 (=> (not res!3139282) (not e!4668910))))

(declare-fun input!1480 () List!74474)

(declare-fun isEmpty!42683 (List!74474) Bool)

(declare-datatypes ((tuple2!70392 0))(
  ( (tuple2!70393 (_1!38499 List!74474) (_2!38499 List!74474)) )
))
(declare-fun findLongestMatch!1949 (Regex!21359 List!74474) tuple2!70392)

(assert (=> b!7909432 (= res!3139282 (not (isEmpty!42683 (_1!38499 (findLongestMatch!1949 (regex!8656 rule!156) input!1480)))))))

(assert (= (and start!746504 res!3139284) b!7909428))

(assert (= (and b!7909428 res!3139283) b!7909432))

(assert (= (and b!7909432 res!3139282) b!7909427))

(assert (= b!7909429 b!7909430))

(assert (= start!746504 b!7909429))

(assert (= (and start!746504 ((_ is Cons!74350) input!1480)) b!7909431))

(declare-fun m!8283030 () Bool)

(assert (=> b!7909428 m!8283030))

(declare-fun m!8283032 () Bool)

(assert (=> b!7909429 m!8283032))

(declare-fun m!8283034 () Bool)

(assert (=> b!7909429 m!8283034))

(declare-fun m!8283036 () Bool)

(assert (=> b!7909432 m!8283036))

(declare-fun m!8283038 () Bool)

(assert (=> b!7909432 m!8283038))

(check-sat (not b_next!135959) (not b!7909432) (not b!7909431) (not b!7909429) tp_is_empty!53093 b_and!353413 (not b!7909428) b_and!353411 (not b_next!135957))
(check-sat b_and!353411 b_and!353413 (not b_next!135957) (not b_next!135959))
