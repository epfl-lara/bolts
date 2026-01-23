; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259530 () Bool)

(assert start!259530)

(declare-fun b!2668124 () Bool)

(declare-fun b_free!74781 () Bool)

(declare-fun b_next!75485 () Bool)

(assert (=> b!2668124 (= b_free!74781 (not b_next!75485))))

(declare-fun tp!843118 () Bool)

(declare-fun b_and!196741 () Bool)

(assert (=> b!2668124 (= tp!843118 b_and!196741)))

(declare-fun b_free!74783 () Bool)

(declare-fun b_next!75487 () Bool)

(assert (=> b!2668124 (= b_free!74783 (not b_next!75487))))

(declare-fun tp!843123 () Bool)

(declare-fun b_and!196743 () Bool)

(assert (=> b!2668124 (= tp!843123 b_and!196743)))

(declare-fun b!2668137 () Bool)

(declare-fun b_free!74785 () Bool)

(declare-fun b_next!75489 () Bool)

(assert (=> b!2668137 (= b_free!74785 (not b_next!75489))))

(declare-fun tp!843119 () Bool)

(declare-fun b_and!196745 () Bool)

(assert (=> b!2668137 (= tp!843119 b_and!196745)))

(declare-fun b_free!74787 () Bool)

(declare-fun b_next!75491 () Bool)

(assert (=> b!2668137 (= b_free!74787 (not b_next!75491))))

(declare-fun tp!843121 () Bool)

(declare-fun b_and!196747 () Bool)

(assert (=> b!2668137 (= tp!843121 b_and!196747)))

(declare-fun bs!479348 () Bool)

(declare-fun b!2668123 () Bool)

(declare-fun b!2668121 () Bool)

(assert (= bs!479348 (and b!2668123 b!2668121)))

(declare-fun lambda!99564 () Int)

(declare-fun lambda!99563 () Int)

(assert (=> bs!479348 (not (= lambda!99564 lambda!99563))))

(declare-fun b!2668149 () Bool)

(declare-fun e!1681242 () Bool)

(assert (=> b!2668149 (= e!1681242 true)))

(declare-fun b!2668148 () Bool)

(declare-fun e!1681241 () Bool)

(assert (=> b!2668148 (= e!1681241 e!1681242)))

(declare-fun b!2668147 () Bool)

(declare-fun e!1681240 () Bool)

(assert (=> b!2668147 (= e!1681240 e!1681241)))

(assert (=> b!2668123 e!1681240))

(assert (= b!2668148 b!2668149))

(assert (= b!2668147 b!2668148))

