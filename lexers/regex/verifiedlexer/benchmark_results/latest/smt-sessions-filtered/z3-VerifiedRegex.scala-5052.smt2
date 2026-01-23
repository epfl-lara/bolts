; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255646 () Bool)

(assert start!255646)

(declare-fun b!2629788 () Bool)

(declare-fun b_free!74093 () Bool)

(declare-fun b_next!74797 () Bool)

(assert (=> b!2629788 (= b_free!74093 (not b_next!74797))))

(declare-fun tp!833783 () Bool)

(declare-fun b_and!192651 () Bool)

(assert (=> b!2629788 (= tp!833783 b_and!192651)))

(declare-fun b_free!74095 () Bool)

(declare-fun b_next!74799 () Bool)

(assert (=> b!2629788 (= b_free!74095 (not b_next!74799))))

(declare-fun tp!833788 () Bool)

(declare-fun b_and!192653 () Bool)

(assert (=> b!2629788 (= tp!833788 b_and!192653)))

(declare-fun b!2629790 () Bool)

(declare-fun b_free!74097 () Bool)

(declare-fun b_next!74801 () Bool)

(assert (=> b!2629790 (= b_free!74097 (not b_next!74801))))

(declare-fun tp!833787 () Bool)

(declare-fun b_and!192655 () Bool)

(assert (=> b!2629790 (= tp!833787 b_and!192655)))

(declare-fun b_free!74099 () Bool)

(declare-fun b_next!74803 () Bool)

(assert (=> b!2629790 (= b_free!74099 (not b_next!74803))))

(declare-fun tp!833781 () Bool)

(declare-fun b_and!192657 () Bool)

(assert (=> b!2629790 (= tp!833781 b_and!192657)))

(declare-fun bs!475693 () Bool)

(declare-fun b!2629792 () Bool)

(declare-fun b!2629807 () Bool)

(assert (= bs!475693 (and b!2629792 b!2629807)))

(declare-fun lambda!98606 () Int)

(declare-fun lambda!98605 () Int)

(assert (=> bs!475693 (not (= lambda!98606 lambda!98605))))

(declare-fun b!2629818 () Bool)

(declare-fun e!1659236 () Bool)

(assert (=> b!2629818 (= e!1659236 true)))

(declare-fun b!2629817 () Bool)

(declare-fun e!1659235 () Bool)

(assert (=> b!2629817 (= e!1659235 e!1659236)))

(declare-fun b!2629816 () Bool)

(declare-fun e!1659234 () Bool)

(assert (=> b!2629816 (= e!1659234 e!1659235)))

(assert (=> b!2629792 e!1659234))

(assert (= b!2629817 b!2629818))

(assert (= b!2629816 b!2629817))

