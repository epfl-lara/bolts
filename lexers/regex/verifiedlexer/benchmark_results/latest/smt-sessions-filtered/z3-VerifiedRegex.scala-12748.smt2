; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704708 () Bool)

(assert start!704708)

(declare-fun b!7246422 () Bool)

(declare-fun e!4344804 () Bool)

(declare-fun tp_is_empty!46675 () Bool)

(declare-fun tp!2036479 () Bool)

(assert (=> b!7246422 (= e!4344804 (and tp_is_empty!46675 tp!2036479))))

(declare-fun b!7246423 () Bool)

(declare-fun e!4344802 () Bool)

(declare-datatypes ((C!37484 0))(
  ( (C!37485 (val!28690 Int)) )
))
(declare-datatypes ((Regex!18605 0))(
  ( (ElementMatch!18605 (c!1346211 C!37484)) (Concat!27450 (regOne!37722 Regex!18605) (regTwo!37722 Regex!18605)) (EmptyExpr!18605) (Star!18605 (reg!18934 Regex!18605)) (EmptyLang!18605) (Union!18605 (regOne!37723 Regex!18605) (regTwo!37723 Regex!18605)) )
))
(declare-datatypes ((List!70408 0))(
  ( (Nil!70284) (Cons!70284 (h!76732 Regex!18605) (t!384460 List!70408)) )
))
(declare-datatypes ((Context!15090 0))(
  ( (Context!15091 (exprs!8045 List!70408)) )
))
(declare-fun ct1!232 () Context!15090)

(declare-fun ct2!328 () Context!15090)

(declare-fun inv!89522 (Context!15090) Bool)

(declare-fun ++!16483 (List!70408 List!70408) List!70408)

(assert (=> b!7246423 (= e!4344802 (not (inv!89522 (Context!15091 (++!16483 (exprs!8045 ct1!232) (exprs!8045 ct2!328))))))))

(declare-fun lambda!443191 () Int)

(declare-datatypes ((Unit!163793 0))(
  ( (Unit!163794) )
))
(declare-fun lt!2582827 () Unit!163793)

(declare-fun lemmaConcatPreservesForall!1412 (List!70408 List!70408 Int) Unit!163793)

(assert (=> b!7246423 (= lt!2582827 (lemmaConcatPreservesForall!1412 (exprs!8045 ct1!232) (exprs!8045 ct2!328) lambda!443191))))

(declare-fun b!7246424 () Bool)

(declare-fun e!4344803 () Bool)

(declare-fun tp!2036477 () Bool)

(assert (=> b!7246424 (= e!4344803 tp!2036477)))

(declare-fun b!7246425 () Bool)

(declare-fun e!4344801 () Bool)

(declare-fun tp!2036478 () Bool)

(assert (=> b!7246425 (= e!4344801 tp!2036478)))

(declare-fun res!2939296 () Bool)

(assert (=> start!704708 (=> (not res!2939296) (not e!4344802))))

(declare-datatypes ((List!70409 0))(
  ( (Nil!70285) (Cons!70285 (h!76733 C!37484) (t!384461 List!70409)) )
))
(declare-fun s1!1971 () List!70409)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3515 ((InoxSet Context!15090) List!70409) Bool)

(assert (=> start!704708 (= res!2939296 (matchZipper!3515 (store ((as const (Array Context!15090 Bool)) false) ct1!232 true) s1!1971))))

(assert (=> start!704708 e!4344802))

(assert (=> start!704708 (and (inv!89522 ct1!232) e!4344803)))

(declare-fun e!4344800 () Bool)

(assert (=> start!704708 e!4344800))

(assert (=> start!704708 (and (inv!89522 ct2!328) e!4344801)))

(assert (=> start!704708 e!4344804))

(declare-fun b!7246426 () Bool)

(declare-fun res!2939297 () Bool)

(assert (=> b!7246426 (=> (not res!2939297) (not e!4344802))))

