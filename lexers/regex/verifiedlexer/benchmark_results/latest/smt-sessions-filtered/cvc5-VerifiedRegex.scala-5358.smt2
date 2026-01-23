; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!273408 () Bool)

(assert start!273408)

(declare-fun b!2818528 () Bool)

(declare-fun b_free!80461 () Bool)

(declare-fun b_next!81165 () Bool)

(assert (=> b!2818528 (= b_free!80461 (not b_next!81165))))

(declare-fun tp!899934 () Bool)

(declare-fun b_and!205799 () Bool)

(assert (=> b!2818528 (= tp!899934 b_and!205799)))

(declare-fun b_free!80463 () Bool)

(declare-fun b_next!81167 () Bool)

(assert (=> b!2818528 (= b_free!80463 (not b_next!81167))))

(declare-fun tp!899936 () Bool)

(declare-fun b_and!205801 () Bool)

(assert (=> b!2818528 (= tp!899936 b_and!205801)))

(declare-fun b!2818527 () Bool)

(declare-fun b_free!80465 () Bool)

(declare-fun b_next!81169 () Bool)

(assert (=> b!2818527 (= b_free!80465 (not b_next!81169))))

(declare-fun tp!899933 () Bool)

(declare-fun b_and!205803 () Bool)

(assert (=> b!2818527 (= tp!899933 b_and!205803)))

(declare-fun b_free!80467 () Bool)

(declare-fun b_next!81171 () Bool)

(assert (=> b!2818527 (= b_free!80467 (not b_next!81171))))

(declare-fun tp!899937 () Bool)

(declare-fun b_and!205805 () Bool)

(assert (=> b!2818527 (= tp!899937 b_and!205805)))

(declare-fun res!1172873 () Bool)

(declare-fun e!1782625 () Bool)

(assert (=> start!273408 (=> (not res!1172873) (not e!1782625))))

(declare-datatypes ((LexerInterface!4525 0))(
  ( (LexerInterfaceExt!4522 (__x!22001 Int)) (Lexer!4523) )
))
(declare-fun thiss!27755 () LexerInterface!4525)

(assert (=> start!273408 (= res!1172873 (is-Lexer!4523 thiss!27755))))

(assert (=> start!273408 e!1782625))

(assert (=> start!273408 true))

(declare-fun e!1782636 () Bool)

(assert (=> start!273408 e!1782636))

(declare-fun e!1782635 () Bool)

(assert (=> start!273408 e!1782635))

(declare-fun b!2818516 () Bool)

(declare-fun e!1782628 () Bool)

(declare-fun e!1782629 () Bool)

(assert (=> b!2818516 (= e!1782628 e!1782629)))

(declare-fun res!1172876 () Bool)

(assert (=> b!2818516 (=> (not res!1172876) (not e!1782629))))

