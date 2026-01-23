; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129068 () Bool)

(assert start!129068)

(declare-fun b!1411040 () Bool)

(declare-fun e!900790 () Bool)

(assert (=> b!1411040 (= e!900790 false)))

(declare-fun lt!471944 () Bool)

(declare-datatypes ((List!14465 0))(
  ( (Nil!14399) (Cons!14399 (h!19800 (_ BitVec 16)) (t!123498 List!14465)) )
))
(declare-datatypes ((TokenValue!2589 0))(
  ( (FloatLiteralValue!5178 (text!18568 List!14465)) (TokenValueExt!2588 (__x!9001 Int)) (Broken!12945 (value!80828 List!14465)) (Object!2654) (End!2589) (Def!2589) (Underscore!2589) (Match!2589) (Else!2589) (Error!2589) (Case!2589) (If!2589) (Extends!2589) (Abstract!2589) (Class!2589) (Val!2589) (DelimiterValue!5178 (del!2649 List!14465)) (KeywordValue!2595 (value!80829 List!14465)) (CommentValue!5178 (value!80830 List!14465)) (WhitespaceValue!5178 (value!80831 List!14465)) (IndentationValue!2589 (value!80832 List!14465)) (String!17180) (Int32!2589) (Broken!12946 (value!80833 List!14465)) (Boolean!2590) (Unit!20908) (OperatorValue!2592 (op!2649 List!14465)) (IdentifierValue!5178 (value!80834 List!14465)) (IdentifierValue!5179 (value!80835 List!14465)) (WhitespaceValue!5179 (value!80836 List!14465)) (True!5178) (False!5178) (Broken!12947 (value!80837 List!14465)) (Broken!12948 (value!80838 List!14465)) (True!5179) (RightBrace!2589) (RightBracket!2589) (Colon!2589) (Null!2589) (Comma!2589) (LeftBracket!2589) (False!5179) (LeftBrace!2589) (ImaginaryLiteralValue!2589 (text!18569 List!14465)) (StringLiteralValue!7767 (value!80839 List!14465)) (EOFValue!2589 (value!80840 List!14465)) (IdentValue!2589 (value!80841 List!14465)) (DelimiterValue!5179 (value!80842 List!14465)) (DedentValue!2589 (value!80843 List!14465)) (NewLineValue!2589 (value!80844 List!14465)) (IntegerValue!7767 (value!80845 (_ BitVec 32)) (text!18570 List!14465)) (IntegerValue!7768 (value!80846 Int) (text!18571 List!14465)) (Times!2589) (Or!2589) (Equal!2589) (Minus!2589) (Broken!12949 (value!80847 List!14465)) (And!2589) (Div!2589) (LessEqual!2589) (Mod!2589) (Concat!6402) (Not!2589) (Plus!2589) (SpaceValue!2589 (value!80848 List!14465)) (IntegerValue!7769 (value!80849 Int) (text!18572 List!14465)) (StringLiteralValue!7768 (text!18573 List!14465)) (FloatLiteralValue!5179 (text!18574 List!14465)) (BytesLiteralValue!2589 (value!80850 List!14465)) (CommentValue!5179 (value!80851 List!14465)) (StringLiteralValue!7769 (value!80852 List!14465)) (ErrorTokenValue!2589 (msg!2650 List!14465)) )
))
(declare-datatypes ((Regex!3813 0))(
  ( (ElementMatch!3813 (c!231875 (_ BitVec 16))) (Concat!6403 (regOne!8138 Regex!3813) (regTwo!8138 Regex!3813)) (EmptyExpr!3813) (Star!3813 (reg!4142 Regex!3813)) (EmptyLang!3813) (Union!3813 (regOne!8139 Regex!3813) (regTwo!8139 Regex!3813)) )
))
(declare-datatypes ((String!17181 0))(
  ( (String!17182 (value!80853 String)) )
))
(declare-datatypes ((IArray!9547 0))(
  ( (IArray!9548 (innerList!4831 List!14465)) )
))
(declare-datatypes ((Conc!4771 0))(
  ( (Node!4771 (left!12298 Conc!4771) (right!12628 Conc!4771) (csize!9772 Int) (cheight!4982 Int)) (Leaf!7217 (xs!7498 IArray!9547) (csize!9773 Int)) (Empty!4771) )
))
(declare-datatypes ((BalanceConc!9482 0))(
  ( (BalanceConc!9483 (c!231876 Conc!4771)) )
))
(declare-datatypes ((TokenValueInjection!4838 0))(
  ( (TokenValueInjection!4839 (toValue!3794 Int) (toChars!3653 Int)) )
))
(declare-datatypes ((Rule!4798 0))(
  ( (Rule!4799 (regex!2499 Regex!3813) (tag!2761 String!17181) (isSeparator!2499 Bool) (transformation!2499 TokenValueInjection!4838)) )
))
(declare-datatypes ((Token!4660 0))(
  ( (Token!4661 (value!80854 TokenValue!2589) (rule!4262 Rule!4798) (size!11861 Int) (originalCharacters!3361 List!14465)) )
))
(declare-datatypes ((List!14466 0))(
  ( (Nil!14400) (Cons!14400 (h!19801 Token!4660) (t!123499 List!14466)) )
))
(declare-datatypes ((IArray!9549 0))(
  ( (IArray!9550 (innerList!4832 List!14466)) )
))
(declare-datatypes ((Conc!4772 0))(
  ( (Node!4772 (left!12299 Conc!4772) (right!12629 Conc!4772) (csize!9774 Int) (cheight!4983 Int)) (Leaf!7218 (xs!7499 IArray!9549) (csize!9775 Int)) (Empty!4772) )
))
(declare-datatypes ((List!14467 0))(
  ( (Nil!14401) (Cons!14401 (h!19802 Rule!4798) (t!123500 List!14467)) )
))
(declare-datatypes ((BalanceConc!9484 0))(
  ( (BalanceConc!9485 (c!231877 Conc!4772)) )
))
(declare-datatypes ((PrintableTokens!780 0))(
  ( (PrintableTokens!781 (rules!11000 List!14467) (tokens!1736 BalanceConc!9484)) )
))
(declare-datatypes ((Option!2760 0))(
  ( (None!2759) (Some!2759 (v!21809 PrintableTokens!780)) )
))
(declare-fun lt!471943 () Option!2760)

