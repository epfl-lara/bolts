; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3638 () Bool)

(assert start!3638)

(declare-fun b!50601 () Bool)

(declare-fun b_free!1557 () Bool)

(declare-fun b_next!1557 () Bool)

(assert (=> b!50601 (= b_free!1557 (not b_next!1557))))

(declare-fun tp!33468 () Bool)

(declare-fun b_and!1599 () Bool)

(assert (=> b!50601 (= tp!33468 b_and!1599)))

(declare-fun b_free!1559 () Bool)

(declare-fun b_next!1559 () Bool)

(assert (=> b!50601 (= b_free!1559 (not b_next!1559))))

(declare-fun tp!33469 () Bool)

(declare-fun b_and!1601 () Bool)

(assert (=> b!50601 (= tp!33469 b_and!1601)))

(declare-fun res!33255 () Bool)

(declare-fun e!29654 () Bool)

(assert (=> start!3638 (=> (not res!33255) (not e!29654))))

(declare-datatypes ((LexerInterface!103 0))(
  ( (LexerInterfaceExt!100 (__x!1497 Int)) (Lexer!101) )
))
(declare-fun thiss!11059 () LexerInterface!103)

(declare-fun from!821 () Int)

(get-info :version)

(assert (=> start!3638 (= res!33255 (and ((_ is Lexer!101) thiss!11059) (>= from!821 0)))))

(assert (=> start!3638 e!29654))

(assert (=> start!3638 true))

(declare-datatypes ((List!990 0))(
  ( (Nil!984) (Cons!984 (h!6381 (_ BitVec 16)) (t!17193 List!990)) )
))
(declare-datatypes ((TokenValue!201 0))(
  ( (FloatLiteralValue!402 (text!1852 List!990)) (TokenValueExt!200 (__x!1498 Int)) (Broken!1005 (value!8885 List!990)) (Object!206) (End!201) (Def!201) (Underscore!201) (Match!201) (Else!201) (Error!201) (Case!201) (If!201) (Extends!201) (Abstract!201) (Class!201) (Val!201) (DelimiterValue!402 (del!261 List!990)) (KeywordValue!207 (value!8886 List!990)) (CommentValue!402 (value!8887 List!990)) (WhitespaceValue!402 (value!8888 List!990)) (IndentationValue!201 (value!8889 List!990)) (String!1396) (Int32!201) (Broken!1006 (value!8890 List!990)) (Boolean!202) (Unit!553) (OperatorValue!204 (op!261 List!990)) (IdentifierValue!402 (value!8891 List!990)) (IdentifierValue!403 (value!8892 List!990)) (WhitespaceValue!403 (value!8893 List!990)) (True!402) (False!402) (Broken!1007 (value!8894 List!990)) (Broken!1008 (value!8895 List!990)) (True!403) (RightBrace!201) (RightBracket!201) (Colon!201) (Null!201) (Comma!201) (LeftBracket!201) (False!403) (LeftBrace!201) (ImaginaryLiteralValue!201 (text!1853 List!990)) (StringLiteralValue!603 (value!8896 List!990)) (EOFValue!201 (value!8897 List!990)) (IdentValue!201 (value!8898 List!990)) (DelimiterValue!403 (value!8899 List!990)) (DedentValue!201 (value!8900 List!990)) (NewLineValue!201 (value!8901 List!990)) (IntegerValue!603 (value!8902 (_ BitVec 32)) (text!1854 List!990)) (IntegerValue!604 (value!8903 Int) (text!1855 List!990)) (Times!201) (Or!201) (Equal!201) (Minus!201) (Broken!1009 (value!8904 List!990)) (And!201) (Div!201) (LessEqual!201) (Mod!201) (Concat!480) (Not!201) (Plus!201) (SpaceValue!201 (value!8905 List!990)) (IntegerValue!605 (value!8906 Int) (text!1856 List!990)) (StringLiteralValue!604 (text!1857 List!990)) (FloatLiteralValue!403 (text!1858 List!990)) (BytesLiteralValue!201 (value!8907 List!990)) (CommentValue!403 (value!8908 List!990)) (StringLiteralValue!605 (value!8909 List!990)) (ErrorTokenValue!201 (msg!262 List!990)) )
))
(declare-datatypes ((C!1480 0))(
  ( (C!1481 (val!347 Int)) )
))
(declare-datatypes ((Regex!279 0))(
  ( (ElementMatch!279 (c!16621 C!1480)) (Concat!481 (regOne!1070 Regex!279) (regTwo!1070 Regex!279)) (EmptyExpr!279) (Star!279 (reg!608 Regex!279)) (EmptyLang!279) (Union!279 (regOne!1071 Regex!279) (regTwo!1071 Regex!279)) )
))
(declare-datatypes ((String!1397 0))(
  ( (String!1398 (value!8910 String)) )
))
(declare-datatypes ((List!991 0))(
  ( (Nil!985) (Cons!985 (h!6382 C!1480) (t!17194 List!991)) )
))
(declare-datatypes ((IArray!453 0))(
  ( (IArray!454 (innerList!284 List!991)) )
))
(declare-datatypes ((Conc!226 0))(
  ( (Node!226 (left!744 Conc!226) (right!1074 Conc!226) (csize!682 Int) (cheight!437 Int)) (Leaf!467 (xs!2805 IArray!453) (csize!683 Int)) (Empty!226) )
))
(declare-datatypes ((BalanceConc!456 0))(
  ( (BalanceConc!457 (c!16622 Conc!226)) )
))
(declare-datatypes ((TokenValueInjection!226 0))(
  ( (TokenValueInjection!227 (toValue!690 Int) (toChars!549 Int)) )
))
(declare-datatypes ((Rule!222 0))(
  ( (Rule!223 (regex!211 Regex!279) (tag!389 String!1397) (isSeparator!211 Bool) (transformation!211 TokenValueInjection!226)) )
))
(declare-datatypes ((Token!186 0))(
  ( (Token!187 (value!8911 TokenValue!201) (rule!686 Rule!222) (size!921 Int) (originalCharacters!264 List!991)) )
))
(declare-datatypes ((List!992 0))(
  ( (Nil!986) (Cons!986 (h!6383 Token!186) (t!17195 List!992)) )
))
(declare-datatypes ((IArray!455 0))(
  ( (IArray!456 (innerList!285 List!992)) )
))
(declare-datatypes ((Conc!227 0))(
  ( (Node!227 (left!745 Conc!227) (right!1075 Conc!227) (csize!684 Int) (cheight!438 Int)) (Leaf!468 (xs!2806 IArray!455) (csize!685 Int)) (Empty!227) )
))
(declare-datatypes ((BalanceConc!458 0))(
  ( (BalanceConc!459 (c!16623 Conc!227)) )
))
(declare-fun v!6227 () BalanceConc!458)

