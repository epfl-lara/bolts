; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281264 () Bool)

(assert start!281264)

(declare-fun b!2881377 () Bool)

(declare-fun res!1194028 () Bool)

(declare-fun e!1822887 () Bool)

(assert (=> b!2881377 (=> (not res!1194028) (not e!1822887))))

(declare-datatypes ((C!17688 0))(
  ( (C!17689 (val!10878 Int)) )
))
(declare-datatypes ((Regex!8753 0))(
  ( (ElementMatch!8753 (c!467950 C!17688)) (Concat!14074 (regOne!18018 Regex!8753) (regTwo!18018 Regex!8753)) (EmptyExpr!8753) (Star!8753 (reg!9082 Regex!8753)) (EmptyLang!8753) (Union!8753 (regOne!18019 Regex!8753) (regTwo!18019 Regex!8753)) )
))
(declare-datatypes ((List!34549 0))(
  ( (Nil!34425) (Cons!34425 (h!39845 Regex!8753) (t!233592 List!34549)) )
))
(declare-datatypes ((Context!5426 0))(
  ( (Context!5427 (exprs!3213 List!34549)) )
))
(declare-fun c!7184 () Context!5426)

(get-info :version)

(declare-datatypes ((List!34550 0))(
  ( (Nil!34426) (Cons!34426 (h!39846 C!17688) (t!233593 List!34550)) )
))
(declare-datatypes ((Option!6428 0))(
  ( (None!6427) (Some!6427 (v!34553 List!34550)) )
))
(declare-fun getLanguageWitness!457 (Regex!8753) Option!6428)

(assert (=> b!2881377 (= res!1194028 ((_ is Some!6427) (getLanguageWitness!457 (h!39845 (exprs!3213 c!7184)))))))

(declare-fun res!1194031 () Bool)

(assert (=> start!281264 (=> (not res!1194031) (not e!1822887))))

(declare-fun lostCause!845 (Context!5426) Bool)

(assert (=> start!281264 (= res!1194031 (not (lostCause!845 c!7184)))))

(assert (=> start!281264 e!1822887))

(declare-fun e!1822886 () Bool)

(declare-fun inv!46469 (Context!5426) Bool)

(assert (=> start!281264 (and (inv!46469 c!7184) e!1822886)))

(declare-fun b!2881378 () Bool)

(declare-fun tp!924164 () Bool)

(assert (=> b!2881378 (= e!1822886 tp!924164)))

(declare-fun b!2881379 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!495 ((InoxSet Context!5426) List!34550) Bool)

(declare-fun get!10356 (Option!6428) List!34550)

(declare-fun getLanguageWitness!458 (Context!5426) Option!6428)

(assert (=> b!2881379 (= e!1822887 (not (matchZipper!495 (store ((as const (Array Context!5426 Bool)) false) c!7184 true) (get!10356 (getLanguageWitness!458 c!7184)))))))

(declare-fun b!2881380 () Bool)

(declare-fun res!1194030 () Bool)

(assert (=> b!2881380 (=> (not res!1194030) (not e!1822887))))

(assert (=> b!2881380 (= res!1194030 (not ((_ is Some!6427) (getLanguageWitness!458 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))

(declare-fun b!2881381 () Bool)

(declare-fun res!1194029 () Bool)

(assert (=> b!2881381 (=> (not res!1194029) (not e!1822887))))

(assert (=> b!2881381 (= res!1194029 ((_ is Cons!34425) (exprs!3213 c!7184)))))

(assert (= (and start!281264 res!1194031) b!2881381))

(assert (= (and b!2881381 res!1194029) b!2881377))

(assert (= (and b!2881377 res!1194028) b!2881380))

(assert (= (and b!2881380 res!1194030) b!2881379))

(assert (= start!281264 b!2881378))

(declare-fun m!3298715 () Bool)

(assert (=> b!2881377 m!3298715))

(declare-fun m!3298717 () Bool)

(assert (=> start!281264 m!3298717))

(declare-fun m!3298719 () Bool)

(assert (=> start!281264 m!3298719))

(declare-fun m!3298721 () Bool)

(assert (=> b!2881379 m!3298721))

(declare-fun m!3298723 () Bool)

(assert (=> b!2881379 m!3298723))

(assert (=> b!2881379 m!3298723))

(declare-fun m!3298725 () Bool)

(assert (=> b!2881379 m!3298725))

(assert (=> b!2881379 m!3298721))

(assert (=> b!2881379 m!3298725))

(declare-fun m!3298727 () Bool)

(assert (=> b!2881379 m!3298727))

(declare-fun m!3298729 () Bool)

(assert (=> b!2881380 m!3298729))

(check-sat (not b!2881378) (not start!281264) (not b!2881379) (not b!2881377) (not b!2881380))
(check-sat)
(get-model)

(declare-fun d!833460 () Bool)

(declare-fun lambda!107586 () Int)

(declare-fun exists!1196 (List!34549 Int) Bool)

(assert (=> d!833460 (= (lostCause!845 c!7184) (exists!1196 (exprs!3213 c!7184) lambda!107586))))

(declare-fun bs!523626 () Bool)

(assert (= bs!523626 d!833460))

(declare-fun m!3298767 () Bool)

(assert (=> bs!523626 m!3298767))

(assert (=> start!281264 d!833460))

(declare-fun bs!523631 () Bool)

(declare-fun d!833476 () Bool)

(assert (= bs!523631 (and d!833476 d!833460)))

(declare-fun lambda!107592 () Int)

(assert (=> bs!523631 (not (= lambda!107592 lambda!107586))))

(declare-fun forall!7096 (List!34549 Int) Bool)

(assert (=> d!833476 (= (inv!46469 c!7184) (forall!7096 (exprs!3213 c!7184) lambda!107592))))

(declare-fun bs!523632 () Bool)

(assert (= bs!523632 d!833476))

(declare-fun m!3298771 () Bool)

(assert (=> bs!523632 m!3298771))

(assert (=> start!281264 d!833476))

(declare-fun b!2881497 () Bool)

(declare-fun e!1822949 () Option!6428)

(assert (=> b!2881497 (= e!1822949 None!6427)))

(declare-fun b!2881498 () Bool)

(declare-fun e!1822947 () Option!6428)

(declare-fun e!1822953 () Option!6428)

(assert (=> b!2881498 (= e!1822947 e!1822953)))

(declare-fun c!468009 () Bool)

(assert (=> b!2881498 (= c!468009 ((_ is EmptyLang!8753) (h!39845 (exprs!3213 c!7184))))))

(declare-fun b!2881500 () Bool)

(declare-fun e!1822951 () Option!6428)

(assert (=> b!2881500 (= e!1822951 e!1822949)))

(declare-fun lt!1019807 () Option!6428)

(declare-fun call!186837 () Option!6428)

(assert (=> b!2881500 (= lt!1019807 call!186837)))

(declare-fun c!468008 () Bool)

(assert (=> b!2881500 (= c!468008 ((_ is Some!6427) lt!1019807))))

(declare-fun b!2881501 () Bool)

(declare-fun e!1822948 () Option!6428)

(assert (=> b!2881501 (= e!1822948 (Some!6427 Nil!34426))))

(declare-fun bm!186832 () Bool)

(declare-fun c!468013 () Bool)

(assert (=> bm!186832 (= call!186837 (getLanguageWitness!457 (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))))))

(declare-fun b!2881502 () Bool)

(assert (=> b!2881502 (= c!468013 ((_ is Union!8753) (h!39845 (exprs!3213 c!7184))))))

(assert (=> b!2881502 (= e!1822948 e!1822951)))

(declare-fun b!2881503 () Bool)

(declare-fun e!1822952 () Option!6428)

(assert (=> b!2881503 (= e!1822952 call!186837)))

(declare-fun d!833478 () Bool)

(declare-fun c!468007 () Bool)

(assert (=> d!833478 (= c!468007 ((_ is EmptyExpr!8753) (h!39845 (exprs!3213 c!7184))))))

(assert (=> d!833478 (= (getLanguageWitness!457 (h!39845 (exprs!3213 c!7184))) e!1822947)))

(declare-fun b!2881499 () Bool)

(assert (=> b!2881499 (= e!1822953 None!6427)))

(declare-fun b!2881504 () Bool)

(declare-fun e!1822946 () Option!6428)

(declare-fun lt!1019806 () Option!6428)

(declare-fun ++!8191 (List!34550 List!34550) List!34550)

(assert (=> b!2881504 (= e!1822946 (Some!6427 (++!8191 (v!34553 lt!1019807) (v!34553 lt!1019806))))))

(declare-fun b!2881505 () Bool)

(assert (=> b!2881505 (= e!1822946 None!6427)))

(declare-fun b!2881506 () Bool)

(declare-fun e!1822950 () Option!6428)

(assert (=> b!2881506 (= e!1822950 e!1822948)))

(declare-fun c!468014 () Bool)

(assert (=> b!2881506 (= c!468014 ((_ is Star!8753) (h!39845 (exprs!3213 c!7184))))))

(declare-fun b!2881507 () Bool)

(declare-fun c!468010 () Bool)

(assert (=> b!2881507 (= c!468010 ((_ is ElementMatch!8753) (h!39845 (exprs!3213 c!7184))))))

(assert (=> b!2881507 (= e!1822953 e!1822950)))

(declare-fun b!2881508 () Bool)

(assert (=> b!2881508 (= e!1822950 (Some!6427 (Cons!34426 (c!467950 (h!39845 (exprs!3213 c!7184))) Nil!34426)))))

(declare-fun b!2881509 () Bool)

(assert (=> b!2881509 (= e!1822947 (Some!6427 Nil!34426))))

(declare-fun bm!186833 () Bool)

(declare-fun call!186838 () Option!6428)

(assert (=> bm!186833 (= call!186838 (getLanguageWitness!457 (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))))))

(declare-fun b!2881510 () Bool)

(declare-fun lt!1019805 () Option!6428)

(assert (=> b!2881510 (= e!1822952 lt!1019805)))

(declare-fun b!2881511 () Bool)

(declare-fun c!468012 () Bool)

(assert (=> b!2881511 (= c!468012 ((_ is Some!6427) lt!1019806))))

(assert (=> b!2881511 (= lt!1019806 call!186838)))

(assert (=> b!2881511 (= e!1822949 e!1822946)))

(declare-fun b!2881512 () Bool)

(assert (=> b!2881512 (= e!1822951 e!1822952)))

(assert (=> b!2881512 (= lt!1019805 call!186838)))

(declare-fun c!468011 () Bool)

(assert (=> b!2881512 (= c!468011 ((_ is Some!6427) lt!1019805))))

(assert (= (and d!833478 c!468007) b!2881509))

(assert (= (and d!833478 (not c!468007)) b!2881498))

(assert (= (and b!2881498 c!468009) b!2881499))

(assert (= (and b!2881498 (not c!468009)) b!2881507))

(assert (= (and b!2881507 c!468010) b!2881508))

(assert (= (and b!2881507 (not c!468010)) b!2881506))

(assert (= (and b!2881506 c!468014) b!2881501))

(assert (= (and b!2881506 (not c!468014)) b!2881502))

(assert (= (and b!2881502 c!468013) b!2881512))

(assert (= (and b!2881502 (not c!468013)) b!2881500))

(assert (= (and b!2881512 c!468011) b!2881510))

(assert (= (and b!2881512 (not c!468011)) b!2881503))

(assert (= (and b!2881500 c!468008) b!2881511))

(assert (= (and b!2881500 (not c!468008)) b!2881497))

(assert (= (and b!2881511 c!468012) b!2881504))

(assert (= (and b!2881511 (not c!468012)) b!2881505))

(assert (= (or b!2881503 b!2881500) bm!186832))

(assert (= (or b!2881512 b!2881511) bm!186833))

(declare-fun m!3298773 () Bool)

(assert (=> bm!186832 m!3298773))

(declare-fun m!3298775 () Bool)

(assert (=> b!2881504 m!3298775))

(declare-fun m!3298777 () Bool)

(assert (=> bm!186833 m!3298777))

(assert (=> b!2881377 d!833478))

(declare-fun bs!523633 () Bool)

(declare-fun d!833480 () Bool)

(assert (= bs!523633 (and d!833480 d!833460)))

(declare-fun lambda!107595 () Int)

(assert (=> bs!523633 (= lambda!107595 lambda!107586)))

(declare-fun bs!523634 () Bool)

(assert (= bs!523634 (and d!833480 d!833476)))

(assert (=> bs!523634 (not (= lambda!107595 lambda!107592))))

(declare-fun lt!1019816 () Option!6428)

(declare-fun isEmpty!18749 (Option!6428) Bool)

(assert (=> d!833480 (= (isEmpty!18749 lt!1019816) (exists!1196 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))) lambda!107595))))

