; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513776 () Bool)

(assert start!513776)

(declare-fun b!4903682 () Bool)

(declare-fun b_free!131891 () Bool)

(declare-fun b_next!132681 () Bool)

(assert (=> b!4903682 (= b_free!131891 (not b_next!132681))))

(declare-fun tp!1379701 () Bool)

(declare-fun b_and!346283 () Bool)

(assert (=> b!4903682 (= tp!1379701 b_and!346283)))

(declare-fun b_free!131893 () Bool)

(declare-fun b_next!132683 () Bool)

(assert (=> b!4903682 (= b_free!131893 (not b_next!132683))))

(declare-fun tp!1379702 () Bool)

(declare-fun b_and!346285 () Bool)

(assert (=> b!4903682 (= tp!1379702 b_and!346285)))

(declare-fun b!4903697 () Bool)

(declare-fun e!3065412 () Bool)

(assert (=> b!4903697 (= e!3065412 true)))

(declare-fun b!4903696 () Bool)

(declare-fun e!3065411 () Bool)

(assert (=> b!4903696 (= e!3065411 e!3065412)))

(declare-fun b!4903689 () Bool)

(assert (=> b!4903689 e!3065411))

(assert (= b!4903696 b!4903697))

(assert (= b!4903689 b!4903696))

(declare-fun lambda!244434 () Int)

(declare-fun order!25729 () Int)

(declare-datatypes ((C!26808 0))(
  ( (C!26809 (val!22738 Int)) )
))
(declare-datatypes ((Regex!13305 0))(
  ( (ElementMatch!13305 (c!833373 C!26808)) (Concat!21845 (regOne!27122 Regex!13305) (regTwo!27122 Regex!13305)) (EmptyExpr!13305) (Star!13305 (reg!13634 Regex!13305)) (EmptyLang!13305) (Union!13305 (regOne!27123 Regex!13305) (regTwo!27123 Regex!13305)) )
))
(declare-datatypes ((String!64141 0))(
  ( (String!64142 (value!263661 String)) )
))
(declare-datatypes ((List!56658 0))(
  ( (Nil!56534) (Cons!56534 (h!62982 (_ BitVec 16)) (t!366750 List!56658)) )
))
(declare-datatypes ((TokenValue!8540 0))(
  ( (FloatLiteralValue!17080 (text!60225 List!56658)) (TokenValueExt!8539 (__x!34373 Int)) (Broken!42700 (value!263662 List!56658)) (Object!8663) (End!8540) (Def!8540) (Underscore!8540) (Match!8540) (Else!8540) (Error!8540) (Case!8540) (If!8540) (Extends!8540) (Abstract!8540) (Class!8540) (Val!8540) (DelimiterValue!17080 (del!8600 List!56658)) (KeywordValue!8546 (value!263663 List!56658)) (CommentValue!17080 (value!263664 List!56658)) (WhitespaceValue!17080 (value!263665 List!56658)) (IndentationValue!8540 (value!263666 List!56658)) (String!64143) (Int32!8540) (Broken!42701 (value!263667 List!56658)) (Boolean!8541) (Unit!146674) (OperatorValue!8543 (op!8600 List!56658)) (IdentifierValue!17080 (value!263668 List!56658)) (IdentifierValue!17081 (value!263669 List!56658)) (WhitespaceValue!17081 (value!263670 List!56658)) (True!17080) (False!17080) (Broken!42702 (value!263671 List!56658)) (Broken!42703 (value!263672 List!56658)) (True!17081) (RightBrace!8540) (RightBracket!8540) (Colon!8540) (Null!8540) (Comma!8540) (LeftBracket!8540) (False!17081) (LeftBrace!8540) (ImaginaryLiteralValue!8540 (text!60226 List!56658)) (StringLiteralValue!25620 (value!263673 List!56658)) (EOFValue!8540 (value!263674 List!56658)) (IdentValue!8540 (value!263675 List!56658)) (DelimiterValue!17081 (value!263676 List!56658)) (DedentValue!8540 (value!263677 List!56658)) (NewLineValue!8540 (value!263678 List!56658)) (IntegerValue!25620 (value!263679 (_ BitVec 32)) (text!60227 List!56658)) (IntegerValue!25621 (value!263680 Int) (text!60228 List!56658)) (Times!8540) (Or!8540) (Equal!8540) (Minus!8540) (Broken!42704 (value!263681 List!56658)) (And!8540) (Div!8540) (LessEqual!8540) (Mod!8540) (Concat!21846) (Not!8540) (Plus!8540) (SpaceValue!8540 (value!263682 List!56658)) (IntegerValue!25622 (value!263683 Int) (text!60229 List!56658)) (StringLiteralValue!25621 (text!60230 List!56658)) (FloatLiteralValue!17081 (text!60231 List!56658)) (BytesLiteralValue!8540 (value!263684 List!56658)) (CommentValue!17081 (value!263685 List!56658)) (StringLiteralValue!25622 (value!263686 List!56658)) (ErrorTokenValue!8540 (msg!8601 List!56658)) )
))
(declare-datatypes ((List!56659 0))(
  ( (Nil!56535) (Cons!56535 (h!62983 C!26808) (t!366751 List!56659)) )
))
(declare-datatypes ((IArray!29657 0))(
  ( (IArray!29658 (innerList!14886 List!56659)) )
))
(declare-datatypes ((Conc!14798 0))(
  ( (Node!14798 (left!41151 Conc!14798) (right!41481 Conc!14798) (csize!29826 Int) (cheight!15009 Int)) (Leaf!24630 (xs!18114 IArray!29657) (csize!29827 Int)) (Empty!14798) )
))
(declare-datatypes ((BalanceConc!29026 0))(
  ( (BalanceConc!29027 (c!833374 Conc!14798)) )
))
(declare-datatypes ((TokenValueInjection!16388 0))(
  ( (TokenValueInjection!16389 (toValue!11145 Int) (toChars!11004 Int)) )
))
(declare-datatypes ((Rule!16260 0))(
  ( (Rule!16261 (regex!8230 Regex!13305) (tag!9094 String!64141) (isSeparator!8230 Bool) (transformation!8230 TokenValueInjection!16388)) )
))
(declare-fun rule!164 () Rule!16260)

(declare-fun order!25731 () Int)

(declare-fun dynLambda!22798 (Int Int) Int)

(declare-fun dynLambda!22799 (Int Int) Int)

(assert (=> b!4903697 (< (dynLambda!22798 order!25729 (toValue!11145 (transformation!8230 rule!164))) (dynLambda!22799 order!25731 lambda!244434))))

(declare-fun order!25733 () Int)

(declare-fun dynLambda!22800 (Int Int) Int)

(assert (=> b!4903697 (< (dynLambda!22800 order!25733 (toChars!11004 (transformation!8230 rule!164))) (dynLambda!22799 order!25731 lambda!244434))))

(declare-fun b!4903681 () Bool)

(declare-fun e!3065404 () Bool)

(declare-fun e!3065401 () Bool)

(assert (=> b!4903681 (= e!3065404 e!3065401)))

(declare-fun res!2094685 () Bool)

(assert (=> b!4903681 (=> (not res!2094685) (not e!3065401))))

(declare-datatypes ((tuple2!60772 0))(
  ( (tuple2!60773 (_1!33689 BalanceConc!29026) (_2!33689 BalanceConc!29026)) )
))
(declare-fun lt!2011532 () tuple2!60772)

(declare-fun isEmpty!30399 (BalanceConc!29026) Bool)

(assert (=> b!4903681 (= res!2094685 (not (isEmpty!30399 (_1!33689 lt!2011532))))))

(declare-fun input!1509 () BalanceConc!29026)

(declare-fun findLongestMatchWithZipperSequence!318 (Regex!13305 BalanceConc!29026) tuple2!60772)

(assert (=> b!4903681 (= lt!2011532 (findLongestMatchWithZipperSequence!318 (regex!8230 rule!164) input!1509))))

(declare-fun res!2094684 () Bool)

(assert (=> start!513776 (=> (not res!2094684) (not e!3065404))))

(declare-datatypes ((LexerInterface!7822 0))(
  ( (LexerInterfaceExt!7819 (__x!34374 Int)) (Lexer!7820) )
))
(declare-fun thiss!15943 () LexerInterface!7822)

(get-info :version)

(assert (=> start!513776 (= res!2094684 ((_ is Lexer!7820) thiss!15943))))

(assert (=> start!513776 e!3065404))

(assert (=> start!513776 true))

(declare-fun e!3065406 () Bool)

(assert (=> start!513776 e!3065406))

(declare-fun e!3065402 () Bool)

(declare-fun inv!72978 (BalanceConc!29026) Bool)

(assert (=> start!513776 (and (inv!72978 input!1509) e!3065402)))

(declare-fun e!3065400 () Bool)

(assert (=> b!4903682 (= e!3065400 (and tp!1379701 tp!1379702))))

(declare-fun tp!1379700 () Bool)

(declare-fun b!4903683 () Bool)

(declare-fun inv!72974 (String!64141) Bool)

(declare-fun inv!72979 (TokenValueInjection!16388) Bool)

(assert (=> b!4903683 (= e!3065406 (and tp!1379700 (inv!72974 (tag!9094 rule!164)) (inv!72979 (transformation!8230 rule!164)) e!3065400))))

(declare-fun b!4903684 () Bool)

(declare-fun e!3065405 () Bool)

(declare-datatypes ((tuple2!60774 0))(
  ( (tuple2!60775 (_1!33690 List!56659) (_2!33690 List!56659)) )
))
(declare-fun lt!2011531 () tuple2!60774)

(declare-fun matchR!6572 (Regex!13305 List!56659) Bool)

(assert (=> b!4903684 (= e!3065405 (matchR!6572 (regex!8230 rule!164) (_1!33690 lt!2011531)))))

(declare-fun b!4903685 () Bool)

(declare-fun e!3065399 () Bool)

(assert (=> b!4903685 (= e!3065401 (not e!3065399))))

(declare-fun res!2094683 () Bool)

(assert (=> b!4903685 (=> res!2094683 e!3065399)))

(declare-fun semiInverseModEq!3631 (Int Int) Bool)

(assert (=> b!4903685 (= res!2094683 (not (semiInverseModEq!3631 (toChars!11004 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 rule!164)))))))

(declare-datatypes ((Unit!146675 0))(
  ( (Unit!146676) )
))
(declare-fun lt!2011529 () Unit!146675)

(declare-fun lemmaInv!1276 (TokenValueInjection!16388) Unit!146675)

(assert (=> b!4903685 (= lt!2011529 (lemmaInv!1276 (transformation!8230 rule!164)))))

(assert (=> b!4903685 e!3065405))

(declare-fun res!2094682 () Bool)

(assert (=> b!4903685 (=> res!2094682 e!3065405)))

(declare-fun isEmpty!30400 (List!56659) Bool)

(assert (=> b!4903685 (= res!2094682 (isEmpty!30400 (_1!33690 lt!2011531)))))

(declare-fun lt!2011528 () List!56659)

(declare-fun findLongestMatchInner!1793 (Regex!13305 List!56659 Int List!56659 List!56659 Int) tuple2!60774)

(declare-fun size!37262 (List!56659) Int)

(assert (=> b!4903685 (= lt!2011531 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))

(declare-fun lt!2011526 () Unit!146675)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1756 (Regex!13305 List!56659) Unit!146675)

(assert (=> b!4903685 (= lt!2011526 (longestMatchIsAcceptedByMatchOrIsEmpty!1756 (regex!8230 rule!164) lt!2011528))))

(declare-fun list!17804 (BalanceConc!29026) List!56659)

(assert (=> b!4903685 (= lt!2011528 (list!17804 input!1509))))

(declare-fun b!4903686 () Bool)

(declare-fun res!2094686 () Bool)

(assert (=> b!4903686 (=> (not res!2094686) (not e!3065404))))

(declare-fun ruleValid!3727 (LexerInterface!7822 Rule!16260) Bool)

(assert (=> b!4903686 (= res!2094686 (ruleValid!3727 thiss!15943 rule!164))))

(declare-fun b!4903687 () Bool)

(declare-fun tp!1379703 () Bool)

(declare-fun inv!72980 (Conc!14798) Bool)

(assert (=> b!4903687 (= e!3065402 (and (inv!72980 (c!833374 input!1509)) tp!1379703))))

(declare-fun b!4903688 () Bool)

(declare-fun lt!2011527 () List!56659)

(declare-datatypes ((Token!14988 0))(
  ( (Token!14989 (value!263687 TokenValue!8540) (rule!11426 Rule!16260) (size!37263 Int) (originalCharacters!8525 List!56659)) )
))
(declare-datatypes ((tuple2!60776 0))(
  ( (tuple2!60777 (_1!33691 Token!14988) (_2!33691 BalanceConc!29026)) )
))
(declare-datatypes ((Option!14097 0))(
  ( (None!14096) (Some!14096 (v!50058 tuple2!60776)) )
))
(declare-fun isDefined!11106 (Option!14097) Bool)

(declare-fun apply!13574 (TokenValueInjection!16388 BalanceConc!29026) TokenValue!8540)

(declare-fun size!37264 (BalanceConc!29026) Int)

(declare-datatypes ((tuple2!60778 0))(
  ( (tuple2!60779 (_1!33692 Token!14988) (_2!33692 List!56659)) )
))
(declare-datatypes ((Option!14098 0))(
  ( (None!14097) (Some!14097 (v!50059 tuple2!60778)) )
))
(declare-fun isDefined!11107 (Option!14098) Bool)

(declare-fun maxPrefixOneRule!3567 (LexerInterface!7822 Rule!16260 List!56659) Option!14098)

(assert (=> b!4903688 (= e!3065399 (= (isDefined!11106 (Some!14096 (tuple2!60777 (Token!14989 (apply!13574 (transformation!8230 rule!164) (_1!33689 lt!2011532)) rule!164 (size!37264 (_1!33689 lt!2011532)) lt!2011527) (_2!33689 lt!2011532)))) (isDefined!11107 (maxPrefixOneRule!3567 thiss!15943 rule!164 lt!2011528))))))

(declare-fun lt!2011530 () Unit!146675)

(declare-fun ForallOf!1167 (Int BalanceConc!29026) Unit!146675)

(declare-fun seqFromList!5972 (List!56659) BalanceConc!29026)

(assert (=> b!4903688 (= lt!2011530 (ForallOf!1167 lambda!244434 (seqFromList!5972 lt!2011527)))))

(assert (=> b!4903688 (= lt!2011527 (list!17804 (_1!33689 lt!2011532)))))

(declare-fun lt!2011533 () Unit!146675)

(assert (=> b!4903688 (= lt!2011533 (ForallOf!1167 lambda!244434 (_1!33689 lt!2011532)))))

(declare-fun res!2094681 () Bool)

(assert (=> b!4903689 (=> res!2094681 e!3065399)))

(declare-fun Forall!1727 (Int) Bool)

(assert (=> b!4903689 (= res!2094681 (not (Forall!1727 lambda!244434)))))

(assert (= (and start!513776 res!2094684) b!4903686))

(assert (= (and b!4903686 res!2094686) b!4903681))

(assert (= (and b!4903681 res!2094685) b!4903685))

(assert (= (and b!4903685 (not res!2094682)) b!4903684))

(assert (= (and b!4903685 (not res!2094683)) b!4903689))

(assert (= (and b!4903689 (not res!2094681)) b!4903688))

(assert (= b!4903683 b!4903682))

(assert (= start!513776 b!4903683))

(assert (= start!513776 b!4903687))

(declare-fun m!5912526 () Bool)

(assert (=> b!4903683 m!5912526))

(declare-fun m!5912528 () Bool)

(assert (=> b!4903683 m!5912528))

(declare-fun m!5912530 () Bool)

(assert (=> b!4903684 m!5912530))

(declare-fun m!5912532 () Bool)

(assert (=> b!4903689 m!5912532))

(declare-fun m!5912534 () Bool)

(assert (=> b!4903685 m!5912534))

(declare-fun m!5912536 () Bool)

(assert (=> b!4903685 m!5912536))

(assert (=> b!4903685 m!5912534))

(assert (=> b!4903685 m!5912536))

(declare-fun m!5912538 () Bool)

(assert (=> b!4903685 m!5912538))

(declare-fun m!5912540 () Bool)

(assert (=> b!4903685 m!5912540))

(declare-fun m!5912542 () Bool)

(assert (=> b!4903685 m!5912542))

(declare-fun m!5912544 () Bool)

(assert (=> b!4903685 m!5912544))

(declare-fun m!5912546 () Bool)

(assert (=> b!4903685 m!5912546))

(declare-fun m!5912548 () Bool)

(assert (=> b!4903685 m!5912548))

(declare-fun m!5912550 () Bool)

(assert (=> start!513776 m!5912550))

(declare-fun m!5912552 () Bool)

(assert (=> b!4903688 m!5912552))

(declare-fun m!5912554 () Bool)

(assert (=> b!4903688 m!5912554))

(declare-fun m!5912556 () Bool)

(assert (=> b!4903688 m!5912556))

(declare-fun m!5912558 () Bool)

(assert (=> b!4903688 m!5912558))

(declare-fun m!5912560 () Bool)

(assert (=> b!4903688 m!5912560))

(assert (=> b!4903688 m!5912560))

(declare-fun m!5912562 () Bool)

(assert (=> b!4903688 m!5912562))

(declare-fun m!5912564 () Bool)

(assert (=> b!4903688 m!5912564))

(declare-fun m!5912566 () Bool)

(assert (=> b!4903688 m!5912566))

(declare-fun m!5912568 () Bool)

(assert (=> b!4903688 m!5912568))

(assert (=> b!4903688 m!5912552))

(declare-fun m!5912570 () Bool)

(assert (=> b!4903687 m!5912570))

(declare-fun m!5912572 () Bool)

(assert (=> b!4903686 m!5912572))

(declare-fun m!5912574 () Bool)

(assert (=> b!4903681 m!5912574))

(declare-fun m!5912576 () Bool)

(assert (=> b!4903681 m!5912576))

(check-sat (not b_next!132683) (not b!4903684) (not b!4903685) (not b!4903689) b_and!346285 (not b!4903681) (not b!4903687) b_and!346283 (not b!4903686) (not b_next!132681) (not start!513776) (not b!4903688) (not b!4903683))
(check-sat b_and!346285 b_and!346283 (not b_next!132683) (not b_next!132681))
(get-model)

(declare-fun d!1575724 () Bool)

(declare-fun list!17806 (Conc!14798) List!56659)

(assert (=> d!1575724 (= (list!17804 input!1509) (list!17806 (c!833374 input!1509)))))

(declare-fun bs!1176886 () Bool)

(assert (= bs!1176886 d!1575724))

(declare-fun m!5912586 () Bool)

(assert (=> bs!1176886 m!5912586))

(assert (=> b!4903685 d!1575724))

(declare-fun d!1575728 () Bool)

(declare-fun e!3065421 () Bool)

(assert (=> d!1575728 e!3065421))

(declare-fun res!2094696 () Bool)

(assert (=> d!1575728 (=> res!2094696 e!3065421)))

(assert (=> d!1575728 (= res!2094696 (isEmpty!30400 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))))

(declare-fun lt!2011542 () Unit!146675)

(declare-fun choose!35809 (Regex!13305 List!56659) Unit!146675)

(assert (=> d!1575728 (= lt!2011542 (choose!35809 (regex!8230 rule!164) lt!2011528))))

(declare-fun validRegex!5898 (Regex!13305) Bool)

(assert (=> d!1575728 (validRegex!5898 (regex!8230 rule!164))))

(assert (=> d!1575728 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1756 (regex!8230 rule!164) lt!2011528) lt!2011542)))

(declare-fun b!4903709 () Bool)

(assert (=> b!4903709 (= e!3065421 (matchR!6572 (regex!8230 rule!164) (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))))

(assert (= (and d!1575728 (not res!2094696)) b!4903709))

(assert (=> d!1575728 m!5912534))

(declare-fun m!5912598 () Bool)

(assert (=> d!1575728 m!5912598))

(declare-fun m!5912600 () Bool)

(assert (=> d!1575728 m!5912600))

(declare-fun m!5912602 () Bool)

(assert (=> d!1575728 m!5912602))

(assert (=> d!1575728 m!5912534))

(assert (=> d!1575728 m!5912536))

(assert (=> d!1575728 m!5912538))

(assert (=> d!1575728 m!5912536))

(assert (=> b!4903709 m!5912534))

(assert (=> b!4903709 m!5912536))

(assert (=> b!4903709 m!5912534))

(assert (=> b!4903709 m!5912536))

(assert (=> b!4903709 m!5912538))

(declare-fun m!5912604 () Bool)

(assert (=> b!4903709 m!5912604))

(assert (=> b!4903685 d!1575728))

(declare-fun d!1575732 () Bool)

(declare-fun e!3065428 () Bool)

(assert (=> d!1575732 e!3065428))

(declare-fun res!2094701 () Bool)

(assert (=> d!1575732 (=> (not res!2094701) (not e!3065428))))

(assert (=> d!1575732 (= res!2094701 (semiInverseModEq!3631 (toChars!11004 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 rule!164))))))

(declare-fun Unit!146681 () Unit!146675)

(assert (=> d!1575732 (= (lemmaInv!1276 (transformation!8230 rule!164)) Unit!146681)))

(declare-fun b!4903718 () Bool)

(declare-fun equivClasses!3484 (Int Int) Bool)

(assert (=> b!4903718 (= e!3065428 (equivClasses!3484 (toChars!11004 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 rule!164))))))

(assert (= (and d!1575732 res!2094701) b!4903718))

(assert (=> d!1575732 m!5912542))

(declare-fun m!5912606 () Bool)

(assert (=> b!4903718 m!5912606))

(assert (=> b!4903685 d!1575732))

(declare-fun d!1575734 () Bool)

(declare-fun lt!2011555 () Int)

(assert (=> d!1575734 (>= lt!2011555 0)))

(declare-fun e!3065435 () Int)

(assert (=> d!1575734 (= lt!2011555 e!3065435)))

(declare-fun c!833382 () Bool)

(assert (=> d!1575734 (= c!833382 ((_ is Nil!56535) Nil!56535))))

(assert (=> d!1575734 (= (size!37262 Nil!56535) lt!2011555)))

(declare-fun b!4903735 () Bool)

(assert (=> b!4903735 (= e!3065435 0)))

(declare-fun b!4903736 () Bool)

(assert (=> b!4903736 (= e!3065435 (+ 1 (size!37262 (t!366751 Nil!56535))))))

(assert (= (and d!1575734 c!833382) b!4903735))

(assert (= (and d!1575734 (not c!833382)) b!4903736))

(declare-fun m!5912608 () Bool)

(assert (=> b!4903736 m!5912608))

(assert (=> b!4903685 d!1575734))

(declare-fun bs!1176890 () Bool)

(declare-fun d!1575736 () Bool)

(assert (= bs!1176890 (and d!1575736 b!4903689)))

(declare-fun lambda!244437 () Int)

(assert (=> bs!1176890 (= lambda!244437 lambda!244434)))

(assert (=> d!1575736 true))

(assert (=> d!1575736 (< (dynLambda!22800 order!25733 (toChars!11004 (transformation!8230 rule!164))) (dynLambda!22799 order!25731 lambda!244437))))

(assert (=> d!1575736 true))

(assert (=> d!1575736 (< (dynLambda!22798 order!25729 (toValue!11145 (transformation!8230 rule!164))) (dynLambda!22799 order!25731 lambda!244437))))

(assert (=> d!1575736 (= (semiInverseModEq!3631 (toChars!11004 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 rule!164))) (Forall!1727 lambda!244437))))

(declare-fun bs!1176891 () Bool)

(assert (= bs!1176891 d!1575736))

(declare-fun m!5912652 () Bool)

(assert (=> bs!1176891 m!5912652))

(assert (=> b!4903685 d!1575736))

(declare-fun b!4903922 () Bool)

(declare-fun e!3065538 () tuple2!60774)

(declare-fun e!3065540 () tuple2!60774)

(assert (=> b!4903922 (= e!3065538 e!3065540)))

(declare-fun lt!2011720 () tuple2!60774)

(declare-fun call!340228 () tuple2!60774)

(assert (=> b!4903922 (= lt!2011720 call!340228)))

(declare-fun c!833429 () Bool)

(assert (=> b!4903922 (= c!833429 (isEmpty!30400 (_1!33690 lt!2011720)))))

(declare-fun b!4903923 () Bool)

(assert (=> b!4903923 (= e!3065538 call!340228)))

(declare-fun b!4903924 () Bool)

(assert (=> b!4903924 (= e!3065540 lt!2011720)))

(declare-fun b!4903925 () Bool)

(declare-fun e!3065536 () tuple2!60774)

(assert (=> b!4903925 (= e!3065536 (tuple2!60775 Nil!56535 lt!2011528))))

(declare-fun b!4903926 () Bool)

(declare-fun e!3065535 () tuple2!60774)

(assert (=> b!4903926 (= e!3065535 (tuple2!60775 Nil!56535 Nil!56535))))

(declare-fun b!4903927 () Bool)

(declare-fun c!833427 () Bool)

(declare-fun call!340230 () Bool)

(assert (=> b!4903927 (= c!833427 call!340230)))

(declare-fun lt!2011740 () Unit!146675)

(declare-fun lt!2011737 () Unit!146675)

(assert (=> b!4903927 (= lt!2011740 lt!2011737)))

(assert (=> b!4903927 (= lt!2011528 Nil!56535)))

(declare-fun call!340232 () Unit!146675)

(assert (=> b!4903927 (= lt!2011737 call!340232)))

(declare-fun lt!2011739 () Unit!146675)

(declare-fun lt!2011738 () Unit!146675)

(assert (=> b!4903927 (= lt!2011739 lt!2011738)))

(declare-fun call!340229 () Bool)

(assert (=> b!4903927 call!340229))

(declare-fun call!340235 () Unit!146675)

(assert (=> b!4903927 (= lt!2011738 call!340235)))

(declare-fun e!3065539 () tuple2!60774)

(assert (=> b!4903927 (= e!3065539 e!3065535)))

(declare-fun b!4903928 () Bool)

(declare-fun e!3065537 () Unit!146675)

(declare-fun Unit!146682 () Unit!146675)

(assert (=> b!4903928 (= e!3065537 Unit!146682)))

(declare-fun lt!2011718 () Unit!146675)

(assert (=> b!4903928 (= lt!2011718 call!340235)))

(assert (=> b!4903928 call!340229))

(declare-fun lt!2011722 () Unit!146675)

(assert (=> b!4903928 (= lt!2011722 lt!2011718)))

(declare-fun lt!2011723 () Unit!146675)

(assert (=> b!4903928 (= lt!2011723 call!340232)))

(assert (=> b!4903928 (= lt!2011528 Nil!56535)))

(declare-fun lt!2011725 () Unit!146675)

(assert (=> b!4903928 (= lt!2011725 lt!2011723)))

(assert (=> b!4903928 false))

(declare-fun b!4903929 () Bool)

(assert (=> b!4903929 (= e!3065536 e!3065539)))

(declare-fun c!833428 () Bool)

(assert (=> b!4903929 (= c!833428 (= (size!37262 Nil!56535) (size!37262 lt!2011528)))))

(declare-fun call!340231 () List!56659)

(declare-fun call!340233 () Regex!13305)

(declare-fun lt!2011728 () List!56659)

(declare-fun bm!340223 () Bool)

(assert (=> bm!340223 (= call!340228 (findLongestMatchInner!1793 call!340233 lt!2011728 (+ (size!37262 Nil!56535) 1) call!340231 lt!2011528 (size!37262 lt!2011528)))))

(declare-fun d!1575744 () Bool)

(declare-fun e!3065534 () Bool)

(assert (=> d!1575744 e!3065534))

(declare-fun res!2094770 () Bool)

(assert (=> d!1575744 (=> (not res!2094770) (not e!3065534))))

(declare-fun lt!2011719 () tuple2!60774)

(declare-fun ++!12259 (List!56659 List!56659) List!56659)

(assert (=> d!1575744 (= res!2094770 (= (++!12259 (_1!33690 lt!2011719) (_2!33690 lt!2011719)) lt!2011528))))

(assert (=> d!1575744 (= lt!2011719 e!3065536)))

(declare-fun c!833430 () Bool)

(declare-fun lostCause!1099 (Regex!13305) Bool)

(assert (=> d!1575744 (= c!833430 (lostCause!1099 (regex!8230 rule!164)))))

(declare-fun lt!2011729 () Unit!146675)

(declare-fun Unit!146683 () Unit!146675)

(assert (=> d!1575744 (= lt!2011729 Unit!146683)))

(declare-fun getSuffix!2900 (List!56659 List!56659) List!56659)

(assert (=> d!1575744 (= (getSuffix!2900 lt!2011528 Nil!56535) lt!2011528)))

(declare-fun lt!2011741 () Unit!146675)

(declare-fun lt!2011731 () Unit!146675)

(assert (=> d!1575744 (= lt!2011741 lt!2011731)))

(declare-fun lt!2011721 () List!56659)

(assert (=> d!1575744 (= lt!2011528 lt!2011721)))

(declare-fun lemmaSamePrefixThenSameSuffix!2316 (List!56659 List!56659 List!56659 List!56659 List!56659) Unit!146675)

(assert (=> d!1575744 (= lt!2011731 (lemmaSamePrefixThenSameSuffix!2316 Nil!56535 lt!2011528 Nil!56535 lt!2011721 lt!2011528))))

(assert (=> d!1575744 (= lt!2011721 (getSuffix!2900 lt!2011528 Nil!56535))))

(declare-fun lt!2011743 () Unit!146675)

(declare-fun lt!2011730 () Unit!146675)

(assert (=> d!1575744 (= lt!2011743 lt!2011730)))

(declare-fun isPrefix!4912 (List!56659 List!56659) Bool)

(assert (=> d!1575744 (isPrefix!4912 Nil!56535 (++!12259 Nil!56535 lt!2011528))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3136 (List!56659 List!56659) Unit!146675)

(assert (=> d!1575744 (= lt!2011730 (lemmaConcatTwoListThenFirstIsPrefix!3136 Nil!56535 lt!2011528))))

(assert (=> d!1575744 (validRegex!5898 (regex!8230 rule!164))))

(assert (=> d!1575744 (= (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)) lt!2011719)))

(declare-fun b!4903930 () Bool)

(assert (=> b!4903930 (= e!3065535 (tuple2!60775 Nil!56535 lt!2011528))))

(declare-fun bm!340224 () Bool)

(declare-fun call!340234 () C!26808)

(declare-fun head!10472 (List!56659) C!26808)

(assert (=> bm!340224 (= call!340234 (head!10472 lt!2011528))))

(declare-fun bm!340225 () Bool)

(declare-fun derivativeStep!3891 (Regex!13305 C!26808) Regex!13305)

(assert (=> bm!340225 (= call!340233 (derivativeStep!3891 (regex!8230 rule!164) call!340234))))

(declare-fun b!4903931 () Bool)

(declare-fun Unit!146684 () Unit!146675)

(assert (=> b!4903931 (= e!3065537 Unit!146684)))

(declare-fun bm!340226 () Bool)

(declare-fun tail!9619 (List!56659) List!56659)

(assert (=> bm!340226 (= call!340231 (tail!9619 lt!2011528))))

(declare-fun bm!340227 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1071 (List!56659 List!56659 List!56659) Unit!146675)

(assert (=> bm!340227 (= call!340232 (lemmaIsPrefixSameLengthThenSameList!1071 lt!2011528 Nil!56535 lt!2011528))))

(declare-fun b!4903932 () Bool)

(declare-fun c!833432 () Bool)

(assert (=> b!4903932 (= c!833432 call!340230)))

(declare-fun lt!2011736 () Unit!146675)

(declare-fun lt!2011744 () Unit!146675)

(assert (=> b!4903932 (= lt!2011736 lt!2011744)))

(declare-fun lt!2011742 () C!26808)

(declare-fun lt!2011733 () List!56659)

