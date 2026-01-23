; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395162 () Bool)

(assert start!395162)

(declare-fun b!4151748 () Bool)

(declare-fun b_free!118667 () Bool)

(declare-fun b_next!119371 () Bool)

(assert (=> b!4151748 (= b_free!118667 (not b_next!119371))))

(declare-fun tp!1265455 () Bool)

(declare-fun b_and!322957 () Bool)

(assert (=> b!4151748 (= tp!1265455 b_and!322957)))

(declare-fun b_free!118669 () Bool)

(declare-fun b_next!119373 () Bool)

(assert (=> b!4151748 (= b_free!118669 (not b_next!119373))))

(declare-fun tp!1265454 () Bool)

(declare-fun b_and!322959 () Bool)

(assert (=> b!4151748 (= tp!1265454 b_and!322959)))

(declare-fun b!4151747 () Bool)

(declare-fun b_free!118671 () Bool)

(declare-fun b_next!119375 () Bool)

(assert (=> b!4151747 (= b_free!118671 (not b_next!119375))))

(declare-fun tp!1265448 () Bool)

(declare-fun b_and!322961 () Bool)

(assert (=> b!4151747 (= tp!1265448 b_and!322961)))

(declare-fun b_free!118673 () Bool)

(declare-fun b_next!119377 () Bool)

(assert (=> b!4151747 (= b_free!118673 (not b_next!119377))))

(declare-fun tp!1265458 () Bool)

(declare-fun b_and!322963 () Bool)

(assert (=> b!4151747 (= tp!1265458 b_and!322963)))

(declare-fun b!4151742 () Bool)

(declare-fun b_free!118675 () Bool)

(declare-fun b_next!119379 () Bool)

(assert (=> b!4151742 (= b_free!118675 (not b_next!119379))))

(declare-fun tp!1265456 () Bool)

(declare-fun b_and!322965 () Bool)

(assert (=> b!4151742 (= tp!1265456 b_and!322965)))

(declare-fun b_free!118677 () Bool)

(declare-fun b_next!119381 () Bool)

(assert (=> b!4151742 (= b_free!118677 (not b_next!119381))))

(declare-fun tp!1265457 () Bool)

(declare-fun b_and!322967 () Bool)

(assert (=> b!4151742 (= tp!1265457 b_and!322967)))

(declare-fun b!4151733 () Bool)

(declare-fun res!1700181 () Bool)

(declare-fun e!2575887 () Bool)

(assert (=> b!4151733 (=> (not res!1700181) (not e!2575887))))

(declare-datatypes ((LexerInterface!7017 0))(
  ( (LexerInterfaceExt!7014 (__x!27533 Int)) (Lexer!7015) )
))
(declare-fun thiss!25645 () LexerInterface!7017)

(declare-datatypes ((List!45219 0))(
  ( (Nil!45095) (Cons!45095 (h!50515 (_ BitVec 16)) (t!343186 List!45219)) )
))
(declare-datatypes ((TokenValue!7658 0))(
  ( (FloatLiteralValue!15316 (text!54051 List!45219)) (TokenValueExt!7657 (__x!27534 Int)) (Broken!38290 (value!232226 List!45219)) (Object!7781) (End!7658) (Def!7658) (Underscore!7658) (Match!7658) (Else!7658) (Error!7658) (Case!7658) (If!7658) (Extends!7658) (Abstract!7658) (Class!7658) (Val!7658) (DelimiterValue!15316 (del!7718 List!45219)) (KeywordValue!7664 (value!232227 List!45219)) (CommentValue!15316 (value!232228 List!45219)) (WhitespaceValue!15316 (value!232229 List!45219)) (IndentationValue!7658 (value!232230 List!45219)) (String!52039) (Int32!7658) (Broken!38291 (value!232231 List!45219)) (Boolean!7659) (Unit!64366) (OperatorValue!7661 (op!7718 List!45219)) (IdentifierValue!15316 (value!232232 List!45219)) (IdentifierValue!15317 (value!232233 List!45219)) (WhitespaceValue!15317 (value!232234 List!45219)) (True!15316) (False!15316) (Broken!38292 (value!232235 List!45219)) (Broken!38293 (value!232236 List!45219)) (True!15317) (RightBrace!7658) (RightBracket!7658) (Colon!7658) (Null!7658) (Comma!7658) (LeftBracket!7658) (False!15317) (LeftBrace!7658) (ImaginaryLiteralValue!7658 (text!54052 List!45219)) (StringLiteralValue!22974 (value!232237 List!45219)) (EOFValue!7658 (value!232238 List!45219)) (IdentValue!7658 (value!232239 List!45219)) (DelimiterValue!15317 (value!232240 List!45219)) (DedentValue!7658 (value!232241 List!45219)) (NewLineValue!7658 (value!232242 List!45219)) (IntegerValue!22974 (value!232243 (_ BitVec 32)) (text!54053 List!45219)) (IntegerValue!22975 (value!232244 Int) (text!54054 List!45219)) (Times!7658) (Or!7658) (Equal!7658) (Minus!7658) (Broken!38294 (value!232245 List!45219)) (And!7658) (Div!7658) (LessEqual!7658) (Mod!7658) (Concat!19991) (Not!7658) (Plus!7658) (SpaceValue!7658 (value!232246 List!45219)) (IntegerValue!22976 (value!232247 Int) (text!54055 List!45219)) (StringLiteralValue!22975 (text!54056 List!45219)) (FloatLiteralValue!15317 (text!54057 List!45219)) (BytesLiteralValue!7658 (value!232248 List!45219)) (CommentValue!15317 (value!232249 List!45219)) (StringLiteralValue!22976 (value!232250 List!45219)) (ErrorTokenValue!7658 (msg!7719 List!45219)) )
))
(declare-datatypes ((C!24852 0))(
  ( (C!24853 (val!14536 Int)) )
))
(declare-datatypes ((List!45220 0))(
  ( (Nil!45096) (Cons!45096 (h!50516 C!24852) (t!343187 List!45220)) )
))
(declare-datatypes ((IArray!27283 0))(
  ( (IArray!27284 (innerList!13699 List!45220)) )
))
(declare-datatypes ((Conc!13639 0))(
  ( (Node!13639 (left!33767 Conc!13639) (right!34097 Conc!13639) (csize!27508 Int) (cheight!13850 Int)) (Leaf!21068 (xs!16945 IArray!27283) (csize!27509 Int)) (Empty!13639) )
))
(declare-datatypes ((BalanceConc!26872 0))(
  ( (BalanceConc!26873 (c!711014 Conc!13639)) )
))
(declare-datatypes ((Regex!12333 0))(
  ( (ElementMatch!12333 (c!711015 C!24852)) (Concat!19992 (regOne!25178 Regex!12333) (regTwo!25178 Regex!12333)) (EmptyExpr!12333) (Star!12333 (reg!12662 Regex!12333)) (EmptyLang!12333) (Union!12333 (regOne!25179 Regex!12333) (regTwo!25179 Regex!12333)) )
))
(declare-datatypes ((String!52040 0))(
  ( (String!52041 (value!232251 String)) )
))
(declare-datatypes ((TokenValueInjection!14744 0))(
  ( (TokenValueInjection!14745 (toValue!10092 Int) (toChars!9951 Int)) )
))
(declare-datatypes ((Rule!14656 0))(
  ( (Rule!14657 (regex!7428 Regex!12333) (tag!8288 String!52040) (isSeparator!7428 Bool) (transformation!7428 TokenValueInjection!14744)) )
))
(declare-fun r!4008 () Rule!14656)

(declare-fun ruleValid!3234 (LexerInterface!7017 Rule!14656) Bool)

(assert (=> b!4151733 (= res!1700181 (ruleValid!3234 thiss!25645 r!4008))))

(declare-fun b!4151734 () Bool)

(declare-fun res!1700178 () Bool)

(declare-fun e!2575888 () Bool)

(assert (=> b!4151734 (=> res!1700178 e!2575888)))

(declare-datatypes ((List!45221 0))(
  ( (Nil!45097) (Cons!45097 (h!50517 Rule!14656) (t!343188 List!45221)) )
))
(declare-fun rules!3756 () List!45221)

(declare-fun rBis!149 () Rule!14656)

(declare-fun contains!9114 (List!45221 Rule!14656) Bool)

(assert (=> b!4151734 (= res!1700178 (not (contains!9114 (t!343188 rules!3756) rBis!149)))))

(declare-fun b!4151735 () Bool)

(declare-fun res!1700171 () Bool)

(declare-fun e!2575890 () Bool)

(assert (=> b!4151735 (=> (not res!1700171) (not e!2575890))))

(declare-fun isEmpty!26926 (List!45221) Bool)

(assert (=> b!4151735 (= res!1700171 (not (isEmpty!26926 rules!3756)))))

(declare-fun b!4151736 () Bool)

(declare-fun res!1700170 () Bool)

(assert (=> b!4151736 (=> (not res!1700170) (not e!2575887))))

(declare-fun p!2912 () List!45220)

(declare-fun matchR!6162 (Regex!12333 List!45220) Bool)

(assert (=> b!4151736 (= res!1700170 (matchR!6162 (regex!7428 r!4008) p!2912))))

(declare-fun res!1700173 () Bool)

(assert (=> start!395162 (=> (not res!1700173) (not e!2575890))))

(get-info :version)

(assert (=> start!395162 (= res!1700173 ((_ is Lexer!7015) thiss!25645))))

(assert (=> start!395162 e!2575890))

(declare-fun e!2575891 () Bool)

(assert (=> start!395162 e!2575891))

(declare-fun e!2575885 () Bool)

(assert (=> start!395162 e!2575885))

(assert (=> start!395162 true))

(declare-fun e!2575894 () Bool)

(assert (=> start!395162 e!2575894))

(declare-fun e!2575882 () Bool)

(assert (=> start!395162 e!2575882))

(declare-fun e!2575881 () Bool)

(assert (=> start!395162 e!2575881))

(declare-fun b!4151737 () Bool)

(declare-fun res!1700182 () Bool)

(assert (=> b!4151737 (=> (not res!1700182) (not e!2575887))))

(declare-fun getIndex!774 (List!45221 Rule!14656) Int)

(assert (=> b!4151737 (= res!1700182 (< (getIndex!774 rules!3756 rBis!149) (getIndex!774 rules!3756 r!4008)))))

(declare-fun b!4151738 () Bool)

(assert (=> b!4151738 (= e!2575887 (not e!2575888))))

(declare-fun res!1700175 () Bool)

(assert (=> b!4151738 (=> res!1700175 e!2575888)))

