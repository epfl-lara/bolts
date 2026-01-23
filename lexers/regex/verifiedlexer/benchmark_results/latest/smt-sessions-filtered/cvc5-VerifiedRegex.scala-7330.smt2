; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!389934 () Bool)

(assert start!389934)

(declare-fun b!4114794 () Bool)

(declare-fun b_free!115899 () Bool)

(declare-fun b_next!116603 () Bool)

(assert (=> b!4114794 (= b_free!115899 (not b_next!116603))))

(declare-fun tp!1253051 () Bool)

(declare-fun b_and!317785 () Bool)

(assert (=> b!4114794 (= tp!1253051 b_and!317785)))

(declare-fun b_free!115901 () Bool)

(declare-fun b_next!116605 () Bool)

(assert (=> b!4114794 (= b_free!115901 (not b_next!116605))))

(declare-fun tp!1253049 () Bool)

(declare-fun b_and!317787 () Bool)

(assert (=> b!4114794 (= tp!1253049 b_and!317787)))

(declare-fun e!2553001 () Bool)

(assert (=> b!4114794 (= e!2553001 (and tp!1253051 tp!1253049))))

(declare-fun b!4114795 () Bool)

(declare-fun res!1680653 () Bool)

(declare-fun e!2553000 () Bool)

(assert (=> b!4114795 (=> (not res!1680653) (not e!2553000))))

(declare-datatypes ((String!51056 0))(
  ( (String!51057 (value!226627 String)) )
))
(declare-datatypes ((List!44524 0))(
  ( (Nil!44400) (Cons!44400 (h!49820 String!51056) (t!340275 List!44524)) )
))
(declare-fun lt!1468627 () List!44524)

(declare-fun lt!1468629 () List!44524)

(declare-fun content!6849 (List!44524) (Set String!51056))

(assert (=> b!4114795 (= res!1680653 (= (content!6849 lt!1468627) (content!6849 lt!1468629)))))

(declare-fun b!4114797 () Bool)

(declare-fun res!1680651 () Bool)

(declare-fun e!2552999 () Bool)

(assert (=> b!4114797 (=> (not res!1680651) (not e!2552999))))

(declare-datatypes ((List!44525 0))(
  ( (Nil!44401) (Cons!44401 (h!49821 (_ BitVec 16)) (t!340276 List!44525)) )
))
(declare-datatypes ((TokenValue!7461 0))(
  ( (FloatLiteralValue!14922 (text!52672 List!44525)) (TokenValueExt!7460 (__x!27139 Int)) (Broken!37305 (value!226628 List!44525)) (Object!7584) (End!7461) (Def!7461) (Underscore!7461) (Match!7461) (Else!7461) (Error!7461) (Case!7461) (If!7461) (Extends!7461) (Abstract!7461) (Class!7461) (Val!7461) (DelimiterValue!14922 (del!7521 List!44525)) (KeywordValue!7467 (value!226629 List!44525)) (CommentValue!14922 (value!226630 List!44525)) (WhitespaceValue!14922 (value!226631 List!44525)) (IndentationValue!7461 (value!226632 List!44525)) (String!51058) (Int32!7461) (Broken!37306 (value!226633 List!44525)) (Boolean!7462) (Unit!63773) (OperatorValue!7464 (op!7521 List!44525)) (IdentifierValue!14922 (value!226634 List!44525)) (IdentifierValue!14923 (value!226635 List!44525)) (WhitespaceValue!14923 (value!226636 List!44525)) (True!14922) (False!14922) (Broken!37307 (value!226637 List!44525)) (Broken!37308 (value!226638 List!44525)) (True!14923) (RightBrace!7461) (RightBracket!7461) (Colon!7461) (Null!7461) (Comma!7461) (LeftBracket!7461) (False!14923) (LeftBrace!7461) (ImaginaryLiteralValue!7461 (text!52673 List!44525)) (StringLiteralValue!22383 (value!226639 List!44525)) (EOFValue!7461 (value!226640 List!44525)) (IdentValue!7461 (value!226641 List!44525)) (DelimiterValue!14923 (value!226642 List!44525)) (DedentValue!7461 (value!226643 List!44525)) (NewLineValue!7461 (value!226644 List!44525)) (IntegerValue!22383 (value!226645 (_ BitVec 32)) (text!52674 List!44525)) (IntegerValue!22384 (value!226646 Int) (text!52675 List!44525)) (Times!7461) (Or!7461) (Equal!7461) (Minus!7461) (Broken!37309 (value!226647 List!44525)) (And!7461) (Div!7461) (LessEqual!7461) (Mod!7461) (Concat!19597) (Not!7461) (Plus!7461) (SpaceValue!7461 (value!226648 List!44525)) (IntegerValue!22385 (value!226649 Int) (text!52676 List!44525)) (StringLiteralValue!22384 (text!52677 List!44525)) (FloatLiteralValue!14923 (text!52678 List!44525)) (BytesLiteralValue!7461 (value!226650 List!44525)) (CommentValue!14923 (value!226651 List!44525)) (StringLiteralValue!22385 (value!226652 List!44525)) (ErrorTokenValue!7461 (msg!7522 List!44525)) )
))
(declare-datatypes ((C!24458 0))(
  ( (C!24459 (val!14339 Int)) )
))
(declare-datatypes ((List!44526 0))(
  ( (Nil!44402) (Cons!44402 (h!49822 C!24458) (t!340277 List!44526)) )
))
(declare-datatypes ((IArray!26889 0))(
  ( (IArray!26890 (innerList!13502 List!44526)) )
))
(declare-datatypes ((Conc!13442 0))(
  ( (Node!13442 (left!33276 Conc!13442) (right!33606 Conc!13442) (csize!27114 Int) (cheight!13653 Int)) (Leaf!20773 (xs!16748 IArray!26889) (csize!27115 Int)) (Empty!13442) )
))
(declare-datatypes ((BalanceConc!26478 0))(
  ( (BalanceConc!26479 (c!707038 Conc!13442)) )
))
(declare-datatypes ((TokenValueInjection!14350 0))(
  ( (TokenValueInjection!14351 (toValue!9875 Int) (toChars!9734 Int)) )
))
(declare-datatypes ((Regex!12136 0))(
  ( (ElementMatch!12136 (c!707039 C!24458)) (Concat!19598 (regOne!24784 Regex!12136) (regTwo!24784 Regex!12136)) (EmptyExpr!12136) (Star!12136 (reg!12465 Regex!12136)) (EmptyLang!12136) (Union!12136 (regOne!24785 Regex!12136) (regTwo!24785 Regex!12136)) )
))
(declare-datatypes ((Rule!14262 0))(
  ( (Rule!14263 (regex!7231 Regex!12136) (tag!8091 String!51056) (isSeparator!7231 Bool) (transformation!7231 TokenValueInjection!14350)) )
))
(declare-datatypes ((List!44527 0))(
  ( (Nil!44403) (Cons!44403 (h!49823 Rule!14262) (t!340278 List!44527)) )
))
(declare-fun l!6467 () List!44527)