(assert (=> b!4903932 (= (++!12259 (++!12259 Nil!56535 (Cons!56535 lt!2011742 Nil!56535)) lt!2011733) lt!2011528)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1343 (List!56659 C!26808 List!56659 List!56659) Unit!146675)

(assert (=> b!4903932 (= lt!2011744 (lemmaMoveElementToOtherListKeepsConcatEq!1343 Nil!56535 lt!2011742 lt!2011733 lt!2011528))))

(assert (=> b!4903932 (= lt!2011733 (tail!9619 lt!2011528))))

(assert (=> b!4903932 (= lt!2011742 (head!10472 lt!2011528))))

(declare-fun lt!2011727 () Unit!146675)

(declare-fun lt!2011726 () Unit!146675)

(assert (=> b!4903932 (= lt!2011727 lt!2011726)))

(assert (=> b!4903932 (isPrefix!4912 (++!12259 Nil!56535 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535)) lt!2011528)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!725 (List!56659 List!56659) Unit!146675)

(assert (=> b!4903932 (= lt!2011726 (lemmaAddHeadSuffixToPrefixStillPrefix!725 Nil!56535 lt!2011528))))

(declare-fun lt!2011734 () Unit!146675)

(declare-fun lt!2011745 () Unit!146675)

(assert (=> b!4903932 (= lt!2011734 lt!2011745)))

(assert (=> b!4903932 (= lt!2011745 (lemmaAddHeadSuffixToPrefixStillPrefix!725 Nil!56535 lt!2011528))))

(assert (=> b!4903932 (= lt!2011728 (++!12259 Nil!56535 (Cons!56535 (head!10472 lt!2011528) Nil!56535)))))

(declare-fun lt!2011732 () Unit!146675)

(assert (=> b!4903932 (= lt!2011732 e!3065537)))

(declare-fun c!833431 () Bool)

(assert (=> b!4903932 (= c!833431 (= (size!37262 Nil!56535) (size!37262 lt!2011528)))))

(declare-fun lt!2011735 () Unit!146675)

(declare-fun lt!2011724 () Unit!146675)

(assert (=> b!4903932 (= lt!2011735 lt!2011724)))

(assert (=> b!4903932 (<= (size!37262 Nil!56535) (size!37262 lt!2011528))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!637 (List!56659 List!56659) Unit!146675)

(assert (=> b!4903932 (= lt!2011724 (lemmaIsPrefixThenSmallerEqSize!637 Nil!56535 lt!2011528))))

(assert (=> b!4903932 (= e!3065539 e!3065538)))

(declare-fun bm!340228 () Bool)

(declare-fun nullable!4571 (Regex!13305) Bool)

(assert (=> bm!340228 (= call!340230 (nullable!4571 (regex!8230 rule!164)))))

(declare-fun b!4903933 () Bool)

(declare-fun e!3065541 () Bool)

(assert (=> b!4903933 (= e!3065534 e!3065541)))

(declare-fun res!2094771 () Bool)

(assert (=> b!4903933 (=> res!2094771 e!3065541)))

(assert (=> b!4903933 (= res!2094771 (isEmpty!30400 (_1!33690 lt!2011719)))))

(declare-fun b!4903934 () Bool)

(assert (=> b!4903934 (= e!3065541 (>= (size!37262 (_1!33690 lt!2011719)) (size!37262 Nil!56535)))))

(declare-fun bm!340229 () Bool)

(assert (=> bm!340229 (= call!340229 (isPrefix!4912 lt!2011528 lt!2011528))))

(declare-fun bm!340230 () Bool)

(declare-fun lemmaIsPrefixRefl!3309 (List!56659 List!56659) Unit!146675)

(assert (=> bm!340230 (= call!340235 (lemmaIsPrefixRefl!3309 lt!2011528 lt!2011528))))

(declare-fun b!4903935 () Bool)

(assert (=> b!4903935 (= e!3065540 (tuple2!60775 Nil!56535 lt!2011528))))

(assert (= (and d!1575744 c!833430) b!4903925))

(assert (= (and d!1575744 (not c!833430)) b!4903929))

(assert (= (and b!4903929 c!833428) b!4903927))

(assert (= (and b!4903929 (not c!833428)) b!4903932))

(assert (= (and b!4903927 c!833427) b!4903926))

(assert (= (and b!4903927 (not c!833427)) b!4903930))

(assert (= (and b!4903932 c!833431) b!4903928))

(assert (= (and b!4903932 (not c!833431)) b!4903931))

(assert (= (and b!4903932 c!833432) b!4903922))

(assert (= (and b!4903932 (not c!833432)) b!4903923))

(assert (= (and b!4903922 c!833429) b!4903935))

(assert (= (and b!4903922 (not c!833429)) b!4903924))

(assert (= (or b!4903922 b!4903923) bm!340224))

(assert (= (or b!4903922 b!4903923) bm!340226))

(assert (= (or b!4903922 b!4903923) bm!340225))

(assert (= (or b!4903922 b!4903923) bm!340223))

(assert (= (or b!4903927 b!4903928) bm!340229))

(assert (= (or b!4903927 b!4903928) bm!340230))

(assert (= (or b!4903927 b!4903928) bm!340227))

(assert (= (or b!4903927 b!4903932) bm!340228))

(assert (= (and d!1575744 res!2094770) b!4903933))

(assert (= (and b!4903933 (not res!2094771)) b!4903934))

(declare-fun m!5912780 () Bool)

(assert (=> b!4903934 m!5912780))

(assert (=> b!4903934 m!5912534))

(declare-fun m!5912782 () Bool)

(assert (=> d!1575744 m!5912782))

(declare-fun m!5912784 () Bool)

(assert (=> d!1575744 m!5912784))

(declare-fun m!5912786 () Bool)

(assert (=> d!1575744 m!5912786))

(declare-fun m!5912788 () Bool)

(assert (=> d!1575744 m!5912788))

(assert (=> d!1575744 m!5912782))

(declare-fun m!5912790 () Bool)

(assert (=> d!1575744 m!5912790))

(declare-fun m!5912792 () Bool)

(assert (=> d!1575744 m!5912792))

(declare-fun m!5912794 () Bool)

(assert (=> d!1575744 m!5912794))

(assert (=> d!1575744 m!5912598))

(declare-fun m!5912796 () Bool)

(assert (=> b!4903922 m!5912796))

(assert (=> bm!340223 m!5912536))

(declare-fun m!5912798 () Bool)

(assert (=> bm!340223 m!5912798))

(declare-fun m!5912800 () Bool)

(assert (=> bm!340226 m!5912800))

(declare-fun m!5912802 () Bool)

(assert (=> bm!340225 m!5912802))

(declare-fun m!5912804 () Bool)

(assert (=> bm!340230 m!5912804))

(declare-fun m!5912806 () Bool)

(assert (=> bm!340228 m!5912806))

(declare-fun m!5912808 () Bool)

(assert (=> b!4903933 m!5912808))

(declare-fun m!5912810 () Bool)

(assert (=> bm!340229 m!5912810))

(declare-fun m!5912812 () Bool)

(assert (=> bm!340224 m!5912812))

(declare-fun m!5912814 () Bool)

(assert (=> bm!340227 m!5912814))

(declare-fun m!5912816 () Bool)

(assert (=> b!4903932 m!5912816))

(declare-fun m!5912818 () Bool)

(assert (=> b!4903932 m!5912818))

(assert (=> b!4903932 m!5912534))

(assert (=> b!4903932 m!5912812))

(assert (=> b!4903932 m!5912536))

(declare-fun m!5912820 () Bool)

(assert (=> b!4903932 m!5912820))

(declare-fun m!5912822 () Bool)

(assert (=> b!4903932 m!5912822))

(declare-fun m!5912824 () Bool)

(assert (=> b!4903932 m!5912824))

(assert (=> b!4903932 m!5912794))

(declare-fun m!5912826 () Bool)

(assert (=> b!4903932 m!5912826))

(declare-fun m!5912828 () Bool)

(assert (=> b!4903932 m!5912828))

(declare-fun m!5912830 () Bool)

(assert (=> b!4903932 m!5912830))

(assert (=> b!4903932 m!5912820))

(declare-fun m!5912832 () Bool)

(assert (=> b!4903932 m!5912832))

(assert (=> b!4903932 m!5912800))

(assert (=> b!4903932 m!5912828))

(assert (=> b!4903932 m!5912794))

(assert (=> b!4903685 d!1575744))

(declare-fun d!1575788 () Bool)

(assert (=> d!1575788 (= (isEmpty!30400 (_1!33690 lt!2011531)) ((_ is Nil!56535) (_1!33690 lt!2011531)))))

(assert (=> b!4903685 d!1575788))

(declare-fun d!1575790 () Bool)

(declare-fun lt!2011746 () Int)

(assert (=> d!1575790 (>= lt!2011746 0)))

(declare-fun e!3065542 () Int)

(assert (=> d!1575790 (= lt!2011746 e!3065542)))

(declare-fun c!833433 () Bool)

(assert (=> d!1575790 (= c!833433 ((_ is Nil!56535) lt!2011528))))

(assert (=> d!1575790 (= (size!37262 lt!2011528) lt!2011746)))

(declare-fun b!4903936 () Bool)

(assert (=> b!4903936 (= e!3065542 0)))

(declare-fun b!4903937 () Bool)

(assert (=> b!4903937 (= e!3065542 (+ 1 (size!37262 (t!366751 lt!2011528))))))

(assert (= (and d!1575790 c!833433) b!4903936))

(assert (= (and d!1575790 (not c!833433)) b!4903937))

(declare-fun m!5912834 () Bool)

(assert (=> b!4903937 m!5912834))

(assert (=> b!4903685 d!1575790))

(declare-fun d!1575792 () Bool)

(declare-fun res!2094776 () Bool)

(declare-fun e!3065545 () Bool)

(assert (=> d!1575792 (=> (not res!2094776) (not e!3065545))))

(assert (=> d!1575792 (= res!2094776 (validRegex!5898 (regex!8230 rule!164)))))

(assert (=> d!1575792 (= (ruleValid!3727 thiss!15943 rule!164) e!3065545)))

(declare-fun b!4903942 () Bool)

(declare-fun res!2094777 () Bool)

(assert (=> b!4903942 (=> (not res!2094777) (not e!3065545))))

(assert (=> b!4903942 (= res!2094777 (not (nullable!4571 (regex!8230 rule!164))))))

(declare-fun b!4903943 () Bool)

(assert (=> b!4903943 (= e!3065545 (not (= (tag!9094 rule!164) (String!64142 ""))))))

(assert (= (and d!1575792 res!2094776) b!4903942))

(assert (= (and b!4903942 res!2094777) b!4903943))

(assert (=> d!1575792 m!5912598))

(assert (=> b!4903942 m!5912806))

(assert (=> b!4903686 d!1575792))

(declare-fun b!4903972 () Bool)

(declare-fun e!3065563 () Bool)

(assert (=> b!4903972 (= e!3065563 (not (= (head!10472 (_1!33690 lt!2011531)) (c!833373 (regex!8230 rule!164)))))))

(declare-fun b!4903973 () Bool)

(declare-fun e!3065566 () Bool)

(assert (=> b!4903973 (= e!3065566 (matchR!6572 (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531))) (tail!9619 (_1!33690 lt!2011531))))))

(declare-fun b!4903974 () Bool)

(declare-fun e!3065560 () Bool)

(declare-fun e!3065562 () Bool)

(assert (=> b!4903974 (= e!3065560 e!3065562)))

(declare-fun c!833442 () Bool)

(assert (=> b!4903974 (= c!833442 ((_ is EmptyLang!13305) (regex!8230 rule!164)))))

(declare-fun b!4903975 () Bool)

(declare-fun res!2094800 () Bool)

(declare-fun e!3065561 () Bool)

(assert (=> b!4903975 (=> res!2094800 e!3065561)))

(declare-fun e!3065565 () Bool)

(assert (=> b!4903975 (= res!2094800 e!3065565)))

(declare-fun res!2094799 () Bool)

(assert (=> b!4903975 (=> (not res!2094799) (not e!3065565))))

(declare-fun lt!2011749 () Bool)

(assert (=> b!4903975 (= res!2094799 lt!2011749)))

(declare-fun b!4903976 () Bool)

(declare-fun e!3065564 () Bool)

(assert (=> b!4903976 (= e!3065564 e!3065563)))

(declare-fun res!2094801 () Bool)

(assert (=> b!4903976 (=> res!2094801 e!3065563)))

(declare-fun call!340238 () Bool)

(assert (=> b!4903976 (= res!2094801 call!340238)))

(declare-fun d!1575794 () Bool)

(assert (=> d!1575794 e!3065560))

(declare-fun c!833441 () Bool)

(assert (=> d!1575794 (= c!833441 ((_ is EmptyExpr!13305) (regex!8230 rule!164)))))

(assert (=> d!1575794 (= lt!2011749 e!3065566)))

(declare-fun c!833440 () Bool)

(assert (=> d!1575794 (= c!833440 (isEmpty!30400 (_1!33690 lt!2011531)))))

(assert (=> d!1575794 (validRegex!5898 (regex!8230 rule!164))))

(assert (=> d!1575794 (= (matchR!6572 (regex!8230 rule!164) (_1!33690 lt!2011531)) lt!2011749)))

(declare-fun b!4903977 () Bool)

(declare-fun res!2094798 () Bool)

(assert (=> b!4903977 (=> res!2094798 e!3065561)))

(assert (=> b!4903977 (= res!2094798 (not ((_ is ElementMatch!13305) (regex!8230 rule!164))))))

(assert (=> b!4903977 (= e!3065562 e!3065561)))

(declare-fun b!4903978 () Bool)

(assert (=> b!4903978 (= e!3065562 (not lt!2011749))))

(declare-fun bm!340233 () Bool)

(assert (=> bm!340233 (= call!340238 (isEmpty!30400 (_1!33690 lt!2011531)))))

(declare-fun b!4903979 () Bool)

(declare-fun res!2094796 () Bool)

(assert (=> b!4903979 (=> (not res!2094796) (not e!3065565))))

(assert (=> b!4903979 (= res!2094796 (isEmpty!30400 (tail!9619 (_1!33690 lt!2011531))))))

(declare-fun b!4903980 () Bool)

(assert (=> b!4903980 (= e!3065561 e!3065564)))

(declare-fun res!2094795 () Bool)

(assert (=> b!4903980 (=> (not res!2094795) (not e!3065564))))

(assert (=> b!4903980 (= res!2094795 (not lt!2011749))))

(declare-fun b!4903981 () Bool)

(assert (=> b!4903981 (= e!3065565 (= (head!10472 (_1!33690 lt!2011531)) (c!833373 (regex!8230 rule!164))))))

(declare-fun b!4903982 () Bool)

(declare-fun res!2094794 () Bool)

(assert (=> b!4903982 (=> res!2094794 e!3065563)))

(assert (=> b!4903982 (= res!2094794 (not (isEmpty!30400 (tail!9619 (_1!33690 lt!2011531)))))))

(declare-fun b!4903983 () Bool)

(assert (=> b!4903983 (= e!3065566 (nullable!4571 (regex!8230 rule!164)))))

(declare-fun b!4903984 () Bool)

(assert (=> b!4903984 (= e!3065560 (= lt!2011749 call!340238))))

(declare-fun b!4903985 () Bool)

(declare-fun res!2094797 () Bool)

(assert (=> b!4903985 (=> (not res!2094797) (not e!3065565))))

(assert (=> b!4903985 (= res!2094797 (not call!340238))))

(assert (= (and d!1575794 c!833440) b!4903983))

(assert (= (and d!1575794 (not c!833440)) b!4903973))

(assert (= (and d!1575794 c!833441) b!4903984))

(assert (= (and d!1575794 (not c!833441)) b!4903974))

(assert (= (and b!4903974 c!833442) b!4903978))

(assert (= (and b!4903974 (not c!833442)) b!4903977))

(assert (= (and b!4903977 (not res!2094798)) b!4903975))

(assert (= (and b!4903975 res!2094799) b!4903985))

(assert (= (and b!4903985 res!2094797) b!4903979))

(assert (= (and b!4903979 res!2094796) b!4903981))

(assert (= (and b!4903975 (not res!2094800)) b!4903980))

(assert (= (and b!4903980 res!2094795) b!4903976))

(assert (= (and b!4903976 (not res!2094801)) b!4903982))

(assert (= (and b!4903982 (not res!2094794)) b!4903972))

(assert (= (or b!4903984 b!4903976 b!4903985) bm!340233))

(assert (=> d!1575794 m!5912544))

(assert (=> d!1575794 m!5912598))

(declare-fun m!5912836 () Bool)

(assert (=> b!4903981 m!5912836))

(assert (=> b!4903983 m!5912806))

(assert (=> b!4903973 m!5912836))

(assert (=> b!4903973 m!5912836))

(declare-fun m!5912838 () Bool)

(assert (=> b!4903973 m!5912838))

(declare-fun m!5912840 () Bool)

(assert (=> b!4903973 m!5912840))

(assert (=> b!4903973 m!5912838))

(assert (=> b!4903973 m!5912840))

(declare-fun m!5912842 () Bool)

(assert (=> b!4903973 m!5912842))

(assert (=> b!4903979 m!5912840))

(assert (=> b!4903979 m!5912840))

(declare-fun m!5912844 () Bool)

(assert (=> b!4903979 m!5912844))

(assert (=> b!4903982 m!5912840))

(assert (=> b!4903982 m!5912840))

(assert (=> b!4903982 m!5912844))

(assert (=> b!4903972 m!5912836))

(assert (=> bm!340233 m!5912544))

(assert (=> b!4903684 d!1575794))

(declare-fun d!1575796 () Bool)

(declare-fun choose!35810 (Int) Bool)

(assert (=> d!1575796 (= (Forall!1727 lambda!244434) (choose!35810 lambda!244434))))

(declare-fun bs!1176904 () Bool)

(assert (= bs!1176904 d!1575796))

(declare-fun m!5912846 () Bool)

(assert (=> bs!1176904 m!5912846))

(assert (=> b!4903689 d!1575796))

(declare-fun d!1575798 () Bool)

(declare-fun isBalanced!4030 (Conc!14798) Bool)

(assert (=> d!1575798 (= (inv!72978 input!1509) (isBalanced!4030 (c!833374 input!1509)))))

(declare-fun bs!1176905 () Bool)

(assert (= bs!1176905 d!1575798))

(declare-fun m!5912848 () Bool)

(assert (=> bs!1176905 m!5912848))

(assert (=> start!513776 d!1575798))

(declare-fun d!1575800 () Bool)

(declare-fun dynLambda!22804 (Int BalanceConc!29026) Bool)

(assert (=> d!1575800 (dynLambda!22804 lambda!244434 (seqFromList!5972 lt!2011527))))

(declare-fun lt!2011752 () Unit!146675)

(declare-fun choose!35811 (Int BalanceConc!29026) Unit!146675)

(assert (=> d!1575800 (= lt!2011752 (choose!35811 lambda!244434 (seqFromList!5972 lt!2011527)))))

(assert (=> d!1575800 (Forall!1727 lambda!244434)))

(assert (=> d!1575800 (= (ForallOf!1167 lambda!244434 (seqFromList!5972 lt!2011527)) lt!2011752)))

(declare-fun b_lambda!195197 () Bool)

(assert (=> (not b_lambda!195197) (not d!1575800)))

(declare-fun bs!1176906 () Bool)

(assert (= bs!1176906 d!1575800))

(assert (=> bs!1176906 m!5912560))

(declare-fun m!5912850 () Bool)

(assert (=> bs!1176906 m!5912850))

(assert (=> bs!1176906 m!5912560))

(declare-fun m!5912852 () Bool)

(assert (=> bs!1176906 m!5912852))

(assert (=> bs!1176906 m!5912532))

(assert (=> b!4903688 d!1575800))

(declare-fun d!1575802 () Bool)

(declare-fun lt!2011755 () Int)

(assert (=> d!1575802 (= lt!2011755 (size!37262 (list!17804 (_1!33689 lt!2011532))))))

(declare-fun size!37266 (Conc!14798) Int)

(assert (=> d!1575802 (= lt!2011755 (size!37266 (c!833374 (_1!33689 lt!2011532))))))

(assert (=> d!1575802 (= (size!37264 (_1!33689 lt!2011532)) lt!2011755)))

(declare-fun bs!1176907 () Bool)

(assert (= bs!1176907 d!1575802))

(assert (=> bs!1176907 m!5912568))

(assert (=> bs!1176907 m!5912568))

(declare-fun m!5912854 () Bool)

(assert (=> bs!1176907 m!5912854))

(declare-fun m!5912856 () Bool)

(assert (=> bs!1176907 m!5912856))

(assert (=> b!4903688 d!1575802))

(declare-fun d!1575804 () Bool)

(declare-fun dynLambda!22805 (Int BalanceConc!29026) TokenValue!8540)

(assert (=> d!1575804 (= (apply!13574 (transformation!8230 rule!164) (_1!33689 lt!2011532)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))))

(declare-fun b_lambda!195199 () Bool)

(assert (=> (not b_lambda!195199) (not d!1575804)))

(declare-fun t!366761 () Bool)

(declare-fun tb!259855 () Bool)

(assert (=> (and b!4903682 (= (toValue!11145 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 rule!164))) t!366761) tb!259855))

(declare-fun result!323574 () Bool)

(declare-fun inv!21 (TokenValue!8540) Bool)

(assert (=> tb!259855 (= result!323574 (inv!21 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))

(declare-fun m!5912858 () Bool)

(assert (=> tb!259855 m!5912858))

(assert (=> d!1575804 t!366761))

(declare-fun b_and!346297 () Bool)

(assert (= b_and!346283 (and (=> t!366761 result!323574) b_and!346297)))

(declare-fun m!5912860 () Bool)

(assert (=> d!1575804 m!5912860))

(assert (=> b!4903688 d!1575804))

(declare-fun d!1575806 () Bool)

(assert (=> d!1575806 (= (list!17804 (_1!33689 lt!2011532)) (list!17806 (c!833374 (_1!33689 lt!2011532))))))

(declare-fun bs!1176908 () Bool)

(assert (= bs!1176908 d!1575806))

(declare-fun m!5912862 () Bool)

(assert (=> bs!1176908 m!5912862))

(assert (=> b!4903688 d!1575806))

(declare-fun d!1575808 () Bool)

(assert (=> d!1575808 (dynLambda!22804 lambda!244434 (_1!33689 lt!2011532))))

(declare-fun lt!2011756 () Unit!146675)

(assert (=> d!1575808 (= lt!2011756 (choose!35811 lambda!244434 (_1!33689 lt!2011532)))))

(assert (=> d!1575808 (Forall!1727 lambda!244434)))

(assert (=> d!1575808 (= (ForallOf!1167 lambda!244434 (_1!33689 lt!2011532)) lt!2011756)))

(declare-fun b_lambda!195201 () Bool)

(assert (=> (not b_lambda!195201) (not d!1575808)))

(declare-fun bs!1176909 () Bool)

(assert (= bs!1176909 d!1575808))

(declare-fun m!5912864 () Bool)

(assert (=> bs!1176909 m!5912864))

(declare-fun m!5912866 () Bool)

(assert (=> bs!1176909 m!5912866))

(assert (=> bs!1176909 m!5912532))

(assert (=> b!4903688 d!1575808))

(declare-fun b!4904006 () Bool)

(declare-fun res!2094816 () Bool)

(declare-fun e!3065579 () Bool)

(assert (=> b!4904006 (=> (not res!2094816) (not e!3065579))))

(declare-fun lt!2011767 () Option!14098)

(declare-fun get!19551 (Option!14098) tuple2!60778)

(assert (=> b!4904006 (= res!2094816 (= (value!263687 (_1!33692 (get!19551 lt!2011767))) (apply!13574 (transformation!8230 (rule!11426 (_1!33692 (get!19551 lt!2011767)))) (seqFromList!5972 (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767)))))))))

(declare-fun b!4904007 () Bool)

(declare-fun e!3065581 () Bool)

(assert (=> b!4904007 (= e!3065581 e!3065579)))

(declare-fun res!2094818 () Bool)

(assert (=> b!4904007 (=> (not res!2094818) (not e!3065579))))

(declare-fun charsOf!5386 (Token!14988) BalanceConc!29026)

(assert (=> b!4904007 (= res!2094818 (matchR!6572 (regex!8230 rule!164) (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))))))

(declare-fun d!1575810 () Bool)

(assert (=> d!1575810 e!3065581))

(declare-fun res!2094820 () Bool)

(assert (=> d!1575810 (=> res!2094820 e!3065581)))

(declare-fun isEmpty!30404 (Option!14098) Bool)

(assert (=> d!1575810 (= res!2094820 (isEmpty!30404 lt!2011767))))

(declare-fun e!3065578 () Option!14098)

(assert (=> d!1575810 (= lt!2011767 e!3065578)))

(declare-fun c!833445 () Bool)

(declare-fun lt!2011769 () tuple2!60774)

(assert (=> d!1575810 (= c!833445 (isEmpty!30400 (_1!33690 lt!2011769)))))

(declare-fun findLongestMatch!1661 (Regex!13305 List!56659) tuple2!60774)

(assert (=> d!1575810 (= lt!2011769 (findLongestMatch!1661 (regex!8230 rule!164) lt!2011528))))

(assert (=> d!1575810 (ruleValid!3727 thiss!15943 rule!164)))

(assert (=> d!1575810 (= (maxPrefixOneRule!3567 thiss!15943 rule!164 lt!2011528) lt!2011767)))

(declare-fun b!4904008 () Bool)

(assert (=> b!4904008 (= e!3065578 None!14097)))

(declare-fun b!4904009 () Bool)

(declare-fun res!2094821 () Bool)

(assert (=> b!4904009 (=> (not res!2094821) (not e!3065579))))

(assert (=> b!4904009 (= res!2094821 (= (rule!11426 (_1!33692 (get!19551 lt!2011767))) rule!164))))

(declare-fun b!4904010 () Bool)

(assert (=> b!4904010 (= e!3065578 (Some!14097 (tuple2!60779 (Token!14989 (apply!13574 (transformation!8230 rule!164) (seqFromList!5972 (_1!33690 lt!2011769))) rule!164 (size!37264 (seqFromList!5972 (_1!33690 lt!2011769))) (_1!33690 lt!2011769)) (_2!33690 lt!2011769))))))

(declare-fun lt!2011770 () Unit!146675)

(assert (=> b!4904010 (= lt!2011770 (longestMatchIsAcceptedByMatchOrIsEmpty!1756 (regex!8230 rule!164) lt!2011528))))

(declare-fun res!2094822 () Bool)

(assert (=> b!4904010 (= res!2094822 (isEmpty!30400 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))))

(declare-fun e!3065580 () Bool)

(assert (=> b!4904010 (=> res!2094822 e!3065580)))

(assert (=> b!4904010 e!3065580))

(declare-fun lt!2011771 () Unit!146675)

(assert (=> b!4904010 (= lt!2011771 lt!2011770)))

(declare-fun lt!2011768 () Unit!146675)

(declare-fun lemmaSemiInverse!2574 (TokenValueInjection!16388 BalanceConc!29026) Unit!146675)

(assert (=> b!4904010 (= lt!2011768 (lemmaSemiInverse!2574 (transformation!8230 rule!164) (seqFromList!5972 (_1!33690 lt!2011769))))))

(declare-fun b!4904011 () Bool)

(declare-fun res!2094819 () Bool)

(assert (=> b!4904011 (=> (not res!2094819) (not e!3065579))))

(assert (=> b!4904011 (= res!2094819 (< (size!37262 (_2!33692 (get!19551 lt!2011767))) (size!37262 lt!2011528)))))

(declare-fun b!4904012 () Bool)

(assert (=> b!4904012 (= e!3065580 (matchR!6572 (regex!8230 rule!164) (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))))

(declare-fun b!4904013 () Bool)

(assert (=> b!4904013 (= e!3065579 (= (size!37263 (_1!33692 (get!19551 lt!2011767))) (size!37262 (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767))))))))

(declare-fun b!4904014 () Bool)

(declare-fun res!2094817 () Bool)

(assert (=> b!4904014 (=> (not res!2094817) (not e!3065579))))

(assert (=> b!4904014 (= res!2094817 (= (++!12259 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767)))) (_2!33692 (get!19551 lt!2011767))) lt!2011528))))

(assert (= (and d!1575810 c!833445) b!4904008))

(assert (= (and d!1575810 (not c!833445)) b!4904010))

(assert (= (and b!4904010 (not res!2094822)) b!4904012))

(assert (= (and d!1575810 (not res!2094820)) b!4904007))

(assert (= (and b!4904007 res!2094818) b!4904014))

(assert (= (and b!4904014 res!2094817) b!4904011))

(assert (= (and b!4904011 res!2094819) b!4904009))

(assert (= (and b!4904009 res!2094821) b!4904006))

(assert (= (and b!4904006 res!2094816) b!4904013))

(declare-fun m!5912868 () Bool)

(assert (=> d!1575810 m!5912868))

(declare-fun m!5912870 () Bool)

(assert (=> d!1575810 m!5912870))

(declare-fun m!5912872 () Bool)

(assert (=> d!1575810 m!5912872))

(assert (=> d!1575810 m!5912572))

(declare-fun m!5912874 () Bool)

(assert (=> b!4904007 m!5912874))

(declare-fun m!5912876 () Bool)

(assert (=> b!4904007 m!5912876))

(assert (=> b!4904007 m!5912876))

(declare-fun m!5912878 () Bool)

(assert (=> b!4904007 m!5912878))

(assert (=> b!4904007 m!5912878))

(declare-fun m!5912880 () Bool)

(assert (=> b!4904007 m!5912880))

(assert (=> b!4904010 m!5912534))

(assert (=> b!4904010 m!5912534))

(assert (=> b!4904010 m!5912536))

(assert (=> b!4904010 m!5912538))

(declare-fun m!5912882 () Bool)

(assert (=> b!4904010 m!5912882))

(assert (=> b!4904010 m!5912536))

(assert (=> b!4904010 m!5912882))

(declare-fun m!5912884 () Bool)

(assert (=> b!4904010 m!5912884))

(assert (=> b!4904010 m!5912600))

(assert (=> b!4904010 m!5912882))

(declare-fun m!5912886 () Bool)

(assert (=> b!4904010 m!5912886))

(assert (=> b!4904010 m!5912540))

(assert (=> b!4904010 m!5912882))

(declare-fun m!5912888 () Bool)

(assert (=> b!4904010 m!5912888))

(assert (=> b!4904009 m!5912874))

(assert (=> b!4904011 m!5912874))

(declare-fun m!5912890 () Bool)

(assert (=> b!4904011 m!5912890))

(assert (=> b!4904011 m!5912536))

(assert (=> b!4904006 m!5912874))

(declare-fun m!5912892 () Bool)

(assert (=> b!4904006 m!5912892))

(assert (=> b!4904006 m!5912892))

(declare-fun m!5912894 () Bool)

(assert (=> b!4904006 m!5912894))

(assert (=> b!4904013 m!5912874))

(declare-fun m!5912896 () Bool)

(assert (=> b!4904013 m!5912896))

(assert (=> b!4904014 m!5912874))

(assert (=> b!4904014 m!5912876))

(assert (=> b!4904014 m!5912876))

(assert (=> b!4904014 m!5912878))

(assert (=> b!4904014 m!5912878))

(declare-fun m!5912898 () Bool)

(assert (=> b!4904014 m!5912898))

(assert (=> b!4904012 m!5912534))

(assert (=> b!4904012 m!5912536))

(assert (=> b!4904012 m!5912534))

(assert (=> b!4904012 m!5912536))

(assert (=> b!4904012 m!5912538))

(assert (=> b!4904012 m!5912604))

(assert (=> b!4903688 d!1575810))

(declare-fun d!1575812 () Bool)

(declare-fun isEmpty!30405 (Option!14097) Bool)

