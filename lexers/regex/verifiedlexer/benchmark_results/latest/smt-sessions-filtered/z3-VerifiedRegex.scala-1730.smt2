; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86650 () Bool)

(assert start!86650)

(declare-fun b!975900 () Bool)

(declare-fun e!628498 () Bool)

(declare-fun tp_is_empty!5081 () Bool)

(assert (=> b!975900 (= e!628498 tp_is_empty!5081)))

(declare-fun b!975901 () Bool)

(declare-fun tp!298540 () Bool)

(assert (=> b!975901 (= e!628498 tp!298540)))

(declare-fun b!975902 () Bool)

(declare-fun tp!298543 () Bool)

(declare-fun tp!298544 () Bool)

(assert (=> b!975902 (= e!628498 (and tp!298543 tp!298544))))

(declare-fun res!443218 () Bool)

(declare-fun e!628500 () Bool)

(assert (=> start!86650 (=> (not res!443218) (not e!628500))))

(declare-datatypes ((C!6008 0))(
  ( (C!6009 (val!3252 Int)) )
))
(declare-datatypes ((Regex!2719 0))(
  ( (ElementMatch!2719 (c!159384 C!6008)) (Concat!4552 (regOne!5950 Regex!2719) (regTwo!5950 Regex!2719)) (EmptyExpr!2719) (Star!2719 (reg!3048 Regex!2719)) (EmptyLang!2719) (Union!2719 (regOne!5951 Regex!2719) (regTwo!5951 Regex!2719)) )
))
(declare-fun r!15766 () Regex!2719)

(declare-fun validRegex!1188 (Regex!2719) Bool)

(assert (=> start!86650 (= res!443218 (validRegex!1188 r!15766))))

(assert (=> start!86650 e!628500))

(assert (=> start!86650 e!628498))

(declare-fun e!628501 () Bool)

(assert (=> start!86650 e!628501))

(declare-fun b!975903 () Bool)

(declare-fun res!443220 () Bool)

(declare-fun e!628499 () Bool)

(assert (=> b!975903 (=> res!443220 e!628499)))

(declare-datatypes ((List!9949 0))(
  ( (Nil!9933) (Cons!9933 (h!15334 C!6008) (t!100995 List!9949)) )
))
(declare-fun s!10566 () List!9949)

(declare-fun isEmpty!6248 (List!9949) Bool)

(assert (=> b!975903 (= res!443220 (isEmpty!6248 s!10566))))

(declare-fun b!975904 () Bool)

(assert (=> b!975904 (= e!628499 (validRegex!1188 (regOne!5950 r!15766)))))

(declare-fun b!975905 () Bool)

(assert (=> b!975905 (= e!628500 (not e!628499))))

(declare-fun res!443219 () Bool)

(assert (=> b!975905 (=> res!443219 e!628499)))

(declare-fun lt!349449 () Bool)

(get-info :version)

(assert (=> b!975905 (= res!443219 (or (not lt!349449) (and ((_ is Concat!4552) r!15766) ((_ is EmptyExpr!2719) (regOne!5950 r!15766))) (not ((_ is Concat!4552) r!15766)) (not ((_ is EmptyExpr!2719) (regTwo!5950 r!15766)))))))

(declare-fun matchRSpec!518 (Regex!2719 List!9949) Bool)

(assert (=> b!975905 (= lt!349449 (matchRSpec!518 r!15766 s!10566))))

(declare-fun matchR!1255 (Regex!2719 List!9949) Bool)

(assert (=> b!975905 (= lt!349449 (matchR!1255 r!15766 s!10566))))

(declare-datatypes ((Unit!15097 0))(
  ( (Unit!15098) )
))
(declare-fun lt!349448 () Unit!15097)

(declare-fun mainMatchTheorem!518 (Regex!2719 List!9949) Unit!15097)

(assert (=> b!975905 (= lt!349448 (mainMatchTheorem!518 r!15766 s!10566))))

(declare-fun b!975906 () Bool)

(declare-fun tp!298539 () Bool)

(declare-fun tp!298542 () Bool)

(assert (=> b!975906 (= e!628498 (and tp!298539 tp!298542))))

(declare-fun b!975907 () Bool)

(declare-fun tp!298541 () Bool)

(assert (=> b!975907 (= e!628501 (and tp_is_empty!5081 tp!298541))))

(assert (= (and start!86650 res!443218) b!975905))