(assert (=> b!4114797 (= res!1680651 (is-Cons!44403 l!6467))))

(declare-fun b!4114798 () Bool)

(declare-fun e!2552996 () Bool)

(declare-fun acc!555 () List!44524)

(declare-fun tp!1253052 () Bool)

(declare-fun inv!58987 (String!51056) Bool)

(assert (=> b!4114798 (= e!2552996 (and (inv!58987 (h!49820 acc!555)) tp!1253052))))

(declare-fun b!4114799 () Bool)

(declare-fun res!1680652 () Bool)

(assert (=> b!4114799 (=> (not res!1680652) (not e!2552999))))

(declare-fun newAcc!81 () List!44524)

(assert (=> b!4114799 (= res!1680652 (= (content!6849 acc!555) (content!6849 newAcc!81)))))

(declare-fun b!4114800 () Bool)

(declare-fun res!1680655 () Bool)

(assert (=> b!4114800 (=> (not res!1680655) (not e!2552999))))

(declare-datatypes ((LexerInterface!6820 0))(
  ( (LexerInterfaceExt!6817 (__x!27140 Int)) (Lexer!6818) )
))
(declare-fun thiss!26911 () LexerInterface!6820)

(declare-fun noDuplicateTag!2908 (LexerInterface!6820 List!44527 List!44524) Bool)

(assert (=> b!4114800 (= res!1680655 (noDuplicateTag!2908 thiss!26911 l!6467 acc!555))))

(declare-fun b!4114801 () Bool)

(declare-fun e!2553002 () Bool)

(assert (=> b!4114801 (= e!2552999 e!2553002)))

(declare-fun res!1680657 () Bool)

(assert (=> b!4114801 (=> (not res!1680657) (not e!2553002))))

(declare-fun contains!8899 (List!44524 String!51056) Bool)

(assert (=> b!4114801 (= res!1680657 (= (contains!8899 acc!555 (tag!8091 (h!49823 l!6467))) (contains!8899 newAcc!81 (tag!8091 (h!49823 l!6467)))))))

(declare-datatypes ((Unit!63774 0))(
  ( (Unit!63775) )
))
(declare-fun lt!1468626 () Unit!63774)

(declare-fun subsetContains!91 (List!44524 List!44524) Unit!63774)

(assert (=> b!4114801 (= lt!1468626 (subsetContains!91 newAcc!81 acc!555))))

(declare-fun lt!1468625 () Unit!63774)

(assert (=> b!4114801 (= lt!1468625 (subsetContains!91 acc!555 newAcc!81))))

(declare-fun b!4114802 () Bool)

(declare-fun e!2552997 () Bool)

(declare-fun e!2553006 () Bool)

(declare-fun tp!1253048 () Bool)

(assert (=> b!4114802 (= e!2552997 (and e!2553006 tp!1253048))))

(declare-fun b!4114803 () Bool)

(assert (=> b!4114803 (= e!2553002 e!2553000)))

(declare-fun res!1680656 () Bool)

(assert (=> b!4114803 (=> (not res!1680656) (not e!2553000))))

