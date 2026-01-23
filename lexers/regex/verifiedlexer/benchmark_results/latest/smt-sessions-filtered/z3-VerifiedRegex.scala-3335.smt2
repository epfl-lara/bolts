; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189272 () Bool)

(assert start!189272)

(declare-fun res!844144 () Bool)

(declare-fun e!1206812 () Bool)

(assert (=> start!189272 (=> (not res!844144) (not e!1206812))))

(declare-datatypes ((LexerInterface!3359 0))(
  ( (LexerInterfaceExt!3356 (__x!13262 Int)) (Lexer!3357) )
))
(declare-fun thiss!13601 () LexerInterface!3359)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189272 (= res!844144 (and ((_ is Lexer!3357) thiss!13601) (>= from!837 0)))))

(assert (=> start!189272 e!1206812))

(assert (=> start!189272 true))

(declare-datatypes ((List!21239 0))(
  ( (Nil!21157) (Cons!21157 (h!26558 (_ BitVec 16)) (t!175406 List!21239)) )
))
(declare-datatypes ((TokenValue!3882 0))(
  ( (FloatLiteralValue!7764 (text!27619 List!21239)) (TokenValueExt!3881 (__x!13263 Int)) (Broken!19410 (value!118326 List!21239)) (Object!3963) (End!3882) (Def!3882) (Underscore!3882) (Match!3882) (Else!3882) (Error!3882) (Case!3882) (If!3882) (Extends!3882) (Abstract!3882) (Class!3882) (Val!3882) (DelimiterValue!7764 (del!3942 List!21239)) (KeywordValue!3888 (value!118327 List!21239)) (CommentValue!7764 (value!118328 List!21239)) (WhitespaceValue!7764 (value!118329 List!21239)) (IndentationValue!3882 (value!118330 List!21239)) (String!24527) (Int32!3882) (Broken!19411 (value!118331 List!21239)) (Boolean!3883) (Unit!35545) (OperatorValue!3885 (op!3942 List!21239)) (IdentifierValue!7764 (value!118332 List!21239)) (IdentifierValue!7765 (value!118333 List!21239)) (WhitespaceValue!7765 (value!118334 List!21239)) (True!7764) (False!7764) (Broken!19412 (value!118335 List!21239)) (Broken!19413 (value!118336 List!21239)) (True!7765) (RightBrace!3882) (RightBracket!3882) (Colon!3882) (Null!3882) (Comma!3882) (LeftBracket!3882) (False!7765) (LeftBrace!3882) (ImaginaryLiteralValue!3882 (text!27620 List!21239)) (StringLiteralValue!11646 (value!118337 List!21239)) (EOFValue!3882 (value!118338 List!21239)) (IdentValue!3882 (value!118339 List!21239)) (DelimiterValue!7765 (value!118340 List!21239)) (DedentValue!3882 (value!118341 List!21239)) (NewLineValue!3882 (value!118342 List!21239)) (IntegerValue!11646 (value!118343 (_ BitVec 32)) (text!27621 List!21239)) (IntegerValue!11647 (value!118344 Int) (text!27622 List!21239)) (Times!3882) (Or!3882) (Equal!3882) (Minus!3882) (Broken!19414 (value!118345 List!21239)) (And!3882) (Div!3882) (LessEqual!3882) (Mod!3882) (Concat!9053) (Not!3882) (Plus!3882) (SpaceValue!3882 (value!118346 List!21239)) (IntegerValue!11648 (value!118347 Int) (text!27623 List!21239)) (StringLiteralValue!11647 (text!27624 List!21239)) (FloatLiteralValue!7765 (text!27625 List!21239)) (BytesLiteralValue!3882 (value!118348 List!21239)) (CommentValue!7765 (value!118349 List!21239)) (StringLiteralValue!11648 (value!118350 List!21239)) (ErrorTokenValue!3882 (msg!3943 List!21239)) )
))
(declare-datatypes ((C!10488 0))(
  ( (C!10489 (val!6196 Int)) )
))
(declare-datatypes ((List!21240 0))(
  ( (Nil!21158) (Cons!21158 (h!26559 C!10488) (t!175407 List!21240)) )
))
(declare-datatypes ((IArray!14065 0))(
  ( (IArray!14066 (innerList!7090 List!21240)) )
))
(declare-datatypes ((Conc!7030 0))(
  ( (Node!7030 (left!16977 Conc!7030) (right!17307 Conc!7030) (csize!14290 Int) (cheight!7241 Int)) (Leaf!10366 (xs!9920 IArray!14065) (csize!14291 Int)) (Empty!7030) )
))
(declare-datatypes ((BalanceConc!13876 0))(
  ( (BalanceConc!13877 (c!308298 Conc!7030)) )
))
(declare-datatypes ((Regex!5171 0))(
  ( (ElementMatch!5171 (c!308299 C!10488)) (Concat!9054 (regOne!10854 Regex!5171) (regTwo!10854 Regex!5171)) (EmptyExpr!5171) (Star!5171 (reg!5500 Regex!5171)) (EmptyLang!5171) (Union!5171 (regOne!10855 Regex!5171) (regTwo!10855 Regex!5171)) )
))
(declare-datatypes ((String!24528 0))(
  ( (String!24529 (value!118351 String)) )
))
(declare-datatypes ((TokenValueInjection!7348 0))(
  ( (TokenValueInjection!7349 (toValue!5351 Int) (toChars!5210 Int)) )
))
(declare-datatypes ((Rule!7292 0))(
  ( (Rule!7293 (regex!3746 Regex!5171) (tag!4160 String!24528) (isSeparator!3746 Bool) (transformation!3746 TokenValueInjection!7348)) )
))
(declare-datatypes ((Token!7044 0))(
  ( (Token!7045 (value!118352 TokenValue!3882) (rule!5939 Rule!7292) (size!16764 Int) (originalCharacters!4553 List!21240)) )
))
(declare-datatypes ((List!21241 0))(
  ( (Nil!21159) (Cons!21159 (h!26560 Token!7044) (t!175408 List!21241)) )
))
(declare-datatypes ((IArray!14067 0))(
  ( (IArray!14068 (innerList!7091 List!21241)) )
))
(declare-datatypes ((Conc!7031 0))(
  ( (Node!7031 (left!16978 Conc!7031) (right!17308 Conc!7031) (csize!14292 Int) (cheight!7242 Int)) (Leaf!10367 (xs!9921 IArray!14067) (csize!14293 Int)) (Empty!7031) )
))
(declare-datatypes ((BalanceConc!13878 0))(
  ( (BalanceConc!13879 (c!308300 Conc!7031)) )
))
(declare-fun v!6342 () BalanceConc!13878)