(assert (= (and b!975905 (not res!443219)) b!975903))

(assert (= (and b!975903 (not res!443220)) b!975904))

(assert (= (and start!86650 ((_ is ElementMatch!2719) r!15766)) b!975900))

(assert (= (and start!86650 ((_ is Concat!4552) r!15766)) b!975906))

(assert (= (and start!86650 ((_ is Star!2719) r!15766)) b!975901))

(assert (= (and start!86650 ((_ is Union!2719) r!15766)) b!975902))

(assert (= (and start!86650 ((_ is Cons!9933) s!10566)) b!975907))

(declare-fun m!1177585 () Bool)

(assert (=> start!86650 m!1177585))

(declare-fun m!1177587 () Bool)

(assert (=> b!975903 m!1177587))

(declare-fun m!1177589 () Bool)

(assert (=> b!975904 m!1177589))

(declare-fun m!1177591 () Bool)

(assert (=> b!975905 m!1177591))

(declare-fun m!1177593 () Bool)

(assert (=> b!975905 m!1177593))

(declare-fun m!1177595 () Bool)

(assert (=> b!975905 m!1177595))

(check-sat (not b!975907) (not b!975901) tp_is_empty!5081 (not b!975905) (not b!975903) (not start!86650) (not b!975902) (not b!975906) (not b!975904))
(check-sat)
(get-model)

(declare-fun b!976108 () Bool)

(assert (=> b!976108 true))

(assert (=> b!976108 true))

(declare-fun bs!243164 () Bool)

(declare-fun b!976109 () Bool)

(assert (= bs!243164 (and b!976109 b!976108)))

(declare-fun lambda!34658 () Int)

(declare-fun lambda!34657 () Int)

(assert (=> bs!243164 (not (= lambda!34658 lambda!34657))))

(assert (=> b!976109 true))

(assert (=> b!976109 true))

(declare-fun b!976100 () Bool)

(declare-fun e!628607 () Bool)

(declare-fun call!62373 () Bool)

(assert (=> b!976100 (= e!628607 call!62373)))

(declare-fun b!976101 () Bool)

(declare-fun e!628606 () Bool)

(declare-fun e!628609 () Bool)

(assert (=> b!976101 (= e!628606 e!628609)))

(declare-fun res!443302 () Bool)

(assert (=> b!976101 (= res!443302 (matchRSpec!518 (regOne!5951 r!15766) s!10566))))

(assert (=> b!976101 (=> res!443302 e!628609)))

(declare-fun bm!62368 () Bool)

(assert (=> bm!62368 (= call!62373 (isEmpty!6248 s!10566))))

(declare-fun b!976102 () Bool)

(declare-fun c!159422 () Bool)

(assert (=> b!976102 (= c!159422 ((_ is Union!2719) r!15766))))

(declare-fun e!628605 () Bool)

(assert (=> b!976102 (= e!628605 e!628606)))

(declare-fun d!287445 () Bool)

(declare-fun c!159425 () Bool)

(assert (=> d!287445 (= c!159425 ((_ is EmptyExpr!2719) r!15766))))

(assert (=> d!287445 (= (matchRSpec!518 r!15766 s!10566) e!628607)))

(declare-fun b!976103 () Bool)

(declare-fun res!443300 () Bool)

(declare-fun e!628604 () Bool)

(assert (=> b!976103 (=> res!443300 e!628604)))

(assert (=> b!976103 (= res!443300 call!62373)))

(declare-fun e!628608 () Bool)

(assert (=> b!976103 (= e!628608 e!628604)))

(declare-fun b!976104 () Bool)

(assert (=> b!976104 (= e!628606 e!628608)))

(declare-fun c!159424 () Bool)

(assert (=> b!976104 (= c!159424 ((_ is Star!2719) r!15766))))

(declare-fun b!976105 () Bool)

(declare-fun e!628610 () Bool)

(assert (=> b!976105 (= e!628607 e!628610)))

(declare-fun res!443301 () Bool)

(assert (=> b!976105 (= res!443301 (not ((_ is EmptyLang!2719) r!15766)))))

(assert (=> b!976105 (=> (not res!443301) (not e!628610))))

(declare-fun call!62374 () Bool)

(declare-fun bm!62369 () Bool)

(declare-fun Exists!458 (Int) Bool)

(assert (=> bm!62369 (= call!62374 (Exists!458 (ite c!159424 lambda!34657 lambda!34658)))))

