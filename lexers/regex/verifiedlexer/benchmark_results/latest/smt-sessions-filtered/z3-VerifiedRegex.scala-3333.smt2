; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189264 () Bool)

(assert start!189264)

(declare-fun res!844120 () Bool)

(declare-fun e!1206775 () Bool)

(assert (=> start!189264 (=> (not res!844120) (not e!1206775))))

(declare-datatypes ((LexerInterface!3355 0))(
  ( (LexerInterfaceExt!3352 (__x!13254 Int)) (Lexer!3353) )
))
(declare-fun thiss!13601 () LexerInterface!3355)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189264 (= res!844120 (and ((_ is Lexer!3353) thiss!13601) (>= from!837 0)))))

(assert (=> start!189264 e!1206775))

(assert (=> start!189264 true))

(declare-datatypes ((List!21227 0))(
  ( (Nil!21145) (Cons!21145 (h!26546 (_ BitVec 16)) (t!175394 List!21227)) )
))
(declare-datatypes ((TokenValue!3878 0))(
  ( (FloatLiteralValue!7756 (text!27591 List!21227)) (TokenValueExt!3877 (__x!13255 Int)) (Broken!19390 (value!118212 List!21227)) (Object!3959) (End!3878) (Def!3878) (Underscore!3878) (Match!3878) (Else!3878) (Error!3878) (Case!3878) (If!3878) (Extends!3878) (Abstract!3878) (Class!3878) (Val!3878) (DelimiterValue!7756 (del!3938 List!21227)) (KeywordValue!3884 (value!118213 List!21227)) (CommentValue!7756 (value!118214 List!21227)) (WhitespaceValue!7756 (value!118215 List!21227)) (IndentationValue!3878 (value!118216 List!21227)) (String!24507) (Int32!3878) (Broken!19391 (value!118217 List!21227)) (Boolean!3879) (Unit!35533) (OperatorValue!3881 (op!3938 List!21227)) (IdentifierValue!7756 (value!118218 List!21227)) (IdentifierValue!7757 (value!118219 List!21227)) (WhitespaceValue!7757 (value!118220 List!21227)) (True!7756) (False!7756) (Broken!19392 (value!118221 List!21227)) (Broken!19393 (value!118222 List!21227)) (True!7757) (RightBrace!3878) (RightBracket!3878) (Colon!3878) (Null!3878) (Comma!3878) (LeftBracket!3878) (False!7757) (LeftBrace!3878) (ImaginaryLiteralValue!3878 (text!27592 List!21227)) (StringLiteralValue!11634 (value!118223 List!21227)) (EOFValue!3878 (value!118224 List!21227)) (IdentValue!3878 (value!118225 List!21227)) (DelimiterValue!7757 (value!118226 List!21227)) (DedentValue!3878 (value!118227 List!21227)) (NewLineValue!3878 (value!118228 List!21227)) (IntegerValue!11634 (value!118229 (_ BitVec 32)) (text!27593 List!21227)) (IntegerValue!11635 (value!118230 Int) (text!27594 List!21227)) (Times!3878) (Or!3878) (Equal!3878) (Minus!3878) (Broken!19394 (value!118231 List!21227)) (And!3878) (Div!3878) (LessEqual!3878) (Mod!3878) (Concat!9045) (Not!3878) (Plus!3878) (SpaceValue!3878 (value!118232 List!21227)) (IntegerValue!11636 (value!118233 Int) (text!27595 List!21227)) (StringLiteralValue!11635 (text!27596 List!21227)) (FloatLiteralValue!7757 (text!27597 List!21227)) (BytesLiteralValue!3878 (value!118234 List!21227)) (CommentValue!7757 (value!118235 List!21227)) (StringLiteralValue!11636 (value!118236 List!21227)) (ErrorTokenValue!3878 (msg!3939 List!21227)) )
))
(declare-datatypes ((C!10480 0))(
  ( (C!10481 (val!6192 Int)) )
))
(declare-datatypes ((List!21228 0))(
  ( (Nil!21146) (Cons!21146 (h!26547 C!10480) (t!175395 List!21228)) )
))
(declare-datatypes ((IArray!14049 0))(
  ( (IArray!14050 (innerList!7082 List!21228)) )
))
(declare-datatypes ((Conc!7022 0))(
  ( (Node!7022 (left!16967 Conc!7022) (right!17297 Conc!7022) (csize!14274 Int) (cheight!7233 Int)) (Leaf!10356 (xs!9912 IArray!14049) (csize!14275 Int)) (Empty!7022) )
))
(declare-datatypes ((BalanceConc!13860 0))(
  ( (BalanceConc!13861 (c!308286 Conc!7022)) )
))
(declare-datatypes ((Regex!5167 0))(
  ( (ElementMatch!5167 (c!308287 C!10480)) (Concat!9046 (regOne!10846 Regex!5167) (regTwo!10846 Regex!5167)) (EmptyExpr!5167) (Star!5167 (reg!5496 Regex!5167)) (EmptyLang!5167) (Union!5167 (regOne!10847 Regex!5167) (regTwo!10847 Regex!5167)) )
))
(declare-datatypes ((String!24508 0))(
  ( (String!24509 (value!118237 String)) )
))
(declare-datatypes ((TokenValueInjection!7340 0))(
  ( (TokenValueInjection!7341 (toValue!5347 Int) (toChars!5206 Int)) )
))
(declare-datatypes ((Rule!7284 0))(
  ( (Rule!7285 (regex!3742 Regex!5167) (tag!4156 String!24508) (isSeparator!3742 Bool) (transformation!3742 TokenValueInjection!7340)) )
))
(declare-datatypes ((Token!7036 0))(
  ( (Token!7037 (value!118238 TokenValue!3878) (rule!5935 Rule!7284) (size!16756 Int) (originalCharacters!4549 List!21228)) )
))
(declare-datatypes ((List!21229 0))(
  ( (Nil!21147) (Cons!21147 (h!26548 Token!7036) (t!175396 List!21229)) )
))
(declare-datatypes ((IArray!14051 0))(
  ( (IArray!14052 (innerList!7083 List!21229)) )
))
(declare-datatypes ((Conc!7023 0))(
  ( (Node!7023 (left!16968 Conc!7023) (right!17298 Conc!7023) (csize!14276 Int) (cheight!7234 Int)) (Leaf!10357 (xs!9913 IArray!14051) (csize!14277 Int)) (Empty!7023) )
))
(declare-datatypes ((BalanceConc!13862 0))(
  ( (BalanceConc!13863 (c!308288 Conc!7023)) )
))
(declare-fun v!6342 () BalanceConc!13862)

