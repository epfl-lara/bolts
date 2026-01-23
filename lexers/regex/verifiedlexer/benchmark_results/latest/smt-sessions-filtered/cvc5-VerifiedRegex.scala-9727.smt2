; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!509262 () Bool)

(assert start!509262)

(declare-fun b!4870425 () Bool)

(declare-fun b_free!130687 () Bool)

(declare-fun b_next!131477 () Bool)

(assert (=> b!4870425 (= b_free!130687 (not b_next!131477))))

(declare-fun tp!1370347 () Bool)

(declare-fun b_and!342967 () Bool)

(assert (=> b!4870425 (= tp!1370347 b_and!342967)))

(declare-fun b_free!130689 () Bool)

(declare-fun b_next!131479 () Bool)

(assert (=> b!4870425 (= b_free!130689 (not b_next!131479))))

(declare-fun tp!1370350 () Bool)

(declare-fun b_and!342969 () Bool)

(assert (=> b!4870425 (= tp!1370350 b_and!342969)))

(declare-fun b!4870424 () Bool)

(declare-fun e!3044606 () Bool)

(declare-fun e!3044605 () Bool)

(declare-fun tp!1370348 () Bool)

(assert (=> b!4870424 (= e!3044606 (and e!3044605 tp!1370348))))

(declare-fun e!3044609 () Bool)

(assert (=> b!4870425 (= e!3044609 (and tp!1370347 tp!1370350))))

(declare-fun b!4870426 () Bool)

(declare-fun e!3044607 () Bool)

(declare-datatypes ((C!26414 0))(
  ( (C!26415 (val!22529 Int)) )
))
(declare-datatypes ((List!56070 0))(
  ( (Nil!55946) (Cons!55946 (h!62394 C!26414) (t!364140 List!56070)) )
))
(declare-datatypes ((IArray!29211 0))(
  ( (IArray!29212 (innerList!14663 List!56070)) )
))
(declare-datatypes ((Conc!14575 0))(
  ( (Node!14575 (left!40640 Conc!14575) (right!40970 Conc!14575) (csize!29380 Int) (cheight!14786 Int)) (Leaf!24303 (xs!17883 IArray!29211) (csize!29381 Int)) (Empty!14575) )
))
(declare-datatypes ((BalanceConc!28592 0))(
  ( (BalanceConc!28593 (c!828395 Conc!14575)) )
))
(declare-fun input!585 () BalanceConc!28592)

(declare-fun tp!1370349 () Bool)

(declare-fun inv!71864 (Conc!14575) Bool)

(assert (=> b!4870426 (= e!3044607 (and (inv!71864 (c!828395 input!585)) tp!1370349))))

(declare-fun b!4870427 () Bool)

(declare-fun res!2079036 () Bool)

(declare-fun e!3044604 () Bool)

(assert (=> b!4870427 (=> (not res!2079036) (not e!3044604))))

(declare-datatypes ((List!56071 0))(
  ( (Nil!55947) (Cons!55947 (h!62395 (_ BitVec 16)) (t!364141 List!56071)) )
))
(declare-datatypes ((TokenValue!8343 0))(
  ( (FloatLiteralValue!16686 (text!58846 List!56071)) (TokenValueExt!8342 (__x!33979 Int)) (Broken!41715 (value!258058 List!56071)) (Object!8466) (End!8343) (Def!8343) (Underscore!8343) (Match!8343) (Else!8343) (Error!8343) (Case!8343) (If!8343) (Extends!8343) (Abstract!8343) (Class!8343) (Val!8343) (DelimiterValue!16686 (del!8403 List!56071)) (KeywordValue!8349 (value!258059 List!56071)) (CommentValue!16686 (value!258060 List!56071)) (WhitespaceValue!16686 (value!258061 List!56071)) (IndentationValue!8343 (value!258062 List!56071)) (String!63134) (Int32!8343) (Broken!41716 (value!258063 List!56071)) (Boolean!8344) (Unit!145962) (OperatorValue!8346 (op!8403 List!56071)) (IdentifierValue!16686 (value!258064 List!56071)) (IdentifierValue!16687 (value!258065 List!56071)) (WhitespaceValue!16687 (value!258066 List!56071)) (True!16686) (False!16686) (Broken!41717 (value!258067 List!56071)) (Broken!41718 (value!258068 List!56071)) (True!16687) (RightBrace!8343) (RightBracket!8343) (Colon!8343) (Null!8343) (Comma!8343) (LeftBracket!8343) (False!16687) (LeftBrace!8343) (ImaginaryLiteralValue!8343 (text!58847 List!56071)) (StringLiteralValue!25029 (value!258069 List!56071)) (EOFValue!8343 (value!258070 List!56071)) (IdentValue!8343 (value!258071 List!56071)) (DelimiterValue!16687 (value!258072 List!56071)) (DedentValue!8343 (value!258073 List!56071)) (NewLineValue!8343 (value!258074 List!56071)) (IntegerValue!25029 (value!258075 (_ BitVec 32)) (text!58848 List!56071)) (IntegerValue!25030 (value!258076 Int) (text!58849 List!56071)) (Times!8343) (Or!8343) (Equal!8343) (Minus!8343) (Broken!41719 (value!258077 List!56071)) (And!8343) (Div!8343) (LessEqual!8343) (Mod!8343) (Concat!21451) (Not!8343) (Plus!8343) (SpaceValue!8343 (value!258078 List!56071)) (IntegerValue!25031 (value!258079 Int) (text!58850 List!56071)) (StringLiteralValue!25030 (text!58851 List!56071)) (FloatLiteralValue!16687 (text!58852 List!56071)) (BytesLiteralValue!8343 (value!258080 List!56071)) (CommentValue!16687 (value!258081 List!56071)) (StringLiteralValue!25031 (value!258082 List!56071)) (ErrorTokenValue!8343 (msg!8404 List!56071)) )
))
(declare-datatypes ((Regex!13108 0))(
  ( (ElementMatch!13108 (c!828396 C!26414)) (Concat!21452 (regOne!26728 Regex!13108) (regTwo!26728 Regex!13108)) (EmptyExpr!13108) (Star!13108 (reg!13437 Regex!13108)) (EmptyLang!13108) (Union!13108 (regOne!26729 Regex!13108) (regTwo!26729 Regex!13108)) )
))
(declare-datatypes ((String!63135 0))(
  ( (String!63136 (value!258083 String)) )
))
(declare-datatypes ((TokenValueInjection!15994 0))(
  ( (TokenValueInjection!15995 (toValue!10904 Int) (toChars!10763 Int)) )
))
(declare-datatypes ((Rule!15866 0))(
  ( (Rule!15867 (regex!8033 Regex!13108) (tag!8897 String!63135) (isSeparator!8033 Bool) (transformation!8033 TokenValueInjection!15994)) )
))
(declare-datatypes ((List!56072 0))(
  ( (Nil!55948) (Cons!55948 (h!62396 Rule!15866) (t!364142 List!56072)) )
))
(declare-fun rules!1164 () List!56072)

