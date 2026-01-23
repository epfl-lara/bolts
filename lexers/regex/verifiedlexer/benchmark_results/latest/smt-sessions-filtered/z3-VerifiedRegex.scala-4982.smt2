; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252544 () Bool)

(assert start!252544)

(declare-fun b!2599636 () Bool)

(declare-fun e!1640885 () Bool)

(declare-datatypes ((B!2349 0))(
  ( (B!2350 (val!9642 Int)) )
))
(declare-datatypes ((List!30075 0))(
  ( (Nil!29975) (Cons!29975 (h!35395 B!2349) (t!213088 List!30075)) )
))
(declare-fun l!3274 () List!30075)

(declare-fun e!9367 () B!2349)

(declare-fun -!210 (List!30075 B!2349) List!30075)

(assert (=> b!2599636 (= e!1640885 (= l!3274 (-!210 l!3274 e!9367)))))

(declare-fun b!2599637 () Bool)

(declare-fun e!1640884 () Bool)

(declare-fun tp_is_empty!13629 () Bool)

(declare-fun tp!823690 () Bool)

(assert (=> b!2599637 (= e!1640884 (and tp_is_empty!13629 tp!823690))))

(declare-fun b!2599638 () Bool)

(declare-fun res!1094888 () Bool)

(declare-fun e!1640883 () Bool)

(assert (=> b!2599638 (=> (not res!1094888) (not e!1640883))))

(get-info :version)

(assert (=> b!2599638 (= res!1094888 ((_ is Cons!29975) l!3274))))

(declare-fun res!1094887 () Bool)

(assert (=> start!252544 (=> (not res!1094887) (not e!1640883))))

(declare-fun noDuplicate!523 (List!30075) Bool)

(assert (=> start!252544 (= res!1094887 (noDuplicate!523 l!3274))))

(assert (=> start!252544 e!1640883))

(assert (=> start!252544 e!1640884))

(assert (=> start!252544 tp_is_empty!13629))

(declare-fun b!2599639 () Bool)

(declare-fun res!1094889 () Bool)

(assert (=> b!2599639 (=> res!1094889 e!1640885)))

(declare-fun lt!915197 () List!30075)

(assert (=> b!2599639 (= res!1094889 (not (= lt!915197 (t!213088 l!3274))))))

(declare-fun b!2599640 () Bool)

(declare-fun res!1094885 () Bool)

(assert (=> b!2599640 (=> (not res!1094885) (not e!1640883))))

(declare-fun contains!5523 (List!30075 B!2349) Bool)

(assert (=> b!2599640 (= res!1094885 (not (contains!5523 l!3274 e!9367)))))

(declare-fun b!2599641 () Bool)

(assert (=> b!2599641 (= e!1640883 (not e!1640885))))

(declare-fun res!1094886 () Bool)

(assert (=> b!2599641 (=> res!1094886 e!1640885)))

(assert (=> b!2599641 (= res!1094886 (contains!5523 (t!213088 l!3274) e!9367))))

(assert (=> b!2599641 (= (t!213088 l!3274) lt!915197)))

(assert (=> b!2599641 (= lt!915197 (-!210 (t!213088 l!3274) e!9367))))

(declare-datatypes ((Unit!44019 0))(
  ( (Unit!44020) )
))
(declare-fun lt!915196 () Unit!44019)

(declare-fun lemmaNotContainedThenRemoveSameList!12 (List!30075 B!2349) Unit!44019)

(assert (=> b!2599641 (= lt!915196 (lemmaNotContainedThenRemoveSameList!12 (t!213088 l!3274) e!9367))))

(assert (= (and start!252544 res!1094887) b!2599640))

(assert (= (and b!2599640 res!1094885) b!2599638))

(assert (= (and b!2599638 res!1094888) b!2599641))

(assert (= (and b!2599641 (not res!1094886)) b!2599639))

(assert (= (and b!2599639 (not res!1094889)) b!2599636))

(assert (= (and start!252544 ((_ is Cons!29975) l!3274)) b!2599637))

(declare-fun m!2935317 () Bool)

(assert (=> b!2599636 m!2935317))

(declare-fun m!2935319 () Bool)

(assert (=> start!252544 m!2935319))

(declare-fun m!2935321 () Bool)