(assert (=> d!1575812 (= (isDefined!11106 (Some!14096 (tuple2!60777 (Token!14989 (apply!13574 (transformation!8230 rule!164) (_1!33689 lt!2011532)) rule!164 (size!37264 (_1!33689 lt!2011532)) lt!2011527) (_2!33689 lt!2011532)))) (not (isEmpty!30405 (Some!14096 (tuple2!60777 (Token!14989 (apply!13574 (transformation!8230 rule!164) (_1!33689 lt!2011532)) rule!164 (size!37264 (_1!33689 lt!2011532)) lt!2011527) (_2!33689 lt!2011532))))))))

(declare-fun bs!1176910 () Bool)

(assert (= bs!1176910 d!1575812))

(declare-fun m!5912900 () Bool)

(assert (=> bs!1176910 m!5912900))

(assert (=> b!4903688 d!1575812))

(declare-fun d!1575814 () Bool)

(declare-fun fromListB!2701 (List!56659) BalanceConc!29026)

(assert (=> d!1575814 (= (seqFromList!5972 lt!2011527) (fromListB!2701 lt!2011527))))

(declare-fun bs!1176911 () Bool)

(assert (= bs!1176911 d!1575814))

(declare-fun m!5912902 () Bool)

(assert (=> bs!1176911 m!5912902))

(assert (=> b!4903688 d!1575814))

(declare-fun d!1575816 () Bool)

(assert (=> d!1575816 (= (isDefined!11107 (maxPrefixOneRule!3567 thiss!15943 rule!164 lt!2011528)) (not (isEmpty!30404 (maxPrefixOneRule!3567 thiss!15943 rule!164 lt!2011528))))))

(declare-fun bs!1176912 () Bool)

(assert (= bs!1176912 d!1575816))

(assert (=> bs!1176912 m!5912552))

(declare-fun m!5912904 () Bool)

(assert (=> bs!1176912 m!5912904))

(assert (=> b!4903688 d!1575816))

(declare-fun d!1575818 () Bool)

(assert (=> d!1575818 (= (inv!72974 (tag!9094 rule!164)) (= (mod (str.len (value!263661 (tag!9094 rule!164))) 2) 0))))

(assert (=> b!4903683 d!1575818))

(declare-fun d!1575820 () Bool)

(declare-fun res!2094825 () Bool)

(declare-fun e!3065584 () Bool)

(assert (=> d!1575820 (=> (not res!2094825) (not e!3065584))))

(assert (=> d!1575820 (= res!2094825 (semiInverseModEq!3631 (toChars!11004 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 rule!164))))))

(assert (=> d!1575820 (= (inv!72979 (transformation!8230 rule!164)) e!3065584)))

(declare-fun b!4904017 () Bool)

(assert (=> b!4904017 (= e!3065584 (equivClasses!3484 (toChars!11004 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 rule!164))))))

(assert (= (and d!1575820 res!2094825) b!4904017))

(assert (=> d!1575820 m!5912542))

(assert (=> b!4904017 m!5912606))

(assert (=> b!4903683 d!1575820))

(declare-fun d!1575822 () Bool)

(declare-fun lt!2011774 () Bool)

(assert (=> d!1575822 (= lt!2011774 (isEmpty!30400 (list!17804 (_1!33689 lt!2011532))))))

(declare-fun isEmpty!30406 (Conc!14798) Bool)

(assert (=> d!1575822 (= lt!2011774 (isEmpty!30406 (c!833374 (_1!33689 lt!2011532))))))

(assert (=> d!1575822 (= (isEmpty!30399 (_1!33689 lt!2011532)) lt!2011774)))

(declare-fun bs!1176913 () Bool)

(assert (= bs!1176913 d!1575822))

(assert (=> bs!1176913 m!5912568))

(assert (=> bs!1176913 m!5912568))

(declare-fun m!5912906 () Bool)

(assert (=> bs!1176913 m!5912906))

(declare-fun m!5912908 () Bool)

(assert (=> bs!1176913 m!5912908))

(assert (=> b!4903681 d!1575822))

(declare-fun d!1575824 () Bool)

(declare-fun lt!2011777 () tuple2!60772)

(assert (=> d!1575824 (= (tuple2!60775 (list!17804 (_1!33689 lt!2011777)) (list!17804 (_2!33689 lt!2011777))) (findLongestMatch!1661 (regex!8230 rule!164) (list!17804 input!1509)))))

(declare-fun choose!35812 (Regex!13305 BalanceConc!29026) tuple2!60772)

(assert (=> d!1575824 (= lt!2011777 (choose!35812 (regex!8230 rule!164) input!1509))))

(assert (=> d!1575824 (validRegex!5898 (regex!8230 rule!164))))

(assert (=> d!1575824 (= (findLongestMatchWithZipperSequence!318 (regex!8230 rule!164) input!1509) lt!2011777)))

(declare-fun bs!1176914 () Bool)

(assert (= bs!1176914 d!1575824))

(assert (=> bs!1176914 m!5912598))

(declare-fun m!5912910 () Bool)

(assert (=> bs!1176914 m!5912910))

(assert (=> bs!1176914 m!5912546))

(declare-fun m!5912912 () Bool)

(assert (=> bs!1176914 m!5912912))

(assert (=> bs!1176914 m!5912546))

(declare-fun m!5912914 () Bool)

(assert (=> bs!1176914 m!5912914))

(declare-fun m!5912916 () Bool)

(assert (=> bs!1176914 m!5912916))

(assert (=> b!4903681 d!1575824))

(declare-fun d!1575826 () Bool)

(declare-fun c!833448 () Bool)

(assert (=> d!1575826 (= c!833448 ((_ is Node!14798) (c!833374 input!1509)))))

(declare-fun e!3065589 () Bool)

(assert (=> d!1575826 (= (inv!72980 (c!833374 input!1509)) e!3065589)))

(declare-fun b!4904024 () Bool)

(declare-fun inv!72984 (Conc!14798) Bool)

(assert (=> b!4904024 (= e!3065589 (inv!72984 (c!833374 input!1509)))))

(declare-fun b!4904025 () Bool)

(declare-fun e!3065590 () Bool)

(assert (=> b!4904025 (= e!3065589 e!3065590)))

(declare-fun res!2094828 () Bool)

(assert (=> b!4904025 (= res!2094828 (not ((_ is Leaf!24630) (c!833374 input!1509))))))

(assert (=> b!4904025 (=> res!2094828 e!3065590)))

(declare-fun b!4904026 () Bool)

(declare-fun inv!72985 (Conc!14798) Bool)

(assert (=> b!4904026 (= e!3065590 (inv!72985 (c!833374 input!1509)))))

(assert (= (and d!1575826 c!833448) b!4904024))

(assert (= (and d!1575826 (not c!833448)) b!4904025))

(assert (= (and b!4904025 (not res!2094828)) b!4904026))

(declare-fun m!5912918 () Bool)

(assert (=> b!4904024 m!5912918))

(declare-fun m!5912920 () Bool)

(assert (=> b!4904026 m!5912920))

(assert (=> b!4903687 d!1575826))

(declare-fun b!4904038 () Bool)

(declare-fun e!3065593 () Bool)

(declare-fun tp!1379743 () Bool)

(declare-fun tp!1379745 () Bool)

(assert (=> b!4904038 (= e!3065593 (and tp!1379743 tp!1379745))))

(declare-fun b!4904037 () Bool)

(declare-fun tp_is_empty!35819 () Bool)

(assert (=> b!4904037 (= e!3065593 tp_is_empty!35819)))

(assert (=> b!4903683 (= tp!1379700 e!3065593)))

(declare-fun b!4904040 () Bool)

(declare-fun tp!1379744 () Bool)

(declare-fun tp!1379746 () Bool)

(assert (=> b!4904040 (= e!3065593 (and tp!1379744 tp!1379746))))

(declare-fun b!4904039 () Bool)

(declare-fun tp!1379742 () Bool)

(assert (=> b!4904039 (= e!3065593 tp!1379742)))

(assert (= (and b!4903683 ((_ is ElementMatch!13305) (regex!8230 rule!164))) b!4904037))

(assert (= (and b!4903683 ((_ is Concat!21845) (regex!8230 rule!164))) b!4904038))

(assert (= (and b!4903683 ((_ is Star!13305) (regex!8230 rule!164))) b!4904039))

(assert (= (and b!4903683 ((_ is Union!13305) (regex!8230 rule!164))) b!4904040))

(declare-fun b!4904049 () Bool)

(declare-fun tp!1379753 () Bool)

(declare-fun e!3065599 () Bool)

(declare-fun tp!1379754 () Bool)

(assert (=> b!4904049 (= e!3065599 (and (inv!72980 (left!41151 (c!833374 input!1509))) tp!1379754 (inv!72980 (right!41481 (c!833374 input!1509))) tp!1379753))))

(declare-fun b!4904051 () Bool)

(declare-fun e!3065598 () Bool)

(declare-fun tp!1379755 () Bool)

(assert (=> b!4904051 (= e!3065598 tp!1379755)))

(declare-fun b!4904050 () Bool)

(declare-fun inv!72986 (IArray!29657) Bool)

(assert (=> b!4904050 (= e!3065599 (and (inv!72986 (xs!18114 (c!833374 input!1509))) e!3065598))))

(assert (=> b!4903687 (= tp!1379703 (and (inv!72980 (c!833374 input!1509)) e!3065599))))

(assert (= (and b!4903687 ((_ is Node!14798) (c!833374 input!1509))) b!4904049))

(assert (= b!4904050 b!4904051))

(assert (= (and b!4903687 ((_ is Leaf!24630) (c!833374 input!1509))) b!4904050))

(declare-fun m!5912922 () Bool)

(assert (=> b!4904049 m!5912922))

(declare-fun m!5912924 () Bool)

(assert (=> b!4904049 m!5912924))

(declare-fun m!5912926 () Bool)

(assert (=> b!4904050 m!5912926))

(assert (=> b!4903687 m!5912570))

(declare-fun b_lambda!195203 () Bool)

(assert (= b_lambda!195197 (or b!4903689 b_lambda!195203)))

(declare-fun bs!1176915 () Bool)

(declare-fun d!1575828 () Bool)

(assert (= bs!1176915 (and d!1575828 b!4903689)))

(declare-fun dynLambda!22806 (Int TokenValue!8540) BalanceConc!29026)

(assert (=> bs!1176915 (= (dynLambda!22804 lambda!244434 (seqFromList!5972 lt!2011527)) (= (list!17804 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))) (list!17804 (seqFromList!5972 lt!2011527))))))

(declare-fun b_lambda!195209 () Bool)

(assert (=> (not b_lambda!195209) (not bs!1176915)))

(declare-fun t!366763 () Bool)

(declare-fun tb!259857 () Bool)

(assert (=> (and b!4903682 (= (toChars!11004 (transformation!8230 rule!164)) (toChars!11004 (transformation!8230 rule!164))) t!366763) tb!259857))

(declare-fun e!3065602 () Bool)

(declare-fun b!4904056 () Bool)

(declare-fun tp!1379758 () Bool)

(assert (=> b!4904056 (= e!3065602 (and (inv!72980 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))) tp!1379758))))

(declare-fun result!323582 () Bool)

(assert (=> tb!259857 (= result!323582 (and (inv!72978 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))) e!3065602))))

(assert (= tb!259857 b!4904056))

(declare-fun m!5912928 () Bool)

(assert (=> b!4904056 m!5912928))

(declare-fun m!5912930 () Bool)

(assert (=> tb!259857 m!5912930))

(assert (=> bs!1176915 t!366763))

(declare-fun b_and!346299 () Bool)

(assert (= b_and!346285 (and (=> t!366763 result!323582) b_and!346299)))

(declare-fun b_lambda!195211 () Bool)

(assert (=> (not b_lambda!195211) (not bs!1176915)))

(declare-fun t!366765 () Bool)

(declare-fun tb!259859 () Bool)

(assert (=> (and b!4903682 (= (toValue!11145 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 rule!164))) t!366765) tb!259859))

(declare-fun result!323586 () Bool)

(assert (=> tb!259859 (= result!323586 (inv!21 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))

(declare-fun m!5912932 () Bool)

(assert (=> tb!259859 m!5912932))

(assert (=> bs!1176915 t!366765))

(declare-fun b_and!346301 () Bool)

(assert (= b_and!346297 (and (=> t!366765 result!323586) b_and!346301)))

(assert (=> bs!1176915 m!5912560))

(declare-fun m!5912934 () Bool)

(assert (=> bs!1176915 m!5912934))

(declare-fun m!5912936 () Bool)

(assert (=> bs!1176915 m!5912936))

(declare-fun m!5912938 () Bool)

(assert (=> bs!1176915 m!5912938))

(declare-fun m!5912940 () Bool)

(assert (=> bs!1176915 m!5912940))

(assert (=> bs!1176915 m!5912936))

(assert (=> bs!1176915 m!5912560))

(assert (=> bs!1176915 m!5912940))

(assert (=> d!1575800 d!1575828))

(declare-fun b_lambda!195205 () Bool)

(assert (= b_lambda!195199 (or (and b!4903682 b_free!131891) b_lambda!195205)))

(declare-fun b_lambda!195207 () Bool)

(assert (= b_lambda!195201 (or b!4903689 b_lambda!195207)))

(declare-fun bs!1176916 () Bool)

(declare-fun d!1575830 () Bool)

(assert (= bs!1176916 (and d!1575830 b!4903689)))

(assert (=> bs!1176916 (= (dynLambda!22804 lambda!244434 (_1!33689 lt!2011532)) (= (list!17804 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))) (list!17804 (_1!33689 lt!2011532))))))

(declare-fun b_lambda!195213 () Bool)

(assert (=> (not b_lambda!195213) (not bs!1176916)))

(declare-fun t!366767 () Bool)

(declare-fun tb!259861 () Bool)

(assert (=> (and b!4903682 (= (toChars!11004 (transformation!8230 rule!164)) (toChars!11004 (transformation!8230 rule!164))) t!366767) tb!259861))

(declare-fun e!3065604 () Bool)

(declare-fun b!4904057 () Bool)

(declare-fun tp!1379759 () Bool)

(assert (=> b!4904057 (= e!3065604 (and (inv!72980 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))) tp!1379759))))

(declare-fun result!323588 () Bool)

(assert (=> tb!259861 (= result!323588 (and (inv!72978 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))) e!3065604))))

(assert (= tb!259861 b!4904057))

(declare-fun m!5912942 () Bool)

(assert (=> b!4904057 m!5912942))

(declare-fun m!5912944 () Bool)

(assert (=> tb!259861 m!5912944))

(assert (=> bs!1176916 t!366767))

(declare-fun b_and!346303 () Bool)

(assert (= b_and!346299 (and (=> t!366767 result!323588) b_and!346303)))

(declare-fun b_lambda!195215 () Bool)

(assert (=> (not b_lambda!195215) (not bs!1176916)))

(assert (=> bs!1176916 t!366761))

(declare-fun b_and!346305 () Bool)

(assert (= b_and!346301 (and (=> t!366761 result!323574) b_and!346305)))

(assert (=> bs!1176916 m!5912568))

(declare-fun m!5912946 () Bool)

(assert (=> bs!1176916 m!5912946))

(declare-fun m!5912948 () Bool)

(assert (=> bs!1176916 m!5912948))

(assert (=> bs!1176916 m!5912860))

(assert (=> bs!1176916 m!5912946))

(assert (=> bs!1176916 m!5912860))

(assert (=> d!1575808 d!1575830))

(check-sat (not bm!340223) (not d!1575810) (not d!1575732) (not b!4903979) (not bm!340226) (not d!1575808) (not tb!259861) (not b_next!132681) (not b!4903982) (not b!4904014) (not b!4904051) (not bm!340227) (not bm!340233) (not tb!259855) (not b_next!132683) (not b!4904011) (not b!4903942) (not b!4903934) (not tb!259857) (not b!4903922) (not b!4904009) (not b!4904012) (not b!4903933) (not d!1575820) (not b!4904013) (not bm!340230) (not b!4904038) (not d!1575798) (not b!4904026) (not b!4904010) (not d!1575814) (not b!4904040) (not b_lambda!195213) (not b_lambda!195215) (not b!4903937) (not b_lambda!195203) (not b!4904024) (not b!4903709) (not b!4904039) (not d!1575744) (not b!4903736) (not d!1575792) (not tb!259859) (not bm!340224) (not b!4903973) (not d!1575812) (not d!1575794) (not d!1575736) (not b_lambda!195207) (not b!4904007) b_and!346305 (not b!4904017) (not b_lambda!195209) (not bm!340225) (not b!4904006) (not d!1575728) (not d!1575802) (not b_lambda!195205) (not b!4903972) (not b!4904050) (not d!1575822) (not b!4904056) (not bs!1176916) (not b!4903687) (not b!4903981) (not b_lambda!195211) (not d!1575806) (not d!1575824) (not bm!340229) (not bm!340228) (not b!4903932) (not d!1575796) (not d!1575816) (not b!4904057) (not d!1575800) (not b!4904049) (not bs!1176915) tp_is_empty!35819 (not d!1575724) (not b!4903983) b_and!346303 (not b!4903718))
(check-sat b_and!346303 b_and!346305 (not b_next!132683) (not b_next!132681))
(get-model)

(declare-fun b_lambda!195225 () Bool)

(assert (= b_lambda!195209 (or (and b!4903682 b_free!131893) b_lambda!195225)))

(declare-fun b_lambda!195227 () Bool)

(assert (= b_lambda!195211 (or (and b!4903682 b_free!131891) b_lambda!195227)))

(declare-fun b_lambda!195229 () Bool)

(assert (= b_lambda!195215 (or (and b!4903682 b_free!131891) b_lambda!195229)))

(declare-fun b_lambda!195231 () Bool)

(assert (= b_lambda!195213 (or (and b!4903682 b_free!131893) b_lambda!195231)))

(check-sat (not d!1575810) (not d!1575732) (not b!4903979) (not bm!340226) (not d!1575808) (not tb!259861) (not b_next!132681) (not b!4903982) (not b!4904014) (not b!4904051) (not bm!340227) (not bm!340223) (not b_lambda!195231) (not bm!340233) (not tb!259855) (not b_next!132683) (not b!4904011) (not b!4903942) (not b!4903934) (not b_lambda!195229) (not tb!259857) (not b!4903922) (not b!4904009) (not b!4904012) (not b!4903933) (not d!1575820) (not b!4904013) (not bm!340230) (not b!4904038) (not d!1575798) (not b!4904026) (not b!4904010) (not d!1575814) (not b!4904040) (not b!4903937) (not b_lambda!195227) (not b_lambda!195203) (not b!4904024) (not b!4903709) (not b!4904039) (not d!1575744) (not b!4903736) (not d!1575792) (not tb!259859) (not bm!340224) (not b!4903973) (not d!1575812) (not d!1575794) (not d!1575736) (not b_lambda!195207) (not b!4904007) b_and!346305 (not b!4904017) (not bm!340225) (not b!4904006) (not d!1575728) (not d!1575802) (not b_lambda!195205) (not b!4903972) (not b!4904050) (not d!1575822) (not b!4904056) (not bs!1176916) (not b!4903687) (not b!4903981) (not d!1575806) (not d!1575824) (not bm!340229) (not bm!340228) (not b!4903932) (not d!1575796) (not d!1575816) (not b!4904057) (not d!1575800) (not b_lambda!195225) (not b!4904049) (not bs!1176915) tp_is_empty!35819 (not d!1575724) (not b!4903983) b_and!346303 (not b!4903718))
(check-sat b_and!346303 b_and!346305 (not b_next!132683) (not b_next!132681))
(get-model)

(declare-fun b!4904225 () Bool)

(declare-fun e!3065702 () List!56659)

(assert (=> b!4904225 (= e!3065702 Nil!56535)))

(declare-fun d!1575920 () Bool)

(declare-fun c!833487 () Bool)

(assert (=> d!1575920 (= c!833487 ((_ is Empty!14798) (c!833374 input!1509)))))

(assert (=> d!1575920 (= (list!17806 (c!833374 input!1509)) e!3065702)))

(declare-fun b!4904226 () Bool)

(declare-fun e!3065703 () List!56659)

(assert (=> b!4904226 (= e!3065702 e!3065703)))

(declare-fun c!833488 () Bool)

(assert (=> b!4904226 (= c!833488 ((_ is Leaf!24630) (c!833374 input!1509)))))

(declare-fun b!4904228 () Bool)

(assert (=> b!4904228 (= e!3065703 (++!12259 (list!17806 (left!41151 (c!833374 input!1509))) (list!17806 (right!41481 (c!833374 input!1509)))))))

(declare-fun b!4904227 () Bool)

(declare-fun list!17807 (IArray!29657) List!56659)

(assert (=> b!4904227 (= e!3065703 (list!17807 (xs!18114 (c!833374 input!1509))))))

(assert (= (and d!1575920 c!833487) b!4904225))

(assert (= (and d!1575920 (not c!833487)) b!4904226))

(assert (= (and b!4904226 c!833488) b!4904227))

(assert (= (and b!4904226 (not c!833488)) b!4904228))

(declare-fun m!5913152 () Bool)

(assert (=> b!4904228 m!5913152))

(declare-fun m!5913154 () Bool)

(assert (=> b!4904228 m!5913154))

(assert (=> b!4904228 m!5913152))

(assert (=> b!4904228 m!5913154))

(declare-fun m!5913156 () Bool)

(assert (=> b!4904228 m!5913156))

(declare-fun m!5913158 () Bool)

(assert (=> b!4904227 m!5913158))

(assert (=> d!1575724 d!1575920))

(declare-fun d!1575922 () Bool)

(assert (=> d!1575922 (isPrefix!4912 lt!2011528 lt!2011528)))

(declare-fun lt!2011836 () Unit!146675)

(declare-fun choose!35818 (List!56659 List!56659) Unit!146675)

(assert (=> d!1575922 (= lt!2011836 (choose!35818 lt!2011528 lt!2011528))))

(assert (=> d!1575922 (= (lemmaIsPrefixRefl!3309 lt!2011528 lt!2011528) lt!2011836)))

(declare-fun bs!1176931 () Bool)

(assert (= bs!1176931 d!1575922))

(assert (=> bs!1176931 m!5912810))

(declare-fun m!5913160 () Bool)

(assert (=> bs!1176931 m!5913160))

(assert (=> bm!340230 d!1575922))

(declare-fun d!1575924 () Bool)

(declare-fun c!833489 () Bool)

(assert (=> d!1575924 (= c!833489 ((_ is Node!14798) (left!41151 (c!833374 input!1509))))))

(declare-fun e!3065704 () Bool)

(assert (=> d!1575924 (= (inv!72980 (left!41151 (c!833374 input!1509))) e!3065704)))

(declare-fun b!4904229 () Bool)

(assert (=> b!4904229 (= e!3065704 (inv!72984 (left!41151 (c!833374 input!1509))))))

(declare-fun b!4904230 () Bool)

(declare-fun e!3065705 () Bool)

(assert (=> b!4904230 (= e!3065704 e!3065705)))

(declare-fun res!2094920 () Bool)

(assert (=> b!4904230 (= res!2094920 (not ((_ is Leaf!24630) (left!41151 (c!833374 input!1509)))))))

(assert (=> b!4904230 (=> res!2094920 e!3065705)))

(declare-fun b!4904231 () Bool)

(assert (=> b!4904231 (= e!3065705 (inv!72985 (left!41151 (c!833374 input!1509))))))

(assert (= (and d!1575924 c!833489) b!4904229))

(assert (= (and d!1575924 (not c!833489)) b!4904230))

(assert (= (and b!4904230 (not res!2094920)) b!4904231))

(declare-fun m!5913162 () Bool)

(assert (=> b!4904229 m!5913162))

(declare-fun m!5913164 () Bool)

(assert (=> b!4904231 m!5913164))

(assert (=> b!4904049 d!1575924))

(declare-fun d!1575926 () Bool)

(declare-fun c!833490 () Bool)

(assert (=> d!1575926 (= c!833490 ((_ is Node!14798) (right!41481 (c!833374 input!1509))))))

(declare-fun e!3065706 () Bool)

(assert (=> d!1575926 (= (inv!72980 (right!41481 (c!833374 input!1509))) e!3065706)))

(declare-fun b!4904232 () Bool)

(assert (=> b!4904232 (= e!3065706 (inv!72984 (right!41481 (c!833374 input!1509))))))

(declare-fun b!4904233 () Bool)

(declare-fun e!3065707 () Bool)

(assert (=> b!4904233 (= e!3065706 e!3065707)))

(declare-fun res!2094921 () Bool)

(assert (=> b!4904233 (= res!2094921 (not ((_ is Leaf!24630) (right!41481 (c!833374 input!1509)))))))

(assert (=> b!4904233 (=> res!2094921 e!3065707)))

(declare-fun b!4904234 () Bool)

(assert (=> b!4904234 (= e!3065707 (inv!72985 (right!41481 (c!833374 input!1509))))))

(assert (= (and d!1575926 c!833490) b!4904232))

(assert (= (and d!1575926 (not c!833490)) b!4904233))

(assert (= (and b!4904233 (not res!2094921)) b!4904234))

(declare-fun m!5913166 () Bool)

(assert (=> b!4904232 m!5913166))

(declare-fun m!5913168 () Bool)

(assert (=> b!4904234 m!5913168))

(assert (=> b!4904049 d!1575926))

(declare-fun d!1575928 () Bool)

(assert (=> d!1575928 (= (get!19551 lt!2011767) (v!50059 lt!2011767))))

(assert (=> b!4904006 d!1575928))

(declare-fun d!1575930 () Bool)

(assert (=> d!1575930 (= (apply!13574 (transformation!8230 (rule!11426 (_1!33692 (get!19551 lt!2011767)))) (seqFromList!5972 (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767))))) (dynLambda!22805 (toValue!11145 (transformation!8230 (rule!11426 (_1!33692 (get!19551 lt!2011767))))) (seqFromList!5972 (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767))))))))

(declare-fun b_lambda!195237 () Bool)

(assert (=> (not b_lambda!195237) (not d!1575930)))

(declare-fun t!366773 () Bool)

(declare-fun tb!259865 () Bool)

(assert (=> (and b!4903682 (= (toValue!11145 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 (rule!11426 (_1!33692 (get!19551 lt!2011767)))))) t!366773) tb!259865))

(declare-fun result!323592 () Bool)

(assert (=> tb!259865 (= result!323592 (inv!21 (dynLambda!22805 (toValue!11145 (transformation!8230 (rule!11426 (_1!33692 (get!19551 lt!2011767))))) (seqFromList!5972 (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767)))))))))

(declare-fun m!5913170 () Bool)

(assert (=> tb!259865 m!5913170))

(assert (=> d!1575930 t!366773))

(declare-fun b_and!346309 () Bool)

(assert (= b_and!346305 (and (=> t!366773 result!323592) b_and!346309)))

(assert (=> d!1575930 m!5912892))

(declare-fun m!5913174 () Bool)

(assert (=> d!1575930 m!5913174))

(assert (=> b!4904006 d!1575930))

(declare-fun d!1575932 () Bool)

(assert (=> d!1575932 (= (seqFromList!5972 (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767)))) (fromListB!2701 (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767)))))))

(declare-fun bs!1176933 () Bool)

(assert (= bs!1176933 d!1575932))

(declare-fun m!5913180 () Bool)

(assert (=> bs!1176933 m!5913180))

(assert (=> b!4904006 d!1575932))

(declare-fun d!1575934 () Bool)

(declare-fun e!3065715 () Bool)

(assert (=> d!1575934 e!3065715))

(declare-fun res!2094926 () Bool)

(assert (=> d!1575934 (=> res!2094926 e!3065715)))

(assert (=> d!1575934 (= res!2094926 (isEmpty!30400 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))))

(assert (=> d!1575934 true))

(declare-fun _$92!500 () Unit!146675)

(assert (=> d!1575934 (= (choose!35809 (regex!8230 rule!164) lt!2011528) _$92!500)))

(declare-fun b!4904241 () Bool)

(assert (=> b!4904241 (= e!3065715 (matchR!6572 (regex!8230 rule!164) (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))))

(assert (= (and d!1575934 (not res!2094926)) b!4904241))

(assert (=> d!1575934 m!5912534))

(assert (=> d!1575934 m!5912536))

(assert (=> d!1575934 m!5912534))

(assert (=> d!1575934 m!5912536))

(assert (=> d!1575934 m!5912538))

(assert (=> d!1575934 m!5912600))

(assert (=> b!4904241 m!5912534))

(assert (=> b!4904241 m!5912536))

(assert (=> b!4904241 m!5912534))

(assert (=> b!4904241 m!5912536))

(assert (=> b!4904241 m!5912538))

(assert (=> b!4904241 m!5912604))

(assert (=> d!1575728 d!1575934))

(assert (=> d!1575728 d!1575790))

(declare-fun bm!340252 () Bool)

(declare-fun call!340257 () Bool)

(declare-fun call!340258 () Bool)

(assert (=> bm!340252 (= call!340257 call!340258)))

(declare-fun bm!340253 () Bool)

(declare-fun c!833501 () Bool)

(declare-fun c!833500 () Bool)

(assert (=> bm!340253 (= call!340258 (validRegex!5898 (ite c!833501 (reg!13634 (regex!8230 rule!164)) (ite c!833500 (regOne!27123 (regex!8230 rule!164)) (regTwo!27122 (regex!8230 rule!164))))))))

(declare-fun b!4904282 () Bool)

(declare-fun res!2094949 () Bool)

(declare-fun e!3065744 () Bool)

(assert (=> b!4904282 (=> res!2094949 e!3065744)))

(assert (=> b!4904282 (= res!2094949 (not ((_ is Concat!21845) (regex!8230 rule!164))))))

(declare-fun e!3065745 () Bool)

(assert (=> b!4904282 (= e!3065745 e!3065744)))

(declare-fun b!4904283 () Bool)

(declare-fun e!3065747 () Bool)

(assert (=> b!4904283 (= e!3065744 e!3065747)))

(declare-fun res!2094947 () Bool)

(assert (=> b!4904283 (=> (not res!2094947) (not e!3065747))))

(declare-fun call!340259 () Bool)

(assert (=> b!4904283 (= res!2094947 call!340259)))

(declare-fun bm!340254 () Bool)

(assert (=> bm!340254 (= call!340259 (validRegex!5898 (ite c!833500 (regTwo!27123 (regex!8230 rule!164)) (regOne!27122 (regex!8230 rule!164)))))))

(declare-fun b!4904284 () Bool)

(declare-fun res!2094950 () Bool)

(declare-fun e!3065742 () Bool)

(assert (=> b!4904284 (=> (not res!2094950) (not e!3065742))))

(assert (=> b!4904284 (= res!2094950 call!340257)))

(assert (=> b!4904284 (= e!3065745 e!3065742)))

(declare-fun b!4904285 () Bool)

(assert (=> b!4904285 (= e!3065747 call!340257)))

(declare-fun b!4904286 () Bool)

(declare-fun e!3065746 () Bool)

(declare-fun e!3065748 () Bool)

(assert (=> b!4904286 (= e!3065746 e!3065748)))

(assert (=> b!4904286 (= c!833501 ((_ is Star!13305) (regex!8230 rule!164)))))

(declare-fun b!4904287 () Bool)

(declare-fun e!3065743 () Bool)

(assert (=> b!4904287 (= e!3065743 call!340258)))

(declare-fun b!4904288 () Bool)

(assert (=> b!4904288 (= e!3065748 e!3065743)))

(declare-fun res!2094948 () Bool)

(assert (=> b!4904288 (= res!2094948 (not (nullable!4571 (reg!13634 (regex!8230 rule!164)))))))

(assert (=> b!4904288 (=> (not res!2094948) (not e!3065743))))

(declare-fun b!4904289 () Bool)

(assert (=> b!4904289 (= e!3065742 call!340259)))

(declare-fun b!4904281 () Bool)

(assert (=> b!4904281 (= e!3065748 e!3065745)))

(assert (=> b!4904281 (= c!833500 ((_ is Union!13305) (regex!8230 rule!164)))))

(declare-fun d!1575940 () Bool)

(declare-fun res!2094951 () Bool)

(assert (=> d!1575940 (=> res!2094951 e!3065746)))

(assert (=> d!1575940 (= res!2094951 ((_ is ElementMatch!13305) (regex!8230 rule!164)))))

(assert (=> d!1575940 (= (validRegex!5898 (regex!8230 rule!164)) e!3065746)))

(assert (= (and d!1575940 (not res!2094951)) b!4904286))

(assert (= (and b!4904286 c!833501) b!4904288))

(assert (= (and b!4904286 (not c!833501)) b!4904281))

(assert (= (and b!4904288 res!2094948) b!4904287))

(assert (= (and b!4904281 c!833500) b!4904284))

(assert (= (and b!4904281 (not c!833500)) b!4904282))

(assert (= (and b!4904284 res!2094950) b!4904289))

(assert (= (and b!4904282 (not res!2094949)) b!4904283))

(assert (= (and b!4904283 res!2094947) b!4904285))

(assert (= (or b!4904289 b!4904283) bm!340254))

(assert (= (or b!4904284 b!4904285) bm!340252))

(assert (= (or b!4904287 bm!340252) bm!340253))

(declare-fun m!5913232 () Bool)

(assert (=> bm!340253 m!5913232))

(declare-fun m!5913234 () Bool)

(assert (=> bm!340254 m!5913234))

(declare-fun m!5913236 () Bool)

(assert (=> b!4904288 m!5913236))

(assert (=> d!1575728 d!1575940))

(assert (=> d!1575728 d!1575734))

(declare-fun d!1575958 () Bool)

(assert (=> d!1575958 (= (isEmpty!30400 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))) ((_ is Nil!56535) (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))))

