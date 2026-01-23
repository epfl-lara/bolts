; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14038 () Bool)

(assert start!14038)

(declare-fun b!134540 () Bool)

(declare-fun e!77972 () Bool)

(declare-datatypes ((B!829 0))(
  ( (B!830 (val!900 Int)) )
))
(declare-datatypes ((List!2218 0))(
  ( (Nil!2212) (Cons!2212 (h!7609 B!829) (t!22804 List!2218)) )
))
(declare-fun l1!1230 () List!2218)

(assert (=> b!134540 (= e!77972 (= l1!1230 Nil!2212))))

(declare-fun res!62900 () Bool)

(declare-fun e!77969 () Bool)

(assert (=> start!14038 (=> (not res!62900) (not e!77969))))

(declare-fun sub!16 () List!2218)

(declare-fun lt!40569 () List!2218)

(declare-fun subseq!59 (List!2218 List!2218) Bool)

(assert (=> start!14038 (= res!62900 (subseq!59 sub!16 lt!40569))))

(declare-fun l2!1199 () List!2218)

(declare-fun ++!486 (List!2218 List!2218) List!2218)

(assert (=> start!14038 (= lt!40569 (++!486 l1!1230 l2!1199))))

(assert (=> start!14038 e!77969))

(declare-fun e!77968 () Bool)

(assert (=> start!14038 e!77968))

(declare-fun e!77970 () Bool)

(assert (=> start!14038 e!77970))

(declare-fun e!77973 () Bool)

(assert (=> start!14038 e!77973))

(declare-fun b!134541 () Bool)

(declare-fun tp_is_empty!1473 () Bool)

(declare-fun tp!70738 () Bool)

(assert (=> b!134541 (= e!77970 (and tp_is_empty!1473 tp!70738))))

(declare-fun b!134542 () Bool)

(declare-fun e!77971 () Bool)

(declare-fun isEmpty!858 (List!2218) Bool)

(assert (=> b!134542 (= e!77971 (not (isEmpty!858 l1!1230)))))

(declare-fun b!134543 () Bool)

(declare-fun res!62897 () Bool)

(assert (=> b!134543 (=> (not res!62897) (not e!77972))))

(assert (=> b!134543 (= res!62897 (subseq!59 (t!22804 sub!16) (t!22804 lt!40569)))))

(declare-fun b!134544 () Bool)

(declare-fun tp!70739 () Bool)

(assert (=> b!134544 (= e!77973 (and tp_is_empty!1473 tp!70739))))

(declare-fun b!134545 () Bool)

(declare-fun tp!70740 () Bool)

(assert (=> b!134545 (= e!77968 (and tp_is_empty!1473 tp!70740))))

(declare-fun b!134546 () Bool)

(declare-fun res!62902 () Bool)

(assert (=> b!134546 (=> (not res!62902) (not e!77969))))

(get-info :version)

(assert (=> b!134546 (= res!62902 (not ((_ is Nil!2212) sub!16)))))

(declare-fun b!134547 () Bool)

(declare-fun res!62901 () Bool)

(assert (=> b!134547 (=> (not res!62901) (not e!77972))))

(declare-fun lt!40570 () Bool)

(assert (=> b!134547 (= res!62901 (and (not lt!40570) (= (h!7609 sub!16) (h!7609 lt!40569))))))

(declare-fun b!134548 () Bool)

(assert (=> b!134548 (= e!77969 e!77972)))

(declare-fun res!62898 () Bool)

(assert (=> b!134548 (=> (not res!62898) (not e!77972))))

(assert (=> b!134548 (= res!62898 e!77971)))

(declare-fun res!62899 () Bool)

(assert (=> b!134548 (=> res!62899 e!77971)))

(assert (=> b!134548 (= res!62899 lt!40570)))

(assert (=> b!134548 (= lt!40570 (not ((_ is Cons!2212) lt!40569)))))

(assert (= (and start!14038 res!62900) b!134546))

(assert (= (and b!134546 res!62902) b!134548))

(assert (= (and b!134548 (not res!62899)) b!134542))

(assert (= (and b!134548 res!62898) b!134547))

(assert (= (and b!134547 res!62901) b!134543))

(assert (= (and b!134543 res!62897) b!134540))

(assert (= (and start!14038 ((_ is Cons!2212) l1!1230)) b!134545))

(assert (= (and start!14038 ((_ is Cons!2212) l2!1199)) b!134541))

(assert (= (and start!14038 ((_ is Cons!2212) sub!16)) b!134544))

(declare-fun m!119613 () Bool)

