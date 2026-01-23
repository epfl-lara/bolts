; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189276 () Bool)

(assert start!189276)

(declare-fun res!844156 () Bool)

(declare-fun e!1206828 () Bool)

(assert (=> start!189276 (=> (not res!844156) (not e!1206828))))

(declare-datatypes ((LexerInterface!3361 0))(
  ( (LexerInterfaceExt!3358 (__x!13266 Int)) (Lexer!3359) )
))
(declare-fun thiss!13601 () LexerInterface!3361)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189276 (= res!844156 (and ((_ is Lexer!3359) thiss!13601) (>= from!837 0)))))

(assert (=> start!189276 e!1206828))

(assert (=> start!189276 true))

(declare-datatypes ((List!21245 0))(
  ( (Nil!21163) (Cons!21163 (h!26564 (_ BitVec 16)) (t!175412 List!21245)) )
))
(declare-datatypes ((TokenValue!3884 0))(
  ( (FloatLiteralValue!7768 (text!27633 List!21245)) (TokenValueExt!3883 (__x!13267 Int)) (Broken!19420 (value!118383 List!21245)) (Object!3965) (End!3884) (Def!3884) (Underscore!3884) (Match!3884) (Else!3884) (Error!3884) (Case!3884) (If!3884) (Extends!3884) (Abstract!3884) (Class!3884) (Val!3884) (DelimiterValue!7768 (del!3944 List!21245)) (KeywordValue!3890 (value!118384 List!21245)) (CommentValue!7768 (value!118385 List!21245)) (WhitespaceValue!7768 (value!118386 List!21245)) (IndentationValue!3884 (value!118387 List!21245)) (String!24537) (Int32!3884) (Broken!19421 (value!118388 List!21245)) (Boolean!3885) (Unit!35551) (OperatorValue!3887 (op!3944 List!21245)) (IdentifierValue!7768 (value!118389 List!21245)) (IdentifierValue!7769 (value!118390 List!21245)) (WhitespaceValue!7769 (value!118391 List!21245)) (True!7768) (False!7768) (Broken!19422 (value!118392 List!21245)) (Broken!19423 (value!118393 List!21245)) (True!7769) (RightBrace!3884) (RightBracket!3884) (Colon!3884) (Null!3884) (Comma!3884) (LeftBracket!3884) (False!7769) (LeftBrace!3884) (ImaginaryLiteralValue!3884 (text!27634 List!21245)) (StringLiteralValue!11652 (value!118394 List!21245)) (EOFValue!3884 (value!118395 List!21245)) (IdentValue!3884 (value!118396 List!21245)) (DelimiterValue!7769 (value!118397 List!21245)) (DedentValue!3884 (value!118398 List!21245)) (NewLineValue!3884 (value!118399 List!21245)) (IntegerValue!11652 (value!118400 (_ BitVec 32)) (text!27635 List!21245)) (IntegerValue!11653 (value!118401 Int) (text!27636 List!21245)) (Times!3884) (Or!3884) (Equal!3884) (Minus!3884) (Broken!19424 (value!118402 List!21245)) (And!3884) (Div!3884) (LessEqual!3884) (Mod!3884) (Concat!9057) (Not!3884) (Plus!3884) (SpaceValue!3884 (value!118403 List!21245)) (IntegerValue!11654 (value!118404 Int) (text!27637 List!21245)) (StringLiteralValue!11653 (text!27638 List!21245)) (FloatLiteralValue!7769 (text!27639 List!21245)) (BytesLiteralValue!3884 (value!118405 List!21245)) (CommentValue!7769 (value!118406 List!21245)) (StringLiteralValue!11654 (value!118407 List!21245)) (ErrorTokenValue!3884 (msg!3945 List!21245)) )
))
(declare-datatypes ((C!10492 0))(
  ( (C!10493 (val!6198 Int)) )
))
(declare-datatypes ((List!21246 0))(
  ( (Nil!21164) (Cons!21164 (h!26565 C!10492) (t!175413 List!21246)) )
))
(declare-datatypes ((IArray!14073 0))(
  ( (IArray!14074 (innerList!7094 List!21246)) )
))
(declare-datatypes ((Conc!7034 0))(
  ( (Node!7034 (left!16982 Conc!7034) (right!17312 Conc!7034) (csize!14298 Int) (cheight!7245 Int)) (Leaf!10371 (xs!9924 IArray!14073) (csize!14299 Int)) (Empty!7034) )
))
(declare-datatypes ((BalanceConc!13884 0))(
  ( (BalanceConc!13885 (c!308304 Conc!7034)) )
))
(declare-datatypes ((Regex!5173 0))(
  ( (ElementMatch!5173 (c!308305 C!10492)) (Concat!9058 (regOne!10858 Regex!5173) (regTwo!10858 Regex!5173)) (EmptyExpr!5173) (Star!5173 (reg!5502 Regex!5173)) (EmptyLang!5173) (Union!5173 (regOne!10859 Regex!5173) (regTwo!10859 Regex!5173)) )
))
(declare-datatypes ((String!24538 0))(
  ( (String!24539 (value!118408 String)) )
))
(declare-datatypes ((TokenValueInjection!7352 0))(
  ( (TokenValueInjection!7353 (toValue!5353 Int) (toChars!5212 Int)) )
))
(declare-datatypes ((Rule!7296 0))(
  ( (Rule!7297 (regex!3748 Regex!5173) (tag!4162 String!24538) (isSeparator!3748 Bool) (transformation!3748 TokenValueInjection!7352)) )
))
(declare-datatypes ((Token!7048 0))(
  ( (Token!7049 (value!118409 TokenValue!3884) (rule!5941 Rule!7296) (size!16768 Int) (originalCharacters!4555 List!21246)) )
))
(declare-datatypes ((List!21247 0))(
  ( (Nil!21165) (Cons!21165 (h!26566 Token!7048) (t!175414 List!21247)) )
))
(declare-datatypes ((IArray!14075 0))(
  ( (IArray!14076 (innerList!7095 List!21247)) )
))
(declare-datatypes ((Conc!7035 0))(
  ( (Node!7035 (left!16983 Conc!7035) (right!17313 Conc!7035) (csize!14300 Int) (cheight!7246 Int)) (Leaf!10372 (xs!9925 IArray!14075) (csize!14301 Int)) (Empty!7035) )
))
(declare-datatypes ((BalanceConc!13886 0))(
  ( (BalanceConc!13887 (c!308306 Conc!7035)) )
))
(declare-fun v!6342 () BalanceConc!13886)