(assert (=> d!1575728 d!1575958))

(assert (=> d!1575728 d!1575744))

(declare-fun b!4904290 () Bool)

(declare-fun e!3065752 () Bool)

(assert (=> b!4904290 (= e!3065752 (not (= (head!10472 (tail!9619 (_1!33690 lt!2011531))) (c!833373 (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531)))))))))

(declare-fun b!4904291 () Bool)

(declare-fun e!3065755 () Bool)

(assert (=> b!4904291 (= e!3065755 (matchR!6572 (derivativeStep!3891 (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531))) (head!10472 (tail!9619 (_1!33690 lt!2011531)))) (tail!9619 (tail!9619 (_1!33690 lt!2011531)))))))

(declare-fun b!4904292 () Bool)

(declare-fun e!3065749 () Bool)

(declare-fun e!3065751 () Bool)

(assert (=> b!4904292 (= e!3065749 e!3065751)))

(declare-fun c!833504 () Bool)

(assert (=> b!4904292 (= c!833504 ((_ is EmptyLang!13305) (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531)))))))

(declare-fun b!4904293 () Bool)

(declare-fun res!2094958 () Bool)

(declare-fun e!3065750 () Bool)

(assert (=> b!4904293 (=> res!2094958 e!3065750)))

(declare-fun e!3065754 () Bool)

(assert (=> b!4904293 (= res!2094958 e!3065754)))

(declare-fun res!2094957 () Bool)

(assert (=> b!4904293 (=> (not res!2094957) (not e!3065754))))

(declare-fun lt!2011849 () Bool)

(assert (=> b!4904293 (= res!2094957 lt!2011849)))

(declare-fun b!4904294 () Bool)

(declare-fun e!3065753 () Bool)

(assert (=> b!4904294 (= e!3065753 e!3065752)))

(declare-fun res!2094959 () Bool)

(assert (=> b!4904294 (=> res!2094959 e!3065752)))

(declare-fun call!340260 () Bool)

(assert (=> b!4904294 (= res!2094959 call!340260)))

(declare-fun d!1575960 () Bool)

(assert (=> d!1575960 e!3065749))

(declare-fun c!833503 () Bool)

(assert (=> d!1575960 (= c!833503 ((_ is EmptyExpr!13305) (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531)))))))

(assert (=> d!1575960 (= lt!2011849 e!3065755)))

(declare-fun c!833502 () Bool)

(assert (=> d!1575960 (= c!833502 (isEmpty!30400 (tail!9619 (_1!33690 lt!2011531))))))

(assert (=> d!1575960 (validRegex!5898 (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531))))))

(assert (=> d!1575960 (= (matchR!6572 (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531))) (tail!9619 (_1!33690 lt!2011531))) lt!2011849)))

(declare-fun b!4904295 () Bool)

(declare-fun res!2094956 () Bool)

(assert (=> b!4904295 (=> res!2094956 e!3065750)))

(assert (=> b!4904295 (= res!2094956 (not ((_ is ElementMatch!13305) (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531))))))))

(assert (=> b!4904295 (= e!3065751 e!3065750)))

(declare-fun b!4904296 () Bool)

(assert (=> b!4904296 (= e!3065751 (not lt!2011849))))

(declare-fun bm!340255 () Bool)

(assert (=> bm!340255 (= call!340260 (isEmpty!30400 (tail!9619 (_1!33690 lt!2011531))))))

(declare-fun b!4904297 () Bool)

(declare-fun res!2094954 () Bool)

(assert (=> b!4904297 (=> (not res!2094954) (not e!3065754))))

(assert (=> b!4904297 (= res!2094954 (isEmpty!30400 (tail!9619 (tail!9619 (_1!33690 lt!2011531)))))))

(declare-fun b!4904298 () Bool)

(assert (=> b!4904298 (= e!3065750 e!3065753)))

(declare-fun res!2094953 () Bool)

(assert (=> b!4904298 (=> (not res!2094953) (not e!3065753))))

(assert (=> b!4904298 (= res!2094953 (not lt!2011849))))

(declare-fun b!4904299 () Bool)

(assert (=> b!4904299 (= e!3065754 (= (head!10472 (tail!9619 (_1!33690 lt!2011531))) (c!833373 (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531))))))))

(declare-fun b!4904300 () Bool)

(declare-fun res!2094952 () Bool)

(assert (=> b!4904300 (=> res!2094952 e!3065752)))

(assert (=> b!4904300 (= res!2094952 (not (isEmpty!30400 (tail!9619 (tail!9619 (_1!33690 lt!2011531))))))))

(declare-fun b!4904301 () Bool)

(assert (=> b!4904301 (= e!3065755 (nullable!4571 (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531)))))))

(declare-fun b!4904302 () Bool)

(assert (=> b!4904302 (= e!3065749 (= lt!2011849 call!340260))))

(declare-fun b!4904303 () Bool)

(declare-fun res!2094955 () Bool)

(assert (=> b!4904303 (=> (not res!2094955) (not e!3065754))))

(assert (=> b!4904303 (= res!2094955 (not call!340260))))

(assert (= (and d!1575960 c!833502) b!4904301))

(assert (= (and d!1575960 (not c!833502)) b!4904291))

(assert (= (and d!1575960 c!833503) b!4904302))

(assert (= (and d!1575960 (not c!833503)) b!4904292))

(assert (= (and b!4904292 c!833504) b!4904296))

(assert (= (and b!4904292 (not c!833504)) b!4904295))

(assert (= (and b!4904295 (not res!2094956)) b!4904293))

(assert (= (and b!4904293 res!2094957) b!4904303))

(assert (= (and b!4904303 res!2094955) b!4904297))

(assert (= (and b!4904297 res!2094954) b!4904299))

(assert (= (and b!4904293 (not res!2094958)) b!4904298))

(assert (= (and b!4904298 res!2094953) b!4904294))

(assert (= (and b!4904294 (not res!2094959)) b!4904300))

(assert (= (and b!4904300 (not res!2094952)) b!4904290))

(assert (= (or b!4904302 b!4904294 b!4904303) bm!340255))

(assert (=> d!1575960 m!5912840))

(assert (=> d!1575960 m!5912844))

(assert (=> d!1575960 m!5912838))

(declare-fun m!5913238 () Bool)

(assert (=> d!1575960 m!5913238))

(assert (=> b!4904299 m!5912840))

(declare-fun m!5913240 () Bool)

(assert (=> b!4904299 m!5913240))

(assert (=> b!4904301 m!5912838))

(declare-fun m!5913242 () Bool)

(assert (=> b!4904301 m!5913242))

(assert (=> b!4904291 m!5912840))

(assert (=> b!4904291 m!5913240))

(assert (=> b!4904291 m!5912838))

(assert (=> b!4904291 m!5913240))

(declare-fun m!5913244 () Bool)

(assert (=> b!4904291 m!5913244))

(assert (=> b!4904291 m!5912840))

(declare-fun m!5913246 () Bool)

(assert (=> b!4904291 m!5913246))

(assert (=> b!4904291 m!5913244))

(assert (=> b!4904291 m!5913246))

(declare-fun m!5913248 () Bool)

(assert (=> b!4904291 m!5913248))

(assert (=> b!4904297 m!5912840))

(assert (=> b!4904297 m!5913246))

(assert (=> b!4904297 m!5913246))

(declare-fun m!5913250 () Bool)

(assert (=> b!4904297 m!5913250))

(assert (=> b!4904300 m!5912840))

(assert (=> b!4904300 m!5913246))

(assert (=> b!4904300 m!5913246))

(assert (=> b!4904300 m!5913250))

(assert (=> b!4904290 m!5912840))

(assert (=> b!4904290 m!5913240))

(assert (=> bm!340255 m!5912840))

(assert (=> bm!340255 m!5912844))

(assert (=> b!4903973 d!1575960))

(declare-fun call!340282 () Regex!13305)

(declare-fun c!833532 () Bool)

(declare-fun c!833533 () Bool)

(declare-fun bm!340276 () Bool)

(assert (=> bm!340276 (= call!340282 (derivativeStep!3891 (ite c!833532 (regTwo!27123 (regex!8230 rule!164)) (ite c!833533 (reg!13634 (regex!8230 rule!164)) (regOne!27122 (regex!8230 rule!164)))) (head!10472 (_1!33690 lt!2011531))))))

(declare-fun b!4904354 () Bool)

(declare-fun e!3065785 () Regex!13305)

(declare-fun e!3065783 () Regex!13305)

(assert (=> b!4904354 (= e!3065785 e!3065783)))

(assert (=> b!4904354 (= c!833533 ((_ is Star!13305) (regex!8230 rule!164)))))

(declare-fun bm!340277 () Bool)

(declare-fun call!340283 () Regex!13305)

(declare-fun call!340284 () Regex!13305)

(assert (=> bm!340277 (= call!340283 call!340284)))

(declare-fun b!4904355 () Bool)

(assert (=> b!4904355 (= c!833532 ((_ is Union!13305) (regex!8230 rule!164)))))

(declare-fun e!3065781 () Regex!13305)

(assert (=> b!4904355 (= e!3065781 e!3065785)))

(declare-fun bm!340278 () Bool)

(assert (=> bm!340278 (= call!340284 call!340282)))

(declare-fun b!4904356 () Bool)

(declare-fun call!340281 () Regex!13305)

(assert (=> b!4904356 (= e!3065785 (Union!13305 call!340281 call!340282))))

(declare-fun b!4904357 () Bool)

(assert (=> b!4904357 (= e!3065783 (Concat!21845 call!340284 (regex!8230 rule!164)))))

(declare-fun b!4904358 () Bool)

(declare-fun e!3065782 () Regex!13305)

(assert (=> b!4904358 (= e!3065782 (Union!13305 (Concat!21845 call!340283 (regTwo!27122 (regex!8230 rule!164))) EmptyLang!13305))))

(declare-fun b!4904359 () Bool)

(declare-fun e!3065784 () Regex!13305)

(assert (=> b!4904359 (= e!3065784 e!3065781)))

(declare-fun c!833531 () Bool)

(assert (=> b!4904359 (= c!833531 ((_ is ElementMatch!13305) (regex!8230 rule!164)))))

(declare-fun b!4904360 () Bool)

(assert (=> b!4904360 (= e!3065784 EmptyLang!13305)))

(declare-fun b!4904361 () Bool)

(assert (=> b!4904361 (= e!3065781 (ite (= (head!10472 (_1!33690 lt!2011531)) (c!833373 (regex!8230 rule!164))) EmptyExpr!13305 EmptyLang!13305))))

(declare-fun bm!340279 () Bool)

(assert (=> bm!340279 (= call!340281 (derivativeStep!3891 (ite c!833532 (regOne!27123 (regex!8230 rule!164)) (regTwo!27122 (regex!8230 rule!164))) (head!10472 (_1!33690 lt!2011531))))))

(declare-fun b!4904362 () Bool)

(declare-fun c!833530 () Bool)

(assert (=> b!4904362 (= c!833530 (nullable!4571 (regOne!27122 (regex!8230 rule!164))))))

(assert (=> b!4904362 (= e!3065783 e!3065782)))

(declare-fun b!4904363 () Bool)

(assert (=> b!4904363 (= e!3065782 (Union!13305 (Concat!21845 call!340283 (regTwo!27122 (regex!8230 rule!164))) call!340281))))

(declare-fun d!1575962 () Bool)

(declare-fun lt!2011858 () Regex!13305)

(assert (=> d!1575962 (validRegex!5898 lt!2011858)))

(assert (=> d!1575962 (= lt!2011858 e!3065784)))

(declare-fun c!833534 () Bool)

(assert (=> d!1575962 (= c!833534 (or ((_ is EmptyExpr!13305) (regex!8230 rule!164)) ((_ is EmptyLang!13305) (regex!8230 rule!164))))))

(assert (=> d!1575962 (validRegex!5898 (regex!8230 rule!164))))

(assert (=> d!1575962 (= (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 lt!2011531))) lt!2011858)))

(assert (= (and d!1575962 c!833534) b!4904360))

(assert (= (and d!1575962 (not c!833534)) b!4904359))

(assert (= (and b!4904359 c!833531) b!4904361))

(assert (= (and b!4904359 (not c!833531)) b!4904355))

(assert (= (and b!4904355 c!833532) b!4904356))

(assert (= (and b!4904355 (not c!833532)) b!4904354))

(assert (= (and b!4904354 c!833533) b!4904357))

(assert (= (and b!4904354 (not c!833533)) b!4904362))

(assert (= (and b!4904362 c!833530) b!4904363))

(assert (= (and b!4904362 (not c!833530)) b!4904358))

(assert (= (or b!4904363 b!4904358) bm!340277))

(assert (= (or b!4904357 bm!340277) bm!340278))

(assert (= (or b!4904356 b!4904363) bm!340279))

(assert (= (or b!4904356 bm!340278) bm!340276))

(assert (=> bm!340276 m!5912836))

(declare-fun m!5913264 () Bool)

(assert (=> bm!340276 m!5913264))

(assert (=> bm!340279 m!5912836))

(declare-fun m!5913266 () Bool)

(assert (=> bm!340279 m!5913266))

(declare-fun m!5913268 () Bool)

(assert (=> b!4904362 m!5913268))

(declare-fun m!5913270 () Bool)

(assert (=> d!1575962 m!5913270))

(assert (=> d!1575962 m!5912598))

(assert (=> b!4903973 d!1575962))

(declare-fun d!1575970 () Bool)

(assert (=> d!1575970 (= (head!10472 (_1!33690 lt!2011531)) (h!62983 (_1!33690 lt!2011531)))))

(assert (=> b!4903973 d!1575970))

(declare-fun d!1575972 () Bool)

(assert (=> d!1575972 (= (tail!9619 (_1!33690 lt!2011531)) (t!366751 (_1!33690 lt!2011531)))))

(assert (=> b!4903973 d!1575972))

(assert (=> d!1575732 d!1575736))

(declare-fun d!1575974 () Bool)

(assert (=> d!1575974 (= (inv!72978 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))) (isBalanced!4030 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))))

(declare-fun bs!1176939 () Bool)

(assert (= bs!1176939 d!1575974))

(declare-fun m!5913272 () Bool)

(assert (=> bs!1176939 m!5913272))

(assert (=> tb!259857 d!1575974))

(assert (=> b!4904010 d!1575790))

(assert (=> b!4904010 d!1575728))

(declare-fun d!1575976 () Bool)

(declare-fun lt!2011859 () Int)

(assert (=> d!1575976 (= lt!2011859 (size!37262 (list!17804 (seqFromList!5972 (_1!33690 lt!2011769)))))))

(assert (=> d!1575976 (= lt!2011859 (size!37266 (c!833374 (seqFromList!5972 (_1!33690 lt!2011769)))))))

(assert (=> d!1575976 (= (size!37264 (seqFromList!5972 (_1!33690 lt!2011769))) lt!2011859)))

(declare-fun bs!1176940 () Bool)

(assert (= bs!1176940 d!1575976))

(assert (=> bs!1176940 m!5912882))

(declare-fun m!5913274 () Bool)

(assert (=> bs!1176940 m!5913274))

(assert (=> bs!1176940 m!5913274))

(declare-fun m!5913276 () Bool)

(assert (=> bs!1176940 m!5913276))

(declare-fun m!5913278 () Bool)

(assert (=> bs!1176940 m!5913278))

(assert (=> b!4904010 d!1575976))

(declare-fun bs!1176943 () Bool)

(declare-fun d!1575978 () Bool)

(assert (= bs!1176943 (and d!1575978 b!4903689)))

(declare-fun lambda!244446 () Int)

(assert (=> bs!1176943 (= lambda!244446 lambda!244434)))

(declare-fun bs!1176944 () Bool)

(assert (= bs!1176944 (and d!1575978 d!1575736)))

(assert (=> bs!1176944 (= lambda!244446 lambda!244437)))

(declare-fun b!4904407 () Bool)

(declare-fun e!3065810 () Bool)

(assert (=> b!4904407 (= e!3065810 true)))

(assert (=> d!1575978 e!3065810))

(assert (= d!1575978 b!4904407))

(assert (=> b!4904407 (< (dynLambda!22798 order!25729 (toValue!11145 (transformation!8230 rule!164))) (dynLambda!22799 order!25731 lambda!244446))))

(assert (=> b!4904407 (< (dynLambda!22800 order!25733 (toChars!11004 (transformation!8230 rule!164))) (dynLambda!22799 order!25731 lambda!244446))))

(assert (=> d!1575978 (= (list!17804 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 (_1!33690 lt!2011769))))) (list!17804 (seqFromList!5972 (_1!33690 lt!2011769))))))

(declare-fun lt!2011892 () Unit!146675)

(assert (=> d!1575978 (= lt!2011892 (ForallOf!1167 lambda!244446 (seqFromList!5972 (_1!33690 lt!2011769))))))

(assert (=> d!1575978 (= (lemmaSemiInverse!2574 (transformation!8230 rule!164) (seqFromList!5972 (_1!33690 lt!2011769))) lt!2011892)))

(declare-fun b_lambda!195239 () Bool)

(assert (=> (not b_lambda!195239) (not d!1575978)))

(declare-fun t!366777 () Bool)

(declare-fun tb!259867 () Bool)

(assert (=> (and b!4903682 (= (toChars!11004 (transformation!8230 rule!164)) (toChars!11004 (transformation!8230 rule!164))) t!366777) tb!259867))

(declare-fun b!4904408 () Bool)

(declare-fun e!3065811 () Bool)

(declare-fun tp!1379767 () Bool)

(assert (=> b!4904408 (= e!3065811 (and (inv!72980 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 (_1!33690 lt!2011769)))))) tp!1379767))))

(declare-fun result!323594 () Bool)

(assert (=> tb!259867 (= result!323594 (and (inv!72978 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 (_1!33690 lt!2011769))))) e!3065811))))

(assert (= tb!259867 b!4904408))

(declare-fun m!5913360 () Bool)

(assert (=> b!4904408 m!5913360))

(declare-fun m!5913362 () Bool)

(assert (=> tb!259867 m!5913362))

(assert (=> d!1575978 t!366777))

(declare-fun b_and!346311 () Bool)

(assert (= b_and!346303 (and (=> t!366777 result!323594) b_and!346311)))

(declare-fun b_lambda!195241 () Bool)

(assert (=> (not b_lambda!195241) (not d!1575978)))

(declare-fun t!366779 () Bool)

(declare-fun tb!259869 () Bool)

(assert (=> (and b!4903682 (= (toValue!11145 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 rule!164))) t!366779) tb!259869))

(declare-fun result!323596 () Bool)

(assert (=> tb!259869 (= result!323596 (inv!21 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 (_1!33690 lt!2011769)))))))

(declare-fun m!5913364 () Bool)

(assert (=> tb!259869 m!5913364))

(assert (=> d!1575978 t!366779))

(declare-fun b_and!346313 () Bool)

(assert (= b_and!346309 (and (=> t!366779 result!323596) b_and!346313)))

(assert (=> d!1575978 m!5912882))

(assert (=> d!1575978 m!5913274))

(assert (=> d!1575978 m!5912882))

(declare-fun m!5913366 () Bool)

(assert (=> d!1575978 m!5913366))

(assert (=> d!1575978 m!5913366))

(declare-fun m!5913368 () Bool)

(assert (=> d!1575978 m!5913368))

(assert (=> d!1575978 m!5912882))

(declare-fun m!5913370 () Bool)

(assert (=> d!1575978 m!5913370))

(assert (=> d!1575978 m!5913368))

(declare-fun m!5913374 () Bool)

(assert (=> d!1575978 m!5913374))

(assert (=> b!4904010 d!1575978))

(declare-fun d!1576000 () Bool)

(assert (=> d!1576000 (= (apply!13574 (transformation!8230 rule!164) (seqFromList!5972 (_1!33690 lt!2011769))) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 (_1!33690 lt!2011769))))))

(declare-fun b_lambda!195245 () Bool)

(assert (=> (not b_lambda!195245) (not d!1576000)))

(assert (=> d!1576000 t!366779))

(declare-fun b_and!346317 () Bool)

(assert (= b_and!346313 (and (=> t!366779 result!323596) b_and!346317)))

(assert (=> d!1576000 m!5912882))

(assert (=> d!1576000 m!5913366))

(assert (=> b!4904010 d!1576000))

(declare-fun d!1576006 () Bool)

(assert (=> d!1576006 (= (seqFromList!5972 (_1!33690 lt!2011769)) (fromListB!2701 (_1!33690 lt!2011769)))))

(declare-fun bs!1176946 () Bool)

(assert (= bs!1176946 d!1576006))

(declare-fun m!5913380 () Bool)

(assert (=> bs!1176946 m!5913380))

(assert (=> b!4904010 d!1576006))

(assert (=> b!4904010 d!1575734))

(assert (=> b!4904010 d!1575958))

(assert (=> b!4904010 d!1575744))

(declare-fun b!4904411 () Bool)

(declare-fun e!3065818 () Bool)

(assert (=> b!4904411 (= e!3065818 (not (= (head!10472 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))) (c!833373 (regex!8230 rule!164)))))))

(declare-fun b!4904412 () Bool)

(declare-fun e!3065821 () Bool)

(assert (=> b!4904412 (= e!3065821 (matchR!6572 (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528))))) (tail!9619 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528))))))))

(declare-fun b!4904413 () Bool)

(declare-fun e!3065815 () Bool)

(declare-fun e!3065817 () Bool)

(assert (=> b!4904413 (= e!3065815 e!3065817)))

(declare-fun c!833555 () Bool)

(assert (=> b!4904413 (= c!833555 ((_ is EmptyLang!13305) (regex!8230 rule!164)))))

(declare-fun b!4904414 () Bool)

(declare-fun res!2094973 () Bool)

(declare-fun e!3065816 () Bool)

(assert (=> b!4904414 (=> res!2094973 e!3065816)))

(declare-fun e!3065820 () Bool)

(assert (=> b!4904414 (= res!2094973 e!3065820)))

(declare-fun res!2094972 () Bool)

(assert (=> b!4904414 (=> (not res!2094972) (not e!3065820))))

(declare-fun lt!2011894 () Bool)

(assert (=> b!4904414 (= res!2094972 lt!2011894)))

(declare-fun b!4904415 () Bool)

(declare-fun e!3065819 () Bool)

(assert (=> b!4904415 (= e!3065819 e!3065818)))

(declare-fun res!2094974 () Bool)

(assert (=> b!4904415 (=> res!2094974 e!3065818)))

(declare-fun call!340293 () Bool)

(assert (=> b!4904415 (= res!2094974 call!340293)))

(declare-fun d!1576008 () Bool)

(assert (=> d!1576008 e!3065815))

(declare-fun c!833554 () Bool)

(assert (=> d!1576008 (= c!833554 ((_ is EmptyExpr!13305) (regex!8230 rule!164)))))

(assert (=> d!1576008 (= lt!2011894 e!3065821)))

(declare-fun c!833553 () Bool)

(assert (=> d!1576008 (= c!833553 (isEmpty!30400 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))))

(assert (=> d!1576008 (validRegex!5898 (regex!8230 rule!164))))

(assert (=> d!1576008 (= (matchR!6572 (regex!8230 rule!164) (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))) lt!2011894)))

(declare-fun b!4904416 () Bool)

(declare-fun res!2094971 () Bool)

(assert (=> b!4904416 (=> res!2094971 e!3065816)))

(assert (=> b!4904416 (= res!2094971 (not ((_ is ElementMatch!13305) (regex!8230 rule!164))))))

(assert (=> b!4904416 (= e!3065817 e!3065816)))

(declare-fun b!4904417 () Bool)

(assert (=> b!4904417 (= e!3065817 (not lt!2011894))))

(declare-fun bm!340288 () Bool)

(assert (=> bm!340288 (= call!340293 (isEmpty!30400 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))))

(declare-fun b!4904418 () Bool)

(declare-fun res!2094969 () Bool)

(assert (=> b!4904418 (=> (not res!2094969) (not e!3065820))))

(assert (=> b!4904418 (= res!2094969 (isEmpty!30400 (tail!9619 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528))))))))

(declare-fun b!4904419 () Bool)

(assert (=> b!4904419 (= e!3065816 e!3065819)))

(declare-fun res!2094968 () Bool)

(assert (=> b!4904419 (=> (not res!2094968) (not e!3065819))))

(assert (=> b!4904419 (= res!2094968 (not lt!2011894))))

(declare-fun b!4904420 () Bool)

(assert (=> b!4904420 (= e!3065820 (= (head!10472 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))) (c!833373 (regex!8230 rule!164))))))

(declare-fun b!4904421 () Bool)

(declare-fun res!2094967 () Bool)

(assert (=> b!4904421 (=> res!2094967 e!3065818)))

(assert (=> b!4904421 (= res!2094967 (not (isEmpty!30400 (tail!9619 (_1!33690 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 (size!37262 Nil!56535) lt!2011528 lt!2011528 (size!37262 lt!2011528)))))))))

(declare-fun b!4904422 () Bool)

(assert (=> b!4904422 (= e!3065821 (nullable!4571 (regex!8230 rule!164)))))

(declare-fun b!4904423 () Bool)

(assert (=> b!4904423 (= e!3065815 (= lt!2011894 call!340293))))

(declare-fun b!4904424 () Bool)

(declare-fun res!2094970 () Bool)

(assert (=> b!4904424 (=> (not res!2094970) (not e!3065820))))

(assert (=> b!4904424 (= res!2094970 (not call!340293))))

(assert (= (and d!1576008 c!833553) b!4904422))

(assert (= (and d!1576008 (not c!833553)) b!4904412))

(assert (= (and d!1576008 c!833554) b!4904423))

(assert (= (and d!1576008 (not c!833554)) b!4904413))

(assert (= (and b!4904413 c!833555) b!4904417))

(assert (= (and b!4904413 (not c!833555)) b!4904416))

(assert (= (and b!4904416 (not res!2094971)) b!4904414))

(assert (= (and b!4904414 res!2094972) b!4904424))

(assert (= (and b!4904424 res!2094970) b!4904418))

(assert (= (and b!4904418 res!2094969) b!4904420))

(assert (= (and b!4904414 (not res!2094973)) b!4904419))

(assert (= (and b!4904419 res!2094968) b!4904415))

(assert (= (and b!4904415 (not res!2094974)) b!4904421))

(assert (= (and b!4904421 (not res!2094967)) b!4904411))

(assert (= (or b!4904423 b!4904415 b!4904424) bm!340288))

(assert (=> d!1576008 m!5912600))

(assert (=> d!1576008 m!5912598))

(declare-fun m!5913384 () Bool)

(assert (=> b!4904420 m!5913384))

(assert (=> b!4904422 m!5912806))

(assert (=> b!4904412 m!5913384))

(assert (=> b!4904412 m!5913384))

(declare-fun m!5913386 () Bool)

(assert (=> b!4904412 m!5913386))

(declare-fun m!5913388 () Bool)

(assert (=> b!4904412 m!5913388))

(assert (=> b!4904412 m!5913386))

(assert (=> b!4904412 m!5913388))

(declare-fun m!5913390 () Bool)

(assert (=> b!4904412 m!5913390))

(assert (=> b!4904418 m!5913388))

(assert (=> b!4904418 m!5913388))

(declare-fun m!5913392 () Bool)

(assert (=> b!4904418 m!5913392))

(assert (=> b!4904421 m!5913388))

(assert (=> b!4904421 m!5913388))

(assert (=> b!4904421 m!5913392))

(assert (=> b!4904411 m!5913384))

(assert (=> bm!340288 m!5912600))

(assert (=> b!4904012 d!1576008))

(assert (=> b!4904012 d!1575744))

(assert (=> b!4904012 d!1575734))

(assert (=> b!4904012 d!1575790))

(declare-fun d!1576012 () Bool)

(assert (=> d!1576012 (dynLambda!22804 lambda!244434 (_1!33689 lt!2011532))))

(assert (=> d!1576012 true))

(declare-fun _$1!11208 () Unit!146675)

(assert (=> d!1576012 (= (choose!35811 lambda!244434 (_1!33689 lt!2011532)) _$1!11208)))

(declare-fun b_lambda!195247 () Bool)

(assert (=> (not b_lambda!195247) (not d!1576012)))

(declare-fun bs!1176947 () Bool)

(assert (= bs!1176947 d!1576012))

(assert (=> bs!1176947 m!5912864))

(assert (=> d!1575808 d!1576012))

(assert (=> d!1575808 d!1575796))

(declare-fun d!1576014 () Bool)

(declare-fun nullableFct!1244 (Regex!13305) Bool)

(assert (=> d!1576014 (= (nullable!4571 (regex!8230 rule!164)) (nullableFct!1244 (regex!8230 rule!164)))))

(declare-fun bs!1176948 () Bool)

(assert (= bs!1176948 d!1576014))

(declare-fun m!5913394 () Bool)

(assert (=> bs!1176948 m!5913394))

(assert (=> b!4903942 d!1576014))

(declare-fun d!1576016 () Bool)

(declare-fun e!3065829 () Bool)

(assert (=> d!1576016 e!3065829))

(declare-fun res!2094980 () Bool)

(assert (=> d!1576016 (=> (not res!2094980) (not e!3065829))))

(declare-fun lt!2011901 () BalanceConc!29026)

(assert (=> d!1576016 (= res!2094980 (= (list!17804 lt!2011901) lt!2011527))))

(declare-fun fromList!937 (List!56659) Conc!14798)

(assert (=> d!1576016 (= lt!2011901 (BalanceConc!29027 (fromList!937 lt!2011527)))))

(assert (=> d!1576016 (= (fromListB!2701 lt!2011527) lt!2011901)))

(declare-fun b!4904432 () Bool)

(assert (=> b!4904432 (= e!3065829 (isBalanced!4030 (fromList!937 lt!2011527)))))

(assert (= (and d!1576016 res!2094980) b!4904432))

(declare-fun m!5913410 () Bool)

(assert (=> d!1576016 m!5913410))

(declare-fun m!5913412 () Bool)

(assert (=> d!1576016 m!5913412))

(assert (=> b!4904432 m!5913412))

(assert (=> b!4904432 m!5913412))

(declare-fun m!5913414 () Bool)

(assert (=> b!4904432 m!5913414))

(assert (=> d!1575814 d!1576016))

(declare-fun b!4904448 () Bool)

(declare-fun e!3065839 () List!56659)

(assert (=> b!4904448 (= e!3065839 (Cons!56535 (h!62983 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))) (++!12259 (t!366751 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))) (_2!33692 (get!19551 lt!2011767)))))))

