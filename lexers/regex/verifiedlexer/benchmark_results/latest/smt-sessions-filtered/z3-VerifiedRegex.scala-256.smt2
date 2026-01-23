; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4186 () Bool)

(assert start!4186)

(declare-fun b!53751 () Bool)

(declare-fun b_free!1749 () Bool)

(declare-fun b_next!1749 () Bool)

(assert (=> b!53751 (= b_free!1749 (not b_next!1749))))

(declare-fun tp!34535 () Bool)

(declare-fun b_and!1799 () Bool)

(assert (=> b!53751 (= tp!34535 b_and!1799)))

(declare-fun b_free!1751 () Bool)

(declare-fun b_next!1751 () Bool)

(assert (=> b!53751 (= b_free!1751 (not b_next!1751))))

(declare-fun tp!34536 () Bool)

(declare-fun b_and!1801 () Bool)

(assert (=> b!53751 (= tp!34536 b_and!1801)))

(declare-fun b!53750 () Bool)

(declare-fun e!31782 () Bool)

(declare-fun e!31775 () Bool)

(assert (=> b!53750 (= e!31782 (not e!31775))))

(declare-fun res!34538 () Bool)

(assert (=> b!53750 (=> res!34538 e!31775)))

(declare-datatypes ((List!1130 0))(
  ( (Nil!1124) (Cons!1124 (h!6521 (_ BitVec 16)) (t!17405 List!1130)) )
))
(declare-datatypes ((TokenValue!233 0))(
  ( (FloatLiteralValue!466 (text!2076 List!1130)) (TokenValueExt!232 (__x!1561 Int)) (Broken!1165 (value!9797 List!1130)) (Object!238) (End!233) (Def!233) (Underscore!233) (Match!233) (Else!233) (Error!233) (Case!233) (If!233) (Extends!233) (Abstract!233) (Class!233) (Val!233) (DelimiterValue!466 (del!293 List!1130)) (KeywordValue!239 (value!9798 List!1130)) (CommentValue!466 (value!9799 List!1130)) (WhitespaceValue!466 (value!9800 List!1130)) (IndentationValue!233 (value!9801 List!1130)) (String!1556) (Int32!233) (Broken!1166 (value!9802 List!1130)) (Boolean!234) (Unit!637) (OperatorValue!236 (op!293 List!1130)) (IdentifierValue!466 (value!9803 List!1130)) (IdentifierValue!467 (value!9804 List!1130)) (WhitespaceValue!467 (value!9805 List!1130)) (True!466) (False!466) (Broken!1167 (value!9806 List!1130)) (Broken!1168 (value!9807 List!1130)) (True!467) (RightBrace!233) (RightBracket!233) (Colon!233) (Null!233) (Comma!233) (LeftBracket!233) (False!467) (LeftBrace!233) (ImaginaryLiteralValue!233 (text!2077 List!1130)) (StringLiteralValue!699 (value!9808 List!1130)) (EOFValue!233 (value!9809 List!1130)) (IdentValue!233 (value!9810 List!1130)) (DelimiterValue!467 (value!9811 List!1130)) (DedentValue!233 (value!9812 List!1130)) (NewLineValue!233 (value!9813 List!1130)) (IntegerValue!699 (value!9814 (_ BitVec 32)) (text!2078 List!1130)) (IntegerValue!700 (value!9815 Int) (text!2079 List!1130)) (Times!233) (Or!233) (Equal!233) (Minus!233) (Broken!1169 (value!9816 List!1130)) (And!233) (Div!233) (LessEqual!233) (Mod!233) (Concat!544) (Not!233) (Plus!233) (SpaceValue!233 (value!9817 List!1130)) (IntegerValue!701 (value!9818 Int) (text!2080 List!1130)) (StringLiteralValue!700 (text!2081 List!1130)) (FloatLiteralValue!467 (text!2082 List!1130)) (BytesLiteralValue!233 (value!9819 List!1130)) (CommentValue!467 (value!9820 List!1130)) (StringLiteralValue!701 (value!9821 List!1130)) (ErrorTokenValue!233 (msg!294 List!1130)) )
))
(declare-datatypes ((C!1544 0))(
  ( (C!1545 (val!379 Int)) )
))
(declare-datatypes ((Regex!311 0))(
  ( (ElementMatch!311 (c!17082 C!1544)) (Concat!545 (regOne!1134 Regex!311) (regTwo!1134 Regex!311)) (EmptyExpr!311) (Star!311 (reg!640 Regex!311)) (EmptyLang!311) (Union!311 (regOne!1135 Regex!311) (regTwo!1135 Regex!311)) )
))
(declare-datatypes ((String!1557 0))(
  ( (String!1558 (value!9822 String)) )
))
(declare-datatypes ((List!1131 0))(
  ( (Nil!1125) (Cons!1125 (h!6522 C!1544) (t!17406 List!1131)) )
))
(declare-datatypes ((IArray!581 0))(
  ( (IArray!582 (innerList!348 List!1131)) )
))
(declare-datatypes ((Conc!290 0))(
  ( (Node!290 (left!856 Conc!290) (right!1186 Conc!290) (csize!810 Int) (cheight!501 Int)) (Leaf!547 (xs!2869 IArray!581) (csize!811 Int)) (Empty!290) )
))
(declare-datatypes ((BalanceConc!584 0))(
  ( (BalanceConc!585 (c!17083 Conc!290)) )
))
(declare-datatypes ((TokenValueInjection!290 0))(
  ( (TokenValueInjection!291 (toValue!722 Int) (toChars!581 Int)) )
))
(declare-datatypes ((Rule!286 0))(
  ( (Rule!287 (regex!243 Regex!311) (tag!421 String!1557) (isSeparator!243 Bool) (transformation!243 TokenValueInjection!290)) )
))
(declare-datatypes ((Token!250 0))(
  ( (Token!251 (value!9823 TokenValue!233) (rule!718 Rule!286) (size!1021 Int) (originalCharacters!296 List!1131)) )
))
(declare-datatypes ((List!1132 0))(
  ( (Nil!1126) (Cons!1126 (h!6523 Token!250) (t!17407 List!1132)) )
))
(declare-datatypes ((IArray!583 0))(
  ( (IArray!584 (innerList!349 List!1132)) )
))
(declare-datatypes ((Conc!291 0))(
  ( (Node!291 (left!857 Conc!291) (right!1187 Conc!291) (csize!812 Int) (cheight!502 Int)) (Leaf!548 (xs!2870 IArray!583) (csize!813 Int)) (Empty!291) )
))
(declare-datatypes ((BalanceConc!586 0))(
  ( (BalanceConc!587 (c!17084 Conc!291)) )
))
(declare-fun v!6227 () BalanceConc!586)

