; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!668578 () Bool)

(assert start!668578)

(declare-fun bs!1859377 () Bool)

(declare-fun b!6972773 () Bool)

(assert (= bs!1859377 (and b!6972773 start!668578)))

(declare-fun lambda!397818 () Int)

(declare-fun lambda!397817 () Int)

(assert (=> bs!1859377 (not (= lambda!397818 lambda!397817))))

(assert (=> b!6972773 true))

(declare-fun b!6972759 () Bool)

(declare-fun e!4191169 () Bool)

(declare-fun tp!1924542 () Bool)

(declare-fun tp!1924539 () Bool)

(assert (=> b!6972759 (= e!4191169 (and tp!1924542 tp!1924539))))

(declare-fun b!6972760 () Bool)

(declare-fun e!4191164 () Bool)

(declare-fun tp!1924545 () Bool)

(declare-fun tp!1924544 () Bool)

(assert (=> b!6972760 (= e!4191164 (and tp!1924545 tp!1924544))))

(declare-fun b!6972761 () Bool)

(declare-fun tp_is_empty!43491 () Bool)

(assert (=> b!6972761 (= e!4191164 tp_is_empty!43491)))

(declare-fun b!6972762 () Bool)

(declare-fun tp!1924538 () Bool)

(declare-fun tp!1924540 () Bool)

(assert (=> b!6972762 (= e!4191164 (and tp!1924538 tp!1924540))))

(declare-fun b!6972763 () Bool)

(declare-fun res!2844009 () Bool)

(declare-fun e!4191167 () Bool)

(assert (=> b!6972763 (=> res!2844009 e!4191167)))

(declare-datatypes ((C!34536 0))(
  ( (C!34537 (val!26970 Int)) )
))
(declare-datatypes ((Regex!17133 0))(
  ( (ElementMatch!17133 (c!1292573 C!34536)) (Concat!25978 (regOne!34778 Regex!17133) (regTwo!34778 Regex!17133)) (EmptyExpr!17133) (Star!17133 (reg!17462 Regex!17133)) (EmptyLang!17133) (Union!17133 (regOne!34779 Regex!17133) (regTwo!34779 Regex!17133)) )
))
(declare-datatypes ((List!66947 0))(
  ( (Nil!66823) (Cons!66823 (h!73271 Regex!17133) (t!380690 List!66947)) )
))
(declare-fun l!9142 () List!66947)

(declare-fun isEmpty!39025 (List!66947) Bool)

(assert (=> b!6972763 (= res!2844009 (isEmpty!39025 l!9142))))

(declare-fun b!6972764 () Bool)

(declare-fun res!2844008 () Bool)

(declare-fun e!4191166 () Bool)

(assert (=> b!6972764 (=> (not res!2844008) (not e!4191166))))

(declare-fun r!13765 () Regex!17133)

(declare-fun generalisedUnion!2608 (List!66947) Regex!17133)

(assert (=> b!6972764 (= res!2844008 (= r!13765 (generalisedUnion!2608 l!9142)))))

(declare-fun b!6972766 () Bool)

(declare-fun e!4191170 () Bool)

(declare-fun tp!1924541 () Bool)

(assert (=> b!6972766 (= e!4191170 (and tp_is_empty!43491 tp!1924541))))

(declare-fun b!6972767 () Bool)

(declare-fun e!4191162 () Bool)

(assert (=> b!6972767 (= e!4191167 e!4191162)))

(declare-fun res!2844007 () Bool)

(assert (=> b!6972767 (=> res!2844007 e!4191162)))

(declare-fun lt!2479822 () List!66947)

(assert (=> b!6972767 (= res!2844007 (isEmpty!39025 lt!2479822))))

(declare-fun tail!13105 (List!66947) List!66947)

(assert (=> b!6972767 (= lt!2479822 (tail!13105 l!9142))))

(declare-fun b!6972768 () Bool)

(declare-fun tp!1924543 () Bool)

(assert (=> b!6972768 (= e!4191164 tp!1924543)))

(declare-fun b!6972769 () Bool)

(declare-fun e!4191163 () Bool)

(assert (=> b!6972769 (= e!4191162 e!4191163)))

(declare-fun res!2844006 () Bool)

(assert (=> b!6972769 (=> res!2844006 e!4191163)))

(declare-fun lt!2479820 () Bool)

(declare-fun e!4191168 () Bool)

(assert (=> b!6972769 (= res!2844006 (not (= lt!2479820 e!4191168)))))

(declare-fun res!2844010 () Bool)

(assert (=> b!6972769 (=> res!2844010 e!4191168)))

(declare-fun lt!2479823 () Bool)

(assert (=> b!6972769 (= res!2844010 lt!2479823)))

(declare-datatypes ((List!66948 0))(
  ( (Nil!66824) (Cons!66824 (h!73272 C!34536) (t!380691 List!66948)) )
))
(declare-fun s!9351 () List!66948)

(declare-fun matchRSpec!4150 (Regex!17133 List!66948) Bool)

(assert (=> b!6972769 (= lt!2479823 (matchRSpec!4150 (regOne!34779 r!13765) s!9351))))

(declare-fun res!2844011 () Bool)

(assert (=> start!668578 (=> (not res!2844011) (not e!4191166))))

(declare-fun forall!16004 (List!66947 Int) Bool)

(assert (=> start!668578 (= res!2844011 (forall!16004 l!9142 lambda!397817))))

(assert (=> start!668578 e!4191166))

(assert (=> start!668578 e!4191169))

(assert (=> start!668578 e!4191164))

(assert (=> start!668578 e!4191170))

(declare-fun b!6972765 () Bool)

(declare-fun e!4191165 () Bool)

(assert (=> b!6972765 (= e!4191163 e!4191165)))

(declare-fun res!2844014 () Bool)

(assert (=> b!6972765 (=> res!2844014 e!4191165)))

(assert (=> b!6972765 (= res!2844014 (not (forall!16004 lt!2479822 lambda!397817)))))

(declare-fun lt!2479819 () Bool)

(assert (=> b!6972765 (= lt!2479819 (matchRSpec!4150 (regTwo!34779 r!13765) s!9351))))

(declare-fun matchR!9235 (Regex!17133 List!66948) Bool)

(assert (=> b!6972765 (= lt!2479819 (matchR!9235 (regTwo!34779 r!13765) s!9351))))

(declare-datatypes ((Unit!160918 0))(
  ( (Unit!160919) )
))
(declare-fun lt!2479821 () Unit!160918)

(declare-fun mainMatchTheorem!4144 (Regex!17133 List!66948) Unit!160918)

(assert (=> b!6972765 (= lt!2479821 (mainMatchTheorem!4144 (regTwo!34779 r!13765) s!9351))))

(assert (=> b!6972765 (= (matchR!9235 (regOne!34779 r!13765) s!9351) lt!2479823)))

(declare-fun lt!2479817 () Unit!160918)

(assert (=> b!6972765 (= lt!2479817 (mainMatchTheorem!4144 (regOne!34779 r!13765) s!9351))))

(declare-fun b!6972770 () Bool)

(declare-fun res!2844012 () Bool)

(assert (=> b!6972770 (=> res!2844012 e!4191165)))

(assert (=> b!6972770 (= res!2844012 (not (= (regTwo!34779 r!13765) (generalisedUnion!2608 lt!2479822))))))

(declare-fun b!6972771 () Bool)

(assert (=> b!6972771 (= e!4191168 (matchRSpec!4150 (regTwo!34779 r!13765) s!9351))))

(declare-fun b!6972772 () Bool)

(assert (=> b!6972772 (= e!4191166 (not e!4191167))))

(declare-fun res!2844013 () Bool)

(assert (=> b!6972772 (=> res!2844013 e!4191167)))

(get-info :version)

(assert (=> b!6972772 (= res!2844013 (not ((_ is Union!17133) r!13765)))))

(assert (=> b!6972772 (= lt!2479820 (matchRSpec!4150 r!13765 s!9351))))

(assert (=> b!6972772 (= lt!2479820 (matchR!9235 r!13765 s!9351))))

(declare-fun lt!2479816 () Unit!160918)

(assert (=> b!6972772 (= lt!2479816 (mainMatchTheorem!4144 r!13765 s!9351))))

(declare-fun exists!2869 (List!66947 Int) Bool)

(assert (=> b!6972773 (= e!4191165 (= lt!2479820 (exists!2869 l!9142 lambda!397818)))))

(assert (=> b!6972773 (= lt!2479819 (exists!2869 lt!2479822 lambda!397818))))

(declare-fun lt!2479818 () Unit!160918)

(declare-fun matchRGenUnionSpec!352 (Regex!17133 List!66947 List!66948) Unit!160918)

(assert (=> b!6972773 (= lt!2479818 (matchRGenUnionSpec!352 (regTwo!34779 r!13765) lt!2479822 s!9351))))

(assert (= (and start!668578 res!2844011) b!6972764))

(assert (= (and b!6972764 res!2844008) b!6972772))

(assert (= (and b!6972772 (not res!2844013)) b!6972763))

(assert (= (and b!6972763 (not res!2844009)) b!6972767))

(assert (= (and b!6972767 (not res!2844007)) b!6972769))

(assert (= (and b!6972769 (not res!2844010)) b!6972771))

(assert (= (and b!6972769 (not res!2844006)) b!6972765))

(assert (= (and b!6972765 (not res!2844014)) b!6972770))

(assert (= (and b!6972770 (not res!2844012)) b!6972773))

(assert (= (and start!668578 ((_ is Cons!66823) l!9142)) b!6972759))

(assert (= (and start!668578 ((_ is ElementMatch!17133) r!13765)) b!6972761))

(assert (= (and start!668578 ((_ is Concat!25978) r!13765)) b!6972762))

(assert (= (and start!668578 ((_ is Star!17133) r!13765)) b!6972768))

(assert (= (and start!668578 ((_ is Union!17133) r!13765)) b!6972760))

(assert (= (and start!668578 ((_ is Cons!66824) s!9351)) b!6972766))

(declare-fun m!7660526 () Bool)

(assert (=> b!6972767 m!7660526))

(declare-fun m!7660528 () Bool)

(assert (=> b!6972767 m!7660528))

(declare-fun m!7660530 () Bool)

(assert (=> b!6972769 m!7660530))

(declare-fun m!7660532 () Bool)

(assert (=> b!6972772 m!7660532))

(declare-fun m!7660534 () Bool)

(assert (=> b!6972772 m!7660534))

(declare-fun m!7660536 () Bool)

(assert (=> b!6972772 m!7660536))

(declare-fun m!7660538 () Bool)

(assert (=> b!6972773 m!7660538))

(declare-fun m!7660540 () Bool)

(assert (=> b!6972773 m!7660540))

(declare-fun m!7660542 () Bool)

(assert (=> b!6972773 m!7660542))

(declare-fun m!7660544 () Bool)

(assert (=> b!6972763 m!7660544))

(declare-fun m!7660546 () Bool)

(assert (=> b!6972771 m!7660546))

(declare-fun m!7660548 () Bool)

(assert (=> b!6972764 m!7660548))

(declare-fun m!7660550 () Bool)

(assert (=> b!6972765 m!7660550))

(declare-fun m!7660552 () Bool)

(assert (=> b!6972765 m!7660552))

(declare-fun m!7660554 () Bool)

(assert (=> b!6972765 m!7660554))

(declare-fun m!7660556 () Bool)

(assert (=> b!6972765 m!7660556))

(assert (=> b!6972765 m!7660546))

(declare-fun m!7660558 () Bool)

(assert (=> b!6972765 m!7660558))

(declare-fun m!7660560 () Bool)

(assert (=> b!6972770 m!7660560))

(declare-fun m!7660562 () Bool)

(assert (=> start!668578 m!7660562))

(check-sat (not b!6972765) (not b!6972769) (not b!6972759) (not b!6972768) (not b!6972766) tp_is_empty!43491 (not b!6972767) (not b!6972772) (not start!668578) (not b!6972773) (not b!6972763) (not b!6972760) (not b!6972762) (not b!6972764) (not b!6972771) (not b!6972770))
(check-sat)
(get-model)

(declare-fun d!2171488 () Bool)

(declare-fun res!2844049 () Bool)

(declare-fun e!4191202 () Bool)

(assert (=> d!2171488 (=> res!2844049 e!4191202)))

(assert (=> d!2171488 (= res!2844049 ((_ is Nil!66823) l!9142))))

(assert (=> d!2171488 (= (forall!16004 l!9142 lambda!397817) e!4191202)))

(declare-fun b!6972828 () Bool)

(declare-fun e!4191203 () Bool)

(assert (=> b!6972828 (= e!4191202 e!4191203)))

(declare-fun res!2844050 () Bool)

(assert (=> b!6972828 (=> (not res!2844050) (not e!4191203))))

(declare-fun dynLambda!26647 (Int Regex!17133) Bool)

(assert (=> b!6972828 (= res!2844050 (dynLambda!26647 lambda!397817 (h!73271 l!9142)))))

(declare-fun b!6972829 () Bool)

(assert (=> b!6972829 (= e!4191203 (forall!16004 (t!380690 l!9142) lambda!397817))))

(assert (= (and d!2171488 (not res!2844049)) b!6972828))

(assert (= (and b!6972828 res!2844050) b!6972829))

(declare-fun b_lambda!260847 () Bool)

(assert (=> (not b_lambda!260847) (not b!6972828)))

(declare-fun m!7660584 () Bool)

(assert (=> b!6972828 m!7660584))

(declare-fun m!7660586 () Bool)

(assert (=> b!6972829 m!7660586))

(assert (=> start!668578 d!2171488))

(declare-fun b!6972982 () Bool)

(assert (=> b!6972982 true))

(assert (=> b!6972982 true))

(declare-fun bs!1859398 () Bool)

(declare-fun b!6972987 () Bool)

(assert (= bs!1859398 (and b!6972987 b!6972982)))

(declare-fun lambda!397837 () Int)

(declare-fun lambda!397835 () Int)

(assert (=> bs!1859398 (not (= lambda!397837 lambda!397835))))

(assert (=> b!6972987 true))

(assert (=> b!6972987 true))

(declare-fun b!6972980 () Bool)

(declare-fun e!4191292 () Bool)

(declare-fun call!632905 () Bool)

(assert (=> b!6972980 (= e!4191292 call!632905)))

(declare-fun b!6972981 () Bool)

(declare-fun res!2844116 () Bool)

(declare-fun e!4191289 () Bool)

(assert (=> b!6972981 (=> res!2844116 e!4191289)))

(assert (=> b!6972981 (= res!2844116 call!632905)))

(declare-fun e!4191288 () Bool)

(assert (=> b!6972981 (= e!4191288 e!4191289)))

(declare-fun d!2171494 () Bool)

(declare-fun c!1292626 () Bool)

(assert (=> d!2171494 (= c!1292626 ((_ is EmptyExpr!17133) (regTwo!34779 r!13765)))))

(assert (=> d!2171494 (= (matchRSpec!4150 (regTwo!34779 r!13765) s!9351) e!4191292)))

(declare-fun call!632906 () Bool)

(assert (=> b!6972982 (= e!4191289 call!632906)))

(declare-fun c!1292628 () Bool)

(declare-fun bm!632900 () Bool)

(declare-fun Exists!4096 (Int) Bool)

(assert (=> bm!632900 (= call!632906 (Exists!4096 (ite c!1292628 lambda!397835 lambda!397837)))))

(declare-fun b!6972983 () Bool)

(declare-fun e!4191294 () Bool)

(assert (=> b!6972983 (= e!4191294 (matchRSpec!4150 (regTwo!34779 (regTwo!34779 r!13765)) s!9351))))

(declare-fun b!6972984 () Bool)

(declare-fun c!1292630 () Bool)

(assert (=> b!6972984 (= c!1292630 ((_ is Union!17133) (regTwo!34779 r!13765)))))

(declare-fun e!4191291 () Bool)

(declare-fun e!4191290 () Bool)

(assert (=> b!6972984 (= e!4191291 e!4191290)))

(declare-fun bm!632901 () Bool)

(declare-fun isEmpty!39027 (List!66948) Bool)

(assert (=> bm!632901 (= call!632905 (isEmpty!39027 s!9351))))

(declare-fun b!6972985 () Bool)

(declare-fun c!1292625 () Bool)

(assert (=> b!6972985 (= c!1292625 ((_ is ElementMatch!17133) (regTwo!34779 r!13765)))))

(declare-fun e!4191296 () Bool)

(assert (=> b!6972985 (= e!4191296 e!4191291)))

(declare-fun b!6972986 () Bool)

(assert (=> b!6972986 (= e!4191290 e!4191294)))

(declare-fun res!2844114 () Bool)

(assert (=> b!6972986 (= res!2844114 (matchRSpec!4150 (regOne!34779 (regTwo!34779 r!13765)) s!9351))))

(assert (=> b!6972986 (=> res!2844114 e!4191294)))

(assert (=> b!6972987 (= e!4191288 call!632906)))

(declare-fun b!6972990 () Bool)

(assert (=> b!6972990 (= e!4191290 e!4191288)))

(assert (=> b!6972990 (= c!1292628 ((_ is Star!17133) (regTwo!34779 r!13765)))))

(declare-fun b!6972992 () Bool)

(assert (=> b!6972992 (= e!4191292 e!4191296)))

(declare-fun res!2844113 () Bool)

(assert (=> b!6972992 (= res!2844113 (not ((_ is EmptyLang!17133) (regTwo!34779 r!13765))))))

(assert (=> b!6972992 (=> (not res!2844113) (not e!4191296))))

(declare-fun b!6972994 () Bool)

(assert (=> b!6972994 (= e!4191291 (= s!9351 (Cons!66824 (c!1292573 (regTwo!34779 r!13765)) Nil!66824)))))

(assert (= (and d!2171494 c!1292626) b!6972980))

(assert (= (and d!2171494 (not c!1292626)) b!6972992))

(assert (= (and b!6972992 res!2844113) b!6972985))

(assert (= (and b!6972985 c!1292625) b!6972994))

(assert (= (and b!6972985 (not c!1292625)) b!6972984))

(assert (= (and b!6972984 c!1292630) b!6972986))

(assert (= (and b!6972984 (not c!1292630)) b!6972990))

(assert (= (and b!6972986 (not res!2844114)) b!6972983))

(assert (= (and b!6972990 c!1292628) b!6972981))

(assert (= (and b!6972990 (not c!1292628)) b!6972987))

(assert (= (and b!6972981 (not res!2844116)) b!6972982))

(assert (= (or b!6972982 b!6972987) bm!632900))

(assert (= (or b!6972980 b!6972981) bm!632901))

(declare-fun m!7660644 () Bool)

(assert (=> bm!632900 m!7660644))

(declare-fun m!7660646 () Bool)

(assert (=> b!6972983 m!7660646))

(declare-fun m!7660648 () Bool)

(assert (=> bm!632901 m!7660648))

(declare-fun m!7660650 () Bool)

(assert (=> b!6972986 m!7660650))

(assert (=> b!6972771 d!2171494))

(declare-fun bs!1859408 () Bool)

(declare-fun b!6973010 () Bool)

(assert (= bs!1859408 (and b!6973010 b!6972982)))

(declare-fun lambda!397842 () Int)

(assert (=> bs!1859408 (= (and (= (reg!17462 r!13765) (reg!17462 (regTwo!34779 r!13765))) (= r!13765 (regTwo!34779 r!13765))) (= lambda!397842 lambda!397835))))

(declare-fun bs!1859409 () Bool)

(assert (= bs!1859409 (and b!6973010 b!6972987)))

(assert (=> bs!1859409 (not (= lambda!397842 lambda!397837))))

(assert (=> b!6973010 true))

(assert (=> b!6973010 true))

(declare-fun bs!1859410 () Bool)

(declare-fun b!6973015 () Bool)

(assert (= bs!1859410 (and b!6973015 b!6972982)))

(declare-fun lambda!397843 () Int)

(assert (=> bs!1859410 (not (= lambda!397843 lambda!397835))))

(declare-fun bs!1859411 () Bool)

(assert (= bs!1859411 (and b!6973015 b!6972987)))

(assert (=> bs!1859411 (= (and (= (regOne!34778 r!13765) (regOne!34778 (regTwo!34779 r!13765))) (= (regTwo!34778 r!13765) (regTwo!34778 (regTwo!34779 r!13765)))) (= lambda!397843 lambda!397837))))

(declare-fun bs!1859412 () Bool)

(assert (= bs!1859412 (and b!6973015 b!6973010)))

(assert (=> bs!1859412 (not (= lambda!397843 lambda!397842))))

(assert (=> b!6973015 true))

(assert (=> b!6973015 true))

(declare-fun b!6973008 () Bool)

(declare-fun e!4191306 () Bool)

(declare-fun call!632909 () Bool)

(assert (=> b!6973008 (= e!4191306 call!632909)))

(declare-fun b!6973009 () Bool)

(declare-fun res!2844121 () Bool)

(declare-fun e!4191303 () Bool)

(assert (=> b!6973009 (=> res!2844121 e!4191303)))

(assert (=> b!6973009 (= res!2844121 call!632909)))

(declare-fun e!4191302 () Bool)

(assert (=> b!6973009 (= e!4191302 e!4191303)))

(declare-fun d!2171516 () Bool)

(declare-fun c!1292634 () Bool)

(assert (=> d!2171516 (= c!1292634 ((_ is EmptyExpr!17133) r!13765))))

(assert (=> d!2171516 (= (matchRSpec!4150 r!13765 s!9351) e!4191306)))

(declare-fun call!632910 () Bool)

(assert (=> b!6973010 (= e!4191303 call!632910)))

(declare-fun c!1292635 () Bool)

(declare-fun bm!632904 () Bool)

(assert (=> bm!632904 (= call!632910 (Exists!4096 (ite c!1292635 lambda!397842 lambda!397843)))))

(declare-fun b!6973011 () Bool)

(declare-fun e!4191307 () Bool)

(assert (=> b!6973011 (= e!4191307 (matchRSpec!4150 (regTwo!34779 r!13765) s!9351))))

(declare-fun b!6973012 () Bool)

(declare-fun c!1292636 () Bool)

(assert (=> b!6973012 (= c!1292636 ((_ is Union!17133) r!13765))))

(declare-fun e!4191305 () Bool)

(declare-fun e!4191304 () Bool)

(assert (=> b!6973012 (= e!4191305 e!4191304)))

(declare-fun bm!632905 () Bool)

(assert (=> bm!632905 (= call!632909 (isEmpty!39027 s!9351))))

(declare-fun b!6973013 () Bool)

(declare-fun c!1292633 () Bool)

(assert (=> b!6973013 (= c!1292633 ((_ is ElementMatch!17133) r!13765))))

(declare-fun e!4191308 () Bool)

(assert (=> b!6973013 (= e!4191308 e!4191305)))

(declare-fun b!6973014 () Bool)

(assert (=> b!6973014 (= e!4191304 e!4191307)))

(declare-fun res!2844120 () Bool)

(assert (=> b!6973014 (= res!2844120 (matchRSpec!4150 (regOne!34779 r!13765) s!9351))))

(assert (=> b!6973014 (=> res!2844120 e!4191307)))

(assert (=> b!6973015 (= e!4191302 call!632910)))

(declare-fun b!6973016 () Bool)

(assert (=> b!6973016 (= e!4191304 e!4191302)))

(assert (=> b!6973016 (= c!1292635 ((_ is Star!17133) r!13765))))

(declare-fun b!6973017 () Bool)

(assert (=> b!6973017 (= e!4191306 e!4191308)))

(declare-fun res!2844119 () Bool)

(assert (=> b!6973017 (= res!2844119 (not ((_ is EmptyLang!17133) r!13765)))))

(assert (=> b!6973017 (=> (not res!2844119) (not e!4191308))))

(declare-fun b!6973018 () Bool)

(assert (=> b!6973018 (= e!4191305 (= s!9351 (Cons!66824 (c!1292573 r!13765) Nil!66824)))))

(assert (= (and d!2171516 c!1292634) b!6973008))

(assert (= (and d!2171516 (not c!1292634)) b!6973017))

(assert (= (and b!6973017 res!2844119) b!6973013))

(assert (= (and b!6973013 c!1292633) b!6973018))

(assert (= (and b!6973013 (not c!1292633)) b!6973012))

(assert (= (and b!6973012 c!1292636) b!6973014))

(assert (= (and b!6973012 (not c!1292636)) b!6973016))

(assert (= (and b!6973014 (not res!2844120)) b!6973011))

(assert (= (and b!6973016 c!1292635) b!6973009))

(assert (= (and b!6973016 (not c!1292635)) b!6973015))

(assert (= (and b!6973009 (not res!2844121)) b!6973010))

(assert (= (or b!6973010 b!6973015) bm!632904))

(assert (= (or b!6973008 b!6973009) bm!632905))

(declare-fun m!7660656 () Bool)

(assert (=> bm!632904 m!7660656))

(assert (=> b!6973011 m!7660546))

(assert (=> bm!632905 m!7660648))

(assert (=> b!6973014 m!7660530))

(assert (=> b!6972772 d!2171516))

(declare-fun b!6973103 () Bool)

(declare-fun res!2844147 () Bool)

(declare-fun e!4191351 () Bool)

(assert (=> b!6973103 (=> res!2844147 e!4191351)))

(declare-fun e!4191348 () Bool)

(assert (=> b!6973103 (= res!2844147 e!4191348)))

(declare-fun res!2844143 () Bool)

(assert (=> b!6973103 (=> (not res!2844143) (not e!4191348))))

(declare-fun lt!2479843 () Bool)

(assert (=> b!6973103 (= res!2844143 lt!2479843)))

(declare-fun b!6973104 () Bool)

(declare-fun e!4191349 () Bool)

(declare-fun nullable!6918 (Regex!17133) Bool)

(assert (=> b!6973104 (= e!4191349 (nullable!6918 r!13765))))

(declare-fun b!6973105 () Bool)

(declare-fun head!14038 (List!66948) C!34536)

(assert (=> b!6973105 (= e!4191348 (= (head!14038 s!9351) (c!1292573 r!13765)))))

(declare-fun bm!632908 () Bool)

(declare-fun call!632913 () Bool)

(assert (=> bm!632908 (= call!632913 (isEmpty!39027 s!9351))))

(declare-fun b!6973106 () Bool)

(declare-fun e!4191345 () Bool)

(declare-fun e!4191347 () Bool)

(assert (=> b!6973106 (= e!4191345 e!4191347)))

(declare-fun c!1292648 () Bool)

(assert (=> b!6973106 (= c!1292648 ((_ is EmptyLang!17133) r!13765))))

(declare-fun d!2171522 () Bool)

(assert (=> d!2171522 e!4191345))

(declare-fun c!1292647 () Bool)

(assert (=> d!2171522 (= c!1292647 ((_ is EmptyExpr!17133) r!13765))))

(assert (=> d!2171522 (= lt!2479843 e!4191349)))

(declare-fun c!1292649 () Bool)

(assert (=> d!2171522 (= c!1292649 (isEmpty!39027 s!9351))))

(declare-fun validRegex!8815 (Regex!17133) Bool)

(assert (=> d!2171522 (validRegex!8815 r!13765)))

(assert (=> d!2171522 (= (matchR!9235 r!13765 s!9351) lt!2479843)))

(declare-fun b!6973107 () Bool)

(assert (=> b!6973107 (= e!4191347 (not lt!2479843))))

(declare-fun b!6973108 () Bool)

(declare-fun e!4191350 () Bool)

(assert (=> b!6973108 (= e!4191351 e!4191350)))

(declare-fun res!2844142 () Bool)

(assert (=> b!6973108 (=> (not res!2844142) (not e!4191350))))

(assert (=> b!6973108 (= res!2844142 (not lt!2479843))))

(declare-fun b!6973109 () Bool)

(declare-fun e!4191346 () Bool)

(assert (=> b!6973109 (= e!4191350 e!4191346)))

(declare-fun res!2844145 () Bool)

(assert (=> b!6973109 (=> res!2844145 e!4191346)))

(assert (=> b!6973109 (= res!2844145 call!632913)))

(declare-fun b!6973110 () Bool)

(declare-fun res!2844146 () Bool)

(assert (=> b!6973110 (=> res!2844146 e!4191346)))

(declare-fun tail!13107 (List!66948) List!66948)

(assert (=> b!6973110 (= res!2844146 (not (isEmpty!39027 (tail!13107 s!9351))))))

(declare-fun b!6973111 () Bool)

(assert (=> b!6973111 (= e!4191345 (= lt!2479843 call!632913))))

(declare-fun b!6973112 () Bool)

(declare-fun res!2844148 () Bool)

(assert (=> b!6973112 (=> res!2844148 e!4191351)))

(assert (=> b!6973112 (= res!2844148 (not ((_ is ElementMatch!17133) r!13765)))))

(assert (=> b!6973112 (= e!4191347 e!4191351)))

(declare-fun b!6973113 () Bool)

(declare-fun res!2844149 () Bool)

(assert (=> b!6973113 (=> (not res!2844149) (not e!4191348))))

(assert (=> b!6973113 (= res!2844149 (not call!632913))))

(declare-fun b!6973114 () Bool)

(declare-fun derivativeStep!5543 (Regex!17133 C!34536) Regex!17133)

(assert (=> b!6973114 (= e!4191349 (matchR!9235 (derivativeStep!5543 r!13765 (head!14038 s!9351)) (tail!13107 s!9351)))))

(declare-fun b!6973115 () Bool)

(assert (=> b!6973115 (= e!4191346 (not (= (head!14038 s!9351) (c!1292573 r!13765))))))

(declare-fun b!6973116 () Bool)

(declare-fun res!2844144 () Bool)

(assert (=> b!6973116 (=> (not res!2844144) (not e!4191348))))

(assert (=> b!6973116 (= res!2844144 (isEmpty!39027 (tail!13107 s!9351)))))

(assert (= (and d!2171522 c!1292649) b!6973104))

(assert (= (and d!2171522 (not c!1292649)) b!6973114))

(assert (= (and d!2171522 c!1292647) b!6973111))

(assert (= (and d!2171522 (not c!1292647)) b!6973106))

(assert (= (and b!6973106 c!1292648) b!6973107))

(assert (= (and b!6973106 (not c!1292648)) b!6973112))

(assert (= (and b!6973112 (not res!2844148)) b!6973103))

(assert (= (and b!6973103 res!2844143) b!6973113))

(assert (= (and b!6973113 res!2844149) b!6973116))

(assert (= (and b!6973116 res!2844144) b!6973105))

(assert (= (and b!6973103 (not res!2844147)) b!6973108))

(assert (= (and b!6973108 res!2844142) b!6973109))

(assert (= (and b!6973109 (not res!2844145)) b!6973110))

(assert (= (and b!6973110 (not res!2844146)) b!6973115))

(assert (= (or b!6973111 b!6973113 b!6973109) bm!632908))

(assert (=> d!2171522 m!7660648))

(declare-fun m!7660686 () Bool)

(assert (=> d!2171522 m!7660686))

(declare-fun m!7660688 () Bool)

(assert (=> b!6973114 m!7660688))

(assert (=> b!6973114 m!7660688))

(declare-fun m!7660690 () Bool)

(assert (=> b!6973114 m!7660690))

(declare-fun m!7660692 () Bool)

(assert (=> b!6973114 m!7660692))

(assert (=> b!6973114 m!7660690))

(assert (=> b!6973114 m!7660692))

(declare-fun m!7660694 () Bool)

(assert (=> b!6973114 m!7660694))

(assert (=> b!6973105 m!7660688))

(assert (=> b!6973116 m!7660692))

(assert (=> b!6973116 m!7660692))

(declare-fun m!7660696 () Bool)

(assert (=> b!6973116 m!7660696))

(assert (=> b!6973115 m!7660688))

(assert (=> bm!632908 m!7660648))

(declare-fun m!7660698 () Bool)

(assert (=> b!6973104 m!7660698))

(assert (=> b!6973110 m!7660692))

(assert (=> b!6973110 m!7660692))

(assert (=> b!6973110 m!7660696))

(assert (=> b!6972772 d!2171522))

(declare-fun d!2171530 () Bool)

(assert (=> d!2171530 (= (matchR!9235 r!13765 s!9351) (matchRSpec!4150 r!13765 s!9351))))

(declare-fun lt!2479846 () Unit!160918)

(declare-fun choose!51916 (Regex!17133 List!66948) Unit!160918)

(assert (=> d!2171530 (= lt!2479846 (choose!51916 r!13765 s!9351))))

(assert (=> d!2171530 (validRegex!8815 r!13765)))

(assert (=> d!2171530 (= (mainMatchTheorem!4144 r!13765 s!9351) lt!2479846)))

(declare-fun bs!1859427 () Bool)

(assert (= bs!1859427 d!2171530))

(assert (=> bs!1859427 m!7660534))

(assert (=> bs!1859427 m!7660532))

(declare-fun m!7660700 () Bool)

(assert (=> bs!1859427 m!7660700))

(assert (=> bs!1859427 m!7660686))

(assert (=> b!6972772 d!2171530))

(declare-fun bs!1859428 () Bool)

(declare-fun d!2171532 () Bool)

(assert (= bs!1859428 (and d!2171532 start!668578)))

(declare-fun lambda!397853 () Int)

(assert (=> bs!1859428 (= lambda!397853 lambda!397817)))

(declare-fun bs!1859429 () Bool)

(assert (= bs!1859429 (and d!2171532 b!6972773)))

(assert (=> bs!1859429 (not (= lambda!397853 lambda!397818))))

(declare-fun b!6973137 () Bool)

(declare-fun e!4191369 () Bool)

(declare-fun lt!2479849 () Regex!17133)

(declare-fun isEmptyLang!2071 (Regex!17133) Bool)

(assert (=> b!6973137 (= e!4191369 (isEmptyLang!2071 lt!2479849))))

(declare-fun b!6973138 () Bool)

(declare-fun e!4191367 () Bool)

(assert (=> b!6973138 (= e!4191367 (isEmpty!39025 (t!380690 lt!2479822)))))

(declare-fun b!6973139 () Bool)

(declare-fun e!4191368 () Regex!17133)

(assert (=> b!6973139 (= e!4191368 (h!73271 lt!2479822))))

(declare-fun b!6973140 () Bool)

(declare-fun e!4191366 () Bool)

(declare-fun head!14039 (List!66947) Regex!17133)

(assert (=> b!6973140 (= e!4191366 (= lt!2479849 (head!14039 lt!2479822)))))

(declare-fun b!6973141 () Bool)

(declare-fun e!4191365 () Regex!17133)

(assert (=> b!6973141 (= e!4191368 e!4191365)))

(declare-fun c!1292661 () Bool)

(assert (=> b!6973141 (= c!1292661 ((_ is Cons!66823) lt!2479822))))

(declare-fun e!4191364 () Bool)

(assert (=> d!2171532 e!4191364))

(declare-fun res!2844155 () Bool)

(assert (=> d!2171532 (=> (not res!2844155) (not e!4191364))))

(assert (=> d!2171532 (= res!2844155 (validRegex!8815 lt!2479849))))

(assert (=> d!2171532 (= lt!2479849 e!4191368)))

(declare-fun c!1292658 () Bool)

(assert (=> d!2171532 (= c!1292658 e!4191367)))

(declare-fun res!2844154 () Bool)

(assert (=> d!2171532 (=> (not res!2844154) (not e!4191367))))

(assert (=> d!2171532 (= res!2844154 ((_ is Cons!66823) lt!2479822))))

(assert (=> d!2171532 (forall!16004 lt!2479822 lambda!397853)))

(assert (=> d!2171532 (= (generalisedUnion!2608 lt!2479822) lt!2479849)))

(declare-fun b!6973142 () Bool)

(assert (=> b!6973142 (= e!4191369 e!4191366)))

(declare-fun c!1292660 () Bool)

(assert (=> b!6973142 (= c!1292660 (isEmpty!39025 (tail!13105 lt!2479822)))))

(declare-fun b!6973143 () Bool)

(assert (=> b!6973143 (= e!4191365 (Union!17133 (h!73271 lt!2479822) (generalisedUnion!2608 (t!380690 lt!2479822))))))

(declare-fun b!6973144 () Bool)

(assert (=> b!6973144 (= e!4191364 e!4191369)))

(declare-fun c!1292659 () Bool)

(assert (=> b!6973144 (= c!1292659 (isEmpty!39025 lt!2479822))))

(declare-fun b!6973145 () Bool)

(assert (=> b!6973145 (= e!4191365 EmptyLang!17133)))

(declare-fun b!6973146 () Bool)

(declare-fun isUnion!1499 (Regex!17133) Bool)

(assert (=> b!6973146 (= e!4191366 (isUnion!1499 lt!2479849))))

(assert (= (and d!2171532 res!2844154) b!6973138))

(assert (= (and d!2171532 c!1292658) b!6973139))

(assert (= (and d!2171532 (not c!1292658)) b!6973141))

(assert (= (and b!6973141 c!1292661) b!6973143))

(assert (= (and b!6973141 (not c!1292661)) b!6973145))

(assert (= (and d!2171532 res!2844155) b!6973144))

(assert (= (and b!6973144 c!1292659) b!6973137))

(assert (= (and b!6973144 (not c!1292659)) b!6973142))

(assert (= (and b!6973142 c!1292660) b!6973140))

(assert (= (and b!6973142 (not c!1292660)) b!6973146))

(declare-fun m!7660702 () Bool)

(assert (=> b!6973142 m!7660702))

(assert (=> b!6973142 m!7660702))

(declare-fun m!7660704 () Bool)

(assert (=> b!6973142 m!7660704))

(assert (=> b!6973144 m!7660526))

(declare-fun m!7660706 () Bool)

(assert (=> b!6973138 m!7660706))