(declare-fun e!1822962 () Option!6428)

(assert (=> d!833480 (= lt!1019816 e!1822962)))

(declare-fun c!468022 () Bool)

(assert (=> d!833480 (= c!468022 ((_ is Cons!34425) (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184))))))))

(assert (=> d!833480 (= (getLanguageWitness!458 (Context!5427 (t!233592 (exprs!3213 c!7184)))) lt!1019816)))

(declare-fun b!2881525 () Bool)

(declare-fun e!1822961 () Option!6428)

(assert (=> b!2881525 (= e!1822961 None!6427)))

(declare-fun b!2881526 () Bool)

(declare-fun c!468024 () Bool)

(declare-fun lt!1019815 () Option!6428)

(assert (=> b!2881526 (= c!468024 ((_ is Some!6427) lt!1019815))))

(assert (=> b!2881526 (= lt!1019815 (getLanguageWitness!458 (Context!5427 (t!233592 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184))))))))))

(declare-fun e!1822960 () Option!6428)

(assert (=> b!2881526 (= e!1822960 e!1822961)))

(declare-fun b!2881527 () Bool)

(assert (=> b!2881527 (= e!1822962 e!1822960)))

(declare-fun lt!1019814 () Option!6428)

(assert (=> b!2881527 (= lt!1019814 (getLanguageWitness!457 (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))

(declare-fun c!468023 () Bool)

(assert (=> b!2881527 (= c!468023 ((_ is Some!6427) lt!1019814))))

(declare-fun b!2881528 () Bool)

(assert (=> b!2881528 (= e!1822961 (Some!6427 (++!8191 (v!34553 lt!1019814) (v!34553 lt!1019815))))))

(declare-fun b!2881529 () Bool)

(assert (=> b!2881529 (= e!1822962 (Some!6427 Nil!34426))))

(declare-fun b!2881530 () Bool)

(assert (=> b!2881530 (= e!1822960 None!6427)))

(assert (= (and d!833480 c!468022) b!2881527))

(assert (= (and d!833480 (not c!468022)) b!2881529))

(assert (= (and b!2881527 c!468023) b!2881526))

(assert (= (and b!2881527 (not c!468023)) b!2881530))

(assert (= (and b!2881526 c!468024) b!2881528))

(assert (= (and b!2881526 (not c!468024)) b!2881525))

(declare-fun m!3298779 () Bool)

(assert (=> d!833480 m!3298779))

(declare-fun m!3298781 () Bool)

(assert (=> d!833480 m!3298781))

(declare-fun m!3298783 () Bool)

(assert (=> b!2881526 m!3298783))

(declare-fun m!3298785 () Bool)

(assert (=> b!2881527 m!3298785))

(declare-fun m!3298787 () Bool)

(assert (=> b!2881528 m!3298787))

(assert (=> b!2881380 d!833480))

(declare-fun d!833482 () Bool)

(declare-fun c!468027 () Bool)

(declare-fun isEmpty!18750 (List!34550) Bool)

(assert (=> d!833482 (= c!468027 (isEmpty!18750 (get!10356 (getLanguageWitness!458 c!7184))))))

(declare-fun e!1822965 () Bool)

(assert (=> d!833482 (= (matchZipper!495 (store ((as const (Array Context!5426 Bool)) false) c!7184 true) (get!10356 (getLanguageWitness!458 c!7184))) e!1822965)))

(declare-fun b!2881535 () Bool)

(declare-fun nullableZipper!731 ((InoxSet Context!5426)) Bool)

(assert (=> b!2881535 (= e!1822965 (nullableZipper!731 (store ((as const (Array Context!5426 Bool)) false) c!7184 true)))))

(declare-fun b!2881536 () Bool)

(declare-fun derivationStepZipper!487 ((InoxSet Context!5426) C!17688) (InoxSet Context!5426))

(declare-fun head!6360 (List!34550) C!17688)

(declare-fun tail!4585 (List!34550) List!34550)

(assert (=> b!2881536 (= e!1822965 (matchZipper!495 (derivationStepZipper!487 (store ((as const (Array Context!5426 Bool)) false) c!7184 true) (head!6360 (get!10356 (getLanguageWitness!458 c!7184)))) (tail!4585 (get!10356 (getLanguageWitness!458 c!7184)))))))

(assert (= (and d!833482 c!468027) b!2881535))

(assert (= (and d!833482 (not c!468027)) b!2881536))

(assert (=> d!833482 m!3298725))

(declare-fun m!3298789 () Bool)

(assert (=> d!833482 m!3298789))

(assert (=> b!2881535 m!3298721))

(declare-fun m!3298791 () Bool)

(assert (=> b!2881535 m!3298791))

(assert (=> b!2881536 m!3298725))

(declare-fun m!3298793 () Bool)

(assert (=> b!2881536 m!3298793))

(assert (=> b!2881536 m!3298721))

(assert (=> b!2881536 m!3298793))

(declare-fun m!3298795 () Bool)

(assert (=> b!2881536 m!3298795))

(assert (=> b!2881536 m!3298725))

(declare-fun m!3298797 () Bool)

(assert (=> b!2881536 m!3298797))

(assert (=> b!2881536 m!3298795))

(assert (=> b!2881536 m!3298797))

(declare-fun m!3298799 () Bool)

(assert (=> b!2881536 m!3298799))

(assert (=> b!2881379 d!833482))

(declare-fun d!833484 () Bool)

(assert (=> d!833484 (= (get!10356 (getLanguageWitness!458 c!7184)) (v!34553 (getLanguageWitness!458 c!7184)))))

(assert (=> b!2881379 d!833484))

(declare-fun bs!523635 () Bool)

(declare-fun d!833486 () Bool)

(assert (= bs!523635 (and d!833486 d!833460)))

(declare-fun lambda!107596 () Int)

(assert (=> bs!523635 (= lambda!107596 lambda!107586)))

(declare-fun bs!523636 () Bool)

(assert (= bs!523636 (and d!833486 d!833476)))

(assert (=> bs!523636 (not (= lambda!107596 lambda!107592))))

(declare-fun bs!523637 () Bool)

(assert (= bs!523637 (and d!833486 d!833480)))

(assert (=> bs!523637 (= lambda!107596 lambda!107595)))

(declare-fun lt!1019819 () Option!6428)

(assert (=> d!833486 (= (isEmpty!18749 lt!1019819) (exists!1196 (exprs!3213 c!7184) lambda!107596))))

(declare-fun e!1822968 () Option!6428)

(assert (=> d!833486 (= lt!1019819 e!1822968)))

(declare-fun c!468028 () Bool)

(assert (=> d!833486 (= c!468028 ((_ is Cons!34425) (exprs!3213 c!7184)))))

(assert (=> d!833486 (= (getLanguageWitness!458 c!7184) lt!1019819)))

(declare-fun b!2881537 () Bool)

(declare-fun e!1822967 () Option!6428)

(assert (=> b!2881537 (= e!1822967 None!6427)))

(declare-fun b!2881538 () Bool)

(declare-fun c!468030 () Bool)

(declare-fun lt!1019818 () Option!6428)

(assert (=> b!2881538 (= c!468030 ((_ is Some!6427) lt!1019818))))

(assert (=> b!2881538 (= lt!1019818 (getLanguageWitness!458 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))

(declare-fun e!1822966 () Option!6428)

(assert (=> b!2881538 (= e!1822966 e!1822967)))

(declare-fun b!2881539 () Bool)

(assert (=> b!2881539 (= e!1822968 e!1822966)))

(declare-fun lt!1019817 () Option!6428)

(assert (=> b!2881539 (= lt!1019817 (getLanguageWitness!457 (h!39845 (exprs!3213 c!7184))))))

(declare-fun c!468029 () Bool)

(assert (=> b!2881539 (= c!468029 ((_ is Some!6427) lt!1019817))))

(declare-fun b!2881540 () Bool)

(assert (=> b!2881540 (= e!1822967 (Some!6427 (++!8191 (v!34553 lt!1019817) (v!34553 lt!1019818))))))

(declare-fun b!2881541 () Bool)

(assert (=> b!2881541 (= e!1822968 (Some!6427 Nil!34426))))

(declare-fun b!2881542 () Bool)

(assert (=> b!2881542 (= e!1822966 None!6427)))

(assert (= (and d!833486 c!468028) b!2881539))

(assert (= (and d!833486 (not c!468028)) b!2881541))

(assert (= (and b!2881539 c!468029) b!2881538))

(assert (= (and b!2881539 (not c!468029)) b!2881542))

(assert (= (and b!2881538 c!468030) b!2881540))

(assert (= (and b!2881538 (not c!468030)) b!2881537))

(declare-fun m!3298801 () Bool)

(assert (=> d!833486 m!3298801))

(declare-fun m!3298803 () Bool)

(assert (=> d!833486 m!3298803))

(assert (=> b!2881538 m!3298729))

(assert (=> b!2881539 m!3298715))

(declare-fun m!3298805 () Bool)

(assert (=> b!2881540 m!3298805))

(assert (=> b!2881379 d!833486))

(declare-fun b!2881547 () Bool)

(declare-fun e!1822971 () Bool)

(declare-fun tp!924175 () Bool)

(declare-fun tp!924176 () Bool)

(assert (=> b!2881547 (= e!1822971 (and tp!924175 tp!924176))))

(assert (=> b!2881378 (= tp!924164 e!1822971)))

(assert (= (and b!2881378 ((_ is Cons!34425) (exprs!3213 c!7184))) b!2881547))

(check-sat (not d!833486) (not b!2881540) (not bm!186832) (not b!2881504) (not b!2881535) (not b!2881526) (not d!833480) (not b!2881547) (not d!833482) (not b!2881527) (not d!833460) (not b!2881536) (not d!833476) (not b!2881538) (not b!2881539) (not b!2881528) (not bm!186833))
(check-sat)
(get-model)

(declare-fun b!2881564 () Bool)

(declare-fun e!1822983 () Option!6428)

(assert (=> b!2881564 (= e!1822983 None!6427)))

(declare-fun b!2881565 () Bool)

(declare-fun e!1822981 () Option!6428)

(declare-fun e!1822987 () Option!6428)

(assert (=> b!2881565 (= e!1822981 e!1822987)))

(declare-fun c!468041 () Bool)

(assert (=> b!2881565 (= c!468041 ((_ is EmptyLang!8753) (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))))))

(declare-fun b!2881567 () Bool)

(declare-fun e!1822985 () Option!6428)

(assert (=> b!2881567 (= e!1822985 e!1822983)))

(declare-fun lt!1019825 () Option!6428)

(declare-fun call!186841 () Option!6428)

(assert (=> b!2881567 (= lt!1019825 call!186841)))

(declare-fun c!468040 () Bool)

(assert (=> b!2881567 (= c!468040 ((_ is Some!6427) lt!1019825))))

(declare-fun b!2881568 () Bool)

(declare-fun e!1822982 () Option!6428)

(assert (=> b!2881568 (= e!1822982 (Some!6427 Nil!34426))))

(declare-fun bm!186836 () Bool)

(declare-fun c!468045 () Bool)

(assert (=> bm!186836 (= call!186841 (getLanguageWitness!457 (ite c!468045 (regTwo!18019 (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))) (regOne!18018 (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))))))))

(declare-fun b!2881569 () Bool)

(assert (=> b!2881569 (= c!468045 ((_ is Union!8753) (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))))))

(assert (=> b!2881569 (= e!1822982 e!1822985)))

(declare-fun b!2881570 () Bool)

(declare-fun e!1822986 () Option!6428)

(assert (=> b!2881570 (= e!1822986 call!186841)))

(declare-fun d!833492 () Bool)

(declare-fun c!468039 () Bool)

(assert (=> d!833492 (= c!468039 ((_ is EmptyExpr!8753) (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))))))

