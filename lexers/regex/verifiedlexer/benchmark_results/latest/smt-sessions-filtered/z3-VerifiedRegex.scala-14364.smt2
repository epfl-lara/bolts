; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749580 () Bool)

(assert start!749580)

(declare-fun res!3150415 () Bool)

(declare-fun e!4685885 () Bool)

(assert (=> start!749580 (=> (not res!3150415) (not e!4685885))))

(declare-datatypes ((C!43156 0))(
  ( (C!43157 (val!32126 Int)) )
))
(declare-datatypes ((Regex!21409 0))(
  ( (ElementMatch!21409 (c!1459052 C!43156)) (Concat!30408 (regOne!43330 Regex!21409) (regTwo!43330 Regex!21409)) (EmptyExpr!21409) (Star!21409 (reg!21738 Regex!21409)) (EmptyLang!21409) (Union!21409 (regOne!43331 Regex!21409) (regTwo!43331 Regex!21409)) )
))
(declare-fun r!15654 () Regex!21409)

(declare-fun validRegex!11713 (Regex!21409) Bool)

(assert (=> start!749580 (= res!3150415 (validRegex!11713 r!15654))))

(assert (=> start!749580 e!4685885))

(declare-fun e!4685887 () Bool)

(assert (=> start!749580 e!4685887))

(declare-fun e!4685886 () Bool)

(assert (=> start!749580 e!4685886))

(declare-fun b!7941696 () Bool)

(declare-fun tp!2361409 () Bool)

(declare-fun tp!2361405 () Bool)

(assert (=> b!7941696 (= e!4685887 (and tp!2361409 tp!2361405))))

(declare-fun b!7941697 () Bool)

(declare-fun tp!2361408 () Bool)

(assert (=> b!7941697 (= e!4685887 tp!2361408)))

(declare-fun b!7941698 () Bool)

(declare-datatypes ((List!74638 0))(
  ( (Nil!74514) (Cons!74514 (h!80962 C!43156) (t!390381 List!74638)) )
))
(declare-fun derivative!595 (Regex!21409 List!74638) Regex!21409)

(assert (=> b!7941698 (= e!4685885 (not (= (derivative!595 r!15654 Nil!74514) r!15654)))))

(declare-fun b!7941699 () Bool)

(declare-fun tp_is_empty!53361 () Bool)

(declare-fun tp!2361407 () Bool)

(assert (=> b!7941699 (= e!4685886 (and tp_is_empty!53361 tp!2361407))))

(declare-fun b!7941700 () Bool)

(declare-fun res!3150416 () Bool)

(assert (=> b!7941700 (=> (not res!3150416) (not e!4685885))))

(declare-fun input!6711 () List!74638)

(declare-fun isPrefix!6509 (List!74638 List!74638) Bool)

(assert (=> b!7941700 (= res!3150416 (isPrefix!6509 Nil!74514 input!6711))))

(declare-fun b!7941701 () Bool)

(assert (=> b!7941701 (= e!4685887 tp_is_empty!53361)))

(declare-fun b!7941702 () Bool)

(declare-fun tp!2361406 () Bool)

(declare-fun tp!2361410 () Bool)

(assert (=> b!7941702 (= e!4685887 (and tp!2361406 tp!2361410))))

(assert (= (and start!749580 res!3150415) b!7941700))

(assert (= (and b!7941700 res!3150416) b!7941698))

(get-info :version)

(assert (= (and start!749580 ((_ is ElementMatch!21409) r!15654)) b!7941701))

(assert (= (and start!749580 ((_ is Concat!30408) r!15654)) b!7941702))

(assert (= (and start!749580 ((_ is Star!21409) r!15654)) b!7941697))

(assert (= (and start!749580 ((_ is Union!21409) r!15654)) b!7941696))

(assert (= (and start!749580 ((_ is Cons!74514) input!6711)) b!7941699))

(declare-fun m!8330376 () Bool)

(assert (=> start!749580 m!8330376))

(declare-fun m!8330378 () Bool)

(assert (=> b!7941698 m!8330378))

(declare-fun m!8330380 () Bool)

(assert (=> b!7941700 m!8330380))

(check-sat (not start!749580) (not b!7941700) (not b!7941699) (not b!7941697) (not b!7941702) (not b!7941698) tp_is_empty!53361 (not b!7941696))
(check-sat)
(get-model)