(declare-fun m!7660708 () Bool)

(assert (=> b!6973143 m!7660708))

(declare-fun m!7660710 () Bool)

(assert (=> b!6973137 m!7660710))

(declare-fun m!7660712 () Bool)

(assert (=> d!2171532 m!7660712))

(declare-fun m!7660714 () Bool)

(assert (=> d!2171532 m!7660714))

(declare-fun m!7660716 () Bool)

(assert (=> b!6973146 m!7660716))

(declare-fun m!7660718 () Bool)

(assert (=> b!6973140 m!7660718))

(assert (=> b!6972770 d!2171532))

(declare-fun b!6973147 () Bool)

(declare-fun res!2844161 () Bool)

(declare-fun e!4191376 () Bool)

(assert (=> b!6973147 (=> res!2844161 e!4191376)))

(declare-fun e!4191373 () Bool)

(assert (=> b!6973147 (= res!2844161 e!4191373)))

(declare-fun res!2844157 () Bool)

(assert (=> b!6973147 (=> (not res!2844157) (not e!4191373))))

(declare-fun lt!2479850 () Bool)

(assert (=> b!6973147 (= res!2844157 lt!2479850)))

(declare-fun b!6973148 () Bool)

(declare-fun e!4191374 () Bool)

(assert (=> b!6973148 (= e!4191374 (nullable!6918 (regTwo!34779 r!13765)))))

(declare-fun b!6973149 () Bool)

(assert (=> b!6973149 (= e!4191373 (= (head!14038 s!9351) (c!1292573 (regTwo!34779 r!13765))))))

(declare-fun bm!632909 () Bool)

(declare-fun call!632914 () Bool)

(assert (=> bm!632909 (= call!632914 (isEmpty!39027 s!9351))))

(declare-fun b!6973150 () Bool)

(declare-fun e!4191370 () Bool)

(declare-fun e!4191372 () Bool)

(assert (=> b!6973150 (= e!4191370 e!4191372)))

(declare-fun c!1292663 () Bool)

(assert (=> b!6973150 (= c!1292663 ((_ is EmptyLang!17133) (regTwo!34779 r!13765)))))

(declare-fun d!2171534 () Bool)

(assert (=> d!2171534 e!4191370))

(declare-fun c!1292662 () Bool)

(assert (=> d!2171534 (= c!1292662 ((_ is EmptyExpr!17133) (regTwo!34779 r!13765)))))

(assert (=> d!2171534 (= lt!2479850 e!4191374)))

(declare-fun c!1292664 () Bool)

(assert (=> d!2171534 (= c!1292664 (isEmpty!39027 s!9351))))

(assert (=> d!2171534 (validRegex!8815 (regTwo!34779 r!13765))))

(assert (=> d!2171534 (= (matchR!9235 (regTwo!34779 r!13765) s!9351) lt!2479850)))

(declare-fun b!6973151 () Bool)

(assert (=> b!6973151 (= e!4191372 (not lt!2479850))))

(declare-fun b!6973152 () Bool)

(declare-fun e!4191375 () Bool)

(assert (=> b!6973152 (= e!4191376 e!4191375)))

(declare-fun res!2844156 () Bool)

(assert (=> b!6973152 (=> (not res!2844156) (not e!4191375))))

(assert (=> b!6973152 (= res!2844156 (not lt!2479850))))

(declare-fun b!6973153 () Bool)

(declare-fun e!4191371 () Bool)

(assert (=> b!6973153 (= e!4191375 e!4191371)))

(declare-fun res!2844159 () Bool)

(assert (=> b!6973153 (=> res!2844159 e!4191371)))

(assert (=> b!6973153 (= res!2844159 call!632914)))

(declare-fun b!6973154 () Bool)

(declare-fun res!2844160 () Bool)

(assert (=> b!6973154 (=> res!2844160 e!4191371)))

(assert (=> b!6973154 (= res!2844160 (not (isEmpty!39027 (tail!13107 s!9351))))))

(declare-fun b!6973155 () Bool)

(assert (=> b!6973155 (= e!4191370 (= lt!2479850 call!632914))))

(declare-fun b!6973156 () Bool)

(declare-fun res!2844162 () Bool)

(assert (=> b!6973156 (=> res!2844162 e!4191376)))

(assert (=> b!6973156 (= res!2844162 (not ((_ is ElementMatch!17133) (regTwo!34779 r!13765))))))

(assert (=> b!6973156 (= e!4191372 e!4191376)))

(declare-fun b!6973157 () Bool)

(declare-fun res!2844163 () Bool)

(assert (=> b!6973157 (=> (not res!2844163) (not e!4191373))))

(assert (=> b!6973157 (= res!2844163 (not call!632914))))

(declare-fun b!6973158 () Bool)

(assert (=> b!6973158 (= e!4191374 (matchR!9235 (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351)) (tail!13107 s!9351)))))

(declare-fun b!6973159 () Bool)

(assert (=> b!6973159 (= e!4191371 (not (= (head!14038 s!9351) (c!1292573 (regTwo!34779 r!13765)))))))

(declare-fun b!6973160 () Bool)

(declare-fun res!2844158 () Bool)

(assert (=> b!6973160 (=> (not res!2844158) (not e!4191373))))

(assert (=> b!6973160 (= res!2844158 (isEmpty!39027 (tail!13107 s!9351)))))

(assert (= (and d!2171534 c!1292664) b!6973148))

(assert (= (and d!2171534 (not c!1292664)) b!6973158))

(assert (= (and d!2171534 c!1292662) b!6973155))

(assert (= (and d!2171534 (not c!1292662)) b!6973150))

(assert (= (and b!6973150 c!1292663) b!6973151))

(assert (= (and b!6973150 (not c!1292663)) b!6973156))

(assert (= (and b!6973156 (not res!2844162)) b!6973147))

(assert (= (and b!6973147 res!2844157) b!6973157))

(assert (= (and b!6973157 res!2844163) b!6973160))

(assert (= (and b!6973160 res!2844158) b!6973149))

(assert (= (and b!6973147 (not res!2844161)) b!6973152))

(assert (= (and b!6973152 res!2844156) b!6973153))

(assert (= (and b!6973153 (not res!2844159)) b!6973154))

(assert (= (and b!6973154 (not res!2844160)) b!6973159))

(assert (= (or b!6973155 b!6973157 b!6973153) bm!632909))

(assert (=> d!2171534 m!7660648))

(declare-fun m!7660720 () Bool)

(assert (=> d!2171534 m!7660720))

(assert (=> b!6973158 m!7660688))

(assert (=> b!6973158 m!7660688))

(declare-fun m!7660722 () Bool)

(assert (=> b!6973158 m!7660722))

(assert (=> b!6973158 m!7660692))

(assert (=> b!6973158 m!7660722))

(assert (=> b!6973158 m!7660692))

(declare-fun m!7660724 () Bool)

(assert (=> b!6973158 m!7660724))

(assert (=> b!6973149 m!7660688))

(assert (=> b!6973160 m!7660692))

(assert (=> b!6973160 m!7660692))

(assert (=> b!6973160 m!7660696))

(assert (=> b!6973159 m!7660688))

(assert (=> bm!632909 m!7660648))

(declare-fun m!7660726 () Bool)

(assert (=> b!6973148 m!7660726))

(assert (=> b!6973154 m!7660692))

(assert (=> b!6973154 m!7660692))

(assert (=> b!6973154 m!7660696))

(assert (=> b!6972765 d!2171534))

(assert (=> b!6972765 d!2171494))

(declare-fun d!2171536 () Bool)

(assert (=> d!2171536 (= (matchR!9235 (regTwo!34779 r!13765) s!9351) (matchRSpec!4150 (regTwo!34779 r!13765) s!9351))))

(declare-fun lt!2479851 () Unit!160918)

(assert (=> d!2171536 (= lt!2479851 (choose!51916 (regTwo!34779 r!13765) s!9351))))

(assert (=> d!2171536 (validRegex!8815 (regTwo!34779 r!13765))))

(assert (=> d!2171536 (= (mainMatchTheorem!4144 (regTwo!34779 r!13765) s!9351) lt!2479851)))

(declare-fun bs!1859430 () Bool)

(assert (= bs!1859430 d!2171536))

(assert (=> bs!1859430 m!7660550))

(assert (=> bs!1859430 m!7660546))

(declare-fun m!7660728 () Bool)

(assert (=> bs!1859430 m!7660728))

(assert (=> bs!1859430 m!7660720))

(assert (=> b!6972765 d!2171536))

(declare-fun b!6973161 () Bool)

(declare-fun res!2844169 () Bool)

(declare-fun e!4191383 () Bool)

(assert (=> b!6973161 (=> res!2844169 e!4191383)))

(declare-fun e!4191380 () Bool)

(assert (=> b!6973161 (= res!2844169 e!4191380)))

(declare-fun res!2844165 () Bool)

(assert (=> b!6973161 (=> (not res!2844165) (not e!4191380))))

(declare-fun lt!2479852 () Bool)

(assert (=> b!6973161 (= res!2844165 lt!2479852)))

(declare-fun b!6973162 () Bool)

(declare-fun e!4191381 () Bool)

(assert (=> b!6973162 (= e!4191381 (nullable!6918 (regOne!34779 r!13765)))))

(declare-fun b!6973163 () Bool)

(assert (=> b!6973163 (= e!4191380 (= (head!14038 s!9351) (c!1292573 (regOne!34779 r!13765))))))

(declare-fun bm!632910 () Bool)

(declare-fun call!632915 () Bool)

(assert (=> bm!632910 (= call!632915 (isEmpty!39027 s!9351))))

(declare-fun b!6973164 () Bool)

(declare-fun e!4191377 () Bool)

(declare-fun e!4191379 () Bool)

(assert (=> b!6973164 (= e!4191377 e!4191379)))

(declare-fun c!1292666 () Bool)

(assert (=> b!6973164 (= c!1292666 ((_ is EmptyLang!17133) (regOne!34779 r!13765)))))

(declare-fun d!2171538 () Bool)

(assert (=> d!2171538 e!4191377))

(declare-fun c!1292665 () Bool)

(assert (=> d!2171538 (= c!1292665 ((_ is EmptyExpr!17133) (regOne!34779 r!13765)))))

(assert (=> d!2171538 (= lt!2479852 e!4191381)))

(declare-fun c!1292667 () Bool)

(assert (=> d!2171538 (= c!1292667 (isEmpty!39027 s!9351))))

(assert (=> d!2171538 (validRegex!8815 (regOne!34779 r!13765))))

(assert (=> d!2171538 (= (matchR!9235 (regOne!34779 r!13765) s!9351) lt!2479852)))

(declare-fun b!6973165 () Bool)

(assert (=> b!6973165 (= e!4191379 (not lt!2479852))))

(declare-fun b!6973166 () Bool)

(declare-fun e!4191382 () Bool)

(assert (=> b!6973166 (= e!4191383 e!4191382)))

(declare-fun res!2844164 () Bool)

(assert (=> b!6973166 (=> (not res!2844164) (not e!4191382))))

(assert (=> b!6973166 (= res!2844164 (not lt!2479852))))

(declare-fun b!6973167 () Bool)

(declare-fun e!4191378 () Bool)

(assert (=> b!6973167 (= e!4191382 e!4191378)))

(declare-fun res!2844167 () Bool)

(assert (=> b!6973167 (=> res!2844167 e!4191378)))

(assert (=> b!6973167 (= res!2844167 call!632915)))

(declare-fun b!6973168 () Bool)

(declare-fun res!2844168 () Bool)

(assert (=> b!6973168 (=> res!2844168 e!4191378)))

(assert (=> b!6973168 (= res!2844168 (not (isEmpty!39027 (tail!13107 s!9351))))))

(declare-fun b!6973169 () Bool)

(assert (=> b!6973169 (= e!4191377 (= lt!2479852 call!632915))))

(declare-fun b!6973170 () Bool)

(declare-fun res!2844170 () Bool)

(assert (=> b!6973170 (=> res!2844170 e!4191383)))

(assert (=> b!6973170 (= res!2844170 (not ((_ is ElementMatch!17133) (regOne!34779 r!13765))))))

(assert (=> b!6973170 (= e!4191379 e!4191383)))

(declare-fun b!6973171 () Bool)

(declare-fun res!2844171 () Bool)

(assert (=> b!6973171 (=> (not res!2844171) (not e!4191380))))

(assert (=> b!6973171 (= res!2844171 (not call!632915))))

(declare-fun b!6973172 () Bool)

(assert (=> b!6973172 (= e!4191381 (matchR!9235 (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351)) (tail!13107 s!9351)))))

(declare-fun b!6973173 () Bool)

(assert (=> b!6973173 (= e!4191378 (not (= (head!14038 s!9351) (c!1292573 (regOne!34779 r!13765)))))))

(declare-fun b!6973174 () Bool)

(declare-fun res!2844166 () Bool)

(assert (=> b!6973174 (=> (not res!2844166) (not e!4191380))))

(assert (=> b!6973174 (= res!2844166 (isEmpty!39027 (tail!13107 s!9351)))))

(assert (= (and d!2171538 c!1292667) b!6973162))

(assert (= (and d!2171538 (not c!1292667)) b!6973172))

(assert (= (and d!2171538 c!1292665) b!6973169))

(assert (= (and d!2171538 (not c!1292665)) b!6973164))

(assert (= (and b!6973164 c!1292666) b!6973165))

(assert (= (and b!6973164 (not c!1292666)) b!6973170))

(assert (= (and b!6973170 (not res!2844170)) b!6973161))

(assert (= (and b!6973161 res!2844165) b!6973171))

(assert (= (and b!6973171 res!2844171) b!6973174))

(assert (= (and b!6973174 res!2844166) b!6973163))

(assert (= (and b!6973161 (not res!2844169)) b!6973166))

(assert (= (and b!6973166 res!2844164) b!6973167))

(assert (= (and b!6973167 (not res!2844167)) b!6973168))

(assert (= (and b!6973168 (not res!2844168)) b!6973173))

(assert (= (or b!6973169 b!6973171 b!6973167) bm!632910))

(assert (=> d!2171538 m!7660648))

(declare-fun m!7660730 () Bool)

(assert (=> d!2171538 m!7660730))

(assert (=> b!6973172 m!7660688))

(assert (=> b!6973172 m!7660688))

(declare-fun m!7660732 () Bool)

(assert (=> b!6973172 m!7660732))

(assert (=> b!6973172 m!7660692))

(assert (=> b!6973172 m!7660732))

(assert (=> b!6973172 m!7660692))

(declare-fun m!7660734 () Bool)

(assert (=> b!6973172 m!7660734))

(assert (=> b!6973163 m!7660688))

(assert (=> b!6973174 m!7660692))

(assert (=> b!6973174 m!7660692))

(assert (=> b!6973174 m!7660696))

(assert (=> b!6973173 m!7660688))

(assert (=> bm!632910 m!7660648))

(declare-fun m!7660736 () Bool)

(assert (=> b!6973162 m!7660736))

(assert (=> b!6973168 m!7660692))

(assert (=> b!6973168 m!7660692))

(assert (=> b!6973168 m!7660696))

(assert (=> b!6972765 d!2171538))

(declare-fun d!2171540 () Bool)

(declare-fun res!2844172 () Bool)

(declare-fun e!4191384 () Bool)

(assert (=> d!2171540 (=> res!2844172 e!4191384)))

(assert (=> d!2171540 (= res!2844172 ((_ is Nil!66823) lt!2479822))))

(assert (=> d!2171540 (= (forall!16004 lt!2479822 lambda!397817) e!4191384)))

(declare-fun b!6973175 () Bool)

(declare-fun e!4191385 () Bool)

(assert (=> b!6973175 (= e!4191384 e!4191385)))

(declare-fun res!2844173 () Bool)

(assert (=> b!6973175 (=> (not res!2844173) (not e!4191385))))

(assert (=> b!6973175 (= res!2844173 (dynLambda!26647 lambda!397817 (h!73271 lt!2479822)))))

(declare-fun b!6973176 () Bool)

(assert (=> b!6973176 (= e!4191385 (forall!16004 (t!380690 lt!2479822) lambda!397817))))

(assert (= (and d!2171540 (not res!2844172)) b!6973175))

(assert (= (and b!6973175 res!2844173) b!6973176))

(declare-fun b_lambda!260855 () Bool)

(assert (=> (not b_lambda!260855) (not b!6973175)))

(declare-fun m!7660738 () Bool)

(assert (=> b!6973175 m!7660738))

(declare-fun m!7660740 () Bool)

(assert (=> b!6973176 m!7660740))

(assert (=> b!6972765 d!2171540))

(declare-fun d!2171542 () Bool)

(assert (=> d!2171542 (= (matchR!9235 (regOne!34779 r!13765) s!9351) (matchRSpec!4150 (regOne!34779 r!13765) s!9351))))

(declare-fun lt!2479853 () Unit!160918)

(assert (=> d!2171542 (= lt!2479853 (choose!51916 (regOne!34779 r!13765) s!9351))))

(assert (=> d!2171542 (validRegex!8815 (regOne!34779 r!13765))))

(assert (=> d!2171542 (= (mainMatchTheorem!4144 (regOne!34779 r!13765) s!9351) lt!2479853)))

(declare-fun bs!1859431 () Bool)

(assert (= bs!1859431 d!2171542))

(assert (=> bs!1859431 m!7660554))

(assert (=> bs!1859431 m!7660530))

(declare-fun m!7660742 () Bool)

(assert (=> bs!1859431 m!7660742))

(assert (=> bs!1859431 m!7660730))

(assert (=> b!6972765 d!2171542))

(declare-fun d!2171544 () Bool)

(assert (=> d!2171544 (= (isEmpty!39025 l!9142) ((_ is Nil!66823) l!9142))))

(assert (=> b!6972763 d!2171544))

(declare-fun bs!1859432 () Bool)

(declare-fun d!2171546 () Bool)

(assert (= bs!1859432 (and d!2171546 start!668578)))

(declare-fun lambda!397854 () Int)

(assert (=> bs!1859432 (= lambda!397854 lambda!397817)))

(declare-fun bs!1859433 () Bool)

(assert (= bs!1859433 (and d!2171546 b!6972773)))

(assert (=> bs!1859433 (not (= lambda!397854 lambda!397818))))

(declare-fun bs!1859434 () Bool)

(assert (= bs!1859434 (and d!2171546 d!2171532)))

(assert (=> bs!1859434 (= lambda!397854 lambda!397853)))

(declare-fun b!6973177 () Bool)

(declare-fun e!4191391 () Bool)

(declare-fun lt!2479854 () Regex!17133)

(assert (=> b!6973177 (= e!4191391 (isEmptyLang!2071 lt!2479854))))

(declare-fun b!6973178 () Bool)

(declare-fun e!4191389 () Bool)

(assert (=> b!6973178 (= e!4191389 (isEmpty!39025 (t!380690 l!9142)))))

(declare-fun b!6973179 () Bool)

(declare-fun e!4191390 () Regex!17133)

(assert (=> b!6973179 (= e!4191390 (h!73271 l!9142))))

(declare-fun b!6973180 () Bool)

(declare-fun e!4191388 () Bool)

(assert (=> b!6973180 (= e!4191388 (= lt!2479854 (head!14039 l!9142)))))

(declare-fun b!6973181 () Bool)

(declare-fun e!4191387 () Regex!17133)

(assert (=> b!6973181 (= e!4191390 e!4191387)))

(declare-fun c!1292671 () Bool)

(assert (=> b!6973181 (= c!1292671 ((_ is Cons!66823) l!9142))))

(declare-fun e!4191386 () Bool)

(assert (=> d!2171546 e!4191386))

(declare-fun res!2844175 () Bool)

(assert (=> d!2171546 (=> (not res!2844175) (not e!4191386))))

(assert (=> d!2171546 (= res!2844175 (validRegex!8815 lt!2479854))))

(assert (=> d!2171546 (= lt!2479854 e!4191390)))

(declare-fun c!1292668 () Bool)

(assert (=> d!2171546 (= c!1292668 e!4191389)))

(declare-fun res!2844174 () Bool)

(assert (=> d!2171546 (=> (not res!2844174) (not e!4191389))))

(assert (=> d!2171546 (= res!2844174 ((_ is Cons!66823) l!9142))))

(assert (=> d!2171546 (forall!16004 l!9142 lambda!397854)))

(assert (=> d!2171546 (= (generalisedUnion!2608 l!9142) lt!2479854)))

(declare-fun b!6973182 () Bool)

(assert (=> b!6973182 (= e!4191391 e!4191388)))

(declare-fun c!1292670 () Bool)

(assert (=> b!6973182 (= c!1292670 (isEmpty!39025 (tail!13105 l!9142)))))

(declare-fun b!6973183 () Bool)

(assert (=> b!6973183 (= e!4191387 (Union!17133 (h!73271 l!9142) (generalisedUnion!2608 (t!380690 l!9142))))))

(declare-fun b!6973184 () Bool)

(assert (=> b!6973184 (= e!4191386 e!4191391)))

(declare-fun c!1292669 () Bool)

(assert (=> b!6973184 (= c!1292669 (isEmpty!39025 l!9142))))

(declare-fun b!6973185 () Bool)

(assert (=> b!6973185 (= e!4191387 EmptyLang!17133)))

(declare-fun b!6973186 () Bool)

(assert (=> b!6973186 (= e!4191388 (isUnion!1499 lt!2479854))))

(assert (= (and d!2171546 res!2844174) b!6973178))

(assert (= (and d!2171546 c!1292668) b!6973179))

(assert (= (and d!2171546 (not c!1292668)) b!6973181))

(assert (= (and b!6973181 c!1292671) b!6973183))

(assert (= (and b!6973181 (not c!1292671)) b!6973185))

(assert (= (and d!2171546 res!2844175) b!6973184))

(assert (= (and b!6973184 c!1292669) b!6973177))

(assert (= (and b!6973184 (not c!1292669)) b!6973182))

(assert (= (and b!6973182 c!1292670) b!6973180))

(assert (= (and b!6973182 (not c!1292670)) b!6973186))

(assert (=> b!6973182 m!7660528))

(assert (=> b!6973182 m!7660528))

(declare-fun m!7660744 () Bool)

(assert (=> b!6973182 m!7660744))

(assert (=> b!6973184 m!7660544))

(declare-fun m!7660746 () Bool)

(assert (=> b!6973178 m!7660746))

(declare-fun m!7660748 () Bool)

(assert (=> b!6973183 m!7660748))

(declare-fun m!7660750 () Bool)

(assert (=> b!6973177 m!7660750))

(declare-fun m!7660752 () Bool)

(assert (=> d!2171546 m!7660752))

(declare-fun m!7660754 () Bool)

(assert (=> d!2171546 m!7660754))

(declare-fun m!7660756 () Bool)

(assert (=> b!6973186 m!7660756))

(declare-fun m!7660758 () Bool)

(assert (=> b!6973180 m!7660758))

(assert (=> b!6972764 d!2171546))

(declare-fun bs!1859435 () Bool)

(declare-fun b!6973189 () Bool)

(assert (= bs!1859435 (and b!6973189 b!6972982)))

(declare-fun lambda!397855 () Int)

(assert (=> bs!1859435 (= (and (= (reg!17462 (regOne!34779 r!13765)) (reg!17462 (regTwo!34779 r!13765))) (= (regOne!34779 r!13765) (regTwo!34779 r!13765))) (= lambda!397855 lambda!397835))))

(declare-fun bs!1859436 () Bool)

(assert (= bs!1859436 (and b!6973189 b!6972987)))

(assert (=> bs!1859436 (not (= lambda!397855 lambda!397837))))

(declare-fun bs!1859437 () Bool)

(assert (= bs!1859437 (and b!6973189 b!6973010)))

(assert (=> bs!1859437 (= (and (= (reg!17462 (regOne!34779 r!13765)) (reg!17462 r!13765)) (= (regOne!34779 r!13765) r!13765)) (= lambda!397855 lambda!397842))))

(declare-fun bs!1859438 () Bool)

(assert (= bs!1859438 (and b!6973189 b!6973015)))

(assert (=> bs!1859438 (not (= lambda!397855 lambda!397843))))

(assert (=> b!6973189 true))

(assert (=> b!6973189 true))

(declare-fun bs!1859439 () Bool)

(declare-fun b!6973194 () Bool)

(assert (= bs!1859439 (and b!6973194 b!6972987)))

(declare-fun lambda!397856 () Int)

(assert (=> bs!1859439 (= (and (= (regOne!34778 (regOne!34779 r!13765)) (regOne!34778 (regTwo!34779 r!13765))) (= (regTwo!34778 (regOne!34779 r!13765)) (regTwo!34778 (regTwo!34779 r!13765)))) (= lambda!397856 lambda!397837))))

(declare-fun bs!1859440 () Bool)

(assert (= bs!1859440 (and b!6973194 b!6973015)))

(assert (=> bs!1859440 (= (and (= (regOne!34778 (regOne!34779 r!13765)) (regOne!34778 r!13765)) (= (regTwo!34778 (regOne!34779 r!13765)) (regTwo!34778 r!13765))) (= lambda!397856 lambda!397843))))

(declare-fun bs!1859441 () Bool)

(assert (= bs!1859441 (and b!6973194 b!6973189)))

(assert (=> bs!1859441 (not (= lambda!397856 lambda!397855))))

(declare-fun bs!1859442 () Bool)

(assert (= bs!1859442 (and b!6973194 b!6972982)))

(assert (=> bs!1859442 (not (= lambda!397856 lambda!397835))))

(declare-fun bs!1859443 () Bool)

(assert (= bs!1859443 (and b!6973194 b!6973010)))

(assert (=> bs!1859443 (not (= lambda!397856 lambda!397842))))

(assert (=> b!6973194 true))

(assert (=> b!6973194 true))

(declare-fun b!6973187 () Bool)

(declare-fun e!4191396 () Bool)

(declare-fun call!632916 () Bool)

(assert (=> b!6973187 (= e!4191396 call!632916)))

(declare-fun b!6973188 () Bool)

(declare-fun res!2844178 () Bool)

(declare-fun e!4191393 () Bool)

(assert (=> b!6973188 (=> res!2844178 e!4191393)))

(assert (=> b!6973188 (= res!2844178 call!632916)))

(declare-fun e!4191392 () Bool)

(assert (=> b!6973188 (= e!4191392 e!4191393)))

(declare-fun d!2171548 () Bool)

(declare-fun c!1292673 () Bool)

(assert (=> d!2171548 (= c!1292673 ((_ is EmptyExpr!17133) (regOne!34779 r!13765)))))

(assert (=> d!2171548 (= (matchRSpec!4150 (regOne!34779 r!13765) s!9351) e!4191396)))

(declare-fun call!632917 () Bool)

(assert (=> b!6973189 (= e!4191393 call!632917)))

(declare-fun c!1292674 () Bool)

(declare-fun bm!632911 () Bool)

(assert (=> bm!632911 (= call!632917 (Exists!4096 (ite c!1292674 lambda!397855 lambda!397856)))))

(declare-fun b!6973190 () Bool)

(declare-fun e!4191397 () Bool)

(assert (=> b!6973190 (= e!4191397 (matchRSpec!4150 (regTwo!34779 (regOne!34779 r!13765)) s!9351))))

(declare-fun b!6973191 () Bool)

(declare-fun c!1292675 () Bool)

(assert (=> b!6973191 (= c!1292675 ((_ is Union!17133) (regOne!34779 r!13765)))))

(declare-fun e!4191395 () Bool)

(declare-fun e!4191394 () Bool)

(assert (=> b!6973191 (= e!4191395 e!4191394)))

(declare-fun bm!632912 () Bool)

(assert (=> bm!632912 (= call!632916 (isEmpty!39027 s!9351))))

(declare-fun b!6973192 () Bool)

(declare-fun c!1292672 () Bool)

(assert (=> b!6973192 (= c!1292672 ((_ is ElementMatch!17133) (regOne!34779 r!13765)))))

(declare-fun e!4191398 () Bool)

(assert (=> b!6973192 (= e!4191398 e!4191395)))

(declare-fun b!6973193 () Bool)

(assert (=> b!6973193 (= e!4191394 e!4191397)))

(declare-fun res!2844177 () Bool)

(assert (=> b!6973193 (= res!2844177 (matchRSpec!4150 (regOne!34779 (regOne!34779 r!13765)) s!9351))))

(assert (=> b!6973193 (=> res!2844177 e!4191397)))

(assert (=> b!6973194 (= e!4191392 call!632917)))

(declare-fun b!6973195 () Bool)

(assert (=> b!6973195 (= e!4191394 e!4191392)))

(assert (=> b!6973195 (= c!1292674 ((_ is Star!17133) (regOne!34779 r!13765)))))

(declare-fun b!6973196 () Bool)

(assert (=> b!6973196 (= e!4191396 e!4191398)))

(declare-fun res!2844176 () Bool)

(assert (=> b!6973196 (= res!2844176 (not ((_ is EmptyLang!17133) (regOne!34779 r!13765))))))

(assert (=> b!6973196 (=> (not res!2844176) (not e!4191398))))

(declare-fun b!6973197 () Bool)

(assert (=> b!6973197 (= e!4191395 (= s!9351 (Cons!66824 (c!1292573 (regOne!34779 r!13765)) Nil!66824)))))

(assert (= (and d!2171548 c!1292673) b!6973187))

(assert (= (and d!2171548 (not c!1292673)) b!6973196))

(assert (= (and b!6973196 res!2844176) b!6973192))

(assert (= (and b!6973192 c!1292672) b!6973197))

(assert (= (and b!6973192 (not c!1292672)) b!6973191))

(assert (= (and b!6973191 c!1292675) b!6973193))

(assert (= (and b!6973191 (not c!1292675)) b!6973195))

(assert (= (and b!6973193 (not res!2844177)) b!6973190))

(assert (= (and b!6973195 c!1292674) b!6973188))

(assert (= (and b!6973195 (not c!1292674)) b!6973194))

(assert (= (and b!6973188 (not res!2844178)) b!6973189))

(assert (= (or b!6973189 b!6973194) bm!632911))

(assert (= (or b!6973187 b!6973188) bm!632912))

(declare-fun m!7660760 () Bool)

(assert (=> bm!632911 m!7660760))

(declare-fun m!7660762 () Bool)

(assert (=> b!6973190 m!7660762))

(assert (=> bm!632912 m!7660648))

(declare-fun m!7660764 () Bool)

(assert (=> b!6973193 m!7660764))

(assert (=> b!6972769 d!2171548))

(declare-fun d!2171550 () Bool)

(assert (=> d!2171550 (= (isEmpty!39025 lt!2479822) ((_ is Nil!66823) lt!2479822))))

(assert (=> b!6972767 d!2171550))

(declare-fun d!2171552 () Bool)

(assert (=> d!2171552 (= (tail!13105 l!9142) (t!380690 l!9142))))

(assert (=> b!6972767 d!2171552))

(declare-fun bs!1859444 () Bool)

(declare-fun d!2171554 () Bool)

(assert (= bs!1859444 (and d!2171554 start!668578)))

(declare-fun lambda!397859 () Int)

(assert (=> bs!1859444 (not (= lambda!397859 lambda!397817))))

(declare-fun bs!1859445 () Bool)

(assert (= bs!1859445 (and d!2171554 b!6972773)))

(assert (=> bs!1859445 (not (= lambda!397859 lambda!397818))))

(declare-fun bs!1859446 () Bool)

(assert (= bs!1859446 (and d!2171554 d!2171532)))

(assert (=> bs!1859446 (not (= lambda!397859 lambda!397853))))

(declare-fun bs!1859447 () Bool)

(assert (= bs!1859447 (and d!2171554 d!2171546)))

(assert (=> bs!1859447 (not (= lambda!397859 lambda!397854))))

(assert (=> d!2171554 true))

(declare-fun order!27775 () Int)

(declare-fun dynLambda!26649 (Int Int) Int)

(assert (=> d!2171554 (< (dynLambda!26649 order!27775 lambda!397818) (dynLambda!26649 order!27775 lambda!397859))))

(assert (=> d!2171554 (= (exists!2869 l!9142 lambda!397818) (not (forall!16004 l!9142 lambda!397859)))))

(declare-fun bs!1859448 () Bool)

(assert (= bs!1859448 d!2171554))

(declare-fun m!7660766 () Bool)

(assert (=> bs!1859448 m!7660766))

(assert (=> b!6972773 d!2171554))

(declare-fun bs!1859449 () Bool)

(declare-fun d!2171556 () Bool)

(assert (= bs!1859449 (and d!2171556 b!6972773)))

(declare-fun lambda!397860 () Int)

(assert (=> bs!1859449 (not (= lambda!397860 lambda!397818))))

(declare-fun bs!1859450 () Bool)

(assert (= bs!1859450 (and d!2171556 d!2171554)))

(assert (=> bs!1859450 (= lambda!397860 lambda!397859)))

(declare-fun bs!1859451 () Bool)

(assert (= bs!1859451 (and d!2171556 start!668578)))

(assert (=> bs!1859451 (not (= lambda!397860 lambda!397817))))

(declare-fun bs!1859452 () Bool)

(assert (= bs!1859452 (and d!2171556 d!2171546)))

(assert (=> bs!1859452 (not (= lambda!397860 lambda!397854))))

(declare-fun bs!1859453 () Bool)

(assert (= bs!1859453 (and d!2171556 d!2171532)))

(assert (=> bs!1859453 (not (= lambda!397860 lambda!397853))))

(assert (=> d!2171556 true))

(assert (=> d!2171556 (< (dynLambda!26649 order!27775 lambda!397818) (dynLambda!26649 order!27775 lambda!397860))))

(assert (=> d!2171556 (= (exists!2869 lt!2479822 lambda!397818) (not (forall!16004 lt!2479822 lambda!397860)))))

(declare-fun bs!1859454 () Bool)

(assert (= bs!1859454 d!2171556))

(declare-fun m!7660768 () Bool)

(assert (=> bs!1859454 m!7660768))

(assert (=> b!6972773 d!2171556))

(declare-fun bs!1859455 () Bool)

(declare-fun d!2171558 () Bool)

(assert (= bs!1859455 (and d!2171558 d!2171556)))

(declare-fun lambda!397865 () Int)

(assert (=> bs!1859455 (not (= lambda!397865 lambda!397860))))

(declare-fun bs!1859456 () Bool)

(assert (= bs!1859456 (and d!2171558 b!6972773)))

(assert (=> bs!1859456 (not (= lambda!397865 lambda!397818))))

(declare-fun bs!1859457 () Bool)

(assert (= bs!1859457 (and d!2171558 d!2171554)))

(assert (=> bs!1859457 (not (= lambda!397865 lambda!397859))))

(declare-fun bs!1859458 () Bool)

(assert (= bs!1859458 (and d!2171558 start!668578)))

(assert (=> bs!1859458 (= lambda!397865 lambda!397817)))

(declare-fun bs!1859459 () Bool)

(assert (= bs!1859459 (and d!2171558 d!2171546)))

(assert (=> bs!1859459 (= lambda!397865 lambda!397854)))

(declare-fun bs!1859460 () Bool)

(assert (= bs!1859460 (and d!2171558 d!2171532)))

(assert (=> bs!1859460 (= lambda!397865 lambda!397853)))

(declare-fun lambda!397866 () Int)

(assert (=> bs!1859455 (not (= lambda!397866 lambda!397860))))

(assert (=> bs!1859456 (= lambda!397866 lambda!397818)))

(assert (=> bs!1859457 (not (= lambda!397866 lambda!397859))))

(assert (=> bs!1859458 (not (= lambda!397866 lambda!397817))))

(assert (=> bs!1859459 (not (= lambda!397866 lambda!397854))))

(assert (=> bs!1859460 (not (= lambda!397866 lambda!397853))))

(declare-fun bs!1859461 () Bool)

(assert (= bs!1859461 d!2171558))

(assert (=> bs!1859461 (not (= lambda!397866 lambda!397865))))

(assert (=> d!2171558 true))

(assert (=> d!2171558 (= (matchR!9235 (regTwo!34779 r!13765) s!9351) (exists!2869 lt!2479822 lambda!397866))))

(declare-fun lt!2479857 () Unit!160918)

(declare-fun choose!51917 (Regex!17133 List!66947 List!66948) Unit!160918)

(assert (=> d!2171558 (= lt!2479857 (choose!51917 (regTwo!34779 r!13765) lt!2479822 s!9351))))

(assert (=> d!2171558 (forall!16004 lt!2479822 lambda!397865)))

(assert (=> d!2171558 (= (matchRGenUnionSpec!352 (regTwo!34779 r!13765) lt!2479822 s!9351) lt!2479857)))

(assert (=> bs!1859461 m!7660550))

(declare-fun m!7660770 () Bool)

(assert (=> bs!1859461 m!7660770))

(declare-fun m!7660772 () Bool)

(assert (=> bs!1859461 m!7660772))

(declare-fun m!7660774 () Bool)

(assert (=> bs!1859461 m!7660774))

(assert (=> b!6972773 d!2171558))

(declare-fun b!6973206 () Bool)

(declare-fun e!4191403 () Bool)

(declare-fun tp!1924597 () Bool)

(assert (=> b!6973206 (= e!4191403 (and tp_is_empty!43491 tp!1924597))))

(assert (=> b!6972766 (= tp!1924541 e!4191403)))

(assert (= (and b!6972766 ((_ is Cons!66824) (t!380691 s!9351))) b!6973206))

(declare-fun b!6973219 () Bool)

(declare-fun e!4191406 () Bool)

(declare-fun tp!1924608 () Bool)

(assert (=> b!6973219 (= e!4191406 tp!1924608)))

(declare-fun b!6973217 () Bool)

(assert (=> b!6973217 (= e!4191406 tp_is_empty!43491)))

