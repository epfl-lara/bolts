; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740054 () Bool)

(assert start!740054)

(declare-fun b!7771255 () Bool)

(declare-fun e!4604490 () Bool)

(declare-fun e!4604492 () Bool)

(assert (=> b!7771255 (= e!4604490 (not e!4604492))))

(declare-fun res!3097790 () Bool)

(assert (=> b!7771255 (=> res!3097790 e!4604492)))

(declare-datatypes ((C!41844 0))(
  ( (C!41845 (val!31362 Int)) )
))
(declare-datatypes ((Regex!20759 0))(
  ( (ElementMatch!20759 (c!1432318 C!41844)) (Concat!29604 (regOne!42030 Regex!20759) (regTwo!42030 Regex!20759)) (EmptyExpr!20759) (Star!20759 (reg!21088 Regex!20759)) (EmptyLang!20759) (Union!20759 (regOne!42031 Regex!20759) (regTwo!42031 Regex!20759)) )
))
(declare-fun r!25924 () Regex!20759)

(declare-fun validRegex!11173 (Regex!20759) Bool)

(assert (=> b!7771255 (= res!3097790 (not (validRegex!11173 r!25924)))))

(declare-datatypes ((List!73600 0))(
  ( (Nil!73476) (Cons!73476 (h!79924 C!41844) (t!388335 List!73600)) )
))
(declare-datatypes ((tuple2!69860 0))(
  ( (tuple2!69861 (_1!38233 List!73600) (_2!38233 List!73600)) )
))
(declare-fun lt!2671485 () tuple2!69860)

(declare-datatypes ((Option!17724 0))(
  ( (None!17723) (Some!17723 (v!54858 tuple2!69860)) )
))
(declare-fun lt!2671486 () Option!17724)

(declare-fun get!26238 (Option!17724) tuple2!69860)

(assert (=> b!7771255 (= lt!2671485 (get!26238 lt!2671486))))

(declare-fun isDefined!14336 (Option!17724) Bool)

(assert (=> b!7771255 (isDefined!14336 lt!2671486)))

(declare-fun lt!2671484 () Regex!20759)

(declare-fun lt!2671482 () Regex!20759)

(declare-fun s!14904 () List!73600)

(declare-fun findConcatSeparation!3754 (Regex!20759 Regex!20759 List!73600 List!73600 List!73600) Option!17724)

(assert (=> b!7771255 (= lt!2671486 (findConcatSeparation!3754 lt!2671484 lt!2671482 Nil!73476 (t!388335 s!14904) (t!388335 s!14904)))))

(declare-datatypes ((Unit!168456 0))(
  ( (Unit!168457) )
))
(declare-fun lt!2671483 () Unit!168456)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!344 (Regex!20759 Regex!20759 List!73600) Unit!168456)

(assert (=> b!7771255 (= lt!2671483 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!344 lt!2671484 lt!2671482 (t!388335 s!14904)))))

(declare-fun b!7771256 () Bool)

(declare-fun res!3097792 () Bool)

(declare-fun e!4604493 () Bool)

(assert (=> b!7771256 (=> (not res!3097792) (not e!4604493))))

(declare-fun matchR!10221 (Regex!20759 List!73600) Bool)

(assert (=> b!7771256 (= res!3097792 (matchR!10221 lt!2671482 s!14904))))

(declare-fun b!7771257 () Bool)

(assert (=> b!7771257 (= e!4604493 e!4604490)))

(declare-fun res!3097791 () Bool)

(assert (=> b!7771257 (=> (not res!3097791) (not e!4604490))))

(declare-fun derivativeStep!6104 (Regex!20759 C!41844) Regex!20759)

(assert (=> b!7771257 (= res!3097791 (= (derivativeStep!6104 lt!2671482 (h!79924 s!14904)) (Concat!29604 lt!2671484 lt!2671482)))))

(assert (=> b!7771257 (= lt!2671484 (derivativeStep!6104 r!25924 (h!79924 s!14904)))))

(declare-fun b!7771258 () Bool)

(declare-fun res!3097789 () Bool)

(assert (=> b!7771258 (=> (not res!3097789) (not e!4604493))))

(get-info :version)

(assert (=> b!7771258 (= res!3097789 ((_ is Cons!73476) s!14904))))

(declare-fun b!7771259 () Bool)

(declare-fun e!4604489 () Bool)

(declare-fun tp_is_empty!51873 () Bool)

(assert (=> b!7771259 (= e!4604489 tp_is_empty!51873)))

(declare-fun b!7771261 () Bool)

(declare-fun res!3097787 () Bool)

(assert (=> b!7771261 (=> res!3097787 e!4604492)))

(assert (=> b!7771261 (= res!3097787 (not (matchR!10221 r!25924 (Cons!73476 (h!79924 s!14904) (_1!38233 lt!2671485)))))))

(declare-fun b!7771262 () Bool)

(declare-fun e!4604491 () Bool)

(declare-fun tp!2283124 () Bool)

(assert (=> b!7771262 (= e!4604491 (and tp_is_empty!51873 tp!2283124))))

(declare-fun b!7771263 () Bool)

(declare-fun tp!2283122 () Bool)

(assert (=> b!7771263 (= e!4604489 tp!2283122)))

(declare-fun b!7771264 () Bool)

(assert (=> b!7771264 (= e!4604492 (matchR!10221 lt!2671482 (_2!38233 lt!2671485)))))

(declare-fun b!7771265 () Bool)

(declare-fun tp!2283120 () Bool)

(declare-fun tp!2283121 () Bool)

(assert (=> b!7771265 (= e!4604489 (and tp!2283120 tp!2283121))))

(declare-fun b!7771260 () Bool)

(declare-fun tp!2283125 () Bool)

(declare-fun tp!2283123 () Bool)

(assert (=> b!7771260 (= e!4604489 (and tp!2283125 tp!2283123))))

(declare-fun res!3097788 () Bool)

(assert (=> start!740054 (=> (not res!3097788) (not e!4604493))))

(assert (=> start!740054 (= res!3097788 (validRegex!11173 lt!2671482))))

(assert (=> start!740054 (= lt!2671482 (Star!20759 r!25924))))

(assert (=> start!740054 e!4604493))

(assert (=> start!740054 e!4604489))

(assert (=> start!740054 e!4604491))

(assert (= (and start!740054 res!3097788) b!7771256))

(assert (= (and b!7771256 res!3097792) b!7771258))

(assert (= (and b!7771258 res!3097789) b!7771257))

(assert (= (and b!7771257 res!3097791) b!7771255))

(assert (= (and b!7771255 (not res!3097790)) b!7771261))

(assert (= (and b!7771261 (not res!3097787)) b!7771264))

(assert (= (and start!740054 ((_ is ElementMatch!20759) r!25924)) b!7771259))

(assert (= (and start!740054 ((_ is Concat!29604) r!25924)) b!7771265))

(assert (= (and start!740054 ((_ is Star!20759) r!25924)) b!7771263))

(assert (= (and start!740054 ((_ is Union!20759) r!25924)) b!7771260))

(assert (= (and start!740054 ((_ is Cons!73476) s!14904)) b!7771262))

(declare-fun m!8225068 () Bool)

(assert (=> start!740054 m!8225068))

(declare-fun m!8225070 () Bool)

(assert (=> b!7771264 m!8225070))

(declare-fun m!8225072 () Bool)

(assert (=> b!7771255 m!8225072))

(declare-fun m!8225074 () Bool)

(assert (=> b!7771255 m!8225074))

(declare-fun m!8225076 () Bool)

(assert (=> b!7771255 m!8225076))

(declare-fun m!8225078 () Bool)

(assert (=> b!7771255 m!8225078))

(declare-fun m!8225080 () Bool)

(assert (=> b!7771255 m!8225080))

(declare-fun m!8225082 () Bool)

(assert (=> b!7771257 m!8225082))

(declare-fun m!8225084 () Bool)

(assert (=> b!7771257 m!8225084))

(declare-fun m!8225086 () Bool)

(assert (=> b!7771256 m!8225086))

(declare-fun m!8225088 () Bool)

(assert (=> b!7771261 m!8225088))

(check-sat (not start!740054) (not b!7771261) (not b!7771265) (not b!7771256) tp_is_empty!51873 (not b!7771260) (not b!7771255) (not b!7771257) (not b!7771263) (not b!7771262) (not b!7771264))
(check-sat)
(get-model)

