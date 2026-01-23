; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!548886 () Bool)

(assert start!548886)

(declare-fun setIsEmpty!32547 () Bool)

(declare-fun setRes!32548 () Bool)

(assert (=> setIsEmpty!32547 setRes!32548))

(declare-datatypes ((C!29622 0))(
  ( (C!29623 (val!24513 Int)) )
))
(declare-fun c!11077 () C!29622)

(declare-datatypes ((Regex!14676 0))(
  ( (ElementMatch!14676 (c!893287 C!29622)) (Concat!23521 (regOne!29864 Regex!14676) (regTwo!29864 Regex!14676)) (EmptyExpr!14676) (Star!14676 (reg!15005 Regex!14676)) (EmptyLang!14676) (Union!14676 (regOne!29865 Regex!14676) (regTwo!29865 Regex!14676)) )
))
(declare-datatypes ((List!60331 0))(
  ( (Nil!60207) (Cons!60207 (h!66655 Regex!14676) (t!373484 List!60331)) )
))
(declare-datatypes ((Context!8120 0))(
  ( (Context!8121 (exprs!4560 List!60331)) )
))
(declare-fun baseZ!87 () (Set Context!8120))

(declare-datatypes ((List!60332 0))(
  ( (Nil!60208) (Cons!60208 (h!66656 C!29622) (t!373485 List!60332)) )
))
(declare-fun input!5952 () List!60332)

(declare-fun e!3228965 () Bool)

(declare-fun z!4835 () (Set Context!8120))

(declare-fun b!5182588 () Bool)

(declare-fun derivationZipper!299 ((Set Context!8120) List!60332) (Set Context!8120))

(declare-fun ++!13180 (List!60332 List!60332) List!60332)

(declare-fun derivationStepZipper!1022 ((Set Context!8120) C!29622) (Set Context!8120))

(assert (=> b!5182588 (= e!3228965 (not (= (derivationZipper!299 baseZ!87 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208))) (derivationStepZipper!1022 z!4835 c!11077))))))

(declare-fun b!5182589 () Bool)

(declare-fun res!2201510 () Bool)

(assert (=> b!5182589 (=> (not res!2201510) (not e!3228965))))

(assert (=> b!5182589 (= res!2201510 (not (is-Cons!60208 input!5952)))))

(declare-fun tp!1453613 () Bool)

(declare-fun setNonEmpty!32547 () Bool)

(declare-fun setElem!32547 () Context!8120)

(declare-fun e!3228964 () Bool)

(declare-fun setRes!32547 () Bool)

(declare-fun inv!79938 (Context!8120) Bool)

(assert (=> setNonEmpty!32547 (= setRes!32547 (and tp!1453613 (inv!79938 setElem!32547) e!3228964))))

(declare-fun setRest!32547 () (Set Context!8120))

(assert (=> setNonEmpty!32547 (= baseZ!87 (set.union (set.insert setElem!32547 (as set.empty (Set Context!8120))) setRest!32547))))

(declare-fun e!3228963 () Bool)

(declare-fun setElem!32548 () Context!8120)

(declare-fun setNonEmpty!32548 () Bool)

(declare-fun tp!1453612 () Bool)

(assert (=> setNonEmpty!32548 (= setRes!32548 (and tp!1453612 (inv!79938 setElem!32548) e!3228963))))

(declare-fun setRest!32548 () (Set Context!8120))

(assert (=> setNonEmpty!32548 (= z!4835 (set.union (set.insert setElem!32548 (as set.empty (Set Context!8120))) setRest!32548))))

(declare-fun b!5182590 () Bool)

(declare-fun tp!1453615 () Bool)

(assert (=> b!5182590 (= e!3228964 tp!1453615)))

(declare-fun b!5182591 () Bool)

(declare-fun e!3228966 () Bool)

(declare-fun tp_is_empty!38605 () Bool)

(declare-fun tp!1453614 () Bool)

(assert (=> b!5182591 (= e!3228966 (and tp_is_empty!38605 tp!1453614))))

(declare-fun b!5182592 () Bool)

(declare-fun tp!1453616 () Bool)

(assert (=> b!5182592 (= e!3228963 tp!1453616)))

(declare-fun setIsEmpty!32548 () Bool)

(assert (=> setIsEmpty!32548 setRes!32547))

(declare-fun res!2201509 () Bool)

(assert (=> start!548886 (=> (not res!2201509) (not e!3228965))))

(assert (=> start!548886 (= res!2201509 (= (derivationZipper!299 baseZ!87 input!5952) z!4835))))

(assert (=> start!548886 e!3228965))

(declare-fun condSetEmpty!32548 () Bool)

(assert (=> start!548886 (= condSetEmpty!32548 (= baseZ!87 (as set.empty (Set Context!8120))))))

(assert (=> start!548886 setRes!32547))

(assert (=> start!548886 e!3228966))

(declare-fun condSetEmpty!32547 () Bool)

(assert (=> start!548886 (= condSetEmpty!32547 (= z!4835 (as set.empty (Set Context!8120))))))

(assert (=> start!548886 setRes!32548))

(assert (=> start!548886 tp_is_empty!38605))

(assert (= (and start!548886 res!2201509) b!5182589))

(assert (= (and b!5182589 res!2201510) b!5182588))

(assert (= (and start!548886 condSetEmpty!32548) setIsEmpty!32548))

(assert (= (and start!548886 (not condSetEmpty!32548)) setNonEmpty!32547))

(assert (= setNonEmpty!32547 b!5182590))

(assert (= (and start!548886 (is-Cons!60208 input!5952)) b!5182591))

(assert (= (and start!548886 condSetEmpty!32547) setIsEmpty!32547))

(assert (= (and start!548886 (not condSetEmpty!32547)) setNonEmpty!32548))

(assert (= setNonEmpty!32548 b!5182592))

(declare-fun m!6242764 () Bool)

(assert (=> b!5182588 m!6242764))

(assert (=> b!5182588 m!6242764))

(declare-fun m!6242766 () Bool)

(assert (=> b!5182588 m!6242766))

(declare-fun m!6242768 () Bool)

(assert (=> b!5182588 m!6242768))