(declare-fun lt!9732 () Token!250)

(declare-fun contains!138 (BalanceConc!586 Token!250) Bool)

(assert (=> b!53750 (= res!34538 (not (contains!138 v!6227 lt!9732)))))

(declare-fun from!821 () Int)

(declare-fun apply!124 (BalanceConc!586 Int) Token!250)

(assert (=> b!53750 (= lt!9732 (apply!124 v!6227 from!821))))

(declare-fun lt!9730 () List!1132)

(declare-fun lt!9727 () List!1132)

(declare-fun tail!78 (List!1132) List!1132)

(declare-fun drop!54 (List!1132 Int) List!1132)

(assert (=> b!53750 (= (tail!78 lt!9730) (drop!54 lt!9727 (+ 2 from!821)))))

(declare-datatypes ((Unit!638 0))(
  ( (Unit!639) )
))
(declare-fun lt!9734 () Unit!638)

(declare-fun lemmaDropTail!46 (List!1132 Int) Unit!638)

(assert (=> b!53750 (= lt!9734 (lemmaDropTail!46 lt!9727 (+ 1 from!821)))))

(declare-fun lt!9726 () List!1132)

(assert (=> b!53750 (= (tail!78 lt!9726) lt!9730)))

(declare-fun lt!9729 () Unit!638)

(assert (=> b!53750 (= lt!9729 (lemmaDropTail!46 lt!9727 from!821))))

(declare-fun head!394 (List!1132) Token!250)

(declare-fun apply!125 (List!1132 Int) Token!250)

(assert (=> b!53750 (= (head!394 lt!9730) (apply!125 lt!9727 (+ 1 from!821)))))

(assert (=> b!53750 (= lt!9730 (drop!54 lt!9727 (+ 1 from!821)))))

(declare-fun lt!9733 () Unit!638)

(declare-fun lemmaDropApply!54 (List!1132 Int) Unit!638)

(assert (=> b!53750 (= lt!9733 (lemmaDropApply!54 lt!9727 (+ 1 from!821)))))

(assert (=> b!53750 (= (head!394 lt!9726) (apply!125 lt!9727 from!821))))

(assert (=> b!53750 (= lt!9726 (drop!54 lt!9727 from!821))))

