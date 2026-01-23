; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281494 () Bool)

(assert start!281494)

(declare-fun b!2883365 () Bool)

(declare-fun e!1823760 () Bool)

(declare-datatypes ((C!17768 0))(
  ( (C!17769 (val!10918 Int)) )
))
(declare-datatypes ((Regex!8793 0))(
  ( (ElementMatch!8793 (c!468394 C!17768)) (Concat!14114 (regOne!18098 Regex!8793) (regTwo!18098 Regex!8793)) (EmptyExpr!8793) (Star!8793 (reg!9122 Regex!8793)) (EmptyLang!8793) (Union!8793 (regOne!18099 Regex!8793) (regTwo!18099 Regex!8793)) )
))
(declare-fun r!23079 () Regex!8793)

(declare-fun validRegex!3566 (Regex!8793) Bool)

(assert (=> b!2883365 (= e!1823760 (validRegex!3566 (regTwo!18098 r!23079)))))

(declare-fun b!2883366 () Bool)

(declare-fun e!1823763 () Bool)

(declare-fun tp!924845 () Bool)

(assert (=> b!2883366 (= e!1823763 tp!924845)))

(declare-fun b!2883367 () Bool)

(declare-fun e!1823761 () Bool)

(declare-fun e!1823759 () Bool)

(assert (=> b!2883367 (= e!1823761 e!1823759)))

(declare-fun res!1194674 () Bool)

(assert (=> b!2883367 (=> (not res!1194674) (not e!1823759))))

(declare-datatypes ((List!34594 0))(
  ( (Nil!34470) (Cons!34470 (h!39890 C!17768) (t!233637 List!34594)) )
))
(declare-datatypes ((Option!6466 0))(
  ( (None!6465) (Some!6465 (v!34591 List!34594)) )
))
(declare-fun lt!1020254 () Option!6466)

(get-info :version)

(assert (=> b!2883367 (= res!1194674 ((_ is Some!6465) lt!1020254))))

(declare-fun getLanguageWitness!500 (Regex!8793) Option!6466)

(assert (=> b!2883367 (= lt!1020254 (getLanguageWitness!500 (regOne!18098 r!23079)))))

(declare-fun b!2883368 () Bool)

(declare-fun res!1194675 () Bool)

(assert (=> b!2883368 (=> (not res!1194675) (not e!1823761))))

(declare-fun isDefined!5030 (Option!6466) Bool)

(assert (=> b!2883368 (= res!1194675 (isDefined!5030 (getLanguageWitness!500 r!23079)))))

(declare-fun b!2883369 () Bool)

(declare-fun tp!924846 () Bool)

(declare-fun tp!924849 () Bool)

(assert (=> b!2883369 (= e!1823763 (and tp!924846 tp!924849))))

(declare-fun b!2883370 () Bool)

(declare-fun e!1823762 () Bool)

(assert (=> b!2883370 (= e!1823759 e!1823762)))

(declare-fun res!1194676 () Bool)

(assert (=> b!2883370 (=> (not res!1194676) (not e!1823762))))

(declare-fun lt!1020252 () Option!6466)

(assert (=> b!2883370 (= res!1194676 ((_ is Some!6465) lt!1020252))))

(assert (=> b!2883370 (= lt!1020252 (getLanguageWitness!500 (regTwo!18098 r!23079)))))

(declare-fun b!2883371 () Bool)

(declare-fun tp!924848 () Bool)

(declare-fun tp!924847 () Bool)

(assert (=> b!2883371 (= e!1823763 (and tp!924848 tp!924847))))

(declare-fun res!1194679 () Bool)

(assert (=> start!281494 (=> (not res!1194679) (not e!1823761))))

(assert (=> start!281494 (= res!1194679 (validRegex!3566 r!23079))))

(assert (=> start!281494 e!1823761))

(assert (=> start!281494 e!1823763))

(declare-fun b!2883372 () Bool)

(declare-fun tp_is_empty!15173 () Bool)

(assert (=> b!2883372 (= e!1823763 tp_is_empty!15173)))

(declare-fun b!2883373 () Bool)

(declare-fun res!1194678 () Bool)

(assert (=> b!2883373 (=> (not res!1194678) (not e!1823761))))

(assert (=> b!2883373 (= res!1194678 (and (not ((_ is EmptyExpr!8793) r!23079)) (not ((_ is EmptyLang!8793) r!23079)) (not ((_ is ElementMatch!8793) r!23079)) (not ((_ is Star!8793) r!23079)) (not ((_ is Union!8793) r!23079))))))

(declare-fun b!2883374 () Bool)

(assert (=> b!2883374 (= e!1823762 (not e!1823760))))

(declare-fun res!1194677 () Bool)

(assert (=> b!2883374 (=> res!1194677 e!1823760)))

(declare-fun matchR!3775 (Regex!8793 List!34594) Bool)

(assert (=> b!2883374 (= res!1194677 (not (matchR!3775 (regOne!18098 r!23079) (v!34591 lt!1020254))))))

(declare-fun get!10404 (Option!6466) List!34594)

(assert (=> b!2883374 (matchR!3775 (regTwo!18098 r!23079) (get!10404 lt!1020252))))

(declare-datatypes ((Unit!48055 0))(
  ( (Unit!48056) )
))
(declare-fun lt!1020251 () Unit!48055)

(declare-fun lemmaGetWitnessMatches!82 (Regex!8793) Unit!48055)

(assert (=> b!2883374 (= lt!1020251 (lemmaGetWitnessMatches!82 (regTwo!18098 r!23079)))))

(assert (=> b!2883374 (matchR!3775 (regOne!18098 r!23079) (get!10404 lt!1020254))))

(declare-fun lt!1020253 () Unit!48055)

(assert (=> b!2883374 (= lt!1020253 (lemmaGetWitnessMatches!82 (regOne!18098 r!23079)))))

(assert (= (and start!281494 res!1194679) b!2883368))

(assert (= (and b!2883368 res!1194675) b!2883373))

(assert (= (and b!2883373 res!1194678) b!2883367))

(assert (= (and b!2883367 res!1194674) b!2883370))

(assert (= (and b!2883370 res!1194676) b!2883374))

(assert (= (and b!2883374 (not res!1194677)) b!2883365))

(assert (= (and start!281494 ((_ is ElementMatch!8793) r!23079)) b!2883372))

(assert (= (and start!281494 ((_ is Concat!14114) r!23079)) b!2883369))

(assert (= (and start!281494 ((_ is Star!8793) r!23079)) b!2883366))

(assert (= (and start!281494 ((_ is Union!8793) r!23079)) b!2883371))

(declare-fun m!3299989 () Bool)

(assert (=> b!2883374 m!3299989))

(declare-fun m!3299991 () Bool)

(assert (=> b!2883374 m!3299991))

(declare-fun m!3299993 () Bool)

(assert (=> b!2883374 m!3299993))

(declare-fun m!3299995 () Bool)

(assert (=> b!2883374 m!3299995))

(declare-fun m!3299997 () Bool)

(assert (=> b!2883374 m!3299997))

(declare-fun m!3299999 () Bool)

(assert (=> b!2883374 m!3299999))

(declare-fun m!3300001 () Bool)

(assert (=> b!2883374 m!3300001))

(assert (=> b!2883374 m!3299991))

(assert (=> b!2883374 m!3299995))

(declare-fun m!3300003 () Bool)

(assert (=> b!2883367 m!3300003))

(declare-fun m!3300005 () Bool)

(assert (=> b!2883365 m!3300005))

(declare-fun m!3300007 () Bool)

(assert (=> b!2883370 m!3300007))

(declare-fun m!3300009 () Bool)

(assert (=> start!281494 m!3300009))

(declare-fun m!3300011 () Bool)

(assert (=> b!2883368 m!3300011))

(assert (=> b!2883368 m!3300011))

(declare-fun m!3300013 () Bool)

(assert (=> b!2883368 m!3300013))

(check-sat (not b!2883367) (not b!2883370) (not start!281494) (not b!2883371) (not b!2883366) (not b!2883368) (not b!2883374) (not b!2883369) tp_is_empty!15173 (not b!2883365))
(check-sat)
(get-model)

(declare-fun b!2883419 () Bool)

(declare-fun e!1823792 () Option!6466)

(declare-fun lt!1020267 () Option!6466)

(assert (=> b!2883419 (= e!1823792 lt!1020267)))

(declare-fun b!2883420 () Bool)

(declare-fun c!468422 () Bool)

(assert (=> b!2883420 (= c!468422 ((_ is Union!8793) (regOne!18098 r!23079)))))

(declare-fun e!1823793 () Option!6466)

(declare-fun e!1823788 () Option!6466)

(assert (=> b!2883420 (= e!1823793 e!1823788)))