(assert (=> b!2599640 m!2935321))

(declare-fun m!2935323 () Bool)

(assert (=> b!2599641 m!2935323))

(declare-fun m!2935325 () Bool)

(assert (=> b!2599641 m!2935325))

(declare-fun m!2935327 () Bool)

(assert (=> b!2599641 m!2935327))

(check-sat (not b!2599641) (not b!2599637) (not b!2599640) (not start!252544) tp_is_empty!13629 (not b!2599636))
(check-sat)
(get-model)

(declare-fun d!736543 () Bool)

(declare-fun lt!915202 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4246 (List!30075) (InoxSet B!2349))

(assert (=> d!736543 (= lt!915202 (select (content!4246 l!3274) e!9367))))

(declare-fun e!1640895 () Bool)

(assert (=> d!736543 (= lt!915202 e!1640895)))

(declare-fun res!1094894 () Bool)

(assert (=> d!736543 (=> (not res!1094894) (not e!1640895))))

(assert (=> d!736543 (= res!1094894 ((_ is Cons!29975) l!3274))))

(assert (=> d!736543 (= (contains!5523 l!3274 e!9367) lt!915202)))

(declare-fun b!2599654 () Bool)

(declare-fun e!1640896 () Bool)

(assert (=> b!2599654 (= e!1640895 e!1640896)))

(declare-fun res!1094895 () Bool)

(assert (=> b!2599654 (=> res!1094895 e!1640896)))

(assert (=> b!2599654 (= res!1094895 (= (h!35395 l!3274) e!9367))))

(declare-fun b!2599655 () Bool)

(assert (=> b!2599655 (= e!1640896 (contains!5523 (t!213088 l!3274) e!9367))))

(assert (= (and d!736543 res!1094894) b!2599654))

(assert (= (and b!2599654 (not res!1094895)) b!2599655))

(declare-fun m!2935329 () Bool)

(assert (=> d!736543 m!2935329))

(declare-fun m!2935331 () Bool)

(assert (=> d!736543 m!2935331))

(assert (=> b!2599655 m!2935323))

(assert (=> b!2599640 d!736543))

(declare-fun d!736547 () Bool)

(declare-fun lt!915203 () Bool)

(assert (=> d!736547 (= lt!915203 (select (content!4246 (t!213088 l!3274)) e!9367))))

(declare-fun e!1640897 () Bool)

(assert (=> d!736547 (= lt!915203 e!1640897)))

(declare-fun res!1094896 () Bool)

(assert (=> d!736547 (=> (not res!1094896) (not e!1640897))))

(assert (=> d!736547 (= res!1094896 ((_ is Cons!29975) (t!213088 l!3274)))))

(assert (=> d!736547 (= (contains!5523 (t!213088 l!3274) e!9367) lt!915203)))

(declare-fun b!2599656 () Bool)

(declare-fun e!1640898 () Bool)

(assert (=> b!2599656 (= e!1640897 e!1640898)))

(declare-fun res!1094897 () Bool)

(assert (=> b!2599656 (=> res!1094897 e!1640898)))

(assert (=> b!2599656 (= res!1094897 (= (h!35395 (t!213088 l!3274)) e!9367))))

(declare-fun b!2599657 () Bool)

(assert (=> b!2599657 (= e!1640898 (contains!5523 (t!213088 (t!213088 l!3274)) e!9367))))

(assert (= (and d!736547 res!1094896) b!2599656))

(assert (= (and b!2599656 (not res!1094897)) b!2599657))

(declare-fun m!2935333 () Bool)

(assert (=> d!736547 m!2935333))

(declare-fun m!2935335 () Bool)

(assert (=> d!736547 m!2935335))

(declare-fun m!2935337 () Bool)

(assert (=> b!2599657 m!2935337))

(assert (=> b!2599641 d!736547))

(declare-fun b!2599681 () Bool)

(declare-fun e!1640919 () List!30075)

(assert (=> b!2599681 (= e!1640919 Nil!29975)))

(declare-fun bm!167401 () Bool)

(declare-fun call!167406 () List!30075)

(assert (=> bm!167401 (= call!167406 (-!210 (t!213088 (t!213088 l!3274)) e!9367))))

(declare-fun b!2599682 () Bool)

