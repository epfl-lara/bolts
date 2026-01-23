; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663650 () Bool)

(assert start!663650)

(declare-fun b!6877190 () Bool)

(declare-fun res!2804064 () Bool)

(declare-fun e!4144848 () Bool)

(assert (=> b!6877190 (=> (not res!2804064) (not e!4144848))))

(declare-datatypes ((C!33752 0))(
  ( (C!33753 (val!26578 Int)) )
))
(declare-datatypes ((Regex!16741 0))(
  ( (ElementMatch!16741 (c!1279551 C!33752)) (Concat!25586 (regOne!33994 Regex!16741) (regTwo!33994 Regex!16741)) (EmptyExpr!16741) (Star!16741 (reg!17070 Regex!16741)) (EmptyLang!16741) (Union!16741 (regOne!33995 Regex!16741) (regTwo!33995 Regex!16741)) )
))
(declare-datatypes ((List!66493 0))(
  ( (Nil!66369) (Cons!66369 (h!72817 Regex!16741) (t!380236 List!66493)) )
))
(declare-datatypes ((Context!12250 0))(
  ( (Context!12251 (exprs!6625 List!66493)) )
))
(declare-datatypes ((List!66494 0))(
  ( (Nil!66370) (Cons!66370 (h!72818 Context!12250) (t!380237 List!66494)) )
))
(declare-fun zl!1632 () List!66494)

(declare-fun size!40731 (List!66494) Int)

(assert (=> b!6877190 (= res!2804064 (> (size!40731 (t!380237 zl!1632)) 1))))

(declare-fun b!6877191 () Bool)

(declare-fun res!2804068 () Bool)

(assert (=> b!6877191 (=> (not res!2804068) (not e!4144848))))

(assert (=> b!6877191 (= res!2804068 (> (size!40731 zl!1632) 1))))

(declare-fun b!6877192 () Bool)

(declare-fun res!2804066 () Bool)

(assert (=> b!6877192 (=> (not res!2804066) (not e!4144848))))

(declare-fun c!9978 () Context!12250)

(declare-fun contains!20397 (List!66494 Context!12250) Bool)

(assert (=> b!6877192 (= res!2804066 (contains!20397 (t!380237 zl!1632) c!9978))))

(declare-fun b!6877193 () Bool)

(declare-fun res!2804065 () Bool)

(assert (=> b!6877193 (=> (not res!2804065) (not e!4144848))))

(get-info :version)

(assert (=> b!6877193 (= res!2804065 ((_ is Cons!66370) zl!1632))))

(declare-fun b!6877194 () Bool)

(declare-fun e!4144849 () Bool)

(declare-fun tp!1890098 () Bool)

(assert (=> b!6877194 (= e!4144849 tp!1890098)))

(declare-fun b!6877196 () Bool)

(declare-fun tp!1890099 () Bool)

(declare-fun e!4144847 () Bool)

(declare-fun inv!85099 (Context!12250) Bool)

(assert (=> b!6877196 (= e!4144847 (and (inv!85099 (h!72818 zl!1632)) e!4144849 tp!1890099))))

(declare-fun b!6877197 () Bool)

(declare-fun e!4144850 () Bool)

(declare-fun tp!1890097 () Bool)

(assert (=> b!6877197 (= e!4144850 tp!1890097)))

(declare-fun res!2804067 () Bool)

(assert (=> start!663650 (=> (not res!2804067) (not e!4144848))))

(assert (=> start!663650 (= res!2804067 (contains!20397 zl!1632 c!9978))))

(assert (=> start!663650 e!4144848))

(assert (=> start!663650 e!4144847))

(assert (=> start!663650 (and (inv!85099 c!9978) e!4144850)))

(declare-fun b!6877195 () Bool)

(declare-fun lt!2459244 () Int)

(declare-fun zipperDepthTotal!458 (List!66494) Int)

(assert (=> b!6877195 (= e!4144848 (not (< lt!2459244 (zipperDepthTotal!458 zl!1632))))))

(assert (=> b!6877195 (< lt!2459244 (zipperDepthTotal!458 (t!380237 zl!1632)))))

(declare-fun contextDepthTotal!430 (Context!12250) Int)

(assert (=> b!6877195 (= lt!2459244 (contextDepthTotal!430 c!9978))))

(declare-datatypes ((Unit!160218 0))(
  ( (Unit!160219) )
))
(declare-fun lt!2459245 () Unit!160218)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!62 (List!66494 Context!12250) Unit!160218)

(assert (=> b!6877195 (= lt!2459245 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!62 (t!380237 zl!1632) c!9978))))

(assert (= (and start!663650 res!2804067) b!6877191))

(assert (= (and b!6877191 res!2804068) b!6877193))

(assert (= (and b!6877193 res!2804065) b!6877192))

(assert (= (and b!6877192 res!2804066) b!6877190))

(assert (= (and b!6877190 res!2804064) b!6877195))

(assert (= b!6877196 b!6877194))

(assert (= (and start!663650 ((_ is Cons!66370) zl!1632)) b!6877196))

(assert (= start!663650 b!6877197))

(declare-fun m!7604802 () Bool)

(assert (=> b!6877191 m!7604802))

(declare-fun m!7604804 () Bool)

(assert (=> start!663650 m!7604804))

(declare-fun m!7604806 () Bool)

(assert (=> start!663650 m!7604806))

(declare-fun m!7604808 () Bool)

(assert (=> b!6877195 m!7604808))

(declare-fun m!7604810 () Bool)

(assert (=> b!6877195 m!7604810))

(declare-fun m!7604812 () Bool)

(assert (=> b!6877195 m!7604812))

(declare-fun m!7604814 () Bool)

(assert (=> b!6877195 m!7604814))

(declare-fun m!7604816 () Bool)

(assert (=> b!6877190 m!7604816))

(declare-fun m!7604818 () Bool)

(assert (=> b!6877192 m!7604818))

(declare-fun m!7604820 () Bool)

