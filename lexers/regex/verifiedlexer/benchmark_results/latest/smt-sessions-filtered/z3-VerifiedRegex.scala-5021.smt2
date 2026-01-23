; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253834 () Bool)

(assert start!253834)

(declare-fun b!2611281 () Bool)

(declare-fun b_free!73445 () Bool)

(declare-fun b_next!74149 () Bool)

(assert (=> b!2611281 (= b_free!73445 (not b_next!74149))))

(declare-fun tp!829652 () Bool)

(declare-fun b_and!191011 () Bool)

(assert (=> b!2611281 (= tp!829652 b_and!191011)))

(declare-fun b_free!73447 () Bool)

(declare-fun b_next!74151 () Bool)

(assert (=> b!2611281 (= b_free!73447 (not b_next!74151))))

(declare-fun tp!829647 () Bool)

(declare-fun b_and!191013 () Bool)

(assert (=> b!2611281 (= tp!829647 b_and!191013)))

(declare-fun b!2611289 () Bool)

(declare-fun b_free!73449 () Bool)

(declare-fun b_next!74153 () Bool)

(assert (=> b!2611289 (= b_free!73449 (not b_next!74153))))

(declare-fun tp!829650 () Bool)

(declare-fun b_and!191015 () Bool)

(assert (=> b!2611289 (= tp!829650 b_and!191015)))

(declare-fun b_free!73451 () Bool)

(declare-fun b_next!74155 () Bool)

(assert (=> b!2611289 (= b_free!73451 (not b_next!74155))))

(declare-fun tp!829648 () Bool)

(declare-fun b_and!191017 () Bool)

(assert (=> b!2611289 (= tp!829648 b_and!191017)))

(declare-fun bs!473903 () Bool)

(declare-fun b!2611287 () Bool)

(declare-fun b!2611288 () Bool)

(assert (= bs!473903 (and b!2611287 b!2611288)))

(declare-fun lambda!97742 () Int)

(declare-fun lambda!97741 () Int)

(assert (=> bs!473903 (not (= lambda!97742 lambda!97741))))

(declare-fun b!2611308 () Bool)

(declare-fun e!1647658 () Bool)

(assert (=> b!2611308 (= e!1647658 true)))

(declare-fun b!2611307 () Bool)

(declare-fun e!1647657 () Bool)

(assert (=> b!2611307 (= e!1647657 e!1647658)))

(declare-fun b!2611306 () Bool)

(declare-fun e!1647656 () Bool)

(assert (=> b!2611306 (= e!1647656 e!1647657)))

(assert (=> b!2611287 e!1647656))

(assert (= b!2611307 b!2611308))

(assert (= b!2611306 b!2611307))