(declare-fun d!1576028 () Bool)

(declare-fun e!3065838 () Bool)

(assert (=> d!1576028 e!3065838))

(declare-fun res!2094986 () Bool)

(assert (=> d!1576028 (=> (not res!2094986) (not e!3065838))))

(declare-fun lt!2011907 () List!56659)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10036 (List!56659) (InoxSet C!26808))

(assert (=> d!1576028 (= res!2094986 (= (content!10036 lt!2011907) ((_ map or) (content!10036 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))) (content!10036 (_2!33692 (get!19551 lt!2011767))))))))

(assert (=> d!1576028 (= lt!2011907 e!3065839)))

(declare-fun c!833562 () Bool)

(assert (=> d!1576028 (= c!833562 ((_ is Nil!56535) (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))))))

(assert (=> d!1576028 (= (++!12259 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767)))) (_2!33692 (get!19551 lt!2011767))) lt!2011907)))

(declare-fun b!4904449 () Bool)

(declare-fun res!2094985 () Bool)

(assert (=> b!4904449 (=> (not res!2094985) (not e!3065838))))

(assert (=> b!4904449 (= res!2094985 (= (size!37262 lt!2011907) (+ (size!37262 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))) (size!37262 (_2!33692 (get!19551 lt!2011767))))))))

(declare-fun b!4904447 () Bool)

(assert (=> b!4904447 (= e!3065839 (_2!33692 (get!19551 lt!2011767)))))

(declare-fun b!4904450 () Bool)

(assert (=> b!4904450 (= e!3065838 (or (not (= (_2!33692 (get!19551 lt!2011767)) Nil!56535)) (= lt!2011907 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767)))))))))

(assert (= (and d!1576028 c!833562) b!4904447))

(assert (= (and d!1576028 (not c!833562)) b!4904448))

(assert (= (and d!1576028 res!2094986) b!4904449))

(assert (= (and b!4904449 res!2094985) b!4904450))

(declare-fun m!5913428 () Bool)

(assert (=> b!4904448 m!5913428))

(declare-fun m!5913430 () Bool)

(assert (=> d!1576028 m!5913430))

(assert (=> d!1576028 m!5912878))

(declare-fun m!5913432 () Bool)

(assert (=> d!1576028 m!5913432))

(declare-fun m!5913434 () Bool)

(assert (=> d!1576028 m!5913434))

(declare-fun m!5913436 () Bool)

(assert (=> b!4904449 m!5913436))

(assert (=> b!4904449 m!5912878))

(declare-fun m!5913438 () Bool)

(assert (=> b!4904449 m!5913438))

(assert (=> b!4904449 m!5912890))

(assert (=> b!4904014 d!1576028))

(declare-fun d!1576032 () Bool)

(assert (=> d!1576032 (= (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767)))) (list!17806 (c!833374 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))))))

(declare-fun bs!1176953 () Bool)

(assert (= bs!1176953 d!1576032))

(declare-fun m!5913444 () Bool)

(assert (=> bs!1176953 m!5913444))

(assert (=> b!4904014 d!1576032))

(declare-fun d!1576036 () Bool)

(declare-fun lt!2011912 () BalanceConc!29026)

(assert (=> d!1576036 (= (list!17804 lt!2011912) (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767))))))

(assert (=> d!1576036 (= lt!2011912 (dynLambda!22806 (toChars!11004 (transformation!8230 (rule!11426 (_1!33692 (get!19551 lt!2011767))))) (value!263687 (_1!33692 (get!19551 lt!2011767)))))))

(assert (=> d!1576036 (= (charsOf!5386 (_1!33692 (get!19551 lt!2011767))) lt!2011912)))

(declare-fun b_lambda!195255 () Bool)

(assert (=> (not b_lambda!195255) (not d!1576036)))

(declare-fun t!366787 () Bool)

(declare-fun tb!259877 () Bool)

(assert (=> (and b!4903682 (= (toChars!11004 (transformation!8230 rule!164)) (toChars!11004 (transformation!8230 (rule!11426 (_1!33692 (get!19551 lt!2011767)))))) t!366787) tb!259877))

(declare-fun b!4904461 () Bool)

(declare-fun e!3065845 () Bool)

(declare-fun tp!1379769 () Bool)

(assert (=> b!4904461 (= e!3065845 (and (inv!72980 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 (rule!11426 (_1!33692 (get!19551 lt!2011767))))) (value!263687 (_1!33692 (get!19551 lt!2011767)))))) tp!1379769))))

(declare-fun result!323604 () Bool)

(assert (=> tb!259877 (= result!323604 (and (inv!72978 (dynLambda!22806 (toChars!11004 (transformation!8230 (rule!11426 (_1!33692 (get!19551 lt!2011767))))) (value!263687 (_1!33692 (get!19551 lt!2011767))))) e!3065845))))

(assert (= tb!259877 b!4904461))

(declare-fun m!5913454 () Bool)

(assert (=> b!4904461 m!5913454))

(declare-fun m!5913456 () Bool)

(assert (=> tb!259877 m!5913456))

(assert (=> d!1576036 t!366787))

(declare-fun b_and!346325 () Bool)

(assert (= b_and!346311 (and (=> t!366787 result!323604) b_and!346325)))

(declare-fun m!5913458 () Bool)

(assert (=> d!1576036 m!5913458))

(declare-fun m!5913460 () Bool)

(assert (=> d!1576036 m!5913460))

(assert (=> b!4904014 d!1576036))

(assert (=> b!4904014 d!1575928))

(declare-fun b!4904484 () Bool)

(declare-fun e!3065857 () Bool)

(declare-fun inv!17 (TokenValue!8540) Bool)

(assert (=> b!4904484 (= e!3065857 (inv!17 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))

(declare-fun b!4904485 () Bool)

(declare-fun res!2095001 () Bool)

(declare-fun e!3065856 () Bool)

(assert (=> b!4904485 (=> res!2095001 e!3065856)))

(assert (=> b!4904485 (= res!2095001 (not ((_ is IntegerValue!25622) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))))))

(assert (=> b!4904485 (= e!3065857 e!3065856)))

(declare-fun b!4904486 () Bool)

(declare-fun e!3065858 () Bool)

(declare-fun inv!16 (TokenValue!8540) Bool)

(assert (=> b!4904486 (= e!3065858 (inv!16 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))

(declare-fun b!4904487 () Bool)

(assert (=> b!4904487 (= e!3065858 e!3065857)))

(declare-fun c!833573 () Bool)

(assert (=> b!4904487 (= c!833573 ((_ is IntegerValue!25621) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))

(declare-fun b!4904488 () Bool)

(declare-fun inv!15 (TokenValue!8540) Bool)

(assert (=> b!4904488 (= e!3065856 (inv!15 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))

(declare-fun d!1576042 () Bool)

(declare-fun c!833572 () Bool)

(assert (=> d!1576042 (= c!833572 ((_ is IntegerValue!25620) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))

(assert (=> d!1576042 (= (inv!21 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))) e!3065858)))

(assert (= (and d!1576042 c!833572) b!4904486))

(assert (= (and d!1576042 (not c!833572)) b!4904487))

(assert (= (and b!4904487 c!833573) b!4904484))

(assert (= (and b!4904487 (not c!833573)) b!4904485))

(assert (= (and b!4904485 (not res!2095001)) b!4904488))

(declare-fun m!5913462 () Bool)

(assert (=> b!4904484 m!5913462))

(declare-fun m!5913464 () Bool)

(assert (=> b!4904486 m!5913464))

(declare-fun m!5913466 () Bool)

(assert (=> b!4904488 m!5913466))

(assert (=> tb!259859 d!1576042))

(assert (=> bm!340233 d!1575788))

(declare-fun b!4904506 () Bool)

(declare-fun e!3065868 () Bool)

(assert (=> b!4904506 (= e!3065868 (>= (size!37262 (++!12259 Nil!56535 lt!2011528)) (size!37262 Nil!56535)))))

(declare-fun b!4904504 () Bool)

(declare-fun res!2095017 () Bool)

(declare-fun e!3065867 () Bool)

(assert (=> b!4904504 (=> (not res!2095017) (not e!3065867))))

(assert (=> b!4904504 (= res!2095017 (= (head!10472 Nil!56535) (head!10472 (++!12259 Nil!56535 lt!2011528))))))

(declare-fun d!1576044 () Bool)

(assert (=> d!1576044 e!3065868))

(declare-fun res!2095019 () Bool)

(assert (=> d!1576044 (=> res!2095019 e!3065868)))

(declare-fun lt!2011915 () Bool)

(assert (=> d!1576044 (= res!2095019 (not lt!2011915))))

(declare-fun e!3065869 () Bool)

(assert (=> d!1576044 (= lt!2011915 e!3065869)))

(declare-fun res!2095018 () Bool)

(assert (=> d!1576044 (=> res!2095018 e!3065869)))

(assert (=> d!1576044 (= res!2095018 ((_ is Nil!56535) Nil!56535))))

(assert (=> d!1576044 (= (isPrefix!4912 Nil!56535 (++!12259 Nil!56535 lt!2011528)) lt!2011915)))

(declare-fun b!4904503 () Bool)

(assert (=> b!4904503 (= e!3065869 e!3065867)))

(declare-fun res!2095016 () Bool)

(assert (=> b!4904503 (=> (not res!2095016) (not e!3065867))))

(assert (=> b!4904503 (= res!2095016 (not ((_ is Nil!56535) (++!12259 Nil!56535 lt!2011528))))))

(declare-fun b!4904505 () Bool)

(assert (=> b!4904505 (= e!3065867 (isPrefix!4912 (tail!9619 Nil!56535) (tail!9619 (++!12259 Nil!56535 lt!2011528))))))

(assert (= (and d!1576044 (not res!2095018)) b!4904503))

(assert (= (and b!4904503 res!2095016) b!4904504))

(assert (= (and b!4904504 res!2095017) b!4904505))

(assert (= (and d!1576044 (not res!2095019)) b!4904506))

(assert (=> b!4904506 m!5912782))

(declare-fun m!5913476 () Bool)

(assert (=> b!4904506 m!5913476))

(assert (=> b!4904506 m!5912534))

(declare-fun m!5913478 () Bool)

(assert (=> b!4904504 m!5913478))

(assert (=> b!4904504 m!5912782))

(declare-fun m!5913480 () Bool)

(assert (=> b!4904504 m!5913480))

(declare-fun m!5913482 () Bool)

(assert (=> b!4904505 m!5913482))

(assert (=> b!4904505 m!5912782))

(declare-fun m!5913484 () Bool)

(assert (=> b!4904505 m!5913484))

(assert (=> b!4904505 m!5913482))

(assert (=> b!4904505 m!5913484))

(declare-fun m!5913486 () Bool)

(assert (=> b!4904505 m!5913486))

(assert (=> d!1575744 d!1576044))

(declare-fun b!4904508 () Bool)

(declare-fun e!3065871 () List!56659)

(assert (=> b!4904508 (= e!3065871 (Cons!56535 (h!62983 Nil!56535) (++!12259 (t!366751 Nil!56535) lt!2011528)))))

(declare-fun d!1576048 () Bool)

(declare-fun e!3065870 () Bool)

(assert (=> d!1576048 e!3065870))

(declare-fun res!2095021 () Bool)

(assert (=> d!1576048 (=> (not res!2095021) (not e!3065870))))

(declare-fun lt!2011916 () List!56659)

(assert (=> d!1576048 (= res!2095021 (= (content!10036 lt!2011916) ((_ map or) (content!10036 Nil!56535) (content!10036 lt!2011528))))))

(assert (=> d!1576048 (= lt!2011916 e!3065871)))

(declare-fun c!833574 () Bool)

(assert (=> d!1576048 (= c!833574 ((_ is Nil!56535) Nil!56535))))

(assert (=> d!1576048 (= (++!12259 Nil!56535 lt!2011528) lt!2011916)))

(declare-fun b!4904509 () Bool)

(declare-fun res!2095020 () Bool)

(assert (=> b!4904509 (=> (not res!2095020) (not e!3065870))))

(assert (=> b!4904509 (= res!2095020 (= (size!37262 lt!2011916) (+ (size!37262 Nil!56535) (size!37262 lt!2011528))))))

(declare-fun b!4904507 () Bool)

(assert (=> b!4904507 (= e!3065871 lt!2011528)))

(declare-fun b!4904510 () Bool)

(assert (=> b!4904510 (= e!3065870 (or (not (= lt!2011528 Nil!56535)) (= lt!2011916 Nil!56535)))))

(assert (= (and d!1576048 c!833574) b!4904507))

(assert (= (and d!1576048 (not c!833574)) b!4904508))

(assert (= (and d!1576048 res!2095021) b!4904509))

(assert (= (and b!4904509 res!2095020) b!4904510))

(declare-fun m!5913488 () Bool)

(assert (=> b!4904508 m!5913488))

(declare-fun m!5913490 () Bool)

(assert (=> d!1576048 m!5913490))

(declare-fun m!5913492 () Bool)

(assert (=> d!1576048 m!5913492))

(declare-fun m!5913494 () Bool)

(assert (=> d!1576048 m!5913494))

(declare-fun m!5913496 () Bool)

(assert (=> b!4904509 m!5913496))

(assert (=> b!4904509 m!5912534))

(assert (=> b!4904509 m!5912536))

(assert (=> d!1575744 d!1576048))

(assert (=> d!1575744 d!1575940))

(declare-fun d!1576050 () Bool)

(assert (=> d!1576050 (isPrefix!4912 Nil!56535 (++!12259 Nil!56535 lt!2011528))))

(declare-fun lt!2011919 () Unit!146675)

(declare-fun choose!35820 (List!56659 List!56659) Unit!146675)

(assert (=> d!1576050 (= lt!2011919 (choose!35820 Nil!56535 lt!2011528))))

(assert (=> d!1576050 (= (lemmaConcatTwoListThenFirstIsPrefix!3136 Nil!56535 lt!2011528) lt!2011919)))

(declare-fun bs!1176955 () Bool)

(assert (= bs!1176955 d!1576050))

(assert (=> bs!1176955 m!5912782))

(assert (=> bs!1176955 m!5912782))

(assert (=> bs!1176955 m!5912790))

(declare-fun m!5913498 () Bool)

(assert (=> bs!1176955 m!5913498))

(assert (=> d!1575744 d!1576050))

(declare-fun d!1576052 () Bool)

(assert (=> d!1576052 (= lt!2011528 lt!2011721)))

(declare-fun lt!2011922 () Unit!146675)

(declare-fun choose!35821 (List!56659 List!56659 List!56659 List!56659 List!56659) Unit!146675)

(assert (=> d!1576052 (= lt!2011922 (choose!35821 Nil!56535 lt!2011528 Nil!56535 lt!2011721 lt!2011528))))

(assert (=> d!1576052 (isPrefix!4912 Nil!56535 lt!2011528)))

(assert (=> d!1576052 (= (lemmaSamePrefixThenSameSuffix!2316 Nil!56535 lt!2011528 Nil!56535 lt!2011721 lt!2011528) lt!2011922)))

(declare-fun bs!1176956 () Bool)

(assert (= bs!1176956 d!1576052))

(declare-fun m!5913500 () Bool)

(assert (=> bs!1176956 m!5913500))

(declare-fun m!5913504 () Bool)

(assert (=> bs!1176956 m!5913504))

(assert (=> d!1575744 d!1576052))

(declare-fun d!1576056 () Bool)

(declare-fun lostCauseFct!278 (Regex!13305) Bool)

(assert (=> d!1576056 (= (lostCause!1099 (regex!8230 rule!164)) (lostCauseFct!278 (regex!8230 rule!164)))))

(declare-fun bs!1176957 () Bool)

(assert (= bs!1176957 d!1576056))

(declare-fun m!5913506 () Bool)

(assert (=> bs!1176957 m!5913506))

(assert (=> d!1575744 d!1576056))

(declare-fun d!1576060 () Bool)

(declare-fun lt!2011937 () List!56659)

(assert (=> d!1576060 (= (++!12259 Nil!56535 lt!2011937) lt!2011528)))

(declare-fun e!3065882 () List!56659)

(assert (=> d!1576060 (= lt!2011937 e!3065882)))

(declare-fun c!833578 () Bool)

(assert (=> d!1576060 (= c!833578 ((_ is Cons!56535) Nil!56535))))

(assert (=> d!1576060 (>= (size!37262 lt!2011528) (size!37262 Nil!56535))))

(assert (=> d!1576060 (= (getSuffix!2900 lt!2011528 Nil!56535) lt!2011937)))

(declare-fun b!4904526 () Bool)

(assert (=> b!4904526 (= e!3065882 (getSuffix!2900 (tail!9619 lt!2011528) (t!366751 Nil!56535)))))

(declare-fun b!4904527 () Bool)

(assert (=> b!4904527 (= e!3065882 lt!2011528)))

(assert (= (and d!1576060 c!833578) b!4904526))

(assert (= (and d!1576060 (not c!833578)) b!4904527))

(declare-fun m!5913534 () Bool)

(assert (=> d!1576060 m!5913534))

(assert (=> d!1576060 m!5912536))

(assert (=> d!1576060 m!5912534))

(assert (=> b!4904526 m!5912800))

(assert (=> b!4904526 m!5912800))

(declare-fun m!5913540 () Bool)

(assert (=> b!4904526 m!5913540))

(assert (=> d!1575744 d!1576060))

(declare-fun b!4904533 () Bool)

(declare-fun e!3065885 () List!56659)

(assert (=> b!4904533 (= e!3065885 (Cons!56535 (h!62983 (_1!33690 lt!2011719)) (++!12259 (t!366751 (_1!33690 lt!2011719)) (_2!33690 lt!2011719))))))

(declare-fun d!1576072 () Bool)

(declare-fun e!3065884 () Bool)

(assert (=> d!1576072 e!3065884))

(declare-fun res!2095026 () Bool)

(assert (=> d!1576072 (=> (not res!2095026) (not e!3065884))))

(declare-fun lt!2011938 () List!56659)

(assert (=> d!1576072 (= res!2095026 (= (content!10036 lt!2011938) ((_ map or) (content!10036 (_1!33690 lt!2011719)) (content!10036 (_2!33690 lt!2011719)))))))

(assert (=> d!1576072 (= lt!2011938 e!3065885)))

(declare-fun c!833579 () Bool)

(assert (=> d!1576072 (= c!833579 ((_ is Nil!56535) (_1!33690 lt!2011719)))))

(assert (=> d!1576072 (= (++!12259 (_1!33690 lt!2011719) (_2!33690 lt!2011719)) lt!2011938)))

(declare-fun b!4904534 () Bool)

(declare-fun res!2095025 () Bool)

(assert (=> b!4904534 (=> (not res!2095025) (not e!3065884))))

(assert (=> b!4904534 (= res!2095025 (= (size!37262 lt!2011938) (+ (size!37262 (_1!33690 lt!2011719)) (size!37262 (_2!33690 lt!2011719)))))))

(declare-fun b!4904532 () Bool)

(assert (=> b!4904532 (= e!3065885 (_2!33690 lt!2011719))))

(declare-fun b!4904535 () Bool)

(assert (=> b!4904535 (= e!3065884 (or (not (= (_2!33690 lt!2011719) Nil!56535)) (= lt!2011938 (_1!33690 lt!2011719))))))

(assert (= (and d!1576072 c!833579) b!4904532))

(assert (= (and d!1576072 (not c!833579)) b!4904533))

(assert (= (and d!1576072 res!2095026) b!4904534))

(assert (= (and b!4904534 res!2095025) b!4904535))

(declare-fun m!5913542 () Bool)

(assert (=> b!4904533 m!5913542))

(declare-fun m!5913544 () Bool)

(assert (=> d!1576072 m!5913544))

(declare-fun m!5913546 () Bool)

(assert (=> d!1576072 m!5913546))

(declare-fun m!5913548 () Bool)

(assert (=> d!1576072 m!5913548))

(declare-fun m!5913550 () Bool)

(assert (=> b!4904534 m!5913550))

(assert (=> b!4904534 m!5912780))

(declare-fun m!5913552 () Bool)

(assert (=> b!4904534 m!5913552))

(assert (=> d!1575744 d!1576072))

(declare-fun d!1576074 () Bool)

(assert (=> d!1576074 (= (isEmpty!30400 (tail!9619 (_1!33690 lt!2011531))) ((_ is Nil!56535) (tail!9619 (_1!33690 lt!2011531))))))

(assert (=> b!4903979 d!1576074))

(assert (=> b!4903979 d!1575972))

(assert (=> b!4903981 d!1575970))

(declare-fun d!1576076 () Bool)

(assert (=> d!1576076 (= (inv!72978 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))) (isBalanced!4030 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))))

(declare-fun bs!1176961 () Bool)

(assert (= bs!1176961 d!1576076))

(declare-fun m!5913554 () Bool)

(assert (=> bs!1176961 m!5913554))

(assert (=> tb!259861 d!1576076))

(declare-fun d!1576078 () Bool)

(assert (=> d!1576078 (= (head!10472 lt!2011528) (h!62983 lt!2011528))))

(assert (=> bm!340224 d!1576078))

(assert (=> b!4903709 d!1576008))

(assert (=> b!4903709 d!1575744))

(assert (=> b!4903709 d!1575734))

(assert (=> b!4903709 d!1575790))

(declare-fun d!1576080 () Bool)

(assert (=> d!1576080 (= (Forall!1727 lambda!244437) (choose!35810 lambda!244437))))

(declare-fun bs!1176962 () Bool)

(assert (= bs!1176962 d!1576080))

(declare-fun m!5913562 () Bool)

(assert (=> bs!1176962 m!5913562))

(assert (=> d!1575736 d!1576080))

(assert (=> b!4903983 d!1576014))

(declare-fun d!1576082 () Bool)

(assert (=> d!1576082 (= (isEmpty!30404 (maxPrefixOneRule!3567 thiss!15943 rule!164 lt!2011528)) (not ((_ is Some!14097) (maxPrefixOneRule!3567 thiss!15943 rule!164 lt!2011528))))))

(assert (=> d!1575816 d!1576082))

(declare-fun b!4904575 () Bool)

(declare-fun res!2095043 () Bool)

(declare-fun e!3065901 () Bool)

(assert (=> b!4904575 (=> (not res!2095043) (not e!3065901))))

(declare-fun height!1965 (Conc!14798) Int)

(assert (=> b!4904575 (= res!2095043 (<= (- (height!1965 (left!41151 (c!833374 input!1509))) (height!1965 (right!41481 (c!833374 input!1509)))) 1))))

(declare-fun b!4904576 () Bool)

(declare-fun res!2095044 () Bool)

(assert (=> b!4904576 (=> (not res!2095044) (not e!3065901))))

(assert (=> b!4904576 (= res!2095044 (isBalanced!4030 (left!41151 (c!833374 input!1509))))))

(declare-fun b!4904577 () Bool)

(declare-fun res!2095041 () Bool)

(assert (=> b!4904577 (=> (not res!2095041) (not e!3065901))))

(assert (=> b!4904577 (= res!2095041 (not (isEmpty!30406 (left!41151 (c!833374 input!1509)))))))

(declare-fun b!4904578 () Bool)

(declare-fun e!3065902 () Bool)

(assert (=> b!4904578 (= e!3065902 e!3065901)))

(declare-fun res!2095039 () Bool)

(assert (=> b!4904578 (=> (not res!2095039) (not e!3065901))))

(assert (=> b!4904578 (= res!2095039 (<= (- 1) (- (height!1965 (left!41151 (c!833374 input!1509))) (height!1965 (right!41481 (c!833374 input!1509))))))))

(declare-fun b!4904580 () Bool)

(assert (=> b!4904580 (= e!3065901 (not (isEmpty!30406 (right!41481 (c!833374 input!1509)))))))

(declare-fun d!1576084 () Bool)

(declare-fun res!2095040 () Bool)

(assert (=> d!1576084 (=> res!2095040 e!3065902)))

(assert (=> d!1576084 (= res!2095040 (not ((_ is Node!14798) (c!833374 input!1509))))))

(assert (=> d!1576084 (= (isBalanced!4030 (c!833374 input!1509)) e!3065902)))

(declare-fun b!4904579 () Bool)

(declare-fun res!2095042 () Bool)

(assert (=> b!4904579 (=> (not res!2095042) (not e!3065901))))

(assert (=> b!4904579 (= res!2095042 (isBalanced!4030 (right!41481 (c!833374 input!1509))))))

(assert (= (and d!1576084 (not res!2095040)) b!4904578))

(assert (= (and b!4904578 res!2095039) b!4904575))

(assert (= (and b!4904575 res!2095043) b!4904576))

(assert (= (and b!4904576 res!2095044) b!4904579))

(assert (= (and b!4904579 res!2095042) b!4904577))

(assert (= (and b!4904577 res!2095041) b!4904580))

(declare-fun m!5913570 () Bool)

(assert (=> b!4904579 m!5913570))

(declare-fun m!5913572 () Bool)

(assert (=> b!4904578 m!5913572))

(declare-fun m!5913574 () Bool)

(assert (=> b!4904578 m!5913574))

(declare-fun m!5913576 () Bool)

(assert (=> b!4904580 m!5913576))

(declare-fun m!5913578 () Bool)

(assert (=> b!4904576 m!5913578))

(declare-fun m!5913580 () Bool)

(assert (=> b!4904577 m!5913580))

(assert (=> b!4904575 m!5913572))

(assert (=> b!4904575 m!5913574))

(assert (=> d!1575798 d!1576084))

(declare-fun d!1576086 () Bool)

(assert (=> d!1576086 (= lt!2011528 Nil!56535)))

(declare-fun lt!2011941 () Unit!146675)

(declare-fun choose!35822 (List!56659 List!56659 List!56659) Unit!146675)

(assert (=> d!1576086 (= lt!2011941 (choose!35822 lt!2011528 Nil!56535 lt!2011528))))

(assert (=> d!1576086 (isPrefix!4912 lt!2011528 lt!2011528)))

(assert (=> d!1576086 (= (lemmaIsPrefixSameLengthThenSameList!1071 lt!2011528 Nil!56535 lt!2011528) lt!2011941)))

(declare-fun bs!1176963 () Bool)

(assert (= bs!1176963 d!1576086))

(declare-fun m!5913582 () Bool)

(assert (=> bs!1176963 m!5913582))

(assert (=> bs!1176963 m!5912810))

(assert (=> bm!340227 d!1576086))

(declare-fun d!1576088 () Bool)

(assert (=> d!1576088 (= (list!17804 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))) (list!17806 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))))

(declare-fun bs!1176964 () Bool)

(assert (= bs!1176964 d!1576088))

(declare-fun m!5913584 () Bool)

(assert (=> bs!1176964 m!5913584))

(assert (=> bs!1176915 d!1576088))

(declare-fun d!1576090 () Bool)

(assert (=> d!1576090 (= (list!17804 (seqFromList!5972 lt!2011527)) (list!17806 (c!833374 (seqFromList!5972 lt!2011527))))))

(declare-fun bs!1176965 () Bool)

(assert (= bs!1176965 d!1576090))

(declare-fun m!5913586 () Bool)

(assert (=> bs!1176965 m!5913586))

(assert (=> bs!1176915 d!1576090))

(assert (=> bm!340228 d!1576014))

(declare-fun d!1576092 () Bool)

(declare-fun c!833580 () Bool)

(assert (=> d!1576092 (= c!833580 ((_ is Node!14798) (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))))

(declare-fun e!3065903 () Bool)

(assert (=> d!1576092 (= (inv!72980 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))) e!3065903)))

(declare-fun b!4904581 () Bool)

(assert (=> b!4904581 (= e!3065903 (inv!72984 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))))

(declare-fun b!4904582 () Bool)

(declare-fun e!3065904 () Bool)

(assert (=> b!4904582 (= e!3065903 e!3065904)))

(declare-fun res!2095045 () Bool)

(assert (=> b!4904582 (= res!2095045 (not ((_ is Leaf!24630) (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))))))))

(assert (=> b!4904582 (=> res!2095045 e!3065904)))

(declare-fun b!4904583 () Bool)

(assert (=> b!4904583 (= e!3065904 (inv!72985 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))))))

(assert (= (and d!1576092 c!833580) b!4904581))

(assert (= (and d!1576092 (not c!833580)) b!4904582))

(assert (= (and b!4904582 (not res!2095045)) b!4904583))

(declare-fun m!5913588 () Bool)

(assert (=> b!4904581 m!5913588))

(declare-fun m!5913590 () Bool)

(assert (=> b!4904583 m!5913590))

(assert (=> b!4904056 d!1576092))

(declare-fun d!1576094 () Bool)

(assert (=> d!1576094 (= (isEmpty!30405 (Some!14096 (tuple2!60777 (Token!14989 (apply!13574 (transformation!8230 rule!164) (_1!33689 lt!2011532)) rule!164 (size!37264 (_1!33689 lt!2011532)) lt!2011527) (_2!33689 lt!2011532)))) (not ((_ is Some!14096) (Some!14096 (tuple2!60777 (Token!14989 (apply!13574 (transformation!8230 rule!164) (_1!33689 lt!2011532)) rule!164 (size!37264 (_1!33689 lt!2011532)) lt!2011527) (_2!33689 lt!2011532))))))))

(assert (=> d!1575812 d!1576094))

(declare-fun d!1576096 () Bool)

(declare-fun lt!2011942 () Int)

(assert (=> d!1576096 (>= lt!2011942 0)))

(declare-fun e!3065905 () Int)

(assert (=> d!1576096 (= lt!2011942 e!3065905)))

(declare-fun c!833581 () Bool)

(assert (=> d!1576096 (= c!833581 ((_ is Nil!56535) (_1!33690 lt!2011719)))))

(assert (=> d!1576096 (= (size!37262 (_1!33690 lt!2011719)) lt!2011942)))

(declare-fun b!4904584 () Bool)

(assert (=> b!4904584 (= e!3065905 0)))

(declare-fun b!4904585 () Bool)

(assert (=> b!4904585 (= e!3065905 (+ 1 (size!37262 (t!366751 (_1!33690 lt!2011719)))))))

(assert (= (and d!1576096 c!833581) b!4904584))

(assert (= (and d!1576096 (not c!833581)) b!4904585))

(declare-fun m!5913592 () Bool)

(assert (=> b!4904585 m!5913592))

(assert (=> b!4903934 d!1576096))

(assert (=> b!4903934 d!1575734))

(declare-fun b!4904586 () Bool)

(declare-fun e!3065906 () List!56659)

(assert (=> b!4904586 (= e!3065906 Nil!56535)))

(declare-fun d!1576098 () Bool)

(declare-fun c!833582 () Bool)

(assert (=> d!1576098 (= c!833582 ((_ is Empty!14798) (c!833374 (_1!33689 lt!2011532))))))

(assert (=> d!1576098 (= (list!17806 (c!833374 (_1!33689 lt!2011532))) e!3065906)))

(declare-fun b!4904587 () Bool)

(declare-fun e!3065907 () List!56659)

(assert (=> b!4904587 (= e!3065906 e!3065907)))

(declare-fun c!833583 () Bool)

(assert (=> b!4904587 (= c!833583 ((_ is Leaf!24630) (c!833374 (_1!33689 lt!2011532))))))

(declare-fun b!4904589 () Bool)

(assert (=> b!4904589 (= e!3065907 (++!12259 (list!17806 (left!41151 (c!833374 (_1!33689 lt!2011532)))) (list!17806 (right!41481 (c!833374 (_1!33689 lt!2011532))))))))

(declare-fun b!4904588 () Bool)

(assert (=> b!4904588 (= e!3065907 (list!17807 (xs!18114 (c!833374 (_1!33689 lt!2011532)))))))

(assert (= (and d!1576098 c!833582) b!4904586))

(assert (= (and d!1576098 (not c!833582)) b!4904587))

(assert (= (and b!4904587 c!833583) b!4904588))

(assert (= (and b!4904587 (not c!833583)) b!4904589))

(declare-fun m!5913594 () Bool)

(assert (=> b!4904589 m!5913594))