(declare-fun e!1640917 () List!30075)

(assert (=> b!2599682 (= e!1640917 call!167406)))

(declare-fun e!1640918 () Bool)

(declare-fun lt!915207 () List!30075)

(declare-fun b!2599683 () Bool)

(assert (=> b!2599683 (= e!1640918 (= (content!4246 lt!915207) ((_ map and) (content!4246 (t!213088 l!3274)) ((_ map not) (store ((as const (Array B!2349 Bool)) false) e!9367 true)))))))

(declare-fun d!736549 () Bool)

(assert (=> d!736549 e!1640918))

(declare-fun res!1094909 () Bool)

(assert (=> d!736549 (=> (not res!1094909) (not e!1640918))))

(declare-fun size!23242 (List!30075) Int)

(assert (=> d!736549 (= res!1094909 (<= (size!23242 lt!915207) (size!23242 (t!213088 l!3274))))))

(assert (=> d!736549 (= lt!915207 e!1640919)))

(declare-fun c!418600 () Bool)

(assert (=> d!736549 (= c!418600 ((_ is Cons!29975) (t!213088 l!3274)))))

(assert (=> d!736549 (= (-!210 (t!213088 l!3274) e!9367) lt!915207)))

(declare-fun b!2599684 () Bool)

(assert (=> b!2599684 (= e!1640919 e!1640917)))

(declare-fun c!418599 () Bool)

(assert (=> b!2599684 (= c!418599 (= e!9367 (h!35395 (t!213088 l!3274))))))

(declare-fun b!2599685 () Bool)

(assert (=> b!2599685 (= e!1640917 (Cons!29975 (h!35395 (t!213088 l!3274)) call!167406))))

(assert (= (and d!736549 c!418600) b!2599684))

(assert (= (and d!736549 (not c!418600)) b!2599681))

(assert (= (and b!2599684 c!418599) b!2599682))

(assert (= (and b!2599684 (not c!418599)) b!2599685))

(assert (= (or b!2599682 b!2599685) bm!167401))

(assert (= (and d!736549 res!1094909) b!2599683))

(declare-fun m!2935353 () Bool)

(assert (=> bm!167401 m!2935353))

(declare-fun m!2935355 () Bool)

(assert (=> b!2599683 m!2935355))

(assert (=> b!2599683 m!2935333))

(declare-fun m!2935357 () Bool)

(assert (=> b!2599683 m!2935357))

(declare-fun m!2935359 () Bool)

(assert (=> d!736549 m!2935359))

(declare-fun m!2935361 () Bool)

(assert (=> d!736549 m!2935361))

(assert (=> b!2599641 d!736549))

(declare-fun d!736555 () Bool)

(assert (=> d!736555 (= (t!213088 l!3274) (-!210 (t!213088 l!3274) e!9367))))

(declare-fun lt!915215 () Unit!44019)

(declare-fun choose!15456 (List!30075 B!2349) Unit!44019)

(assert (=> d!736555 (= lt!915215 (choose!15456 (t!213088 l!3274) e!9367))))

(assert (=> d!736555 (noDuplicate!523 (t!213088 l!3274))))

(assert (=> d!736555 (= (lemmaNotContainedThenRemoveSameList!12 (t!213088 l!3274) e!9367) lt!915215)))

(declare-fun bs!473135 () Bool)

(assert (= bs!473135 d!736555))

(assert (=> bs!473135 m!2935325))

(declare-fun m!2935379 () Bool)

(assert (=> bs!473135 m!2935379))

(declare-fun m!2935381 () Bool)

(assert (=> bs!473135 m!2935381))

(assert (=> b!2599641 d!736555))

(declare-fun d!736563 () Bool)

(declare-fun res!1094923 () Bool)

(declare-fun e!1640937 () Bool)

(assert (=> d!736563 (=> res!1094923 e!1640937)))

(assert (=> d!736563 (= res!1094923 ((_ is Nil!29975) l!3274))))

(assert (=> d!736563 (= (noDuplicate!523 l!3274) e!1640937)))

(declare-fun b!2599703 () Bool)

(declare-fun e!1640938 () Bool)

(assert (=> b!2599703 (= e!1640937 e!1640938)))

(declare-fun res!1094924 () Bool)