(declare-datatypes ((List!30279 0))(
  ( (Nil!30179) (Cons!30179 (h!35599 (_ BitVec 16)) (t!214128 List!30279)) )
))
(declare-datatypes ((C!15572 0))(
  ( (C!15573 (val!9720 Int)) )
))
(declare-datatypes ((Regex!7707 0))(
  ( (ElementMatch!7707 (c!419698 C!15572)) (Concat!12492 (regOne!15926 Regex!7707) (regTwo!15926 Regex!7707)) (EmptyExpr!7707) (Star!7707 (reg!8036 Regex!7707)) (EmptyLang!7707) (Union!7707 (regOne!15927 Regex!7707) (regTwo!15927 Regex!7707)) )
))
(declare-datatypes ((TokenValue!4785 0))(
  ( (FloatLiteralValue!9570 (text!33940 List!30279)) (TokenValueExt!4784 (__x!19403 Int)) (Broken!23925 (value!147624 List!30279)) (Object!4884) (End!4785) (Def!4785) (Underscore!4785) (Match!4785) (Else!4785) (Error!4785) (Case!4785) (If!4785) (Extends!4785) (Abstract!4785) (Class!4785) (Val!4785) (DelimiterValue!9570 (del!4845 List!30279)) (KeywordValue!4791 (value!147625 List!30279)) (CommentValue!9570 (value!147626 List!30279)) (WhitespaceValue!9570 (value!147627 List!30279)) (IndentationValue!4785 (value!147628 List!30279)) (String!33808) (Int32!4785) (Broken!23926 (value!147629 List!30279)) (Boolean!4786) (Unit!44154) (OperatorValue!4788 (op!4845 List!30279)) (IdentifierValue!9570 (value!147630 List!30279)) (IdentifierValue!9571 (value!147631 List!30279)) (WhitespaceValue!9571 (value!147632 List!30279)) (True!9570) (False!9570) (Broken!23927 (value!147633 List!30279)) (Broken!23928 (value!147634 List!30279)) (True!9571) (RightBrace!4785) (RightBracket!4785) (Colon!4785) (Null!4785) (Comma!4785) (LeftBracket!4785) (False!9571) (LeftBrace!4785) (ImaginaryLiteralValue!4785 (text!33941 List!30279)) (StringLiteralValue!14355 (value!147635 List!30279)) (EOFValue!4785 (value!147636 List!30279)) (IdentValue!4785 (value!147637 List!30279)) (DelimiterValue!9571 (value!147638 List!30279)) (DedentValue!4785 (value!147639 List!30279)) (NewLineValue!4785 (value!147640 List!30279)) (IntegerValue!14355 (value!147641 (_ BitVec 32)) (text!33942 List!30279)) (IntegerValue!14356 (value!147642 Int) (text!33943 List!30279)) (Times!4785) (Or!4785) (Equal!4785) (Minus!4785) (Broken!23929 (value!147643 List!30279)) (And!4785) (Div!4785) (LessEqual!4785) (Mod!4785) (Concat!12493) (Not!4785) (Plus!4785) (SpaceValue!4785 (value!147644 List!30279)) (IntegerValue!14357 (value!147645 Int) (text!33944 List!30279)) (StringLiteralValue!14356 (text!33945 List!30279)) (FloatLiteralValue!9571 (text!33946 List!30279)) (BytesLiteralValue!4785 (value!147646 List!30279)) (CommentValue!9571 (value!147647 List!30279)) (StringLiteralValue!14357 (value!147648 List!30279)) (ErrorTokenValue!4785 (msg!4846 List!30279)) )
))
(declare-datatypes ((List!30280 0))(
  ( (Nil!30180) (Cons!30180 (h!35600 C!15572) (t!214129 List!30280)) )
))
(declare-datatypes ((IArray!18741 0))(
  ( (IArray!18742 (innerList!9428 List!30280)) )
))
(declare-datatypes ((Conc!9368 0))(
  ( (Node!9368 (left!23221 Conc!9368) (right!23551 Conc!9368) (csize!18966 Int) (cheight!9579 Int)) (Leaf!14390 (xs!12352 IArray!18741) (csize!18967 Int)) (Empty!9368) )
))
(declare-datatypes ((BalanceConc!18350 0))(
  ( (BalanceConc!18351 (c!419699 Conc!9368)) )
))
(declare-datatypes ((TokenValueInjection!9010 0))(
  ( (TokenValueInjection!9011 (toValue!6465 Int) (toChars!6324 Int)) )
))
(declare-datatypes ((String!33809 0))(
  ( (String!33810 (value!147649 String)) )
))
(declare-datatypes ((Rule!8926 0))(
  ( (Rule!8927 (regex!4563 Regex!7707) (tag!5053 String!33809) (isSeparator!4563 Bool) (transformation!4563 TokenValueInjection!9010)) )
))
(declare-datatypes ((List!30281 0))(
  ( (Nil!30181) (Cons!30181 (h!35601 Rule!8926) (t!214130 List!30281)) )
))
(declare-fun rules!1726 () List!30281)

(get-info :version)

(assert (= (and b!2611287 ((_ is Cons!30181) rules!1726)) b!2611306))

(declare-fun order!16049 () Int)

(declare-fun order!16047 () Int)

(declare-fun dynLambda!12781 (Int Int) Int)

(declare-fun dynLambda!12782 (Int Int) Int)

(assert (=> b!2611308 (< (dynLambda!12781 order!16047 (toValue!6465 (transformation!4563 (h!35601 rules!1726)))) (dynLambda!12782 order!16049 lambda!97742))))