(declare-fun b!2883421 () Bool)

(declare-fun e!1823787 () Option!6466)

(declare-fun lt!1020268 () Option!6466)

(declare-fun lt!1020266 () Option!6466)

(declare-fun ++!8198 (List!34594 List!34594) List!34594)

(assert (=> b!2883421 (= e!1823787 (Some!6465 (++!8198 (v!34591 lt!1020268) (v!34591 lt!1020266))))))

(declare-fun b!2883422 () Bool)

(declare-fun call!186923 () Option!6466)

(assert (=> b!2883422 (= e!1823792 call!186923)))

(declare-fun b!2883423 () Bool)

(assert (=> b!2883423 (= e!1823793 (Some!6465 Nil!34470))))

(declare-fun b!2883426 () Bool)

(declare-fun c!468423 () Bool)

(assert (=> b!2883426 (= c!468423 ((_ is ElementMatch!8793) (regOne!18098 r!23079)))))

(declare-fun e!1823790 () Option!6466)

(declare-fun e!1823786 () Option!6466)

(assert (=> b!2883426 (= e!1823790 e!1823786)))

(declare-fun b!2883427 () Bool)

(assert (=> b!2883427 (= e!1823787 None!6465)))

(declare-fun b!2883428 () Bool)

(assert (=> b!2883428 (= e!1823790 None!6465)))

(declare-fun bm!186918 () Bool)

(declare-fun call!186924 () Option!6466)

(assert (=> bm!186918 (= call!186924 (getLanguageWitness!500 (ite c!468422 (regOne!18099 (regOne!18098 r!23079)) (regTwo!18098 (regOne!18098 r!23079)))))))

(declare-fun d!833720 () Bool)

(declare-fun c!468417 () Bool)

(assert (=> d!833720 (= c!468417 ((_ is EmptyExpr!8793) (regOne!18098 r!23079)))))

(declare-fun e!1823789 () Option!6466)

(assert (=> d!833720 (= (getLanguageWitness!500 (regOne!18098 r!23079)) e!1823789)))

(declare-fun bm!186919 () Bool)

(assert (=> bm!186919 (= call!186923 (getLanguageWitness!500 (ite c!468422 (regTwo!18099 (regOne!18098 r!23079)) (regOne!18098 (regOne!18098 r!23079)))))))

(declare-fun b!2883429 () Bool)

(assert (=> b!2883429 (= e!1823789 (Some!6465 Nil!34470))))

(declare-fun b!2883430 () Bool)

(declare-fun e!1823791 () Option!6466)

(assert (=> b!2883430 (= e!1823791 None!6465)))

(declare-fun b!2883431 () Bool)

(assert (=> b!2883431 (= e!1823789 e!1823790)))

(declare-fun c!468420 () Bool)

(assert (=> b!2883431 (= c!468420 ((_ is EmptyLang!8793) (regOne!18098 r!23079)))))

(declare-fun b!2883432 () Bool)

(assert (=> b!2883432 (= e!1823786 (Some!6465 (Cons!34470 (c!468394 (regOne!18098 r!23079)) Nil!34470)))))

(declare-fun b!2883433 () Bool)

(assert (=> b!2883433 (= e!1823788 e!1823792)))

(assert (=> b!2883433 (= lt!1020267 call!186924)))

(declare-fun c!468421 () Bool)

(assert (=> b!2883433 (= c!468421 ((_ is Some!6465) lt!1020267))))

(declare-fun b!2883434 () Bool)

(assert (=> b!2883434 (= e!1823786 e!1823793)))

(declare-fun c!468418 () Bool)

(assert (=> b!2883434 (= c!468418 ((_ is Star!8793) (regOne!18098 r!23079)))))

(declare-fun b!2883435 () Bool)

(assert (=> b!2883435 (= e!1823788 e!1823791)))

(assert (=> b!2883435 (= lt!1020268 call!186923)))

(declare-fun c!468419 () Bool)

(assert (=> b!2883435 (= c!468419 ((_ is Some!6465) lt!1020268))))

(declare-fun b!2883436 () Bool)

(declare-fun c!468424 () Bool)

(assert (=> b!2883436 (= c!468424 ((_ is Some!6465) lt!1020266))))

(assert (=> b!2883436 (= lt!1020266 call!186924)))

(assert (=> b!2883436 (= e!1823791 e!1823787)))

(assert (= (and d!833720 c!468417) b!2883429))

(assert (= (and d!833720 (not c!468417)) b!2883431))

(assert (= (and b!2883431 c!468420) b!2883428))

(assert (= (and b!2883431 (not c!468420)) b!2883426))

(assert (= (and b!2883426 c!468423) b!2883432))

(assert (= (and b!2883426 (not c!468423)) b!2883434))

(assert (= (and b!2883434 c!468418) b!2883423))

(assert (= (and b!2883434 (not c!468418)) b!2883420))

(assert (= (and b!2883420 c!468422) b!2883433))

(assert (= (and b!2883420 (not c!468422)) b!2883435))

(assert (= (and b!2883433 c!468421) b!2883419))

(assert (= (and b!2883433 (not c!468421)) b!2883422))

(assert (= (and b!2883435 c!468419) b!2883436))

(assert (= (and b!2883435 (not c!468419)) b!2883430))

(assert (= (and b!2883436 c!468424) b!2883421))

(assert (= (and b!2883436 (not c!468424)) b!2883427))

(assert (= (or b!2883422 b!2883435) bm!186919))

(assert (= (or b!2883433 b!2883436) bm!186918))

(declare-fun m!3300021 () Bool)

(assert (=> b!2883421 m!3300021))

(declare-fun m!3300023 () Bool)

(assert (=> bm!186918 m!3300023))

(declare-fun m!3300025 () Bool)

(assert (=> bm!186919 m!3300025))

(assert (=> b!2883367 d!833720))

(declare-fun b!2883497 () Bool)

(declare-fun res!1194725 () Bool)

(declare-fun e!1823834 () Bool)

(assert (=> b!2883497 (=> (not res!1194725) (not e!1823834))))

(declare-fun call!186936 () Bool)

(assert (=> b!2883497 (= res!1194725 call!186936)))

(declare-fun e!1823833 () Bool)

(assert (=> b!2883497 (= e!1823833 e!1823834)))

(declare-fun b!2883498 () Bool)

(declare-fun e!1823830 () Bool)

(declare-fun call!186937 () Bool)

(assert (=> b!2883498 (= e!1823830 call!186937)))

(declare-fun b!2883499 () Bool)

(declare-fun res!1194724 () Bool)

(declare-fun e!1823831 () Bool)

(assert (=> b!2883499 (=> res!1194724 e!1823831)))

(assert (=> b!2883499 (= res!1194724 (not ((_ is Concat!14114) r!23079)))))

(assert (=> b!2883499 (= e!1823833 e!1823831)))

(declare-fun d!833728 () Bool)

(declare-fun res!1194723 () Bool)

(declare-fun e!1823835 () Bool)

(assert (=> d!833728 (=> res!1194723 e!1823835)))

(assert (=> d!833728 (= res!1194723 ((_ is ElementMatch!8793) r!23079))))

(assert (=> d!833728 (= (validRegex!3566 r!23079) e!1823835)))

(declare-fun b!2883500 () Bool)

(declare-fun e!1823836 () Bool)

(declare-fun call!186935 () Bool)

(assert (=> b!2883500 (= e!1823836 call!186935)))

(declare-fun b!2883501 () Bool)

(assert (=> b!2883501 (= e!1823834 call!186937)))

(declare-fun b!2883502 () Bool)

(declare-fun e!1823832 () Bool)

(assert (=> b!2883502 (= e!1823832 e!1823833)))

(declare-fun c!468435 () Bool)

(assert (=> b!2883502 (= c!468435 ((_ is Union!8793) r!23079))))

(declare-fun c!468436 () Bool)

(declare-fun bm!186930 () Bool)

(assert (=> bm!186930 (= call!186935 (validRegex!3566 (ite c!468436 (reg!9122 r!23079) (ite c!468435 (regOne!18099 r!23079) (regOne!18098 r!23079)))))))

(declare-fun bm!186931 () Bool)

(assert (=> bm!186931 (= call!186936 call!186935)))

(declare-fun b!2883503 () Bool)

(assert (=> b!2883503 (= e!1823835 e!1823832)))

(assert (=> b!2883503 (= c!468436 ((_ is Star!8793) r!23079))))

(declare-fun b!2883504 () Bool)

(assert (=> b!2883504 (= e!1823831 e!1823830)))

(declare-fun res!1194722 () Bool)

(assert (=> b!2883504 (=> (not res!1194722) (not e!1823830))))

(assert (=> b!2883504 (= res!1194722 call!186936)))

(declare-fun b!2883505 () Bool)

