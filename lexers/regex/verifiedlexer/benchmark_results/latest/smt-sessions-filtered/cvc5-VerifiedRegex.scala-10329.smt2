; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536708 () Bool)

(assert start!536708)

(declare-fun b!5092786 () Bool)

(declare-fun b_free!133231 () Bool)

(declare-fun b_next!134021 () Bool)

(assert (=> b!5092786 (= b_free!133231 (not b_next!134021))))

(declare-fun tp!1419643 () Bool)

(declare-fun b_and!350103 () Bool)

(assert (=> b!5092786 (= tp!1419643 b_and!350103)))

(declare-fun b_free!133233 () Bool)

(declare-fun b_next!134023 () Bool)

(assert (=> b!5092786 (= b_free!133233 (not b_next!134023))))

(declare-fun tp!1419642 () Bool)

(declare-fun b_and!350105 () Bool)

(assert (=> b!5092786 (= tp!1419642 b_and!350105)))

(declare-fun b!5092791 () Bool)

(declare-fun e!3176021 () Bool)

(assert (=> b!5092791 (= e!3176021 true)))

(declare-fun b!5092783 () Bool)

(assert (=> b!5092783 e!3176021))

(assert (= b!5092783 b!5092791))

(declare-fun lambda!249795 () Int)

(declare-datatypes ((List!58658 0))(
  ( (Nil!58534) (Cons!58534 (h!64982 (_ BitVec 16)) (t!371599 List!58658)) )
))
(declare-datatypes ((TokenValue!8793 0))(
  ( (FloatLiteralValue!17586 (text!61996 List!58658)) (TokenValueExt!8792 (__x!34879 Int)) (Broken!43965 (value!271948 List!58658)) (Object!8916) (End!8793) (Def!8793) (Underscore!8793) (Match!8793) (Else!8793) (Error!8793) (Case!8793) (If!8793) (Extends!8793) (Abstract!8793) (Class!8793) (Val!8793) (DelimiterValue!17586 (del!8853 List!58658)) (KeywordValue!8799 (value!271949 List!58658)) (CommentValue!17586 (value!271950 List!58658)) (WhitespaceValue!17586 (value!271951 List!58658)) (IndentationValue!8793 (value!271952 List!58658)) (String!66892) (Int32!8793) (Broken!43966 (value!271953 List!58658)) (Boolean!8794) (Unit!149577) (OperatorValue!8796 (op!8853 List!58658)) (IdentifierValue!17586 (value!271954 List!58658)) (IdentifierValue!17587 (value!271955 List!58658)) (WhitespaceValue!17587 (value!271956 List!58658)) (True!17586) (False!17586) (Broken!43967 (value!271957 List!58658)) (Broken!43968 (value!271958 List!58658)) (True!17587) (RightBrace!8793) (RightBracket!8793) (Colon!8793) (Null!8793) (Comma!8793) (LeftBracket!8793) (False!17587) (LeftBrace!8793) (ImaginaryLiteralValue!8793 (text!61997 List!58658)) (StringLiteralValue!26379 (value!271959 List!58658)) (EOFValue!8793 (value!271960 List!58658)) (IdentValue!8793 (value!271961 List!58658)) (DelimiterValue!17587 (value!271962 List!58658)) (DedentValue!8793 (value!271963 List!58658)) (NewLineValue!8793 (value!271964 List!58658)) (IntegerValue!26379 (value!271965 (_ BitVec 32)) (text!61998 List!58658)) (IntegerValue!26380 (value!271966 Int) (text!61999 List!58658)) (Times!8793) (Or!8793) (Equal!8793) (Minus!8793) (Broken!43969 (value!271967 List!58658)) (And!8793) (Div!8793) (LessEqual!8793) (Mod!8793) (Concat!22751) (Not!8793) (Plus!8793) (SpaceValue!8793 (value!271968 List!58658)) (IntegerValue!26381 (value!271969 Int) (text!62000 List!58658)) (StringLiteralValue!26380 (text!62001 List!58658)) (FloatLiteralValue!17587 (text!62002 List!58658)) (BytesLiteralValue!8793 (value!271970 List!58658)) (CommentValue!17587 (value!271971 List!58658)) (StringLiteralValue!26381 (value!271972 List!58658)) (ErrorTokenValue!8793 (msg!8854 List!58658)) )
))
(declare-datatypes ((C!28166 0))(
  ( (C!28167 (val!23733 Int)) )
))
(declare-datatypes ((List!58659 0))(
  ( (Nil!58535) (Cons!58535 (h!64983 C!28166) (t!371600 List!58659)) )
))
(declare-datatypes ((IArray!31359 0))(
  ( (IArray!31360 (innerList!15737 List!58659)) )
))
(declare-datatypes ((Conc!15649 0))(
  ( (Node!15649 (left!42948 Conc!15649) (right!43278 Conc!15649) (csize!31528 Int) (cheight!15860 Int)) (Leaf!25979 (xs!19031 IArray!31359) (csize!31529 Int)) (Empty!15649) )
))
(declare-datatypes ((BalanceConc!30416 0))(
  ( (BalanceConc!30417 (c!875337 Conc!15649)) )
))
(declare-datatypes ((TokenValueInjection!16894 0))(
  ( (TokenValueInjection!16895 (toValue!11498 Int) (toChars!11357 Int)) )
))
(declare-fun thiss!6968 () TokenValueInjection!16894)

(declare-fun order!26721 () Int)

(declare-fun order!26719 () Int)

(declare-fun dynLambda!23544 (Int Int) Int)

(declare-fun dynLambda!23545 (Int Int) Int)

(assert (=> b!5092791 (< (dynLambda!23544 order!26719 (toValue!11498 thiss!6968)) (dynLambda!23545 order!26721 lambda!249795))))

(declare-fun order!26723 () Int)

(declare-fun dynLambda!23546 (Int Int) Int)

(assert (=> b!5092791 (< (dynLambda!23546 order!26723 (toChars!11357 thiss!6968)) (dynLambda!23545 order!26721 lambda!249795))))

(declare-fun res!2167297 () Bool)

(declare-fun e!3176015 () Bool)

(assert (=> start!536708 (=> (not res!2167297) (not e!3176015))))

(declare-fun c1!1 () BalanceConc!30416)

(declare-fun c2!2 () BalanceConc!30416)

(declare-fun list!19125 (BalanceConc!30416) List!58659)

(assert (=> start!536708 (= res!2167297 (= (list!19125 c1!1) (list!19125 c2!2)))))

(assert (=> start!536708 e!3176015))

(declare-fun e!3176017 () Bool)

(declare-fun inv!78013 (BalanceConc!30416) Bool)

(assert (=> start!536708 (and (inv!78013 c1!1) e!3176017)))

(declare-fun e!3176018 () Bool)

(assert (=> start!536708 (and (inv!78013 c2!2) e!3176018)))

(declare-fun e!3176016 () Bool)

(declare-fun inv!78014 (TokenValueInjection!16894) Bool)

(assert (=> start!536708 (and (inv!78014 thiss!6968) e!3176016)))

