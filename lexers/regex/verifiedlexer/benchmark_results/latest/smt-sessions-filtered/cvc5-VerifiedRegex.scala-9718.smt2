; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!508218 () Bool)

(assert start!508218)

(declare-fun b!4862149 () Bool)

(declare-fun b_free!130527 () Bool)

(declare-fun b_next!131317 () Bool)

(assert (=> b!4862149 (= b_free!130527 (not b_next!131317))))

(declare-fun tp!1368102 () Bool)

(declare-fun b_and!342379 () Bool)

(assert (=> b!4862149 (= tp!1368102 b_and!342379)))

(declare-fun b_free!130529 () Bool)

(declare-fun b_next!131319 () Bool)

(assert (=> b!4862149 (= b_free!130529 (not b_next!131319))))

(declare-fun tp!1368105 () Bool)

(declare-fun b_and!342381 () Bool)

(assert (=> b!4862149 (= tp!1368105 b_and!342381)))

(declare-fun res!2075627 () Bool)

(declare-fun e!3039946 () Bool)

(assert (=> start!508218 (=> (not res!2075627) (not e!3039946))))

(declare-datatypes ((LexerInterface!7607 0))(
  ( (LexerInterfaceExt!7604 (__x!33943 Int)) (Lexer!7605) )
))
(declare-fun thiss!11777 () LexerInterface!7607)

(assert (=> start!508218 (= res!2075627 (is-Lexer!7605 thiss!11777))))

(assert (=> start!508218 e!3039946))

(assert (=> start!508218 true))

(declare-fun e!3039944 () Bool)

(assert (=> start!508218 e!3039944))

(declare-datatypes ((C!26378 0))(
  ( (C!26379 (val!22511 Int)) )
))
(declare-datatypes ((List!55994 0))(
  ( (Nil!55870) (Cons!55870 (h!62318 C!26378) (t!363618 List!55994)) )
))
(declare-datatypes ((IArray!29147 0))(
  ( (IArray!29148 (innerList!14631 List!55994)) )
))
(declare-datatypes ((Conc!14543 0))(
  ( (Node!14543 (left!40583 Conc!14543) (right!40913 Conc!14543) (csize!29316 Int) (cheight!14754 Int)) (Leaf!24262 (xs!17849 IArray!29147) (csize!29317 Int)) (Empty!14543) )
))
(declare-datatypes ((BalanceConc!28528 0))(
  ( (BalanceConc!28529 (c!826927 Conc!14543)) )
))
(declare-fun input!661 () BalanceConc!28528)

(declare-fun e!3039948 () Bool)

(declare-fun inv!71759 (BalanceConc!28528) Bool)

(assert (=> start!508218 (and (inv!71759 input!661) e!3039948)))

(declare-fun totalInput!332 () BalanceConc!28528)

(declare-fun e!3039943 () Bool)

(assert (=> start!508218 (and (inv!71759 totalInput!332) e!3039943)))

(declare-fun b!4862142 () Bool)

(assert (=> b!4862142 (= e!3039946 false)))