(assert (=> b!4114803 (= res!1680656 (noDuplicateTag!2908 thiss!26911 (t!340278 l!6467) lt!1468627))))

(assert (=> b!4114803 (= lt!1468629 (Cons!44400 (tag!8091 (h!49823 l!6467)) newAcc!81))))

(assert (=> b!4114803 (= lt!1468627 (Cons!44400 (tag!8091 (h!49823 l!6467)) acc!555))))

(declare-fun b!4114804 () Bool)

(assert (=> b!4114804 (= e!2553000 (not (noDuplicateTag!2908 thiss!26911 l!6467 newAcc!81)))))

(assert (=> b!4114804 (noDuplicateTag!2908 thiss!26911 (t!340278 l!6467) lt!1468629)))

(declare-fun lt!1468628 () Unit!63774)

(declare-fun lemmaNoDuplicateSameWithAccWithSameContent!7 (LexerInterface!6820 List!44527 List!44524 List!44524) Unit!63774)

(assert (=> b!4114804 (= lt!1468628 (lemmaNoDuplicateSameWithAccWithSameContent!7 thiss!26911 (t!340278 l!6467) lt!1468627 lt!1468629))))

(declare-fun b!4114805 () Bool)

(declare-fun tp!1253050 () Bool)

(declare-fun inv!58990 (TokenValueInjection!14350) Bool)

(assert (=> b!4114805 (= e!2553006 (and tp!1253050 (inv!58987 (tag!8091 (h!49823 l!6467))) (inv!58990 (transformation!7231 (h!49823 l!6467))) e!2553001))))

(declare-fun res!1680654 () Bool)

(assert (=> start!389934 (=> (not res!1680654) (not e!2552999))))

(assert (=> start!389934 (= res!1680654 (is-Lexer!6818 thiss!26911))))

(assert (=> start!389934 e!2552999))

(assert (=> start!389934 true))

(assert (=> start!389934 e!2552997))

(assert (=> start!389934 e!2552996))

(declare-fun e!2553003 () Bool)

(assert (=> start!389934 e!2553003))

(declare-fun b!4114796 () Bool)

(declare-fun tp!1253047 () Bool)

(assert (=> b!4114796 (= e!2553003 (and (inv!58987 (h!49820 newAcc!81)) tp!1253047))))

(assert (= (and start!389934 res!1680654) b!4114800))

(assert (= (and b!4114800 res!1680655) b!4114799))

(assert (= (and b!4114799 res!1680652) b!4114797))

(assert (= (and b!4114797 res!1680651) b!4114801))

(assert (= (and b!4114801 res!1680657) b!4114803))

(assert (= (and b!4114803 res!1680656) b!4114795))

(assert (= (and b!4114795 res!1680653) b!4114804))

(assert (= b!4114805 b!4114794))

(assert (= b!4114802 b!4114805))

(assert (= (and start!389934 (is-Cons!44403 l!6467)) b!4114802))

(assert (= (and start!389934 (is-Cons!44400 acc!555)) b!4114798))

(assert (= (and start!389934 (is-Cons!44400 newAcc!81)) b!4114796))

(declare-fun m!4715121 () Bool)

(assert (=> b!4114804 m!4715121))

(declare-fun m!4715123 () Bool)

(assert (=> b!4114804 m!4715123))

(declare-fun m!4715125 () Bool)

(assert (=> b!4114804 m!4715125))

(declare-fun m!4715127 () Bool)

(assert (=> b!4114796 m!4715127))

(declare-fun m!4715129 () Bool)

(assert (=> b!4114801 m!4715129))

(declare-fun m!4715131 () Bool)

(assert (=> b!4114801 m!4715131))

(declare-fun m!4715133 () Bool)

(assert (=> b!4114801 m!4715133))

(declare-fun m!4715135 () Bool)

(assert (=> b!4114801 m!4715135))

(declare-fun m!4715137 () Bool)

(assert (=> b!4114805 m!4715137))

(declare-fun m!4715139 () Bool)

(assert (=> b!4114805 m!4715139))

(declare-fun m!4715141 () Bool)

(assert (=> b!4114798 m!4715141))

(declare-fun m!4715143 () Bool)

(assert (=> b!4114800 m!4715143))

(declare-fun m!4715145 () Bool)

(assert (=> b!4114803 m!4715145))

(declare-fun m!4715147 () Bool)

(assert (=> b!4114795 m!4715147))

(declare-fun m!4715149 () Bool)

(assert (=> b!4114795 m!4715149))

(declare-fun m!4715151 () Bool)

(assert (=> b!4114799 m!4715151))

(declare-fun m!4715153 () Bool)

(assert (=> b!4114799 m!4715153))

(push 1)

(assert (not b!4114801))

(assert (not b_next!116605))

(assert (not b!4114803))

(assert b_and!317787)

(assert (not b!4114804))

(assert (not b!4114798))

(assert (not b!4114802))

(assert (not b!4114795))

(assert (not b!4114800))

(assert (not b_next!116603))

(assert b_and!317785)

(assert (not b!4114796))

(assert (not b!4114799))

(assert (not b!4114805))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317787)

(assert b_and!317785)

