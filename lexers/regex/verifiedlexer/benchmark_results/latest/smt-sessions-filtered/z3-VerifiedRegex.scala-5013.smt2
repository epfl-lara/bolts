; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253698 () Bool)

(assert start!253698)

(declare-fun b!2609866 () Bool)

(declare-fun b_free!73309 () Bool)

(declare-fun b_next!74013 () Bool)

(assert (=> b!2609866 (= b_free!73309 (not b_next!74013))))

(declare-fun tp!829125 () Bool)

(declare-fun b_and!190867 () Bool)

(assert (=> b!2609866 (= tp!829125 b_and!190867)))

(declare-fun b_free!73311 () Bool)

(declare-fun b_next!74015 () Bool)

(assert (=> b!2609866 (= b_free!73311 (not b_next!74015))))

(declare-fun tp!829126 () Bool)

(declare-fun b_and!190869 () Bool)

(assert (=> b!2609866 (= tp!829126 b_and!190869)))

(declare-fun b!2609879 () Bool)

(declare-fun b_free!73313 () Bool)

(declare-fun b_next!74017 () Bool)

(assert (=> b!2609879 (= b_free!73313 (not b_next!74017))))

(declare-fun tp!829121 () Bool)

(declare-fun b_and!190871 () Bool)

(assert (=> b!2609879 (= tp!829121 b_and!190871)))

(declare-fun b_free!73315 () Bool)

(declare-fun b_next!74019 () Bool)

(assert (=> b!2609879 (= b_free!73315 (not b_next!74019))))

(declare-fun tp!829122 () Bool)

(declare-fun b_and!190873 () Bool)

(assert (=> b!2609879 (= tp!829122 b_and!190873)))

(declare-fun res!1098466 () Bool)

(declare-fun e!1646612 () Bool)

(assert (=> start!253698 (=> (not res!1098466) (not e!1646612))))

(declare-datatypes ((LexerInterface!4144 0))(
  ( (LexerInterfaceExt!4141 (__x!19371 Int)) (Lexer!4142) )
))
(declare-fun thiss!14197 () LexerInterface!4144)

(declare-fun from!862 () Int)

(get-info :version)

(assert (=> start!253698 (= res!1098466 (and ((_ is Lexer!4142) thiss!14197) (>= from!862 0)))))

(assert (=> start!253698 e!1646612))

(assert (=> start!253698 true))

(declare-fun e!1646615 () Bool)

(assert (=> start!253698 e!1646615))