(declare-datatypes ((List!55995 0))(
  ( (Nil!55871) (Cons!55871 (h!62319 (_ BitVec 16)) (t!363619 List!55995)) )
))
(declare-datatypes ((TokenValue!8325 0))(
  ( (FloatLiteralValue!16650 (text!58720 List!55995)) (TokenValueExt!8324 (__x!33944 Int)) (Broken!41625 (value!257547 List!55995)) (Object!8448) (End!8325) (Def!8325) (Underscore!8325) (Match!8325) (Else!8325) (Error!8325) (Case!8325) (If!8325) (Extends!8325) (Abstract!8325) (Class!8325) (Val!8325) (DelimiterValue!16650 (del!8385 List!55995)) (KeywordValue!8331 (value!257548 List!55995)) (CommentValue!16650 (value!257549 List!55995)) (WhitespaceValue!16650 (value!257550 List!55995)) (IndentationValue!8325 (value!257551 List!55995)) (String!63044) (Int32!8325) (Broken!41626 (value!257552 List!55995)) (Boolean!8326) (Unit!145908) (OperatorValue!8328 (op!8385 List!55995)) (IdentifierValue!16650 (value!257553 List!55995)) (IdentifierValue!16651 (value!257554 List!55995)) (WhitespaceValue!16651 (value!257555 List!55995)) (True!16650) (False!16650) (Broken!41627 (value!257556 List!55995)) (Broken!41628 (value!257557 List!55995)) (True!16651) (RightBrace!8325) (RightBracket!8325) (Colon!8325) (Null!8325) (Comma!8325) (LeftBracket!8325) (False!16651) (LeftBrace!8325) (ImaginaryLiteralValue!8325 (text!58721 List!55995)) (StringLiteralValue!24975 (value!257558 List!55995)) (EOFValue!8325 (value!257559 List!55995)) (IdentValue!8325 (value!257560 List!55995)) (DelimiterValue!16651 (value!257561 List!55995)) (DedentValue!8325 (value!257562 List!55995)) (NewLineValue!8325 (value!257563 List!55995)) (IntegerValue!24975 (value!257564 (_ BitVec 32)) (text!58722 List!55995)) (IntegerValue!24976 (value!257565 Int) (text!58723 List!55995)) (Times!8325) (Or!8325) (Equal!8325) (Minus!8325) (Broken!41629 (value!257566 List!55995)) (And!8325) (Div!8325) (LessEqual!8325) (Mod!8325) (Concat!21415) (Not!8325) (Plus!8325) (SpaceValue!8325 (value!257567 List!55995)) (IntegerValue!24977 (value!257568 Int) (text!58724 List!55995)) (StringLiteralValue!24976 (text!58725 List!55995)) (FloatLiteralValue!16651 (text!58726 List!55995)) (BytesLiteralValue!8325 (value!257569 List!55995)) (CommentValue!16651 (value!257570 List!55995)) (StringLiteralValue!24977 (value!257571 List!55995)) (ErrorTokenValue!8325 (msg!8386 List!55995)) )
))
(declare-datatypes ((TokenValueInjection!15958 0))(
  ( (TokenValueInjection!15959 (toValue!10870 Int) (toChars!10729 Int)) )
))
(declare-datatypes ((String!63045 0))(
  ( (String!63046 (value!257572 String)) )
))
(declare-datatypes ((Regex!13090 0))(
  ( (ElementMatch!13090 (c!826928 C!26378)) (Concat!21416 (regOne!26692 Regex!13090) (regTwo!26692 Regex!13090)) (EmptyExpr!13090) (Star!13090 (reg!13419 Regex!13090)) (EmptyLang!13090) (Union!13090 (regOne!26693 Regex!13090) (regTwo!26693 Regex!13090)) )
))
(declare-datatypes ((Rule!15830 0))(
  ( (Rule!15831 (regex!8015 Regex!13090) (tag!8879 String!63045) (isSeparator!8015 Bool) (transformation!8015 TokenValueInjection!15958)) )
))
(declare-datatypes ((List!55996 0))(
  ( (Nil!55872) (Cons!55872 (h!62320 Rule!15830) (t!363620 List!55996)) )
))
(declare-fun rules!1248 () List!55996)

(declare-datatypes ((Token!14618 0))(
  ( (Token!14619 (value!257573 TokenValue!8325) (rule!11133 Rule!15830) (size!36805 Int) (originalCharacters!8340 List!55994)) )
))
(declare-datatypes ((tuple2!59698 0))(
  ( (tuple2!59699 (_1!33152 Token!14618) (_2!33152 BalanceConc!28528)) )
))
(declare-datatypes ((Option!13760 0))(
  ( (None!13759) (Some!13759 (v!49661 tuple2!59698)) )
))
(declare-fun lt!1992575 () Option!13760)

(declare-fun maxPrefixZipperSequenceV2!614 (LexerInterface!7607 List!55996 BalanceConc!28528 BalanceConc!28528) Option!13760)

(assert (=> b!4862142 (= lt!1992575 (maxPrefixZipperSequenceV2!614 thiss!11777 rules!1248 input!661 totalInput!332))))

(declare-fun b!4862143 () Bool)

(declare-fun res!2075626 () Bool)

(assert (=> b!4862143 (=> (not res!2075626) (not e!3039946))))

(declare-fun isSuffix!1044 (List!55994 List!55994) Bool)

(declare-fun list!17445 (BalanceConc!28528) List!55994)

(assert (=> b!4862143 (= res!2075626 (isSuffix!1044 (list!17445 input!661) (list!17445 totalInput!332)))))

(declare-fun b!4862144 () Bool)