(declare-fun usesJsonRules!0 (PrintableTokens!780) Bool)

(assert (=> b!1411040 (= lt!471944 (usesJsonRules!0 (v!21809 lt!471943)))))

(declare-fun acc!229 () PrintableTokens!780)

(declare-fun tp!400544 () Bool)

(declare-fun b!1411041 () Bool)

(declare-fun e!900789 () Bool)

(declare-fun e!900788 () Bool)

(declare-fun inv!18785 (BalanceConc!9484) Bool)

(assert (=> b!1411041 (= e!900788 (and tp!400544 (inv!18785 (tokens!1736 acc!229)) e!900789))))

(declare-fun b!1411042 () Bool)

(declare-fun res!639056 () Bool)

(declare-fun e!900792 () Bool)

(assert (=> b!1411042 (=> (not res!639056) (not e!900792))))

(declare-datatypes ((List!14468 0))(
  ( (Nil!14402) (Cons!14402 (h!19803 PrintableTokens!780) (t!123501 List!14468)) )
))
(declare-datatypes ((IArray!9551 0))(
  ( (IArray!9552 (innerList!4833 List!14468)) )
))
(declare-datatypes ((Conc!4773 0))(
  ( (Node!4773 (left!12300 Conc!4773) (right!12630 Conc!4773) (csize!9776 Int) (cheight!4984 Int)) (Leaf!7219 (xs!7500 IArray!9551) (csize!9777 Int)) (Empty!4773) )
))
(declare-datatypes ((BalanceConc!9486 0))(
  ( (BalanceConc!9487 (c!231878 Conc!4773)) )
))
(declare-fun objs!24 () BalanceConc!9486)

(declare-fun isEmpty!8794 (BalanceConc!9486) Bool)

(assert (=> b!1411042 (= res!639056 (not (isEmpty!8794 objs!24)))))

(declare-fun res!639059 () Bool)

(assert (=> start!129068 (=> (not res!639059) (not e!900792))))

(declare-fun lambda!62379 () Int)

(declare-fun forall!3515 (BalanceConc!9486 Int) Bool)

(assert (=> start!129068 (= res!639059 (forall!3515 objs!24 lambda!62379))))

(assert (=> start!129068 e!900792))

(declare-fun e!900791 () Bool)

(declare-fun inv!18786 (BalanceConc!9486) Bool)

(assert (=> start!129068 (and (inv!18786 objs!24) e!900791)))

(declare-fun inv!18787 (PrintableTokens!780) Bool)

(assert (=> start!129068 (and (inv!18787 acc!229) e!900788)))

(declare-fun sep!3 () PrintableTokens!780)

(declare-fun e!900793 () Bool)

(assert (=> start!129068 (and (inv!18787 sep!3) e!900793)))

(declare-fun b!1411043 () Bool)

(declare-fun res!639060 () Bool)

(assert (=> b!1411043 (=> (not res!639060) (not e!900792))))

(declare-fun size!11862 (BalanceConc!9486) Int)

(assert (=> b!1411043 (= res!639060 (= (size!11862 objs!24) 1))))

(declare-fun b!1411044 () Bool)

(declare-fun res!639057 () Bool)

(assert (=> b!1411044 (=> (not res!639057) (not e!900790))))

(declare-fun tail!2060 (BalanceConc!9486) BalanceConc!9486)

(assert (=> b!1411044 (= res!639057 (forall!3515 (tail!2060 objs!24) lambda!62379))))