(assert (=> b!6972759 (= tp!1924542 e!4191406)))

(declare-fun b!6973218 () Bool)

(declare-fun tp!1924612 () Bool)

(declare-fun tp!1924610 () Bool)

(assert (=> b!6973218 (= e!4191406 (and tp!1924612 tp!1924610))))

(declare-fun b!6973220 () Bool)

(declare-fun tp!1924611 () Bool)

(declare-fun tp!1924609 () Bool)

(assert (=> b!6973220 (= e!4191406 (and tp!1924611 tp!1924609))))

(assert (= (and b!6972759 ((_ is ElementMatch!17133) (h!73271 l!9142))) b!6973217))

(assert (= (and b!6972759 ((_ is Concat!25978) (h!73271 l!9142))) b!6973218))

(assert (= (and b!6972759 ((_ is Star!17133) (h!73271 l!9142))) b!6973219))

(assert (= (and b!6972759 ((_ is Union!17133) (h!73271 l!9142))) b!6973220))

(declare-fun b!6973225 () Bool)

(declare-fun e!4191409 () Bool)

(declare-fun tp!1924617 () Bool)

(declare-fun tp!1924618 () Bool)

(assert (=> b!6973225 (= e!4191409 (and tp!1924617 tp!1924618))))

(assert (=> b!6972759 (= tp!1924539 e!4191409)))

(assert (= (and b!6972759 ((_ is Cons!66823) (t!380690 l!9142))) b!6973225))

(declare-fun b!6973228 () Bool)

(declare-fun e!4191410 () Bool)

(declare-fun tp!1924619 () Bool)

(assert (=> b!6973228 (= e!4191410 tp!1924619)))

(declare-fun b!6973226 () Bool)

(assert (=> b!6973226 (= e!4191410 tp_is_empty!43491)))

(assert (=> b!6972760 (= tp!1924545 e!4191410)))

(declare-fun b!6973227 () Bool)

(declare-fun tp!1924623 () Bool)

(declare-fun tp!1924621 () Bool)

(assert (=> b!6973227 (= e!4191410 (and tp!1924623 tp!1924621))))

(declare-fun b!6973229 () Bool)

(declare-fun tp!1924622 () Bool)

(declare-fun tp!1924620 () Bool)

(assert (=> b!6973229 (= e!4191410 (and tp!1924622 tp!1924620))))

(assert (= (and b!6972760 ((_ is ElementMatch!17133) (regOne!34779 r!13765))) b!6973226))

(assert (= (and b!6972760 ((_ is Concat!25978) (regOne!34779 r!13765))) b!6973227))

(assert (= (and b!6972760 ((_ is Star!17133) (regOne!34779 r!13765))) b!6973228))

(assert (= (and b!6972760 ((_ is Union!17133) (regOne!34779 r!13765))) b!6973229))

(declare-fun b!6973232 () Bool)

(declare-fun e!4191411 () Bool)

(declare-fun tp!1924624 () Bool)

(assert (=> b!6973232 (= e!4191411 tp!1924624)))

(declare-fun b!6973230 () Bool)

(assert (=> b!6973230 (= e!4191411 tp_is_empty!43491)))

(assert (=> b!6972760 (= tp!1924544 e!4191411)))

(declare-fun b!6973231 () Bool)

(declare-fun tp!1924628 () Bool)

(declare-fun tp!1924626 () Bool)

(assert (=> b!6973231 (= e!4191411 (and tp!1924628 tp!1924626))))

(declare-fun b!6973233 () Bool)

(declare-fun tp!1924627 () Bool)

(declare-fun tp!1924625 () Bool)

(assert (=> b!6973233 (= e!4191411 (and tp!1924627 tp!1924625))))

(assert (= (and b!6972760 ((_ is ElementMatch!17133) (regTwo!34779 r!13765))) b!6973230))

(assert (= (and b!6972760 ((_ is Concat!25978) (regTwo!34779 r!13765))) b!6973231))

(assert (= (and b!6972760 ((_ is Star!17133) (regTwo!34779 r!13765))) b!6973232))

(assert (= (and b!6972760 ((_ is Union!17133) (regTwo!34779 r!13765))) b!6973233))

(declare-fun b!6973236 () Bool)

(declare-fun e!4191412 () Bool)

(declare-fun tp!1924629 () Bool)

(assert (=> b!6973236 (= e!4191412 tp!1924629)))

(declare-fun b!6973234 () Bool)

(assert (=> b!6973234 (= e!4191412 tp_is_empty!43491)))

(assert (=> b!6972762 (= tp!1924538 e!4191412)))

(declare-fun b!6973235 () Bool)

(declare-fun tp!1924633 () Bool)

(declare-fun tp!1924631 () Bool)

(assert (=> b!6973235 (= e!4191412 (and tp!1924633 tp!1924631))))

(declare-fun b!6973237 () Bool)

(declare-fun tp!1924632 () Bool)

(declare-fun tp!1924630 () Bool)

(assert (=> b!6973237 (= e!4191412 (and tp!1924632 tp!1924630))))

(assert (= (and b!6972762 ((_ is ElementMatch!17133) (regOne!34778 r!13765))) b!6973234))

(assert (= (and b!6972762 ((_ is Concat!25978) (regOne!34778 r!13765))) b!6973235))

(assert (= (and b!6972762 ((_ is Star!17133) (regOne!34778 r!13765))) b!6973236))

(assert (= (and b!6972762 ((_ is Union!17133) (regOne!34778 r!13765))) b!6973237))

(declare-fun b!6973240 () Bool)

(declare-fun e!4191413 () Bool)

(declare-fun tp!1924634 () Bool)

(assert (=> b!6973240 (= e!4191413 tp!1924634)))

(declare-fun b!6973238 () Bool)

(assert (=> b!6973238 (= e!4191413 tp_is_empty!43491)))

(assert (=> b!6972762 (= tp!1924540 e!4191413)))

(declare-fun b!6973239 () Bool)

(declare-fun tp!1924638 () Bool)

(declare-fun tp!1924636 () Bool)

(assert (=> b!6973239 (= e!4191413 (and tp!1924638 tp!1924636))))

(declare-fun b!6973241 () Bool)

(declare-fun tp!1924637 () Bool)

(declare-fun tp!1924635 () Bool)

(assert (=> b!6973241 (= e!4191413 (and tp!1924637 tp!1924635))))

(assert (= (and b!6972762 ((_ is ElementMatch!17133) (regTwo!34778 r!13765))) b!6973238))

(assert (= (and b!6972762 ((_ is Concat!25978) (regTwo!34778 r!13765))) b!6973239))

(assert (= (and b!6972762 ((_ is Star!17133) (regTwo!34778 r!13765))) b!6973240))

(assert (= (and b!6972762 ((_ is Union!17133) (regTwo!34778 r!13765))) b!6973241))

(declare-fun b!6973244 () Bool)

(declare-fun e!4191414 () Bool)

(declare-fun tp!1924639 () Bool)

(assert (=> b!6973244 (= e!4191414 tp!1924639)))

(declare-fun b!6973242 () Bool)

(assert (=> b!6973242 (= e!4191414 tp_is_empty!43491)))

(assert (=> b!6972768 (= tp!1924543 e!4191414)))

(declare-fun b!6973243 () Bool)

(declare-fun tp!1924643 () Bool)

(declare-fun tp!1924641 () Bool)

(assert (=> b!6973243 (= e!4191414 (and tp!1924643 tp!1924641))))

(declare-fun b!6973245 () Bool)

(declare-fun tp!1924642 () Bool)

(declare-fun tp!1924640 () Bool)

(assert (=> b!6973245 (= e!4191414 (and tp!1924642 tp!1924640))))

(assert (= (and b!6972768 ((_ is ElementMatch!17133) (reg!17462 r!13765))) b!6973242))

(assert (= (and b!6972768 ((_ is Concat!25978) (reg!17462 r!13765))) b!6973243))

(assert (= (and b!6972768 ((_ is Star!17133) (reg!17462 r!13765))) b!6973244))

(assert (= (and b!6972768 ((_ is Union!17133) (reg!17462 r!13765))) b!6973245))

(declare-fun b_lambda!260857 () Bool)

(assert (= b_lambda!260855 (or start!668578 b_lambda!260857)))

(declare-fun bs!1859462 () Bool)

(declare-fun d!2171560 () Bool)

(assert (= bs!1859462 (and d!2171560 start!668578)))

(assert (=> bs!1859462 (= (dynLambda!26647 lambda!397817 (h!73271 lt!2479822)) (validRegex!8815 (h!73271 lt!2479822)))))

(declare-fun m!7660776 () Bool)

(assert (=> bs!1859462 m!7660776))

(assert (=> b!6973175 d!2171560))

(declare-fun b_lambda!260859 () Bool)

(assert (= b_lambda!260847 (or start!668578 b_lambda!260859)))

(declare-fun bs!1859463 () Bool)

(declare-fun d!2171562 () Bool)

(assert (= bs!1859463 (and d!2171562 start!668578)))

(assert (=> bs!1859463 (= (dynLambda!26647 lambda!397817 (h!73271 l!9142)) (validRegex!8815 (h!73271 l!9142)))))

(declare-fun m!7660778 () Bool)

(assert (=> bs!1859463 m!7660778))

(assert (=> b!6972828 d!2171562))

(check-sat (not b!6973225) (not b!6973184) (not b!6973014) (not b!6973220) (not bm!632901) (not b!6973227) (not b!6973110) (not b!6973143) (not b!6973243) (not d!2171534) (not b!6973174) (not b!6973154) (not bm!632904) (not b!6973178) (not b!6973149) (not bm!632905) (not b_lambda!260859) (not b!6973162) (not b!6973183) (not b!6973233) (not b!6972983) (not bm!632908) (not b!6973182) (not b!6973231) (not d!2171536) (not b!6973158) (not b_lambda!260857) (not d!2171558) (not b!6973237) (not b!6973172) (not b!6973160) (not bm!632900) (not b!6973244) (not b!6973228) (not b!6973177) (not b!6972829) (not d!2171530) (not b!6973142) (not b!6973190) (not b!6973240) (not b!6973105) (not b!6973140) (not bm!632911) (not b!6973114) (not d!2171556) (not d!2171522) (not b!6973104) (not d!2171538) (not b!6973206) (not b!6973176) (not b!6973163) (not b!6973219) (not b!6973115) (not b!6973146) (not d!2171542) (not bm!632909) tp_is_empty!43491 (not bm!632910) (not b!6973186) (not b!6973137) (not b!6973245) (not b!6973239) (not b!6973173) (not b!6972986) (not b!6973180) (not d!2171532) (not bs!1859463) (not b!6973229) (not b!6973193) (not b!6973148) (not b!6973235) (not b!6973144) (not b!6973232) (not b!6973236) (not b!6973168) (not d!2171554) (not b!6973138) (not bs!1859462) (not b!6973011) (not bm!632912) (not b!6973159) (not b!6973218) (not b!6973116) (not d!2171546) (not b!6973241))
(check-sat)
(get-model)

(declare-fun b!6973372 () Bool)

(declare-fun res!2844234 () Bool)

(declare-fun e!4191503 () Bool)

(assert (=> b!6973372 (=> res!2844234 e!4191503)))

(declare-fun e!4191497 () Bool)

(assert (=> b!6973372 (= res!2844234 e!4191497)))

(declare-fun res!2844230 () Bool)

(assert (=> b!6973372 (=> (not res!2844230) (not e!4191497))))

(declare-fun lt!2479864 () Bool)

(assert (=> b!6973372 (= res!2844230 lt!2479864)))

(declare-fun b!6973373 () Bool)

(declare-fun e!4191501 () Bool)

(assert (=> b!6973373 (= e!4191501 (nullable!6918 (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351))))))

(declare-fun b!6973382 () Bool)

(assert (=> b!6973382 (= e!4191497 (= (head!14038 (tail!13107 s!9351)) (c!1292573 (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351)))))))

(declare-fun bm!632947 () Bool)

(declare-fun call!632950 () Bool)

(assert (=> bm!632947 (= call!632950 (isEmpty!39027 (tail!13107 s!9351)))))

(declare-fun b!6973385 () Bool)

(declare-fun e!4191494 () Bool)

(declare-fun e!4191496 () Bool)

(assert (=> b!6973385 (= e!4191494 e!4191496)))

(declare-fun c!1292716 () Bool)

(assert (=> b!6973385 (= c!1292716 ((_ is EmptyLang!17133) (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351))))))

(declare-fun d!2171598 () Bool)

(assert (=> d!2171598 e!4191494))

(declare-fun c!1292715 () Bool)

(assert (=> d!2171598 (= c!1292715 ((_ is EmptyExpr!17133) (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351))))))

(assert (=> d!2171598 (= lt!2479864 e!4191501)))

(declare-fun c!1292720 () Bool)

(assert (=> d!2171598 (= c!1292720 (isEmpty!39027 (tail!13107 s!9351)))))

(assert (=> d!2171598 (validRegex!8815 (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351)))))

(assert (=> d!2171598 (= (matchR!9235 (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351)) (tail!13107 s!9351)) lt!2479864)))

(declare-fun b!6973386 () Bool)

(assert (=> b!6973386 (= e!4191496 (not lt!2479864))))

(declare-fun b!6973387 () Bool)

(declare-fun e!4191502 () Bool)

(assert (=> b!6973387 (= e!4191503 e!4191502)))

(declare-fun res!2844229 () Bool)

(assert (=> b!6973387 (=> (not res!2844229) (not e!4191502))))

(assert (=> b!6973387 (= res!2844229 (not lt!2479864))))

(declare-fun b!6973388 () Bool)

(declare-fun e!4191495 () Bool)

(assert (=> b!6973388 (= e!4191502 e!4191495)))

(declare-fun res!2844232 () Bool)

(assert (=> b!6973388 (=> res!2844232 e!4191495)))

(assert (=> b!6973388 (= res!2844232 call!632950)))

(declare-fun b!6973389 () Bool)

(declare-fun res!2844233 () Bool)

(assert (=> b!6973389 (=> res!2844233 e!4191495)))

(assert (=> b!6973389 (= res!2844233 (not (isEmpty!39027 (tail!13107 (tail!13107 s!9351)))))))

(declare-fun b!6973390 () Bool)

(assert (=> b!6973390 (= e!4191494 (= lt!2479864 call!632950))))

(declare-fun b!6973391 () Bool)

(declare-fun res!2844235 () Bool)

(assert (=> b!6973391 (=> res!2844235 e!4191503)))

(assert (=> b!6973391 (= res!2844235 (not ((_ is ElementMatch!17133) (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351)))))))

(assert (=> b!6973391 (= e!4191496 e!4191503)))

(declare-fun b!6973392 () Bool)

(declare-fun res!2844236 () Bool)

(assert (=> b!6973392 (=> (not res!2844236) (not e!4191497))))

(assert (=> b!6973392 (= res!2844236 (not call!632950))))

(declare-fun b!6973393 () Bool)

(assert (=> b!6973393 (= e!4191501 (matchR!9235 (derivativeStep!5543 (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351)) (head!14038 (tail!13107 s!9351))) (tail!13107 (tail!13107 s!9351))))))

(declare-fun b!6973394 () Bool)

(assert (=> b!6973394 (= e!4191495 (not (= (head!14038 (tail!13107 s!9351)) (c!1292573 (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351))))))))

(declare-fun b!6973395 () Bool)

(declare-fun res!2844231 () Bool)

(assert (=> b!6973395 (=> (not res!2844231) (not e!4191497))))

(assert (=> b!6973395 (= res!2844231 (isEmpty!39027 (tail!13107 (tail!13107 s!9351))))))

(assert (= (and d!2171598 c!1292720) b!6973373))

(assert (= (and d!2171598 (not c!1292720)) b!6973393))

(assert (= (and d!2171598 c!1292715) b!6973390))

(assert (= (and d!2171598 (not c!1292715)) b!6973385))

(assert (= (and b!6973385 c!1292716) b!6973386))

(assert (= (and b!6973385 (not c!1292716)) b!6973391))

(assert (= (and b!6973391 (not res!2844235)) b!6973372))

(assert (= (and b!6973372 res!2844230) b!6973392))

(assert (= (and b!6973392 res!2844236) b!6973395))

(assert (= (and b!6973395 res!2844231) b!6973382))

(assert (= (and b!6973372 (not res!2844234)) b!6973387))

(assert (= (and b!6973387 res!2844229) b!6973388))

(assert (= (and b!6973388 (not res!2844232)) b!6973389))

(assert (= (and b!6973389 (not res!2844233)) b!6973394))

(assert (= (or b!6973390 b!6973392 b!6973388) bm!632947))

(assert (=> d!2171598 m!7660692))

(assert (=> d!2171598 m!7660696))

(assert (=> d!2171598 m!7660722))

(declare-fun m!7660870 () Bool)

(assert (=> d!2171598 m!7660870))

(assert (=> b!6973393 m!7660692))

(declare-fun m!7660872 () Bool)

(assert (=> b!6973393 m!7660872))

(assert (=> b!6973393 m!7660722))

(assert (=> b!6973393 m!7660872))

(declare-fun m!7660874 () Bool)

(assert (=> b!6973393 m!7660874))

(assert (=> b!6973393 m!7660692))

(declare-fun m!7660876 () Bool)

(assert (=> b!6973393 m!7660876))

(assert (=> b!6973393 m!7660874))

(assert (=> b!6973393 m!7660876))

(declare-fun m!7660878 () Bool)

(assert (=> b!6973393 m!7660878))

(assert (=> b!6973382 m!7660692))

(assert (=> b!6973382 m!7660872))

(assert (=> b!6973395 m!7660692))

(assert (=> b!6973395 m!7660876))

(assert (=> b!6973395 m!7660876))

(declare-fun m!7660886 () Bool)

(assert (=> b!6973395 m!7660886))

(assert (=> b!6973394 m!7660692))

(assert (=> b!6973394 m!7660872))

(assert (=> bm!632947 m!7660692))

(assert (=> bm!632947 m!7660696))

(assert (=> b!6973373 m!7660722))

(declare-fun m!7660888 () Bool)

(assert (=> b!6973373 m!7660888))

(assert (=> b!6973389 m!7660692))

(assert (=> b!6973389 m!7660876))

(assert (=> b!6973389 m!7660876))

(assert (=> b!6973389 m!7660886))

(assert (=> b!6973158 d!2171598))

(declare-fun bm!632973 () Bool)

(declare-fun call!632981 () Regex!17133)

(declare-fun call!632979 () Regex!17133)

(assert (=> bm!632973 (= call!632981 call!632979)))

(declare-fun d!2171612 () Bool)

(declare-fun lt!2479869 () Regex!17133)

(assert (=> d!2171612 (validRegex!8815 lt!2479869)))

(declare-fun e!4191574 () Regex!17133)

(assert (=> d!2171612 (= lt!2479869 e!4191574)))

(declare-fun c!1292755 () Bool)

(assert (=> d!2171612 (= c!1292755 (or ((_ is EmptyExpr!17133) (regTwo!34779 r!13765)) ((_ is EmptyLang!17133) (regTwo!34779 r!13765))))))

(assert (=> d!2171612 (validRegex!8815 (regTwo!34779 r!13765))))

(assert (=> d!2171612 (= (derivativeStep!5543 (regTwo!34779 r!13765) (head!14038 s!9351)) lt!2479869)))

(declare-fun b!6973492 () Bool)

(declare-fun e!4191575 () Regex!17133)

(assert (=> b!6973492 (= e!4191575 (Union!17133 (Concat!25978 call!632981 (regTwo!34778 (regTwo!34779 r!13765))) EmptyLang!17133))))

(declare-fun b!6973493 () Bool)

(declare-fun e!4191572 () Regex!17133)

(declare-fun call!632980 () Regex!17133)

(declare-fun call!632978 () Regex!17133)

(assert (=> b!6973493 (= e!4191572 (Union!17133 call!632980 call!632978))))

(declare-fun b!6973494 () Bool)

(declare-fun c!1292757 () Bool)

(assert (=> b!6973494 (= c!1292757 (nullable!6918 (regOne!34778 (regTwo!34779 r!13765))))))

(declare-fun e!4191573 () Regex!17133)

(assert (=> b!6973494 (= e!4191573 e!4191575)))

(declare-fun b!6973495 () Bool)

(assert (=> b!6973495 (= e!4191573 (Concat!25978 call!632979 (regTwo!34779 r!13765)))))

(declare-fun b!6973496 () Bool)

(assert (=> b!6973496 (= e!4191572 e!4191573)))

(declare-fun c!1292753 () Bool)

(assert (=> b!6973496 (= c!1292753 ((_ is Star!17133) (regTwo!34779 r!13765)))))

(declare-fun b!6973497 () Bool)

(declare-fun e!4191576 () Regex!17133)

(assert (=> b!6973497 (= e!4191576 (ite (= (head!14038 s!9351) (c!1292573 (regTwo!34779 r!13765))) EmptyExpr!17133 EmptyLang!17133))))

(declare-fun bm!632974 () Bool)

(declare-fun c!1292754 () Bool)

(assert (=> bm!632974 (= call!632978 (derivativeStep!5543 (ite c!1292754 (regTwo!34779 (regTwo!34779 r!13765)) (regOne!34778 (regTwo!34779 r!13765))) (head!14038 s!9351)))))

(declare-fun b!6973498 () Bool)

(assert (=> b!6973498 (= e!4191574 e!4191576)))

(declare-fun c!1292756 () Bool)

(assert (=> b!6973498 (= c!1292756 ((_ is ElementMatch!17133) (regTwo!34779 r!13765)))))

(declare-fun b!6973499 () Bool)

(assert (=> b!6973499 (= e!4191574 EmptyLang!17133)))

(declare-fun bm!632975 () Bool)

(assert (=> bm!632975 (= call!632979 call!632980)))

(declare-fun b!6973500 () Bool)

(assert (=> b!6973500 (= e!4191575 (Union!17133 (Concat!25978 call!632978 (regTwo!34778 (regTwo!34779 r!13765))) call!632981))))

(declare-fun b!6973501 () Bool)

(assert (=> b!6973501 (= c!1292754 ((_ is Union!17133) (regTwo!34779 r!13765)))))

(assert (=> b!6973501 (= e!4191576 e!4191572)))

(declare-fun bm!632976 () Bool)

(assert (=> bm!632976 (= call!632980 (derivativeStep!5543 (ite c!1292754 (regOne!34779 (regTwo!34779 r!13765)) (ite c!1292753 (reg!17462 (regTwo!34779 r!13765)) (ite c!1292757 (regTwo!34778 (regTwo!34779 r!13765)) (regOne!34778 (regTwo!34779 r!13765))))) (head!14038 s!9351)))))

(assert (= (and d!2171612 c!1292755) b!6973499))

(assert (= (and d!2171612 (not c!1292755)) b!6973498))

(assert (= (and b!6973498 c!1292756) b!6973497))

(assert (= (and b!6973498 (not c!1292756)) b!6973501))

(assert (= (and b!6973501 c!1292754) b!6973493))

(assert (= (and b!6973501 (not c!1292754)) b!6973496))

(assert (= (and b!6973496 c!1292753) b!6973495))

(assert (= (and b!6973496 (not c!1292753)) b!6973494))

(assert (= (and b!6973494 c!1292757) b!6973500))

(assert (= (and b!6973494 (not c!1292757)) b!6973492))

(assert (= (or b!6973500 b!6973492) bm!632973))

(assert (= (or b!6973495 bm!632973) bm!632975))

(assert (= (or b!6973493 bm!632975) bm!632976))

(assert (= (or b!6973493 b!6973500) bm!632974))

(declare-fun m!7660956 () Bool)

(assert (=> d!2171612 m!7660956))

(assert (=> d!2171612 m!7660720))

(declare-fun m!7660958 () Bool)

(assert (=> b!6973494 m!7660958))

(assert (=> bm!632974 m!7660688))

(declare-fun m!7660960 () Bool)

(assert (=> bm!632974 m!7660960))

(assert (=> bm!632976 m!7660688))

(declare-fun m!7660962 () Bool)

(assert (=> bm!632976 m!7660962))

(assert (=> b!6973158 d!2171612))

(declare-fun d!2171646 () Bool)

(assert (=> d!2171646 (= (head!14038 s!9351) (h!73272 s!9351))))

(assert (=> b!6973158 d!2171646))

(declare-fun d!2171648 () Bool)

(assert (=> d!2171648 (= (tail!13107 s!9351) (t!380691 s!9351))))

(assert (=> b!6973158 d!2171648))

(declare-fun d!2171650 () Bool)

(assert (=> d!2171650 (= (isEmpty!39025 (tail!13105 l!9142)) ((_ is Nil!66823) (tail!13105 l!9142)))))

(assert (=> b!6973182 d!2171650))

(assert (=> b!6973182 d!2171552))

(declare-fun d!2171652 () Bool)

(assert (=> d!2171652 (= (isEmptyLang!2071 lt!2479849) ((_ is EmptyLang!17133) lt!2479849))))

(assert (=> b!6973137 d!2171652))

(declare-fun d!2171654 () Bool)

(assert (=> d!2171654 (= (isEmpty!39027 s!9351) ((_ is Nil!66824) s!9351))))

(assert (=> bm!632910 d!2171654))

(declare-fun d!2171656 () Bool)

(declare-fun nullableFct!2593 (Regex!17133) Bool)

(assert (=> d!2171656 (= (nullable!6918 (regOne!34779 r!13765)) (nullableFct!2593 (regOne!34779 r!13765)))))

(declare-fun bs!1859544 () Bool)

(assert (= bs!1859544 d!2171656))

(declare-fun m!7660964 () Bool)

(assert (=> bs!1859544 m!7660964))

(assert (=> b!6973162 d!2171656))

(assert (=> bm!632901 d!2171654))

(declare-fun d!2171658 () Bool)

(assert (=> d!2171658 (= (head!14039 l!9142) (h!73271 l!9142))))

(assert (=> b!6973180 d!2171658))

(declare-fun d!2171660 () Bool)

(assert (=> d!2171660 (= (isEmpty!39027 (tail!13107 s!9351)) ((_ is Nil!66824) (tail!13107 s!9351)))))

(assert (=> b!6973154 d!2171660))

(assert (=> b!6973154 d!2171648))

(declare-fun d!2171662 () Bool)

(assert (=> d!2171662 (= (isEmpty!39025 (t!380690 l!9142)) ((_ is Nil!66823) (t!380690 l!9142)))))

(assert (=> b!6973178 d!2171662))

(assert (=> bm!632908 d!2171654))

(declare-fun d!2171664 () Bool)

(declare-fun choose!51918 (Int) Bool)

(assert (=> d!2171664 (= (Exists!4096 (ite c!1292635 lambda!397842 lambda!397843)) (choose!51918 (ite c!1292635 lambda!397842 lambda!397843)))))

(declare-fun bs!1859553 () Bool)

(assert (= bs!1859553 d!2171664))

(declare-fun m!7660966 () Bool)

(assert (=> bs!1859553 m!7660966))

(assert (=> bm!632904 d!2171664))

(declare-fun d!2171666 () Bool)

(assert (=> d!2171666 (= (isUnion!1499 lt!2479854) ((_ is Union!17133) lt!2479854))))

(assert (=> b!6973186 d!2171666))

(declare-fun d!2171670 () Bool)

(declare-fun res!2844277 () Bool)

(declare-fun e!4191581 () Bool)

(assert (=> d!2171670 (=> res!2844277 e!4191581)))

(assert (=> d!2171670 (= res!2844277 ((_ is Nil!66823) (t!380690 l!9142)))))

(assert (=> d!2171670 (= (forall!16004 (t!380690 l!9142) lambda!397817) e!4191581)))

(declare-fun b!6973506 () Bool)

(declare-fun e!4191582 () Bool)

(assert (=> b!6973506 (= e!4191581 e!4191582)))

(declare-fun res!2844278 () Bool)

(assert (=> b!6973506 (=> (not res!2844278) (not e!4191582))))

(assert (=> b!6973506 (= res!2844278 (dynLambda!26647 lambda!397817 (h!73271 (t!380690 l!9142))))))

(declare-fun b!6973507 () Bool)

(assert (=> b!6973507 (= e!4191582 (forall!16004 (t!380690 (t!380690 l!9142)) lambda!397817))))

(assert (= (and d!2171670 (not res!2844277)) b!6973506))

(assert (= (and b!6973506 res!2844278) b!6973507))

(declare-fun b_lambda!260873 () Bool)

(assert (=> (not b_lambda!260873) (not b!6973506)))

(declare-fun m!7660976 () Bool)

(assert (=> b!6973506 m!7660976))

(declare-fun m!7660978 () Bool)

(assert (=> b!6973507 m!7660978))

(assert (=> b!6972829 d!2171670))

(declare-fun bs!1859560 () Bool)

(declare-fun d!2171676 () Bool)

(assert (= bs!1859560 (and d!2171676 d!2171556)))

(declare-fun lambda!397879 () Int)

(assert (=> bs!1859560 (not (= lambda!397879 lambda!397860))))

(declare-fun bs!1859561 () Bool)

(assert (= bs!1859561 (and d!2171676 b!6972773)))

(assert (=> bs!1859561 (not (= lambda!397879 lambda!397818))))

(declare-fun bs!1859562 () Bool)

(assert (= bs!1859562 (and d!2171676 d!2171554)))

(assert (=> bs!1859562 (not (= lambda!397879 lambda!397859))))

(declare-fun bs!1859563 () Bool)

(assert (= bs!1859563 (and d!2171676 start!668578)))

(assert (=> bs!1859563 (= lambda!397879 lambda!397817)))

(declare-fun bs!1859564 () Bool)

(assert (= bs!1859564 (and d!2171676 d!2171558)))

(assert (=> bs!1859564 (not (= lambda!397879 lambda!397866))))

(declare-fun bs!1859565 () Bool)

(assert (= bs!1859565 (and d!2171676 d!2171546)))

(assert (=> bs!1859565 (= lambda!397879 lambda!397854)))

(declare-fun bs!1859566 () Bool)

(assert (= bs!1859566 (and d!2171676 d!2171532)))

(assert (=> bs!1859566 (= lambda!397879 lambda!397853)))

(assert (=> bs!1859564 (= lambda!397879 lambda!397865)))

(declare-fun b!6973508 () Bool)

(declare-fun e!4191588 () Bool)

(declare-fun lt!2479870 () Regex!17133)

(assert (=> b!6973508 (= e!4191588 (isEmptyLang!2071 lt!2479870))))

(declare-fun b!6973509 () Bool)

(declare-fun e!4191586 () Bool)

(assert (=> b!6973509 (= e!4191586 (isEmpty!39025 (t!380690 (t!380690 lt!2479822))))))

(declare-fun b!6973510 () Bool)

(declare-fun e!4191587 () Regex!17133)

(assert (=> b!6973510 (= e!4191587 (h!73271 (t!380690 lt!2479822)))))

(declare-fun b!6973511 () Bool)

(declare-fun e!4191585 () Bool)

(assert (=> b!6973511 (= e!4191585 (= lt!2479870 (head!14039 (t!380690 lt!2479822))))))

(declare-fun b!6973512 () Bool)

(declare-fun e!4191584 () Regex!17133)

(assert (=> b!6973512 (= e!4191587 e!4191584)))

(declare-fun c!1292761 () Bool)

(assert (=> b!6973512 (= c!1292761 ((_ is Cons!66823) (t!380690 lt!2479822)))))

(declare-fun e!4191583 () Bool)

(assert (=> d!2171676 e!4191583))

(declare-fun res!2844280 () Bool)

(assert (=> d!2171676 (=> (not res!2844280) (not e!4191583))))

(assert (=> d!2171676 (= res!2844280 (validRegex!8815 lt!2479870))))

(assert (=> d!2171676 (= lt!2479870 e!4191587)))

(declare-fun c!1292758 () Bool)

(assert (=> d!2171676 (= c!1292758 e!4191586)))

(declare-fun res!2844279 () Bool)

(assert (=> d!2171676 (=> (not res!2844279) (not e!4191586))))

(assert (=> d!2171676 (= res!2844279 ((_ is Cons!66823) (t!380690 lt!2479822)))))

(assert (=> d!2171676 (forall!16004 (t!380690 lt!2479822) lambda!397879)))

(assert (=> d!2171676 (= (generalisedUnion!2608 (t!380690 lt!2479822)) lt!2479870)))

(declare-fun b!6973513 () Bool)

(assert (=> b!6973513 (= e!4191588 e!4191585)))

(declare-fun c!1292760 () Bool)

(assert (=> b!6973513 (= c!1292760 (isEmpty!39025 (tail!13105 (t!380690 lt!2479822))))))

(declare-fun b!6973514 () Bool)

(assert (=> b!6973514 (= e!4191584 (Union!17133 (h!73271 (t!380690 lt!2479822)) (generalisedUnion!2608 (t!380690 (t!380690 lt!2479822)))))))

(declare-fun b!6973515 () Bool)

(assert (=> b!6973515 (= e!4191583 e!4191588)))

(declare-fun c!1292759 () Bool)

(assert (=> b!6973515 (= c!1292759 (isEmpty!39025 (t!380690 lt!2479822)))))

(declare-fun b!6973516 () Bool)

(assert (=> b!6973516 (= e!4191584 EmptyLang!17133)))

(declare-fun b!6973517 () Bool)

(assert (=> b!6973517 (= e!4191585 (isUnion!1499 lt!2479870))))

(assert (= (and d!2171676 res!2844279) b!6973509))

(assert (= (and d!2171676 c!1292758) b!6973510))

(assert (= (and d!2171676 (not c!1292758)) b!6973512))

(assert (= (and b!6973512 c!1292761) b!6973514))

(assert (= (and b!6973512 (not c!1292761)) b!6973516))

(assert (= (and d!2171676 res!2844280) b!6973515))

(assert (= (and b!6973515 c!1292759) b!6973508))

(assert (= (and b!6973515 (not c!1292759)) b!6973513))

(assert (= (and b!6973513 c!1292760) b!6973511))

(assert (= (and b!6973513 (not c!1292760)) b!6973517))

(declare-fun m!7660982 () Bool)

(assert (=> b!6973513 m!7660982))

(assert (=> b!6973513 m!7660982))

(declare-fun m!7660984 () Bool)

(assert (=> b!6973513 m!7660984))

(assert (=> b!6973515 m!7660706))

(declare-fun m!7660986 () Bool)

(assert (=> b!6973509 m!7660986))

(declare-fun m!7660988 () Bool)

(assert (=> b!6973514 m!7660988))

(declare-fun m!7660990 () Bool)

(assert (=> b!6973508 m!7660990))

(declare-fun m!7660992 () Bool)

(assert (=> d!2171676 m!7660992))

(declare-fun m!7660994 () Bool)

(assert (=> d!2171676 m!7660994))

(declare-fun m!7660996 () Bool)

(assert (=> b!6973517 m!7660996))

(declare-fun m!7660998 () Bool)

(assert (=> b!6973511 m!7660998))

(assert (=> b!6973143 d!2171676))

(declare-fun d!2171684 () Bool)

(declare-fun res!2844284 () Bool)

(declare-fun e!4191596 () Bool)

(assert (=> d!2171684 (=> res!2844284 e!4191596)))

(assert (=> d!2171684 (= res!2844284 ((_ is Nil!66823) (t!380690 lt!2479822)))))

(assert (=> d!2171684 (= (forall!16004 (t!380690 lt!2479822) lambda!397817) e!4191596)))

(declare-fun b!6973529 () Bool)

(declare-fun e!4191597 () Bool)

(assert (=> b!6973529 (= e!4191596 e!4191597)))

(declare-fun res!2844285 () Bool)

(assert (=> b!6973529 (=> (not res!2844285) (not e!4191597))))

(assert (=> b!6973529 (= res!2844285 (dynLambda!26647 lambda!397817 (h!73271 (t!380690 lt!2479822))))))

(declare-fun b!6973530 () Bool)

(assert (=> b!6973530 (= e!4191597 (forall!16004 (t!380690 (t!380690 lt!2479822)) lambda!397817))))

(assert (= (and d!2171684 (not res!2844284)) b!6973529))

(assert (= (and b!6973529 res!2844285) b!6973530))

(declare-fun b_lambda!260875 () Bool)

(assert (=> (not b_lambda!260875) (not b!6973529)))

(declare-fun m!7661000 () Bool)

(assert (=> b!6973529 m!7661000))

(declare-fun m!7661002 () Bool)

(assert (=> b!6973530 m!7661002))

(assert (=> b!6973176 d!2171684))

(declare-fun b!6973575 () Bool)

(declare-fun e!4191630 () Bool)

(declare-fun e!4191631 () Bool)

(assert (=> b!6973575 (= e!4191630 e!4191631)))

(declare-fun res!2844309 () Bool)

(assert (=> b!6973575 (=> (not res!2844309) (not e!4191631))))

(declare-fun call!632995 () Bool)

(assert (=> b!6973575 (= res!2844309 call!632995)))

(declare-fun bm!632990 () Bool)

(declare-fun call!632997 () Bool)

(assert (=> bm!632990 (= call!632995 call!632997)))

(declare-fun d!2171686 () Bool)

(declare-fun res!2844308 () Bool)

(declare-fun e!4191628 () Bool)

(assert (=> d!2171686 (=> res!2844308 e!4191628)))

(assert (=> d!2171686 (= res!2844308 ((_ is ElementMatch!17133) lt!2479854))))

(assert (=> d!2171686 (= (validRegex!8815 lt!2479854) e!4191628)))

(declare-fun b!6973576 () Bool)

(declare-fun call!632996 () Bool)

(assert (=> b!6973576 (= e!4191631 call!632996)))

(declare-fun b!6973577 () Bool)

(declare-fun res!2844310 () Bool)

