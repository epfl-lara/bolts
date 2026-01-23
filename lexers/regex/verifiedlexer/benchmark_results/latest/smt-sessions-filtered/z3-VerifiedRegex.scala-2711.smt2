; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!145636 () Bool)

(assert start!145636)

(declare-fun b!1565339 () Bool)

(declare-fun res!697797 () Bool)

(declare-fun e!1005365 () Bool)

(assert (=> b!1565339 (=> (not res!697797) (not e!1005365))))

(declare-datatypes ((List!17098 0))(
  ( (Nil!17028) (Cons!17028 (h!22429 (_ BitVec 16)) (t!141743 List!17098)) )
))
(declare-datatypes ((TokenValue!3073 0))(
  ( (FloatLiteralValue!6146 (text!21956 List!17098)) (TokenValueExt!3072 (__x!11448 Int)) (Broken!15365 (value!94662 List!17098)) (Object!3142) (End!3073) (Def!3073) (Underscore!3073) (Match!3073) (Else!3073) (Error!3073) (Case!3073) (If!3073) (Extends!3073) (Abstract!3073) (Class!3073) (Val!3073) (DelimiterValue!6146 (del!3133 List!17098)) (KeywordValue!3079 (value!94663 List!17098)) (CommentValue!6146 (value!94664 List!17098)) (WhitespaceValue!6146 (value!94665 List!17098)) (IndentationValue!3073 (value!94666 List!17098)) (String!19696) (Int32!3073) (Broken!15366 (value!94667 List!17098)) (Boolean!3074) (Unit!26192) (OperatorValue!3076 (op!3133 List!17098)) (IdentifierValue!6146 (value!94668 List!17098)) (IdentifierValue!6147 (value!94669 List!17098)) (WhitespaceValue!6147 (value!94670 List!17098)) (True!6146) (False!6146) (Broken!15367 (value!94671 List!17098)) (Broken!15368 (value!94672 List!17098)) (True!6147) (RightBrace!3073) (RightBracket!3073) (Colon!3073) (Null!3073) (Comma!3073) (LeftBracket!3073) (False!6147) (LeftBrace!3073) (ImaginaryLiteralValue!3073 (text!21957 List!17098)) (StringLiteralValue!9219 (value!94673 List!17098)) (EOFValue!3073 (value!94674 List!17098)) (IdentValue!3073 (value!94675 List!17098)) (DelimiterValue!6147 (value!94676 List!17098)) (DedentValue!3073 (value!94677 List!17098)) (NewLineValue!3073 (value!94678 List!17098)) (IntegerValue!9219 (value!94679 (_ BitVec 32)) (text!21958 List!17098)) (IntegerValue!9220 (value!94680 Int) (text!21959 List!17098)) (Times!3073) (Or!3073) (Equal!3073) (Minus!3073) (Broken!15369 (value!94681 List!17098)) (And!3073) (Div!3073) (LessEqual!3073) (Mod!3073) (Concat!7384) (Not!3073) (Plus!3073) (SpaceValue!3073 (value!94682 List!17098)) (IntegerValue!9221 (value!94683 Int) (text!21960 List!17098)) (StringLiteralValue!9220 (text!21961 List!17098)) (FloatLiteralValue!6147 (text!21962 List!17098)) (BytesLiteralValue!3073 (value!94684 List!17098)) (CommentValue!6147 (value!94685 List!17098)) (StringLiteralValue!9221 (value!94686 List!17098)) (ErrorTokenValue!3073 (msg!3134 List!17098)) )
))
(declare-datatypes ((C!8796 0))(
  ( (C!8797 (val!4994 Int)) )
))
(declare-datatypes ((List!17099 0))(
  ( (Nil!17029) (Cons!17029 (h!22430 C!8796) (t!141744 List!17099)) )
))
(declare-datatypes ((IArray!11233 0))(
  ( (IArray!11234 (innerList!5674 List!17099)) )
))
(declare-datatypes ((Conc!5614 0))(
  ( (Node!5614 (left!13803 Conc!5614) (right!14133 Conc!5614) (csize!11458 Int) (cheight!5825 Int)) (Leaf!8326 (xs!8414 IArray!11233) (csize!11459 Int)) (Empty!5614) )
))
(declare-datatypes ((BalanceConc!11172 0))(
  ( (BalanceConc!11173 (c!253626 Conc!5614)) )
))
(declare-datatypes ((Regex!4311 0))(
  ( (ElementMatch!4311 (c!253627 C!8796)) (Concat!7385 (regOne!9134 Regex!4311) (regTwo!9134 Regex!4311)) (EmptyExpr!4311) (Star!4311 (reg!4640 Regex!4311)) (EmptyLang!4311) (Union!4311 (regOne!9135 Regex!4311) (regTwo!9135 Regex!4311)) )
))
(declare-datatypes ((String!19697 0))(
  ( (String!19698 (value!94687 String)) )
))
(declare-datatypes ((TokenValueInjection!5806 0))(
  ( (TokenValueInjection!5807 (toValue!4370 Int) (toChars!4229 Int)) )
))
(declare-datatypes ((Rule!5766 0))(
  ( (Rule!5767 (regex!2983 Regex!4311) (tag!3247 String!19697) (isSeparator!2983 Bool) (transformation!2983 TokenValueInjection!5806)) )
))
(declare-datatypes ((Token!5532 0))(
  ( (Token!5533 (value!94688 TokenValue!3073) (rule!4769 Rule!5766) (size!13802 Int) (originalCharacters!3797 List!17099)) )
))
(declare-datatypes ((List!17100 0))(
  ( (Nil!17030) (Cons!17030 (h!22431 Token!5532) (t!141745 List!17100)) )
))
(declare-datatypes ((IArray!11235 0))(
  ( (IArray!11236 (innerList!5675 List!17100)) )
))
(declare-datatypes ((Conc!5615 0))(
  ( (Node!5615 (left!13804 Conc!5615) (right!14134 Conc!5615) (csize!11460 Int) (cheight!5826 Int)) (Leaf!8327 (xs!8415 IArray!11235) (csize!11461 Int)) (Empty!5615) )
))
(declare-datatypes ((BalanceConc!11174 0))(
  ( (BalanceConc!11175 (c!253628 Conc!5615)) )
))
(declare-datatypes ((List!17101 0))(
  ( (Nil!17031) (Cons!17031 (h!22432 Rule!5766) (t!141746 List!17101)) )
))
(declare-datatypes ((PrintableTokens!1184 0))(
  ( (PrintableTokens!1185 (rules!12084 List!17101) (tokens!2198 BalanceConc!11174)) )
))
(declare-fun thiss!10002 () PrintableTokens!1184)

(declare-datatypes ((LexerInterface!2612 0))(
  ( (LexerInterfaceExt!2609 (__x!11449 Int)) (Lexer!2610) )
))
(declare-fun rulesInvariant!2289 (LexerInterface!2612 List!17101) Bool)

(assert (=> b!1565339 (= res!697797 (rulesInvariant!2289 Lexer!2610 (rules!12084 thiss!10002)))))

(declare-fun b!1565340 () Bool)

(declare-fun e!1005366 () Bool)

(declare-fun tp!461045 () Bool)

(declare-fun inv!22394 (Conc!5615) Bool)

(assert (=> b!1565340 (= e!1005366 (and (inv!22394 (c!253628 (tokens!2198 thiss!10002))) tp!461045))))

(declare-fun b!1565341 () Bool)

(declare-fun res!697798 () Bool)

(assert (=> b!1565341 (=> (not res!697798) (not e!1005365))))

(declare-fun lt!541850 () List!17100)

(declare-fun rulesProduceEachTokenIndividuallyList!828 (LexerInterface!2612 List!17101 List!17100) Bool)

(assert (=> b!1565341 (= res!697798 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) lt!541850))))

(declare-fun b!1565342 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!319 (LexerInterface!2612 List!17100 List!17101) Bool)

(assert (=> b!1565342 (= e!1005365 (not (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 lt!541850 (rules!12084 thiss!10002))))))

(declare-fun res!697799 () Bool)

(assert (=> start!145636 (=> (not res!697799) (not e!1005365))))

(declare-fun isEmpty!10196 (List!17101) Bool)

(assert (=> start!145636 (= res!697799 (not (isEmpty!10196 (rules!12084 thiss!10002))))))

(declare-fun list!6549 (BalanceConc!11174) List!17100)

(assert (=> start!145636 (= lt!541850 (list!6549 (tokens!2198 thiss!10002)))))

(assert (=> start!145636 e!1005365))

(declare-fun e!1005364 () Bool)

(declare-fun inv!22395 (PrintableTokens!1184) Bool)

(assert (=> start!145636 (and (inv!22395 thiss!10002) e!1005364)))

(declare-fun tp!461046 () Bool)

(declare-fun b!1565343 () Bool)

(declare-fun inv!22396 (BalanceConc!11174) Bool)

(assert (=> b!1565343 (= e!1005364 (and tp!461046 (inv!22396 (tokens!2198 thiss!10002)) e!1005366))))

(assert (= (and start!145636 res!697799) b!1565339))

(assert (= (and b!1565339 res!697797) b!1565341))

(assert (= (and b!1565341 res!697798) b!1565342))

(assert (= b!1565343 b!1565340))

(assert (= start!145636 b!1565343))

(declare-fun m!1836799 () Bool)

(assert (=> b!1565340 m!1836799))

(declare-fun m!1836801 () Bool)

(assert (=> b!1565339 m!1836801))

(declare-fun m!1836803 () Bool)

(assert (=> b!1565341 m!1836803))

(declare-fun m!1836805 () Bool)

(assert (=> b!1565343 m!1836805))

(declare-fun m!1836807 () Bool)

(assert (=> b!1565342 m!1836807))

(declare-fun m!1836809 () Bool)

(assert (=> start!145636 m!1836809))

(declare-fun m!1836811 () Bool)

(assert (=> start!145636 m!1836811))

(declare-fun m!1836813 () Bool)

(assert (=> start!145636 m!1836813))

(check-sat (not b!1565343) (not b!1565341) (not start!145636) (not b!1565340) (not b!1565339) (not b!1565342))
(check-sat)
(get-model)

(declare-fun d!463674 () Bool)

(declare-fun c!253631 () Bool)

(get-info :version)

(assert (=> d!463674 (= c!253631 ((_ is Node!5615) (c!253628 (tokens!2198 thiss!10002))))))

(declare-fun e!1005371 () Bool)

(assert (=> d!463674 (= (inv!22394 (c!253628 (tokens!2198 thiss!10002))) e!1005371)))

(declare-fun b!1565350 () Bool)

(declare-fun inv!22397 (Conc!5615) Bool)

(assert (=> b!1565350 (= e!1005371 (inv!22397 (c!253628 (tokens!2198 thiss!10002))))))

(declare-fun b!1565351 () Bool)

(declare-fun e!1005372 () Bool)

(assert (=> b!1565351 (= e!1005371 e!1005372)))

(declare-fun res!697802 () Bool)

(assert (=> b!1565351 (= res!697802 (not ((_ is Leaf!8327) (c!253628 (tokens!2198 thiss!10002)))))))

(assert (=> b!1565351 (=> res!697802 e!1005372)))

(declare-fun b!1565352 () Bool)

(declare-fun inv!22398 (Conc!5615) Bool)

(assert (=> b!1565352 (= e!1005372 (inv!22398 (c!253628 (tokens!2198 thiss!10002))))))

(assert (= (and d!463674 c!253631) b!1565350))

(assert (= (and d!463674 (not c!253631)) b!1565351))

(assert (= (and b!1565351 (not res!697802)) b!1565352))

(declare-fun m!1836815 () Bool)

(assert (=> b!1565350 m!1836815))

(declare-fun m!1836817 () Bool)

(assert (=> b!1565352 m!1836817))

(assert (=> b!1565340 d!463674))

(declare-fun d!463676 () Bool)

(declare-fun res!697805 () Bool)

(declare-fun e!1005375 () Bool)

(assert (=> d!463676 (=> (not res!697805) (not e!1005375))))

(declare-fun rulesValid!1056 (LexerInterface!2612 List!17101) Bool)

(assert (=> d!463676 (= res!697805 (rulesValid!1056 Lexer!2610 (rules!12084 thiss!10002)))))

(assert (=> d!463676 (= (rulesInvariant!2289 Lexer!2610 (rules!12084 thiss!10002)) e!1005375)))

(declare-fun b!1565355 () Bool)

(declare-datatypes ((List!17102 0))(
  ( (Nil!17032) (Cons!17032 (h!22433 String!19697) (t!141751 List!17102)) )
))
(declare-fun noDuplicateTag!1056 (LexerInterface!2612 List!17101 List!17102) Bool)

(assert (=> b!1565355 (= e!1005375 (noDuplicateTag!1056 Lexer!2610 (rules!12084 thiss!10002) Nil!17032))))

(assert (= (and d!463676 res!697805) b!1565355))

(declare-fun m!1836819 () Bool)

(assert (=> d!463676 m!1836819))

(declare-fun m!1836821 () Bool)

(assert (=> b!1565355 m!1836821))

(assert (=> b!1565339 d!463676))

(declare-fun d!463678 () Bool)

(assert (=> d!463678 (= (isEmpty!10196 (rules!12084 thiss!10002)) ((_ is Nil!17031) (rules!12084 thiss!10002)))))

(assert (=> start!145636 d!463678))

(declare-fun d!463680 () Bool)

(declare-fun list!6550 (Conc!5615) List!17100)

(assert (=> d!463680 (= (list!6549 (tokens!2198 thiss!10002)) (list!6550 (c!253628 (tokens!2198 thiss!10002))))))

(declare-fun bs!389579 () Bool)

(assert (= bs!389579 d!463680))

(declare-fun m!1836823 () Bool)

(assert (=> bs!389579 m!1836823))

(assert (=> start!145636 d!463680))

(declare-fun d!463682 () Bool)

(declare-fun res!697816 () Bool)

(declare-fun e!1005382 () Bool)

(assert (=> d!463682 (=> (not res!697816) (not e!1005382))))

(assert (=> d!463682 (= res!697816 (not (isEmpty!10196 (rules!12084 thiss!10002))))))

(assert (=> d!463682 (= (inv!22395 thiss!10002) e!1005382)))

(declare-fun b!1565366 () Bool)

(declare-fun res!697817 () Bool)

(assert (=> b!1565366 (=> (not res!697817) (not e!1005382))))

(assert (=> b!1565366 (= res!697817 (rulesInvariant!2289 Lexer!2610 (rules!12084 thiss!10002)))))

(declare-fun b!1565367 () Bool)

(declare-fun res!697818 () Bool)

(assert (=> b!1565367 (=> (not res!697818) (not e!1005382))))

(declare-fun rulesProduceEachTokenIndividually!908 (LexerInterface!2612 List!17101 BalanceConc!11174) Bool)

(assert (=> b!1565367 (= res!697818 (rulesProduceEachTokenIndividually!908 Lexer!2610 (rules!12084 thiss!10002) (tokens!2198 thiss!10002)))))

(declare-fun b!1565368 () Bool)

(declare-fun separableTokens!279 (LexerInterface!2612 BalanceConc!11174 List!17101) Bool)

(assert (=> b!1565368 (= e!1005382 (separableTokens!279 Lexer!2610 (tokens!2198 thiss!10002) (rules!12084 thiss!10002)))))

(assert (= (and d!463682 res!697816) b!1565366))

(assert (= (and b!1565366 res!697817) b!1565367))

(assert (= (and b!1565367 res!697818) b!1565368))

(assert (=> d!463682 m!1836809))

(assert (=> b!1565366 m!1836801))

(declare-fun m!1836825 () Bool)

(assert (=> b!1565367 m!1836825))

(declare-fun m!1836827 () Bool)

(assert (=> b!1565368 m!1836827))

(assert (=> start!145636 d!463682))

(declare-fun d!463684 () Bool)

(declare-fun isBalanced!1663 (Conc!5615) Bool)

(assert (=> d!463684 (= (inv!22396 (tokens!2198 thiss!10002)) (isBalanced!1663 (c!253628 (tokens!2198 thiss!10002))))))

(declare-fun bs!389580 () Bool)

(assert (= bs!389580 d!463684))

(declare-fun m!1836829 () Bool)

(assert (=> bs!389580 m!1836829))

(assert (=> b!1565343 d!463684))

(declare-fun d!463686 () Bool)

(declare-fun res!697823 () Bool)

(declare-fun e!1005387 () Bool)

(assert (=> d!463686 (=> res!697823 e!1005387)))

(assert (=> d!463686 (= res!697823 (or (not ((_ is Cons!17030) lt!541850)) (not ((_ is Cons!17030) (t!141745 lt!541850)))))))

(assert (=> d!463686 (= (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 lt!541850 (rules!12084 thiss!10002)) e!1005387)))

(declare-fun b!1565373 () Bool)

(declare-fun e!1005388 () Bool)

(assert (=> b!1565373 (= e!1005387 e!1005388)))

(declare-fun res!697824 () Bool)

(assert (=> b!1565373 (=> (not res!697824) (not e!1005388))))

(declare-fun separableTokensPredicate!598 (LexerInterface!2612 Token!5532 Token!5532 List!17101) Bool)

(assert (=> b!1565373 (= res!697824 (separableTokensPredicate!598 Lexer!2610 (h!22431 lt!541850) (h!22431 (t!141745 lt!541850)) (rules!12084 thiss!10002)))))

(declare-datatypes ((Unit!26198 0))(
  ( (Unit!26199) )
))
(declare-fun lt!541873 () Unit!26198)

(declare-fun Unit!26200 () Unit!26198)

(assert (=> b!1565373 (= lt!541873 Unit!26200)))

(declare-fun size!13804 (BalanceConc!11172) Int)

(declare-fun charsOf!1659 (Token!5532) BalanceConc!11172)

(assert (=> b!1565373 (> (size!13804 (charsOf!1659 (h!22431 (t!141745 lt!541850)))) 0)))

(declare-fun lt!541867 () Unit!26198)

(declare-fun Unit!26201 () Unit!26198)

(assert (=> b!1565373 (= lt!541867 Unit!26201)))

(declare-fun rulesProduceIndividualToken!1318 (LexerInterface!2612 List!17101 Token!5532) Bool)

(assert (=> b!1565373 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 lt!541850)))))

(declare-fun lt!541868 () Unit!26198)

(declare-fun Unit!26202 () Unit!26198)

(assert (=> b!1565373 (= lt!541868 Unit!26202)))

(assert (=> b!1565373 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 lt!541850))))

(declare-fun lt!541872 () Unit!26198)

(declare-fun lt!541870 () Unit!26198)

(assert (=> b!1565373 (= lt!541872 lt!541870)))

(assert (=> b!1565373 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 lt!541850)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 (LexerInterface!2612 List!17101 List!17100 Token!5532) Unit!26198)

(assert (=> b!1565373 (= lt!541870 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) lt!541850 (h!22431 (t!141745 lt!541850))))))

(declare-fun lt!541871 () Unit!26198)

(declare-fun lt!541869 () Unit!26198)

(assert (=> b!1565373 (= lt!541871 lt!541869)))

(assert (=> b!1565373 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 lt!541850))))

(assert (=> b!1565373 (= lt!541869 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) lt!541850 (h!22431 lt!541850)))))

(declare-fun b!1565374 () Bool)

(assert (=> b!1565374 (= e!1005388 (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))) (rules!12084 thiss!10002)))))

(assert (= (and d!463686 (not res!697823)) b!1565373))

(assert (= (and b!1565373 res!697824) b!1565374))

(declare-fun m!1836831 () Bool)

(assert (=> b!1565373 m!1836831))

(declare-fun m!1836833 () Bool)

(assert (=> b!1565373 m!1836833))

(assert (=> b!1565373 m!1836831))

(declare-fun m!1836835 () Bool)

(assert (=> b!1565373 m!1836835))

(declare-fun m!1836837 () Bool)

(assert (=> b!1565373 m!1836837))

(declare-fun m!1836839 () Bool)

(assert (=> b!1565373 m!1836839))

(declare-fun m!1836841 () Bool)

(assert (=> b!1565373 m!1836841))

(declare-fun m!1836843 () Bool)

(assert (=> b!1565373 m!1836843))

(declare-fun m!1836845 () Bool)

(assert (=> b!1565374 m!1836845))

(assert (=> b!1565342 d!463686))

(declare-fun b!1565430 () Bool)

(declare-fun e!1005429 () Bool)

(assert (=> b!1565430 (= e!1005429 true)))

(declare-fun b!1565429 () Bool)

(declare-fun e!1005428 () Bool)

(assert (=> b!1565429 (= e!1005428 e!1005429)))

(declare-fun b!1565428 () Bool)

(declare-fun e!1005427 () Bool)

(assert (=> b!1565428 (= e!1005427 e!1005428)))

(declare-fun d!463688 () Bool)

(assert (=> d!463688 e!1005427))

(assert (= b!1565429 b!1565430))

(assert (= b!1565428 b!1565429))

(assert (= (and d!463688 ((_ is Cons!17031) (rules!12084 thiss!10002))) b!1565428))

(declare-fun order!10093 () Int)

(declare-fun order!10091 () Int)

(declare-fun lambda!66200 () Int)

(declare-fun dynLambda!7589 (Int Int) Int)

(declare-fun dynLambda!7590 (Int Int) Int)

(assert (=> b!1565430 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66200))))

(declare-fun order!10095 () Int)

(declare-fun dynLambda!7591 (Int Int) Int)

(assert (=> b!1565430 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66200))))

(assert (=> d!463688 true))

(declare-fun lt!541898 () Bool)

(declare-fun forall!3952 (List!17100 Int) Bool)

(assert (=> d!463688 (= lt!541898 (forall!3952 lt!541850 lambda!66200))))

(declare-fun e!1005413 () Bool)

(assert (=> d!463688 (= lt!541898 e!1005413)))

(declare-fun res!697846 () Bool)

(assert (=> d!463688 (=> res!697846 e!1005413)))

(assert (=> d!463688 (= res!697846 (not ((_ is Cons!17030) lt!541850)))))

(assert (=> d!463688 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463688 (= (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) lt!541850) lt!541898)))

(declare-fun b!1565409 () Bool)

(declare-fun e!1005414 () Bool)

(assert (=> b!1565409 (= e!1005413 e!1005414)))

(declare-fun res!697847 () Bool)

(assert (=> b!1565409 (=> (not res!697847) (not e!1005414))))

(assert (=> b!1565409 (= res!697847 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 lt!541850)))))

(declare-fun b!1565410 () Bool)

(assert (=> b!1565410 (= e!1005414 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 lt!541850)))))

(assert (= (and d!463688 (not res!697846)) b!1565409))

(assert (= (and b!1565409 res!697847) b!1565410))

(declare-fun m!1836879 () Bool)

(assert (=> d!463688 m!1836879))

(assert (=> d!463688 m!1836809))

(assert (=> b!1565409 m!1836839))

(declare-fun m!1836881 () Bool)

(assert (=> b!1565410 m!1836881))

(assert (=> b!1565341 d!463688))

(declare-fun e!1005446 () Bool)

(declare-fun b!1565452 () Bool)

(declare-fun tp!461061 () Bool)

(declare-fun tp!461062 () Bool)

(assert (=> b!1565452 (= e!1005446 (and (inv!22394 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) tp!461062 (inv!22394 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) tp!461061))))

(declare-fun b!1565454 () Bool)

(declare-fun e!1005445 () Bool)

(declare-fun tp!461063 () Bool)

(assert (=> b!1565454 (= e!1005445 tp!461063)))

(declare-fun b!1565453 () Bool)

(declare-fun inv!22401 (IArray!11235) Bool)

(assert (=> b!1565453 (= e!1005446 (and (inv!22401 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))) e!1005445))))

(assert (=> b!1565340 (= tp!461045 (and (inv!22394 (c!253628 (tokens!2198 thiss!10002))) e!1005446))))

(assert (= (and b!1565340 ((_ is Node!5615) (c!253628 (tokens!2198 thiss!10002)))) b!1565452))

(assert (= b!1565453 b!1565454))

(assert (= (and b!1565340 ((_ is Leaf!8327) (c!253628 (tokens!2198 thiss!10002)))) b!1565453))

(declare-fun m!1836887 () Bool)

(assert (=> b!1565452 m!1836887))

(declare-fun m!1836889 () Bool)

(assert (=> b!1565452 m!1836889))

(declare-fun m!1836891 () Bool)

(assert (=> b!1565453 m!1836891))

(assert (=> b!1565340 m!1836799))

(declare-fun b!1565476 () Bool)

(declare-fun b_free!41867 () Bool)

(declare-fun b_next!42571 () Bool)

(assert (=> b!1565476 (= b_free!41867 (not b_next!42571))))

(declare-fun tp!461085 () Bool)

(declare-fun b_and!109229 () Bool)

(assert (=> b!1565476 (= tp!461085 b_and!109229)))

(declare-fun b_free!41869 () Bool)

(declare-fun b_next!42573 () Bool)

(assert (=> b!1565476 (= b_free!41869 (not b_next!42573))))

(declare-fun tp!461084 () Bool)

(declare-fun b_and!109231 () Bool)

(assert (=> b!1565476 (= tp!461084 b_and!109231)))

(declare-fun e!1005463 () Bool)

(assert (=> b!1565476 (= e!1005463 (and tp!461085 tp!461084))))

(declare-fun e!1005465 () Bool)

(declare-fun b!1565475 () Bool)

(declare-fun tp!461083 () Bool)

(declare-fun inv!22390 (String!19697) Bool)

(declare-fun inv!22403 (TokenValueInjection!5806) Bool)

(assert (=> b!1565475 (= e!1005465 (and tp!461083 (inv!22390 (tag!3247 (h!22432 (rules!12084 thiss!10002)))) (inv!22403 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) e!1005463))))

(declare-fun b!1565474 () Bool)

(declare-fun e!1005464 () Bool)

(declare-fun tp!461082 () Bool)

(assert (=> b!1565474 (= e!1005464 (and e!1005465 tp!461082))))

(assert (=> b!1565343 (= tp!461046 e!1005464)))

(assert (= b!1565475 b!1565476))

(assert (= b!1565474 b!1565475))

(assert (= (and b!1565343 ((_ is Cons!17031) (rules!12084 thiss!10002))) b!1565474))

(declare-fun m!1836897 () Bool)

(assert (=> b!1565475 m!1836897))

(declare-fun m!1836899 () Bool)

(assert (=> b!1565475 m!1836899))

(check-sat (not b!1565367) (not d!463688) (not d!463682) (not b!1565452) (not b!1565374) (not b!1565428) (not b!1565475) (not b_next!42571) (not b!1565366) (not b!1565373) (not d!463684) b_and!109231 (not b!1565350) (not b_next!42573) (not b!1565352) b_and!109229 (not b!1565368) (not d!463676) (not b!1565410) (not b!1565340) (not b!1565454) (not b!1565453) (not b!1565409) (not b!1565355) (not b!1565474) (not d!463680))
(check-sat b_and!109229 b_and!109231 (not b_next!42571) (not b_next!42573))
(get-model)

(declare-fun d!463704 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!146 (LexerInterface!2612 BalanceConc!11174 Int List!17101) Bool)

(assert (=> d!463704 (= (separableTokens!279 Lexer!2610 (tokens!2198 thiss!10002) (rules!12084 thiss!10002)) (tokensListTwoByTwoPredicateSeparable!146 Lexer!2610 (tokens!2198 thiss!10002) 0 (rules!12084 thiss!10002)))))

(declare-fun bs!389586 () Bool)

(assert (= bs!389586 d!463704))

(declare-fun m!1836963 () Bool)

(assert (=> bs!389586 m!1836963))

(assert (=> b!1565368 d!463704))

(declare-fun d!463728 () Bool)

(declare-fun res!697899 () Bool)

(declare-fun e!1005502 () Bool)

(assert (=> d!463728 (=> res!697899 e!1005502)))

(assert (=> d!463728 (= res!697899 ((_ is Nil!17031) (rules!12084 thiss!10002)))))

(assert (=> d!463728 (= (noDuplicateTag!1056 Lexer!2610 (rules!12084 thiss!10002) Nil!17032) e!1005502)))

(declare-fun b!1565526 () Bool)

(declare-fun e!1005503 () Bool)

(assert (=> b!1565526 (= e!1005502 e!1005503)))

(declare-fun res!697900 () Bool)

(assert (=> b!1565526 (=> (not res!697900) (not e!1005503))))

(declare-fun contains!3002 (List!17102 String!19697) Bool)

(assert (=> b!1565526 (= res!697900 (not (contains!3002 Nil!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))))))))

(declare-fun b!1565527 () Bool)

(assert (=> b!1565527 (= e!1005503 (noDuplicateTag!1056 Lexer!2610 (t!141746 (rules!12084 thiss!10002)) (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032)))))

(assert (= (and d!463728 (not res!697899)) b!1565526))

(assert (= (and b!1565526 res!697900) b!1565527))

(declare-fun m!1836965 () Bool)

(assert (=> b!1565526 m!1836965))

(declare-fun m!1836967 () Bool)

(assert (=> b!1565527 m!1836967))

(assert (=> b!1565355 d!463728))

(declare-fun d!463730 () Bool)

(declare-fun c!253637 () Bool)

(assert (=> d!463730 (= c!253637 ((_ is Node!5615) (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))

(declare-fun e!1005504 () Bool)

(assert (=> d!463730 (= (inv!22394 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) e!1005504)))

(declare-fun b!1565528 () Bool)

(assert (=> b!1565528 (= e!1005504 (inv!22397 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))

(declare-fun b!1565529 () Bool)

(declare-fun e!1005505 () Bool)

(assert (=> b!1565529 (= e!1005504 e!1005505)))

(declare-fun res!697901 () Bool)

(assert (=> b!1565529 (= res!697901 (not ((_ is Leaf!8327) (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> b!1565529 (=> res!697901 e!1005505)))

(declare-fun b!1565530 () Bool)

(assert (=> b!1565530 (= e!1005505 (inv!22398 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))

(assert (= (and d!463730 c!253637) b!1565528))

(assert (= (and d!463730 (not c!253637)) b!1565529))

(assert (= (and b!1565529 (not res!697901)) b!1565530))

(declare-fun m!1836969 () Bool)

(assert (=> b!1565528 m!1836969))

(declare-fun m!1836971 () Bool)

(assert (=> b!1565530 m!1836971))

(assert (=> b!1565452 d!463730))

(declare-fun d!463732 () Bool)

(declare-fun c!253638 () Bool)

(assert (=> d!463732 (= c!253638 ((_ is Node!5615) (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))

(declare-fun e!1005506 () Bool)

(assert (=> d!463732 (= (inv!22394 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) e!1005506)))

(declare-fun b!1565531 () Bool)

(assert (=> b!1565531 (= e!1005506 (inv!22397 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))

(declare-fun b!1565532 () Bool)

(declare-fun e!1005507 () Bool)

(assert (=> b!1565532 (= e!1005506 e!1005507)))

(declare-fun res!697902 () Bool)

(assert (=> b!1565532 (= res!697902 (not ((_ is Leaf!8327) (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> b!1565532 (=> res!697902 e!1005507)))

(declare-fun b!1565533 () Bool)

(assert (=> b!1565533 (= e!1005507 (inv!22398 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))

(assert (= (and d!463732 c!253638) b!1565531))

(assert (= (and d!463732 (not c!253638)) b!1565532))

(assert (= (and b!1565532 (not res!697902)) b!1565533))

(declare-fun m!1836973 () Bool)

(assert (=> b!1565531 m!1836973))

(declare-fun m!1836975 () Bool)

(assert (=> b!1565533 m!1836975))

(assert (=> b!1565452 d!463732))

(declare-fun bs!389589 () Bool)

(declare-fun d!463734 () Bool)

(assert (= bs!389589 (and d!463734 d!463688)))

(declare-fun lambda!66209 () Int)

(assert (=> bs!389589 (= lambda!66209 lambda!66200)))

(declare-fun b!1565566 () Bool)

(declare-fun e!1005525 () Bool)

(assert (=> b!1565566 (= e!1005525 true)))

(declare-fun b!1565565 () Bool)

(declare-fun e!1005524 () Bool)

(assert (=> b!1565565 (= e!1005524 e!1005525)))

(declare-fun b!1565564 () Bool)

(declare-fun e!1005523 () Bool)

(assert (=> b!1565564 (= e!1005523 e!1005524)))

(assert (=> d!463734 e!1005523))

(assert (= b!1565565 b!1565566))

(assert (= b!1565564 b!1565565))

(assert (= (and d!463734 ((_ is Cons!17031) (rules!12084 thiss!10002))) b!1565564))

(assert (=> b!1565566 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66209))))

(assert (=> b!1565566 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66209))))

(assert (=> d!463734 true))

(declare-fun e!1005522 () Bool)

(assert (=> d!463734 e!1005522))

(declare-fun res!697932 () Bool)

(assert (=> d!463734 (=> (not res!697932) (not e!1005522))))

(declare-fun lt!541921 () Bool)

(assert (=> d!463734 (= res!697932 (= lt!541921 (forall!3952 (list!6549 (tokens!2198 thiss!10002)) lambda!66209)))))

(declare-fun forall!3953 (BalanceConc!11174 Int) Bool)

(assert (=> d!463734 (= lt!541921 (forall!3953 (tokens!2198 thiss!10002) lambda!66209))))

(assert (=> d!463734 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463734 (= (rulesProduceEachTokenIndividually!908 Lexer!2610 (rules!12084 thiss!10002) (tokens!2198 thiss!10002)) lt!541921)))

(declare-fun b!1565563 () Bool)

(assert (=> b!1565563 (= e!1005522 (= lt!541921 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (list!6549 (tokens!2198 thiss!10002)))))))

(assert (= (and d!463734 res!697932) b!1565563))

(assert (=> d!463734 m!1836811))

(assert (=> d!463734 m!1836811))

(declare-fun m!1837021 () Bool)

(assert (=> d!463734 m!1837021))

(declare-fun m!1837023 () Bool)

(assert (=> d!463734 m!1837023))

(assert (=> d!463734 m!1836809))

(assert (=> b!1565563 m!1836811))

(assert (=> b!1565563 m!1836811))

(declare-fun m!1837025 () Bool)

(assert (=> b!1565563 m!1837025))

(assert (=> b!1565367 d!463734))

(declare-fun d!463744 () Bool)

(declare-fun size!13806 (List!17100) Int)

(assert (=> d!463744 (= (inv!22401 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))) (<= (size!13806 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))) 2147483647))))

(declare-fun bs!389590 () Bool)

(assert (= bs!389590 d!463744))

(declare-fun m!1837027 () Bool)

(assert (=> bs!389590 m!1837027))

(assert (=> b!1565453 d!463744))

(assert (=> b!1565340 d!463674))

(declare-fun d!463746 () Bool)

(assert (=> d!463746 (= (inv!22390 (tag!3247 (h!22432 (rules!12084 thiss!10002)))) (= (mod (str.len (value!94687 (tag!3247 (h!22432 (rules!12084 thiss!10002))))) 2) 0))))

(assert (=> b!1565475 d!463746))

(declare-fun d!463748 () Bool)

(declare-fun res!697935 () Bool)

(declare-fun e!1005528 () Bool)

(assert (=> d!463748 (=> (not res!697935) (not e!1005528))))

(declare-fun semiInverseModEq!1131 (Int Int) Bool)

(assert (=> d!463748 (= res!697935 (semiInverseModEq!1131 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))))))

(assert (=> d!463748 (= (inv!22403 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) e!1005528)))

(declare-fun b!1565569 () Bool)

(declare-fun equivClasses!1072 (Int Int) Bool)

(assert (=> b!1565569 (= e!1005528 (equivClasses!1072 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))))))

(assert (= (and d!463748 res!697935) b!1565569))

(declare-fun m!1837029 () Bool)

(assert (=> d!463748 m!1837029))

(declare-fun m!1837031 () Bool)

(assert (=> b!1565569 m!1837031))

(assert (=> b!1565475 d!463748))

(declare-fun d!463750 () Bool)

(assert (=> d!463750 true))

(declare-fun lt!541924 () Bool)

(declare-fun rulesValidInductive!899 (LexerInterface!2612 List!17101) Bool)

(assert (=> d!463750 (= lt!541924 (rulesValidInductive!899 Lexer!2610 (rules!12084 thiss!10002)))))

(declare-fun lambda!66212 () Int)

(declare-fun forall!3954 (List!17101 Int) Bool)

(assert (=> d!463750 (= lt!541924 (forall!3954 (rules!12084 thiss!10002) lambda!66212))))

(assert (=> d!463750 (= (rulesValid!1056 Lexer!2610 (rules!12084 thiss!10002)) lt!541924)))

(declare-fun bs!389591 () Bool)

(assert (= bs!389591 d!463750))

(declare-fun m!1837033 () Bool)

(assert (=> bs!389591 m!1837033))

(declare-fun m!1837035 () Bool)

(assert (=> bs!389591 m!1837035))

(assert (=> d!463676 d!463750))

(assert (=> d!463682 d!463678))

(assert (=> b!1565366 d!463676))

(declare-fun d!463752 () Bool)

(declare-fun res!697940 () Bool)

(declare-fun e!1005531 () Bool)

(assert (=> d!463752 (=> (not res!697940) (not e!1005531))))

(declare-fun list!6552 (IArray!11235) List!17100)

(assert (=> d!463752 (= res!697940 (<= (size!13806 (list!6552 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))) 512))))

(assert (=> d!463752 (= (inv!22398 (c!253628 (tokens!2198 thiss!10002))) e!1005531)))

(declare-fun b!1565576 () Bool)

(declare-fun res!697941 () Bool)

(assert (=> b!1565576 (=> (not res!697941) (not e!1005531))))

(assert (=> b!1565576 (= res!697941 (= (csize!11461 (c!253628 (tokens!2198 thiss!10002))) (size!13806 (list!6552 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1565577 () Bool)

(assert (=> b!1565577 (= e!1005531 (and (> (csize!11461 (c!253628 (tokens!2198 thiss!10002))) 0) (<= (csize!11461 (c!253628 (tokens!2198 thiss!10002))) 512)))))

(assert (= (and d!463752 res!697940) b!1565576))

(assert (= (and b!1565576 res!697941) b!1565577))

(declare-fun m!1837037 () Bool)

(assert (=> d!463752 m!1837037))

(assert (=> d!463752 m!1837037))

(declare-fun m!1837039 () Bool)

(assert (=> d!463752 m!1837039))

(assert (=> b!1565576 m!1837037))

(assert (=> b!1565576 m!1837037))

(assert (=> b!1565576 m!1837039))

(assert (=> b!1565352 d!463752))

(declare-fun d!463754 () Bool)

(declare-fun res!697946 () Bool)

(declare-fun e!1005536 () Bool)

(assert (=> d!463754 (=> res!697946 e!1005536)))

(assert (=> d!463754 (= res!697946 ((_ is Nil!17030) lt!541850))))

(assert (=> d!463754 (= (forall!3952 lt!541850 lambda!66200) e!1005536)))

(declare-fun b!1565582 () Bool)

(declare-fun e!1005537 () Bool)

(assert (=> b!1565582 (= e!1005536 e!1005537)))

(declare-fun res!697947 () Bool)

(assert (=> b!1565582 (=> (not res!697947) (not e!1005537))))

(declare-fun dynLambda!7593 (Int Token!5532) Bool)

(assert (=> b!1565582 (= res!697947 (dynLambda!7593 lambda!66200 (h!22431 lt!541850)))))

(declare-fun b!1565583 () Bool)

(assert (=> b!1565583 (= e!1005537 (forall!3952 (t!141745 lt!541850) lambda!66200))))

(assert (= (and d!463754 (not res!697946)) b!1565582))

(assert (= (and b!1565582 res!697947) b!1565583))

(declare-fun b_lambda!49255 () Bool)

(assert (=> (not b_lambda!49255) (not b!1565582)))

(declare-fun m!1837041 () Bool)

(assert (=> b!1565582 m!1837041))

(declare-fun m!1837043 () Bool)

(assert (=> b!1565583 m!1837043))

(assert (=> d!463688 d!463754))

(assert (=> d!463688 d!463678))

(declare-fun d!463756 () Bool)

(declare-fun res!697954 () Bool)

(declare-fun e!1005540 () Bool)

(assert (=> d!463756 (=> (not res!697954) (not e!1005540))))

(declare-fun size!13807 (Conc!5615) Int)

(assert (=> d!463756 (= res!697954 (= (csize!11460 (c!253628 (tokens!2198 thiss!10002))) (+ (size!13807 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (size!13807 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!463756 (= (inv!22397 (c!253628 (tokens!2198 thiss!10002))) e!1005540)))

(declare-fun b!1565590 () Bool)

(declare-fun res!697955 () Bool)

(assert (=> b!1565590 (=> (not res!697955) (not e!1005540))))

(assert (=> b!1565590 (= res!697955 (and (not (= (left!13804 (c!253628 (tokens!2198 thiss!10002))) Empty!5615)) (not (= (right!14134 (c!253628 (tokens!2198 thiss!10002))) Empty!5615))))))

(declare-fun b!1565591 () Bool)

(declare-fun res!697956 () Bool)

(assert (=> b!1565591 (=> (not res!697956) (not e!1005540))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!836 (Conc!5615) Int)

(assert (=> b!1565591 (= res!697956 (= (cheight!5826 (c!253628 (tokens!2198 thiss!10002))) (+ (max!0 (height!836 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (height!836 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 1)))))

(declare-fun b!1565592 () Bool)

(assert (=> b!1565592 (= e!1005540 (<= 0 (cheight!5826 (c!253628 (tokens!2198 thiss!10002)))))))

(assert (= (and d!463756 res!697954) b!1565590))

(assert (= (and b!1565590 res!697955) b!1565591))

(assert (= (and b!1565591 res!697956) b!1565592))

(declare-fun m!1837045 () Bool)

(assert (=> d!463756 m!1837045))

(declare-fun m!1837047 () Bool)

(assert (=> d!463756 m!1837047))

(declare-fun m!1837049 () Bool)

(assert (=> b!1565591 m!1837049))

(declare-fun m!1837051 () Bool)

(assert (=> b!1565591 m!1837051))

(assert (=> b!1565591 m!1837049))

(assert (=> b!1565591 m!1837051))

(declare-fun m!1837053 () Bool)

(assert (=> b!1565591 m!1837053))

(assert (=> b!1565350 d!463756))

(declare-fun d!463758 () Bool)

(declare-fun c!253643 () Bool)

(assert (=> d!463758 (= c!253643 ((_ is Empty!5615) (c!253628 (tokens!2198 thiss!10002))))))

(declare-fun e!1005545 () List!17100)

(assert (=> d!463758 (= (list!6550 (c!253628 (tokens!2198 thiss!10002))) e!1005545)))

(declare-fun b!1565603 () Bool)

(declare-fun e!1005546 () List!17100)

(assert (=> b!1565603 (= e!1005546 (list!6552 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))

(declare-fun b!1565604 () Bool)

(declare-fun ++!4431 (List!17100 List!17100) List!17100)

(assert (=> b!1565604 (= e!1005546 (++!4431 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1565601 () Bool)

(assert (=> b!1565601 (= e!1005545 Nil!17030)))

(declare-fun b!1565602 () Bool)

(assert (=> b!1565602 (= e!1005545 e!1005546)))

(declare-fun c!253644 () Bool)

(assert (=> b!1565602 (= c!253644 ((_ is Leaf!8327) (c!253628 (tokens!2198 thiss!10002))))))

(assert (= (and d!463758 c!253643) b!1565601))

(assert (= (and d!463758 (not c!253643)) b!1565602))

(assert (= (and b!1565602 c!253644) b!1565603))

(assert (= (and b!1565602 (not c!253644)) b!1565604))

(assert (=> b!1565603 m!1837037))

(declare-fun m!1837055 () Bool)

(assert (=> b!1565604 m!1837055))

(declare-fun m!1837057 () Bool)

(assert (=> b!1565604 m!1837057))

(assert (=> b!1565604 m!1837055))

(assert (=> b!1565604 m!1837057))

(declare-fun m!1837059 () Bool)

(assert (=> b!1565604 m!1837059))

(assert (=> d!463680 d!463758))

(declare-fun d!463760 () Bool)

(declare-fun res!697957 () Bool)

(declare-fun e!1005547 () Bool)

(assert (=> d!463760 (=> res!697957 e!1005547)))

(assert (=> d!463760 (= res!697957 (or (not ((_ is Cons!17030) (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (not ((_ is Cons!17030) (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))

(assert (=> d!463760 (= (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))) (rules!12084 thiss!10002)) e!1005547)))

(declare-fun b!1565605 () Bool)

(declare-fun e!1005548 () Bool)

(assert (=> b!1565605 (= e!1005547 e!1005548)))

(declare-fun res!697958 () Bool)

(assert (=> b!1565605 (=> (not res!697958) (not e!1005548))))

(assert (=> b!1565605 (= res!697958 (separableTokensPredicate!598 Lexer!2610 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (rules!12084 thiss!10002)))))

(declare-fun lt!541931 () Unit!26198)

(declare-fun Unit!26206 () Unit!26198)

(assert (=> b!1565605 (= lt!541931 Unit!26206)))

(assert (=> b!1565605 (> (size!13804 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) 0)))

(declare-fun lt!541925 () Unit!26198)

(declare-fun Unit!26207 () Unit!26198)

(assert (=> b!1565605 (= lt!541925 Unit!26207)))

(assert (=> b!1565605 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))

(declare-fun lt!541926 () Unit!26198)

(declare-fun Unit!26208 () Unit!26198)

(assert (=> b!1565605 (= lt!541926 Unit!26208)))

(assert (=> b!1565605 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))

(declare-fun lt!541930 () Unit!26198)

(declare-fun lt!541928 () Unit!26198)

(assert (=> b!1565605 (= lt!541930 lt!541928)))

(assert (=> b!1565605 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))

(assert (=> b!1565605 (= lt!541928 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))

(declare-fun lt!541929 () Unit!26198)

(declare-fun lt!541927 () Unit!26198)

(assert (=> b!1565605 (= lt!541929 lt!541927)))

(assert (=> b!1565605 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))

(assert (=> b!1565605 (= lt!541927 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))) (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))

(declare-fun b!1565606 () Bool)

(assert (=> b!1565606 (= e!1005548 (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (rules!12084 thiss!10002)))))

(assert (= (and d!463760 (not res!697957)) b!1565605))

(assert (= (and b!1565605 res!697958) b!1565606))

(declare-fun m!1837061 () Bool)

(assert (=> b!1565605 m!1837061))

(declare-fun m!1837063 () Bool)

(assert (=> b!1565605 m!1837063))

(assert (=> b!1565605 m!1837061))

(declare-fun m!1837065 () Bool)

(assert (=> b!1565605 m!1837065))

(declare-fun m!1837067 () Bool)

(assert (=> b!1565605 m!1837067))

(declare-fun m!1837069 () Bool)

(assert (=> b!1565605 m!1837069))

(declare-fun m!1837071 () Bool)

(assert (=> b!1565605 m!1837071))

(declare-fun m!1837073 () Bool)

(assert (=> b!1565605 m!1837073))

(declare-fun m!1837075 () Bool)

(assert (=> b!1565606 m!1837075))

(assert (=> b!1565374 d!463760))

(declare-fun bs!389592 () Bool)

(declare-fun d!463762 () Bool)

(assert (= bs!389592 (and d!463762 d!463688)))

(declare-fun lambda!66213 () Int)

(assert (=> bs!389592 (= lambda!66213 lambda!66200)))

(declare-fun bs!389593 () Bool)

(assert (= bs!389593 (and d!463762 d!463734)))

(assert (=> bs!389593 (= lambda!66213 lambda!66209)))

(declare-fun b!1565611 () Bool)

(declare-fun e!1005553 () Bool)

(assert (=> b!1565611 (= e!1005553 true)))

(declare-fun b!1565610 () Bool)

(declare-fun e!1005552 () Bool)

(assert (=> b!1565610 (= e!1005552 e!1005553)))

(declare-fun b!1565609 () Bool)

(declare-fun e!1005551 () Bool)

(assert (=> b!1565609 (= e!1005551 e!1005552)))

(assert (=> d!463762 e!1005551))

(assert (= b!1565610 b!1565611))

(assert (= b!1565609 b!1565610))

(assert (= (and d!463762 ((_ is Cons!17031) (rules!12084 thiss!10002))) b!1565609))

(assert (=> b!1565611 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66213))))

(assert (=> b!1565611 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66213))))

(assert (=> d!463762 true))

(declare-fun lt!541932 () Bool)

(assert (=> d!463762 (= lt!541932 (forall!3952 (t!141745 lt!541850) lambda!66213))))

(declare-fun e!1005549 () Bool)

(assert (=> d!463762 (= lt!541932 e!1005549)))

(declare-fun res!697959 () Bool)

(assert (=> d!463762 (=> res!697959 e!1005549)))

(assert (=> d!463762 (= res!697959 (not ((_ is Cons!17030) (t!141745 lt!541850))))))

(assert (=> d!463762 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463762 (= (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 lt!541850)) lt!541932)))

(declare-fun b!1565607 () Bool)

(declare-fun e!1005550 () Bool)

(assert (=> b!1565607 (= e!1005549 e!1005550)))

(declare-fun res!697960 () Bool)

(assert (=> b!1565607 (=> (not res!697960) (not e!1005550))))

(assert (=> b!1565607 (= res!697960 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 lt!541850))))))

(declare-fun b!1565608 () Bool)

(assert (=> b!1565608 (= e!1005550 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 (t!141745 lt!541850))))))

(assert (= (and d!463762 (not res!697959)) b!1565607))

(assert (= (and b!1565607 res!697960) b!1565608))

(declare-fun m!1837077 () Bool)

(assert (=> d!463762 m!1837077))

(assert (=> d!463762 m!1836809))

(assert (=> b!1565607 m!1836833))

(declare-fun m!1837079 () Bool)

(assert (=> b!1565608 m!1837079))

(assert (=> b!1565410 d!463762))

(declare-fun d!463764 () Bool)

(assert (=> d!463764 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 lt!541850))))

(declare-fun lt!541944 () Unit!26198)

(declare-fun choose!9342 (LexerInterface!2612 List!17101 List!17100 Token!5532) Unit!26198)

(assert (=> d!463764 (= lt!541944 (choose!9342 Lexer!2610 (rules!12084 thiss!10002) lt!541850 (h!22431 lt!541850)))))

(assert (=> d!463764 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463764 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) lt!541850 (h!22431 lt!541850)) lt!541944)))

(declare-fun bs!389596 () Bool)

(assert (= bs!389596 d!463764))

(assert (=> bs!389596 m!1836839))

(declare-fun m!1837111 () Bool)

(assert (=> bs!389596 m!1837111))

(assert (=> bs!389596 m!1836809))

(assert (=> b!1565373 d!463764))

(declare-fun d!463774 () Bool)

(declare-fun lt!541947 () Int)

(declare-fun size!13810 (List!17099) Int)

(declare-fun list!6554 (BalanceConc!11172) List!17099)

(assert (=> d!463774 (= lt!541947 (size!13810 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))

(declare-fun size!13811 (Conc!5614) Int)

(assert (=> d!463774 (= lt!541947 (size!13811 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))

(assert (=> d!463774 (= (size!13804 (charsOf!1659 (h!22431 (t!141745 lt!541850)))) lt!541947)))

(declare-fun bs!389597 () Bool)

(assert (= bs!389597 d!463774))

(assert (=> bs!389597 m!1836831))

(declare-fun m!1837113 () Bool)

(assert (=> bs!389597 m!1837113))

(assert (=> bs!389597 m!1837113))

(declare-fun m!1837115 () Bool)

(assert (=> bs!389597 m!1837115))

(declare-fun m!1837117 () Bool)

(assert (=> bs!389597 m!1837117))

(assert (=> b!1565373 d!463774))

(declare-fun d!463776 () Bool)

(declare-fun lt!541956 () Bool)

(declare-fun e!1005569 () Bool)

(assert (=> d!463776 (= lt!541956 e!1005569)))

(declare-fun res!697973 () Bool)

(assert (=> d!463776 (=> (not res!697973) (not e!1005569))))

(declare-datatypes ((tuple2!16598 0))(
  ( (tuple2!16599 (_1!9701 BalanceConc!11174) (_2!9701 BalanceConc!11172)) )
))
(declare-fun lex!1116 (LexerInterface!2612 List!17101 BalanceConc!11172) tuple2!16598)

(declare-fun print!1151 (LexerInterface!2612 BalanceConc!11174) BalanceConc!11172)

(declare-fun singletonSeq!1349 (Token!5532) BalanceConc!11174)

(assert (=> d!463776 (= res!697973 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))) (list!6549 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(declare-fun e!1005570 () Bool)

(assert (=> d!463776 (= lt!541956 e!1005570)))

(declare-fun res!697974 () Bool)

(assert (=> d!463776 (=> (not res!697974) (not e!1005570))))

(declare-fun lt!541955 () tuple2!16598)

(declare-fun size!13812 (BalanceConc!11174) Int)

(assert (=> d!463776 (= res!697974 (= (size!13812 (_1!9701 lt!541955)) 1))))

(assert (=> d!463776 (= lt!541955 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(assert (=> d!463776 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463776 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 lt!541850))) lt!541956)))

(declare-fun b!1565632 () Bool)

(declare-fun res!697975 () Bool)

(assert (=> b!1565632 (=> (not res!697975) (not e!1005570))))

(declare-fun apply!4131 (BalanceConc!11174 Int) Token!5532)

(assert (=> b!1565632 (= res!697975 (= (apply!4131 (_1!9701 lt!541955) 0) (h!22431 (t!141745 lt!541850))))))

(declare-fun b!1565633 () Bool)

(declare-fun isEmpty!10199 (BalanceConc!11172) Bool)

(assert (=> b!1565633 (= e!1005570 (isEmpty!10199 (_2!9701 lt!541955)))))

(declare-fun b!1565634 () Bool)

(assert (=> b!1565634 (= e!1005569 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))))

(assert (= (and d!463776 res!697974) b!1565632))

(assert (= (and b!1565632 res!697975) b!1565633))

(assert (= (and d!463776 res!697973) b!1565634))

(declare-fun m!1837125 () Bool)

(assert (=> d!463776 m!1837125))

(declare-fun m!1837127 () Bool)

(assert (=> d!463776 m!1837127))

(assert (=> d!463776 m!1836809))

(declare-fun m!1837129 () Bool)

(assert (=> d!463776 m!1837129))

(declare-fun m!1837131 () Bool)

(assert (=> d!463776 m!1837131))

(assert (=> d!463776 m!1837129))

(assert (=> d!463776 m!1837125))

(declare-fun m!1837133 () Bool)

(assert (=> d!463776 m!1837133))

(declare-fun m!1837135 () Bool)

(assert (=> d!463776 m!1837135))

(assert (=> d!463776 m!1837129))

(declare-fun m!1837137 () Bool)

(assert (=> b!1565632 m!1837137))

(declare-fun m!1837139 () Bool)

(assert (=> b!1565633 m!1837139))

(assert (=> b!1565634 m!1837129))

(assert (=> b!1565634 m!1837129))

(assert (=> b!1565634 m!1837125))

(assert (=> b!1565634 m!1837125))

(assert (=> b!1565634 m!1837127))

(declare-fun m!1837141 () Bool)

(assert (=> b!1565634 m!1837141))

(assert (=> b!1565373 d!463776))

(declare-fun d!463780 () Bool)

(declare-fun prefixMatchZipperSequence!393 (Regex!4311 BalanceConc!11172) Bool)

(declare-fun rulesRegex!441 (LexerInterface!2612 List!17101) Regex!4311)

(declare-fun ++!4433 (BalanceConc!11172 BalanceConc!11172) BalanceConc!11172)

(declare-fun singletonSeq!1351 (C!8796) BalanceConc!11172)

(declare-fun apply!4133 (BalanceConc!11172 Int) C!8796)

(assert (=> d!463780 (= (separableTokensPredicate!598 Lexer!2610 (h!22431 lt!541850) (h!22431 (t!141745 lt!541850)) (rules!12084 thiss!10002)) (not (prefixMatchZipperSequence!393 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-fun bs!389600 () Bool)

(assert (= bs!389600 d!463780))

(declare-fun m!1837143 () Bool)

(assert (=> bs!389600 m!1837143))

(declare-fun m!1837145 () Bool)

(assert (=> bs!389600 m!1837145))

(declare-fun m!1837147 () Bool)

(assert (=> bs!389600 m!1837147))

(declare-fun m!1837149 () Bool)

(assert (=> bs!389600 m!1837149))

(declare-fun m!1837151 () Bool)

(assert (=> bs!389600 m!1837151))

(assert (=> bs!389600 m!1837145))

(assert (=> bs!389600 m!1837143))

(assert (=> bs!389600 m!1836831))

(declare-fun m!1837153 () Bool)

(assert (=> bs!389600 m!1837153))

(assert (=> bs!389600 m!1836831))

(assert (=> bs!389600 m!1837153))

(assert (=> bs!389600 m!1837151))

(assert (=> bs!389600 m!1837149))

(assert (=> b!1565373 d!463780))

(declare-fun d!463782 () Bool)

(declare-fun lt!541959 () BalanceConc!11172)

(assert (=> d!463782 (= (list!6554 lt!541959) (originalCharacters!3797 (h!22431 (t!141745 lt!541850))))))

(declare-fun dynLambda!7594 (Int TokenValue!3073) BalanceConc!11172)

(assert (=> d!463782 (= lt!541959 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))

(assert (=> d!463782 (= (charsOf!1659 (h!22431 (t!141745 lt!541850))) lt!541959)))

(declare-fun b_lambda!49259 () Bool)

(assert (=> (not b_lambda!49259) (not d!463782)))

(declare-fun t!141770 () Bool)

(declare-fun tb!87457 () Bool)

(assert (=> (and b!1565476 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!141770) tb!87457))

(declare-fun b!1565639 () Bool)

(declare-fun e!1005573 () Bool)

(declare-fun tp!461094 () Bool)

(declare-fun inv!22405 (Conc!5614) Bool)

(assert (=> b!1565639 (= e!1005573 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) tp!461094))))

(declare-fun result!105898 () Bool)

(declare-fun inv!22406 (BalanceConc!11172) Bool)

(assert (=> tb!87457 (= result!105898 (and (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))) e!1005573))))

(assert (= tb!87457 b!1565639))

(declare-fun m!1837155 () Bool)

(assert (=> b!1565639 m!1837155))

(declare-fun m!1837157 () Bool)

(assert (=> tb!87457 m!1837157))

(assert (=> d!463782 t!141770))

(declare-fun b_and!109235 () Bool)

(assert (= b_and!109231 (and (=> t!141770 result!105898) b_and!109235)))

(declare-fun m!1837159 () Bool)

(assert (=> d!463782 m!1837159))

(declare-fun m!1837161 () Bool)

(assert (=> d!463782 m!1837161))

(assert (=> b!1565373 d!463782))

(declare-fun d!463784 () Bool)

(declare-fun lt!541961 () Bool)

(declare-fun e!1005574 () Bool)

(assert (=> d!463784 (= lt!541961 e!1005574)))

(declare-fun res!697976 () Bool)

(assert (=> d!463784 (=> (not res!697976) (not e!1005574))))

(assert (=> d!463784 (= res!697976 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))) (list!6549 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun e!1005575 () Bool)

(assert (=> d!463784 (= lt!541961 e!1005575)))

(declare-fun res!697977 () Bool)

(assert (=> d!463784 (=> (not res!697977) (not e!1005575))))

(declare-fun lt!541960 () tuple2!16598)

(assert (=> d!463784 (= res!697977 (= (size!13812 (_1!9701 lt!541960)) 1))))

(assert (=> d!463784 (= lt!541960 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))

(assert (=> d!463784 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463784 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 lt!541850)) lt!541961)))

(declare-fun b!1565640 () Bool)

(declare-fun res!697978 () Bool)

(assert (=> b!1565640 (=> (not res!697978) (not e!1005575))))

(assert (=> b!1565640 (= res!697978 (= (apply!4131 (_1!9701 lt!541960) 0) (h!22431 lt!541850)))))

(declare-fun b!1565641 () Bool)

(assert (=> b!1565641 (= e!1005575 (isEmpty!10199 (_2!9701 lt!541960)))))

(declare-fun b!1565642 () Bool)

(assert (=> b!1565642 (= e!1005574 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))))

(assert (= (and d!463784 res!697977) b!1565640))

(assert (= (and b!1565640 res!697978) b!1565641))

(assert (= (and d!463784 res!697976) b!1565642))

(declare-fun m!1837163 () Bool)

(assert (=> d!463784 m!1837163))

(declare-fun m!1837165 () Bool)

(assert (=> d!463784 m!1837165))

(assert (=> d!463784 m!1836809))

(declare-fun m!1837167 () Bool)

(assert (=> d!463784 m!1837167))

(declare-fun m!1837169 () Bool)

(assert (=> d!463784 m!1837169))

(assert (=> d!463784 m!1837167))

(assert (=> d!463784 m!1837163))

(declare-fun m!1837171 () Bool)

(assert (=> d!463784 m!1837171))

(declare-fun m!1837173 () Bool)

(assert (=> d!463784 m!1837173))

(assert (=> d!463784 m!1837167))

(declare-fun m!1837175 () Bool)

(assert (=> b!1565640 m!1837175))

(declare-fun m!1837177 () Bool)

(assert (=> b!1565641 m!1837177))

(assert (=> b!1565642 m!1837167))

(assert (=> b!1565642 m!1837167))

(assert (=> b!1565642 m!1837163))

(assert (=> b!1565642 m!1837163))

(assert (=> b!1565642 m!1837165))

(declare-fun m!1837179 () Bool)

(assert (=> b!1565642 m!1837179))

(assert (=> b!1565373 d!463784))

(declare-fun d!463786 () Bool)

(assert (=> d!463786 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 lt!541850)))))

(declare-fun lt!541962 () Unit!26198)

(assert (=> d!463786 (= lt!541962 (choose!9342 Lexer!2610 (rules!12084 thiss!10002) lt!541850 (h!22431 (t!141745 lt!541850))))))

(assert (=> d!463786 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463786 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) lt!541850 (h!22431 (t!141745 lt!541850))) lt!541962)))

(declare-fun bs!389601 () Bool)

(assert (= bs!389601 d!463786))

(assert (=> bs!389601 m!1836833))

(declare-fun m!1837181 () Bool)

(assert (=> bs!389601 m!1837181))

(assert (=> bs!389601 m!1836809))

(assert (=> b!1565373 d!463786))

(assert (=> b!1565409 d!463784))

(declare-fun d!463788 () Bool)

(declare-fun res!697993 () Bool)

(declare-fun e!1005585 () Bool)

(assert (=> d!463788 (=> res!697993 e!1005585)))

(assert (=> d!463788 (= res!697993 (not ((_ is Node!5615) (c!253628 (tokens!2198 thiss!10002)))))))

(assert (=> d!463788 (= (isBalanced!1663 (c!253628 (tokens!2198 thiss!10002))) e!1005585)))

(declare-fun b!1565663 () Bool)

(declare-fun res!697996 () Bool)

(declare-fun e!1005584 () Bool)

(assert (=> b!1565663 (=> (not res!697996) (not e!1005584))))

(assert (=> b!1565663 (= res!697996 (<= (- (height!836 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (height!836 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 1))))

(declare-fun b!1565664 () Bool)

(declare-fun res!697991 () Bool)

(assert (=> b!1565664 (=> (not res!697991) (not e!1005584))))

(assert (=> b!1565664 (= res!697991 (isBalanced!1663 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))

(declare-fun b!1565665 () Bool)

(declare-fun res!697995 () Bool)

(assert (=> b!1565665 (=> (not res!697995) (not e!1005584))))

(declare-fun isEmpty!10200 (Conc!5615) Bool)

(assert (=> b!1565665 (= res!697995 (not (isEmpty!10200 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1565666 () Bool)

(assert (=> b!1565666 (= e!1005584 (not (isEmpty!10200 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1565667 () Bool)

(assert (=> b!1565667 (= e!1005585 e!1005584)))

(declare-fun res!697992 () Bool)

(assert (=> b!1565667 (=> (not res!697992) (not e!1005584))))

(assert (=> b!1565667 (= res!697992 (<= (- 1) (- (height!836 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (height!836 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1565668 () Bool)

(declare-fun res!697994 () Bool)

(assert (=> b!1565668 (=> (not res!697994) (not e!1005584))))

(assert (=> b!1565668 (= res!697994 (isBalanced!1663 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))

(assert (= (and d!463788 (not res!697993)) b!1565667))

(assert (= (and b!1565667 res!697992) b!1565663))

(assert (= (and b!1565663 res!697996) b!1565664))

(assert (= (and b!1565664 res!697991) b!1565668))

(assert (= (and b!1565668 res!697994) b!1565665))

(assert (= (and b!1565665 res!697995) b!1565666))

(declare-fun m!1837185 () Bool)

(assert (=> b!1565668 m!1837185))

(declare-fun m!1837187 () Bool)

(assert (=> b!1565665 m!1837187))

(assert (=> b!1565667 m!1837049))

(assert (=> b!1565667 m!1837051))

(assert (=> b!1565663 m!1837049))

(assert (=> b!1565663 m!1837051))

(declare-fun m!1837191 () Bool)

(assert (=> b!1565666 m!1837191))

(declare-fun m!1837195 () Bool)

(assert (=> b!1565664 m!1837195))

(assert (=> d!463684 d!463788))

(declare-fun b!1565675 () Bool)

(declare-fun e!1005590 () Bool)

(assert (=> b!1565675 (= e!1005590 true)))

(declare-fun b!1565674 () Bool)

(declare-fun e!1005589 () Bool)

(assert (=> b!1565674 (= e!1005589 e!1005590)))

(declare-fun b!1565673 () Bool)

(declare-fun e!1005588 () Bool)

(assert (=> b!1565673 (= e!1005588 e!1005589)))

(assert (=> b!1565428 e!1005588))

(assert (= b!1565674 b!1565675))

(assert (= b!1565673 b!1565674))

(assert (= (and b!1565428 ((_ is Cons!17031) (t!141746 (rules!12084 thiss!10002)))) b!1565673))

(assert (=> b!1565675 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7590 order!10093 lambda!66200))))

(assert (=> b!1565675 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7590 order!10093 lambda!66200))))

(declare-fun tp!461096 () Bool)

(declare-fun e!1005592 () Bool)

(declare-fun tp!461095 () Bool)

(declare-fun b!1565676 () Bool)

(assert (=> b!1565676 (= e!1005592 (and (inv!22394 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) tp!461096 (inv!22394 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) tp!461095))))

(declare-fun b!1565678 () Bool)

(declare-fun e!1005591 () Bool)

(declare-fun tp!461097 () Bool)

(assert (=> b!1565678 (= e!1005591 tp!461097)))

(declare-fun b!1565677 () Bool)

(assert (=> b!1565677 (= e!1005592 (and (inv!22401 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1005591))))

(assert (=> b!1565452 (= tp!461062 (and (inv!22394 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) e!1005592))))

(assert (= (and b!1565452 ((_ is Node!5615) (left!13804 (c!253628 (tokens!2198 thiss!10002))))) b!1565676))

(assert (= b!1565677 b!1565678))

(assert (= (and b!1565452 ((_ is Leaf!8327) (left!13804 (c!253628 (tokens!2198 thiss!10002))))) b!1565677))

(declare-fun m!1837199 () Bool)

(assert (=> b!1565676 m!1837199))

(declare-fun m!1837201 () Bool)

(assert (=> b!1565676 m!1837201))

(declare-fun m!1837203 () Bool)

(assert (=> b!1565677 m!1837203))

(assert (=> b!1565452 m!1836887))

(declare-fun tp!461098 () Bool)

(declare-fun b!1565679 () Bool)

(declare-fun e!1005594 () Bool)

(declare-fun tp!461099 () Bool)

(assert (=> b!1565679 (= e!1005594 (and (inv!22394 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) tp!461099 (inv!22394 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) tp!461098))))

(declare-fun b!1565681 () Bool)

(declare-fun e!1005593 () Bool)

(declare-fun tp!461100 () Bool)

(assert (=> b!1565681 (= e!1005593 tp!461100)))

(declare-fun b!1565680 () Bool)

(assert (=> b!1565680 (= e!1005594 (and (inv!22401 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1005593))))

(assert (=> b!1565452 (= tp!461061 (and (inv!22394 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) e!1005594))))

(assert (= (and b!1565452 ((_ is Node!5615) (right!14134 (c!253628 (tokens!2198 thiss!10002))))) b!1565679))

(assert (= b!1565680 b!1565681))

(assert (= (and b!1565452 ((_ is Leaf!8327) (right!14134 (c!253628 (tokens!2198 thiss!10002))))) b!1565680))

(declare-fun m!1837205 () Bool)

(assert (=> b!1565679 m!1837205))

(declare-fun m!1837207 () Bool)

(assert (=> b!1565679 m!1837207))

(declare-fun m!1837209 () Bool)

(assert (=> b!1565680 m!1837209))

(assert (=> b!1565452 m!1836889))

(declare-fun e!1005597 () Bool)

(assert (=> b!1565475 (= tp!461083 e!1005597)))

(declare-fun b!1565692 () Bool)

(declare-fun tp_is_empty!7143 () Bool)

(assert (=> b!1565692 (= e!1005597 tp_is_empty!7143)))

(declare-fun b!1565695 () Bool)

(declare-fun tp!461113 () Bool)

(declare-fun tp!461111 () Bool)

(assert (=> b!1565695 (= e!1005597 (and tp!461113 tp!461111))))

(declare-fun b!1565694 () Bool)

(declare-fun tp!461115 () Bool)

(assert (=> b!1565694 (= e!1005597 tp!461115)))

(declare-fun b!1565693 () Bool)

(declare-fun tp!461114 () Bool)

(declare-fun tp!461112 () Bool)

(assert (=> b!1565693 (= e!1005597 (and tp!461114 tp!461112))))

(assert (= (and b!1565475 ((_ is ElementMatch!4311) (regex!2983 (h!22432 (rules!12084 thiss!10002))))) b!1565692))

(assert (= (and b!1565475 ((_ is Concat!7385) (regex!2983 (h!22432 (rules!12084 thiss!10002))))) b!1565693))

(assert (= (and b!1565475 ((_ is Star!4311) (regex!2983 (h!22432 (rules!12084 thiss!10002))))) b!1565694))

(assert (= (and b!1565475 ((_ is Union!4311) (regex!2983 (h!22432 (rules!12084 thiss!10002))))) b!1565695))

(declare-fun b!1565698 () Bool)

(declare-fun b_free!41871 () Bool)

(declare-fun b_next!42575 () Bool)

(assert (=> b!1565698 (= b_free!41871 (not b_next!42575))))

(declare-fun tp!461119 () Bool)

(declare-fun b_and!109237 () Bool)

(assert (=> b!1565698 (= tp!461119 b_and!109237)))

(declare-fun b_free!41873 () Bool)

(declare-fun b_next!42577 () Bool)

(assert (=> b!1565698 (= b_free!41873 (not b_next!42577))))

(declare-fun tb!87459 () Bool)

(declare-fun t!141774 () Bool)

(assert (=> (and b!1565698 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!141774) tb!87459))

(declare-fun result!105904 () Bool)

(assert (= result!105904 result!105898))

(assert (=> d!463782 t!141774))

(declare-fun tp!461118 () Bool)

(declare-fun b_and!109239 () Bool)

(assert (=> b!1565698 (= tp!461118 (and (=> t!141774 result!105904) b_and!109239))))

(declare-fun e!1005598 () Bool)

(assert (=> b!1565698 (= e!1005598 (and tp!461119 tp!461118))))

(declare-fun e!1005600 () Bool)

(declare-fun tp!461117 () Bool)

(declare-fun b!1565697 () Bool)

(assert (=> b!1565697 (= e!1005600 (and tp!461117 (inv!22390 (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (inv!22403 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) e!1005598))))

(declare-fun b!1565696 () Bool)

(declare-fun e!1005599 () Bool)

(declare-fun tp!461116 () Bool)

(assert (=> b!1565696 (= e!1005599 (and e!1005600 tp!461116))))

(assert (=> b!1565474 (= tp!461082 e!1005599)))

(assert (= b!1565697 b!1565698))

(assert (= b!1565696 b!1565697))

(assert (= (and b!1565474 ((_ is Cons!17031) (t!141746 (rules!12084 thiss!10002)))) b!1565696))

(declare-fun m!1837211 () Bool)

(assert (=> b!1565697 m!1837211))

(declare-fun m!1837213 () Bool)

(assert (=> b!1565697 m!1837213))

(declare-fun b!1565729 () Bool)

(declare-fun b_free!41879 () Bool)

(declare-fun b_next!42583 () Bool)

(assert (=> b!1565729 (= b_free!41879 (not b_next!42583))))

(declare-fun tp!461138 () Bool)

(declare-fun b_and!109245 () Bool)

(assert (=> b!1565729 (= tp!461138 b_and!109245)))

(declare-fun b_free!41881 () Bool)

(declare-fun b_next!42585 () Bool)

(assert (=> b!1565729 (= b_free!41881 (not b_next!42585))))

(declare-fun t!141778 () Bool)

(declare-fun tb!87463 () Bool)

(assert (=> (and b!1565729 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!141778) tb!87463))

(declare-fun result!105912 () Bool)

(assert (= result!105912 result!105898))

(assert (=> d!463782 t!141778))

(declare-fun tp!461139 () Bool)

(declare-fun b_and!109247 () Bool)

(assert (=> b!1565729 (= tp!461139 (and (=> t!141778 result!105912) b_and!109247))))

(declare-fun e!1005639 () Bool)

(declare-fun tp!461140 () Bool)

(declare-fun e!1005634 () Bool)

(declare-fun b!1565726 () Bool)

(declare-fun inv!22409 (Token!5532) Bool)

(assert (=> b!1565726 (= e!1005634 (and (inv!22409 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))) e!1005639 tp!461140))))

(declare-fun e!1005635 () Bool)

(assert (=> b!1565729 (= e!1005635 (and tp!461138 tp!461139))))

(declare-fun b!1565727 () Bool)

(declare-fun e!1005638 () Bool)

(declare-fun tp!461136 () Bool)

(declare-fun inv!21 (TokenValue!3073) Bool)

(assert (=> b!1565727 (= e!1005639 (and (inv!21 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) e!1005638 tp!461136))))

(declare-fun b!1565728 () Bool)

(declare-fun tp!461137 () Bool)

(assert (=> b!1565728 (= e!1005638 (and tp!461137 (inv!22390 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) e!1005635))))

(assert (=> b!1565454 (= tp!461063 e!1005634)))

(assert (= b!1565728 b!1565729))

(assert (= b!1565727 b!1565728))

(assert (= b!1565726 b!1565727))

(assert (= (and b!1565454 ((_ is Cons!17030) (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))) b!1565726))

(declare-fun m!1837223 () Bool)

(assert (=> b!1565726 m!1837223))

(declare-fun m!1837225 () Bool)

(assert (=> b!1565727 m!1837225))

(declare-fun m!1837227 () Bool)

(assert (=> b!1565728 m!1837227))

(declare-fun m!1837229 () Bool)

(assert (=> b!1565728 m!1837229))

(declare-fun b_lambda!49261 () Bool)

(assert (= b_lambda!49255 (or d!463688 b_lambda!49261)))

(declare-fun bs!389603 () Bool)

(declare-fun d!463796 () Bool)

(assert (= bs!389603 (and d!463796 d!463688)))

(assert (=> bs!389603 (= (dynLambda!7593 lambda!66200 (h!22431 lt!541850)) (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 lt!541850)))))

(assert (=> bs!389603 m!1836839))

(assert (=> b!1565582 d!463796))

(check-sat (not b!1565603) (not b!1565727) (not b!1565642) (not b_next!42577) (not b!1565632) (not d!463734) (not d!463780) (not b!1565563) (not b!1565693) (not b!1565640) (not d!463748) (not d!463786) (not b!1565663) (not b!1565664) b_and!109245 (not b!1565678) (not b!1565639) b_and!109237 (not b!1565605) (not b!1565533) (not b!1565681) (not b_next!42583) (not d!463776) (not b!1565528) (not b_next!42573) (not b!1565673) tp_is_empty!7143 b_and!109229 (not b!1565726) (not b!1565452) (not b!1565576) (not b!1565526) (not d!463744) (not b!1565569) (not b!1565609) (not d!463782) (not d!463756) (not b!1565633) (not b_next!42575) (not b!1565728) (not b!1565696) (not b!1565668) b_and!109235 (not b_next!42585) (not b!1565695) (not b!1565531) (not d!463750) (not b!1565527) (not d!463752) (not b!1565530) (not b!1565679) (not b!1565604) (not b_lambda!49259) (not b!1565697) (not tb!87457) (not b!1565607) (not b!1565641) (not d!463784) (not b!1565591) (not b!1565676) (not b!1565634) (not d!463774) (not b!1565666) (not b!1565677) (not b!1565564) b_and!109239 (not b!1565608) (not d!463704) (not b!1565680) (not b!1565667) (not d!463764) b_and!109247 (not b!1565665) (not b_next!42571) (not b!1565694) (not b!1565606) (not b!1565583) (not b_lambda!49261) (not d!463762) (not bs!389603))
(check-sat b_and!109245 b_and!109237 (not b_next!42583) (not b_next!42573) b_and!109229 (not b_next!42575) b_and!109235 (not b_next!42585) (not b_next!42577) b_and!109239 b_and!109247 (not b_next!42571))
(get-model)

(assert (=> d!463764 d!463784))

(declare-fun d!463800 () Bool)

(assert (=> d!463800 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 lt!541850))))

(assert (=> d!463800 true))

(declare-fun _$77!659 () Unit!26198)

(assert (=> d!463800 (= (choose!9342 Lexer!2610 (rules!12084 thiss!10002) lt!541850 (h!22431 lt!541850)) _$77!659)))

(declare-fun bs!389605 () Bool)

(assert (= bs!389605 d!463800))

(assert (=> bs!389605 m!1836839))

(assert (=> d!463764 d!463800))

(assert (=> d!463764 d!463678))

(declare-fun d!463802 () Bool)

(assert (=> d!463802 (= (inv!22401 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (<= (size!13806 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) 2147483647))))

(declare-fun bs!389606 () Bool)

(assert (= bs!389606 d!463802))

(declare-fun m!1837251 () Bool)

(assert (=> bs!389606 m!1837251))

(assert (=> b!1565680 d!463802))

(declare-fun d!463804 () Bool)

(declare-fun lt!541965 () Int)

(assert (=> d!463804 (= lt!541965 (size!13806 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!463804 (= lt!541965 (ite ((_ is Empty!5615) (left!13804 (c!253628 (tokens!2198 thiss!10002)))) 0 (ite ((_ is Leaf!8327) (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (csize!11461 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (csize!11460 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!463804 (= (size!13807 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) lt!541965)))

(declare-fun bs!389607 () Bool)

(assert (= bs!389607 d!463804))

(assert (=> bs!389607 m!1837055))

(assert (=> bs!389607 m!1837055))

(declare-fun m!1837253 () Bool)

(assert (=> bs!389607 m!1837253))

(assert (=> d!463756 d!463804))

(declare-fun d!463806 () Bool)

(declare-fun lt!541966 () Int)

(assert (=> d!463806 (= lt!541966 (size!13806 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!463806 (= lt!541966 (ite ((_ is Empty!5615) (right!14134 (c!253628 (tokens!2198 thiss!10002)))) 0 (ite ((_ is Leaf!8327) (right!14134 (c!253628 (tokens!2198 thiss!10002)))) (csize!11461 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) (csize!11460 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!463806 (= (size!13807 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) lt!541966)))

(declare-fun bs!389608 () Bool)

(assert (= bs!389608 d!463806))

(assert (=> bs!389608 m!1837057))

(assert (=> bs!389608 m!1837057))

(declare-fun m!1837255 () Bool)

(assert (=> bs!389608 m!1837255))

(assert (=> d!463756 d!463806))

(declare-fun d!463808 () Bool)

(assert (=> d!463808 (= (height!836 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (ite ((_ is Empty!5615) (left!13804 (c!253628 (tokens!2198 thiss!10002)))) 0 (ite ((_ is Leaf!8327) (left!13804 (c!253628 (tokens!2198 thiss!10002)))) 1 (cheight!5826 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> b!1565663 d!463808))

(declare-fun d!463810 () Bool)

(assert (=> d!463810 (= (height!836 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) (ite ((_ is Empty!5615) (right!14134 (c!253628 (tokens!2198 thiss!10002)))) 0 (ite ((_ is Leaf!8327) (right!14134 (c!253628 (tokens!2198 thiss!10002)))) 1 (cheight!5826 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> b!1565663 d!463810))

(declare-fun d!463812 () Bool)

(declare-fun res!698005 () Bool)

(declare-fun e!1005655 () Bool)

(assert (=> d!463812 (=> res!698005 e!1005655)))

(assert (=> d!463812 (= res!698005 (or (not ((_ is Cons!17030) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (not ((_ is Cons!17030) (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(assert (=> d!463812 (= (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (rules!12084 thiss!10002)) e!1005655)))

(declare-fun b!1565756 () Bool)

(declare-fun e!1005656 () Bool)

(assert (=> b!1565756 (= e!1005655 e!1005656)))

(declare-fun res!698006 () Bool)

(assert (=> b!1565756 (=> (not res!698006) (not e!1005656))))

(assert (=> b!1565756 (= res!698006 (separableTokensPredicate!598 Lexer!2610 (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (rules!12084 thiss!10002)))))

(declare-fun lt!541973 () Unit!26198)

(declare-fun Unit!26209 () Unit!26198)

(assert (=> b!1565756 (= lt!541973 Unit!26209)))

(assert (=> b!1565756 (> (size!13804 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) 0)))

(declare-fun lt!541967 () Unit!26198)

(declare-fun Unit!26210 () Unit!26198)

(assert (=> b!1565756 (= lt!541967 Unit!26210)))

(assert (=> b!1565756 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(declare-fun lt!541968 () Unit!26198)

(declare-fun Unit!26211 () Unit!26198)

(assert (=> b!1565756 (= lt!541968 Unit!26211)))

(assert (=> b!1565756 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))

(declare-fun lt!541972 () Unit!26198)

(declare-fun lt!541970 () Unit!26198)

(assert (=> b!1565756 (= lt!541972 lt!541970)))

(assert (=> b!1565756 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(assert (=> b!1565756 (= lt!541970 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(declare-fun lt!541971 () Unit!26198)

(declare-fun lt!541969 () Unit!26198)

(assert (=> b!1565756 (= lt!541971 lt!541969)))

(assert (=> b!1565756 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))

(assert (=> b!1565756 (= lt!541969 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(declare-fun b!1565757 () Bool)

(assert (=> b!1565757 (= e!1005656 (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) (rules!12084 thiss!10002)))))

(assert (= (and d!463812 (not res!698005)) b!1565756))

(assert (= (and b!1565756 res!698006) b!1565757))

(declare-fun m!1837257 () Bool)

(assert (=> b!1565756 m!1837257))

(declare-fun m!1837259 () Bool)

(assert (=> b!1565756 m!1837259))

(assert (=> b!1565756 m!1837257))

(declare-fun m!1837261 () Bool)

(assert (=> b!1565756 m!1837261))

(declare-fun m!1837263 () Bool)

(assert (=> b!1565756 m!1837263))

(declare-fun m!1837265 () Bool)

(assert (=> b!1565756 m!1837265))

(declare-fun m!1837267 () Bool)

(assert (=> b!1565756 m!1837267))

(declare-fun m!1837269 () Bool)

(assert (=> b!1565756 m!1837269))

(declare-fun m!1837271 () Bool)

(assert (=> b!1565757 m!1837271))

(assert (=> b!1565606 d!463812))

(declare-fun b!1565769 () Bool)

(declare-fun e!1005662 () Bool)

(declare-fun lt!541976 () List!17100)

(assert (=> b!1565769 (= e!1005662 (or (not (= (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) Nil!17030)) (= lt!541976 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun d!463814 () Bool)

(assert (=> d!463814 e!1005662))

(declare-fun res!698011 () Bool)

(assert (=> d!463814 (=> (not res!698011) (not e!1005662))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2356 (List!17100) (InoxSet Token!5532))

(assert (=> d!463814 (= res!698011 (= (content!2356 lt!541976) ((_ map or) (content!2356 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (content!2356 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun e!1005661 () List!17100)

(assert (=> d!463814 (= lt!541976 e!1005661)))

(declare-fun c!253653 () Bool)

(assert (=> d!463814 (= c!253653 ((_ is Nil!17030) (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!463814 (= (++!4431 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) lt!541976)))

(declare-fun b!1565766 () Bool)

(assert (=> b!1565766 (= e!1005661 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))

(declare-fun b!1565767 () Bool)

(assert (=> b!1565767 (= e!1005661 (Cons!17030 (h!22431 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (++!4431 (t!141745 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1565768 () Bool)

(declare-fun res!698012 () Bool)

(assert (=> b!1565768 (=> (not res!698012) (not e!1005662))))

(assert (=> b!1565768 (= res!698012 (= (size!13806 lt!541976) (+ (size!13806 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (size!13806 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (= (and d!463814 c!253653) b!1565766))

(assert (= (and d!463814 (not c!253653)) b!1565767))

(assert (= (and d!463814 res!698011) b!1565768))

(assert (= (and b!1565768 res!698012) b!1565769))

(declare-fun m!1837273 () Bool)

(assert (=> d!463814 m!1837273))

(assert (=> d!463814 m!1837055))

(declare-fun m!1837275 () Bool)

(assert (=> d!463814 m!1837275))

(assert (=> d!463814 m!1837057))

(declare-fun m!1837277 () Bool)

(assert (=> d!463814 m!1837277))

(assert (=> b!1565767 m!1837057))

(declare-fun m!1837279 () Bool)

(assert (=> b!1565767 m!1837279))

(declare-fun m!1837281 () Bool)

(assert (=> b!1565768 m!1837281))

(assert (=> b!1565768 m!1837055))

(assert (=> b!1565768 m!1837253))

(assert (=> b!1565768 m!1837057))

(assert (=> b!1565768 m!1837255))

(assert (=> b!1565604 d!463814))

(declare-fun d!463816 () Bool)

(declare-fun c!253654 () Bool)

(assert (=> d!463816 (= c!253654 ((_ is Empty!5615) (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))

(declare-fun e!1005663 () List!17100)

(assert (=> d!463816 (= (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) e!1005663)))

(declare-fun b!1565772 () Bool)

(declare-fun e!1005664 () List!17100)

(assert (=> b!1565772 (= e!1005664 (list!6552 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1565773 () Bool)

(assert (=> b!1565773 (= e!1005664 (++!4431 (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (list!6550 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1565770 () Bool)

(assert (=> b!1565770 (= e!1005663 Nil!17030)))

(declare-fun b!1565771 () Bool)

(assert (=> b!1565771 (= e!1005663 e!1005664)))

(declare-fun c!253655 () Bool)

(assert (=> b!1565771 (= c!253655 ((_ is Leaf!8327) (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))

(assert (= (and d!463816 c!253654) b!1565770))

(assert (= (and d!463816 (not c!253654)) b!1565771))

(assert (= (and b!1565771 c!253655) b!1565772))

(assert (= (and b!1565771 (not c!253655)) b!1565773))

(declare-fun m!1837283 () Bool)

(assert (=> b!1565772 m!1837283))

(declare-fun m!1837285 () Bool)

(assert (=> b!1565773 m!1837285))

(declare-fun m!1837287 () Bool)

(assert (=> b!1565773 m!1837287))

(assert (=> b!1565773 m!1837285))

(assert (=> b!1565773 m!1837287))

(declare-fun m!1837289 () Bool)

(assert (=> b!1565773 m!1837289))

(assert (=> b!1565604 d!463816))

(declare-fun d!463818 () Bool)

(declare-fun c!253656 () Bool)

(assert (=> d!463818 (= c!253656 ((_ is Empty!5615) (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))

(declare-fun e!1005665 () List!17100)

(assert (=> d!463818 (= (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) e!1005665)))

(declare-fun b!1565776 () Bool)

(declare-fun e!1005666 () List!17100)

(assert (=> b!1565776 (= e!1005666 (list!6552 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1565777 () Bool)

(assert (=> b!1565777 (= e!1005666 (++!4431 (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (list!6550 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1565774 () Bool)

(assert (=> b!1565774 (= e!1005665 Nil!17030)))

(declare-fun b!1565775 () Bool)

(assert (=> b!1565775 (= e!1005665 e!1005666)))

(declare-fun c!253657 () Bool)

(assert (=> b!1565775 (= c!253657 ((_ is Leaf!8327) (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))

(assert (= (and d!463818 c!253656) b!1565774))

(assert (= (and d!463818 (not c!253656)) b!1565775))

(assert (= (and b!1565775 c!253657) b!1565776))

(assert (= (and b!1565775 (not c!253657)) b!1565777))

(declare-fun m!1837291 () Bool)

(assert (=> b!1565776 m!1837291))

(declare-fun m!1837293 () Bool)

(assert (=> b!1565777 m!1837293))

(declare-fun m!1837295 () Bool)

(assert (=> b!1565777 m!1837295))

(assert (=> b!1565777 m!1837293))

(assert (=> b!1565777 m!1837295))

(declare-fun m!1837297 () Bool)

(assert (=> b!1565777 m!1837297))

(assert (=> b!1565604 d!463818))

(declare-fun d!463820 () Bool)

(assert (=> d!463820 (= (inv!22401 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (<= (size!13806 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) 2147483647))))

(declare-fun bs!389609 () Bool)

(assert (= bs!389609 d!463820))

(declare-fun m!1837299 () Bool)

(assert (=> bs!389609 m!1837299))

(assert (=> b!1565677 d!463820))

(declare-fun d!463822 () Bool)

(declare-fun lt!541981 () Token!5532)

(declare-fun apply!4134 (List!17100 Int) Token!5532)

(assert (=> d!463822 (= lt!541981 (apply!4134 (list!6549 (_1!9701 lt!541955)) 0))))

(declare-fun apply!4135 (Conc!5615 Int) Token!5532)

(assert (=> d!463822 (= lt!541981 (apply!4135 (c!253628 (_1!9701 lt!541955)) 0))))

(declare-fun e!1005671 () Bool)

(assert (=> d!463822 e!1005671))

(declare-fun res!698015 () Bool)

(assert (=> d!463822 (=> (not res!698015) (not e!1005671))))

(assert (=> d!463822 (= res!698015 (<= 0 0))))

(assert (=> d!463822 (= (apply!4131 (_1!9701 lt!541955) 0) lt!541981)))

(declare-fun b!1565784 () Bool)

(assert (=> b!1565784 (= e!1005671 (< 0 (size!13812 (_1!9701 lt!541955))))))

(assert (= (and d!463822 res!698015) b!1565784))

(declare-fun m!1837301 () Bool)

(assert (=> d!463822 m!1837301))

(assert (=> d!463822 m!1837301))

(declare-fun m!1837303 () Bool)

(assert (=> d!463822 m!1837303))

(declare-fun m!1837305 () Bool)

(assert (=> d!463822 m!1837305))

(assert (=> b!1565784 m!1837133))

(assert (=> b!1565632 d!463822))

(declare-fun d!463826 () Bool)

(declare-fun res!698016 () Bool)

(declare-fun e!1005672 () Bool)

(assert (=> d!463826 (=> res!698016 e!1005672)))

(assert (=> d!463826 (= res!698016 ((_ is Nil!17031) (t!141746 (rules!12084 thiss!10002))))))

(assert (=> d!463826 (= (noDuplicateTag!1056 Lexer!2610 (t!141746 (rules!12084 thiss!10002)) (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032)) e!1005672)))

(declare-fun b!1565785 () Bool)

(declare-fun e!1005673 () Bool)

(assert (=> b!1565785 (= e!1005672 e!1005673)))

(declare-fun res!698017 () Bool)

(assert (=> b!1565785 (=> (not res!698017) (not e!1005673))))

(assert (=> b!1565785 (= res!698017 (not (contains!3002 (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032) (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002)))))))))

(declare-fun b!1565786 () Bool)

(assert (=> b!1565786 (= e!1005673 (noDuplicateTag!1056 Lexer!2610 (t!141746 (t!141746 (rules!12084 thiss!10002))) (Cons!17032 (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002)))) (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032))))))

(assert (= (and d!463826 (not res!698016)) b!1565785))

(assert (= (and b!1565785 res!698017) b!1565786))

(declare-fun m!1837307 () Bool)

(assert (=> b!1565785 m!1837307))

(declare-fun m!1837309 () Bool)

(assert (=> b!1565786 m!1837309))

(assert (=> b!1565527 d!463826))

(declare-fun bs!389611 () Bool)

(declare-fun d!463828 () Bool)

(assert (= bs!389611 (and d!463828 d!463750)))

(declare-fun lambda!66221 () Int)

(assert (=> bs!389611 (= lambda!66221 lambda!66212)))

(assert (=> d!463828 true))

(declare-fun lt!541985 () Bool)

(assert (=> d!463828 (= lt!541985 (forall!3954 (rules!12084 thiss!10002) lambda!66221))))

(declare-fun e!1005680 () Bool)

(assert (=> d!463828 (= lt!541985 e!1005680)))

(declare-fun res!698024 () Bool)

(assert (=> d!463828 (=> res!698024 e!1005680)))

(assert (=> d!463828 (= res!698024 (not ((_ is Cons!17031) (rules!12084 thiss!10002))))))

(assert (=> d!463828 (= (rulesValidInductive!899 Lexer!2610 (rules!12084 thiss!10002)) lt!541985)))

(declare-fun b!1565795 () Bool)

(declare-fun e!1005681 () Bool)

(assert (=> b!1565795 (= e!1005680 e!1005681)))

(declare-fun res!698025 () Bool)

(assert (=> b!1565795 (=> (not res!698025) (not e!1005681))))

(declare-fun ruleValid!700 (LexerInterface!2612 Rule!5766) Bool)

(assert (=> b!1565795 (= res!698025 (ruleValid!700 Lexer!2610 (h!22432 (rules!12084 thiss!10002))))))

(declare-fun b!1565796 () Bool)

(assert (=> b!1565796 (= e!1005681 (rulesValidInductive!899 Lexer!2610 (t!141746 (rules!12084 thiss!10002))))))

(assert (= (and d!463828 (not res!698024)) b!1565795))

(assert (= (and b!1565795 res!698025) b!1565796))

(declare-fun m!1837319 () Bool)

(assert (=> d!463828 m!1837319))

(declare-fun m!1837321 () Bool)

(assert (=> b!1565795 m!1837321))

(declare-fun m!1837323 () Bool)

(assert (=> b!1565796 m!1837323))

(assert (=> d!463750 d!463828))

(declare-fun d!463838 () Bool)

(declare-fun res!698033 () Bool)

(declare-fun e!1005689 () Bool)

(assert (=> d!463838 (=> res!698033 e!1005689)))

(assert (=> d!463838 (= res!698033 ((_ is Nil!17031) (rules!12084 thiss!10002)))))

(assert (=> d!463838 (= (forall!3954 (rules!12084 thiss!10002) lambda!66212) e!1005689)))

(declare-fun b!1565804 () Bool)

(declare-fun e!1005690 () Bool)

(assert (=> b!1565804 (= e!1005689 e!1005690)))

(declare-fun res!698034 () Bool)

(assert (=> b!1565804 (=> (not res!698034) (not e!1005690))))

(declare-fun dynLambda!7596 (Int Rule!5766) Bool)

(assert (=> b!1565804 (= res!698034 (dynLambda!7596 lambda!66212 (h!22432 (rules!12084 thiss!10002))))))

(declare-fun b!1565805 () Bool)

(assert (=> b!1565805 (= e!1005690 (forall!3954 (t!141746 (rules!12084 thiss!10002)) lambda!66212))))

(assert (= (and d!463838 (not res!698033)) b!1565804))

(assert (= (and b!1565804 res!698034) b!1565805))

(declare-fun b_lambda!49265 () Bool)

(assert (=> (not b_lambda!49265) (not b!1565804)))

(declare-fun m!1837331 () Bool)

(assert (=> b!1565804 m!1837331))

(declare-fun m!1837333 () Bool)

(assert (=> b!1565805 m!1837333))

(assert (=> d!463750 d!463838))

(declare-fun d!463842 () Bool)

(assert (=> d!463842 (= (max!0 (height!836 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (height!836 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (ite (< (height!836 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (height!836 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) (height!836 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> b!1565591 d!463842))

(assert (=> b!1565591 d!463808))

(assert (=> b!1565591 d!463810))

(declare-fun d!463846 () Bool)

(assert (=> d!463846 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))) (list!6550 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(declare-fun bs!389612 () Bool)

(assert (= bs!389612 d!463846))

(declare-fun m!1837345 () Bool)

(assert (=> bs!389612 m!1837345))

(assert (=> d!463784 d!463846))

(declare-fun d!463848 () Bool)

(declare-fun lt!541993 () Int)

(assert (=> d!463848 (= lt!541993 (size!13806 (list!6549 (_1!9701 lt!541960))))))

(assert (=> d!463848 (= lt!541993 (size!13807 (c!253628 (_1!9701 lt!541960))))))

(assert (=> d!463848 (= (size!13812 (_1!9701 lt!541960)) lt!541993)))

(declare-fun bs!389613 () Bool)

(assert (= bs!389613 d!463848))

(declare-fun m!1837347 () Bool)

(assert (=> bs!389613 m!1837347))

(assert (=> bs!389613 m!1837347))

(declare-fun m!1837351 () Bool)

(assert (=> bs!389613 m!1837351))

(declare-fun m!1837353 () Bool)

(assert (=> bs!389613 m!1837353))

(assert (=> d!463784 d!463848))

(declare-fun d!463850 () Bool)

(declare-fun lt!541997 () BalanceConc!11172)

(declare-fun printList!772 (LexerInterface!2612 List!17100) List!17099)

(assert (=> d!463850 (= (list!6554 lt!541997) (printList!772 Lexer!2610 (list!6549 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun printTailRec!708 (LexerInterface!2612 BalanceConc!11174 Int BalanceConc!11172) BalanceConc!11172)

(assert (=> d!463850 (= lt!541997 (printTailRec!708 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)) 0 (BalanceConc!11173 Empty!5614)))))

(assert (=> d!463850 (= (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))) lt!541997)))

(declare-fun bs!389615 () Bool)

(assert (= bs!389615 d!463850))

(declare-fun m!1837359 () Bool)

(assert (=> bs!389615 m!1837359))

(assert (=> bs!389615 m!1837167))

(assert (=> bs!389615 m!1837169))

(assert (=> bs!389615 m!1837169))

(declare-fun m!1837361 () Bool)

(assert (=> bs!389615 m!1837361))

(assert (=> bs!389615 m!1837167))

(declare-fun m!1837363 () Bool)

(assert (=> bs!389615 m!1837363))

(assert (=> d!463784 d!463850))

(assert (=> d!463784 d!463678))

(declare-fun d!463854 () Bool)

(declare-fun e!1005694 () Bool)

(assert (=> d!463854 e!1005694))

(declare-fun res!698040 () Bool)

(assert (=> d!463854 (=> (not res!698040) (not e!1005694))))

(declare-fun lt!542000 () BalanceConc!11174)

(assert (=> d!463854 (= res!698040 (= (list!6549 lt!542000) (Cons!17030 (h!22431 lt!541850) Nil!17030)))))

(declare-fun singleton!555 (Token!5532) BalanceConc!11174)

(assert (=> d!463854 (= lt!542000 (singleton!555 (h!22431 lt!541850)))))

(assert (=> d!463854 (= (singletonSeq!1349 (h!22431 lt!541850)) lt!542000)))

(declare-fun b!1565811 () Bool)

(assert (=> b!1565811 (= e!1005694 (isBalanced!1663 (c!253628 lt!542000)))))

(assert (= (and d!463854 res!698040) b!1565811))

(declare-fun m!1837365 () Bool)

(assert (=> d!463854 m!1837365))

(declare-fun m!1837367 () Bool)

(assert (=> d!463854 m!1837367))

(declare-fun m!1837369 () Bool)

(assert (=> b!1565811 m!1837369))

(assert (=> d!463784 d!463854))

(declare-fun b!1565837 () Bool)

(declare-fun e!1005712 () Bool)

(declare-fun lt!542008 () tuple2!16598)

(declare-fun isEmpty!10201 (BalanceConc!11174) Bool)

(assert (=> b!1565837 (= e!1005712 (not (isEmpty!10201 (_1!9701 lt!542008))))))

(declare-fun b!1565838 () Bool)

(declare-fun e!1005710 () Bool)

(declare-datatypes ((tuple2!16600 0))(
  ( (tuple2!16601 (_1!9702 List!17100) (_2!9702 List!17099)) )
))
(declare-fun lexList!757 (LexerInterface!2612 List!17101 List!17099) tuple2!16600)

(assert (=> b!1565838 (= e!1005710 (= (list!6554 (_2!9701 lt!542008)) (_2!9702 (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(declare-fun b!1565839 () Bool)

(declare-fun res!698058 () Bool)

(assert (=> b!1565839 (=> (not res!698058) (not e!1005710))))

(assert (=> b!1565839 (= res!698058 (= (list!6549 (_1!9701 lt!542008)) (_1!9702 (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(declare-fun b!1565841 () Bool)

(declare-fun e!1005711 () Bool)

(assert (=> b!1565841 (= e!1005711 (= (_2!9701 lt!542008) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun d!463856 () Bool)

(assert (=> d!463856 e!1005710))

(declare-fun res!698056 () Bool)

(assert (=> d!463856 (=> (not res!698056) (not e!1005710))))

(assert (=> d!463856 (= res!698056 e!1005711)))

(declare-fun c!253668 () Bool)

(assert (=> d!463856 (= c!253668 (> (size!13812 (_1!9701 lt!542008)) 0))))

(declare-fun lexTailRecV2!480 (LexerInterface!2612 List!17101 BalanceConc!11172 BalanceConc!11172 BalanceConc!11172 BalanceConc!11174) tuple2!16598)

(assert (=> d!463856 (= lt!542008 (lexTailRecV2!480 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))) (BalanceConc!11173 Empty!5614) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))) (BalanceConc!11175 Empty!5615)))))

(assert (=> d!463856 (= (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))) lt!542008)))

(declare-fun b!1565840 () Bool)

(assert (=> b!1565840 (= e!1005711 e!1005712)))

(declare-fun res!698057 () Bool)

(assert (=> b!1565840 (= res!698057 (< (size!13804 (_2!9701 lt!542008)) (size!13804 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))

(assert (=> b!1565840 (=> (not res!698057) (not e!1005712))))

(assert (= (and d!463856 c!253668) b!1565840))

(assert (= (and d!463856 (not c!253668)) b!1565841))

(assert (= (and b!1565840 res!698057) b!1565837))

(assert (= (and d!463856 res!698056) b!1565839))

(assert (= (and b!1565839 res!698058) b!1565838))

(declare-fun m!1837391 () Bool)

(assert (=> b!1565840 m!1837391))

(assert (=> b!1565840 m!1837163))

(declare-fun m!1837395 () Bool)

(assert (=> b!1565840 m!1837395))

(declare-fun m!1837399 () Bool)

(assert (=> b!1565838 m!1837399))

(assert (=> b!1565838 m!1837163))

(declare-fun m!1837401 () Bool)

(assert (=> b!1565838 m!1837401))

(assert (=> b!1565838 m!1837401))

(declare-fun m!1837403 () Bool)

(assert (=> b!1565838 m!1837403))

(declare-fun m!1837405 () Bool)

(assert (=> b!1565837 m!1837405))

(declare-fun m!1837407 () Bool)

(assert (=> d!463856 m!1837407))

(assert (=> d!463856 m!1837163))

(assert (=> d!463856 m!1837163))

(declare-fun m!1837409 () Bool)

(assert (=> d!463856 m!1837409))

(declare-fun m!1837411 () Bool)

(assert (=> b!1565839 m!1837411))

(assert (=> b!1565839 m!1837163))

(assert (=> b!1565839 m!1837401))

(assert (=> b!1565839 m!1837401))

(assert (=> b!1565839 m!1837403))

(assert (=> d!463784 d!463856))

(declare-fun d!463862 () Bool)

(assert (=> d!463862 (= (list!6549 (singletonSeq!1349 (h!22431 lt!541850))) (list!6550 (c!253628 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun bs!389617 () Bool)

(assert (= bs!389617 d!463862))

(declare-fun m!1837413 () Bool)

(assert (=> bs!389617 m!1837413))

(assert (=> d!463784 d!463862))

(declare-fun d!463864 () Bool)

(declare-fun lt!542012 () Bool)

(declare-fun isEmpty!10202 (List!17100) Bool)

(assert (=> d!463864 (= lt!542012 (isEmpty!10202 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!463864 (= lt!542012 (= (size!13807 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) 0))))

(assert (=> d!463864 (= (isEmpty!10200 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) lt!542012)))

(declare-fun bs!389618 () Bool)

(assert (= bs!389618 d!463864))

(assert (=> bs!389618 m!1837055))

(assert (=> bs!389618 m!1837055))

(declare-fun m!1837415 () Bool)

(assert (=> bs!389618 m!1837415))

(assert (=> bs!389618 m!1837045))

(assert (=> b!1565665 d!463864))

(declare-fun bs!389619 () Bool)

(declare-fun d!463866 () Bool)

(assert (= bs!389619 (and d!463866 d!463688)))

(declare-fun lambda!66222 () Int)

(assert (=> bs!389619 (= lambda!66222 lambda!66200)))

(declare-fun bs!389620 () Bool)

(assert (= bs!389620 (and d!463866 d!463734)))

(assert (=> bs!389620 (= lambda!66222 lambda!66209)))

(declare-fun bs!389621 () Bool)

(assert (= bs!389621 (and d!463866 d!463762)))

(assert (=> bs!389621 (= lambda!66222 lambda!66213)))

(declare-fun b!1565848 () Bool)

(declare-fun e!1005719 () Bool)

(assert (=> b!1565848 (= e!1005719 true)))

(declare-fun b!1565847 () Bool)

(declare-fun e!1005718 () Bool)

(assert (=> b!1565847 (= e!1005718 e!1005719)))

(declare-fun b!1565846 () Bool)

(declare-fun e!1005717 () Bool)

(assert (=> b!1565846 (= e!1005717 e!1005718)))

(assert (=> d!463866 e!1005717))

(assert (= b!1565847 b!1565848))

(assert (= b!1565846 b!1565847))

(assert (= (and d!463866 ((_ is Cons!17031) (rules!12084 thiss!10002))) b!1565846))

(assert (=> b!1565848 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66222))))

(assert (=> b!1565848 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66222))))

(assert (=> d!463866 true))

(declare-fun lt!542015 () Bool)

(assert (=> d!463866 (= lt!542015 (forall!3952 (t!141745 (t!141745 lt!541850)) lambda!66222))))

(declare-fun e!1005715 () Bool)

(assert (=> d!463866 (= lt!542015 e!1005715)))

(declare-fun res!698061 () Bool)

(assert (=> d!463866 (=> res!698061 e!1005715)))

(assert (=> d!463866 (= res!698061 (not ((_ is Cons!17030) (t!141745 (t!141745 lt!541850)))))))

(assert (=> d!463866 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463866 (= (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 (t!141745 lt!541850))) lt!542015)))

(declare-fun b!1565844 () Bool)

(declare-fun e!1005716 () Bool)

(assert (=> b!1565844 (= e!1005715 e!1005716)))

(declare-fun res!698062 () Bool)

(assert (=> b!1565844 (=> (not res!698062) (not e!1005716))))

(assert (=> b!1565844 (= res!698062 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (t!141745 lt!541850)))))))

(declare-fun b!1565845 () Bool)

(assert (=> b!1565845 (= e!1005716 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 (t!141745 (t!141745 lt!541850)))))))

(assert (= (and d!463866 (not res!698061)) b!1565844))

(assert (= (and b!1565844 res!698062) b!1565845))

(declare-fun m!1837423 () Bool)

(assert (=> d!463866 m!1837423))

(assert (=> d!463866 m!1836809))

(declare-fun m!1837425 () Bool)

(assert (=> b!1565844 m!1837425))

(declare-fun m!1837427 () Bool)

(assert (=> b!1565845 m!1837427))

(assert (=> b!1565608 d!463866))

(assert (=> b!1565667 d!463808))

(assert (=> b!1565667 d!463810))

(declare-fun d!463870 () Bool)

(declare-fun lt!542022 () Bool)

(declare-fun isEmpty!10203 (List!17099) Bool)

(assert (=> d!463870 (= lt!542022 (isEmpty!10203 (list!6554 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(declare-fun isEmpty!10204 (Conc!5614) Bool)

(assert (=> d!463870 (= lt!542022 (isEmpty!10204 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(assert (=> d!463870 (= (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))) lt!542022)))

(declare-fun bs!389623 () Bool)

(assert (= bs!389623 d!463870))

(declare-fun m!1837431 () Bool)

(assert (=> bs!389623 m!1837431))

(assert (=> bs!389623 m!1837431))

(declare-fun m!1837433 () Bool)

(assert (=> bs!389623 m!1837433))

(declare-fun m!1837435 () Bool)

(assert (=> bs!389623 m!1837435))

(assert (=> b!1565634 d!463870))

(declare-fun b!1565856 () Bool)

(declare-fun e!1005725 () Bool)

(declare-fun lt!542023 () tuple2!16598)

(assert (=> b!1565856 (= e!1005725 (not (isEmpty!10201 (_1!9701 lt!542023))))))

(declare-fun b!1565857 () Bool)

(declare-fun e!1005723 () Bool)

(assert (=> b!1565857 (= e!1005723 (= (list!6554 (_2!9701 lt!542023)) (_2!9702 (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(declare-fun b!1565858 () Bool)

(declare-fun res!698072 () Bool)

(assert (=> b!1565858 (=> (not res!698072) (not e!1005723))))

(assert (=> b!1565858 (= res!698072 (= (list!6549 (_1!9701 lt!542023)) (_1!9702 (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(declare-fun b!1565860 () Bool)

(declare-fun e!1005724 () Bool)

(assert (=> b!1565860 (= e!1005724 (= (_2!9701 lt!542023) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(declare-fun d!463874 () Bool)

(assert (=> d!463874 e!1005723))

(declare-fun res!698070 () Bool)

(assert (=> d!463874 (=> (not res!698070) (not e!1005723))))

(assert (=> d!463874 (= res!698070 e!1005724)))

(declare-fun c!253669 () Bool)

(assert (=> d!463874 (= c!253669 (> (size!13812 (_1!9701 lt!542023)) 0))))

(assert (=> d!463874 (= lt!542023 (lexTailRecV2!480 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))) (BalanceConc!11173 Empty!5614) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))) (BalanceConc!11175 Empty!5615)))))

(assert (=> d!463874 (= (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))) lt!542023)))

(declare-fun b!1565859 () Bool)

(assert (=> b!1565859 (= e!1005724 e!1005725)))

(declare-fun res!698071 () Bool)

(assert (=> b!1565859 (= res!698071 (< (size!13804 (_2!9701 lt!542023)) (size!13804 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))

(assert (=> b!1565859 (=> (not res!698071) (not e!1005725))))

(assert (= (and d!463874 c!253669) b!1565859))

(assert (= (and d!463874 (not c!253669)) b!1565860))

(assert (= (and b!1565859 res!698071) b!1565856))

(assert (= (and d!463874 res!698070) b!1565858))

(assert (= (and b!1565858 res!698072) b!1565857))

(declare-fun m!1837455 () Bool)

(assert (=> b!1565859 m!1837455))

(assert (=> b!1565859 m!1837125))

(declare-fun m!1837457 () Bool)

(assert (=> b!1565859 m!1837457))

(declare-fun m!1837459 () Bool)

(assert (=> b!1565857 m!1837459))

(assert (=> b!1565857 m!1837125))

(declare-fun m!1837461 () Bool)

(assert (=> b!1565857 m!1837461))

(assert (=> b!1565857 m!1837461))

(declare-fun m!1837463 () Bool)

(assert (=> b!1565857 m!1837463))

(declare-fun m!1837465 () Bool)

(assert (=> b!1565856 m!1837465))

(declare-fun m!1837467 () Bool)

(assert (=> d!463874 m!1837467))

(assert (=> d!463874 m!1837125))

(assert (=> d!463874 m!1837125))

(declare-fun m!1837469 () Bool)

(assert (=> d!463874 m!1837469))

(declare-fun m!1837471 () Bool)

(assert (=> b!1565858 m!1837471))

(assert (=> b!1565858 m!1837125))

(assert (=> b!1565858 m!1837461))

(assert (=> b!1565858 m!1837461))

(assert (=> b!1565858 m!1837463))

(assert (=> b!1565634 d!463874))

(declare-fun d!463880 () Bool)

(declare-fun lt!542026 () BalanceConc!11172)

(assert (=> d!463880 (= (list!6554 lt!542026) (printList!772 Lexer!2610 (list!6549 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(assert (=> d!463880 (= lt!542026 (printTailRec!708 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))) 0 (BalanceConc!11173 Empty!5614)))))

(assert (=> d!463880 (= (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))) lt!542026)))

(declare-fun bs!389625 () Bool)

(assert (= bs!389625 d!463880))

(declare-fun m!1837483 () Bool)

(assert (=> bs!389625 m!1837483))

(assert (=> bs!389625 m!1837129))

(assert (=> bs!389625 m!1837131))

(assert (=> bs!389625 m!1837131))

(declare-fun m!1837489 () Bool)

(assert (=> bs!389625 m!1837489))

(assert (=> bs!389625 m!1837129))

(declare-fun m!1837491 () Bool)

(assert (=> bs!389625 m!1837491))

(assert (=> b!1565634 d!463880))

(declare-fun d!463882 () Bool)

(declare-fun e!1005729 () Bool)

(assert (=> d!463882 e!1005729))

(declare-fun res!698076 () Bool)

(assert (=> d!463882 (=> (not res!698076) (not e!1005729))))

(declare-fun lt!542027 () BalanceConc!11174)

(assert (=> d!463882 (= res!698076 (= (list!6549 lt!542027) (Cons!17030 (h!22431 (t!141745 lt!541850)) Nil!17030)))))

(assert (=> d!463882 (= lt!542027 (singleton!555 (h!22431 (t!141745 lt!541850))))))

(assert (=> d!463882 (= (singletonSeq!1349 (h!22431 (t!141745 lt!541850))) lt!542027)))

(declare-fun b!1565866 () Bool)

(assert (=> b!1565866 (= e!1005729 (isBalanced!1663 (c!253628 lt!542027)))))

(assert (= (and d!463882 res!698076) b!1565866))

(declare-fun m!1837497 () Bool)

(assert (=> d!463882 m!1837497))

(declare-fun m!1837501 () Bool)

(assert (=> d!463882 m!1837501))

(declare-fun m!1837503 () Bool)

(assert (=> b!1565866 m!1837503))

(assert (=> b!1565634 d!463882))

(declare-fun d!463886 () Bool)

(declare-fun res!698077 () Bool)

(declare-fun e!1005730 () Bool)

(assert (=> d!463886 (=> (not res!698077) (not e!1005730))))

(assert (=> d!463886 (= res!698077 (<= (size!13806 (list!6552 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) 512))))

(assert (=> d!463886 (= (inv!22398 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) e!1005730)))

(declare-fun b!1565867 () Bool)

(declare-fun res!698078 () Bool)

(assert (=> b!1565867 (=> (not res!698078) (not e!1005730))))

(assert (=> b!1565867 (= res!698078 (= (csize!11461 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) (size!13806 (list!6552 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1565868 () Bool)

(assert (=> b!1565868 (= e!1005730 (and (> (csize!11461 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) 0) (<= (csize!11461 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) 512)))))

(assert (= (and d!463886 res!698077) b!1565867))

(assert (= (and b!1565867 res!698078) b!1565868))

(assert (=> d!463886 m!1837291))

(assert (=> d!463886 m!1837291))

(declare-fun m!1837515 () Bool)

(assert (=> d!463886 m!1837515))

(assert (=> b!1565867 m!1837291))

(assert (=> b!1565867 m!1837291))

(assert (=> b!1565867 m!1837515))

(assert (=> b!1565533 d!463886))

(declare-fun d!463892 () Bool)

(declare-fun lt!542031 () Bool)

(assert (=> d!463892 (= lt!542031 (isEmpty!10203 (list!6554 (_2!9701 lt!541960))))))

(assert (=> d!463892 (= lt!542031 (isEmpty!10204 (c!253626 (_2!9701 lt!541960))))))

(assert (=> d!463892 (= (isEmpty!10199 (_2!9701 lt!541960)) lt!542031)))

(declare-fun bs!389627 () Bool)

(assert (= bs!389627 d!463892))

(declare-fun m!1837517 () Bool)

(assert (=> bs!389627 m!1837517))

(assert (=> bs!389627 m!1837517))

(declare-fun m!1837519 () Bool)

(assert (=> bs!389627 m!1837519))

(declare-fun m!1837521 () Bool)

(assert (=> bs!389627 m!1837521))

(assert (=> b!1565641 d!463892))

(declare-fun d!463894 () Bool)

(declare-fun c!253673 () Bool)

(assert (=> d!463894 (= c!253673 ((_ is Node!5614) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))))

(declare-fun e!1005738 () Bool)

(assert (=> d!463894 (= (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) e!1005738)))

(declare-fun b!1565879 () Bool)

(declare-fun inv!22411 (Conc!5614) Bool)

(assert (=> b!1565879 (= e!1005738 (inv!22411 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))))

(declare-fun b!1565880 () Bool)

(declare-fun e!1005739 () Bool)

(assert (=> b!1565880 (= e!1005738 e!1005739)))

(declare-fun res!698085 () Bool)

(assert (=> b!1565880 (= res!698085 (not ((_ is Leaf!8326) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(assert (=> b!1565880 (=> res!698085 e!1005739)))

(declare-fun b!1565881 () Bool)

(declare-fun inv!22412 (Conc!5614) Bool)

(assert (=> b!1565881 (= e!1005739 (inv!22412 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))))

(assert (= (and d!463894 c!253673) b!1565879))

(assert (= (and d!463894 (not c!253673)) b!1565880))

(assert (= (and b!1565880 (not res!698085)) b!1565881))

(declare-fun m!1837553 () Bool)

(assert (=> b!1565879 m!1837553))

(declare-fun m!1837555 () Bool)

(assert (=> b!1565881 m!1837555))

(assert (=> b!1565639 d!463894))

(declare-fun b!1565900 () Bool)

(declare-fun res!698094 () Bool)

(declare-fun e!1005751 () Bool)

(assert (=> b!1565900 (=> res!698094 e!1005751)))

(assert (=> b!1565900 (= res!698094 (not ((_ is IntegerValue!9221) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun e!1005753 () Bool)

(assert (=> b!1565900 (= e!1005753 e!1005751)))

(declare-fun b!1565901 () Bool)

(declare-fun inv!17 (TokenValue!3073) Bool)

(assert (=> b!1565901 (= e!1005753 (inv!17 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1565902 () Bool)

(declare-fun e!1005752 () Bool)

(declare-fun inv!16 (TokenValue!3073) Bool)

(assert (=> b!1565902 (= e!1005752 (inv!16 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1565903 () Bool)

(assert (=> b!1565903 (= e!1005752 e!1005753)))

(declare-fun c!253679 () Bool)

(assert (=> b!1565903 (= c!253679 ((_ is IntegerValue!9220) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun d!463902 () Bool)

(declare-fun c!253678 () Bool)

(assert (=> d!463902 (= c!253678 ((_ is IntegerValue!9219) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> d!463902 (= (inv!21 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) e!1005752)))

(declare-fun b!1565899 () Bool)

(declare-fun inv!15 (TokenValue!3073) Bool)

(assert (=> b!1565899 (= e!1005751 (inv!15 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (= (and d!463902 c!253678) b!1565902))

(assert (= (and d!463902 (not c!253678)) b!1565903))

(assert (= (and b!1565903 c!253679) b!1565901))

(assert (= (and b!1565903 (not c!253679)) b!1565900))

(assert (= (and b!1565900 (not res!698094)) b!1565899))

(declare-fun m!1837601 () Bool)

(assert (=> b!1565901 m!1837601))

(declare-fun m!1837603 () Bool)

(assert (=> b!1565902 m!1837603))

(declare-fun m!1837605 () Bool)

(assert (=> b!1565899 m!1837605))

(assert (=> b!1565727 d!463902))

(assert (=> d!463776 d!463678))

(assert (=> d!463776 d!463880))

(declare-fun d!463916 () Bool)

(assert (=> d!463916 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))) (list!6550 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(declare-fun bs!389632 () Bool)

(assert (= bs!389632 d!463916))

(declare-fun m!1837607 () Bool)

(assert (=> bs!389632 m!1837607))

(assert (=> d!463776 d!463916))

(declare-fun d!463918 () Bool)

(declare-fun lt!542040 () Int)

(assert (=> d!463918 (= lt!542040 (size!13806 (list!6549 (_1!9701 lt!541955))))))

(assert (=> d!463918 (= lt!542040 (size!13807 (c!253628 (_1!9701 lt!541955))))))

(assert (=> d!463918 (= (size!13812 (_1!9701 lt!541955)) lt!542040)))

(declare-fun bs!389633 () Bool)

(assert (= bs!389633 d!463918))

(assert (=> bs!389633 m!1837301))

(assert (=> bs!389633 m!1837301))

(declare-fun m!1837609 () Bool)

(assert (=> bs!389633 m!1837609))

(declare-fun m!1837611 () Bool)

(assert (=> bs!389633 m!1837611))

(assert (=> d!463776 d!463918))

(assert (=> d!463776 d!463874))

(declare-fun d!463920 () Bool)

(assert (=> d!463920 (= (list!6549 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))) (list!6550 (c!253628 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(declare-fun bs!389634 () Bool)

(assert (= bs!389634 d!463920))

(declare-fun m!1837613 () Bool)

(assert (=> bs!389634 m!1837613))

(assert (=> d!463776 d!463920))

(assert (=> d!463776 d!463882))

(declare-fun d!463922 () Bool)

(assert (=> d!463922 (= (inv!22390 (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (= (mod (str.len (value!94687 (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) 2) 0))))

(assert (=> b!1565697 d!463922))

(declare-fun d!463924 () Bool)

(declare-fun res!698095 () Bool)

(declare-fun e!1005754 () Bool)

(assert (=> d!463924 (=> (not res!698095) (not e!1005754))))

(assert (=> d!463924 (= res!698095 (semiInverseModEq!1131 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))))))

(assert (=> d!463924 (= (inv!22403 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) e!1005754)))

(declare-fun b!1565904 () Bool)

(assert (=> b!1565904 (= e!1005754 (equivClasses!1072 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))))))

(assert (= (and d!463924 res!698095) b!1565904))

(declare-fun m!1837615 () Bool)

(assert (=> d!463924 m!1837615))

(declare-fun m!1837617 () Bool)

(assert (=> b!1565904 m!1837617))

(assert (=> b!1565697 d!463924))

(declare-fun d!463926 () Bool)

(declare-fun lt!542043 () Int)

(assert (=> d!463926 (>= lt!542043 0)))

(declare-fun e!1005763 () Int)

(assert (=> d!463926 (= lt!542043 e!1005763)))

(declare-fun c!253686 () Bool)

(assert (=> d!463926 (= c!253686 ((_ is Nil!17030) (list!6552 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!463926 (= (size!13806 (list!6552 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))) lt!542043)))

(declare-fun b!1565919 () Bool)

(assert (=> b!1565919 (= e!1005763 0)))

(declare-fun b!1565920 () Bool)

(assert (=> b!1565920 (= e!1005763 (+ 1 (size!13806 (t!141745 (list!6552 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (= (and d!463926 c!253686) b!1565919))

(assert (= (and d!463926 (not c!253686)) b!1565920))

(declare-fun m!1837619 () Bool)

(assert (=> b!1565920 m!1837619))

(assert (=> d!463752 d!463926))

(declare-fun d!463928 () Bool)

(assert (=> d!463928 (= (list!6552 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))) (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))

(assert (=> d!463752 d!463928))

(assert (=> d!463786 d!463776))

(declare-fun d!463932 () Bool)

(assert (=> d!463932 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 lt!541850)))))

(assert (=> d!463932 true))

(declare-fun _$77!660 () Unit!26198)

(assert (=> d!463932 (= (choose!9342 Lexer!2610 (rules!12084 thiss!10002) lt!541850 (h!22431 (t!141745 lt!541850))) _$77!660)))

(declare-fun bs!389635 () Bool)

(assert (= bs!389635 d!463932))

(assert (=> bs!389635 m!1836833))

(assert (=> d!463786 d!463932))

(assert (=> d!463786 d!463678))

(declare-fun d!463934 () Bool)

(declare-fun res!698099 () Bool)

(declare-fun e!1005767 () Bool)

(assert (=> d!463934 (=> res!698099 e!1005767)))

(assert (=> d!463934 (= res!698099 ((_ is Nil!17030) (t!141745 lt!541850)))))

(assert (=> d!463934 (= (forall!3952 (t!141745 lt!541850) lambda!66200) e!1005767)))

(declare-fun b!1565926 () Bool)

(declare-fun e!1005768 () Bool)

(assert (=> b!1565926 (= e!1005767 e!1005768)))

(declare-fun res!698100 () Bool)

(assert (=> b!1565926 (=> (not res!698100) (not e!1005768))))

(assert (=> b!1565926 (= res!698100 (dynLambda!7593 lambda!66200 (h!22431 (t!141745 lt!541850))))))

(declare-fun b!1565927 () Bool)

(assert (=> b!1565927 (= e!1005768 (forall!3952 (t!141745 (t!141745 lt!541850)) lambda!66200))))

(assert (= (and d!463934 (not res!698099)) b!1565926))

(assert (= (and b!1565926 res!698100) b!1565927))

(declare-fun b_lambda!49269 () Bool)

(assert (=> (not b_lambda!49269) (not b!1565926)))

(declare-fun m!1837627 () Bool)

(assert (=> b!1565926 m!1837627))

(declare-fun m!1837629 () Bool)

(assert (=> b!1565927 m!1837629))

(assert (=> b!1565583 d!463934))

(declare-fun d!463936 () Bool)

(declare-fun res!698101 () Bool)

(declare-fun e!1005769 () Bool)

(assert (=> d!463936 (=> (not res!698101) (not e!1005769))))

(assert (=> d!463936 (= res!698101 (= (csize!11460 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (+ (size!13807 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (size!13807 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> d!463936 (= (inv!22397 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) e!1005769)))

(declare-fun b!1565928 () Bool)

(declare-fun res!698102 () Bool)

(assert (=> b!1565928 (=> (not res!698102) (not e!1005769))))

(assert (=> b!1565928 (= res!698102 (and (not (= (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) Empty!5615)) (not (= (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) Empty!5615))))))

(declare-fun b!1565929 () Bool)

(declare-fun res!698103 () Bool)

(assert (=> b!1565929 (=> (not res!698103) (not e!1005769))))

(assert (=> b!1565929 (= res!698103 (= (cheight!5826 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (+ (max!0 (height!836 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) 1)))))

(declare-fun b!1565930 () Bool)

(assert (=> b!1565930 (= e!1005769 (<= 0 (cheight!5826 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!463936 res!698101) b!1565928))

(assert (= (and b!1565928 res!698102) b!1565929))

(assert (= (and b!1565929 res!698103) b!1565930))

(declare-fun m!1837631 () Bool)

(assert (=> d!463936 m!1837631))

(declare-fun m!1837633 () Bool)

(assert (=> d!463936 m!1837633))

(declare-fun m!1837635 () Bool)

(assert (=> b!1565929 m!1837635))

(declare-fun m!1837637 () Bool)

(assert (=> b!1565929 m!1837637))

(assert (=> b!1565929 m!1837635))

(assert (=> b!1565929 m!1837637))

(declare-fun m!1837639 () Bool)

(assert (=> b!1565929 m!1837639))

(assert (=> b!1565528 d!463936))

(declare-fun d!463938 () Bool)

(declare-fun res!698104 () Bool)

(declare-fun e!1005770 () Bool)

(assert (=> d!463938 (=> res!698104 e!1005770)))

(assert (=> d!463938 (= res!698104 ((_ is Nil!17030) (list!6549 (tokens!2198 thiss!10002))))))

(assert (=> d!463938 (= (forall!3952 (list!6549 (tokens!2198 thiss!10002)) lambda!66209) e!1005770)))

(declare-fun b!1565931 () Bool)

(declare-fun e!1005771 () Bool)

(assert (=> b!1565931 (= e!1005770 e!1005771)))

(declare-fun res!698105 () Bool)

(assert (=> b!1565931 (=> (not res!698105) (not e!1005771))))

(assert (=> b!1565931 (= res!698105 (dynLambda!7593 lambda!66209 (h!22431 (list!6549 (tokens!2198 thiss!10002)))))))

(declare-fun b!1565932 () Bool)

(assert (=> b!1565932 (= e!1005771 (forall!3952 (t!141745 (list!6549 (tokens!2198 thiss!10002))) lambda!66209))))

(assert (= (and d!463938 (not res!698104)) b!1565931))

(assert (= (and b!1565931 res!698105) b!1565932))

(declare-fun b_lambda!49271 () Bool)

(assert (=> (not b_lambda!49271) (not b!1565931)))

(declare-fun m!1837641 () Bool)

(assert (=> b!1565931 m!1837641))

(declare-fun m!1837643 () Bool)

(assert (=> b!1565932 m!1837643))

(assert (=> d!463734 d!463938))

(assert (=> d!463734 d!463680))

(declare-fun d!463940 () Bool)

(declare-fun lt!542046 () Bool)

(assert (=> d!463940 (= lt!542046 (forall!3952 (list!6549 (tokens!2198 thiss!10002)) lambda!66209))))

(declare-fun forall!3957 (Conc!5615 Int) Bool)

(assert (=> d!463940 (= lt!542046 (forall!3957 (c!253628 (tokens!2198 thiss!10002)) lambda!66209))))

(assert (=> d!463940 (= (forall!3953 (tokens!2198 thiss!10002) lambda!66209) lt!542046)))

(declare-fun bs!389636 () Bool)

(assert (= bs!389636 d!463940))

(assert (=> bs!389636 m!1836811))

(assert (=> bs!389636 m!1836811))

(assert (=> bs!389636 m!1837021))

(declare-fun m!1837645 () Bool)

(assert (=> bs!389636 m!1837645))

(assert (=> d!463734 d!463940))

(assert (=> d!463734 d!463678))

(declare-fun d!463942 () Bool)

(declare-fun lt!542047 () Int)

(assert (=> d!463942 (>= lt!542047 0)))

(declare-fun e!1005772 () Int)

(assert (=> d!463942 (= lt!542047 e!1005772)))

(declare-fun c!253689 () Bool)

(assert (=> d!463942 (= c!253689 ((_ is Nil!17030) (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!463942 (= (size!13806 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))) lt!542047)))

(declare-fun b!1565933 () Bool)

(assert (=> b!1565933 (= e!1005772 0)))

(declare-fun b!1565934 () Bool)

(assert (=> b!1565934 (= e!1005772 (+ 1 (size!13806 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (= (and d!463942 c!253689) b!1565933))

(assert (= (and d!463942 (not c!253689)) b!1565934))

(declare-fun m!1837647 () Bool)

(assert (=> b!1565934 m!1837647))

(assert (=> d!463744 d!463942))

(declare-fun d!463944 () Bool)

(declare-fun res!698106 () Bool)

(declare-fun e!1005773 () Bool)

(assert (=> d!463944 (=> (not res!698106) (not e!1005773))))

(assert (=> d!463944 (= res!698106 (<= (size!13806 (list!6552 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) 512))))

(assert (=> d!463944 (= (inv!22398 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) e!1005773)))

(declare-fun b!1565935 () Bool)

(declare-fun res!698107 () Bool)

(assert (=> b!1565935 (=> (not res!698107) (not e!1005773))))

(assert (=> b!1565935 (= res!698107 (= (csize!11461 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (size!13806 (list!6552 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1565936 () Bool)

(assert (=> b!1565936 (= e!1005773 (and (> (csize!11461 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) 0) (<= (csize!11461 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) 512)))))

(assert (= (and d!463944 res!698106) b!1565935))

(assert (= (and b!1565935 res!698107) b!1565936))

(assert (=> d!463944 m!1837283))

(assert (=> d!463944 m!1837283))

(declare-fun m!1837649 () Bool)

(assert (=> d!463944 m!1837649))

(assert (=> b!1565935 m!1837283))

(assert (=> b!1565935 m!1837283))

(assert (=> b!1565935 m!1837649))

(assert (=> b!1565530 d!463944))

(declare-fun d!463946 () Bool)

(assert (=> d!463946 true))

(declare-fun lambda!66225 () Int)

(declare-fun order!10097 () Int)

(declare-fun dynLambda!7597 (Int Int) Int)

(assert (=> d!463946 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7597 order!10097 lambda!66225))))

(declare-fun Forall2!494 (Int) Bool)

(assert (=> d!463946 (= (equivClasses!1072 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (Forall2!494 lambda!66225))))

(declare-fun bs!389637 () Bool)

(assert (= bs!389637 d!463946))

(declare-fun m!1837651 () Bool)

(assert (=> bs!389637 m!1837651))

(assert (=> b!1565569 d!463946))

(declare-fun d!463948 () Bool)

(declare-fun isBalanced!1665 (Conc!5614) Bool)

(assert (=> d!463948 (= (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))) (isBalanced!1665 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))))

(declare-fun bs!389638 () Bool)

(assert (= bs!389638 d!463948))

(declare-fun m!1837653 () Bool)

(assert (=> bs!389638 m!1837653))

(assert (=> tb!87457 d!463948))

(declare-fun d!463950 () Bool)

(declare-fun lt!542050 () Int)

(assert (=> d!463950 (>= lt!542050 0)))

(declare-fun e!1005778 () Int)

(assert (=> d!463950 (= lt!542050 e!1005778)))

(declare-fun c!253692 () Bool)

(assert (=> d!463950 (= c!253692 ((_ is Nil!17029) (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))

(assert (=> d!463950 (= (size!13810 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850))))) lt!542050)))

(declare-fun b!1565945 () Bool)

(assert (=> b!1565945 (= e!1005778 0)))

(declare-fun b!1565946 () Bool)

(assert (=> b!1565946 (= e!1005778 (+ 1 (size!13810 (t!141744 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))))

(assert (= (and d!463950 c!253692) b!1565945))

(assert (= (and d!463950 (not c!253692)) b!1565946))

(declare-fun m!1837655 () Bool)

(assert (=> b!1565946 m!1837655))

(assert (=> d!463774 d!463950))

(declare-fun d!463952 () Bool)

(declare-fun list!6556 (Conc!5614) List!17099)

(assert (=> d!463952 (= (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850)))) (list!6556 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))

(declare-fun bs!389639 () Bool)

(assert (= bs!389639 d!463952))

(declare-fun m!1837657 () Bool)

(assert (=> bs!389639 m!1837657))

(assert (=> d!463774 d!463952))

(declare-fun d!463954 () Bool)

(declare-fun lt!542053 () Int)

(assert (=> d!463954 (= lt!542053 (size!13810 (list!6556 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))))))

(assert (=> d!463954 (= lt!542053 (ite ((_ is Empty!5614) (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))) 0 (ite ((_ is Leaf!8326) (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))) (csize!11459 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))) (csize!11458 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))))

(assert (=> d!463954 (= (size!13811 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))) lt!542053)))

(declare-fun bs!389640 () Bool)

(assert (= bs!389640 d!463954))

(assert (=> bs!389640 m!1837657))

(assert (=> bs!389640 m!1837657))

(declare-fun m!1837659 () Bool)

(assert (=> bs!389640 m!1837659))

(assert (=> d!463774 d!463954))

(assert (=> b!1565452 d!463730))

(assert (=> b!1565452 d!463732))

(declare-fun d!463956 () Bool)

(assert (=> d!463956 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))

(declare-fun lt!542054 () Unit!26198)

(assert (=> d!463956 (= lt!542054 (choose!9342 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))) (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))

(assert (=> d!463956 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463956 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))) (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) lt!542054)))

(declare-fun bs!389641 () Bool)

(assert (= bs!389641 d!463956))

(assert (=> bs!389641 m!1837069))

(declare-fun m!1837661 () Bool)

(assert (=> bs!389641 m!1837661))

(assert (=> bs!389641 m!1836809))

(assert (=> b!1565605 d!463956))

(declare-fun d!463958 () Bool)

(declare-fun lt!542056 () Bool)

(declare-fun e!1005779 () Bool)

(assert (=> d!463958 (= lt!542056 e!1005779)))

(declare-fun res!698110 () Bool)

(assert (=> d!463958 (=> (not res!698110) (not e!1005779))))

(assert (=> d!463958 (= res!698110 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) (list!6549 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))

(declare-fun e!1005780 () Bool)

(assert (=> d!463958 (= lt!542056 e!1005780)))

(declare-fun res!698111 () Bool)

(assert (=> d!463958 (=> (not res!698111) (not e!1005780))))

(declare-fun lt!542055 () tuple2!16598)

(assert (=> d!463958 (= res!698111 (= (size!13812 (_1!9701 lt!542055)) 1))))

(assert (=> d!463958 (= lt!542055 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))

(assert (=> d!463958 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463958 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) lt!542056)))

(declare-fun b!1565947 () Bool)

(declare-fun res!698112 () Bool)

(assert (=> b!1565947 (=> (not res!698112) (not e!1005780))))

(assert (=> b!1565947 (= res!698112 (= (apply!4131 (_1!9701 lt!542055) 0) (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))

(declare-fun b!1565948 () Bool)

(assert (=> b!1565948 (= e!1005780 (isEmpty!10199 (_2!9701 lt!542055)))))

(declare-fun b!1565949 () Bool)

(assert (=> b!1565949 (= e!1005779 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(assert (= (and d!463958 res!698111) b!1565947))

(assert (= (and b!1565947 res!698112) b!1565948))

(assert (= (and d!463958 res!698110) b!1565949))

(declare-fun m!1837663 () Bool)

(assert (=> d!463958 m!1837663))

(declare-fun m!1837665 () Bool)

(assert (=> d!463958 m!1837665))

(assert (=> d!463958 m!1836809))

(declare-fun m!1837667 () Bool)

(assert (=> d!463958 m!1837667))

(declare-fun m!1837669 () Bool)

(assert (=> d!463958 m!1837669))

(assert (=> d!463958 m!1837667))

(assert (=> d!463958 m!1837663))

(declare-fun m!1837671 () Bool)

(assert (=> d!463958 m!1837671))

(declare-fun m!1837673 () Bool)

(assert (=> d!463958 m!1837673))

(assert (=> d!463958 m!1837667))

(declare-fun m!1837675 () Bool)

(assert (=> b!1565947 m!1837675))

(declare-fun m!1837677 () Bool)

(assert (=> b!1565948 m!1837677))

(assert (=> b!1565949 m!1837667))

(assert (=> b!1565949 m!1837667))

(assert (=> b!1565949 m!1837663))

(assert (=> b!1565949 m!1837663))

(assert (=> b!1565949 m!1837665))

(declare-fun m!1837679 () Bool)

(assert (=> b!1565949 m!1837679))

(assert (=> b!1565605 d!463958))

(declare-fun d!463960 () Bool)

(declare-fun lt!542058 () Bool)

(declare-fun e!1005781 () Bool)

(assert (=> d!463960 (= lt!542058 e!1005781)))

(declare-fun res!698113 () Bool)

(assert (=> d!463960 (=> (not res!698113) (not e!1005781))))

(assert (=> d!463960 (= res!698113 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (list!6549 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(declare-fun e!1005782 () Bool)

(assert (=> d!463960 (= lt!542058 e!1005782)))

(declare-fun res!698114 () Bool)

(assert (=> d!463960 (=> (not res!698114) (not e!1005782))))

(declare-fun lt!542057 () tuple2!16598)

(assert (=> d!463960 (= res!698114 (= (size!13812 (_1!9701 lt!542057)) 1))))

(assert (=> d!463960 (= lt!542057 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(assert (=> d!463960 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463960 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) lt!542058)))

(declare-fun b!1565950 () Bool)

(declare-fun res!698115 () Bool)

(assert (=> b!1565950 (=> (not res!698115) (not e!1005782))))

(assert (=> b!1565950 (= res!698115 (= (apply!4131 (_1!9701 lt!542057) 0) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))

(declare-fun b!1565951 () Bool)

(assert (=> b!1565951 (= e!1005782 (isEmpty!10199 (_2!9701 lt!542057)))))

(declare-fun b!1565952 () Bool)

(assert (=> b!1565952 (= e!1005781 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(assert (= (and d!463960 res!698114) b!1565950))

(assert (= (and b!1565950 res!698115) b!1565951))

(assert (= (and d!463960 res!698113) b!1565952))

(declare-fun m!1837681 () Bool)

(assert (=> d!463960 m!1837681))

(declare-fun m!1837683 () Bool)

(assert (=> d!463960 m!1837683))

(assert (=> d!463960 m!1836809))

(declare-fun m!1837685 () Bool)

(assert (=> d!463960 m!1837685))

(declare-fun m!1837687 () Bool)

(assert (=> d!463960 m!1837687))

(assert (=> d!463960 m!1837685))

(assert (=> d!463960 m!1837681))

(declare-fun m!1837689 () Bool)

(assert (=> d!463960 m!1837689))

(declare-fun m!1837691 () Bool)

(assert (=> d!463960 m!1837691))

(assert (=> d!463960 m!1837685))

(declare-fun m!1837693 () Bool)

(assert (=> b!1565950 m!1837693))

(declare-fun m!1837695 () Bool)

(assert (=> b!1565951 m!1837695))

(assert (=> b!1565952 m!1837685))

(assert (=> b!1565952 m!1837685))

(assert (=> b!1565952 m!1837681))

(assert (=> b!1565952 m!1837681))

(assert (=> b!1565952 m!1837683))

(declare-fun m!1837697 () Bool)

(assert (=> b!1565952 m!1837697))

(assert (=> b!1565605 d!463960))

(declare-fun d!463962 () Bool)

(assert (=> d!463962 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))

(declare-fun lt!542059 () Unit!26198)

(assert (=> d!463962 (= lt!542059 (choose!9342 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))

(assert (=> d!463962 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463962 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) lt!542059)))

(declare-fun bs!389642 () Bool)

(assert (= bs!389642 d!463962))

(assert (=> bs!389642 m!1837063))

(declare-fun m!1837699 () Bool)

(assert (=> bs!389642 m!1837699))

(assert (=> bs!389642 m!1836809))

(assert (=> b!1565605 d!463962))

(declare-fun d!463964 () Bool)

(declare-fun lt!542060 () BalanceConc!11172)

(assert (=> d!463964 (= (list!6554 lt!542060) (originalCharacters!3797 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))

(assert (=> d!463964 (= lt!542060 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))

(assert (=> d!463964 (= (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) lt!542060)))

(declare-fun b_lambda!49273 () Bool)

(assert (=> (not b_lambda!49273) (not d!463964)))

(declare-fun tb!87473 () Bool)

(declare-fun t!141796 () Bool)

(assert (=> (and b!1565476 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!141796) tb!87473))

(declare-fun b!1565953 () Bool)

(declare-fun e!1005783 () Bool)

(declare-fun tp!461176 () Bool)

(assert (=> b!1565953 (= e!1005783 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) tp!461176))))

(declare-fun result!105924 () Bool)

(assert (=> tb!87473 (= result!105924 (and (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) e!1005783))))

(assert (= tb!87473 b!1565953))

(declare-fun m!1837701 () Bool)

(assert (=> b!1565953 m!1837701))

(declare-fun m!1837703 () Bool)

(assert (=> tb!87473 m!1837703))

(assert (=> d!463964 t!141796))

(declare-fun b_and!109259 () Bool)

(assert (= b_and!109235 (and (=> t!141796 result!105924) b_and!109259)))

(declare-fun tb!87475 () Bool)

(declare-fun t!141798 () Bool)

(assert (=> (and b!1565698 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!141798) tb!87475))

(declare-fun result!105926 () Bool)

(assert (= result!105926 result!105924))

(assert (=> d!463964 t!141798))

(declare-fun b_and!109261 () Bool)

(assert (= b_and!109239 (and (=> t!141798 result!105926) b_and!109261)))

(declare-fun tb!87477 () Bool)

(declare-fun t!141800 () Bool)

(assert (=> (and b!1565729 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!141800) tb!87477))

(declare-fun result!105928 () Bool)

(assert (= result!105928 result!105924))

(assert (=> d!463964 t!141800))

(declare-fun b_and!109263 () Bool)

(assert (= b_and!109247 (and (=> t!141800 result!105928) b_and!109263)))

(declare-fun m!1837705 () Bool)

(assert (=> d!463964 m!1837705))

(declare-fun m!1837707 () Bool)

(assert (=> d!463964 m!1837707))

(assert (=> b!1565605 d!463964))

(declare-fun d!463966 () Bool)

(declare-fun lt!542061 () Int)

(assert (=> d!463966 (= lt!542061 (size!13810 (list!6554 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(assert (=> d!463966 (= lt!542061 (size!13811 (c!253626 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(assert (=> d!463966 (= (size!13804 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) lt!542061)))

(declare-fun bs!389643 () Bool)

(assert (= bs!389643 d!463966))

(assert (=> bs!389643 m!1837061))

(declare-fun m!1837709 () Bool)

(assert (=> bs!389643 m!1837709))

(assert (=> bs!389643 m!1837709))

(declare-fun m!1837711 () Bool)

(assert (=> bs!389643 m!1837711))

(declare-fun m!1837713 () Bool)

(assert (=> bs!389643 m!1837713))

(assert (=> b!1565605 d!463966))

(declare-fun d!463968 () Bool)

(assert (=> d!463968 (= (separableTokensPredicate!598 Lexer!2610 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (rules!12084 thiss!10002)) (not (prefixMatchZipperSequence!393 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (++!4433 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))))))))

(declare-fun bs!389644 () Bool)

(assert (= bs!389644 d!463968))

(assert (=> bs!389644 m!1837143))

(declare-fun m!1837715 () Bool)

(assert (=> bs!389644 m!1837715))

(declare-fun m!1837717 () Bool)

(assert (=> bs!389644 m!1837717))

(declare-fun m!1837719 () Bool)

(assert (=> bs!389644 m!1837719))

(declare-fun m!1837721 () Bool)

(assert (=> bs!389644 m!1837721))

(assert (=> bs!389644 m!1837715))

(assert (=> bs!389644 m!1837143))

(assert (=> bs!389644 m!1837061))

(declare-fun m!1837723 () Bool)

(assert (=> bs!389644 m!1837723))

(assert (=> bs!389644 m!1837061))

(assert (=> bs!389644 m!1837723))

(assert (=> bs!389644 m!1837721))

(assert (=> bs!389644 m!1837719))

(assert (=> b!1565605 d!463968))

(assert (=> b!1565603 d!463928))

(declare-fun d!463970 () Bool)

(declare-fun c!253693 () Bool)

(assert (=> d!463970 (= c!253693 ((_ is Node!5615) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun e!1005784 () Bool)

(assert (=> d!463970 (= (inv!22394 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1005784)))

(declare-fun b!1565954 () Bool)

(assert (=> b!1565954 (= e!1005784 (inv!22397 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1565955 () Bool)

(declare-fun e!1005785 () Bool)

(assert (=> b!1565955 (= e!1005784 e!1005785)))

(declare-fun res!698116 () Bool)

(assert (=> b!1565955 (= res!698116 (not ((_ is Leaf!8327) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> b!1565955 (=> res!698116 e!1005785)))

(declare-fun b!1565956 () Bool)

(assert (=> b!1565956 (= e!1005785 (inv!22398 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!463970 c!253693) b!1565954))

(assert (= (and d!463970 (not c!253693)) b!1565955))

(assert (= (and b!1565955 (not res!698116)) b!1565956))

(declare-fun m!1837725 () Bool)

(assert (=> b!1565954 m!1837725))

(declare-fun m!1837727 () Bool)

(assert (=> b!1565956 m!1837727))

(assert (=> b!1565676 d!463970))

(declare-fun d!463972 () Bool)

(declare-fun c!253694 () Bool)

(assert (=> d!463972 (= c!253694 ((_ is Node!5615) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun e!1005786 () Bool)

(assert (=> d!463972 (= (inv!22394 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1005786)))

(declare-fun b!1565957 () Bool)

(assert (=> b!1565957 (= e!1005786 (inv!22397 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1565958 () Bool)

(declare-fun e!1005787 () Bool)

(assert (=> b!1565958 (= e!1005786 e!1005787)))

(declare-fun res!698117 () Bool)

(assert (=> b!1565958 (= res!698117 (not ((_ is Leaf!8327) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> b!1565958 (=> res!698117 e!1005787)))

(declare-fun b!1565959 () Bool)

(assert (=> b!1565959 (= e!1005787 (inv!22398 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!463972 c!253694) b!1565957))

(assert (= (and d!463972 (not c!253694)) b!1565958))

(assert (= (and b!1565958 (not res!698117)) b!1565959))

(declare-fun m!1837729 () Bool)

(assert (=> b!1565957 m!1837729))

(declare-fun m!1837731 () Bool)

(assert (=> b!1565959 m!1837731))

(assert (=> b!1565676 d!463972))

(declare-fun d!463974 () Bool)

(declare-fun c!253695 () Bool)

(assert (=> d!463974 (= c!253695 ((_ is Node!5615) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun e!1005788 () Bool)

(assert (=> d!463974 (= (inv!22394 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1005788)))

(declare-fun b!1565960 () Bool)

(assert (=> b!1565960 (= e!1005788 (inv!22397 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1565961 () Bool)

(declare-fun e!1005789 () Bool)

(assert (=> b!1565961 (= e!1005788 e!1005789)))

(declare-fun res!698118 () Bool)

(assert (=> b!1565961 (= res!698118 (not ((_ is Leaf!8327) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> b!1565961 (=> res!698118 e!1005789)))

(declare-fun b!1565962 () Bool)

(assert (=> b!1565962 (= e!1005789 (inv!22398 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!463974 c!253695) b!1565960))

(assert (= (and d!463974 (not c!253695)) b!1565961))

(assert (= (and b!1565961 (not res!698118)) b!1565962))

(declare-fun m!1837733 () Bool)

(assert (=> b!1565960 m!1837733))

(declare-fun m!1837735 () Bool)

(assert (=> b!1565962 m!1837735))

(assert (=> b!1565679 d!463974))

(declare-fun d!463976 () Bool)

(declare-fun c!253696 () Bool)

(assert (=> d!463976 (= c!253696 ((_ is Node!5615) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun e!1005790 () Bool)

(assert (=> d!463976 (= (inv!22394 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1005790)))

(declare-fun b!1565963 () Bool)

(assert (=> b!1565963 (= e!1005790 (inv!22397 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1565964 () Bool)

(declare-fun e!1005791 () Bool)

(assert (=> b!1565964 (= e!1005790 e!1005791)))

(declare-fun res!698119 () Bool)

(assert (=> b!1565964 (= res!698119 (not ((_ is Leaf!8327) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> b!1565964 (=> res!698119 e!1005791)))

(declare-fun b!1565965 () Bool)

(assert (=> b!1565965 (= e!1005791 (inv!22398 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!463976 c!253696) b!1565963))

(assert (= (and d!463976 (not c!253696)) b!1565964))

(assert (= (and b!1565964 (not res!698119)) b!1565965))

(declare-fun m!1837737 () Bool)

(assert (=> b!1565963 m!1837737))

(declare-fun m!1837739 () Bool)

(assert (=> b!1565965 m!1837739))

(assert (=> b!1565679 d!463976))

(declare-fun bs!389645 () Bool)

(declare-fun d!463978 () Bool)

(assert (= bs!389645 (and d!463978 d!463688)))

(declare-fun lambda!66226 () Int)

(assert (=> bs!389645 (= lambda!66226 lambda!66200)))

(declare-fun bs!389646 () Bool)

(assert (= bs!389646 (and d!463978 d!463734)))

(assert (=> bs!389646 (= lambda!66226 lambda!66209)))

(declare-fun bs!389647 () Bool)

(assert (= bs!389647 (and d!463978 d!463762)))

(assert (=> bs!389647 (= lambda!66226 lambda!66213)))

(declare-fun bs!389648 () Bool)

(assert (= bs!389648 (and d!463978 d!463866)))

(assert (=> bs!389648 (= lambda!66226 lambda!66222)))

(declare-fun b!1565970 () Bool)

(declare-fun e!1005796 () Bool)

(assert (=> b!1565970 (= e!1005796 true)))

(declare-fun b!1565969 () Bool)

(declare-fun e!1005795 () Bool)

(assert (=> b!1565969 (= e!1005795 e!1005796)))

(declare-fun b!1565968 () Bool)

(declare-fun e!1005794 () Bool)

(assert (=> b!1565968 (= e!1005794 e!1005795)))

(assert (=> d!463978 e!1005794))

(assert (= b!1565969 b!1565970))

(assert (= b!1565968 b!1565969))

(assert (= (and d!463978 ((_ is Cons!17031) (rules!12084 thiss!10002))) b!1565968))

(assert (=> b!1565970 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66226))))

(assert (=> b!1565970 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66226))))

(assert (=> d!463978 true))

(declare-fun lt!542062 () Bool)

(assert (=> d!463978 (= lt!542062 (forall!3952 (list!6549 (tokens!2198 thiss!10002)) lambda!66226))))

(declare-fun e!1005792 () Bool)

(assert (=> d!463978 (= lt!542062 e!1005792)))

(declare-fun res!698120 () Bool)

(assert (=> d!463978 (=> res!698120 e!1005792)))

(assert (=> d!463978 (= res!698120 (not ((_ is Cons!17030) (list!6549 (tokens!2198 thiss!10002)))))))

(assert (=> d!463978 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!463978 (= (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (list!6549 (tokens!2198 thiss!10002))) lt!542062)))

(declare-fun b!1565966 () Bool)

(declare-fun e!1005793 () Bool)

(assert (=> b!1565966 (= e!1005792 e!1005793)))

(declare-fun res!698121 () Bool)

(assert (=> b!1565966 (=> (not res!698121) (not e!1005793))))

(assert (=> b!1565966 (= res!698121 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (list!6549 (tokens!2198 thiss!10002)))))))

(declare-fun b!1565967 () Bool)

(assert (=> b!1565967 (= e!1005793 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 (list!6549 (tokens!2198 thiss!10002)))))))

(assert (= (and d!463978 (not res!698120)) b!1565966))

(assert (= (and b!1565966 res!698121) b!1565967))

(assert (=> d!463978 m!1836811))

(declare-fun m!1837741 () Bool)

(assert (=> d!463978 m!1837741))

(assert (=> d!463978 m!1836809))

(declare-fun m!1837743 () Bool)

(assert (=> b!1565966 m!1837743))

(declare-fun m!1837745 () Bool)

(assert (=> b!1565967 m!1837745))

(assert (=> b!1565563 d!463978))

(assert (=> b!1565563 d!463680))

(declare-fun b!1566009 () Bool)

(declare-fun e!1005829 () Bool)

(assert (=> b!1566009 (= e!1005829 (tokensListTwoByTwoPredicateSeparable!146 Lexer!2610 (tokens!2198 thiss!10002) (+ 0 1) (rules!12084 thiss!10002)))))

(declare-fun b!1566010 () Bool)

(declare-fun res!698160 () Bool)

(declare-fun e!1005828 () Bool)

(assert (=> b!1566010 (=> (not res!698160) (not e!1005828))))

(assert (=> b!1566010 (= res!698160 (rulesInvariant!2289 Lexer!2610 (rules!12084 thiss!10002)))))

(declare-fun b!1566011 () Bool)

(declare-fun e!1005827 () Bool)

(declare-fun lt!542142 () List!17100)

(assert (=> b!1566011 (= e!1005827 (<= 0 (size!13806 lt!542142)))))

(declare-fun d!463980 () Bool)

(declare-fun lt!542148 () Bool)

(declare-fun dropList!497 (BalanceConc!11174 Int) List!17100)

(assert (=> d!463980 (= lt!542148 (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (dropList!497 (tokens!2198 thiss!10002) 0) (rules!12084 thiss!10002)))))

(declare-fun lt!542147 () Unit!26198)

(declare-fun lt!542149 () Unit!26198)

(assert (=> d!463980 (= lt!542147 lt!542149)))

(declare-fun lt!542157 () List!17100)

(assert (=> d!463980 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) lt!542157)))

(declare-fun lt!542159 () List!17100)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!69 (LexerInterface!2612 List!17101 List!17100 List!17100) Unit!26198)

(assert (=> d!463980 (= lt!542149 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!69 Lexer!2610 (rules!12084 thiss!10002) lt!542159 lt!542157))))

(assert (=> d!463980 e!1005828))

(declare-fun res!698159 () Bool)

(assert (=> d!463980 (=> (not res!698159) (not e!1005828))))

(assert (=> d!463980 (= res!698159 ((_ is Lexer!2610) Lexer!2610))))

(assert (=> d!463980 (= lt!542157 (dropList!497 (tokens!2198 thiss!10002) 0))))

(assert (=> d!463980 (= lt!542159 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!542151 () Unit!26198)

(declare-fun lt!542168 () Unit!26198)

(assert (=> d!463980 (= lt!542151 lt!542168)))

(declare-fun subseq!374 (List!17100 List!17100) Bool)

(declare-fun drop!799 (List!17100 Int) List!17100)

(assert (=> d!463980 (subseq!374 (drop!799 lt!542142 0) lt!542142)))

(declare-fun lemmaDropSubSeq!69 (List!17100 Int) Unit!26198)

(assert (=> d!463980 (= lt!542168 (lemmaDropSubSeq!69 lt!542142 0))))

(assert (=> d!463980 e!1005827))

(declare-fun res!698156 () Bool)

(assert (=> d!463980 (=> (not res!698156) (not e!1005827))))

(assert (=> d!463980 (= res!698156 (>= 0 0))))

(assert (=> d!463980 (= lt!542142 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun e!1005831 () Bool)

(assert (=> d!463980 (= lt!542148 e!1005831)))

(declare-fun res!698157 () Bool)

(assert (=> d!463980 (=> res!698157 e!1005831)))

(assert (=> d!463980 (= res!698157 (not (< 0 (- (size!13812 (tokens!2198 thiss!10002)) 1))))))

(declare-fun e!1005830 () Bool)

(assert (=> d!463980 e!1005830))

(declare-fun res!698162 () Bool)

(assert (=> d!463980 (=> (not res!698162) (not e!1005830))))

(assert (=> d!463980 (= res!698162 (>= 0 0))))

(assert (=> d!463980 (= (tokensListTwoByTwoPredicateSeparable!146 Lexer!2610 (tokens!2198 thiss!10002) 0 (rules!12084 thiss!10002)) lt!542148)))

(declare-fun b!1566012 () Bool)

(assert (=> b!1566012 (= e!1005828 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) lt!542159))))

(declare-fun b!1566013 () Bool)

(declare-fun res!698158 () Bool)

(assert (=> b!1566013 (=> (not res!698158) (not e!1005828))))

(assert (=> b!1566013 (= res!698158 (subseq!374 lt!542157 lt!542159))))

(declare-fun b!1566014 () Bool)

(assert (=> b!1566014 (= e!1005831 e!1005829)))

(declare-fun res!698163 () Bool)

(assert (=> b!1566014 (=> (not res!698163) (not e!1005829))))

(assert (=> b!1566014 (= res!698163 (separableTokensPredicate!598 Lexer!2610 (apply!4131 (tokens!2198 thiss!10002) 0) (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)) (rules!12084 thiss!10002)))))

(declare-fun lt!542155 () Unit!26198)

(declare-fun Unit!26212 () Unit!26198)

(assert (=> b!1566014 (= lt!542155 Unit!26212)))

(assert (=> b!1566014 (> (size!13804 (charsOf!1659 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))) 0)))

(declare-fun lt!542146 () Unit!26198)

(declare-fun Unit!26213 () Unit!26198)

(assert (=> b!1566014 (= lt!542146 Unit!26213)))

(assert (=> b!1566014 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))

(declare-fun lt!542139 () Unit!26198)

(declare-fun Unit!26214 () Unit!26198)

(assert (=> b!1566014 (= lt!542139 Unit!26214)))

(assert (=> b!1566014 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (apply!4131 (tokens!2198 thiss!10002) 0))))

(declare-fun lt!542163 () Unit!26198)

(declare-fun lt!542160 () Unit!26198)

(assert (=> b!1566014 (= lt!542163 lt!542160)))

(declare-fun lt!542141 () Token!5532)

(assert (=> b!1566014 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) lt!542141)))

(declare-fun lt!542137 () List!17100)

(assert (=> b!1566014 (= lt!542160 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) lt!542137 lt!542141))))

(assert (=> b!1566014 (= lt!542141 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))

(assert (=> b!1566014 (= lt!542137 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!542161 () Unit!26198)

(declare-fun lt!542162 () Unit!26198)

(assert (=> b!1566014 (= lt!542161 lt!542162)))

(declare-fun lt!542158 () Token!5532)

(assert (=> b!1566014 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) lt!542158)))

(declare-fun lt!542167 () List!17100)

(assert (=> b!1566014 (= lt!542162 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) lt!542167 lt!542158))))

(assert (=> b!1566014 (= lt!542158 (apply!4131 (tokens!2198 thiss!10002) 0))))

(assert (=> b!1566014 (= lt!542167 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!542164 () Unit!26198)

(declare-fun lt!542144 () Unit!26198)

(assert (=> b!1566014 (= lt!542164 lt!542144)))

(declare-fun lt!542166 () List!17100)

(declare-fun lt!542143 () Int)

(declare-fun tail!2221 (List!17100) List!17100)

(assert (=> b!1566014 (= (tail!2221 (drop!799 lt!542166 lt!542143)) (drop!799 lt!542166 (+ lt!542143 1)))))

(declare-fun lemmaDropTail!481 (List!17100 Int) Unit!26198)

(assert (=> b!1566014 (= lt!542144 (lemmaDropTail!481 lt!542166 lt!542143))))

(assert (=> b!1566014 (= lt!542143 (+ 0 1))))

(assert (=> b!1566014 (= lt!542166 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!542145 () Unit!26198)

(declare-fun lt!542136 () Unit!26198)

(assert (=> b!1566014 (= lt!542145 lt!542136)))

(declare-fun lt!542153 () List!17100)

(assert (=> b!1566014 (= (tail!2221 (drop!799 lt!542153 0)) (drop!799 lt!542153 (+ 0 1)))))

(assert (=> b!1566014 (= lt!542136 (lemmaDropTail!481 lt!542153 0))))

(assert (=> b!1566014 (= lt!542153 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!542154 () Unit!26198)

(declare-fun lt!542150 () Unit!26198)

(assert (=> b!1566014 (= lt!542154 lt!542150)))

(declare-fun lt!542140 () List!17100)

(declare-fun lt!542138 () Int)

(declare-fun head!3126 (List!17100) Token!5532)

(assert (=> b!1566014 (= (head!3126 (drop!799 lt!542140 lt!542138)) (apply!4134 lt!542140 lt!542138))))

(declare-fun lemmaDropApply!501 (List!17100 Int) Unit!26198)

(assert (=> b!1566014 (= lt!542150 (lemmaDropApply!501 lt!542140 lt!542138))))

(assert (=> b!1566014 (= lt!542138 (+ 0 1))))

(assert (=> b!1566014 (= lt!542140 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!542152 () Unit!26198)

(declare-fun lt!542165 () Unit!26198)

(assert (=> b!1566014 (= lt!542152 lt!542165)))

(declare-fun lt!542156 () List!17100)

(assert (=> b!1566014 (= (head!3126 (drop!799 lt!542156 0)) (apply!4134 lt!542156 0))))

(assert (=> b!1566014 (= lt!542165 (lemmaDropApply!501 lt!542156 0))))

(assert (=> b!1566014 (= lt!542156 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun b!1566015 () Bool)

(assert (=> b!1566015 (= e!1005830 (<= 0 (size!13812 (tokens!2198 thiss!10002))))))

(declare-fun b!1566016 () Bool)

(declare-fun res!698161 () Bool)

(assert (=> b!1566016 (=> (not res!698161) (not e!1005828))))

(assert (=> b!1566016 (= res!698161 (not (isEmpty!10196 (rules!12084 thiss!10002))))))

(assert (= (and d!463980 res!698162) b!1566015))

(assert (= (and d!463980 (not res!698157)) b!1566014))

(assert (= (and b!1566014 res!698163) b!1566009))

(assert (= (and d!463980 res!698156) b!1566011))

(assert (= (and d!463980 res!698159) b!1566016))

(assert (= (and b!1566016 res!698161) b!1566010))

(assert (= (and b!1566010 res!698160) b!1566013))

(assert (= (and b!1566013 res!698158) b!1566012))

(declare-fun m!1837789 () Bool)

(assert (=> b!1566012 m!1837789))

(declare-fun m!1837791 () Bool)

(assert (=> b!1566014 m!1837791))

(declare-fun m!1837793 () Bool)

(assert (=> b!1566014 m!1837793))

(declare-fun m!1837795 () Bool)

(assert (=> b!1566014 m!1837795))

(assert (=> b!1566014 m!1837795))

(declare-fun m!1837797 () Bool)

(assert (=> b!1566014 m!1837797))

(declare-fun m!1837799 () Bool)

(assert (=> b!1566014 m!1837799))

(declare-fun m!1837801 () Bool)

(assert (=> b!1566014 m!1837801))

(declare-fun m!1837803 () Bool)

(assert (=> b!1566014 m!1837803))

(declare-fun m!1837805 () Bool)

(assert (=> b!1566014 m!1837805))

(declare-fun m!1837807 () Bool)

(assert (=> b!1566014 m!1837807))

(assert (=> b!1566014 m!1837799))

(assert (=> b!1566014 m!1837805))

(declare-fun m!1837809 () Bool)

(assert (=> b!1566014 m!1837809))

(declare-fun m!1837811 () Bool)

(assert (=> b!1566014 m!1837811))

(assert (=> b!1566014 m!1837811))

(declare-fun m!1837813 () Bool)

(assert (=> b!1566014 m!1837813))

(declare-fun m!1837815 () Bool)

(assert (=> b!1566014 m!1837815))

(declare-fun m!1837817 () Bool)

(assert (=> b!1566014 m!1837817))

(declare-fun m!1837819 () Bool)

(assert (=> b!1566014 m!1837819))

(declare-fun m!1837821 () Bool)

(assert (=> b!1566014 m!1837821))

(declare-fun m!1837823 () Bool)

(assert (=> b!1566014 m!1837823))

(declare-fun m!1837825 () Bool)

(assert (=> b!1566014 m!1837825))

(assert (=> b!1566014 m!1837811))

(assert (=> b!1566014 m!1837795))

(declare-fun m!1837827 () Bool)

(assert (=> b!1566014 m!1837827))

(declare-fun m!1837829 () Bool)

(assert (=> b!1566014 m!1837829))

(assert (=> b!1566014 m!1837815))

(declare-fun m!1837831 () Bool)

(assert (=> b!1566014 m!1837831))

(declare-fun m!1837833 () Bool)

(assert (=> b!1566014 m!1837833))

(declare-fun m!1837835 () Bool)

(assert (=> b!1566014 m!1837835))

(declare-fun m!1837837 () Bool)

(assert (=> b!1566014 m!1837837))

(assert (=> b!1566014 m!1837795))

(declare-fun m!1837839 () Bool)

(assert (=> b!1566014 m!1837839))

(assert (=> b!1566014 m!1837839))

(declare-fun m!1837841 () Bool)

(assert (=> b!1566014 m!1837841))

(assert (=> b!1566014 m!1836811))

(assert (=> b!1566014 m!1837823))

(declare-fun m!1837843 () Bool)

(assert (=> b!1566014 m!1837843))

(assert (=> b!1566016 m!1836809))

(declare-fun m!1837845 () Bool)

(assert (=> b!1566011 m!1837845))

(declare-fun m!1837847 () Bool)

(assert (=> b!1566015 m!1837847))

(assert (=> b!1566010 m!1836801))

(declare-fun m!1837849 () Bool)

(assert (=> b!1566009 m!1837849))

(declare-fun m!1837851 () Bool)

(assert (=> d!463980 m!1837851))

(declare-fun m!1837853 () Bool)

(assert (=> d!463980 m!1837853))

(declare-fun m!1837855 () Bool)

(assert (=> d!463980 m!1837855))

(assert (=> d!463980 m!1837847))

(declare-fun m!1837857 () Bool)

(assert (=> d!463980 m!1837857))

(declare-fun m!1837859 () Bool)

(assert (=> d!463980 m!1837859))

(assert (=> d!463980 m!1836811))

(declare-fun m!1837861 () Bool)

(assert (=> d!463980 m!1837861))

(assert (=> d!463980 m!1837857))

(assert (=> d!463980 m!1837851))

(declare-fun m!1837863 () Bool)

(assert (=> d!463980 m!1837863))

(declare-fun m!1837865 () Bool)

(assert (=> b!1566013 m!1837865))

(assert (=> d!463704 d!463980))

(declare-fun d!464014 () Bool)

(declare-fun res!698166 () Bool)

(declare-fun e!1005833 () Bool)

(assert (=> d!464014 (=> res!698166 e!1005833)))

(assert (=> d!464014 (= res!698166 (not ((_ is Node!5615) (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!464014 (= (isBalanced!1663 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) e!1005833)))

(declare-fun b!1566017 () Bool)

(declare-fun res!698169 () Bool)

(declare-fun e!1005832 () Bool)

(assert (=> b!1566017 (=> (not res!698169) (not e!1005832))))

(assert (=> b!1566017 (= res!698169 (<= (- (height!836 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) 1))))

(declare-fun b!1566018 () Bool)

(declare-fun res!698164 () Bool)

(assert (=> b!1566018 (=> (not res!698164) (not e!1005832))))

(assert (=> b!1566018 (= res!698164 (isBalanced!1663 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1566019 () Bool)

(declare-fun res!698168 () Bool)

(assert (=> b!1566019 (=> (not res!698168) (not e!1005832))))

(assert (=> b!1566019 (= res!698168 (not (isEmpty!10200 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1566020 () Bool)

(assert (=> b!1566020 (= e!1005832 (not (isEmpty!10200 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1566021 () Bool)

(assert (=> b!1566021 (= e!1005833 e!1005832)))

(declare-fun res!698165 () Bool)

(assert (=> b!1566021 (=> (not res!698165) (not e!1005832))))

(assert (=> b!1566021 (= res!698165 (<= (- 1) (- (height!836 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1566022 () Bool)

(declare-fun res!698167 () Bool)

(assert (=> b!1566022 (=> (not res!698167) (not e!1005832))))

(assert (=> b!1566022 (= res!698167 (isBalanced!1663 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!464014 (not res!698166)) b!1566021))

(assert (= (and b!1566021 res!698165) b!1566017))

(assert (= (and b!1566017 res!698169) b!1566018))

(assert (= (and b!1566018 res!698164) b!1566022))

(assert (= (and b!1566022 res!698167) b!1566019))

(assert (= (and b!1566019 res!698168) b!1566020))

(declare-fun m!1837867 () Bool)

(assert (=> b!1566022 m!1837867))

(declare-fun m!1837869 () Bool)

(assert (=> b!1566019 m!1837869))

(assert (=> b!1566021 m!1837635))

(assert (=> b!1566021 m!1837637))

(assert (=> b!1566017 m!1837635))

(assert (=> b!1566017 m!1837637))

(declare-fun m!1837871 () Bool)

(assert (=> b!1566020 m!1837871))

(declare-fun m!1837873 () Bool)

(assert (=> b!1566018 m!1837873))

(assert (=> b!1565664 d!464014))

(declare-fun d!464016 () Bool)

(declare-fun lt!542169 () Bool)

(assert (=> d!464016 (= lt!542169 (isEmpty!10202 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!464016 (= lt!542169 (= (size!13807 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) 0))))

(assert (=> d!464016 (= (isEmpty!10200 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) lt!542169)))

(declare-fun bs!389657 () Bool)

(assert (= bs!389657 d!464016))

(assert (=> bs!389657 m!1837057))

(assert (=> bs!389657 m!1837057))

(declare-fun m!1837875 () Bool)

(assert (=> bs!389657 m!1837875))

(assert (=> bs!389657 m!1837047))

(assert (=> b!1565666 d!464016))

(declare-fun d!464018 () Bool)

(assert (=> d!464018 (= (list!6554 lt!541959) (list!6556 (c!253626 lt!541959)))))

(declare-fun bs!389658 () Bool)

(assert (= bs!389658 d!464018))

(declare-fun m!1837877 () Bool)

(assert (=> bs!389658 m!1837877))

(assert (=> d!463782 d!464018))

(declare-fun d!464020 () Bool)

(declare-fun lt!542195 () Bool)

(declare-fun prefixMatch!327 (Regex!4311 List!17099) Bool)

(assert (=> d!464020 (= lt!542195 (prefixMatch!327 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (list!6554 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-datatypes ((List!17104 0))(
  ( (Nil!17034) (Cons!17034 (h!22435 Regex!4311) (t!141895 List!17104)) )
))
(declare-datatypes ((Context!1636 0))(
  ( (Context!1637 (exprs!1318 List!17104)) )
))
(declare-fun prefixMatchZipperSequence!394 ((InoxSet Context!1636) BalanceConc!11172 Int) Bool)

(declare-fun focus!124 (Regex!4311) (InoxSet Context!1636))

(assert (=> d!464020 (= lt!542195 (prefixMatchZipperSequence!394 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))) (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) 0))))

(declare-fun lt!542194 () Unit!26198)

(declare-fun lt!542196 () Unit!26198)

(assert (=> d!464020 (= lt!542194 lt!542196)))

(declare-fun lt!542191 () List!17099)

(declare-fun lt!542199 () (InoxSet Context!1636))

(declare-fun prefixMatchZipper!103 ((InoxSet Context!1636) List!17099) Bool)

(assert (=> d!464020 (= (prefixMatch!327 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) lt!542191) (prefixMatchZipper!103 lt!542199 lt!542191))))

(declare-datatypes ((List!17105 0))(
  ( (Nil!17035) (Cons!17035 (h!22436 Context!1636) (t!141896 List!17105)) )
))
(declare-fun lt!542198 () List!17105)

(declare-fun prefixMatchZipperRegexEquiv!103 ((InoxSet Context!1636) List!17105 Regex!4311 List!17099) Unit!26198)

(assert (=> d!464020 (= lt!542196 (prefixMatchZipperRegexEquiv!103 lt!542199 lt!542198 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) lt!542191))))

(assert (=> d!464020 (= lt!542191 (list!6554 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))

(declare-fun toList!864 ((InoxSet Context!1636)) List!17105)

(assert (=> d!464020 (= lt!542198 (toList!864 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))))

(assert (=> d!464020 (= lt!542199 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))

(declare-fun lt!542193 () Unit!26198)

(declare-fun lt!542190 () Unit!26198)

(assert (=> d!464020 (= lt!542193 lt!542190)))

(declare-fun lt!542197 () (InoxSet Context!1636))

(declare-fun lt!542192 () Int)

(declare-fun dropList!499 (BalanceConc!11172 Int) List!17099)

(assert (=> d!464020 (= (prefixMatchZipper!103 lt!542197 (dropList!499 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192)) (prefixMatchZipperSequence!394 lt!542197 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!103 ((InoxSet Context!1636) BalanceConc!11172 Int) Unit!26198)

(assert (=> d!464020 (= lt!542190 (lemmaprefixMatchZipperSequenceEquivalent!103 lt!542197 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192))))

(assert (=> d!464020 (= lt!542192 0)))

(assert (=> d!464020 (= lt!542197 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))

(declare-fun validRegex!1723 (Regex!4311) Bool)

(assert (=> d!464020 (validRegex!1723 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))

(assert (=> d!464020 (= (prefixMatchZipperSequence!393 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) lt!542195)))

(declare-fun bs!389659 () Bool)

(assert (= bs!389659 d!464020))

(assert (=> bs!389659 m!1837143))

(declare-fun m!1837879 () Bool)

(assert (=> bs!389659 m!1837879))

(assert (=> bs!389659 m!1837143))

(declare-fun m!1837881 () Bool)

(assert (=> bs!389659 m!1837881))

(assert (=> bs!389659 m!1837143))

(declare-fun m!1837883 () Bool)

(assert (=> bs!389659 m!1837883))

(declare-fun m!1837885 () Bool)

(assert (=> bs!389659 m!1837885))

(assert (=> bs!389659 m!1837143))

(declare-fun m!1837887 () Bool)

(assert (=> bs!389659 m!1837887))

(assert (=> bs!389659 m!1837879))

(assert (=> bs!389659 m!1837145))

(declare-fun m!1837889 () Bool)

(assert (=> bs!389659 m!1837889))

(assert (=> bs!389659 m!1837145))

(declare-fun m!1837891 () Bool)

(assert (=> bs!389659 m!1837891))

(assert (=> bs!389659 m!1837891))

(declare-fun m!1837893 () Bool)

(assert (=> bs!389659 m!1837893))

(assert (=> bs!389659 m!1837145))

(assert (=> bs!389659 m!1837883))

(assert (=> bs!389659 m!1837145))

(declare-fun m!1837895 () Bool)

(assert (=> bs!389659 m!1837895))

(assert (=> bs!389659 m!1837143))

(declare-fun m!1837897 () Bool)

(assert (=> bs!389659 m!1837897))

(assert (=> bs!389659 m!1837145))

(declare-fun m!1837899 () Bool)

(assert (=> bs!389659 m!1837899))

(assert (=> bs!389659 m!1837879))

(declare-fun m!1837901 () Bool)

(assert (=> bs!389659 m!1837901))

(declare-fun m!1837903 () Bool)

(assert (=> bs!389659 m!1837903))

(assert (=> d!463780 d!464020))

(declare-fun d!464022 () Bool)

(declare-fun lt!542268 () C!8796)

(declare-fun apply!4138 (List!17099 Int) C!8796)

(assert (=> d!464022 (= lt!542268 (apply!4138 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850)))) 0))))

(declare-fun apply!4139 (Conc!5614 Int) C!8796)

(assert (=> d!464022 (= lt!542268 (apply!4139 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))) 0))))

(declare-fun e!1005846 () Bool)

(assert (=> d!464022 e!1005846))

(declare-fun res!698188 () Bool)

(assert (=> d!464022 (=> (not res!698188) (not e!1005846))))

(assert (=> d!464022 (= res!698188 (<= 0 0))))

(assert (=> d!464022 (= (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0) lt!542268)))

(declare-fun b!1566041 () Bool)

(assert (=> b!1566041 (= e!1005846 (< 0 (size!13804 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))

(assert (= (and d!464022 res!698188) b!1566041))

(assert (=> d!464022 m!1836831))

(assert (=> d!464022 m!1837113))

(assert (=> d!464022 m!1837113))

(declare-fun m!1837905 () Bool)

(assert (=> d!464022 m!1837905))

(declare-fun m!1837907 () Bool)

(assert (=> d!464022 m!1837907))

(assert (=> b!1566041 m!1836831))

(assert (=> b!1566041 m!1836835))

(assert (=> d!463780 d!464022))

(declare-fun d!464024 () Bool)

(declare-fun lt!542269 () BalanceConc!11172)

(assert (=> d!464024 (= (list!6554 lt!542269) (originalCharacters!3797 (h!22431 lt!541850)))))

(assert (=> d!464024 (= lt!542269 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850))))))

(assert (=> d!464024 (= (charsOf!1659 (h!22431 lt!541850)) lt!542269)))

(declare-fun b_lambda!49279 () Bool)

(assert (=> (not b_lambda!49279) (not d!464024)))

(declare-fun t!141804 () Bool)

(declare-fun tb!87479 () Bool)

(assert (=> (and b!1565476 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!141804) tb!87479))

(declare-fun b!1566042 () Bool)

(declare-fun e!1005847 () Bool)

(declare-fun tp!461177 () Bool)

(assert (=> b!1566042 (= e!1005847 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850))))) tp!461177))))

(declare-fun result!105930 () Bool)

(assert (=> tb!87479 (= result!105930 (and (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850)))) e!1005847))))

(assert (= tb!87479 b!1566042))

(declare-fun m!1837909 () Bool)

(assert (=> b!1566042 m!1837909))

(declare-fun m!1837911 () Bool)

(assert (=> tb!87479 m!1837911))

(assert (=> d!464024 t!141804))

(declare-fun b_and!109265 () Bool)

(assert (= b_and!109259 (and (=> t!141804 result!105930) b_and!109265)))

(declare-fun t!141806 () Bool)

(declare-fun tb!87481 () Bool)

(assert (=> (and b!1565698 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!141806) tb!87481))

(declare-fun result!105932 () Bool)

(assert (= result!105932 result!105930))

(assert (=> d!464024 t!141806))

(declare-fun b_and!109267 () Bool)

(assert (= b_and!109261 (and (=> t!141806 result!105932) b_and!109267)))

(declare-fun t!141808 () Bool)

(declare-fun tb!87483 () Bool)

(assert (=> (and b!1565729 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!141808) tb!87483))

(declare-fun result!105934 () Bool)

(assert (= result!105934 result!105930))

(assert (=> d!464024 t!141808))

(declare-fun b_and!109269 () Bool)

(assert (= b_and!109263 (and (=> t!141808 result!105934) b_and!109269)))

(declare-fun m!1837913 () Bool)

(assert (=> d!464024 m!1837913))

(declare-fun m!1837915 () Bool)

(assert (=> d!464024 m!1837915))

(assert (=> d!463780 d!464024))

(assert (=> d!463780 d!463782))

(declare-fun b!1566060 () Bool)

(declare-fun res!698206 () Bool)

(declare-fun e!1005855 () Bool)

(assert (=> b!1566060 (=> (not res!698206) (not e!1005855))))

(declare-fun height!837 (Conc!5614) Int)

(declare-fun ++!4435 (Conc!5614 Conc!5614) Conc!5614)

(assert (=> b!1566060 (= res!698206 (<= (height!837 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) (+ (max!0 (height!837 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) 1)))))

(declare-fun b!1566062 () Bool)

(declare-fun lt!542309 () BalanceConc!11172)

(declare-fun ++!4436 (List!17099 List!17099) List!17099)

(assert (=> b!1566062 (= e!1005855 (= (list!6554 lt!542309) (++!4436 (list!6554 (charsOf!1659 (h!22431 lt!541850))) (list!6554 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-fun b!1566061 () Bool)

(declare-fun res!698207 () Bool)

(assert (=> b!1566061 (=> (not res!698207) (not e!1005855))))

(assert (=> b!1566061 (= res!698207 (>= (height!837 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) (max!0 (height!837 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun d!464026 () Bool)

(assert (=> d!464026 e!1005855))

(declare-fun res!698208 () Bool)

(assert (=> d!464026 (=> (not res!698208) (not e!1005855))))

(declare-fun appendAssocInst!379 (Conc!5614 Conc!5614) Bool)

(assert (=> d!464026 (= res!698208 (appendAssocInst!379 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))

(assert (=> d!464026 (= lt!542309 (BalanceConc!11173 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(assert (=> d!464026 (= (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542309)))

(declare-fun b!1566059 () Bool)

(declare-fun res!698205 () Bool)

(assert (=> b!1566059 (=> (not res!698205) (not e!1005855))))

(assert (=> b!1566059 (= res!698205 (isBalanced!1665 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(assert (= (and d!464026 res!698208) b!1566059))

(assert (= (and b!1566059 res!698205) b!1566060))

(assert (= (and b!1566060 res!698206) b!1566061))

(assert (= (and b!1566061 res!698207) b!1566062))

(declare-fun m!1837999 () Bool)

(assert (=> b!1566061 m!1837999))

(declare-fun m!1838001 () Bool)

(assert (=> b!1566061 m!1838001))

(declare-fun m!1838003 () Bool)

(assert (=> b!1566061 m!1838003))

(declare-fun m!1838005 () Bool)

(assert (=> b!1566061 m!1838005))

(declare-fun m!1838007 () Bool)

(assert (=> b!1566061 m!1838007))

(assert (=> b!1566061 m!1838005))

(assert (=> b!1566061 m!1838001))

(assert (=> b!1566061 m!1837999))

(declare-fun m!1838009 () Bool)

(assert (=> d!464026 m!1838009))

(assert (=> d!464026 m!1838005))

(declare-fun m!1838011 () Bool)

(assert (=> b!1566062 m!1838011))

(assert (=> b!1566062 m!1837149))

(declare-fun m!1838013 () Bool)

(assert (=> b!1566062 m!1838013))

(assert (=> b!1566062 m!1837151))

(declare-fun m!1838015 () Bool)

(assert (=> b!1566062 m!1838015))

(assert (=> b!1566062 m!1838013))

(assert (=> b!1566062 m!1838015))

(declare-fun m!1838017 () Bool)

(assert (=> b!1566062 m!1838017))

(assert (=> b!1566060 m!1837999))

(assert (=> b!1566060 m!1838001))

(assert (=> b!1566060 m!1838003))

(assert (=> b!1566060 m!1838005))

(assert (=> b!1566060 m!1838007))

(assert (=> b!1566060 m!1838005))

(assert (=> b!1566060 m!1838001))

(assert (=> b!1566060 m!1837999))

(assert (=> b!1566059 m!1838005))

(assert (=> b!1566059 m!1838005))

(declare-fun m!1838019 () Bool)

(assert (=> b!1566059 m!1838019))

(assert (=> d!463780 d!464026))

(declare-fun d!464034 () Bool)

(declare-fun lt!542315 () Unit!26198)

(declare-fun lemma!186 (List!17101 LexerInterface!2612 List!17101) Unit!26198)

(assert (=> d!464034 (= lt!542315 (lemma!186 (rules!12084 thiss!10002) Lexer!2610 (rules!12084 thiss!10002)))))

(declare-fun lambda!66232 () Int)

(declare-fun generalisedUnion!194 (List!17104) Regex!4311)

(declare-fun map!3557 (List!17101 Int) List!17104)

(assert (=> d!464034 (= (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (generalisedUnion!194 (map!3557 (rules!12084 thiss!10002) lambda!66232)))))

(declare-fun bs!389662 () Bool)

(assert (= bs!389662 d!464034))

(declare-fun m!1838035 () Bool)

(assert (=> bs!389662 m!1838035))

(declare-fun m!1838039 () Bool)

(assert (=> bs!389662 m!1838039))

(assert (=> bs!389662 m!1838039))

(declare-fun m!1838041 () Bool)

(assert (=> bs!389662 m!1838041))

(assert (=> d!463780 d!464034))

(declare-fun d!464040 () Bool)

(declare-fun e!1005878 () Bool)

(assert (=> d!464040 e!1005878))

(declare-fun res!698224 () Bool)

(assert (=> d!464040 (=> (not res!698224) (not e!1005878))))

(declare-fun lt!542319 () BalanceConc!11172)

(assert (=> d!464040 (= res!698224 (= (list!6554 lt!542319) (Cons!17029 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0) Nil!17029)))))

(declare-fun singleton!557 (C!8796) BalanceConc!11172)

(assert (=> d!464040 (= lt!542319 (singleton!557 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))

(assert (=> d!464040 (= (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)) lt!542319)))

(declare-fun b!1566099 () Bool)

(assert (=> b!1566099 (= e!1005878 (isBalanced!1665 (c!253626 lt!542319)))))

(assert (= (and d!464040 res!698224) b!1566099))

(declare-fun m!1838069 () Bool)

(assert (=> d!464040 m!1838069))

(assert (=> d!464040 m!1837153))

(declare-fun m!1838071 () Bool)

(assert (=> d!464040 m!1838071))

(declare-fun m!1838073 () Bool)

(assert (=> b!1566099 m!1838073))

(assert (=> d!463780 d!464040))

(assert (=> b!1565607 d!463776))

(declare-fun d!464052 () Bool)

(declare-fun lt!542322 () Bool)

(declare-fun content!2358 (List!17102) (InoxSet String!19697))

(assert (=> d!464052 (= lt!542322 (select (content!2358 Nil!17032) (tag!3247 (h!22432 (rules!12084 thiss!10002)))))))

(declare-fun e!1005883 () Bool)

(assert (=> d!464052 (= lt!542322 e!1005883)))

(declare-fun res!698230 () Bool)

(assert (=> d!464052 (=> (not res!698230) (not e!1005883))))

(assert (=> d!464052 (= res!698230 ((_ is Cons!17032) Nil!17032))))

(assert (=> d!464052 (= (contains!3002 Nil!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002)))) lt!542322)))

(declare-fun b!1566104 () Bool)

(declare-fun e!1005884 () Bool)

(assert (=> b!1566104 (= e!1005883 e!1005884)))

(declare-fun res!698229 () Bool)

(assert (=> b!1566104 (=> res!698229 e!1005884)))

(assert (=> b!1566104 (= res!698229 (= (h!22433 Nil!17032) (tag!3247 (h!22432 (rules!12084 thiss!10002)))))))

(declare-fun b!1566105 () Bool)

(assert (=> b!1566105 (= e!1005884 (contains!3002 (t!141751 Nil!17032) (tag!3247 (h!22432 (rules!12084 thiss!10002)))))))

(assert (= (and d!464052 res!698230) b!1566104))

(assert (= (and b!1566104 (not res!698229)) b!1566105))

(declare-fun m!1838075 () Bool)

(assert (=> d!464052 m!1838075))

(declare-fun m!1838077 () Bool)

(assert (=> d!464052 m!1838077))

(declare-fun m!1838079 () Bool)

(assert (=> b!1566105 m!1838079))

(assert (=> b!1565526 d!464052))

(assert (=> b!1565576 d!463926))

(assert (=> b!1565576 d!463928))

(declare-fun d!464054 () Bool)

(declare-fun res!698231 () Bool)

(declare-fun e!1005885 () Bool)

(assert (=> d!464054 (=> (not res!698231) (not e!1005885))))

(assert (=> d!464054 (= res!698231 (= (csize!11460 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) (+ (size!13807 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (size!13807 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> d!464054 (= (inv!22397 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) e!1005885)))

(declare-fun b!1566106 () Bool)

(declare-fun res!698232 () Bool)

(assert (=> b!1566106 (=> (not res!698232) (not e!1005885))))

(assert (=> b!1566106 (= res!698232 (and (not (= (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) Empty!5615)) (not (= (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) Empty!5615))))))

(declare-fun b!1566107 () Bool)

(declare-fun res!698233 () Bool)

(assert (=> b!1566107 (=> (not res!698233) (not e!1005885))))

(assert (=> b!1566107 (= res!698233 (= (cheight!5826 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) (+ (max!0 (height!836 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) 1)))))

(declare-fun b!1566108 () Bool)

(assert (=> b!1566108 (= e!1005885 (<= 0 (cheight!5826 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!464054 res!698231) b!1566106))

(assert (= (and b!1566106 res!698232) b!1566107))

(assert (= (and b!1566107 res!698233) b!1566108))

(declare-fun m!1838081 () Bool)

(assert (=> d!464054 m!1838081))

(declare-fun m!1838083 () Bool)

(assert (=> d!464054 m!1838083))

(declare-fun m!1838085 () Bool)

(assert (=> b!1566107 m!1838085))

(declare-fun m!1838087 () Bool)

(assert (=> b!1566107 m!1838087))

(assert (=> b!1566107 m!1838085))

(assert (=> b!1566107 m!1838087))

(declare-fun m!1838089 () Bool)

(assert (=> b!1566107 m!1838089))

(assert (=> b!1565531 d!464054))

(declare-fun d!464056 () Bool)

(declare-fun lt!542323 () Bool)

(assert (=> d!464056 (= lt!542323 (isEmpty!10203 (list!6554 (_2!9701 lt!541955))))))

(assert (=> d!464056 (= lt!542323 (isEmpty!10204 (c!253626 (_2!9701 lt!541955))))))

(assert (=> d!464056 (= (isEmpty!10199 (_2!9701 lt!541955)) lt!542323)))

(declare-fun bs!389666 () Bool)

(assert (= bs!389666 d!464056))

(declare-fun m!1838091 () Bool)

(assert (=> bs!389666 m!1838091))

(assert (=> bs!389666 m!1838091))

(declare-fun m!1838093 () Bool)

(assert (=> bs!389666 m!1838093))

(declare-fun m!1838095 () Bool)

(assert (=> bs!389666 m!1838095))

(assert (=> b!1565633 d!464056))

(declare-fun d!464058 () Bool)

(assert (=> d!464058 true))

(declare-fun lambda!66236 () Int)

(declare-fun order!10099 () Int)

(declare-fun dynLambda!7599 (Int Int) Int)

(assert (=> d!464058 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7599 order!10099 lambda!66236))))

(assert (=> d!464058 true))

(assert (=> d!464058 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7599 order!10099 lambda!66236))))

(declare-fun Forall!623 (Int) Bool)

(assert (=> d!464058 (= (semiInverseModEq!1131 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (Forall!623 lambda!66236))))

(declare-fun bs!389667 () Bool)

(assert (= bs!389667 d!464058))

(declare-fun m!1838097 () Bool)

(assert (=> bs!389667 m!1838097))

(assert (=> d!463748 d!464058))

(declare-fun d!464060 () Bool)

(declare-fun res!698244 () Bool)

(declare-fun e!1005889 () Bool)

(assert (=> d!464060 (=> res!698244 e!1005889)))

(assert (=> d!464060 (= res!698244 (not ((_ is Node!5615) (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!464060 (= (isBalanced!1663 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) e!1005889)))

(declare-fun b!1566121 () Bool)

(declare-fun res!698247 () Bool)

(declare-fun e!1005888 () Bool)

(assert (=> b!1566121 (=> (not res!698247) (not e!1005888))))

(assert (=> b!1566121 (= res!698247 (<= (- (height!836 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) 1))))

(declare-fun b!1566122 () Bool)

(declare-fun res!698242 () Bool)

(assert (=> b!1566122 (=> (not res!698242) (not e!1005888))))

(assert (=> b!1566122 (= res!698242 (isBalanced!1663 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1566123 () Bool)

(declare-fun res!698246 () Bool)

(assert (=> b!1566123 (=> (not res!698246) (not e!1005888))))

(assert (=> b!1566123 (= res!698246 (not (isEmpty!10200 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1566124 () Bool)

(assert (=> b!1566124 (= e!1005888 (not (isEmpty!10200 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1566125 () Bool)

(assert (=> b!1566125 (= e!1005889 e!1005888)))

(declare-fun res!698243 () Bool)

(assert (=> b!1566125 (=> (not res!698243) (not e!1005888))))

(assert (=> b!1566125 (= res!698243 (<= (- 1) (- (height!836 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1566126 () Bool)

(declare-fun res!698245 () Bool)

(assert (=> b!1566126 (=> (not res!698245) (not e!1005888))))

(assert (=> b!1566126 (= res!698245 (isBalanced!1663 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!464060 (not res!698244)) b!1566125))

(assert (= (and b!1566125 res!698243) b!1566121))

(assert (= (and b!1566121 res!698247) b!1566122))

(assert (= (and b!1566122 res!698242) b!1566126))

(assert (= (and b!1566126 res!698245) b!1566123))

(assert (= (and b!1566123 res!698246) b!1566124))

(declare-fun m!1838099 () Bool)

(assert (=> b!1566126 m!1838099))

(declare-fun m!1838101 () Bool)

(assert (=> b!1566123 m!1838101))

(assert (=> b!1566125 m!1838085))

(assert (=> b!1566125 m!1838087))

(assert (=> b!1566121 m!1838085))

(assert (=> b!1566121 m!1838087))

(declare-fun m!1838103 () Bool)

(assert (=> b!1566124 m!1838103))

(declare-fun m!1838105 () Bool)

(assert (=> b!1566122 m!1838105))

(assert (=> b!1565668 d!464060))

(declare-fun d!464062 () Bool)

(declare-fun lt!542326 () Bool)

(assert (=> d!464062 (= lt!542326 (isEmpty!10203 (list!6554 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(assert (=> d!464062 (= lt!542326 (isEmpty!10204 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(assert (=> d!464062 (= (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))) lt!542326)))

(declare-fun bs!389668 () Bool)

(assert (= bs!389668 d!464062))

(declare-fun m!1838107 () Bool)

(assert (=> bs!389668 m!1838107))

(assert (=> bs!389668 m!1838107))

(declare-fun m!1838109 () Bool)

(assert (=> bs!389668 m!1838109))

(declare-fun m!1838111 () Bool)

(assert (=> bs!389668 m!1838111))

(assert (=> b!1565642 d!464062))

(assert (=> b!1565642 d!463856))

(assert (=> b!1565642 d!463850))

(assert (=> b!1565642 d!463854))

(declare-fun d!464064 () Bool)

(declare-fun lt!542327 () Token!5532)

(assert (=> d!464064 (= lt!542327 (apply!4134 (list!6549 (_1!9701 lt!541960)) 0))))

(assert (=> d!464064 (= lt!542327 (apply!4135 (c!253628 (_1!9701 lt!541960)) 0))))

(declare-fun e!1005890 () Bool)

(assert (=> d!464064 e!1005890))

(declare-fun res!698248 () Bool)

(assert (=> d!464064 (=> (not res!698248) (not e!1005890))))

(assert (=> d!464064 (= res!698248 (<= 0 0))))

(assert (=> d!464064 (= (apply!4131 (_1!9701 lt!541960) 0) lt!542327)))

(declare-fun b!1566127 () Bool)

(assert (=> b!1566127 (= e!1005890 (< 0 (size!13812 (_1!9701 lt!541960))))))

(assert (= (and d!464064 res!698248) b!1566127))

(assert (=> d!464064 m!1837347))

(assert (=> d!464064 m!1837347))

(declare-fun m!1838113 () Bool)

(assert (=> d!464064 m!1838113))

(declare-fun m!1838115 () Bool)

(assert (=> d!464064 m!1838115))

(assert (=> b!1566127 m!1837171))

(assert (=> b!1565640 d!464064))

(declare-fun d!464066 () Bool)

(declare-fun res!698257 () Bool)

(declare-fun e!1005894 () Bool)

(assert (=> d!464066 (=> (not res!698257) (not e!1005894))))

(assert (=> d!464066 (= res!698257 (not (isEmpty!10203 (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (=> d!464066 (= (inv!22409 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))) e!1005894)))

(declare-fun b!1566136 () Bool)

(declare-fun res!698258 () Bool)

(assert (=> b!1566136 (=> (not res!698258) (not e!1005894))))

(assert (=> b!1566136 (= res!698258 (= (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))) (list!6554 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(declare-fun b!1566137 () Bool)

(assert (=> b!1566137 (= e!1005894 (= (size!13802 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))) (size!13810 (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464066 res!698257) b!1566136))

(assert (= (and b!1566136 res!698258) b!1566137))

(declare-fun b_lambda!49281 () Bool)

(assert (=> (not b_lambda!49281) (not b!1566136)))

(declare-fun t!141812 () Bool)

(declare-fun tb!87485 () Bool)

(assert (=> (and b!1565476 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!141812) tb!87485))

(declare-fun b!1566138 () Bool)

(declare-fun e!1005895 () Bool)

(declare-fun tp!461178 () Bool)

(assert (=> b!1566138 (= e!1005895 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) tp!461178))))

(declare-fun result!105936 () Bool)

(assert (=> tb!87485 (= result!105936 (and (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) e!1005895))))

(assert (= tb!87485 b!1566138))

(declare-fun m!1838139 () Bool)

(assert (=> b!1566138 m!1838139))

(declare-fun m!1838141 () Bool)

(assert (=> tb!87485 m!1838141))

(assert (=> b!1566136 t!141812))

(declare-fun b_and!109271 () Bool)

(assert (= b_and!109265 (and (=> t!141812 result!105936) b_and!109271)))

(declare-fun t!141814 () Bool)

(declare-fun tb!87487 () Bool)

(assert (=> (and b!1565698 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!141814) tb!87487))

(declare-fun result!105938 () Bool)

(assert (= result!105938 result!105936))

(assert (=> b!1566136 t!141814))

(declare-fun b_and!109273 () Bool)

(assert (= b_and!109267 (and (=> t!141814 result!105938) b_and!109273)))

(declare-fun t!141816 () Bool)

(declare-fun tb!87489 () Bool)

(assert (=> (and b!1565729 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!141816) tb!87489))

(declare-fun result!105940 () Bool)

(assert (= result!105940 result!105936))

(assert (=> b!1566136 t!141816))

(declare-fun b_and!109275 () Bool)

(assert (= b_and!109269 (and (=> t!141816 result!105940) b_and!109275)))

(declare-fun m!1838143 () Bool)

(assert (=> d!464066 m!1838143))

(declare-fun m!1838145 () Bool)

(assert (=> b!1566136 m!1838145))

(assert (=> b!1566136 m!1838145))

(declare-fun m!1838147 () Bool)

(assert (=> b!1566136 m!1838147))

(declare-fun m!1838149 () Bool)

(assert (=> b!1566137 m!1838149))

(assert (=> b!1565726 d!464066))

(assert (=> bs!389603 d!463784))

(declare-fun d!464070 () Bool)

(assert (=> d!464070 (= (inv!22390 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (= (mod (str.len (value!94687 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) 2) 0))))

(assert (=> b!1565728 d!464070))

(declare-fun d!464072 () Bool)

(declare-fun res!698259 () Bool)

(declare-fun e!1005896 () Bool)

(assert (=> d!464072 (=> (not res!698259) (not e!1005896))))

(assert (=> d!464072 (= res!698259 (semiInverseModEq!1131 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(assert (=> d!464072 (= (inv!22403 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) e!1005896)))

(declare-fun b!1566139 () Bool)

(assert (=> b!1566139 (= e!1005896 (equivClasses!1072 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(assert (= (and d!464072 res!698259) b!1566139))

(declare-fun m!1838151 () Bool)

(assert (=> d!464072 m!1838151))

(declare-fun m!1838153 () Bool)

(assert (=> b!1566139 m!1838153))

(assert (=> b!1565728 d!464072))

(declare-fun d!464074 () Bool)

(declare-fun res!698260 () Bool)

(declare-fun e!1005897 () Bool)

(assert (=> d!464074 (=> res!698260 e!1005897)))

(assert (=> d!464074 (= res!698260 ((_ is Nil!17030) (t!141745 lt!541850)))))

(assert (=> d!464074 (= (forall!3952 (t!141745 lt!541850) lambda!66213) e!1005897)))

(declare-fun b!1566140 () Bool)

(declare-fun e!1005898 () Bool)

(assert (=> b!1566140 (= e!1005897 e!1005898)))

(declare-fun res!698261 () Bool)

(assert (=> b!1566140 (=> (not res!698261) (not e!1005898))))

(assert (=> b!1566140 (= res!698261 (dynLambda!7593 lambda!66213 (h!22431 (t!141745 lt!541850))))))

(declare-fun b!1566141 () Bool)

(assert (=> b!1566141 (= e!1005898 (forall!3952 (t!141745 (t!141745 lt!541850)) lambda!66213))))

(assert (= (and d!464074 (not res!698260)) b!1566140))

(assert (= (and b!1566140 res!698261) b!1566141))

(declare-fun b_lambda!49283 () Bool)

(assert (=> (not b_lambda!49283) (not b!1566140)))

(declare-fun m!1838155 () Bool)

(assert (=> b!1566140 m!1838155))

(declare-fun m!1838157 () Bool)

(assert (=> b!1566141 m!1838157))

(assert (=> d!463762 d!464074))

(assert (=> d!463762 d!463678))

(declare-fun e!1005899 () Bool)

(assert (=> b!1565693 (= tp!461114 e!1005899)))

(declare-fun b!1566142 () Bool)

(assert (=> b!1566142 (= e!1005899 tp_is_empty!7143)))

(declare-fun b!1566145 () Bool)

(declare-fun tp!461181 () Bool)

(declare-fun tp!461179 () Bool)

(assert (=> b!1566145 (= e!1005899 (and tp!461181 tp!461179))))

(declare-fun b!1566144 () Bool)

(declare-fun tp!461183 () Bool)

(assert (=> b!1566144 (= e!1005899 tp!461183)))

(declare-fun b!1566143 () Bool)

(declare-fun tp!461182 () Bool)

(declare-fun tp!461180 () Bool)

(assert (=> b!1566143 (= e!1005899 (and tp!461182 tp!461180))))

(assert (= (and b!1565693 ((_ is ElementMatch!4311) (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566142))

(assert (= (and b!1565693 ((_ is Concat!7385) (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566143))

(assert (= (and b!1565693 ((_ is Star!4311) (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566144))

(assert (= (and b!1565693 ((_ is Union!4311) (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566145))

(declare-fun e!1005900 () Bool)

(assert (=> b!1565693 (= tp!461112 e!1005900)))

(declare-fun b!1566146 () Bool)

(assert (=> b!1566146 (= e!1005900 tp_is_empty!7143)))

(declare-fun b!1566149 () Bool)

(declare-fun tp!461186 () Bool)

(declare-fun tp!461184 () Bool)

(assert (=> b!1566149 (= e!1005900 (and tp!461186 tp!461184))))

(declare-fun b!1566148 () Bool)

(declare-fun tp!461188 () Bool)

(assert (=> b!1566148 (= e!1005900 tp!461188)))

(declare-fun b!1566147 () Bool)

(declare-fun tp!461187 () Bool)

(declare-fun tp!461185 () Bool)

(assert (=> b!1566147 (= e!1005900 (and tp!461187 tp!461185))))

(assert (= (and b!1565693 ((_ is ElementMatch!4311) (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566146))

(assert (= (and b!1565693 ((_ is Concat!7385) (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566147))

(assert (= (and b!1565693 ((_ is Star!4311) (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566148))

(assert (= (and b!1565693 ((_ is Union!4311) (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566149))

(declare-fun b!1566152 () Bool)

(declare-fun b_free!41887 () Bool)

(declare-fun b_next!42591 () Bool)

(assert (=> b!1566152 (= b_free!41887 (not b_next!42591))))

(declare-fun tp!461192 () Bool)

(declare-fun b_and!109277 () Bool)

(assert (=> b!1566152 (= tp!461192 b_and!109277)))

(declare-fun b_free!41889 () Bool)

(declare-fun b_next!42593 () Bool)

(assert (=> b!1566152 (= b_free!41889 (not b_next!42593))))

(declare-fun tb!87491 () Bool)

(declare-fun t!141818 () Bool)

(assert (=> (and b!1566152 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!141818) tb!87491))

(declare-fun result!105942 () Bool)

(assert (= result!105942 result!105898))

(assert (=> d!463782 t!141818))

(declare-fun tb!87493 () Bool)

(declare-fun t!141820 () Bool)

(assert (=> (and b!1566152 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!141820) tb!87493))

(declare-fun result!105944 () Bool)

(assert (= result!105944 result!105924))

(assert (=> d!463964 t!141820))

(declare-fun tb!87495 () Bool)

(declare-fun t!141822 () Bool)

(assert (=> (and b!1566152 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!141822) tb!87495))

(declare-fun result!105946 () Bool)

(assert (= result!105946 result!105930))

(assert (=> d!464024 t!141822))

(declare-fun t!141824 () Bool)

(declare-fun tb!87497 () Bool)

(assert (=> (and b!1566152 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!141824) tb!87497))

(declare-fun result!105948 () Bool)

(assert (= result!105948 result!105936))

(assert (=> b!1566136 t!141824))

(declare-fun tp!461191 () Bool)

(declare-fun b_and!109279 () Bool)

(assert (=> b!1566152 (= tp!461191 (and (=> t!141818 result!105942) (=> t!141820 result!105944) (=> t!141822 result!105946) (=> t!141824 result!105948) b_and!109279))))

(declare-fun e!1005901 () Bool)

(assert (=> b!1566152 (= e!1005901 (and tp!461192 tp!461191))))

(declare-fun b!1566151 () Bool)

(declare-fun e!1005903 () Bool)

(declare-fun tp!461190 () Bool)

(assert (=> b!1566151 (= e!1005903 (and tp!461190 (inv!22390 (tag!3247 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (inv!22403 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) e!1005901))))

(declare-fun b!1566150 () Bool)

(declare-fun e!1005902 () Bool)

(declare-fun tp!461189 () Bool)

(assert (=> b!1566150 (= e!1005902 (and e!1005903 tp!461189))))

(assert (=> b!1565696 (= tp!461116 e!1005902)))

(assert (= b!1566151 b!1566152))

(assert (= b!1566150 b!1566151))

(assert (= (and b!1565696 ((_ is Cons!17031) (t!141746 (t!141746 (rules!12084 thiss!10002))))) b!1566150))

(declare-fun m!1838165 () Bool)

(assert (=> b!1566151 m!1838165))

(declare-fun m!1838167 () Bool)

(assert (=> b!1566151 m!1838167))

(declare-fun b!1566156 () Bool)

(declare-fun b_free!41891 () Bool)

(declare-fun b_next!42595 () Bool)

(assert (=> b!1566156 (= b_free!41891 (not b_next!42595))))

(declare-fun tp!461195 () Bool)

(declare-fun b_and!109281 () Bool)

(assert (=> b!1566156 (= tp!461195 b_and!109281)))

(declare-fun b_free!41893 () Bool)

(declare-fun b_next!42597 () Bool)

(assert (=> b!1566156 (= b_free!41893 (not b_next!42597))))

(declare-fun t!141826 () Bool)

(declare-fun tb!87499 () Bool)

(assert (=> (and b!1566156 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!141826) tb!87499))

(declare-fun result!105950 () Bool)

(assert (= result!105950 result!105898))

(assert (=> d!463782 t!141826))

(declare-fun tb!87501 () Bool)

(declare-fun t!141828 () Bool)

(assert (=> (and b!1566156 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!141828) tb!87501))

(declare-fun result!105952 () Bool)

(assert (= result!105952 result!105924))

(assert (=> d!463964 t!141828))

(declare-fun tb!87503 () Bool)

(declare-fun t!141830 () Bool)

(assert (=> (and b!1566156 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!141830) tb!87503))

(declare-fun result!105954 () Bool)

(assert (= result!105954 result!105930))

(assert (=> d!464024 t!141830))

(declare-fun t!141832 () Bool)

(declare-fun tb!87505 () Bool)

(assert (=> (and b!1566156 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!141832) tb!87505))

(declare-fun result!105956 () Bool)

(assert (= result!105956 result!105936))

(assert (=> b!1566136 t!141832))

(declare-fun tp!461196 () Bool)

(declare-fun b_and!109283 () Bool)

(assert (=> b!1566156 (= tp!461196 (and (=> t!141826 result!105950) (=> t!141828 result!105952) (=> t!141830 result!105954) (=> t!141832 result!105956) b_and!109283))))

(declare-fun e!1005910 () Bool)

(declare-fun b!1566153 () Bool)

(declare-fun e!1005905 () Bool)

(declare-fun tp!461197 () Bool)

(assert (=> b!1566153 (= e!1005905 (and (inv!22409 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) e!1005910 tp!461197))))

(declare-fun e!1005906 () Bool)

(assert (=> b!1566156 (= e!1005906 (and tp!461195 tp!461196))))

(declare-fun b!1566154 () Bool)

(declare-fun e!1005909 () Bool)

(declare-fun tp!461193 () Bool)

(assert (=> b!1566154 (= e!1005910 (and (inv!21 (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))) e!1005909 tp!461193))))

(declare-fun tp!461194 () Bool)

(declare-fun b!1566155 () Bool)

(assert (=> b!1566155 (= e!1005909 (and tp!461194 (inv!22390 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) e!1005906))))

(assert (=> b!1565681 (= tp!461100 e!1005905)))

(assert (= b!1566155 b!1566156))

(assert (= b!1566154 b!1566155))

(assert (= b!1566153 b!1566154))

(assert (= (and b!1565681 ((_ is Cons!17030) (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) b!1566153))

(declare-fun m!1838169 () Bool)

(assert (=> b!1566153 m!1838169))

(declare-fun m!1838171 () Bool)

(assert (=> b!1566154 m!1838171))

(declare-fun m!1838173 () Bool)

(assert (=> b!1566155 m!1838173))

(declare-fun m!1838175 () Bool)

(assert (=> b!1566155 m!1838175))

(declare-fun e!1005912 () Bool)

(declare-fun b!1566157 () Bool)

(declare-fun tp!461199 () Bool)

(declare-fun tp!461198 () Bool)

(assert (=> b!1566157 (= e!1005912 (and (inv!22394 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) tp!461199 (inv!22394 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) tp!461198))))

(declare-fun b!1566159 () Bool)

(declare-fun e!1005911 () Bool)

(declare-fun tp!461200 () Bool)

(assert (=> b!1566159 (= e!1005911 tp!461200)))

(declare-fun b!1566158 () Bool)

(assert (=> b!1566158 (= e!1005912 (and (inv!22401 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) e!1005911))))

(assert (=> b!1565676 (= tp!461096 (and (inv!22394 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1005912))))

(assert (= (and b!1565676 ((_ is Node!5615) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) b!1566157))

(assert (= b!1566158 b!1566159))

(assert (= (and b!1565676 ((_ is Leaf!8327) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) b!1566158))

(declare-fun m!1838177 () Bool)

(assert (=> b!1566157 m!1838177))

(declare-fun m!1838179 () Bool)

(assert (=> b!1566157 m!1838179))

(declare-fun m!1838181 () Bool)

(assert (=> b!1566158 m!1838181))

(assert (=> b!1565676 m!1837199))

(declare-fun tp!461201 () Bool)

(declare-fun b!1566160 () Bool)

(declare-fun tp!461202 () Bool)

(declare-fun e!1005914 () Bool)

(assert (=> b!1566160 (= e!1005914 (and (inv!22394 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) tp!461202 (inv!22394 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) tp!461201))))

(declare-fun b!1566162 () Bool)

(declare-fun e!1005913 () Bool)

(declare-fun tp!461203 () Bool)

(assert (=> b!1566162 (= e!1005913 tp!461203)))

(declare-fun b!1566161 () Bool)

(assert (=> b!1566161 (= e!1005914 (and (inv!22401 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) e!1005913))))

(assert (=> b!1565676 (= tp!461095 (and (inv!22394 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1005914))))

(assert (= (and b!1565676 ((_ is Node!5615) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) b!1566160))

(assert (= b!1566161 b!1566162))

(assert (= (and b!1565676 ((_ is Leaf!8327) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) b!1566161))

(declare-fun m!1838183 () Bool)

(assert (=> b!1566160 m!1838183))

(declare-fun m!1838185 () Bool)

(assert (=> b!1566160 m!1838185))

(declare-fun m!1838187 () Bool)

(assert (=> b!1566161 m!1838187))

(assert (=> b!1565676 m!1837201))

(declare-fun e!1005915 () Bool)

(assert (=> b!1565694 (= tp!461115 e!1005915)))

(declare-fun b!1566163 () Bool)

(assert (=> b!1566163 (= e!1005915 tp_is_empty!7143)))

(declare-fun b!1566166 () Bool)

(declare-fun tp!461206 () Bool)

(declare-fun tp!461204 () Bool)

(assert (=> b!1566166 (= e!1005915 (and tp!461206 tp!461204))))

(declare-fun b!1566165 () Bool)

(declare-fun tp!461208 () Bool)

(assert (=> b!1566165 (= e!1005915 tp!461208)))

(declare-fun b!1566164 () Bool)

(declare-fun tp!461207 () Bool)

(declare-fun tp!461205 () Bool)

(assert (=> b!1566164 (= e!1005915 (and tp!461207 tp!461205))))

(assert (= (and b!1565694 ((_ is ElementMatch!4311) (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566163))

(assert (= (and b!1565694 ((_ is Concat!7385) (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566164))

(assert (= (and b!1565694 ((_ is Star!4311) (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566165))

(assert (= (and b!1565694 ((_ is Union!4311) (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566166))

(declare-fun b!1566167 () Bool)

(declare-fun tp!461210 () Bool)

(declare-fun tp!461209 () Bool)

(declare-fun e!1005917 () Bool)

(assert (=> b!1566167 (= e!1005917 (and (inv!22394 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) tp!461210 (inv!22394 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) tp!461209))))

(declare-fun b!1566169 () Bool)

(declare-fun e!1005916 () Bool)

(declare-fun tp!461211 () Bool)

(assert (=> b!1566169 (= e!1005916 tp!461211)))

(declare-fun b!1566168 () Bool)

(assert (=> b!1566168 (= e!1005917 (and (inv!22401 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) e!1005916))))

(assert (=> b!1565679 (= tp!461099 (and (inv!22394 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1005917))))

(assert (= (and b!1565679 ((_ is Node!5615) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) b!1566167))

(assert (= b!1566168 b!1566169))

(assert (= (and b!1565679 ((_ is Leaf!8327) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) b!1566168))

(declare-fun m!1838189 () Bool)

(assert (=> b!1566167 m!1838189))

(declare-fun m!1838191 () Bool)

(assert (=> b!1566167 m!1838191))

(declare-fun m!1838193 () Bool)

(assert (=> b!1566168 m!1838193))

(assert (=> b!1565679 m!1837205))

(declare-fun e!1005919 () Bool)

(declare-fun tp!461212 () Bool)

(declare-fun tp!461213 () Bool)

(declare-fun b!1566170 () Bool)

(assert (=> b!1566170 (= e!1005919 (and (inv!22394 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) tp!461213 (inv!22394 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) tp!461212))))

(declare-fun b!1566172 () Bool)

(declare-fun e!1005918 () Bool)

(declare-fun tp!461214 () Bool)

(assert (=> b!1566172 (= e!1005918 tp!461214)))

(declare-fun b!1566171 () Bool)

(assert (=> b!1566171 (= e!1005919 (and (inv!22401 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) e!1005918))))

(assert (=> b!1565679 (= tp!461098 (and (inv!22394 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1005919))))

(assert (= (and b!1565679 ((_ is Node!5615) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) b!1566170))

(assert (= b!1566171 b!1566172))

(assert (= (and b!1565679 ((_ is Leaf!8327) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) b!1566171))

(declare-fun m!1838195 () Bool)

(assert (=> b!1566170 m!1838195))

(declare-fun m!1838197 () Bool)

(assert (=> b!1566170 m!1838197))

(declare-fun m!1838199 () Bool)

(assert (=> b!1566171 m!1838199))

(assert (=> b!1565679 m!1837207))

(declare-fun b!1566175 () Bool)

(declare-fun e!1005922 () Bool)

(assert (=> b!1566175 (= e!1005922 true)))

(declare-fun b!1566174 () Bool)

(declare-fun e!1005921 () Bool)

(assert (=> b!1566174 (= e!1005921 e!1005922)))

(declare-fun b!1566173 () Bool)

(declare-fun e!1005920 () Bool)

(assert (=> b!1566173 (= e!1005920 e!1005921)))

(assert (=> b!1565609 e!1005920))

(assert (= b!1566174 b!1566175))

(assert (= b!1566173 b!1566174))

(assert (= (and b!1565609 ((_ is Cons!17031) (t!141746 (rules!12084 thiss!10002)))) b!1566173))

(assert (=> b!1566175 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7590 order!10093 lambda!66213))))

(assert (=> b!1566175 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7590 order!10093 lambda!66213))))

(declare-fun tp!461222 () Bool)

(declare-fun b!1566187 () Bool)

(declare-fun tp!461223 () Bool)

(declare-fun e!1005930 () Bool)

(assert (=> b!1566187 (= e!1005930 (and (inv!22405 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) tp!461222 (inv!22405 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) tp!461223))))

(declare-fun b!1566189 () Bool)

(declare-fun e!1005931 () Bool)

(declare-fun tp!461221 () Bool)

(assert (=> b!1566189 (= e!1005931 tp!461221)))

(declare-fun b!1566188 () Bool)

(declare-fun inv!22415 (IArray!11233) Bool)

(assert (=> b!1566188 (= e!1005930 (and (inv!22415 (xs!8414 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) e!1005931))))

(assert (=> b!1565639 (= tp!461094 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) e!1005930))))

(assert (= (and b!1565639 ((_ is Node!5614) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) b!1566187))

(assert (= b!1566188 b!1566189))

(assert (= (and b!1565639 ((_ is Leaf!8326) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) b!1566188))

(declare-fun m!1838205 () Bool)

(assert (=> b!1566187 m!1838205))

(declare-fun m!1838207 () Bool)

(assert (=> b!1566187 m!1838207))

(declare-fun m!1838209 () Bool)

(assert (=> b!1566188 m!1838209))

(assert (=> b!1565639 m!1837155))

(declare-fun b!1566193 () Bool)

(declare-fun b_free!41895 () Bool)

(declare-fun b_next!42599 () Bool)

(assert (=> b!1566193 (= b_free!41895 (not b_next!42599))))

(declare-fun tp!461226 () Bool)

(declare-fun b_and!109285 () Bool)

(assert (=> b!1566193 (= tp!461226 b_and!109285)))

(declare-fun b_free!41897 () Bool)

(declare-fun b_next!42601 () Bool)

(assert (=> b!1566193 (= b_free!41897 (not b_next!42601))))

(declare-fun tb!87507 () Bool)

(declare-fun t!141834 () Bool)

(assert (=> (and b!1566193 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!141834) tb!87507))

(declare-fun result!105960 () Bool)

(assert (= result!105960 result!105898))

(assert (=> d!463782 t!141834))

(declare-fun tb!87509 () Bool)

(declare-fun t!141836 () Bool)

(assert (=> (and b!1566193 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!141836) tb!87509))

(declare-fun result!105962 () Bool)

(assert (= result!105962 result!105924))

(assert (=> d!463964 t!141836))

(declare-fun t!141838 () Bool)

(declare-fun tb!87511 () Bool)

(assert (=> (and b!1566193 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!141838) tb!87511))

(declare-fun result!105964 () Bool)

(assert (= result!105964 result!105930))

(assert (=> d!464024 t!141838))

(declare-fun t!141840 () Bool)

(declare-fun tb!87513 () Bool)

(assert (=> (and b!1566193 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!141840) tb!87513))

(declare-fun result!105966 () Bool)

(assert (= result!105966 result!105936))

(assert (=> b!1566136 t!141840))

(declare-fun b_and!109287 () Bool)

(declare-fun tp!461227 () Bool)

(assert (=> b!1566193 (= tp!461227 (and (=> t!141834 result!105960) (=> t!141836 result!105962) (=> t!141838 result!105964) (=> t!141840 result!105966) b_and!109287))))

(declare-fun b!1566190 () Bool)

(declare-fun e!1005932 () Bool)

(declare-fun tp!461228 () Bool)

(declare-fun e!1005937 () Bool)

(assert (=> b!1566190 (= e!1005932 (and (inv!22409 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) e!1005937 tp!461228))))

(declare-fun e!1005933 () Bool)

(assert (=> b!1566193 (= e!1005933 (and tp!461226 tp!461227))))

(declare-fun b!1566191 () Bool)

(declare-fun e!1005936 () Bool)

(declare-fun tp!461224 () Bool)

(assert (=> b!1566191 (= e!1005937 (and (inv!21 (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))) e!1005936 tp!461224))))

(declare-fun b!1566192 () Bool)

(declare-fun tp!461225 () Bool)

(assert (=> b!1566192 (= e!1005936 (and tp!461225 (inv!22390 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) e!1005933))))

(assert (=> b!1565678 (= tp!461097 e!1005932)))

(assert (= b!1566192 b!1566193))

(assert (= b!1566191 b!1566192))

(assert (= b!1566190 b!1566191))

(assert (= (and b!1565678 ((_ is Cons!17030) (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) b!1566190))

(declare-fun m!1838211 () Bool)

(assert (=> b!1566190 m!1838211))

(declare-fun m!1838213 () Bool)

(assert (=> b!1566191 m!1838213))

(declare-fun m!1838215 () Bool)

(assert (=> b!1566192 m!1838215))

(declare-fun m!1838217 () Bool)

(assert (=> b!1566192 m!1838217))

(declare-fun b!1566198 () Bool)

(declare-fun e!1005940 () Bool)

(declare-fun tp!461231 () Bool)

(assert (=> b!1566198 (= e!1005940 (and tp_is_empty!7143 tp!461231))))

(assert (=> b!1565727 (= tp!461136 e!1005940)))

(assert (= (and b!1565727 ((_ is Cons!17029) (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) b!1566198))

(declare-fun b!1566201 () Bool)

(declare-fun e!1005943 () Bool)

(assert (=> b!1566201 (= e!1005943 true)))

(declare-fun b!1566200 () Bool)

(declare-fun e!1005942 () Bool)

(assert (=> b!1566200 (= e!1005942 e!1005943)))

(declare-fun b!1566199 () Bool)

(declare-fun e!1005941 () Bool)

(assert (=> b!1566199 (= e!1005941 e!1005942)))

(assert (=> b!1565673 e!1005941))

(assert (= b!1566200 b!1566201))

(assert (= b!1566199 b!1566200))

(assert (= (and b!1565673 ((_ is Cons!17031) (t!141746 (t!141746 (rules!12084 thiss!10002))))) b!1566199))

(assert (=> b!1566201 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (dynLambda!7590 order!10093 lambda!66200))))

(assert (=> b!1566201 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (dynLambda!7590 order!10093 lambda!66200))))

(declare-fun e!1005944 () Bool)

(assert (=> b!1565697 (= tp!461117 e!1005944)))

(declare-fun b!1566202 () Bool)

(assert (=> b!1566202 (= e!1005944 tp_is_empty!7143)))

(declare-fun b!1566205 () Bool)

(declare-fun tp!461234 () Bool)

(declare-fun tp!461232 () Bool)

(assert (=> b!1566205 (= e!1005944 (and tp!461234 tp!461232))))

(declare-fun b!1566204 () Bool)

(declare-fun tp!461236 () Bool)

(assert (=> b!1566204 (= e!1005944 tp!461236)))

(declare-fun b!1566203 () Bool)

(declare-fun tp!461235 () Bool)

(declare-fun tp!461233 () Bool)

(assert (=> b!1566203 (= e!1005944 (and tp!461235 tp!461233))))

(assert (= (and b!1565697 ((_ is ElementMatch!4311) (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) b!1566202))

(assert (= (and b!1565697 ((_ is Concat!7385) (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) b!1566203))

(assert (= (and b!1565697 ((_ is Star!4311) (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) b!1566204))

(assert (= (and b!1565697 ((_ is Union!4311) (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) b!1566205))

(declare-fun e!1005945 () Bool)

(assert (=> b!1565695 (= tp!461113 e!1005945)))

(declare-fun b!1566206 () Bool)

(assert (=> b!1566206 (= e!1005945 tp_is_empty!7143)))

(declare-fun b!1566209 () Bool)

(declare-fun tp!461239 () Bool)

(declare-fun tp!461237 () Bool)

(assert (=> b!1566209 (= e!1005945 (and tp!461239 tp!461237))))

(declare-fun b!1566208 () Bool)

(declare-fun tp!461241 () Bool)

(assert (=> b!1566208 (= e!1005945 tp!461241)))

(declare-fun b!1566207 () Bool)

(declare-fun tp!461240 () Bool)

(declare-fun tp!461238 () Bool)

(assert (=> b!1566207 (= e!1005945 (and tp!461240 tp!461238))))

(assert (= (and b!1565695 ((_ is ElementMatch!4311) (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566206))

(assert (= (and b!1565695 ((_ is Concat!7385) (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566207))

(assert (= (and b!1565695 ((_ is Star!4311) (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566208))

(assert (= (and b!1565695 ((_ is Union!4311) (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566209))

(declare-fun e!1005946 () Bool)

(assert (=> b!1565695 (= tp!461111 e!1005946)))

(declare-fun b!1566210 () Bool)

(assert (=> b!1566210 (= e!1005946 tp_is_empty!7143)))

(declare-fun b!1566213 () Bool)

(declare-fun tp!461244 () Bool)

(declare-fun tp!461242 () Bool)

(assert (=> b!1566213 (= e!1005946 (and tp!461244 tp!461242))))

(declare-fun b!1566212 () Bool)

(declare-fun tp!461246 () Bool)

(assert (=> b!1566212 (= e!1005946 tp!461246)))

(declare-fun b!1566211 () Bool)

(declare-fun tp!461245 () Bool)

(declare-fun tp!461243 () Bool)

(assert (=> b!1566211 (= e!1005946 (and tp!461245 tp!461243))))

(assert (= (and b!1565695 ((_ is ElementMatch!4311) (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566210))

(assert (= (and b!1565695 ((_ is Concat!7385) (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566211))

(assert (= (and b!1565695 ((_ is Star!4311) (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566212))

(assert (= (and b!1565695 ((_ is Union!4311) (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))) b!1566213))

(declare-fun b!1566217 () Bool)

(declare-fun b_free!41899 () Bool)

(declare-fun b_next!42603 () Bool)

(assert (=> b!1566217 (= b_free!41899 (not b_next!42603))))

(declare-fun tp!461249 () Bool)

(declare-fun b_and!109289 () Bool)

(assert (=> b!1566217 (= tp!461249 b_and!109289)))

(declare-fun b_free!41901 () Bool)

(declare-fun b_next!42605 () Bool)

(assert (=> b!1566217 (= b_free!41901 (not b_next!42605))))

(declare-fun t!141843 () Bool)

(declare-fun tb!87515 () Bool)

(assert (=> (and b!1566217 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!141843) tb!87515))

(declare-fun result!105970 () Bool)

(assert (= result!105970 result!105898))

(assert (=> d!463782 t!141843))

(declare-fun t!141845 () Bool)

(declare-fun tb!87517 () Bool)

(assert (=> (and b!1566217 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!141845) tb!87517))

(declare-fun result!105972 () Bool)

(assert (= result!105972 result!105924))

(assert (=> d!463964 t!141845))

(declare-fun t!141847 () Bool)

(declare-fun tb!87519 () Bool)

(assert (=> (and b!1566217 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!141847) tb!87519))

(declare-fun result!105974 () Bool)

(assert (= result!105974 result!105930))

(assert (=> d!464024 t!141847))

(declare-fun t!141849 () Bool)

(declare-fun tb!87521 () Bool)

(assert (=> (and b!1566217 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!141849) tb!87521))

(declare-fun result!105976 () Bool)

(assert (= result!105976 result!105936))

(assert (=> b!1566136 t!141849))

(declare-fun tp!461250 () Bool)

(declare-fun b_and!109291 () Bool)

(assert (=> b!1566217 (= tp!461250 (and (=> t!141843 result!105970) (=> t!141845 result!105972) (=> t!141847 result!105974) (=> t!141849 result!105976) b_and!109291))))

(declare-fun e!1005947 () Bool)

(declare-fun b!1566214 () Bool)

(declare-fun tp!461251 () Bool)

(declare-fun e!1005952 () Bool)

(assert (=> b!1566214 (= e!1005947 (and (inv!22409 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) e!1005952 tp!461251))))

(declare-fun e!1005948 () Bool)

(assert (=> b!1566217 (= e!1005948 (and tp!461249 tp!461250))))

(declare-fun tp!461247 () Bool)

(declare-fun e!1005951 () Bool)

(declare-fun b!1566215 () Bool)

(assert (=> b!1566215 (= e!1005952 (and (inv!21 (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) e!1005951 tp!461247))))

(declare-fun b!1566216 () Bool)

(declare-fun tp!461248 () Bool)

(assert (=> b!1566216 (= e!1005951 (and tp!461248 (inv!22390 (tag!3247 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) e!1005948))))

(assert (=> b!1565726 (= tp!461140 e!1005947)))

(assert (= b!1566216 b!1566217))

(assert (= b!1566215 b!1566216))

(assert (= b!1566214 b!1566215))

(assert (= (and b!1565726 ((_ is Cons!17030) (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) b!1566214))

(declare-fun m!1838219 () Bool)

(assert (=> b!1566214 m!1838219))

(declare-fun m!1838221 () Bool)

(assert (=> b!1566215 m!1838221))

(declare-fun m!1838223 () Bool)

(assert (=> b!1566216 m!1838223))

(declare-fun m!1838225 () Bool)

(assert (=> b!1566216 m!1838225))

(declare-fun e!1005956 () Bool)

(assert (=> b!1565728 (= tp!461137 e!1005956)))

(declare-fun b!1566221 () Bool)

(assert (=> b!1566221 (= e!1005956 tp_is_empty!7143)))

(declare-fun b!1566224 () Bool)

(declare-fun tp!461254 () Bool)

(declare-fun tp!461252 () Bool)

(assert (=> b!1566224 (= e!1005956 (and tp!461254 tp!461252))))

(declare-fun b!1566223 () Bool)

(declare-fun tp!461256 () Bool)

(assert (=> b!1566223 (= e!1005956 tp!461256)))

(declare-fun b!1566222 () Bool)

(declare-fun tp!461255 () Bool)

(declare-fun tp!461253 () Bool)

(assert (=> b!1566222 (= e!1005956 (and tp!461255 tp!461253))))

(assert (= (and b!1565728 ((_ is ElementMatch!4311) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) b!1566221))

(assert (= (and b!1565728 ((_ is Concat!7385) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) b!1566222))

(assert (= (and b!1565728 ((_ is Star!4311) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) b!1566223))

(assert (= (and b!1565728 ((_ is Union!4311) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) b!1566224))

(declare-fun b!1566227 () Bool)

(declare-fun e!1005959 () Bool)

(assert (=> b!1566227 (= e!1005959 true)))

(declare-fun b!1566226 () Bool)

(declare-fun e!1005958 () Bool)

(assert (=> b!1566226 (= e!1005958 e!1005959)))

(declare-fun b!1566225 () Bool)

(declare-fun e!1005957 () Bool)

(assert (=> b!1566225 (= e!1005957 e!1005958)))

(assert (=> b!1565564 e!1005957))

(assert (= b!1566226 b!1566227))

(assert (= b!1566225 b!1566226))

(assert (= (and b!1565564 ((_ is Cons!17031) (t!141746 (rules!12084 thiss!10002)))) b!1566225))

(assert (=> b!1566227 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7590 order!10093 lambda!66209))))

(assert (=> b!1566227 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7590 order!10093 lambda!66209))))

(declare-fun b_lambda!49285 () Bool)

(assert (= b_lambda!49283 (or d!463762 b_lambda!49285)))

(declare-fun bs!389670 () Bool)

(declare-fun d!464082 () Bool)

(assert (= bs!389670 (and d!464082 d!463762)))

(assert (=> bs!389670 (= (dynLambda!7593 lambda!66213 (h!22431 (t!141745 lt!541850))) (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 lt!541850))))))

(assert (=> bs!389670 m!1836833))

(assert (=> b!1566140 d!464082))

(declare-fun b_lambda!49287 () Bool)

(assert (= b_lambda!49271 (or d!463734 b_lambda!49287)))

(declare-fun bs!389671 () Bool)

(declare-fun d!464084 () Bool)

(assert (= bs!389671 (and d!464084 d!463734)))

(assert (=> bs!389671 (= (dynLambda!7593 lambda!66209 (h!22431 (list!6549 (tokens!2198 thiss!10002)))) (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (list!6549 (tokens!2198 thiss!10002)))))))

(assert (=> bs!389671 m!1837743))

(assert (=> b!1565931 d!464084))

(declare-fun b_lambda!49289 () Bool)

(assert (= b_lambda!49259 (or (and b!1566217 b_free!41901 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))))) (and b!1566193 b_free!41897 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))))) (and b!1566156 b_free!41893 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))))) (and b!1565698 b_free!41873 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))))) (and b!1566152 b_free!41889 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))))) (and b!1565476 b_free!41869 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))))) (and b!1565729 b_free!41881 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))))) b_lambda!49289)))

(declare-fun b_lambda!49291 () Bool)

(assert (= b_lambda!49269 (or d!463688 b_lambda!49291)))

(declare-fun bs!389672 () Bool)

(declare-fun d!464086 () Bool)

(assert (= bs!389672 (and d!464086 d!463688)))

(assert (=> bs!389672 (= (dynLambda!7593 lambda!66200 (h!22431 (t!141745 lt!541850))) (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 lt!541850))))))

(assert (=> bs!389672 m!1836833))

(assert (=> b!1565926 d!464086))

(declare-fun b_lambda!49293 () Bool)

(assert (= b_lambda!49265 (or d!463750 b_lambda!49293)))

(declare-fun bs!389673 () Bool)

(declare-fun d!464088 () Bool)

(assert (= bs!389673 (and d!464088 d!463750)))

(assert (=> bs!389673 (= (dynLambda!7596 lambda!66212 (h!22432 (rules!12084 thiss!10002))) (ruleValid!700 Lexer!2610 (h!22432 (rules!12084 thiss!10002))))))

(assert (=> bs!389673 m!1837321))

(assert (=> b!1565804 d!464088))

(declare-fun b_lambda!49295 () Bool)

(assert (= b_lambda!49281 (or (and b!1566156 b_free!41893 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (and b!1565476 b_free!41869 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (and b!1566193 b_free!41897 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (and b!1566217 b_free!41901 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (and b!1565729 b_free!41881) (and b!1565698 b_free!41873 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (and b!1566152 b_free!41889 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b_lambda!49295)))

(check-sat (not b!1565881) (not b!1566059) (not b!1566161) (not b!1566019) (not b!1565785) (not b_next!42601) (not b!1565949) (not d!463936) (not b!1566041) (not d!464064) (not b!1566138) (not b!1565866) (not b!1565956) (not tb!87485) (not b!1565840) (not d!463964) (not d!464066) b_and!109245 (not b!1565946) (not b!1566157) (not b!1566190) (not b!1566223) (not d!463960) (not b!1565858) (not b_lambda!49287) (not b!1566099) (not d!463820) (not b!1565947) (not b!1565639) b_and!109237 (not d!463946) (not d!463802) (not d!464072) (not bs!389672) b_and!109289 (not b!1566149) (not d!463806) (not d!463980) (not d!463856) (not b!1565857) (not d!463966) (not d!463870) (not b!1566107) (not b!1566214) (not d!464054) (not b!1566145) (not b!1566189) (not b!1566013) (not bs!389670) (not b!1565796) (not b!1566148) (not b!1565777) (not b!1565837) (not b!1566159) (not b!1565963) (not b!1566126) (not d!463962) (not b!1566014) (not b_next!42591) (not b!1565879) (not b_next!42599) (not b!1566060) (not b!1566011) (not b!1566155) (not b_next!42583) (not d!464020) (not b!1565856) (not b!1565846) (not b!1566209) (not b_lambda!49273) (not b!1566122) (not b!1566150) (not b!1565811) (not b!1566198) (not d!463954) (not b_next!42573) b_and!109275 (not b_lambda!49293) (not b!1565968) (not bs!389673) (not b_lambda!49291) tp_is_empty!7143 b_and!109229 (not b!1566153) (not d!463854) (not b_next!42595) (not b!1565960) (not b!1566171) (not d!463952) (not b!1565867) (not b!1565795) (not d!464026) (not d!463918) (not bs!389671) (not d!463924) b_and!109277 (not b!1566016) (not b!1566144) b_and!109271 (not d!463932) (not b!1566160) (not b!1566199) (not b!1566158) (not b!1565901) (not d!464052) (not b!1566187) (not b_next!42575) (not b!1565844) (not b!1566208) (not b!1566015) (not b!1566139) (not b!1566225) (not d!463958) (not b!1566168) (not b!1566124) (not b!1566205) (not b!1565951) (not b!1566207) (not d!463864) (not b!1566192) (not d!464040) (not b!1565845) (not b!1565934) (not d!464056) (not b!1566169) b_and!109287 (not d!463850) (not d!463956) (not b!1565935) (not d!463880) (not b!1565773) (not d!463892) (not b!1566224) (not tb!87473) (not b!1566012) (not b!1566017) (not d!463866) (not b_next!42585) (not d!464016) (not b!1566105) (not b!1566203) (not b!1565772) (not b!1566125) (not b_next!42577) (not b!1566216) (not d!463978) (not b!1565932) (not b!1565948) (not b!1565899) (not b!1565786) (not b!1565957) (not d!464058) (not b!1565839) (not b_lambda!49289) (not b!1565902) (not tb!87479) (not b!1565959) (not d!463920) (not b!1566164) (not d!463828) (not d!463948) (not b!1565679) (not b!1566022) (not b_next!42593) (not b!1566188) (not b_lambda!49285) (not b!1565767) (not d!463848) (not b!1566141) (not b!1566173) (not b!1565920) (not b!1566166) (not d!463814) b_and!109291 (not b!1566204) (not b!1566143) (not b!1566151) (not b!1565838) (not b!1565904) (not b!1566021) (not b_next!42597) (not b_lambda!49279) (not b!1565768) (not d!463944) (not b!1565805) (not d!463940) (not b_next!42603) (not b!1565965) (not b!1566062) (not b!1566211) (not b!1566009) (not b!1566020) (not b!1566123) (not b!1566170) (not b!1566010) (not b!1565757) (not b!1565676) (not d!464024) (not b!1566018) (not b!1566212) b_and!109283 (not b!1565756) (not b!1566136) (not b!1565966) (not b!1565784) (not d!463846) (not b!1565859) (not b!1565967) b_and!109273 (not b!1566137) (not b!1565962) (not d!464062) (not b!1566213) (not b!1565952) (not d!463886) (not b!1565776) (not b_next!42605) (not d!463874) (not b!1566121) (not b!1566165) (not d!463862) b_and!109285 (not b!1566147) b_and!109279 (not b!1566061) (not b!1566172) (not d!463800) (not b!1566162) (not b!1566042) (not d!463804) (not b_next!42571) (not b_lambda!49261) (not b!1566167) (not b!1565953) (not b!1565954) (not b!1566215) (not b!1566127) (not b_lambda!49295) b_and!109281 (not d!464034) (not d!463916) (not b!1565927) (not b!1566222) (not d!464018) (not b!1566191) (not b!1565929) (not d!463968) (not d!464022) (not b!1565950) (not b!1566154) (not d!463882) (not d!463822))
(check-sat (not b_next!42601) b_and!109245 (not b_next!42583) b_and!109277 b_and!109271 (not b_next!42575) b_and!109287 (not b_next!42585) (not b_next!42577) (not b_next!42593) b_and!109291 b_and!109283 (not b_next!42571) b_and!109281 b_and!109237 b_and!109289 (not b_next!42591) (not b_next!42599) (not b_next!42573) b_and!109275 b_and!109229 (not b_next!42595) (not b_next!42597) (not b_next!42603) (not b_next!42605) b_and!109273 b_and!109279 b_and!109285)
(get-model)

(declare-fun d!464206 () Bool)

(declare-fun lt!542438 () Bool)

(declare-fun e!1006103 () Bool)

(assert (=> d!464206 (= lt!542438 e!1006103)))

(declare-fun res!698348 () Bool)

(assert (=> d!464206 (=> (not res!698348) (not e!1006103))))

(assert (=> d!464206 (= res!698348 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (t!141745 lt!541850)))))))) (list!6549 (singletonSeq!1349 (h!22431 (t!141745 (t!141745 lt!541850)))))))))

(declare-fun e!1006104 () Bool)

(assert (=> d!464206 (= lt!542438 e!1006104)))

(declare-fun res!698349 () Bool)

(assert (=> d!464206 (=> (not res!698349) (not e!1006104))))

(declare-fun lt!542437 () tuple2!16598)

(assert (=> d!464206 (= res!698349 (= (size!13812 (_1!9701 lt!542437)) 1))))

(assert (=> d!464206 (= lt!542437 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (t!141745 lt!541850)))))))))

(assert (=> d!464206 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464206 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (t!141745 lt!541850)))) lt!542438)))

(declare-fun b!1566452 () Bool)

(declare-fun res!698350 () Bool)

(assert (=> b!1566452 (=> (not res!698350) (not e!1006104))))

(assert (=> b!1566452 (= res!698350 (= (apply!4131 (_1!9701 lt!542437) 0) (h!22431 (t!141745 (t!141745 lt!541850)))))))

(declare-fun b!1566453 () Bool)

(assert (=> b!1566453 (= e!1006104 (isEmpty!10199 (_2!9701 lt!542437)))))

(declare-fun b!1566454 () Bool)

(assert (=> b!1566454 (= e!1006103 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (t!141745 lt!541850)))))))))))

(assert (= (and d!464206 res!698349) b!1566452))

(assert (= (and b!1566452 res!698350) b!1566453))

(assert (= (and d!464206 res!698348) b!1566454))

(declare-fun m!1838639 () Bool)

(assert (=> d!464206 m!1838639))

(declare-fun m!1838641 () Bool)

(assert (=> d!464206 m!1838641))

(assert (=> d!464206 m!1836809))

(declare-fun m!1838643 () Bool)

(assert (=> d!464206 m!1838643))

(declare-fun m!1838645 () Bool)

(assert (=> d!464206 m!1838645))

(assert (=> d!464206 m!1838643))

(assert (=> d!464206 m!1838639))

(declare-fun m!1838647 () Bool)

(assert (=> d!464206 m!1838647))

(declare-fun m!1838649 () Bool)

(assert (=> d!464206 m!1838649))

(assert (=> d!464206 m!1838643))

(declare-fun m!1838651 () Bool)

(assert (=> b!1566452 m!1838651))

(declare-fun m!1838653 () Bool)

(assert (=> b!1566453 m!1838653))

(assert (=> b!1566454 m!1838643))

(assert (=> b!1566454 m!1838643))

(assert (=> b!1566454 m!1838639))

(assert (=> b!1566454 m!1838639))

(assert (=> b!1566454 m!1838641))

(declare-fun m!1838655 () Bool)

(assert (=> b!1566454 m!1838655))

(assert (=> b!1565844 d!464206))

(declare-fun d!464212 () Bool)

(declare-fun lt!542439 () Int)

(assert (=> d!464212 (>= lt!542439 0)))

(declare-fun e!1006109 () Int)

(assert (=> d!464212 (= lt!542439 e!1006109)))

(declare-fun c!253748 () Bool)

(assert (=> d!464212 (= c!253748 ((_ is Nil!17030) (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464212 (= (size!13806 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) lt!542439)))

(declare-fun b!1566463 () Bool)

(assert (=> b!1566463 (= e!1006109 0)))

(declare-fun b!1566464 () Bool)

(assert (=> b!1566464 (= e!1006109 (+ 1 (size!13806 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464212 c!253748) b!1566463))

(assert (= (and d!464212 (not c!253748)) b!1566464))

(declare-fun m!1838657 () Bool)

(assert (=> b!1566464 m!1838657))

(assert (=> d!463820 d!464212))

(declare-fun d!464214 () Bool)

(declare-fun res!698360 () Bool)

(declare-fun e!1006115 () Bool)

(assert (=> d!464214 (=> (not res!698360) (not e!1006115))))

(assert (=> d!464214 (= res!698360 (= (csize!11458 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) (+ (size!13811 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) (size!13811 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))))

(assert (=> d!464214 (= (inv!22411 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) e!1006115)))

(declare-fun b!1566478 () Bool)

(declare-fun res!698361 () Bool)

(assert (=> b!1566478 (=> (not res!698361) (not e!1006115))))

(assert (=> b!1566478 (= res!698361 (and (not (= (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) Empty!5614)) (not (= (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) Empty!5614))))))

(declare-fun b!1566479 () Bool)

(declare-fun res!698362 () Bool)

(assert (=> b!1566479 (=> (not res!698362) (not e!1006115))))

(assert (=> b!1566479 (= res!698362 (= (cheight!5825 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) (+ (max!0 (height!837 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) (height!837 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) 1)))))

(declare-fun b!1566480 () Bool)

(assert (=> b!1566480 (= e!1006115 (<= 0 (cheight!5825 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(assert (= (and d!464214 res!698360) b!1566478))

(assert (= (and b!1566478 res!698361) b!1566479))

(assert (= (and b!1566479 res!698362) b!1566480))

(declare-fun m!1838679 () Bool)

(assert (=> d!464214 m!1838679))

(declare-fun m!1838681 () Bool)

(assert (=> d!464214 m!1838681))

(declare-fun m!1838683 () Bool)

(assert (=> b!1566479 m!1838683))

(declare-fun m!1838685 () Bool)

(assert (=> b!1566479 m!1838685))

(assert (=> b!1566479 m!1838683))

(assert (=> b!1566479 m!1838685))

(declare-fun m!1838687 () Bool)

(assert (=> b!1566479 m!1838687))

(assert (=> b!1565879 d!464214))

(declare-fun d!464232 () Bool)

(declare-fun lt!542443 () Int)

(assert (=> d!464232 (>= lt!542443 0)))

(declare-fun e!1006117 () Int)

(assert (=> d!464232 (= lt!542443 e!1006117)))

(declare-fun c!253751 () Bool)

(assert (=> d!464232 (= c!253751 ((_ is Nil!17029) (t!141744 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))))))

(assert (=> d!464232 (= (size!13810 (t!141744 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))) lt!542443)))

(declare-fun b!1566483 () Bool)

(assert (=> b!1566483 (= e!1006117 0)))

(declare-fun b!1566484 () Bool)

(assert (=> b!1566484 (= e!1006117 (+ 1 (size!13810 (t!141744 (t!141744 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))))))))

(assert (= (and d!464232 c!253751) b!1566483))

(assert (= (and d!464232 (not c!253751)) b!1566484))

(declare-fun m!1838689 () Bool)

(assert (=> b!1566484 m!1838689))

(assert (=> b!1565946 d!464232))

(declare-fun d!464234 () Bool)

(assert (=> d!464234 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(declare-fun lt!542444 () Unit!26198)

(assert (=> d!464234 (= lt!542444 (choose!9342 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(assert (=> d!464234 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464234 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) lt!542444)))

(declare-fun bs!389707 () Bool)

(assert (= bs!389707 d!464234))

(assert (=> bs!389707 m!1837259))

(declare-fun m!1838695 () Bool)

(assert (=> bs!389707 m!1838695))

(assert (=> bs!389707 m!1836809))

(assert (=> b!1565756 d!464234))

(declare-fun d!464236 () Bool)

(declare-fun lt!542446 () Bool)

(declare-fun e!1006119 () Bool)

(assert (=> d!464236 (= lt!542446 e!1006119)))

(declare-fun res!698365 () Bool)

(assert (=> d!464236 (=> (not res!698365) (not e!1006119))))

(assert (=> d!464236 (= res!698365 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))) (list!6549 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(declare-fun e!1006120 () Bool)

(assert (=> d!464236 (= lt!542446 e!1006120)))

(declare-fun res!698366 () Bool)

(assert (=> d!464236 (=> (not res!698366) (not e!1006120))))

(declare-fun lt!542445 () tuple2!16598)

(assert (=> d!464236 (= res!698366 (= (size!13812 (_1!9701 lt!542445)) 1))))

(assert (=> d!464236 (= lt!542445 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(assert (=> d!464236 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464236 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) lt!542446)))

(declare-fun b!1566486 () Bool)

(declare-fun res!698367 () Bool)

(assert (=> b!1566486 (=> (not res!698367) (not e!1006120))))

(assert (=> b!1566486 (= res!698367 (= (apply!4131 (_1!9701 lt!542445) 0) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(declare-fun b!1566487 () Bool)

(assert (=> b!1566487 (= e!1006120 (isEmpty!10199 (_2!9701 lt!542445)))))

(declare-fun b!1566488 () Bool)

(assert (=> b!1566488 (= e!1006119 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))))

(assert (= (and d!464236 res!698366) b!1566486))

(assert (= (and b!1566486 res!698367) b!1566487))

(assert (= (and d!464236 res!698365) b!1566488))

(declare-fun m!1838705 () Bool)

(assert (=> d!464236 m!1838705))

(declare-fun m!1838707 () Bool)

(assert (=> d!464236 m!1838707))

(assert (=> d!464236 m!1836809))

(declare-fun m!1838709 () Bool)

(assert (=> d!464236 m!1838709))

(declare-fun m!1838711 () Bool)

(assert (=> d!464236 m!1838711))

(assert (=> d!464236 m!1838709))

(assert (=> d!464236 m!1838705))

(declare-fun m!1838713 () Bool)

(assert (=> d!464236 m!1838713))

(declare-fun m!1838715 () Bool)

(assert (=> d!464236 m!1838715))

(assert (=> d!464236 m!1838709))

(declare-fun m!1838717 () Bool)

(assert (=> b!1566486 m!1838717))

(declare-fun m!1838719 () Bool)

(assert (=> b!1566487 m!1838719))

(assert (=> b!1566488 m!1838709))

(assert (=> b!1566488 m!1838709))

(assert (=> b!1566488 m!1838705))

(assert (=> b!1566488 m!1838705))

(assert (=> b!1566488 m!1838707))

(declare-fun m!1838721 () Bool)

(assert (=> b!1566488 m!1838721))

(assert (=> b!1565756 d!464236))

(declare-fun d!464240 () Bool)

(declare-fun lt!542447 () BalanceConc!11172)

(assert (=> d!464240 (= (list!6554 lt!542447) (originalCharacters!3797 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(assert (=> d!464240 (= lt!542447 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(assert (=> d!464240 (= (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) lt!542447)))

(declare-fun b_lambda!49325 () Bool)

(assert (=> (not b_lambda!49325) (not d!464240)))

(declare-fun t!141945 () Bool)

(declare-fun tb!87609 () Bool)

(assert (=> (and b!1565476 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!141945) tb!87609))

(declare-fun b!1566489 () Bool)

(declare-fun e!1006121 () Bool)

(declare-fun tp!461340 () Bool)

(assert (=> b!1566489 (= e!1006121 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) tp!461340))))

(declare-fun result!106068 () Bool)

(assert (=> tb!87609 (= result!106068 (and (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))) e!1006121))))

(assert (= tb!87609 b!1566489))

(declare-fun m!1838723 () Bool)

(assert (=> b!1566489 m!1838723))

(declare-fun m!1838725 () Bool)

(assert (=> tb!87609 m!1838725))

(assert (=> d!464240 t!141945))

(declare-fun b_and!109363 () Bool)

(assert (= b_and!109271 (and (=> t!141945 result!106068) b_and!109363)))

(declare-fun tb!87611 () Bool)

(declare-fun t!141948 () Bool)

(assert (=> (and b!1566152 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!141948) tb!87611))

(declare-fun result!106070 () Bool)

(assert (= result!106070 result!106068))

(assert (=> d!464240 t!141948))

(declare-fun b_and!109365 () Bool)

(assert (= b_and!109279 (and (=> t!141948 result!106070) b_and!109365)))

(declare-fun tb!87613 () Bool)

(declare-fun t!141950 () Bool)

(assert (=> (and b!1566193 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!141950) tb!87613))

(declare-fun result!106072 () Bool)

(assert (= result!106072 result!106068))

(assert (=> d!464240 t!141950))

(declare-fun b_and!109367 () Bool)

(assert (= b_and!109287 (and (=> t!141950 result!106072) b_and!109367)))

(declare-fun tb!87615 () Bool)

(declare-fun t!141952 () Bool)

(assert (=> (and b!1565698 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!141952) tb!87615))

(declare-fun result!106074 () Bool)

(assert (= result!106074 result!106068))

(assert (=> d!464240 t!141952))

(declare-fun b_and!109369 () Bool)

(assert (= b_and!109273 (and (=> t!141952 result!106074) b_and!109369)))

(declare-fun tb!87617 () Bool)

(declare-fun t!141954 () Bool)

(assert (=> (and b!1565729 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!141954) tb!87617))

(declare-fun result!106076 () Bool)

(assert (= result!106076 result!106068))

(assert (=> d!464240 t!141954))

(declare-fun b_and!109371 () Bool)

(assert (= b_and!109275 (and (=> t!141954 result!106076) b_and!109371)))

(declare-fun tb!87619 () Bool)

(declare-fun t!141956 () Bool)

(assert (=> (and b!1566156 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!141956) tb!87619))

(declare-fun result!106078 () Bool)

(assert (= result!106078 result!106068))

(assert (=> d!464240 t!141956))

(declare-fun b_and!109373 () Bool)

(assert (= b_and!109283 (and (=> t!141956 result!106078) b_and!109373)))

(declare-fun t!141958 () Bool)

(declare-fun tb!87621 () Bool)

(assert (=> (and b!1566217 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!141958) tb!87621))

(declare-fun result!106080 () Bool)

(assert (= result!106080 result!106068))

(assert (=> d!464240 t!141958))

(declare-fun b_and!109375 () Bool)

(assert (= b_and!109291 (and (=> t!141958 result!106080) b_and!109375)))

(declare-fun m!1838727 () Bool)

(assert (=> d!464240 m!1838727))

(declare-fun m!1838729 () Bool)

(assert (=> d!464240 m!1838729))

(assert (=> b!1565756 d!464240))

(declare-fun d!464242 () Bool)

(declare-fun lt!542448 () Int)

(assert (=> d!464242 (= lt!542448 (size!13810 (list!6554 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(assert (=> d!464242 (= lt!542448 (size!13811 (c!253626 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(assert (=> d!464242 (= (size!13804 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) lt!542448)))

(declare-fun bs!389708 () Bool)

(assert (= bs!389708 d!464242))

(assert (=> bs!389708 m!1837257))

(declare-fun m!1838731 () Bool)

(assert (=> bs!389708 m!1838731))

(assert (=> bs!389708 m!1838731))

(declare-fun m!1838733 () Bool)

(assert (=> bs!389708 m!1838733))

(declare-fun m!1838735 () Bool)

(assert (=> bs!389708 m!1838735))

(assert (=> b!1565756 d!464242))

(declare-fun d!464244 () Bool)

(assert (=> d!464244 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))

(declare-fun lt!542449 () Unit!26198)

(assert (=> d!464244 (= lt!542449 (choose!9342 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(assert (=> d!464244 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464244 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) lt!542449)))

(declare-fun bs!389709 () Bool)

(assert (= bs!389709 d!464244))

(assert (=> bs!389709 m!1837265))

(declare-fun m!1838737 () Bool)

(assert (=> bs!389709 m!1838737))

(assert (=> bs!389709 m!1836809))

(assert (=> b!1565756 d!464244))

(declare-fun d!464246 () Bool)

(declare-fun lt!542451 () Bool)

(declare-fun e!1006126 () Bool)

(assert (=> d!464246 (= lt!542451 e!1006126)))

(declare-fun res!698380 () Bool)

(assert (=> d!464246 (=> (not res!698380) (not e!1006126))))

(assert (=> d!464246 (= res!698380 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) (list!6549 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(declare-fun e!1006127 () Bool)

(assert (=> d!464246 (= lt!542451 e!1006127)))

(declare-fun res!698381 () Bool)

(assert (=> d!464246 (=> (not res!698381) (not e!1006127))))

(declare-fun lt!542450 () tuple2!16598)

(assert (=> d!464246 (= res!698381 (= (size!13812 (_1!9701 lt!542450)) 1))))

(assert (=> d!464246 (= lt!542450 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(assert (=> d!464246 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464246 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) lt!542451)))

(declare-fun b!1566502 () Bool)

(declare-fun res!698382 () Bool)

(assert (=> b!1566502 (=> (not res!698382) (not e!1006127))))

(assert (=> b!1566502 (= res!698382 (= (apply!4131 (_1!9701 lt!542450) 0) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(declare-fun b!1566503 () Bool)

(assert (=> b!1566503 (= e!1006127 (isEmpty!10199 (_2!9701 lt!542450)))))

(declare-fun b!1566504 () Bool)

(assert (=> b!1566504 (= e!1006126 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))))

(assert (= (and d!464246 res!698381) b!1566502))

(assert (= (and b!1566502 res!698382) b!1566503))

(assert (= (and d!464246 res!698380) b!1566504))

(declare-fun m!1838739 () Bool)

(assert (=> d!464246 m!1838739))

(declare-fun m!1838741 () Bool)

(assert (=> d!464246 m!1838741))

(assert (=> d!464246 m!1836809))

(declare-fun m!1838743 () Bool)

(assert (=> d!464246 m!1838743))

(declare-fun m!1838745 () Bool)

(assert (=> d!464246 m!1838745))

(assert (=> d!464246 m!1838743))

(assert (=> d!464246 m!1838739))

(declare-fun m!1838747 () Bool)

(assert (=> d!464246 m!1838747))

(declare-fun m!1838749 () Bool)

(assert (=> d!464246 m!1838749))

(assert (=> d!464246 m!1838743))

(declare-fun m!1838753 () Bool)

(assert (=> b!1566502 m!1838753))

(declare-fun m!1838757 () Bool)

(assert (=> b!1566503 m!1838757))

(assert (=> b!1566504 m!1838743))

(assert (=> b!1566504 m!1838743))

(assert (=> b!1566504 m!1838739))

(assert (=> b!1566504 m!1838739))

(assert (=> b!1566504 m!1838741))

(declare-fun m!1838763 () Bool)

(assert (=> b!1566504 m!1838763))

(assert (=> b!1565756 d!464246))

(declare-fun d!464250 () Bool)

(assert (=> d!464250 (= (separableTokensPredicate!598 Lexer!2610 (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (rules!12084 thiss!10002)) (not (prefixMatchZipperSequence!393 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (++!4433 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) 0))))))))

(declare-fun bs!389710 () Bool)

(assert (= bs!389710 d!464250))

(assert (=> bs!389710 m!1837143))

(declare-fun m!1838765 () Bool)

(assert (=> bs!389710 m!1838765))

(declare-fun m!1838767 () Bool)

(assert (=> bs!389710 m!1838767))

(declare-fun m!1838769 () Bool)

(assert (=> bs!389710 m!1838769))

(declare-fun m!1838771 () Bool)

(assert (=> bs!389710 m!1838771))

(assert (=> bs!389710 m!1838765))

(assert (=> bs!389710 m!1837143))

(assert (=> bs!389710 m!1837257))

(declare-fun m!1838773 () Bool)

(assert (=> bs!389710 m!1838773))

(assert (=> bs!389710 m!1837257))

(assert (=> bs!389710 m!1838773))

(assert (=> bs!389710 m!1838771))

(assert (=> bs!389710 m!1838769))

(assert (=> b!1565756 d!464250))

(declare-fun d!464252 () Bool)

(assert (=> d!464252 (= (inv!22401 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (<= (size!13806 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) 2147483647))))

(declare-fun bs!389711 () Bool)

(assert (= bs!389711 d!464252))

(declare-fun m!1838775 () Bool)

(assert (=> bs!389711 m!1838775))

(assert (=> b!1566161 d!464252))

(declare-fun d!464254 () Bool)

(assert (=> d!464254 (= (isEmpty!10203 (list!6554 (_2!9701 lt!541960))) ((_ is Nil!17029) (list!6554 (_2!9701 lt!541960))))))

(assert (=> d!463892 d!464254))

(declare-fun d!464256 () Bool)

(assert (=> d!464256 (= (list!6554 (_2!9701 lt!541960)) (list!6556 (c!253626 (_2!9701 lt!541960))))))

(declare-fun bs!389712 () Bool)

(assert (= bs!389712 d!464256))

(declare-fun m!1838777 () Bool)

(assert (=> bs!389712 m!1838777))

(assert (=> d!463892 d!464256))

(declare-fun d!464258 () Bool)

(declare-fun lt!542458 () Bool)

(assert (=> d!464258 (= lt!542458 (isEmpty!10203 (list!6556 (c!253626 (_2!9701 lt!541960)))))))

(assert (=> d!464258 (= lt!542458 (= (size!13811 (c!253626 (_2!9701 lt!541960))) 0))))

(assert (=> d!464258 (= (isEmpty!10204 (c!253626 (_2!9701 lt!541960))) lt!542458)))

(declare-fun bs!389713 () Bool)

(assert (= bs!389713 d!464258))

(assert (=> bs!389713 m!1838777))

(assert (=> bs!389713 m!1838777))

(declare-fun m!1838779 () Bool)

(assert (=> bs!389713 m!1838779))

(declare-fun m!1838781 () Bool)

(assert (=> bs!389713 m!1838781))

(assert (=> d!463892 d!464258))

(declare-fun d!464260 () Bool)

(declare-fun lt!542459 () Bool)

(assert (=> d!464260 (= lt!542459 (isEmpty!10202 (list!6550 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464260 (= lt!542459 (= (size!13807 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 0))))

(assert (=> d!464260 (= (isEmpty!10200 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) lt!542459)))

(declare-fun bs!389714 () Bool)

(assert (= bs!389714 d!464260))

(assert (=> bs!389714 m!1837287))

(assert (=> bs!389714 m!1837287))

(declare-fun m!1838783 () Bool)

(assert (=> bs!389714 m!1838783))

(assert (=> bs!389714 m!1837633))

(assert (=> b!1566020 d!464260))

(declare-fun d!464262 () Bool)

(assert (=> d!464262 (= (max!0 (height!837 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) (ite (< (height!837 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) (height!837 (c!253626 (charsOf!1659 (h!22431 lt!541850))))))))

(assert (=> b!1566061 d!464262))

(declare-fun b!1566637 () Bool)

(declare-fun res!698421 () Bool)

(declare-fun e!1006204 () Bool)

(assert (=> b!1566637 (=> (not res!698421) (not e!1006204))))

(declare-fun lt!542484 () Conc!5614)

(assert (=> b!1566637 (= res!698421 (isBalanced!1665 lt!542484))))

(declare-fun bm!102393 () Bool)

(declare-fun call!102398 () Int)

(declare-fun c!253805 () Bool)

(assert (=> bm!102393 (= call!102398 (height!837 (ite c!253805 (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (right!14133 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun d!464264 () Bool)

(assert (=> d!464264 e!1006204))

(declare-fun res!698419 () Bool)

(assert (=> d!464264 (=> (not res!698419) (not e!1006204))))

(assert (=> d!464264 (= res!698419 (appendAssocInst!379 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))

(declare-fun e!1006201 () Conc!5614)

(assert (=> d!464264 (= lt!542484 e!1006201)))

(declare-fun c!253806 () Bool)

(assert (=> d!464264 (= c!253806 (= (c!253626 (charsOf!1659 (h!22431 lt!541850))) Empty!5614))))

(declare-fun e!1006196 () Bool)

(assert (=> d!464264 e!1006196))

(declare-fun res!698420 () Bool)

(assert (=> d!464264 (=> (not res!698420) (not e!1006196))))

(assert (=> d!464264 (= res!698420 (isBalanced!1665 (c!253626 (charsOf!1659 (h!22431 lt!541850)))))))

(assert (=> d!464264 (= (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) lt!542484)))

(declare-fun b!1566638 () Bool)

(declare-fun c!253803 () Bool)

(declare-fun call!102410 () Int)

(assert (=> b!1566638 (= c!253803 (>= call!102410 call!102398))))

(declare-fun e!1006205 () Conc!5614)

(declare-fun e!1006197 () Conc!5614)

(assert (=> b!1566638 (= e!1006205 e!1006197)))

(declare-fun b!1566639 () Bool)

(declare-fun e!1006202 () Conc!5614)

(declare-fun call!102409 () Conc!5614)

(assert (=> b!1566639 (= e!1006202 call!102409)))

(declare-fun b!1566640 () Bool)

(declare-fun e!1006199 () Conc!5614)

(declare-fun call!102411 () Conc!5614)

(assert (=> b!1566640 (= e!1006199 call!102411)))

(declare-fun b!1566641 () Bool)

(assert (=> b!1566641 (= e!1006199 e!1006202)))

(declare-fun lt!542486 () Conc!5614)

(declare-fun call!102405 () Conc!5614)

(assert (=> b!1566641 (= lt!542486 call!102405)))

(declare-fun c!253800 () Bool)

(declare-fun call!102399 () Int)

(assert (=> b!1566641 (= c!253800 (= call!102410 (- call!102399 3)))))

(declare-fun call!102407 () Conc!5614)

(declare-fun call!102412 () Conc!5614)

(declare-fun call!102413 () Conc!5614)

(declare-fun c!253802 () Bool)

(declare-fun c!253801 () Bool)

(declare-fun bm!102394 () Bool)

(declare-fun call!102403 () Conc!5614)

(declare-fun lt!542487 () Conc!5614)

(declare-fun <>!123 (Conc!5614 Conc!5614) Conc!5614)

(assert (=> bm!102394 (= call!102403 (<>!123 (ite c!253802 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (ite c!253805 (ite (or c!253803 c!253801) (left!13803 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) call!102413) (ite c!253800 call!102412 lt!542486))) (ite c!253802 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) (ite c!253805 (ite c!253803 call!102407 (ite c!253801 call!102413 lt!542487)) (ite c!253800 (right!14133 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) call!102412)))))))

(declare-fun b!1566642 () Bool)

(declare-fun e!1006200 () Conc!5614)

(declare-fun call!102400 () Conc!5614)

(assert (=> b!1566642 (= e!1006200 call!102400)))

(declare-fun b!1566643 () Bool)

(assert (=> b!1566643 (= e!1006200 call!102400)))

(declare-fun b!1566644 () Bool)

(assert (=> b!1566644 (= e!1006201 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))

(declare-fun bm!102395 () Bool)

(declare-fun call!102406 () Conc!5614)

(assert (=> bm!102395 (= call!102405 call!102406)))

(declare-fun b!1566645 () Bool)

(declare-fun res!698423 () Bool)

(assert (=> b!1566645 (=> (not res!698423) (not e!1006204))))

(assert (=> b!1566645 (= res!698423 (>= (height!837 lt!542484) (max!0 (height!837 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun b!1566646 () Bool)

(declare-fun e!1006198 () Conc!5614)

(assert (=> b!1566646 (= e!1006201 e!1006198)))

(declare-fun c!253807 () Bool)

(assert (=> b!1566646 (= c!253807 (= (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) Empty!5614))))

(declare-fun bm!102396 () Bool)

(assert (=> bm!102396 (= call!102410 (height!837 (ite c!253805 (left!13803 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) lt!542486)))))

(declare-fun b!1566647 () Bool)

(assert (=> b!1566647 (= e!1006196 (isBalanced!1665 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))

(declare-fun b!1566648 () Bool)

(assert (=> b!1566648 (= e!1006204 (= (list!6556 lt!542484) (++!4436 (list!6556 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (list!6556 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun bm!102397 () Bool)

(declare-fun call!102404 () Int)

(assert (=> bm!102397 (= call!102404 (height!837 (ite c!253805 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun b!1566649 () Bool)

(declare-fun call!102402 () Conc!5614)

(assert (=> b!1566649 (= e!1006197 call!102402)))

(declare-fun bm!102398 () Bool)

(declare-fun c!253804 () Bool)

(assert (=> bm!102398 (= call!102406 (++!4435 (ite c!253805 (ite c!253803 (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (right!14133 (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850)))))) (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (ite c!253805 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) (ite c!253804 (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) (left!13803 (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))))

(declare-fun bm!102399 () Bool)

(assert (=> bm!102399 (= call!102399 (height!837 (ite c!253805 lt!542487 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-fun b!1566650 () Bool)

(assert (=> b!1566650 (= e!1006202 call!102409)))

(declare-fun b!1566651 () Bool)

(declare-fun lt!542485 () Int)

(assert (=> b!1566651 (= c!253802 (and (<= (- 1) lt!542485) (<= lt!542485 1)))))

(assert (=> b!1566651 (= lt!542485 (- (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) (height!837 (c!253626 (charsOf!1659 (h!22431 lt!541850))))))))

(declare-fun e!1006203 () Conc!5614)

(assert (=> b!1566651 (= e!1006198 e!1006203)))

(declare-fun b!1566652 () Bool)

(assert (=> b!1566652 (= e!1006203 call!102403)))

(declare-fun bm!102400 () Bool)

(declare-fun call!102408 () Conc!5614)

(assert (=> bm!102400 (= call!102408 call!102403)))

(declare-fun b!1566653 () Bool)

(assert (=> b!1566653 (= c!253804 (>= call!102398 call!102404))))

(assert (=> b!1566653 (= e!1006205 e!1006199)))

(declare-fun b!1566654 () Bool)

(assert (=> b!1566654 (= e!1006203 e!1006205)))

(assert (=> b!1566654 (= c!253805 (< lt!542485 (- 1)))))

(declare-fun bm!102401 () Bool)

(assert (=> bm!102401 (= call!102412 call!102411)))

(declare-fun bm!102402 () Bool)

(declare-fun call!102401 () Conc!5614)

(assert (=> bm!102402 (= call!102411 call!102401)))

(declare-fun bm!102403 () Bool)

(assert (=> bm!102403 (= call!102401 (<>!123 (ite c!253805 (ite c!253801 (left!13803 (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850))))) (left!13803 (c!253626 (charsOf!1659 (h!22431 lt!541850))))) (ite c!253804 call!102405 (ite c!253800 lt!542486 (right!14133 (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))) (ite c!253805 (ite c!253801 lt!542487 (left!13803 (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850)))))) (ite c!253804 (right!14133 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) (ite c!253800 (right!14133 (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) (right!14133 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))))

(declare-fun bm!102404 () Bool)

(assert (=> bm!102404 (= call!102413 call!102401)))

(declare-fun bm!102405 () Bool)

(assert (=> bm!102405 (= call!102402 call!102408)))

(declare-fun b!1566655 () Bool)

(assert (=> b!1566655 (= e!1006197 e!1006200)))

(assert (=> b!1566655 (= lt!542487 call!102407)))

(assert (=> b!1566655 (= c!253801 (= call!102399 (- call!102404 3)))))

(declare-fun bm!102406 () Bool)

(assert (=> bm!102406 (= call!102400 call!102402)))

(declare-fun bm!102407 () Bool)

(assert (=> bm!102407 (= call!102409 call!102408)))

(declare-fun b!1566656 () Bool)

(assert (=> b!1566656 (= e!1006198 (c!253626 (charsOf!1659 (h!22431 lt!541850))))))

(declare-fun b!1566657 () Bool)

(declare-fun res!698422 () Bool)

(assert (=> b!1566657 (=> (not res!698422) (not e!1006204))))

(assert (=> b!1566657 (= res!698422 (<= (height!837 lt!542484) (+ (max!0 (height!837 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) 1)))))

(declare-fun bm!102408 () Bool)

(assert (=> bm!102408 (= call!102407 call!102406)))

(assert (= (and d!464264 res!698420) b!1566647))

(assert (= (and d!464264 c!253806) b!1566644))

(assert (= (and d!464264 (not c!253806)) b!1566646))

(assert (= (and b!1566646 c!253807) b!1566656))

(assert (= (and b!1566646 (not c!253807)) b!1566651))

(assert (= (and b!1566651 c!253802) b!1566652))

(assert (= (and b!1566651 (not c!253802)) b!1566654))

(assert (= (and b!1566654 c!253805) b!1566638))

(assert (= (and b!1566654 (not c!253805)) b!1566653))

(assert (= (and b!1566638 c!253803) b!1566649))

(assert (= (and b!1566638 (not c!253803)) b!1566655))

(assert (= (and b!1566655 c!253801) b!1566643))

(assert (= (and b!1566655 (not c!253801)) b!1566642))

(assert (= (or b!1566643 b!1566642) bm!102404))

(assert (= (or b!1566643 b!1566642) bm!102406))

(assert (= (or b!1566649 b!1566655) bm!102408))

(assert (= (or b!1566649 bm!102406) bm!102405))

(assert (= (and b!1566653 c!253804) b!1566640))

(assert (= (and b!1566653 (not c!253804)) b!1566641))

(assert (= (and b!1566641 c!253800) b!1566639))

(assert (= (and b!1566641 (not c!253800)) b!1566650))

(assert (= (or b!1566639 b!1566650) bm!102401))

(assert (= (or b!1566639 b!1566650) bm!102407))

(assert (= (or b!1566640 b!1566641) bm!102395))

(assert (= (or b!1566640 bm!102401) bm!102402))

(assert (= (or bm!102404 bm!102402) bm!102403))

(assert (= (or b!1566655 b!1566653) bm!102397))

(assert (= (or b!1566638 b!1566653) bm!102393))

(assert (= (or b!1566638 b!1566641) bm!102396))

(assert (= (or bm!102408 bm!102395) bm!102398))

(assert (= (or bm!102405 bm!102407) bm!102400))

(assert (= (or b!1566655 b!1566641) bm!102399))

(assert (= (or b!1566652 bm!102400) bm!102394))

(assert (= (and d!464264 res!698419) b!1566637))

(assert (= (and b!1566637 res!698421) b!1566657))

(assert (= (and b!1566657 res!698422) b!1566645))

(assert (= (and b!1566645 res!698423) b!1566648))

(declare-fun m!1838929 () Bool)

(assert (=> bm!102397 m!1838929))

(declare-fun m!1838931 () Bool)

(assert (=> b!1566648 m!1838931))

(declare-fun m!1838933 () Bool)

(assert (=> b!1566648 m!1838933))

(declare-fun m!1838935 () Bool)

(assert (=> b!1566648 m!1838935))

(assert (=> b!1566648 m!1838933))

(assert (=> b!1566648 m!1838935))

(declare-fun m!1838937 () Bool)

(assert (=> b!1566648 m!1838937))

(declare-fun m!1838939 () Bool)

(assert (=> b!1566657 m!1838939))

(assert (=> b!1566657 m!1837999))

(assert (=> b!1566657 m!1838001))

(assert (=> b!1566657 m!1837999))

(assert (=> b!1566657 m!1838001))

(assert (=> b!1566657 m!1838003))

(declare-fun m!1838941 () Bool)

(assert (=> bm!102398 m!1838941))

(declare-fun m!1838943 () Bool)

(assert (=> b!1566637 m!1838943))

(declare-fun m!1838945 () Bool)

(assert (=> bm!102396 m!1838945))

(assert (=> b!1566651 m!1838001))

(assert (=> b!1566651 m!1837999))

(declare-fun m!1838947 () Bool)

(assert (=> bm!102399 m!1838947))

(assert (=> b!1566645 m!1838939))

(assert (=> b!1566645 m!1837999))

(assert (=> b!1566645 m!1838001))

(assert (=> b!1566645 m!1837999))

(assert (=> b!1566645 m!1838001))

(assert (=> b!1566645 m!1838003))

(declare-fun m!1838949 () Bool)

(assert (=> bm!102403 m!1838949))

(declare-fun m!1838951 () Bool)

(assert (=> b!1566647 m!1838951))

(assert (=> d!464264 m!1838009))

(declare-fun m!1838953 () Bool)

(assert (=> d!464264 m!1838953))

(declare-fun m!1838955 () Bool)

(assert (=> bm!102393 m!1838955))

(declare-fun m!1838957 () Bool)

(assert (=> bm!102394 m!1838957))

(assert (=> b!1566061 d!464264))

(declare-fun d!464310 () Bool)

(assert (=> d!464310 (= (height!837 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (ite ((_ is Empty!5614) (c!253626 (charsOf!1659 (h!22431 lt!541850)))) 0 (ite ((_ is Leaf!8326) (c!253626 (charsOf!1659 (h!22431 lt!541850)))) 1 (cheight!5825 (c!253626 (charsOf!1659 (h!22431 lt!541850)))))))))

(assert (=> b!1566061 d!464310))

(declare-fun d!464312 () Bool)

(assert (=> d!464312 (= (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) (ite ((_ is Empty!5614) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) 0 (ite ((_ is Leaf!8326) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) 1 (cheight!5825 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(assert (=> b!1566061 d!464312))

(declare-fun d!464314 () Bool)

(assert (=> d!464314 (= (height!837 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) (ite ((_ is Empty!5614) (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) 0 (ite ((_ is Leaf!8326) (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) 1 (cheight!5825 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))))

(assert (=> b!1566061 d!464314))

(declare-fun d!464316 () Bool)

(assert (=> d!464316 (= (max!0 (height!836 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (ite (< (height!836 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> b!1566107 d!464316))

(declare-fun d!464318 () Bool)

(assert (=> d!464318 (= (height!836 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (ite ((_ is Empty!5615) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 0 (ite ((_ is Leaf!8327) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 1 (cheight!5826 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1566107 d!464318))

(declare-fun d!464320 () Bool)

(assert (=> d!464320 (= (height!836 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (ite ((_ is Empty!5615) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 0 (ite ((_ is Leaf!8327) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 1 (cheight!5826 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1566107 d!464320))

(declare-fun d!464322 () Bool)

(declare-fun lt!542492 () Token!5532)

(assert (=> d!464322 (= lt!542492 (apply!4134 (list!6549 (_1!9701 lt!542057)) 0))))

(assert (=> d!464322 (= lt!542492 (apply!4135 (c!253628 (_1!9701 lt!542057)) 0))))

(declare-fun e!1006218 () Bool)

(assert (=> d!464322 e!1006218))

(declare-fun res!698426 () Bool)

(assert (=> d!464322 (=> (not res!698426) (not e!1006218))))

(assert (=> d!464322 (= res!698426 (<= 0 0))))

(assert (=> d!464322 (= (apply!4131 (_1!9701 lt!542057) 0) lt!542492)))

(declare-fun b!1566680 () Bool)

(assert (=> b!1566680 (= e!1006218 (< 0 (size!13812 (_1!9701 lt!542057))))))

(assert (= (and d!464322 res!698426) b!1566680))

(declare-fun m!1838959 () Bool)

(assert (=> d!464322 m!1838959))

(assert (=> d!464322 m!1838959))

(declare-fun m!1838961 () Bool)

(assert (=> d!464322 m!1838961))

(declare-fun m!1838963 () Bool)

(assert (=> d!464322 m!1838963))

(assert (=> b!1566680 m!1837689))

(assert (=> b!1565950 d!464322))

(declare-fun d!464324 () Bool)

(declare-fun lt!542495 () Int)

(assert (=> d!464324 (= lt!542495 (size!13806 (list!6549 (_1!9701 lt!542008))))))

(assert (=> d!464324 (= lt!542495 (size!13807 (c!253628 (_1!9701 lt!542008))))))

(assert (=> d!464324 (= (size!13812 (_1!9701 lt!542008)) lt!542495)))

(declare-fun bs!389724 () Bool)

(assert (= bs!389724 d!464324))

(assert (=> bs!389724 m!1837411))

(assert (=> bs!389724 m!1837411))

(declare-fun m!1838965 () Bool)

(assert (=> bs!389724 m!1838965))

(declare-fun m!1838967 () Bool)

(assert (=> bs!389724 m!1838967))

(assert (=> d!463856 d!464324))

(declare-fun e!1006310 () tuple2!16598)

(declare-datatypes ((tuple2!16606 0))(
  ( (tuple2!16607 (_1!9705 Token!5532) (_2!9705 BalanceConc!11172)) )
))
(declare-datatypes ((Option!3067 0))(
  ( (None!3066) (Some!3066 (v!23847 tuple2!16606)) )
))
(declare-fun lt!542599 () Option!3067)

(declare-fun b!1566815 () Bool)

(declare-fun lt!542600 () BalanceConc!11172)

(declare-fun append!521 (BalanceConc!11174 Token!5532) BalanceConc!11174)

(assert (=> b!1566815 (= e!1006310 (lexTailRecV2!480 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))) lt!542600 (_2!9705 (v!23847 lt!542599)) (append!521 (BalanceConc!11175 Empty!5615) (_1!9705 (v!23847 lt!542599)))))))

(declare-fun lt!542616 () tuple2!16598)

(declare-fun lexRec!344 (LexerInterface!2612 List!17101 BalanceConc!11172) tuple2!16598)

(assert (=> b!1566815 (= lt!542616 (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (_2!9705 (v!23847 lt!542599))))))

(declare-fun lt!542591 () List!17099)

(assert (=> b!1566815 (= lt!542591 (list!6554 (BalanceConc!11173 Empty!5614)))))

(declare-fun lt!542611 () List!17099)

(assert (=> b!1566815 (= lt!542611 (list!6554 (charsOf!1659 (_1!9705 (v!23847 lt!542599)))))))

(declare-fun lt!542604 () List!17099)

(assert (=> b!1566815 (= lt!542604 (list!6554 (_2!9705 (v!23847 lt!542599))))))

(declare-fun lt!542609 () Unit!26198)

(declare-fun lemmaConcatAssociativity!964 (List!17099 List!17099 List!17099) Unit!26198)

(assert (=> b!1566815 (= lt!542609 (lemmaConcatAssociativity!964 lt!542591 lt!542611 lt!542604))))

(assert (=> b!1566815 (= (++!4436 (++!4436 lt!542591 lt!542611) lt!542604) (++!4436 lt!542591 (++!4436 lt!542611 lt!542604)))))

(declare-fun lt!542597 () Unit!26198)

(assert (=> b!1566815 (= lt!542597 lt!542609)))

(declare-fun lt!542603 () Option!3067)

(declare-fun maxPrefixZipperSequence!600 (LexerInterface!2612 List!17101 BalanceConc!11172) Option!3067)

(assert (=> b!1566815 (= lt!542603 (maxPrefixZipperSequence!600 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun c!253851 () Bool)

(assert (=> b!1566815 (= c!253851 ((_ is Some!3066) lt!542603))))

(declare-fun e!1006308 () tuple2!16598)

(assert (=> b!1566815 (= (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))) e!1006308)))

(declare-fun lt!542618 () Unit!26198)

(declare-fun Unit!26221 () Unit!26198)

(assert (=> b!1566815 (= lt!542618 Unit!26221)))

(declare-fun lt!542594 () List!17100)

(assert (=> b!1566815 (= lt!542594 (list!6549 (BalanceConc!11175 Empty!5615)))))

(declare-fun lt!542607 () List!17100)

(assert (=> b!1566815 (= lt!542607 (Cons!17030 (_1!9705 (v!23847 lt!542599)) Nil!17030))))

(declare-fun lt!542590 () List!17100)

(assert (=> b!1566815 (= lt!542590 (list!6549 (_1!9701 lt!542616)))))

(declare-fun lt!542621 () Unit!26198)

(declare-fun lemmaConcatAssociativity!965 (List!17100 List!17100 List!17100) Unit!26198)

(assert (=> b!1566815 (= lt!542621 (lemmaConcatAssociativity!965 lt!542594 lt!542607 lt!542590))))

(assert (=> b!1566815 (= (++!4431 (++!4431 lt!542594 lt!542607) lt!542590) (++!4431 lt!542594 (++!4431 lt!542607 lt!542590)))))

(declare-fun lt!542615 () Unit!26198)

(assert (=> b!1566815 (= lt!542615 lt!542621)))

(declare-fun lt!542602 () List!17099)

(assert (=> b!1566815 (= lt!542602 (++!4436 (list!6554 (BalanceConc!11173 Empty!5614)) (list!6554 (charsOf!1659 (_1!9705 (v!23847 lt!542599))))))))

(declare-fun lt!542606 () List!17099)

(assert (=> b!1566815 (= lt!542606 (list!6554 (_2!9705 (v!23847 lt!542599))))))

(declare-fun lt!542598 () List!17100)

(assert (=> b!1566815 (= lt!542598 (list!6549 (append!521 (BalanceConc!11175 Empty!5615) (_1!9705 (v!23847 lt!542599)))))))

(declare-fun lt!542596 () Unit!26198)

(declare-fun lemmaLexThenLexPrefix!232 (LexerInterface!2612 List!17101 List!17099 List!17099 List!17100 List!17100 List!17099) Unit!26198)

(assert (=> b!1566815 (= lt!542596 (lemmaLexThenLexPrefix!232 Lexer!2610 (rules!12084 thiss!10002) lt!542602 lt!542606 lt!542598 (list!6549 (_1!9701 lt!542616)) (list!6554 (_2!9701 lt!542616))))))

(assert (=> b!1566815 (= (lexList!757 Lexer!2610 (rules!12084 thiss!10002) lt!542602) (tuple2!16601 lt!542598 Nil!17029))))

(declare-fun lt!542608 () Unit!26198)

(assert (=> b!1566815 (= lt!542608 lt!542596)))

(declare-fun lt!542605 () BalanceConc!11172)

(assert (=> b!1566815 (= lt!542605 (++!4433 (BalanceConc!11173 Empty!5614) (charsOf!1659 (_1!9705 (v!23847 lt!542599)))))))

(declare-fun lt!542610 () Option!3067)

(assert (=> b!1566815 (= lt!542610 (maxPrefixZipperSequence!600 Lexer!2610 (rules!12084 thiss!10002) lt!542605))))

(declare-fun c!253852 () Bool)

(assert (=> b!1566815 (= c!253852 ((_ is Some!3066) lt!542610))))

(declare-fun e!1006307 () tuple2!16598)

(assert (=> b!1566815 (= (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (++!4433 (BalanceConc!11173 Empty!5614) (charsOf!1659 (_1!9705 (v!23847 lt!542599))))) e!1006307)))

(declare-fun lt!542613 () Unit!26198)

(declare-fun Unit!26222 () Unit!26198)

(assert (=> b!1566815 (= lt!542613 Unit!26222)))

(assert (=> b!1566815 (= lt!542600 (++!4433 (BalanceConc!11173 Empty!5614) (charsOf!1659 (_1!9705 (v!23847 lt!542599)))))))

(declare-fun lt!542614 () List!17099)

(assert (=> b!1566815 (= lt!542614 (list!6554 lt!542600))))

(declare-fun lt!542612 () List!17099)

(assert (=> b!1566815 (= lt!542612 (list!6554 (_2!9705 (v!23847 lt!542599))))))

(declare-fun lt!542593 () Unit!26198)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!291 (List!17099 List!17099) Unit!26198)

(assert (=> b!1566815 (= lt!542593 (lemmaConcatTwoListThenFSndIsSuffix!291 lt!542614 lt!542612))))

(declare-fun isSuffix!390 (List!17099 List!17099) Bool)

(assert (=> b!1566815 (isSuffix!390 lt!542612 (++!4436 lt!542614 lt!542612))))

(declare-fun lt!542620 () Unit!26198)

(assert (=> b!1566815 (= lt!542620 lt!542593)))

(declare-fun b!1566816 () Bool)

(assert (=> b!1566816 (= e!1006307 (tuple2!16599 (BalanceConc!11175 Empty!5615) lt!542605))))

(declare-fun b!1566817 () Bool)

(assert (=> b!1566817 (= e!1006308 (tuple2!16599 (BalanceConc!11175 Empty!5615) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun b!1566818 () Bool)

(declare-fun lt!542589 () tuple2!16598)

(assert (=> b!1566818 (= lt!542589 (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (_2!9705 (v!23847 lt!542603))))))

(declare-fun prepend!485 (BalanceConc!11174 Token!5532) BalanceConc!11174)

(assert (=> b!1566818 (= e!1006308 (tuple2!16599 (prepend!485 (_1!9701 lt!542589) (_1!9705 (v!23847 lt!542603))) (_2!9701 lt!542589)))))

(declare-fun d!464326 () Bool)

(declare-fun e!1006309 () Bool)

(assert (=> d!464326 e!1006309))

(declare-fun res!698492 () Bool)

(assert (=> d!464326 (=> (not res!698492) (not e!1006309))))

(declare-fun lt!542601 () tuple2!16598)

(assert (=> d!464326 (= res!698492 (= (list!6549 (_1!9701 lt!542601)) (list!6549 (_1!9701 (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(assert (=> d!464326 (= lt!542601 e!1006310)))

(declare-fun c!253853 () Bool)

(assert (=> d!464326 (= c!253853 ((_ is Some!3066) lt!542599))))

(declare-fun maxPrefixZipperSequenceV2!239 (LexerInterface!2612 List!17101 BalanceConc!11172 BalanceConc!11172) Option!3067)

(assert (=> d!464326 (= lt!542599 (maxPrefixZipperSequenceV2!239 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun lt!542592 () Unit!26198)

(declare-fun lt!542595 () Unit!26198)

(assert (=> d!464326 (= lt!542592 lt!542595)))

(declare-fun lt!542588 () List!17099)

(declare-fun lt!542619 () List!17099)

(assert (=> d!464326 (isSuffix!390 lt!542588 (++!4436 lt!542619 lt!542588))))

(assert (=> d!464326 (= lt!542595 (lemmaConcatTwoListThenFSndIsSuffix!291 lt!542619 lt!542588))))

(assert (=> d!464326 (= lt!542588 (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))

(assert (=> d!464326 (= lt!542619 (list!6554 (BalanceConc!11173 Empty!5614)))))

(assert (=> d!464326 (= (lexTailRecV2!480 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))) (BalanceConc!11173 Empty!5614) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))) (BalanceConc!11175 Empty!5615)) lt!542601)))

(declare-fun b!1566819 () Bool)

(assert (=> b!1566819 (= e!1006309 (= (list!6554 (_2!9701 lt!542601)) (list!6554 (_2!9701 (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(declare-fun b!1566820 () Bool)

(declare-fun lt!542617 () tuple2!16598)

(assert (=> b!1566820 (= lt!542617 (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (_2!9705 (v!23847 lt!542610))))))

(assert (=> b!1566820 (= e!1006307 (tuple2!16599 (prepend!485 (_1!9701 lt!542617) (_1!9705 (v!23847 lt!542610))) (_2!9701 lt!542617)))))

(declare-fun b!1566821 () Bool)

(assert (=> b!1566821 (= e!1006310 (tuple2!16599 (BalanceConc!11175 Empty!5615) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))

(assert (= (and d!464326 c!253853) b!1566815))

(assert (= (and d!464326 (not c!253853)) b!1566821))

(assert (= (and b!1566815 c!253851) b!1566818))

(assert (= (and b!1566815 (not c!253851)) b!1566817))

(assert (= (and b!1566815 c!253852) b!1566820))

(assert (= (and b!1566815 (not c!253852)) b!1566816))

(assert (= (and d!464326 res!698492) b!1566819))

(declare-fun m!1839063 () Bool)

(assert (=> b!1566820 m!1839063))

(declare-fun m!1839065 () Bool)

(assert (=> b!1566820 m!1839065))

(declare-fun m!1839067 () Bool)

(assert (=> b!1566819 m!1839067))

(assert (=> b!1566819 m!1837163))

(declare-fun m!1839069 () Bool)

(assert (=> b!1566819 m!1839069))

(declare-fun m!1839071 () Bool)

(assert (=> b!1566819 m!1839071))

(declare-fun m!1839073 () Bool)

(assert (=> b!1566815 m!1839073))

(declare-fun m!1839075 () Bool)

(assert (=> b!1566815 m!1839075))

(declare-fun m!1839077 () Bool)

(assert (=> b!1566815 m!1839077))

(declare-fun m!1839079 () Bool)

(assert (=> b!1566815 m!1839079))

(declare-fun m!1839083 () Bool)

(assert (=> b!1566815 m!1839083))

(declare-fun m!1839085 () Bool)

(assert (=> b!1566815 m!1839085))

(assert (=> b!1566815 m!1837163))

(declare-fun m!1839089 () Bool)

(assert (=> b!1566815 m!1839089))

(declare-fun m!1839093 () Bool)

(assert (=> b!1566815 m!1839093))

(declare-fun m!1839095 () Bool)

(assert (=> b!1566815 m!1839095))

(declare-fun m!1839099 () Bool)

(assert (=> b!1566815 m!1839099))

(assert (=> b!1566815 m!1839073))

(assert (=> b!1566815 m!1839079))

(declare-fun m!1839103 () Bool)

(assert (=> b!1566815 m!1839103))

(declare-fun m!1839105 () Bool)

(assert (=> b!1566815 m!1839105))

(declare-fun m!1839107 () Bool)

(assert (=> b!1566815 m!1839107))

(declare-fun m!1839111 () Bool)

(assert (=> b!1566815 m!1839111))

(assert (=> b!1566815 m!1839105))

(declare-fun m!1839115 () Bool)

(assert (=> b!1566815 m!1839115))

(assert (=> b!1566815 m!1837163))

(declare-fun m!1839117 () Bool)

(assert (=> b!1566815 m!1839117))

(declare-fun m!1839119 () Bool)

(assert (=> b!1566815 m!1839119))

(assert (=> b!1566815 m!1839083))

(assert (=> b!1566815 m!1837163))

(assert (=> b!1566815 m!1839069))

(declare-fun m!1839125 () Bool)

(assert (=> b!1566815 m!1839125))

(declare-fun m!1839129 () Bool)

(assert (=> b!1566815 m!1839129))

(declare-fun m!1839131 () Bool)

(assert (=> b!1566815 m!1839131))

(assert (=> b!1566815 m!1839089))

(declare-fun m!1839135 () Bool)

(assert (=> b!1566815 m!1839135))

(declare-fun m!1839137 () Bool)

(assert (=> b!1566815 m!1839137))

(declare-fun m!1839141 () Bool)

(assert (=> b!1566815 m!1839141))

(assert (=> b!1566815 m!1839099))

(assert (=> b!1566815 m!1839075))

(declare-fun m!1839143 () Bool)

(assert (=> b!1566815 m!1839143))

(assert (=> b!1566815 m!1839099))

(assert (=> b!1566815 m!1839137))

(declare-fun m!1839147 () Bool)

(assert (=> b!1566815 m!1839147))

(declare-fun m!1839149 () Bool)

(assert (=> b!1566815 m!1839149))

(declare-fun m!1839151 () Bool)

(assert (=> b!1566815 m!1839151))

(assert (=> b!1566815 m!1839111))

(declare-fun m!1839155 () Bool)

(assert (=> b!1566815 m!1839155))

(assert (=> b!1566815 m!1839147))

(declare-fun m!1839157 () Bool)

(assert (=> b!1566815 m!1839157))

(declare-fun m!1839159 () Bool)

(assert (=> b!1566815 m!1839159))

(assert (=> b!1566815 m!1839129))

(assert (=> b!1566815 m!1839107))

(declare-fun m!1839161 () Bool)

(assert (=> b!1566815 m!1839161))

(assert (=> b!1566815 m!1839089))

(declare-fun m!1839163 () Bool)

(assert (=> b!1566815 m!1839163))

(assert (=> d!464326 m!1837163))

(assert (=> d!464326 m!1839069))

(declare-fun m!1839167 () Bool)

(assert (=> d!464326 m!1839167))

(declare-fun m!1839169 () Bool)

(assert (=> d!464326 m!1839169))

(declare-fun m!1839171 () Bool)

(assert (=> d!464326 m!1839171))

(assert (=> d!464326 m!1837163))

(assert (=> d!464326 m!1837163))

(declare-fun m!1839173 () Bool)

(assert (=> d!464326 m!1839173))

(assert (=> d!464326 m!1839169))

(declare-fun m!1839177 () Bool)

(assert (=> d!464326 m!1839177))

(declare-fun m!1839179 () Bool)

(assert (=> d!464326 m!1839179))

(assert (=> d!464326 m!1839073))

(assert (=> d!464326 m!1837163))

(assert (=> d!464326 m!1837401))

(declare-fun m!1839181 () Bool)

(assert (=> b!1566818 m!1839181))

(declare-fun m!1839183 () Bool)

(assert (=> b!1566818 m!1839183))

(assert (=> d!463856 d!464326))

(declare-fun b!1566842 () Bool)

(declare-fun e!1006326 () List!17099)

(declare-fun e!1006327 () List!17099)

(assert (=> b!1566842 (= e!1006326 e!1006327)))

(declare-fun c!253859 () Bool)

(assert (=> b!1566842 (= c!253859 ((_ is Leaf!8326) (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))

(declare-fun b!1566841 () Bool)

(assert (=> b!1566841 (= e!1006326 Nil!17029)))

(declare-fun b!1566844 () Bool)

(assert (=> b!1566844 (= e!1006327 (++!4436 (list!6556 (left!13803 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))) (list!6556 (right!14133 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun b!1566843 () Bool)

(declare-fun list!6559 (IArray!11233) List!17099)

(assert (=> b!1566843 (= e!1006327 (list!6559 (xs!8414 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))))))

(declare-fun d!464362 () Bool)

(declare-fun c!253858 () Bool)

(assert (=> d!464362 (= c!253858 ((_ is Empty!5614) (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))

(assert (=> d!464362 (= (list!6556 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))) e!1006326)))

(assert (= (and d!464362 c!253858) b!1566841))

(assert (= (and d!464362 (not c!253858)) b!1566842))

(assert (= (and b!1566842 c!253859) b!1566843))

(assert (= (and b!1566842 (not c!253859)) b!1566844))

(declare-fun m!1839193 () Bool)

(assert (=> b!1566844 m!1839193))

(declare-fun m!1839195 () Bool)

(assert (=> b!1566844 m!1839195))

(assert (=> b!1566844 m!1839193))

(assert (=> b!1566844 m!1839195))

(declare-fun m!1839197 () Bool)

(assert (=> b!1566844 m!1839197))

(declare-fun m!1839199 () Bool)

(assert (=> b!1566843 m!1839199))

(assert (=> d!463952 d!464362))

(declare-fun d!464368 () Bool)

(declare-fun c!253860 () Bool)

(assert (=> d!464368 (= c!253860 ((_ is Node!5614) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(declare-fun e!1006328 () Bool)

(assert (=> d!464368 (= (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) e!1006328)))

(declare-fun b!1566845 () Bool)

(assert (=> b!1566845 (= e!1006328 (inv!22411 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(declare-fun b!1566846 () Bool)

(declare-fun e!1006329 () Bool)

(assert (=> b!1566846 (= e!1006328 e!1006329)))

(declare-fun res!698504 () Bool)

(assert (=> b!1566846 (= res!698504 (not ((_ is Leaf!8326) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))))

(assert (=> b!1566846 (=> res!698504 e!1006329)))

(declare-fun b!1566847 () Bool)

(assert (=> b!1566847 (= e!1006329 (inv!22412 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(assert (= (and d!464368 c!253860) b!1566845))

(assert (= (and d!464368 (not c!253860)) b!1566846))

(assert (= (and b!1566846 (not res!698504)) b!1566847))

(declare-fun m!1839201 () Bool)

(assert (=> b!1566845 m!1839201))

(declare-fun m!1839203 () Bool)

(assert (=> b!1566847 m!1839203))

(assert (=> b!1566138 d!464368))

(declare-fun d!464370 () Bool)

(assert (=> d!464370 (= (isEmpty!10203 (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) ((_ is Nil!17029) (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> d!464066 d!464370))

(declare-fun d!464372 () Bool)

(declare-fun res!698505 () Bool)

(declare-fun e!1006330 () Bool)

(assert (=> d!464372 (=> res!698505 e!1006330)))

(assert (=> d!464372 (= res!698505 ((_ is Nil!17031) (t!141746 (t!141746 (rules!12084 thiss!10002)))))))

(assert (=> d!464372 (= (noDuplicateTag!1056 Lexer!2610 (t!141746 (t!141746 (rules!12084 thiss!10002))) (Cons!17032 (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002)))) (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032))) e!1006330)))

(declare-fun b!1566848 () Bool)

(declare-fun e!1006331 () Bool)

(assert (=> b!1566848 (= e!1006330 e!1006331)))

(declare-fun res!698506 () Bool)

(assert (=> b!1566848 (=> (not res!698506) (not e!1006331))))

(assert (=> b!1566848 (= res!698506 (not (contains!3002 (Cons!17032 (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002)))) (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032)) (tag!3247 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))))))

(declare-fun b!1566849 () Bool)

(assert (=> b!1566849 (= e!1006331 (noDuplicateTag!1056 Lexer!2610 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002)))) (Cons!17032 (tag!3247 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))) (Cons!17032 (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002)))) (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032)))))))

(assert (= (and d!464372 (not res!698505)) b!1566848))

(assert (= (and b!1566848 res!698506) b!1566849))

(declare-fun m!1839205 () Bool)

(assert (=> b!1566848 m!1839205))

(declare-fun m!1839207 () Bool)

(assert (=> b!1566849 m!1839207))

(assert (=> b!1565786 d!464372))

(declare-fun d!464374 () Bool)

(declare-fun res!698507 () Bool)

(declare-fun e!1006332 () Bool)

(assert (=> d!464374 (=> (not res!698507) (not e!1006332))))

(assert (=> d!464374 (= res!698507 (= (csize!11460 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (+ (size!13807 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (size!13807 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (=> d!464374 (= (inv!22397 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1006332)))

(declare-fun b!1566850 () Bool)

(declare-fun res!698508 () Bool)

(assert (=> b!1566850 (=> (not res!698508) (not e!1006332))))

(assert (=> b!1566850 (= res!698508 (and (not (= (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) Empty!5615)) (not (= (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) Empty!5615))))))

(declare-fun b!1566851 () Bool)

(declare-fun res!698509 () Bool)

(assert (=> b!1566851 (=> (not res!698509) (not e!1006332))))

(assert (=> b!1566851 (= res!698509 (= (cheight!5826 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (+ (max!0 (height!836 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) 1)))))

(declare-fun b!1566852 () Bool)

(assert (=> b!1566852 (= e!1006332 (<= 0 (cheight!5826 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464374 res!698507) b!1566850))

(assert (= (and b!1566850 res!698508) b!1566851))

(assert (= (and b!1566851 res!698509) b!1566852))

(declare-fun m!1839209 () Bool)

(assert (=> d!464374 m!1839209))

(declare-fun m!1839211 () Bool)

(assert (=> d!464374 m!1839211))

(declare-fun m!1839213 () Bool)

(assert (=> b!1566851 m!1839213))

(declare-fun m!1839215 () Bool)

(assert (=> b!1566851 m!1839215))

(assert (=> b!1566851 m!1839213))

(assert (=> b!1566851 m!1839215))

(declare-fun m!1839217 () Bool)

(assert (=> b!1566851 m!1839217))

(assert (=> b!1565957 d!464374))

(declare-fun bs!389736 () Bool)

(declare-fun d!464376 () Bool)

(assert (= bs!389736 (and d!464376 d!464034)))

(declare-fun lambda!66263 () Int)

(assert (=> bs!389736 (= lambda!66263 lambda!66232)))

(declare-fun lambda!66264 () Int)

(declare-fun forall!3960 (List!17104 Int) Bool)

(assert (=> d!464376 (forall!3960 (map!3557 (rules!12084 thiss!10002) lambda!66263) lambda!66264)))

(declare-fun lt!542627 () Unit!26198)

(declare-fun e!1006335 () Unit!26198)

(assert (=> d!464376 (= lt!542627 e!1006335)))

(declare-fun c!253863 () Bool)

(assert (=> d!464376 (= c!253863 ((_ is Nil!17031) (rules!12084 thiss!10002)))))

(assert (=> d!464376 (rulesValidInductive!899 Lexer!2610 (rules!12084 thiss!10002))))

(assert (=> d!464376 (= (lemma!186 (rules!12084 thiss!10002) Lexer!2610 (rules!12084 thiss!10002)) lt!542627)))

(declare-fun b!1566857 () Bool)

(declare-fun Unit!26225 () Unit!26198)

(assert (=> b!1566857 (= e!1006335 Unit!26225)))

(declare-fun b!1566858 () Bool)

(declare-fun Unit!26226 () Unit!26198)

(assert (=> b!1566858 (= e!1006335 Unit!26226)))

(declare-fun lt!542628 () Unit!26198)

(assert (=> b!1566858 (= lt!542628 (lemma!186 (rules!12084 thiss!10002) Lexer!2610 (t!141746 (rules!12084 thiss!10002))))))

(assert (= (and d!464376 c!253863) b!1566857))

(assert (= (and d!464376 (not c!253863)) b!1566858))

(declare-fun m!1839219 () Bool)

(assert (=> d!464376 m!1839219))

(assert (=> d!464376 m!1839219))

(declare-fun m!1839221 () Bool)

(assert (=> d!464376 m!1839221))

(assert (=> d!464376 m!1837033))

(declare-fun m!1839223 () Bool)

(assert (=> b!1566858 m!1839223))

(assert (=> d!464034 d!464376))

(declare-fun bs!389737 () Bool)

(declare-fun d!464378 () Bool)

(assert (= bs!389737 (and d!464378 d!464376)))

(declare-fun lambda!66267 () Int)

(assert (=> bs!389737 (= lambda!66267 lambda!66264)))

(declare-fun b!1566879 () Bool)

(declare-fun e!1006348 () Bool)

(declare-fun isEmpty!10210 (List!17104) Bool)

(assert (=> b!1566879 (= e!1006348 (isEmpty!10210 (t!141895 (map!3557 (rules!12084 thiss!10002) lambda!66232))))))

(declare-fun e!1006349 () Bool)

(declare-fun lt!542631 () Regex!4311)

(declare-fun b!1566880 () Bool)

(declare-fun head!3130 (List!17104) Regex!4311)

(assert (=> b!1566880 (= e!1006349 (= lt!542631 (head!3130 (map!3557 (rules!12084 thiss!10002) lambda!66232))))))

(declare-fun b!1566881 () Bool)

(declare-fun e!1006350 () Regex!4311)

(assert (=> b!1566881 (= e!1006350 (Union!4311 (h!22435 (map!3557 (rules!12084 thiss!10002) lambda!66232)) (generalisedUnion!194 (t!141895 (map!3557 (rules!12084 thiss!10002) lambda!66232)))))))

(declare-fun b!1566882 () Bool)

(declare-fun e!1006352 () Bool)

(declare-fun e!1006351 () Bool)

(assert (=> b!1566882 (= e!1006352 e!1006351)))

(declare-fun c!253875 () Bool)

(assert (=> b!1566882 (= c!253875 (isEmpty!10210 (map!3557 (rules!12084 thiss!10002) lambda!66232)))))

(declare-fun b!1566883 () Bool)

(assert (=> b!1566883 (= e!1006350 EmptyLang!4311)))

(assert (=> d!464378 e!1006352))

(declare-fun res!698515 () Bool)

(assert (=> d!464378 (=> (not res!698515) (not e!1006352))))

(assert (=> d!464378 (= res!698515 (validRegex!1723 lt!542631))))

(declare-fun e!1006353 () Regex!4311)

(assert (=> d!464378 (= lt!542631 e!1006353)))

(declare-fun c!253873 () Bool)

(assert (=> d!464378 (= c!253873 e!1006348)))

(declare-fun res!698514 () Bool)

(assert (=> d!464378 (=> (not res!698514) (not e!1006348))))

(assert (=> d!464378 (= res!698514 ((_ is Cons!17034) (map!3557 (rules!12084 thiss!10002) lambda!66232)))))

(assert (=> d!464378 (forall!3960 (map!3557 (rules!12084 thiss!10002) lambda!66232) lambda!66267)))

(assert (=> d!464378 (= (generalisedUnion!194 (map!3557 (rules!12084 thiss!10002) lambda!66232)) lt!542631)))

(declare-fun b!1566884 () Bool)

(declare-fun isUnion!61 (Regex!4311) Bool)

(assert (=> b!1566884 (= e!1006349 (isUnion!61 lt!542631))))

(declare-fun b!1566885 () Bool)

(assert (=> b!1566885 (= e!1006353 e!1006350)))

(declare-fun c!253872 () Bool)

(assert (=> b!1566885 (= c!253872 ((_ is Cons!17034) (map!3557 (rules!12084 thiss!10002) lambda!66232)))))

(declare-fun b!1566886 () Bool)

(assert (=> b!1566886 (= e!1006353 (h!22435 (map!3557 (rules!12084 thiss!10002) lambda!66232)))))

(declare-fun b!1566887 () Bool)

(assert (=> b!1566887 (= e!1006351 e!1006349)))

(declare-fun c!253874 () Bool)

(declare-fun tail!2225 (List!17104) List!17104)

(assert (=> b!1566887 (= c!253874 (isEmpty!10210 (tail!2225 (map!3557 (rules!12084 thiss!10002) lambda!66232))))))

(declare-fun b!1566888 () Bool)

(declare-fun isEmptyLang!61 (Regex!4311) Bool)

(assert (=> b!1566888 (= e!1006351 (isEmptyLang!61 lt!542631))))

(assert (= (and d!464378 res!698514) b!1566879))

(assert (= (and d!464378 c!253873) b!1566886))

(assert (= (and d!464378 (not c!253873)) b!1566885))

(assert (= (and b!1566885 c!253872) b!1566881))

(assert (= (and b!1566885 (not c!253872)) b!1566883))

(assert (= (and d!464378 res!698515) b!1566882))

(assert (= (and b!1566882 c!253875) b!1566888))

(assert (= (and b!1566882 (not c!253875)) b!1566887))

(assert (= (and b!1566887 c!253874) b!1566880))

(assert (= (and b!1566887 (not c!253874)) b!1566884))

(declare-fun m!1839225 () Bool)

(assert (=> b!1566888 m!1839225))

(declare-fun m!1839227 () Bool)

(assert (=> b!1566884 m!1839227))

(declare-fun m!1839229 () Bool)

(assert (=> b!1566879 m!1839229))

(assert (=> b!1566882 m!1838039))

(declare-fun m!1839231 () Bool)

(assert (=> b!1566882 m!1839231))

(declare-fun m!1839233 () Bool)

(assert (=> b!1566881 m!1839233))

(declare-fun m!1839235 () Bool)

(assert (=> d!464378 m!1839235))

(assert (=> d!464378 m!1838039))

(declare-fun m!1839237 () Bool)

(assert (=> d!464378 m!1839237))

(assert (=> b!1566887 m!1838039))

(declare-fun m!1839239 () Bool)

(assert (=> b!1566887 m!1839239))

(assert (=> b!1566887 m!1839239))

(declare-fun m!1839241 () Bool)

(assert (=> b!1566887 m!1839241))

(assert (=> b!1566880 m!1838039))

(declare-fun m!1839243 () Bool)

(assert (=> b!1566880 m!1839243))

(assert (=> d!464034 d!464378))

(declare-fun d!464380 () Bool)

(declare-fun lt!542634 () List!17104)

(declare-fun size!13817 (List!17104) Int)

(declare-fun size!13818 (List!17101) Int)

(assert (=> d!464380 (= (size!13817 lt!542634) (size!13818 (rules!12084 thiss!10002)))))

(declare-fun e!1006356 () List!17104)

(assert (=> d!464380 (= lt!542634 e!1006356)))

(declare-fun c!253878 () Bool)

(assert (=> d!464380 (= c!253878 ((_ is Nil!17031) (rules!12084 thiss!10002)))))

(assert (=> d!464380 (= (map!3557 (rules!12084 thiss!10002) lambda!66232) lt!542634)))

(declare-fun b!1566893 () Bool)

(assert (=> b!1566893 (= e!1006356 Nil!17034)))

(declare-fun b!1566894 () Bool)

(declare-fun $colon$colon!253 (List!17104 Regex!4311) List!17104)

(declare-fun dynLambda!7603 (Int Rule!5766) Regex!4311)

(assert (=> b!1566894 (= e!1006356 ($colon$colon!253 (map!3557 (t!141746 (rules!12084 thiss!10002)) lambda!66232) (dynLambda!7603 lambda!66232 (h!22432 (rules!12084 thiss!10002)))))))

(assert (= (and d!464380 c!253878) b!1566893))

(assert (= (and d!464380 (not c!253878)) b!1566894))

(declare-fun b_lambda!49333 () Bool)

(assert (=> (not b_lambda!49333) (not b!1566894)))

(declare-fun m!1839245 () Bool)

(assert (=> d!464380 m!1839245))

(declare-fun m!1839247 () Bool)

(assert (=> d!464380 m!1839247))

(declare-fun m!1839249 () Bool)

(assert (=> b!1566894 m!1839249))

(declare-fun m!1839251 () Bool)

(assert (=> b!1566894 m!1839251))

(assert (=> b!1566894 m!1839249))

(assert (=> b!1566894 m!1839251))

(declare-fun m!1839253 () Bool)

(assert (=> b!1566894 m!1839253))

(assert (=> d!464034 d!464380))

(declare-fun d!464382 () Bool)

(declare-fun lt!542637 () C!8796)

(declare-fun contains!3005 (List!17099 C!8796) Bool)

(assert (=> d!464382 (contains!3005 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850)))) lt!542637)))

(declare-fun e!1006361 () C!8796)

(assert (=> d!464382 (= lt!542637 e!1006361)))

(declare-fun c!253881 () Bool)

(assert (=> d!464382 (= c!253881 (= 0 0))))

(declare-fun e!1006362 () Bool)

(assert (=> d!464382 e!1006362))

(declare-fun res!698518 () Bool)

(assert (=> d!464382 (=> (not res!698518) (not e!1006362))))

(assert (=> d!464382 (= res!698518 (<= 0 0))))

(assert (=> d!464382 (= (apply!4138 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850)))) 0) lt!542637)))

(declare-fun b!1566901 () Bool)

(assert (=> b!1566901 (= e!1006362 (< 0 (size!13810 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))))))

(declare-fun b!1566902 () Bool)

(declare-fun head!3131 (List!17099) C!8796)

(assert (=> b!1566902 (= e!1006361 (head!3131 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))

(declare-fun b!1566903 () Bool)

(declare-fun tail!2226 (List!17099) List!17099)

(assert (=> b!1566903 (= e!1006361 (apply!4138 (tail!2226 (list!6554 (charsOf!1659 (h!22431 (t!141745 lt!541850))))) (- 0 1)))))

(assert (= (and d!464382 res!698518) b!1566901))

(assert (= (and d!464382 c!253881) b!1566902))

(assert (= (and d!464382 (not c!253881)) b!1566903))

(assert (=> d!464382 m!1837113))

(declare-fun m!1839255 () Bool)

(assert (=> d!464382 m!1839255))

(assert (=> b!1566901 m!1837113))

(assert (=> b!1566901 m!1837115))

(assert (=> b!1566902 m!1837113))

(declare-fun m!1839257 () Bool)

(assert (=> b!1566902 m!1839257))

(assert (=> b!1566903 m!1837113))

(declare-fun m!1839259 () Bool)

(assert (=> b!1566903 m!1839259))

(assert (=> b!1566903 m!1839259))

(declare-fun m!1839261 () Bool)

(assert (=> b!1566903 m!1839261))

(assert (=> d!464022 d!464382))

(assert (=> d!464022 d!463952))

(declare-fun b!1566918 () Bool)

(declare-fun e!1006372 () Bool)

(assert (=> b!1566918 (= e!1006372 (< 0 (size!13811 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))))))

(declare-fun b!1566919 () Bool)

(declare-fun e!1006373 () Int)

(assert (=> b!1566919 (= e!1006373 (- 0 (size!13811 (left!13803 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun b!1566920 () Bool)

(declare-fun e!1006371 () C!8796)

(declare-fun apply!4143 (IArray!11233 Int) C!8796)

(assert (=> b!1566920 (= e!1006371 (apply!4143 (xs!8414 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))) 0))))

(declare-fun d!464384 () Bool)

(declare-fun lt!542643 () C!8796)

(assert (=> d!464384 (= lt!542643 (apply!4138 (list!6556 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))) 0))))

(assert (=> d!464384 (= lt!542643 e!1006371)))

(declare-fun c!253888 () Bool)

(assert (=> d!464384 (= c!253888 ((_ is Leaf!8326) (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))

(assert (=> d!464384 e!1006372))

(declare-fun res!698521 () Bool)

(assert (=> d!464384 (=> (not res!698521) (not e!1006372))))

(assert (=> d!464384 (= res!698521 (<= 0 0))))

(assert (=> d!464384 (= (apply!4139 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))) 0) lt!542643)))

(declare-fun bm!102462 () Bool)

(declare-fun c!253889 () Bool)

(declare-fun c!253890 () Bool)

(assert (=> bm!102462 (= c!253889 c!253890)))

(declare-fun call!102467 () C!8796)

(assert (=> bm!102462 (= call!102467 (apply!4139 (ite c!253890 (left!13803 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))) (right!14133 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))) e!1006373))))

(declare-fun b!1566921 () Bool)

(declare-fun e!1006374 () C!8796)

(assert (=> b!1566921 (= e!1006374 call!102467)))

(declare-fun b!1566922 () Bool)

(assert (=> b!1566922 (= e!1006371 e!1006374)))

(declare-fun lt!542642 () Bool)

(declare-fun appendIndex!191 (List!17099 List!17099 Int) Bool)

(assert (=> b!1566922 (= lt!542642 (appendIndex!191 (list!6556 (left!13803 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))) (list!6556 (right!14133 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))) 0))))

(assert (=> b!1566922 (= c!253890 (< 0 (size!13811 (left!13803 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun b!1566923 () Bool)

(assert (=> b!1566923 (= e!1006373 0)))

(declare-fun b!1566924 () Bool)

(assert (=> b!1566924 (= e!1006374 call!102467)))

(assert (= (and d!464384 res!698521) b!1566918))

(assert (= (and d!464384 c!253888) b!1566920))

(assert (= (and d!464384 (not c!253888)) b!1566922))

(assert (= (and b!1566922 c!253890) b!1566924))

(assert (= (and b!1566922 (not c!253890)) b!1566921))

(assert (= (or b!1566924 b!1566921) bm!102462))

(assert (= (and bm!102462 c!253889) b!1566923))

(assert (= (and bm!102462 (not c!253889)) b!1566919))

(assert (=> b!1566922 m!1839193))

(assert (=> b!1566922 m!1839195))

(assert (=> b!1566922 m!1839193))

(assert (=> b!1566922 m!1839195))

(declare-fun m!1839263 () Bool)

(assert (=> b!1566922 m!1839263))

(declare-fun m!1839265 () Bool)

(assert (=> b!1566922 m!1839265))

(declare-fun m!1839267 () Bool)

(assert (=> bm!102462 m!1839267))

(assert (=> d!464384 m!1837657))

(assert (=> d!464384 m!1837657))

(declare-fun m!1839269 () Bool)

(assert (=> d!464384 m!1839269))

(assert (=> b!1566919 m!1839265))

(assert (=> b!1566918 m!1837117))

(declare-fun m!1839271 () Bool)

(assert (=> b!1566920 m!1839271))

(assert (=> d!464022 d!464384))

(declare-fun b!1566925 () Bool)

(declare-fun e!1006377 () Bool)

(declare-fun lt!542644 () tuple2!16598)

(assert (=> b!1566925 (= e!1006377 (not (isEmpty!10201 (_1!9701 lt!542644))))))

(declare-fun b!1566926 () Bool)

(declare-fun e!1006375 () Bool)

(assert (=> b!1566926 (= e!1006375 (= (list!6554 (_2!9701 lt!542644)) (_2!9702 (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(declare-fun b!1566927 () Bool)

(declare-fun res!698524 () Bool)

(assert (=> b!1566927 (=> (not res!698524) (not e!1006375))))

(assert (=> b!1566927 (= res!698524 (= (list!6549 (_1!9701 lt!542644)) (_1!9702 (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(declare-fun b!1566929 () Bool)

(declare-fun e!1006376 () Bool)

(assert (=> b!1566929 (= e!1006376 (= (_2!9701 lt!542644) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))

(declare-fun d!464386 () Bool)

(assert (=> d!464386 e!1006375))

(declare-fun res!698522 () Bool)

(assert (=> d!464386 (=> (not res!698522) (not e!1006375))))

(assert (=> d!464386 (= res!698522 e!1006376)))

(declare-fun c!253891 () Bool)

(assert (=> d!464386 (= c!253891 (> (size!13812 (_1!9701 lt!542644)) 0))))

(assert (=> d!464386 (= lt!542644 (lexTailRecV2!480 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (BalanceConc!11173 Empty!5614) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (BalanceConc!11175 Empty!5615)))))

(assert (=> d!464386 (= (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) lt!542644)))

(declare-fun b!1566928 () Bool)

(assert (=> b!1566928 (= e!1006376 e!1006377)))

(declare-fun res!698523 () Bool)

(assert (=> b!1566928 (= res!698523 (< (size!13804 (_2!9701 lt!542644)) (size!13804 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(assert (=> b!1566928 (=> (not res!698523) (not e!1006377))))

(assert (= (and d!464386 c!253891) b!1566928))

(assert (= (and d!464386 (not c!253891)) b!1566929))

(assert (= (and b!1566928 res!698523) b!1566925))

(assert (= (and d!464386 res!698522) b!1566927))

(assert (= (and b!1566927 res!698524) b!1566926))

(declare-fun m!1839273 () Bool)

(assert (=> b!1566928 m!1839273))

(assert (=> b!1566928 m!1837663))

(declare-fun m!1839275 () Bool)

(assert (=> b!1566928 m!1839275))

(declare-fun m!1839277 () Bool)

(assert (=> b!1566926 m!1839277))

(assert (=> b!1566926 m!1837663))

(declare-fun m!1839279 () Bool)

(assert (=> b!1566926 m!1839279))

(assert (=> b!1566926 m!1839279))

(declare-fun m!1839281 () Bool)

(assert (=> b!1566926 m!1839281))

(declare-fun m!1839283 () Bool)

(assert (=> b!1566925 m!1839283))

(declare-fun m!1839285 () Bool)

(assert (=> d!464386 m!1839285))

(assert (=> d!464386 m!1837663))

(assert (=> d!464386 m!1837663))

(declare-fun m!1839287 () Bool)

(assert (=> d!464386 m!1839287))

(declare-fun m!1839289 () Bool)

(assert (=> b!1566927 m!1839289))

(assert (=> b!1566927 m!1837663))

(assert (=> b!1566927 m!1839279))

(assert (=> b!1566927 m!1839279))

(assert (=> b!1566927 m!1839281))

(assert (=> d!463958 d!464386))

(declare-fun d!464388 () Bool)

(declare-fun lt!542645 () BalanceConc!11172)

(assert (=> d!464388 (= (list!6554 lt!542645) (printList!772 Lexer!2610 (list!6549 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))

(assert (=> d!464388 (= lt!542645 (printTailRec!708 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) 0 (BalanceConc!11173 Empty!5614)))))

(assert (=> d!464388 (= (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) lt!542645)))

(declare-fun bs!389738 () Bool)

(assert (= bs!389738 d!464388))

(declare-fun m!1839291 () Bool)

(assert (=> bs!389738 m!1839291))

(assert (=> bs!389738 m!1837667))

(assert (=> bs!389738 m!1837669))

(assert (=> bs!389738 m!1837669))

(declare-fun m!1839293 () Bool)

(assert (=> bs!389738 m!1839293))

(assert (=> bs!389738 m!1837667))

(declare-fun m!1839295 () Bool)

(assert (=> bs!389738 m!1839295))

(assert (=> d!463958 d!464388))

(declare-fun d!464390 () Bool)

(declare-fun lt!542646 () Int)

(assert (=> d!464390 (= lt!542646 (size!13806 (list!6549 (_1!9701 lt!542055))))))

(assert (=> d!464390 (= lt!542646 (size!13807 (c!253628 (_1!9701 lt!542055))))))

(assert (=> d!464390 (= (size!13812 (_1!9701 lt!542055)) lt!542646)))

(declare-fun bs!389739 () Bool)

(assert (= bs!389739 d!464390))

(declare-fun m!1839297 () Bool)

(assert (=> bs!389739 m!1839297))

(assert (=> bs!389739 m!1839297))

(declare-fun m!1839299 () Bool)

(assert (=> bs!389739 m!1839299))

(declare-fun m!1839301 () Bool)

(assert (=> bs!389739 m!1839301))

(assert (=> d!463958 d!464390))

(declare-fun d!464392 () Bool)

(assert (=> d!464392 (= (list!6549 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (list!6550 (c!253628 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))

(declare-fun bs!389740 () Bool)

(assert (= bs!389740 d!464392))

(declare-fun m!1839303 () Bool)

(assert (=> bs!389740 m!1839303))

(assert (=> d!463958 d!464392))

(declare-fun d!464394 () Bool)

(declare-fun e!1006378 () Bool)

(assert (=> d!464394 e!1006378))

(declare-fun res!698525 () Bool)

(assert (=> d!464394 (=> (not res!698525) (not e!1006378))))

(declare-fun lt!542647 () BalanceConc!11174)

(assert (=> d!464394 (= res!698525 (= (list!6549 lt!542647) (Cons!17030 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))) Nil!17030)))))

(assert (=> d!464394 (= lt!542647 (singleton!555 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))

(assert (=> d!464394 (= (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) lt!542647)))

(declare-fun b!1566930 () Bool)

(assert (=> b!1566930 (= e!1006378 (isBalanced!1663 (c!253628 lt!542647)))))

(assert (= (and d!464394 res!698525) b!1566930))

(declare-fun m!1839305 () Bool)

(assert (=> d!464394 m!1839305))

(declare-fun m!1839307 () Bool)

(assert (=> d!464394 m!1839307))

(declare-fun m!1839309 () Bool)

(assert (=> b!1566930 m!1839309))

(assert (=> d!463958 d!464394))

(assert (=> d!463958 d!463678))

(declare-fun d!464396 () Bool)

(assert (=> d!464396 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) (list!6550 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(declare-fun bs!389741 () Bool)

(assert (= bs!389741 d!464396))

(declare-fun m!1839311 () Bool)

(assert (=> bs!389741 m!1839311))

(assert (=> d!463958 d!464396))

(declare-fun bs!389742 () Bool)

(declare-fun d!464398 () Bool)

(assert (= bs!389742 (and d!464398 d!463946)))

(declare-fun lambda!66268 () Int)

(assert (=> bs!389742 (= (= (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (= lambda!66268 lambda!66225))))

(assert (=> d!464398 true))

(assert (=> d!464398 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7597 order!10097 lambda!66268))))

(assert (=> d!464398 (= (equivClasses!1072 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (Forall2!494 lambda!66268))))

(declare-fun bs!389743 () Bool)

(assert (= bs!389743 d!464398))

(declare-fun m!1839313 () Bool)

(assert (=> bs!389743 m!1839313))

(assert (=> b!1565904 d!464398))

(declare-fun d!464400 () Bool)

(declare-fun c!253892 () Bool)

(assert (=> d!464400 (= c!253892 ((_ is Empty!5615) (c!253628 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun e!1006379 () List!17100)

(assert (=> d!464400 (= (list!6550 (c!253628 (singletonSeq!1349 (h!22431 lt!541850)))) e!1006379)))

(declare-fun b!1566933 () Bool)

(declare-fun e!1006380 () List!17100)

(assert (=> b!1566933 (= e!1006380 (list!6552 (xs!8415 (c!253628 (singletonSeq!1349 (h!22431 lt!541850))))))))

(declare-fun b!1566934 () Bool)

(assert (=> b!1566934 (= e!1006380 (++!4431 (list!6550 (left!13804 (c!253628 (singletonSeq!1349 (h!22431 lt!541850))))) (list!6550 (right!14134 (c!253628 (singletonSeq!1349 (h!22431 lt!541850)))))))))

(declare-fun b!1566931 () Bool)

(assert (=> b!1566931 (= e!1006379 Nil!17030)))

(declare-fun b!1566932 () Bool)

(assert (=> b!1566932 (= e!1006379 e!1006380)))

(declare-fun c!253893 () Bool)

(assert (=> b!1566932 (= c!253893 ((_ is Leaf!8327) (c!253628 (singletonSeq!1349 (h!22431 lt!541850)))))))

(assert (= (and d!464400 c!253892) b!1566931))

(assert (= (and d!464400 (not c!253892)) b!1566932))

(assert (= (and b!1566932 c!253893) b!1566933))

(assert (= (and b!1566932 (not c!253893)) b!1566934))

(declare-fun m!1839315 () Bool)

(assert (=> b!1566933 m!1839315))

(declare-fun m!1839317 () Bool)

(assert (=> b!1566934 m!1839317))

(declare-fun m!1839319 () Bool)

(assert (=> b!1566934 m!1839319))

(assert (=> b!1566934 m!1839317))

(assert (=> b!1566934 m!1839319))

(declare-fun m!1839321 () Bool)

(assert (=> b!1566934 m!1839321))

(assert (=> d!463862 d!464400))

(declare-fun d!464402 () Bool)

(declare-fun lt!542648 () Int)

(assert (=> d!464402 (= lt!542648 (size!13810 (list!6554 (_2!9701 lt!542023))))))

(assert (=> d!464402 (= lt!542648 (size!13811 (c!253626 (_2!9701 lt!542023))))))

(assert (=> d!464402 (= (size!13804 (_2!9701 lt!542023)) lt!542648)))

(declare-fun bs!389744 () Bool)

(assert (= bs!389744 d!464402))

(assert (=> bs!389744 m!1837459))

(assert (=> bs!389744 m!1837459))

(declare-fun m!1839323 () Bool)

(assert (=> bs!389744 m!1839323))

(declare-fun m!1839325 () Bool)

(assert (=> bs!389744 m!1839325))

(assert (=> b!1565859 d!464402))

(declare-fun d!464404 () Bool)

(declare-fun lt!542649 () Int)

(assert (=> d!464404 (= lt!542649 (size!13810 (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))

(assert (=> d!464404 (= lt!542649 (size!13811 (c!253626 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))

(assert (=> d!464404 (= (size!13804 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))) lt!542649)))

(declare-fun bs!389745 () Bool)

(assert (= bs!389745 d!464404))

(assert (=> bs!389745 m!1837125))

(assert (=> bs!389745 m!1837461))

(assert (=> bs!389745 m!1837461))

(declare-fun m!1839327 () Bool)

(assert (=> bs!389745 m!1839327))

(declare-fun m!1839329 () Bool)

(assert (=> bs!389745 m!1839329))

(assert (=> b!1565859 d!464404))

(declare-fun d!464406 () Bool)

(declare-fun res!698526 () Bool)

(declare-fun e!1006381 () Bool)

(assert (=> d!464406 (=> (not res!698526) (not e!1006381))))

(assert (=> d!464406 (= res!698526 (= (csize!11460 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (+ (size!13807 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (size!13807 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (=> d!464406 (= (inv!22397 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1006381)))

(declare-fun b!1566935 () Bool)

(declare-fun res!698527 () Bool)

(assert (=> b!1566935 (=> (not res!698527) (not e!1006381))))

(assert (=> b!1566935 (= res!698527 (and (not (= (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) Empty!5615)) (not (= (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) Empty!5615))))))

(declare-fun b!1566936 () Bool)

(declare-fun res!698528 () Bool)

(assert (=> b!1566936 (=> (not res!698528) (not e!1006381))))

(assert (=> b!1566936 (= res!698528 (= (cheight!5826 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (+ (max!0 (height!836 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) 1)))))

(declare-fun b!1566937 () Bool)

(assert (=> b!1566937 (= e!1006381 (<= 0 (cheight!5826 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464406 res!698526) b!1566935))

(assert (= (and b!1566935 res!698527) b!1566936))

(assert (= (and b!1566936 res!698528) b!1566937))

(declare-fun m!1839331 () Bool)

(assert (=> d!464406 m!1839331))

(declare-fun m!1839333 () Bool)

(assert (=> d!464406 m!1839333))

(declare-fun m!1839335 () Bool)

(assert (=> b!1566936 m!1839335))

(declare-fun m!1839337 () Bool)

(assert (=> b!1566936 m!1839337))

(assert (=> b!1566936 m!1839335))

(assert (=> b!1566936 m!1839337))

(declare-fun m!1839339 () Bool)

(assert (=> b!1566936 m!1839339))

(assert (=> b!1565963 d!464406))

(declare-fun b!1566941 () Bool)

(declare-fun e!1006383 () Bool)

(declare-fun lt!542650 () List!17100)

(assert (=> b!1566941 (= e!1006383 (or (not (= (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) Nil!17030)) (= lt!542650 (t!141745 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun d!464408 () Bool)

(assert (=> d!464408 e!1006383))

(declare-fun res!698529 () Bool)

(assert (=> d!464408 (=> (not res!698529) (not e!1006383))))

(assert (=> d!464408 (= res!698529 (= (content!2356 lt!542650) ((_ map or) (content!2356 (t!141745 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (content!2356 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun e!1006382 () List!17100)

(assert (=> d!464408 (= lt!542650 e!1006382)))

(declare-fun c!253894 () Bool)

(assert (=> d!464408 (= c!253894 ((_ is Nil!17030) (t!141745 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464408 (= (++!4431 (t!141745 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) lt!542650)))

(declare-fun b!1566938 () Bool)

(assert (=> b!1566938 (= e!1006382 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))

(declare-fun b!1566939 () Bool)

(assert (=> b!1566939 (= e!1006382 (Cons!17030 (h!22431 (t!141745 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (++!4431 (t!141745 (t!141745 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1566940 () Bool)

(declare-fun res!698530 () Bool)

(assert (=> b!1566940 (=> (not res!698530) (not e!1006383))))

(assert (=> b!1566940 (= res!698530 (= (size!13806 lt!542650) (+ (size!13806 (t!141745 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (size!13806 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (= (and d!464408 c!253894) b!1566938))

(assert (= (and d!464408 (not c!253894)) b!1566939))

(assert (= (and d!464408 res!698529) b!1566940))

(assert (= (and b!1566940 res!698530) b!1566941))

(declare-fun m!1839341 () Bool)

(assert (=> d!464408 m!1839341))

(declare-fun m!1839343 () Bool)

(assert (=> d!464408 m!1839343))

(assert (=> d!464408 m!1837057))

(assert (=> d!464408 m!1837277))

(assert (=> b!1566939 m!1837057))

(declare-fun m!1839345 () Bool)

(assert (=> b!1566939 m!1839345))

(declare-fun m!1839347 () Bool)

(assert (=> b!1566940 m!1839347))

(declare-fun m!1839349 () Bool)

(assert (=> b!1566940 m!1839349))

(assert (=> b!1566940 m!1837057))

(assert (=> b!1566940 m!1837255))

(assert (=> b!1565767 d!464408))

(declare-fun d!464410 () Bool)

(assert (=> d!464410 (= (list!6552 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> b!1565772 d!464410))

(assert (=> bs!389670 d!463776))

(declare-fun bs!389746 () Bool)

(declare-fun d!464412 () Bool)

(assert (= bs!389746 (and d!464412 d!463734)))

(declare-fun lambda!66269 () Int)

(assert (=> bs!389746 (= lambda!66269 lambda!66209)))

(declare-fun bs!389747 () Bool)

(assert (= bs!389747 (and d!464412 d!463688)))

(assert (=> bs!389747 (= lambda!66269 lambda!66200)))

(declare-fun bs!389748 () Bool)

(assert (= bs!389748 (and d!464412 d!463866)))

(assert (=> bs!389748 (= lambda!66269 lambda!66222)))

(declare-fun bs!389749 () Bool)

(assert (= bs!389749 (and d!464412 d!463762)))

(assert (=> bs!389749 (= lambda!66269 lambda!66213)))

(declare-fun bs!389750 () Bool)

(assert (= bs!389750 (and d!464412 d!463978)))

(assert (=> bs!389750 (= lambda!66269 lambda!66226)))

(declare-fun b!1566946 () Bool)

(declare-fun e!1006388 () Bool)

(assert (=> b!1566946 (= e!1006388 true)))

(declare-fun b!1566945 () Bool)

(declare-fun e!1006387 () Bool)

(assert (=> b!1566945 (= e!1006387 e!1006388)))

(declare-fun b!1566944 () Bool)

(declare-fun e!1006386 () Bool)

(assert (=> b!1566944 (= e!1006386 e!1006387)))

(assert (=> d!464412 e!1006386))

(assert (= b!1566945 b!1566946))

(assert (= b!1566944 b!1566945))

(assert (= (and d!464412 ((_ is Cons!17031) (rules!12084 thiss!10002))) b!1566944))

(assert (=> b!1566946 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66269))))

(assert (=> b!1566946 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66269))))

(assert (=> d!464412 true))

(declare-fun lt!542651 () Bool)

(assert (=> d!464412 (= lt!542651 (forall!3952 lt!542159 lambda!66269))))

(declare-fun e!1006384 () Bool)

(assert (=> d!464412 (= lt!542651 e!1006384)))

(declare-fun res!698531 () Bool)

(assert (=> d!464412 (=> res!698531 e!1006384)))

(assert (=> d!464412 (= res!698531 (not ((_ is Cons!17030) lt!542159)))))

(assert (=> d!464412 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464412 (= (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) lt!542159) lt!542651)))

(declare-fun b!1566942 () Bool)

(declare-fun e!1006385 () Bool)

(assert (=> b!1566942 (= e!1006384 e!1006385)))

(declare-fun res!698532 () Bool)

(assert (=> b!1566942 (=> (not res!698532) (not e!1006385))))

(assert (=> b!1566942 (= res!698532 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 lt!542159)))))

(declare-fun b!1566943 () Bool)

(assert (=> b!1566943 (= e!1006385 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 lt!542159)))))

(assert (= (and d!464412 (not res!698531)) b!1566942))

(assert (= (and b!1566942 res!698532) b!1566943))

(declare-fun m!1839351 () Bool)

(assert (=> d!464412 m!1839351))

(assert (=> d!464412 m!1836809))

(declare-fun m!1839353 () Bool)

(assert (=> b!1566942 m!1839353))

(declare-fun m!1839355 () Bool)

(assert (=> b!1566943 m!1839355))

(assert (=> b!1566012 d!464412))

(declare-fun d!464414 () Bool)

(assert (=> d!464414 (= (list!6554 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (list!6556 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(declare-fun bs!389751 () Bool)

(assert (= bs!389751 d!464414))

(declare-fun m!1839357 () Bool)

(assert (=> bs!389751 m!1839357))

(assert (=> b!1566136 d!464414))

(declare-fun d!464416 () Bool)

(declare-fun res!698533 () Bool)

(declare-fun e!1006389 () Bool)

(assert (=> d!464416 (=> res!698533 e!1006389)))

(assert (=> d!464416 (= res!698533 ((_ is Nil!17031) (t!141746 (rules!12084 thiss!10002))))))

(assert (=> d!464416 (= (forall!3954 (t!141746 (rules!12084 thiss!10002)) lambda!66212) e!1006389)))

(declare-fun b!1566947 () Bool)

(declare-fun e!1006390 () Bool)

(assert (=> b!1566947 (= e!1006389 e!1006390)))

(declare-fun res!698534 () Bool)

(assert (=> b!1566947 (=> (not res!698534) (not e!1006390))))

(assert (=> b!1566947 (= res!698534 (dynLambda!7596 lambda!66212 (h!22432 (t!141746 (rules!12084 thiss!10002)))))))

(declare-fun b!1566948 () Bool)

(assert (=> b!1566948 (= e!1006390 (forall!3954 (t!141746 (t!141746 (rules!12084 thiss!10002))) lambda!66212))))

(assert (= (and d!464416 (not res!698533)) b!1566947))

(assert (= (and b!1566947 res!698534) b!1566948))

(declare-fun b_lambda!49335 () Bool)

(assert (=> (not b_lambda!49335) (not b!1566947)))

(declare-fun m!1839359 () Bool)

(assert (=> b!1566947 m!1839359))

(declare-fun m!1839361 () Bool)

(assert (=> b!1566948 m!1839361))

(assert (=> b!1565805 d!464416))

(declare-fun d!464418 () Bool)

(declare-fun lt!542652 () Bool)

(assert (=> d!464418 (= lt!542652 (isEmpty!10202 (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464418 (= lt!542652 (= (size!13807 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 0))))

(assert (=> d!464418 (= (isEmpty!10200 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) lt!542652)))

(declare-fun bs!389752 () Bool)

(assert (= bs!389752 d!464418))

(assert (=> bs!389752 m!1837293))

(assert (=> bs!389752 m!1837293))

(declare-fun m!1839363 () Bool)

(assert (=> bs!389752 m!1839363))

(assert (=> bs!389752 m!1838081))

(assert (=> b!1566123 d!464418))

(declare-fun d!464420 () Bool)

(assert (=> d!464420 (= (list!6554 lt!542026) (list!6556 (c!253626 lt!542026)))))

(declare-fun bs!389753 () Bool)

(assert (= bs!389753 d!464420))

(declare-fun m!1839365 () Bool)

(assert (=> bs!389753 m!1839365))

(assert (=> d!463880 d!464420))

(declare-fun d!464422 () Bool)

(declare-fun c!253897 () Bool)

(assert (=> d!464422 (= c!253897 ((_ is Cons!17030) (list!6549 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(declare-fun e!1006393 () List!17099)

(assert (=> d!464422 (= (printList!772 Lexer!2610 (list!6549 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))) e!1006393)))

(declare-fun b!1566953 () Bool)

(assert (=> b!1566953 (= e!1006393 (++!4436 (list!6554 (charsOf!1659 (h!22431 (list!6549 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))) (printList!772 Lexer!2610 (t!141745 (list!6549 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun b!1566954 () Bool)

(assert (=> b!1566954 (= e!1006393 Nil!17029)))

(assert (= (and d!464422 c!253897) b!1566953))

(assert (= (and d!464422 (not c!253897)) b!1566954))

(declare-fun m!1839367 () Bool)

(assert (=> b!1566953 m!1839367))

(assert (=> b!1566953 m!1839367))

(declare-fun m!1839369 () Bool)

(assert (=> b!1566953 m!1839369))

(declare-fun m!1839371 () Bool)

(assert (=> b!1566953 m!1839371))

(assert (=> b!1566953 m!1839369))

(assert (=> b!1566953 m!1839371))

(declare-fun m!1839373 () Bool)

(assert (=> b!1566953 m!1839373))

(assert (=> d!463880 d!464422))

(assert (=> d!463880 d!463920))

(declare-fun d!464424 () Bool)

(declare-fun lt!542668 () BalanceConc!11172)

(declare-fun printListTailRec!294 (LexerInterface!2612 List!17100 List!17099) List!17099)

(assert (=> d!464424 (= (list!6554 lt!542668) (printListTailRec!294 Lexer!2610 (dropList!497 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))) 0) (list!6554 (BalanceConc!11173 Empty!5614))))))

(declare-fun e!1006398 () BalanceConc!11172)

(assert (=> d!464424 (= lt!542668 e!1006398)))

(declare-fun c!253900 () Bool)

(assert (=> d!464424 (= c!253900 (>= 0 (size!13812 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(declare-fun e!1006399 () Bool)

(assert (=> d!464424 e!1006399))

(declare-fun res!698537 () Bool)

(assert (=> d!464424 (=> (not res!698537) (not e!1006399))))

(assert (=> d!464424 (= res!698537 (>= 0 0))))

(assert (=> d!464424 (= (printTailRec!708 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))) 0 (BalanceConc!11173 Empty!5614)) lt!542668)))

(declare-fun b!1566961 () Bool)

(assert (=> b!1566961 (= e!1006399 (<= 0 (size!13812 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(declare-fun b!1566962 () Bool)

(assert (=> b!1566962 (= e!1006398 (BalanceConc!11173 Empty!5614))))

(declare-fun b!1566963 () Bool)

(assert (=> b!1566963 (= e!1006398 (printTailRec!708 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))) (+ 0 1) (++!4433 (BalanceConc!11173 Empty!5614) (charsOf!1659 (apply!4131 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))) 0)))))))

(declare-fun lt!542667 () List!17100)

(assert (=> b!1566963 (= lt!542667 (list!6549 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))

(declare-fun lt!542670 () Unit!26198)

(assert (=> b!1566963 (= lt!542670 (lemmaDropApply!501 lt!542667 0))))

(assert (=> b!1566963 (= (head!3126 (drop!799 lt!542667 0)) (apply!4134 lt!542667 0))))

(declare-fun lt!542673 () Unit!26198)

(assert (=> b!1566963 (= lt!542673 lt!542670)))

(declare-fun lt!542672 () List!17100)

(assert (=> b!1566963 (= lt!542672 (list!6549 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))

(declare-fun lt!542669 () Unit!26198)

(assert (=> b!1566963 (= lt!542669 (lemmaDropTail!481 lt!542672 0))))

(assert (=> b!1566963 (= (tail!2221 (drop!799 lt!542672 0)) (drop!799 lt!542672 (+ 0 1)))))

(declare-fun lt!542671 () Unit!26198)

(assert (=> b!1566963 (= lt!542671 lt!542669)))

(assert (= (and d!464424 res!698537) b!1566961))

(assert (= (and d!464424 c!253900) b!1566962))

(assert (= (and d!464424 (not c!253900)) b!1566963))

(declare-fun m!1839375 () Bool)

(assert (=> d!464424 m!1839375))

(assert (=> d!464424 m!1839073))

(declare-fun m!1839377 () Bool)

(assert (=> d!464424 m!1839377))

(declare-fun m!1839379 () Bool)

(assert (=> d!464424 m!1839379))

(assert (=> d!464424 m!1837129))

(assert (=> d!464424 m!1839375))

(assert (=> d!464424 m!1837129))

(declare-fun m!1839381 () Bool)

(assert (=> d!464424 m!1839381))

(assert (=> d!464424 m!1839073))

(assert (=> b!1566961 m!1837129))

(assert (=> b!1566961 m!1839381))

(assert (=> b!1566963 m!1837129))

(declare-fun m!1839383 () Bool)

(assert (=> b!1566963 m!1839383))

(assert (=> b!1566963 m!1837129))

(assert (=> b!1566963 m!1837131))

(declare-fun m!1839385 () Bool)

(assert (=> b!1566963 m!1839385))

(declare-fun m!1839387 () Bool)

(assert (=> b!1566963 m!1839387))

(declare-fun m!1839389 () Bool)

(assert (=> b!1566963 m!1839389))

(declare-fun m!1839391 () Bool)

(assert (=> b!1566963 m!1839391))

(assert (=> b!1566963 m!1839383))

(declare-fun m!1839393 () Bool)

(assert (=> b!1566963 m!1839393))

(declare-fun m!1839395 () Bool)

(assert (=> b!1566963 m!1839395))

(declare-fun m!1839397 () Bool)

(assert (=> b!1566963 m!1839397))

(declare-fun m!1839399 () Bool)

(assert (=> b!1566963 m!1839399))

(assert (=> b!1566963 m!1839387))

(assert (=> b!1566963 m!1839393))

(declare-fun m!1839401 () Bool)

(assert (=> b!1566963 m!1839401))

(assert (=> b!1566963 m!1837129))

(assert (=> b!1566963 m!1839401))

(declare-fun m!1839403 () Bool)

(assert (=> b!1566963 m!1839403))

(assert (=> b!1566963 m!1839395))

(declare-fun m!1839405 () Bool)

(assert (=> b!1566963 m!1839405))

(assert (=> d!463880 d!464424))

(declare-fun b!1566965 () Bool)

(declare-fun res!698538 () Bool)

(declare-fun e!1006400 () Bool)

(assert (=> b!1566965 (=> res!698538 e!1006400)))

(assert (=> b!1566965 (= res!698538 (not ((_ is IntegerValue!9221) (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))))

(declare-fun e!1006402 () Bool)

(assert (=> b!1566965 (= e!1006402 e!1006400)))

(declare-fun b!1566966 () Bool)

(assert (=> b!1566966 (= e!1006402 (inv!17 (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1566967 () Bool)

(declare-fun e!1006401 () Bool)

(assert (=> b!1566967 (= e!1006401 (inv!16 (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1566968 () Bool)

(assert (=> b!1566968 (= e!1006401 e!1006402)))

(declare-fun c!253902 () Bool)

(assert (=> b!1566968 (= c!253902 ((_ is IntegerValue!9220) (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun d!464426 () Bool)

(declare-fun c!253901 () Bool)

(assert (=> d!464426 (= c!253901 ((_ is IntegerValue!9219) (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (=> d!464426 (= (inv!21 (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))) e!1006401)))

(declare-fun b!1566964 () Bool)

(assert (=> b!1566964 (= e!1006400 (inv!15 (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464426 c!253901) b!1566967))

(assert (= (and d!464426 (not c!253901)) b!1566968))

(assert (= (and b!1566968 c!253902) b!1566966))

(assert (= (and b!1566968 (not c!253902)) b!1566965))

(assert (= (and b!1566965 (not res!698538)) b!1566964))

(declare-fun m!1839407 () Bool)

(assert (=> b!1566966 m!1839407))

(declare-fun m!1839409 () Bool)

(assert (=> b!1566967 m!1839409))

(declare-fun m!1839411 () Bool)

(assert (=> b!1566964 m!1839411))

(assert (=> b!1566191 d!464426))

(declare-fun d!464428 () Bool)

(declare-fun lt!542674 () Int)

(assert (=> d!464428 (>= lt!542674 0)))

(declare-fun e!1006403 () Int)

(assert (=> d!464428 (= lt!542674 e!1006403)))

(declare-fun c!253903 () Bool)

(assert (=> d!464428 (= c!253903 ((_ is Nil!17030) (list!6549 (_1!9701 lt!541960))))))

(assert (=> d!464428 (= (size!13806 (list!6549 (_1!9701 lt!541960))) lt!542674)))

(declare-fun b!1566969 () Bool)

(assert (=> b!1566969 (= e!1006403 0)))

(declare-fun b!1566970 () Bool)

(assert (=> b!1566970 (= e!1006403 (+ 1 (size!13806 (t!141745 (list!6549 (_1!9701 lt!541960))))))))

(assert (= (and d!464428 c!253903) b!1566969))

(assert (= (and d!464428 (not c!253903)) b!1566970))

(declare-fun m!1839413 () Bool)

(assert (=> b!1566970 m!1839413))

(assert (=> d!463848 d!464428))

(declare-fun d!464430 () Bool)

(assert (=> d!464430 (= (list!6549 (_1!9701 lt!541960)) (list!6550 (c!253628 (_1!9701 lt!541960))))))

(declare-fun bs!389754 () Bool)

(assert (= bs!389754 d!464430))

(declare-fun m!1839415 () Bool)

(assert (=> bs!389754 m!1839415))

(assert (=> d!463848 d!464430))

(declare-fun d!464432 () Bool)

(declare-fun lt!542675 () Int)

(assert (=> d!464432 (= lt!542675 (size!13806 (list!6550 (c!253628 (_1!9701 lt!541960)))))))

(assert (=> d!464432 (= lt!542675 (ite ((_ is Empty!5615) (c!253628 (_1!9701 lt!541960))) 0 (ite ((_ is Leaf!8327) (c!253628 (_1!9701 lt!541960))) (csize!11461 (c!253628 (_1!9701 lt!541960))) (csize!11460 (c!253628 (_1!9701 lt!541960))))))))

(assert (=> d!464432 (= (size!13807 (c!253628 (_1!9701 lt!541960))) lt!542675)))

(declare-fun bs!389755 () Bool)

(assert (= bs!389755 d!464432))

(assert (=> bs!389755 m!1839415))

(assert (=> bs!389755 m!1839415))

(declare-fun m!1839417 () Bool)

(assert (=> bs!389755 m!1839417))

(assert (=> d!463848 d!464432))

(declare-fun d!464434 () Bool)

(declare-fun lt!542676 () BalanceConc!11172)

(assert (=> d!464434 (= (list!6554 lt!542676) (printList!772 Lexer!2610 (list!6549 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(assert (=> d!464434 (= lt!542676 (printTailRec!708 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0 (BalanceConc!11173 Empty!5614)))))

(assert (=> d!464434 (= (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) lt!542676)))

(declare-fun bs!389756 () Bool)

(assert (= bs!389756 d!464434))

(declare-fun m!1839419 () Bool)

(assert (=> bs!389756 m!1839419))

(assert (=> bs!389756 m!1837685))

(assert (=> bs!389756 m!1837687))

(assert (=> bs!389756 m!1837687))

(declare-fun m!1839421 () Bool)

(assert (=> bs!389756 m!1839421))

(assert (=> bs!389756 m!1837685))

(declare-fun m!1839423 () Bool)

(assert (=> bs!389756 m!1839423))

(assert (=> d!463960 d!464434))

(declare-fun d!464436 () Bool)

(declare-fun lt!542677 () Int)

(assert (=> d!464436 (= lt!542677 (size!13806 (list!6549 (_1!9701 lt!542057))))))

(assert (=> d!464436 (= lt!542677 (size!13807 (c!253628 (_1!9701 lt!542057))))))

(assert (=> d!464436 (= (size!13812 (_1!9701 lt!542057)) lt!542677)))

(declare-fun bs!389757 () Bool)

(assert (= bs!389757 d!464436))

(assert (=> bs!389757 m!1838959))

(assert (=> bs!389757 m!1838959))

(declare-fun m!1839425 () Bool)

(assert (=> bs!389757 m!1839425))

(declare-fun m!1839427 () Bool)

(assert (=> bs!389757 m!1839427))

(assert (=> d!463960 d!464436))

(declare-fun d!464438 () Bool)

(assert (=> d!464438 (= (list!6549 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (list!6550 (c!253628 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(declare-fun bs!389758 () Bool)

(assert (= bs!389758 d!464438))

(declare-fun m!1839429 () Bool)

(assert (=> bs!389758 m!1839429))

(assert (=> d!463960 d!464438))

(declare-fun d!464440 () Bool)

(assert (=> d!464440 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (list!6550 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(declare-fun bs!389759 () Bool)

(assert (= bs!389759 d!464440))

(declare-fun m!1839431 () Bool)

(assert (=> bs!389759 m!1839431))

(assert (=> d!463960 d!464440))

(declare-fun d!464442 () Bool)

(declare-fun e!1006404 () Bool)

(assert (=> d!464442 e!1006404))

(declare-fun res!698539 () Bool)

(assert (=> d!464442 (=> (not res!698539) (not e!1006404))))

(declare-fun lt!542678 () BalanceConc!11174)

(assert (=> d!464442 (= res!698539 (= (list!6549 lt!542678) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) Nil!17030)))))

(assert (=> d!464442 (= lt!542678 (singleton!555 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))

(assert (=> d!464442 (= (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) lt!542678)))

(declare-fun b!1566971 () Bool)

(assert (=> b!1566971 (= e!1006404 (isBalanced!1663 (c!253628 lt!542678)))))

(assert (= (and d!464442 res!698539) b!1566971))

(declare-fun m!1839433 () Bool)

(assert (=> d!464442 m!1839433))

(declare-fun m!1839435 () Bool)

(assert (=> d!464442 m!1839435))

(declare-fun m!1839437 () Bool)

(assert (=> b!1566971 m!1839437))

(assert (=> d!463960 d!464442))

(assert (=> d!463960 d!463678))

(declare-fun b!1566972 () Bool)

(declare-fun e!1006407 () Bool)

(declare-fun lt!542679 () tuple2!16598)

(assert (=> b!1566972 (= e!1006407 (not (isEmpty!10201 (_1!9701 lt!542679))))))

(declare-fun b!1566973 () Bool)

(declare-fun e!1006405 () Bool)

(assert (=> b!1566973 (= e!1006405 (= (list!6554 (_2!9701 lt!542679)) (_2!9702 (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(declare-fun b!1566974 () Bool)

(declare-fun res!698542 () Bool)

(assert (=> b!1566974 (=> (not res!698542) (not e!1006405))))

(assert (=> b!1566974 (= res!698542 (= (list!6549 (_1!9701 lt!542679)) (_1!9702 (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(declare-fun b!1566976 () Bool)

(declare-fun e!1006406 () Bool)

(assert (=> b!1566976 (= e!1006406 (= (_2!9701 lt!542679) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(declare-fun d!464444 () Bool)

(assert (=> d!464444 e!1006405))

(declare-fun res!698540 () Bool)

(assert (=> d!464444 (=> (not res!698540) (not e!1006405))))

(assert (=> d!464444 (= res!698540 e!1006406)))

(declare-fun c!253904 () Bool)

(assert (=> d!464444 (= c!253904 (> (size!13812 (_1!9701 lt!542679)) 0))))

(assert (=> d!464444 (= lt!542679 (lexTailRecV2!480 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (BalanceConc!11173 Empty!5614) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (BalanceConc!11175 Empty!5615)))))

(assert (=> d!464444 (= (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) lt!542679)))

(declare-fun b!1566975 () Bool)

(assert (=> b!1566975 (= e!1006406 e!1006407)))

(declare-fun res!698541 () Bool)

(assert (=> b!1566975 (= res!698541 (< (size!13804 (_2!9701 lt!542679)) (size!13804 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(assert (=> b!1566975 (=> (not res!698541) (not e!1006407))))

(assert (= (and d!464444 c!253904) b!1566975))

(assert (= (and d!464444 (not c!253904)) b!1566976))

(assert (= (and b!1566975 res!698541) b!1566972))

(assert (= (and d!464444 res!698540) b!1566974))

(assert (= (and b!1566974 res!698542) b!1566973))

(declare-fun m!1839439 () Bool)

(assert (=> b!1566975 m!1839439))

(assert (=> b!1566975 m!1837681))

(declare-fun m!1839441 () Bool)

(assert (=> b!1566975 m!1839441))

(declare-fun m!1839443 () Bool)

(assert (=> b!1566973 m!1839443))

(assert (=> b!1566973 m!1837681))

(declare-fun m!1839445 () Bool)

(assert (=> b!1566973 m!1839445))

(assert (=> b!1566973 m!1839445))

(declare-fun m!1839447 () Bool)

(assert (=> b!1566973 m!1839447))

(declare-fun m!1839449 () Bool)

(assert (=> b!1566972 m!1839449))

(declare-fun m!1839451 () Bool)

(assert (=> d!464444 m!1839451))

(assert (=> d!464444 m!1837681))

(assert (=> d!464444 m!1837681))

(declare-fun m!1839453 () Bool)

(assert (=> d!464444 m!1839453))

(declare-fun m!1839455 () Bool)

(assert (=> b!1566974 m!1839455))

(assert (=> b!1566974 m!1837681))

(assert (=> b!1566974 m!1839445))

(assert (=> b!1566974 m!1839445))

(assert (=> b!1566974 m!1839447))

(assert (=> d!463960 d!464444))

(declare-fun d!464446 () Bool)

(assert (=> d!464446 (= (isEmpty!10203 (list!6554 (_2!9701 lt!541955))) ((_ is Nil!17029) (list!6554 (_2!9701 lt!541955))))))

(assert (=> d!464056 d!464446))

(declare-fun d!464448 () Bool)

(assert (=> d!464448 (= (list!6554 (_2!9701 lt!541955)) (list!6556 (c!253626 (_2!9701 lt!541955))))))

(declare-fun bs!389760 () Bool)

(assert (= bs!389760 d!464448))

(declare-fun m!1839457 () Bool)

(assert (=> bs!389760 m!1839457))

(assert (=> d!464056 d!464448))

(declare-fun d!464450 () Bool)

(declare-fun lt!542680 () Bool)

(assert (=> d!464450 (= lt!542680 (isEmpty!10203 (list!6556 (c!253626 (_2!9701 lt!541955)))))))

(assert (=> d!464450 (= lt!542680 (= (size!13811 (c!253626 (_2!9701 lt!541955))) 0))))

(assert (=> d!464450 (= (isEmpty!10204 (c!253626 (_2!9701 lt!541955))) lt!542680)))

(declare-fun bs!389761 () Bool)

(assert (= bs!389761 d!464450))

(assert (=> bs!389761 m!1839457))

(assert (=> bs!389761 m!1839457))

(declare-fun m!1839459 () Bool)

(assert (=> bs!389761 m!1839459))

(declare-fun m!1839461 () Bool)

(assert (=> bs!389761 m!1839461))

(assert (=> d!464056 d!464450))

(declare-fun d!464452 () Bool)

(declare-fun res!698545 () Bool)

(declare-fun e!1006409 () Bool)

(assert (=> d!464452 (=> res!698545 e!1006409)))

(assert (=> d!464452 (= res!698545 (not ((_ is Node!5615) (c!253628 lt!542000))))))

(assert (=> d!464452 (= (isBalanced!1663 (c!253628 lt!542000)) e!1006409)))

(declare-fun b!1566977 () Bool)

(declare-fun res!698548 () Bool)

(declare-fun e!1006408 () Bool)

(assert (=> b!1566977 (=> (not res!698548) (not e!1006408))))

(assert (=> b!1566977 (= res!698548 (<= (- (height!836 (left!13804 (c!253628 lt!542000))) (height!836 (right!14134 (c!253628 lt!542000)))) 1))))

(declare-fun b!1566978 () Bool)

(declare-fun res!698543 () Bool)

(assert (=> b!1566978 (=> (not res!698543) (not e!1006408))))

(assert (=> b!1566978 (= res!698543 (isBalanced!1663 (left!13804 (c!253628 lt!542000))))))

(declare-fun b!1566979 () Bool)

(declare-fun res!698547 () Bool)

(assert (=> b!1566979 (=> (not res!698547) (not e!1006408))))

(assert (=> b!1566979 (= res!698547 (not (isEmpty!10200 (left!13804 (c!253628 lt!542000)))))))

(declare-fun b!1566980 () Bool)

(assert (=> b!1566980 (= e!1006408 (not (isEmpty!10200 (right!14134 (c!253628 lt!542000)))))))

(declare-fun b!1566981 () Bool)

(assert (=> b!1566981 (= e!1006409 e!1006408)))

(declare-fun res!698544 () Bool)

(assert (=> b!1566981 (=> (not res!698544) (not e!1006408))))

(assert (=> b!1566981 (= res!698544 (<= (- 1) (- (height!836 (left!13804 (c!253628 lt!542000))) (height!836 (right!14134 (c!253628 lt!542000))))))))

(declare-fun b!1566982 () Bool)

(declare-fun res!698546 () Bool)

(assert (=> b!1566982 (=> (not res!698546) (not e!1006408))))

(assert (=> b!1566982 (= res!698546 (isBalanced!1663 (right!14134 (c!253628 lt!542000))))))

(assert (= (and d!464452 (not res!698545)) b!1566981))

(assert (= (and b!1566981 res!698544) b!1566977))

(assert (= (and b!1566977 res!698548) b!1566978))

(assert (= (and b!1566978 res!698543) b!1566982))

(assert (= (and b!1566982 res!698546) b!1566979))

(assert (= (and b!1566979 res!698547) b!1566980))

(declare-fun m!1839463 () Bool)

(assert (=> b!1566982 m!1839463))

(declare-fun m!1839465 () Bool)

(assert (=> b!1566979 m!1839465))

(declare-fun m!1839467 () Bool)

(assert (=> b!1566981 m!1839467))

(declare-fun m!1839469 () Bool)

(assert (=> b!1566981 m!1839469))

(assert (=> b!1566977 m!1839467))

(assert (=> b!1566977 m!1839469))

(declare-fun m!1839471 () Bool)

(assert (=> b!1566980 m!1839471))

(declare-fun m!1839473 () Bool)

(assert (=> b!1566978 m!1839473))

(assert (=> b!1565811 d!464452))

(assert (=> b!1566016 d!463678))

(declare-fun bs!389762 () Bool)

(declare-fun d!464454 () Bool)

(assert (= bs!389762 (and d!464454 d!464058)))

(declare-fun lambda!66270 () Int)

(assert (=> bs!389762 (= (and (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (= (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))))) (= lambda!66270 lambda!66236))))

(assert (=> d!464454 true))

(assert (=> d!464454 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (dynLambda!7599 order!10099 lambda!66270))))

(assert (=> d!464454 true))

(assert (=> d!464454 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (dynLambda!7599 order!10099 lambda!66270))))

(assert (=> d!464454 (= (semiInverseModEq!1131 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (Forall!623 lambda!66270))))

(declare-fun bs!389763 () Bool)

(assert (= bs!389763 d!464454))

(declare-fun m!1839475 () Bool)

(assert (=> bs!389763 m!1839475))

(assert (=> d!464072 d!464454))

(declare-fun d!464456 () Bool)

(assert (=> d!464456 (= (inv!22401 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (<= (size!13806 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) 2147483647))))

(declare-fun bs!389764 () Bool)

(assert (= bs!389764 d!464456))

(declare-fun m!1839477 () Bool)

(assert (=> bs!389764 m!1839477))

(assert (=> b!1566171 d!464456))

(declare-fun d!464458 () Bool)

(declare-fun lt!542681 () Int)

(assert (=> d!464458 (>= lt!542681 0)))

(declare-fun e!1006410 () Int)

(assert (=> d!464458 (= lt!542681 e!1006410)))

(declare-fun c!253905 () Bool)

(assert (=> d!464458 (= c!253905 ((_ is Nil!17030) (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!464458 (= (size!13806 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) lt!542681)))

(declare-fun b!1566983 () Bool)

(assert (=> b!1566983 (= e!1006410 0)))

(declare-fun b!1566984 () Bool)

(assert (=> b!1566984 (= e!1006410 (+ 1 (size!13806 (t!141745 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (= (and d!464458 c!253905) b!1566983))

(assert (= (and d!464458 (not c!253905)) b!1566984))

(declare-fun m!1839479 () Bool)

(assert (=> b!1566984 m!1839479))

(assert (=> d!463806 d!464458))

(assert (=> d!463806 d!463818))

(declare-fun d!464460 () Bool)

(declare-fun lt!542682 () Int)

(assert (=> d!464460 (>= lt!542682 0)))

(declare-fun e!1006411 () Int)

(assert (=> d!464460 (= lt!542682 e!1006411)))

(declare-fun c!253906 () Bool)

(assert (=> d!464460 (= c!253906 ((_ is Nil!17030) (list!6552 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464460 (= (size!13806 (list!6552 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) lt!542682)))

(declare-fun b!1566985 () Bool)

(assert (=> b!1566985 (= e!1006411 0)))

(declare-fun b!1566986 () Bool)

(assert (=> b!1566986 (= e!1006411 (+ 1 (size!13806 (t!141745 (list!6552 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464460 c!253906) b!1566985))

(assert (= (and d!464460 (not c!253906)) b!1566986))

(declare-fun m!1839481 () Bool)

(assert (=> b!1566986 m!1839481))

(assert (=> d!463886 d!464460))

(declare-fun d!464462 () Bool)

(assert (=> d!464462 (= (list!6552 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!463886 d!464462))

(declare-fun d!464464 () Bool)

(declare-fun lt!542685 () Bool)

(assert (=> d!464464 (= lt!542685 (isEmpty!10202 (list!6549 (_1!9701 lt!542008))))))

(assert (=> d!464464 (= lt!542685 (isEmpty!10200 (c!253628 (_1!9701 lt!542008))))))

(assert (=> d!464464 (= (isEmpty!10201 (_1!9701 lt!542008)) lt!542685)))

(declare-fun bs!389765 () Bool)

(assert (= bs!389765 d!464464))

(assert (=> bs!389765 m!1837411))

(assert (=> bs!389765 m!1837411))

(declare-fun m!1839483 () Bool)

(assert (=> bs!389765 m!1839483))

(declare-fun m!1839485 () Bool)

(assert (=> bs!389765 m!1839485))

(assert (=> b!1565837 d!464464))

(declare-fun d!464466 () Bool)

(declare-fun lt!542686 () Bool)

(assert (=> d!464466 (= lt!542686 (isEmpty!10203 (list!6554 (_2!9701 lt!542055))))))

(assert (=> d!464466 (= lt!542686 (isEmpty!10204 (c!253626 (_2!9701 lt!542055))))))

(assert (=> d!464466 (= (isEmpty!10199 (_2!9701 lt!542055)) lt!542686)))

(declare-fun bs!389766 () Bool)

(assert (= bs!389766 d!464466))

(declare-fun m!1839487 () Bool)

(assert (=> bs!389766 m!1839487))

(assert (=> bs!389766 m!1839487))

(declare-fun m!1839489 () Bool)

(assert (=> bs!389766 m!1839489))

(declare-fun m!1839491 () Bool)

(assert (=> bs!389766 m!1839491))

(assert (=> b!1565948 d!464466))

(declare-fun b!1566988 () Bool)

(declare-fun res!698549 () Bool)

(declare-fun e!1006412 () Bool)

(assert (=> b!1566988 (=> res!698549 e!1006412)))

(assert (=> b!1566988 (= res!698549 (not ((_ is IntegerValue!9221) (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))))

(declare-fun e!1006414 () Bool)

(assert (=> b!1566988 (= e!1006414 e!1006412)))

(declare-fun b!1566989 () Bool)

(assert (=> b!1566989 (= e!1006414 (inv!17 (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1566990 () Bool)

(declare-fun e!1006413 () Bool)

(assert (=> b!1566990 (= e!1006413 (inv!16 (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1566991 () Bool)

(assert (=> b!1566991 (= e!1006413 e!1006414)))

(declare-fun c!253908 () Bool)

(assert (=> b!1566991 (= c!253908 ((_ is IntegerValue!9220) (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun d!464468 () Bool)

(declare-fun c!253907 () Bool)

(assert (=> d!464468 (= c!253907 ((_ is IntegerValue!9219) (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (=> d!464468 (= (inv!21 (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))) e!1006413)))

(declare-fun b!1566987 () Bool)

(assert (=> b!1566987 (= e!1006412 (inv!15 (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464468 c!253907) b!1566990))

(assert (= (and d!464468 (not c!253907)) b!1566991))

(assert (= (and b!1566991 c!253908) b!1566989))

(assert (= (and b!1566991 (not c!253908)) b!1566988))

(assert (= (and b!1566988 (not res!698549)) b!1566987))

(declare-fun m!1839493 () Bool)

(assert (=> b!1566989 m!1839493))

(declare-fun m!1839495 () Bool)

(assert (=> b!1566990 m!1839495))

(declare-fun m!1839497 () Bool)

(assert (=> b!1566987 m!1839497))

(assert (=> b!1566154 d!464468))

(declare-fun d!464470 () Bool)

(declare-fun lt!542687 () Int)

(assert (=> d!464470 (>= lt!542687 0)))

(declare-fun e!1006415 () Int)

(assert (=> d!464470 (= lt!542687 e!1006415)))

(declare-fun c!253909 () Bool)

(assert (=> d!464470 (= c!253909 ((_ is Nil!17030) (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!464470 (= (size!13806 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) lt!542687)))

(declare-fun b!1566992 () Bool)

(assert (=> b!1566992 (= e!1006415 0)))

(declare-fun b!1566993 () Bool)

(assert (=> b!1566993 (= e!1006415 (+ 1 (size!13806 (t!141745 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (= (and d!464470 c!253909) b!1566992))

(assert (= (and d!464470 (not c!253909)) b!1566993))

(assert (=> b!1566993 m!1839349))

(assert (=> d!463804 d!464470))

(assert (=> d!463804 d!463816))

(declare-fun d!464472 () Bool)

(declare-fun res!698550 () Bool)

(declare-fun e!1006416 () Bool)

(assert (=> d!464472 (=> res!698550 e!1006416)))

(assert (=> d!464472 (= res!698550 ((_ is Nil!17030) (list!6549 (tokens!2198 thiss!10002))))))

(assert (=> d!464472 (= (forall!3952 (list!6549 (tokens!2198 thiss!10002)) lambda!66226) e!1006416)))

(declare-fun b!1566994 () Bool)

(declare-fun e!1006417 () Bool)

(assert (=> b!1566994 (= e!1006416 e!1006417)))

(declare-fun res!698551 () Bool)

(assert (=> b!1566994 (=> (not res!698551) (not e!1006417))))

(assert (=> b!1566994 (= res!698551 (dynLambda!7593 lambda!66226 (h!22431 (list!6549 (tokens!2198 thiss!10002)))))))

(declare-fun b!1566995 () Bool)

(assert (=> b!1566995 (= e!1006417 (forall!3952 (t!141745 (list!6549 (tokens!2198 thiss!10002))) lambda!66226))))

(assert (= (and d!464472 (not res!698550)) b!1566994))

(assert (= (and b!1566994 res!698551) b!1566995))

(declare-fun b_lambda!49337 () Bool)

(assert (=> (not b_lambda!49337) (not b!1566994)))

(declare-fun m!1839499 () Bool)

(assert (=> b!1566994 m!1839499))

(declare-fun m!1839501 () Bool)

(assert (=> b!1566995 m!1839501))

(assert (=> d!463978 d!464472))

(assert (=> d!463978 d!463678))

(declare-fun d!464474 () Bool)

(declare-fun res!698552 () Bool)

(declare-fun e!1006418 () Bool)

(assert (=> d!464474 (=> (not res!698552) (not e!1006418))))

(assert (=> d!464474 (= res!698552 (= (csize!11460 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (+ (size!13807 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (size!13807 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (=> d!464474 (= (inv!22397 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1006418)))

(declare-fun b!1566996 () Bool)

(declare-fun res!698553 () Bool)

(assert (=> b!1566996 (=> (not res!698553) (not e!1006418))))

(assert (=> b!1566996 (= res!698553 (and (not (= (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) Empty!5615)) (not (= (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) Empty!5615))))))

(declare-fun b!1566997 () Bool)

(declare-fun res!698554 () Bool)

(assert (=> b!1566997 (=> (not res!698554) (not e!1006418))))

(assert (=> b!1566997 (= res!698554 (= (cheight!5826 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (+ (max!0 (height!836 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) 1)))))

(declare-fun b!1566998 () Bool)

(assert (=> b!1566998 (= e!1006418 (<= 0 (cheight!5826 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464474 res!698552) b!1566996))

(assert (= (and b!1566996 res!698553) b!1566997))

(assert (= (and b!1566997 res!698554) b!1566998))

(declare-fun m!1839503 () Bool)

(assert (=> d!464474 m!1839503))

(declare-fun m!1839505 () Bool)

(assert (=> d!464474 m!1839505))

(declare-fun m!1839507 () Bool)

(assert (=> b!1566997 m!1839507))

(declare-fun m!1839509 () Bool)

(assert (=> b!1566997 m!1839509))

(assert (=> b!1566997 m!1839507))

(assert (=> b!1566997 m!1839509))

(declare-fun m!1839511 () Bool)

(assert (=> b!1566997 m!1839511))

(assert (=> b!1565960 d!464474))

(declare-fun d!464476 () Bool)

(declare-fun lt!542688 () Int)

(assert (=> d!464476 (= lt!542688 (size!13810 (list!6554 (_2!9701 lt!542008))))))

(assert (=> d!464476 (= lt!542688 (size!13811 (c!253626 (_2!9701 lt!542008))))))

(assert (=> d!464476 (= (size!13804 (_2!9701 lt!542008)) lt!542688)))

(declare-fun bs!389767 () Bool)

(assert (= bs!389767 d!464476))

(assert (=> bs!389767 m!1837399))

(assert (=> bs!389767 m!1837399))

(declare-fun m!1839513 () Bool)

(assert (=> bs!389767 m!1839513))

(declare-fun m!1839515 () Bool)

(assert (=> bs!389767 m!1839515))

(assert (=> b!1565840 d!464476))

(declare-fun d!464478 () Bool)

(declare-fun lt!542689 () Int)

(assert (=> d!464478 (= lt!542689 (size!13810 (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))

(assert (=> d!464478 (= lt!542689 (size!13811 (c!253626 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))

(assert (=> d!464478 (= (size!13804 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))) lt!542689)))

(declare-fun bs!389768 () Bool)

(assert (= bs!389768 d!464478))

(assert (=> bs!389768 m!1837163))

(assert (=> bs!389768 m!1837401))

(assert (=> bs!389768 m!1837401))

(declare-fun m!1839517 () Bool)

(assert (=> bs!389768 m!1839517))

(declare-fun m!1839519 () Bool)

(assert (=> bs!389768 m!1839519))

(assert (=> b!1565840 d!464478))

(declare-fun d!464480 () Bool)

(declare-fun c!253910 () Bool)

(assert (=> d!464480 (= c!253910 ((_ is Empty!5615) (c!253628 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(declare-fun e!1006419 () List!17100)

(assert (=> d!464480 (= (list!6550 (c!253628 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))) e!1006419)))

(declare-fun b!1567001 () Bool)

(declare-fun e!1006420 () List!17100)

(assert (=> b!1567001 (= e!1006420 (list!6552 (xs!8415 (c!253628 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))

(declare-fun b!1567002 () Bool)

(assert (=> b!1567002 (= e!1006420 (++!4431 (list!6550 (left!13804 (c!253628 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))) (list!6550 (right!14134 (c!253628 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun b!1566999 () Bool)

(assert (=> b!1566999 (= e!1006419 Nil!17030)))

(declare-fun b!1567000 () Bool)

(assert (=> b!1567000 (= e!1006419 e!1006420)))

(declare-fun c!253911 () Bool)

(assert (=> b!1567000 (= c!253911 ((_ is Leaf!8327) (c!253628 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(assert (= (and d!464480 c!253910) b!1566999))

(assert (= (and d!464480 (not c!253910)) b!1567000))

(assert (= (and b!1567000 c!253911) b!1567001))

(assert (= (and b!1567000 (not c!253911)) b!1567002))

(declare-fun m!1839521 () Bool)

(assert (=> b!1567001 m!1839521))

(declare-fun m!1839523 () Bool)

(assert (=> b!1567002 m!1839523))

(declare-fun m!1839525 () Bool)

(assert (=> b!1567002 m!1839525))

(assert (=> b!1567002 m!1839523))

(assert (=> b!1567002 m!1839525))

(declare-fun m!1839527 () Bool)

(assert (=> b!1567002 m!1839527))

(assert (=> d!463920 d!464480))

(declare-fun d!464482 () Bool)

(assert (=> d!464482 (= (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (isBalanced!1665 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(declare-fun bs!389769 () Bool)

(assert (= bs!389769 d!464482))

(declare-fun m!1839529 () Bool)

(assert (=> bs!389769 m!1839529))

(assert (=> tb!87485 d!464482))

(declare-fun d!464484 () Bool)

(declare-fun c!253912 () Bool)

(assert (=> d!464484 (= c!253912 ((_ is Node!5615) (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun e!1006421 () Bool)

(assert (=> d!464484 (= (inv!22394 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) e!1006421)))

(declare-fun b!1567003 () Bool)

(assert (=> b!1567003 (= e!1006421 (inv!22397 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567004 () Bool)

(declare-fun e!1006422 () Bool)

(assert (=> b!1567004 (= e!1006421 e!1006422)))

(declare-fun res!698555 () Bool)

(assert (=> b!1567004 (= res!698555 (not ((_ is Leaf!8327) (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1567004 (=> res!698555 e!1006422)))

(declare-fun b!1567005 () Bool)

(assert (=> b!1567005 (= e!1006422 (inv!22398 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464484 c!253912) b!1567003))

(assert (= (and d!464484 (not c!253912)) b!1567004))

(assert (= (and b!1567004 (not res!698555)) b!1567005))

(declare-fun m!1839531 () Bool)

(assert (=> b!1567003 m!1839531))

(declare-fun m!1839533 () Bool)

(assert (=> b!1567005 m!1839533))

(assert (=> b!1566160 d!464484))

(declare-fun d!464486 () Bool)

(declare-fun c!253913 () Bool)

(assert (=> d!464486 (= c!253913 ((_ is Node!5615) (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun e!1006423 () Bool)

(assert (=> d!464486 (= (inv!22394 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) e!1006423)))

(declare-fun b!1567006 () Bool)

(assert (=> b!1567006 (= e!1006423 (inv!22397 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567007 () Bool)

(declare-fun e!1006424 () Bool)

(assert (=> b!1567007 (= e!1006423 e!1006424)))

(declare-fun res!698556 () Bool)

(assert (=> b!1567007 (= res!698556 (not ((_ is Leaf!8327) (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1567007 (=> res!698556 e!1006424)))

(declare-fun b!1567008 () Bool)

(assert (=> b!1567008 (= e!1006424 (inv!22398 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464486 c!253913) b!1567006))

(assert (= (and d!464486 (not c!253913)) b!1567007))

(assert (= (and b!1567007 (not res!698556)) b!1567008))

(declare-fun m!1839535 () Bool)

(assert (=> b!1567006 m!1839535))

(declare-fun m!1839537 () Bool)

(assert (=> b!1567008 m!1839537))

(assert (=> b!1566160 d!464486))

(assert (=> b!1565679 d!463974))

(assert (=> b!1565679 d!463976))

(declare-fun d!464488 () Bool)

(declare-fun lt!542690 () Bool)

(assert (=> d!464488 (= lt!542690 (isEmpty!10202 (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464488 (= lt!542690 (= (size!13807 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 0))))

(assert (=> d!464488 (= (isEmpty!10200 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) lt!542690)))

(declare-fun bs!389770 () Bool)

(assert (= bs!389770 d!464488))

(assert (=> bs!389770 m!1837285))

(assert (=> bs!389770 m!1837285))

(declare-fun m!1839539 () Bool)

(assert (=> bs!389770 m!1839539))

(assert (=> bs!389770 m!1837631))

(assert (=> b!1566019 d!464488))

(declare-fun d!464490 () Bool)

(declare-fun c!253914 () Bool)

(assert (=> d!464490 (= c!253914 ((_ is Node!5614) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850))))))))

(declare-fun e!1006425 () Bool)

(assert (=> d!464490 (= (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850))))) e!1006425)))

(declare-fun b!1567009 () Bool)

(assert (=> b!1567009 (= e!1006425 (inv!22411 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850))))))))

(declare-fun b!1567010 () Bool)

(declare-fun e!1006426 () Bool)

(assert (=> b!1567010 (= e!1006425 e!1006426)))

(declare-fun res!698557 () Bool)

(assert (=> b!1567010 (= res!698557 (not ((_ is Leaf!8326) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850)))))))))

(assert (=> b!1567010 (=> res!698557 e!1006426)))

(declare-fun b!1567011 () Bool)

(assert (=> b!1567011 (= e!1006426 (inv!22412 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850))))))))

(assert (= (and d!464490 c!253914) b!1567009))

(assert (= (and d!464490 (not c!253914)) b!1567010))

(assert (= (and b!1567010 (not res!698557)) b!1567011))

(declare-fun m!1839541 () Bool)

(assert (=> b!1567009 m!1839541))

(declare-fun m!1839543 () Bool)

(assert (=> b!1567011 m!1839543))

(assert (=> b!1566042 d!464490))

(declare-fun d!464492 () Bool)

(declare-fun res!698558 () Bool)

(declare-fun e!1006427 () Bool)

(assert (=> d!464492 (=> res!698558 e!1006427)))

(assert (=> d!464492 (= res!698558 ((_ is Nil!17030) (t!141745 (list!6549 (tokens!2198 thiss!10002)))))))

(assert (=> d!464492 (= (forall!3952 (t!141745 (list!6549 (tokens!2198 thiss!10002))) lambda!66209) e!1006427)))

(declare-fun b!1567012 () Bool)

(declare-fun e!1006428 () Bool)

(assert (=> b!1567012 (= e!1006427 e!1006428)))

(declare-fun res!698559 () Bool)

(assert (=> b!1567012 (=> (not res!698559) (not e!1006428))))

(assert (=> b!1567012 (= res!698559 (dynLambda!7593 lambda!66209 (h!22431 (t!141745 (list!6549 (tokens!2198 thiss!10002))))))))

(declare-fun b!1567013 () Bool)

(assert (=> b!1567013 (= e!1006428 (forall!3952 (t!141745 (t!141745 (list!6549 (tokens!2198 thiss!10002)))) lambda!66209))))

(assert (= (and d!464492 (not res!698558)) b!1567012))

(assert (= (and b!1567012 res!698559) b!1567013))

(declare-fun b_lambda!49339 () Bool)

(assert (=> (not b_lambda!49339) (not b!1567012)))

(declare-fun m!1839545 () Bool)

(assert (=> b!1567012 m!1839545))

(declare-fun m!1839547 () Bool)

(assert (=> b!1567013 m!1839547))

(assert (=> b!1565932 d!464492))

(assert (=> b!1566060 d!464262))

(assert (=> b!1566060 d!464264))

(assert (=> b!1566060 d!464310))

(assert (=> b!1566060 d!464312))

(assert (=> b!1566060 d!464314))

(declare-fun d!464494 () Bool)

(assert (=> d!464494 (= (inv!22401 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (<= (size!13806 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) 2147483647))))

(declare-fun bs!389771 () Bool)

(assert (= bs!389771 d!464494))

(declare-fun m!1839549 () Bool)

(assert (=> bs!389771 m!1839549))

(assert (=> b!1566168 d!464494))

(declare-fun d!464496 () Bool)

(assert (=> d!464496 (= (inv!22390 (tag!3247 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (= (mod (str.len (value!94687 (tag!3247 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) 2) 0))))

(assert (=> b!1566216 d!464496))

(declare-fun d!464498 () Bool)

(declare-fun res!698560 () Bool)

(declare-fun e!1006429 () Bool)

(assert (=> d!464498 (=> (not res!698560) (not e!1006429))))

(assert (=> d!464498 (= res!698560 (semiInverseModEq!1131 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))))

(assert (=> d!464498 (= (inv!22403 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) e!1006429)))

(declare-fun b!1567014 () Bool)

(assert (=> b!1567014 (= e!1006429 (equivClasses!1072 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))))

(assert (= (and d!464498 res!698560) b!1567014))

(declare-fun m!1839551 () Bool)

(assert (=> d!464498 m!1839551))

(declare-fun m!1839553 () Bool)

(assert (=> b!1567014 m!1839553))

(assert (=> b!1566216 d!464498))

(declare-fun d!464500 () Bool)

(declare-fun lt!542691 () Int)

(assert (=> d!464500 (>= lt!542691 0)))

(declare-fun e!1006430 () Int)

(assert (=> d!464500 (= lt!542691 e!1006430)))

(declare-fun c!253915 () Bool)

(assert (=> d!464500 (= c!253915 ((_ is Nil!17030) (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464500 (= (size!13806 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))) lt!542691)))

(declare-fun b!1567015 () Bool)

(assert (=> b!1567015 (= e!1006430 0)))

(declare-fun b!1567016 () Bool)

(assert (=> b!1567016 (= e!1006430 (+ 1 (size!13806 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464500 c!253915) b!1567015))

(assert (= (and d!464500 (not c!253915)) b!1567016))

(declare-fun m!1839555 () Bool)

(assert (=> b!1567016 m!1839555))

(assert (=> b!1565934 d!464500))

(declare-fun bs!389772 () Bool)

(declare-fun d!464502 () Bool)

(assert (= bs!389772 (and d!464502 d!463734)))

(declare-fun lambda!66271 () Int)

(assert (=> bs!389772 (= lambda!66271 lambda!66209)))

(declare-fun bs!389773 () Bool)

(assert (= bs!389773 (and d!464502 d!464412)))

(assert (=> bs!389773 (= lambda!66271 lambda!66269)))

(declare-fun bs!389774 () Bool)

(assert (= bs!389774 (and d!464502 d!463688)))

(assert (=> bs!389774 (= lambda!66271 lambda!66200)))

(declare-fun bs!389775 () Bool)

(assert (= bs!389775 (and d!464502 d!463866)))

(assert (=> bs!389775 (= lambda!66271 lambda!66222)))

(declare-fun bs!389776 () Bool)

(assert (= bs!389776 (and d!464502 d!463762)))

(assert (=> bs!389776 (= lambda!66271 lambda!66213)))

(declare-fun bs!389777 () Bool)

(assert (= bs!389777 (and d!464502 d!463978)))

(assert (=> bs!389777 (= lambda!66271 lambda!66226)))

(declare-fun b!1567021 () Bool)

(declare-fun e!1006435 () Bool)

(assert (=> b!1567021 (= e!1006435 true)))

(declare-fun b!1567020 () Bool)

(declare-fun e!1006434 () Bool)

(assert (=> b!1567020 (= e!1006434 e!1006435)))

(declare-fun b!1567019 () Bool)

(declare-fun e!1006433 () Bool)

(assert (=> b!1567019 (= e!1006433 e!1006434)))

(assert (=> d!464502 e!1006433))

(assert (= b!1567020 b!1567021))

(assert (= b!1567019 b!1567020))

(assert (= (and d!464502 ((_ is Cons!17031) (rules!12084 thiss!10002))) b!1567019))

(assert (=> b!1567021 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66271))))

(assert (=> b!1567021 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66271))))

(assert (=> d!464502 true))

(declare-fun lt!542692 () Bool)

(assert (=> d!464502 (= lt!542692 (forall!3952 (t!141745 (list!6549 (tokens!2198 thiss!10002))) lambda!66271))))

(declare-fun e!1006431 () Bool)

(assert (=> d!464502 (= lt!542692 e!1006431)))

(declare-fun res!698561 () Bool)

(assert (=> d!464502 (=> res!698561 e!1006431)))

(assert (=> d!464502 (= res!698561 (not ((_ is Cons!17030) (t!141745 (list!6549 (tokens!2198 thiss!10002))))))))

(assert (=> d!464502 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464502 (= (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 (list!6549 (tokens!2198 thiss!10002)))) lt!542692)))

(declare-fun b!1567017 () Bool)

(declare-fun e!1006432 () Bool)

(assert (=> b!1567017 (= e!1006431 e!1006432)))

(declare-fun res!698562 () Bool)

(assert (=> b!1567017 (=> (not res!698562) (not e!1006432))))

(assert (=> b!1567017 (= res!698562 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (list!6549 (tokens!2198 thiss!10002))))))))

(declare-fun b!1567018 () Bool)

(assert (=> b!1567018 (= e!1006432 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 (t!141745 (list!6549 (tokens!2198 thiss!10002))))))))

(assert (= (and d!464502 (not res!698561)) b!1567017))

(assert (= (and b!1567017 res!698562) b!1567018))

(declare-fun m!1839557 () Bool)

(assert (=> d!464502 m!1839557))

(assert (=> d!464502 m!1836809))

(declare-fun m!1839559 () Bool)

(assert (=> b!1567017 m!1839559))

(declare-fun m!1839561 () Bool)

(assert (=> b!1567018 m!1839561))

(assert (=> b!1565967 d!464502))

(declare-fun d!464504 () Bool)

(declare-fun lt!542693 () Bool)

(assert (=> d!464504 (= lt!542693 (select (content!2358 (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032)) (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002))))))))

(declare-fun e!1006436 () Bool)

(assert (=> d!464504 (= lt!542693 e!1006436)))

(declare-fun res!698564 () Bool)

(assert (=> d!464504 (=> (not res!698564) (not e!1006436))))

(assert (=> d!464504 (= res!698564 ((_ is Cons!17032) (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032)))))

(assert (=> d!464504 (= (contains!3002 (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032) (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002))))) lt!542693)))

(declare-fun b!1567022 () Bool)

(declare-fun e!1006437 () Bool)

(assert (=> b!1567022 (= e!1006436 e!1006437)))

(declare-fun res!698563 () Bool)

(assert (=> b!1567022 (=> res!698563 e!1006437)))

(assert (=> b!1567022 (= res!698563 (= (h!22433 (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032)) (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002))))))))

(declare-fun b!1567023 () Bool)

(assert (=> b!1567023 (= e!1006437 (contains!3002 (t!141751 (Cons!17032 (tag!3247 (h!22432 (rules!12084 thiss!10002))) Nil!17032)) (tag!3247 (h!22432 (t!141746 (rules!12084 thiss!10002))))))))

(assert (= (and d!464504 res!698564) b!1567022))

(assert (= (and b!1567022 (not res!698563)) b!1567023))

(declare-fun m!1839563 () Bool)

(assert (=> d!464504 m!1839563))

(declare-fun m!1839565 () Bool)

(assert (=> d!464504 m!1839565))

(declare-fun m!1839567 () Bool)

(assert (=> b!1567023 m!1839567))

(assert (=> b!1565785 d!464504))

(declare-fun d!464506 () Bool)

(declare-fun c!253916 () Bool)

(assert (=> d!464506 (= c!253916 ((_ is Empty!5615) (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(declare-fun e!1006438 () List!17100)

(assert (=> d!464506 (= (list!6550 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))) e!1006438)))

(declare-fun b!1567026 () Bool)

(declare-fun e!1006439 () List!17100)

(assert (=> b!1567026 (= e!1006439 (list!6552 (xs!8415 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))))))

(declare-fun b!1567027 () Bool)

(assert (=> b!1567027 (= e!1006439 (++!4431 (list!6550 (left!13804 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))) (list!6550 (right!14134 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))))

(declare-fun b!1567024 () Bool)

(assert (=> b!1567024 (= e!1006438 Nil!17030)))

(declare-fun b!1567025 () Bool)

(assert (=> b!1567025 (= e!1006438 e!1006439)))

(declare-fun c!253917 () Bool)

(assert (=> b!1567025 (= c!253917 ((_ is Leaf!8327) (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(assert (= (and d!464506 c!253916) b!1567024))

(assert (= (and d!464506 (not c!253916)) b!1567025))

(assert (= (and b!1567025 c!253917) b!1567026))

(assert (= (and b!1567025 (not c!253917)) b!1567027))

(declare-fun m!1839569 () Bool)

(assert (=> b!1567026 m!1839569))

(declare-fun m!1839571 () Bool)

(assert (=> b!1567027 m!1839571))

(declare-fun m!1839573 () Bool)

(assert (=> b!1567027 m!1839573))

(assert (=> b!1567027 m!1839571))

(assert (=> b!1567027 m!1839573))

(declare-fun m!1839575 () Bool)

(assert (=> b!1567027 m!1839575))

(assert (=> d!463916 d!464506))

(declare-fun d!464508 () Bool)

(assert (=> d!464508 (= (content!2358 Nil!17032) ((as const (Array String!19697 Bool)) false))))

(assert (=> d!464052 d!464508))

(declare-fun d!464510 () Bool)

(assert (=> d!464510 (= (inv!22401 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (<= (size!13806 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) 2147483647))))

(declare-fun bs!389778 () Bool)

(assert (= bs!389778 d!464510))

(declare-fun m!1839577 () Bool)

(assert (=> bs!389778 m!1839577))

(assert (=> b!1566158 d!464510))

(declare-fun d!464512 () Bool)

(declare-fun lt!542694 () Int)

(assert (=> d!464512 (>= lt!542694 0)))

(declare-fun e!1006440 () Int)

(assert (=> d!464512 (= lt!542694 e!1006440)))

(declare-fun c!253918 () Bool)

(assert (=> d!464512 (= c!253918 ((_ is Nil!17030) (list!6552 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464512 (= (size!13806 (list!6552 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) lt!542694)))

(declare-fun b!1567028 () Bool)

(assert (=> b!1567028 (= e!1006440 0)))

(declare-fun b!1567029 () Bool)

(assert (=> b!1567029 (= e!1006440 (+ 1 (size!13806 (t!141745 (list!6552 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464512 c!253918) b!1567028))

(assert (= (and d!464512 (not c!253918)) b!1567029))

(declare-fun m!1839579 () Bool)

(assert (=> b!1567029 m!1839579))

(assert (=> d!463944 d!464512))

(assert (=> d!463944 d!464410))

(declare-fun bs!389779 () Bool)

(declare-fun d!464514 () Bool)

(assert (= bs!389779 (and d!464514 d!463750)))

(declare-fun lambda!66272 () Int)

(assert (=> bs!389779 (= lambda!66272 lambda!66212)))

(declare-fun bs!389780 () Bool)

(assert (= bs!389780 (and d!464514 d!463828)))

(assert (=> bs!389780 (= lambda!66272 lambda!66221)))

(assert (=> d!464514 true))

(declare-fun lt!542695 () Bool)

(assert (=> d!464514 (= lt!542695 (forall!3954 (t!141746 (rules!12084 thiss!10002)) lambda!66272))))

(declare-fun e!1006441 () Bool)

(assert (=> d!464514 (= lt!542695 e!1006441)))

(declare-fun res!698565 () Bool)

(assert (=> d!464514 (=> res!698565 e!1006441)))

(assert (=> d!464514 (= res!698565 (not ((_ is Cons!17031) (t!141746 (rules!12084 thiss!10002)))))))

(assert (=> d!464514 (= (rulesValidInductive!899 Lexer!2610 (t!141746 (rules!12084 thiss!10002))) lt!542695)))

(declare-fun b!1567030 () Bool)

(declare-fun e!1006442 () Bool)

(assert (=> b!1567030 (= e!1006441 e!1006442)))

(declare-fun res!698566 () Bool)

(assert (=> b!1567030 (=> (not res!698566) (not e!1006442))))

(assert (=> b!1567030 (= res!698566 (ruleValid!700 Lexer!2610 (h!22432 (t!141746 (rules!12084 thiss!10002)))))))

(declare-fun b!1567031 () Bool)

(assert (=> b!1567031 (= e!1006442 (rulesValidInductive!899 Lexer!2610 (t!141746 (t!141746 (rules!12084 thiss!10002)))))))

(assert (= (and d!464514 (not res!698565)) b!1567030))

(assert (= (and b!1567030 res!698566) b!1567031))

(declare-fun m!1839581 () Bool)

(assert (=> d!464514 m!1839581))

(declare-fun m!1839583 () Bool)

(assert (=> b!1567030 m!1839583))

(declare-fun m!1839585 () Bool)

(assert (=> b!1567031 m!1839585))

(assert (=> b!1565796 d!464514))

(declare-fun d!464516 () Bool)

(assert (=> d!464516 (= (list!6549 (_1!9701 lt!542023)) (list!6550 (c!253628 (_1!9701 lt!542023))))))

(declare-fun bs!389781 () Bool)

(assert (= bs!389781 d!464516))

(declare-fun m!1839587 () Bool)

(assert (=> bs!389781 m!1839587))

(assert (=> b!1565858 d!464516))

(declare-fun d!464518 () Bool)

(declare-fun e!1006450 () Bool)

(assert (=> d!464518 e!1006450))

(declare-fun c!253923 () Bool)

(declare-fun lt!542703 () tuple2!16600)

(assert (=> d!464518 (= c!253923 (> (size!13806 (_1!9702 lt!542703)) 0))))

(declare-fun e!1006451 () tuple2!16600)

(assert (=> d!464518 (= lt!542703 e!1006451)))

(declare-fun c!253924 () Bool)

(declare-datatypes ((tuple2!16610 0))(
  ( (tuple2!16611 (_1!9707 Token!5532) (_2!9707 List!17099)) )
))
(declare-datatypes ((Option!3069 0))(
  ( (None!3068) (Some!3068 (v!23849 tuple2!16610)) )
))
(declare-fun lt!542702 () Option!3069)

(assert (=> d!464518 (= c!253924 ((_ is Some!3068) lt!542702))))

(declare-fun maxPrefix!1223 (LexerInterface!2612 List!17101 List!17099) Option!3069)

(assert (=> d!464518 (= lt!542702 (maxPrefix!1223 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))

(assert (=> d!464518 (= (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))) lt!542703)))

(declare-fun b!1567042 () Bool)

(declare-fun e!1006449 () Bool)

(assert (=> b!1567042 (= e!1006449 (not (isEmpty!10202 (_1!9702 lt!542703))))))

(declare-fun b!1567043 () Bool)

(assert (=> b!1567043 (= e!1006450 (= (_2!9702 lt!542703) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))

(declare-fun b!1567044 () Bool)

(declare-fun lt!542704 () tuple2!16600)

(assert (=> b!1567044 (= e!1006451 (tuple2!16601 (Cons!17030 (_1!9707 (v!23849 lt!542702)) (_1!9702 lt!542704)) (_2!9702 lt!542704)))))

(assert (=> b!1567044 (= lt!542704 (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (_2!9707 (v!23849 lt!542702))))))

(declare-fun b!1567045 () Bool)

(assert (=> b!1567045 (= e!1006451 (tuple2!16601 Nil!17030 (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))

(declare-fun b!1567046 () Bool)

(assert (=> b!1567046 (= e!1006450 e!1006449)))

(declare-fun res!698569 () Bool)

(assert (=> b!1567046 (= res!698569 (< (size!13810 (_2!9702 lt!542703)) (size!13810 (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))))

(assert (=> b!1567046 (=> (not res!698569) (not e!1006449))))

(assert (= (and d!464518 c!253924) b!1567044))

(assert (= (and d!464518 (not c!253924)) b!1567045))

(assert (= (and d!464518 c!253923) b!1567046))

(assert (= (and d!464518 (not c!253923)) b!1567043))

(assert (= (and b!1567046 res!698569) b!1567042))

(declare-fun m!1839589 () Bool)

(assert (=> d!464518 m!1839589))

(assert (=> d!464518 m!1837461))

(declare-fun m!1839591 () Bool)

(assert (=> d!464518 m!1839591))

(declare-fun m!1839593 () Bool)

(assert (=> b!1567042 m!1839593))

(declare-fun m!1839595 () Bool)

(assert (=> b!1567044 m!1839595))

(declare-fun m!1839597 () Bool)

(assert (=> b!1567046 m!1839597))

(assert (=> b!1567046 m!1837461))

(assert (=> b!1567046 m!1839327))

(assert (=> b!1565858 d!464518))

(declare-fun d!464520 () Bool)

(assert (=> d!464520 (= (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))) (list!6556 (c!253626 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))

(declare-fun bs!389782 () Bool)

(assert (= bs!389782 d!464520))

(declare-fun m!1839599 () Bool)

(assert (=> bs!389782 m!1839599))

(assert (=> b!1565858 d!464520))

(declare-fun d!464522 () Bool)

(assert (=> d!464522 (= (list!6554 lt!542269) (list!6556 (c!253626 lt!542269)))))

(declare-fun bs!389783 () Bool)

(assert (= bs!389783 d!464522))

(declare-fun m!1839601 () Bool)

(assert (=> bs!389783 m!1839601))

(assert (=> d!464024 d!464522))

(declare-fun d!464524 () Bool)

(assert (=> d!464524 (= (inv!22415 (xs!8414 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) (<= (size!13810 (innerList!5674 (xs!8414 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) 2147483647))))

(declare-fun bs!389784 () Bool)

(assert (= bs!389784 d!464524))

(declare-fun m!1839603 () Bool)

(assert (=> bs!389784 m!1839603))

(assert (=> b!1566188 d!464524))

(declare-fun d!464526 () Bool)

(declare-fun lt!542705 () Int)

(assert (=> d!464526 (>= lt!542705 0)))

(declare-fun e!1006452 () Int)

(assert (=> d!464526 (= lt!542705 e!1006452)))

(declare-fun c!253925 () Bool)

(assert (=> d!464526 (= c!253925 ((_ is Nil!17030) lt!542142))))

(assert (=> d!464526 (= (size!13806 lt!542142) lt!542705)))

(declare-fun b!1567047 () Bool)

(assert (=> b!1567047 (= e!1006452 0)))

(declare-fun b!1567048 () Bool)

(assert (=> b!1567048 (= e!1006452 (+ 1 (size!13806 (t!141745 lt!542142))))))

(assert (= (and d!464526 c!253925) b!1567047))

(assert (= (and d!464526 (not c!253925)) b!1567048))

(declare-fun m!1839605 () Bool)

(assert (=> b!1567048 m!1839605))

(assert (=> b!1566011 d!464526))

(declare-fun d!464528 () Bool)

(declare-fun lt!542706 () Int)

(assert (=> d!464528 (= lt!542706 (size!13806 (list!6549 (_1!9701 lt!542023))))))

(assert (=> d!464528 (= lt!542706 (size!13807 (c!253628 (_1!9701 lt!542023))))))

(assert (=> d!464528 (= (size!13812 (_1!9701 lt!542023)) lt!542706)))

(declare-fun bs!389785 () Bool)

(assert (= bs!389785 d!464528))

(assert (=> bs!389785 m!1837471))

(assert (=> bs!389785 m!1837471))

(declare-fun m!1839607 () Bool)

(assert (=> bs!389785 m!1839607))

(declare-fun m!1839609 () Bool)

(assert (=> bs!389785 m!1839609))

(assert (=> d!463874 d!464528))

(declare-fun e!1006456 () tuple2!16598)

(declare-fun b!1567049 () Bool)

(declare-fun lt!542719 () BalanceConc!11172)

(declare-fun lt!542718 () Option!3067)

(assert (=> b!1567049 (= e!1006456 (lexTailRecV2!480 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))) lt!542719 (_2!9705 (v!23847 lt!542718)) (append!521 (BalanceConc!11175 Empty!5615) (_1!9705 (v!23847 lt!542718)))))))

(declare-fun lt!542735 () tuple2!16598)

(assert (=> b!1567049 (= lt!542735 (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (_2!9705 (v!23847 lt!542718))))))

(declare-fun lt!542710 () List!17099)

(assert (=> b!1567049 (= lt!542710 (list!6554 (BalanceConc!11173 Empty!5614)))))

(declare-fun lt!542730 () List!17099)

(assert (=> b!1567049 (= lt!542730 (list!6554 (charsOf!1659 (_1!9705 (v!23847 lt!542718)))))))

(declare-fun lt!542723 () List!17099)

(assert (=> b!1567049 (= lt!542723 (list!6554 (_2!9705 (v!23847 lt!542718))))))

(declare-fun lt!542728 () Unit!26198)

(assert (=> b!1567049 (= lt!542728 (lemmaConcatAssociativity!964 lt!542710 lt!542730 lt!542723))))

(assert (=> b!1567049 (= (++!4436 (++!4436 lt!542710 lt!542730) lt!542723) (++!4436 lt!542710 (++!4436 lt!542730 lt!542723)))))

(declare-fun lt!542716 () Unit!26198)

(assert (=> b!1567049 (= lt!542716 lt!542728)))

(declare-fun lt!542722 () Option!3067)

(assert (=> b!1567049 (= lt!542722 (maxPrefixZipperSequence!600 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(declare-fun c!253926 () Bool)

(assert (=> b!1567049 (= c!253926 ((_ is Some!3066) lt!542722))))

(declare-fun e!1006454 () tuple2!16598)

(assert (=> b!1567049 (= (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))) e!1006454)))

(declare-fun lt!542737 () Unit!26198)

(declare-fun Unit!26232 () Unit!26198)

(assert (=> b!1567049 (= lt!542737 Unit!26232)))

(declare-fun lt!542713 () List!17100)

(assert (=> b!1567049 (= lt!542713 (list!6549 (BalanceConc!11175 Empty!5615)))))

(declare-fun lt!542726 () List!17100)

(assert (=> b!1567049 (= lt!542726 (Cons!17030 (_1!9705 (v!23847 lt!542718)) Nil!17030))))

(declare-fun lt!542709 () List!17100)

(assert (=> b!1567049 (= lt!542709 (list!6549 (_1!9701 lt!542735)))))

(declare-fun lt!542740 () Unit!26198)

(assert (=> b!1567049 (= lt!542740 (lemmaConcatAssociativity!965 lt!542713 lt!542726 lt!542709))))

(assert (=> b!1567049 (= (++!4431 (++!4431 lt!542713 lt!542726) lt!542709) (++!4431 lt!542713 (++!4431 lt!542726 lt!542709)))))

(declare-fun lt!542734 () Unit!26198)

(assert (=> b!1567049 (= lt!542734 lt!542740)))

(declare-fun lt!542721 () List!17099)

(assert (=> b!1567049 (= lt!542721 (++!4436 (list!6554 (BalanceConc!11173 Empty!5614)) (list!6554 (charsOf!1659 (_1!9705 (v!23847 lt!542718))))))))

(declare-fun lt!542725 () List!17099)

(assert (=> b!1567049 (= lt!542725 (list!6554 (_2!9705 (v!23847 lt!542718))))))

(declare-fun lt!542717 () List!17100)

(assert (=> b!1567049 (= lt!542717 (list!6549 (append!521 (BalanceConc!11175 Empty!5615) (_1!9705 (v!23847 lt!542718)))))))

(declare-fun lt!542715 () Unit!26198)

(assert (=> b!1567049 (= lt!542715 (lemmaLexThenLexPrefix!232 Lexer!2610 (rules!12084 thiss!10002) lt!542721 lt!542725 lt!542717 (list!6549 (_1!9701 lt!542735)) (list!6554 (_2!9701 lt!542735))))))

(assert (=> b!1567049 (= (lexList!757 Lexer!2610 (rules!12084 thiss!10002) lt!542721) (tuple2!16601 lt!542717 Nil!17029))))

(declare-fun lt!542727 () Unit!26198)

(assert (=> b!1567049 (= lt!542727 lt!542715)))

(declare-fun lt!542724 () BalanceConc!11172)

(assert (=> b!1567049 (= lt!542724 (++!4433 (BalanceConc!11173 Empty!5614) (charsOf!1659 (_1!9705 (v!23847 lt!542718)))))))

(declare-fun lt!542729 () Option!3067)

(assert (=> b!1567049 (= lt!542729 (maxPrefixZipperSequence!600 Lexer!2610 (rules!12084 thiss!10002) lt!542724))))

(declare-fun c!253927 () Bool)

(assert (=> b!1567049 (= c!253927 ((_ is Some!3066) lt!542729))))

(declare-fun e!1006453 () tuple2!16598)

(assert (=> b!1567049 (= (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (++!4433 (BalanceConc!11173 Empty!5614) (charsOf!1659 (_1!9705 (v!23847 lt!542718))))) e!1006453)))

(declare-fun lt!542732 () Unit!26198)

(declare-fun Unit!26233 () Unit!26198)

(assert (=> b!1567049 (= lt!542732 Unit!26233)))

(assert (=> b!1567049 (= lt!542719 (++!4433 (BalanceConc!11173 Empty!5614) (charsOf!1659 (_1!9705 (v!23847 lt!542718)))))))

(declare-fun lt!542733 () List!17099)

(assert (=> b!1567049 (= lt!542733 (list!6554 lt!542719))))

(declare-fun lt!542731 () List!17099)

(assert (=> b!1567049 (= lt!542731 (list!6554 (_2!9705 (v!23847 lt!542718))))))

(declare-fun lt!542712 () Unit!26198)

(assert (=> b!1567049 (= lt!542712 (lemmaConcatTwoListThenFSndIsSuffix!291 lt!542733 lt!542731))))

(assert (=> b!1567049 (isSuffix!390 lt!542731 (++!4436 lt!542733 lt!542731))))

(declare-fun lt!542739 () Unit!26198)

(assert (=> b!1567049 (= lt!542739 lt!542712)))

(declare-fun b!1567050 () Bool)

(assert (=> b!1567050 (= e!1006453 (tuple2!16599 (BalanceConc!11175 Empty!5615) lt!542724))))

(declare-fun b!1567051 () Bool)

(assert (=> b!1567051 (= e!1006454 (tuple2!16599 (BalanceConc!11175 Empty!5615) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(declare-fun b!1567052 () Bool)

(declare-fun lt!542708 () tuple2!16598)

(assert (=> b!1567052 (= lt!542708 (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (_2!9705 (v!23847 lt!542722))))))

(assert (=> b!1567052 (= e!1006454 (tuple2!16599 (prepend!485 (_1!9701 lt!542708) (_1!9705 (v!23847 lt!542722))) (_2!9701 lt!542708)))))

(declare-fun d!464530 () Bool)

(declare-fun e!1006455 () Bool)

(assert (=> d!464530 e!1006455))

(declare-fun res!698570 () Bool)

(assert (=> d!464530 (=> (not res!698570) (not e!1006455))))

(declare-fun lt!542720 () tuple2!16598)

(assert (=> d!464530 (= res!698570 (= (list!6549 (_1!9701 lt!542720)) (list!6549 (_1!9701 (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(assert (=> d!464530 (= lt!542720 e!1006456)))

(declare-fun c!253928 () Bool)

(assert (=> d!464530 (= c!253928 ((_ is Some!3066) lt!542718))))

(assert (=> d!464530 (= lt!542718 (maxPrefixZipperSequenceV2!239 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(declare-fun lt!542711 () Unit!26198)

(declare-fun lt!542714 () Unit!26198)

(assert (=> d!464530 (= lt!542711 lt!542714)))

(declare-fun lt!542707 () List!17099)

(declare-fun lt!542738 () List!17099)

(assert (=> d!464530 (isSuffix!390 lt!542707 (++!4436 lt!542738 lt!542707))))

(assert (=> d!464530 (= lt!542714 (lemmaConcatTwoListThenFSndIsSuffix!291 lt!542738 lt!542707))))

(assert (=> d!464530 (= lt!542707 (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(assert (=> d!464530 (= lt!542738 (list!6554 (BalanceConc!11173 Empty!5614)))))

(assert (=> d!464530 (= (lexTailRecV2!480 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))) (BalanceConc!11173 Empty!5614) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))) (BalanceConc!11175 Empty!5615)) lt!542720)))

(declare-fun b!1567053 () Bool)

(assert (=> b!1567053 (= e!1006455 (= (list!6554 (_2!9701 lt!542720)) (list!6554 (_2!9701 (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(declare-fun b!1567054 () Bool)

(declare-fun lt!542736 () tuple2!16598)

(assert (=> b!1567054 (= lt!542736 (lexRec!344 Lexer!2610 (rules!12084 thiss!10002) (_2!9705 (v!23847 lt!542729))))))

(assert (=> b!1567054 (= e!1006453 (tuple2!16599 (prepend!485 (_1!9701 lt!542736) (_1!9705 (v!23847 lt!542729))) (_2!9701 lt!542736)))))

(declare-fun b!1567055 () Bool)

(assert (=> b!1567055 (= e!1006456 (tuple2!16599 (BalanceConc!11175 Empty!5615) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))

(assert (= (and d!464530 c!253928) b!1567049))

(assert (= (and d!464530 (not c!253928)) b!1567055))

(assert (= (and b!1567049 c!253926) b!1567052))

(assert (= (and b!1567049 (not c!253926)) b!1567051))

(assert (= (and b!1567049 c!253927) b!1567054))

(assert (= (and b!1567049 (not c!253927)) b!1567050))

(assert (= (and d!464530 res!698570) b!1567053))

(declare-fun m!1839611 () Bool)

(assert (=> b!1567054 m!1839611))

(declare-fun m!1839613 () Bool)

(assert (=> b!1567054 m!1839613))

(declare-fun m!1839615 () Bool)

(assert (=> b!1567053 m!1839615))

(assert (=> b!1567053 m!1837125))

(declare-fun m!1839617 () Bool)

(assert (=> b!1567053 m!1839617))

(declare-fun m!1839619 () Bool)

(assert (=> b!1567053 m!1839619))

(assert (=> b!1567049 m!1839073))

(declare-fun m!1839621 () Bool)

(assert (=> b!1567049 m!1839621))

(declare-fun m!1839623 () Bool)

(assert (=> b!1567049 m!1839623))

(declare-fun m!1839625 () Bool)

(assert (=> b!1567049 m!1839625))

(declare-fun m!1839627 () Bool)

(assert (=> b!1567049 m!1839627))

(declare-fun m!1839629 () Bool)

(assert (=> b!1567049 m!1839629))

(assert (=> b!1567049 m!1837125))

(declare-fun m!1839631 () Bool)

(assert (=> b!1567049 m!1839631))

(declare-fun m!1839633 () Bool)

(assert (=> b!1567049 m!1839633))

(declare-fun m!1839635 () Bool)

(assert (=> b!1567049 m!1839635))

(declare-fun m!1839637 () Bool)

(assert (=> b!1567049 m!1839637))

(assert (=> b!1567049 m!1839073))

(assert (=> b!1567049 m!1839625))

(declare-fun m!1839639 () Bool)

(assert (=> b!1567049 m!1839639))

(declare-fun m!1839641 () Bool)

(assert (=> b!1567049 m!1839641))

(declare-fun m!1839643 () Bool)

(assert (=> b!1567049 m!1839643))

(declare-fun m!1839645 () Bool)

(assert (=> b!1567049 m!1839645))

(assert (=> b!1567049 m!1839641))

(declare-fun m!1839647 () Bool)

(assert (=> b!1567049 m!1839647))

(assert (=> b!1567049 m!1837125))

(declare-fun m!1839649 () Bool)

(assert (=> b!1567049 m!1839649))

(declare-fun m!1839651 () Bool)

(assert (=> b!1567049 m!1839651))

(assert (=> b!1567049 m!1839627))

(assert (=> b!1567049 m!1837125))

(assert (=> b!1567049 m!1839617))

(declare-fun m!1839653 () Bool)

(assert (=> b!1567049 m!1839653))

(declare-fun m!1839655 () Bool)

(assert (=> b!1567049 m!1839655))

(declare-fun m!1839657 () Bool)

(assert (=> b!1567049 m!1839657))

(assert (=> b!1567049 m!1839631))

(declare-fun m!1839659 () Bool)

(assert (=> b!1567049 m!1839659))

(declare-fun m!1839661 () Bool)

(assert (=> b!1567049 m!1839661))

(declare-fun m!1839663 () Bool)

(assert (=> b!1567049 m!1839663))

(assert (=> b!1567049 m!1839637))

(assert (=> b!1567049 m!1839621))

(declare-fun m!1839665 () Bool)

(assert (=> b!1567049 m!1839665))

(assert (=> b!1567049 m!1839637))

(assert (=> b!1567049 m!1839661))

(declare-fun m!1839667 () Bool)

(assert (=> b!1567049 m!1839667))

(declare-fun m!1839669 () Bool)

(assert (=> b!1567049 m!1839669))

(declare-fun m!1839671 () Bool)

(assert (=> b!1567049 m!1839671))

(assert (=> b!1567049 m!1839645))

(assert (=> b!1567049 m!1839155))

(assert (=> b!1567049 m!1839667))

(declare-fun m!1839673 () Bool)

(assert (=> b!1567049 m!1839673))

(declare-fun m!1839675 () Bool)

(assert (=> b!1567049 m!1839675))

(assert (=> b!1567049 m!1839655))

(assert (=> b!1567049 m!1839643))

(declare-fun m!1839677 () Bool)

(assert (=> b!1567049 m!1839677))

(assert (=> b!1567049 m!1839631))

(declare-fun m!1839679 () Bool)

(assert (=> b!1567049 m!1839679))

(assert (=> d!464530 m!1837125))

(assert (=> d!464530 m!1839617))

(declare-fun m!1839681 () Bool)

(assert (=> d!464530 m!1839681))

(declare-fun m!1839683 () Bool)

(assert (=> d!464530 m!1839683))

(declare-fun m!1839685 () Bool)

(assert (=> d!464530 m!1839685))

(assert (=> d!464530 m!1837125))

(assert (=> d!464530 m!1837125))

(declare-fun m!1839687 () Bool)

(assert (=> d!464530 m!1839687))

(assert (=> d!464530 m!1839683))

(declare-fun m!1839689 () Bool)

(assert (=> d!464530 m!1839689))

(declare-fun m!1839691 () Bool)

(assert (=> d!464530 m!1839691))

(assert (=> d!464530 m!1839073))

(assert (=> d!464530 m!1837125))

(assert (=> d!464530 m!1837461))

(declare-fun m!1839693 () Bool)

(assert (=> b!1567052 m!1839693))

(declare-fun m!1839695 () Bool)

(assert (=> b!1567052 m!1839695))

(assert (=> d!463874 d!464530))

(declare-fun d!464532 () Bool)

(declare-fun res!698571 () Bool)

(declare-fun e!1006463 () Bool)

(assert (=> d!464532 (=> res!698571 e!1006463)))

(assert (=> d!464532 (= res!698571 ((_ is Nil!17030) (t!141745 (t!141745 lt!541850))))))

(assert (=> d!464532 (= (forall!3952 (t!141745 (t!141745 lt!541850)) lambda!66200) e!1006463)))

(declare-fun b!1567068 () Bool)

(declare-fun e!1006464 () Bool)

(assert (=> b!1567068 (= e!1006463 e!1006464)))

(declare-fun res!698572 () Bool)

(assert (=> b!1567068 (=> (not res!698572) (not e!1006464))))

(assert (=> b!1567068 (= res!698572 (dynLambda!7593 lambda!66200 (h!22431 (t!141745 (t!141745 lt!541850)))))))

(declare-fun b!1567069 () Bool)

(assert (=> b!1567069 (= e!1006464 (forall!3952 (t!141745 (t!141745 (t!141745 lt!541850))) lambda!66200))))

(assert (= (and d!464532 (not res!698571)) b!1567068))

(assert (= (and b!1567068 res!698572) b!1567069))

(declare-fun b_lambda!49341 () Bool)

(assert (=> (not b_lambda!49341) (not b!1567068)))

(declare-fun m!1839697 () Bool)

(assert (=> b!1567068 m!1839697))

(declare-fun m!1839699 () Bool)

(assert (=> b!1567069 m!1839699))

(assert (=> b!1565927 d!464532))

(declare-fun d!464534 () Bool)

(declare-fun lt!542805 () Int)

(assert (=> d!464534 (>= lt!542805 0)))

(declare-fun e!1006465 () Int)

(assert (=> d!464534 (= lt!542805 e!1006465)))

(declare-fun c!253935 () Bool)

(assert (=> d!464534 (= c!253935 ((_ is Nil!17030) (list!6549 (_1!9701 lt!541955))))))

(assert (=> d!464534 (= (size!13806 (list!6549 (_1!9701 lt!541955))) lt!542805)))

(declare-fun b!1567070 () Bool)

(assert (=> b!1567070 (= e!1006465 0)))

(declare-fun b!1567071 () Bool)

(assert (=> b!1567071 (= e!1006465 (+ 1 (size!13806 (t!141745 (list!6549 (_1!9701 lt!541955))))))))

(assert (= (and d!464534 c!253935) b!1567070))

(assert (= (and d!464534 (not c!253935)) b!1567071))

(declare-fun m!1839701 () Bool)

(assert (=> b!1567071 m!1839701))

(assert (=> d!463918 d!464534))

(declare-fun d!464536 () Bool)

(assert (=> d!464536 (= (list!6549 (_1!9701 lt!541955)) (list!6550 (c!253628 (_1!9701 lt!541955))))))

(declare-fun bs!389786 () Bool)

(assert (= bs!389786 d!464536))

(declare-fun m!1839703 () Bool)

(assert (=> bs!389786 m!1839703))

(assert (=> d!463918 d!464536))

(declare-fun d!464538 () Bool)

(declare-fun lt!542810 () Int)

(assert (=> d!464538 (= lt!542810 (size!13806 (list!6550 (c!253628 (_1!9701 lt!541955)))))))

(assert (=> d!464538 (= lt!542810 (ite ((_ is Empty!5615) (c!253628 (_1!9701 lt!541955))) 0 (ite ((_ is Leaf!8327) (c!253628 (_1!9701 lt!541955))) (csize!11461 (c!253628 (_1!9701 lt!541955))) (csize!11460 (c!253628 (_1!9701 lt!541955))))))))

(assert (=> d!464538 (= (size!13807 (c!253628 (_1!9701 lt!541955))) lt!542810)))

(declare-fun bs!389787 () Bool)

(assert (= bs!389787 d!464538))

(assert (=> bs!389787 m!1839703))

(assert (=> bs!389787 m!1839703))

(declare-fun m!1839705 () Bool)

(assert (=> bs!389787 m!1839705))

(assert (=> d!463918 d!464538))

(declare-fun d!464540 () Bool)

(declare-fun lt!542811 () Int)

(assert (=> d!464540 (>= lt!542811 0)))

(declare-fun e!1006466 () Int)

(assert (=> d!464540 (= lt!542811 e!1006466)))

(declare-fun c!253936 () Bool)

(assert (=> d!464540 (= c!253936 ((_ is Nil!17029) (list!6556 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))))))

(assert (=> d!464540 (= (size!13810 (list!6556 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))) lt!542811)))

(declare-fun b!1567072 () Bool)

(assert (=> b!1567072 (= e!1006466 0)))

(declare-fun b!1567073 () Bool)

(assert (=> b!1567073 (= e!1006466 (+ 1 (size!13810 (t!141744 (list!6556 (c!253626 (charsOf!1659 (h!22431 (t!141745 lt!541850)))))))))))

(assert (= (and d!464540 c!253936) b!1567072))

(assert (= (and d!464540 (not c!253936)) b!1567073))

(declare-fun m!1839707 () Bool)

(assert (=> b!1567073 m!1839707))

(assert (=> d!463954 d!464540))

(assert (=> d!463954 d!464362))

(declare-fun d!464542 () Bool)

(declare-fun c!253937 () Bool)

(assert (=> d!464542 (= c!253937 ((_ is Empty!5615) (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(declare-fun e!1006467 () List!17100)

(assert (=> d!464542 (= (list!6550 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))) e!1006467)))

(declare-fun b!1567076 () Bool)

(declare-fun e!1006468 () List!17100)

(assert (=> b!1567076 (= e!1006468 (list!6552 (xs!8415 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))))))

(declare-fun b!1567077 () Bool)

(assert (=> b!1567077 (= e!1006468 (++!4431 (list!6550 (left!13804 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))) (list!6550 (right!14134 (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))))

(declare-fun b!1567074 () Bool)

(assert (=> b!1567074 (= e!1006467 Nil!17030)))

(declare-fun b!1567075 () Bool)

(assert (=> b!1567075 (= e!1006467 e!1006468)))

(declare-fun c!253938 () Bool)

(assert (=> b!1567075 (= c!253938 ((_ is Leaf!8327) (c!253628 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(assert (= (and d!464542 c!253937) b!1567074))

(assert (= (and d!464542 (not c!253937)) b!1567075))

(assert (= (and b!1567075 c!253938) b!1567076))

(assert (= (and b!1567075 (not c!253938)) b!1567077))

(declare-fun m!1839709 () Bool)

(assert (=> b!1567076 m!1839709))

(declare-fun m!1839711 () Bool)

(assert (=> b!1567077 m!1839711))

(declare-fun m!1839713 () Bool)

(assert (=> b!1567077 m!1839713))

(assert (=> b!1567077 m!1839711))

(assert (=> b!1567077 m!1839713))

(declare-fun m!1839715 () Bool)

(assert (=> b!1567077 m!1839715))

(assert (=> d!463846 d!464542))

(declare-fun d!464544 () Bool)

(declare-fun res!698575 () Bool)

(declare-fun e!1006470 () Bool)

(assert (=> d!464544 (=> res!698575 e!1006470)))

(assert (=> d!464544 (= res!698575 (not ((_ is Node!5615) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464544 (= (isBalanced!1663 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1006470)))

(declare-fun b!1567078 () Bool)

(declare-fun res!698578 () Bool)

(declare-fun e!1006469 () Bool)

(assert (=> b!1567078 (=> (not res!698578) (not e!1006469))))

(assert (=> b!1567078 (= res!698578 (<= (- (height!836 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) 1))))

(declare-fun b!1567079 () Bool)

(declare-fun res!698573 () Bool)

(assert (=> b!1567079 (=> (not res!698573) (not e!1006469))))

(assert (=> b!1567079 (= res!698573 (isBalanced!1663 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567080 () Bool)

(declare-fun res!698577 () Bool)

(assert (=> b!1567080 (=> (not res!698577) (not e!1006469))))

(assert (=> b!1567080 (= res!698577 (not (isEmpty!10200 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567081 () Bool)

(assert (=> b!1567081 (= e!1006469 (not (isEmpty!10200 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567082 () Bool)

(assert (=> b!1567082 (= e!1006470 e!1006469)))

(declare-fun res!698574 () Bool)

(assert (=> b!1567082 (=> (not res!698574) (not e!1006469))))

(assert (=> b!1567082 (= res!698574 (<= (- 1) (- (height!836 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1567083 () Bool)

(declare-fun res!698576 () Bool)

(assert (=> b!1567083 (=> (not res!698576) (not e!1006469))))

(assert (=> b!1567083 (= res!698576 (isBalanced!1663 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464544 (not res!698575)) b!1567082))

(assert (= (and b!1567082 res!698574) b!1567078))

(assert (= (and b!1567078 res!698578) b!1567079))

(assert (= (and b!1567079 res!698573) b!1567083))

(assert (= (and b!1567083 res!698576) b!1567080))

(assert (= (and b!1567080 res!698577) b!1567081))

(declare-fun m!1839717 () Bool)

(assert (=> b!1567083 m!1839717))

(declare-fun m!1839719 () Bool)

(assert (=> b!1567080 m!1839719))

(assert (=> b!1567082 m!1839507))

(assert (=> b!1567082 m!1839509))

(assert (=> b!1567078 m!1839507))

(assert (=> b!1567078 m!1839509))

(declare-fun m!1839721 () Bool)

(assert (=> b!1567081 m!1839721))

(declare-fun m!1839723 () Bool)

(assert (=> b!1567079 m!1839723))

(assert (=> b!1566122 d!464544))

(declare-fun d!464546 () Bool)

(declare-fun lt!542812 () Int)

(assert (=> d!464546 (>= lt!542812 0)))

(declare-fun e!1006473 () Int)

(assert (=> d!464546 (= lt!542812 e!1006473)))

(declare-fun c!253939 () Bool)

(assert (=> d!464546 (= c!253939 ((_ is Nil!17030) (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464546 (= (size!13806 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) lt!542812)))

(declare-fun b!1567086 () Bool)

(assert (=> b!1567086 (= e!1006473 0)))

(declare-fun b!1567087 () Bool)

(assert (=> b!1567087 (= e!1006473 (+ 1 (size!13806 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464546 c!253939) b!1567086))

(assert (= (and d!464546 (not c!253939)) b!1567087))

(declare-fun m!1839725 () Bool)

(assert (=> b!1567087 m!1839725))

(assert (=> d!463802 d!464546))

(declare-fun d!464548 () Bool)

(declare-fun res!698581 () Bool)

(declare-fun e!1006474 () Bool)

(assert (=> d!464548 (=> (not res!698581) (not e!1006474))))

(assert (=> d!464548 (= res!698581 (= (csize!11460 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (+ (size!13807 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (size!13807 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (=> d!464548 (= (inv!22397 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1006474)))

(declare-fun b!1567088 () Bool)

(declare-fun res!698582 () Bool)

(assert (=> b!1567088 (=> (not res!698582) (not e!1006474))))

(assert (=> b!1567088 (= res!698582 (and (not (= (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) Empty!5615)) (not (= (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) Empty!5615))))))

(declare-fun b!1567089 () Bool)

(declare-fun res!698583 () Bool)

(assert (=> b!1567089 (=> (not res!698583) (not e!1006474))))

(assert (=> b!1567089 (= res!698583 (= (cheight!5826 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (+ (max!0 (height!836 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) 1)))))

(declare-fun b!1567090 () Bool)

(assert (=> b!1567090 (= e!1006474 (<= 0 (cheight!5826 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464548 res!698581) b!1567088))

(assert (= (and b!1567088 res!698582) b!1567089))

(assert (= (and b!1567089 res!698583) b!1567090))

(declare-fun m!1839727 () Bool)

(assert (=> d!464548 m!1839727))

(declare-fun m!1839729 () Bool)

(assert (=> d!464548 m!1839729))

(declare-fun m!1839731 () Bool)

(assert (=> b!1567089 m!1839731))

(declare-fun m!1839733 () Bool)

(assert (=> b!1567089 m!1839733))

(assert (=> b!1567089 m!1839731))

(assert (=> b!1567089 m!1839733))

(declare-fun m!1839735 () Bool)

(assert (=> b!1567089 m!1839735))

(assert (=> b!1565954 d!464548))

(declare-fun d!464550 () Bool)

(assert (=> d!464550 (= (isEmpty!10202 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) ((_ is Nil!17030) (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!464016 d!464550))

(assert (=> d!464016 d!463818))

(assert (=> d!464016 d!463806))

(declare-fun d!464552 () Bool)

(declare-fun res!698584 () Bool)

(declare-fun e!1006475 () Bool)

(assert (=> d!464552 (=> (not res!698584) (not e!1006475))))

(assert (=> d!464552 (= res!698584 (not (isEmpty!10203 (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))))

(assert (=> d!464552 (= (inv!22409 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) e!1006475)))

(declare-fun b!1567091 () Bool)

(declare-fun res!698585 () Bool)

(assert (=> b!1567091 (=> (not res!698585) (not e!1006475))))

(assert (=> b!1567091 (= res!698585 (= (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) (list!6554 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))))

(declare-fun b!1567092 () Bool)

(assert (=> b!1567092 (= e!1006475 (= (size!13802 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) (size!13810 (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))))

(assert (= (and d!464552 res!698584) b!1567091))

(assert (= (and b!1567091 res!698585) b!1567092))

(declare-fun b_lambda!49343 () Bool)

(assert (=> (not b_lambda!49343) (not b!1567091)))

(declare-fun t!141965 () Bool)

(declare-fun tb!87623 () Bool)

(assert (=> (and b!1565476 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141965) tb!87623))

(declare-fun b!1567093 () Bool)

(declare-fun e!1006476 () Bool)

(declare-fun tp!461341 () Bool)

(assert (=> b!1567093 (= e!1006476 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) tp!461341))))

(declare-fun result!106082 () Bool)

(assert (=> tb!87623 (= result!106082 (and (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) e!1006476))))

(assert (= tb!87623 b!1567093))

(declare-fun m!1839737 () Bool)

(assert (=> b!1567093 m!1839737))

(declare-fun m!1839739 () Bool)

(assert (=> tb!87623 m!1839739))

(assert (=> b!1567091 t!141965))

(declare-fun b_and!109377 () Bool)

(assert (= b_and!109363 (and (=> t!141965 result!106082) b_and!109377)))

(declare-fun t!141967 () Bool)

(declare-fun tb!87625 () Bool)

(assert (=> (and b!1566152 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141967) tb!87625))

(declare-fun result!106084 () Bool)

(assert (= result!106084 result!106082))

(assert (=> b!1567091 t!141967))

(declare-fun b_and!109379 () Bool)

(assert (= b_and!109365 (and (=> t!141967 result!106084) b_and!109379)))

(declare-fun t!141969 () Bool)

(declare-fun tb!87627 () Bool)

(assert (=> (and b!1566193 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141969) tb!87627))

(declare-fun result!106086 () Bool)

(assert (= result!106086 result!106082))

(assert (=> b!1567091 t!141969))

(declare-fun b_and!109381 () Bool)

(assert (= b_and!109367 (and (=> t!141969 result!106086) b_and!109381)))

(declare-fun t!141971 () Bool)

(declare-fun tb!87629 () Bool)

(assert (=> (and b!1565729 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141971) tb!87629))

(declare-fun result!106088 () Bool)

(assert (= result!106088 result!106082))

(assert (=> b!1567091 t!141971))

(declare-fun b_and!109383 () Bool)

(assert (= b_and!109371 (and (=> t!141971 result!106088) b_and!109383)))

(declare-fun t!141973 () Bool)

(declare-fun tb!87631 () Bool)

(assert (=> (and b!1566217 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141973) tb!87631))

(declare-fun result!106090 () Bool)

(assert (= result!106090 result!106082))

(assert (=> b!1567091 t!141973))

(declare-fun b_and!109385 () Bool)

(assert (= b_and!109375 (and (=> t!141973 result!106090) b_and!109385)))

(declare-fun t!141975 () Bool)

(declare-fun tb!87633 () Bool)

(assert (=> (and b!1566156 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141975) tb!87633))

(declare-fun result!106092 () Bool)

(assert (= result!106092 result!106082))

(assert (=> b!1567091 t!141975))

(declare-fun b_and!109387 () Bool)

(assert (= b_and!109373 (and (=> t!141975 result!106092) b_and!109387)))

(declare-fun t!141977 () Bool)

(declare-fun tb!87635 () Bool)

(assert (=> (and b!1565698 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141977) tb!87635))

(declare-fun result!106094 () Bool)

(assert (= result!106094 result!106082))

(assert (=> b!1567091 t!141977))

(declare-fun b_and!109389 () Bool)

(assert (= b_and!109369 (and (=> t!141977 result!106094) b_and!109389)))

(declare-fun m!1839741 () Bool)

(assert (=> d!464552 m!1839741))

(declare-fun m!1839743 () Bool)

(assert (=> b!1567091 m!1839743))

(assert (=> b!1567091 m!1839743))

(declare-fun m!1839745 () Bool)

(assert (=> b!1567091 m!1839745))

(declare-fun m!1839747 () Bool)

(assert (=> b!1567092 m!1839747))

(assert (=> b!1566190 d!464552))

(declare-fun d!464554 () Bool)

(declare-fun lt!542813 () Int)

(assert (=> d!464554 (>= lt!542813 0)))

(declare-fun e!1006477 () Int)

(assert (=> d!464554 (= lt!542813 e!1006477)))

(declare-fun c!253940 () Bool)

(assert (=> d!464554 (= c!253940 ((_ is Nil!17030) (t!141745 (list!6552 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464554 (= (size!13806 (t!141745 (list!6552 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))) lt!542813)))

(declare-fun b!1567094 () Bool)

(assert (=> b!1567094 (= e!1006477 0)))

(declare-fun b!1567095 () Bool)

(assert (=> b!1567095 (= e!1006477 (+ 1 (size!13806 (t!141745 (t!141745 (list!6552 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464554 c!253940) b!1567094))

(assert (= (and d!464554 (not c!253940)) b!1567095))

(declare-fun m!1839749 () Bool)

(assert (=> b!1567095 m!1839749))

(assert (=> b!1565920 d!464554))

(declare-fun d!464556 () Bool)

(declare-fun lt!542814 () Int)

(assert (=> d!464556 (= lt!542814 (size!13806 (list!6549 (tokens!2198 thiss!10002))))))

(assert (=> d!464556 (= lt!542814 (size!13807 (c!253628 (tokens!2198 thiss!10002))))))

(assert (=> d!464556 (= (size!13812 (tokens!2198 thiss!10002)) lt!542814)))

(declare-fun bs!389788 () Bool)

(assert (= bs!389788 d!464556))

(assert (=> bs!389788 m!1836811))

(assert (=> bs!389788 m!1836811))

(declare-fun m!1839751 () Bool)

(assert (=> bs!389788 m!1839751))

(declare-fun m!1839753 () Bool)

(assert (=> bs!389788 m!1839753))

(assert (=> b!1566015 d!464556))

(declare-fun d!464558 () Bool)

(declare-fun lt!542816 () Bool)

(declare-fun e!1006478 () Bool)

(assert (=> d!464558 (= lt!542816 e!1006478)))

(declare-fun res!698586 () Bool)

(assert (=> d!464558 (=> (not res!698586) (not e!1006478))))

(assert (=> d!464558 (= res!698586 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (list!6549 (tokens!2198 thiss!10002)))))))) (list!6549 (singletonSeq!1349 (h!22431 (list!6549 (tokens!2198 thiss!10002)))))))))

(declare-fun e!1006479 () Bool)

(assert (=> d!464558 (= lt!542816 e!1006479)))

(declare-fun res!698587 () Bool)

(assert (=> d!464558 (=> (not res!698587) (not e!1006479))))

(declare-fun lt!542815 () tuple2!16598)

(assert (=> d!464558 (= res!698587 (= (size!13812 (_1!9701 lt!542815)) 1))))

(assert (=> d!464558 (= lt!542815 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (list!6549 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464558 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464558 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (list!6549 (tokens!2198 thiss!10002)))) lt!542816)))

(declare-fun b!1567096 () Bool)

(declare-fun res!698588 () Bool)

(assert (=> b!1567096 (=> (not res!698588) (not e!1006479))))

(assert (=> b!1567096 (= res!698588 (= (apply!4131 (_1!9701 lt!542815) 0) (h!22431 (list!6549 (tokens!2198 thiss!10002)))))))

(declare-fun b!1567097 () Bool)

(assert (=> b!1567097 (= e!1006479 (isEmpty!10199 (_2!9701 lt!542815)))))

(declare-fun b!1567098 () Bool)

(assert (=> b!1567098 (= e!1006478 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (list!6549 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464558 res!698587) b!1567096))

(assert (= (and b!1567096 res!698588) b!1567097))

(assert (= (and d!464558 res!698586) b!1567098))

(declare-fun m!1839755 () Bool)

(assert (=> d!464558 m!1839755))

(declare-fun m!1839757 () Bool)

(assert (=> d!464558 m!1839757))

(assert (=> d!464558 m!1836809))

(declare-fun m!1839759 () Bool)

(assert (=> d!464558 m!1839759))

(declare-fun m!1839761 () Bool)

(assert (=> d!464558 m!1839761))

(assert (=> d!464558 m!1839759))

(assert (=> d!464558 m!1839755))

(declare-fun m!1839763 () Bool)

(assert (=> d!464558 m!1839763))

(declare-fun m!1839765 () Bool)

(assert (=> d!464558 m!1839765))

(assert (=> d!464558 m!1839759))

(declare-fun m!1839767 () Bool)

(assert (=> b!1567096 m!1839767))

(declare-fun m!1839769 () Bool)

(assert (=> b!1567097 m!1839769))

(assert (=> b!1567098 m!1839759))

(assert (=> b!1567098 m!1839759))

(assert (=> b!1567098 m!1839755))

(assert (=> b!1567098 m!1839755))

(assert (=> b!1567098 m!1839757))

(declare-fun m!1839771 () Bool)

(assert (=> b!1567098 m!1839771))

(assert (=> bs!389671 d!464558))

(declare-fun d!464560 () Bool)

(declare-fun c!253941 () Bool)

(assert (=> d!464560 (= c!253941 ((_ is Node!5615) (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun e!1006480 () Bool)

(assert (=> d!464560 (= (inv!22394 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) e!1006480)))

(declare-fun b!1567099 () Bool)

(assert (=> b!1567099 (= e!1006480 (inv!22397 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567100 () Bool)

(declare-fun e!1006481 () Bool)

(assert (=> b!1567100 (= e!1006480 e!1006481)))

(declare-fun res!698589 () Bool)

(assert (=> b!1567100 (= res!698589 (not ((_ is Leaf!8327) (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1567100 (=> res!698589 e!1006481)))

(declare-fun b!1567101 () Bool)

(assert (=> b!1567101 (= e!1006481 (inv!22398 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464560 c!253941) b!1567099))

(assert (= (and d!464560 (not c!253941)) b!1567100))

(assert (= (and b!1567100 (not res!698589)) b!1567101))

(declare-fun m!1839773 () Bool)

(assert (=> b!1567099 m!1839773))

(declare-fun m!1839775 () Bool)

(assert (=> b!1567101 m!1839775))

(assert (=> b!1566170 d!464560))

(declare-fun d!464562 () Bool)

(declare-fun c!253942 () Bool)

(assert (=> d!464562 (= c!253942 ((_ is Node!5615) (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun e!1006482 () Bool)

(assert (=> d!464562 (= (inv!22394 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) e!1006482)))

(declare-fun b!1567102 () Bool)

(assert (=> b!1567102 (= e!1006482 (inv!22397 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567103 () Bool)

(declare-fun e!1006483 () Bool)

(assert (=> b!1567103 (= e!1006482 e!1006483)))

(declare-fun res!698590 () Bool)

(assert (=> b!1567103 (= res!698590 (not ((_ is Leaf!8327) (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1567103 (=> res!698590 e!1006483)))

(declare-fun b!1567104 () Bool)

(assert (=> b!1567104 (= e!1006483 (inv!22398 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464562 c!253942) b!1567102))

(assert (= (and d!464562 (not c!253942)) b!1567103))

(assert (= (and b!1567103 (not res!698590)) b!1567104))

(declare-fun m!1839777 () Bool)

(assert (=> b!1567102 m!1839777))

(declare-fun m!1839779 () Bool)

(assert (=> b!1567104 m!1839779))

(assert (=> b!1566170 d!464562))

(declare-fun d!464564 () Bool)

(declare-fun charsToBigInt!0 (List!17098 Int) Int)

(assert (=> d!464564 (= (inv!15 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) (= (charsToBigInt!0 (text!21960 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) 0) (value!94683 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun bs!389789 () Bool)

(assert (= bs!389789 d!464564))

(declare-fun m!1839781 () Bool)

(assert (=> bs!389789 m!1839781))

(assert (=> b!1565899 d!464564))

(declare-fun d!464566 () Bool)

(declare-fun lt!542817 () Token!5532)

(assert (=> d!464566 (= lt!542817 (apply!4134 (list!6549 (_1!9701 lt!542055)) 0))))

(assert (=> d!464566 (= lt!542817 (apply!4135 (c!253628 (_1!9701 lt!542055)) 0))))

(declare-fun e!1006484 () Bool)

(assert (=> d!464566 e!1006484))

(declare-fun res!698591 () Bool)

(assert (=> d!464566 (=> (not res!698591) (not e!1006484))))

(assert (=> d!464566 (= res!698591 (<= 0 0))))

(assert (=> d!464566 (= (apply!4131 (_1!9701 lt!542055) 0) lt!542817)))

(declare-fun b!1567105 () Bool)

(assert (=> b!1567105 (= e!1006484 (< 0 (size!13812 (_1!9701 lt!542055))))))

(assert (= (and d!464566 res!698591) b!1567105))

(assert (=> d!464566 m!1839297))

(assert (=> d!464566 m!1839297))

(declare-fun m!1839783 () Bool)

(assert (=> d!464566 m!1839783))

(declare-fun m!1839785 () Bool)

(assert (=> d!464566 m!1839785))

(assert (=> b!1567105 m!1837671))

(assert (=> b!1565947 d!464566))

(declare-fun d!464568 () Bool)

(declare-fun choose!9346 (Int) Bool)

(assert (=> d!464568 (= (Forall2!494 lambda!66225) (choose!9346 lambda!66225))))

(declare-fun bs!389790 () Bool)

(assert (= bs!389790 d!464568))

(declare-fun m!1839787 () Bool)

(assert (=> bs!389790 m!1839787))

(assert (=> d!463946 d!464568))

(declare-fun d!464570 () Bool)

(declare-fun res!698595 () Bool)

(declare-fun e!1006490 () Bool)

(assert (=> d!464570 (=> res!698595 e!1006490)))

(assert (=> d!464570 (= res!698595 (not ((_ is Node!5615) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464570 (= (isBalanced!1663 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1006490)))

(declare-fun b!1567113 () Bool)

(declare-fun res!698598 () Bool)

(declare-fun e!1006489 () Bool)

(assert (=> b!1567113 (=> (not res!698598) (not e!1006489))))

(assert (=> b!1567113 (= res!698598 (<= (- (height!836 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) 1))))

(declare-fun b!1567114 () Bool)

(declare-fun res!698593 () Bool)

(assert (=> b!1567114 (=> (not res!698593) (not e!1006489))))

(assert (=> b!1567114 (= res!698593 (isBalanced!1663 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567115 () Bool)

(declare-fun res!698597 () Bool)

(assert (=> b!1567115 (=> (not res!698597) (not e!1006489))))

(assert (=> b!1567115 (= res!698597 (not (isEmpty!10200 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567116 () Bool)

(assert (=> b!1567116 (= e!1006489 (not (isEmpty!10200 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567117 () Bool)

(assert (=> b!1567117 (= e!1006490 e!1006489)))

(declare-fun res!698594 () Bool)

(assert (=> b!1567117 (=> (not res!698594) (not e!1006489))))

(assert (=> b!1567117 (= res!698594 (<= (- 1) (- (height!836 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1567118 () Bool)

(declare-fun res!698596 () Bool)

(assert (=> b!1567118 (=> (not res!698596) (not e!1006489))))

(assert (=> b!1567118 (= res!698596 (isBalanced!1663 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464570 (not res!698595)) b!1567117))

(assert (= (and b!1567117 res!698594) b!1567113))

(assert (= (and b!1567113 res!698598) b!1567114))

(assert (= (and b!1567114 res!698593) b!1567118))

(assert (= (and b!1567118 res!698596) b!1567115))

(assert (= (and b!1567115 res!698597) b!1567116))

(declare-fun m!1839789 () Bool)

(assert (=> b!1567118 m!1839789))

(declare-fun m!1839791 () Bool)

(assert (=> b!1567115 m!1839791))

(assert (=> b!1567117 m!1839335))

(assert (=> b!1567117 m!1839337))

(assert (=> b!1567113 m!1839335))

(assert (=> b!1567113 m!1839337))

(declare-fun m!1839793 () Bool)

(assert (=> b!1567116 m!1839793))

(declare-fun m!1839795 () Bool)

(assert (=> b!1567114 m!1839795))

(assert (=> b!1566126 d!464570))

(declare-fun d!464572 () Bool)

(declare-fun res!698599 () Bool)

(declare-fun e!1006491 () Bool)

(assert (=> d!464572 (=> (not res!698599) (not e!1006491))))

(assert (=> d!464572 (= res!698599 (not (isEmpty!10203 (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))))

(assert (=> d!464572 (= (inv!22409 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) e!1006491)))

(declare-fun b!1567119 () Bool)

(declare-fun res!698600 () Bool)

(assert (=> b!1567119 (=> (not res!698600) (not e!1006491))))

(assert (=> b!1567119 (= res!698600 (= (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) (list!6554 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))))

(declare-fun b!1567120 () Bool)

(assert (=> b!1567120 (= e!1006491 (= (size!13802 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) (size!13810 (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))))

(assert (= (and d!464572 res!698599) b!1567119))

(assert (= (and b!1567119 res!698600) b!1567120))

(declare-fun b_lambda!49345 () Bool)

(assert (=> (not b_lambda!49345) (not b!1567119)))

(declare-fun t!141979 () Bool)

(declare-fun tb!87637 () Bool)

(assert (=> (and b!1566193 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141979) tb!87637))

(declare-fun b!1567121 () Bool)

(declare-fun e!1006492 () Bool)

(declare-fun tp!461342 () Bool)

(assert (=> b!1567121 (= e!1006492 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) tp!461342))))

(declare-fun result!106096 () Bool)

(assert (=> tb!87637 (= result!106096 (and (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) e!1006492))))

(assert (= tb!87637 b!1567121))

(declare-fun m!1839797 () Bool)

(assert (=> b!1567121 m!1839797))

(declare-fun m!1839799 () Bool)

(assert (=> tb!87637 m!1839799))

(assert (=> b!1567119 t!141979))

(declare-fun b_and!109391 () Bool)

(assert (= b_and!109381 (and (=> t!141979 result!106096) b_and!109391)))

(declare-fun t!141981 () Bool)

(declare-fun tb!87639 () Bool)

(assert (=> (and b!1565698 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141981) tb!87639))

(declare-fun result!106098 () Bool)

(assert (= result!106098 result!106096))

(assert (=> b!1567119 t!141981))

(declare-fun b_and!109393 () Bool)

(assert (= b_and!109389 (and (=> t!141981 result!106098) b_and!109393)))

(declare-fun t!141983 () Bool)

(declare-fun tb!87641 () Bool)

(assert (=> (and b!1566152 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141983) tb!87641))

(declare-fun result!106100 () Bool)

(assert (= result!106100 result!106096))

(assert (=> b!1567119 t!141983))

(declare-fun b_and!109395 () Bool)

(assert (= b_and!109379 (and (=> t!141983 result!106100) b_and!109395)))

(declare-fun t!141985 () Bool)

(declare-fun tb!87643 () Bool)

(assert (=> (and b!1566217 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141985) tb!87643))

(declare-fun result!106102 () Bool)

(assert (= result!106102 result!106096))

(assert (=> b!1567119 t!141985))

(declare-fun b_and!109397 () Bool)

(assert (= b_and!109385 (and (=> t!141985 result!106102) b_and!109397)))

(declare-fun t!141987 () Bool)

(declare-fun tb!87645 () Bool)

(assert (=> (and b!1566156 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141987) tb!87645))

(declare-fun result!106104 () Bool)

(assert (= result!106104 result!106096))

(assert (=> b!1567119 t!141987))

(declare-fun b_and!109399 () Bool)

(assert (= b_and!109387 (and (=> t!141987 result!106104) b_and!109399)))

(declare-fun t!141989 () Bool)

(declare-fun tb!87647 () Bool)

(assert (=> (and b!1565476 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141989) tb!87647))

(declare-fun result!106106 () Bool)

(assert (= result!106106 result!106096))

(assert (=> b!1567119 t!141989))

(declare-fun b_and!109401 () Bool)

(assert (= b_and!109377 (and (=> t!141989 result!106106) b_and!109401)))

(declare-fun t!141991 () Bool)

(declare-fun tb!87649 () Bool)

(assert (=> (and b!1565729 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!141991) tb!87649))

(declare-fun result!106108 () Bool)

(assert (= result!106108 result!106096))

(assert (=> b!1567119 t!141991))

(declare-fun b_and!109403 () Bool)

(assert (= b_and!109383 (and (=> t!141991 result!106108) b_and!109403)))

(declare-fun m!1839801 () Bool)

(assert (=> d!464572 m!1839801))

(declare-fun m!1839803 () Bool)

(assert (=> b!1567119 m!1839803))

(assert (=> b!1567119 m!1839803))

(declare-fun m!1839805 () Bool)

(assert (=> b!1567119 m!1839805))

(declare-fun m!1839807 () Bool)

(assert (=> b!1567120 m!1839807))

(assert (=> b!1566153 d!464572))

(declare-fun b!1567136 () Bool)

(declare-fun e!1006498 () Bool)

(declare-fun e!1006499 () Bool)

(assert (=> b!1567136 (= e!1006498 e!1006499)))

(declare-fun res!698613 () Bool)

(assert (=> b!1567136 (=> (not res!698613) (not e!1006499))))

(assert (=> b!1567136 (= res!698613 (<= (- 1) (- (height!837 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) (height!837 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))))

(declare-fun b!1567137 () Bool)

(declare-fun res!698618 () Bool)

(assert (=> b!1567137 (=> (not res!698618) (not e!1006499))))

(assert (=> b!1567137 (= res!698618 (isBalanced!1665 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun b!1567138 () Bool)

(declare-fun res!698615 () Bool)

(assert (=> b!1567138 (=> (not res!698615) (not e!1006499))))

(assert (=> b!1567138 (= res!698615 (not (isEmpty!10204 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))))))

(declare-fun d!464574 () Bool)

(declare-fun res!698616 () Bool)

(assert (=> d!464574 (=> res!698616 e!1006498)))

(assert (=> d!464574 (= res!698616 (not ((_ is Node!5614) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(assert (=> d!464574 (= (isBalanced!1665 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) e!1006498)))

(declare-fun b!1567139 () Bool)

(declare-fun res!698614 () Bool)

(assert (=> b!1567139 (=> (not res!698614) (not e!1006499))))

(assert (=> b!1567139 (= res!698614 (<= (- (height!837 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) (height!837 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) 1))))

(declare-fun b!1567140 () Bool)

(declare-fun res!698617 () Bool)

(assert (=> b!1567140 (=> (not res!698617) (not e!1006499))))

(assert (=> b!1567140 (= res!698617 (isBalanced!1665 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun b!1567141 () Bool)

(assert (=> b!1567141 (= e!1006499 (not (isEmpty!10204 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))))))

(assert (= (and d!464574 (not res!698616)) b!1567136))

(assert (= (and b!1567136 res!698613) b!1567139))

(assert (= (and b!1567139 res!698614) b!1567137))

(assert (= (and b!1567137 res!698618) b!1567140))

(assert (= (and b!1567140 res!698617) b!1567138))

(assert (= (and b!1567138 res!698615) b!1567141))

(assert (=> b!1567139 m!1838683))

(assert (=> b!1567139 m!1838685))

(declare-fun m!1839911 () Bool)

(assert (=> b!1567140 m!1839911))

(assert (=> b!1567136 m!1838683))

(assert (=> b!1567136 m!1838685))

(declare-fun m!1839913 () Bool)

(assert (=> b!1567137 m!1839913))

(declare-fun m!1839915 () Bool)

(assert (=> b!1567141 m!1839915))

(declare-fun m!1839917 () Bool)

(assert (=> b!1567138 m!1839917))

(assert (=> d!463948 d!464574))

(declare-fun d!464590 () Bool)

(assert (=> d!464590 (= (list!6549 lt!542027) (list!6550 (c!253628 lt!542027)))))

(declare-fun bs!389795 () Bool)

(assert (= bs!389795 d!464590))

(declare-fun m!1839919 () Bool)

(assert (=> bs!389795 m!1839919))

(assert (=> d!463882 d!464590))

(declare-fun d!464592 () Bool)

(declare-fun e!1006514 () Bool)

(assert (=> d!464592 e!1006514))

(declare-fun res!698626 () Bool)

(assert (=> d!464592 (=> (not res!698626) (not e!1006514))))

(declare-fun lt!542862 () BalanceConc!11174)

(assert (=> d!464592 (= res!698626 (= (list!6549 lt!542862) (Cons!17030 (h!22431 (t!141745 lt!541850)) Nil!17030)))))

(declare-fun choose!9347 (Token!5532) BalanceConc!11174)

(assert (=> d!464592 (= lt!542862 (choose!9347 (h!22431 (t!141745 lt!541850))))))

(assert (=> d!464592 (= (singleton!555 (h!22431 (t!141745 lt!541850))) lt!542862)))

(declare-fun b!1567160 () Bool)

(assert (=> b!1567160 (= e!1006514 (isBalanced!1663 (c!253628 lt!542862)))))

(assert (= (and d!464592 res!698626) b!1567160))

(declare-fun m!1839943 () Bool)

(assert (=> d!464592 m!1839943))

(declare-fun m!1839945 () Bool)

(assert (=> d!464592 m!1839945))

(declare-fun m!1839947 () Bool)

(assert (=> b!1567160 m!1839947))

(assert (=> d!463882 d!464592))

(declare-fun bs!389803 () Bool)

(declare-fun d!464608 () Bool)

(assert (= bs!389803 (and d!464608 d!463946)))

(declare-fun lambda!66274 () Int)

(assert (=> bs!389803 (= (= (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (= lambda!66274 lambda!66225))))

(declare-fun bs!389804 () Bool)

(assert (= bs!389804 (and d!464608 d!464398)))

(assert (=> bs!389804 (= (= (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (= lambda!66274 lambda!66268))))

(assert (=> d!464608 true))

(assert (=> d!464608 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (dynLambda!7597 order!10097 lambda!66274))))

(assert (=> d!464608 (= (equivClasses!1072 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (Forall2!494 lambda!66274))))

(declare-fun bs!389805 () Bool)

(assert (= bs!389805 d!464608))

(declare-fun m!1839949 () Bool)

(assert (=> bs!389805 m!1839949))

(assert (=> b!1566139 d!464608))

(declare-fun d!464610 () Bool)

(declare-fun lt!542863 () Int)

(assert (=> d!464610 (= lt!542863 (size!13806 (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464610 (= lt!542863 (ite ((_ is Empty!5615) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 0 (ite ((_ is Leaf!8327) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (csize!11461 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (csize!11460 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> d!464610 (= (size!13807 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) lt!542863)))

(declare-fun bs!389806 () Bool)

(assert (= bs!389806 d!464610))

(assert (=> bs!389806 m!1837285))

(assert (=> bs!389806 m!1837285))

(declare-fun m!1839951 () Bool)

(assert (=> bs!389806 m!1839951))

(assert (=> d!463936 d!464610))

(declare-fun d!464612 () Bool)

(declare-fun lt!542864 () Int)

(assert (=> d!464612 (= lt!542864 (size!13806 (list!6550 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464612 (= lt!542864 (ite ((_ is Empty!5615) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 0 (ite ((_ is Leaf!8327) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (csize!11461 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (csize!11460 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> d!464612 (= (size!13807 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) lt!542864)))

(declare-fun bs!389807 () Bool)

(assert (= bs!389807 d!464612))

(assert (=> bs!389807 m!1837287))

(assert (=> bs!389807 m!1837287))

(declare-fun m!1839953 () Bool)

(assert (=> bs!389807 m!1839953))

(assert (=> d!463936 d!464612))

(assert (=> b!1566127 d!463848))

(declare-fun d!464614 () Bool)

(declare-fun res!698627 () Bool)

(declare-fun e!1006517 () Bool)

(assert (=> d!464614 (=> (not res!698627) (not e!1006517))))

(assert (=> d!464614 (= res!698627 (<= (size!13806 (list!6552 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) 512))))

(assert (=> d!464614 (= (inv!22398 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1006517)))

(declare-fun b!1567165 () Bool)

(declare-fun res!698628 () Bool)

(assert (=> b!1567165 (=> (not res!698628) (not e!1006517))))

(assert (=> b!1567165 (= res!698628 (= (csize!11461 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (size!13806 (list!6552 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1567166 () Bool)

(assert (=> b!1567166 (= e!1006517 (and (> (csize!11461 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 0) (<= (csize!11461 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 512)))))

(assert (= (and d!464614 res!698627) b!1567165))

(assert (= (and b!1567165 res!698628) b!1567166))

(declare-fun m!1839955 () Bool)

(assert (=> d!464614 m!1839955))

(assert (=> d!464614 m!1839955))

(declare-fun m!1839957 () Bool)

(assert (=> d!464614 m!1839957))

(assert (=> b!1567165 m!1839955))

(assert (=> b!1567165 m!1839955))

(assert (=> b!1567165 m!1839957))

(assert (=> b!1565962 d!464614))

(declare-fun d!464616 () Bool)

(declare-fun charsToInt!0 (List!17098) (_ BitVec 32))

(assert (=> d!464616 (= (inv!16 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) (= (charsToInt!0 (text!21958 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94679 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun bs!389808 () Bool)

(assert (= bs!389808 d!464616))

(declare-fun m!1839967 () Bool)

(assert (=> bs!389808 m!1839967))

(assert (=> b!1565902 d!464616))

(declare-fun d!464620 () Bool)

(assert (=> d!464620 (= (list!6549 (_1!9701 lt!542008)) (list!6550 (c!253628 (_1!9701 lt!542008))))))

(declare-fun bs!389809 () Bool)

(assert (= bs!389809 d!464620))

(declare-fun m!1839969 () Bool)

(assert (=> bs!389809 m!1839969))

(assert (=> b!1565839 d!464620))

(declare-fun d!464622 () Bool)

(declare-fun e!1006520 () Bool)

(assert (=> d!464622 e!1006520))

(declare-fun c!253954 () Bool)

(declare-fun lt!542866 () tuple2!16600)

(assert (=> d!464622 (= c!253954 (> (size!13806 (_1!9702 lt!542866)) 0))))

(declare-fun e!1006521 () tuple2!16600)

(assert (=> d!464622 (= lt!542866 e!1006521)))

(declare-fun c!253955 () Bool)

(declare-fun lt!542865 () Option!3069)

(assert (=> d!464622 (= c!253955 ((_ is Some!3068) lt!542865))))

(assert (=> d!464622 (= lt!542865 (maxPrefix!1223 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))

(assert (=> d!464622 (= (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))) lt!542866)))

(declare-fun b!1567169 () Bool)

(declare-fun e!1006519 () Bool)

(assert (=> b!1567169 (= e!1006519 (not (isEmpty!10202 (_1!9702 lt!542866))))))

(declare-fun b!1567170 () Bool)

(assert (=> b!1567170 (= e!1006520 (= (_2!9702 lt!542866) (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))

(declare-fun b!1567171 () Bool)

(declare-fun lt!542867 () tuple2!16600)

(assert (=> b!1567171 (= e!1006521 (tuple2!16601 (Cons!17030 (_1!9707 (v!23849 lt!542865)) (_1!9702 lt!542867)) (_2!9702 lt!542867)))))

(assert (=> b!1567171 (= lt!542867 (lexList!757 Lexer!2610 (rules!12084 thiss!10002) (_2!9707 (v!23849 lt!542865))))))

(declare-fun b!1567172 () Bool)

(assert (=> b!1567172 (= e!1006521 (tuple2!16601 Nil!17030 (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))

(declare-fun b!1567173 () Bool)

(assert (=> b!1567173 (= e!1006520 e!1006519)))

(declare-fun res!698629 () Bool)

(assert (=> b!1567173 (= res!698629 (< (size!13810 (_2!9702 lt!542866)) (size!13810 (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))))

(assert (=> b!1567173 (=> (not res!698629) (not e!1006519))))

(assert (= (and d!464622 c!253955) b!1567171))

(assert (= (and d!464622 (not c!253955)) b!1567172))

(assert (= (and d!464622 c!253954) b!1567173))

(assert (= (and d!464622 (not c!253954)) b!1567170))

(assert (= (and b!1567173 res!698629) b!1567169))

(declare-fun m!1839971 () Bool)

(assert (=> d!464622 m!1839971))

(assert (=> d!464622 m!1837401))

(declare-fun m!1839973 () Bool)

(assert (=> d!464622 m!1839973))

(declare-fun m!1839975 () Bool)

(assert (=> b!1567169 m!1839975))

(declare-fun m!1839977 () Bool)

(assert (=> b!1567171 m!1839977))

(declare-fun m!1839979 () Bool)

(assert (=> b!1567173 m!1839979))

(assert (=> b!1567173 m!1837401))

(assert (=> b!1567173 m!1839517))

(assert (=> b!1565839 d!464622))

(declare-fun d!464624 () Bool)

(assert (=> d!464624 (= (list!6554 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))) (list!6556 (c!253626 (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))

(declare-fun bs!389810 () Bool)

(assert (= bs!389810 d!464624))

(declare-fun m!1839981 () Bool)

(assert (=> bs!389810 m!1839981))

(assert (=> b!1565839 d!464624))

(declare-fun d!464626 () Bool)

(assert (=> d!464626 (= (list!6549 lt!542000) (list!6550 (c!253628 lt!542000)))))

(declare-fun bs!389811 () Bool)

(assert (= bs!389811 d!464626))

(declare-fun m!1839983 () Bool)

(assert (=> bs!389811 m!1839983))

(assert (=> d!463854 d!464626))

(declare-fun d!464628 () Bool)

(declare-fun e!1006522 () Bool)

(assert (=> d!464628 e!1006522))

(declare-fun res!698630 () Bool)

(assert (=> d!464628 (=> (not res!698630) (not e!1006522))))

(declare-fun lt!542868 () BalanceConc!11174)

(assert (=> d!464628 (= res!698630 (= (list!6549 lt!542868) (Cons!17030 (h!22431 lt!541850) Nil!17030)))))

(assert (=> d!464628 (= lt!542868 (choose!9347 (h!22431 lt!541850)))))

(assert (=> d!464628 (= (singleton!555 (h!22431 lt!541850)) lt!542868)))

(declare-fun b!1567174 () Bool)

(assert (=> b!1567174 (= e!1006522 (isBalanced!1663 (c!253628 lt!542868)))))

(assert (= (and d!464628 res!698630) b!1567174))

(declare-fun m!1839985 () Bool)

(assert (=> d!464628 m!1839985))

(declare-fun m!1839987 () Bool)

(assert (=> d!464628 m!1839987))

(declare-fun m!1839989 () Bool)

(assert (=> b!1567174 m!1839989))

(assert (=> d!463854 d!464628))

(declare-fun d!464630 () Bool)

(declare-fun res!698635 () Bool)

(declare-fun e!1006525 () Bool)

(assert (=> d!464630 (=> (not res!698635) (not e!1006525))))

(assert (=> d!464630 (= res!698635 (<= (size!13810 (list!6559 (xs!8414 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) 512))))

(assert (=> d!464630 (= (inv!22412 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) e!1006525)))

(declare-fun b!1567179 () Bool)

(declare-fun res!698636 () Bool)

(assert (=> b!1567179 (=> (not res!698636) (not e!1006525))))

(assert (=> b!1567179 (= res!698636 (= (csize!11459 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) (size!13810 (list!6559 (xs!8414 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))))

(declare-fun b!1567180 () Bool)

(assert (=> b!1567180 (= e!1006525 (and (> (csize!11459 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) 0) (<= (csize!11459 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))) 512)))))

(assert (= (and d!464630 res!698635) b!1567179))

(assert (= (and b!1567179 res!698636) b!1567180))

(declare-fun m!1839991 () Bool)

(assert (=> d!464630 m!1839991))

(assert (=> d!464630 m!1839991))

(declare-fun m!1839993 () Bool)

(assert (=> d!464630 m!1839993))

(assert (=> b!1567179 m!1839991))

(assert (=> b!1567179 m!1839991))

(assert (=> b!1567179 m!1839993))

(assert (=> b!1565881 d!464630))

(assert (=> d!463932 d!463776))

(declare-fun d!464632 () Bool)

(declare-fun c!253956 () Bool)

(assert (=> d!464632 (= c!253956 ((_ is Node!5614) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(declare-fun e!1006526 () Bool)

(assert (=> d!464632 (= (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) e!1006526)))

(declare-fun b!1567181 () Bool)

(assert (=> b!1567181 (= e!1006526 (inv!22411 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(declare-fun b!1567182 () Bool)

(declare-fun e!1006527 () Bool)

(assert (=> b!1567182 (= e!1006526 e!1006527)))

(declare-fun res!698637 () Bool)

(assert (=> b!1567182 (= res!698637 (not ((_ is Leaf!8326) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(assert (=> b!1567182 (=> res!698637 e!1006527)))

(declare-fun b!1567183 () Bool)

(assert (=> b!1567183 (= e!1006527 (inv!22412 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(assert (= (and d!464632 c!253956) b!1567181))

(assert (= (and d!464632 (not c!253956)) b!1567182))

(assert (= (and b!1567182 (not res!698637)) b!1567183))

(declare-fun m!1839995 () Bool)

(assert (=> b!1567181 m!1839995))

(declare-fun m!1839997 () Bool)

(assert (=> b!1567183 m!1839997))

(assert (=> b!1565953 d!464632))

(declare-fun d!464634 () Bool)

(declare-fun res!698640 () Bool)

(declare-fun e!1006529 () Bool)

(assert (=> d!464634 (=> res!698640 e!1006529)))

(assert (=> d!464634 (= res!698640 (not ((_ is Node!5615) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464634 (= (isBalanced!1663 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1006529)))

(declare-fun b!1567184 () Bool)

(declare-fun res!698643 () Bool)

(declare-fun e!1006528 () Bool)

(assert (=> b!1567184 (=> (not res!698643) (not e!1006528))))

(assert (=> b!1567184 (= res!698643 (<= (- (height!836 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) 1))))

(declare-fun b!1567185 () Bool)

(declare-fun res!698638 () Bool)

(assert (=> b!1567185 (=> (not res!698638) (not e!1006528))))

(assert (=> b!1567185 (= res!698638 (isBalanced!1663 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567186 () Bool)

(declare-fun res!698642 () Bool)

(assert (=> b!1567186 (=> (not res!698642) (not e!1006528))))

(assert (=> b!1567186 (= res!698642 (not (isEmpty!10200 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567187 () Bool)

(assert (=> b!1567187 (= e!1006528 (not (isEmpty!10200 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567188 () Bool)

(assert (=> b!1567188 (= e!1006529 e!1006528)))

(declare-fun res!698639 () Bool)

(assert (=> b!1567188 (=> (not res!698639) (not e!1006528))))

(assert (=> b!1567188 (= res!698639 (<= (- 1) (- (height!836 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1567189 () Bool)

(declare-fun res!698641 () Bool)

(assert (=> b!1567189 (=> (not res!698641) (not e!1006528))))

(assert (=> b!1567189 (= res!698641 (isBalanced!1663 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464634 (not res!698640)) b!1567188))

(assert (= (and b!1567188 res!698639) b!1567184))

(assert (= (and b!1567184 res!698643) b!1567185))

(assert (= (and b!1567185 res!698638) b!1567189))

(assert (= (and b!1567189 res!698641) b!1567186))

(assert (= (and b!1567186 res!698642) b!1567187))

(declare-fun m!1839999 () Bool)

(assert (=> b!1567189 m!1839999))

(declare-fun m!1840001 () Bool)

(assert (=> b!1567186 m!1840001))

(assert (=> b!1567188 m!1839731))

(assert (=> b!1567188 m!1839733))

(assert (=> b!1567184 m!1839731))

(assert (=> b!1567184 m!1839733))

(declare-fun m!1840003 () Bool)

(assert (=> b!1567187 m!1840003))

(declare-fun m!1840005 () Bool)

(assert (=> b!1567185 m!1840005))

(assert (=> b!1566018 d!464634))

(declare-fun b!1567190 () Bool)

(declare-fun e!1006530 () Bool)

(declare-fun e!1006531 () Bool)

(assert (=> b!1567190 (= e!1006530 e!1006531)))

(declare-fun res!698644 () Bool)

(assert (=> b!1567190 (=> (not res!698644) (not e!1006531))))

(assert (=> b!1567190 (= res!698644 (<= (- 1) (- (height!837 (left!13803 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))) (height!837 (right!14133 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))))

(declare-fun b!1567191 () Bool)

(declare-fun res!698649 () Bool)

(assert (=> b!1567191 (=> (not res!698649) (not e!1006531))))

(assert (=> b!1567191 (= res!698649 (isBalanced!1665 (left!13803 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun b!1567192 () Bool)

(declare-fun res!698646 () Bool)

(assert (=> b!1567192 (=> (not res!698646) (not e!1006531))))

(assert (=> b!1567192 (= res!698646 (not (isEmpty!10204 (left!13803 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))))

(declare-fun d!464636 () Bool)

(declare-fun res!698647 () Bool)

(assert (=> d!464636 (=> res!698647 e!1006530)))

(assert (=> d!464636 (= res!698647 (not ((_ is Node!5614) (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(assert (=> d!464636 (= (isBalanced!1665 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) e!1006530)))

(declare-fun b!1567193 () Bool)

(declare-fun res!698645 () Bool)

(assert (=> b!1567193 (=> (not res!698645) (not e!1006531))))

(assert (=> b!1567193 (= res!698645 (<= (- (height!837 (left!13803 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))) (height!837 (right!14133 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))) 1))))

(declare-fun b!1567194 () Bool)

(declare-fun res!698648 () Bool)

(assert (=> b!1567194 (=> (not res!698648) (not e!1006531))))

(assert (=> b!1567194 (= res!698648 (isBalanced!1665 (right!14133 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun b!1567195 () Bool)

(assert (=> b!1567195 (= e!1006531 (not (isEmpty!10204 (right!14133 (++!4435 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))))

(assert (= (and d!464636 (not res!698647)) b!1567190))

(assert (= (and b!1567190 res!698644) b!1567193))

(assert (= (and b!1567193 res!698645) b!1567191))

(assert (= (and b!1567191 res!698649) b!1567194))

(assert (= (and b!1567194 res!698648) b!1567192))

(assert (= (and b!1567192 res!698646) b!1567195))

(declare-fun m!1840007 () Bool)

(assert (=> b!1567193 m!1840007))

(declare-fun m!1840009 () Bool)

(assert (=> b!1567193 m!1840009))

(declare-fun m!1840011 () Bool)

(assert (=> b!1567194 m!1840011))

(assert (=> b!1567190 m!1840007))

(assert (=> b!1567190 m!1840009))

(declare-fun m!1840013 () Bool)

(assert (=> b!1567191 m!1840013))

(declare-fun m!1840015 () Bool)

(assert (=> b!1567195 m!1840015))

(declare-fun m!1840017 () Bool)

(assert (=> b!1567192 m!1840017))

(assert (=> b!1566059 d!464636))

(assert (=> b!1566059 d!464264))

(declare-fun d!464638 () Bool)

(declare-fun c!253959 () Bool)

(assert (=> d!464638 (= c!253959 ((_ is Nil!17030) lt!541976))))

(declare-fun e!1006534 () (InoxSet Token!5532))

(assert (=> d!464638 (= (content!2356 lt!541976) e!1006534)))

(declare-fun b!1567200 () Bool)

(assert (=> b!1567200 (= e!1006534 ((as const (Array Token!5532 Bool)) false))))

(declare-fun b!1567201 () Bool)

(assert (=> b!1567201 (= e!1006534 ((_ map or) (store ((as const (Array Token!5532 Bool)) false) (h!22431 lt!541976) true) (content!2356 (t!141745 lt!541976))))))

(assert (= (and d!464638 c!253959) b!1567200))

(assert (= (and d!464638 (not c!253959)) b!1567201))

(declare-fun m!1840019 () Bool)

(assert (=> b!1567201 m!1840019))

(declare-fun m!1840021 () Bool)

(assert (=> b!1567201 m!1840021))

(assert (=> d!463814 d!464638))

(declare-fun d!464640 () Bool)

(declare-fun c!253960 () Bool)

(assert (=> d!464640 (= c!253960 ((_ is Nil!17030) (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun e!1006535 () (InoxSet Token!5532))

(assert (=> d!464640 (= (content!2356 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1006535)))

(declare-fun b!1567202 () Bool)

(assert (=> b!1567202 (= e!1006535 ((as const (Array Token!5532 Bool)) false))))

(declare-fun b!1567203 () Bool)

(assert (=> b!1567203 (= e!1006535 ((_ map or) (store ((as const (Array Token!5532 Bool)) false) (h!22431 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) true) (content!2356 (t!141745 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (= (and d!464640 c!253960) b!1567202))

(assert (= (and d!464640 (not c!253960)) b!1567203))

(declare-fun m!1840023 () Bool)

(assert (=> b!1567203 m!1840023))

(assert (=> b!1567203 m!1839343))

(assert (=> d!463814 d!464640))

(declare-fun d!464642 () Bool)

(declare-fun c!253961 () Bool)

(assert (=> d!464642 (= c!253961 ((_ is Nil!17030) (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun e!1006536 () (InoxSet Token!5532))

(assert (=> d!464642 (= (content!2356 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1006536)))

(declare-fun b!1567204 () Bool)

(assert (=> b!1567204 (= e!1006536 ((as const (Array Token!5532 Bool)) false))))

(declare-fun b!1567205 () Bool)

(assert (=> b!1567205 (= e!1006536 ((_ map or) (store ((as const (Array Token!5532 Bool)) false) (h!22431 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) true) (content!2356 (t!141745 (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (= (and d!464642 c!253961) b!1567204))

(assert (= (and d!464642 (not c!253961)) b!1567205))

(declare-fun m!1840025 () Bool)

(assert (=> b!1567205 m!1840025))

(declare-fun m!1840027 () Bool)

(assert (=> b!1567205 m!1840027))

(assert (=> d!463814 d!464642))

(assert (=> d!463956 d!463958))

(declare-fun d!464644 () Bool)

(assert (=> d!464644 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))

(assert (=> d!464644 true))

(declare-fun _$77!667 () Unit!26198)

(assert (=> d!464644 (= (choose!9342 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))) (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) _$77!667)))

(declare-fun bs!389812 () Bool)

(assert (= bs!389812 d!464644))

(assert (=> bs!389812 m!1837069))

(assert (=> d!463956 d!464644))

(assert (=> d!463956 d!463678))

(declare-fun d!464646 () Bool)

(declare-fun c!253962 () Bool)

(assert (=> d!464646 (= c!253962 ((_ is Node!5615) (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun e!1006537 () Bool)

(assert (=> d!464646 (= (inv!22394 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) e!1006537)))

(declare-fun b!1567206 () Bool)

(assert (=> b!1567206 (= e!1006537 (inv!22397 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567207 () Bool)

(declare-fun e!1006538 () Bool)

(assert (=> b!1567207 (= e!1006537 e!1006538)))

(declare-fun res!698650 () Bool)

(assert (=> b!1567207 (= res!698650 (not ((_ is Leaf!8327) (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1567207 (=> res!698650 e!1006538)))

(declare-fun b!1567208 () Bool)

(assert (=> b!1567208 (= e!1006538 (inv!22398 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464646 c!253962) b!1567206))

(assert (= (and d!464646 (not c!253962)) b!1567207))

(assert (= (and b!1567207 (not res!698650)) b!1567208))

(declare-fun m!1840029 () Bool)

(assert (=> b!1567206 m!1840029))

(declare-fun m!1840031 () Bool)

(assert (=> b!1567208 m!1840031))

(assert (=> b!1566167 d!464646))

(declare-fun d!464648 () Bool)

(declare-fun c!253963 () Bool)

(assert (=> d!464648 (= c!253963 ((_ is Node!5615) (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun e!1006539 () Bool)

(assert (=> d!464648 (= (inv!22394 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) e!1006539)))

(declare-fun b!1567209 () Bool)

(assert (=> b!1567209 (= e!1006539 (inv!22397 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567210 () Bool)

(declare-fun e!1006540 () Bool)

(assert (=> b!1567210 (= e!1006539 e!1006540)))

(declare-fun res!698651 () Bool)

(assert (=> b!1567210 (= res!698651 (not ((_ is Leaf!8327) (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1567210 (=> res!698651 e!1006540)))

(declare-fun b!1567211 () Bool)

(assert (=> b!1567211 (= e!1006540 (inv!22398 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464648 c!253963) b!1567209))

(assert (= (and d!464648 (not c!253963)) b!1567210))

(assert (= (and b!1567210 (not res!698651)) b!1567211))

(declare-fun m!1840033 () Bool)

(assert (=> b!1567209 m!1840033))

(declare-fun m!1840035 () Bool)

(assert (=> b!1567211 m!1840035))

(assert (=> b!1566167 d!464648))

(assert (=> b!1565966 d!464558))

(declare-fun b!1567213 () Bool)

(declare-fun res!698652 () Bool)

(declare-fun e!1006541 () Bool)

(assert (=> b!1567213 (=> res!698652 e!1006541)))

(assert (=> b!1567213 (= res!698652 (not ((_ is IntegerValue!9221) (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(declare-fun e!1006543 () Bool)

(assert (=> b!1567213 (= e!1006543 e!1006541)))

(declare-fun b!1567214 () Bool)

(assert (=> b!1567214 (= e!1006543 (inv!17 (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1567215 () Bool)

(declare-fun e!1006542 () Bool)

(assert (=> b!1567215 (= e!1006542 (inv!16 (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1567216 () Bool)

(assert (=> b!1567216 (= e!1006542 e!1006543)))

(declare-fun c!253965 () Bool)

(assert (=> b!1567216 (= c!253965 ((_ is IntegerValue!9220) (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun d!464650 () Bool)

(declare-fun c!253964 () Bool)

(assert (=> d!464650 (= c!253964 ((_ is IntegerValue!9219) (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (=> d!464650 (= (inv!21 (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) e!1006542)))

(declare-fun b!1567212 () Bool)

(assert (=> b!1567212 (= e!1006541 (inv!15 (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464650 c!253964) b!1567215))

(assert (= (and d!464650 (not c!253964)) b!1567216))

(assert (= (and b!1567216 c!253965) b!1567214))

(assert (= (and b!1567216 (not c!253965)) b!1567213))

(assert (= (and b!1567213 (not res!698652)) b!1567212))

(declare-fun m!1840037 () Bool)

(assert (=> b!1567214 m!1840037))

(declare-fun m!1840039 () Bool)

(assert (=> b!1567215 m!1840039))

(declare-fun m!1840041 () Bool)

(assert (=> b!1567212 m!1840041))

(assert (=> b!1566215 d!464650))

(assert (=> b!1565867 d!464460))

(assert (=> b!1565867 d!464462))

(declare-fun d!464652 () Bool)

(declare-fun e!1006546 () Bool)

(assert (=> d!464652 e!1006546))

(declare-fun res!698655 () Bool)

(assert (=> d!464652 (=> (not res!698655) (not e!1006546))))

(declare-fun lt!542871 () List!17105)

(declare-fun noDuplicate!241 (List!17105) Bool)

(assert (=> d!464652 (= res!698655 (noDuplicate!241 lt!542871))))

(declare-fun choose!9350 ((InoxSet Context!1636)) List!17105)

(assert (=> d!464652 (= lt!542871 (choose!9350 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))))

(assert (=> d!464652 (= (toList!864 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))) lt!542871)))

(declare-fun b!1567219 () Bool)

(declare-fun content!2360 (List!17105) (InoxSet Context!1636))

(assert (=> b!1567219 (= e!1006546 (= (content!2360 lt!542871) (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))))

(assert (= (and d!464652 res!698655) b!1567219))

(declare-fun m!1840043 () Bool)

(assert (=> d!464652 m!1840043))

(assert (=> d!464652 m!1837879))

(declare-fun m!1840045 () Bool)

(assert (=> d!464652 m!1840045))

(declare-fun m!1840047 () Bool)

(assert (=> b!1567219 m!1840047))

(assert (=> d!464020 d!464652))

(declare-fun d!464654 () Bool)

(declare-fun drop!801 (List!17099 Int) List!17099)

(assert (=> d!464654 (= (dropList!499 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192) (drop!801 (list!6556 (c!253626 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) lt!542192))))

(declare-fun bs!389813 () Bool)

(assert (= bs!389813 d!464654))

(declare-fun m!1840049 () Bool)

(assert (=> bs!389813 m!1840049))

(assert (=> bs!389813 m!1840049))

(declare-fun m!1840051 () Bool)

(assert (=> bs!389813 m!1840051))

(assert (=> d!464020 d!464654))

(declare-fun d!464656 () Bool)

(declare-fun c!253970 () Bool)

(assert (=> d!464656 (= c!253970 (isEmpty!10203 lt!542191))))

(declare-fun e!1006553 () Bool)

(assert (=> d!464656 (= (prefixMatch!327 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) lt!542191) e!1006553)))

(declare-fun b!1567230 () Bool)

(declare-fun lostCause!399 (Regex!4311) Bool)

(assert (=> b!1567230 (= e!1006553 (not (lostCause!399 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))))

(declare-fun b!1567231 () Bool)

(declare-fun derivativeStep!1033 (Regex!4311 C!8796) Regex!4311)

(assert (=> b!1567231 (= e!1006553 (prefixMatch!327 (derivativeStep!1033 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (head!3131 lt!542191)) (tail!2226 lt!542191)))))

(assert (= (and d!464656 c!253970) b!1567230))

(assert (= (and d!464656 (not c!253970)) b!1567231))

(declare-fun m!1840053 () Bool)

(assert (=> d!464656 m!1840053))

(assert (=> b!1567230 m!1837143))

(declare-fun m!1840055 () Bool)

(assert (=> b!1567230 m!1840055))

(declare-fun m!1840057 () Bool)

(assert (=> b!1567231 m!1840057))

(assert (=> b!1567231 m!1837143))

(assert (=> b!1567231 m!1840057))

(declare-fun m!1840059 () Bool)

(assert (=> b!1567231 m!1840059))

(declare-fun m!1840061 () Bool)

(assert (=> b!1567231 m!1840061))

(assert (=> b!1567231 m!1840059))

(assert (=> b!1567231 m!1840061))

(declare-fun m!1840063 () Bool)

(assert (=> b!1567231 m!1840063))

(assert (=> d!464020 d!464656))

(declare-fun d!464658 () Bool)

(declare-fun c!253976 () Bool)

(assert (=> d!464658 (= c!253976 (= 0 (size!13804 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-fun e!1006565 () Bool)

(assert (=> d!464658 (= (prefixMatchZipperSequence!394 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))) (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) 0) e!1006565)))

(declare-fun b!1567248 () Bool)

(declare-fun lostCauseZipper!22 ((InoxSet Context!1636)) Bool)

(assert (=> b!1567248 (= e!1006565 (not (lostCauseZipper!22 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))))

(declare-fun b!1567249 () Bool)

(declare-fun derivationStepZipper!46 ((InoxSet Context!1636) C!8796) (InoxSet Context!1636))

(assert (=> b!1567249 (= e!1006565 (prefixMatchZipperSequence!394 (derivationStepZipper!46 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))) (apply!4133 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) 0)) (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) (+ 0 1)))))

(assert (= (and d!464658 c!253976) b!1567248))

(assert (= (and d!464658 (not c!253976)) b!1567249))

(assert (=> d!464658 m!1837145))

(declare-fun m!1840103 () Bool)

(assert (=> d!464658 m!1840103))

(assert (=> b!1567248 m!1837879))

(declare-fun m!1840105 () Bool)

(assert (=> b!1567248 m!1840105))

(assert (=> b!1567249 m!1837145))

(declare-fun m!1840107 () Bool)

(assert (=> b!1567249 m!1840107))

(assert (=> b!1567249 m!1837879))

(assert (=> b!1567249 m!1840107))

(declare-fun m!1840109 () Bool)

(assert (=> b!1567249 m!1840109))

(assert (=> b!1567249 m!1840109))

(assert (=> b!1567249 m!1837145))

(declare-fun m!1840111 () Bool)

(assert (=> b!1567249 m!1840111))

(assert (=> d!464020 d!464658))

(declare-fun b!1567281 () Bool)

(declare-fun e!1006592 () Bool)

(declare-fun call!102475 () Bool)

(assert (=> b!1567281 (= e!1006592 call!102475)))

(declare-fun c!253986 () Bool)

(declare-fun call!102476 () Bool)

(declare-fun bm!102469 () Bool)

(declare-fun c!253985 () Bool)

(assert (=> bm!102469 (= call!102476 (validRegex!1723 (ite c!253986 (reg!4640 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))) (ite c!253985 (regOne!9135 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))) (regTwo!9134 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))))))

(declare-fun b!1567282 () Bool)

(declare-fun e!1006591 () Bool)

(declare-fun e!1006595 () Bool)

(assert (=> b!1567282 (= e!1006591 e!1006595)))

(assert (=> b!1567282 (= c!253985 ((_ is Union!4311) (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))

(declare-fun b!1567283 () Bool)

(declare-fun res!698683 () Bool)

(declare-fun e!1006589 () Bool)

(assert (=> b!1567283 (=> res!698683 e!1006589)))

(assert (=> b!1567283 (= res!698683 (not ((_ is Concat!7385) (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))))

(assert (=> b!1567283 (= e!1006595 e!1006589)))

(declare-fun bm!102470 () Bool)

(assert (=> bm!102470 (= call!102475 (validRegex!1723 (ite c!253985 (regTwo!9135 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))) (regOne!9134 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))))

(declare-fun b!1567284 () Bool)

(declare-fun e!1006593 () Bool)

(assert (=> b!1567284 (= e!1006593 call!102476)))

(declare-fun b!1567286 () Bool)

(assert (=> b!1567286 (= e!1006591 e!1006593)))

(declare-fun res!698679 () Bool)

(declare-fun nullable!1283 (Regex!4311) Bool)

(assert (=> b!1567286 (= res!698679 (not (nullable!1283 (reg!4640 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))))

(assert (=> b!1567286 (=> (not res!698679) (not e!1006593))))

(declare-fun b!1567287 () Bool)

(declare-fun e!1006594 () Bool)

(declare-fun call!102474 () Bool)

(assert (=> b!1567287 (= e!1006594 call!102474)))

(declare-fun bm!102471 () Bool)

(assert (=> bm!102471 (= call!102474 call!102476)))

(declare-fun b!1567288 () Bool)

(declare-fun e!1006590 () Bool)

(assert (=> b!1567288 (= e!1006590 e!1006591)))

(assert (=> b!1567288 (= c!253986 ((_ is Star!4311) (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))

(declare-fun b!1567289 () Bool)

(declare-fun res!698681 () Bool)

(assert (=> b!1567289 (=> (not res!698681) (not e!1006592))))

(assert (=> b!1567289 (= res!698681 call!102474)))

(assert (=> b!1567289 (= e!1006595 e!1006592)))

(declare-fun d!464668 () Bool)

(declare-fun res!698682 () Bool)

(assert (=> d!464668 (=> res!698682 e!1006590)))

(assert (=> d!464668 (= res!698682 ((_ is ElementMatch!4311) (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))

(assert (=> d!464668 (= (validRegex!1723 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))) e!1006590)))

(declare-fun b!1567285 () Bool)

(assert (=> b!1567285 (= e!1006589 e!1006594)))

(declare-fun res!698680 () Bool)

(assert (=> b!1567285 (=> (not res!698680) (not e!1006594))))

(assert (=> b!1567285 (= res!698680 call!102475)))

(assert (= (and d!464668 (not res!698682)) b!1567288))

(assert (= (and b!1567288 c!253986) b!1567286))

(assert (= (and b!1567288 (not c!253986)) b!1567282))

(assert (= (and b!1567286 res!698679) b!1567284))

(assert (= (and b!1567282 c!253985) b!1567289))

(assert (= (and b!1567282 (not c!253985)) b!1567283))

(assert (= (and b!1567289 res!698681) b!1567281))

(assert (= (and b!1567283 (not res!698683)) b!1567285))

(assert (= (and b!1567285 res!698680) b!1567287))

(assert (= (or b!1567289 b!1567287) bm!102471))

(assert (= (or b!1567281 b!1567285) bm!102470))

(assert (= (or b!1567284 bm!102471) bm!102469))

(declare-fun m!1840137 () Bool)

(assert (=> bm!102469 m!1840137))

(declare-fun m!1840139 () Bool)

(assert (=> bm!102470 m!1840139))

(declare-fun m!1840141 () Bool)

(assert (=> b!1567286 m!1840141))

(assert (=> d!464020 d!464668))

(declare-fun d!464678 () Bool)

(declare-fun c!253987 () Bool)

(assert (=> d!464678 (= c!253987 (= lt!542192 (size!13804 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-fun e!1006596 () Bool)

(assert (=> d!464678 (= (prefixMatchZipperSequence!394 lt!542197 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192) e!1006596)))

(declare-fun b!1567290 () Bool)

(assert (=> b!1567290 (= e!1006596 (not (lostCauseZipper!22 lt!542197)))))

(declare-fun b!1567291 () Bool)

(assert (=> b!1567291 (= e!1006596 (prefixMatchZipperSequence!394 (derivationStepZipper!46 lt!542197 (apply!4133 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192)) (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) (+ lt!542192 1)))))

(assert (= (and d!464678 c!253987) b!1567290))

(assert (= (and d!464678 (not c!253987)) b!1567291))

(assert (=> d!464678 m!1837145))

(assert (=> d!464678 m!1840103))

(declare-fun m!1840143 () Bool)

(assert (=> b!1567290 m!1840143))

(assert (=> b!1567291 m!1837145))

(declare-fun m!1840145 () Bool)

(assert (=> b!1567291 m!1840145))

(assert (=> b!1567291 m!1840145))

(declare-fun m!1840147 () Bool)

(assert (=> b!1567291 m!1840147))

(assert (=> b!1567291 m!1840147))

(assert (=> b!1567291 m!1837145))

(declare-fun m!1840149 () Bool)

(assert (=> b!1567291 m!1840149))

(assert (=> d!464020 d!464678))

(declare-fun d!464680 () Bool)

(declare-fun c!253996 () Bool)

(assert (=> d!464680 (= c!253996 (isEmpty!10203 (dropList!499 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192)))))

(declare-fun e!1006607 () Bool)

(assert (=> d!464680 (= (prefixMatchZipper!103 lt!542197 (dropList!499 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192)) e!1006607)))

(declare-fun b!1567310 () Bool)

(assert (=> b!1567310 (= e!1006607 (not (lostCauseZipper!22 lt!542197)))))

(declare-fun b!1567311 () Bool)

(assert (=> b!1567311 (= e!1006607 (prefixMatchZipper!103 (derivationStepZipper!46 lt!542197 (head!3131 (dropList!499 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192))) (tail!2226 (dropList!499 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192))))))

(assert (= (and d!464680 c!253996) b!1567310))

(assert (= (and d!464680 (not c!253996)) b!1567311))

(assert (=> d!464680 m!1837891))

(declare-fun m!1840151 () Bool)

(assert (=> d!464680 m!1840151))

(assert (=> b!1567310 m!1840143))

(assert (=> b!1567311 m!1837891))

(declare-fun m!1840153 () Bool)

(assert (=> b!1567311 m!1840153))

(assert (=> b!1567311 m!1840153))

(declare-fun m!1840155 () Bool)

(assert (=> b!1567311 m!1840155))

(assert (=> b!1567311 m!1837891))

(declare-fun m!1840157 () Bool)

(assert (=> b!1567311 m!1840157))

(assert (=> b!1567311 m!1840155))

(assert (=> b!1567311 m!1840157))

(declare-fun m!1840159 () Bool)

(assert (=> b!1567311 m!1840159))

(assert (=> d!464020 d!464680))

(declare-fun d!464682 () Bool)

(assert (=> d!464682 (= (prefixMatch!327 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) lt!542191) (prefixMatchZipper!103 lt!542199 lt!542191))))

(declare-fun lt!542918 () Unit!26198)

(declare-fun choose!9351 ((InoxSet Context!1636) List!17105 Regex!4311 List!17099) Unit!26198)

(assert (=> d!464682 (= lt!542918 (choose!9351 lt!542199 lt!542198 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) lt!542191))))

(assert (=> d!464682 (validRegex!1723 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))

(assert (=> d!464682 (= (prefixMatchZipperRegexEquiv!103 lt!542199 lt!542198 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) lt!542191) lt!542918)))

(declare-fun bs!389820 () Bool)

(assert (= bs!389820 d!464682))

(assert (=> bs!389820 m!1837143))

(assert (=> bs!389820 m!1837881))

(assert (=> bs!389820 m!1837903))

(assert (=> bs!389820 m!1837143))

(declare-fun m!1840217 () Bool)

(assert (=> bs!389820 m!1840217))

(assert (=> bs!389820 m!1837143))

(assert (=> bs!389820 m!1837897))

(assert (=> d!464020 d!464682))

(declare-fun d!464708 () Bool)

(declare-fun e!1006631 () Bool)

(assert (=> d!464708 e!1006631))

(declare-fun res!698708 () Bool)

(assert (=> d!464708 (=> (not res!698708) (not e!1006631))))

(assert (=> d!464708 (= res!698708 (validRegex!1723 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))

(assert (=> d!464708 (= (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))) (store ((as const (Array Context!1636 Bool)) false) (Context!1637 (Cons!17034 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) Nil!17034)) true))))

(declare-fun b!1567353 () Bool)

(declare-fun unfocusZipper!22 (List!17105) Regex!4311)

(assert (=> b!1567353 (= e!1006631 (= (unfocusZipper!22 (toList!864 (store ((as const (Array Context!1636 Bool)) false) (Context!1637 (Cons!17034 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) Nil!17034)) true))) (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))

(assert (= (and d!464708 res!698708) b!1567353))

(assert (=> d!464708 m!1837143))

(assert (=> d!464708 m!1837897))

(declare-fun m!1840259 () Bool)

(assert (=> d!464708 m!1840259))

(assert (=> b!1567353 m!1840259))

(assert (=> b!1567353 m!1840259))

(declare-fun m!1840261 () Bool)

(assert (=> b!1567353 m!1840261))

(assert (=> b!1567353 m!1840261))

(declare-fun m!1840263 () Bool)

(assert (=> b!1567353 m!1840263))

(assert (=> d!464020 d!464708))

(declare-fun d!464722 () Bool)

(assert (=> d!464722 (= (list!6554 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) (list!6556 (c!253626 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-fun bs!389823 () Bool)

(assert (= bs!389823 d!464722))

(assert (=> bs!389823 m!1840049))

(assert (=> d!464020 d!464722))

(declare-fun d!464724 () Bool)

(declare-fun c!254007 () Bool)

(assert (=> d!464724 (= c!254007 (isEmpty!10203 lt!542191))))

(declare-fun e!1006632 () Bool)

(assert (=> d!464724 (= (prefixMatchZipper!103 lt!542199 lt!542191) e!1006632)))

(declare-fun b!1567354 () Bool)

(assert (=> b!1567354 (= e!1006632 (not (lostCauseZipper!22 lt!542199)))))

(declare-fun b!1567355 () Bool)

(assert (=> b!1567355 (= e!1006632 (prefixMatchZipper!103 (derivationStepZipper!46 lt!542199 (head!3131 lt!542191)) (tail!2226 lt!542191)))))

(assert (= (and d!464724 c!254007) b!1567354))

(assert (= (and d!464724 (not c!254007)) b!1567355))

(assert (=> d!464724 m!1840053))

(declare-fun m!1840265 () Bool)

(assert (=> b!1567354 m!1840265))

(assert (=> b!1567355 m!1840057))

(assert (=> b!1567355 m!1840057))

(declare-fun m!1840267 () Bool)

(assert (=> b!1567355 m!1840267))

(assert (=> b!1567355 m!1840061))

(assert (=> b!1567355 m!1840267))

(assert (=> b!1567355 m!1840061))

(declare-fun m!1840269 () Bool)

(assert (=> b!1567355 m!1840269))

(assert (=> d!464020 d!464724))

(declare-fun d!464726 () Bool)

(declare-fun c!254008 () Bool)

(assert (=> d!464726 (= c!254008 (isEmpty!10203 (list!6554 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-fun e!1006633 () Bool)

(assert (=> d!464726 (= (prefixMatch!327 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (list!6554 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) e!1006633)))

(declare-fun b!1567356 () Bool)

(assert (=> b!1567356 (= e!1006633 (not (lostCause!399 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))))

(declare-fun b!1567357 () Bool)

(assert (=> b!1567357 (= e!1006633 (prefixMatch!327 (derivativeStep!1033 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (head!3131 (list!6554 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))) (tail!2226 (list!6554 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(assert (= (and d!464726 c!254008) b!1567356))

(assert (= (and d!464726 (not c!254008)) b!1567357))

(assert (=> d!464726 m!1837883))

(declare-fun m!1840271 () Bool)

(assert (=> d!464726 m!1840271))

(assert (=> b!1567356 m!1837143))

(assert (=> b!1567356 m!1840055))

(assert (=> b!1567357 m!1837883))

(declare-fun m!1840273 () Bool)

(assert (=> b!1567357 m!1840273))

(assert (=> b!1567357 m!1837143))

(assert (=> b!1567357 m!1840273))

(declare-fun m!1840275 () Bool)

(assert (=> b!1567357 m!1840275))

(assert (=> b!1567357 m!1837883))

(declare-fun m!1840277 () Bool)

(assert (=> b!1567357 m!1840277))

(assert (=> b!1567357 m!1840275))

(assert (=> b!1567357 m!1840277))

(declare-fun m!1840279 () Bool)

(assert (=> b!1567357 m!1840279))

(assert (=> d!464020 d!464726))

(declare-fun d!464728 () Bool)

(assert (=> d!464728 (= (prefixMatchZipper!103 lt!542197 (dropList!499 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192)) (prefixMatchZipperSequence!394 lt!542197 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192))))

(declare-fun lt!542940 () Unit!26198)

(declare-fun choose!9352 ((InoxSet Context!1636) BalanceConc!11172 Int) Unit!26198)

(assert (=> d!464728 (= lt!542940 (choose!9352 lt!542197 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192))))

(declare-fun e!1006664 () Bool)

(assert (=> d!464728 e!1006664))

(declare-fun res!698728 () Bool)

(assert (=> d!464728 (=> (not res!698728) (not e!1006664))))

(assert (=> d!464728 (= res!698728 (>= lt!542192 0))))

(assert (=> d!464728 (= (lemmaprefixMatchZipperSequenceEquivalent!103 lt!542197 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) lt!542192) lt!542940)))

(declare-fun b!1567403 () Bool)

(assert (=> b!1567403 (= e!1006664 (<= lt!542192 (size!13804 (++!4433 (charsOf!1659 (h!22431 lt!541850)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(assert (= (and d!464728 res!698728) b!1567403))

(assert (=> d!464728 m!1837145))

(assert (=> d!464728 m!1837891))

(assert (=> d!464728 m!1837891))

(assert (=> d!464728 m!1837893))

(assert (=> d!464728 m!1837145))

(assert (=> d!464728 m!1837899))

(assert (=> d!464728 m!1837145))

(declare-fun m!1840363 () Bool)

(assert (=> d!464728 m!1840363))

(assert (=> b!1567403 m!1837145))

(assert (=> b!1567403 m!1840103))

(assert (=> d!464020 d!464728))

(declare-fun d!464752 () Bool)

(declare-fun res!698732 () Bool)

(declare-fun e!1006667 () Bool)

(assert (=> d!464752 (=> res!698732 e!1006667)))

(assert (=> d!464752 (= res!698732 (not ((_ is Node!5615) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464752 (= (isBalanced!1663 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1006667)))

(declare-fun b!1567405 () Bool)

(declare-fun res!698735 () Bool)

(declare-fun e!1006666 () Bool)

(assert (=> b!1567405 (=> (not res!698735) (not e!1006666))))

(assert (=> b!1567405 (= res!698735 (<= (- (height!836 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) 1))))

(declare-fun b!1567406 () Bool)

(declare-fun res!698730 () Bool)

(assert (=> b!1567406 (=> (not res!698730) (not e!1006666))))

(assert (=> b!1567406 (= res!698730 (isBalanced!1663 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567407 () Bool)

(declare-fun res!698734 () Bool)

(assert (=> b!1567407 (=> (not res!698734) (not e!1006666))))

(assert (=> b!1567407 (= res!698734 (not (isEmpty!10200 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567408 () Bool)

(assert (=> b!1567408 (= e!1006666 (not (isEmpty!10200 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567409 () Bool)

(assert (=> b!1567409 (= e!1006667 e!1006666)))

(declare-fun res!698731 () Bool)

(assert (=> b!1567409 (=> (not res!698731) (not e!1006666))))

(assert (=> b!1567409 (= res!698731 (<= (- 1) (- (height!836 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1567410 () Bool)

(declare-fun res!698733 () Bool)

(assert (=> b!1567410 (=> (not res!698733) (not e!1006666))))

(assert (=> b!1567410 (= res!698733 (isBalanced!1663 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464752 (not res!698732)) b!1567409))

(assert (= (and b!1567409 res!698731) b!1567405))

(assert (= (and b!1567405 res!698735) b!1567406))

(assert (= (and b!1567406 res!698730) b!1567410))

(assert (= (and b!1567410 res!698733) b!1567407))

(assert (= (and b!1567407 res!698734) b!1567408))

(declare-fun m!1840371 () Bool)

(assert (=> b!1567410 m!1840371))

(declare-fun m!1840375 () Bool)

(assert (=> b!1567407 m!1840375))

(assert (=> b!1567409 m!1839213))

(assert (=> b!1567409 m!1839215))

(assert (=> b!1567405 m!1839213))

(assert (=> b!1567405 m!1839215))

(declare-fun m!1840379 () Bool)

(assert (=> b!1567408 m!1840379))

(declare-fun m!1840381 () Bool)

(assert (=> b!1567406 m!1840381))

(assert (=> b!1566022 d!464752))

(assert (=> b!1566041 d!463774))

(declare-fun d!464760 () Bool)

(declare-fun choose!9353 (Int) Bool)

(assert (=> d!464760 (= (Forall!623 lambda!66236) (choose!9353 lambda!66236))))

(declare-fun bs!389825 () Bool)

(assert (= bs!389825 d!464760))

(declare-fun m!1840385 () Bool)

(assert (=> bs!389825 m!1840385))

(assert (=> d!464058 d!464760))

(declare-fun bs!389826 () Bool)

(declare-fun d!464766 () Bool)

(assert (= bs!389826 (and d!464766 d!464058)))

(declare-fun lambda!66275 () Int)

(assert (=> bs!389826 (= (and (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (= (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))))) (= lambda!66275 lambda!66236))))

(declare-fun bs!389827 () Bool)

(assert (= bs!389827 (and d!464766 d!464454)))

(assert (=> bs!389827 (= (and (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (= (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (= lambda!66275 lambda!66270))))

(assert (=> d!464766 true))

(assert (=> d!464766 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7599 order!10099 lambda!66275))))

(assert (=> d!464766 true))

(assert (=> d!464766 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7599 order!10099 lambda!66275))))

(assert (=> d!464766 (= (semiInverseModEq!1131 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (Forall!623 lambda!66275))))

(declare-fun bs!389829 () Bool)

(assert (= bs!389829 d!464766))

(declare-fun m!1840405 () Bool)

(assert (=> bs!389829 m!1840405))

(assert (=> d!463924 d!464766))

(declare-fun d!464770 () Bool)

(declare-fun lt!542948 () Bool)

(assert (=> d!464770 (= lt!542948 (isEmpty!10203 (list!6554 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(assert (=> d!464770 (= lt!542948 (isEmpty!10204 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(assert (=> d!464770 (= (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) lt!542948)))

(declare-fun bs!389830 () Bool)

(assert (= bs!389830 d!464770))

(declare-fun m!1840413 () Bool)

(assert (=> bs!389830 m!1840413))

(assert (=> bs!389830 m!1840413))

(declare-fun m!1840415 () Bool)

(assert (=> bs!389830 m!1840415))

(declare-fun m!1840417 () Bool)

(assert (=> bs!389830 m!1840417))

(assert (=> b!1565952 d!464770))

(assert (=> b!1565952 d!464444))

(assert (=> b!1565952 d!464434))

(assert (=> b!1565952 d!464442))

(declare-fun d!464774 () Bool)

(declare-fun c!254023 () Bool)

(assert (=> d!464774 (= c!254023 ((_ is Node!5615) (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun e!1006673 () Bool)

(assert (=> d!464774 (= (inv!22394 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) e!1006673)))

(declare-fun b!1567418 () Bool)

(assert (=> b!1567418 (= e!1006673 (inv!22397 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567419 () Bool)

(declare-fun e!1006674 () Bool)

(assert (=> b!1567419 (= e!1006673 e!1006674)))

(declare-fun res!698741 () Bool)

(assert (=> b!1567419 (= res!698741 (not ((_ is Leaf!8327) (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1567419 (=> res!698741 e!1006674)))

(declare-fun b!1567420 () Bool)

(assert (=> b!1567420 (= e!1006674 (inv!22398 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464774 c!254023) b!1567418))

(assert (= (and d!464774 (not c!254023)) b!1567419))

(assert (= (and b!1567419 (not res!698741)) b!1567420))

(declare-fun m!1840419 () Bool)

(assert (=> b!1567418 m!1840419))

(declare-fun m!1840421 () Bool)

(assert (=> b!1567420 m!1840421))

(assert (=> b!1566157 d!464774))

(declare-fun d!464776 () Bool)

(declare-fun c!254024 () Bool)

(assert (=> d!464776 (= c!254024 ((_ is Node!5615) (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun e!1006676 () Bool)

(assert (=> d!464776 (= (inv!22394 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) e!1006676)))

(declare-fun b!1567422 () Bool)

(assert (=> b!1567422 (= e!1006676 (inv!22397 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567423 () Bool)

(declare-fun e!1006677 () Bool)

(assert (=> b!1567423 (= e!1006676 e!1006677)))

(declare-fun res!698742 () Bool)

(assert (=> b!1567423 (= res!698742 (not ((_ is Leaf!8327) (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1567423 (=> res!698742 e!1006677)))

(declare-fun b!1567424 () Bool)

(assert (=> b!1567424 (= e!1006677 (inv!22398 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (= (and d!464776 c!254024) b!1567422))

(assert (= (and d!464776 (not c!254024)) b!1567423))

(assert (= (and b!1567423 (not res!698742)) b!1567424))

(declare-fun m!1840427 () Bool)

(assert (=> b!1567422 m!1840427))

(declare-fun m!1840429 () Bool)

(assert (=> b!1567424 m!1840429))

(assert (=> b!1566157 d!464776))

(declare-fun d!464778 () Bool)

(declare-fun res!698752 () Bool)

(declare-fun e!1006691 () Bool)

(assert (=> d!464778 (=> (not res!698752) (not e!1006691))))

(assert (=> d!464778 (= res!698752 (validRegex!1723 (regex!2983 (h!22432 (rules!12084 thiss!10002)))))))

(assert (=> d!464778 (= (ruleValid!700 Lexer!2610 (h!22432 (rules!12084 thiss!10002))) e!1006691)))

(declare-fun b!1567450 () Bool)

(declare-fun res!698753 () Bool)

(assert (=> b!1567450 (=> (not res!698753) (not e!1006691))))

(assert (=> b!1567450 (= res!698753 (not (nullable!1283 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))))

(declare-fun b!1567451 () Bool)

(assert (=> b!1567451 (= e!1006691 (not (= (tag!3247 (h!22432 (rules!12084 thiss!10002))) (String!19698 ""))))))

(assert (= (and d!464778 res!698752) b!1567450))

(assert (= (and b!1567450 res!698753) b!1567451))

(declare-fun m!1840451 () Bool)

(assert (=> d!464778 m!1840451))

(declare-fun m!1840455 () Bool)

(assert (=> b!1567450 m!1840455))

(assert (=> b!1565795 d!464778))

(declare-fun b!1567500 () Bool)

(declare-fun e!1006734 () Bool)

(declare-fun e!1006728 () Bool)

(assert (=> b!1567500 (= e!1006734 e!1006728)))

(declare-fun res!698793 () Bool)

(assert (=> b!1567500 (=> (not res!698793) (not e!1006728))))

(declare-fun appendAssoc!96 (List!17099 List!17099 List!17099) Bool)

(assert (=> b!1567500 (= res!698793 (appendAssoc!96 (list!6556 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (list!6556 (left!13803 (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))) (list!6556 (right!14133 (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))))

(declare-fun b!1567501 () Bool)

(declare-fun e!1006731 () Bool)

(declare-fun e!1006732 () Bool)

(assert (=> b!1567501 (= e!1006731 e!1006732)))

(declare-fun res!698791 () Bool)

(assert (=> b!1567501 (=> (not res!698791) (not e!1006732))))

(assert (=> b!1567501 (= res!698791 (appendAssoc!96 (list!6556 (left!13803 (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850)))))) (list!6556 (right!14133 (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850)))))) (list!6556 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-fun b!1567502 () Bool)

(assert (=> b!1567502 (= e!1006732 (appendAssoc!96 (list!6556 (left!13803 (c!253626 (charsOf!1659 (h!22431 lt!541850))))) (list!6556 (left!13803 (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850)))))) (++!4436 (list!6556 (right!14133 (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850)))))) (list!6556 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun d!464786 () Bool)

(declare-fun e!1006730 () Bool)

(assert (=> d!464786 e!1006730))

(declare-fun res!698797 () Bool)

(assert (=> d!464786 (=> (not res!698797) (not e!1006730))))

(declare-fun e!1006727 () Bool)

(assert (=> d!464786 (= res!698797 e!1006727)))

(declare-fun res!698792 () Bool)

(assert (=> d!464786 (=> res!698792 e!1006727)))

(assert (=> d!464786 (= res!698792 (not ((_ is Node!5614) (c!253626 (charsOf!1659 (h!22431 lt!541850))))))))

(assert (=> d!464786 (= (appendAssocInst!379 (c!253626 (charsOf!1659 (h!22431 lt!541850))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) true)))

(declare-fun b!1567503 () Bool)

(assert (=> b!1567503 (= e!1006728 (appendAssoc!96 (++!4436 (list!6556 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (list!6556 (left!13803 (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))) (list!6556 (right!14133 (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))) (list!6556 (right!14133 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun b!1567504 () Bool)

(declare-fun e!1006729 () Bool)

(assert (=> b!1567504 (= e!1006729 e!1006734)))

(declare-fun res!698794 () Bool)

(assert (=> b!1567504 (=> res!698794 e!1006734)))

(assert (=> b!1567504 (= res!698794 (not ((_ is Node!5614) (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun b!1567505 () Bool)

(declare-fun e!1006735 () Bool)

(assert (=> b!1567505 (= e!1006727 e!1006735)))

(declare-fun res!698798 () Bool)

(assert (=> b!1567505 (=> (not res!698798) (not e!1006735))))

(assert (=> b!1567505 (= res!698798 (appendAssoc!96 (list!6556 (left!13803 (c!253626 (charsOf!1659 (h!22431 lt!541850))))) (list!6556 (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850))))) (list!6556 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-fun b!1567506 () Bool)

(declare-fun e!1006733 () Bool)

(assert (=> b!1567506 (= e!1006730 e!1006733)))

(declare-fun res!698796 () Bool)

(assert (=> b!1567506 (=> res!698796 e!1006733)))

(assert (=> b!1567506 (= res!698796 (not ((_ is Node!5614) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(declare-fun b!1567507 () Bool)

(assert (=> b!1567507 (= e!1006733 e!1006729)))

(declare-fun res!698790 () Bool)

(assert (=> b!1567507 (=> (not res!698790) (not e!1006729))))

(assert (=> b!1567507 (= res!698790 (appendAssoc!96 (list!6556 (c!253626 (charsOf!1659 (h!22431 lt!541850)))) (list!6556 (left!13803 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))) (list!6556 (right!14133 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun b!1567508 () Bool)

(assert (=> b!1567508 (= e!1006735 e!1006731)))

(declare-fun res!698795 () Bool)

(assert (=> b!1567508 (=> res!698795 e!1006731)))

(assert (=> b!1567508 (= res!698795 (not ((_ is Node!5614) (right!14133 (c!253626 (charsOf!1659 (h!22431 lt!541850)))))))))

(assert (= (and d!464786 (not res!698792)) b!1567505))

(assert (= (and b!1567505 res!698798) b!1567508))

(assert (= (and b!1567508 (not res!698795)) b!1567501))

(assert (= (and b!1567501 res!698791) b!1567502))

(assert (= (and d!464786 res!698797) b!1567506))

(assert (= (and b!1567506 (not res!698796)) b!1567507))

(assert (= (and b!1567507 res!698790) b!1567504))

(assert (= (and b!1567504 (not res!698794)) b!1567500))

(assert (= (and b!1567500 res!698793) b!1567503))

(declare-fun m!1840553 () Bool)

(assert (=> b!1567502 m!1840553))

(assert (=> b!1567502 m!1838935))

(declare-fun m!1840555 () Bool)

(assert (=> b!1567502 m!1840555))

(declare-fun m!1840557 () Bool)

(assert (=> b!1567502 m!1840557))

(assert (=> b!1567502 m!1838935))

(declare-fun m!1840559 () Bool)

(assert (=> b!1567502 m!1840559))

(assert (=> b!1567502 m!1840557))

(assert (=> b!1567502 m!1840555))

(declare-fun m!1840561 () Bool)

(assert (=> b!1567502 m!1840561))

(assert (=> b!1567502 m!1840559))

(assert (=> b!1567502 m!1840553))

(assert (=> b!1567500 m!1838933))

(declare-fun m!1840563 () Bool)

(assert (=> b!1567500 m!1840563))

(declare-fun m!1840565 () Bool)

(assert (=> b!1567500 m!1840565))

(assert (=> b!1567500 m!1838933))

(assert (=> b!1567500 m!1840563))

(assert (=> b!1567500 m!1840565))

(declare-fun m!1840567 () Bool)

(assert (=> b!1567500 m!1840567))

(assert (=> b!1567501 m!1840557))

(assert (=> b!1567501 m!1840553))

(assert (=> b!1567501 m!1838935))

(assert (=> b!1567501 m!1840557))

(assert (=> b!1567501 m!1840553))

(assert (=> b!1567501 m!1838935))

(declare-fun m!1840569 () Bool)

(assert (=> b!1567501 m!1840569))

(assert (=> b!1567505 m!1840559))

(declare-fun m!1840571 () Bool)

(assert (=> b!1567505 m!1840571))

(assert (=> b!1567505 m!1838935))

(assert (=> b!1567505 m!1840559))

(assert (=> b!1567505 m!1840571))

(assert (=> b!1567505 m!1838935))

(declare-fun m!1840573 () Bool)

(assert (=> b!1567505 m!1840573))

(assert (=> b!1567503 m!1838933))

(declare-fun m!1840575 () Bool)

(assert (=> b!1567503 m!1840575))

(assert (=> b!1567503 m!1840563))

(assert (=> b!1567503 m!1838933))

(assert (=> b!1567503 m!1840563))

(declare-fun m!1840577 () Bool)

(assert (=> b!1567503 m!1840577))

(assert (=> b!1567503 m!1840577))

(assert (=> b!1567503 m!1840565))

(assert (=> b!1567503 m!1840575))

(declare-fun m!1840579 () Bool)

(assert (=> b!1567503 m!1840579))

(assert (=> b!1567503 m!1840565))

(assert (=> b!1567507 m!1838933))

(declare-fun m!1840581 () Bool)

(assert (=> b!1567507 m!1840581))

(assert (=> b!1567507 m!1840575))

(assert (=> b!1567507 m!1838933))

(assert (=> b!1567507 m!1840581))

(assert (=> b!1567507 m!1840575))

(declare-fun m!1840583 () Bool)

(assert (=> b!1567507 m!1840583))

(assert (=> d!464026 d!464786))

(assert (=> d!464026 d!464264))

(declare-fun d!464824 () Bool)

(declare-fun lt!542992 () Bool)

(assert (=> d!464824 (= lt!542992 (isEmpty!10202 (list!6549 (_1!9701 lt!542023))))))

(assert (=> d!464824 (= lt!542992 (isEmpty!10200 (c!253628 (_1!9701 lt!542023))))))

(assert (=> d!464824 (= (isEmpty!10201 (_1!9701 lt!542023)) lt!542992)))

(declare-fun bs!389840 () Bool)

(assert (= bs!389840 d!464824))

(assert (=> bs!389840 m!1837471))

(assert (=> bs!389840 m!1837471))

(declare-fun m!1840585 () Bool)

(assert (=> bs!389840 m!1840585))

(declare-fun m!1840587 () Bool)

(assert (=> bs!389840 m!1840587))

(assert (=> b!1565856 d!464824))

(declare-fun d!464826 () Bool)

(declare-fun res!698807 () Bool)

(declare-fun e!1006741 () Bool)

(assert (=> d!464826 (=> (not res!698807) (not e!1006741))))

(assert (=> d!464826 (= res!698807 (<= (size!13806 (list!6552 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) 512))))

(assert (=> d!464826 (= (inv!22398 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1006741)))

(declare-fun b!1567517 () Bool)

(declare-fun res!698808 () Bool)

(assert (=> b!1567517 (=> (not res!698808) (not e!1006741))))

(assert (=> b!1567517 (= res!698808 (= (csize!11461 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (size!13806 (list!6552 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1567518 () Bool)

(assert (=> b!1567518 (= e!1006741 (and (> (csize!11461 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 0) (<= (csize!11461 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 512)))))

(assert (= (and d!464826 res!698807) b!1567517))

(assert (= (and b!1567517 res!698808) b!1567518))

(declare-fun m!1840603 () Bool)

(assert (=> d!464826 m!1840603))

(assert (=> d!464826 m!1840603))

(declare-fun m!1840609 () Bool)

(assert (=> d!464826 m!1840609))

(assert (=> b!1567517 m!1840603))

(assert (=> b!1567517 m!1840603))

(assert (=> b!1567517 m!1840609))

(assert (=> b!1565959 d!464826))

(declare-fun b!1567522 () Bool)

(declare-fun e!1006743 () Bool)

(declare-fun lt!542993 () List!17100)

(assert (=> b!1567522 (= e!1006743 (or (not (= (list!6550 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) Nil!17030)) (= lt!542993 (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun d!464828 () Bool)

(assert (=> d!464828 e!1006743))

(declare-fun res!698809 () Bool)

(assert (=> d!464828 (=> (not res!698809) (not e!1006743))))

(assert (=> d!464828 (= res!698809 (= (content!2356 lt!542993) ((_ map or) (content!2356 (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (content!2356 (list!6550 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun e!1006742 () List!17100)

(assert (=> d!464828 (= lt!542993 e!1006742)))

(declare-fun c!254039 () Bool)

(assert (=> d!464828 (= c!254039 ((_ is Nil!17030) (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!464828 (= (++!4431 (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (list!6550 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) lt!542993)))

(declare-fun b!1567519 () Bool)

(assert (=> b!1567519 (= e!1006742 (list!6550 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1567520 () Bool)

(assert (=> b!1567520 (= e!1006742 (Cons!17030 (h!22431 (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (++!4431 (t!141745 (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (list!6550 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567521 () Bool)

(declare-fun res!698810 () Bool)

(assert (=> b!1567521 (=> (not res!698810) (not e!1006743))))

(assert (=> b!1567521 (= res!698810 (= (size!13806 lt!542993) (+ (size!13806 (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (size!13806 (list!6550 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!464828 c!254039) b!1567519))

(assert (= (and d!464828 (not c!254039)) b!1567520))

(assert (= (and d!464828 res!698809) b!1567521))

(assert (= (and b!1567521 res!698810) b!1567522))

(declare-fun m!1840649 () Bool)

(assert (=> d!464828 m!1840649))

(assert (=> d!464828 m!1837293))

(declare-fun m!1840653 () Bool)

(assert (=> d!464828 m!1840653))

(assert (=> d!464828 m!1837295))

(declare-fun m!1840657 () Bool)

(assert (=> d!464828 m!1840657))

(assert (=> b!1567520 m!1837295))

(declare-fun m!1840659 () Bool)

(assert (=> b!1567520 m!1840659))

(declare-fun m!1840663 () Bool)

(assert (=> b!1567521 m!1840663))

(assert (=> b!1567521 m!1837293))

(declare-fun m!1840665 () Bool)

(assert (=> b!1567521 m!1840665))

(assert (=> b!1567521 m!1837295))

(declare-fun m!1840667 () Bool)

(assert (=> b!1567521 m!1840667))

(assert (=> b!1565777 d!464828))

(declare-fun d!464830 () Bool)

(declare-fun c!254040 () Bool)

(assert (=> d!464830 (= c!254040 ((_ is Empty!5615) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun e!1006744 () List!17100)

(assert (=> d!464830 (= (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1006744)))

(declare-fun b!1567525 () Bool)

(declare-fun e!1006745 () List!17100)

(assert (=> b!1567525 (= e!1006745 (list!6552 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567526 () Bool)

(assert (=> b!1567526 (= e!1006745 (++!4431 (list!6550 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (list!6550 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567523 () Bool)

(assert (=> b!1567523 (= e!1006744 Nil!17030)))

(declare-fun b!1567524 () Bool)

(assert (=> b!1567524 (= e!1006744 e!1006745)))

(declare-fun c!254041 () Bool)

(assert (=> b!1567524 (= c!254041 ((_ is Leaf!8327) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!464830 c!254040) b!1567523))

(assert (= (and d!464830 (not c!254040)) b!1567524))

(assert (= (and b!1567524 c!254041) b!1567525))

(assert (= (and b!1567524 (not c!254041)) b!1567526))

(assert (=> b!1567525 m!1839955))

(declare-fun m!1840681 () Bool)

(assert (=> b!1567526 m!1840681))

(declare-fun m!1840683 () Bool)

(assert (=> b!1567526 m!1840683))

(assert (=> b!1567526 m!1840681))

(assert (=> b!1567526 m!1840683))

(declare-fun m!1840685 () Bool)

(assert (=> b!1567526 m!1840685))

(assert (=> b!1565777 d!464830))

(declare-fun d!464836 () Bool)

(declare-fun c!254043 () Bool)

(assert (=> d!464836 (= c!254043 ((_ is Empty!5615) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun e!1006748 () List!17100)

(assert (=> d!464836 (= (list!6550 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1006748)))

(declare-fun b!1567532 () Bool)

(declare-fun e!1006749 () List!17100)

(assert (=> b!1567532 (= e!1006749 (list!6552 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1567533 () Bool)

(assert (=> b!1567533 (= e!1006749 (++!4431 (list!6550 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) (list!6550 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1567530 () Bool)

(assert (=> b!1567530 (= e!1006748 Nil!17030)))

(declare-fun b!1567531 () Bool)

(assert (=> b!1567531 (= e!1006748 e!1006749)))

(declare-fun c!254044 () Bool)

(assert (=> b!1567531 (= c!254044 ((_ is Leaf!8327) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!464836 c!254043) b!1567530))

(assert (= (and d!464836 (not c!254043)) b!1567531))

(assert (= (and b!1567531 c!254044) b!1567532))

(assert (= (and b!1567531 (not c!254044)) b!1567533))

(declare-fun m!1840689 () Bool)

(assert (=> b!1567532 m!1840689))

(declare-fun m!1840691 () Bool)

(assert (=> b!1567533 m!1840691))

(declare-fun m!1840693 () Bool)

(assert (=> b!1567533 m!1840693))

(assert (=> b!1567533 m!1840691))

(assert (=> b!1567533 m!1840693))

(declare-fun m!1840699 () Bool)

(assert (=> b!1567533 m!1840699))

(assert (=> b!1565777 d!464836))

(declare-fun d!464838 () Bool)

(assert (=> d!464838 (= (list!6554 lt!542060) (list!6556 (c!253626 lt!542060)))))

(declare-fun bs!389842 () Bool)

(assert (= bs!389842 d!464838))

(declare-fun m!1840703 () Bool)

(assert (=> bs!389842 m!1840703))

(assert (=> d!463964 d!464838))

(assert (=> d!463940 d!463938))

(assert (=> d!463940 d!463680))

(declare-fun d!464844 () Bool)

(declare-fun lt!543003 () Bool)

(assert (=> d!464844 (= lt!543003 (forall!3952 (list!6550 (c!253628 (tokens!2198 thiss!10002))) lambda!66209))))

(declare-fun e!1006764 () Bool)

(assert (=> d!464844 (= lt!543003 e!1006764)))

(declare-fun res!698819 () Bool)

(assert (=> d!464844 (=> res!698819 e!1006764)))

(assert (=> d!464844 (= res!698819 ((_ is Empty!5615) (c!253628 (tokens!2198 thiss!10002))))))

(assert (=> d!464844 (= (forall!3957 (c!253628 (tokens!2198 thiss!10002)) lambda!66209) lt!543003)))

(declare-fun b!1567557 () Bool)

(declare-fun e!1006766 () Bool)

(declare-fun e!1006765 () Bool)

(assert (=> b!1567557 (= e!1006766 e!1006765)))

(declare-fun lt!543004 () Unit!26198)

(declare-fun lemmaForallConcat!142 (List!17100 List!17100 Int) Unit!26198)

(assert (=> b!1567557 (= lt!543004 (lemmaForallConcat!142 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002)))) (list!6550 (right!14134 (c!253628 (tokens!2198 thiss!10002)))) lambda!66209))))

(declare-fun res!698820 () Bool)

(assert (=> b!1567557 (= res!698820 (forall!3957 (left!13804 (c!253628 (tokens!2198 thiss!10002))) lambda!66209))))

(assert (=> b!1567557 (=> (not res!698820) (not e!1006765))))

(declare-fun b!1567558 () Bool)

(assert (=> b!1567558 (= e!1006765 (forall!3957 (right!14134 (c!253628 (tokens!2198 thiss!10002))) lambda!66209))))

(declare-fun b!1567556 () Bool)

(declare-fun forall!3962 (IArray!11235 Int) Bool)

(assert (=> b!1567556 (= e!1006766 (forall!3962 (xs!8415 (c!253628 (tokens!2198 thiss!10002))) lambda!66209))))

(declare-fun b!1567555 () Bool)

(assert (=> b!1567555 (= e!1006764 e!1006766)))

(declare-fun c!254052 () Bool)

(assert (=> b!1567555 (= c!254052 ((_ is Leaf!8327) (c!253628 (tokens!2198 thiss!10002))))))

(assert (= (and d!464844 (not res!698819)) b!1567555))

(assert (= (and b!1567555 c!254052) b!1567556))

(assert (= (and b!1567555 (not c!254052)) b!1567557))

(assert (= (and b!1567557 res!698820) b!1567558))

(assert (=> d!464844 m!1836823))

(assert (=> d!464844 m!1836823))

(declare-fun m!1840733 () Bool)

(assert (=> d!464844 m!1840733))

(assert (=> b!1567557 m!1837055))

(assert (=> b!1567557 m!1837057))

(assert (=> b!1567557 m!1837055))

(assert (=> b!1567557 m!1837057))

(declare-fun m!1840735 () Bool)

(assert (=> b!1567557 m!1840735))

(declare-fun m!1840737 () Bool)

(assert (=> b!1567557 m!1840737))

(declare-fun m!1840739 () Bool)

(assert (=> b!1567558 m!1840739))

(declare-fun m!1840741 () Bool)

(assert (=> b!1567556 m!1840741))

(assert (=> d!463940 d!464844))

(declare-fun d!464864 () Bool)

(assert (not d!464864))

(assert (=> b!1566105 d!464864))

(declare-fun d!464866 () Bool)

(declare-fun c!254053 () Bool)

(assert (=> d!464866 (= c!254053 ((_ is Node!5614) (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun e!1006772 () Bool)

(assert (=> d!464866 (= (inv!22405 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) e!1006772)))

(declare-fun b!1567564 () Bool)

(assert (=> b!1567564 (= e!1006772 (inv!22411 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun b!1567565 () Bool)

(declare-fun e!1006773 () Bool)

(assert (=> b!1567565 (= e!1006772 e!1006773)))

(declare-fun res!698823 () Bool)

(assert (=> b!1567565 (= res!698823 (not ((_ is Leaf!8326) (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))))))

(assert (=> b!1567565 (=> res!698823 e!1006773)))

(declare-fun b!1567566 () Bool)

(assert (=> b!1567566 (= e!1006773 (inv!22412 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(assert (= (and d!464866 c!254053) b!1567564))

(assert (= (and d!464866 (not c!254053)) b!1567565))

(assert (= (and b!1567565 (not res!698823)) b!1567566))

(declare-fun m!1840743 () Bool)

(assert (=> b!1567564 m!1840743))

(declare-fun m!1840745 () Bool)

(assert (=> b!1567566 m!1840745))

(assert (=> b!1566187 d!464866))

(declare-fun d!464868 () Bool)

(declare-fun c!254054 () Bool)

(assert (=> d!464868 (= c!254054 ((_ is Node!5614) (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun e!1006774 () Bool)

(assert (=> d!464868 (= (inv!22405 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) e!1006774)))

(declare-fun b!1567567 () Bool)

(assert (=> b!1567567 (= e!1006774 (inv!22411 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(declare-fun b!1567568 () Bool)

(declare-fun e!1006775 () Bool)

(assert (=> b!1567568 (= e!1006774 e!1006775)))

(declare-fun res!698824 () Bool)

(assert (=> b!1567568 (= res!698824 (not ((_ is Leaf!8326) (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))))))

(assert (=> b!1567568 (=> res!698824 e!1006775)))

(declare-fun b!1567569 () Bool)

(assert (=> b!1567569 (= e!1006775 (inv!22412 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))))

(assert (= (and d!464868 c!254054) b!1567567))

(assert (= (and d!464868 (not c!254054)) b!1567568))

(assert (= (and b!1567568 (not res!698824)) b!1567569))

(declare-fun m!1840751 () Bool)

(assert (=> b!1567567 m!1840751))

(declare-fun m!1840755 () Bool)

(assert (=> b!1567569 m!1840755))

(assert (=> b!1566187 d!464868))

(declare-fun d!464870 () Bool)

(assert (=> d!464870 (= (list!6554 (_2!9701 lt!542023)) (list!6556 (c!253626 (_2!9701 lt!542023))))))

(declare-fun bs!389857 () Bool)

(assert (= bs!389857 d!464870))

(declare-fun m!1840757 () Bool)

(assert (=> bs!389857 m!1840757))

(assert (=> b!1565857 d!464870))

(assert (=> b!1565857 d!464518))

(assert (=> b!1565857 d!464520))

(declare-fun d!464874 () Bool)

(declare-fun res!698828 () Bool)

(declare-fun e!1006778 () Bool)

(assert (=> d!464874 (=> res!698828 e!1006778)))

(assert (=> d!464874 (= res!698828 ((_ is Nil!17030) (t!141745 (t!141745 lt!541850))))))

(assert (=> d!464874 (= (forall!3952 (t!141745 (t!141745 lt!541850)) lambda!66213) e!1006778)))

(declare-fun b!1567573 () Bool)

(declare-fun e!1006779 () Bool)

(assert (=> b!1567573 (= e!1006778 e!1006779)))

(declare-fun res!698829 () Bool)

(assert (=> b!1567573 (=> (not res!698829) (not e!1006779))))

(assert (=> b!1567573 (= res!698829 (dynLambda!7593 lambda!66213 (h!22431 (t!141745 (t!141745 lt!541850)))))))

(declare-fun b!1567574 () Bool)

(assert (=> b!1567574 (= e!1006779 (forall!3952 (t!141745 (t!141745 (t!141745 lt!541850))) lambda!66213))))

(assert (= (and d!464874 (not res!698828)) b!1567573))

(assert (= (and b!1567573 res!698829) b!1567574))

(declare-fun b_lambda!49353 () Bool)

(assert (=> (not b_lambda!49353) (not b!1567573)))

(declare-fun m!1840759 () Bool)

(assert (=> b!1567573 m!1840759))

(declare-fun m!1840761 () Bool)

(assert (=> b!1567574 m!1840761))

(assert (=> b!1566141 d!464874))

(assert (=> b!1566010 d!463676))

(declare-fun d!464876 () Bool)

(declare-fun res!698830 () Bool)

(declare-fun e!1006780 () Bool)

(assert (=> d!464876 (=> (not res!698830) (not e!1006780))))

(assert (=> d!464876 (= res!698830 (<= (size!13806 (list!6552 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) 512))))

(assert (=> d!464876 (= (inv!22398 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) e!1006780)))

(declare-fun b!1567575 () Bool)

(declare-fun res!698831 () Bool)

(assert (=> b!1567575 (=> (not res!698831) (not e!1006780))))

(assert (=> b!1567575 (= res!698831 (= (csize!11461 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (size!13806 (list!6552 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1567576 () Bool)

(assert (=> b!1567576 (= e!1006780 (and (> (csize!11461 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 0) (<= (csize!11461 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 512)))))

(assert (= (and d!464876 res!698830) b!1567575))

(assert (= (and b!1567575 res!698831) b!1567576))

(assert (=> d!464876 m!1840689))

(assert (=> d!464876 m!1840689))

(declare-fun m!1840773 () Bool)

(assert (=> d!464876 m!1840773))

(assert (=> b!1567575 m!1840689))

(assert (=> b!1567575 m!1840689))

(assert (=> b!1567575 m!1840773))

(assert (=> b!1565965 d!464876))

(assert (=> b!1565639 d!463894))

(assert (=> b!1565935 d!464512))

(assert (=> b!1565935 d!464410))

(assert (=> b!1566121 d!464318))

(assert (=> b!1566121 d!464320))

(assert (=> b!1565784 d!463918))

(declare-fun b!1567577 () Bool)

(declare-fun e!1006781 () Bool)

(declare-fun e!1006782 () Bool)

(assert (=> b!1567577 (= e!1006781 e!1006782)))

(declare-fun res!698832 () Bool)

(assert (=> b!1567577 (=> (not res!698832) (not e!1006782))))

(assert (=> b!1567577 (= res!698832 (<= (- 1) (- (height!837 (left!13803 (c!253626 lt!542319))) (height!837 (right!14133 (c!253626 lt!542319))))))))

(declare-fun b!1567578 () Bool)

(declare-fun res!698837 () Bool)

(assert (=> b!1567578 (=> (not res!698837) (not e!1006782))))

(assert (=> b!1567578 (= res!698837 (isBalanced!1665 (left!13803 (c!253626 lt!542319))))))

(declare-fun b!1567579 () Bool)

(declare-fun res!698834 () Bool)

(assert (=> b!1567579 (=> (not res!698834) (not e!1006782))))

(assert (=> b!1567579 (= res!698834 (not (isEmpty!10204 (left!13803 (c!253626 lt!542319)))))))

(declare-fun d!464878 () Bool)

(declare-fun res!698835 () Bool)

(assert (=> d!464878 (=> res!698835 e!1006781)))

(assert (=> d!464878 (= res!698835 (not ((_ is Node!5614) (c!253626 lt!542319))))))

(assert (=> d!464878 (= (isBalanced!1665 (c!253626 lt!542319)) e!1006781)))

(declare-fun b!1567580 () Bool)

(declare-fun res!698833 () Bool)

(assert (=> b!1567580 (=> (not res!698833) (not e!1006782))))

(assert (=> b!1567580 (= res!698833 (<= (- (height!837 (left!13803 (c!253626 lt!542319))) (height!837 (right!14133 (c!253626 lt!542319)))) 1))))

(declare-fun b!1567581 () Bool)

(declare-fun res!698836 () Bool)

(assert (=> b!1567581 (=> (not res!698836) (not e!1006782))))

(assert (=> b!1567581 (= res!698836 (isBalanced!1665 (right!14133 (c!253626 lt!542319))))))

(declare-fun b!1567582 () Bool)

(assert (=> b!1567582 (= e!1006782 (not (isEmpty!10204 (right!14133 (c!253626 lt!542319)))))))

(assert (= (and d!464878 (not res!698835)) b!1567577))

(assert (= (and b!1567577 res!698832) b!1567580))

(assert (= (and b!1567580 res!698833) b!1567578))

(assert (= (and b!1567578 res!698837) b!1567581))

(assert (= (and b!1567581 res!698836) b!1567579))

(assert (= (and b!1567579 res!698834) b!1567582))

(declare-fun m!1840783 () Bool)

(assert (=> b!1567580 m!1840783))

(declare-fun m!1840785 () Bool)

(assert (=> b!1567580 m!1840785))

(declare-fun m!1840787 () Bool)

(assert (=> b!1567581 m!1840787))

(assert (=> b!1567577 m!1840783))

(assert (=> b!1567577 m!1840785))

(declare-fun m!1840789 () Bool)

(assert (=> b!1567578 m!1840789))

(declare-fun m!1840791 () Bool)

(assert (=> b!1567582 m!1840791))

(declare-fun m!1840793 () Bool)

(assert (=> b!1567579 m!1840793))

(assert (=> b!1566099 d!464878))

(declare-fun d!464882 () Bool)

(declare-fun lt!543010 () Token!5532)

(assert (=> d!464882 (= lt!543010 (apply!4134 (list!6549 (tokens!2198 thiss!10002)) 0))))

(assert (=> d!464882 (= lt!543010 (apply!4135 (c!253628 (tokens!2198 thiss!10002)) 0))))

(declare-fun e!1006783 () Bool)

(assert (=> d!464882 e!1006783))

(declare-fun res!698838 () Bool)

(assert (=> d!464882 (=> (not res!698838) (not e!1006783))))

(assert (=> d!464882 (= res!698838 (<= 0 0))))

(assert (=> d!464882 (= (apply!4131 (tokens!2198 thiss!10002) 0) lt!543010)))

(declare-fun b!1567583 () Bool)

(assert (=> b!1567583 (= e!1006783 (< 0 (size!13812 (tokens!2198 thiss!10002))))))

(assert (= (and d!464882 res!698838) b!1567583))

(assert (=> d!464882 m!1836811))

(assert (=> d!464882 m!1836811))

(declare-fun m!1840795 () Bool)

(assert (=> d!464882 m!1840795))

(declare-fun m!1840797 () Bool)

(assert (=> d!464882 m!1840797))

(assert (=> b!1567583 m!1837847))

(assert (=> b!1566014 d!464882))

(declare-fun d!464884 () Bool)

(declare-fun lt!543011 () Token!5532)

(assert (=> d!464884 (= lt!543011 (apply!4134 (list!6549 (tokens!2198 thiss!10002)) (+ 0 1)))))

(assert (=> d!464884 (= lt!543011 (apply!4135 (c!253628 (tokens!2198 thiss!10002)) (+ 0 1)))))

(declare-fun e!1006784 () Bool)

(assert (=> d!464884 e!1006784))

(declare-fun res!698839 () Bool)

(assert (=> d!464884 (=> (not res!698839) (not e!1006784))))

(assert (=> d!464884 (= res!698839 (<= 0 (+ 0 1)))))

(assert (=> d!464884 (= (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)) lt!543011)))

(declare-fun b!1567584 () Bool)

(assert (=> b!1567584 (= e!1006784 (< (+ 0 1) (size!13812 (tokens!2198 thiss!10002))))))

(assert (= (and d!464884 res!698839) b!1567584))

(assert (=> d!464884 m!1836811))

(assert (=> d!464884 m!1836811))

(declare-fun m!1840799 () Bool)

(assert (=> d!464884 m!1840799))

(declare-fun m!1840801 () Bool)

(assert (=> d!464884 m!1840801))

(assert (=> b!1567584 m!1837847))

(assert (=> b!1566014 d!464884))

(declare-fun d!464886 () Bool)

(declare-fun lt!543017 () Token!5532)

(declare-fun contains!3007 (List!17100 Token!5532) Bool)

(assert (=> d!464886 (contains!3007 lt!542140 lt!543017)))

(declare-fun e!1006797 () Token!5532)

(assert (=> d!464886 (= lt!543017 e!1006797)))

(declare-fun c!254058 () Bool)

(assert (=> d!464886 (= c!254058 (= lt!542138 0))))

(declare-fun e!1006800 () Bool)

(assert (=> d!464886 e!1006800))

(declare-fun res!698852 () Bool)

(assert (=> d!464886 (=> (not res!698852) (not e!1006800))))

(assert (=> d!464886 (= res!698852 (<= 0 lt!542138))))

(assert (=> d!464886 (= (apply!4134 lt!542140 lt!542138) lt!543017)))

(declare-fun b!1567603 () Bool)

(assert (=> b!1567603 (= e!1006800 (< lt!542138 (size!13806 lt!542140)))))

(declare-fun b!1567604 () Bool)

(assert (=> b!1567604 (= e!1006797 (head!3126 lt!542140))))

(declare-fun b!1567606 () Bool)

(assert (=> b!1567606 (= e!1006797 (apply!4134 (tail!2221 lt!542140) (- lt!542138 1)))))

(assert (= (and d!464886 res!698852) b!1567603))

(assert (= (and d!464886 c!254058) b!1567604))

(assert (= (and d!464886 (not c!254058)) b!1567606))

(declare-fun m!1840823 () Bool)

(assert (=> d!464886 m!1840823))

(declare-fun m!1840829 () Bool)

(assert (=> b!1567603 m!1840829))

(declare-fun m!1840831 () Bool)

(assert (=> b!1567604 m!1840831))

(declare-fun m!1840833 () Bool)

(assert (=> b!1567606 m!1840833))

(assert (=> b!1567606 m!1840833))

(declare-fun m!1840835 () Bool)

(assert (=> b!1567606 m!1840835))

(assert (=> b!1566014 d!464886))

(declare-fun d!464908 () Bool)

(declare-fun lt!543019 () Bool)

(declare-fun e!1006801 () Bool)

(assert (=> d!464908 (= lt!543019 e!1006801)))

(declare-fun res!698854 () Bool)

(assert (=> d!464908 (=> (not res!698854) (not e!1006801))))

(assert (=> d!464908 (= res!698854 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 lt!542158))))) (list!6549 (singletonSeq!1349 lt!542158))))))

(declare-fun e!1006803 () Bool)

(assert (=> d!464908 (= lt!543019 e!1006803)))

(declare-fun res!698855 () Bool)

(assert (=> d!464908 (=> (not res!698855) (not e!1006803))))

(declare-fun lt!543018 () tuple2!16598)

(assert (=> d!464908 (= res!698855 (= (size!13812 (_1!9701 lt!543018)) 1))))

(assert (=> d!464908 (= lt!543018 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 lt!542158))))))

(assert (=> d!464908 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464908 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) lt!542158) lt!543019)))

(declare-fun b!1567613 () Bool)

(declare-fun res!698856 () Bool)

(assert (=> b!1567613 (=> (not res!698856) (not e!1006803))))

(assert (=> b!1567613 (= res!698856 (= (apply!4131 (_1!9701 lt!543018) 0) lt!542158))))

(declare-fun b!1567614 () Bool)

(assert (=> b!1567614 (= e!1006803 (isEmpty!10199 (_2!9701 lt!543018)))))

(declare-fun b!1567615 () Bool)

(assert (=> b!1567615 (= e!1006801 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 lt!542158))))))))

(assert (= (and d!464908 res!698855) b!1567613))

(assert (= (and b!1567613 res!698856) b!1567614))

(assert (= (and d!464908 res!698854) b!1567615))

(declare-fun m!1840847 () Bool)

(assert (=> d!464908 m!1840847))

(declare-fun m!1840849 () Bool)

(assert (=> d!464908 m!1840849))

(assert (=> d!464908 m!1836809))

(declare-fun m!1840851 () Bool)

(assert (=> d!464908 m!1840851))

(declare-fun m!1840853 () Bool)

(assert (=> d!464908 m!1840853))

(assert (=> d!464908 m!1840851))

(assert (=> d!464908 m!1840847))

(declare-fun m!1840855 () Bool)

(assert (=> d!464908 m!1840855))

(declare-fun m!1840857 () Bool)

(assert (=> d!464908 m!1840857))

(assert (=> d!464908 m!1840851))

(declare-fun m!1840859 () Bool)

(assert (=> b!1567613 m!1840859))

(declare-fun m!1840861 () Bool)

(assert (=> b!1567614 m!1840861))

(assert (=> b!1567615 m!1840851))

(assert (=> b!1567615 m!1840851))

(assert (=> b!1567615 m!1840847))

(assert (=> b!1567615 m!1840847))

(assert (=> b!1567615 m!1840849))

(declare-fun m!1840863 () Bool)

(assert (=> b!1567615 m!1840863))

(assert (=> b!1566014 d!464908))

(declare-fun d!464914 () Bool)

(assert (=> d!464914 (= (head!3126 (drop!799 lt!542156 0)) (apply!4134 lt!542156 0))))

(declare-fun lt!543029 () Unit!26198)

(declare-fun choose!9355 (List!17100 Int) Unit!26198)

(assert (=> d!464914 (= lt!543029 (choose!9355 lt!542156 0))))

(declare-fun e!1006811 () Bool)

(assert (=> d!464914 e!1006811))

(declare-fun res!698867 () Bool)

(assert (=> d!464914 (=> (not res!698867) (not e!1006811))))

(assert (=> d!464914 (= res!698867 (>= 0 0))))

(assert (=> d!464914 (= (lemmaDropApply!501 lt!542156 0) lt!543029)))

(declare-fun b!1567628 () Bool)

(assert (=> b!1567628 (= e!1006811 (< 0 (size!13806 lt!542156)))))

(assert (= (and d!464914 res!698867) b!1567628))

(assert (=> d!464914 m!1837805))

(assert (=> d!464914 m!1837805))

(assert (=> d!464914 m!1837809))

(assert (=> d!464914 m!1837793))

(declare-fun m!1840909 () Bool)

(assert (=> d!464914 m!1840909))

(declare-fun m!1840911 () Bool)

(assert (=> b!1567628 m!1840911))

(assert (=> b!1566014 d!464914))

(declare-fun d!464926 () Bool)

(assert (=> d!464926 (= (tail!2221 (drop!799 lt!542153 0)) (drop!799 lt!542153 (+ 0 1)))))

(declare-fun lt!543036 () Unit!26198)

(declare-fun choose!9356 (List!17100 Int) Unit!26198)

(assert (=> d!464926 (= lt!543036 (choose!9356 lt!542153 0))))

(declare-fun e!1006817 () Bool)

(assert (=> d!464926 e!1006817))

(declare-fun res!698871 () Bool)

(assert (=> d!464926 (=> (not res!698871) (not e!1006817))))

(assert (=> d!464926 (= res!698871 (>= 0 0))))

(assert (=> d!464926 (= (lemmaDropTail!481 lt!542153 0) lt!543036)))

(declare-fun b!1567636 () Bool)

(assert (=> b!1567636 (= e!1006817 (< 0 (size!13806 lt!542153)))))

(assert (= (and d!464926 res!698871) b!1567636))

(assert (=> d!464926 m!1837823))

(assert (=> d!464926 m!1837823))

(assert (=> d!464926 m!1837843))

(assert (=> d!464926 m!1837835))

(declare-fun m!1840935 () Bool)

(assert (=> d!464926 m!1840935))

(declare-fun m!1840937 () Bool)

(assert (=> b!1567636 m!1840937))

(assert (=> b!1566014 d!464926))

(declare-fun d!464942 () Bool)

(assert (=> d!464942 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) lt!542158)))

(declare-fun lt!543038 () Unit!26198)

(assert (=> d!464942 (= lt!543038 (choose!9342 Lexer!2610 (rules!12084 thiss!10002) lt!542167 lt!542158))))

(assert (=> d!464942 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464942 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) lt!542167 lt!542158) lt!543038)))

(declare-fun bs!389867 () Bool)

(assert (= bs!389867 d!464942))

(assert (=> bs!389867 m!1837819))

(declare-fun m!1840939 () Bool)

(assert (=> bs!389867 m!1840939))

(assert (=> bs!389867 m!1836809))

(assert (=> b!1566014 d!464942))

(declare-fun d!464944 () Bool)

(declare-fun lt!543039 () Token!5532)

(assert (=> d!464944 (contains!3007 lt!542156 lt!543039)))

(declare-fun e!1006823 () Token!5532)

(assert (=> d!464944 (= lt!543039 e!1006823)))

(declare-fun c!254065 () Bool)

(assert (=> d!464944 (= c!254065 (= 0 0))))

(declare-fun e!1006824 () Bool)

(assert (=> d!464944 e!1006824))

(declare-fun res!698874 () Bool)

(assert (=> d!464944 (=> (not res!698874) (not e!1006824))))

(assert (=> d!464944 (= res!698874 (<= 0 0))))

(assert (=> d!464944 (= (apply!4134 lt!542156 0) lt!543039)))

(declare-fun b!1567642 () Bool)

(assert (=> b!1567642 (= e!1006824 (< 0 (size!13806 lt!542156)))))

(declare-fun b!1567643 () Bool)

(assert (=> b!1567643 (= e!1006823 (head!3126 lt!542156))))

(declare-fun b!1567644 () Bool)

(assert (=> b!1567644 (= e!1006823 (apply!4134 (tail!2221 lt!542156) (- 0 1)))))

(assert (= (and d!464944 res!698874) b!1567642))

(assert (= (and d!464944 c!254065) b!1567643))

(assert (= (and d!464944 (not c!254065)) b!1567644))

(declare-fun m!1840941 () Bool)

(assert (=> d!464944 m!1840941))

(assert (=> b!1567642 m!1840911))

(declare-fun m!1840943 () Bool)

(assert (=> b!1567643 m!1840943))

(declare-fun m!1840945 () Bool)

(assert (=> b!1567644 m!1840945))

(assert (=> b!1567644 m!1840945))

(declare-fun m!1840947 () Bool)

(assert (=> b!1567644 m!1840947))

(assert (=> b!1566014 d!464944))

(declare-fun d!464946 () Bool)

(assert (=> d!464946 (= (tail!2221 (drop!799 lt!542153 0)) (t!141745 (drop!799 lt!542153 0)))))

(assert (=> b!1566014 d!464946))

(declare-fun b!1567684 () Bool)

(declare-fun e!1006848 () Int)

(declare-fun e!1006851 () Int)

(assert (=> b!1567684 (= e!1006848 e!1006851)))

(declare-fun c!254080 () Bool)

(declare-fun call!102489 () Int)

(assert (=> b!1567684 (= c!254080 (>= lt!542138 call!102489))))

(declare-fun b!1567685 () Bool)

(declare-fun e!1006850 () List!17100)

(declare-fun e!1006852 () List!17100)

(assert (=> b!1567685 (= e!1006850 e!1006852)))

(declare-fun c!254077 () Bool)

(assert (=> b!1567685 (= c!254077 (<= lt!542138 0))))

(declare-fun b!1567687 () Bool)

(assert (=> b!1567687 (= e!1006851 (- call!102489 lt!542138))))

(declare-fun bm!102484 () Bool)

(assert (=> bm!102484 (= call!102489 (size!13806 lt!542140))))

(declare-fun b!1567688 () Bool)

(declare-fun e!1006849 () Bool)

(declare-fun lt!543047 () List!17100)

(assert (=> b!1567688 (= e!1006849 (= (size!13806 lt!543047) e!1006848))))

(declare-fun c!254079 () Bool)

(assert (=> b!1567688 (= c!254079 (<= lt!542138 0))))

(declare-fun b!1567689 () Bool)

(assert (=> b!1567689 (= e!1006848 call!102489)))

(declare-fun b!1567690 () Bool)

(assert (=> b!1567690 (= e!1006850 Nil!17030)))

(declare-fun d!464950 () Bool)

(assert (=> d!464950 e!1006849))

(declare-fun res!698892 () Bool)

(assert (=> d!464950 (=> (not res!698892) (not e!1006849))))

(assert (=> d!464950 (= res!698892 (= ((_ map implies) (content!2356 lt!543047) (content!2356 lt!542140)) ((as const (InoxSet Token!5532)) true)))))

(assert (=> d!464950 (= lt!543047 e!1006850)))

(declare-fun c!254078 () Bool)

(assert (=> d!464950 (= c!254078 ((_ is Nil!17030) lt!542140))))

(assert (=> d!464950 (= (drop!799 lt!542140 lt!542138) lt!543047)))

(declare-fun b!1567686 () Bool)

(assert (=> b!1567686 (= e!1006851 0)))

(declare-fun b!1567691 () Bool)

(assert (=> b!1567691 (= e!1006852 lt!542140)))

(declare-fun b!1567692 () Bool)

(assert (=> b!1567692 (= e!1006852 (drop!799 (t!141745 lt!542140) (- lt!542138 1)))))

(assert (= (and d!464950 c!254078) b!1567690))

(assert (= (and d!464950 (not c!254078)) b!1567685))

(assert (= (and b!1567685 c!254077) b!1567691))

(assert (= (and b!1567685 (not c!254077)) b!1567692))

(assert (= (and d!464950 res!698892) b!1567688))

(assert (= (and b!1567688 c!254079) b!1567689))

(assert (= (and b!1567688 (not c!254079)) b!1567684))

(assert (= (and b!1567684 c!254080) b!1567686))

(assert (= (and b!1567684 (not c!254080)) b!1567687))

(assert (= (or b!1567689 b!1567684 b!1567687) bm!102484))

(assert (=> bm!102484 m!1840829))

(declare-fun m!1841017 () Bool)

(assert (=> b!1567688 m!1841017))

(declare-fun m!1841019 () Bool)

(assert (=> d!464950 m!1841019))

(declare-fun m!1841021 () Bool)

(assert (=> d!464950 m!1841021))

(declare-fun m!1841023 () Bool)

(assert (=> b!1567692 m!1841023))

(assert (=> b!1566014 d!464950))

(declare-fun d!464970 () Bool)

(assert (=> d!464970 (= (head!3126 (drop!799 lt!542156 0)) (h!22431 (drop!799 lt!542156 0)))))

(assert (=> b!1566014 d!464970))

(assert (=> b!1566014 d!463680))

(declare-fun b!1567696 () Bool)

(declare-fun e!1006856 () Int)

(declare-fun e!1006859 () Int)

(assert (=> b!1567696 (= e!1006856 e!1006859)))

(declare-fun c!254084 () Bool)

(declare-fun call!102490 () Int)

(assert (=> b!1567696 (= c!254084 (>= 0 call!102490))))

(declare-fun b!1567697 () Bool)

(declare-fun e!1006858 () List!17100)

(declare-fun e!1006860 () List!17100)

(assert (=> b!1567697 (= e!1006858 e!1006860)))

(declare-fun c!254081 () Bool)

(assert (=> b!1567697 (= c!254081 (<= 0 0))))

(declare-fun b!1567699 () Bool)

(assert (=> b!1567699 (= e!1006859 (- call!102490 0))))

(declare-fun bm!102485 () Bool)

(assert (=> bm!102485 (= call!102490 (size!13806 lt!542156))))

(declare-fun b!1567700 () Bool)

(declare-fun e!1006857 () Bool)

(declare-fun lt!543051 () List!17100)

(assert (=> b!1567700 (= e!1006857 (= (size!13806 lt!543051) e!1006856))))

(declare-fun c!254083 () Bool)

(assert (=> b!1567700 (= c!254083 (<= 0 0))))

(declare-fun b!1567701 () Bool)

(assert (=> b!1567701 (= e!1006856 call!102490)))

(declare-fun b!1567702 () Bool)

(assert (=> b!1567702 (= e!1006858 Nil!17030)))

(declare-fun d!464972 () Bool)

(assert (=> d!464972 e!1006857))

(declare-fun res!698896 () Bool)

(assert (=> d!464972 (=> (not res!698896) (not e!1006857))))

(assert (=> d!464972 (= res!698896 (= ((_ map implies) (content!2356 lt!543051) (content!2356 lt!542156)) ((as const (InoxSet Token!5532)) true)))))

(assert (=> d!464972 (= lt!543051 e!1006858)))

(declare-fun c!254082 () Bool)

(assert (=> d!464972 (= c!254082 ((_ is Nil!17030) lt!542156))))

(assert (=> d!464972 (= (drop!799 lt!542156 0) lt!543051)))

(declare-fun b!1567698 () Bool)

(assert (=> b!1567698 (= e!1006859 0)))

(declare-fun b!1567703 () Bool)

(assert (=> b!1567703 (= e!1006860 lt!542156)))

(declare-fun b!1567704 () Bool)

(assert (=> b!1567704 (= e!1006860 (drop!799 (t!141745 lt!542156) (- 0 1)))))

(assert (= (and d!464972 c!254082) b!1567702))

(assert (= (and d!464972 (not c!254082)) b!1567697))

(assert (= (and b!1567697 c!254081) b!1567703))

(assert (= (and b!1567697 (not c!254081)) b!1567704))

(assert (= (and d!464972 res!698896) b!1567700))

(assert (= (and b!1567700 c!254083) b!1567701))

(assert (= (and b!1567700 (not c!254083)) b!1567696))

(assert (= (and b!1567696 c!254084) b!1567698))

(assert (= (and b!1567696 (not c!254084)) b!1567699))

(assert (= (or b!1567701 b!1567696 b!1567699) bm!102485))

(assert (=> bm!102485 m!1840911))

(declare-fun m!1841031 () Bool)

(assert (=> b!1567700 m!1841031))

(declare-fun m!1841033 () Bool)

(assert (=> d!464972 m!1841033))

(declare-fun m!1841035 () Bool)

(assert (=> d!464972 m!1841035))

(declare-fun m!1841037 () Bool)

(assert (=> b!1567704 m!1841037))

(assert (=> b!1566014 d!464972))

(declare-fun d!464976 () Bool)

(declare-fun lt!543053 () Bool)

(declare-fun e!1006863 () Bool)

(assert (=> d!464976 (= lt!543053 e!1006863)))

(declare-fun res!698897 () Bool)

(assert (=> d!464976 (=> (not res!698897) (not e!1006863))))

(assert (=> d!464976 (= res!698897 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 lt!542141))))) (list!6549 (singletonSeq!1349 lt!542141))))))

(declare-fun e!1006864 () Bool)

(assert (=> d!464976 (= lt!543053 e!1006864)))

(declare-fun res!698898 () Bool)

(assert (=> d!464976 (=> (not res!698898) (not e!1006864))))

(declare-fun lt!543052 () tuple2!16598)

(assert (=> d!464976 (= res!698898 (= (size!13812 (_1!9701 lt!543052)) 1))))

(assert (=> d!464976 (= lt!543052 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 lt!542141))))))

(assert (=> d!464976 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464976 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) lt!542141) lt!543053)))

(declare-fun b!1567709 () Bool)

(declare-fun res!698899 () Bool)

(assert (=> b!1567709 (=> (not res!698899) (not e!1006864))))

(assert (=> b!1567709 (= res!698899 (= (apply!4131 (_1!9701 lt!543052) 0) lt!542141))))

(declare-fun b!1567710 () Bool)

(assert (=> b!1567710 (= e!1006864 (isEmpty!10199 (_2!9701 lt!543052)))))

(declare-fun b!1567711 () Bool)

(assert (=> b!1567711 (= e!1006863 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 lt!542141))))))))

(assert (= (and d!464976 res!698898) b!1567709))

(assert (= (and b!1567709 res!698899) b!1567710))

(assert (= (and d!464976 res!698897) b!1567711))

(declare-fun m!1841051 () Bool)

(assert (=> d!464976 m!1841051))

(declare-fun m!1841053 () Bool)

(assert (=> d!464976 m!1841053))

(assert (=> d!464976 m!1836809))

(declare-fun m!1841055 () Bool)

(assert (=> d!464976 m!1841055))

(declare-fun m!1841057 () Bool)

(assert (=> d!464976 m!1841057))

(assert (=> d!464976 m!1841055))

(assert (=> d!464976 m!1841051))

(declare-fun m!1841059 () Bool)

(assert (=> d!464976 m!1841059))

(declare-fun m!1841065 () Bool)

(assert (=> d!464976 m!1841065))

(assert (=> d!464976 m!1841055))

(declare-fun m!1841067 () Bool)

(assert (=> b!1567709 m!1841067))

(declare-fun m!1841069 () Bool)

(assert (=> b!1567710 m!1841069))

(assert (=> b!1567711 m!1841055))

(assert (=> b!1567711 m!1841055))

(assert (=> b!1567711 m!1841051))

(assert (=> b!1567711 m!1841051))

(assert (=> b!1567711 m!1841053))

(declare-fun m!1841071 () Bool)

(assert (=> b!1567711 m!1841071))

(assert (=> b!1566014 d!464976))

(declare-fun d!464984 () Bool)

(declare-fun lt!543055 () Bool)

(declare-fun e!1006869 () Bool)

(assert (=> d!464984 (= lt!543055 e!1006869)))

(declare-fun res!698902 () Bool)

(assert (=> d!464984 (=> (not res!698902) (not e!1006869))))

(assert (=> d!464984 (= res!698902 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))))) (list!6549 (singletonSeq!1349 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))))))

(declare-fun e!1006870 () Bool)

(assert (=> d!464984 (= lt!543055 e!1006870)))

(declare-fun res!698903 () Bool)

(assert (=> d!464984 (=> (not res!698903) (not e!1006870))))

(declare-fun lt!543054 () tuple2!16598)

(assert (=> d!464984 (= res!698903 (= (size!13812 (_1!9701 lt!543054)) 1))))

(assert (=> d!464984 (= lt!543054 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))))))

(assert (=> d!464984 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464984 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))) lt!543055)))

(declare-fun b!1567718 () Bool)

(declare-fun res!698904 () Bool)

(assert (=> b!1567718 (=> (not res!698904) (not e!1006870))))

(assert (=> b!1567718 (= res!698904 (= (apply!4131 (_1!9701 lt!543054) 0) (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))))

(declare-fun b!1567719 () Bool)

(assert (=> b!1567719 (= e!1006870 (isEmpty!10199 (_2!9701 lt!543054)))))

(declare-fun b!1567720 () Bool)

(assert (=> b!1567720 (= e!1006869 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))))))))

(assert (= (and d!464984 res!698903) b!1567718))

(assert (= (and b!1567718 res!698904) b!1567719))

(assert (= (and d!464984 res!698902) b!1567720))

(declare-fun m!1841073 () Bool)

(assert (=> d!464984 m!1841073))

(declare-fun m!1841075 () Bool)

(assert (=> d!464984 m!1841075))

(assert (=> d!464984 m!1836809))

(declare-fun m!1841077 () Bool)

(assert (=> d!464984 m!1841077))

(declare-fun m!1841079 () Bool)

(assert (=> d!464984 m!1841079))

(assert (=> d!464984 m!1841077))

(assert (=> d!464984 m!1841073))

(declare-fun m!1841081 () Bool)

(assert (=> d!464984 m!1841081))

(declare-fun m!1841083 () Bool)

(assert (=> d!464984 m!1841083))

(assert (=> d!464984 m!1837795))

(assert (=> d!464984 m!1841077))

(declare-fun m!1841085 () Bool)

(assert (=> b!1567718 m!1841085))

(declare-fun m!1841087 () Bool)

(assert (=> b!1567719 m!1841087))

(assert (=> b!1567720 m!1837795))

(assert (=> b!1567720 m!1841077))

(assert (=> b!1567720 m!1841077))

(assert (=> b!1567720 m!1841073))

(assert (=> b!1567720 m!1841073))

(assert (=> b!1567720 m!1841075))

(declare-fun m!1841089 () Bool)

(assert (=> b!1567720 m!1841089))

(assert (=> b!1566014 d!464984))

(declare-fun d!464986 () Bool)

(assert (=> d!464986 (= (separableTokensPredicate!598 Lexer!2610 (apply!4131 (tokens!2198 thiss!10002) 0) (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)) (rules!12084 thiss!10002)) (not (prefixMatchZipperSequence!393 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (++!4433 (charsOf!1659 (apply!4131 (tokens!2198 thiss!10002) 0)) (singletonSeq!1351 (apply!4133 (charsOf!1659 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))) 0))))))))

(declare-fun bs!389879 () Bool)

(assert (= bs!389879 d!464986))

(assert (=> bs!389879 m!1837143))

(declare-fun m!1841091 () Bool)

(assert (=> bs!389879 m!1841091))

(declare-fun m!1841093 () Bool)

(assert (=> bs!389879 m!1841093))

(declare-fun m!1841095 () Bool)

(assert (=> bs!389879 m!1841095))

(declare-fun m!1841097 () Bool)

(assert (=> bs!389879 m!1841097))

(assert (=> bs!389879 m!1841091))

(assert (=> bs!389879 m!1837143))

(assert (=> bs!389879 m!1837839))

(declare-fun m!1841099 () Bool)

(assert (=> bs!389879 m!1841099))

(assert (=> bs!389879 m!1837795))

(assert (=> bs!389879 m!1837839))

(assert (=> bs!389879 m!1841099))

(assert (=> bs!389879 m!1841097))

(assert (=> bs!389879 m!1837811))

(assert (=> bs!389879 m!1841095))

(assert (=> b!1566014 d!464986))

(declare-fun b!1567725 () Bool)

(declare-fun e!1006873 () Int)

(declare-fun e!1006876 () Int)

(assert (=> b!1567725 (= e!1006873 e!1006876)))

(declare-fun c!254094 () Bool)

(declare-fun call!102491 () Int)

(assert (=> b!1567725 (= c!254094 (>= (+ lt!542143 1) call!102491))))

(declare-fun b!1567726 () Bool)

(declare-fun e!1006875 () List!17100)

(declare-fun e!1006877 () List!17100)

(assert (=> b!1567726 (= e!1006875 e!1006877)))

(declare-fun c!254091 () Bool)

(assert (=> b!1567726 (= c!254091 (<= (+ lt!542143 1) 0))))

(declare-fun b!1567728 () Bool)

(assert (=> b!1567728 (= e!1006876 (- call!102491 (+ lt!542143 1)))))

(declare-fun bm!102486 () Bool)

(assert (=> bm!102486 (= call!102491 (size!13806 lt!542166))))

(declare-fun b!1567729 () Bool)

(declare-fun e!1006874 () Bool)

(declare-fun lt!543056 () List!17100)

(assert (=> b!1567729 (= e!1006874 (= (size!13806 lt!543056) e!1006873))))

(declare-fun c!254093 () Bool)

(assert (=> b!1567729 (= c!254093 (<= (+ lt!542143 1) 0))))

(declare-fun b!1567730 () Bool)

(assert (=> b!1567730 (= e!1006873 call!102491)))

(declare-fun b!1567731 () Bool)

(assert (=> b!1567731 (= e!1006875 Nil!17030)))

(declare-fun d!464988 () Bool)

(assert (=> d!464988 e!1006874))

(declare-fun res!698905 () Bool)

(assert (=> d!464988 (=> (not res!698905) (not e!1006874))))

(assert (=> d!464988 (= res!698905 (= ((_ map implies) (content!2356 lt!543056) (content!2356 lt!542166)) ((as const (InoxSet Token!5532)) true)))))

(assert (=> d!464988 (= lt!543056 e!1006875)))

(declare-fun c!254092 () Bool)

(assert (=> d!464988 (= c!254092 ((_ is Nil!17030) lt!542166))))

(assert (=> d!464988 (= (drop!799 lt!542166 (+ lt!542143 1)) lt!543056)))

(declare-fun b!1567727 () Bool)

(assert (=> b!1567727 (= e!1006876 0)))

(declare-fun b!1567732 () Bool)

(assert (=> b!1567732 (= e!1006877 lt!542166)))

(declare-fun b!1567733 () Bool)

(assert (=> b!1567733 (= e!1006877 (drop!799 (t!141745 lt!542166) (- (+ lt!542143 1) 1)))))

(assert (= (and d!464988 c!254092) b!1567731))

(assert (= (and d!464988 (not c!254092)) b!1567726))

(assert (= (and b!1567726 c!254091) b!1567732))

(assert (= (and b!1567726 (not c!254091)) b!1567733))

(assert (= (and d!464988 res!698905) b!1567729))

(assert (= (and b!1567729 c!254093) b!1567730))

(assert (= (and b!1567729 (not c!254093)) b!1567725))

(assert (= (and b!1567725 c!254094) b!1567727))

(assert (= (and b!1567725 (not c!254094)) b!1567728))

(assert (= (or b!1567730 b!1567725 b!1567728) bm!102486))

(declare-fun m!1841101 () Bool)

(assert (=> bm!102486 m!1841101))

(declare-fun m!1841103 () Bool)

(assert (=> b!1567729 m!1841103))

(declare-fun m!1841105 () Bool)

(assert (=> d!464988 m!1841105))

(declare-fun m!1841107 () Bool)

(assert (=> d!464988 m!1841107))

(declare-fun m!1841109 () Bool)

(assert (=> b!1567733 m!1841109))

(assert (=> b!1566014 d!464988))

(declare-fun d!464990 () Bool)

(assert (=> d!464990 (= (head!3126 (drop!799 lt!542140 lt!542138)) (apply!4134 lt!542140 lt!542138))))

(declare-fun lt!543057 () Unit!26198)

(assert (=> d!464990 (= lt!543057 (choose!9355 lt!542140 lt!542138))))

(declare-fun e!1006878 () Bool)

(assert (=> d!464990 e!1006878))

(declare-fun res!698906 () Bool)

(assert (=> d!464990 (=> (not res!698906) (not e!1006878))))

(assert (=> d!464990 (= res!698906 (>= lt!542138 0))))

(assert (=> d!464990 (= (lemmaDropApply!501 lt!542140 lt!542138) lt!543057)))

(declare-fun b!1567734 () Bool)

(assert (=> b!1567734 (= e!1006878 (< lt!542138 (size!13806 lt!542140)))))

(assert (= (and d!464990 res!698906) b!1567734))

(assert (=> d!464990 m!1837815))

(assert (=> d!464990 m!1837815))

(assert (=> d!464990 m!1837817))

(assert (=> d!464990 m!1837803))

(declare-fun m!1841111 () Bool)

(assert (=> d!464990 m!1841111))

(assert (=> b!1567734 m!1840829))

(assert (=> b!1566014 d!464990))

(declare-fun d!464992 () Bool)

(assert (=> d!464992 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) lt!542141)))

(declare-fun lt!543058 () Unit!26198)

(assert (=> d!464992 (= lt!543058 (choose!9342 Lexer!2610 (rules!12084 thiss!10002) lt!542137 lt!542141))))

(assert (=> d!464992 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!464992 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) lt!542137 lt!542141) lt!543058)))

(declare-fun bs!389880 () Bool)

(assert (= bs!389880 d!464992))

(assert (=> bs!389880 m!1837837))

(declare-fun m!1841125 () Bool)

(assert (=> bs!389880 m!1841125))

(assert (=> bs!389880 m!1836809))

(assert (=> b!1566014 d!464992))

(declare-fun d!464994 () Bool)

(assert (=> d!464994 (= (head!3126 (drop!799 lt!542140 lt!542138)) (h!22431 (drop!799 lt!542140 lt!542138)))))

(assert (=> b!1566014 d!464994))

(declare-fun d!464996 () Bool)

(assert (=> d!464996 (= (tail!2221 (drop!799 lt!542166 lt!542143)) (t!141745 (drop!799 lt!542166 lt!542143)))))

(assert (=> b!1566014 d!464996))

(declare-fun b!1567737 () Bool)

(declare-fun e!1006880 () Int)

(declare-fun e!1006883 () Int)

(assert (=> b!1567737 (= e!1006880 e!1006883)))

(declare-fun c!254099 () Bool)

(declare-fun call!102492 () Int)

(assert (=> b!1567737 (= c!254099 (>= lt!542143 call!102492))))

(declare-fun b!1567738 () Bool)

(declare-fun e!1006882 () List!17100)

(declare-fun e!1006884 () List!17100)

(assert (=> b!1567738 (= e!1006882 e!1006884)))

(declare-fun c!254096 () Bool)

(assert (=> b!1567738 (= c!254096 (<= lt!542143 0))))

(declare-fun b!1567740 () Bool)

(assert (=> b!1567740 (= e!1006883 (- call!102492 lt!542143))))

(declare-fun bm!102487 () Bool)

(assert (=> bm!102487 (= call!102492 (size!13806 lt!542166))))

(declare-fun b!1567741 () Bool)

(declare-fun e!1006881 () Bool)

(declare-fun lt!543059 () List!17100)

(assert (=> b!1567741 (= e!1006881 (= (size!13806 lt!543059) e!1006880))))

(declare-fun c!254098 () Bool)

(assert (=> b!1567741 (= c!254098 (<= lt!542143 0))))

(declare-fun b!1567742 () Bool)

(assert (=> b!1567742 (= e!1006880 call!102492)))

(declare-fun b!1567743 () Bool)

(assert (=> b!1567743 (= e!1006882 Nil!17030)))

(declare-fun d!464998 () Bool)

(assert (=> d!464998 e!1006881))

(declare-fun res!698907 () Bool)

(assert (=> d!464998 (=> (not res!698907) (not e!1006881))))

(assert (=> d!464998 (= res!698907 (= ((_ map implies) (content!2356 lt!543059) (content!2356 lt!542166)) ((as const (InoxSet Token!5532)) true)))))

(assert (=> d!464998 (= lt!543059 e!1006882)))

(declare-fun c!254097 () Bool)

(assert (=> d!464998 (= c!254097 ((_ is Nil!17030) lt!542166))))

(assert (=> d!464998 (= (drop!799 lt!542166 lt!542143) lt!543059)))

(declare-fun b!1567739 () Bool)

(assert (=> b!1567739 (= e!1006883 0)))

(declare-fun b!1567744 () Bool)

(assert (=> b!1567744 (= e!1006884 lt!542166)))

(declare-fun b!1567745 () Bool)

(assert (=> b!1567745 (= e!1006884 (drop!799 (t!141745 lt!542166) (- lt!542143 1)))))

(assert (= (and d!464998 c!254097) b!1567743))

(assert (= (and d!464998 (not c!254097)) b!1567738))

(assert (= (and b!1567738 c!254096) b!1567744))

(assert (= (and b!1567738 (not c!254096)) b!1567745))

(assert (= (and d!464998 res!698907) b!1567741))

(assert (= (and b!1567741 c!254098) b!1567742))

(assert (= (and b!1567741 (not c!254098)) b!1567737))

(assert (= (and b!1567737 c!254099) b!1567739))

(assert (= (and b!1567737 (not c!254099)) b!1567740))

(assert (= (or b!1567742 b!1567737 b!1567740) bm!102487))

(assert (=> bm!102487 m!1841101))

(declare-fun m!1841127 () Bool)

(assert (=> b!1567741 m!1841127))

(declare-fun m!1841129 () Bool)

(assert (=> d!464998 m!1841129))

(assert (=> d!464998 m!1841107))

(declare-fun m!1841131 () Bool)

(assert (=> b!1567745 m!1841131))

(assert (=> b!1566014 d!464998))

(declare-fun b!1567746 () Bool)

(declare-fun e!1006885 () Int)

(declare-fun e!1006888 () Int)

(assert (=> b!1567746 (= e!1006885 e!1006888)))

(declare-fun c!254103 () Bool)

(declare-fun call!102493 () Int)

(assert (=> b!1567746 (= c!254103 (>= 0 call!102493))))

(declare-fun b!1567747 () Bool)

(declare-fun e!1006887 () List!17100)

(declare-fun e!1006889 () List!17100)

(assert (=> b!1567747 (= e!1006887 e!1006889)))

(declare-fun c!254100 () Bool)

(assert (=> b!1567747 (= c!254100 (<= 0 0))))

(declare-fun b!1567749 () Bool)

(assert (=> b!1567749 (= e!1006888 (- call!102493 0))))

(declare-fun bm!102488 () Bool)

(assert (=> bm!102488 (= call!102493 (size!13806 lt!542153))))

(declare-fun b!1567750 () Bool)

(declare-fun e!1006886 () Bool)

(declare-fun lt!543060 () List!17100)

(assert (=> b!1567750 (= e!1006886 (= (size!13806 lt!543060) e!1006885))))

(declare-fun c!254102 () Bool)

(assert (=> b!1567750 (= c!254102 (<= 0 0))))

(declare-fun b!1567751 () Bool)

(assert (=> b!1567751 (= e!1006885 call!102493)))

(declare-fun b!1567752 () Bool)

(assert (=> b!1567752 (= e!1006887 Nil!17030)))

(declare-fun d!465002 () Bool)

(assert (=> d!465002 e!1006886))

(declare-fun res!698908 () Bool)

(assert (=> d!465002 (=> (not res!698908) (not e!1006886))))

(assert (=> d!465002 (= res!698908 (= ((_ map implies) (content!2356 lt!543060) (content!2356 lt!542153)) ((as const (InoxSet Token!5532)) true)))))

(assert (=> d!465002 (= lt!543060 e!1006887)))

(declare-fun c!254101 () Bool)

(assert (=> d!465002 (= c!254101 ((_ is Nil!17030) lt!542153))))

(assert (=> d!465002 (= (drop!799 lt!542153 0) lt!543060)))

(declare-fun b!1567748 () Bool)

(assert (=> b!1567748 (= e!1006888 0)))

(declare-fun b!1567753 () Bool)

(assert (=> b!1567753 (= e!1006889 lt!542153)))

(declare-fun b!1567754 () Bool)

(assert (=> b!1567754 (= e!1006889 (drop!799 (t!141745 lt!542153) (- 0 1)))))

(assert (= (and d!465002 c!254101) b!1567752))

(assert (= (and d!465002 (not c!254101)) b!1567747))

(assert (= (and b!1567747 c!254100) b!1567753))

(assert (= (and b!1567747 (not c!254100)) b!1567754))

(assert (= (and d!465002 res!698908) b!1567750))

(assert (= (and b!1567750 c!254102) b!1567751))

(assert (= (and b!1567750 (not c!254102)) b!1567746))

(assert (= (and b!1567746 c!254103) b!1567748))

(assert (= (and b!1567746 (not c!254103)) b!1567749))

(assert (= (or b!1567751 b!1567746 b!1567749) bm!102488))

(assert (=> bm!102488 m!1840937))

(declare-fun m!1841133 () Bool)

(assert (=> b!1567750 m!1841133))

(declare-fun m!1841135 () Bool)

(assert (=> d!465002 m!1841135))

(declare-fun m!1841137 () Bool)

(assert (=> d!465002 m!1841137))

(declare-fun m!1841139 () Bool)

(assert (=> b!1567754 m!1841139))

(assert (=> b!1566014 d!465002))

(declare-fun d!465004 () Bool)

(declare-fun lt!543061 () Int)

(assert (=> d!465004 (= lt!543061 (size!13810 (list!6554 (charsOf!1659 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))))))

(assert (=> d!465004 (= lt!543061 (size!13811 (c!253626 (charsOf!1659 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))))))

(assert (=> d!465004 (= (size!13804 (charsOf!1659 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))) lt!543061)))

(declare-fun bs!389881 () Bool)

(assert (= bs!389881 d!465004))

(assert (=> bs!389881 m!1837839))

(declare-fun m!1841141 () Bool)

(assert (=> bs!389881 m!1841141))

(assert (=> bs!389881 m!1841141))

(declare-fun m!1841143 () Bool)

(assert (=> bs!389881 m!1841143))

(declare-fun m!1841145 () Bool)

(assert (=> bs!389881 m!1841145))

(assert (=> b!1566014 d!465004))

(declare-fun d!465006 () Bool)

(declare-fun lt!543062 () BalanceConc!11172)

(assert (=> d!465006 (= (list!6554 lt!543062) (originalCharacters!3797 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))))

(assert (=> d!465006 (= lt!543062 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))) (value!94688 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))))

(assert (=> d!465006 (= (charsOf!1659 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))) lt!543062)))

(declare-fun b_lambda!49357 () Bool)

(assert (=> (not b_lambda!49357) (not d!465006)))

(declare-fun t!142014 () Bool)

(declare-fun tb!87665 () Bool)

(assert (=> (and b!1565729 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142014) tb!87665))

(declare-fun b!1567755 () Bool)

(declare-fun e!1006890 () Bool)

(declare-fun tp!461344 () Bool)

(assert (=> b!1567755 (= e!1006890 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))) (value!94688 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) tp!461344))))

(declare-fun result!106124 () Bool)

(assert (=> tb!87665 (= result!106124 (and (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))) (value!94688 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1))))) e!1006890))))

(assert (= tb!87665 b!1567755))

(declare-fun m!1841147 () Bool)

(assert (=> b!1567755 m!1841147))

(declare-fun m!1841149 () Bool)

(assert (=> tb!87665 m!1841149))

(assert (=> d!465006 t!142014))

(declare-fun b_and!109419 () Bool)

(assert (= b_and!109403 (and (=> t!142014 result!106124) b_and!109419)))

(declare-fun t!142016 () Bool)

(declare-fun tb!87667 () Bool)

(assert (=> (and b!1565698 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142016) tb!87667))

(declare-fun result!106126 () Bool)

(assert (= result!106126 result!106124))

(assert (=> d!465006 t!142016))

(declare-fun b_and!109421 () Bool)

(assert (= b_and!109393 (and (=> t!142016 result!106126) b_and!109421)))

(declare-fun t!142018 () Bool)

(declare-fun tb!87669 () Bool)

(assert (=> (and b!1566152 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142018) tb!87669))

(declare-fun result!106128 () Bool)

(assert (= result!106128 result!106124))

(assert (=> d!465006 t!142018))

(declare-fun b_and!109423 () Bool)

(assert (= b_and!109395 (and (=> t!142018 result!106128) b_and!109423)))

(declare-fun t!142020 () Bool)

(declare-fun tb!87671 () Bool)

(assert (=> (and b!1566217 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142020) tb!87671))

(declare-fun result!106130 () Bool)

(assert (= result!106130 result!106124))

(assert (=> d!465006 t!142020))

(declare-fun b_and!109425 () Bool)

(assert (= b_and!109397 (and (=> t!142020 result!106130) b_and!109425)))

(declare-fun t!142022 () Bool)

(declare-fun tb!87673 () Bool)

(assert (=> (and b!1566156 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142022) tb!87673))

(declare-fun result!106132 () Bool)

(assert (= result!106132 result!106124))

(assert (=> d!465006 t!142022))

(declare-fun b_and!109427 () Bool)

(assert (= b_and!109399 (and (=> t!142022 result!106132) b_and!109427)))

(declare-fun t!142024 () Bool)

(declare-fun tb!87675 () Bool)

(assert (=> (and b!1566193 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142024) tb!87675))

(declare-fun result!106134 () Bool)

(assert (= result!106134 result!106124))

(assert (=> d!465006 t!142024))

(declare-fun b_and!109429 () Bool)

(assert (= b_and!109391 (and (=> t!142024 result!106134) b_and!109429)))

(declare-fun t!142026 () Bool)

(declare-fun tb!87677 () Bool)

(assert (=> (and b!1565476 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142026) tb!87677))

(declare-fun result!106136 () Bool)

(assert (= result!106136 result!106124))

(assert (=> d!465006 t!142026))

(declare-fun b_and!109431 () Bool)

(assert (= b_and!109401 (and (=> t!142026 result!106136) b_and!109431)))

(declare-fun m!1841151 () Bool)

(assert (=> d!465006 m!1841151))

(declare-fun m!1841153 () Bool)

(assert (=> d!465006 m!1841153))

(assert (=> b!1566014 d!465006))

(declare-fun d!465008 () Bool)

(declare-fun lt!543064 () Bool)

(declare-fun e!1006891 () Bool)

(assert (=> d!465008 (= lt!543064 e!1006891)))

(declare-fun res!698909 () Bool)

(assert (=> d!465008 (=> (not res!698909) (not e!1006891))))

(assert (=> d!465008 (= res!698909 (= (list!6549 (_1!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (apply!4131 (tokens!2198 thiss!10002) 0)))))) (list!6549 (singletonSeq!1349 (apply!4131 (tokens!2198 thiss!10002) 0)))))))

(declare-fun e!1006892 () Bool)

(assert (=> d!465008 (= lt!543064 e!1006892)))

(declare-fun res!698910 () Bool)

(assert (=> d!465008 (=> (not res!698910) (not e!1006892))))

(declare-fun lt!543063 () tuple2!16598)

(assert (=> d!465008 (= res!698910 (= (size!13812 (_1!9701 lt!543063)) 1))))

(assert (=> d!465008 (= lt!543063 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (apply!4131 (tokens!2198 thiss!10002) 0)))))))

(assert (=> d!465008 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!465008 (= (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (apply!4131 (tokens!2198 thiss!10002) 0)) lt!543064)))

(declare-fun b!1567756 () Bool)

(declare-fun res!698911 () Bool)

(assert (=> b!1567756 (=> (not res!698911) (not e!1006892))))

(assert (=> b!1567756 (= res!698911 (= (apply!4131 (_1!9701 lt!543063) 0) (apply!4131 (tokens!2198 thiss!10002) 0)))))

(declare-fun b!1567757 () Bool)

(assert (=> b!1567757 (= e!1006892 (isEmpty!10199 (_2!9701 lt!543063)))))

(declare-fun b!1567758 () Bool)

(assert (=> b!1567758 (= e!1006891 (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (apply!4131 (tokens!2198 thiss!10002) 0)))))))))

(assert (= (and d!465008 res!698910) b!1567756))

(assert (= (and b!1567756 res!698911) b!1567757))

(assert (= (and d!465008 res!698909) b!1567758))

(declare-fun m!1841155 () Bool)

(assert (=> d!465008 m!1841155))

(declare-fun m!1841157 () Bool)

(assert (=> d!465008 m!1841157))

(assert (=> d!465008 m!1836809))

(declare-fun m!1841159 () Bool)

(assert (=> d!465008 m!1841159))

(declare-fun m!1841161 () Bool)

(assert (=> d!465008 m!1841161))

(assert (=> d!465008 m!1841159))

(assert (=> d!465008 m!1841155))

(declare-fun m!1841163 () Bool)

(assert (=> d!465008 m!1841163))

(declare-fun m!1841165 () Bool)

(assert (=> d!465008 m!1841165))

(assert (=> d!465008 m!1837811))

(assert (=> d!465008 m!1841159))

(declare-fun m!1841167 () Bool)

(assert (=> b!1567756 m!1841167))

(declare-fun m!1841169 () Bool)

(assert (=> b!1567757 m!1841169))

(assert (=> b!1567758 m!1837811))

(assert (=> b!1567758 m!1841159))

(assert (=> b!1567758 m!1841159))

(assert (=> b!1567758 m!1841155))

(assert (=> b!1567758 m!1841155))

(assert (=> b!1567758 m!1841157))

(declare-fun m!1841171 () Bool)

(assert (=> b!1567758 m!1841171))

(assert (=> b!1566014 d!465008))

(declare-fun b!1567759 () Bool)

(declare-fun e!1006893 () Int)

(declare-fun e!1006896 () Int)

(assert (=> b!1567759 (= e!1006893 e!1006896)))

(declare-fun c!254107 () Bool)

(declare-fun call!102494 () Int)

(assert (=> b!1567759 (= c!254107 (>= (+ 0 1) call!102494))))

(declare-fun b!1567760 () Bool)

(declare-fun e!1006895 () List!17100)

(declare-fun e!1006897 () List!17100)

(assert (=> b!1567760 (= e!1006895 e!1006897)))

(declare-fun c!254104 () Bool)

(assert (=> b!1567760 (= c!254104 (<= (+ 0 1) 0))))

(declare-fun b!1567762 () Bool)

(assert (=> b!1567762 (= e!1006896 (- call!102494 (+ 0 1)))))

(declare-fun bm!102489 () Bool)

(assert (=> bm!102489 (= call!102494 (size!13806 lt!542153))))

(declare-fun b!1567763 () Bool)

(declare-fun e!1006894 () Bool)

(declare-fun lt!543065 () List!17100)

(assert (=> b!1567763 (= e!1006894 (= (size!13806 lt!543065) e!1006893))))

(declare-fun c!254106 () Bool)

(assert (=> b!1567763 (= c!254106 (<= (+ 0 1) 0))))

(declare-fun b!1567764 () Bool)

(assert (=> b!1567764 (= e!1006893 call!102494)))

(declare-fun b!1567765 () Bool)

(assert (=> b!1567765 (= e!1006895 Nil!17030)))

(declare-fun d!465010 () Bool)

(assert (=> d!465010 e!1006894))

(declare-fun res!698912 () Bool)

(assert (=> d!465010 (=> (not res!698912) (not e!1006894))))

(assert (=> d!465010 (= res!698912 (= ((_ map implies) (content!2356 lt!543065) (content!2356 lt!542153)) ((as const (InoxSet Token!5532)) true)))))

(assert (=> d!465010 (= lt!543065 e!1006895)))

(declare-fun c!254105 () Bool)

(assert (=> d!465010 (= c!254105 ((_ is Nil!17030) lt!542153))))

(assert (=> d!465010 (= (drop!799 lt!542153 (+ 0 1)) lt!543065)))

(declare-fun b!1567761 () Bool)

(assert (=> b!1567761 (= e!1006896 0)))

(declare-fun b!1567766 () Bool)

(assert (=> b!1567766 (= e!1006897 lt!542153)))

(declare-fun b!1567767 () Bool)

(assert (=> b!1567767 (= e!1006897 (drop!799 (t!141745 lt!542153) (- (+ 0 1) 1)))))

(assert (= (and d!465010 c!254105) b!1567765))

(assert (= (and d!465010 (not c!254105)) b!1567760))

(assert (= (and b!1567760 c!254104) b!1567766))

(assert (= (and b!1567760 (not c!254104)) b!1567767))

(assert (= (and d!465010 res!698912) b!1567763))

(assert (= (and b!1567763 c!254106) b!1567764))

(assert (= (and b!1567763 (not c!254106)) b!1567759))

(assert (= (and b!1567759 c!254107) b!1567761))

(assert (= (and b!1567759 (not c!254107)) b!1567762))

(assert (= (or b!1567764 b!1567759 b!1567762) bm!102489))

(assert (=> bm!102489 m!1840937))

(declare-fun m!1841173 () Bool)

(assert (=> b!1567763 m!1841173))

(declare-fun m!1841175 () Bool)

(assert (=> d!465010 m!1841175))

(assert (=> d!465010 m!1841137))

(declare-fun m!1841177 () Bool)

(assert (=> b!1567767 m!1841177))

(assert (=> b!1566014 d!465010))

(declare-fun d!465012 () Bool)

(assert (=> d!465012 (= (tail!2221 (drop!799 lt!542166 lt!542143)) (drop!799 lt!542166 (+ lt!542143 1)))))

(declare-fun lt!543066 () Unit!26198)

(assert (=> d!465012 (= lt!543066 (choose!9356 lt!542166 lt!542143))))

(declare-fun e!1006898 () Bool)

(assert (=> d!465012 e!1006898))

(declare-fun res!698913 () Bool)

(assert (=> d!465012 (=> (not res!698913) (not e!1006898))))

(assert (=> d!465012 (= res!698913 (>= lt!542143 0))))

(assert (=> d!465012 (= (lemmaDropTail!481 lt!542166 lt!542143) lt!543066)))

(declare-fun b!1567768 () Bool)

(assert (=> b!1567768 (= e!1006898 (< lt!542143 (size!13806 lt!542166)))))

(assert (= (and d!465012 res!698913) b!1567768))

(assert (=> d!465012 m!1837799))

(assert (=> d!465012 m!1837799))

(assert (=> d!465012 m!1837801))

(assert (=> d!465012 m!1837807))

(declare-fun m!1841179 () Bool)

(assert (=> d!465012 m!1841179))

(assert (=> b!1567768 m!1841101))

(assert (=> b!1566014 d!465012))

(declare-fun d!465014 () Bool)

(declare-fun res!698914 () Bool)

(declare-fun e!1006899 () Bool)

(assert (=> d!465014 (=> res!698914 e!1006899)))

(assert (=> d!465014 (= res!698914 ((_ is Nil!17030) (t!141745 (t!141745 lt!541850))))))

(assert (=> d!465014 (= (forall!3952 (t!141745 (t!141745 lt!541850)) lambda!66222) e!1006899)))

(declare-fun b!1567769 () Bool)

(declare-fun e!1006900 () Bool)

(assert (=> b!1567769 (= e!1006899 e!1006900)))

(declare-fun res!698915 () Bool)

(assert (=> b!1567769 (=> (not res!698915) (not e!1006900))))

(assert (=> b!1567769 (= res!698915 (dynLambda!7593 lambda!66222 (h!22431 (t!141745 (t!141745 lt!541850)))))))

(declare-fun b!1567770 () Bool)

(assert (=> b!1567770 (= e!1006900 (forall!3952 (t!141745 (t!141745 (t!141745 lt!541850))) lambda!66222))))

(assert (= (and d!465014 (not res!698914)) b!1567769))

(assert (= (and b!1567769 res!698915) b!1567770))

(declare-fun b_lambda!49359 () Bool)

(assert (=> (not b_lambda!49359) (not b!1567769)))

(declare-fun m!1841181 () Bool)

(assert (=> b!1567769 m!1841181))

(declare-fun m!1841183 () Bool)

(assert (=> b!1567770 m!1841183))

(assert (=> d!463866 d!465014))

(assert (=> d!463866 d!463678))

(declare-fun d!465016 () Bool)

(assert (=> d!465016 (= (list!6554 lt!542319) (list!6556 (c!253626 lt!542319)))))

(declare-fun bs!389882 () Bool)

(assert (= bs!389882 d!465016))

(declare-fun m!1841185 () Bool)

(assert (=> bs!389882 m!1841185))

(assert (=> d!464040 d!465016))

(declare-fun d!465018 () Bool)

(declare-fun e!1006905 () Bool)

(assert (=> d!465018 e!1006905))

(declare-fun res!698920 () Bool)

(assert (=> d!465018 (=> (not res!698920) (not e!1006905))))

(declare-fun lt!543071 () BalanceConc!11172)

(assert (=> d!465018 (= res!698920 (= (list!6554 lt!543071) (Cons!17029 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0) Nil!17029)))))

(declare-fun choose!9357 (C!8796) BalanceConc!11172)

(assert (=> d!465018 (= lt!543071 (choose!9357 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))

(assert (=> d!465018 (= (singleton!557 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)) lt!543071)))

(declare-fun b!1567775 () Bool)

(assert (=> b!1567775 (= e!1006905 (isBalanced!1665 (c!253626 lt!543071)))))

(assert (= (and d!465018 res!698920) b!1567775))

(declare-fun m!1841187 () Bool)

(assert (=> d!465018 m!1841187))

(assert (=> d!465018 m!1837153))

(declare-fun m!1841189 () Bool)

(assert (=> d!465018 m!1841189))

(declare-fun m!1841191 () Bool)

(assert (=> b!1567775 m!1841191))

(assert (=> d!464040 d!465018))

(declare-fun d!465020 () Bool)

(declare-fun lt!543072 () Token!5532)

(assert (=> d!465020 (contains!3007 (list!6549 (_1!9701 lt!541960)) lt!543072)))

(declare-fun e!1006906 () Token!5532)

(assert (=> d!465020 (= lt!543072 e!1006906)))

(declare-fun c!254108 () Bool)

(assert (=> d!465020 (= c!254108 (= 0 0))))

(declare-fun e!1006907 () Bool)

(assert (=> d!465020 e!1006907))

(declare-fun res!698921 () Bool)

(assert (=> d!465020 (=> (not res!698921) (not e!1006907))))

(assert (=> d!465020 (= res!698921 (<= 0 0))))

(assert (=> d!465020 (= (apply!4134 (list!6549 (_1!9701 lt!541960)) 0) lt!543072)))

(declare-fun b!1567776 () Bool)

(assert (=> b!1567776 (= e!1006907 (< 0 (size!13806 (list!6549 (_1!9701 lt!541960)))))))

(declare-fun b!1567777 () Bool)

(assert (=> b!1567777 (= e!1006906 (head!3126 (list!6549 (_1!9701 lt!541960))))))

(declare-fun b!1567778 () Bool)

(assert (=> b!1567778 (= e!1006906 (apply!4134 (tail!2221 (list!6549 (_1!9701 lt!541960))) (- 0 1)))))

(assert (= (and d!465020 res!698921) b!1567776))

(assert (= (and d!465020 c!254108) b!1567777))

(assert (= (and d!465020 (not c!254108)) b!1567778))

(assert (=> d!465020 m!1837347))

(declare-fun m!1841193 () Bool)

(assert (=> d!465020 m!1841193))

(assert (=> b!1567776 m!1837347))

(assert (=> b!1567776 m!1837351))

(assert (=> b!1567777 m!1837347))

(declare-fun m!1841195 () Bool)

(assert (=> b!1567777 m!1841195))

(assert (=> b!1567778 m!1837347))

(declare-fun m!1841197 () Bool)

(assert (=> b!1567778 m!1841197))

(assert (=> b!1567778 m!1841197))

(declare-fun m!1841199 () Bool)

(assert (=> b!1567778 m!1841199))

(assert (=> d!464064 d!465020))

(assert (=> d!464064 d!464430))

(declare-fun b!1567797 () Bool)

(declare-fun e!1006920 () Token!5532)

(declare-fun call!102497 () Token!5532)

(assert (=> b!1567797 (= e!1006920 call!102497)))

(declare-fun b!1567798 () Bool)

(declare-fun e!1006923 () Int)

(assert (=> b!1567798 (= e!1006923 (- 0 (size!13807 (left!13804 (c!253628 (_1!9701 lt!541960))))))))

(declare-fun b!1567799 () Bool)

(declare-fun e!1006922 () Token!5532)

(assert (=> b!1567799 (= e!1006922 e!1006920)))

(declare-fun lt!543081 () Bool)

(declare-fun appendIndex!193 (List!17100 List!17100 Int) Bool)

(assert (=> b!1567799 (= lt!543081 (appendIndex!193 (list!6550 (left!13804 (c!253628 (_1!9701 lt!541960)))) (list!6550 (right!14134 (c!253628 (_1!9701 lt!541960)))) 0))))

(declare-fun c!254117 () Bool)

(assert (=> b!1567799 (= c!254117 (< 0 (size!13807 (left!13804 (c!253628 (_1!9701 lt!541960))))))))

(declare-fun b!1567800 () Bool)

(declare-fun e!1006921 () Bool)

(assert (=> b!1567800 (= e!1006921 (< 0 (size!13807 (c!253628 (_1!9701 lt!541960)))))))

(declare-fun d!465022 () Bool)

(declare-fun lt!543082 () Token!5532)

(assert (=> d!465022 (= lt!543082 (apply!4134 (list!6550 (c!253628 (_1!9701 lt!541960))) 0))))

(assert (=> d!465022 (= lt!543082 e!1006922)))

(declare-fun c!254115 () Bool)

(assert (=> d!465022 (= c!254115 ((_ is Leaf!8327) (c!253628 (_1!9701 lt!541960))))))

(assert (=> d!465022 e!1006921))

(declare-fun res!698928 () Bool)

(assert (=> d!465022 (=> (not res!698928) (not e!1006921))))

(assert (=> d!465022 (= res!698928 (<= 0 0))))

(assert (=> d!465022 (= (apply!4135 (c!253628 (_1!9701 lt!541960)) 0) lt!543082)))

(declare-fun b!1567801 () Bool)

(declare-fun apply!4145 (IArray!11235 Int) Token!5532)

(assert (=> b!1567801 (= e!1006922 (apply!4145 (xs!8415 (c!253628 (_1!9701 lt!541960))) 0))))

(declare-fun bm!102492 () Bool)

(declare-fun c!254116 () Bool)

(assert (=> bm!102492 (= c!254116 c!254117)))

(assert (=> bm!102492 (= call!102497 (apply!4135 (ite c!254117 (left!13804 (c!253628 (_1!9701 lt!541960))) (right!14134 (c!253628 (_1!9701 lt!541960)))) e!1006923))))

(declare-fun b!1567802 () Bool)

(assert (=> b!1567802 (= e!1006923 0)))

(declare-fun b!1567803 () Bool)

(assert (=> b!1567803 (= e!1006920 call!102497)))

(assert (= (and d!465022 res!698928) b!1567800))

(assert (= (and d!465022 c!254115) b!1567801))

(assert (= (and d!465022 (not c!254115)) b!1567799))

(assert (= (and b!1567799 c!254117) b!1567803))

(assert (= (and b!1567799 (not c!254117)) b!1567797))

(assert (= (or b!1567803 b!1567797) bm!102492))

(assert (= (and bm!102492 c!254116) b!1567802))

(assert (= (and bm!102492 (not c!254116)) b!1567798))

(declare-fun m!1841211 () Bool)

(assert (=> b!1567799 m!1841211))

(declare-fun m!1841213 () Bool)

(assert (=> b!1567799 m!1841213))

(assert (=> b!1567799 m!1841211))

(assert (=> b!1567799 m!1841213))

(declare-fun m!1841215 () Bool)

(assert (=> b!1567799 m!1841215))

(declare-fun m!1841217 () Bool)

(assert (=> b!1567799 m!1841217))

(declare-fun m!1841219 () Bool)

(assert (=> bm!102492 m!1841219))

(assert (=> d!465022 m!1839415))

(assert (=> d!465022 m!1839415))

(declare-fun m!1841221 () Bool)

(assert (=> d!465022 m!1841221))

(assert (=> b!1567798 m!1841217))

(assert (=> b!1567800 m!1837353))

(declare-fun m!1841223 () Bool)

(assert (=> b!1567801 m!1841223))

(assert (=> d!464064 d!465022))

(assert (=> b!1566125 d!464318))

(assert (=> b!1566125 d!464320))

(declare-fun d!465028 () Bool)

(assert (=> d!465028 (= (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850)))) (isBalanced!1665 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850))))))))

(declare-fun bs!389883 () Bool)

(assert (= bs!389883 d!465028))

(declare-fun m!1841225 () Bool)

(assert (=> bs!389883 m!1841225))

(assert (=> tb!87479 d!465028))

(declare-fun d!465030 () Bool)

(assert (=> d!465030 (= (inv!22390 (tag!3247 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (= (mod (str.len (value!94687 (tag!3247 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) 2) 0))))

(assert (=> b!1566151 d!465030))

(declare-fun d!465032 () Bool)

(declare-fun res!698929 () Bool)

(declare-fun e!1006927 () Bool)

(assert (=> d!465032 (=> (not res!698929) (not e!1006927))))

(assert (=> d!465032 (= res!698929 (semiInverseModEq!1131 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toValue!4370 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))))))

(assert (=> d!465032 (= (inv!22403 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) e!1006927)))

(declare-fun b!1567810 () Bool)

(assert (=> b!1567810 (= e!1006927 (equivClasses!1072 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toValue!4370 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))))))

(assert (= (and d!465032 res!698929) b!1567810))

(declare-fun m!1841227 () Bool)

(assert (=> d!465032 m!1841227))

(declare-fun m!1841229 () Bool)

(assert (=> b!1567810 m!1841229))

(assert (=> b!1566151 d!465032))

(declare-fun d!465034 () Bool)

(declare-fun lt!543083 () Int)

(assert (=> d!465034 (= lt!543083 (size!13806 (list!6550 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!465034 (= lt!543083 (ite ((_ is Empty!5615) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 0 (ite ((_ is Leaf!8327) (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (csize!11461 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (csize!11460 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> d!465034 (= (size!13807 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) lt!543083)))

(declare-fun bs!389884 () Bool)

(assert (= bs!389884 d!465034))

(assert (=> bs!389884 m!1837293))

(assert (=> bs!389884 m!1837293))

(assert (=> bs!389884 m!1840665))

(assert (=> d!464054 d!465034))

(declare-fun d!465036 () Bool)

(declare-fun lt!543084 () Int)

(assert (=> d!465036 (= lt!543084 (size!13806 (list!6550 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!465036 (= lt!543084 (ite ((_ is Empty!5615) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 0 (ite ((_ is Leaf!8327) (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (csize!11461 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) (csize!11460 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> d!465036 (= (size!13807 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) lt!543084)))

(declare-fun bs!389885 () Bool)

(assert (= bs!389885 d!465036))

(assert (=> bs!389885 m!1837295))

(assert (=> bs!389885 m!1837295))

(assert (=> bs!389885 m!1840667))

(assert (=> d!464054 d!465036))

(declare-fun d!465038 () Bool)

(declare-fun res!698930 () Bool)

(declare-fun e!1006928 () Bool)

(assert (=> d!465038 (=> res!698930 e!1006928)))

(assert (=> d!465038 (= res!698930 ((_ is Nil!17031) (rules!12084 thiss!10002)))))

(assert (=> d!465038 (= (forall!3954 (rules!12084 thiss!10002) lambda!66221) e!1006928)))

(declare-fun b!1567811 () Bool)

(declare-fun e!1006929 () Bool)

(assert (=> b!1567811 (= e!1006928 e!1006929)))

(declare-fun res!698931 () Bool)

(assert (=> b!1567811 (=> (not res!698931) (not e!1006929))))

(assert (=> b!1567811 (= res!698931 (dynLambda!7596 lambda!66221 (h!22432 (rules!12084 thiss!10002))))))

(declare-fun b!1567812 () Bool)

(assert (=> b!1567812 (= e!1006929 (forall!3954 (t!141746 (rules!12084 thiss!10002)) lambda!66221))))

(assert (= (and d!465038 (not res!698930)) b!1567811))

(assert (= (and b!1567811 res!698931) b!1567812))

(declare-fun b_lambda!49361 () Bool)

(assert (=> (not b_lambda!49361) (not b!1567811)))

(declare-fun m!1841239 () Bool)

(assert (=> b!1567811 m!1841239))

(declare-fun m!1841241 () Bool)

(assert (=> b!1567812 m!1841241))

(assert (=> d!463828 d!465038))

(declare-fun d!465042 () Bool)

(declare-fun lt!543085 () C!8796)

(assert (=> d!465042 (= lt!543085 (apply!4138 (list!6554 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) 0))))

(assert (=> d!465042 (= lt!543085 (apply!4139 (c!253626 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) 0))))

(declare-fun e!1006930 () Bool)

(assert (=> d!465042 e!1006930))

(declare-fun res!698932 () Bool)

(assert (=> d!465042 (=> (not res!698932) (not e!1006930))))

(assert (=> d!465042 (= res!698932 (<= 0 0))))

(assert (=> d!465042 (= (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0) lt!543085)))

(declare-fun b!1567813 () Bool)

(assert (=> b!1567813 (= e!1006930 (< 0 (size!13804 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(assert (= (and d!465042 res!698932) b!1567813))

(assert (=> d!465042 m!1837061))

(assert (=> d!465042 m!1837709))

(assert (=> d!465042 m!1837709))

(declare-fun m!1841243 () Bool)

(assert (=> d!465042 m!1841243))

(declare-fun m!1841245 () Bool)

(assert (=> d!465042 m!1841245))

(assert (=> b!1567813 m!1837061))

(assert (=> b!1567813 m!1837065))

(assert (=> d!463968 d!465042))

(declare-fun d!465044 () Bool)

(declare-fun lt!543086 () BalanceConc!11172)

(assert (=> d!465044 (= (list!6554 lt!543086) (originalCharacters!3797 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))

(assert (=> d!465044 (= lt!543086 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (value!94688 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))

(assert (=> d!465044 (= (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) lt!543086)))

(declare-fun b_lambda!49363 () Bool)

(assert (=> (not b_lambda!49363) (not d!465044)))

(declare-fun t!142030 () Bool)

(declare-fun tb!87679 () Bool)

(assert (=> (and b!1565476 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142030) tb!87679))

(declare-fun b!1567814 () Bool)

(declare-fun e!1006931 () Bool)

(declare-fun tp!461345 () Bool)

(assert (=> b!1567814 (= e!1006931 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (value!94688 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) tp!461345))))

(declare-fun result!106138 () Bool)

(assert (=> tb!87679 (= result!106138 (and (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (value!94688 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) e!1006931))))

(assert (= tb!87679 b!1567814))

(declare-fun m!1841251 () Bool)

(assert (=> b!1567814 m!1841251))

(declare-fun m!1841253 () Bool)

(assert (=> tb!87679 m!1841253))

(assert (=> d!465044 t!142030))

(declare-fun b_and!109433 () Bool)

(assert (= b_and!109431 (and (=> t!142030 result!106138) b_and!109433)))

(declare-fun tb!87681 () Bool)

(declare-fun t!142032 () Bool)

(assert (=> (and b!1565698 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142032) tb!87681))

(declare-fun result!106140 () Bool)

(assert (= result!106140 result!106138))

(assert (=> d!465044 t!142032))

(declare-fun b_and!109435 () Bool)

(assert (= b_and!109421 (and (=> t!142032 result!106140) b_and!109435)))

(declare-fun tb!87683 () Bool)

(declare-fun t!142034 () Bool)

(assert (=> (and b!1566156 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142034) tb!87683))

(declare-fun result!106142 () Bool)

(assert (= result!106142 result!106138))

(assert (=> d!465044 t!142034))

(declare-fun b_and!109437 () Bool)

(assert (= b_and!109427 (and (=> t!142034 result!106142) b_and!109437)))

(declare-fun tb!87685 () Bool)

(declare-fun t!142036 () Bool)

(assert (=> (and b!1566193 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142036) tb!87685))

(declare-fun result!106144 () Bool)

(assert (= result!106144 result!106138))

(assert (=> d!465044 t!142036))

(declare-fun b_and!109439 () Bool)

(assert (= b_and!109429 (and (=> t!142036 result!106144) b_and!109439)))

(declare-fun tb!87687 () Bool)

(declare-fun t!142038 () Bool)

(assert (=> (and b!1565729 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142038) tb!87687))

(declare-fun result!106146 () Bool)

(assert (= result!106146 result!106138))

(assert (=> d!465044 t!142038))

(declare-fun b_and!109441 () Bool)

(assert (= b_and!109419 (and (=> t!142038 result!106146) b_and!109441)))

(declare-fun tb!87689 () Bool)

(declare-fun t!142040 () Bool)

(assert (=> (and b!1566217 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142040) tb!87689))

(declare-fun result!106148 () Bool)

(assert (= result!106148 result!106138))

(assert (=> d!465044 t!142040))

(declare-fun b_and!109443 () Bool)

(assert (= b_and!109425 (and (=> t!142040 result!106148) b_and!109443)))

(declare-fun t!142042 () Bool)

(declare-fun tb!87691 () Bool)

(assert (=> (and b!1566152 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142042) tb!87691))

(declare-fun result!106150 () Bool)

(assert (= result!106150 result!106138))

(assert (=> d!465044 t!142042))

(declare-fun b_and!109445 () Bool)

(assert (= b_and!109423 (and (=> t!142042 result!106150) b_and!109445)))

(declare-fun m!1841257 () Bool)

(assert (=> d!465044 m!1841257))

(declare-fun m!1841259 () Bool)

(assert (=> d!465044 m!1841259))

(assert (=> d!463968 d!465044))

(declare-fun d!465048 () Bool)

(declare-fun lt!543092 () Bool)

(assert (=> d!465048 (= lt!543092 (prefixMatch!327 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (list!6554 (++!4433 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))))))))

(assert (=> d!465048 (= lt!543092 (prefixMatchZipperSequence!394 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))) (++!4433 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))) 0))))

(declare-fun lt!543091 () Unit!26198)

(declare-fun lt!543093 () Unit!26198)

(assert (=> d!465048 (= lt!543091 lt!543093)))

(declare-fun lt!543088 () List!17099)

(declare-fun lt!543096 () (InoxSet Context!1636))

(assert (=> d!465048 (= (prefixMatch!327 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) lt!543088) (prefixMatchZipper!103 lt!543096 lt!543088))))

(declare-fun lt!543095 () List!17105)

(assert (=> d!465048 (= lt!543093 (prefixMatchZipperRegexEquiv!103 lt!543096 lt!543095 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) lt!543088))))

(assert (=> d!465048 (= lt!543088 (list!6554 (++!4433 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0)))))))

(assert (=> d!465048 (= lt!543095 (toList!864 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))))

(assert (=> d!465048 (= lt!543096 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))

(declare-fun lt!543090 () Unit!26198)

(declare-fun lt!543087 () Unit!26198)

(assert (=> d!465048 (= lt!543090 lt!543087)))

(declare-fun lt!543094 () (InoxSet Context!1636))

(declare-fun lt!543089 () Int)

(assert (=> d!465048 (= (prefixMatchZipper!103 lt!543094 (dropList!499 (++!4433 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))) lt!543089)) (prefixMatchZipperSequence!394 lt!543094 (++!4433 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))) lt!543089))))

(assert (=> d!465048 (= lt!543087 (lemmaprefixMatchZipperSequenceEquivalent!103 lt!543094 (++!4433 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))) lt!543089))))

(assert (=> d!465048 (= lt!543089 0)))

(assert (=> d!465048 (= lt!543094 (focus!124 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002))))))

(assert (=> d!465048 (validRegex!1723 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)))))

(assert (=> d!465048 (= (prefixMatchZipperSequence!393 (rulesRegex!441 Lexer!2610 (rules!12084 thiss!10002)) (++!4433 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0)))) lt!543092)))

(declare-fun bs!389887 () Bool)

(assert (= bs!389887 d!465048))

(assert (=> bs!389887 m!1837143))

(assert (=> bs!389887 m!1837879))

(assert (=> bs!389887 m!1837143))

(declare-fun m!1841269 () Bool)

(assert (=> bs!389887 m!1841269))

(assert (=> bs!389887 m!1837143))

(declare-fun m!1841271 () Bool)

(assert (=> bs!389887 m!1841271))

(declare-fun m!1841273 () Bool)

(assert (=> bs!389887 m!1841273))

(assert (=> bs!389887 m!1837143))

(declare-fun m!1841275 () Bool)

(assert (=> bs!389887 m!1841275))

(assert (=> bs!389887 m!1837879))

(assert (=> bs!389887 m!1837715))

(declare-fun m!1841277 () Bool)

(assert (=> bs!389887 m!1841277))

(assert (=> bs!389887 m!1837715))

(declare-fun m!1841279 () Bool)

(assert (=> bs!389887 m!1841279))

(assert (=> bs!389887 m!1841279))

(declare-fun m!1841281 () Bool)

(assert (=> bs!389887 m!1841281))

(assert (=> bs!389887 m!1837715))

(assert (=> bs!389887 m!1841271))

(assert (=> bs!389887 m!1837715))

(declare-fun m!1841283 () Bool)

(assert (=> bs!389887 m!1841283))

(assert (=> bs!389887 m!1837143))

(assert (=> bs!389887 m!1837897))

(assert (=> bs!389887 m!1837715))

(declare-fun m!1841285 () Bool)

(assert (=> bs!389887 m!1841285))

(assert (=> bs!389887 m!1837879))

(assert (=> bs!389887 m!1837901))

(declare-fun m!1841287 () Bool)

(assert (=> bs!389887 m!1841287))

(assert (=> d!463968 d!465048))

(declare-fun b!1567818 () Bool)

(declare-fun res!698934 () Bool)

(declare-fun e!1006933 () Bool)

(assert (=> b!1567818 (=> (not res!698934) (not e!1006933))))

(assert (=> b!1567818 (= res!698934 (<= (height!837 (++!4435 (c!253626 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))))) (+ (max!0 (height!837 (c!253626 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))))) 1)))))

(declare-fun b!1567820 () Bool)

(declare-fun lt!543097 () BalanceConc!11172)

(assert (=> b!1567820 (= e!1006933 (= (list!6554 lt!543097) (++!4436 (list!6554 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (list!6554 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))))))))

(declare-fun b!1567819 () Bool)

(declare-fun res!698935 () Bool)

(assert (=> b!1567819 (=> (not res!698935) (not e!1006933))))

(assert (=> b!1567819 (= res!698935 (>= (height!837 (++!4435 (c!253626 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))))) (max!0 (height!837 (c!253626 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (height!837 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0)))))))))

(declare-fun d!465052 () Bool)

(assert (=> d!465052 e!1006933))

(declare-fun res!698936 () Bool)

(assert (=> d!465052 (=> (not res!698936) (not e!1006933))))

(assert (=> d!465052 (= res!698936 (appendAssocInst!379 (c!253626 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0)))))))

(assert (=> d!465052 (= lt!543097 (BalanceConc!11173 (++!4435 (c!253626 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))))))))

(assert (=> d!465052 (= (++!4433 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))) lt!543097)))

(declare-fun b!1567817 () Bool)

(declare-fun res!698933 () Bool)

(assert (=> b!1567817 (=> (not res!698933) (not e!1006933))))

(assert (=> b!1567817 (= res!698933 (isBalanced!1665 (++!4435 (c!253626 (charsOf!1659 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0))))))))

(assert (= (and d!465052 res!698936) b!1567817))

(assert (= (and b!1567817 res!698933) b!1567818))

(assert (= (and b!1567818 res!698934) b!1567819))

(assert (= (and b!1567819 res!698935) b!1567820))

(declare-fun m!1841289 () Bool)

(assert (=> b!1567819 m!1841289))

(declare-fun m!1841291 () Bool)

(assert (=> b!1567819 m!1841291))

(declare-fun m!1841293 () Bool)

(assert (=> b!1567819 m!1841293))

(declare-fun m!1841295 () Bool)

(assert (=> b!1567819 m!1841295))

(declare-fun m!1841297 () Bool)

(assert (=> b!1567819 m!1841297))

(assert (=> b!1567819 m!1841295))

(assert (=> b!1567819 m!1841291))

(assert (=> b!1567819 m!1841289))

(declare-fun m!1841299 () Bool)

(assert (=> d!465052 m!1841299))

(assert (=> d!465052 m!1841295))

(declare-fun m!1841301 () Bool)

(assert (=> b!1567820 m!1841301))

(assert (=> b!1567820 m!1837719))

(declare-fun m!1841303 () Bool)

(assert (=> b!1567820 m!1841303))

(assert (=> b!1567820 m!1837721))

(declare-fun m!1841305 () Bool)

(assert (=> b!1567820 m!1841305))

(assert (=> b!1567820 m!1841303))

(assert (=> b!1567820 m!1841305))

(declare-fun m!1841307 () Bool)

(assert (=> b!1567820 m!1841307))

(assert (=> b!1567818 m!1841289))

(assert (=> b!1567818 m!1841291))

(assert (=> b!1567818 m!1841293))

(assert (=> b!1567818 m!1841295))

(assert (=> b!1567818 m!1841297))

(assert (=> b!1567818 m!1841295))

(assert (=> b!1567818 m!1841291))

(assert (=> b!1567818 m!1841289))

(assert (=> b!1567817 m!1841295))

(assert (=> b!1567817 m!1841295))

(declare-fun m!1841309 () Bool)

(assert (=> b!1567817 m!1841309))

(assert (=> d!463968 d!465052))

(assert (=> d!463968 d!464034))

(declare-fun d!465054 () Bool)

(declare-fun e!1006948 () Bool)

(assert (=> d!465054 e!1006948))

(declare-fun res!698947 () Bool)

(assert (=> d!465054 (=> (not res!698947) (not e!1006948))))

(declare-fun lt!543098 () BalanceConc!11172)

(assert (=> d!465054 (= res!698947 (= (list!6554 lt!543098) (Cons!17029 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0) Nil!17029)))))

(assert (=> d!465054 (= lt!543098 (singleton!557 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0)))))

(assert (=> d!465054 (= (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) 0)) lt!543098)))

(declare-fun b!1567839 () Bool)

(assert (=> b!1567839 (= e!1006948 (isBalanced!1665 (c!253626 lt!543098)))))

(assert (= (and d!465054 res!698947) b!1567839))

(declare-fun m!1841311 () Bool)

(assert (=> d!465054 m!1841311))

(assert (=> d!465054 m!1837723))

(declare-fun m!1841313 () Bool)

(assert (=> d!465054 m!1841313))

(declare-fun m!1841315 () Bool)

(assert (=> b!1567839 m!1841315))

(assert (=> d!463968 d!465054))

(assert (=> d!463968 d!463964))

(assert (=> bs!389672 d!463776))

(declare-fun d!465056 () Bool)

(assert (=> d!465056 (= (height!836 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (ite ((_ is Empty!5615) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 0 (ite ((_ is Leaf!8327) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 1 (cheight!5826 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1566017 d!465056))

(declare-fun d!465058 () Bool)

(assert (=> d!465058 (= (height!836 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (ite ((_ is Empty!5615) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 0 (ite ((_ is Leaf!8327) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 1 (cheight!5826 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> b!1566017 d!465058))

(declare-fun b!1567841 () Bool)

(declare-fun e!1006949 () List!17099)

(declare-fun e!1006950 () List!17099)

(assert (=> b!1567841 (= e!1006949 e!1006950)))

(declare-fun c!254127 () Bool)

(assert (=> b!1567841 (= c!254127 ((_ is Leaf!8326) (c!253626 lt!541959)))))

(declare-fun b!1567840 () Bool)

(assert (=> b!1567840 (= e!1006949 Nil!17029)))

(declare-fun b!1567843 () Bool)

(assert (=> b!1567843 (= e!1006950 (++!4436 (list!6556 (left!13803 (c!253626 lt!541959))) (list!6556 (right!14133 (c!253626 lt!541959)))))))

(declare-fun b!1567842 () Bool)

(assert (=> b!1567842 (= e!1006950 (list!6559 (xs!8414 (c!253626 lt!541959))))))

(declare-fun d!465060 () Bool)

(declare-fun c!254126 () Bool)

(assert (=> d!465060 (= c!254126 ((_ is Empty!5614) (c!253626 lt!541959)))))

(assert (=> d!465060 (= (list!6556 (c!253626 lt!541959)) e!1006949)))

(assert (= (and d!465060 c!254126) b!1567840))

(assert (= (and d!465060 (not c!254126)) b!1567841))

(assert (= (and b!1567841 c!254127) b!1567842))

(assert (= (and b!1567841 (not c!254127)) b!1567843))

(declare-fun m!1841317 () Bool)

(assert (=> b!1567843 m!1841317))

(declare-fun m!1841319 () Bool)

(assert (=> b!1567843 m!1841319))

(assert (=> b!1567843 m!1841317))

(assert (=> b!1567843 m!1841319))

(declare-fun m!1841321 () Bool)

(assert (=> b!1567843 m!1841321))

(declare-fun m!1841323 () Bool)

(assert (=> b!1567842 m!1841323))

(assert (=> d!464018 d!465060))

(assert (=> b!1565676 d!463970))

(assert (=> b!1565676 d!463972))

(assert (=> bs!389673 d!464778))

(declare-fun bs!389888 () Bool)

(declare-fun d!465062 () Bool)

(assert (= bs!389888 (and d!465062 d!463734)))

(declare-fun lambda!66280 () Int)

(assert (=> bs!389888 (= lambda!66280 lambda!66209)))

(declare-fun bs!389889 () Bool)

(assert (= bs!389889 (and d!465062 d!464502)))

(assert (=> bs!389889 (= lambda!66280 lambda!66271)))

(declare-fun bs!389890 () Bool)

(assert (= bs!389890 (and d!465062 d!464412)))

(assert (=> bs!389890 (= lambda!66280 lambda!66269)))

(declare-fun bs!389891 () Bool)

(assert (= bs!389891 (and d!465062 d!463688)))

(assert (=> bs!389891 (= lambda!66280 lambda!66200)))

(declare-fun bs!389892 () Bool)

(assert (= bs!389892 (and d!465062 d!463866)))

(assert (=> bs!389892 (= lambda!66280 lambda!66222)))

(declare-fun bs!389893 () Bool)

(assert (= bs!389893 (and d!465062 d!463762)))

(assert (=> bs!389893 (= lambda!66280 lambda!66213)))

(declare-fun bs!389894 () Bool)

(assert (= bs!389894 (and d!465062 d!463978)))

(assert (=> bs!389894 (= lambda!66280 lambda!66226)))

(declare-fun b!1567848 () Bool)

(declare-fun e!1006955 () Bool)

(assert (=> b!1567848 (= e!1006955 true)))

(declare-fun b!1567847 () Bool)

(declare-fun e!1006954 () Bool)

(assert (=> b!1567847 (= e!1006954 e!1006955)))

(declare-fun b!1567846 () Bool)

(declare-fun e!1006953 () Bool)

(assert (=> b!1567846 (= e!1006953 e!1006954)))

(assert (=> d!465062 e!1006953))

(assert (= b!1567847 b!1567848))

(assert (= b!1567846 b!1567847))

(assert (= (and d!465062 ((_ is Cons!17031) (rules!12084 thiss!10002))) b!1567846))

(assert (=> b!1567848 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66280))))

(assert (=> b!1567848 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66280))))

(assert (=> d!465062 true))

(declare-fun lt!543099 () Bool)

(assert (=> d!465062 (= lt!543099 (forall!3952 (t!141745 (t!141745 (t!141745 lt!541850))) lambda!66280))))

(declare-fun e!1006951 () Bool)

(assert (=> d!465062 (= lt!543099 e!1006951)))

(declare-fun res!698948 () Bool)

(assert (=> d!465062 (=> res!698948 e!1006951)))

(assert (=> d!465062 (= res!698948 (not ((_ is Cons!17030) (t!141745 (t!141745 (t!141745 lt!541850))))))))

(assert (=> d!465062 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!465062 (= (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 (t!141745 (t!141745 lt!541850)))) lt!543099)))

(declare-fun b!1567844 () Bool)

(declare-fun e!1006952 () Bool)

(assert (=> b!1567844 (= e!1006951 e!1006952)))

(declare-fun res!698949 () Bool)

(assert (=> b!1567844 (=> (not res!698949) (not e!1006952))))

(assert (=> b!1567844 (= res!698949 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (t!141745 (t!141745 lt!541850))))))))

(declare-fun b!1567845 () Bool)

(assert (=> b!1567845 (= e!1006952 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 (t!141745 (t!141745 (t!141745 lt!541850))))))))

(assert (= (and d!465062 (not res!698948)) b!1567844))

(assert (= (and b!1567844 res!698949) b!1567845))

(declare-fun m!1841331 () Bool)

(assert (=> d!465062 m!1841331))

(assert (=> d!465062 m!1836809))

(declare-fun m!1841333 () Bool)

(assert (=> b!1567844 m!1841333))

(declare-fun m!1841335 () Bool)

(assert (=> b!1567845 m!1841335))

(assert (=> b!1565845 d!465062))

(declare-fun d!465066 () Bool)

(assert (=> d!465066 (= (list!6554 lt!541997) (list!6556 (c!253626 lt!541997)))))

(declare-fun bs!389895 () Bool)

(assert (= bs!389895 d!465066))

(declare-fun m!1841337 () Bool)

(assert (=> bs!389895 m!1841337))

(assert (=> d!463850 d!465066))

(declare-fun d!465068 () Bool)

(declare-fun c!254131 () Bool)

(assert (=> d!465068 (= c!254131 ((_ is Cons!17030) (list!6549 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun e!1006964 () List!17099)

(assert (=> d!465068 (= (printList!772 Lexer!2610 (list!6549 (singletonSeq!1349 (h!22431 lt!541850)))) e!1006964)))

(declare-fun b!1567860 () Bool)

(assert (=> b!1567860 (= e!1006964 (++!4436 (list!6554 (charsOf!1659 (h!22431 (list!6549 (singletonSeq!1349 (h!22431 lt!541850)))))) (printList!772 Lexer!2610 (t!141745 (list!6549 (singletonSeq!1349 (h!22431 lt!541850)))))))))

(declare-fun b!1567861 () Bool)

(assert (=> b!1567861 (= e!1006964 Nil!17029)))

(assert (= (and d!465068 c!254131) b!1567860))

(assert (= (and d!465068 (not c!254131)) b!1567861))

(declare-fun m!1841343 () Bool)

(assert (=> b!1567860 m!1841343))

(assert (=> b!1567860 m!1841343))

(declare-fun m!1841345 () Bool)

(assert (=> b!1567860 m!1841345))

(declare-fun m!1841349 () Bool)

(assert (=> b!1567860 m!1841349))

(assert (=> b!1567860 m!1841345))

(assert (=> b!1567860 m!1841349))

(declare-fun m!1841351 () Bool)

(assert (=> b!1567860 m!1841351))

(assert (=> d!463850 d!465068))

(assert (=> d!463850 d!463862))

(declare-fun d!465070 () Bool)

(declare-fun lt!543101 () BalanceConc!11172)

(assert (=> d!465070 (= (list!6554 lt!543101) (printListTailRec!294 Lexer!2610 (dropList!497 (singletonSeq!1349 (h!22431 lt!541850)) 0) (list!6554 (BalanceConc!11173 Empty!5614))))))

(declare-fun e!1006965 () BalanceConc!11172)

(assert (=> d!465070 (= lt!543101 e!1006965)))

(declare-fun c!254132 () Bool)

(assert (=> d!465070 (= c!254132 (>= 0 (size!13812 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun e!1006966 () Bool)

(assert (=> d!465070 e!1006966))

(declare-fun res!698955 () Bool)

(assert (=> d!465070 (=> (not res!698955) (not e!1006966))))

(assert (=> d!465070 (= res!698955 (>= 0 0))))

(assert (=> d!465070 (= (printTailRec!708 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)) 0 (BalanceConc!11173 Empty!5614)) lt!543101)))

(declare-fun b!1567862 () Bool)

(assert (=> b!1567862 (= e!1006966 (<= 0 (size!13812 (singletonSeq!1349 (h!22431 lt!541850)))))))

(declare-fun b!1567863 () Bool)

(assert (=> b!1567863 (= e!1006965 (BalanceConc!11173 Empty!5614))))

(declare-fun b!1567864 () Bool)

(assert (=> b!1567864 (= e!1006965 (printTailRec!708 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)) (+ 0 1) (++!4433 (BalanceConc!11173 Empty!5614) (charsOf!1659 (apply!4131 (singletonSeq!1349 (h!22431 lt!541850)) 0)))))))

(declare-fun lt!543100 () List!17100)

(assert (=> b!1567864 (= lt!543100 (list!6549 (singletonSeq!1349 (h!22431 lt!541850))))))

(declare-fun lt!543103 () Unit!26198)

(assert (=> b!1567864 (= lt!543103 (lemmaDropApply!501 lt!543100 0))))

(assert (=> b!1567864 (= (head!3126 (drop!799 lt!543100 0)) (apply!4134 lt!543100 0))))

(declare-fun lt!543106 () Unit!26198)

(assert (=> b!1567864 (= lt!543106 lt!543103)))

(declare-fun lt!543105 () List!17100)

(assert (=> b!1567864 (= lt!543105 (list!6549 (singletonSeq!1349 (h!22431 lt!541850))))))

(declare-fun lt!543102 () Unit!26198)

(assert (=> b!1567864 (= lt!543102 (lemmaDropTail!481 lt!543105 0))))

(assert (=> b!1567864 (= (tail!2221 (drop!799 lt!543105 0)) (drop!799 lt!543105 (+ 0 1)))))

(declare-fun lt!543104 () Unit!26198)

(assert (=> b!1567864 (= lt!543104 lt!543102)))

(assert (= (and d!465070 res!698955) b!1567862))

(assert (= (and d!465070 c!254132) b!1567863))

(assert (= (and d!465070 (not c!254132)) b!1567864))

(declare-fun m!1841355 () Bool)

(assert (=> d!465070 m!1841355))

(assert (=> d!465070 m!1839073))

(declare-fun m!1841357 () Bool)

(assert (=> d!465070 m!1841357))

(declare-fun m!1841359 () Bool)

(assert (=> d!465070 m!1841359))

(assert (=> d!465070 m!1837167))

(assert (=> d!465070 m!1841355))

(assert (=> d!465070 m!1837167))

(declare-fun m!1841361 () Bool)

(assert (=> d!465070 m!1841361))

(assert (=> d!465070 m!1839073))

(assert (=> b!1567862 m!1837167))

(assert (=> b!1567862 m!1841361))

(assert (=> b!1567864 m!1837167))

(declare-fun m!1841363 () Bool)

(assert (=> b!1567864 m!1841363))

(assert (=> b!1567864 m!1837167))

(assert (=> b!1567864 m!1837169))

(declare-fun m!1841365 () Bool)

(assert (=> b!1567864 m!1841365))

(declare-fun m!1841367 () Bool)

(assert (=> b!1567864 m!1841367))

(declare-fun m!1841369 () Bool)

(assert (=> b!1567864 m!1841369))

(declare-fun m!1841371 () Bool)

(assert (=> b!1567864 m!1841371))

(assert (=> b!1567864 m!1841363))

(declare-fun m!1841373 () Bool)

(assert (=> b!1567864 m!1841373))

(declare-fun m!1841375 () Bool)

(assert (=> b!1567864 m!1841375))

(declare-fun m!1841377 () Bool)

(assert (=> b!1567864 m!1841377))

(declare-fun m!1841379 () Bool)

(assert (=> b!1567864 m!1841379))

(assert (=> b!1567864 m!1841367))

(assert (=> b!1567864 m!1841373))

(declare-fun m!1841381 () Bool)

(assert (=> b!1567864 m!1841381))

(assert (=> b!1567864 m!1837167))

(assert (=> b!1567864 m!1841381))

(declare-fun m!1841383 () Bool)

(assert (=> b!1567864 m!1841383))

(assert (=> b!1567864 m!1841375))

(declare-fun m!1841385 () Bool)

(assert (=> b!1567864 m!1841385))

(assert (=> d!463850 d!465070))

(declare-fun d!465074 () Bool)

(declare-fun res!698957 () Bool)

(declare-fun e!1006967 () Bool)

(assert (=> d!465074 (=> res!698957 e!1006967)))

(assert (=> d!465074 (= res!698957 (or (not ((_ is Cons!17030) (dropList!497 (tokens!2198 thiss!10002) 0))) (not ((_ is Cons!17030) (t!141745 (dropList!497 (tokens!2198 thiss!10002) 0))))))))

(assert (=> d!465074 (= (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (dropList!497 (tokens!2198 thiss!10002) 0) (rules!12084 thiss!10002)) e!1006967)))

(declare-fun b!1567865 () Bool)

(declare-fun e!1006968 () Bool)

(assert (=> b!1567865 (= e!1006967 e!1006968)))

(declare-fun res!698958 () Bool)

(assert (=> b!1567865 (=> (not res!698958) (not e!1006968))))

(assert (=> b!1567865 (= res!698958 (separableTokensPredicate!598 Lexer!2610 (h!22431 (dropList!497 (tokens!2198 thiss!10002) 0)) (h!22431 (t!141745 (dropList!497 (tokens!2198 thiss!10002) 0))) (rules!12084 thiss!10002)))))

(declare-fun lt!543113 () Unit!26198)

(declare-fun Unit!26237 () Unit!26198)

(assert (=> b!1567865 (= lt!543113 Unit!26237)))

(assert (=> b!1567865 (> (size!13804 (charsOf!1659 (h!22431 (t!141745 (dropList!497 (tokens!2198 thiss!10002) 0))))) 0)))

(declare-fun lt!543107 () Unit!26198)

(declare-fun Unit!26238 () Unit!26198)

(assert (=> b!1567865 (= lt!543107 Unit!26238)))

(assert (=> b!1567865 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (dropList!497 (tokens!2198 thiss!10002) 0))))))

(declare-fun lt!543108 () Unit!26198)

(declare-fun Unit!26239 () Unit!26198)

(assert (=> b!1567865 (= lt!543108 Unit!26239)))

(assert (=> b!1567865 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (dropList!497 (tokens!2198 thiss!10002) 0)))))

(declare-fun lt!543112 () Unit!26198)

(declare-fun lt!543110 () Unit!26198)

(assert (=> b!1567865 (= lt!543112 lt!543110)))

(assert (=> b!1567865 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (dropList!497 (tokens!2198 thiss!10002) 0))))))

(assert (=> b!1567865 (= lt!543110 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (dropList!497 (tokens!2198 thiss!10002) 0) (h!22431 (t!141745 (dropList!497 (tokens!2198 thiss!10002) 0)))))))

(declare-fun lt!543111 () Unit!26198)

(declare-fun lt!543109 () Unit!26198)

(assert (=> b!1567865 (= lt!543111 lt!543109)))

(assert (=> b!1567865 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (dropList!497 (tokens!2198 thiss!10002) 0)))))

(assert (=> b!1567865 (= lt!543109 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (dropList!497 (tokens!2198 thiss!10002) 0) (h!22431 (dropList!497 (tokens!2198 thiss!10002) 0))))))

(declare-fun b!1567866 () Bool)

(assert (=> b!1567866 (= e!1006968 (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (Cons!17030 (h!22431 (t!141745 (dropList!497 (tokens!2198 thiss!10002) 0))) (t!141745 (t!141745 (dropList!497 (tokens!2198 thiss!10002) 0)))) (rules!12084 thiss!10002)))))

(assert (= (and d!465074 (not res!698957)) b!1567865))

(assert (= (and b!1567865 res!698958) b!1567866))

(declare-fun m!1841387 () Bool)

(assert (=> b!1567865 m!1841387))

(declare-fun m!1841389 () Bool)

(assert (=> b!1567865 m!1841389))

(assert (=> b!1567865 m!1841387))

(declare-fun m!1841391 () Bool)

(assert (=> b!1567865 m!1841391))

(declare-fun m!1841393 () Bool)

(assert (=> b!1567865 m!1841393))

(declare-fun m!1841395 () Bool)

(assert (=> b!1567865 m!1841395))

(assert (=> b!1567865 m!1837851))

(declare-fun m!1841397 () Bool)

(assert (=> b!1567865 m!1841397))

(assert (=> b!1567865 m!1837851))

(declare-fun m!1841399 () Bool)

(assert (=> b!1567865 m!1841399))

(declare-fun m!1841401 () Bool)

(assert (=> b!1567866 m!1841401))

(assert (=> d!463980 d!465074))

(declare-fun bs!389896 () Bool)

(declare-fun d!465076 () Bool)

(assert (= bs!389896 (and d!465076 d!463734)))

(declare-fun lambda!66281 () Int)

(assert (=> bs!389896 (= lambda!66281 lambda!66209)))

(declare-fun bs!389897 () Bool)

(assert (= bs!389897 (and d!465076 d!464502)))

(assert (=> bs!389897 (= lambda!66281 lambda!66271)))

(declare-fun bs!389898 () Bool)

(assert (= bs!389898 (and d!465076 d!464412)))

(assert (=> bs!389898 (= lambda!66281 lambda!66269)))

(declare-fun bs!389899 () Bool)

(assert (= bs!389899 (and d!465076 d!463688)))

(assert (=> bs!389899 (= lambda!66281 lambda!66200)))

(declare-fun bs!389900 () Bool)

(assert (= bs!389900 (and d!465076 d!465062)))

(assert (=> bs!389900 (= lambda!66281 lambda!66280)))

(declare-fun bs!389901 () Bool)

(assert (= bs!389901 (and d!465076 d!463866)))

(assert (=> bs!389901 (= lambda!66281 lambda!66222)))

(declare-fun bs!389902 () Bool)

(assert (= bs!389902 (and d!465076 d!463762)))

(assert (=> bs!389902 (= lambda!66281 lambda!66213)))

(declare-fun bs!389903 () Bool)

(assert (= bs!389903 (and d!465076 d!463978)))

(assert (=> bs!389903 (= lambda!66281 lambda!66226)))

(declare-fun b!1567873 () Bool)

(declare-fun e!1006975 () Bool)

(assert (=> b!1567873 (= e!1006975 true)))

(declare-fun b!1567872 () Bool)

(declare-fun e!1006974 () Bool)

(assert (=> b!1567872 (= e!1006974 e!1006975)))

(declare-fun b!1567871 () Bool)

(declare-fun e!1006973 () Bool)

(assert (=> b!1567871 (= e!1006973 e!1006974)))

(assert (=> d!465076 e!1006973))

(assert (= b!1567872 b!1567873))

(assert (= b!1567871 b!1567872))

(assert (= (and d!465076 ((_ is Cons!17031) (rules!12084 thiss!10002))) b!1567871))

(assert (=> b!1567873 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66281))))

(assert (=> b!1567873 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002))))) (dynLambda!7590 order!10093 lambda!66281))))

(assert (=> d!465076 true))

(declare-fun lt!543114 () Bool)

(assert (=> d!465076 (= lt!543114 (forall!3952 lt!542157 lambda!66281))))

(declare-fun e!1006971 () Bool)

(assert (=> d!465076 (= lt!543114 e!1006971)))

(declare-fun res!698961 () Bool)

(assert (=> d!465076 (=> res!698961 e!1006971)))

(assert (=> d!465076 (= res!698961 (not ((_ is Cons!17030) lt!542157)))))

(assert (=> d!465076 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!465076 (= (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) lt!542157) lt!543114)))

(declare-fun b!1567869 () Bool)

(declare-fun e!1006972 () Bool)

(assert (=> b!1567869 (= e!1006971 e!1006972)))

(declare-fun res!698962 () Bool)

(assert (=> b!1567869 (=> (not res!698962) (not e!1006972))))

(assert (=> b!1567869 (= res!698962 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 lt!542157)))))

(declare-fun b!1567870 () Bool)

(assert (=> b!1567870 (= e!1006972 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) (t!141745 lt!542157)))))

(assert (= (and d!465076 (not res!698961)) b!1567869))

(assert (= (and b!1567869 res!698962) b!1567870))

(declare-fun m!1841405 () Bool)

(assert (=> d!465076 m!1841405))

(assert (=> d!465076 m!1836809))

(declare-fun m!1841407 () Bool)

(assert (=> b!1567869 m!1841407))

(declare-fun m!1841409 () Bool)

(assert (=> b!1567870 m!1841409))

(assert (=> d!463980 d!465076))

(declare-fun d!465078 () Bool)

(assert (=> d!465078 (subseq!374 (drop!799 lt!542142 0) lt!542142)))

(declare-fun lt!543117 () Unit!26198)

(declare-fun choose!9361 (List!17100 Int) Unit!26198)

(assert (=> d!465078 (= lt!543117 (choose!9361 lt!542142 0))))

(declare-fun e!1006979 () Bool)

(assert (=> d!465078 e!1006979))

(declare-fun res!698966 () Bool)

(assert (=> d!465078 (=> (not res!698966) (not e!1006979))))

(assert (=> d!465078 (= res!698966 (>= 0 0))))

(assert (=> d!465078 (= (lemmaDropSubSeq!69 lt!542142 0) lt!543117)))

(declare-fun b!1567877 () Bool)

(assert (=> b!1567877 (= e!1006979 (<= 0 (size!13806 lt!542142)))))

(assert (= (and d!465078 res!698966) b!1567877))

(assert (=> d!465078 m!1837857))

(assert (=> d!465078 m!1837857))

(assert (=> d!465078 m!1837859))

(declare-fun m!1841415 () Bool)

(assert (=> d!465078 m!1841415))

(assert (=> b!1567877 m!1837845))

(assert (=> d!463980 d!465078))

(declare-fun d!465084 () Bool)

(assert (=> d!465084 (= (dropList!497 (tokens!2198 thiss!10002) 0) (drop!799 (list!6550 (c!253628 (tokens!2198 thiss!10002))) 0))))

(declare-fun bs!389905 () Bool)

(assert (= bs!389905 d!465084))

(assert (=> bs!389905 m!1836823))

(assert (=> bs!389905 m!1836823))

(declare-fun m!1841417 () Bool)

(assert (=> bs!389905 m!1841417))

(assert (=> d!463980 d!465084))

(assert (=> d!463980 d!464556))

(declare-fun d!465086 () Bool)

(assert (=> d!465086 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) lt!542157)))

(declare-fun lt!543185 () Unit!26198)

(declare-fun choose!9363 (LexerInterface!2612 List!17101 List!17100 List!17100) Unit!26198)

(assert (=> d!465086 (= lt!543185 (choose!9363 Lexer!2610 (rules!12084 thiss!10002) lt!542159 lt!542157))))

(assert (=> d!465086 (not (isEmpty!10196 (rules!12084 thiss!10002)))))

(assert (=> d!465086 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!69 Lexer!2610 (rules!12084 thiss!10002) lt!542159 lt!542157) lt!543185)))

(declare-fun bs!389937 () Bool)

(assert (= bs!389937 d!465086))

(assert (=> bs!389937 m!1837855))

(declare-fun m!1841897 () Bool)

(assert (=> bs!389937 m!1841897))

(assert (=> bs!389937 m!1836809))

(assert (=> d!463980 d!465086))

(declare-fun b!1568228 () Bool)

(declare-fun e!1007170 () Int)

(declare-fun e!1007173 () Int)

(assert (=> b!1568228 (= e!1007170 e!1007173)))

(declare-fun c!254163 () Bool)

(declare-fun call!102507 () Int)

(assert (=> b!1568228 (= c!254163 (>= 0 call!102507))))

(declare-fun b!1568229 () Bool)

(declare-fun e!1007172 () List!17100)

(declare-fun e!1007174 () List!17100)

(assert (=> b!1568229 (= e!1007172 e!1007174)))

(declare-fun c!254160 () Bool)

(assert (=> b!1568229 (= c!254160 (<= 0 0))))

(declare-fun b!1568231 () Bool)

(assert (=> b!1568231 (= e!1007173 (- call!102507 0))))

(declare-fun bm!102502 () Bool)

(assert (=> bm!102502 (= call!102507 (size!13806 lt!542142))))

(declare-fun b!1568232 () Bool)

(declare-fun e!1007171 () Bool)

(declare-fun lt!543186 () List!17100)

(assert (=> b!1568232 (= e!1007171 (= (size!13806 lt!543186) e!1007170))))

(declare-fun c!254162 () Bool)

(assert (=> b!1568232 (= c!254162 (<= 0 0))))

(declare-fun b!1568233 () Bool)

(assert (=> b!1568233 (= e!1007170 call!102507)))

(declare-fun b!1568234 () Bool)

(assert (=> b!1568234 (= e!1007172 Nil!17030)))

(declare-fun d!465218 () Bool)

(assert (=> d!465218 e!1007171))

(declare-fun res!699015 () Bool)

(assert (=> d!465218 (=> (not res!699015) (not e!1007171))))

(assert (=> d!465218 (= res!699015 (= ((_ map implies) (content!2356 lt!543186) (content!2356 lt!542142)) ((as const (InoxSet Token!5532)) true)))))

(assert (=> d!465218 (= lt!543186 e!1007172)))

(declare-fun c!254161 () Bool)

(assert (=> d!465218 (= c!254161 ((_ is Nil!17030) lt!542142))))

(assert (=> d!465218 (= (drop!799 lt!542142 0) lt!543186)))

(declare-fun b!1568230 () Bool)

(assert (=> b!1568230 (= e!1007173 0)))

(declare-fun b!1568235 () Bool)

(assert (=> b!1568235 (= e!1007174 lt!542142)))

(declare-fun b!1568236 () Bool)

(assert (=> b!1568236 (= e!1007174 (drop!799 (t!141745 lt!542142) (- 0 1)))))

(assert (= (and d!465218 c!254161) b!1568234))

(assert (= (and d!465218 (not c!254161)) b!1568229))

(assert (= (and b!1568229 c!254160) b!1568235))

(assert (= (and b!1568229 (not c!254160)) b!1568236))

(assert (= (and d!465218 res!699015) b!1568232))

(assert (= (and b!1568232 c!254162) b!1568233))

(assert (= (and b!1568232 (not c!254162)) b!1568228))

(assert (= (and b!1568228 c!254163) b!1568230))

(assert (= (and b!1568228 (not c!254163)) b!1568231))

(assert (= (or b!1568233 b!1568228 b!1568231) bm!102502))

(assert (=> bm!102502 m!1837845))

(declare-fun m!1841899 () Bool)

(assert (=> b!1568232 m!1841899))

(declare-fun m!1841901 () Bool)

(assert (=> d!465218 m!1841901))

(declare-fun m!1841903 () Bool)

(assert (=> d!465218 m!1841903))

(declare-fun m!1841905 () Bool)

(assert (=> b!1568236 m!1841905))

(assert (=> d!463980 d!465218))

(declare-fun b!1568246 () Bool)

(declare-fun e!1007183 () Bool)

(declare-fun e!1007184 () Bool)

(assert (=> b!1568246 (= e!1007183 e!1007184)))

(declare-fun res!699024 () Bool)

(assert (=> b!1568246 (=> res!699024 e!1007184)))

(declare-fun e!1007186 () Bool)

(assert (=> b!1568246 (= res!699024 e!1007186)))

(declare-fun res!699026 () Bool)

(assert (=> b!1568246 (=> (not res!699026) (not e!1007186))))

(assert (=> b!1568246 (= res!699026 (= (h!22431 (drop!799 lt!542142 0)) (h!22431 lt!542142)))))

(declare-fun b!1568245 () Bool)

(declare-fun e!1007185 () Bool)

(assert (=> b!1568245 (= e!1007185 e!1007183)))

(declare-fun res!699027 () Bool)

(assert (=> b!1568245 (=> (not res!699027) (not e!1007183))))

(assert (=> b!1568245 (= res!699027 ((_ is Cons!17030) lt!542142))))

(declare-fun d!465232 () Bool)

(declare-fun res!699025 () Bool)

(assert (=> d!465232 (=> res!699025 e!1007185)))

(assert (=> d!465232 (= res!699025 ((_ is Nil!17030) (drop!799 lt!542142 0)))))

(assert (=> d!465232 (= (subseq!374 (drop!799 lt!542142 0) lt!542142) e!1007185)))

(declare-fun b!1568248 () Bool)

(assert (=> b!1568248 (= e!1007184 (subseq!374 (drop!799 lt!542142 0) (t!141745 lt!542142)))))

(declare-fun b!1568247 () Bool)

(assert (=> b!1568247 (= e!1007186 (subseq!374 (t!141745 (drop!799 lt!542142 0)) (t!141745 lt!542142)))))

(assert (= (and d!465232 (not res!699025)) b!1568245))

(assert (= (and b!1568245 res!699027) b!1568246))

(assert (= (and b!1568246 res!699026) b!1568247))

(assert (= (and b!1568246 (not res!699024)) b!1568248))

(assert (=> b!1568248 m!1837857))

(declare-fun m!1841907 () Bool)

(assert (=> b!1568248 m!1841907))

(declare-fun m!1841909 () Bool)

(assert (=> b!1568247 m!1841909))

(assert (=> d!463980 d!465232))

(assert (=> d!463980 d!463680))

(declare-fun d!465234 () Bool)

(declare-fun res!699030 () Bool)

(declare-fun e!1007188 () Bool)

(assert (=> d!465234 (=> res!699030 e!1007188)))

(assert (=> d!465234 (= res!699030 (not ((_ is Node!5615) (c!253628 lt!542027))))))

(assert (=> d!465234 (= (isBalanced!1663 (c!253628 lt!542027)) e!1007188)))

(declare-fun b!1568249 () Bool)

(declare-fun res!699033 () Bool)

(declare-fun e!1007187 () Bool)

(assert (=> b!1568249 (=> (not res!699033) (not e!1007187))))

(assert (=> b!1568249 (= res!699033 (<= (- (height!836 (left!13804 (c!253628 lt!542027))) (height!836 (right!14134 (c!253628 lt!542027)))) 1))))

(declare-fun b!1568250 () Bool)

(declare-fun res!699028 () Bool)

(assert (=> b!1568250 (=> (not res!699028) (not e!1007187))))

(assert (=> b!1568250 (= res!699028 (isBalanced!1663 (left!13804 (c!253628 lt!542027))))))

(declare-fun b!1568251 () Bool)

(declare-fun res!699032 () Bool)

(assert (=> b!1568251 (=> (not res!699032) (not e!1007187))))

(assert (=> b!1568251 (= res!699032 (not (isEmpty!10200 (left!13804 (c!253628 lt!542027)))))))

(declare-fun b!1568252 () Bool)

(assert (=> b!1568252 (= e!1007187 (not (isEmpty!10200 (right!14134 (c!253628 lt!542027)))))))

(declare-fun b!1568253 () Bool)

(assert (=> b!1568253 (= e!1007188 e!1007187)))

(declare-fun res!699029 () Bool)

(assert (=> b!1568253 (=> (not res!699029) (not e!1007187))))

(assert (=> b!1568253 (= res!699029 (<= (- 1) (- (height!836 (left!13804 (c!253628 lt!542027))) (height!836 (right!14134 (c!253628 lt!542027))))))))

(declare-fun b!1568254 () Bool)

(declare-fun res!699031 () Bool)

(assert (=> b!1568254 (=> (not res!699031) (not e!1007187))))

(assert (=> b!1568254 (= res!699031 (isBalanced!1663 (right!14134 (c!253628 lt!542027))))))

(assert (= (and d!465234 (not res!699030)) b!1568253))

(assert (= (and b!1568253 res!699029) b!1568249))

(assert (= (and b!1568249 res!699033) b!1568250))

(assert (= (and b!1568250 res!699028) b!1568254))

(assert (= (and b!1568254 res!699031) b!1568251))

(assert (= (and b!1568251 res!699032) b!1568252))

(declare-fun m!1841911 () Bool)

(assert (=> b!1568254 m!1841911))

(declare-fun m!1841913 () Bool)

(assert (=> b!1568251 m!1841913))

(declare-fun m!1841915 () Bool)

(assert (=> b!1568253 m!1841915))

(declare-fun m!1841917 () Bool)

(assert (=> b!1568253 m!1841917))

(assert (=> b!1568249 m!1841915))

(assert (=> b!1568249 m!1841917))

(declare-fun m!1841919 () Bool)

(assert (=> b!1568252 m!1841919))

(declare-fun m!1841921 () Bool)

(assert (=> b!1568250 m!1841921))

(assert (=> b!1565866 d!465234))

(declare-fun d!465236 () Bool)

(declare-fun res!699034 () Bool)

(declare-fun e!1007189 () Bool)

(assert (=> d!465236 (=> (not res!699034) (not e!1007189))))

(assert (=> d!465236 (= res!699034 (not (isEmpty!10203 (originalCharacters!3797 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(assert (=> d!465236 (= (inv!22409 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) e!1007189)))

(declare-fun b!1568255 () Bool)

(declare-fun res!699035 () Bool)

(assert (=> b!1568255 (=> (not res!699035) (not e!1007189))))

(assert (=> b!1568255 (= res!699035 (= (originalCharacters!3797 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) (list!6554 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))))

(declare-fun b!1568256 () Bool)

(assert (=> b!1568256 (= e!1007189 (= (size!13802 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) (size!13810 (originalCharacters!3797 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(assert (= (and d!465236 res!699034) b!1568255))

(assert (= (and b!1568255 res!699035) b!1568256))

(declare-fun b_lambda!49397 () Bool)

(assert (=> (not b_lambda!49397) (not b!1568255)))

(declare-fun t!142232 () Bool)

(declare-fun tb!87881 () Bool)

(assert (=> (and b!1565476 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142232) tb!87881))

(declare-fun b!1568257 () Bool)

(declare-fun e!1007190 () Bool)

(declare-fun tp!461626 () Bool)

(assert (=> b!1568257 (= e!1007190 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) tp!461626))))

(declare-fun result!106340 () Bool)

(assert (=> tb!87881 (= result!106340 (and (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007190))))

(assert (= tb!87881 b!1568257))

(declare-fun m!1841923 () Bool)

(assert (=> b!1568257 m!1841923))

(declare-fun m!1841925 () Bool)

(assert (=> tb!87881 m!1841925))

(assert (=> b!1568255 t!142232))

(declare-fun b_and!109507 () Bool)

(assert (= b_and!109433 (and (=> t!142232 result!106340) b_and!109507)))

(declare-fun t!142234 () Bool)

(declare-fun tb!87883 () Bool)

(assert (=> (and b!1565698 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142234) tb!87883))

(declare-fun result!106342 () Bool)

(assert (= result!106342 result!106340))

(assert (=> b!1568255 t!142234))

(declare-fun b_and!109509 () Bool)

(assert (= b_and!109435 (and (=> t!142234 result!106342) b_and!109509)))

(declare-fun t!142236 () Bool)

(declare-fun tb!87885 () Bool)

(assert (=> (and b!1566152 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142236) tb!87885))

(declare-fun result!106344 () Bool)

(assert (= result!106344 result!106340))

(assert (=> b!1568255 t!142236))

(declare-fun b_and!109511 () Bool)

(assert (= b_and!109445 (and (=> t!142236 result!106344) b_and!109511)))

(declare-fun t!142238 () Bool)

(declare-fun tb!87887 () Bool)

(assert (=> (and b!1566217 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142238) tb!87887))

(declare-fun result!106346 () Bool)

(assert (= result!106346 result!106340))

(assert (=> b!1568255 t!142238))

(declare-fun b_and!109513 () Bool)

(assert (= b_and!109443 (and (=> t!142238 result!106346) b_and!109513)))

(declare-fun t!142240 () Bool)

(declare-fun tb!87889 () Bool)

(assert (=> (and b!1566156 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142240) tb!87889))

(declare-fun result!106348 () Bool)

(assert (= result!106348 result!106340))

(assert (=> b!1568255 t!142240))

(declare-fun b_and!109515 () Bool)

(assert (= b_and!109437 (and (=> t!142240 result!106348) b_and!109515)))

(declare-fun t!142242 () Bool)

(declare-fun tb!87891 () Bool)

(assert (=> (and b!1566193 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142242) tb!87891))

(declare-fun result!106350 () Bool)

(assert (= result!106350 result!106340))

(assert (=> b!1568255 t!142242))

(declare-fun b_and!109517 () Bool)

(assert (= b_and!109439 (and (=> t!142242 result!106350) b_and!109517)))

(declare-fun t!142244 () Bool)

(declare-fun tb!87893 () Bool)

(assert (=> (and b!1565729 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142244) tb!87893))

(declare-fun result!106352 () Bool)

(assert (= result!106352 result!106340))

(assert (=> b!1568255 t!142244))

(declare-fun b_and!109519 () Bool)

(assert (= b_and!109441 (and (=> t!142244 result!106352) b_and!109519)))

(declare-fun m!1841927 () Bool)

(assert (=> d!465236 m!1841927))

(declare-fun m!1841929 () Bool)

(assert (=> b!1568255 m!1841929))

(assert (=> b!1568255 m!1841929))

(declare-fun m!1841931 () Bool)

(assert (=> b!1568255 m!1841931))

(declare-fun m!1841933 () Bool)

(assert (=> b!1568256 m!1841933))

(assert (=> b!1566214 d!465236))

(declare-fun d!465238 () Bool)

(declare-fun res!699036 () Bool)

(declare-fun e!1007191 () Bool)

(assert (=> d!465238 (=> res!699036 e!1007191)))

(assert (=> d!465238 (= res!699036 (or (not ((_ is Cons!17030) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))) (not ((_ is Cons!17030) (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))))

(assert (=> d!465238 (= (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) (rules!12084 thiss!10002)) e!1007191)))

(declare-fun b!1568258 () Bool)

(declare-fun e!1007192 () Bool)

(assert (=> b!1568258 (= e!1007191 e!1007192)))

(declare-fun res!699037 () Bool)

(assert (=> b!1568258 (=> (not res!699037) (not e!1007192))))

(assert (=> b!1568258 (= res!699037 (separableTokensPredicate!598 Lexer!2610 (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))) (rules!12084 thiss!10002)))))

(declare-fun lt!543193 () Unit!26198)

(declare-fun Unit!26243 () Unit!26198)

(assert (=> b!1568258 (= lt!543193 Unit!26243)))

(assert (=> b!1568258 (> (size!13804 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))) 0)))

(declare-fun lt!543187 () Unit!26198)

(declare-fun Unit!26244 () Unit!26198)

(assert (=> b!1568258 (= lt!543187 Unit!26244)))

(assert (=> b!1568258 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(declare-fun lt!543188 () Unit!26198)

(declare-fun Unit!26245 () Unit!26198)

(assert (=> b!1568258 (= lt!543188 Unit!26245)))

(assert (=> b!1568258 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(declare-fun lt!543192 () Unit!26198)

(declare-fun lt!543190 () Unit!26198)

(assert (=> b!1568258 (= lt!543192 lt!543190)))

(assert (=> b!1568258 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(assert (=> b!1568258 (= lt!543190 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))))

(declare-fun lt!543191 () Unit!26198)

(declare-fun lt!543189 () Unit!26198)

(assert (=> b!1568258 (= lt!543191 lt!543189)))

(assert (=> b!1568258 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(assert (=> b!1568258 (= lt!543189 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) (h!22431 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))))

(declare-fun b!1568259 () Bool)

(assert (=> b!1568259 (= e!1007192 (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) (rules!12084 thiss!10002)))))

(assert (= (and d!465238 (not res!699036)) b!1568258))

(assert (= (and b!1568258 res!699037) b!1568259))

(declare-fun m!1841935 () Bool)

(assert (=> b!1568258 m!1841935))

(declare-fun m!1841937 () Bool)

(assert (=> b!1568258 m!1841937))

(assert (=> b!1568258 m!1841935))

(declare-fun m!1841939 () Bool)

(assert (=> b!1568258 m!1841939))

(declare-fun m!1841941 () Bool)

(assert (=> b!1568258 m!1841941))

(declare-fun m!1841943 () Bool)

(assert (=> b!1568258 m!1841943))

(declare-fun m!1841945 () Bool)

(assert (=> b!1568258 m!1841945))

(declare-fun m!1841947 () Bool)

(assert (=> b!1568258 m!1841947))

(declare-fun m!1841949 () Bool)

(assert (=> b!1568259 m!1841949))

(assert (=> b!1565757 d!465238))

(assert (=> b!1566021 d!465056))

(assert (=> b!1566021 d!465058))

(declare-fun d!465240 () Bool)

(assert (=> d!465240 (= (max!0 (height!836 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (ite (< (height!836 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (height!836 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (height!836 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> b!1565929 d!465240))

(assert (=> b!1565929 d!465056))

(assert (=> b!1565929 d!465058))

(declare-fun d!465242 () Bool)

(declare-fun lt!543194 () Bool)

(assert (=> d!465242 (= lt!543194 (isEmpty!10203 (list!6554 (_2!9701 lt!542057))))))

(assert (=> d!465242 (= lt!543194 (isEmpty!10204 (c!253626 (_2!9701 lt!542057))))))

(assert (=> d!465242 (= (isEmpty!10199 (_2!9701 lt!542057)) lt!543194)))

(declare-fun bs!389945 () Bool)

(assert (= bs!389945 d!465242))

(declare-fun m!1841951 () Bool)

(assert (=> bs!389945 m!1841951))

(assert (=> bs!389945 m!1841951))

(declare-fun m!1841953 () Bool)

(assert (=> bs!389945 m!1841953))

(declare-fun m!1841955 () Bool)

(assert (=> bs!389945 m!1841955))

(assert (=> b!1565951 d!465242))

(declare-fun d!465244 () Bool)

(assert (=> d!465244 (= (list!6554 lt!542309) (list!6556 (c!253626 lt!542309)))))

(declare-fun bs!389946 () Bool)

(assert (= bs!389946 d!465244))

(declare-fun m!1841957 () Bool)

(assert (=> bs!389946 m!1841957))

(assert (=> b!1566062 d!465244))

(declare-fun d!465246 () Bool)

(declare-fun e!1007197 () Bool)

(assert (=> d!465246 e!1007197))

(declare-fun res!699043 () Bool)

(assert (=> d!465246 (=> (not res!699043) (not e!1007197))))

(declare-fun lt!543197 () List!17099)

(declare-fun content!2362 (List!17099) (InoxSet C!8796))

(assert (=> d!465246 (= res!699043 (= (content!2362 lt!543197) ((_ map or) (content!2362 (list!6554 (charsOf!1659 (h!22431 lt!541850)))) (content!2362 (list!6554 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun e!1007198 () List!17099)

(assert (=> d!465246 (= lt!543197 e!1007198)))

(declare-fun c!254166 () Bool)

(assert (=> d!465246 (= c!254166 ((_ is Nil!17029) (list!6554 (charsOf!1659 (h!22431 lt!541850)))))))

(assert (=> d!465246 (= (++!4436 (list!6554 (charsOf!1659 (h!22431 lt!541850))) (list!6554 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))) lt!543197)))

(declare-fun b!1568270 () Bool)

(declare-fun res!699042 () Bool)

(assert (=> b!1568270 (=> (not res!699042) (not e!1007197))))

(assert (=> b!1568270 (= res!699042 (= (size!13810 lt!543197) (+ (size!13810 (list!6554 (charsOf!1659 (h!22431 lt!541850)))) (size!13810 (list!6554 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))))

(declare-fun b!1568271 () Bool)

(assert (=> b!1568271 (= e!1007197 (or (not (= (list!6554 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) Nil!17029)) (= lt!543197 (list!6554 (charsOf!1659 (h!22431 lt!541850))))))))

(declare-fun b!1568268 () Bool)

(assert (=> b!1568268 (= e!1007198 (list!6554 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))

(declare-fun b!1568269 () Bool)

(assert (=> b!1568269 (= e!1007198 (Cons!17029 (h!22430 (list!6554 (charsOf!1659 (h!22431 lt!541850)))) (++!4436 (t!141744 (list!6554 (charsOf!1659 (h!22431 lt!541850)))) (list!6554 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))))))))

(assert (= (and d!465246 c!254166) b!1568268))

(assert (= (and d!465246 (not c!254166)) b!1568269))

(assert (= (and d!465246 res!699043) b!1568270))

(assert (= (and b!1568270 res!699042) b!1568271))

(declare-fun m!1841959 () Bool)

(assert (=> d!465246 m!1841959))

(assert (=> d!465246 m!1838013))

(declare-fun m!1841961 () Bool)

(assert (=> d!465246 m!1841961))

(assert (=> d!465246 m!1838015))

(declare-fun m!1841963 () Bool)

(assert (=> d!465246 m!1841963))

(declare-fun m!1841965 () Bool)

(assert (=> b!1568270 m!1841965))

(assert (=> b!1568270 m!1838013))

(declare-fun m!1841967 () Bool)

(assert (=> b!1568270 m!1841967))

(assert (=> b!1568270 m!1838015))

(declare-fun m!1841969 () Bool)

(assert (=> b!1568270 m!1841969))

(assert (=> b!1568269 m!1838015))

(declare-fun m!1841971 () Bool)

(assert (=> b!1568269 m!1841971))

(assert (=> b!1566062 d!465246))

(declare-fun d!465248 () Bool)

(assert (=> d!465248 (= (list!6554 (charsOf!1659 (h!22431 lt!541850))) (list!6556 (c!253626 (charsOf!1659 (h!22431 lt!541850)))))))

(declare-fun bs!389947 () Bool)

(assert (= bs!389947 d!465248))

(assert (=> bs!389947 m!1838933))

(assert (=> b!1566062 d!465248))

(declare-fun d!465250 () Bool)

(assert (=> d!465250 (= (list!6554 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0))) (list!6556 (c!253626 (singletonSeq!1351 (apply!4133 (charsOf!1659 (h!22431 (t!141745 lt!541850))) 0)))))))

(declare-fun bs!389948 () Bool)

(assert (= bs!389948 d!465250))

(assert (=> bs!389948 m!1838935))

(assert (=> b!1566062 d!465250))

(declare-fun d!465252 () Bool)

(declare-fun lt!543198 () Token!5532)

(assert (=> d!465252 (contains!3007 (list!6549 (_1!9701 lt!541955)) lt!543198)))

(declare-fun e!1007199 () Token!5532)

(assert (=> d!465252 (= lt!543198 e!1007199)))

(declare-fun c!254167 () Bool)

(assert (=> d!465252 (= c!254167 (= 0 0))))

(declare-fun e!1007200 () Bool)

(assert (=> d!465252 e!1007200))

(declare-fun res!699044 () Bool)

(assert (=> d!465252 (=> (not res!699044) (not e!1007200))))

(assert (=> d!465252 (= res!699044 (<= 0 0))))

(assert (=> d!465252 (= (apply!4134 (list!6549 (_1!9701 lt!541955)) 0) lt!543198)))

(declare-fun b!1568272 () Bool)

(assert (=> b!1568272 (= e!1007200 (< 0 (size!13806 (list!6549 (_1!9701 lt!541955)))))))

(declare-fun b!1568273 () Bool)

(assert (=> b!1568273 (= e!1007199 (head!3126 (list!6549 (_1!9701 lt!541955))))))

(declare-fun b!1568274 () Bool)

(assert (=> b!1568274 (= e!1007199 (apply!4134 (tail!2221 (list!6549 (_1!9701 lt!541955))) (- 0 1)))))

(assert (= (and d!465252 res!699044) b!1568272))

(assert (= (and d!465252 c!254167) b!1568273))

(assert (= (and d!465252 (not c!254167)) b!1568274))

(assert (=> d!465252 m!1837301))

(declare-fun m!1841973 () Bool)

(assert (=> d!465252 m!1841973))

(assert (=> b!1568272 m!1837301))

(assert (=> b!1568272 m!1837609))

(assert (=> b!1568273 m!1837301))

(declare-fun m!1841975 () Bool)

(assert (=> b!1568273 m!1841975))

(assert (=> b!1568274 m!1837301))

(declare-fun m!1841977 () Bool)

(assert (=> b!1568274 m!1841977))

(assert (=> b!1568274 m!1841977))

(declare-fun m!1841979 () Bool)

(assert (=> b!1568274 m!1841979))

(assert (=> d!463822 d!465252))

(assert (=> d!463822 d!464536))

(declare-fun b!1568275 () Bool)

(declare-fun e!1007201 () Token!5532)

(declare-fun call!102508 () Token!5532)

(assert (=> b!1568275 (= e!1007201 call!102508)))

(declare-fun b!1568276 () Bool)

(declare-fun e!1007204 () Int)

(assert (=> b!1568276 (= e!1007204 (- 0 (size!13807 (left!13804 (c!253628 (_1!9701 lt!541955))))))))

(declare-fun b!1568277 () Bool)

(declare-fun e!1007203 () Token!5532)

(assert (=> b!1568277 (= e!1007203 e!1007201)))

(declare-fun lt!543199 () Bool)

(assert (=> b!1568277 (= lt!543199 (appendIndex!193 (list!6550 (left!13804 (c!253628 (_1!9701 lt!541955)))) (list!6550 (right!14134 (c!253628 (_1!9701 lt!541955)))) 0))))

(declare-fun c!254170 () Bool)

(assert (=> b!1568277 (= c!254170 (< 0 (size!13807 (left!13804 (c!253628 (_1!9701 lt!541955))))))))

(declare-fun b!1568278 () Bool)

(declare-fun e!1007202 () Bool)

(assert (=> b!1568278 (= e!1007202 (< 0 (size!13807 (c!253628 (_1!9701 lt!541955)))))))

(declare-fun d!465254 () Bool)

(declare-fun lt!543200 () Token!5532)

(assert (=> d!465254 (= lt!543200 (apply!4134 (list!6550 (c!253628 (_1!9701 lt!541955))) 0))))

(assert (=> d!465254 (= lt!543200 e!1007203)))

(declare-fun c!254168 () Bool)

(assert (=> d!465254 (= c!254168 ((_ is Leaf!8327) (c!253628 (_1!9701 lt!541955))))))

(assert (=> d!465254 e!1007202))

(declare-fun res!699045 () Bool)

(assert (=> d!465254 (=> (not res!699045) (not e!1007202))))

(assert (=> d!465254 (= res!699045 (<= 0 0))))

(assert (=> d!465254 (= (apply!4135 (c!253628 (_1!9701 lt!541955)) 0) lt!543200)))

(declare-fun b!1568279 () Bool)

(assert (=> b!1568279 (= e!1007203 (apply!4145 (xs!8415 (c!253628 (_1!9701 lt!541955))) 0))))

(declare-fun bm!102503 () Bool)

(declare-fun c!254169 () Bool)

(assert (=> bm!102503 (= c!254169 c!254170)))

(assert (=> bm!102503 (= call!102508 (apply!4135 (ite c!254170 (left!13804 (c!253628 (_1!9701 lt!541955))) (right!14134 (c!253628 (_1!9701 lt!541955)))) e!1007204))))

(declare-fun b!1568280 () Bool)

(assert (=> b!1568280 (= e!1007204 0)))

(declare-fun b!1568281 () Bool)

(assert (=> b!1568281 (= e!1007201 call!102508)))

(assert (= (and d!465254 res!699045) b!1568278))

(assert (= (and d!465254 c!254168) b!1568279))

(assert (= (and d!465254 (not c!254168)) b!1568277))

(assert (= (and b!1568277 c!254170) b!1568281))

(assert (= (and b!1568277 (not c!254170)) b!1568275))

(assert (= (or b!1568281 b!1568275) bm!102503))

(assert (= (and bm!102503 c!254169) b!1568280))

(assert (= (and bm!102503 (not c!254169)) b!1568276))

(declare-fun m!1841981 () Bool)

(assert (=> b!1568277 m!1841981))

(declare-fun m!1841983 () Bool)

(assert (=> b!1568277 m!1841983))

(assert (=> b!1568277 m!1841981))

(assert (=> b!1568277 m!1841983))

(declare-fun m!1841985 () Bool)

(assert (=> b!1568277 m!1841985))

(declare-fun m!1841987 () Bool)

(assert (=> b!1568277 m!1841987))

(declare-fun m!1841989 () Bool)

(assert (=> bm!102503 m!1841989))

(assert (=> d!465254 m!1839703))

(assert (=> d!465254 m!1839703))

(declare-fun m!1841991 () Bool)

(assert (=> d!465254 m!1841991))

(assert (=> b!1568276 m!1841987))

(assert (=> b!1568278 m!1837611))

(declare-fun m!1841993 () Bool)

(assert (=> b!1568279 m!1841993))

(assert (=> d!463822 d!465254))

(assert (=> d!463962 d!463960))

(declare-fun d!465256 () Bool)

(assert (=> d!465256 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))

(assert (=> d!465256 true))

(declare-fun _$77!668 () Unit!26198)

(assert (=> d!465256 (= (choose!9342 Lexer!2610 (rules!12084 thiss!10002) (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))) (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))) _$77!668)))

(declare-fun bs!389949 () Bool)

(assert (= bs!389949 d!465256))

(assert (=> bs!389949 m!1837063))

(assert (=> d!463962 d!465256))

(assert (=> d!463962 d!463678))

(declare-fun d!465258 () Bool)

(assert (=> d!465258 (= (isEmpty!10203 (list!6554 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))) ((_ is Nil!17029) (list!6554 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(assert (=> d!464062 d!465258))

(declare-fun d!465260 () Bool)

(assert (=> d!465260 (= (list!6554 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))) (list!6556 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))))))

(declare-fun bs!389950 () Bool)

(assert (= bs!389950 d!465260))

(declare-fun m!1841995 () Bool)

(assert (=> bs!389950 m!1841995))

(assert (=> d!464062 d!465260))

(declare-fun d!465262 () Bool)

(declare-fun lt!543201 () Bool)

(assert (=> d!465262 (= lt!543201 (isEmpty!10203 (list!6556 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850)))))))))))

(assert (=> d!465262 (= lt!543201 (= (size!13811 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))) 0))))

(assert (=> d!465262 (= (isEmpty!10204 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 lt!541850))))))) lt!543201)))

(declare-fun bs!389951 () Bool)

(assert (= bs!389951 d!465262))

(assert (=> bs!389951 m!1841995))

(assert (=> bs!389951 m!1841995))

(declare-fun m!1841997 () Bool)

(assert (=> bs!389951 m!1841997))

(declare-fun m!1841999 () Bool)

(assert (=> bs!389951 m!1841999))

(assert (=> d!464062 d!465262))

(declare-fun d!465264 () Bool)

(declare-fun lt!543202 () Int)

(assert (=> d!465264 (>= lt!543202 0)))

(declare-fun e!1007205 () Int)

(assert (=> d!465264 (= lt!543202 e!1007205)))

(declare-fun c!254171 () Bool)

(assert (=> d!465264 (= c!254171 ((_ is Nil!17029) (list!6554 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(assert (=> d!465264 (= (size!13810 (list!6554 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) lt!543202)))

(declare-fun b!1568282 () Bool)

(assert (=> b!1568282 (= e!1007205 0)))

(declare-fun b!1568283 () Bool)

(assert (=> b!1568283 (= e!1007205 (+ 1 (size!13810 (t!141744 (list!6554 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(assert (= (and d!465264 c!254171) b!1568282))

(assert (= (and d!465264 (not c!254171)) b!1568283))

(declare-fun m!1842001 () Bool)

(assert (=> b!1568283 m!1842001))

(assert (=> d!463966 d!465264))

(declare-fun d!465266 () Bool)

(assert (=> d!465266 (= (list!6554 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))) (list!6556 (c!253626 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))

(declare-fun bs!389952 () Bool)

(assert (= bs!389952 d!465266))

(declare-fun m!1842003 () Bool)

(assert (=> bs!389952 m!1842003))

(assert (=> d!463966 d!465266))

(declare-fun d!465268 () Bool)

(declare-fun lt!543203 () Int)

(assert (=> d!465268 (= lt!543203 (size!13810 (list!6556 (c!253626 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(assert (=> d!465268 (= lt!543203 (ite ((_ is Empty!5614) (c!253626 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) 0 (ite ((_ is Leaf!8326) (c!253626 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (csize!11459 (c!253626 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (csize!11458 (c!253626 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(assert (=> d!465268 (= (size!13811 (c!253626 (charsOf!1659 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) lt!543203)))

(declare-fun bs!389953 () Bool)

(assert (= bs!389953 d!465268))

(assert (=> bs!389953 m!1842003))

(assert (=> bs!389953 m!1842003))

(declare-fun m!1842005 () Bool)

(assert (=> bs!389953 m!1842005))

(assert (=> d!463966 d!465268))

(declare-fun b!1568284 () Bool)

(declare-fun e!1007208 () Bool)

(assert (=> b!1568284 (= e!1007208 (tokensListTwoByTwoPredicateSeparable!146 Lexer!2610 (tokens!2198 thiss!10002) (+ 0 1 1) (rules!12084 thiss!10002)))))

(declare-fun b!1568285 () Bool)

(declare-fun res!699050 () Bool)

(declare-fun e!1007207 () Bool)

(assert (=> b!1568285 (=> (not res!699050) (not e!1007207))))

(assert (=> b!1568285 (= res!699050 (rulesInvariant!2289 Lexer!2610 (rules!12084 thiss!10002)))))

(declare-fun b!1568286 () Bool)

(declare-fun e!1007206 () Bool)

(declare-fun lt!543210 () List!17100)

(assert (=> b!1568286 (= e!1007206 (<= (+ 0 1) (size!13806 lt!543210)))))

(declare-fun d!465270 () Bool)

(declare-fun lt!543216 () Bool)

(assert (=> d!465270 (= lt!543216 (tokensListTwoByTwoPredicateSeparableList!319 Lexer!2610 (dropList!497 (tokens!2198 thiss!10002) (+ 0 1)) (rules!12084 thiss!10002)))))

(declare-fun lt!543215 () Unit!26198)

(declare-fun lt!543217 () Unit!26198)

(assert (=> d!465270 (= lt!543215 lt!543217)))

(declare-fun lt!543225 () List!17100)

(assert (=> d!465270 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) lt!543225)))

(declare-fun lt!543227 () List!17100)

(assert (=> d!465270 (= lt!543217 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!69 Lexer!2610 (rules!12084 thiss!10002) lt!543227 lt!543225))))

(assert (=> d!465270 e!1007207))

(declare-fun res!699049 () Bool)

(assert (=> d!465270 (=> (not res!699049) (not e!1007207))))

(assert (=> d!465270 (= res!699049 ((_ is Lexer!2610) Lexer!2610))))

(assert (=> d!465270 (= lt!543225 (dropList!497 (tokens!2198 thiss!10002) (+ 0 1)))))

(assert (=> d!465270 (= lt!543227 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!543219 () Unit!26198)

(declare-fun lt!543236 () Unit!26198)

(assert (=> d!465270 (= lt!543219 lt!543236)))

(assert (=> d!465270 (subseq!374 (drop!799 lt!543210 (+ 0 1)) lt!543210)))

(assert (=> d!465270 (= lt!543236 (lemmaDropSubSeq!69 lt!543210 (+ 0 1)))))

(assert (=> d!465270 e!1007206))

(declare-fun res!699046 () Bool)

(assert (=> d!465270 (=> (not res!699046) (not e!1007206))))

(assert (=> d!465270 (= res!699046 (>= (+ 0 1) 0))))

(assert (=> d!465270 (= lt!543210 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun e!1007210 () Bool)

(assert (=> d!465270 (= lt!543216 e!1007210)))

(declare-fun res!699047 () Bool)

(assert (=> d!465270 (=> res!699047 e!1007210)))

(assert (=> d!465270 (= res!699047 (not (< (+ 0 1) (- (size!13812 (tokens!2198 thiss!10002)) 1))))))

(declare-fun e!1007209 () Bool)

(assert (=> d!465270 e!1007209))

(declare-fun res!699052 () Bool)

(assert (=> d!465270 (=> (not res!699052) (not e!1007209))))

(assert (=> d!465270 (= res!699052 (>= (+ 0 1) 0))))

(assert (=> d!465270 (= (tokensListTwoByTwoPredicateSeparable!146 Lexer!2610 (tokens!2198 thiss!10002) (+ 0 1) (rules!12084 thiss!10002)) lt!543216)))

(declare-fun b!1568287 () Bool)

(assert (=> b!1568287 (= e!1007207 (rulesProduceEachTokenIndividuallyList!828 Lexer!2610 (rules!12084 thiss!10002) lt!543227))))

(declare-fun b!1568288 () Bool)

(declare-fun res!699048 () Bool)

(assert (=> b!1568288 (=> (not res!699048) (not e!1007207))))

(assert (=> b!1568288 (= res!699048 (subseq!374 lt!543225 lt!543227))))

(declare-fun b!1568289 () Bool)

(assert (=> b!1568289 (= e!1007210 e!1007208)))

(declare-fun res!699053 () Bool)

(assert (=> b!1568289 (=> (not res!699053) (not e!1007208))))

(assert (=> b!1568289 (= res!699053 (separableTokensPredicate!598 Lexer!2610 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)) (apply!4131 (tokens!2198 thiss!10002) (+ 0 1 1)) (rules!12084 thiss!10002)))))

(declare-fun lt!543223 () Unit!26198)

(declare-fun Unit!26248 () Unit!26198)

(assert (=> b!1568289 (= lt!543223 Unit!26248)))

(assert (=> b!1568289 (> (size!13804 (charsOf!1659 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1 1)))) 0)))

(declare-fun lt!543214 () Unit!26198)

(declare-fun Unit!26249 () Unit!26198)

(assert (=> b!1568289 (= lt!543214 Unit!26249)))

(assert (=> b!1568289 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (apply!4131 (tokens!2198 thiss!10002) (+ 0 1 1)))))

(declare-fun lt!543207 () Unit!26198)

(declare-fun Unit!26250 () Unit!26198)

(assert (=> b!1568289 (= lt!543207 Unit!26250)))

(assert (=> b!1568289 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))

(declare-fun lt!543231 () Unit!26198)

(declare-fun lt!543228 () Unit!26198)

(assert (=> b!1568289 (= lt!543231 lt!543228)))

(declare-fun lt!543209 () Token!5532)

(assert (=> b!1568289 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) lt!543209)))

(declare-fun lt!543205 () List!17100)

(assert (=> b!1568289 (= lt!543228 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) lt!543205 lt!543209))))

(assert (=> b!1568289 (= lt!543209 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1 1)))))

(assert (=> b!1568289 (= lt!543205 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!543229 () Unit!26198)

(declare-fun lt!543230 () Unit!26198)

(assert (=> b!1568289 (= lt!543229 lt!543230)))

(declare-fun lt!543226 () Token!5532)

(assert (=> b!1568289 (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) lt!543226)))

(declare-fun lt!543235 () List!17100)

(assert (=> b!1568289 (= lt!543230 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!497 Lexer!2610 (rules!12084 thiss!10002) lt!543235 lt!543226))))

(assert (=> b!1568289 (= lt!543226 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))

(assert (=> b!1568289 (= lt!543235 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!543232 () Unit!26198)

(declare-fun lt!543212 () Unit!26198)

(assert (=> b!1568289 (= lt!543232 lt!543212)))

(declare-fun lt!543234 () List!17100)

(declare-fun lt!543211 () Int)

(assert (=> b!1568289 (= (tail!2221 (drop!799 lt!543234 lt!543211)) (drop!799 lt!543234 (+ lt!543211 1)))))

(assert (=> b!1568289 (= lt!543212 (lemmaDropTail!481 lt!543234 lt!543211))))

(assert (=> b!1568289 (= lt!543211 (+ 0 1 1))))

(assert (=> b!1568289 (= lt!543234 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!543213 () Unit!26198)

(declare-fun lt!543204 () Unit!26198)

(assert (=> b!1568289 (= lt!543213 lt!543204)))

(declare-fun lt!543221 () List!17100)

(assert (=> b!1568289 (= (tail!2221 (drop!799 lt!543221 (+ 0 1))) (drop!799 lt!543221 (+ 0 1 1)))))

(assert (=> b!1568289 (= lt!543204 (lemmaDropTail!481 lt!543221 (+ 0 1)))))

(assert (=> b!1568289 (= lt!543221 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!543222 () Unit!26198)

(declare-fun lt!543218 () Unit!26198)

(assert (=> b!1568289 (= lt!543222 lt!543218)))

(declare-fun lt!543208 () List!17100)

(declare-fun lt!543206 () Int)

(assert (=> b!1568289 (= (head!3126 (drop!799 lt!543208 lt!543206)) (apply!4134 lt!543208 lt!543206))))

(assert (=> b!1568289 (= lt!543218 (lemmaDropApply!501 lt!543208 lt!543206))))

(assert (=> b!1568289 (= lt!543206 (+ 0 1 1))))

(assert (=> b!1568289 (= lt!543208 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun lt!543220 () Unit!26198)

(declare-fun lt!543233 () Unit!26198)

(assert (=> b!1568289 (= lt!543220 lt!543233)))

(declare-fun lt!543224 () List!17100)

(assert (=> b!1568289 (= (head!3126 (drop!799 lt!543224 (+ 0 1))) (apply!4134 lt!543224 (+ 0 1)))))

(assert (=> b!1568289 (= lt!543233 (lemmaDropApply!501 lt!543224 (+ 0 1)))))

(assert (=> b!1568289 (= lt!543224 (list!6549 (tokens!2198 thiss!10002)))))

(declare-fun b!1568290 () Bool)

(assert (=> b!1568290 (= e!1007209 (<= (+ 0 1) (size!13812 (tokens!2198 thiss!10002))))))

(declare-fun b!1568291 () Bool)

(declare-fun res!699051 () Bool)

(assert (=> b!1568291 (=> (not res!699051) (not e!1007207))))

(assert (=> b!1568291 (= res!699051 (not (isEmpty!10196 (rules!12084 thiss!10002))))))

(assert (= (and d!465270 res!699052) b!1568290))

(assert (= (and d!465270 (not res!699047)) b!1568289))

(assert (= (and b!1568289 res!699053) b!1568284))

(assert (= (and d!465270 res!699046) b!1568286))

(assert (= (and d!465270 res!699049) b!1568291))

(assert (= (and b!1568291 res!699051) b!1568285))

(assert (= (and b!1568285 res!699050) b!1568288))

(assert (= (and b!1568288 res!699048) b!1568287))

(declare-fun m!1842007 () Bool)

(assert (=> b!1568287 m!1842007))

(declare-fun m!1842009 () Bool)

(assert (=> b!1568289 m!1842009))

(declare-fun m!1842011 () Bool)

(assert (=> b!1568289 m!1842011))

(declare-fun m!1842013 () Bool)

(assert (=> b!1568289 m!1842013))

(assert (=> b!1568289 m!1842013))

(declare-fun m!1842015 () Bool)

(assert (=> b!1568289 m!1842015))

(declare-fun m!1842017 () Bool)

(assert (=> b!1568289 m!1842017))

(declare-fun m!1842019 () Bool)

(assert (=> b!1568289 m!1842019))

(declare-fun m!1842021 () Bool)

(assert (=> b!1568289 m!1842021))

(declare-fun m!1842023 () Bool)

(assert (=> b!1568289 m!1842023))

(declare-fun m!1842025 () Bool)

(assert (=> b!1568289 m!1842025))

(assert (=> b!1568289 m!1842017))

(assert (=> b!1568289 m!1842023))

(declare-fun m!1842027 () Bool)

(assert (=> b!1568289 m!1842027))

(assert (=> b!1568289 m!1837795))

(assert (=> b!1568289 m!1837795))

(assert (=> b!1568289 m!1837797))

(declare-fun m!1842029 () Bool)

(assert (=> b!1568289 m!1842029))

(declare-fun m!1842031 () Bool)

(assert (=> b!1568289 m!1842031))

(declare-fun m!1842033 () Bool)

(assert (=> b!1568289 m!1842033))

(declare-fun m!1842035 () Bool)

(assert (=> b!1568289 m!1842035))

(declare-fun m!1842037 () Bool)

(assert (=> b!1568289 m!1842037))

(declare-fun m!1842039 () Bool)

(assert (=> b!1568289 m!1842039))

(assert (=> b!1568289 m!1837795))

(assert (=> b!1568289 m!1842013))

(declare-fun m!1842041 () Bool)

(assert (=> b!1568289 m!1842041))

(declare-fun m!1842043 () Bool)

(assert (=> b!1568289 m!1842043))

(assert (=> b!1568289 m!1842029))

(declare-fun m!1842045 () Bool)

(assert (=> b!1568289 m!1842045))

(declare-fun m!1842047 () Bool)

(assert (=> b!1568289 m!1842047))

(declare-fun m!1842049 () Bool)

(assert (=> b!1568289 m!1842049))

(declare-fun m!1842051 () Bool)

(assert (=> b!1568289 m!1842051))

(assert (=> b!1568289 m!1842013))

(declare-fun m!1842053 () Bool)

(assert (=> b!1568289 m!1842053))

(assert (=> b!1568289 m!1842053))

(declare-fun m!1842055 () Bool)

(assert (=> b!1568289 m!1842055))

(assert (=> b!1568289 m!1836811))

(assert (=> b!1568289 m!1842037))

(declare-fun m!1842057 () Bool)

(assert (=> b!1568289 m!1842057))

(assert (=> b!1568291 m!1836809))

(declare-fun m!1842059 () Bool)

(assert (=> b!1568286 m!1842059))

(assert (=> b!1568290 m!1837847))

(assert (=> b!1568285 m!1836801))

(declare-fun m!1842061 () Bool)

(assert (=> b!1568284 m!1842061))

(declare-fun m!1842063 () Bool)

(assert (=> d!465270 m!1842063))

(declare-fun m!1842065 () Bool)

(assert (=> d!465270 m!1842065))

(declare-fun m!1842067 () Bool)

(assert (=> d!465270 m!1842067))

(assert (=> d!465270 m!1837847))

(declare-fun m!1842069 () Bool)

(assert (=> d!465270 m!1842069))

(declare-fun m!1842071 () Bool)

(assert (=> d!465270 m!1842071))

(assert (=> d!465270 m!1836811))

(declare-fun m!1842073 () Bool)

(assert (=> d!465270 m!1842073))

(assert (=> d!465270 m!1842069))

(assert (=> d!465270 m!1842063))

(declare-fun m!1842075 () Bool)

(assert (=> d!465270 m!1842075))

(declare-fun m!1842077 () Bool)

(assert (=> b!1568288 m!1842077))

(assert (=> b!1566009 d!465270))

(assert (=> b!1565776 d!464462))

(declare-fun d!465272 () Bool)

(assert (=> d!465272 (= (isEmpty!10203 (list!6554 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))) ((_ is Nil!17029) (list!6554 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(assert (=> d!463870 d!465272))

(declare-fun d!465274 () Bool)

(assert (=> d!465274 (= (list!6554 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))) (list!6556 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))))))

(declare-fun bs!389954 () Bool)

(assert (= bs!389954 d!465274))

(declare-fun m!1842079 () Bool)

(assert (=> bs!389954 m!1842079))

(assert (=> d!463870 d!465274))

(declare-fun d!465276 () Bool)

(declare-fun lt!543237 () Bool)

(assert (=> d!465276 (= lt!543237 (isEmpty!10203 (list!6556 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850))))))))))))

(assert (=> d!465276 (= lt!543237 (= (size!13811 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))) 0))))

(assert (=> d!465276 (= (isEmpty!10204 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (t!141745 lt!541850)))))))) lt!543237)))

(declare-fun bs!389955 () Bool)

(assert (= bs!389955 d!465276))

(assert (=> bs!389955 m!1842079))

(assert (=> bs!389955 m!1842079))

(declare-fun m!1842081 () Bool)

(assert (=> bs!389955 m!1842081))

(declare-fun m!1842083 () Bool)

(assert (=> bs!389955 m!1842083))

(assert (=> d!463870 d!465276))

(assert (=> d!463800 d!463784))

(declare-fun d!465278 () Bool)

(assert (=> d!465278 (= (isEmpty!10202 (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) ((_ is Nil!17030) (list!6550 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (=> d!463864 d!465278))

(assert (=> d!463864 d!463816))

(assert (=> d!463864 d!463804))

(declare-fun b!1568293 () Bool)

(declare-fun e!1007211 () Bool)

(declare-fun e!1007212 () Bool)

(assert (=> b!1568293 (= e!1007211 e!1007212)))

(declare-fun res!699054 () Bool)

(assert (=> b!1568293 (=> res!699054 e!1007212)))

(declare-fun e!1007214 () Bool)

(assert (=> b!1568293 (= res!699054 e!1007214)))

(declare-fun res!699056 () Bool)

(assert (=> b!1568293 (=> (not res!699056) (not e!1007214))))

(assert (=> b!1568293 (= res!699056 (= (h!22431 lt!542157) (h!22431 lt!542159)))))

(declare-fun b!1568292 () Bool)

(declare-fun e!1007213 () Bool)

(assert (=> b!1568292 (= e!1007213 e!1007211)))

(declare-fun res!699057 () Bool)

(assert (=> b!1568292 (=> (not res!699057) (not e!1007211))))

(assert (=> b!1568292 (= res!699057 ((_ is Cons!17030) lt!542159))))

(declare-fun d!465280 () Bool)

(declare-fun res!699055 () Bool)

(assert (=> d!465280 (=> res!699055 e!1007213)))

(assert (=> d!465280 (= res!699055 ((_ is Nil!17030) lt!542157))))

(assert (=> d!465280 (= (subseq!374 lt!542157 lt!542159) e!1007213)))

(declare-fun b!1568295 () Bool)

(assert (=> b!1568295 (= e!1007212 (subseq!374 lt!542157 (t!141745 lt!542159)))))

(declare-fun b!1568294 () Bool)

(assert (=> b!1568294 (= e!1007214 (subseq!374 (t!141745 lt!542157) (t!141745 lt!542159)))))

(assert (= (and d!465280 (not res!699055)) b!1568292))

(assert (= (and b!1568292 res!699057) b!1568293))

(assert (= (and b!1568293 res!699056) b!1568294))

(assert (= (and b!1568293 (not res!699054)) b!1568295))

(declare-fun m!1842085 () Bool)

(assert (=> b!1568295 m!1842085))

(declare-fun m!1842087 () Bool)

(assert (=> b!1568294 m!1842087))

(assert (=> b!1566013 d!465280))

(declare-fun d!465282 () Bool)

(declare-fun lt!543238 () Int)

(assert (=> d!465282 (>= lt!543238 0)))

(declare-fun e!1007215 () Int)

(assert (=> d!465282 (= lt!543238 e!1007215)))

(declare-fun c!254172 () Bool)

(assert (=> d!465282 (= c!254172 ((_ is Nil!17030) lt!541976))))

(assert (=> d!465282 (= (size!13806 lt!541976) lt!543238)))

(declare-fun b!1568296 () Bool)

(assert (=> b!1568296 (= e!1007215 0)))

(declare-fun b!1568297 () Bool)

(assert (=> b!1568297 (= e!1007215 (+ 1 (size!13806 (t!141745 lt!541976))))))

(assert (= (and d!465282 c!254172) b!1568296))

(assert (= (and d!465282 (not c!254172)) b!1568297))

(declare-fun m!1842089 () Bool)

(assert (=> b!1568297 m!1842089))

(assert (=> b!1565768 d!465282))

(assert (=> b!1565768 d!464470))

(assert (=> b!1565768 d!464458))

(declare-fun b!1568301 () Bool)

(declare-fun e!1007217 () Bool)

(declare-fun lt!543239 () List!17100)

(assert (=> b!1568301 (= e!1007217 (or (not (= (list!6550 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) Nil!17030)) (= lt!543239 (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun d!465284 () Bool)

(assert (=> d!465284 e!1007217))

(declare-fun res!699058 () Bool)

(assert (=> d!465284 (=> (not res!699058) (not e!1007217))))

(assert (=> d!465284 (= res!699058 (= (content!2356 lt!543239) ((_ map or) (content!2356 (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (content!2356 (list!6550 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun e!1007216 () List!17100)

(assert (=> d!465284 (= lt!543239 e!1007216)))

(declare-fun c!254173 () Bool)

(assert (=> d!465284 (= c!254173 ((_ is Nil!17030) (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!465284 (= (++!4431 (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (list!6550 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) lt!543239)))

(declare-fun b!1568298 () Bool)

(assert (=> b!1568298 (= e!1007216 (list!6550 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun b!1568299 () Bool)

(assert (=> b!1568299 (= e!1007216 (Cons!17030 (h!22431 (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (++!4431 (t!141745 (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (list!6550 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1568300 () Bool)

(declare-fun res!699059 () Bool)

(assert (=> b!1568300 (=> (not res!699059) (not e!1007217))))

(assert (=> b!1568300 (= res!699059 (= (size!13806 lt!543239) (+ (size!13806 (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (size!13806 (list!6550 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(assert (= (and d!465284 c!254173) b!1568298))

(assert (= (and d!465284 (not c!254173)) b!1568299))

(assert (= (and d!465284 res!699058) b!1568300))

(assert (= (and b!1568300 res!699059) b!1568301))

(declare-fun m!1842091 () Bool)

(assert (=> d!465284 m!1842091))

(assert (=> d!465284 m!1837285))

(declare-fun m!1842093 () Bool)

(assert (=> d!465284 m!1842093))

(assert (=> d!465284 m!1837287))

(declare-fun m!1842095 () Bool)

(assert (=> d!465284 m!1842095))

(assert (=> b!1568299 m!1837287))

(declare-fun m!1842097 () Bool)

(assert (=> b!1568299 m!1842097))

(declare-fun m!1842099 () Bool)

(assert (=> b!1568300 m!1842099))

(assert (=> b!1568300 m!1837285))

(assert (=> b!1568300 m!1839951))

(assert (=> b!1568300 m!1837287))

(assert (=> b!1568300 m!1839953))

(assert (=> b!1565773 d!465284))

(declare-fun d!465286 () Bool)

(declare-fun c!254174 () Bool)

(assert (=> d!465286 (= c!254174 ((_ is Empty!5615) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun e!1007218 () List!17100)

(assert (=> d!465286 (= (list!6550 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1007218)))

(declare-fun b!1568304 () Bool)

(declare-fun e!1007219 () List!17100)

(assert (=> b!1568304 (= e!1007219 (list!6552 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1568305 () Bool)

(assert (=> b!1568305 (= e!1007219 (++!4431 (list!6550 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (list!6550 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1568302 () Bool)

(assert (=> b!1568302 (= e!1007218 Nil!17030)))

(declare-fun b!1568303 () Bool)

(assert (=> b!1568303 (= e!1007218 e!1007219)))

(declare-fun c!254175 () Bool)

(assert (=> b!1568303 (= c!254175 ((_ is Leaf!8327) (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!465286 c!254174) b!1568302))

(assert (= (and d!465286 (not c!254174)) b!1568303))

(assert (= (and b!1568303 c!254175) b!1568304))

(assert (= (and b!1568303 (not c!254175)) b!1568305))

(declare-fun m!1842101 () Bool)

(assert (=> b!1568304 m!1842101))

(declare-fun m!1842103 () Bool)

(assert (=> b!1568305 m!1842103))

(declare-fun m!1842105 () Bool)

(assert (=> b!1568305 m!1842105))

(assert (=> b!1568305 m!1842103))

(assert (=> b!1568305 m!1842105))

(declare-fun m!1842107 () Bool)

(assert (=> b!1568305 m!1842107))

(assert (=> b!1565773 d!465286))

(declare-fun d!465288 () Bool)

(declare-fun c!254176 () Bool)

(assert (=> d!465288 (= c!254176 ((_ is Empty!5615) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(declare-fun e!1007220 () List!17100)

(assert (=> d!465288 (= (list!6550 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1007220)))

(declare-fun b!1568308 () Bool)

(declare-fun e!1007221 () List!17100)

(assert (=> b!1568308 (= e!1007221 (list!6552 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))

(declare-fun b!1568309 () Bool)

(assert (=> b!1568309 (= e!1007221 (++!4431 (list!6550 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) (list!6550 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))

(declare-fun b!1568306 () Bool)

(assert (=> b!1568306 (= e!1007220 Nil!17030)))

(declare-fun b!1568307 () Bool)

(assert (=> b!1568307 (= e!1007220 e!1007221)))

(declare-fun c!254177 () Bool)

(assert (=> b!1568307 (= c!254177 ((_ is Leaf!8327) (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))

(assert (= (and d!465288 c!254176) b!1568306))

(assert (= (and d!465288 (not c!254176)) b!1568307))

(assert (= (and b!1568307 c!254177) b!1568308))

(assert (= (and b!1568307 (not c!254177)) b!1568309))

(assert (=> b!1568308 m!1840603))

(declare-fun m!1842109 () Bool)

(assert (=> b!1568309 m!1842109))

(declare-fun m!1842111 () Bool)

(assert (=> b!1568309 m!1842111))

(assert (=> b!1568309 m!1842109))

(assert (=> b!1568309 m!1842111))

(declare-fun m!1842113 () Bool)

(assert (=> b!1568309 m!1842113))

(assert (=> b!1565773 d!465288))

(declare-fun d!465290 () Bool)

(declare-fun lt!543240 () Int)

(assert (=> d!465290 (>= lt!543240 0)))

(declare-fun e!1007222 () Int)

(assert (=> d!465290 (= lt!543240 e!1007222)))

(declare-fun c!254178 () Bool)

(assert (=> d!465290 (= c!254178 ((_ is Nil!17029) (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))

(assert (=> d!465290 (= (size!13810 (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) lt!543240)))

(declare-fun b!1568310 () Bool)

(assert (=> b!1568310 (= e!1007222 0)))

(declare-fun b!1568311 () Bool)

(assert (=> b!1568311 (= e!1007222 (+ 1 (size!13810 (t!141744 (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))))

(assert (= (and d!465290 c!254178) b!1568310))

(assert (= (and d!465290 (not c!254178)) b!1568311))

(declare-fun m!1842115 () Bool)

(assert (=> b!1568311 m!1842115))

(assert (=> b!1566137 d!465290))

(declare-fun d!465292 () Bool)

(declare-fun lt!543241 () Bool)

(assert (=> d!465292 (= lt!543241 (isEmpty!10202 (list!6550 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))

(assert (=> d!465292 (= lt!543241 (= (size!13807 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) 0))))

(assert (=> d!465292 (= (isEmpty!10200 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))) lt!543241)))

(declare-fun bs!389956 () Bool)

(assert (= bs!389956 d!465292))

(assert (=> bs!389956 m!1837295))

(assert (=> bs!389956 m!1837295))

(declare-fun m!1842117 () Bool)

(assert (=> bs!389956 m!1842117))

(assert (=> bs!389956 m!1838083))

(assert (=> b!1566124 d!465292))

(declare-fun d!465294 () Bool)

(assert (=> d!465294 (= (inv!22390 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (= (mod (str.len (value!94687 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) 2) 0))))

(assert (=> b!1566192 d!465294))

(declare-fun d!465296 () Bool)

(declare-fun res!699060 () Bool)

(declare-fun e!1007223 () Bool)

(assert (=> d!465296 (=> (not res!699060) (not e!1007223))))

(assert (=> d!465296 (= res!699060 (semiInverseModEq!1131 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))))

(assert (=> d!465296 (= (inv!22403 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007223)))

(declare-fun b!1568312 () Bool)

(assert (=> b!1568312 (= e!1007223 (equivClasses!1072 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))))

(assert (= (and d!465296 res!699060) b!1568312))

(declare-fun m!1842119 () Bool)

(assert (=> d!465296 m!1842119))

(declare-fun m!1842121 () Bool)

(assert (=> b!1568312 m!1842121))

(assert (=> b!1566192 d!465296))

(declare-fun d!465298 () Bool)

(declare-fun res!699061 () Bool)

(declare-fun e!1007224 () Bool)

(assert (=> d!465298 (=> (not res!699061) (not e!1007224))))

(assert (=> d!465298 (= res!699061 (<= (size!13806 (list!6552 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) 512))))

(assert (=> d!465298 (= (inv!22398 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) e!1007224)))

(declare-fun b!1568313 () Bool)

(declare-fun res!699062 () Bool)

(assert (=> b!1568313 (=> (not res!699062) (not e!1007224))))

(assert (=> b!1568313 (= res!699062 (= (csize!11461 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) (size!13806 (list!6552 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun b!1568314 () Bool)

(assert (=> b!1568314 (= e!1007224 (and (> (csize!11461 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 0) (<= (csize!11461 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))) 512)))))

(assert (= (and d!465298 res!699061) b!1568313))

(assert (= (and b!1568313 res!699062) b!1568314))

(assert (=> d!465298 m!1842101))

(assert (=> d!465298 m!1842101))

(declare-fun m!1842123 () Bool)

(assert (=> d!465298 m!1842123))

(assert (=> b!1568313 m!1842101))

(assert (=> b!1568313 m!1842101))

(assert (=> b!1568313 m!1842123))

(assert (=> b!1565956 d!465298))

(declare-fun d!465300 () Bool)

(declare-fun lt!543242 () Bool)

(assert (=> d!465300 (= lt!543242 (isEmpty!10203 (list!6554 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(assert (=> d!465300 (= lt!543242 (isEmpty!10204 (c!253626 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))))

(assert (=> d!465300 (= (isEmpty!10199 (_2!9701 (lex!1116 Lexer!2610 (rules!12084 thiss!10002) (print!1151 Lexer!2610 (singletonSeq!1349 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) lt!543242)))

(declare-fun bs!389957 () Bool)

(assert (= bs!389957 d!465300))

(declare-fun m!1842125 () Bool)

(assert (=> bs!389957 m!1842125))

(assert (=> bs!389957 m!1842125))

(declare-fun m!1842127 () Bool)

(assert (=> bs!389957 m!1842127))

(declare-fun m!1842129 () Bool)

(assert (=> bs!389957 m!1842129))

(assert (=> b!1565949 d!465300))

(assert (=> b!1565949 d!464386))

(assert (=> b!1565949 d!464388))

(assert (=> b!1565949 d!464394))

(declare-fun d!465302 () Bool)

(assert (=> d!465302 (= (inv!22406 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (isBalanced!1665 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))))))

(declare-fun bs!389958 () Bool)

(assert (= bs!389958 d!465302))

(declare-fun m!1842131 () Bool)

(assert (=> bs!389958 m!1842131))

(assert (=> tb!87473 d!465302))

(declare-fun d!465304 () Bool)

(assert (=> d!465304 (= (list!6554 (_2!9701 lt!542008)) (list!6556 (c!253626 (_2!9701 lt!542008))))))

(declare-fun bs!389959 () Bool)

(assert (= bs!389959 d!465304))

(declare-fun m!1842133 () Bool)

(assert (=> bs!389959 m!1842133))

(assert (=> b!1565838 d!465304))

(assert (=> b!1565838 d!464622))

(assert (=> b!1565838 d!464624))

(declare-fun d!465306 () Bool)

(declare-fun charsToBigInt!1 (List!17098) Int)

(assert (=> d!465306 (= (inv!17 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))) (= (charsToBigInt!1 (text!21959 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94680 (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))))

(declare-fun bs!389960 () Bool)

(assert (= bs!389960 d!465306))

(declare-fun m!1842135 () Bool)

(assert (=> bs!389960 m!1842135))

(assert (=> b!1565901 d!465306))

(declare-fun d!465308 () Bool)

(assert (=> d!465308 (= (inv!22390 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (= (mod (str.len (value!94687 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) 2) 0))))

(assert (=> b!1566155 d!465308))

(declare-fun d!465310 () Bool)

(declare-fun res!699063 () Bool)

(declare-fun e!1007225 () Bool)

(assert (=> d!465310 (=> (not res!699063) (not e!1007225))))

(assert (=> d!465310 (= res!699063 (semiInverseModEq!1131 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))))

(assert (=> d!465310 (= (inv!22403 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007225)))

(declare-fun b!1568315 () Bool)

(assert (=> b!1568315 (= e!1007225 (equivClasses!1072 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toValue!4370 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))))))

(assert (= (and d!465310 res!699063) b!1568315))

(declare-fun m!1842137 () Bool)

(assert (=> d!465310 m!1842137))

(declare-fun m!1842139 () Bool)

(assert (=> b!1568315 m!1842139))

(assert (=> b!1566155 d!465310))

(declare-fun e!1007226 () Bool)

(declare-fun b!1568316 () Bool)

(declare-fun tp!461629 () Bool)

(declare-fun tp!461628 () Bool)

(assert (=> b!1568316 (= e!1007226 (and (inv!22405 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) tp!461628 (inv!22405 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) tp!461629))))

(declare-fun b!1568318 () Bool)

(declare-fun e!1007227 () Bool)

(declare-fun tp!461627 () Bool)

(assert (=> b!1568318 (= e!1007227 tp!461627)))

(declare-fun b!1568317 () Bool)

(assert (=> b!1568317 (= e!1007226 (and (inv!22415 (xs!8414 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) e!1007227))))

(assert (=> b!1565953 (= tp!461176 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) e!1007226))))

(assert (= (and b!1565953 ((_ is Node!5614) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) b!1568316))

(assert (= b!1568317 b!1568318))

(assert (= (and b!1565953 ((_ is Leaf!8326) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) (value!94688 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) b!1568317))

(declare-fun m!1842141 () Bool)

(assert (=> b!1568316 m!1842141))

(declare-fun m!1842143 () Bool)

(assert (=> b!1568316 m!1842143))

(declare-fun m!1842145 () Bool)

(assert (=> b!1568317 m!1842145))

(assert (=> b!1565953 m!1837701))

(declare-fun b!1568319 () Bool)

(declare-fun tp!461631 () Bool)

(declare-fun tp!461630 () Bool)

(declare-fun e!1007229 () Bool)

(assert (=> b!1568319 (= e!1007229 (and (inv!22394 (left!13804 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) tp!461631 (inv!22394 (right!14134 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) tp!461630))))

(declare-fun b!1568321 () Bool)

(declare-fun e!1007228 () Bool)

(declare-fun tp!461632 () Bool)

(assert (=> b!1568321 (= e!1007228 tp!461632)))

(declare-fun b!1568320 () Bool)

(assert (=> b!1568320 (= e!1007229 (and (inv!22401 (xs!8415 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) e!1007228))))

(assert (=> b!1566167 (= tp!461210 (and (inv!22394 (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) e!1007229))))

(assert (= (and b!1566167 ((_ is Node!5615) (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) b!1568319))

(assert (= b!1568320 b!1568321))

(assert (= (and b!1566167 ((_ is Leaf!8327) (left!13804 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) b!1568320))

(declare-fun m!1842147 () Bool)

(assert (=> b!1568319 m!1842147))

(declare-fun m!1842149 () Bool)

(assert (=> b!1568319 m!1842149))

(declare-fun m!1842151 () Bool)

(assert (=> b!1568320 m!1842151))

(assert (=> b!1566167 m!1838189))

(declare-fun b!1568322 () Bool)

(declare-fun tp!461633 () Bool)

(declare-fun e!1007231 () Bool)

(declare-fun tp!461634 () Bool)

(assert (=> b!1568322 (= e!1007231 (and (inv!22394 (left!13804 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) tp!461634 (inv!22394 (right!14134 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) tp!461633))))

(declare-fun b!1568324 () Bool)

(declare-fun e!1007230 () Bool)

(declare-fun tp!461635 () Bool)

(assert (=> b!1568324 (= e!1007230 tp!461635)))

(declare-fun b!1568323 () Bool)

(assert (=> b!1568323 (= e!1007231 (and (inv!22401 (xs!8415 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) e!1007230))))

(assert (=> b!1566167 (= tp!461209 (and (inv!22394 (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) e!1007231))))

(assert (= (and b!1566167 ((_ is Node!5615) (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) b!1568322))

(assert (= b!1568323 b!1568324))

(assert (= (and b!1566167 ((_ is Leaf!8327) (right!14134 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) b!1568323))

(declare-fun m!1842153 () Bool)

(assert (=> b!1568322 m!1842153))

(declare-fun m!1842155 () Bool)

(assert (=> b!1568322 m!1842155))

(declare-fun m!1842157 () Bool)

(assert (=> b!1568323 m!1842157))

(assert (=> b!1566167 m!1838191))

(declare-fun b!1568325 () Bool)

(declare-fun e!1007232 () Bool)

(declare-fun tp!461636 () Bool)

(assert (=> b!1568325 (= e!1007232 (and tp_is_empty!7143 tp!461636))))

(assert (=> b!1566215 (= tp!461247 e!1007232)))

(assert (= (and b!1566215 ((_ is Cons!17029) (originalCharacters!3797 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) b!1568325))

(declare-fun e!1007233 () Bool)

(assert (=> b!1566223 (= tp!461256 e!1007233)))

(declare-fun b!1568326 () Bool)

(assert (=> b!1568326 (= e!1007233 tp_is_empty!7143)))

(declare-fun b!1568329 () Bool)

(declare-fun tp!461639 () Bool)

(declare-fun tp!461637 () Bool)

(assert (=> b!1568329 (= e!1007233 (and tp!461639 tp!461637))))

(declare-fun b!1568328 () Bool)

(declare-fun tp!461641 () Bool)

(assert (=> b!1568328 (= e!1007233 tp!461641)))

(declare-fun b!1568327 () Bool)

(declare-fun tp!461640 () Bool)

(declare-fun tp!461638 () Bool)

(assert (=> b!1568327 (= e!1007233 (and tp!461640 tp!461638))))

(assert (= (and b!1566223 ((_ is ElementMatch!4311) (reg!4640 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568326))

(assert (= (and b!1566223 ((_ is Concat!7385) (reg!4640 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568327))

(assert (= (and b!1566223 ((_ is Star!4311) (reg!4640 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568328))

(assert (= (and b!1566223 ((_ is Union!4311) (reg!4640 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568329))

(declare-fun b!1568333 () Bool)

(declare-fun b_free!41951 () Bool)

(declare-fun b_next!42655 () Bool)

(assert (=> b!1568333 (= b_free!41951 (not b_next!42655))))

(declare-fun tp!461644 () Bool)

(declare-fun b_and!109521 () Bool)

(assert (=> b!1568333 (= tp!461644 b_and!109521)))

(declare-fun b_free!41953 () Bool)

(declare-fun b_next!42657 () Bool)

(assert (=> b!1568333 (= b_free!41953 (not b_next!42657))))

(declare-fun t!142246 () Bool)

(declare-fun tb!87895 () Bool)

(assert (=> (and b!1568333 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142246) tb!87895))

(declare-fun result!106354 () Bool)

(assert (= result!106354 result!106096))

(assert (=> b!1567119 t!142246))

(declare-fun t!142248 () Bool)

(declare-fun tb!87897 () Bool)

(assert (=> (and b!1568333 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142248) tb!87897))

(declare-fun result!106356 () Bool)

(assert (= result!106356 result!106340))

(assert (=> b!1568255 t!142248))

(declare-fun t!142250 () Bool)

(declare-fun tb!87899 () Bool)

(assert (=> (and b!1568333 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!142250) tb!87899))

(declare-fun result!106358 () Bool)

(assert (= result!106358 result!105936))

(assert (=> b!1566136 t!142250))

(declare-fun t!142252 () Bool)

(declare-fun tb!87901 () Bool)

(assert (=> (and b!1568333 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142252) tb!87901))

(declare-fun result!106360 () Bool)

(assert (= result!106360 result!106082))

(assert (=> b!1567091 t!142252))

(declare-fun t!142254 () Bool)

(declare-fun tb!87903 () Bool)

(assert (=> (and b!1568333 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!142254) tb!87903))

(declare-fun result!106362 () Bool)

(assert (= result!106362 result!106068))

(assert (=> d!464240 t!142254))

(declare-fun tb!87905 () Bool)

(declare-fun t!142256 () Bool)

(assert (=> (and b!1568333 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142256) tb!87905))

(declare-fun result!106364 () Bool)

(assert (= result!106364 result!106138))

(assert (=> d!465044 t!142256))

(declare-fun tb!87907 () Bool)

(declare-fun t!142258 () Bool)

(assert (=> (and b!1568333 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!142258) tb!87907))

(declare-fun result!106366 () Bool)

(assert (= result!106366 result!105930))

(assert (=> d!464024 t!142258))

(declare-fun tb!87909 () Bool)

(declare-fun t!142260 () Bool)

(assert (=> (and b!1568333 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!142260) tb!87909))

(declare-fun result!106368 () Bool)

(assert (= result!106368 result!105924))

(assert (=> d!463964 t!142260))

(declare-fun t!142262 () Bool)

(declare-fun tb!87911 () Bool)

(assert (=> (and b!1568333 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142262) tb!87911))

(declare-fun result!106370 () Bool)

(assert (= result!106370 result!106124))

(assert (=> d!465006 t!142262))

(declare-fun t!142264 () Bool)

(declare-fun tb!87913 () Bool)

(assert (=> (and b!1568333 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!142264) tb!87913))

(declare-fun result!106372 () Bool)

(assert (= result!106372 result!105898))

(assert (=> d!463782 t!142264))

(declare-fun b_and!109523 () Bool)

(declare-fun tp!461645 () Bool)

(assert (=> b!1568333 (= tp!461645 (and (=> t!142260 result!106368) (=> t!142258 result!106366) (=> t!142256 result!106364) (=> t!142246 result!106354) (=> t!142262 result!106370) (=> t!142254 result!106362) (=> t!142252 result!106360) (=> t!142250 result!106358) (=> t!142248 result!106356) (=> t!142264 result!106372) b_and!109523))))

(declare-fun b!1568330 () Bool)

(declare-fun e!1007239 () Bool)

(declare-fun e!1007234 () Bool)

(declare-fun tp!461646 () Bool)

(assert (=> b!1568330 (= e!1007234 (and (inv!22409 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))) e!1007239 tp!461646))))

(declare-fun e!1007235 () Bool)

(assert (=> b!1568333 (= e!1007235 (and tp!461644 tp!461645))))

(declare-fun b!1568331 () Bool)

(declare-fun tp!461642 () Bool)

(declare-fun e!1007238 () Bool)

(assert (=> b!1568331 (= e!1007239 (and (inv!21 (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007238 tp!461642))))

(declare-fun b!1568332 () Bool)

(declare-fun tp!461643 () Bool)

(assert (=> b!1568332 (= e!1007238 (and tp!461643 (inv!22390 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) e!1007235))))

(assert (=> b!1566169 (= tp!461211 e!1007234)))

(assert (= b!1568332 b!1568333))

(assert (= b!1568331 b!1568332))

(assert (= b!1568330 b!1568331))

(assert (= (and b!1566169 ((_ is Cons!17030) (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))) b!1568330))

(declare-fun m!1842159 () Bool)

(assert (=> b!1568330 m!1842159))

(declare-fun m!1842161 () Bool)

(assert (=> b!1568331 m!1842161))

(declare-fun m!1842163 () Bool)

(assert (=> b!1568332 m!1842163))

(declare-fun m!1842165 () Bool)

(assert (=> b!1568332 m!1842165))

(declare-fun tp!461649 () Bool)

(declare-fun e!1007240 () Bool)

(declare-fun b!1568334 () Bool)

(declare-fun tp!461648 () Bool)

(assert (=> b!1568334 (= e!1007240 (and (inv!22405 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) tp!461648 (inv!22405 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) tp!461649))))

(declare-fun b!1568336 () Bool)

(declare-fun e!1007241 () Bool)

(declare-fun tp!461647 () Bool)

(assert (=> b!1568336 (= e!1007241 tp!461647)))

(declare-fun b!1568335 () Bool)

(assert (=> b!1568335 (= e!1007240 (and (inv!22415 (xs!8414 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) e!1007241))))

(assert (=> b!1566138 (= tp!461178 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007240))))

(assert (= (and b!1566138 ((_ is Node!5614) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568334))

(assert (= b!1568335 b!1568336))

(assert (= (and b!1566138 ((_ is Leaf!8326) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (value!94688 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568335))

(declare-fun m!1842167 () Bool)

(assert (=> b!1568334 m!1842167))

(declare-fun m!1842169 () Bool)

(assert (=> b!1568334 m!1842169))

(declare-fun m!1842171 () Bool)

(assert (=> b!1568335 m!1842171))

(assert (=> b!1566138 m!1838139))

(declare-fun e!1007242 () Bool)

(assert (=> b!1566212 (= tp!461246 e!1007242)))

(declare-fun b!1568337 () Bool)

(assert (=> b!1568337 (= e!1007242 tp_is_empty!7143)))

(declare-fun b!1568340 () Bool)

(declare-fun tp!461652 () Bool)

(declare-fun tp!461650 () Bool)

(assert (=> b!1568340 (= e!1007242 (and tp!461652 tp!461650))))

(declare-fun b!1568339 () Bool)

(declare-fun tp!461654 () Bool)

(assert (=> b!1568339 (= e!1007242 tp!461654)))

(declare-fun b!1568338 () Bool)

(declare-fun tp!461653 () Bool)

(declare-fun tp!461651 () Bool)

(assert (=> b!1568338 (= e!1007242 (and tp!461653 tp!461651))))

(assert (= (and b!1566212 ((_ is ElementMatch!4311) (reg!4640 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568337))

(assert (= (and b!1566212 ((_ is Concat!7385) (reg!4640 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568338))

(assert (= (and b!1566212 ((_ is Star!4311) (reg!4640 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568339))

(assert (= (and b!1566212 ((_ is Union!4311) (reg!4640 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568340))

(declare-fun e!1007243 () Bool)

(assert (=> b!1566203 (= tp!461235 e!1007243)))

(declare-fun b!1568341 () Bool)

(assert (=> b!1568341 (= e!1007243 tp_is_empty!7143)))

(declare-fun b!1568344 () Bool)

(declare-fun tp!461657 () Bool)

(declare-fun tp!461655 () Bool)

(assert (=> b!1568344 (= e!1007243 (and tp!461657 tp!461655))))

(declare-fun b!1568343 () Bool)

(declare-fun tp!461659 () Bool)

(assert (=> b!1568343 (= e!1007243 tp!461659)))

(declare-fun b!1568342 () Bool)

(declare-fun tp!461658 () Bool)

(declare-fun tp!461656 () Bool)

(assert (=> b!1568342 (= e!1007243 (and tp!461658 tp!461656))))

(assert (= (and b!1566203 ((_ is ElementMatch!4311) (regOne!9134 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568341))

(assert (= (and b!1566203 ((_ is Concat!7385) (regOne!9134 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568342))

(assert (= (and b!1566203 ((_ is Star!4311) (regOne!9134 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568343))

(assert (= (and b!1566203 ((_ is Union!4311) (regOne!9134 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568344))

(declare-fun e!1007244 () Bool)

(assert (=> b!1566203 (= tp!461233 e!1007244)))

(declare-fun b!1568345 () Bool)

(assert (=> b!1568345 (= e!1007244 tp_is_empty!7143)))

(declare-fun b!1568348 () Bool)

(declare-fun tp!461662 () Bool)

(declare-fun tp!461660 () Bool)

(assert (=> b!1568348 (= e!1007244 (and tp!461662 tp!461660))))

(declare-fun b!1568347 () Bool)

(declare-fun tp!461664 () Bool)

(assert (=> b!1568347 (= e!1007244 tp!461664)))

(declare-fun b!1568346 () Bool)

(declare-fun tp!461663 () Bool)

(declare-fun tp!461661 () Bool)

(assert (=> b!1568346 (= e!1007244 (and tp!461663 tp!461661))))

(assert (= (and b!1566203 ((_ is ElementMatch!4311) (regTwo!9134 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568345))

(assert (= (and b!1566203 ((_ is Concat!7385) (regTwo!9134 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568346))

(assert (= (and b!1566203 ((_ is Star!4311) (regTwo!9134 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568347))

(assert (= (and b!1566203 ((_ is Union!4311) (regTwo!9134 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568348))

(declare-fun b!1568351 () Bool)

(declare-fun e!1007247 () Bool)

(assert (=> b!1568351 (= e!1007247 true)))

(declare-fun b!1568350 () Bool)

(declare-fun e!1007246 () Bool)

(assert (=> b!1568350 (= e!1007246 e!1007247)))

(declare-fun b!1568349 () Bool)

(declare-fun e!1007245 () Bool)

(assert (=> b!1568349 (= e!1007245 e!1007246)))

(assert (=> b!1565846 e!1007245))

(assert (= b!1568350 b!1568351))

(assert (= b!1568349 b!1568350))

(assert (= (and b!1565846 ((_ is Cons!17031) (t!141746 (rules!12084 thiss!10002)))) b!1568349))

(assert (=> b!1568351 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7590 order!10093 lambda!66222))))

(assert (=> b!1568351 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7590 order!10093 lambda!66222))))

(declare-fun e!1007248 () Bool)

(assert (=> b!1566148 (= tp!461188 e!1007248)))

(declare-fun b!1568352 () Bool)

(assert (=> b!1568352 (= e!1007248 tp_is_empty!7143)))

(declare-fun b!1568355 () Bool)

(declare-fun tp!461667 () Bool)

(declare-fun tp!461665 () Bool)

(assert (=> b!1568355 (= e!1007248 (and tp!461667 tp!461665))))

(declare-fun b!1568354 () Bool)

(declare-fun tp!461669 () Bool)

(assert (=> b!1568354 (= e!1007248 tp!461669)))

(declare-fun b!1568353 () Bool)

(declare-fun tp!461668 () Bool)

(declare-fun tp!461666 () Bool)

(assert (=> b!1568353 (= e!1007248 (and tp!461668 tp!461666))))

(assert (= (and b!1566148 ((_ is ElementMatch!4311) (reg!4640 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568352))

(assert (= (and b!1566148 ((_ is Concat!7385) (reg!4640 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568353))

(assert (= (and b!1566148 ((_ is Star!4311) (reg!4640 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568354))

(assert (= (and b!1566148 ((_ is Union!4311) (reg!4640 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568355))

(declare-fun b!1568356 () Bool)

(declare-fun tp!461670 () Bool)

(declare-fun e!1007250 () Bool)

(declare-fun tp!461671 () Bool)

(assert (=> b!1568356 (= e!1007250 (and (inv!22394 (left!13804 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) tp!461671 (inv!22394 (right!14134 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) tp!461670))))

(declare-fun b!1568358 () Bool)

(declare-fun e!1007249 () Bool)

(declare-fun tp!461672 () Bool)

(assert (=> b!1568358 (= e!1007249 tp!461672)))

(declare-fun b!1568357 () Bool)

(assert (=> b!1568357 (= e!1007250 (and (inv!22401 (xs!8415 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) e!1007249))))

(assert (=> b!1566157 (= tp!461199 (and (inv!22394 (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) e!1007250))))

(assert (= (and b!1566157 ((_ is Node!5615) (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) b!1568356))

(assert (= b!1568357 b!1568358))

(assert (= (and b!1566157 ((_ is Leaf!8327) (left!13804 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) b!1568357))

(declare-fun m!1842173 () Bool)

(assert (=> b!1568356 m!1842173))

(declare-fun m!1842175 () Bool)

(assert (=> b!1568356 m!1842175))

(declare-fun m!1842177 () Bool)

(assert (=> b!1568357 m!1842177))

(assert (=> b!1566157 m!1838177))

(declare-fun tp!461674 () Bool)

(declare-fun b!1568359 () Bool)

(declare-fun e!1007252 () Bool)

(declare-fun tp!461673 () Bool)

(assert (=> b!1568359 (= e!1007252 (and (inv!22394 (left!13804 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) tp!461674 (inv!22394 (right!14134 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) tp!461673))))

(declare-fun b!1568361 () Bool)

(declare-fun e!1007251 () Bool)

(declare-fun tp!461675 () Bool)

(assert (=> b!1568361 (= e!1007251 tp!461675)))

(declare-fun b!1568360 () Bool)

(assert (=> b!1568360 (= e!1007252 (and (inv!22401 (xs!8415 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) e!1007251))))

(assert (=> b!1566157 (= tp!461198 (and (inv!22394 (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) e!1007252))))

(assert (= (and b!1566157 ((_ is Node!5615) (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) b!1568359))

(assert (= b!1568360 b!1568361))

(assert (= (and b!1566157 ((_ is Leaf!8327) (right!14134 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) b!1568360))

(declare-fun m!1842179 () Bool)

(assert (=> b!1568359 m!1842179))

(declare-fun m!1842181 () Bool)

(assert (=> b!1568359 m!1842181))

(declare-fun m!1842183 () Bool)

(assert (=> b!1568360 m!1842183))

(assert (=> b!1566157 m!1838179))

(declare-fun e!1007253 () Bool)

(assert (=> b!1566205 (= tp!461234 e!1007253)))

(declare-fun b!1568362 () Bool)

(assert (=> b!1568362 (= e!1007253 tp_is_empty!7143)))

(declare-fun b!1568365 () Bool)

(declare-fun tp!461678 () Bool)

(declare-fun tp!461676 () Bool)

(assert (=> b!1568365 (= e!1007253 (and tp!461678 tp!461676))))

(declare-fun b!1568364 () Bool)

(declare-fun tp!461680 () Bool)

(assert (=> b!1568364 (= e!1007253 tp!461680)))

(declare-fun b!1568363 () Bool)

(declare-fun tp!461679 () Bool)

(declare-fun tp!461677 () Bool)

(assert (=> b!1568363 (= e!1007253 (and tp!461679 tp!461677))))

(assert (= (and b!1566205 ((_ is ElementMatch!4311) (regOne!9135 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568362))

(assert (= (and b!1566205 ((_ is Concat!7385) (regOne!9135 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568363))

(assert (= (and b!1566205 ((_ is Star!4311) (regOne!9135 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568364))

(assert (= (and b!1566205 ((_ is Union!4311) (regOne!9135 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568365))

(declare-fun e!1007254 () Bool)

(assert (=> b!1566205 (= tp!461232 e!1007254)))

(declare-fun b!1568366 () Bool)

(assert (=> b!1568366 (= e!1007254 tp_is_empty!7143)))

(declare-fun b!1568369 () Bool)

(declare-fun tp!461683 () Bool)

(declare-fun tp!461681 () Bool)

(assert (=> b!1568369 (= e!1007254 (and tp!461683 tp!461681))))

(declare-fun b!1568368 () Bool)

(declare-fun tp!461685 () Bool)

(assert (=> b!1568368 (= e!1007254 tp!461685)))

(declare-fun b!1568367 () Bool)

(declare-fun tp!461684 () Bool)

(declare-fun tp!461682 () Bool)

(assert (=> b!1568367 (= e!1007254 (and tp!461684 tp!461682))))

(assert (= (and b!1566205 ((_ is ElementMatch!4311) (regTwo!9135 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568366))

(assert (= (and b!1566205 ((_ is Concat!7385) (regTwo!9135 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568367))

(assert (= (and b!1566205 ((_ is Star!4311) (regTwo!9135 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568368))

(assert (= (and b!1566205 ((_ is Union!4311) (regTwo!9135 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568369))

(declare-fun b!1568373 () Bool)

(declare-fun b_free!41955 () Bool)

(declare-fun b_next!42659 () Bool)

(assert (=> b!1568373 (= b_free!41955 (not b_next!42659))))

(declare-fun tp!461688 () Bool)

(declare-fun b_and!109525 () Bool)

(assert (=> b!1568373 (= tp!461688 b_and!109525)))

(declare-fun b_free!41957 () Bool)

(declare-fun b_next!42661 () Bool)

(assert (=> b!1568373 (= b_free!41957 (not b_next!42661))))

(declare-fun t!142266 () Bool)

(declare-fun tb!87915 () Bool)

(assert (=> (and b!1568373 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142266) tb!87915))

(declare-fun result!106374 () Bool)

(assert (= result!106374 result!106096))

(assert (=> b!1567119 t!142266))

(declare-fun t!142268 () Bool)

(declare-fun tb!87917 () Bool)

(assert (=> (and b!1568373 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142268) tb!87917))

(declare-fun result!106376 () Bool)

(assert (= result!106376 result!106340))

(assert (=> b!1568255 t!142268))

(declare-fun t!142270 () Bool)

(declare-fun tb!87919 () Bool)

(assert (=> (and b!1568373 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!142270) tb!87919))

(declare-fun result!106378 () Bool)

(assert (= result!106378 result!105936))

(assert (=> b!1566136 t!142270))

(declare-fun t!142272 () Bool)

(declare-fun tb!87921 () Bool)

(assert (=> (and b!1568373 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142272) tb!87921))

(declare-fun result!106380 () Bool)

(assert (= result!106380 result!106082))

(assert (=> b!1567091 t!142272))

(declare-fun tb!87923 () Bool)

(declare-fun t!142274 () Bool)

(assert (=> (and b!1568373 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!142274) tb!87923))

(declare-fun result!106382 () Bool)

(assert (= result!106382 result!106068))

(assert (=> d!464240 t!142274))

(declare-fun tb!87925 () Bool)

(declare-fun t!142276 () Bool)

(assert (=> (and b!1568373 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142276) tb!87925))

(declare-fun result!106384 () Bool)

(assert (= result!106384 result!106138))

(assert (=> d!465044 t!142276))

(declare-fun t!142278 () Bool)

(declare-fun tb!87927 () Bool)

(assert (=> (and b!1568373 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!142278) tb!87927))

(declare-fun result!106386 () Bool)

(assert (= result!106386 result!105930))

(assert (=> d!464024 t!142278))

(declare-fun tb!87929 () Bool)

(declare-fun t!142280 () Bool)

(assert (=> (and b!1568373 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!142280) tb!87929))

(declare-fun result!106388 () Bool)

(assert (= result!106388 result!105924))

(assert (=> d!463964 t!142280))

(declare-fun t!142282 () Bool)

(declare-fun tb!87931 () Bool)

(assert (=> (and b!1568373 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142282) tb!87931))

(declare-fun result!106390 () Bool)

(assert (= result!106390 result!106124))

(assert (=> d!465006 t!142282))

(declare-fun tb!87933 () Bool)

(declare-fun t!142284 () Bool)

(assert (=> (and b!1568373 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!142284) tb!87933))

(declare-fun result!106392 () Bool)

(assert (= result!106392 result!105898))

(assert (=> d!463782 t!142284))

(declare-fun tp!461689 () Bool)

(declare-fun b_and!109527 () Bool)

(assert (=> b!1568373 (= tp!461689 (and (=> t!142268 result!106376) (=> t!142282 result!106390) (=> t!142266 result!106374) (=> t!142276 result!106384) (=> t!142270 result!106378) (=> t!142278 result!106386) (=> t!142274 result!106382) (=> t!142284 result!106392) (=> t!142272 result!106380) (=> t!142280 result!106388) b_and!109527))))

(declare-fun tp!461690 () Bool)

(declare-fun b!1568370 () Bool)

(declare-fun e!1007260 () Bool)

(declare-fun e!1007255 () Bool)

(assert (=> b!1568370 (= e!1007255 (and (inv!22409 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))) e!1007260 tp!461690))))

(declare-fun e!1007256 () Bool)

(assert (=> b!1568373 (= e!1007256 (and tp!461688 tp!461689))))

(declare-fun tp!461686 () Bool)

(declare-fun b!1568371 () Bool)

(declare-fun e!1007259 () Bool)

(assert (=> b!1568371 (= e!1007260 (and (inv!21 (value!94688 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007259 tp!461686))))

(declare-fun tp!461687 () Bool)

(declare-fun b!1568372 () Bool)

(assert (=> b!1568372 (= e!1007259 (and tp!461687 (inv!22390 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) e!1007256))))

(assert (=> b!1566159 (= tp!461200 e!1007255)))

(assert (= b!1568372 b!1568373))

(assert (= b!1568371 b!1568372))

(assert (= b!1568370 b!1568371))

(assert (= (and b!1566159 ((_ is Cons!17030) (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))) b!1568370))

(declare-fun m!1842185 () Bool)

(assert (=> b!1568370 m!1842185))

(declare-fun m!1842187 () Bool)

(assert (=> b!1568371 m!1842187))

(declare-fun m!1842189 () Bool)

(assert (=> b!1568372 m!1842189))

(declare-fun m!1842191 () Bool)

(assert (=> b!1568372 m!1842191))

(declare-fun b!1568374 () Bool)

(declare-fun tp!461692 () Bool)

(declare-fun e!1007261 () Bool)

(declare-fun tp!461693 () Bool)

(assert (=> b!1568374 (= e!1007261 (and (inv!22405 (left!13803 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) tp!461692 (inv!22405 (right!14133 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) tp!461693))))

(declare-fun b!1568376 () Bool)

(declare-fun e!1007262 () Bool)

(declare-fun tp!461691 () Bool)

(assert (=> b!1568376 (= e!1007262 tp!461691)))

(declare-fun b!1568375 () Bool)

(assert (=> b!1568375 (= e!1007261 (and (inv!22415 (xs!8414 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) e!1007262))))

(assert (=> b!1566187 (= tp!461222 (and (inv!22405 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) e!1007261))))

(assert (= (and b!1566187 ((_ is Node!5614) (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) b!1568374))

(assert (= b!1568375 b!1568376))

(assert (= (and b!1566187 ((_ is Leaf!8326) (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) b!1568375))

(declare-fun m!1842193 () Bool)

(assert (=> b!1568374 m!1842193))

(declare-fun m!1842195 () Bool)

(assert (=> b!1568374 m!1842195))

(declare-fun m!1842197 () Bool)

(assert (=> b!1568375 m!1842197))

(assert (=> b!1566187 m!1838205))

(declare-fun tp!461696 () Bool)

(declare-fun e!1007263 () Bool)

(declare-fun b!1568377 () Bool)

(declare-fun tp!461695 () Bool)

(assert (=> b!1568377 (= e!1007263 (and (inv!22405 (left!13803 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) tp!461695 (inv!22405 (right!14133 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) tp!461696))))

(declare-fun b!1568379 () Bool)

(declare-fun e!1007264 () Bool)

(declare-fun tp!461694 () Bool)

(assert (=> b!1568379 (= e!1007264 tp!461694)))

(declare-fun b!1568378 () Bool)

(assert (=> b!1568378 (= e!1007263 (and (inv!22415 (xs!8414 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) e!1007264))))

(assert (=> b!1566187 (= tp!461223 (and (inv!22405 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))) e!1007263))))

(assert (= (and b!1566187 ((_ is Node!5614) (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) b!1568377))

(assert (= b!1568378 b!1568379))

(assert (= (and b!1566187 ((_ is Leaf!8326) (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850)))))))) b!1568378))

(declare-fun m!1842199 () Bool)

(assert (=> b!1568377 m!1842199))

(declare-fun m!1842201 () Bool)

(assert (=> b!1568377 m!1842201))

(declare-fun m!1842203 () Bool)

(assert (=> b!1568378 m!1842203))

(assert (=> b!1566187 m!1838207))

(declare-fun b!1568382 () Bool)

(declare-fun e!1007267 () Bool)

(assert (=> b!1568382 (= e!1007267 true)))

(declare-fun b!1568381 () Bool)

(declare-fun e!1007266 () Bool)

(assert (=> b!1568381 (= e!1007266 e!1007267)))

(declare-fun b!1568380 () Bool)

(declare-fun e!1007265 () Bool)

(assert (=> b!1568380 (= e!1007265 e!1007266)))

(assert (=> b!1566225 e!1007265))

(assert (= b!1568381 b!1568382))

(assert (= b!1568380 b!1568381))

(assert (= (and b!1566225 ((_ is Cons!17031) (t!141746 (t!141746 (rules!12084 thiss!10002))))) b!1568380))

(assert (=> b!1568382 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (dynLambda!7590 order!10093 lambda!66209))))

(assert (=> b!1568382 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (dynLambda!7590 order!10093 lambda!66209))))

(declare-fun b!1568383 () Bool)

(declare-fun e!1007268 () Bool)

(declare-fun tp!461697 () Bool)

(assert (=> b!1568383 (= e!1007268 (and tp_is_empty!7143 tp!461697))))

(assert (=> b!1566189 (= tp!461221 e!1007268)))

(assert (= (and b!1566189 ((_ is Cons!17029) (innerList!5674 (xs!8414 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850))))) (value!94688 (h!22431 (t!141745 lt!541850))))))))) b!1568383))

(declare-fun b!1568384 () Bool)

(declare-fun e!1007269 () Bool)

(declare-fun tp!461698 () Bool)

(assert (=> b!1568384 (= e!1007269 (and tp_is_empty!7143 tp!461698))))

(assert (=> b!1566198 (= tp!461231 e!1007269)))

(assert (= (and b!1566198 ((_ is Cons!17029) (t!141744 (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) b!1568384))

(declare-fun e!1007270 () Bool)

(assert (=> b!1566164 (= tp!461207 e!1007270)))

(declare-fun b!1568385 () Bool)

(assert (=> b!1568385 (= e!1007270 tp_is_empty!7143)))

(declare-fun b!1568388 () Bool)

(declare-fun tp!461701 () Bool)

(declare-fun tp!461699 () Bool)

(assert (=> b!1568388 (= e!1007270 (and tp!461701 tp!461699))))

(declare-fun b!1568387 () Bool)

(declare-fun tp!461703 () Bool)

(assert (=> b!1568387 (= e!1007270 tp!461703)))

(declare-fun b!1568386 () Bool)

(declare-fun tp!461702 () Bool)

(declare-fun tp!461700 () Bool)

(assert (=> b!1568386 (= e!1007270 (and tp!461702 tp!461700))))

(assert (= (and b!1566164 ((_ is ElementMatch!4311) (regOne!9134 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568385))

(assert (= (and b!1566164 ((_ is Concat!7385) (regOne!9134 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568386))

(assert (= (and b!1566164 ((_ is Star!4311) (regOne!9134 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568387))

(assert (= (and b!1566164 ((_ is Union!4311) (regOne!9134 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568388))

(declare-fun e!1007271 () Bool)

(assert (=> b!1566164 (= tp!461205 e!1007271)))

(declare-fun b!1568389 () Bool)

(assert (=> b!1568389 (= e!1007271 tp_is_empty!7143)))

(declare-fun b!1568392 () Bool)

(declare-fun tp!461706 () Bool)

(declare-fun tp!461704 () Bool)

(assert (=> b!1568392 (= e!1007271 (and tp!461706 tp!461704))))

(declare-fun b!1568391 () Bool)

(declare-fun tp!461708 () Bool)

(assert (=> b!1568391 (= e!1007271 tp!461708)))

(declare-fun b!1568390 () Bool)

(declare-fun tp!461707 () Bool)

(declare-fun tp!461705 () Bool)

(assert (=> b!1568390 (= e!1007271 (and tp!461707 tp!461705))))

(assert (= (and b!1566164 ((_ is ElementMatch!4311) (regTwo!9134 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568389))

(assert (= (and b!1566164 ((_ is Concat!7385) (regTwo!9134 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568390))

(assert (= (and b!1566164 ((_ is Star!4311) (regTwo!9134 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568391))

(assert (= (and b!1566164 ((_ is Union!4311) (regTwo!9134 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568392))

(declare-fun b!1568393 () Bool)

(declare-fun e!1007272 () Bool)

(declare-fun tp!461709 () Bool)

(assert (=> b!1568393 (= e!1007272 (and tp_is_empty!7143 tp!461709))))

(assert (=> b!1566191 (= tp!461224 e!1007272)))

(assert (= (and b!1566191 ((_ is Cons!17029) (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) b!1568393))

(declare-fun e!1007273 () Bool)

(assert (=> b!1566208 (= tp!461241 e!1007273)))

(declare-fun b!1568394 () Bool)

(assert (=> b!1568394 (= e!1007273 tp_is_empty!7143)))

(declare-fun b!1568397 () Bool)

(declare-fun tp!461712 () Bool)

(declare-fun tp!461710 () Bool)

(assert (=> b!1568397 (= e!1007273 (and tp!461712 tp!461710))))

(declare-fun b!1568396 () Bool)

(declare-fun tp!461714 () Bool)

(assert (=> b!1568396 (= e!1007273 tp!461714)))

(declare-fun b!1568395 () Bool)

(declare-fun tp!461713 () Bool)

(declare-fun tp!461711 () Bool)

(assert (=> b!1568395 (= e!1007273 (and tp!461713 tp!461711))))

(assert (= (and b!1566208 ((_ is ElementMatch!4311) (reg!4640 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568394))

(assert (= (and b!1566208 ((_ is Concat!7385) (reg!4640 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568395))

(assert (= (and b!1566208 ((_ is Star!4311) (reg!4640 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568396))

(assert (= (and b!1566208 ((_ is Union!4311) (reg!4640 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568397))

(declare-fun b!1568400 () Bool)

(declare-fun e!1007276 () Bool)

(assert (=> b!1568400 (= e!1007276 true)))

(declare-fun b!1568399 () Bool)

(declare-fun e!1007275 () Bool)

(assert (=> b!1568399 (= e!1007275 e!1007276)))

(declare-fun b!1568398 () Bool)

(declare-fun e!1007274 () Bool)

(assert (=> b!1568398 (= e!1007274 e!1007275)))

(assert (=> b!1566199 e!1007274))

(assert (= b!1568399 b!1568400))

(assert (= b!1568398 b!1568399))

(assert (= (and b!1566199 ((_ is Cons!17031) (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) b!1568398))

(assert (=> b!1568400 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002)))))))) (dynLambda!7590 order!10093 lambda!66200))))

(assert (=> b!1568400 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002)))))))) (dynLambda!7590 order!10093 lambda!66200))))

(declare-fun e!1007277 () Bool)

(assert (=> b!1566166 (= tp!461206 e!1007277)))

(declare-fun b!1568401 () Bool)

(assert (=> b!1568401 (= e!1007277 tp_is_empty!7143)))

(declare-fun b!1568404 () Bool)

(declare-fun tp!461717 () Bool)

(declare-fun tp!461715 () Bool)

(assert (=> b!1568404 (= e!1007277 (and tp!461717 tp!461715))))

(declare-fun b!1568403 () Bool)

(declare-fun tp!461719 () Bool)

(assert (=> b!1568403 (= e!1007277 tp!461719)))

(declare-fun b!1568402 () Bool)

(declare-fun tp!461718 () Bool)

(declare-fun tp!461716 () Bool)

(assert (=> b!1568402 (= e!1007277 (and tp!461718 tp!461716))))

(assert (= (and b!1566166 ((_ is ElementMatch!4311) (regOne!9135 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568401))

(assert (= (and b!1566166 ((_ is Concat!7385) (regOne!9135 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568402))

(assert (= (and b!1566166 ((_ is Star!4311) (regOne!9135 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568403))

(assert (= (and b!1566166 ((_ is Union!4311) (regOne!9135 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568404))

(declare-fun e!1007278 () Bool)

(assert (=> b!1566166 (= tp!461204 e!1007278)))

(declare-fun b!1568405 () Bool)

(assert (=> b!1568405 (= e!1007278 tp_is_empty!7143)))

(declare-fun b!1568408 () Bool)

(declare-fun tp!461722 () Bool)

(declare-fun tp!461720 () Bool)

(assert (=> b!1568408 (= e!1007278 (and tp!461722 tp!461720))))

(declare-fun b!1568407 () Bool)

(declare-fun tp!461724 () Bool)

(assert (=> b!1568407 (= e!1007278 tp!461724)))

(declare-fun b!1568406 () Bool)

(declare-fun tp!461723 () Bool)

(declare-fun tp!461721 () Bool)

(assert (=> b!1568406 (= e!1007278 (and tp!461723 tp!461721))))

(assert (= (and b!1566166 ((_ is ElementMatch!4311) (regTwo!9135 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568405))

(assert (= (and b!1566166 ((_ is Concat!7385) (regTwo!9135 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568406))

(assert (= (and b!1566166 ((_ is Star!4311) (regTwo!9135 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568407))

(assert (= (and b!1566166 ((_ is Union!4311) (regTwo!9135 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568408))

(declare-fun e!1007279 () Bool)

(assert (=> b!1566151 (= tp!461190 e!1007279)))

(declare-fun b!1568409 () Bool)

(assert (=> b!1568409 (= e!1007279 tp_is_empty!7143)))

(declare-fun b!1568412 () Bool)

(declare-fun tp!461727 () Bool)

(declare-fun tp!461725 () Bool)

(assert (=> b!1568412 (= e!1007279 (and tp!461727 tp!461725))))

(declare-fun b!1568411 () Bool)

(declare-fun tp!461729 () Bool)

(assert (=> b!1568411 (= e!1007279 tp!461729)))

(declare-fun b!1568410 () Bool)

(declare-fun tp!461728 () Bool)

(declare-fun tp!461726 () Bool)

(assert (=> b!1568410 (= e!1007279 (and tp!461728 tp!461726))))

(assert (= (and b!1566151 ((_ is ElementMatch!4311) (regex!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) b!1568409))

(assert (= (and b!1566151 ((_ is Concat!7385) (regex!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) b!1568410))

(assert (= (and b!1566151 ((_ is Star!4311) (regex!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) b!1568411))

(assert (= (and b!1566151 ((_ is Union!4311) (regex!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) b!1568412))

(declare-fun e!1007280 () Bool)

(assert (=> b!1566144 (= tp!461183 e!1007280)))

(declare-fun b!1568413 () Bool)

(assert (=> b!1568413 (= e!1007280 tp_is_empty!7143)))

(declare-fun b!1568416 () Bool)

(declare-fun tp!461732 () Bool)

(declare-fun tp!461730 () Bool)

(assert (=> b!1568416 (= e!1007280 (and tp!461732 tp!461730))))

(declare-fun b!1568415 () Bool)

(declare-fun tp!461734 () Bool)

(assert (=> b!1568415 (= e!1007280 tp!461734)))

(declare-fun b!1568414 () Bool)

(declare-fun tp!461733 () Bool)

(declare-fun tp!461731 () Bool)

(assert (=> b!1568414 (= e!1007280 (and tp!461733 tp!461731))))

(assert (= (and b!1566144 ((_ is ElementMatch!4311) (reg!4640 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568413))

(assert (= (and b!1566144 ((_ is Concat!7385) (reg!4640 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568414))

(assert (= (and b!1566144 ((_ is Star!4311) (reg!4640 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568415))

(assert (= (and b!1566144 ((_ is Union!4311) (reg!4640 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568416))

(declare-fun b!1568417 () Bool)

(declare-fun e!1007281 () Bool)

(declare-fun tp!461735 () Bool)

(assert (=> b!1568417 (= e!1007281 (and tp_is_empty!7143 tp!461735))))

(assert (=> b!1566154 (= tp!461193 e!1007281)))

(assert (= (and b!1566154 ((_ is Cons!17029) (originalCharacters!3797 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) b!1568417))

(declare-fun tp!461737 () Bool)

(declare-fun tp!461736 () Bool)

(declare-fun e!1007283 () Bool)

(declare-fun b!1568418 () Bool)

(assert (=> b!1568418 (= e!1007283 (and (inv!22394 (left!13804 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) tp!461737 (inv!22394 (right!14134 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) tp!461736))))

(declare-fun b!1568420 () Bool)

(declare-fun e!1007282 () Bool)

(declare-fun tp!461738 () Bool)

(assert (=> b!1568420 (= e!1007282 tp!461738)))

(declare-fun b!1568419 () Bool)

(assert (=> b!1568419 (= e!1007283 (and (inv!22401 (xs!8415 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) e!1007282))))

(assert (=> b!1566160 (= tp!461202 (and (inv!22394 (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) e!1007283))))

(assert (= (and b!1566160 ((_ is Node!5615) (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) b!1568418))

(assert (= b!1568419 b!1568420))

(assert (= (and b!1566160 ((_ is Leaf!8327) (left!13804 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) b!1568419))

(declare-fun m!1842205 () Bool)

(assert (=> b!1568418 m!1842205))

(declare-fun m!1842207 () Bool)

(assert (=> b!1568418 m!1842207))

(declare-fun m!1842209 () Bool)

(assert (=> b!1568419 m!1842209))

(assert (=> b!1566160 m!1838183))

(declare-fun tp!461739 () Bool)

(declare-fun e!1007285 () Bool)

(declare-fun b!1568421 () Bool)

(declare-fun tp!461740 () Bool)

(assert (=> b!1568421 (= e!1007285 (and (inv!22394 (left!13804 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) tp!461740 (inv!22394 (right!14134 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) tp!461739))))

(declare-fun b!1568423 () Bool)

(declare-fun e!1007284 () Bool)

(declare-fun tp!461741 () Bool)

(assert (=> b!1568423 (= e!1007284 tp!461741)))

(declare-fun b!1568422 () Bool)

(assert (=> b!1568422 (= e!1007285 (and (inv!22401 (xs!8415 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) e!1007284))))

(assert (=> b!1566160 (= tp!461201 (and (inv!22394 (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))) e!1007285))))

(assert (= (and b!1566160 ((_ is Node!5615) (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) b!1568421))

(assert (= b!1568422 b!1568423))

(assert (= (and b!1566160 ((_ is Leaf!8327) (right!14134 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))) b!1568422))

(declare-fun m!1842211 () Bool)

(assert (=> b!1568421 m!1842211))

(declare-fun m!1842213 () Bool)

(assert (=> b!1568421 m!1842213))

(declare-fun m!1842215 () Bool)

(assert (=> b!1568422 m!1842215))

(assert (=> b!1566160 m!1838185))

(declare-fun b!1568427 () Bool)

(declare-fun b_free!41959 () Bool)

(declare-fun b_next!42663 () Bool)

(assert (=> b!1568427 (= b_free!41959 (not b_next!42663))))

(declare-fun tp!461744 () Bool)

(declare-fun b_and!109529 () Bool)

(assert (=> b!1568427 (= tp!461744 b_and!109529)))

(declare-fun b_free!41961 () Bool)

(declare-fun b_next!42665 () Bool)

(assert (=> b!1568427 (= b_free!41961 (not b_next!42665))))

(declare-fun t!142286 () Bool)

(declare-fun tb!87935 () Bool)

(assert (=> (and b!1568427 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142286) tb!87935))

(declare-fun result!106394 () Bool)

(assert (= result!106394 result!106096))

(assert (=> b!1567119 t!142286))

(declare-fun t!142288 () Bool)

(declare-fun tb!87937 () Bool)

(assert (=> (and b!1568427 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142288) tb!87937))

(declare-fun result!106396 () Bool)

(assert (= result!106396 result!106340))

(assert (=> b!1568255 t!142288))

(declare-fun t!142290 () Bool)

(declare-fun tb!87939 () Bool)

(assert (=> (and b!1568427 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!142290) tb!87939))

(declare-fun result!106398 () Bool)

(assert (= result!106398 result!105936))

(assert (=> b!1566136 t!142290))

(declare-fun t!142292 () Bool)

(declare-fun tb!87941 () Bool)

(assert (=> (and b!1568427 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142292) tb!87941))

(declare-fun result!106400 () Bool)

(assert (= result!106400 result!106082))

(assert (=> b!1567091 t!142292))

(declare-fun t!142294 () Bool)

(declare-fun tb!87943 () Bool)

(assert (=> (and b!1568427 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!142294) tb!87943))

(declare-fun result!106402 () Bool)

(assert (= result!106402 result!106068))

(assert (=> d!464240 t!142294))

(declare-fun tb!87945 () Bool)

(declare-fun t!142296 () Bool)

(assert (=> (and b!1568427 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142296) tb!87945))

(declare-fun result!106404 () Bool)

(assert (= result!106404 result!106138))

(assert (=> d!465044 t!142296))

(declare-fun tb!87947 () Bool)

(declare-fun t!142298 () Bool)

(assert (=> (and b!1568427 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!142298) tb!87947))

(declare-fun result!106406 () Bool)

(assert (= result!106406 result!105930))

(assert (=> d!464024 t!142298))

(declare-fun tb!87949 () Bool)

(declare-fun t!142300 () Bool)

(assert (=> (and b!1568427 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!142300) tb!87949))

(declare-fun result!106408 () Bool)

(assert (= result!106408 result!105924))

(assert (=> d!463964 t!142300))

(declare-fun t!142302 () Bool)

(declare-fun tb!87951 () Bool)

(assert (=> (and b!1568427 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142302) tb!87951))

(declare-fun result!106410 () Bool)

(assert (= result!106410 result!106124))

(assert (=> d!465006 t!142302))

(declare-fun t!142304 () Bool)

(declare-fun tb!87953 () Bool)

(assert (=> (and b!1568427 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!142304) tb!87953))

(declare-fun result!106412 () Bool)

(assert (= result!106412 result!105898))

(assert (=> d!463782 t!142304))

(declare-fun tp!461745 () Bool)

(declare-fun b_and!109531 () Bool)

(assert (=> b!1568427 (= tp!461745 (and (=> t!142302 result!106410) (=> t!142294 result!106402) (=> t!142298 result!106406) (=> t!142286 result!106394) (=> t!142304 result!106412) (=> t!142292 result!106400) (=> t!142300 result!106408) (=> t!142290 result!106398) (=> t!142288 result!106396) (=> t!142296 result!106404) b_and!109531))))

(declare-fun tp!461746 () Bool)

(declare-fun b!1568424 () Bool)

(declare-fun e!1007291 () Bool)

(declare-fun e!1007286 () Bool)

(assert (=> b!1568424 (= e!1007286 (and (inv!22409 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))) e!1007291 tp!461746))))

(declare-fun e!1007287 () Bool)

(assert (=> b!1568427 (= e!1007287 (and tp!461744 tp!461745))))

(declare-fun b!1568425 () Bool)

(declare-fun tp!461742 () Bool)

(declare-fun e!1007290 () Bool)

(assert (=> b!1568425 (= e!1007291 (and (inv!21 (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007290 tp!461742))))

(declare-fun tp!461743 () Bool)

(declare-fun b!1568426 () Bool)

(assert (=> b!1568426 (= e!1007290 (and tp!461743 (inv!22390 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) e!1007287))))

(assert (=> b!1566162 (= tp!461203 e!1007286)))

(assert (= b!1568426 b!1568427))

(assert (= b!1568425 b!1568426))

(assert (= b!1568424 b!1568425))

(assert (= (and b!1566162 ((_ is Cons!17030) (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))) b!1568424))

(declare-fun m!1842217 () Bool)

(assert (=> b!1568424 m!1842217))

(declare-fun m!1842219 () Bool)

(assert (=> b!1568425 m!1842219))

(declare-fun m!1842221 () Bool)

(assert (=> b!1568426 m!1842221))

(declare-fun m!1842223 () Bool)

(assert (=> b!1568426 m!1842223))

(declare-fun tp!461748 () Bool)

(declare-fun e!1007292 () Bool)

(declare-fun tp!461749 () Bool)

(declare-fun b!1568428 () Bool)

(assert (=> b!1568428 (= e!1007292 (and (inv!22405 (left!13803 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850)))))) tp!461748 (inv!22405 (right!14133 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850)))))) tp!461749))))

(declare-fun b!1568430 () Bool)

(declare-fun e!1007293 () Bool)

(declare-fun tp!461747 () Bool)

(assert (=> b!1568430 (= e!1007293 tp!461747)))

(declare-fun b!1568429 () Bool)

(assert (=> b!1568429 (= e!1007292 (and (inv!22415 (xs!8414 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850)))))) e!1007293))))

(assert (=> b!1566042 (= tp!461177 (and (inv!22405 (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850))))) e!1007292))))

(assert (= (and b!1566042 ((_ is Node!5614) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850)))))) b!1568428))

(assert (= b!1568429 b!1568430))

(assert (= (and b!1566042 ((_ is Leaf!8326) (c!253626 (dynLambda!7594 (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))) (value!94688 (h!22431 lt!541850)))))) b!1568429))

(declare-fun m!1842225 () Bool)

(assert (=> b!1568428 m!1842225))

(declare-fun m!1842227 () Bool)

(assert (=> b!1568428 m!1842227))

(declare-fun m!1842229 () Bool)

(assert (=> b!1568429 m!1842229))

(assert (=> b!1566042 m!1837909))

(declare-fun b!1568434 () Bool)

(declare-fun b_free!41963 () Bool)

(declare-fun b_next!42667 () Bool)

(assert (=> b!1568434 (= b_free!41963 (not b_next!42667))))

(declare-fun tp!461752 () Bool)

(declare-fun b_and!109533 () Bool)

(assert (=> b!1568434 (= tp!461752 b_and!109533)))

(declare-fun b_free!41965 () Bool)

(declare-fun b_next!42669 () Bool)

(assert (=> b!1568434 (= b_free!41965 (not b_next!42669))))

(declare-fun t!142306 () Bool)

(declare-fun tb!87955 () Bool)

(assert (=> (and b!1568434 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142306) tb!87955))

(declare-fun result!106414 () Bool)

(assert (= result!106414 result!106096))

(assert (=> b!1567119 t!142306))

(declare-fun t!142308 () Bool)

(declare-fun tb!87957 () Bool)

(assert (=> (and b!1568434 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142308) tb!87957))

(declare-fun result!106416 () Bool)

(assert (= result!106416 result!106340))

(assert (=> b!1568255 t!142308))

(declare-fun t!142310 () Bool)

(declare-fun tb!87959 () Bool)

(assert (=> (and b!1568434 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!142310) tb!87959))

(declare-fun result!106418 () Bool)

(assert (= result!106418 result!105936))

(assert (=> b!1566136 t!142310))

(declare-fun t!142312 () Bool)

(declare-fun tb!87961 () Bool)

(assert (=> (and b!1568434 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142312) tb!87961))

(declare-fun result!106420 () Bool)

(assert (= result!106420 result!106082))

(assert (=> b!1567091 t!142312))

(declare-fun t!142314 () Bool)

(declare-fun tb!87963 () Bool)

(assert (=> (and b!1568434 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!142314) tb!87963))

(declare-fun result!106422 () Bool)

(assert (= result!106422 result!106068))

(assert (=> d!464240 t!142314))

(declare-fun t!142316 () Bool)

(declare-fun tb!87965 () Bool)

(assert (=> (and b!1568434 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142316) tb!87965))

(declare-fun result!106424 () Bool)

(assert (= result!106424 result!106138))

(assert (=> d!465044 t!142316))

(declare-fun tb!87967 () Bool)

(declare-fun t!142318 () Bool)

(assert (=> (and b!1568434 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!142318) tb!87967))

(declare-fun result!106426 () Bool)

(assert (= result!106426 result!105930))

(assert (=> d!464024 t!142318))

(declare-fun tb!87969 () Bool)

(declare-fun t!142320 () Bool)

(assert (=> (and b!1568434 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!142320) tb!87969))

(declare-fun result!106428 () Bool)

(assert (= result!106428 result!105924))

(assert (=> d!463964 t!142320))

(declare-fun t!142322 () Bool)

(declare-fun tb!87971 () Bool)

(assert (=> (and b!1568434 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142322) tb!87971))

(declare-fun result!106430 () Bool)

(assert (= result!106430 result!106124))

(assert (=> d!465006 t!142322))

(declare-fun t!142324 () Bool)

(declare-fun tb!87973 () Bool)

(assert (=> (and b!1568434 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!142324) tb!87973))

(declare-fun result!106432 () Bool)

(assert (= result!106432 result!105898))

(assert (=> d!463782 t!142324))

(declare-fun tp!461753 () Bool)

(declare-fun b_and!109535 () Bool)

(assert (=> b!1568434 (= tp!461753 (and (=> t!142324 result!106432) (=> t!142308 result!106416) (=> t!142314 result!106422) (=> t!142320 result!106428) (=> t!142316 result!106424) (=> t!142306 result!106414) (=> t!142322 result!106430) (=> t!142318 result!106426) (=> t!142310 result!106418) (=> t!142312 result!106420) b_and!109535))))

(declare-fun e!1007294 () Bool)

(declare-fun tp!461754 () Bool)

(declare-fun e!1007299 () Bool)

(declare-fun b!1568431 () Bool)

(assert (=> b!1568431 (= e!1007294 (and (inv!22409 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) e!1007299 tp!461754))))

(declare-fun e!1007295 () Bool)

(assert (=> b!1568434 (= e!1007295 (and tp!461752 tp!461753))))

(declare-fun b!1568432 () Bool)

(declare-fun e!1007298 () Bool)

(declare-fun tp!461750 () Bool)

(assert (=> b!1568432 (= e!1007299 (and (inv!21 (value!94688 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007298 tp!461750))))

(declare-fun tp!461751 () Bool)

(declare-fun b!1568433 () Bool)

(assert (=> b!1568433 (= e!1007298 (and tp!461751 (inv!22390 (tag!3247 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) e!1007295))))

(assert (=> b!1566214 (= tp!461251 e!1007294)))

(assert (= b!1568433 b!1568434))

(assert (= b!1568432 b!1568433))

(assert (= b!1568431 b!1568432))

(assert (= (and b!1566214 ((_ is Cons!17030) (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) b!1568431))

(declare-fun m!1842231 () Bool)

(assert (=> b!1568431 m!1842231))

(declare-fun m!1842233 () Bool)

(assert (=> b!1568432 m!1842233))

(declare-fun m!1842235 () Bool)

(assert (=> b!1568433 m!1842235))

(declare-fun m!1842237 () Bool)

(assert (=> b!1568433 m!1842237))

(declare-fun e!1007300 () Bool)

(assert (=> b!1566222 (= tp!461255 e!1007300)))

(declare-fun b!1568435 () Bool)

(assert (=> b!1568435 (= e!1007300 tp_is_empty!7143)))

(declare-fun b!1568438 () Bool)

(declare-fun tp!461757 () Bool)

(declare-fun tp!461755 () Bool)

(assert (=> b!1568438 (= e!1007300 (and tp!461757 tp!461755))))

(declare-fun b!1568437 () Bool)

(declare-fun tp!461759 () Bool)

(assert (=> b!1568437 (= e!1007300 tp!461759)))

(declare-fun b!1568436 () Bool)

(declare-fun tp!461758 () Bool)

(declare-fun tp!461756 () Bool)

(assert (=> b!1568436 (= e!1007300 (and tp!461758 tp!461756))))

(assert (= (and b!1566222 ((_ is ElementMatch!4311) (regOne!9134 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568435))

(assert (= (and b!1566222 ((_ is Concat!7385) (regOne!9134 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568436))

(assert (= (and b!1566222 ((_ is Star!4311) (regOne!9134 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568437))

(assert (= (and b!1566222 ((_ is Union!4311) (regOne!9134 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568438))

(declare-fun e!1007301 () Bool)

(assert (=> b!1566222 (= tp!461253 e!1007301)))

(declare-fun b!1568439 () Bool)

(assert (=> b!1568439 (= e!1007301 tp_is_empty!7143)))

(declare-fun b!1568442 () Bool)

(declare-fun tp!461762 () Bool)

(declare-fun tp!461760 () Bool)

(assert (=> b!1568442 (= e!1007301 (and tp!461762 tp!461760))))

(declare-fun b!1568441 () Bool)

(declare-fun tp!461764 () Bool)

(assert (=> b!1568441 (= e!1007301 tp!461764)))

(declare-fun b!1568440 () Bool)

(declare-fun tp!461763 () Bool)

(declare-fun tp!461761 () Bool)

(assert (=> b!1568440 (= e!1007301 (and tp!461763 tp!461761))))

(assert (= (and b!1566222 ((_ is ElementMatch!4311) (regTwo!9134 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568439))

(assert (= (and b!1566222 ((_ is Concat!7385) (regTwo!9134 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568440))

(assert (= (and b!1566222 ((_ is Star!4311) (regTwo!9134 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568441))

(assert (= (and b!1566222 ((_ is Union!4311) (regTwo!9134 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568442))

(declare-fun e!1007302 () Bool)

(assert (=> b!1566216 (= tp!461248 e!1007302)))

(declare-fun b!1568443 () Bool)

(assert (=> b!1568443 (= e!1007302 tp_is_empty!7143)))

(declare-fun b!1568446 () Bool)

(declare-fun tp!461767 () Bool)

(declare-fun tp!461765 () Bool)

(assert (=> b!1568446 (= e!1007302 (and tp!461767 tp!461765))))

(declare-fun b!1568445 () Bool)

(declare-fun tp!461769 () Bool)

(assert (=> b!1568445 (= e!1007302 tp!461769)))

(declare-fun b!1568444 () Bool)

(declare-fun tp!461768 () Bool)

(declare-fun tp!461766 () Bool)

(assert (=> b!1568444 (= e!1007302 (and tp!461768 tp!461766))))

(assert (= (and b!1566216 ((_ is ElementMatch!4311) (regex!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568443))

(assert (= (and b!1566216 ((_ is Concat!7385) (regex!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568444))

(assert (= (and b!1566216 ((_ is Star!4311) (regex!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568445))

(assert (= (and b!1566216 ((_ is Union!4311) (regex!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568446))

(declare-fun e!1007303 () Bool)

(assert (=> b!1566211 (= tp!461245 e!1007303)))

(declare-fun b!1568447 () Bool)

(assert (=> b!1568447 (= e!1007303 tp_is_empty!7143)))

(declare-fun b!1568450 () Bool)

(declare-fun tp!461772 () Bool)

(declare-fun tp!461770 () Bool)

(assert (=> b!1568450 (= e!1007303 (and tp!461772 tp!461770))))

(declare-fun b!1568449 () Bool)

(declare-fun tp!461774 () Bool)

(assert (=> b!1568449 (= e!1007303 tp!461774)))

(declare-fun b!1568448 () Bool)

(declare-fun tp!461773 () Bool)

(declare-fun tp!461771 () Bool)

(assert (=> b!1568448 (= e!1007303 (and tp!461773 tp!461771))))

(assert (= (and b!1566211 ((_ is ElementMatch!4311) (regOne!9134 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568447))

(assert (= (and b!1566211 ((_ is Concat!7385) (regOne!9134 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568448))

(assert (= (and b!1566211 ((_ is Star!4311) (regOne!9134 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568449))

(assert (= (and b!1566211 ((_ is Union!4311) (regOne!9134 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568450))

(declare-fun e!1007304 () Bool)

(assert (=> b!1566211 (= tp!461243 e!1007304)))

(declare-fun b!1568451 () Bool)

(assert (=> b!1568451 (= e!1007304 tp_is_empty!7143)))

(declare-fun b!1568454 () Bool)

(declare-fun tp!461777 () Bool)

(declare-fun tp!461775 () Bool)

(assert (=> b!1568454 (= e!1007304 (and tp!461777 tp!461775))))

(declare-fun b!1568453 () Bool)

(declare-fun tp!461779 () Bool)

(assert (=> b!1568453 (= e!1007304 tp!461779)))

(declare-fun b!1568452 () Bool)

(declare-fun tp!461778 () Bool)

(declare-fun tp!461776 () Bool)

(assert (=> b!1568452 (= e!1007304 (and tp!461778 tp!461776))))

(assert (= (and b!1566211 ((_ is ElementMatch!4311) (regTwo!9134 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568451))

(assert (= (and b!1566211 ((_ is Concat!7385) (regTwo!9134 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568452))

(assert (= (and b!1566211 ((_ is Star!4311) (regTwo!9134 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568453))

(assert (= (and b!1566211 ((_ is Union!4311) (regTwo!9134 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568454))

(declare-fun e!1007305 () Bool)

(assert (=> b!1566224 (= tp!461254 e!1007305)))

(declare-fun b!1568455 () Bool)

(assert (=> b!1568455 (= e!1007305 tp_is_empty!7143)))

(declare-fun b!1568458 () Bool)

(declare-fun tp!461782 () Bool)

(declare-fun tp!461780 () Bool)

(assert (=> b!1568458 (= e!1007305 (and tp!461782 tp!461780))))

(declare-fun b!1568457 () Bool)

(declare-fun tp!461784 () Bool)

(assert (=> b!1568457 (= e!1007305 tp!461784)))

(declare-fun b!1568456 () Bool)

(declare-fun tp!461783 () Bool)

(declare-fun tp!461781 () Bool)

(assert (=> b!1568456 (= e!1007305 (and tp!461783 tp!461781))))

(assert (= (and b!1566224 ((_ is ElementMatch!4311) (regOne!9135 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568455))

(assert (= (and b!1566224 ((_ is Concat!7385) (regOne!9135 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568456))

(assert (= (and b!1566224 ((_ is Star!4311) (regOne!9135 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568457))

(assert (= (and b!1566224 ((_ is Union!4311) (regOne!9135 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568458))

(declare-fun e!1007306 () Bool)

(assert (=> b!1566224 (= tp!461252 e!1007306)))

(declare-fun b!1568459 () Bool)

(assert (=> b!1568459 (= e!1007306 tp_is_empty!7143)))

(declare-fun b!1568462 () Bool)

(declare-fun tp!461787 () Bool)

(declare-fun tp!461785 () Bool)

(assert (=> b!1568462 (= e!1007306 (and tp!461787 tp!461785))))

(declare-fun b!1568461 () Bool)

(declare-fun tp!461789 () Bool)

(assert (=> b!1568461 (= e!1007306 tp!461789)))

(declare-fun b!1568460 () Bool)

(declare-fun tp!461788 () Bool)

(declare-fun tp!461786 () Bool)

(assert (=> b!1568460 (= e!1007306 (and tp!461788 tp!461786))))

(assert (= (and b!1566224 ((_ is ElementMatch!4311) (regTwo!9135 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568459))

(assert (= (and b!1566224 ((_ is Concat!7385) (regTwo!9135 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568460))

(assert (= (and b!1566224 ((_ is Star!4311) (regTwo!9135 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568461))

(assert (= (and b!1566224 ((_ is Union!4311) (regTwo!9135 (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568462))

(declare-fun e!1007307 () Bool)

(assert (=> b!1566147 (= tp!461187 e!1007307)))

(declare-fun b!1568463 () Bool)

(assert (=> b!1568463 (= e!1007307 tp_is_empty!7143)))

(declare-fun b!1568466 () Bool)

(declare-fun tp!461792 () Bool)

(declare-fun tp!461790 () Bool)

(assert (=> b!1568466 (= e!1007307 (and tp!461792 tp!461790))))

(declare-fun b!1568465 () Bool)

(declare-fun tp!461794 () Bool)

(assert (=> b!1568465 (= e!1007307 tp!461794)))

(declare-fun b!1568464 () Bool)

(declare-fun tp!461793 () Bool)

(declare-fun tp!461791 () Bool)

(assert (=> b!1568464 (= e!1007307 (and tp!461793 tp!461791))))

(assert (= (and b!1566147 ((_ is ElementMatch!4311) (regOne!9134 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568463))

(assert (= (and b!1566147 ((_ is Concat!7385) (regOne!9134 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568464))

(assert (= (and b!1566147 ((_ is Star!4311) (regOne!9134 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568465))

(assert (= (and b!1566147 ((_ is Union!4311) (regOne!9134 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568466))

(declare-fun e!1007308 () Bool)

(assert (=> b!1566147 (= tp!461185 e!1007308)))

(declare-fun b!1568467 () Bool)

(assert (=> b!1568467 (= e!1007308 tp_is_empty!7143)))

(declare-fun b!1568470 () Bool)

(declare-fun tp!461797 () Bool)

(declare-fun tp!461795 () Bool)

(assert (=> b!1568470 (= e!1007308 (and tp!461797 tp!461795))))

(declare-fun b!1568469 () Bool)

(declare-fun tp!461799 () Bool)

(assert (=> b!1568469 (= e!1007308 tp!461799)))

(declare-fun b!1568468 () Bool)

(declare-fun tp!461798 () Bool)

(declare-fun tp!461796 () Bool)

(assert (=> b!1568468 (= e!1007308 (and tp!461798 tp!461796))))

(assert (= (and b!1566147 ((_ is ElementMatch!4311) (regTwo!9134 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568467))

(assert (= (and b!1566147 ((_ is Concat!7385) (regTwo!9134 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568468))

(assert (= (and b!1566147 ((_ is Star!4311) (regTwo!9134 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568469))

(assert (= (and b!1566147 ((_ is Union!4311) (regTwo!9134 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568470))

(declare-fun e!1007309 () Bool)

(assert (=> b!1566213 (= tp!461244 e!1007309)))

(declare-fun b!1568471 () Bool)

(assert (=> b!1568471 (= e!1007309 tp_is_empty!7143)))

(declare-fun b!1568474 () Bool)

(declare-fun tp!461802 () Bool)

(declare-fun tp!461800 () Bool)

(assert (=> b!1568474 (= e!1007309 (and tp!461802 tp!461800))))

(declare-fun b!1568473 () Bool)

(declare-fun tp!461804 () Bool)

(assert (=> b!1568473 (= e!1007309 tp!461804)))

(declare-fun b!1568472 () Bool)

(declare-fun tp!461803 () Bool)

(declare-fun tp!461801 () Bool)

(assert (=> b!1568472 (= e!1007309 (and tp!461803 tp!461801))))

(assert (= (and b!1566213 ((_ is ElementMatch!4311) (regOne!9135 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568471))

(assert (= (and b!1566213 ((_ is Concat!7385) (regOne!9135 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568472))

(assert (= (and b!1566213 ((_ is Star!4311) (regOne!9135 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568473))

(assert (= (and b!1566213 ((_ is Union!4311) (regOne!9135 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568474))

(declare-fun e!1007310 () Bool)

(assert (=> b!1566213 (= tp!461242 e!1007310)))

(declare-fun b!1568475 () Bool)

(assert (=> b!1568475 (= e!1007310 tp_is_empty!7143)))

(declare-fun b!1568478 () Bool)

(declare-fun tp!461807 () Bool)

(declare-fun tp!461805 () Bool)

(assert (=> b!1568478 (= e!1007310 (and tp!461807 tp!461805))))

(declare-fun b!1568477 () Bool)

(declare-fun tp!461809 () Bool)

(assert (=> b!1568477 (= e!1007310 tp!461809)))

(declare-fun b!1568476 () Bool)

(declare-fun tp!461808 () Bool)

(declare-fun tp!461806 () Bool)

(assert (=> b!1568476 (= e!1007310 (and tp!461808 tp!461806))))

(assert (= (and b!1566213 ((_ is ElementMatch!4311) (regTwo!9135 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568475))

(assert (= (and b!1566213 ((_ is Concat!7385) (regTwo!9135 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568476))

(assert (= (and b!1566213 ((_ is Star!4311) (regTwo!9135 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568477))

(assert (= (and b!1566213 ((_ is Union!4311) (regTwo!9135 (regTwo!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568478))

(declare-fun e!1007311 () Bool)

(assert (=> b!1566204 (= tp!461236 e!1007311)))

(declare-fun b!1568479 () Bool)

(assert (=> b!1568479 (= e!1007311 tp_is_empty!7143)))

(declare-fun b!1568482 () Bool)

(declare-fun tp!461812 () Bool)

(declare-fun tp!461810 () Bool)

(assert (=> b!1568482 (= e!1007311 (and tp!461812 tp!461810))))

(declare-fun b!1568481 () Bool)

(declare-fun tp!461814 () Bool)

(assert (=> b!1568481 (= e!1007311 tp!461814)))

(declare-fun b!1568480 () Bool)

(declare-fun tp!461813 () Bool)

(declare-fun tp!461811 () Bool)

(assert (=> b!1568480 (= e!1007311 (and tp!461813 tp!461811))))

(assert (= (and b!1566204 ((_ is ElementMatch!4311) (reg!4640 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568479))

(assert (= (and b!1566204 ((_ is Concat!7385) (reg!4640 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568480))

(assert (= (and b!1566204 ((_ is Star!4311) (reg!4640 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568481))

(assert (= (and b!1566204 ((_ is Union!4311) (reg!4640 (regex!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))))) b!1568482))

(declare-fun b!1568485 () Bool)

(declare-fun e!1007314 () Bool)

(assert (=> b!1568485 (= e!1007314 true)))

(declare-fun b!1568484 () Bool)

(declare-fun e!1007313 () Bool)

(assert (=> b!1568484 (= e!1007313 e!1007314)))

(declare-fun b!1568483 () Bool)

(declare-fun e!1007312 () Bool)

(assert (=> b!1568483 (= e!1007312 e!1007313)))

(assert (=> b!1566173 e!1007312))

(assert (= b!1568484 b!1568485))

(assert (= b!1568483 b!1568484))

(assert (= (and b!1566173 ((_ is Cons!17031) (t!141746 (t!141746 (rules!12084 thiss!10002))))) b!1568483))

(assert (=> b!1568485 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (dynLambda!7590 order!10093 lambda!66213))))

(assert (=> b!1568485 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (dynLambda!7590 order!10093 lambda!66213))))

(declare-fun e!1007315 () Bool)

(assert (=> b!1566149 (= tp!461186 e!1007315)))

(declare-fun b!1568486 () Bool)

(assert (=> b!1568486 (= e!1007315 tp_is_empty!7143)))

(declare-fun b!1568489 () Bool)

(declare-fun tp!461817 () Bool)

(declare-fun tp!461815 () Bool)

(assert (=> b!1568489 (= e!1007315 (and tp!461817 tp!461815))))

(declare-fun b!1568488 () Bool)

(declare-fun tp!461819 () Bool)

(assert (=> b!1568488 (= e!1007315 tp!461819)))

(declare-fun b!1568487 () Bool)

(declare-fun tp!461818 () Bool)

(declare-fun tp!461816 () Bool)

(assert (=> b!1568487 (= e!1007315 (and tp!461818 tp!461816))))

(assert (= (and b!1566149 ((_ is ElementMatch!4311) (regOne!9135 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568486))

(assert (= (and b!1566149 ((_ is Concat!7385) (regOne!9135 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568487))

(assert (= (and b!1566149 ((_ is Star!4311) (regOne!9135 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568488))

(assert (= (and b!1566149 ((_ is Union!4311) (regOne!9135 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568489))

(declare-fun e!1007316 () Bool)

(assert (=> b!1566149 (= tp!461184 e!1007316)))

(declare-fun b!1568490 () Bool)

(assert (=> b!1568490 (= e!1007316 tp_is_empty!7143)))

(declare-fun b!1568493 () Bool)

(declare-fun tp!461822 () Bool)

(declare-fun tp!461820 () Bool)

(assert (=> b!1568493 (= e!1007316 (and tp!461822 tp!461820))))

(declare-fun b!1568492 () Bool)

(declare-fun tp!461824 () Bool)

(assert (=> b!1568492 (= e!1007316 tp!461824)))

(declare-fun b!1568491 () Bool)

(declare-fun tp!461823 () Bool)

(declare-fun tp!461821 () Bool)

(assert (=> b!1568491 (= e!1007316 (and tp!461823 tp!461821))))

(assert (= (and b!1566149 ((_ is ElementMatch!4311) (regTwo!9135 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568490))

(assert (= (and b!1566149 ((_ is Concat!7385) (regTwo!9135 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568491))

(assert (= (and b!1566149 ((_ is Star!4311) (regTwo!9135 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568492))

(assert (= (and b!1566149 ((_ is Union!4311) (regTwo!9135 (regTwo!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568493))

(declare-fun b!1568496 () Bool)

(declare-fun e!1007319 () Bool)

(assert (=> b!1568496 (= e!1007319 true)))

(declare-fun b!1568495 () Bool)

(declare-fun e!1007318 () Bool)

(assert (=> b!1568495 (= e!1007318 e!1007319)))

(declare-fun b!1568494 () Bool)

(declare-fun e!1007317 () Bool)

(assert (=> b!1568494 (= e!1007317 e!1007318)))

(assert (=> b!1565968 e!1007317))

(assert (= b!1568495 b!1568496))

(assert (= b!1568494 b!1568495))

(assert (= (and b!1565968 ((_ is Cons!17031) (t!141746 (rules!12084 thiss!10002)))) b!1568494))

(assert (=> b!1568496 (< (dynLambda!7589 order!10091 (toValue!4370 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7590 order!10093 lambda!66226))))

(assert (=> b!1568496 (< (dynLambda!7591 order!10095 (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002)))))) (dynLambda!7590 order!10093 lambda!66226))))

(declare-fun b!1568500 () Bool)

(declare-fun b_free!41967 () Bool)

(declare-fun b_next!42671 () Bool)

(assert (=> b!1568500 (= b_free!41967 (not b_next!42671))))

(declare-fun tp!461827 () Bool)

(declare-fun b_and!109537 () Bool)

(assert (=> b!1568500 (= tp!461827 b_and!109537)))

(declare-fun b_free!41969 () Bool)

(declare-fun b_next!42673 () Bool)

(assert (=> b!1568500 (= b_free!41969 (not b_next!42673))))

(declare-fun t!142326 () Bool)

(declare-fun tb!87975 () Bool)

(assert (=> (and b!1568500 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142326) tb!87975))

(declare-fun result!106434 () Bool)

(assert (= result!106434 result!106096))

(assert (=> b!1567119 t!142326))

(declare-fun t!142328 () Bool)

(declare-fun tb!87977 () Bool)

(assert (=> (and b!1568500 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142328) tb!87977))

(declare-fun result!106436 () Bool)

(assert (= result!106436 result!106340))

(assert (=> b!1568255 t!142328))

(declare-fun t!142330 () Bool)

(declare-fun tb!87979 () Bool)

(assert (=> (and b!1568500 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!142330) tb!87979))

(declare-fun result!106438 () Bool)

(assert (= result!106438 result!105936))

(assert (=> b!1566136 t!142330))

(declare-fun t!142332 () Bool)

(declare-fun tb!87981 () Bool)

(assert (=> (and b!1568500 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142332) tb!87981))

(declare-fun result!106440 () Bool)

(assert (= result!106440 result!106082))

(assert (=> b!1567091 t!142332))

(declare-fun t!142334 () Bool)

(declare-fun tb!87983 () Bool)

(assert (=> (and b!1568500 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!142334) tb!87983))

(declare-fun result!106442 () Bool)

(assert (= result!106442 result!106068))

(assert (=> d!464240 t!142334))

(declare-fun tb!87985 () Bool)

(declare-fun t!142336 () Bool)

(assert (=> (and b!1568500 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142336) tb!87985))

(declare-fun result!106444 () Bool)

(assert (= result!106444 result!106138))

(assert (=> d!465044 t!142336))

(declare-fun t!142338 () Bool)

(declare-fun tb!87987 () Bool)

(assert (=> (and b!1568500 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!142338) tb!87987))

(declare-fun result!106446 () Bool)

(assert (= result!106446 result!105930))

(assert (=> d!464024 t!142338))

(declare-fun tb!87989 () Bool)

(declare-fun t!142340 () Bool)

(assert (=> (and b!1568500 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!142340) tb!87989))

(declare-fun result!106448 () Bool)

(assert (= result!106448 result!105924))

(assert (=> d!463964 t!142340))

(declare-fun t!142342 () Bool)

(declare-fun tb!87991 () Bool)

(assert (=> (and b!1568500 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142342) tb!87991))

(declare-fun result!106450 () Bool)

(assert (= result!106450 result!106124))

(assert (=> d!465006 t!142342))

(declare-fun t!142344 () Bool)

(declare-fun tb!87993 () Bool)

(assert (=> (and b!1568500 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!142344) tb!87993))

(declare-fun result!106452 () Bool)

(assert (= result!106452 result!105898))

(assert (=> d!463782 t!142344))

(declare-fun b_and!109539 () Bool)

(declare-fun tp!461828 () Bool)

(assert (=> b!1568500 (= tp!461828 (and (=> t!142326 result!106434) (=> t!142342 result!106450) (=> t!142338 result!106446) (=> t!142334 result!106442) (=> t!142332 result!106440) (=> t!142340 result!106448) (=> t!142328 result!106436) (=> t!142344 result!106452) (=> t!142336 result!106444) (=> t!142330 result!106438) b_and!109539))))

(declare-fun tp!461829 () Bool)

(declare-fun b!1568497 () Bool)

(declare-fun e!1007320 () Bool)

(declare-fun e!1007325 () Bool)

(assert (=> b!1568497 (= e!1007320 (and (inv!22409 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))) e!1007325 tp!461829))))

(declare-fun e!1007321 () Bool)

(assert (=> b!1568500 (= e!1007321 (and tp!461827 tp!461828))))

(declare-fun e!1007324 () Bool)

(declare-fun b!1568498 () Bool)

(declare-fun tp!461825 () Bool)

(assert (=> b!1568498 (= e!1007325 (and (inv!21 (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007324 tp!461825))))

(declare-fun b!1568499 () Bool)

(declare-fun tp!461826 () Bool)

(assert (=> b!1568499 (= e!1007324 (and tp!461826 (inv!22390 (tag!3247 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) e!1007321))))

(assert (=> b!1566190 (= tp!461228 e!1007320)))

(assert (= b!1568499 b!1568500))

(assert (= b!1568498 b!1568499))

(assert (= b!1568497 b!1568498))

(assert (= (and b!1566190 ((_ is Cons!17030) (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))) b!1568497))

(declare-fun m!1842239 () Bool)

(assert (=> b!1568497 m!1842239))

(declare-fun m!1842241 () Bool)

(assert (=> b!1568498 m!1842241))

(declare-fun m!1842243 () Bool)

(assert (=> b!1568499 m!1842243))

(declare-fun m!1842245 () Bool)

(assert (=> b!1568499 m!1842245))

(declare-fun e!1007326 () Bool)

(assert (=> b!1566207 (= tp!461240 e!1007326)))

(declare-fun b!1568501 () Bool)

(assert (=> b!1568501 (= e!1007326 tp_is_empty!7143)))

(declare-fun b!1568504 () Bool)

(declare-fun tp!461832 () Bool)

(declare-fun tp!461830 () Bool)

(assert (=> b!1568504 (= e!1007326 (and tp!461832 tp!461830))))

(declare-fun b!1568503 () Bool)

(declare-fun tp!461834 () Bool)

(assert (=> b!1568503 (= e!1007326 tp!461834)))

(declare-fun b!1568502 () Bool)

(declare-fun tp!461833 () Bool)

(declare-fun tp!461831 () Bool)

(assert (=> b!1568502 (= e!1007326 (and tp!461833 tp!461831))))

(assert (= (and b!1566207 ((_ is ElementMatch!4311) (regOne!9134 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568501))

(assert (= (and b!1566207 ((_ is Concat!7385) (regOne!9134 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568502))

(assert (= (and b!1566207 ((_ is Star!4311) (regOne!9134 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568503))

(assert (= (and b!1566207 ((_ is Union!4311) (regOne!9134 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568504))

(declare-fun e!1007327 () Bool)

(assert (=> b!1566207 (= tp!461238 e!1007327)))

(declare-fun b!1568505 () Bool)

(assert (=> b!1568505 (= e!1007327 tp_is_empty!7143)))

(declare-fun b!1568508 () Bool)

(declare-fun tp!461837 () Bool)

(declare-fun tp!461835 () Bool)

(assert (=> b!1568508 (= e!1007327 (and tp!461837 tp!461835))))

(declare-fun b!1568507 () Bool)

(declare-fun tp!461839 () Bool)

(assert (=> b!1568507 (= e!1007327 tp!461839)))

(declare-fun b!1568506 () Bool)

(declare-fun tp!461838 () Bool)

(declare-fun tp!461836 () Bool)

(assert (=> b!1568506 (= e!1007327 (and tp!461838 tp!461836))))

(assert (= (and b!1566207 ((_ is ElementMatch!4311) (regTwo!9134 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568505))

(assert (= (and b!1566207 ((_ is Concat!7385) (regTwo!9134 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568506))

(assert (= (and b!1566207 ((_ is Star!4311) (regTwo!9134 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568507))

(assert (= (and b!1566207 ((_ is Union!4311) (regTwo!9134 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568508))

(declare-fun e!1007329 () Bool)

(declare-fun tp!461840 () Bool)

(declare-fun b!1568509 () Bool)

(declare-fun tp!461841 () Bool)

(assert (=> b!1568509 (= e!1007329 (and (inv!22394 (left!13804 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) tp!461841 (inv!22394 (right!14134 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) tp!461840))))

(declare-fun b!1568511 () Bool)

(declare-fun e!1007328 () Bool)

(declare-fun tp!461842 () Bool)

(assert (=> b!1568511 (= e!1007328 tp!461842)))

(declare-fun b!1568510 () Bool)

(assert (=> b!1568510 (= e!1007329 (and (inv!22401 (xs!8415 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) e!1007328))))

(assert (=> b!1566170 (= tp!461213 (and (inv!22394 (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) e!1007329))))

(assert (= (and b!1566170 ((_ is Node!5615) (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) b!1568509))

(assert (= b!1568510 b!1568511))

(assert (= (and b!1566170 ((_ is Leaf!8327) (left!13804 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) b!1568510))

(declare-fun m!1842247 () Bool)

(assert (=> b!1568509 m!1842247))

(declare-fun m!1842249 () Bool)

(assert (=> b!1568509 m!1842249))

(declare-fun m!1842251 () Bool)

(assert (=> b!1568510 m!1842251))

(assert (=> b!1566170 m!1838195))

(declare-fun tp!461843 () Bool)

(declare-fun tp!461844 () Bool)

(declare-fun e!1007331 () Bool)

(declare-fun b!1568512 () Bool)

(assert (=> b!1568512 (= e!1007331 (and (inv!22394 (left!13804 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) tp!461844 (inv!22394 (right!14134 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) tp!461843))))

(declare-fun b!1568514 () Bool)

(declare-fun e!1007330 () Bool)

(declare-fun tp!461845 () Bool)

(assert (=> b!1568514 (= e!1007330 tp!461845)))

(declare-fun b!1568513 () Bool)

(assert (=> b!1568513 (= e!1007331 (and (inv!22401 (xs!8415 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) e!1007330))))

(assert (=> b!1566170 (= tp!461212 (and (inv!22394 (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))) e!1007331))))

(assert (= (and b!1566170 ((_ is Node!5615) (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) b!1568512))

(assert (= b!1568513 b!1568514))

(assert (= (and b!1566170 ((_ is Leaf!8327) (right!14134 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))) b!1568513))

(declare-fun m!1842253 () Bool)

(assert (=> b!1568512 m!1842253))

(declare-fun m!1842255 () Bool)

(assert (=> b!1568512 m!1842255))

(declare-fun m!1842257 () Bool)

(assert (=> b!1568513 m!1842257))

(assert (=> b!1566170 m!1838197))

(declare-fun e!1007332 () Bool)

(assert (=> b!1566165 (= tp!461208 e!1007332)))

(declare-fun b!1568515 () Bool)

(assert (=> b!1568515 (= e!1007332 tp_is_empty!7143)))

(declare-fun b!1568518 () Bool)

(declare-fun tp!461848 () Bool)

(declare-fun tp!461846 () Bool)

(assert (=> b!1568518 (= e!1007332 (and tp!461848 tp!461846))))

(declare-fun b!1568517 () Bool)

(declare-fun tp!461850 () Bool)

(assert (=> b!1568517 (= e!1007332 tp!461850)))

(declare-fun b!1568516 () Bool)

(declare-fun tp!461849 () Bool)

(declare-fun tp!461847 () Bool)

(assert (=> b!1568516 (= e!1007332 (and tp!461849 tp!461847))))

(assert (= (and b!1566165 ((_ is ElementMatch!4311) (reg!4640 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568515))

(assert (= (and b!1566165 ((_ is Concat!7385) (reg!4640 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568516))

(assert (= (and b!1566165 ((_ is Star!4311) (reg!4640 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568517))

(assert (= (and b!1566165 ((_ is Union!4311) (reg!4640 (reg!4640 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568518))

(declare-fun b!1568521 () Bool)

(declare-fun b_free!41971 () Bool)

(declare-fun b_next!42675 () Bool)

(assert (=> b!1568521 (= b_free!41971 (not b_next!42675))))

(declare-fun tp!461854 () Bool)

(declare-fun b_and!109541 () Bool)

(assert (=> b!1568521 (= tp!461854 b_and!109541)))

(declare-fun b_free!41973 () Bool)

(declare-fun b_next!42677 () Bool)

(assert (=> b!1568521 (= b_free!41973 (not b_next!42677))))

(declare-fun t!142346 () Bool)

(declare-fun tb!87995 () Bool)

(assert (=> (and b!1568521 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142346) tb!87995))

(declare-fun result!106454 () Bool)

(assert (= result!106454 result!106096))

(assert (=> b!1567119 t!142346))

(declare-fun t!142348 () Bool)

(declare-fun tb!87997 () Bool)

(assert (=> (and b!1568521 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142348) tb!87997))

(declare-fun result!106456 () Bool)

(assert (= result!106456 result!106340))

(assert (=> b!1568255 t!142348))

(declare-fun t!142350 () Bool)

(declare-fun tb!87999 () Bool)

(assert (=> (and b!1568521 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!142350) tb!87999))

(declare-fun result!106458 () Bool)

(assert (= result!106458 result!105936))

(assert (=> b!1566136 t!142350))

(declare-fun t!142352 () Bool)

(declare-fun tb!88001 () Bool)

(assert (=> (and b!1568521 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142352) tb!88001))

(declare-fun result!106460 () Bool)

(assert (= result!106460 result!106082))

(assert (=> b!1567091 t!142352))

(declare-fun tb!88003 () Bool)

(declare-fun t!142354 () Bool)

(assert (=> (and b!1568521 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!142354) tb!88003))

(declare-fun result!106462 () Bool)

(assert (= result!106462 result!106068))

(assert (=> d!464240 t!142354))

(declare-fun tb!88005 () Bool)

(declare-fun t!142356 () Bool)

(assert (=> (and b!1568521 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142356) tb!88005))

(declare-fun result!106464 () Bool)

(assert (= result!106464 result!106138))

(assert (=> d!465044 t!142356))

(declare-fun t!142358 () Bool)

(declare-fun tb!88007 () Bool)

(assert (=> (and b!1568521 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!142358) tb!88007))

(declare-fun result!106466 () Bool)

(assert (= result!106466 result!105930))

(assert (=> d!464024 t!142358))

(declare-fun tb!88009 () Bool)

(declare-fun t!142360 () Bool)

(assert (=> (and b!1568521 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!142360) tb!88009))

(declare-fun result!106468 () Bool)

(assert (= result!106468 result!105924))

(assert (=> d!463964 t!142360))

(declare-fun t!142362 () Bool)

(declare-fun tb!88011 () Bool)

(assert (=> (and b!1568521 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142362) tb!88011))

(declare-fun result!106470 () Bool)

(assert (= result!106470 result!106124))

(assert (=> d!465006 t!142362))

(declare-fun t!142364 () Bool)

(declare-fun tb!88013 () Bool)

(assert (=> (and b!1568521 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!142364) tb!88013))

(declare-fun result!106472 () Bool)

(assert (= result!106472 result!105898))

(assert (=> d!463782 t!142364))

(declare-fun b_and!109543 () Bool)

(declare-fun tp!461853 () Bool)

(assert (=> b!1568521 (= tp!461853 (and (=> t!142346 result!106454) (=> t!142358 result!106466) (=> t!142352 result!106460) (=> t!142348 result!106456) (=> t!142360 result!106468) (=> t!142350 result!106458) (=> t!142364 result!106472) (=> t!142362 result!106470) (=> t!142354 result!106462) (=> t!142356 result!106464) b_and!109543))))

(declare-fun e!1007333 () Bool)

(assert (=> b!1568521 (= e!1007333 (and tp!461854 tp!461853))))

(declare-fun tp!461852 () Bool)

(declare-fun b!1568520 () Bool)

(declare-fun e!1007335 () Bool)

(assert (=> b!1568520 (= e!1007335 (and tp!461852 (inv!22390 (tag!3247 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (inv!22403 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) e!1007333))))

(declare-fun b!1568519 () Bool)

(declare-fun e!1007334 () Bool)

(declare-fun tp!461851 () Bool)

(assert (=> b!1568519 (= e!1007334 (and e!1007335 tp!461851))))

(assert (=> b!1566150 (= tp!461189 e!1007334)))

(assert (= b!1568520 b!1568521))

(assert (= b!1568519 b!1568520))

(assert (= (and b!1566150 ((_ is Cons!17031) (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) b!1568519))

(declare-fun m!1842259 () Bool)

(assert (=> b!1568520 m!1842259))

(declare-fun m!1842261 () Bool)

(assert (=> b!1568520 m!1842261))

(declare-fun e!1007337 () Bool)

(assert (=> b!1566192 (= tp!461225 e!1007337)))

(declare-fun b!1568522 () Bool)

(assert (=> b!1568522 (= e!1007337 tp_is_empty!7143)))

(declare-fun b!1568525 () Bool)

(declare-fun tp!461857 () Bool)

(declare-fun tp!461855 () Bool)

(assert (=> b!1568525 (= e!1007337 (and tp!461857 tp!461855))))

(declare-fun b!1568524 () Bool)

(declare-fun tp!461859 () Bool)

(assert (=> b!1568524 (= e!1007337 tp!461859)))

(declare-fun b!1568523 () Bool)

(declare-fun tp!461858 () Bool)

(declare-fun tp!461856 () Bool)

(assert (=> b!1568523 (= e!1007337 (and tp!461858 tp!461856))))

(assert (= (and b!1566192 ((_ is ElementMatch!4311) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568522))

(assert (= (and b!1566192 ((_ is Concat!7385) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568523))

(assert (= (and b!1566192 ((_ is Star!4311) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568524))

(assert (= (and b!1566192 ((_ is Union!4311) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568525))

(declare-fun e!1007338 () Bool)

(assert (=> b!1566143 (= tp!461182 e!1007338)))

(declare-fun b!1568526 () Bool)

(assert (=> b!1568526 (= e!1007338 tp_is_empty!7143)))

(declare-fun b!1568529 () Bool)

(declare-fun tp!461862 () Bool)

(declare-fun tp!461860 () Bool)

(assert (=> b!1568529 (= e!1007338 (and tp!461862 tp!461860))))

(declare-fun b!1568528 () Bool)

(declare-fun tp!461864 () Bool)

(assert (=> b!1568528 (= e!1007338 tp!461864)))

(declare-fun b!1568527 () Bool)

(declare-fun tp!461863 () Bool)

(declare-fun tp!461861 () Bool)

(assert (=> b!1568527 (= e!1007338 (and tp!461863 tp!461861))))

(assert (= (and b!1566143 ((_ is ElementMatch!4311) (regOne!9134 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568526))

(assert (= (and b!1566143 ((_ is Concat!7385) (regOne!9134 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568527))

(assert (= (and b!1566143 ((_ is Star!4311) (regOne!9134 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568528))

(assert (= (and b!1566143 ((_ is Union!4311) (regOne!9134 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568529))

(declare-fun e!1007339 () Bool)

(assert (=> b!1566143 (= tp!461180 e!1007339)))

(declare-fun b!1568530 () Bool)

(assert (=> b!1568530 (= e!1007339 tp_is_empty!7143)))

(declare-fun b!1568533 () Bool)

(declare-fun tp!461867 () Bool)

(declare-fun tp!461865 () Bool)

(assert (=> b!1568533 (= e!1007339 (and tp!461867 tp!461865))))

(declare-fun b!1568532 () Bool)

(declare-fun tp!461869 () Bool)

(assert (=> b!1568532 (= e!1007339 tp!461869)))

(declare-fun b!1568531 () Bool)

(declare-fun tp!461868 () Bool)

(declare-fun tp!461866 () Bool)

(assert (=> b!1568531 (= e!1007339 (and tp!461868 tp!461866))))

(assert (= (and b!1566143 ((_ is ElementMatch!4311) (regTwo!9134 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568530))

(assert (= (and b!1566143 ((_ is Concat!7385) (regTwo!9134 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568531))

(assert (= (and b!1566143 ((_ is Star!4311) (regTwo!9134 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568532))

(assert (= (and b!1566143 ((_ is Union!4311) (regTwo!9134 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568533))

(declare-fun e!1007340 () Bool)

(assert (=> b!1566209 (= tp!461239 e!1007340)))

(declare-fun b!1568534 () Bool)

(assert (=> b!1568534 (= e!1007340 tp_is_empty!7143)))

(declare-fun b!1568537 () Bool)

(declare-fun tp!461872 () Bool)

(declare-fun tp!461870 () Bool)

(assert (=> b!1568537 (= e!1007340 (and tp!461872 tp!461870))))

(declare-fun b!1568536 () Bool)

(declare-fun tp!461874 () Bool)

(assert (=> b!1568536 (= e!1007340 tp!461874)))

(declare-fun b!1568535 () Bool)

(declare-fun tp!461873 () Bool)

(declare-fun tp!461871 () Bool)

(assert (=> b!1568535 (= e!1007340 (and tp!461873 tp!461871))))

(assert (= (and b!1566209 ((_ is ElementMatch!4311) (regOne!9135 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568534))

(assert (= (and b!1566209 ((_ is Concat!7385) (regOne!9135 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568535))

(assert (= (and b!1566209 ((_ is Star!4311) (regOne!9135 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568536))

(assert (= (and b!1566209 ((_ is Union!4311) (regOne!9135 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568537))

(declare-fun e!1007341 () Bool)

(assert (=> b!1566209 (= tp!461237 e!1007341)))

(declare-fun b!1568538 () Bool)

(assert (=> b!1568538 (= e!1007341 tp_is_empty!7143)))

(declare-fun b!1568541 () Bool)

(declare-fun tp!461877 () Bool)

(declare-fun tp!461875 () Bool)

(assert (=> b!1568541 (= e!1007341 (and tp!461877 tp!461875))))

(declare-fun b!1568540 () Bool)

(declare-fun tp!461879 () Bool)

(assert (=> b!1568540 (= e!1007341 tp!461879)))

(declare-fun b!1568539 () Bool)

(declare-fun tp!461878 () Bool)

(declare-fun tp!461876 () Bool)

(assert (=> b!1568539 (= e!1007341 (and tp!461878 tp!461876))))

(assert (= (and b!1566209 ((_ is ElementMatch!4311) (regTwo!9135 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568538))

(assert (= (and b!1566209 ((_ is Concat!7385) (regTwo!9135 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568539))

(assert (= (and b!1566209 ((_ is Star!4311) (regTwo!9135 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568540))

(assert (= (and b!1566209 ((_ is Union!4311) (regTwo!9135 (regOne!9135 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568541))

(declare-fun b!1568545 () Bool)

(declare-fun b_free!41975 () Bool)

(declare-fun b_next!42679 () Bool)

(assert (=> b!1568545 (= b_free!41975 (not b_next!42679))))

(declare-fun tp!461882 () Bool)

(declare-fun b_and!109545 () Bool)

(assert (=> b!1568545 (= tp!461882 b_and!109545)))

(declare-fun b_free!41977 () Bool)

(declare-fun b_next!42681 () Bool)

(assert (=> b!1568545 (= b_free!41977 (not b_next!42681))))

(declare-fun t!142366 () Bool)

(declare-fun tb!88015 () Bool)

(assert (=> (and b!1568545 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142366) tb!88015))

(declare-fun result!106474 () Bool)

(assert (= result!106474 result!106096))

(assert (=> b!1567119 t!142366))

(declare-fun t!142368 () Bool)

(declare-fun tb!88017 () Bool)

(assert (=> (and b!1568545 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142368) tb!88017))

(declare-fun result!106476 () Bool)

(assert (= result!106476 result!106340))

(assert (=> b!1568255 t!142368))

(declare-fun t!142370 () Bool)

(declare-fun tb!88019 () Bool)

(assert (=> (and b!1568545 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!142370) tb!88019))

(declare-fun result!106478 () Bool)

(assert (= result!106478 result!105936))

(assert (=> b!1566136 t!142370))

(declare-fun t!142372 () Bool)

(declare-fun tb!88021 () Bool)

(assert (=> (and b!1568545 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142372) tb!88021))

(declare-fun result!106480 () Bool)

(assert (= result!106480 result!106082))

(assert (=> b!1567091 t!142372))

(declare-fun tb!88023 () Bool)

(declare-fun t!142374 () Bool)

(assert (=> (and b!1568545 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!142374) tb!88023))

(declare-fun result!106482 () Bool)

(assert (= result!106482 result!106068))

(assert (=> d!464240 t!142374))

(declare-fun t!142376 () Bool)

(declare-fun tb!88025 () Bool)

(assert (=> (and b!1568545 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142376) tb!88025))

(declare-fun result!106484 () Bool)

(assert (= result!106484 result!106138))

(assert (=> d!465044 t!142376))

(declare-fun t!142378 () Bool)

(declare-fun tb!88027 () Bool)

(assert (=> (and b!1568545 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!142378) tb!88027))

(declare-fun result!106486 () Bool)

(assert (= result!106486 result!105930))

(assert (=> d!464024 t!142378))

(declare-fun t!142380 () Bool)

(declare-fun tb!88029 () Bool)

(assert (=> (and b!1568545 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!142380) tb!88029))

(declare-fun result!106488 () Bool)

(assert (= result!106488 result!105924))

(assert (=> d!463964 t!142380))

(declare-fun t!142382 () Bool)

(declare-fun tb!88031 () Bool)

(assert (=> (and b!1568545 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142382) tb!88031))

(declare-fun result!106490 () Bool)

(assert (= result!106490 result!106124))

(assert (=> d!465006 t!142382))

(declare-fun tb!88033 () Bool)

(declare-fun t!142384 () Bool)

(assert (=> (and b!1568545 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!142384) tb!88033))

(declare-fun result!106492 () Bool)

(assert (= result!106492 result!105898))

(assert (=> d!463782 t!142384))

(declare-fun b_and!109547 () Bool)

(declare-fun tp!461883 () Bool)

(assert (=> b!1568545 (= tp!461883 (and (=> t!142376 result!106484) (=> t!142368 result!106476) (=> t!142382 result!106490) (=> t!142370 result!106478) (=> t!142372 result!106480) (=> t!142384 result!106492) (=> t!142378 result!106486) (=> t!142380 result!106488) (=> t!142366 result!106474) (=> t!142374 result!106482) b_and!109547))))

(declare-fun b!1568542 () Bool)

(declare-fun tp!461884 () Bool)

(declare-fun e!1007342 () Bool)

(declare-fun e!1007347 () Bool)

(assert (=> b!1568542 (= e!1007342 (and (inv!22409 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))) e!1007347 tp!461884))))

(declare-fun e!1007343 () Bool)

(assert (=> b!1568545 (= e!1007343 (and tp!461882 tp!461883))))

(declare-fun b!1568543 () Bool)

(declare-fun tp!461880 () Bool)

(declare-fun e!1007346 () Bool)

(assert (=> b!1568543 (= e!1007347 (and (inv!21 (value!94688 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007346 tp!461880))))

(declare-fun tp!461881 () Bool)

(declare-fun b!1568544 () Bool)

(assert (=> b!1568544 (= e!1007346 (and tp!461881 (inv!22390 (tag!3247 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) e!1007343))))

(assert (=> b!1566153 (= tp!461197 e!1007342)))

(assert (= b!1568544 b!1568545))

(assert (= b!1568543 b!1568544))

(assert (= b!1568542 b!1568543))

(assert (= (and b!1566153 ((_ is Cons!17030) (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))) b!1568542))

(declare-fun m!1842263 () Bool)

(assert (=> b!1568542 m!1842263))

(declare-fun m!1842265 () Bool)

(assert (=> b!1568543 m!1842265))

(declare-fun m!1842267 () Bool)

(assert (=> b!1568544 m!1842267))

(declare-fun m!1842269 () Bool)

(assert (=> b!1568544 m!1842269))

(declare-fun b!1568549 () Bool)

(declare-fun b_free!41979 () Bool)

(declare-fun b_next!42683 () Bool)

(assert (=> b!1568549 (= b_free!41979 (not b_next!42683))))

(declare-fun tp!461887 () Bool)

(declare-fun b_and!109549 () Bool)

(assert (=> b!1568549 (= tp!461887 b_and!109549)))

(declare-fun b_free!41981 () Bool)

(declare-fun b_next!42685 () Bool)

(assert (=> b!1568549 (= b_free!41981 (not b_next!42685))))

(declare-fun t!142386 () Bool)

(declare-fun tb!88035 () Bool)

(assert (=> (and b!1568549 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142386) tb!88035))

(declare-fun result!106494 () Bool)

(assert (= result!106494 result!106096))

(assert (=> b!1567119 t!142386))

(declare-fun t!142388 () Bool)

(declare-fun tb!88037 () Bool)

(assert (=> (and b!1568549 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142388) tb!88037))

(declare-fun result!106496 () Bool)

(assert (= result!106496 result!106340))

(assert (=> b!1568255 t!142388))

(declare-fun t!142390 () Bool)

(declare-fun tb!88039 () Bool)

(assert (=> (and b!1568549 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) t!142390) tb!88039))

(declare-fun result!106498 () Bool)

(assert (= result!106498 result!105936))

(assert (=> b!1566136 t!142390))

(declare-fun t!142392 () Bool)

(declare-fun tb!88041 () Bool)

(assert (=> (and b!1568549 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) t!142392) tb!88041))

(declare-fun result!106500 () Bool)

(assert (= result!106500 result!106082))

(assert (=> b!1567091 t!142392))

(declare-fun tb!88043 () Bool)

(declare-fun t!142394 () Bool)

(assert (=> (and b!1568549 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))) (t!141745 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))))) t!142394) tb!88043))

(declare-fun result!106502 () Bool)

(assert (= result!106502 result!106068))

(assert (=> d!464240 t!142394))

(declare-fun t!142396 () Bool)

(declare-fun tb!88045 () Bool)

(assert (=> (and b!1568549 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))) t!142396) tb!88045))

(declare-fun result!106504 () Bool)

(assert (= result!106504 result!106138))

(assert (=> d!465044 t!142396))

(declare-fun tb!88047 () Bool)

(declare-fun t!142398 () Bool)

(assert (=> (and b!1568549 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850))))) t!142398) tb!88047))

(declare-fun result!106506 () Bool)

(assert (= result!106506 result!105930))

(assert (=> d!464024 t!142398))

(declare-fun tb!88049 () Bool)

(declare-fun t!142400 () Bool)

(assert (=> (and b!1568549 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850))))))))) t!142400) tb!88049))

(declare-fun result!106508 () Bool)

(assert (= result!106508 result!105924))

(assert (=> d!463964 t!142400))

(declare-fun t!142402 () Bool)

(declare-fun tb!88051 () Bool)

(assert (=> (and b!1568549 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (apply!4131 (tokens!2198 thiss!10002) (+ 0 1)))))) t!142402) tb!88051))

(declare-fun result!106510 () Bool)

(assert (= result!106510 result!106124))

(assert (=> d!465006 t!142402))

(declare-fun t!142404 () Bool)

(declare-fun tb!88053 () Bool)

(assert (=> (and b!1568549 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 lt!541850)))))) t!142404) tb!88053))

(declare-fun result!106512 () Bool)

(assert (= result!106512 result!105898))

(assert (=> d!463782 t!142404))

(declare-fun b_and!109551 () Bool)

(declare-fun tp!461888 () Bool)

(assert (=> b!1568549 (= tp!461888 (and (=> t!142388 result!106496) (=> t!142394 result!106502) (=> t!142400 result!106508) (=> t!142396 result!106504) (=> t!142390 result!106498) (=> t!142398 result!106506) (=> t!142402 result!106510) (=> t!142404 result!106512) (=> t!142386 result!106494) (=> t!142392 result!106500) b_and!109551))))

(declare-fun tp!461889 () Bool)

(declare-fun e!1007348 () Bool)

(declare-fun e!1007353 () Bool)

(declare-fun b!1568546 () Bool)

(assert (=> b!1568546 (= e!1007348 (and (inv!22409 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))) e!1007353 tp!461889))))

(declare-fun e!1007349 () Bool)

(assert (=> b!1568549 (= e!1007349 (and tp!461887 tp!461888))))

(declare-fun e!1007352 () Bool)

(declare-fun tp!461885 () Bool)

(declare-fun b!1568547 () Bool)

(assert (=> b!1568547 (= e!1007353 (and (inv!21 (value!94688 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) e!1007352 tp!461885))))

(declare-fun b!1568548 () Bool)

(declare-fun tp!461886 () Bool)

(assert (=> b!1568548 (= e!1007352 (and tp!461886 (inv!22390 (tag!3247 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (inv!22403 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) e!1007349))))

(assert (=> b!1566172 (= tp!461214 e!1007348)))

(assert (= b!1568548 b!1568549))

(assert (= b!1568547 b!1568548))

(assert (= b!1568546 b!1568547))

(assert (= (and b!1566172 ((_ is Cons!17030) (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))) b!1568546))

(declare-fun m!1842271 () Bool)

(assert (=> b!1568546 m!1842271))

(declare-fun m!1842273 () Bool)

(assert (=> b!1568547 m!1842273))

(declare-fun m!1842275 () Bool)

(assert (=> b!1568548 m!1842275))

(declare-fun m!1842277 () Bool)

(assert (=> b!1568548 m!1842277))

(declare-fun e!1007354 () Bool)

(assert (=> b!1566145 (= tp!461181 e!1007354)))

(declare-fun b!1568550 () Bool)

(assert (=> b!1568550 (= e!1007354 tp_is_empty!7143)))

(declare-fun b!1568553 () Bool)

(declare-fun tp!461892 () Bool)

(declare-fun tp!461890 () Bool)

(assert (=> b!1568553 (= e!1007354 (and tp!461892 tp!461890))))

(declare-fun b!1568552 () Bool)

(declare-fun tp!461894 () Bool)

(assert (=> b!1568552 (= e!1007354 tp!461894)))

(declare-fun b!1568551 () Bool)

(declare-fun tp!461893 () Bool)

(declare-fun tp!461891 () Bool)

(assert (=> b!1568551 (= e!1007354 (and tp!461893 tp!461891))))

(assert (= (and b!1566145 ((_ is ElementMatch!4311) (regOne!9135 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568550))

(assert (= (and b!1566145 ((_ is Concat!7385) (regOne!9135 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568551))

(assert (= (and b!1566145 ((_ is Star!4311) (regOne!9135 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568552))

(assert (= (and b!1566145 ((_ is Union!4311) (regOne!9135 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568553))

(declare-fun e!1007355 () Bool)

(assert (=> b!1566145 (= tp!461179 e!1007355)))

(declare-fun b!1568554 () Bool)

(assert (=> b!1568554 (= e!1007355 tp_is_empty!7143)))

(declare-fun b!1568557 () Bool)

(declare-fun tp!461897 () Bool)

(declare-fun tp!461895 () Bool)

(assert (=> b!1568557 (= e!1007355 (and tp!461897 tp!461895))))

(declare-fun b!1568556 () Bool)

(declare-fun tp!461899 () Bool)

(assert (=> b!1568556 (= e!1007355 tp!461899)))

(declare-fun b!1568555 () Bool)

(declare-fun tp!461898 () Bool)

(declare-fun tp!461896 () Bool)

(assert (=> b!1568555 (= e!1007355 (and tp!461898 tp!461896))))

(assert (= (and b!1566145 ((_ is ElementMatch!4311) (regTwo!9135 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568554))

(assert (= (and b!1566145 ((_ is Concat!7385) (regTwo!9135 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568555))

(assert (= (and b!1566145 ((_ is Star!4311) (regTwo!9135 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568556))

(assert (= (and b!1566145 ((_ is Union!4311) (regTwo!9135 (regOne!9134 (regex!2983 (h!22432 (rules!12084 thiss!10002))))))) b!1568557))

(declare-fun e!1007356 () Bool)

(assert (=> b!1566155 (= tp!461194 e!1007356)))

(declare-fun b!1568558 () Bool)

(assert (=> b!1568558 (= e!1007356 tp_is_empty!7143)))

(declare-fun b!1568561 () Bool)

(declare-fun tp!461902 () Bool)

(declare-fun tp!461900 () Bool)

(assert (=> b!1568561 (= e!1007356 (and tp!461902 tp!461900))))

(declare-fun b!1568560 () Bool)

(declare-fun tp!461904 () Bool)

(assert (=> b!1568560 (= e!1007356 tp!461904)))

(declare-fun b!1568559 () Bool)

(declare-fun tp!461903 () Bool)

(declare-fun tp!461901 () Bool)

(assert (=> b!1568559 (= e!1007356 (and tp!461903 tp!461901))))

(assert (= (and b!1566155 ((_ is ElementMatch!4311) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568558))

(assert (= (and b!1566155 ((_ is Concat!7385) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568559))

(assert (= (and b!1566155 ((_ is Star!4311) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568560))

(assert (= (and b!1566155 ((_ is Union!4311) (regex!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) b!1568561))

(declare-fun b_lambda!49399 () Bool)

(assert (= b_lambda!49273 (or (and b!1565698 b_free!41873 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1565476 b_free!41869 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1566193 b_free!41897 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1566152 b_free!41889 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1566217 b_free!41901 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1568333 b_free!41953 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1568427 b_free!41961 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1568521 b_free!41973 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1568373 b_free!41957 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1568545 b_free!41977 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1568549 b_free!41981 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1565729 b_free!41881 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1566156 b_free!41893 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1568434 b_free!41965 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) (and b!1568500 b_free!41969 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (Cons!17030 (h!22431 (t!141745 lt!541850)) (t!141745 (t!141745 lt!541850)))))))))) b_lambda!49399)))

(declare-fun b_lambda!49401 () Bool)

(assert (= b_lambda!49279 (or (and b!1565698 b_free!41873 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1568549 b_free!41981 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1568333 b_free!41953 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1568434 b_free!41965 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1565729 b_free!41881 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1565476 b_free!41869 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1568500 b_free!41969 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1568373 b_free!41957 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1568545 b_free!41977 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1566152 b_free!41889 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1566193 b_free!41897 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1566156 b_free!41893 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1566217 b_free!41901 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1568427 b_free!41961 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) (and b!1568521 b_free!41973 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 lt!541850)))))) b_lambda!49401)))

(declare-fun b_lambda!49403 () Bool)

(assert (= b_lambda!49335 (or d!463750 b_lambda!49403)))

(declare-fun bs!389961 () Bool)

(declare-fun d!465312 () Bool)

(assert (= bs!389961 (and d!465312 d!463750)))

(assert (=> bs!389961 (= (dynLambda!7596 lambda!66212 (h!22432 (t!141746 (rules!12084 thiss!10002)))) (ruleValid!700 Lexer!2610 (h!22432 (t!141746 (rules!12084 thiss!10002)))))))

(assert (=> bs!389961 m!1839583))

(assert (=> b!1566947 d!465312))

(declare-fun b_lambda!49405 () Bool)

(assert (= b_lambda!49397 (or (and b!1566193 b_free!41897 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568500 b_free!41969 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568333 b_free!41953 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568545 b_free!41977 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568373 b_free!41957 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568434 b_free!41965 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1565698 b_free!41873 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1566217 b_free!41901) (and b!1565476 b_free!41869 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1566152 b_free!41889 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568427 b_free!41961 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568549 b_free!41981 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1565729 b_free!41881 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1566156 b_free!41893 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568521 b_free!41973 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))))) b_lambda!49405)))

(declare-fun b_lambda!49407 () Bool)

(assert (= b_lambda!49345 (or (and b!1568521 b_free!41973 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568333 b_free!41953 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568500 b_free!41969 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1566152 b_free!41889 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1566217 b_free!41901 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1566156 b_free!41893) (and b!1565476 b_free!41869 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1566193 b_free!41897 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568545 b_free!41977 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1565698 b_free!41873 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568427 b_free!41961 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568549 b_free!41981 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568434 b_free!41965 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568373 b_free!41957 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1565729 b_free!41881 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))))) b_lambda!49407)))

(declare-fun b_lambda!49409 () Bool)

(assert (= b_lambda!49333 (or d!464034 b_lambda!49409)))

(declare-fun bs!389962 () Bool)

(declare-fun d!465314 () Bool)

(assert (= bs!389962 (and d!465314 d!464034)))

(assert (=> bs!389962 (= (dynLambda!7603 lambda!66232 (h!22432 (rules!12084 thiss!10002))) (regex!2983 (h!22432 (rules!12084 thiss!10002))))))

(assert (=> b!1566894 d!465314))

(declare-fun b_lambda!49411 () Bool)

(assert (= b_lambda!49337 (or d!463978 b_lambda!49411)))

(declare-fun bs!389963 () Bool)

(declare-fun d!465316 () Bool)

(assert (= bs!389963 (and d!465316 d!463978)))

(assert (=> bs!389963 (= (dynLambda!7593 lambda!66226 (h!22431 (list!6549 (tokens!2198 thiss!10002)))) (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (list!6549 (tokens!2198 thiss!10002)))))))

(assert (=> bs!389963 m!1837743))

(assert (=> b!1566994 d!465316))

(declare-fun b_lambda!49413 () Bool)

(assert (= b_lambda!49359 (or d!463866 b_lambda!49413)))

(declare-fun bs!389964 () Bool)

(declare-fun d!465318 () Bool)

(assert (= bs!389964 (and d!465318 d!463866)))

(assert (=> bs!389964 (= (dynLambda!7593 lambda!66222 (h!22431 (t!141745 (t!141745 lt!541850)))) (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (t!141745 lt!541850)))))))

(assert (=> bs!389964 m!1837425))

(assert (=> b!1567769 d!465318))

(declare-fun b_lambda!49415 () Bool)

(assert (= b_lambda!49341 (or d!463688 b_lambda!49415)))

(declare-fun bs!389965 () Bool)

(declare-fun d!465320 () Bool)

(assert (= bs!389965 (and d!465320 d!463688)))

(assert (=> bs!389965 (= (dynLambda!7593 lambda!66200 (h!22431 (t!141745 (t!141745 lt!541850)))) (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (t!141745 lt!541850)))))))

(assert (=> bs!389965 m!1837425))

(assert (=> b!1567068 d!465320))

(declare-fun b_lambda!49417 () Bool)

(assert (= b_lambda!49343 (or (and b!1565729 b_free!41881 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1565476 b_free!41869 (= (toChars!4229 (transformation!2983 (h!22432 (rules!12084 thiss!10002)))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568500 b_free!41969 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568545 b_free!41977 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568434 b_free!41965 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568549 b_free!41981 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1566217 b_free!41901 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (t!141745 (innerList!5675 (xs!8415 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1566152 b_free!41889 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (rules!12084 thiss!10002)))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568333 b_free!41953 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (right!14134 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1565698 b_free!41873 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (rules!12084 thiss!10002))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1566193 b_free!41897) (and b!1566156 b_free!41893 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (c!253628 (tokens!2198 thiss!10002))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568521 b_free!41973 (= (toChars!4229 (transformation!2983 (h!22432 (t!141746 (t!141746 (t!141746 (rules!12084 thiss!10002))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568427 b_free!41961 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (right!14134 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) (and b!1568373 b_free!41957 (= (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (left!13804 (c!253628 (tokens!2198 thiss!10002)))))))))) (toChars!4229 (transformation!2983 (rule!4769 (h!22431 (innerList!5675 (xs!8415 (left!13804 (c!253628 (tokens!2198 thiss!10002))))))))))) b_lambda!49417)))

(declare-fun b_lambda!49419 () Bool)

(assert (= b_lambda!49353 (or d!463762 b_lambda!49419)))

(declare-fun bs!389966 () Bool)

(declare-fun d!465322 () Bool)

(assert (= bs!389966 (and d!465322 d!463762)))

(assert (=> bs!389966 (= (dynLambda!7593 lambda!66213 (h!22431 (t!141745 (t!141745 lt!541850)))) (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (t!141745 lt!541850)))))))

(assert (=> bs!389966 m!1837425))

(assert (=> b!1567573 d!465322))

(declare-fun b_lambda!49421 () Bool)

(assert (= b_lambda!49339 (or d!463734 b_lambda!49421)))

(declare-fun bs!389967 () Bool)

(declare-fun d!465324 () Bool)

(assert (= bs!389967 (and d!465324 d!463734)))

(assert (=> bs!389967 (= (dynLambda!7593 lambda!66209 (h!22431 (t!141745 (list!6549 (tokens!2198 thiss!10002))))) (rulesProduceIndividualToken!1318 Lexer!2610 (rules!12084 thiss!10002) (h!22431 (t!141745 (list!6549 (tokens!2198 thiss!10002))))))))

(assert (=> bs!389967 m!1839559))

(assert (=> b!1567012 d!465324))

(declare-fun b_lambda!49423 () Bool)

(assert (= b_lambda!49361 (or d!463828 b_lambda!49423)))

(declare-fun bs!389968 () Bool)

(declare-fun d!465326 () Bool)

(assert (= bs!389968 (and d!465326 d!463828)))

(assert (=> bs!389968 (= (dynLambda!7596 lambda!66221 (h!22432 (rules!12084 thiss!10002))) (ruleValid!700 Lexer!2610 (h!22432 (rules!12084 thiss!10002))))))

(assert (=> bs!389968 m!1837321))

(assert (=> b!1567811 d!465326))

(check-sat (not b!1567768) (not b!1566942) (not b!1568342) (not d!464386) (not b!1568462) (not b_next!42601) (not b!1566981) (not b!1567054) (not d!464494) (not b!1566845) (not b_next!42665) (not b!1568433) (not b!1568367) b_and!109545 (not b!1567613) (not bm!102489) (not d!465256) (not b!1567819) b_and!109523 (not d!464234) (not b!1568294) (not b!1568257) (not b!1568553) (not b!1567290) (not d!464246) (not b!1567083) (not b!1568392) (not d!464450) (not d!464564) (not b!1567291) (not b!1568407) (not d!465310) (not b!1566138) (not b!1567077) (not d!464326) (not bm!102485) (not b!1566881) b_and!109519 (not b!1567756) (not d!464610) (not b!1567193) (not b!1567558) (not b!1568415) (not d!465248) b_and!109245 (not b!1568379) (not b_next!42655) (not b!1567810) (not tb!87609) (not b!1567718) (not b!1568340) (not b!1568317) (not b!1566966) (not b_lambda!49325) (not bm!102502) (not b!1568274) (not b!1566848) (not b!1568321) (not b!1567564) (not b!1566464) (not d!465086) (not d!465018) (not b!1566484) (not b!1566157) (not b!1568410) (not b!1566934) (not d!464976) (not b!1567357) (not b!1566452) (not b!1567093) (not b_next!42679) (not b!1567700) (not b!1566820) (not b!1568523) (not b!1566979) (not d!464988) (not b!1568548) (not b!1568444) (not b!1568448) (not d!464214) (not b_lambda!49401) (not b_lambda!49287) (not b!1568524) (not bm!102503) (not d!464432) (not b!1567102) (not d!464828) (not d!464824) (not b!1568339) (not b!1567532) (not b!1567505) (not d!465032) (not d!464942) (not d!464536) (not d!464448) (not b!1568327) (not b!1568441) (not b!1568288) (not b!1568316) b_and!109547 (not d!464766) (not bs!389961) (not b!1567709) (not b!1567354) b_and!109237 (not b!1567614) (not b!1568309) b_and!109289 (not bs!389966) (not d!464680) (not b!1568402) (not d!464722) (not b!1566489) b_and!109539 (not b!1566986) (not d!464556) (not b!1567813) (not b!1567016) (not b!1567839) (not b!1567201) (not b!1567211) (not b!1566902) (not b!1568335) (not b!1568482) (not d!464424) (not b!1567615) (not b!1566637) (not b!1566948) (not b!1568422) (not b!1567865) (not b!1567843) (not b!1568517) (not d!465266) (not b!1567076) (not b_lambda!49363) (not b!1568518) (not b!1568269) (not b!1567101) (not b!1567071) (not b!1568560) (not b!1567533) (not d!464616) (not b!1567023) (not b_lambda!49421) (not b!1568334) (not b!1568446) (not b!1567862) (not b!1568465) (not d!464258) (not b!1568442) (not b!1568426) (not b!1568320) (not d!465066) (not b!1568290) (not b!1567575) (not d!464908) (not tb!87637) (not b!1567002) b_and!109513 (not b!1568437) (not d!465236) (not b!1567205) (not b!1567052) (not d!464412) (not b!1566651) (not d!464826) (not b!1567871) b_and!109533 (not b!1568384) (not b!1566933) (not b!1568449) (not b!1568539) (not b!1567864) (not b!1567741) (not d!465078) (not b!1567231) (not b!1568343) (not d!465006) (not d!464548) (not b!1566940) (not d!464478) (not d!464498) (not b!1566978) (not b!1568555) (not b!1567754) (not b!1568488) (not b!1567212) (not b!1568489) (not d!464384) (not b!1567120) (not b!1568532) (not b_next!42599) (not b!1567219) (not b!1568369) (not b!1566479) (not b!1568397) (not b!1568423) (not b!1568386) (not b!1567603) (not b_next!42591) (not b!1567710) (not b!1567409) (not b!1567116) (not b!1568480) (not b!1568286) (not b!1567798) (not b!1567190) (not b!1567846) (not b!1568353) (not b!1568466) (not b!1567734) (not b_next!42673) (not b!1566884) (not d!465218) (not b_next!42583) (not b!1566851) (not b!1567688) (not b!1568428) (not b!1568388) (not b!1566645) (not b!1568464) (not d!464518) (not b!1567082) (not b!1568253) (not b_next!42667) (not b!1568551) b_and!109515 (not d!465016) (not b!1568318) (not b!1566882) (not b_next!42573) (not b!1566964) (not b_lambda!49293) (not d!465296) (not b!1568460) (not b!1568438) (not b!1567096) (not b!1567692) (not b!1567422) (not b!1567191) (not b!1566953) (not b_next!42659) (not d!465044) (not b!1568507) (not b!1568483) (not b!1568325) (not b!1566502) (not b!1568255) (not b!1568398) (not b!1568383) (not b!1566486) (not b!1567801) (not d!464972) (not b!1566648) (not d!464482) (not b!1568432) (not b!1566815) (not d!464992) (not b_lambda!49291) (not b_lambda!49407) (not b!1567566) tp_is_empty!7143 (not d!464624) b_and!109229 (not b!1568285) (not b!1567763) (not b!1568541) (not b!1567355) (not b_next!42595) (not b!1568453) (not b!1567003) (not b!1567577) (not d!464420) (not d!465070) (not b_next!42657) (not b!1567009) (not b!1568513) (not b!1567098) (not b!1567818) (not b!1566993) (not b!1567185) (not b!1568487) b_and!109529 (not b!1568322) (not b!1568502) (not b!1568259) (not bm!102492) (not b!1567583) (not b!1568527) (not b!1568375) (not b!1567628) (not d!464436) (not d!464392) (not b!1566967) (not d!464390) (not bs!389967) (not b!1566995) (not b!1567179) (not b!1567195) (not b!1568313) b_and!109509 (not b!1568299) (not b!1568429) (not b!1567140) (not d!464240) (not b_lambda!49415) (not b!1568360) (not bm!102396) (not b!1567606) (not bm!102398) (not b!1567604) (not b!1568346) (not b!1567800) (not b!1567517) (not bs!389963) (not b!1567501) (not b!1567181) (not d!464944) (not b!1568372) (not b!1566930) b_and!109277 (not d!465270) (not b!1566989) (not b!1567778) (not b!1567410) (not b!1566990) b_and!109521 (not d!464770) (not b!1567403) (not b!1566657) (not d!464466) (not b!1568424) (not d!464406) (not b!1567582) (not d!464206) (not b!1566927) (not d!464374) (not b!1567870) (not b!1566922) (not d!464382) (not b!1568247) (not d!465268) (not b!1568525) b_and!109541 (not d!464522) (not b!1567115) (not bs!389968) (not b!1567520) (not b!1568355) b_and!109543 (not b!1567556) (not d!464568) (not b!1567406) (not b!1568547) (not d!464256) (not d!464430) (not d!465034) (not b!1566160) (not b!1568477) (not bm!102394) (not b!1566487) (not b!1568330) (not d!464504) (not b!1567775) (not b!1568347) (not b!1567136) (not b!1568249) (not b!1568528) (not d!464626) (not d!465012) (not d!465252) (not b!1567114) (not d!464558) (not b!1566982) (not b!1567644) (not b!1568508) (not b!1568421) (not b!1566894) (not b!1567018) (not b_next!42675) (not d!464464) (not b!1567095) (not b!1568472) (not d!464398) (not b!1568492) (not b!1567019) (not d!465084) (not d!465028) b_and!109525 (not d!464442) (not b_next!42661) (not b!1566187) (not b!1567643) (not d!464244) (not b_next!42575) (not bm!102399) (not b!1568454) (not d!464844) b_and!109507 (not d!464926) (not d!464628) (not d!464440) (not b!1567105) (not b!1568491) (not b!1567767) (not bm!102488) (not d!464530) (not b!1567356) (not b!1566936) (not b!1568359) (not d!465010) (not b!1568557) (not b!1567138) (not d!465004) (not b!1568377) (not d!464728) (not d!464708) (not b!1568300) (not d!464566) b_and!109517 (not b!1566918) (not bm!102397) (not b!1567165) (not d!464520) (not d!465304) (not b!1567087) (not d!464778) (not b!1568476) (not d!464324) (not b!1567192) (not b!1567030) b_and!109537 (not d!464444) (not b!1568331) (not d!464376) (not tb!87679) (not b!1568456) (not b!1567405) (not b!1567029) (not b!1568270) (not d!464380) (not b!1566926) (not b!1568445) (not d!464236) (not d!464408) (not b!1567866) (not b!1567073) (not b!1567091) (not b!1567525) (not b!1566919) (not b!1567171) (not b!1568411) (not b!1567820) (not d!465244) (not b!1567502) (not b!1566920) (not b!1567311) b_and!109531 (not d!464552) (not d!464476) (not b!1566844) (not d!464394) (not b!1566888) (not bm!102484) (not b!1568315) (not d!464510) (not d!464998) (not b!1567814) (not b!1568561) (not b!1568408) b_and!109511 b_and!109549 (not b!1567584) (not b!1568258) (not b_next!42671) (not b!1567877) (not b_next!42585) (not b!1567121) (not d!464592) (not b!1567118) (not bm!102487) (not bm!102462) (not d!465062) (not d!464620) (not b!1567048) (not d!464760) (not b!1567209) (not b!1567069) (not d!465302) (not b!1568387) (not d!464882) (not b!1568272) (not b!1568329) (not b!1568510) (not d!465274) (not b!1568371) (not b!1568338) (not b_next!42577) (not b!1568512) (not b_next!42663) (not b!1567842) (not b!1566977) (not b!1568364) (not b!1567500) (not b!1567187) (not b!1568319) (not b!1567711) (not b!1567757) (not tb!87881) (not b!1568430) (not b!1568498) (not b_lambda!49405) (not b!1568304) (not d!464572) (not d!465298) (not b!1568403) (not b!1568450) (not b!1566647) (not b_lambda!49411) (not d!464990) (not d!464590) (not b!1567183) (not b!1568493) (not d!464630) (not b!1568380) (not b!1567579) (not b!1568536) (not bm!102469) (not b!1566997) (not b!1567557) (not b!1567310) (not b!1568284) (not b!1566488) (not b!1567869) (not d!464726) (not d!465054) (not d!464612) (not b!1567720) (not b!1568417) (not d!464886) (not b!1567008) (not b!1568542) (not b!1568504) (not b_next!42681) (not b!1568252) (not b!1567777) (not d!464322) (not d!465048) (not b_lambda!49289) (not b!1568336) (not b!1567844) (not b!1568297) (not b!1567206) (not b!1568256) (not b!1568354) (not b!1568473) (not b_next!42677) (not b!1567812) (not b!1566503) (not b!1568533) (not d!464658) (not b!1567215) (not d!464404) (not b!1568278) (not b!1566975) (not b!1568287) (not b!1568396) (not b!1567081) (not b!1568431) (not d!464414) (not b_next!42669) (not b!1568376) (not b!1568289) (not b!1568499) (not b!1568251) (not b!1568544) (not d!464378) (not b!1567044) (not b!1568358) (not b_next!42683) (not b!1566818) (not d!465008) (not b!1568323) (not bm!102403) (not b!1566963) (not bs!389964) (not b!1567581) (not b_next!42593) (not b!1567636) (not b!1568308) (not b!1567194) (not b!1567188) (not tb!87623) (not d!464538) (not b!1568283) (not b!1567046) (not d!464884) (not b!1566847) (not b_lambda!49417) (not b!1568540) (not b!1567169) (not b!1568356) (not b!1568370) (not b!1568374) (not b!1568546) (not b!1568514) (not b_lambda!49285) (not b!1568344) (not b!1567248) (not d!464528) (not b!1567521) (not d!464456) (not b!1568395) (not d!464950) (not b!1568556) b_and!109535 (not d!464516) (not b!1568529) (not b!1568458) (not d!464388) b_and!109527 (not b_lambda!49409) (not b!1568276) (not tb!87665) b_and!109551 (not bm!102393) (not d!464434) (not b_lambda!49413) (not b!1567139) (not d!464622) (not b!1568348) (not b!1568291) (not b!1566880) (not b!1566504) (not b!1568509) (not b!1566454) (not b!1567189) (not b_lambda!49423) (not b!1566453) (not b!1567141) (not d!464252) (not d!465292) (not b!1567027) (not b!1567230) (not b!1568416) (not b!1567569) (not d!465042) (not b!1566987) (not b_next!42597) (not d!465254) (not d!464644) (not b!1567353) (not b_next!42603) (not d!465076) (not d!464418) (not b!1568349) (not b!1568368) (not b!1568406) (not b!1568543) (not b!1567117) (not b!1566819) (not b!1566961) (not d!464678) (not b!1568404) (not d!464502) (not b!1568519) (not b!1568357) (not d!464260) (not b!1566984) (not d!464608) (not b!1568332) (not b!1568236) (not b!1568468) (not b!1568511) (not b!1567580) (not d!465020) (not b!1568312) (not b!1568273) (not b!1568390) (not d!465052) (not d!464984) (not b!1568328) (not b!1567203) (not b!1568552) (not b!1567186) (not b!1567845) (not d!465300) (not b!1568420) (not b!1568474) (not d!465284) (not b!1567079) (not b!1566170) (not b!1566970) (not b!1566903) (not b!1566944) (not d!464242) (not b!1567578) (not d!464402) (not b_next!42685) (not b!1568419) (not d!465260) (not b!1568520) (not b!1566939) (not b!1567119) (not b!1567014) (not d!464682) (not b!1567770) (not b!1567017) (not b!1567286) (not d!464264) (not b!1567013) (not b!1567758) (not b!1567097) (not b!1568559) (not b!1568457) (not b!1567160) (not b!1566879) (not b!1566973) (not b!1568232) (not b!1568412) (not b!1568425) (not b!1566928) (not b_lambda!49357) (not b!1567776) (not b!1567214) (not d!464724) (not b!1568516) (not b_lambda!49403) (not b_lambda!49399) (not b!1566972) (not b!1567053) (not b!1568361) (not b!1568497) (not b!1567860) (not b!1566901) (not b_next!42605) (not d!465022) (not b!1568295) (not b!1567011) (not b!1568470) (not b!1567249) (not d!465036) (not b!1568248) (not b!1568365) (not b!1567173) (not b!1568535) (not b!1567507) (not d!464474) (not b!1568254) (not d!464870) (not b!1568506) (not b!1568305) (not b!1567408) (not d!464524) (not b!1566849) (not d!464656) (not b!1568324) (not d!464986) (not d!465262) (not d!465250) (not b!1567099) (not d!464488) (not d!464454) (not b!1567006) (not b!1567137) (not d!464876) (not b!1568469) (not b!1567078) b_and!109285 (not b!1567704) (not b!1566971) (not b!1566980) (not d!464250) (not b!1567208) (not b!1566974) (not b!1567080) (not b!1567174) (not b!1567113) (not d!464652) (not d!464838) (not b!1568378) (not b!1566042) (not b!1567719) (not b!1568277) (not b!1567005) (not b!1567031) (not d!465002) (not d!465246) (not d!465306) (not bm!102470) (not b!1567092) (not b!1567026) (not bm!102486) (not b!1567733) (not b!1567574) (not b!1566858) (not d!464654) (not bs!389965) (not b!1566925) (not b!1567042) (not b!1567567) (not b!1568414) (not d!465242) (not b!1568250) (not b!1568436) (not b!1567450) (not d!464396) (not b!1568418) (not b!1567799) (not b!1568279) (not b_next!42571) (not b!1567420) (not b!1568461) (not b!1567642) (not b!1568503) (not b!1567750) (not b!1567526) (not b!1566680) (not b!1567407) (not b!1568311) (not b!1567745) (not b!1568531) (not b!1568393) (not b_lambda!49261) (not b!1566843) (not b!1566167) (not b!1567755) (not b!1567001) (not b!1568452) (not b!1568363) (not b!1565953) (not b!1567729) (not b!1567104) (not b!1568537) (not b!1568391) (not b!1567089) (not b!1567418) (not b!1568440) b_and!109281 (not b_lambda!49419) (not b!1568481) (not d!464914) (not b!1567503) (not b!1568478) (not d!465276) (not b!1567817) (not b!1567049) (not b_lambda!49295) (not b!1567424) (not d!464438) (not b!1566887) (not b!1566943) (not b!1567184) (not b!1568494) (not d!464614) (not d!464514))
(check-sat b_and!109513 b_and!109533 b_and!109507 b_and!109531 b_and!109535 (not b_next!42685) (not b_next!42605) b_and!109285 (not b_next!42571) b_and!109281 (not b_next!42665) b_and!109545 (not b_next!42601) b_and!109523 b_and!109519 b_and!109245 (not b_next!42655) (not b_next!42679) b_and!109547 b_and!109539 b_and!109237 b_and!109289 (not b_next!42591) (not b_next!42599) (not b_next!42583) (not b_next!42673) (not b_next!42667) b_and!109515 (not b_next!42659) (not b_next!42573) b_and!109229 b_and!109529 (not b_next!42595) (not b_next!42657) b_and!109509 b_and!109277 b_and!109521 b_and!109541 b_and!109543 (not b_next!42675) (not b_next!42575) b_and!109525 (not b_next!42661) b_and!109517 b_and!109537 (not b_next!42671) (not b_next!42585) b_and!109511 b_and!109549 (not b_next!42577) (not b_next!42663) (not b_next!42681) (not b_next!42677) (not b_next!42683) (not b_next!42669) (not b_next!42593) b_and!109527 b_and!109551 (not b_next!42597) (not b_next!42603))