(declare-datatypes ((List!33126 0))(
  ( (Nil!33002) (Cons!33002 (h!38422 (_ BitVec 16)) (t!230275 List!33126)) )
))
(declare-datatypes ((TokenValue!5164 0))(
  ( (FloatLiteralValue!10328 (text!36593 List!33126)) (TokenValueExt!5163 (__x!22002 Int)) (Broken!25820 (value!158914 List!33126)) (Object!5287) (End!5164) (Def!5164) (Underscore!5164) (Match!5164) (Else!5164) (Error!5164) (Case!5164) (If!5164) (Extends!5164) (Abstract!5164) (Class!5164) (Val!5164) (DelimiterValue!10328 (del!5224 List!33126)) (KeywordValue!5170 (value!158915 List!33126)) (CommentValue!10328 (value!158916 List!33126)) (WhitespaceValue!10328 (value!158917 List!33126)) (IndentationValue!5164 (value!158918 List!33126)) (String!36277) (Int32!5164) (Broken!25821 (value!158919 List!33126)) (Boolean!5165) (Unit!46965) (OperatorValue!5167 (op!5224 List!33126)) (IdentifierValue!10328 (value!158920 List!33126)) (IdentifierValue!10329 (value!158921 List!33126)) (WhitespaceValue!10329 (value!158922 List!33126)) (True!10328) (False!10328) (Broken!25822 (value!158923 List!33126)) (Broken!25823 (value!158924 List!33126)) (True!10329) (RightBrace!5164) (RightBracket!5164) (Colon!5164) (Null!5164) (Comma!5164) (LeftBracket!5164) (False!10329) (LeftBrace!5164) (ImaginaryLiteralValue!5164 (text!36594 List!33126)) (StringLiteralValue!15492 (value!158925 List!33126)) (EOFValue!5164 (value!158926 List!33126)) (IdentValue!5164 (value!158927 List!33126)) (DelimiterValue!10329 (value!158928 List!33126)) (DedentValue!5164 (value!158929 List!33126)) (NewLineValue!5164 (value!158930 List!33126)) (IntegerValue!15492 (value!158931 (_ BitVec 32)) (text!36595 List!33126)) (IntegerValue!15493 (value!158932 Int) (text!36596 List!33126)) (Times!5164) (Or!5164) (Equal!5164) (Minus!5164) (Broken!25824 (value!158933 List!33126)) (And!5164) (Div!5164) (LessEqual!5164) (Mod!5164) (Concat!13488) (Not!5164) (Plus!5164) (SpaceValue!5164 (value!158934 List!33126)) (IntegerValue!15494 (value!158935 Int) (text!36597 List!33126)) (StringLiteralValue!15493 (text!36598 List!33126)) (FloatLiteralValue!10329 (text!36599 List!33126)) (BytesLiteralValue!5164 (value!158936 List!33126)) (CommentValue!10329 (value!158937 List!33126)) (StringLiteralValue!15494 (value!158938 List!33126)) (ErrorTokenValue!5164 (msg!5225 List!33126)) )
))
(declare-datatypes ((C!16830 0))(
  ( (C!16831 (val!10395 Int)) )
))
(declare-datatypes ((Regex!8324 0))(
  ( (ElementMatch!8324 (c!456878 C!16830)) (Concat!13489 (regOne!17160 Regex!8324) (regTwo!17160 Regex!8324)) (EmptyExpr!8324) (Star!8324 (reg!8653 Regex!8324)) (EmptyLang!8324) (Union!8324 (regOne!17161 Regex!8324) (regTwo!17161 Regex!8324)) )
))
(declare-datatypes ((String!36278 0))(
  ( (String!36279 (value!158939 String)) )
))
(declare-datatypes ((List!33127 0))(
  ( (Nil!33003) (Cons!33003 (h!38423 C!16830) (t!230276 List!33127)) )
))
(declare-datatypes ((IArray!20487 0))(
  ( (IArray!20488 (innerList!10301 List!33127)) )
))
(declare-datatypes ((Conc!10241 0))(
  ( (Node!10241 (left!24923 Conc!10241) (right!25253 Conc!10241) (csize!20712 Int) (cheight!10452 Int)) (Leaf!15600 (xs!13353 IArray!20487) (csize!20713 Int)) (Empty!10241) )
))
(declare-datatypes ((BalanceConc!20120 0))(
  ( (BalanceConc!20121 (c!456879 Conc!10241)) )
))
(declare-datatypes ((TokenValueInjection!9756 0))(
  ( (TokenValueInjection!9757 (toValue!6948 Int) (toChars!6807 Int)) )
))
(declare-datatypes ((Rule!9668 0))(
  ( (Rule!9669 (regex!4934 Regex!8324) (tag!5438 String!36278) (isSeparator!4934 Bool) (transformation!4934 TokenValueInjection!9756)) )
))
(declare-datatypes ((Token!9270 0))(
  ( (Token!9271 (value!158940 TokenValue!5164) (rule!7362 Rule!9668) (size!25712 Int) (originalCharacters!5666 List!33127)) )
))
(declare-datatypes ((List!33128 0))(
  ( (Nil!33004) (Cons!33004 (h!38424 Token!9270) (t!230277 List!33128)) )
))
(declare-fun lt!1006356 () List!33128)

(declare-datatypes ((List!33129 0))(
  ( (Nil!33005) (Cons!33005 (h!38425 Rule!9668) (t!230278 List!33129)) )
))
(declare-fun rules!4424 () List!33129)