(declare-fun e!4191627 () Bool)

(assert (=> b!6973577 (=> (not res!2844310) (not e!4191627))))

(assert (=> b!6973577 (= res!2844310 call!632995)))

(declare-fun e!4191629 () Bool)

(assert (=> b!6973577 (= e!4191629 e!4191627)))

(declare-fun b!6973578 () Bool)

(declare-fun res!2844307 () Bool)

(assert (=> b!6973578 (=> res!2844307 e!4191630)))

(assert (=> b!6973578 (= res!2844307 (not ((_ is Concat!25978) lt!2479854)))))

(assert (=> b!6973578 (= e!4191629 e!4191630)))

(declare-fun b!6973579 () Bool)

(declare-fun e!4191632 () Bool)

(assert (=> b!6973579 (= e!4191632 call!632997)))

(declare-fun bm!632991 () Bool)

(declare-fun c!1292778 () Bool)

(assert (=> bm!632991 (= call!632996 (validRegex!8815 (ite c!1292778 (regTwo!34779 lt!2479854) (regTwo!34778 lt!2479854))))))

(declare-fun b!6973580 () Bool)

(assert (=> b!6973580 (= e!4191627 call!632996)))

(declare-fun b!6973581 () Bool)

(declare-fun e!4191626 () Bool)

(assert (=> b!6973581 (= e!4191626 e!4191629)))

(assert (=> b!6973581 (= c!1292778 ((_ is Union!17133) lt!2479854))))

(declare-fun b!6973582 () Bool)

(assert (=> b!6973582 (= e!4191626 e!4191632)))

(declare-fun res!2844306 () Bool)

(assert (=> b!6973582 (= res!2844306 (not (nullable!6918 (reg!17462 lt!2479854))))))

(assert (=> b!6973582 (=> (not res!2844306) (not e!4191632))))

(declare-fun b!6973583 () Bool)

(assert (=> b!6973583 (= e!4191628 e!4191626)))

(declare-fun c!1292779 () Bool)

(assert (=> b!6973583 (= c!1292779 ((_ is Star!17133) lt!2479854))))

(declare-fun bm!632992 () Bool)

(assert (=> bm!632992 (= call!632997 (validRegex!8815 (ite c!1292779 (reg!17462 lt!2479854) (ite c!1292778 (regOne!34779 lt!2479854) (regOne!34778 lt!2479854)))))))

(assert (= (and d!2171686 (not res!2844308)) b!6973583))

(assert (= (and b!6973583 c!1292779) b!6973582))

(assert (= (and b!6973583 (not c!1292779)) b!6973581))

(assert (= (and b!6973582 res!2844306) b!6973579))

(assert (= (and b!6973581 c!1292778) b!6973577))

(assert (= (and b!6973581 (not c!1292778)) b!6973578))

(assert (= (and b!6973577 res!2844310) b!6973580))

(assert (= (and b!6973578 (not res!2844307)) b!6973575))

(assert (= (and b!6973575 res!2844309) b!6973576))

(assert (= (or b!6973577 b!6973575) bm!632990))

(assert (= (or b!6973580 b!6973576) bm!632991))

(assert (= (or b!6973579 bm!632990) bm!632992))

(declare-fun m!7661032 () Bool)

(assert (=> bm!632991 m!7661032))

(declare-fun m!7661034 () Bool)

(assert (=> b!6973582 m!7661034))

(declare-fun m!7661036 () Bool)

(assert (=> bm!632992 m!7661036))

(assert (=> d!2171546 d!2171686))

(declare-fun d!2171702 () Bool)

(declare-fun res!2844311 () Bool)

(declare-fun e!4191634 () Bool)

(assert (=> d!2171702 (=> res!2844311 e!4191634)))

(assert (=> d!2171702 (= res!2844311 ((_ is Nil!66823) l!9142))))

(assert (=> d!2171702 (= (forall!16004 l!9142 lambda!397854) e!4191634)))

(declare-fun b!6973588 () Bool)

(declare-fun e!4191635 () Bool)

(assert (=> b!6973588 (= e!4191634 e!4191635)))

(declare-fun res!2844312 () Bool)

(assert (=> b!6973588 (=> (not res!2844312) (not e!4191635))))

(assert (=> b!6973588 (= res!2844312 (dynLambda!26647 lambda!397854 (h!73271 l!9142)))))

(declare-fun b!6973589 () Bool)

(assert (=> b!6973589 (= e!4191635 (forall!16004 (t!380690 l!9142) lambda!397854))))

(assert (= (and d!2171702 (not res!2844311)) b!6973588))

(assert (= (and b!6973588 res!2844312) b!6973589))

(declare-fun b_lambda!260879 () Bool)

(assert (=> (not b_lambda!260879) (not b!6973588)))

(declare-fun m!7661038 () Bool)

(assert (=> b!6973588 m!7661038))

(declare-fun m!7661040 () Bool)

(assert (=> b!6973589 m!7661040))

(assert (=> d!2171546 d!2171702))

(declare-fun d!2171704 () Bool)

(assert (=> d!2171704 (= (Exists!4096 (ite c!1292674 lambda!397855 lambda!397856)) (choose!51918 (ite c!1292674 lambda!397855 lambda!397856)))))

(declare-fun bs!1859594 () Bool)

(assert (= bs!1859594 d!2171704))

(declare-fun m!7661042 () Bool)

(assert (=> bs!1859594 m!7661042))

(assert (=> bm!632911 d!2171704))

(assert (=> b!6973160 d!2171660))

(assert (=> b!6973160 d!2171648))

(declare-fun bs!1859595 () Bool)

(declare-fun b!6973600 () Bool)

(assert (= bs!1859595 (and b!6973600 b!6972987)))

(declare-fun lambda!397882 () Int)

(assert (=> bs!1859595 (not (= lambda!397882 lambda!397837))))

(declare-fun bs!1859596 () Bool)

(assert (= bs!1859596 (and b!6973600 b!6973194)))

(assert (=> bs!1859596 (not (= lambda!397882 lambda!397856))))

(declare-fun bs!1859597 () Bool)

(assert (= bs!1859597 (and b!6973600 b!6973015)))

(assert (=> bs!1859597 (not (= lambda!397882 lambda!397843))))

(declare-fun bs!1859598 () Bool)

(assert (= bs!1859598 (and b!6973600 b!6973189)))

(assert (=> bs!1859598 (= (and (= (reg!17462 (regOne!34779 (regTwo!34779 r!13765))) (reg!17462 (regOne!34779 r!13765))) (= (regOne!34779 (regTwo!34779 r!13765)) (regOne!34779 r!13765))) (= lambda!397882 lambda!397855))))

(declare-fun bs!1859599 () Bool)

(assert (= bs!1859599 (and b!6973600 b!6972982)))

(assert (=> bs!1859599 (= (and (= (reg!17462 (regOne!34779 (regTwo!34779 r!13765))) (reg!17462 (regTwo!34779 r!13765))) (= (regOne!34779 (regTwo!34779 r!13765)) (regTwo!34779 r!13765))) (= lambda!397882 lambda!397835))))

(declare-fun bs!1859600 () Bool)

(assert (= bs!1859600 (and b!6973600 b!6973010)))

(assert (=> bs!1859600 (= (and (= (reg!17462 (regOne!34779 (regTwo!34779 r!13765))) (reg!17462 r!13765)) (= (regOne!34779 (regTwo!34779 r!13765)) r!13765)) (= lambda!397882 lambda!397842))))

(assert (=> b!6973600 true))

(assert (=> b!6973600 true))

(declare-fun bs!1859601 () Bool)

(declare-fun b!6973609 () Bool)

(assert (= bs!1859601 (and b!6973609 b!6972987)))

(declare-fun lambda!397883 () Int)

(assert (=> bs!1859601 (= (and (= (regOne!34778 (regOne!34779 (regTwo!34779 r!13765))) (regOne!34778 (regTwo!34779 r!13765))) (= (regTwo!34778 (regOne!34779 (regTwo!34779 r!13765))) (regTwo!34778 (regTwo!34779 r!13765)))) (= lambda!397883 lambda!397837))))

(declare-fun bs!1859602 () Bool)

(assert (= bs!1859602 (and b!6973609 b!6973194)))

(assert (=> bs!1859602 (= (and (= (regOne!34778 (regOne!34779 (regTwo!34779 r!13765))) (regOne!34778 (regOne!34779 r!13765))) (= (regTwo!34778 (regOne!34779 (regTwo!34779 r!13765))) (regTwo!34778 (regOne!34779 r!13765)))) (= lambda!397883 lambda!397856))))

(declare-fun bs!1859603 () Bool)

(assert (= bs!1859603 (and b!6973609 b!6973015)))

(assert (=> bs!1859603 (= (and (= (regOne!34778 (regOne!34779 (regTwo!34779 r!13765))) (regOne!34778 r!13765)) (= (regTwo!34778 (regOne!34779 (regTwo!34779 r!13765))) (regTwo!34778 r!13765))) (= lambda!397883 lambda!397843))))

(declare-fun bs!1859604 () Bool)

(assert (= bs!1859604 (and b!6973609 b!6973600)))

(assert (=> bs!1859604 (not (= lambda!397883 lambda!397882))))

(declare-fun bs!1859605 () Bool)

(assert (= bs!1859605 (and b!6973609 b!6973189)))

(assert (=> bs!1859605 (not (= lambda!397883 lambda!397855))))

(declare-fun bs!1859606 () Bool)

(assert (= bs!1859606 (and b!6973609 b!6972982)))

(assert (=> bs!1859606 (not (= lambda!397883 lambda!397835))))

(declare-fun bs!1859607 () Bool)

(assert (= bs!1859607 (and b!6973609 b!6973010)))

(assert (=> bs!1859607 (not (= lambda!397883 lambda!397842))))

(assert (=> b!6973609 true))

(assert (=> b!6973609 true))

(declare-fun b!6973598 () Bool)

(declare-fun e!4191642 () Bool)

(declare-fun call!632998 () Bool)

(assert (=> b!6973598 (= e!4191642 call!632998)))

(declare-fun b!6973599 () Bool)

(declare-fun res!2844315 () Bool)

(declare-fun e!4191639 () Bool)

(assert (=> b!6973599 (=> res!2844315 e!4191639)))

(assert (=> b!6973599 (= res!2844315 call!632998)))

(declare-fun e!4191638 () Bool)

(assert (=> b!6973599 (= e!4191638 e!4191639)))

(declare-fun d!2171706 () Bool)

(declare-fun c!1292781 () Bool)

(assert (=> d!2171706 (= c!1292781 ((_ is EmptyExpr!17133) (regOne!34779 (regTwo!34779 r!13765))))))

(assert (=> d!2171706 (= (matchRSpec!4150 (regOne!34779 (regTwo!34779 r!13765)) s!9351) e!4191642)))

(declare-fun call!632999 () Bool)

(assert (=> b!6973600 (= e!4191639 call!632999)))

(declare-fun c!1292782 () Bool)

(declare-fun bm!632993 () Bool)

(assert (=> bm!632993 (= call!632999 (Exists!4096 (ite c!1292782 lambda!397882 lambda!397883)))))

(declare-fun b!6973604 () Bool)

(declare-fun e!4191643 () Bool)

(assert (=> b!6973604 (= e!4191643 (matchRSpec!4150 (regTwo!34779 (regOne!34779 (regTwo!34779 r!13765))) s!9351))))

(declare-fun b!6973606 () Bool)

(declare-fun c!1292783 () Bool)

(assert (=> b!6973606 (= c!1292783 ((_ is Union!17133) (regOne!34779 (regTwo!34779 r!13765))))))

(declare-fun e!4191641 () Bool)

(declare-fun e!4191640 () Bool)

(assert (=> b!6973606 (= e!4191641 e!4191640)))

(declare-fun bm!632994 () Bool)

(assert (=> bm!632994 (= call!632998 (isEmpty!39027 s!9351))))

(declare-fun b!6973607 () Bool)

(declare-fun c!1292780 () Bool)

(assert (=> b!6973607 (= c!1292780 ((_ is ElementMatch!17133) (regOne!34779 (regTwo!34779 r!13765))))))

(declare-fun e!4191644 () Bool)

(assert (=> b!6973607 (= e!4191644 e!4191641)))

(declare-fun b!6973608 () Bool)

(assert (=> b!6973608 (= e!4191640 e!4191643)))

(declare-fun res!2844314 () Bool)

(assert (=> b!6973608 (= res!2844314 (matchRSpec!4150 (regOne!34779 (regOne!34779 (regTwo!34779 r!13765))) s!9351))))

(assert (=> b!6973608 (=> res!2844314 e!4191643)))

(assert (=> b!6973609 (= e!4191638 call!632999)))

(declare-fun b!6973610 () Bool)

(assert (=> b!6973610 (= e!4191640 e!4191638)))

(assert (=> b!6973610 (= c!1292782 ((_ is Star!17133) (regOne!34779 (regTwo!34779 r!13765))))))

(declare-fun b!6973611 () Bool)

(assert (=> b!6973611 (= e!4191642 e!4191644)))

(declare-fun res!2844313 () Bool)

(assert (=> b!6973611 (= res!2844313 (not ((_ is EmptyLang!17133) (regOne!34779 (regTwo!34779 r!13765)))))))

(assert (=> b!6973611 (=> (not res!2844313) (not e!4191644))))

(declare-fun b!6973612 () Bool)

(assert (=> b!6973612 (= e!4191641 (= s!9351 (Cons!66824 (c!1292573 (regOne!34779 (regTwo!34779 r!13765))) Nil!66824)))))

(assert (= (and d!2171706 c!1292781) b!6973598))

(assert (= (and d!2171706 (not c!1292781)) b!6973611))

(assert (= (and b!6973611 res!2844313) b!6973607))

(assert (= (and b!6973607 c!1292780) b!6973612))

(assert (= (and b!6973607 (not c!1292780)) b!6973606))

(assert (= (and b!6973606 c!1292783) b!6973608))

(assert (= (and b!6973606 (not c!1292783)) b!6973610))

(assert (= (and b!6973608 (not res!2844314)) b!6973604))

(assert (= (and b!6973610 c!1292782) b!6973599))

(assert (= (and b!6973610 (not c!1292782)) b!6973609))

(assert (= (and b!6973599 (not res!2844315)) b!6973600))

(assert (= (or b!6973600 b!6973609) bm!632993))

(assert (= (or b!6973598 b!6973599) bm!632994))

(declare-fun m!7661044 () Bool)

(assert (=> bm!632993 m!7661044))

(declare-fun m!7661046 () Bool)

(assert (=> b!6973604 m!7661046))

(assert (=> bm!632994 m!7660648))

(declare-fun m!7661048 () Bool)

(assert (=> b!6973608 m!7661048))

(assert (=> b!6972986 d!2171706))

(assert (=> b!6973184 d!2171544))

(declare-fun b!6973702 () Bool)

(declare-fun e!4191673 () Bool)

(declare-fun e!4191674 () Bool)

(assert (=> b!6973702 (= e!4191673 e!4191674)))

(declare-fun res!2844319 () Bool)

(assert (=> b!6973702 (=> (not res!2844319) (not e!4191674))))

(declare-fun call!633000 () Bool)

(assert (=> b!6973702 (= res!2844319 call!633000)))

(declare-fun bm!632995 () Bool)

(declare-fun call!633002 () Bool)

(assert (=> bm!632995 (= call!633000 call!633002)))

(declare-fun d!2171708 () Bool)

(declare-fun res!2844318 () Bool)

(declare-fun e!4191671 () Bool)

(assert (=> d!2171708 (=> res!2844318 e!4191671)))

(assert (=> d!2171708 (= res!2844318 ((_ is ElementMatch!17133) (h!73271 lt!2479822)))))

(assert (=> d!2171708 (= (validRegex!8815 (h!73271 lt!2479822)) e!4191671)))

(declare-fun b!6973703 () Bool)

(declare-fun call!633001 () Bool)

(assert (=> b!6973703 (= e!4191674 call!633001)))

(declare-fun b!6973704 () Bool)

(declare-fun res!2844320 () Bool)

(declare-fun e!4191670 () Bool)

(assert (=> b!6973704 (=> (not res!2844320) (not e!4191670))))

(assert (=> b!6973704 (= res!2844320 call!633000)))

(declare-fun e!4191672 () Bool)

(assert (=> b!6973704 (= e!4191672 e!4191670)))

(declare-fun b!6973705 () Bool)

(declare-fun res!2844317 () Bool)

(assert (=> b!6973705 (=> res!2844317 e!4191673)))

(assert (=> b!6973705 (= res!2844317 (not ((_ is Concat!25978) (h!73271 lt!2479822))))))

(assert (=> b!6973705 (= e!4191672 e!4191673)))

(declare-fun b!6973706 () Bool)

(declare-fun e!4191675 () Bool)

(assert (=> b!6973706 (= e!4191675 call!633002)))

(declare-fun bm!632996 () Bool)

(declare-fun c!1292784 () Bool)

(assert (=> bm!632996 (= call!633001 (validRegex!8815 (ite c!1292784 (regTwo!34779 (h!73271 lt!2479822)) (regTwo!34778 (h!73271 lt!2479822)))))))

(declare-fun b!6973707 () Bool)

(assert (=> b!6973707 (= e!4191670 call!633001)))

(declare-fun b!6973708 () Bool)

(declare-fun e!4191669 () Bool)

(assert (=> b!6973708 (= e!4191669 e!4191672)))

(assert (=> b!6973708 (= c!1292784 ((_ is Union!17133) (h!73271 lt!2479822)))))

(declare-fun b!6973709 () Bool)

(assert (=> b!6973709 (= e!4191669 e!4191675)))

(declare-fun res!2844316 () Bool)

(assert (=> b!6973709 (= res!2844316 (not (nullable!6918 (reg!17462 (h!73271 lt!2479822)))))))

(assert (=> b!6973709 (=> (not res!2844316) (not e!4191675))))

(declare-fun b!6973710 () Bool)

(assert (=> b!6973710 (= e!4191671 e!4191669)))

(declare-fun c!1292785 () Bool)

(assert (=> b!6973710 (= c!1292785 ((_ is Star!17133) (h!73271 lt!2479822)))))

(declare-fun bm!632997 () Bool)

(assert (=> bm!632997 (= call!633002 (validRegex!8815 (ite c!1292785 (reg!17462 (h!73271 lt!2479822)) (ite c!1292784 (regOne!34779 (h!73271 lt!2479822)) (regOne!34778 (h!73271 lt!2479822))))))))

(assert (= (and d!2171708 (not res!2844318)) b!6973710))

(assert (= (and b!6973710 c!1292785) b!6973709))

(assert (= (and b!6973710 (not c!1292785)) b!6973708))

(assert (= (and b!6973709 res!2844316) b!6973706))

(assert (= (and b!6973708 c!1292784) b!6973704))

(assert (= (and b!6973708 (not c!1292784)) b!6973705))

(assert (= (and b!6973704 res!2844320) b!6973707))

(assert (= (and b!6973705 (not res!2844317)) b!6973702))

(assert (= (and b!6973702 res!2844319) b!6973703))

(assert (= (or b!6973704 b!6973702) bm!632995))

(assert (= (or b!6973707 b!6973703) bm!632996))

(assert (= (or b!6973706 bm!632995) bm!632997))

(declare-fun m!7661050 () Bool)

(assert (=> bm!632996 m!7661050))

(declare-fun m!7661052 () Bool)

(assert (=> b!6973709 m!7661052))

(declare-fun m!7661054 () Bool)

(assert (=> bm!632997 m!7661054))

(assert (=> bs!1859462 d!2171708))

(assert (=> b!6973149 d!2171646))

(assert (=> b!6973014 d!2171548))

(assert (=> bm!632905 d!2171654))

(assert (=> d!2171534 d!2171654))

(declare-fun b!6973727 () Bool)

(declare-fun e!4191684 () Bool)

(declare-fun e!4191685 () Bool)

(assert (=> b!6973727 (= e!4191684 e!4191685)))

(declare-fun res!2844324 () Bool)

(assert (=> b!6973727 (=> (not res!2844324) (not e!4191685))))

(declare-fun call!633003 () Bool)

(assert (=> b!6973727 (= res!2844324 call!633003)))

(declare-fun bm!632998 () Bool)

(declare-fun call!633005 () Bool)

(assert (=> bm!632998 (= call!633003 call!633005)))

(declare-fun d!2171710 () Bool)

(declare-fun res!2844323 () Bool)

(declare-fun e!4191682 () Bool)

(assert (=> d!2171710 (=> res!2844323 e!4191682)))

(assert (=> d!2171710 (= res!2844323 ((_ is ElementMatch!17133) (regTwo!34779 r!13765)))))

(assert (=> d!2171710 (= (validRegex!8815 (regTwo!34779 r!13765)) e!4191682)))

(declare-fun b!6973728 () Bool)

(declare-fun call!633004 () Bool)

(assert (=> b!6973728 (= e!4191685 call!633004)))

(declare-fun b!6973729 () Bool)

(declare-fun res!2844325 () Bool)

(declare-fun e!4191681 () Bool)

(assert (=> b!6973729 (=> (not res!2844325) (not e!4191681))))

(assert (=> b!6973729 (= res!2844325 call!633003)))

(declare-fun e!4191683 () Bool)

(assert (=> b!6973729 (= e!4191683 e!4191681)))

(declare-fun b!6973730 () Bool)

(declare-fun res!2844322 () Bool)

(assert (=> b!6973730 (=> res!2844322 e!4191684)))

(assert (=> b!6973730 (= res!2844322 (not ((_ is Concat!25978) (regTwo!34779 r!13765))))))

(assert (=> b!6973730 (= e!4191683 e!4191684)))

(declare-fun b!6973731 () Bool)

(declare-fun e!4191686 () Bool)

(assert (=> b!6973731 (= e!4191686 call!633005)))

(declare-fun bm!632999 () Bool)

(declare-fun c!1292786 () Bool)

(assert (=> bm!632999 (= call!633004 (validRegex!8815 (ite c!1292786 (regTwo!34779 (regTwo!34779 r!13765)) (regTwo!34778 (regTwo!34779 r!13765)))))))

(declare-fun b!6973732 () Bool)

(assert (=> b!6973732 (= e!4191681 call!633004)))

(declare-fun b!6973733 () Bool)

(declare-fun e!4191680 () Bool)

(assert (=> b!6973733 (= e!4191680 e!4191683)))

(assert (=> b!6973733 (= c!1292786 ((_ is Union!17133) (regTwo!34779 r!13765)))))

(declare-fun b!6973734 () Bool)

(assert (=> b!6973734 (= e!4191680 e!4191686)))

(declare-fun res!2844321 () Bool)

(assert (=> b!6973734 (= res!2844321 (not (nullable!6918 (reg!17462 (regTwo!34779 r!13765)))))))

(assert (=> b!6973734 (=> (not res!2844321) (not e!4191686))))

(declare-fun b!6973735 () Bool)

(assert (=> b!6973735 (= e!4191682 e!4191680)))

(declare-fun c!1292787 () Bool)

(assert (=> b!6973735 (= c!1292787 ((_ is Star!17133) (regTwo!34779 r!13765)))))

(declare-fun bm!633000 () Bool)

(assert (=> bm!633000 (= call!633005 (validRegex!8815 (ite c!1292787 (reg!17462 (regTwo!34779 r!13765)) (ite c!1292786 (regOne!34779 (regTwo!34779 r!13765)) (regOne!34778 (regTwo!34779 r!13765))))))))

(assert (= (and d!2171710 (not res!2844323)) b!6973735))

(assert (= (and b!6973735 c!1292787) b!6973734))

(assert (= (and b!6973735 (not c!1292787)) b!6973733))

(assert (= (and b!6973734 res!2844321) b!6973731))

(assert (= (and b!6973733 c!1292786) b!6973729))

(assert (= (and b!6973733 (not c!1292786)) b!6973730))

(assert (= (and b!6973729 res!2844325) b!6973732))

(assert (= (and b!6973730 (not res!2844322)) b!6973727))

(assert (= (and b!6973727 res!2844324) b!6973728))

(assert (= (or b!6973729 b!6973727) bm!632998))

(assert (= (or b!6973732 b!6973728) bm!632999))

(assert (= (or b!6973731 bm!632998) bm!633000))

(declare-fun m!7661056 () Bool)

(assert (=> bm!632999 m!7661056))

(declare-fun m!7661058 () Bool)

(assert (=> b!6973734 m!7661058))

(declare-fun m!7661060 () Bool)

(assert (=> bm!633000 m!7661060))

(assert (=> d!2171534 d!2171710))

(assert (=> b!6973174 d!2171660))

(assert (=> b!6973174 d!2171648))

(declare-fun d!2171712 () Bool)

(assert (=> d!2171712 (= (isUnion!1499 lt!2479849) ((_ is Union!17133) lt!2479849))))

(assert (=> b!6973146 d!2171712))

(declare-fun b!6973741 () Bool)

(declare-fun res!2844331 () Bool)

(declare-fun e!4191695 () Bool)

(assert (=> b!6973741 (=> res!2844331 e!4191695)))

(declare-fun e!4191692 () Bool)

(assert (=> b!6973741 (= res!2844331 e!4191692)))

(declare-fun res!2844327 () Bool)

(assert (=> b!6973741 (=> (not res!2844327) (not e!4191692))))

(declare-fun lt!2479873 () Bool)

(assert (=> b!6973741 (= res!2844327 lt!2479873)))

(declare-fun b!6973742 () Bool)

(declare-fun e!4191693 () Bool)

(assert (=> b!6973742 (= e!4191693 (nullable!6918 (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351))))))

(declare-fun b!6973743 () Bool)

(assert (=> b!6973743 (= e!4191692 (= (head!14038 (tail!13107 s!9351)) (c!1292573 (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351)))))))

(declare-fun bm!633001 () Bool)

(declare-fun call!633006 () Bool)

(assert (=> bm!633001 (= call!633006 (isEmpty!39027 (tail!13107 s!9351)))))

(declare-fun b!6973744 () Bool)

(declare-fun e!4191689 () Bool)

(declare-fun e!4191691 () Bool)

(assert (=> b!6973744 (= e!4191689 e!4191691)))

(declare-fun c!1292789 () Bool)

(assert (=> b!6973744 (= c!1292789 ((_ is EmptyLang!17133) (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351))))))

(declare-fun d!2171716 () Bool)

(assert (=> d!2171716 e!4191689))

(declare-fun c!1292788 () Bool)

(assert (=> d!2171716 (= c!1292788 ((_ is EmptyExpr!17133) (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351))))))

(assert (=> d!2171716 (= lt!2479873 e!4191693)))

(declare-fun c!1292790 () Bool)

(assert (=> d!2171716 (= c!1292790 (isEmpty!39027 (tail!13107 s!9351)))))

(assert (=> d!2171716 (validRegex!8815 (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351)))))

(assert (=> d!2171716 (= (matchR!9235 (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351)) (tail!13107 s!9351)) lt!2479873)))

(declare-fun b!6973745 () Bool)

(assert (=> b!6973745 (= e!4191691 (not lt!2479873))))

(declare-fun b!6973746 () Bool)

(declare-fun e!4191694 () Bool)

(assert (=> b!6973746 (= e!4191695 e!4191694)))

(declare-fun res!2844326 () Bool)

(assert (=> b!6973746 (=> (not res!2844326) (not e!4191694))))

(assert (=> b!6973746 (= res!2844326 (not lt!2479873))))

(declare-fun b!6973747 () Bool)

(declare-fun e!4191690 () Bool)

(assert (=> b!6973747 (= e!4191694 e!4191690)))

(declare-fun res!2844329 () Bool)

(assert (=> b!6973747 (=> res!2844329 e!4191690)))

(assert (=> b!6973747 (= res!2844329 call!633006)))

(declare-fun b!6973748 () Bool)

(declare-fun res!2844330 () Bool)

(assert (=> b!6973748 (=> res!2844330 e!4191690)))

(assert (=> b!6973748 (= res!2844330 (not (isEmpty!39027 (tail!13107 (tail!13107 s!9351)))))))

(declare-fun b!6973749 () Bool)

(assert (=> b!6973749 (= e!4191689 (= lt!2479873 call!633006))))

(declare-fun b!6973750 () Bool)

(declare-fun res!2844332 () Bool)

(assert (=> b!6973750 (=> res!2844332 e!4191695)))

(assert (=> b!6973750 (= res!2844332 (not ((_ is ElementMatch!17133) (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351)))))))

(assert (=> b!6973750 (= e!4191691 e!4191695)))

(declare-fun b!6973751 () Bool)

(declare-fun res!2844333 () Bool)

(assert (=> b!6973751 (=> (not res!2844333) (not e!4191692))))

(assert (=> b!6973751 (= res!2844333 (not call!633006))))

(declare-fun b!6973752 () Bool)

(assert (=> b!6973752 (= e!4191693 (matchR!9235 (derivativeStep!5543 (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351)) (head!14038 (tail!13107 s!9351))) (tail!13107 (tail!13107 s!9351))))))

(declare-fun b!6973753 () Bool)

(assert (=> b!6973753 (= e!4191690 (not (= (head!14038 (tail!13107 s!9351)) (c!1292573 (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351))))))))

(declare-fun b!6973754 () Bool)

(declare-fun res!2844328 () Bool)

(assert (=> b!6973754 (=> (not res!2844328) (not e!4191692))))

(assert (=> b!6973754 (= res!2844328 (isEmpty!39027 (tail!13107 (tail!13107 s!9351))))))

(assert (= (and d!2171716 c!1292790) b!6973742))

(assert (= (and d!2171716 (not c!1292790)) b!6973752))

(assert (= (and d!2171716 c!1292788) b!6973749))

(assert (= (and d!2171716 (not c!1292788)) b!6973744))

(assert (= (and b!6973744 c!1292789) b!6973745))

(assert (= (and b!6973744 (not c!1292789)) b!6973750))

(assert (= (and b!6973750 (not res!2844332)) b!6973741))

(assert (= (and b!6973741 res!2844327) b!6973751))

(assert (= (and b!6973751 res!2844333) b!6973754))

(assert (= (and b!6973754 res!2844328) b!6973743))

(assert (= (and b!6973741 (not res!2844331)) b!6973746))

(assert (= (and b!6973746 res!2844326) b!6973747))

(assert (= (and b!6973747 (not res!2844329)) b!6973748))

(assert (= (and b!6973748 (not res!2844330)) b!6973753))

(assert (= (or b!6973749 b!6973751 b!6973747) bm!633001))

(assert (=> d!2171716 m!7660692))

(assert (=> d!2171716 m!7660696))

(assert (=> d!2171716 m!7660732))

(declare-fun m!7661070 () Bool)

(assert (=> d!2171716 m!7661070))

(assert (=> b!6973752 m!7660692))

(assert (=> b!6973752 m!7660872))

(assert (=> b!6973752 m!7660732))

(assert (=> b!6973752 m!7660872))

(declare-fun m!7661072 () Bool)

(assert (=> b!6973752 m!7661072))

(assert (=> b!6973752 m!7660692))

(assert (=> b!6973752 m!7660876))

(assert (=> b!6973752 m!7661072))

(assert (=> b!6973752 m!7660876))

(declare-fun m!7661074 () Bool)

(assert (=> b!6973752 m!7661074))

(assert (=> b!6973743 m!7660692))

(assert (=> b!6973743 m!7660872))

(assert (=> b!6973754 m!7660692))

(assert (=> b!6973754 m!7660876))

(assert (=> b!6973754 m!7660876))

(assert (=> b!6973754 m!7660886))

(assert (=> b!6973753 m!7660692))

(assert (=> b!6973753 m!7660872))

(assert (=> bm!633001 m!7660692))

(assert (=> bm!633001 m!7660696))

(assert (=> b!6973742 m!7660732))

(declare-fun m!7661076 () Bool)

(assert (=> b!6973742 m!7661076))

(assert (=> b!6973748 m!7660692))

(assert (=> b!6973748 m!7660876))

(assert (=> b!6973748 m!7660876))

(assert (=> b!6973748 m!7660886))

(assert (=> b!6973172 d!2171716))

(declare-fun bm!633002 () Bool)

(declare-fun call!633010 () Regex!17133)

(declare-fun call!633008 () Regex!17133)

(assert (=> bm!633002 (= call!633010 call!633008)))

(declare-fun d!2171730 () Bool)

(declare-fun lt!2479874 () Regex!17133)

(assert (=> d!2171730 (validRegex!8815 lt!2479874)))

(declare-fun e!4191698 () Regex!17133)

(assert (=> d!2171730 (= lt!2479874 e!4191698)))

(declare-fun c!1292793 () Bool)

(assert (=> d!2171730 (= c!1292793 (or ((_ is EmptyExpr!17133) (regOne!34779 r!13765)) ((_ is EmptyLang!17133) (regOne!34779 r!13765))))))

(assert (=> d!2171730 (validRegex!8815 (regOne!34779 r!13765))))

(assert (=> d!2171730 (= (derivativeStep!5543 (regOne!34779 r!13765) (head!14038 s!9351)) lt!2479874)))

(declare-fun b!6973755 () Bool)

(declare-fun e!4191699 () Regex!17133)

(assert (=> b!6973755 (= e!4191699 (Union!17133 (Concat!25978 call!633010 (regTwo!34778 (regOne!34779 r!13765))) EmptyLang!17133))))

(declare-fun b!6973756 () Bool)

(declare-fun e!4191696 () Regex!17133)

(declare-fun call!633009 () Regex!17133)

(declare-fun call!633007 () Regex!17133)

(assert (=> b!6973756 (= e!4191696 (Union!17133 call!633009 call!633007))))

(declare-fun b!6973757 () Bool)

(declare-fun c!1292795 () Bool)

(assert (=> b!6973757 (= c!1292795 (nullable!6918 (regOne!34778 (regOne!34779 r!13765))))))

(declare-fun e!4191697 () Regex!17133)

(assert (=> b!6973757 (= e!4191697 e!4191699)))

(declare-fun b!6973758 () Bool)

(assert (=> b!6973758 (= e!4191697 (Concat!25978 call!633008 (regOne!34779 r!13765)))))

(declare-fun b!6973759 () Bool)

(assert (=> b!6973759 (= e!4191696 e!4191697)))

(declare-fun c!1292791 () Bool)

(assert (=> b!6973759 (= c!1292791 ((_ is Star!17133) (regOne!34779 r!13765)))))

(declare-fun b!6973760 () Bool)

(declare-fun e!4191700 () Regex!17133)

(assert (=> b!6973760 (= e!4191700 (ite (= (head!14038 s!9351) (c!1292573 (regOne!34779 r!13765))) EmptyExpr!17133 EmptyLang!17133))))

(declare-fun bm!633003 () Bool)

(declare-fun c!1292792 () Bool)

(assert (=> bm!633003 (= call!633007 (derivativeStep!5543 (ite c!1292792 (regTwo!34779 (regOne!34779 r!13765)) (regOne!34778 (regOne!34779 r!13765))) (head!14038 s!9351)))))

(declare-fun b!6973761 () Bool)

(assert (=> b!6973761 (= e!4191698 e!4191700)))

(declare-fun c!1292794 () Bool)

(assert (=> b!6973761 (= c!1292794 ((_ is ElementMatch!17133) (regOne!34779 r!13765)))))

(declare-fun b!6973762 () Bool)

(assert (=> b!6973762 (= e!4191698 EmptyLang!17133)))

(declare-fun bm!633004 () Bool)

(assert (=> bm!633004 (= call!633008 call!633009)))

(declare-fun b!6973763 () Bool)

(assert (=> b!6973763 (= e!4191699 (Union!17133 (Concat!25978 call!633007 (regTwo!34778 (regOne!34779 r!13765))) call!633010))))

(declare-fun b!6973764 () Bool)

(assert (=> b!6973764 (= c!1292792 ((_ is Union!17133) (regOne!34779 r!13765)))))

(assert (=> b!6973764 (= e!4191700 e!4191696)))

(declare-fun bm!633005 () Bool)

(assert (=> bm!633005 (= call!633009 (derivativeStep!5543 (ite c!1292792 (regOne!34779 (regOne!34779 r!13765)) (ite c!1292791 (reg!17462 (regOne!34779 r!13765)) (ite c!1292795 (regTwo!34778 (regOne!34779 r!13765)) (regOne!34778 (regOne!34779 r!13765))))) (head!14038 s!9351)))))

(assert (= (and d!2171730 c!1292793) b!6973762))

(assert (= (and d!2171730 (not c!1292793)) b!6973761))

(assert (= (and b!6973761 c!1292794) b!6973760))

(assert (= (and b!6973761 (not c!1292794)) b!6973764))

(assert (= (and b!6973764 c!1292792) b!6973756))

(assert (= (and b!6973764 (not c!1292792)) b!6973759))

(assert (= (and b!6973759 c!1292791) b!6973758))

(assert (= (and b!6973759 (not c!1292791)) b!6973757))

(assert (= (and b!6973757 c!1292795) b!6973763))

(assert (= (and b!6973757 (not c!1292795)) b!6973755))

(assert (= (or b!6973763 b!6973755) bm!633002))

(assert (= (or b!6973758 bm!633002) bm!633004))

(assert (= (or b!6973756 bm!633004) bm!633005))

(assert (= (or b!6973756 b!6973763) bm!633003))

(declare-fun m!7661078 () Bool)

(assert (=> d!2171730 m!7661078))

(assert (=> d!2171730 m!7660730))

(declare-fun m!7661080 () Bool)

(assert (=> b!6973757 m!7661080))

(assert (=> bm!633003 m!7660688))

(declare-fun m!7661082 () Bool)

(assert (=> bm!633003 m!7661082))

(assert (=> bm!633005 m!7660688))

(declare-fun m!7661084 () Bool)