(declare-fun m!5913596 () Bool)

(assert (=> b!4904589 m!5913596))

(assert (=> b!4904589 m!5913594))

(assert (=> b!4904589 m!5913596))

(declare-fun m!5913598 () Bool)

(assert (=> b!4904589 m!5913598))

(declare-fun m!5913600 () Bool)

(assert (=> b!4904588 m!5913600))

(assert (=> d!1575806 d!1576098))

(declare-fun d!1576100 () Bool)

(assert (=> d!1576100 true))

(declare-fun order!25737 () Int)

(declare-fun lambda!244452 () Int)

(declare-fun dynLambda!22808 (Int Int) Int)

(assert (=> d!1576100 (< (dynLambda!22798 order!25729 (toValue!11145 (transformation!8230 rule!164))) (dynLambda!22808 order!25737 lambda!244452))))

(declare-fun Forall2!1277 (Int) Bool)

(assert (=> d!1576100 (= (equivClasses!3484 (toChars!11004 (transformation!8230 rule!164)) (toValue!11145 (transformation!8230 rule!164))) (Forall2!1277 lambda!244452))))

(declare-fun bs!1176966 () Bool)

(assert (= bs!1176966 d!1576100))

(declare-fun m!5913602 () Bool)

(assert (=> bs!1176966 m!5913602))

(assert (=> b!4904017 d!1576100))

(declare-fun d!1576102 () Bool)

(assert (=> d!1576102 (= (inv!72986 (xs!18114 (c!833374 input!1509))) (<= (size!37262 (innerList!14886 (xs!18114 (c!833374 input!1509)))) 2147483647))))

(declare-fun bs!1176967 () Bool)

(assert (= bs!1176967 d!1576102))

(declare-fun m!5913604 () Bool)

(assert (=> bs!1176967 m!5913604))

(assert (=> b!4904050 d!1576102))

(declare-fun d!1576104 () Bool)

(assert (=> d!1576104 (= (isEmpty!30400 (list!17804 (_1!33689 lt!2011532))) ((_ is Nil!56535) (list!17804 (_1!33689 lt!2011532))))))

(assert (=> d!1575822 d!1576104))

(assert (=> d!1575822 d!1575806))

(declare-fun d!1576106 () Bool)

(declare-fun lt!2011945 () Bool)

(assert (=> d!1576106 (= lt!2011945 (isEmpty!30400 (list!17806 (c!833374 (_1!33689 lt!2011532)))))))

(assert (=> d!1576106 (= lt!2011945 (= (size!37266 (c!833374 (_1!33689 lt!2011532))) 0))))

(assert (=> d!1576106 (= (isEmpty!30406 (c!833374 (_1!33689 lt!2011532))) lt!2011945)))

(declare-fun bs!1176968 () Bool)

(assert (= bs!1176968 d!1576106))

(assert (=> bs!1176968 m!5912862))

(assert (=> bs!1176968 m!5912862))

(declare-fun m!5913606 () Bool)

(assert (=> bs!1176968 m!5913606))

(assert (=> bs!1176968 m!5912856))

(assert (=> d!1575822 d!1576106))

(declare-fun d!1576108 () Bool)

(assert (=> d!1576108 (= (isEmpty!30400 (_1!33690 lt!2011720)) ((_ is Nil!56535) (_1!33690 lt!2011720)))))

(assert (=> b!4903922 d!1576108))

(declare-fun b!4904594 () Bool)

(declare-fun e!3065913 () Bool)

(assert (=> b!4904594 (= e!3065913 (not (= (head!10472 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))) (c!833373 (regex!8230 rule!164)))))))

(declare-fun b!4904595 () Bool)

(declare-fun e!3065916 () Bool)

(assert (=> b!4904595 (= e!3065916 (matchR!6572 (derivativeStep!3891 (regex!8230 rule!164) (head!10472 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767)))))) (tail!9619 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767)))))))))

(declare-fun b!4904596 () Bool)

(declare-fun e!3065910 () Bool)

(declare-fun e!3065912 () Bool)

(assert (=> b!4904596 (= e!3065910 e!3065912)))

(declare-fun c!833586 () Bool)

(assert (=> b!4904596 (= c!833586 ((_ is EmptyLang!13305) (regex!8230 rule!164)))))

(declare-fun b!4904597 () Bool)

(declare-fun res!2095054 () Bool)

(declare-fun e!3065911 () Bool)

(assert (=> b!4904597 (=> res!2095054 e!3065911)))

(declare-fun e!3065915 () Bool)

(assert (=> b!4904597 (= res!2095054 e!3065915)))

(declare-fun res!2095053 () Bool)

(assert (=> b!4904597 (=> (not res!2095053) (not e!3065915))))

(declare-fun lt!2011946 () Bool)

(assert (=> b!4904597 (= res!2095053 lt!2011946)))

(declare-fun b!4904598 () Bool)

(declare-fun e!3065914 () Bool)

(assert (=> b!4904598 (= e!3065914 e!3065913)))

(declare-fun res!2095055 () Bool)

(assert (=> b!4904598 (=> res!2095055 e!3065913)))

(declare-fun call!340298 () Bool)

(assert (=> b!4904598 (= res!2095055 call!340298)))

(declare-fun d!1576110 () Bool)

(assert (=> d!1576110 e!3065910))

(declare-fun c!833585 () Bool)

(assert (=> d!1576110 (= c!833585 ((_ is EmptyExpr!13305) (regex!8230 rule!164)))))

(assert (=> d!1576110 (= lt!2011946 e!3065916)))

(declare-fun c!833584 () Bool)

(assert (=> d!1576110 (= c!833584 (isEmpty!30400 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))))))

(assert (=> d!1576110 (validRegex!5898 (regex!8230 rule!164))))

(assert (=> d!1576110 (= (matchR!6572 (regex!8230 rule!164) (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))) lt!2011946)))

(declare-fun b!4904599 () Bool)

(declare-fun res!2095052 () Bool)

(assert (=> b!4904599 (=> res!2095052 e!3065911)))

(assert (=> b!4904599 (= res!2095052 (not ((_ is ElementMatch!13305) (regex!8230 rule!164))))))

(assert (=> b!4904599 (= e!3065912 e!3065911)))

(declare-fun b!4904600 () Bool)

(assert (=> b!4904600 (= e!3065912 (not lt!2011946))))

(declare-fun bm!340293 () Bool)

(assert (=> bm!340293 (= call!340298 (isEmpty!30400 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))))))

(declare-fun b!4904601 () Bool)

(declare-fun res!2095050 () Bool)

(assert (=> b!4904601 (=> (not res!2095050) (not e!3065915))))

(assert (=> b!4904601 (= res!2095050 (isEmpty!30400 (tail!9619 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767)))))))))

(declare-fun b!4904602 () Bool)

(assert (=> b!4904602 (= e!3065911 e!3065914)))

(declare-fun res!2095049 () Bool)

(assert (=> b!4904602 (=> (not res!2095049) (not e!3065914))))

(assert (=> b!4904602 (= res!2095049 (not lt!2011946))))

(declare-fun b!4904603 () Bool)

(assert (=> b!4904603 (= e!3065915 (= (head!10472 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))) (c!833373 (regex!8230 rule!164))))))

(declare-fun b!4904604 () Bool)

(declare-fun res!2095048 () Bool)

(assert (=> b!4904604 (=> res!2095048 e!3065913)))

(assert (=> b!4904604 (= res!2095048 (not (isEmpty!30400 (tail!9619 (list!17804 (charsOf!5386 (_1!33692 (get!19551 lt!2011767))))))))))

(declare-fun b!4904605 () Bool)

(assert (=> b!4904605 (= e!3065916 (nullable!4571 (regex!8230 rule!164)))))

(declare-fun b!4904606 () Bool)

(assert (=> b!4904606 (= e!3065910 (= lt!2011946 call!340298))))

(declare-fun b!4904607 () Bool)

(declare-fun res!2095051 () Bool)

(assert (=> b!4904607 (=> (not res!2095051) (not e!3065915))))

(assert (=> b!4904607 (= res!2095051 (not call!340298))))

(assert (= (and d!1576110 c!833584) b!4904605))

(assert (= (and d!1576110 (not c!833584)) b!4904595))

(assert (= (and d!1576110 c!833585) b!4904606))

(assert (= (and d!1576110 (not c!833585)) b!4904596))

(assert (= (and b!4904596 c!833586) b!4904600))

(assert (= (and b!4904596 (not c!833586)) b!4904599))

(assert (= (and b!4904599 (not res!2095052)) b!4904597))

(assert (= (and b!4904597 res!2095053) b!4904607))

(assert (= (and b!4904607 res!2095051) b!4904601))

(assert (= (and b!4904601 res!2095050) b!4904603))

(assert (= (and b!4904597 (not res!2095054)) b!4904602))

(assert (= (and b!4904602 res!2095049) b!4904598))

(assert (= (and b!4904598 (not res!2095055)) b!4904604))

(assert (= (and b!4904604 (not res!2095048)) b!4904594))

(assert (= (or b!4904606 b!4904598 b!4904607) bm!340293))

(assert (=> d!1576110 m!5912878))

(declare-fun m!5913608 () Bool)

(assert (=> d!1576110 m!5913608))

(assert (=> d!1576110 m!5912598))

(assert (=> b!4904603 m!5912878))

(declare-fun m!5913610 () Bool)

(assert (=> b!4904603 m!5913610))

(assert (=> b!4904605 m!5912806))

(assert (=> b!4904595 m!5912878))

(assert (=> b!4904595 m!5913610))

(assert (=> b!4904595 m!5913610))

(declare-fun m!5913612 () Bool)

(assert (=> b!4904595 m!5913612))

(assert (=> b!4904595 m!5912878))

(declare-fun m!5913614 () Bool)

(assert (=> b!4904595 m!5913614))

(assert (=> b!4904595 m!5913612))

(assert (=> b!4904595 m!5913614))

(declare-fun m!5913616 () Bool)

(assert (=> b!4904595 m!5913616))

(assert (=> b!4904601 m!5912878))

(assert (=> b!4904601 m!5913614))

(assert (=> b!4904601 m!5913614))

(declare-fun m!5913618 () Bool)

(assert (=> b!4904601 m!5913618))

(assert (=> b!4904604 m!5912878))

(assert (=> b!4904604 m!5913614))

(assert (=> b!4904604 m!5913614))

(assert (=> b!4904604 m!5913618))

(assert (=> b!4904594 m!5912878))

(assert (=> b!4904594 m!5913610))

(assert (=> bm!340293 m!5912878))

(assert (=> bm!340293 m!5913608))

(assert (=> b!4904007 d!1576110))

(assert (=> b!4904007 d!1576032))

(assert (=> b!4904007 d!1576036))

(assert (=> b!4904007 d!1575928))

(assert (=> b!4904009 d!1575928))

(declare-fun b!4904608 () Bool)

(declare-fun e!3065918 () Bool)

(assert (=> b!4904608 (= e!3065918 (inv!17 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))

(declare-fun b!4904609 () Bool)

(declare-fun res!2095056 () Bool)

(declare-fun e!3065917 () Bool)

(assert (=> b!4904609 (=> res!2095056 e!3065917)))

(assert (=> b!4904609 (= res!2095056 (not ((_ is IntegerValue!25622) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))))))

(assert (=> b!4904609 (= e!3065918 e!3065917)))

(declare-fun b!4904610 () Bool)

(declare-fun e!3065919 () Bool)

(assert (=> b!4904610 (= e!3065919 (inv!16 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))

(declare-fun b!4904611 () Bool)

(assert (=> b!4904611 (= e!3065919 e!3065918)))

(declare-fun c!833588 () Bool)

(assert (=> b!4904611 (= c!833588 ((_ is IntegerValue!25621) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))

(declare-fun b!4904612 () Bool)

(assert (=> b!4904612 (= e!3065917 (inv!15 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))

(declare-fun d!1576112 () Bool)

(declare-fun c!833587 () Bool)

(assert (=> d!1576112 (= c!833587 ((_ is IntegerValue!25620) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))

(assert (=> d!1576112 (= (inv!21 (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))) e!3065919)))

(assert (= (and d!1576112 c!833587) b!4904610))

(assert (= (and d!1576112 (not c!833587)) b!4904611))

(assert (= (and b!4904611 c!833588) b!4904608))

(assert (= (and b!4904611 (not c!833588)) b!4904609))

(assert (= (and b!4904609 (not res!2095056)) b!4904612))

(declare-fun m!5913620 () Bool)

(assert (=> b!4904608 m!5913620))

(declare-fun m!5913622 () Bool)

(assert (=> b!4904610 m!5913622))

(declare-fun m!5913624 () Bool)

(assert (=> b!4904612 m!5913624))

(assert (=> tb!259855 d!1576112))

(assert (=> b!4903972 d!1575970))

(assert (=> b!4903718 d!1576100))

(declare-fun d!1576114 () Bool)

(declare-fun lt!2011947 () Int)

(assert (=> d!1576114 (>= lt!2011947 0)))

(declare-fun e!3065920 () Int)

(assert (=> d!1576114 (= lt!2011947 e!3065920)))

(declare-fun c!833589 () Bool)

(assert (=> d!1576114 (= c!833589 ((_ is Nil!56535) (t!366751 lt!2011528)))))

(assert (=> d!1576114 (= (size!37262 (t!366751 lt!2011528)) lt!2011947)))

(declare-fun b!4904613 () Bool)

(assert (=> b!4904613 (= e!3065920 0)))

(declare-fun b!4904614 () Bool)

(assert (=> b!4904614 (= e!3065920 (+ 1 (size!37262 (t!366751 (t!366751 lt!2011528)))))))

(assert (= (and d!1576114 c!833589) b!4904613))

(assert (= (and d!1576114 (not c!833589)) b!4904614))

(declare-fun m!5913626 () Bool)

(assert (=> b!4904614 m!5913626))

(assert (=> b!4903937 d!1576114))

(assert (=> b!4903687 d!1575826))

(declare-fun d!1576116 () Bool)

(assert (=> d!1576116 (dynLambda!22804 lambda!244434 (seqFromList!5972 lt!2011527))))

(assert (=> d!1576116 true))

(declare-fun _$1!11210 () Unit!146675)

(assert (=> d!1576116 (= (choose!35811 lambda!244434 (seqFromList!5972 lt!2011527)) _$1!11210)))

(declare-fun b_lambda!195269 () Bool)

(assert (=> (not b_lambda!195269) (not d!1576116)))

(declare-fun bs!1176969 () Bool)

(assert (= bs!1176969 d!1576116))

(assert (=> bs!1176969 m!5912560))

(assert (=> bs!1176969 m!5912850))

(assert (=> d!1575800 d!1576116))

(assert (=> d!1575800 d!1575796))

(declare-fun d!1576118 () Bool)

(declare-fun lt!2011948 () Int)

(assert (=> d!1576118 (>= lt!2011948 0)))

(declare-fun e!3065921 () Int)

(assert (=> d!1576118 (= lt!2011948 e!3065921)))

(declare-fun c!833590 () Bool)

(assert (=> d!1576118 (= c!833590 ((_ is Nil!56535) (_2!33692 (get!19551 lt!2011767))))))

(assert (=> d!1576118 (= (size!37262 (_2!33692 (get!19551 lt!2011767))) lt!2011948)))

(declare-fun b!4904615 () Bool)

(assert (=> b!4904615 (= e!3065921 0)))

(declare-fun b!4904616 () Bool)

(assert (=> b!4904616 (= e!3065921 (+ 1 (size!37262 (t!366751 (_2!33692 (get!19551 lt!2011767))))))))

(assert (= (and d!1576118 c!833590) b!4904615))

(assert (= (and d!1576118 (not c!833590)) b!4904616))

(declare-fun m!5913628 () Bool)

(assert (=> b!4904616 m!5913628))

(assert (=> b!4904011 d!1576118))

(assert (=> b!4904011 d!1575928))

(assert (=> b!4904011 d!1575790))

(assert (=> b!4904013 d!1575928))

(declare-fun d!1576120 () Bool)

(declare-fun lt!2011949 () Int)

(assert (=> d!1576120 (>= lt!2011949 0)))

(declare-fun e!3065922 () Int)

(assert (=> d!1576120 (= lt!2011949 e!3065922)))

(declare-fun c!833591 () Bool)

(assert (=> d!1576120 (= c!833591 ((_ is Nil!56535) (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767)))))))

(assert (=> d!1576120 (= (size!37262 (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767)))) lt!2011949)))

(declare-fun b!4904617 () Bool)

(assert (=> b!4904617 (= e!3065922 0)))

(declare-fun b!4904618 () Bool)

(assert (=> b!4904618 (= e!3065922 (+ 1 (size!37262 (t!366751 (originalCharacters!8525 (_1!33692 (get!19551 lt!2011767)))))))))

(assert (= (and d!1576120 c!833591) b!4904617))

(assert (= (and d!1576120 (not c!833591)) b!4904618))

(declare-fun m!5913630 () Bool)

(assert (=> b!4904618 m!5913630))

(assert (=> b!4904013 d!1576120))

(declare-fun d!1576122 () Bool)

(assert (=> d!1576122 (= (list!17804 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))) (list!17806 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))))

(declare-fun bs!1176970 () Bool)

(assert (= bs!1176970 d!1576122))

(declare-fun m!5913632 () Bool)

(assert (=> bs!1176970 m!5913632))

(assert (=> bs!1176916 d!1576122))

(assert (=> bs!1176916 d!1575806))

(assert (=> d!1575792 d!1575940))

(declare-fun d!1576124 () Bool)

(assert (not d!1576124))

(assert (=> b!4903736 d!1576124))

(assert (=> d!1575820 d!1575736))

(declare-fun d!1576126 () Bool)

(assert (=> d!1576126 true))

(assert (=> d!1576126 true))

(declare-fun res!2095059 () Bool)

(assert (=> d!1576126 (= (choose!35810 lambda!244434) res!2095059)))

(assert (=> d!1575796 d!1576126))

(assert (=> d!1575794 d!1575788))

(assert (=> d!1575794 d!1575940))

(declare-fun b!4904619 () Bool)

(declare-fun e!3065927 () tuple2!60774)

(declare-fun e!3065929 () tuple2!60774)

(assert (=> b!4904619 (= e!3065927 e!3065929)))

(declare-fun lt!2011952 () tuple2!60774)

(declare-fun call!340299 () tuple2!60774)

(assert (=> b!4904619 (= lt!2011952 call!340299)))

(declare-fun c!833594 () Bool)

(assert (=> b!4904619 (= c!833594 (isEmpty!30400 (_1!33690 lt!2011952)))))

(declare-fun b!4904620 () Bool)

(assert (=> b!4904620 (= e!3065927 call!340299)))

(declare-fun b!4904621 () Bool)

(assert (=> b!4904621 (= e!3065929 lt!2011952)))

(declare-fun b!4904622 () Bool)

(declare-fun e!3065925 () tuple2!60774)

(assert (=> b!4904622 (= e!3065925 (tuple2!60775 Nil!56535 lt!2011528))))

(declare-fun b!4904623 () Bool)

(declare-fun e!3065924 () tuple2!60774)

(assert (=> b!4904623 (= e!3065924 (tuple2!60775 lt!2011728 Nil!56535))))

(declare-fun b!4904624 () Bool)

(declare-fun c!833592 () Bool)

(declare-fun call!340301 () Bool)

(assert (=> b!4904624 (= c!833592 call!340301)))

(declare-fun lt!2011972 () Unit!146675)

(declare-fun lt!2011969 () Unit!146675)

(assert (=> b!4904624 (= lt!2011972 lt!2011969)))

(assert (=> b!4904624 (= lt!2011528 lt!2011728)))

(declare-fun call!340303 () Unit!146675)

(assert (=> b!4904624 (= lt!2011969 call!340303)))

(declare-fun lt!2011971 () Unit!146675)

(declare-fun lt!2011970 () Unit!146675)

(assert (=> b!4904624 (= lt!2011971 lt!2011970)))

(declare-fun call!340300 () Bool)

(assert (=> b!4904624 call!340300))

(declare-fun call!340306 () Unit!146675)

(assert (=> b!4904624 (= lt!2011970 call!340306)))

(declare-fun e!3065928 () tuple2!60774)

(assert (=> b!4904624 (= e!3065928 e!3065924)))

(declare-fun b!4904625 () Bool)

(declare-fun e!3065926 () Unit!146675)

(declare-fun Unit!146688 () Unit!146675)

(assert (=> b!4904625 (= e!3065926 Unit!146688)))

(declare-fun lt!2011950 () Unit!146675)

(assert (=> b!4904625 (= lt!2011950 call!340306)))

(assert (=> b!4904625 call!340300))

(declare-fun lt!2011954 () Unit!146675)

(assert (=> b!4904625 (= lt!2011954 lt!2011950)))

(declare-fun lt!2011955 () Unit!146675)

(assert (=> b!4904625 (= lt!2011955 call!340303)))

(assert (=> b!4904625 (= lt!2011528 lt!2011728)))

(declare-fun lt!2011957 () Unit!146675)

(assert (=> b!4904625 (= lt!2011957 lt!2011955)))

(assert (=> b!4904625 false))

(declare-fun b!4904626 () Bool)

(assert (=> b!4904626 (= e!3065925 e!3065928)))

(declare-fun c!833593 () Bool)

(assert (=> b!4904626 (= c!833593 (= (+ (size!37262 Nil!56535) 1) (size!37262 lt!2011528)))))

(declare-fun call!340302 () List!56659)

(declare-fun call!340304 () Regex!13305)

(declare-fun lt!2011960 () List!56659)

(declare-fun bm!340294 () Bool)

(assert (=> bm!340294 (= call!340299 (findLongestMatchInner!1793 call!340304 lt!2011960 (+ (size!37262 Nil!56535) 1 1) call!340302 lt!2011528 (size!37262 lt!2011528)))))

(declare-fun d!1576128 () Bool)

(declare-fun e!3065923 () Bool)

(assert (=> d!1576128 e!3065923))

(declare-fun res!2095060 () Bool)

(assert (=> d!1576128 (=> (not res!2095060) (not e!3065923))))

(declare-fun lt!2011951 () tuple2!60774)

(assert (=> d!1576128 (= res!2095060 (= (++!12259 (_1!33690 lt!2011951) (_2!33690 lt!2011951)) lt!2011528))))

(assert (=> d!1576128 (= lt!2011951 e!3065925)))

(declare-fun c!833595 () Bool)

(assert (=> d!1576128 (= c!833595 (lostCause!1099 call!340233))))

(declare-fun lt!2011961 () Unit!146675)

(declare-fun Unit!146689 () Unit!146675)

(assert (=> d!1576128 (= lt!2011961 Unit!146689)))

(assert (=> d!1576128 (= (getSuffix!2900 lt!2011528 lt!2011728) call!340231)))

(declare-fun lt!2011973 () Unit!146675)

(declare-fun lt!2011963 () Unit!146675)

(assert (=> d!1576128 (= lt!2011973 lt!2011963)))

(declare-fun lt!2011953 () List!56659)

(assert (=> d!1576128 (= call!340231 lt!2011953)))

(assert (=> d!1576128 (= lt!2011963 (lemmaSamePrefixThenSameSuffix!2316 lt!2011728 call!340231 lt!2011728 lt!2011953 lt!2011528))))

(assert (=> d!1576128 (= lt!2011953 (getSuffix!2900 lt!2011528 lt!2011728))))

(declare-fun lt!2011975 () Unit!146675)

(declare-fun lt!2011962 () Unit!146675)

(assert (=> d!1576128 (= lt!2011975 lt!2011962)))

(assert (=> d!1576128 (isPrefix!4912 lt!2011728 (++!12259 lt!2011728 call!340231))))

(assert (=> d!1576128 (= lt!2011962 (lemmaConcatTwoListThenFirstIsPrefix!3136 lt!2011728 call!340231))))

(assert (=> d!1576128 (validRegex!5898 call!340233)))

(assert (=> d!1576128 (= (findLongestMatchInner!1793 call!340233 lt!2011728 (+ (size!37262 Nil!56535) 1) call!340231 lt!2011528 (size!37262 lt!2011528)) lt!2011951)))

(declare-fun b!4904627 () Bool)

(assert (=> b!4904627 (= e!3065924 (tuple2!60775 Nil!56535 lt!2011528))))

(declare-fun bm!340295 () Bool)

(declare-fun call!340305 () C!26808)

(assert (=> bm!340295 (= call!340305 (head!10472 call!340231))))

(declare-fun bm!340296 () Bool)

(assert (=> bm!340296 (= call!340304 (derivativeStep!3891 call!340233 call!340305))))

(declare-fun b!4904628 () Bool)

(declare-fun Unit!146690 () Unit!146675)

(assert (=> b!4904628 (= e!3065926 Unit!146690)))

(declare-fun bm!340297 () Bool)

(assert (=> bm!340297 (= call!340302 (tail!9619 call!340231))))

(declare-fun bm!340298 () Bool)

(assert (=> bm!340298 (= call!340303 (lemmaIsPrefixSameLengthThenSameList!1071 lt!2011528 lt!2011728 lt!2011528))))

(declare-fun b!4904629 () Bool)

(declare-fun c!833597 () Bool)

(assert (=> b!4904629 (= c!833597 call!340301)))

(declare-fun lt!2011968 () Unit!146675)

(declare-fun lt!2011976 () Unit!146675)

(assert (=> b!4904629 (= lt!2011968 lt!2011976)))

(declare-fun lt!2011974 () C!26808)

(declare-fun lt!2011965 () List!56659)

(assert (=> b!4904629 (= (++!12259 (++!12259 lt!2011728 (Cons!56535 lt!2011974 Nil!56535)) lt!2011965) lt!2011528)))

(assert (=> b!4904629 (= lt!2011976 (lemmaMoveElementToOtherListKeepsConcatEq!1343 lt!2011728 lt!2011974 lt!2011965 lt!2011528))))

(assert (=> b!4904629 (= lt!2011965 (tail!9619 call!340231))))

(assert (=> b!4904629 (= lt!2011974 (head!10472 call!340231))))

(declare-fun lt!2011959 () Unit!146675)

(declare-fun lt!2011958 () Unit!146675)

(assert (=> b!4904629 (= lt!2011959 lt!2011958)))

(assert (=> b!4904629 (isPrefix!4912 (++!12259 lt!2011728 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 lt!2011728)) Nil!56535)) lt!2011528)))

(assert (=> b!4904629 (= lt!2011958 (lemmaAddHeadSuffixToPrefixStillPrefix!725 lt!2011728 lt!2011528))))

(declare-fun lt!2011966 () Unit!146675)

(declare-fun lt!2011977 () Unit!146675)

(assert (=> b!4904629 (= lt!2011966 lt!2011977)))

(assert (=> b!4904629 (= lt!2011977 (lemmaAddHeadSuffixToPrefixStillPrefix!725 lt!2011728 lt!2011528))))

(assert (=> b!4904629 (= lt!2011960 (++!12259 lt!2011728 (Cons!56535 (head!10472 call!340231) Nil!56535)))))

(declare-fun lt!2011964 () Unit!146675)

(assert (=> b!4904629 (= lt!2011964 e!3065926)))

(declare-fun c!833596 () Bool)

(assert (=> b!4904629 (= c!833596 (= (size!37262 lt!2011728) (size!37262 lt!2011528)))))

(declare-fun lt!2011967 () Unit!146675)

(declare-fun lt!2011956 () Unit!146675)

(assert (=> b!4904629 (= lt!2011967 lt!2011956)))

(assert (=> b!4904629 (<= (size!37262 lt!2011728) (size!37262 lt!2011528))))

(assert (=> b!4904629 (= lt!2011956 (lemmaIsPrefixThenSmallerEqSize!637 lt!2011728 lt!2011528))))

(assert (=> b!4904629 (= e!3065928 e!3065927)))

(declare-fun bm!340299 () Bool)

(assert (=> bm!340299 (= call!340301 (nullable!4571 call!340233))))

(declare-fun b!4904630 () Bool)

(declare-fun e!3065930 () Bool)

(assert (=> b!4904630 (= e!3065923 e!3065930)))

(declare-fun res!2095061 () Bool)

(assert (=> b!4904630 (=> res!2095061 e!3065930)))

(assert (=> b!4904630 (= res!2095061 (isEmpty!30400 (_1!33690 lt!2011951)))))

(declare-fun b!4904631 () Bool)

(assert (=> b!4904631 (= e!3065930 (>= (size!37262 (_1!33690 lt!2011951)) (size!37262 lt!2011728)))))

(declare-fun bm!340300 () Bool)

(assert (=> bm!340300 (= call!340300 (isPrefix!4912 lt!2011528 lt!2011528))))

(declare-fun bm!340301 () Bool)

(assert (=> bm!340301 (= call!340306 (lemmaIsPrefixRefl!3309 lt!2011528 lt!2011528))))

(declare-fun b!4904632 () Bool)

(assert (=> b!4904632 (= e!3065929 (tuple2!60775 lt!2011728 call!340231))))

(assert (= (and d!1576128 c!833595) b!4904622))

(assert (= (and d!1576128 (not c!833595)) b!4904626))

(assert (= (and b!4904626 c!833593) b!4904624))

(assert (= (and b!4904626 (not c!833593)) b!4904629))

(assert (= (and b!4904624 c!833592) b!4904623))

(assert (= (and b!4904624 (not c!833592)) b!4904627))

(assert (= (and b!4904629 c!833596) b!4904625))

(assert (= (and b!4904629 (not c!833596)) b!4904628))

(assert (= (and b!4904629 c!833597) b!4904619))

(assert (= (and b!4904629 (not c!833597)) b!4904620))

(assert (= (and b!4904619 c!833594) b!4904632))

(assert (= (and b!4904619 (not c!833594)) b!4904621))

(assert (= (or b!4904619 b!4904620) bm!340295))

(assert (= (or b!4904619 b!4904620) bm!340297))

(assert (= (or b!4904619 b!4904620) bm!340296))

(assert (= (or b!4904619 b!4904620) bm!340294))

(assert (= (or b!4904624 b!4904625) bm!340300))

(assert (= (or b!4904624 b!4904625) bm!340301))

(assert (= (or b!4904624 b!4904625) bm!340298))

(assert (= (or b!4904624 b!4904629) bm!340299))

(assert (= (and d!1576128 res!2095060) b!4904630))

(assert (= (and b!4904630 (not res!2095061)) b!4904631))

(declare-fun m!5913634 () Bool)

(assert (=> b!4904631 m!5913634))

(declare-fun m!5913636 () Bool)

(assert (=> b!4904631 m!5913636))

(declare-fun m!5913638 () Bool)

(assert (=> d!1576128 m!5913638))

(declare-fun m!5913640 () Bool)

(assert (=> d!1576128 m!5913640))

(declare-fun m!5913642 () Bool)

(assert (=> d!1576128 m!5913642))

(declare-fun m!5913644 () Bool)

(assert (=> d!1576128 m!5913644))

(assert (=> d!1576128 m!5913638))

(declare-fun m!5913646 () Bool)

(assert (=> d!1576128 m!5913646))

(declare-fun m!5913648 () Bool)

(assert (=> d!1576128 m!5913648))

(declare-fun m!5913650 () Bool)

(assert (=> d!1576128 m!5913650))

(declare-fun m!5913652 () Bool)

(assert (=> d!1576128 m!5913652))

(declare-fun m!5913654 () Bool)

(assert (=> b!4904619 m!5913654))

(assert (=> bm!340294 m!5912536))

(declare-fun m!5913656 () Bool)

(assert (=> bm!340294 m!5913656))

(declare-fun m!5913658 () Bool)

(assert (=> bm!340297 m!5913658))

(declare-fun m!5913660 () Bool)

(assert (=> bm!340296 m!5913660))

(assert (=> bm!340301 m!5912804))

(declare-fun m!5913662 () Bool)

(assert (=> bm!340299 m!5913662))

(declare-fun m!5913664 () Bool)

(assert (=> b!4904630 m!5913664))

(assert (=> bm!340300 m!5912810))

(declare-fun m!5913666 () Bool)

