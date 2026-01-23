; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!390096 () Bool)

(assert start!390096)

(declare-fun b!4115936 () Bool)

(declare-fun b_free!116015 () Bool)

(declare-fun b_next!116719 () Bool)

(assert (=> b!4115936 (= b_free!116015 (not b_next!116719))))

(declare-fun tp!1253750 () Bool)

(declare-fun b_and!317965 () Bool)

(assert (=> b!4115936 (= tp!1253750 b_and!317965)))

(declare-fun b_free!116017 () Bool)

(declare-fun b_next!116721 () Bool)

(assert (=> b!4115936 (= b_free!116017 (not b_next!116721))))

(declare-fun tp!1253752 () Bool)

(declare-fun b_and!317967 () Bool)

(assert (=> b!4115936 (= tp!1253752 b_and!317967)))

(declare-fun b!4115931 () Bool)

(declare-fun b_free!116019 () Bool)

(declare-fun b_next!116723 () Bool)

(assert (=> b!4115931 (= b_free!116019 (not b_next!116723))))

(declare-fun tp!1253755 () Bool)

(declare-fun b_and!317969 () Bool)

(assert (=> b!4115931 (= tp!1253755 b_and!317969)))

(declare-fun b_free!116021 () Bool)

(declare-fun b_next!116725 () Bool)

(assert (=> b!4115931 (= b_free!116021 (not b_next!116725))))

(declare-fun tp!1253754 () Bool)

(declare-fun b_and!317971 () Bool)

(assert (=> b!4115931 (= tp!1253754 b_and!317971)))

(declare-fun b!4115930 () Bool)

(declare-fun b_free!116023 () Bool)

(declare-fun b_next!116727 () Bool)

(assert (=> b!4115930 (= b_free!116023 (not b_next!116727))))

(declare-fun tp!1253757 () Bool)

(declare-fun b_and!317973 () Bool)

(assert (=> b!4115930 (= tp!1253757 b_and!317973)))

(declare-fun b_free!116025 () Bool)

(declare-fun b_next!116729 () Bool)

(assert (=> b!4115930 (= b_free!116025 (not b_next!116729))))

(declare-fun tp!1253760 () Bool)

(declare-fun b_and!317975 () Bool)

(assert (=> b!4115930 (= tp!1253760 b_and!317975)))

(declare-fun b!4115923 () Bool)

(declare-fun e!2553806 () Bool)

(declare-fun e!2553803 () Bool)

(declare-fun tp!1253753 () Bool)

(assert (=> b!4115923 (= e!2553806 (and e!2553803 tp!1253753))))

(declare-fun b!4115924 () Bool)

(declare-fun res!1681068 () Bool)

(declare-fun e!2553805 () Bool)

(assert (=> b!4115924 (=> (not res!1681068) (not e!2553805))))

(declare-datatypes ((C!24478 0))(
  ( (C!24479 (val!14349 Int)) )
))
(declare-datatypes ((List!44560 0))(
  ( (Nil!44436) (Cons!44436 (h!49856 C!24478) (t!340351 List!44560)) )
))
(declare-fun p!2912 () List!44560)

(declare-fun input!3238 () List!44560)

(declare-fun isPrefix!4176 (List!44560 List!44560) Bool)

(assert (=> b!4115924 (= res!1681068 (isPrefix!4176 p!2912 input!3238))))

(declare-fun b!4115925 () Bool)

(declare-fun tp!1253756 () Bool)

(declare-fun e!2553814 () Bool)

(declare-fun e!2553804 () Bool)

(declare-datatypes ((List!44561 0))(
  ( (Nil!44437) (Cons!44437 (h!49857 (_ BitVec 16)) (t!340352 List!44561)) )
))
(declare-datatypes ((TokenValue!7471 0))(
  ( (FloatLiteralValue!14942 (text!52742 List!44561)) (TokenValueExt!7470 (__x!27159 Int)) (Broken!37355 (value!226902 List!44561)) (Object!7594) (End!7471) (Def!7471) (Underscore!7471) (Match!7471) (Else!7471) (Error!7471) (Case!7471) (If!7471) (Extends!7471) (Abstract!7471) (Class!7471) (Val!7471) (DelimiterValue!14942 (del!7531 List!44561)) (KeywordValue!7477 (value!226903 List!44561)) (CommentValue!14942 (value!226904 List!44561)) (WhitespaceValue!14942 (value!226905 List!44561)) (IndentationValue!7471 (value!226906 List!44561)) (String!51106) (Int32!7471) (Broken!37356 (value!226907 List!44561)) (Boolean!7472) (Unit!63799) (OperatorValue!7474 (op!7531 List!44561)) (IdentifierValue!14942 (value!226908 List!44561)) (IdentifierValue!14943 (value!226909 List!44561)) (WhitespaceValue!14943 (value!226910 List!44561)) (True!14942) (False!14942) (Broken!37357 (value!226911 List!44561)) (Broken!37358 (value!226912 List!44561)) (True!14943) (RightBrace!7471) (RightBracket!7471) (Colon!7471) (Null!7471) (Comma!7471) (LeftBracket!7471) (False!14943) (LeftBrace!7471) (ImaginaryLiteralValue!7471 (text!52743 List!44561)) (StringLiteralValue!22413 (value!226913 List!44561)) (EOFValue!7471 (value!226914 List!44561)) (IdentValue!7471 (value!226915 List!44561)) (DelimiterValue!14943 (value!226916 List!44561)) (DedentValue!7471 (value!226917 List!44561)) (NewLineValue!7471 (value!226918 List!44561)) (IntegerValue!22413 (value!226919 (_ BitVec 32)) (text!52744 List!44561)) (IntegerValue!22414 (value!226920 Int) (text!52745 List!44561)) (Times!7471) (Or!7471) (Equal!7471) (Minus!7471) (Broken!37359 (value!226921 List!44561)) (And!7471) (Div!7471) (LessEqual!7471) (Mod!7471) (Concat!19617) (Not!7471) (Plus!7471) (SpaceValue!7471 (value!226922 List!44561)) (IntegerValue!22415 (value!226923 Int) (text!52746 List!44561)) (StringLiteralValue!22414 (text!52747 List!44561)) (FloatLiteralValue!14943 (text!52748 List!44561)) (BytesLiteralValue!7471 (value!226924 List!44561)) (CommentValue!14943 (value!226925 List!44561)) (StringLiteralValue!22415 (value!226926 List!44561)) (ErrorTokenValue!7471 (msg!7532 List!44561)) )
))
(declare-datatypes ((IArray!26909 0))(
  ( (IArray!26910 (innerList!13512 List!44560)) )
))
(declare-datatypes ((Conc!13452 0))(
  ( (Node!13452 (left!33299 Conc!13452) (right!33629 Conc!13452) (csize!27134 Int) (cheight!13663 Int)) (Leaf!20788 (xs!16758 IArray!26909) (csize!27135 Int)) (Empty!13452) )
))
(declare-datatypes ((BalanceConc!26498 0))(
  ( (BalanceConc!26499 (c!707115 Conc!13452)) )
))
(declare-datatypes ((String!51107 0))(
  ( (String!51108 (value!226927 String)) )
))
(declare-datatypes ((Regex!12146 0))(
  ( (ElementMatch!12146 (c!707116 C!24478)) (Concat!19618 (regOne!24804 Regex!12146) (regTwo!24804 Regex!12146)) (EmptyExpr!12146) (Star!12146 (reg!12475 Regex!12146)) (EmptyLang!12146) (Union!12146 (regOne!24805 Regex!12146) (regTwo!24805 Regex!12146)) )
))
(declare-datatypes ((TokenValueInjection!14370 0))(
  ( (TokenValueInjection!14371 (toValue!9889 Int) (toChars!9748 Int)) )
))
(declare-datatypes ((Rule!14282 0))(
  ( (Rule!14283 (regex!7241 Regex!12146) (tag!8101 String!51107) (isSeparator!7241 Bool) (transformation!7241 TokenValueInjection!14370)) )
))
(declare-fun r!4008 () Rule!14282)