(declare-fun order!16051 () Int)

(declare-fun dynLambda!12783 (Int Int) Int)

(assert (=> b!2611308 (< (dynLambda!12783 order!16051 (toChars!6324 (transformation!4563 (h!35601 rules!1726)))) (dynLambda!12782 order!16049 lambda!97742))))

(assert (=> b!2611287 true))

(declare-fun b!2611279 () Bool)

(declare-fun e!1647638 () Bool)

(declare-fun e!1647641 () Bool)

(assert (=> b!2611279 (= e!1647638 e!1647641)))

(declare-fun res!1099183 () Bool)

(assert (=> b!2611279 (=> (not res!1099183) (not e!1647641))))

(declare-fun from!862 () Int)

(declare-fun lt!917551 () Int)

(assert (=> b!2611279 (= res!1099183 (<= from!862 lt!917551))))

(declare-datatypes ((Token!8596 0))(
  ( (Token!8597 (value!147650 TokenValue!4785) (rule!6933 Rule!8926) (size!23364 Int) (originalCharacters!5329 List!30280)) )
))
(declare-datatypes ((List!30282 0))(
  ( (Nil!30182) (Cons!30182 (h!35602 Token!8596) (t!214131 List!30282)) )
))
(declare-datatypes ((IArray!18743 0))(
  ( (IArray!18744 (innerList!9429 List!30282)) )
))
(declare-datatypes ((Conc!9369 0))(
  ( (Node!9369 (left!23222 Conc!9369) (right!23552 Conc!9369) (csize!18968 Int) (cheight!9580 Int)) (Leaf!14391 (xs!12353 IArray!18743) (csize!18969 Int)) (Empty!9369) )
))
(declare-datatypes ((BalanceConc!18352 0))(
  ( (BalanceConc!18353 (c!419700 Conc!9369)) )
))
(declare-fun v!6381 () BalanceConc!18352)

(declare-fun size!23365 (BalanceConc!18352) Int)

(assert (=> b!2611279 (= lt!917551 (size!23365 v!6381))))

(declare-fun b!2611280 () Bool)

(declare-fun res!1099178 () Bool)

(assert (=> b!2611280 (=> (not res!1099178) (not e!1647641))))

(declare-datatypes ((LexerInterface!4160 0))(
  ( (LexerInterfaceExt!4157 (__x!19404 Int)) (Lexer!4158) )
))
(declare-fun thiss!14197 () LexerInterface!4160)

(declare-fun rulesProduceEachTokenIndividually!980 (LexerInterface!4160 List!30281 BalanceConc!18352) Bool)

(assert (=> b!2611280 (= res!1099178 (rulesProduceEachTokenIndividually!980 thiss!14197 rules!1726 v!6381))))

(declare-fun e!1647646 () Bool)

(assert (=> b!2611281 (= e!1647646 (and tp!829652 tp!829647))))

(declare-fun b!2611282 () Bool)

(declare-fun res!1099184 () Bool)

(assert (=> b!2611282 (=> (not res!1099184) (not e!1647641))))

(declare-fun isEmpty!17240 (List!30281) Bool)

(assert (=> b!2611282 (= res!1099184 (not (isEmpty!17240 rules!1726)))))

(declare-fun b!2611284 () Bool)

(declare-fun res!1099176 () Bool)

(declare-fun e!1647639 () Bool)

(assert (=> b!2611284 (=> res!1099176 e!1647639)))

(declare-fun lt!917552 () List!30282)

(declare-fun lt!917549 () Token!8596)

(declare-fun contains!5602 (List!30282 Token!8596) Bool)

(assert (=> b!2611284 (= res!1099176 (not (contains!5602 lt!917552 lt!917549)))))

(declare-fun b!2611285 () Bool)

(declare-fun e!1647640 () Bool)

(assert (=> b!2611285 (= e!1647640 (not e!1647639))))

(declare-fun res!1099185 () Bool)

(assert (=> b!2611285 (=> res!1099185 e!1647639)))

(declare-fun contains!5603 (BalanceConc!18352 Token!8596) Bool)