(declare-datatypes ((C!15540 0))(
  ( (C!15541 (val!9704 Int)) )
))
(declare-datatypes ((List!30213 0))(
  ( (Nil!30113) (Cons!30113 (h!35533 (_ BitVec 16)) (t!213984 List!30213)) )
))
(declare-datatypes ((TokenValue!4769 0))(
  ( (FloatLiteralValue!9538 (text!33828 List!30213)) (TokenValueExt!4768 (__x!19372 Int)) (Broken!23845 (value!147168 List!30213)) (Object!4868) (End!4769) (Def!4769) (Underscore!4769) (Match!4769) (Else!4769) (Error!4769) (Case!4769) (If!4769) (Extends!4769) (Abstract!4769) (Class!4769) (Val!4769) (DelimiterValue!9538 (del!4829 List!30213)) (KeywordValue!4775 (value!147169 List!30213)) (CommentValue!9538 (value!147170 List!30213)) (WhitespaceValue!9538 (value!147171 List!30213)) (IndentationValue!4769 (value!147172 List!30213)) (String!33728) (Int32!4769) (Broken!23846 (value!147173 List!30213)) (Boolean!4770) (Unit!44106) (OperatorValue!4772 (op!4829 List!30213)) (IdentifierValue!9538 (value!147174 List!30213)) (IdentifierValue!9539 (value!147175 List!30213)) (WhitespaceValue!9539 (value!147176 List!30213)) (True!9538) (False!9538) (Broken!23847 (value!147177 List!30213)) (Broken!23848 (value!147178 List!30213)) (True!9539) (RightBrace!4769) (RightBracket!4769) (Colon!4769) (Null!4769) (Comma!4769) (LeftBracket!4769) (False!9539) (LeftBrace!4769) (ImaginaryLiteralValue!4769 (text!33829 List!30213)) (StringLiteralValue!14307 (value!147179 List!30213)) (EOFValue!4769 (value!147180 List!30213)) (IdentValue!4769 (value!147181 List!30213)) (DelimiterValue!9539 (value!147182 List!30213)) (DedentValue!4769 (value!147183 List!30213)) (NewLineValue!4769 (value!147184 List!30213)) (IntegerValue!14307 (value!147185 (_ BitVec 32)) (text!33830 List!30213)) (IntegerValue!14308 (value!147186 Int) (text!33831 List!30213)) (Times!4769) (Or!4769) (Equal!4769) (Minus!4769) (Broken!23849 (value!147187 List!30213)) (And!4769) (Div!4769) (LessEqual!4769) (Mod!4769) (Concat!12460) (Not!4769) (Plus!4769) (SpaceValue!4769 (value!147188 List!30213)) (IntegerValue!14309 (value!147189 Int) (text!33832 List!30213)) (StringLiteralValue!14308 (text!33833 List!30213)) (FloatLiteralValue!9539 (text!33834 List!30213)) (BytesLiteralValue!4769 (value!147190 List!30213)) (CommentValue!9539 (value!147191 List!30213)) (StringLiteralValue!14309 (value!147192 List!30213)) (ErrorTokenValue!4769 (msg!4830 List!30213)) )
))
(declare-datatypes ((Regex!7691 0))(
  ( (ElementMatch!7691 (c!419594 C!15540)) (Concat!12461 (regOne!15894 Regex!7691) (regTwo!15894 Regex!7691)) (EmptyExpr!7691) (Star!7691 (reg!8020 Regex!7691)) (EmptyLang!7691) (Union!7691 (regOne!15895 Regex!7691) (regTwo!15895 Regex!7691)) )
))
(declare-datatypes ((String!33729 0))(
  ( (String!33730 (value!147193 String)) )
))
(declare-datatypes ((List!30214 0))(
  ( (Nil!30114) (Cons!30114 (h!35534 C!15540) (t!213985 List!30214)) )
))
(declare-datatypes ((IArray!18677 0))(
  ( (IArray!18678 (innerList!9396 List!30214)) )
))
(declare-datatypes ((Conc!9336 0))(
  ( (Node!9336 (left!23157 Conc!9336) (right!23487 Conc!9336) (csize!18902 Int) (cheight!9547 Int)) (Leaf!14350 (xs!12320 IArray!18677) (csize!18903 Int)) (Empty!9336) )
))
(declare-datatypes ((BalanceConc!18286 0))(
  ( (BalanceConc!18287 (c!419595 Conc!9336)) )
))
(declare-datatypes ((TokenValueInjection!8978 0))(
  ( (TokenValueInjection!8979 (toValue!6449 Int) (toChars!6308 Int)) )
))
(declare-datatypes ((Rule!8894 0))(
  ( (Rule!8895 (regex!4547 Regex!7691) (tag!5037 String!33729) (isSeparator!4547 Bool) (transformation!4547 TokenValueInjection!8978)) )
))
(declare-datatypes ((Token!8564 0))(
  ( (Token!8565 (value!147194 TokenValue!4769) (rule!6917 Rule!8894) (size!23326 Int) (originalCharacters!5313 List!30214)) )
))
(declare-fun separatorToken!156 () Token!8564)

(declare-fun e!1646617 () Bool)

(declare-fun inv!40745 (Token!8564) Bool)

(assert (=> start!253698 (and (inv!40745 separatorToken!156) e!1646617)))

(declare-datatypes ((List!30215 0))(
  ( (Nil!30115) (Cons!30115 (h!35535 Token!8564) (t!213986 List!30215)) )
))
(declare-datatypes ((IArray!18679 0))(
  ( (IArray!18680 (innerList!9397 List!30215)) )
))
(declare-datatypes ((Conc!9337 0))(
  ( (Node!9337 (left!23158 Conc!9337) (right!23488 Conc!9337) (csize!18904 Int) (cheight!9548 Int)) (Leaf!14351 (xs!12321 IArray!18679) (csize!18905 Int)) (Empty!9337) )
))
(declare-datatypes ((BalanceConc!18288 0))(
  ( (BalanceConc!18289 (c!419596 Conc!9337)) )
))
(declare-fun v!6381 () BalanceConc!18288)

(declare-fun e!1646622 () Bool)

