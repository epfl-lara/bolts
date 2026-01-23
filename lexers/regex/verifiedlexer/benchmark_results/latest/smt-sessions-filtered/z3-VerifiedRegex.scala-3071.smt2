; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183042 () Bool)

(assert start!183042)

(declare-fun b!1839564 () Bool)

(declare-fun e!1175549 () Bool)

(declare-datatypes ((B!1537 0))(
  ( (B!1538 (val!5716 Int)) )
))
(declare-datatypes ((List!20316 0))(
  ( (Nil!20246) (Cons!20246 (h!25647 B!1537) (t!171745 List!20316)) )
))
(declare-fun l!3477 () List!20316)

(declare-fun p!2031 () List!20316)

(declare-fun getSuffix!980 (List!20316 List!20316) List!20316)

(assert (=> b!1839564 (= e!1175549 (not (not (= (getSuffix!980 l!3477 p!2031) Nil!20246))))))

(declare-fun lt!713827 () List!20316)

(declare-fun lt!713826 () Int)

(declare-fun head!4304 (List!20316) B!1537)

(declare-fun apply!5443 (List!20316 Int) B!1537)

(assert (=> b!1839564 (= (head!4304 (getSuffix!980 lt!713827 (t!171745 p!2031))) (apply!5443 lt!713827 lt!713826))))

(declare-datatypes ((Unit!34967 0))(
  ( (Unit!34968) )
))
(declare-fun lt!713828 () Unit!34967)

(declare-fun lemmaGetSuffixHeadApplyNPlusOne!6 (List!20316 List!20316) Unit!34967)

(assert (=> b!1839564 (= lt!713828 (lemmaGetSuffixHeadApplyNPlusOne!6 lt!713827 (t!171745 p!2031)))))

(declare-fun b!1839565 () Bool)

(declare-fun e!1175550 () Bool)

(declare-fun tp_is_empty!8285 () Bool)

(declare-fun tp!520238 () Bool)

(assert (=> b!1839565 (= e!1175550 (and tp_is_empty!8285 tp!520238))))

(declare-fun res!826733 () Bool)

(declare-fun e!1175551 () Bool)

(assert (=> start!183042 (=> (not res!826733) (not e!1175551))))

(declare-fun isPrefix!1855 (List!20316 List!20316) Bool)

(assert (=> start!183042 (= res!826733 (isPrefix!1855 p!2031 l!3477))))

(assert (=> start!183042 e!1175551))

(assert (=> start!183042 e!1175550))

(declare-fun e!1175552 () Bool)

(assert (=> start!183042 e!1175552))

(declare-fun b!1839566 () Bool)

(declare-fun tp!520237 () Bool)

(assert (=> b!1839566 (= e!1175552 (and tp_is_empty!8285 tp!520237))))

(declare-fun b!1839567 () Bool)

(declare-fun e!1175548 () Bool)

(assert (=> b!1839567 (= e!1175551 e!1175548)))

(declare-fun res!826731 () Bool)

(assert (=> b!1839567 (=> (not res!826731) (not e!1175548))))

(assert (=> b!1839567 (= res!826731 (isPrefix!1855 (t!171745 p!2031) lt!713827))))

(declare-fun tail!2768 (List!20316) List!20316)

(assert (=> b!1839567 (= lt!713827 (tail!2768 l!3477))))

(declare-fun b!1839568 () Bool)

(declare-fun res!826730 () Bool)

(assert (=> b!1839568 (=> (not res!826730) (not e!1175551))))

(get-info :version)

(assert (=> b!1839568 (= res!826730 ((_ is Cons!20246) p!2031))))

(declare-fun b!1839569 () Bool)

(assert (=> b!1839569 (= e!1175548 e!1175549)))

(declare-fun res!826734 () Bool)

(assert (=> b!1839569 (=> (not res!826734) (not e!1175549))))

(declare-fun size!16046 (List!20316) Int)

(assert (=> b!1839569 (= res!826734 (<= (+ 1 lt!713826) (size!16046 lt!713827)))))

(assert (=> b!1839569 (= lt!713826 (size!16046 (t!171745 p!2031)))))

(declare-fun b!1839570 () Bool)

(declare-fun res!826732 () Bool)

(assert (=> b!1839570 (=> (not res!826732) (not e!1175551))))

(assert (=> b!1839570 (= res!826732 (<= (+ 1 (size!16046 p!2031)) (size!16046 l!3477)))))

(assert (= (and start!183042 res!826733) b!1839570))

(assert (= (and b!1839570 res!826732) b!1839568))

(assert (= (and b!1839568 res!826730) b!1839567))

(assert (= (and b!1839567 res!826731) b!1839569))

(assert (= (and b!1839569 res!826734) b!1839564))

(assert (= (and start!183042 ((_ is Cons!20246) p!2031)) b!1839565))

(assert (= (and start!183042 ((_ is Cons!20246) l!3477)) b!1839566))

(declare-fun m!2267189 () Bool)

(assert (=> b!1839570 m!2267189))

(declare-fun m!2267191 () Bool)

(assert (=> b!1839570 m!2267191))

(declare-fun m!2267193 () Bool)

(assert (=> start!183042 m!2267193))

(declare-fun m!2267195 () Bool)

(assert (=> b!1839564 m!2267195))

(declare-fun m!2267197 () Bool)

(assert (=> b!1839564 m!2267197))

(declare-fun m!2267199 () Bool)

(assert (=> b!1839564 m!2267199))

(declare-fun m!2267201 () Bool)

(assert (=> b!1839564 m!2267201))

(declare-fun m!2267203 () Bool)

(assert (=> b!1839564 m!2267203))

(assert (=> b!1839564 m!2267197))

(declare-fun m!2267205 () Bool)

(assert (=> b!1839569 m!2267205))

(declare-fun m!2267207 () Bool)

(assert (=> b!1839569 m!2267207))

(declare-fun m!2267209 () Bool)

(assert (=> b!1839567 m!2267209))

(declare-fun m!2267211 () Bool)

(assert (=> b!1839567 m!2267211))

(check-sat (not start!183042) (not b!1839567) (not b!1839564) (not b!1839565) (not b!1839570) (not b!1839569) tp_is_empty!8285 (not b!1839566))
(check-sat)
(get-model)

(declare-fun b!1839591 () Bool)

(declare-fun e!1175569 () Bool)

(declare-fun e!1175570 () Bool)

(assert (=> b!1839591 (= e!1175569 e!1175570)))

(declare-fun res!826755 () Bool)

(assert (=> b!1839591 (=> (not res!826755) (not e!1175570))))

(assert (=> b!1839591 (= res!826755 (not ((_ is Nil!20246) lt!713827)))))