(assert (=> bm!340295 m!5913666))

(declare-fun m!5913668 () Bool)

(assert (=> bm!340298 m!5913668))

(declare-fun m!5913670 () Bool)

(assert (=> b!4904629 m!5913670))

(declare-fun m!5913672 () Bool)

(assert (=> b!4904629 m!5913672))

(assert (=> b!4904629 m!5913636))

(assert (=> b!4904629 m!5913666))

(assert (=> b!4904629 m!5912536))

(declare-fun m!5913674 () Bool)

(assert (=> b!4904629 m!5913674))

(declare-fun m!5913676 () Bool)

(assert (=> b!4904629 m!5913676))

(declare-fun m!5913678 () Bool)

(assert (=> b!4904629 m!5913678))

(assert (=> b!4904629 m!5913650))

(declare-fun m!5913680 () Bool)

(assert (=> b!4904629 m!5913680))

(declare-fun m!5913682 () Bool)

(assert (=> b!4904629 m!5913682))

(declare-fun m!5913684 () Bool)

(assert (=> b!4904629 m!5913684))

(assert (=> b!4904629 m!5913674))

(declare-fun m!5913686 () Bool)

(assert (=> b!4904629 m!5913686))

(assert (=> b!4904629 m!5913658))

(assert (=> b!4904629 m!5913682))

(assert (=> b!4904629 m!5913650))

(assert (=> bm!340223 d!1576128))

(declare-fun bm!340302 () Bool)

(declare-fun call!340308 () Regex!13305)

(declare-fun c!833601 () Bool)

(declare-fun c!833600 () Bool)

(assert (=> bm!340302 (= call!340308 (derivativeStep!3891 (ite c!833600 (regTwo!27123 (regex!8230 rule!164)) (ite c!833601 (reg!13634 (regex!8230 rule!164)) (regOne!27122 (regex!8230 rule!164)))) call!340234))))

(declare-fun b!4904633 () Bool)

(declare-fun e!3065935 () Regex!13305)

(declare-fun e!3065933 () Regex!13305)

(assert (=> b!4904633 (= e!3065935 e!3065933)))

(assert (=> b!4904633 (= c!833601 ((_ is Star!13305) (regex!8230 rule!164)))))

(declare-fun bm!340303 () Bool)

(declare-fun call!340309 () Regex!13305)

(declare-fun call!340310 () Regex!13305)

(assert (=> bm!340303 (= call!340309 call!340310)))

(declare-fun b!4904634 () Bool)

(assert (=> b!4904634 (= c!833600 ((_ is Union!13305) (regex!8230 rule!164)))))

(declare-fun e!3065931 () Regex!13305)

(assert (=> b!4904634 (= e!3065931 e!3065935)))

(declare-fun bm!340304 () Bool)

(assert (=> bm!340304 (= call!340310 call!340308)))

(declare-fun b!4904635 () Bool)

(declare-fun call!340307 () Regex!13305)

(assert (=> b!4904635 (= e!3065935 (Union!13305 call!340307 call!340308))))

(declare-fun b!4904636 () Bool)

(assert (=> b!4904636 (= e!3065933 (Concat!21845 call!340310 (regex!8230 rule!164)))))

(declare-fun b!4904637 () Bool)

(declare-fun e!3065932 () Regex!13305)

(assert (=> b!4904637 (= e!3065932 (Union!13305 (Concat!21845 call!340309 (regTwo!27122 (regex!8230 rule!164))) EmptyLang!13305))))

(declare-fun b!4904638 () Bool)

(declare-fun e!3065934 () Regex!13305)

(assert (=> b!4904638 (= e!3065934 e!3065931)))

(declare-fun c!833599 () Bool)

(assert (=> b!4904638 (= c!833599 ((_ is ElementMatch!13305) (regex!8230 rule!164)))))

(declare-fun b!4904639 () Bool)

(assert (=> b!4904639 (= e!3065934 EmptyLang!13305)))

(declare-fun b!4904640 () Bool)

(assert (=> b!4904640 (= e!3065931 (ite (= call!340234 (c!833373 (regex!8230 rule!164))) EmptyExpr!13305 EmptyLang!13305))))

(declare-fun bm!340305 () Bool)

(assert (=> bm!340305 (= call!340307 (derivativeStep!3891 (ite c!833600 (regOne!27123 (regex!8230 rule!164)) (regTwo!27122 (regex!8230 rule!164))) call!340234))))

(declare-fun b!4904641 () Bool)

(declare-fun c!833598 () Bool)

(assert (=> b!4904641 (= c!833598 (nullable!4571 (regOne!27122 (regex!8230 rule!164))))))

(assert (=> b!4904641 (= e!3065933 e!3065932)))

(declare-fun b!4904642 () Bool)

(assert (=> b!4904642 (= e!3065932 (Union!13305 (Concat!21845 call!340309 (regTwo!27122 (regex!8230 rule!164))) call!340307))))

(declare-fun d!1576130 () Bool)

(declare-fun lt!2011978 () Regex!13305)

(assert (=> d!1576130 (validRegex!5898 lt!2011978)))

(assert (=> d!1576130 (= lt!2011978 e!3065934)))

(declare-fun c!833602 () Bool)

(assert (=> d!1576130 (= c!833602 (or ((_ is EmptyExpr!13305) (regex!8230 rule!164)) ((_ is EmptyLang!13305) (regex!8230 rule!164))))))

(assert (=> d!1576130 (validRegex!5898 (regex!8230 rule!164))))

(assert (=> d!1576130 (= (derivativeStep!3891 (regex!8230 rule!164) call!340234) lt!2011978)))

(assert (= (and d!1576130 c!833602) b!4904639))

(assert (= (and d!1576130 (not c!833602)) b!4904638))

(assert (= (and b!4904638 c!833599) b!4904640))

(assert (= (and b!4904638 (not c!833599)) b!4904634))

(assert (= (and b!4904634 c!833600) b!4904635))

(assert (= (and b!4904634 (not c!833600)) b!4904633))

(assert (= (and b!4904633 c!833601) b!4904636))

(assert (= (and b!4904633 (not c!833601)) b!4904641))

(assert (= (and b!4904641 c!833598) b!4904642))

(assert (= (and b!4904641 (not c!833598)) b!4904637))

(assert (= (or b!4904642 b!4904637) bm!340303))

(assert (= (or b!4904636 bm!340303) bm!340304))

(assert (= (or b!4904635 b!4904642) bm!340305))

(assert (= (or b!4904635 bm!340304) bm!340302))

(declare-fun m!5913688 () Bool)

(assert (=> bm!340302 m!5913688))

(declare-fun m!5913690 () Bool)

(assert (=> bm!340305 m!5913690))

(assert (=> b!4904641 m!5913268))

(declare-fun m!5913692 () Bool)

(assert (=> d!1576130 m!5913692))

(assert (=> d!1576130 m!5912598))

(assert (=> bm!340225 d!1576130))

(declare-fun d!1576132 () Bool)

(declare-fun res!2095068 () Bool)

(declare-fun e!3065938 () Bool)

(assert (=> d!1576132 (=> (not res!2095068) (not e!3065938))))

(assert (=> d!1576132 (= res!2095068 (= (csize!29826 (c!833374 input!1509)) (+ (size!37266 (left!41151 (c!833374 input!1509))) (size!37266 (right!41481 (c!833374 input!1509))))))))

(assert (=> d!1576132 (= (inv!72984 (c!833374 input!1509)) e!3065938)))

(declare-fun b!4904649 () Bool)

(declare-fun res!2095069 () Bool)

(assert (=> b!4904649 (=> (not res!2095069) (not e!3065938))))

(assert (=> b!4904649 (= res!2095069 (and (not (= (left!41151 (c!833374 input!1509)) Empty!14798)) (not (= (right!41481 (c!833374 input!1509)) Empty!14798))))))

(declare-fun b!4904650 () Bool)

(declare-fun res!2095070 () Bool)

(assert (=> b!4904650 (=> (not res!2095070) (not e!3065938))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4904650 (= res!2095070 (= (cheight!15009 (c!833374 input!1509)) (+ (max!0 (height!1965 (left!41151 (c!833374 input!1509))) (height!1965 (right!41481 (c!833374 input!1509)))) 1)))))

(declare-fun b!4904651 () Bool)

(assert (=> b!4904651 (= e!3065938 (<= 0 (cheight!15009 (c!833374 input!1509))))))

(assert (= (and d!1576132 res!2095068) b!4904649))

(assert (= (and b!4904649 res!2095069) b!4904650))

(assert (= (and b!4904650 res!2095070) b!4904651))

(declare-fun m!5913694 () Bool)

(assert (=> d!1576132 m!5913694))

(declare-fun m!5913696 () Bool)

(assert (=> d!1576132 m!5913696))

(assert (=> b!4904650 m!5913572))

(assert (=> b!4904650 m!5913574))

(assert (=> b!4904650 m!5913572))

(assert (=> b!4904650 m!5913574))

(declare-fun m!5913698 () Bool)

(assert (=> b!4904650 m!5913698))

(assert (=> b!4904024 d!1576132))

(assert (=> b!4903982 d!1576074))

(assert (=> b!4903982 d!1575972))

(declare-fun d!1576134 () Bool)

(assert (=> d!1576134 (= (tail!9619 lt!2011528) (t!366751 lt!2011528))))

(assert (=> bm!340226 d!1576134))

(assert (=> d!1575824 d!1575724))

(declare-fun d!1576136 () Bool)

(assert (=> d!1576136 (= (list!17804 (_1!33689 lt!2011777)) (list!17806 (c!833374 (_1!33689 lt!2011777))))))

(declare-fun bs!1176971 () Bool)

(assert (= bs!1176971 d!1576136))

(declare-fun m!5913700 () Bool)

(assert (=> bs!1176971 m!5913700))

(assert (=> d!1575824 d!1576136))

(assert (=> d!1575824 d!1575940))

(declare-fun d!1576138 () Bool)

(declare-fun lt!2012000 () tuple2!60774)

(assert (=> d!1576138 (= (++!12259 (_1!33690 lt!2012000) (_2!33690 lt!2012000)) (list!17804 input!1509))))

(declare-fun sizeTr!346 (List!56659 Int) Int)

(assert (=> d!1576138 (= lt!2012000 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 0 (list!17804 input!1509) (list!17804 input!1509) (sizeTr!346 (list!17804 input!1509) 0)))))

(declare-fun lt!2011999 () Unit!146675)

(declare-fun lt!2012002 () Unit!146675)

(assert (=> d!1576138 (= lt!2011999 lt!2012002)))

(declare-fun lt!2011996 () List!56659)

(declare-fun lt!2011995 () Int)

(assert (=> d!1576138 (= (sizeTr!346 lt!2011996 lt!2011995) (+ (size!37262 lt!2011996) lt!2011995))))

(declare-fun lemmaSizeTrEqualsSize!345 (List!56659 Int) Unit!146675)

(assert (=> d!1576138 (= lt!2012002 (lemmaSizeTrEqualsSize!345 lt!2011996 lt!2011995))))

(assert (=> d!1576138 (= lt!2011995 0)))

(assert (=> d!1576138 (= lt!2011996 Nil!56535)))

(declare-fun lt!2011997 () Unit!146675)

(declare-fun lt!2011998 () Unit!146675)

(assert (=> d!1576138 (= lt!2011997 lt!2011998)))

(declare-fun lt!2012001 () Int)

(assert (=> d!1576138 (= (sizeTr!346 (list!17804 input!1509) lt!2012001) (+ (size!37262 (list!17804 input!1509)) lt!2012001))))

(assert (=> d!1576138 (= lt!2011998 (lemmaSizeTrEqualsSize!345 (list!17804 input!1509) lt!2012001))))

(assert (=> d!1576138 (= lt!2012001 0)))

(assert (=> d!1576138 (validRegex!5898 (regex!8230 rule!164))))

(assert (=> d!1576138 (= (findLongestMatch!1661 (regex!8230 rule!164) (list!17804 input!1509)) lt!2012000)))

(declare-fun bs!1176972 () Bool)

(assert (= bs!1176972 d!1576138))

(declare-fun m!5913702 () Bool)

(assert (=> bs!1176972 m!5913702))

(assert (=> bs!1176972 m!5912546))

(declare-fun m!5913704 () Bool)

(assert (=> bs!1176972 m!5913704))

(assert (=> bs!1176972 m!5912546))

(declare-fun m!5913706 () Bool)

(assert (=> bs!1176972 m!5913706))

(assert (=> bs!1176972 m!5912546))

(assert (=> bs!1176972 m!5912546))

(declare-fun m!5913708 () Bool)

(assert (=> bs!1176972 m!5913708))

(declare-fun m!5913710 () Bool)

(assert (=> bs!1176972 m!5913710))

(assert (=> bs!1176972 m!5912598))

(declare-fun m!5913712 () Bool)

(assert (=> bs!1176972 m!5913712))

(declare-fun m!5913714 () Bool)

(assert (=> bs!1176972 m!5913714))

(assert (=> bs!1176972 m!5912546))

(assert (=> bs!1176972 m!5913708))

(declare-fun m!5913716 () Bool)

(assert (=> bs!1176972 m!5913716))

(assert (=> bs!1176972 m!5912546))

(declare-fun m!5913718 () Bool)

(assert (=> bs!1176972 m!5913718))

(assert (=> d!1575824 d!1576138))

(declare-fun d!1576140 () Bool)

(declare-fun res!2095073 () tuple2!60772)

(assert (=> d!1576140 (= (tuple2!60775 (list!17804 (_1!33689 res!2095073)) (list!17804 (_2!33689 res!2095073))) (findLongestMatch!1661 (regex!8230 rule!164) (list!17804 input!1509)))))

(declare-fun e!3065943 () Bool)

(declare-fun e!3065944 () Bool)

(assert (=> d!1576140 (and (inv!72978 (_1!33689 res!2095073)) e!3065943 (inv!72978 (_2!33689 res!2095073)) e!3065944)))

(assert (=> d!1576140 (= (choose!35812 (regex!8230 rule!164) input!1509) res!2095073)))

(declare-fun b!4904656 () Bool)

(declare-fun tp!1379814 () Bool)

(assert (=> b!4904656 (= e!3065943 (and (inv!72980 (c!833374 (_1!33689 res!2095073))) tp!1379814))))

(declare-fun b!4904657 () Bool)

(declare-fun tp!1379815 () Bool)

(assert (=> b!4904657 (= e!3065944 (and (inv!72980 (c!833374 (_2!33689 res!2095073))) tp!1379815))))

(assert (= d!1576140 b!4904656))

(assert (= d!1576140 b!4904657))

(declare-fun m!5913720 () Bool)

(assert (=> d!1576140 m!5913720))

(declare-fun m!5913722 () Bool)

(assert (=> d!1576140 m!5913722))

(declare-fun m!5913724 () Bool)

(assert (=> d!1576140 m!5913724))

(assert (=> d!1576140 m!5912546))

(assert (=> d!1576140 m!5912546))

(assert (=> d!1576140 m!5912912))

(declare-fun m!5913726 () Bool)

(assert (=> d!1576140 m!5913726))

(declare-fun m!5913728 () Bool)

(assert (=> b!4904656 m!5913728))

(declare-fun m!5913730 () Bool)

(assert (=> b!4904657 m!5913730))

(assert (=> d!1575824 d!1576140))

(declare-fun d!1576142 () Bool)

(assert (=> d!1576142 (= (list!17804 (_2!33689 lt!2011777)) (list!17806 (c!833374 (_2!33689 lt!2011777))))))

(declare-fun bs!1176973 () Bool)

(assert (= bs!1176973 d!1576142))

(declare-fun m!5913732 () Bool)

(assert (=> bs!1176973 m!5913732))

(assert (=> d!1575824 d!1576142))

(assert (=> b!4903932 d!1575790))

(assert (=> b!4903932 d!1576078))

(declare-fun d!1576144 () Bool)

(assert (=> d!1576144 (= (++!12259 (++!12259 Nil!56535 (Cons!56535 lt!2011742 Nil!56535)) lt!2011733) lt!2011528)))

(declare-fun lt!2012005 () Unit!146675)

(declare-fun choose!35824 (List!56659 C!26808 List!56659 List!56659) Unit!146675)

(assert (=> d!1576144 (= lt!2012005 (choose!35824 Nil!56535 lt!2011742 lt!2011733 lt!2011528))))

(assert (=> d!1576144 (= (++!12259 Nil!56535 (Cons!56535 lt!2011742 lt!2011733)) lt!2011528)))

(assert (=> d!1576144 (= (lemmaMoveElementToOtherListKeepsConcatEq!1343 Nil!56535 lt!2011742 lt!2011733 lt!2011528) lt!2012005)))

(declare-fun bs!1176974 () Bool)

(assert (= bs!1176974 d!1576144))

(assert (=> bs!1176974 m!5912820))

(assert (=> bs!1176974 m!5912820))

(assert (=> bs!1176974 m!5912832))

(declare-fun m!5913734 () Bool)

(assert (=> bs!1176974 m!5913734))

(declare-fun m!5913736 () Bool)

(assert (=> bs!1176974 m!5913736))

(assert (=> b!4903932 d!1576144))

(declare-fun d!1576146 () Bool)

(assert (=> d!1576146 (<= (size!37262 Nil!56535) (size!37262 lt!2011528))))

(declare-fun lt!2012008 () Unit!146675)

(declare-fun choose!35825 (List!56659 List!56659) Unit!146675)

(assert (=> d!1576146 (= lt!2012008 (choose!35825 Nil!56535 lt!2011528))))

(assert (=> d!1576146 (isPrefix!4912 Nil!56535 lt!2011528)))

(assert (=> d!1576146 (= (lemmaIsPrefixThenSmallerEqSize!637 Nil!56535 lt!2011528) lt!2012008)))

(declare-fun bs!1176975 () Bool)

(assert (= bs!1176975 d!1576146))

(assert (=> bs!1176975 m!5912534))

(assert (=> bs!1176975 m!5912536))

(declare-fun m!5913738 () Bool)

(assert (=> bs!1176975 m!5913738))

(assert (=> bs!1176975 m!5913504))

(assert (=> b!4903932 d!1576146))

(declare-fun b!4904661 () Bool)

(declare-fun e!3065946 () Bool)

(assert (=> b!4904661 (= e!3065946 (>= (size!37262 lt!2011528) (size!37262 (++!12259 Nil!56535 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535)))))))

(declare-fun b!4904659 () Bool)

(declare-fun res!2095075 () Bool)

(declare-fun e!3065945 () Bool)

(assert (=> b!4904659 (=> (not res!2095075) (not e!3065945))))

(assert (=> b!4904659 (= res!2095075 (= (head!10472 (++!12259 Nil!56535 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535))) (head!10472 lt!2011528)))))

(declare-fun d!1576148 () Bool)

(assert (=> d!1576148 e!3065946))

(declare-fun res!2095077 () Bool)

(assert (=> d!1576148 (=> res!2095077 e!3065946)))

(declare-fun lt!2012009 () Bool)

(assert (=> d!1576148 (= res!2095077 (not lt!2012009))))

(declare-fun e!3065947 () Bool)

(assert (=> d!1576148 (= lt!2012009 e!3065947)))

(declare-fun res!2095076 () Bool)

(assert (=> d!1576148 (=> res!2095076 e!3065947)))

(assert (=> d!1576148 (= res!2095076 ((_ is Nil!56535) (++!12259 Nil!56535 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535))))))

(assert (=> d!1576148 (= (isPrefix!4912 (++!12259 Nil!56535 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535)) lt!2011528) lt!2012009)))

(declare-fun b!4904658 () Bool)

(assert (=> b!4904658 (= e!3065947 e!3065945)))

(declare-fun res!2095074 () Bool)

(assert (=> b!4904658 (=> (not res!2095074) (not e!3065945))))

(assert (=> b!4904658 (= res!2095074 (not ((_ is Nil!56535) lt!2011528)))))

(declare-fun b!4904660 () Bool)

(assert (=> b!4904660 (= e!3065945 (isPrefix!4912 (tail!9619 (++!12259 Nil!56535 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535))) (tail!9619 lt!2011528)))))

(assert (= (and d!1576148 (not res!2095076)) b!4904658))

(assert (= (and b!4904658 res!2095074) b!4904659))

(assert (= (and b!4904659 res!2095075) b!4904660))

(assert (= (and d!1576148 (not res!2095077)) b!4904661))

(assert (=> b!4904661 m!5912536))

(assert (=> b!4904661 m!5912828))

(declare-fun m!5913740 () Bool)

(assert (=> b!4904661 m!5913740))

(assert (=> b!4904659 m!5912828))

(declare-fun m!5913742 () Bool)

(assert (=> b!4904659 m!5913742))

(assert (=> b!4904659 m!5912812))

(assert (=> b!4904660 m!5912828))

(declare-fun m!5913744 () Bool)

(assert (=> b!4904660 m!5913744))

(assert (=> b!4904660 m!5912800))

(assert (=> b!4904660 m!5913744))

(assert (=> b!4904660 m!5912800))

(declare-fun m!5913746 () Bool)

(assert (=> b!4904660 m!5913746))

(assert (=> b!4903932 d!1576148))

(declare-fun b!4904663 () Bool)

(declare-fun e!3065949 () List!56659)

(assert (=> b!4904663 (= e!3065949 (Cons!56535 (h!62983 Nil!56535) (++!12259 (t!366751 Nil!56535) (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535))))))

(declare-fun d!1576150 () Bool)

(declare-fun e!3065948 () Bool)

(assert (=> d!1576150 e!3065948))

(declare-fun res!2095079 () Bool)

(assert (=> d!1576150 (=> (not res!2095079) (not e!3065948))))

(declare-fun lt!2012010 () List!56659)

(assert (=> d!1576150 (= res!2095079 (= (content!10036 lt!2012010) ((_ map or) (content!10036 Nil!56535) (content!10036 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535)))))))

(assert (=> d!1576150 (= lt!2012010 e!3065949)))

(declare-fun c!833603 () Bool)

(assert (=> d!1576150 (= c!833603 ((_ is Nil!56535) Nil!56535))))

(assert (=> d!1576150 (= (++!12259 Nil!56535 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535)) lt!2012010)))

(declare-fun b!4904664 () Bool)

(declare-fun res!2095078 () Bool)

(assert (=> b!4904664 (=> (not res!2095078) (not e!3065948))))

(assert (=> b!4904664 (= res!2095078 (= (size!37262 lt!2012010) (+ (size!37262 Nil!56535) (size!37262 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535)))))))

(declare-fun b!4904662 () Bool)

(assert (=> b!4904662 (= e!3065949 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535))))

(declare-fun b!4904665 () Bool)

(assert (=> b!4904665 (= e!3065948 (or (not (= (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535) Nil!56535)) (= lt!2012010 Nil!56535)))))

(assert (= (and d!1576150 c!833603) b!4904662))

(assert (= (and d!1576150 (not c!833603)) b!4904663))

(assert (= (and d!1576150 res!2095079) b!4904664))

(assert (= (and b!4904664 res!2095078) b!4904665))

(declare-fun m!5913748 () Bool)

(assert (=> b!4904663 m!5913748))

(declare-fun m!5913750 () Bool)

(assert (=> d!1576150 m!5913750))

(assert (=> d!1576150 m!5913492))

(declare-fun m!5913752 () Bool)

(assert (=> d!1576150 m!5913752))

(declare-fun m!5913754 () Bool)

(assert (=> b!4904664 m!5913754))

(assert (=> b!4904664 m!5912534))

(declare-fun m!5913756 () Bool)

(assert (=> b!4904664 m!5913756))

(assert (=> b!4903932 d!1576150))

(declare-fun d!1576152 () Bool)

(assert (=> d!1576152 (isPrefix!4912 (++!12259 Nil!56535 (Cons!56535 (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) Nil!56535)) lt!2011528)))

(declare-fun lt!2012013 () Unit!146675)

(declare-fun choose!35826 (List!56659 List!56659) Unit!146675)

(assert (=> d!1576152 (= lt!2012013 (choose!35826 Nil!56535 lt!2011528))))

(assert (=> d!1576152 (isPrefix!4912 Nil!56535 lt!2011528)))

(assert (=> d!1576152 (= (lemmaAddHeadSuffixToPrefixStillPrefix!725 Nil!56535 lt!2011528) lt!2012013)))

(declare-fun bs!1176976 () Bool)

(assert (= bs!1176976 d!1576152))

(assert (=> bs!1176976 m!5912828))

(assert (=> bs!1176976 m!5912830))

(assert (=> bs!1176976 m!5912794))

(assert (=> bs!1176976 m!5912826))

(assert (=> bs!1176976 m!5913504))

(assert (=> bs!1176976 m!5912828))

(declare-fun m!5913758 () Bool)

(assert (=> bs!1176976 m!5913758))

(assert (=> bs!1176976 m!5912794))

(assert (=> b!4903932 d!1576152))

(assert (=> b!4903932 d!1575734))

(declare-fun d!1576154 () Bool)

(assert (=> d!1576154 (= (head!10472 (getSuffix!2900 lt!2011528 Nil!56535)) (h!62983 (getSuffix!2900 lt!2011528 Nil!56535)))))

(assert (=> b!4903932 d!1576154))

(assert (=> b!4903932 d!1576060))

(declare-fun b!4904667 () Bool)

(declare-fun e!3065951 () List!56659)

(assert (=> b!4904667 (= e!3065951 (Cons!56535 (h!62983 Nil!56535) (++!12259 (t!366751 Nil!56535) (Cons!56535 lt!2011742 Nil!56535))))))

(declare-fun d!1576156 () Bool)

(declare-fun e!3065950 () Bool)

(assert (=> d!1576156 e!3065950))

(declare-fun res!2095081 () Bool)

(assert (=> d!1576156 (=> (not res!2095081) (not e!3065950))))

(declare-fun lt!2012014 () List!56659)

(assert (=> d!1576156 (= res!2095081 (= (content!10036 lt!2012014) ((_ map or) (content!10036 Nil!56535) (content!10036 (Cons!56535 lt!2011742 Nil!56535)))))))

(assert (=> d!1576156 (= lt!2012014 e!3065951)))

(declare-fun c!833604 () Bool)

(assert (=> d!1576156 (= c!833604 ((_ is Nil!56535) Nil!56535))))

(assert (=> d!1576156 (= (++!12259 Nil!56535 (Cons!56535 lt!2011742 Nil!56535)) lt!2012014)))

(declare-fun b!4904668 () Bool)

(declare-fun res!2095080 () Bool)

(assert (=> b!4904668 (=> (not res!2095080) (not e!3065950))))

(assert (=> b!4904668 (= res!2095080 (= (size!37262 lt!2012014) (+ (size!37262 Nil!56535) (size!37262 (Cons!56535 lt!2011742 Nil!56535)))))))

(declare-fun b!4904666 () Bool)

(assert (=> b!4904666 (= e!3065951 (Cons!56535 lt!2011742 Nil!56535))))

(declare-fun b!4904669 () Bool)

(assert (=> b!4904669 (= e!3065950 (or (not (= (Cons!56535 lt!2011742 Nil!56535) Nil!56535)) (= lt!2012014 Nil!56535)))))

(assert (= (and d!1576156 c!833604) b!4904666))

(assert (= (and d!1576156 (not c!833604)) b!4904667))

(assert (= (and d!1576156 res!2095081) b!4904668))

(assert (= (and b!4904668 res!2095080) b!4904669))

(declare-fun m!5913760 () Bool)

(assert (=> b!4904667 m!5913760))

(declare-fun m!5913762 () Bool)

(assert (=> d!1576156 m!5913762))

(assert (=> d!1576156 m!5913492))

(declare-fun m!5913764 () Bool)

(assert (=> d!1576156 m!5913764))

(declare-fun m!5913766 () Bool)

(assert (=> b!4904668 m!5913766))

(assert (=> b!4904668 m!5912534))

(declare-fun m!5913768 () Bool)

(assert (=> b!4904668 m!5913768))

(assert (=> b!4903932 d!1576156))

(assert (=> b!4903932 d!1576134))

(declare-fun b!4904671 () Bool)

(declare-fun e!3065953 () List!56659)

(assert (=> b!4904671 (= e!3065953 (Cons!56535 (h!62983 Nil!56535) (++!12259 (t!366751 Nil!56535) (Cons!56535 (head!10472 lt!2011528) Nil!56535))))))

(declare-fun d!1576158 () Bool)

(declare-fun e!3065952 () Bool)

(assert (=> d!1576158 e!3065952))

(declare-fun res!2095083 () Bool)

(assert (=> d!1576158 (=> (not res!2095083) (not e!3065952))))

(declare-fun lt!2012015 () List!56659)

(assert (=> d!1576158 (= res!2095083 (= (content!10036 lt!2012015) ((_ map or) (content!10036 Nil!56535) (content!10036 (Cons!56535 (head!10472 lt!2011528) Nil!56535)))))))

(assert (=> d!1576158 (= lt!2012015 e!3065953)))

(declare-fun c!833605 () Bool)

(assert (=> d!1576158 (= c!833605 ((_ is Nil!56535) Nil!56535))))

(assert (=> d!1576158 (= (++!12259 Nil!56535 (Cons!56535 (head!10472 lt!2011528) Nil!56535)) lt!2012015)))

(declare-fun b!4904672 () Bool)

(declare-fun res!2095082 () Bool)

(assert (=> b!4904672 (=> (not res!2095082) (not e!3065952))))

(assert (=> b!4904672 (= res!2095082 (= (size!37262 lt!2012015) (+ (size!37262 Nil!56535) (size!37262 (Cons!56535 (head!10472 lt!2011528) Nil!56535)))))))

(declare-fun b!4904670 () Bool)

(assert (=> b!4904670 (= e!3065953 (Cons!56535 (head!10472 lt!2011528) Nil!56535))))

(declare-fun b!4904673 () Bool)

(assert (=> b!4904673 (= e!3065952 (or (not (= (Cons!56535 (head!10472 lt!2011528) Nil!56535) Nil!56535)) (= lt!2012015 Nil!56535)))))

(assert (= (and d!1576158 c!833605) b!4904670))

(assert (= (and d!1576158 (not c!833605)) b!4904671))

(assert (= (and d!1576158 res!2095083) b!4904672))

(assert (= (and b!4904672 res!2095082) b!4904673))

(declare-fun m!5913770 () Bool)

(assert (=> b!4904671 m!5913770))

(declare-fun m!5913772 () Bool)

(assert (=> d!1576158 m!5913772))

(assert (=> d!1576158 m!5913492))

(declare-fun m!5913774 () Bool)

(assert (=> d!1576158 m!5913774))

(declare-fun m!5913776 () Bool)

(assert (=> b!4904672 m!5913776))

(assert (=> b!4904672 m!5912534))

(declare-fun m!5913778 () Bool)

(assert (=> b!4904672 m!5913778))

(assert (=> b!4903932 d!1576158))

(declare-fun b!4904675 () Bool)

(declare-fun e!3065955 () List!56659)

(assert (=> b!4904675 (= e!3065955 (Cons!56535 (h!62983 (++!12259 Nil!56535 (Cons!56535 lt!2011742 Nil!56535))) (++!12259 (t!366751 (++!12259 Nil!56535 (Cons!56535 lt!2011742 Nil!56535))) lt!2011733)))))

(declare-fun d!1576160 () Bool)

(declare-fun e!3065954 () Bool)

(assert (=> d!1576160 e!3065954))

(declare-fun res!2095085 () Bool)

(assert (=> d!1576160 (=> (not res!2095085) (not e!3065954))))

(declare-fun lt!2012016 () List!56659)

(assert (=> d!1576160 (= res!2095085 (= (content!10036 lt!2012016) ((_ map or) (content!10036 (++!12259 Nil!56535 (Cons!56535 lt!2011742 Nil!56535))) (content!10036 lt!2011733))))))

(assert (=> d!1576160 (= lt!2012016 e!3065955)))

(declare-fun c!833606 () Bool)

(assert (=> d!1576160 (= c!833606 ((_ is Nil!56535) (++!12259 Nil!56535 (Cons!56535 lt!2011742 Nil!56535))))))