(declare-fun inv!59022 (String!51107) Bool)

(declare-fun inv!59025 (TokenValueInjection!14370) Bool)

(assert (=> b!4115925 (= e!2553814 (and tp!1253756 (inv!59022 (tag!8101 r!4008)) (inv!59025 (transformation!7241 r!4008)) e!2553804))))

(declare-fun b!4115926 () Bool)

(declare-fun size!32893 (List!44560) Int)

(assert (=> b!4115926 (= e!2553805 (< (size!32893 input!3238) (size!32893 p!2912)))))

(declare-datatypes ((Unit!63800 0))(
  ( (Unit!63801) )
))
(declare-fun lt!1468749 () Unit!63800)

(declare-fun lemmaSemiInverse!2099 (TokenValueInjection!14370 BalanceConc!26498) Unit!63800)

(declare-fun seqFromList!5358 (List!44560) BalanceConc!26498)

(assert (=> b!4115926 (= lt!1468749 (lemmaSemiInverse!2099 (transformation!7241 r!4008) (seqFromList!5358 p!2912)))))

(declare-datatypes ((List!44562 0))(
  ( (Nil!44438) (Cons!44438 (h!49858 Rule!14282) (t!340353 List!44562)) )
))
(declare-fun rules!3756 () List!44562)

(declare-fun tp!1253749 () Bool)

(declare-fun e!2553809 () Bool)

(declare-fun b!4115927 () Bool)

(assert (=> b!4115927 (= e!2553803 (and tp!1253749 (inv!59022 (tag!8101 (h!49858 rules!3756))) (inv!59025 (transformation!7241 (h!49858 rules!3756))) e!2553809))))

(declare-fun rBis!149 () Rule!14282)

(declare-fun b!4115928 () Bool)

(declare-fun e!2553815 () Bool)

(declare-fun tp!1253751 () Bool)

(declare-fun e!2553812 () Bool)

(assert (=> b!4115928 (= e!2553815 (and tp!1253751 (inv!59022 (tag!8101 rBis!149)) (inv!59025 (transformation!7241 rBis!149)) e!2553812))))

(declare-fun res!1681064 () Bool)

(assert (=> start!390096 (=> (not res!1681064) (not e!2553805))))

(declare-datatypes ((LexerInterface!6830 0))(
  ( (LexerInterfaceExt!6827 (__x!27160 Int)) (Lexer!6828) )
))
(declare-fun thiss!25645 () LexerInterface!6830)

(assert (=> start!390096 (= res!1681064 (is-Lexer!6828 thiss!25645))))

(assert (=> start!390096 e!2553805))

(assert (=> start!390096 e!2553806))

(declare-fun e!2553807 () Bool)

(assert (=> start!390096 e!2553807))

(assert (=> start!390096 true))

(assert (=> start!390096 e!2553814))

(declare-fun e!2553810 () Bool)

(assert (=> start!390096 e!2553810))

(assert (=> start!390096 e!2553815))

(declare-fun b!4115929 () Bool)

(declare-fun res!1681065 () Bool)

(assert (=> b!4115929 (=> (not res!1681065) (not e!2553805))))

(declare-fun contains!8911 (List!44562 Rule!14282) Bool)

(assert (=> b!4115929 (= res!1681065 (contains!8911 rules!3756 r!4008))))

(assert (=> b!4115930 (= e!2553809 (and tp!1253757 tp!1253760))))

(assert (=> b!4115931 (= e!2553804 (and tp!1253755 tp!1253754))))

(declare-fun b!4115932 () Bool)

(declare-fun tp_is_empty!21215 () Bool)

(declare-fun tp!1253758 () Bool)

(assert (=> b!4115932 (= e!2553807 (and tp_is_empty!21215 tp!1253758))))

(declare-fun b!4115933 () Bool)

(declare-fun res!1681070 () Bool)

(assert (=> b!4115933 (=> (not res!1681070) (not e!2553805))))

(declare-fun rulesInvariant!6127 (LexerInterface!6830 List!44562) Bool)

(assert (=> b!4115933 (= res!1681070 (rulesInvariant!6127 thiss!25645 rules!3756))))

(declare-fun b!4115934 () Bool)

(declare-fun res!1681069 () Bool)

(assert (=> b!4115934 (=> (not res!1681069) (not e!2553805))))

(declare-fun isEmpty!26419 (List!44560) Bool)

(assert (=> b!4115934 (= res!1681069 (not (isEmpty!26419 p!2912)))))

(declare-fun b!4115935 () Bool)

(declare-fun res!1681066 () Bool)

(assert (=> b!4115935 (=> (not res!1681066) (not e!2553805))))

