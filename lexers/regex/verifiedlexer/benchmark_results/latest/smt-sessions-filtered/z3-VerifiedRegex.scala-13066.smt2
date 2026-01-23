; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!715566 () Bool)

(assert start!715566)

(declare-fun e!4388559 () Bool)

(declare-datatypes ((C!38316 0))(
  ( (C!38317 (val!29518 Int)) )
))
(declare-fun c!10305 () C!38316)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19021 0))(
  ( (ElementMatch!19021 (c!1360664 C!38316)) (Concat!27866 (regOne!38554 Regex!19021) (regTwo!38554 Regex!19021)) (EmptyExpr!19021) (Star!19021 (reg!19350 Regex!19021)) (EmptyLang!19021) (Union!19021 (regOne!38555 Regex!19021) (regTwo!38555 Regex!19021)) )
))
(declare-datatypes ((List!71517 0))(
  ( (Nil!71393) (Cons!71393 (h!77841 Regex!19021) (t!385904 List!71517)) )
))
(declare-datatypes ((Context!15922 0))(
  ( (Context!15923 (exprs!8461 List!71517)) )
))
(declare-fun lt!2607199 () (InoxSet Context!15922))

(declare-fun b!7329095 () Bool)

(declare-fun lt!2607202 () (InoxSet Context!15922))

(declare-fun lt!2607201 () Context!15922)

(declare-fun derivationStepZipperUp!2701 (Context!15922 C!38316) (InoxSet Context!15922))

(assert (=> b!7329095 (= e!4388559 (not (= lt!2607202 ((_ map or) lt!2607199 (derivationStepZipperUp!2701 lt!2607201 c!10305)))))))

(declare-fun b!7329096 () Bool)

(declare-fun e!4388555 () Bool)

(declare-fun e!4388554 () Bool)

(assert (=> b!7329096 (= e!4388555 e!4388554)))

(declare-fun res!2962162 () Bool)

(assert (=> b!7329096 (=> (not res!2962162) (not e!4388554))))

(declare-fun ct1!256 () Context!15922)

(get-info :version)

(assert (=> b!7329096 (= res!2962162 ((_ is Cons!71393) (exprs!8461 ct1!256)))))

(declare-fun lt!2607200 () List!71517)

(declare-fun ct2!352 () Context!15922)

(declare-fun ++!16845 (List!71517 List!71517) List!71517)

(assert (=> b!7329096 (= lt!2607200 (++!16845 (exprs!8461 ct1!256) (exprs!8461 ct2!352)))))

(declare-fun lambda!454460 () Int)

(declare-datatypes ((Unit!165007 0))(
  ( (Unit!165008) )
))
(declare-fun lt!2607198 () Unit!165007)

(declare-fun lemmaConcatPreservesForall!1702 (List!71517 List!71517 Int) Unit!165007)

(assert (=> b!7329096 (= lt!2607198 (lemmaConcatPreservesForall!1702 (exprs!8461 ct1!256) (exprs!8461 ct2!352) lambda!454460))))

(declare-fun b!7329097 () Bool)

(declare-fun e!4388556 () Bool)

(declare-fun tp!2081010 () Bool)

(assert (=> b!7329097 (= e!4388556 tp!2081010)))

(declare-fun b!7329098 () Bool)

(declare-fun e!4388558 () Bool)

(declare-fun tp!2081009 () Bool)

(assert (=> b!7329098 (= e!4388558 tp!2081009)))

(declare-fun b!7329099 () Bool)

(assert (=> b!7329099 (= e!4388554 e!4388559)))

(declare-fun res!2962159 () Bool)

(assert (=> b!7329099 (=> (not res!2962159) (not e!4388559))))

(declare-fun nullable!8123 (Regex!19021) Bool)

(assert (=> b!7329099 (= res!2962159 (nullable!8123 (h!77841 (exprs!8461 ct1!256))))))

(declare-fun derivationStepZipperDown!2850 (Regex!19021 Context!15922 C!38316) (InoxSet Context!15922))

(assert (=> b!7329099 (= lt!2607199 (derivationStepZipperDown!2850 (h!77841 (exprs!8461 ct1!256)) lt!2607201 c!10305))))

(declare-fun tail!14708 (List!71517) List!71517)

(assert (=> b!7329099 (= lt!2607201 (Context!15923 (tail!14708 (exprs!8461 ct1!256))))))

