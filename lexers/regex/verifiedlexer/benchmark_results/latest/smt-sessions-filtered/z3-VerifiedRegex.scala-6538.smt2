; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345730 () Bool)

(assert start!345730)

(declare-fun b!3682913 () Bool)

(declare-fun b_free!97613 () Bool)

(declare-fun b_next!98317 () Bool)

(assert (=> b!3682913 (= b_free!97613 (not b_next!98317))))

(declare-fun tp!1119421 () Bool)

(declare-fun b_and!275263 () Bool)

(assert (=> b!3682913 (= tp!1119421 b_and!275263)))

(declare-fun b_free!97615 () Bool)

(declare-fun b_next!98319 () Bool)

(assert (=> b!3682913 (= b_free!97615 (not b_next!98319))))

(declare-fun tp!1119418 () Bool)

(declare-fun b_and!275265 () Bool)

(assert (=> b!3682913 (= tp!1119418 b_and!275265)))

(declare-fun b!3682907 () Bool)

(declare-fun res!1496337 () Bool)

(declare-fun e!2280548 () Bool)

(assert (=> b!3682907 (=> (not res!1496337) (not e!2280548))))

(declare-datatypes ((LexerInterface!5445 0))(
  ( (LexerInterfaceExt!5442 (__x!24389 Int)) (Lexer!5443) )
))
(declare-fun thiss!25197 () LexerInterface!5445)

(declare-datatypes ((List!38986 0))(
  ( (Nil!38862) (Cons!38862 (h!44282 (_ BitVec 16)) (t!300885 List!38986)) )
))
(declare-datatypes ((TokenValue!6086 0))(
  ( (FloatLiteralValue!12172 (text!43047 List!38986)) (TokenValueExt!6085 (__x!24390 Int)) (Broken!30430 (value!187330 List!38986)) (Object!6209) (End!6086) (Def!6086) (Underscore!6086) (Match!6086) (Else!6086) (Error!6086) (Case!6086) (If!6086) (Extends!6086) (Abstract!6086) (Class!6086) (Val!6086) (DelimiterValue!12172 (del!6146 List!38986)) (KeywordValue!6092 (value!187331 List!38986)) (CommentValue!12172 (value!187332 List!38986)) (WhitespaceValue!12172 (value!187333 List!38986)) (IndentationValue!6086 (value!187334 List!38986)) (String!43763) (Int32!6086) (Broken!30431 (value!187335 List!38986)) (Boolean!6087) (Unit!56961) (OperatorValue!6089 (op!6146 List!38986)) (IdentifierValue!12172 (value!187336 List!38986)) (IdentifierValue!12173 (value!187337 List!38986)) (WhitespaceValue!12173 (value!187338 List!38986)) (True!12172) (False!12172) (Broken!30432 (value!187339 List!38986)) (Broken!30433 (value!187340 List!38986)) (True!12173) (RightBrace!6086) (RightBracket!6086) (Colon!6086) (Null!6086) (Comma!6086) (LeftBracket!6086) (False!12173) (LeftBrace!6086) (ImaginaryLiteralValue!6086 (text!43048 List!38986)) (StringLiteralValue!18258 (value!187341 List!38986)) (EOFValue!6086 (value!187342 List!38986)) (IdentValue!6086 (value!187343 List!38986)) (DelimiterValue!12173 (value!187344 List!38986)) (DedentValue!6086 (value!187345 List!38986)) (NewLineValue!6086 (value!187346 List!38986)) (IntegerValue!18258 (value!187347 (_ BitVec 32)) (text!43049 List!38986)) (IntegerValue!18259 (value!187348 Int) (text!43050 List!38986)) (Times!6086) (Or!6086) (Equal!6086) (Minus!6086) (Broken!30434 (value!187349 List!38986)) (And!6086) (Div!6086) (LessEqual!6086) (Mod!6086) (Concat!16701) (Not!6086) (Plus!6086) (SpaceValue!6086 (value!187350 List!38986)) (IntegerValue!18260 (value!187351 Int) (text!43051 List!38986)) (StringLiteralValue!18259 (text!43052 List!38986)) (FloatLiteralValue!12173 (text!43053 List!38986)) (BytesLiteralValue!6086 (value!187352 List!38986)) (CommentValue!12173 (value!187353 List!38986)) (StringLiteralValue!18260 (value!187354 List!38986)) (ErrorTokenValue!6086 (msg!6147 List!38986)) )
))
(declare-datatypes ((String!43764 0))(
  ( (String!43765 (value!187355 String)) )
))
(declare-datatypes ((C!21416 0))(
  ( (C!21417 (val!12756 Int)) )
))
(declare-datatypes ((List!38987 0))(
  ( (Nil!38863) (Cons!38863 (h!44283 C!21416) (t!300886 List!38987)) )
))
(declare-datatypes ((IArray!23809 0))(
  ( (IArray!23810 (innerList!11962 List!38987)) )
))
(declare-datatypes ((Regex!10615 0))(
  ( (ElementMatch!10615 (c!637101 C!21416)) (Concat!16702 (regOne!21742 Regex!10615) (regTwo!21742 Regex!10615)) (EmptyExpr!10615) (Star!10615 (reg!10944 Regex!10615)) (EmptyLang!10615) (Union!10615 (regOne!21743 Regex!10615) (regTwo!21743 Regex!10615)) )
))
(declare-datatypes ((Conc!11902 0))(
  ( (Node!11902 (left!30324 Conc!11902) (right!30654 Conc!11902) (csize!24034 Int) (cheight!12113 Int)) (Leaf!18441 (xs!15104 IArray!23809) (csize!24035 Int)) (Empty!11902) )
))
(declare-datatypes ((BalanceConc!23418 0))(
  ( (BalanceConc!23419 (c!637102 Conc!11902)) )
))
(declare-datatypes ((TokenValueInjection!11600 0))(
  ( (TokenValueInjection!11601 (toValue!8156 Int) (toChars!8015 Int)) )
))
(declare-datatypes ((Rule!11512 0))(
  ( (Rule!11513 (regex!5856 Regex!10615) (tag!6662 String!43764) (isSeparator!5856 Bool) (transformation!5856 TokenValueInjection!11600)) )
))
(declare-datatypes ((List!38988 0))(
  ( (Nil!38864) (Cons!38864 (h!44284 Rule!11512) (t!300887 List!38988)) )
))
(declare-fun rules!3568 () List!38988)