(declare-fun b!976106 () Bool)

(assert (=> b!976106 (= e!628609 (matchRSpec!518 (regTwo!5951 r!15766) s!10566))))

(declare-fun b!976107 () Bool)

(declare-fun c!159423 () Bool)

(assert (=> b!976107 (= c!159423 ((_ is ElementMatch!2719) r!15766))))

(assert (=> b!976107 (= e!628610 e!628605)))

(assert (=> b!976108 (= e!628604 call!62374)))

(assert (=> b!976109 (= e!628608 call!62374)))

(declare-fun b!976110 () Bool)

(assert (=> b!976110 (= e!628605 (= s!10566 (Cons!9933 (c!159384 r!15766) Nil!9933)))))

(assert (= (and d!287445 c!159425) b!976100))

(assert (= (and d!287445 (not c!159425)) b!976105))

(assert (= (and b!976105 res!443301) b!976107))

(assert (= (and b!976107 c!159423) b!976110))

(assert (= (and b!976107 (not c!159423)) b!976102))

(assert (= (and b!976102 c!159422) b!976101))

(assert (= (and b!976102 (not c!159422)) b!976104))

(assert (= (and b!976101 (not res!443302)) b!976106))

(assert (= (and b!976104 c!159424) b!976103))

(assert (= (and b!976104 (not c!159424)) b!976109))

(assert (= (and b!976103 (not res!443300)) b!976108))

(assert (= (or b!976108 b!976109) bm!62369))

(assert (= (or b!976100 b!976103) bm!62368))

(declare-fun m!1177629 () Bool)

(assert (=> b!976101 m!1177629))

(assert (=> bm!62368 m!1177587))

(declare-fun m!1177631 () Bool)

(assert (=> bm!62369 m!1177631))

(declare-fun m!1177633 () Bool)

(assert (=> b!976106 m!1177633))

(assert (=> b!975905 d!287445))

(declare-fun b!976143 () Bool)

(declare-fun e!628630 () Bool)

(declare-fun lt!349458 () Bool)

(declare-fun call!62377 () Bool)

(assert (=> b!976143 (= e!628630 (= lt!349458 call!62377))))

(declare-fun b!976144 () Bool)

(declare-fun res!443326 () Bool)

(declare-fun e!628626 () Bool)

(assert (=> b!976144 (=> (not res!443326) (not e!628626))))

(declare-fun tail!1360 (List!9949) List!9949)

(assert (=> b!976144 (= res!443326 (isEmpty!6248 (tail!1360 s!10566)))))

(declare-fun b!976145 () Bool)

(declare-fun e!628629 () Bool)

(declare-fun nullable!839 (Regex!2719) Bool)

(assert (=> b!976145 (= e!628629 (nullable!839 r!15766))))

(declare-fun b!976146 () Bool)

(declare-fun res!443322 () Bool)

(declare-fun e!628628 () Bool)

(assert (=> b!976146 (=> res!443322 e!628628)))

(assert (=> b!976146 (= res!443322 e!628626)))

(declare-fun res!443323 () Bool)

(assert (=> b!976146 (=> (not res!443323) (not e!628626))))

(assert (=> b!976146 (= res!443323 lt!349458)))

(declare-fun b!976147 () Bool)

(declare-fun e!628625 () Bool)

(declare-fun e!628627 () Bool)

(assert (=> b!976147 (= e!628625 e!628627)))

(declare-fun res!443321 () Bool)

(assert (=> b!976147 (=> res!443321 e!628627)))

(assert (=> b!976147 (= res!443321 call!62377)))

(declare-fun b!976148 () Bool)

(assert (=> b!976148 (= e!628628 e!628625)))

(declare-fun res!443320 () Bool)

(assert (=> b!976148 (=> (not res!443320) (not e!628625))))

(assert (=> b!976148 (= res!443320 (not lt!349458))))

(declare-fun b!976149 () Bool)

(declare-fun res!443319 () Bool)

(assert (=> b!976149 (=> (not res!443319) (not e!628626))))

(assert (=> b!976149 (= res!443319 (not call!62377))))

(declare-fun d!287457 () Bool)

(assert (=> d!287457 e!628630))

(declare-fun c!159434 () Bool)

(assert (=> d!287457 (= c!159434 ((_ is EmptyExpr!2719) r!15766))))

(assert (=> d!287457 (= lt!349458 e!628629)))

