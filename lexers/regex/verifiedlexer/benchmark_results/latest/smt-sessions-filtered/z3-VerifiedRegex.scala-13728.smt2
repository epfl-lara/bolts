; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733644 () Bool)

(assert start!733644)

(declare-fun b!7615177 () Bool)

(declare-datatypes ((Unit!167304 0))(
  ( (Unit!167305) )
))
(declare-fun e!4528691 () Unit!167304)

(declare-fun Unit!167306 () Unit!167304)

(assert (=> b!7615177 (= e!4528691 Unit!167306)))

(declare-fun b!7615178 () Bool)

(declare-fun e!4528692 () Bool)

(declare-fun tp_is_empty!50857 () Bool)

(declare-fun tp!2223462 () Bool)

(assert (=> b!7615178 (= e!4528692 (and tp_is_empty!50857 tp!2223462))))

(declare-fun b!7615179 () Bool)

(declare-fun Unit!167307 () Unit!167304)

(assert (=> b!7615179 (= e!4528691 Unit!167307)))

(declare-fun lt!2655174 () Unit!167304)

(declare-datatypes ((C!40828 0))(
  ( (C!40829 (val!30854 Int)) )
))
(declare-datatypes ((Regex!20251 0))(
  ( (ElementMatch!20251 (c!1403766 C!40828)) (Concat!29096 (regOne!41014 Regex!20251) (regTwo!41014 Regex!20251)) (EmptyExpr!20251) (Star!20251 (reg!20580 Regex!20251)) (EmptyLang!20251) (Union!20251 (regOne!41015 Regex!20251) (regTwo!41015 Regex!20251)) )
))
(declare-fun r!14126 () Regex!20251)

(declare-datatypes ((List!73104 0))(
  ( (Nil!72980) (Cons!72980 (h!79428 C!40828) (t!387839 List!73104)) )
))
(declare-fun s!9605 () List!73104)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!90 (Regex!20251 Regex!20251 List!73104) Unit!167304)

(assert (=> b!7615179 (= lt!2655174 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!90 (regOne!41015 r!14126) (regTwo!41015 r!14126) s!9605))))

(declare-fun res!3048507 () Bool)

(declare-fun matchR!9766 (Regex!20251 List!73104) Bool)

(assert (=> b!7615179 (= res!3048507 (matchR!9766 r!14126 s!9605))))

(declare-fun e!4528693 () Bool)

(assert (=> b!7615179 (=> (not res!3048507) (not e!4528693))))

(assert (=> b!7615179 e!4528693))

(declare-fun b!7615180 () Bool)

(declare-fun e!4528689 () Bool)

(declare-fun tp!2223464 () Bool)

(declare-fun tp!2223463 () Bool)

(assert (=> b!7615180 (= e!4528689 (and tp!2223464 tp!2223463))))

(declare-fun b!7615181 () Bool)

(assert (=> b!7615181 (= e!4528689 tp_is_empty!50857)))

(declare-fun b!7615182 () Bool)

(assert (=> b!7615182 (= e!4528693 false)))

(declare-fun res!3048509 () Bool)

(declare-fun e!4528690 () Bool)

(assert (=> start!733644 (=> (not res!3048509) (not e!4528690))))

(declare-fun validRegex!10673 (Regex!20251) Bool)

(assert (=> start!733644 (= res!3048509 (validRegex!10673 r!14126))))

(assert (=> start!733644 e!4528690))

(assert (=> start!733644 e!4528689))

(assert (=> start!733644 e!4528692))

(declare-fun b!7615183 () Bool)

(assert (=> b!7615183 (= e!4528690 (not (validRegex!10673 (regTwo!41015 r!14126))))))

(declare-fun lt!2655173 () Unit!167304)

(assert (=> b!7615183 (= lt!2655173 e!4528691)))

(declare-fun c!1403765 () Bool)

(assert (=> b!7615183 (= c!1403765 (matchR!9766 (regOne!41015 r!14126) s!9605))))

(declare-fun b!7615184 () Bool)

(declare-fun tp!2223465 () Bool)

(assert (=> b!7615184 (= e!4528689 tp!2223465)))

(declare-fun b!7615185 () Bool)

(declare-fun res!3048510 () Bool)

(assert (=> b!7615185 (=> (not res!3048510) (not e!4528690))))

(assert (=> b!7615185 (= res!3048510 (not (matchR!9766 r!14126 s!9605)))))

(declare-fun b!7615186 () Bool)

(declare-fun tp!2223467 () Bool)

(declare-fun tp!2223466 () Bool)

(assert (=> b!7615186 (= e!4528689 (and tp!2223467 tp!2223466))))

(declare-fun b!7615187 () Bool)

(declare-fun res!3048508 () Bool)

(assert (=> b!7615187 (=> (not res!3048508) (not e!4528690))))

(get-info :version)

(assert (=> b!7615187 (= res!3048508 (and (not ((_ is EmptyExpr!20251) r!14126)) (not ((_ is EmptyLang!20251) r!14126)) (not ((_ is ElementMatch!20251) r!14126)) ((_ is Union!20251) r!14126)))))

