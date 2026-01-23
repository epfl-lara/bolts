; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!352164 () Bool)

(assert start!352164)

(declare-fun b!3750759 () Bool)

(declare-fun b_free!100373 () Bool)

(declare-fun b_next!101077 () Bool)

(assert (=> b!3750759 (= b_free!100373 (not b_next!101077))))

(declare-fun tp!1145301 () Bool)

(declare-fun b_and!278751 () Bool)

(assert (=> b!3750759 (= tp!1145301 b_and!278751)))

(declare-fun b_free!100375 () Bool)

(declare-fun b_next!101079 () Bool)

(assert (=> b!3750759 (= b_free!100375 (not b_next!101079))))

(declare-fun tp!1145303 () Bool)

(declare-fun b_and!278753 () Bool)

(assert (=> b!3750759 (= tp!1145303 b_and!278753)))

(declare-fun b!3750774 () Bool)

(declare-fun e!2320039 () Bool)

(assert (=> b!3750774 (= e!2320039 true)))

(declare-fun b!3750773 () Bool)

(declare-fun e!2320038 () Bool)

(assert (=> b!3750773 (= e!2320038 e!2320039)))

(declare-fun b!3750772 () Bool)

(declare-fun e!2320037 () Bool)

(assert (=> b!3750772 (= e!2320037 e!2320038)))

(declare-fun b!3750757 () Bool)

(assert (=> b!3750757 e!2320037))

(assert (= b!3750773 b!3750774))

(assert (= b!3750772 b!3750773))

(declare-datatypes ((List!40099 0))(
  ( (Nil!39975) (Cons!39975 (h!45395 (_ BitVec 16)) (t!303052 List!40099)) )
))
(declare-datatypes ((TokenValue!6343 0))(
  ( (FloatLiteralValue!12686 (text!44846 List!40099)) (TokenValueExt!6342 (__x!24903 Int)) (Broken!31715 (value!194761 List!40099)) (Object!6466) (End!6343) (Def!6343) (Underscore!6343) (Match!6343) (Else!6343) (Error!6343) (Case!6343) (If!6343) (Extends!6343) (Abstract!6343) (Class!6343) (Val!6343) (DelimiterValue!12686 (del!6403 List!40099)) (KeywordValue!6349 (value!194762 List!40099)) (CommentValue!12686 (value!194763 List!40099)) (WhitespaceValue!12686 (value!194764 List!40099)) (IndentationValue!6343 (value!194765 List!40099)) (String!45342) (Int32!6343) (Broken!31716 (value!194766 List!40099)) (Boolean!6344) (Unit!57722) (OperatorValue!6346 (op!6403 List!40099)) (IdentifierValue!12686 (value!194767 List!40099)) (IdentifierValue!12687 (value!194768 List!40099)) (WhitespaceValue!12687 (value!194769 List!40099)) (True!12686) (False!12686) (Broken!31717 (value!194770 List!40099)) (Broken!31718 (value!194771 List!40099)) (True!12687) (RightBrace!6343) (RightBracket!6343) (Colon!6343) (Null!6343) (Comma!6343) (LeftBracket!6343) (False!12687) (LeftBrace!6343) (ImaginaryLiteralValue!6343 (text!44847 List!40099)) (StringLiteralValue!19029 (value!194772 List!40099)) (EOFValue!6343 (value!194773 List!40099)) (IdentValue!6343 (value!194774 List!40099)) (DelimiterValue!12687 (value!194775 List!40099)) (DedentValue!6343 (value!194776 List!40099)) (NewLineValue!6343 (value!194777 List!40099)) (IntegerValue!19029 (value!194778 (_ BitVec 32)) (text!44848 List!40099)) (IntegerValue!19030 (value!194779 Int) (text!44849 List!40099)) (Times!6343) (Or!6343) (Equal!6343) (Minus!6343) (Broken!31719 (value!194780 List!40099)) (And!6343) (Div!6343) (LessEqual!6343) (Mod!6343) (Concat!17361) (Not!6343) (Plus!6343) (SpaceValue!6343 (value!194781 List!40099)) (IntegerValue!19031 (value!194782 Int) (text!44850 List!40099)) (StringLiteralValue!19030 (text!44851 List!40099)) (FloatLiteralValue!12687 (text!44852 List!40099)) (BytesLiteralValue!6343 (value!194783 List!40099)) (CommentValue!12687 (value!194784 List!40099)) (StringLiteralValue!19031 (value!194785 List!40099)) (ErrorTokenValue!6343 (msg!6404 List!40099)) )
))
(declare-datatypes ((C!22222 0))(
  ( (C!22223 (val!13159 Int)) )
))
(declare-datatypes ((Regex!11018 0))(
  ( (ElementMatch!11018 (c!649198 C!22222)) (Concat!17362 (regOne!22548 Regex!11018) (regTwo!22548 Regex!11018)) (EmptyExpr!11018) (Star!11018 (reg!11347 Regex!11018)) (EmptyLang!11018) (Union!11018 (regOne!22549 Regex!11018) (regTwo!22549 Regex!11018)) )
))
(declare-datatypes ((String!45343 0))(
  ( (String!45344 (value!194786 String)) )
))
(declare-datatypes ((List!40100 0))(
  ( (Nil!39976) (Cons!39976 (h!45396 C!22222) (t!303053 List!40100)) )
))
(declare-datatypes ((IArray!24433 0))(
  ( (IArray!24434 (innerList!12274 List!40100)) )
))
(declare-datatypes ((Conc!12214 0))(
  ( (Node!12214 (left!30936 Conc!12214) (right!31266 Conc!12214) (csize!24658 Int) (cheight!12425 Int)) (Leaf!18955 (xs!15416 IArray!24433) (csize!24659 Int)) (Empty!12214) )
))
(declare-datatypes ((BalanceConc!24042 0))(
  ( (BalanceConc!24043 (c!649199 Conc!12214)) )
))
(declare-datatypes ((TokenValueInjection!12114 0))(
  ( (TokenValueInjection!12115 (toValue!8461 Int) (toChars!8320 Int)) )
))
(declare-datatypes ((Rule!12026 0))(
  ( (Rule!12027 (regex!6113 Regex!11018) (tag!6973 String!45343) (isSeparator!6113 Bool) (transformation!6113 TokenValueInjection!12114)) )
))
(declare-datatypes ((List!40101 0))(
  ( (Nil!39977) (Cons!39977 (h!45397 Rule!12026) (t!303054 List!40101)) )
))
(declare-fun rs!167 () List!40101)

