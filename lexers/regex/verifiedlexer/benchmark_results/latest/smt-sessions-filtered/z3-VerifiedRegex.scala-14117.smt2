; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742646 () Bool)

(assert start!742646)

(declare-fun b!7841596 () Bool)

(declare-fun e!4636289 () Bool)

(declare-fun tp_is_empty!52413 () Bool)

(declare-fun tp!2320953 () Bool)

(assert (=> b!7841596 (= e!4636289 (and tp_is_empty!52413 tp!2320953))))

(declare-fun res!3118791 () Bool)

(declare-fun e!4636288 () Bool)

(assert (=> start!742646 (=> (not res!3118791) (not e!4636288))))

(declare-datatypes ((B!3981 0))(
  ( (B!3982 (val!31632 Int)) )
))
(declare-datatypes ((List!73866 0))(
  ( (Nil!73742) (Cons!73742 (h!80190 B!3981) (t!388601 List!73866)) )
))
(declare-fun s1!502 () List!73866)

(declare-fun l!3495 () List!73866)

(declare-fun isPrefix!6343 (List!73866 List!73866) Bool)

(assert (=> start!742646 (= res!3118791 (isPrefix!6343 s1!502 l!3495))))

(assert (=> start!742646 e!4636288))

(declare-fun e!4636290 () Bool)

(assert (=> start!742646 e!4636290))

(declare-fun e!4636291 () Bool)

(assert (=> start!742646 e!4636291))

(assert (=> start!742646 e!4636289))

(declare-fun b!7841597 () Bool)

(declare-fun res!3118792 () Bool)

(assert (=> b!7841597 (=> (not res!3118792) (not e!4636288))))

(declare-fun s2!461 () List!73866)

(assert (=> b!7841597 (= res!3118792 (isPrefix!6343 s2!461 l!3495))))

(declare-fun b!7841598 () Bool)

(declare-fun tp!2320954 () Bool)

(assert (=> b!7841598 (= e!4636291 (and tp_is_empty!52413 tp!2320954))))

(declare-fun b!7841599 () Bool)

(get-info :version)

(assert (=> b!7841599 (= e!4636288 (and ((_ is Cons!73742) s2!461) (= s1!502 Nil!73742)))))

(declare-fun b!7841600 () Bool)

(declare-fun res!3118790 () Bool)

(assert (=> b!7841600 (=> (not res!3118790) (not e!4636288))))

(declare-fun size!42791 (List!73866) Int)

(assert (=> b!7841600 (= res!3118790 (<= (size!42791 s2!461) (size!42791 s1!502)))))

(declare-fun b!7841601 () Bool)

(declare-fun tp!2320955 () Bool)

(assert (=> b!7841601 (= e!4636290 (and tp_is_empty!52413 tp!2320955))))

(assert (= (and start!742646 res!3118791) b!7841597))

(assert (= (and b!7841597 res!3118792) b!7841600))

(assert (= (and b!7841600 res!3118790) b!7841599))

(assert (= (and start!742646 ((_ is Cons!73742) s1!502)) b!7841601))

(assert (= (and start!742646 ((_ is Cons!73742) l!3495)) b!7841598))

(assert (= (and start!742646 ((_ is Cons!73742) s2!461)) b!7841596))

(declare-fun m!8253882 () Bool)

(assert (=> start!742646 m!8253882))

(declare-fun m!8253884 () Bool)

(assert (=> b!7841597 m!8253884))

(declare-fun m!8253886 () Bool)

(assert (=> b!7841600 m!8253886))

(declare-fun m!8253888 () Bool)

(assert (=> b!7841600 m!8253888))

(check-sat (not b!7841600) (not start!742646) (not b!7841598) (not b!7841597) (not b!7841601) (not b!7841596) tp_is_empty!52413)
(check-sat)
(get-model)

(declare-fun b!7841624 () Bool)

(declare-fun e!4636307 () Bool)

(declare-fun tail!15546 (List!73866) List!73866)

(assert (=> b!7841624 (= e!4636307 (isPrefix!6343 (tail!15546 s2!461) (tail!15546 l!3495)))))

(declare-fun b!7841622 () Bool)

(declare-fun e!4636309 () Bool)

(assert (=> b!7841622 (= e!4636309 e!4636307)))

(declare-fun res!3118813 () Bool)

(assert (=> b!7841622 (=> (not res!3118813) (not e!4636307))))