(declare-fun e!29651 () Bool)

(declare-fun inv!1305 (BalanceConc!458) Bool)

(assert (=> start!3638 (and (inv!1305 v!6227) e!29651)))

(declare-fun e!29652 () Bool)

(assert (=> start!3638 e!29652))

(declare-fun b!50597 () Bool)

(declare-fun res!33254 () Bool)

(declare-fun e!29657 () Bool)

(assert (=> b!50597 (=> res!33254 e!29657)))

(declare-fun lt!8569 () List!992)

(declare-fun lt!8570 () Token!186)

(declare-fun contains!88 (List!992 Token!186) Bool)

(assert (=> b!50597 (= res!33254 (not (contains!88 lt!8569 lt!8570)))))

(declare-fun b!50598 () Bool)

(declare-fun e!29658 () Bool)

(assert (=> b!50598 (= e!29654 e!29658)))

(declare-fun res!33251 () Bool)

(assert (=> b!50598 (=> (not res!33251) (not e!29658))))

(declare-fun lt!8565 () Int)

(assert (=> b!50598 (= res!33251 (<= from!821 lt!8565))))

(declare-fun size!922 (BalanceConc!458) Int)

(assert (=> b!50598 (= lt!8565 (size!922 v!6227))))

(declare-fun b!50599 () Bool)

(declare-fun res!33260 () Bool)

(assert (=> b!50599 (=> (not res!33260) (not e!29658))))

(declare-datatypes ((List!993 0))(
  ( (Nil!987) (Cons!987 (h!6384 Rule!222) (t!17196 List!993)) )
))
(declare-fun rules!1069 () List!993)

(declare-fun rulesInvariant!97 (LexerInterface!103 List!993) Bool)

(assert (=> b!50599 (= res!33260 (rulesInvariant!97 thiss!11059 rules!1069))))

(declare-fun e!29653 () Bool)

(declare-fun b!50600 () Bool)

(declare-fun e!29659 () Bool)

(declare-fun tp!33470 () Bool)

(declare-fun inv!1301 (String!1397) Bool)

(declare-fun inv!1306 (TokenValueInjection!226) Bool)

(assert (=> b!50600 (= e!29653 (and tp!33470 (inv!1301 (tag!389 (h!6384 rules!1069))) (inv!1306 (transformation!211 (h!6384 rules!1069))) e!29659))))

(assert (=> b!50601 (= e!29659 (and tp!33468 tp!33469))))

(declare-fun b!50602 () Bool)

(declare-fun e!29656 () Bool)

(assert (=> b!50602 (= e!29657 e!29656)))

(declare-fun res!33252 () Bool)

(assert (=> b!50602 (=> res!33252 e!29656)))