(assert (=> bm!633005 m!7661084))

(assert (=> b!6973172 d!2171730))

(assert (=> b!6973172 d!2171646))

(assert (=> b!6973172 d!2171648))

(declare-fun bs!1859615 () Bool)

(declare-fun b!6973767 () Bool)

(assert (= bs!1859615 (and b!6973767 b!6972987)))

(declare-fun lambda!397884 () Int)

(assert (=> bs!1859615 (not (= lambda!397884 lambda!397837))))

(declare-fun bs!1859616 () Bool)

(assert (= bs!1859616 (and b!6973767 b!6973194)))

(assert (=> bs!1859616 (not (= lambda!397884 lambda!397856))))

(declare-fun bs!1859617 () Bool)

(assert (= bs!1859617 (and b!6973767 b!6973015)))

(assert (=> bs!1859617 (not (= lambda!397884 lambda!397843))))

(declare-fun bs!1859618 () Bool)

(assert (= bs!1859618 (and b!6973767 b!6973600)))

(assert (=> bs!1859618 (= (and (= (reg!17462 (regOne!34779 (regOne!34779 r!13765))) (reg!17462 (regOne!34779 (regTwo!34779 r!13765)))) (= (regOne!34779 (regOne!34779 r!13765)) (regOne!34779 (regTwo!34779 r!13765)))) (= lambda!397884 lambda!397882))))

(declare-fun bs!1859619 () Bool)

(assert (= bs!1859619 (and b!6973767 b!6973189)))

(assert (=> bs!1859619 (= (and (= (reg!17462 (regOne!34779 (regOne!34779 r!13765))) (reg!17462 (regOne!34779 r!13765))) (= (regOne!34779 (regOne!34779 r!13765)) (regOne!34779 r!13765))) (= lambda!397884 lambda!397855))))

(declare-fun bs!1859620 () Bool)

(assert (= bs!1859620 (and b!6973767 b!6972982)))

(assert (=> bs!1859620 (= (and (= (reg!17462 (regOne!34779 (regOne!34779 r!13765))) (reg!17462 (regTwo!34779 r!13765))) (= (regOne!34779 (regOne!34779 r!13765)) (regTwo!34779 r!13765))) (= lambda!397884 lambda!397835))))

(declare-fun bs!1859621 () Bool)

(assert (= bs!1859621 (and b!6973767 b!6973609)))

(assert (=> bs!1859621 (not (= lambda!397884 lambda!397883))))

(declare-fun bs!1859622 () Bool)

(assert (= bs!1859622 (and b!6973767 b!6973010)))

(assert (=> bs!1859622 (= (and (= (reg!17462 (regOne!34779 (regOne!34779 r!13765))) (reg!17462 r!13765)) (= (regOne!34779 (regOne!34779 r!13765)) r!13765)) (= lambda!397884 lambda!397842))))

(assert (=> b!6973767 true))

(assert (=> b!6973767 true))

(declare-fun bs!1859623 () Bool)

(declare-fun b!6973772 () Bool)

(assert (= bs!1859623 (and b!6973772 b!6972987)))

(declare-fun lambda!397885 () Int)

(assert (=> bs!1859623 (= (and (= (regOne!34778 (regOne!34779 (regOne!34779 r!13765))) (regOne!34778 (regTwo!34779 r!13765))) (= (regTwo!34778 (regOne!34779 (regOne!34779 r!13765))) (regTwo!34778 (regTwo!34779 r!13765)))) (= lambda!397885 lambda!397837))))

(declare-fun bs!1859624 () Bool)

(assert (= bs!1859624 (and b!6973772 b!6973194)))

(assert (=> bs!1859624 (= (and (= (regOne!34778 (regOne!34779 (regOne!34779 r!13765))) (regOne!34778 (regOne!34779 r!13765))) (= (regTwo!34778 (regOne!34779 (regOne!34779 r!13765))) (regTwo!34778 (regOne!34779 r!13765)))) (= lambda!397885 lambda!397856))))

(declare-fun bs!1859625 () Bool)

(assert (= bs!1859625 (and b!6973772 b!6973015)))

(assert (=> bs!1859625 (= (and (= (regOne!34778 (regOne!34779 (regOne!34779 r!13765))) (regOne!34778 r!13765)) (= (regTwo!34778 (regOne!34779 (regOne!34779 r!13765))) (regTwo!34778 r!13765))) (= lambda!397885 lambda!397843))))

(declare-fun bs!1859626 () Bool)

(assert (= bs!1859626 (and b!6973772 b!6973767)))

(assert (=> bs!1859626 (not (= lambda!397885 lambda!397884))))

(declare-fun bs!1859627 () Bool)

(assert (= bs!1859627 (and b!6973772 b!6973600)))

(assert (=> bs!1859627 (not (= lambda!397885 lambda!397882))))

(declare-fun bs!1859628 () Bool)

(assert (= bs!1859628 (and b!6973772 b!6973189)))

(assert (=> bs!1859628 (not (= lambda!397885 lambda!397855))))

(declare-fun bs!1859629 () Bool)

(assert (= bs!1859629 (and b!6973772 b!6972982)))

(assert (=> bs!1859629 (not (= lambda!397885 lambda!397835))))

(declare-fun bs!1859630 () Bool)

(assert (= bs!1859630 (and b!6973772 b!6973609)))

(assert (=> bs!1859630 (= (and (= (regOne!34778 (regOne!34779 (regOne!34779 r!13765))) (regOne!34778 (regOne!34779 (regTwo!34779 r!13765)))) (= (regTwo!34778 (regOne!34779 (regOne!34779 r!13765))) (regTwo!34778 (regOne!34779 (regTwo!34779 r!13765))))) (= lambda!397885 lambda!397883))))

(declare-fun bs!1859631 () Bool)

(assert (= bs!1859631 (and b!6973772 b!6973010)))

(assert (=> bs!1859631 (not (= lambda!397885 lambda!397842))))

(assert (=> b!6973772 true))

(assert (=> b!6973772 true))

(declare-fun b!6973765 () Bool)

(declare-fun e!4191705 () Bool)

(declare-fun call!633011 () Bool)

(assert (=> b!6973765 (= e!4191705 call!633011)))

(declare-fun b!6973766 () Bool)

(declare-fun res!2844336 () Bool)

(declare-fun e!4191702 () Bool)

(assert (=> b!6973766 (=> res!2844336 e!4191702)))

(assert (=> b!6973766 (= res!2844336 call!633011)))

(declare-fun e!4191701 () Bool)

(assert (=> b!6973766 (= e!4191701 e!4191702)))

(declare-fun d!2171732 () Bool)

(declare-fun c!1292797 () Bool)

(assert (=> d!2171732 (= c!1292797 ((_ is EmptyExpr!17133) (regOne!34779 (regOne!34779 r!13765))))))

(assert (=> d!2171732 (= (matchRSpec!4150 (regOne!34779 (regOne!34779 r!13765)) s!9351) e!4191705)))

(declare-fun call!633012 () Bool)

(assert (=> b!6973767 (= e!4191702 call!633012)))

(declare-fun c!1292798 () Bool)

(declare-fun bm!633006 () Bool)

(assert (=> bm!633006 (= call!633012 (Exists!4096 (ite c!1292798 lambda!397884 lambda!397885)))))

(declare-fun b!6973768 () Bool)

(declare-fun e!4191706 () Bool)

(assert (=> b!6973768 (= e!4191706 (matchRSpec!4150 (regTwo!34779 (regOne!34779 (regOne!34779 r!13765))) s!9351))))

(declare-fun b!6973769 () Bool)

(declare-fun c!1292799 () Bool)

(assert (=> b!6973769 (= c!1292799 ((_ is Union!17133) (regOne!34779 (regOne!34779 r!13765))))))

(declare-fun e!4191704 () Bool)

(declare-fun e!4191703 () Bool)

(assert (=> b!6973769 (= e!4191704 e!4191703)))

(declare-fun bm!633007 () Bool)

(assert (=> bm!633007 (= call!633011 (isEmpty!39027 s!9351))))

(declare-fun b!6973770 () Bool)

(declare-fun c!1292796 () Bool)

(assert (=> b!6973770 (= c!1292796 ((_ is ElementMatch!17133) (regOne!34779 (regOne!34779 r!13765))))))

(declare-fun e!4191707 () Bool)

(assert (=> b!6973770 (= e!4191707 e!4191704)))

(declare-fun b!6973771 () Bool)

(assert (=> b!6973771 (= e!4191703 e!4191706)))

(declare-fun res!2844335 () Bool)

(assert (=> b!6973771 (= res!2844335 (matchRSpec!4150 (regOne!34779 (regOne!34779 (regOne!34779 r!13765))) s!9351))))

(assert (=> b!6973771 (=> res!2844335 e!4191706)))

(assert (=> b!6973772 (= e!4191701 call!633012)))

(declare-fun b!6973773 () Bool)

(assert (=> b!6973773 (= e!4191703 e!4191701)))

(assert (=> b!6973773 (= c!1292798 ((_ is Star!17133) (regOne!34779 (regOne!34779 r!13765))))))

(declare-fun b!6973774 () Bool)

(assert (=> b!6973774 (= e!4191705 e!4191707)))

(declare-fun res!2844334 () Bool)

(assert (=> b!6973774 (= res!2844334 (not ((_ is EmptyLang!17133) (regOne!34779 (regOne!34779 r!13765)))))))

(assert (=> b!6973774 (=> (not res!2844334) (not e!4191707))))

(declare-fun b!6973775 () Bool)

(assert (=> b!6973775 (= e!4191704 (= s!9351 (Cons!66824 (c!1292573 (regOne!34779 (regOne!34779 r!13765))) Nil!66824)))))

(assert (= (and d!2171732 c!1292797) b!6973765))

(assert (= (and d!2171732 (not c!1292797)) b!6973774))

(assert (= (and b!6973774 res!2844334) b!6973770))

(assert (= (and b!6973770 c!1292796) b!6973775))

(assert (= (and b!6973770 (not c!1292796)) b!6973769))

(assert (= (and b!6973769 c!1292799) b!6973771))

(assert (= (and b!6973769 (not c!1292799)) b!6973773))

(assert (= (and b!6973771 (not res!2844335)) b!6973768))

(assert (= (and b!6973773 c!1292798) b!6973766))

(assert (= (and b!6973773 (not c!1292798)) b!6973772))

(assert (= (and b!6973766 (not res!2844336)) b!6973767))

(assert (= (or b!6973767 b!6973772) bm!633006))

(assert (= (or b!6973765 b!6973766) bm!633007))

(declare-fun m!7661086 () Bool)

(assert (=> bm!633006 m!7661086))

(declare-fun m!7661088 () Bool)

(assert (=> b!6973768 m!7661088))

(assert (=> bm!633007 m!7660648))

(declare-fun m!7661090 () Bool)

(assert (=> b!6973771 m!7661090))

(assert (=> b!6973193 d!2171732))

(assert (=> bm!632912 d!2171654))

(assert (=> b!6973011 d!2171494))

(assert (=> b!6973116 d!2171660))

(assert (=> b!6973116 d!2171648))

(declare-fun d!2171734 () Bool)

(assert (=> d!2171734 (= (nullable!6918 r!13765) (nullableFct!2593 r!13765))))

(declare-fun bs!1859632 () Bool)

(assert (= bs!1859632 d!2171734))

(declare-fun m!7661092 () Bool)

(assert (=> bs!1859632 m!7661092))

(assert (=> b!6973104 d!2171734))

(declare-fun bs!1859633 () Bool)

(declare-fun b!6973778 () Bool)

(assert (= bs!1859633 (and b!6973778 b!6972987)))

(declare-fun lambda!397886 () Int)

(assert (=> bs!1859633 (not (= lambda!397886 lambda!397837))))

(declare-fun bs!1859634 () Bool)

(assert (= bs!1859634 (and b!6973778 b!6973772)))

(assert (=> bs!1859634 (not (= lambda!397886 lambda!397885))))

(declare-fun bs!1859635 () Bool)

(assert (= bs!1859635 (and b!6973778 b!6973194)))

(assert (=> bs!1859635 (not (= lambda!397886 lambda!397856))))

(declare-fun bs!1859636 () Bool)

(assert (= bs!1859636 (and b!6973778 b!6973015)))

(assert (=> bs!1859636 (not (= lambda!397886 lambda!397843))))

(declare-fun bs!1859637 () Bool)

(assert (= bs!1859637 (and b!6973778 b!6973767)))

(assert (=> bs!1859637 (= (and (= (reg!17462 (regTwo!34779 (regTwo!34779 r!13765))) (reg!17462 (regOne!34779 (regOne!34779 r!13765)))) (= (regTwo!34779 (regTwo!34779 r!13765)) (regOne!34779 (regOne!34779 r!13765)))) (= lambda!397886 lambda!397884))))

(declare-fun bs!1859638 () Bool)

(assert (= bs!1859638 (and b!6973778 b!6973600)))

(assert (=> bs!1859638 (= (and (= (reg!17462 (regTwo!34779 (regTwo!34779 r!13765))) (reg!17462 (regOne!34779 (regTwo!34779 r!13765)))) (= (regTwo!34779 (regTwo!34779 r!13765)) (regOne!34779 (regTwo!34779 r!13765)))) (= lambda!397886 lambda!397882))))

(declare-fun bs!1859639 () Bool)

(assert (= bs!1859639 (and b!6973778 b!6973189)))

(assert (=> bs!1859639 (= (and (= (reg!17462 (regTwo!34779 (regTwo!34779 r!13765))) (reg!17462 (regOne!34779 r!13765))) (= (regTwo!34779 (regTwo!34779 r!13765)) (regOne!34779 r!13765))) (= lambda!397886 lambda!397855))))

(declare-fun bs!1859640 () Bool)

(assert (= bs!1859640 (and b!6973778 b!6972982)))

(assert (=> bs!1859640 (= (and (= (reg!17462 (regTwo!34779 (regTwo!34779 r!13765))) (reg!17462 (regTwo!34779 r!13765))) (= (regTwo!34779 (regTwo!34779 r!13765)) (regTwo!34779 r!13765))) (= lambda!397886 lambda!397835))))

(declare-fun bs!1859641 () Bool)

(assert (= bs!1859641 (and b!6973778 b!6973609)))

(assert (=> bs!1859641 (not (= lambda!397886 lambda!397883))))

(declare-fun bs!1859642 () Bool)

(assert (= bs!1859642 (and b!6973778 b!6973010)))

(assert (=> bs!1859642 (= (and (= (reg!17462 (regTwo!34779 (regTwo!34779 r!13765))) (reg!17462 r!13765)) (= (regTwo!34779 (regTwo!34779 r!13765)) r!13765)) (= lambda!397886 lambda!397842))))

(assert (=> b!6973778 true))

(assert (=> b!6973778 true))

(declare-fun bs!1859643 () Bool)

(declare-fun b!6973783 () Bool)

(assert (= bs!1859643 (and b!6973783 b!6972987)))

(declare-fun lambda!397887 () Int)

(assert (=> bs!1859643 (= (and (= (regOne!34778 (regTwo!34779 (regTwo!34779 r!13765))) (regOne!34778 (regTwo!34779 r!13765))) (= (regTwo!34778 (regTwo!34779 (regTwo!34779 r!13765))) (regTwo!34778 (regTwo!34779 r!13765)))) (= lambda!397887 lambda!397837))))

(declare-fun bs!1859644 () Bool)

(assert (= bs!1859644 (and b!6973783 b!6973772)))

(assert (=> bs!1859644 (= (and (= (regOne!34778 (regTwo!34779 (regTwo!34779 r!13765))) (regOne!34778 (regOne!34779 (regOne!34779 r!13765)))) (= (regTwo!34778 (regTwo!34779 (regTwo!34779 r!13765))) (regTwo!34778 (regOne!34779 (regOne!34779 r!13765))))) (= lambda!397887 lambda!397885))))

(declare-fun bs!1859645 () Bool)

(assert (= bs!1859645 (and b!6973783 b!6973194)))

(assert (=> bs!1859645 (= (and (= (regOne!34778 (regTwo!34779 (regTwo!34779 r!13765))) (regOne!34778 (regOne!34779 r!13765))) (= (regTwo!34778 (regTwo!34779 (regTwo!34779 r!13765))) (regTwo!34778 (regOne!34779 r!13765)))) (= lambda!397887 lambda!397856))))

(declare-fun bs!1859646 () Bool)

(assert (= bs!1859646 (and b!6973783 b!6973778)))

(assert (=> bs!1859646 (not (= lambda!397887 lambda!397886))))

(declare-fun bs!1859647 () Bool)

(assert (= bs!1859647 (and b!6973783 b!6973015)))

(assert (=> bs!1859647 (= (and (= (regOne!34778 (regTwo!34779 (regTwo!34779 r!13765))) (regOne!34778 r!13765)) (= (regTwo!34778 (regTwo!34779 (regTwo!34779 r!13765))) (regTwo!34778 r!13765))) (= lambda!397887 lambda!397843))))

(declare-fun bs!1859648 () Bool)

(assert (= bs!1859648 (and b!6973783 b!6973767)))

(assert (=> bs!1859648 (not (= lambda!397887 lambda!397884))))

(declare-fun bs!1859649 () Bool)

(assert (= bs!1859649 (and b!6973783 b!6973600)))

(assert (=> bs!1859649 (not (= lambda!397887 lambda!397882))))

(declare-fun bs!1859650 () Bool)

(assert (= bs!1859650 (and b!6973783 b!6973189)))

(assert (=> bs!1859650 (not (= lambda!397887 lambda!397855))))

(declare-fun bs!1859651 () Bool)

(assert (= bs!1859651 (and b!6973783 b!6972982)))

(assert (=> bs!1859651 (not (= lambda!397887 lambda!397835))))

(declare-fun bs!1859652 () Bool)

(assert (= bs!1859652 (and b!6973783 b!6973609)))

(assert (=> bs!1859652 (= (and (= (regOne!34778 (regTwo!34779 (regTwo!34779 r!13765))) (regOne!34778 (regOne!34779 (regTwo!34779 r!13765)))) (= (regTwo!34778 (regTwo!34779 (regTwo!34779 r!13765))) (regTwo!34778 (regOne!34779 (regTwo!34779 r!13765))))) (= lambda!397887 lambda!397883))))

(declare-fun bs!1859653 () Bool)

(assert (= bs!1859653 (and b!6973783 b!6973010)))

(assert (=> bs!1859653 (not (= lambda!397887 lambda!397842))))

(assert (=> b!6973783 true))

(assert (=> b!6973783 true))

(declare-fun b!6973776 () Bool)

(declare-fun e!4191712 () Bool)

(declare-fun call!633013 () Bool)

(assert (=> b!6973776 (= e!4191712 call!633013)))

(declare-fun b!6973777 () Bool)

(declare-fun res!2844339 () Bool)

(declare-fun e!4191709 () Bool)

(assert (=> b!6973777 (=> res!2844339 e!4191709)))

(assert (=> b!6973777 (= res!2844339 call!633013)))

(declare-fun e!4191708 () Bool)

(assert (=> b!6973777 (= e!4191708 e!4191709)))

(declare-fun d!2171736 () Bool)

(declare-fun c!1292801 () Bool)

(assert (=> d!2171736 (= c!1292801 ((_ is EmptyExpr!17133) (regTwo!34779 (regTwo!34779 r!13765))))))

(assert (=> d!2171736 (= (matchRSpec!4150 (regTwo!34779 (regTwo!34779 r!13765)) s!9351) e!4191712)))

(declare-fun call!633014 () Bool)

(assert (=> b!6973778 (= e!4191709 call!633014)))

(declare-fun c!1292802 () Bool)

(declare-fun bm!633008 () Bool)

(assert (=> bm!633008 (= call!633014 (Exists!4096 (ite c!1292802 lambda!397886 lambda!397887)))))

(declare-fun b!6973779 () Bool)

(declare-fun e!4191713 () Bool)

(assert (=> b!6973779 (= e!4191713 (matchRSpec!4150 (regTwo!34779 (regTwo!34779 (regTwo!34779 r!13765))) s!9351))))

(declare-fun b!6973780 () Bool)

(declare-fun c!1292803 () Bool)

(assert (=> b!6973780 (= c!1292803 ((_ is Union!17133) (regTwo!34779 (regTwo!34779 r!13765))))))

(declare-fun e!4191711 () Bool)

(declare-fun e!4191710 () Bool)

(assert (=> b!6973780 (= e!4191711 e!4191710)))

(declare-fun bm!633009 () Bool)

(assert (=> bm!633009 (= call!633013 (isEmpty!39027 s!9351))))

(declare-fun b!6973781 () Bool)

(declare-fun c!1292800 () Bool)

(assert (=> b!6973781 (= c!1292800 ((_ is ElementMatch!17133) (regTwo!34779 (regTwo!34779 r!13765))))))

(declare-fun e!4191714 () Bool)

(assert (=> b!6973781 (= e!4191714 e!4191711)))

(declare-fun b!6973782 () Bool)

(assert (=> b!6973782 (= e!4191710 e!4191713)))

(declare-fun res!2844338 () Bool)

(assert (=> b!6973782 (= res!2844338 (matchRSpec!4150 (regOne!34779 (regTwo!34779 (regTwo!34779 r!13765))) s!9351))))

(assert (=> b!6973782 (=> res!2844338 e!4191713)))

(assert (=> b!6973783 (= e!4191708 call!633014)))

(declare-fun b!6973784 () Bool)

(assert (=> b!6973784 (= e!4191710 e!4191708)))

(assert (=> b!6973784 (= c!1292802 ((_ is Star!17133) (regTwo!34779 (regTwo!34779 r!13765))))))

(declare-fun b!6973785 () Bool)

(assert (=> b!6973785 (= e!4191712 e!4191714)))

(declare-fun res!2844337 () Bool)

(assert (=> b!6973785 (= res!2844337 (not ((_ is EmptyLang!17133) (regTwo!34779 (regTwo!34779 r!13765)))))))

(assert (=> b!6973785 (=> (not res!2844337) (not e!4191714))))

(declare-fun b!6973786 () Bool)

(assert (=> b!6973786 (= e!4191711 (= s!9351 (Cons!66824 (c!1292573 (regTwo!34779 (regTwo!34779 r!13765))) Nil!66824)))))

(assert (= (and d!2171736 c!1292801) b!6973776))

(assert (= (and d!2171736 (not c!1292801)) b!6973785))

(assert (= (and b!6973785 res!2844337) b!6973781))

(assert (= (and b!6973781 c!1292800) b!6973786))

(assert (= (and b!6973781 (not c!1292800)) b!6973780))

(assert (= (and b!6973780 c!1292803) b!6973782))

(assert (= (and b!6973780 (not c!1292803)) b!6973784))

(assert (= (and b!6973782 (not res!2844338)) b!6973779))

(assert (= (and b!6973784 c!1292802) b!6973777))

(assert (= (and b!6973784 (not c!1292802)) b!6973783))

(assert (= (and b!6973777 (not res!2844339)) b!6973778))

(assert (= (or b!6973778 b!6973783) bm!633008))

(assert (= (or b!6973776 b!6973777) bm!633009))

(declare-fun m!7661094 () Bool)

(assert (=> bm!633008 m!7661094))

(declare-fun m!7661096 () Bool)

(assert (=> b!6973779 m!7661096))

(assert (=> bm!633009 m!7660648))

(declare-fun m!7661098 () Bool)

(assert (=> b!6973782 m!7661098))

(assert (=> b!6972983 d!2171736))

(declare-fun d!2171738 () Bool)

(assert (=> d!2171738 (= (Exists!4096 (ite c!1292628 lambda!397835 lambda!397837)) (choose!51918 (ite c!1292628 lambda!397835 lambda!397837)))))

(declare-fun bs!1859654 () Bool)

(assert (= bs!1859654 d!2171738))

(declare-fun m!7661100 () Bool)

(assert (=> bs!1859654 m!7661100))

(assert (=> bm!632900 d!2171738))

(declare-fun d!2171740 () Bool)

(assert (=> d!2171740 (= (isEmpty!39025 (t!380690 lt!2479822)) ((_ is Nil!66823) (t!380690 lt!2479822)))))

(assert (=> b!6973138 d!2171740))

(assert (=> b!6973159 d!2171646))

(assert (=> b!6973163 d!2171646))

(declare-fun d!2171742 () Bool)

(declare-fun res!2844340 () Bool)

(declare-fun e!4191715 () Bool)

(assert (=> d!2171742 (=> res!2844340 e!4191715)))

(assert (=> d!2171742 (= res!2844340 ((_ is Nil!66823) l!9142))))

(assert (=> d!2171742 (= (forall!16004 l!9142 lambda!397859) e!4191715)))

(declare-fun b!6973787 () Bool)

(declare-fun e!4191716 () Bool)

(assert (=> b!6973787 (= e!4191715 e!4191716)))

(declare-fun res!2844341 () Bool)

(assert (=> b!6973787 (=> (not res!2844341) (not e!4191716))))

(assert (=> b!6973787 (= res!2844341 (dynLambda!26647 lambda!397859 (h!73271 l!9142)))))

(declare-fun b!6973788 () Bool)

(assert (=> b!6973788 (= e!4191716 (forall!16004 (t!380690 l!9142) lambda!397859))))

(assert (= (and d!2171742 (not res!2844340)) b!6973787))

(assert (= (and b!6973787 res!2844341) b!6973788))

(declare-fun b_lambda!260899 () Bool)

(assert (=> (not b_lambda!260899) (not b!6973787)))

(declare-fun m!7661102 () Bool)

(assert (=> b!6973787 m!7661102))

(declare-fun m!7661104 () Bool)

(assert (=> b!6973788 m!7661104))

(assert (=> d!2171554 d!2171742))

(assert (=> d!2171538 d!2171654))

(declare-fun b!6973789 () Bool)

(declare-fun e!4191721 () Bool)

(declare-fun e!4191722 () Bool)

(assert (=> b!6973789 (= e!4191721 e!4191722)))

(declare-fun res!2844345 () Bool)

(assert (=> b!6973789 (=> (not res!2844345) (not e!4191722))))

(declare-fun call!633015 () Bool)

(assert (=> b!6973789 (= res!2844345 call!633015)))

(declare-fun bm!633010 () Bool)

(declare-fun call!633017 () Bool)

(assert (=> bm!633010 (= call!633015 call!633017)))

(declare-fun d!2171744 () Bool)

(declare-fun res!2844344 () Bool)

(declare-fun e!4191719 () Bool)

(assert (=> d!2171744 (=> res!2844344 e!4191719)))

(assert (=> d!2171744 (= res!2844344 ((_ is ElementMatch!17133) (regOne!34779 r!13765)))))

(assert (=> d!2171744 (= (validRegex!8815 (regOne!34779 r!13765)) e!4191719)))

(declare-fun b!6973790 () Bool)

(declare-fun call!633016 () Bool)

(assert (=> b!6973790 (= e!4191722 call!633016)))

(declare-fun b!6973791 () Bool)

(declare-fun res!2844346 () Bool)

(declare-fun e!4191718 () Bool)

(assert (=> b!6973791 (=> (not res!2844346) (not e!4191718))))

(assert (=> b!6973791 (= res!2844346 call!633015)))

(declare-fun e!4191720 () Bool)

(assert (=> b!6973791 (= e!4191720 e!4191718)))

(declare-fun b!6973792 () Bool)

(declare-fun res!2844343 () Bool)

(assert (=> b!6973792 (=> res!2844343 e!4191721)))

(assert (=> b!6973792 (= res!2844343 (not ((_ is Concat!25978) (regOne!34779 r!13765))))))

(assert (=> b!6973792 (= e!4191720 e!4191721)))

(declare-fun b!6973793 () Bool)

(declare-fun e!4191723 () Bool)

(assert (=> b!6973793 (= e!4191723 call!633017)))

(declare-fun bm!633011 () Bool)

(declare-fun c!1292804 () Bool)

(assert (=> bm!633011 (= call!633016 (validRegex!8815 (ite c!1292804 (regTwo!34779 (regOne!34779 r!13765)) (regTwo!34778 (regOne!34779 r!13765)))))))

(declare-fun b!6973794 () Bool)

(assert (=> b!6973794 (= e!4191718 call!633016)))

(declare-fun b!6973795 () Bool)

(declare-fun e!4191717 () Bool)

(assert (=> b!6973795 (= e!4191717 e!4191720)))

(assert (=> b!6973795 (= c!1292804 ((_ is Union!17133) (regOne!34779 r!13765)))))

(declare-fun b!6973796 () Bool)

(assert (=> b!6973796 (= e!4191717 e!4191723)))

(declare-fun res!2844342 () Bool)

(assert (=> b!6973796 (= res!2844342 (not (nullable!6918 (reg!17462 (regOne!34779 r!13765)))))))

(assert (=> b!6973796 (=> (not res!2844342) (not e!4191723))))

(declare-fun b!6973797 () Bool)

(assert (=> b!6973797 (= e!4191719 e!4191717)))

(declare-fun c!1292805 () Bool)

(assert (=> b!6973797 (= c!1292805 ((_ is Star!17133) (regOne!34779 r!13765)))))

(declare-fun bm!633012 () Bool)

(assert (=> bm!633012 (= call!633017 (validRegex!8815 (ite c!1292805 (reg!17462 (regOne!34779 r!13765)) (ite c!1292804 (regOne!34779 (regOne!34779 r!13765)) (regOne!34778 (regOne!34779 r!13765))))))))

(assert (= (and d!2171744 (not res!2844344)) b!6973797))

(assert (= (and b!6973797 c!1292805) b!6973796))

(assert (= (and b!6973797 (not c!1292805)) b!6973795))

(assert (= (and b!6973796 res!2844342) b!6973793))

(assert (= (and b!6973795 c!1292804) b!6973791))

(assert (= (and b!6973795 (not c!1292804)) b!6973792))

(assert (= (and b!6973791 res!2844346) b!6973794))

(assert (= (and b!6973792 (not res!2844343)) b!6973789))

(assert (= (and b!6973789 res!2844345) b!6973790))

(assert (= (or b!6973791 b!6973789) bm!633010))

(assert (= (or b!6973794 b!6973790) bm!633011))

(assert (= (or b!6973793 bm!633010) bm!633012))

(declare-fun m!7661106 () Bool)

(assert (=> bm!633011 m!7661106))

(declare-fun m!7661108 () Bool)

(assert (=> b!6973796 m!7661108))

(declare-fun m!7661110 () Bool)

(assert (=> bm!633012 m!7661110))

(assert (=> d!2171538 d!2171744))

(declare-fun b!6973798 () Bool)

(declare-fun res!2844352 () Bool)

(declare-fun e!4191730 () Bool)

(assert (=> b!6973798 (=> res!2844352 e!4191730)))

(declare-fun e!4191727 () Bool)

(assert (=> b!6973798 (= res!2844352 e!4191727)))

(declare-fun res!2844348 () Bool)

(assert (=> b!6973798 (=> (not res!2844348) (not e!4191727))))

(declare-fun lt!2479875 () Bool)

(assert (=> b!6973798 (= res!2844348 lt!2479875)))

(declare-fun b!6973799 () Bool)

(declare-fun e!4191728 () Bool)

(assert (=> b!6973799 (= e!4191728 (nullable!6918 (derivativeStep!5543 r!13765 (head!14038 s!9351))))))

(declare-fun b!6973800 () Bool)

(assert (=> b!6973800 (= e!4191727 (= (head!14038 (tail!13107 s!9351)) (c!1292573 (derivativeStep!5543 r!13765 (head!14038 s!9351)))))))

(declare-fun bm!633013 () Bool)

(declare-fun call!633018 () Bool)

(assert (=> bm!633013 (= call!633018 (isEmpty!39027 (tail!13107 s!9351)))))

(declare-fun b!6973801 () Bool)

(declare-fun e!4191724 () Bool)

(declare-fun e!4191726 () Bool)

(assert (=> b!6973801 (= e!4191724 e!4191726)))

(declare-fun c!1292807 () Bool)

(assert (=> b!6973801 (= c!1292807 ((_ is EmptyLang!17133) (derivativeStep!5543 r!13765 (head!14038 s!9351))))))

(declare-fun d!2171746 () Bool)

(assert (=> d!2171746 e!4191724))

(declare-fun c!1292806 () Bool)

(assert (=> d!2171746 (= c!1292806 ((_ is EmptyExpr!17133) (derivativeStep!5543 r!13765 (head!14038 s!9351))))))

(assert (=> d!2171746 (= lt!2479875 e!4191728)))

(declare-fun c!1292808 () Bool)

(assert (=> d!2171746 (= c!1292808 (isEmpty!39027 (tail!13107 s!9351)))))

(assert (=> d!2171746 (validRegex!8815 (derivativeStep!5543 r!13765 (head!14038 s!9351)))))

(assert (=> d!2171746 (= (matchR!9235 (derivativeStep!5543 r!13765 (head!14038 s!9351)) (tail!13107 s!9351)) lt!2479875)))

(declare-fun b!6973802 () Bool)

(assert (=> b!6973802 (= e!4191726 (not lt!2479875))))

(declare-fun b!6973803 () Bool)

(declare-fun e!4191729 () Bool)

(assert (=> b!6973803 (= e!4191730 e!4191729)))

(declare-fun res!2844347 () Bool)

(assert (=> b!6973803 (=> (not res!2844347) (not e!4191729))))

(assert (=> b!6973803 (= res!2844347 (not lt!2479875))))

(declare-fun b!6973804 () Bool)

(declare-fun e!4191725 () Bool)

(assert (=> b!6973804 (= e!4191729 e!4191725)))

(declare-fun res!2844350 () Bool)

(assert (=> b!6973804 (=> res!2844350 e!4191725)))

(assert (=> b!6973804 (= res!2844350 call!633018)))

(declare-fun b!6973805 () Bool)

(declare-fun res!2844351 () Bool)

(assert (=> b!6973805 (=> res!2844351 e!4191725)))

(assert (=> b!6973805 (= res!2844351 (not (isEmpty!39027 (tail!13107 (tail!13107 s!9351)))))))

(declare-fun b!6973806 () Bool)

(assert (=> b!6973806 (= e!4191724 (= lt!2479875 call!633018))))

(declare-fun b!6973807 () Bool)

(declare-fun res!2844353 () Bool)

(assert (=> b!6973807 (=> res!2844353 e!4191730)))

(assert (=> b!6973807 (= res!2844353 (not ((_ is ElementMatch!17133) (derivativeStep!5543 r!13765 (head!14038 s!9351)))))))

(assert (=> b!6973807 (= e!4191726 e!4191730)))

(declare-fun b!6973808 () Bool)

(declare-fun res!2844354 () Bool)

(assert (=> b!6973808 (=> (not res!2844354) (not e!4191727))))

(assert (=> b!6973808 (= res!2844354 (not call!633018))))

(declare-fun b!6973809 () Bool)

(assert (=> b!6973809 (= e!4191728 (matchR!9235 (derivativeStep!5543 (derivativeStep!5543 r!13765 (head!14038 s!9351)) (head!14038 (tail!13107 s!9351))) (tail!13107 (tail!13107 s!9351))))))

(declare-fun b!6973810 () Bool)

(assert (=> b!6973810 (= e!4191725 (not (= (head!14038 (tail!13107 s!9351)) (c!1292573 (derivativeStep!5543 r!13765 (head!14038 s!9351))))))))

(declare-fun b!6973811 () Bool)

(declare-fun res!2844349 () Bool)

(assert (=> b!6973811 (=> (not res!2844349) (not e!4191727))))

(assert (=> b!6973811 (= res!2844349 (isEmpty!39027 (tail!13107 (tail!13107 s!9351))))))

(assert (= (and d!2171746 c!1292808) b!6973799))

(assert (= (and d!2171746 (not c!1292808)) b!6973809))

(assert (= (and d!2171746 c!1292806) b!6973806))

(assert (= (and d!2171746 (not c!1292806)) b!6973801))

(assert (= (and b!6973801 c!1292807) b!6973802))

(assert (= (and b!6973801 (not c!1292807)) b!6973807))

(assert (= (and b!6973807 (not res!2844353)) b!6973798))

(assert (= (and b!6973798 res!2844348) b!6973808))

(assert (= (and b!6973808 res!2844354) b!6973811))

(assert (= (and b!6973811 res!2844349) b!6973800))

(assert (= (and b!6973798 (not res!2844352)) b!6973803))

(assert (= (and b!6973803 res!2844347) b!6973804))

(assert (= (and b!6973804 (not res!2844350)) b!6973805))

(assert (= (and b!6973805 (not res!2844351)) b!6973810))

(assert (= (or b!6973806 b!6973808 b!6973804) bm!633013))

(assert (=> d!2171746 m!7660692))

(assert (=> d!2171746 m!7660696))

(assert (=> d!2171746 m!7660690))

(declare-fun m!7661112 () Bool)

(assert (=> d!2171746 m!7661112))

(assert (=> b!6973809 m!7660692))

(assert (=> b!6973809 m!7660872))

(assert (=> b!6973809 m!7660690))

(assert (=> b!6973809 m!7660872))

(declare-fun m!7661114 () Bool)

(assert (=> b!6973809 m!7661114))

(assert (=> b!6973809 m!7660692))

(assert (=> b!6973809 m!7660876))

(assert (=> b!6973809 m!7661114))

(assert (=> b!6973809 m!7660876))

(declare-fun m!7661116 () Bool)

(assert (=> b!6973809 m!7661116))

(assert (=> b!6973800 m!7660692))

(assert (=> b!6973800 m!7660872))

(assert (=> b!6973811 m!7660692))

(assert (=> b!6973811 m!7660876))

(assert (=> b!6973811 m!7660876))

(assert (=> b!6973811 m!7660886))

(assert (=> b!6973810 m!7660692))