(declare-fun m!6242770 () Bool)

(assert (=> setNonEmpty!32547 m!6242770))

(declare-fun m!6242772 () Bool)

(assert (=> setNonEmpty!32548 m!6242772))

(declare-fun m!6242774 () Bool)

(assert (=> start!548886 m!6242774))

(push 1)

(assert tp_is_empty!38605)

(assert (not b!5182588))

(assert (not setNonEmpty!32547))

(assert (not b!5182591))

(assert (not b!5182590))

(assert (not start!548886))

(assert (not b!5182592))

(assert (not setNonEmpty!32548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1675894 () Bool)

(declare-fun lambda!259116 () Int)

(declare-fun forall!14189 (List!60331 Int) Bool)

(assert (=> d!1675894 (= (inv!79938 setElem!32548) (forall!14189 (exprs!4560 setElem!32548) lambda!259116))))

(declare-fun bs!1208050 () Bool)

(assert (= bs!1208050 d!1675894))

(declare-fun m!6242806 () Bool)

(assert (=> bs!1208050 m!6242806))

(assert (=> setNonEmpty!32548 d!1675894))

(declare-fun bs!1208051 () Bool)

(declare-fun d!1675902 () Bool)

(assert (= bs!1208051 (and d!1675902 d!1675894)))

(declare-fun lambda!259117 () Int)

(assert (=> bs!1208051 (= lambda!259117 lambda!259116)))

(assert (=> d!1675902 (= (inv!79938 setElem!32547) (forall!14189 (exprs!4560 setElem!32547) lambda!259117))))

(declare-fun bs!1208052 () Bool)

(assert (= bs!1208052 d!1675902))

(declare-fun m!6242808 () Bool)

(assert (=> bs!1208052 m!6242808))

(assert (=> setNonEmpty!32547 d!1675902))

(declare-fun d!1675904 () Bool)

(declare-fun c!893299 () Bool)

(assert (=> d!1675904 (= c!893299 (is-Cons!60208 input!5952))))

(declare-fun e!3228990 () (Set Context!8120))

(assert (=> d!1675904 (= (derivationZipper!299 baseZ!87 input!5952) e!3228990)))

(declare-fun b!5182630 () Bool)

(assert (=> b!5182630 (= e!3228990 (derivationZipper!299 (derivationStepZipper!1022 baseZ!87 (h!66656 input!5952)) (t!373485 input!5952)))))

(declare-fun b!5182631 () Bool)

(assert (=> b!5182631 (= e!3228990 baseZ!87)))

(assert (= (and d!1675904 c!893299) b!5182630))

(assert (= (and d!1675904 (not c!893299)) b!5182631))

(declare-fun m!6242810 () Bool)

(assert (=> b!5182630 m!6242810))

(assert (=> b!5182630 m!6242810))

(declare-fun m!6242812 () Bool)

(assert (=> b!5182630 m!6242812))

(assert (=> start!548886 d!1675904))

(declare-fun d!1675906 () Bool)

(declare-fun c!893300 () Bool)

(assert (=> d!1675906 (= c!893300 (is-Cons!60208 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208))))))

(declare-fun e!3228991 () (Set Context!8120))

(assert (=> d!1675906 (= (derivationZipper!299 baseZ!87 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208))) e!3228991)))

(declare-fun b!5182632 () Bool)

(assert (=> b!5182632 (= e!3228991 (derivationZipper!299 (derivationStepZipper!1022 baseZ!87 (h!66656 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208)))) (t!373485 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208)))))))

(declare-fun b!5182633 () Bool)

(assert (=> b!5182633 (= e!3228991 baseZ!87)))

(assert (= (and d!1675906 c!893300) b!5182632))

(assert (= (and d!1675906 (not c!893300)) b!5182633))

(declare-fun m!6242814 () Bool)

(assert (=> b!5182632 m!6242814))

(assert (=> b!5182632 m!6242814))

(declare-fun m!6242816 () Bool)

(assert (=> b!5182632 m!6242816))

(assert (=> b!5182588 d!1675906))

(declare-fun e!3228997 () Bool)

(declare-fun lt!2136086 () List!60332)

(declare-fun b!5182645 () Bool)

(assert (=> b!5182645 (= e!3228997 (or (not (= (Cons!60208 c!11077 Nil!60208) Nil!60208)) (= lt!2136086 input!5952)))))

(declare-fun d!1675908 () Bool)

(assert (=> d!1675908 e!3228997))

(declare-fun res!2201527 () Bool)

(assert (=> d!1675908 (=> (not res!2201527) (not e!3228997))))

(declare-fun content!10675 (List!60332) (Set C!29622))

(assert (=> d!1675908 (= res!2201527 (= (content!10675 lt!2136086) (set.union (content!10675 input!5952) (content!10675 (Cons!60208 c!11077 Nil!60208)))))))

(declare-fun e!3228996 () List!60332)

(assert (=> d!1675908 (= lt!2136086 e!3228996)))

(declare-fun c!893303 () Bool)

(assert (=> d!1675908 (= c!893303 (is-Nil!60208 input!5952))))

(assert (=> d!1675908 (= (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208)) lt!2136086)))

(declare-fun b!5182642 () Bool)

(assert (=> b!5182642 (= e!3228996 (Cons!60208 c!11077 Nil!60208))))

(declare-fun b!5182643 () Bool)

(assert (=> b!5182643 (= e!3228996 (Cons!60208 (h!66656 input!5952) (++!13180 (t!373485 input!5952) (Cons!60208 c!11077 Nil!60208))))))

(declare-fun b!5182644 () Bool)

(declare-fun res!2201528 () Bool)

(assert (=> b!5182644 (=> (not res!2201528) (not e!3228997))))

(declare-fun size!39704 (List!60332) Int)

(assert (=> b!5182644 (= res!2201528 (= (size!39704 lt!2136086) (+ (size!39704 input!5952) (size!39704 (Cons!60208 c!11077 Nil!60208)))))))

(assert (= (and d!1675908 c!893303) b!5182642))

(assert (= (and d!1675908 (not c!893303)) b!5182643))

(assert (= (and d!1675908 res!2201527) b!5182644))

