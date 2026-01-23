; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3634 () Bool)

(assert start!3634)

(declare-fun b!50516 () Bool)

(declare-fun b_free!1549 () Bool)

(declare-fun b_next!1549 () Bool)

(assert (=> b!50516 (= b_free!1549 (not b_next!1549))))

(declare-fun tp!33437 () Bool)

(declare-fun b_and!1591 () Bool)

(assert (=> b!50516 (= tp!33437 b_and!1591)))

(declare-fun b_free!1551 () Bool)

(declare-fun b_next!1551 () Bool)

(assert (=> b!50516 (= b_free!1551 (not b_next!1551))))

(declare-fun tp!33440 () Bool)

(declare-fun b_and!1593 () Bool)

(assert (=> b!50516 (= tp!33440 b_and!1593)))

(declare-fun b!50513 () Bool)

(declare-fun e!29598 () Bool)

(declare-fun e!29601 () Bool)

(assert (=> b!50513 (= e!29598 e!29601)))

(declare-fun res!33198 () Bool)

(assert (=> b!50513 (=> res!33198 e!29601)))

(declare-datatypes ((List!982 0))(
  ( (Nil!976) (Cons!976 (h!6373 (_ BitVec 16)) (t!17185 List!982)) )
))
(declare-datatypes ((TokenValue!199 0))(
  ( (FloatLiteralValue!398 (text!1838 List!982)) (TokenValueExt!198 (__x!1493 Int)) (Broken!995 (value!8828 List!982)) (Object!204) (End!199) (Def!199) (Underscore!199) (Match!199) (Else!199) (Error!199) (Case!199) (If!199) (Extends!199) (Abstract!199) (Class!199) (Val!199) (DelimiterValue!398 (del!259 List!982)) (KeywordValue!205 (value!8829 List!982)) (CommentValue!398 (value!8830 List!982)) (WhitespaceValue!398 (value!8831 List!982)) (IndentationValue!199 (value!8832 List!982)) (String!1386) (Int32!199) (Broken!996 (value!8833 List!982)) (Boolean!200) (Unit!547) (OperatorValue!202 (op!259 List!982)) (IdentifierValue!398 (value!8834 List!982)) (IdentifierValue!399 (value!8835 List!982)) (WhitespaceValue!399 (value!8836 List!982)) (True!398) (False!398) (Broken!997 (value!8837 List!982)) (Broken!998 (value!8838 List!982)) (True!399) (RightBrace!199) (RightBracket!199) (Colon!199) (Null!199) (Comma!199) (LeftBracket!199) (False!399) (LeftBrace!199) (ImaginaryLiteralValue!199 (text!1839 List!982)) (StringLiteralValue!597 (value!8839 List!982)) (EOFValue!199 (value!8840 List!982)) (IdentValue!199 (value!8841 List!982)) (DelimiterValue!399 (value!8842 List!982)) (DedentValue!199 (value!8843 List!982)) (NewLineValue!199 (value!8844 List!982)) (IntegerValue!597 (value!8845 (_ BitVec 32)) (text!1840 List!982)) (IntegerValue!598 (value!8846 Int) (text!1841 List!982)) (Times!199) (Or!199) (Equal!199) (Minus!199) (Broken!999 (value!8847 List!982)) (And!199) (Div!199) (LessEqual!199) (Mod!199) (Concat!476) (Not!199) (Plus!199) (SpaceValue!199 (value!8848 List!982)) (IntegerValue!599 (value!8849 Int) (text!1842 List!982)) (StringLiteralValue!598 (text!1843 List!982)) (FloatLiteralValue!399 (text!1844 List!982)) (BytesLiteralValue!199 (value!8850 List!982)) (CommentValue!399 (value!8851 List!982)) (StringLiteralValue!599 (value!8852 List!982)) (ErrorTokenValue!199 (msg!260 List!982)) )
))
(declare-datatypes ((C!1476 0))(
  ( (C!1477 (val!345 Int)) )
))
(declare-datatypes ((Regex!277 0))(
  ( (ElementMatch!277 (c!16615 C!1476)) (Concat!477 (regOne!1066 Regex!277) (regTwo!1066 Regex!277)) (EmptyExpr!277) (Star!277 (reg!606 Regex!277)) (EmptyLang!277) (Union!277 (regOne!1067 Regex!277) (regTwo!1067 Regex!277)) )
))
(declare-datatypes ((String!1387 0))(
  ( (String!1388 (value!8853 String)) )
))
(declare-datatypes ((List!983 0))(
  ( (Nil!977) (Cons!977 (h!6374 C!1476) (t!17186 List!983)) )
))
(declare-datatypes ((IArray!445 0))(
  ( (IArray!446 (innerList!280 List!983)) )
))
(declare-datatypes ((Conc!222 0))(
  ( (Node!222 (left!739 Conc!222) (right!1069 Conc!222) (csize!674 Int) (cheight!433 Int)) (Leaf!462 (xs!2801 IArray!445) (csize!675 Int)) (Empty!222) )
))
(declare-datatypes ((BalanceConc!448 0))(
  ( (BalanceConc!449 (c!16616 Conc!222)) )
))
(declare-datatypes ((TokenValueInjection!222 0))(
  ( (TokenValueInjection!223 (toValue!688 Int) (toChars!547 Int)) )
))
(declare-datatypes ((Rule!218 0))(
  ( (Rule!219 (regex!209 Regex!277) (tag!387 String!1387) (isSeparator!209 Bool) (transformation!209 TokenValueInjection!222)) )
))
(declare-datatypes ((Token!182 0))(
  ( (Token!183 (value!8854 TokenValue!199) (rule!684 Rule!218) (size!917 Int) (originalCharacters!262 List!983)) )
))
(declare-datatypes ((List!984 0))(
  ( (Nil!978) (Cons!978 (h!6375 Token!182) (t!17187 List!984)) )
))
(declare-datatypes ((IArray!447 0))(
  ( (IArray!448 (innerList!281 List!984)) )
))
(declare-datatypes ((Conc!223 0))(
  ( (Node!223 (left!740 Conc!223) (right!1070 Conc!223) (csize!676 Int) (cheight!434 Int)) (Leaf!463 (xs!2802 IArray!447) (csize!677 Int)) (Empty!223) )
))
(declare-datatypes ((BalanceConc!450 0))(
  ( (BalanceConc!451 (c!16617 Conc!223)) )
))
(declare-fun v!6227 () BalanceConc!450)