(declare-fun c!159432 () Bool)

(assert (=> d!287457 (= c!159432 (isEmpty!6248 s!10566))))

(assert (=> d!287457 (validRegex!1188 r!15766)))

(assert (=> d!287457 (= (matchR!1255 r!15766 s!10566) lt!349458)))

(declare-fun b!976150 () Bool)

(declare-fun head!1798 (List!9949) C!6008)

(assert (=> b!976150 (= e!628626 (= (head!1798 s!10566) (c!159384 r!15766)))))

(declare-fun b!976151 () Bool)

(assert (=> b!976151 (= e!628627 (not (= (head!1798 s!10566) (c!159384 r!15766))))))

(declare-fun b!976152 () Bool)

(declare-fun e!628631 () Bool)

(assert (=> b!976152 (= e!628631 (not lt!349458))))

(declare-fun b!976153 () Bool)

(declare-fun derivativeStep!645 (Regex!2719 C!6008) Regex!2719)

(assert (=> b!976153 (= e!628629 (matchR!1255 (derivativeStep!645 r!15766 (head!1798 s!10566)) (tail!1360 s!10566)))))

(declare-fun b!976154 () Bool)

(assert (=> b!976154 (= e!628630 e!628631)))

(declare-fun c!159433 () Bool)

(assert (=> b!976154 (= c!159433 ((_ is EmptyLang!2719) r!15766))))

(declare-fun bm!62372 () Bool)

(assert (=> bm!62372 (= call!62377 (isEmpty!6248 s!10566))))

(declare-fun b!976155 () Bool)

(declare-fun res!443325 () Bool)

(assert (=> b!976155 (=> res!443325 e!628628)))

(assert (=> b!976155 (= res!443325 (not ((_ is ElementMatch!2719) r!15766)))))

(assert (=> b!976155 (= e!628631 e!628628)))

(declare-fun b!976156 () Bool)

(declare-fun res!443324 () Bool)

(assert (=> b!976156 (=> res!443324 e!628627)))

(assert (=> b!976156 (= res!443324 (not (isEmpty!6248 (tail!1360 s!10566))))))

(assert (= (and d!287457 c!159432) b!976145))

(assert (= (and d!287457 (not c!159432)) b!976153))

(assert (= (and d!287457 c!159434) b!976143))

(assert (= (and d!287457 (not c!159434)) b!976154))

(assert (= (and b!976154 c!159433) b!976152))

(assert (= (and b!976154 (not c!159433)) b!976155))

(assert (= (and b!976155 (not res!443325)) b!976146))

(assert (= (and b!976146 res!443323) b!976149))

(assert (= (and b!976149 res!443319) b!976144))

(assert (= (and b!976144 res!443326) b!976150))

(assert (= (and b!976146 (not res!443322)) b!976148))

(assert (= (and b!976148 res!443320) b!976147))

(assert (= (and b!976147 (not res!443321)) b!976156))

(assert (= (and b!976156 (not res!443324)) b!976151))

(assert (= (or b!976143 b!976147 b!976149) bm!62372))

(assert (=> d!287457 m!1177587))

(assert (=> d!287457 m!1177585))

(declare-fun m!1177635 () Bool)

(assert (=> b!976153 m!1177635))

(assert (=> b!976153 m!1177635))

(declare-fun m!1177637 () Bool)

(assert (=> b!976153 m!1177637))

(declare-fun m!1177639 () Bool)

(assert (=> b!976153 m!1177639))

(assert (=> b!976153 m!1177637))

(assert (=> b!976153 m!1177639))

(declare-fun m!1177641 () Bool)

(assert (=> b!976153 m!1177641))

(assert (=> b!976150 m!1177635))

(assert (=> bm!62372 m!1177587))

(declare-fun m!1177643 () Bool)

(assert (=> b!976145 m!1177643))

(assert (=> b!976156 m!1177639))

(assert (=> b!976156 m!1177639))

(declare-fun m!1177645 () Bool)

(assert (=> b!976156 m!1177645))

(assert (=> b!976151 m!1177635))

(assert (=> b!976144 m!1177639))

(assert (=> b!976144 m!1177639))

(assert (=> b!976144 m!1177645))

(assert (=> b!975905 d!287457))

(declare-fun d!287459 () Bool)

(assert (=> d!287459 (= (matchR!1255 r!15766 s!10566) (matchRSpec!518 r!15766 s!10566))))