(declare-fun b!7329100 () Bool)

(declare-fun e!4388557 () Bool)

(declare-fun tp!2081011 () Bool)

(assert (=> b!7329100 (= e!4388557 tp!2081011)))

(declare-fun res!2962161 () Bool)

(assert (=> start!715566 (=> (not res!2962161) (not e!4388555))))

(declare-fun cWitness!35 () Context!15922)

(assert (=> start!715566 (= res!2962161 (select lt!2607202 cWitness!35))))

(assert (=> start!715566 (= lt!2607202 (derivationStepZipperUp!2701 ct1!256 c!10305))))

(assert (=> start!715566 e!4388555))

(declare-fun tp_is_empty!48287 () Bool)

(assert (=> start!715566 tp_is_empty!48287))

(declare-fun inv!90892 (Context!15922) Bool)

(assert (=> start!715566 (and (inv!90892 cWitness!35) e!4388558)))

(assert (=> start!715566 (and (inv!90892 ct1!256) e!4388556)))

(assert (=> start!715566 (and (inv!90892 ct2!352) e!4388557)))

(declare-fun b!7329101 () Bool)

(declare-fun res!2962160 () Bool)

(assert (=> b!7329101 (=> (not res!2962160) (not e!4388554))))

(declare-fun isEmpty!40937 (List!71517) Bool)

(assert (=> b!7329101 (= res!2962160 (not (isEmpty!40937 (exprs!8461 ct1!256))))))

(assert (= (and start!715566 res!2962161) b!7329096))

(assert (= (and b!7329096 res!2962162) b!7329101))

(assert (= (and b!7329101 res!2962160) b!7329099))

(assert (= (and b!7329099 res!2962159) b!7329095))

(assert (= start!715566 b!7329098))

(assert (= start!715566 b!7329097))

(assert (= start!715566 b!7329100))

(declare-fun m!7995180 () Bool)

(assert (=> b!7329096 m!7995180))

(declare-fun m!7995182 () Bool)

(assert (=> b!7329096 m!7995182))

(declare-fun m!7995184 () Bool)

(assert (=> b!7329095 m!7995184))

(declare-fun m!7995186 () Bool)

(assert (=> b!7329099 m!7995186))

(declare-fun m!7995188 () Bool)

(assert (=> b!7329099 m!7995188))

(declare-fun m!7995190 () Bool)

(assert (=> b!7329099 m!7995190))

(declare-fun m!7995192 () Bool)

(assert (=> start!715566 m!7995192))

(declare-fun m!7995194 () Bool)

(assert (=> start!715566 m!7995194))

(declare-fun m!7995196 () Bool)

(assert (=> start!715566 m!7995196))

(declare-fun m!7995198 () Bool)

(assert (=> start!715566 m!7995198))

(declare-fun m!7995200 () Bool)

(assert (=> start!715566 m!7995200))

(declare-fun m!7995202 () Bool)

(assert (=> b!7329101 m!7995202))

(check-sat (not b!7329098) (not b!7329097) (not b!7329099) (not b!7329096) (not b!7329100) tp_is_empty!48287 (not b!7329095) (not b!7329101) (not start!715566))
(check-sat)
(get-model)

(declare-fun d!2276001 () Bool)

(declare-fun nullableFct!3230 (Regex!19021) Bool)

(assert (=> d!2276001 (= (nullable!8123 (h!77841 (exprs!8461 ct1!256))) (nullableFct!3230 (h!77841 (exprs!8461 ct1!256))))))

(declare-fun bs!1917090 () Bool)

(assert (= bs!1917090 d!2276001))

(declare-fun m!7995204 () Bool)

(assert (=> bs!1917090 m!7995204))

(assert (=> b!7329099 d!2276001))

(declare-fun b!7329147 () Bool)

(declare-fun e!4388589 () (InoxSet Context!15922))

(declare-fun e!4388587 () (InoxSet Context!15922))

(assert (=> b!7329147 (= e!4388589 e!4388587)))

(declare-fun c!1360687 () Bool)

(assert (=> b!7329147 (= c!1360687 ((_ is Concat!27866) (h!77841 (exprs!8461 ct1!256))))))

(declare-fun b!7329148 () Bool)

(declare-fun c!1360683 () Bool)