(assert (=> b!2883505 (= e!1823832 e!1823836)))

(declare-fun res!1194726 () Bool)

(declare-fun nullable!2705 (Regex!8793) Bool)

(assert (=> b!2883505 (= res!1194726 (not (nullable!2705 (reg!9122 r!23079))))))

(assert (=> b!2883505 (=> (not res!1194726) (not e!1823836))))

(declare-fun bm!186932 () Bool)

(assert (=> bm!186932 (= call!186937 (validRegex!3566 (ite c!468435 (regTwo!18099 r!23079) (regTwo!18098 r!23079))))))

(assert (= (and d!833728 (not res!1194723)) b!2883503))

(assert (= (and b!2883503 c!468436) b!2883505))

(assert (= (and b!2883503 (not c!468436)) b!2883502))

(assert (= (and b!2883505 res!1194726) b!2883500))

(assert (= (and b!2883502 c!468435) b!2883497))

(assert (= (and b!2883502 (not c!468435)) b!2883499))

(assert (= (and b!2883497 res!1194725) b!2883501))

(assert (= (and b!2883499 (not res!1194724)) b!2883504))

(assert (= (and b!2883504 res!1194722) b!2883498))

(assert (= (or b!2883501 b!2883498) bm!186932))

(assert (= (or b!2883497 b!2883504) bm!186931))

(assert (= (or b!2883500 bm!186931) bm!186930))

(declare-fun m!3300063 () Bool)

(assert (=> bm!186930 m!3300063))

(declare-fun m!3300065 () Bool)

(assert (=> b!2883505 m!3300065))

(declare-fun m!3300067 () Bool)

(assert (=> bm!186932 m!3300067))

(assert (=> start!281494 d!833728))

(declare-fun b!2883520 () Bool)

(declare-fun res!1194738 () Bool)

(declare-fun e!1823848 () Bool)

(assert (=> b!2883520 (=> (not res!1194738) (not e!1823848))))

(declare-fun call!186940 () Bool)

(assert (=> b!2883520 (= res!1194738 call!186940)))

(declare-fun e!1823847 () Bool)

(assert (=> b!2883520 (= e!1823847 e!1823848)))

(declare-fun b!2883521 () Bool)

(declare-fun e!1823844 () Bool)

(declare-fun call!186941 () Bool)

(assert (=> b!2883521 (= e!1823844 call!186941)))

(declare-fun b!2883522 () Bool)

(declare-fun res!1194737 () Bool)

(declare-fun e!1823845 () Bool)

(assert (=> b!2883522 (=> res!1194737 e!1823845)))

(assert (=> b!2883522 (= res!1194737 (not ((_ is Concat!14114) (regTwo!18098 r!23079))))))

(assert (=> b!2883522 (= e!1823847 e!1823845)))

(declare-fun d!833736 () Bool)

(declare-fun res!1194736 () Bool)

(declare-fun e!1823849 () Bool)

(assert (=> d!833736 (=> res!1194736 e!1823849)))

(assert (=> d!833736 (= res!1194736 ((_ is ElementMatch!8793) (regTwo!18098 r!23079)))))

(assert (=> d!833736 (= (validRegex!3566 (regTwo!18098 r!23079)) e!1823849)))

(declare-fun b!2883523 () Bool)

(declare-fun e!1823850 () Bool)

(declare-fun call!186939 () Bool)

(assert (=> b!2883523 (= e!1823850 call!186939)))

(declare-fun b!2883524 () Bool)

(assert (=> b!2883524 (= e!1823848 call!186941)))

(declare-fun b!2883525 () Bool)

(declare-fun e!1823846 () Bool)

(assert (=> b!2883525 (= e!1823846 e!1823847)))

(declare-fun c!468440 () Bool)

(assert (=> b!2883525 (= c!468440 ((_ is Union!8793) (regTwo!18098 r!23079)))))

(declare-fun bm!186934 () Bool)

(declare-fun c!468441 () Bool)

(assert (=> bm!186934 (= call!186939 (validRegex!3566 (ite c!468441 (reg!9122 (regTwo!18098 r!23079)) (ite c!468440 (regOne!18099 (regTwo!18098 r!23079)) (regOne!18098 (regTwo!18098 r!23079))))))))

(declare-fun bm!186935 () Bool)

(assert (=> bm!186935 (= call!186940 call!186939)))

(declare-fun b!2883526 () Bool)

(assert (=> b!2883526 (= e!1823849 e!1823846)))

(assert (=> b!2883526 (= c!468441 ((_ is Star!8793) (regTwo!18098 r!23079)))))

(declare-fun b!2883527 () Bool)

(assert (=> b!2883527 (= e!1823845 e!1823844)))

(declare-fun res!1194735 () Bool)

(assert (=> b!2883527 (=> (not res!1194735) (not e!1823844))))

(assert (=> b!2883527 (= res!1194735 call!186940)))

(declare-fun b!2883528 () Bool)

(assert (=> b!2883528 (= e!1823846 e!1823850)))

(declare-fun res!1194739 () Bool)

(assert (=> b!2883528 (= res!1194739 (not (nullable!2705 (reg!9122 (regTwo!18098 r!23079)))))))

(assert (=> b!2883528 (=> (not res!1194739) (not e!1823850))))

(declare-fun bm!186936 () Bool)

(assert (=> bm!186936 (= call!186941 (validRegex!3566 (ite c!468440 (regTwo!18099 (regTwo!18098 r!23079)) (regTwo!18098 (regTwo!18098 r!23079)))))))

(assert (= (and d!833736 (not res!1194736)) b!2883526))

(assert (= (and b!2883526 c!468441) b!2883528))

(assert (= (and b!2883526 (not c!468441)) b!2883525))

(assert (= (and b!2883528 res!1194739) b!2883523))

(assert (= (and b!2883525 c!468440) b!2883520))

(assert (= (and b!2883525 (not c!468440)) b!2883522))

(assert (= (and b!2883520 res!1194738) b!2883524))

(assert (= (and b!2883522 (not res!1194737)) b!2883527))

(assert (= (and b!2883527 res!1194735) b!2883521))

(assert (= (or b!2883524 b!2883521) bm!186936))

(assert (= (or b!2883520 b!2883527) bm!186935))

(assert (= (or b!2883523 bm!186935) bm!186934))

(declare-fun m!3300069 () Bool)

(assert (=> bm!186934 m!3300069))

(declare-fun m!3300071 () Bool)

(assert (=> b!2883528 m!3300071))

(declare-fun m!3300073 () Bool)

(assert (=> bm!186936 m!3300073))

(assert (=> b!2883365 d!833736))

(declare-fun b!2883529 () Bool)

(declare-fun e!1823857 () Option!6466)

(declare-fun lt!1020274 () Option!6466)

(assert (=> b!2883529 (= e!1823857 lt!1020274)))

(declare-fun b!2883530 () Bool)

(declare-fun c!468447 () Bool)

(assert (=> b!2883530 (= c!468447 ((_ is Union!8793) (regTwo!18098 r!23079)))))

(declare-fun e!1823858 () Option!6466)

(declare-fun e!1823853 () Option!6466)

(assert (=> b!2883530 (= e!1823858 e!1823853)))

(declare-fun b!2883531 () Bool)

(declare-fun e!1823852 () Option!6466)

(declare-fun lt!1020275 () Option!6466)

(declare-fun lt!1020273 () Option!6466)

(assert (=> b!2883531 (= e!1823852 (Some!6465 (++!8198 (v!34591 lt!1020275) (v!34591 lt!1020273))))))

(declare-fun b!2883532 () Bool)

(declare-fun call!186942 () Option!6466)

(assert (=> b!2883532 (= e!1823857 call!186942)))

(declare-fun b!2883533 () Bool)

(assert (=> b!2883533 (= e!1823858 (Some!6465 Nil!34470))))

(declare-fun b!2883534 () Bool)

(declare-fun c!468448 () Bool)

(assert (=> b!2883534 (= c!468448 ((_ is ElementMatch!8793) (regTwo!18098 r!23079)))))

(declare-fun e!1823855 () Option!6466)

(declare-fun e!1823851 () Option!6466)

(assert (=> b!2883534 (= e!1823855 e!1823851)))

(declare-fun b!2883535 () Bool)

(assert (=> b!2883535 (= e!1823852 None!6465)))

(declare-fun b!2883536 () Bool)

(assert (=> b!2883536 (= e!1823855 None!6465)))

(declare-fun bm!186937 () Bool)

(declare-fun call!186943 () Option!6466)

(assert (=> bm!186937 (= call!186943 (getLanguageWitness!500 (ite c!468447 (regOne!18099 (regTwo!18098 r!23079)) (regTwo!18098 (regTwo!18098 r!23079)))))))

(declare-fun d!833738 () Bool)