(assert (=> b!6877196 m!7604820))

(check-sat (not b!6877195) (not start!663650) (not b!6877194) (not b!6877197) (not b!6877192) (not b!6877190) (not b!6877196) (not b!6877191))
(check-sat)
(get-model)

(declare-fun d!2159476 () Bool)

(declare-fun lt!2459252 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13037 (List!66494) (InoxSet Context!12250))

(assert (=> d!2159476 (= lt!2459252 (select (content!13037 (t!380237 zl!1632)) c!9978))))

(declare-fun e!4144860 () Bool)

(assert (=> d!2159476 (= lt!2459252 e!4144860)))

(declare-fun res!2804073 () Bool)

(assert (=> d!2159476 (=> (not res!2804073) (not e!4144860))))

(assert (=> d!2159476 (= res!2804073 ((_ is Cons!66370) (t!380237 zl!1632)))))

(assert (=> d!2159476 (= (contains!20397 (t!380237 zl!1632) c!9978) lt!2459252)))

(declare-fun b!6877210 () Bool)

(declare-fun e!4144859 () Bool)

(assert (=> b!6877210 (= e!4144860 e!4144859)))

(declare-fun res!2804074 () Bool)

(assert (=> b!6877210 (=> res!2804074 e!4144859)))

(assert (=> b!6877210 (= res!2804074 (= (h!72818 (t!380237 zl!1632)) c!9978))))

(declare-fun b!6877211 () Bool)

(assert (=> b!6877211 (= e!4144859 (contains!20397 (t!380237 (t!380237 zl!1632)) c!9978))))

(assert (= (and d!2159476 res!2804073) b!6877210))

(assert (= (and b!6877210 (not res!2804074)) b!6877211))

(declare-fun m!7604828 () Bool)

(assert (=> d!2159476 m!7604828))

(declare-fun m!7604830 () Bool)

(assert (=> d!2159476 m!7604830))

(declare-fun m!7604832 () Bool)

(assert (=> b!6877211 m!7604832))

(assert (=> b!6877192 d!2159476))

(declare-fun d!2159482 () Bool)

(declare-fun lambda!389345 () Int)

(declare-fun forall!15933 (List!66493 Int) Bool)

(assert (=> d!2159482 (= (inv!85099 (h!72818 zl!1632)) (forall!15933 (exprs!6625 (h!72818 zl!1632)) lambda!389345))))

(declare-fun bs!1837894 () Bool)

(assert (= bs!1837894 d!2159482))

(declare-fun m!7604858 () Bool)

(assert (=> bs!1837894 m!7604858))

(assert (=> b!6877196 d!2159482))

(declare-fun d!2159498 () Bool)

(declare-fun lt!2459269 () Int)

(assert (=> d!2159498 (>= lt!2459269 0)))

(declare-fun e!4144888 () Int)

(assert (=> d!2159498 (= lt!2459269 e!4144888)))

(declare-fun c!1279567 () Bool)

(assert (=> d!2159498 (= c!1279567 ((_ is Nil!66370) zl!1632))))

(assert (=> d!2159498 (= (size!40731 zl!1632) lt!2459269)))

(declare-fun b!6877252 () Bool)

(assert (=> b!6877252 (= e!4144888 0)))

(declare-fun b!6877253 () Bool)

(assert (=> b!6877253 (= e!4144888 (+ 1 (size!40731 (t!380237 zl!1632))))))

(assert (= (and d!2159498 c!1279567) b!6877252))

(assert (= (and d!2159498 (not c!1279567)) b!6877253))

(assert (=> b!6877253 m!7604816))

(assert (=> b!6877191 d!2159498))

(declare-fun d!2159500 () Bool)

(declare-fun lt!2459270 () Int)

(assert (=> d!2159500 (>= lt!2459270 0)))

(declare-fun e!4144889 () Int)

(assert (=> d!2159500 (= lt!2459270 e!4144889)))

(declare-fun c!1279568 () Bool)

(assert (=> d!2159500 (= c!1279568 ((_ is Nil!66370) (t!380237 zl!1632)))))

(assert (=> d!2159500 (= (size!40731 (t!380237 zl!1632)) lt!2459270)))

(declare-fun b!6877254 () Bool)

(assert (=> b!6877254 (= e!4144889 0)))

(declare-fun b!6877255 () Bool)

(assert (=> b!6877255 (= e!4144889 (+ 1 (size!40731 (t!380237 (t!380237 zl!1632)))))))

(assert (= (and d!2159500 c!1279568) b!6877254))

(assert (= (and d!2159500 (not c!1279568)) b!6877255))

(declare-fun m!7604860 () Bool)

(assert (=> b!6877255 m!7604860))

(assert (=> b!6877190 d!2159500))

(declare-fun d!2159502 () Bool)

(declare-fun lt!2459271 () Bool)

(assert (=> d!2159502 (= lt!2459271 (select (content!13037 zl!1632) c!9978))))

(declare-fun e!4144891 () Bool)

(assert (=> d!2159502 (= lt!2459271 e!4144891)))

(declare-fun res!2804083 () Bool)

(assert (=> d!2159502 (=> (not res!2804083) (not e!4144891))))

(assert (=> d!2159502 (= res!2804083 ((_ is Cons!66370) zl!1632))))

(assert (=> d!2159502 (= (contains!20397 zl!1632 c!9978) lt!2459271)))

(declare-fun b!6877256 () Bool)

(declare-fun e!4144890 () Bool)

(assert (=> b!6877256 (= e!4144891 e!4144890)))

(declare-fun res!2804084 () Bool)

(assert (=> b!6877256 (=> res!2804084 e!4144890)))

(assert (=> b!6877256 (= res!2804084 (= (h!72818 zl!1632) c!9978))))

(declare-fun b!6877257 () Bool)

(assert (=> b!6877257 (= e!4144890 (contains!20397 (t!380237 zl!1632) c!9978))))

