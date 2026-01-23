; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253818 () Bool)

(assert start!253818)

(declare-fun b!2610716 () Bool)

(declare-fun b_free!73381 () Bool)

(declare-fun b_next!74085 () Bool)

(assert (=> b!2610716 (= b_free!73381 (not b_next!74085))))

(declare-fun tp!829431 () Bool)

(declare-fun b_and!190947 () Bool)

(assert (=> b!2610716 (= tp!829431 b_and!190947)))

(declare-fun b_free!73383 () Bool)

(declare-fun b_next!74087 () Bool)

(assert (=> b!2610716 (= b_free!73383 (not b_next!74087))))

(declare-fun tp!829430 () Bool)

(declare-fun b_and!190949 () Bool)

(assert (=> b!2610716 (= tp!829430 b_and!190949)))

(declare-fun b!2610711 () Bool)

(declare-fun b_free!73385 () Bool)

(declare-fun b_next!74089 () Bool)

(assert (=> b!2610711 (= b_free!73385 (not b_next!74089))))

(declare-fun tp!829438 () Bool)

(declare-fun b_and!190951 () Bool)

(assert (=> b!2610711 (= tp!829438 b_and!190951)))

(declare-fun b_free!73387 () Bool)

(declare-fun b_next!74091 () Bool)

(assert (=> b!2610711 (= b_free!73387 (not b_next!74091))))

(declare-fun tp!829436 () Bool)

(declare-fun b_and!190953 () Bool)

(assert (=> b!2610711 (= tp!829436 b_and!190953)))

(declare-fun bs!473887 () Bool)

(declare-fun b!2610713 () Bool)

(declare-fun b!2610717 () Bool)

(assert (= bs!473887 (and b!2610713 b!2610717)))

(declare-fun lambda!97670 () Int)

(declare-fun lambda!97669 () Int)

(assert (=> bs!473887 (not (= lambda!97670 lambda!97669))))

(declare-fun b!2610736 () Bool)

(declare-fun e!1647238 () Bool)

(assert (=> b!2610736 (= e!1647238 true)))

(declare-fun b!2610735 () Bool)

(declare-fun e!1647237 () Bool)

(assert (=> b!2610735 (= e!1647237 e!1647238)))

(declare-fun b!2610734 () Bool)

(declare-fun e!1647236 () Bool)

(assert (=> b!2610734 (= e!1647236 e!1647237)))

(assert (=> b!2610713 e!1647236))

(assert (= b!2610735 b!2610736))

(assert (= b!2610734 b!2610735))