(assert (not b_next!116605))

(assert (not b_next!116603))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1220529 () Bool)

(assert (=> d!1220529 (= (inv!58987 (h!49820 newAcc!81)) (= (mod (str.len (value!226627 (h!49820 newAcc!81))) 2) 0))))

(assert (=> b!4114796 d!1220529))

(declare-fun d!1220531 () Bool)

(declare-fun lt!1468647 () Bool)

(assert (=> d!1220531 (= lt!1468647 (set.member (tag!8091 (h!49823 l!6467)) (content!6849 acc!555)))))

(declare-fun e!2553044 () Bool)

(assert (=> d!1220531 (= lt!1468647 e!2553044)))

(declare-fun res!1680688 () Bool)

(assert (=> d!1220531 (=> (not res!1680688) (not e!2553044))))

(assert (=> d!1220531 (= res!1680688 (is-Cons!44400 acc!555))))

(assert (=> d!1220531 (= (contains!8899 acc!555 (tag!8091 (h!49823 l!6467))) lt!1468647)))

(declare-fun b!4114846 () Bool)

(declare-fun e!2553045 () Bool)

(assert (=> b!4114846 (= e!2553044 e!2553045)))

(declare-fun res!1680687 () Bool)

(assert (=> b!4114846 (=> res!1680687 e!2553045)))

(assert (=> b!4114846 (= res!1680687 (= (h!49820 acc!555) (tag!8091 (h!49823 l!6467))))))

(declare-fun b!4114847 () Bool)

(assert (=> b!4114847 (= e!2553045 (contains!8899 (t!340275 acc!555) (tag!8091 (h!49823 l!6467))))))

(assert (= (and d!1220531 res!1680688) b!4114846))

(assert (= (and b!4114846 (not res!1680687)) b!4114847))

(assert (=> d!1220531 m!4715151))

(declare-fun m!4715189 () Bool)

(assert (=> d!1220531 m!4715189))

(declare-fun m!4715191 () Bool)

(assert (=> b!4114847 m!4715191))

(assert (=> b!4114801 d!1220531))

(declare-fun d!1220533 () Bool)

(declare-fun lt!1468648 () Bool)

(assert (=> d!1220533 (= lt!1468648 (set.member (tag!8091 (h!49823 l!6467)) (content!6849 newAcc!81)))))

(declare-fun e!2553046 () Bool)

(assert (=> d!1220533 (= lt!1468648 e!2553046)))

(declare-fun res!1680690 () Bool)

(assert (=> d!1220533 (=> (not res!1680690) (not e!2553046))))

(assert (=> d!1220533 (= res!1680690 (is-Cons!44400 newAcc!81))))

(assert (=> d!1220533 (= (contains!8899 newAcc!81 (tag!8091 (h!49823 l!6467))) lt!1468648)))

(declare-fun b!4114848 () Bool)

(declare-fun e!2553047 () Bool)

(assert (=> b!4114848 (= e!2553046 e!2553047)))

(declare-fun res!1680689 () Bool)

(assert (=> b!4114848 (=> res!1680689 e!2553047)))

(assert (=> b!4114848 (= res!1680689 (= (h!49820 newAcc!81) (tag!8091 (h!49823 l!6467))))))

(declare-fun b!4114849 () Bool)

(assert (=> b!4114849 (= e!2553047 (contains!8899 (t!340275 newAcc!81) (tag!8091 (h!49823 l!6467))))))

(assert (= (and d!1220533 res!1680690) b!4114848))

(assert (= (and b!4114848 (not res!1680689)) b!4114849))

(assert (=> d!1220533 m!4715153))

(declare-fun m!4715193 () Bool)

(assert (=> d!1220533 m!4715193))

(declare-fun m!4715195 () Bool)

(assert (=> b!4114849 m!4715195))

(assert (=> b!4114801 d!1220533))

(declare-fun d!1220535 () Bool)

(assert (=> d!1220535 true))

(declare-fun lambda!128561 () Int)

(declare-fun forall!8442 (List!44524 Int) Bool)

(assert (=> d!1220535 (forall!8442 newAcc!81 lambda!128561)))

(declare-fun lt!1468657 () Unit!63774)

(declare-fun choose!25152 (List!44524 List!44524) Unit!63774)

(assert (=> d!1220535 (= lt!1468657 (choose!25152 newAcc!81 acc!555))))

(assert (=> d!1220535 (set.subset (content!6849 newAcc!81) (content!6849 acc!555))))

(assert (=> d!1220535 (= (subsetContains!91 newAcc!81 acc!555) lt!1468657)))

(declare-fun bs!594494 () Bool)

(assert (= bs!594494 d!1220535))

(declare-fun m!4715211 () Bool)

(assert (=> bs!594494 m!4715211))

(declare-fun m!4715213 () Bool)

(assert (=> bs!594494 m!4715213))

(assert (=> bs!594494 m!4715153))

(assert (=> bs!594494 m!4715151))

(assert (=> b!4114801 d!1220535))

(declare-fun bs!594495 () Bool)

(declare-fun d!1220549 () Bool)

(assert (= bs!594495 (and d!1220549 d!1220535)))