(assert (= (and d!2159502 res!2804083) b!6877256))

(assert (= (and b!6877256 (not res!2804084)) b!6877257))

(declare-fun m!7604862 () Bool)

(assert (=> d!2159502 m!7604862))

(declare-fun m!7604864 () Bool)

(assert (=> d!2159502 m!7604864))

(assert (=> b!6877257 m!7604818))

(assert (=> start!663650 d!2159502))

(declare-fun bs!1837895 () Bool)

(declare-fun d!2159504 () Bool)

(assert (= bs!1837895 (and d!2159504 d!2159482)))

(declare-fun lambda!389346 () Int)

(assert (=> bs!1837895 (= lambda!389346 lambda!389345)))

(assert (=> d!2159504 (= (inv!85099 c!9978) (forall!15933 (exprs!6625 c!9978) lambda!389346))))

(declare-fun bs!1837896 () Bool)

(assert (= bs!1837896 d!2159504))

(declare-fun m!7604866 () Bool)

(assert (=> bs!1837896 m!7604866))

(assert (=> start!663650 d!2159504))

(declare-fun d!2159506 () Bool)

(declare-fun lt!2459274 () Int)

(assert (=> d!2159506 (>= lt!2459274 0)))

(declare-fun e!4144894 () Int)

(assert (=> d!2159506 (= lt!2459274 e!4144894)))

(declare-fun c!1279571 () Bool)

(assert (=> d!2159506 (= c!1279571 ((_ is Cons!66370) zl!1632))))

(assert (=> d!2159506 (= (zipperDepthTotal!458 zl!1632) lt!2459274)))

(declare-fun b!6877262 () Bool)

(assert (=> b!6877262 (= e!4144894 (+ (contextDepthTotal!430 (h!72818 zl!1632)) (zipperDepthTotal!458 (t!380237 zl!1632))))))

(declare-fun b!6877263 () Bool)

(assert (=> b!6877263 (= e!4144894 0)))

(assert (= (and d!2159506 c!1279571) b!6877262))

(assert (= (and d!2159506 (not c!1279571)) b!6877263))

(declare-fun m!7604868 () Bool)

(assert (=> b!6877262 m!7604868))

(assert (=> b!6877262 m!7604810))

(assert (=> b!6877195 d!2159506))

(declare-fun d!2159508 () Bool)

(declare-fun lt!2459275 () Int)

(assert (=> d!2159508 (>= lt!2459275 0)))

(declare-fun e!4144895 () Int)

(assert (=> d!2159508 (= lt!2459275 e!4144895)))

(declare-fun c!1279572 () Bool)

(assert (=> d!2159508 (= c!1279572 ((_ is Cons!66370) (t!380237 zl!1632)))))

(assert (=> d!2159508 (= (zipperDepthTotal!458 (t!380237 zl!1632)) lt!2459275)))

(declare-fun b!6877264 () Bool)

(assert (=> b!6877264 (= e!4144895 (+ (contextDepthTotal!430 (h!72818 (t!380237 zl!1632))) (zipperDepthTotal!458 (t!380237 (t!380237 zl!1632)))))))

(declare-fun b!6877265 () Bool)

(assert (=> b!6877265 (= e!4144895 0)))

(assert (= (and d!2159508 c!1279572) b!6877264))

(assert (= (and d!2159508 (not c!1279572)) b!6877265))

(declare-fun m!7604870 () Bool)

(assert (=> b!6877264 m!7604870))

(declare-fun m!7604872 () Bool)

(assert (=> b!6877264 m!7604872))

(assert (=> b!6877195 d!2159508))

(declare-fun d!2159510 () Bool)

(declare-fun lt!2459278 () Int)

(assert (=> d!2159510 (>= lt!2459278 0)))

(declare-fun e!4144898 () Int)

(assert (=> d!2159510 (= lt!2459278 e!4144898)))

(declare-fun c!1279576 () Bool)

(assert (=> d!2159510 (= c!1279576 ((_ is Cons!66369) (exprs!6625 c!9978)))))

(assert (=> d!2159510 (= (contextDepthTotal!430 c!9978) lt!2459278)))

(declare-fun b!6877270 () Bool)

(declare-fun regexDepthTotal!268 (Regex!16741) Int)

(assert (=> b!6877270 (= e!4144898 (+ (regexDepthTotal!268 (h!72817 (exprs!6625 c!9978))) (contextDepthTotal!430 (Context!12251 (t!380236 (exprs!6625 c!9978))))))))

(declare-fun b!6877271 () Bool)

(assert (=> b!6877271 (= e!4144898 1)))

(assert (= (and d!2159510 c!1279576) b!6877270))

(assert (= (and d!2159510 (not c!1279576)) b!6877271))

(declare-fun m!7604874 () Bool)

(assert (=> b!6877270 m!7604874))

(declare-fun m!7604876 () Bool)

(assert (=> b!6877270 m!7604876))

(assert (=> b!6877195 d!2159510))

(declare-fun d!2159512 () Bool)

(assert (=> d!2159512 (< (contextDepthTotal!430 c!9978) (zipperDepthTotal!458 (t!380237 zl!1632)))))

(declare-fun lt!2459281 () Unit!160218)

(declare-fun choose!51235 (List!66494 Context!12250) Unit!160218)

(assert (=> d!2159512 (= lt!2459281 (choose!51235 (t!380237 zl!1632) c!9978))))

(assert (=> d!2159512 (contains!20397 (t!380237 zl!1632) c!9978)))

(assert (=> d!2159512 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!62 (t!380237 zl!1632) c!9978) lt!2459281)))

(declare-fun bs!1837897 () Bool)

(assert (= bs!1837897 d!2159512))

(assert (=> bs!1837897 m!7604812))

(assert (=> bs!1837897 m!7604810))

(declare-fun m!7604878 () Bool)

(assert (=> bs!1837897 m!7604878))

(assert (=> bs!1837897 m!7604818))

(assert (=> b!6877195 d!2159512))