(assert (=> b!5092786 (= e!3176016 (and tp!1419643 tp!1419642))))

(declare-fun b!5092785 () Bool)

(declare-fun tp!1419641 () Bool)

(declare-fun inv!78015 (Conc!15649) Bool)

(assert (=> b!5092785 (= e!3176018 (and (inv!78015 (c!875337 c2!2)) tp!1419641))))

(declare-fun Forall2!1302 (Int) Bool)

(assert (=> b!5092783 (= e!3176015 (not (Forall2!1302 lambda!249795)))))

(declare-fun b!5092784 () Bool)

(declare-fun tp!1419640 () Bool)

(assert (=> b!5092784 (= e!3176017 (and (inv!78015 (c!875337 c1!1)) tp!1419640))))

(assert (= (and start!536708 res!2167297) b!5092783))

(assert (= start!536708 b!5092784))

(assert (= start!536708 b!5092785))

(assert (= start!536708 b!5092786))

(declare-fun m!6151014 () Bool)

(assert (=> start!536708 m!6151014))

(declare-fun m!6151016 () Bool)

(assert (=> start!536708 m!6151016))

(declare-fun m!6151018 () Bool)

(assert (=> start!536708 m!6151018))

(declare-fun m!6151020 () Bool)

(assert (=> start!536708 m!6151020))

(declare-fun m!6151022 () Bool)

(assert (=> start!536708 m!6151022))

(declare-fun m!6151024 () Bool)

(assert (=> b!5092785 m!6151024))

(declare-fun m!6151026 () Bool)

(assert (=> b!5092783 m!6151026))

(declare-fun m!6151028 () Bool)

(assert (=> b!5092784 m!6151028))

(push 1)

(assert (not b!5092785))

(assert (not b_next!134021))

(assert (not start!536708))

(assert b_and!350105)

(assert b_and!350103)

(assert (not b!5092784))

(assert (not b_next!134023))

(assert (not b!5092783))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350105)

(assert b_and!350103)

(assert (not b_next!134021))

(assert (not b_next!134023))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1648506 () Bool)

(declare-fun c!875341 () Bool)

(assert (=> d!1648506 (= c!875341 (is-Node!15649 (c!875337 c2!2)))))

(declare-fun e!3176043 () Bool)

(assert (=> d!1648506 (= (inv!78015 (c!875337 c2!2)) e!3176043)))

(declare-fun b!5092817 () Bool)

(declare-fun inv!78019 (Conc!15649) Bool)

(assert (=> b!5092817 (= e!3176043 (inv!78019 (c!875337 c2!2)))))

(declare-fun b!5092818 () Bool)

(declare-fun e!3176044 () Bool)

(assert (=> b!5092818 (= e!3176043 e!3176044)))

(declare-fun res!2167309 () Bool)

(assert (=> b!5092818 (= res!2167309 (not (is-Leaf!25979 (c!875337 c2!2))))))

(assert (=> b!5092818 (=> res!2167309 e!3176044)))

(declare-fun b!5092819 () Bool)

(declare-fun inv!78020 (Conc!15649) Bool)

(assert (=> b!5092819 (= e!3176044 (inv!78020 (c!875337 c2!2)))))

(assert (= (and d!1648506 c!875341) b!5092817))

(assert (= (and d!1648506 (not c!875341)) b!5092818))

(assert (= (and b!5092818 (not res!2167309)) b!5092819))

(declare-fun m!6151046 () Bool)

(assert (=> b!5092817 m!6151046))

(declare-fun m!6151048 () Bool)

(assert (=> b!5092819 m!6151048))

(assert (=> b!5092785 d!1648506))

(declare-fun d!1648508 () Bool)

(declare-fun c!875342 () Bool)

(assert (=> d!1648508 (= c!875342 (is-Node!15649 (c!875337 c1!1)))))

(declare-fun e!3176045 () Bool)

(assert (=> d!1648508 (= (inv!78015 (c!875337 c1!1)) e!3176045)))

(declare-fun b!5092820 () Bool)

(assert (=> b!5092820 (= e!3176045 (inv!78019 (c!875337 c1!1)))))

(declare-fun b!5092821 () Bool)

(declare-fun e!3176046 () Bool)

(assert (=> b!5092821 (= e!3176045 e!3176046)))

(declare-fun res!2167310 () Bool)

(assert (=> b!5092821 (= res!2167310 (not (is-Leaf!25979 (c!875337 c1!1))))))

(assert (=> b!5092821 (=> res!2167310 e!3176046)))

(declare-fun b!5092822 () Bool)

(assert (=> b!5092822 (= e!3176046 (inv!78020 (c!875337 c1!1)))))

(assert (= (and d!1648508 c!875342) b!5092820))

(assert (= (and d!1648508 (not c!875342)) b!5092821))

(assert (= (and b!5092821 (not res!2167310)) b!5092822))

(declare-fun m!6151050 () Bool)

(assert (=> b!5092820 m!6151050))

(declare-fun m!6151052 () Bool)

(assert (=> b!5092822 m!6151052))

(assert (=> b!5092784 d!1648508))

(declare-fun d!1648510 () Bool)

(declare-fun list!19127 (Conc!15649) List!58659)

(assert (=> d!1648510 (= (list!19125 c1!1) (list!19127 (c!875337 c1!1)))))

(declare-fun bs!1191222 () Bool)

(assert (= bs!1191222 d!1648510))

(declare-fun m!6151054 () Bool)

(assert (=> bs!1191222 m!6151054))

(assert (=> start!536708 d!1648510))

(declare-fun d!1648512 () Bool)

(declare-fun isBalanced!4460 (Conc!15649) Bool)

(assert (=> d!1648512 (= (inv!78013 c1!1) (isBalanced!4460 (c!875337 c1!1)))))

(declare-fun bs!1191223 () Bool)

(assert (= bs!1191223 d!1648512))

(declare-fun m!6151056 () Bool)

(assert (=> bs!1191223 m!6151056))

(assert (=> start!536708 d!1648512))

(declare-fun d!1648514 () Bool)

(declare-fun res!2167313 () Bool)

(declare-fun e!3176049 () Bool)

(assert (=> d!1648514 (=> (not res!2167313) (not e!3176049))))

(declare-fun semiInverseModEq!3776 (Int Int) Bool)

(assert (=> d!1648514 (= res!2167313 (semiInverseModEq!3776 (toChars!11357 thiss!6968) (toValue!11498 thiss!6968)))))

(assert (=> d!1648514 (= (inv!78014 thiss!6968) e!3176049)))

(declare-fun b!5092825 () Bool)

(declare-fun equivClasses!3592 (Int Int) Bool)

(assert (=> b!5092825 (= e!3176049 (equivClasses!3592 (toChars!11357 thiss!6968) (toValue!11498 thiss!6968)))))

(assert (= (and d!1648514 res!2167313) b!5092825))

(declare-fun m!6151058 () Bool)

(assert (=> d!1648514 m!6151058))

(declare-fun m!6151060 () Bool)

(assert (=> b!5092825 m!6151060))

(assert (=> start!536708 d!1648514))

(declare-fun d!1648516 () Bool)