(declare-fun rulesInvariant!4842 (LexerInterface!5445 List!38988) Bool)

(assert (=> b!3682907 (= res!1496337 (rulesInvariant!4842 thiss!25197 rules!3568))))

(declare-fun b!3682908 () Bool)

(declare-fun e!2280544 () Bool)

(assert (=> b!3682908 (= e!2280544 false)))

(declare-fun lt!1288302 () List!38987)

(declare-datatypes ((Token!11078 0))(
  ( (Token!11079 (value!187356 TokenValue!6086) (rule!8696 Rule!11512) (size!29717 Int) (originalCharacters!6570 List!38987)) )
))
(declare-datatypes ((List!38989 0))(
  ( (Nil!38865) (Cons!38865 (h!44285 Token!11078) (t!300888 List!38989)) )
))
(declare-datatypes ((IArray!23811 0))(
  ( (IArray!23812 (innerList!11963 List!38989)) )
))
(declare-datatypes ((Conc!11903 0))(
  ( (Node!11903 (left!30325 Conc!11903) (right!30655 Conc!11903) (csize!24036 Int) (cheight!12114 Int)) (Leaf!18442 (xs!15105 IArray!23811) (csize!24037 Int)) (Empty!11903) )
))
(declare-datatypes ((BalanceConc!23420 0))(
  ( (BalanceConc!23421 (c!637103 Conc!11903)) )
))
(declare-datatypes ((tuple2!38730 0))(
  ( (tuple2!38731 (_1!22499 BalanceConc!23420) (_2!22499 BalanceConc!23418)) )
))
(declare-fun lt!1288301 () tuple2!38730)

(declare-fun list!14452 (BalanceConc!23418) List!38987)

(declare-fun charsOf!3867 (Token!11078) BalanceConc!23418)

(declare-fun head!7908 (List!38989) Token!11078)

(declare-fun list!14453 (BalanceConc!23420) List!38989)

(assert (=> b!3682908 (= lt!1288302 (list!14452 (charsOf!3867 (head!7908 (list!14453 (_1!22499 lt!1288301))))))))

(declare-fun b!3682909 () Bool)

(declare-fun e!2280542 () Bool)

(declare-fun e!2280546 () Bool)

(declare-fun tp!1119420 () Bool)

(assert (=> b!3682909 (= e!2280542 (and e!2280546 tp!1119420))))

(declare-fun b!3682911 () Bool)

(declare-fun res!1496340 () Bool)

(assert (=> b!3682911 (=> (not res!1496340) (not e!2280548))))