(assert (=> b!4115935 (= res!1681066 (contains!8911 rules!3756 rBis!149))))

(assert (=> b!4115936 (= e!2553812 (and tp!1253750 tp!1253752))))

(declare-fun b!4115937 () Bool)

(declare-fun res!1681067 () Bool)

(assert (=> b!4115937 (=> (not res!1681067) (not e!2553805))))

(declare-fun isEmpty!26420 (List!44562) Bool)

(assert (=> b!4115937 (= res!1681067 (not (isEmpty!26420 rules!3756)))))

(declare-fun b!4115938 () Bool)

(declare-fun tp!1253759 () Bool)

(assert (=> b!4115938 (= e!2553810 (and tp_is_empty!21215 tp!1253759))))

(assert (= (and start!390096 res!1681064) b!4115924))

(assert (= (and b!4115924 res!1681068) b!4115937))

(assert (= (and b!4115937 res!1681067) b!4115933))

(assert (= (and b!4115933 res!1681070) b!4115929))

(assert (= (and b!4115929 res!1681065) b!4115935))

(assert (= (and b!4115935 res!1681066) b!4115934))

(assert (= (and b!4115934 res!1681069) b!4115926))

(assert (= b!4115927 b!4115930))

(assert (= b!4115923 b!4115927))

(assert (= (and start!390096 (is-Cons!44438 rules!3756)) b!4115923))

(assert (= (and start!390096 (is-Cons!44436 p!2912)) b!4115932))

(assert (= b!4115925 b!4115931))

(assert (= start!390096 b!4115925))

(assert (= (and start!390096 (is-Cons!44436 input!3238)) b!4115938))

(assert (= b!4115928 b!4115936))

(assert (= start!390096 b!4115928))

(declare-fun m!4715869 () Bool)

(assert (=> b!4115937 m!4715869))

(declare-fun m!4715871 () Bool)

(assert (=> b!4115926 m!4715871))

(declare-fun m!4715873 () Bool)

(assert (=> b!4115926 m!4715873))

(declare-fun m!4715875 () Bool)

(assert (=> b!4115926 m!4715875))

(assert (=> b!4115926 m!4715875))

(declare-fun m!4715877 () Bool)

(assert (=> b!4115926 m!4715877))

(declare-fun m!4715879 () Bool)

(assert (=> b!4115929 m!4715879))

(declare-fun m!4715881 () Bool)

(assert (=> b!4115933 m!4715881))

(declare-fun m!4715883 () Bool)

(assert (=> b!4115934 m!4715883))

(declare-fun m!4715885 () Bool)

(assert (=> b!4115935 m!4715885))

(declare-fun m!4715887 () Bool)

(assert (=> b!4115925 m!4715887))

(declare-fun m!4715889 () Bool)

(assert (=> b!4115925 m!4715889))

(declare-fun m!4715891 () Bool)

(assert (=> b!4115927 m!4715891))

(declare-fun m!4715893 () Bool)

(assert (=> b!4115927 m!4715893))

(declare-fun m!4715895 () Bool)

(assert (=> b!4115928 m!4715895))

(declare-fun m!4715897 () Bool)

(assert (=> b!4115928 m!4715897))

(declare-fun m!4715899 () Bool)

(assert (=> b!4115924 m!4715899))

(push 1)

(assert (not b!4115934))

(assert (not b!4115937))

(assert (not b!4115924))

(assert (not b!4115935))

(assert (not b_next!116725))

(assert (not b!4115932))

(assert (not b!4115925))

(assert (not b!4115926))

(assert (not b_next!116727))

(assert b_and!317967)

(assert (not b_next!116723))

(assert (not b!4115923))

(assert (not b!4115929))

(assert (not b!4115927))

(assert (not b!4115938))

(assert b_and!317973)

(assert (not b!4115928))

(assert b_and!317975)

(assert b_and!317965)

(assert (not b_next!116719))

(assert b_and!317971)

(assert (not b!4115933))

(assert (not b_next!116721))

(assert (not b_next!116729))

(assert b_and!317969)

(assert tp_is_empty!21215)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!116725))

(assert (not b_next!116727))

(assert b_and!317969)

(assert b_and!317967)

(assert (not b_next!116723))

(assert b_and!317973)

(assert b_and!317975)

(assert b_and!317965)

(assert (not b_next!116719))

(assert b_and!317971)

(assert (not b_next!116721))

(assert (not b_next!116729))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1220800 () Bool)

(declare-fun lt!1468755 () Bool)

(declare-fun content!6855 (List!44562) (Set Rule!14282))

(assert (=> d!1220800 (= lt!1468755 (set.member rBis!149 (content!6855 rules!3756)))))

(declare-fun e!2553860 () Bool)

(assert (=> d!1220800 (= lt!1468755 e!2553860)))

(declare-fun res!1681105 () Bool)

(assert (=> d!1220800 (=> (not res!1681105) (not e!2553860))))

(assert (=> d!1220800 (= res!1681105 (is-Cons!44438 rules!3756))))

(assert (=> d!1220800 (= (contains!8911 rules!3756 rBis!149) lt!1468755)))

(declare-fun b!4115991 () Bool)

(declare-fun e!2553859 () Bool)

(assert (=> b!4115991 (= e!2553860 e!2553859)))

(declare-fun res!1681104 () Bool)

(assert (=> b!4115991 (=> res!1681104 e!2553859)))

(assert (=> b!4115991 (= res!1681104 (= (h!49858 rules!3756) rBis!149))))

(declare-fun b!4115992 () Bool)

(assert (=> b!4115992 (= e!2553859 (contains!8911 (t!340353 rules!3756) rBis!149))))

(assert (= (and d!1220800 res!1681105) b!4115991))

(assert (= (and b!4115991 (not res!1681104)) b!4115992))

(declare-fun m!4715933 () Bool)

(assert (=> d!1220800 m!4715933))

(declare-fun m!4715935 () Bool)

(assert (=> d!1220800 m!4715935))

(declare-fun m!4715937 () Bool)

(assert (=> b!4115992 m!4715937))

(assert (=> b!4115935 d!1220800))

(declare-fun d!1220802 () Bool)

(declare-fun e!2553867 () Bool)

(assert (=> d!1220802 e!2553867))

(declare-fun res!1681117 () Bool)