(assert (= (and b!5182644 res!2201528) b!5182645))

(declare-fun m!6242818 () Bool)

(assert (=> d!1675908 m!6242818))

(declare-fun m!6242820 () Bool)

(assert (=> d!1675908 m!6242820))

(declare-fun m!6242822 () Bool)

(assert (=> d!1675908 m!6242822))

(declare-fun m!6242824 () Bool)

(assert (=> b!5182643 m!6242824))

(declare-fun m!6242826 () Bool)

(assert (=> b!5182644 m!6242826))

(declare-fun m!6242828 () Bool)

(assert (=> b!5182644 m!6242828))

(declare-fun m!6242830 () Bool)

(assert (=> b!5182644 m!6242830))

(assert (=> b!5182588 d!1675908))

(declare-fun d!1675910 () Bool)

(assert (=> d!1675910 true))

(declare-fun lambda!259120 () Int)

(declare-fun flatMap!473 ((Set Context!8120) Int) (Set Context!8120))

(assert (=> d!1675910 (= (derivationStepZipper!1022 z!4835 c!11077) (flatMap!473 z!4835 lambda!259120))))

(declare-fun bs!1208053 () Bool)

(assert (= bs!1208053 d!1675910))

(declare-fun m!6242832 () Bool)

(assert (=> bs!1208053 m!6242832))

(assert (=> b!5182588 d!1675910))

(declare-fun b!5182652 () Bool)

(declare-fun e!3229000 () Bool)

(declare-fun tp!1453634 () Bool)

(assert (=> b!5182652 (= e!3229000 (and tp_is_empty!38605 tp!1453634))))

(assert (=> b!5182591 (= tp!1453614 e!3229000)))

(assert (= (and b!5182591 (is-Cons!60208 (t!373485 input!5952))) b!5182652))

(declare-fun b!5182657 () Bool)

(declare-fun e!3229003 () Bool)

(declare-fun tp!1453639 () Bool)

(declare-fun tp!1453640 () Bool)

(assert (=> b!5182657 (= e!3229003 (and tp!1453639 tp!1453640))))

(assert (=> b!5182590 (= tp!1453615 e!3229003)))

(assert (= (and b!5182590 (is-Cons!60207 (exprs!4560 setElem!32547))) b!5182657))

(declare-fun condSetEmpty!32557 () Bool)

(assert (=> setNonEmpty!32548 (= condSetEmpty!32557 (= setRest!32548 (as set.empty (Set Context!8120))))))

(declare-fun setRes!32557 () Bool)

(assert (=> setNonEmpty!32548 (= tp!1453612 setRes!32557)))

(declare-fun setIsEmpty!32557 () Bool)

(assert (=> setIsEmpty!32557 setRes!32557))

(declare-fun tp!1453645 () Bool)

(declare-fun e!3229006 () Bool)

(declare-fun setElem!32557 () Context!8120)

(declare-fun setNonEmpty!32557 () Bool)

(assert (=> setNonEmpty!32557 (= setRes!32557 (and tp!1453645 (inv!79938 setElem!32557) e!3229006))))

(declare-fun setRest!32557 () (Set Context!8120))

(assert (=> setNonEmpty!32557 (= setRest!32548 (set.union (set.insert setElem!32557 (as set.empty (Set Context!8120))) setRest!32557))))

(declare-fun b!5182662 () Bool)

(declare-fun tp!1453646 () Bool)

(assert (=> b!5182662 (= e!3229006 tp!1453646)))

(assert (= (and setNonEmpty!32548 condSetEmpty!32557) setIsEmpty!32557))

(assert (= (and setNonEmpty!32548 (not condSetEmpty!32557)) setNonEmpty!32557))

(assert (= setNonEmpty!32557 b!5182662))

(declare-fun m!6242834 () Bool)

(assert (=> setNonEmpty!32557 m!6242834))

(declare-fun condSetEmpty!32558 () Bool)

(assert (=> setNonEmpty!32547 (= condSetEmpty!32558 (= setRest!32547 (as set.empty (Set Context!8120))))))

(declare-fun setRes!32558 () Bool)

(assert (=> setNonEmpty!32547 (= tp!1453613 setRes!32558)))

(declare-fun setIsEmpty!32558 () Bool)

(assert (=> setIsEmpty!32558 setRes!32558))

(declare-fun setElem!32558 () Context!8120)

(declare-fun setNonEmpty!32558 () Bool)

(declare-fun e!3229007 () Bool)

(declare-fun tp!1453647 () Bool)

(assert (=> setNonEmpty!32558 (= setRes!32558 (and tp!1453647 (inv!79938 setElem!32558) e!3229007))))

(declare-fun setRest!32558 () (Set Context!8120))

(assert (=> setNonEmpty!32558 (= setRest!32547 (set.union (set.insert setElem!32558 (as set.empty (Set Context!8120))) setRest!32558))))

(declare-fun b!5182663 () Bool)

(declare-fun tp!1453648 () Bool)

(assert (=> b!5182663 (= e!3229007 tp!1453648)))

(assert (= (and setNonEmpty!32547 condSetEmpty!32558) setIsEmpty!32558))

(assert (= (and setNonEmpty!32547 (not condSetEmpty!32558)) setNonEmpty!32558))

(assert (= setNonEmpty!32558 b!5182663))

(declare-fun m!6242836 () Bool)

(assert (=> setNonEmpty!32558 m!6242836))

(declare-fun b!5182664 () Bool)

(declare-fun e!3229008 () Bool)

(declare-fun tp!1453649 () Bool)

(declare-fun tp!1453650 () Bool)

(assert (=> b!5182664 (= e!3229008 (and tp!1453649 tp!1453650))))

(assert (=> b!5182592 (= tp!1453616 e!3229008)))

(assert (= (and b!5182592 (is-Cons!60207 (exprs!4560 setElem!32548))) b!5182664))

(push 1)

(assert (not d!1675902))

(assert tp_is_empty!38605)

(assert (not b!5182644))

(assert (not d!1675894))

(assert (not setNonEmpty!32557))

(assert (not d!1675910))

(assert (not b!5182652))

(assert (not b!5182632))

(assert (not d!1675908))

(assert (not b!5182657))