(declare-datatypes ((List!30247 0))(
  ( (Nil!30147) (Cons!30147 (h!35567 (_ BitVec 16)) (t!214064 List!30247)) )
))
(declare-datatypes ((C!15556 0))(
  ( (C!15557 (val!9712 Int)) )
))
(declare-datatypes ((Regex!7699 0))(
  ( (ElementMatch!7699 (c!419674 C!15556)) (Concat!12476 (regOne!15910 Regex!7699) (regTwo!15910 Regex!7699)) (EmptyExpr!7699) (Star!7699 (reg!8028 Regex!7699)) (EmptyLang!7699) (Union!7699 (regOne!15911 Regex!7699) (regTwo!15911 Regex!7699)) )
))
(declare-datatypes ((TokenValue!4777 0))(
  ( (FloatLiteralValue!9554 (text!33884 List!30247)) (TokenValueExt!4776 (__x!19387 Int)) (Broken!23885 (value!147396 List!30247)) (Object!4876) (End!4777) (Def!4777) (Underscore!4777) (Match!4777) (Else!4777) (Error!4777) (Case!4777) (If!4777) (Extends!4777) (Abstract!4777) (Class!4777) (Val!4777) (DelimiterValue!9554 (del!4837 List!30247)) (KeywordValue!4783 (value!147397 List!30247)) (CommentValue!9554 (value!147398 List!30247)) (WhitespaceValue!9554 (value!147399 List!30247)) (IndentationValue!4777 (value!147400 List!30247)) (String!33768) (Int32!4777) (Broken!23886 (value!147401 List!30247)) (Boolean!4778) (Unit!44130) (OperatorValue!4780 (op!4837 List!30247)) (IdentifierValue!9554 (value!147402 List!30247)) (IdentifierValue!9555 (value!147403 List!30247)) (WhitespaceValue!9555 (value!147404 List!30247)) (True!9554) (False!9554) (Broken!23887 (value!147405 List!30247)) (Broken!23888 (value!147406 List!30247)) (True!9555) (RightBrace!4777) (RightBracket!4777) (Colon!4777) (Null!4777) (Comma!4777) (LeftBracket!4777) (False!9555) (LeftBrace!4777) (ImaginaryLiteralValue!4777 (text!33885 List!30247)) (StringLiteralValue!14331 (value!147407 List!30247)) (EOFValue!4777 (value!147408 List!30247)) (IdentValue!4777 (value!147409 List!30247)) (DelimiterValue!9555 (value!147410 List!30247)) (DedentValue!4777 (value!147411 List!30247)) (NewLineValue!4777 (value!147412 List!30247)) (IntegerValue!14331 (value!147413 (_ BitVec 32)) (text!33886 List!30247)) (IntegerValue!14332 (value!147414 Int) (text!33887 List!30247)) (Times!4777) (Or!4777) (Equal!4777) (Minus!4777) (Broken!23889 (value!147415 List!30247)) (And!4777) (Div!4777) (LessEqual!4777) (Mod!4777) (Concat!12477) (Not!4777) (Plus!4777) (SpaceValue!4777 (value!147416 List!30247)) (IntegerValue!14333 (value!147417 Int) (text!33888 List!30247)) (StringLiteralValue!14332 (text!33889 List!30247)) (FloatLiteralValue!9555 (text!33890 List!30247)) (BytesLiteralValue!4777 (value!147418 List!30247)) (CommentValue!9555 (value!147419 List!30247)) (StringLiteralValue!14333 (value!147420 List!30247)) (ErrorTokenValue!4777 (msg!4838 List!30247)) )
))
(declare-datatypes ((List!30248 0))(
  ( (Nil!30148) (Cons!30148 (h!35568 C!15556) (t!214065 List!30248)) )
))
(declare-datatypes ((IArray!18709 0))(
  ( (IArray!18710 (innerList!9412 List!30248)) )
))
(declare-datatypes ((Conc!9352 0))(
  ( (Node!9352 (left!23185 Conc!9352) (right!23515 Conc!9352) (csize!18934 Int) (cheight!9563 Int)) (Leaf!14370 (xs!12336 IArray!18709) (csize!18935 Int)) (Empty!9352) )
))
(declare-datatypes ((BalanceConc!18318 0))(
  ( (BalanceConc!18319 (c!419675 Conc!9352)) )
))
(declare-datatypes ((TokenValueInjection!8994 0))(
  ( (TokenValueInjection!8995 (toValue!6457 Int) (toChars!6316 Int)) )
))
(declare-datatypes ((String!33769 0))(
  ( (String!33770 (value!147421 String)) )
))
(declare-datatypes ((Rule!8910 0))(
  ( (Rule!8911 (regex!4555 Regex!7699) (tag!5045 String!33769) (isSeparator!4555 Bool) (transformation!4555 TokenValueInjection!8994)) )
))
(declare-datatypes ((List!30249 0))(
  ( (Nil!30149) (Cons!30149 (h!35569 Rule!8910) (t!214066 List!30249)) )
))
(declare-fun rules!1726 () List!30249)

(get-info :version)

(assert (= (and b!2610713 ((_ is Cons!30149) rules!1726)) b!2610734))

(declare-fun order!16001 () Int)

(declare-fun order!15999 () Int)

(declare-fun dynLambda!12757 (Int Int) Int)

(declare-fun dynLambda!12758 (Int Int) Int)