(assert (=> b!7841622 (= res!3118813 (not ((_ is Nil!73742) l!3495)))))

(declare-fun b!7841625 () Bool)

(declare-fun e!4636308 () Bool)

(assert (=> b!7841625 (= e!4636308 (>= (size!42791 l!3495) (size!42791 s2!461)))))

(declare-fun d!2352122 () Bool)

(assert (=> d!2352122 e!4636308))

(declare-fun res!3118815 () Bool)

(assert (=> d!2352122 (=> res!3118815 e!4636308)))

(declare-fun lt!2678536 () Bool)

(assert (=> d!2352122 (= res!3118815 (not lt!2678536))))

(assert (=> d!2352122 (= lt!2678536 e!4636309)))

(declare-fun res!3118816 () Bool)

(assert (=> d!2352122 (=> res!3118816 e!4636309)))

(assert (=> d!2352122 (= res!3118816 ((_ is Nil!73742) s2!461))))

(assert (=> d!2352122 (= (isPrefix!6343 s2!461 l!3495) lt!2678536)))

(declare-fun b!7841623 () Bool)

(declare-fun res!3118814 () Bool)

(assert (=> b!7841623 (=> (not res!3118814) (not e!4636307))))

(declare-fun head!16006 (List!73866) B!3981)

(assert (=> b!7841623 (= res!3118814 (= (head!16006 s2!461) (head!16006 l!3495)))))

(assert (= (and d!2352122 (not res!3118816)) b!7841622))

(assert (= (and b!7841622 res!3118813) b!7841623))

(assert (= (and b!7841623 res!3118814) b!7841624))

(assert (= (and d!2352122 (not res!3118815)) b!7841625))

(declare-fun m!8253902 () Bool)

(assert (=> b!7841624 m!8253902))

(declare-fun m!8253904 () Bool)

(assert (=> b!7841624 m!8253904))

(assert (=> b!7841624 m!8253902))

(assert (=> b!7841624 m!8253904))

(declare-fun m!8253906 () Bool)

(assert (=> b!7841624 m!8253906))

(declare-fun m!8253908 () Bool)

(assert (=> b!7841625 m!8253908))

(assert (=> b!7841625 m!8253886))

(declare-fun m!8253910 () Bool)

(assert (=> b!7841623 m!8253910))

(declare-fun m!8253912 () Bool)

(assert (=> b!7841623 m!8253912))

(assert (=> b!7841597 d!2352122))

(declare-fun b!7841632 () Bool)

(declare-fun e!4636313 () Bool)

(assert (=> b!7841632 (= e!4636313 (isPrefix!6343 (tail!15546 s1!502) (tail!15546 l!3495)))))

(declare-fun b!7841630 () Bool)

(declare-fun e!4636315 () Bool)

(assert (=> b!7841630 (= e!4636315 e!4636313)))

(declare-fun res!3118821 () Bool)

(assert (=> b!7841630 (=> (not res!3118821) (not e!4636313))))

(assert (=> b!7841630 (= res!3118821 (not ((_ is Nil!73742) l!3495)))))

(declare-fun b!7841633 () Bool)

(declare-fun e!4636314 () Bool)

(assert (=> b!7841633 (= e!4636314 (>= (size!42791 l!3495) (size!42791 s1!502)))))

(declare-fun d!2352128 () Bool)

(assert (=> d!2352128 e!4636314))

(declare-fun res!3118823 () Bool)

(assert (=> d!2352128 (=> res!3118823 e!4636314)))

(declare-fun lt!2678538 () Bool)

(assert (=> d!2352128 (= res!3118823 (not lt!2678538))))

(assert (=> d!2352128 (= lt!2678538 e!4636315)))

(declare-fun res!3118824 () Bool)

(assert (=> d!2352128 (=> res!3118824 e!4636315)))

(assert (=> d!2352128 (= res!3118824 ((_ is Nil!73742) s1!502))))

(assert (=> d!2352128 (= (isPrefix!6343 s1!502 l!3495) lt!2678538)))

(declare-fun b!7841631 () Bool)

(declare-fun res!3118822 () Bool)

(assert (=> b!7841631 (=> (not res!3118822) (not e!4636313))))

(assert (=> b!7841631 (= res!3118822 (= (head!16006 s1!502) (head!16006 l!3495)))))

(assert (= (and d!2352128 (not res!3118824)) b!7841630))