(assert (= (and b!3750757 (is-Cons!39977 rs!167)) b!3750772))

(declare-fun order!21837 () Int)

(declare-fun order!21835 () Int)

(declare-fun lambda!125224 () Int)

(declare-fun dynLambda!17274 (Int Int) Int)

(declare-fun dynLambda!17275 (Int Int) Int)

(assert (=> b!3750774 (< (dynLambda!17274 order!21835 (toValue!8461 (transformation!6113 (h!45397 rs!167)))) (dynLambda!17275 order!21837 lambda!125224))))

(declare-fun order!21839 () Int)

(declare-fun dynLambda!17276 (Int Int) Int)

(assert (=> b!3750774 (< (dynLambda!17276 order!21839 (toChars!8320 (transformation!6113 (h!45397 rs!167)))) (dynLambda!17275 order!21837 lambda!125224))))

(assert (=> b!3750757 true))

(declare-fun e!2320025 () Bool)

(assert (=> b!3750757 (= e!2320025 false)))

(declare-datatypes ((Token!11364 0))(
  ( (Token!11365 (value!194787 TokenValue!6343) (rule!8877 Rule!12026) (size!30089 Int) (originalCharacters!6713 List!40100)) )
))
(declare-datatypes ((List!40102 0))(
  ( (Nil!39978) (Cons!39978 (h!45398 Token!11364) (t!303055 List!40102)) )
))
(declare-fun lt!1299814 () List!40102)

(declare-datatypes ((IArray!24435 0))(
  ( (IArray!24436 (innerList!12275 List!40102)) )
))
(declare-datatypes ((Conc!12215 0))(
  ( (Node!12215 (left!30937 Conc!12215) (right!31267 Conc!12215) (csize!24660 Int) (cheight!12426 Int)) (Leaf!18956 (xs!15417 IArray!24435) (csize!24661 Int)) (Empty!12215) )
))
(declare-datatypes ((BalanceConc!24044 0))(
  ( (BalanceConc!24045 (c!649200 Conc!12215)) )
))
(declare-fun ts!107 () BalanceConc!24044)

(declare-fun list!14718 (BalanceConc!24044) List!40102)

(assert (=> b!3750757 (= lt!1299814 (list!14718 ts!107))))

(declare-fun lt!1299813 () Bool)

(declare-fun forall!8203 (BalanceConc!24044 Int) Bool)