(assert (not b!5182664))

(assert (not b!5182630))

(assert (not setNonEmpty!32558))

(assert (not b!5182662))

(assert (not b!5182663))

(assert (not b!5182643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1675912 () Bool)

(declare-fun choose!38521 ((Set Context!8120) Int) (Set Context!8120))

(assert (=> d!1675912 (= (flatMap!473 z!4835 lambda!259120) (choose!38521 z!4835 lambda!259120))))

(declare-fun bs!1208054 () Bool)

(assert (= bs!1208054 d!1675912))

(declare-fun m!6242838 () Bool)

(assert (=> bs!1208054 m!6242838))

(assert (=> d!1675910 d!1675912))

(declare-fun bs!1208055 () Bool)

(declare-fun d!1675914 () Bool)

(assert (= bs!1208055 (and d!1675914 d!1675894)))

(declare-fun lambda!259121 () Int)

(assert (=> bs!1208055 (= lambda!259121 lambda!259116)))

(declare-fun bs!1208056 () Bool)

(assert (= bs!1208056 (and d!1675914 d!1675902)))

(assert (=> bs!1208056 (= lambda!259121 lambda!259117)))

(assert (=> d!1675914 (= (inv!79938 setElem!32557) (forall!14189 (exprs!4560 setElem!32557) lambda!259121))))

(declare-fun bs!1208057 () Bool)

(assert (= bs!1208057 d!1675914))

(declare-fun m!6242840 () Bool)

(assert (=> bs!1208057 m!6242840))

(assert (=> setNonEmpty!32557 d!1675914))

(declare-fun d!1675916 () Bool)

(declare-fun lt!2136089 () Int)

(assert (=> d!1675916 (>= lt!2136089 0)))

(declare-fun e!3229011 () Int)

(assert (=> d!1675916 (= lt!2136089 e!3229011)))

(declare-fun c!893308 () Bool)

(assert (=> d!1675916 (= c!893308 (is-Nil!60208 lt!2136086))))

(assert (=> d!1675916 (= (size!39704 lt!2136086) lt!2136089)))

(declare-fun b!5182669 () Bool)

(assert (=> b!5182669 (= e!3229011 0)))

(declare-fun b!5182670 () Bool)

(assert (=> b!5182670 (= e!3229011 (+ 1 (size!39704 (t!373485 lt!2136086))))))

(assert (= (and d!1675916 c!893308) b!5182669))

(assert (= (and d!1675916 (not c!893308)) b!5182670))

(declare-fun m!6242842 () Bool)

(assert (=> b!5182670 m!6242842))

(assert (=> b!5182644 d!1675916))

(declare-fun d!1675918 () Bool)

(declare-fun lt!2136090 () Int)

(assert (=> d!1675918 (>= lt!2136090 0)))

(declare-fun e!3229012 () Int)

(assert (=> d!1675918 (= lt!2136090 e!3229012)))

(declare-fun c!893309 () Bool)

(assert (=> d!1675918 (= c!893309 (is-Nil!60208 input!5952))))

(assert (=> d!1675918 (= (size!39704 input!5952) lt!2136090)))

(declare-fun b!5182671 () Bool)

(assert (=> b!5182671 (= e!3229012 0)))

(declare-fun b!5182672 () Bool)

(assert (=> b!5182672 (= e!3229012 (+ 1 (size!39704 (t!373485 input!5952))))))

(assert (= (and d!1675918 c!893309) b!5182671))

(assert (= (and d!1675918 (not c!893309)) b!5182672))

(declare-fun m!6242844 () Bool)

(assert (=> b!5182672 m!6242844))

(assert (=> b!5182644 d!1675918))

(declare-fun d!1675920 () Bool)

(declare-fun lt!2136091 () Int)

(assert (=> d!1675920 (>= lt!2136091 0)))

(declare-fun e!3229013 () Int)

(assert (=> d!1675920 (= lt!2136091 e!3229013)))

(declare-fun c!893310 () Bool)

(assert (=> d!1675920 (= c!893310 (is-Nil!60208 (Cons!60208 c!11077 Nil!60208)))))

(assert (=> d!1675920 (= (size!39704 (Cons!60208 c!11077 Nil!60208)) lt!2136091)))

(declare-fun b!5182673 () Bool)

(assert (=> b!5182673 (= e!3229013 0)))

(declare-fun b!5182674 () Bool)

(assert (=> b!5182674 (= e!3229013 (+ 1 (size!39704 (t!373485 (Cons!60208 c!11077 Nil!60208)))))))

(assert (= (and d!1675920 c!893310) b!5182673))

(assert (= (and d!1675920 (not c!893310)) b!5182674))

(declare-fun m!6242846 () Bool)

(assert (=> b!5182674 m!6242846))

(assert (=> b!5182644 d!1675920))

(declare-fun lt!2136092 () List!60332)

(declare-fun b!5182678 () Bool)

(declare-fun e!3229015 () Bool)

(assert (=> b!5182678 (= e!3229015 (or (not (= (Cons!60208 c!11077 Nil!60208) Nil!60208)) (= lt!2136092 (t!373485 input!5952))))))

(declare-fun d!1675922 () Bool)

(assert (=> d!1675922 e!3229015))

(declare-fun res!2201529 () Bool)

(assert (=> d!1675922 (=> (not res!2201529) (not e!3229015))))

(assert (=> d!1675922 (= res!2201529 (= (content!10675 lt!2136092) (set.union (content!10675 (t!373485 input!5952)) (content!10675 (Cons!60208 c!11077 Nil!60208)))))))

(declare-fun e!3229014 () List!60332)

(assert (=> d!1675922 (= lt!2136092 e!3229014)))

(declare-fun c!893311 () Bool)

(assert (=> d!1675922 (= c!893311 (is-Nil!60208 (t!373485 input!5952)))))

(assert (=> d!1675922 (= (++!13180 (t!373485 input!5952) (Cons!60208 c!11077 Nil!60208)) lt!2136092)))

(declare-fun b!5182675 () Bool)

(assert (=> b!5182675 (= e!3229014 (Cons!60208 c!11077 Nil!60208))))

(declare-fun b!5182676 () Bool)

(assert (=> b!5182676 (= e!3229014 (Cons!60208 (h!66656 (t!373485 input!5952)) (++!13180 (t!373485 (t!373485 input!5952)) (Cons!60208 c!11077 Nil!60208))))))

(declare-fun b!5182677 () Bool)

(declare-fun res!2201530 () Bool)

(assert (=> b!5182677 (=> (not res!2201530) (not e!3229015))))

(assert (=> b!5182677 (= res!2201530 (= (size!39704 lt!2136092) (+ (size!39704 (t!373485 input!5952)) (size!39704 (Cons!60208 c!11077 Nil!60208)))))))

(assert (= (and d!1675922 c!893311) b!5182675))

(assert (= (and d!1675922 (not c!893311)) b!5182676))

(assert (= (and d!1675922 res!2201529) b!5182677))

(assert (= (and b!5182677 res!2201530) b!5182678))

(declare-fun m!6242848 () Bool)

(assert (=> d!1675922 m!6242848))

(declare-fun m!6242850 () Bool)

(assert (=> d!1675922 m!6242850))

(assert (=> d!1675922 m!6242822))

(declare-fun m!6242852 () Bool)

(assert (=> b!5182676 m!6242852))

(declare-fun m!6242854 () Bool)

(assert (=> b!5182677 m!6242854))

(assert (=> b!5182677 m!6242844))

(assert (=> b!5182677 m!6242830))

(assert (=> b!5182643 d!1675922))

(declare-fun d!1675924 () Bool)

(declare-fun c!893314 () Bool)

(assert (=> d!1675924 (= c!893314 (is-Nil!60208 lt!2136086))))

(declare-fun e!3229018 () (Set C!29622))

(assert (=> d!1675924 (= (content!10675 lt!2136086) e!3229018)))

(declare-fun b!5182683 () Bool)

(assert (=> b!5182683 (= e!3229018 (as set.empty (Set C!29622)))))

(declare-fun b!5182684 () Bool)

(assert (=> b!5182684 (= e!3229018 (set.union (set.insert (h!66656 lt!2136086) (as set.empty (Set C!29622))) (content!10675 (t!373485 lt!2136086))))))

(assert (= (and d!1675924 c!893314) b!5182683))

(assert (= (and d!1675924 (not c!893314)) b!5182684))

(declare-fun m!6242856 () Bool)

(assert (=> b!5182684 m!6242856))

(declare-fun m!6242858 () Bool)

(assert (=> b!5182684 m!6242858))

(assert (=> d!1675908 d!1675924))

(declare-fun d!1675926 () Bool)

(declare-fun c!893315 () Bool)

(assert (=> d!1675926 (= c!893315 (is-Nil!60208 input!5952))))

(declare-fun e!3229019 () (Set C!29622))

(assert (=> d!1675926 (= (content!10675 input!5952) e!3229019)))

(declare-fun b!5182685 () Bool)

(assert (=> b!5182685 (= e!3229019 (as set.empty (Set C!29622)))))

(declare-fun b!5182686 () Bool)

(assert (=> b!5182686 (= e!3229019 (set.union (set.insert (h!66656 input!5952) (as set.empty (Set C!29622))) (content!10675 (t!373485 input!5952))))))

(assert (= (and d!1675926 c!893315) b!5182685))

(assert (= (and d!1675926 (not c!893315)) b!5182686))

(declare-fun m!6242860 () Bool)

(assert (=> b!5182686 m!6242860))

(assert (=> b!5182686 m!6242850))

(assert (=> d!1675908 d!1675926))

(declare-fun d!1675928 () Bool)

(declare-fun c!893316 () Bool)

(assert (=> d!1675928 (= c!893316 (is-Nil!60208 (Cons!60208 c!11077 Nil!60208)))))

(declare-fun e!3229020 () (Set C!29622))

(assert (=> d!1675928 (= (content!10675 (Cons!60208 c!11077 Nil!60208)) e!3229020)))

(declare-fun b!5182687 () Bool)

(assert (=> b!5182687 (= e!3229020 (as set.empty (Set C!29622)))))

(declare-fun b!5182688 () Bool)

(assert (=> b!5182688 (= e!3229020 (set.union (set.insert (h!66656 (Cons!60208 c!11077 Nil!60208)) (as set.empty (Set C!29622))) (content!10675 (t!373485 (Cons!60208 c!11077 Nil!60208)))))))

(assert (= (and d!1675928 c!893316) b!5182687))

(assert (= (and d!1675928 (not c!893316)) b!5182688))

(declare-fun m!6242862 () Bool)

(assert (=> b!5182688 m!6242862))

(declare-fun m!6242864 () Bool)

(assert (=> b!5182688 m!6242864))

(assert (=> d!1675908 d!1675928))

(declare-fun d!1675930 () Bool)

(declare-fun c!893317 () Bool)

(assert (=> d!1675930 (= c!893317 (is-Cons!60208 (t!373485 input!5952)))))

(declare-fun e!3229021 () (Set Context!8120))

(assert (=> d!1675930 (= (derivationZipper!299 (derivationStepZipper!1022 baseZ!87 (h!66656 input!5952)) (t!373485 input!5952)) e!3229021)))

(declare-fun b!5182689 () Bool)

(assert (=> b!5182689 (= e!3229021 (derivationZipper!299 (derivationStepZipper!1022 (derivationStepZipper!1022 baseZ!87 (h!66656 input!5952)) (h!66656 (t!373485 input!5952))) (t!373485 (t!373485 input!5952))))))

(declare-fun b!5182690 () Bool)

(assert (=> b!5182690 (= e!3229021 (derivationStepZipper!1022 baseZ!87 (h!66656 input!5952)))))

(assert (= (and d!1675930 c!893317) b!5182689))

(assert (= (and d!1675930 (not c!893317)) b!5182690))

(assert (=> b!5182689 m!6242810))

(declare-fun m!6242866 () Bool)

(assert (=> b!5182689 m!6242866))

(assert (=> b!5182689 m!6242866))

(declare-fun m!6242868 () Bool)

(assert (=> b!5182689 m!6242868))

(assert (=> b!5182630 d!1675930))

(declare-fun bs!1208058 () Bool)

(declare-fun d!1675932 () Bool)

(assert (= bs!1208058 (and d!1675932 d!1675910)))

(declare-fun lambda!259122 () Int)

(assert (=> bs!1208058 (= (= (h!66656 input!5952) c!11077) (= lambda!259122 lambda!259120))))

(assert (=> d!1675932 true))

(assert (=> d!1675932 (= (derivationStepZipper!1022 baseZ!87 (h!66656 input!5952)) (flatMap!473 baseZ!87 lambda!259122))))

(declare-fun bs!1208059 () Bool)

(assert (= bs!1208059 d!1675932))

(declare-fun m!6242870 () Bool)

(assert (=> bs!1208059 m!6242870))

(assert (=> b!5182630 d!1675932))

(declare-fun d!1675934 () Bool)

(declare-fun res!2201535 () Bool)

(declare-fun e!3229026 () Bool)

(assert (=> d!1675934 (=> res!2201535 e!3229026)))

(assert (=> d!1675934 (= res!2201535 (is-Nil!60207 (exprs!4560 setElem!32547)))))

(assert (=> d!1675934 (= (forall!14189 (exprs!4560 setElem!32547) lambda!259117) e!3229026)))

(declare-fun b!5182695 () Bool)

(declare-fun e!3229027 () Bool)

(assert (=> b!5182695 (= e!3229026 e!3229027)))

(declare-fun res!2201536 () Bool)

(assert (=> b!5182695 (=> (not res!2201536) (not e!3229027))))

(declare-fun dynLambda!23894 (Int Regex!14676) Bool)

(assert (=> b!5182695 (= res!2201536 (dynLambda!23894 lambda!259117 (h!66655 (exprs!4560 setElem!32547))))))

(declare-fun b!5182696 () Bool)

(assert (=> b!5182696 (= e!3229027 (forall!14189 (t!373484 (exprs!4560 setElem!32547)) lambda!259117))))

(assert (= (and d!1675934 (not res!2201535)) b!5182695))

(assert (= (and b!5182695 res!2201536) b!5182696))

(declare-fun b_lambda!201129 () Bool)

(assert (=> (not b_lambda!201129) (not b!5182695)))

(declare-fun m!6242872 () Bool)

(assert (=> b!5182695 m!6242872))

(declare-fun m!6242874 () Bool)

(assert (=> b!5182696 m!6242874))

(assert (=> d!1675902 d!1675934))

(declare-fun d!1675936 () Bool)

(declare-fun c!893318 () Bool)

(assert (=> d!1675936 (= c!893318 (is-Cons!60208 (t!373485 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208)))))))

