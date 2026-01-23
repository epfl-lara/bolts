; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718928 () Bool)

(assert start!718928)

(declare-fun b!7363952 () Bool)

(declare-fun e!4408887 () Bool)

(declare-fun tp!2092761 () Bool)

(declare-fun tp!2092758 () Bool)

(assert (=> b!7363952 (= e!4408887 (and tp!2092761 tp!2092758))))

(declare-fun b!7363953 () Bool)

(declare-fun tp_is_empty!48739 () Bool)

(assert (=> b!7363953 (= e!4408887 tp_is_empty!48739)))

(declare-fun b!7363954 () Bool)

(declare-fun e!4408886 () Bool)

(declare-datatypes ((C!38768 0))(
  ( (C!38769 (val!29744 Int)) )
))
(declare-datatypes ((Regex!19247 0))(
  ( (ElementMatch!19247 (c!1368347 C!38768)) (Concat!28092 (regOne!39006 Regex!19247) (regTwo!39006 Regex!19247)) (EmptyExpr!19247) (Star!19247 (reg!19576 Regex!19247)) (EmptyLang!19247) (Union!19247 (regOne!39007 Regex!19247) (regTwo!39007 Regex!19247)) )
))
(declare-fun r1!2370 () Regex!19247)

(declare-fun validRegex!9843 (Regex!19247) Bool)

(assert (=> b!7363954 (= e!4408886 (not (validRegex!9843 (regTwo!39007 r1!2370))))))

(declare-fun b!7363955 () Bool)

(declare-fun e!4408883 () Bool)

(declare-fun tp!2092762 () Bool)

(assert (=> b!7363955 (= e!4408883 tp!2092762)))

(declare-fun b!7363956 () Bool)

(declare-fun e!4408885 () Bool)

(declare-fun e!4408888 () Bool)

(assert (=> b!7363956 (= e!4408885 e!4408888)))

(declare-fun res!2972412 () Bool)

(assert (=> b!7363956 (=> (not res!2972412) (not e!4408888))))

(declare-fun c!10362 () C!38768)

(get-info :version)

(assert (=> b!7363956 (= res!2972412 (and (or (not ((_ is ElementMatch!19247) r1!2370)) (not (= c!10362 (c!1368347 r1!2370)))) ((_ is Union!19247) r1!2370)))))

(declare-datatypes ((List!71743 0))(
  ( (Nil!71619) (Cons!71619 (h!78067 Regex!19247) (t!386192 List!71743)) )
))
(declare-datatypes ((Context!16374 0))(
  ( (Context!16375 (exprs!8687 List!71743)) )
))
(declare-fun ct1!282 () Context!16374)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2614516 () (InoxSet Context!16374))

(declare-fun ct2!378 () Context!16374)

(declare-fun derivationStepZipperDown!3073 (Regex!19247 Context!16374 C!38768) (InoxSet Context!16374))

(declare-fun ++!17063 (List!71743 List!71743) List!71743)

(assert (=> b!7363956 (= lt!2614516 (derivationStepZipperDown!3073 r1!2370 (Context!16375 (++!17063 (exprs!8687 ct1!282) (exprs!8687 ct2!378))) c!10362))))

(declare-fun lambda!457603 () Int)

(declare-datatypes ((Unit!165443 0))(
  ( (Unit!165444) )
))
(declare-fun lt!2614515 () Unit!165443)

(declare-fun lemmaConcatPreservesForall!1920 (List!71743 List!71743 Int) Unit!165443)

(assert (=> b!7363956 (= lt!2614515 (lemmaConcatPreservesForall!1920 (exprs!8687 ct1!282) (exprs!8687 ct2!378) lambda!457603))))

(declare-fun b!7363957 () Bool)

(declare-fun tp!2092764 () Bool)

(declare-fun tp!2092760 () Bool)

(assert (=> b!7363957 (= e!4408887 (and tp!2092764 tp!2092760))))

(declare-fun b!7363958 () Bool)

(assert (=> b!7363958 (= e!4408888 e!4408886)))

(declare-fun res!2972408 () Bool)

(assert (=> b!7363958 (=> (not res!2972408) (not e!4408886))))

(declare-fun lt!2614517 () (InoxSet Context!16374))

(declare-fun lt!2614514 () (InoxSet Context!16374))

