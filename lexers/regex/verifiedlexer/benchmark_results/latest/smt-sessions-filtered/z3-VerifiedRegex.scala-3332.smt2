; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189260 () Bool)

(assert start!189260)

(declare-fun res!844108 () Bool)

(declare-fun e!1206756 () Bool)

(assert (=> start!189260 (=> (not res!844108) (not e!1206756))))

(declare-datatypes ((LexerInterface!3353 0))(
  ( (LexerInterfaceExt!3350 (__x!13250 Int)) (Lexer!3351) )
))
(declare-fun thiss!13601 () LexerInterface!3353)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189260 (= res!844108 (and ((_ is Lexer!3351) thiss!13601) (>= from!837 0)))))

(assert (=> start!189260 e!1206756))

(assert (=> start!189260 true))

(declare-datatypes ((List!21221 0))(
  ( (Nil!21139) (Cons!21139 (h!26540 (_ BitVec 16)) (t!175388 List!21221)) )
))
(declare-datatypes ((TokenValue!3876 0))(
  ( (FloatLiteralValue!7752 (text!27577 List!21221)) (TokenValueExt!3875 (__x!13251 Int)) (Broken!19380 (value!118155 List!21221)) (Object!3957) (End!3876) (Def!3876) (Underscore!3876) (Match!3876) (Else!3876) (Error!3876) (Case!3876) (If!3876) (Extends!3876) (Abstract!3876) (Class!3876) (Val!3876) (DelimiterValue!7752 (del!3936 List!21221)) (KeywordValue!3882 (value!118156 List!21221)) (CommentValue!7752 (value!118157 List!21221)) (WhitespaceValue!7752 (value!118158 List!21221)) (IndentationValue!3876 (value!118159 List!21221)) (String!24497) (Int32!3876) (Broken!19381 (value!118160 List!21221)) (Boolean!3877) (Unit!35527) (OperatorValue!3879 (op!3936 List!21221)) (IdentifierValue!7752 (value!118161 List!21221)) (IdentifierValue!7753 (value!118162 List!21221)) (WhitespaceValue!7753 (value!118163 List!21221)) (True!7752) (False!7752) (Broken!19382 (value!118164 List!21221)) (Broken!19383 (value!118165 List!21221)) (True!7753) (RightBrace!3876) (RightBracket!3876) (Colon!3876) (Null!3876) (Comma!3876) (LeftBracket!3876) (False!7753) (LeftBrace!3876) (ImaginaryLiteralValue!3876 (text!27578 List!21221)) (StringLiteralValue!11628 (value!118166 List!21221)) (EOFValue!3876 (value!118167 List!21221)) (IdentValue!3876 (value!118168 List!21221)) (DelimiterValue!7753 (value!118169 List!21221)) (DedentValue!3876 (value!118170 List!21221)) (NewLineValue!3876 (value!118171 List!21221)) (IntegerValue!11628 (value!118172 (_ BitVec 32)) (text!27579 List!21221)) (IntegerValue!11629 (value!118173 Int) (text!27580 List!21221)) (Times!3876) (Or!3876) (Equal!3876) (Minus!3876) (Broken!19384 (value!118174 List!21221)) (And!3876) (Div!3876) (LessEqual!3876) (Mod!3876) (Concat!9041) (Not!3876) (Plus!3876) (SpaceValue!3876 (value!118175 List!21221)) (IntegerValue!11630 (value!118176 Int) (text!27581 List!21221)) (StringLiteralValue!11629 (text!27582 List!21221)) (FloatLiteralValue!7753 (text!27583 List!21221)) (BytesLiteralValue!3876 (value!118177 List!21221)) (CommentValue!7753 (value!118178 List!21221)) (StringLiteralValue!11630 (value!118179 List!21221)) (ErrorTokenValue!3876 (msg!3937 List!21221)) )
))
(declare-datatypes ((C!10476 0))(
  ( (C!10477 (val!6190 Int)) )
))
(declare-datatypes ((List!21222 0))(
  ( (Nil!21140) (Cons!21140 (h!26541 C!10476) (t!175389 List!21222)) )
))
(declare-datatypes ((IArray!14041 0))(
  ( (IArray!14042 (innerList!7078 List!21222)) )
))
(declare-datatypes ((Conc!7018 0))(
  ( (Node!7018 (left!16962 Conc!7018) (right!17292 Conc!7018) (csize!14266 Int) (cheight!7229 Int)) (Leaf!10351 (xs!9908 IArray!14041) (csize!14267 Int)) (Empty!7018) )
))
(declare-datatypes ((BalanceConc!13852 0))(
  ( (BalanceConc!13853 (c!308280 Conc!7018)) )
))
(declare-datatypes ((Regex!5165 0))(
  ( (ElementMatch!5165 (c!308281 C!10476)) (Concat!9042 (regOne!10842 Regex!5165) (regTwo!10842 Regex!5165)) (EmptyExpr!5165) (Star!5165 (reg!5494 Regex!5165)) (EmptyLang!5165) (Union!5165 (regOne!10843 Regex!5165) (regTwo!10843 Regex!5165)) )
))
(declare-datatypes ((String!24498 0))(
  ( (String!24499 (value!118180 String)) )
))
(declare-datatypes ((TokenValueInjection!7336 0))(
  ( (TokenValueInjection!7337 (toValue!5345 Int) (toChars!5204 Int)) )
))
(declare-datatypes ((Rule!7280 0))(
  ( (Rule!7281 (regex!3740 Regex!5165) (tag!4154 String!24498) (isSeparator!3740 Bool) (transformation!3740 TokenValueInjection!7336)) )
))
(declare-datatypes ((Token!7032 0))(
  ( (Token!7033 (value!118181 TokenValue!3876) (rule!5933 Rule!7280) (size!16751 Int) (originalCharacters!4547 List!21222)) )
))
(declare-datatypes ((List!21223 0))(
  ( (Nil!21141) (Cons!21141 (h!26542 Token!7032) (t!175390 List!21223)) )
))
(declare-datatypes ((IArray!14043 0))(
  ( (IArray!14044 (innerList!7079 List!21223)) )
))
(declare-datatypes ((Conc!7019 0))(
  ( (Node!7019 (left!16963 Conc!7019) (right!17293 Conc!7019) (csize!14268 Int) (cheight!7230 Int)) (Leaf!10352 (xs!9909 IArray!14043) (csize!14269 Int)) (Empty!7019) )
))
(declare-datatypes ((BalanceConc!13854 0))(
  ( (BalanceConc!13855 (c!308282 Conc!7019)) )
))
(declare-fun v!6342 () BalanceConc!13854)