(declare-fun e!1206830 () Bool)

(declare-fun inv!28212 (BalanceConc!13886) Bool)

(assert (=> start!189276 (and (inv!28212 v!6342) e!1206830)))

(declare-fun b!1890444 () Bool)

(declare-fun e!1206829 () Bool)

(assert (=> b!1890444 (= e!1206828 e!1206829)))

(declare-fun res!844157 () Bool)

(assert (=> b!1890444 (=> (not res!844157) (not e!1206829))))

(declare-fun lt!724100 () Int)

(assert (=> b!1890444 (= res!844157 (and (<= from!837 lt!724100) (< from!837 lt!724100)))))

(declare-fun size!16769 (BalanceConc!13886) Int)

(assert (=> b!1890444 (= lt!724100 (size!16769 v!6342))))

(declare-fun b!1890445 () Bool)

(assert (=> b!1890445 (= e!1206829 (not true))))

(declare-fun lt!724096 () List!21247)

(declare-fun dropList!760 (BalanceConc!13886 Int) List!21247)

(assert (=> b!1890445 (= lt!724096 (dropList!760 v!6342 from!837))))

(declare-fun lt!724097 () BalanceConc!13884)

(declare-fun ++!5709 (BalanceConc!13884 BalanceConc!13884) BalanceConc!13884)

(declare-fun charsOf!2310 (Token!7048) BalanceConc!13884)

