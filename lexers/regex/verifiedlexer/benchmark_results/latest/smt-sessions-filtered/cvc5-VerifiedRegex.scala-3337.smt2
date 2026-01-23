; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!189278 () Bool)

(assert start!189278)

(declare-fun res!844160 () Bool)

(declare-fun e!1206836 () Bool)

(assert (=> start!189278 (=> (not res!844160) (not e!1206836))))

(declare-datatypes ((LexerInterface!3362 0))(
  ( (LexerInterfaceExt!3359 (__x!13268 Int)) (Lexer!3360) )
))
(declare-fun thiss!13601 () LexerInterface!3362)

(declare-fun from!837 () Int)

(assert (=> start!189278 (= res!844160 (and (is-Lexer!3360 thiss!13601) (>= from!837 0)))))

(assert (=> start!189278 e!1206836))

(assert (=> start!189278 true))

(declare-datatypes ((List!21248 0))(
  ( (Nil!21166) (Cons!21166 (h!26567 (_ BitVec 16)) (t!175415 List!21248)) )
))
(declare-datatypes ((TokenValue!3885 0))(
  ( (FloatLiteralValue!7770 (text!27640 List!21248)) (TokenValueExt!3884 (__x!13269 Int)) (Broken!19425 (value!118413 List!21248)) (Object!3966) (End!3885) (Def!3885) (Underscore!3885) (Match!3885) (Else!3885) (Error!3885) (Case!3885) (If!3885) (Extends!3885) (Abstract!3885) (Class!3885) (Val!3885) (DelimiterValue!7770 (del!3945 List!21248)) (KeywordValue!3891 (value!118414 List!21248)) (CommentValue!7770 (value!118415 List!21248)) (WhitespaceValue!7770 (value!118416 List!21248)) (IndentationValue!3885 (value!118417 List!21248)) (String!24544) (Int32!3885) (Broken!19426 (value!118418 List!21248)) (Boolean!3886) (Unit!35554) (OperatorValue!3888 (op!3945 List!21248)) (IdentifierValue!7770 (value!118419 List!21248)) (IdentifierValue!7771 (value!118420 List!21248)) (WhitespaceValue!7771 (value!118421 List!21248)) (True!7770) (False!7770) (Broken!19427 (value!118422 List!21248)) (Broken!19428 (value!118423 List!21248)) (True!7771) (RightBrace!3885) (RightBracket!3885) (Colon!3885) (Null!3885) (Comma!3885) (LeftBracket!3885) (False!7771) (LeftBrace!3885) (ImaginaryLiteralValue!3885 (text!27641 List!21248)) (StringLiteralValue!11655 (value!118424 List!21248)) (EOFValue!3885 (value!118425 List!21248)) (IdentValue!3885 (value!118426 List!21248)) (DelimiterValue!7771 (value!118427 List!21248)) (DedentValue!3885 (value!118428 List!21248)) (NewLineValue!3885 (value!118429 List!21248)) (IntegerValue!11655 (value!118430 (_ BitVec 32)) (text!27642 List!21248)) (IntegerValue!11656 (value!118431 Int) (text!27643 List!21248)) (Times!3885) (Or!3885) (Equal!3885) (Minus!3885) (Broken!19429 (value!118432 List!21248)) (And!3885) (Div!3885) (LessEqual!3885) (Mod!3885) (Concat!9059) (Not!3885) (Plus!3885) (SpaceValue!3885 (value!118433 List!21248)) (IntegerValue!11657 (value!118434 Int) (text!27644 List!21248)) (StringLiteralValue!11656 (text!27645 List!21248)) (FloatLiteralValue!7771 (text!27646 List!21248)) (BytesLiteralValue!3885 (value!118435 List!21248)) (CommentValue!7771 (value!118436 List!21248)) (StringLiteralValue!11657 (value!118437 List!21248)) (ErrorTokenValue!3885 (msg!3946 List!21248)) )
))
(declare-datatypes ((C!10494 0))(
  ( (C!10495 (val!6199 Int)) )
))
(declare-datatypes ((List!21249 0))(
  ( (Nil!21167) (Cons!21167 (h!26568 C!10494) (t!175416 List!21249)) )
))
(declare-datatypes ((IArray!14077 0))(
  ( (IArray!14078 (innerList!7096 List!21249)) )
))
(declare-datatypes ((Conc!7036 0))(
  ( (Node!7036 (left!16985 Conc!7036) (right!17315 Conc!7036) (csize!14302 Int) (cheight!7247 Int)) (Leaf!10374 (xs!9926 IArray!14077) (csize!14303 Int)) (Empty!7036) )
))
(declare-datatypes ((BalanceConc!13888 0))(
  ( (BalanceConc!13889 (c!308307 Conc!7036)) )
))
(declare-datatypes ((Regex!5174 0))(
  ( (ElementMatch!5174 (c!308308 C!10494)) (Concat!9060 (regOne!10860 Regex!5174) (regTwo!10860 Regex!5174)) (EmptyExpr!5174) (Star!5174 (reg!5503 Regex!5174)) (EmptyLang!5174) (Union!5174 (regOne!10861 Regex!5174) (regTwo!10861 Regex!5174)) )
))
(declare-datatypes ((String!24545 0))(
  ( (String!24546 (value!118438 String)) )
))
(declare-datatypes ((TokenValueInjection!7354 0))(
  ( (TokenValueInjection!7355 (toValue!5354 Int) (toChars!5213 Int)) )
))
(declare-datatypes ((Rule!7298 0))(
  ( (Rule!7299 (regex!3749 Regex!5174) (tag!4163 String!24545) (isSeparator!3749 Bool) (transformation!3749 TokenValueInjection!7354)) )
))
(declare-datatypes ((Token!7050 0))(
  ( (Token!7051 (value!118439 TokenValue!3885) (rule!5942 Rule!7298) (size!16770 Int) (originalCharacters!4556 List!21249)) )
))
(declare-datatypes ((List!21250 0))(
  ( (Nil!21168) (Cons!21168 (h!26569 Token!7050) (t!175417 List!21250)) )
))
(declare-datatypes ((IArray!14079 0))(
  ( (IArray!14080 (innerList!7097 List!21250)) )
))
(declare-datatypes ((Conc!7037 0))(
  ( (Node!7037 (left!16986 Conc!7037) (right!17316 Conc!7037) (csize!14304 Int) (cheight!7248 Int)) (Leaf!10375 (xs!9927 IArray!14079) (csize!14305 Int)) (Empty!7037) )
))
(declare-datatypes ((BalanceConc!13890 0))(
  ( (BalanceConc!13891 (c!308309 Conc!7037)) )
))
(declare-fun v!6342 () BalanceConc!13890)