(assert (=> start!14038 m!119613))

(declare-fun m!119615 () Bool)

(assert (=> start!14038 m!119615))

(declare-fun m!119617 () Bool)

(assert (=> b!134542 m!119617))

(declare-fun m!119619 () Bool)

(assert (=> b!134543 m!119619))

(check-sat tp_is_empty!1473 (not b!134542) (not start!14038) (not b!134541) (not b!134543) (not b!134544) (not b!134545))
(check-sat)
(get-model)

(declare-fun b!134559 () Bool)

(declare-fun e!77984 () Bool)

(declare-fun e!77986 () Bool)

(assert (=> b!134559 (= e!77984 e!77986)))

(declare-fun res!62916 () Bool)

(assert (=> b!134559 (=> (not res!62916) (not e!77986))))

(assert (=> b!134559 (= res!62916 ((_ is Cons!2212) lt!40569))))

(declare-fun d!32327 () Bool)

(declare-fun res!62914 () Bool)

(assert (=> d!32327 (=> res!62914 e!77984)))

(assert (=> d!32327 (= res!62914 ((_ is Nil!2212) sub!16))))

(assert (=> d!32327 (= (subseq!59 sub!16 lt!40569) e!77984)))

(declare-fun b!134560 () Bool)

(declare-fun e!77985 () Bool)

(assert (=> b!134560 (= e!77986 e!77985)))

(declare-fun res!62913 () Bool)

(assert (=> b!134560 (=> res!62913 e!77985)))

(declare-fun e!77987 () Bool)

(assert (=> b!134560 (= res!62913 e!77987)))

(declare-fun res!62915 () Bool)

(assert (=> b!134560 (=> (not res!62915) (not e!77987))))

(assert (=> b!134560 (= res!62915 (= (h!7609 sub!16) (h!7609 lt!40569)))))

(declare-fun b!134562 () Bool)

(assert (=> b!134562 (= e!77985 (subseq!59 sub!16 (t!22804 lt!40569)))))

(declare-fun b!134561 () Bool)

(assert (=> b!134561 (= e!77987 (subseq!59 (t!22804 sub!16) (t!22804 lt!40569)))))

(assert (= (and d!32327 (not res!62914)) b!134559))

(assert (= (and b!134559 res!62916) b!134560))

(assert (= (and b!134560 res!62915) b!134561))

(assert (= (and b!134560 (not res!62913)) b!134562))

(declare-fun m!119621 () Bool)

(assert (=> b!134562 m!119621))

(assert (=> b!134561 m!119619))

(assert (=> start!14038 d!32327))

(declare-fun b!134589 () Bool)

(declare-fun e!78009 () List!2218)

(assert (=> b!134589 (= e!78009 l2!1199)))

(declare-fun b!134591 () Bool)

(declare-fun res!62935 () Bool)

(declare-fun e!78008 () Bool)

(assert (=> b!134591 (=> (not res!62935) (not e!78008))))

(declare-fun lt!40575 () List!2218)

(declare-fun size!2004 (List!2218) Int)

(assert (=> b!134591 (= res!62935 (= (size!2004 lt!40575) (+ (size!2004 l1!1230) (size!2004 l2!1199))))))

(declare-fun b!134590 () Bool)

(assert (=> b!134590 (= e!78009 (Cons!2212 (h!7609 l1!1230) (++!486 (t!22804 l1!1230) l2!1199)))))

(declare-fun b!134592 () Bool)

(assert (=> b!134592 (= e!78008 (or (not (= l2!1199 Nil!2212)) (= lt!40575 l1!1230)))))

(declare-fun d!32331 () Bool)

(assert (=> d!32331 e!78008))

(declare-fun res!62936 () Bool)