(assert (= (and start!733644 res!3048509) b!7615187))

(assert (= (and b!7615187 res!3048508) b!7615185))

(assert (= (and b!7615185 res!3048510) b!7615183))

(assert (= (and b!7615183 c!1403765) b!7615179))

(assert (= (and b!7615183 (not c!1403765)) b!7615177))

(assert (= (and b!7615179 res!3048507) b!7615182))

(assert (= (and start!733644 ((_ is ElementMatch!20251) r!14126)) b!7615181))

(assert (= (and start!733644 ((_ is Concat!29096) r!14126)) b!7615186))

(assert (= (and start!733644 ((_ is Star!20251) r!14126)) b!7615184))

(assert (= (and start!733644 ((_ is Union!20251) r!14126)) b!7615180))

(assert (= (and start!733644 ((_ is Cons!72980) s!9605)) b!7615178))

(declare-fun m!8149324 () Bool)

(assert (=> b!7615179 m!8149324))

(declare-fun m!8149326 () Bool)

(assert (=> b!7615179 m!8149326))

(declare-fun m!8149328 () Bool)

(assert (=> start!733644 m!8149328))

(declare-fun m!8149330 () Bool)

(assert (=> b!7615183 m!8149330))

(declare-fun m!8149332 () Bool)

(assert (=> b!7615183 m!8149332))

(assert (=> b!7615185 m!8149326))

(check-sat (not b!7615183) (not b!7615186) (not start!733644) (not b!7615179) (not b!7615178) (not b!7615184) (not b!7615185) tp_is_empty!50857 (not b!7615180))
(check-sat)
(get-model)

(declare-fun b!7615242 () Bool)

(declare-fun e!4528741 () Bool)

(declare-fun call!699613 () Bool)

(assert (=> b!7615242 (= e!4528741 call!699613)))

(declare-fun bm!699608 () Bool)

(declare-fun call!699614 () Bool)

(declare-fun c!1403779 () Bool)

(assert (=> bm!699608 (= call!699614 (validRegex!10673 (ite c!1403779 (regOne!41015 (regTwo!41015 r!14126)) (regOne!41014 (regTwo!41015 r!14126)))))))

(declare-fun b!7615243 () Bool)

(declare-fun e!4528737 () Bool)

(declare-fun e!4528736 () Bool)

(assert (=> b!7615243 (= e!4528737 e!4528736)))

(declare-fun c!1403780 () Bool)

(assert (=> b!7615243 (= c!1403780 ((_ is Star!20251) (regTwo!41015 r!14126)))))

(declare-fun bm!699609 () Bool)

(declare-fun call!699615 () Bool)

(assert (=> bm!699609 (= call!699613 call!699615)))

(declare-fun b!7615244 () Bool)

(declare-fun res!3048543 () Bool)

(declare-fun e!4528742 () Bool)

(assert (=> b!7615244 (=> res!3048543 e!4528742)))

(assert (=> b!7615244 (= res!3048543 (not ((_ is Concat!29096) (regTwo!41015 r!14126))))))

(declare-fun e!4528739 () Bool)

(assert (=> b!7615244 (= e!4528739 e!4528742)))

(declare-fun b!7615245 () Bool)

(declare-fun res!3048545 () Bool)

(declare-fun e!4528738 () Bool)

(assert (=> b!7615245 (=> (not res!3048545) (not e!4528738))))

(assert (=> b!7615245 (= res!3048545 call!699614)))

(assert (=> b!7615245 (= e!4528739 e!4528738)))

(declare-fun b!7615246 () Bool)

(assert (=> b!7615246 (= e!4528738 call!699613)))

(declare-fun d!2322687 () Bool)

(declare-fun res!3048544 () Bool)

(assert (=> d!2322687 (=> res!3048544 e!4528737)))

(assert (=> d!2322687 (= res!3048544 ((_ is ElementMatch!20251) (regTwo!41015 r!14126)))))

(assert (=> d!2322687 (= (validRegex!10673 (regTwo!41015 r!14126)) e!4528737)))

(declare-fun b!7615247 () Bool)

(assert (=> b!7615247 (= e!4528742 e!4528741)))

(declare-fun res!3048542 () Bool)

(assert (=> b!7615247 (=> (not res!3048542) (not e!4528741))))

(assert (=> b!7615247 (= res!3048542 call!699614)))

(declare-fun bm!699610 () Bool)

(assert (=> bm!699610 (= call!699615 (validRegex!10673 (ite c!1403780 (reg!20580 (regTwo!41015 r!14126)) (ite c!1403779 (regTwo!41015 (regTwo!41015 r!14126)) (regTwo!41014 (regTwo!41015 r!14126))))))))

(declare-fun b!7615248 () Bool)

(declare-fun e!4528740 () Bool)

(assert (=> b!7615248 (= e!4528740 call!699615)))

(declare-fun b!7615249 () Bool)

(assert (=> b!7615249 (= e!4528736 e!4528739)))

