; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!746476 () Bool)

(assert start!746476)

(declare-fun b!7909057 () Bool)

(declare-fun b_free!135111 () Bool)

(declare-fun b_next!135901 () Bool)

(assert (=> b!7909057 (= b_free!135111 (not b_next!135901))))

(declare-fun tp!2356075 () Bool)

(declare-fun b_and!353355 () Bool)

(assert (=> b!7909057 (= tp!2356075 b_and!353355)))

(declare-fun b_free!135113 () Bool)

(declare-fun b_next!135903 () Bool)

(assert (=> b!7909057 (= b_free!135113 (not b_next!135903))))

(declare-fun tp!2356076 () Bool)

(declare-fun b_and!353357 () Bool)

(assert (=> b!7909057 (= tp!2356076 b_and!353357)))

(declare-fun b!7909055 () Bool)

(declare-fun res!3139037 () Bool)

(declare-fun e!4668677 () Bool)

(assert (=> b!7909055 (=> (not res!3139037) (not e!4668677))))

(declare-datatypes ((LexerInterface!8234 0))(
  ( (LexerInterfaceExt!8231 (__x!35203 Int)) (Lexer!8232) )
))
(declare-fun thiss!15815 () LexerInterface!8234)

(declare-datatypes ((List!74445 0))(
  ( (Nil!74321) (Cons!74321 (h!80769 (_ BitVec 16)) (t!389798 List!74445)) )
))
(declare-datatypes ((C!43020 0))(
  ( (C!43021 (val!31974 Int)) )
))
(declare-datatypes ((List!74446 0))(
  ( (Nil!74322) (Cons!74322 (h!80770 C!43020) (t!389799 List!74446)) )
))
(declare-datatypes ((IArray!31693 0))(
  ( (IArray!31694 (innerList!15904 List!74446)) )
))
(declare-datatypes ((Conc!15816 0))(
  ( (Node!15816 (left!56700 Conc!15816) (right!57030 Conc!15816) (csize!31862 Int) (cheight!16027 Int)) (Leaf!30105 (xs!19198 IArray!31693) (csize!31863 Int)) (Empty!15816) )
))
(declare-datatypes ((BalanceConc!30750 0))(
  ( (BalanceConc!30751 (c!1451033 Conc!15816)) )
))
(declare-datatypes ((TokenValue!8958 0))(
  ( (FloatLiteralValue!17916 (text!63151 List!74445)) (TokenValueExt!8957 (__x!35204 Int)) (Broken!44790 (value!288251 List!74445)) (Object!9081) (End!8958) (Def!8958) (Underscore!8958) (Match!8958) (Else!8958) (Error!8958) (Case!8958) (If!8958) (Extends!8958) (Abstract!8958) (Class!8958) (Val!8958) (DelimiterValue!17916 (del!9018 List!74445)) (KeywordValue!8964 (value!288252 List!74445)) (CommentValue!17916 (value!288253 List!74445)) (WhitespaceValue!17916 (value!288254 List!74445)) (IndentationValue!8958 (value!288255 List!74445)) (String!83211) (Int32!8958) (Broken!44791 (value!288256 List!74445)) (Boolean!8959) (Unit!169362) (OperatorValue!8961 (op!9018 List!74445)) (IdentifierValue!17916 (value!288257 List!74445)) (IdentifierValue!17917 (value!288258 List!74445)) (WhitespaceValue!17917 (value!288259 List!74445)) (True!17916) (False!17916) (Broken!44792 (value!288260 List!74445)) (Broken!44793 (value!288261 List!74445)) (True!17917) (RightBrace!8958) (RightBracket!8958) (Colon!8958) (Null!8958) (Comma!8958) (LeftBracket!8958) (False!17917) (LeftBrace!8958) (ImaginaryLiteralValue!8958 (text!63152 List!74445)) (StringLiteralValue!26874 (value!288262 List!74445)) (EOFValue!8958 (value!288263 List!74445)) (IdentValue!8958 (value!288264 List!74445)) (DelimiterValue!17917 (value!288265 List!74445)) (DedentValue!8958 (value!288266 List!74445)) (NewLineValue!8958 (value!288267 List!74445)) (IntegerValue!26874 (value!288268 (_ BitVec 32)) (text!63153 List!74445)) (IntegerValue!26875 (value!288269 Int) (text!63154 List!74445)) (Times!8958) (Or!8958) (Equal!8958) (Minus!8958) (Broken!44794 (value!288270 List!74445)) (And!8958) (Div!8958) (LessEqual!8958) (Mod!8958) (Concat!30303) (Not!8958) (Plus!8958) (SpaceValue!8958 (value!288271 List!74445)) (IntegerValue!26876 (value!288272 Int) (text!63155 List!74445)) (StringLiteralValue!26875 (text!63156 List!74445)) (FloatLiteralValue!17917 (text!63157 List!74445)) (BytesLiteralValue!8958 (value!288273 List!74445)) (CommentValue!17917 (value!288274 List!74445)) (StringLiteralValue!26876 (value!288275 List!74445)) (ErrorTokenValue!8958 (msg!9019 List!74445)) )
))
(declare-datatypes ((String!83212 0))(
  ( (String!83213 (value!288276 String)) )
))
(declare-datatypes ((Regex!21345 0))(
  ( (ElementMatch!21345 (c!1451034 C!43020)) (Concat!30304 (regOne!43202 Regex!21345) (regTwo!43202 Regex!21345)) (EmptyExpr!21345) (Star!21345 (reg!21674 Regex!21345)) (EmptyLang!21345) (Union!21345 (regOne!43203 Regex!21345) (regTwo!43203 Regex!21345)) )
))
(declare-datatypes ((TokenValueInjection!17224 0))(
  ( (TokenValueInjection!17225 (toValue!11699 Int) (toChars!11558 Int)) )
))
(declare-datatypes ((Rule!17084 0))(
  ( (Rule!17085 (regex!8642 Regex!21345) (tag!9506 String!83212) (isSeparator!8642 Bool) (transformation!8642 TokenValueInjection!17224)) )
))
(declare-fun rule!156 () Rule!17084)