(declare-fun b!1839592 () Bool)

(declare-fun res!826757 () Bool)

(assert (=> b!1839592 (=> (not res!826757) (not e!1175570))))

(assert (=> b!1839592 (= res!826757 (= (head!4304 (t!171745 p!2031)) (head!4304 lt!713827)))))

(declare-fun b!1839594 () Bool)

(declare-fun e!1175568 () Bool)

(assert (=> b!1839594 (= e!1175568 (>= (size!16046 lt!713827) (size!16046 (t!171745 p!2031))))))

(declare-fun b!1839593 () Bool)

(assert (=> b!1839593 (= e!1175570 (isPrefix!1855 (tail!2768 (t!171745 p!2031)) (tail!2768 lt!713827)))))

(declare-fun d!562462 () Bool)

(assert (=> d!562462 e!1175568))

(declare-fun res!826758 () Bool)

(assert (=> d!562462 (=> res!826758 e!1175568)))

(declare-fun lt!713834 () Bool)

(assert (=> d!562462 (= res!826758 (not lt!713834))))

(assert (=> d!562462 (= lt!713834 e!1175569)))

(declare-fun res!826756 () Bool)

(assert (=> d!562462 (=> res!826756 e!1175569)))

(assert (=> d!562462 (= res!826756 ((_ is Nil!20246) (t!171745 p!2031)))))

(assert (=> d!562462 (= (isPrefix!1855 (t!171745 p!2031) lt!713827) lt!713834)))

(assert (= (and d!562462 (not res!826756)) b!1839591))

(assert (= (and b!1839591 res!826755) b!1839592))

(assert (= (and b!1839592 res!826757) b!1839593))

(assert (= (and d!562462 (not res!826758)) b!1839594))

(declare-fun m!2267221 () Bool)

(assert (=> b!1839592 m!2267221))

(declare-fun m!2267223 () Bool)

(assert (=> b!1839592 m!2267223))

(assert (=> b!1839594 m!2267205))

(assert (=> b!1839594 m!2267207))

(declare-fun m!2267225 () Bool)

(assert (=> b!1839593 m!2267225))

(declare-fun m!2267227 () Bool)

(assert (=> b!1839593 m!2267227))

(assert (=> b!1839593 m!2267225))

(assert (=> b!1839593 m!2267227))

(declare-fun m!2267229 () Bool)

(assert (=> b!1839593 m!2267229))

(assert (=> b!1839567 d!562462))

(declare-fun d!562468 () Bool)

(assert (=> d!562468 (= (tail!2768 l!3477) (t!171745 l!3477))))

(assert (=> b!1839567 d!562468))

(declare-fun b!1839595 () Bool)

(declare-fun e!1175572 () Bool)

(declare-fun e!1175573 () Bool)

(assert (=> b!1839595 (= e!1175572 e!1175573)))

(declare-fun res!826759 () Bool)

(assert (=> b!1839595 (=> (not res!826759) (not e!1175573))))

(assert (=> b!1839595 (= res!826759 (not ((_ is Nil!20246) l!3477)))))

(declare-fun b!1839596 () Bool)

(declare-fun res!826761 () Bool)

(assert (=> b!1839596 (=> (not res!826761) (not e!1175573))))

(assert (=> b!1839596 (= res!826761 (= (head!4304 p!2031) (head!4304 l!3477)))))

(declare-fun b!1839598 () Bool)

(declare-fun e!1175571 () Bool)

(assert (=> b!1839598 (= e!1175571 (>= (size!16046 l!3477) (size!16046 p!2031)))))

(declare-fun b!1839597 () Bool)

(assert (=> b!1839597 (= e!1175573 (isPrefix!1855 (tail!2768 p!2031) (tail!2768 l!3477)))))

(declare-fun d!562470 () Bool)

(assert (=> d!562470 e!1175571))

(declare-fun res!826762 () Bool)

(assert (=> d!562470 (=> res!826762 e!1175571)))

(declare-fun lt!713835 () Bool)

(assert (=> d!562470 (= res!826762 (not lt!713835))))

(assert (=> d!562470 (= lt!713835 e!1175572)))

(declare-fun res!826760 () Bool)

(assert (=> d!562470 (=> res!826760 e!1175572)))

(assert (=> d!562470 (= res!826760 ((_ is Nil!20246) p!2031))))

(assert (=> d!562470 (= (isPrefix!1855 p!2031 l!3477) lt!713835)))

(assert (= (and d!562470 (not res!826760)) b!1839595))

(assert (= (and b!1839595 res!826759) b!1839596))

(assert (= (and b!1839596 res!826761) b!1839597))

(assert (= (and d!562470 (not res!826762)) b!1839598))

(declare-fun m!2267231 () Bool)

(assert (=> b!1839596 m!2267231))

(declare-fun m!2267233 () Bool)

(assert (=> b!1839596 m!2267233))

(assert (=> b!1839598 m!2267191))

(assert (=> b!1839598 m!2267189))

(declare-fun m!2267235 () Bool)

(assert (=> b!1839597 m!2267235))

(assert (=> b!1839597 m!2267211))

(assert (=> b!1839597 m!2267235))

(assert (=> b!1839597 m!2267211))

(declare-fun m!2267237 () Bool)

(assert (=> b!1839597 m!2267237))

(assert (=> start!183042 d!562470))

(declare-fun d!562472 () Bool)

(declare-fun lt!713843 () Int)

(assert (=> d!562472 (>= lt!713843 0)))

(declare-fun e!1175583 () Int)

(assert (=> d!562472 (= lt!713843 e!1175583)))

(declare-fun c!300240 () Bool)

(assert (=> d!562472 (= c!300240 ((_ is Nil!20246) p!2031))))

(assert (=> d!562472 (= (size!16046 p!2031) lt!713843)))

(declare-fun b!1839615 () Bool)

(assert (=> b!1839615 (= e!1175583 0)))

(declare-fun b!1839616 () Bool)

(assert (=> b!1839616 (= e!1175583 (+ 1 (size!16046 (t!171745 p!2031))))))

(assert (= (and d!562472 c!300240) b!1839615))

(assert (= (and d!562472 (not c!300240)) b!1839616))

(assert (=> b!1839616 m!2267207))

(assert (=> b!1839570 d!562472))

(declare-fun d!562482 () Bool)

(declare-fun lt!713845 () Int)

(assert (=> d!562482 (>= lt!713845 0)))

(declare-fun e!1175585 () Int)

(assert (=> d!562482 (= lt!713845 e!1175585)))

(declare-fun c!300242 () Bool)