(declare-fun b!6877276 () Bool)

(declare-fun e!4144901 () Bool)

(declare-fun tp!1890118 () Bool)

(declare-fun tp!1890119 () Bool)

(assert (=> b!6877276 (= e!4144901 (and tp!1890118 tp!1890119))))

(assert (=> b!6877194 (= tp!1890098 e!4144901)))

(assert (= (and b!6877194 ((_ is Cons!66369) (exprs!6625 (h!72818 zl!1632)))) b!6877276))

(declare-fun b!6877277 () Bool)

(declare-fun e!4144902 () Bool)

(declare-fun tp!1890120 () Bool)

(declare-fun tp!1890121 () Bool)

(assert (=> b!6877277 (= e!4144902 (and tp!1890120 tp!1890121))))

(assert (=> b!6877197 (= tp!1890097 e!4144902)))

(assert (= (and b!6877197 ((_ is Cons!66369) (exprs!6625 c!9978))) b!6877277))

(declare-fun b!6877285 () Bool)

(declare-fun e!4144908 () Bool)

(declare-fun tp!1890126 () Bool)

(assert (=> b!6877285 (= e!4144908 tp!1890126)))

(declare-fun b!6877284 () Bool)

(declare-fun tp!1890127 () Bool)

(declare-fun e!4144907 () Bool)

(assert (=> b!6877284 (= e!4144907 (and (inv!85099 (h!72818 (t!380237 zl!1632))) e!4144908 tp!1890127))))

(assert (=> b!6877196 (= tp!1890099 e!4144907)))

(assert (= b!6877284 b!6877285))

(assert (= (and b!6877196 ((_ is Cons!66370) (t!380237 zl!1632))) b!6877284))

(declare-fun m!7604880 () Bool)

(assert (=> b!6877284 m!7604880))

(check-sat (not d!2159502) (not b!6877284) (not d!2159476) (not b!6877262) (not b!6877270) (not b!6877264) (not b!6877285) (not b!6877277) (not b!6877255) (not d!2159504) (not b!6877253) (not b!6877257) (not b!6877276) (not d!2159482) (not b!6877211) (not d!2159512))
(check-sat)
(get-model)

(declare-fun d!2159540 () Bool)

(declare-fun c!1279602 () Bool)

(assert (=> d!2159540 (= c!1279602 ((_ is Nil!66370) (t!380237 zl!1632)))))

(declare-fun e!4144951 () (InoxSet Context!12250))

(assert (=> d!2159540 (= (content!13037 (t!380237 zl!1632)) e!4144951)))

(declare-fun b!6877365 () Bool)

(assert (=> b!6877365 (= e!4144951 ((as const (Array Context!12250 Bool)) false))))

(declare-fun b!6877366 () Bool)

(assert (=> b!6877366 (= e!4144951 ((_ map or) (store ((as const (Array Context!12250 Bool)) false) (h!72818 (t!380237 zl!1632)) true) (content!13037 (t!380237 (t!380237 zl!1632)))))))

(assert (= (and d!2159540 c!1279602) b!6877365))

(assert (= (and d!2159540 (not c!1279602)) b!6877366))

(declare-fun m!7604930 () Bool)

(assert (=> b!6877366 m!7604930))

(declare-fun m!7604932 () Bool)

(assert (=> b!6877366 m!7604932))

(assert (=> d!2159476 d!2159540))

(assert (=> b!6877253 d!2159500))

(declare-fun d!2159546 () Bool)

(declare-fun c!1279603 () Bool)

(assert (=> d!2159546 (= c!1279603 ((_ is Nil!66370) zl!1632))))

(declare-fun e!4144952 () (InoxSet Context!12250))

(assert (=> d!2159546 (= (content!13037 zl!1632) e!4144952)))

(declare-fun b!6877367 () Bool)

(assert (=> b!6877367 (= e!4144952 ((as const (Array Context!12250 Bool)) false))))

(declare-fun b!6877368 () Bool)

(assert (=> b!6877368 (= e!4144952 ((_ map or) (store ((as const (Array Context!12250 Bool)) false) (h!72818 zl!1632) true) (content!13037 (t!380237 zl!1632))))))

(assert (= (and d!2159546 c!1279603) b!6877367))

(assert (= (and d!2159546 (not c!1279603)) b!6877368))

(declare-fun m!7604934 () Bool)

(assert (=> b!6877368 m!7604934))

(assert (=> b!6877368 m!7604828))

(assert (=> d!2159502 d!2159546))

(assert (=> b!6877257 d!2159476))

(declare-fun d!2159548 () Bool)

(declare-fun lt!2459291 () Bool)

(assert (=> d!2159548 (= lt!2459291 (select (content!13037 (t!380237 (t!380237 zl!1632))) c!9978))))

(declare-fun e!4144954 () Bool)

(assert (=> d!2159548 (= lt!2459291 e!4144954)))

(declare-fun res!2804095 () Bool)

(assert (=> d!2159548 (=> (not res!2804095) (not e!4144954))))

(assert (=> d!2159548 (= res!2804095 ((_ is Cons!66370) (t!380237 (t!380237 zl!1632))))))

(assert (=> d!2159548 (= (contains!20397 (t!380237 (t!380237 zl!1632)) c!9978) lt!2459291)))

(declare-fun b!6877369 () Bool)

(declare-fun e!4144953 () Bool)

(assert (=> b!6877369 (= e!4144954 e!4144953)))

(declare-fun res!2804096 () Bool)

(assert (=> b!6877369 (=> res!2804096 e!4144953)))

(assert (=> b!6877369 (= res!2804096 (= (h!72818 (t!380237 (t!380237 zl!1632))) c!9978))))

(declare-fun b!6877370 () Bool)

(assert (=> b!6877370 (= e!4144953 (contains!20397 (t!380237 (t!380237 (t!380237 zl!1632))) c!9978))))

(assert (= (and d!2159548 res!2804095) b!6877369))