(declare-fun ruleValid!3953 (LexerInterface!8234 Rule!17084) Bool)

(assert (=> b!7909055 (= res!3139037 (ruleValid!3953 thiss!15815 rule!156))))

(declare-fun res!3139038 () Bool)

(assert (=> start!746476 (=> (not res!3139038) (not e!4668677))))

(get-info :version)

(assert (=> start!746476 (= res!3139038 ((_ is Lexer!8232) thiss!15815))))

(assert (=> start!746476 e!4668677))

(assert (=> start!746476 true))

(declare-fun e!4668678 () Bool)

(assert (=> start!746476 e!4668678))

(declare-fun e!4668674 () Bool)

(assert (=> start!746476 e!4668674))

(declare-fun b!7909056 () Bool)

(declare-fun res!3139036 () Bool)

(assert (=> b!7909056 (=> (not res!3139036) (not e!4668677))))

(declare-fun input!1480 () List!74446)

(declare-fun isEmpty!42669 (List!74446) Bool)

(declare-datatypes ((tuple2!70340 0))(
  ( (tuple2!70341 (_1!38473 List!74446) (_2!38473 List!74446)) )
))
(declare-fun findLongestMatch!1935 (Regex!21345 List!74446) tuple2!70340)

(assert (=> b!7909056 (= res!3139036 (isEmpty!42669 (_1!38473 (findLongestMatch!1935 (regex!8642 rule!156) input!1480))))))

(declare-fun e!4668675 () Bool)

(assert (=> b!7909057 (= e!4668675 (and tp!2356075 tp!2356076))))

(declare-fun b!7909058 () Bool)

(assert (=> b!7909058 (= e!4668677 false)))

(declare-fun b!7909059 () Bool)

(declare-fun tp_is_empty!53065 () Bool)

(declare-fun tp!2356078 () Bool)

(assert (=> b!7909059 (= e!4668674 (and tp_is_empty!53065 tp!2356078))))

(declare-fun tp!2356077 () Bool)

(declare-fun b!7909060 () Bool)

(declare-fun inv!95347 (String!83212) Bool)

(declare-fun inv!95349 (TokenValueInjection!17224) Bool)

(assert (=> b!7909060 (= e!4668678 (and tp!2356077 (inv!95347 (tag!9506 rule!156)) (inv!95349 (transformation!8642 rule!156)) e!4668675))))

(assert (= (and start!746476 res!3139038) b!7909055))

(assert (= (and b!7909055 res!3139037) b!7909056))

(assert (= (and b!7909056 res!3139036) b!7909058))

(assert (= b!7909060 b!7909057))

(assert (= start!746476 b!7909060))

(assert (= (and start!746476 ((_ is Cons!74322) input!1480)) b!7909059))

(declare-fun m!8282746 () Bool)

(assert (=> b!7909055 m!8282746))

(declare-fun m!8282748 () Bool)

(assert (=> b!7909056 m!8282748))

(declare-fun m!8282750 () Bool)

(assert (=> b!7909056 m!8282750))

(declare-fun m!8282752 () Bool)

(assert (=> b!7909060 m!8282752))

(declare-fun m!8282754 () Bool)

(assert (=> b!7909060 m!8282754))

(check-sat (not b_next!135903) (not b!7909055) b_and!353357 (not b!7909059) (not b!7909056) (not b!7909060) b_and!353355 tp_is_empty!53065 (not b_next!135901))
(check-sat b_and!353355 b_and!353357 (not b_next!135901) (not b_next!135903))