(assert (=> d!1648516 (= (inv!78013 c2!2) (isBalanced!4460 (c!875337 c2!2)))))

(declare-fun bs!1191224 () Bool)

(assert (= bs!1191224 d!1648516))

(declare-fun m!6151062 () Bool)

(assert (=> bs!1191224 m!6151062))

(assert (=> start!536708 d!1648516))

(declare-fun d!1648518 () Bool)

(assert (=> d!1648518 (= (list!19125 c2!2) (list!19127 (c!875337 c2!2)))))

(declare-fun bs!1191225 () Bool)

(assert (= bs!1191225 d!1648518))

(declare-fun m!6151064 () Bool)

(assert (=> bs!1191225 m!6151064))

(assert (=> start!536708 d!1648518))

(declare-fun d!1648520 () Bool)

(declare-fun choose!37294 (Int) Bool)

(assert (=> d!1648520 (= (Forall2!1302 lambda!249795) (choose!37294 lambda!249795))))

(declare-fun bs!1191226 () Bool)

(assert (= bs!1191226 d!1648520))

(declare-fun m!6151066 () Bool)

(assert (=> bs!1191226 m!6151066))

(assert (=> b!5092783 d!1648520))

(declare-fun e!3176054 () Bool)

(declare-fun b!5092834 () Bool)

(declare-fun tp!1419662 () Bool)

(declare-fun tp!1419664 () Bool)

(assert (=> b!5092834 (= e!3176054 (and (inv!78015 (left!42948 (c!875337 c2!2))) tp!1419664 (inv!78015 (right!43278 (c!875337 c2!2))) tp!1419662))))

(declare-fun b!5092836 () Bool)

(declare-fun e!3176055 () Bool)

(declare-fun tp!1419663 () Bool)

(assert (=> b!5092836 (= e!3176055 tp!1419663)))

(declare-fun b!5092835 () Bool)

(declare-fun inv!78021 (IArray!31359) Bool)

(assert (=> b!5092835 (= e!3176054 (and (inv!78021 (xs!19031 (c!875337 c2!2))) e!3176055))))

(assert (=> b!5092785 (= tp!1419641 (and (inv!78015 (c!875337 c2!2)) e!3176054))))

(assert (= (and b!5092785 (is-Node!15649 (c!875337 c2!2))) b!5092834))

(assert (= b!5092835 b!5092836))

(assert (= (and b!5092785 (is-Leaf!25979 (c!875337 c2!2))) b!5092835))

(declare-fun m!6151068 () Bool)

(assert (=> b!5092834 m!6151068))

(declare-fun m!6151070 () Bool)

(assert (=> b!5092834 m!6151070))

(declare-fun m!6151072 () Bool)

(assert (=> b!5092835 m!6151072))

(assert (=> b!5092785 m!6151024))

(declare-fun tp!1419667 () Bool)

(declare-fun tp!1419665 () Bool)

(declare-fun e!3176056 () Bool)

(declare-fun b!5092837 () Bool)

(assert (=> b!5092837 (= e!3176056 (and (inv!78015 (left!42948 (c!875337 c1!1))) tp!1419667 (inv!78015 (right!43278 (c!875337 c1!1))) tp!1419665))))

(declare-fun b!5092839 () Bool)

(declare-fun e!3176057 () Bool)

(declare-fun tp!1419666 () Bool)

(assert (=> b!5092839 (= e!3176057 tp!1419666)))

(declare-fun b!5092838 () Bool)

(assert (=> b!5092838 (= e!3176056 (and (inv!78021 (xs!19031 (c!875337 c1!1))) e!3176057))))

(assert (=> b!5092784 (= tp!1419640 (and (inv!78015 (c!875337 c1!1)) e!3176056))))

(assert (= (and b!5092784 (is-Node!15649 (c!875337 c1!1))) b!5092837))

(assert (= b!5092838 b!5092839))

(assert (= (and b!5092784 (is-Leaf!25979 (c!875337 c1!1))) b!5092838))

(declare-fun m!6151074 () Bool)

(assert (=> b!5092837 m!6151074))

(declare-fun m!6151076 () Bool)

(assert (=> b!5092837 m!6151076))

(declare-fun m!6151078 () Bool)

(assert (=> b!5092838 m!6151078))

(assert (=> b!5092784 m!6151028))

(push 1)

(assert (not b!5092834))

(assert (not b!5092822))

(assert (not b!5092839))

(assert (not d!1648514))

(assert (not b!5092819))

(assert (not b!5092784))

(assert (not b!5092837))

(assert (not b_next!134023))

(assert (not d!1648512))

(assert (not d!1648520))

(assert (not b!5092785))

(assert (not b_next!134021))

(assert (not d!1648518))

(assert (not d!1648516))

(assert (not b!5092825))

(assert (not b!5092820))

(assert (not b!5092836))

(assert (not b!5092835))

(assert b_and!350105)

(assert (not b!5092817))

(assert b_and!350103)

(assert (not b!5092838))

(assert (not d!1648510))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350105)

(assert b_and!350103)

(assert (not b_next!134021))

(assert (not b_next!134023))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5092881 () Bool)

(declare-fun e!3176082 () Bool)

(declare-fun e!3176081 () Bool)

(assert (=> b!5092881 (= e!3176082 e!3176081)))

(declare-fun res!2167335 () Bool)

(assert (=> b!5092881 (=> (not res!2167335) (not e!3176081))))

(declare-fun height!2177 (Conc!15649) Int)

(assert (=> b!5092881 (= res!2167335 (<= (- 1) (- (height!2177 (left!42948 (c!875337 c2!2))) (height!2177 (right!43278 (c!875337 c2!2))))))))

(declare-fun b!5092882 () Bool)

(declare-fun res!2167338 () Bool)

(assert (=> b!5092882 (=> (not res!2167338) (not e!3176081))))

(assert (=> b!5092882 (= res!2167338 (isBalanced!4460 (right!43278 (c!875337 c2!2))))))

(declare-fun b!5092883 () Bool)

(declare-fun res!2167340 () Bool)

(assert (=> b!5092883 (=> (not res!2167340) (not e!3176081))))

(assert (=> b!5092883 (= res!2167340 (isBalanced!4460 (left!42948 (c!875337 c2!2))))))

(declare-fun d!1648538 () Bool)

(declare-fun res!2167339 () Bool)

(assert (=> d!1648538 (=> res!2167339 e!3176082)))

(assert (=> d!1648538 (= res!2167339 (not (is-Node!15649 (c!875337 c2!2))))))

(assert (=> d!1648538 (= (isBalanced!4460 (c!875337 c2!2)) e!3176082)))

(declare-fun b!5092884 () Bool)

(declare-fun res!2167336 () Bool)

(assert (=> b!5092884 (=> (not res!2167336) (not e!3176081))))

(assert (=> b!5092884 (= res!2167336 (<= (- (height!2177 (left!42948 (c!875337 c2!2))) (height!2177 (right!43278 (c!875337 c2!2)))) 1))))

(declare-fun b!5092885 () Bool)

(declare-fun res!2167337 () Bool)