(declare-datatypes ((List!30713 0))(
  ( (Nil!30613) (Cons!30613 (h!36033 (_ BitVec 16)) (t!222904 List!30713)) )
))
(declare-datatypes ((C!15772 0))(
  ( (C!15773 (val!9820 Int)) )
))
(declare-datatypes ((String!34308 0))(
  ( (String!34309 (value!150474 String)) )
))
(declare-datatypes ((Regex!7807 0))(
  ( (ElementMatch!7807 (c!430360 C!15772)) (Concat!12692 (regOne!16126 Regex!7807) (regTwo!16126 Regex!7807)) (EmptyExpr!7807) (Star!7807 (reg!8136 Regex!7807)) (EmptyLang!7807) (Union!7807 (regOne!16127 Regex!7807) (regTwo!16127 Regex!7807)) )
))
(declare-datatypes ((TokenValue!4885 0))(
  ( (FloatLiteralValue!9770 (text!34640 List!30713)) (TokenValueExt!4884 (__x!19603 Int)) (Broken!24425 (value!150475 List!30713)) (Object!4984) (End!4885) (Def!4885) (Underscore!4885) (Match!4885) (Else!4885) (Error!4885) (Case!4885) (If!4885) (Extends!4885) (Abstract!4885) (Class!4885) (Val!4885) (DelimiterValue!9770 (del!4945 List!30713)) (KeywordValue!4891 (value!150476 List!30713)) (CommentValue!9770 (value!150477 List!30713)) (WhitespaceValue!9770 (value!150478 List!30713)) (IndentationValue!4885 (value!150479 List!30713)) (String!34310) (Int32!4885) (Broken!24426 (value!150480 List!30713)) (Boolean!4886) (Unit!44864) (OperatorValue!4888 (op!4945 List!30713)) (IdentifierValue!9770 (value!150481 List!30713)) (IdentifierValue!9771 (value!150482 List!30713)) (WhitespaceValue!9771 (value!150483 List!30713)) (True!9770) (False!9770) (Broken!24427 (value!150484 List!30713)) (Broken!24428 (value!150485 List!30713)) (True!9771) (RightBrace!4885) (RightBracket!4885) (Colon!4885) (Null!4885) (Comma!4885) (LeftBracket!4885) (False!9771) (LeftBrace!4885) (ImaginaryLiteralValue!4885 (text!34641 List!30713)) (StringLiteralValue!14655 (value!150486 List!30713)) (EOFValue!4885 (value!150487 List!30713)) (IdentValue!4885 (value!150488 List!30713)) (DelimiterValue!9771 (value!150489 List!30713)) (DedentValue!4885 (value!150490 List!30713)) (NewLineValue!4885 (value!150491 List!30713)) (IntegerValue!14655 (value!150492 (_ BitVec 32)) (text!34642 List!30713)) (IntegerValue!14656 (value!150493 Int) (text!34643 List!30713)) (Times!4885) (Or!4885) (Equal!4885) (Minus!4885) (Broken!24429 (value!150494 List!30713)) (And!4885) (Div!4885) (LessEqual!4885) (Mod!4885) (Concat!12693) (Not!4885) (Plus!4885) (SpaceValue!4885 (value!150495 List!30713)) (IntegerValue!14657 (value!150496 Int) (text!34644 List!30713)) (StringLiteralValue!14656 (text!34645 List!30713)) (FloatLiteralValue!9771 (text!34646 List!30713)) (BytesLiteralValue!4885 (value!150497 List!30713)) (CommentValue!9771 (value!150498 List!30713)) (StringLiteralValue!14657 (value!150499 List!30713)) (ErrorTokenValue!4885 (msg!4946 List!30713)) )
))
(declare-datatypes ((List!30714 0))(
  ( (Nil!30614) (Cons!30614 (h!36034 C!15772) (t!222905 List!30714)) )
))
(declare-datatypes ((IArray!19141 0))(
  ( (IArray!19142 (innerList!9628 List!30714)) )
))
(declare-datatypes ((Conc!9568 0))(
  ( (Node!9568 (left!23667 Conc!9568) (right!23997 Conc!9568) (csize!19366 Int) (cheight!9779 Int)) (Leaf!14640 (xs!12598 IArray!19141) (csize!19367 Int)) (Empty!9568) )
))
(declare-datatypes ((BalanceConc!18750 0))(
  ( (BalanceConc!18751 (c!430361 Conc!9568)) )
))
(declare-datatypes ((TokenValueInjection!9210 0))(
  ( (TokenValueInjection!9211 (toValue!6601 Int) (toChars!6460 Int)) )
))
(declare-datatypes ((Rule!9126 0))(
  ( (Rule!9127 (regex!4663 Regex!7807) (tag!5165 String!34308) (isSeparator!4663 Bool) (transformation!4663 TokenValueInjection!9210)) )
))
(declare-datatypes ((List!30715 0))(
  ( (Nil!30615) (Cons!30615 (h!36035 Rule!9126) (t!222906 List!30715)) )
))
(declare-fun rules!1726 () List!30715)

(get-info :version)

(assert (= (and b!2668123 ((_ is Cons!30615) rules!1726)) b!2668147))

(declare-fun order!16731 () Int)

(declare-fun order!16733 () Int)

(declare-fun dynLambda!13218 (Int Int) Int)

(declare-fun dynLambda!13219 (Int Int) Int)

(assert (=> b!2668149 (< (dynLambda!13218 order!16731 (toValue!6601 (transformation!4663 (h!36035 rules!1726)))) (dynLambda!13219 order!16733 lambda!99564))))

(declare-fun order!16735 () Int)

(declare-fun dynLambda!13220 (Int Int) Int)

(assert (=> b!2668149 (< (dynLambda!13220 order!16735 (toChars!6460 (transformation!4663 (h!36035 rules!1726)))) (dynLambda!13219 order!16733 lambda!99564))))

(assert (=> b!2668123 true))

(declare-fun tp!843117 () Bool)

(declare-fun e!1681222 () Bool)

(declare-fun b!2668120 () Bool)

(declare-fun e!1681221 () Bool)

