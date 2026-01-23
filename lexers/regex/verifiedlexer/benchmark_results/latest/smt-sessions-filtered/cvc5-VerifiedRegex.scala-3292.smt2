; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188850 () Bool)

(assert start!188850)

(declare-fun res!841779 () Bool)

(declare-fun e!1203359 () Bool)

(assert (=> start!188850 (=> (not res!841779) (not e!1203359))))

(declare-fun from!519 () Int)

(assert (=> start!188850 (= res!841779 (<= 0 from!519))))

(assert (=> start!188850 e!1203359))

(assert (=> start!188850 true))

(declare-datatypes ((List!21094 0))(
  ( (Nil!21012) (Cons!21012 (h!26413 (_ BitVec 16)) (t!175093 List!21094)) )
))
(declare-datatypes ((TokenValue!3859 0))(
  ( (FloatLiteralValue!7718 (text!27458 List!21094)) (TokenValueExt!3858 (__x!13220 Int)) (Broken!19295 (value!117576 List!21094)) (Object!3940) (End!3859) (Def!3859) (Underscore!3859) (Match!3859) (Else!3859) (Error!3859) (Case!3859) (If!3859) (Extends!3859) (Abstract!3859) (Class!3859) (Val!3859) (DelimiterValue!7718 (del!3919 List!21094)) (KeywordValue!3865 (value!117577 List!21094)) (CommentValue!7718 (value!117578 List!21094)) (WhitespaceValue!7718 (value!117579 List!21094)) (IndentationValue!3859 (value!117580 List!21094)) (String!24286) (Int32!3859) (Broken!19296 (value!117581 List!21094)) (Boolean!3860) (Unit!35472) (OperatorValue!3862 (op!3919 List!21094)) (IdentifierValue!7718 (value!117582 List!21094)) (IdentifierValue!7719 (value!117583 List!21094)) (WhitespaceValue!7719 (value!117584 List!21094)) (True!7718) (False!7718) (Broken!19297 (value!117585 List!21094)) (Broken!19298 (value!117586 List!21094)) (True!7719) (RightBrace!3859) (RightBracket!3859) (Colon!3859) (Null!3859) (Comma!3859) (LeftBracket!3859) (False!7719) (LeftBrace!3859) (ImaginaryLiteralValue!3859 (text!27459 List!21094)) (StringLiteralValue!11577 (value!117587 List!21094)) (EOFValue!3859 (value!117588 List!21094)) (IdentValue!3859 (value!117589 List!21094)) (DelimiterValue!7719 (value!117590 List!21094)) (DedentValue!3859 (value!117591 List!21094)) (NewLineValue!3859 (value!117592 List!21094)) (IntegerValue!11577 (value!117593 (_ BitVec 32)) (text!27460 List!21094)) (IntegerValue!11578 (value!117594 Int) (text!27461 List!21094)) (Times!3859) (Or!3859) (Equal!3859) (Minus!3859) (Broken!19299 (value!117595 List!21094)) (And!3859) (Div!3859) (LessEqual!3859) (Mod!3859) (Concat!9007) (Not!3859) (Plus!3859) (SpaceValue!3859 (value!117596 List!21094)) (IntegerValue!11579 (value!117597 Int) (text!27462 List!21094)) (StringLiteralValue!11578 (text!27463 List!21094)) (FloatLiteralValue!7719 (text!27464 List!21094)) (BytesLiteralValue!3859 (value!117598 List!21094)) (CommentValue!7719 (value!117599 List!21094)) (StringLiteralValue!11579 (value!117600 List!21094)) (ErrorTokenValue!3859 (msg!3920 List!21094)) )
))
(declare-datatypes ((Regex!5148 0))(
  ( (ElementMatch!5148 (c!308077 (_ BitVec 16))) (Concat!9008 (regOne!10808 Regex!5148) (regTwo!10808 Regex!5148)) (EmptyExpr!5148) (Star!5148 (reg!5477 Regex!5148)) (EmptyLang!5148) (Union!5148 (regOne!10809 Regex!5148) (regTwo!10809 Regex!5148)) )
))
(declare-datatypes ((String!24287 0))(
  ( (String!24288 (value!117601 String)) )
))
(declare-datatypes ((IArray!13989 0))(
  ( (IArray!13990 (innerList!7052 List!21094)) )
))
(declare-datatypes ((Conc!6992 0))(
  ( (Node!6992 (left!16880 Conc!6992) (right!17210 Conc!6992) (csize!14214 Int) (cheight!7203 Int)) (Leaf!10285 (xs!9882 IArray!13989) (csize!14215 Int)) (Empty!6992) )
))
(declare-datatypes ((BalanceConc!13800 0))(
  ( (BalanceConc!13801 (c!308078 Conc!6992)) )
))
(declare-datatypes ((TokenValueInjection!7302 0))(
  ( (TokenValueInjection!7303 (toValue!5328 Int) (toChars!5187 Int)) )
))
(declare-datatypes ((Rule!7246 0))(
  ( (Rule!7247 (regex!3723 Regex!5148) (tag!4137 String!24287) (isSeparator!3723 Bool) (transformation!3723 TokenValueInjection!7302)) )
))
(declare-datatypes ((Token!6998 0))(
  ( (Token!6999 (value!117602 TokenValue!3859) (rule!5916 Rule!7246) (size!16700 Int) (originalCharacters!4530 List!21094)) )
))
(declare-datatypes ((List!21095 0))(
  ( (Nil!21013) (Cons!21013 (h!26414 Token!6998) (t!175094 List!21095)) )
))
(declare-datatypes ((IArray!13991 0))(
  ( (IArray!13992 (innerList!7053 List!21095)) )
))
(declare-datatypes ((Conc!6993 0))(
  ( (Node!6993 (left!16881 Conc!6993) (right!17211 Conc!6993) (csize!14216 Int) (cheight!7204 Int)) (Leaf!10286 (xs!9883 IArray!13991) (csize!14217 Int)) (Empty!6993) )
))
(declare-datatypes ((List!21096 0))(
  ( (Nil!21014) (Cons!21014 (h!26415 Rule!7246) (t!175095 List!21096)) )
))
(declare-datatypes ((BalanceConc!13802 0))(
  ( (BalanceConc!13803 (c!308079 Conc!6993)) )
))
(declare-datatypes ((PrintableTokens!1258 0))(
  ( (PrintableTokens!1259 (rules!15069 List!21096) (tokens!2461 BalanceConc!13802)) )
))
(declare-fun obj!5 () PrintableTokens!1258)