(assert (=> b!5092885 (=> (not res!2167337) (not e!3176081))))

(declare-fun isEmpty!31687 (Conc!15649) Bool)

(assert (=> b!5092885 (= res!2167337 (not (isEmpty!31687 (left!42948 (c!875337 c2!2)))))))

(declare-fun b!5092886 () Bool)

(assert (=> b!5092886 (= e!3176081 (not (isEmpty!31687 (right!43278 (c!875337 c2!2)))))))

(assert (= (and d!1648538 (not res!2167339)) b!5092881))

(assert (= (and b!5092881 res!2167335) b!5092884))

(assert (= (and b!5092884 res!2167336) b!5092883))

(assert (= (and b!5092883 res!2167340) b!5092882))

(assert (= (and b!5092882 res!2167338) b!5092885))

(assert (= (and b!5092885 res!2167337) b!5092886))

(declare-fun m!6151114 () Bool)

(assert (=> b!5092885 m!6151114))

(declare-fun m!6151116 () Bool)

(assert (=> b!5092886 m!6151116))

(declare-fun m!6151118 () Bool)

(assert (=> b!5092882 m!6151118))

(declare-fun m!6151120 () Bool)

(assert (=> b!5092884 m!6151120))

(declare-fun m!6151122 () Bool)

(assert (=> b!5092884 m!6151122))

(declare-fun m!6151124 () Bool)

(assert (=> b!5092883 m!6151124))

(assert (=> b!5092881 m!6151120))

(assert (=> b!5092881 m!6151122))

(assert (=> d!1648516 d!1648538))

(declare-fun d!1648540 () Bool)

(declare-fun size!39242 (List!58659) Int)

(assert (=> d!1648540 (= (inv!78021 (xs!19031 (c!875337 c2!2))) (<= (size!39242 (innerList!15737 (xs!19031 (c!875337 c2!2)))) 2147483647))))

(declare-fun bs!1191232 () Bool)

(assert (= bs!1191232 d!1648540))

(declare-fun m!6151126 () Bool)

(assert (=> bs!1191232 m!6151126))

(assert (=> b!5092835 d!1648540))

(declare-fun d!1648542 () Bool)

(assert (=> d!1648542 true))

(assert (=> d!1648542 true))

(declare-fun res!2167343 () Bool)

(assert (=> d!1648542 (= (choose!37294 lambda!249795) res!2167343)))

(assert (=> d!1648520 d!1648542))

(assert (=> b!5092785 d!1648506))

(declare-fun d!1648544 () Bool)

(declare-fun c!875347 () Bool)

(assert (=> d!1648544 (= c!875347 (is-Node!15649 (left!42948 (c!875337 c2!2))))))

(declare-fun e!3176083 () Bool)

(assert (=> d!1648544 (= (inv!78015 (left!42948 (c!875337 c2!2))) e!3176083)))

(declare-fun b!5092887 () Bool)

(assert (=> b!5092887 (= e!3176083 (inv!78019 (left!42948 (c!875337 c2!2))))))

(declare-fun b!5092888 () Bool)

(declare-fun e!3176084 () Bool)

(assert (=> b!5092888 (= e!3176083 e!3176084)))

(declare-fun res!2167344 () Bool)

(assert (=> b!5092888 (= res!2167344 (not (is-Leaf!25979 (left!42948 (c!875337 c2!2)))))))

(assert (=> b!5092888 (=> res!2167344 e!3176084)))

(declare-fun b!5092889 () Bool)

(assert (=> b!5092889 (= e!3176084 (inv!78020 (left!42948 (c!875337 c2!2))))))

(assert (= (and d!1648544 c!875347) b!5092887))

(assert (= (and d!1648544 (not c!875347)) b!5092888))

(assert (= (and b!5092888 (not res!2167344)) b!5092889))

(declare-fun m!6151128 () Bool)

(assert (=> b!5092887 m!6151128))

(declare-fun m!6151130 () Bool)

(assert (=> b!5092889 m!6151130))

(assert (=> b!5092834 d!1648544))

(declare-fun d!1648546 () Bool)

(declare-fun c!875348 () Bool)

(assert (=> d!1648546 (= c!875348 (is-Node!15649 (right!43278 (c!875337 c2!2))))))

(declare-fun e!3176085 () Bool)

(assert (=> d!1648546 (= (inv!78015 (right!43278 (c!875337 c2!2))) e!3176085)))

(declare-fun b!5092890 () Bool)

(assert (=> b!5092890 (= e!3176085 (inv!78019 (right!43278 (c!875337 c2!2))))))

(declare-fun b!5092891 () Bool)

(declare-fun e!3176086 () Bool)

(assert (=> b!5092891 (= e!3176085 e!3176086)))

(declare-fun res!2167345 () Bool)

(assert (=> b!5092891 (= res!2167345 (not (is-Leaf!25979 (right!43278 (c!875337 c2!2)))))))

(assert (=> b!5092891 (=> res!2167345 e!3176086)))

(declare-fun b!5092892 () Bool)

(assert (=> b!5092892 (= e!3176086 (inv!78020 (right!43278 (c!875337 c2!2))))))

(assert (= (and d!1648546 c!875348) b!5092890))

(assert (= (and d!1648546 (not c!875348)) b!5092891))

(assert (= (and b!5092891 (not res!2167345)) b!5092892))

(declare-fun m!6151132 () Bool)

(assert (=> b!5092890 m!6151132))

(declare-fun m!6151134 () Bool)

(assert (=> b!5092892 m!6151134))

(assert (=> b!5092834 d!1648546))

(assert (=> b!5092784 d!1648508))

(declare-fun d!1648548 () Bool)

(assert (=> d!1648548 true))

(declare-fun lambda!249801 () Int)

(declare-fun order!26731 () Int)

(declare-fun dynLambda!23550 (Int Int) Int)

(assert (=> d!1648548 (< (dynLambda!23546 order!26723 (toChars!11357 thiss!6968)) (dynLambda!23550 order!26731 lambda!249801))))

(assert (=> d!1648548 true))

(assert (=> d!1648548 (< (dynLambda!23544 order!26719 (toValue!11498 thiss!6968)) (dynLambda!23550 order!26731 lambda!249801))))

(declare-fun Forall!1831 (Int) Bool)

(assert (=> d!1648548 (= (semiInverseModEq!3776 (toChars!11357 thiss!6968) (toValue!11498 thiss!6968)) (Forall!1831 lambda!249801))))

(declare-fun bs!1191233 () Bool)

(assert (= bs!1191233 d!1648548))

(declare-fun m!6151136 () Bool)

(assert (=> bs!1191233 m!6151136))

(assert (=> d!1648514 d!1648548))

(declare-fun d!1648550 () Bool)

(declare-fun res!2167350 () Bool)

(declare-fun e!3176089 () Bool)

(assert (=> d!1648550 (=> (not res!2167350) (not e!3176089))))

(declare-fun list!19129 (IArray!31359) List!58659)

(assert (=> d!1648550 (= res!2167350 (<= (size!39242 (list!19129 (xs!19031 (c!875337 c1!1)))) 512))))

