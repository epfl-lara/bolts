; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537278 () Bool)

(assert start!537278)

(declare-fun b!5096201 () Bool)

(declare-fun b_free!133463 () Bool)

(declare-fun b_next!134253 () Bool)

(assert (=> b!5096201 (= b_free!133463 (not b_next!134253))))

(declare-fun tp!1421146 () Bool)

(declare-fun b_and!350355 () Bool)

(assert (=> b!5096201 (= tp!1421146 b_and!350355)))

(declare-fun b_free!133465 () Bool)

(declare-fun b_next!134255 () Bool)

(assert (=> b!5096201 (= b_free!133465 (not b_next!134255))))

(declare-fun tp!1421147 () Bool)

(declare-fun b_and!350357 () Bool)

(assert (=> b!5096201 (= tp!1421147 b_and!350357)))

(declare-fun b!5096200 () Bool)

(declare-fun e!3178346 () Bool)

(declare-fun tp_is_empty!37251 () Bool)

(declare-fun tp!1421144 () Bool)

(assert (=> b!5096200 (= e!3178346 (and tp_is_empty!37251 tp!1421144))))

(declare-fun e!3178347 () Bool)

(assert (=> b!5096201 (= e!3178347 (and tp!1421146 tp!1421147))))

(declare-fun b!5096202 () Bool)

(declare-fun res!2168924 () Bool)

(declare-fun e!3178343 () Bool)

(assert (=> b!5096202 (=> (not res!2168924) (not e!3178343))))

(declare-datatypes ((LexerInterface!8110 0))(
  ( (LexerInterfaceExt!8107 (__x!34953 Int)) (Lexer!8108) )
))
(declare-fun thiss!15916 () LexerInterface!8110)

(declare-datatypes ((C!28244 0))(
  ( (C!28245 (val!23774 Int)) )
))
(declare-datatypes ((List!58772 0))(
  ( (Nil!58648) (Cons!58648 (h!65096 C!28244) (t!371737 List!58772)) )
))
(declare-datatypes ((IArray!31441 0))(
  ( (IArray!31442 (innerList!15778 List!58772)) )
))
(declare-datatypes ((Conc!15690 0))(
  ( (Node!15690 (left!43067 Conc!15690) (right!43397 Conc!15690) (csize!31610 Int) (cheight!15901 Int)) (Leaf!26040 (xs!19072 IArray!31441) (csize!31611 Int)) (Empty!15690) )
))
(declare-datatypes ((Regex!13993 0))(
  ( (ElementMatch!13993 (c!875634 C!28244)) (Concat!22825 (regOne!28498 Regex!13993) (regTwo!28498 Regex!13993)) (EmptyExpr!13993) (Star!13993 (reg!14322 Regex!13993)) (EmptyLang!13993) (Union!13993 (regOne!28499 Regex!13993) (regTwo!28499 Regex!13993)) )
))
(declare-datatypes ((String!67081 0))(
  ( (String!67082 (value!273044 String)) )
))
(declare-datatypes ((List!58773 0))(
  ( (Nil!58649) (Cons!58649 (h!65097 (_ BitVec 16)) (t!371738 List!58773)) )
))
(declare-datatypes ((TokenValue!8832 0))(
  ( (FloatLiteralValue!17664 (text!62269 List!58773)) (TokenValueExt!8831 (__x!34954 Int)) (Broken!44160 (value!273045 List!58773)) (Object!8955) (End!8832) (Def!8832) (Underscore!8832) (Match!8832) (Else!8832) (Error!8832) (Case!8832) (If!8832) (Extends!8832) (Abstract!8832) (Class!8832) (Val!8832) (DelimiterValue!17664 (del!8892 List!58773)) (KeywordValue!8838 (value!273046 List!58773)) (CommentValue!17664 (value!273047 List!58773)) (WhitespaceValue!17664 (value!273048 List!58773)) (IndentationValue!8832 (value!273049 List!58773)) (String!67083) (Int32!8832) (Broken!44161 (value!273050 List!58773)) (Boolean!8833) (Unit!149688) (OperatorValue!8835 (op!8892 List!58773)) (IdentifierValue!17664 (value!273051 List!58773)) (IdentifierValue!17665 (value!273052 List!58773)) (WhitespaceValue!17665 (value!273053 List!58773)) (True!17664) (False!17664) (Broken!44162 (value!273054 List!58773)) (Broken!44163 (value!273055 List!58773)) (True!17665) (RightBrace!8832) (RightBracket!8832) (Colon!8832) (Null!8832) (Comma!8832) (LeftBracket!8832) (False!17665) (LeftBrace!8832) (ImaginaryLiteralValue!8832 (text!62270 List!58773)) (StringLiteralValue!26496 (value!273056 List!58773)) (EOFValue!8832 (value!273057 List!58773)) (IdentValue!8832 (value!273058 List!58773)) (DelimiterValue!17665 (value!273059 List!58773)) (DedentValue!8832 (value!273060 List!58773)) (NewLineValue!8832 (value!273061 List!58773)) (IntegerValue!26496 (value!273062 (_ BitVec 32)) (text!62271 List!58773)) (IntegerValue!26497 (value!273063 Int) (text!62272 List!58773)) (Times!8832) (Or!8832) (Equal!8832) (Minus!8832) (Broken!44164 (value!273064 List!58773)) (And!8832) (Div!8832) (LessEqual!8832) (Mod!8832) (Concat!22826) (Not!8832) (Plus!8832) (SpaceValue!8832 (value!273065 List!58773)) (IntegerValue!26498 (value!273066 Int) (text!62273 List!58773)) (StringLiteralValue!26497 (text!62274 List!58773)) (FloatLiteralValue!17665 (text!62275 List!58773)) (BytesLiteralValue!8832 (value!273067 List!58773)) (CommentValue!17665 (value!273068 List!58773)) (StringLiteralValue!26498 (value!273069 List!58773)) (ErrorTokenValue!8832 (msg!8893 List!58773)) )
))
(declare-datatypes ((BalanceConc!30498 0))(
  ( (BalanceConc!30499 (c!875635 Conc!15690)) )
))
(declare-datatypes ((TokenValueInjection!16972 0))(
  ( (TokenValueInjection!16973 (toValue!11541 Int) (toChars!11400 Int)) )
))
(declare-datatypes ((Rule!16836 0))(
  ( (Rule!16837 (regex!8518 Regex!13993) (tag!9382 String!67081) (isSeparator!8518 Bool) (transformation!8518 TokenValueInjection!16972)) )
))
(declare-fun rule!158 () Rule!16836)