(declare-fun lt!349461 () Unit!15097)

(declare-fun choose!6180 (Regex!2719 List!9949) Unit!15097)

(assert (=> d!287459 (= lt!349461 (choose!6180 r!15766 s!10566))))

(assert (=> d!287459 (validRegex!1188 r!15766)))

(assert (=> d!287459 (= (mainMatchTheorem!518 r!15766 s!10566) lt!349461)))

(declare-fun bs!243165 () Bool)

(assert (= bs!243165 d!287459))

(assert (=> bs!243165 m!1177593))

(assert (=> bs!243165 m!1177591))

(declare-fun m!1177647 () Bool)

(assert (=> bs!243165 m!1177647))

(assert (=> bs!243165 m!1177585))

(assert (=> b!975905 d!287459))

(declare-fun b!976175 () Bool)

(declare-fun res!443339 () Bool)

(declare-fun e!628646 () Bool)

(assert (=> b!976175 (=> (not res!443339) (not e!628646))))

(declare-fun call!62385 () Bool)

(assert (=> b!976175 (= res!443339 call!62385)))

(declare-fun e!628651 () Bool)

(assert (=> b!976175 (= e!628651 e!628646)))

(declare-fun b!976176 () Bool)

(declare-fun e!628650 () Bool)

(declare-fun e!628647 () Bool)

(assert (=> b!976176 (= e!628650 e!628647)))

(declare-fun res!443340 () Bool)

(assert (=> b!976176 (= res!443340 (not (nullable!839 (reg!3048 r!15766))))))

(assert (=> b!976176 (=> (not res!443340) (not e!628647))))

(declare-fun b!976177 () Bool)

(declare-fun e!628652 () Bool)

(declare-fun call!62384 () Bool)

(assert (=> b!976177 (= e!628652 call!62384)))

(declare-fun b!976178 () Bool)

(declare-fun call!62386 () Bool)

(assert (=> b!976178 (= e!628647 call!62386)))

(declare-fun bm!62379 () Bool)

(assert (=> bm!62379 (= call!62385 call!62386)))

(declare-fun c!159439 () Bool)

(declare-fun bm!62380 () Bool)

(declare-fun c!159440 () Bool)

(assert (=> bm!62380 (= call!62386 (validRegex!1188 (ite c!159439 (reg!3048 r!15766) (ite c!159440 (regOne!5951 r!15766) (regOne!5950 r!15766)))))))

(declare-fun b!976179 () Bool)

(declare-fun res!443341 () Bool)

(declare-fun e!628648 () Bool)

(assert (=> b!976179 (=> res!443341 e!628648)))

(assert (=> b!976179 (= res!443341 (not ((_ is Concat!4552) r!15766)))))

(assert (=> b!976179 (= e!628651 e!628648)))

(declare-fun d!287461 () Bool)

(declare-fun res!443338 () Bool)

(declare-fun e!628649 () Bool)

(assert (=> d!287461 (=> res!443338 e!628649)))

(assert (=> d!287461 (= res!443338 ((_ is ElementMatch!2719) r!15766))))

(assert (=> d!287461 (= (validRegex!1188 r!15766) e!628649)))

(declare-fun b!976180 () Bool)

(assert (=> b!976180 (= e!628646 call!62384)))

(declare-fun b!976181 () Bool)

(assert (=> b!976181 (= e!628648 e!628652)))

(declare-fun res!443337 () Bool)

(assert (=> b!976181 (=> (not res!443337) (not e!628652))))

(assert (=> b!976181 (= res!443337 call!62385)))

(declare-fun b!976182 () Bool)

(assert (=> b!976182 (= e!628649 e!628650)))

(assert (=> b!976182 (= c!159439 ((_ is Star!2719) r!15766))))

(declare-fun b!976183 () Bool)

(assert (=> b!976183 (= e!628650 e!628651)))

(assert (=> b!976183 (= c!159440 ((_ is Union!2719) r!15766))))

(declare-fun bm!62381 () Bool)

(assert (=> bm!62381 (= call!62384 (validRegex!1188 (ite c!159440 (regTwo!5951 r!15766) (regTwo!5950 r!15766))))))

(assert (= (and d!287461 (not res!443338)) b!976182))

(assert (= (and b!976182 c!159439) b!976176))

(assert (= (and b!976182 (not c!159439)) b!976183))