(declare-fun c!468442 () Bool)

(assert (=> d!833738 (= c!468442 ((_ is EmptyExpr!8793) (regTwo!18098 r!23079)))))

(declare-fun e!1823854 () Option!6466)

(assert (=> d!833738 (= (getLanguageWitness!500 (regTwo!18098 r!23079)) e!1823854)))

(declare-fun bm!186938 () Bool)

(assert (=> bm!186938 (= call!186942 (getLanguageWitness!500 (ite c!468447 (regTwo!18099 (regTwo!18098 r!23079)) (regOne!18098 (regTwo!18098 r!23079)))))))

(declare-fun b!2883537 () Bool)

(assert (=> b!2883537 (= e!1823854 (Some!6465 Nil!34470))))

(declare-fun b!2883538 () Bool)

(declare-fun e!1823856 () Option!6466)

(assert (=> b!2883538 (= e!1823856 None!6465)))

(declare-fun b!2883539 () Bool)

(assert (=> b!2883539 (= e!1823854 e!1823855)))

(declare-fun c!468445 () Bool)

(assert (=> b!2883539 (= c!468445 ((_ is EmptyLang!8793) (regTwo!18098 r!23079)))))

(declare-fun b!2883540 () Bool)

(assert (=> b!2883540 (= e!1823851 (Some!6465 (Cons!34470 (c!468394 (regTwo!18098 r!23079)) Nil!34470)))))

(declare-fun b!2883541 () Bool)

(assert (=> b!2883541 (= e!1823853 e!1823857)))

(assert (=> b!2883541 (= lt!1020274 call!186943)))

(declare-fun c!468446 () Bool)

(assert (=> b!2883541 (= c!468446 ((_ is Some!6465) lt!1020274))))

(declare-fun b!2883542 () Bool)

(assert (=> b!2883542 (= e!1823851 e!1823858)))

(declare-fun c!468443 () Bool)

(assert (=> b!2883542 (= c!468443 ((_ is Star!8793) (regTwo!18098 r!23079)))))

(declare-fun b!2883543 () Bool)

(assert (=> b!2883543 (= e!1823853 e!1823856)))

(assert (=> b!2883543 (= lt!1020275 call!186942)))

(declare-fun c!468444 () Bool)

(assert (=> b!2883543 (= c!468444 ((_ is Some!6465) lt!1020275))))

(declare-fun b!2883544 () Bool)

(declare-fun c!468449 () Bool)

(assert (=> b!2883544 (= c!468449 ((_ is Some!6465) lt!1020273))))

(assert (=> b!2883544 (= lt!1020273 call!186943)))

(assert (=> b!2883544 (= e!1823856 e!1823852)))

(assert (= (and d!833738 c!468442) b!2883537))

(assert (= (and d!833738 (not c!468442)) b!2883539))

(assert (= (and b!2883539 c!468445) b!2883536))

(assert (= (and b!2883539 (not c!468445)) b!2883534))

(assert (= (and b!2883534 c!468448) b!2883540))

(assert (= (and b!2883534 (not c!468448)) b!2883542))

(assert (= (and b!2883542 c!468443) b!2883533))

(assert (= (and b!2883542 (not c!468443)) b!2883530))

(assert (= (and b!2883530 c!468447) b!2883541))

(assert (= (and b!2883530 (not c!468447)) b!2883543))

(assert (= (and b!2883541 c!468446) b!2883529))

(assert (= (and b!2883541 (not c!468446)) b!2883532))

(assert (= (and b!2883543 c!468444) b!2883544))

(assert (= (and b!2883543 (not c!468444)) b!2883538))

(assert (= (and b!2883544 c!468449) b!2883531))

(assert (= (and b!2883544 (not c!468449)) b!2883535))

(assert (= (or b!2883532 b!2883543) bm!186938))

(assert (= (or b!2883541 b!2883544) bm!186937))

(declare-fun m!3300087 () Bool)

(assert (=> b!2883531 m!3300087))

(declare-fun m!3300089 () Bool)

(assert (=> bm!186937 m!3300089))

(declare-fun m!3300091 () Bool)

(assert (=> bm!186938 m!3300091))

(assert (=> b!2883370 d!833738))

(declare-fun d!833744 () Bool)

(declare-fun isEmpty!18763 (Option!6466) Bool)

(assert (=> d!833744 (= (isDefined!5030 (getLanguageWitness!500 r!23079)) (not (isEmpty!18763 (getLanguageWitness!500 r!23079))))))

(declare-fun bs!523781 () Bool)

(assert (= bs!523781 d!833744))

(assert (=> bs!523781 m!3300011))

(declare-fun m!3300093 () Bool)

(assert (=> bs!523781 m!3300093))

(assert (=> b!2883368 d!833744))

(declare-fun b!2883545 () Bool)

(declare-fun e!1823865 () Option!6466)

(declare-fun lt!1020277 () Option!6466)

(assert (=> b!2883545 (= e!1823865 lt!1020277)))

(declare-fun b!2883546 () Bool)

(declare-fun c!468455 () Bool)

(assert (=> b!2883546 (= c!468455 ((_ is Union!8793) r!23079))))

(declare-fun e!1823866 () Option!6466)

(declare-fun e!1823861 () Option!6466)

(assert (=> b!2883546 (= e!1823866 e!1823861)))

(declare-fun b!2883547 () Bool)

(declare-fun e!1823860 () Option!6466)

(declare-fun lt!1020278 () Option!6466)

(declare-fun lt!1020276 () Option!6466)

(assert (=> b!2883547 (= e!1823860 (Some!6465 (++!8198 (v!34591 lt!1020278) (v!34591 lt!1020276))))))

(declare-fun b!2883548 () Bool)

(declare-fun call!186944 () Option!6466)

(assert (=> b!2883548 (= e!1823865 call!186944)))

(declare-fun b!2883549 () Bool)

(assert (=> b!2883549 (= e!1823866 (Some!6465 Nil!34470))))

(declare-fun b!2883550 () Bool)

(declare-fun c!468456 () Bool)

(assert (=> b!2883550 (= c!468456 ((_ is ElementMatch!8793) r!23079))))

(declare-fun e!1823863 () Option!6466)

(declare-fun e!1823859 () Option!6466)

(assert (=> b!2883550 (= e!1823863 e!1823859)))

(declare-fun b!2883551 () Bool)

(assert (=> b!2883551 (= e!1823860 None!6465)))

(declare-fun b!2883552 () Bool)

(assert (=> b!2883552 (= e!1823863 None!6465)))

(declare-fun bm!186939 () Bool)

(declare-fun call!186945 () Option!6466)

(assert (=> bm!186939 (= call!186945 (getLanguageWitness!500 (ite c!468455 (regOne!18099 r!23079) (regTwo!18098 r!23079))))))

(declare-fun d!833746 () Bool)

(declare-fun c!468450 () Bool)

(assert (=> d!833746 (= c!468450 ((_ is EmptyExpr!8793) r!23079))))

(declare-fun e!1823862 () Option!6466)

(assert (=> d!833746 (= (getLanguageWitness!500 r!23079) e!1823862)))

(declare-fun bm!186940 () Bool)

(assert (=> bm!186940 (= call!186944 (getLanguageWitness!500 (ite c!468455 (regTwo!18099 r!23079) (regOne!18098 r!23079))))))

(declare-fun b!2883553 () Bool)

(assert (=> b!2883553 (= e!1823862 (Some!6465 Nil!34470))))

(declare-fun b!2883554 () Bool)

(declare-fun e!1823864 () Option!6466)

(assert (=> b!2883554 (= e!1823864 None!6465)))

(declare-fun b!2883555 () Bool)

(assert (=> b!2883555 (= e!1823862 e!1823863)))

(declare-fun c!468453 () Bool)

(assert (=> b!2883555 (= c!468453 ((_ is EmptyLang!8793) r!23079))))

(declare-fun b!2883556 () Bool)

(assert (=> b!2883556 (= e!1823859 (Some!6465 (Cons!34470 (c!468394 r!23079) Nil!34470)))))

(declare-fun b!2883557 () Bool)

(assert (=> b!2883557 (= e!1823861 e!1823865)))

(assert (=> b!2883557 (= lt!1020277 call!186945)))

(declare-fun c!468454 () Bool)

(assert (=> b!2883557 (= c!468454 ((_ is Some!6465) lt!1020277))))

(declare-fun b!2883558 () Bool)

(assert (=> b!2883558 (= e!1823859 e!1823866)))

(declare-fun c!468451 () Bool)

(assert (=> b!2883558 (= c!468451 ((_ is Star!8793) r!23079))))

(declare-fun b!2883559 () Bool)

(assert (=> b!2883559 (= e!1823861 e!1823864)))

(assert (=> b!2883559 (= lt!1020278 call!186944)))