(assert (=> b!6973810 m!7660872))

(assert (=> bm!633013 m!7660692))

(assert (=> bm!633013 m!7660696))

(assert (=> b!6973799 m!7660690))

(declare-fun m!7661118 () Bool)

(assert (=> b!6973799 m!7661118))

(assert (=> b!6973805 m!7660692))

(assert (=> b!6973805 m!7660876))

(assert (=> b!6973805 m!7660876))

(assert (=> b!6973805 m!7660886))

(assert (=> b!6973114 d!2171746))

(declare-fun bm!633014 () Bool)

(declare-fun call!633022 () Regex!17133)

(declare-fun call!633020 () Regex!17133)

(assert (=> bm!633014 (= call!633022 call!633020)))

(declare-fun d!2171748 () Bool)

(declare-fun lt!2479876 () Regex!17133)

(assert (=> d!2171748 (validRegex!8815 lt!2479876)))

(declare-fun e!4191733 () Regex!17133)

(assert (=> d!2171748 (= lt!2479876 e!4191733)))

(declare-fun c!1292811 () Bool)

(assert (=> d!2171748 (= c!1292811 (or ((_ is EmptyExpr!17133) r!13765) ((_ is EmptyLang!17133) r!13765)))))

(assert (=> d!2171748 (validRegex!8815 r!13765)))

(assert (=> d!2171748 (= (derivativeStep!5543 r!13765 (head!14038 s!9351)) lt!2479876)))

(declare-fun b!6973812 () Bool)

(declare-fun e!4191734 () Regex!17133)

(assert (=> b!6973812 (= e!4191734 (Union!17133 (Concat!25978 call!633022 (regTwo!34778 r!13765)) EmptyLang!17133))))

(declare-fun b!6973813 () Bool)

(declare-fun e!4191731 () Regex!17133)

(declare-fun call!633021 () Regex!17133)

(declare-fun call!633019 () Regex!17133)

(assert (=> b!6973813 (= e!4191731 (Union!17133 call!633021 call!633019))))

(declare-fun b!6973814 () Bool)

(declare-fun c!1292813 () Bool)

(assert (=> b!6973814 (= c!1292813 (nullable!6918 (regOne!34778 r!13765)))))

(declare-fun e!4191732 () Regex!17133)

(assert (=> b!6973814 (= e!4191732 e!4191734)))

(declare-fun b!6973815 () Bool)

(assert (=> b!6973815 (= e!4191732 (Concat!25978 call!633020 r!13765))))

(declare-fun b!6973816 () Bool)

(assert (=> b!6973816 (= e!4191731 e!4191732)))

(declare-fun c!1292809 () Bool)

(assert (=> b!6973816 (= c!1292809 ((_ is Star!17133) r!13765))))

(declare-fun b!6973817 () Bool)

(declare-fun e!4191735 () Regex!17133)

(assert (=> b!6973817 (= e!4191735 (ite (= (head!14038 s!9351) (c!1292573 r!13765)) EmptyExpr!17133 EmptyLang!17133))))

(declare-fun c!1292810 () Bool)

(declare-fun bm!633015 () Bool)

(assert (=> bm!633015 (= call!633019 (derivativeStep!5543 (ite c!1292810 (regTwo!34779 r!13765) (regOne!34778 r!13765)) (head!14038 s!9351)))))

(declare-fun b!6973818 () Bool)

(assert (=> b!6973818 (= e!4191733 e!4191735)))

(declare-fun c!1292812 () Bool)

(assert (=> b!6973818 (= c!1292812 ((_ is ElementMatch!17133) r!13765))))

(declare-fun b!6973819 () Bool)

(assert (=> b!6973819 (= e!4191733 EmptyLang!17133)))

(declare-fun bm!633016 () Bool)

(assert (=> bm!633016 (= call!633020 call!633021)))

(declare-fun b!6973820 () Bool)

(assert (=> b!6973820 (= e!4191734 (Union!17133 (Concat!25978 call!633019 (regTwo!34778 r!13765)) call!633022))))

(declare-fun b!6973821 () Bool)

(assert (=> b!6973821 (= c!1292810 ((_ is Union!17133) r!13765))))

(assert (=> b!6973821 (= e!4191735 e!4191731)))

(declare-fun bm!633017 () Bool)

(assert (=> bm!633017 (= call!633021 (derivativeStep!5543 (ite c!1292810 (regOne!34779 r!13765) (ite c!1292809 (reg!17462 r!13765) (ite c!1292813 (regTwo!34778 r!13765) (regOne!34778 r!13765)))) (head!14038 s!9351)))))

(assert (= (and d!2171748 c!1292811) b!6973819))

(assert (= (and d!2171748 (not c!1292811)) b!6973818))

(assert (= (and b!6973818 c!1292812) b!6973817))

(assert (= (and b!6973818 (not c!1292812)) b!6973821))

(assert (= (and b!6973821 c!1292810) b!6973813))

(assert (= (and b!6973821 (not c!1292810)) b!6973816))

(assert (= (and b!6973816 c!1292809) b!6973815))

(assert (= (and b!6973816 (not c!1292809)) b!6973814))

(assert (= (and b!6973814 c!1292813) b!6973820))

(assert (= (and b!6973814 (not c!1292813)) b!6973812))

(assert (= (or b!6973820 b!6973812) bm!633014))

(assert (= (or b!6973815 bm!633014) bm!633016))

(assert (= (or b!6973813 bm!633016) bm!633017))

(assert (= (or b!6973813 b!6973820) bm!633015))

(declare-fun m!7661120 () Bool)

(assert (=> d!2171748 m!7661120))

(assert (=> d!2171748 m!7660686))

(declare-fun m!7661122 () Bool)

(assert (=> b!6973814 m!7661122))

(assert (=> bm!633015 m!7660688))

(declare-fun m!7661124 () Bool)

(assert (=> bm!633015 m!7661124))

(assert (=> bm!633017 m!7660688))

(declare-fun m!7661126 () Bool)

(assert (=> bm!633017 m!7661126))

(assert (=> b!6973114 d!2171748))

(assert (=> b!6973114 d!2171646))

(assert (=> b!6973114 d!2171648))

(assert (=> b!6973144 d!2171550))

(declare-fun d!2171750 () Bool)

(assert (=> d!2171750 (= (isEmpty!39025 (tail!13105 lt!2479822)) ((_ is Nil!66823) (tail!13105 lt!2479822)))))

(assert (=> b!6973142 d!2171750))

(declare-fun d!2171752 () Bool)

(assert (=> d!2171752 (= (tail!13105 lt!2479822) (t!380690 lt!2479822))))

(assert (=> b!6973142 d!2171752))

(assert (=> b!6973168 d!2171660))

(assert (=> b!6973168 d!2171648))

(declare-fun bs!1859655 () Bool)

(declare-fun b!6973824 () Bool)

(assert (= bs!1859655 (and b!6973824 b!6972987)))

(declare-fun lambda!397888 () Int)

(assert (=> bs!1859655 (not (= lambda!397888 lambda!397837))))

(declare-fun bs!1859656 () Bool)

(assert (= bs!1859656 (and b!6973824 b!6973772)))

(assert (=> bs!1859656 (not (= lambda!397888 lambda!397885))))

(declare-fun bs!1859657 () Bool)

(assert (= bs!1859657 (and b!6973824 b!6973194)))

(assert (=> bs!1859657 (not (= lambda!397888 lambda!397856))))

(declare-fun bs!1859658 () Bool)

(assert (= bs!1859658 (and b!6973824 b!6973778)))

(assert (=> bs!1859658 (= (and (= (reg!17462 (regTwo!34779 (regOne!34779 r!13765))) (reg!17462 (regTwo!34779 (regTwo!34779 r!13765)))) (= (regTwo!34779 (regOne!34779 r!13765)) (regTwo!34779 (regTwo!34779 r!13765)))) (= lambda!397888 lambda!397886))))

(declare-fun bs!1859659 () Bool)

(assert (= bs!1859659 (and b!6973824 b!6973015)))

(assert (=> bs!1859659 (not (= lambda!397888 lambda!397843))))

(declare-fun bs!1859660 () Bool)

(assert (= bs!1859660 (and b!6973824 b!6973767)))

(assert (=> bs!1859660 (= (and (= (reg!17462 (regTwo!34779 (regOne!34779 r!13765))) (reg!17462 (regOne!34779 (regOne!34779 r!13765)))) (= (regTwo!34779 (regOne!34779 r!13765)) (regOne!34779 (regOne!34779 r!13765)))) (= lambda!397888 lambda!397884))))

(declare-fun bs!1859661 () Bool)

(assert (= bs!1859661 (and b!6973824 b!6973600)))

(assert (=> bs!1859661 (= (and (= (reg!17462 (regTwo!34779 (regOne!34779 r!13765))) (reg!17462 (regOne!34779 (regTwo!34779 r!13765)))) (= (regTwo!34779 (regOne!34779 r!13765)) (regOne!34779 (regTwo!34779 r!13765)))) (= lambda!397888 lambda!397882))))

(declare-fun bs!1859662 () Bool)

(assert (= bs!1859662 (and b!6973824 b!6973189)))

(assert (=> bs!1859662 (= (and (= (reg!17462 (regTwo!34779 (regOne!34779 r!13765))) (reg!17462 (regOne!34779 r!13765))) (= (regTwo!34779 (regOne!34779 r!13765)) (regOne!34779 r!13765))) (= lambda!397888 lambda!397855))))

(declare-fun bs!1859663 () Bool)

(assert (= bs!1859663 (and b!6973824 b!6972982)))

(assert (=> bs!1859663 (= (and (= (reg!17462 (regTwo!34779 (regOne!34779 r!13765))) (reg!17462 (regTwo!34779 r!13765))) (= (regTwo!34779 (regOne!34779 r!13765)) (regTwo!34779 r!13765))) (= lambda!397888 lambda!397835))))

(declare-fun bs!1859664 () Bool)

(assert (= bs!1859664 (and b!6973824 b!6973783)))

(assert (=> bs!1859664 (not (= lambda!397888 lambda!397887))))

(declare-fun bs!1859665 () Bool)

(assert (= bs!1859665 (and b!6973824 b!6973609)))

(assert (=> bs!1859665 (not (= lambda!397888 lambda!397883))))

(declare-fun bs!1859666 () Bool)

(assert (= bs!1859666 (and b!6973824 b!6973010)))

(assert (=> bs!1859666 (= (and (= (reg!17462 (regTwo!34779 (regOne!34779 r!13765))) (reg!17462 r!13765)) (= (regTwo!34779 (regOne!34779 r!13765)) r!13765)) (= lambda!397888 lambda!397842))))

(assert (=> b!6973824 true))

(assert (=> b!6973824 true))

(declare-fun bs!1859667 () Bool)

(declare-fun b!6973829 () Bool)

(assert (= bs!1859667 (and b!6973829 b!6973824)))

(declare-fun lambda!397889 () Int)

(assert (=> bs!1859667 (not (= lambda!397889 lambda!397888))))

(declare-fun bs!1859668 () Bool)

(assert (= bs!1859668 (and b!6973829 b!6972987)))

(assert (=> bs!1859668 (= (and (= (regOne!34778 (regTwo!34779 (regOne!34779 r!13765))) (regOne!34778 (regTwo!34779 r!13765))) (= (regTwo!34778 (regTwo!34779 (regOne!34779 r!13765))) (regTwo!34778 (regTwo!34779 r!13765)))) (= lambda!397889 lambda!397837))))

(declare-fun bs!1859669 () Bool)

(assert (= bs!1859669 (and b!6973829 b!6973772)))

(assert (=> bs!1859669 (= (and (= (regOne!34778 (regTwo!34779 (regOne!34779 r!13765))) (regOne!34778 (regOne!34779 (regOne!34779 r!13765)))) (= (regTwo!34778 (regTwo!34779 (regOne!34779 r!13765))) (regTwo!34778 (regOne!34779 (regOne!34779 r!13765))))) (= lambda!397889 lambda!397885))))

(declare-fun bs!1859670 () Bool)

(assert (= bs!1859670 (and b!6973829 b!6973194)))

(assert (=> bs!1859670 (= (and (= (regOne!34778 (regTwo!34779 (regOne!34779 r!13765))) (regOne!34778 (regOne!34779 r!13765))) (= (regTwo!34778 (regTwo!34779 (regOne!34779 r!13765))) (regTwo!34778 (regOne!34779 r!13765)))) (= lambda!397889 lambda!397856))))

(declare-fun bs!1859671 () Bool)

(assert (= bs!1859671 (and b!6973829 b!6973778)))

(assert (=> bs!1859671 (not (= lambda!397889 lambda!397886))))

(declare-fun bs!1859672 () Bool)

(assert (= bs!1859672 (and b!6973829 b!6973015)))

(assert (=> bs!1859672 (= (and (= (regOne!34778 (regTwo!34779 (regOne!34779 r!13765))) (regOne!34778 r!13765)) (= (regTwo!34778 (regTwo!34779 (regOne!34779 r!13765))) (regTwo!34778 r!13765))) (= lambda!397889 lambda!397843))))

(declare-fun bs!1859673 () Bool)

(assert (= bs!1859673 (and b!6973829 b!6973767)))

(assert (=> bs!1859673 (not (= lambda!397889 lambda!397884))))

(declare-fun bs!1859674 () Bool)

(assert (= bs!1859674 (and b!6973829 b!6973600)))

(assert (=> bs!1859674 (not (= lambda!397889 lambda!397882))))

(declare-fun bs!1859675 () Bool)

(assert (= bs!1859675 (and b!6973829 b!6973189)))

(assert (=> bs!1859675 (not (= lambda!397889 lambda!397855))))

(declare-fun bs!1859676 () Bool)

(assert (= bs!1859676 (and b!6973829 b!6972982)))

(assert (=> bs!1859676 (not (= lambda!397889 lambda!397835))))

(declare-fun bs!1859677 () Bool)

(assert (= bs!1859677 (and b!6973829 b!6973783)))

(assert (=> bs!1859677 (= (and (= (regOne!34778 (regTwo!34779 (regOne!34779 r!13765))) (regOne!34778 (regTwo!34779 (regTwo!34779 r!13765)))) (= (regTwo!34778 (regTwo!34779 (regOne!34779 r!13765))) (regTwo!34778 (regTwo!34779 (regTwo!34779 r!13765))))) (= lambda!397889 lambda!397887))))

(declare-fun bs!1859678 () Bool)

(assert (= bs!1859678 (and b!6973829 b!6973609)))

(assert (=> bs!1859678 (= (and (= (regOne!34778 (regTwo!34779 (regOne!34779 r!13765))) (regOne!34778 (regOne!34779 (regTwo!34779 r!13765)))) (= (regTwo!34778 (regTwo!34779 (regOne!34779 r!13765))) (regTwo!34778 (regOne!34779 (regTwo!34779 r!13765))))) (= lambda!397889 lambda!397883))))

(declare-fun bs!1859679 () Bool)

(assert (= bs!1859679 (and b!6973829 b!6973010)))

(assert (=> bs!1859679 (not (= lambda!397889 lambda!397842))))

(assert (=> b!6973829 true))

(assert (=> b!6973829 true))

(declare-fun b!6973822 () Bool)

(declare-fun e!4191740 () Bool)

(declare-fun call!633023 () Bool)

(assert (=> b!6973822 (= e!4191740 call!633023)))

(declare-fun b!6973823 () Bool)

(declare-fun res!2844357 () Bool)

(declare-fun e!4191737 () Bool)

(assert (=> b!6973823 (=> res!2844357 e!4191737)))

(assert (=> b!6973823 (= res!2844357 call!633023)))

(declare-fun e!4191736 () Bool)

(assert (=> b!6973823 (= e!4191736 e!4191737)))

(declare-fun d!2171754 () Bool)

(declare-fun c!1292815 () Bool)

(assert (=> d!2171754 (= c!1292815 ((_ is EmptyExpr!17133) (regTwo!34779 (regOne!34779 r!13765))))))

(assert (=> d!2171754 (= (matchRSpec!4150 (regTwo!34779 (regOne!34779 r!13765)) s!9351) e!4191740)))

(declare-fun call!633024 () Bool)

(assert (=> b!6973824 (= e!4191737 call!633024)))

(declare-fun bm!633018 () Bool)

(declare-fun c!1292816 () Bool)

(assert (=> bm!633018 (= call!633024 (Exists!4096 (ite c!1292816 lambda!397888 lambda!397889)))))

(declare-fun b!6973825 () Bool)

(declare-fun e!4191741 () Bool)

(assert (=> b!6973825 (= e!4191741 (matchRSpec!4150 (regTwo!34779 (regTwo!34779 (regOne!34779 r!13765))) s!9351))))

(declare-fun b!6973826 () Bool)

(declare-fun c!1292817 () Bool)

(assert (=> b!6973826 (= c!1292817 ((_ is Union!17133) (regTwo!34779 (regOne!34779 r!13765))))))

(declare-fun e!4191739 () Bool)

(declare-fun e!4191738 () Bool)

(assert (=> b!6973826 (= e!4191739 e!4191738)))

(declare-fun bm!633019 () Bool)

(assert (=> bm!633019 (= call!633023 (isEmpty!39027 s!9351))))

(declare-fun b!6973827 () Bool)

(declare-fun c!1292814 () Bool)

(assert (=> b!6973827 (= c!1292814 ((_ is ElementMatch!17133) (regTwo!34779 (regOne!34779 r!13765))))))

(declare-fun e!4191742 () Bool)

(assert (=> b!6973827 (= e!4191742 e!4191739)))

(declare-fun b!6973828 () Bool)

(assert (=> b!6973828 (= e!4191738 e!4191741)))

(declare-fun res!2844356 () Bool)

(assert (=> b!6973828 (= res!2844356 (matchRSpec!4150 (regOne!34779 (regTwo!34779 (regOne!34779 r!13765))) s!9351))))

(assert (=> b!6973828 (=> res!2844356 e!4191741)))

(assert (=> b!6973829 (= e!4191736 call!633024)))

(declare-fun b!6973830 () Bool)

(assert (=> b!6973830 (= e!4191738 e!4191736)))

(assert (=> b!6973830 (= c!1292816 ((_ is Star!17133) (regTwo!34779 (regOne!34779 r!13765))))))

(declare-fun b!6973831 () Bool)

(assert (=> b!6973831 (= e!4191740 e!4191742)))

(declare-fun res!2844355 () Bool)

(assert (=> b!6973831 (= res!2844355 (not ((_ is EmptyLang!17133) (regTwo!34779 (regOne!34779 r!13765)))))))

(assert (=> b!6973831 (=> (not res!2844355) (not e!4191742))))

(declare-fun b!6973832 () Bool)

(assert (=> b!6973832 (= e!4191739 (= s!9351 (Cons!66824 (c!1292573 (regTwo!34779 (regOne!34779 r!13765))) Nil!66824)))))

(assert (= (and d!2171754 c!1292815) b!6973822))

(assert (= (and d!2171754 (not c!1292815)) b!6973831))

(assert (= (and b!6973831 res!2844355) b!6973827))

(assert (= (and b!6973827 c!1292814) b!6973832))

(assert (= (and b!6973827 (not c!1292814)) b!6973826))

(assert (= (and b!6973826 c!1292817) b!6973828))

(assert (= (and b!6973826 (not c!1292817)) b!6973830))

(assert (= (and b!6973828 (not res!2844356)) b!6973825))

(assert (= (and b!6973830 c!1292816) b!6973823))

(assert (= (and b!6973830 (not c!1292816)) b!6973829))

(assert (= (and b!6973823 (not res!2844357)) b!6973824))

(assert (= (or b!6973824 b!6973829) bm!633018))

(assert (= (or b!6973822 b!6973823) bm!633019))

(declare-fun m!7661128 () Bool)

(assert (=> bm!633018 m!7661128))

(declare-fun m!7661130 () Bool)

(assert (=> b!6973825 m!7661130))

(assert (=> bm!633019 m!7660648))

(declare-fun m!7661132 () Bool)

(assert (=> b!6973828 m!7661132))

(assert (=> b!6973190 d!2171754))

(assert (=> d!2171530 d!2171522))

(assert (=> d!2171530 d!2171516))

(declare-fun d!2171756 () Bool)

(assert (=> d!2171756 (= (matchR!9235 r!13765 s!9351) (matchRSpec!4150 r!13765 s!9351))))

(assert (=> d!2171756 true))

(declare-fun _$88!5772 () Unit!160918)

(assert (=> d!2171756 (= (choose!51916 r!13765 s!9351) _$88!5772)))

(declare-fun bs!1859680 () Bool)

(assert (= bs!1859680 d!2171756))

(assert (=> bs!1859680 m!7660534))

(assert (=> bs!1859680 m!7660532))

(assert (=> d!2171530 d!2171756))

(declare-fun b!6973833 () Bool)

(declare-fun e!4191747 () Bool)

(declare-fun e!4191748 () Bool)

(assert (=> b!6973833 (= e!4191747 e!4191748)))

(declare-fun res!2844361 () Bool)

(assert (=> b!6973833 (=> (not res!2844361) (not e!4191748))))

(declare-fun call!633025 () Bool)

(assert (=> b!6973833 (= res!2844361 call!633025)))

(declare-fun bm!633020 () Bool)

(declare-fun call!633027 () Bool)

(assert (=> bm!633020 (= call!633025 call!633027)))

(declare-fun d!2171758 () Bool)

(declare-fun res!2844360 () Bool)

(declare-fun e!4191745 () Bool)

(assert (=> d!2171758 (=> res!2844360 e!4191745)))

(assert (=> d!2171758 (= res!2844360 ((_ is ElementMatch!17133) r!13765))))

(assert (=> d!2171758 (= (validRegex!8815 r!13765) e!4191745)))

(declare-fun b!6973834 () Bool)

(declare-fun call!633026 () Bool)

(assert (=> b!6973834 (= e!4191748 call!633026)))

(declare-fun b!6973835 () Bool)

(declare-fun res!2844362 () Bool)

(declare-fun e!4191744 () Bool)

(assert (=> b!6973835 (=> (not res!2844362) (not e!4191744))))

(assert (=> b!6973835 (= res!2844362 call!633025)))

(declare-fun e!4191746 () Bool)

(assert (=> b!6973835 (= e!4191746 e!4191744)))

(declare-fun b!6973836 () Bool)

(declare-fun res!2844359 () Bool)

(assert (=> b!6973836 (=> res!2844359 e!4191747)))

(assert (=> b!6973836 (= res!2844359 (not ((_ is Concat!25978) r!13765)))))

(assert (=> b!6973836 (= e!4191746 e!4191747)))

(declare-fun b!6973837 () Bool)

(declare-fun e!4191749 () Bool)

(assert (=> b!6973837 (= e!4191749 call!633027)))

(declare-fun bm!633021 () Bool)

(declare-fun c!1292818 () Bool)

(assert (=> bm!633021 (= call!633026 (validRegex!8815 (ite c!1292818 (regTwo!34779 r!13765) (regTwo!34778 r!13765))))))

(declare-fun b!6973838 () Bool)

(assert (=> b!6973838 (= e!4191744 call!633026)))

(declare-fun b!6973839 () Bool)

(declare-fun e!4191743 () Bool)

(assert (=> b!6973839 (= e!4191743 e!4191746)))

(assert (=> b!6973839 (= c!1292818 ((_ is Union!17133) r!13765))))

(declare-fun b!6973840 () Bool)

(assert (=> b!6973840 (= e!4191743 e!4191749)))

(declare-fun res!2844358 () Bool)

(assert (=> b!6973840 (= res!2844358 (not (nullable!6918 (reg!17462 r!13765))))))

(assert (=> b!6973840 (=> (not res!2844358) (not e!4191749))))

(declare-fun b!6973841 () Bool)

(assert (=> b!6973841 (= e!4191745 e!4191743)))

(declare-fun c!1292819 () Bool)

(assert (=> b!6973841 (= c!1292819 ((_ is Star!17133) r!13765))))

(declare-fun bm!633022 () Bool)

(assert (=> bm!633022 (= call!633027 (validRegex!8815 (ite c!1292819 (reg!17462 r!13765) (ite c!1292818 (regOne!34779 r!13765) (regOne!34778 r!13765)))))))

(assert (= (and d!2171758 (not res!2844360)) b!6973841))

(assert (= (and b!6973841 c!1292819) b!6973840))

(assert (= (and b!6973841 (not c!1292819)) b!6973839))

(assert (= (and b!6973840 res!2844358) b!6973837))

(assert (= (and b!6973839 c!1292818) b!6973835))

(assert (= (and b!6973839 (not c!1292818)) b!6973836))

(assert (= (and b!6973835 res!2844362) b!6973838))

(assert (= (and b!6973836 (not res!2844359)) b!6973833))

(assert (= (and b!6973833 res!2844361) b!6973834))

(assert (= (or b!6973835 b!6973833) bm!633020))

(assert (= (or b!6973838 b!6973834) bm!633021))

(assert (= (or b!6973837 bm!633020) bm!633022))

(declare-fun m!7661134 () Bool)

(assert (=> bm!633021 m!7661134))

(declare-fun m!7661136 () Bool)

(assert (=> b!6973840 m!7661136))

(declare-fun m!7661138 () Bool)

(assert (=> bm!633022 m!7661138))

(assert (=> d!2171530 d!2171758))

(declare-fun d!2171760 () Bool)

(declare-fun res!2844363 () Bool)

(declare-fun e!4191750 () Bool)

(assert (=> d!2171760 (=> res!2844363 e!4191750)))

(assert (=> d!2171760 (= res!2844363 ((_ is Nil!66823) lt!2479822))))

(assert (=> d!2171760 (= (forall!16004 lt!2479822 lambda!397860) e!4191750)))

(declare-fun b!6973842 () Bool)

(declare-fun e!4191751 () Bool)

(assert (=> b!6973842 (= e!4191750 e!4191751)))

(declare-fun res!2844364 () Bool)

(assert (=> b!6973842 (=> (not res!2844364) (not e!4191751))))

(assert (=> b!6973842 (= res!2844364 (dynLambda!26647 lambda!397860 (h!73271 lt!2479822)))))

(declare-fun b!6973843 () Bool)

(assert (=> b!6973843 (= e!4191751 (forall!16004 (t!380690 lt!2479822) lambda!397860))))

(assert (= (and d!2171760 (not res!2844363)) b!6973842))

(assert (= (and b!6973842 res!2844364) b!6973843))

(declare-fun b_lambda!260901 () Bool)

(assert (=> (not b_lambda!260901) (not b!6973842)))

(declare-fun m!7661140 () Bool)

(assert (=> b!6973842 m!7661140))

(declare-fun m!7661142 () Bool)

(assert (=> b!6973843 m!7661142))

(assert (=> d!2171556 d!2171760))

(declare-fun bs!1859681 () Bool)

(declare-fun d!2171762 () Bool)

(assert (= bs!1859681 (and d!2171762 d!2171556)))

(declare-fun lambda!397890 () Int)

(assert (=> bs!1859681 (not (= lambda!397890 lambda!397860))))

(declare-fun bs!1859682 () Bool)

(assert (= bs!1859682 (and d!2171762 b!6972773)))

(assert (=> bs!1859682 (not (= lambda!397890 lambda!397818))))

(declare-fun bs!1859683 () Bool)

(assert (= bs!1859683 (and d!2171762 d!2171554)))

(assert (=> bs!1859683 (not (= lambda!397890 lambda!397859))))

(declare-fun bs!1859684 () Bool)

(assert (= bs!1859684 (and d!2171762 start!668578)))

(assert (=> bs!1859684 (= lambda!397890 lambda!397817)))

(declare-fun bs!1859685 () Bool)

(assert (= bs!1859685 (and d!2171762 d!2171558)))

(assert (=> bs!1859685 (not (= lambda!397890 lambda!397866))))

(declare-fun bs!1859686 () Bool)

(assert (= bs!1859686 (and d!2171762 d!2171546)))

(assert (=> bs!1859686 (= lambda!397890 lambda!397854)))

(declare-fun bs!1859687 () Bool)

(assert (= bs!1859687 (and d!2171762 d!2171676)))

(assert (=> bs!1859687 (= lambda!397890 lambda!397879)))

(declare-fun bs!1859688 () Bool)

(assert (= bs!1859688 (and d!2171762 d!2171532)))

(assert (=> bs!1859688 (= lambda!397890 lambda!397853)))

(assert (=> bs!1859685 (= lambda!397890 lambda!397865)))

(declare-fun b!6973844 () Bool)

(declare-fun e!4191757 () Bool)

(declare-fun lt!2479877 () Regex!17133)

(assert (=> b!6973844 (= e!4191757 (isEmptyLang!2071 lt!2479877))))

(declare-fun b!6973845 () Bool)

(declare-fun e!4191755 () Bool)

(assert (=> b!6973845 (= e!4191755 (isEmpty!39025 (t!380690 (t!380690 l!9142))))))

(declare-fun b!6973846 () Bool)

(declare-fun e!4191756 () Regex!17133)

(assert (=> b!6973846 (= e!4191756 (h!73271 (t!380690 l!9142)))))

(declare-fun b!6973847 () Bool)

(declare-fun e!4191754 () Bool)

(assert (=> b!6973847 (= e!4191754 (= lt!2479877 (head!14039 (t!380690 l!9142))))))

(declare-fun b!6973848 () Bool)

(declare-fun e!4191753 () Regex!17133)

(assert (=> b!6973848 (= e!4191756 e!4191753)))

(declare-fun c!1292823 () Bool)

(assert (=> b!6973848 (= c!1292823 ((_ is Cons!66823) (t!380690 l!9142)))))

(declare-fun e!4191752 () Bool)

(assert (=> d!2171762 e!4191752))

(declare-fun res!2844366 () Bool)

(assert (=> d!2171762 (=> (not res!2844366) (not e!4191752))))

(assert (=> d!2171762 (= res!2844366 (validRegex!8815 lt!2479877))))

(assert (=> d!2171762 (= lt!2479877 e!4191756)))

(declare-fun c!1292820 () Bool)

(assert (=> d!2171762 (= c!1292820 e!4191755)))

(declare-fun res!2844365 () Bool)

(assert (=> d!2171762 (=> (not res!2844365) (not e!4191755))))

(assert (=> d!2171762 (= res!2844365 ((_ is Cons!66823) (t!380690 l!9142)))))

(assert (=> d!2171762 (forall!16004 (t!380690 l!9142) lambda!397890)))

(assert (=> d!2171762 (= (generalisedUnion!2608 (t!380690 l!9142)) lt!2479877)))

(declare-fun b!6973849 () Bool)

(assert (=> b!6973849 (= e!4191757 e!4191754)))

(declare-fun c!1292822 () Bool)

(assert (=> b!6973849 (= c!1292822 (isEmpty!39025 (tail!13105 (t!380690 l!9142))))))

(declare-fun b!6973850 () Bool)

(assert (=> b!6973850 (= e!4191753 (Union!17133 (h!73271 (t!380690 l!9142)) (generalisedUnion!2608 (t!380690 (t!380690 l!9142)))))))

(declare-fun b!6973851 () Bool)

(assert (=> b!6973851 (= e!4191752 e!4191757)))

(declare-fun c!1292821 () Bool)

(assert (=> b!6973851 (= c!1292821 (isEmpty!39025 (t!380690 l!9142)))))

(declare-fun b!6973852 () Bool)

(assert (=> b!6973852 (= e!4191753 EmptyLang!17133)))

(declare-fun b!6973853 () Bool)

(assert (=> b!6973853 (= e!4191754 (isUnion!1499 lt!2479877))))

(assert (= (and d!2171762 res!2844365) b!6973845))

(assert (= (and d!2171762 c!1292820) b!6973846))

(assert (= (and d!2171762 (not c!1292820)) b!6973848))

(assert (= (and b!6973848 c!1292823) b!6973850))

(assert (= (and b!6973848 (not c!1292823)) b!6973852))

(assert (= (and d!2171762 res!2844366) b!6973851))

(assert (= (and b!6973851 c!1292821) b!6973844))

(assert (= (and b!6973851 (not c!1292821)) b!6973849))

(assert (= (and b!6973849 c!1292822) b!6973847))

(assert (= (and b!6973849 (not c!1292822)) b!6973853))

(declare-fun m!7661144 () Bool)

(assert (=> b!6973849 m!7661144))

(assert (=> b!6973849 m!7661144))

(declare-fun m!7661146 () Bool)

(assert (=> b!6973849 m!7661146))

(assert (=> b!6973851 m!7660746))

(declare-fun m!7661148 () Bool)

(assert (=> b!6973845 m!7661148))

(declare-fun m!7661150 () Bool)

(assert (=> b!6973850 m!7661150))

(declare-fun m!7661152 () Bool)

(assert (=> b!6973844 m!7661152))

(declare-fun m!7661154 () Bool)

(assert (=> d!2171762 m!7661154))

(declare-fun m!7661156 () Bool)

(assert (=> d!2171762 m!7661156))

(declare-fun m!7661158 () Bool)

(assert (=> b!6973853 m!7661158))

(declare-fun m!7661160 () Bool)

(assert (=> b!6973847 m!7661160))

(assert (=> b!6973183 d!2171762))

(assert (=> b!6973110 d!2171660))

(assert (=> b!6973110 d!2171648))

(declare-fun d!2171764 () Bool)

(assert (=> d!2171764 (= (head!14039 lt!2479822) (h!73271 lt!2479822))))

(assert (=> b!6973140 d!2171764))

(assert (=> b!6973173 d!2171646))

(declare-fun d!2171766 () Bool)

(assert (=> d!2171766 (= (nullable!6918 (regTwo!34779 r!13765)) (nullableFct!2593 (regTwo!34779 r!13765)))))

(declare-fun bs!1859689 () Bool)

(assert (= bs!1859689 d!2171766))

(declare-fun m!7661162 () Bool)

(assert (=> bs!1859689 m!7661162))

(assert (=> b!6973148 d!2171766))

(assert (=> b!6973115 d!2171646))

(declare-fun b!6973854 () Bool)

(declare-fun e!4191762 () Bool)

(declare-fun e!4191763 () Bool)

(assert (=> b!6973854 (= e!4191762 e!4191763)))

(declare-fun res!2844370 () Bool)

(assert (=> b!6973854 (=> (not res!2844370) (not e!4191763))))

(declare-fun call!633028 () Bool)

(assert (=> b!6973854 (= res!2844370 call!633028)))

(declare-fun bm!633023 () Bool)

(declare-fun call!633030 () Bool)

(assert (=> bm!633023 (= call!633028 call!633030)))

(declare-fun d!2171768 () Bool)

(declare-fun res!2844369 () Bool)

(declare-fun e!4191760 () Bool)

(assert (=> d!2171768 (=> res!2844369 e!4191760)))

(assert (=> d!2171768 (= res!2844369 ((_ is ElementMatch!17133) (h!73271 l!9142)))))

(assert (=> d!2171768 (= (validRegex!8815 (h!73271 l!9142)) e!4191760)))

(declare-fun b!6973855 () Bool)

(declare-fun call!633029 () Bool)

(assert (=> b!6973855 (= e!4191763 call!633029)))

(declare-fun b!6973856 () Bool)

(declare-fun res!2844371 () Bool)

(declare-fun e!4191759 () Bool)

(assert (=> b!6973856 (=> (not res!2844371) (not e!4191759))))

(assert (=> b!6973856 (= res!2844371 call!633028)))

(declare-fun e!4191761 () Bool)

(assert (=> b!6973856 (= e!4191761 e!4191759)))

(declare-fun b!6973857 () Bool)

(declare-fun res!2844368 () Bool)

(assert (=> b!6973857 (=> res!2844368 e!4191762)))

(assert (=> b!6973857 (= res!2844368 (not ((_ is Concat!25978) (h!73271 l!9142))))))

(assert (=> b!6973857 (= e!4191761 e!4191762)))

(declare-fun b!6973858 () Bool)

(declare-fun e!4191764 () Bool)

(assert (=> b!6973858 (= e!4191764 call!633030)))

(declare-fun bm!633024 () Bool)

(declare-fun c!1292824 () Bool)

(assert (=> bm!633024 (= call!633029 (validRegex!8815 (ite c!1292824 (regTwo!34779 (h!73271 l!9142)) (regTwo!34778 (h!73271 l!9142)))))))

(declare-fun b!6973859 () Bool)

(assert (=> b!6973859 (= e!4191759 call!633029)))

(declare-fun b!6973860 () Bool)

(declare-fun e!4191758 () Bool)

(assert (=> b!6973860 (= e!4191758 e!4191761)))

(assert (=> b!6973860 (= c!1292824 ((_ is Union!17133) (h!73271 l!9142)))))

(declare-fun b!6973861 () Bool)

(assert (=> b!6973861 (= e!4191758 e!4191764)))

(declare-fun res!2844367 () Bool)

(assert (=> b!6973861 (= res!2844367 (not (nullable!6918 (reg!17462 (h!73271 l!9142)))))))

(assert (=> b!6973861 (=> (not res!2844367) (not e!4191764))))

(declare-fun b!6973862 () Bool)

(assert (=> b!6973862 (= e!4191760 e!4191758)))

(declare-fun c!1292825 () Bool)

(assert (=> b!6973862 (= c!1292825 ((_ is Star!17133) (h!73271 l!9142)))))

(declare-fun bm!633025 () Bool)

(assert (=> bm!633025 (= call!633030 (validRegex!8815 (ite c!1292825 (reg!17462 (h!73271 l!9142)) (ite c!1292824 (regOne!34779 (h!73271 l!9142)) (regOne!34778 (h!73271 l!9142))))))))

(assert (= (and d!2171768 (not res!2844369)) b!6973862))

(assert (= (and b!6973862 c!1292825) b!6973861))