(declare-fun ruleValid!3910 (LexerInterface!8110 Rule!16836) Bool)

(assert (=> b!5096202 (= res!2168924 (ruleValid!3910 thiss!15916 rule!158))))

(declare-fun res!2168925 () Bool)

(assert (=> start!537278 (=> (not res!2168925) (not e!3178343))))

(get-info :version)

(assert (=> start!537278 (= res!2168925 ((_ is Lexer!8108) thiss!15916))))

(assert (=> start!537278 e!3178343))

(assert (=> start!537278 true))

(declare-fun e!3178344 () Bool)

(assert (=> start!537278 e!3178344))

(assert (=> start!537278 e!3178346))

(declare-fun tp!1421145 () Bool)

(declare-fun b!5096203 () Bool)

(declare-fun inv!78141 (String!67081) Bool)

(declare-fun inv!78143 (TokenValueInjection!16972) Bool)

(assert (=> b!5096203 (= e!3178344 (and tp!1421145 (inv!78141 (tag!9382 rule!158)) (inv!78143 (transformation!8518 rule!158)) e!3178347))))

(declare-fun b!5096204 () Bool)

(assert (=> b!5096204 (= e!3178343 false)))

(declare-datatypes ((tuple2!63368 0))(
  ( (tuple2!63369 (_1!34987 List!58772) (_2!34987 List!58772)) )
))
(declare-fun lt!2093850 () tuple2!63368)

(declare-fun input!1493 () List!58772)

(declare-fun findLongestMatchWithZipper!113 (Regex!13993 List!58772) tuple2!63368)

(assert (=> b!5096204 (= lt!2093850 (findLongestMatchWithZipper!113 (regex!8518 rule!158) input!1493))))

(assert (= (and start!537278 res!2168925) b!5096202))

(assert (= (and b!5096202 res!2168924) b!5096204))

(assert (= b!5096203 b!5096201))

(assert (= start!537278 b!5096203))

(assert (= (and start!537278 ((_ is Cons!58648) input!1493)) b!5096200))

(declare-fun m!6153436 () Bool)

(assert (=> b!5096202 m!6153436))

(declare-fun m!6153438 () Bool)

(assert (=> b!5096203 m!6153438))

(declare-fun m!6153440 () Bool)

(assert (=> b!5096203 m!6153440))

(declare-fun m!6153442 () Bool)

(assert (=> b!5096204 m!6153442))

(check-sat (not b!5096200) tp_is_empty!37251 (not b_next!134255) (not b!5096204) (not b!5096202) b_and!350355 b_and!350357 (not b_next!134253) (not b!5096203))
(check-sat b_and!350357 b_and!350355 (not b_next!134253) (not b_next!134255))
