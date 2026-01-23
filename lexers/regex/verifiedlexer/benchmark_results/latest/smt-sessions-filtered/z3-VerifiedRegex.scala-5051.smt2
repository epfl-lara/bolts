; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255642 () Bool)

(assert start!255642)

(declare-fun b!2629660 () Bool)

(declare-fun b_free!74077 () Bool)

(declare-fun b_next!74781 () Bool)

(assert (=> b!2629660 (= b_free!74077 (not b_next!74781))))

(declare-fun tp!833726 () Bool)

(declare-fun b_and!192635 () Bool)

(assert (=> b!2629660 (= tp!833726 b_and!192635)))

(declare-fun b_free!74079 () Bool)

(declare-fun b_next!74783 () Bool)

(assert (=> b!2629660 (= b_free!74079 (not b_next!74783))))

(declare-fun tp!833727 () Bool)

(declare-fun b_and!192637 () Bool)

(assert (=> b!2629660 (= tp!833727 b_and!192637)))

(declare-fun b!2629658 () Bool)

(declare-fun b_free!74081 () Bool)

(declare-fun b_next!74785 () Bool)

(assert (=> b!2629658 (= b_free!74081 (not b_next!74785))))

(declare-fun tp!833733 () Bool)

(declare-fun b_and!192639 () Bool)

(assert (=> b!2629658 (= tp!833733 b_and!192639)))

(declare-fun b_free!74083 () Bool)

(declare-fun b_next!74787 () Bool)

(assert (=> b!2629658 (= b_free!74083 (not b_next!74787))))

(declare-fun tp!833731 () Bool)

(declare-fun b_and!192641 () Bool)

(assert (=> b!2629658 (= tp!833731 b_and!192641)))

(declare-fun bs!475689 () Bool)

(declare-fun b!2629639 () Bool)

(declare-fun b!2629651 () Bool)

(assert (= bs!475689 (and b!2629639 b!2629651)))

(declare-fun lambda!98590 () Int)

(declare-fun lambda!98589 () Int)

(assert (=> bs!475689 (not (= lambda!98590 lambda!98589))))

(declare-fun b!2629672 () Bool)

(declare-fun e!1659128 () Bool)

(assert (=> b!2629672 (= e!1659128 true)))

(declare-fun b!2629671 () Bool)

(declare-fun e!1659127 () Bool)

(assert (=> b!2629671 (= e!1659127 e!1659128)))

(declare-fun b!2629670 () Bool)

(declare-fun e!1659126 () Bool)

(assert (=> b!2629670 (= e!1659126 e!1659127)))

(assert (=> b!2629639 e!1659126))

(assert (= b!2629671 b!2629672))

(assert (= b!2629670 b!2629671))