(declare-fun b!7771321 () Bool)

(declare-fun res!3097826 () Bool)

(declare-fun e!4604529 () Bool)

(assert (=> b!7771321 (=> res!3097826 e!4604529)))

(declare-fun isEmpty!42147 (List!73600) Bool)

(declare-fun tail!15426 (List!73600) List!73600)

(assert (=> b!7771321 (= res!3097826 (not (isEmpty!42147 (tail!15426 s!14904))))))

(declare-fun d!2344505 () Bool)

(declare-fun e!4604532 () Bool)

(assert (=> d!2344505 e!4604532))

(declare-fun c!1432333 () Bool)

(assert (=> d!2344505 (= c!1432333 ((_ is EmptyExpr!20759) lt!2671482))))

(declare-fun lt!2671489 () Bool)

(declare-fun e!4604530 () Bool)

(assert (=> d!2344505 (= lt!2671489 e!4604530)))

(declare-fun c!1432331 () Bool)

(assert (=> d!2344505 (= c!1432331 (isEmpty!42147 s!14904))))

(assert (=> d!2344505 (validRegex!11173 lt!2671482)))

(assert (=> d!2344505 (= (matchR!10221 lt!2671482 s!14904) lt!2671489)))

(declare-fun b!7771322 () Bool)

(declare-fun e!4604531 () Bool)

(declare-fun e!4604533 () Bool)

(assert (=> b!7771322 (= e!4604531 e!4604533)))

(declare-fun res!3097827 () Bool)

(assert (=> b!7771322 (=> (not res!3097827) (not e!4604533))))

(assert (=> b!7771322 (= res!3097827 (not lt!2671489))))

(declare-fun b!7771323 () Bool)

(declare-fun res!3097829 () Bool)

(assert (=> b!7771323 (=> res!3097829 e!4604531)))

(declare-fun e!4604535 () Bool)

(assert (=> b!7771323 (= res!3097829 e!4604535)))

(declare-fun res!3097825 () Bool)

(assert (=> b!7771323 (=> (not res!3097825) (not e!4604535))))

(assert (=> b!7771323 (= res!3097825 lt!2671489)))

(declare-fun bm!720227 () Bool)

(declare-fun call!720232 () Bool)

(assert (=> bm!720227 (= call!720232 (isEmpty!42147 s!14904))))

(declare-fun b!7771324 () Bool)

(declare-fun head!15885 (List!73600) C!41844)

(assert (=> b!7771324 (= e!4604529 (not (= (head!15885 s!14904) (c!1432318 lt!2671482))))))

(declare-fun b!7771325 () Bool)

(declare-fun res!3097828 () Bool)

(assert (=> b!7771325 (=> res!3097828 e!4604531)))

(assert (=> b!7771325 (= res!3097828 (not ((_ is ElementMatch!20759) lt!2671482)))))

(declare-fun e!4604534 () Bool)

(assert (=> b!7771325 (= e!4604534 e!4604531)))

(declare-fun b!7771326 () Bool)

(assert (=> b!7771326 (= e!4604533 e!4604529)))

(declare-fun res!3097831 () Bool)

(assert (=> b!7771326 (=> res!3097831 e!4604529)))

(assert (=> b!7771326 (= res!3097831 call!720232)))

(declare-fun b!7771327 () Bool)

(assert (=> b!7771327 (= e!4604532 (= lt!2671489 call!720232))))

(declare-fun b!7771328 () Bool)

(assert (=> b!7771328 (= e!4604530 (matchR!10221 (derivativeStep!6104 lt!2671482 (head!15885 s!14904)) (tail!15426 s!14904)))))

(declare-fun b!7771329 () Bool)

(assert (=> b!7771329 (= e!4604535 (= (head!15885 s!14904) (c!1432318 lt!2671482)))))

(declare-fun b!7771330 () Bool)

(declare-fun res!3097830 () Bool)

(assert (=> b!7771330 (=> (not res!3097830) (not e!4604535))))

(assert (=> b!7771330 (= res!3097830 (isEmpty!42147 (tail!15426 s!14904)))))

(declare-fun b!7771331 () Bool)

(assert (=> b!7771331 (= e!4604534 (not lt!2671489))))

(declare-fun b!7771332 () Bool)

(declare-fun res!3097824 () Bool)

(assert (=> b!7771332 (=> (not res!3097824) (not e!4604535))))

(assert (=> b!7771332 (= res!3097824 (not call!720232))))

(declare-fun b!7771333 () Bool)

(declare-fun nullable!9149 (Regex!20759) Bool)

(assert (=> b!7771333 (= e!4604530 (nullable!9149 lt!2671482))))

(declare-fun b!7771334 () Bool)

(assert (=> b!7771334 (= e!4604532 e!4604534)))

(declare-fun c!1432332 () Bool)

(assert (=> b!7771334 (= c!1432332 ((_ is EmptyLang!20759) lt!2671482))))

(assert (= (and d!2344505 c!1432331) b!7771333))

(assert (= (and d!2344505 (not c!1432331)) b!7771328))

(assert (= (and d!2344505 c!1432333) b!7771327))

(assert (= (and d!2344505 (not c!1432333)) b!7771334))

(assert (= (and b!7771334 c!1432332) b!7771331))

(assert (= (and b!7771334 (not c!1432332)) b!7771325))

(assert (= (and b!7771325 (not res!3097828)) b!7771323))

(assert (= (and b!7771323 res!3097825) b!7771332))

(assert (= (and b!7771332 res!3097824) b!7771330))

(assert (= (and b!7771330 res!3097830) b!7771329))

(assert (= (and b!7771323 (not res!3097829)) b!7771322))

(assert (= (and b!7771322 res!3097827) b!7771326))

(assert (= (and b!7771326 (not res!3097831)) b!7771321))

(assert (= (and b!7771321 (not res!3097826)) b!7771324))

(assert (= (or b!7771327 b!7771326 b!7771332) bm!720227))

(declare-fun m!8225096 () Bool)

(assert (=> b!7771324 m!8225096))

(declare-fun m!8225098 () Bool)

(assert (=> b!7771330 m!8225098))

(assert (=> b!7771330 m!8225098))

(declare-fun m!8225100 () Bool)

(assert (=> b!7771330 m!8225100))

(assert (=> b!7771328 m!8225096))

(assert (=> b!7771328 m!8225096))

(declare-fun m!8225102 () Bool)

(assert (=> b!7771328 m!8225102))

(assert (=> b!7771328 m!8225098))

(assert (=> b!7771328 m!8225102))

(assert (=> b!7771328 m!8225098))

(declare-fun m!8225104 () Bool)

(assert (=> b!7771328 m!8225104))

(declare-fun m!8225106 () Bool)

(assert (=> b!7771333 m!8225106))

(assert (=> b!7771329 m!8225096))

(declare-fun m!8225108 () Bool)

(assert (=> bm!720227 m!8225108))

(assert (=> d!2344505 m!8225108))

(assert (=> d!2344505 m!8225068))

(assert (=> b!7771321 m!8225098))

(assert (=> b!7771321 m!8225098))

(assert (=> b!7771321 m!8225100))

(assert (=> b!7771256 d!2344505))

(declare-fun b!7771391 () Bool)

(declare-fun c!1432353 () Bool)

(assert (=> b!7771391 (= c!1432353 (nullable!9149 (regOne!42030 lt!2671482)))))

(declare-fun e!4604571 () Regex!20759)

(declare-fun e!4604572 () Regex!20759)

(assert (=> b!7771391 (= e!4604571 e!4604572)))

(declare-fun b!7771392 () Bool)

(declare-fun e!4604568 () Regex!20759)

(declare-fun call!720247 () Regex!20759)

(declare-fun call!720246 () Regex!20759)

(assert (=> b!7771392 (= e!4604568 (Union!20759 call!720247 call!720246))))

(declare-fun b!7771393 () Bool)

(declare-fun e!4604569 () Regex!20759)

(assert (=> b!7771393 (= e!4604569 (ite (= (h!79924 s!14904) (c!1432318 lt!2671482)) EmptyExpr!20759 EmptyLang!20759))))

(declare-fun bm!720239 () Bool)

(declare-fun call!720244 () Regex!20759)

(assert (=> bm!720239 (= call!720244 call!720246)))

(declare-fun b!7771394 () Bool)

(declare-fun c!1432356 () Bool)