(declare-fun lt!8574 () Token!186)

(declare-fun contains!89 (BalanceConc!458 Token!186) Bool)

(assert (=> b!50602 (= res!33252 (not (contains!89 v!6227 lt!8574)))))

(declare-fun apply!72 (BalanceConc!458 Int) Token!186)

(assert (=> b!50602 (= lt!8574 (apply!72 v!6227 (+ 1 from!821)))))

(declare-fun b!50603 () Bool)

(declare-fun res!33253 () Bool)

(assert (=> b!50603 (=> (not res!33253) (not e!29658))))

(assert (=> b!50603 (= res!33253 (< from!821 (- lt!8565 1)))))

(declare-fun b!50604 () Bool)

(declare-fun res!33257 () Bool)

(assert (=> b!50604 (=> res!33257 e!29656)))

(assert (=> b!50604 (= res!33257 (not (contains!88 lt!8569 lt!8574)))))

(declare-fun b!50605 () Bool)

(assert (=> b!50605 (= e!29656 (and (<= 0 (+ 1 from!821)) (< (+ 1 from!821) lt!8565)))))

(declare-fun rulesProduceIndividualToken!22 (LexerInterface!103 List!993 Token!186) Bool)

(assert (=> b!50605 (rulesProduceIndividualToken!22 thiss!11059 rules!1069 lt!8574)))

(declare-datatypes ((Unit!554 0))(
  ( (Unit!555) )
))
(declare-fun lt!8572 () Unit!554)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!10 (LexerInterface!103 List!993 List!992 Token!186) Unit!554)

(assert (=> b!50605 (= lt!8572 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!10 thiss!11059 rules!1069 lt!8569 lt!8574))))

(assert (=> b!50605 (rulesProduceIndividualToken!22 thiss!11059 rules!1069 lt!8570)))

(declare-fun lt!8566 () Unit!554)

(assert (=> b!50605 (= lt!8566 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!10 thiss!11059 rules!1069 lt!8569 lt!8570))))

(declare-fun b!50606 () Bool)

(declare-fun res!33256 () Bool)

(assert (=> b!50606 (=> (not res!33256) (not e!29658))))

(declare-fun isEmpty!197 (List!993) Bool)

(assert (=> b!50606 (= res!33256 (not (isEmpty!197 rules!1069)))))

(declare-fun b!50607 () Bool)

(declare-fun tp!33466 () Bool)

(assert (=> b!50607 (= e!29652 (and e!29653 tp!33466))))

(declare-fun b!50608 () Bool)

(declare-fun tp!33467 () Bool)

(declare-fun inv!1307 (Conc!227) Bool)

(assert (=> b!50608 (= e!29651 (and (inv!1307 (c!16623 v!6227)) tp!33467))))

(declare-fun b!50609 () Bool)

(assert (=> b!50609 (= e!29658 (not e!29657))))

(declare-fun res!33259 () Bool)

(assert (=> b!50609 (=> res!33259 e!29657)))

(assert (=> b!50609 (= res!33259 (not (contains!89 v!6227 lt!8570)))))

(assert (=> b!50609 (= lt!8570 (apply!72 v!6227 from!821))))

(declare-fun lt!8568 () List!992)

(declare-fun tail!53 (List!992) List!992)

(declare-fun drop!28 (List!992 Int) List!992)

(assert (=> b!50609 (= (tail!53 lt!8568) (drop!28 lt!8569 (+ 2 from!821)))))

(declare-fun lt!8576 () Unit!554)

(declare-fun lemmaDropTail!24 (List!992 Int) Unit!554)

(assert (=> b!50609 (= lt!8576 (lemmaDropTail!24 lt!8569 (+ 1 from!821)))))

(declare-fun lt!8571 () List!992)

(assert (=> b!50609 (= (tail!53 lt!8571) lt!8568)))

(declare-fun lt!8567 () Unit!554)

(assert (=> b!50609 (= lt!8567 (lemmaDropTail!24 lt!8569 from!821))))

(declare-fun head!368 (List!992) Token!186)

(declare-fun apply!73 (List!992 Int) Token!186)

(assert (=> b!50609 (= (head!368 lt!8568) (apply!73 lt!8569 (+ 1 from!821)))))

(assert (=> b!50609 (= lt!8568 (drop!28 lt!8569 (+ 1 from!821)))))

(declare-fun lt!8575 () Unit!554)

(declare-fun lemmaDropApply!28 (List!992 Int) Unit!554)

(assert (=> b!50609 (= lt!8575 (lemmaDropApply!28 lt!8569 (+ 1 from!821)))))

(assert (=> b!50609 (= (head!368 lt!8571) (apply!73 lt!8569 from!821))))

(assert (=> b!50609 (= lt!8571 (drop!28 lt!8569 from!821))))