(assert (=> d!1648550 (= (inv!78020 (c!875337 c1!1)) e!3176089)))

(declare-fun b!5092901 () Bool)

(declare-fun res!2167351 () Bool)

(assert (=> b!5092901 (=> (not res!2167351) (not e!3176089))))

(assert (=> b!5092901 (= res!2167351 (= (csize!31529 (c!875337 c1!1)) (size!39242 (list!19129 (xs!19031 (c!875337 c1!1))))))))

(declare-fun b!5092902 () Bool)

(assert (=> b!5092902 (= e!3176089 (and (> (csize!31529 (c!875337 c1!1)) 0) (<= (csize!31529 (c!875337 c1!1)) 512)))))

(assert (= (and d!1648550 res!2167350) b!5092901))

(assert (= (and b!5092901 res!2167351) b!5092902))

(declare-fun m!6151138 () Bool)

(assert (=> d!1648550 m!6151138))

(assert (=> d!1648550 m!6151138))

(declare-fun m!6151140 () Bool)

(assert (=> d!1648550 m!6151140))

(assert (=> b!5092901 m!6151138))

(assert (=> b!5092901 m!6151138))

(assert (=> b!5092901 m!6151140))

(assert (=> b!5092822 d!1648550))

(declare-fun b!5092911 () Bool)

(declare-fun e!3176094 () List!58659)

(assert (=> b!5092911 (= e!3176094 Nil!58535)))

(declare-fun b!5092914 () Bool)

(declare-fun e!3176095 () List!58659)

(declare-fun ++!12847 (List!58659 List!58659) List!58659)

(assert (=> b!5092914 (= e!3176095 (++!12847 (list!19127 (left!42948 (c!875337 c2!2))) (list!19127 (right!43278 (c!875337 c2!2)))))))

(declare-fun b!5092913 () Bool)

(assert (=> b!5092913 (= e!3176095 (list!19129 (xs!19031 (c!875337 c2!2))))))

(declare-fun d!1648552 () Bool)

(declare-fun c!875353 () Bool)

(assert (=> d!1648552 (= c!875353 (is-Empty!15649 (c!875337 c2!2)))))

(assert (=> d!1648552 (= (list!19127 (c!875337 c2!2)) e!3176094)))

(declare-fun b!5092912 () Bool)

(assert (=> b!5092912 (= e!3176094 e!3176095)))

(declare-fun c!875354 () Bool)

(assert (=> b!5092912 (= c!875354 (is-Leaf!25979 (c!875337 c2!2)))))

(assert (= (and d!1648552 c!875353) b!5092911))

(assert (= (and d!1648552 (not c!875353)) b!5092912))

(assert (= (and b!5092912 c!875354) b!5092913))

(assert (= (and b!5092912 (not c!875354)) b!5092914))

(declare-fun m!6151142 () Bool)

(assert (=> b!5092914 m!6151142))

(declare-fun m!6151144 () Bool)

(assert (=> b!5092914 m!6151144))

(assert (=> b!5092914 m!6151142))

(assert (=> b!5092914 m!6151144))

(declare-fun m!6151146 () Bool)

(assert (=> b!5092914 m!6151146))

(declare-fun m!6151148 () Bool)

(assert (=> b!5092913 m!6151148))

(assert (=> d!1648518 d!1648552))

(declare-fun d!1648554 () Bool)

(declare-fun res!2167360 () Bool)

(declare-fun e!3176098 () Bool)

(assert (=> d!1648554 (=> (not res!2167360) (not e!3176098))))

(declare-fun size!39243 (Conc!15649) Int)

(assert (=> d!1648554 (= res!2167360 (= (csize!31528 (c!875337 c1!1)) (+ (size!39243 (left!42948 (c!875337 c1!1))) (size!39243 (right!43278 (c!875337 c1!1))))))))

(assert (=> d!1648554 (= (inv!78019 (c!875337 c1!1)) e!3176098)))

(declare-fun b!5092921 () Bool)

(declare-fun res!2167361 () Bool)

(assert (=> b!5092921 (=> (not res!2167361) (not e!3176098))))

(assert (=> b!5092921 (= res!2167361 (and (not (= (left!42948 (c!875337 c1!1)) Empty!15649)) (not (= (right!43278 (c!875337 c1!1)) Empty!15649))))))

(declare-fun b!5092922 () Bool)

(declare-fun res!2167362 () Bool)

(assert (=> b!5092922 (=> (not res!2167362) (not e!3176098))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5092922 (= res!2167362 (= (cheight!15860 (c!875337 c1!1)) (+ (max!0 (height!2177 (left!42948 (c!875337 c1!1))) (height!2177 (right!43278 (c!875337 c1!1)))) 1)))))

(declare-fun b!5092923 () Bool)

(assert (=> b!5092923 (= e!3176098 (<= 0 (cheight!15860 (c!875337 c1!1))))))

(assert (= (and d!1648554 res!2167360) b!5092921))

(assert (= (and b!5092921 res!2167361) b!5092922))

(assert (= (and b!5092922 res!2167362) b!5092923))

(declare-fun m!6151150 () Bool)

(assert (=> d!1648554 m!6151150))

(declare-fun m!6151152 () Bool)

(assert (=> d!1648554 m!6151152))

(declare-fun m!6151154 () Bool)

(assert (=> b!5092922 m!6151154))

(declare-fun m!6151156 () Bool)

(assert (=> b!5092922 m!6151156))

(assert (=> b!5092922 m!6151154))

(assert (=> b!5092922 m!6151156))

(declare-fun m!6151158 () Bool)

(assert (=> b!5092922 m!6151158))

(assert (=> b!5092820 d!1648554))

(declare-fun d!1648556 () Bool)

(declare-fun res!2167363 () Bool)

(declare-fun e!3176099 () Bool)

(assert (=> d!1648556 (=> (not res!2167363) (not e!3176099))))

(assert (=> d!1648556 (= res!2167363 (<= (size!39242 (list!19129 (xs!19031 (c!875337 c2!2)))) 512))))

(assert (=> d!1648556 (= (inv!78020 (c!875337 c2!2)) e!3176099)))

(declare-fun b!5092924 () Bool)

(declare-fun res!2167364 () Bool)

(assert (=> b!5092924 (=> (not res!2167364) (not e!3176099))))

(assert (=> b!5092924 (= res!2167364 (= (csize!31529 (c!875337 c2!2)) (size!39242 (list!19129 (xs!19031 (c!875337 c2!2))))))))

(declare-fun b!5092925 () Bool)

(assert (=> b!5092925 (= e!3176099 (and (> (csize!31529 (c!875337 c2!2)) 0) (<= (csize!31529 (c!875337 c2!2)) 512)))))

(assert (= (and d!1648556 res!2167363) b!5092924))

(assert (= (and b!5092924 res!2167364) b!5092925))

(assert (=> d!1648556 m!6151148))

(assert (=> d!1648556 m!6151148))

(declare-fun m!6151160 () Bool)

(assert (=> d!1648556 m!6151160))

(assert (=> b!5092924 m!6151148))

(assert (=> b!5092924 m!6151148))

(assert (=> b!5092924 m!6151160))