(declare-fun tp!400545 () Bool)

(declare-fun b!1411045 () Bool)

(declare-fun e!900794 () Bool)

(assert (=> b!1411045 (= e!900793 (and tp!400545 (inv!18785 (tokens!1736 sep!3)) e!900794))))

(declare-fun b!1411046 () Bool)

(declare-fun res!639055 () Bool)

(assert (=> b!1411046 (=> (not res!639055) (not e!900792))))

(assert (=> b!1411046 (= res!639055 (usesJsonRules!0 acc!229))))

(declare-fun b!1411047 () Bool)

(declare-fun tp!400547 () Bool)

(declare-fun inv!18788 (Conc!4773) Bool)

(assert (=> b!1411047 (= e!900791 (and (inv!18788 (c!231878 objs!24)) tp!400547))))

(declare-fun b!1411048 () Bool)

(declare-fun tp!400548 () Bool)

(declare-fun inv!18789 (Conc!4772) Bool)

(assert (=> b!1411048 (= e!900789 (and (inv!18789 (c!231877 (tokens!1736 acc!229))) tp!400548))))

(declare-fun b!1411049 () Bool)

(declare-fun res!639054 () Bool)

(assert (=> b!1411049 (=> (not res!639054) (not e!900792))))

(assert (=> b!1411049 (= res!639054 (usesJsonRules!0 sep!3))))

(declare-fun b!1411050 () Bool)

(declare-fun tp!400546 () Bool)

(assert (=> b!1411050 (= e!900794 (and (inv!18789 (c!231877 (tokens!1736 sep!3))) tp!400546))))

(declare-fun b!1411051 () Bool)

(assert (=> b!1411051 (= e!900792 e!900790)))

(declare-fun res!639058 () Bool)

(assert (=> b!1411051 (=> (not res!639058) (not e!900790))))

(get-info :version)

(assert (=> b!1411051 (= res!639058 ((_ is Some!2759) lt!471943))))

(declare-fun append!420 (PrintableTokens!780 PrintableTokens!780) Option!2760)

(declare-fun head!2663 (BalanceConc!9486) PrintableTokens!780)

(assert (=> b!1411051 (= lt!471943 (append!420 acc!229 (head!2663 objs!24)))))

(assert (= (and start!129068 res!639059) b!1411046))

(assert (= (and b!1411046 res!639055) b!1411049))

(assert (= (and b!1411049 res!639054) b!1411042))

(assert (= (and b!1411042 res!639056) b!1411043))

(assert (= (and b!1411043 res!639060) b!1411051))

(assert (= (and b!1411051 res!639058) b!1411044))

(assert (= (and b!1411044 res!639057) b!1411040))

(assert (= start!129068 b!1411047))

(assert (= b!1411041 b!1411048))

(assert (= start!129068 b!1411041))

(assert (= b!1411045 b!1411050))

(assert (= start!129068 b!1411045))

(declare-fun m!1591279 () Bool)

(assert (=> b!1411043 m!1591279))

(declare-fun m!1591281 () Bool)

(assert (=> b!1411049 m!1591281))

(declare-fun m!1591283 () Bool)

(assert (=> b!1411047 m!1591283))

(declare-fun m!1591285 () Bool)

(assert (=> b!1411050 m!1591285))

(declare-fun m!1591287 () Bool)

(assert (=> b!1411040 m!1591287))

(declare-fun m!1591289 () Bool)

(assert (=> b!1411042 m!1591289))

(declare-fun m!1591291 () Bool)

(assert (=> b!1411045 m!1591291))

(declare-fun m!1591293 () Bool)

(assert (=> b!1411051 m!1591293))

(assert (=> b!1411051 m!1591293))

(declare-fun m!1591295 () Bool)

(assert (=> b!1411051 m!1591295))

(declare-fun m!1591297 () Bool)

(assert (=> b!1411041 m!1591297))

(declare-fun m!1591299 () Bool)

(assert (=> b!1411048 m!1591299))

(declare-fun m!1591301 () Bool)

(assert (=> start!129068 m!1591301))

(declare-fun m!1591303 () Bool)

(assert (=> start!129068 m!1591303))

(declare-fun m!1591305 () Bool)

(assert (=> start!129068 m!1591305))

(declare-fun m!1591307 () Bool)

(assert (=> start!129068 m!1591307))

(declare-fun m!1591309 () Bool)

(assert (=> b!1411046 m!1591309))

(declare-fun m!1591311 () Bool)

(assert (=> b!1411044 m!1591311))

(assert (=> b!1411044 m!1591311))

(declare-fun m!1591313 () Bool)

(assert (=> b!1411044 m!1591313))

(check-sat (not b!1411043) (not b!1411042) (not b!1411046) (not start!129068) (not b!1411050) (not b!1411049) (not b!1411040) (not b!1411048) (not b!1411044) (not b!1411051) (not b!1411045) (not b!1411047) (not b!1411041))
(check-sat)