(declare-fun lt!9735 () Unit!638)

(assert (=> b!53750 (= lt!9735 (lemmaDropApply!54 lt!9727 from!821))))

(declare-fun list!293 (BalanceConc!586) List!1132)

(assert (=> b!53750 (= lt!9727 (list!293 v!6227))))

(declare-fun e!31780 () Bool)

(assert (=> b!53751 (= e!31780 (and tp!34535 tp!34536))))

(declare-fun b!53752 () Bool)

(declare-fun res!34536 () Bool)

(assert (=> b!53752 (=> (not res!34536) (not e!31782))))

(declare-datatypes ((LexerInterface!135 0))(
  ( (LexerInterfaceExt!132 (__x!1562 Int)) (Lexer!133) )
))
(declare-fun thiss!11059 () LexerInterface!135)

(declare-datatypes ((List!1133 0))(
  ( (Nil!1127) (Cons!1127 (h!6524 Rule!286) (t!17408 List!1133)) )
))
(declare-fun rules!1069 () List!1133)

(declare-fun rulesProduceEachTokenIndividually!73 (LexerInterface!135 List!1133 BalanceConc!586) Bool)

(assert (=> b!53752 (= res!34536 (rulesProduceEachTokenIndividually!73 thiss!11059 rules!1069 v!6227))))

(declare-fun b!53753 () Bool)

(declare-fun e!31781 () Bool)

(assert (=> b!53753 (= e!31781 true)))

(declare-fun lt!9728 () Bool)

(declare-fun lt!9731 () Token!250)

(declare-fun contains!139 (List!1132 Token!250) Bool)

(assert (=> b!53753 (= lt!9728 (contains!139 lt!9727 lt!9731))))

(declare-fun b!53754 () Bool)

(declare-fun e!31778 () Bool)

(declare-fun tp!34537 () Bool)

(declare-fun inv!1486 (Conc!291) Bool)

(assert (=> b!53754 (= e!31778 (and (inv!1486 (c!17084 v!6227)) tp!34537))))

(declare-fun b!53755 () Bool)

(declare-fun e!31774 () Bool)

(assert (=> b!53755 (= e!31774 e!31782)))

(declare-fun res!34541 () Bool)

(assert (=> b!53755 (=> (not res!34541) (not e!31782))))

(declare-fun lt!9736 () Int)

(assert (=> b!53755 (= res!34541 (<= from!821 lt!9736))))

(declare-fun size!1022 (BalanceConc!586) Int)

(assert (=> b!53755 (= lt!9736 (size!1022 v!6227))))

(declare-fun b!53756 () Bool)

(declare-fun res!34535 () Bool)

(assert (=> b!53756 (=> (not res!34535) (not e!31782))))

(assert (=> b!53756 (= res!34535 (< from!821 (- lt!9736 1)))))

(declare-fun tp!34534 () Bool)

(declare-fun b!53757 () Bool)

(declare-fun e!31779 () Bool)

(declare-fun inv!1482 (String!1557) Bool)

(declare-fun inv!1487 (TokenValueInjection!290) Bool)

(assert (=> b!53757 (= e!31779 (and tp!34534 (inv!1482 (tag!421 (h!6524 rules!1069))) (inv!1487 (transformation!243 (h!6524 rules!1069))) e!31780))))

(declare-fun b!53758 () Bool)

(declare-fun res!34539 () Bool)

(assert (=> b!53758 (=> (not res!34539) (not e!31782))))

(declare-fun rulesInvariant!129 (LexerInterface!135 List!1133) Bool)

(assert (=> b!53758 (= res!34539 (rulesInvariant!129 thiss!11059 rules!1069))))

(declare-fun res!34537 () Bool)

(assert (=> start!4186 (=> (not res!34537) (not e!31774))))

(get-info :version)

(assert (=> start!4186 (= res!34537 (and ((_ is Lexer!133) thiss!11059) (>= from!821 0)))))

(assert (=> start!4186 e!31774))

(assert (=> start!4186 true))

(declare-fun inv!1488 (BalanceConc!586) Bool)

(assert (=> start!4186 (and (inv!1488 v!6227) e!31778)))

(declare-fun e!31777 () Bool)

(assert (=> start!4186 e!31777))

(declare-fun b!53759 () Bool)

(declare-fun tp!34538 () Bool)

(assert (=> b!53759 (= e!31777 (and e!31779 tp!34538))))

(declare-fun b!53760 () Bool)