(assert (=> b!4151738 (= res!1700175 (or (and ((_ is Cons!45097) rules!3756) (= (h!50517 rules!3756) rBis!149)) (not ((_ is Cons!45097) rules!3756)) (= (h!50517 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!64367 0))(
  ( (Unit!64368) )
))
(declare-fun lt!1480676 () Unit!64367)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2274 (LexerInterface!7017 Rule!14656 List!45221) Unit!64367)

(assert (=> b!4151738 (= lt!1480676 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2274 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4151738 (ruleValid!3234 thiss!25645 rBis!149)))

(declare-fun lt!1480670 () Unit!64367)

(assert (=> b!4151738 (= lt!1480670 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2274 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4151739 () Bool)

(declare-fun res!1700168 () Bool)

(assert (=> b!4151739 (=> (not res!1700168) (not e!2575890))))

(declare-fun input!3238 () List!45220)

(declare-fun isPrefix!4363 (List!45220 List!45220) Bool)

(assert (=> b!4151739 (= res!1700168 (isPrefix!4363 p!2912 input!3238))))

(declare-fun b!4151740 () Bool)

(declare-fun e!2575889 () Bool)

(declare-fun tp!1265447 () Bool)

(assert (=> b!4151740 (= e!2575891 (and e!2575889 tp!1265447))))

(declare-fun b!4151741 () Bool)

(declare-fun tp_is_empty!21589 () Bool)

(declare-fun tp!1265451 () Bool)

(assert (=> b!4151741 (= e!2575885 (and tp_is_empty!21589 tp!1265451))))

(declare-fun e!2575896 () Bool)

(assert (=> b!4151742 (= e!2575896 (and tp!1265456 tp!1265457))))

(declare-fun b!4151743 () Bool)

(assert (=> b!4151743 (= e!2575890 e!2575887)))

(declare-fun res!1700174 () Bool)

(assert (=> b!4151743 (=> (not res!1700174) (not e!2575887))))

(declare-datatypes ((Token!13786 0))(
  ( (Token!13787 (value!232252 TokenValue!7658) (rule!10568 Rule!14656) (size!33431 Int) (originalCharacters!7924 List!45220)) )
))
(declare-datatypes ((tuple2!43458 0))(
  ( (tuple2!43459 (_1!24863 Token!13786) (_2!24863 List!45220)) )
))
(declare-datatypes ((Option!9734 0))(
  ( (None!9733) (Some!9733 (v!40401 tuple2!43458)) )
))
(declare-fun lt!1480675 () Option!9734)

(declare-fun maxPrefix!4207 (LexerInterface!7017 List!45221 List!45220) Option!9734)

(assert (=> b!4151743 (= res!1700174 (= (maxPrefix!4207 thiss!25645 rules!3756 input!3238) lt!1480675))))

(declare-fun lt!1480678 () BalanceConc!26872)

(declare-fun apply!10501 (TokenValueInjection!14744 BalanceConc!26872) TokenValue!7658)

(declare-fun size!33432 (List!45220) Int)

(declare-fun getSuffix!2690 (List!45220 List!45220) List!45220)

(assert (=> b!4151743 (= lt!1480675 (Some!9733 (tuple2!43459 (Token!13787 (apply!10501 (transformation!7428 r!4008) lt!1480678) r!4008 (size!33432 p!2912) p!2912) (getSuffix!2690 input!3238 p!2912))))))

(declare-fun lt!1480677 () Unit!64367)

(declare-fun lemmaSemiInverse!2286 (TokenValueInjection!14744 BalanceConc!26872) Unit!64367)

(assert (=> b!4151743 (= lt!1480677 (lemmaSemiInverse!2286 (transformation!7428 r!4008) lt!1480678))))

(declare-fun seqFromList!5545 (List!45220) BalanceConc!26872)

(assert (=> b!4151743 (= lt!1480678 (seqFromList!5545 p!2912))))

(declare-fun b!4151744 () Bool)

(declare-fun res!1700180 () Bool)

(assert (=> b!4151744 (=> (not res!1700180) (not e!2575890))))

(declare-fun isEmpty!26927 (List!45220) Bool)

(assert (=> b!4151744 (= res!1700180 (not (isEmpty!26927 p!2912)))))

(declare-fun tp!1265452 () Bool)

(declare-fun b!4151745 () Bool)

(declare-fun e!2575895 () Bool)

(declare-fun inv!59707 (String!52040) Bool)

(declare-fun inv!59709 (TokenValueInjection!14744) Bool)

(assert (=> b!4151745 (= e!2575889 (and tp!1265452 (inv!59707 (tag!8288 (h!50517 rules!3756))) (inv!59709 (transformation!7428 (h!50517 rules!3756))) e!2575895))))

(declare-fun tp!1265453 () Bool)

(declare-fun b!4151746 () Bool)

(declare-fun e!2575893 () Bool)

(assert (=> b!4151746 (= e!2575881 (and tp!1265453 (inv!59707 (tag!8288 rBis!149)) (inv!59709 (transformation!7428 rBis!149)) e!2575893))))

(assert (=> b!4151747 (= e!2575893 (and tp!1265448 tp!1265458))))

(assert (=> b!4151748 (= e!2575895 (and tp!1265455 tp!1265454))))

(declare-fun b!4151749 () Bool)

(declare-fun res!1700183 () Bool)

(assert (=> b!4151749 (=> (not res!1700183) (not e!2575890))))

(assert (=> b!4151749 (= res!1700183 (contains!9114 rules!3756 r!4008))))

(declare-fun b!4151750 () Bool)

(declare-fun res!1700184 () Bool)

(declare-fun e!2575892 () Bool)

(assert (=> b!4151750 (=> res!1700184 e!2575892)))

(declare-fun lt!1480671 () Option!9734)

(assert (=> b!4151750 (= res!1700184 (not (= lt!1480671 lt!1480675)))))

(declare-fun b!4151751 () Bool)

(declare-fun res!1700176 () Bool)

(assert (=> b!4151751 (=> res!1700176 e!2575888)))

(assert (=> b!4151751 (= res!1700176 (not (contains!9114 (t!343188 rules!3756) r!4008)))))

(declare-fun b!4151752 () Bool)

(declare-fun res!1700169 () Bool)

(assert (=> b!4151752 (=> (not res!1700169) (not e!2575890))))

(assert (=> b!4151752 (= res!1700169 (contains!9114 rules!3756 rBis!149))))

(declare-fun b!4151753 () Bool)

(assert (=> b!4151753 (= e!2575888 e!2575892)))

(declare-fun res!1700179 () Bool)

(assert (=> b!4151753 (=> res!1700179 e!2575892)))

(assert (=> b!4151753 (= res!1700179 (isEmpty!26926 (t!343188 rules!3756)))))

(assert (=> b!4151753 (not (= (tag!8288 (h!50517 rules!3756)) (tag!8288 r!4008)))))

(declare-fun lt!1480672 () Unit!64367)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!76 (LexerInterface!7017 List!45221 Rule!14656 Rule!14656) Unit!64367)

(assert (=> b!4151753 (= lt!1480672 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!76 thiss!25645 rules!3756 (h!50517 rules!3756) r!4008))))

(declare-fun rulesInvariant!6314 (LexerInterface!7017 List!45221) Bool)

(assert (=> b!4151753 (rulesInvariant!6314 thiss!25645 (t!343188 rules!3756))))

(declare-fun lt!1480674 () Unit!64367)

(declare-fun lemmaInvariantOnRulesThenOnTail!840 (LexerInterface!7017 Rule!14656 List!45221) Unit!64367)

(assert (=> b!4151753 (= lt!1480674 (lemmaInvariantOnRulesThenOnTail!840 thiss!25645 (h!50517 rules!3756) (t!343188 rules!3756)))))

(assert (=> b!4151753 (= lt!1480671 (maxPrefix!4207 thiss!25645 (t!343188 rules!3756) input!3238))))

(declare-fun lt!1480673 () Option!9734)

(declare-fun maxPrefixOneRule!3146 (LexerInterface!7017 Rule!14656 List!45220) Option!9734)

(assert (=> b!4151753 (= lt!1480673 (maxPrefixOneRule!3146 thiss!25645 (h!50517 rules!3756) input!3238))))

(declare-fun b!4151754 () Bool)

(declare-fun res!1700177 () Bool)

(assert (=> b!4151754 (=> (not res!1700177) (not e!2575890))))

(assert (=> b!4151754 (= res!1700177 (rulesInvariant!6314 thiss!25645 rules!3756))))

(declare-fun b!4151755 () Bool)

(declare-fun ListPrimitiveSize!287 (List!45221) Int)

(assert (=> b!4151755 (= e!2575892 (< (ListPrimitiveSize!287 (t!343188 rules!3756)) (ListPrimitiveSize!287 rules!3756)))))

(declare-fun tp!1265449 () Bool)

(declare-fun b!4151756 () Bool)

(assert (=> b!4151756 (= e!2575894 (and tp!1265449 (inv!59707 (tag!8288 r!4008)) (inv!59709 (transformation!7428 r!4008)) e!2575896))))

(declare-fun b!4151757 () Bool)

(declare-fun res!1700172 () Bool)

(assert (=> b!4151757 (=> res!1700172 e!2575892)))

(assert (=> b!4151757 (= res!1700172 (>= (getIndex!774 (t!343188 rules!3756) rBis!149) (getIndex!774 (t!343188 rules!3756) r!4008)))))

(declare-fun b!4151758 () Bool)

(declare-fun tp!1265450 () Bool)

(assert (=> b!4151758 (= e!2575882 (and tp_is_empty!21589 tp!1265450))))

(assert (= (and start!395162 res!1700173) b!4151739))

(assert (= (and b!4151739 res!1700168) b!4151735))

(assert (= (and b!4151735 res!1700171) b!4151754))

(assert (= (and b!4151754 res!1700177) b!4151749))

(assert (= (and b!4151749 res!1700183) b!4151752))

(assert (= (and b!4151752 res!1700169) b!4151744))

(assert (= (and b!4151744 res!1700180) b!4151743))

(assert (= (and b!4151743 res!1700174) b!4151736))

(assert (= (and b!4151736 res!1700170) b!4151737))

(assert (= (and b!4151737 res!1700182) b!4151733))

(assert (= (and b!4151733 res!1700181) b!4151738))

(assert (= (and b!4151738 (not res!1700175)) b!4151751))

(assert (= (and b!4151751 (not res!1700176)) b!4151734))

(assert (= (and b!4151734 (not res!1700178)) b!4151753))

(assert (= (and b!4151753 (not res!1700179)) b!4151750))

(assert (= (and b!4151750 (not res!1700184)) b!4151757))

(assert (= (and b!4151757 (not res!1700172)) b!4151755))

(assert (= b!4151745 b!4151748))

(assert (= b!4151740 b!4151745))

(assert (= (and start!395162 ((_ is Cons!45097) rules!3756)) b!4151740))

(assert (= (and start!395162 ((_ is Cons!45096) p!2912)) b!4151741))

(assert (= b!4151756 b!4151742))

(assert (= start!395162 b!4151756))

(assert (= (and start!395162 ((_ is Cons!45096) input!3238)) b!4151758))

(assert (= b!4151746 b!4151747))

(assert (= start!395162 b!4151746))

(declare-fun m!4747231 () Bool)

(assert (=> b!4151749 m!4747231))

(declare-fun m!4747233 () Bool)

(assert (=> b!4151745 m!4747233))

(declare-fun m!4747235 () Bool)

(assert (=> b!4151745 m!4747235))

(declare-fun m!4747237 () Bool)

(assert (=> b!4151754 m!4747237))

(declare-fun m!4747239 () Bool)

(assert (=> b!4151734 m!4747239))

(declare-fun m!4747241 () Bool)

(assert (=> b!4151746 m!4747241))

(declare-fun m!4747243 () Bool)

(assert (=> b!4151746 m!4747243))

(declare-fun m!4747245 () Bool)

(assert (=> b!4151755 m!4747245))

(declare-fun m!4747247 () Bool)

(assert (=> b!4151755 m!4747247))

(declare-fun m!4747249 () Bool)

(assert (=> b!4151752 m!4747249))

(declare-fun m!4747251 () Bool)

(assert (=> b!4151738 m!4747251))

(declare-fun m!4747253 () Bool)

(assert (=> b!4151738 m!4747253))

(declare-fun m!4747255 () Bool)

(assert (=> b!4151738 m!4747255))

(declare-fun m!4747257 () Bool)

(assert (=> b!4151756 m!4747257))

(declare-fun m!4747259 () Bool)

(assert (=> b!4151756 m!4747259))

(declare-fun m!4747261 () Bool)

(assert (=> b!4151753 m!4747261))

(declare-fun m!4747263 () Bool)

(assert (=> b!4151753 m!4747263))

(declare-fun m!4747265 () Bool)

(assert (=> b!4151753 m!4747265))

(declare-fun m!4747267 () Bool)

(assert (=> b!4151753 m!4747267))

(declare-fun m!4747269 () Bool)

(assert (=> b!4151753 m!4747269))

(declare-fun m!4747271 () Bool)

(assert (=> b!4151753 m!4747271))

(declare-fun m!4747273 () Bool)

(assert (=> b!4151757 m!4747273))

(declare-fun m!4747275 () Bool)

(assert (=> b!4151757 m!4747275))

(declare-fun m!4747277 () Bool)

(assert (=> b!4151739 m!4747277))

(declare-fun m!4747279 () Bool)

(assert (=> b!4151737 m!4747279))

(declare-fun m!4747281 () Bool)

(assert (=> b!4151737 m!4747281))

(declare-fun m!4747283 () Bool)

(assert (=> b!4151735 m!4747283))

(declare-fun m!4747285 () Bool)

(assert (=> b!4151743 m!4747285))

(declare-fun m!4747287 () Bool)

(assert (=> b!4151743 m!4747287))

(declare-fun m!4747289 () Bool)

(assert (=> b!4151743 m!4747289))

(declare-fun m!4747291 () Bool)

(assert (=> b!4151743 m!4747291))

(declare-fun m!4747293 () Bool)

(assert (=> b!4151743 m!4747293))

(declare-fun m!4747295 () Bool)

(assert (=> b!4151743 m!4747295))

(declare-fun m!4747297 () Bool)

(assert (=> b!4151736 m!4747297))

(declare-fun m!4747299 () Bool)

(assert (=> b!4151751 m!4747299))

(declare-fun m!4747301 () Bool)

(assert (=> b!4151733 m!4747301))

(declare-fun m!4747303 () Bool)

(assert (=> b!4151744 m!4747303))

(check-sat (not b!4151735) (not b_next!119375) b_and!322965 (not b!4151741) (not b!4151737) (not b!4151744) (not b!4151743) (not b!4151740) (not b!4151746) (not b!4151754) (not b!4151753) (not b!4151755) (not b!4151736) b_and!322959 (not b!4151752) (not b_next!119377) (not b!4151756) (not b!4151733) (not b!4151745) b_and!322967 (not b_next!119379) (not b_next!119381) b_and!322961 (not b!4151751) (not b!4151734) (not b!4151739) (not b!4151758) b_and!322963 (not b!4151738) tp_is_empty!21589 (not b_next!119373) (not b!4151757) (not b!4151749) (not b_next!119371) b_and!322957)
(check-sat (not b_next!119375) b_and!322965 b_and!322959 (not b_next!119377) b_and!322961 b_and!322963 (not b_next!119373) b_and!322967 (not b_next!119379) (not b_next!119381) (not b_next!119371) b_and!322957)
(get-model)

(declare-fun d!1228101 () Bool)

(declare-fun dynLambda!19459 (Int BalanceConc!26872) TokenValue!7658)

(assert (=> d!1228101 (= (apply!10501 (transformation!7428 r!4008) lt!1480678) (dynLambda!19459 (toValue!10092 (transformation!7428 r!4008)) lt!1480678))))

(declare-fun b_lambda!122111 () Bool)

(assert (=> (not b_lambda!122111) (not d!1228101)))

(declare-fun tb!249187 () Bool)

(declare-fun t!343190 () Bool)

(assert (=> (and b!4151748 (= (toValue!10092 (transformation!7428 (h!50517 rules!3756))) (toValue!10092 (transformation!7428 r!4008))) t!343190) tb!249187))

(declare-fun result!303164 () Bool)

(declare-fun inv!21 (TokenValue!7658) Bool)

(assert (=> tb!249187 (= result!303164 (inv!21 (dynLambda!19459 (toValue!10092 (transformation!7428 r!4008)) lt!1480678)))))

(declare-fun m!4747305 () Bool)

(assert (=> tb!249187 m!4747305))

(assert (=> d!1228101 t!343190))

(declare-fun b_and!322969 () Bool)

(assert (= b_and!322957 (and (=> t!343190 result!303164) b_and!322969)))

(declare-fun t!343192 () Bool)

(declare-fun tb!249189 () Bool)

(assert (=> (and b!4151747 (= (toValue!10092 (transformation!7428 rBis!149)) (toValue!10092 (transformation!7428 r!4008))) t!343192) tb!249189))

(declare-fun result!303168 () Bool)

(assert (= result!303168 result!303164))

(assert (=> d!1228101 t!343192))

(declare-fun b_and!322971 () Bool)

(assert (= b_and!322961 (and (=> t!343192 result!303168) b_and!322971)))

(declare-fun t!343194 () Bool)

(declare-fun tb!249191 () Bool)

(assert (=> (and b!4151742 (= (toValue!10092 (transformation!7428 r!4008)) (toValue!10092 (transformation!7428 r!4008))) t!343194) tb!249191))

(declare-fun result!303170 () Bool)

(assert (= result!303170 result!303164))

(assert (=> d!1228101 t!343194))

(declare-fun b_and!322973 () Bool)

(assert (= b_and!322965 (and (=> t!343194 result!303170) b_and!322973)))

(declare-fun m!4747307 () Bool)

(assert (=> d!1228101 m!4747307))

(assert (=> b!4151743 d!1228101))

(declare-fun b!4151844 () Bool)

(declare-fun e!2575945 () Bool)

(assert (=> b!4151844 (= e!2575945 true)))

(declare-fun d!1228103 () Bool)

(assert (=> d!1228103 e!2575945))

(assert (= d!1228103 b!4151844))

(declare-fun lambda!129036 () Int)

(declare-fun order!23939 () Int)

(declare-fun order!23941 () Int)

(declare-fun dynLambda!19460 (Int Int) Int)

(declare-fun dynLambda!19461 (Int Int) Int)

(assert (=> b!4151844 (< (dynLambda!19460 order!23939 (toValue!10092 (transformation!7428 r!4008))) (dynLambda!19461 order!23941 lambda!129036))))

(declare-fun order!23943 () Int)

(declare-fun dynLambda!19462 (Int Int) Int)

(assert (=> b!4151844 (< (dynLambda!19462 order!23943 (toChars!9951 (transformation!7428 r!4008))) (dynLambda!19461 order!23941 lambda!129036))))

(declare-fun list!16497 (BalanceConc!26872) List!45220)

(declare-fun dynLambda!19463 (Int TokenValue!7658) BalanceConc!26872)

(assert (=> d!1228103 (= (list!16497 (dynLambda!19463 (toChars!9951 (transformation!7428 r!4008)) (dynLambda!19459 (toValue!10092 (transformation!7428 r!4008)) lt!1480678))) (list!16497 lt!1480678))))

(declare-fun lt!1480711 () Unit!64367)

(declare-fun ForallOf!999 (Int BalanceConc!26872) Unit!64367)

(assert (=> d!1228103 (= lt!1480711 (ForallOf!999 lambda!129036 lt!1480678))))

(assert (=> d!1228103 (= (lemmaSemiInverse!2286 (transformation!7428 r!4008) lt!1480678) lt!1480711)))

(declare-fun b_lambda!122115 () Bool)

(assert (=> (not b_lambda!122115) (not d!1228103)))

(declare-fun t!343202 () Bool)

(declare-fun tb!249199 () Bool)

(assert (=> (and b!4151748 (= (toChars!9951 (transformation!7428 (h!50517 rules!3756))) (toChars!9951 (transformation!7428 r!4008))) t!343202) tb!249199))

(declare-fun tp!1265461 () Bool)

(declare-fun b!4151849 () Bool)

(declare-fun e!2575948 () Bool)

(declare-fun inv!59710 (Conc!13639) Bool)

(assert (=> b!4151849 (= e!2575948 (and (inv!59710 (c!711014 (dynLambda!19463 (toChars!9951 (transformation!7428 r!4008)) (dynLambda!19459 (toValue!10092 (transformation!7428 r!4008)) lt!1480678)))) tp!1265461))))

(declare-fun result!303180 () Bool)

(declare-fun inv!59711 (BalanceConc!26872) Bool)

(assert (=> tb!249199 (= result!303180 (and (inv!59711 (dynLambda!19463 (toChars!9951 (transformation!7428 r!4008)) (dynLambda!19459 (toValue!10092 (transformation!7428 r!4008)) lt!1480678))) e!2575948))))

(assert (= tb!249199 b!4151849))

(declare-fun m!4747373 () Bool)

(assert (=> b!4151849 m!4747373))

(declare-fun m!4747375 () Bool)

(assert (=> tb!249199 m!4747375))

(assert (=> d!1228103 t!343202))

(declare-fun b_and!322981 () Bool)

(assert (= b_and!322959 (and (=> t!343202 result!303180) b_and!322981)))

(declare-fun t!343204 () Bool)

(declare-fun tb!249201 () Bool)

(assert (=> (and b!4151747 (= (toChars!9951 (transformation!7428 rBis!149)) (toChars!9951 (transformation!7428 r!4008))) t!343204) tb!249201))

(declare-fun result!303184 () Bool)

(assert (= result!303184 result!303180))

(assert (=> d!1228103 t!343204))

(declare-fun b_and!322983 () Bool)

(assert (= b_and!322963 (and (=> t!343204 result!303184) b_and!322983)))

(declare-fun t!343206 () Bool)

(declare-fun tb!249203 () Bool)

(assert (=> (and b!4151742 (= (toChars!9951 (transformation!7428 r!4008)) (toChars!9951 (transformation!7428 r!4008))) t!343206) tb!249203))

(declare-fun result!303186 () Bool)

(assert (= result!303186 result!303180))

(assert (=> d!1228103 t!343206))

(declare-fun b_and!322985 () Bool)

(assert (= b_and!322967 (and (=> t!343206 result!303186) b_and!322985)))

(declare-fun b_lambda!122117 () Bool)

(assert (=> (not b_lambda!122117) (not d!1228103)))

(assert (=> d!1228103 t!343190))

(declare-fun b_and!322987 () Bool)

(assert (= b_and!322969 (and (=> t!343190 result!303164) b_and!322987)))

(assert (=> d!1228103 t!343192))

(declare-fun b_and!322989 () Bool)

(assert (= b_and!322971 (and (=> t!343192 result!303168) b_and!322989)))

(assert (=> d!1228103 t!343194))

(declare-fun b_and!322991 () Bool)

(assert (= b_and!322973 (and (=> t!343194 result!303170) b_and!322991)))

(assert (=> d!1228103 m!4747307))

(declare-fun m!4747377 () Bool)

(assert (=> d!1228103 m!4747377))

(declare-fun m!4747379 () Bool)

(assert (=> d!1228103 m!4747379))

(declare-fun m!4747381 () Bool)

(assert (=> d!1228103 m!4747381))

(assert (=> d!1228103 m!4747377))

(declare-fun m!4747383 () Bool)

(assert (=> d!1228103 m!4747383))

(assert (=> d!1228103 m!4747307))

(assert (=> b!4151743 d!1228103))

(declare-fun d!1228137 () Bool)

(declare-fun lt!1480715 () List!45220)

(declare-fun ++!11654 (List!45220 List!45220) List!45220)

(assert (=> d!1228137 (= (++!11654 p!2912 lt!1480715) input!3238)))

(declare-fun e!2575953 () List!45220)

(assert (=> d!1228137 (= lt!1480715 e!2575953)))

(declare-fun c!711037 () Bool)

(assert (=> d!1228137 (= c!711037 ((_ is Cons!45096) p!2912))))

(assert (=> d!1228137 (>= (size!33432 input!3238) (size!33432 p!2912))))

(assert (=> d!1228137 (= (getSuffix!2690 input!3238 p!2912) lt!1480715)))

(declare-fun b!4151858 () Bool)

(declare-fun tail!6607 (List!45220) List!45220)

(assert (=> b!4151858 (= e!2575953 (getSuffix!2690 (tail!6607 input!3238) (t!343187 p!2912)))))

(declare-fun b!4151859 () Bool)

(assert (=> b!4151859 (= e!2575953 input!3238)))

(assert (= (and d!1228137 c!711037) b!4151858))

(assert (= (and d!1228137 (not c!711037)) b!4151859))

(declare-fun m!4747385 () Bool)

(assert (=> d!1228137 m!4747385))

(declare-fun m!4747387 () Bool)

(assert (=> d!1228137 m!4747387))

(assert (=> d!1228137 m!4747287))

(declare-fun m!4747389 () Bool)

(assert (=> b!4151858 m!4747389))

(assert (=> b!4151858 m!4747389))

(declare-fun m!4747391 () Bool)

(assert (=> b!4151858 m!4747391))

(assert (=> b!4151743 d!1228137))

(declare-fun b!4151887 () Bool)

(declare-fun res!1700256 () Bool)

(declare-fun e!2575968 () Bool)

(assert (=> b!4151887 (=> (not res!1700256) (not e!2575968))))

(declare-fun lt!1480732 () Option!9734)

(declare-fun get!14727 (Option!9734) tuple2!43458)

(assert (=> b!4151887 (= res!1700256 (= (value!232252 (_1!24863 (get!14727 lt!1480732))) (apply!10501 (transformation!7428 (rule!10568 (_1!24863 (get!14727 lt!1480732)))) (seqFromList!5545 (originalCharacters!7924 (_1!24863 (get!14727 lt!1480732)))))))))

(declare-fun b!4151888 () Bool)

(declare-fun res!1700257 () Bool)

(assert (=> b!4151888 (=> (not res!1700257) (not e!2575968))))

(declare-fun charsOf!5017 (Token!13786) BalanceConc!26872)

(assert (=> b!4151888 (= res!1700257 (= (++!11654 (list!16497 (charsOf!5017 (_1!24863 (get!14727 lt!1480732)))) (_2!24863 (get!14727 lt!1480732))) input!3238))))

(declare-fun d!1228139 () Bool)

(declare-fun e!2575967 () Bool)

(assert (=> d!1228139 e!2575967))

(declare-fun res!1700261 () Bool)

(assert (=> d!1228139 (=> res!1700261 e!2575967)))

(declare-fun isEmpty!26929 (Option!9734) Bool)

(assert (=> d!1228139 (= res!1700261 (isEmpty!26929 lt!1480732))))

(declare-fun e!2575969 () Option!9734)

(assert (=> d!1228139 (= lt!1480732 e!2575969)))

(declare-fun c!711040 () Bool)

(assert (=> d!1228139 (= c!711040 (and ((_ is Cons!45097) rules!3756) ((_ is Nil!45097) (t!343188 rules!3756))))))

(declare-fun lt!1480729 () Unit!64367)

(declare-fun lt!1480731 () Unit!64367)

(assert (=> d!1228139 (= lt!1480729 lt!1480731)))

(assert (=> d!1228139 (isPrefix!4363 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2816 (List!45220 List!45220) Unit!64367)

(assert (=> d!1228139 (= lt!1480731 (lemmaIsPrefixRefl!2816 input!3238 input!3238))))

(declare-fun rulesValidInductive!2768 (LexerInterface!7017 List!45221) Bool)

(assert (=> d!1228139 (rulesValidInductive!2768 thiss!25645 rules!3756)))

(assert (=> d!1228139 (= (maxPrefix!4207 thiss!25645 rules!3756 input!3238) lt!1480732)))

(declare-fun b!4151889 () Bool)

(declare-fun call!290758 () Option!9734)

(assert (=> b!4151889 (= e!2575969 call!290758)))

(declare-fun b!4151890 () Bool)

(assert (=> b!4151890 (= e!2575968 (contains!9114 rules!3756 (rule!10568 (_1!24863 (get!14727 lt!1480732)))))))

(declare-fun b!4151891 () Bool)

(declare-fun res!1700258 () Bool)

(assert (=> b!4151891 (=> (not res!1700258) (not e!2575968))))

(assert (=> b!4151891 (= res!1700258 (< (size!33432 (_2!24863 (get!14727 lt!1480732))) (size!33432 input!3238)))))

(declare-fun b!4151892 () Bool)

(declare-fun res!1700260 () Bool)

(assert (=> b!4151892 (=> (not res!1700260) (not e!2575968))))

(assert (=> b!4151892 (= res!1700260 (matchR!6162 (regex!7428 (rule!10568 (_1!24863 (get!14727 lt!1480732)))) (list!16497 (charsOf!5017 (_1!24863 (get!14727 lt!1480732))))))))

(declare-fun b!4151893 () Bool)

(declare-fun res!1700255 () Bool)

(assert (=> b!4151893 (=> (not res!1700255) (not e!2575968))))

(assert (=> b!4151893 (= res!1700255 (= (list!16497 (charsOf!5017 (_1!24863 (get!14727 lt!1480732)))) (originalCharacters!7924 (_1!24863 (get!14727 lt!1480732)))))))

(declare-fun b!4151894 () Bool)

(declare-fun lt!1480733 () Option!9734)

(declare-fun lt!1480730 () Option!9734)

(assert (=> b!4151894 (= e!2575969 (ite (and ((_ is None!9733) lt!1480733) ((_ is None!9733) lt!1480730)) None!9733 (ite ((_ is None!9733) lt!1480730) lt!1480733 (ite ((_ is None!9733) lt!1480733) lt!1480730 (ite (>= (size!33431 (_1!24863 (v!40401 lt!1480733))) (size!33431 (_1!24863 (v!40401 lt!1480730)))) lt!1480733 lt!1480730)))))))

(assert (=> b!4151894 (= lt!1480733 call!290758)))

(assert (=> b!4151894 (= lt!1480730 (maxPrefix!4207 thiss!25645 (t!343188 rules!3756) input!3238))))

(declare-fun bm!290753 () Bool)

(assert (=> bm!290753 (= call!290758 (maxPrefixOneRule!3146 thiss!25645 (h!50517 rules!3756) input!3238))))

(declare-fun b!4151895 () Bool)

(assert (=> b!4151895 (= e!2575967 e!2575968)))

(declare-fun res!1700259 () Bool)

(assert (=> b!4151895 (=> (not res!1700259) (not e!2575968))))

(declare-fun isDefined!7308 (Option!9734) Bool)

(assert (=> b!4151895 (= res!1700259 (isDefined!7308 lt!1480732))))

(assert (= (and d!1228139 c!711040) b!4151889))

(assert (= (and d!1228139 (not c!711040)) b!4151894))

(assert (= (or b!4151889 b!4151894) bm!290753))

(assert (= (and d!1228139 (not res!1700261)) b!4151895))

(assert (= (and b!4151895 res!1700259) b!4151893))

(assert (= (and b!4151893 res!1700255) b!4151891))

(assert (= (and b!4151891 res!1700258) b!4151888))

(assert (= (and b!4151888 res!1700257) b!4151887))

(assert (= (and b!4151887 res!1700256) b!4151892))

(assert (= (and b!4151892 res!1700260) b!4151890))

(assert (=> bm!290753 m!4747263))

(declare-fun m!4747413 () Bool)

(assert (=> b!4151891 m!4747413))

(declare-fun m!4747415 () Bool)

(assert (=> b!4151891 m!4747415))

(assert (=> b!4151891 m!4747387))

(assert (=> b!4151890 m!4747413))

(declare-fun m!4747417 () Bool)

(assert (=> b!4151890 m!4747417))

(assert (=> b!4151888 m!4747413))

(declare-fun m!4747419 () Bool)

(assert (=> b!4151888 m!4747419))

(assert (=> b!4151888 m!4747419))

(declare-fun m!4747421 () Bool)

(assert (=> b!4151888 m!4747421))

(assert (=> b!4151888 m!4747421))

(declare-fun m!4747423 () Bool)

(assert (=> b!4151888 m!4747423))

(declare-fun m!4747425 () Bool)

(assert (=> d!1228139 m!4747425))

(declare-fun m!4747427 () Bool)

(assert (=> d!1228139 m!4747427))

(declare-fun m!4747429 () Bool)

(assert (=> d!1228139 m!4747429))

(declare-fun m!4747431 () Bool)

(assert (=> d!1228139 m!4747431))

(assert (=> b!4151894 m!4747267))

(assert (=> b!4151887 m!4747413))

(declare-fun m!4747433 () Bool)

(assert (=> b!4151887 m!4747433))

(assert (=> b!4151887 m!4747433))

(declare-fun m!4747435 () Bool)

(assert (=> b!4151887 m!4747435))

(assert (=> b!4151892 m!4747413))

(assert (=> b!4151892 m!4747419))

(assert (=> b!4151892 m!4747419))

(assert (=> b!4151892 m!4747421))

(assert (=> b!4151892 m!4747421))

(declare-fun m!4747437 () Bool)

(assert (=> b!4151892 m!4747437))

(assert (=> b!4151893 m!4747413))

(assert (=> b!4151893 m!4747419))

(assert (=> b!4151893 m!4747419))

(assert (=> b!4151893 m!4747421))

(declare-fun m!4747439 () Bool)

(assert (=> b!4151895 m!4747439))

(assert (=> b!4151743 d!1228139))

(declare-fun d!1228147 () Bool)

(declare-fun fromListB!2549 (List!45220) BalanceConc!26872)

(assert (=> d!1228147 (= (seqFromList!5545 p!2912) (fromListB!2549 p!2912))))

(declare-fun bs!595458 () Bool)

(assert (= bs!595458 d!1228147))

(declare-fun m!4747441 () Bool)

(assert (=> bs!595458 m!4747441))

(assert (=> b!4151743 d!1228147))

(declare-fun d!1228149 () Bool)

(declare-fun lt!1480736 () Int)

(assert (=> d!1228149 (>= lt!1480736 0)))

(declare-fun e!2575972 () Int)

(assert (=> d!1228149 (= lt!1480736 e!2575972)))

(declare-fun c!711043 () Bool)

(assert (=> d!1228149 (= c!711043 ((_ is Nil!45096) p!2912))))

(assert (=> d!1228149 (= (size!33432 p!2912) lt!1480736)))

(declare-fun b!4151900 () Bool)

(assert (=> b!4151900 (= e!2575972 0)))

(declare-fun b!4151901 () Bool)

(assert (=> b!4151901 (= e!2575972 (+ 1 (size!33432 (t!343187 p!2912))))))

(assert (= (and d!1228149 c!711043) b!4151900))

(assert (= (and d!1228149 (not c!711043)) b!4151901))

(declare-fun m!4747443 () Bool)

(assert (=> b!4151901 m!4747443))

(assert (=> b!4151743 d!1228149))

(declare-fun d!1228151 () Bool)

(declare-fun res!1700264 () Bool)

(declare-fun e!2575975 () Bool)

(assert (=> d!1228151 (=> (not res!1700264) (not e!2575975))))

(declare-fun rulesValid!2930 (LexerInterface!7017 List!45221) Bool)

(assert (=> d!1228151 (= res!1700264 (rulesValid!2930 thiss!25645 rules!3756))))

(assert (=> d!1228151 (= (rulesInvariant!6314 thiss!25645 rules!3756) e!2575975)))

(declare-fun b!4151904 () Bool)

(declare-datatypes ((List!45223 0))(
  ( (Nil!45099) (Cons!45099 (h!50519 String!52040) (t!343222 List!45223)) )
))
(declare-fun noDuplicateTag!3013 (LexerInterface!7017 List!45221 List!45223) Bool)

(assert (=> b!4151904 (= e!2575975 (noDuplicateTag!3013 thiss!25645 rules!3756 Nil!45099))))

(assert (= (and d!1228151 res!1700264) b!4151904))

(declare-fun m!4747445 () Bool)

(assert (=> d!1228151 m!4747445))

(declare-fun m!4747447 () Bool)

(assert (=> b!4151904 m!4747447))

(assert (=> b!4151754 d!1228151))

(declare-fun d!1228153 () Bool)

(declare-fun res!1700265 () Bool)

(declare-fun e!2575976 () Bool)

(assert (=> d!1228153 (=> (not res!1700265) (not e!2575976))))

(assert (=> d!1228153 (= res!1700265 (rulesValid!2930 thiss!25645 (t!343188 rules!3756)))))

(assert (=> d!1228153 (= (rulesInvariant!6314 thiss!25645 (t!343188 rules!3756)) e!2575976)))

(declare-fun b!4151905 () Bool)

(assert (=> b!4151905 (= e!2575976 (noDuplicateTag!3013 thiss!25645 (t!343188 rules!3756) Nil!45099))))

(assert (= (and d!1228153 res!1700265) b!4151905))

(declare-fun m!4747449 () Bool)

(assert (=> d!1228153 m!4747449))

(declare-fun m!4747451 () Bool)

(assert (=> b!4151905 m!4747451))

(assert (=> b!4151753 d!1228153))

(declare-fun d!1228155 () Bool)

(assert (=> d!1228155 (not (= (tag!8288 (h!50517 rules!3756)) (tag!8288 r!4008)))))

(declare-fun lt!1480739 () Unit!64367)

(declare-fun choose!25427 (LexerInterface!7017 List!45221 Rule!14656 Rule!14656) Unit!64367)

(assert (=> d!1228155 (= lt!1480739 (choose!25427 thiss!25645 rules!3756 (h!50517 rules!3756) r!4008))))

(assert (=> d!1228155 (contains!9114 rules!3756 (h!50517 rules!3756))))

(assert (=> d!1228155 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!76 thiss!25645 rules!3756 (h!50517 rules!3756) r!4008) lt!1480739)))

(declare-fun bs!595459 () Bool)

(assert (= bs!595459 d!1228155))

(declare-fun m!4747453 () Bool)

(assert (=> bs!595459 m!4747453))

(declare-fun m!4747455 () Bool)

(assert (=> bs!595459 m!4747455))

(assert (=> b!4151753 d!1228155))

(declare-fun b!4152062 () Bool)

(declare-fun e!2576056 () Bool)

(declare-fun lt!1480794 () Option!9734)

(assert (=> b!4152062 (= e!2576056 (= (size!33431 (_1!24863 (get!14727 lt!1480794))) (size!33432 (originalCharacters!7924 (_1!24863 (get!14727 lt!1480794))))))))

(declare-fun b!4152063 () Bool)

(declare-fun res!1700354 () Bool)

(assert (=> b!4152063 (=> (not res!1700354) (not e!2576056))))

(assert (=> b!4152063 (= res!1700354 (= (value!232252 (_1!24863 (get!14727 lt!1480794))) (apply!10501 (transformation!7428 (rule!10568 (_1!24863 (get!14727 lt!1480794)))) (seqFromList!5545 (originalCharacters!7924 (_1!24863 (get!14727 lt!1480794)))))))))

(declare-fun b!4152064 () Bool)

(declare-fun e!2576053 () Option!9734)

(assert (=> b!4152064 (= e!2576053 None!9733)))

(declare-fun b!4152065 () Bool)

(declare-datatypes ((tuple2!43462 0))(
  ( (tuple2!43463 (_1!24865 List!45220) (_2!24865 List!45220)) )
))
(declare-fun lt!1480792 () tuple2!43462)

(declare-fun size!33434 (BalanceConc!26872) Int)

(assert (=> b!4152065 (= e!2576053 (Some!9733 (tuple2!43459 (Token!13787 (apply!10501 (transformation!7428 (h!50517 rules!3756)) (seqFromList!5545 (_1!24865 lt!1480792))) (h!50517 rules!3756) (size!33434 (seqFromList!5545 (_1!24865 lt!1480792))) (_1!24865 lt!1480792)) (_2!24865 lt!1480792))))))

(declare-fun lt!1480796 () Unit!64367)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1530 (Regex!12333 List!45220) Unit!64367)

(assert (=> b!4152065 (= lt!1480796 (longestMatchIsAcceptedByMatchOrIsEmpty!1530 (regex!7428 (h!50517 rules!3756)) input!3238))))

(declare-fun res!1700350 () Bool)

(declare-fun findLongestMatchInner!1557 (Regex!12333 List!45220 Int List!45220 List!45220 Int) tuple2!43462)

(assert (=> b!4152065 (= res!1700350 (isEmpty!26927 (_1!24865 (findLongestMatchInner!1557 (regex!7428 (h!50517 rules!3756)) Nil!45096 (size!33432 Nil!45096) input!3238 input!3238 (size!33432 input!3238)))))))

(declare-fun e!2576055 () Bool)

(assert (=> b!4152065 (=> res!1700350 e!2576055)))

(assert (=> b!4152065 e!2576055))

(declare-fun lt!1480795 () Unit!64367)

(assert (=> b!4152065 (= lt!1480795 lt!1480796)))

(declare-fun lt!1480793 () Unit!64367)

(assert (=> b!4152065 (= lt!1480793 (lemmaSemiInverse!2286 (transformation!7428 (h!50517 rules!3756)) (seqFromList!5545 (_1!24865 lt!1480792))))))

(declare-fun b!4152066 () Bool)

(assert (=> b!4152066 (= e!2576055 (matchR!6162 (regex!7428 (h!50517 rules!3756)) (_1!24865 (findLongestMatchInner!1557 (regex!7428 (h!50517 rules!3756)) Nil!45096 (size!33432 Nil!45096) input!3238 input!3238 (size!33432 input!3238)))))))

(declare-fun b!4152067 () Bool)

(declare-fun e!2576052 () Bool)

(assert (=> b!4152067 (= e!2576052 e!2576056)))

(declare-fun res!1700351 () Bool)

(assert (=> b!4152067 (=> (not res!1700351) (not e!2576056))))

(assert (=> b!4152067 (= res!1700351 (matchR!6162 (regex!7428 (h!50517 rules!3756)) (list!16497 (charsOf!5017 (_1!24863 (get!14727 lt!1480794))))))))

(declare-fun d!1228157 () Bool)

(assert (=> d!1228157 e!2576052))

(declare-fun res!1700352 () Bool)

(assert (=> d!1228157 (=> res!1700352 e!2576052)))

(assert (=> d!1228157 (= res!1700352 (isEmpty!26929 lt!1480794))))

(assert (=> d!1228157 (= lt!1480794 e!2576053)))

(declare-fun c!711067 () Bool)

(assert (=> d!1228157 (= c!711067 (isEmpty!26927 (_1!24865 lt!1480792)))))

(declare-fun findLongestMatch!1470 (Regex!12333 List!45220) tuple2!43462)

(assert (=> d!1228157 (= lt!1480792 (findLongestMatch!1470 (regex!7428 (h!50517 rules!3756)) input!3238))))

(assert (=> d!1228157 (ruleValid!3234 thiss!25645 (h!50517 rules!3756))))

(assert (=> d!1228157 (= (maxPrefixOneRule!3146 thiss!25645 (h!50517 rules!3756) input!3238) lt!1480794)))

(declare-fun b!4152068 () Bool)

(declare-fun res!1700348 () Bool)

(assert (=> b!4152068 (=> (not res!1700348) (not e!2576056))))

(assert (=> b!4152068 (= res!1700348 (< (size!33432 (_2!24863 (get!14727 lt!1480794))) (size!33432 input!3238)))))

(declare-fun b!4152069 () Bool)

(declare-fun res!1700353 () Bool)

(assert (=> b!4152069 (=> (not res!1700353) (not e!2576056))))

(assert (=> b!4152069 (= res!1700353 (= (++!11654 (list!16497 (charsOf!5017 (_1!24863 (get!14727 lt!1480794)))) (_2!24863 (get!14727 lt!1480794))) input!3238))))

(declare-fun b!4152070 () Bool)

(declare-fun res!1700349 () Bool)

(assert (=> b!4152070 (=> (not res!1700349) (not e!2576056))))

(assert (=> b!4152070 (= res!1700349 (= (rule!10568 (_1!24863 (get!14727 lt!1480794))) (h!50517 rules!3756)))))

(assert (= (and d!1228157 c!711067) b!4152064))

(assert (= (and d!1228157 (not c!711067)) b!4152065))

(assert (= (and b!4152065 (not res!1700350)) b!4152066))

(assert (= (and d!1228157 (not res!1700352)) b!4152067))

(assert (= (and b!4152067 res!1700351) b!4152069))

(assert (= (and b!4152069 res!1700353) b!4152068))

(assert (= (and b!4152068 res!1700348) b!4152070))

(assert (= (and b!4152070 res!1700349) b!4152063))

(assert (= (and b!4152063 res!1700354) b!4152062))

(declare-fun m!4747577 () Bool)

(assert (=> b!4152067 m!4747577))

(declare-fun m!4747579 () Bool)

(assert (=> b!4152067 m!4747579))

(assert (=> b!4152067 m!4747579))

(declare-fun m!4747581 () Bool)

(assert (=> b!4152067 m!4747581))

(assert (=> b!4152067 m!4747581))

(declare-fun m!4747583 () Bool)

(assert (=> b!4152067 m!4747583))

(declare-fun m!4747585 () Bool)

(assert (=> d!1228157 m!4747585))

(declare-fun m!4747587 () Bool)

(assert (=> d!1228157 m!4747587))

(declare-fun m!4747589 () Bool)

(assert (=> d!1228157 m!4747589))

(declare-fun m!4747591 () Bool)

(assert (=> d!1228157 m!4747591))

(declare-fun m!4747593 () Bool)

(assert (=> b!4152065 m!4747593))

(assert (=> b!4152065 m!4747593))

(declare-fun m!4747595 () Bool)

(assert (=> b!4152065 m!4747595))

(assert (=> b!4152065 m!4747387))

(declare-fun m!4747597 () Bool)

(assert (=> b!4152065 m!4747597))

(assert (=> b!4152065 m!4747593))

(declare-fun m!4747599 () Bool)

(assert (=> b!4152065 m!4747599))

(assert (=> b!4152065 m!4747597))

(assert (=> b!4152065 m!4747387))

(declare-fun m!4747601 () Bool)

(assert (=> b!4152065 m!4747601))

(declare-fun m!4747603 () Bool)

(assert (=> b!4152065 m!4747603))

(declare-fun m!4747605 () Bool)

(assert (=> b!4152065 m!4747605))

(assert (=> b!4152065 m!4747593))

(declare-fun m!4747611 () Bool)

(assert (=> b!4152065 m!4747611))

(assert (=> b!4152069 m!4747577))

(assert (=> b!4152069 m!4747579))

(assert (=> b!4152069 m!4747579))

(assert (=> b!4152069 m!4747581))

(assert (=> b!4152069 m!4747581))

(declare-fun m!4747613 () Bool)

(assert (=> b!4152069 m!4747613))

(assert (=> b!4152062 m!4747577))

(declare-fun m!4747615 () Bool)

(assert (=> b!4152062 m!4747615))

(assert (=> b!4152070 m!4747577))

(assert (=> b!4152066 m!4747597))

(assert (=> b!4152066 m!4747387))

(assert (=> b!4152066 m!4747597))

(assert (=> b!4152066 m!4747387))

(assert (=> b!4152066 m!4747601))

(declare-fun m!4747617 () Bool)

(assert (=> b!4152066 m!4747617))

(assert (=> b!4152063 m!4747577))

(declare-fun m!4747619 () Bool)

(assert (=> b!4152063 m!4747619))

(assert (=> b!4152063 m!4747619))

(declare-fun m!4747621 () Bool)

(assert (=> b!4152063 m!4747621))

(assert (=> b!4152068 m!4747577))

(declare-fun m!4747623 () Bool)

(assert (=> b!4152068 m!4747623))

(assert (=> b!4152068 m!4747387))

(assert (=> b!4151753 d!1228157))

(declare-fun d!1228195 () Bool)

(assert (=> d!1228195 (rulesInvariant!6314 thiss!25645 (t!343188 rules!3756))))

(declare-fun lt!1480799 () Unit!64367)

(declare-fun choose!25430 (LexerInterface!7017 Rule!14656 List!45221) Unit!64367)

(assert (=> d!1228195 (= lt!1480799 (choose!25430 thiss!25645 (h!50517 rules!3756) (t!343188 rules!3756)))))

(assert (=> d!1228195 (rulesInvariant!6314 thiss!25645 (Cons!45097 (h!50517 rules!3756) (t!343188 rules!3756)))))

(assert (=> d!1228195 (= (lemmaInvariantOnRulesThenOnTail!840 thiss!25645 (h!50517 rules!3756) (t!343188 rules!3756)) lt!1480799)))

(declare-fun bs!595463 () Bool)

(assert (= bs!595463 d!1228195))

(assert (=> bs!595463 m!4747271))

(declare-fun m!4747625 () Bool)

(assert (=> bs!595463 m!4747625))

(declare-fun m!4747627 () Bool)

(assert (=> bs!595463 m!4747627))

(assert (=> b!4151753 d!1228195))

(declare-fun b!4152082 () Bool)

(declare-fun res!1700356 () Bool)

(declare-fun e!2576070 () Bool)

(assert (=> b!4152082 (=> (not res!1700356) (not e!2576070))))

(declare-fun lt!1480803 () Option!9734)

(assert (=> b!4152082 (= res!1700356 (= (value!232252 (_1!24863 (get!14727 lt!1480803))) (apply!10501 (transformation!7428 (rule!10568 (_1!24863 (get!14727 lt!1480803)))) (seqFromList!5545 (originalCharacters!7924 (_1!24863 (get!14727 lt!1480803)))))))))

(declare-fun b!4152083 () Bool)

(declare-fun res!1700357 () Bool)

(assert (=> b!4152083 (=> (not res!1700357) (not e!2576070))))

(assert (=> b!4152083 (= res!1700357 (= (++!11654 (list!16497 (charsOf!5017 (_1!24863 (get!14727 lt!1480803)))) (_2!24863 (get!14727 lt!1480803))) input!3238))))

(declare-fun d!1228197 () Bool)

(declare-fun e!2576069 () Bool)

(assert (=> d!1228197 e!2576069))

(declare-fun res!1700361 () Bool)

(assert (=> d!1228197 (=> res!1700361 e!2576069)))

(assert (=> d!1228197 (= res!1700361 (isEmpty!26929 lt!1480803))))

(declare-fun e!2576071 () Option!9734)

(assert (=> d!1228197 (= lt!1480803 e!2576071)))

(declare-fun c!711068 () Bool)

(assert (=> d!1228197 (= c!711068 (and ((_ is Cons!45097) (t!343188 rules!3756)) ((_ is Nil!45097) (t!343188 (t!343188 rules!3756)))))))

(declare-fun lt!1480800 () Unit!64367)

(declare-fun lt!1480802 () Unit!64367)

(assert (=> d!1228197 (= lt!1480800 lt!1480802)))

(assert (=> d!1228197 (isPrefix!4363 input!3238 input!3238)))

(assert (=> d!1228197 (= lt!1480802 (lemmaIsPrefixRefl!2816 input!3238 input!3238))))

(assert (=> d!1228197 (rulesValidInductive!2768 thiss!25645 (t!343188 rules!3756))))

(assert (=> d!1228197 (= (maxPrefix!4207 thiss!25645 (t!343188 rules!3756) input!3238) lt!1480803)))

(declare-fun b!4152084 () Bool)

(declare-fun call!290763 () Option!9734)

(assert (=> b!4152084 (= e!2576071 call!290763)))

(declare-fun b!4152085 () Bool)

(assert (=> b!4152085 (= e!2576070 (contains!9114 (t!343188 rules!3756) (rule!10568 (_1!24863 (get!14727 lt!1480803)))))))

(declare-fun b!4152086 () Bool)

(declare-fun res!1700358 () Bool)

(assert (=> b!4152086 (=> (not res!1700358) (not e!2576070))))

(assert (=> b!4152086 (= res!1700358 (< (size!33432 (_2!24863 (get!14727 lt!1480803))) (size!33432 input!3238)))))

(declare-fun b!4152087 () Bool)

(declare-fun res!1700360 () Bool)

(assert (=> b!4152087 (=> (not res!1700360) (not e!2576070))))

(assert (=> b!4152087 (= res!1700360 (matchR!6162 (regex!7428 (rule!10568 (_1!24863 (get!14727 lt!1480803)))) (list!16497 (charsOf!5017 (_1!24863 (get!14727 lt!1480803))))))))

(declare-fun b!4152088 () Bool)

(declare-fun res!1700355 () Bool)

(assert (=> b!4152088 (=> (not res!1700355) (not e!2576070))))

(assert (=> b!4152088 (= res!1700355 (= (list!16497 (charsOf!5017 (_1!24863 (get!14727 lt!1480803)))) (originalCharacters!7924 (_1!24863 (get!14727 lt!1480803)))))))

(declare-fun b!4152089 () Bool)

(declare-fun lt!1480804 () Option!9734)

(declare-fun lt!1480801 () Option!9734)

(assert (=> b!4152089 (= e!2576071 (ite (and ((_ is None!9733) lt!1480804) ((_ is None!9733) lt!1480801)) None!9733 (ite ((_ is None!9733) lt!1480801) lt!1480804 (ite ((_ is None!9733) lt!1480804) lt!1480801 (ite (>= (size!33431 (_1!24863 (v!40401 lt!1480804))) (size!33431 (_1!24863 (v!40401 lt!1480801)))) lt!1480804 lt!1480801)))))))

(assert (=> b!4152089 (= lt!1480804 call!290763)))

(assert (=> b!4152089 (= lt!1480801 (maxPrefix!4207 thiss!25645 (t!343188 (t!343188 rules!3756)) input!3238))))

(declare-fun bm!290758 () Bool)

(assert (=> bm!290758 (= call!290763 (maxPrefixOneRule!3146 thiss!25645 (h!50517 (t!343188 rules!3756)) input!3238))))

(declare-fun b!4152090 () Bool)

(assert (=> b!4152090 (= e!2576069 e!2576070)))

(declare-fun res!1700359 () Bool)

(assert (=> b!4152090 (=> (not res!1700359) (not e!2576070))))

(assert (=> b!4152090 (= res!1700359 (isDefined!7308 lt!1480803))))

(assert (= (and d!1228197 c!711068) b!4152084))

(assert (= (and d!1228197 (not c!711068)) b!4152089))

(assert (= (or b!4152084 b!4152089) bm!290758))

(assert (= (and d!1228197 (not res!1700361)) b!4152090))

(assert (= (and b!4152090 res!1700359) b!4152088))

(assert (= (and b!4152088 res!1700355) b!4152086))

(assert (= (and b!4152086 res!1700358) b!4152083))

(assert (= (and b!4152083 res!1700357) b!4152082))

(assert (= (and b!4152082 res!1700356) b!4152087))

(assert (= (and b!4152087 res!1700360) b!4152085))

(declare-fun m!4747629 () Bool)

(assert (=> bm!290758 m!4747629))

(declare-fun m!4747631 () Bool)

(assert (=> b!4152086 m!4747631))

(declare-fun m!4747633 () Bool)

(assert (=> b!4152086 m!4747633))

(assert (=> b!4152086 m!4747387))

(assert (=> b!4152085 m!4747631))

(declare-fun m!4747635 () Bool)

(assert (=> b!4152085 m!4747635))

(assert (=> b!4152083 m!4747631))

(declare-fun m!4747637 () Bool)

(assert (=> b!4152083 m!4747637))

(assert (=> b!4152083 m!4747637))

(declare-fun m!4747639 () Bool)

(assert (=> b!4152083 m!4747639))

(assert (=> b!4152083 m!4747639))

(declare-fun m!4747641 () Bool)

(assert (=> b!4152083 m!4747641))

(declare-fun m!4747643 () Bool)

(assert (=> d!1228197 m!4747643))

(assert (=> d!1228197 m!4747427))

(assert (=> d!1228197 m!4747429))

(declare-fun m!4747645 () Bool)

(assert (=> d!1228197 m!4747645))

(declare-fun m!4747647 () Bool)

(assert (=> b!4152089 m!4747647))

(assert (=> b!4152082 m!4747631))

(declare-fun m!4747649 () Bool)

(assert (=> b!4152082 m!4747649))

(assert (=> b!4152082 m!4747649))

(declare-fun m!4747651 () Bool)

(assert (=> b!4152082 m!4747651))

(assert (=> b!4152087 m!4747631))

(assert (=> b!4152087 m!4747637))

(assert (=> b!4152087 m!4747637))

(assert (=> b!4152087 m!4747639))

(assert (=> b!4152087 m!4747639))

(declare-fun m!4747653 () Bool)

(assert (=> b!4152087 m!4747653))

(assert (=> b!4152088 m!4747631))

(assert (=> b!4152088 m!4747637))

(assert (=> b!4152088 m!4747637))

(assert (=> b!4152088 m!4747639))

(declare-fun m!4747655 () Bool)

(assert (=> b!4152090 m!4747655))

(assert (=> b!4151753 d!1228197))

(declare-fun d!1228199 () Bool)

(assert (=> d!1228199 (= (isEmpty!26926 (t!343188 rules!3756)) ((_ is Nil!45097) (t!343188 rules!3756)))))

(assert (=> b!4151753 d!1228199))

(declare-fun d!1228201 () Bool)

(declare-fun lt!1480807 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6979 (List!45221) (InoxSet Rule!14656))

(assert (=> d!1228201 (= lt!1480807 (select (content!6979 rules!3756) rBis!149))))

(declare-fun e!2576077 () Bool)

(assert (=> d!1228201 (= lt!1480807 e!2576077)))

(declare-fun res!1700367 () Bool)

(assert (=> d!1228201 (=> (not res!1700367) (not e!2576077))))

(assert (=> d!1228201 (= res!1700367 ((_ is Cons!45097) rules!3756))))

(assert (=> d!1228201 (= (contains!9114 rules!3756 rBis!149) lt!1480807)))

(declare-fun b!4152095 () Bool)

(declare-fun e!2576076 () Bool)

(assert (=> b!4152095 (= e!2576077 e!2576076)))

(declare-fun res!1700366 () Bool)

(assert (=> b!4152095 (=> res!1700366 e!2576076)))

(assert (=> b!4152095 (= res!1700366 (= (h!50517 rules!3756) rBis!149))))

(declare-fun b!4152096 () Bool)

(assert (=> b!4152096 (= e!2576076 (contains!9114 (t!343188 rules!3756) rBis!149))))

(assert (= (and d!1228201 res!1700367) b!4152095))

(assert (= (and b!4152095 (not res!1700366)) b!4152096))

(declare-fun m!4747657 () Bool)

(assert (=> d!1228201 m!4747657))

(declare-fun m!4747659 () Bool)

(assert (=> d!1228201 m!4747659))

(assert (=> b!4152096 m!4747239))

(assert (=> b!4151752 d!1228201))

(declare-fun d!1228203 () Bool)

(declare-fun lt!1480808 () Bool)

(assert (=> d!1228203 (= lt!1480808 (select (content!6979 (t!343188 rules!3756)) r!4008))))

(declare-fun e!2576079 () Bool)

(assert (=> d!1228203 (= lt!1480808 e!2576079)))

(declare-fun res!1700369 () Bool)

(assert (=> d!1228203 (=> (not res!1700369) (not e!2576079))))

(assert (=> d!1228203 (= res!1700369 ((_ is Cons!45097) (t!343188 rules!3756)))))

(assert (=> d!1228203 (= (contains!9114 (t!343188 rules!3756) r!4008) lt!1480808)))

(declare-fun b!4152097 () Bool)

(declare-fun e!2576078 () Bool)

(assert (=> b!4152097 (= e!2576079 e!2576078)))

(declare-fun res!1700368 () Bool)

(assert (=> b!4152097 (=> res!1700368 e!2576078)))

(assert (=> b!4152097 (= res!1700368 (= (h!50517 (t!343188 rules!3756)) r!4008))))

(declare-fun b!4152098 () Bool)

(assert (=> b!4152098 (= e!2576078 (contains!9114 (t!343188 (t!343188 rules!3756)) r!4008))))

(assert (= (and d!1228203 res!1700369) b!4152097))

(assert (= (and b!4152097 (not res!1700368)) b!4152098))

(declare-fun m!4747661 () Bool)

(assert (=> d!1228203 m!4747661))

(declare-fun m!4747663 () Bool)

(assert (=> d!1228203 m!4747663))

(declare-fun m!4747665 () Bool)

(assert (=> b!4152098 m!4747665))

(assert (=> b!4151751 d!1228203))

(declare-fun b!4152110 () Bool)

(declare-fun e!2576086 () Bool)

(assert (=> b!4152110 (= e!2576086 (>= (size!33432 input!3238) (size!33432 p!2912)))))

(declare-fun b!4152108 () Bool)

(declare-fun res!1700380 () Bool)

(declare-fun e!2576088 () Bool)

(assert (=> b!4152108 (=> (not res!1700380) (not e!2576088))))

(declare-fun head!8766 (List!45220) C!24852)

(assert (=> b!4152108 (= res!1700380 (= (head!8766 p!2912) (head!8766 input!3238)))))

(declare-fun d!1228205 () Bool)

(assert (=> d!1228205 e!2576086))

(declare-fun res!1700381 () Bool)

(assert (=> d!1228205 (=> res!1700381 e!2576086)))

(declare-fun lt!1480811 () Bool)

(assert (=> d!1228205 (= res!1700381 (not lt!1480811))))

(declare-fun e!2576087 () Bool)

(assert (=> d!1228205 (= lt!1480811 e!2576087)))

(declare-fun res!1700378 () Bool)

(assert (=> d!1228205 (=> res!1700378 e!2576087)))

(assert (=> d!1228205 (= res!1700378 ((_ is Nil!45096) p!2912))))

(assert (=> d!1228205 (= (isPrefix!4363 p!2912 input!3238) lt!1480811)))

(declare-fun b!4152107 () Bool)

(assert (=> b!4152107 (= e!2576087 e!2576088)))

(declare-fun res!1700379 () Bool)

(assert (=> b!4152107 (=> (not res!1700379) (not e!2576088))))

(assert (=> b!4152107 (= res!1700379 (not ((_ is Nil!45096) input!3238)))))

(declare-fun b!4152109 () Bool)

(assert (=> b!4152109 (= e!2576088 (isPrefix!4363 (tail!6607 p!2912) (tail!6607 input!3238)))))

(assert (= (and d!1228205 (not res!1700378)) b!4152107))

(assert (= (and b!4152107 res!1700379) b!4152108))

(assert (= (and b!4152108 res!1700380) b!4152109))

(assert (= (and d!1228205 (not res!1700381)) b!4152110))

(assert (=> b!4152110 m!4747387))

(assert (=> b!4152110 m!4747287))

(declare-fun m!4747667 () Bool)

(assert (=> b!4152108 m!4747667))

(declare-fun m!4747669 () Bool)

(assert (=> b!4152108 m!4747669))

(declare-fun m!4747671 () Bool)

(assert (=> b!4152109 m!4747671))

(assert (=> b!4152109 m!4747389))

(assert (=> b!4152109 m!4747671))

(assert (=> b!4152109 m!4747389))

(declare-fun m!4747673 () Bool)

(assert (=> b!4152109 m!4747673))

(assert (=> b!4151739 d!1228205))

(declare-fun d!1228207 () Bool)

(declare-fun lt!1480812 () Bool)

(assert (=> d!1228207 (= lt!1480812 (select (content!6979 rules!3756) r!4008))))

(declare-fun e!2576090 () Bool)

(assert (=> d!1228207 (= lt!1480812 e!2576090)))

(declare-fun res!1700383 () Bool)

(assert (=> d!1228207 (=> (not res!1700383) (not e!2576090))))

(assert (=> d!1228207 (= res!1700383 ((_ is Cons!45097) rules!3756))))

(assert (=> d!1228207 (= (contains!9114 rules!3756 r!4008) lt!1480812)))

(declare-fun b!4152111 () Bool)

(declare-fun e!2576089 () Bool)

(assert (=> b!4152111 (= e!2576090 e!2576089)))

(declare-fun res!1700382 () Bool)

(assert (=> b!4152111 (=> res!1700382 e!2576089)))

(assert (=> b!4152111 (= res!1700382 (= (h!50517 rules!3756) r!4008))))

(declare-fun b!4152112 () Bool)

(assert (=> b!4152112 (= e!2576089 (contains!9114 (t!343188 rules!3756) r!4008))))

(assert (= (and d!1228207 res!1700383) b!4152111))

(assert (= (and b!4152111 (not res!1700382)) b!4152112))

(assert (=> d!1228207 m!4747657))

(declare-fun m!4747675 () Bool)

(assert (=> d!1228207 m!4747675))

(assert (=> b!4152112 m!4747299))

(assert (=> b!4151749 d!1228207))

(declare-fun d!1228209 () Bool)

(assert (=> d!1228209 (ruleValid!3234 thiss!25645 r!4008)))

(declare-fun lt!1480815 () Unit!64367)

(declare-fun choose!25431 (LexerInterface!7017 Rule!14656 List!45221) Unit!64367)

(assert (=> d!1228209 (= lt!1480815 (choose!25431 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1228209 (contains!9114 rules!3756 r!4008)))

(assert (=> d!1228209 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2274 thiss!25645 r!4008 rules!3756) lt!1480815)))

(declare-fun bs!595464 () Bool)

(assert (= bs!595464 d!1228209))

(assert (=> bs!595464 m!4747301))

(declare-fun m!4747677 () Bool)

(assert (=> bs!595464 m!4747677))

(assert (=> bs!595464 m!4747231))

(assert (=> b!4151738 d!1228209))

(declare-fun d!1228211 () Bool)

(declare-fun res!1700388 () Bool)

(declare-fun e!2576093 () Bool)

(assert (=> d!1228211 (=> (not res!1700388) (not e!2576093))))

(declare-fun validRegex!5563 (Regex!12333) Bool)

(assert (=> d!1228211 (= res!1700388 (validRegex!5563 (regex!7428 rBis!149)))))

(assert (=> d!1228211 (= (ruleValid!3234 thiss!25645 rBis!149) e!2576093)))

(declare-fun b!4152117 () Bool)

(declare-fun res!1700389 () Bool)

(assert (=> b!4152117 (=> (not res!1700389) (not e!2576093))))

(declare-fun nullable!4353 (Regex!12333) Bool)

(assert (=> b!4152117 (= res!1700389 (not (nullable!4353 (regex!7428 rBis!149))))))

(declare-fun b!4152118 () Bool)

(assert (=> b!4152118 (= e!2576093 (not (= (tag!8288 rBis!149) (String!52041 ""))))))

(assert (= (and d!1228211 res!1700388) b!4152117))

(assert (= (and b!4152117 res!1700389) b!4152118))

(declare-fun m!4747679 () Bool)

(assert (=> d!1228211 m!4747679))

(declare-fun m!4747681 () Bool)

(assert (=> b!4152117 m!4747681))

(assert (=> b!4151738 d!1228211))

(declare-fun d!1228213 () Bool)

(assert (=> d!1228213 (ruleValid!3234 thiss!25645 rBis!149)))

(declare-fun lt!1480816 () Unit!64367)

(assert (=> d!1228213 (= lt!1480816 (choose!25431 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1228213 (contains!9114 rules!3756 rBis!149)))

(assert (=> d!1228213 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2274 thiss!25645 rBis!149 rules!3756) lt!1480816)))

(declare-fun bs!595465 () Bool)

(assert (= bs!595465 d!1228213))

(assert (=> bs!595465 m!4747253))

(declare-fun m!4747683 () Bool)

(assert (=> bs!595465 m!4747683))

(assert (=> bs!595465 m!4747249))

(assert (=> b!4151738 d!1228213))

(declare-fun b!4152128 () Bool)

(declare-fun e!2576100 () Int)

(declare-fun e!2576099 () Int)

(assert (=> b!4152128 (= e!2576100 e!2576099)))

(declare-fun c!711074 () Bool)

(assert (=> b!4152128 (= c!711074 (and ((_ is Cons!45097) rules!3756) (not (= (h!50517 rules!3756) rBis!149))))))

(declare-fun d!1228215 () Bool)

(declare-fun lt!1480819 () Int)

(assert (=> d!1228215 (>= lt!1480819 0)))

(assert (=> d!1228215 (= lt!1480819 e!2576100)))

(declare-fun c!711073 () Bool)

(assert (=> d!1228215 (= c!711073 (and ((_ is Cons!45097) rules!3756) (= (h!50517 rules!3756) rBis!149)))))

(assert (=> d!1228215 (contains!9114 rules!3756 rBis!149)))

(assert (=> d!1228215 (= (getIndex!774 rules!3756 rBis!149) lt!1480819)))

(declare-fun b!4152127 () Bool)

(assert (=> b!4152127 (= e!2576100 0)))

(declare-fun b!4152130 () Bool)

(assert (=> b!4152130 (= e!2576099 (- 1))))

(declare-fun b!4152129 () Bool)

(assert (=> b!4152129 (= e!2576099 (+ 1 (getIndex!774 (t!343188 rules!3756) rBis!149)))))

(assert (= (and d!1228215 c!711073) b!4152127))

(assert (= (and d!1228215 (not c!711073)) b!4152128))

(assert (= (and b!4152128 c!711074) b!4152129))

(assert (= (and b!4152128 (not c!711074)) b!4152130))

(assert (=> d!1228215 m!4747249))

(assert (=> b!4152129 m!4747273))

(assert (=> b!4151737 d!1228215))

(declare-fun b!4152132 () Bool)

(declare-fun e!2576102 () Int)

(declare-fun e!2576101 () Int)

(assert (=> b!4152132 (= e!2576102 e!2576101)))

(declare-fun c!711076 () Bool)

(assert (=> b!4152132 (= c!711076 (and ((_ is Cons!45097) rules!3756) (not (= (h!50517 rules!3756) r!4008))))))

(declare-fun d!1228217 () Bool)

(declare-fun lt!1480820 () Int)

(assert (=> d!1228217 (>= lt!1480820 0)))

(assert (=> d!1228217 (= lt!1480820 e!2576102)))

(declare-fun c!711075 () Bool)

(assert (=> d!1228217 (= c!711075 (and ((_ is Cons!45097) rules!3756) (= (h!50517 rules!3756) r!4008)))))

(assert (=> d!1228217 (contains!9114 rules!3756 r!4008)))

(assert (=> d!1228217 (= (getIndex!774 rules!3756 r!4008) lt!1480820)))

(declare-fun b!4152131 () Bool)

(assert (=> b!4152131 (= e!2576102 0)))

(declare-fun b!4152134 () Bool)

(assert (=> b!4152134 (= e!2576101 (- 1))))

(declare-fun b!4152133 () Bool)

(assert (=> b!4152133 (= e!2576101 (+ 1 (getIndex!774 (t!343188 rules!3756) r!4008)))))

(assert (= (and d!1228217 c!711075) b!4152131))

(assert (= (and d!1228217 (not c!711075)) b!4152132))

(assert (= (and b!4152132 c!711076) b!4152133))

(assert (= (and b!4152132 (not c!711076)) b!4152134))

(assert (=> d!1228217 m!4747231))

(assert (=> b!4152133 m!4747275))

(assert (=> b!4151737 d!1228217))

(declare-fun b!4152136 () Bool)

(declare-fun e!2576104 () Int)

(declare-fun e!2576103 () Int)

(assert (=> b!4152136 (= e!2576104 e!2576103)))

(declare-fun c!711078 () Bool)

(assert (=> b!4152136 (= c!711078 (and ((_ is Cons!45097) (t!343188 rules!3756)) (not (= (h!50517 (t!343188 rules!3756)) rBis!149))))))

(declare-fun d!1228219 () Bool)

(declare-fun lt!1480821 () Int)

(assert (=> d!1228219 (>= lt!1480821 0)))

(assert (=> d!1228219 (= lt!1480821 e!2576104)))

(declare-fun c!711077 () Bool)

(assert (=> d!1228219 (= c!711077 (and ((_ is Cons!45097) (t!343188 rules!3756)) (= (h!50517 (t!343188 rules!3756)) rBis!149)))))

(assert (=> d!1228219 (contains!9114 (t!343188 rules!3756) rBis!149)))

(assert (=> d!1228219 (= (getIndex!774 (t!343188 rules!3756) rBis!149) lt!1480821)))

(declare-fun b!4152135 () Bool)

(assert (=> b!4152135 (= e!2576104 0)))

(declare-fun b!4152138 () Bool)

(assert (=> b!4152138 (= e!2576103 (- 1))))

(declare-fun b!4152137 () Bool)

(assert (=> b!4152137 (= e!2576103 (+ 1 (getIndex!774 (t!343188 (t!343188 rules!3756)) rBis!149)))))

(assert (= (and d!1228219 c!711077) b!4152135))

(assert (= (and d!1228219 (not c!711077)) b!4152136))

(assert (= (and b!4152136 c!711078) b!4152137))

(assert (= (and b!4152136 (not c!711078)) b!4152138))

(assert (=> d!1228219 m!4747239))

(declare-fun m!4747685 () Bool)

(assert (=> b!4152137 m!4747685))

(assert (=> b!4151757 d!1228219))

(declare-fun b!4152140 () Bool)

(declare-fun e!2576106 () Int)

(declare-fun e!2576105 () Int)

(assert (=> b!4152140 (= e!2576106 e!2576105)))

(declare-fun c!711080 () Bool)

(assert (=> b!4152140 (= c!711080 (and ((_ is Cons!45097) (t!343188 rules!3756)) (not (= (h!50517 (t!343188 rules!3756)) r!4008))))))

(declare-fun d!1228221 () Bool)

(declare-fun lt!1480822 () Int)

(assert (=> d!1228221 (>= lt!1480822 0)))

(assert (=> d!1228221 (= lt!1480822 e!2576106)))

(declare-fun c!711079 () Bool)

(assert (=> d!1228221 (= c!711079 (and ((_ is Cons!45097) (t!343188 rules!3756)) (= (h!50517 (t!343188 rules!3756)) r!4008)))))

(assert (=> d!1228221 (contains!9114 (t!343188 rules!3756) r!4008)))

(assert (=> d!1228221 (= (getIndex!774 (t!343188 rules!3756) r!4008) lt!1480822)))

(declare-fun b!4152139 () Bool)

(assert (=> b!4152139 (= e!2576106 0)))

(declare-fun b!4152142 () Bool)

(assert (=> b!4152142 (= e!2576105 (- 1))))

(declare-fun b!4152141 () Bool)

(assert (=> b!4152141 (= e!2576105 (+ 1 (getIndex!774 (t!343188 (t!343188 rules!3756)) r!4008)))))

(assert (= (and d!1228221 c!711079) b!4152139))

(assert (= (and d!1228221 (not c!711079)) b!4152140))

(assert (= (and b!4152140 c!711080) b!4152141))

(assert (= (and b!4152140 (not c!711080)) b!4152142))

(assert (=> d!1228221 m!4747299))

(declare-fun m!4747687 () Bool)

(assert (=> b!4152141 m!4747687))

(assert (=> b!4151757 d!1228221))

(declare-fun d!1228223 () Bool)

(declare-fun e!2576122 () Bool)

(assert (=> d!1228223 e!2576122))

(declare-fun c!711089 () Bool)

(assert (=> d!1228223 (= c!711089 ((_ is EmptyExpr!12333) (regex!7428 r!4008)))))

(declare-fun lt!1480825 () Bool)

(declare-fun e!2576125 () Bool)

(assert (=> d!1228223 (= lt!1480825 e!2576125)))

(declare-fun c!711087 () Bool)

(assert (=> d!1228223 (= c!711087 (isEmpty!26927 p!2912))))

(assert (=> d!1228223 (validRegex!5563 (regex!7428 r!4008))))

(assert (=> d!1228223 (= (matchR!6162 (regex!7428 r!4008) p!2912) lt!1480825)))

(declare-fun b!4152171 () Bool)

(declare-fun res!1700411 () Bool)

(declare-fun e!2576127 () Bool)

(assert (=> b!4152171 (=> res!1700411 e!2576127)))

(assert (=> b!4152171 (= res!1700411 (not ((_ is ElementMatch!12333) (regex!7428 r!4008))))))

(declare-fun e!2576126 () Bool)

(assert (=> b!4152171 (= e!2576126 e!2576127)))

(declare-fun b!4152172 () Bool)

(declare-fun derivativeStep!3747 (Regex!12333 C!24852) Regex!12333)

(assert (=> b!4152172 (= e!2576125 (matchR!6162 (derivativeStep!3747 (regex!7428 r!4008) (head!8766 p!2912)) (tail!6607 p!2912)))))

(declare-fun b!4152173 () Bool)

(declare-fun e!2576123 () Bool)

(declare-fun e!2576121 () Bool)

(assert (=> b!4152173 (= e!2576123 e!2576121)))

(declare-fun res!1700413 () Bool)

(assert (=> b!4152173 (=> res!1700413 e!2576121)))

(declare-fun call!290766 () Bool)

(assert (=> b!4152173 (= res!1700413 call!290766)))

(declare-fun b!4152174 () Bool)

(declare-fun res!1700406 () Bool)

(declare-fun e!2576124 () Bool)

(assert (=> b!4152174 (=> (not res!1700406) (not e!2576124))))

(assert (=> b!4152174 (= res!1700406 (isEmpty!26927 (tail!6607 p!2912)))))

(declare-fun bm!290761 () Bool)

(assert (=> bm!290761 (= call!290766 (isEmpty!26927 p!2912))))

(declare-fun b!4152175 () Bool)

(assert (=> b!4152175 (= e!2576125 (nullable!4353 (regex!7428 r!4008)))))

(declare-fun b!4152176 () Bool)

(declare-fun res!1700408 () Bool)

(assert (=> b!4152176 (=> res!1700408 e!2576127)))

(assert (=> b!4152176 (= res!1700408 e!2576124)))

(declare-fun res!1700412 () Bool)

(assert (=> b!4152176 (=> (not res!1700412) (not e!2576124))))

(assert (=> b!4152176 (= res!1700412 lt!1480825)))

(declare-fun b!4152177 () Bool)

(declare-fun res!1700409 () Bool)

(assert (=> b!4152177 (=> (not res!1700409) (not e!2576124))))

(assert (=> b!4152177 (= res!1700409 (not call!290766))))

(declare-fun b!4152178 () Bool)

(assert (=> b!4152178 (= e!2576122 (= lt!1480825 call!290766))))

(declare-fun b!4152179 () Bool)

(assert (=> b!4152179 (= e!2576124 (= (head!8766 p!2912) (c!711015 (regex!7428 r!4008))))))

(declare-fun b!4152180 () Bool)

(assert (=> b!4152180 (= e!2576127 e!2576123)))

(declare-fun res!1700410 () Bool)

(assert (=> b!4152180 (=> (not res!1700410) (not e!2576123))))

(assert (=> b!4152180 (= res!1700410 (not lt!1480825))))

(declare-fun b!4152181 () Bool)

(assert (=> b!4152181 (= e!2576126 (not lt!1480825))))

(declare-fun b!4152182 () Bool)

(declare-fun res!1700407 () Bool)

(assert (=> b!4152182 (=> res!1700407 e!2576121)))

(assert (=> b!4152182 (= res!1700407 (not (isEmpty!26927 (tail!6607 p!2912))))))

(declare-fun b!4152183 () Bool)

(assert (=> b!4152183 (= e!2576121 (not (= (head!8766 p!2912) (c!711015 (regex!7428 r!4008)))))))

(declare-fun b!4152184 () Bool)

(assert (=> b!4152184 (= e!2576122 e!2576126)))

(declare-fun c!711088 () Bool)

(assert (=> b!4152184 (= c!711088 ((_ is EmptyLang!12333) (regex!7428 r!4008)))))

(assert (= (and d!1228223 c!711087) b!4152175))

(assert (= (and d!1228223 (not c!711087)) b!4152172))

(assert (= (and d!1228223 c!711089) b!4152178))

(assert (= (and d!1228223 (not c!711089)) b!4152184))

(assert (= (and b!4152184 c!711088) b!4152181))

(assert (= (and b!4152184 (not c!711088)) b!4152171))

(assert (= (and b!4152171 (not res!1700411)) b!4152176))

(assert (= (and b!4152176 res!1700412) b!4152177))

(assert (= (and b!4152177 res!1700409) b!4152174))

(assert (= (and b!4152174 res!1700406) b!4152179))

(assert (= (and b!4152176 (not res!1700408)) b!4152180))

(assert (= (and b!4152180 res!1700410) b!4152173))

(assert (= (and b!4152173 (not res!1700413)) b!4152182))

(assert (= (and b!4152182 (not res!1700407)) b!4152183))

(assert (= (or b!4152178 b!4152173 b!4152177) bm!290761))

(assert (=> b!4152179 m!4747667))

(assert (=> b!4152174 m!4747671))

(assert (=> b!4152174 m!4747671))

(declare-fun m!4747689 () Bool)

(assert (=> b!4152174 m!4747689))

(assert (=> b!4152183 m!4747667))

(assert (=> b!4152172 m!4747667))

(assert (=> b!4152172 m!4747667))

(declare-fun m!4747691 () Bool)

(assert (=> b!4152172 m!4747691))

(assert (=> b!4152172 m!4747671))

(assert (=> b!4152172 m!4747691))

(assert (=> b!4152172 m!4747671))

(declare-fun m!4747693 () Bool)

(assert (=> b!4152172 m!4747693))

(assert (=> b!4152182 m!4747671))

(assert (=> b!4152182 m!4747671))

(assert (=> b!4152182 m!4747689))

(assert (=> d!1228223 m!4747303))

(declare-fun m!4747695 () Bool)

(assert (=> d!1228223 m!4747695))

(assert (=> bm!290761 m!4747303))

(declare-fun m!4747697 () Bool)

(assert (=> b!4152175 m!4747697))

(assert (=> b!4151736 d!1228223))

(declare-fun d!1228225 () Bool)

(assert (=> d!1228225 (= (isEmpty!26926 rules!3756) ((_ is Nil!45097) rules!3756))))

(assert (=> b!4151735 d!1228225))

(declare-fun d!1228227 () Bool)

(assert (=> d!1228227 (= (inv!59707 (tag!8288 rBis!149)) (= (mod (str.len (value!232251 (tag!8288 rBis!149))) 2) 0))))

(assert (=> b!4151746 d!1228227))

(declare-fun d!1228229 () Bool)

(declare-fun res!1700416 () Bool)

(declare-fun e!2576130 () Bool)

(assert (=> d!1228229 (=> (not res!1700416) (not e!2576130))))

(declare-fun semiInverseModEq!3217 (Int Int) Bool)

(assert (=> d!1228229 (= res!1700416 (semiInverseModEq!3217 (toChars!9951 (transformation!7428 rBis!149)) (toValue!10092 (transformation!7428 rBis!149))))))

(assert (=> d!1228229 (= (inv!59709 (transformation!7428 rBis!149)) e!2576130)))

(declare-fun b!4152187 () Bool)

(declare-fun equivClasses!3116 (Int Int) Bool)

(assert (=> b!4152187 (= e!2576130 (equivClasses!3116 (toChars!9951 (transformation!7428 rBis!149)) (toValue!10092 (transformation!7428 rBis!149))))))

(assert (= (and d!1228229 res!1700416) b!4152187))

(declare-fun m!4747699 () Bool)

(assert (=> d!1228229 m!4747699))

(declare-fun m!4747701 () Bool)

(assert (=> b!4152187 m!4747701))

(assert (=> b!4151746 d!1228229))

(declare-fun d!1228231 () Bool)

(assert (=> d!1228231 (= (inv!59707 (tag!8288 (h!50517 rules!3756))) (= (mod (str.len (value!232251 (tag!8288 (h!50517 rules!3756)))) 2) 0))))

(assert (=> b!4151745 d!1228231))

(declare-fun d!1228233 () Bool)

(declare-fun res!1700417 () Bool)

(declare-fun e!2576131 () Bool)

(assert (=> d!1228233 (=> (not res!1700417) (not e!2576131))))

(assert (=> d!1228233 (= res!1700417 (semiInverseModEq!3217 (toChars!9951 (transformation!7428 (h!50517 rules!3756))) (toValue!10092 (transformation!7428 (h!50517 rules!3756)))))))

(assert (=> d!1228233 (= (inv!59709 (transformation!7428 (h!50517 rules!3756))) e!2576131)))

(declare-fun b!4152188 () Bool)

(assert (=> b!4152188 (= e!2576131 (equivClasses!3116 (toChars!9951 (transformation!7428 (h!50517 rules!3756))) (toValue!10092 (transformation!7428 (h!50517 rules!3756)))))))

(assert (= (and d!1228233 res!1700417) b!4152188))

(declare-fun m!4747703 () Bool)

(assert (=> d!1228233 m!4747703))

(declare-fun m!4747705 () Bool)

(assert (=> b!4152188 m!4747705))

(assert (=> b!4151745 d!1228233))

(declare-fun d!1228235 () Bool)

(assert (=> d!1228235 (= (inv!59707 (tag!8288 r!4008)) (= (mod (str.len (value!232251 (tag!8288 r!4008))) 2) 0))))

(assert (=> b!4151756 d!1228235))

(declare-fun d!1228237 () Bool)

(declare-fun res!1700418 () Bool)

(declare-fun e!2576132 () Bool)

(assert (=> d!1228237 (=> (not res!1700418) (not e!2576132))))

(assert (=> d!1228237 (= res!1700418 (semiInverseModEq!3217 (toChars!9951 (transformation!7428 r!4008)) (toValue!10092 (transformation!7428 r!4008))))))

(assert (=> d!1228237 (= (inv!59709 (transformation!7428 r!4008)) e!2576132)))

(declare-fun b!4152189 () Bool)

(assert (=> b!4152189 (= e!2576132 (equivClasses!3116 (toChars!9951 (transformation!7428 r!4008)) (toValue!10092 (transformation!7428 r!4008))))))

(assert (= (and d!1228237 res!1700418) b!4152189))

(declare-fun m!4747707 () Bool)

(assert (=> d!1228237 m!4747707))

(declare-fun m!4747709 () Bool)

(assert (=> b!4152189 m!4747709))

(assert (=> b!4151756 d!1228237))

(declare-fun d!1228239 () Bool)

(declare-fun lt!1480828 () Int)

(assert (=> d!1228239 (>= lt!1480828 0)))

(declare-fun e!2576135 () Int)

(assert (=> d!1228239 (= lt!1480828 e!2576135)))

(declare-fun c!711092 () Bool)

(assert (=> d!1228239 (= c!711092 ((_ is Nil!45097) (t!343188 rules!3756)))))

(assert (=> d!1228239 (= (ListPrimitiveSize!287 (t!343188 rules!3756)) lt!1480828)))

(declare-fun b!4152194 () Bool)

(assert (=> b!4152194 (= e!2576135 0)))

(declare-fun b!4152195 () Bool)

(assert (=> b!4152195 (= e!2576135 (+ 1 (ListPrimitiveSize!287 (t!343188 (t!343188 rules!3756)))))))

(assert (= (and d!1228239 c!711092) b!4152194))

(assert (= (and d!1228239 (not c!711092)) b!4152195))

(declare-fun m!4747711 () Bool)

(assert (=> b!4152195 m!4747711))

(assert (=> b!4151755 d!1228239))

(declare-fun d!1228241 () Bool)

(declare-fun lt!1480829 () Int)

(assert (=> d!1228241 (>= lt!1480829 0)))

(declare-fun e!2576136 () Int)

(assert (=> d!1228241 (= lt!1480829 e!2576136)))

(declare-fun c!711093 () Bool)

(assert (=> d!1228241 (= c!711093 ((_ is Nil!45097) rules!3756))))

(assert (=> d!1228241 (= (ListPrimitiveSize!287 rules!3756) lt!1480829)))

(declare-fun b!4152196 () Bool)

(assert (=> b!4152196 (= e!2576136 0)))

(declare-fun b!4152197 () Bool)

(assert (=> b!4152197 (= e!2576136 (+ 1 (ListPrimitiveSize!287 (t!343188 rules!3756))))))

(assert (= (and d!1228241 c!711093) b!4152196))

(assert (= (and d!1228241 (not c!711093)) b!4152197))

(assert (=> b!4152197 m!4747245))

(assert (=> b!4151755 d!1228241))

(declare-fun d!1228243 () Bool)

(declare-fun lt!1480830 () Bool)

(assert (=> d!1228243 (= lt!1480830 (select (content!6979 (t!343188 rules!3756)) rBis!149))))

(declare-fun e!2576138 () Bool)

(assert (=> d!1228243 (= lt!1480830 e!2576138)))

(declare-fun res!1700420 () Bool)

(assert (=> d!1228243 (=> (not res!1700420) (not e!2576138))))

(assert (=> d!1228243 (= res!1700420 ((_ is Cons!45097) (t!343188 rules!3756)))))

(assert (=> d!1228243 (= (contains!9114 (t!343188 rules!3756) rBis!149) lt!1480830)))

(declare-fun b!4152198 () Bool)

(declare-fun e!2576137 () Bool)

(assert (=> b!4152198 (= e!2576138 e!2576137)))

(declare-fun res!1700419 () Bool)

(assert (=> b!4152198 (=> res!1700419 e!2576137)))

(assert (=> b!4152198 (= res!1700419 (= (h!50517 (t!343188 rules!3756)) rBis!149))))

(declare-fun b!4152199 () Bool)

(assert (=> b!4152199 (= e!2576137 (contains!9114 (t!343188 (t!343188 rules!3756)) rBis!149))))

(assert (= (and d!1228243 res!1700420) b!4152198))

(assert (= (and b!4152198 (not res!1700419)) b!4152199))

(assert (=> d!1228243 m!4747661))

(declare-fun m!4747713 () Bool)

(assert (=> d!1228243 m!4747713))

(declare-fun m!4747715 () Bool)

(assert (=> b!4152199 m!4747715))

(assert (=> b!4151734 d!1228243))

(declare-fun d!1228245 () Bool)

(declare-fun res!1700421 () Bool)

(declare-fun e!2576139 () Bool)

(assert (=> d!1228245 (=> (not res!1700421) (not e!2576139))))

(assert (=> d!1228245 (= res!1700421 (validRegex!5563 (regex!7428 r!4008)))))

(assert (=> d!1228245 (= (ruleValid!3234 thiss!25645 r!4008) e!2576139)))

(declare-fun b!4152200 () Bool)

(declare-fun res!1700422 () Bool)

(assert (=> b!4152200 (=> (not res!1700422) (not e!2576139))))

(assert (=> b!4152200 (= res!1700422 (not (nullable!4353 (regex!7428 r!4008))))))

(declare-fun b!4152201 () Bool)

(assert (=> b!4152201 (= e!2576139 (not (= (tag!8288 r!4008) (String!52041 ""))))))

(assert (= (and d!1228245 res!1700421) b!4152200))

(assert (= (and b!4152200 res!1700422) b!4152201))

(assert (=> d!1228245 m!4747695))

(assert (=> b!4152200 m!4747697))

(assert (=> b!4151733 d!1228245))

(declare-fun d!1228247 () Bool)

(assert (=> d!1228247 (= (isEmpty!26927 p!2912) ((_ is Nil!45096) p!2912))))

(assert (=> b!4151744 d!1228247))

(declare-fun b!4152206 () Bool)

(declare-fun e!2576142 () Bool)

(declare-fun tp!1265508 () Bool)

(assert (=> b!4152206 (= e!2576142 (and tp_is_empty!21589 tp!1265508))))

(assert (=> b!4151758 (= tp!1265450 e!2576142)))

(assert (= (and b!4151758 ((_ is Cons!45096) (t!343187 input!3238))) b!4152206))

(declare-fun b!4152207 () Bool)

(declare-fun e!2576143 () Bool)

(declare-fun tp!1265509 () Bool)

(assert (=> b!4152207 (= e!2576143 (and tp_is_empty!21589 tp!1265509))))

(assert (=> b!4151741 (= tp!1265451 e!2576143)))

(assert (= (and b!4151741 ((_ is Cons!45096) (t!343187 p!2912))) b!4152207))

(declare-fun b!4152221 () Bool)

(declare-fun e!2576146 () Bool)

(declare-fun tp!1265521 () Bool)

(declare-fun tp!1265524 () Bool)

(assert (=> b!4152221 (= e!2576146 (and tp!1265521 tp!1265524))))

(declare-fun b!4152218 () Bool)

(assert (=> b!4152218 (= e!2576146 tp_is_empty!21589)))

(declare-fun b!4152220 () Bool)

(declare-fun tp!1265522 () Bool)

(assert (=> b!4152220 (= e!2576146 tp!1265522)))

(declare-fun b!4152219 () Bool)

(declare-fun tp!1265523 () Bool)

(declare-fun tp!1265520 () Bool)

(assert (=> b!4152219 (= e!2576146 (and tp!1265523 tp!1265520))))

(assert (=> b!4151746 (= tp!1265453 e!2576146)))

(assert (= (and b!4151746 ((_ is ElementMatch!12333) (regex!7428 rBis!149))) b!4152218))

(assert (= (and b!4151746 ((_ is Concat!19992) (regex!7428 rBis!149))) b!4152219))

(assert (= (and b!4151746 ((_ is Star!12333) (regex!7428 rBis!149))) b!4152220))

(assert (= (and b!4151746 ((_ is Union!12333) (regex!7428 rBis!149))) b!4152221))

(declare-fun b!4152225 () Bool)

(declare-fun e!2576147 () Bool)

(declare-fun tp!1265526 () Bool)

(declare-fun tp!1265529 () Bool)

(assert (=> b!4152225 (= e!2576147 (and tp!1265526 tp!1265529))))

(declare-fun b!4152222 () Bool)

(assert (=> b!4152222 (= e!2576147 tp_is_empty!21589)))

(declare-fun b!4152224 () Bool)

(declare-fun tp!1265527 () Bool)

(assert (=> b!4152224 (= e!2576147 tp!1265527)))

(declare-fun b!4152223 () Bool)

(declare-fun tp!1265528 () Bool)

(declare-fun tp!1265525 () Bool)

(assert (=> b!4152223 (= e!2576147 (and tp!1265528 tp!1265525))))

(assert (=> b!4151745 (= tp!1265452 e!2576147)))

(assert (= (and b!4151745 ((_ is ElementMatch!12333) (regex!7428 (h!50517 rules!3756)))) b!4152222))

(assert (= (and b!4151745 ((_ is Concat!19992) (regex!7428 (h!50517 rules!3756)))) b!4152223))

(assert (= (and b!4151745 ((_ is Star!12333) (regex!7428 (h!50517 rules!3756)))) b!4152224))

(assert (= (and b!4151745 ((_ is Union!12333) (regex!7428 (h!50517 rules!3756)))) b!4152225))

(declare-fun b!4152236 () Bool)

(declare-fun b_free!118683 () Bool)

(declare-fun b_next!119387 () Bool)

(assert (=> b!4152236 (= b_free!118683 (not b_next!119387))))

(declare-fun t!343218 () Bool)

(declare-fun tb!249215 () Bool)

(assert (=> (and b!4152236 (= (toValue!10092 (transformation!7428 (h!50517 (t!343188 rules!3756)))) (toValue!10092 (transformation!7428 r!4008))) t!343218) tb!249215))

(declare-fun result!303212 () Bool)

(assert (= result!303212 result!303164))

(assert (=> d!1228101 t!343218))

(assert (=> d!1228103 t!343218))

(declare-fun tp!1265538 () Bool)

(declare-fun b_and!323009 () Bool)

(assert (=> b!4152236 (= tp!1265538 (and (=> t!343218 result!303212) b_and!323009))))

(declare-fun b_free!118685 () Bool)

(declare-fun b_next!119389 () Bool)

(assert (=> b!4152236 (= b_free!118685 (not b_next!119389))))

(declare-fun t!343220 () Bool)

(declare-fun tb!249217 () Bool)

(assert (=> (and b!4152236 (= (toChars!9951 (transformation!7428 (h!50517 (t!343188 rules!3756)))) (toChars!9951 (transformation!7428 r!4008))) t!343220) tb!249217))

(declare-fun result!303214 () Bool)

(assert (= result!303214 result!303180))

(assert (=> d!1228103 t!343220))

(declare-fun tp!1265541 () Bool)

(declare-fun b_and!323011 () Bool)

(assert (=> b!4152236 (= tp!1265541 (and (=> t!343220 result!303214) b_and!323011))))

(declare-fun e!2576159 () Bool)

(assert (=> b!4152236 (= e!2576159 (and tp!1265538 tp!1265541))))

(declare-fun e!2576157 () Bool)

(declare-fun b!4152235 () Bool)

(declare-fun tp!1265540 () Bool)

(assert (=> b!4152235 (= e!2576157 (and tp!1265540 (inv!59707 (tag!8288 (h!50517 (t!343188 rules!3756)))) (inv!59709 (transformation!7428 (h!50517 (t!343188 rules!3756)))) e!2576159))))

(declare-fun b!4152234 () Bool)

(declare-fun e!2576156 () Bool)

(declare-fun tp!1265539 () Bool)

(assert (=> b!4152234 (= e!2576156 (and e!2576157 tp!1265539))))

(assert (=> b!4151740 (= tp!1265447 e!2576156)))

(assert (= b!4152235 b!4152236))

(assert (= b!4152234 b!4152235))

(assert (= (and b!4151740 ((_ is Cons!45097) (t!343188 rules!3756))) b!4152234))

(declare-fun m!4747717 () Bool)

(assert (=> b!4152235 m!4747717))

(declare-fun m!4747719 () Bool)

(assert (=> b!4152235 m!4747719))

(declare-fun b!4152240 () Bool)

(declare-fun e!2576160 () Bool)

(declare-fun tp!1265543 () Bool)

(declare-fun tp!1265546 () Bool)

(assert (=> b!4152240 (= e!2576160 (and tp!1265543 tp!1265546))))

(declare-fun b!4152237 () Bool)

(assert (=> b!4152237 (= e!2576160 tp_is_empty!21589)))

(declare-fun b!4152239 () Bool)

(declare-fun tp!1265544 () Bool)

(assert (=> b!4152239 (= e!2576160 tp!1265544)))

(declare-fun b!4152238 () Bool)

(declare-fun tp!1265545 () Bool)

(declare-fun tp!1265542 () Bool)

(assert (=> b!4152238 (= e!2576160 (and tp!1265545 tp!1265542))))

(assert (=> b!4151756 (= tp!1265449 e!2576160)))

(assert (= (and b!4151756 ((_ is ElementMatch!12333) (regex!7428 r!4008))) b!4152237))

(assert (= (and b!4151756 ((_ is Concat!19992) (regex!7428 r!4008))) b!4152238))

(assert (= (and b!4151756 ((_ is Star!12333) (regex!7428 r!4008))) b!4152239))

(assert (= (and b!4151756 ((_ is Union!12333) (regex!7428 r!4008))) b!4152240))

(declare-fun b_lambda!122129 () Bool)

(assert (= b_lambda!122115 (or (and b!4151748 b_free!118669 (= (toChars!9951 (transformation!7428 (h!50517 rules!3756))) (toChars!9951 (transformation!7428 r!4008)))) (and b!4151747 b_free!118673 (= (toChars!9951 (transformation!7428 rBis!149)) (toChars!9951 (transformation!7428 r!4008)))) (and b!4151742 b_free!118677) (and b!4152236 b_free!118685 (= (toChars!9951 (transformation!7428 (h!50517 (t!343188 rules!3756)))) (toChars!9951 (transformation!7428 r!4008)))) b_lambda!122129)))

(declare-fun b_lambda!122131 () Bool)

(assert (= b_lambda!122117 (or (and b!4151748 b_free!118667 (= (toValue!10092 (transformation!7428 (h!50517 rules!3756))) (toValue!10092 (transformation!7428 r!4008)))) (and b!4151747 b_free!118671 (= (toValue!10092 (transformation!7428 rBis!149)) (toValue!10092 (transformation!7428 r!4008)))) (and b!4151742 b_free!118675) (and b!4152236 b_free!118683 (= (toValue!10092 (transformation!7428 (h!50517 (t!343188 rules!3756)))) (toValue!10092 (transformation!7428 r!4008)))) b_lambda!122131)))

(declare-fun b_lambda!122133 () Bool)

(assert (= b_lambda!122111 (or (and b!4151748 b_free!118667 (= (toValue!10092 (transformation!7428 (h!50517 rules!3756))) (toValue!10092 (transformation!7428 r!4008)))) (and b!4151747 b_free!118671 (= (toValue!10092 (transformation!7428 rBis!149)) (toValue!10092 (transformation!7428 r!4008)))) (and b!4151742 b_free!118675) (and b!4152236 b_free!118683 (= (toValue!10092 (transformation!7428 (h!50517 (t!343188 rules!3756)))) (toValue!10092 (transformation!7428 r!4008)))) b_lambda!122133)))

(check-sat (not b!4152220) (not b!4152240) (not b!4152096) (not b!4152068) (not b!4152129) (not b!4152239) (not b!4152109) (not b!4152224) (not b!4152141) (not b!4151892) (not b!4152112) (not d!1228211) (not b!4152083) (not d!1228153) (not b!4151895) (not b!4151891) (not bm!290758) (not b!4152223) (not d!1228221) (not b!4152062) (not b!4151904) (not d!1228219) (not d!1228147) (not b_next!119375) (not b!4151893) (not b!4152082) (not b!4152090) (not d!1228237) (not d!1228213) (not d!1228139) (not b_lambda!122133) (not b_next!119377) (not b!4151887) (not tb!249199) (not d!1228203) (not b!4152221) (not d!1228209) (not d!1228233) (not b!4151888) (not b!4152219) (not b!4152172) (not b!4152200) (not b!4152066) b_and!322985 (not b!4152117) (not d!1228201) b_and!322991 (not b_lambda!122131) (not b!4152175) (not b_next!119379) (not b_next!119381) (not b!4152187) (not b!4151894) (not b!4152234) (not b!4152137) (not d!1228207) (not b!4152098) (not b!4152206) (not b!4152183) (not b_next!119389) (not b!4151905) (not d!1228215) (not b!4151890) (not d!1228243) (not b!4152069) (not b!4151849) (not b!4152197) (not b!4151858) b_and!322981 b_and!322983 (not d!1228223) (not d!1228217) (not b!4152179) (not b_lambda!122129) (not b!4152199) (not d!1228155) (not b!4152088) b_and!322989 (not b!4152089) (not tb!249187) (not b_next!119387) (not d!1228197) (not b!4152235) (not b!4152195) (not b!4152188) (not b!4152070) tp_is_empty!21589 (not b_next!119373) (not bm!290753) (not b!4152238) (not b!4152067) (not d!1228195) (not d!1228137) (not d!1228229) (not b!4152086) (not b!4152063) (not b!4152087) (not b!4152207) b_and!323011 (not d!1228103) b_and!323009 (not d!1228157) (not bm!290761) (not b!4152065) (not b!4152108) (not b!4152189) b_and!322987 (not b!4152133) (not b!4152174) (not b_next!119371) (not b!4152085) (not b!4152182) (not b!4152110) (not d!1228151) (not b!4151901) (not b!4152225) (not d!1228245))
(check-sat (not b_next!119375) (not b_next!119377) b_and!322985 (not b_next!119389) b_and!322981 b_and!322983 b_and!322989 (not b_next!119387) (not b_next!119373) b_and!323011 b_and!323009 b_and!322987 (not b_next!119371) b_and!322991 (not b_next!119379) (not b_next!119381))