(assert (=> b!5092819 d!1648556))

(declare-fun bs!1191234 () Bool)

(declare-fun d!1648558 () Bool)

(assert (= bs!1191234 (and d!1648558 b!5092783)))

(declare-fun lambda!249804 () Int)

(assert (=> bs!1191234 (= lambda!249804 lambda!249795)))

(assert (=> d!1648558 true))

(assert (=> d!1648558 (< (dynLambda!23544 order!26719 (toValue!11498 thiss!6968)) (dynLambda!23545 order!26721 lambda!249804))))

(assert (=> d!1648558 (= (equivClasses!3592 (toChars!11357 thiss!6968) (toValue!11498 thiss!6968)) (Forall2!1302 lambda!249804))))

(declare-fun bs!1191235 () Bool)

(assert (= bs!1191235 d!1648558))

(declare-fun m!6151162 () Bool)

(assert (=> bs!1191235 m!6151162))

(assert (=> b!5092825 d!1648558))

(declare-fun b!5092930 () Bool)

(declare-fun e!3176102 () List!58659)

(assert (=> b!5092930 (= e!3176102 Nil!58535)))

(declare-fun b!5092933 () Bool)

(declare-fun e!3176103 () List!58659)

(assert (=> b!5092933 (= e!3176103 (++!12847 (list!19127 (left!42948 (c!875337 c1!1))) (list!19127 (right!43278 (c!875337 c1!1)))))))

(declare-fun b!5092932 () Bool)

(assert (=> b!5092932 (= e!3176103 (list!19129 (xs!19031 (c!875337 c1!1))))))

(declare-fun d!1648560 () Bool)

(declare-fun c!875355 () Bool)

(assert (=> d!1648560 (= c!875355 (is-Empty!15649 (c!875337 c1!1)))))

(assert (=> d!1648560 (= (list!19127 (c!875337 c1!1)) e!3176102)))

(declare-fun b!5092931 () Bool)

(assert (=> b!5092931 (= e!3176102 e!3176103)))

(declare-fun c!875356 () Bool)

(assert (=> b!5092931 (= c!875356 (is-Leaf!25979 (c!875337 c1!1)))))

(assert (= (and d!1648560 c!875355) b!5092930))

(assert (= (and d!1648560 (not c!875355)) b!5092931))

(assert (= (and b!5092931 c!875356) b!5092932))

(assert (= (and b!5092931 (not c!875356)) b!5092933))

(declare-fun m!6151164 () Bool)

(assert (=> b!5092933 m!6151164))

(declare-fun m!6151166 () Bool)

(assert (=> b!5092933 m!6151166))

(assert (=> b!5092933 m!6151164))

(assert (=> b!5092933 m!6151166))

(declare-fun m!6151168 () Bool)

(assert (=> b!5092933 m!6151168))

(assert (=> b!5092932 m!6151138))

(assert (=> d!1648510 d!1648560))

(declare-fun d!1648562 () Bool)

(assert (=> d!1648562 (= (inv!78021 (xs!19031 (c!875337 c1!1))) (<= (size!39242 (innerList!15737 (xs!19031 (c!875337 c1!1)))) 2147483647))))

(declare-fun bs!1191236 () Bool)

(assert (= bs!1191236 d!1648562))

(declare-fun m!6151170 () Bool)

(assert (=> bs!1191236 m!6151170))

(assert (=> b!5092838 d!1648562))

(declare-fun b!5092934 () Bool)

(declare-fun e!3176105 () Bool)

(declare-fun e!3176104 () Bool)

(assert (=> b!5092934 (= e!3176105 e!3176104)))

(declare-fun res!2167367 () Bool)

(assert (=> b!5092934 (=> (not res!2167367) (not e!3176104))))

(assert (=> b!5092934 (= res!2167367 (<= (- 1) (- (height!2177 (left!42948 (c!875337 c1!1))) (height!2177 (right!43278 (c!875337 c1!1))))))))

(declare-fun b!5092935 () Bool)

(declare-fun res!2167370 () Bool)

(assert (=> b!5092935 (=> (not res!2167370) (not e!3176104))))

(assert (=> b!5092935 (= res!2167370 (isBalanced!4460 (right!43278 (c!875337 c1!1))))))

(declare-fun b!5092936 () Bool)

(declare-fun res!2167372 () Bool)

(assert (=> b!5092936 (=> (not res!2167372) (not e!3176104))))

(assert (=> b!5092936 (= res!2167372 (isBalanced!4460 (left!42948 (c!875337 c1!1))))))

(declare-fun d!1648564 () Bool)

(declare-fun res!2167371 () Bool)

(assert (=> d!1648564 (=> res!2167371 e!3176105)))

(assert (=> d!1648564 (= res!2167371 (not (is-Node!15649 (c!875337 c1!1))))))

(assert (=> d!1648564 (= (isBalanced!4460 (c!875337 c1!1)) e!3176105)))

(declare-fun b!5092937 () Bool)

(declare-fun res!2167368 () Bool)

(assert (=> b!5092937 (=> (not res!2167368) (not e!3176104))))

(assert (=> b!5092937 (= res!2167368 (<= (- (height!2177 (left!42948 (c!875337 c1!1))) (height!2177 (right!43278 (c!875337 c1!1)))) 1))))

(declare-fun b!5092938 () Bool)

(declare-fun res!2167369 () Bool)

(assert (=> b!5092938 (=> (not res!2167369) (not e!3176104))))

(assert (=> b!5092938 (= res!2167369 (not (isEmpty!31687 (left!42948 (c!875337 c1!1)))))))

(declare-fun b!5092939 () Bool)

(assert (=> b!5092939 (= e!3176104 (not (isEmpty!31687 (right!43278 (c!875337 c1!1)))))))

(assert (= (and d!1648564 (not res!2167371)) b!5092934))

(assert (= (and b!5092934 res!2167367) b!5092937))

(assert (= (and b!5092937 res!2167368) b!5092936))

(assert (= (and b!5092936 res!2167372) b!5092935))

(assert (= (and b!5092935 res!2167370) b!5092938))

(assert (= (and b!5092938 res!2167369) b!5092939))

(declare-fun m!6151172 () Bool)

(assert (=> b!5092938 m!6151172))

(declare-fun m!6151174 () Bool)

(assert (=> b!5092939 m!6151174))

(declare-fun m!6151176 () Bool)

(assert (=> b!5092935 m!6151176))

(assert (=> b!5092937 m!6151154))

(assert (=> b!5092937 m!6151156))

(declare-fun m!6151178 () Bool)

(assert (=> b!5092936 m!6151178))

(assert (=> b!5092934 m!6151154))

(assert (=> b!5092934 m!6151156))

(assert (=> d!1648512 d!1648564))

(declare-fun d!1648566 () Bool)

(declare-fun c!875357 () Bool)

(assert (=> d!1648566 (= c!875357 (is-Node!15649 (left!42948 (c!875337 c1!1))))))

(declare-fun e!3176106 () Bool)

(assert (=> d!1648566 (= (inv!78015 (left!42948 (c!875337 c1!1))) e!3176106)))