(declare-datatypes ((List!30529 0))(
  ( (Nil!30429) (Cons!30429 (h!35849 (_ BitVec 16)) (t!216258 List!30529)) )
))
(declare-datatypes ((C!15692 0))(
  ( (C!15693 (val!9780 Int)) )
))
(declare-datatypes ((Regex!7767 0))(
  ( (ElementMatch!7767 (c!422828 C!15692)) (Concat!12612 (regOne!16046 Regex!7767) (regTwo!16046 Regex!7767)) (EmptyExpr!7767) (Star!7767 (reg!8096 Regex!7767)) (EmptyLang!7767) (Union!7767 (regOne!16047 Regex!7767) (regTwo!16047 Regex!7767)) )
))
(declare-datatypes ((TokenValue!4845 0))(
  ( (FloatLiteralValue!9690 (text!34360 List!30529)) (TokenValueExt!4844 (__x!19523 Int)) (Broken!24225 (value!149334 List!30529)) (Object!4944) (End!4845) (Def!4845) (Underscore!4845) (Match!4845) (Else!4845) (Error!4845) (Case!4845) (If!4845) (Extends!4845) (Abstract!4845) (Class!4845) (Val!4845) (DelimiterValue!9690 (del!4905 List!30529)) (KeywordValue!4851 (value!149335 List!30529)) (CommentValue!9690 (value!149336 List!30529)) (WhitespaceValue!9690 (value!149337 List!30529)) (IndentationValue!4845 (value!149338 List!30529)) (String!34108) (Int32!4845) (Broken!24226 (value!149339 List!30529)) (Boolean!4846) (Unit!44454) (OperatorValue!4848 (op!4905 List!30529)) (IdentifierValue!9690 (value!149340 List!30529)) (IdentifierValue!9691 (value!149341 List!30529)) (WhitespaceValue!9691 (value!149342 List!30529)) (True!9690) (False!9690) (Broken!24227 (value!149343 List!30529)) (Broken!24228 (value!149344 List!30529)) (True!9691) (RightBrace!4845) (RightBracket!4845) (Colon!4845) (Null!4845) (Comma!4845) (LeftBracket!4845) (False!9691) (LeftBrace!4845) (ImaginaryLiteralValue!4845 (text!34361 List!30529)) (StringLiteralValue!14535 (value!149345 List!30529)) (EOFValue!4845 (value!149346 List!30529)) (IdentValue!4845 (value!149347 List!30529)) (DelimiterValue!9691 (value!149348 List!30529)) (DedentValue!4845 (value!149349 List!30529)) (NewLineValue!4845 (value!149350 List!30529)) (IntegerValue!14535 (value!149351 (_ BitVec 32)) (text!34362 List!30529)) (IntegerValue!14536 (value!149352 Int) (text!34363 List!30529)) (Times!4845) (Or!4845) (Equal!4845) (Minus!4845) (Broken!24229 (value!149353 List!30529)) (And!4845) (Div!4845) (LessEqual!4845) (Mod!4845) (Concat!12613) (Not!4845) (Plus!4845) (SpaceValue!4845 (value!149354 List!30529)) (IntegerValue!14537 (value!149355 Int) (text!34364 List!30529)) (StringLiteralValue!14536 (text!34365 List!30529)) (FloatLiteralValue!9691 (text!34366 List!30529)) (BytesLiteralValue!4845 (value!149356 List!30529)) (CommentValue!9691 (value!149357 List!30529)) (StringLiteralValue!14537 (value!149358 List!30529)) (ErrorTokenValue!4845 (msg!4906 List!30529)) )
))
(declare-datatypes ((List!30530 0))(
  ( (Nil!30430) (Cons!30430 (h!35850 C!15692) (t!216259 List!30530)) )
))
(declare-datatypes ((IArray!18981 0))(
  ( (IArray!18982 (innerList!9548 List!30530)) )
))
(declare-datatypes ((Conc!9488 0))(
  ( (Node!9488 (left!23491 Conc!9488) (right!23821 Conc!9488) (csize!19206 Int) (cheight!9699 Int)) (Leaf!14540 (xs!12488 IArray!18981) (csize!19207 Int)) (Empty!9488) )
))
(declare-datatypes ((BalanceConc!18590 0))(
  ( (BalanceConc!18591 (c!422829 Conc!9488)) )
))
(declare-datatypes ((TokenValueInjection!9130 0))(
  ( (TokenValueInjection!9131 (toValue!6537 Int) (toChars!6396 Int)) )
))
(declare-datatypes ((String!34109 0))(
  ( (String!34110 (value!149359 String)) )
))
(declare-datatypes ((Rule!9046 0))(
  ( (Rule!9047 (regex!4623 Regex!7767) (tag!5117 String!34109) (isSeparator!4623 Bool) (transformation!4623 TokenValueInjection!9130)) )
))
(declare-datatypes ((List!30531 0))(
  ( (Nil!30431) (Cons!30431 (h!35851 Rule!9046) (t!216260 List!30531)) )
))
(declare-fun rules!1726 () List!30531)

(get-info :version)

(assert (= (and b!2629639 ((_ is Cons!30431) rules!1726)) b!2629670))

(declare-fun order!16439 () Int)

(declare-fun order!16441 () Int)

(declare-fun dynLambda!13011 (Int Int) Int)