(assert (=> b!2599703 (=> (not res!1094924) (not e!1640938))))

(assert (=> b!2599703 (= res!1094924 (not (contains!5523 (t!213088 l!3274) (h!35395 l!3274))))))

(declare-fun b!2599704 () Bool)

(assert (=> b!2599704 (= e!1640938 (noDuplicate!523 (t!213088 l!3274)))))

(assert (= (and d!736563 (not res!1094923)) b!2599703))

(assert (= (and b!2599703 res!1094924) b!2599704))

(declare-fun m!2935385 () Bool)

(assert (=> b!2599703 m!2935385))

(assert (=> b!2599704 m!2935381))

(assert (=> start!252544 d!736563))

(declare-fun b!2599709 () Bool)

(declare-fun e!1640943 () List!30075)

(assert (=> b!2599709 (= e!1640943 Nil!29975)))

(declare-fun bm!167403 () Bool)

(declare-fun call!167408 () List!30075)

(assert (=> bm!167403 (= call!167408 (-!210 (t!213088 l!3274) e!9367))))

(declare-fun b!2599710 () Bool)

(declare-fun e!1640941 () List!30075)

(assert (=> b!2599710 (= e!1640941 call!167408)))

(declare-fun b!2599711 () Bool)

(declare-fun e!1640942 () Bool)

(declare-fun lt!915219 () List!30075)

(assert (=> b!2599711 (= e!1640942 (= (content!4246 lt!915219) ((_ map and) (content!4246 l!3274) ((_ map not) (store ((as const (Array B!2349 Bool)) false) e!9367 true)))))))

(declare-fun d!736565 () Bool)

(assert (=> d!736565 e!1640942))

(declare-fun res!1094925 () Bool)

(assert (=> d!736565 (=> (not res!1094925) (not e!1640942))))

(assert (=> d!736565 (= res!1094925 (<= (size!23242 lt!915219) (size!23242 l!3274)))))

(assert (=> d!736565 (= lt!915219 e!1640943)))

(declare-fun c!418604 () Bool)

(assert (=> d!736565 (= c!418604 ((_ is Cons!29975) l!3274))))

(assert (=> d!736565 (= (-!210 l!3274 e!9367) lt!915219)))

(declare-fun b!2599712 () Bool)

(assert (=> b!2599712 (= e!1640943 e!1640941)))

(declare-fun c!418603 () Bool)

(assert (=> b!2599712 (= c!418603 (= e!9367 (h!35395 l!3274)))))

(declare-fun b!2599713 () Bool)

(assert (=> b!2599713 (= e!1640941 (Cons!29975 (h!35395 l!3274) call!167408))))

(assert (= (and d!736565 c!418604) b!2599712))

(assert (= (and d!736565 (not c!418604)) b!2599709))

(assert (= (and b!2599712 c!418603) b!2599710))

(assert (= (and b!2599712 (not c!418603)) b!2599713))

(assert (= (or b!2599710 b!2599713) bm!167403))

(assert (= (and d!736565 res!1094925) b!2599711))

(assert (=> bm!167403 m!2935325))

(declare-fun m!2935387 () Bool)

(assert (=> b!2599711 m!2935387))

(assert (=> b!2599711 m!2935329))

(assert (=> b!2599711 m!2935357))

(declare-fun m!2935389 () Bool)

(assert (=> d!736565 m!2935389))

(declare-fun m!2935391 () Bool)

(assert (=> d!736565 m!2935391))

(assert (=> b!2599636 d!736565))

(declare-fun b!2599719 () Bool)

(declare-fun e!1640947 () Bool)

(declare-fun tp!823696 () Bool)

(assert (=> b!2599719 (= e!1640947 (and tp_is_empty!13629 tp!823696))))

(assert (=> b!2599637 (= tp!823690 e!1640947)))

(assert (= (and b!2599637 ((_ is Cons!29975) (t!213088 l!3274))) b!2599719))

(check-sat (not b!2599703) (not b!2599711) (not b!2599655) (not d!736543) (not b!2599704) (not b!2599683) (not d!736555) (not d!736547) (not d!736549) (not b!2599657) (not bm!167403) (not d!736565) tp_is_empty!13629 (not bm!167401) (not b!2599719))
(check-sat)