(assert (=> b!7771394 (= c!1432356 ((_ is Union!20759) lt!2671482))))

(assert (=> b!7771394 (= e!4604569 e!4604568)))

(declare-fun b!7771395 () Bool)

(declare-fun e!4604570 () Regex!20759)

(assert (=> b!7771395 (= e!4604570 e!4604569)))

(declare-fun c!1432352 () Bool)

(assert (=> b!7771395 (= c!1432352 ((_ is ElementMatch!20759) lt!2671482))))

(declare-fun b!7771396 () Bool)

(declare-fun call!720245 () Regex!20759)

(assert (=> b!7771396 (= e!4604572 (Union!20759 (Concat!29604 call!720245 (regTwo!42030 lt!2671482)) EmptyLang!20759))))

(declare-fun d!2344511 () Bool)

(declare-fun lt!2671504 () Regex!20759)

(assert (=> d!2344511 (validRegex!11173 lt!2671504)))

(assert (=> d!2344511 (= lt!2671504 e!4604570)))

(declare-fun c!1432355 () Bool)

(assert (=> d!2344511 (= c!1432355 (or ((_ is EmptyExpr!20759) lt!2671482) ((_ is EmptyLang!20759) lt!2671482)))))

(assert (=> d!2344511 (validRegex!11173 lt!2671482)))

(assert (=> d!2344511 (= (derivativeStep!6104 lt!2671482 (h!79924 s!14904)) lt!2671504)))

(declare-fun b!7771397 () Bool)

(assert (=> b!7771397 (= e!4604572 (Union!20759 (Concat!29604 call!720245 (regTwo!42030 lt!2671482)) call!720247))))

(declare-fun bm!720240 () Bool)

(declare-fun c!1432354 () Bool)

(assert (=> bm!720240 (= call!720246 (derivativeStep!6104 (ite c!1432356 (regTwo!42031 lt!2671482) (ite c!1432354 (reg!21088 lt!2671482) (regOne!42030 lt!2671482))) (h!79924 s!14904)))))

(declare-fun bm!720241 () Bool)

(assert (=> bm!720241 (= call!720247 (derivativeStep!6104 (ite c!1432356 (regOne!42031 lt!2671482) (regTwo!42030 lt!2671482)) (h!79924 s!14904)))))

(declare-fun b!7771398 () Bool)

(assert (=> b!7771398 (= e!4604570 EmptyLang!20759)))

(declare-fun b!7771399 () Bool)

(assert (=> b!7771399 (= e!4604571 (Concat!29604 call!720244 lt!2671482))))

(declare-fun bm!720242 () Bool)

(assert (=> bm!720242 (= call!720245 call!720244)))

(declare-fun b!7771400 () Bool)

(assert (=> b!7771400 (= e!4604568 e!4604571)))

(assert (=> b!7771400 (= c!1432354 ((_ is Star!20759) lt!2671482))))

(assert (= (and d!2344511 c!1432355) b!7771398))

(assert (= (and d!2344511 (not c!1432355)) b!7771395))

(assert (= (and b!7771395 c!1432352) b!7771393))

(assert (= (and b!7771395 (not c!1432352)) b!7771394))

(assert (= (and b!7771394 c!1432356) b!7771392))

(assert (= (and b!7771394 (not c!1432356)) b!7771400))

(assert (= (and b!7771400 c!1432354) b!7771399))

(assert (= (and b!7771400 (not c!1432354)) b!7771391))

(assert (= (and b!7771391 c!1432353) b!7771397))

(assert (= (and b!7771391 (not c!1432353)) b!7771396))

(assert (= (or b!7771397 b!7771396) bm!720242))

(assert (= (or b!7771399 bm!720242) bm!720239))

(assert (= (or b!7771392 bm!720239) bm!720240))

(assert (= (or b!7771392 b!7771397) bm!720241))

(declare-fun m!8225146 () Bool)

(assert (=> b!7771391 m!8225146))

(declare-fun m!8225148 () Bool)

(assert (=> d!2344511 m!8225148))

(assert (=> d!2344511 m!8225068))

(declare-fun m!8225150 () Bool)

(assert (=> bm!720240 m!8225150))

(declare-fun m!8225152 () Bool)

(assert (=> bm!720241 m!8225152))

(assert (=> b!7771257 d!2344511))

(declare-fun b!7771401 () Bool)

(declare-fun c!1432358 () Bool)

(assert (=> b!7771401 (= c!1432358 (nullable!9149 (regOne!42030 r!25924)))))

(declare-fun e!4604576 () Regex!20759)

(declare-fun e!4604577 () Regex!20759)

(assert (=> b!7771401 (= e!4604576 e!4604577)))

(declare-fun b!7771402 () Bool)

(declare-fun e!4604573 () Regex!20759)

(declare-fun call!720251 () Regex!20759)

(declare-fun call!720250 () Regex!20759)

(assert (=> b!7771402 (= e!4604573 (Union!20759 call!720251 call!720250))))

(declare-fun b!7771403 () Bool)

(declare-fun e!4604574 () Regex!20759)

(assert (=> b!7771403 (= e!4604574 (ite (= (h!79924 s!14904) (c!1432318 r!25924)) EmptyExpr!20759 EmptyLang!20759))))

(declare-fun bm!720243 () Bool)

(declare-fun call!720248 () Regex!20759)

(assert (=> bm!720243 (= call!720248 call!720250)))

(declare-fun b!7771404 () Bool)

(declare-fun c!1432361 () Bool)

(assert (=> b!7771404 (= c!1432361 ((_ is Union!20759) r!25924))))

(assert (=> b!7771404 (= e!4604574 e!4604573)))

(declare-fun b!7771405 () Bool)

(declare-fun e!4604575 () Regex!20759)

(assert (=> b!7771405 (= e!4604575 e!4604574)))

(declare-fun c!1432357 () Bool)

(assert (=> b!7771405 (= c!1432357 ((_ is ElementMatch!20759) r!25924))))

(declare-fun b!7771406 () Bool)

(declare-fun call!720249 () Regex!20759)

(assert (=> b!7771406 (= e!4604577 (Union!20759 (Concat!29604 call!720249 (regTwo!42030 r!25924)) EmptyLang!20759))))

(declare-fun d!2344521 () Bool)

(declare-fun lt!2671505 () Regex!20759)

(assert (=> d!2344521 (validRegex!11173 lt!2671505)))

(assert (=> d!2344521 (= lt!2671505 e!4604575)))

(declare-fun c!1432360 () Bool)

(assert (=> d!2344521 (= c!1432360 (or ((_ is EmptyExpr!20759) r!25924) ((_ is EmptyLang!20759) r!25924)))))

(assert (=> d!2344521 (validRegex!11173 r!25924)))

(assert (=> d!2344521 (= (derivativeStep!6104 r!25924 (h!79924 s!14904)) lt!2671505)))

(declare-fun b!7771407 () Bool)

(assert (=> b!7771407 (= e!4604577 (Union!20759 (Concat!29604 call!720249 (regTwo!42030 r!25924)) call!720251))))

(declare-fun bm!720244 () Bool)

(declare-fun c!1432359 () Bool)

(assert (=> bm!720244 (= call!720250 (derivativeStep!6104 (ite c!1432361 (regTwo!42031 r!25924) (ite c!1432359 (reg!21088 r!25924) (regOne!42030 r!25924))) (h!79924 s!14904)))))

(declare-fun bm!720245 () Bool)

(assert (=> bm!720245 (= call!720251 (derivativeStep!6104 (ite c!1432361 (regOne!42031 r!25924) (regTwo!42030 r!25924)) (h!79924 s!14904)))))

(declare-fun b!7771408 () Bool)

(assert (=> b!7771408 (= e!4604575 EmptyLang!20759)))

(declare-fun b!7771409 () Bool)

(assert (=> b!7771409 (= e!4604576 (Concat!29604 call!720248 r!25924))))

(declare-fun bm!720246 () Bool)

(assert (=> bm!720246 (= call!720249 call!720248)))

(declare-fun b!7771410 () Bool)

(assert (=> b!7771410 (= e!4604573 e!4604576)))

(assert (=> b!7771410 (= c!1432359 ((_ is Star!20759) r!25924))))

(assert (= (and d!2344521 c!1432360) b!7771408))

(assert (= (and d!2344521 (not c!1432360)) b!7771405))

(assert (= (and b!7771405 c!1432357) b!7771403))