(declare-fun c!468452 () Bool)

(assert (=> b!2883559 (= c!468452 ((_ is Some!6465) lt!1020278))))

(declare-fun b!2883560 () Bool)

(declare-fun c!468457 () Bool)

(assert (=> b!2883560 (= c!468457 ((_ is Some!6465) lt!1020276))))

(assert (=> b!2883560 (= lt!1020276 call!186945)))

(assert (=> b!2883560 (= e!1823864 e!1823860)))

(assert (= (and d!833746 c!468450) b!2883553))

(assert (= (and d!833746 (not c!468450)) b!2883555))

(assert (= (and b!2883555 c!468453) b!2883552))

(assert (= (and b!2883555 (not c!468453)) b!2883550))

(assert (= (and b!2883550 c!468456) b!2883556))

(assert (= (and b!2883550 (not c!468456)) b!2883558))

(assert (= (and b!2883558 c!468451) b!2883549))

(assert (= (and b!2883558 (not c!468451)) b!2883546))

(assert (= (and b!2883546 c!468455) b!2883557))

(assert (= (and b!2883546 (not c!468455)) b!2883559))

(assert (= (and b!2883557 c!468454) b!2883545))

(assert (= (and b!2883557 (not c!468454)) b!2883548))

(assert (= (and b!2883559 c!468452) b!2883560))

(assert (= (and b!2883559 (not c!468452)) b!2883554))

(assert (= (and b!2883560 c!468457) b!2883547))

(assert (= (and b!2883560 (not c!468457)) b!2883551))

(assert (= (or b!2883548 b!2883559) bm!186940))

(assert (= (or b!2883557 b!2883560) bm!186939))

(declare-fun m!3300095 () Bool)

(assert (=> b!2883547 m!3300095))

(declare-fun m!3300097 () Bool)

(assert (=> bm!186939 m!3300097))

(declare-fun m!3300099 () Bool)

(assert (=> bm!186940 m!3300099))

(assert (=> b!2883368 d!833746))

(declare-fun d!833748 () Bool)

(assert (=> d!833748 (= (get!10404 lt!1020254) (v!34591 lt!1020254))))

(assert (=> b!2883374 d!833748))

(declare-fun d!833750 () Bool)

(assert (=> d!833750 (matchR!3775 (regOne!18098 r!23079) (get!10404 (getLanguageWitness!500 (regOne!18098 r!23079))))))

(declare-fun lt!1020287 () Unit!48055)

(declare-fun choose!17050 (Regex!8793) Unit!48055)

(assert (=> d!833750 (= lt!1020287 (choose!17050 (regOne!18098 r!23079)))))

(assert (=> d!833750 (validRegex!3566 (regOne!18098 r!23079))))

(assert (=> d!833750 (= (lemmaGetWitnessMatches!82 (regOne!18098 r!23079)) lt!1020287)))

(declare-fun bs!523782 () Bool)

(assert (= bs!523782 d!833750))

(declare-fun m!3300101 () Bool)

(assert (=> bs!523782 m!3300101))

(declare-fun m!3300103 () Bool)

(assert (=> bs!523782 m!3300103))

(assert (=> bs!523782 m!3300003))

(assert (=> bs!523782 m!3300003))

(assert (=> bs!523782 m!3300101))

(declare-fun m!3300105 () Bool)

(assert (=> bs!523782 m!3300105))

(declare-fun m!3300107 () Bool)

(assert (=> bs!523782 m!3300107))

(assert (=> b!2883374 d!833750))

(declare-fun b!2883664 () Bool)

(declare-fun e!1823930 () Bool)

(declare-fun e!1823927 () Bool)

(assert (=> b!2883664 (= e!1823930 e!1823927)))

(declare-fun res!1194773 () Bool)

(assert (=> b!2883664 (=> res!1194773 e!1823927)))

(declare-fun call!186963 () Bool)

(assert (=> b!2883664 (= res!1194773 call!186963)))

(declare-fun b!2883665 () Bool)

(declare-fun res!1194776 () Bool)

(assert (=> b!2883665 (=> res!1194776 e!1823927)))

(declare-fun isEmpty!18764 (List!34594) Bool)

(declare-fun tail!4592 (List!34594) List!34594)

(assert (=> b!2883665 (= res!1194776 (not (isEmpty!18764 (tail!4592 (get!10404 lt!1020254)))))))

(declare-fun b!2883667 () Bool)

(declare-fun head!6367 (List!34594) C!17768)

(assert (=> b!2883667 (= e!1823927 (not (= (head!6367 (get!10404 lt!1020254)) (c!468394 (regOne!18098 r!23079)))))))

(declare-fun b!2883668 () Bool)

(declare-fun res!1194771 () Bool)

(declare-fun e!1823928 () Bool)

(assert (=> b!2883668 (=> (not res!1194771) (not e!1823928))))

(assert (=> b!2883668 (= res!1194771 (not call!186963))))

(declare-fun b!2883669 () Bool)

(assert (=> b!2883669 (= e!1823928 (= (head!6367 (get!10404 lt!1020254)) (c!468394 (regOne!18098 r!23079))))))

(declare-fun bm!186958 () Bool)

(assert (=> bm!186958 (= call!186963 (isEmpty!18764 (get!10404 lt!1020254)))))

(declare-fun b!2883670 () Bool)

(declare-fun res!1194774 () Bool)

(assert (=> b!2883670 (=> (not res!1194774) (not e!1823928))))

(assert (=> b!2883670 (= res!1194774 (isEmpty!18764 (tail!4592 (get!10404 lt!1020254))))))

(declare-fun b!2883671 () Bool)

(declare-fun e!1823929 () Bool)

(declare-fun lt!1020293 () Bool)

(assert (=> b!2883671 (= e!1823929 (not lt!1020293))))

(declare-fun b!2883672 () Bool)

(declare-fun e!1823932 () Bool)

(assert (=> b!2883672 (= e!1823932 e!1823930)))

(declare-fun res!1194772 () Bool)

(assert (=> b!2883672 (=> (not res!1194772) (not e!1823930))))

(assert (=> b!2883672 (= res!1194772 (not lt!1020293))))

(declare-fun b!2883673 () Bool)

(declare-fun res!1194777 () Bool)

(assert (=> b!2883673 (=> res!1194777 e!1823932)))

(assert (=> b!2883673 (= res!1194777 e!1823928)))

(declare-fun res!1194778 () Bool)

(assert (=> b!2883673 (=> (not res!1194778) (not e!1823928))))

(assert (=> b!2883673 (= res!1194778 lt!1020293)))

(declare-fun d!833752 () Bool)

(declare-fun e!1823931 () Bool)

(assert (=> d!833752 e!1823931))

(declare-fun c!468495 () Bool)

(assert (=> d!833752 (= c!468495 ((_ is EmptyExpr!8793) (regOne!18098 r!23079)))))

(declare-fun e!1823926 () Bool)

(assert (=> d!833752 (= lt!1020293 e!1823926)))

(declare-fun c!468496 () Bool)

(assert (=> d!833752 (= c!468496 (isEmpty!18764 (get!10404 lt!1020254)))))

(assert (=> d!833752 (validRegex!3566 (regOne!18098 r!23079))))

(assert (=> d!833752 (= (matchR!3775 (regOne!18098 r!23079) (get!10404 lt!1020254)) lt!1020293)))

(declare-fun b!2883666 () Bool)

(assert (=> b!2883666 (= e!1823931 e!1823929)))

(declare-fun c!468494 () Bool)

(assert (=> b!2883666 (= c!468494 ((_ is EmptyLang!8793) (regOne!18098 r!23079)))))

(declare-fun b!2883674 () Bool)

(assert (=> b!2883674 (= e!1823926 (nullable!2705 (regOne!18098 r!23079)))))

(declare-fun b!2883675 () Bool)

(assert (=> b!2883675 (= e!1823931 (= lt!1020293 call!186963))))

(declare-fun b!2883676 () Bool)

(declare-fun derivativeStep!2338 (Regex!8793 C!17768) Regex!8793)

(assert (=> b!2883676 (= e!1823926 (matchR!3775 (derivativeStep!2338 (regOne!18098 r!23079) (head!6367 (get!10404 lt!1020254))) (tail!4592 (get!10404 lt!1020254))))))

(declare-fun b!2883677 () Bool)

(declare-fun res!1194775 () Bool)

(assert (=> b!2883677 (=> res!1194775 e!1823932)))

(assert (=> b!2883677 (= res!1194775 (not ((_ is ElementMatch!8793) (regOne!18098 r!23079))))))

(assert (=> b!2883677 (= e!1823929 e!1823932)))

(assert (= (and d!833752 c!468496) b!2883674))

(assert (= (and d!833752 (not c!468496)) b!2883676))