(declare-fun apply!5570 (BalanceConc!13886 Int) Token!7048)

(declare-fun printRec!2 (LexerInterface!3361 BalanceConc!13886 Int) BalanceConc!13884)

(assert (=> b!1890445 (= lt!724097 (++!5709 (charsOf!2310 (apply!5570 v!6342 from!837)) (printRec!2 thiss!13601 v!6342 (+ 1 from!837))))))

(declare-fun lt!724094 () List!21247)

(declare-fun lt!724099 () List!21247)

(declare-fun tail!2923 (List!21247) List!21247)

(declare-fun drop!1047 (List!21247 Int) List!21247)

(assert (=> b!1890445 (= (tail!2923 lt!724094) (drop!1047 lt!724099 (+ 1 from!837)))))

(declare-datatypes ((Unit!35552 0))(
  ( (Unit!35553) )
))
(declare-fun lt!724098 () Unit!35552)

(declare-fun lemmaDropTail!660 (List!21247 Int) Unit!35552)

(assert (=> b!1890445 (= lt!724098 (lemmaDropTail!660 lt!724099 from!837))))

(declare-fun head!4396 (List!21247) Token!7048)

(declare-fun apply!5571 (List!21247 Int) Token!7048)

(assert (=> b!1890445 (= (head!4396 lt!724094) (apply!5571 lt!724099 from!837))))

(assert (=> b!1890445 (= lt!724094 (drop!1047 lt!724099 from!837))))

(declare-fun lt!724095 () Unit!35552)

(declare-fun lemmaDropApply!682 (List!21247 Int) Unit!35552)

(assert (=> b!1890445 (= lt!724095 (lemmaDropApply!682 lt!724099 from!837))))

(declare-fun list!8583 (BalanceConc!13886) List!21247)

(assert (=> b!1890445 (= lt!724099 (list!8583 v!6342))))

(declare-fun b!1890446 () Bool)

(declare-fun tp!539290 () Bool)

(declare-fun inv!28213 (Conc!7035) Bool)

(assert (=> b!1890446 (= e!1206830 (and (inv!28213 (c!308306 v!6342)) tp!539290))))

(assert (= (and start!189276 res!844156) b!1890444))

(assert (= (and b!1890444 res!844157) b!1890445))

(assert (= start!189276 b!1890446))

(declare-fun m!2321215 () Bool)

(assert (=> start!189276 m!2321215))

(declare-fun m!2321217 () Bool)

(assert (=> b!1890444 m!2321217))

(declare-fun m!2321219 () Bool)

(assert (=> b!1890445 m!2321219))

(declare-fun m!2321221 () Bool)

(assert (=> b!1890445 m!2321221))

(declare-fun m!2321223 () Bool)

(assert (=> b!1890445 m!2321223))

(declare-fun m!2321225 () Bool)

(assert (=> b!1890445 m!2321225))

(declare-fun m!2321227 () Bool)

(assert (=> b!1890445 m!2321227))

(declare-fun m!2321229 () Bool)

(assert (=> b!1890445 m!2321229))

(declare-fun m!2321231 () Bool)

(assert (=> b!1890445 m!2321231))

(declare-fun m!2321233 () Bool)

(assert (=> b!1890445 m!2321233))

(declare-fun m!2321235 () Bool)

(assert (=> b!1890445 m!2321235))

(declare-fun m!2321237 () Bool)

(assert (=> b!1890445 m!2321237))

(assert (=> b!1890445 m!2321227))

(declare-fun m!2321239 () Bool)

(assert (=> b!1890445 m!2321239))

(declare-fun m!2321241 () Bool)

(assert (=> b!1890445 m!2321241))

(assert (=> b!1890445 m!2321239))

(assert (=> b!1890445 m!2321229))

(declare-fun m!2321243 () Bool)

(assert (=> b!1890445 m!2321243))

(declare-fun m!2321245 () Bool)

(assert (=> b!1890446 m!2321245))

(check-sat (not b!1890446) (not start!189276) (not b!1890445) (not b!1890444))
(check-sat)