(declare-fun b!7941712 () Bool)

(declare-fun res!3150425 () Bool)

(declare-fun e!4685896 () Bool)

(assert (=> b!7941712 (=> (not res!3150425) (not e!4685896))))

(declare-fun head!16189 (List!74638) C!43156)

(assert (=> b!7941712 (= res!3150425 (= (head!16189 Nil!74514) (head!16189 input!6711)))))

(declare-fun b!7941713 () Bool)

(declare-fun tail!15732 (List!74638) List!74638)

(assert (=> b!7941713 (= e!4685896 (isPrefix!6509 (tail!15732 Nil!74514) (tail!15732 input!6711)))))

(declare-fun b!7941711 () Bool)

(declare-fun e!4685894 () Bool)

(assert (=> b!7941711 (= e!4685894 e!4685896)))

(declare-fun res!3150427 () Bool)

(assert (=> b!7941711 (=> (not res!3150427) (not e!4685896))))

(assert (=> b!7941711 (= res!3150427 (not ((_ is Nil!74514) input!6711)))))

(declare-fun b!7941714 () Bool)

(declare-fun e!4685895 () Bool)

(declare-fun size!43345 (List!74638) Int)

(assert (=> b!7941714 (= e!4685895 (>= (size!43345 input!6711) (size!43345 Nil!74514)))))

(declare-fun d!2375117 () Bool)

(assert (=> d!2375117 e!4685895))

(declare-fun res!3150428 () Bool)

(assert (=> d!2375117 (=> res!3150428 e!4685895)))

(declare-fun lt!2696726 () Bool)

(assert (=> d!2375117 (= res!3150428 (not lt!2696726))))

(assert (=> d!2375117 (= lt!2696726 e!4685894)))

(declare-fun res!3150426 () Bool)

(assert (=> d!2375117 (=> res!3150426 e!4685894)))

(assert (=> d!2375117 (= res!3150426 ((_ is Nil!74514) Nil!74514))))

(assert (=> d!2375117 (= (isPrefix!6509 Nil!74514 input!6711) lt!2696726)))

(assert (= (and d!2375117 (not res!3150426)) b!7941711))

(assert (= (and b!7941711 res!3150427) b!7941712))

(assert (= (and b!7941712 res!3150425) b!7941713))

(assert (= (and d!2375117 (not res!3150428)) b!7941714))

(declare-fun m!8330382 () Bool)

(assert (=> b!7941712 m!8330382))

(declare-fun m!8330384 () Bool)

(assert (=> b!7941712 m!8330384))

(declare-fun m!8330386 () Bool)

(assert (=> b!7941713 m!8330386))

(declare-fun m!8330388 () Bool)

(assert (=> b!7941713 m!8330388))

(assert (=> b!7941713 m!8330386))

(assert (=> b!7941713 m!8330388))

(declare-fun m!8330390 () Bool)

(assert (=> b!7941713 m!8330390))

(declare-fun m!8330392 () Bool)

(assert (=> b!7941714 m!8330392))

(declare-fun m!8330394 () Bool)

(assert (=> b!7941714 m!8330394))

(assert (=> b!7941700 d!2375117))

(declare-fun b!7941739 () Bool)

(declare-fun e!4685917 () Bool)

(declare-fun e!4685920 () Bool)

(assert (=> b!7941739 (= e!4685917 e!4685920)))

(declare-fun res!3150442 () Bool)

(declare-fun nullable!9530 (Regex!21409) Bool)

(assert (=> b!7941739 (= res!3150442 (not (nullable!9530 (reg!21738 r!15654))))))

(assert (=> b!7941739 (=> (not res!3150442) (not e!4685920))))

(declare-fun b!7941740 () Bool)

(declare-fun e!4685918 () Bool)

(declare-fun call!735977 () Bool)

(assert (=> b!7941740 (= e!4685918 call!735977)))

(declare-fun bm!735970 () Bool)

(declare-fun call!735975 () Bool)

(declare-fun c!1459060 () Bool)

(assert (=> bm!735970 (= call!735975 (validRegex!11713 (ite c!1459060 (regTwo!43331 r!15654) (regOne!43330 r!15654))))))

(declare-fun b!7941741 () Bool)

(declare-fun e!4685916 () Bool)

(assert (=> b!7941741 (= e!4685916 e!4685917)))

