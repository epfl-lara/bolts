; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277102 () Bool)

(assert start!277102)

(declare-fun b!2845976 () Bool)

(declare-fun e!1803187 () Bool)

(declare-fun tp!912650 () Bool)

(declare-fun tp!912655 () Bool)

(assert (=> b!2845976 (= e!1803187 (and tp!912650 tp!912655))))

(declare-fun b!2845977 () Bool)

(declare-fun tp!912654 () Bool)

(assert (=> b!2845977 (= e!1803187 tp!912654)))

(declare-fun b!2845978 () Bool)

(declare-fun tp_is_empty!14715 () Bool)

(assert (=> b!2845978 (= e!1803187 tp_is_empty!14715)))

(declare-fun b!2845979 () Bool)

(declare-fun e!1803189 () Bool)

(declare-datatypes ((C!17134 0))(
  ( (C!17135 (val!10601 Int)) )
))
(declare-datatypes ((List!33889 0))(
  ( (Nil!33765) (Cons!33765 (h!39185 C!17134) (t!232912 List!33889)) )
))
(declare-datatypes ((IArray!20947 0))(
  ( (IArray!20948 (innerList!10531 List!33889)) )
))
(declare-datatypes ((Conc!10471 0))(
  ( (Node!10471 (left!25426 Conc!10471) (right!25756 Conc!10471) (csize!21172 Int) (cheight!10682 Int)) (Leaf!15933 (xs!13589 IArray!20947) (csize!21173 Int)) (Empty!10471) )
))
(declare-datatypes ((BalanceConc!20580 0))(
  ( (BalanceConc!20581 (c!459257 Conc!10471)) )
))
(declare-fun prefix!1325 () BalanceConc!20580)

(declare-fun tp!912653 () Bool)

(declare-fun inv!45782 (Conc!10471) Bool)

(assert (=> b!2845979 (= e!1803189 (and (inv!45782 (c!459257 prefix!1325)) tp!912653))))

(declare-fun b!2845980 () Bool)

(declare-fun e!1803188 () Bool)

(declare-datatypes ((Regex!8476 0))(
  ( (ElementMatch!8476 (c!459258 C!17134)) (Concat!13779 (regOne!17464 Regex!8476) (regTwo!17464 Regex!8476)) (EmptyExpr!8476) (Star!8476 (reg!8805 Regex!8476)) (EmptyLang!8476) (Union!8476 (regOne!17465 Regex!8476) (regTwo!17465 Regex!8476)) )
))
(declare-fun r!13354 () Regex!8476)

(declare-datatypes ((List!33890 0))(
  ( (Nil!33766) (Cons!33766 (h!39186 Regex!8476) (t!232913 List!33890)) )
))
(declare-datatypes ((Context!5008 0))(
  ( (Context!5009 (exprs!3004 List!33890)) )
))
(declare-datatypes ((List!33891 0))(
  ( (Nil!33767) (Cons!33767 (h!39187 Context!5008) (t!232914 List!33891)) )
))
(declare-fun lt!1012646 () List!33891)

(declare-fun unfocusZipper!177 (List!33891) Regex!8476)

(assert (=> b!2845980 (= e!1803188 (not (= r!13354 (unfocusZipper!177 lt!1012646))))))

(declare-fun lt!1012645 () List!33889)

(declare-fun list!12578 (BalanceConc!20580) List!33889)

(assert (=> b!2845980 (= lt!1012645 (list!12578 prefix!1325))))

(declare-fun lt!1012648 () (Set Context!5008))

(declare-fun toList!1912 ((Set Context!5008)) List!33891)

(assert (=> b!2845980 (= lt!1012646 (toList!1912 lt!1012648))))

(declare-fun prefixMatchZipper!237 ((Set Context!5008) List!33889) Bool)

(declare-fun dropList!1022 (BalanceConc!20580 Int) List!33889)

(declare-fun prefixMatchZipperSequence!758 ((Set Context!5008) BalanceConc!20580 Int) Bool)

(assert (=> b!2845980 (= (prefixMatchZipper!237 lt!1012648 (dropList!1022 prefix!1325 0)) (prefixMatchZipperSequence!758 lt!1012648 prefix!1325 0))))