(declare-fun inv!40746 (BalanceConc!18288) Bool)

(assert (=> start!253698 (and (inv!40746 v!6381) e!1646622)))

(declare-fun b!2609865 () Bool)

(declare-fun e!1646613 () Bool)

(declare-fun tp!829128 () Bool)

(declare-datatypes ((List!30216 0))(
  ( (Nil!30116) (Cons!30116 (h!35536 Rule!8894) (t!213987 List!30216)) )
))
(declare-fun rules!1726 () List!30216)

(declare-fun e!1646616 () Bool)

(declare-fun inv!40740 (String!33729) Bool)

(declare-fun inv!40747 (TokenValueInjection!8978) Bool)

(assert (=> b!2609865 (= e!1646616 (and tp!829128 (inv!40740 (tag!5037 (h!35536 rules!1726))) (inv!40747 (transformation!4547 (h!35536 rules!1726))) e!1646613))))

(declare-fun e!1646623 () Bool)

(assert (=> b!2609866 (= e!1646623 (and tp!829125 tp!829126))))

(declare-fun b!2609867 () Bool)

(declare-fun res!1098465 () Bool)

(declare-fun e!1646624 () Bool)

(assert (=> b!2609867 (=> (not res!1098465) (not e!1646624))))

(declare-fun rulesInvariant!3644 (LexerInterface!4144 List!30216) Bool)

(assert (=> b!2609867 (= res!1098465 (rulesInvariant!3644 thiss!14197 rules!1726))))

(declare-fun b!2609868 () Bool)

(declare-fun e!1646621 () Bool)

(assert (=> b!2609868 (= e!1646624 e!1646621)))

(declare-fun res!1098457 () Bool)

(assert (=> b!2609868 (=> (not res!1098457) (not e!1646621))))

(declare-fun lt!917085 () Int)

(assert (=> b!2609868 (= res!1098457 (< from!862 lt!917085))))

(declare-datatypes ((Unit!44107 0))(
  ( (Unit!44108) )
))
(declare-fun lt!917086 () Unit!44107)

(declare-fun lambda!97608 () Int)

(declare-fun lt!917089 () List!30215)

(declare-fun lemmaContentSubsetPreservesForall!216 (List!30215 List!30215 Int) Unit!44107)

(declare-fun dropList!850 (BalanceConc!18288 Int) List!30215)

(assert (=> b!2609868 (= lt!917086 (lemmaContentSubsetPreservesForall!216 lt!917089 (dropList!850 v!6381 from!862) lambda!97608))))

(declare-fun list!11305 (BalanceConc!18288) List!30215)

(assert (=> b!2609868 (= lt!917089 (list!11305 v!6381))))

(declare-fun b!2609869 () Bool)

(declare-fun res!1098462 () Bool)

(assert (=> b!2609869 (=> (not res!1098462) (not e!1646624))))

(declare-fun isEmpty!17220 (List!30216) Bool)

(assert (=> b!2609869 (= res!1098462 (not (isEmpty!17220 rules!1726)))))

(declare-fun b!2609870 () Bool)

(declare-fun tp!829123 () Bool)

(declare-fun inv!40748 (Conc!9337) Bool)

(assert (=> b!2609870 (= e!1646622 (and (inv!40748 (c!419596 v!6381)) tp!829123))))

(declare-fun b!2609871 () Bool)

(declare-fun res!1098463 () Bool)

(assert (=> b!2609871 (=> (not res!1098463) (not e!1646624))))

(declare-fun sepAndNonSepRulesDisjointChars!1120 (List!30216 List!30216) Bool)

(assert (=> b!2609871 (= res!1098463 (sepAndNonSepRulesDisjointChars!1120 rules!1726 rules!1726))))

(declare-fun tp!829127 () Bool)

(declare-fun e!1646620 () Bool)

(declare-fun b!2609872 () Bool)

(assert (=> b!2609872 (= e!1646620 (and tp!829127 (inv!40740 (tag!5037 (rule!6917 separatorToken!156))) (inv!40747 (transformation!4547 (rule!6917 separatorToken!156))) e!1646623))))

(declare-fun b!2609873 () Bool)

(declare-fun tp!829120 () Bool)

(assert (=> b!2609873 (= e!1646615 (and e!1646616 tp!829120))))