(declare-datatypes ((List!30537 0))(
  ( (Nil!30437) (Cons!30437 (h!35857 (_ BitVec 16)) (t!216274 List!30537)) )
))
(declare-datatypes ((C!15696 0))(
  ( (C!15697 (val!9782 Int)) )
))
(declare-datatypes ((Regex!7769 0))(
  ( (ElementMatch!7769 (c!422834 C!15696)) (Concat!12616 (regOne!16050 Regex!7769) (regTwo!16050 Regex!7769)) (EmptyExpr!7769) (Star!7769 (reg!8098 Regex!7769)) (EmptyLang!7769) (Union!7769 (regOne!16051 Regex!7769) (regTwo!16051 Regex!7769)) )
))
(declare-datatypes ((TokenValue!4847 0))(
  ( (FloatLiteralValue!9694 (text!34374 List!30537)) (TokenValueExt!4846 (__x!19527 Int)) (Broken!24235 (value!149391 List!30537)) (Object!4946) (End!4847) (Def!4847) (Underscore!4847) (Match!4847) (Else!4847) (Error!4847) (Case!4847) (If!4847) (Extends!4847) (Abstract!4847) (Class!4847) (Val!4847) (DelimiterValue!9694 (del!4907 List!30537)) (KeywordValue!4853 (value!149392 List!30537)) (CommentValue!9694 (value!149393 List!30537)) (WhitespaceValue!9694 (value!149394 List!30537)) (IndentationValue!4847 (value!149395 List!30537)) (String!34118) (Int32!4847) (Broken!24236 (value!149396 List!30537)) (Boolean!4848) (Unit!44460) (OperatorValue!4850 (op!4907 List!30537)) (IdentifierValue!9694 (value!149397 List!30537)) (IdentifierValue!9695 (value!149398 List!30537)) (WhitespaceValue!9695 (value!149399 List!30537)) (True!9694) (False!9694) (Broken!24237 (value!149400 List!30537)) (Broken!24238 (value!149401 List!30537)) (True!9695) (RightBrace!4847) (RightBracket!4847) (Colon!4847) (Null!4847) (Comma!4847) (LeftBracket!4847) (False!9695) (LeftBrace!4847) (ImaginaryLiteralValue!4847 (text!34375 List!30537)) (StringLiteralValue!14541 (value!149402 List!30537)) (EOFValue!4847 (value!149403 List!30537)) (IdentValue!4847 (value!149404 List!30537)) (DelimiterValue!9695 (value!149405 List!30537)) (DedentValue!4847 (value!149406 List!30537)) (NewLineValue!4847 (value!149407 List!30537)) (IntegerValue!14541 (value!149408 (_ BitVec 32)) (text!34376 List!30537)) (IntegerValue!14542 (value!149409 Int) (text!34377 List!30537)) (Times!4847) (Or!4847) (Equal!4847) (Minus!4847) (Broken!24239 (value!149410 List!30537)) (And!4847) (Div!4847) (LessEqual!4847) (Mod!4847) (Concat!12617) (Not!4847) (Plus!4847) (SpaceValue!4847 (value!149411 List!30537)) (IntegerValue!14543 (value!149412 Int) (text!34378 List!30537)) (StringLiteralValue!14542 (text!34379 List!30537)) (FloatLiteralValue!9695 (text!34380 List!30537)) (BytesLiteralValue!4847 (value!149413 List!30537)) (CommentValue!9695 (value!149414 List!30537)) (StringLiteralValue!14543 (value!149415 List!30537)) (ErrorTokenValue!4847 (msg!4908 List!30537)) )
))
(declare-datatypes ((List!30538 0))(
  ( (Nil!30438) (Cons!30438 (h!35858 C!15696) (t!216275 List!30538)) )
))
(declare-datatypes ((IArray!18989 0))(
  ( (IArray!18990 (innerList!9552 List!30538)) )
))
(declare-datatypes ((Conc!9492 0))(
  ( (Node!9492 (left!23500 Conc!9492) (right!23830 Conc!9492) (csize!19214 Int) (cheight!9703 Int)) (Leaf!14545 (xs!12492 IArray!18989) (csize!19215 Int)) (Empty!9492) )
))
(declare-datatypes ((BalanceConc!18598 0))(
  ( (BalanceConc!18599 (c!422835 Conc!9492)) )
))
(declare-datatypes ((TokenValueInjection!9134 0))(
  ( (TokenValueInjection!9135 (toValue!6539 Int) (toChars!6398 Int)) )
))
(declare-datatypes ((String!34119 0))(
  ( (String!34120 (value!149416 String)) )
))
(declare-datatypes ((Rule!9050 0))(
  ( (Rule!9051 (regex!4625 Regex!7769) (tag!5119 String!34119) (isSeparator!4625 Bool) (transformation!4625 TokenValueInjection!9134)) )
))
(declare-datatypes ((List!30539 0))(
  ( (Nil!30439) (Cons!30439 (h!35859 Rule!9050) (t!216276 List!30539)) )
))
(declare-fun rules!1726 () List!30539)

(get-info :version)

(assert (= (and b!2629792 ((_ is Cons!30439) rules!1726)) b!2629816))

(declare-fun order!16453 () Int)

(declare-fun order!16451 () Int)

(declare-fun dynLambda!13017 (Int Int) Int)

(declare-fun dynLambda!13018 (Int Int) Int)

(assert (=> b!2629818 (< (dynLambda!13017 order!16451 (toValue!6539 (transformation!4625 (h!35859 rules!1726)))) (dynLambda!13018 order!16453 lambda!98606))))

(declare-fun order!16455 () Int)

(declare-fun dynLambda!13019 (Int Int) Int)

(assert (=> b!2629818 (< (dynLambda!13019 order!16455 (toChars!6398 (transformation!4625 (h!35859 rules!1726)))) (dynLambda!13018 order!16453 lambda!98606))))

(assert (=> b!2629792 true))

(declare-fun e!1659219 () Bool)

(assert (=> b!2629788 (= e!1659219 (and tp!833783 tp!833788))))

(declare-fun b!2629789 () Bool)

(declare-fun res!1107186 () Bool)

(declare-fun e!1659221 () Bool)

(assert (=> b!2629789 (=> (not res!1107186) (not e!1659221))))