(declare-fun rulesProduceIndividualToken!2063 (LexerInterface!4525 List!33129 Token!9270) Bool)

(assert (=> b!2818516 (= res!1172876 (rulesProduceIndividualToken!2063 thiss!27755 rules!4424 (h!38424 lt!1006356)))))

(declare-fun b!2818517 () Bool)

(declare-fun res!1172879 () Bool)

(assert (=> b!2818517 (=> (not res!1172879) (not e!1782625))))

(declare-fun l!6581 () List!33128)

(declare-fun i!1730 () Int)

(assert (=> b!2818517 (= res!1172879 (and (not (is-Nil!33004 l!6581)) (<= i!1730 0)))))

(declare-fun b!2818518 () Bool)

(declare-fun e!1782626 () Bool)

(declare-fun tp!899932 () Bool)

(assert (=> b!2818518 (= e!1782636 (and e!1782626 tp!899932))))

(declare-fun tp!899939 () Bool)

(declare-fun e!1782630 () Bool)

(declare-fun b!2818519 () Bool)

(declare-fun e!1782634 () Bool)

(declare-fun inv!44923 (String!36278) Bool)

(declare-fun inv!44926 (TokenValueInjection!9756) Bool)

(assert (=> b!2818519 (= e!1782630 (and tp!899939 (inv!44923 (tag!5438 (rule!7362 (h!38424 l!6581)))) (inv!44926 (transformation!4934 (rule!7362 (h!38424 l!6581)))) e!1782634))))

(declare-fun b!2818520 () Bool)

(assert (=> b!2818520 (= e!1782625 (not true))))

(declare-fun rulesProduceEachTokenIndividuallyList!1577 (LexerInterface!4525 List!33129 List!33128) Bool)

(assert (=> b!2818520 (= (rulesProduceEachTokenIndividuallyList!1577 thiss!27755 rules!4424 lt!1006356) e!1782628)))

(declare-fun res!1172877 () Bool)

(assert (=> b!2818520 (=> res!1172877 e!1782628)))

(assert (=> b!2818520 (= res!1172877 (not (is-Cons!33004 lt!1006356)))))

(declare-fun take!528 (List!33128 Int) List!33128)

(assert (=> b!2818520 (= lt!1006356 (take!528 l!6581 i!1730))))

(declare-fun b!2818521 () Bool)

(declare-fun res!1172875 () Bool)