(assert (= (and b!7841630 res!3118821) b!7841631))

(assert (= (and b!7841631 res!3118822) b!7841632))

(assert (= (and d!2352128 (not res!3118823)) b!7841633))

(declare-fun m!8253920 () Bool)

(assert (=> b!7841632 m!8253920))

(assert (=> b!7841632 m!8253904))

(assert (=> b!7841632 m!8253920))

(assert (=> b!7841632 m!8253904))

(declare-fun m!8253922 () Bool)

(assert (=> b!7841632 m!8253922))

(assert (=> b!7841633 m!8253908))

(assert (=> b!7841633 m!8253888))

(declare-fun m!8253924 () Bool)

(assert (=> b!7841631 m!8253924))

(assert (=> b!7841631 m!8253912))

(assert (=> start!742646 d!2352128))

(declare-fun d!2352132 () Bool)

(declare-fun lt!2678545 () Int)

(assert (=> d!2352132 (>= lt!2678545 0)))

(declare-fun e!4636322 () Int)

(assert (=> d!2352132 (= lt!2678545 e!4636322)))

(declare-fun c!1441637 () Bool)

(assert (=> d!2352132 (= c!1441637 ((_ is Nil!73742) s2!461))))

(assert (=> d!2352132 (= (size!42791 s2!461) lt!2678545)))

(declare-fun b!7841646 () Bool)

(assert (=> b!7841646 (= e!4636322 0)))

(declare-fun b!7841647 () Bool)

(assert (=> b!7841647 (= e!4636322 (+ 1 (size!42791 (t!388601 s2!461))))))

(assert (= (and d!2352132 c!1441637) b!7841646))

(assert (= (and d!2352132 (not c!1441637)) b!7841647))

(declare-fun m!8253930 () Bool)

(assert (=> b!7841647 m!8253930))

(assert (=> b!7841600 d!2352132))

(declare-fun d!2352136 () Bool)

(declare-fun lt!2678546 () Int)

(assert (=> d!2352136 (>= lt!2678546 0)))

(declare-fun e!4636325 () Int)

(assert (=> d!2352136 (= lt!2678546 e!4636325)))

(declare-fun c!1441638 () Bool)

(assert (=> d!2352136 (= c!1441638 ((_ is Nil!73742) s1!502))))

(assert (=> d!2352136 (= (size!42791 s1!502) lt!2678546)))

(declare-fun b!7841652 () Bool)

(assert (=> b!7841652 (= e!4636325 0)))

(declare-fun b!7841653 () Bool)

(assert (=> b!7841653 (= e!4636325 (+ 1 (size!42791 (t!388601 s1!502))))))

(assert (= (and d!2352136 c!1441638) b!7841652))

(assert (= (and d!2352136 (not c!1441638)) b!7841653))

(declare-fun m!8253932 () Bool)

(assert (=> b!7841653 m!8253932))

(assert (=> b!7841600 d!2352136))

(declare-fun b!7841661 () Bool)

(declare-fun e!4636331 () Bool)

(declare-fun tp!2320963 () Bool)

(assert (=> b!7841661 (= e!4636331 (and tp_is_empty!52413 tp!2320963))))

(assert (=> b!7841598 (= tp!2320954 e!4636331)))

(assert (= (and b!7841598 ((_ is Cons!73742) (t!388601 l!3495))) b!7841661))

(declare-fun b!7841662 () Bool)

(declare-fun e!4636332 () Bool)

(declare-fun tp!2320964 () Bool)

(assert (=> b!7841662 (= e!4636332 (and tp_is_empty!52413 tp!2320964))))

(assert (=> b!7841596 (= tp!2320953 e!4636332)))

(assert (= (and b!7841596 ((_ is Cons!73742) (t!388601 s2!461))) b!7841662))

(declare-fun b!7841663 () Bool)

(declare-fun e!4636333 () Bool)

(declare-fun tp!2320965 () Bool)

(assert (=> b!7841663 (= e!4636333 (and tp_is_empty!52413 tp!2320965))))

(assert (=> b!7841601 (= tp!2320955 e!4636333)))

(assert (= (and b!7841601 ((_ is Cons!73742) (t!388601 s1!502))) b!7841663))

(check-sat (not b!7841631) (not b!7841632) (not b!7841653) (not b!7841662) (not b!7841623) (not b!7841661) (not b!7841633) (not b!7841625) (not b!7841663) tp_is_empty!52413 (not b!7841624) (not b!7841647))
(check-sat)
(get-model)