(assert (=> b!7329148 (= c!1360683 ((_ is Star!19021) (h!77841 (exprs!8461 ct1!256))))))

(declare-fun e!4388585 () (InoxSet Context!15922))

(assert (=> b!7329148 (= e!4388587 e!4388585)))

(declare-fun b!7329149 () Bool)

(declare-fun e!4388590 () (InoxSet Context!15922))

(declare-fun e!4388588 () (InoxSet Context!15922))

(assert (=> b!7329149 (= e!4388590 e!4388588)))

(declare-fun c!1360684 () Bool)

(assert (=> b!7329149 (= c!1360684 ((_ is Union!19021) (h!77841 (exprs!8461 ct1!256))))))

(declare-fun d!2276003 () Bool)

(declare-fun c!1360686 () Bool)

(assert (=> d!2276003 (= c!1360686 (and ((_ is ElementMatch!19021) (h!77841 (exprs!8461 ct1!256))) (= (c!1360664 (h!77841 (exprs!8461 ct1!256))) c!10305)))))

(assert (=> d!2276003 (= (derivationStepZipperDown!2850 (h!77841 (exprs!8461 ct1!256)) lt!2607201 c!10305) e!4388590)))

(declare-fun bm!667434 () Bool)

(declare-fun call!667444 () List!71517)

(declare-fun call!667443 () List!71517)

(assert (=> bm!667434 (= call!667444 call!667443)))

(declare-fun b!7329150 () Bool)

(assert (=> b!7329150 (= e!4388590 (store ((as const (Array Context!15922 Bool)) false) lt!2607201 true))))

(declare-fun b!7329151 () Bool)

(assert (=> b!7329151 (= e!4388585 ((as const (Array Context!15922 Bool)) false))))

(declare-fun bm!667435 () Bool)

(declare-fun c!1360685 () Bool)

(declare-fun $colon$colon!3047 (List!71517 Regex!19021) List!71517)

(assert (=> bm!667435 (= call!667443 ($colon$colon!3047 (exprs!8461 lt!2607201) (ite (or c!1360685 c!1360687) (regTwo!38554 (h!77841 (exprs!8461 ct1!256))) (h!77841 (exprs!8461 ct1!256)))))))

(declare-fun b!7329152 () Bool)

(declare-fun call!667441 () (InoxSet Context!15922))

(declare-fun call!667440 () (InoxSet Context!15922))

(assert (=> b!7329152 (= e!4388589 ((_ map or) call!667441 call!667440))))

(declare-fun b!7329153 () Bool)

(declare-fun e!4388586 () Bool)

(assert (=> b!7329153 (= c!1360685 e!4388586)))

(declare-fun res!2962172 () Bool)

(assert (=> b!7329153 (=> (not res!2962172) (not e!4388586))))

(assert (=> b!7329153 (= res!2962172 ((_ is Concat!27866) (h!77841 (exprs!8461 ct1!256))))))

(assert (=> b!7329153 (= e!4388588 e!4388589)))

(declare-fun bm!667436 () Bool)

(declare-fun call!667439 () (InoxSet Context!15922))

(assert (=> bm!667436 (= call!667439 call!667440)))

(declare-fun bm!667437 () Bool)

(assert (=> bm!667437 (= call!667441 (derivationStepZipperDown!2850 (ite c!1360684 (regOne!38555 (h!77841 (exprs!8461 ct1!256))) (regOne!38554 (h!77841 (exprs!8461 ct1!256)))) (ite c!1360684 lt!2607201 (Context!15923 call!667443)) c!10305))))

(declare-fun b!7329154 () Bool)

(assert (=> b!7329154 (= e!4388586 (nullable!8123 (regOne!38554 (h!77841 (exprs!8461 ct1!256)))))))

(declare-fun bm!667438 () Bool)

(declare-fun call!667442 () (InoxSet Context!15922))

(assert (=> bm!667438 (= call!667440 call!667442)))

(declare-fun b!7329155 () Bool)

(assert (=> b!7329155 (= e!4388588 ((_ map or) call!667441 call!667442))))

(declare-fun b!7329156 () Bool)

(assert (=> b!7329156 (= e!4388587 call!667439)))

(declare-fun bm!667439 () Bool)