(declare-fun lambda!128562 () Int)

(assert (=> bs!594495 (= (= newAcc!81 acc!555) (= lambda!128562 lambda!128561))))

(assert (=> d!1220549 true))

(assert (=> d!1220549 (forall!8442 acc!555 lambda!128562)))

(declare-fun lt!1468658 () Unit!63774)

(assert (=> d!1220549 (= lt!1468658 (choose!25152 acc!555 newAcc!81))))

(assert (=> d!1220549 (set.subset (content!6849 acc!555) (content!6849 newAcc!81))))

(assert (=> d!1220549 (= (subsetContains!91 acc!555 newAcc!81) lt!1468658)))

(declare-fun bs!594496 () Bool)

(assert (= bs!594496 d!1220549))

(declare-fun m!4715215 () Bool)

(assert (=> bs!594496 m!4715215))

(declare-fun m!4715217 () Bool)

(assert (=> bs!594496 m!4715217))

(assert (=> bs!594496 m!4715151))

(assert (=> bs!594496 m!4715153))

(assert (=> b!4114801 d!1220549))

(declare-fun d!1220551 () Bool)

(declare-fun c!707044 () Bool)

(assert (=> d!1220551 (= c!707044 (is-Nil!44400 lt!1468627))))

(declare-fun e!2553066 () (Set String!51056))

(assert (=> d!1220551 (= (content!6849 lt!1468627) e!2553066)))

(declare-fun b!4114872 () Bool)

(assert (=> b!4114872 (= e!2553066 (as set.empty (Set String!51056)))))

(declare-fun b!4114873 () Bool)

(assert (=> b!4114873 (= e!2553066 (set.union (set.insert (h!49820 lt!1468627) (as set.empty (Set String!51056))) (content!6849 (t!340275 lt!1468627))))))

(assert (= (and d!1220551 c!707044) b!4114872))

(assert (= (and d!1220551 (not c!707044)) b!4114873))

(declare-fun m!4715219 () Bool)

(assert (=> b!4114873 m!4715219))

(declare-fun m!4715221 () Bool)

(assert (=> b!4114873 m!4715221))

(assert (=> b!4114795 d!1220551))

(declare-fun d!1220553 () Bool)

(declare-fun c!707045 () Bool)

(assert (=> d!1220553 (= c!707045 (is-Nil!44400 lt!1468629))))

(declare-fun e!2553067 () (Set String!51056))

(assert (=> d!1220553 (= (content!6849 lt!1468629) e!2553067)))

(declare-fun b!4114874 () Bool)

(assert (=> b!4114874 (= e!2553067 (as set.empty (Set String!51056)))))

(declare-fun b!4114875 () Bool)

(assert (=> b!4114875 (= e!2553067 (set.union (set.insert (h!49820 lt!1468629) (as set.empty (Set String!51056))) (content!6849 (t!340275 lt!1468629))))))

(assert (= (and d!1220553 c!707045) b!4114874))

(assert (= (and d!1220553 (not c!707045)) b!4114875))

(declare-fun m!4715223 () Bool)

(assert (=> b!4114875 m!4715223))

(declare-fun m!4715225 () Bool)

(assert (=> b!4114875 m!4715225))

(assert (=> b!4114795 d!1220553))

(declare-fun d!1220555 () Bool)

(declare-fun res!1680711 () Bool)

(declare-fun e!2553072 () Bool)

(assert (=> d!1220555 (=> res!1680711 e!2553072)))

(assert (=> d!1220555 (= res!1680711 (is-Nil!44403 l!6467))))

(assert (=> d!1220555 (= (noDuplicateTag!2908 thiss!26911 l!6467 acc!555) e!2553072)))

(declare-fun b!4114880 () Bool)

(declare-fun e!2553073 () Bool)

(assert (=> b!4114880 (= e!2553072 e!2553073)))

(declare-fun res!1680712 () Bool)

(assert (=> b!4114880 (=> (not res!1680712) (not e!2553073))))

(assert (=> b!4114880 (= res!1680712 (not (contains!8899 acc!555 (tag!8091 (h!49823 l!6467)))))))

(declare-fun b!4114881 () Bool)

(assert (=> b!4114881 (= e!2553073 (noDuplicateTag!2908 thiss!26911 (t!340278 l!6467) (Cons!44400 (tag!8091 (h!49823 l!6467)) acc!555)))))

(assert (= (and d!1220555 (not res!1680711)) b!4114880))

(assert (= (and b!4114880 res!1680712) b!4114881))

(assert (=> b!4114880 m!4715129))

(declare-fun m!4715227 () Bool)

(assert (=> b!4114881 m!4715227))

(assert (=> b!4114800 d!1220555))

(declare-fun d!1220557 () Bool)

(assert (=> d!1220557 (= (inv!58987 (tag!8091 (h!49823 l!6467))) (= (mod (str.len (value!226627 (tag!8091 (h!49823 l!6467)))) 2) 0))))

(assert (=> b!4114805 d!1220557))

(declare-fun d!1220559 () Bool)

(declare-fun res!1680715 () Bool)