(declare-fun e!3229028 () (Set Context!8120))

(assert (=> d!1675936 (= (derivationZipper!299 (derivationStepZipper!1022 baseZ!87 (h!66656 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208)))) (t!373485 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208)))) e!3229028)))

(declare-fun b!5182697 () Bool)

(assert (=> b!5182697 (= e!3229028 (derivationZipper!299 (derivationStepZipper!1022 (derivationStepZipper!1022 baseZ!87 (h!66656 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208)))) (h!66656 (t!373485 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208))))) (t!373485 (t!373485 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208))))))))

(declare-fun b!5182698 () Bool)

(assert (=> b!5182698 (= e!3229028 (derivationStepZipper!1022 baseZ!87 (h!66656 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208)))))))

(assert (= (and d!1675936 c!893318) b!5182697))

(assert (= (and d!1675936 (not c!893318)) b!5182698))

(assert (=> b!5182697 m!6242814))

(declare-fun m!6242876 () Bool)

(assert (=> b!5182697 m!6242876))

(assert (=> b!5182697 m!6242876))

(declare-fun m!6242878 () Bool)

(assert (=> b!5182697 m!6242878))

(assert (=> b!5182632 d!1675936))

(declare-fun bs!1208060 () Bool)

(declare-fun d!1675938 () Bool)