(assert (= (and b!7771405 (not c!1432357)) b!7771404))

(assert (= (and b!7771404 c!1432361) b!7771402))

(assert (= (and b!7771404 (not c!1432361)) b!7771410))

(assert (= (and b!7771410 c!1432359) b!7771409))

(assert (= (and b!7771410 (not c!1432359)) b!7771401))

(assert (= (and b!7771401 c!1432358) b!7771407))

(assert (= (and b!7771401 (not c!1432358)) b!7771406))

(assert (= (or b!7771407 b!7771406) bm!720246))

(assert (= (or b!7771409 bm!720246) bm!720243))

(assert (= (or b!7771402 bm!720243) bm!720244))

(assert (= (or b!7771402 b!7771407) bm!720245))

(declare-fun m!8225154 () Bool)

(assert (=> b!7771401 m!8225154))

(declare-fun m!8225156 () Bool)

(assert (=> d!2344521 m!8225156))

(assert (=> d!2344521 m!8225078))

(declare-fun m!8225158 () Bool)

(assert (=> bm!720244 m!8225158))

(declare-fun m!8225160 () Bool)

(assert (=> bm!720245 m!8225160))

(assert (=> b!7771257 d!2344521))

(declare-fun b!7771457 () Bool)

(declare-fun res!3097880 () Bool)

(declare-fun e!4604611 () Bool)

(assert (=> b!7771457 (=> (not res!3097880) (not e!4604611))))

(declare-fun call!720260 () Bool)

(assert (=> b!7771457 (= res!3097880 call!720260)))

(declare-fun e!4604606 () Bool)

(assert (=> b!7771457 (= e!4604606 e!4604611)))

(declare-fun bm!720255 () Bool)

(declare-fun call!720261 () Bool)

(declare-fun c!1432373 () Bool)

(assert (=> bm!720255 (= call!720261 (validRegex!11173 (ite c!1432373 (regTwo!42031 r!25924) (regOne!42030 r!25924))))))

(declare-fun bm!720256 () Bool)

(declare-fun call!720262 () Bool)

(assert (=> bm!720256 (= call!720260 call!720262)))

(declare-fun b!7771458 () Bool)

(declare-fun e!4604609 () Bool)

(declare-fun e!4604607 () Bool)

(assert (=> b!7771458 (= e!4604609 e!4604607)))

(declare-fun res!3097881 () Bool)

(assert (=> b!7771458 (=> (not res!3097881) (not e!4604607))))

(assert (=> b!7771458 (= res!3097881 call!720261)))

(declare-fun c!1432372 () Bool)

(declare-fun bm!720257 () Bool)

(assert (=> bm!720257 (= call!720262 (validRegex!11173 (ite c!1432372 (reg!21088 r!25924) (ite c!1432373 (regOne!42031 r!25924) (regTwo!42030 r!25924)))))))

(declare-fun b!7771459 () Bool)

(declare-fun e!4604612 () Bool)

(assert (=> b!7771459 (= e!4604612 call!720262)))

(declare-fun b!7771460 () Bool)

(declare-fun e!4604610 () Bool)

(declare-fun e!4604608 () Bool)

(assert (=> b!7771460 (= e!4604610 e!4604608)))

(assert (=> b!7771460 (= c!1432372 ((_ is Star!20759) r!25924))))

(declare-fun b!7771461 () Bool)

(assert (=> b!7771461 (= e!4604608 e!4604612)))

(declare-fun res!3097879 () Bool)

(assert (=> b!7771461 (= res!3097879 (not (nullable!9149 (reg!21088 r!25924))))))

(assert (=> b!7771461 (=> (not res!3097879) (not e!4604612))))

(declare-fun d!2344523 () Bool)

(declare-fun res!3097878 () Bool)

(assert (=> d!2344523 (=> res!3097878 e!4604610)))

(assert (=> d!2344523 (= res!3097878 ((_ is ElementMatch!20759) r!25924))))

(assert (=> d!2344523 (= (validRegex!11173 r!25924) e!4604610)))

(declare-fun b!7771462 () Bool)

(assert (=> b!7771462 (= e!4604607 call!720260)))

(declare-fun b!7771463 () Bool)

(assert (=> b!7771463 (= e!4604611 call!720261)))

(declare-fun b!7771464 () Bool)

(declare-fun res!3097882 () Bool)

(assert (=> b!7771464 (=> res!3097882 e!4604609)))

(assert (=> b!7771464 (= res!3097882 (not ((_ is Concat!29604) r!25924)))))

(assert (=> b!7771464 (= e!4604606 e!4604609)))

(declare-fun b!7771465 () Bool)

(assert (=> b!7771465 (= e!4604608 e!4604606)))

(assert (=> b!7771465 (= c!1432373 ((_ is Union!20759) r!25924))))

(assert (= (and d!2344523 (not res!3097878)) b!7771460))

(assert (= (and b!7771460 c!1432372) b!7771461))

(assert (= (and b!7771460 (not c!1432372)) b!7771465))

(assert (= (and b!7771461 res!3097879) b!7771459))

(assert (= (and b!7771465 c!1432373) b!7771457))

(assert (= (and b!7771465 (not c!1432373)) b!7771464))

(assert (= (and b!7771457 res!3097880) b!7771463))

(assert (= (and b!7771464 (not res!3097882)) b!7771458))

(assert (= (and b!7771458 res!3097881) b!7771462))

(assert (= (or b!7771463 b!7771458) bm!720255))

(assert (= (or b!7771457 b!7771462) bm!720256))

(assert (= (or b!7771459 bm!720256) bm!720257))

(declare-fun m!8225162 () Bool)

(assert (=> bm!720255 m!8225162))

(declare-fun m!8225164 () Bool)

(assert (=> bm!720257 m!8225164))

(declare-fun m!8225166 () Bool)

(assert (=> b!7771461 m!8225166))

(assert (=> b!7771255 d!2344523))

(declare-fun b!7771597 () Bool)

(declare-fun e!4604674 () Bool)

(declare-fun lt!2671521 () Option!17724)

(declare-fun ++!17903 (List!73600 List!73600) List!73600)

(assert (=> b!7771597 (= e!4604674 (= (++!17903 (_1!38233 (get!26238 lt!2671521)) (_2!38233 (get!26238 lt!2671521))) (t!388335 s!14904)))))

(declare-fun b!7771598 () Bool)

(declare-fun lt!2671522 () Unit!168456)

(declare-fun lt!2671523 () Unit!168456)

(assert (=> b!7771598 (= lt!2671522 lt!2671523)))

