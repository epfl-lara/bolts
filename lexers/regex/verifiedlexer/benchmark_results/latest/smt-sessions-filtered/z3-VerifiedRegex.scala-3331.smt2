; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189256 () Bool)

(assert start!189256)

(declare-fun res!844096 () Bool)

(declare-fun e!1206739 () Bool)

(assert (=> start!189256 (=> (not res!844096) (not e!1206739))))

(declare-datatypes ((LexerInterface!3351 0))(
  ( (LexerInterfaceExt!3348 (__x!13246 Int)) (Lexer!3349) )
))
(declare-fun thiss!13601 () LexerInterface!3351)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189256 (= res!844096 (and ((_ is Lexer!3349) thiss!13601) (>= from!837 0)))))

(assert (=> start!189256 e!1206739))

(assert (=> start!189256 true))

(declare-datatypes ((List!21215 0))(
  ( (Nil!21133) (Cons!21133 (h!26534 (_ BitVec 16)) (t!175382 List!21215)) )
))
(declare-datatypes ((TokenValue!3874 0))(
  ( (FloatLiteralValue!7748 (text!27563 List!21215)) (TokenValueExt!3873 (__x!13247 Int)) (Broken!19370 (value!118098 List!21215)) (Object!3955) (End!3874) (Def!3874) (Underscore!3874) (Match!3874) (Else!3874) (Error!3874) (Case!3874) (If!3874) (Extends!3874) (Abstract!3874) (Class!3874) (Val!3874) (DelimiterValue!7748 (del!3934 List!21215)) (KeywordValue!3880 (value!118099 List!21215)) (CommentValue!7748 (value!118100 List!21215)) (WhitespaceValue!7748 (value!118101 List!21215)) (IndentationValue!3874 (value!118102 List!21215)) (String!24487) (Int32!3874) (Broken!19371 (value!118103 List!21215)) (Boolean!3875) (Unit!35523) (OperatorValue!3877 (op!3934 List!21215)) (IdentifierValue!7748 (value!118104 List!21215)) (IdentifierValue!7749 (value!118105 List!21215)) (WhitespaceValue!7749 (value!118106 List!21215)) (True!7748) (False!7748) (Broken!19372 (value!118107 List!21215)) (Broken!19373 (value!118108 List!21215)) (True!7749) (RightBrace!3874) (RightBracket!3874) (Colon!3874) (Null!3874) (Comma!3874) (LeftBracket!3874) (False!7749) (LeftBrace!3874) (ImaginaryLiteralValue!3874 (text!27564 List!21215)) (StringLiteralValue!11622 (value!118109 List!21215)) (EOFValue!3874 (value!118110 List!21215)) (IdentValue!3874 (value!118111 List!21215)) (DelimiterValue!7749 (value!118112 List!21215)) (DedentValue!3874 (value!118113 List!21215)) (NewLineValue!3874 (value!118114 List!21215)) (IntegerValue!11622 (value!118115 (_ BitVec 32)) (text!27565 List!21215)) (IntegerValue!11623 (value!118116 Int) (text!27566 List!21215)) (Times!3874) (Or!3874) (Equal!3874) (Minus!3874) (Broken!19374 (value!118117 List!21215)) (And!3874) (Div!3874) (LessEqual!3874) (Mod!3874) (Concat!9037) (Not!3874) (Plus!3874) (SpaceValue!3874 (value!118118 List!21215)) (IntegerValue!11624 (value!118119 Int) (text!27567 List!21215)) (StringLiteralValue!11623 (text!27568 List!21215)) (FloatLiteralValue!7749 (text!27569 List!21215)) (BytesLiteralValue!3874 (value!118120 List!21215)) (CommentValue!7749 (value!118121 List!21215)) (StringLiteralValue!11624 (value!118122 List!21215)) (ErrorTokenValue!3874 (msg!3935 List!21215)) )
))
(declare-datatypes ((C!10472 0))(
  ( (C!10473 (val!6188 Int)) )
))
(declare-datatypes ((List!21216 0))(
  ( (Nil!21134) (Cons!21134 (h!26535 C!10472) (t!175383 List!21216)) )
))
(declare-datatypes ((IArray!14033 0))(
  ( (IArray!14034 (innerList!7074 List!21216)) )
))
(declare-datatypes ((Conc!7014 0))(
  ( (Node!7014 (left!16957 Conc!7014) (right!17287 Conc!7014) (csize!14258 Int) (cheight!7225 Int)) (Leaf!10346 (xs!9904 IArray!14033) (csize!14259 Int)) (Empty!7014) )
))
(declare-datatypes ((BalanceConc!13844 0))(
  ( (BalanceConc!13845 (c!308274 Conc!7014)) )
))
(declare-datatypes ((Regex!5163 0))(
  ( (ElementMatch!5163 (c!308275 C!10472)) (Concat!9038 (regOne!10838 Regex!5163) (regTwo!10838 Regex!5163)) (EmptyExpr!5163) (Star!5163 (reg!5492 Regex!5163)) (EmptyLang!5163) (Union!5163 (regOne!10839 Regex!5163) (regTwo!10839 Regex!5163)) )
))
(declare-datatypes ((String!24488 0))(
  ( (String!24489 (value!118123 String)) )
))
(declare-datatypes ((TokenValueInjection!7332 0))(
  ( (TokenValueInjection!7333 (toValue!5343 Int) (toChars!5202 Int)) )
))
(declare-datatypes ((Rule!7276 0))(
  ( (Rule!7277 (regex!3738 Regex!5163) (tag!4152 String!24488) (isSeparator!3738 Bool) (transformation!3738 TokenValueInjection!7332)) )
))
(declare-datatypes ((Token!7028 0))(
  ( (Token!7029 (value!118124 TokenValue!3874) (rule!5931 Rule!7276) (size!16745 Int) (originalCharacters!4545 List!21216)) )
))
(declare-datatypes ((List!21217 0))(
  ( (Nil!21135) (Cons!21135 (h!26536 Token!7028) (t!175384 List!21217)) )
))
(declare-datatypes ((IArray!14035 0))(
  ( (IArray!14036 (innerList!7075 List!21217)) )
))
(declare-datatypes ((Conc!7015 0))(
  ( (Node!7015 (left!16958 Conc!7015) (right!17288 Conc!7015) (csize!14260 Int) (cheight!7226 Int)) (Leaf!10347 (xs!9905 IArray!14035) (csize!14261 Int)) (Empty!7015) )
))
(declare-datatypes ((BalanceConc!13846 0))(
  ( (BalanceConc!13847 (c!308276 Conc!7015)) )
))
(declare-fun v!6342 () BalanceConc!13846)