(declare-fun lt!8494 () Token!182)

(declare-fun contains!84 (BalanceConc!450 Token!182) Bool)

(assert (=> b!50513 (= res!33198 (not (contains!84 v!6227 lt!8494)))))

(declare-fun from!821 () Int)

(declare-fun apply!68 (BalanceConc!450 Int) Token!182)

(assert (=> b!50513 (= lt!8494 (apply!68 v!6227 (+ 1 from!821)))))

(declare-fun b!50514 () Bool)

(declare-fun res!33199 () Bool)

(assert (=> b!50514 (=> res!33199 e!29598)))

(declare-fun lt!8502 () List!984)

(declare-fun lt!8496 () Token!182)

(declare-fun contains!85 (List!984 Token!182) Bool)

(assert (=> b!50514 (= res!33199 (not (contains!85 lt!8502 lt!8496)))))

(declare-fun b!50515 () Bool)

(declare-fun e!29600 () Bool)

(declare-fun e!29597 () Bool)

(declare-fun tp!33438 () Bool)

(assert (=> b!50515 (= e!29600 (and e!29597 tp!33438))))

(declare-fun e!29605 () Bool)

(assert (=> b!50516 (= e!29605 (and tp!33437 tp!33440))))

(declare-fun b!50517 () Bool)

(declare-fun res!33192 () Bool)

(assert (=> b!50517 (=> res!33192 e!29601)))

(assert (=> b!50517 (= res!33192 (not (contains!85 lt!8502 lt!8494)))))

(declare-fun b!50518 () Bool)

(declare-fun res!33191 () Bool)

(declare-fun e!29603 () Bool)

(assert (=> b!50518 (=> (not res!33191) (not e!29603))))

(declare-datatypes ((LexerInterface!101 0))(
  ( (LexerInterfaceExt!98 (__x!1494 Int)) (Lexer!99) )
))
(declare-fun thiss!11059 () LexerInterface!101)

(declare-datatypes ((List!985 0))(
  ( (Nil!979) (Cons!979 (h!6376 Rule!218) (t!17188 List!985)) )
))
(declare-fun rules!1069 () List!985)

(declare-fun rulesInvariant!95 (LexerInterface!101 List!985) Bool)

(assert (=> b!50518 (= res!33191 (rulesInvariant!95 thiss!11059 rules!1069))))

(declare-fun b!50519 () Bool)

(declare-fun e!29602 () Bool)

(declare-fun tp!33439 () Bool)

(declare-fun inv!1296 (Conc!223) Bool)

(assert (=> b!50519 (= e!29602 (and (inv!1296 (c!16617 v!6227)) tp!33439))))

(declare-fun b!50520 () Bool)

(declare-fun e!29604 () Bool)

(assert (=> b!50520 (= e!29604 e!29603)))

(declare-fun res!33193 () Bool)

(assert (=> b!50520 (=> (not res!33193) (not e!29603))))

(declare-fun lt!8498 () Int)