(assert (=> b!7771598 (= (++!17903 (++!17903 Nil!73476 (Cons!73476 (h!79924 (t!388335 s!14904)) Nil!73476)) (t!388335 (t!388335 s!14904))) (t!388335 s!14904))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3387 (List!73600 C!41844 List!73600 List!73600) Unit!168456)

(assert (=> b!7771598 (= lt!2671523 (lemmaMoveElementToOtherListKeepsConcatEq!3387 Nil!73476 (h!79924 (t!388335 s!14904)) (t!388335 (t!388335 s!14904)) (t!388335 s!14904)))))

(declare-fun e!4604676 () Option!17724)

(assert (=> b!7771598 (= e!4604676 (findConcatSeparation!3754 lt!2671484 lt!2671482 (++!17903 Nil!73476 (Cons!73476 (h!79924 (t!388335 s!14904)) Nil!73476)) (t!388335 (t!388335 s!14904)) (t!388335 s!14904)))))

(declare-fun d!2344525 () Bool)

(declare-fun e!4604677 () Bool)

(assert (=> d!2344525 e!4604677))

(declare-fun res!3097918 () Bool)

(assert (=> d!2344525 (=> res!3097918 e!4604677)))

(assert (=> d!2344525 (= res!3097918 e!4604674)))

(declare-fun res!3097917 () Bool)

(assert (=> d!2344525 (=> (not res!3097917) (not e!4604674))))

(assert (=> d!2344525 (= res!3097917 (isDefined!14336 lt!2671521))))

(declare-fun e!4604675 () Option!17724)

(assert (=> d!2344525 (= lt!2671521 e!4604675)))

(declare-fun c!1432408 () Bool)

(declare-fun e!4604673 () Bool)

(assert (=> d!2344525 (= c!1432408 e!4604673)))

(declare-fun res!3097921 () Bool)

(assert (=> d!2344525 (=> (not res!3097921) (not e!4604673))))

(assert (=> d!2344525 (= res!3097921 (matchR!10221 lt!2671484 Nil!73476))))

(assert (=> d!2344525 (validRegex!11173 lt!2671484)))

(assert (=> d!2344525 (= (findConcatSeparation!3754 lt!2671484 lt!2671482 Nil!73476 (t!388335 s!14904) (t!388335 s!14904)) lt!2671521)))

(declare-fun b!7771599 () Bool)

(assert (=> b!7771599 (= e!4604673 (matchR!10221 lt!2671482 (t!388335 s!14904)))))

(declare-fun b!7771600 () Bool)

(declare-fun res!3097919 () Bool)

(assert (=> b!7771600 (=> (not res!3097919) (not e!4604674))))

(assert (=> b!7771600 (= res!3097919 (matchR!10221 lt!2671484 (_1!38233 (get!26238 lt!2671521))))))

(declare-fun b!7771601 () Bool)

(assert (=> b!7771601 (= e!4604675 e!4604676)))

(declare-fun c!1432407 () Bool)

(assert (=> b!7771601 (= c!1432407 ((_ is Nil!73476) (t!388335 s!14904)))))

(declare-fun b!7771602 () Bool)

(assert (=> b!7771602 (= e!4604676 None!17723)))

(declare-fun b!7771603 () Bool)

(assert (=> b!7771603 (= e!4604675 (Some!17723 (tuple2!69861 Nil!73476 (t!388335 s!14904))))))

(declare-fun b!7771604 () Bool)

(assert (=> b!7771604 (= e!4604677 (not (isDefined!14336 lt!2671521)))))

(declare-fun b!7771605 () Bool)

(declare-fun res!3097920 () Bool)

(assert (=> b!7771605 (=> (not res!3097920) (not e!4604674))))

(assert (=> b!7771605 (= res!3097920 (matchR!10221 lt!2671482 (_2!38233 (get!26238 lt!2671521))))))

(assert (= (and d!2344525 res!3097921) b!7771599))

(assert (= (and d!2344525 c!1432408) b!7771603))

(assert (= (and d!2344525 (not c!1432408)) b!7771601))

(assert (= (and b!7771601 c!1432407) b!7771602))

(assert (= (and b!7771601 (not c!1432407)) b!7771598))

(assert (= (and d!2344525 res!3097917) b!7771600))

(assert (= (and b!7771600 res!3097919) b!7771605))

(assert (= (and b!7771605 res!3097920) b!7771597))

(assert (= (and d!2344525 (not res!3097918)) b!7771604))

(declare-fun m!8225224 () Bool)

(assert (=> b!7771604 m!8225224))

(declare-fun m!8225226 () Bool)

(assert (=> b!7771599 m!8225226))

(assert (=> d!2344525 m!8225224))

(declare-fun m!8225228 () Bool)

(assert (=> d!2344525 m!8225228))

(declare-fun m!8225230 () Bool)

(assert (=> d!2344525 m!8225230))

(declare-fun m!8225232 () Bool)

(assert (=> b!7771600 m!8225232))

(declare-fun m!8225234 () Bool)

(assert (=> b!7771600 m!8225234))

(assert (=> b!7771605 m!8225232))

(declare-fun m!8225236 () Bool)

(assert (=> b!7771605 m!8225236))

(declare-fun m!8225238 () Bool)

(assert (=> b!7771598 m!8225238))

(assert (=> b!7771598 m!8225238))

(declare-fun m!8225240 () Bool)

(assert (=> b!7771598 m!8225240))

(declare-fun m!8225242 () Bool)

(assert (=> b!7771598 m!8225242))

(assert (=> b!7771598 m!8225238))

(declare-fun m!8225244 () Bool)

(assert (=> b!7771598 m!8225244))

(assert (=> b!7771597 m!8225232))

(declare-fun m!8225246 () Bool)

(assert (=> b!7771597 m!8225246))

(assert (=> b!7771255 d!2344525))

(declare-fun d!2344535 () Bool)

(assert (=> d!2344535 (isDefined!14336 (findConcatSeparation!3754 lt!2671484 lt!2671482 Nil!73476 (t!388335 s!14904) (t!388335 s!14904)))))

(declare-fun lt!2671526 () Unit!168456)

(declare-fun choose!59475 (Regex!20759 Regex!20759 List!73600) Unit!168456)

(assert (=> d!2344535 (= lt!2671526 (choose!59475 lt!2671484 lt!2671482 (t!388335 s!14904)))))

(assert (=> d!2344535 (validRegex!11173 lt!2671484)))

(assert (=> d!2344535 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!344 lt!2671484 lt!2671482 (t!388335 s!14904)) lt!2671526)))

(declare-fun bs!1966120 () Bool)

(assert (= bs!1966120 d!2344535))

(assert (=> bs!1966120 m!8225076))

(assert (=> bs!1966120 m!8225076))

(declare-fun m!8225248 () Bool)

(assert (=> bs!1966120 m!8225248))

(declare-fun m!8225250 () Bool)

(assert (=> bs!1966120 m!8225250))

(assert (=> bs!1966120 m!8225230))

(assert (=> b!7771255 d!2344535))

(declare-fun d!2344537 () Bool)

(declare-fun isEmpty!42150 (Option!17724) Bool)

(assert (=> d!2344537 (= (isDefined!14336 lt!2671486) (not (isEmpty!42150 lt!2671486)))))

(declare-fun bs!1966121 () Bool)

(assert (= bs!1966121 d!2344537))

(declare-fun m!8225252 () Bool)

(assert (=> bs!1966121 m!8225252))

(assert (=> b!7771255 d!2344537))

(declare-fun d!2344539 () Bool)

(assert (=> d!2344539 (= (get!26238 lt!2671486) (v!54858 lt!2671486))))

(assert (=> b!7771255 d!2344539))

(declare-fun b!7771610 () Bool)

(declare-fun res!3097924 () Bool)

(declare-fun e!4604684 () Bool)

(assert (=> b!7771610 (=> (not res!3097924) (not e!4604684))))

(declare-fun call!720282 () Bool)

(assert (=> b!7771610 (= res!3097924 call!720282)))

(declare-fun e!4604679 () Bool)

(assert (=> b!7771610 (= e!4604679 e!4604684)))

(declare-fun bm!720277 () Bool)

(declare-fun call!720283 () Bool)

(declare-fun c!1432410 () Bool)

(assert (=> bm!720277 (= call!720283 (validRegex!11173 (ite c!1432410 (regTwo!42031 lt!2671482) (regOne!42030 lt!2671482))))))

(declare-fun bm!720278 () Bool)

(declare-fun call!720284 () Bool)

(assert (=> bm!720278 (= call!720282 call!720284)))

(declare-fun b!7771611 () Bool)

(declare-fun e!4604682 () Bool)

(declare-fun e!4604680 () Bool)

(assert (=> b!7771611 (= e!4604682 e!4604680)))

(declare-fun res!3097925 () Bool)

(assert (=> b!7771611 (=> (not res!3097925) (not e!4604680))))

(assert (=> b!7771611 (= res!3097925 call!720283)))

(declare-fun c!1432409 () Bool)

(declare-fun bm!720279 () Bool)

(assert (=> bm!720279 (= call!720284 (validRegex!11173 (ite c!1432409 (reg!21088 lt!2671482) (ite c!1432410 (regOne!42031 lt!2671482) (regTwo!42030 lt!2671482)))))))

(declare-fun b!7771612 () Bool)

(declare-fun e!4604685 () Bool)

(assert (=> b!7771612 (= e!4604685 call!720284)))

(declare-fun b!7771613 () Bool)

(declare-fun e!4604683 () Bool)

(declare-fun e!4604681 () Bool)

(assert (=> b!7771613 (= e!4604683 e!4604681)))

(assert (=> b!7771613 (= c!1432409 ((_ is Star!20759) lt!2671482))))

(declare-fun b!7771614 () Bool)

(assert (=> b!7771614 (= e!4604681 e!4604685)))

(declare-fun res!3097923 () Bool)

(assert (=> b!7771614 (= res!3097923 (not (nullable!9149 (reg!21088 lt!2671482))))))

(assert (=> b!7771614 (=> (not res!3097923) (not e!4604685))))

(declare-fun d!2344541 () Bool)

(declare-fun res!3097922 () Bool)