(assert (=> bm!667439 (= call!667442 (derivationStepZipperDown!2850 (ite c!1360684 (regTwo!38555 (h!77841 (exprs!8461 ct1!256))) (ite c!1360685 (regTwo!38554 (h!77841 (exprs!8461 ct1!256))) (ite c!1360687 (regOne!38554 (h!77841 (exprs!8461 ct1!256))) (reg!19350 (h!77841 (exprs!8461 ct1!256)))))) (ite (or c!1360684 c!1360685) lt!2607201 (Context!15923 call!667444)) c!10305))))

(declare-fun b!7329157 () Bool)

(assert (=> b!7329157 (= e!4388585 call!667439)))

(assert (= (and d!2276003 c!1360686) b!7329150))

(assert (= (and d!2276003 (not c!1360686)) b!7329149))

(assert (= (and b!7329149 c!1360684) b!7329155))

(assert (= (and b!7329149 (not c!1360684)) b!7329153))

(assert (= (and b!7329153 res!2962172) b!7329154))

(assert (= (and b!7329153 c!1360685) b!7329152))

(assert (= (and b!7329153 (not c!1360685)) b!7329147))

(assert (= (and b!7329147 c!1360687) b!7329156))

(assert (= (and b!7329147 (not c!1360687)) b!7329148))

(assert (= (and b!7329148 c!1360683) b!7329157))

(assert (= (and b!7329148 (not c!1360683)) b!7329151))

(assert (= (or b!7329156 b!7329157) bm!667434))

(assert (= (or b!7329156 b!7329157) bm!667436))

(assert (= (or b!7329152 bm!667436) bm!667438))

(assert (= (or b!7329152 bm!667434) bm!667435))

(assert (= (or b!7329155 bm!667438) bm!667439))

(assert (= (or b!7329155 b!7329152) bm!667437))

(declare-fun m!7995216 () Bool)

(assert (=> bm!667437 m!7995216))

(declare-fun m!7995218 () Bool)

(assert (=> b!7329150 m!7995218))

(declare-fun m!7995220 () Bool)

(assert (=> b!7329154 m!7995220))

(declare-fun m!7995222 () Bool)

(assert (=> bm!667439 m!7995222))

(declare-fun m!7995224 () Bool)

(assert (=> bm!667435 m!7995224))

(assert (=> b!7329099 d!2276003))

(declare-fun d!2276015 () Bool)

(assert (=> d!2276015 (= (tail!14708 (exprs!8461 ct1!256)) (t!385904 (exprs!8461 ct1!256)))))

(assert (=> b!7329099 d!2276015))

(declare-fun b!7329177 () Bool)

(declare-fun e!4388603 () Bool)

(assert (=> b!7329177 (= e!4388603 (nullable!8123 (h!77841 (exprs!8461 ct1!256))))))

(declare-fun bm!667443 () Bool)

(declare-fun call!667448 () (InoxSet Context!15922))

(assert (=> bm!667443 (= call!667448 (derivationStepZipperDown!2850 (h!77841 (exprs!8461 ct1!256)) (Context!15923 (t!385904 (exprs!8461 ct1!256))) c!10305))))

(declare-fun b!7329179 () Bool)

(declare-fun e!4388602 () (InoxSet Context!15922))

(declare-fun e!4388604 () (InoxSet Context!15922))

(assert (=> b!7329179 (= e!4388602 e!4388604)))

(declare-fun c!1360695 () Bool)

(assert (=> b!7329179 (= c!1360695 ((_ is Cons!71393) (exprs!8461 ct1!256)))))

(declare-fun b!7329180 () Bool)

(assert (=> b!7329180 (= e!4388602 ((_ map or) call!667448 (derivationStepZipperUp!2701 (Context!15923 (t!385904 (exprs!8461 ct1!256))) c!10305)))))

(declare-fun b!7329181 () Bool)

(assert (=> b!7329181 (= e!4388604 ((as const (Array Context!15922 Bool)) false))))

(declare-fun d!2276017 () Bool)

(declare-fun c!1360696 () Bool)

(assert (=> d!2276017 (= c!1360696 e!4388603)))

(declare-fun res!2962178 () Bool)

(assert (=> d!2276017 (=> (not res!2962178) (not e!4388603))))

(assert (=> d!2276017 (= res!2962178 ((_ is Cons!71393) (exprs!8461 ct1!256)))))