(assert (=> d!833492 (= (getLanguageWitness!457 (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))) e!1822981)))

(declare-fun b!2881566 () Bool)

(assert (=> b!2881566 (= e!1822987 None!6427)))

(declare-fun b!2881571 () Bool)

(declare-fun e!1822980 () Option!6428)

(declare-fun lt!1019824 () Option!6428)

(assert (=> b!2881571 (= e!1822980 (Some!6427 (++!8191 (v!34553 lt!1019825) (v!34553 lt!1019824))))))

(declare-fun b!2881572 () Bool)

(assert (=> b!2881572 (= e!1822980 None!6427)))

(declare-fun b!2881573 () Bool)

(declare-fun e!1822984 () Option!6428)

(assert (=> b!2881573 (= e!1822984 e!1822982)))

(declare-fun c!468046 () Bool)

(assert (=> b!2881573 (= c!468046 ((_ is Star!8753) (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))))))

(declare-fun b!2881574 () Bool)

(declare-fun c!468042 () Bool)

(assert (=> b!2881574 (= c!468042 ((_ is ElementMatch!8753) (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))))))

(assert (=> b!2881574 (= e!1822987 e!1822984)))

(declare-fun b!2881575 () Bool)

(assert (=> b!2881575 (= e!1822984 (Some!6427 (Cons!34426 (c!467950 (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))) Nil!34426)))))

(declare-fun b!2881576 () Bool)