(assert (=> b!7615249 (= c!1403779 ((_ is Union!20251) (regTwo!41015 r!14126)))))

(declare-fun b!7615250 () Bool)

(assert (=> b!7615250 (= e!4528736 e!4528740)))

(declare-fun res!3048541 () Bool)

(declare-fun nullable!8862 (Regex!20251) Bool)

(assert (=> b!7615250 (= res!3048541 (not (nullable!8862 (reg!20580 (regTwo!41015 r!14126)))))))

(assert (=> b!7615250 (=> (not res!3048541) (not e!4528740))))

(assert (= (and d!2322687 (not res!3048544)) b!7615243))

(assert (= (and b!7615243 c!1403780) b!7615250))

(assert (= (and b!7615243 (not c!1403780)) b!7615249))

(assert (= (and b!7615250 res!3048541) b!7615248))

(assert (= (and b!7615249 c!1403779) b!7615245))

(assert (= (and b!7615249 (not c!1403779)) b!7615244))

(assert (= (and b!7615245 res!3048545) b!7615246))

(assert (= (and b!7615244 (not res!3048543)) b!7615247))

(assert (= (and b!7615247 res!3048542) b!7615242))

(assert (= (or b!7615245 b!7615247) bm!699608))

(assert (= (or b!7615246 b!7615242) bm!699609))

(assert (= (or b!7615248 bm!699609) bm!699610))

(declare-fun m!8149346 () Bool)

(assert (=> bm!699608 m!8149346))

(declare-fun m!8149348 () Bool)

(assert (=> bm!699610 m!8149348))

(declare-fun m!8149350 () Bool)

(assert (=> b!7615250 m!8149350))

(assert (=> b!7615183 d!2322687))

(declare-fun b!7615321 () Bool)

(declare-fun res!3048589 () Bool)

(declare-fun e!4528779 () Bool)

(assert (=> b!7615321 (=> res!3048589 e!4528779)))

(assert (=> b!7615321 (= res!3048589 (not ((_ is ElementMatch!20251) (regOne!41015 r!14126))))))

(declare-fun e!4528784 () Bool)

(assert (=> b!7615321 (= e!4528784 e!4528779)))

(declare-fun b!7615322 () Bool)

(declare-fun e!4528783 () Bool)

(assert (=> b!7615322 (= e!4528779 e!4528783)))

(declare-fun res!3048588 () Bool)

(assert (=> b!7615322 (=> (not res!3048588) (not e!4528783))))

(declare-fun lt!2655180 () Bool)

(assert (=> b!7615322 (= res!3048588 (not lt!2655180))))

(declare-fun b!7615323 () Bool)

(declare-fun e!4528778 () Bool)

(assert (=> b!7615323 (= e!4528778 e!4528784)))

(declare-fun c!1403796 () Bool)

(assert (=> b!7615323 (= c!1403796 ((_ is EmptyLang!20251) (regOne!41015 r!14126)))))

(declare-fun b!7615324 () Bool)

(declare-fun res!3048586 () Bool)

(declare-fun e!4528781 () Bool)

(assert (=> b!7615324 (=> (not res!3048586) (not e!4528781))))

(declare-fun call!699621 () Bool)

(assert (=> b!7615324 (= res!3048586 (not call!699621))))

(declare-fun b!7615325 () Bool)

(declare-fun res!3048592 () Bool)

(assert (=> b!7615325 (=> (not res!3048592) (not e!4528781))))

(declare-fun isEmpty!41598 (List!73104) Bool)

(declare-fun tail!15185 (List!73104) List!73104)

(assert (=> b!7615325 (= res!3048592 (isEmpty!41598 (tail!15185 s!9605)))))

(declare-fun b!7615326 () Bool)

(assert (=> b!7615326 (= e!4528784 (not lt!2655180))))

(declare-fun b!7615327 () Bool)

(declare-fun head!15645 (List!73104) C!40828)

(assert (=> b!7615327 (= e!4528781 (= (head!15645 s!9605) (c!1403766 (regOne!41015 r!14126))))))

(declare-fun b!7615328 () Bool)

(declare-fun res!3048590 () Bool)

(assert (=> b!7615328 (=> res!3048590 e!4528779)))

(assert (=> b!7615328 (= res!3048590 e!4528781)))

(declare-fun res!3048587 () Bool)

(assert (=> b!7615328 (=> (not res!3048587) (not e!4528781))))

(assert (=> b!7615328 (= res!3048587 lt!2655180)))

(declare-fun d!2322693 () Bool)

(assert (=> d!2322693 e!4528778))

(declare-fun c!1403798 () Bool)

(assert (=> d!2322693 (= c!1403798 ((_ is EmptyExpr!20251) (regOne!41015 r!14126)))))

(declare-fun e!4528780 () Bool)

(assert (=> d!2322693 (= lt!2655180 e!4528780)))

(declare-fun c!1403797 () Bool)

(assert (=> d!2322693 (= c!1403797 (isEmpty!41598 s!9605))))

(assert (=> d!2322693 (validRegex!10673 (regOne!41015 r!14126))))