(assert (=> b!50520 (= res!33193 (<= from!821 lt!8498))))

(declare-fun size!918 (BalanceConc!450) Int)

(assert (=> b!50520 (= lt!8498 (size!918 v!6227))))

(declare-fun res!33195 () Bool)

(assert (=> start!3634 (=> (not res!33195) (not e!29604))))

(get-info :version)

(assert (=> start!3634 (= res!33195 (and ((_ is Lexer!99) thiss!11059) (>= from!821 0)))))

(assert (=> start!3634 e!29604))

(assert (=> start!3634 true))

(declare-fun inv!1297 (BalanceConc!450) Bool)

(assert (=> start!3634 (and (inv!1297 v!6227) e!29602)))

(assert (=> start!3634 e!29600))

(declare-fun b!50521 () Bool)

(declare-fun res!33196 () Bool)

(assert (=> b!50521 (=> (not res!33196) (not e!29603))))

(declare-fun isEmpty!195 (List!985) Bool)

(assert (=> b!50521 (= res!33196 (not (isEmpty!195 rules!1069)))))

(declare-fun b!50522 () Bool)

(assert (=> b!50522 (= e!29603 (not e!29598))))

(declare-fun res!33194 () Bool)

(assert (=> b!50522 (=> res!33194 e!29598)))

(assert (=> b!50522 (= res!33194 (not (contains!84 v!6227 lt!8496)))))

(assert (=> b!50522 (= lt!8496 (apply!68 v!6227 from!821))))

(declare-fun lt!8503 () List!984)

(declare-fun tail!51 (List!984) List!984)

(declare-fun drop!26 (List!984 Int) List!984)

(assert (=> b!50522 (= (tail!51 lt!8503) (drop!26 lt!8502 (+ 2 from!821)))))

(declare-datatypes ((Unit!548 0))(
  ( (Unit!549) )
))
(declare-fun lt!8501 () Unit!548)

(declare-fun lemmaDropTail!22 (List!984 Int) Unit!548)

(assert (=> b!50522 (= lt!8501 (lemmaDropTail!22 lt!8502 (+ 1 from!821)))))

(declare-fun lt!8497 () List!984)

(assert (=> b!50522 (= (tail!51 lt!8497) lt!8503)))

(declare-fun lt!8495 () Unit!548)

(assert (=> b!50522 (= lt!8495 (lemmaDropTail!22 lt!8502 from!821))))

(declare-fun head!366 (List!984) Token!182)

(declare-fun apply!69 (List!984 Int) Token!182)

(assert (=> b!50522 (= (head!366 lt!8503) (apply!69 lt!8502 (+ 1 from!821)))))

(assert (=> b!50522 (= lt!8503 (drop!26 lt!8502 (+ 1 from!821)))))

(declare-fun lt!8500 () Unit!548)

(declare-fun lemmaDropApply!26 (List!984 Int) Unit!548)

(assert (=> b!50522 (= lt!8500 (lemmaDropApply!26 lt!8502 (+ 1 from!821)))))

(assert (=> b!50522 (= (head!366 lt!8497) (apply!69 lt!8502 from!821))))

(assert (=> b!50522 (= lt!8497 (drop!26 lt!8502 from!821))))

(declare-fun lt!8499 () Unit!548)

(assert (=> b!50522 (= lt!8499 (lemmaDropApply!26 lt!8502 from!821))))

(declare-fun list!250 (BalanceConc!450) List!984)

(assert (=> b!50522 (= lt!8502 (list!250 v!6227))))

(declare-fun b!50523 () Bool)

(assert (=> b!50523 (= e!29601 true)))

(declare-fun rulesProduceIndividualToken!20 (LexerInterface!101 List!985 Token!182) Bool)

(assert (=> b!50523 (rulesProduceIndividualToken!20 thiss!11059 rules!1069 lt!8494)))

(declare-fun lt!8504 () Unit!548)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!8 (LexerInterface!101 List!985 List!984 Token!182) Unit!548)

(assert (=> b!50523 (= lt!8504 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!8 thiss!11059 rules!1069 lt!8502 lt!8494))))

(assert (=> b!50523 (rulesProduceIndividualToken!20 thiss!11059 rules!1069 lt!8496)))

(declare-fun lt!8493 () Unit!548)

(assert (=> b!50523 (= lt!8493 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!8 thiss!11059 rules!1069 lt!8502 lt!8496))))

(declare-fun b!50524 () Bool)

(declare-fun res!33197 () Bool)

(assert (=> b!50524 (=> (not res!33197) (not e!29603))))

(assert (=> b!50524 (= res!33197 (< from!821 (- lt!8498 1)))))

(declare-fun b!50525 () Bool)

(declare-fun res!33200 () Bool)