(declare-fun dynLambda!13012 (Int Int) Int)

(assert (=> b!2629672 (< (dynLambda!13011 order!16439 (toValue!6537 (transformation!4623 (h!35851 rules!1726)))) (dynLambda!13012 order!16441 lambda!98590))))

(declare-fun order!16443 () Int)

(declare-fun dynLambda!13013 (Int Int) Int)

(assert (=> b!2629672 (< (dynLambda!13013 order!16443 (toChars!6396 (transformation!4623 (h!35851 rules!1726)))) (dynLambda!13012 order!16441 lambda!98590))))

(assert (=> b!2629639 true))

(declare-fun tp!833728 () Bool)

(declare-fun b!2629638 () Bool)

(declare-fun e!1659110 () Bool)

(declare-datatypes ((Token!8716 0))(
  ( (Token!8717 (value!149360 TokenValue!4845) (rule!7005 Rule!9046) (size!23528 Int) (originalCharacters!5389 List!30530)) )
))
(declare-fun separatorToken!156 () Token!8716)

(declare-fun e!1659103 () Bool)

(declare-fun inv!41236 (String!34109) Bool)

(declare-fun inv!41241 (TokenValueInjection!9130) Bool)

(assert (=> b!2629638 (= e!1659103 (and tp!833728 (inv!41236 (tag!5117 (rule!7005 separatorToken!156))) (inv!41241 (transformation!4623 (rule!7005 separatorToken!156))) e!1659110))))

(declare-fun e!1659107 () Bool)

(declare-fun e!1659108 () Bool)

(assert (=> b!2629639 (= e!1659107 e!1659108)))

(declare-fun res!1107106 () Bool)

(assert (=> b!2629639 (=> res!1107106 e!1659108)))

(declare-fun lt!925256 () Bool)

(declare-datatypes ((tuple2!29950 0))(
  ( (tuple2!29951 (_1!17517 Token!8716) (_2!17517 BalanceConc!18590)) )
))
(declare-datatypes ((Option!6014 0))(
  ( (None!6013) (Some!6013 (v!32400 tuple2!29950)) )
))
(declare-fun lt!925271 () Option!6014)

(declare-fun lt!925270 () Token!8716)

(assert (=> b!2629639 (= res!1107106 (or (and (not lt!925256) (= (_1!17517 (v!32400 lt!925271)) lt!925270)) (and (not lt!925256) (not (= (_1!17517 (v!32400 lt!925271)) lt!925270))) (not ((_ is None!6013) lt!925271))))))

(assert (=> b!2629639 (= lt!925256 (not ((_ is Some!6013) lt!925271)))))

(declare-datatypes ((LexerInterface!4220 0))(
  ( (LexerInterfaceExt!4217 (__x!19524 Int)) (Lexer!4218) )
))
(declare-fun thiss!14197 () LexerInterface!4220)

(declare-fun lt!925269 () BalanceConc!18590)

(declare-fun lt!925263 () BalanceConc!18590)

(declare-fun maxPrefixZipperSequence!950 (LexerInterface!4220 List!30531 BalanceConc!18590) Option!6014)

(declare-fun ++!7409 (BalanceConc!18590 BalanceConc!18590) BalanceConc!18590)

(assert (=> b!2629639 (= lt!925271 (maxPrefixZipperSequence!950 thiss!14197 rules!1726 (++!7409 lt!925269 lt!925263)))))

(declare-fun charsOf!2914 (Token!8716) BalanceConc!18590)

(assert (=> b!2629639 (= lt!925269 (charsOf!2914 lt!925270))))

(declare-datatypes ((List!30532 0))(
  ( (Nil!30432) (Cons!30432 (h!35852 Token!8716) (t!216261 List!30532)) )
))
(declare-datatypes ((IArray!18983 0))(
  ( (IArray!18984 (innerList!9549 List!30532)) )
))
(declare-datatypes ((Conc!9489 0))(
  ( (Node!9489 (left!23492 Conc!9489) (right!23822 Conc!9489) (csize!19208 Int) (cheight!9700 Int)) (Leaf!14541 (xs!12489 IArray!18983) (csize!19209 Int)) (Empty!9489) )
))
(declare-datatypes ((BalanceConc!18592 0))(
  ( (BalanceConc!18593 (c!422830 Conc!9489)) )
))
(declare-fun v!6381 () BalanceConc!18592)