(assert (=> d!2322693 (= (matchR!9766 (regOne!41015 r!14126) s!9605) lt!2655180)))

(declare-fun b!7615329 () Bool)

(declare-fun e!4528782 () Bool)

(assert (=> b!7615329 (= e!4528782 (not (= (head!15645 s!9605) (c!1403766 (regOne!41015 r!14126)))))))

(declare-fun b!7615330 () Bool)

(declare-fun derivativeStep!5845 (Regex!20251 C!40828) Regex!20251)

(assert (=> b!7615330 (= e!4528780 (matchR!9766 (derivativeStep!5845 (regOne!41015 r!14126) (head!15645 s!9605)) (tail!15185 s!9605)))))

(declare-fun b!7615331 () Bool)

(assert (=> b!7615331 (= e!4528783 e!4528782)))

(declare-fun res!3048593 () Bool)

(assert (=> b!7615331 (=> res!3048593 e!4528782)))

(assert (=> b!7615331 (= res!3048593 call!699621)))

(declare-fun bm!699616 () Bool)

(assert (=> bm!699616 (= call!699621 (isEmpty!41598 s!9605))))

(declare-fun b!7615332 () Bool)

(assert (=> b!7615332 (= e!4528780 (nullable!8862 (regOne!41015 r!14126)))))

(declare-fun b!7615333 () Bool)

(assert (=> b!7615333 (= e!4528778 (= lt!2655180 call!699621))))

(declare-fun b!7615334 () Bool)

(declare-fun res!3048591 () Bool)

(assert (=> b!7615334 (=> res!3048591 e!4528782)))

(assert (=> b!7615334 (= res!3048591 (not (isEmpty!41598 (tail!15185 s!9605))))))

(assert (= (and d!2322693 c!1403797) b!7615332))

(assert (= (and d!2322693 (not c!1403797)) b!7615330))

(assert (= (and d!2322693 c!1403798) b!7615333))

(assert (= (and d!2322693 (not c!1403798)) b!7615323))

(assert (= (and b!7615323 c!1403796) b!7615326))

(assert (= (and b!7615323 (not c!1403796)) b!7615321))

(assert (= (and b!7615321 (not res!3048589)) b!7615328))

(assert (= (and b!7615328 res!3048587) b!7615324))

(assert (= (and b!7615324 res!3048586) b!7615325))

(assert (= (and b!7615325 res!3048592) b!7615327))

(assert (= (and b!7615328 (not res!3048590)) b!7615322))

(assert (= (and b!7615322 res!3048588) b!7615331))

(assert (= (and b!7615331 (not res!3048593)) b!7615334))

(assert (= (and b!7615334 (not res!3048591)) b!7615329))

(assert (= (or b!7615333 b!7615324 b!7615331) bm!699616))

(declare-fun m!8149368 () Bool)

(assert (=> b!7615325 m!8149368))

(assert (=> b!7615325 m!8149368))

(declare-fun m!8149370 () Bool)

(assert (=> b!7615325 m!8149370))

(declare-fun m!8149372 () Bool)

(assert (=> b!7615332 m!8149372))

(declare-fun m!8149374 () Bool)

(assert (=> d!2322693 m!8149374))

(declare-fun m!8149376 () Bool)

(assert (=> d!2322693 m!8149376))

(declare-fun m!8149378 () Bool)

(assert (=> b!7615330 m!8149378))

(assert (=> b!7615330 m!8149378))

(declare-fun m!8149380 () Bool)

(assert (=> b!7615330 m!8149380))

(assert (=> b!7615330 m!8149368))

(assert (=> b!7615330 m!8149380))

(assert (=> b!7615330 m!8149368))

(declare-fun m!8149382 () Bool)

(assert (=> b!7615330 m!8149382))

(assert (=> b!7615334 m!8149368))

(assert (=> b!7615334 m!8149368))

(assert (=> b!7615334 m!8149370))

(assert (=> bm!699616 m!8149374))

(assert (=> b!7615329 m!8149378))

(assert (=> b!7615327 m!8149378))

(assert (=> b!7615183 d!2322693))

(declare-fun b!7615335 () Bool)

(declare-fun e!4528790 () Bool)

(declare-fun call!699622 () Bool)

(assert (=> b!7615335 (= e!4528790 call!699622)))

(declare-fun bm!699617 () Bool)

(declare-fun call!699623 () Bool)

(declare-fun c!1403799 () Bool)

(assert (=> bm!699617 (= call!699623 (validRegex!10673 (ite c!1403799 (regOne!41015 r!14126) (regOne!41014 r!14126))))))

(declare-fun b!7615336 () Bool)

(declare-fun e!4528786 () Bool)

(declare-fun e!4528785 () Bool)

(assert (=> b!7615336 (= e!4528786 e!4528785)))

(declare-fun c!1403800 () Bool)

(assert (=> b!7615336 (= c!1403800 ((_ is Star!20251) r!14126))))

(declare-fun bm!699618 () Bool)

(declare-fun call!699624 () Bool)