(declare-fun isEmpty!29944 (List!56072) Bool)

(assert (=> b!4870427 (= res!2079036 (not (isEmpty!29944 rules!1164)))))

(declare-fun b!4870428 () Bool)

(declare-fun res!2079037 () Bool)

(assert (=> b!4870428 (=> (not res!2079037) (not e!3044604))))

(declare-datatypes ((LexerInterface!7625 0))(
  ( (LexerInterfaceExt!7622 (__x!33980 Int)) (Lexer!7623) )
))
(declare-fun thiss!11460 () LexerInterface!7625)

(declare-fun rulesInvariant!6723 (LexerInterface!7625 List!56072) Bool)

(assert (=> b!4870428 (= res!2079037 (rulesInvariant!6723 thiss!11460 rules!1164))))

(declare-fun res!2079038 () Bool)

(assert (=> start!509262 (=> (not res!2079038) (not e!3044604))))

(assert (=> start!509262 (= res!2079038 (is-Lexer!7623 thiss!11460))))

(assert (=> start!509262 e!3044604))

(assert (=> start!509262 true))

(assert (=> start!509262 e!3044606))

(declare-fun inv!71865 (BalanceConc!28592) Bool)

(assert (=> start!509262 (and (inv!71865 input!585) e!3044607)))

(declare-fun b!4870429 () Bool)

(assert (=> b!4870429 (= e!3044604 false)))

(declare-datatypes ((Token!14650 0))(
  ( (Token!14651 (value!258084 TokenValue!8343) (rule!11171 Rule!15866) (size!36879 Int) (originalCharacters!8356 List!56070)) )
))
(declare-datatypes ((tuple2!59802 0))(
  ( (tuple2!59803 (_1!33204 Token!14650) (_2!33204 BalanceConc!28592)) )
))
(declare-datatypes ((Option!13782 0))(
  ( (None!13781) (Some!13781 (v!49703 tuple2!59802)) )
))
(declare-fun lt!1995627 () Option!13782)

(declare-fun maxPrefixZipperSequence!1224 (LexerInterface!7625 List!56072 BalanceConc!28592) Option!13782)

(assert (=> b!4870429 (= lt!1995627 (maxPrefixZipperSequence!1224 thiss!11460 rules!1164 input!585))))

(declare-fun b!4870430 () Bool)

(declare-fun tp!1370346 () Bool)

(declare-fun inv!71861 (String!63135) Bool)

(declare-fun inv!71866 (TokenValueInjection!15994) Bool)

(assert (=> b!4870430 (= e!3044605 (and tp!1370346 (inv!71861 (tag!8897 (h!62396 rules!1164))) (inv!71866 (transformation!8033 (h!62396 rules!1164))) e!3044609))))

(assert (= (and start!509262 res!2079038) b!4870427))

(assert (= (and b!4870427 res!2079036) b!4870428))

(assert (= (and b!4870428 res!2079037) b!4870429))

(assert (= b!4870430 b!4870425))

(assert (= b!4870424 b!4870430))

(assert (= (and start!509262 (is-Cons!55948 rules!1164)) b!4870424))

(assert (= start!509262 b!4870426))

(declare-fun m!5870708 () Bool)

(assert (=> b!4870429 m!5870708))

(declare-fun m!5870710 () Bool)

(assert (=> b!4870426 m!5870710))

(declare-fun m!5870712 () Bool)

(assert (=> b!4870428 m!5870712))

(declare-fun m!5870714 () Bool)

(assert (=> start!509262 m!5870714))

(declare-fun m!5870716 () Bool)

(assert (=> b!4870427 m!5870716))

(declare-fun m!5870718 () Bool)

(assert (=> b!4870430 m!5870718))

(declare-fun m!5870720 () Bool)

(assert (=> b!4870430 m!5870720))

(push 1)

(assert b_and!342967)

(assert (not b!4870426))

(assert (not start!509262))

(assert b_and!342969)

(assert (not b_next!131479))

(assert (not b!4870429))

(assert (not b!4870430))

(assert (not b!4870424))

(assert (not b_next!131477))

(assert (not b!4870428))

(assert (not b!4870427))

(check-sat)

(pop 1)

(push 1)

(assert b_and!342969)

(assert b_and!342967)

(assert (not b_next!131477))

(assert (not b_next!131479))

(check-sat)

(pop 1)