(assert (=> b!2881576 (= e!1822981 (Some!6427 Nil!34426))))

(declare-fun bm!186837 () Bool)

(declare-fun call!186842 () Option!6428)

(assert (=> bm!186837 (= call!186842 (getLanguageWitness!457 (ite c!468045 (regOne!18019 (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))) (regTwo!18018 (ite c!468013 (regOne!18019 (h!39845 (exprs!3213 c!7184))) (regTwo!18018 (h!39845 (exprs!3213 c!7184))))))))))

(declare-fun b!2881577 () Bool)

(declare-fun lt!1019823 () Option!6428)

(assert (=> b!2881577 (= e!1822986 lt!1019823)))

(declare-fun b!2881578 () Bool)

(declare-fun c!468044 () Bool)

(assert (=> b!2881578 (= c!468044 ((_ is Some!6427) lt!1019824))))

(assert (=> b!2881578 (= lt!1019824 call!186842)))

(assert (=> b!2881578 (= e!1822983 e!1822980)))

(declare-fun b!2881579 () Bool)

(assert (=> b!2881579 (= e!1822985 e!1822986)))

(assert (=> b!2881579 (= lt!1019823 call!186842)))

(declare-fun c!468043 () Bool)

(assert (=> b!2881579 (= c!468043 ((_ is Some!6427) lt!1019823))))

(assert (= (and d!833492 c!468039) b!2881576))

(assert (= (and d!833492 (not c!468039)) b!2881565))

(assert (= (and b!2881565 c!468041) b!2881566))

(assert (= (and b!2881565 (not c!468041)) b!2881574))

(assert (= (and b!2881574 c!468042) b!2881575))

(assert (= (and b!2881574 (not c!468042)) b!2881573))

(assert (= (and b!2881573 c!468046) b!2881568))

(assert (= (and b!2881573 (not c!468046)) b!2881569))

(assert (= (and b!2881569 c!468045) b!2881579))

(assert (= (and b!2881569 (not c!468045)) b!2881567))

(assert (= (and b!2881579 c!468043) b!2881577))

(assert (= (and b!2881579 (not c!468043)) b!2881570))

(assert (= (and b!2881567 c!468040) b!2881578))

(assert (= (and b!2881567 (not c!468040)) b!2881564))

(assert (= (and b!2881578 c!468044) b!2881571))

(assert (= (and b!2881578 (not c!468044)) b!2881572))

(assert (= (or b!2881570 b!2881567) bm!186836))

(assert (= (or b!2881579 b!2881578) bm!186837))

(declare-fun m!3298813 () Bool)

(assert (=> bm!186836 m!3298813))

(declare-fun m!3298815 () Bool)

(assert (=> b!2881571 m!3298815))

(declare-fun m!3298817 () Bool)

(assert (=> bm!186837 m!3298817))

(assert (=> bm!186833 d!833492))

(declare-fun d!833496 () Bool)

(assert (=> d!833496 (= (isEmpty!18749 lt!1019816) (not ((_ is Some!6427) lt!1019816)))))

(assert (=> d!833480 d!833496))

(declare-fun bs!523643 () Bool)

(declare-fun d!833500 () Bool)

(assert (= bs!523643 (and d!833500 d!833460)))

(declare-fun lambda!107602 () Int)

(assert (=> bs!523643 (not (= lambda!107602 lambda!107586))))

(declare-fun bs!523644 () Bool)

(assert (= bs!523644 (and d!833500 d!833476)))

(assert (=> bs!523644 (not (= lambda!107602 lambda!107592))))

(declare-fun bs!523645 () Bool)

(assert (= bs!523645 (and d!833500 d!833480)))

(assert (=> bs!523645 (not (= lambda!107602 lambda!107595))))

(declare-fun bs!523646 () Bool)

(assert (= bs!523646 (and d!833500 d!833486)))

(assert (=> bs!523646 (not (= lambda!107602 lambda!107596))))

(assert (=> d!833500 true))

(declare-fun order!18159 () Int)

(declare-fun dynLambda!14338 (Int Int) Int)

(assert (=> d!833500 (< (dynLambda!14338 order!18159 lambda!107595) (dynLambda!14338 order!18159 lambda!107602))))

(assert (=> d!833500 (= (exists!1196 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))) lambda!107595) (not (forall!7096 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))) lambda!107602)))))

(declare-fun bs!523647 () Bool)

(assert (= bs!523647 d!833500))

(declare-fun m!3298825 () Bool)

(assert (=> bs!523647 m!3298825))

(assert (=> d!833480 d!833500))

(declare-fun d!833504 () Bool)

(declare-fun res!1194042 () Bool)

(declare-fun e!1822998 () Bool)

(assert (=> d!833504 (=> res!1194042 e!1822998)))

(assert (=> d!833504 (= res!1194042 ((_ is Nil!34425) (exprs!3213 c!7184)))))

(assert (=> d!833504 (= (forall!7096 (exprs!3213 c!7184) lambda!107592) e!1822998)))

(declare-fun b!2881594 () Bool)

(declare-fun e!1822999 () Bool)

(assert (=> b!2881594 (= e!1822998 e!1822999)))

(declare-fun res!1194043 () Bool)

(assert (=> b!2881594 (=> (not res!1194043) (not e!1822999))))

(declare-fun dynLambda!14339 (Int Regex!8753) Bool)

(assert (=> b!2881594 (= res!1194043 (dynLambda!14339 lambda!107592 (h!39845 (exprs!3213 c!7184))))))

(declare-fun b!2881595 () Bool)

(assert (=> b!2881595 (= e!1822999 (forall!7096 (t!233592 (exprs!3213 c!7184)) lambda!107592))))

(assert (= (and d!833504 (not res!1194042)) b!2881594))

(assert (= (and b!2881594 res!1194043) b!2881595))

(declare-fun b_lambda!86317 () Bool)

(assert (=> (not b_lambda!86317) (not b!2881594)))

(declare-fun m!3298827 () Bool)

(assert (=> b!2881594 m!3298827))

(declare-fun m!3298829 () Bool)

(assert (=> b!2881595 m!3298829))

(assert (=> d!833476 d!833504))

(declare-fun b!2881612 () Bool)

(declare-fun e!1823009 () List!34550)

(assert (=> b!2881612 (= e!1823009 (v!34553 lt!1019818))))

(declare-fun b!2881614 () Bool)

(declare-fun res!1194052 () Bool)

(declare-fun e!1823008 () Bool)

(assert (=> b!2881614 (=> (not res!1194052) (not e!1823008))))

(declare-fun lt!1019830 () List!34550)

(declare-fun size!26337 (List!34550) Int)

(assert (=> b!2881614 (= res!1194052 (= (size!26337 lt!1019830) (+ (size!26337 (v!34553 lt!1019817)) (size!26337 (v!34553 lt!1019818)))))))

(declare-fun d!833508 () Bool)

(assert (=> d!833508 e!1823008))

(declare-fun res!1194053 () Bool)

(assert (=> d!833508 (=> (not res!1194053) (not e!1823008))))

(declare-fun content!4718 (List!34550) (InoxSet C!17688))

(assert (=> d!833508 (= res!1194053 (= (content!4718 lt!1019830) ((_ map or) (content!4718 (v!34553 lt!1019817)) (content!4718 (v!34553 lt!1019818)))))))

(assert (=> d!833508 (= lt!1019830 e!1823009)))

(declare-fun c!468051 () Bool)

(assert (=> d!833508 (= c!468051 ((_ is Nil!34426) (v!34553 lt!1019817)))))

(assert (=> d!833508 (= (++!8191 (v!34553 lt!1019817) (v!34553 lt!1019818)) lt!1019830)))

(declare-fun b!2881615 () Bool)

(assert (=> b!2881615 (= e!1823008 (or (not (= (v!34553 lt!1019818) Nil!34426)) (= lt!1019830 (v!34553 lt!1019817))))))

(declare-fun b!2881613 () Bool)

(assert (=> b!2881613 (= e!1823009 (Cons!34426 (h!39846 (v!34553 lt!1019817)) (++!8191 (t!233593 (v!34553 lt!1019817)) (v!34553 lt!1019818))))))

(assert (= (and d!833508 c!468051) b!2881612))

(assert (= (and d!833508 (not c!468051)) b!2881613))

(assert (= (and d!833508 res!1194053) b!2881614))

(assert (= (and b!2881614 res!1194052) b!2881615))

(declare-fun m!3298831 () Bool)

(assert (=> b!2881614 m!3298831))

(declare-fun m!3298833 () Bool)

(assert (=> b!2881614 m!3298833))

(declare-fun m!3298835 () Bool)

(assert (=> b!2881614 m!3298835))