(assert (=> d!2276017 (= (derivationStepZipperUp!2701 ct1!256 c!10305) e!4388602)))

(declare-fun b!7329178 () Bool)

(assert (=> b!7329178 (= e!4388604 call!667448)))

(assert (= (and d!2276017 res!2962178) b!7329177))

(assert (= (and d!2276017 c!1360696) b!7329180))

(assert (= (and d!2276017 (not c!1360696)) b!7329179))

(assert (= (and b!7329179 c!1360695) b!7329178))

(assert (= (and b!7329179 (not c!1360695)) b!7329181))

(assert (= (or b!7329180 b!7329178) bm!667443))

(assert (=> b!7329177 m!7995186))

(declare-fun m!7995254 () Bool)

(assert (=> bm!667443 m!7995254))

(declare-fun m!7995256 () Bool)

(assert (=> b!7329180 m!7995256))

(assert (=> start!715566 d!2276017))

(declare-fun bs!1917102 () Bool)

(declare-fun d!2276029 () Bool)

(assert (= bs!1917102 (and d!2276029 b!7329096)))

(declare-fun lambda!454468 () Int)

(assert (=> bs!1917102 (= lambda!454468 lambda!454460)))

(declare-fun forall!17868 (List!71517 Int) Bool)

(assert (=> d!2276029 (= (inv!90892 cWitness!35) (forall!17868 (exprs!8461 cWitness!35) lambda!454468))))

(declare-fun bs!1917103 () Bool)

(assert (= bs!1917103 d!2276029))

(declare-fun m!7995258 () Bool)

(assert (=> bs!1917103 m!7995258))

(assert (=> start!715566 d!2276029))

(declare-fun bs!1917104 () Bool)

(declare-fun d!2276031 () Bool)

(assert (= bs!1917104 (and d!2276031 b!7329096)))

(declare-fun lambda!454469 () Int)

(assert (=> bs!1917104 (= lambda!454469 lambda!454460)))

(declare-fun bs!1917105 () Bool)

(assert (= bs!1917105 (and d!2276031 d!2276029)))

(assert (=> bs!1917105 (= lambda!454469 lambda!454468)))

(assert (=> d!2276031 (= (inv!90892 ct1!256) (forall!17868 (exprs!8461 ct1!256) lambda!454469))))

(declare-fun bs!1917106 () Bool)

(assert (= bs!1917106 d!2276031))

(declare-fun m!7995260 () Bool)

(assert (=> bs!1917106 m!7995260))

(assert (=> start!715566 d!2276031))

(declare-fun bs!1917107 () Bool)

(declare-fun d!2276033 () Bool)

(assert (= bs!1917107 (and d!2276033 b!7329096)))

(declare-fun lambda!454470 () Int)

(assert (=> bs!1917107 (= lambda!454470 lambda!454460)))

(declare-fun bs!1917108 () Bool)

(assert (= bs!1917108 (and d!2276033 d!2276029)))

(assert (=> bs!1917108 (= lambda!454470 lambda!454468)))

(declare-fun bs!1917109 () Bool)

(assert (= bs!1917109 (and d!2276033 d!2276031)))

(assert (=> bs!1917109 (= lambda!454470 lambda!454469)))

(assert (=> d!2276033 (= (inv!90892 ct2!352) (forall!17868 (exprs!8461 ct2!352) lambda!454470))))

(declare-fun bs!1917110 () Bool)

(assert (= bs!1917110 d!2276033))

(declare-fun m!7995262 () Bool)

(assert (=> bs!1917110 m!7995262))

(assert (=> start!715566 d!2276033))

(declare-fun d!2276035 () Bool)

(declare-fun e!4388622 () Bool)

(assert (=> d!2276035 e!4388622))

(declare-fun res!2962186 () Bool)

(assert (=> d!2276035 (=> (not res!2962186) (not e!4388622))))

(declare-fun lt!2607211 () List!71517)

(declare-fun content!14960 (List!71517) (InoxSet Regex!19021))

(assert (=> d!2276035 (= res!2962186 (= (content!14960 lt!2607211) ((_ map or) (content!14960 (exprs!8461 ct1!256)) (content!14960 (exprs!8461 ct2!352)))))))

(declare-fun e!4388621 () List!71517)

(assert (=> d!2276035 (= lt!2607211 e!4388621)))

(declare-fun c!1360709 () Bool)