(declare-fun b!5092940 () Bool)

(assert (=> b!5092940 (= e!3176106 (inv!78019 (left!42948 (c!875337 c1!1))))))

(declare-fun b!5092941 () Bool)

(declare-fun e!3176107 () Bool)

(assert (=> b!5092941 (= e!3176106 e!3176107)))

(declare-fun res!2167373 () Bool)

(assert (=> b!5092941 (= res!2167373 (not (is-Leaf!25979 (left!42948 (c!875337 c1!1)))))))

(assert (=> b!5092941 (=> res!2167373 e!3176107)))

(declare-fun b!5092942 () Bool)

(assert (=> b!5092942 (= e!3176107 (inv!78020 (left!42948 (c!875337 c1!1))))))

(assert (= (and d!1648566 c!875357) b!5092940))

(assert (= (and d!1648566 (not c!875357)) b!5092941))

(assert (= (and b!5092941 (not res!2167373)) b!5092942))

(declare-fun m!6151180 () Bool)

(assert (=> b!5092940 m!6151180))

(declare-fun m!6151182 () Bool)

(assert (=> b!5092942 m!6151182))

(assert (=> b!5092837 d!1648566))

(declare-fun d!1648568 () Bool)

(declare-fun c!875358 () Bool)

(assert (=> d!1648568 (= c!875358 (is-Node!15649 (right!43278 (c!875337 c1!1))))))

(declare-fun e!3176108 () Bool)

(assert (=> d!1648568 (= (inv!78015 (right!43278 (c!875337 c1!1))) e!3176108)))

(declare-fun b!5092943 () Bool)

(assert (=> b!5092943 (= e!3176108 (inv!78019 (right!43278 (c!875337 c1!1))))))

(declare-fun b!5092944 () Bool)

(declare-fun e!3176109 () Bool)

(assert (=> b!5092944 (= e!3176108 e!3176109)))

(declare-fun res!2167374 () Bool)

(assert (=> b!5092944 (= res!2167374 (not (is-Leaf!25979 (right!43278 (c!875337 c1!1)))))))

(assert (=> b!5092944 (=> res!2167374 e!3176109)))

(declare-fun b!5092945 () Bool)

(assert (=> b!5092945 (= e!3176109 (inv!78020 (right!43278 (c!875337 c1!1))))))

(assert (= (and d!1648568 c!875358) b!5092943))

(assert (= (and d!1648568 (not c!875358)) b!5092944))

(assert (= (and b!5092944 (not res!2167374)) b!5092945))

(declare-fun m!6151184 () Bool)

(assert (=> b!5092943 m!6151184))

(declare-fun m!6151186 () Bool)

(assert (=> b!5092945 m!6151186))

(assert (=> b!5092837 d!1648568))

(declare-fun d!1648570 () Bool)

(declare-fun res!2167375 () Bool)

(declare-fun e!3176110 () Bool)

(assert (=> d!1648570 (=> (not res!2167375) (not e!3176110))))

(assert (=> d!1648570 (= res!2167375 (= (csize!31528 (c!875337 c2!2)) (+ (size!39243 (left!42948 (c!875337 c2!2))) (size!39243 (right!43278 (c!875337 c2!2))))))))

(assert (=> d!1648570 (= (inv!78019 (c!875337 c2!2)) e!3176110)))

(declare-fun b!5092946 () Bool)

(declare-fun res!2167376 () Bool)

(assert (=> b!5092946 (=> (not res!2167376) (not e!3176110))))

(assert (=> b!5092946 (= res!2167376 (and (not (= (left!42948 (c!875337 c2!2)) Empty!15649)) (not (= (right!43278 (c!875337 c2!2)) Empty!15649))))))

(declare-fun b!5092947 () Bool)

(declare-fun res!2167377 () Bool)

(assert (=> b!5092947 (=> (not res!2167377) (not e!3176110))))

(assert (=> b!5092947 (= res!2167377 (= (cheight!15860 (c!875337 c2!2)) (+ (max!0 (height!2177 (left!42948 (c!875337 c2!2))) (height!2177 (right!43278 (c!875337 c2!2)))) 1)))))

(declare-fun b!5092948 () Bool)

(assert (=> b!5092948 (= e!3176110 (<= 0 (cheight!15860 (c!875337 c2!2))))))

(assert (= (and d!1648570 res!2167375) b!5092946))

(assert (= (and b!5092946 res!2167376) b!5092947))

(assert (= (and b!5092947 res!2167377) b!5092948))

(declare-fun m!6151188 () Bool)

(assert (=> d!1648570 m!6151188))

(declare-fun m!6151190 () Bool)

(assert (=> d!1648570 m!6151190))

(assert (=> b!5092947 m!6151120))

(assert (=> b!5092947 m!6151122))

(assert (=> b!5092947 m!6151120))

(assert (=> b!5092947 m!6151122))

(declare-fun m!6151192 () Bool)

(assert (=> b!5092947 m!6151192))

(assert (=> b!5092817 d!1648570))

(declare-fun b!5092953 () Bool)

(declare-fun e!3176113 () Bool)

(declare-fun tp_is_empty!37177 () Bool)

(declare-fun tp!1419682 () Bool)

(assert (=> b!5092953 (= e!3176113 (and tp_is_empty!37177 tp!1419682))))

(assert (=> b!5092836 (= tp!1419663 e!3176113)))

(assert (= (and b!5092836 (is-Cons!58535 (innerList!15737 (xs!19031 (c!875337 c2!2))))) b!5092953))

(declare-fun b!5092954 () Bool)

(declare-fun tp!1419685 () Bool)

(declare-fun tp!1419683 () Bool)

(declare-fun e!3176114 () Bool)

(assert (=> b!5092954 (= e!3176114 (and (inv!78015 (left!42948 (left!42948 (c!875337 c2!2)))) tp!1419685 (inv!78015 (right!43278 (left!42948 (c!875337 c2!2)))) tp!1419683))))

(declare-fun b!5092956 () Bool)

(declare-fun e!3176115 () Bool)

(declare-fun tp!1419684 () Bool)

(assert (=> b!5092956 (= e!3176115 tp!1419684)))

(declare-fun b!5092955 () Bool)

(assert (=> b!5092955 (= e!3176114 (and (inv!78021 (xs!19031 (left!42948 (c!875337 c2!2)))) e!3176115))))

(assert (=> b!5092834 (= tp!1419664 (and (inv!78015 (left!42948 (c!875337 c2!2))) e!3176114))))

(assert (= (and b!5092834 (is-Node!15649 (left!42948 (c!875337 c2!2)))) b!5092954))

(assert (= b!5092955 b!5092956))

(assert (= (and b!5092834 (is-Leaf!25979 (left!42948 (c!875337 c2!2)))) b!5092955))

(declare-fun m!6151194 () Bool)

(assert (=> b!5092954 m!6151194))

(declare-fun m!6151196 () Bool)

(assert (=> b!5092954 m!6151196))

(declare-fun m!6151198 () Bool)

(assert (=> b!5092955 m!6151198))

(assert (=> b!5092834 m!6151068))

(declare-fun e!3176116 () Bool)