(assert (=> d!1220802 (=> res!1681117 e!2553867)))

(declare-fun lt!1468758 () Bool)

(assert (=> d!1220802 (= res!1681117 (not lt!1468758))))

(declare-fun e!2553869 () Bool)

(assert (=> d!1220802 (= lt!1468758 e!2553869)))

(declare-fun res!1681115 () Bool)

(assert (=> d!1220802 (=> res!1681115 e!2553869)))

(assert (=> d!1220802 (= res!1681115 (is-Nil!44436 p!2912))))

(assert (=> d!1220802 (= (isPrefix!4176 p!2912 input!3238) lt!1468758)))

(declare-fun b!4116004 () Bool)

(assert (=> b!4116004 (= e!2553867 (>= (size!32893 input!3238) (size!32893 p!2912)))))

(declare-fun b!4116001 () Bool)

(declare-fun e!2553868 () Bool)

(assert (=> b!4116001 (= e!2553869 e!2553868)))

(declare-fun res!1681116 () Bool)

(assert (=> b!4116001 (=> (not res!1681116) (not e!2553868))))

(assert (=> b!4116001 (= res!1681116 (not (is-Nil!44436 input!3238)))))

(declare-fun b!4116002 () Bool)

(declare-fun res!1681114 () Bool)

(assert (=> b!4116002 (=> (not res!1681114) (not e!2553868))))

(declare-fun head!8670 (List!44560) C!24478)

(assert (=> b!4116002 (= res!1681114 (= (head!8670 p!2912) (head!8670 input!3238)))))

(declare-fun b!4116003 () Bool)

(declare-fun tail!6404 (List!44560) List!44560)

(assert (=> b!4116003 (= e!2553868 (isPrefix!4176 (tail!6404 p!2912) (tail!6404 input!3238)))))

(assert (= (and d!1220802 (not res!1681115)) b!4116001))

(assert (= (and b!4116001 res!1681116) b!4116002))

(assert (= (and b!4116002 res!1681114) b!4116003))

(assert (= (and d!1220802 (not res!1681117)) b!4116004))

(assert (=> b!4116004 m!4715871))

(assert (=> b!4116004 m!4715873))

(declare-fun m!4715939 () Bool)

(assert (=> b!4116002 m!4715939))

(declare-fun m!4715941 () Bool)

(assert (=> b!4116002 m!4715941))

(declare-fun m!4715943 () Bool)

(assert (=> b!4116003 m!4715943))

(declare-fun m!4715945 () Bool)

(assert (=> b!4116003 m!4715945))

(assert (=> b!4116003 m!4715943))

(assert (=> b!4116003 m!4715945))

(declare-fun m!4715947 () Bool)

(assert (=> b!4116003 m!4715947))

(assert (=> b!4115924 d!1220802))

(declare-fun d!1220810 () Bool)

(declare-fun lt!1468759 () Bool)

(assert (=> d!1220810 (= lt!1468759 (set.member r!4008 (content!6855 rules!3756)))))

(declare-fun e!2553871 () Bool)

(assert (=> d!1220810 (= lt!1468759 e!2553871)))

(declare-fun res!1681119 () Bool)

(assert (=> d!1220810 (=> (not res!1681119) (not e!2553871))))

(assert (=> d!1220810 (= res!1681119 (is-Cons!44438 rules!3756))))

(assert (=> d!1220810 (= (contains!8911 rules!3756 r!4008) lt!1468759)))

(declare-fun b!4116005 () Bool)

(declare-fun e!2553870 () Bool)

(assert (=> b!4116005 (= e!2553871 e!2553870)))

(declare-fun res!1681118 () Bool)

(assert (=> b!4116005 (=> res!1681118 e!2553870)))

(assert (=> b!4116005 (= res!1681118 (= (h!49858 rules!3756) r!4008))))

(declare-fun b!4116006 () Bool)

(assert (=> b!4116006 (= e!2553870 (contains!8911 (t!340353 rules!3756) r!4008))))

(assert (= (and d!1220810 res!1681119) b!4116005))

(assert (= (and b!4116005 (not res!1681118)) b!4116006))

(assert (=> d!1220810 m!4715933))

(declare-fun m!4715949 () Bool)

(assert (=> d!1220810 m!4715949))

(declare-fun m!4715951 () Bool)

(assert (=> b!4116006 m!4715951))

(assert (=> b!4115929 d!1220810))

(declare-fun d!1220812 () Bool)

(assert (=> d!1220812 (= (isEmpty!26419 p!2912) (is-Nil!44436 p!2912))))

(assert (=> b!4115934 d!1220812))

(declare-fun d!1220814 () Bool)

(assert (=> d!1220814 (= (inv!59022 (tag!8101 rBis!149)) (= (mod (str.len (value!226927 (tag!8101 rBis!149))) 2) 0))))

(assert (=> b!4115928 d!1220814))

(declare-fun d!1220816 () Bool)

(declare-fun res!1681125 () Bool)

(declare-fun e!2553877 () Bool)

(assert (=> d!1220816 (=> (not res!1681125) (not e!2553877))))

(declare-fun semiInverseModEq!3123 (Int Int) Bool)

(assert (=> d!1220816 (= res!1681125 (semiInverseModEq!3123 (toChars!9748 (transformation!7241 rBis!149)) (toValue!9889 (transformation!7241 rBis!149))))))

(assert (=> d!1220816 (= (inv!59025 (transformation!7241 rBis!149)) e!2553877)))

(declare-fun b!4116012 () Bool)

(declare-fun equivClasses!3022 (Int Int) Bool)

(assert (=> b!4116012 (= e!2553877 (equivClasses!3022 (toChars!9748 (transformation!7241 rBis!149)) (toValue!9889 (transformation!7241 rBis!149))))))

(assert (= (and d!1220816 res!1681125) b!4116012))

(declare-fun m!4715957 () Bool)

(assert (=> d!1220816 m!4715957))

(declare-fun m!4715959 () Bool)

(assert (=> b!4116012 m!4715959))

(assert (=> b!4115928 d!1220816))

(declare-fun d!1220820 () Bool)

(declare-fun res!1681134 () Bool)

(declare-fun e!2553886 () Bool)

(assert (=> d!1220820 (=> (not res!1681134) (not e!2553886))))

(declare-fun rulesValid!2837 (LexerInterface!6830 List!44562) Bool)