(declare-fun sepAndNonSepRulesDisjointChars!1198 (List!30539 List!30539) Bool)

(assert (=> b!2629789 (= res!1107186 (sepAndNonSepRulesDisjointChars!1198 rules!1726 rules!1726))))

(declare-fun res!1107188 () Bool)

(declare-fun e!1659225 () Bool)

(assert (=> start!255646 (=> (not res!1107188) (not e!1659225))))

(declare-datatypes ((LexerInterface!4222 0))(
  ( (LexerInterfaceExt!4219 (__x!19528 Int)) (Lexer!4220) )
))
(declare-fun thiss!14197 () LexerInterface!4222)

(declare-fun from!862 () Int)

(assert (=> start!255646 (= res!1107188 (and ((_ is Lexer!4220) thiss!14197) (>= from!862 0)))))

(assert (=> start!255646 e!1659225))

(assert (=> start!255646 true))

(declare-fun e!1659217 () Bool)

(assert (=> start!255646 e!1659217))

(declare-datatypes ((Token!8720 0))(
  ( (Token!8721 (value!149417 TokenValue!4847) (rule!7007 Rule!9050) (size!23532 Int) (originalCharacters!5391 List!30538)) )
))
(declare-fun separatorToken!156 () Token!8720)

(declare-fun e!1659213 () Bool)

(declare-fun inv!41252 (Token!8720) Bool)

(assert (=> start!255646 (and (inv!41252 separatorToken!156) e!1659213)))

(declare-datatypes ((List!30540 0))(
  ( (Nil!30440) (Cons!30440 (h!35860 Token!8720) (t!216277 List!30540)) )
))
(declare-datatypes ((IArray!18991 0))(
  ( (IArray!18992 (innerList!9553 List!30540)) )
))
(declare-datatypes ((Conc!9493 0))(
  ( (Node!9493 (left!23501 Conc!9493) (right!23831 Conc!9493) (csize!19216 Int) (cheight!9704 Int)) (Leaf!14546 (xs!12493 IArray!18991) (csize!19217 Int)) (Empty!9493) )
))
(declare-datatypes ((BalanceConc!18600 0))(
  ( (BalanceConc!18601 (c!422836 Conc!9493)) )
))
(declare-fun v!6381 () BalanceConc!18600)

(declare-fun e!1659214 () Bool)

(declare-fun inv!41253 (BalanceConc!18600) Bool)

(assert (=> start!255646 (and (inv!41253 v!6381) e!1659214)))

(declare-fun e!1659222 () Bool)

(assert (=> b!2629790 (= e!1659222 (and tp!833787 tp!833781))))

(declare-fun b!2629791 () Bool)

(declare-fun res!1107181 () Bool)

(assert (=> b!2629791 (=> (not res!1107181) (not e!1659221))))

(declare-fun isEmpty!17364 (List!30539) Bool)

(assert (=> b!2629791 (= res!1107181 (not (isEmpty!17364 rules!1726)))))

(declare-fun e!1659227 () Bool)

(declare-fun e!1659226 () Bool)

(assert (=> b!2629792 (= e!1659227 e!1659226)))

(declare-fun res!1107182 () Bool)

(assert (=> b!2629792 (=> res!1107182 e!1659226)))

(declare-fun lt!925329 () Bool)

(declare-fun lt!925338 () Token!8720)

(declare-datatypes ((tuple2!29956 0))(
  ( (tuple2!29957 (_1!17520 Token!8720) (_2!17520 BalanceConc!18598)) )
))
(declare-datatypes ((Option!6016 0))(
  ( (None!6015) (Some!6015 (v!32402 tuple2!29956)) )
))
(declare-fun lt!925331 () Option!6016)

(assert (=> b!2629792 (= res!1107182 (or (and (not lt!925329) (= (_1!17520 (v!32402 lt!925331)) lt!925338)) (and (not lt!925329) (not (= (_1!17520 (v!32402 lt!925331)) lt!925338))) ((_ is None!6015) lt!925331)))))

(assert (=> b!2629792 (= lt!925329 (not ((_ is Some!6015) lt!925331)))))

(declare-fun maxPrefixZipperSequence!952 (LexerInterface!4222 List!30539 BalanceConc!18598) Option!6016)

(declare-fun ++!7411 (BalanceConc!18598 BalanceConc!18598) BalanceConc!18598)

(declare-fun charsOf!2916 (Token!8720) BalanceConc!18598)