(assert (=> b!2610736 (< (dynLambda!12757 order!15999 (toValue!6457 (transformation!4555 (h!35569 rules!1726)))) (dynLambda!12758 order!16001 lambda!97670))))

(declare-fun order!16003 () Int)

(declare-fun dynLambda!12759 (Int Int) Int)

(assert (=> b!2610736 (< (dynLambda!12759 order!16003 (toChars!6316 (transformation!4555 (h!35569 rules!1726)))) (dynLambda!12758 order!16001 lambda!97670))))

(assert (=> b!2610713 true))

(declare-fun b!2610707 () Bool)

(declare-fun res!1098874 () Bool)

(declare-fun e!1647228 () Bool)

(assert (=> b!2610707 (=> (not res!1098874) (not e!1647228))))

(declare-fun isEmpty!17232 (List!30249) Bool)

(assert (=> b!2610707 (= res!1098874 (not (isEmpty!17232 rules!1726)))))

(declare-fun tp!829432 () Bool)

(declare-fun e!1647220 () Bool)

(declare-fun e!1647217 () Bool)

(declare-datatypes ((Token!8580 0))(
  ( (Token!8581 (value!147422 TokenValue!4777) (rule!6925 Rule!8910) (size!23348 Int) (originalCharacters!5321 List!30248)) )
))
(declare-fun separatorToken!156 () Token!8580)

(declare-fun b!2610708 () Bool)

(declare-fun inv!21 (TokenValue!4777) Bool)

(assert (=> b!2610708 (= e!1647220 (and (inv!21 (value!147422 separatorToken!156)) e!1647217 tp!829432))))

(declare-fun e!1647219 () Bool)

(declare-fun e!1647223 () Bool)

(declare-fun tp!829437 () Bool)

(declare-fun b!2610709 () Bool)

(declare-fun inv!40794 (String!33769) Bool)

(declare-fun inv!40799 (TokenValueInjection!8994) Bool)

(assert (=> b!2610709 (= e!1647219 (and tp!829437 (inv!40794 (tag!5045 (h!35569 rules!1726))) (inv!40799 (transformation!4555 (h!35569 rules!1726))) e!1647223))))

(declare-fun b!2610710 () Bool)

(declare-fun res!1098885 () Bool)

(assert (=> b!2610710 (=> (not res!1098885) (not e!1647228))))

(assert (=> b!2610710 (= res!1098885 (isSeparator!4555 (rule!6925 separatorToken!156)))))

(assert (=> b!2610711 (= e!1647223 (and tp!829438 tp!829436))))

(declare-fun b!2610712 () Bool)

(declare-fun res!1098878 () Bool)

(declare-fun e!1647225 () Bool)

(assert (=> b!2610712 (=> res!1098878 e!1647225)))

(declare-datatypes ((List!30250 0))(
  ( (Nil!30150) (Cons!30150 (h!35570 Token!8580) (t!214067 List!30250)) )
))
(declare-fun lt!917342 () List!30250)

(declare-fun lt!917344 () Token!8580)

(declare-fun contains!5586 (List!30250 Token!8580) Bool)

(assert (=> b!2610712 (= res!1098878 (not (contains!5586 lt!917342 lt!917344)))))

(assert (=> b!2610713 (= e!1647225 true)))

(declare-datatypes ((Unit!44131 0))(
  ( (Unit!44132) )
))
(declare-fun lt!917347 () Unit!44131)

(declare-fun forallContained!911 (List!30250 Int Token!8580) Unit!44131)

(assert (=> b!2610713 (= lt!917347 (forallContained!911 lt!917342 lambda!97670 lt!917344))))

(declare-fun b!2610714 () Bool)

(declare-fun e!1647226 () Bool)

(assert (=> b!2610714 (= e!1647228 e!1647226)))

(declare-fun res!1098875 () Bool)

(assert (=> b!2610714 (=> (not res!1098875) (not e!1647226))))

(declare-fun from!862 () Int)

(declare-fun lt!917345 () Int)

(assert (=> b!2610714 (= res!1098875 (< from!862 lt!917345))))