(declare-fun c!1459061 () Bool)

(assert (=> b!7941741 (= c!1459061 ((_ is Star!21409) r!15654))))

(declare-fun bm!735971 () Bool)

(declare-fun call!735976 () Bool)

(assert (=> bm!735971 (= call!735977 call!735976)))

(declare-fun b!7941742 () Bool)

(declare-fun res!3150439 () Bool)

(declare-fun e!4685914 () Bool)

(assert (=> b!7941742 (=> (not res!3150439) (not e!4685914))))

(assert (=> b!7941742 (= res!3150439 call!735977)))

(declare-fun e!4685915 () Bool)

(assert (=> b!7941742 (= e!4685915 e!4685914)))

(declare-fun bm!735972 () Bool)

(assert (=> bm!735972 (= call!735976 (validRegex!11713 (ite c!1459061 (reg!21738 r!15654) (ite c!1459060 (regOne!43331 r!15654) (regTwo!43330 r!15654)))))))

(declare-fun b!7941743 () Bool)

(assert (=> b!7941743 (= e!4685914 call!735975)))

(declare-fun d!2375121 () Bool)

(declare-fun res!3150440 () Bool)

(assert (=> d!2375121 (=> res!3150440 e!4685916)))

(assert (=> d!2375121 (= res!3150440 ((_ is ElementMatch!21409) r!15654))))

(assert (=> d!2375121 (= (validRegex!11713 r!15654) e!4685916)))

(declare-fun b!7941744 () Bool)

(declare-fun res!3150443 () Bool)

(declare-fun e!4685919 () Bool)

(assert (=> b!7941744 (=> res!3150443 e!4685919)))

(assert (=> b!7941744 (= res!3150443 (not ((_ is Concat!30408) r!15654)))))

(assert (=> b!7941744 (= e!4685915 e!4685919)))

(declare-fun b!7941745 () Bool)

(assert (=> b!7941745 (= e!4685917 e!4685915)))

(assert (=> b!7941745 (= c!1459060 ((_ is Union!21409) r!15654))))

(declare-fun b!7941746 () Bool)

(assert (=> b!7941746 (= e!4685920 call!735976)))

(declare-fun b!7941747 () Bool)

(assert (=> b!7941747 (= e!4685919 e!4685918)))

(declare-fun res!3150441 () Bool)

(assert (=> b!7941747 (=> (not res!3150441) (not e!4685918))))

(assert (=> b!7941747 (= res!3150441 call!735975)))

(assert (= (and d!2375121 (not res!3150440)) b!7941741))

(assert (= (and b!7941741 c!1459061) b!7941739))

(assert (= (and b!7941741 (not c!1459061)) b!7941745))

(assert (= (and b!7941739 res!3150442) b!7941746))

(assert (= (and b!7941745 c!1459060) b!7941742))

(assert (= (and b!7941745 (not c!1459060)) b!7941744))

(assert (= (and b!7941742 res!3150439) b!7941743))

(assert (= (and b!7941744 (not res!3150443)) b!7941747))

(assert (= (and b!7941747 res!3150441) b!7941740))

(assert (= (or b!7941742 b!7941740) bm!735971))

(assert (= (or b!7941743 b!7941747) bm!735970))

(assert (= (or b!7941746 bm!735971) bm!735972))

(declare-fun m!8330402 () Bool)

(assert (=> b!7941739 m!8330402))

(declare-fun m!8330404 () Bool)

(assert (=> bm!735970 m!8330404))

(declare-fun m!8330406 () Bool)

(assert (=> bm!735972 m!8330406))

(assert (=> start!749580 d!2375121))

(declare-fun d!2375125 () Bool)

(declare-fun lt!2696734 () Regex!21409)

(assert (=> d!2375125 (validRegex!11713 lt!2696734)))

(declare-fun e!4685929 () Regex!21409)

(assert (=> d!2375125 (= lt!2696734 e!4685929)))

(declare-fun c!1459064 () Bool)

(assert (=> d!2375125 (= c!1459064 ((_ is Cons!74514) Nil!74514))))

(assert (=> d!2375125 (validRegex!11713 r!15654)))

(assert (=> d!2375125 (= (derivative!595 r!15654 Nil!74514) lt!2696734)))

(declare-fun b!7941760 () Bool)