(declare-fun e!2553076 () Bool)

(assert (=> d!1220559 (=> (not res!1680715) (not e!2553076))))

(declare-fun semiInverseModEq!3118 (Int Int) Bool)

(assert (=> d!1220559 (= res!1680715 (semiInverseModEq!3118 (toChars!9734 (transformation!7231 (h!49823 l!6467))) (toValue!9875 (transformation!7231 (h!49823 l!6467)))))))

(assert (=> d!1220559 (= (inv!58990 (transformation!7231 (h!49823 l!6467))) e!2553076)))

(declare-fun b!4114884 () Bool)

(declare-fun equivClasses!3017 (Int Int) Bool)

(assert (=> b!4114884 (= e!2553076 (equivClasses!3017 (toChars!9734 (transformation!7231 (h!49823 l!6467))) (toValue!9875 (transformation!7231 (h!49823 l!6467)))))))

(assert (= (and d!1220559 res!1680715) b!4114884))

(declare-fun m!4715229 () Bool)

(assert (=> d!1220559 m!4715229))

(declare-fun m!4715231 () Bool)

(assert (=> b!4114884 m!4715231))

(assert (=> b!4114805 d!1220559))

(declare-fun d!1220561 () Bool)

(declare-fun c!707046 () Bool)

(assert (=> d!1220561 (= c!707046 (is-Nil!44400 acc!555))))

(declare-fun e!2553077 () (Set String!51056))

(assert (=> d!1220561 (= (content!6849 acc!555) e!2553077)))

(declare-fun b!4114885 () Bool)

(assert (=> b!4114885 (= e!2553077 (as set.empty (Set String!51056)))))

(declare-fun b!4114886 () Bool)

(assert (=> b!4114886 (= e!2553077 (set.union (set.insert (h!49820 acc!555) (as set.empty (Set String!51056))) (content!6849 (t!340275 acc!555))))))

(assert (= (and d!1220561 c!707046) b!4114885))

(assert (= (and d!1220561 (not c!707046)) b!4114886))

(declare-fun m!4715233 () Bool)

(assert (=> b!4114886 m!4715233))

(declare-fun m!4715235 () Bool)

(assert (=> b!4114886 m!4715235))

(assert (=> b!4114799 d!1220561))

(declare-fun d!1220563 () Bool)

(declare-fun c!707047 () Bool)

(assert (=> d!1220563 (= c!707047 (is-Nil!44400 newAcc!81))))

(declare-fun e!2553078 () (Set String!51056))

(assert (=> d!1220563 (= (content!6849 newAcc!81) e!2553078)))

(declare-fun b!4114887 () Bool)

(assert (=> b!4114887 (= e!2553078 (as set.empty (Set String!51056)))))

(declare-fun b!4114888 () Bool)

(assert (=> b!4114888 (= e!2553078 (set.union (set.insert (h!49820 newAcc!81) (as set.empty (Set String!51056))) (content!6849 (t!340275 newAcc!81))))))

(assert (= (and d!1220563 c!707047) b!4114887))

(assert (= (and d!1220563 (not c!707047)) b!4114888))

(declare-fun m!4715237 () Bool)

(assert (=> b!4114888 m!4715237))

(declare-fun m!4715239 () Bool)

(assert (=> b!4114888 m!4715239))

(assert (=> b!4114799 d!1220563))

(declare-fun d!1220565 () Bool)

(declare-fun res!1680716 () Bool)

(declare-fun e!2553079 () Bool)

(assert (=> d!1220565 (=> res!1680716 e!2553079)))

(assert (=> d!1220565 (= res!1680716 (is-Nil!44403 l!6467))))

(assert (=> d!1220565 (= (noDuplicateTag!2908 thiss!26911 l!6467 newAcc!81) e!2553079)))

(declare-fun b!4114889 () Bool)

(declare-fun e!2553080 () Bool)

(assert (=> b!4114889 (= e!2553079 e!2553080)))

(declare-fun res!1680717 () Bool)

(assert (=> b!4114889 (=> (not res!1680717) (not e!2553080))))

(assert (=> b!4114889 (= res!1680717 (not (contains!8899 newAcc!81 (tag!8091 (h!49823 l!6467)))))))

(declare-fun b!4114890 () Bool)

(assert (=> b!4114890 (= e!2553080 (noDuplicateTag!2908 thiss!26911 (t!340278 l!6467) (Cons!44400 (tag!8091 (h!49823 l!6467)) newAcc!81)))))

(assert (= (and d!1220565 (not res!1680716)) b!4114889))

(assert (= (and b!4114889 res!1680717) b!4114890))

(assert (=> b!4114889 m!4715131))

(declare-fun m!4715241 () Bool)

(assert (=> b!4114890 m!4715241))

(assert (=> b!4114804 d!1220565))

(declare-fun d!1220567 () Bool)

(declare-fun res!1680718 () Bool)

(declare-fun e!2553081 () Bool)

(assert (=> d!1220567 (=> res!1680718 e!2553081)))

(assert (=> d!1220567 (= res!1680718 (is-Nil!44403 (t!340278 l!6467)))))