(declare-fun from!862 () Int)

(declare-fun printWithSeparatorTokenWhenNeededRec!498 (LexerInterface!4220 List!30531 BalanceConc!18592 Token!8716 Int) BalanceConc!18590)

(assert (=> b!2629639 (= lt!925263 (printWithSeparatorTokenWhenNeededRec!498 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!925259 () List!30532)

(declare-datatypes ((Unit!44455 0))(
  ( (Unit!44456) )
))
(declare-fun lt!925272 () Unit!44455)

(declare-fun forallContained!979 (List!30532 Int Token!8716) Unit!44455)

(assert (=> b!2629639 (= lt!925272 (forallContained!979 lt!925259 lambda!98590 lt!925270))))

(declare-fun tp!833729 () Bool)

(declare-fun b!2629640 () Bool)

(declare-fun e!1659119 () Bool)

(declare-fun inv!21 (TokenValue!4845) Bool)

(assert (=> b!2629640 (= e!1659119 (and (inv!21 (value!149360 separatorToken!156)) e!1659103 tp!833729))))

(declare-fun b!2629641 () Bool)

(declare-fun e!1659118 () Bool)

(assert (=> b!2629641 (= e!1659118 true)))

(assert (=> b!2629641 false))

(declare-fun lt!925261 () Unit!44455)

(declare-fun lt!925260 () List!30530)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!795 (LexerInterface!4220 List!30531 List!30530 List!30530) Unit!44455)

(declare-fun list!11438 (BalanceConc!18590) List!30530)

(assert (=> b!2629641 (= lt!925261 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!795 thiss!14197 rules!1726 lt!925260 (list!11438 lt!925263)))))

(declare-fun b!2629642 () Bool)

(declare-fun res!1107112 () Bool)

(declare-fun e!1659104 () Bool)

(assert (=> b!2629642 (=> (not res!1107112) (not e!1659104))))

(declare-fun rulesProduceIndividualToken!1932 (LexerInterface!4220 List!30531 Token!8716) Bool)

(assert (=> b!2629642 (= res!1107112 (rulesProduceIndividualToken!1932 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2629643 () Bool)

(declare-fun res!1107110 () Bool)

(assert (=> b!2629643 (=> (not res!1107110) (not e!1659104))))

(declare-fun rulesInvariant!3720 (LexerInterface!4220 List!30531) Bool)

(assert (=> b!2629643 (= res!1107110 (rulesInvariant!3720 thiss!14197 rules!1726))))

(declare-fun b!2629644 () Bool)

(declare-fun e!1659115 () Bool)

(assert (=> b!2629644 (= e!1659104 e!1659115)))

(declare-fun res!1107109 () Bool)

(assert (=> b!2629644 (=> (not res!1107109) (not e!1659115))))

(declare-fun lt!925264 () Int)

(assert (=> b!2629644 (= res!1107109 (< from!862 lt!925264))))

(declare-fun lt!925273 () Unit!44455)

(declare-fun lemmaContentSubsetPreservesForall!292 (List!30532 List!30532 Int) Unit!44455)

(declare-fun dropList!926 (BalanceConc!18592 Int) List!30532)

(assert (=> b!2629644 (= lt!925273 (lemmaContentSubsetPreservesForall!292 lt!925259 (dropList!926 v!6381 from!862) lambda!98589))))

(declare-fun list!11439 (BalanceConc!18592) List!30532)

(assert (=> b!2629644 (= lt!925259 (list!11439 v!6381))))

(declare-fun b!2629645 () Bool)

(declare-fun res!1107097 () Bool)

(assert (=> b!2629645 (=> res!1107097 e!1659118)))

(declare-fun isEmpty!17361 (BalanceConc!18592) Bool)

(declare-datatypes ((tuple2!29952 0))(
  ( (tuple2!29953 (_1!17518 BalanceConc!18592) (_2!17518 BalanceConc!18590)) )
))
(declare-fun lex!1892 (LexerInterface!4220 List!30531 BalanceConc!18590) tuple2!29952)

(declare-fun seqFromList!3179 (List!30530) BalanceConc!18590)

(assert (=> b!2629645 (= res!1107097 (isEmpty!17361 (_1!17518 (lex!1892 thiss!14197 rules!1726 (seqFromList!3179 lt!925260)))))))

(declare-fun b!2629647 () Bool)

(declare-fun res!1107099 () Bool)

(assert (=> b!2629647 (=> (not res!1107099) (not e!1659104))))

(declare-fun sepAndNonSepRulesDisjointChars!1196 (List!30531 List!30531) Bool)

(assert (=> b!2629647 (= res!1107099 (sepAndNonSepRulesDisjointChars!1196 rules!1726 rules!1726))))

(declare-fun b!2629648 () Bool)

(declare-fun res!1107107 () Bool)

(assert (=> b!2629648 (=> (not res!1107107) (not e!1659104))))

(declare-fun isEmpty!17362 (List!30531) Bool)

(assert (=> b!2629648 (= res!1107107 (not (isEmpty!17362 rules!1726)))))

(declare-fun b!2629649 () Bool)

(declare-fun e!1659111 () Bool)

(declare-fun tp!833732 () Bool)

(declare-fun inv!41242 (Conc!9489) Bool)

(assert (=> b!2629649 (= e!1659111 (and (inv!41242 (c!422830 v!6381)) tp!833732))))

(declare-fun b!2629650 () Bool)

(declare-fun e!1659105 () Bool)

(declare-fun e!1659117 () Bool)

(declare-fun tp!833730 () Bool)

(assert (=> b!2629650 (= e!1659105 (and e!1659117 tp!833730))))

(declare-fun res!1107103 () Bool)

(assert (=> b!2629651 (=> (not res!1107103) (not e!1659104))))

(declare-fun forall!6355 (BalanceConc!18592 Int) Bool)

(assert (=> b!2629651 (= res!1107103 (forall!6355 v!6381 lambda!98589))))

(declare-fun b!2629652 () Bool)

(declare-fun res!1107111 () Bool)

(assert (=> b!2629652 (=> res!1107111 e!1659107)))

(declare-fun contains!5748 (List!30532 Token!8716) Bool)

(assert (=> b!2629652 (= res!1107111 (not (contains!5748 lt!925259 lt!925270)))))

(declare-fun b!2629653 () Bool)

(declare-fun e!1659109 () Bool)

(assert (=> b!2629653 (= e!1659109 e!1659118)))

(declare-fun res!1107108 () Bool)

(assert (=> b!2629653 (=> res!1107108 e!1659118)))

(declare-fun lt!925257 () List!30530)

(assert (=> b!2629653 (= res!1107108 (not (= lt!925257 lt!925260)))))

(assert (=> b!2629653 (= lt!925260 (list!11438 lt!925269))))

(declare-fun b!2629654 () Bool)

(assert (=> b!2629654 (= e!1659115 (not e!1659107))))

(declare-fun res!1107100 () Bool)

(assert (=> b!2629654 (=> res!1107100 e!1659107)))

(declare-fun contains!5749 (BalanceConc!18592 Token!8716) Bool)

(assert (=> b!2629654 (= res!1107100 (not (contains!5749 v!6381 lt!925270)))))

(declare-fun apply!7228 (BalanceConc!18592 Int) Token!8716)

(assert (=> b!2629654 (= lt!925270 (apply!7228 v!6381 from!862))))

(declare-fun lt!925258 () List!30532)

(declare-fun tail!4260 (List!30532) List!30532)

(declare-fun drop!1619 (List!30532 Int) List!30532)

(assert (=> b!2629654 (= (tail!4260 lt!925258) (drop!1619 lt!925259 (+ 1 from!862)))))

(declare-fun lt!925268 () Unit!44455)

(declare-fun lemmaDropTail!808 (List!30532 Int) Unit!44455)

(assert (=> b!2629654 (= lt!925268 (lemmaDropTail!808 lt!925259 from!862))))

(declare-fun head!6022 (List!30532) Token!8716)

(declare-fun apply!7229 (List!30532 Int) Token!8716)

(assert (=> b!2629654 (= (head!6022 lt!925258) (apply!7229 lt!925259 from!862))))

(assert (=> b!2629654 (= lt!925258 (drop!1619 lt!925259 from!862))))

(declare-fun lt!925267 () Unit!44455)

(declare-fun lemmaDropApply!834 (List!30532 Int) Unit!44455)

(assert (=> b!2629654 (= lt!925267 (lemmaDropApply!834 lt!925259 from!862))))

(declare-fun b!2629655 () Bool)

(declare-fun e!1659116 () Bool)

(assert (=> b!2629655 (= e!1659116 e!1659104)))

(declare-fun res!1107104 () Bool)

(assert (=> b!2629655 (=> (not res!1107104) (not e!1659104))))

(assert (=> b!2629655 (= res!1107104 (<= from!862 lt!925264))))

(declare-fun size!23529 (BalanceConc!18592) Int)

(assert (=> b!2629655 (= lt!925264 (size!23529 v!6381))))

(declare-fun b!2629656 () Bool)

(assert (=> b!2629656 (= e!1659108 e!1659109)))

(declare-fun res!1107101 () Bool)

(assert (=> b!2629656 (=> res!1107101 e!1659109)))

(declare-fun lt!925262 () List!30530)

(assert (=> b!2629656 (= res!1107101 (not (= lt!925262 lt!925257)))))

(declare-fun printList!1160 (LexerInterface!4220 List!30532) List!30530)

(assert (=> b!2629656 (= lt!925257 (printList!1160 thiss!14197 (Cons!30432 lt!925270 Nil!30432)))))

(declare-fun lt!925265 () BalanceConc!18590)

(assert (=> b!2629656 (= lt!925262 (list!11438 lt!925265))))

(declare-fun lt!925266 () BalanceConc!18592)

(declare-fun printTailRec!1119 (LexerInterface!4220 BalanceConc!18592 Int BalanceConc!18590) BalanceConc!18590)

(assert (=> b!2629656 (= lt!925265 (printTailRec!1119 thiss!14197 lt!925266 0 (BalanceConc!18591 Empty!9488)))))

(declare-fun print!1630 (LexerInterface!4220 BalanceConc!18592) BalanceConc!18590)

(assert (=> b!2629656 (= lt!925265 (print!1630 thiss!14197 lt!925266))))

(declare-fun singletonSeq!2049 (Token!8716) BalanceConc!18592)

(assert (=> b!2629656 (= lt!925266 (singletonSeq!2049 lt!925270))))

(declare-fun b!2629657 () Bool)

(declare-fun res!1107113 () Bool)

(assert (=> b!2629657 (=> res!1107113 e!1659118)))

(assert (=> b!2629657 (= res!1107113 (not (rulesProduceIndividualToken!1932 thiss!14197 rules!1726 lt!925270)))))

(declare-fun e!1659113 () Bool)

(assert (=> b!2629658 (= e!1659113 (and tp!833733 tp!833731))))

(declare-fun b!2629659 () Bool)

(declare-fun res!1107098 () Bool)

(assert (=> b!2629659 (=> (not res!1107098) (not e!1659104))))

(declare-fun rulesProduceEachTokenIndividually!1040 (LexerInterface!4220 List!30531 BalanceConc!18592) Bool)

(assert (=> b!2629659 (= res!1107098 (rulesProduceEachTokenIndividually!1040 thiss!14197 rules!1726 v!6381))))

(assert (=> b!2629660 (= e!1659110 (and tp!833726 tp!833727))))

(declare-fun b!2629661 () Bool)

(declare-fun tp!833734 () Bool)

(assert (=> b!2629661 (= e!1659117 (and tp!833734 (inv!41236 (tag!5117 (h!35851 rules!1726))) (inv!41241 (transformation!4623 (h!35851 rules!1726))) e!1659113))))

(declare-fun b!2629646 () Bool)

(declare-fun res!1107102 () Bool)

(assert (=> b!2629646 (=> (not res!1107102) (not e!1659104))))

(assert (=> b!2629646 (= res!1107102 (isSeparator!4623 (rule!7005 separatorToken!156)))))

(declare-fun res!1107105 () Bool)

(assert (=> start!255642 (=> (not res!1107105) (not e!1659116))))

(assert (=> start!255642 (= res!1107105 (and ((_ is Lexer!4218) thiss!14197) (>= from!862 0)))))

(assert (=> start!255642 e!1659116))

(assert (=> start!255642 true))

(assert (=> start!255642 e!1659105))

(declare-fun inv!41243 (Token!8716) Bool)

(assert (=> start!255642 (and (inv!41243 separatorToken!156) e!1659119)))

(declare-fun inv!41244 (BalanceConc!18592) Bool)

(assert (=> start!255642 (and (inv!41244 v!6381) e!1659111)))

(assert (= (and start!255642 res!1107105) b!2629655))

(assert (= (and b!2629655 res!1107104) b!2629648))

(assert (= (and b!2629648 res!1107107) b!2629643))

(assert (= (and b!2629643 res!1107110) b!2629659))

(assert (= (and b!2629659 res!1107098) b!2629642))

(assert (= (and b!2629642 res!1107112) b!2629646))

(assert (= (and b!2629646 res!1107102) b!2629651))

(assert (= (and b!2629651 res!1107103) b!2629647))

(assert (= (and b!2629647 res!1107099) b!2629644))

(assert (= (and b!2629644 res!1107109) b!2629654))

(assert (= (and b!2629654 (not res!1107100)) b!2629652))

(assert (= (and b!2629652 (not res!1107111)) b!2629639))

(assert (= (and b!2629639 (not res!1107106)) b!2629656))

(assert (= (and b!2629656 (not res!1107101)) b!2629653))

(assert (= (and b!2629653 (not res!1107108)) b!2629657))

(assert (= (and b!2629657 (not res!1107113)) b!2629645))

(assert (= (and b!2629645 (not res!1107097)) b!2629641))

(assert (= b!2629661 b!2629658))

(assert (= b!2629650 b!2629661))

(assert (= (and start!255642 ((_ is Cons!30431) rules!1726)) b!2629650))

(assert (= b!2629638 b!2629660))

(assert (= b!2629640 b!2629638))

(assert (= start!255642 b!2629640))

(assert (= start!255642 b!2629649))

(declare-fun m!2972727 () Bool)

(assert (=> b!2629642 m!2972727))

(declare-fun m!2972729 () Bool)

(assert (=> b!2629661 m!2972729))

(declare-fun m!2972731 () Bool)

(assert (=> b!2629661 m!2972731))

(declare-fun m!2972733 () Bool)

(assert (=> b!2629648 m!2972733))

(declare-fun m!2972735 () Bool)

(assert (=> b!2629659 m!2972735))

(declare-fun m!2972737 () Bool)

(assert (=> b!2629643 m!2972737))

(declare-fun m!2972739 () Bool)

(assert (=> b!2629645 m!2972739))

(assert (=> b!2629645 m!2972739))

(declare-fun m!2972741 () Bool)

(assert (=> b!2629645 m!2972741))

(declare-fun m!2972743 () Bool)

(assert (=> b!2629645 m!2972743))

(declare-fun m!2972745 () Bool)

(assert (=> b!2629640 m!2972745))

(declare-fun m!2972747 () Bool)

(assert (=> b!2629639 m!2972747))

(declare-fun m!2972749 () Bool)

(assert (=> b!2629639 m!2972749))

(declare-fun m!2972751 () Bool)

(assert (=> b!2629639 m!2972751))

(declare-fun m!2972753 () Bool)

(assert (=> b!2629639 m!2972753))

(declare-fun m!2972755 () Bool)

(assert (=> b!2629639 m!2972755))

(assert (=> b!2629639 m!2972749))

(declare-fun m!2972757 () Bool)

(assert (=> b!2629652 m!2972757))

(declare-fun m!2972759 () Bool)

(assert (=> b!2629653 m!2972759))

(declare-fun m!2972761 () Bool)

(assert (=> start!255642 m!2972761))

(declare-fun m!2972763 () Bool)

(assert (=> start!255642 m!2972763))

(declare-fun m!2972765 () Bool)

(assert (=> b!2629649 m!2972765))

(declare-fun m!2972767 () Bool)

(assert (=> b!2629647 m!2972767))

(declare-fun m!2972769 () Bool)

(assert (=> b!2629657 m!2972769))

(declare-fun m!2972771 () Bool)

(assert (=> b!2629656 m!2972771))

(declare-fun m!2972773 () Bool)

(assert (=> b!2629656 m!2972773))

(declare-fun m!2972775 () Bool)

(assert (=> b!2629656 m!2972775))

(declare-fun m!2972777 () Bool)

(assert (=> b!2629656 m!2972777))

(declare-fun m!2972779 () Bool)

(assert (=> b!2629656 m!2972779))

(declare-fun m!2972781 () Bool)

(assert (=> b!2629651 m!2972781))

(declare-fun m!2972783 () Bool)

(assert (=> b!2629641 m!2972783))

(assert (=> b!2629641 m!2972783))

(declare-fun m!2972785 () Bool)

(assert (=> b!2629641 m!2972785))

(declare-fun m!2972787 () Bool)

(assert (=> b!2629644 m!2972787))

(assert (=> b!2629644 m!2972787))

(declare-fun m!2972789 () Bool)

(assert (=> b!2629644 m!2972789))

(declare-fun m!2972791 () Bool)

(assert (=> b!2629644 m!2972791))

(declare-fun m!2972793 () Bool)

(assert (=> b!2629654 m!2972793))

(declare-fun m!2972795 () Bool)

(assert (=> b!2629654 m!2972795))

(declare-fun m!2972797 () Bool)

(assert (=> b!2629654 m!2972797))

(declare-fun m!2972799 () Bool)

(assert (=> b!2629654 m!2972799))

(declare-fun m!2972801 () Bool)

(assert (=> b!2629654 m!2972801))

(declare-fun m!2972803 () Bool)

(assert (=> b!2629654 m!2972803))

(declare-fun m!2972805 () Bool)

(assert (=> b!2629654 m!2972805))

(declare-fun m!2972807 () Bool)

(assert (=> b!2629654 m!2972807))

(declare-fun m!2972809 () Bool)

(assert (=> b!2629654 m!2972809))

(declare-fun m!2972811 () Bool)

(assert (=> b!2629638 m!2972811))

(declare-fun m!2972813 () Bool)

(assert (=> b!2629638 m!2972813))

(declare-fun m!2972815 () Bool)

(assert (=> b!2629655 m!2972815))

(check-sat (not b!2629651) (not b!2629649) (not b!2629639) b_and!192641 (not b!2629653) (not b!2629657) (not b!2629645) (not b!2629640) (not b!2629641) (not b!2629644) (not b!2629656) (not b!2629638) (not b!2629655) (not b!2629661) b_and!192639 b_and!192637 (not start!255642) (not b_next!74783) (not b!2629670) (not b!2629659) (not b!2629648) (not b!2629642) (not b!2629650) (not b!2629652) (not b_next!74787) (not b!2629654) (not b!2629647) (not b!2629643) b_and!192635 (not b_next!74781) (not b_next!74785))
(check-sat b_and!192641 b_and!192639 b_and!192637 (not b_next!74783) (not b_next!74787) b_and!192635 (not b_next!74781) (not b_next!74785))