(declare-fun m!3298837 () Bool)

(assert (=> d!833508 m!3298837))

(declare-fun m!3298839 () Bool)

(assert (=> d!833508 m!3298839))

(declare-fun m!3298841 () Bool)

(assert (=> d!833508 m!3298841))

(declare-fun m!3298843 () Bool)

(assert (=> b!2881613 m!3298843))

(assert (=> b!2881540 d!833508))

(declare-fun d!833510 () Bool)

(declare-fun c!468052 () Bool)

(assert (=> d!833510 (= c!468052 (isEmpty!18750 (tail!4585 (get!10356 (getLanguageWitness!458 c!7184)))))))

(declare-fun e!1823010 () Bool)

(assert (=> d!833510 (= (matchZipper!495 (derivationStepZipper!487 (store ((as const (Array Context!5426 Bool)) false) c!7184 true) (head!6360 (get!10356 (getLanguageWitness!458 c!7184)))) (tail!4585 (get!10356 (getLanguageWitness!458 c!7184)))) e!1823010)))

(declare-fun b!2881616 () Bool)

(assert (=> b!2881616 (= e!1823010 (nullableZipper!731 (derivationStepZipper!487 (store ((as const (Array Context!5426 Bool)) false) c!7184 true) (head!6360 (get!10356 (getLanguageWitness!458 c!7184))))))))

(declare-fun b!2881617 () Bool)

(assert (=> b!2881617 (= e!1823010 (matchZipper!495 (derivationStepZipper!487 (derivationStepZipper!487 (store ((as const (Array Context!5426 Bool)) false) c!7184 true) (head!6360 (get!10356 (getLanguageWitness!458 c!7184)))) (head!6360 (tail!4585 (get!10356 (getLanguageWitness!458 c!7184))))) (tail!4585 (tail!4585 (get!10356 (getLanguageWitness!458 c!7184))))))))

(assert (= (and d!833510 c!468052) b!2881616))

(assert (= (and d!833510 (not c!468052)) b!2881617))

(assert (=> d!833510 m!3298797))

(declare-fun m!3298845 () Bool)

(assert (=> d!833510 m!3298845))

(assert (=> b!2881616 m!3298795))

(declare-fun m!3298847 () Bool)

(assert (=> b!2881616 m!3298847))

(assert (=> b!2881617 m!3298797))

(declare-fun m!3298849 () Bool)

(assert (=> b!2881617 m!3298849))

(assert (=> b!2881617 m!3298795))

(assert (=> b!2881617 m!3298849))

(declare-fun m!3298851 () Bool)

(assert (=> b!2881617 m!3298851))

(assert (=> b!2881617 m!3298797))

(declare-fun m!3298853 () Bool)

(assert (=> b!2881617 m!3298853))

(assert (=> b!2881617 m!3298851))

(assert (=> b!2881617 m!3298853))

(declare-fun m!3298855 () Bool)

(assert (=> b!2881617 m!3298855))

(assert (=> b!2881536 d!833510))

(declare-fun d!833512 () Bool)

(assert (=> d!833512 true))

(declare-fun lambda!107605 () Int)

(declare-fun flatMap!233 ((InoxSet Context!5426) Int) (InoxSet Context!5426))

(assert (=> d!833512 (= (derivationStepZipper!487 (store ((as const (Array Context!5426 Bool)) false) c!7184 true) (head!6360 (get!10356 (getLanguageWitness!458 c!7184)))) (flatMap!233 (store ((as const (Array Context!5426 Bool)) false) c!7184 true) lambda!107605))))

(declare-fun bs!523648 () Bool)

(assert (= bs!523648 d!833512))

(assert (=> bs!523648 m!3298721))

(declare-fun m!3298875 () Bool)

(assert (=> bs!523648 m!3298875))

(assert (=> b!2881536 d!833512))

(declare-fun d!833516 () Bool)

(assert (=> d!833516 (= (head!6360 (get!10356 (getLanguageWitness!458 c!7184))) (h!39846 (get!10356 (getLanguageWitness!458 c!7184))))))

(assert (=> b!2881536 d!833516))

(declare-fun d!833520 () Bool)

(assert (=> d!833520 (= (tail!4585 (get!10356 (getLanguageWitness!458 c!7184))) (t!233593 (get!10356 (getLanguageWitness!458 c!7184))))))

(assert (=> b!2881536 d!833520))

(declare-fun bs!523651 () Bool)

(declare-fun d!833524 () Bool)

(assert (= bs!523651 (and d!833524 d!833486)))

(declare-fun lambda!107607 () Int)

(assert (=> bs!523651 (not (= lambda!107607 lambda!107596))))

(declare-fun bs!523654 () Bool)

(assert (= bs!523654 (and d!833524 d!833476)))

(assert (=> bs!523654 (not (= lambda!107607 lambda!107592))))

(declare-fun bs!523656 () Bool)

(assert (= bs!523656 (and d!833524 d!833460)))

(assert (=> bs!523656 (not (= lambda!107607 lambda!107586))))

(declare-fun bs!523657 () Bool)

(assert (= bs!523657 (and d!833524 d!833480)))

(assert (=> bs!523657 (not (= lambda!107607 lambda!107595))))

(declare-fun bs!523658 () Bool)

(assert (= bs!523658 (and d!833524 d!833500)))

(assert (=> bs!523658 (= (= lambda!107586 lambda!107595) (= lambda!107607 lambda!107602))))

(assert (=> d!833524 true))

(assert (=> d!833524 (< (dynLambda!14338 order!18159 lambda!107586) (dynLambda!14338 order!18159 lambda!107607))))

(assert (=> d!833524 (= (exists!1196 (exprs!3213 c!7184) lambda!107586) (not (forall!7096 (exprs!3213 c!7184) lambda!107607)))))

(declare-fun bs!523660 () Bool)

(assert (= bs!523660 d!833524))

(declare-fun m!3298903 () Bool)

(assert (=> bs!523660 m!3298903))

(assert (=> d!833460 d!833524))

(declare-fun b!2881648 () Bool)

(declare-fun e!1823026 () List!34550)

(assert (=> b!2881648 (= e!1823026 (v!34553 lt!1019815))))

(declare-fun b!2881650 () Bool)

(declare-fun res!1194060 () Bool)

(declare-fun e!1823025 () Bool)

(assert (=> b!2881650 (=> (not res!1194060) (not e!1823025))))

(declare-fun lt!1019837 () List!34550)

(assert (=> b!2881650 (= res!1194060 (= (size!26337 lt!1019837) (+ (size!26337 (v!34553 lt!1019814)) (size!26337 (v!34553 lt!1019815)))))))

(declare-fun d!833528 () Bool)

(assert (=> d!833528 e!1823025))

(declare-fun res!1194061 () Bool)

(assert (=> d!833528 (=> (not res!1194061) (not e!1823025))))

(assert (=> d!833528 (= res!1194061 (= (content!4718 lt!1019837) ((_ map or) (content!4718 (v!34553 lt!1019814)) (content!4718 (v!34553 lt!1019815)))))))

(assert (=> d!833528 (= lt!1019837 e!1823026)))

(declare-fun c!468066 () Bool)

(assert (=> d!833528 (= c!468066 ((_ is Nil!34426) (v!34553 lt!1019814)))))

(assert (=> d!833528 (= (++!8191 (v!34553 lt!1019814) (v!34553 lt!1019815)) lt!1019837)))

(declare-fun b!2881651 () Bool)

(assert (=> b!2881651 (= e!1823025 (or (not (= (v!34553 lt!1019815) Nil!34426)) (= lt!1019837 (v!34553 lt!1019814))))))

(declare-fun b!2881649 () Bool)

(assert (=> b!2881649 (= e!1823026 (Cons!34426 (h!39846 (v!34553 lt!1019814)) (++!8191 (t!233593 (v!34553 lt!1019814)) (v!34553 lt!1019815))))))

(assert (= (and d!833528 c!468066) b!2881648))

(assert (= (and d!833528 (not c!468066)) b!2881649))

(assert (= (and d!833528 res!1194061) b!2881650))

(assert (= (and b!2881650 res!1194060) b!2881651))

(declare-fun m!3298905 () Bool)

(assert (=> b!2881650 m!3298905))

(declare-fun m!3298907 () Bool)

(assert (=> b!2881650 m!3298907))

(declare-fun m!3298909 () Bool)

(assert (=> b!2881650 m!3298909))

(declare-fun m!3298911 () Bool)

(assert (=> d!833528 m!3298911))

(declare-fun m!3298913 () Bool)

(assert (=> d!833528 m!3298913))

(declare-fun m!3298915 () Bool)

(assert (=> d!833528 m!3298915))

(declare-fun m!3298917 () Bool)