(assert (=> d!1220820 (= res!1681134 (rulesValid!2837 thiss!25645 rules!3756))))

(assert (=> d!1220820 (= (rulesInvariant!6127 thiss!25645 rules!3756) e!2553886)))

(declare-fun b!4116021 () Bool)

(declare-datatypes ((List!44566 0))(
  ( (Nil!44442) (Cons!44442 (h!49862 String!51107) (t!340373 List!44566)) )
))
(declare-fun noDuplicateTag!2914 (LexerInterface!6830 List!44562 List!44566) Bool)

(assert (=> b!4116021 (= e!2553886 (noDuplicateTag!2914 thiss!25645 rules!3756 Nil!44442))))

(assert (= (and d!1220820 res!1681134) b!4116021))

(declare-fun m!4715961 () Bool)

(assert (=> d!1220820 m!4715961))

(declare-fun m!4715965 () Bool)

(assert (=> b!4116021 m!4715965))

(assert (=> b!4115933 d!1220820))

(declare-fun d!1220822 () Bool)

(assert (=> d!1220822 (= (inv!59022 (tag!8101 (h!49858 rules!3756))) (= (mod (str.len (value!226927 (tag!8101 (h!49858 rules!3756)))) 2) 0))))

(assert (=> b!4115927 d!1220822))

(declare-fun d!1220824 () Bool)

(declare-fun res!1681135 () Bool)

(declare-fun e!2553887 () Bool)

(assert (=> d!1220824 (=> (not res!1681135) (not e!2553887))))

(assert (=> d!1220824 (= res!1681135 (semiInverseModEq!3123 (toChars!9748 (transformation!7241 (h!49858 rules!3756))) (toValue!9889 (transformation!7241 (h!49858 rules!3756)))))))

(assert (=> d!1220824 (= (inv!59025 (transformation!7241 (h!49858 rules!3756))) e!2553887)))

(declare-fun b!4116022 () Bool)

(assert (=> b!4116022 (= e!2553887 (equivClasses!3022 (toChars!9748 (transformation!7241 (h!49858 rules!3756))) (toValue!9889 (transformation!7241 (h!49858 rules!3756)))))))

(assert (= (and d!1220824 res!1681135) b!4116022))

(declare-fun m!4715971 () Bool)

(assert (=> d!1220824 m!4715971))

(declare-fun m!4715973 () Bool)

(assert (=> b!4116022 m!4715973))

(assert (=> b!4115927 d!1220824))

(declare-fun d!1220828 () Bool)

(assert (=> d!1220828 (= (isEmpty!26420 rules!3756) (is-Nil!44438 rules!3756))))

(assert (=> b!4115937 d!1220828))

(declare-fun d!1220832 () Bool)

(declare-fun lt!1468766 () Int)

(assert (=> d!1220832 (>= lt!1468766 0)))

(declare-fun e!2553893 () Int)

(assert (=> d!1220832 (= lt!1468766 e!2553893)))

(declare-fun c!707122 () Bool)

(assert (=> d!1220832 (= c!707122 (is-Nil!44436 input!3238))))

(assert (=> d!1220832 (= (size!32893 input!3238) lt!1468766)))

(declare-fun b!4116030 () Bool)

(assert (=> b!4116030 (= e!2553893 0)))

(declare-fun b!4116031 () Bool)

(assert (=> b!4116031 (= e!2553893 (+ 1 (size!32893 (t!340351 input!3238))))))

(assert (= (and d!1220832 c!707122) b!4116030))

(assert (= (and d!1220832 (not c!707122)) b!4116031))

(declare-fun m!4715983 () Bool)

(assert (=> b!4116031 m!4715983))

(assert (=> b!4115926 d!1220832))

(declare-fun d!1220840 () Bool)

(declare-fun lt!1468767 () Int)

(assert (=> d!1220840 (>= lt!1468767 0)))

(declare-fun e!2553894 () Int)

(assert (=> d!1220840 (= lt!1468767 e!2553894)))

(declare-fun c!707123 () Bool)

(assert (=> d!1220840 (= c!707123 (is-Nil!44436 p!2912))))

(assert (=> d!1220840 (= (size!32893 p!2912) lt!1468767)))

(declare-fun b!4116032 () Bool)

(assert (=> b!4116032 (= e!2553894 0)))

(declare-fun b!4116033 () Bool)

(assert (=> b!4116033 (= e!2553894 (+ 1 (size!32893 (t!340351 p!2912))))))

(assert (= (and d!1220840 c!707123) b!4116032))

(assert (= (and d!1220840 (not c!707123)) b!4116033))

(declare-fun m!4715985 () Bool)

(assert (=> b!4116033 m!4715985))

(assert (=> b!4115926 d!1220840))

(declare-fun b!4116046 () Bool)

(declare-fun e!2553901 () Bool)

(assert (=> b!4116046 (= e!2553901 true)))

(declare-fun d!1220842 () Bool)

(assert (=> d!1220842 e!2553901))

(assert (= d!1220842 b!4116046))

(declare-fun order!23359 () Int)

(declare-fun lambda!128608 () Int)

(declare-fun order!23361 () Int)

(declare-fun dynLambda!18974 (Int Int) Int)

(declare-fun dynLambda!18975 (Int Int) Int)

(assert (=> b!4116046 (< (dynLambda!18974 order!23359 (toValue!9889 (transformation!7241 r!4008))) (dynLambda!18975 order!23361 lambda!128608))))

(declare-fun order!23363 () Int)

(declare-fun dynLambda!18976 (Int Int) Int)

(assert (=> b!4116046 (< (dynLambda!18976 order!23363 (toChars!9748 (transformation!7241 r!4008))) (dynLambda!18975 order!23361 lambda!128608))))

(declare-fun list!16332 (BalanceConc!26498) List!44560)

(declare-fun dynLambda!18977 (Int TokenValue!7471) BalanceConc!26498)

(declare-fun dynLambda!18978 (Int BalanceConc!26498) TokenValue!7471)

(assert (=> d!1220842 (= (list!16332 (dynLambda!18977 (toChars!9748 (transformation!7241 r!4008)) (dynLambda!18978 (toValue!9889 (transformation!7241 r!4008)) (seqFromList!5358 p!2912)))) (list!16332 (seqFromList!5358 p!2912)))))

(declare-fun lt!1468776 () Unit!63800)