(assert (=> d!2344541 (=> res!3097922 e!4604683)))

(assert (=> d!2344541 (= res!3097922 ((_ is ElementMatch!20759) lt!2671482))))

(assert (=> d!2344541 (= (validRegex!11173 lt!2671482) e!4604683)))

(declare-fun b!7771615 () Bool)

(assert (=> b!7771615 (= e!4604680 call!720282)))

(declare-fun b!7771616 () Bool)

(assert (=> b!7771616 (= e!4604684 call!720283)))

(declare-fun b!7771617 () Bool)

(declare-fun res!3097926 () Bool)

(assert (=> b!7771617 (=> res!3097926 e!4604682)))

(assert (=> b!7771617 (= res!3097926 (not ((_ is Concat!29604) lt!2671482)))))

(assert (=> b!7771617 (= e!4604679 e!4604682)))

(declare-fun b!7771618 () Bool)

(assert (=> b!7771618 (= e!4604681 e!4604679)))

(assert (=> b!7771618 (= c!1432410 ((_ is Union!20759) lt!2671482))))

(assert (= (and d!2344541 (not res!3097922)) b!7771613))

(assert (= (and b!7771613 c!1432409) b!7771614))

(assert (= (and b!7771613 (not c!1432409)) b!7771618))

(assert (= (and b!7771614 res!3097923) b!7771612))

(assert (= (and b!7771618 c!1432410) b!7771610))

(assert (= (and b!7771618 (not c!1432410)) b!7771617))

(assert (= (and b!7771610 res!3097924) b!7771616))

(assert (= (and b!7771617 (not res!3097926)) b!7771611))

(assert (= (and b!7771611 res!3097925) b!7771615))

(assert (= (or b!7771616 b!7771611) bm!720277))

(assert (= (or b!7771610 b!7771615) bm!720278))

(assert (= (or b!7771612 bm!720278) bm!720279))

(declare-fun m!8225254 () Bool)

(assert (=> bm!720277 m!8225254))

(declare-fun m!8225256 () Bool)

(assert (=> bm!720279 m!8225256))

(declare-fun m!8225258 () Bool)

(assert (=> b!7771614 m!8225258))

(assert (=> start!740054 d!2344541))

(declare-fun b!7771619 () Bool)

(declare-fun res!3097929 () Bool)

(declare-fun e!4604686 () Bool)

(assert (=> b!7771619 (=> res!3097929 e!4604686)))

(assert (=> b!7771619 (= res!3097929 (not (isEmpty!42147 (tail!15426 (Cons!73476 (h!79924 s!14904) (_1!38233 lt!2671485))))))))

(declare-fun d!2344543 () Bool)

(declare-fun e!4604689 () Bool)

(assert (=> d!2344543 e!4604689))

(declare-fun c!1432413 () Bool)

(assert (=> d!2344543 (= c!1432413 ((_ is EmptyExpr!20759) r!25924))))

(declare-fun lt!2671527 () Bool)

(declare-fun e!4604687 () Bool)

(assert (=> d!2344543 (= lt!2671527 e!4604687)))

(declare-fun c!1432411 () Bool)

(assert (=> d!2344543 (= c!1432411 (isEmpty!42147 (Cons!73476 (h!79924 s!14904) (_1!38233 lt!2671485))))))

(assert (=> d!2344543 (validRegex!11173 r!25924)))

(assert (=> d!2344543 (= (matchR!10221 r!25924 (Cons!73476 (h!79924 s!14904) (_1!38233 lt!2671485))) lt!2671527)))

(declare-fun b!7771620 () Bool)

(declare-fun e!4604688 () Bool)

(declare-fun e!4604690 () Bool)

(assert (=> b!7771620 (= e!4604688 e!4604690)))

(declare-fun res!3097930 () Bool)

(assert (=> b!7771620 (=> (not res!3097930) (not e!4604690))))

(assert (=> b!7771620 (= res!3097930 (not lt!2671527))))

(declare-fun b!7771621 () Bool)

(declare-fun res!3097932 () Bool)

(assert (=> b!7771621 (=> res!3097932 e!4604688)))

(declare-fun e!4604692 () Bool)

(assert (=> b!7771621 (= res!3097932 e!4604692)))

(declare-fun res!3097928 () Bool)

(assert (=> b!7771621 (=> (not res!3097928) (not e!4604692))))

(assert (=> b!7771621 (= res!3097928 lt!2671527)))

(declare-fun bm!720280 () Bool)

(declare-fun call!720285 () Bool)

(assert (=> bm!720280 (= call!720285 (isEmpty!42147 (Cons!73476 (h!79924 s!14904) (_1!38233 lt!2671485))))))

(declare-fun b!7771622 () Bool)

(assert (=> b!7771622 (= e!4604686 (not (= (head!15885 (Cons!73476 (h!79924 s!14904) (_1!38233 lt!2671485))) (c!1432318 r!25924))))))

(declare-fun b!7771623 () Bool)

(declare-fun res!3097931 () Bool)

(assert (=> b!7771623 (=> res!3097931 e!4604688)))

(assert (=> b!7771623 (= res!3097931 (not ((_ is ElementMatch!20759) r!25924)))))

(declare-fun e!4604691 () Bool)

(assert (=> b!7771623 (= e!4604691 e!4604688)))

(declare-fun b!7771624 () Bool)

(assert (=> b!7771624 (= e!4604690 e!4604686)))

(declare-fun res!3097934 () Bool)

(assert (=> b!7771624 (=> res!3097934 e!4604686)))

(assert (=> b!7771624 (= res!3097934 call!720285)))

(declare-fun b!7771625 () Bool)

(assert (=> b!7771625 (= e!4604689 (= lt!2671527 call!720285))))

(declare-fun b!7771626 () Bool)

(assert (=> b!7771626 (= e!4604687 (matchR!10221 (derivativeStep!6104 r!25924 (head!15885 (Cons!73476 (h!79924 s!14904) (_1!38233 lt!2671485)))) (tail!15426 (Cons!73476 (h!79924 s!14904) (_1!38233 lt!2671485)))))))

(declare-fun b!7771627 () Bool)

(assert (=> b!7771627 (= e!4604692 (= (head!15885 (Cons!73476 (h!79924 s!14904) (_1!38233 lt!2671485))) (c!1432318 r!25924)))))

(declare-fun b!7771628 () Bool)

(declare-fun res!3097933 () Bool)

(assert (=> b!7771628 (=> (not res!3097933) (not e!4604692))))

(assert (=> b!7771628 (= res!3097933 (isEmpty!42147 (tail!15426 (Cons!73476 (h!79924 s!14904) (_1!38233 lt!2671485)))))))

(declare-fun b!7771629 () Bool)

(assert (=> b!7771629 (= e!4604691 (not lt!2671527))))

(declare-fun b!7771630 () Bool)

(declare-fun res!3097927 () Bool)

(assert (=> b!7771630 (=> (not res!3097927) (not e!4604692))))

(assert (=> b!7771630 (= res!3097927 (not call!720285))))

(declare-fun b!7771631 () Bool)

(assert (=> b!7771631 (= e!4604687 (nullable!9149 r!25924))))

(declare-fun b!7771632 () Bool)

(assert (=> b!7771632 (= e!4604689 e!4604691)))

(declare-fun c!1432412 () Bool)

(assert (=> b!7771632 (= c!1432412 ((_ is EmptyLang!20759) r!25924))))

(assert (= (and d!2344543 c!1432411) b!7771631))

(assert (= (and d!2344543 (not c!1432411)) b!7771626))

(assert (= (and d!2344543 c!1432413) b!7771625))

(assert (= (and d!2344543 (not c!1432413)) b!7771632))

(assert (= (and b!7771632 c!1432412) b!7771629))

(assert (= (and b!7771632 (not c!1432412)) b!7771623))

(assert (= (and b!7771623 (not res!3097931)) b!7771621))

(assert (= (and b!7771621 res!3097928) b!7771630))

(assert (= (and b!7771630 res!3097927) b!7771628))

(assert (= (and b!7771628 res!3097933) b!7771627))

(assert (= (and b!7771621 (not res!3097932)) b!7771620))

(assert (= (and b!7771620 res!3097930) b!7771624))

(assert (= (and b!7771624 (not res!3097934)) b!7771619))

(assert (= (and b!7771619 (not res!3097929)) b!7771622))

(assert (= (or b!7771625 b!7771624 b!7771630) bm!720280))