(declare-fun d!2352138 () Bool)

(declare-fun lt!2678547 () Int)

(assert (=> d!2352138 (>= lt!2678547 0)))

(declare-fun e!4636334 () Int)

(assert (=> d!2352138 (= lt!2678547 e!4636334)))

(declare-fun c!1441639 () Bool)

(assert (=> d!2352138 (= c!1441639 ((_ is Nil!73742) (t!388601 s2!461)))))

(assert (=> d!2352138 (= (size!42791 (t!388601 s2!461)) lt!2678547)))

(declare-fun b!7841664 () Bool)

(assert (=> b!7841664 (= e!4636334 0)))

(declare-fun b!7841665 () Bool)

(assert (=> b!7841665 (= e!4636334 (+ 1 (size!42791 (t!388601 (t!388601 s2!461)))))))

(assert (= (and d!2352138 c!1441639) b!7841664))

(assert (= (and d!2352138 (not c!1441639)) b!7841665))

(declare-fun m!8253934 () Bool)

(assert (=> b!7841665 m!8253934))

(assert (=> b!7841647 d!2352138))

(declare-fun d!2352140 () Bool)

(declare-fun lt!2678548 () Int)

(assert (=> d!2352140 (>= lt!2678548 0)))

(declare-fun e!4636335 () Int)

(assert (=> d!2352140 (= lt!2678548 e!4636335)))

(declare-fun c!1441640 () Bool)

(assert (=> d!2352140 (= c!1441640 ((_ is Nil!73742) l!3495))))

(assert (=> d!2352140 (= (size!42791 l!3495) lt!2678548)))

(declare-fun b!7841666 () Bool)

(assert (=> b!7841666 (= e!4636335 0)))

(declare-fun b!7841667 () Bool)

(assert (=> b!7841667 (= e!4636335 (+ 1 (size!42791 (t!388601 l!3495))))))

(assert (= (and d!2352140 c!1441640) b!7841666))

(assert (= (and d!2352140 (not c!1441640)) b!7841667))

(declare-fun m!8253936 () Bool)

(assert (=> b!7841667 m!8253936))

(assert (=> b!7841633 d!2352140))

(assert (=> b!7841633 d!2352136))

(declare-fun d!2352142 () Bool)

(declare-fun lt!2678549 () Int)

(assert (=> d!2352142 (>= lt!2678549 0)))

(declare-fun e!4636336 () Int)

(assert (=> d!2352142 (= lt!2678549 e!4636336)))

(declare-fun c!1441641 () Bool)

(assert (=> d!2352142 (= c!1441641 ((_ is Nil!73742) (t!388601 s1!502)))))

(assert (=> d!2352142 (= (size!42791 (t!388601 s1!502)) lt!2678549)))

(declare-fun b!7841668 () Bool)

(assert (=> b!7841668 (= e!4636336 0)))

(declare-fun b!7841669 () Bool)

(assert (=> b!7841669 (= e!4636336 (+ 1 (size!42791 (t!388601 (t!388601 s1!502)))))))

(assert (= (and d!2352142 c!1441641) b!7841668))

(assert (= (and d!2352142 (not c!1441641)) b!7841669))

(declare-fun m!8253938 () Bool)

(assert (=> b!7841669 m!8253938))

(assert (=> b!7841653 d!2352142))

(declare-fun d!2352144 () Bool)

(assert (=> d!2352144 (= (head!16006 s2!461) (h!80190 s2!461))))

(assert (=> b!7841623 d!2352144))

(declare-fun d!2352146 () Bool)

(assert (=> d!2352146 (= (head!16006 l!3495) (h!80190 l!3495))))

(assert (=> b!7841623 d!2352146))

(declare-fun b!7841672 () Bool)

(declare-fun e!4636337 () Bool)

(assert (=> b!7841672 (= e!4636337 (isPrefix!6343 (tail!15546 (tail!15546 s2!461)) (tail!15546 (tail!15546 l!3495))))))

(declare-fun b!7841670 () Bool)

(declare-fun e!4636339 () Bool)

(assert (=> b!7841670 (= e!4636339 e!4636337)))

(declare-fun res!3118825 () Bool)

(assert (=> b!7841670 (=> (not res!3118825) (not e!4636337))))