(assert (=> d!2276035 (= c!1360709 ((_ is Nil!71393) (exprs!8461 ct1!256)))))

(assert (=> d!2276035 (= (++!16845 (exprs!8461 ct1!256) (exprs!8461 ct2!352)) lt!2607211)))

(declare-fun b!7329215 () Bool)

(assert (=> b!7329215 (= e!4388622 (or (not (= (exprs!8461 ct2!352) Nil!71393)) (= lt!2607211 (exprs!8461 ct1!256))))))

(declare-fun b!7329212 () Bool)

(assert (=> b!7329212 (= e!4388621 (exprs!8461 ct2!352))))

(declare-fun b!7329213 () Bool)

(assert (=> b!7329213 (= e!4388621 (Cons!71393 (h!77841 (exprs!8461 ct1!256)) (++!16845 (t!385904 (exprs!8461 ct1!256)) (exprs!8461 ct2!352))))))

(declare-fun b!7329214 () Bool)

(declare-fun res!2962185 () Bool)

(assert (=> b!7329214 (=> (not res!2962185) (not e!4388622))))

(declare-fun size!41937 (List!71517) Int)

(assert (=> b!7329214 (= res!2962185 (= (size!41937 lt!2607211) (+ (size!41937 (exprs!8461 ct1!256)) (size!41937 (exprs!8461 ct2!352)))))))

(assert (= (and d!2276035 c!1360709) b!7329212))

(assert (= (and d!2276035 (not c!1360709)) b!7329213))

(assert (= (and d!2276035 res!2962186) b!7329214))

(assert (= (and b!7329214 res!2962185) b!7329215))

(declare-fun m!7995264 () Bool)

(assert (=> d!2276035 m!7995264))

(declare-fun m!7995266 () Bool)

(assert (=> d!2276035 m!7995266))

(declare-fun m!7995268 () Bool)

(assert (=> d!2276035 m!7995268))

(declare-fun m!7995270 () Bool)

(assert (=> b!7329213 m!7995270))

(declare-fun m!7995272 () Bool)

(assert (=> b!7329214 m!7995272))

(declare-fun m!7995274 () Bool)

(assert (=> b!7329214 m!7995274))

(declare-fun m!7995276 () Bool)

(assert (=> b!7329214 m!7995276))

(assert (=> b!7329096 d!2276035))

(declare-fun d!2276037 () Bool)

(assert (=> d!2276037 (forall!17868 (++!16845 (exprs!8461 ct1!256) (exprs!8461 ct2!352)) lambda!454460)))

(declare-fun lt!2607214 () Unit!165007)

(declare-fun choose!57006 (List!71517 List!71517 Int) Unit!165007)

(assert (=> d!2276037 (= lt!2607214 (choose!57006 (exprs!8461 ct1!256) (exprs!8461 ct2!352) lambda!454460))))

(assert (=> d!2276037 (forall!17868 (exprs!8461 ct1!256) lambda!454460)))

(assert (=> d!2276037 (= (lemmaConcatPreservesForall!1702 (exprs!8461 ct1!256) (exprs!8461 ct2!352) lambda!454460) lt!2607214)))

(declare-fun bs!1917111 () Bool)

(assert (= bs!1917111 d!2276037))

(assert (=> bs!1917111 m!7995180))

(assert (=> bs!1917111 m!7995180))

(declare-fun m!7995278 () Bool)

(assert (=> bs!1917111 m!7995278))

(declare-fun m!7995280 () Bool)

(assert (=> bs!1917111 m!7995280))

(declare-fun m!7995282 () Bool)

(assert (=> bs!1917111 m!7995282))

(assert (=> b!7329096 d!2276037))

(declare-fun d!2276039 () Bool)

(assert (=> d!2276039 (= (isEmpty!40937 (exprs!8461 ct1!256)) ((_ is Nil!71393) (exprs!8461 ct1!256)))))

(assert (=> b!7329101 d!2276039))

(declare-fun b!7329227 () Bool)

(declare-fun e!4388630 () Bool)

(assert (=> b!7329227 (= e!4388630 (nullable!8123 (h!77841 (exprs!8461 lt!2607201))))))

(declare-fun bm!667462 () Bool)

(declare-fun call!667467 () (InoxSet Context!15922))