(assert (=> d!562482 (= c!300242 ((_ is Nil!20246) l!3477))))

(assert (=> d!562482 (= (size!16046 l!3477) lt!713845)))

(declare-fun b!1839619 () Bool)

(assert (=> b!1839619 (= e!1175585 0)))

(declare-fun b!1839620 () Bool)

(assert (=> b!1839620 (= e!1175585 (+ 1 (size!16046 (t!171745 l!3477))))))

(assert (= (and d!562482 c!300242) b!1839619))

(assert (= (and d!562482 (not c!300242)) b!1839620))

(declare-fun m!2267251 () Bool)

(assert (=> b!1839620 m!2267251))

(assert (=> b!1839570 d!562482))

(declare-fun d!562484 () Bool)

(declare-fun lt!713851 () List!20316)

(declare-fun ++!5498 (List!20316 List!20316) List!20316)

(assert (=> d!562484 (= (++!5498 p!2031 lt!713851) l!3477)))

(declare-fun e!1175591 () List!20316)

(assert (=> d!562484 (= lt!713851 e!1175591)))

(declare-fun c!300248 () Bool)

(assert (=> d!562484 (= c!300248 ((_ is Cons!20246) p!2031))))

(assert (=> d!562484 (>= (size!16046 l!3477) (size!16046 p!2031))))

(assert (=> d!562484 (= (getSuffix!980 l!3477 p!2031) lt!713851)))

(declare-fun b!1839631 () Bool)

(assert (=> b!1839631 (= e!1175591 (getSuffix!980 (tail!2768 l!3477) (t!171745 p!2031)))))

(declare-fun b!1839632 () Bool)

(assert (=> b!1839632 (= e!1175591 l!3477)))

(assert (= (and d!562484 c!300248) b!1839631))

(assert (= (and d!562484 (not c!300248)) b!1839632))

(declare-fun m!2267257 () Bool)

(assert (=> d!562484 m!2267257))

(assert (=> d!562484 m!2267191))

(assert (=> d!562484 m!2267189))

(assert (=> b!1839631 m!2267211))

(assert (=> b!1839631 m!2267211))

(declare-fun m!2267259 () Bool)

(assert (=> b!1839631 m!2267259))

(assert (=> b!1839564 d!562484))

(declare-fun d!562490 () Bool)

(assert (=> d!562490 (= (head!4304 (getSuffix!980 lt!713827 (t!171745 p!2031))) (apply!5443 lt!713827 (size!16046 (t!171745 p!2031))))))

(declare-fun lt!713856 () Unit!34967)

(declare-fun choose!11572 (List!20316 List!20316) Unit!34967)

(assert (=> d!562490 (= lt!713856 (choose!11572 lt!713827 (t!171745 p!2031)))))

(assert (=> d!562490 (isPrefix!1855 (t!171745 p!2031) lt!713827)))

(assert (=> d!562490 (= (lemmaGetSuffixHeadApplyNPlusOne!6 lt!713827 (t!171745 p!2031)) lt!713856)))

(declare-fun bs!408552 () Bool)

(assert (= bs!408552 d!562490))

(assert (=> bs!408552 m!2267209))

(assert (=> bs!408552 m!2267207))

(declare-fun m!2267269 () Bool)

(assert (=> bs!408552 m!2267269))

(assert (=> bs!408552 m!2267197))

(assert (=> bs!408552 m!2267199))

(declare-fun m!2267271 () Bool)

(assert (=> bs!408552 m!2267271))

(assert (=> bs!408552 m!2267197))

(assert (=> bs!408552 m!2267207))

(assert (=> b!1839564 d!562490))

(declare-fun d!562498 () Bool)

(assert (=> d!562498 (= (head!4304 (getSuffix!980 lt!713827 (t!171745 p!2031))) (h!25647 (getSuffix!980 lt!713827 (t!171745 p!2031))))))

(assert (=> b!1839564 d!562498))

(declare-fun d!562500 () Bool)

(declare-fun lt!713864 () B!1537)

(declare-fun contains!3734 (List!20316 B!1537) Bool)

(assert (=> d!562500 (contains!3734 lt!713827 lt!713864)))

(declare-fun e!1175604 () B!1537)

(assert (=> d!562500 (= lt!713864 e!1175604)))

(declare-fun c!300256 () Bool)

(assert (=> d!562500 (= c!300256 (= lt!713826 0))))

(declare-fun e!1175605 () Bool)

(assert (=> d!562500 e!1175605))

(declare-fun res!826772 () Bool)

(assert (=> d!562500 (=> (not res!826772) (not e!1175605))))

(assert (=> d!562500 (= res!826772 (<= 0 lt!713826))))

(assert (=> d!562500 (= (apply!5443 lt!713827 lt!713826) lt!713864)))

(declare-fun b!1839652 () Bool)

(assert (=> b!1839652 (= e!1175605 (< lt!713826 (size!16046 lt!713827)))))

(declare-fun b!1839653 () Bool)

(assert (=> b!1839653 (= e!1175604 (head!4304 lt!713827))))

(declare-fun b!1839654 () Bool)

(assert (=> b!1839654 (= e!1175604 (apply!5443 (tail!2768 lt!713827) (- lt!713826 1)))))

(assert (= (and d!562500 res!826772) b!1839652))

(assert (= (and d!562500 c!300256) b!1839653))

(assert (= (and d!562500 (not c!300256)) b!1839654))

(declare-fun m!2267277 () Bool)

(assert (=> d!562500 m!2267277))

(assert (=> b!1839652 m!2267205))

(assert (=> b!1839653 m!2267223))

(assert (=> b!1839654 m!2267227))

(assert (=> b!1839654 m!2267227))

(declare-fun m!2267279 () Bool)

(assert (=> b!1839654 m!2267279))

(assert (=> b!1839564 d!562500))

(declare-fun d!562504 () Bool)

(declare-fun lt!713865 () List!20316)

(assert (=> d!562504 (= (++!5498 (t!171745 p!2031) lt!713865) lt!713827)))

(declare-fun e!1175606 () List!20316)

(assert (=> d!562504 (= lt!713865 e!1175606)))

(declare-fun c!300257 () Bool)

(assert (=> d!562504 (= c!300257 ((_ is Cons!20246) (t!171745 p!2031)))))

(assert (=> d!562504 (>= (size!16046 lt!713827) (size!16046 (t!171745 p!2031)))))

(assert (=> d!562504 (= (getSuffix!980 lt!713827 (t!171745 p!2031)) lt!713865)))

(declare-fun b!1839655 () Bool)

(assert (=> b!1839655 (= e!1175606 (getSuffix!980 (tail!2768 lt!713827) (t!171745 (t!171745 p!2031))))))