(declare-fun ForallOf!906 (Int BalanceConc!26498) Unit!63800)

(assert (=> d!1220842 (= lt!1468776 (ForallOf!906 lambda!128608 (seqFromList!5358 p!2912)))))

(assert (=> d!1220842 (= (lemmaSemiInverse!2099 (transformation!7241 r!4008) (seqFromList!5358 p!2912)) lt!1468776)))

(declare-fun b_lambda!120751 () Bool)

(assert (=> (not b_lambda!120751) (not d!1220842)))

(declare-fun tb!247015 () Bool)

(declare-fun t!340358 () Bool)

(assert (=> (and b!4115936 (= (toChars!9748 (transformation!7241 rBis!149)) (toChars!9748 (transformation!7241 r!4008))) t!340358) tb!247015))

(declare-fun e!2553904 () Bool)

(declare-fun tp!1253799 () Bool)

(declare-fun b!4116051 () Bool)

(declare-fun inv!59027 (Conc!13452) Bool)

(assert (=> b!4116051 (= e!2553904 (and (inv!59027 (c!707115 (dynLambda!18977 (toChars!9748 (transformation!7241 r!4008)) (dynLambda!18978 (toValue!9889 (transformation!7241 r!4008)) (seqFromList!5358 p!2912))))) tp!1253799))))

(declare-fun result!300036 () Bool)

(declare-fun inv!59028 (BalanceConc!26498) Bool)

(assert (=> tb!247015 (= result!300036 (and (inv!59028 (dynLambda!18977 (toChars!9748 (transformation!7241 r!4008)) (dynLambda!18978 (toValue!9889 (transformation!7241 r!4008)) (seqFromList!5358 p!2912)))) e!2553904))))

(assert (= tb!247015 b!4116051))

(declare-fun m!4715991 () Bool)

(assert (=> b!4116051 m!4715991))

(declare-fun m!4715993 () Bool)

(assert (=> tb!247015 m!4715993))

(assert (=> d!1220842 t!340358))

(declare-fun b_and!317989 () Bool)

(assert (= b_and!317967 (and (=> t!340358 result!300036) b_and!317989)))

(declare-fun t!340360 () Bool)

(declare-fun tb!247017 () Bool)

(assert (=> (and b!4115931 (= (toChars!9748 (transformation!7241 r!4008)) (toChars!9748 (transformation!7241 r!4008))) t!340360) tb!247017))

(declare-fun result!300040 () Bool)

(assert (= result!300040 result!300036))

(assert (=> d!1220842 t!340360))

(declare-fun b_and!317991 () Bool)

(assert (= b_and!317971 (and (=> t!340360 result!300040) b_and!317991)))

(declare-fun t!340362 () Bool)

(declare-fun tb!247019 () Bool)

(assert (=> (and b!4115930 (= (toChars!9748 (transformation!7241 (h!49858 rules!3756))) (toChars!9748 (transformation!7241 r!4008))) t!340362) tb!247019))

(declare-fun result!300042 () Bool)

(assert (= result!300042 result!300036))

(assert (=> d!1220842 t!340362))

(declare-fun b_and!317993 () Bool)

(assert (= b_and!317975 (and (=> t!340362 result!300042) b_and!317993)))

(declare-fun b_lambda!120753 () Bool)

(assert (=> (not b_lambda!120753) (not d!1220842)))

(declare-fun t!340364 () Bool)

(declare-fun tb!247021 () Bool)

(assert (=> (and b!4115936 (= (toValue!9889 (transformation!7241 rBis!149)) (toValue!9889 (transformation!7241 r!4008))) t!340364) tb!247021))

(declare-fun result!300044 () Bool)

(declare-fun inv!21 (TokenValue!7471) Bool)

(assert (=> tb!247021 (= result!300044 (inv!21 (dynLambda!18978 (toValue!9889 (transformation!7241 r!4008)) (seqFromList!5358 p!2912))))))

(declare-fun m!4715995 () Bool)

(assert (=> tb!247021 m!4715995))

(assert (=> d!1220842 t!340364))

(declare-fun b_and!317995 () Bool)

(assert (= b_and!317965 (and (=> t!340364 result!300044) b_and!317995)))

(declare-fun t!340366 () Bool)

(declare-fun tb!247023 () Bool)

(assert (=> (and b!4115931 (= (toValue!9889 (transformation!7241 r!4008)) (toValue!9889 (transformation!7241 r!4008))) t!340366) tb!247023))

(declare-fun result!300048 () Bool)

(assert (= result!300048 result!300044))

(assert (=> d!1220842 t!340366))

(declare-fun b_and!317997 () Bool)

(assert (= b_and!317969 (and (=> t!340366 result!300048) b_and!317997)))

(declare-fun t!340368 () Bool)

(declare-fun tb!247025 () Bool)

(assert (=> (and b!4115930 (= (toValue!9889 (transformation!7241 (h!49858 rules!3756))) (toValue!9889 (transformation!7241 r!4008))) t!340368) tb!247025))

(declare-fun result!300050 () Bool)

(assert (= result!300050 result!300044))

(assert (=> d!1220842 t!340368))

(declare-fun b_and!317999 () Bool)

(assert (= b_and!317973 (and (=> t!340368 result!300050) b_and!317999)))

(declare-fun m!4715997 () Bool)

(assert (=> d!1220842 m!4715997))

(declare-fun m!4715999 () Bool)

(assert (=> d!1220842 m!4715999))

(assert (=> d!1220842 m!4715875))

(assert (=> d!1220842 m!4715997))

(assert (=> d!1220842 m!4715999))

(declare-fun m!4716001 () Bool)

(assert (=> d!1220842 m!4716001))

(assert (=> d!1220842 m!4715875))

(declare-fun m!4716003 () Bool)

(assert (=> d!1220842 m!4716003))

(assert (=> d!1220842 m!4715875))

(declare-fun m!4716005 () Bool)

(assert (=> d!1220842 m!4716005))

(assert (=> b!4115926 d!1220842))

(declare-fun d!1220848 () Bool)

(declare-fun fromListB!2456 (List!44560) BalanceConc!26498)

(assert (=> d!1220848 (= (seqFromList!5358 p!2912) (fromListB!2456 p!2912))))

(declare-fun bs!594560 () Bool)

(assert (= bs!594560 d!1220848))

(declare-fun m!4716007 () Bool)