(assert (=> b!3750757 (= lt!1299813 (forall!8203 ts!107 lambda!125224))))

(declare-fun b!3750758 () Bool)

(declare-fun res!1520173 () Bool)

(assert (=> b!3750758 (=> (not res!1520173) (not e!2320025))))

(declare-datatypes ((LexerInterface!5702 0))(
  ( (LexerInterfaceExt!5699 (__x!24904 Int)) (Lexer!5700) )
))
(declare-fun thiss!10925 () LexerInterface!5702)

(declare-fun rulesInvariant!5099 (LexerInterface!5702 List!40101) Bool)

(assert (=> b!3750758 (= res!1520173 (rulesInvariant!5099 thiss!10925 rs!167))))

(declare-fun e!2320029 () Bool)

(assert (=> b!3750759 (= e!2320029 (and tp!1145301 tp!1145303))))

(declare-fun b!3750760 () Bool)

(declare-fun res!1520172 () Bool)

(assert (=> b!3750760 (=> (not res!1520172) (not e!2320025))))

(declare-fun isEmpty!23550 (List!40101) Bool)

(assert (=> b!3750760 (= res!1520172 (not (isEmpty!23550 rs!167)))))

(declare-fun b!3750761 () Bool)

(declare-fun e!2320027 () Bool)

(declare-fun e!2320028 () Bool)

(declare-fun tp!1145305 () Bool)

(assert (=> b!3750761 (= e!2320027 (and e!2320028 tp!1145305))))

(declare-fun res!1520174 () Bool)

(assert (=> start!352164 (=> (not res!1520174) (not e!2320025))))

(assert (=> start!352164 (= res!1520174 (is-Lexer!5700 thiss!10925))))

(assert (=> start!352164 e!2320025))

(assert (=> start!352164 true))

(assert (=> start!352164 e!2320027))

(declare-fun e!2320026 () Bool)

(declare-fun inv!53487 (BalanceConc!24044) Bool)

(assert (=> start!352164 (and (inv!53487 ts!107) e!2320026)))

(declare-fun tp!1145302 () Bool)

(declare-fun b!3750762 () Bool)

(declare-fun inv!53484 (String!45343) Bool)

(declare-fun inv!53488 (TokenValueInjection!12114) Bool)

(assert (=> b!3750762 (= e!2320028 (and tp!1145302 (inv!53484 (tag!6973 (h!45397 rs!167))) (inv!53488 (transformation!6113 (h!45397 rs!167))) e!2320029))))

(declare-fun b!3750763 () Bool)

(declare-fun tp!1145304 () Bool)

(declare-fun inv!53489 (Conc!12215) Bool)

(assert (=> b!3750763 (= e!2320026 (and (inv!53489 (c!649200 ts!107)) tp!1145304))))

(assert (= (and start!352164 res!1520174) b!3750760))

(assert (= (and b!3750760 res!1520172) b!3750758))

(assert (= (and b!3750758 res!1520173) b!3750757))

(assert (= b!3750762 b!3750759))

(assert (= b!3750761 b!3750762))

(assert (= (and start!352164 (is-Cons!39977 rs!167)) b!3750761))

(assert (= start!352164 b!3750763))

(declare-fun m!4241749 () Bool)

(assert (=> b!3750758 m!4241749))

(declare-fun m!4241751 () Bool)

(assert (=> b!3750760 m!4241751))

(declare-fun m!4241753 () Bool)

(assert (=> b!3750762 m!4241753))

(declare-fun m!4241755 () Bool)

(assert (=> b!3750762 m!4241755))

(declare-fun m!4241757 () Bool)

(assert (=> b!3750763 m!4241757))

(declare-fun m!4241759 () Bool)

(assert (=> b!3750757 m!4241759))

(declare-fun m!4241761 () Bool)

(assert (=> b!3750757 m!4241761))

(declare-fun m!4241763 () Bool)

(assert (=> start!352164 m!4241763))

(push 1)

(assert (not b!3750758))

(assert (not b!3750760))

(assert b_and!278753)

(assert (not b!3750763))

(assert (not b!3750762))

(assert b_and!278751)

(assert (not b!3750757))

(assert (not b_next!101077))

(assert (not b!3750772))

(assert (not start!352164))

(assert (not b!3750761))

(assert (not b_next!101079))

(check-sat)

(pop 1)

(push 1)

(assert b_and!278753)

(assert b_and!278751)

(assert (not b_next!101079))

(assert (not b_next!101077))

(check-sat)

(pop 1)