(declare-fun tp!1419686 () Bool)

(declare-fun tp!1419688 () Bool)

(declare-fun b!5092957 () Bool)

(assert (=> b!5092957 (= e!3176116 (and (inv!78015 (left!42948 (right!43278 (c!875337 c2!2)))) tp!1419688 (inv!78015 (right!43278 (right!43278 (c!875337 c2!2)))) tp!1419686))))

(declare-fun b!5092959 () Bool)

(declare-fun e!3176117 () Bool)

(declare-fun tp!1419687 () Bool)

(assert (=> b!5092959 (= e!3176117 tp!1419687)))

(declare-fun b!5092958 () Bool)

(assert (=> b!5092958 (= e!3176116 (and (inv!78021 (xs!19031 (right!43278 (c!875337 c2!2)))) e!3176117))))

(assert (=> b!5092834 (= tp!1419662 (and (inv!78015 (right!43278 (c!875337 c2!2))) e!3176116))))

(assert (= (and b!5092834 (is-Node!15649 (right!43278 (c!875337 c2!2)))) b!5092957))

(assert (= b!5092958 b!5092959))

(assert (= (and b!5092834 (is-Leaf!25979 (right!43278 (c!875337 c2!2)))) b!5092958))

(declare-fun m!6151200 () Bool)

(assert (=> b!5092957 m!6151200))

(declare-fun m!6151202 () Bool)

(assert (=> b!5092957 m!6151202))

(declare-fun m!6151204 () Bool)

(assert (=> b!5092958 m!6151204))

(assert (=> b!5092834 m!6151070))

(declare-fun b!5092960 () Bool)

(declare-fun e!3176118 () Bool)

(declare-fun tp!1419689 () Bool)

(assert (=> b!5092960 (= e!3176118 (and tp_is_empty!37177 tp!1419689))))

(assert (=> b!5092839 (= tp!1419666 e!3176118)))

(assert (= (and b!5092839 (is-Cons!58535 (innerList!15737 (xs!19031 (c!875337 c1!1))))) b!5092960))

(declare-fun tp!1419690 () Bool)

(declare-fun tp!1419692 () Bool)

(declare-fun e!3176119 () Bool)

(declare-fun b!5092961 () Bool)

(assert (=> b!5092961 (= e!3176119 (and (inv!78015 (left!42948 (left!42948 (c!875337 c1!1)))) tp!1419692 (inv!78015 (right!43278 (left!42948 (c!875337 c1!1)))) tp!1419690))))

(declare-fun b!5092963 () Bool)

(declare-fun e!3176120 () Bool)

(declare-fun tp!1419691 () Bool)

(assert (=> b!5092963 (= e!3176120 tp!1419691)))

(declare-fun b!5092962 () Bool)

(assert (=> b!5092962 (= e!3176119 (and (inv!78021 (xs!19031 (left!42948 (c!875337 c1!1)))) e!3176120))))

(assert (=> b!5092837 (= tp!1419667 (and (inv!78015 (left!42948 (c!875337 c1!1))) e!3176119))))

(assert (= (and b!5092837 (is-Node!15649 (left!42948 (c!875337 c1!1)))) b!5092961))

(assert (= b!5092962 b!5092963))

(assert (= (and b!5092837 (is-Leaf!25979 (left!42948 (c!875337 c1!1)))) b!5092962))

(declare-fun m!6151206 () Bool)

(assert (=> b!5092961 m!6151206))

(declare-fun m!6151208 () Bool)

(assert (=> b!5092961 m!6151208))

(declare-fun m!6151210 () Bool)

(assert (=> b!5092962 m!6151210))

(assert (=> b!5092837 m!6151074))

(declare-fun tp!1419695 () Bool)

(declare-fun b!5092964 () Bool)

(declare-fun tp!1419693 () Bool)

(declare-fun e!3176121 () Bool)

(assert (=> b!5092964 (= e!3176121 (and (inv!78015 (left!42948 (right!43278 (c!875337 c1!1)))) tp!1419695 (inv!78015 (right!43278 (right!43278 (c!875337 c1!1)))) tp!1419693))))

(declare-fun b!5092966 () Bool)

(declare-fun e!3176122 () Bool)

(declare-fun tp!1419694 () Bool)

(assert (=> b!5092966 (= e!3176122 tp!1419694)))

(declare-fun b!5092965 () Bool)

(assert (=> b!5092965 (= e!3176121 (and (inv!78021 (xs!19031 (right!43278 (c!875337 c1!1)))) e!3176122))))

(assert (=> b!5092837 (= tp!1419665 (and (inv!78015 (right!43278 (c!875337 c1!1))) e!3176121))))

(assert (= (and b!5092837 (is-Node!15649 (right!43278 (c!875337 c1!1)))) b!5092964))

(assert (= b!5092965 b!5092966))

(assert (= (and b!5092837 (is-Leaf!25979 (right!43278 (c!875337 c1!1)))) b!5092965))

(declare-fun m!6151212 () Bool)

(assert (=> b!5092964 m!6151212))

(declare-fun m!6151214 () Bool)

(assert (=> b!5092964 m!6151214))

(declare-fun m!6151216 () Bool)

(assert (=> b!5092965 m!6151216))

(assert (=> b!5092837 m!6151076))

(push 1)

(assert (not b!5092961))

(assert (not b!5092963))

(assert (not b!5092883))

(assert (not b!5092964))

(assert (not b!5092957))

(assert (not b!5092914))

(assert (not b!5092954))

(assert (not b!5092962))

(assert (not d!1648540))

(assert (not b!5092943))

(assert (not d!1648562))

(assert (not b!5092959))

(assert (not b!5092892))

(assert (not b!5092913))

(assert (not b!5092834))

(assert (not b!5092956))

(assert (not d!1648548))

(assert (not b_next!134021))

(assert (not d!1648558))

(assert (not d!1648550))

(assert (not b!5092934))

(assert (not b!5092901))

(assert (not b!5092922))

(assert (not b!5092885))

(assert (not d!1648554))

(assert (not b!5092933))

(assert (not b!5092936))

(assert (not d!1648570))

(assert (not b!5092884))

(assert (not b!5092932))

(assert (not b!5092947))

(assert (not b!5092945))

(assert (not b!5092882))

(assert (not b!5092966))

(assert (not b!5092924))

(assert (not d!1648556))

(assert (not b!5092939))

(assert (not b!5092953))

(assert b_and!350105)

(assert (not b!5092955))

(assert b_and!350103)

(assert (not b!5092965))

(assert tp_is_empty!37177)

(assert (not b!5092887))

(assert (not b!5092942))

(assert (not b!5092890))

(assert (not b!5092938))

(assert (not b!5092935))

(assert (not b!5092960))

(assert (not b!5092937))

(assert (not b!5092837))

(assert (not b!5092958))

(assert (not b_next!134023))

(assert (not b!5092881))

(assert (not b!5092940))

(assert (not b!5092886))

(assert (not b!5092889))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350105)

(assert b_and!350103)

(assert (not b_next!134021))

(assert (not b_next!134023))

(check-sat)

(pop 1)