(assert (=> d!1576160 (= (++!12259 (++!12259 Nil!56535 (Cons!56535 lt!2011742 Nil!56535)) lt!2011733) lt!2012016)))

(declare-fun b!4904676 () Bool)

(declare-fun res!2095084 () Bool)

(assert (=> b!4904676 (=> (not res!2095084) (not e!3065954))))

(assert (=> b!4904676 (= res!2095084 (= (size!37262 lt!2012016) (+ (size!37262 (++!12259 Nil!56535 (Cons!56535 lt!2011742 Nil!56535))) (size!37262 lt!2011733))))))

(declare-fun b!4904674 () Bool)

(assert (=> b!4904674 (= e!3065955 lt!2011733)))

(declare-fun b!4904677 () Bool)

(assert (=> b!4904677 (= e!3065954 (or (not (= lt!2011733 Nil!56535)) (= lt!2012016 (++!12259 Nil!56535 (Cons!56535 lt!2011742 Nil!56535)))))))

(assert (= (and d!1576160 c!833606) b!4904674))

(assert (= (and d!1576160 (not c!833606)) b!4904675))

(assert (= (and d!1576160 res!2095085) b!4904676))

(assert (= (and b!4904676 res!2095084) b!4904677))

(declare-fun m!5913780 () Bool)

(assert (=> b!4904675 m!5913780))

(declare-fun m!5913782 () Bool)

(assert (=> d!1576160 m!5913782))

(assert (=> d!1576160 m!5912820))

(declare-fun m!5913784 () Bool)

(assert (=> d!1576160 m!5913784))

(declare-fun m!5913786 () Bool)

(assert (=> d!1576160 m!5913786))

(declare-fun m!5913788 () Bool)

(assert (=> b!4904676 m!5913788))

(assert (=> b!4904676 m!5912820))

(declare-fun m!5913790 () Bool)

(assert (=> b!4904676 m!5913790))

(declare-fun m!5913792 () Bool)

(assert (=> b!4904676 m!5913792))

(assert (=> b!4903932 d!1576160))

(declare-fun d!1576162 () Bool)

(assert (=> d!1576162 (= (isEmpty!30404 lt!2011767) (not ((_ is Some!14097) lt!2011767)))))

(assert (=> d!1575810 d!1576162))

(declare-fun d!1576164 () Bool)

(assert (=> d!1576164 (= (isEmpty!30400 (_1!33690 lt!2011769)) ((_ is Nil!56535) (_1!33690 lt!2011769)))))

(assert (=> d!1575810 d!1576164))

(declare-fun d!1576166 () Bool)

(declare-fun lt!2012022 () tuple2!60774)

(assert (=> d!1576166 (= (++!12259 (_1!33690 lt!2012022) (_2!33690 lt!2012022)) lt!2011528)))

(assert (=> d!1576166 (= lt!2012022 (findLongestMatchInner!1793 (regex!8230 rule!164) Nil!56535 0 lt!2011528 lt!2011528 (sizeTr!346 lt!2011528 0)))))

(declare-fun lt!2012021 () Unit!146675)

(declare-fun lt!2012024 () Unit!146675)

(assert (=> d!1576166 (= lt!2012021 lt!2012024)))

(declare-fun lt!2012018 () List!56659)

(declare-fun lt!2012017 () Int)

(assert (=> d!1576166 (= (sizeTr!346 lt!2012018 lt!2012017) (+ (size!37262 lt!2012018) lt!2012017))))

(assert (=> d!1576166 (= lt!2012024 (lemmaSizeTrEqualsSize!345 lt!2012018 lt!2012017))))

(assert (=> d!1576166 (= lt!2012017 0)))

(assert (=> d!1576166 (= lt!2012018 Nil!56535)))

(declare-fun lt!2012019 () Unit!146675)

(declare-fun lt!2012020 () Unit!146675)

(assert (=> d!1576166 (= lt!2012019 lt!2012020)))

(declare-fun lt!2012023 () Int)

(assert (=> d!1576166 (= (sizeTr!346 lt!2011528 lt!2012023) (+ (size!37262 lt!2011528) lt!2012023))))

(assert (=> d!1576166 (= lt!2012020 (lemmaSizeTrEqualsSize!345 lt!2011528 lt!2012023))))

(assert (=> d!1576166 (= lt!2012023 0)))

(assert (=> d!1576166 (validRegex!5898 (regex!8230 rule!164))))

(assert (=> d!1576166 (= (findLongestMatch!1661 (regex!8230 rule!164) lt!2011528) lt!2012022)))

(declare-fun bs!1176977 () Bool)

(assert (= bs!1176977 d!1576166))

(declare-fun m!5913794 () Bool)

(assert (=> bs!1176977 m!5913794))

(assert (=> bs!1176977 m!5912536))

(declare-fun m!5913796 () Bool)

(assert (=> bs!1176977 m!5913796))

(declare-fun m!5913798 () Bool)

(assert (=> bs!1176977 m!5913798))

(declare-fun m!5913800 () Bool)

(assert (=> bs!1176977 m!5913800))

(assert (=> bs!1176977 m!5912598))

(declare-fun m!5913802 () Bool)

(assert (=> bs!1176977 m!5913802))

(declare-fun m!5913804 () Bool)

(assert (=> bs!1176977 m!5913804))

(assert (=> bs!1176977 m!5913798))

(declare-fun m!5913806 () Bool)

(assert (=> bs!1176977 m!5913806))

(declare-fun m!5913808 () Bool)

(assert (=> bs!1176977 m!5913808))

(assert (=> d!1575810 d!1576166))

(assert (=> d!1575810 d!1575792))

(declare-fun d!1576168 () Bool)

(declare-fun res!2095090 () Bool)

(declare-fun e!3065958 () Bool)

(assert (=> d!1576168 (=> (not res!2095090) (not e!3065958))))

(assert (=> d!1576168 (= res!2095090 (<= (size!37262 (list!17807 (xs!18114 (c!833374 input!1509)))) 512))))

(assert (=> d!1576168 (= (inv!72985 (c!833374 input!1509)) e!3065958)))

(declare-fun b!4904682 () Bool)

(declare-fun res!2095091 () Bool)

(assert (=> b!4904682 (=> (not res!2095091) (not e!3065958))))

(assert (=> b!4904682 (= res!2095091 (= (csize!29827 (c!833374 input!1509)) (size!37262 (list!17807 (xs!18114 (c!833374 input!1509))))))))

(declare-fun b!4904683 () Bool)

(assert (=> b!4904683 (= e!3065958 (and (> (csize!29827 (c!833374 input!1509)) 0) (<= (csize!29827 (c!833374 input!1509)) 512)))))

(assert (= (and d!1576168 res!2095090) b!4904682))

(assert (= (and b!4904682 res!2095091) b!4904683))

(assert (=> d!1576168 m!5913158))

(assert (=> d!1576168 m!5913158))

(declare-fun m!5913810 () Bool)

(assert (=> d!1576168 m!5913810))

(assert (=> b!4904682 m!5913158))

(assert (=> b!4904682 m!5913158))

(assert (=> b!4904682 m!5913810))

(assert (=> b!4904026 d!1576168))

(declare-fun d!1576170 () Bool)

(declare-fun c!833607 () Bool)

(assert (=> d!1576170 (= c!833607 ((_ is Node!14798) (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))))

(declare-fun e!3065959 () Bool)

(assert (=> d!1576170 (= (inv!72980 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))) e!3065959)))

(declare-fun b!4904684 () Bool)

(assert (=> b!4904684 (= e!3065959 (inv!72984 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))))

(declare-fun b!4904685 () Bool)

(declare-fun e!3065960 () Bool)

(assert (=> b!4904685 (= e!3065959 e!3065960)))

(declare-fun res!2095092 () Bool)

(assert (=> b!4904685 (= res!2095092 (not ((_ is Leaf!24630) (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))))))))

(assert (=> b!4904685 (=> res!2095092 e!3065960)))

(declare-fun b!4904686 () Bool)

(assert (=> b!4904686 (= e!3065960 (inv!72985 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))))))

(assert (= (and d!1576170 c!833607) b!4904684))

(assert (= (and d!1576170 (not c!833607)) b!4904685))

(assert (= (and b!4904685 (not res!2095092)) b!4904686))

(declare-fun m!5913812 () Bool)

(assert (=> b!4904684 m!5913812))

(declare-fun m!5913814 () Bool)

(assert (=> b!4904686 m!5913814))

(assert (=> b!4904057 d!1576170))

(declare-fun d!1576172 () Bool)

(assert (=> d!1576172 (= (isEmpty!30400 (_1!33690 lt!2011719)) ((_ is Nil!56535) (_1!33690 lt!2011719)))))

(assert (=> b!4903933 d!1576172))

(declare-fun d!1576174 () Bool)

(declare-fun lt!2012025 () Int)

(assert (=> d!1576174 (>= lt!2012025 0)))

(declare-fun e!3065961 () Int)

(assert (=> d!1576174 (= lt!2012025 e!3065961)))

(declare-fun c!833608 () Bool)

(assert (=> d!1576174 (= c!833608 ((_ is Nil!56535) (list!17804 (_1!33689 lt!2011532))))))

(assert (=> d!1576174 (= (size!37262 (list!17804 (_1!33689 lt!2011532))) lt!2012025)))

(declare-fun b!4904687 () Bool)

(assert (=> b!4904687 (= e!3065961 0)))

(declare-fun b!4904688 () Bool)

(assert (=> b!4904688 (= e!3065961 (+ 1 (size!37262 (t!366751 (list!17804 (_1!33689 lt!2011532))))))))

(assert (= (and d!1576174 c!833608) b!4904687))

(assert (= (and d!1576174 (not c!833608)) b!4904688))

(declare-fun m!5913816 () Bool)

(assert (=> b!4904688 m!5913816))

(assert (=> d!1575802 d!1576174))

(assert (=> d!1575802 d!1575806))

(declare-fun d!1576176 () Bool)

(declare-fun lt!2012028 () Int)

(assert (=> d!1576176 (= lt!2012028 (size!37262 (list!17806 (c!833374 (_1!33689 lt!2011532)))))))

(assert (=> d!1576176 (= lt!2012028 (ite ((_ is Empty!14798) (c!833374 (_1!33689 lt!2011532))) 0 (ite ((_ is Leaf!24630) (c!833374 (_1!33689 lt!2011532))) (csize!29827 (c!833374 (_1!33689 lt!2011532))) (csize!29826 (c!833374 (_1!33689 lt!2011532))))))))

(assert (=> d!1576176 (= (size!37266 (c!833374 (_1!33689 lt!2011532))) lt!2012028)))

(declare-fun bs!1176978 () Bool)

(assert (= bs!1176978 d!1576176))

(assert (=> bs!1176978 m!5912862))

(assert (=> bs!1176978 m!5912862))

(declare-fun m!5913818 () Bool)

(assert (=> bs!1176978 m!5913818))

(assert (=> d!1575802 d!1576176))

(declare-fun b!4904692 () Bool)

(declare-fun e!3065963 () Bool)

(assert (=> b!4904692 (= e!3065963 (>= (size!37262 lt!2011528) (size!37262 lt!2011528)))))

(declare-fun b!4904690 () Bool)

(declare-fun res!2095094 () Bool)

(declare-fun e!3065962 () Bool)

(assert (=> b!4904690 (=> (not res!2095094) (not e!3065962))))

(assert (=> b!4904690 (= res!2095094 (= (head!10472 lt!2011528) (head!10472 lt!2011528)))))

(declare-fun d!1576178 () Bool)

(assert (=> d!1576178 e!3065963))

(declare-fun res!2095096 () Bool)

(assert (=> d!1576178 (=> res!2095096 e!3065963)))

(declare-fun lt!2012029 () Bool)

(assert (=> d!1576178 (= res!2095096 (not lt!2012029))))

(declare-fun e!3065964 () Bool)

(assert (=> d!1576178 (= lt!2012029 e!3065964)))

(declare-fun res!2095095 () Bool)

(assert (=> d!1576178 (=> res!2095095 e!3065964)))

(assert (=> d!1576178 (= res!2095095 ((_ is Nil!56535) lt!2011528))))

(assert (=> d!1576178 (= (isPrefix!4912 lt!2011528 lt!2011528) lt!2012029)))

(declare-fun b!4904689 () Bool)

(assert (=> b!4904689 (= e!3065964 e!3065962)))

(declare-fun res!2095093 () Bool)

(assert (=> b!4904689 (=> (not res!2095093) (not e!3065962))))

(assert (=> b!4904689 (= res!2095093 (not ((_ is Nil!56535) lt!2011528)))))

(declare-fun b!4904691 () Bool)

(assert (=> b!4904691 (= e!3065962 (isPrefix!4912 (tail!9619 lt!2011528) (tail!9619 lt!2011528)))))

(assert (= (and d!1576178 (not res!2095095)) b!4904689))

(assert (= (and b!4904689 res!2095093) b!4904690))

(assert (= (and b!4904690 res!2095094) b!4904691))

(assert (= (and d!1576178 (not res!2095096)) b!4904692))

(assert (=> b!4904692 m!5912536))

(assert (=> b!4904692 m!5912536))

(assert (=> b!4904690 m!5912812))

(assert (=> b!4904690 m!5912812))

(assert (=> b!4904691 m!5912800))

(assert (=> b!4904691 m!5912800))

(assert (=> b!4904691 m!5912800))

(assert (=> b!4904691 m!5912800))

(declare-fun m!5913820 () Bool)

(assert (=> b!4904691 m!5913820))

(assert (=> bm!340229 d!1576178))

(declare-fun tp!1379816 () Bool)

(declare-fun b!4904693 () Bool)

(declare-fun e!3065966 () Bool)

(declare-fun tp!1379817 () Bool)

(assert (=> b!4904693 (= e!3065966 (and (inv!72980 (left!41151 (left!41151 (c!833374 input!1509)))) tp!1379817 (inv!72980 (right!41481 (left!41151 (c!833374 input!1509)))) tp!1379816))))

(declare-fun b!4904695 () Bool)

(declare-fun e!3065965 () Bool)

(declare-fun tp!1379818 () Bool)

(assert (=> b!4904695 (= e!3065965 tp!1379818)))

(declare-fun b!4904694 () Bool)

(assert (=> b!4904694 (= e!3065966 (and (inv!72986 (xs!18114 (left!41151 (c!833374 input!1509)))) e!3065965))))

(assert (=> b!4904049 (= tp!1379754 (and (inv!72980 (left!41151 (c!833374 input!1509))) e!3065966))))

(assert (= (and b!4904049 ((_ is Node!14798) (left!41151 (c!833374 input!1509)))) b!4904693))

(assert (= b!4904694 b!4904695))

(assert (= (and b!4904049 ((_ is Leaf!24630) (left!41151 (c!833374 input!1509)))) b!4904694))

(declare-fun m!5913822 () Bool)

(assert (=> b!4904693 m!5913822))

(declare-fun m!5913824 () Bool)

(assert (=> b!4904693 m!5913824))

(declare-fun m!5913826 () Bool)

(assert (=> b!4904694 m!5913826))

(assert (=> b!4904049 m!5912922))

(declare-fun tp!1379819 () Bool)

(declare-fun b!4904696 () Bool)

(declare-fun tp!1379820 () Bool)

(declare-fun e!3065968 () Bool)

(assert (=> b!4904696 (= e!3065968 (and (inv!72980 (left!41151 (right!41481 (c!833374 input!1509)))) tp!1379820 (inv!72980 (right!41481 (right!41481 (c!833374 input!1509)))) tp!1379819))))

(declare-fun b!4904698 () Bool)

(declare-fun e!3065967 () Bool)

(declare-fun tp!1379821 () Bool)

(assert (=> b!4904698 (= e!3065967 tp!1379821)))

(declare-fun b!4904697 () Bool)

(assert (=> b!4904697 (= e!3065968 (and (inv!72986 (xs!18114 (right!41481 (c!833374 input!1509)))) e!3065967))))

(assert (=> b!4904049 (= tp!1379753 (and (inv!72980 (right!41481 (c!833374 input!1509))) e!3065968))))

(assert (= (and b!4904049 ((_ is Node!14798) (right!41481 (c!833374 input!1509)))) b!4904696))

(assert (= b!4904697 b!4904698))

(assert (= (and b!4904049 ((_ is Leaf!24630) (right!41481 (c!833374 input!1509)))) b!4904697))

(declare-fun m!5913828 () Bool)

(assert (=> b!4904696 m!5913828))

(declare-fun m!5913830 () Bool)

(assert (=> b!4904696 m!5913830))

(declare-fun m!5913832 () Bool)

(assert (=> b!4904697 m!5913832))

(assert (=> b!4904049 m!5912924))

(declare-fun tp!1379822 () Bool)

(declare-fun b!4904699 () Bool)

(declare-fun e!3065970 () Bool)

(declare-fun tp!1379823 () Bool)

(assert (=> b!4904699 (= e!3065970 (and (inv!72980 (left!41151 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))))) tp!1379823 (inv!72980 (right!41481 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))))) tp!1379822))))

(declare-fun b!4904701 () Bool)

(declare-fun e!3065969 () Bool)

(declare-fun tp!1379824 () Bool)

(assert (=> b!4904701 (= e!3065969 tp!1379824)))

(declare-fun b!4904700 () Bool)

(assert (=> b!4904700 (= e!3065970 (and (inv!72986 (xs!18114 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))))) e!3065969))))

(assert (=> b!4904057 (= tp!1379759 (and (inv!72980 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532))))) e!3065970))))

(assert (= (and b!4904057 ((_ is Node!14798) (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))))) b!4904699))

(assert (= b!4904700 b!4904701))

(assert (= (and b!4904057 ((_ is Leaf!24630) (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (_1!33689 lt!2011532)))))) b!4904700))

(declare-fun m!5913834 () Bool)

(assert (=> b!4904699 m!5913834))

(declare-fun m!5913836 () Bool)

(assert (=> b!4904699 m!5913836))

(declare-fun m!5913838 () Bool)

(assert (=> b!4904700 m!5913838))

(assert (=> b!4904057 m!5912942))

(declare-fun b!4904702 () Bool)

(declare-fun tp!1379826 () Bool)

(declare-fun e!3065972 () Bool)

(declare-fun tp!1379825 () Bool)

(assert (=> b!4904702 (= e!3065972 (and (inv!72980 (left!41151 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))))) tp!1379826 (inv!72980 (right!41481 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))))) tp!1379825))))

(declare-fun b!4904704 () Bool)

(declare-fun e!3065971 () Bool)

(declare-fun tp!1379827 () Bool)

(assert (=> b!4904704 (= e!3065971 tp!1379827)))

(declare-fun b!4904703 () Bool)

(assert (=> b!4904703 (= e!3065972 (and (inv!72986 (xs!18114 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))))) e!3065971))))

(assert (=> b!4904056 (= tp!1379758 (and (inv!72980 (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527))))) e!3065972))))

(assert (= (and b!4904056 ((_ is Node!14798) (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))))) b!4904702))

(assert (= b!4904703 b!4904704))

(assert (= (and b!4904056 ((_ is Leaf!24630) (c!833374 (dynLambda!22806 (toChars!11004 (transformation!8230 rule!164)) (dynLambda!22805 (toValue!11145 (transformation!8230 rule!164)) (seqFromList!5972 lt!2011527)))))) b!4904703))

(declare-fun m!5913840 () Bool)

(assert (=> b!4904702 m!5913840))

(declare-fun m!5913842 () Bool)

(assert (=> b!4904702 m!5913842))

(declare-fun m!5913844 () Bool)

(assert (=> b!4904703 m!5913844))

(assert (=> b!4904056 m!5912928))

(declare-fun b!4904706 () Bool)

(declare-fun e!3065973 () Bool)

(declare-fun tp!1379829 () Bool)

(declare-fun tp!1379831 () Bool)

(assert (=> b!4904706 (= e!3065973 (and tp!1379829 tp!1379831))))

(declare-fun b!4904705 () Bool)

(assert (=> b!4904705 (= e!3065973 tp_is_empty!35819)))

(assert (=> b!4904038 (= tp!1379743 e!3065973)))

(declare-fun b!4904708 () Bool)

(declare-fun tp!1379830 () Bool)

(declare-fun tp!1379832 () Bool)

(assert (=> b!4904708 (= e!3065973 (and tp!1379830 tp!1379832))))

(declare-fun b!4904707 () Bool)

(declare-fun tp!1379828 () Bool)

(assert (=> b!4904707 (= e!3065973 tp!1379828)))

(assert (= (and b!4904038 ((_ is ElementMatch!13305) (regOne!27122 (regex!8230 rule!164)))) b!4904705))

(assert (= (and b!4904038 ((_ is Concat!21845) (regOne!27122 (regex!8230 rule!164)))) b!4904706))

(assert (= (and b!4904038 ((_ is Star!13305) (regOne!27122 (regex!8230 rule!164)))) b!4904707))

(assert (= (and b!4904038 ((_ is Union!13305) (regOne!27122 (regex!8230 rule!164)))) b!4904708))

(declare-fun b!4904710 () Bool)

(declare-fun e!3065974 () Bool)

(declare-fun tp!1379834 () Bool)

(declare-fun tp!1379836 () Bool)

(assert (=> b!4904710 (= e!3065974 (and tp!1379834 tp!1379836))))

(declare-fun b!4904709 () Bool)

(assert (=> b!4904709 (= e!3065974 tp_is_empty!35819)))

(assert (=> b!4904038 (= tp!1379745 e!3065974)))

(declare-fun b!4904712 () Bool)

(declare-fun tp!1379835 () Bool)

(declare-fun tp!1379837 () Bool)

(assert (=> b!4904712 (= e!3065974 (and tp!1379835 tp!1379837))))

(declare-fun b!4904711 () Bool)

(declare-fun tp!1379833 () Bool)

(assert (=> b!4904711 (= e!3065974 tp!1379833)))

(assert (= (and b!4904038 ((_ is ElementMatch!13305) (regTwo!27122 (regex!8230 rule!164)))) b!4904709))

(assert (= (and b!4904038 ((_ is Concat!21845) (regTwo!27122 (regex!8230 rule!164)))) b!4904710))

(assert (= (and b!4904038 ((_ is Star!13305) (regTwo!27122 (regex!8230 rule!164)))) b!4904711))

(assert (= (and b!4904038 ((_ is Union!13305) (regTwo!27122 (regex!8230 rule!164)))) b!4904712))

(declare-fun b!4904717 () Bool)

(declare-fun e!3065977 () Bool)

(declare-fun tp!1379840 () Bool)

(assert (=> b!4904717 (= e!3065977 (and tp_is_empty!35819 tp!1379840))))

(assert (=> b!4904051 (= tp!1379755 e!3065977)))

(assert (= (and b!4904051 ((_ is Cons!56535) (innerList!14886 (xs!18114 (c!833374 input!1509))))) b!4904717))

(declare-fun b!4904719 () Bool)

(declare-fun e!3065978 () Bool)

(declare-fun tp!1379842 () Bool)

(declare-fun tp!1379844 () Bool)

(assert (=> b!4904719 (= e!3065978 (and tp!1379842 tp!1379844))))

(declare-fun b!4904718 () Bool)

(assert (=> b!4904718 (= e!3065978 tp_is_empty!35819)))

(assert (=> b!4904040 (= tp!1379744 e!3065978)))

(declare-fun b!4904721 () Bool)

(declare-fun tp!1379843 () Bool)

(declare-fun tp!1379845 () Bool)

(assert (=> b!4904721 (= e!3065978 (and tp!1379843 tp!1379845))))

(declare-fun b!4904720 () Bool)

(declare-fun tp!1379841 () Bool)

(assert (=> b!4904720 (= e!3065978 tp!1379841)))

(assert (= (and b!4904040 ((_ is ElementMatch!13305) (regOne!27123 (regex!8230 rule!164)))) b!4904718))

(assert (= (and b!4904040 ((_ is Concat!21845) (regOne!27123 (regex!8230 rule!164)))) b!4904719))

(assert (= (and b!4904040 ((_ is Star!13305) (regOne!27123 (regex!8230 rule!164)))) b!4904720))

(assert (= (and b!4904040 ((_ is Union!13305) (regOne!27123 (regex!8230 rule!164)))) b!4904721))

(declare-fun b!4904723 () Bool)

(declare-fun e!3065979 () Bool)

(declare-fun tp!1379847 () Bool)

(declare-fun tp!1379849 () Bool)

(assert (=> b!4904723 (= e!3065979 (and tp!1379847 tp!1379849))))

(declare-fun b!4904722 () Bool)

(assert (=> b!4904722 (= e!3065979 tp_is_empty!35819)))

(assert (=> b!4904040 (= tp!1379746 e!3065979)))

(declare-fun b!4904725 () Bool)

(declare-fun tp!1379848 () Bool)

(declare-fun tp!1379850 () Bool)

(assert (=> b!4904725 (= e!3065979 (and tp!1379848 tp!1379850))))

(declare-fun b!4904724 () Bool)

(declare-fun tp!1379846 () Bool)

(assert (=> b!4904724 (= e!3065979 tp!1379846)))

(assert (= (and b!4904040 ((_ is ElementMatch!13305) (regTwo!27123 (regex!8230 rule!164)))) b!4904722))

(assert (= (and b!4904040 ((_ is Concat!21845) (regTwo!27123 (regex!8230 rule!164)))) b!4904723))

(assert (= (and b!4904040 ((_ is Star!13305) (regTwo!27123 (regex!8230 rule!164)))) b!4904724))

(assert (= (and b!4904040 ((_ is Union!13305) (regTwo!27123 (regex!8230 rule!164)))) b!4904725))

(declare-fun b!4904727 () Bool)

(declare-fun e!3065980 () Bool)

(declare-fun tp!1379852 () Bool)

(declare-fun tp!1379854 () Bool)

(assert (=> b!4904727 (= e!3065980 (and tp!1379852 tp!1379854))))

(declare-fun b!4904726 () Bool)

(assert (=> b!4904726 (= e!3065980 tp_is_empty!35819)))

(assert (=> b!4904039 (= tp!1379742 e!3065980)))

(declare-fun b!4904729 () Bool)

(declare-fun tp!1379853 () Bool)

(declare-fun tp!1379855 () Bool)

(assert (=> b!4904729 (= e!3065980 (and tp!1379853 tp!1379855))))

(declare-fun b!4904728 () Bool)

(declare-fun tp!1379851 () Bool)

(assert (=> b!4904728 (= e!3065980 tp!1379851)))

(assert (= (and b!4904039 ((_ is ElementMatch!13305) (reg!13634 (regex!8230 rule!164)))) b!4904726))

(assert (= (and b!4904039 ((_ is Concat!21845) (reg!13634 (regex!8230 rule!164)))) b!4904727))

(assert (= (and b!4904039 ((_ is Star!13305) (reg!13634 (regex!8230 rule!164)))) b!4904728))

(assert (= (and b!4904039 ((_ is Union!13305) (reg!13634 (regex!8230 rule!164)))) b!4904729))

(declare-fun b_lambda!195271 () Bool)

(assert (= b_lambda!195239 (or (and b!4903682 b_free!131893) b_lambda!195271)))

(declare-fun b_lambda!195273 () Bool)

(assert (= b_lambda!195247 (or b!4903689 b_lambda!195273)))

(assert (=> d!1576012 d!1575830))

(declare-fun b_lambda!195275 () Bool)

(assert (= b_lambda!195245 (or (and b!4903682 b_free!131891) b_lambda!195275)))

(declare-fun b_lambda!195277 () Bool)

(assert (= b_lambda!195241 (or (and b!4903682 b_free!131891) b_lambda!195277)))

(declare-fun b_lambda!195279 () Bool)

(assert (= b_lambda!195269 (or b!4903689 b_lambda!195279)))

(assert (=> d!1576116 d!1575828))

(check-sat (not b!4904659) (not d!1576136) (not d!1576138) (not tb!259867) (not b!4904616) (not b!4904509) (not b_next!132681) (not b!4904603) (not d!1575932) (not b!4904585) (not b!4904664) (not b!4904676) (not b!4904663) (not d!1576122) (not d!1576086) (not b!4904484) (not d!1576140) (not b!4904534) (not b!4904710) (not b!4904712) (not b!4904721) (not d!1576156) (not b!4904701) (not b!4904668) (not b!4904576) (not b!4904697) (not b!4904408) (not d!1576090) (not d!1576032) (not b!4904228) (not b!4904418) (not d!1576146) (not b_lambda!195231) (not b!4904612) (not b_lambda!195275) (not b_next!132683) (not d!1576128) (not d!1575922) (not b!4904692) (not d!1576076) (not b!4904605) (not b_lambda!195229) (not d!1576052) (not d!1576006) (not d!1576160) (not b!4904698) (not d!1576008) (not b!4904608) (not bm!340295) (not b_lambda!195279) (not b!4904641) (not d!1576050) (not bm!340299) (not b!4904650) (not d!1576072) (not bm!340301) (not b!4904728) (not bm!340297) (not b!4904671) (not tb!259865) (not b!4904299) (not d!1575934) (not b!4904657) (not bm!340294) (not d!1575960) (not b!4904594) b_and!346317 (not b!4904699) (not b!4904629) (not b!4904234) (not b!4904700) (not b!4904581) (not b!4904291) (not b!4904301) (not b_lambda!195203) (not b_lambda!195227) (not d!1575976) (not b!4904601) (not b!4904695) (not b!4904604) (not d!1576132) (not b!4904727) (not b!4904656) (not b!4904449) (not b!4904614) (not b!4904682) (not b!4904684) (not b_lambda!195277) (not b!4904719) (not b!4904595) (not b_lambda!195237) (not b!4904486) (not d!1576144) (not d!1576056) (not b!4904297) (not d!1576028) (not b_lambda!195207) (not b!4904422) (not d!1576016) (not b_lambda!195273) (not b!4904729) (not b!4904588) (not b!4904578) (not b!4904232) (not b!4904690) (not b!4904720) (not b!4904227) (not b!4904300) (not d!1576176) (not b!4904708) (not d!1576130) (not b!4904724) (not d!1576168) (not d!1576060) (not b!4904694) (not b!4904461) (not b!4904580) (not tb!259877) (not b_lambda!195255) (not b!4904667) (not bm!340253) (not bm!340300) (not bm!340293) (not b!4904577) (not b!4904702) (not b!4904717) (not b!4904660) (not b!4904589) (not b!4904241) (not d!1576110) (not b!4904631) (not b!4904691) (not bm!340305) (not b!4904706) (not bm!340288) (not b_lambda!195205) (not d!1576150) (not b!4904672) (not b!4904704) (not d!1576048) (not b!4904661) (not bm!340254) (not b!4904362) (not b!4904488) (not b!4904506) (not b!4904630) (not b!4904583) (not d!1576102) (not d!1575974) (not b!4904056) (not bm!340296) (not b!4904696) (not b!4904688) (not b!4904412) (not b!4904686) (not b_lambda!195271) (not bm!340279) (not tb!259869) (not b!4904575) (not b!4904703) (not b!4904579) (not bm!340298) (not bm!340255) (not d!1576036) (not d!1576106) (not b!4904504) (not b!4904619) (not b!4904508) (not b!4904231) (not d!1576158) (not d!1576014) (not bm!340276) (not b!4904290) (not d!1576100) (not b!4904229) (not b!4904288) (not b!4904411) (not b!4904711) (not b!4904057) (not d!1576088) (not d!1575962) (not b!4904723) (not b!4904618) (not b_lambda!195225) (not bm!340302) (not b!4904725) (not b!4904421) (not d!1576152) (not b!4904049) (not b!4904610) tp_is_empty!35819 (not d!1576142) (not d!1576166) (not b!4904448) (not b!4904420) (not d!1575978) (not d!1576080) (not b!4904432) (not b!4904526) (not b!4904505) (not b!4904707) (not b!4904533) b_and!346325 (not b!4904675) (not b!4904693))
(check-sat b_and!346325 b_and!346317 (not b_next!132683) (not b_next!132681))
