; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253838 () Bool)

(assert start!253838)

(declare-fun b!2611436 () Bool)

(declare-fun b_free!73461 () Bool)

(declare-fun b_next!74165 () Bool)

(assert (=> b!2611436 (= b_free!73461 (not b_next!74165))))

(declare-fun tp!829707 () Bool)

(declare-fun b_and!191027 () Bool)

(assert (=> b!2611436 (= tp!829707 b_and!191027)))

(declare-fun b_free!73463 () Bool)

(declare-fun b_next!74167 () Bool)

(assert (=> b!2611436 (= b_free!73463 (not b_next!74167))))

(declare-fun tp!829706 () Bool)

(declare-fun b_and!191029 () Bool)

(assert (=> b!2611436 (= tp!829706 b_and!191029)))

(declare-fun b!2611423 () Bool)

(declare-fun b_free!73465 () Bool)

(declare-fun b_next!74169 () Bool)

(assert (=> b!2611423 (= b_free!73465 (not b_next!74169))))

(declare-fun tp!829708 () Bool)

(declare-fun b_and!191031 () Bool)

(assert (=> b!2611423 (= tp!829708 b_and!191031)))

(declare-fun b_free!73467 () Bool)

(declare-fun b_next!74171 () Bool)

(assert (=> b!2611423 (= b_free!73467 (not b_next!74171))))

(declare-fun tp!829705 () Bool)

(declare-fun b_and!191033 () Bool)

(assert (=> b!2611423 (= tp!829705 b_and!191033)))

(declare-fun bs!473907 () Bool)

(declare-fun b!2611420 () Bool)

(declare-fun b!2611428 () Bool)

(assert (= bs!473907 (and b!2611420 b!2611428)))

(declare-fun lambda!97758 () Int)

(declare-fun lambda!97757 () Int)

(assert (=> bs!473907 (not (= lambda!97758 lambda!97757))))

(declare-fun b!2611448 () Bool)

(declare-fun e!1647760 () Bool)

(assert (=> b!2611448 (= e!1647760 true)))

(declare-fun b!2611447 () Bool)

(declare-fun e!1647759 () Bool)

(assert (=> b!2611447 (= e!1647759 e!1647760)))

(declare-fun b!2611446 () Bool)

(declare-fun e!1647758 () Bool)

(assert (=> b!2611446 (= e!1647758 e!1647759)))

(assert (=> b!2611420 e!1647758))

(assert (= b!2611447 b!2611448))

(assert (= b!2611446 b!2611447))