(assert (=> bs!594560 m!4716007))

(assert (=> b!4115926 d!1220848))

(declare-fun d!1220850 () Bool)

(assert (=> d!1220850 (= (inv!59022 (tag!8101 r!4008)) (= (mod (str.len (value!226927 (tag!8101 r!4008))) 2) 0))))

(assert (=> b!4115925 d!1220850))

(declare-fun d!1220852 () Bool)

(declare-fun res!1681139 () Bool)

(declare-fun e!2553908 () Bool)

(assert (=> d!1220852 (=> (not res!1681139) (not e!2553908))))

(assert (=> d!1220852 (= res!1681139 (semiInverseModEq!3123 (toChars!9748 (transformation!7241 r!4008)) (toValue!9889 (transformation!7241 r!4008))))))

(assert (=> d!1220852 (= (inv!59025 (transformation!7241 r!4008)) e!2553908)))

(declare-fun b!4116054 () Bool)

(assert (=> b!4116054 (= e!2553908 (equivClasses!3022 (toChars!9748 (transformation!7241 r!4008)) (toValue!9889 (transformation!7241 r!4008))))))

(assert (= (and d!1220852 res!1681139) b!4116054))

(declare-fun m!4716009 () Bool)

(assert (=> d!1220852 m!4716009))

(declare-fun m!4716011 () Bool)

(assert (=> b!4116054 m!4716011))

(assert (=> b!4115925 d!1220852))

(declare-fun b!4116065 () Bool)

(declare-fun b_free!116039 () Bool)

(declare-fun b_next!116743 () Bool)

(assert (=> b!4116065 (= b_free!116039 (not b_next!116743))))

(declare-fun t!340370 () Bool)

(declare-fun tb!247027 () Bool)

(assert (=> (and b!4116065 (= (toValue!9889 (transformation!7241 (h!49858 (t!340353 rules!3756)))) (toValue!9889 (transformation!7241 r!4008))) t!340370) tb!247027))

(declare-fun result!300054 () Bool)

(assert (= result!300054 result!300044))

(assert (=> d!1220842 t!340370))

(declare-fun b_and!318001 () Bool)

(declare-fun tp!1253810 () Bool)

(assert (=> b!4116065 (= tp!1253810 (and (=> t!340370 result!300054) b_and!318001))))

(declare-fun b_free!116041 () Bool)

(declare-fun b_next!116745 () Bool)

(assert (=> b!4116065 (= b_free!116041 (not b_next!116745))))

(declare-fun t!340372 () Bool)

(declare-fun tb!247029 () Bool)

(assert (=> (and b!4116065 (= (toChars!9748 (transformation!7241 (h!49858 (t!340353 rules!3756)))) (toChars!9748 (transformation!7241 r!4008))) t!340372) tb!247029))

(declare-fun result!300056 () Bool)

(assert (= result!300056 result!300036))

(assert (=> d!1220842 t!340372))

(declare-fun tp!1253811 () Bool)

(declare-fun b_and!318003 () Bool)

(assert (=> b!4116065 (= tp!1253811 (and (=> t!340372 result!300056) b_and!318003))))

(declare-fun e!2553917 () Bool)

(assert (=> b!4116065 (= e!2553917 (and tp!1253810 tp!1253811))))

(declare-fun e!2553920 () Bool)

(declare-fun tp!1253809 () Bool)

(declare-fun b!4116064 () Bool)

(assert (=> b!4116064 (= e!2553920 (and tp!1253809 (inv!59022 (tag!8101 (h!49858 (t!340353 rules!3756)))) (inv!59025 (transformation!7241 (h!49858 (t!340353 rules!3756)))) e!2553917))))

(declare-fun b!4116063 () Bool)

(declare-fun e!2553919 () Bool)

(declare-fun tp!1253808 () Bool)

(assert (=> b!4116063 (= e!2553919 (and e!2553920 tp!1253808))))

(assert (=> b!4115923 (= tp!1253753 e!2553919)))

(assert (= b!4116064 b!4116065))

(assert (= b!4116063 b!4116064))

(assert (= (and b!4115923 (is-Cons!44438 (t!340353 rules!3756))) b!4116063))

(declare-fun m!4716013 () Bool)

(assert (=> b!4116064 m!4716013))

(declare-fun m!4716015 () Bool)

(assert (=> b!4116064 m!4716015))

(declare-fun e!2553923 () Bool)

(assert (=> b!4115928 (= tp!1253751 e!2553923)))

(declare-fun b!4116077 () Bool)

(declare-fun tp!1253825 () Bool)

(declare-fun tp!1253823 () Bool)

(assert (=> b!4116077 (= e!2553923 (and tp!1253825 tp!1253823))))

(declare-fun b!4116076 () Bool)

(assert (=> b!4116076 (= e!2553923 tp_is_empty!21215)))

(declare-fun b!4116078 () Bool)

(declare-fun tp!1253826 () Bool)

(assert (=> b!4116078 (= e!2553923 tp!1253826)))

(declare-fun b!4116079 () Bool)

(declare-fun tp!1253824 () Bool)

(declare-fun tp!1253822 () Bool)

(assert (=> b!4116079 (= e!2553923 (and tp!1253824 tp!1253822))))

(assert (= (and b!4115928 (is-ElementMatch!12146 (regex!7241 rBis!149))) b!4116076))

(assert (= (and b!4115928 (is-Concat!19618 (regex!7241 rBis!149))) b!4116077))

(assert (= (and b!4115928 (is-Star!12146 (regex!7241 rBis!149))) b!4116078))

(assert (= (and b!4115928 (is-Union!12146 (regex!7241 rBis!149))) b!4116079))

(declare-fun b!4116084 () Bool)

(declare-fun e!2553926 () Bool)

(declare-fun tp!1253829 () Bool)

(assert (=> b!4116084 (= e!2553926 (and tp_is_empty!21215 tp!1253829))))

(assert (=> b!4115938 (= tp!1253759 e!2553926)))

(assert (= (and b!4115938 (is-Cons!44436 (t!340351 input!3238))) b!4116084))

(declare-fun e!2553927 () Bool)

(assert (=> b!4115927 (= tp!1253749 e!2553927)))

(declare-fun b!4116086 () Bool)

(declare-fun tp!1253833 () Bool)

(declare-fun tp!1253831 () Bool)