(declare-fun b!1839656 () Bool)

(assert (=> b!1839656 (= e!1175606 lt!713827)))

(assert (= (and d!562504 c!300257) b!1839655))

(assert (= (and d!562504 (not c!300257)) b!1839656))

(declare-fun m!2267281 () Bool)

(assert (=> d!562504 m!2267281))

(assert (=> d!562504 m!2267205))

(assert (=> d!562504 m!2267207))

(assert (=> b!1839655 m!2267227))

(assert (=> b!1839655 m!2267227))

(declare-fun m!2267283 () Bool)

(assert (=> b!1839655 m!2267283))

(assert (=> b!1839564 d!562504))

(declare-fun d!562506 () Bool)

(declare-fun lt!713867 () Int)

(assert (=> d!562506 (>= lt!713867 0)))

(declare-fun e!1175607 () Int)

(assert (=> d!562506 (= lt!713867 e!1175607)))

(declare-fun c!300258 () Bool)

(assert (=> d!562506 (= c!300258 ((_ is Nil!20246) lt!713827))))

(assert (=> d!562506 (= (size!16046 lt!713827) lt!713867)))

(declare-fun b!1839657 () Bool)

(assert (=> b!1839657 (= e!1175607 0)))

(declare-fun b!1839658 () Bool)

(assert (=> b!1839658 (= e!1175607 (+ 1 (size!16046 (t!171745 lt!713827))))))

(assert (= (and d!562506 c!300258) b!1839657))

(assert (= (and d!562506 (not c!300258)) b!1839658))

(declare-fun m!2267289 () Bool)

(assert (=> b!1839658 m!2267289))

(assert (=> b!1839569 d!562506))

(declare-fun d!562508 () Bool)

(declare-fun lt!713868 () Int)

(assert (=> d!562508 (>= lt!713868 0)))

(declare-fun e!1175610 () Int)

(assert (=> d!562508 (= lt!713868 e!1175610)))

(declare-fun c!300259 () Bool)

(assert (=> d!562508 (= c!300259 ((_ is Nil!20246) (t!171745 p!2031)))))

(assert (=> d!562508 (= (size!16046 (t!171745 p!2031)) lt!713868)))

(declare-fun b!1839663 () Bool)

(assert (=> b!1839663 (= e!1175610 0)))

(declare-fun b!1839664 () Bool)

(assert (=> b!1839664 (= e!1175610 (+ 1 (size!16046 (t!171745 (t!171745 p!2031)))))))

(assert (= (and d!562508 c!300259) b!1839663))

(assert (= (and d!562508 (not c!300259)) b!1839664))

(declare-fun m!2267291 () Bool)

(assert (=> b!1839664 m!2267291))

(assert (=> b!1839569 d!562508))

(declare-fun b!1839671 () Bool)

(declare-fun e!1175615 () Bool)

(declare-fun tp!520245 () Bool)

(assert (=> b!1839671 (= e!1175615 (and tp_is_empty!8285 tp!520245))))

(assert (=> b!1839566 (= tp!520237 e!1175615)))

(assert (= (and b!1839566 ((_ is Cons!20246) (t!171745 l!3477))) b!1839671))

(declare-fun b!1839672 () Bool)

(declare-fun e!1175616 () Bool)

(declare-fun tp!520246 () Bool)

(assert (=> b!1839672 (= e!1175616 (and tp_is_empty!8285 tp!520246))))

(assert (=> b!1839565 (= tp!520238 e!1175616)))

(assert (= (and b!1839565 ((_ is Cons!20246) (t!171745 p!2031))) b!1839672))

(check-sat (not b!1839652) (not b!1839654) (not b!1839631) (not b!1839616) tp_is_empty!8285 (not d!562490) (not b!1839620) (not b!1839592) (not b!1839594) (not b!1839664) (not d!562484) (not b!1839598) (not d!562504) (not b!1839672) (not b!1839597) (not b!1839653) (not d!562500) (not b!1839671) (not b!1839596) (not b!1839658) (not b!1839593) (not b!1839655))
(check-sat)
(get-model)

(declare-fun d!562510 () Bool)

(assert (=> d!562510 (= (head!4304 p!2031) (h!25647 p!2031))))

(assert (=> b!1839596 d!562510))

(declare-fun d!562512 () Bool)

(assert (=> d!562512 (= (head!4304 l!3477) (h!25647 l!3477))))

(assert (=> b!1839596 d!562512))

(declare-fun b!1839681 () Bool)

(declare-fun e!1175621 () List!20316)

(assert (=> b!1839681 (= e!1175621 lt!713851)))

(declare-fun b!1839682 () Bool)

(assert (=> b!1839682 (= e!1175621 (Cons!20246 (h!25647 p!2031) (++!5498 (t!171745 p!2031) lt!713851)))))

(declare-fun e!1175622 () Bool)

(declare-fun lt!713871 () List!20316)

(declare-fun b!1839684 () Bool)

(assert (=> b!1839684 (= e!1175622 (or (not (= lt!713851 Nil!20246)) (= lt!713871 p!2031)))))

(declare-fun d!562514 () Bool)

(assert (=> d!562514 e!1175622))

(declare-fun res!826778 () Bool)