(assert (=> b!2611285 (= res!1099185 (not (contains!5603 v!6381 lt!917549)))))

(declare-fun apply!7088 (BalanceConc!18352 Int) Token!8596)

(assert (=> b!2611285 (= lt!917549 (apply!7088 v!6381 from!862))))

(declare-fun lt!917545 () List!30282)

(declare-fun tail!4196 (List!30282) List!30282)

(declare-fun drop!1559 (List!30282 Int) List!30282)

(assert (=> b!2611285 (= (tail!4196 lt!917545) (drop!1559 lt!917552 (+ 1 from!862)))))

(declare-datatypes ((Unit!44155 0))(
  ( (Unit!44156) )
))
(declare-fun lt!917553 () Unit!44155)

(declare-fun lemmaDropTail!748 (List!30282 Int) Unit!44155)

(assert (=> b!2611285 (= lt!917553 (lemmaDropTail!748 lt!917552 from!862))))

(declare-fun head!5958 (List!30282) Token!8596)

(declare-fun apply!7089 (List!30282 Int) Token!8596)

(assert (=> b!2611285 (= (head!5958 lt!917545) (apply!7089 lt!917552 from!862))))

(assert (=> b!2611285 (= lt!917545 (drop!1559 lt!917552 from!862))))

(declare-fun lt!917546 () Unit!44155)

(declare-fun lemmaDropApply!774 (List!30282 Int) Unit!44155)

(assert (=> b!2611285 (= lt!917546 (lemmaDropApply!774 lt!917552 from!862))))

(declare-fun b!2611286 () Bool)

(declare-fun e!1647637 () Bool)

(declare-fun e!1647647 () Bool)

(declare-fun tp!829646 () Bool)

(assert (=> b!2611286 (= e!1647637 (and e!1647647 tp!829646))))

(assert (=> b!2611287 (= e!1647639 (<= 0 from!862))))

(declare-fun separatorToken!156 () Token!8596)

(declare-fun lt!917548 () BalanceConc!18350)

(declare-fun printWithSeparatorTokenWhenNeededRec!438 (LexerInterface!4160 List!30281 BalanceConc!18352 Token!8596 Int) BalanceConc!18350)