(declare-fun tp!1368100 () Bool)

(declare-fun inv!71760 (Conc!14543) Bool)

(assert (=> b!4862144 (= e!3039948 (and (inv!71760 (c!826927 input!661)) tp!1368100))))

(declare-fun b!4862145 () Bool)

(declare-fun e!3039942 () Bool)

(declare-fun tp!1368101 () Bool)

(assert (=> b!4862145 (= e!3039944 (and e!3039942 tp!1368101))))

(declare-fun b!4862146 () Bool)

(declare-fun tp!1368104 () Bool)

(assert (=> b!4862146 (= e!3039943 (and (inv!71760 (c!826927 totalInput!332)) tp!1368104))))

(declare-fun b!4862147 () Bool)

(declare-fun res!2075625 () Bool)

(assert (=> b!4862147 (=> (not res!2075625) (not e!3039946))))

(declare-fun isEmpty!29876 (List!55996) Bool)

(assert (=> b!4862147 (= res!2075625 (not (isEmpty!29876 rules!1248)))))

(declare-fun e!3039945 () Bool)

(declare-fun b!4862148 () Bool)

(declare-fun tp!1368103 () Bool)

(declare-fun inv!71756 (String!63045) Bool)

(declare-fun inv!71761 (TokenValueInjection!15958) Bool)

(assert (=> b!4862148 (= e!3039942 (and tp!1368103 (inv!71756 (tag!8879 (h!62320 rules!1248))) (inv!71761 (transformation!8015 (h!62320 rules!1248))) e!3039945))))

(assert (=> b!4862149 (= e!3039945 (and tp!1368102 tp!1368105))))

(declare-fun b!4862150 () Bool)

(declare-fun res!2075624 () Bool)

(assert (=> b!4862150 (=> (not res!2075624) (not e!3039946))))

(declare-fun rulesInvariant!6705 (LexerInterface!7607 List!55996) Bool)

(assert (=> b!4862150 (= res!2075624 (rulesInvariant!6705 thiss!11777 rules!1248))))

(assert (= (and start!508218 res!2075627) b!4862147))

(assert (= (and b!4862147 res!2075625) b!4862150))

(assert (= (and b!4862150 res!2075624) b!4862143))

(assert (= (and b!4862143 res!2075626) b!4862142))

(assert (= b!4862148 b!4862149))

(assert (= b!4862145 b!4862148))

(assert (= (and start!508218 (is-Cons!55872 rules!1248)) b!4862145))

(assert (= start!508218 b!4862144))

(assert (= start!508218 b!4862146))

(declare-fun m!5859704 () Bool)

(assert (=> b!4862148 m!5859704))

(declare-fun m!5859706 () Bool)

(assert (=> b!4862148 m!5859706))

(declare-fun m!5859708 () Bool)

(assert (=> b!4862150 m!5859708))

(declare-fun m!5859710 () Bool)

(assert (=> b!4862147 m!5859710))

(declare-fun m!5859712 () Bool)

(assert (=> b!4862144 m!5859712))

(declare-fun m!5859714 () Bool)

(assert (=> b!4862146 m!5859714))

(declare-fun m!5859716 () Bool)

(assert (=> b!4862142 m!5859716))

(declare-fun m!5859718 () Bool)

(assert (=> b!4862143 m!5859718))

(declare-fun m!5859720 () Bool)

(assert (=> b!4862143 m!5859720))

(assert (=> b!4862143 m!5859718))

(assert (=> b!4862143 m!5859720))

(declare-fun m!5859722 () Bool)

(assert (=> b!4862143 m!5859722))

(declare-fun m!5859724 () Bool)

(assert (=> start!508218 m!5859724))

(declare-fun m!5859726 () Bool)

(assert (=> start!508218 m!5859726))

(push 1)

(assert (not b!4862144))

(assert (not b_next!131319))

(assert (not b_next!131317))

(assert (not b!4862146))

(assert (not b!4862145))

(assert (not b!4862148))

(assert (not b!4862147))

(assert b_and!342379)

(assert (not start!508218))

(assert (not b!4862143))

(assert (not b!4862150))

(assert b_and!342381)

(assert (not b!4862142))

(check-sat)

(pop 1)

(push 1)

(assert b_and!342381)

(assert b_and!342379)

(assert (not b_next!131317))

(assert (not b_next!131319))

(check-sat)

(pop 1)