(declare-fun e!1203358 () Bool)

(declare-fun inv!28016 (PrintableTokens!1258) Bool)

(assert (=> start!188850 (and (inv!28016 obj!5) e!1203358)))

(declare-fun b!1886005 () Bool)

(declare-fun lt!723463 () Int)

(assert (=> b!1886005 (= e!1203359 (and (<= from!519 lt!723463) (< (- lt!723463 from!519) 0)))))

(declare-fun size!16701 (PrintableTokens!1258) Int)

(assert (=> b!1886005 (= lt!723463 (size!16701 obj!5))))

(declare-fun b!1886007 () Bool)

(declare-fun e!1203357 () Bool)

(declare-fun tp!537707 () Bool)

(declare-fun inv!28017 (Conc!6993) Bool)

(assert (=> b!1886007 (= e!1203357 (and (inv!28017 (c!308079 (tokens!2461 obj!5))) tp!537707))))

(declare-fun b!1886006 () Bool)

(declare-fun tp!537708 () Bool)

(declare-fun inv!28018 (BalanceConc!13802) Bool)

(assert (=> b!1886006 (= e!1203358 (and tp!537708 (inv!28018 (tokens!2461 obj!5)) e!1203357))))

(assert (= (and start!188850 res!841779) b!1886005))

(assert (= b!1886006 b!1886007))

(assert (= start!188850 b!1886006))

(declare-fun m!2318795 () Bool)

(assert (=> start!188850 m!2318795))

(declare-fun m!2318797 () Bool)

(assert (=> b!1886005 m!2318797))

(declare-fun m!2318799 () Bool)

(assert (=> b!1886007 m!2318799))

(declare-fun m!2318801 () Bool)

(assert (=> b!1886006 m!2318801))

(push 1)

(assert (not start!188850))

(assert (not b!1886005))

(assert (not b!1886006))

(assert (not b!1886007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