(declare-fun e!1206758 () Bool)

(declare-fun inv!28184 (BalanceConc!13854) Bool)

(assert (=> start!189260 (and (inv!28184 v!6342) e!1206758)))

(declare-fun b!1890372 () Bool)

(declare-fun e!1206757 () Bool)

(assert (=> b!1890372 (= e!1206756 e!1206757)))

(declare-fun res!844109 () Bool)

(assert (=> b!1890372 (=> (not res!844109) (not e!1206757))))

(declare-fun lt!723954 () Int)

(assert (=> b!1890372 (= res!844109 (and (<= from!837 lt!723954) (< from!837 lt!723954)))))

(declare-fun size!16752 (BalanceConc!13854) Int)

(assert (=> b!1890372 (= lt!723954 (size!16752 v!6342))))

(declare-fun b!1890373 () Bool)

(assert (=> b!1890373 (= e!1206757 (not true))))

(declare-fun lt!723953 () Int)

(declare-fun lt!723956 () List!21223)

(declare-fun size!16753 (List!21223) Int)

(assert (=> b!1890373 (= lt!723953 (size!16753 lt!723956))))

(declare-fun head!4388 (List!21223) Token!7032)

(declare-fun drop!1039 (List!21223 Int) List!21223)

(declare-fun apply!5557 (List!21223 Int) Token!7032)

(assert (=> b!1890373 (= (head!4388 (drop!1039 lt!723956 from!837)) (apply!5557 lt!723956 from!837))))

(declare-datatypes ((Unit!35528 0))(
  ( (Unit!35529) )
))
(declare-fun lt!723955 () Unit!35528)

(declare-fun lemmaDropApply!674 (List!21223 Int) Unit!35528)

(assert (=> b!1890373 (= lt!723955 (lemmaDropApply!674 lt!723956 from!837))))

(declare-fun list!8575 (BalanceConc!13854) List!21223)

(assert (=> b!1890373 (= lt!723956 (list!8575 v!6342))))

(declare-fun b!1890374 () Bool)

(declare-fun tp!539266 () Bool)

(declare-fun inv!28185 (Conc!7019) Bool)

(assert (=> b!1890374 (= e!1206758 (and (inv!28185 (c!308282 v!6342)) tp!539266))))

(assert (= (and start!189260 res!844108) b!1890372))

(assert (= (and b!1890372 res!844109) b!1890373))

(assert (= start!189260 b!1890374))

(declare-fun m!2321017 () Bool)

(assert (=> start!189260 m!2321017))

(declare-fun m!2321019 () Bool)

(assert (=> b!1890372 m!2321019))

(declare-fun m!2321021 () Bool)

(assert (=> b!1890373 m!2321021))

(declare-fun m!2321023 () Bool)

(assert (=> b!1890373 m!2321023))

(declare-fun m!2321025 () Bool)

(assert (=> b!1890373 m!2321025))

(assert (=> b!1890373 m!2321023))

(declare-fun m!2321027 () Bool)

(assert (=> b!1890373 m!2321027))

(declare-fun m!2321029 () Bool)

(assert (=> b!1890373 m!2321029))

(declare-fun m!2321031 () Bool)

(assert (=> b!1890373 m!2321031))

(declare-fun m!2321033 () Bool)

(assert (=> b!1890374 m!2321033))

(check-sat (not b!1890373) (not b!1890372) (not start!189260) (not b!1890374))
(check-sat)