(assert (=> b!2881649 m!3298917))

(assert (=> b!2881528 d!833528))

(assert (=> b!2881539 d!833478))

(declare-fun d!833530 () Bool)

(declare-fun lambda!107610 () Int)

(declare-fun exists!1197 ((InoxSet Context!5426) Int) Bool)

(assert (=> d!833530 (= (nullableZipper!731 (store ((as const (Array Context!5426 Bool)) false) c!7184 true)) (exists!1197 (store ((as const (Array Context!5426 Bool)) false) c!7184 true) lambda!107610))))

(declare-fun bs!523661 () Bool)

(assert (= bs!523661 d!833530))

(assert (=> bs!523661 m!3298721))

(declare-fun m!3298937 () Bool)

(assert (=> bs!523661 m!3298937))

(assert (=> b!2881535 d!833530))

(declare-fun b!2881654 () Bool)

(declare-fun e!1823031 () Option!6428)

(assert (=> b!2881654 (= e!1823031 None!6427)))

(declare-fun b!2881655 () Bool)

(declare-fun e!1823029 () Option!6428)

(declare-fun e!1823035 () Option!6428)

(assert (=> b!2881655 (= e!1823029 e!1823035)))

(declare-fun c!468072 () Bool)

(assert (=> b!2881655 (= c!468072 ((_ is EmptyLang!8753) (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))

(declare-fun b!2881657 () Bool)

(declare-fun e!1823033 () Option!6428)

(assert (=> b!2881657 (= e!1823033 e!1823031)))

(declare-fun lt!1019840 () Option!6428)

(declare-fun call!186845 () Option!6428)

(assert (=> b!2881657 (= lt!1019840 call!186845)))

(declare-fun c!468071 () Bool)

(assert (=> b!2881657 (= c!468071 ((_ is Some!6427) lt!1019840))))

(declare-fun b!2881658 () Bool)

(declare-fun e!1823030 () Option!6428)

(assert (=> b!2881658 (= e!1823030 (Some!6427 Nil!34426))))

(declare-fun bm!186840 () Bool)

(declare-fun c!468076 () Bool)

(assert (=> bm!186840 (= call!186845 (getLanguageWitness!457 (ite c!468076 (regTwo!18019 (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))) (regOne!18018 (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))))

(declare-fun b!2881659 () Bool)

(assert (=> b!2881659 (= c!468076 ((_ is Union!8753) (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))

(assert (=> b!2881659 (= e!1823030 e!1823033)))

(declare-fun b!2881660 () Bool)

(declare-fun e!1823034 () Option!6428)

(assert (=> b!2881660 (= e!1823034 call!186845)))

(declare-fun d!833536 () Bool)

(declare-fun c!468070 () Bool)

(assert (=> d!833536 (= c!468070 ((_ is EmptyExpr!8753) (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))

(assert (=> d!833536 (= (getLanguageWitness!457 (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))) e!1823029)))

(declare-fun b!2881656 () Bool)

(assert (=> b!2881656 (= e!1823035 None!6427)))

(declare-fun b!2881661 () Bool)

(declare-fun e!1823028 () Option!6428)

(declare-fun lt!1019839 () Option!6428)

(assert (=> b!2881661 (= e!1823028 (Some!6427 (++!8191 (v!34553 lt!1019840) (v!34553 lt!1019839))))))

(declare-fun b!2881662 () Bool)

(assert (=> b!2881662 (= e!1823028 None!6427)))

(declare-fun b!2881663 () Bool)

(declare-fun e!1823032 () Option!6428)

(assert (=> b!2881663 (= e!1823032 e!1823030)))

(declare-fun c!468077 () Bool)

(assert (=> b!2881663 (= c!468077 ((_ is Star!8753) (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))

(declare-fun b!2881664 () Bool)

(declare-fun c!468073 () Bool)

(assert (=> b!2881664 (= c!468073 ((_ is ElementMatch!8753) (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))

(assert (=> b!2881664 (= e!1823035 e!1823032)))

(declare-fun b!2881665 () Bool)

(assert (=> b!2881665 (= e!1823032 (Some!6427 (Cons!34426 (c!467950 (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))) Nil!34426)))))

(declare-fun b!2881666 () Bool)

(assert (=> b!2881666 (= e!1823029 (Some!6427 Nil!34426))))

(declare-fun bm!186841 () Bool)

(declare-fun call!186846 () Option!6428)

(assert (=> bm!186841 (= call!186846 (getLanguageWitness!457 (ite c!468076 (regOne!18019 (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))) (regTwo!18018 (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))))

(declare-fun b!2881667 () Bool)

(declare-fun lt!1019838 () Option!6428)

(assert (=> b!2881667 (= e!1823034 lt!1019838)))

(declare-fun b!2881668 () Bool)

(declare-fun c!468075 () Bool)

(assert (=> b!2881668 (= c!468075 ((_ is Some!6427) lt!1019839))))

(assert (=> b!2881668 (= lt!1019839 call!186846)))

(assert (=> b!2881668 (= e!1823031 e!1823028)))

(declare-fun b!2881669 () Bool)

(assert (=> b!2881669 (= e!1823033 e!1823034)))

(assert (=> b!2881669 (= lt!1019838 call!186846)))

(declare-fun c!468074 () Bool)

(assert (=> b!2881669 (= c!468074 ((_ is Some!6427) lt!1019838))))

(assert (= (and d!833536 c!468070) b!2881666))

(assert (= (and d!833536 (not c!468070)) b!2881655))

(assert (= (and b!2881655 c!468072) b!2881656))

(assert (= (and b!2881655 (not c!468072)) b!2881664))

(assert (= (and b!2881664 c!468073) b!2881665))

(assert (= (and b!2881664 (not c!468073)) b!2881663))

(assert (= (and b!2881663 c!468077) b!2881658))

(assert (= (and b!2881663 (not c!468077)) b!2881659))

(assert (= (and b!2881659 c!468076) b!2881669))

(assert (= (and b!2881659 (not c!468076)) b!2881657))

(assert (= (and b!2881669 c!468074) b!2881667))

(assert (= (and b!2881669 (not c!468074)) b!2881660))

(assert (= (and b!2881657 c!468071) b!2881668))

(assert (= (and b!2881657 (not c!468071)) b!2881654))

(assert (= (and b!2881668 c!468075) b!2881661))

(assert (= (and b!2881668 (not c!468075)) b!2881662))

(assert (= (or b!2881660 b!2881657) bm!186840))

(assert (= (or b!2881669 b!2881668) bm!186841))

(declare-fun m!3298939 () Bool)

(assert (=> bm!186840 m!3298939))

(declare-fun m!3298941 () Bool)

(assert (=> b!2881661 m!3298941))

(declare-fun m!3298943 () Bool)

(assert (=> bm!186841 m!3298943))

(assert (=> b!2881527 d!833536))

(assert (=> b!2881538 d!833480))

(declare-fun d!833538 () Bool)

(assert (=> d!833538 (= (isEmpty!18749 lt!1019819) (not ((_ is Some!6427) lt!1019819)))))

(assert (=> d!833486 d!833538))

(declare-fun bs!523662 () Bool)

(declare-fun d!833540 () Bool)

(assert (= bs!523662 (and d!833540 d!833486)))

(declare-fun lambda!107614 () Int)

(assert (=> bs!523662 (not (= lambda!107614 lambda!107596))))

(declare-fun bs!523664 () Bool)

(assert (= bs!523664 (and d!833540 d!833476)))

(assert (=> bs!523664 (not (= lambda!107614 lambda!107592))))

(declare-fun bs!523665 () Bool)

(assert (= bs!523665 (and d!833540 d!833524)))

(assert (=> bs!523665 (= (= lambda!107596 lambda!107586) (= lambda!107614 lambda!107607))))

(declare-fun bs!523666 () Bool)

(assert (= bs!523666 (and d!833540 d!833460)))

(assert (=> bs!523666 (not (= lambda!107614 lambda!107586))))

(declare-fun bs!523667 () Bool)

(assert (= bs!523667 (and d!833540 d!833480)))

(assert (=> bs!523667 (not (= lambda!107614 lambda!107595))))

(declare-fun bs!523668 () Bool)

(assert (= bs!523668 (and d!833540 d!833500)))

(assert (=> bs!523668 (= (= lambda!107596 lambda!107595) (= lambda!107614 lambda!107602))))

(assert (=> d!833540 true))

(assert (=> d!833540 (< (dynLambda!14338 order!18159 lambda!107596) (dynLambda!14338 order!18159 lambda!107614))))

(assert (=> d!833540 (= (exists!1196 (exprs!3213 c!7184) lambda!107596) (not (forall!7096 (exprs!3213 c!7184) lambda!107614)))))

(declare-fun bs!523669 () Bool)

(assert (= bs!523669 d!833540))

(declare-fun m!3298947 () Bool)

(assert (=> bs!523669 m!3298947))

(assert (=> d!833486 d!833540))

(declare-fun bs!523670 () Bool)

(declare-fun d!833546 () Bool)

(assert (= bs!523670 (and d!833546 d!833486)))

(declare-fun lambda!107615 () Int)

(assert (=> bs!523670 (= lambda!107615 lambda!107596)))

(declare-fun bs!523671 () Bool)

(assert (= bs!523671 (and d!833546 d!833476)))

(assert (=> bs!523671 (not (= lambda!107615 lambda!107592))))

(declare-fun bs!523672 () Bool)

(assert (= bs!523672 (and d!833546 d!833524)))

(assert (=> bs!523672 (not (= lambda!107615 lambda!107607))))

(declare-fun bs!523673 () Bool)

(assert (= bs!523673 (and d!833546 d!833480)))

(assert (=> bs!523673 (= lambda!107615 lambda!107595)))

(declare-fun bs!523674 () Bool)

(assert (= bs!523674 (and d!833546 d!833500)))

(assert (=> bs!523674 (not (= lambda!107615 lambda!107602))))

(declare-fun bs!523676 () Bool)

(assert (= bs!523676 (and d!833546 d!833540)))

(assert (=> bs!523676 (not (= lambda!107615 lambda!107614))))

(declare-fun bs!523678 () Bool)

(assert (= bs!523678 (and d!833546 d!833460)))

(assert (=> bs!523678 (= lambda!107615 lambda!107586)))

(declare-fun lt!1019843 () Option!6428)

(assert (=> d!833546 (= (isEmpty!18749 lt!1019843) (exists!1196 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184))))))) lambda!107615))))

(declare-fun e!1823038 () Option!6428)

(assert (=> d!833546 (= lt!1019843 e!1823038)))

(declare-fun c!468080 () Bool)

(assert (=> d!833546 (= c!468080 ((_ is Cons!34425) (exprs!3213 (Context!5427 (t!233592 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))))

(assert (=> d!833546 (= (getLanguageWitness!458 (Context!5427 (t!233592 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184))))))) lt!1019843)))

(declare-fun b!2881672 () Bool)

(declare-fun e!1823037 () Option!6428)

(assert (=> b!2881672 (= e!1823037 None!6427)))

(declare-fun b!2881673 () Bool)

(declare-fun c!468082 () Bool)

(declare-fun lt!1019842 () Option!6428)

(assert (=> b!2881673 (= c!468082 ((_ is Some!6427) lt!1019842))))

(assert (=> b!2881673 (= lt!1019842 (getLanguageWitness!458 (Context!5427 (t!233592 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184)))))))))))))

(declare-fun e!1823036 () Option!6428)

(assert (=> b!2881673 (= e!1823036 e!1823037)))

(declare-fun b!2881674 () Bool)

(assert (=> b!2881674 (= e!1823038 e!1823036)))

(declare-fun lt!1019841 () Option!6428)

(assert (=> b!2881674 (= lt!1019841 (getLanguageWitness!457 (h!39845 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 (Context!5427 (t!233592 (exprs!3213 c!7184))))))))))))