(declare-fun e!1206835 () Bool)

(declare-fun inv!28217 (BalanceConc!13890) Bool)

(assert (=> start!189278 (and (inv!28217 v!6342) e!1206835)))

(declare-fun b!1890451 () Bool)

(declare-fun lt!724103 () Int)

(assert (=> b!1890451 (= e!1206836 (and (<= from!837 lt!724103) (< (- lt!724103 from!837) 0)))))

(declare-fun size!16771 (BalanceConc!13890) Int)

(assert (=> b!1890451 (= lt!724103 (size!16771 v!6342))))

(declare-fun b!1890452 () Bool)

(declare-fun tp!539293 () Bool)

(declare-fun inv!28218 (Conc!7037) Bool)

(assert (=> b!1890452 (= e!1206835 (and (inv!28218 (c!308309 v!6342)) tp!539293))))

(assert (= (and start!189278 res!844160) b!1890451))

(assert (= start!189278 b!1890452))

(declare-fun m!2321247 () Bool)

(assert (=> start!189278 m!2321247))

(declare-fun m!2321249 () Bool)

(assert (=> b!1890451 m!2321249))

(declare-fun m!2321251 () Bool)

(assert (=> b!1890452 m!2321251))

(push 1)

(assert (not start!189278))

(assert (not b!1890452))

(assert (not b!1890451))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