(assert (= (and b!976176 res!443340) b!976178))

(assert (= (and b!976183 c!159440) b!976175))

(assert (= (and b!976183 (not c!159440)) b!976179))

(assert (= (and b!976175 res!443339) b!976180))

(assert (= (and b!976179 (not res!443341)) b!976181))

(assert (= (and b!976181 res!443337) b!976177))

(assert (= (or b!976180 b!976177) bm!62381))

(assert (= (or b!976175 b!976181) bm!62379))

(assert (= (or b!976178 bm!62379) bm!62380))

(declare-fun m!1177649 () Bool)

(assert (=> b!976176 m!1177649))

(declare-fun m!1177651 () Bool)

(assert (=> bm!62380 m!1177651))

(declare-fun m!1177653 () Bool)

(assert (=> bm!62381 m!1177653))

(assert (=> start!86650 d!287461))

(declare-fun b!976184 () Bool)

(declare-fun res!443344 () Bool)

(declare-fun e!628653 () Bool)

(assert (=> b!976184 (=> (not res!443344) (not e!628653))))

(declare-fun call!62388 () Bool)

(assert (=> b!976184 (= res!443344 call!62388)))

(declare-fun e!628658 () Bool)

(assert (=> b!976184 (= e!628658 e!628653)))

(declare-fun b!976185 () Bool)

(declare-fun e!628657 () Bool)

(declare-fun e!628654 () Bool)

(assert (=> b!976185 (= e!628657 e!628654)))

(declare-fun res!443345 () Bool)

(assert (=> b!976185 (= res!443345 (not (nullable!839 (reg!3048 (regOne!5950 r!15766)))))))

(assert (=> b!976185 (=> (not res!443345) (not e!628654))))

(declare-fun b!976186 () Bool)

(declare-fun e!628659 () Bool)

(declare-fun call!62387 () Bool)

(assert (=> b!976186 (= e!628659 call!62387)))

(declare-fun b!976187 () Bool)

(declare-fun call!62389 () Bool)

(assert (=> b!976187 (= e!628654 call!62389)))

(declare-fun bm!62382 () Bool)

(assert (=> bm!62382 (= call!62388 call!62389)))

(declare-fun bm!62383 () Bool)

(declare-fun c!159441 () Bool)

(declare-fun c!159442 () Bool)

(assert (=> bm!62383 (= call!62389 (validRegex!1188 (ite c!159441 (reg!3048 (regOne!5950 r!15766)) (ite c!159442 (regOne!5951 (regOne!5950 r!15766)) (regOne!5950 (regOne!5950 r!15766))))))))

(declare-fun b!976188 () Bool)

(declare-fun res!443346 () Bool)

(declare-fun e!628655 () Bool)

(assert (=> b!976188 (=> res!443346 e!628655)))

(assert (=> b!976188 (= res!443346 (not ((_ is Concat!4552) (regOne!5950 r!15766))))))

(assert (=> b!976188 (= e!628658 e!628655)))

(declare-fun d!287463 () Bool)

(declare-fun res!443343 () Bool)

(declare-fun e!628656 () Bool)

(assert (=> d!287463 (=> res!443343 e!628656)))

(assert (=> d!287463 (= res!443343 ((_ is ElementMatch!2719) (regOne!5950 r!15766)))))

(assert (=> d!287463 (= (validRegex!1188 (regOne!5950 r!15766)) e!628656)))

(declare-fun b!976189 () Bool)

(assert (=> b!976189 (= e!628653 call!62387)))

(declare-fun b!976190 () Bool)

(assert (=> b!976190 (= e!628655 e!628659)))

(declare-fun res!443342 () Bool)

(assert (=> b!976190 (=> (not res!443342) (not e!628659))))

(assert (=> b!976190 (= res!443342 call!62388)))

(declare-fun b!976191 () Bool)

(assert (=> b!976191 (= e!628656 e!628657)))

(assert (=> b!976191 (= c!159441 ((_ is Star!2719) (regOne!5950 r!15766)))))

(declare-fun b!976192 () Bool)

(assert (=> b!976192 (= e!628657 e!628658)))

(assert (=> b!976192 (= c!159442 ((_ is Union!2719) (regOne!5950 r!15766)))))

(declare-fun bm!62384 () Bool)

(assert (=> bm!62384 (= call!62387 (validRegex!1188 (ite c!159442 (regTwo!5951 (regOne!5950 r!15766)) (regTwo!5950 (regOne!5950 r!15766)))))))