(declare-datatypes ((List!30287 0))(
  ( (Nil!30187) (Cons!30187 (h!35607 (_ BitVec 16)) (t!214144 List!30287)) )
))
(declare-datatypes ((C!15576 0))(
  ( (C!15577 (val!9722 Int)) )
))
(declare-datatypes ((String!33818 0))(
  ( (String!33819 (value!147681 String)) )
))
(declare-datatypes ((Regex!7709 0))(
  ( (ElementMatch!7709 (c!419704 C!15576)) (Concat!12496 (regOne!15930 Regex!7709) (regTwo!15930 Regex!7709)) (EmptyExpr!7709) (Star!7709 (reg!8038 Regex!7709)) (EmptyLang!7709) (Union!7709 (regOne!15931 Regex!7709) (regTwo!15931 Regex!7709)) )
))
(declare-datatypes ((TokenValue!4787 0))(
  ( (FloatLiteralValue!9574 (text!33954 List!30287)) (TokenValueExt!4786 (__x!19407 Int)) (Broken!23935 (value!147682 List!30287)) (Object!4886) (End!4787) (Def!4787) (Underscore!4787) (Match!4787) (Else!4787) (Error!4787) (Case!4787) (If!4787) (Extends!4787) (Abstract!4787) (Class!4787) (Val!4787) (DelimiterValue!9574 (del!4847 List!30287)) (KeywordValue!4793 (value!147683 List!30287)) (CommentValue!9574 (value!147684 List!30287)) (WhitespaceValue!9574 (value!147685 List!30287)) (IndentationValue!4787 (value!147686 List!30287)) (String!33820) (Int32!4787) (Broken!23936 (value!147687 List!30287)) (Boolean!4788) (Unit!44160) (OperatorValue!4790 (op!4847 List!30287)) (IdentifierValue!9574 (value!147688 List!30287)) (IdentifierValue!9575 (value!147689 List!30287)) (WhitespaceValue!9575 (value!147690 List!30287)) (True!9574) (False!9574) (Broken!23937 (value!147691 List!30287)) (Broken!23938 (value!147692 List!30287)) (True!9575) (RightBrace!4787) (RightBracket!4787) (Colon!4787) (Null!4787) (Comma!4787) (LeftBracket!4787) (False!9575) (LeftBrace!4787) (ImaginaryLiteralValue!4787 (text!33955 List!30287)) (StringLiteralValue!14361 (value!147693 List!30287)) (EOFValue!4787 (value!147694 List!30287)) (IdentValue!4787 (value!147695 List!30287)) (DelimiterValue!9575 (value!147696 List!30287)) (DedentValue!4787 (value!147697 List!30287)) (NewLineValue!4787 (value!147698 List!30287)) (IntegerValue!14361 (value!147699 (_ BitVec 32)) (text!33956 List!30287)) (IntegerValue!14362 (value!147700 Int) (text!33957 List!30287)) (Times!4787) (Or!4787) (Equal!4787) (Minus!4787) (Broken!23939 (value!147701 List!30287)) (And!4787) (Div!4787) (LessEqual!4787) (Mod!4787) (Concat!12497) (Not!4787) (Plus!4787) (SpaceValue!4787 (value!147702 List!30287)) (IntegerValue!14363 (value!147703 Int) (text!33958 List!30287)) (StringLiteralValue!14362 (text!33959 List!30287)) (FloatLiteralValue!9575 (text!33960 List!30287)) (BytesLiteralValue!4787 (value!147704 List!30287)) (CommentValue!9575 (value!147705 List!30287)) (StringLiteralValue!14363 (value!147706 List!30287)) (ErrorTokenValue!4787 (msg!4848 List!30287)) )
))
(declare-datatypes ((List!30288 0))(
  ( (Nil!30188) (Cons!30188 (h!35608 C!15576) (t!214145 List!30288)) )
))
(declare-datatypes ((IArray!18749 0))(
  ( (IArray!18750 (innerList!9432 List!30288)) )
))
(declare-datatypes ((Conc!9372 0))(
  ( (Node!9372 (left!23230 Conc!9372) (right!23560 Conc!9372) (csize!18974 Int) (cheight!9583 Int)) (Leaf!14395 (xs!12356 IArray!18749) (csize!18975 Int)) (Empty!9372) )
))
(declare-datatypes ((BalanceConc!18358 0))(
  ( (BalanceConc!18359 (c!419705 Conc!9372)) )
))
(declare-datatypes ((TokenValueInjection!9014 0))(
  ( (TokenValueInjection!9015 (toValue!6467 Int) (toChars!6326 Int)) )
))
(declare-datatypes ((Rule!8930 0))(
  ( (Rule!8931 (regex!4565 Regex!7709) (tag!5055 String!33818) (isSeparator!4565 Bool) (transformation!4565 TokenValueInjection!9014)) )
))
(declare-datatypes ((List!30289 0))(
  ( (Nil!30189) (Cons!30189 (h!35609 Rule!8930) (t!214146 List!30289)) )
))
(declare-fun rules!1726 () List!30289)

(get-info :version)

(assert (= (and b!2611420 ((_ is Cons!30189) rules!1726)) b!2611446))

(declare-fun order!16059 () Int)

(declare-fun order!16061 () Int)

(declare-fun dynLambda!12787 (Int Int) Int)

(declare-fun dynLambda!12788 (Int Int) Int)

(assert (=> b!2611448 (< (dynLambda!12787 order!16059 (toValue!6467 (transformation!4565 (h!35609 rules!1726)))) (dynLambda!12788 order!16061 lambda!97758))))

(declare-fun order!16063 () Int)

(declare-fun dynLambda!12789 (Int Int) Int)