(declare-fun b!2609874 () Bool)

(assert (=> b!2609874 (= e!1646612 e!1646624)))

(declare-fun res!1098456 () Bool)

(assert (=> b!2609874 (=> (not res!1098456) (not e!1646624))))

(assert (=> b!2609874 (= res!1098456 (<= from!862 lt!917085))))

(declare-fun size!23327 (BalanceConc!18288) Int)

(assert (=> b!2609874 (= lt!917085 (size!23327 v!6381))))

(declare-fun b!2609875 () Bool)

(declare-fun tp!829124 () Bool)

(declare-fun inv!21 (TokenValue!4769) Bool)

(assert (=> b!2609875 (= e!1646617 (and (inv!21 (value!147194 separatorToken!156)) e!1646620 tp!829124))))

(declare-fun b!2609876 () Bool)

(declare-fun res!1098461 () Bool)

(assert (=> b!2609876 (=> (not res!1098461) (not e!1646624))))

(assert (=> b!2609876 (= res!1098461 (isSeparator!4547 (rule!6917 separatorToken!156)))))

(declare-fun b!2609877 () Bool)

(declare-fun e!1646611 () Bool)

(assert (=> b!2609877 (= e!1646621 (not e!1646611))))

(declare-fun res!1098459 () Bool)

(assert (=> b!2609877 (=> res!1098459 e!1646611)))

(declare-fun contains!5569 (BalanceConc!18288 Token!8564) Bool)

(declare-fun apply!7054 (BalanceConc!18288 Int) Token!8564)

(assert (=> b!2609877 (= res!1098459 (not (contains!5569 v!6381 (apply!7054 v!6381 from!862))))))

(declare-fun lt!917084 () List!30215)

(declare-fun tail!4180 (List!30215) List!30215)

(declare-fun drop!1543 (List!30215 Int) List!30215)

(assert (=> b!2609877 (= (tail!4180 lt!917084) (drop!1543 lt!917089 (+ 1 from!862)))))

(declare-fun lt!917088 () Unit!44107)

(declare-fun lemmaDropTail!732 (List!30215 Int) Unit!44107)

(assert (=> b!2609877 (= lt!917088 (lemmaDropTail!732 lt!917089 from!862))))

(declare-fun head!5942 (List!30215) Token!8564)

(declare-fun apply!7055 (List!30215 Int) Token!8564)

(assert (=> b!2609877 (= (head!5942 lt!917084) (apply!7055 lt!917089 from!862))))

(assert (=> b!2609877 (= lt!917084 (drop!1543 lt!917089 from!862))))

(declare-fun lt!917087 () Unit!44107)

(declare-fun lemmaDropApply!758 (List!30215 Int) Unit!44107)

(assert (=> b!2609877 (= lt!917087 (lemmaDropApply!758 lt!917089 from!862))))

(declare-fun b!2609878 () Bool)

(declare-fun res!1098464 () Bool)

(assert (=> b!2609878 (=> (not res!1098464) (not e!1646624))))

(declare-fun rulesProduceEachTokenIndividually!964 (LexerInterface!4144 List!30216 BalanceConc!18288) Bool)

(assert (=> b!2609878 (= res!1098464 (rulesProduceEachTokenIndividually!964 thiss!14197 rules!1726 v!6381))))

(assert (=> b!2609879 (= e!1646613 (and tp!829121 tp!829122))))

(declare-fun b!2609880 () Bool)

(declare-fun res!1098460 () Bool)

(assert (=> b!2609880 (=> (not res!1098460) (not e!1646624))))

(declare-fun forall!6239 (BalanceConc!18288 Int) Bool)

(assert (=> b!2609880 (= res!1098460 (forall!6239 v!6381 lambda!97608))))

(declare-fun b!2609881 () Bool)

(assert (=> b!2609881 (= e!1646611 (<= 0 from!862))))

(declare-fun b!2609882 () Bool)

(declare-fun res!1098458 () Bool)

(assert (=> b!2609882 (=> (not res!1098458) (not e!1646624))))

(declare-fun rulesProduceIndividualToken!1856 (LexerInterface!4144 List!30216 Token!8564) Bool)

(assert (=> b!2609882 (= res!1098458 (rulesProduceIndividualToken!1856 thiss!14197 rules!1726 separatorToken!156))))

(assert (= (and start!253698 res!1098466) b!2609874))