(assert (=> d!562514 (=> (not res!826778) (not e!1175622))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3016 (List!20316) (InoxSet B!1537))

(assert (=> d!562514 (= res!826778 (= (content!3016 lt!713871) ((_ map or) (content!3016 p!2031) (content!3016 lt!713851))))))

(assert (=> d!562514 (= lt!713871 e!1175621)))

(declare-fun c!300262 () Bool)

(assert (=> d!562514 (= c!300262 ((_ is Nil!20246) p!2031))))

(assert (=> d!562514 (= (++!5498 p!2031 lt!713851) lt!713871)))

(declare-fun b!1839683 () Bool)

(declare-fun res!826777 () Bool)

(assert (=> b!1839683 (=> (not res!826777) (not e!1175622))))

(assert (=> b!1839683 (= res!826777 (= (size!16046 lt!713871) (+ (size!16046 p!2031) (size!16046 lt!713851))))))

(assert (= (and d!562514 c!300262) b!1839681))

(assert (= (and d!562514 (not c!300262)) b!1839682))

(assert (= (and d!562514 res!826778) b!1839683))

(assert (= (and b!1839683 res!826777) b!1839684))

(declare-fun m!2267293 () Bool)

(assert (=> b!1839682 m!2267293))

(declare-fun m!2267295 () Bool)

(assert (=> d!562514 m!2267295))

(declare-fun m!2267297 () Bool)

(assert (=> d!562514 m!2267297))

(declare-fun m!2267299 () Bool)

(assert (=> d!562514 m!2267299))

(declare-fun m!2267301 () Bool)

(assert (=> b!1839683 m!2267301))

(assert (=> b!1839683 m!2267189))

(declare-fun m!2267303 () Bool)

(assert (=> b!1839683 m!2267303))

(assert (=> d!562484 d!562514))

(assert (=> d!562484 d!562482))

(assert (=> d!562484 d!562472))

(declare-fun d!562516 () Bool)

(declare-fun lt!713872 () List!20316)

(assert (=> d!562516 (= (++!5498 (t!171745 p!2031) lt!713872) (tail!2768 l!3477))))

(declare-fun e!1175623 () List!20316)

(assert (=> d!562516 (= lt!713872 e!1175623)))

(declare-fun c!300263 () Bool)

(assert (=> d!562516 (= c!300263 ((_ is Cons!20246) (t!171745 p!2031)))))

(assert (=> d!562516 (>= (size!16046 (tail!2768 l!3477)) (size!16046 (t!171745 p!2031)))))

(assert (=> d!562516 (= (getSuffix!980 (tail!2768 l!3477) (t!171745 p!2031)) lt!713872)))

(declare-fun b!1839685 () Bool)

(assert (=> b!1839685 (= e!1175623 (getSuffix!980 (tail!2768 (tail!2768 l!3477)) (t!171745 (t!171745 p!2031))))))

(declare-fun b!1839686 () Bool)

(assert (=> b!1839686 (= e!1175623 (tail!2768 l!3477))))

(assert (= (and d!562516 c!300263) b!1839685))

(assert (= (and d!562516 (not c!300263)) b!1839686))

(declare-fun m!2267305 () Bool)

(assert (=> d!562516 m!2267305))

(assert (=> d!562516 m!2267211))

(declare-fun m!2267307 () Bool)

(assert (=> d!562516 m!2267307))

(assert (=> d!562516 m!2267207))

(assert (=> b!1839685 m!2267211))

(declare-fun m!2267309 () Bool)

(assert (=> b!1839685 m!2267309))

(assert (=> b!1839685 m!2267309))

(declare-fun m!2267311 () Bool)

(assert (=> b!1839685 m!2267311))

(assert (=> b!1839631 d!562516))

(assert (=> b!1839631 d!562468))

(declare-fun d!562518 () Bool)

(declare-fun lt!713875 () Bool)

(assert (=> d!562518 (= lt!713875 (select (content!3016 lt!713827) lt!713864))))

(declare-fun e!1175629 () Bool)

(assert (=> d!562518 (= lt!713875 e!1175629)))

(declare-fun res!826783 () Bool)

(assert (=> d!562518 (=> (not res!826783) (not e!1175629))))

(assert (=> d!562518 (= res!826783 ((_ is Cons!20246) lt!713827))))

(assert (=> d!562518 (= (contains!3734 lt!713827 lt!713864) lt!713875)))

(declare-fun b!1839691 () Bool)

(declare-fun e!1175628 () Bool)

(assert (=> b!1839691 (= e!1175629 e!1175628)))

(declare-fun res!826784 () Bool)

(assert (=> b!1839691 (=> res!826784 e!1175628)))

(assert (=> b!1839691 (= res!826784 (= (h!25647 lt!713827) lt!713864))))

(declare-fun b!1839692 () Bool)

(assert (=> b!1839692 (= e!1175628 (contains!3734 (t!171745 lt!713827) lt!713864))))

(assert (= (and d!562518 res!826783) b!1839691))

(assert (= (and b!1839691 (not res!826784)) b!1839692))

(declare-fun m!2267313 () Bool)

(assert (=> d!562518 m!2267313))

(declare-fun m!2267315 () Bool)

(assert (=> d!562518 m!2267315))

(declare-fun m!2267317 () Bool)

(assert (=> b!1839692 m!2267317))

(assert (=> d!562500 d!562518))

(declare-fun d!562520 () Bool)

(declare-fun lt!713876 () Int)

(assert (=> d!562520 (>= lt!713876 0)))

(declare-fun e!1175630 () Int)

(assert (=> d!562520 (= lt!713876 e!1175630)))

(declare-fun c!300264 () Bool)

(assert (=> d!562520 (= c!300264 ((_ is Nil!20246) (t!171745 (t!171745 p!2031))))))

(assert (=> d!562520 (= (size!16046 (t!171745 (t!171745 p!2031))) lt!713876)))

(declare-fun b!1839693 () Bool)

(assert (=> b!1839693 (= e!1175630 0)))

(declare-fun b!1839694 () Bool)

(assert (=> b!1839694 (= e!1175630 (+ 1 (size!16046 (t!171745 (t!171745 (t!171745 p!2031))))))))

(assert (= (and d!562520 c!300264) b!1839693))

(assert (= (and d!562520 (not c!300264)) b!1839694))

(declare-fun m!2267319 () Bool)

(assert (=> b!1839694 m!2267319))

(assert (=> b!1839664 d!562520))

(declare-fun b!1839695 () Bool)

(declare-fun e!1175631 () List!20316)

(assert (=> b!1839695 (= e!1175631 lt!713865)))

(declare-fun b!1839696 () Bool)

(assert (=> b!1839696 (= e!1175631 (Cons!20246 (h!25647 (t!171745 p!2031)) (++!5498 (t!171745 (t!171745 p!2031)) lt!713865)))))

(declare-fun b!1839698 () Bool)

(declare-fun e!1175632 () Bool)

(declare-fun lt!713877 () List!20316)

(assert (=> b!1839698 (= e!1175632 (or (not (= lt!713865 Nil!20246)) (= lt!713877 (t!171745 p!2031))))))

(declare-fun d!562522 () Bool)

(assert (=> d!562522 e!1175632))

(declare-fun res!826786 () Bool)

(assert (=> d!562522 (=> (not res!826786) (not e!1175632))))

(assert (=> d!562522 (= res!826786 (= (content!3016 lt!713877) ((_ map or) (content!3016 (t!171745 p!2031)) (content!3016 lt!713865))))))

(assert (=> d!562522 (= lt!713877 e!1175631)))

(declare-fun c!300265 () Bool)

(assert (=> d!562522 (= c!300265 ((_ is Nil!20246) (t!171745 p!2031)))))

(assert (=> d!562522 (= (++!5498 (t!171745 p!2031) lt!713865) lt!713877)))

(declare-fun b!1839697 () Bool)

(declare-fun res!826785 () Bool)

(assert (=> b!1839697 (=> (not res!826785) (not e!1175632))))

(assert (=> b!1839697 (= res!826785 (= (size!16046 lt!713877) (+ (size!16046 (t!171745 p!2031)) (size!16046 lt!713865))))))

(assert (= (and d!562522 c!300265) b!1839695))

(assert (= (and d!562522 (not c!300265)) b!1839696))

(assert (= (and d!562522 res!826786) b!1839697))

(assert (= (and b!1839697 res!826785) b!1839698))

(declare-fun m!2267321 () Bool)

(assert (=> b!1839696 m!2267321))

(declare-fun m!2267323 () Bool)

(assert (=> d!562522 m!2267323))

(declare-fun m!2267325 () Bool)

(assert (=> d!562522 m!2267325))

(declare-fun m!2267327 () Bool)

(assert (=> d!562522 m!2267327))

(declare-fun m!2267329 () Bool)

(assert (=> b!1839697 m!2267329))

(assert (=> b!1839697 m!2267207))

(declare-fun m!2267331 () Bool)

(assert (=> b!1839697 m!2267331))

(assert (=> d!562504 d!562522))

(assert (=> d!562504 d!562506))

(assert (=> d!562504 d!562508))

(declare-fun d!562524 () Bool)

(assert (=> d!562524 (= (head!4304 lt!713827) (h!25647 lt!713827))))

(assert (=> b!1839653 d!562524))

(declare-fun d!562526 () Bool)

(declare-fun lt!713878 () B!1537)

(assert (=> d!562526 (contains!3734 lt!713827 lt!713878)))

(declare-fun e!1175633 () B!1537)

(assert (=> d!562526 (= lt!713878 e!1175633)))

(declare-fun c!300266 () Bool)

(assert (=> d!562526 (= c!300266 (= (size!16046 (t!171745 p!2031)) 0))))

(declare-fun e!1175634 () Bool)

(assert (=> d!562526 e!1175634))

(declare-fun res!826787 () Bool)

(assert (=> d!562526 (=> (not res!826787) (not e!1175634))))

(assert (=> d!562526 (= res!826787 (<= 0 (size!16046 (t!171745 p!2031))))))

(assert (=> d!562526 (= (apply!5443 lt!713827 (size!16046 (t!171745 p!2031))) lt!713878)))

(declare-fun b!1839699 () Bool)

(assert (=> b!1839699 (= e!1175634 (< (size!16046 (t!171745 p!2031)) (size!16046 lt!713827)))))

(declare-fun b!1839700 () Bool)

(assert (=> b!1839700 (= e!1175633 (head!4304 lt!713827))))

(declare-fun b!1839701 () Bool)

(assert (=> b!1839701 (= e!1175633 (apply!5443 (tail!2768 lt!713827) (- (size!16046 (t!171745 p!2031)) 1)))))

(assert (= (and d!562526 res!826787) b!1839699))

(assert (= (and d!562526 c!300266) b!1839700))

(assert (= (and d!562526 (not c!300266)) b!1839701))

(declare-fun m!2267333 () Bool)

(assert (=> d!562526 m!2267333))

(assert (=> b!1839699 m!2267205))

(assert (=> b!1839700 m!2267223))

(assert (=> b!1839701 m!2267227))

(assert (=> b!1839701 m!2267227))

(declare-fun m!2267335 () Bool)

(assert (=> b!1839701 m!2267335))

(assert (=> d!562490 d!562526))

(assert (=> d!562490 d!562508))

(assert (=> d!562490 d!562498))

(assert (=> d!562490 d!562462))

(assert (=> d!562490 d!562504))

(declare-fun d!562528 () Bool)

(assert (=> d!562528 (= (head!4304 (getSuffix!980 lt!713827 (t!171745 p!2031))) (apply!5443 lt!713827 (size!16046 (t!171745 p!2031))))))

(assert (=> d!562528 true))

(declare-fun _$67!36 () Unit!34967)

(assert (=> d!562528 (= (choose!11572 lt!713827 (t!171745 p!2031)) _$67!36)))

(declare-fun bs!408554 () Bool)

(assert (= bs!408554 d!562528))

(assert (=> bs!408554 m!2267197))

(assert (=> bs!408554 m!2267197))

(assert (=> bs!408554 m!2267199))

(assert (=> bs!408554 m!2267207))

(assert (=> bs!408554 m!2267207))

(assert (=> bs!408554 m!2267269))

(assert (=> d!562490 d!562528))

(assert (=> b!1839598 d!562482))

(assert (=> b!1839598 d!562472))

(declare-fun d!562530 () Bool)

(declare-fun lt!713879 () List!20316)

(assert (=> d!562530 (= (++!5498 (t!171745 (t!171745 p!2031)) lt!713879) (tail!2768 lt!713827))))

(declare-fun e!1175635 () List!20316)

(assert (=> d!562530 (= lt!713879 e!1175635)))

(declare-fun c!300267 () Bool)

(assert (=> d!562530 (= c!300267 ((_ is Cons!20246) (t!171745 (t!171745 p!2031))))))

(assert (=> d!562530 (>= (size!16046 (tail!2768 lt!713827)) (size!16046 (t!171745 (t!171745 p!2031))))))

(assert (=> d!562530 (= (getSuffix!980 (tail!2768 lt!713827) (t!171745 (t!171745 p!2031))) lt!713879)))

(declare-fun b!1839702 () Bool)

(assert (=> b!1839702 (= e!1175635 (getSuffix!980 (tail!2768 (tail!2768 lt!713827)) (t!171745 (t!171745 (t!171745 p!2031)))))))

(declare-fun b!1839703 () Bool)

(assert (=> b!1839703 (= e!1175635 (tail!2768 lt!713827))))

(assert (= (and d!562530 c!300267) b!1839702))

(assert (= (and d!562530 (not c!300267)) b!1839703))

(declare-fun m!2267337 () Bool)

(assert (=> d!562530 m!2267337))

(assert (=> d!562530 m!2267227))

(declare-fun m!2267339 () Bool)

(assert (=> d!562530 m!2267339))

(assert (=> d!562530 m!2267291))

(assert (=> b!1839702 m!2267227))

(declare-fun m!2267341 () Bool)

(assert (=> b!1839702 m!2267341))

(assert (=> b!1839702 m!2267341))

(declare-fun m!2267343 () Bool)

(assert (=> b!1839702 m!2267343))

(assert (=> b!1839655 d!562530))

(declare-fun d!562532 () Bool)

(assert (=> d!562532 (= (tail!2768 lt!713827) (t!171745 lt!713827))))

(assert (=> b!1839655 d!562532))

(assert (=> b!1839616 d!562508))

(declare-fun b!1839704 () Bool)

(declare-fun e!1175637 () Bool)

(declare-fun e!1175638 () Bool)

(assert (=> b!1839704 (= e!1175637 e!1175638)))

(declare-fun res!826788 () Bool)

(assert (=> b!1839704 (=> (not res!826788) (not e!1175638))))

(assert (=> b!1839704 (= res!826788 (not ((_ is Nil!20246) (tail!2768 l!3477))))))

(declare-fun b!1839705 () Bool)

(declare-fun res!826790 () Bool)

(assert (=> b!1839705 (=> (not res!826790) (not e!1175638))))

(assert (=> b!1839705 (= res!826790 (= (head!4304 (tail!2768 p!2031)) (head!4304 (tail!2768 l!3477))))))

(declare-fun b!1839707 () Bool)

(declare-fun e!1175636 () Bool)

(assert (=> b!1839707 (= e!1175636 (>= (size!16046 (tail!2768 l!3477)) (size!16046 (tail!2768 p!2031))))))

(declare-fun b!1839706 () Bool)

(assert (=> b!1839706 (= e!1175638 (isPrefix!1855 (tail!2768 (tail!2768 p!2031)) (tail!2768 (tail!2768 l!3477))))))

(declare-fun d!562534 () Bool)

(assert (=> d!562534 e!1175636))

(declare-fun res!826791 () Bool)

(assert (=> d!562534 (=> res!826791 e!1175636)))

(declare-fun lt!713880 () Bool)

(assert (=> d!562534 (= res!826791 (not lt!713880))))

(assert (=> d!562534 (= lt!713880 e!1175637)))

(declare-fun res!826789 () Bool)

(assert (=> d!562534 (=> res!826789 e!1175637)))

(assert (=> d!562534 (= res!826789 ((_ is Nil!20246) (tail!2768 p!2031)))))

(assert (=> d!562534 (= (isPrefix!1855 (tail!2768 p!2031) (tail!2768 l!3477)) lt!713880)))

(assert (= (and d!562534 (not res!826789)) b!1839704))

(assert (= (and b!1839704 res!826788) b!1839705))

(assert (= (and b!1839705 res!826790) b!1839706))

(assert (= (and d!562534 (not res!826791)) b!1839707))

(assert (=> b!1839705 m!2267235))

(declare-fun m!2267345 () Bool)

(assert (=> b!1839705 m!2267345))

(assert (=> b!1839705 m!2267211))

(declare-fun m!2267347 () Bool)

(assert (=> b!1839705 m!2267347))

(assert (=> b!1839707 m!2267211))

(assert (=> b!1839707 m!2267307))

(assert (=> b!1839707 m!2267235))

(declare-fun m!2267349 () Bool)

(assert (=> b!1839707 m!2267349))

(assert (=> b!1839706 m!2267235))

(declare-fun m!2267351 () Bool)

(assert (=> b!1839706 m!2267351))

(assert (=> b!1839706 m!2267211))

(assert (=> b!1839706 m!2267309))

(assert (=> b!1839706 m!2267351))

(assert (=> b!1839706 m!2267309))

(declare-fun m!2267353 () Bool)

(assert (=> b!1839706 m!2267353))

(assert (=> b!1839597 d!562534))

(declare-fun d!562536 () Bool)

(assert (=> d!562536 (= (tail!2768 p!2031) (t!171745 p!2031))))

(assert (=> b!1839597 d!562536))

(assert (=> b!1839597 d!562468))

(assert (=> b!1839652 d!562506))

(assert (=> b!1839594 d!562506))

(assert (=> b!1839594 d!562508))

(declare-fun b!1839708 () Bool)

(declare-fun e!1175640 () Bool)

(declare-fun e!1175641 () Bool)

(assert (=> b!1839708 (= e!1175640 e!1175641)))

(declare-fun res!826792 () Bool)

(assert (=> b!1839708 (=> (not res!826792) (not e!1175641))))

(assert (=> b!1839708 (= res!826792 (not ((_ is Nil!20246) (tail!2768 lt!713827))))))

(declare-fun b!1839709 () Bool)

(declare-fun res!826794 () Bool)

(assert (=> b!1839709 (=> (not res!826794) (not e!1175641))))

(assert (=> b!1839709 (= res!826794 (= (head!4304 (tail!2768 (t!171745 p!2031))) (head!4304 (tail!2768 lt!713827))))))

(declare-fun b!1839711 () Bool)

(declare-fun e!1175639 () Bool)

(assert (=> b!1839711 (= e!1175639 (>= (size!16046 (tail!2768 lt!713827)) (size!16046 (tail!2768 (t!171745 p!2031)))))))

(declare-fun b!1839710 () Bool)

(assert (=> b!1839710 (= e!1175641 (isPrefix!1855 (tail!2768 (tail!2768 (t!171745 p!2031))) (tail!2768 (tail!2768 lt!713827))))))

(declare-fun d!562538 () Bool)

(assert (=> d!562538 e!1175639))

(declare-fun res!826795 () Bool)

(assert (=> d!562538 (=> res!826795 e!1175639)))

(declare-fun lt!713881 () Bool)

(assert (=> d!562538 (= res!826795 (not lt!713881))))

(assert (=> d!562538 (= lt!713881 e!1175640)))

(declare-fun res!826793 () Bool)

(assert (=> d!562538 (=> res!826793 e!1175640)))

(assert (=> d!562538 (= res!826793 ((_ is Nil!20246) (tail!2768 (t!171745 p!2031))))))

(assert (=> d!562538 (= (isPrefix!1855 (tail!2768 (t!171745 p!2031)) (tail!2768 lt!713827)) lt!713881)))

(assert (= (and d!562538 (not res!826793)) b!1839708))

(assert (= (and b!1839708 res!826792) b!1839709))

(assert (= (and b!1839709 res!826794) b!1839710))

(assert (= (and d!562538 (not res!826795)) b!1839711))

(assert (=> b!1839709 m!2267225))

(declare-fun m!2267355 () Bool)

(assert (=> b!1839709 m!2267355))

(assert (=> b!1839709 m!2267227))

(declare-fun m!2267357 () Bool)

(assert (=> b!1839709 m!2267357))

(assert (=> b!1839711 m!2267227))

(assert (=> b!1839711 m!2267339))

(assert (=> b!1839711 m!2267225))

(declare-fun m!2267359 () Bool)

(assert (=> b!1839711 m!2267359))

(assert (=> b!1839710 m!2267225))

(declare-fun m!2267361 () Bool)

(assert (=> b!1839710 m!2267361))

(assert (=> b!1839710 m!2267227))

(assert (=> b!1839710 m!2267341))

(assert (=> b!1839710 m!2267361))

(assert (=> b!1839710 m!2267341))

(declare-fun m!2267363 () Bool)

(assert (=> b!1839710 m!2267363))

(assert (=> b!1839593 d!562538))

(declare-fun d!562540 () Bool)

(assert (=> d!562540 (= (tail!2768 (t!171745 p!2031)) (t!171745 (t!171745 p!2031)))))

(assert (=> b!1839593 d!562540))

(assert (=> b!1839593 d!562532))

(declare-fun d!562542 () Bool)

(declare-fun lt!713882 () Int)

(assert (=> d!562542 (>= lt!713882 0)))

(declare-fun e!1175642 () Int)

(assert (=> d!562542 (= lt!713882 e!1175642)))

(declare-fun c!300268 () Bool)

(assert (=> d!562542 (= c!300268 ((_ is Nil!20246) (t!171745 l!3477)))))

(assert (=> d!562542 (= (size!16046 (t!171745 l!3477)) lt!713882)))

(declare-fun b!1839712 () Bool)

(assert (=> b!1839712 (= e!1175642 0)))

(declare-fun b!1839713 () Bool)

(assert (=> b!1839713 (= e!1175642 (+ 1 (size!16046 (t!171745 (t!171745 l!3477)))))))

(assert (= (and d!562542 c!300268) b!1839712))

(assert (= (and d!562542 (not c!300268)) b!1839713))

(declare-fun m!2267365 () Bool)

(assert (=> b!1839713 m!2267365))

(assert (=> b!1839620 d!562542))

(declare-fun d!562544 () Bool)

(declare-fun lt!713883 () B!1537)

(assert (=> d!562544 (contains!3734 (tail!2768 lt!713827) lt!713883)))

(declare-fun e!1175643 () B!1537)

(assert (=> d!562544 (= lt!713883 e!1175643)))

(declare-fun c!300269 () Bool)

(assert (=> d!562544 (= c!300269 (= (- lt!713826 1) 0))))

(declare-fun e!1175644 () Bool)

(assert (=> d!562544 e!1175644))

(declare-fun res!826796 () Bool)

(assert (=> d!562544 (=> (not res!826796) (not e!1175644))))

(assert (=> d!562544 (= res!826796 (<= 0 (- lt!713826 1)))))

(assert (=> d!562544 (= (apply!5443 (tail!2768 lt!713827) (- lt!713826 1)) lt!713883)))

(declare-fun b!1839714 () Bool)

(assert (=> b!1839714 (= e!1175644 (< (- lt!713826 1) (size!16046 (tail!2768 lt!713827))))))

(declare-fun b!1839715 () Bool)

(assert (=> b!1839715 (= e!1175643 (head!4304 (tail!2768 lt!713827)))))

(declare-fun b!1839716 () Bool)

(assert (=> b!1839716 (= e!1175643 (apply!5443 (tail!2768 (tail!2768 lt!713827)) (- (- lt!713826 1) 1)))))

(assert (= (and d!562544 res!826796) b!1839714))

(assert (= (and d!562544 c!300269) b!1839715))

(assert (= (and d!562544 (not c!300269)) b!1839716))

(assert (=> d!562544 m!2267227))

(declare-fun m!2267367 () Bool)

(assert (=> d!562544 m!2267367))

(assert (=> b!1839714 m!2267227))

(assert (=> b!1839714 m!2267339))

(assert (=> b!1839715 m!2267227))

(assert (=> b!1839715 m!2267357))

(assert (=> b!1839716 m!2267227))

(assert (=> b!1839716 m!2267341))

(assert (=> b!1839716 m!2267341))

(declare-fun m!2267369 () Bool)

(assert (=> b!1839716 m!2267369))

(assert (=> b!1839654 d!562544))

(assert (=> b!1839654 d!562532))

(declare-fun d!562546 () Bool)

(assert (=> d!562546 (= (head!4304 (t!171745 p!2031)) (h!25647 (t!171745 p!2031)))))

(assert (=> b!1839592 d!562546))

(assert (=> b!1839592 d!562524))

(declare-fun d!562548 () Bool)

(declare-fun lt!713884 () Int)

(assert (=> d!562548 (>= lt!713884 0)))

(declare-fun e!1175645 () Int)

(assert (=> d!562548 (= lt!713884 e!1175645)))

(declare-fun c!300270 () Bool)

(assert (=> d!562548 (= c!300270 ((_ is Nil!20246) (t!171745 lt!713827)))))

(assert (=> d!562548 (= (size!16046 (t!171745 lt!713827)) lt!713884)))

(declare-fun b!1839717 () Bool)

(assert (=> b!1839717 (= e!1175645 0)))

(declare-fun b!1839718 () Bool)

(assert (=> b!1839718 (= e!1175645 (+ 1 (size!16046 (t!171745 (t!171745 lt!713827)))))))

(assert (= (and d!562548 c!300270) b!1839717))

(assert (= (and d!562548 (not c!300270)) b!1839718))

(declare-fun m!2267371 () Bool)

(assert (=> b!1839718 m!2267371))

(assert (=> b!1839658 d!562548))

(declare-fun b!1839719 () Bool)

(declare-fun e!1175646 () Bool)

(declare-fun tp!520247 () Bool)

(assert (=> b!1839719 (= e!1175646 (and tp_is_empty!8285 tp!520247))))

(assert (=> b!1839672 (= tp!520246 e!1175646)))

(assert (= (and b!1839672 ((_ is Cons!20246) (t!171745 (t!171745 p!2031)))) b!1839719))

(declare-fun b!1839720 () Bool)

(declare-fun e!1175647 () Bool)

(declare-fun tp!520248 () Bool)

(assert (=> b!1839720 (= e!1175647 (and tp_is_empty!8285 tp!520248))))

(assert (=> b!1839671 (= tp!520245 e!1175647)))

(assert (= (and b!1839671 ((_ is Cons!20246) (t!171745 (t!171745 l!3477)))) b!1839720))

(check-sat (not b!1839711) (not b!1839700) (not d!562526) (not b!1839716) tp_is_empty!8285 (not b!1839714) (not b!1839713) (not b!1839692) (not b!1839694) (not b!1839697) (not b!1839720) (not d!562544) (not b!1839715) (not d!562530) (not b!1839707) (not d!562516) (not b!1839696) (not d!562518) (not b!1839699) (not b!1839685) (not d!562514) (not d!562528) (not b!1839706) (not d!562522) (not b!1839709) (not b!1839705) (not b!1839702) (not b!1839701) (not b!1839710) (not b!1839682) (not b!1839718) (not b!1839683) (not b!1839719))
(check-sat)