(assert (=> b!4116086 (= e!2553927 (and tp!1253833 tp!1253831))))

(declare-fun b!4116085 () Bool)

(assert (=> b!4116085 (= e!2553927 tp_is_empty!21215)))

(declare-fun b!4116087 () Bool)

(declare-fun tp!1253834 () Bool)

(assert (=> b!4116087 (= e!2553927 tp!1253834)))

(declare-fun b!4116088 () Bool)

(declare-fun tp!1253832 () Bool)

(declare-fun tp!1253830 () Bool)

(assert (=> b!4116088 (= e!2553927 (and tp!1253832 tp!1253830))))

(assert (= (and b!4115927 (is-ElementMatch!12146 (regex!7241 (h!49858 rules!3756)))) b!4116085))

(assert (= (and b!4115927 (is-Concat!19618 (regex!7241 (h!49858 rules!3756)))) b!4116086))

(assert (= (and b!4115927 (is-Star!12146 (regex!7241 (h!49858 rules!3756)))) b!4116087))

(assert (= (and b!4115927 (is-Union!12146 (regex!7241 (h!49858 rules!3756)))) b!4116088))

(declare-fun b!4116089 () Bool)

(declare-fun e!2553928 () Bool)

(declare-fun tp!1253835 () Bool)

(assert (=> b!4116089 (= e!2553928 (and tp_is_empty!21215 tp!1253835))))

(assert (=> b!4115932 (= tp!1253758 e!2553928)))

(assert (= (and b!4115932 (is-Cons!44436 (t!340351 p!2912))) b!4116089))

(declare-fun e!2553929 () Bool)

(assert (=> b!4115925 (= tp!1253756 e!2553929)))

(declare-fun b!4116091 () Bool)

(declare-fun tp!1253839 () Bool)

(declare-fun tp!1253837 () Bool)

(assert (=> b!4116091 (= e!2553929 (and tp!1253839 tp!1253837))))

(declare-fun b!4116090 () Bool)

(assert (=> b!4116090 (= e!2553929 tp_is_empty!21215)))

(declare-fun b!4116092 () Bool)

(declare-fun tp!1253840 () Bool)

(assert (=> b!4116092 (= e!2553929 tp!1253840)))

(declare-fun b!4116093 () Bool)

(declare-fun tp!1253838 () Bool)

(declare-fun tp!1253836 () Bool)

(assert (=> b!4116093 (= e!2553929 (and tp!1253838 tp!1253836))))

(assert (= (and b!4115925 (is-ElementMatch!12146 (regex!7241 r!4008))) b!4116090))

(assert (= (and b!4115925 (is-Concat!19618 (regex!7241 r!4008))) b!4116091))

(assert (= (and b!4115925 (is-Star!12146 (regex!7241 r!4008))) b!4116092))

(assert (= (and b!4115925 (is-Union!12146 (regex!7241 r!4008))) b!4116093))

(declare-fun b_lambda!120755 () Bool)

(assert (= b_lambda!120753 (or (and b!4115936 b_free!116015 (= (toValue!9889 (transformation!7241 rBis!149)) (toValue!9889 (transformation!7241 r!4008)))) (and b!4115931 b_free!116019) (and b!4115930 b_free!116023 (= (toValue!9889 (transformation!7241 (h!49858 rules!3756))) (toValue!9889 (transformation!7241 r!4008)))) (and b!4116065 b_free!116039 (= (toValue!9889 (transformation!7241 (h!49858 (t!340353 rules!3756)))) (toValue!9889 (transformation!7241 r!4008)))) b_lambda!120755)))

(declare-fun b_lambda!120757 () Bool)

(assert (= b_lambda!120751 (or (and b!4115936 b_free!116017 (= (toChars!9748 (transformation!7241 rBis!149)) (toChars!9748 (transformation!7241 r!4008)))) (and b!4115931 b_free!116021) (and b!4115930 b_free!116025 (= (toChars!9748 (transformation!7241 (h!49858 rules!3756))) (toChars!9748 (transformation!7241 r!4008)))) (and b!4116065 b_free!116041 (= (toChars!9748 (transformation!7241 (h!49858 (t!340353 rules!3756)))) (toChars!9748 (transformation!7241 r!4008)))) b_lambda!120757)))

(push 1)

(assert (not b!4116092))

(assert (not d!1220848))

(assert (not b!4116012))

(assert (not b!4116051))

(assert b_and!317989)

(assert (not b!4116079))

(assert (not b!4116006))

(assert (not b_lambda!120755))

(assert (not b!4116093))

(assert b_and!317993)

(assert (not b_next!116745))

(assert b_and!317999)

(assert (not b_lambda!120757))

(assert (not b!4116084))

(assert (not b!4116064))

(assert (not b_next!116725))

(assert (not b!4116089))

(assert (not d!1220842))

(assert (not b!4116033))

(assert (not d!1220810))

(assert b_and!318001)

(assert (not b_next!116719))

(assert (not b!4116088))

(assert (not d!1220824))

(assert (not b!4116091))

(assert (not b!4116002))

(assert (not b!4116087))

(assert (not d!1220852))

(assert (not d!1220816))

(assert (not b!4116078))

(assert (not b_next!116721))

(assert (not b_next!116729))

(assert b_and!317991)

(assert (not b_next!116727))

(assert (not b!4116077))

(assert tp_is_empty!21215)

(assert (not b!4115992))

(assert b_and!318003)

(assert (not b!4116021))

(assert (not b_next!116743))

(assert (not d!1220820))

(assert (not b_next!116723))

(assert (not b!4116054))

(assert (not b!4116031))

(assert (not d!1220800))

(assert (not tb!247015))

(assert (not b!4116022))

(assert (not b!4116063))

(assert (not b!4116086))

(assert (not b!4116003))

(assert (not tb!247021))

(assert b_and!317995)

(assert b_and!317997)

(assert (not b!4116004))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317993)

(assert (not b_next!116725))

(assert b_and!317989)

(assert b_and!318003)

(assert (not b_next!116743))

(assert (not b_next!116723))

(assert (not b_next!116745))

(assert b_and!317999)

(assert b_and!318001)

(assert (not b_next!116719))

(assert (not b_next!116721))

(assert (not b_next!116729))

(assert b_and!317991)

(assert (not b_next!116727))

(assert b_and!317995)

(assert b_and!317997)

(check-sat)

(pop 1)