(assert (= bs!1208060 (and d!1675938 d!1675910)))

(declare-fun lambda!259123 () Int)

(assert (=> bs!1208060 (= (= (h!66656 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208))) c!11077) (= lambda!259123 lambda!259120))))

(declare-fun bs!1208061 () Bool)

(assert (= bs!1208061 (and d!1675938 d!1675932)))

(assert (=> bs!1208061 (= (= (h!66656 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208))) (h!66656 input!5952)) (= lambda!259123 lambda!259122))))

(assert (=> d!1675938 true))

(assert (=> d!1675938 (= (derivationStepZipper!1022 baseZ!87 (h!66656 (++!13180 input!5952 (Cons!60208 c!11077 Nil!60208)))) (flatMap!473 baseZ!87 lambda!259123))))

(declare-fun bs!1208062 () Bool)

(assert (= bs!1208062 d!1675938))

(declare-fun m!6242880 () Bool)

(assert (=> bs!1208062 m!6242880))

(assert (=> b!5182632 d!1675938))

(declare-fun d!1675940 () Bool)

(declare-fun res!2201537 () Bool)

(declare-fun e!3229029 () Bool)

(assert (=> d!1675940 (=> res!2201537 e!3229029)))

(assert (=> d!1675940 (= res!2201537 (is-Nil!60207 (exprs!4560 setElem!32548)))))

(assert (=> d!1675940 (= (forall!14189 (exprs!4560 setElem!32548) lambda!259116) e!3229029)))

(declare-fun b!5182699 () Bool)

(declare-fun e!3229030 () Bool)

(assert (=> b!5182699 (= e!3229029 e!3229030)))

(declare-fun res!2201538 () Bool)

(assert (=> b!5182699 (=> (not res!2201538) (not e!3229030))))

(assert (=> b!5182699 (= res!2201538 (dynLambda!23894 lambda!259116 (h!66655 (exprs!4560 setElem!32548))))))

(declare-fun b!5182700 () Bool)

(assert (=> b!5182700 (= e!3229030 (forall!14189 (t!373484 (exprs!4560 setElem!32548)) lambda!259116))))

(assert (= (and d!1675940 (not res!2201537)) b!5182699))

(assert (= (and b!5182699 res!2201538) b!5182700))