(assert (=> d!1220567 (= (noDuplicateTag!2908 thiss!26911 (t!340278 l!6467) lt!1468629) e!2553081)))

(declare-fun b!4114891 () Bool)

(declare-fun e!2553082 () Bool)

(assert (=> b!4114891 (= e!2553081 e!2553082)))

(declare-fun res!1680719 () Bool)

(assert (=> b!4114891 (=> (not res!1680719) (not e!2553082))))

(assert (=> b!4114891 (= res!1680719 (not (contains!8899 lt!1468629 (tag!8091 (h!49823 (t!340278 l!6467))))))))

(declare-fun b!4114892 () Bool)

(assert (=> b!4114892 (= e!2553082 (noDuplicateTag!2908 thiss!26911 (t!340278 (t!340278 l!6467)) (Cons!44400 (tag!8091 (h!49823 (t!340278 l!6467))) lt!1468629)))))

(assert (= (and d!1220567 (not res!1680718)) b!4114891))

(assert (= (and b!4114891 res!1680719) b!4114892))

(declare-fun m!4715243 () Bool)

(assert (=> b!4114891 m!4715243))

(declare-fun m!4715245 () Bool)

(assert (=> b!4114892 m!4715245))

(assert (=> b!4114804 d!1220567))

(declare-fun d!1220569 () Bool)

(assert (=> d!1220569 (noDuplicateTag!2908 thiss!26911 (t!340278 l!6467) lt!1468629)))

(declare-fun lt!1468661 () Unit!63774)

(declare-fun choose!25153 (LexerInterface!6820 List!44527 List!44524 List!44524) Unit!63774)

(assert (=> d!1220569 (= lt!1468661 (choose!25153 thiss!26911 (t!340278 l!6467) lt!1468627 lt!1468629))))

(assert (=> d!1220569 (noDuplicateTag!2908 thiss!26911 (t!340278 l!6467) lt!1468627)))

(assert (=> d!1220569 (= (lemmaNoDuplicateSameWithAccWithSameContent!7 thiss!26911 (t!340278 l!6467) lt!1468627 lt!1468629) lt!1468661)))

(declare-fun bs!594497 () Bool)

(assert (= bs!594497 d!1220569))

(assert (=> bs!594497 m!4715123))

(declare-fun m!4715247 () Bool)

(assert (=> bs!594497 m!4715247))

(assert (=> bs!594497 m!4715145))

(assert (=> b!4114804 d!1220569))

(declare-fun d!1220571 () Bool)

(assert (=> d!1220571 (= (inv!58987 (h!49820 acc!555)) (= (mod (str.len (value!226627 (h!49820 acc!555))) 2) 0))))

(assert (=> b!4114798 d!1220571))

(declare-fun d!1220573 () Bool)

(declare-fun res!1680720 () Bool)

(declare-fun e!2553083 () Bool)

(assert (=> d!1220573 (=> res!1680720 e!2553083)))

(assert (=> d!1220573 (= res!1680720 (is-Nil!44403 (t!340278 l!6467)))))

(assert (=> d!1220573 (= (noDuplicateTag!2908 thiss!26911 (t!340278 l!6467) lt!1468627) e!2553083)))

(declare-fun b!4114893 () Bool)

(declare-fun e!2553084 () Bool)

(assert (=> b!4114893 (= e!2553083 e!2553084)))

(declare-fun res!1680721 () Bool)

(assert (=> b!4114893 (=> (not res!1680721) (not e!2553084))))

(assert (=> b!4114893 (= res!1680721 (not (contains!8899 lt!1468627 (tag!8091 (h!49823 (t!340278 l!6467))))))))

(declare-fun b!4114894 () Bool)

(assert (=> b!4114894 (= e!2553084 (noDuplicateTag!2908 thiss!26911 (t!340278 (t!340278 l!6467)) (Cons!44400 (tag!8091 (h!49823 (t!340278 l!6467))) lt!1468627)))))

(assert (= (and d!1220573 (not res!1680720)) b!4114893))

(assert (= (and b!4114893 res!1680721) b!4114894))

(declare-fun m!4715249 () Bool)

(assert (=> b!4114893 m!4715249))

(declare-fun m!4715251 () Bool)

(assert (=> b!4114894 m!4715251))

(assert (=> b!4114803 d!1220573))

(declare-fun b!4114905 () Bool)

(declare-fun b_free!115907 () Bool)

(declare-fun b_next!116611 () Bool)

(assert (=> b!4114905 (= b_free!115907 (not b_next!116611))))

(declare-fun tp!1253081 () Bool)

(declare-fun b_and!317793 () Bool)

(assert (=> b!4114905 (= tp!1253081 b_and!317793)))

(declare-fun b_free!115909 () Bool)

(declare-fun b_next!116613 () Bool)

(assert (=> b!4114905 (= b_free!115909 (not b_next!116613))))

(declare-fun tp!1253080 () Bool)

(declare-fun b_and!317795 () Bool)

(assert (=> b!4114905 (= tp!1253080 b_and!317795)))

(declare-fun e!2553093 () Bool)