(declare-fun printWithSeparatorTokenWhenNeededRec!500 (LexerInterface!4222 List!30539 BalanceConc!18600 Token!8720 Int) BalanceConc!18598)

(assert (=> b!2629792 (= lt!925331 (maxPrefixZipperSequence!952 thiss!14197 rules!1726 (++!7411 (charsOf!2916 lt!925338) (printWithSeparatorTokenWhenNeededRec!500 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-datatypes ((Unit!44461 0))(
  ( (Unit!44462) )
))
(declare-fun lt!925336 () Unit!44461)

(declare-fun lt!925334 () List!30540)

(declare-fun forallContained!981 (List!30540 Int Token!8720) Unit!44461)

(assert (=> b!2629792 (= lt!925336 (forallContained!981 lt!925334 lambda!98606 lt!925338))))

(declare-fun b!2629793 () Bool)

(declare-fun res!1107183 () Bool)

(assert (=> b!2629793 (=> (not res!1107183) (not e!1659221))))

(declare-fun rulesProduceEachTokenIndividually!1042 (LexerInterface!4222 List!30539 BalanceConc!18600) Bool)

(assert (=> b!2629793 (= res!1107183 (rulesProduceEachTokenIndividually!1042 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2629794 () Bool)

(declare-fun e!1659215 () Bool)

(assert (=> b!2629794 (= e!1659221 e!1659215)))

(declare-fun res!1107185 () Bool)

(assert (=> b!2629794 (=> (not res!1107185) (not e!1659215))))

(declare-fun lt!925339 () Int)

(assert (=> b!2629794 (= res!1107185 (< from!862 lt!925339))))

(declare-fun lt!925337 () List!30540)

(declare-fun lt!925332 () Unit!44461)

(declare-fun lemmaContentSubsetPreservesForall!294 (List!30540 List!30540 Int) Unit!44461)

(assert (=> b!2629794 (= lt!925332 (lemmaContentSubsetPreservesForall!294 lt!925334 lt!925337 lambda!98605))))

(declare-fun dropList!928 (BalanceConc!18600 Int) List!30540)

(assert (=> b!2629794 (= lt!925337 (dropList!928 v!6381 from!862))))

(declare-fun list!11441 (BalanceConc!18600) List!30540)

(assert (=> b!2629794 (= lt!925334 (list!11441 v!6381))))

(declare-fun b!2629795 () Bool)

(declare-fun res!1107179 () Bool)

(assert (=> b!2629795 (=> (not res!1107179) (not e!1659221))))

(declare-fun rulesProduceIndividualToken!1934 (LexerInterface!4222 List!30539 Token!8720) Bool)

(assert (=> b!2629795 (= res!1107179 (rulesProduceIndividualToken!1934 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun tp!833780 () Bool)

(declare-fun e!1659224 () Bool)

(declare-fun b!2629796 () Bool)

(declare-fun inv!41247 (String!34119) Bool)

(declare-fun inv!41254 (TokenValueInjection!9134) Bool)

(assert (=> b!2629796 (= e!1659224 (and tp!833780 (inv!41247 (tag!5119 (h!35859 rules!1726))) (inv!41254 (transformation!4625 (h!35859 rules!1726))) e!1659219))))

(declare-fun b!2629797 () Bool)

(declare-fun res!1107187 () Bool)

(assert (=> b!2629797 (=> (not res!1107187) (not e!1659221))))

(declare-fun rulesInvariant!3722 (LexerInterface!4222 List!30539) Bool)

(assert (=> b!2629797 (= res!1107187 (rulesInvariant!3722 thiss!14197 rules!1726))))

(declare-fun b!2629798 () Bool)

(declare-fun tp!833782 () Bool)

(declare-fun inv!41255 (Conc!9493) Bool)

(assert (=> b!2629798 (= e!1659214 (and (inv!41255 (c!422836 v!6381)) tp!833782))))

(declare-fun b!2629799 () Bool)

(declare-fun res!1107180 () Bool)

(assert (=> b!2629799 (=> res!1107180 e!1659227)))

(declare-fun contains!5752 (List!30540 Token!8720) Bool)

(assert (=> b!2629799 (= res!1107180 (not (contains!5752 lt!925334 lt!925338)))))

(declare-fun b!2629800 () Bool)

(assert (=> b!2629800 (= e!1659215 (not e!1659227))))

(declare-fun res!1107191 () Bool)

(assert (=> b!2629800 (=> res!1107191 e!1659227)))

(declare-fun contains!5753 (BalanceConc!18600 Token!8720) Bool)

(assert (=> b!2629800 (= res!1107191 (not (contains!5753 v!6381 lt!925338)))))

(declare-fun apply!7232 (BalanceConc!18600 Int) Token!8720)

(assert (=> b!2629800 (= lt!925338 (apply!7232 v!6381 from!862))))

(declare-fun lt!925335 () List!30540)

(declare-fun tail!4262 (List!30540) List!30540)

(declare-fun drop!1621 (List!30540 Int) List!30540)

(assert (=> b!2629800 (= (tail!4262 lt!925335) (drop!1621 lt!925334 (+ 1 from!862)))))

(declare-fun lt!925333 () Unit!44461)

(declare-fun lemmaDropTail!810 (List!30540 Int) Unit!44461)

(assert (=> b!2629800 (= lt!925333 (lemmaDropTail!810 lt!925334 from!862))))

(declare-fun head!6024 (List!30540) Token!8720)

(declare-fun apply!7233 (List!30540 Int) Token!8720)

(assert (=> b!2629800 (= (head!6024 lt!925335) (apply!7233 lt!925334 from!862))))

(assert (=> b!2629800 (= lt!925335 (drop!1621 lt!925334 from!862))))

(declare-fun lt!925330 () Unit!44461)

(declare-fun lemmaDropApply!836 (List!30540 Int) Unit!44461)

(assert (=> b!2629800 (= lt!925330 (lemmaDropApply!836 lt!925334 from!862))))

(declare-fun b!2629801 () Bool)

(declare-fun tp!833785 () Bool)

(assert (=> b!2629801 (= e!1659217 (and e!1659224 tp!833785))))

(declare-fun b!2629802 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1455 (LexerInterface!4222 List!30539 List!30540) Bool)

(assert (=> b!2629802 (= e!1659226 (rulesProduceEachTokenIndividuallyList!1455 thiss!14197 rules!1726 lt!925337))))

(declare-fun b!2629803 () Bool)

(declare-fun res!1107190 () Bool)

(assert (=> b!2629803 (=> (not res!1107190) (not e!1659221))))

(assert (=> b!2629803 (= res!1107190 (isSeparator!4625 (rule!7007 separatorToken!156)))))

(declare-fun b!2629804 () Bool)

(assert (=> b!2629804 (= e!1659225 e!1659221)))

(declare-fun res!1107189 () Bool)

(assert (=> b!2629804 (=> (not res!1107189) (not e!1659221))))

(assert (=> b!2629804 (= res!1107189 (<= from!862 lt!925339))))

(declare-fun size!23533 (BalanceConc!18600) Int)

(assert (=> b!2629804 (= lt!925339 (size!23533 v!6381))))

(declare-fun b!2629805 () Bool)

(declare-fun e!1659218 () Bool)

(declare-fun tp!833784 () Bool)

(declare-fun inv!21 (TokenValue!4847) Bool)

(assert (=> b!2629805 (= e!1659213 (and (inv!21 (value!149417 separatorToken!156)) e!1659218 tp!833784))))

(declare-fun tp!833786 () Bool)

(declare-fun b!2629806 () Bool)

(assert (=> b!2629806 (= e!1659218 (and tp!833786 (inv!41247 (tag!5119 (rule!7007 separatorToken!156))) (inv!41254 (transformation!4625 (rule!7007 separatorToken!156))) e!1659222))))

(declare-fun res!1107184 () Bool)

(assert (=> b!2629807 (=> (not res!1107184) (not e!1659221))))

(declare-fun forall!6357 (BalanceConc!18600 Int) Bool)

(assert (=> b!2629807 (= res!1107184 (forall!6357 v!6381 lambda!98605))))

(assert (= (and start!255646 res!1107188) b!2629804))

(assert (= (and b!2629804 res!1107189) b!2629791))

(assert (= (and b!2629791 res!1107181) b!2629797))

(assert (= (and b!2629797 res!1107187) b!2629793))

(assert (= (and b!2629793 res!1107183) b!2629795))

(assert (= (and b!2629795 res!1107179) b!2629803))

(assert (= (and b!2629803 res!1107190) b!2629807))

(assert (= (and b!2629807 res!1107184) b!2629789))

(assert (= (and b!2629789 res!1107186) b!2629794))

(assert (= (and b!2629794 res!1107185) b!2629800))

(assert (= (and b!2629800 (not res!1107191)) b!2629799))

(assert (= (and b!2629799 (not res!1107180)) b!2629792))

(assert (= (and b!2629792 (not res!1107182)) b!2629802))

(assert (= b!2629796 b!2629788))

(assert (= b!2629801 b!2629796))

(assert (= (and start!255646 ((_ is Cons!30439) rules!1726)) b!2629801))

(assert (= b!2629806 b!2629790))

(assert (= b!2629805 b!2629806))

(assert (= start!255646 b!2629805))

(assert (= start!255646 b!2629798))

(declare-fun m!2972885 () Bool)

(assert (=> b!2629795 m!2972885))

(declare-fun m!2972887 () Bool)

(assert (=> b!2629804 m!2972887))

(declare-fun m!2972889 () Bool)

(assert (=> start!255646 m!2972889))

(declare-fun m!2972891 () Bool)

(assert (=> start!255646 m!2972891))

(declare-fun m!2972893 () Bool)

(assert (=> b!2629796 m!2972893))

(declare-fun m!2972895 () Bool)

(assert (=> b!2629796 m!2972895))

(declare-fun m!2972897 () Bool)

(assert (=> b!2629794 m!2972897))

(declare-fun m!2972899 () Bool)

(assert (=> b!2629794 m!2972899))

(declare-fun m!2972901 () Bool)

(assert (=> b!2629794 m!2972901))

(declare-fun m!2972903 () Bool)

(assert (=> b!2629802 m!2972903))

(declare-fun m!2972905 () Bool)

(assert (=> b!2629793 m!2972905))

(declare-fun m!2972907 () Bool)

(assert (=> b!2629798 m!2972907))

(declare-fun m!2972909 () Bool)

(assert (=> b!2629791 m!2972909))

(declare-fun m!2972911 () Bool)

(assert (=> b!2629806 m!2972911))

(declare-fun m!2972913 () Bool)

(assert (=> b!2629806 m!2972913))

(declare-fun m!2972915 () Bool)

(assert (=> b!2629792 m!2972915))

(declare-fun m!2972917 () Bool)

(assert (=> b!2629792 m!2972917))

(declare-fun m!2972919 () Bool)

(assert (=> b!2629792 m!2972919))

(declare-fun m!2972921 () Bool)

(assert (=> b!2629792 m!2972921))

(assert (=> b!2629792 m!2972919))

(assert (=> b!2629792 m!2972921))

(assert (=> b!2629792 m!2972915))

(declare-fun m!2972923 () Bool)

(assert (=> b!2629792 m!2972923))

(declare-fun m!2972925 () Bool)

(assert (=> b!2629797 m!2972925))

(declare-fun m!2972927 () Bool)

(assert (=> b!2629800 m!2972927))

(declare-fun m!2972929 () Bool)

(assert (=> b!2629800 m!2972929))

(declare-fun m!2972931 () Bool)

(assert (=> b!2629800 m!2972931))

(declare-fun m!2972933 () Bool)

(assert (=> b!2629800 m!2972933))

(declare-fun m!2972935 () Bool)

(assert (=> b!2629800 m!2972935))

(declare-fun m!2972937 () Bool)

(assert (=> b!2629800 m!2972937))

(declare-fun m!2972939 () Bool)

(assert (=> b!2629800 m!2972939))

(declare-fun m!2972941 () Bool)

(assert (=> b!2629800 m!2972941))

(declare-fun m!2972943 () Bool)

(assert (=> b!2629800 m!2972943))

(declare-fun m!2972945 () Bool)

(assert (=> b!2629789 m!2972945))

(declare-fun m!2972947 () Bool)

(assert (=> b!2629799 m!2972947))

(declare-fun m!2972949 () Bool)

(assert (=> b!2629807 m!2972949))

(declare-fun m!2972951 () Bool)

(assert (=> b!2629805 m!2972951))

(check-sat (not b!2629800) b_and!192655 (not b!2629789) (not b!2629806) (not b!2629792) b_and!192657 (not b!2629799) b_and!192651 (not b!2629816) (not b_next!74799) (not b!2629805) (not start!255646) (not b!2629793) (not b!2629801) (not b!2629794) b_and!192653 (not b!2629802) (not b!2629796) (not b!2629797) (not b_next!74797) (not b!2629798) (not b_next!74803) (not b_next!74801) (not b!2629795) (not b!2629791) (not b!2629807) (not b!2629804))
(check-sat b_and!192655 b_and!192653 (not b_next!74797) (not b_next!74803) b_and!192657 (not b_next!74801) b_and!192651 (not b_next!74799))