(declare-fun inv!41607 (String!34308) Bool)

(declare-fun inv!41612 (TokenValueInjection!9210) Bool)

(assert (=> b!2668120 (= e!1681221 (and tp!843117 (inv!41607 (tag!5165 (h!36035 rules!1726))) (inv!41612 (transformation!4663 (h!36035 rules!1726))) e!1681222))))

(declare-fun res!1121757 () Bool)

(declare-fun e!1681228 () Bool)

(assert (=> b!2668121 (=> (not res!1121757) (not e!1681228))))

(declare-datatypes ((Token!8796 0))(
  ( (Token!8797 (value!150500 TokenValue!4885) (rule!7069 Rule!9126) (size!23710 Int) (originalCharacters!5429 List!30714)) )
))
(declare-datatypes ((List!30716 0))(
  ( (Nil!30616) (Cons!30616 (h!36036 Token!8796) (t!222907 List!30716)) )
))
(declare-datatypes ((IArray!19143 0))(
  ( (IArray!19144 (innerList!9629 List!30716)) )
))
(declare-datatypes ((Conc!9569 0))(
  ( (Node!9569 (left!23668 Conc!9569) (right!23998 Conc!9569) (csize!19368 Int) (cheight!9780 Int)) (Leaf!14641 (xs!12599 IArray!19143) (csize!19369 Int)) (Empty!9569) )
))
(declare-datatypes ((BalanceConc!18752 0))(
  ( (BalanceConc!18753 (c!430362 Conc!9569)) )
))
(declare-fun v!6381 () BalanceConc!18752)

(declare-fun forall!6476 (BalanceConc!18752 Int) Bool)

(assert (=> b!2668121 (= res!1121757 (forall!6476 v!6381 lambda!99563))))

(declare-fun b!2668122 () Bool)

(declare-fun res!1121750 () Bool)

(assert (=> b!2668122 (=> (not res!1121750) (not e!1681228))))

(declare-datatypes ((LexerInterface!4260 0))(
  ( (LexerInterfaceExt!4257 (__x!19604 Int)) (Lexer!4258) )
))
(declare-fun thiss!14197 () LexerInterface!4260)

(declare-fun rulesProduceEachTokenIndividually!1080 (LexerInterface!4260 List!30715 BalanceConc!18752) Bool)

(assert (=> b!2668122 (= res!1121750 (rulesProduceEachTokenIndividually!1080 thiss!14197 rules!1726 v!6381))))

(declare-fun e!1681233 () Bool)

(declare-fun lt!940262 () Bool)

(declare-datatypes ((tuple2!30158 0))(
  ( (tuple2!30159 (_1!17621 Token!8796) (_2!17621 BalanceConc!18750)) )
))
(declare-datatypes ((Option!6070 0))(
  ( (None!6069) (Some!6069 (v!32592 tuple2!30158)) )
))
(declare-fun lt!940269 () Option!6070)

(declare-fun lt!940268 () Token!8796)

(assert (=> b!2668123 (= e!1681233 (or (and (not lt!940262) (= (_1!17621 (v!32592 lt!940269)) lt!940268)) (and (not lt!940262) (not (= (_1!17621 (v!32592 lt!940269)) lt!940268))) ((_ is None!6069) lt!940269)))))

(assert (=> b!2668123 (= lt!940262 (not ((_ is Some!6069) lt!940269)))))

(declare-fun separatorToken!156 () Token!8796)

(declare-fun from!862 () Int)

(declare-fun maxPrefixZipperSequence!978 (LexerInterface!4260 List!30715 BalanceConc!18750) Option!6070)

(declare-fun ++!7481 (BalanceConc!18750 BalanceConc!18750) BalanceConc!18750)

(declare-fun charsOf!2942 (Token!8796) BalanceConc!18750)

(declare-fun printWithSeparatorTokenWhenNeededRec!524 (LexerInterface!4260 List!30715 BalanceConc!18752 Token!8796 Int) BalanceConc!18750)