(assert (=> bm!699618 (= call!699622 call!699624)))

(declare-fun b!7615337 () Bool)

(declare-fun res!3048596 () Bool)

(declare-fun e!4528791 () Bool)

(assert (=> b!7615337 (=> res!3048596 e!4528791)))

(assert (=> b!7615337 (= res!3048596 (not ((_ is Concat!29096) r!14126)))))

(declare-fun e!4528788 () Bool)

(assert (=> b!7615337 (= e!4528788 e!4528791)))

(declare-fun b!7615338 () Bool)

(declare-fun res!3048598 () Bool)

(declare-fun e!4528787 () Bool)

(assert (=> b!7615338 (=> (not res!3048598) (not e!4528787))))

(assert (=> b!7615338 (= res!3048598 call!699623)))

(assert (=> b!7615338 (= e!4528788 e!4528787)))

(declare-fun b!7615339 () Bool)

(assert (=> b!7615339 (= e!4528787 call!699622)))

(declare-fun d!2322697 () Bool)

(declare-fun res!3048597 () Bool)

(assert (=> d!2322697 (=> res!3048597 e!4528786)))

(assert (=> d!2322697 (= res!3048597 ((_ is ElementMatch!20251) r!14126))))

(assert (=> d!2322697 (= (validRegex!10673 r!14126) e!4528786)))

(declare-fun b!7615340 () Bool)

(assert (=> b!7615340 (= e!4528791 e!4528790)))

(declare-fun res!3048595 () Bool)

(assert (=> b!7615340 (=> (not res!3048595) (not e!4528790))))

(assert (=> b!7615340 (= res!3048595 call!699623)))

(declare-fun bm!699619 () Bool)

(assert (=> bm!699619 (= call!699624 (validRegex!10673 (ite c!1403800 (reg!20580 r!14126) (ite c!1403799 (regTwo!41015 r!14126) (regTwo!41014 r!14126)))))))

(declare-fun b!7615341 () Bool)

(declare-fun e!4528789 () Bool)

(assert (=> b!7615341 (= e!4528789 call!699624)))

(declare-fun b!7615342 () Bool)

(assert (=> b!7615342 (= e!4528785 e!4528788)))

(assert (=> b!7615342 (= c!1403799 ((_ is Union!20251) r!14126))))

(declare-fun b!7615343 () Bool)

(assert (=> b!7615343 (= e!4528785 e!4528789)))

(declare-fun res!3048594 () Bool)

(assert (=> b!7615343 (= res!3048594 (not (nullable!8862 (reg!20580 r!14126))))))

(assert (=> b!7615343 (=> (not res!3048594) (not e!4528789))))

(assert (= (and d!2322697 (not res!3048597)) b!7615336))

(assert (= (and b!7615336 c!1403800) b!7615343))

(assert (= (and b!7615336 (not c!1403800)) b!7615342))

(assert (= (and b!7615343 res!3048594) b!7615341))

(assert (= (and b!7615342 c!1403799) b!7615338))

(assert (= (and b!7615342 (not c!1403799)) b!7615337))

(assert (= (and b!7615338 res!3048598) b!7615339))

(assert (= (and b!7615337 (not res!3048596)) b!7615340))

(assert (= (and b!7615340 res!3048595) b!7615335))

(assert (= (or b!7615338 b!7615340) bm!699617))

(assert (= (or b!7615339 b!7615335) bm!699618))

(assert (= (or b!7615341 bm!699618) bm!699619))

(declare-fun m!8149384 () Bool)

(assert (=> bm!699617 m!8149384))

(declare-fun m!8149386 () Bool)

(assert (=> bm!699619 m!8149386))

(declare-fun m!8149388 () Bool)

(assert (=> b!7615343 m!8149388))

(assert (=> start!733644 d!2322697))

(declare-fun d!2322699 () Bool)

(assert (=> d!2322699 (matchR!9766 (Union!20251 (regOne!41015 r!14126) (regTwo!41015 r!14126)) s!9605)))

(declare-fun lt!2655187 () Unit!167304)

(declare-fun choose!58751 (Regex!20251 Regex!20251 List!73104) Unit!167304)

(assert (=> d!2322699 (= lt!2655187 (choose!58751 (regOne!41015 r!14126) (regTwo!41015 r!14126) s!9605))))

(declare-fun e!4528806 () Bool)

(assert (=> d!2322699 e!4528806))

(declare-fun res!3048612 () Bool)

(assert (=> d!2322699 (=> (not res!3048612) (not e!4528806))))

(assert (=> d!2322699 (= res!3048612 (validRegex!10673 (regOne!41015 r!14126)))))

(assert (=> d!2322699 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!90 (regOne!41015 r!14126) (regTwo!41015 r!14126) s!9605) lt!2655187)))

(declare-fun b!7615367 () Bool)

(assert (=> b!7615367 (= e!4528806 (validRegex!10673 (regTwo!41015 r!14126)))))

(assert (= (and d!2322699 res!3048612) b!7615367))

(declare-fun m!8149400 () Bool)