(declare-fun lt!917348 () Unit!44131)

(declare-datatypes ((IArray!18711 0))(
  ( (IArray!18712 (innerList!9413 List!30250)) )
))
(declare-datatypes ((Conc!9353 0))(
  ( (Node!9353 (left!23186 Conc!9353) (right!23516 Conc!9353) (csize!18936 Int) (cheight!9564 Int)) (Leaf!14371 (xs!12337 IArray!18711) (csize!18937 Int)) (Empty!9353) )
))
(declare-datatypes ((BalanceConc!18320 0))(
  ( (BalanceConc!18321 (c!419676 Conc!9353)) )
))
(declare-fun v!6381 () BalanceConc!18320)

(declare-fun lemmaContentSubsetPreservesForall!224 (List!30250 List!30250 Int) Unit!44131)

(declare-fun dropList!858 (BalanceConc!18320 Int) List!30250)

(assert (=> b!2610714 (= lt!917348 (lemmaContentSubsetPreservesForall!224 lt!917342 (dropList!858 v!6381 from!862) lambda!97669))))

(declare-fun list!11317 (BalanceConc!18320) List!30250)

(assert (=> b!2610714 (= lt!917342 (list!11317 v!6381))))

(declare-fun b!2610715 () Bool)

(declare-fun e!1647229 () Bool)

(declare-fun tp!829434 () Bool)

(assert (=> b!2610715 (= e!1647229 (and e!1647219 tp!829434))))

(declare-fun e!1647222 () Bool)

(assert (=> b!2610716 (= e!1647222 (and tp!829431 tp!829430))))

(declare-fun res!1098880 () Bool)

(assert (=> b!2610717 (=> (not res!1098880) (not e!1647228))))

(declare-fun forall!6251 (BalanceConc!18320 Int) Bool)

(assert (=> b!2610717 (= res!1098880 (forall!6251 v!6381 lambda!97669))))

(declare-fun b!2610719 () Bool)

(declare-fun res!1098876 () Bool)

(assert (=> b!2610719 (=> (not res!1098876) (not e!1647228))))

(declare-datatypes ((LexerInterface!4152 0))(
  ( (LexerInterfaceExt!4149 (__x!19388 Int)) (Lexer!4150) )
))
(declare-fun thiss!14197 () LexerInterface!4152)

(declare-fun rulesProduceEachTokenIndividually!972 (LexerInterface!4152 List!30249 BalanceConc!18320) Bool)