(declare-fun e!1206810 () Bool)

(declare-fun inv!28205 (BalanceConc!13878) Bool)

(assert (=> start!189272 (and (inv!28205 v!6342) e!1206810)))

(declare-fun b!1890426 () Bool)

(declare-fun e!1206811 () Bool)

(assert (=> b!1890426 (= e!1206812 e!1206811)))

(declare-fun res!844145 () Bool)

(assert (=> b!1890426 (=> (not res!844145) (not e!1206811))))

(declare-fun lt!724054 () Int)

(assert (=> b!1890426 (= res!844145 (and (<= from!837 lt!724054) (< from!837 lt!724054)))))

(declare-fun size!16765 (BalanceConc!13878) Int)

(assert (=> b!1890426 (= lt!724054 (size!16765 v!6342))))

(declare-fun b!1890427 () Bool)

(assert (=> b!1890427 (= e!1206811 (not (and (>= (+ 1 from!837) 0) (<= (+ 1 from!837) lt!724054))))))

(declare-fun lt!724056 () BalanceConc!13876)

(declare-fun charsOf!2308 (Token!7044) BalanceConc!13876)

(declare-fun apply!5566 (BalanceConc!13878 Int) Token!7044)

(assert (=> b!1890427 (= lt!724056 (charsOf!2308 (apply!5566 v!6342 from!837)))))

(declare-fun lt!724055 () List!21241)

(declare-fun lt!724057 () List!21241)

(declare-fun tail!2921 (List!21241) List!21241)

(declare-fun drop!1045 (List!21241 Int) List!21241)

(assert (=> b!1890427 (= (tail!2921 lt!724055) (drop!1045 lt!724057 (+ 1 from!837)))))

(declare-datatypes ((Unit!35546 0))(
  ( (Unit!35547) )
))
(declare-fun lt!724058 () Unit!35546)

(declare-fun lemmaDropTail!658 (List!21241 Int) Unit!35546)

(assert (=> b!1890427 (= lt!724058 (lemmaDropTail!658 lt!724057 from!837))))

(declare-fun head!4394 (List!21241) Token!7044)

(declare-fun apply!5567 (List!21241 Int) Token!7044)

(assert (=> b!1890427 (= (head!4394 lt!724055) (apply!5567 lt!724057 from!837))))

(assert (=> b!1890427 (= lt!724055 (drop!1045 lt!724057 from!837))))

(declare-fun lt!724053 () Unit!35546)

(declare-fun lemmaDropApply!680 (List!21241 Int) Unit!35546)

(assert (=> b!1890427 (= lt!724053 (lemmaDropApply!680 lt!724057 from!837))))

(declare-fun list!8581 (BalanceConc!13878) List!21241)

(assert (=> b!1890427 (= lt!724057 (list!8581 v!6342))))

(declare-fun b!1890428 () Bool)

(declare-fun tp!539284 () Bool)

(declare-fun inv!28206 (Conc!7031) Bool)

(assert (=> b!1890428 (= e!1206810 (and (inv!28206 (c!308300 v!6342)) tp!539284))))

(assert (= (and start!189272 res!844144) b!1890426))

(assert (= (and b!1890426 res!844145) b!1890427))

(assert (= start!189272 b!1890428))

(declare-fun m!2321157 () Bool)

(assert (=> start!189272 m!2321157))

(declare-fun m!2321159 () Bool)

(assert (=> b!1890426 m!2321159))

(declare-fun m!2321161 () Bool)

(assert (=> b!1890427 m!2321161))

(declare-fun m!2321163 () Bool)

(assert (=> b!1890427 m!2321163))

(declare-fun m!2321165 () Bool)

(assert (=> b!1890427 m!2321165))

(declare-fun m!2321167 () Bool)

(assert (=> b!1890427 m!2321167))

(declare-fun m!2321169 () Bool)

(assert (=> b!1890427 m!2321169))

(declare-fun m!2321171 () Bool)

(assert (=> b!1890427 m!2321171))

(declare-fun m!2321173 () Bool)

(assert (=> b!1890427 m!2321173))

(assert (=> b!1890427 m!2321173))

(declare-fun m!2321175 () Bool)

(assert (=> b!1890427 m!2321175))

(declare-fun m!2321177 () Bool)

(assert (=> b!1890427 m!2321177))

(declare-fun m!2321179 () Bool)

(assert (=> b!1890427 m!2321179))

(declare-fun m!2321181 () Bool)

(assert (=> b!1890428 m!2321181))

(check-sat (not b!1890428) (not start!189272) (not b!1890426) (not b!1890427))
(check-sat)