(assert (= (and b!6877369 (not res!2804096)) b!6877370))

(assert (=> d!2159548 m!7604932))

(declare-fun m!7604936 () Bool)

(assert (=> d!2159548 m!7604936))

(declare-fun m!7604938 () Bool)

(assert (=> b!6877370 m!7604938))

(assert (=> b!6877211 d!2159548))

(declare-fun d!2159550 () Bool)

(declare-fun lt!2459292 () Int)

(assert (=> d!2159550 (>= lt!2459292 0)))

(declare-fun e!4144955 () Int)

(assert (=> d!2159550 (= lt!2459292 e!4144955)))

(declare-fun c!1279604 () Bool)

(assert (=> d!2159550 (= c!1279604 ((_ is Nil!66370) (t!380237 (t!380237 zl!1632))))))

(assert (=> d!2159550 (= (size!40731 (t!380237 (t!380237 zl!1632))) lt!2459292)))

(declare-fun b!6877371 () Bool)

(assert (=> b!6877371 (= e!4144955 0)))

(declare-fun b!6877372 () Bool)

(assert (=> b!6877372 (= e!4144955 (+ 1 (size!40731 (t!380237 (t!380237 (t!380237 zl!1632))))))))

(assert (= (and d!2159550 c!1279604) b!6877371))

(assert (= (and d!2159550 (not c!1279604)) b!6877372))

(declare-fun m!7604940 () Bool)

(assert (=> b!6877372 m!7604940))

(assert (=> b!6877255 d!2159550))

(declare-fun d!2159552 () Bool)

(declare-fun lt!2459295 () Int)

(assert (=> d!2159552 (> lt!2459295 0)))

(declare-fun e!4144964 () Int)

(assert (=> d!2159552 (= lt!2459295 e!4144964)))

(declare-fun c!1279615 () Bool)

(assert (=> d!2159552 (= c!1279615 ((_ is ElementMatch!16741) (h!72817 (exprs!6625 c!9978))))))

(assert (=> d!2159552 (= (regexDepthTotal!268 (h!72817 (exprs!6625 c!9978))) lt!2459295)))

(declare-fun b!6877389 () Bool)

(declare-fun e!4144965 () Int)

(declare-fun call!626131 () Int)

(assert (=> b!6877389 (= e!4144965 (+ 1 call!626131))))

(declare-fun bm!626126 () Bool)

(declare-fun call!626132 () Int)

(assert (=> bm!626126 (= call!626132 call!626131)))

(declare-fun b!6877390 () Bool)

(declare-fun e!4144967 () Int)

(assert (=> b!6877390 (= e!4144967 1)))

(declare-fun bm!626127 () Bool)

(declare-fun call!626133 () Int)

(declare-fun c!1279616 () Bool)

(assert (=> bm!626127 (= call!626133 (regexDepthTotal!268 (ite c!1279616 (regTwo!33995 (h!72817 (exprs!6625 c!9978))) (regOne!33994 (h!72817 (exprs!6625 c!9978))))))))

(declare-fun c!1279614 () Bool)

(declare-fun bm!626128 () Bool)

(assert (=> bm!626128 (= call!626131 (regexDepthTotal!268 (ite c!1279614 (reg!17070 (h!72817 (exprs!6625 c!9978))) (ite c!1279616 (regOne!33995 (h!72817 (exprs!6625 c!9978))) (regTwo!33994 (h!72817 (exprs!6625 c!9978)))))))))

(declare-fun b!6877391 () Bool)

(assert (=> b!6877391 (= e!4144964 e!4144965)))

(assert (=> b!6877391 (= c!1279614 ((_ is Star!16741) (h!72817 (exprs!6625 c!9978))))))

(declare-fun b!6877392 () Bool)

(assert (=> b!6877392 (= c!1279616 ((_ is Union!16741) (h!72817 (exprs!6625 c!9978))))))

(declare-fun e!4144966 () Int)

(assert (=> b!6877392 (= e!4144965 e!4144966)))

(declare-fun b!6877393 () Bool)

(assert (=> b!6877393 (= e!4144964 1)))

(declare-fun b!6877394 () Bool)

(assert (=> b!6877394 (= e!4144966 e!4144967)))

(declare-fun c!1279613 () Bool)

(assert (=> b!6877394 (= c!1279613 ((_ is Concat!25586) (h!72817 (exprs!6625 c!9978))))))

(declare-fun b!6877395 () Bool)

(assert (=> b!6877395 (= e!4144967 (+ 1 call!626133 call!626132))))

(declare-fun b!6877396 () Bool)

(assert (=> b!6877396 (= e!4144966 (+ 1 call!626132 call!626133))))

(assert (= (and d!2159552 c!1279615) b!6877393))

(assert (= (and d!2159552 (not c!1279615)) b!6877391))

(assert (= (and b!6877391 c!1279614) b!6877389))

(assert (= (and b!6877391 (not c!1279614)) b!6877392))

(assert (= (and b!6877392 c!1279616) b!6877396))

(assert (= (and b!6877392 (not c!1279616)) b!6877394))

(assert (= (and b!6877394 c!1279613) b!6877395))

(assert (= (and b!6877394 (not c!1279613)) b!6877390))

(assert (= (or b!6877396 b!6877395) bm!626126))

(assert (= (or b!6877396 b!6877395) bm!626127))

(assert (= (or b!6877389 bm!626126) bm!626128))

(declare-fun m!7604942 () Bool)

(assert (=> bm!626127 m!7604942))

(declare-fun m!7604944 () Bool)

(assert (=> bm!626128 m!7604944))

(assert (=> b!6877270 d!2159552))

(declare-fun d!2159554 () Bool)

(declare-fun lt!2459296 () Int)

(assert (=> d!2159554 (>= lt!2459296 0)))

(declare-fun e!4144968 () Int)

(assert (=> d!2159554 (= lt!2459296 e!4144968)))

(declare-fun c!1279617 () Bool)