(declare-fun m!8225260 () Bool)

(assert (=> b!7771622 m!8225260))

(declare-fun m!8225262 () Bool)

(assert (=> b!7771628 m!8225262))

(assert (=> b!7771628 m!8225262))

(declare-fun m!8225264 () Bool)

(assert (=> b!7771628 m!8225264))

(assert (=> b!7771626 m!8225260))

(assert (=> b!7771626 m!8225260))

(declare-fun m!8225266 () Bool)

(assert (=> b!7771626 m!8225266))

(assert (=> b!7771626 m!8225262))

(assert (=> b!7771626 m!8225266))

(assert (=> b!7771626 m!8225262))

(declare-fun m!8225268 () Bool)

(assert (=> b!7771626 m!8225268))

(declare-fun m!8225270 () Bool)

(assert (=> b!7771631 m!8225270))

(assert (=> b!7771627 m!8225260))

(declare-fun m!8225272 () Bool)

(assert (=> bm!720280 m!8225272))

(assert (=> d!2344543 m!8225272))

(assert (=> d!2344543 m!8225078))

(assert (=> b!7771619 m!8225262))

(assert (=> b!7771619 m!8225262))

(assert (=> b!7771619 m!8225264))

(assert (=> b!7771261 d!2344543))

(declare-fun b!7771633 () Bool)

(declare-fun res!3097937 () Bool)

(declare-fun e!4604693 () Bool)

(assert (=> b!7771633 (=> res!3097937 e!4604693)))

(assert (=> b!7771633 (= res!3097937 (not (isEmpty!42147 (tail!15426 (_2!38233 lt!2671485)))))))

(declare-fun d!2344545 () Bool)

(declare-fun e!4604696 () Bool)

(assert (=> d!2344545 e!4604696))

(declare-fun c!1432416 () Bool)

(assert (=> d!2344545 (= c!1432416 ((_ is EmptyExpr!20759) lt!2671482))))

(declare-fun lt!2671528 () Bool)

(declare-fun e!4604694 () Bool)

(assert (=> d!2344545 (= lt!2671528 e!4604694)))

(declare-fun c!1432414 () Bool)

(assert (=> d!2344545 (= c!1432414 (isEmpty!42147 (_2!38233 lt!2671485)))))

(assert (=> d!2344545 (validRegex!11173 lt!2671482)))

(assert (=> d!2344545 (= (matchR!10221 lt!2671482 (_2!38233 lt!2671485)) lt!2671528)))

(declare-fun b!7771634 () Bool)

(declare-fun e!4604695 () Bool)

(declare-fun e!4604697 () Bool)

(assert (=> b!7771634 (= e!4604695 e!4604697)))

(declare-fun res!3097938 () Bool)

(assert (=> b!7771634 (=> (not res!3097938) (not e!4604697))))

(assert (=> b!7771634 (= res!3097938 (not lt!2671528))))

(declare-fun b!7771635 () Bool)

(declare-fun res!3097940 () Bool)

(assert (=> b!7771635 (=> res!3097940 e!4604695)))

(declare-fun e!4604699 () Bool)

(assert (=> b!7771635 (= res!3097940 e!4604699)))

(declare-fun res!3097936 () Bool)

(assert (=> b!7771635 (=> (not res!3097936) (not e!4604699))))

(assert (=> b!7771635 (= res!3097936 lt!2671528)))

(declare-fun bm!720281 () Bool)

(declare-fun call!720286 () Bool)

(assert (=> bm!720281 (= call!720286 (isEmpty!42147 (_2!38233 lt!2671485)))))

(declare-fun b!7771636 () Bool)

(assert (=> b!7771636 (= e!4604693 (not (= (head!15885 (_2!38233 lt!2671485)) (c!1432318 lt!2671482))))))

(declare-fun b!7771637 () Bool)

(declare-fun res!3097939 () Bool)

(assert (=> b!7771637 (=> res!3097939 e!4604695)))

(assert (=> b!7771637 (= res!3097939 (not ((_ is ElementMatch!20759) lt!2671482)))))

(declare-fun e!4604698 () Bool)

(assert (=> b!7771637 (= e!4604698 e!4604695)))

(declare-fun b!7771638 () Bool)

(assert (=> b!7771638 (= e!4604697 e!4604693)))

(declare-fun res!3097942 () Bool)

(assert (=> b!7771638 (=> res!3097942 e!4604693)))

(assert (=> b!7771638 (= res!3097942 call!720286)))

(declare-fun b!7771639 () Bool)

(assert (=> b!7771639 (= e!4604696 (= lt!2671528 call!720286))))

(declare-fun b!7771640 () Bool)

(assert (=> b!7771640 (= e!4604694 (matchR!10221 (derivativeStep!6104 lt!2671482 (head!15885 (_2!38233 lt!2671485))) (tail!15426 (_2!38233 lt!2671485))))))

(declare-fun b!7771641 () Bool)

(assert (=> b!7771641 (= e!4604699 (= (head!15885 (_2!38233 lt!2671485)) (c!1432318 lt!2671482)))))

(declare-fun b!7771642 () Bool)

(declare-fun res!3097941 () Bool)

(assert (=> b!7771642 (=> (not res!3097941) (not e!4604699))))

(assert (=> b!7771642 (= res!3097941 (isEmpty!42147 (tail!15426 (_2!38233 lt!2671485))))))

(declare-fun b!7771643 () Bool)

(assert (=> b!7771643 (= e!4604698 (not lt!2671528))))

(declare-fun b!7771644 () Bool)

(declare-fun res!3097935 () Bool)

(assert (=> b!7771644 (=> (not res!3097935) (not e!4604699))))

(assert (=> b!7771644 (= res!3097935 (not call!720286))))

(declare-fun b!7771645 () Bool)

(assert (=> b!7771645 (= e!4604694 (nullable!9149 lt!2671482))))

(declare-fun b!7771646 () Bool)

(assert (=> b!7771646 (= e!4604696 e!4604698)))

(declare-fun c!1432415 () Bool)

(assert (=> b!7771646 (= c!1432415 ((_ is EmptyLang!20759) lt!2671482))))

(assert (= (and d!2344545 c!1432414) b!7771645))

(assert (= (and d!2344545 (not c!1432414)) b!7771640))

(assert (= (and d!2344545 c!1432416) b!7771639))

(assert (= (and d!2344545 (not c!1432416)) b!7771646))

(assert (= (and b!7771646 c!1432415) b!7771643))

(assert (= (and b!7771646 (not c!1432415)) b!7771637))

(assert (= (and b!7771637 (not res!3097939)) b!7771635))

(assert (= (and b!7771635 res!3097936) b!7771644))

(assert (= (and b!7771644 res!3097935) b!7771642))

(assert (= (and b!7771642 res!3097941) b!7771641))

(assert (= (and b!7771635 (not res!3097940)) b!7771634))

(assert (= (and b!7771634 res!3097938) b!7771638))

(assert (= (and b!7771638 (not res!3097942)) b!7771633))

(assert (= (and b!7771633 (not res!3097937)) b!7771636))

(assert (= (or b!7771639 b!7771638 b!7771644) bm!720281))

(declare-fun m!8225274 () Bool)

(assert (=> b!7771636 m!8225274))

(declare-fun m!8225276 () Bool)

(assert (=> b!7771642 m!8225276))

(assert (=> b!7771642 m!8225276))

(declare-fun m!8225278 () Bool)

(assert (=> b!7771642 m!8225278))

(assert (=> b!7771640 m!8225274))

(assert (=> b!7771640 m!8225274))

(declare-fun m!8225280 () Bool)

(assert (=> b!7771640 m!8225280))

(assert (=> b!7771640 m!8225276))

(assert (=> b!7771640 m!8225280))

(assert (=> b!7771640 m!8225276))

(declare-fun m!8225282 () Bool)

(assert (=> b!7771640 m!8225282))

(assert (=> b!7771645 m!8225106))

(assert (=> b!7771641 m!8225274))

(declare-fun m!8225284 () Bool)

(assert (=> bm!720281 m!8225284))

(assert (=> d!2344545 m!8225284))

(assert (=> d!2344545 m!8225068))

(assert (=> b!7771633 m!8225276))

(assert (=> b!7771633 m!8225276))

(assert (=> b!7771633 m!8225278))

(assert (=> b!7771264 d!2344545))

(declare-fun b!7771651 () Bool)