(assert (=> bm!667462 (= call!667467 (derivationStepZipperDown!2850 (h!77841 (exprs!8461 lt!2607201)) (Context!15923 (t!385904 (exprs!8461 lt!2607201))) c!10305))))

(declare-fun b!7329229 () Bool)

(declare-fun e!4388629 () (InoxSet Context!15922))

(declare-fun e!4388631 () (InoxSet Context!15922))

(assert (=> b!7329229 (= e!4388629 e!4388631)))

(declare-fun c!1360715 () Bool)

(assert (=> b!7329229 (= c!1360715 ((_ is Cons!71393) (exprs!8461 lt!2607201)))))

(declare-fun b!7329230 () Bool)

(assert (=> b!7329230 (= e!4388629 ((_ map or) call!667467 (derivationStepZipperUp!2701 (Context!15923 (t!385904 (exprs!8461 lt!2607201))) c!10305)))))

(declare-fun b!7329231 () Bool)

(assert (=> b!7329231 (= e!4388631 ((as const (Array Context!15922 Bool)) false))))

(declare-fun d!2276041 () Bool)

(declare-fun c!1360716 () Bool)

(assert (=> d!2276041 (= c!1360716 e!4388630)))

(declare-fun res!2962188 () Bool)

(assert (=> d!2276041 (=> (not res!2962188) (not e!4388630))))

(assert (=> d!2276041 (= res!2962188 ((_ is Cons!71393) (exprs!8461 lt!2607201)))))

(assert (=> d!2276041 (= (derivationStepZipperUp!2701 lt!2607201 c!10305) e!4388629)))

(declare-fun b!7329228 () Bool)

(assert (=> b!7329228 (= e!4388631 call!667467)))

(assert (= (and d!2276041 res!2962188) b!7329227))

(assert (= (and d!2276041 c!1360716) b!7329230))

(assert (= (and d!2276041 (not c!1360716)) b!7329229))

(assert (= (and b!7329229 c!1360715) b!7329228))

(assert (= (and b!7329229 (not c!1360715)) b!7329231))

(assert (= (or b!7329230 b!7329228) bm!667462))

(declare-fun m!7995294 () Bool)

(assert (=> b!7329227 m!7995294))

(declare-fun m!7995296 () Bool)

(assert (=> bm!667462 m!7995296))

(declare-fun m!7995298 () Bool)

(assert (=> b!7329230 m!7995298))

(assert (=> b!7329095 d!2276041))

(declare-fun b!7329240 () Bool)

(declare-fun e!4388636 () Bool)

(declare-fun tp!2081020 () Bool)

(declare-fun tp!2081021 () Bool)

(assert (=> b!7329240 (= e!4388636 (and tp!2081020 tp!2081021))))

(assert (=> b!7329098 (= tp!2081009 e!4388636)))

(assert (= (and b!7329098 ((_ is Cons!71393) (exprs!8461 cWitness!35))) b!7329240))

(declare-fun b!7329241 () Bool)

(declare-fun e!4388637 () Bool)

(declare-fun tp!2081022 () Bool)

(declare-fun tp!2081023 () Bool)

(assert (=> b!7329241 (= e!4388637 (and tp!2081022 tp!2081023))))

(assert (=> b!7329097 (= tp!2081010 e!4388637)))

(assert (= (and b!7329097 ((_ is Cons!71393) (exprs!8461 ct1!256))) b!7329241))

(declare-fun b!7329242 () Bool)

(declare-fun e!4388638 () Bool)

(declare-fun tp!2081024 () Bool)

(declare-fun tp!2081025 () Bool)

(assert (=> b!7329242 (= e!4388638 (and tp!2081024 tp!2081025))))

(assert (=> b!7329100 (= tp!2081011 e!4388638)))

(assert (= (and b!7329100 ((_ is Cons!71393) (exprs!8461 ct2!352))) b!7329242))

(check-sat (not d!2276029) (not b!7329213) (not bm!667443) (not d!2276037) (not b!7329242) (not d!2276035) (not b!7329227) (not bm!667462) (not bm!667439) tp_is_empty!48287 (not b!7329214) (not b!7329230) (not d!2276001) (not bm!667437) (not b!7329240) (not bm!667435) (not d!2276033) (not b!7329154) (not b!7329177) (not d!2276031) (not b!7329180) (not b!7329241))
(check-sat)