(assert (=> b!7363958 (= res!2972408 (= lt!2614517 ((_ map or) lt!2614514 (derivationStepZipperDown!3073 (regTwo!39007 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7363958 (= lt!2614514 (derivationStepZipperDown!3073 (regOne!39007 r1!2370) ct1!282 c!10362))))

(declare-fun b!7363960 () Bool)

(declare-fun e!4408882 () Bool)

(declare-fun tp!2092763 () Bool)

(assert (=> b!7363960 (= e!4408882 tp!2092763)))

(declare-fun b!7363961 () Bool)

(declare-fun res!2972410 () Bool)

(assert (=> b!7363961 (=> (not res!2972410) (not e!4408886))))

(declare-fun cWitness!61 () Context!16374)

(assert (=> b!7363961 (= res!2972410 (not (select lt!2614514 cWitness!61)))))

(declare-fun b!7363962 () Bool)

(declare-fun tp!2092765 () Bool)

(assert (=> b!7363962 (= e!4408887 tp!2092765)))

(declare-fun b!7363963 () Bool)

(declare-fun e!4408881 () Bool)

(declare-fun tp!2092759 () Bool)

(assert (=> b!7363963 (= e!4408881 tp!2092759)))

(declare-fun b!7363959 () Bool)

(declare-fun e!4408884 () Bool)

(assert (=> b!7363959 (= e!4408884 e!4408885)))

(declare-fun res!2972411 () Bool)

(assert (=> b!7363959 (=> (not res!2972411) (not e!4408885))))

(assert (=> b!7363959 (= res!2972411 (select lt!2614517 cWitness!61))))

(assert (=> b!7363959 (= lt!2614517 (derivationStepZipperDown!3073 r1!2370 ct1!282 c!10362))))

(declare-fun res!2972409 () Bool)

(assert (=> start!718928 (=> (not res!2972409) (not e!4408884))))

(assert (=> start!718928 (= res!2972409 (validRegex!9843 r1!2370))))

(assert (=> start!718928 e!4408884))

(assert (=> start!718928 tp_is_empty!48739))

(declare-fun inv!91457 (Context!16374) Bool)

(assert (=> start!718928 (and (inv!91457 cWitness!61) e!4408882)))

(assert (=> start!718928 (and (inv!91457 ct1!282) e!4408881)))

(assert (=> start!718928 e!4408887))

(assert (=> start!718928 (and (inv!91457 ct2!378) e!4408883)))

(assert (= (and start!718928 res!2972409) b!7363959))

(assert (= (and b!7363959 res!2972411) b!7363956))

(assert (= (and b!7363956 res!2972412) b!7363958))

(assert (= (and b!7363958 res!2972408) b!7363961))

(assert (= (and b!7363961 res!2972410) b!7363954))

(assert (= start!718928 b!7363960))

(assert (= start!718928 b!7363963))

(assert (= (and start!718928 ((_ is ElementMatch!19247) r1!2370)) b!7363953))

(assert (= (and start!718928 ((_ is Concat!28092) r1!2370)) b!7363957))

(assert (= (and start!718928 ((_ is Star!19247) r1!2370)) b!7363962))

(assert (= (and start!718928 ((_ is Union!19247) r1!2370)) b!7363952))

(assert (= start!718928 b!7363955))

(declare-fun m!8020368 () Bool)

(assert (=> b!7363961 m!8020368))

(declare-fun m!8020370 () Bool)

(assert (=> start!718928 m!8020370))

(declare-fun m!8020372 () Bool)

(assert (=> start!718928 m!8020372))

(declare-fun m!8020374 () Bool)

(assert (=> start!718928 m!8020374))

(declare-fun m!8020376 () Bool)

(assert (=> start!718928 m!8020376))

(declare-fun m!8020378 () Bool)

(assert (=> b!7363958 m!8020378))

(declare-fun m!8020380 () Bool)

(assert (=> b!7363958 m!8020380))

(declare-fun m!8020382 () Bool)

(assert (=> b!7363954 m!8020382))

(declare-fun m!8020384 () Bool)

(assert (=> b!7363959 m!8020384))

(declare-fun m!8020386 () Bool)

(assert (=> b!7363959 m!8020386))

(declare-fun m!8020388 () Bool)

(assert (=> b!7363956 m!8020388))

(declare-fun m!8020390 () Bool)

(assert (=> b!7363956 m!8020390))

(declare-fun m!8020392 () Bool)

(assert (=> b!7363956 m!8020392))

(check-sat (not b!7363957) (not b!7363956) (not b!7363959) (not b!7363960) (not b!7363955) (not b!7363958) (not start!718928) tp_is_empty!48739 (not b!7363962) (not b!7363952) (not b!7363954) (not b!7363963))
(check-sat)
(get-model)

(declare-fun c!1368378 () Bool)

(declare-fun bm!675286 () Bool)

(declare-fun call!675294 () (InoxSet Context!16374))

(declare-fun c!1368375 () Bool)

(declare-fun c!1368377 () Bool)

(declare-fun call!675293 () List!71743)

(assert (=> bm!675286 (= call!675294 (derivationStepZipperDown!3073 (ite c!1368375 (regTwo!39007 r1!2370) (ite c!1368377 (regTwo!39006 r1!2370) (ite c!1368378 (regOne!39006 r1!2370) (reg!19576 r1!2370)))) (ite (or c!1368375 c!1368377) (Context!16375 (++!17063 (exprs!8687 ct1!282) (exprs!8687 ct2!378))) (Context!16375 call!675293)) c!10362))))

(declare-fun bm!675287 () Bool)

(declare-fun call!675295 () List!71743)

(assert (=> bm!675287 (= call!675293 call!675295)))

(declare-fun bm!675288 () Bool)

(declare-fun $colon$colon!3232 (List!71743 Regex!19247) List!71743)

(assert (=> bm!675288 (= call!675295 ($colon$colon!3232 (exprs!8687 (Context!16375 (++!17063 (exprs!8687 ct1!282) (exprs!8687 ct2!378)))) (ite (or c!1368377 c!1368378) (regTwo!39006 r1!2370) r1!2370)))))

(declare-fun b!7364035 () Bool)

(declare-fun e!4408937 () (InoxSet Context!16374))

(declare-fun call!675291 () (InoxSet Context!16374))

(assert (=> b!7364035 (= e!4408937 ((_ map or) call!675291 call!675294))))

(declare-fun bm!675289 () Bool)

(assert (=> bm!675289 (= call!675291 (derivationStepZipperDown!3073 (ite c!1368375 (regOne!39007 r1!2370) (regOne!39006 r1!2370)) (ite c!1368375 (Context!16375 (++!17063 (exprs!8687 ct1!282) (exprs!8687 ct2!378))) (Context!16375 call!675295)) c!10362))))

(declare-fun d!2282512 () Bool)

(declare-fun c!1368374 () Bool)

(assert (=> d!2282512 (= c!1368374 (and ((_ is ElementMatch!19247) r1!2370) (= (c!1368347 r1!2370) c!10362)))))

(declare-fun e!4408935 () (InoxSet Context!16374))

(assert (=> d!2282512 (= (derivationStepZipperDown!3073 r1!2370 (Context!16375 (++!17063 (exprs!8687 ct1!282) (exprs!8687 ct2!378))) c!10362) e!4408935)))

(declare-fun b!7364036 () Bool)

(declare-fun e!4408936 () (InoxSet Context!16374))

(declare-fun e!4408938 () (InoxSet Context!16374))

(assert (=> b!7364036 (= e!4408936 e!4408938)))

(assert (=> b!7364036 (= c!1368378 ((_ is Concat!28092) r1!2370))))

(declare-fun b!7364037 () Bool)

(declare-fun e!4408939 () Bool)

(declare-fun nullable!8327 (Regex!19247) Bool)

(assert (=> b!7364037 (= e!4408939 (nullable!8327 (regOne!39006 r1!2370)))))

(declare-fun b!7364038 () Bool)

(declare-fun e!4408934 () (InoxSet Context!16374))

(declare-fun call!675292 () (InoxSet Context!16374))

(assert (=> b!7364038 (= e!4408934 call!675292)))

(declare-fun bm!675290 () Bool)

(declare-fun call!675296 () (InoxSet Context!16374))

(assert (=> bm!675290 (= call!675292 call!675296)))

(declare-fun b!7364039 () Bool)

(assert (=> b!7364039 (= c!1368377 e!4408939)))

(declare-fun res!2972432 () Bool)

(assert (=> b!7364039 (=> (not res!2972432) (not e!4408939))))

(assert (=> b!7364039 (= res!2972432 ((_ is Concat!28092) r1!2370))))

(assert (=> b!7364039 (= e!4408937 e!4408936)))

(declare-fun b!7364040 () Bool)

(assert (=> b!7364040 (= e!4408935 (store ((as const (Array Context!16374 Bool)) false) (Context!16375 (++!17063 (exprs!8687 ct1!282) (exprs!8687 ct2!378))) true))))

(declare-fun b!7364041 () Bool)

(assert (=> b!7364041 (= e!4408938 call!675292)))

(declare-fun b!7364042 () Bool)

(declare-fun c!1368376 () Bool)

(assert (=> b!7364042 (= c!1368376 ((_ is Star!19247) r1!2370))))

(assert (=> b!7364042 (= e!4408938 e!4408934)))

(declare-fun b!7364043 () Bool)

(assert (=> b!7364043 (= e!4408936 ((_ map or) call!675291 call!675296))))

(declare-fun b!7364044 () Bool)

(assert (=> b!7364044 (= e!4408935 e!4408937)))

(assert (=> b!7364044 (= c!1368375 ((_ is Union!19247) r1!2370))))

(declare-fun b!7364045 () Bool)

(assert (=> b!7364045 (= e!4408934 ((as const (Array Context!16374 Bool)) false))))

(declare-fun bm!675291 () Bool)

(assert (=> bm!675291 (= call!675296 call!675294)))

(assert (= (and d!2282512 c!1368374) b!7364040))

(assert (= (and d!2282512 (not c!1368374)) b!7364044))

(assert (= (and b!7364044 c!1368375) b!7364035))

(assert (= (and b!7364044 (not c!1368375)) b!7364039))

(assert (= (and b!7364039 res!2972432) b!7364037))

(assert (= (and b!7364039 c!1368377) b!7364043))

(assert (= (and b!7364039 (not c!1368377)) b!7364036))

(assert (= (and b!7364036 c!1368378) b!7364041))

(assert (= (and b!7364036 (not c!1368378)) b!7364042))

(assert (= (and b!7364042 c!1368376) b!7364038))

(assert (= (and b!7364042 (not c!1368376)) b!7364045))

(assert (= (or b!7364041 b!7364038) bm!675287))

(assert (= (or b!7364041 b!7364038) bm!675290))

(assert (= (or b!7364043 bm!675290) bm!675291))

(assert (= (or b!7364043 bm!675287) bm!675288))

(assert (= (or b!7364035 bm!675291) bm!675286))

(assert (= (or b!7364035 b!7364043) bm!675289))

(declare-fun m!8020400 () Bool)

(assert (=> b!7364037 m!8020400))

(declare-fun m!8020402 () Bool)

(assert (=> bm!675289 m!8020402))

(declare-fun m!8020404 () Bool)

(assert (=> b!7364040 m!8020404))

(declare-fun m!8020406 () Bool)

(assert (=> bm!675286 m!8020406))

(declare-fun m!8020408 () Bool)

(assert (=> bm!675288 m!8020408))

(assert (=> b!7363956 d!2282512))

(declare-fun b!7364065 () Bool)

(declare-fun e!4408951 () List!71743)

(assert (=> b!7364065 (= e!4408951 (exprs!8687 ct2!378))))

(declare-fun b!7364068 () Bool)

(declare-fun e!4408950 () Bool)

(declare-fun lt!2614520 () List!71743)

(assert (=> b!7364068 (= e!4408950 (or (not (= (exprs!8687 ct2!378) Nil!71619)) (= lt!2614520 (exprs!8687 ct1!282))))))

(declare-fun d!2282516 () Bool)

(assert (=> d!2282516 e!4408950))

(declare-fun res!2972438 () Bool)

(assert (=> d!2282516 (=> (not res!2972438) (not e!4408950))))

(declare-fun content!15132 (List!71743) (InoxSet Regex!19247))

(assert (=> d!2282516 (= res!2972438 (= (content!15132 lt!2614520) ((_ map or) (content!15132 (exprs!8687 ct1!282)) (content!15132 (exprs!8687 ct2!378)))))))

(assert (=> d!2282516 (= lt!2614520 e!4408951)))

(declare-fun c!1368386 () Bool)

(assert (=> d!2282516 (= c!1368386 ((_ is Nil!71619) (exprs!8687 ct1!282)))))

(assert (=> d!2282516 (= (++!17063 (exprs!8687 ct1!282) (exprs!8687 ct2!378)) lt!2614520)))

(declare-fun b!7364066 () Bool)

(assert (=> b!7364066 (= e!4408951 (Cons!71619 (h!78067 (exprs!8687 ct1!282)) (++!17063 (t!386192 (exprs!8687 ct1!282)) (exprs!8687 ct2!378))))))

(declare-fun b!7364067 () Bool)

(declare-fun res!2972439 () Bool)

(assert (=> b!7364067 (=> (not res!2972439) (not e!4408950))))

(declare-fun size!42110 (List!71743) Int)

(assert (=> b!7364067 (= res!2972439 (= (size!42110 lt!2614520) (+ (size!42110 (exprs!8687 ct1!282)) (size!42110 (exprs!8687 ct2!378)))))))

(assert (= (and d!2282516 c!1368386) b!7364065))

(assert (= (and d!2282516 (not c!1368386)) b!7364066))

(assert (= (and d!2282516 res!2972438) b!7364067))

(assert (= (and b!7364067 res!2972439) b!7364068))

(declare-fun m!8020420 () Bool)

(assert (=> d!2282516 m!8020420))

(declare-fun m!8020422 () Bool)

(assert (=> d!2282516 m!8020422))

(declare-fun m!8020424 () Bool)

(assert (=> d!2282516 m!8020424))

(declare-fun m!8020426 () Bool)

(assert (=> b!7364066 m!8020426))

(declare-fun m!8020428 () Bool)

(assert (=> b!7364067 m!8020428))

(declare-fun m!8020430 () Bool)

(assert (=> b!7364067 m!8020430))

(declare-fun m!8020432 () Bool)

(assert (=> b!7364067 m!8020432))

(assert (=> b!7363956 d!2282516))

(declare-fun d!2282520 () Bool)

(declare-fun forall!18056 (List!71743 Int) Bool)

(assert (=> d!2282520 (forall!18056 (++!17063 (exprs!8687 ct1!282) (exprs!8687 ct2!378)) lambda!457603)))

(declare-fun lt!2614525 () Unit!165443)

(declare-fun choose!57269 (List!71743 List!71743 Int) Unit!165443)

(assert (=> d!2282520 (= lt!2614525 (choose!57269 (exprs!8687 ct1!282) (exprs!8687 ct2!378) lambda!457603))))

(assert (=> d!2282520 (forall!18056 (exprs!8687 ct1!282) lambda!457603)))

(assert (=> d!2282520 (= (lemmaConcatPreservesForall!1920 (exprs!8687 ct1!282) (exprs!8687 ct2!378) lambda!457603) lt!2614525)))

(declare-fun bs!1920378 () Bool)

(assert (= bs!1920378 d!2282520))

(assert (=> bs!1920378 m!8020388))

(assert (=> bs!1920378 m!8020388))

(declare-fun m!8020434 () Bool)

(assert (=> bs!1920378 m!8020434))

(declare-fun m!8020436 () Bool)

(assert (=> bs!1920378 m!8020436))

(declare-fun m!8020438 () Bool)

(assert (=> bs!1920378 m!8020438))

(assert (=> b!7363956 d!2282520))

(declare-fun c!1368390 () Bool)

(declare-fun call!675307 () List!71743)

(declare-fun c!1368392 () Bool)

(declare-fun bm!675300 () Bool)

(declare-fun c!1368393 () Bool)

(declare-fun call!675308 () (InoxSet Context!16374))

(assert (=> bm!675300 (= call!675308 (derivationStepZipperDown!3073 (ite c!1368390 (regTwo!39007 (regTwo!39007 r1!2370)) (ite c!1368392 (regTwo!39006 (regTwo!39007 r1!2370)) (ite c!1368393 (regOne!39006 (regTwo!39007 r1!2370)) (reg!19576 (regTwo!39007 r1!2370))))) (ite (or c!1368390 c!1368392) ct1!282 (Context!16375 call!675307)) c!10362))))

(declare-fun bm!675301 () Bool)

(declare-fun call!675309 () List!71743)

(assert (=> bm!675301 (= call!675307 call!675309)))

(declare-fun bm!675302 () Bool)

(assert (=> bm!675302 (= call!675309 ($colon$colon!3232 (exprs!8687 ct1!282) (ite (or c!1368392 c!1368393) (regTwo!39006 (regTwo!39007 r1!2370)) (regTwo!39007 r1!2370))))))

(declare-fun b!7364077 () Bool)

(declare-fun e!4408959 () (InoxSet Context!16374))

(declare-fun call!675305 () (InoxSet Context!16374))

(assert (=> b!7364077 (= e!4408959 ((_ map or) call!675305 call!675308))))

(declare-fun bm!675303 () Bool)

(assert (=> bm!675303 (= call!675305 (derivationStepZipperDown!3073 (ite c!1368390 (regOne!39007 (regTwo!39007 r1!2370)) (regOne!39006 (regTwo!39007 r1!2370))) (ite c!1368390 ct1!282 (Context!16375 call!675309)) c!10362))))

(declare-fun d!2282522 () Bool)

(declare-fun c!1368389 () Bool)

(assert (=> d!2282522 (= c!1368389 (and ((_ is ElementMatch!19247) (regTwo!39007 r1!2370)) (= (c!1368347 (regTwo!39007 r1!2370)) c!10362)))))

(declare-fun e!4408957 () (InoxSet Context!16374))

(assert (=> d!2282522 (= (derivationStepZipperDown!3073 (regTwo!39007 r1!2370) ct1!282 c!10362) e!4408957)))

(declare-fun b!7364078 () Bool)

(declare-fun e!4408958 () (InoxSet Context!16374))

(declare-fun e!4408960 () (InoxSet Context!16374))

(assert (=> b!7364078 (= e!4408958 e!4408960)))

(assert (=> b!7364078 (= c!1368393 ((_ is Concat!28092) (regTwo!39007 r1!2370)))))

(declare-fun b!7364079 () Bool)

(declare-fun e!4408961 () Bool)

(assert (=> b!7364079 (= e!4408961 (nullable!8327 (regOne!39006 (regTwo!39007 r1!2370))))))

(declare-fun b!7364080 () Bool)

(declare-fun e!4408956 () (InoxSet Context!16374))

(declare-fun call!675306 () (InoxSet Context!16374))

(assert (=> b!7364080 (= e!4408956 call!675306)))

(declare-fun bm!675304 () Bool)

(declare-fun call!675310 () (InoxSet Context!16374))

(assert (=> bm!675304 (= call!675306 call!675310)))

(declare-fun b!7364081 () Bool)

(assert (=> b!7364081 (= c!1368392 e!4408961)))

(declare-fun res!2972444 () Bool)

(assert (=> b!7364081 (=> (not res!2972444) (not e!4408961))))

(assert (=> b!7364081 (= res!2972444 ((_ is Concat!28092) (regTwo!39007 r1!2370)))))

(assert (=> b!7364081 (= e!4408959 e!4408958)))

(declare-fun b!7364082 () Bool)

(assert (=> b!7364082 (= e!4408957 (store ((as const (Array Context!16374 Bool)) false) ct1!282 true))))

(declare-fun b!7364083 () Bool)

(assert (=> b!7364083 (= e!4408960 call!675306)))

(declare-fun b!7364084 () Bool)

(declare-fun c!1368391 () Bool)

(assert (=> b!7364084 (= c!1368391 ((_ is Star!19247) (regTwo!39007 r1!2370)))))

(assert (=> b!7364084 (= e!4408960 e!4408956)))

(declare-fun b!7364085 () Bool)

(assert (=> b!7364085 (= e!4408958 ((_ map or) call!675305 call!675310))))

(declare-fun b!7364086 () Bool)

(assert (=> b!7364086 (= e!4408957 e!4408959)))

(assert (=> b!7364086 (= c!1368390 ((_ is Union!19247) (regTwo!39007 r1!2370)))))

(declare-fun b!7364087 () Bool)

(assert (=> b!7364087 (= e!4408956 ((as const (Array Context!16374 Bool)) false))))

(declare-fun bm!675305 () Bool)

(assert (=> bm!675305 (= call!675310 call!675308)))

(assert (= (and d!2282522 c!1368389) b!7364082))

(assert (= (and d!2282522 (not c!1368389)) b!7364086))

(assert (= (and b!7364086 c!1368390) b!7364077))

(assert (= (and b!7364086 (not c!1368390)) b!7364081))

(assert (= (and b!7364081 res!2972444) b!7364079))

(assert (= (and b!7364081 c!1368392) b!7364085))

(assert (= (and b!7364081 (not c!1368392)) b!7364078))

(assert (= (and b!7364078 c!1368393) b!7364083))

(assert (= (and b!7364078 (not c!1368393)) b!7364084))

(assert (= (and b!7364084 c!1368391) b!7364080))

(assert (= (and b!7364084 (not c!1368391)) b!7364087))

(assert (= (or b!7364083 b!7364080) bm!675301))

(assert (= (or b!7364083 b!7364080) bm!675304))

(assert (= (or b!7364085 bm!675304) bm!675305))

(assert (= (or b!7364085 bm!675301) bm!675302))

(assert (= (or b!7364077 bm!675305) bm!675300))

(assert (= (or b!7364077 b!7364085) bm!675303))

(declare-fun m!8020440 () Bool)

(assert (=> b!7364079 m!8020440))

(declare-fun m!8020442 () Bool)

(assert (=> bm!675303 m!8020442))

(declare-fun m!8020444 () Bool)

(assert (=> b!7364082 m!8020444))

(declare-fun m!8020446 () Bool)

(assert (=> bm!675300 m!8020446))

(declare-fun m!8020448 () Bool)

(assert (=> bm!675302 m!8020448))

(assert (=> b!7363958 d!2282522))

(declare-fun bm!675306 () Bool)

(declare-fun c!1368396 () Bool)

(declare-fun call!675314 () (InoxSet Context!16374))

(declare-fun c!1368399 () Bool)

(declare-fun c!1368398 () Bool)

(declare-fun call!675313 () List!71743)

(assert (=> bm!675306 (= call!675314 (derivationStepZipperDown!3073 (ite c!1368396 (regTwo!39007 (regOne!39007 r1!2370)) (ite c!1368398 (regTwo!39006 (regOne!39007 r1!2370)) (ite c!1368399 (regOne!39006 (regOne!39007 r1!2370)) (reg!19576 (regOne!39007 r1!2370))))) (ite (or c!1368396 c!1368398) ct1!282 (Context!16375 call!675313)) c!10362))))

(declare-fun bm!675307 () Bool)

(declare-fun call!675315 () List!71743)

(assert (=> bm!675307 (= call!675313 call!675315)))

(declare-fun bm!675308 () Bool)

(assert (=> bm!675308 (= call!675315 ($colon$colon!3232 (exprs!8687 ct1!282) (ite (or c!1368398 c!1368399) (regTwo!39006 (regOne!39007 r1!2370)) (regOne!39007 r1!2370))))))

(declare-fun b!7364092 () Bool)

(declare-fun e!4408967 () (InoxSet Context!16374))

(declare-fun call!675311 () (InoxSet Context!16374))

(assert (=> b!7364092 (= e!4408967 ((_ map or) call!675311 call!675314))))

(declare-fun bm!675309 () Bool)

(assert (=> bm!675309 (= call!675311 (derivationStepZipperDown!3073 (ite c!1368396 (regOne!39007 (regOne!39007 r1!2370)) (regOne!39006 (regOne!39007 r1!2370))) (ite c!1368396 ct1!282 (Context!16375 call!675315)) c!10362))))

(declare-fun d!2282524 () Bool)

(declare-fun c!1368395 () Bool)

(assert (=> d!2282524 (= c!1368395 (and ((_ is ElementMatch!19247) (regOne!39007 r1!2370)) (= (c!1368347 (regOne!39007 r1!2370)) c!10362)))))

(declare-fun e!4408965 () (InoxSet Context!16374))

(assert (=> d!2282524 (= (derivationStepZipperDown!3073 (regOne!39007 r1!2370) ct1!282 c!10362) e!4408965)))

(declare-fun b!7364093 () Bool)

(declare-fun e!4408966 () (InoxSet Context!16374))

(declare-fun e!4408968 () (InoxSet Context!16374))

(assert (=> b!7364093 (= e!4408966 e!4408968)))

(assert (=> b!7364093 (= c!1368399 ((_ is Concat!28092) (regOne!39007 r1!2370)))))

(declare-fun b!7364094 () Bool)

(declare-fun e!4408969 () Bool)

(assert (=> b!7364094 (= e!4408969 (nullable!8327 (regOne!39006 (regOne!39007 r1!2370))))))

(declare-fun b!7364095 () Bool)

(declare-fun e!4408964 () (InoxSet Context!16374))

(declare-fun call!675312 () (InoxSet Context!16374))

(assert (=> b!7364095 (= e!4408964 call!675312)))

(declare-fun bm!675310 () Bool)

(declare-fun call!675316 () (InoxSet Context!16374))

(assert (=> bm!675310 (= call!675312 call!675316)))

(declare-fun b!7364096 () Bool)

(assert (=> b!7364096 (= c!1368398 e!4408969)))

(declare-fun res!2972447 () Bool)

(assert (=> b!7364096 (=> (not res!2972447) (not e!4408969))))

(assert (=> b!7364096 (= res!2972447 ((_ is Concat!28092) (regOne!39007 r1!2370)))))

(assert (=> b!7364096 (= e!4408967 e!4408966)))

(declare-fun b!7364097 () Bool)

(assert (=> b!7364097 (= e!4408965 (store ((as const (Array Context!16374 Bool)) false) ct1!282 true))))

(declare-fun b!7364098 () Bool)

(assert (=> b!7364098 (= e!4408968 call!675312)))

(declare-fun b!7364099 () Bool)

(declare-fun c!1368397 () Bool)

(assert (=> b!7364099 (= c!1368397 ((_ is Star!19247) (regOne!39007 r1!2370)))))

(assert (=> b!7364099 (= e!4408968 e!4408964)))

(declare-fun b!7364100 () Bool)

(assert (=> b!7364100 (= e!4408966 ((_ map or) call!675311 call!675316))))

(declare-fun b!7364101 () Bool)

(assert (=> b!7364101 (= e!4408965 e!4408967)))

(assert (=> b!7364101 (= c!1368396 ((_ is Union!19247) (regOne!39007 r1!2370)))))

(declare-fun b!7364102 () Bool)

(assert (=> b!7364102 (= e!4408964 ((as const (Array Context!16374 Bool)) false))))

(declare-fun bm!675311 () Bool)

(assert (=> bm!675311 (= call!675316 call!675314)))

(assert (= (and d!2282524 c!1368395) b!7364097))

(assert (= (and d!2282524 (not c!1368395)) b!7364101))

(assert (= (and b!7364101 c!1368396) b!7364092))

(assert (= (and b!7364101 (not c!1368396)) b!7364096))

(assert (= (and b!7364096 res!2972447) b!7364094))

(assert (= (and b!7364096 c!1368398) b!7364100))

(assert (= (and b!7364096 (not c!1368398)) b!7364093))

(assert (= (and b!7364093 c!1368399) b!7364098))

(assert (= (and b!7364093 (not c!1368399)) b!7364099))

(assert (= (and b!7364099 c!1368397) b!7364095))

(assert (= (and b!7364099 (not c!1368397)) b!7364102))

(assert (= (or b!7364098 b!7364095) bm!675307))

(assert (= (or b!7364098 b!7364095) bm!675310))

(assert (= (or b!7364100 bm!675310) bm!675311))

(assert (= (or b!7364100 bm!675307) bm!675308))

(assert (= (or b!7364092 bm!675311) bm!675306))

(assert (= (or b!7364092 b!7364100) bm!675309))

(declare-fun m!8020464 () Bool)

(assert (=> b!7364094 m!8020464))

(declare-fun m!8020466 () Bool)

(assert (=> bm!675309 m!8020466))

(assert (=> b!7364097 m!8020444))

(declare-fun m!8020468 () Bool)

(assert (=> bm!675306 m!8020468))

(declare-fun m!8020470 () Bool)

(assert (=> bm!675308 m!8020470))

(assert (=> b!7363958 d!2282524))

(declare-fun c!1368411 () Bool)

(declare-fun call!675334 () Bool)

(declare-fun c!1368412 () Bool)

(declare-fun bm!675327 () Bool)

(assert (=> bm!675327 (= call!675334 (validRegex!9843 (ite c!1368411 (reg!19576 r1!2370) (ite c!1368412 (regOne!39007 r1!2370) (regTwo!39006 r1!2370)))))))

(declare-fun bm!675328 () Bool)

(declare-fun call!675333 () Bool)

(assert (=> bm!675328 (= call!675333 call!675334)))

(declare-fun b!7364141 () Bool)

(declare-fun e!4408999 () Bool)

(declare-fun e!4409002 () Bool)

(assert (=> b!7364141 (= e!4408999 e!4409002)))

(assert (=> b!7364141 (= c!1368412 ((_ is Union!19247) r1!2370))))

(declare-fun b!7364142 () Bool)

(declare-fun res!2972466 () Bool)

(declare-fun e!4409000 () Bool)

(assert (=> b!7364142 (=> (not res!2972466) (not e!4409000))))

(assert (=> b!7364142 (= res!2972466 call!675333)))

(assert (=> b!7364142 (= e!4409002 e!4409000)))

(declare-fun b!7364143 () Bool)

(declare-fun res!2972464 () Bool)

(declare-fun e!4408997 () Bool)

(assert (=> b!7364143 (=> res!2972464 e!4408997)))

(assert (=> b!7364143 (= res!2972464 (not ((_ is Concat!28092) r1!2370)))))

(assert (=> b!7364143 (= e!4409002 e!4408997)))

(declare-fun b!7364144 () Bool)

(declare-fun e!4409001 () Bool)

(assert (=> b!7364144 (= e!4409001 e!4408999)))

(assert (=> b!7364144 (= c!1368411 ((_ is Star!19247) r1!2370))))

(declare-fun b!7364145 () Bool)

(declare-fun e!4408998 () Bool)

(assert (=> b!7364145 (= e!4408999 e!4408998)))

(declare-fun res!2972467 () Bool)

(assert (=> b!7364145 (= res!2972467 (not (nullable!8327 (reg!19576 r1!2370))))))

(assert (=> b!7364145 (=> (not res!2972467) (not e!4408998))))

(declare-fun b!7364146 () Bool)

(declare-fun e!4409003 () Bool)

(assert (=> b!7364146 (= e!4408997 e!4409003)))

(declare-fun res!2972465 () Bool)

(assert (=> b!7364146 (=> (not res!2972465) (not e!4409003))))

(declare-fun call!675332 () Bool)

(assert (=> b!7364146 (= res!2972465 call!675332)))

(declare-fun b!7364147 () Bool)

(assert (=> b!7364147 (= e!4409000 call!675332)))

(declare-fun b!7364148 () Bool)

(assert (=> b!7364148 (= e!4409003 call!675333)))

(declare-fun d!2282528 () Bool)

(declare-fun res!2972468 () Bool)

(assert (=> d!2282528 (=> res!2972468 e!4409001)))

(assert (=> d!2282528 (= res!2972468 ((_ is ElementMatch!19247) r1!2370))))

(assert (=> d!2282528 (= (validRegex!9843 r1!2370) e!4409001)))

(declare-fun b!7364149 () Bool)

(assert (=> b!7364149 (= e!4408998 call!675334)))

(declare-fun bm!675329 () Bool)

(assert (=> bm!675329 (= call!675332 (validRegex!9843 (ite c!1368412 (regTwo!39007 r1!2370) (regOne!39006 r1!2370))))))

(assert (= (and d!2282528 (not res!2972468)) b!7364144))

(assert (= (and b!7364144 c!1368411) b!7364145))

(assert (= (and b!7364144 (not c!1368411)) b!7364141))

(assert (= (and b!7364145 res!2972467) b!7364149))

(assert (= (and b!7364141 c!1368412) b!7364142))

(assert (= (and b!7364141 (not c!1368412)) b!7364143))

(assert (= (and b!7364142 res!2972466) b!7364147))

(assert (= (and b!7364143 (not res!2972464)) b!7364146))

(assert (= (and b!7364146 res!2972465) b!7364148))

(assert (= (or b!7364142 b!7364148) bm!675328))

(assert (= (or b!7364147 b!7364146) bm!675329))

(assert (= (or b!7364149 bm!675328) bm!675327))

(declare-fun m!8020498 () Bool)

(assert (=> bm!675327 m!8020498))

(declare-fun m!8020500 () Bool)

(assert (=> b!7364145 m!8020500))

(declare-fun m!8020502 () Bool)

(assert (=> bm!675329 m!8020502))

(assert (=> start!718928 d!2282528))

(declare-fun bs!1920389 () Bool)

(declare-fun d!2282542 () Bool)

(assert (= bs!1920389 (and d!2282542 b!7363956)))

(declare-fun lambda!457611 () Int)

(assert (=> bs!1920389 (= lambda!457611 lambda!457603)))

(assert (=> d!2282542 (= (inv!91457 cWitness!61) (forall!18056 (exprs!8687 cWitness!61) lambda!457611))))

(declare-fun bs!1920390 () Bool)

(assert (= bs!1920390 d!2282542))

(declare-fun m!8020520 () Bool)

(assert (=> bs!1920390 m!8020520))

(assert (=> start!718928 d!2282542))

(declare-fun bs!1920391 () Bool)

(declare-fun d!2282546 () Bool)

(assert (= bs!1920391 (and d!2282546 b!7363956)))

(declare-fun lambda!457612 () Int)

(assert (=> bs!1920391 (= lambda!457612 lambda!457603)))

(declare-fun bs!1920392 () Bool)

(assert (= bs!1920392 (and d!2282546 d!2282542)))

(assert (=> bs!1920392 (= lambda!457612 lambda!457611)))

(assert (=> d!2282546 (= (inv!91457 ct1!282) (forall!18056 (exprs!8687 ct1!282) lambda!457612))))

(declare-fun bs!1920393 () Bool)

(assert (= bs!1920393 d!2282546))

(declare-fun m!8020522 () Bool)

(assert (=> bs!1920393 m!8020522))

(assert (=> start!718928 d!2282546))

(declare-fun bs!1920394 () Bool)

(declare-fun d!2282548 () Bool)

(assert (= bs!1920394 (and d!2282548 b!7363956)))

(declare-fun lambda!457613 () Int)

(assert (=> bs!1920394 (= lambda!457613 lambda!457603)))

(declare-fun bs!1920395 () Bool)

(assert (= bs!1920395 (and d!2282548 d!2282542)))

(assert (=> bs!1920395 (= lambda!457613 lambda!457611)))

(declare-fun bs!1920396 () Bool)

(assert (= bs!1920396 (and d!2282548 d!2282546)))

(assert (=> bs!1920396 (= lambda!457613 lambda!457612)))

(assert (=> d!2282548 (= (inv!91457 ct2!378) (forall!18056 (exprs!8687 ct2!378) lambda!457613))))

(declare-fun bs!1920397 () Bool)

(assert (= bs!1920397 d!2282548))

(declare-fun m!8020524 () Bool)

(assert (=> bs!1920397 m!8020524))

(assert (=> start!718928 d!2282548))

(declare-fun bm!675342 () Bool)

(declare-fun call!675349 () Bool)

(declare-fun c!1368424 () Bool)

(declare-fun c!1368423 () Bool)

(assert (=> bm!675342 (= call!675349 (validRegex!9843 (ite c!1368423 (reg!19576 (regTwo!39007 r1!2370)) (ite c!1368424 (regOne!39007 (regTwo!39007 r1!2370)) (regTwo!39006 (regTwo!39007 r1!2370))))))))

(declare-fun bm!675343 () Bool)

(declare-fun call!675348 () Bool)

(assert (=> bm!675343 (= call!675348 call!675349)))

(declare-fun b!7364187 () Bool)

(declare-fun e!4409023 () Bool)

(declare-fun e!4409026 () Bool)

(assert (=> b!7364187 (= e!4409023 e!4409026)))

(assert (=> b!7364187 (= c!1368424 ((_ is Union!19247) (regTwo!39007 r1!2370)))))

(declare-fun b!7364188 () Bool)

(declare-fun res!2972473 () Bool)

(declare-fun e!4409024 () Bool)

(assert (=> b!7364188 (=> (not res!2972473) (not e!4409024))))

(assert (=> b!7364188 (= res!2972473 call!675348)))

(assert (=> b!7364188 (= e!4409026 e!4409024)))

(declare-fun b!7364189 () Bool)

(declare-fun res!2972471 () Bool)

(declare-fun e!4409021 () Bool)

(assert (=> b!7364189 (=> res!2972471 e!4409021)))

(assert (=> b!7364189 (= res!2972471 (not ((_ is Concat!28092) (regTwo!39007 r1!2370))))))

(assert (=> b!7364189 (= e!4409026 e!4409021)))

(declare-fun b!7364190 () Bool)

(declare-fun e!4409025 () Bool)

(assert (=> b!7364190 (= e!4409025 e!4409023)))

(assert (=> b!7364190 (= c!1368423 ((_ is Star!19247) (regTwo!39007 r1!2370)))))

(declare-fun b!7364191 () Bool)

(declare-fun e!4409022 () Bool)

(assert (=> b!7364191 (= e!4409023 e!4409022)))

(declare-fun res!2972474 () Bool)

(assert (=> b!7364191 (= res!2972474 (not (nullable!8327 (reg!19576 (regTwo!39007 r1!2370)))))))

(assert (=> b!7364191 (=> (not res!2972474) (not e!4409022))))

(declare-fun b!7364192 () Bool)

(declare-fun e!4409027 () Bool)

(assert (=> b!7364192 (= e!4409021 e!4409027)))

(declare-fun res!2972472 () Bool)

(assert (=> b!7364192 (=> (not res!2972472) (not e!4409027))))

(declare-fun call!675347 () Bool)

(assert (=> b!7364192 (= res!2972472 call!675347)))

(declare-fun b!7364193 () Bool)

(assert (=> b!7364193 (= e!4409024 call!675347)))

(declare-fun b!7364194 () Bool)

(assert (=> b!7364194 (= e!4409027 call!675348)))

(declare-fun d!2282550 () Bool)

(declare-fun res!2972475 () Bool)

(assert (=> d!2282550 (=> res!2972475 e!4409025)))

(assert (=> d!2282550 (= res!2972475 ((_ is ElementMatch!19247) (regTwo!39007 r1!2370)))))

(assert (=> d!2282550 (= (validRegex!9843 (regTwo!39007 r1!2370)) e!4409025)))

(declare-fun b!7364195 () Bool)

(assert (=> b!7364195 (= e!4409022 call!675349)))

(declare-fun bm!675344 () Bool)

(assert (=> bm!675344 (= call!675347 (validRegex!9843 (ite c!1368424 (regTwo!39007 (regTwo!39007 r1!2370)) (regOne!39006 (regTwo!39007 r1!2370)))))))

(assert (= (and d!2282550 (not res!2972475)) b!7364190))

(assert (= (and b!7364190 c!1368423) b!7364191))

(assert (= (and b!7364190 (not c!1368423)) b!7364187))

(assert (= (and b!7364191 res!2972474) b!7364195))

(assert (= (and b!7364187 c!1368424) b!7364188))

(assert (= (and b!7364187 (not c!1368424)) b!7364189))

(assert (= (and b!7364188 res!2972473) b!7364193))

(assert (= (and b!7364189 (not res!2972471)) b!7364192))

(assert (= (and b!7364192 res!2972472) b!7364194))

(assert (= (or b!7364188 b!7364194) bm!675343))

(assert (= (or b!7364193 b!7364192) bm!675344))

(assert (= (or b!7364195 bm!675343) bm!675342))

(declare-fun m!8020526 () Bool)

(assert (=> bm!675342 m!8020526))

(declare-fun m!8020528 () Bool)

(assert (=> b!7364191 m!8020528))

(declare-fun m!8020530 () Bool)

(assert (=> bm!675344 m!8020530))

(assert (=> b!7363954 d!2282550))

(declare-fun c!1368428 () Bool)

(declare-fun call!675352 () List!71743)

(declare-fun call!675353 () (InoxSet Context!16374))

(declare-fun bm!675345 () Bool)

(declare-fun c!1368426 () Bool)

(declare-fun c!1368429 () Bool)

(assert (=> bm!675345 (= call!675353 (derivationStepZipperDown!3073 (ite c!1368426 (regTwo!39007 r1!2370) (ite c!1368428 (regTwo!39006 r1!2370) (ite c!1368429 (regOne!39006 r1!2370) (reg!19576 r1!2370)))) (ite (or c!1368426 c!1368428) ct1!282 (Context!16375 call!675352)) c!10362))))

(declare-fun bm!675346 () Bool)

(declare-fun call!675354 () List!71743)

(assert (=> bm!675346 (= call!675352 call!675354)))

(declare-fun bm!675347 () Bool)

(assert (=> bm!675347 (= call!675354 ($colon$colon!3232 (exprs!8687 ct1!282) (ite (or c!1368428 c!1368429) (regTwo!39006 r1!2370) r1!2370)))))

(declare-fun b!7364200 () Bool)

(declare-fun e!4409032 () (InoxSet Context!16374))

(declare-fun call!675350 () (InoxSet Context!16374))

(assert (=> b!7364200 (= e!4409032 ((_ map or) call!675350 call!675353))))

(declare-fun bm!675348 () Bool)

(assert (=> bm!675348 (= call!675350 (derivationStepZipperDown!3073 (ite c!1368426 (regOne!39007 r1!2370) (regOne!39006 r1!2370)) (ite c!1368426 ct1!282 (Context!16375 call!675354)) c!10362))))

(declare-fun d!2282552 () Bool)

(declare-fun c!1368425 () Bool)

(assert (=> d!2282552 (= c!1368425 (and ((_ is ElementMatch!19247) r1!2370) (= (c!1368347 r1!2370) c!10362)))))

(declare-fun e!4409030 () (InoxSet Context!16374))

(assert (=> d!2282552 (= (derivationStepZipperDown!3073 r1!2370 ct1!282 c!10362) e!4409030)))

(declare-fun b!7364201 () Bool)

(declare-fun e!4409031 () (InoxSet Context!16374))

(declare-fun e!4409033 () (InoxSet Context!16374))

(assert (=> b!7364201 (= e!4409031 e!4409033)))

(assert (=> b!7364201 (= c!1368429 ((_ is Concat!28092) r1!2370))))

(declare-fun b!7364202 () Bool)

(declare-fun e!4409034 () Bool)

(assert (=> b!7364202 (= e!4409034 (nullable!8327 (regOne!39006 r1!2370)))))

(declare-fun b!7364203 () Bool)

(declare-fun e!4409029 () (InoxSet Context!16374))

(declare-fun call!675351 () (InoxSet Context!16374))

(assert (=> b!7364203 (= e!4409029 call!675351)))

(declare-fun bm!675349 () Bool)

(declare-fun call!675355 () (InoxSet Context!16374))

(assert (=> bm!675349 (= call!675351 call!675355)))

(declare-fun b!7364204 () Bool)

(assert (=> b!7364204 (= c!1368428 e!4409034)))

(declare-fun res!2972476 () Bool)

(assert (=> b!7364204 (=> (not res!2972476) (not e!4409034))))

(assert (=> b!7364204 (= res!2972476 ((_ is Concat!28092) r1!2370))))

(assert (=> b!7364204 (= e!4409032 e!4409031)))

(declare-fun b!7364205 () Bool)

(assert (=> b!7364205 (= e!4409030 (store ((as const (Array Context!16374 Bool)) false) ct1!282 true))))

(declare-fun b!7364206 () Bool)

(assert (=> b!7364206 (= e!4409033 call!675351)))

(declare-fun b!7364207 () Bool)

(declare-fun c!1368427 () Bool)

(assert (=> b!7364207 (= c!1368427 ((_ is Star!19247) r1!2370))))

(assert (=> b!7364207 (= e!4409033 e!4409029)))

(declare-fun b!7364208 () Bool)

(assert (=> b!7364208 (= e!4409031 ((_ map or) call!675350 call!675355))))

(declare-fun b!7364209 () Bool)

(assert (=> b!7364209 (= e!4409030 e!4409032)))

(assert (=> b!7364209 (= c!1368426 ((_ is Union!19247) r1!2370))))

(declare-fun b!7364210 () Bool)

(assert (=> b!7364210 (= e!4409029 ((as const (Array Context!16374 Bool)) false))))

(declare-fun bm!675350 () Bool)

(assert (=> bm!675350 (= call!675355 call!675353)))

(assert (= (and d!2282552 c!1368425) b!7364205))

(assert (= (and d!2282552 (not c!1368425)) b!7364209))

(assert (= (and b!7364209 c!1368426) b!7364200))

(assert (= (and b!7364209 (not c!1368426)) b!7364204))

(assert (= (and b!7364204 res!2972476) b!7364202))

(assert (= (and b!7364204 c!1368428) b!7364208))

(assert (= (and b!7364204 (not c!1368428)) b!7364201))

(assert (= (and b!7364201 c!1368429) b!7364206))

(assert (= (and b!7364201 (not c!1368429)) b!7364207))

(assert (= (and b!7364207 c!1368427) b!7364203))

(assert (= (and b!7364207 (not c!1368427)) b!7364210))

(assert (= (or b!7364206 b!7364203) bm!675346))

(assert (= (or b!7364206 b!7364203) bm!675349))

(assert (= (or b!7364208 bm!675349) bm!675350))

(assert (= (or b!7364208 bm!675346) bm!675347))

(assert (= (or b!7364200 bm!675350) bm!675345))

(assert (= (or b!7364200 b!7364208) bm!675348))

(assert (=> b!7364202 m!8020400))

(declare-fun m!8020532 () Bool)

(assert (=> bm!675348 m!8020532))

(assert (=> b!7364205 m!8020444))

(declare-fun m!8020534 () Bool)

(assert (=> bm!675345 m!8020534))

(declare-fun m!8020536 () Bool)

(assert (=> bm!675347 m!8020536))

(assert (=> b!7363959 d!2282552))

(declare-fun b!7364233 () Bool)

(declare-fun e!4409043 () Bool)

(declare-fun tp!2092815 () Bool)

(declare-fun tp!2092816 () Bool)

(assert (=> b!7364233 (= e!4409043 (and tp!2092815 tp!2092816))))

(assert (=> b!7363955 (= tp!2092762 e!4409043)))

(assert (= (and b!7363955 ((_ is Cons!71619) (exprs!8687 ct2!378))) b!7364233))

(declare-fun b!7364244 () Bool)

(declare-fun e!4409046 () Bool)

(assert (=> b!7364244 (= e!4409046 tp_is_empty!48739)))

(declare-fun b!7364246 () Bool)

(declare-fun tp!2092829 () Bool)

(assert (=> b!7364246 (= e!4409046 tp!2092829)))

(declare-fun b!7364245 () Bool)

(declare-fun tp!2092831 () Bool)

(declare-fun tp!2092827 () Bool)

(assert (=> b!7364245 (= e!4409046 (and tp!2092831 tp!2092827))))

(assert (=> b!7363952 (= tp!2092761 e!4409046)))

(declare-fun b!7364247 () Bool)

(declare-fun tp!2092828 () Bool)

(declare-fun tp!2092830 () Bool)

(assert (=> b!7364247 (= e!4409046 (and tp!2092828 tp!2092830))))

(assert (= (and b!7363952 ((_ is ElementMatch!19247) (regOne!39007 r1!2370))) b!7364244))

(assert (= (and b!7363952 ((_ is Concat!28092) (regOne!39007 r1!2370))) b!7364245))

(assert (= (and b!7363952 ((_ is Star!19247) (regOne!39007 r1!2370))) b!7364246))

(assert (= (and b!7363952 ((_ is Union!19247) (regOne!39007 r1!2370))) b!7364247))

(declare-fun b!7364248 () Bool)

(declare-fun e!4409047 () Bool)

(assert (=> b!7364248 (= e!4409047 tp_is_empty!48739)))

(declare-fun b!7364250 () Bool)

(declare-fun tp!2092834 () Bool)

(assert (=> b!7364250 (= e!4409047 tp!2092834)))

(declare-fun b!7364249 () Bool)

(declare-fun tp!2092836 () Bool)

(declare-fun tp!2092832 () Bool)

(assert (=> b!7364249 (= e!4409047 (and tp!2092836 tp!2092832))))

(assert (=> b!7363952 (= tp!2092758 e!4409047)))

(declare-fun b!7364251 () Bool)

(declare-fun tp!2092833 () Bool)

(declare-fun tp!2092835 () Bool)

(assert (=> b!7364251 (= e!4409047 (and tp!2092833 tp!2092835))))

(assert (= (and b!7363952 ((_ is ElementMatch!19247) (regTwo!39007 r1!2370))) b!7364248))

(assert (= (and b!7363952 ((_ is Concat!28092) (regTwo!39007 r1!2370))) b!7364249))

(assert (= (and b!7363952 ((_ is Star!19247) (regTwo!39007 r1!2370))) b!7364250))

(assert (= (and b!7363952 ((_ is Union!19247) (regTwo!39007 r1!2370))) b!7364251))

(declare-fun b!7364252 () Bool)

(declare-fun e!4409048 () Bool)

(assert (=> b!7364252 (= e!4409048 tp_is_empty!48739)))

(declare-fun b!7364254 () Bool)

(declare-fun tp!2092839 () Bool)

(assert (=> b!7364254 (= e!4409048 tp!2092839)))

(declare-fun b!7364253 () Bool)

(declare-fun tp!2092841 () Bool)

(declare-fun tp!2092837 () Bool)

(assert (=> b!7364253 (= e!4409048 (and tp!2092841 tp!2092837))))

(assert (=> b!7363957 (= tp!2092764 e!4409048)))

(declare-fun b!7364255 () Bool)

(declare-fun tp!2092838 () Bool)

(declare-fun tp!2092840 () Bool)

(assert (=> b!7364255 (= e!4409048 (and tp!2092838 tp!2092840))))

(assert (= (and b!7363957 ((_ is ElementMatch!19247) (regOne!39006 r1!2370))) b!7364252))

(assert (= (and b!7363957 ((_ is Concat!28092) (regOne!39006 r1!2370))) b!7364253))

(assert (= (and b!7363957 ((_ is Star!19247) (regOne!39006 r1!2370))) b!7364254))

(assert (= (and b!7363957 ((_ is Union!19247) (regOne!39006 r1!2370))) b!7364255))

(declare-fun b!7364256 () Bool)

(declare-fun e!4409049 () Bool)

(assert (=> b!7364256 (= e!4409049 tp_is_empty!48739)))

(declare-fun b!7364258 () Bool)

(declare-fun tp!2092844 () Bool)

(assert (=> b!7364258 (= e!4409049 tp!2092844)))

(declare-fun b!7364257 () Bool)

(declare-fun tp!2092846 () Bool)

(declare-fun tp!2092842 () Bool)

(assert (=> b!7364257 (= e!4409049 (and tp!2092846 tp!2092842))))

(assert (=> b!7363957 (= tp!2092760 e!4409049)))

(declare-fun b!7364259 () Bool)

(declare-fun tp!2092843 () Bool)

(declare-fun tp!2092845 () Bool)

(assert (=> b!7364259 (= e!4409049 (and tp!2092843 tp!2092845))))

(assert (= (and b!7363957 ((_ is ElementMatch!19247) (regTwo!39006 r1!2370))) b!7364256))

(assert (= (and b!7363957 ((_ is Concat!28092) (regTwo!39006 r1!2370))) b!7364257))

(assert (= (and b!7363957 ((_ is Star!19247) (regTwo!39006 r1!2370))) b!7364258))

(assert (= (and b!7363957 ((_ is Union!19247) (regTwo!39006 r1!2370))) b!7364259))

(declare-fun b!7364260 () Bool)

(declare-fun e!4409050 () Bool)

(assert (=> b!7364260 (= e!4409050 tp_is_empty!48739)))

(declare-fun b!7364262 () Bool)

(declare-fun tp!2092849 () Bool)

(assert (=> b!7364262 (= e!4409050 tp!2092849)))

(declare-fun b!7364261 () Bool)

(declare-fun tp!2092851 () Bool)

(declare-fun tp!2092847 () Bool)

(assert (=> b!7364261 (= e!4409050 (and tp!2092851 tp!2092847))))

(assert (=> b!7363962 (= tp!2092765 e!4409050)))

(declare-fun b!7364263 () Bool)

(declare-fun tp!2092848 () Bool)

(declare-fun tp!2092850 () Bool)

(assert (=> b!7364263 (= e!4409050 (and tp!2092848 tp!2092850))))

(assert (= (and b!7363962 ((_ is ElementMatch!19247) (reg!19576 r1!2370))) b!7364260))

(assert (= (and b!7363962 ((_ is Concat!28092) (reg!19576 r1!2370))) b!7364261))

(assert (= (and b!7363962 ((_ is Star!19247) (reg!19576 r1!2370))) b!7364262))

(assert (= (and b!7363962 ((_ is Union!19247) (reg!19576 r1!2370))) b!7364263))

(declare-fun b!7364264 () Bool)

(declare-fun e!4409051 () Bool)

(declare-fun tp!2092852 () Bool)

(declare-fun tp!2092853 () Bool)

(assert (=> b!7364264 (= e!4409051 (and tp!2092852 tp!2092853))))

(assert (=> b!7363963 (= tp!2092759 e!4409051)))

(assert (= (and b!7363963 ((_ is Cons!71619) (exprs!8687 ct1!282))) b!7364264))

(declare-fun b!7364265 () Bool)

(declare-fun e!4409052 () Bool)

(declare-fun tp!2092854 () Bool)

(declare-fun tp!2092855 () Bool)

(assert (=> b!7364265 (= e!4409052 (and tp!2092854 tp!2092855))))

(assert (=> b!7363960 (= tp!2092763 e!4409052)))

(assert (= (and b!7363960 ((_ is Cons!71619) (exprs!8687 cWitness!61))) b!7364265))

(check-sat (not b!7364247) (not bm!675327) (not bm!675345) (not b!7364145) (not bm!675286) (not bm!675342) (not b!7364255) (not bm!675288) (not b!7364037) (not b!7364253) (not bm!675329) (not bm!675348) (not b!7364254) (not b!7364250) (not bm!675303) (not b!7364202) (not b!7364191) (not d!2282542) (not d!2282548) (not b!7364079) (not b!7364066) (not bm!675309) (not bm!675289) (not b!7364258) (not b!7364265) (not bm!675300) (not b!7364249) (not b!7364246) (not d!2282546) (not d!2282520) (not bm!675308) (not b!7364233) (not bm!675347) (not b!7364094) (not b!7364261) (not d!2282516) (not b!7364262) (not b!7364245) (not bm!675306) (not b!7364257) (not b!7364067) (not b!7364264) (not bm!675344) (not b!7364263) (not bm!675302) (not b!7364259) (not b!7364251) tp_is_empty!48739)
(check-sat)