(assert (=> d!2322699 m!8149400))

(declare-fun m!8149402 () Bool)

(assert (=> d!2322699 m!8149402))

(assert (=> d!2322699 m!8149376))

(assert (=> b!7615367 m!8149330))

(assert (=> b!7615179 d!2322699))

(declare-fun b!7615375 () Bool)

(declare-fun res!3048616 () Bool)

(declare-fun e!4528811 () Bool)

(assert (=> b!7615375 (=> res!3048616 e!4528811)))

(assert (=> b!7615375 (= res!3048616 (not ((_ is ElementMatch!20251) r!14126)))))

(declare-fun e!4528816 () Bool)

(assert (=> b!7615375 (= e!4528816 e!4528811)))

(declare-fun b!7615376 () Bool)

(declare-fun e!4528815 () Bool)

(assert (=> b!7615376 (= e!4528811 e!4528815)))

(declare-fun res!3048615 () Bool)

(assert (=> b!7615376 (=> (not res!3048615) (not e!4528815))))

(declare-fun lt!2655188 () Bool)

(assert (=> b!7615376 (= res!3048615 (not lt!2655188))))

(declare-fun b!7615377 () Bool)

(declare-fun e!4528810 () Bool)

(assert (=> b!7615377 (= e!4528810 e!4528816)))

(declare-fun c!1403804 () Bool)

(assert (=> b!7615377 (= c!1403804 ((_ is EmptyLang!20251) r!14126))))

(declare-fun b!7615378 () Bool)

(declare-fun res!3048613 () Bool)

(declare-fun e!4528813 () Bool)

(assert (=> b!7615378 (=> (not res!3048613) (not e!4528813))))

(declare-fun call!699626 () Bool)

(assert (=> b!7615378 (= res!3048613 (not call!699626))))

(declare-fun b!7615379 () Bool)

(declare-fun res!3048619 () Bool)

(assert (=> b!7615379 (=> (not res!3048619) (not e!4528813))))

(assert (=> b!7615379 (= res!3048619 (isEmpty!41598 (tail!15185 s!9605)))))

(declare-fun b!7615380 () Bool)

(assert (=> b!7615380 (= e!4528816 (not lt!2655188))))

(declare-fun b!7615381 () Bool)

(assert (=> b!7615381 (= e!4528813 (= (head!15645 s!9605) (c!1403766 r!14126)))))

(declare-fun b!7615382 () Bool)

(declare-fun res!3048617 () Bool)

(assert (=> b!7615382 (=> res!3048617 e!4528811)))

(assert (=> b!7615382 (= res!3048617 e!4528813)))

(declare-fun res!3048614 () Bool)

(assert (=> b!7615382 (=> (not res!3048614) (not e!4528813))))

(assert (=> b!7615382 (= res!3048614 lt!2655188)))

(declare-fun d!2322703 () Bool)

(assert (=> d!2322703 e!4528810))

(declare-fun c!1403806 () Bool)

(assert (=> d!2322703 (= c!1403806 ((_ is EmptyExpr!20251) r!14126))))

(declare-fun e!4528812 () Bool)

(assert (=> d!2322703 (= lt!2655188 e!4528812)))

(declare-fun c!1403805 () Bool)

(assert (=> d!2322703 (= c!1403805 (isEmpty!41598 s!9605))))

(assert (=> d!2322703 (validRegex!10673 r!14126)))

(assert (=> d!2322703 (= (matchR!9766 r!14126 s!9605) lt!2655188)))

(declare-fun b!7615383 () Bool)

(declare-fun e!4528814 () Bool)

(assert (=> b!7615383 (= e!4528814 (not (= (head!15645 s!9605) (c!1403766 r!14126))))))

(declare-fun b!7615384 () Bool)

(assert (=> b!7615384 (= e!4528812 (matchR!9766 (derivativeStep!5845 r!14126 (head!15645 s!9605)) (tail!15185 s!9605)))))

(declare-fun b!7615385 () Bool)

(assert (=> b!7615385 (= e!4528815 e!4528814)))

(declare-fun res!3048620 () Bool)

(assert (=> b!7615385 (=> res!3048620 e!4528814)))

(assert (=> b!7615385 (= res!3048620 call!699626)))

(declare-fun bm!699621 () Bool)

(assert (=> bm!699621 (= call!699626 (isEmpty!41598 s!9605))))

(declare-fun b!7615386 () Bool)

(assert (=> b!7615386 (= e!4528812 (nullable!8862 r!14126))))

(declare-fun b!7615387 () Bool)

(assert (=> b!7615387 (= e!4528810 (= lt!2655188 call!699626))))

(declare-fun b!7615388 () Bool)

(declare-fun res!3048618 () Bool)

(assert (=> b!7615388 (=> res!3048618 e!4528814)))

(assert (=> b!7615388 (= res!3048618 (not (isEmpty!41598 (tail!15185 s!9605))))))

(assert (= (and d!2322703 c!1403805) b!7615386))

(assert (= (and d!2322703 (not c!1403805)) b!7615384))