(assert (=> b!2818521 (=> (not res!1172875) (not e!1782625))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!662 (LexerInterface!4525 List!33128 List!33129) Bool)

(assert (=> b!2818521 (= res!1172875 (tokensListTwoByTwoPredicateSeparableList!662 thiss!27755 l!6581 rules!4424))))

(declare-fun e!1782632 () Bool)

(declare-fun b!2818522 () Bool)

(declare-fun tp!899935 () Bool)

(declare-fun inv!44927 (Token!9270) Bool)

(assert (=> b!2818522 (= e!1782635 (and (inv!44927 (h!38424 l!6581)) e!1782632 tp!899935))))

(declare-fun b!2818523 () Bool)

(declare-fun res!1172874 () Bool)

(assert (=> b!2818523 (=> (not res!1172874) (not e!1782625))))

(declare-fun rulesInvariant!3943 (LexerInterface!4525 List!33129) Bool)

(assert (=> b!2818523 (= res!1172874 (rulesInvariant!3943 thiss!27755 rules!4424))))

(declare-fun b!2818524 () Bool)

(declare-fun res!1172878 () Bool)

(assert (=> b!2818524 (=> (not res!1172878) (not e!1782625))))

(assert (=> b!2818524 (= res!1172878 (rulesProduceEachTokenIndividuallyList!1577 thiss!27755 rules!4424 l!6581))))

(declare-fun tp!899931 () Bool)

(declare-fun b!2818525 () Bool)

(declare-fun inv!21 (TokenValue!5164) Bool)

(assert (=> b!2818525 (= e!1782632 (and (inv!21 (value!158940 (h!38424 l!6581))) e!1782630 tp!899931))))

(declare-fun b!2818526 () Bool)

(declare-fun res!1172872 () Bool)

(assert (=> b!2818526 (=> (not res!1172872) (not e!1782625))))

(declare-fun isEmpty!18263 (List!33129) Bool)

(assert (=> b!2818526 (= res!1172872 (not (isEmpty!18263 rules!4424)))))

(assert (=> b!2818527 (= e!1782634 (and tp!899933 tp!899937))))

(declare-fun e!1782633 () Bool)

(assert (=> b!2818528 (= e!1782633 (and tp!899934 tp!899936))))

(declare-fun tp!899938 () Bool)

(declare-fun b!2818529 () Bool)

(assert (=> b!2818529 (= e!1782626 (and tp!899938 (inv!44923 (tag!5438 (h!38425 rules!4424))) (inv!44926 (transformation!4934 (h!38425 rules!4424))) e!1782633))))

(declare-fun b!2818530 () Bool)

(assert (=> b!2818530 (= e!1782629 (rulesProduceEachTokenIndividuallyList!1577 thiss!27755 rules!4424 (t!230277 lt!1006356)))))

(assert (= (and start!273408 res!1172873) b!2818526))

(assert (= (and b!2818526 res!1172872) b!2818523))

(assert (= (and b!2818523 res!1172874) b!2818524))

(assert (= (and b!2818524 res!1172878) b!2818521))

(assert (= (and b!2818521 res!1172875) b!2818517))

(assert (= (and b!2818517 res!1172879) b!2818520))

(assert (= (and b!2818520 (not res!1172877)) b!2818516))

(assert (= (and b!2818516 res!1172876) b!2818530))

(assert (= b!2818529 b!2818528))

(assert (= b!2818518 b!2818529))

(assert (= (and start!273408 (is-Cons!33005 rules!4424)) b!2818518))

(assert (= b!2818519 b!2818527))

(assert (= b!2818525 b!2818519))

(assert (= b!2818522 b!2818525))

(assert (= (and start!273408 (is-Cons!33004 l!6581)) b!2818522))

(declare-fun m!3249367 () Bool)

(assert (=> b!2818519 m!3249367))

(declare-fun m!3249369 () Bool)

(assert (=> b!2818519 m!3249369))

(declare-fun m!3249371 () Bool)

(assert (=> b!2818526 m!3249371))

(declare-fun m!3249373 () Bool)

(assert (=> b!2818523 m!3249373))

(declare-fun m!3249375 () Bool)

(assert (=> b!2818522 m!3249375))

(declare-fun m!3249377 () Bool)

(assert (=> b!2818524 m!3249377))

(declare-fun m!3249379 () Bool)

(assert (=> b!2818530 m!3249379))

(declare-fun m!3249381 () Bool)

(assert (=> b!2818529 m!3249381))

(declare-fun m!3249383 () Bool)

(assert (=> b!2818529 m!3249383))

(declare-fun m!3249385 () Bool)

(assert (=> b!2818520 m!3249385))

(declare-fun m!3249387 () Bool)

(assert (=> b!2818520 m!3249387))

(declare-fun m!3249389 () Bool)

(assert (=> b!2818516 m!3249389))

(declare-fun m!3249391 () Bool)

(assert (=> b!2818525 m!3249391))

(declare-fun m!3249393 () Bool)

(assert (=> b!2818521 m!3249393))

(push 1)

(assert (not b_next!81165))

(assert b_and!205799)

(assert b_and!205801)

(assert (not b!2818516))

(assert (not b!2818520))

(assert (not b!2818519))

(assert (not b!2818524))

(assert (not b!2818529))

(assert (not b!2818518))

(assert (not b!2818526))

(assert (not b_next!81171))

(assert (not b!2818523))

(assert (not b_next!81167))

(assert b_and!205803)

(assert (not b!2818522))

(assert (not b_next!81169))

(assert (not b!2818521))

(assert b_and!205805)

(assert (not b!2818525))

(assert (not b!2818530))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81165))

(assert b_and!205799)

(assert b_and!205805)

(assert b_and!205801)

(assert (not b_next!81171))

(assert (not b_next!81167))

(assert b_and!205803)

(assert (not b_next!81169))

(check-sat)

(pop 1)