(assert (= (and d!287463 (not res!443343)) b!976191))

(assert (= (and b!976191 c!159441) b!976185))

(assert (= (and b!976191 (not c!159441)) b!976192))

(assert (= (and b!976185 res!443345) b!976187))

(assert (= (and b!976192 c!159442) b!976184))

(assert (= (and b!976192 (not c!159442)) b!976188))

(assert (= (and b!976184 res!443344) b!976189))

(assert (= (and b!976188 (not res!443346)) b!976190))

(assert (= (and b!976190 res!443342) b!976186))

(assert (= (or b!976189 b!976186) bm!62384))

(assert (= (or b!976184 b!976190) bm!62382))

(assert (= (or b!976187 bm!62382) bm!62383))

(declare-fun m!1177655 () Bool)

(assert (=> b!976185 m!1177655))

(declare-fun m!1177657 () Bool)

(assert (=> bm!62383 m!1177657))

(declare-fun m!1177659 () Bool)

(assert (=> bm!62384 m!1177659))

(assert (=> b!975904 d!287463))

(declare-fun d!287465 () Bool)

(assert (=> d!287465 (= (isEmpty!6248 s!10566) ((_ is Nil!9933) s!10566))))

(assert (=> b!975903 d!287465))

(declare-fun b!976203 () Bool)

(declare-fun e!628662 () Bool)

(assert (=> b!976203 (= e!628662 tp_is_empty!5081)))

(declare-fun b!976205 () Bool)

(declare-fun tp!298594 () Bool)

(assert (=> b!976205 (= e!628662 tp!298594)))

(assert (=> b!975902 (= tp!298543 e!628662)))

(declare-fun b!976206 () Bool)

(declare-fun tp!298595 () Bool)

(declare-fun tp!298593 () Bool)

(assert (=> b!976206 (= e!628662 (and tp!298595 tp!298593))))

(declare-fun b!976204 () Bool)

(declare-fun tp!298596 () Bool)

(declare-fun tp!298597 () Bool)

(assert (=> b!976204 (= e!628662 (and tp!298596 tp!298597))))

(assert (= (and b!975902 ((_ is ElementMatch!2719) (regOne!5951 r!15766))) b!976203))

(assert (= (and b!975902 ((_ is Concat!4552) (regOne!5951 r!15766))) b!976204))

(assert (= (and b!975902 ((_ is Star!2719) (regOne!5951 r!15766))) b!976205))

(assert (= (and b!975902 ((_ is Union!2719) (regOne!5951 r!15766))) b!976206))

(declare-fun b!976207 () Bool)

(declare-fun e!628663 () Bool)

(assert (=> b!976207 (= e!628663 tp_is_empty!5081)))

(declare-fun b!976209 () Bool)

(declare-fun tp!298599 () Bool)

(assert (=> b!976209 (= e!628663 tp!298599)))

(assert (=> b!975902 (= tp!298544 e!628663)))

(declare-fun b!976210 () Bool)

(declare-fun tp!298600 () Bool)

(declare-fun tp!298598 () Bool)

(assert (=> b!976210 (= e!628663 (and tp!298600 tp!298598))))

(declare-fun b!976208 () Bool)

(declare-fun tp!298601 () Bool)

(declare-fun tp!298602 () Bool)

(assert (=> b!976208 (= e!628663 (and tp!298601 tp!298602))))

(assert (= (and b!975902 ((_ is ElementMatch!2719) (regTwo!5951 r!15766))) b!976207))

(assert (= (and b!975902 ((_ is Concat!4552) (regTwo!5951 r!15766))) b!976208))

(assert (= (and b!975902 ((_ is Star!2719) (regTwo!5951 r!15766))) b!976209))

(assert (= (and b!975902 ((_ is Union!2719) (regTwo!5951 r!15766))) b!976210))

(declare-fun b!976211 () Bool)

(declare-fun e!628664 () Bool)

(assert (=> b!976211 (= e!628664 tp_is_empty!5081)))

(declare-fun b!976213 () Bool)

(declare-fun tp!298604 () Bool)

(assert (=> b!976213 (= e!628664 tp!298604)))

(assert (=> b!975906 (= tp!298539 e!628664)))

(declare-fun b!976214 () Bool)

(declare-fun tp!298605 () Bool)

(declare-fun tp!298603 () Bool)