(assert (= (and d!2322703 c!1403806) b!7615387))

(assert (= (and d!2322703 (not c!1403806)) b!7615377))

(assert (= (and b!7615377 c!1403804) b!7615380))

(assert (= (and b!7615377 (not c!1403804)) b!7615375))

(assert (= (and b!7615375 (not res!3048616)) b!7615382))

(assert (= (and b!7615382 res!3048614) b!7615378))

(assert (= (and b!7615378 res!3048613) b!7615379))

(assert (= (and b!7615379 res!3048619) b!7615381))

(assert (= (and b!7615382 (not res!3048617)) b!7615376))

(assert (= (and b!7615376 res!3048615) b!7615385))

(assert (= (and b!7615385 (not res!3048620)) b!7615388))

(assert (= (and b!7615388 (not res!3048618)) b!7615383))

(assert (= (or b!7615387 b!7615378 b!7615385) bm!699621))

(assert (=> b!7615379 m!8149368))

(assert (=> b!7615379 m!8149368))

(assert (=> b!7615379 m!8149370))

(declare-fun m!8149404 () Bool)

(assert (=> b!7615386 m!8149404))

(assert (=> d!2322703 m!8149374))

(assert (=> d!2322703 m!8149328))

(assert (=> b!7615384 m!8149378))

(assert (=> b!7615384 m!8149378))

(declare-fun m!8149406 () Bool)

(assert (=> b!7615384 m!8149406))

(assert (=> b!7615384 m!8149368))

(assert (=> b!7615384 m!8149406))

(assert (=> b!7615384 m!8149368))

(declare-fun m!8149408 () Bool)

(assert (=> b!7615384 m!8149408))

(assert (=> b!7615388 m!8149368))

(assert (=> b!7615388 m!8149368))

(assert (=> b!7615388 m!8149370))

(assert (=> bm!699621 m!8149374))

(assert (=> b!7615383 m!8149378))

(assert (=> b!7615381 m!8149378))

(assert (=> b!7615179 d!2322703))

(assert (=> b!7615185 d!2322703))

(declare-fun b!7615417 () Bool)

(declare-fun e!4528824 () Bool)

(declare-fun tp!2223508 () Bool)

(assert (=> b!7615417 (= e!4528824 (and tp_is_empty!50857 tp!2223508))))

(assert (=> b!7615178 (= tp!2223462 e!4528824)))

(assert (= (and b!7615178 ((_ is Cons!72980) (t!387839 s!9605))) b!7615417))

(declare-fun e!4528827 () Bool)

(assert (=> b!7615184 (= tp!2223465 e!4528827)))

(declare-fun b!7615431 () Bool)

(declare-fun tp!2223519 () Bool)

(declare-fun tp!2223522 () Bool)

(assert (=> b!7615431 (= e!4528827 (and tp!2223519 tp!2223522))))

(declare-fun b!7615430 () Bool)

(declare-fun tp!2223521 () Bool)

(assert (=> b!7615430 (= e!4528827 tp!2223521)))

(declare-fun b!7615429 () Bool)

(declare-fun tp!2223520 () Bool)

(declare-fun tp!2223523 () Bool)

(assert (=> b!7615429 (= e!4528827 (and tp!2223520 tp!2223523))))

(declare-fun b!7615428 () Bool)

(assert (=> b!7615428 (= e!4528827 tp_is_empty!50857)))

(assert (= (and b!7615184 ((_ is ElementMatch!20251) (reg!20580 r!14126))) b!7615428))

(assert (= (and b!7615184 ((_ is Concat!29096) (reg!20580 r!14126))) b!7615429))

(assert (= (and b!7615184 ((_ is Star!20251) (reg!20580 r!14126))) b!7615430))

(assert (= (and b!7615184 ((_ is Union!20251) (reg!20580 r!14126))) b!7615431))

(declare-fun e!4528828 () Bool)

(assert (=> b!7615180 (= tp!2223464 e!4528828)))

(declare-fun b!7615435 () Bool)

(declare-fun tp!2223524 () Bool)

(declare-fun tp!2223527 () Bool)

(assert (=> b!7615435 (= e!4528828 (and tp!2223524 tp!2223527))))

(declare-fun b!7615434 () Bool)

(declare-fun tp!2223526 () Bool)

(assert (=> b!7615434 (= e!4528828 tp!2223526)))

(declare-fun b!7615433 () Bool)

(declare-fun tp!2223525 () Bool)

(declare-fun tp!2223528 () Bool)

(assert (=> b!7615433 (= e!4528828 (and tp!2223525 tp!2223528))))

(declare-fun b!7615432 () Bool)

(assert (=> b!7615432 (= e!4528828 tp_is_empty!50857)))

(assert (= (and b!7615180 ((_ is ElementMatch!20251) (regOne!41015 r!14126))) b!7615432))

(assert (= (and b!7615180 ((_ is Concat!29096) (regOne!41015 r!14126))) b!7615433))

(assert (= (and b!7615180 ((_ is Star!20251) (regOne!41015 r!14126))) b!7615434))