(assert (= (and b!6973862 (not c!1292825)) b!6973860))

(assert (= (and b!6973861 res!2844367) b!6973858))

(assert (= (and b!6973860 c!1292824) b!6973856))

(assert (= (and b!6973860 (not c!1292824)) b!6973857))

(assert (= (and b!6973856 res!2844371) b!6973859))

(assert (= (and b!6973857 (not res!2844368)) b!6973854))

(assert (= (and b!6973854 res!2844370) b!6973855))

(assert (= (or b!6973856 b!6973854) bm!633023))

(assert (= (or b!6973859 b!6973855) bm!633024))

(assert (= (or b!6973858 bm!633023) bm!633025))

(declare-fun m!7661164 () Bool)

(assert (=> bm!633024 m!7661164))

(declare-fun m!7661166 () Bool)

(assert (=> b!6973861 m!7661166))

(declare-fun m!7661168 () Bool)

(assert (=> bm!633025 m!7661168))

(assert (=> bs!1859463 d!2171768))

(declare-fun b!6973863 () Bool)

(declare-fun e!4191769 () Bool)

(declare-fun e!4191770 () Bool)

(assert (=> b!6973863 (= e!4191769 e!4191770)))

(declare-fun res!2844375 () Bool)

(assert (=> b!6973863 (=> (not res!2844375) (not e!4191770))))

(declare-fun call!633031 () Bool)

(assert (=> b!6973863 (= res!2844375 call!633031)))

(declare-fun bm!633026 () Bool)

(declare-fun call!633033 () Bool)

(assert (=> bm!633026 (= call!633031 call!633033)))

(declare-fun d!2171770 () Bool)

(declare-fun res!2844374 () Bool)

(declare-fun e!4191767 () Bool)

(assert (=> d!2171770 (=> res!2844374 e!4191767)))

(assert (=> d!2171770 (= res!2844374 ((_ is ElementMatch!17133) lt!2479849))))

(assert (=> d!2171770 (= (validRegex!8815 lt!2479849) e!4191767)))

(declare-fun b!6973864 () Bool)

(declare-fun call!633032 () Bool)

(assert (=> b!6973864 (= e!4191770 call!633032)))

(declare-fun b!6973865 () Bool)

(declare-fun res!2844376 () Bool)

(declare-fun e!4191766 () Bool)

(assert (=> b!6973865 (=> (not res!2844376) (not e!4191766))))

(assert (=> b!6973865 (= res!2844376 call!633031)))

(declare-fun e!4191768 () Bool)

(assert (=> b!6973865 (= e!4191768 e!4191766)))

(declare-fun b!6973866 () Bool)

(declare-fun res!2844373 () Bool)

(assert (=> b!6973866 (=> res!2844373 e!4191769)))

(assert (=> b!6973866 (= res!2844373 (not ((_ is Concat!25978) lt!2479849)))))

(assert (=> b!6973866 (= e!4191768 e!4191769)))

(declare-fun b!6973867 () Bool)

(declare-fun e!4191771 () Bool)

(assert (=> b!6973867 (= e!4191771 call!633033)))

(declare-fun bm!633027 () Bool)

(declare-fun c!1292826 () Bool)

(assert (=> bm!633027 (= call!633032 (validRegex!8815 (ite c!1292826 (regTwo!34779 lt!2479849) (regTwo!34778 lt!2479849))))))

(declare-fun b!6973868 () Bool)

(assert (=> b!6973868 (= e!4191766 call!633032)))

(declare-fun b!6973869 () Bool)

(declare-fun e!4191765 () Bool)

(assert (=> b!6973869 (= e!4191765 e!4191768)))

(assert (=> b!6973869 (= c!1292826 ((_ is Union!17133) lt!2479849))))

(declare-fun b!6973870 () Bool)

(assert (=> b!6973870 (= e!4191765 e!4191771)))

(declare-fun res!2844372 () Bool)

(assert (=> b!6973870 (= res!2844372 (not (nullable!6918 (reg!17462 lt!2479849))))))

(assert (=> b!6973870 (=> (not res!2844372) (not e!4191771))))

(declare-fun b!6973871 () Bool)

(assert (=> b!6973871 (= e!4191767 e!4191765)))

(declare-fun c!1292827 () Bool)

(assert (=> b!6973871 (= c!1292827 ((_ is Star!17133) lt!2479849))))

(declare-fun bm!633028 () Bool)

(assert (=> bm!633028 (= call!633033 (validRegex!8815 (ite c!1292827 (reg!17462 lt!2479849) (ite c!1292826 (regOne!34779 lt!2479849) (regOne!34778 lt!2479849)))))))

(assert (= (and d!2171770 (not res!2844374)) b!6973871))

(assert (= (and b!6973871 c!1292827) b!6973870))

(assert (= (and b!6973871 (not c!1292827)) b!6973869))

(assert (= (and b!6973870 res!2844372) b!6973867))

(assert (= (and b!6973869 c!1292826) b!6973865))

(assert (= (and b!6973869 (not c!1292826)) b!6973866))

(assert (= (and b!6973865 res!2844376) b!6973868))

(assert (= (and b!6973866 (not res!2844373)) b!6973863))

(assert (= (and b!6973863 res!2844375) b!6973864))

(assert (= (or b!6973865 b!6973863) bm!633026))

(assert (= (or b!6973868 b!6973864) bm!633027))

(assert (= (or b!6973867 bm!633026) bm!633028))

(declare-fun m!7661170 () Bool)

(assert (=> bm!633027 m!7661170))

(declare-fun m!7661172 () Bool)

(assert (=> b!6973870 m!7661172))

(declare-fun m!7661174 () Bool)

(assert (=> bm!633028 m!7661174))

(assert (=> d!2171532 d!2171770))

(declare-fun d!2171772 () Bool)

(declare-fun res!2844377 () Bool)

(declare-fun e!4191772 () Bool)

(assert (=> d!2171772 (=> res!2844377 e!4191772)))

(assert (=> d!2171772 (= res!2844377 ((_ is Nil!66823) lt!2479822))))

(assert (=> d!2171772 (= (forall!16004 lt!2479822 lambda!397853) e!4191772)))

(declare-fun b!6973872 () Bool)

(declare-fun e!4191773 () Bool)

(assert (=> b!6973872 (= e!4191772 e!4191773)))

(declare-fun res!2844378 () Bool)

(assert (=> b!6973872 (=> (not res!2844378) (not e!4191773))))

(assert (=> b!6973872 (= res!2844378 (dynLambda!26647 lambda!397853 (h!73271 lt!2479822)))))

(declare-fun b!6973873 () Bool)

(assert (=> b!6973873 (= e!4191773 (forall!16004 (t!380690 lt!2479822) lambda!397853))))

(assert (= (and d!2171772 (not res!2844377)) b!6973872))

(assert (= (and b!6973872 res!2844378) b!6973873))

(declare-fun b_lambda!260903 () Bool)

(assert (=> (not b_lambda!260903) (not b!6973872)))

(declare-fun m!7661176 () Bool)

(assert (=> b!6973872 m!7661176))

(declare-fun m!7661178 () Bool)

(assert (=> b!6973873 m!7661178))

(assert (=> d!2171532 d!2171772))

(declare-fun d!2171774 () Bool)

(assert (=> d!2171774 (= (isEmptyLang!2071 lt!2479854) ((_ is EmptyLang!17133) lt!2479854))))

(assert (=> b!6973177 d!2171774))

(assert (=> b!6973105 d!2171646))

(assert (=> d!2171558 d!2171534))

(declare-fun bs!1859690 () Bool)

(declare-fun d!2171776 () Bool)

(assert (= bs!1859690 (and d!2171776 d!2171762)))

(declare-fun lambda!397891 () Int)

(assert (=> bs!1859690 (not (= lambda!397891 lambda!397890))))

(declare-fun bs!1859691 () Bool)

(assert (= bs!1859691 (and d!2171776 d!2171556)))

(assert (=> bs!1859691 (= (= lambda!397866 lambda!397818) (= lambda!397891 lambda!397860))))

(declare-fun bs!1859692 () Bool)

(assert (= bs!1859692 (and d!2171776 b!6972773)))

(assert (=> bs!1859692 (not (= lambda!397891 lambda!397818))))

(declare-fun bs!1859693 () Bool)

(assert (= bs!1859693 (and d!2171776 d!2171554)))

(assert (=> bs!1859693 (= (= lambda!397866 lambda!397818) (= lambda!397891 lambda!397859))))

(declare-fun bs!1859694 () Bool)

(assert (= bs!1859694 (and d!2171776 start!668578)))

(assert (=> bs!1859694 (not (= lambda!397891 lambda!397817))))

(declare-fun bs!1859695 () Bool)

(assert (= bs!1859695 (and d!2171776 d!2171558)))

(assert (=> bs!1859695 (not (= lambda!397891 lambda!397866))))

(declare-fun bs!1859696 () Bool)

(assert (= bs!1859696 (and d!2171776 d!2171546)))

(assert (=> bs!1859696 (not (= lambda!397891 lambda!397854))))

(declare-fun bs!1859697 () Bool)

(assert (= bs!1859697 (and d!2171776 d!2171676)))

(assert (=> bs!1859697 (not (= lambda!397891 lambda!397879))))

(declare-fun bs!1859698 () Bool)

(assert (= bs!1859698 (and d!2171776 d!2171532)))

(assert (=> bs!1859698 (not (= lambda!397891 lambda!397853))))

(assert (=> bs!1859695 (not (= lambda!397891 lambda!397865))))

(assert (=> d!2171776 true))

(assert (=> d!2171776 (< (dynLambda!26649 order!27775 lambda!397866) (dynLambda!26649 order!27775 lambda!397891))))

(assert (=> d!2171776 (= (exists!2869 lt!2479822 lambda!397866) (not (forall!16004 lt!2479822 lambda!397891)))))

(declare-fun bs!1859699 () Bool)

(assert (= bs!1859699 d!2171776))

(declare-fun m!7661180 () Bool)

(assert (=> bs!1859699 m!7661180))

(assert (=> d!2171558 d!2171776))

(declare-fun bs!1859700 () Bool)

(declare-fun d!2171778 () Bool)

(assert (= bs!1859700 (and d!2171778 d!2171762)))

(declare-fun lambda!397894 () Int)

(assert (=> bs!1859700 (not (= lambda!397894 lambda!397890))))

(declare-fun bs!1859701 () Bool)

(assert (= bs!1859701 (and d!2171778 d!2171556)))

(assert (=> bs!1859701 (not (= lambda!397894 lambda!397860))))

(declare-fun bs!1859702 () Bool)

(assert (= bs!1859702 (and d!2171778 b!6972773)))

(assert (=> bs!1859702 (= lambda!397894 lambda!397818)))

(declare-fun bs!1859703 () Bool)

(assert (= bs!1859703 (and d!2171778 d!2171554)))

(assert (=> bs!1859703 (not (= lambda!397894 lambda!397859))))

(declare-fun bs!1859704 () Bool)

(assert (= bs!1859704 (and d!2171778 start!668578)))

(assert (=> bs!1859704 (not (= lambda!397894 lambda!397817))))

(declare-fun bs!1859705 () Bool)

(assert (= bs!1859705 (and d!2171778 d!2171546)))

(assert (=> bs!1859705 (not (= lambda!397894 lambda!397854))))

(declare-fun bs!1859706 () Bool)

(assert (= bs!1859706 (and d!2171778 d!2171676)))

(assert (=> bs!1859706 (not (= lambda!397894 lambda!397879))))

(declare-fun bs!1859707 () Bool)

(assert (= bs!1859707 (and d!2171778 d!2171532)))

(assert (=> bs!1859707 (not (= lambda!397894 lambda!397853))))

(declare-fun bs!1859708 () Bool)

(assert (= bs!1859708 (and d!2171778 d!2171558)))

(assert (=> bs!1859708 (not (= lambda!397894 lambda!397865))))

(declare-fun bs!1859709 () Bool)

(assert (= bs!1859709 (and d!2171778 d!2171776)))

(assert (=> bs!1859709 (not (= lambda!397894 lambda!397891))))

(assert (=> bs!1859708 (= lambda!397894 lambda!397866)))

(assert (=> d!2171778 true))

(assert (=> d!2171778 (= (matchR!9235 (regTwo!34779 r!13765) s!9351) (exists!2869 lt!2479822 lambda!397894))))

(assert (=> d!2171778 true))

(declare-fun _$85!233 () Unit!160918)

(assert (=> d!2171778 (= (choose!51917 (regTwo!34779 r!13765) lt!2479822 s!9351) _$85!233)))

(declare-fun bs!1859710 () Bool)

(assert (= bs!1859710 d!2171778))

(assert (=> bs!1859710 m!7660550))

(declare-fun m!7661182 () Bool)

(assert (=> bs!1859710 m!7661182))

(assert (=> d!2171558 d!2171778))

(declare-fun d!2171780 () Bool)

(declare-fun res!2844381 () Bool)

(declare-fun e!4191776 () Bool)

(assert (=> d!2171780 (=> res!2844381 e!4191776)))

(assert (=> d!2171780 (= res!2844381 ((_ is Nil!66823) lt!2479822))))

(assert (=> d!2171780 (= (forall!16004 lt!2479822 lambda!397865) e!4191776)))

(declare-fun b!6973876 () Bool)

(declare-fun e!4191777 () Bool)

(assert (=> b!6973876 (= e!4191776 e!4191777)))

(declare-fun res!2844382 () Bool)

(assert (=> b!6973876 (=> (not res!2844382) (not e!4191777))))

(assert (=> b!6973876 (= res!2844382 (dynLambda!26647 lambda!397865 (h!73271 lt!2479822)))))

(declare-fun b!6973877 () Bool)

(assert (=> b!6973877 (= e!4191777 (forall!16004 (t!380690 lt!2479822) lambda!397865))))

(assert (= (and d!2171780 (not res!2844381)) b!6973876))

(assert (= (and b!6973876 res!2844382) b!6973877))

(declare-fun b_lambda!260905 () Bool)

(assert (=> (not b_lambda!260905) (not b!6973876)))

(declare-fun m!7661184 () Bool)

(assert (=> b!6973876 m!7661184))

(declare-fun m!7661186 () Bool)

(assert (=> b!6973877 m!7661186))

(assert (=> d!2171558 d!2171780))

(assert (=> d!2171522 d!2171654))

(assert (=> d!2171522 d!2171758))

(assert (=> d!2171536 d!2171534))

(assert (=> d!2171536 d!2171494))

(declare-fun d!2171782 () Bool)

(assert (=> d!2171782 (= (matchR!9235 (regTwo!34779 r!13765) s!9351) (matchRSpec!4150 (regTwo!34779 r!13765) s!9351))))

(assert (=> d!2171782 true))

(declare-fun _$88!5773 () Unit!160918)

(assert (=> d!2171782 (= (choose!51916 (regTwo!34779 r!13765) s!9351) _$88!5773)))

(declare-fun bs!1859711 () Bool)

(assert (= bs!1859711 d!2171782))

(assert (=> bs!1859711 m!7660550))

(assert (=> bs!1859711 m!7660546))

(assert (=> d!2171536 d!2171782))

(assert (=> d!2171536 d!2171710))

(assert (=> bm!632909 d!2171654))

(assert (=> d!2171542 d!2171538))

(assert (=> d!2171542 d!2171548))

(declare-fun d!2171784 () Bool)

(assert (=> d!2171784 (= (matchR!9235 (regOne!34779 r!13765) s!9351) (matchRSpec!4150 (regOne!34779 r!13765) s!9351))))

(assert (=> d!2171784 true))

(declare-fun _$88!5774 () Unit!160918)

(assert (=> d!2171784 (= (choose!51916 (regOne!34779 r!13765) s!9351) _$88!5774)))

(declare-fun bs!1859712 () Bool)

(assert (= bs!1859712 d!2171784))

(assert (=> bs!1859712 m!7660554))

(assert (=> bs!1859712 m!7660530))

(assert (=> d!2171542 d!2171784))

(assert (=> d!2171542 d!2171744))

(declare-fun b!6973880 () Bool)

(declare-fun e!4191778 () Bool)

(declare-fun tp!1924802 () Bool)

(assert (=> b!6973880 (= e!4191778 tp!1924802)))

(declare-fun b!6973878 () Bool)

(assert (=> b!6973878 (= e!4191778 tp_is_empty!43491)))

(assert (=> b!6973220 (= tp!1924611 e!4191778)))

(declare-fun b!6973879 () Bool)

(declare-fun tp!1924806 () Bool)

(declare-fun tp!1924804 () Bool)

(assert (=> b!6973879 (= e!4191778 (and tp!1924806 tp!1924804))))

(declare-fun b!6973881 () Bool)

(declare-fun tp!1924805 () Bool)

(declare-fun tp!1924803 () Bool)

(assert (=> b!6973881 (= e!4191778 (and tp!1924805 tp!1924803))))

(assert (= (and b!6973220 ((_ is ElementMatch!17133) (regOne!34779 (h!73271 l!9142)))) b!6973878))

(assert (= (and b!6973220 ((_ is Concat!25978) (regOne!34779 (h!73271 l!9142)))) b!6973879))

(assert (= (and b!6973220 ((_ is Star!17133) (regOne!34779 (h!73271 l!9142)))) b!6973880))

(assert (= (and b!6973220 ((_ is Union!17133) (regOne!34779 (h!73271 l!9142)))) b!6973881))

(declare-fun b!6973884 () Bool)

(declare-fun e!4191779 () Bool)

(declare-fun tp!1924807 () Bool)

(assert (=> b!6973884 (= e!4191779 tp!1924807)))

(declare-fun b!6973882 () Bool)

(assert (=> b!6973882 (= e!4191779 tp_is_empty!43491)))

(assert (=> b!6973220 (= tp!1924609 e!4191779)))

(declare-fun b!6973883 () Bool)

(declare-fun tp!1924811 () Bool)

(declare-fun tp!1924809 () Bool)

(assert (=> b!6973883 (= e!4191779 (and tp!1924811 tp!1924809))))

(declare-fun b!6973885 () Bool)

(declare-fun tp!1924810 () Bool)

(declare-fun tp!1924808 () Bool)

(assert (=> b!6973885 (= e!4191779 (and tp!1924810 tp!1924808))))

(assert (= (and b!6973220 ((_ is ElementMatch!17133) (regTwo!34779 (h!73271 l!9142)))) b!6973882))

(assert (= (and b!6973220 ((_ is Concat!25978) (regTwo!34779 (h!73271 l!9142)))) b!6973883))

(assert (= (and b!6973220 ((_ is Star!17133) (regTwo!34779 (h!73271 l!9142)))) b!6973884))

(assert (= (and b!6973220 ((_ is Union!17133) (regTwo!34779 (h!73271 l!9142)))) b!6973885))

(declare-fun b!6973888 () Bool)

(declare-fun e!4191780 () Bool)

(declare-fun tp!1924812 () Bool)

(assert (=> b!6973888 (= e!4191780 tp!1924812)))

(declare-fun b!6973886 () Bool)

(assert (=> b!6973886 (= e!4191780 tp_is_empty!43491)))

(assert (=> b!6973218 (= tp!1924612 e!4191780)))

(declare-fun b!6973887 () Bool)

(declare-fun tp!1924816 () Bool)

(declare-fun tp!1924814 () Bool)

(assert (=> b!6973887 (= e!4191780 (and tp!1924816 tp!1924814))))

(declare-fun b!6973889 () Bool)

(declare-fun tp!1924815 () Bool)

(declare-fun tp!1924813 () Bool)

(assert (=> b!6973889 (= e!4191780 (and tp!1924815 tp!1924813))))

(assert (= (and b!6973218 ((_ is ElementMatch!17133) (regOne!34778 (h!73271 l!9142)))) b!6973886))

(assert (= (and b!6973218 ((_ is Concat!25978) (regOne!34778 (h!73271 l!9142)))) b!6973887))

(assert (= (and b!6973218 ((_ is Star!17133) (regOne!34778 (h!73271 l!9142)))) b!6973888))

(assert (= (and b!6973218 ((_ is Union!17133) (regOne!34778 (h!73271 l!9142)))) b!6973889))

(declare-fun b!6973892 () Bool)

(declare-fun e!4191781 () Bool)

(declare-fun tp!1924817 () Bool)

(assert (=> b!6973892 (= e!4191781 tp!1924817)))

(declare-fun b!6973890 () Bool)

(assert (=> b!6973890 (= e!4191781 tp_is_empty!43491)))

(assert (=> b!6973218 (= tp!1924610 e!4191781)))

(declare-fun b!6973891 () Bool)

(declare-fun tp!1924821 () Bool)

(declare-fun tp!1924819 () Bool)

(assert (=> b!6973891 (= e!4191781 (and tp!1924821 tp!1924819))))

(declare-fun b!6973893 () Bool)

(declare-fun tp!1924820 () Bool)

(declare-fun tp!1924818 () Bool)

(assert (=> b!6973893 (= e!4191781 (and tp!1924820 tp!1924818))))

(assert (= (and b!6973218 ((_ is ElementMatch!17133) (regTwo!34778 (h!73271 l!9142)))) b!6973890))

(assert (= (and b!6973218 ((_ is Concat!25978) (regTwo!34778 (h!73271 l!9142)))) b!6973891))

(assert (= (and b!6973218 ((_ is Star!17133) (regTwo!34778 (h!73271 l!9142)))) b!6973892))

(assert (= (and b!6973218 ((_ is Union!17133) (regTwo!34778 (h!73271 l!9142)))) b!6973893))

(declare-fun b!6973896 () Bool)

(declare-fun e!4191782 () Bool)

(declare-fun tp!1924822 () Bool)

(assert (=> b!6973896 (= e!4191782 tp!1924822)))

(declare-fun b!6973894 () Bool)

(assert (=> b!6973894 (= e!4191782 tp_is_empty!43491)))

(assert (=> b!6973229 (= tp!1924622 e!4191782)))

(declare-fun b!6973895 () Bool)

(declare-fun tp!1924826 () Bool)

(declare-fun tp!1924824 () Bool)

(assert (=> b!6973895 (= e!4191782 (and tp!1924826 tp!1924824))))

(declare-fun b!6973897 () Bool)

(declare-fun tp!1924825 () Bool)

(declare-fun tp!1924823 () Bool)

(assert (=> b!6973897 (= e!4191782 (and tp!1924825 tp!1924823))))

(assert (= (and b!6973229 ((_ is ElementMatch!17133) (regOne!34779 (regOne!34779 r!13765)))) b!6973894))

(assert (= (and b!6973229 ((_ is Concat!25978) (regOne!34779 (regOne!34779 r!13765)))) b!6973895))

(assert (= (and b!6973229 ((_ is Star!17133) (regOne!34779 (regOne!34779 r!13765)))) b!6973896))

(assert (= (and b!6973229 ((_ is Union!17133) (regOne!34779 (regOne!34779 r!13765)))) b!6973897))

(declare-fun b!6973900 () Bool)

(declare-fun e!4191783 () Bool)

(declare-fun tp!1924827 () Bool)

(assert (=> b!6973900 (= e!4191783 tp!1924827)))

(declare-fun b!6973898 () Bool)

(assert (=> b!6973898 (= e!4191783 tp_is_empty!43491)))

(assert (=> b!6973229 (= tp!1924620 e!4191783)))

(declare-fun b!6973899 () Bool)

(declare-fun tp!1924831 () Bool)

(declare-fun tp!1924829 () Bool)

(assert (=> b!6973899 (= e!4191783 (and tp!1924831 tp!1924829))))

(declare-fun b!6973901 () Bool)

(declare-fun tp!1924830 () Bool)

(declare-fun tp!1924828 () Bool)

(assert (=> b!6973901 (= e!4191783 (and tp!1924830 tp!1924828))))

(assert (= (and b!6973229 ((_ is ElementMatch!17133) (regTwo!34779 (regOne!34779 r!13765)))) b!6973898))

(assert (= (and b!6973229 ((_ is Concat!25978) (regTwo!34779 (regOne!34779 r!13765)))) b!6973899))

(assert (= (and b!6973229 ((_ is Star!17133) (regTwo!34779 (regOne!34779 r!13765)))) b!6973900))

(assert (= (and b!6973229 ((_ is Union!17133) (regTwo!34779 (regOne!34779 r!13765)))) b!6973901))

(declare-fun b!6973904 () Bool)

(declare-fun e!4191784 () Bool)

(declare-fun tp!1924832 () Bool)

(assert (=> b!6973904 (= e!4191784 tp!1924832)))

(declare-fun b!6973902 () Bool)

(assert (=> b!6973902 (= e!4191784 tp_is_empty!43491)))

(assert (=> b!6973219 (= tp!1924608 e!4191784)))

(declare-fun b!6973903 () Bool)

(declare-fun tp!1924836 () Bool)

(declare-fun tp!1924834 () Bool)

(assert (=> b!6973903 (= e!4191784 (and tp!1924836 tp!1924834))))

(declare-fun b!6973905 () Bool)

(declare-fun tp!1924835 () Bool)

(declare-fun tp!1924833 () Bool)

(assert (=> b!6973905 (= e!4191784 (and tp!1924835 tp!1924833))))

(assert (= (and b!6973219 ((_ is ElementMatch!17133) (reg!17462 (h!73271 l!9142)))) b!6973902))

(assert (= (and b!6973219 ((_ is Concat!25978) (reg!17462 (h!73271 l!9142)))) b!6973903))

(assert (= (and b!6973219 ((_ is Star!17133) (reg!17462 (h!73271 l!9142)))) b!6973904))

(assert (= (and b!6973219 ((_ is Union!17133) (reg!17462 (h!73271 l!9142)))) b!6973905))

(declare-fun b!6973908 () Bool)

(declare-fun e!4191785 () Bool)

(declare-fun tp!1924837 () Bool)

(assert (=> b!6973908 (= e!4191785 tp!1924837)))

(declare-fun b!6973906 () Bool)

(assert (=> b!6973906 (= e!4191785 tp_is_empty!43491)))

(assert (=> b!6973237 (= tp!1924632 e!4191785)))

(declare-fun b!6973907 () Bool)

(declare-fun tp!1924841 () Bool)

(declare-fun tp!1924839 () Bool)

(assert (=> b!6973907 (= e!4191785 (and tp!1924841 tp!1924839))))

(declare-fun b!6973909 () Bool)

(declare-fun tp!1924840 () Bool)

(declare-fun tp!1924838 () Bool)

(assert (=> b!6973909 (= e!4191785 (and tp!1924840 tp!1924838))))

(assert (= (and b!6973237 ((_ is ElementMatch!17133) (regOne!34779 (regOne!34778 r!13765)))) b!6973906))

(assert (= (and b!6973237 ((_ is Concat!25978) (regOne!34779 (regOne!34778 r!13765)))) b!6973907))

(assert (= (and b!6973237 ((_ is Star!17133) (regOne!34779 (regOne!34778 r!13765)))) b!6973908))

(assert (= (and b!6973237 ((_ is Union!17133) (regOne!34779 (regOne!34778 r!13765)))) b!6973909))

(declare-fun b!6973912 () Bool)

(declare-fun e!4191786 () Bool)

(declare-fun tp!1924842 () Bool)

(assert (=> b!6973912 (= e!4191786 tp!1924842)))

(declare-fun b!6973910 () Bool)

(assert (=> b!6973910 (= e!4191786 tp_is_empty!43491)))

(assert (=> b!6973237 (= tp!1924630 e!4191786)))

(declare-fun b!6973911 () Bool)

(declare-fun tp!1924846 () Bool)

(declare-fun tp!1924844 () Bool)

(assert (=> b!6973911 (= e!4191786 (and tp!1924846 tp!1924844))))

(declare-fun b!6973913 () Bool)

(declare-fun tp!1924845 () Bool)

(declare-fun tp!1924843 () Bool)

(assert (=> b!6973913 (= e!4191786 (and tp!1924845 tp!1924843))))

(assert (= (and b!6973237 ((_ is ElementMatch!17133) (regTwo!34779 (regOne!34778 r!13765)))) b!6973910))

(assert (= (and b!6973237 ((_ is Concat!25978) (regTwo!34779 (regOne!34778 r!13765)))) b!6973911))

(assert (= (and b!6973237 ((_ is Star!17133) (regTwo!34779 (regOne!34778 r!13765)))) b!6973912))

(assert (= (and b!6973237 ((_ is Union!17133) (regTwo!34779 (regOne!34778 r!13765)))) b!6973913))

(declare-fun b!6973916 () Bool)

(declare-fun e!4191787 () Bool)

(declare-fun tp!1924847 () Bool)

(assert (=> b!6973916 (= e!4191787 tp!1924847)))

(declare-fun b!6973914 () Bool)

(assert (=> b!6973914 (= e!4191787 tp_is_empty!43491)))

(assert (=> b!6973228 (= tp!1924619 e!4191787)))

(declare-fun b!6973915 () Bool)

(declare-fun tp!1924851 () Bool)

(declare-fun tp!1924849 () Bool)

(assert (=> b!6973915 (= e!4191787 (and tp!1924851 tp!1924849))))

(declare-fun b!6973917 () Bool)

(declare-fun tp!1924850 () Bool)

(declare-fun tp!1924848 () Bool)

(assert (=> b!6973917 (= e!4191787 (and tp!1924850 tp!1924848))))

(assert (= (and b!6973228 ((_ is ElementMatch!17133) (reg!17462 (regOne!34779 r!13765)))) b!6973914))

(assert (= (and b!6973228 ((_ is Concat!25978) (reg!17462 (regOne!34779 r!13765)))) b!6973915))

(assert (= (and b!6973228 ((_ is Star!17133) (reg!17462 (regOne!34779 r!13765)))) b!6973916))

(assert (= (and b!6973228 ((_ is Union!17133) (reg!17462 (regOne!34779 r!13765)))) b!6973917))

(declare-fun b!6973920 () Bool)

(declare-fun e!4191788 () Bool)

(declare-fun tp!1924852 () Bool)

(assert (=> b!6973920 (= e!4191788 tp!1924852)))

(declare-fun b!6973918 () Bool)

(assert (=> b!6973918 (= e!4191788 tp_is_empty!43491)))

(assert (=> b!6973233 (= tp!1924627 e!4191788)))

(declare-fun b!6973919 () Bool)

(declare-fun tp!1924856 () Bool)

(declare-fun tp!1924854 () Bool)

(assert (=> b!6973919 (= e!4191788 (and tp!1924856 tp!1924854))))

(declare-fun b!6973921 () Bool)

(declare-fun tp!1924855 () Bool)

(declare-fun tp!1924853 () Bool)

(assert (=> b!6973921 (= e!4191788 (and tp!1924855 tp!1924853))))

(assert (= (and b!6973233 ((_ is ElementMatch!17133) (regOne!34779 (regTwo!34779 r!13765)))) b!6973918))

(assert (= (and b!6973233 ((_ is Concat!25978) (regOne!34779 (regTwo!34779 r!13765)))) b!6973919))

(assert (= (and b!6973233 ((_ is Star!17133) (regOne!34779 (regTwo!34779 r!13765)))) b!6973920))

(assert (= (and b!6973233 ((_ is Union!17133) (regOne!34779 (regTwo!34779 r!13765)))) b!6973921))

(declare-fun b!6973924 () Bool)

(declare-fun e!4191789 () Bool)

(declare-fun tp!1924857 () Bool)

(assert (=> b!6973924 (= e!4191789 tp!1924857)))

(declare-fun b!6973922 () Bool)

(assert (=> b!6973922 (= e!4191789 tp_is_empty!43491)))

(assert (=> b!6973233 (= tp!1924625 e!4191789)))

(declare-fun b!6973923 () Bool)

(declare-fun tp!1924861 () Bool)

(declare-fun tp!1924859 () Bool)

(assert (=> b!6973923 (= e!4191789 (and tp!1924861 tp!1924859))))

(declare-fun b!6973925 () Bool)

(declare-fun tp!1924860 () Bool)

(declare-fun tp!1924858 () Bool)

(assert (=> b!6973925 (= e!4191789 (and tp!1924860 tp!1924858))))

(assert (= (and b!6973233 ((_ is ElementMatch!17133) (regTwo!34779 (regTwo!34779 r!13765)))) b!6973922))

(assert (= (and b!6973233 ((_ is Concat!25978) (regTwo!34779 (regTwo!34779 r!13765)))) b!6973923))

(assert (= (and b!6973233 ((_ is Star!17133) (regTwo!34779 (regTwo!34779 r!13765)))) b!6973924))

(assert (= (and b!6973233 ((_ is Union!17133) (regTwo!34779 (regTwo!34779 r!13765)))) b!6973925))

(declare-fun b!6973928 () Bool)

(declare-fun e!4191790 () Bool)

(declare-fun tp!1924862 () Bool)

(assert (=> b!6973928 (= e!4191790 tp!1924862)))

(declare-fun b!6973926 () Bool)

(assert (=> b!6973926 (= e!4191790 tp_is_empty!43491)))

(assert (=> b!6973225 (= tp!1924617 e!4191790)))

(declare-fun b!6973927 () Bool)

(declare-fun tp!1924866 () Bool)

(declare-fun tp!1924864 () Bool)

(assert (=> b!6973927 (= e!4191790 (and tp!1924866 tp!1924864))))

(declare-fun b!6973929 () Bool)

(declare-fun tp!1924865 () Bool)

(declare-fun tp!1924863 () Bool)

(assert (=> b!6973929 (= e!4191790 (and tp!1924865 tp!1924863))))

(assert (= (and b!6973225 ((_ is ElementMatch!17133) (h!73271 (t!380690 l!9142)))) b!6973926))

(assert (= (and b!6973225 ((_ is Concat!25978) (h!73271 (t!380690 l!9142)))) b!6973927))

(assert (= (and b!6973225 ((_ is Star!17133) (h!73271 (t!380690 l!9142)))) b!6973928))

(assert (= (and b!6973225 ((_ is Union!17133) (h!73271 (t!380690 l!9142)))) b!6973929))

(declare-fun b!6973930 () Bool)

(declare-fun e!4191791 () Bool)

(declare-fun tp!1924867 () Bool)

(declare-fun tp!1924868 () Bool)

(assert (=> b!6973930 (= e!4191791 (and tp!1924867 tp!1924868))))

(assert (=> b!6973225 (= tp!1924618 e!4191791)))

(assert (= (and b!6973225 ((_ is Cons!66823) (t!380690 (t!380690 l!9142)))) b!6973930))

(declare-fun b!6973933 () Bool)

(declare-fun e!4191792 () Bool)

(declare-fun tp!1924869 () Bool)

(assert (=> b!6973933 (= e!4191792 tp!1924869)))

(declare-fun b!6973931 () Bool)

(assert (=> b!6973931 (= e!4191792 tp_is_empty!43491)))

(assert (=> b!6973231 (= tp!1924628 e!4191792)))

(declare-fun b!6973932 () Bool)

(declare-fun tp!1924873 () Bool)

(declare-fun tp!1924871 () Bool)

(assert (=> b!6973932 (= e!4191792 (and tp!1924873 tp!1924871))))

(declare-fun b!6973934 () Bool)

(declare-fun tp!1924872 () Bool)

(declare-fun tp!1924870 () Bool)

(assert (=> b!6973934 (= e!4191792 (and tp!1924872 tp!1924870))))

(assert (= (and b!6973231 ((_ is ElementMatch!17133) (regOne!34778 (regTwo!34779 r!13765)))) b!6973931))

(assert (= (and b!6973231 ((_ is Concat!25978) (regOne!34778 (regTwo!34779 r!13765)))) b!6973932))

(assert (= (and b!6973231 ((_ is Star!17133) (regOne!34778 (regTwo!34779 r!13765)))) b!6973933))

(assert (= (and b!6973231 ((_ is Union!17133) (regOne!34778 (regTwo!34779 r!13765)))) b!6973934))

(declare-fun b!6973937 () Bool)

(declare-fun e!4191793 () Bool)

(declare-fun tp!1924874 () Bool)

(assert (=> b!6973937 (= e!4191793 tp!1924874)))

(declare-fun b!6973935 () Bool)

(assert (=> b!6973935 (= e!4191793 tp_is_empty!43491)))

(assert (=> b!6973231 (= tp!1924626 e!4191793)))

(declare-fun b!6973936 () Bool)

(declare-fun tp!1924878 () Bool)

(declare-fun tp!1924876 () Bool)

(assert (=> b!6973936 (= e!4191793 (and tp!1924878 tp!1924876))))

(declare-fun b!6973938 () Bool)

(declare-fun tp!1924877 () Bool)

(declare-fun tp!1924875 () Bool)

(assert (=> b!6973938 (= e!4191793 (and tp!1924877 tp!1924875))))

(assert (= (and b!6973231 ((_ is ElementMatch!17133) (regTwo!34778 (regTwo!34779 r!13765)))) b!6973935))

(assert (= (and b!6973231 ((_ is Concat!25978) (regTwo!34778 (regTwo!34779 r!13765)))) b!6973936))

(assert (= (and b!6973231 ((_ is Star!17133) (regTwo!34778 (regTwo!34779 r!13765)))) b!6973937))

(assert (= (and b!6973231 ((_ is Union!17133) (regTwo!34778 (regTwo!34779 r!13765)))) b!6973938))

(declare-fun b!6973941 () Bool)

(declare-fun e!4191794 () Bool)

(declare-fun tp!1924879 () Bool)

(assert (=> b!6973941 (= e!4191794 tp!1924879)))

(declare-fun b!6973939 () Bool)

(assert (=> b!6973939 (= e!4191794 tp_is_empty!43491)))

(assert (=> b!6973245 (= tp!1924642 e!4191794)))

(declare-fun b!6973940 () Bool)

(declare-fun tp!1924883 () Bool)

(declare-fun tp!1924881 () Bool)