(declare-fun e!4604702 () Bool)

(declare-fun tp!2283166 () Bool)

(assert (=> b!7771651 (= e!4604702 (and tp_is_empty!51873 tp!2283166))))

(assert (=> b!7771262 (= tp!2283124 e!4604702)))

(assert (= (and b!7771262 ((_ is Cons!73476) (t!388335 s!14904))) b!7771651))

(declare-fun b!7771664 () Bool)

(declare-fun e!4604705 () Bool)

(declare-fun tp!2283177 () Bool)

(assert (=> b!7771664 (= e!4604705 tp!2283177)))

(declare-fun b!7771663 () Bool)

(declare-fun tp!2283180 () Bool)

(declare-fun tp!2283181 () Bool)

(assert (=> b!7771663 (= e!4604705 (and tp!2283180 tp!2283181))))

(declare-fun b!7771662 () Bool)

(assert (=> b!7771662 (= e!4604705 tp_is_empty!51873)))

(assert (=> b!7771260 (= tp!2283125 e!4604705)))

(declare-fun b!7771665 () Bool)

(declare-fun tp!2283178 () Bool)

(declare-fun tp!2283179 () Bool)

(assert (=> b!7771665 (= e!4604705 (and tp!2283178 tp!2283179))))

(assert (= (and b!7771260 ((_ is ElementMatch!20759) (regOne!42031 r!25924))) b!7771662))

(assert (= (and b!7771260 ((_ is Concat!29604) (regOne!42031 r!25924))) b!7771663))

(assert (= (and b!7771260 ((_ is Star!20759) (regOne!42031 r!25924))) b!7771664))

(assert (= (and b!7771260 ((_ is Union!20759) (regOne!42031 r!25924))) b!7771665))

(declare-fun b!7771668 () Bool)

(declare-fun e!4604706 () Bool)

(declare-fun tp!2283182 () Bool)

(assert (=> b!7771668 (= e!4604706 tp!2283182)))

(declare-fun b!7771667 () Bool)

(declare-fun tp!2283185 () Bool)

(declare-fun tp!2283186 () Bool)

(assert (=> b!7771667 (= e!4604706 (and tp!2283185 tp!2283186))))

(declare-fun b!7771666 () Bool)

(assert (=> b!7771666 (= e!4604706 tp_is_empty!51873)))

(assert (=> b!7771260 (= tp!2283123 e!4604706)))

(declare-fun b!7771669 () Bool)

(declare-fun tp!2283183 () Bool)

(declare-fun tp!2283184 () Bool)

(assert (=> b!7771669 (= e!4604706 (and tp!2283183 tp!2283184))))

(assert (= (and b!7771260 ((_ is ElementMatch!20759) (regTwo!42031 r!25924))) b!7771666))

(assert (= (and b!7771260 ((_ is Concat!29604) (regTwo!42031 r!25924))) b!7771667))

(assert (= (and b!7771260 ((_ is Star!20759) (regTwo!42031 r!25924))) b!7771668))

(assert (= (and b!7771260 ((_ is Union!20759) (regTwo!42031 r!25924))) b!7771669))

(declare-fun b!7771672 () Bool)

(declare-fun e!4604707 () Bool)

(declare-fun tp!2283187 () Bool)

(assert (=> b!7771672 (= e!4604707 tp!2283187)))

(declare-fun b!7771671 () Bool)

(declare-fun tp!2283190 () Bool)

(declare-fun tp!2283191 () Bool)

(assert (=> b!7771671 (= e!4604707 (and tp!2283190 tp!2283191))))

(declare-fun b!7771670 () Bool)

(assert (=> b!7771670 (= e!4604707 tp_is_empty!51873)))

(assert (=> b!7771265 (= tp!2283120 e!4604707)))

(declare-fun b!7771673 () Bool)

(declare-fun tp!2283188 () Bool)

(declare-fun tp!2283189 () Bool)

(assert (=> b!7771673 (= e!4604707 (and tp!2283188 tp!2283189))))

(assert (= (and b!7771265 ((_ is ElementMatch!20759) (regOne!42030 r!25924))) b!7771670))

(assert (= (and b!7771265 ((_ is Concat!29604) (regOne!42030 r!25924))) b!7771671))

(assert (= (and b!7771265 ((_ is Star!20759) (regOne!42030 r!25924))) b!7771672))

(assert (= (and b!7771265 ((_ is Union!20759) (regOne!42030 r!25924))) b!7771673))

(declare-fun b!7771676 () Bool)

(declare-fun e!4604708 () Bool)

(declare-fun tp!2283192 () Bool)

(assert (=> b!7771676 (= e!4604708 tp!2283192)))

(declare-fun b!7771675 () Bool)

(declare-fun tp!2283195 () Bool)

(declare-fun tp!2283196 () Bool)

(assert (=> b!7771675 (= e!4604708 (and tp!2283195 tp!2283196))))

(declare-fun b!7771674 () Bool)

(assert (=> b!7771674 (= e!4604708 tp_is_empty!51873)))

(assert (=> b!7771265 (= tp!2283121 e!4604708)))

(declare-fun b!7771677 () Bool)

(declare-fun tp!2283193 () Bool)

(declare-fun tp!2283194 () Bool)

(assert (=> b!7771677 (= e!4604708 (and tp!2283193 tp!2283194))))

(assert (= (and b!7771265 ((_ is ElementMatch!20759) (regTwo!42030 r!25924))) b!7771674))

(assert (= (and b!7771265 ((_ is Concat!29604) (regTwo!42030 r!25924))) b!7771675))

(assert (= (and b!7771265 ((_ is Star!20759) (regTwo!42030 r!25924))) b!7771676))

(assert (= (and b!7771265 ((_ is Union!20759) (regTwo!42030 r!25924))) b!7771677))

(declare-fun b!7771680 () Bool)

(declare-fun e!4604709 () Bool)

(declare-fun tp!2283197 () Bool)

(assert (=> b!7771680 (= e!4604709 tp!2283197)))

(declare-fun b!7771679 () Bool)

(declare-fun tp!2283200 () Bool)

(declare-fun tp!2283201 () Bool)

(assert (=> b!7771679 (= e!4604709 (and tp!2283200 tp!2283201))))

(declare-fun b!7771678 () Bool)

(assert (=> b!7771678 (= e!4604709 tp_is_empty!51873)))

(assert (=> b!7771263 (= tp!2283122 e!4604709)))

(declare-fun b!7771681 () Bool)

(declare-fun tp!2283198 () Bool)

(declare-fun tp!2283199 () Bool)

(assert (=> b!7771681 (= e!4604709 (and tp!2283198 tp!2283199))))

(assert (= (and b!7771263 ((_ is ElementMatch!20759) (reg!21088 r!25924))) b!7771678))

(assert (= (and b!7771263 ((_ is Concat!29604) (reg!21088 r!25924))) b!7771679))

(assert (= (and b!7771263 ((_ is Star!20759) (reg!21088 r!25924))) b!7771680))

(assert (= (and b!7771263 ((_ is Union!20759) (reg!21088 r!25924))) b!7771681))

(check-sat (not b!7771642) (not b!7771614) (not bm!720277) (not b!7771681) (not d!2344537) (not b!7771651) (not b!7771675) (not bm!720257) (not b!7771324) (not b!7771619) (not b!7771663) (not b!7771599) (not bm!720279) (not b!7771671) (not bm!720241) (not bm!720244) (not b!7771600) (not bm!720227) (not b!7771321) (not d!2344525) (not b!7771633) (not b!7771645) (not b!7771605) (not b!7771329) (not bm!720280) (not d!2344521) (not b!7771665) (not b!7771401) (not b!7771330) (not b!7771664) (not d!2344543) (not b!7771461) (not b!7771680) (not b!7771677) (not b!7771604) (not b!7771667) (not b!7771598) (not b!7771669) tp_is_empty!51873 (not b!7771597) (not b!7771627) (not b!7771626) (not b!7771631) (not d!2344545) (not b!7771622) (not b!7771628) (not b!7771672) (not b!7771636) (not b!7771640) (not d!2344505) (not bm!720281) (not d!2344511) (not b!7771333) (not b!7771676) (not b!7771679) (not b!7771328) (not d!2344535) (not bm!720255) (not b!7771641) (not b!7771668) (not b!7771391) (not b!7771673) (not bm!720245) (not bm!720240))
(check-sat)