(declare-datatypes ((Unit!47545 0))(
  ( (Unit!47546) )
))
(declare-fun lt!1012647 () Unit!47545)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!237 ((Set Context!5008) BalanceConc!20580 Int) Unit!47545)

(assert (=> b!2845980 (= lt!1012647 (lemmaprefixMatchZipperSequenceEquivalent!237 lt!1012648 prefix!1325 0))))

(declare-fun focus!307 (Regex!8476) (Set Context!5008))

(assert (=> b!2845980 (= lt!1012648 (focus!307 r!13354))))

(declare-fun res!1183582 () Bool)

(assert (=> start!277102 (=> (not res!1183582) (not e!1803188))))

(declare-fun validRegex!3368 (Regex!8476) Bool)

(assert (=> start!277102 (= res!1183582 (validRegex!3368 r!13354))))

(assert (=> start!277102 e!1803188))

(assert (=> start!277102 e!1803187))

(declare-fun inv!45783 (BalanceConc!20580) Bool)

(assert (=> start!277102 (and (inv!45783 prefix!1325) e!1803189)))

(declare-fun b!2845981 () Bool)

(declare-fun tp!912652 () Bool)

(declare-fun tp!912651 () Bool)

(assert (=> b!2845981 (= e!1803187 (and tp!912652 tp!912651))))

(assert (= (and start!277102 res!1183582) b!2845980))

(assert (= (and start!277102 (is-ElementMatch!8476 r!13354)) b!2845978))

(assert (= (and start!277102 (is-Concat!13779 r!13354)) b!2845981))

(assert (= (and start!277102 (is-Star!8476 r!13354)) b!2845977))

(assert (= (and start!277102 (is-Union!8476 r!13354)) b!2845976))

(assert (= start!277102 b!2845979))

(declare-fun m!3273849 () Bool)

(assert (=> b!2845979 m!3273849))

(declare-fun m!3273851 () Bool)

(assert (=> b!2845980 m!3273851))

(declare-fun m!3273853 () Bool)

(assert (=> b!2845980 m!3273853))

(declare-fun m!3273855 () Bool)

(assert (=> b!2845980 m!3273855))

(declare-fun m!3273857 () Bool)

(assert (=> b!2845980 m!3273857))

(declare-fun m!3273859 () Bool)

(assert (=> b!2845980 m!3273859))

(declare-fun m!3273861 () Bool)

(assert (=> b!2845980 m!3273861))

(declare-fun m!3273863 () Bool)

(assert (=> b!2845980 m!3273863))

(declare-fun m!3273865 () Bool)

(assert (=> b!2845980 m!3273865))

(assert (=> b!2845980 m!3273855))

(declare-fun m!3273867 () Bool)

(assert (=> start!277102 m!3273867))

(declare-fun m!3273869 () Bool)

(assert (=> start!277102 m!3273869))

(push 1)

(assert (not start!277102))

(assert (not b!2845976))

(assert (not b!2845979))

(assert (not b!2845980))

(assert (not b!2845977))

(assert tp_is_empty!14715)