(assert (= (and b!7615180 ((_ is Union!20251) (regOne!41015 r!14126))) b!7615435))

(declare-fun e!4528829 () Bool)

(assert (=> b!7615180 (= tp!2223463 e!4528829)))

(declare-fun b!7615439 () Bool)

(declare-fun tp!2223529 () Bool)

(declare-fun tp!2223532 () Bool)

(assert (=> b!7615439 (= e!4528829 (and tp!2223529 tp!2223532))))

(declare-fun b!7615438 () Bool)

(declare-fun tp!2223531 () Bool)

(assert (=> b!7615438 (= e!4528829 tp!2223531)))

(declare-fun b!7615437 () Bool)

(declare-fun tp!2223530 () Bool)

(declare-fun tp!2223533 () Bool)

(assert (=> b!7615437 (= e!4528829 (and tp!2223530 tp!2223533))))

(declare-fun b!7615436 () Bool)

(assert (=> b!7615436 (= e!4528829 tp_is_empty!50857)))

(assert (= (and b!7615180 ((_ is ElementMatch!20251) (regTwo!41015 r!14126))) b!7615436))

(assert (= (and b!7615180 ((_ is Concat!29096) (regTwo!41015 r!14126))) b!7615437))

(assert (= (and b!7615180 ((_ is Star!20251) (regTwo!41015 r!14126))) b!7615438))

(assert (= (and b!7615180 ((_ is Union!20251) (regTwo!41015 r!14126))) b!7615439))

(declare-fun e!4528830 () Bool)

(assert (=> b!7615186 (= tp!2223467 e!4528830)))

(declare-fun b!7615443 () Bool)

(declare-fun tp!2223534 () Bool)

(declare-fun tp!2223537 () Bool)

(assert (=> b!7615443 (= e!4528830 (and tp!2223534 tp!2223537))))

(declare-fun b!7615442 () Bool)

(declare-fun tp!2223536 () Bool)

(assert (=> b!7615442 (= e!4528830 tp!2223536)))

(declare-fun b!7615441 () Bool)

(declare-fun tp!2223535 () Bool)

(declare-fun tp!2223538 () Bool)

(assert (=> b!7615441 (= e!4528830 (and tp!2223535 tp!2223538))))

(declare-fun b!7615440 () Bool)

(assert (=> b!7615440 (= e!4528830 tp_is_empty!50857)))

(assert (= (and b!7615186 ((_ is ElementMatch!20251) (regOne!41014 r!14126))) b!7615440))

(assert (= (and b!7615186 ((_ is Concat!29096) (regOne!41014 r!14126))) b!7615441))

(assert (= (and b!7615186 ((_ is Star!20251) (regOne!41014 r!14126))) b!7615442))

(assert (= (and b!7615186 ((_ is Union!20251) (regOne!41014 r!14126))) b!7615443))

(declare-fun e!4528831 () Bool)

(assert (=> b!7615186 (= tp!2223466 e!4528831)))

(declare-fun b!7615447 () Bool)

(declare-fun tp!2223539 () Bool)

(declare-fun tp!2223542 () Bool)

(assert (=> b!7615447 (= e!4528831 (and tp!2223539 tp!2223542))))

(declare-fun b!7615446 () Bool)

(declare-fun tp!2223541 () Bool)

(assert (=> b!7615446 (= e!4528831 tp!2223541)))

(declare-fun b!7615445 () Bool)

(declare-fun tp!2223540 () Bool)

(declare-fun tp!2223543 () Bool)

(assert (=> b!7615445 (= e!4528831 (and tp!2223540 tp!2223543))))

(declare-fun b!7615444 () Bool)

(assert (=> b!7615444 (= e!4528831 tp_is_empty!50857)))

(assert (= (and b!7615186 ((_ is ElementMatch!20251) (regTwo!41014 r!14126))) b!7615444))

(assert (= (and b!7615186 ((_ is Concat!29096) (regTwo!41014 r!14126))) b!7615445))

(assert (= (and b!7615186 ((_ is Star!20251) (regTwo!41014 r!14126))) b!7615446))

(assert (= (and b!7615186 ((_ is Union!20251) (regTwo!41014 r!14126))) b!7615447))

(check-sat (not b!7615430) (not b!7615446) (not b!7615250) (not b!7615334) (not b!7615332) (not b!7615384) (not b!7615435) (not b!7615388) (not b!7615381) (not b!7615434) (not bm!699621) (not bm!699610) (not b!7615429) (not b!7615330) (not b!7615437) (not b!7615329) (not d!2322699) (not b!7615325) (not bm!699608) (not b!7615386) (not b!7615379) (not bm!699616) (not b!7615443) (not b!7615417) tp_is_empty!50857 (not b!7615431) (not b!7615438) (not b!7615367) (not b!7615442) (not bm!699619) (not b!7615447) (not b!7615327) (not b!7615343) (not b!7615433) (not bm!699617) (not d!2322693) (not b!7615445) (not d!2322703) (not b!7615441) (not b!7615439) (not b!7615383))
(check-sat)