(assert (=> b!6973940 (= e!4191794 (and tp!1924883 tp!1924881))))

(declare-fun b!6973942 () Bool)

(declare-fun tp!1924882 () Bool)

(declare-fun tp!1924880 () Bool)

(assert (=> b!6973942 (= e!4191794 (and tp!1924882 tp!1924880))))

(assert (= (and b!6973245 ((_ is ElementMatch!17133) (regOne!34779 (reg!17462 r!13765)))) b!6973939))

(assert (= (and b!6973245 ((_ is Concat!25978) (regOne!34779 (reg!17462 r!13765)))) b!6973940))

(assert (= (and b!6973245 ((_ is Star!17133) (regOne!34779 (reg!17462 r!13765)))) b!6973941))

(assert (= (and b!6973245 ((_ is Union!17133) (regOne!34779 (reg!17462 r!13765)))) b!6973942))

(declare-fun b!6973945 () Bool)

(declare-fun e!4191795 () Bool)

(declare-fun tp!1924884 () Bool)

(assert (=> b!6973945 (= e!4191795 tp!1924884)))

(declare-fun b!6973943 () Bool)

(assert (=> b!6973943 (= e!4191795 tp_is_empty!43491)))

(assert (=> b!6973245 (= tp!1924640 e!4191795)))

(declare-fun b!6973944 () Bool)

(declare-fun tp!1924888 () Bool)

(declare-fun tp!1924886 () Bool)

(assert (=> b!6973944 (= e!4191795 (and tp!1924888 tp!1924886))))

(declare-fun b!6973946 () Bool)

(declare-fun tp!1924887 () Bool)

(declare-fun tp!1924885 () Bool)

(assert (=> b!6973946 (= e!4191795 (and tp!1924887 tp!1924885))))

(assert (= (and b!6973245 ((_ is ElementMatch!17133) (regTwo!34779 (reg!17462 r!13765)))) b!6973943))

(assert (= (and b!6973245 ((_ is Concat!25978) (regTwo!34779 (reg!17462 r!13765)))) b!6973944))

(assert (= (and b!6973245 ((_ is Star!17133) (regTwo!34779 (reg!17462 r!13765)))) b!6973945))

(assert (= (and b!6973245 ((_ is Union!17133) (regTwo!34779 (reg!17462 r!13765)))) b!6973946))

(declare-fun b!6973949 () Bool)

(declare-fun e!4191796 () Bool)

(declare-fun tp!1924889 () Bool)

(assert (=> b!6973949 (= e!4191796 tp!1924889)))

(declare-fun b!6973947 () Bool)

(assert (=> b!6973947 (= e!4191796 tp_is_empty!43491)))

(assert (=> b!6973236 (= tp!1924629 e!4191796)))

(declare-fun b!6973948 () Bool)

(declare-fun tp!1924893 () Bool)

(declare-fun tp!1924891 () Bool)

(assert (=> b!6973948 (= e!4191796 (and tp!1924893 tp!1924891))))

(declare-fun b!6973950 () Bool)

(declare-fun tp!1924892 () Bool)

(declare-fun tp!1924890 () Bool)

(assert (=> b!6973950 (= e!4191796 (and tp!1924892 tp!1924890))))

(assert (= (and b!6973236 ((_ is ElementMatch!17133) (reg!17462 (regOne!34778 r!13765)))) b!6973947))

(assert (= (and b!6973236 ((_ is Concat!25978) (reg!17462 (regOne!34778 r!13765)))) b!6973948))

(assert (= (and b!6973236 ((_ is Star!17133) (reg!17462 (regOne!34778 r!13765)))) b!6973949))

(assert (= (and b!6973236 ((_ is Union!17133) (reg!17462 (regOne!34778 r!13765)))) b!6973950))

(declare-fun b!6973951 () Bool)

(declare-fun e!4191797 () Bool)

(declare-fun tp!1924894 () Bool)

(assert (=> b!6973951 (= e!4191797 (and tp_is_empty!43491 tp!1924894))))

(assert (=> b!6973206 (= tp!1924597 e!4191797)))

(assert (= (and b!6973206 ((_ is Cons!66824) (t!380691 (t!380691 s!9351)))) b!6973951))

(declare-fun b!6973954 () Bool)

(declare-fun e!4191798 () Bool)

(declare-fun tp!1924895 () Bool)

(assert (=> b!6973954 (= e!4191798 tp!1924895)))

(declare-fun b!6973952 () Bool)

(assert (=> b!6973952 (= e!4191798 tp_is_empty!43491)))

(assert (=> b!6973241 (= tp!1924637 e!4191798)))

(declare-fun b!6973953 () Bool)

(declare-fun tp!1924899 () Bool)

(declare-fun tp!1924897 () Bool)

(assert (=> b!6973953 (= e!4191798 (and tp!1924899 tp!1924897))))

(declare-fun b!6973955 () Bool)

(declare-fun tp!1924898 () Bool)

(declare-fun tp!1924896 () Bool)

(assert (=> b!6973955 (= e!4191798 (and tp!1924898 tp!1924896))))

(assert (= (and b!6973241 ((_ is ElementMatch!17133) (regOne!34779 (regTwo!34778 r!13765)))) b!6973952))

(assert (= (and b!6973241 ((_ is Concat!25978) (regOne!34779 (regTwo!34778 r!13765)))) b!6973953))

(assert (= (and b!6973241 ((_ is Star!17133) (regOne!34779 (regTwo!34778 r!13765)))) b!6973954))

(assert (= (and b!6973241 ((_ is Union!17133) (regOne!34779 (regTwo!34778 r!13765)))) b!6973955))

(declare-fun b!6973958 () Bool)

(declare-fun e!4191799 () Bool)

(declare-fun tp!1924900 () Bool)

(assert (=> b!6973958 (= e!4191799 tp!1924900)))

(declare-fun b!6973956 () Bool)

(assert (=> b!6973956 (= e!4191799 tp_is_empty!43491)))

(assert (=> b!6973241 (= tp!1924635 e!4191799)))

(declare-fun b!6973957 () Bool)

(declare-fun tp!1924904 () Bool)

(declare-fun tp!1924902 () Bool)

(assert (=> b!6973957 (= e!4191799 (and tp!1924904 tp!1924902))))

(declare-fun b!6973959 () Bool)

(declare-fun tp!1924903 () Bool)

(declare-fun tp!1924901 () Bool)

(assert (=> b!6973959 (= e!4191799 (and tp!1924903 tp!1924901))))

(assert (= (and b!6973241 ((_ is ElementMatch!17133) (regTwo!34779 (regTwo!34778 r!13765)))) b!6973956))

(assert (= (and b!6973241 ((_ is Concat!25978) (regTwo!34779 (regTwo!34778 r!13765)))) b!6973957))

(assert (= (and b!6973241 ((_ is Star!17133) (regTwo!34779 (regTwo!34778 r!13765)))) b!6973958))

(assert (= (and b!6973241 ((_ is Union!17133) (regTwo!34779 (regTwo!34778 r!13765)))) b!6973959))

(declare-fun b!6973962 () Bool)

(declare-fun e!4191800 () Bool)

(declare-fun tp!1924905 () Bool)

(assert (=> b!6973962 (= e!4191800 tp!1924905)))

(declare-fun b!6973960 () Bool)

(assert (=> b!6973960 (= e!4191800 tp_is_empty!43491)))

(assert (=> b!6973227 (= tp!1924623 e!4191800)))

(declare-fun b!6973961 () Bool)

(declare-fun tp!1924909 () Bool)

(declare-fun tp!1924907 () Bool)

(assert (=> b!6973961 (= e!4191800 (and tp!1924909 tp!1924907))))

(declare-fun b!6973963 () Bool)

(declare-fun tp!1924908 () Bool)

(declare-fun tp!1924906 () Bool)

(assert (=> b!6973963 (= e!4191800 (and tp!1924908 tp!1924906))))

(assert (= (and b!6973227 ((_ is ElementMatch!17133) (regOne!34778 (regOne!34779 r!13765)))) b!6973960))

(assert (= (and b!6973227 ((_ is Concat!25978) (regOne!34778 (regOne!34779 r!13765)))) b!6973961))

(assert (= (and b!6973227 ((_ is Star!17133) (regOne!34778 (regOne!34779 r!13765)))) b!6973962))

(assert (= (and b!6973227 ((_ is Union!17133) (regOne!34778 (regOne!34779 r!13765)))) b!6973963))

(declare-fun b!6973966 () Bool)

(declare-fun e!4191801 () Bool)

(declare-fun tp!1924910 () Bool)

(assert (=> b!6973966 (= e!4191801 tp!1924910)))

(declare-fun b!6973964 () Bool)

(assert (=> b!6973964 (= e!4191801 tp_is_empty!43491)))

(assert (=> b!6973227 (= tp!1924621 e!4191801)))

(declare-fun b!6973965 () Bool)

(declare-fun tp!1924914 () Bool)

(declare-fun tp!1924912 () Bool)

(assert (=> b!6973965 (= e!4191801 (and tp!1924914 tp!1924912))))

(declare-fun b!6973967 () Bool)

(declare-fun tp!1924913 () Bool)

(declare-fun tp!1924911 () Bool)

(assert (=> b!6973967 (= e!4191801 (and tp!1924913 tp!1924911))))

(assert (= (and b!6973227 ((_ is ElementMatch!17133) (regTwo!34778 (regOne!34779 r!13765)))) b!6973964))

(assert (= (and b!6973227 ((_ is Concat!25978) (regTwo!34778 (regOne!34779 r!13765)))) b!6973965))

(assert (= (and b!6973227 ((_ is Star!17133) (regTwo!34778 (regOne!34779 r!13765)))) b!6973966))

(assert (= (and b!6973227 ((_ is Union!17133) (regTwo!34778 (regOne!34779 r!13765)))) b!6973967))

(declare-fun b!6973970 () Bool)

(declare-fun e!4191802 () Bool)

(declare-fun tp!1924915 () Bool)

(assert (=> b!6973970 (= e!4191802 tp!1924915)))

(declare-fun b!6973968 () Bool)

(assert (=> b!6973968 (= e!4191802 tp_is_empty!43491)))

(assert (=> b!6973232 (= tp!1924624 e!4191802)))

(declare-fun b!6973969 () Bool)

(declare-fun tp!1924919 () Bool)

(declare-fun tp!1924917 () Bool)

(assert (=> b!6973969 (= e!4191802 (and tp!1924919 tp!1924917))))

(declare-fun b!6973971 () Bool)

(declare-fun tp!1924918 () Bool)

(declare-fun tp!1924916 () Bool)

(assert (=> b!6973971 (= e!4191802 (and tp!1924918 tp!1924916))))

(assert (= (and b!6973232 ((_ is ElementMatch!17133) (reg!17462 (regTwo!34779 r!13765)))) b!6973968))

(assert (= (and b!6973232 ((_ is Concat!25978) (reg!17462 (regTwo!34779 r!13765)))) b!6973969))

(assert (= (and b!6973232 ((_ is Star!17133) (reg!17462 (regTwo!34779 r!13765)))) b!6973970))

(assert (= (and b!6973232 ((_ is Union!17133) (reg!17462 (regTwo!34779 r!13765)))) b!6973971))

(declare-fun b!6973974 () Bool)

(declare-fun e!4191803 () Bool)

(declare-fun tp!1924920 () Bool)

(assert (=> b!6973974 (= e!4191803 tp!1924920)))

(declare-fun b!6973972 () Bool)

(assert (=> b!6973972 (= e!4191803 tp_is_empty!43491)))

(assert (=> b!6973239 (= tp!1924638 e!4191803)))

(declare-fun b!6973973 () Bool)

(declare-fun tp!1924924 () Bool)

(declare-fun tp!1924922 () Bool)

(assert (=> b!6973973 (= e!4191803 (and tp!1924924 tp!1924922))))

(declare-fun b!6973975 () Bool)

(declare-fun tp!1924923 () Bool)

(declare-fun tp!1924921 () Bool)

(assert (=> b!6973975 (= e!4191803 (and tp!1924923 tp!1924921))))

(assert (= (and b!6973239 ((_ is ElementMatch!17133) (regOne!34778 (regTwo!34778 r!13765)))) b!6973972))

(assert (= (and b!6973239 ((_ is Concat!25978) (regOne!34778 (regTwo!34778 r!13765)))) b!6973973))

(assert (= (and b!6973239 ((_ is Star!17133) (regOne!34778 (regTwo!34778 r!13765)))) b!6973974))

(assert (= (and b!6973239 ((_ is Union!17133) (regOne!34778 (regTwo!34778 r!13765)))) b!6973975))

(declare-fun b!6973978 () Bool)

(declare-fun e!4191804 () Bool)

(declare-fun tp!1924925 () Bool)

(assert (=> b!6973978 (= e!4191804 tp!1924925)))

(declare-fun b!6973976 () Bool)

(assert (=> b!6973976 (= e!4191804 tp_is_empty!43491)))

(assert (=> b!6973239 (= tp!1924636 e!4191804)))

(declare-fun b!6973977 () Bool)

(declare-fun tp!1924929 () Bool)

(declare-fun tp!1924927 () Bool)

(assert (=> b!6973977 (= e!4191804 (and tp!1924929 tp!1924927))))

(declare-fun b!6973979 () Bool)

(declare-fun tp!1924928 () Bool)

(declare-fun tp!1924926 () Bool)

(assert (=> b!6973979 (= e!4191804 (and tp!1924928 tp!1924926))))

(assert (= (and b!6973239 ((_ is ElementMatch!17133) (regTwo!34778 (regTwo!34778 r!13765)))) b!6973976))

(assert (= (and b!6973239 ((_ is Concat!25978) (regTwo!34778 (regTwo!34778 r!13765)))) b!6973977))

(assert (= (and b!6973239 ((_ is Star!17133) (regTwo!34778 (regTwo!34778 r!13765)))) b!6973978))

(assert (= (and b!6973239 ((_ is Union!17133) (regTwo!34778 (regTwo!34778 r!13765)))) b!6973979))

(declare-fun b!6973982 () Bool)

(declare-fun e!4191805 () Bool)

(declare-fun tp!1924930 () Bool)

(assert (=> b!6973982 (= e!4191805 tp!1924930)))

(declare-fun b!6973980 () Bool)

(assert (=> b!6973980 (= e!4191805 tp_is_empty!43491)))

(assert (=> b!6973244 (= tp!1924639 e!4191805)))

(declare-fun b!6973981 () Bool)

(declare-fun tp!1924934 () Bool)

(declare-fun tp!1924932 () Bool)

(assert (=> b!6973981 (= e!4191805 (and tp!1924934 tp!1924932))))

(declare-fun b!6973983 () Bool)

(declare-fun tp!1924933 () Bool)

(declare-fun tp!1924931 () Bool)

(assert (=> b!6973983 (= e!4191805 (and tp!1924933 tp!1924931))))

(assert (= (and b!6973244 ((_ is ElementMatch!17133) (reg!17462 (reg!17462 r!13765)))) b!6973980))

(assert (= (and b!6973244 ((_ is Concat!25978) (reg!17462 (reg!17462 r!13765)))) b!6973981))

(assert (= (and b!6973244 ((_ is Star!17133) (reg!17462 (reg!17462 r!13765)))) b!6973982))

(assert (= (and b!6973244 ((_ is Union!17133) (reg!17462 (reg!17462 r!13765)))) b!6973983))

(declare-fun b!6973986 () Bool)

(declare-fun e!4191806 () Bool)

(declare-fun tp!1924935 () Bool)

(assert (=> b!6973986 (= e!4191806 tp!1924935)))

(declare-fun b!6973984 () Bool)

(assert (=> b!6973984 (= e!4191806 tp_is_empty!43491)))

(assert (=> b!6973235 (= tp!1924633 e!4191806)))

(declare-fun b!6973985 () Bool)

(declare-fun tp!1924939 () Bool)

(declare-fun tp!1924937 () Bool)

(assert (=> b!6973985 (= e!4191806 (and tp!1924939 tp!1924937))))

(declare-fun b!6973987 () Bool)

(declare-fun tp!1924938 () Bool)

(declare-fun tp!1924936 () Bool)

(assert (=> b!6973987 (= e!4191806 (and tp!1924938 tp!1924936))))

(assert (= (and b!6973235 ((_ is ElementMatch!17133) (regOne!34778 (regOne!34778 r!13765)))) b!6973984))

(assert (= (and b!6973235 ((_ is Concat!25978) (regOne!34778 (regOne!34778 r!13765)))) b!6973985))

(assert (= (and b!6973235 ((_ is Star!17133) (regOne!34778 (regOne!34778 r!13765)))) b!6973986))

(assert (= (and b!6973235 ((_ is Union!17133) (regOne!34778 (regOne!34778 r!13765)))) b!6973987))

(declare-fun b!6973990 () Bool)

(declare-fun e!4191807 () Bool)

(declare-fun tp!1924940 () Bool)

(assert (=> b!6973990 (= e!4191807 tp!1924940)))

(declare-fun b!6973988 () Bool)

(assert (=> b!6973988 (= e!4191807 tp_is_empty!43491)))

(assert (=> b!6973235 (= tp!1924631 e!4191807)))

(declare-fun b!6973989 () Bool)

(declare-fun tp!1924944 () Bool)

(declare-fun tp!1924942 () Bool)

(assert (=> b!6973989 (= e!4191807 (and tp!1924944 tp!1924942))))

(declare-fun b!6973991 () Bool)

(declare-fun tp!1924943 () Bool)

(declare-fun tp!1924941 () Bool)

(assert (=> b!6973991 (= e!4191807 (and tp!1924943 tp!1924941))))

(assert (= (and b!6973235 ((_ is ElementMatch!17133) (regTwo!34778 (regOne!34778 r!13765)))) b!6973988))

(assert (= (and b!6973235 ((_ is Concat!25978) (regTwo!34778 (regOne!34778 r!13765)))) b!6973989))

(assert (= (and b!6973235 ((_ is Star!17133) (regTwo!34778 (regOne!34778 r!13765)))) b!6973990))

(assert (= (and b!6973235 ((_ is Union!17133) (regTwo!34778 (regOne!34778 r!13765)))) b!6973991))

(declare-fun b!6973994 () Bool)

(declare-fun e!4191808 () Bool)

(declare-fun tp!1924945 () Bool)

(assert (=> b!6973994 (= e!4191808 tp!1924945)))

(declare-fun b!6973992 () Bool)

(assert (=> b!6973992 (= e!4191808 tp_is_empty!43491)))

(assert (=> b!6973240 (= tp!1924634 e!4191808)))

(declare-fun b!6973993 () Bool)

(declare-fun tp!1924949 () Bool)

(declare-fun tp!1924947 () Bool)

(assert (=> b!6973993 (= e!4191808 (and tp!1924949 tp!1924947))))

(declare-fun b!6973995 () Bool)

(declare-fun tp!1924948 () Bool)

(declare-fun tp!1924946 () Bool)

(assert (=> b!6973995 (= e!4191808 (and tp!1924948 tp!1924946))))

(assert (= (and b!6973240 ((_ is ElementMatch!17133) (reg!17462 (regTwo!34778 r!13765)))) b!6973992))

(assert (= (and b!6973240 ((_ is Concat!25978) (reg!17462 (regTwo!34778 r!13765)))) b!6973993))

(assert (= (and b!6973240 ((_ is Star!17133) (reg!17462 (regTwo!34778 r!13765)))) b!6973994))

(assert (= (and b!6973240 ((_ is Union!17133) (reg!17462 (regTwo!34778 r!13765)))) b!6973995))

(declare-fun b!6973998 () Bool)

(declare-fun e!4191809 () Bool)

(declare-fun tp!1924950 () Bool)

(assert (=> b!6973998 (= e!4191809 tp!1924950)))

(declare-fun b!6973996 () Bool)

(assert (=> b!6973996 (= e!4191809 tp_is_empty!43491)))

(assert (=> b!6973243 (= tp!1924643 e!4191809)))

(declare-fun b!6973997 () Bool)

(declare-fun tp!1924954 () Bool)

(declare-fun tp!1924952 () Bool)

(assert (=> b!6973997 (= e!4191809 (and tp!1924954 tp!1924952))))

(declare-fun b!6973999 () Bool)

(declare-fun tp!1924953 () Bool)

(declare-fun tp!1924951 () Bool)

(assert (=> b!6973999 (= e!4191809 (and tp!1924953 tp!1924951))))

(assert (= (and b!6973243 ((_ is ElementMatch!17133) (regOne!34778 (reg!17462 r!13765)))) b!6973996))

(assert (= (and b!6973243 ((_ is Concat!25978) (regOne!34778 (reg!17462 r!13765)))) b!6973997))

(assert (= (and b!6973243 ((_ is Star!17133) (regOne!34778 (reg!17462 r!13765)))) b!6973998))

(assert (= (and b!6973243 ((_ is Union!17133) (regOne!34778 (reg!17462 r!13765)))) b!6973999))

(declare-fun b!6974002 () Bool)

(declare-fun e!4191810 () Bool)

(declare-fun tp!1924955 () Bool)

(assert (=> b!6974002 (= e!4191810 tp!1924955)))

(declare-fun b!6974000 () Bool)

(assert (=> b!6974000 (= e!4191810 tp_is_empty!43491)))

(assert (=> b!6973243 (= tp!1924641 e!4191810)))

(declare-fun b!6974001 () Bool)

(declare-fun tp!1924959 () Bool)

(declare-fun tp!1924957 () Bool)

(assert (=> b!6974001 (= e!4191810 (and tp!1924959 tp!1924957))))

(declare-fun b!6974003 () Bool)

(declare-fun tp!1924958 () Bool)

(declare-fun tp!1924956 () Bool)

(assert (=> b!6974003 (= e!4191810 (and tp!1924958 tp!1924956))))

(assert (= (and b!6973243 ((_ is ElementMatch!17133) (regTwo!34778 (reg!17462 r!13765)))) b!6974000))

(assert (= (and b!6973243 ((_ is Concat!25978) (regTwo!34778 (reg!17462 r!13765)))) b!6974001))

(assert (= (and b!6973243 ((_ is Star!17133) (regTwo!34778 (reg!17462 r!13765)))) b!6974002))

(assert (= (and b!6973243 ((_ is Union!17133) (regTwo!34778 (reg!17462 r!13765)))) b!6974003))

(declare-fun b_lambda!260907 () Bool)

(assert (= b_lambda!260905 (or d!2171558 b_lambda!260907)))

(declare-fun bs!1859713 () Bool)

(declare-fun d!2171786 () Bool)

(assert (= bs!1859713 (and d!2171786 d!2171558)))

(assert (=> bs!1859713 (= (dynLambda!26647 lambda!397865 (h!73271 lt!2479822)) (validRegex!8815 (h!73271 lt!2479822)))))

(assert (=> bs!1859713 m!7660776))

(assert (=> b!6973876 d!2171786))

(declare-fun b_lambda!260909 () Bool)

(assert (= b_lambda!260903 (or d!2171532 b_lambda!260909)))

(declare-fun bs!1859714 () Bool)

(declare-fun d!2171788 () Bool)

(assert (= bs!1859714 (and d!2171788 d!2171532)))

(assert (=> bs!1859714 (= (dynLambda!26647 lambda!397853 (h!73271 lt!2479822)) (validRegex!8815 (h!73271 lt!2479822)))))

(assert (=> bs!1859714 m!7660776))

(assert (=> b!6973872 d!2171788))

(declare-fun b_lambda!260911 () Bool)

(assert (= b_lambda!260879 (or d!2171546 b_lambda!260911)))

(declare-fun bs!1859715 () Bool)

(declare-fun d!2171790 () Bool)

(assert (= bs!1859715 (and d!2171790 d!2171546)))

(assert (=> bs!1859715 (= (dynLambda!26647 lambda!397854 (h!73271 l!9142)) (validRegex!8815 (h!73271 l!9142)))))

(assert (=> bs!1859715 m!7660778))

(assert (=> b!6973588 d!2171790))

(declare-fun b_lambda!260913 () Bool)

(assert (= b_lambda!260873 (or start!668578 b_lambda!260913)))

(declare-fun bs!1859716 () Bool)

(declare-fun d!2171792 () Bool)

(assert (= bs!1859716 (and d!2171792 start!668578)))

(assert (=> bs!1859716 (= (dynLambda!26647 lambda!397817 (h!73271 (t!380690 l!9142))) (validRegex!8815 (h!73271 (t!380690 l!9142))))))

(declare-fun m!7661188 () Bool)

(assert (=> bs!1859716 m!7661188))

(assert (=> b!6973506 d!2171792))

(declare-fun b_lambda!260915 () Bool)

(assert (= b_lambda!260901 (or d!2171556 b_lambda!260915)))

(declare-fun bs!1859717 () Bool)

(declare-fun d!2171794 () Bool)

(assert (= bs!1859717 (and d!2171794 d!2171556)))

(assert (=> bs!1859717 (= (dynLambda!26647 lambda!397860 (h!73271 lt!2479822)) (not (dynLambda!26647 lambda!397818 (h!73271 lt!2479822))))))

(declare-fun b_lambda!260921 () Bool)

(assert (=> (not b_lambda!260921) (not bs!1859717)))

(declare-fun m!7661190 () Bool)

(assert (=> bs!1859717 m!7661190))

(assert (=> b!6973842 d!2171794))

(declare-fun b_lambda!260917 () Bool)

(assert (= b_lambda!260899 (or d!2171554 b_lambda!260917)))

(declare-fun bs!1859718 () Bool)

(declare-fun d!2171796 () Bool)

(assert (= bs!1859718 (and d!2171796 d!2171554)))

(assert (=> bs!1859718 (= (dynLambda!26647 lambda!397859 (h!73271 l!9142)) (not (dynLambda!26647 lambda!397818 (h!73271 l!9142))))))

(declare-fun b_lambda!260923 () Bool)

(assert (=> (not b_lambda!260923) (not bs!1859718)))

(declare-fun m!7661192 () Bool)

(assert (=> bs!1859718 m!7661192))

(assert (=> b!6973787 d!2171796))

(declare-fun b_lambda!260919 () Bool)

(assert (= b_lambda!260875 (or start!668578 b_lambda!260919)))

(declare-fun bs!1859719 () Bool)

(declare-fun d!2171798 () Bool)

(assert (= bs!1859719 (and d!2171798 start!668578)))

(assert (=> bs!1859719 (= (dynLambda!26647 lambda!397817 (h!73271 (t!380690 lt!2479822))) (validRegex!8815 (h!73271 (t!380690 lt!2479822))))))

(declare-fun m!7661194 () Bool)

(assert (=> bs!1859719 m!7661194))

(assert (=> b!6973529 d!2171798))

(check-sat (not b!6973919) (not b!6973800) (not b!6973779) (not b!6973946) (not b!6973796) (not bm!633021) (not d!2171738) (not b!6973954) (not d!2171716) (not b!6973917) (not b!6973975) (not b!6974003) (not b!6973920) (not b!6973962) (not b!6973944) (not b!6973753) (not b!6973932) (not b!6973828) (not b!6974001) (not b!6973494) (not b!6973966) (not b_lambda!260907) (not b_lambda!260859) (not bm!633018) (not b!6973888) (not b!6973893) (not b!6973850) (not b_lambda!260915) (not b!6973940) (not b!6973884) (not d!2171734) (not b!6973589) (not b_lambda!260909) (not d!2171730) (not b!6973933) (not bm!632993) (not b!6973895) (not b!6973743) (not b_lambda!260857) (not b!6973974) (not b!6973961) (not b!6973771) (not d!2171766) (not b!6973811) (not b!6973995) (not b_lambda!260923) (not bm!633001) (not bm!633012) (not b!6973881) (not b!6973849) (not bm!632992) (not b!6973991) (not b_lambda!260917) (not b!6973768) (not b!6973892) (not b!6973373) (not d!2171776) (not b!6973517) (not b!6973936) (not b!6973963) (not b!6973851) (not d!2171704) (not b!6973530) (not b!6973987) (not b!6974002) (not b!6973993) (not b!6973998) (not b!6973903) (not b!6973999) (not bm!633005) (not b!6973959) (not b!6973877) (not bm!633007) (not b!6973394) (not bm!633015) (not b!6973507) (not b!6973844) (not bm!633027) (not b!6973941) (not bs!1859713) (not bm!633025) (not b!6973805) (not b!6973986) (not b!6973969) (not b!6973949) (not b!6973945) (not b!6973905) (not b!6973889) (not b!6973748) (not b!6973883) (not b!6973896) (not b!6973971) (not b!6973847) (not b!6973752) (not bm!632999) (not b!6973514) (not b!6973389) (not b!6973788) (not bm!633022) (not b!6973825) (not b!6973930) (not b!6973907) (not b!6973957) (not b!6973880) (not d!2171782) (not b!6973810) (not b!6973608) (not bm!633013) (not d!2171612) (not b!6973942) (not d!2171756) (not bm!633019) (not b!6973782) (not b!6973799) (not b!6973870) (not b!6973742) (not b!6973604) (not b!6973923) (not b!6973911) (not d!2171746) (not b!6973927) (not b!6973925) (not d!2171784) (not b!6973814) (not bs!1859715) (not d!2171778) (not bm!633008) (not b!6973508) (not b!6973985) (not b_lambda!260919) (not b!6973843) (not b!6973908) (not b!6973937) (not b!6973948) (not b!6973997) (not b!6973891) (not b!6973970) (not b!6973511) (not bm!632996) (not b!6973928) (not b_lambda!260911) (not bs!1859716) (not b!6973979) tp_is_empty!43491 (not b!6973382) (not b!6973973) (not b!6973887) (not b!6973934) (not b!6973754) (not bm!632997) (not bm!632994) (not b!6973977) (not bm!633006) (not b!6973982) (not b!6973909) (not b!6973994) (not b!6973912) (not b!6973393) (not b!6973904) (not b!6973990) (not bm!632976) (not b!6973915) (not d!2171656) (not b!6973861) (not b!6973978) (not b!6973913) (not b!6973924) (not d!2171676) (not d!2171762) (not b!6973981) (not bm!633017) (not bm!633011) (not b!6973951) (not b!6973958) (not b!6973582) (not b!6973515) (not bs!1859719) (not bm!632974) (not b!6973901) (not b!6973757) (not b!6973921) (not b_lambda!260921) (not bm!633024) (not b!6973983) (not b!6973929) (not b!6973900) (not b!6973734) (not b!6973840) (not b!6973950) (not b!6973845) (not b!6973853) (not b!6973899) (not b!6973955) (not bm!633009) (not bm!633028) (not b!6973989) (not d!2171664) (not b!6973879) (not b!6973953) (not b!6973513) (not b!6973395) (not b!6973965) (not b!6973809) (not bm!632991) (not bs!1859714) (not b!6973873) (not b!6973709) (not b!6973885) (not bm!632947) (not d!2171748) (not b!6973897) (not b!6973916) (not bm!633000) (not d!2171598) (not b!6973967) (not b!6973938) (not b!6973509) (not b_lambda!260913) (not bm!633003))
(check-sat)
(get-model)

(declare-fun b_lambda!260925 () Bool)

(assert (= b_lambda!260921 (or b!6972773 b_lambda!260925)))

(declare-fun bs!1859720 () Bool)

(declare-fun d!2171800 () Bool)

(assert (= bs!1859720 (and d!2171800 b!6972773)))

(declare-fun res!2844383 () Bool)

(declare-fun e!4191811 () Bool)

(assert (=> bs!1859720 (=> (not res!2844383) (not e!4191811))))

(assert (=> bs!1859720 (= res!2844383 (validRegex!8815 (h!73271 lt!2479822)))))

(assert (=> bs!1859720 (= (dynLambda!26647 lambda!397818 (h!73271 lt!2479822)) e!4191811)))

(declare-fun b!6974004 () Bool)

(assert (=> b!6974004 (= e!4191811 (matchR!9235 (h!73271 lt!2479822) s!9351))))

(assert (= (and bs!1859720 res!2844383) b!6974004))

(assert (=> bs!1859720 m!7660776))

(declare-fun m!7661196 () Bool)

(assert (=> b!6974004 m!7661196))

(assert (=> bs!1859717 d!2171800))

(declare-fun b_lambda!260927 () Bool)

(assert (= b_lambda!260923 (or b!6972773 b_lambda!260927)))

(declare-fun bs!1859721 () Bool)

(declare-fun d!2171802 () Bool)

(assert (= bs!1859721 (and d!2171802 b!6972773)))

(declare-fun res!2844384 () Bool)

(declare-fun e!4191812 () Bool)

(assert (=> bs!1859721 (=> (not res!2844384) (not e!4191812))))

(assert (=> bs!1859721 (= res!2844384 (validRegex!8815 (h!73271 l!9142)))))

(assert (=> bs!1859721 (= (dynLambda!26647 lambda!397818 (h!73271 l!9142)) e!4191812)))

(declare-fun b!6974005 () Bool)

(assert (=> b!6974005 (= e!4191812 (matchR!9235 (h!73271 l!9142) s!9351))))

(assert (= (and bs!1859721 res!2844384) b!6974005))

(assert (=> bs!1859721 m!7660778))

(declare-fun m!7661198 () Bool)

(assert (=> b!6974005 m!7661198))

(assert (=> bs!1859718 d!2171802))

(check-sat (not b!6973919) (not b!6973779) (not b!6973946) (not b!6973796) (not bm!633021) (not d!2171738) (not b!6973954) (not d!2171716) (not b!6973917) (not b!6973975) (not b!6974003) (not b!6973920) (not b!6973962) (not b!6973944) (not b!6973753) (not b!6973932) (not b!6973828) (not b!6974001) (not b!6973494) (not b!6973966) (not b_lambda!260907) (not b_lambda!260859) (not bm!633018) (not b!6973888) (not b!6973893) (not bs!1859721) (not b!6973850) (not b_lambda!260915) (not b!6973940) (not d!2171734) (not b!6973589) (not b_lambda!260909) (not d!2171730) (not b!6973933) (not bm!632993) (not b!6973895) (not b!6973884) (not b_lambda!260927) (not b!6973743) (not bm!633001) (not b_lambda!260857) (not b!6973974) (not b!6973961) (not b!6973771) (not d!2171766) (not b!6973811) (not b!6973995) (not bm!633012) (not b!6973881) (not b!6973849) (not bm!632992) (not b!6973991) (not b_lambda!260917) (not b!6973768) (not b!6973892) (not b!6973373) (not d!2171776) (not b!6973517) (not b_lambda!260925) (not b!6973936) (not b!6973963) (not b!6973851) (not d!2171704) (not b!6973530) (not b!6973987) (not b!6974002) (not b!6973993) (not b!6973998) (not b!6973903) (not b!6973999) (not bm!633005) (not b!6973959) (not b!6973877) (not bm!633007) (not b!6973394) (not bm!633015) (not b!6973507) (not b!6973844) (not bm!633027) (not b!6973941) (not bs!1859713) (not bm!633025) (not b!6973805) (not b!6973986) (not b!6973969) (not b!6974004) (not b!6973949) (not b!6973945) (not b!6973905) (not b!6973889) (not b!6973748) (not b!6973883) (not b!6973896) (not b!6973971) (not b!6973847) (not b!6973752) (not bm!632999) (not b!6973514) (not b!6973389) (not b!6973788) (not bm!633022) (not b!6973825) (not b!6973930) (not b!6973907) (not b!6974005) (not b!6973957) (not b!6973880) (not d!2171782) (not b!6973810) (not b!6973608) (not bm!633013) (not d!2171612) (not b!6973942) (not d!2171756) (not bm!633019) (not b!6973782) (not b!6973799) (not b!6973870) (not b!6973742) (not b!6973604) (not b!6973923) (not b!6973911) (not d!2171746) (not b!6973927) (not b!6973925) (not d!2171784) (not b!6973814) (not bs!1859715) (not d!2171778) (not bm!633008) (not b!6973508) (not b!6973985) (not b_lambda!260919) (not b!6973843) (not b!6973908) (not b!6973937) (not b!6973948) (not b!6973997) (not b!6973891) (not b!6973970) (not b!6973511) (not bm!632996) (not b!6973928) (not b_lambda!260911) (not bs!1859716) (not b!6973979) tp_is_empty!43491 (not b!6973382) (not b!6973973) (not b!6973887) (not b!6973934) (not b!6973754) (not bm!632997) (not bm!632994) (not b!6973977) (not bm!633006) (not b!6973982) (not b!6973909) (not b!6973994) (not b!6973912) (not b!6973393) (not b!6973904) (not b!6973990) (not bm!632976) (not b!6973915) (not d!2171656) (not b!6973861) (not b!6973978) (not b!6973913) (not b!6973924) (not d!2171676) (not d!2171762) (not b!6973981) (not bm!633017) (not bm!633011) (not b!6973951) (not bs!1859720) (not b!6973800) (not b!6973958) (not b!6973582) (not b!6973515) (not bs!1859719) (not bm!632974) (not b!6973901) (not b!6973757) (not b!6973921) (not bm!633024) (not b!6973983) (not b!6973929) (not b!6973900) (not b!6973734) (not b!6973840) (not b!6973950) (not b!6973845) (not b!6973853) (not b!6973899) (not b!6973955) (not bm!633009) (not bm!633028) (not b!6973989) (not d!2171664) (not b!6973879) (not b!6973953) (not b!6973513) (not b!6973395) (not b!6973965) (not b!6973809) (not bm!632991) (not bs!1859714) (not b!6973873) (not b!6973709) (not b!6973885) (not bm!632947) (not d!2171748) (not b!6973897) (not b!6973916) (not bm!633000) (not d!2171598) (not b!6973967) (not b!6973938) (not b!6973509) (not b_lambda!260913) (not bm!633003))
(check-sat)