(assert (=> b!2610719 (= res!1098876 (rulesProduceEachTokenIndividually!972 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2610720 () Bool)

(declare-fun res!1098884 () Bool)

(assert (=> b!2610720 (=> (not res!1098884) (not e!1647228))))

(declare-fun sepAndNonSepRulesDisjointChars!1128 (List!30249 List!30249) Bool)

(assert (=> b!2610720 (= res!1098884 (sepAndNonSepRulesDisjointChars!1128 rules!1726 rules!1726))))

(declare-fun b!2610721 () Bool)

(declare-fun e!1647218 () Bool)

(declare-fun tp!829435 () Bool)

(declare-fun inv!40800 (Conc!9353) Bool)

(assert (=> b!2610721 (= e!1647218 (and (inv!40800 (c!419676 v!6381)) tp!829435))))

(declare-fun b!2610722 () Bool)

(assert (=> b!2610722 (= e!1647226 (not e!1647225))))

(declare-fun res!1098877 () Bool)

(assert (=> b!2610722 (=> res!1098877 e!1647225)))

(declare-fun contains!5587 (BalanceConc!18320 Token!8580) Bool)

(assert (=> b!2610722 (= res!1098877 (not (contains!5587 v!6381 lt!917344)))))

(declare-fun apply!7072 (BalanceConc!18320 Int) Token!8580)

(assert (=> b!2610722 (= lt!917344 (apply!7072 v!6381 from!862))))

(declare-fun lt!917343 () List!30250)

(declare-fun tail!4188 (List!30250) List!30250)

(declare-fun drop!1551 (List!30250 Int) List!30250)

(assert (=> b!2610722 (= (tail!4188 lt!917343) (drop!1551 lt!917342 (+ 1 from!862)))))

(declare-fun lt!917349 () Unit!44131)

(declare-fun lemmaDropTail!740 (List!30250 Int) Unit!44131)

(assert (=> b!2610722 (= lt!917349 (lemmaDropTail!740 lt!917342 from!862))))

(declare-fun head!5950 (List!30250) Token!8580)

(declare-fun apply!7073 (List!30250 Int) Token!8580)

(assert (=> b!2610722 (= (head!5950 lt!917343) (apply!7073 lt!917342 from!862))))

(assert (=> b!2610722 (= lt!917343 (drop!1551 lt!917342 from!862))))

(declare-fun lt!917346 () Unit!44131)

(declare-fun lemmaDropApply!766 (List!30250 Int) Unit!44131)

(assert (=> b!2610722 (= lt!917346 (lemmaDropApply!766 lt!917342 from!862))))

(declare-fun b!2610723 () Bool)

(declare-fun e!1647227 () Bool)

(assert (=> b!2610723 (= e!1647227 e!1647228)))

(declare-fun res!1098882 () Bool)

(assert (=> b!2610723 (=> (not res!1098882) (not e!1647228))))

(assert (=> b!2610723 (= res!1098882 (<= from!862 lt!917345))))

(declare-fun size!23349 (BalanceConc!18320) Int)

(assert (=> b!2610723 (= lt!917345 (size!23349 v!6381))))

(declare-fun b!2610724 () Bool)

(declare-fun tp!829433 () Bool)

(assert (=> b!2610724 (= e!1647217 (and tp!829433 (inv!40794 (tag!5045 (rule!6925 separatorToken!156))) (inv!40799 (transformation!4555 (rule!6925 separatorToken!156))) e!1647222))))

(declare-fun b!2610725 () Bool)

(declare-fun res!1098879 () Bool)

(assert (=> b!2610725 (=> (not res!1098879) (not e!1647228))))

(declare-fun rulesInvariant!3652 (LexerInterface!4152 List!30249) Bool)

(assert (=> b!2610725 (= res!1098879 (rulesInvariant!3652 thiss!14197 rules!1726))))

(declare-fun res!1098881 () Bool)

(assert (=> start!253818 (=> (not res!1098881) (not e!1647227))))

(assert (=> start!253818 (= res!1098881 (and ((_ is Lexer!4150) thiss!14197) (>= from!862 0)))))

(assert (=> start!253818 e!1647227))

(assert (=> start!253818 true))

(assert (=> start!253818 e!1647229))

(declare-fun inv!40801 (Token!8580) Bool)

(assert (=> start!253818 (and (inv!40801 separatorToken!156) e!1647220)))

(declare-fun inv!40802 (BalanceConc!18320) Bool)

(assert (=> start!253818 (and (inv!40802 v!6381) e!1647218)))

(declare-fun b!2610718 () Bool)

(declare-fun res!1098883 () Bool)

(assert (=> b!2610718 (=> (not res!1098883) (not e!1647228))))

(declare-fun rulesProduceIndividualToken!1864 (LexerInterface!4152 List!30249 Token!8580) Bool)

(assert (=> b!2610718 (= res!1098883 (rulesProduceIndividualToken!1864 thiss!14197 rules!1726 separatorToken!156))))

(assert (= (and start!253818 res!1098881) b!2610723))

(assert (= (and b!2610723 res!1098882) b!2610707))

(assert (= (and b!2610707 res!1098874) b!2610725))

(assert (= (and b!2610725 res!1098879) b!2610719))

(assert (= (and b!2610719 res!1098876) b!2610718))

(assert (= (and b!2610718 res!1098883) b!2610710))

(assert (= (and b!2610710 res!1098885) b!2610717))

(assert (= (and b!2610717 res!1098880) b!2610720))

(assert (= (and b!2610720 res!1098884) b!2610714))

(assert (= (and b!2610714 res!1098875) b!2610722))

(assert (= (and b!2610722 (not res!1098877)) b!2610712))

(assert (= (and b!2610712 (not res!1098878)) b!2610713))

(assert (= b!2610709 b!2610711))

(assert (= b!2610715 b!2610709))

(assert (= (and start!253818 ((_ is Cons!30149) rules!1726)) b!2610715))

(assert (= b!2610724 b!2610716))

(assert (= b!2610708 b!2610724))

(assert (= start!253818 b!2610708))

(assert (= start!253818 b!2610721))

(declare-fun m!2945295 () Bool)

(assert (=> b!2610712 m!2945295))

(declare-fun m!2945297 () Bool)

(assert (=> b!2610722 m!2945297))

(declare-fun m!2945299 () Bool)

(assert (=> b!2610722 m!2945299))

(declare-fun m!2945301 () Bool)

(assert (=> b!2610722 m!2945301))

(declare-fun m!2945303 () Bool)

(assert (=> b!2610722 m!2945303))

(declare-fun m!2945305 () Bool)

(assert (=> b!2610722 m!2945305))

(declare-fun m!2945307 () Bool)

(assert (=> b!2610722 m!2945307))

(declare-fun m!2945309 () Bool)

(assert (=> b!2610722 m!2945309))

(declare-fun m!2945311 () Bool)

(assert (=> b!2610722 m!2945311))

(declare-fun m!2945313 () Bool)

(assert (=> b!2610722 m!2945313))

(declare-fun m!2945315 () Bool)

(assert (=> b!2610721 m!2945315))

(declare-fun m!2945317 () Bool)

(assert (=> b!2610707 m!2945317))

(declare-fun m!2945319 () Bool)

(assert (=> b!2610725 m!2945319))

(declare-fun m!2945321 () Bool)

(assert (=> b!2610708 m!2945321))

(declare-fun m!2945323 () Bool)

(assert (=> b!2610713 m!2945323))

(declare-fun m!2945325 () Bool)

(assert (=> b!2610723 m!2945325))

(declare-fun m!2945327 () Bool)

(assert (=> b!2610719 m!2945327))

(declare-fun m!2945329 () Bool)

(assert (=> b!2610724 m!2945329))

(declare-fun m!2945331 () Bool)

(assert (=> b!2610724 m!2945331))

(declare-fun m!2945333 () Bool)

(assert (=> b!2610718 m!2945333))

(declare-fun m!2945335 () Bool)

(assert (=> b!2610709 m!2945335))

(declare-fun m!2945337 () Bool)

(assert (=> b!2610709 m!2945337))

(declare-fun m!2945339 () Bool)

(assert (=> b!2610714 m!2945339))

(assert (=> b!2610714 m!2945339))

(declare-fun m!2945341 () Bool)

(assert (=> b!2610714 m!2945341))

(declare-fun m!2945343 () Bool)

(assert (=> b!2610714 m!2945343))

(declare-fun m!2945345 () Bool)

(assert (=> b!2610720 m!2945345))

(declare-fun m!2945347 () Bool)

(assert (=> b!2610717 m!2945347))

(declare-fun m!2945349 () Bool)

(assert (=> start!253818 m!2945349))

(declare-fun m!2945351 () Bool)

(assert (=> start!253818 m!2945351))

(check-sat b_and!190953 (not b!2610722) (not b!2610724) (not b!2610717) (not b_next!74091) (not b!2610720) b_and!190949 (not b!2610718) (not b!2610712) (not b_next!74085) (not b!2610719) (not b!2610734) b_and!190951 (not b_next!74087) (not b!2610725) (not b!2610713) (not start!253818) (not b!2610708) (not b!2610714) (not b!2610721) b_and!190947 (not b!2610709) (not b!2610715) (not b!2610723) (not b!2610707) (not b_next!74089))
(check-sat b_and!190953 (not b_next!74091) b_and!190949 b_and!190947 (not b_next!74085) b_and!190951 (not b_next!74087) (not b_next!74089))