(assert (=> b!7841670 (= res!3118825 (not ((_ is Nil!73742) (tail!15546 l!3495))))))

(declare-fun b!7841673 () Bool)

(declare-fun e!4636338 () Bool)

(assert (=> b!7841673 (= e!4636338 (>= (size!42791 (tail!15546 l!3495)) (size!42791 (tail!15546 s2!461))))))

(declare-fun d!2352148 () Bool)

(assert (=> d!2352148 e!4636338))

(declare-fun res!3118827 () Bool)

(assert (=> d!2352148 (=> res!3118827 e!4636338)))

(declare-fun lt!2678550 () Bool)

(assert (=> d!2352148 (= res!3118827 (not lt!2678550))))

(assert (=> d!2352148 (= lt!2678550 e!4636339)))

(declare-fun res!3118828 () Bool)

(assert (=> d!2352148 (=> res!3118828 e!4636339)))

(assert (=> d!2352148 (= res!3118828 ((_ is Nil!73742) (tail!15546 s2!461)))))

(assert (=> d!2352148 (= (isPrefix!6343 (tail!15546 s2!461) (tail!15546 l!3495)) lt!2678550)))

(declare-fun b!7841671 () Bool)

(declare-fun res!3118826 () Bool)

(assert (=> b!7841671 (=> (not res!3118826) (not e!4636337))))

(assert (=> b!7841671 (= res!3118826 (= (head!16006 (tail!15546 s2!461)) (head!16006 (tail!15546 l!3495))))))

(assert (= (and d!2352148 (not res!3118828)) b!7841670))

(assert (= (and b!7841670 res!3118825) b!7841671))

(assert (= (and b!7841671 res!3118826) b!7841672))

(assert (= (and d!2352148 (not res!3118827)) b!7841673))

(assert (=> b!7841672 m!8253902))

(declare-fun m!8253940 () Bool)

(assert (=> b!7841672 m!8253940))

(assert (=> b!7841672 m!8253904))

(declare-fun m!8253942 () Bool)

(assert (=> b!7841672 m!8253942))

(assert (=> b!7841672 m!8253940))

(assert (=> b!7841672 m!8253942))

(declare-fun m!8253944 () Bool)

(assert (=> b!7841672 m!8253944))

(assert (=> b!7841673 m!8253904))

(declare-fun m!8253946 () Bool)

(assert (=> b!7841673 m!8253946))

(assert (=> b!7841673 m!8253902))

(declare-fun m!8253948 () Bool)

(assert (=> b!7841673 m!8253948))

(assert (=> b!7841671 m!8253902))

(declare-fun m!8253950 () Bool)

(assert (=> b!7841671 m!8253950))

(assert (=> b!7841671 m!8253904))

(declare-fun m!8253952 () Bool)

(assert (=> b!7841671 m!8253952))

(assert (=> b!7841624 d!2352148))

(declare-fun d!2352150 () Bool)

(assert (=> d!2352150 (= (tail!15546 s2!461) (t!388601 s2!461))))

(assert (=> b!7841624 d!2352150))

(declare-fun d!2352152 () Bool)

(assert (=> d!2352152 (= (tail!15546 l!3495) (t!388601 l!3495))))

(assert (=> b!7841624 d!2352152))

(declare-fun d!2352154 () Bool)

(assert (=> d!2352154 (= (head!16006 s1!502) (h!80190 s1!502))))

(assert (=> b!7841631 d!2352154))

(assert (=> b!7841631 d!2352146))

(declare-fun b!7841676 () Bool)

(declare-fun e!4636340 () Bool)

(assert (=> b!7841676 (= e!4636340 (isPrefix!6343 (tail!15546 (tail!15546 s1!502)) (tail!15546 (tail!15546 l!3495))))))

(declare-fun b!7841674 () Bool)

(declare-fun e!4636342 () Bool)

(assert (=> b!7841674 (= e!4636342 e!4636340)))

(declare-fun res!3118829 () Bool)

(assert (=> b!7841674 (=> (not res!3118829) (not e!4636340))))

(assert (=> b!7841674 (= res!3118829 (not ((_ is Nil!73742) (tail!15546 l!3495))))))

(declare-fun b!7841677 () Bool)

(declare-fun e!4636341 () Bool)

(assert (=> b!7841677 (= e!4636341 (>= (size!42791 (tail!15546 l!3495)) (size!42791 (tail!15546 s1!502))))))