(declare-fun s2!1849 () List!70409)

(assert (=> b!7246426 (= res!2939297 (matchZipper!3515 (store ((as const (Array Context!15090 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7246427 () Bool)

(declare-fun tp!2036480 () Bool)

(assert (=> b!7246427 (= e!4344800 (and tp_is_empty!46675 tp!2036480))))

(assert (= (and start!704708 res!2939296) b!7246426))

(assert (= (and b!7246426 res!2939297) b!7246423))

(assert (= start!704708 b!7246424))

(get-info :version)

(assert (= (and start!704708 ((_ is Cons!70285) s1!1971)) b!7246427))

(assert (= start!704708 b!7246425))

(assert (= (and start!704708 ((_ is Cons!70285) s2!1849)) b!7246422))

(declare-fun m!7923232 () Bool)

(assert (=> b!7246423 m!7923232))

(declare-fun m!7923234 () Bool)

(assert (=> b!7246423 m!7923234))

(declare-fun m!7923236 () Bool)

(assert (=> b!7246423 m!7923236))

(declare-fun m!7923238 () Bool)

(assert (=> start!704708 m!7923238))

(assert (=> start!704708 m!7923238))

(declare-fun m!7923240 () Bool)

(assert (=> start!704708 m!7923240))

(declare-fun m!7923242 () Bool)

(assert (=> start!704708 m!7923242))

(declare-fun m!7923244 () Bool)

(assert (=> start!704708 m!7923244))

(declare-fun m!7923246 () Bool)

(assert (=> b!7246426 m!7923246))

(assert (=> b!7246426 m!7923246))

(declare-fun m!7923248 () Bool)

(assert (=> b!7246426 m!7923248))

(check-sat (not b!7246427) tp_is_empty!46675 (not b!7246425) (not b!7246424) (not b!7246423) (not b!7246426) (not b!7246422) (not start!704708))
(check-sat)
(get-model)

(declare-fun bs!1905278 () Bool)

(declare-fun d!2251907 () Bool)

(assert (= bs!1905278 (and d!2251907 b!7246423)))

(declare-fun lambda!443194 () Int)

(assert (=> bs!1905278 (= lambda!443194 lambda!443191)))

(declare-fun forall!17448 (List!70408 Int) Bool)

(assert (=> d!2251907 (= (inv!89522 (Context!15091 (++!16483 (exprs!8045 ct1!232) (exprs!8045 ct2!328)))) (forall!17448 (exprs!8045 (Context!15091 (++!16483 (exprs!8045 ct1!232) (exprs!8045 ct2!328)))) lambda!443194))))

(declare-fun bs!1905279 () Bool)

(assert (= bs!1905279 d!2251907))

(declare-fun m!7923262 () Bool)

(assert (=> bs!1905279 m!7923262))

(assert (=> b!7246423 d!2251907))

(declare-fun e!4344816 () Bool)

(declare-fun b!7246451 () Bool)

(declare-fun lt!2582832 () List!70408)

(assert (=> b!7246451 (= e!4344816 (or (not (= (exprs!8045 ct2!328) Nil!70284)) (= lt!2582832 (exprs!8045 ct1!232))))))

(declare-fun b!7246449 () Bool)

(declare-fun e!4344815 () List!70408)

(assert (=> b!7246449 (= e!4344815 (Cons!70284 (h!76732 (exprs!8045 ct1!232)) (++!16483 (t!384460 (exprs!8045 ct1!232)) (exprs!8045 ct2!328))))))

(declare-fun b!7246450 () Bool)

(declare-fun res!2939302 () Bool)

(assert (=> b!7246450 (=> (not res!2939302) (not e!4344816))))

(declare-fun size!41673 (List!70408) Int)

(assert (=> b!7246450 (= res!2939302 (= (size!41673 lt!2582832) (+ (size!41673 (exprs!8045 ct1!232)) (size!41673 (exprs!8045 ct2!328)))))))

(declare-fun b!7246448 () Bool)

(assert (=> b!7246448 (= e!4344815 (exprs!8045 ct2!328))))

(declare-fun d!2251911 () Bool)

(assert (=> d!2251911 e!4344816))

(declare-fun res!2939303 () Bool)

(assert (=> d!2251911 (=> (not res!2939303) (not e!4344816))))

(declare-fun content!14548 (List!70408) (InoxSet Regex!18605))

(assert (=> d!2251911 (= res!2939303 (= (content!14548 lt!2582832) ((_ map or) (content!14548 (exprs!8045 ct1!232)) (content!14548 (exprs!8045 ct2!328)))))))

(assert (=> d!2251911 (= lt!2582832 e!4344815)))

(declare-fun c!1346220 () Bool)

(assert (=> d!2251911 (= c!1346220 ((_ is Nil!70284) (exprs!8045 ct1!232)))))

(assert (=> d!2251911 (= (++!16483 (exprs!8045 ct1!232) (exprs!8045 ct2!328)) lt!2582832)))

(assert (= (and d!2251911 c!1346220) b!7246448))

(assert (= (and d!2251911 (not c!1346220)) b!7246449))

(assert (= (and d!2251911 res!2939303) b!7246450))

(assert (= (and b!7246450 res!2939302) b!7246451))

(declare-fun m!7923282 () Bool)

(assert (=> b!7246449 m!7923282))

(declare-fun m!7923284 () Bool)

(assert (=> b!7246450 m!7923284))

(declare-fun m!7923286 () Bool)

(assert (=> b!7246450 m!7923286))

(declare-fun m!7923288 () Bool)

(assert (=> b!7246450 m!7923288))

(declare-fun m!7923290 () Bool)

(assert (=> d!2251911 m!7923290))

(declare-fun m!7923292 () Bool)

(assert (=> d!2251911 m!7923292))

(declare-fun m!7923294 () Bool)

(assert (=> d!2251911 m!7923294))

(assert (=> b!7246423 d!2251911))

(declare-fun d!2251921 () Bool)

(assert (=> d!2251921 (forall!17448 (++!16483 (exprs!8045 ct1!232) (exprs!8045 ct2!328)) lambda!443191)))

(declare-fun lt!2582836 () Unit!163793)

(declare-fun choose!55907 (List!70408 List!70408 Int) Unit!163793)

(assert (=> d!2251921 (= lt!2582836 (choose!55907 (exprs!8045 ct1!232) (exprs!8045 ct2!328) lambda!443191))))

(assert (=> d!2251921 (forall!17448 (exprs!8045 ct1!232) lambda!443191)))

(assert (=> d!2251921 (= (lemmaConcatPreservesForall!1412 (exprs!8045 ct1!232) (exprs!8045 ct2!328) lambda!443191) lt!2582836)))

(declare-fun bs!1905289 () Bool)

(assert (= bs!1905289 d!2251921))

(assert (=> bs!1905289 m!7923232))

(assert (=> bs!1905289 m!7923232))

(declare-fun m!7923310 () Bool)

(assert (=> bs!1905289 m!7923310))

(declare-fun m!7923312 () Bool)

(assert (=> bs!1905289 m!7923312))

(declare-fun m!7923314 () Bool)

(assert (=> bs!1905289 m!7923314))

(assert (=> b!7246423 d!2251921))

(declare-fun d!2251925 () Bool)

(declare-fun c!1346224 () Bool)

(declare-fun isEmpty!40485 (List!70409) Bool)

(assert (=> d!2251925 (= c!1346224 (isEmpty!40485 s2!1849))))

(declare-fun e!4344831 () Bool)

(assert (=> d!2251925 (= (matchZipper!3515 (store ((as const (Array Context!15090 Bool)) false) ct2!328 true) s2!1849) e!4344831)))

(declare-fun b!7246476 () Bool)

(declare-fun nullableZipper!2888 ((InoxSet Context!15090)) Bool)

(assert (=> b!7246476 (= e!4344831 (nullableZipper!2888 (store ((as const (Array Context!15090 Bool)) false) ct2!328 true)))))

(declare-fun b!7246477 () Bool)

(declare-fun derivationStepZipper!3393 ((InoxSet Context!15090) C!37484) (InoxSet Context!15090))

(declare-fun head!14876 (List!70409) C!37484)

(declare-fun tail!14278 (List!70409) List!70409)

(assert (=> b!7246477 (= e!4344831 (matchZipper!3515 (derivationStepZipper!3393 (store ((as const (Array Context!15090 Bool)) false) ct2!328 true) (head!14876 s2!1849)) (tail!14278 s2!1849)))))

(assert (= (and d!2251925 c!1346224) b!7246476))

(assert (= (and d!2251925 (not c!1346224)) b!7246477))

(declare-fun m!7923322 () Bool)

(assert (=> d!2251925 m!7923322))

(assert (=> b!7246476 m!7923246))

(declare-fun m!7923324 () Bool)

(assert (=> b!7246476 m!7923324))

(declare-fun m!7923326 () Bool)

(assert (=> b!7246477 m!7923326))

(assert (=> b!7246477 m!7923246))

(assert (=> b!7246477 m!7923326))

(declare-fun m!7923328 () Bool)

(assert (=> b!7246477 m!7923328))

(declare-fun m!7923330 () Bool)

(assert (=> b!7246477 m!7923330))

(assert (=> b!7246477 m!7923328))

(assert (=> b!7246477 m!7923330))

(declare-fun m!7923332 () Bool)

(assert (=> b!7246477 m!7923332))

(assert (=> b!7246426 d!2251925))

(declare-fun d!2251927 () Bool)

(declare-fun c!1346225 () Bool)

(assert (=> d!2251927 (= c!1346225 (isEmpty!40485 s1!1971))))

(declare-fun e!4344832 () Bool)

(assert (=> d!2251927 (= (matchZipper!3515 (store ((as const (Array Context!15090 Bool)) false) ct1!232 true) s1!1971) e!4344832)))

(declare-fun b!7246478 () Bool)

(assert (=> b!7246478 (= e!4344832 (nullableZipper!2888 (store ((as const (Array Context!15090 Bool)) false) ct1!232 true)))))

(declare-fun b!7246479 () Bool)

(assert (=> b!7246479 (= e!4344832 (matchZipper!3515 (derivationStepZipper!3393 (store ((as const (Array Context!15090 Bool)) false) ct1!232 true) (head!14876 s1!1971)) (tail!14278 s1!1971)))))

(assert (= (and d!2251927 c!1346225) b!7246478))

(assert (= (and d!2251927 (not c!1346225)) b!7246479))

(declare-fun m!7923334 () Bool)

(assert (=> d!2251927 m!7923334))

(assert (=> b!7246478 m!7923238))

(declare-fun m!7923336 () Bool)

(assert (=> b!7246478 m!7923336))

(declare-fun m!7923338 () Bool)

(assert (=> b!7246479 m!7923338))

(assert (=> b!7246479 m!7923238))

(assert (=> b!7246479 m!7923338))

(declare-fun m!7923340 () Bool)

(assert (=> b!7246479 m!7923340))

(declare-fun m!7923342 () Bool)

(assert (=> b!7246479 m!7923342))

(assert (=> b!7246479 m!7923340))

(assert (=> b!7246479 m!7923342))

(declare-fun m!7923344 () Bool)

(assert (=> b!7246479 m!7923344))

(assert (=> start!704708 d!2251927))

(declare-fun bs!1905291 () Bool)

(declare-fun d!2251929 () Bool)

(assert (= bs!1905291 (and d!2251929 b!7246423)))

(declare-fun lambda!443200 () Int)

(assert (=> bs!1905291 (= lambda!443200 lambda!443191)))

(declare-fun bs!1905292 () Bool)

(assert (= bs!1905292 (and d!2251929 d!2251907)))

(assert (=> bs!1905292 (= lambda!443200 lambda!443194)))

(assert (=> d!2251929 (= (inv!89522 ct1!232) (forall!17448 (exprs!8045 ct1!232) lambda!443200))))

(declare-fun bs!1905293 () Bool)

(assert (= bs!1905293 d!2251929))

(declare-fun m!7923346 () Bool)

(assert (=> bs!1905293 m!7923346))

(assert (=> start!704708 d!2251929))

(declare-fun bs!1905294 () Bool)

(declare-fun d!2251931 () Bool)

(assert (= bs!1905294 (and d!2251931 b!7246423)))

(declare-fun lambda!443201 () Int)

(assert (=> bs!1905294 (= lambda!443201 lambda!443191)))

(declare-fun bs!1905295 () Bool)

(assert (= bs!1905295 (and d!2251931 d!2251907)))

(assert (=> bs!1905295 (= lambda!443201 lambda!443194)))

(declare-fun bs!1905296 () Bool)

(assert (= bs!1905296 (and d!2251931 d!2251929)))

(assert (=> bs!1905296 (= lambda!443201 lambda!443200)))

(assert (=> d!2251931 (= (inv!89522 ct2!328) (forall!17448 (exprs!8045 ct2!328) lambda!443201))))

(declare-fun bs!1905297 () Bool)

(assert (= bs!1905297 d!2251931))

(declare-fun m!7923348 () Bool)

(assert (=> bs!1905297 m!7923348))

(assert (=> start!704708 d!2251931))

(declare-fun b!7246484 () Bool)

(declare-fun e!4344835 () Bool)

(declare-fun tp!2036497 () Bool)

(declare-fun tp!2036498 () Bool)

(assert (=> b!7246484 (= e!4344835 (and tp!2036497 tp!2036498))))

(assert (=> b!7246424 (= tp!2036477 e!4344835)))

(assert (= (and b!7246424 ((_ is Cons!70284) (exprs!8045 ct1!232))) b!7246484))

(declare-fun b!7246485 () Bool)

(declare-fun e!4344836 () Bool)

(declare-fun tp!2036499 () Bool)

(declare-fun tp!2036500 () Bool)

(assert (=> b!7246485 (= e!4344836 (and tp!2036499 tp!2036500))))

(assert (=> b!7246425 (= tp!2036478 e!4344836)))

(assert (= (and b!7246425 ((_ is Cons!70284) (exprs!8045 ct2!328))) b!7246485))

(declare-fun b!7246490 () Bool)

(declare-fun e!4344839 () Bool)

(declare-fun tp!2036503 () Bool)

(assert (=> b!7246490 (= e!4344839 (and tp_is_empty!46675 tp!2036503))))

(assert (=> b!7246422 (= tp!2036479 e!4344839)))

(assert (= (and b!7246422 ((_ is Cons!70285) (t!384461 s2!1849))) b!7246490))

(declare-fun b!7246491 () Bool)

(declare-fun e!4344840 () Bool)

(declare-fun tp!2036504 () Bool)

(assert (=> b!7246491 (= e!4344840 (and tp_is_empty!46675 tp!2036504))))

(assert (=> b!7246427 (= tp!2036480 e!4344840)))

(assert (= (and b!7246427 ((_ is Cons!70285) (t!384461 s1!1971))) b!7246491))

(check-sat (not d!2251921) (not d!2251907) (not b!7246449) (not d!2251931) (not b!7246484) (not b!7246479) (not b!7246491) (not b!7246477) (not d!2251911) (not b!7246485) (not b!7246476) (not d!2251927) tp_is_empty!46675 (not b!7246478) (not b!7246450) (not d!2251925) (not b!7246490) (not d!2251929))
(check-sat)