(declare-fun derivativeStep!6466 (Regex!21409 C!43156) Regex!21409)

(assert (=> b!7941760 (= e!4685929 (derivative!595 (derivativeStep!6466 r!15654 (h!80962 Nil!74514)) (t!390381 Nil!74514)))))

(declare-fun b!7941761 () Bool)

(assert (=> b!7941761 (= e!4685929 r!15654)))

(assert (= (and d!2375125 c!1459064) b!7941760))

(assert (= (and d!2375125 (not c!1459064)) b!7941761))

(declare-fun m!8330408 () Bool)

(assert (=> d!2375125 m!8330408))

(assert (=> d!2375125 m!8330376))

(declare-fun m!8330410 () Bool)

(assert (=> b!7941760 m!8330410))

(assert (=> b!7941760 m!8330410))

(declare-fun m!8330412 () Bool)

(assert (=> b!7941760 m!8330412))

(assert (=> b!7941698 d!2375125))

(declare-fun e!4685932 () Bool)

(assert (=> b!7941702 (= tp!2361406 e!4685932)))

(declare-fun b!7941774 () Bool)

(declare-fun tp!2361424 () Bool)

(assert (=> b!7941774 (= e!4685932 tp!2361424)))

(declare-fun b!7941775 () Bool)

(declare-fun tp!2361425 () Bool)

(declare-fun tp!2361423 () Bool)

(assert (=> b!7941775 (= e!4685932 (and tp!2361425 tp!2361423))))

(declare-fun b!7941772 () Bool)

(assert (=> b!7941772 (= e!4685932 tp_is_empty!53361)))

(declare-fun b!7941773 () Bool)

(declare-fun tp!2361421 () Bool)

(declare-fun tp!2361422 () Bool)

(assert (=> b!7941773 (= e!4685932 (and tp!2361421 tp!2361422))))

(assert (= (and b!7941702 ((_ is ElementMatch!21409) (regOne!43330 r!15654))) b!7941772))

(assert (= (and b!7941702 ((_ is Concat!30408) (regOne!43330 r!15654))) b!7941773))

(assert (= (and b!7941702 ((_ is Star!21409) (regOne!43330 r!15654))) b!7941774))

(assert (= (and b!7941702 ((_ is Union!21409) (regOne!43330 r!15654))) b!7941775))

(declare-fun e!4685933 () Bool)

(assert (=> b!7941702 (= tp!2361410 e!4685933)))

(declare-fun b!7941778 () Bool)

(declare-fun tp!2361429 () Bool)

(assert (=> b!7941778 (= e!4685933 tp!2361429)))

(declare-fun b!7941779 () Bool)

(declare-fun tp!2361430 () Bool)

(declare-fun tp!2361428 () Bool)

(assert (=> b!7941779 (= e!4685933 (and tp!2361430 tp!2361428))))

(declare-fun b!7941776 () Bool)

(assert (=> b!7941776 (= e!4685933 tp_is_empty!53361)))

(declare-fun b!7941777 () Bool)

(declare-fun tp!2361426 () Bool)

(declare-fun tp!2361427 () Bool)

(assert (=> b!7941777 (= e!4685933 (and tp!2361426 tp!2361427))))

(assert (= (and b!7941702 ((_ is ElementMatch!21409) (regTwo!43330 r!15654))) b!7941776))

(assert (= (and b!7941702 ((_ is Concat!30408) (regTwo!43330 r!15654))) b!7941777))

(assert (= (and b!7941702 ((_ is Star!21409) (regTwo!43330 r!15654))) b!7941778))

(assert (= (and b!7941702 ((_ is Union!21409) (regTwo!43330 r!15654))) b!7941779))

(declare-fun e!4685934 () Bool)

(assert (=> b!7941696 (= tp!2361409 e!4685934)))

(declare-fun b!7941782 () Bool)

(declare-fun tp!2361434 () Bool)

(assert (=> b!7941782 (= e!4685934 tp!2361434)))

(declare-fun b!7941783 () Bool)

(declare-fun tp!2361435 () Bool)

(declare-fun tp!2361433 () Bool)

(assert (=> b!7941783 (= e!4685934 (and tp!2361435 tp!2361433))))

(declare-fun b!7941780 () Bool)

(assert (=> b!7941780 (= e!4685934 tp_is_empty!53361)))

(declare-fun b!7941781 () Bool)