(declare-fun b_lambda!201131 () Bool)

(assert (=> (not b_lambda!201131) (not b!5182699)))

(declare-fun m!6242882 () Bool)

(assert (=> b!5182699 m!6242882))

(declare-fun m!6242884 () Bool)

(assert (=> b!5182700 m!6242884))

(assert (=> d!1675894 d!1675940))

(declare-fun bs!1208063 () Bool)

(declare-fun d!1675942 () Bool)

(assert (= bs!1208063 (and d!1675942 d!1675894)))

(declare-fun lambda!259124 () Int)

(assert (=> bs!1208063 (= lambda!259124 lambda!259116)))

(declare-fun bs!1208064 () Bool)

(assert (= bs!1208064 (and d!1675942 d!1675902)))

(assert (=> bs!1208064 (= lambda!259124 lambda!259117)))

(declare-fun bs!1208065 () Bool)

(assert (= bs!1208065 (and d!1675942 d!1675914)))

(assert (=> bs!1208065 (= lambda!259124 lambda!259121)))

(assert (=> d!1675942 (= (inv!79938 setElem!32558) (forall!14189 (exprs!4560 setElem!32558) lambda!259124))))

(declare-fun bs!1208066 () Bool)

(assert (= bs!1208066 d!1675942))

(declare-fun m!6242886 () Bool)

(assert (=> bs!1208066 m!6242886))

(assert (=> setNonEmpty!32558 d!1675942))

(declare-fun b!5182701 () Bool)

(declare-fun e!3229031 () Bool)

(declare-fun tp!1453651 () Bool)

(declare-fun tp!1453652 () Bool)

(assert (=> b!5182701 (= e!3229031 (and tp!1453651 tp!1453652))))

(assert (=> b!5182662 (= tp!1453646 e!3229031)))

(assert (= (and b!5182662 (is-Cons!60207 (exprs!4560 setElem!32557))) b!5182701))

(declare-fun b!5182702 () Bool)

(declare-fun e!3229032 () Bool)

(declare-fun tp!1453653 () Bool)

(assert (=> b!5182702 (= e!3229032 (and tp_is_empty!38605 tp!1453653))))

(assert (=> b!5182652 (= tp!1453634 e!3229032)))

(assert (= (and b!5182652 (is-Cons!60208 (t!373485 (t!373485 input!5952)))) b!5182702))

(declare-fun condSetEmpty!32559 () Bool)

(assert (=> setNonEmpty!32557 (= condSetEmpty!32559 (= setRest!32557 (as set.empty (Set Context!8120))))))

(declare-fun setRes!32559 () Bool)

(assert (=> setNonEmpty!32557 (= tp!1453645 setRes!32559)))

(declare-fun setIsEmpty!32559 () Bool)

(assert (=> setIsEmpty!32559 setRes!32559))

(declare-fun setElem!32559 () Context!8120)

(declare-fun tp!1453654 () Bool)

(declare-fun setNonEmpty!32559 () Bool)

(declare-fun e!3229033 () Bool)

(assert (=> setNonEmpty!32559 (= setRes!32559 (and tp!1453654 (inv!79938 setElem!32559) e!3229033))))

(declare-fun setRest!32559 () (Set Context!8120))

(assert (=> setNonEmpty!32559 (= setRest!32557 (set.union (set.insert setElem!32559 (as set.empty (Set Context!8120))) setRest!32559))))

(declare-fun b!5182703 () Bool)

(declare-fun tp!1453655 () Bool)

(assert (=> b!5182703 (= e!3229033 tp!1453655)))

(assert (= (and setNonEmpty!32557 condSetEmpty!32559) setIsEmpty!32559))

(assert (= (and setNonEmpty!32557 (not condSetEmpty!32559)) setNonEmpty!32559))

(assert (= setNonEmpty!32559 b!5182703))

(declare-fun m!6242888 () Bool)

(assert (=> setNonEmpty!32559 m!6242888))

(declare-fun b!5182716 () Bool)

(declare-fun e!3229036 () Bool)

(declare-fun tp!1453670 () Bool)

(assert (=> b!5182716 (= e!3229036 tp!1453670)))

(declare-fun b!5182714 () Bool)

(assert (=> b!5182714 (= e!3229036 tp_is_empty!38605)))

(declare-fun b!5182717 () Bool)

(declare-fun tp!1453667 () Bool)

(declare-fun tp!1453666 () Bool)

(assert (=> b!5182717 (= e!3229036 (and tp!1453667 tp!1453666))))

(declare-fun b!5182715 () Bool)

(declare-fun tp!1453669 () Bool)

(declare-fun tp!1453668 () Bool)

(assert (=> b!5182715 (= e!3229036 (and tp!1453669 tp!1453668))))

(assert (=> b!5182664 (= tp!1453649 e!3229036)))

(assert (= (and b!5182664 (is-ElementMatch!14676 (h!66655 (exprs!4560 setElem!32548)))) b!5182714))

(assert (= (and b!5182664 (is-Concat!23521 (h!66655 (exprs!4560 setElem!32548)))) b!5182715))

(assert (= (and b!5182664 (is-Star!14676 (h!66655 (exprs!4560 setElem!32548)))) b!5182716))

(assert (= (and b!5182664 (is-Union!14676 (h!66655 (exprs!4560 setElem!32548)))) b!5182717))

(declare-fun b!5182718 () Bool)

(declare-fun e!3229037 () Bool)

(declare-fun tp!1453671 () Bool)

(declare-fun tp!1453672 () Bool)

(assert (=> b!5182718 (= e!3229037 (and tp!1453671 tp!1453672))))

(assert (=> b!5182664 (= tp!1453650 e!3229037)))

(assert (= (and b!5182664 (is-Cons!60207 (t!373484 (exprs!4560 setElem!32548)))) b!5182718))

(declare-fun b!5182719 () Bool)

(declare-fun e!3229038 () Bool)

(declare-fun tp!1453673 () Bool)

(declare-fun tp!1453674 () Bool)

(assert (=> b!5182719 (= e!3229038 (and tp!1453673 tp!1453674))))

(assert (=> b!5182663 (= tp!1453648 e!3229038)))