(assert (= (and b!2609874 res!1098456) b!2609869))

(assert (= (and b!2609869 res!1098462) b!2609867))

(assert (= (and b!2609867 res!1098465) b!2609878))

(assert (= (and b!2609878 res!1098464) b!2609882))

(assert (= (and b!2609882 res!1098458) b!2609876))

(assert (= (and b!2609876 res!1098461) b!2609880))

(assert (= (and b!2609880 res!1098460) b!2609871))

(assert (= (and b!2609871 res!1098463) b!2609868))

(assert (= (and b!2609868 res!1098457) b!2609877))

(assert (= (and b!2609877 (not res!1098459)) b!2609881))

(assert (= b!2609865 b!2609879))

(assert (= b!2609873 b!2609865))

(assert (= (and start!253698 ((_ is Cons!30116) rules!1726)) b!2609873))

(assert (= b!2609872 b!2609866))

(assert (= b!2609875 b!2609872))

(assert (= start!253698 b!2609875))

(assert (= start!253698 b!2609870))

(declare-fun m!2944555 () Bool)

(assert (=> b!2609872 m!2944555))

(declare-fun m!2944557 () Bool)

(assert (=> b!2609872 m!2944557))

(declare-fun m!2944559 () Bool)

(assert (=> b!2609882 m!2944559))

(declare-fun m!2944561 () Bool)

(assert (=> b!2609868 m!2944561))

(assert (=> b!2609868 m!2944561))

(declare-fun m!2944563 () Bool)

(assert (=> b!2609868 m!2944563))

(declare-fun m!2944565 () Bool)

(assert (=> b!2609868 m!2944565))

(declare-fun m!2944567 () Bool)

(assert (=> b!2609871 m!2944567))

(declare-fun m!2944569 () Bool)

(assert (=> b!2609878 m!2944569))

(declare-fun m!2944571 () Bool)

(assert (=> b!2609874 m!2944571))

(declare-fun m!2944573 () Bool)

(assert (=> start!253698 m!2944573))

(declare-fun m!2944575 () Bool)

(assert (=> start!253698 m!2944575))

(declare-fun m!2944577 () Bool)

(assert (=> b!2609870 m!2944577))

(declare-fun m!2944579 () Bool)

(assert (=> b!2609875 m!2944579))

(declare-fun m!2944581 () Bool)

(assert (=> b!2609880 m!2944581))

(declare-fun m!2944583 () Bool)

(assert (=> b!2609865 m!2944583))

(declare-fun m!2944585 () Bool)

(assert (=> b!2609865 m!2944585))

(declare-fun m!2944587 () Bool)

(assert (=> b!2609869 m!2944587))

(declare-fun m!2944589 () Bool)

(assert (=> b!2609877 m!2944589))

(declare-fun m!2944591 () Bool)

(assert (=> b!2609877 m!2944591))

(declare-fun m!2944593 () Bool)

(assert (=> b!2609877 m!2944593))

(declare-fun m!2944595 () Bool)

(assert (=> b!2609877 m!2944595))

(declare-fun m!2944597 () Bool)

(assert (=> b!2609877 m!2944597))

(declare-fun m!2944599 () Bool)

(assert (=> b!2609877 m!2944599))

(declare-fun m!2944601 () Bool)

(assert (=> b!2609877 m!2944601))

(declare-fun m!2944603 () Bool)

(assert (=> b!2609877 m!2944603))

(declare-fun m!2944605 () Bool)

(assert (=> b!2609877 m!2944605))

(assert (=> b!2609877 m!2944591))

(declare-fun m!2944607 () Bool)

(assert (=> b!2609867 m!2944607))

(check-sat (not b!2609869) (not b_next!74017) b_and!190869 (not b!2609870) (not b_next!74019) (not b!2609865) (not b!2609880) (not b!2609874) (not start!253698) (not b!2609867) b_and!190867 (not b!2609868) (not b!2609882) (not b!2609878) b_and!190871 (not b_next!74013) (not b!2609875) (not b!2609877) (not b_next!74015) (not b!2609871) (not b!2609873) b_and!190873 (not b!2609872))
(check-sat (not b_next!74017) b_and!190869 (not b_next!74019) b_and!190867 (not b_next!74013) (not b_next!74015) b_and!190873 b_and!190871)