(assert (=> d!2159554 (= c!1279617 ((_ is Cons!66369) (exprs!6625 (Context!12251 (t!380236 (exprs!6625 c!9978))))))))

(assert (=> d!2159554 (= (contextDepthTotal!430 (Context!12251 (t!380236 (exprs!6625 c!9978)))) lt!2459296)))

(declare-fun b!6877397 () Bool)

(assert (=> b!6877397 (= e!4144968 (+ (regexDepthTotal!268 (h!72817 (exprs!6625 (Context!12251 (t!380236 (exprs!6625 c!9978)))))) (contextDepthTotal!430 (Context!12251 (t!380236 (exprs!6625 (Context!12251 (t!380236 (exprs!6625 c!9978)))))))))))

(declare-fun b!6877398 () Bool)

(assert (=> b!6877398 (= e!4144968 1)))

(assert (= (and d!2159554 c!1279617) b!6877397))

(assert (= (and d!2159554 (not c!1279617)) b!6877398))

(declare-fun m!7604946 () Bool)

(assert (=> b!6877397 m!7604946))

(declare-fun m!7604948 () Bool)

(assert (=> b!6877397 m!7604948))

(assert (=> b!6877270 d!2159554))

(declare-fun d!2159556 () Bool)

(declare-fun lt!2459297 () Int)

(assert (=> d!2159556 (>= lt!2459297 0)))

(declare-fun e!4144969 () Int)

(assert (=> d!2159556 (= lt!2459297 e!4144969)))

(declare-fun c!1279618 () Bool)

(assert (=> d!2159556 (= c!1279618 ((_ is Cons!66369) (exprs!6625 (h!72818 zl!1632))))))

(assert (=> d!2159556 (= (contextDepthTotal!430 (h!72818 zl!1632)) lt!2459297)))

(declare-fun b!6877399 () Bool)

(assert (=> b!6877399 (= e!4144969 (+ (regexDepthTotal!268 (h!72817 (exprs!6625 (h!72818 zl!1632)))) (contextDepthTotal!430 (Context!12251 (t!380236 (exprs!6625 (h!72818 zl!1632)))))))))

(declare-fun b!6877400 () Bool)

(assert (=> b!6877400 (= e!4144969 1)))

(assert (= (and d!2159556 c!1279618) b!6877399))

(assert (= (and d!2159556 (not c!1279618)) b!6877400))

(declare-fun m!7604950 () Bool)

(assert (=> b!6877399 m!7604950))

(declare-fun m!7604952 () Bool)

(assert (=> b!6877399 m!7604952))

(assert (=> b!6877262 d!2159556))

(assert (=> b!6877262 d!2159508))

(declare-fun d!2159558 () Bool)

(declare-fun res!2804101 () Bool)

(declare-fun e!4144974 () Bool)

(assert (=> d!2159558 (=> res!2804101 e!4144974)))

(assert (=> d!2159558 (= res!2804101 ((_ is Nil!66369) (exprs!6625 (h!72818 zl!1632))))))

(assert (=> d!2159558 (= (forall!15933 (exprs!6625 (h!72818 zl!1632)) lambda!389345) e!4144974)))

(declare-fun b!6877405 () Bool)

(declare-fun e!4144975 () Bool)

(assert (=> b!6877405 (= e!4144974 e!4144975)))

(declare-fun res!2804102 () Bool)

(assert (=> b!6877405 (=> (not res!2804102) (not e!4144975))))

(declare-fun dynLambda!26568 (Int Regex!16741) Bool)

(assert (=> b!6877405 (= res!2804102 (dynLambda!26568 lambda!389345 (h!72817 (exprs!6625 (h!72818 zl!1632)))))))

(declare-fun b!6877406 () Bool)

(assert (=> b!6877406 (= e!4144975 (forall!15933 (t!380236 (exprs!6625 (h!72818 zl!1632))) lambda!389345))))

(assert (= (and d!2159558 (not res!2804101)) b!6877405))

(assert (= (and b!6877405 res!2804102) b!6877406))

(declare-fun b_lambda!260265 () Bool)

(assert (=> (not b_lambda!260265) (not b!6877405)))

(declare-fun m!7604954 () Bool)

(assert (=> b!6877405 m!7604954))

(declare-fun m!7604956 () Bool)

(assert (=> b!6877406 m!7604956))

(assert (=> d!2159482 d!2159558))

(declare-fun bs!1837904 () Bool)

(declare-fun d!2159560 () Bool)

(assert (= bs!1837904 (and d!2159560 d!2159482)))

(declare-fun lambda!389348 () Int)

(assert (=> bs!1837904 (= lambda!389348 lambda!389345)))

(declare-fun bs!1837905 () Bool)

(assert (= bs!1837905 (and d!2159560 d!2159504)))

(assert (=> bs!1837905 (= lambda!389348 lambda!389346)))

(assert (=> d!2159560 (= (inv!85099 (h!72818 (t!380237 zl!1632))) (forall!15933 (exprs!6625 (h!72818 (t!380237 zl!1632))) lambda!389348))))

(declare-fun bs!1837906 () Bool)

(assert (= bs!1837906 d!2159560))

(declare-fun m!7604958 () Bool)

(assert (=> bs!1837906 m!7604958))

(assert (=> b!6877284 d!2159560))

(declare-fun d!2159562 () Bool)

(declare-fun lt!2459298 () Int)

(assert (=> d!2159562 (>= lt!2459298 0)))

(declare-fun e!4144976 () Int)

(assert (=> d!2159562 (= lt!2459298 e!4144976)))

(declare-fun c!1279619 () Bool)

(assert (=> d!2159562 (= c!1279619 ((_ is Cons!66369) (exprs!6625 (h!72818 (t!380237 zl!1632)))))))

(assert (=> d!2159562 (= (contextDepthTotal!430 (h!72818 (t!380237 zl!1632))) lt!2459298)))

(declare-fun b!6877407 () Bool)