(declare-fun e!1206776 () Bool)

(declare-fun inv!28191 (BalanceConc!13862) Bool)

(assert (=> start!189264 (and (inv!28191 v!6342) e!1206776)))

(declare-fun b!1890390 () Bool)

(declare-fun e!1206774 () Bool)

(assert (=> b!1890390 (= e!1206775 e!1206774)))

(declare-fun res!844121 () Bool)

(assert (=> b!1890390 (=> (not res!844121) (not e!1206774))))

(declare-fun lt!723984 () Int)

(assert (=> b!1890390 (= res!844121 (and (<= from!837 lt!723984) (< from!837 lt!723984)))))

(declare-fun size!16757 (BalanceConc!13862) Int)

(assert (=> b!1890390 (= lt!723984 (size!16757 v!6342))))

(declare-fun b!1890391 () Bool)

(assert (=> b!1890391 (= e!1206774 (not (<= 0 from!837)))))

(declare-fun lt!723983 () List!21229)

(declare-fun lt!723985 () List!21229)

(declare-fun tail!2917 (List!21229) List!21229)

(declare-fun drop!1041 (List!21229 Int) List!21229)

(assert (=> b!1890391 (= (tail!2917 lt!723983) (drop!1041 lt!723985 (+ 1 from!837)))))

(declare-datatypes ((Unit!35534 0))(
  ( (Unit!35535) )
))
(declare-fun lt!723986 () Unit!35534)

(declare-fun lemmaDropTail!654 (List!21229 Int) Unit!35534)

(assert (=> b!1890391 (= lt!723986 (lemmaDropTail!654 lt!723985 from!837))))

(declare-fun head!4390 (List!21229) Token!7036)

(declare-fun apply!5559 (List!21229 Int) Token!7036)

(assert (=> b!1890391 (= (head!4390 lt!723983) (apply!5559 lt!723985 from!837))))

(assert (=> b!1890391 (= lt!723983 (drop!1041 lt!723985 from!837))))

(declare-fun lt!723982 () Unit!35534)

(declare-fun lemmaDropApply!676 (List!21229 Int) Unit!35534)

(assert (=> b!1890391 (= lt!723982 (lemmaDropApply!676 lt!723985 from!837))))

(declare-fun list!8577 (BalanceConc!13862) List!21229)

(assert (=> b!1890391 (= lt!723985 (list!8577 v!6342))))

(declare-fun b!1890392 () Bool)

(declare-fun tp!539272 () Bool)

(declare-fun inv!28192 (Conc!7023) Bool)

(assert (=> b!1890392 (= e!1206776 (and (inv!28192 (c!308288 v!6342)) tp!539272))))

(assert (= (and start!189264 res!844120) b!1890390))

(assert (= (and b!1890390 res!844121) b!1890391))

(assert (= start!189264 b!1890392))

(declare-fun m!2321057 () Bool)

(assert (=> start!189264 m!2321057))

(declare-fun m!2321059 () Bool)

(assert (=> b!1890390 m!2321059))

(declare-fun m!2321061 () Bool)

(assert (=> b!1890391 m!2321061))

(declare-fun m!2321063 () Bool)

(assert (=> b!1890391 m!2321063))

(declare-fun m!2321065 () Bool)

(assert (=> b!1890391 m!2321065))

(declare-fun m!2321067 () Bool)

(assert (=> b!1890391 m!2321067))

(declare-fun m!2321069 () Bool)

(assert (=> b!1890391 m!2321069))

(declare-fun m!2321071 () Bool)

(assert (=> b!1890391 m!2321071))

(declare-fun m!2321073 () Bool)

(assert (=> b!1890391 m!2321073))

(declare-fun m!2321075 () Bool)

(assert (=> b!1890391 m!2321075))

(declare-fun m!2321077 () Bool)

(assert (=> b!1890392 m!2321077))

(check-sat (not b!1890390) (not b!1890391) (not b!1890392) (not start!189264))
(check-sat)