(declare-fun isEmpty!23086 (List!38988) Bool)

(assert (=> b!3682911 (= res!1496340 (not (isEmpty!23086 rules!3568)))))

(declare-fun e!2280547 () Bool)

(declare-fun b!3682912 () Bool)

(declare-fun tp!1119419 () Bool)

(declare-fun inv!52351 (String!43764) Bool)

(declare-fun inv!52353 (TokenValueInjection!11600) Bool)

(assert (=> b!3682912 (= e!2280546 (and tp!1119419 (inv!52351 (tag!6662 (h!44284 rules!3568))) (inv!52353 (transformation!5856 (h!44284 rules!3568))) e!2280547))))

(assert (=> b!3682913 (= e!2280547 (and tp!1119421 tp!1119418))))

(declare-fun b!3682914 () Bool)

(declare-fun e!2280545 () Bool)

(declare-fun tp_is_empty!18313 () Bool)

(declare-fun tp!1119422 () Bool)

(assert (=> b!3682914 (= e!2280545 (and tp_is_empty!18313 tp!1119422))))

(declare-fun res!1496338 () Bool)

(assert (=> start!345730 (=> (not res!1496338) (not e!2280548))))

(get-info :version)

(assert (=> start!345730 (= res!1496338 ((_ is Lexer!5443) thiss!25197))))

(assert (=> start!345730 e!2280548))

(assert (=> start!345730 true))

(assert (=> start!345730 e!2280542))

(assert (=> start!345730 e!2280545))

(declare-fun b!3682910 () Bool)

(assert (=> b!3682910 (= e!2280548 e!2280544)))

(declare-fun res!1496339 () Bool)

(assert (=> b!3682910 (=> (not res!1496339) (not e!2280544))))

(declare-fun isEmpty!23087 (BalanceConc!23420) Bool)

(assert (=> b!3682910 (= res!1496339 (not (isEmpty!23087 (_1!22499 lt!1288301))))))

(declare-fun input!3129 () List!38987)

(declare-fun lex!2586 (LexerInterface!5445 List!38988 BalanceConc!23418) tuple2!38730)

(declare-fun seqFromList!4405 (List!38987) BalanceConc!23418)

(assert (=> b!3682910 (= lt!1288301 (lex!2586 thiss!25197 rules!3568 (seqFromList!4405 input!3129)))))

(assert (= (and start!345730 res!1496338) b!3682911))

(assert (= (and b!3682911 res!1496340) b!3682907))

(assert (= (and b!3682907 res!1496337) b!3682910))

(assert (= (and b!3682910 res!1496339) b!3682908))

(assert (= b!3682912 b!3682913))

(assert (= b!3682909 b!3682912))

(assert (= (and start!345730 ((_ is Cons!38864) rules!3568)) b!3682909))

(assert (= (and start!345730 ((_ is Cons!38863) input!3129)) b!3682914))

(declare-fun m!4194011 () Bool)

(assert (=> b!3682907 m!4194011))

(declare-fun m!4194013 () Bool)

(assert (=> b!3682908 m!4194013))

(assert (=> b!3682908 m!4194013))

(declare-fun m!4194015 () Bool)

(assert (=> b!3682908 m!4194015))

(assert (=> b!3682908 m!4194015))

(declare-fun m!4194017 () Bool)

(assert (=> b!3682908 m!4194017))

(assert (=> b!3682908 m!4194017))

(declare-fun m!4194019 () Bool)

(assert (=> b!3682908 m!4194019))

(declare-fun m!4194021 () Bool)

(assert (=> b!3682912 m!4194021))

(declare-fun m!4194023 () Bool)

(assert (=> b!3682912 m!4194023))

(declare-fun m!4194025 () Bool)

(assert (=> b!3682911 m!4194025))

(declare-fun m!4194027 () Bool)

(assert (=> b!3682910 m!4194027))

(declare-fun m!4194029 () Bool)

(assert (=> b!3682910 m!4194029))

(assert (=> b!3682910 m!4194029))

(declare-fun m!4194031 () Bool)

(assert (=> b!3682910 m!4194031))

(check-sat (not b!3682907) (not b!3682911) (not b!3682912) (not b!3682910) tp_is_empty!18313 b_and!275263 b_and!275265 (not b!3682908) (not b!3682914) (not b!3682909) (not b_next!98317) (not b_next!98319))
(check-sat b_and!275263 b_and!275265 (not b_next!98319) (not b_next!98317))