(assert (= (and d!833752 c!468495) b!2883675))

(assert (= (and d!833752 (not c!468495)) b!2883666))

(assert (= (and b!2883666 c!468494) b!2883671))

(assert (= (and b!2883666 (not c!468494)) b!2883677))

(assert (= (and b!2883677 (not res!1194775)) b!2883673))

(assert (= (and b!2883673 res!1194778) b!2883668))

(assert (= (and b!2883668 res!1194771) b!2883670))

(assert (= (and b!2883670 res!1194774) b!2883669))

(assert (= (and b!2883673 (not res!1194777)) b!2883672))

(assert (= (and b!2883672 res!1194772) b!2883664))

(assert (= (and b!2883664 (not res!1194773)) b!2883665))

(assert (= (and b!2883665 (not res!1194776)) b!2883667))

(assert (= (or b!2883675 b!2883664 b!2883668) bm!186958))

(assert (=> b!2883667 m!3299995))

(declare-fun m!3300129 () Bool)

(assert (=> b!2883667 m!3300129))

(assert (=> bm!186958 m!3299995))

(declare-fun m!3300131 () Bool)

(assert (=> bm!186958 m!3300131))

(assert (=> b!2883670 m!3299995))

(declare-fun m!3300133 () Bool)

(assert (=> b!2883670 m!3300133))

(assert (=> b!2883670 m!3300133))

(declare-fun m!3300135 () Bool)

(assert (=> b!2883670 m!3300135))

(assert (=> b!2883669 m!3299995))

(assert (=> b!2883669 m!3300129))

(declare-fun m!3300137 () Bool)

(assert (=> b!2883674 m!3300137))

(assert (=> b!2883676 m!3299995))

(assert (=> b!2883676 m!3300129))

(assert (=> b!2883676 m!3300129))

(declare-fun m!3300139 () Bool)

(assert (=> b!2883676 m!3300139))

(assert (=> b!2883676 m!3299995))

(assert (=> b!2883676 m!3300133))

(assert (=> b!2883676 m!3300139))

(assert (=> b!2883676 m!3300133))

(declare-fun m!3300141 () Bool)

(assert (=> b!2883676 m!3300141))

(assert (=> d!833752 m!3299995))

(assert (=> d!833752 m!3300131))

(assert (=> d!833752 m!3300107))

(assert (=> b!2883665 m!3299995))

(assert (=> b!2883665 m!3300133))

(assert (=> b!2883665 m!3300133))

(assert (=> b!2883665 m!3300135))

(assert (=> b!2883374 d!833752))

(declare-fun b!2883703 () Bool)

(declare-fun e!1823952 () Bool)

(declare-fun e!1823949 () Bool)

(assert (=> b!2883703 (= e!1823952 e!1823949)))

(declare-fun res!1194786 () Bool)

(assert (=> b!2883703 (=> res!1194786 e!1823949)))

(declare-fun call!186969 () Bool)

(assert (=> b!2883703 (= res!1194786 call!186969)))

(declare-fun b!2883704 () Bool)

(declare-fun res!1194789 () Bool)

(assert (=> b!2883704 (=> res!1194789 e!1823949)))

(assert (=> b!2883704 (= res!1194789 (not (isEmpty!18764 (tail!4592 (get!10404 lt!1020252)))))))

(declare-fun b!2883706 () Bool)

(assert (=> b!2883706 (= e!1823949 (not (= (head!6367 (get!10404 lt!1020252)) (c!468394 (regTwo!18098 r!23079)))))))

(declare-fun b!2883707 () Bool)

(declare-fun res!1194784 () Bool)

(declare-fun e!1823950 () Bool)

(assert (=> b!2883707 (=> (not res!1194784) (not e!1823950))))

(assert (=> b!2883707 (= res!1194784 (not call!186969))))

(declare-fun b!2883708 () Bool)

(assert (=> b!2883708 (= e!1823950 (= (head!6367 (get!10404 lt!1020252)) (c!468394 (regTwo!18098 r!23079))))))

(declare-fun bm!186964 () Bool)

(assert (=> bm!186964 (= call!186969 (isEmpty!18764 (get!10404 lt!1020252)))))

(declare-fun b!2883709 () Bool)

(declare-fun res!1194787 () Bool)

(assert (=> b!2883709 (=> (not res!1194787) (not e!1823950))))

(assert (=> b!2883709 (= res!1194787 (isEmpty!18764 (tail!4592 (get!10404 lt!1020252))))))

(declare-fun b!2883710 () Bool)

(declare-fun e!1823951 () Bool)

(declare-fun lt!1020297 () Bool)

(assert (=> b!2883710 (= e!1823951 (not lt!1020297))))

(declare-fun b!2883711 () Bool)

(declare-fun e!1823954 () Bool)

(assert (=> b!2883711 (= e!1823954 e!1823952)))

(declare-fun res!1194785 () Bool)

(assert (=> b!2883711 (=> (not res!1194785) (not e!1823952))))

(assert (=> b!2883711 (= res!1194785 (not lt!1020297))))

(declare-fun b!2883712 () Bool)

(declare-fun res!1194790 () Bool)

(assert (=> b!2883712 (=> res!1194790 e!1823954)))

(assert (=> b!2883712 (= res!1194790 e!1823950)))

(declare-fun res!1194791 () Bool)

(assert (=> b!2883712 (=> (not res!1194791) (not e!1823950))))

(assert (=> b!2883712 (= res!1194791 lt!1020297)))

(declare-fun d!833762 () Bool)

(declare-fun e!1823953 () Bool)

(assert (=> d!833762 e!1823953))

(declare-fun c!468508 () Bool)

(assert (=> d!833762 (= c!468508 ((_ is EmptyExpr!8793) (regTwo!18098 r!23079)))))

(declare-fun e!1823948 () Bool)

(assert (=> d!833762 (= lt!1020297 e!1823948)))

(declare-fun c!468509 () Bool)

(assert (=> d!833762 (= c!468509 (isEmpty!18764 (get!10404 lt!1020252)))))

(assert (=> d!833762 (validRegex!3566 (regTwo!18098 r!23079))))

(assert (=> d!833762 (= (matchR!3775 (regTwo!18098 r!23079) (get!10404 lt!1020252)) lt!1020297)))

(declare-fun b!2883705 () Bool)

(assert (=> b!2883705 (= e!1823953 e!1823951)))

(declare-fun c!468507 () Bool)

(assert (=> b!2883705 (= c!468507 ((_ is EmptyLang!8793) (regTwo!18098 r!23079)))))

(declare-fun b!2883713 () Bool)

(assert (=> b!2883713 (= e!1823948 (nullable!2705 (regTwo!18098 r!23079)))))

(declare-fun b!2883714 () Bool)

(assert (=> b!2883714 (= e!1823953 (= lt!1020297 call!186969))))

(declare-fun b!2883715 () Bool)

(assert (=> b!2883715 (= e!1823948 (matchR!3775 (derivativeStep!2338 (regTwo!18098 r!23079) (head!6367 (get!10404 lt!1020252))) (tail!4592 (get!10404 lt!1020252))))))

(declare-fun b!2883716 () Bool)

(declare-fun res!1194788 () Bool)

(assert (=> b!2883716 (=> res!1194788 e!1823954)))

(assert (=> b!2883716 (= res!1194788 (not ((_ is ElementMatch!8793) (regTwo!18098 r!23079))))))

(assert (=> b!2883716 (= e!1823951 e!1823954)))

(assert (= (and d!833762 c!468509) b!2883713))

(assert (= (and d!833762 (not c!468509)) b!2883715))

(assert (= (and d!833762 c!468508) b!2883714))

(assert (= (and d!833762 (not c!468508)) b!2883705))

(assert (= (and b!2883705 c!468507) b!2883710))

(assert (= (and b!2883705 (not c!468507)) b!2883716))

(assert (= (and b!2883716 (not res!1194788)) b!2883712))

(assert (= (and b!2883712 res!1194791) b!2883707))

(assert (= (and b!2883707 res!1194784) b!2883709))

(assert (= (and b!2883709 res!1194787) b!2883708))

(assert (= (and b!2883712 (not res!1194790)) b!2883711))

(assert (= (and b!2883711 res!1194785) b!2883703))

(assert (= (and b!2883703 (not res!1194786)) b!2883704))

(assert (= (and b!2883704 (not res!1194789)) b!2883706))

(assert (= (or b!2883714 b!2883703 b!2883707) bm!186964))

(assert (=> b!2883706 m!3299991))

(declare-fun m!3300155 () Bool)

(assert (=> b!2883706 m!3300155))

(assert (=> bm!186964 m!3299991))

(declare-fun m!3300157 () Bool)

(assert (=> bm!186964 m!3300157))

(assert (=> b!2883709 m!3299991))