(declare-fun e!1206740 () Bool)

(declare-fun inv!28177 (BalanceConc!13846) Bool)

(assert (=> start!189256 (and (inv!28177 v!6342) e!1206740)))

(declare-fun b!1890354 () Bool)

(declare-fun e!1206738 () Bool)

(assert (=> b!1890354 (= e!1206739 e!1206738)))

(declare-fun res!844097 () Bool)

(assert (=> b!1890354 (=> (not res!844097) (not e!1206738))))

(declare-fun lt!723931 () Int)

(assert (=> b!1890354 (= res!844097 (and (<= from!837 lt!723931) (< from!837 lt!723931)))))

(declare-fun size!16746 (BalanceConc!13846) Int)

(assert (=> b!1890354 (= lt!723931 (size!16746 v!6342))))

(declare-fun b!1890355 () Bool)

(assert (=> b!1890355 (= e!1206738 false)))

(declare-fun lt!723932 () Int)

(declare-fun size!16747 (List!21217) Int)

(declare-fun list!8573 (BalanceConc!13846) List!21217)

(assert (=> b!1890355 (= lt!723932 (size!16747 (list!8573 v!6342)))))

(declare-fun b!1890356 () Bool)

(declare-fun tp!539260 () Bool)

(declare-fun inv!28178 (Conc!7015) Bool)

(assert (=> b!1890356 (= e!1206740 (and (inv!28178 (c!308276 v!6342)) tp!539260))))

(assert (= (and start!189256 res!844096) b!1890354))

(assert (= (and b!1890354 res!844097) b!1890355))

(assert (= start!189256 b!1890356))

(declare-fun m!2320989 () Bool)

(assert (=> start!189256 m!2320989))

(declare-fun m!2320991 () Bool)

(assert (=> b!1890354 m!2320991))

(declare-fun m!2320993 () Bool)

(assert (=> b!1890355 m!2320993))

(assert (=> b!1890355 m!2320993))

(declare-fun m!2320995 () Bool)

(assert (=> b!1890355 m!2320995))

(declare-fun m!2320997 () Bool)

(assert (=> b!1890356 m!2320997))

(check-sat (not b!1890355) (not start!189256) (not b!1890354) (not b!1890356))
(check-sat)