(assert (=> b!6877407 (= e!4144976 (+ (regexDepthTotal!268 (h!72817 (exprs!6625 (h!72818 (t!380237 zl!1632))))) (contextDepthTotal!430 (Context!12251 (t!380236 (exprs!6625 (h!72818 (t!380237 zl!1632))))))))))

(declare-fun b!6877408 () Bool)

(assert (=> b!6877408 (= e!4144976 1)))

(assert (= (and d!2159562 c!1279619) b!6877407))

(assert (= (and d!2159562 (not c!1279619)) b!6877408))

(declare-fun m!7604960 () Bool)

(assert (=> b!6877407 m!7604960))

(declare-fun m!7604962 () Bool)

(assert (=> b!6877407 m!7604962))

(assert (=> b!6877264 d!2159562))

(declare-fun d!2159564 () Bool)

(declare-fun lt!2459299 () Int)

(assert (=> d!2159564 (>= lt!2459299 0)))

(declare-fun e!4144977 () Int)

(assert (=> d!2159564 (= lt!2459299 e!4144977)))

(declare-fun c!1279620 () Bool)

(assert (=> d!2159564 (= c!1279620 ((_ is Cons!66370) (t!380237 (t!380237 zl!1632))))))

(assert (=> d!2159564 (= (zipperDepthTotal!458 (t!380237 (t!380237 zl!1632))) lt!2459299)))

(declare-fun b!6877409 () Bool)

(assert (=> b!6877409 (= e!4144977 (+ (contextDepthTotal!430 (h!72818 (t!380237 (t!380237 zl!1632)))) (zipperDepthTotal!458 (t!380237 (t!380237 (t!380237 zl!1632))))))))

(declare-fun b!6877410 () Bool)

(assert (=> b!6877410 (= e!4144977 0)))

(assert (= (and d!2159564 c!1279620) b!6877409))

(assert (= (and d!2159564 (not c!1279620)) b!6877410))

(declare-fun m!7604964 () Bool)

(assert (=> b!6877409 m!7604964))

(declare-fun m!7604966 () Bool)

(assert (=> b!6877409 m!7604966))

(assert (=> b!6877264 d!2159564))

(assert (=> d!2159512 d!2159510))

(assert (=> d!2159512 d!2159508))

(declare-fun d!2159566 () Bool)

(assert (=> d!2159566 (< (contextDepthTotal!430 c!9978) (zipperDepthTotal!458 (t!380237 zl!1632)))))

(assert (=> d!2159566 true))

(declare-fun _$54!228 () Unit!160218)

(assert (=> d!2159566 (= (choose!51235 (t!380237 zl!1632) c!9978) _$54!228)))

(declare-fun bs!1837907 () Bool)

(assert (= bs!1837907 d!2159566))

(assert (=> bs!1837907 m!7604812))

(assert (=> bs!1837907 m!7604810))

(assert (=> d!2159512 d!2159566))

(assert (=> d!2159512 d!2159476))

(declare-fun d!2159568 () Bool)

(declare-fun res!2804103 () Bool)

(declare-fun e!4144978 () Bool)

(assert (=> d!2159568 (=> res!2804103 e!4144978)))

(assert (=> d!2159568 (= res!2804103 ((_ is Nil!66369) (exprs!6625 c!9978)))))

(assert (=> d!2159568 (= (forall!15933 (exprs!6625 c!9978) lambda!389346) e!4144978)))

(declare-fun b!6877411 () Bool)

(declare-fun e!4144979 () Bool)

(assert (=> b!6877411 (= e!4144978 e!4144979)))

(declare-fun res!2804104 () Bool)

(assert (=> b!6877411 (=> (not res!2804104) (not e!4144979))))

(assert (=> b!6877411 (= res!2804104 (dynLambda!26568 lambda!389346 (h!72817 (exprs!6625 c!9978))))))

(declare-fun b!6877412 () Bool)

(assert (=> b!6877412 (= e!4144979 (forall!15933 (t!380236 (exprs!6625 c!9978)) lambda!389346))))

(assert (= (and d!2159568 (not res!2804103)) b!6877411))

(assert (= (and b!6877411 res!2804104) b!6877412))

(declare-fun b_lambda!260267 () Bool)

(assert (=> (not b_lambda!260267) (not b!6877411)))

(declare-fun m!7604968 () Bool)

(assert (=> b!6877411 m!7604968))

(declare-fun m!7604970 () Bool)

(assert (=> b!6877412 m!7604970))

(assert (=> d!2159504 d!2159568))

(declare-fun b!6877413 () Bool)

(declare-fun e!4144980 () Bool)

(declare-fun tp!1890156 () Bool)

(declare-fun tp!1890157 () Bool)

(assert (=> b!6877413 (= e!4144980 (and tp!1890156 tp!1890157))))

(assert (=> b!6877285 (= tp!1890126 e!4144980)))

(assert (= (and b!6877285 ((_ is Cons!66369) (exprs!6625 (h!72818 (t!380237 zl!1632))))) b!6877413))

(declare-fun b!6877427 () Bool)

(declare-fun e!4144983 () Bool)

(declare-fun tp!1890168 () Bool)

(declare-fun tp!1890169 () Bool)

(assert (=> b!6877427 (= e!4144983 (and tp!1890168 tp!1890169))))

(assert (=> b!6877276 (= tp!1890118 e!4144983)))

(declare-fun b!6877424 () Bool)

(declare-fun tp_is_empty!42715 () Bool)

(assert (=> b!6877424 (= e!4144983 tp_is_empty!42715)))

(declare-fun b!6877425 () Bool)

(declare-fun tp!1890171 () Bool)

(declare-fun tp!1890170 () Bool)

(assert (=> b!6877425 (= e!4144983 (and tp!1890171 tp!1890170))))

(declare-fun b!6877426 () Bool)

(declare-fun tp!1890172 () Bool)

(assert (=> b!6877426 (= e!4144983 tp!1890172)))