(assert (=> b!53760 (= e!31775 e!31781)))

(declare-fun res!34534 () Bool)

(assert (=> b!53760 (=> res!34534 e!31781)))

(assert (=> b!53760 (= res!34534 (not (contains!138 v!6227 lt!9731)))))

(assert (=> b!53760 (= lt!9731 (apply!124 v!6227 (+ 1 from!821)))))

(declare-fun b!53761 () Bool)

(declare-fun res!34540 () Bool)

(assert (=> b!53761 (=> (not res!34540) (not e!31782))))

(declare-fun isEmpty!229 (List!1133) Bool)

(assert (=> b!53761 (= res!34540 (not (isEmpty!229 rules!1069)))))

(declare-fun b!53762 () Bool)

(declare-fun res!34542 () Bool)

(assert (=> b!53762 (=> res!34542 e!31775)))

(assert (=> b!53762 (= res!34542 (not (contains!139 lt!9727 lt!9732)))))

(assert (= (and start!4186 res!34537) b!53755))

(assert (= (and b!53755 res!34541) b!53761))

(assert (= (and b!53761 res!34540) b!53758))

(assert (= (and b!53758 res!34539) b!53752))

(assert (= (and b!53752 res!34536) b!53756))

(assert (= (and b!53756 res!34535) b!53750))

(assert (= (and b!53750 (not res!34538)) b!53762))

(assert (= (and b!53762 (not res!34542)) b!53760))

(assert (= (and b!53760 (not res!34534)) b!53753))

(assert (= start!4186 b!53754))

(assert (= b!53757 b!53751))

(assert (= b!53759 b!53757))

(assert (= (and start!4186 ((_ is Cons!1127) rules!1069)) b!53759))

(declare-fun m!27586 () Bool)

(assert (=> b!53753 m!27586))

(declare-fun m!27588 () Bool)

(assert (=> b!53752 m!27588))

(declare-fun m!27590 () Bool)

(assert (=> b!53760 m!27590))

(declare-fun m!27592 () Bool)

(assert (=> b!53760 m!27592))

(declare-fun m!27594 () Bool)

(assert (=> b!53750 m!27594))

(declare-fun m!27596 () Bool)

(assert (=> b!53750 m!27596))

(declare-fun m!27598 () Bool)

(assert (=> b!53750 m!27598))

(declare-fun m!27600 () Bool)

(assert (=> b!53750 m!27600))

(declare-fun m!27602 () Bool)

(assert (=> b!53750 m!27602))

(declare-fun m!27604 () Bool)

(assert (=> b!53750 m!27604))

(declare-fun m!27606 () Bool)

(assert (=> b!53750 m!27606))

(declare-fun m!27608 () Bool)

(assert (=> b!53750 m!27608))

(declare-fun m!27610 () Bool)

(assert (=> b!53750 m!27610))

(declare-fun m!27612 () Bool)

(assert (=> b!53750 m!27612))

(declare-fun m!27614 () Bool)

(assert (=> b!53750 m!27614))

(declare-fun m!27616 () Bool)

(assert (=> b!53750 m!27616))

(declare-fun m!27618 () Bool)

(assert (=> b!53750 m!27618))

(declare-fun m!27620 () Bool)

(assert (=> b!53750 m!27620))

(declare-fun m!27622 () Bool)

(assert (=> b!53750 m!27622))

(declare-fun m!27624 () Bool)

(assert (=> b!53750 m!27624))

(declare-fun m!27626 () Bool)

(assert (=> b!53755 m!27626))

(declare-fun m!27628 () Bool)

(assert (=> start!4186 m!27628))

(declare-fun m!27630 () Bool)

(assert (=> b!53761 m!27630))

(declare-fun m!27632 () Bool)

(assert (=> b!53758 m!27632))

(declare-fun m!27634 () Bool)

(assert (=> b!53757 m!27634))

(declare-fun m!27636 () Bool)

(assert (=> b!53757 m!27636))

(declare-fun m!27638 () Bool)

(assert (=> b!53754 m!27638))

(declare-fun m!27640 () Bool)

(assert (=> b!53762 m!27640))

(check-sat (not b!53760) (not b!53754) (not b!53762) (not b!53753) (not b_next!1749) (not b!53755) (not b!53761) (not b!53757) b_and!1801 (not start!4186) (not b!53752) (not b!53758) (not b!53750) b_and!1799 (not b!53759) (not b_next!1751))
(check-sat b_and!1801 b_and!1799 (not b_next!1749) (not b_next!1751))