(assert (=> b!50525 (=> (not res!33200) (not e!29603))))

(declare-fun rulesProduceEachTokenIndividually!39 (LexerInterface!101 List!985 BalanceConc!450) Bool)

(assert (=> b!50525 (= res!33200 (rulesProduceEachTokenIndividually!39 thiss!11059 rules!1069 v!6227))))

(declare-fun b!50526 () Bool)

(declare-fun tp!33436 () Bool)

(declare-fun inv!1292 (String!1387) Bool)

(declare-fun inv!1298 (TokenValueInjection!222) Bool)

(assert (=> b!50526 (= e!29597 (and tp!33436 (inv!1292 (tag!387 (h!6376 rules!1069))) (inv!1298 (transformation!209 (h!6376 rules!1069))) e!29605))))

(assert (= (and start!3634 res!33195) b!50520))

(assert (= (and b!50520 res!33193) b!50521))

(assert (= (and b!50521 res!33196) b!50518))

(assert (= (and b!50518 res!33191) b!50525))

(assert (= (and b!50525 res!33200) b!50524))

(assert (= (and b!50524 res!33197) b!50522))

(assert (= (and b!50522 (not res!33194)) b!50514))

(assert (= (and b!50514 (not res!33199)) b!50513))

(assert (= (and b!50513 (not res!33198)) b!50517))

(assert (= (and b!50517 (not res!33192)) b!50523))

(assert (= start!3634 b!50519))

(assert (= b!50526 b!50516))

(assert (= b!50515 b!50526))

(assert (= (and start!3634 ((_ is Cons!979) rules!1069)) b!50515))

(declare-fun m!24642 () Bool)

(assert (=> b!50520 m!24642))

(declare-fun m!24644 () Bool)

(assert (=> b!50522 m!24644))

(declare-fun m!24646 () Bool)

(assert (=> b!50522 m!24646))

(declare-fun m!24648 () Bool)

(assert (=> b!50522 m!24648))

(declare-fun m!24650 () Bool)

(assert (=> b!50522 m!24650))

(declare-fun m!24652 () Bool)

(assert (=> b!50522 m!24652))

(declare-fun m!24654 () Bool)

(assert (=> b!50522 m!24654))

(declare-fun m!24656 () Bool)

(assert (=> b!50522 m!24656))

(declare-fun m!24658 () Bool)

(assert (=> b!50522 m!24658))

(declare-fun m!24660 () Bool)

(assert (=> b!50522 m!24660))

(declare-fun m!24662 () Bool)

(assert (=> b!50522 m!24662))

(declare-fun m!24664 () Bool)

(assert (=> b!50522 m!24664))

(declare-fun m!24666 () Bool)

(assert (=> b!50522 m!24666))

(declare-fun m!24668 () Bool)

(assert (=> b!50522 m!24668))

(declare-fun m!24670 () Bool)

(assert (=> b!50522 m!24670))

(declare-fun m!24672 () Bool)

(assert (=> b!50522 m!24672))

(declare-fun m!24674 () Bool)

(assert (=> b!50522 m!24674))

(declare-fun m!24676 () Bool)

(assert (=> start!3634 m!24676))

(declare-fun m!24678 () Bool)

(assert (=> b!50525 m!24678))

(declare-fun m!24680 () Bool)

(assert (=> b!50514 m!24680))

(declare-fun m!24682 () Bool)

(assert (=> b!50519 m!24682))

(declare-fun m!24684 () Bool)

(assert (=> b!50518 m!24684))

(declare-fun m!24686 () Bool)

(assert (=> b!50517 m!24686))

(declare-fun m!24688 () Bool)

(assert (=> b!50521 m!24688))

(declare-fun m!24690 () Bool)

(assert (=> b!50513 m!24690))

(declare-fun m!24692 () Bool)

(assert (=> b!50513 m!24692))

(declare-fun m!24694 () Bool)

(assert (=> b!50523 m!24694))

(declare-fun m!24696 () Bool)

(assert (=> b!50523 m!24696))

(declare-fun m!24698 () Bool)

(assert (=> b!50523 m!24698))

(declare-fun m!24700 () Bool)

(assert (=> b!50523 m!24700))

(declare-fun m!24702 () Bool)

(assert (=> b!50526 m!24702))

(declare-fun m!24704 () Bool)

(assert (=> b!50526 m!24704))

(check-sat (not b!50526) (not b_next!1549) (not b!50521) (not b_next!1551) (not b!50523) (not b!50522) (not b!50518) (not b!50513) b_and!1591 b_and!1593 (not b!50525) (not b!50514) (not b!50515) (not b!50517) (not start!3634) (not b!50520) (not b!50519))
(check-sat b_and!1593 b_and!1591 (not b_next!1549) (not b_next!1551))