(declare-fun lt!8573 () Unit!554)

(assert (=> b!50609 (= lt!8573 (lemmaDropApply!28 lt!8569 from!821))))

(declare-fun list!252 (BalanceConc!458) List!992)

(assert (=> b!50609 (= lt!8569 (list!252 v!6227))))

(declare-fun b!50610 () Bool)

(declare-fun res!33258 () Bool)

(assert (=> b!50610 (=> (not res!33258) (not e!29658))))

(declare-fun rulesProduceEachTokenIndividually!41 (LexerInterface!103 List!993 BalanceConc!458) Bool)

(assert (=> b!50610 (= res!33258 (rulesProduceEachTokenIndividually!41 thiss!11059 rules!1069 v!6227))))

(assert (= (and start!3638 res!33255) b!50598))

(assert (= (and b!50598 res!33251) b!50606))

(assert (= (and b!50606 res!33256) b!50599))

(assert (= (and b!50599 res!33260) b!50610))

(assert (= (and b!50610 res!33258) b!50603))

(assert (= (and b!50603 res!33253) b!50609))

(assert (= (and b!50609 (not res!33259)) b!50597))

(assert (= (and b!50597 (not res!33254)) b!50602))

(assert (= (and b!50602 (not res!33252)) b!50604))

(assert (= (and b!50604 (not res!33257)) b!50605))

(assert (= start!3638 b!50608))

(assert (= b!50600 b!50601))

(assert (= b!50607 b!50600))

(assert (= (and start!3638 ((_ is Cons!987) rules!1069)) b!50607))

(declare-fun m!24770 () Bool)

(assert (=> b!50600 m!24770))

(declare-fun m!24772 () Bool)

(assert (=> b!50600 m!24772))

(declare-fun m!24774 () Bool)

(assert (=> b!50606 m!24774))

(declare-fun m!24776 () Bool)

(assert (=> b!50604 m!24776))

(declare-fun m!24778 () Bool)

(assert (=> b!50605 m!24778))

(declare-fun m!24780 () Bool)

(assert (=> b!50605 m!24780))

(declare-fun m!24782 () Bool)

(assert (=> b!50605 m!24782))

(declare-fun m!24784 () Bool)

(assert (=> b!50605 m!24784))

(declare-fun m!24786 () Bool)

(assert (=> b!50599 m!24786))

(declare-fun m!24788 () Bool)

(assert (=> b!50609 m!24788))

(declare-fun m!24790 () Bool)

(assert (=> b!50609 m!24790))

(declare-fun m!24792 () Bool)

(assert (=> b!50609 m!24792))

(declare-fun m!24794 () Bool)

(assert (=> b!50609 m!24794))

(declare-fun m!24796 () Bool)

(assert (=> b!50609 m!24796))

(declare-fun m!24798 () Bool)

(assert (=> b!50609 m!24798))

(declare-fun m!24800 () Bool)

(assert (=> b!50609 m!24800))

(declare-fun m!24802 () Bool)

(assert (=> b!50609 m!24802))

(declare-fun m!24804 () Bool)

(assert (=> b!50609 m!24804))

(declare-fun m!24806 () Bool)

(assert (=> b!50609 m!24806))

(declare-fun m!24808 () Bool)

(assert (=> b!50609 m!24808))

(declare-fun m!24810 () Bool)

(assert (=> b!50609 m!24810))

(declare-fun m!24812 () Bool)

(assert (=> b!50609 m!24812))

(declare-fun m!24814 () Bool)

(assert (=> b!50609 m!24814))

(declare-fun m!24816 () Bool)

(assert (=> b!50609 m!24816))

(declare-fun m!24818 () Bool)

(assert (=> b!50609 m!24818))

(declare-fun m!24820 () Bool)

(assert (=> b!50598 m!24820))

(declare-fun m!24822 () Bool)

(assert (=> b!50608 m!24822))

(declare-fun m!24824 () Bool)

(assert (=> b!50602 m!24824))

(declare-fun m!24826 () Bool)

(assert (=> b!50602 m!24826))

(declare-fun m!24828 () Bool)

(assert (=> b!50610 m!24828))

(declare-fun m!24830 () Bool)

(assert (=> b!50597 m!24830))

(declare-fun m!24832 () Bool)

(assert (=> start!3638 m!24832))

(check-sat (not b!50599) (not b!50598) (not b_next!1559) (not b!50604) (not b!50600) (not b!50610) (not b!50602) (not b!50597) (not b_next!1557) (not b!50607) (not b!50605) (not b!50606) (not b!50609) b_and!1599 (not start!3638) (not b!50608) b_and!1601)
(check-sat b_and!1601 b_and!1599 (not b_next!1557) (not b_next!1559))