(assert (= (and b!6877276 ((_ is ElementMatch!16741) (h!72817 (exprs!6625 (h!72818 zl!1632))))) b!6877424))

(assert (= (and b!6877276 ((_ is Concat!25586) (h!72817 (exprs!6625 (h!72818 zl!1632))))) b!6877425))

(assert (= (and b!6877276 ((_ is Star!16741) (h!72817 (exprs!6625 (h!72818 zl!1632))))) b!6877426))

(assert (= (and b!6877276 ((_ is Union!16741) (h!72817 (exprs!6625 (h!72818 zl!1632))))) b!6877427))

(declare-fun b!6877428 () Bool)

(declare-fun e!4144984 () Bool)

(declare-fun tp!1890173 () Bool)

(declare-fun tp!1890174 () Bool)

(assert (=> b!6877428 (= e!4144984 (and tp!1890173 tp!1890174))))

(assert (=> b!6877276 (= tp!1890119 e!4144984)))

(assert (= (and b!6877276 ((_ is Cons!66369) (t!380236 (exprs!6625 (h!72818 zl!1632))))) b!6877428))

(declare-fun b!6877430 () Bool)

(declare-fun e!4144986 () Bool)

(declare-fun tp!1890175 () Bool)

(assert (=> b!6877430 (= e!4144986 tp!1890175)))

(declare-fun e!4144985 () Bool)

(declare-fun b!6877429 () Bool)

(declare-fun tp!1890176 () Bool)

(assert (=> b!6877429 (= e!4144985 (and (inv!85099 (h!72818 (t!380237 (t!380237 zl!1632)))) e!4144986 tp!1890176))))

(assert (=> b!6877284 (= tp!1890127 e!4144985)))

(assert (= b!6877429 b!6877430))

(assert (= (and b!6877284 ((_ is Cons!66370) (t!380237 (t!380237 zl!1632)))) b!6877429))

(declare-fun m!7604972 () Bool)

(assert (=> b!6877429 m!7604972))

(declare-fun b!6877434 () Bool)

(declare-fun e!4144987 () Bool)

(declare-fun tp!1890177 () Bool)

(declare-fun tp!1890178 () Bool)

(assert (=> b!6877434 (= e!4144987 (and tp!1890177 tp!1890178))))

(assert (=> b!6877277 (= tp!1890120 e!4144987)))

(declare-fun b!6877431 () Bool)

(assert (=> b!6877431 (= e!4144987 tp_is_empty!42715)))

(declare-fun b!6877432 () Bool)

(declare-fun tp!1890180 () Bool)

(declare-fun tp!1890179 () Bool)

(assert (=> b!6877432 (= e!4144987 (and tp!1890180 tp!1890179))))

(declare-fun b!6877433 () Bool)

(declare-fun tp!1890181 () Bool)

(assert (=> b!6877433 (= e!4144987 tp!1890181)))

(assert (= (and b!6877277 ((_ is ElementMatch!16741) (h!72817 (exprs!6625 c!9978)))) b!6877431))

(assert (= (and b!6877277 ((_ is Concat!25586) (h!72817 (exprs!6625 c!9978)))) b!6877432))

(assert (= (and b!6877277 ((_ is Star!16741) (h!72817 (exprs!6625 c!9978)))) b!6877433))

(assert (= (and b!6877277 ((_ is Union!16741) (h!72817 (exprs!6625 c!9978)))) b!6877434))

(declare-fun b!6877435 () Bool)

(declare-fun e!4144988 () Bool)

(declare-fun tp!1890182 () Bool)

(declare-fun tp!1890183 () Bool)

(assert (=> b!6877435 (= e!4144988 (and tp!1890182 tp!1890183))))

(assert (=> b!6877277 (= tp!1890121 e!4144988)))

(assert (= (and b!6877277 ((_ is Cons!66369) (t!380236 (exprs!6625 c!9978)))) b!6877435))

(declare-fun b_lambda!260269 () Bool)

(assert (= b_lambda!260265 (or d!2159482 b_lambda!260269)))

(declare-fun bs!1837908 () Bool)

(declare-fun d!2159570 () Bool)

(assert (= bs!1837908 (and d!2159570 d!2159482)))

(declare-fun validRegex!8455 (Regex!16741) Bool)

(assert (=> bs!1837908 (= (dynLambda!26568 lambda!389345 (h!72817 (exprs!6625 (h!72818 zl!1632)))) (validRegex!8455 (h!72817 (exprs!6625 (h!72818 zl!1632)))))))

(declare-fun m!7604974 () Bool)

(assert (=> bs!1837908 m!7604974))

(assert (=> b!6877405 d!2159570))

(declare-fun b_lambda!260271 () Bool)

(assert (= b_lambda!260267 (or d!2159504 b_lambda!260271)))

(declare-fun bs!1837909 () Bool)

(declare-fun d!2159572 () Bool)

(assert (= bs!1837909 (and d!2159572 d!2159504)))

(assert (=> bs!1837909 (= (dynLambda!26568 lambda!389346 (h!72817 (exprs!6625 c!9978))) (validRegex!8455 (h!72817 (exprs!6625 c!9978))))))

(declare-fun m!7604976 () Bool)

(assert (=> bs!1837909 m!7604976))

(assert (=> b!6877411 d!2159572))

(check-sat tp_is_empty!42715 (not b!6877428) (not b!6877432) (not b!6877434) (not b!6877409) (not b!6877372) (not b!6877412) (not b!6877425) (not b!6877413) (not bm!626128) (not bs!1837908) (not b!6877368) (not b!6877366) (not b_lambda!260271) (not d!2159566) (not b!6877435) (not b!6877407) (not bm!626127) (not b!6877429) (not b!6877399) (not b!6877397) (not b_lambda!260269) (not b!6877406) (not b!6877426) (not b!6877430) (not d!2159560) (not b!6877427) (not b!6877433) (not d!2159548) (not b!6877370) (not bs!1837909))
(check-sat)