(assert (=> b!2668123 (= lt!940269 (maxPrefixZipperSequence!978 thiss!14197 rules!1726 (++!7481 (charsOf!2942 lt!940268) (printWithSeparatorTokenWhenNeededRec!524 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!940265 () List!30716)

(declare-datatypes ((Unit!44865 0))(
  ( (Unit!44866) )
))
(declare-fun lt!940263 () Unit!44865)

(declare-fun forallContained!1009 (List!30716 Int Token!8796) Unit!44865)

(assert (=> b!2668123 (= lt!940263 (forallContained!1009 lt!940265 lambda!99564 lt!940268))))

(declare-fun res!1121752 () Bool)

(declare-fun e!1681231 () Bool)

(assert (=> start!259530 (=> (not res!1121752) (not e!1681231))))

(assert (=> start!259530 (= res!1121752 (and ((_ is Lexer!4258) thiss!14197) (>= from!862 0)))))

(assert (=> start!259530 e!1681231))

(assert (=> start!259530 true))

(declare-fun e!1681223 () Bool)

(assert (=> start!259530 e!1681223))

(declare-fun e!1681229 () Bool)

(declare-fun inv!41613 (Token!8796) Bool)

(assert (=> start!259530 (and (inv!41613 separatorToken!156) e!1681229)))

(declare-fun e!1681232 () Bool)

(declare-fun inv!41614 (BalanceConc!18752) Bool)

(assert (=> start!259530 (and (inv!41614 v!6381) e!1681232)))

(declare-fun e!1681224 () Bool)

(assert (=> b!2668124 (= e!1681224 (and tp!843118 tp!843123))))

(declare-fun b!2668125 () Bool)

(assert (=> b!2668125 (= e!1681231 e!1681228)))

(declare-fun res!1121751 () Bool)

(assert (=> b!2668125 (=> (not res!1121751) (not e!1681228))))

(declare-fun lt!940266 () Int)

(assert (=> b!2668125 (= res!1121751 (<= from!862 lt!940266))))

(declare-fun size!23711 (BalanceConc!18752) Int)

(assert (=> b!2668125 (= lt!940266 (size!23711 v!6381))))

(declare-fun b!2668126 () Bool)

(declare-fun res!1121759 () Bool)

(assert (=> b!2668126 (=> (not res!1121759) (not e!1681228))))

(assert (=> b!2668126 (= res!1121759 (isSeparator!4663 (rule!7069 separatorToken!156)))))

(declare-fun b!2668127 () Bool)

(declare-fun res!1121754 () Bool)

(assert (=> b!2668127 (=> (not res!1121754) (not e!1681228))))

(declare-fun rulesProduceIndividualToken!1972 (LexerInterface!4260 List!30715 Token!8796) Bool)

(assert (=> b!2668127 (= res!1121754 (rulesProduceIndividualToken!1972 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun tp!843120 () Bool)

(declare-fun e!1681225 () Bool)

(declare-fun b!2668128 () Bool)

(declare-fun inv!21 (TokenValue!4885) Bool)

(assert (=> b!2668128 (= e!1681229 (and (inv!21 (value!150500 separatorToken!156)) e!1681225 tp!843120))))

(declare-fun b!2668129 () Bool)

(declare-fun res!1121758 () Bool)

(assert (=> b!2668129 (=> (not res!1121758) (not e!1681228))))

(declare-fun sepAndNonSepRulesDisjointChars!1236 (List!30715 List!30715) Bool)

(assert (=> b!2668129 (= res!1121758 (sepAndNonSepRulesDisjointChars!1236 rules!1726 rules!1726))))

(declare-fun b!2668130 () Bool)

(declare-fun tp!843116 () Bool)

(declare-fun inv!41615 (Conc!9569) Bool)

(assert (=> b!2668130 (= e!1681232 (and (inv!41615 (c!430362 v!6381)) tp!843116))))

(declare-fun b!2668131 () Bool)

(declare-fun tp!843122 () Bool)

(assert (=> b!2668131 (= e!1681223 (and e!1681221 tp!843122))))

(declare-fun b!2668132 () Bool)

(declare-fun res!1121753 () Bool)

(assert (=> b!2668132 (=> (not res!1121753) (not e!1681228))))

(declare-fun rulesInvariant!3760 (LexerInterface!4260 List!30715) Bool)

(assert (=> b!2668132 (= res!1121753 (rulesInvariant!3760 thiss!14197 rules!1726))))

(declare-fun b!2668133 () Bool)

(declare-fun e!1681227 () Bool)

(assert (=> b!2668133 (= e!1681227 (not e!1681233))))

(declare-fun res!1121749 () Bool)

(assert (=> b!2668133 (=> res!1121749 e!1681233)))

(declare-fun contains!5868 (BalanceConc!18752 Token!8796) Bool)

(assert (=> b!2668133 (= res!1121749 (not (contains!5868 v!6381 lt!940268)))))

(declare-fun apply!7345 (BalanceConc!18752 Int) Token!8796)

(assert (=> b!2668133 (= lt!940268 (apply!7345 v!6381 from!862))))

(declare-fun lt!940267 () List!30716)

(declare-fun tail!4307 (List!30716) List!30716)

(declare-fun drop!1661 (List!30716 Int) List!30716)

(assert (=> b!2668133 (= (tail!4307 lt!940267) (drop!1661 lt!940265 (+ 1 from!862)))))

(declare-fun lt!940264 () Unit!44865)

(declare-fun lemmaDropTail!842 (List!30716 Int) Unit!44865)

(assert (=> b!2668133 (= lt!940264 (lemmaDropTail!842 lt!940265 from!862))))

(declare-fun head!6069 (List!30716) Token!8796)

(declare-fun apply!7346 (List!30716 Int) Token!8796)

(assert (=> b!2668133 (= (head!6069 lt!940267) (apply!7346 lt!940265 from!862))))

(assert (=> b!2668133 (= lt!940267 (drop!1661 lt!940265 from!862))))

(declare-fun lt!940261 () Unit!44865)

(declare-fun lemmaDropApply!870 (List!30716 Int) Unit!44865)

(assert (=> b!2668133 (= lt!940261 (lemmaDropApply!870 lt!940265 from!862))))

(declare-fun b!2668134 () Bool)

(declare-fun res!1121755 () Bool)

(assert (=> b!2668134 (=> res!1121755 e!1681233)))

(declare-fun contains!5869 (List!30716 Token!8796) Bool)

(assert (=> b!2668134 (= res!1121755 (not (contains!5869 lt!940265 lt!940268)))))

(declare-fun tp!843124 () Bool)

(declare-fun b!2668135 () Bool)

(assert (=> b!2668135 (= e!1681225 (and tp!843124 (inv!41607 (tag!5165 (rule!7069 separatorToken!156))) (inv!41612 (transformation!4663 (rule!7069 separatorToken!156))) e!1681224))))

(declare-fun b!2668136 () Bool)

(assert (=> b!2668136 (= e!1681228 e!1681227)))

(declare-fun res!1121756 () Bool)

(assert (=> b!2668136 (=> (not res!1121756) (not e!1681227))))

(assert (=> b!2668136 (= res!1121756 (< from!862 lt!940266))))

(declare-fun lt!940270 () Unit!44865)

(declare-fun lemmaContentSubsetPreservesForall!330 (List!30716 List!30716 Int) Unit!44865)

(declare-fun dropList!964 (BalanceConc!18752 Int) List!30716)

(assert (=> b!2668136 (= lt!940270 (lemmaContentSubsetPreservesForall!330 lt!940265 (dropList!964 v!6381 from!862) lambda!99563))))

(declare-fun list!11567 (BalanceConc!18752) List!30716)

(assert (=> b!2668136 (= lt!940265 (list!11567 v!6381))))

(assert (=> b!2668137 (= e!1681222 (and tp!843119 tp!843121))))

(declare-fun b!2668138 () Bool)

(declare-fun res!1121760 () Bool)

(assert (=> b!2668138 (=> (not res!1121760) (not e!1681228))))

(declare-fun isEmpty!17527 (List!30715) Bool)

(assert (=> b!2668138 (= res!1121760 (not (isEmpty!17527 rules!1726)))))

(assert (= (and start!259530 res!1121752) b!2668125))

(assert (= (and b!2668125 res!1121751) b!2668138))

(assert (= (and b!2668138 res!1121760) b!2668132))

(assert (= (and b!2668132 res!1121753) b!2668122))

(assert (= (and b!2668122 res!1121750) b!2668127))

(assert (= (and b!2668127 res!1121754) b!2668126))

(assert (= (and b!2668126 res!1121759) b!2668121))

(assert (= (and b!2668121 res!1121757) b!2668129))

(assert (= (and b!2668129 res!1121758) b!2668136))

(assert (= (and b!2668136 res!1121756) b!2668133))

(assert (= (and b!2668133 (not res!1121749)) b!2668134))

(assert (= (and b!2668134 (not res!1121755)) b!2668123))

(assert (= b!2668120 b!2668137))

(assert (= b!2668131 b!2668120))

(assert (= (and start!259530 ((_ is Cons!30615) rules!1726)) b!2668131))

(assert (= b!2668135 b!2668124))

(assert (= b!2668128 b!2668135))

(assert (= start!259530 b!2668128))

(assert (= start!259530 b!2668130))

(declare-fun m!3034973 () Bool)

(assert (=> b!2668128 m!3034973))

(declare-fun m!3034975 () Bool)

(assert (=> start!259530 m!3034975))

(declare-fun m!3034977 () Bool)

(assert (=> start!259530 m!3034977))

(declare-fun m!3034979 () Bool)

(assert (=> b!2668121 m!3034979))

(declare-fun m!3034981 () Bool)

(assert (=> b!2668127 m!3034981))

(declare-fun m!3034983 () Bool)

(assert (=> b!2668122 m!3034983))

(declare-fun m!3034985 () Bool)

(assert (=> b!2668138 m!3034985))

(declare-fun m!3034987 () Bool)

(assert (=> b!2668123 m!3034987))

(declare-fun m!3034989 () Bool)

(assert (=> b!2668123 m!3034989))

(declare-fun m!3034991 () Bool)

(assert (=> b!2668123 m!3034991))

(assert (=> b!2668123 m!3034987))

(assert (=> b!2668123 m!3034989))

(assert (=> b!2668123 m!3034991))

(declare-fun m!3034993 () Bool)

(assert (=> b!2668123 m!3034993))

(declare-fun m!3034995 () Bool)

(assert (=> b!2668123 m!3034995))

(declare-fun m!3034997 () Bool)

(assert (=> b!2668135 m!3034997))

(declare-fun m!3034999 () Bool)

(assert (=> b!2668135 m!3034999))

(declare-fun m!3035001 () Bool)

(assert (=> b!2668132 m!3035001))

(declare-fun m!3035003 () Bool)

(assert (=> b!2668130 m!3035003))

(declare-fun m!3035005 () Bool)

(assert (=> b!2668134 m!3035005))

(declare-fun m!3035007 () Bool)

(assert (=> b!2668120 m!3035007))

(declare-fun m!3035009 () Bool)

(assert (=> b!2668120 m!3035009))

(declare-fun m!3035011 () Bool)

(assert (=> b!2668133 m!3035011))

(declare-fun m!3035013 () Bool)

(assert (=> b!2668133 m!3035013))

(declare-fun m!3035015 () Bool)

(assert (=> b!2668133 m!3035015))

(declare-fun m!3035017 () Bool)

(assert (=> b!2668133 m!3035017))

(declare-fun m!3035019 () Bool)

(assert (=> b!2668133 m!3035019))

(declare-fun m!3035021 () Bool)

(assert (=> b!2668133 m!3035021))

(declare-fun m!3035023 () Bool)

(assert (=> b!2668133 m!3035023))

(declare-fun m!3035025 () Bool)

(assert (=> b!2668133 m!3035025))

(declare-fun m!3035027 () Bool)

(assert (=> b!2668133 m!3035027))

(declare-fun m!3035029 () Bool)

(assert (=> b!2668125 m!3035029))

(declare-fun m!3035031 () Bool)

(assert (=> b!2668136 m!3035031))

(assert (=> b!2668136 m!3035031))

(declare-fun m!3035033 () Bool)

(assert (=> b!2668136 m!3035033))

(declare-fun m!3035035 () Bool)

(assert (=> b!2668136 m!3035035))

(declare-fun m!3035037 () Bool)

(assert (=> b!2668129 m!3035037))

(check-sat (not b!2668131) (not b!2668129) (not b!2668134) b_and!196741 (not b!2668128) (not b_next!75485) (not b_next!75491) (not b!2668127) (not b!2668135) (not b!2668121) (not b!2668132) (not b_next!75489) (not b!2668147) (not b!2668123) (not b!2668122) (not b!2668120) (not start!259530) b_and!196743 (not b!2668130) (not b!2668138) (not b_next!75487) (not b!2668125) (not b!2668136) b_and!196745 (not b!2668133) b_and!196747)
(check-sat (not b_next!75489) b_and!196741 (not b_next!75485) b_and!196743 (not b_next!75487) (not b_next!75491) b_and!196747 b_and!196745)