(declare-fun tp!2361431 () Bool)

(declare-fun tp!2361432 () Bool)

(assert (=> b!7941781 (= e!4685934 (and tp!2361431 tp!2361432))))

(assert (= (and b!7941696 ((_ is ElementMatch!21409) (regOne!43331 r!15654))) b!7941780))

(assert (= (and b!7941696 ((_ is Concat!30408) (regOne!43331 r!15654))) b!7941781))

(assert (= (and b!7941696 ((_ is Star!21409) (regOne!43331 r!15654))) b!7941782))

(assert (= (and b!7941696 ((_ is Union!21409) (regOne!43331 r!15654))) b!7941783))

(declare-fun e!4685935 () Bool)

(assert (=> b!7941696 (= tp!2361405 e!4685935)))

(declare-fun b!7941786 () Bool)

(declare-fun tp!2361439 () Bool)

(assert (=> b!7941786 (= e!4685935 tp!2361439)))

(declare-fun b!7941787 () Bool)

(declare-fun tp!2361440 () Bool)

(declare-fun tp!2361438 () Bool)

(assert (=> b!7941787 (= e!4685935 (and tp!2361440 tp!2361438))))

(declare-fun b!7941784 () Bool)

(assert (=> b!7941784 (= e!4685935 tp_is_empty!53361)))

(declare-fun b!7941785 () Bool)

(declare-fun tp!2361436 () Bool)

(declare-fun tp!2361437 () Bool)

(assert (=> b!7941785 (= e!4685935 (and tp!2361436 tp!2361437))))

(assert (= (and b!7941696 ((_ is ElementMatch!21409) (regTwo!43331 r!15654))) b!7941784))

(assert (= (and b!7941696 ((_ is Concat!30408) (regTwo!43331 r!15654))) b!7941785))

(assert (= (and b!7941696 ((_ is Star!21409) (regTwo!43331 r!15654))) b!7941786))

(assert (= (and b!7941696 ((_ is Union!21409) (regTwo!43331 r!15654))) b!7941787))

(declare-fun b!7941796 () Bool)

(declare-fun e!4685941 () Bool)

(declare-fun tp!2361443 () Bool)

(assert (=> b!7941796 (= e!4685941 (and tp_is_empty!53361 tp!2361443))))

(assert (=> b!7941699 (= tp!2361407 e!4685941)))

(assert (= (and b!7941699 ((_ is Cons!74514) (t!390381 input!6711))) b!7941796))

(declare-fun e!4685942 () Bool)

(assert (=> b!7941697 (= tp!2361408 e!4685942)))

(declare-fun b!7941799 () Bool)

(declare-fun tp!2361447 () Bool)

(assert (=> b!7941799 (= e!4685942 tp!2361447)))

(declare-fun b!7941800 () Bool)

(declare-fun tp!2361448 () Bool)

(declare-fun tp!2361446 () Bool)

(assert (=> b!7941800 (= e!4685942 (and tp!2361448 tp!2361446))))

(declare-fun b!7941797 () Bool)

(assert (=> b!7941797 (= e!4685942 tp_is_empty!53361)))

(declare-fun b!7941798 () Bool)

(declare-fun tp!2361444 () Bool)

(declare-fun tp!2361445 () Bool)

(assert (=> b!7941798 (= e!4685942 (and tp!2361444 tp!2361445))))

(assert (= (and b!7941697 ((_ is ElementMatch!21409) (reg!21738 r!15654))) b!7941797))

(assert (= (and b!7941697 ((_ is Concat!30408) (reg!21738 r!15654))) b!7941798))

(assert (= (and b!7941697 ((_ is Star!21409) (reg!21738 r!15654))) b!7941799))

(assert (= (and b!7941697 ((_ is Union!21409) (reg!21738 r!15654))) b!7941800))

(check-sat (not b!7941777) (not b!7941783) (not b!7941785) (not b!7941739) (not b!7941800) (not b!7941787) tp_is_empty!53361 (not b!7941760) (not b!7941714) (not b!7941779) (not b!7941798) (not b!7941713) (not b!7941799) (not bm!735970) (not b!7941775) (not b!7941778) (not d!2375125) (not b!7941786) (not b!7941782) (not bm!735972) (not b!7941712) (not b!7941774) (not b!7941781) (not b!7941773) (not b!7941796))
(check-sat)