(assert (=> b!2611448 (< (dynLambda!12789 order!16063 (toChars!6326 (transformation!4565 (h!35609 rules!1726)))) (dynLambda!12788 order!16061 lambda!97758))))

(assert (=> b!2611420 true))

(declare-fun b!2611419 () Bool)

(declare-fun e!1647748 () Bool)

(declare-fun e!1647751 () Bool)

(assert (=> b!2611419 (= e!1647748 e!1647751)))

(declare-fun res!1099251 () Bool)

(assert (=> b!2611419 (=> (not res!1099251) (not e!1647751))))

(declare-fun from!862 () Int)

(declare-fun lt!917601 () Int)

(assert (=> b!2611419 (= res!1099251 (<= from!862 lt!917601))))

(declare-datatypes ((Token!8600 0))(
  ( (Token!8601 (value!147707 TokenValue!4787) (rule!6935 Rule!8930) (size!23368 Int) (originalCharacters!5331 List!30288)) )
))
(declare-datatypes ((List!30290 0))(
  ( (Nil!30190) (Cons!30190 (h!35610 Token!8600) (t!214147 List!30290)) )
))
(declare-datatypes ((IArray!18751 0))(
  ( (IArray!18752 (innerList!9433 List!30290)) )
))
(declare-datatypes ((Conc!9373 0))(
  ( (Node!9373 (left!23231 Conc!9373) (right!23561 Conc!9373) (csize!18976 Int) (cheight!9584 Int)) (Leaf!14396 (xs!12357 IArray!18751) (csize!18977 Int)) (Empty!9373) )
))
(declare-datatypes ((BalanceConc!18360 0))(
  ( (BalanceConc!18361 (c!419706 Conc!9373)) )
))
(declare-fun v!6381 () BalanceConc!18360)

(declare-fun size!23369 (BalanceConc!18360) Int)

(assert (=> b!2611419 (= lt!917601 (size!23369 v!6381))))

(declare-fun e!1647746 () Bool)

(assert (=> b!2611420 (= e!1647746 true)))

(declare-datatypes ((LexerInterface!4162 0))(
  ( (LexerInterfaceExt!4159 (__x!19408 Int)) (Lexer!4160) )
))
(declare-fun thiss!14197 () LexerInterface!4162)

(declare-fun lt!917606 () BalanceConc!18358)

(declare-fun lt!917600 () Token!8600)

(declare-fun separatorToken!156 () Token!8600)

(declare-fun ++!7325 (BalanceConc!18358 BalanceConc!18358) BalanceConc!18358)

(declare-fun charsOf!2856 (Token!8600) BalanceConc!18358)

(declare-fun printWithSeparatorTokenWhenNeededRec!440 (LexerInterface!4162 List!30289 BalanceConc!18360 Token!8600 Int) BalanceConc!18358)