(assert (=> b!4114905 (= e!2553093 (and tp!1253081 tp!1253080))))

(declare-fun tp!1253082 () Bool)

(declare-fun b!4114904 () Bool)

(declare-fun e!2553094 () Bool)

(assert (=> b!4114904 (= e!2553094 (and tp!1253082 (inv!58987 (tag!8091 (h!49823 (t!340278 l!6467)))) (inv!58990 (transformation!7231 (h!49823 (t!340278 l!6467)))) e!2553093))))

(declare-fun b!4114903 () Bool)

(declare-fun e!2553095 () Bool)

(declare-fun tp!1253079 () Bool)

(assert (=> b!4114903 (= e!2553095 (and e!2553094 tp!1253079))))

(assert (=> b!4114802 (= tp!1253048 e!2553095)))

(assert (= b!4114904 b!4114905))

(assert (= b!4114903 b!4114904))

(assert (= (and b!4114802 (is-Cons!44403 (t!340278 l!6467))) b!4114903))

(declare-fun m!4715253 () Bool)

(assert (=> b!4114904 m!4715253))

(declare-fun m!4715255 () Bool)

(assert (=> b!4114904 m!4715255))

(declare-fun b!4114910 () Bool)

(declare-fun e!2553101 () Bool)

(declare-fun tp!1253085 () Bool)

(assert (=> b!4114910 (= e!2553101 (and (inv!58987 (h!49820 (t!340275 newAcc!81))) tp!1253085))))

(assert (=> b!4114796 (= tp!1253047 e!2553101)))

(assert (= (and b!4114796 (is-Cons!44400 (t!340275 newAcc!81))) b!4114910))

(declare-fun m!4715257 () Bool)

(assert (=> b!4114910 m!4715257))

(declare-fun b!4114924 () Bool)

(declare-fun e!2553105 () Bool)

(declare-fun tp!1253099 () Bool)

(declare-fun tp!1253100 () Bool)

(assert (=> b!4114924 (= e!2553105 (and tp!1253099 tp!1253100))))

(assert (=> b!4114805 (= tp!1253050 e!2553105)))

(declare-fun b!4114923 () Bool)

(declare-fun tp!1253097 () Bool)

(assert (=> b!4114923 (= e!2553105 tp!1253097)))

(declare-fun b!4114921 () Bool)

(declare-fun tp_is_empty!21195 () Bool)

(assert (=> b!4114921 (= e!2553105 tp_is_empty!21195)))

(declare-fun b!4114922 () Bool)

(declare-fun tp!1253096 () Bool)

(declare-fun tp!1253098 () Bool)

(assert (=> b!4114922 (= e!2553105 (and tp!1253096 tp!1253098))))

(assert (= (and b!4114805 (is-ElementMatch!12136 (regex!7231 (h!49823 l!6467)))) b!4114921))

(assert (= (and b!4114805 (is-Concat!19598 (regex!7231 (h!49823 l!6467)))) b!4114922))

(assert (= (and b!4114805 (is-Star!12136 (regex!7231 (h!49823 l!6467)))) b!4114923))

(assert (= (and b!4114805 (is-Union!12136 (regex!7231 (h!49823 l!6467)))) b!4114924))

(declare-fun b!4114925 () Bool)

(declare-fun e!2553106 () Bool)

(declare-fun tp!1253101 () Bool)

(assert (=> b!4114925 (= e!2553106 (and (inv!58987 (h!49820 (t!340275 acc!555))) tp!1253101))))

(assert (=> b!4114798 (= tp!1253052 e!2553106)))

(assert (= (and b!4114798 (is-Cons!44400 (t!340275 acc!555))) b!4114925))

(declare-fun m!4715259 () Bool)

(assert (=> b!4114925 m!4715259))

(push 1)

(assert (not b!4114923))

(assert (not b_next!116613))

(assert (not b!4114891))

(assert (not d!1220535))

(assert (not b!4114849))

(assert (not b!4114892))

(assert (not b!4114903))

(assert tp_is_empty!21195)

(assert (not b!4114922))

(assert (not b!4114881))

(assert (not b!4114925))

(assert (not d!1220559))

(assert b_and!317793)

(assert (not b_next!116611))

(assert (not b!4114888))

(assert (not b!4114886))

(assert (not b!4114893))

(assert (not b!4114847))

(assert (not b_next!116605))

(assert (not b!4114873))

(assert b_and!317787)

(assert (not b!4114875))

(assert (not b!4114889))

(assert (not b!4114894))

(assert (not b_next!116603))

(assert b_and!317785)

(assert (not b!4114884))

(assert (not b!4114910))

(assert b_and!317795)

(assert (not d!1220533))

(assert (not d!1220569))

(assert (not b!4114890))

(assert (not b!4114924))

(assert (not d!1220549))

(assert (not b!4114880))

(assert (not b!4114904))

(assert (not d!1220531))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317793)

(assert (not b_next!116611))

(assert (not b_next!116605))

(assert (not b_next!116613))

(assert b_and!317787)

(assert b_and!317795)

(assert (not b_next!116603))

(assert b_and!317785)

(check-sat)

(pop 1)