(declare-fun d!2352156 () Bool)

(assert (=> d!2352156 e!4636341))

(declare-fun res!3118831 () Bool)

(assert (=> d!2352156 (=> res!3118831 e!4636341)))

(declare-fun lt!2678551 () Bool)

(assert (=> d!2352156 (= res!3118831 (not lt!2678551))))

(assert (=> d!2352156 (= lt!2678551 e!4636342)))

(declare-fun res!3118832 () Bool)

(assert (=> d!2352156 (=> res!3118832 e!4636342)))

(assert (=> d!2352156 (= res!3118832 ((_ is Nil!73742) (tail!15546 s1!502)))))

(assert (=> d!2352156 (= (isPrefix!6343 (tail!15546 s1!502) (tail!15546 l!3495)) lt!2678551)))

(declare-fun b!7841675 () Bool)

(declare-fun res!3118830 () Bool)

(assert (=> b!7841675 (=> (not res!3118830) (not e!4636340))))

(assert (=> b!7841675 (= res!3118830 (= (head!16006 (tail!15546 s1!502)) (head!16006 (tail!15546 l!3495))))))

(assert (= (and d!2352156 (not res!3118832)) b!7841674))

(assert (= (and b!7841674 res!3118829) b!7841675))

(assert (= (and b!7841675 res!3118830) b!7841676))

(assert (= (and d!2352156 (not res!3118831)) b!7841677))

(assert (=> b!7841676 m!8253920))

(declare-fun m!8253954 () Bool)

(assert (=> b!7841676 m!8253954))

(assert (=> b!7841676 m!8253904))

(assert (=> b!7841676 m!8253942))

(assert (=> b!7841676 m!8253954))

(assert (=> b!7841676 m!8253942))

(declare-fun m!8253956 () Bool)

(assert (=> b!7841676 m!8253956))

(assert (=> b!7841677 m!8253904))

(assert (=> b!7841677 m!8253946))

(assert (=> b!7841677 m!8253920))

(declare-fun m!8253958 () Bool)

(assert (=> b!7841677 m!8253958))

(assert (=> b!7841675 m!8253920))

(declare-fun m!8253960 () Bool)

(assert (=> b!7841675 m!8253960))

(assert (=> b!7841675 m!8253904))

(assert (=> b!7841675 m!8253952))

(assert (=> b!7841632 d!2352156))

(declare-fun d!2352158 () Bool)

(assert (=> d!2352158 (= (tail!15546 s1!502) (t!388601 s1!502))))

(assert (=> b!7841632 d!2352158))

(assert (=> b!7841632 d!2352152))

(assert (=> b!7841625 d!2352140))

(assert (=> b!7841625 d!2352132))

(declare-fun b!7841678 () Bool)

(declare-fun e!4636343 () Bool)

(declare-fun tp!2320966 () Bool)

(assert (=> b!7841678 (= e!4636343 (and tp_is_empty!52413 tp!2320966))))

(assert (=> b!7841661 (= tp!2320963 e!4636343)))

(assert (= (and b!7841661 ((_ is Cons!73742) (t!388601 (t!388601 l!3495)))) b!7841678))

(declare-fun b!7841679 () Bool)

(declare-fun e!4636344 () Bool)

(declare-fun tp!2320967 () Bool)

(assert (=> b!7841679 (= e!4636344 (and tp_is_empty!52413 tp!2320967))))

(assert (=> b!7841663 (= tp!2320965 e!4636344)))

(assert (= (and b!7841663 ((_ is Cons!73742) (t!388601 (t!388601 s1!502)))) b!7841679))

(declare-fun b!7841680 () Bool)

(declare-fun e!4636345 () Bool)

(declare-fun tp!2320968 () Bool)

(assert (=> b!7841680 (= e!4636345 (and tp_is_empty!52413 tp!2320968))))

(assert (=> b!7841662 (= tp!2320964 e!4636345)))

(assert (= (and b!7841662 ((_ is Cons!73742) (t!388601 (t!388601 s2!461)))) b!7841680))

(check-sat (not b!7841665) (not b!7841676) (not b!7841679) (not b!7841673) (not b!7841671) tp_is_empty!52413 (not b!7841667) (not b!7841680) (not b!7841678) (not b!7841672) (not b!7841677) (not b!7841669) (not b!7841675))
(check-sat)