(assert (= (and b!5182663 (is-Cons!60207 (exprs!4560 setElem!32558))) b!5182719))

(declare-fun b!5182722 () Bool)

(declare-fun e!3229039 () Bool)

(declare-fun tp!1453679 () Bool)

(assert (=> b!5182722 (= e!3229039 tp!1453679)))

(declare-fun b!5182720 () Bool)

(assert (=> b!5182720 (= e!3229039 tp_is_empty!38605)))

(declare-fun b!5182723 () Bool)

(declare-fun tp!1453676 () Bool)

(declare-fun tp!1453675 () Bool)

(assert (=> b!5182723 (= e!3229039 (and tp!1453676 tp!1453675))))

(declare-fun b!5182721 () Bool)

(declare-fun tp!1453678 () Bool)

(declare-fun tp!1453677 () Bool)

(assert (=> b!5182721 (= e!3229039 (and tp!1453678 tp!1453677))))

(assert (=> b!5182657 (= tp!1453639 e!3229039)))

(assert (= (and b!5182657 (is-ElementMatch!14676 (h!66655 (exprs!4560 setElem!32547)))) b!5182720))

(assert (= (and b!5182657 (is-Concat!23521 (h!66655 (exprs!4560 setElem!32547)))) b!5182721))

(assert (= (and b!5182657 (is-Star!14676 (h!66655 (exprs!4560 setElem!32547)))) b!5182722))

(assert (= (and b!5182657 (is-Union!14676 (h!66655 (exprs!4560 setElem!32547)))) b!5182723))

(declare-fun b!5182724 () Bool)

(declare-fun e!3229040 () Bool)

(declare-fun tp!1453680 () Bool)

(declare-fun tp!1453681 () Bool)

(assert (=> b!5182724 (= e!3229040 (and tp!1453680 tp!1453681))))

(assert (=> b!5182657 (= tp!1453640 e!3229040)))

(assert (= (and b!5182657 (is-Cons!60207 (t!373484 (exprs!4560 setElem!32547)))) b!5182724))

(declare-fun condSetEmpty!32560 () Bool)

(assert (=> setNonEmpty!32558 (= condSetEmpty!32560 (= setRest!32558 (as set.empty (Set Context!8120))))))

(declare-fun setRes!32560 () Bool)

(assert (=> setNonEmpty!32558 (= tp!1453647 setRes!32560)))

(declare-fun setIsEmpty!32560 () Bool)

(assert (=> setIsEmpty!32560 setRes!32560))

(declare-fun setNonEmpty!32560 () Bool)

(declare-fun tp!1453682 () Bool)

(declare-fun setElem!32560 () Context!8120)

(declare-fun e!3229041 () Bool)

(assert (=> setNonEmpty!32560 (= setRes!32560 (and tp!1453682 (inv!79938 setElem!32560) e!3229041))))

(declare-fun setRest!32560 () (Set Context!8120))

(assert (=> setNonEmpty!32560 (= setRest!32558 (set.union (set.insert setElem!32560 (as set.empty (Set Context!8120))) setRest!32560))))

(declare-fun b!5182725 () Bool)

(declare-fun tp!1453683 () Bool)

(assert (=> b!5182725 (= e!3229041 tp!1453683)))

(assert (= (and setNonEmpty!32558 condSetEmpty!32560) setIsEmpty!32560))

(assert (= (and setNonEmpty!32558 (not condSetEmpty!32560)) setNonEmpty!32560))

(assert (= setNonEmpty!32560 b!5182725))

(declare-fun m!6242890 () Bool)

(assert (=> setNonEmpty!32560 m!6242890))

(declare-fun b_lambda!201133 () Bool)

(assert (= b_lambda!201129 (or d!1675902 b_lambda!201133)))

(declare-fun bs!1208067 () Bool)

(declare-fun d!1675944 () Bool)

(assert (= bs!1208067 (and d!1675944 d!1675902)))

(declare-fun validRegex!6415 (Regex!14676) Bool)

(assert (=> bs!1208067 (= (dynLambda!23894 lambda!259117 (h!66655 (exprs!4560 setElem!32547))) (validRegex!6415 (h!66655 (exprs!4560 setElem!32547))))))

(declare-fun m!6242892 () Bool)

(assert (=> bs!1208067 m!6242892))

(assert (=> b!5182695 d!1675944))

(declare-fun b_lambda!201135 () Bool)

(assert (= b_lambda!201131 (or d!1675894 b_lambda!201135)))

(declare-fun bs!1208068 () Bool)

(declare-fun d!1675946 () Bool)

(assert (= bs!1208068 (and d!1675946 d!1675894)))

(assert (=> bs!1208068 (= (dynLambda!23894 lambda!259116 (h!66655 (exprs!4560 setElem!32548))) (validRegex!6415 (h!66655 (exprs!4560 setElem!32548))))))

(declare-fun m!6242894 () Bool)

(assert (=> bs!1208068 m!6242894))

(assert (=> b!5182699 d!1675946))

(push 1)

(assert (not b!5182725))

(assert (not b!5182686))

(assert (not bs!1208067))

(assert tp_is_empty!38605)

(assert (not b!5182688))

(assert (not d!1675938))

(assert (not bs!1208068))

(assert (not b!5182676))

(assert (not b!5182724))

(assert (not b!5182672))

(assert (not b!5182700))

(assert (not d!1675942))

(assert (not b!5182723))

(assert (not b!5182717))

(assert (not b!5182684))

(assert (not b!5182719))

(assert (not setNonEmpty!32559))

(assert (not b!5182721))

(assert (not b!5182703))

(assert (not d!1675912))

(assert (not d!1675922))

(assert (not b!5182715))

(assert (not b!5182677))

(assert (not b_lambda!201135))

(assert (not b_lambda!201133))

(assert (not d!1675932))

(assert (not b!5182702))

(assert (not b!5182716))

(assert (not b!5182670))

(assert (not b!5182696))

(assert (not setNonEmpty!32560))

(assert (not d!1675914))

(assert (not b!5182701))

(assert (not b!5182689))

(assert (not b!5182697))

(assert (not b!5182722))

(assert (not b!5182674))

(assert (not b!5182718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