(assert (=> b!2611287 (= lt!917548 (printWithSeparatorTokenWhenNeededRec!438 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!917547 () Unit!44155)

(declare-fun forallContained!919 (List!30282 Int Token!8596) Unit!44155)

(assert (=> b!2611287 (= lt!917547 (forallContained!919 lt!917552 lambda!97742 lt!917549))))

(declare-fun res!1099175 () Bool)

(assert (=> b!2611288 (=> (not res!1099175) (not e!1647641))))

(declare-fun forall!6259 (BalanceConc!18352 Int) Bool)

(assert (=> b!2611288 (= res!1099175 (forall!6259 v!6381 lambda!97741))))

(declare-fun e!1647645 () Bool)

(assert (=> b!2611289 (= e!1647645 (and tp!829650 tp!829648))))

(declare-fun b!2611290 () Bool)

(declare-fun res!1099179 () Bool)

(assert (=> b!2611290 (=> (not res!1099179) (not e!1647641))))

(declare-fun sepAndNonSepRulesDisjointChars!1136 (List!30281 List!30281) Bool)

(assert (=> b!2611290 (= res!1099179 (sepAndNonSepRulesDisjointChars!1136 rules!1726 rules!1726))))

(declare-fun tp!829649 () Bool)

(declare-fun b!2611291 () Bool)

(declare-fun e!1647636 () Bool)

(declare-fun inv!40838 (String!33809) Bool)

(declare-fun inv!40843 (TokenValueInjection!9010) Bool)

(assert (=> b!2611291 (= e!1647636 (and tp!829649 (inv!40838 (tag!5053 (rule!6933 separatorToken!156))) (inv!40843 (transformation!4563 (rule!6933 separatorToken!156))) e!1647646))))

(declare-fun b!2611292 () Bool)

(assert (=> b!2611292 (= e!1647641 e!1647640)))

(declare-fun res!1099174 () Bool)

(assert (=> b!2611292 (=> (not res!1099174) (not e!1647640))))

(assert (=> b!2611292 (= res!1099174 (< from!862 lt!917551))))

(declare-fun lt!917550 () Unit!44155)

(declare-fun lemmaContentSubsetPreservesForall!232 (List!30282 List!30282 Int) Unit!44155)

(declare-fun dropList!866 (BalanceConc!18352 Int) List!30282)

(assert (=> b!2611292 (= lt!917550 (lemmaContentSubsetPreservesForall!232 lt!917552 (dropList!866 v!6381 from!862) lambda!97741))))

(declare-fun list!11325 (BalanceConc!18352) List!30282)

(assert (=> b!2611292 (= lt!917552 (list!11325 v!6381))))

(declare-fun b!2611293 () Bool)

(declare-fun res!1099180 () Bool)

(assert (=> b!2611293 (=> (not res!1099180) (not e!1647641))))

(assert (=> b!2611293 (= res!1099180 (isSeparator!4563 (rule!6933 separatorToken!156)))))

(declare-fun res!1099182 () Bool)

(assert (=> start!253834 (=> (not res!1099182) (not e!1647638))))

(assert (=> start!253834 (= res!1099182 (and ((_ is Lexer!4158) thiss!14197) (>= from!862 0)))))

(assert (=> start!253834 e!1647638))

(assert (=> start!253834 true))

(assert (=> start!253834 e!1647637))

(declare-fun e!1647648 () Bool)

(declare-fun inv!40844 (Token!8596) Bool)

(assert (=> start!253834 (and (inv!40844 separatorToken!156) e!1647648)))

(declare-fun e!1647642 () Bool)

(declare-fun inv!40845 (BalanceConc!18352) Bool)

(assert (=> start!253834 (and (inv!40845 v!6381) e!1647642)))

(declare-fun b!2611283 () Bool)

(declare-fun tp!829651 () Bool)

(assert (=> b!2611283 (= e!1647647 (and tp!829651 (inv!40838 (tag!5053 (h!35601 rules!1726))) (inv!40843 (transformation!4563 (h!35601 rules!1726))) e!1647645))))

(declare-fun b!2611294 () Bool)

(declare-fun tp!829653 () Bool)

(declare-fun inv!40846 (Conc!9369) Bool)

(assert (=> b!2611294 (= e!1647642 (and (inv!40846 (c!419700 v!6381)) tp!829653))))

(declare-fun b!2611295 () Bool)

(declare-fun res!1099177 () Bool)

(assert (=> b!2611295 (=> (not res!1099177) (not e!1647641))))

(declare-fun rulesInvariant!3660 (LexerInterface!4160 List!30281) Bool)

(assert (=> b!2611295 (= res!1099177 (rulesInvariant!3660 thiss!14197 rules!1726))))

(declare-fun tp!829654 () Bool)

(declare-fun b!2611296 () Bool)

(declare-fun inv!21 (TokenValue!4785) Bool)

(assert (=> b!2611296 (= e!1647648 (and (inv!21 (value!147650 separatorToken!156)) e!1647636 tp!829654))))

(declare-fun b!2611297 () Bool)

(declare-fun res!1099181 () Bool)

(assert (=> b!2611297 (=> (not res!1099181) (not e!1647641))))

(declare-fun rulesProduceIndividualToken!1872 (LexerInterface!4160 List!30281 Token!8596) Bool)

(assert (=> b!2611297 (= res!1099181 (rulesProduceIndividualToken!1872 thiss!14197 rules!1726 separatorToken!156))))

(assert (= (and start!253834 res!1099182) b!2611279))

(assert (= (and b!2611279 res!1099183) b!2611282))

(assert (= (and b!2611282 res!1099184) b!2611295))

(assert (= (and b!2611295 res!1099177) b!2611280))

(assert (= (and b!2611280 res!1099178) b!2611297))

(assert (= (and b!2611297 res!1099181) b!2611293))

(assert (= (and b!2611293 res!1099180) b!2611288))

(assert (= (and b!2611288 res!1099175) b!2611290))

(assert (= (and b!2611290 res!1099179) b!2611292))

(assert (= (and b!2611292 res!1099174) b!2611285))

(assert (= (and b!2611285 (not res!1099185)) b!2611284))

(assert (= (and b!2611284 (not res!1099176)) b!2611287))

(assert (= b!2611283 b!2611289))

(assert (= b!2611286 b!2611283))

(assert (= (and start!253834 ((_ is Cons!30181) rules!1726)) b!2611286))

(assert (= b!2611291 b!2611281))

(assert (= b!2611296 b!2611291))

(assert (= start!253834 b!2611296))

(assert (= start!253834 b!2611294))

(declare-fun m!2945761 () Bool)

(assert (=> b!2611295 m!2945761))

(declare-fun m!2945763 () Bool)

(assert (=> b!2611290 m!2945763))

(declare-fun m!2945765 () Bool)

(assert (=> start!253834 m!2945765))

(declare-fun m!2945767 () Bool)

(assert (=> start!253834 m!2945767))

(declare-fun m!2945769 () Bool)

(assert (=> b!2611284 m!2945769))

(declare-fun m!2945771 () Bool)

(assert (=> b!2611291 m!2945771))

(declare-fun m!2945773 () Bool)

(assert (=> b!2611291 m!2945773))

(declare-fun m!2945775 () Bool)

(assert (=> b!2611297 m!2945775))

(declare-fun m!2945777 () Bool)

(assert (=> b!2611296 m!2945777))

(declare-fun m!2945779 () Bool)

(assert (=> b!2611287 m!2945779))

(declare-fun m!2945781 () Bool)

(assert (=> b!2611287 m!2945781))

(declare-fun m!2945783 () Bool)

(assert (=> b!2611279 m!2945783))

(declare-fun m!2945785 () Bool)

(assert (=> b!2611285 m!2945785))

(declare-fun m!2945787 () Bool)

(assert (=> b!2611285 m!2945787))

(declare-fun m!2945789 () Bool)

(assert (=> b!2611285 m!2945789))

(declare-fun m!2945791 () Bool)

(assert (=> b!2611285 m!2945791))

(declare-fun m!2945793 () Bool)

(assert (=> b!2611285 m!2945793))

(declare-fun m!2945795 () Bool)

(assert (=> b!2611285 m!2945795))

(declare-fun m!2945797 () Bool)

(assert (=> b!2611285 m!2945797))

(declare-fun m!2945799 () Bool)

(assert (=> b!2611285 m!2945799))

(declare-fun m!2945801 () Bool)

(assert (=> b!2611285 m!2945801))

(declare-fun m!2945803 () Bool)

(assert (=> b!2611280 m!2945803))

(declare-fun m!2945805 () Bool)

(assert (=> b!2611292 m!2945805))

(assert (=> b!2611292 m!2945805))

(declare-fun m!2945807 () Bool)

(assert (=> b!2611292 m!2945807))

(declare-fun m!2945809 () Bool)

(assert (=> b!2611292 m!2945809))

(declare-fun m!2945811 () Bool)

(assert (=> b!2611288 m!2945811))

(declare-fun m!2945813 () Bool)

(assert (=> b!2611283 m!2945813))

(declare-fun m!2945815 () Bool)

(assert (=> b!2611283 m!2945815))

(declare-fun m!2945817 () Bool)

(assert (=> b!2611294 m!2945817))

(declare-fun m!2945819 () Bool)

(assert (=> b!2611282 m!2945819))

(check-sat b_and!191013 (not b!2611288) (not b!2611282) (not b_next!74149) (not start!253834) (not b_next!74151) (not b!2611284) (not b!2611283) (not b!2611290) (not b!2611296) (not b_next!74155) (not b!2611291) (not b!2611285) (not b!2611294) (not b!2611295) b_and!191017 (not b!2611292) (not b!2611279) (not b_next!74153) (not b!2611280) (not b!2611306) b_and!191015 (not b!2611286) b_and!191011 (not b!2611297) (not b!2611287))
(check-sat b_and!191013 (not b_next!74149) (not b_next!74151) b_and!191017 (not b_next!74155) (not b_next!74153) b_and!191015 b_and!191011)