(assert (=> b!976214 (= e!628664 (and tp!298605 tp!298603))))

(declare-fun b!976212 () Bool)

(declare-fun tp!298606 () Bool)

(declare-fun tp!298607 () Bool)

(assert (=> b!976212 (= e!628664 (and tp!298606 tp!298607))))

(assert (= (and b!975906 ((_ is ElementMatch!2719) (regOne!5950 r!15766))) b!976211))

(assert (= (and b!975906 ((_ is Concat!4552) (regOne!5950 r!15766))) b!976212))

(assert (= (and b!975906 ((_ is Star!2719) (regOne!5950 r!15766))) b!976213))

(assert (= (and b!975906 ((_ is Union!2719) (regOne!5950 r!15766))) b!976214))

(declare-fun b!976215 () Bool)

(declare-fun e!628665 () Bool)

(assert (=> b!976215 (= e!628665 tp_is_empty!5081)))

(declare-fun b!976217 () Bool)

(declare-fun tp!298609 () Bool)

(assert (=> b!976217 (= e!628665 tp!298609)))

(assert (=> b!975906 (= tp!298542 e!628665)))

(declare-fun b!976218 () Bool)

(declare-fun tp!298610 () Bool)

(declare-fun tp!298608 () Bool)

(assert (=> b!976218 (= e!628665 (and tp!298610 tp!298608))))

(declare-fun b!976216 () Bool)

(declare-fun tp!298611 () Bool)

(declare-fun tp!298612 () Bool)

(assert (=> b!976216 (= e!628665 (and tp!298611 tp!298612))))

(assert (= (and b!975906 ((_ is ElementMatch!2719) (regTwo!5950 r!15766))) b!976215))

(assert (= (and b!975906 ((_ is Concat!4552) (regTwo!5950 r!15766))) b!976216))

(assert (= (and b!975906 ((_ is Star!2719) (regTwo!5950 r!15766))) b!976217))

(assert (= (and b!975906 ((_ is Union!2719) (regTwo!5950 r!15766))) b!976218))

(declare-fun b!976219 () Bool)

(declare-fun e!628666 () Bool)

(assert (=> b!976219 (= e!628666 tp_is_empty!5081)))

(declare-fun b!976221 () Bool)

(declare-fun tp!298614 () Bool)

(assert (=> b!976221 (= e!628666 tp!298614)))

(assert (=> b!975901 (= tp!298540 e!628666)))

(declare-fun b!976222 () Bool)

(declare-fun tp!298615 () Bool)

(declare-fun tp!298613 () Bool)

(assert (=> b!976222 (= e!628666 (and tp!298615 tp!298613))))

(declare-fun b!976220 () Bool)

(declare-fun tp!298616 () Bool)

(declare-fun tp!298617 () Bool)

(assert (=> b!976220 (= e!628666 (and tp!298616 tp!298617))))

(assert (= (and b!975901 ((_ is ElementMatch!2719) (reg!3048 r!15766))) b!976219))

(assert (= (and b!975901 ((_ is Concat!4552) (reg!3048 r!15766))) b!976220))

(assert (= (and b!975901 ((_ is Star!2719) (reg!3048 r!15766))) b!976221))

(assert (= (and b!975901 ((_ is Union!2719) (reg!3048 r!15766))) b!976222))

(declare-fun b!976227 () Bool)

(declare-fun e!628669 () Bool)

(declare-fun tp!298620 () Bool)

(assert (=> b!976227 (= e!628669 (and tp_is_empty!5081 tp!298620))))

(assert (=> b!975907 (= tp!298541 e!628669)))

(assert (= (and b!975907 ((_ is Cons!9933) (t!100995 s!10566))) b!976227))

(check-sat (not d!287457) (not b!976204) (not b!976213) (not b!976210) (not b!976151) (not bm!62381) (not b!976145) (not b!976101) (not bm!62380) (not bm!62384) (not b!976205) (not b!976150) (not b!976220) (not d!287459) (not b!976221) tp_is_empty!5081 (not bm!62369) (not b!976227) (not b!976218) (not b!976212) (not b!976216) (not b!976185) (not b!976144) (not b!976153) (not bm!62372) (not b!976206) (not b!976208) (not b!976156) (not b!976106) (not b!976222) (not bm!62368) (not b!976209) (not bm!62383) (not b!976176) (not b!976214) (not b!976217))
(check-sat)