(assert (=> b!2611420 (= lt!917606 (++!7325 (charsOf!2856 lt!917600) (printWithSeparatorTokenWhenNeededRec!440 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))

(declare-datatypes ((Unit!44161 0))(
  ( (Unit!44162) )
))
(declare-fun lt!917607 () Unit!44161)

(declare-fun lt!917599 () List!30290)

(declare-fun forallContained!921 (List!30290 Int Token!8600) Unit!44161)

(assert (=> b!2611420 (= lt!917607 (forallContained!921 lt!917599 lambda!97758 lt!917600))))

(declare-fun b!2611421 () Bool)

(declare-fun e!1647750 () Bool)

(declare-fun e!1647744 () Bool)

(declare-fun tp!829703 () Bool)

(assert (=> b!2611421 (= e!1647750 (and e!1647744 tp!829703))))

(declare-fun b!2611422 () Bool)

(declare-fun e!1647738 () Bool)

(assert (=> b!2611422 (= e!1647738 (not e!1647746))))

(declare-fun res!1099256 () Bool)

(assert (=> b!2611422 (=> res!1099256 e!1647746)))

(declare-fun contains!5606 (BalanceConc!18360 Token!8600) Bool)

(assert (=> b!2611422 (= res!1099256 (not (contains!5606 v!6381 lt!917600)))))

(declare-fun apply!7092 (BalanceConc!18360 Int) Token!8600)

(assert (=> b!2611422 (= lt!917600 (apply!7092 v!6381 from!862))))

(declare-fun lt!917602 () List!30290)

(declare-fun tail!4198 (List!30290) List!30290)

(declare-fun drop!1561 (List!30290 Int) List!30290)

(assert (=> b!2611422 (= (tail!4198 lt!917602) (drop!1561 lt!917599 (+ 1 from!862)))))

(declare-fun lt!917603 () Unit!44161)

(declare-fun lemmaDropTail!750 (List!30290 Int) Unit!44161)

(assert (=> b!2611422 (= lt!917603 (lemmaDropTail!750 lt!917599 from!862))))

(declare-fun head!5960 (List!30290) Token!8600)

(declare-fun apply!7093 (List!30290 Int) Token!8600)

(assert (=> b!2611422 (= (head!5960 lt!917602) (apply!7093 lt!917599 from!862))))

(assert (=> b!2611422 (= lt!917602 (drop!1561 lt!917599 from!862))))

(declare-fun lt!917605 () Unit!44161)

(declare-fun lemmaDropApply!776 (List!30290 Int) Unit!44161)

(assert (=> b!2611422 (= lt!917605 (lemmaDropApply!776 lt!917599 from!862))))

(declare-fun e!1647742 () Bool)

(assert (=> b!2611423 (= e!1647742 (and tp!829708 tp!829705))))

(declare-fun e!1647747 () Bool)

(declare-fun tp!829701 () Bool)

(declare-fun b!2611424 () Bool)

(declare-fun inv!40849 (String!33818) Bool)

(declare-fun inv!40854 (TokenValueInjection!9014) Bool)

(assert (=> b!2611424 (= e!1647744 (and tp!829701 (inv!40849 (tag!5055 (h!35609 rules!1726))) (inv!40854 (transformation!4565 (h!35609 rules!1726))) e!1647747))))

(declare-fun b!2611425 () Bool)

(declare-fun res!1099249 () Bool)

(assert (=> b!2611425 (=> (not res!1099249) (not e!1647751))))

(declare-fun rulesProduceEachTokenIndividually!982 (LexerInterface!4162 List!30289 BalanceConc!18360) Bool)

(assert (=> b!2611425 (= res!1099249 (rulesProduceEachTokenIndividually!982 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2611426 () Bool)

(declare-fun res!1099250 () Bool)

(assert (=> b!2611426 (=> res!1099250 e!1647746)))

(declare-fun contains!5607 (List!30290 Token!8600) Bool)

(assert (=> b!2611426 (= res!1099250 (not (contains!5607 lt!917599 lt!917600)))))

(declare-fun b!2611427 () Bool)

(declare-fun e!1647749 () Bool)

(declare-fun tp!829700 () Bool)

(declare-fun inv!40855 (Conc!9373) Bool)

(assert (=> b!2611427 (= e!1647749 (and (inv!40855 (c!419706 v!6381)) tp!829700))))

(declare-fun res!1099248 () Bool)

(assert (=> b!2611428 (=> (not res!1099248) (not e!1647751))))

(declare-fun forall!6261 (BalanceConc!18360 Int) Bool)

(assert (=> b!2611428 (= res!1099248 (forall!6261 v!6381 lambda!97757))))

(declare-fun b!2611429 () Bool)

(declare-fun res!1099246 () Bool)

(assert (=> b!2611429 (=> (not res!1099246) (not e!1647751))))

(declare-fun rulesInvariant!3662 (LexerInterface!4162 List!30289) Bool)

(assert (=> b!2611429 (= res!1099246 (rulesInvariant!3662 thiss!14197 rules!1726))))

(declare-fun b!2611430 () Bool)

(declare-fun res!1099257 () Bool)

(assert (=> b!2611430 (=> (not res!1099257) (not e!1647751))))

(declare-fun rulesProduceIndividualToken!1874 (LexerInterface!4162 List!30289 Token!8600) Bool)

(assert (=> b!2611430 (= res!1099257 (rulesProduceIndividualToken!1874 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2611431 () Bool)

(declare-fun res!1099252 () Bool)

(assert (=> b!2611431 (=> (not res!1099252) (not e!1647751))))

(declare-fun sepAndNonSepRulesDisjointChars!1138 (List!30289 List!30289) Bool)

(assert (=> b!2611431 (= res!1099252 (sepAndNonSepRulesDisjointChars!1138 rules!1726 rules!1726))))

(declare-fun res!1099247 () Bool)

(assert (=> start!253838 (=> (not res!1099247) (not e!1647748))))

(assert (=> start!253838 (= res!1099247 (and ((_ is Lexer!4160) thiss!14197) (>= from!862 0)))))

(assert (=> start!253838 e!1647748))

(assert (=> start!253838 true))

(assert (=> start!253838 e!1647750))

(declare-fun e!1647743 () Bool)

(declare-fun inv!40856 (Token!8600) Bool)

(assert (=> start!253838 (and (inv!40856 separatorToken!156) e!1647743)))

(declare-fun inv!40857 (BalanceConc!18360) Bool)

(assert (=> start!253838 (and (inv!40857 v!6381) e!1647749)))

(declare-fun b!2611432 () Bool)

(declare-fun e!1647741 () Bool)

(declare-fun tp!829702 () Bool)

(assert (=> b!2611432 (= e!1647741 (and tp!829702 (inv!40849 (tag!5055 (rule!6935 separatorToken!156))) (inv!40854 (transformation!4565 (rule!6935 separatorToken!156))) e!1647742))))

(declare-fun b!2611433 () Bool)

(assert (=> b!2611433 (= e!1647751 e!1647738)))

(declare-fun res!1099254 () Bool)

(assert (=> b!2611433 (=> (not res!1099254) (not e!1647738))))

(assert (=> b!2611433 (= res!1099254 (< from!862 lt!917601))))

(declare-fun lt!917604 () Unit!44161)

(declare-fun lemmaContentSubsetPreservesForall!234 (List!30290 List!30290 Int) Unit!44161)

(declare-fun dropList!868 (BalanceConc!18360 Int) List!30290)

(assert (=> b!2611433 (= lt!917604 (lemmaContentSubsetPreservesForall!234 lt!917599 (dropList!868 v!6381 from!862) lambda!97757))))

(declare-fun list!11327 (BalanceConc!18360) List!30290)

(assert (=> b!2611433 (= lt!917599 (list!11327 v!6381))))

(declare-fun b!2611434 () Bool)

(declare-fun tp!829704 () Bool)

(declare-fun inv!21 (TokenValue!4787) Bool)

(assert (=> b!2611434 (= e!1647743 (and (inv!21 (value!147707 separatorToken!156)) e!1647741 tp!829704))))

(declare-fun b!2611435 () Bool)

(declare-fun res!1099253 () Bool)

(assert (=> b!2611435 (=> (not res!1099253) (not e!1647751))))

(assert (=> b!2611435 (= res!1099253 (isSeparator!4565 (rule!6935 separatorToken!156)))))

(assert (=> b!2611436 (= e!1647747 (and tp!829707 tp!829706))))

(declare-fun b!2611437 () Bool)

(declare-fun res!1099255 () Bool)

(assert (=> b!2611437 (=> (not res!1099255) (not e!1647751))))

(declare-fun isEmpty!17242 (List!30289) Bool)

(assert (=> b!2611437 (= res!1099255 (not (isEmpty!17242 rules!1726)))))

(assert (= (and start!253838 res!1099247) b!2611419))

(assert (= (and b!2611419 res!1099251) b!2611437))

(assert (= (and b!2611437 res!1099255) b!2611429))

(assert (= (and b!2611429 res!1099246) b!2611425))

(assert (= (and b!2611425 res!1099249) b!2611430))

(assert (= (and b!2611430 res!1099257) b!2611435))

(assert (= (and b!2611435 res!1099253) b!2611428))

(assert (= (and b!2611428 res!1099248) b!2611431))

(assert (= (and b!2611431 res!1099252) b!2611433))

(assert (= (and b!2611433 res!1099254) b!2611422))

(assert (= (and b!2611422 (not res!1099256)) b!2611426))

(assert (= (and b!2611426 (not res!1099250)) b!2611420))

(assert (= b!2611424 b!2611436))

(assert (= b!2611421 b!2611424))

(assert (= (and start!253838 ((_ is Cons!30189) rules!1726)) b!2611421))

(assert (= b!2611432 b!2611423))

(assert (= b!2611434 b!2611432))

(assert (= start!253838 b!2611434))

(assert (= start!253838 b!2611427))

(declare-fun m!2945885 () Bool)

(assert (=> b!2611430 m!2945885))

(declare-fun m!2945887 () Bool)

(assert (=> start!253838 m!2945887))

(declare-fun m!2945889 () Bool)

(assert (=> start!253838 m!2945889))

(declare-fun m!2945891 () Bool)

(assert (=> b!2611437 m!2945891))

(declare-fun m!2945893 () Bool)

(assert (=> b!2611433 m!2945893))

(assert (=> b!2611433 m!2945893))

(declare-fun m!2945895 () Bool)

(assert (=> b!2611433 m!2945895))

(declare-fun m!2945897 () Bool)

(assert (=> b!2611433 m!2945897))

(declare-fun m!2945899 () Bool)

(assert (=> b!2611428 m!2945899))

(declare-fun m!2945901 () Bool)

(assert (=> b!2611425 m!2945901))

(declare-fun m!2945903 () Bool)

(assert (=> b!2611419 m!2945903))

(declare-fun m!2945905 () Bool)

(assert (=> b!2611434 m!2945905))

(declare-fun m!2945907 () Bool)

(assert (=> b!2611424 m!2945907))

(declare-fun m!2945909 () Bool)

(assert (=> b!2611424 m!2945909))

(declare-fun m!2945911 () Bool)

(assert (=> b!2611431 m!2945911))

(declare-fun m!2945913 () Bool)

(assert (=> b!2611422 m!2945913))

(declare-fun m!2945915 () Bool)

(assert (=> b!2611422 m!2945915))

(declare-fun m!2945917 () Bool)

(assert (=> b!2611422 m!2945917))

(declare-fun m!2945919 () Bool)

(assert (=> b!2611422 m!2945919))

(declare-fun m!2945921 () Bool)

(assert (=> b!2611422 m!2945921))

(declare-fun m!2945923 () Bool)

(assert (=> b!2611422 m!2945923))

(declare-fun m!2945925 () Bool)

(assert (=> b!2611422 m!2945925))

(declare-fun m!2945927 () Bool)

(assert (=> b!2611422 m!2945927))

(declare-fun m!2945929 () Bool)

(assert (=> b!2611422 m!2945929))

(declare-fun m!2945931 () Bool)

(assert (=> b!2611426 m!2945931))

(declare-fun m!2945933 () Bool)

(assert (=> b!2611427 m!2945933))

(declare-fun m!2945935 () Bool)

(assert (=> b!2611420 m!2945935))

(declare-fun m!2945937 () Bool)

(assert (=> b!2611420 m!2945937))

(assert (=> b!2611420 m!2945935))

(assert (=> b!2611420 m!2945937))

(declare-fun m!2945939 () Bool)

(assert (=> b!2611420 m!2945939))

(declare-fun m!2945941 () Bool)

(assert (=> b!2611420 m!2945941))

(declare-fun m!2945943 () Bool)

(assert (=> b!2611432 m!2945943))

(declare-fun m!2945945 () Bool)

(assert (=> b!2611432 m!2945945))

(declare-fun m!2945947 () Bool)

(assert (=> b!2611429 m!2945947))

(check-sat (not b!2611429) b_and!191031 (not b!2611421) (not b_next!74167) (not start!253838) (not b!2611419) (not b!2611424) (not b!2611425) (not b!2611420) b_and!191029 b_and!191027 (not b_next!74169) (not b!2611430) (not b!2611431) (not b_next!74165) (not b!2611426) (not b!2611434) (not b!2611432) (not b!2611427) (not b!2611428) (not b!2611446) (not b!2611422) (not b_next!74171) (not b!2611433) (not b!2611437) b_and!191033)
(check-sat (not b_next!74169) (not b_next!74165) b_and!191031 (not b_next!74171) (not b_next!74167) b_and!191029 b_and!191027 b_and!191033)