(declare-fun m!3300159 () Bool)

(assert (=> b!2883709 m!3300159))

(assert (=> b!2883709 m!3300159))

(declare-fun m!3300161 () Bool)

(assert (=> b!2883709 m!3300161))

(assert (=> b!2883708 m!3299991))

(assert (=> b!2883708 m!3300155))

(declare-fun m!3300163 () Bool)

(assert (=> b!2883713 m!3300163))

(assert (=> b!2883715 m!3299991))

(assert (=> b!2883715 m!3300155))

(assert (=> b!2883715 m!3300155))

(declare-fun m!3300165 () Bool)

(assert (=> b!2883715 m!3300165))

(assert (=> b!2883715 m!3299991))

(assert (=> b!2883715 m!3300159))

(assert (=> b!2883715 m!3300165))

(assert (=> b!2883715 m!3300159))

(declare-fun m!3300167 () Bool)

(assert (=> b!2883715 m!3300167))

(assert (=> d!833762 m!3299991))

(assert (=> d!833762 m!3300157))

(assert (=> d!833762 m!3300005))

(assert (=> b!2883704 m!3299991))

(assert (=> b!2883704 m!3300159))

(assert (=> b!2883704 m!3300159))

(assert (=> b!2883704 m!3300161))

(assert (=> b!2883374 d!833762))

(declare-fun b!2883743 () Bool)

(declare-fun e!1823969 () Bool)

(declare-fun e!1823966 () Bool)

(assert (=> b!2883743 (= e!1823969 e!1823966)))

(declare-fun res!1194794 () Bool)

(assert (=> b!2883743 (=> res!1194794 e!1823966)))

(declare-fun call!186972 () Bool)

(assert (=> b!2883743 (= res!1194794 call!186972)))

(declare-fun b!2883744 () Bool)

(declare-fun res!1194797 () Bool)

(assert (=> b!2883744 (=> res!1194797 e!1823966)))

(assert (=> b!2883744 (= res!1194797 (not (isEmpty!18764 (tail!4592 (v!34591 lt!1020254)))))))

(declare-fun b!2883746 () Bool)

(assert (=> b!2883746 (= e!1823966 (not (= (head!6367 (v!34591 lt!1020254)) (c!468394 (regOne!18098 r!23079)))))))

(declare-fun b!2883747 () Bool)

(declare-fun res!1194792 () Bool)

(declare-fun e!1823967 () Bool)

(assert (=> b!2883747 (=> (not res!1194792) (not e!1823967))))

(assert (=> b!2883747 (= res!1194792 (not call!186972))))

(declare-fun b!2883748 () Bool)

(assert (=> b!2883748 (= e!1823967 (= (head!6367 (v!34591 lt!1020254)) (c!468394 (regOne!18098 r!23079))))))

(declare-fun bm!186967 () Bool)

(assert (=> bm!186967 (= call!186972 (isEmpty!18764 (v!34591 lt!1020254)))))

(declare-fun b!2883749 () Bool)

(declare-fun res!1194795 () Bool)

(assert (=> b!2883749 (=> (not res!1194795) (not e!1823967))))

(assert (=> b!2883749 (= res!1194795 (isEmpty!18764 (tail!4592 (v!34591 lt!1020254))))))

(declare-fun b!2883750 () Bool)

(declare-fun e!1823968 () Bool)

(declare-fun lt!1020301 () Bool)

(assert (=> b!2883750 (= e!1823968 (not lt!1020301))))

(declare-fun b!2883751 () Bool)

(declare-fun e!1823971 () Bool)

(assert (=> b!2883751 (= e!1823971 e!1823969)))

(declare-fun res!1194793 () Bool)

(assert (=> b!2883751 (=> (not res!1194793) (not e!1823969))))

(assert (=> b!2883751 (= res!1194793 (not lt!1020301))))

(declare-fun b!2883752 () Bool)

(declare-fun res!1194798 () Bool)

(assert (=> b!2883752 (=> res!1194798 e!1823971)))

(assert (=> b!2883752 (= res!1194798 e!1823967)))

(declare-fun res!1194799 () Bool)

(assert (=> b!2883752 (=> (not res!1194799) (not e!1823967))))

(assert (=> b!2883752 (= res!1194799 lt!1020301)))

(declare-fun d!833766 () Bool)

(declare-fun e!1823970 () Bool)

(assert (=> d!833766 e!1823970))

(declare-fun c!468519 () Bool)

(assert (=> d!833766 (= c!468519 ((_ is EmptyExpr!8793) (regOne!18098 r!23079)))))

(declare-fun e!1823965 () Bool)

(assert (=> d!833766 (= lt!1020301 e!1823965)))

(declare-fun c!468520 () Bool)

(assert (=> d!833766 (= c!468520 (isEmpty!18764 (v!34591 lt!1020254)))))

(assert (=> d!833766 (validRegex!3566 (regOne!18098 r!23079))))

(assert (=> d!833766 (= (matchR!3775 (regOne!18098 r!23079) (v!34591 lt!1020254)) lt!1020301)))

(declare-fun b!2883745 () Bool)

(assert (=> b!2883745 (= e!1823970 e!1823968)))

(declare-fun c!468518 () Bool)

(assert (=> b!2883745 (= c!468518 ((_ is EmptyLang!8793) (regOne!18098 r!23079)))))

(declare-fun b!2883753 () Bool)

(assert (=> b!2883753 (= e!1823965 (nullable!2705 (regOne!18098 r!23079)))))

(declare-fun b!2883754 () Bool)

(assert (=> b!2883754 (= e!1823970 (= lt!1020301 call!186972))))

(declare-fun b!2883755 () Bool)

(assert (=> b!2883755 (= e!1823965 (matchR!3775 (derivativeStep!2338 (regOne!18098 r!23079) (head!6367 (v!34591 lt!1020254))) (tail!4592 (v!34591 lt!1020254))))))

(declare-fun b!2883756 () Bool)

(declare-fun res!1194796 () Bool)

(assert (=> b!2883756 (=> res!1194796 e!1823971)))

(assert (=> b!2883756 (= res!1194796 (not ((_ is ElementMatch!8793) (regOne!18098 r!23079))))))

(assert (=> b!2883756 (= e!1823968 e!1823971)))

(assert (= (and d!833766 c!468520) b!2883753))

(assert (= (and d!833766 (not c!468520)) b!2883755))

(assert (= (and d!833766 c!468519) b!2883754))

(assert (= (and d!833766 (not c!468519)) b!2883745))

(assert (= (and b!2883745 c!468518) b!2883750))

(assert (= (and b!2883745 (not c!468518)) b!2883756))

(assert (= (and b!2883756 (not res!1194796)) b!2883752))

(assert (= (and b!2883752 res!1194799) b!2883747))

(assert (= (and b!2883747 res!1194792) b!2883749))

(assert (= (and b!2883749 res!1194795) b!2883748))

(assert (= (and b!2883752 (not res!1194798)) b!2883751))

(assert (= (and b!2883751 res!1194793) b!2883743))

(assert (= (and b!2883743 (not res!1194794)) b!2883744))

(assert (= (and b!2883744 (not res!1194797)) b!2883746))

(assert (= (or b!2883754 b!2883743 b!2883747) bm!186967))

(declare-fun m!3300169 () Bool)

(assert (=> b!2883746 m!3300169))

(declare-fun m!3300171 () Bool)

(assert (=> bm!186967 m!3300171))

(declare-fun m!3300173 () Bool)

(assert (=> b!2883749 m!3300173))

(assert (=> b!2883749 m!3300173))

(declare-fun m!3300175 () Bool)

(assert (=> b!2883749 m!3300175))

(assert (=> b!2883748 m!3300169))

(assert (=> b!2883753 m!3300137))

(assert (=> b!2883755 m!3300169))

(assert (=> b!2883755 m!3300169))

(declare-fun m!3300177 () Bool)

(assert (=> b!2883755 m!3300177))

(assert (=> b!2883755 m!3300173))

(assert (=> b!2883755 m!3300177))

(assert (=> b!2883755 m!3300173))

(declare-fun m!3300179 () Bool)

(assert (=> b!2883755 m!3300179))

(assert (=> d!833766 m!3300171))

(assert (=> d!833766 m!3300107))

(assert (=> b!2883744 m!3300173))

(assert (=> b!2883744 m!3300173))

(assert (=> b!2883744 m!3300175))

(assert (=> b!2883374 d!833766))

(declare-fun d!833768 () Bool)

(assert (=> d!833768 (= (get!10404 lt!1020252) (v!34591 lt!1020252))))

(assert (=> b!2883374 d!833768))

(declare-fun d!833770 () Bool)

(assert (=> d!833770 (matchR!3775 (regTwo!18098 r!23079) (get!10404 (getLanguageWitness!500 (regTwo!18098 r!23079))))))