(declare-fun c!468081 () Bool)

(assert (=> b!2881674 (= c!468081 ((_ is Some!6427) lt!1019841))))

(declare-fun b!2881675 () Bool)

(assert (=> b!2881675 (= e!1823037 (Some!6427 (++!8191 (v!34553 lt!1019841) (v!34553 lt!1019842))))))

(declare-fun b!2881676 () Bool)

(assert (=> b!2881676 (= e!1823038 (Some!6427 Nil!34426))))

(declare-fun b!2881677 () Bool)

(assert (=> b!2881677 (= e!1823036 None!6427)))

(assert (= (and d!833546 c!468080) b!2881674))

(assert (= (and d!833546 (not c!468080)) b!2881676))

(assert (= (and b!2881674 c!468081) b!2881673))

(assert (= (and b!2881674 (not c!468081)) b!2881677))

(assert (= (and b!2881673 c!468082) b!2881675))

(assert (= (and b!2881673 (not c!468082)) b!2881672))

(declare-fun m!3298949 () Bool)

(assert (=> d!833546 m!3298949))

(declare-fun m!3298951 () Bool)

(assert (=> d!833546 m!3298951))

(declare-fun m!3298953 () Bool)

(assert (=> b!2881673 m!3298953))

(declare-fun m!3298955 () Bool)

(assert (=> b!2881674 m!3298955))

(declare-fun m!3298957 () Bool)

(assert (=> b!2881675 m!3298957))

(assert (=> b!2881526 d!833546))

(declare-fun b!2881684 () Bool)

(declare-fun e!1823043 () List!34550)

(assert (=> b!2881684 (= e!1823043 (v!34553 lt!1019806))))

(declare-fun b!2881686 () Bool)

(declare-fun res!1194062 () Bool)

(declare-fun e!1823042 () Bool)

(assert (=> b!2881686 (=> (not res!1194062) (not e!1823042))))

(declare-fun lt!1019847 () List!34550)

(assert (=> b!2881686 (= res!1194062 (= (size!26337 lt!1019847) (+ (size!26337 (v!34553 lt!1019807)) (size!26337 (v!34553 lt!1019806)))))))

(declare-fun d!833550 () Bool)

(assert (=> d!833550 e!1823042))

(declare-fun res!1194063 () Bool)

(assert (=> d!833550 (=> (not res!1194063) (not e!1823042))))

(assert (=> d!833550 (= res!1194063 (= (content!4718 lt!1019847) ((_ map or) (content!4718 (v!34553 lt!1019807)) (content!4718 (v!34553 lt!1019806)))))))

(assert (=> d!833550 (= lt!1019847 e!1823043)))

(declare-fun c!468086 () Bool)

(assert (=> d!833550 (= c!468086 ((_ is Nil!34426) (v!34553 lt!1019807)))))

(assert (=> d!833550 (= (++!8191 (v!34553 lt!1019807) (v!34553 lt!1019806)) lt!1019847)))

(declare-fun b!2881687 () Bool)

(assert (=> b!2881687 (= e!1823042 (or (not (= (v!34553 lt!1019806) Nil!34426)) (= lt!1019847 (v!34553 lt!1019807))))))

(declare-fun b!2881685 () Bool)

(assert (=> b!2881685 (= e!1823043 (Cons!34426 (h!39846 (v!34553 lt!1019807)) (++!8191 (t!233593 (v!34553 lt!1019807)) (v!34553 lt!1019806))))))

(assert (= (and d!833550 c!468086) b!2881684))

(assert (= (and d!833550 (not c!468086)) b!2881685))

(assert (= (and d!833550 res!1194063) b!2881686))

(assert (= (and b!2881686 res!1194062) b!2881687))

(declare-fun m!3298969 () Bool)

(assert (=> b!2881686 m!3298969))

(declare-fun m!3298971 () Bool)

(assert (=> b!2881686 m!3298971))

(declare-fun m!3298973 () Bool)

(assert (=> b!2881686 m!3298973))

(declare-fun m!3298975 () Bool)

(assert (=> d!833550 m!3298975))

(declare-fun m!3298977 () Bool)

(assert (=> d!833550 m!3298977))

(declare-fun m!3298979 () Bool)

(assert (=> d!833550 m!3298979))

(declare-fun m!3298981 () Bool)

(assert (=> b!2881685 m!3298981))

(assert (=> b!2881504 d!833550))

(declare-fun d!833554 () Bool)

(assert (=> d!833554 (= (isEmpty!18750 (get!10356 (getLanguageWitness!458 c!7184))) ((_ is Nil!34426) (get!10356 (getLanguageWitness!458 c!7184))))))

(assert (=> d!833482 d!833554))

(declare-fun b!2881688 () Bool)

(declare-fun e!1823047 () Option!6428)

(assert (=> b!2881688 (= e!1823047 None!6427)))

(declare-fun b!2881689 () Bool)

(declare-fun e!1823045 () Option!6428)

(declare-fun e!1823051 () Option!6428)

(assert (=> b!2881689 (= e!1823045 e!1823051)))

(declare-fun c!468089 () Bool)

(assert (=> b!2881689 (= c!468089 ((_ is EmptyLang!8753) (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))))))

(declare-fun b!2881691 () Bool)

(declare-fun e!1823049 () Option!6428)

(assert (=> b!2881691 (= e!1823049 e!1823047)))

(declare-fun lt!1019850 () Option!6428)

(declare-fun call!186847 () Option!6428)

(assert (=> b!2881691 (= lt!1019850 call!186847)))