(assert (not b!2845981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!459268 () Bool)

(declare-fun bm!183524 () Bool)

(declare-fun c!459269 () Bool)

(declare-fun call!183529 () Bool)

(assert (=> bm!183524 (= call!183529 (validRegex!3368 (ite c!459269 (reg!8805 r!13354) (ite c!459268 (regOne!17465 r!13354) (regTwo!17464 r!13354)))))))

(declare-fun b!2846027 () Bool)

(declare-fun e!1803219 () Bool)

(declare-fun e!1803222 () Bool)

(assert (=> b!2846027 (= e!1803219 e!1803222)))

(declare-fun res!1183600 () Bool)

(assert (=> b!2846027 (=> (not res!1183600) (not e!1803222))))

(declare-fun call!183531 () Bool)

(assert (=> b!2846027 (= res!1183600 call!183531)))

(declare-fun bm!183525 () Bool)

(declare-fun call!183530 () Bool)

(assert (=> bm!183525 (= call!183530 call!183529)))

(declare-fun b!2846028 () Bool)

(assert (=> b!2846028 (= e!1803222 call!183530)))

(declare-fun b!2846029 () Bool)

(declare-fun res!1183601 () Bool)

(declare-fun e!1803220 () Bool)

(assert (=> b!2846029 (=> (not res!1183601) (not e!1803220))))

(assert (=> b!2846029 (= res!1183601 call!183530)))

(declare-fun e!1803223 () Bool)

(assert (=> b!2846029 (= e!1803223 e!1803220)))

(declare-fun d!825244 () Bool)

(declare-fun res!1183603 () Bool)

(declare-fun e!1803224 () Bool)

(assert (=> d!825244 (=> res!1183603 e!1803224)))

(assert (=> d!825244 (= res!1183603 (is-ElementMatch!8476 r!13354))))

(assert (=> d!825244 (= (validRegex!3368 r!13354) e!1803224)))

(declare-fun b!2846030 () Bool)

(declare-fun res!1183602 () Bool)

(assert (=> b!2846030 (=> res!1183602 e!1803219)))

(assert (=> b!2846030 (= res!1183602 (not (is-Concat!13779 r!13354)))))

(assert (=> b!2846030 (= e!1803223 e!1803219)))

(declare-fun bm!183526 () Bool)

(assert (=> bm!183526 (= call!183531 (validRegex!3368 (ite c!459268 (regTwo!17465 r!13354) (regOne!17464 r!13354))))))

(declare-fun b!2846031 () Bool)

(declare-fun e!1803225 () Bool)

(assert (=> b!2846031 (= e!1803224 e!1803225)))

(assert (=> b!2846031 (= c!459269 (is-Star!8476 r!13354))))

(declare-fun b!2846032 () Bool)

(declare-fun e!1803221 () Bool)

(assert (=> b!2846032 (= e!1803221 call!183529)))

(declare-fun b!2846033 () Bool)

(assert (=> b!2846033 (= e!1803225 e!1803221)))

(declare-fun res!1183599 () Bool)

(declare-fun nullable!2627 (Regex!8476) Bool)

(assert (=> b!2846033 (= res!1183599 (not (nullable!2627 (reg!8805 r!13354))))))

(assert (=> b!2846033 (=> (not res!1183599) (not e!1803221))))

(declare-fun b!2846034 () Bool)

(assert (=> b!2846034 (= e!1803220 call!183531)))

(declare-fun b!2846035 () Bool)

(assert (=> b!2846035 (= e!1803225 e!1803223)))

(assert (=> b!2846035 (= c!459268 (is-Union!8476 r!13354))))

(assert (= (and d!825244 (not res!1183603)) b!2846031))

(assert (= (and b!2846031 c!459269) b!2846033))

(assert (= (and b!2846031 (not c!459269)) b!2846035))

(assert (= (and b!2846033 res!1183599) b!2846032))

(assert (= (and b!2846035 c!459268) b!2846029))

(assert (= (and b!2846035 (not c!459268)) b!2846030))

(assert (= (and b!2846029 res!1183601) b!2846034))

(assert (= (and b!2846030 (not res!1183602)) b!2846027))

(assert (= (and b!2846027 res!1183600) b!2846028))

(assert (= (or b!2846029 b!2846028) bm!183525))

(assert (= (or b!2846034 b!2846027) bm!183526))

(assert (= (or b!2846032 bm!183525) bm!183524))

(declare-fun m!3273897 () Bool)

(assert (=> bm!183524 m!3273897))

(declare-fun m!3273899 () Bool)

(assert (=> bm!183526 m!3273899))

(declare-fun m!3273901 () Bool)

(assert (=> b!2846033 m!3273901))

(assert (=> start!277102 d!825244))

(declare-fun d!825250 () Bool)

(declare-fun isBalanced!3157 (Conc!10471) Bool)

(assert (=> d!825250 (= (inv!45783 prefix!1325) (isBalanced!3157 (c!459257 prefix!1325)))))

(declare-fun bs!519621 () Bool)

(assert (= bs!519621 d!825250))

(declare-fun m!3273903 () Bool)

(assert (=> bs!519621 m!3273903))

(assert (=> start!277102 d!825250))

(declare-fun d!825252 () Bool)

(declare-fun drop!1811 (List!33889 Int) List!33889)

(declare-fun list!12580 (Conc!10471) List!33889)

(assert (=> d!825252 (= (dropList!1022 prefix!1325 0) (drop!1811 (list!12580 (c!459257 prefix!1325)) 0))))

(declare-fun bs!519622 () Bool)

(assert (= bs!519622 d!825252))

(declare-fun m!3273905 () Bool)

(assert (=> bs!519622 m!3273905))

(assert (=> bs!519622 m!3273905))

(declare-fun m!3273907 () Bool)

(assert (=> bs!519622 m!3273907))

(assert (=> b!2845980 d!825252))

(declare-fun d!825254 () Bool)

(declare-fun e!1803249 () Bool)

(assert (=> d!825254 e!1803249))

(declare-fun res!1183622 () Bool)

(assert (=> d!825254 (=> (not res!1183622) (not e!1803249))))

(assert (=> d!825254 (= res!1183622 (validRegex!3368 r!13354))))

(assert (=> d!825254 (= (focus!307 r!13354) (set.insert (Context!5009 (Cons!33766 r!13354 Nil!33766)) (as set.empty (Set Context!5008))))))

(declare-fun b!2846065 () Bool)

(assert (=> b!2846065 (= e!1803249 (= (unfocusZipper!177 (toList!1912 (set.insert (Context!5009 (Cons!33766 r!13354 Nil!33766)) (as set.empty (Set Context!5008))))) r!13354))))

(assert (= (and d!825254 res!1183622) b!2846065))

(assert (=> d!825254 m!3273867))

(declare-fun m!3273915 () Bool)

(assert (=> d!825254 m!3273915))

(assert (=> b!2846065 m!3273915))

(assert (=> b!2846065 m!3273915))

(declare-fun m!3273919 () Bool)

(assert (=> b!2846065 m!3273919))

(assert (=> b!2846065 m!3273919))

(declare-fun m!3273921 () Bool)

(assert (=> b!2846065 m!3273921))

(assert (=> b!2845980 d!825254))

(declare-fun d!825260 () Bool)

(declare-fun e!1803252 () Bool)

(assert (=> d!825260 e!1803252))

(declare-fun res!1183625 () Bool)

(assert (=> d!825260 (=> (not res!1183625) (not e!1803252))))

(declare-fun lt!1012663 () List!33891)

(declare-fun noDuplicate!554 (List!33891) Bool)

(assert (=> d!825260 (= res!1183625 (noDuplicate!554 lt!1012663))))

(declare-fun choose!16752 ((Set Context!5008)) List!33891)

(assert (=> d!825260 (= lt!1012663 (choose!16752 lt!1012648))))

(assert (=> d!825260 (= (toList!1912 lt!1012648) lt!1012663)))

(declare-fun b!2846068 () Bool)

(declare-fun content!4651 (List!33891) (Set Context!5008))

(assert (=> b!2846068 (= e!1803252 (= (content!4651 lt!1012663) lt!1012648))))

(assert (= (and d!825260 res!1183625) b!2846068))

(declare-fun m!3273923 () Bool)

(assert (=> d!825260 m!3273923))

(declare-fun m!3273925 () Bool)

(assert (=> d!825260 m!3273925))

(declare-fun m!3273927 () Bool)

(assert (=> b!2846068 m!3273927))

(assert (=> b!2845980 d!825260))

(declare-fun d!825262 () Bool)

(assert (=> d!825262 (= (prefixMatchZipper!237 lt!1012648 (dropList!1022 prefix!1325 0)) (prefixMatchZipperSequence!758 lt!1012648 prefix!1325 0))))

(declare-fun lt!1012666 () Unit!47545)

(declare-fun choose!16753 ((Set Context!5008) BalanceConc!20580 Int) Unit!47545)

(assert (=> d!825262 (= lt!1012666 (choose!16753 lt!1012648 prefix!1325 0))))

(declare-fun e!1803258 () Bool)

(assert (=> d!825262 e!1803258))

(declare-fun res!1183632 () Bool)

(assert (=> d!825262 (=> (not res!1183632) (not e!1803258))))

(assert (=> d!825262 (= res!1183632 (>= 0 0))))

(assert (=> d!825262 (= (lemmaprefixMatchZipperSequenceEquivalent!237 lt!1012648 prefix!1325 0) lt!1012666)))

(declare-fun b!2846074 () Bool)

(declare-fun size!26219 (BalanceConc!20580) Int)

(assert (=> b!2846074 (= e!1803258 (<= 0 (size!26219 prefix!1325)))))

(assert (= (and d!825262 res!1183632) b!2846074))

(assert (=> d!825262 m!3273855))

(assert (=> d!825262 m!3273855))

(assert (=> d!825262 m!3273857))

(assert (=> d!825262 m!3273853))

(declare-fun m!3273935 () Bool)

(assert (=> d!825262 m!3273935))

(declare-fun m!3273937 () Bool)

(assert (=> b!2846074 m!3273937))

(assert (=> b!2845980 d!825262))

(declare-fun d!825266 () Bool)

(declare-fun c!459278 () Bool)

(assert (=> d!825266 (= c!459278 (= 0 (size!26219 prefix!1325)))))

(declare-fun e!1803261 () Bool)

(assert (=> d!825266 (= (prefixMatchZipperSequence!758 lt!1012648 prefix!1325 0) e!1803261)))

(declare-fun b!2846079 () Bool)

(declare-fun lostCauseZipper!521 ((Set Context!5008)) Bool)

(assert (=> b!2846079 (= e!1803261 (not (lostCauseZipper!521 lt!1012648)))))

(declare-fun b!2846080 () Bool)

(declare-fun derivationStepZipper!407 ((Set Context!5008) C!17134) (Set Context!5008))

(declare-fun apply!7864 (BalanceConc!20580 Int) C!17134)

(assert (=> b!2846080 (= e!1803261 (prefixMatchZipperSequence!758 (derivationStepZipper!407 lt!1012648 (apply!7864 prefix!1325 0)) prefix!1325 (+ 0 1)))))

(assert (= (and d!825266 c!459278) b!2846079))

(assert (= (and d!825266 (not c!459278)) b!2846080))

(assert (=> d!825266 m!3273937))

(declare-fun m!3273949 () Bool)

(assert (=> b!2846079 m!3273949))

(declare-fun m!3273951 () Bool)

(assert (=> b!2846080 m!3273951))

(assert (=> b!2846080 m!3273951))

(declare-fun m!3273953 () Bool)

(assert (=> b!2846080 m!3273953))

(assert (=> b!2846080 m!3273953))

(declare-fun m!3273955 () Bool)

(assert (=> b!2846080 m!3273955))

(assert (=> b!2845980 d!825266))

(declare-fun d!825272 () Bool)

(assert (=> d!825272 (= (list!12578 prefix!1325) (list!12580 (c!459257 prefix!1325)))))

(declare-fun bs!519626 () Bool)

(assert (= bs!519626 d!825272))

(assert (=> bs!519626 m!3273905))

(assert (=> b!2845980 d!825272))

(declare-fun d!825274 () Bool)

(declare-fun c!459281 () Bool)

(declare-fun isEmpty!18572 (List!33889) Bool)

(assert (=> d!825274 (= c!459281 (isEmpty!18572 (dropList!1022 prefix!1325 0)))))

(declare-fun e!1803264 () Bool)

(assert (=> d!825274 (= (prefixMatchZipper!237 lt!1012648 (dropList!1022 prefix!1325 0)) e!1803264)))

(declare-fun b!2846085 () Bool)

(assert (=> b!2846085 (= e!1803264 (not (lostCauseZipper!521 lt!1012648)))))

(declare-fun b!2846086 () Bool)

(declare-fun head!6257 (List!33889) C!17134)

(declare-fun tail!4482 (List!33889) List!33889)

(assert (=> b!2846086 (= e!1803264 (prefixMatchZipper!237 (derivationStepZipper!407 lt!1012648 (head!6257 (dropList!1022 prefix!1325 0))) (tail!4482 (dropList!1022 prefix!1325 0))))))

(assert (= (and d!825274 c!459281) b!2846085))

(assert (= (and d!825274 (not c!459281)) b!2846086))

(assert (=> d!825274 m!3273855))

(declare-fun m!3273957 () Bool)

(assert (=> d!825274 m!3273957))

(assert (=> b!2846085 m!3273949))

(assert (=> b!2846086 m!3273855))

(declare-fun m!3273959 () Bool)

(assert (=> b!2846086 m!3273959))

(assert (=> b!2846086 m!3273959))

(declare-fun m!3273961 () Bool)

(assert (=> b!2846086 m!3273961))

(assert (=> b!2846086 m!3273855))

(declare-fun m!3273963 () Bool)

(assert (=> b!2846086 m!3273963))

(assert (=> b!2846086 m!3273961))

(assert (=> b!2846086 m!3273963))

(declare-fun m!3273965 () Bool)

(assert (=> b!2846086 m!3273965))

(assert (=> b!2845980 d!825274))

(declare-fun d!825276 () Bool)

(declare-fun lt!1012672 () Regex!8476)

(assert (=> d!825276 (validRegex!3368 lt!1012672)))

(declare-fun generalisedUnion!544 (List!33890) Regex!8476)

(declare-fun unfocusZipperList!57 (List!33891) List!33890)

(assert (=> d!825276 (= lt!1012672 (generalisedUnion!544 (unfocusZipperList!57 lt!1012646)))))

(assert (=> d!825276 (= (unfocusZipper!177 lt!1012646) lt!1012672)))

(declare-fun bs!519627 () Bool)

(assert (= bs!519627 d!825276))

(declare-fun m!3273967 () Bool)

(assert (=> bs!519627 m!3273967))

(declare-fun m!3273969 () Bool)

(assert (=> bs!519627 m!3273969))

(assert (=> bs!519627 m!3273969))

(declare-fun m!3273971 () Bool)

(assert (=> bs!519627 m!3273971))

(assert (=> b!2845980 d!825276))

(declare-fun d!825278 () Bool)

(declare-fun c!459284 () Bool)

(assert (=> d!825278 (= c!459284 (is-Node!10471 (c!459257 prefix!1325)))))

(declare-fun e!1803269 () Bool)

(assert (=> d!825278 (= (inv!45782 (c!459257 prefix!1325)) e!1803269)))

(declare-fun b!2846093 () Bool)

(declare-fun inv!45786 (Conc!10471) Bool)

(assert (=> b!2846093 (= e!1803269 (inv!45786 (c!459257 prefix!1325)))))

(declare-fun b!2846094 () Bool)

(declare-fun e!1803270 () Bool)

(assert (=> b!2846094 (= e!1803269 e!1803270)))

(declare-fun res!1183635 () Bool)

(assert (=> b!2846094 (= res!1183635 (not (is-Leaf!15933 (c!459257 prefix!1325))))))

(assert (=> b!2846094 (=> res!1183635 e!1803270)))

(declare-fun b!2846095 () Bool)

(declare-fun inv!45787 (Conc!10471) Bool)

(assert (=> b!2846095 (= e!1803270 (inv!45787 (c!459257 prefix!1325)))))

(assert (= (and d!825278 c!459284) b!2846093))

(assert (= (and d!825278 (not c!459284)) b!2846094))

(assert (= (and b!2846094 (not res!1183635)) b!2846095))

(declare-fun m!3273973 () Bool)

(assert (=> b!2846093 m!3273973))

(declare-fun m!3273975 () Bool)

(assert (=> b!2846095 m!3273975))

(assert (=> b!2845979 d!825278))

(declare-fun b!2846113 () Bool)

(declare-fun e!1803275 () Bool)

(declare-fun tp!912686 () Bool)

(declare-fun tp!912685 () Bool)

(assert (=> b!2846113 (= e!1803275 (and tp!912686 tp!912685))))

(declare-fun b!2846112 () Bool)

(declare-fun tp!912688 () Bool)

(assert (=> b!2846112 (= e!1803275 tp!912688)))

(assert (=> b!2845977 (= tp!912654 e!1803275)))

(declare-fun b!2846111 () Bool)

(declare-fun tp!912684 () Bool)

(declare-fun tp!912687 () Bool)

(assert (=> b!2846111 (= e!1803275 (and tp!912684 tp!912687))))

(declare-fun b!2846110 () Bool)

(assert (=> b!2846110 (= e!1803275 tp_is_empty!14715)))

(assert (= (and b!2845977 (is-ElementMatch!8476 (reg!8805 r!13354))) b!2846110))

(assert (= (and b!2845977 (is-Concat!13779 (reg!8805 r!13354))) b!2846111))

(assert (= (and b!2845977 (is-Star!8476 (reg!8805 r!13354))) b!2846112))

(assert (= (and b!2845977 (is-Union!8476 (reg!8805 r!13354))) b!2846113))

(declare-fun b!2846117 () Bool)

(declare-fun e!1803276 () Bool)

(declare-fun tp!912691 () Bool)

(declare-fun tp!912690 () Bool)

(assert (=> b!2846117 (= e!1803276 (and tp!912691 tp!912690))))

(declare-fun b!2846116 () Bool)

(declare-fun tp!912693 () Bool)

(assert (=> b!2846116 (= e!1803276 tp!912693)))

(assert (=> b!2845976 (= tp!912650 e!1803276)))

(declare-fun b!2846115 () Bool)

(declare-fun tp!912689 () Bool)

(declare-fun tp!912692 () Bool)

(assert (=> b!2846115 (= e!1803276 (and tp!912689 tp!912692))))

(declare-fun b!2846114 () Bool)

(assert (=> b!2846114 (= e!1803276 tp_is_empty!14715)))

(assert (= (and b!2845976 (is-ElementMatch!8476 (regOne!17465 r!13354))) b!2846114))

(assert (= (and b!2845976 (is-Concat!13779 (regOne!17465 r!13354))) b!2846115))

(assert (= (and b!2845976 (is-Star!8476 (regOne!17465 r!13354))) b!2846116))

(assert (= (and b!2845976 (is-Union!8476 (regOne!17465 r!13354))) b!2846117))

(declare-fun b!2846121 () Bool)

(declare-fun e!1803277 () Bool)

(declare-fun tp!912696 () Bool)

(declare-fun tp!912695 () Bool)

(assert (=> b!2846121 (= e!1803277 (and tp!912696 tp!912695))))

(declare-fun b!2846120 () Bool)

(declare-fun tp!912698 () Bool)

(assert (=> b!2846120 (= e!1803277 tp!912698)))

(assert (=> b!2845976 (= tp!912655 e!1803277)))

(declare-fun b!2846119 () Bool)

(declare-fun tp!912694 () Bool)

(declare-fun tp!912697 () Bool)

(assert (=> b!2846119 (= e!1803277 (and tp!912694 tp!912697))))

(declare-fun b!2846118 () Bool)

(assert (=> b!2846118 (= e!1803277 tp_is_empty!14715)))

(assert (= (and b!2845976 (is-ElementMatch!8476 (regTwo!17465 r!13354))) b!2846118))

(assert (= (and b!2845976 (is-Concat!13779 (regTwo!17465 r!13354))) b!2846119))

(assert (= (and b!2845976 (is-Star!8476 (regTwo!17465 r!13354))) b!2846120))

(assert (= (and b!2845976 (is-Union!8476 (regTwo!17465 r!13354))) b!2846121))

(declare-fun b!2846125 () Bool)

(declare-fun e!1803278 () Bool)

(declare-fun tp!912701 () Bool)

(declare-fun tp!912700 () Bool)

(assert (=> b!2846125 (= e!1803278 (and tp!912701 tp!912700))))

(declare-fun b!2846124 () Bool)

(declare-fun tp!912703 () Bool)

(assert (=> b!2846124 (= e!1803278 tp!912703)))

(assert (=> b!2845981 (= tp!912652 e!1803278)))

(declare-fun b!2846123 () Bool)

(declare-fun tp!912699 () Bool)

(declare-fun tp!912702 () Bool)

(assert (=> b!2846123 (= e!1803278 (and tp!912699 tp!912702))))

(declare-fun b!2846122 () Bool)

(assert (=> b!2846122 (= e!1803278 tp_is_empty!14715)))

(assert (= (and b!2845981 (is-ElementMatch!8476 (regOne!17464 r!13354))) b!2846122))

(assert (= (and b!2845981 (is-Concat!13779 (regOne!17464 r!13354))) b!2846123))

(assert (= (and b!2845981 (is-Star!8476 (regOne!17464 r!13354))) b!2846124))

(assert (= (and b!2845981 (is-Union!8476 (regOne!17464 r!13354))) b!2846125))

(declare-fun b!2846129 () Bool)

(declare-fun e!1803279 () Bool)

(declare-fun tp!912706 () Bool)

(declare-fun tp!912705 () Bool)

(assert (=> b!2846129 (= e!1803279 (and tp!912706 tp!912705))))

(declare-fun b!2846128 () Bool)

(declare-fun tp!912708 () Bool)

(assert (=> b!2846128 (= e!1803279 tp!912708)))

(assert (=> b!2845981 (= tp!912651 e!1803279)))

(declare-fun b!2846127 () Bool)

(declare-fun tp!912704 () Bool)

(declare-fun tp!912707 () Bool)

(assert (=> b!2846127 (= e!1803279 (and tp!912704 tp!912707))))

(declare-fun b!2846126 () Bool)

(assert (=> b!2846126 (= e!1803279 tp_is_empty!14715)))

(assert (= (and b!2845981 (is-ElementMatch!8476 (regTwo!17464 r!13354))) b!2846126))

(assert (= (and b!2845981 (is-Concat!13779 (regTwo!17464 r!13354))) b!2846127))

(assert (= (and b!2845981 (is-Star!8476 (regTwo!17464 r!13354))) b!2846128))

(assert (= (and b!2845981 (is-Union!8476 (regTwo!17464 r!13354))) b!2846129))

(declare-fun e!1803285 () Bool)

(declare-fun tp!912717 () Bool)

(declare-fun tp!912716 () Bool)

(declare-fun b!2846140 () Bool)

(assert (=> b!2846140 (= e!1803285 (and (inv!45782 (left!25426 (c!459257 prefix!1325))) tp!912717 (inv!45782 (right!25756 (c!459257 prefix!1325))) tp!912716))))

(declare-fun b!2846142 () Bool)

(declare-fun e!1803286 () Bool)

(declare-fun tp!912715 () Bool)

(assert (=> b!2846142 (= e!1803286 tp!912715)))

(declare-fun b!2846141 () Bool)

(declare-fun inv!45788 (IArray!20947) Bool)

(assert (=> b!2846141 (= e!1803285 (and (inv!45788 (xs!13589 (c!459257 prefix!1325))) e!1803286))))

(assert (=> b!2845979 (= tp!912653 (and (inv!45782 (c!459257 prefix!1325)) e!1803285))))

(assert (= (and b!2845979 (is-Node!10471 (c!459257 prefix!1325))) b!2846140))

(assert (= b!2846141 b!2846142))

(assert (= (and b!2845979 (is-Leaf!15933 (c!459257 prefix!1325))) b!2846141))

(declare-fun m!3273987 () Bool)

(assert (=> b!2846140 m!3273987))

(declare-fun m!3273989 () Bool)

(assert (=> b!2846140 m!3273989))

(declare-fun m!3273991 () Bool)

(assert (=> b!2846141 m!3273991))

(assert (=> b!2845979 m!3273849))

(push 1)

(assert (not b!2846113))

(assert (not b!2845979))

(assert (not b!2846129))

(assert (not b!2846033))

(assert (not b!2846127))

(assert (not b!2846115))

(assert (not b!2846074))

(assert (not d!825260))

(assert (not d!825252))

(assert (not b!2846141))

(assert (not b!2846125))

(assert tp_is_empty!14715)

(assert (not bm!183524))

(assert (not b!2846112))

(assert (not b!2846085))

(assert (not d!825274))

(assert (not b!2846124))

(assert (not d!825254))

(assert (not d!825276))

(assert (not b!2846123))

(assert (not b!2846116))

(assert (not b!2846095))

(assert (not d!825266))

(assert (not b!2846121))

(assert (not b!2846119))

(assert (not b!2846086))

(assert (not b!2846128))

(assert (not b!2846140))

(assert (not b!2846068))

(assert (not b!2846117))

(assert (not d!825262))

(assert (not b!2846120))

(assert (not b!2846079))

(assert (not b!2846093))

(assert (not b!2846080))

(assert (not b!2846142))

(assert (not bm!183526))

(assert (not b!2846065))

(assert (not b!2846111))

(assert (not d!825250))

(assert (not d!825272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