(declare-fun lt!1020302 () Unit!48055)

(assert (=> d!833770 (= lt!1020302 (choose!17050 (regTwo!18098 r!23079)))))

(assert (=> d!833770 (validRegex!3566 (regTwo!18098 r!23079))))

(assert (=> d!833770 (= (lemmaGetWitnessMatches!82 (regTwo!18098 r!23079)) lt!1020302)))

(declare-fun bs!523784 () Bool)

(assert (= bs!523784 d!833770))

(declare-fun m!3300181 () Bool)

(assert (=> bs!523784 m!3300181))

(declare-fun m!3300183 () Bool)

(assert (=> bs!523784 m!3300183))

(assert (=> bs!523784 m!3300007))

(assert (=> bs!523784 m!3300007))

(assert (=> bs!523784 m!3300181))

(declare-fun m!3300185 () Bool)

(assert (=> bs!523784 m!3300185))

(assert (=> bs!523784 m!3300005))

(assert (=> b!2883374 d!833770))

(declare-fun b!2883789 () Bool)

(declare-fun e!1823979 () Bool)

(declare-fun tp!924895 () Bool)

(assert (=> b!2883789 (= e!1823979 tp!924895)))

(declare-fun b!2883788 () Bool)

(declare-fun tp!924896 () Bool)

(declare-fun tp!924897 () Bool)

(assert (=> b!2883788 (= e!1823979 (and tp!924896 tp!924897))))

(declare-fun b!2883790 () Bool)

(declare-fun tp!924899 () Bool)

(declare-fun tp!924898 () Bool)

(assert (=> b!2883790 (= e!1823979 (and tp!924899 tp!924898))))

(declare-fun b!2883787 () Bool)

(assert (=> b!2883787 (= e!1823979 tp_is_empty!15173)))

(assert (=> b!2883371 (= tp!924848 e!1823979)))

(assert (= (and b!2883371 ((_ is ElementMatch!8793) (regOne!18099 r!23079))) b!2883787))

(assert (= (and b!2883371 ((_ is Concat!14114) (regOne!18099 r!23079))) b!2883788))

(assert (= (and b!2883371 ((_ is Star!8793) (regOne!18099 r!23079))) b!2883789))

(assert (= (and b!2883371 ((_ is Union!8793) (regOne!18099 r!23079))) b!2883790))

(declare-fun b!2883793 () Bool)

(declare-fun e!1823980 () Bool)

(declare-fun tp!924900 () Bool)

(assert (=> b!2883793 (= e!1823980 tp!924900)))

(declare-fun b!2883792 () Bool)

(declare-fun tp!924901 () Bool)

(declare-fun tp!924902 () Bool)

(assert (=> b!2883792 (= e!1823980 (and tp!924901 tp!924902))))

(declare-fun b!2883794 () Bool)

(declare-fun tp!924904 () Bool)

(declare-fun tp!924903 () Bool)

(assert (=> b!2883794 (= e!1823980 (and tp!924904 tp!924903))))

(declare-fun b!2883791 () Bool)

(assert (=> b!2883791 (= e!1823980 tp_is_empty!15173)))

(assert (=> b!2883371 (= tp!924847 e!1823980)))

(assert (= (and b!2883371 ((_ is ElementMatch!8793) (regTwo!18099 r!23079))) b!2883791))

(assert (= (and b!2883371 ((_ is Concat!14114) (regTwo!18099 r!23079))) b!2883792))

(assert (= (and b!2883371 ((_ is Star!8793) (regTwo!18099 r!23079))) b!2883793))

(assert (= (and b!2883371 ((_ is Union!8793) (regTwo!18099 r!23079))) b!2883794))

(declare-fun b!2883797 () Bool)

(declare-fun e!1823981 () Bool)

(declare-fun tp!924905 () Bool)

(assert (=> b!2883797 (= e!1823981 tp!924905)))

(declare-fun b!2883796 () Bool)

(declare-fun tp!924906 () Bool)

(declare-fun tp!924907 () Bool)

(assert (=> b!2883796 (= e!1823981 (and tp!924906 tp!924907))))

(declare-fun b!2883798 () Bool)

(declare-fun tp!924909 () Bool)

(declare-fun tp!924908 () Bool)

(assert (=> b!2883798 (= e!1823981 (and tp!924909 tp!924908))))

(declare-fun b!2883795 () Bool)

(assert (=> b!2883795 (= e!1823981 tp_is_empty!15173)))

(assert (=> b!2883366 (= tp!924845 e!1823981)))

(assert (= (and b!2883366 ((_ is ElementMatch!8793) (reg!9122 r!23079))) b!2883795))

(assert (= (and b!2883366 ((_ is Concat!14114) (reg!9122 r!23079))) b!2883796))

(assert (= (and b!2883366 ((_ is Star!8793) (reg!9122 r!23079))) b!2883797))

(assert (= (and b!2883366 ((_ is Union!8793) (reg!9122 r!23079))) b!2883798))

(declare-fun b!2883801 () Bool)

(declare-fun e!1823982 () Bool)

(declare-fun tp!924910 () Bool)

(assert (=> b!2883801 (= e!1823982 tp!924910)))

(declare-fun b!2883800 () Bool)

(declare-fun tp!924911 () Bool)

(declare-fun tp!924912 () Bool)

(assert (=> b!2883800 (= e!1823982 (and tp!924911 tp!924912))))

(declare-fun b!2883802 () Bool)

(declare-fun tp!924914 () Bool)

(declare-fun tp!924913 () Bool)

(assert (=> b!2883802 (= e!1823982 (and tp!924914 tp!924913))))

(declare-fun b!2883799 () Bool)

(assert (=> b!2883799 (= e!1823982 tp_is_empty!15173)))

(assert (=> b!2883369 (= tp!924846 e!1823982)))

(assert (= (and b!2883369 ((_ is ElementMatch!8793) (regOne!18098 r!23079))) b!2883799))

(assert (= (and b!2883369 ((_ is Concat!14114) (regOne!18098 r!23079))) b!2883800))

(assert (= (and b!2883369 ((_ is Star!8793) (regOne!18098 r!23079))) b!2883801))

(assert (= (and b!2883369 ((_ is Union!8793) (regOne!18098 r!23079))) b!2883802))

(declare-fun b!2883805 () Bool)

(declare-fun e!1823983 () Bool)

(declare-fun tp!924915 () Bool)

(assert (=> b!2883805 (= e!1823983 tp!924915)))

(declare-fun b!2883804 () Bool)

(declare-fun tp!924916 () Bool)

(declare-fun tp!924917 () Bool)

(assert (=> b!2883804 (= e!1823983 (and tp!924916 tp!924917))))

(declare-fun b!2883806 () Bool)

(declare-fun tp!924919 () Bool)

(declare-fun tp!924918 () Bool)

(assert (=> b!2883806 (= e!1823983 (and tp!924919 tp!924918))))

(declare-fun b!2883803 () Bool)

(assert (=> b!2883803 (= e!1823983 tp_is_empty!15173)))

(assert (=> b!2883369 (= tp!924849 e!1823983)))

(assert (= (and b!2883369 ((_ is ElementMatch!8793) (regTwo!18098 r!23079))) b!2883803))

(assert (= (and b!2883369 ((_ is Concat!14114) (regTwo!18098 r!23079))) b!2883804))

(assert (= (and b!2883369 ((_ is Star!8793) (regTwo!18098 r!23079))) b!2883805))

(assert (= (and b!2883369 ((_ is Union!8793) (regTwo!18098 r!23079))) b!2883806))

(check-sat (not b!2883797) (not bm!186967) (not b!2883505) (not b!2883792) (not b!2883531) (not b!2883801) (not bm!186930) (not bm!186932) (not bm!186939) (not b!2883670) (not b!2883744) (not b!2883676) (not b!2883547) (not b!2883528) (not d!833762) (not b!2883421) (not b!2883715) (not b!2883713) (not bm!186958) (not d!833752) (not b!2883790) (not b!2883706) (not bm!186934) (not b!2883667) (not b!2883796) (not b!2883746) (not b!2883669) (not bm!186936) (not d!833770) (not d!833750) (not b!2883800) (not b!2883789) (not b!2883708) (not d!833744) (not bm!186937) (not b!2883798) (not b!2883804) (not b!2883749) (not b!2883806) (not bm!186940) (not b!2883674) (not bm!186919) (not b!2883788) (not b!2883665) (not d!833766) (not b!2883755) (not b!2883802) tp_is_empty!15173 (not bm!186938) (not b!2883794) (not b!2883793) (not b!2883704) (not bm!186964) (not b!2883748) (not bm!186918) (not b!2883709) (not b!2883753) (not b!2883805))
(check-sat)