(assert (=> d!32331 (=> (not res!62936) (not e!78008))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!316 (List!2218) (InoxSet B!829))

(assert (=> d!32331 (= res!62936 (= (content!316 lt!40575) ((_ map or) (content!316 l1!1230) (content!316 l2!1199))))))

(assert (=> d!32331 (= lt!40575 e!78009)))

(declare-fun c!28779 () Bool)

(assert (=> d!32331 (= c!28779 ((_ is Nil!2212) l1!1230))))

(assert (=> d!32331 (= (++!486 l1!1230 l2!1199) lt!40575)))

(assert (= (and d!32331 c!28779) b!134589))

(assert (= (and d!32331 (not c!28779)) b!134590))

(assert (= (and d!32331 res!62936) b!134591))

(assert (= (and b!134591 res!62935) b!134592))

(declare-fun m!119629 () Bool)

(assert (=> b!134591 m!119629))

(declare-fun m!119631 () Bool)

(assert (=> b!134591 m!119631))

(declare-fun m!119633 () Bool)

(assert (=> b!134591 m!119633))

(declare-fun m!119635 () Bool)

(assert (=> b!134590 m!119635))

(declare-fun m!119637 () Bool)

(assert (=> d!32331 m!119637))

(declare-fun m!119639 () Bool)

(assert (=> d!32331 m!119639))

(declare-fun m!119641 () Bool)

(assert (=> d!32331 m!119641))

(assert (=> start!14038 d!32331))

(declare-fun b!134597 () Bool)

(declare-fun e!78012 () Bool)

(declare-fun e!78014 () Bool)

(assert (=> b!134597 (= e!78012 e!78014)))

(declare-fun res!62944 () Bool)

(assert (=> b!134597 (=> (not res!62944) (not e!78014))))

(assert (=> b!134597 (= res!62944 ((_ is Cons!2212) (t!22804 lt!40569)))))

(declare-fun d!32337 () Bool)

(declare-fun res!62942 () Bool)

(assert (=> d!32337 (=> res!62942 e!78012)))

(assert (=> d!32337 (= res!62942 ((_ is Nil!2212) (t!22804 sub!16)))))

(assert (=> d!32337 (= (subseq!59 (t!22804 sub!16) (t!22804 lt!40569)) e!78012)))

(declare-fun b!134598 () Bool)

(declare-fun e!78013 () Bool)

(assert (=> b!134598 (= e!78014 e!78013)))

(declare-fun res!62941 () Bool)

(assert (=> b!134598 (=> res!62941 e!78013)))

(declare-fun e!78015 () Bool)

(assert (=> b!134598 (= res!62941 e!78015)))

(declare-fun res!62943 () Bool)

(assert (=> b!134598 (=> (not res!62943) (not e!78015))))

(assert (=> b!134598 (= res!62943 (= (h!7609 (t!22804 sub!16)) (h!7609 (t!22804 lt!40569))))))

(declare-fun b!134600 () Bool)

(assert (=> b!134600 (= e!78013 (subseq!59 (t!22804 sub!16) (t!22804 (t!22804 lt!40569))))))

(declare-fun b!134599 () Bool)

(assert (=> b!134599 (= e!78015 (subseq!59 (t!22804 (t!22804 sub!16)) (t!22804 (t!22804 lt!40569))))))

(assert (= (and d!32337 (not res!62942)) b!134597))

(assert (= (and b!134597 res!62944) b!134598))

(assert (= (and b!134598 res!62943) b!134599))

(assert (= (and b!134598 (not res!62941)) b!134600))

(declare-fun m!119643 () Bool)

(assert (=> b!134600 m!119643))

(declare-fun m!119645 () Bool)

(assert (=> b!134599 m!119645))

(assert (=> b!134543 d!32337))

(declare-fun d!32339 () Bool)

(assert (=> d!32339 (= (isEmpty!858 l1!1230) ((_ is Nil!2212) l1!1230))))

(assert (=> b!134542 d!32339))

(declare-fun b!134609 () Bool)

(declare-fun e!78020 () Bool)

(declare-fun tp!70743 () Bool)

(assert (=> b!134609 (= e!78020 (and tp_is_empty!1473 tp!70743))))

(assert (=> b!134544 (= tp!70739 e!78020)))

(assert (= (and b!134544 ((_ is Cons!2212) (t!22804 sub!16))) b!134609))

(declare-fun b!134610 () Bool)

(declare-fun e!78021 () Bool)

(declare-fun tp!70744 () Bool)

(assert (=> b!134610 (= e!78021 (and tp_is_empty!1473 tp!70744))))

(assert (=> b!134545 (= tp!70740 e!78021)))

(assert (= (and b!134545 ((_ is Cons!2212) (t!22804 l1!1230))) b!134610))

(declare-fun b!134611 () Bool)

(declare-fun e!78022 () Bool)

(declare-fun tp!70745 () Bool)

(assert (=> b!134611 (= e!78022 (and tp_is_empty!1473 tp!70745))))

(assert (=> b!134541 (= tp!70738 e!78022)))

(assert (= (and b!134541 ((_ is Cons!2212) (t!22804 l2!1199))) b!134611))

(check-sat tp_is_empty!1473 (not b!134599) (not b!134562) (not b!134610) (not b!134600) (not d!32331) (not b!134609) (not b!134611) (not b!134561) (not b!134590) (not b!134591))
(check-sat)