(declare-fun c!468088 () Bool)

(assert (=> b!2881691 (= c!468088 ((_ is Some!6427) lt!1019850))))

(declare-fun b!2881692 () Bool)

(declare-fun e!1823046 () Option!6428)

(assert (=> b!2881692 (= e!1823046 (Some!6427 Nil!34426))))

(declare-fun bm!186842 () Bool)

(declare-fun c!468093 () Bool)

(assert (=> bm!186842 (= call!186847 (getLanguageWitness!457 (ite c!468093 (regTwo!18019 (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))) (regOne!18018 (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))))))))

(declare-fun b!2881693 () Bool)

(assert (=> b!2881693 (= c!468093 ((_ is Union!8753) (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))))))

(assert (=> b!2881693 (= e!1823046 e!1823049)))

(declare-fun b!2881694 () Bool)

(declare-fun e!1823050 () Option!6428)

(assert (=> b!2881694 (= e!1823050 call!186847)))

(declare-fun d!833556 () Bool)

(declare-fun c!468087 () Bool)

(assert (=> d!833556 (= c!468087 ((_ is EmptyExpr!8753) (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))))))

(assert (=> d!833556 (= (getLanguageWitness!457 (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))) e!1823045)))

(declare-fun b!2881690 () Bool)

(assert (=> b!2881690 (= e!1823051 None!6427)))

(declare-fun b!2881695 () Bool)

(declare-fun e!1823044 () Option!6428)

(declare-fun lt!1019849 () Option!6428)

(assert (=> b!2881695 (= e!1823044 (Some!6427 (++!8191 (v!34553 lt!1019850) (v!34553 lt!1019849))))))

(declare-fun b!2881696 () Bool)

(assert (=> b!2881696 (= e!1823044 None!6427)))

(declare-fun b!2881697 () Bool)

(declare-fun e!1823048 () Option!6428)

(assert (=> b!2881697 (= e!1823048 e!1823046)))

(declare-fun c!468094 () Bool)

(assert (=> b!2881697 (= c!468094 ((_ is Star!8753) (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))))))

(declare-fun b!2881698 () Bool)

(declare-fun c!468090 () Bool)

(assert (=> b!2881698 (= c!468090 ((_ is ElementMatch!8753) (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))))))

(assert (=> b!2881698 (= e!1823051 e!1823048)))

(declare-fun b!2881699 () Bool)

(assert (=> b!2881699 (= e!1823048 (Some!6427 (Cons!34426 (c!467950 (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))) Nil!34426)))))

(declare-fun b!2881700 () Bool)

(assert (=> b!2881700 (= e!1823045 (Some!6427 Nil!34426))))

(declare-fun bm!186843 () Bool)

(declare-fun call!186848 () Option!6428)

(assert (=> bm!186843 (= call!186848 (getLanguageWitness!457 (ite c!468093 (regOne!18019 (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))) (regTwo!18018 (ite c!468013 (regTwo!18019 (h!39845 (exprs!3213 c!7184))) (regOne!18018 (h!39845 (exprs!3213 c!7184))))))))))

(declare-fun b!2881701 () Bool)

(declare-fun lt!1019848 () Option!6428)

(assert (=> b!2881701 (= e!1823050 lt!1019848)))

(declare-fun b!2881702 () Bool)

(declare-fun c!468092 () Bool)

(assert (=> b!2881702 (= c!468092 ((_ is Some!6427) lt!1019849))))

(assert (=> b!2881702 (= lt!1019849 call!186848)))

(assert (=> b!2881702 (= e!1823047 e!1823044)))

(declare-fun b!2881703 () Bool)

(assert (=> b!2881703 (= e!1823049 e!1823050)))

(assert (=> b!2881703 (= lt!1019848 call!186848)))

(declare-fun c!468091 () Bool)

(assert (=> b!2881703 (= c!468091 ((_ is Some!6427) lt!1019848))))

(assert (= (and d!833556 c!468087) b!2881700))

(assert (= (and d!833556 (not c!468087)) b!2881689))

(assert (= (and b!2881689 c!468089) b!2881690))

(assert (= (and b!2881689 (not c!468089)) b!2881698))

(assert (= (and b!2881698 c!468090) b!2881699))

(assert (= (and b!2881698 (not c!468090)) b!2881697))

(assert (= (and b!2881697 c!468094) b!2881692))

(assert (= (and b!2881697 (not c!468094)) b!2881693))

(assert (= (and b!2881693 c!468093) b!2881703))

(assert (= (and b!2881693 (not c!468093)) b!2881691))

(assert (= (and b!2881703 c!468091) b!2881701))

(assert (= (and b!2881703 (not c!468091)) b!2881694))

(assert (= (and b!2881691 c!468088) b!2881702))

(assert (= (and b!2881691 (not c!468088)) b!2881688))

(assert (= (and b!2881702 c!468092) b!2881695))

(assert (= (and b!2881702 (not c!468092)) b!2881696))

(assert (= (or b!2881694 b!2881691) bm!186842))

(assert (= (or b!2881703 b!2881702) bm!186843))

(declare-fun m!3298983 () Bool)

(assert (=> bm!186842 m!3298983))

(declare-fun m!3298985 () Bool)

(assert (=> b!2881695 m!3298985))

(declare-fun m!3298987 () Bool)

(assert (=> bm!186843 m!3298987))

(assert (=> bm!186832 d!833556))

(declare-fun e!1823062 () Bool)

(assert (=> b!2881547 (= tp!924175 e!1823062)))

(declare-fun b!2881733 () Bool)

(declare-fun tp!924189 () Bool)

(declare-fun tp!924188 () Bool)

(assert (=> b!2881733 (= e!1823062 (and tp!924189 tp!924188))))

(declare-fun b!2881730 () Bool)

(declare-fun tp_is_empty!15101 () Bool)

(assert (=> b!2881730 (= e!1823062 tp_is_empty!15101)))

(declare-fun b!2881732 () Bool)

(declare-fun tp!924191 () Bool)

(assert (=> b!2881732 (= e!1823062 tp!924191)))

(declare-fun b!2881731 () Bool)

(declare-fun tp!924190 () Bool)

(declare-fun tp!924187 () Bool)

(assert (=> b!2881731 (= e!1823062 (and tp!924190 tp!924187))))

(assert (= (and b!2881547 ((_ is ElementMatch!8753) (h!39845 (exprs!3213 c!7184)))) b!2881730))

(assert (= (and b!2881547 ((_ is Concat!14074) (h!39845 (exprs!3213 c!7184)))) b!2881731))

(assert (= (and b!2881547 ((_ is Star!8753) (h!39845 (exprs!3213 c!7184)))) b!2881732))

(assert (= (and b!2881547 ((_ is Union!8753) (h!39845 (exprs!3213 c!7184)))) b!2881733))

(declare-fun b!2881734 () Bool)

(declare-fun e!1823063 () Bool)

(declare-fun tp!924192 () Bool)

(declare-fun tp!924193 () Bool)

(assert (=> b!2881734 (= e!1823063 (and tp!924192 tp!924193))))

(assert (=> b!2881547 (= tp!924176 e!1823063)))

(assert (= (and b!2881547 ((_ is Cons!34425) (t!233592 (exprs!3213 c!7184)))) b!2881734))

(declare-fun b_lambda!86319 () Bool)

(assert (= b_lambda!86317 (or d!833476 b_lambda!86319)))

(declare-fun bs!523684 () Bool)

(declare-fun d!833564 () Bool)

(assert (= bs!523684 (and d!833564 d!833476)))

(declare-fun validRegex!3530 (Regex!8753) Bool)

(assert (=> bs!523684 (= (dynLambda!14339 lambda!107592 (h!39845 (exprs!3213 c!7184))) (validRegex!3530 (h!39845 (exprs!3213 c!7184))))))

(declare-fun m!3298997 () Bool)

(assert (=> bs!523684 m!3298997))

(assert (=> b!2881594 d!833564))

(check-sat (not b!2881616) (not d!833500) (not bm!186842) (not bs!523684) (not d!833530) (not d!833550) (not b!2881731) (not bm!186840) (not b!2881733) (not b!2881649) (not d!833508) (not bm!186837) (not b!2881685) (not b!2881732) (not b!2881613) (not d!833540) (not b!2881675) (not b_lambda!86319) (not bm!186841) (not b!2881617) (not b!2881674) (not b!2881650) (not b!2881686) tp_is_empty!15101 (not b!2881661) (not d!833546) (not b!2881695) (not b!2881614) (not bm!186836) (not bm!186843) (not d!833528) (not b!2881595) (not b!2881673) (not d!833524) (not d!833512) (not b!2881734) (not d!833510) (not b!2881571))
(check-sat)
