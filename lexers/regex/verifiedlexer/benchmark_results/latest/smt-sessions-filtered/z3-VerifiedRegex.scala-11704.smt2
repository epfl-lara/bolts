; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!660776 () Bool)

(assert start!660776)

(declare-fun e!4123887 () Bool)

(declare-fun b!6837090 () Bool)

(declare-datatypes ((C!33580 0))(
  ( (C!33581 (val!26492 Int)) )
))
(declare-datatypes ((Regex!16655 0))(
  ( (ElementMatch!16655 (c!1273107 C!33580)) (Concat!25500 (regOne!33822 Regex!16655) (regTwo!33822 Regex!16655)) (EmptyExpr!16655) (Star!16655 (reg!16984 Regex!16655)) (EmptyLang!16655) (Union!16655 (regOne!33823 Regex!16655) (regTwo!33823 Regex!16655)) )
))
(declare-datatypes ((List!66264 0))(
  ( (Nil!66140) (Cons!66140 (h!72588 Regex!16655) (t!380007 List!66264)) )
))
(declare-datatypes ((Context!12078 0))(
  ( (Context!12079 (exprs!6539 List!66264)) )
))
(declare-datatypes ((List!66265 0))(
  ( (Nil!66141) (Cons!66141 (h!72589 Context!12078) (t!380008 List!66265)) )
))
(declare-fun zl!343 () List!66265)

(declare-fun tp!1870971 () Bool)

(declare-fun e!4123888 () Bool)

(declare-fun inv!84884 (Context!12078) Bool)

(assert (=> b!6837090 (= e!4123888 (and (inv!84884 (h!72589 zl!343)) e!4123887 tp!1870971))))

(declare-fun b!6837091 () Bool)

(declare-fun e!4123884 () Bool)

(declare-fun tp!1870973 () Bool)

(declare-fun tp!1870978 () Bool)

(assert (=> b!6837091 (= e!4123884 (and tp!1870973 tp!1870978))))

(declare-fun b!6837092 () Bool)

(declare-fun e!4123886 () Bool)

(declare-fun tp_is_empty!42563 () Bool)

(declare-fun tp!1870970 () Bool)

(assert (=> b!6837092 (= e!4123886 (and tp_is_empty!42563 tp!1870970))))

(declare-fun b!6837093 () Bool)

(declare-fun tp!1870975 () Bool)

(assert (=> b!6837093 (= e!4123884 tp!1870975)))

(declare-fun b!6837094 () Bool)

(declare-fun res!2792122 () Bool)

(declare-fun e!4123885 () Bool)

(assert (=> b!6837094 (=> (not res!2792122) (not e!4123885))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!12078))

(declare-fun toList!10439 ((InoxSet Context!12078)) List!66265)

(assert (=> b!6837094 (= res!2792122 (= (toList!10439 z!1189) zl!343))))

(declare-fun b!6837095 () Bool)

(declare-fun res!2792119 () Bool)

(declare-fun e!4123890 () Bool)

(assert (=> b!6837095 (=> res!2792119 e!4123890)))

(declare-fun isEmpty!38528 (List!66265) Bool)

(assert (=> b!6837095 (= res!2792119 (not (isEmpty!38528 (t!380008 zl!343))))))

(declare-fun b!6837097 () Bool)

(declare-fun tp!1870972 () Bool)

(declare-fun tp!1870974 () Bool)

(assert (=> b!6837097 (= e!4123884 (and tp!1870972 tp!1870974))))

(declare-fun b!6837098 () Bool)

(assert (=> b!6837098 (= e!4123885 (not e!4123890))))

(declare-fun res!2792123 () Bool)

(assert (=> b!6837098 (=> res!2792123 e!4123890)))

(get-info :version)

(assert (=> b!6837098 (= res!2792123 (not ((_ is Cons!66141) zl!343)))))

(declare-fun r!7292 () Regex!16655)

(declare-datatypes ((List!66266 0))(
  ( (Nil!66142) (Cons!66142 (h!72590 C!33580) (t!380009 List!66266)) )
))
(declare-fun s!2326 () List!66266)

(declare-fun matchR!8838 (Regex!16655 List!66266) Bool)

(declare-fun matchRSpec!3756 (Regex!16655 List!66266) Bool)

(assert (=> b!6837098 (= (matchR!8838 r!7292 s!2326) (matchRSpec!3756 r!7292 s!2326))))

(declare-datatypes ((Unit!160009 0))(
  ( (Unit!160010) )
))
(declare-fun lt!2455062 () Unit!160009)

(declare-fun mainMatchTheorem!3756 (Regex!16655 List!66266) Unit!160009)

(assert (=> b!6837098 (= lt!2455062 (mainMatchTheorem!3756 r!7292 s!2326))))

(declare-fun setIsEmpty!46969 () Bool)

(declare-fun setRes!46969 () Bool)

(assert (=> setIsEmpty!46969 setRes!46969))

(declare-fun b!6837099 () Bool)

(declare-fun res!2792124 () Bool)

(assert (=> b!6837099 (=> res!2792124 e!4123890)))

(declare-fun generalisedConcat!2252 (List!66264) Regex!16655)

(assert (=> b!6837099 (= res!2792124 (not (= r!7292 (generalisedConcat!2252 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun e!4123889 () Bool)

(declare-fun setElem!46969 () Context!12078)

(declare-fun setNonEmpty!46969 () Bool)

(declare-fun tp!1870979 () Bool)

(assert (=> setNonEmpty!46969 (= setRes!46969 (and tp!1870979 (inv!84884 setElem!46969) e!4123889))))

(declare-fun setRest!46969 () (InoxSet Context!12078))

(assert (=> setNonEmpty!46969 (= z!1189 ((_ map or) (store ((as const (Array Context!12078 Bool)) false) setElem!46969 true) setRest!46969))))

(declare-fun b!6837100 () Bool)

(declare-fun tp!1870976 () Bool)

(assert (=> b!6837100 (= e!4123887 tp!1870976)))

(declare-fun b!6837101 () Bool)

(assert (=> b!6837101 (= e!4123890 (or ((_ is Cons!66140) (exprs!6539 (h!72589 zl!343))) (not (= r!7292 EmptyExpr!16655)) (= z!1189 (store ((as const (Array Context!12078 Bool)) false) (Context!12079 Nil!66140) true))))))

(declare-fun res!2792120 () Bool)

(assert (=> start!660776 (=> (not res!2792120) (not e!4123885))))

(declare-fun validRegex!8391 (Regex!16655) Bool)

(assert (=> start!660776 (= res!2792120 (validRegex!8391 r!7292))))

(assert (=> start!660776 e!4123885))

(assert (=> start!660776 e!4123884))

(declare-fun condSetEmpty!46969 () Bool)

(assert (=> start!660776 (= condSetEmpty!46969 (= z!1189 ((as const (Array Context!12078 Bool)) false)))))

(assert (=> start!660776 setRes!46969))

(assert (=> start!660776 e!4123888))

(assert (=> start!660776 e!4123886))

(declare-fun b!6837096 () Bool)

(assert (=> b!6837096 (= e!4123884 tp_is_empty!42563)))

(declare-fun b!6837102 () Bool)

(declare-fun tp!1870977 () Bool)

(assert (=> b!6837102 (= e!4123889 tp!1870977)))

(declare-fun b!6837103 () Bool)

(declare-fun res!2792121 () Bool)

(assert (=> b!6837103 (=> (not res!2792121) (not e!4123885))))

(declare-fun unfocusZipper!2397 (List!66265) Regex!16655)

(assert (=> b!6837103 (= res!2792121 (= r!7292 (unfocusZipper!2397 zl!343)))))

(assert (= (and start!660776 res!2792120) b!6837094))

(assert (= (and b!6837094 res!2792122) b!6837103))

(assert (= (and b!6837103 res!2792121) b!6837098))

(assert (= (and b!6837098 (not res!2792123)) b!6837095))

(assert (= (and b!6837095 (not res!2792119)) b!6837099))

(assert (= (and b!6837099 (not res!2792124)) b!6837101))

(assert (= (and start!660776 ((_ is ElementMatch!16655) r!7292)) b!6837096))

(assert (= (and start!660776 ((_ is Concat!25500) r!7292)) b!6837097))

(assert (= (and start!660776 ((_ is Star!16655) r!7292)) b!6837093))

(assert (= (and start!660776 ((_ is Union!16655) r!7292)) b!6837091))

(assert (= (and start!660776 condSetEmpty!46969) setIsEmpty!46969))

(assert (= (and start!660776 (not condSetEmpty!46969)) setNonEmpty!46969))

(assert (= setNonEmpty!46969 b!6837102))

(assert (= b!6837090 b!6837100))

(assert (= (and start!660776 ((_ is Cons!66141) zl!343)) b!6837090))

(assert (= (and start!660776 ((_ is Cons!66142) s!2326)) b!6837092))

(declare-fun m!7582400 () Bool)

(assert (=> setNonEmpty!46969 m!7582400))

(declare-fun m!7582402 () Bool)

(assert (=> start!660776 m!7582402))

(declare-fun m!7582404 () Bool)

(assert (=> b!6837094 m!7582404))

(declare-fun m!7582406 () Bool)

(assert (=> b!6837095 m!7582406))

(declare-fun m!7582408 () Bool)

(assert (=> b!6837090 m!7582408))

(declare-fun m!7582410 () Bool)

(assert (=> b!6837103 m!7582410))

(declare-fun m!7582412 () Bool)

(assert (=> b!6837098 m!7582412))

(declare-fun m!7582414 () Bool)

(assert (=> b!6837098 m!7582414))

(declare-fun m!7582416 () Bool)

(assert (=> b!6837098 m!7582416))

(declare-fun m!7582418 () Bool)

(assert (=> b!6837099 m!7582418))

(check-sat (not b!6837097) (not start!660776) (not b!6837090) (not b!6837098) (not b!6837103) (not b!6837094) (not b!6837093) (not b!6837091) (not b!6837099) (not b!6837092) (not b!6837100) tp_is_empty!42563 (not b!6837102) (not setNonEmpty!46969) (not b!6837095))
(check-sat)
(get-model)

(declare-fun b!6837206 () Bool)

(declare-fun e!4123947 () Bool)

(declare-fun derivativeStep!5307 (Regex!16655 C!33580) Regex!16655)

(declare-fun head!13697 (List!66266) C!33580)

(declare-fun tail!12782 (List!66266) List!66266)

(assert (=> b!6837206 (= e!4123947 (matchR!8838 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (tail!12782 s!2326)))))

(declare-fun bm!622706 () Bool)

(declare-fun call!622711 () Bool)

(declare-fun isEmpty!38531 (List!66266) Bool)

(assert (=> bm!622706 (= call!622711 (isEmpty!38531 s!2326))))

(declare-fun b!6837207 () Bool)

(declare-fun e!4123949 () Bool)

(assert (=> b!6837207 (= e!4123949 (= (head!13697 s!2326) (c!1273107 r!7292)))))

(declare-fun b!6837208 () Bool)

(declare-fun e!4123944 () Bool)

(assert (=> b!6837208 (= e!4123944 (not (= (head!13697 s!2326) (c!1273107 r!7292))))))

(declare-fun b!6837209 () Bool)

(declare-fun nullable!6622 (Regex!16655) Bool)

(assert (=> b!6837209 (= e!4123947 (nullable!6622 r!7292))))

(declare-fun b!6837210 () Bool)

(declare-fun res!2792183 () Bool)

(declare-fun e!4123946 () Bool)

(assert (=> b!6837210 (=> res!2792183 e!4123946)))

(assert (=> b!6837210 (= res!2792183 (not ((_ is ElementMatch!16655) r!7292)))))

(declare-fun e!4123950 () Bool)

(assert (=> b!6837210 (= e!4123950 e!4123946)))

(declare-fun d!2150427 () Bool)

(declare-fun e!4123945 () Bool)

(assert (=> d!2150427 e!4123945))

(declare-fun c!1273131 () Bool)

(assert (=> d!2150427 (= c!1273131 ((_ is EmptyExpr!16655) r!7292))))

(declare-fun lt!2455071 () Bool)

(assert (=> d!2150427 (= lt!2455071 e!4123947)))

(declare-fun c!1273132 () Bool)

(assert (=> d!2150427 (= c!1273132 (isEmpty!38531 s!2326))))

(assert (=> d!2150427 (validRegex!8391 r!7292)))

(assert (=> d!2150427 (= (matchR!8838 r!7292 s!2326) lt!2455071)))

(declare-fun b!6837211 () Bool)

(assert (=> b!6837211 (= e!4123950 (not lt!2455071))))

(declare-fun b!6837212 () Bool)

(declare-fun res!2792181 () Bool)

(assert (=> b!6837212 (=> (not res!2792181) (not e!4123949))))

(assert (=> b!6837212 (= res!2792181 (not call!622711))))

(declare-fun b!6837213 () Bool)

(declare-fun res!2792184 () Bool)

(assert (=> b!6837213 (=> (not res!2792184) (not e!4123949))))

(assert (=> b!6837213 (= res!2792184 (isEmpty!38531 (tail!12782 s!2326)))))

(declare-fun b!6837214 () Bool)

(declare-fun res!2792186 () Bool)

(assert (=> b!6837214 (=> res!2792186 e!4123946)))

(assert (=> b!6837214 (= res!2792186 e!4123949)))

(declare-fun res!2792187 () Bool)

(assert (=> b!6837214 (=> (not res!2792187) (not e!4123949))))

(assert (=> b!6837214 (= res!2792187 lt!2455071)))

(declare-fun b!6837215 () Bool)

(assert (=> b!6837215 (= e!4123945 e!4123950)))

(declare-fun c!1273133 () Bool)

(assert (=> b!6837215 (= c!1273133 ((_ is EmptyLang!16655) r!7292))))

(declare-fun b!6837216 () Bool)

(declare-fun e!4123948 () Bool)

(assert (=> b!6837216 (= e!4123948 e!4123944)))

(declare-fun res!2792188 () Bool)

(assert (=> b!6837216 (=> res!2792188 e!4123944)))

(assert (=> b!6837216 (= res!2792188 call!622711)))

(declare-fun b!6837217 () Bool)

(assert (=> b!6837217 (= e!4123946 e!4123948)))

(declare-fun res!2792185 () Bool)

(assert (=> b!6837217 (=> (not res!2792185) (not e!4123948))))

(assert (=> b!6837217 (= res!2792185 (not lt!2455071))))

(declare-fun b!6837218 () Bool)

(declare-fun res!2792182 () Bool)

(assert (=> b!6837218 (=> res!2792182 e!4123944)))

(assert (=> b!6837218 (= res!2792182 (not (isEmpty!38531 (tail!12782 s!2326))))))

(declare-fun b!6837219 () Bool)

(assert (=> b!6837219 (= e!4123945 (= lt!2455071 call!622711))))

(assert (= (and d!2150427 c!1273132) b!6837209))

(assert (= (and d!2150427 (not c!1273132)) b!6837206))

(assert (= (and d!2150427 c!1273131) b!6837219))

(assert (= (and d!2150427 (not c!1273131)) b!6837215))

(assert (= (and b!6837215 c!1273133) b!6837211))

(assert (= (and b!6837215 (not c!1273133)) b!6837210))

(assert (= (and b!6837210 (not res!2792183)) b!6837214))

(assert (= (and b!6837214 res!2792187) b!6837212))

(assert (= (and b!6837212 res!2792181) b!6837213))

(assert (= (and b!6837213 res!2792184) b!6837207))

(assert (= (and b!6837214 (not res!2792186)) b!6837217))

(assert (= (and b!6837217 res!2792185) b!6837216))

(assert (= (and b!6837216 (not res!2792188)) b!6837218))

(assert (= (and b!6837218 (not res!2792182)) b!6837208))

(assert (= (or b!6837219 b!6837212 b!6837216) bm!622706))

(declare-fun m!7582442 () Bool)

(assert (=> bm!622706 m!7582442))

(declare-fun m!7582444 () Bool)

(assert (=> b!6837213 m!7582444))

(assert (=> b!6837213 m!7582444))

(declare-fun m!7582446 () Bool)

(assert (=> b!6837213 m!7582446))

(declare-fun m!7582448 () Bool)

(assert (=> b!6837206 m!7582448))

(assert (=> b!6837206 m!7582448))

(declare-fun m!7582450 () Bool)

(assert (=> b!6837206 m!7582450))

(assert (=> b!6837206 m!7582444))

(assert (=> b!6837206 m!7582450))

(assert (=> b!6837206 m!7582444))

(declare-fun m!7582452 () Bool)

(assert (=> b!6837206 m!7582452))

(assert (=> b!6837218 m!7582444))

(assert (=> b!6837218 m!7582444))

(assert (=> b!6837218 m!7582446))

(assert (=> b!6837208 m!7582448))

(assert (=> b!6837207 m!7582448))

(assert (=> d!2150427 m!7582442))

(assert (=> d!2150427 m!7582402))

(declare-fun m!7582454 () Bool)

(assert (=> b!6837209 m!7582454))

(assert (=> b!6837098 d!2150427))

(declare-fun b!6837381 () Bool)

(assert (=> b!6837381 true))

(assert (=> b!6837381 true))

(declare-fun bs!1828666 () Bool)

(declare-fun b!6837389 () Bool)

(assert (= bs!1828666 (and b!6837389 b!6837381)))

(declare-fun lambda!386654 () Int)

(declare-fun lambda!386653 () Int)

(assert (=> bs!1828666 (not (= lambda!386654 lambda!386653))))

(assert (=> b!6837389 true))

(assert (=> b!6837389 true))

(declare-fun d!2150433 () Bool)

(declare-fun c!1273164 () Bool)

(assert (=> d!2150433 (= c!1273164 ((_ is EmptyExpr!16655) r!7292))))

(declare-fun e!4124047 () Bool)

(assert (=> d!2150433 (= (matchRSpec!3756 r!7292 s!2326) e!4124047)))

(declare-fun e!4124045 () Bool)

(declare-fun call!622728 () Bool)

(assert (=> b!6837381 (= e!4124045 call!622728)))

(declare-fun b!6837382 () Bool)

(declare-fun res!2792233 () Bool)

(assert (=> b!6837382 (=> res!2792233 e!4124045)))

(declare-fun call!622727 () Bool)

(assert (=> b!6837382 (= res!2792233 call!622727)))

(declare-fun e!4124041 () Bool)

(assert (=> b!6837382 (= e!4124041 e!4124045)))

(declare-fun b!6837383 () Bool)

(assert (=> b!6837383 (= e!4124047 call!622727)))

(declare-fun b!6837384 () Bool)

(declare-fun e!4124046 () Bool)

(declare-fun e!4124044 () Bool)

(assert (=> b!6837384 (= e!4124046 e!4124044)))

(declare-fun res!2792232 () Bool)

(assert (=> b!6837384 (= res!2792232 (matchRSpec!3756 (regOne!33823 r!7292) s!2326))))

(assert (=> b!6837384 (=> res!2792232 e!4124044)))

(declare-fun b!6837385 () Bool)

(assert (=> b!6837385 (= e!4124044 (matchRSpec!3756 (regTwo!33823 r!7292) s!2326))))

(declare-fun b!6837386 () Bool)

(declare-fun e!4124042 () Bool)

(assert (=> b!6837386 (= e!4124047 e!4124042)))

(declare-fun res!2792234 () Bool)

(assert (=> b!6837386 (= res!2792234 (not ((_ is EmptyLang!16655) r!7292)))))

(assert (=> b!6837386 (=> (not res!2792234) (not e!4124042))))

(declare-fun b!6837387 () Bool)

(declare-fun c!1273165 () Bool)

(assert (=> b!6837387 (= c!1273165 ((_ is ElementMatch!16655) r!7292))))

(declare-fun e!4124043 () Bool)

(assert (=> b!6837387 (= e!4124042 e!4124043)))

(declare-fun b!6837388 () Bool)

(assert (=> b!6837388 (= e!4124046 e!4124041)))

(declare-fun c!1273167 () Bool)

(assert (=> b!6837388 (= c!1273167 ((_ is Star!16655) r!7292))))

(declare-fun bm!622722 () Bool)

(declare-fun Exists!3723 (Int) Bool)

(assert (=> bm!622722 (= call!622728 (Exists!3723 (ite c!1273167 lambda!386653 lambda!386654)))))

(assert (=> b!6837389 (= e!4124041 call!622728)))

(declare-fun bm!622723 () Bool)

(assert (=> bm!622723 (= call!622727 (isEmpty!38531 s!2326))))

(declare-fun b!6837390 () Bool)

(declare-fun c!1273166 () Bool)

(assert (=> b!6837390 (= c!1273166 ((_ is Union!16655) r!7292))))

(assert (=> b!6837390 (= e!4124043 e!4124046)))

(declare-fun b!6837391 () Bool)

(assert (=> b!6837391 (= e!4124043 (= s!2326 (Cons!66142 (c!1273107 r!7292) Nil!66142)))))

(assert (= (and d!2150433 c!1273164) b!6837383))

(assert (= (and d!2150433 (not c!1273164)) b!6837386))

(assert (= (and b!6837386 res!2792234) b!6837387))

(assert (= (and b!6837387 c!1273165) b!6837391))

(assert (= (and b!6837387 (not c!1273165)) b!6837390))

(assert (= (and b!6837390 c!1273166) b!6837384))

(assert (= (and b!6837390 (not c!1273166)) b!6837388))

(assert (= (and b!6837384 (not res!2792232)) b!6837385))

(assert (= (and b!6837388 c!1273167) b!6837382))

(assert (= (and b!6837388 (not c!1273167)) b!6837389))

(assert (= (and b!6837382 (not res!2792233)) b!6837381))

(assert (= (or b!6837381 b!6837389) bm!622722))

(assert (= (or b!6837383 b!6837382) bm!622723))

(declare-fun m!7582502 () Bool)

(assert (=> b!6837384 m!7582502))

(declare-fun m!7582504 () Bool)

(assert (=> b!6837385 m!7582504))

(declare-fun m!7582506 () Bool)

(assert (=> bm!622722 m!7582506))

(assert (=> bm!622723 m!7582442))

(assert (=> b!6837098 d!2150433))

(declare-fun d!2150445 () Bool)

(assert (=> d!2150445 (= (matchR!8838 r!7292 s!2326) (matchRSpec!3756 r!7292 s!2326))))

(declare-fun lt!2455083 () Unit!160009)

(declare-fun choose!50998 (Regex!16655 List!66266) Unit!160009)

(assert (=> d!2150445 (= lt!2455083 (choose!50998 r!7292 s!2326))))

(assert (=> d!2150445 (validRegex!8391 r!7292)))

(assert (=> d!2150445 (= (mainMatchTheorem!3756 r!7292 s!2326) lt!2455083)))

(declare-fun bs!1828667 () Bool)

(assert (= bs!1828667 d!2150445))

(assert (=> bs!1828667 m!7582412))

(assert (=> bs!1828667 m!7582414))

(declare-fun m!7582508 () Bool)

(assert (=> bs!1828667 m!7582508))

(assert (=> bs!1828667 m!7582402))

(assert (=> b!6837098 d!2150445))

(declare-fun c!1273172 () Bool)

(declare-fun call!622735 () Bool)

(declare-fun c!1273173 () Bool)

(declare-fun bm!622730 () Bool)

(assert (=> bm!622730 (= call!622735 (validRegex!8391 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))

(declare-fun b!6837414 () Bool)

(declare-fun res!2792247 () Bool)

(declare-fun e!4124068 () Bool)

(assert (=> b!6837414 (=> res!2792247 e!4124068)))

(assert (=> b!6837414 (= res!2792247 (not ((_ is Concat!25500) r!7292)))))

(declare-fun e!4124064 () Bool)

(assert (=> b!6837414 (= e!4124064 e!4124068)))

(declare-fun b!6837415 () Bool)

(declare-fun e!4124067 () Bool)

(declare-fun e!4124066 () Bool)

(assert (=> b!6837415 (= e!4124067 e!4124066)))

(declare-fun res!2792245 () Bool)

(assert (=> b!6837415 (= res!2792245 (not (nullable!6622 (reg!16984 r!7292))))))

(assert (=> b!6837415 (=> (not res!2792245) (not e!4124066))))

(declare-fun b!6837416 () Bool)

(declare-fun e!4124062 () Bool)

(declare-fun call!622736 () Bool)

(assert (=> b!6837416 (= e!4124062 call!622736)))

(declare-fun bm!622731 () Bool)

(declare-fun call!622737 () Bool)

(assert (=> bm!622731 (= call!622737 call!622735)))

(declare-fun b!6837417 () Bool)

(assert (=> b!6837417 (= e!4124066 call!622735)))

(declare-fun bm!622732 () Bool)

(assert (=> bm!622732 (= call!622736 (validRegex!8391 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))

(declare-fun b!6837418 () Bool)

(declare-fun e!4124063 () Bool)

(assert (=> b!6837418 (= e!4124063 call!622736)))

(declare-fun b!6837419 () Bool)

(assert (=> b!6837419 (= e!4124067 e!4124064)))

(assert (=> b!6837419 (= c!1273173 ((_ is Union!16655) r!7292))))

(declare-fun b!6837420 () Bool)

(declare-fun e!4124065 () Bool)

(assert (=> b!6837420 (= e!4124065 e!4124067)))

(assert (=> b!6837420 (= c!1273172 ((_ is Star!16655) r!7292))))

(declare-fun b!6837421 () Bool)

(assert (=> b!6837421 (= e!4124068 e!4124063)))

(declare-fun res!2792246 () Bool)

(assert (=> b!6837421 (=> (not res!2792246) (not e!4124063))))

(assert (=> b!6837421 (= res!2792246 call!622737)))

(declare-fun d!2150447 () Bool)

(declare-fun res!2792248 () Bool)

(assert (=> d!2150447 (=> res!2792248 e!4124065)))

(assert (=> d!2150447 (= res!2792248 ((_ is ElementMatch!16655) r!7292))))

(assert (=> d!2150447 (= (validRegex!8391 r!7292) e!4124065)))

(declare-fun b!6837422 () Bool)

(declare-fun res!2792249 () Bool)

(assert (=> b!6837422 (=> (not res!2792249) (not e!4124062))))

(assert (=> b!6837422 (= res!2792249 call!622737)))

(assert (=> b!6837422 (= e!4124064 e!4124062)))

(assert (= (and d!2150447 (not res!2792248)) b!6837420))

(assert (= (and b!6837420 c!1273172) b!6837415))

(assert (= (and b!6837420 (not c!1273172)) b!6837419))

(assert (= (and b!6837415 res!2792245) b!6837417))

(assert (= (and b!6837419 c!1273173) b!6837422))

(assert (= (and b!6837419 (not c!1273173)) b!6837414))

(assert (= (and b!6837422 res!2792249) b!6837416))

(assert (= (and b!6837414 (not res!2792247)) b!6837421))

(assert (= (and b!6837421 res!2792246) b!6837418))

(assert (= (or b!6837416 b!6837418) bm!622732))

(assert (= (or b!6837422 b!6837421) bm!622731))

(assert (= (or b!6837417 bm!622731) bm!622730))

(declare-fun m!7582510 () Bool)

(assert (=> bm!622730 m!7582510))

(declare-fun m!7582512 () Bool)

(assert (=> b!6837415 m!7582512))

(declare-fun m!7582514 () Bool)

(assert (=> bm!622732 m!7582514))

(assert (=> start!660776 d!2150447))

(declare-fun d!2150449 () Bool)

(declare-fun lambda!386657 () Int)

(declare-fun forall!15835 (List!66264 Int) Bool)

(assert (=> d!2150449 (= (inv!84884 setElem!46969) (forall!15835 (exprs!6539 setElem!46969) lambda!386657))))

(declare-fun bs!1828668 () Bool)

(assert (= bs!1828668 d!2150449))

(declare-fun m!7582516 () Bool)

(assert (=> bs!1828668 m!7582516))

(assert (=> setNonEmpty!46969 d!2150449))

(declare-fun bs!1828669 () Bool)

(declare-fun d!2150451 () Bool)

(assert (= bs!1828669 (and d!2150451 d!2150449)))

(declare-fun lambda!386658 () Int)

(assert (=> bs!1828669 (= lambda!386658 lambda!386657)))

(assert (=> d!2150451 (= (inv!84884 (h!72589 zl!343)) (forall!15835 (exprs!6539 (h!72589 zl!343)) lambda!386658))))

(declare-fun bs!1828670 () Bool)

(assert (= bs!1828670 d!2150451))

(declare-fun m!7582518 () Bool)

(assert (=> bs!1828670 m!7582518))

(assert (=> b!6837090 d!2150451))

(declare-fun d!2150453 () Bool)

(assert (=> d!2150453 (= (isEmpty!38528 (t!380008 zl!343)) ((_ is Nil!66141) (t!380008 zl!343)))))

(assert (=> b!6837095 d!2150453))

(declare-fun bs!1828671 () Bool)

(declare-fun d!2150455 () Bool)

(assert (= bs!1828671 (and d!2150455 d!2150449)))

(declare-fun lambda!386661 () Int)

(assert (=> bs!1828671 (= lambda!386661 lambda!386657)))

(declare-fun bs!1828672 () Bool)

(assert (= bs!1828672 (and d!2150455 d!2150451)))

(assert (=> bs!1828672 (= lambda!386661 lambda!386658)))

(declare-fun b!6837444 () Bool)

(declare-fun e!4124083 () Bool)

(declare-fun isEmpty!38532 (List!66264) Bool)

(assert (=> b!6837444 (= e!4124083 (isEmpty!38532 (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(declare-fun b!6837445 () Bool)

(declare-fun e!4124086 () Bool)

(declare-fun lt!2455086 () Regex!16655)

(declare-fun isConcat!1524 (Regex!16655) Bool)

(assert (=> b!6837445 (= e!4124086 (isConcat!1524 lt!2455086))))

(declare-fun b!6837446 () Bool)

(declare-fun e!4124084 () Bool)

(declare-fun e!4124085 () Bool)

(assert (=> b!6837446 (= e!4124084 e!4124085)))

(declare-fun c!1273183 () Bool)

(assert (=> b!6837446 (= c!1273183 (isEmpty!38532 (exprs!6539 (h!72589 zl!343))))))

(declare-fun b!6837447 () Bool)

(assert (=> b!6837447 (= e!4124085 e!4124086)))

(declare-fun c!1273184 () Bool)

(declare-fun tail!12783 (List!66264) List!66264)

(assert (=> b!6837447 (= c!1273184 (isEmpty!38532 (tail!12783 (exprs!6539 (h!72589 zl!343)))))))

(declare-fun b!6837448 () Bool)

(declare-fun e!4124082 () Regex!16655)

(assert (=> b!6837448 (= e!4124082 (h!72588 (exprs!6539 (h!72589 zl!343))))))

(declare-fun b!6837449 () Bool)

(declare-fun head!13698 (List!66264) Regex!16655)

(assert (=> b!6837449 (= e!4124086 (= lt!2455086 (head!13698 (exprs!6539 (h!72589 zl!343)))))))

(declare-fun b!6837443 () Bool)

(declare-fun isEmptyExpr!2001 (Regex!16655) Bool)

(assert (=> b!6837443 (= e!4124085 (isEmptyExpr!2001 lt!2455086))))

(assert (=> d!2150455 e!4124084))

(declare-fun res!2792255 () Bool)

(assert (=> d!2150455 (=> (not res!2792255) (not e!4124084))))

(assert (=> d!2150455 (= res!2792255 (validRegex!8391 lt!2455086))))

(assert (=> d!2150455 (= lt!2455086 e!4124082)))

(declare-fun c!1273182 () Bool)

(assert (=> d!2150455 (= c!1273182 e!4124083)))

(declare-fun res!2792254 () Bool)

(assert (=> d!2150455 (=> (not res!2792254) (not e!4124083))))

(assert (=> d!2150455 (= res!2792254 ((_ is Cons!66140) (exprs!6539 (h!72589 zl!343))))))

(assert (=> d!2150455 (forall!15835 (exprs!6539 (h!72589 zl!343)) lambda!386661)))

(assert (=> d!2150455 (= (generalisedConcat!2252 (exprs!6539 (h!72589 zl!343))) lt!2455086)))

(declare-fun b!6837450 () Bool)

(declare-fun e!4124081 () Regex!16655)

(assert (=> b!6837450 (= e!4124081 (Concat!25500 (h!72588 (exprs!6539 (h!72589 zl!343))) (generalisedConcat!2252 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun b!6837451 () Bool)

(assert (=> b!6837451 (= e!4124081 EmptyExpr!16655)))

(declare-fun b!6837452 () Bool)

(assert (=> b!6837452 (= e!4124082 e!4124081)))

(declare-fun c!1273185 () Bool)

(assert (=> b!6837452 (= c!1273185 ((_ is Cons!66140) (exprs!6539 (h!72589 zl!343))))))

(assert (= (and d!2150455 res!2792254) b!6837444))

(assert (= (and d!2150455 c!1273182) b!6837448))

(assert (= (and d!2150455 (not c!1273182)) b!6837452))

(assert (= (and b!6837452 c!1273185) b!6837450))

(assert (= (and b!6837452 (not c!1273185)) b!6837451))

(assert (= (and d!2150455 res!2792255) b!6837446))

(assert (= (and b!6837446 c!1273183) b!6837443))

(assert (= (and b!6837446 (not c!1273183)) b!6837447))

(assert (= (and b!6837447 c!1273184) b!6837449))

(assert (= (and b!6837447 (not c!1273184)) b!6837445))

(declare-fun m!7582520 () Bool)

(assert (=> b!6837445 m!7582520))

(declare-fun m!7582522 () Bool)

(assert (=> d!2150455 m!7582522))

(declare-fun m!7582524 () Bool)

(assert (=> d!2150455 m!7582524))

(declare-fun m!7582526 () Bool)

(assert (=> b!6837446 m!7582526))

(declare-fun m!7582528 () Bool)

(assert (=> b!6837447 m!7582528))

(assert (=> b!6837447 m!7582528))

(declare-fun m!7582530 () Bool)

(assert (=> b!6837447 m!7582530))

(declare-fun m!7582532 () Bool)

(assert (=> b!6837443 m!7582532))

(declare-fun m!7582534 () Bool)

(assert (=> b!6837449 m!7582534))

(declare-fun m!7582536 () Bool)

(assert (=> b!6837450 m!7582536))

(declare-fun m!7582538 () Bool)

(assert (=> b!6837444 m!7582538))

(assert (=> b!6837099 d!2150455))

(declare-fun d!2150457 () Bool)

(declare-fun lt!2455089 () Regex!16655)

(assert (=> d!2150457 (validRegex!8391 lt!2455089)))

(declare-fun generalisedUnion!2499 (List!66264) Regex!16655)

(declare-fun unfocusZipperList!2076 (List!66265) List!66264)

(assert (=> d!2150457 (= lt!2455089 (generalisedUnion!2499 (unfocusZipperList!2076 zl!343)))))

(assert (=> d!2150457 (= (unfocusZipper!2397 zl!343) lt!2455089)))

(declare-fun bs!1828673 () Bool)

(assert (= bs!1828673 d!2150457))

(declare-fun m!7582540 () Bool)

(assert (=> bs!1828673 m!7582540))

(declare-fun m!7582542 () Bool)

(assert (=> bs!1828673 m!7582542))

(assert (=> bs!1828673 m!7582542))

(declare-fun m!7582544 () Bool)

(assert (=> bs!1828673 m!7582544))

(assert (=> b!6837103 d!2150457))

(declare-fun d!2150459 () Bool)

(declare-fun e!4124089 () Bool)

(assert (=> d!2150459 e!4124089))

(declare-fun res!2792258 () Bool)

(assert (=> d!2150459 (=> (not res!2792258) (not e!4124089))))

(declare-fun lt!2455092 () List!66265)

(declare-fun noDuplicate!2428 (List!66265) Bool)

(assert (=> d!2150459 (= res!2792258 (noDuplicate!2428 lt!2455092))))

(declare-fun choose!50999 ((InoxSet Context!12078)) List!66265)

(assert (=> d!2150459 (= lt!2455092 (choose!50999 z!1189))))

(assert (=> d!2150459 (= (toList!10439 z!1189) lt!2455092)))

(declare-fun b!6837455 () Bool)

(declare-fun content!12963 (List!66265) (InoxSet Context!12078))

(assert (=> b!6837455 (= e!4124089 (= (content!12963 lt!2455092) z!1189))))

(assert (= (and d!2150459 res!2792258) b!6837455))

(declare-fun m!7582546 () Bool)

(assert (=> d!2150459 m!7582546))

(declare-fun m!7582548 () Bool)

(assert (=> d!2150459 m!7582548))

(declare-fun m!7582550 () Bool)

(assert (=> b!6837455 m!7582550))

(assert (=> b!6837094 d!2150459))

(declare-fun b!6837460 () Bool)

(declare-fun e!4124092 () Bool)

(declare-fun tp!1871040 () Bool)

(assert (=> b!6837460 (= e!4124092 (and tp_is_empty!42563 tp!1871040))))

(assert (=> b!6837092 (= tp!1870970 e!4124092)))

(assert (= (and b!6837092 ((_ is Cons!66142) (t!380009 s!2326))) b!6837460))

(declare-fun b!6837471 () Bool)

(declare-fun e!4124095 () Bool)

(assert (=> b!6837471 (= e!4124095 tp_is_empty!42563)))

(declare-fun b!6837472 () Bool)

(declare-fun tp!1871052 () Bool)

(declare-fun tp!1871054 () Bool)

(assert (=> b!6837472 (= e!4124095 (and tp!1871052 tp!1871054))))

(assert (=> b!6837097 (= tp!1870972 e!4124095)))

(declare-fun b!6837473 () Bool)

(declare-fun tp!1871055 () Bool)

(assert (=> b!6837473 (= e!4124095 tp!1871055)))

(declare-fun b!6837474 () Bool)

(declare-fun tp!1871053 () Bool)

(declare-fun tp!1871051 () Bool)

(assert (=> b!6837474 (= e!4124095 (and tp!1871053 tp!1871051))))

(assert (= (and b!6837097 ((_ is ElementMatch!16655) (regOne!33822 r!7292))) b!6837471))

(assert (= (and b!6837097 ((_ is Concat!25500) (regOne!33822 r!7292))) b!6837472))

(assert (= (and b!6837097 ((_ is Star!16655) (regOne!33822 r!7292))) b!6837473))

(assert (= (and b!6837097 ((_ is Union!16655) (regOne!33822 r!7292))) b!6837474))

(declare-fun b!6837475 () Bool)

(declare-fun e!4124096 () Bool)

(assert (=> b!6837475 (= e!4124096 tp_is_empty!42563)))

(declare-fun b!6837476 () Bool)

(declare-fun tp!1871057 () Bool)

(declare-fun tp!1871059 () Bool)

(assert (=> b!6837476 (= e!4124096 (and tp!1871057 tp!1871059))))

(assert (=> b!6837097 (= tp!1870974 e!4124096)))

(declare-fun b!6837477 () Bool)

(declare-fun tp!1871060 () Bool)

(assert (=> b!6837477 (= e!4124096 tp!1871060)))

(declare-fun b!6837478 () Bool)

(declare-fun tp!1871058 () Bool)

(declare-fun tp!1871056 () Bool)

(assert (=> b!6837478 (= e!4124096 (and tp!1871058 tp!1871056))))

(assert (= (and b!6837097 ((_ is ElementMatch!16655) (regTwo!33822 r!7292))) b!6837475))

(assert (= (and b!6837097 ((_ is Concat!25500) (regTwo!33822 r!7292))) b!6837476))

(assert (= (and b!6837097 ((_ is Star!16655) (regTwo!33822 r!7292))) b!6837477))

(assert (= (and b!6837097 ((_ is Union!16655) (regTwo!33822 r!7292))) b!6837478))

(declare-fun b!6837483 () Bool)

(declare-fun e!4124099 () Bool)

(declare-fun tp!1871065 () Bool)

(declare-fun tp!1871066 () Bool)

(assert (=> b!6837483 (= e!4124099 (and tp!1871065 tp!1871066))))

(assert (=> b!6837100 (= tp!1870976 e!4124099)))

(assert (= (and b!6837100 ((_ is Cons!66140) (exprs!6539 (h!72589 zl!343)))) b!6837483))

(declare-fun b!6837484 () Bool)

(declare-fun e!4124100 () Bool)

(assert (=> b!6837484 (= e!4124100 tp_is_empty!42563)))

(declare-fun b!6837485 () Bool)

(declare-fun tp!1871068 () Bool)

(declare-fun tp!1871070 () Bool)

(assert (=> b!6837485 (= e!4124100 (and tp!1871068 tp!1871070))))

(assert (=> b!6837091 (= tp!1870973 e!4124100)))

(declare-fun b!6837486 () Bool)

(declare-fun tp!1871071 () Bool)

(assert (=> b!6837486 (= e!4124100 tp!1871071)))

(declare-fun b!6837487 () Bool)

(declare-fun tp!1871069 () Bool)

(declare-fun tp!1871067 () Bool)

(assert (=> b!6837487 (= e!4124100 (and tp!1871069 tp!1871067))))

(assert (= (and b!6837091 ((_ is ElementMatch!16655) (regOne!33823 r!7292))) b!6837484))

(assert (= (and b!6837091 ((_ is Concat!25500) (regOne!33823 r!7292))) b!6837485))

(assert (= (and b!6837091 ((_ is Star!16655) (regOne!33823 r!7292))) b!6837486))

(assert (= (and b!6837091 ((_ is Union!16655) (regOne!33823 r!7292))) b!6837487))

(declare-fun b!6837488 () Bool)

(declare-fun e!4124101 () Bool)

(assert (=> b!6837488 (= e!4124101 tp_is_empty!42563)))

(declare-fun b!6837489 () Bool)

(declare-fun tp!1871073 () Bool)

(declare-fun tp!1871075 () Bool)

(assert (=> b!6837489 (= e!4124101 (and tp!1871073 tp!1871075))))

(assert (=> b!6837091 (= tp!1870978 e!4124101)))

(declare-fun b!6837490 () Bool)

(declare-fun tp!1871076 () Bool)

(assert (=> b!6837490 (= e!4124101 tp!1871076)))

(declare-fun b!6837491 () Bool)

(declare-fun tp!1871074 () Bool)

(declare-fun tp!1871072 () Bool)

(assert (=> b!6837491 (= e!4124101 (and tp!1871074 tp!1871072))))

(assert (= (and b!6837091 ((_ is ElementMatch!16655) (regTwo!33823 r!7292))) b!6837488))

(assert (= (and b!6837091 ((_ is Concat!25500) (regTwo!33823 r!7292))) b!6837489))

(assert (= (and b!6837091 ((_ is Star!16655) (regTwo!33823 r!7292))) b!6837490))

(assert (= (and b!6837091 ((_ is Union!16655) (regTwo!33823 r!7292))) b!6837491))

(declare-fun condSetEmpty!46975 () Bool)

(assert (=> setNonEmpty!46969 (= condSetEmpty!46975 (= setRest!46969 ((as const (Array Context!12078 Bool)) false)))))

(declare-fun setRes!46975 () Bool)

(assert (=> setNonEmpty!46969 (= tp!1870979 setRes!46975)))

(declare-fun setIsEmpty!46975 () Bool)

(assert (=> setIsEmpty!46975 setRes!46975))

(declare-fun setElem!46975 () Context!12078)

(declare-fun tp!1871081 () Bool)

(declare-fun setNonEmpty!46975 () Bool)

(declare-fun e!4124104 () Bool)

(assert (=> setNonEmpty!46975 (= setRes!46975 (and tp!1871081 (inv!84884 setElem!46975) e!4124104))))

(declare-fun setRest!46975 () (InoxSet Context!12078))

(assert (=> setNonEmpty!46975 (= setRest!46969 ((_ map or) (store ((as const (Array Context!12078 Bool)) false) setElem!46975 true) setRest!46975))))

(declare-fun b!6837496 () Bool)

(declare-fun tp!1871082 () Bool)

(assert (=> b!6837496 (= e!4124104 tp!1871082)))

(assert (= (and setNonEmpty!46969 condSetEmpty!46975) setIsEmpty!46975))

(assert (= (and setNonEmpty!46969 (not condSetEmpty!46975)) setNonEmpty!46975))

(assert (= setNonEmpty!46975 b!6837496))

(declare-fun m!7582552 () Bool)

(assert (=> setNonEmpty!46975 m!7582552))

(declare-fun b!6837504 () Bool)

(declare-fun e!4124110 () Bool)

(declare-fun tp!1871087 () Bool)

(assert (=> b!6837504 (= e!4124110 tp!1871087)))

(declare-fun tp!1871088 () Bool)

(declare-fun e!4124109 () Bool)

(declare-fun b!6837503 () Bool)

(assert (=> b!6837503 (= e!4124109 (and (inv!84884 (h!72589 (t!380008 zl!343))) e!4124110 tp!1871088))))

(assert (=> b!6837090 (= tp!1870971 e!4124109)))

(assert (= b!6837503 b!6837504))

(assert (= (and b!6837090 ((_ is Cons!66141) (t!380008 zl!343))) b!6837503))

(declare-fun m!7582554 () Bool)

(assert (=> b!6837503 m!7582554))

(declare-fun b!6837505 () Bool)

(declare-fun e!4124111 () Bool)

(declare-fun tp!1871089 () Bool)

(declare-fun tp!1871090 () Bool)

(assert (=> b!6837505 (= e!4124111 (and tp!1871089 tp!1871090))))

(assert (=> b!6837102 (= tp!1870977 e!4124111)))

(assert (= (and b!6837102 ((_ is Cons!66140) (exprs!6539 setElem!46969))) b!6837505))

(declare-fun b!6837506 () Bool)

(declare-fun e!4124112 () Bool)

(assert (=> b!6837506 (= e!4124112 tp_is_empty!42563)))

(declare-fun b!6837507 () Bool)

(declare-fun tp!1871092 () Bool)

(declare-fun tp!1871094 () Bool)

(assert (=> b!6837507 (= e!4124112 (and tp!1871092 tp!1871094))))

(assert (=> b!6837093 (= tp!1870975 e!4124112)))

(declare-fun b!6837508 () Bool)

(declare-fun tp!1871095 () Bool)

(assert (=> b!6837508 (= e!4124112 tp!1871095)))

(declare-fun b!6837509 () Bool)

(declare-fun tp!1871093 () Bool)

(declare-fun tp!1871091 () Bool)

(assert (=> b!6837509 (= e!4124112 (and tp!1871093 tp!1871091))))

(assert (= (and b!6837093 ((_ is ElementMatch!16655) (reg!16984 r!7292))) b!6837506))

(assert (= (and b!6837093 ((_ is Concat!25500) (reg!16984 r!7292))) b!6837507))

(assert (= (and b!6837093 ((_ is Star!16655) (reg!16984 r!7292))) b!6837508))

(assert (= (and b!6837093 ((_ is Union!16655) (reg!16984 r!7292))) b!6837509))

(check-sat (not b!6837213) (not b!6837508) (not b!6837504) (not b!6837218) (not d!2150455) (not b!6837472) (not b!6837490) (not b!6837483) (not b!6837473) (not b!6837208) (not bm!622706) (not bm!622723) (not b!6837476) (not b!6837209) (not b!6837384) (not d!2150451) (not b!6837447) (not b!6837446) (not bm!622732) (not b!6837507) (not b!6837415) (not b!6837489) (not b!6837455) (not d!2150449) (not b!6837496) tp_is_empty!42563 (not b!6837477) (not b!6837450) (not b!6837503) (not d!2150427) (not bm!622730) (not b!6837444) (not b!6837385) (not b!6837485) (not b!6837478) (not b!6837474) (not b!6837449) (not setNonEmpty!46975) (not b!6837460) (not b!6837206) (not b!6837445) (not b!6837486) (not b!6837487) (not b!6837505) (not d!2150445) (not d!2150457) (not bm!622722) (not b!6837207) (not b!6837491) (not b!6837443) (not b!6837509) (not d!2150459))
(check-sat)
(get-model)

(declare-fun c!1273243 () Bool)

(declare-fun call!622767 () Bool)

(declare-fun bm!622762 () Bool)

(declare-fun c!1273242 () Bool)

(assert (=> bm!622762 (= call!622767 (validRegex!8391 (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))))))

(declare-fun b!6837805 () Bool)

(declare-fun res!2792325 () Bool)

(declare-fun e!4124273 () Bool)

(assert (=> b!6837805 (=> res!2792325 e!4124273)))

(assert (=> b!6837805 (= res!2792325 (not ((_ is Concat!25500) (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))))

(declare-fun e!4124269 () Bool)

(assert (=> b!6837805 (= e!4124269 e!4124273)))

(declare-fun b!6837806 () Bool)

(declare-fun e!4124272 () Bool)

(declare-fun e!4124271 () Bool)

(assert (=> b!6837806 (= e!4124272 e!4124271)))

(declare-fun res!2792323 () Bool)

(assert (=> b!6837806 (= res!2792323 (not (nullable!6622 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))))

(assert (=> b!6837806 (=> (not res!2792323) (not e!4124271))))

(declare-fun b!6837807 () Bool)

(declare-fun e!4124267 () Bool)

(declare-fun call!622768 () Bool)

(assert (=> b!6837807 (= e!4124267 call!622768)))

(declare-fun bm!622763 () Bool)

(declare-fun call!622769 () Bool)

(assert (=> bm!622763 (= call!622769 call!622767)))

(declare-fun b!6837808 () Bool)

(assert (=> b!6837808 (= e!4124271 call!622767)))

(declare-fun bm!622764 () Bool)

(assert (=> bm!622764 (= call!622768 (validRegex!8391 (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))))

(declare-fun b!6837809 () Bool)

(declare-fun e!4124268 () Bool)

(assert (=> b!6837809 (= e!4124268 call!622768)))

(declare-fun b!6837810 () Bool)

(assert (=> b!6837810 (= e!4124272 e!4124269)))

(assert (=> b!6837810 (= c!1273243 ((_ is Union!16655) (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))

(declare-fun b!6837811 () Bool)

(declare-fun e!4124270 () Bool)

(assert (=> b!6837811 (= e!4124270 e!4124272)))

(assert (=> b!6837811 (= c!1273242 ((_ is Star!16655) (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))

(declare-fun b!6837812 () Bool)

(assert (=> b!6837812 (= e!4124273 e!4124268)))

(declare-fun res!2792324 () Bool)

(assert (=> b!6837812 (=> (not res!2792324) (not e!4124268))))

(assert (=> b!6837812 (= res!2792324 call!622769)))

(declare-fun d!2150535 () Bool)

(declare-fun res!2792326 () Bool)

(assert (=> d!2150535 (=> res!2792326 e!4124270)))

(assert (=> d!2150535 (= res!2792326 ((_ is ElementMatch!16655) (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))

(assert (=> d!2150535 (= (validRegex!8391 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) e!4124270)))

(declare-fun b!6837813 () Bool)

(declare-fun res!2792327 () Bool)

(assert (=> b!6837813 (=> (not res!2792327) (not e!4124267))))

(assert (=> b!6837813 (= res!2792327 call!622769)))

(assert (=> b!6837813 (= e!4124269 e!4124267)))

(assert (= (and d!2150535 (not res!2792326)) b!6837811))

(assert (= (and b!6837811 c!1273242) b!6837806))

(assert (= (and b!6837811 (not c!1273242)) b!6837810))

(assert (= (and b!6837806 res!2792323) b!6837808))

(assert (= (and b!6837810 c!1273243) b!6837813))

(assert (= (and b!6837810 (not c!1273243)) b!6837805))

(assert (= (and b!6837813 res!2792327) b!6837807))

(assert (= (and b!6837805 (not res!2792325)) b!6837812))

(assert (= (and b!6837812 res!2792324) b!6837809))

(assert (= (or b!6837807 b!6837809) bm!622764))

(assert (= (or b!6837813 b!6837812) bm!622763))

(assert (= (or b!6837808 bm!622763) bm!622762))

(declare-fun m!7582700 () Bool)

(assert (=> bm!622762 m!7582700))

(declare-fun m!7582702 () Bool)

(assert (=> b!6837806 m!7582702))

(declare-fun m!7582704 () Bool)

(assert (=> bm!622764 m!7582704))

(assert (=> bm!622730 d!2150535))

(declare-fun d!2150537 () Bool)

(assert (=> d!2150537 (= (isEmpty!38532 (tail!12783 (exprs!6539 (h!72589 zl!343)))) ((_ is Nil!66140) (tail!12783 (exprs!6539 (h!72589 zl!343)))))))

(assert (=> b!6837447 d!2150537))

(declare-fun d!2150539 () Bool)

(assert (=> d!2150539 (= (tail!12783 (exprs!6539 (h!72589 zl!343))) (t!380007 (exprs!6539 (h!72589 zl!343))))))

(assert (=> b!6837447 d!2150539))

(declare-fun bs!1828722 () Bool)

(declare-fun b!6837814 () Bool)

(assert (= bs!1828722 (and b!6837814 b!6837381)))

(declare-fun lambda!386675 () Int)

(assert (=> bs!1828722 (= (and (= (reg!16984 (regTwo!33823 r!7292)) (reg!16984 r!7292)) (= (regTwo!33823 r!7292) r!7292)) (= lambda!386675 lambda!386653))))

(declare-fun bs!1828723 () Bool)

(assert (= bs!1828723 (and b!6837814 b!6837389)))

(assert (=> bs!1828723 (not (= lambda!386675 lambda!386654))))

(assert (=> b!6837814 true))

(assert (=> b!6837814 true))

(declare-fun bs!1828724 () Bool)

(declare-fun b!6837822 () Bool)

(assert (= bs!1828724 (and b!6837822 b!6837381)))

(declare-fun lambda!386676 () Int)

(assert (=> bs!1828724 (not (= lambda!386676 lambda!386653))))

(declare-fun bs!1828725 () Bool)

(assert (= bs!1828725 (and b!6837822 b!6837389)))

(assert (=> bs!1828725 (= (and (= (regOne!33822 (regTwo!33823 r!7292)) (regOne!33822 r!7292)) (= (regTwo!33822 (regTwo!33823 r!7292)) (regTwo!33822 r!7292))) (= lambda!386676 lambda!386654))))

(declare-fun bs!1828726 () Bool)

(assert (= bs!1828726 (and b!6837822 b!6837814)))

(assert (=> bs!1828726 (not (= lambda!386676 lambda!386675))))

(assert (=> b!6837822 true))

(assert (=> b!6837822 true))

(declare-fun d!2150541 () Bool)

(declare-fun c!1273244 () Bool)

(assert (=> d!2150541 (= c!1273244 ((_ is EmptyExpr!16655) (regTwo!33823 r!7292)))))

(declare-fun e!4124280 () Bool)

(assert (=> d!2150541 (= (matchRSpec!3756 (regTwo!33823 r!7292) s!2326) e!4124280)))

(declare-fun e!4124278 () Bool)

(declare-fun call!622771 () Bool)

(assert (=> b!6837814 (= e!4124278 call!622771)))

(declare-fun b!6837815 () Bool)

(declare-fun res!2792329 () Bool)

(assert (=> b!6837815 (=> res!2792329 e!4124278)))

(declare-fun call!622770 () Bool)

(assert (=> b!6837815 (= res!2792329 call!622770)))

(declare-fun e!4124274 () Bool)

(assert (=> b!6837815 (= e!4124274 e!4124278)))

(declare-fun b!6837816 () Bool)

(assert (=> b!6837816 (= e!4124280 call!622770)))

(declare-fun b!6837817 () Bool)

(declare-fun e!4124279 () Bool)

(declare-fun e!4124277 () Bool)

(assert (=> b!6837817 (= e!4124279 e!4124277)))

(declare-fun res!2792328 () Bool)

(assert (=> b!6837817 (= res!2792328 (matchRSpec!3756 (regOne!33823 (regTwo!33823 r!7292)) s!2326))))

(assert (=> b!6837817 (=> res!2792328 e!4124277)))

(declare-fun b!6837818 () Bool)

(assert (=> b!6837818 (= e!4124277 (matchRSpec!3756 (regTwo!33823 (regTwo!33823 r!7292)) s!2326))))

(declare-fun b!6837819 () Bool)

(declare-fun e!4124275 () Bool)

(assert (=> b!6837819 (= e!4124280 e!4124275)))

(declare-fun res!2792330 () Bool)

(assert (=> b!6837819 (= res!2792330 (not ((_ is EmptyLang!16655) (regTwo!33823 r!7292))))))

(assert (=> b!6837819 (=> (not res!2792330) (not e!4124275))))

(declare-fun b!6837820 () Bool)

(declare-fun c!1273245 () Bool)

(assert (=> b!6837820 (= c!1273245 ((_ is ElementMatch!16655) (regTwo!33823 r!7292)))))

(declare-fun e!4124276 () Bool)

(assert (=> b!6837820 (= e!4124275 e!4124276)))

(declare-fun b!6837821 () Bool)

(assert (=> b!6837821 (= e!4124279 e!4124274)))

(declare-fun c!1273247 () Bool)

(assert (=> b!6837821 (= c!1273247 ((_ is Star!16655) (regTwo!33823 r!7292)))))

(declare-fun bm!622765 () Bool)

(assert (=> bm!622765 (= call!622771 (Exists!3723 (ite c!1273247 lambda!386675 lambda!386676)))))

(assert (=> b!6837822 (= e!4124274 call!622771)))

(declare-fun bm!622766 () Bool)

(assert (=> bm!622766 (= call!622770 (isEmpty!38531 s!2326))))

(declare-fun b!6837823 () Bool)

(declare-fun c!1273246 () Bool)

(assert (=> b!6837823 (= c!1273246 ((_ is Union!16655) (regTwo!33823 r!7292)))))

(assert (=> b!6837823 (= e!4124276 e!4124279)))

(declare-fun b!6837824 () Bool)

(assert (=> b!6837824 (= e!4124276 (= s!2326 (Cons!66142 (c!1273107 (regTwo!33823 r!7292)) Nil!66142)))))

(assert (= (and d!2150541 c!1273244) b!6837816))

(assert (= (and d!2150541 (not c!1273244)) b!6837819))

(assert (= (and b!6837819 res!2792330) b!6837820))

(assert (= (and b!6837820 c!1273245) b!6837824))

(assert (= (and b!6837820 (not c!1273245)) b!6837823))

(assert (= (and b!6837823 c!1273246) b!6837817))

(assert (= (and b!6837823 (not c!1273246)) b!6837821))

(assert (= (and b!6837817 (not res!2792328)) b!6837818))

(assert (= (and b!6837821 c!1273247) b!6837815))

(assert (= (and b!6837821 (not c!1273247)) b!6837822))

(assert (= (and b!6837815 (not res!2792329)) b!6837814))

(assert (= (or b!6837814 b!6837822) bm!622765))

(assert (= (or b!6837816 b!6837815) bm!622766))

(declare-fun m!7582706 () Bool)

(assert (=> b!6837817 m!7582706))

(declare-fun m!7582708 () Bool)

(assert (=> b!6837818 m!7582708))

(declare-fun m!7582710 () Bool)

(assert (=> bm!622765 m!7582710))

(assert (=> bm!622766 m!7582442))

(assert (=> b!6837385 d!2150541))

(declare-fun d!2150543 () Bool)

(declare-fun res!2792335 () Bool)

(declare-fun e!4124285 () Bool)

(assert (=> d!2150543 (=> res!2792335 e!4124285)))

(assert (=> d!2150543 (= res!2792335 ((_ is Nil!66140) (exprs!6539 setElem!46969)))))

(assert (=> d!2150543 (= (forall!15835 (exprs!6539 setElem!46969) lambda!386657) e!4124285)))

(declare-fun b!6837829 () Bool)

(declare-fun e!4124286 () Bool)

(assert (=> b!6837829 (= e!4124285 e!4124286)))

(declare-fun res!2792336 () Bool)

(assert (=> b!6837829 (=> (not res!2792336) (not e!4124286))))

(declare-fun dynLambda!26428 (Int Regex!16655) Bool)

(assert (=> b!6837829 (= res!2792336 (dynLambda!26428 lambda!386657 (h!72588 (exprs!6539 setElem!46969))))))

(declare-fun b!6837830 () Bool)

(assert (=> b!6837830 (= e!4124286 (forall!15835 (t!380007 (exprs!6539 setElem!46969)) lambda!386657))))

(assert (= (and d!2150543 (not res!2792335)) b!6837829))

(assert (= (and b!6837829 res!2792336) b!6837830))

(declare-fun b_lambda!257935 () Bool)

(assert (=> (not b_lambda!257935) (not b!6837829)))

(declare-fun m!7582712 () Bool)

(assert (=> b!6837829 m!7582712))

(declare-fun m!7582714 () Bool)

(assert (=> b!6837830 m!7582714))

(assert (=> d!2150449 d!2150543))

(declare-fun d!2150545 () Bool)

(assert (=> d!2150545 (= (isEmpty!38532 (exprs!6539 (h!72589 zl!343))) ((_ is Nil!66140) (exprs!6539 (h!72589 zl!343))))))

(assert (=> b!6837446 d!2150545))

(declare-fun bs!1828727 () Bool)

(declare-fun b!6837831 () Bool)

(assert (= bs!1828727 (and b!6837831 b!6837381)))

(declare-fun lambda!386677 () Int)

(assert (=> bs!1828727 (= (and (= (reg!16984 (regOne!33823 r!7292)) (reg!16984 r!7292)) (= (regOne!33823 r!7292) r!7292)) (= lambda!386677 lambda!386653))))

(declare-fun bs!1828728 () Bool)

(assert (= bs!1828728 (and b!6837831 b!6837389)))

(assert (=> bs!1828728 (not (= lambda!386677 lambda!386654))))

(declare-fun bs!1828729 () Bool)

(assert (= bs!1828729 (and b!6837831 b!6837814)))

(assert (=> bs!1828729 (= (and (= (reg!16984 (regOne!33823 r!7292)) (reg!16984 (regTwo!33823 r!7292))) (= (regOne!33823 r!7292) (regTwo!33823 r!7292))) (= lambda!386677 lambda!386675))))

(declare-fun bs!1828730 () Bool)

(assert (= bs!1828730 (and b!6837831 b!6837822)))

(assert (=> bs!1828730 (not (= lambda!386677 lambda!386676))))

(assert (=> b!6837831 true))

(assert (=> b!6837831 true))

(declare-fun bs!1828731 () Bool)

(declare-fun b!6837839 () Bool)

(assert (= bs!1828731 (and b!6837839 b!6837814)))

(declare-fun lambda!386678 () Int)

(assert (=> bs!1828731 (not (= lambda!386678 lambda!386675))))

(declare-fun bs!1828732 () Bool)

(assert (= bs!1828732 (and b!6837839 b!6837822)))

(assert (=> bs!1828732 (= (and (= (regOne!33822 (regOne!33823 r!7292)) (regOne!33822 (regTwo!33823 r!7292))) (= (regTwo!33822 (regOne!33823 r!7292)) (regTwo!33822 (regTwo!33823 r!7292)))) (= lambda!386678 lambda!386676))))

(declare-fun bs!1828733 () Bool)

(assert (= bs!1828733 (and b!6837839 b!6837831)))

(assert (=> bs!1828733 (not (= lambda!386678 lambda!386677))))

(declare-fun bs!1828734 () Bool)

(assert (= bs!1828734 (and b!6837839 b!6837381)))

(assert (=> bs!1828734 (not (= lambda!386678 lambda!386653))))

(declare-fun bs!1828735 () Bool)

(assert (= bs!1828735 (and b!6837839 b!6837389)))

(assert (=> bs!1828735 (= (and (= (regOne!33822 (regOne!33823 r!7292)) (regOne!33822 r!7292)) (= (regTwo!33822 (regOne!33823 r!7292)) (regTwo!33822 r!7292))) (= lambda!386678 lambda!386654))))

(assert (=> b!6837839 true))

(assert (=> b!6837839 true))

(declare-fun d!2150547 () Bool)

(declare-fun c!1273248 () Bool)

(assert (=> d!2150547 (= c!1273248 ((_ is EmptyExpr!16655) (regOne!33823 r!7292)))))

(declare-fun e!4124293 () Bool)

(assert (=> d!2150547 (= (matchRSpec!3756 (regOne!33823 r!7292) s!2326) e!4124293)))

(declare-fun e!4124291 () Bool)

(declare-fun call!622773 () Bool)

(assert (=> b!6837831 (= e!4124291 call!622773)))

(declare-fun b!6837832 () Bool)

(declare-fun res!2792338 () Bool)

(assert (=> b!6837832 (=> res!2792338 e!4124291)))

(declare-fun call!622772 () Bool)

(assert (=> b!6837832 (= res!2792338 call!622772)))

(declare-fun e!4124287 () Bool)

(assert (=> b!6837832 (= e!4124287 e!4124291)))

(declare-fun b!6837833 () Bool)

(assert (=> b!6837833 (= e!4124293 call!622772)))

(declare-fun b!6837834 () Bool)

(declare-fun e!4124292 () Bool)

(declare-fun e!4124290 () Bool)

(assert (=> b!6837834 (= e!4124292 e!4124290)))

(declare-fun res!2792337 () Bool)

(assert (=> b!6837834 (= res!2792337 (matchRSpec!3756 (regOne!33823 (regOne!33823 r!7292)) s!2326))))

(assert (=> b!6837834 (=> res!2792337 e!4124290)))

(declare-fun b!6837835 () Bool)

(assert (=> b!6837835 (= e!4124290 (matchRSpec!3756 (regTwo!33823 (regOne!33823 r!7292)) s!2326))))

(declare-fun b!6837836 () Bool)

(declare-fun e!4124288 () Bool)

(assert (=> b!6837836 (= e!4124293 e!4124288)))

(declare-fun res!2792339 () Bool)

(assert (=> b!6837836 (= res!2792339 (not ((_ is EmptyLang!16655) (regOne!33823 r!7292))))))

(assert (=> b!6837836 (=> (not res!2792339) (not e!4124288))))

(declare-fun b!6837837 () Bool)

(declare-fun c!1273249 () Bool)

(assert (=> b!6837837 (= c!1273249 ((_ is ElementMatch!16655) (regOne!33823 r!7292)))))

(declare-fun e!4124289 () Bool)

(assert (=> b!6837837 (= e!4124288 e!4124289)))

(declare-fun b!6837838 () Bool)

(assert (=> b!6837838 (= e!4124292 e!4124287)))

(declare-fun c!1273251 () Bool)

(assert (=> b!6837838 (= c!1273251 ((_ is Star!16655) (regOne!33823 r!7292)))))

(declare-fun bm!622767 () Bool)

(assert (=> bm!622767 (= call!622773 (Exists!3723 (ite c!1273251 lambda!386677 lambda!386678)))))

(assert (=> b!6837839 (= e!4124287 call!622773)))

(declare-fun bm!622768 () Bool)

(assert (=> bm!622768 (= call!622772 (isEmpty!38531 s!2326))))

(declare-fun b!6837840 () Bool)

(declare-fun c!1273250 () Bool)

(assert (=> b!6837840 (= c!1273250 ((_ is Union!16655) (regOne!33823 r!7292)))))

(assert (=> b!6837840 (= e!4124289 e!4124292)))

(declare-fun b!6837841 () Bool)

(assert (=> b!6837841 (= e!4124289 (= s!2326 (Cons!66142 (c!1273107 (regOne!33823 r!7292)) Nil!66142)))))

(assert (= (and d!2150547 c!1273248) b!6837833))

(assert (= (and d!2150547 (not c!1273248)) b!6837836))

(assert (= (and b!6837836 res!2792339) b!6837837))

(assert (= (and b!6837837 c!1273249) b!6837841))

(assert (= (and b!6837837 (not c!1273249)) b!6837840))

(assert (= (and b!6837840 c!1273250) b!6837834))

(assert (= (and b!6837840 (not c!1273250)) b!6837838))

(assert (= (and b!6837834 (not res!2792337)) b!6837835))

(assert (= (and b!6837838 c!1273251) b!6837832))

(assert (= (and b!6837838 (not c!1273251)) b!6837839))

(assert (= (and b!6837832 (not res!2792338)) b!6837831))

(assert (= (or b!6837831 b!6837839) bm!622767))

(assert (= (or b!6837833 b!6837832) bm!622768))

(declare-fun m!7582716 () Bool)

(assert (=> b!6837834 m!7582716))

(declare-fun m!7582718 () Bool)

(assert (=> b!6837835 m!7582718))

(declare-fun m!7582720 () Bool)

(assert (=> bm!622767 m!7582720))

(assert (=> bm!622768 m!7582442))

(assert (=> b!6837384 d!2150547))

(declare-fun bs!1828736 () Bool)

(declare-fun d!2150549 () Bool)

(assert (= bs!1828736 (and d!2150549 d!2150449)))

(declare-fun lambda!386679 () Int)

(assert (=> bs!1828736 (= lambda!386679 lambda!386657)))

(declare-fun bs!1828737 () Bool)

(assert (= bs!1828737 (and d!2150549 d!2150451)))

(assert (=> bs!1828737 (= lambda!386679 lambda!386658)))

(declare-fun bs!1828738 () Bool)

(assert (= bs!1828738 (and d!2150549 d!2150455)))

(assert (=> bs!1828738 (= lambda!386679 lambda!386661)))

(declare-fun b!6837843 () Bool)

(declare-fun e!4124296 () Bool)

(assert (=> b!6837843 (= e!4124296 (isEmpty!38532 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun b!6837844 () Bool)

(declare-fun e!4124299 () Bool)

(declare-fun lt!2455104 () Regex!16655)

(assert (=> b!6837844 (= e!4124299 (isConcat!1524 lt!2455104))))

(declare-fun b!6837845 () Bool)

(declare-fun e!4124297 () Bool)

(declare-fun e!4124298 () Bool)

(assert (=> b!6837845 (= e!4124297 e!4124298)))

(declare-fun c!1273253 () Bool)

(assert (=> b!6837845 (= c!1273253 (isEmpty!38532 (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(declare-fun b!6837846 () Bool)

(assert (=> b!6837846 (= e!4124298 e!4124299)))

(declare-fun c!1273254 () Bool)

(assert (=> b!6837846 (= c!1273254 (isEmpty!38532 (tail!12783 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun b!6837847 () Bool)

(declare-fun e!4124295 () Regex!16655)

(assert (=> b!6837847 (= e!4124295 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(declare-fun b!6837848 () Bool)

(assert (=> b!6837848 (= e!4124299 (= lt!2455104 (head!13698 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun b!6837842 () Bool)

(assert (=> b!6837842 (= e!4124298 (isEmptyExpr!2001 lt!2455104))))

(assert (=> d!2150549 e!4124297))

(declare-fun res!2792341 () Bool)

(assert (=> d!2150549 (=> (not res!2792341) (not e!4124297))))

(assert (=> d!2150549 (= res!2792341 (validRegex!8391 lt!2455104))))

(assert (=> d!2150549 (= lt!2455104 e!4124295)))

(declare-fun c!1273252 () Bool)

(assert (=> d!2150549 (= c!1273252 e!4124296)))

(declare-fun res!2792340 () Bool)

(assert (=> d!2150549 (=> (not res!2792340) (not e!4124296))))

(assert (=> d!2150549 (= res!2792340 ((_ is Cons!66140) (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(assert (=> d!2150549 (forall!15835 (t!380007 (exprs!6539 (h!72589 zl!343))) lambda!386679)))

(assert (=> d!2150549 (= (generalisedConcat!2252 (t!380007 (exprs!6539 (h!72589 zl!343)))) lt!2455104)))

(declare-fun b!6837849 () Bool)

(declare-fun e!4124294 () Regex!16655)

(assert (=> b!6837849 (= e!4124294 (Concat!25500 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343)))) (generalisedConcat!2252 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343)))))))))

(declare-fun b!6837850 () Bool)

(assert (=> b!6837850 (= e!4124294 EmptyExpr!16655)))

(declare-fun b!6837851 () Bool)

(assert (=> b!6837851 (= e!4124295 e!4124294)))

(declare-fun c!1273255 () Bool)

(assert (=> b!6837851 (= c!1273255 ((_ is Cons!66140) (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(assert (= (and d!2150549 res!2792340) b!6837843))

(assert (= (and d!2150549 c!1273252) b!6837847))

(assert (= (and d!2150549 (not c!1273252)) b!6837851))

(assert (= (and b!6837851 c!1273255) b!6837849))

(assert (= (and b!6837851 (not c!1273255)) b!6837850))

(assert (= (and d!2150549 res!2792341) b!6837845))

(assert (= (and b!6837845 c!1273253) b!6837842))

(assert (= (and b!6837845 (not c!1273253)) b!6837846))

(assert (= (and b!6837846 c!1273254) b!6837848))

(assert (= (and b!6837846 (not c!1273254)) b!6837844))

(declare-fun m!7582722 () Bool)

(assert (=> b!6837844 m!7582722))

(declare-fun m!7582724 () Bool)

(assert (=> d!2150549 m!7582724))

(declare-fun m!7582726 () Bool)

(assert (=> d!2150549 m!7582726))

(assert (=> b!6837845 m!7582538))

(declare-fun m!7582728 () Bool)

(assert (=> b!6837846 m!7582728))

(assert (=> b!6837846 m!7582728))

(declare-fun m!7582730 () Bool)

(assert (=> b!6837846 m!7582730))

(declare-fun m!7582732 () Bool)

(assert (=> b!6837842 m!7582732))

(declare-fun m!7582734 () Bool)

(assert (=> b!6837848 m!7582734))

(declare-fun m!7582736 () Bool)

(assert (=> b!6837849 m!7582736))

(declare-fun m!7582738 () Bool)

(assert (=> b!6837843 m!7582738))

(assert (=> b!6837450 d!2150549))

(declare-fun d!2150551 () Bool)

(declare-fun nullableFct!2516 (Regex!16655) Bool)

(assert (=> d!2150551 (= (nullable!6622 (reg!16984 r!7292)) (nullableFct!2516 (reg!16984 r!7292)))))

(declare-fun bs!1828739 () Bool)

(assert (= bs!1828739 d!2150551))

(declare-fun m!7582740 () Bool)

(assert (=> bs!1828739 m!7582740))

(assert (=> b!6837415 d!2150551))

(declare-fun d!2150553 () Bool)

(assert (=> d!2150553 (= (head!13698 (exprs!6539 (h!72589 zl!343))) (h!72588 (exprs!6539 (h!72589 zl!343))))))

(assert (=> b!6837449 d!2150553))

(declare-fun d!2150555 () Bool)

(declare-fun res!2792346 () Bool)

(declare-fun e!4124304 () Bool)

(assert (=> d!2150555 (=> res!2792346 e!4124304)))

(assert (=> d!2150555 (= res!2792346 ((_ is Nil!66141) lt!2455092))))

(assert (=> d!2150555 (= (noDuplicate!2428 lt!2455092) e!4124304)))

(declare-fun b!6837856 () Bool)

(declare-fun e!4124305 () Bool)

(assert (=> b!6837856 (= e!4124304 e!4124305)))

(declare-fun res!2792347 () Bool)

(assert (=> b!6837856 (=> (not res!2792347) (not e!4124305))))

(declare-fun contains!20311 (List!66265 Context!12078) Bool)

(assert (=> b!6837856 (= res!2792347 (not (contains!20311 (t!380008 lt!2455092) (h!72589 lt!2455092))))))

(declare-fun b!6837857 () Bool)

(assert (=> b!6837857 (= e!4124305 (noDuplicate!2428 (t!380008 lt!2455092)))))

(assert (= (and d!2150555 (not res!2792346)) b!6837856))

(assert (= (and b!6837856 res!2792347) b!6837857))

(declare-fun m!7582742 () Bool)

(assert (=> b!6837856 m!7582742))

(declare-fun m!7582744 () Bool)

(assert (=> b!6837857 m!7582744))

(assert (=> d!2150459 d!2150555))

(declare-fun d!2150557 () Bool)

(declare-fun e!4124314 () Bool)

(assert (=> d!2150557 e!4124314))

(declare-fun res!2792353 () Bool)

(assert (=> d!2150557 (=> (not res!2792353) (not e!4124314))))

(declare-fun res!2792352 () List!66265)

(assert (=> d!2150557 (= res!2792353 (noDuplicate!2428 res!2792352))))

(declare-fun e!4124312 () Bool)

(assert (=> d!2150557 e!4124312))

(assert (=> d!2150557 (= (choose!50999 z!1189) res!2792352)))

(declare-fun b!6837865 () Bool)

(declare-fun e!4124313 () Bool)

(declare-fun tp!1871255 () Bool)

(assert (=> b!6837865 (= e!4124313 tp!1871255)))

(declare-fun b!6837864 () Bool)

(declare-fun tp!1871254 () Bool)

(assert (=> b!6837864 (= e!4124312 (and (inv!84884 (h!72589 res!2792352)) e!4124313 tp!1871254))))

(declare-fun b!6837866 () Bool)

(assert (=> b!6837866 (= e!4124314 (= (content!12963 res!2792352) z!1189))))

(assert (= b!6837864 b!6837865))

(assert (= (and d!2150557 ((_ is Cons!66141) res!2792352)) b!6837864))

(assert (= (and d!2150557 res!2792353) b!6837866))

(declare-fun m!7582746 () Bool)

(assert (=> d!2150557 m!7582746))

(declare-fun m!7582748 () Bool)

(assert (=> b!6837864 m!7582748))

(declare-fun m!7582750 () Bool)

(assert (=> b!6837866 m!7582750))

(assert (=> d!2150459 d!2150557))

(declare-fun d!2150559 () Bool)

(assert (=> d!2150559 (= (isEmpty!38531 s!2326) ((_ is Nil!66142) s!2326))))

(assert (=> bm!622723 d!2150559))

(declare-fun b!6837867 () Bool)

(declare-fun e!4124318 () Bool)

(assert (=> b!6837867 (= e!4124318 (matchR!8838 (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326))) (tail!12782 (tail!12782 s!2326))))))

(declare-fun bm!622769 () Bool)

(declare-fun call!622774 () Bool)

(assert (=> bm!622769 (= call!622774 (isEmpty!38531 (tail!12782 s!2326)))))

(declare-fun b!6837868 () Bool)

(declare-fun e!4124320 () Bool)

(assert (=> b!6837868 (= e!4124320 (= (head!13697 (tail!12782 s!2326)) (c!1273107 (derivativeStep!5307 r!7292 (head!13697 s!2326)))))))

(declare-fun b!6837869 () Bool)

(declare-fun e!4124315 () Bool)

(assert (=> b!6837869 (= e!4124315 (not (= (head!13697 (tail!12782 s!2326)) (c!1273107 (derivativeStep!5307 r!7292 (head!13697 s!2326))))))))

(declare-fun b!6837870 () Bool)

(assert (=> b!6837870 (= e!4124318 (nullable!6622 (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(declare-fun b!6837871 () Bool)

(declare-fun res!2792356 () Bool)

(declare-fun e!4124317 () Bool)

(assert (=> b!6837871 (=> res!2792356 e!4124317)))

(assert (=> b!6837871 (= res!2792356 (not ((_ is ElementMatch!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326)))))))

(declare-fun e!4124321 () Bool)

(assert (=> b!6837871 (= e!4124321 e!4124317)))

(declare-fun d!2150561 () Bool)

(declare-fun e!4124316 () Bool)

(assert (=> d!2150561 e!4124316))

(declare-fun c!1273256 () Bool)

(assert (=> d!2150561 (= c!1273256 ((_ is EmptyExpr!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(declare-fun lt!2455105 () Bool)

(assert (=> d!2150561 (= lt!2455105 e!4124318)))

(declare-fun c!1273257 () Bool)

(assert (=> d!2150561 (= c!1273257 (isEmpty!38531 (tail!12782 s!2326)))))

(assert (=> d!2150561 (validRegex!8391 (derivativeStep!5307 r!7292 (head!13697 s!2326)))))

(assert (=> d!2150561 (= (matchR!8838 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (tail!12782 s!2326)) lt!2455105)))

(declare-fun b!6837872 () Bool)

(assert (=> b!6837872 (= e!4124321 (not lt!2455105))))

(declare-fun b!6837873 () Bool)

(declare-fun res!2792354 () Bool)

(assert (=> b!6837873 (=> (not res!2792354) (not e!4124320))))

(assert (=> b!6837873 (= res!2792354 (not call!622774))))

(declare-fun b!6837874 () Bool)

(declare-fun res!2792357 () Bool)

(assert (=> b!6837874 (=> (not res!2792357) (not e!4124320))))

(assert (=> b!6837874 (= res!2792357 (isEmpty!38531 (tail!12782 (tail!12782 s!2326))))))

(declare-fun b!6837875 () Bool)

(declare-fun res!2792359 () Bool)

(assert (=> b!6837875 (=> res!2792359 e!4124317)))

(assert (=> b!6837875 (= res!2792359 e!4124320)))

(declare-fun res!2792360 () Bool)

(assert (=> b!6837875 (=> (not res!2792360) (not e!4124320))))

(assert (=> b!6837875 (= res!2792360 lt!2455105)))

(declare-fun b!6837876 () Bool)

(assert (=> b!6837876 (= e!4124316 e!4124321)))

(declare-fun c!1273258 () Bool)

(assert (=> b!6837876 (= c!1273258 ((_ is EmptyLang!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(declare-fun b!6837877 () Bool)

(declare-fun e!4124319 () Bool)

(assert (=> b!6837877 (= e!4124319 e!4124315)))

(declare-fun res!2792361 () Bool)

(assert (=> b!6837877 (=> res!2792361 e!4124315)))

(assert (=> b!6837877 (= res!2792361 call!622774)))

(declare-fun b!6837878 () Bool)

(assert (=> b!6837878 (= e!4124317 e!4124319)))

(declare-fun res!2792358 () Bool)

(assert (=> b!6837878 (=> (not res!2792358) (not e!4124319))))

(assert (=> b!6837878 (= res!2792358 (not lt!2455105))))

(declare-fun b!6837879 () Bool)

(declare-fun res!2792355 () Bool)

(assert (=> b!6837879 (=> res!2792355 e!4124315)))

(assert (=> b!6837879 (= res!2792355 (not (isEmpty!38531 (tail!12782 (tail!12782 s!2326)))))))

(declare-fun b!6837880 () Bool)

(assert (=> b!6837880 (= e!4124316 (= lt!2455105 call!622774))))

(assert (= (and d!2150561 c!1273257) b!6837870))

(assert (= (and d!2150561 (not c!1273257)) b!6837867))

(assert (= (and d!2150561 c!1273256) b!6837880))

(assert (= (and d!2150561 (not c!1273256)) b!6837876))

(assert (= (and b!6837876 c!1273258) b!6837872))

(assert (= (and b!6837876 (not c!1273258)) b!6837871))

(assert (= (and b!6837871 (not res!2792356)) b!6837875))

(assert (= (and b!6837875 res!2792360) b!6837873))

(assert (= (and b!6837873 res!2792354) b!6837874))

(assert (= (and b!6837874 res!2792357) b!6837868))

(assert (= (and b!6837875 (not res!2792359)) b!6837878))

(assert (= (and b!6837878 res!2792358) b!6837877))

(assert (= (and b!6837877 (not res!2792361)) b!6837879))

(assert (= (and b!6837879 (not res!2792355)) b!6837869))

(assert (= (or b!6837880 b!6837873 b!6837877) bm!622769))

(assert (=> bm!622769 m!7582444))

(assert (=> bm!622769 m!7582446))

(assert (=> b!6837874 m!7582444))

(declare-fun m!7582752 () Bool)

(assert (=> b!6837874 m!7582752))

(assert (=> b!6837874 m!7582752))

(declare-fun m!7582754 () Bool)

(assert (=> b!6837874 m!7582754))

(assert (=> b!6837867 m!7582444))

(declare-fun m!7582756 () Bool)

(assert (=> b!6837867 m!7582756))

(assert (=> b!6837867 m!7582450))

(assert (=> b!6837867 m!7582756))

(declare-fun m!7582758 () Bool)

(assert (=> b!6837867 m!7582758))

(assert (=> b!6837867 m!7582444))

(assert (=> b!6837867 m!7582752))

(assert (=> b!6837867 m!7582758))

(assert (=> b!6837867 m!7582752))

(declare-fun m!7582760 () Bool)

(assert (=> b!6837867 m!7582760))

(assert (=> b!6837879 m!7582444))

(assert (=> b!6837879 m!7582752))

(assert (=> b!6837879 m!7582752))

(assert (=> b!6837879 m!7582754))

(assert (=> b!6837869 m!7582444))

(assert (=> b!6837869 m!7582756))

(assert (=> b!6837868 m!7582444))

(assert (=> b!6837868 m!7582756))

(assert (=> d!2150561 m!7582444))

(assert (=> d!2150561 m!7582446))

(assert (=> d!2150561 m!7582450))

(declare-fun m!7582762 () Bool)

(assert (=> d!2150561 m!7582762))

(assert (=> b!6837870 m!7582450))

(declare-fun m!7582764 () Bool)

(assert (=> b!6837870 m!7582764))

(assert (=> b!6837206 d!2150561))

(declare-fun call!622786 () Regex!16655)

(declare-fun c!1273270 () Bool)

(declare-fun c!1273272 () Bool)

(declare-fun c!1273271 () Bool)

(declare-fun bm!622778 () Bool)

(assert (=> bm!622778 (= call!622786 (derivativeStep!5307 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292)))) (head!13697 s!2326)))))

(declare-fun b!6837901 () Bool)

(declare-fun e!4124332 () Regex!16655)

(declare-fun call!622783 () Regex!16655)

(assert (=> b!6837901 (= e!4124332 (Union!16655 (Concat!25500 call!622783 (regTwo!33822 r!7292)) EmptyLang!16655))))

(declare-fun bm!622779 () Bool)

(declare-fun call!622784 () Regex!16655)

(assert (=> bm!622779 (= call!622784 call!622786)))

(declare-fun b!6837902 () Bool)

(declare-fun e!4124334 () Regex!16655)

(assert (=> b!6837902 (= e!4124334 (ite (= (head!13697 s!2326) (c!1273107 r!7292)) EmptyExpr!16655 EmptyLang!16655))))

(declare-fun bm!622780 () Bool)

(assert (=> bm!622780 (= call!622783 call!622784)))

(declare-fun b!6837903 () Bool)

(declare-fun e!4124333 () Regex!16655)

(assert (=> b!6837903 (= e!4124333 EmptyLang!16655)))

(declare-fun b!6837904 () Bool)

(assert (=> b!6837904 (= c!1273270 (nullable!6622 (regOne!33822 r!7292)))))

(declare-fun e!4124336 () Regex!16655)

(assert (=> b!6837904 (= e!4124336 e!4124332)))

(declare-fun b!6837905 () Bool)

(declare-fun e!4124335 () Regex!16655)

(declare-fun call!622785 () Regex!16655)

(assert (=> b!6837905 (= e!4124335 (Union!16655 call!622785 call!622786))))

(declare-fun b!6837906 () Bool)

(assert (=> b!6837906 (= c!1273272 ((_ is Union!16655) r!7292))))

(assert (=> b!6837906 (= e!4124334 e!4124335)))

(declare-fun b!6837907 () Bool)

(assert (=> b!6837907 (= e!4124335 e!4124336)))

(assert (=> b!6837907 (= c!1273271 ((_ is Star!16655) r!7292))))

(declare-fun b!6837909 () Bool)

(assert (=> b!6837909 (= e!4124333 e!4124334)))

(declare-fun c!1273269 () Bool)

(assert (=> b!6837909 (= c!1273269 ((_ is ElementMatch!16655) r!7292))))

(declare-fun bm!622781 () Bool)

(assert (=> bm!622781 (= call!622785 (derivativeStep!5307 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292)) (head!13697 s!2326)))))

(declare-fun b!6837910 () Bool)

(assert (=> b!6837910 (= e!4124332 (Union!16655 (Concat!25500 call!622785 (regTwo!33822 r!7292)) call!622783))))

(declare-fun d!2150563 () Bool)

(declare-fun lt!2455108 () Regex!16655)

(assert (=> d!2150563 (validRegex!8391 lt!2455108)))

(assert (=> d!2150563 (= lt!2455108 e!4124333)))

(declare-fun c!1273273 () Bool)

(assert (=> d!2150563 (= c!1273273 (or ((_ is EmptyExpr!16655) r!7292) ((_ is EmptyLang!16655) r!7292)))))

(assert (=> d!2150563 (validRegex!8391 r!7292)))

(assert (=> d!2150563 (= (derivativeStep!5307 r!7292 (head!13697 s!2326)) lt!2455108)))

(declare-fun b!6837908 () Bool)

(assert (=> b!6837908 (= e!4124336 (Concat!25500 call!622784 r!7292))))

(assert (= (and d!2150563 c!1273273) b!6837903))

(assert (= (and d!2150563 (not c!1273273)) b!6837909))

(assert (= (and b!6837909 c!1273269) b!6837902))

(assert (= (and b!6837909 (not c!1273269)) b!6837906))

(assert (= (and b!6837906 c!1273272) b!6837905))

(assert (= (and b!6837906 (not c!1273272)) b!6837907))

(assert (= (and b!6837907 c!1273271) b!6837908))

(assert (= (and b!6837907 (not c!1273271)) b!6837904))

(assert (= (and b!6837904 c!1273270) b!6837910))

(assert (= (and b!6837904 (not c!1273270)) b!6837901))

(assert (= (or b!6837910 b!6837901) bm!622780))

(assert (= (or b!6837908 bm!622780) bm!622779))

(assert (= (or b!6837905 bm!622779) bm!622778))

(assert (= (or b!6837905 b!6837910) bm!622781))

(assert (=> bm!622778 m!7582448))

(declare-fun m!7582766 () Bool)

(assert (=> bm!622778 m!7582766))

(declare-fun m!7582768 () Bool)

(assert (=> b!6837904 m!7582768))

(assert (=> bm!622781 m!7582448))

(declare-fun m!7582770 () Bool)

(assert (=> bm!622781 m!7582770))

(declare-fun m!7582772 () Bool)

(assert (=> d!2150563 m!7582772))

(assert (=> d!2150563 m!7582402))

(assert (=> b!6837206 d!2150563))

(declare-fun d!2150565 () Bool)

(assert (=> d!2150565 (= (head!13697 s!2326) (h!72590 s!2326))))

(assert (=> b!6837206 d!2150565))

(declare-fun d!2150567 () Bool)

(assert (=> d!2150567 (= (tail!12782 s!2326) (t!380009 s!2326))))

(assert (=> b!6837206 d!2150567))

(declare-fun d!2150569 () Bool)

(declare-fun choose!51001 (Int) Bool)

(assert (=> d!2150569 (= (Exists!3723 (ite c!1273167 lambda!386653 lambda!386654)) (choose!51001 (ite c!1273167 lambda!386653 lambda!386654)))))

(declare-fun bs!1828740 () Bool)

(assert (= bs!1828740 d!2150569))

(declare-fun m!7582774 () Bool)

(assert (=> bs!1828740 m!7582774))

(assert (=> bm!622722 d!2150569))

(assert (=> b!6837208 d!2150565))

(declare-fun call!622787 () Bool)

(declare-fun bm!622782 () Bool)

(declare-fun c!1273274 () Bool)

(declare-fun c!1273275 () Bool)

(assert (=> bm!622782 (= call!622787 (validRegex!8391 (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089)))))))

(declare-fun b!6837911 () Bool)

(declare-fun res!2792364 () Bool)

(declare-fun e!4124343 () Bool)

(assert (=> b!6837911 (=> res!2792364 e!4124343)))

(assert (=> b!6837911 (= res!2792364 (not ((_ is Concat!25500) lt!2455089)))))

(declare-fun e!4124339 () Bool)

(assert (=> b!6837911 (= e!4124339 e!4124343)))

(declare-fun b!6837912 () Bool)

(declare-fun e!4124342 () Bool)

(declare-fun e!4124341 () Bool)

(assert (=> b!6837912 (= e!4124342 e!4124341)))

(declare-fun res!2792362 () Bool)

(assert (=> b!6837912 (= res!2792362 (not (nullable!6622 (reg!16984 lt!2455089))))))

(assert (=> b!6837912 (=> (not res!2792362) (not e!4124341))))

(declare-fun b!6837913 () Bool)

(declare-fun e!4124337 () Bool)

(declare-fun call!622788 () Bool)

(assert (=> b!6837913 (= e!4124337 call!622788)))

(declare-fun bm!622783 () Bool)

(declare-fun call!622789 () Bool)

(assert (=> bm!622783 (= call!622789 call!622787)))

(declare-fun b!6837914 () Bool)

(assert (=> b!6837914 (= e!4124341 call!622787)))

(declare-fun bm!622784 () Bool)

(assert (=> bm!622784 (= call!622788 (validRegex!8391 (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089))))))

(declare-fun b!6837915 () Bool)

(declare-fun e!4124338 () Bool)

(assert (=> b!6837915 (= e!4124338 call!622788)))

(declare-fun b!6837916 () Bool)

(assert (=> b!6837916 (= e!4124342 e!4124339)))

(assert (=> b!6837916 (= c!1273275 ((_ is Union!16655) lt!2455089))))

(declare-fun b!6837917 () Bool)

(declare-fun e!4124340 () Bool)

(assert (=> b!6837917 (= e!4124340 e!4124342)))

(assert (=> b!6837917 (= c!1273274 ((_ is Star!16655) lt!2455089))))

(declare-fun b!6837918 () Bool)

(assert (=> b!6837918 (= e!4124343 e!4124338)))

(declare-fun res!2792363 () Bool)

(assert (=> b!6837918 (=> (not res!2792363) (not e!4124338))))

(assert (=> b!6837918 (= res!2792363 call!622789)))

(declare-fun d!2150571 () Bool)

(declare-fun res!2792365 () Bool)

(assert (=> d!2150571 (=> res!2792365 e!4124340)))

(assert (=> d!2150571 (= res!2792365 ((_ is ElementMatch!16655) lt!2455089))))

(assert (=> d!2150571 (= (validRegex!8391 lt!2455089) e!4124340)))

(declare-fun b!6837919 () Bool)

(declare-fun res!2792366 () Bool)

(assert (=> b!6837919 (=> (not res!2792366) (not e!4124337))))

(assert (=> b!6837919 (= res!2792366 call!622789)))

(assert (=> b!6837919 (= e!4124339 e!4124337)))

(assert (= (and d!2150571 (not res!2792365)) b!6837917))

(assert (= (and b!6837917 c!1273274) b!6837912))

(assert (= (and b!6837917 (not c!1273274)) b!6837916))

(assert (= (and b!6837912 res!2792362) b!6837914))

(assert (= (and b!6837916 c!1273275) b!6837919))

(assert (= (and b!6837916 (not c!1273275)) b!6837911))

(assert (= (and b!6837919 res!2792366) b!6837913))

(assert (= (and b!6837911 (not res!2792364)) b!6837918))

(assert (= (and b!6837918 res!2792363) b!6837915))

(assert (= (or b!6837913 b!6837915) bm!622784))

(assert (= (or b!6837919 b!6837918) bm!622783))

(assert (= (or b!6837914 bm!622783) bm!622782))

(declare-fun m!7582776 () Bool)

(assert (=> bm!622782 m!7582776))

(declare-fun m!7582778 () Bool)

(assert (=> b!6837912 m!7582778))

(declare-fun m!7582780 () Bool)

(assert (=> bm!622784 m!7582780))

(assert (=> d!2150457 d!2150571))

(declare-fun bs!1828741 () Bool)

(declare-fun d!2150573 () Bool)

(assert (= bs!1828741 (and d!2150573 d!2150449)))

(declare-fun lambda!386682 () Int)

(assert (=> bs!1828741 (= lambda!386682 lambda!386657)))

(declare-fun bs!1828742 () Bool)

(assert (= bs!1828742 (and d!2150573 d!2150451)))

(assert (=> bs!1828742 (= lambda!386682 lambda!386658)))

(declare-fun bs!1828743 () Bool)

(assert (= bs!1828743 (and d!2150573 d!2150455)))

(assert (=> bs!1828743 (= lambda!386682 lambda!386661)))

(declare-fun bs!1828744 () Bool)

(assert (= bs!1828744 (and d!2150573 d!2150549)))

(assert (=> bs!1828744 (= lambda!386682 lambda!386679)))

(declare-fun b!6837940 () Bool)

(declare-fun e!4124358 () Bool)

(declare-fun e!4124357 () Bool)

(assert (=> b!6837940 (= e!4124358 e!4124357)))

(declare-fun c!1273286 () Bool)

(assert (=> b!6837940 (= c!1273286 (isEmpty!38532 (tail!12783 (unfocusZipperList!2076 zl!343))))))

(declare-fun b!6837941 () Bool)

(declare-fun e!4124360 () Bool)

(assert (=> b!6837941 (= e!4124360 (isEmpty!38532 (t!380007 (unfocusZipperList!2076 zl!343))))))

(declare-fun b!6837942 () Bool)

(declare-fun e!4124359 () Bool)

(assert (=> b!6837942 (= e!4124359 e!4124358)))

(declare-fun c!1273285 () Bool)

(assert (=> b!6837942 (= c!1273285 (isEmpty!38532 (unfocusZipperList!2076 zl!343)))))

(declare-fun b!6837943 () Bool)

(declare-fun e!4124356 () Regex!16655)

(declare-fun e!4124361 () Regex!16655)

(assert (=> b!6837943 (= e!4124356 e!4124361)))

(declare-fun c!1273287 () Bool)

(assert (=> b!6837943 (= c!1273287 ((_ is Cons!66140) (unfocusZipperList!2076 zl!343)))))

(declare-fun b!6837944 () Bool)

(assert (=> b!6837944 (= e!4124361 EmptyLang!16655)))

(declare-fun b!6837945 () Bool)

(assert (=> b!6837945 (= e!4124361 (Union!16655 (h!72588 (unfocusZipperList!2076 zl!343)) (generalisedUnion!2499 (t!380007 (unfocusZipperList!2076 zl!343)))))))

(declare-fun b!6837947 () Bool)

(declare-fun lt!2455111 () Regex!16655)

(declare-fun isUnion!1439 (Regex!16655) Bool)

(assert (=> b!6837947 (= e!4124357 (isUnion!1439 lt!2455111))))

(declare-fun b!6837948 () Bool)

(assert (=> b!6837948 (= e!4124356 (h!72588 (unfocusZipperList!2076 zl!343)))))

(declare-fun b!6837949 () Bool)

(declare-fun isEmptyLang!2009 (Regex!16655) Bool)

(assert (=> b!6837949 (= e!4124358 (isEmptyLang!2009 lt!2455111))))

(declare-fun b!6837946 () Bool)

(assert (=> b!6837946 (= e!4124357 (= lt!2455111 (head!13698 (unfocusZipperList!2076 zl!343))))))

(assert (=> d!2150573 e!4124359))

(declare-fun res!2792372 () Bool)

(assert (=> d!2150573 (=> (not res!2792372) (not e!4124359))))

(assert (=> d!2150573 (= res!2792372 (validRegex!8391 lt!2455111))))

(assert (=> d!2150573 (= lt!2455111 e!4124356)))

(declare-fun c!1273284 () Bool)

(assert (=> d!2150573 (= c!1273284 e!4124360)))

(declare-fun res!2792371 () Bool)

(assert (=> d!2150573 (=> (not res!2792371) (not e!4124360))))

(assert (=> d!2150573 (= res!2792371 ((_ is Cons!66140) (unfocusZipperList!2076 zl!343)))))

(assert (=> d!2150573 (forall!15835 (unfocusZipperList!2076 zl!343) lambda!386682)))

(assert (=> d!2150573 (= (generalisedUnion!2499 (unfocusZipperList!2076 zl!343)) lt!2455111)))

(assert (= (and d!2150573 res!2792371) b!6837941))

(assert (= (and d!2150573 c!1273284) b!6837948))

(assert (= (and d!2150573 (not c!1273284)) b!6837943))

(assert (= (and b!6837943 c!1273287) b!6837945))

(assert (= (and b!6837943 (not c!1273287)) b!6837944))

(assert (= (and d!2150573 res!2792372) b!6837942))

(assert (= (and b!6837942 c!1273285) b!6837949))

(assert (= (and b!6837942 (not c!1273285)) b!6837940))

(assert (= (and b!6837940 c!1273286) b!6837946))

(assert (= (and b!6837940 (not c!1273286)) b!6837947))

(declare-fun m!7582782 () Bool)

(assert (=> b!6837941 m!7582782))

(declare-fun m!7582784 () Bool)

(assert (=> d!2150573 m!7582784))

(assert (=> d!2150573 m!7582542))

(declare-fun m!7582786 () Bool)

(assert (=> d!2150573 m!7582786))

(declare-fun m!7582788 () Bool)

(assert (=> b!6837947 m!7582788))

(assert (=> b!6837942 m!7582542))

(declare-fun m!7582790 () Bool)

(assert (=> b!6837942 m!7582790))

(declare-fun m!7582792 () Bool)

(assert (=> b!6837949 m!7582792))

(assert (=> b!6837946 m!7582542))

(declare-fun m!7582794 () Bool)

(assert (=> b!6837946 m!7582794))

(declare-fun m!7582796 () Bool)

(assert (=> b!6837945 m!7582796))

(assert (=> b!6837940 m!7582542))

(declare-fun m!7582798 () Bool)

(assert (=> b!6837940 m!7582798))

(assert (=> b!6837940 m!7582798))

(declare-fun m!7582800 () Bool)

(assert (=> b!6837940 m!7582800))

(assert (=> d!2150457 d!2150573))

(declare-fun bs!1828745 () Bool)

(declare-fun d!2150575 () Bool)

(assert (= bs!1828745 (and d!2150575 d!2150549)))

(declare-fun lambda!386685 () Int)

(assert (=> bs!1828745 (= lambda!386685 lambda!386679)))

(declare-fun bs!1828746 () Bool)

(assert (= bs!1828746 (and d!2150575 d!2150573)))

(assert (=> bs!1828746 (= lambda!386685 lambda!386682)))

(declare-fun bs!1828747 () Bool)

(assert (= bs!1828747 (and d!2150575 d!2150455)))

(assert (=> bs!1828747 (= lambda!386685 lambda!386661)))

(declare-fun bs!1828748 () Bool)

(assert (= bs!1828748 (and d!2150575 d!2150449)))

(assert (=> bs!1828748 (= lambda!386685 lambda!386657)))

(declare-fun bs!1828749 () Bool)

(assert (= bs!1828749 (and d!2150575 d!2150451)))

(assert (=> bs!1828749 (= lambda!386685 lambda!386658)))

(declare-fun lt!2455114 () List!66264)

(assert (=> d!2150575 (forall!15835 lt!2455114 lambda!386685)))

(declare-fun e!4124364 () List!66264)

(assert (=> d!2150575 (= lt!2455114 e!4124364)))

(declare-fun c!1273290 () Bool)

(assert (=> d!2150575 (= c!1273290 ((_ is Cons!66141) zl!343))))

(assert (=> d!2150575 (= (unfocusZipperList!2076 zl!343) lt!2455114)))

(declare-fun b!6837954 () Bool)

(assert (=> b!6837954 (= e!4124364 (Cons!66140 (generalisedConcat!2252 (exprs!6539 (h!72589 zl!343))) (unfocusZipperList!2076 (t!380008 zl!343))))))

(declare-fun b!6837955 () Bool)

(assert (=> b!6837955 (= e!4124364 Nil!66140)))

(assert (= (and d!2150575 c!1273290) b!6837954))

(assert (= (and d!2150575 (not c!1273290)) b!6837955))

(declare-fun m!7582802 () Bool)

(assert (=> d!2150575 m!7582802))

(assert (=> b!6837954 m!7582418))

(declare-fun m!7582804 () Bool)

(assert (=> b!6837954 m!7582804))

(assert (=> d!2150457 d!2150575))

(assert (=> d!2150427 d!2150559))

(assert (=> d!2150427 d!2150447))

(declare-fun bs!1828750 () Bool)

(declare-fun d!2150577 () Bool)

(assert (= bs!1828750 (and d!2150577 d!2150549)))

(declare-fun lambda!386686 () Int)

(assert (=> bs!1828750 (= lambda!386686 lambda!386679)))

(declare-fun bs!1828751 () Bool)

(assert (= bs!1828751 (and d!2150577 d!2150575)))

(assert (=> bs!1828751 (= lambda!386686 lambda!386685)))

(declare-fun bs!1828752 () Bool)

(assert (= bs!1828752 (and d!2150577 d!2150573)))

(assert (=> bs!1828752 (= lambda!386686 lambda!386682)))

(declare-fun bs!1828753 () Bool)

(assert (= bs!1828753 (and d!2150577 d!2150455)))

(assert (=> bs!1828753 (= lambda!386686 lambda!386661)))

(declare-fun bs!1828754 () Bool)

(assert (= bs!1828754 (and d!2150577 d!2150449)))

(assert (=> bs!1828754 (= lambda!386686 lambda!386657)))

(declare-fun bs!1828755 () Bool)

(assert (= bs!1828755 (and d!2150577 d!2150451)))

(assert (=> bs!1828755 (= lambda!386686 lambda!386658)))

(assert (=> d!2150577 (= (inv!84884 setElem!46975) (forall!15835 (exprs!6539 setElem!46975) lambda!386686))))

(declare-fun bs!1828756 () Bool)

(assert (= bs!1828756 d!2150577))

(declare-fun m!7582806 () Bool)

(assert (=> bs!1828756 m!7582806))

(assert (=> setNonEmpty!46975 d!2150577))

(assert (=> b!6837207 d!2150565))

(assert (=> bm!622706 d!2150559))

(declare-fun c!1273291 () Bool)

(declare-fun c!1273292 () Bool)

(declare-fun call!622790 () Bool)

(declare-fun bm!622785 () Bool)

(assert (=> bm!622785 (= call!622790 (validRegex!8391 (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))))))

(declare-fun b!6837956 () Bool)

(declare-fun res!2792375 () Bool)

(declare-fun e!4124371 () Bool)

(assert (=> b!6837956 (=> res!2792375 e!4124371)))

(assert (=> b!6837956 (= res!2792375 (not ((_ is Concat!25500) (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))))

(declare-fun e!4124367 () Bool)

(assert (=> b!6837956 (= e!4124367 e!4124371)))

(declare-fun b!6837957 () Bool)

(declare-fun e!4124370 () Bool)

(declare-fun e!4124369 () Bool)

(assert (=> b!6837957 (= e!4124370 e!4124369)))

(declare-fun res!2792373 () Bool)

(assert (=> b!6837957 (= res!2792373 (not (nullable!6622 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))))

(assert (=> b!6837957 (=> (not res!2792373) (not e!4124369))))

(declare-fun b!6837958 () Bool)

(declare-fun e!4124365 () Bool)

(declare-fun call!622791 () Bool)

(assert (=> b!6837958 (= e!4124365 call!622791)))

(declare-fun bm!622786 () Bool)

(declare-fun call!622792 () Bool)

(assert (=> bm!622786 (= call!622792 call!622790)))

(declare-fun b!6837959 () Bool)

(assert (=> b!6837959 (= e!4124369 call!622790)))

(declare-fun bm!622787 () Bool)

(assert (=> bm!622787 (= call!622791 (validRegex!8391 (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))))

(declare-fun b!6837960 () Bool)

(declare-fun e!4124366 () Bool)

(assert (=> b!6837960 (= e!4124366 call!622791)))

(declare-fun b!6837961 () Bool)

(assert (=> b!6837961 (= e!4124370 e!4124367)))

(assert (=> b!6837961 (= c!1273292 ((_ is Union!16655) (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))

(declare-fun b!6837962 () Bool)

(declare-fun e!4124368 () Bool)

(assert (=> b!6837962 (= e!4124368 e!4124370)))

(assert (=> b!6837962 (= c!1273291 ((_ is Star!16655) (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))

(declare-fun b!6837963 () Bool)

(assert (=> b!6837963 (= e!4124371 e!4124366)))

(declare-fun res!2792374 () Bool)

(assert (=> b!6837963 (=> (not res!2792374) (not e!4124366))))

(assert (=> b!6837963 (= res!2792374 call!622792)))

(declare-fun d!2150579 () Bool)

(declare-fun res!2792376 () Bool)

(assert (=> d!2150579 (=> res!2792376 e!4124368)))

(assert (=> d!2150579 (= res!2792376 ((_ is ElementMatch!16655) (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))

(assert (=> d!2150579 (= (validRegex!8391 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) e!4124368)))

(declare-fun b!6837964 () Bool)

(declare-fun res!2792377 () Bool)

(assert (=> b!6837964 (=> (not res!2792377) (not e!4124365))))

(assert (=> b!6837964 (= res!2792377 call!622792)))

(assert (=> b!6837964 (= e!4124367 e!4124365)))

(assert (= (and d!2150579 (not res!2792376)) b!6837962))

(assert (= (and b!6837962 c!1273291) b!6837957))

(assert (= (and b!6837962 (not c!1273291)) b!6837961))

(assert (= (and b!6837957 res!2792373) b!6837959))

(assert (= (and b!6837961 c!1273292) b!6837964))

(assert (= (and b!6837961 (not c!1273292)) b!6837956))

(assert (= (and b!6837964 res!2792377) b!6837958))

(assert (= (and b!6837956 (not res!2792375)) b!6837963))

(assert (= (and b!6837963 res!2792374) b!6837960))

(assert (= (or b!6837958 b!6837960) bm!622787))

(assert (= (or b!6837964 b!6837963) bm!622786))

(assert (= (or b!6837959 bm!622786) bm!622785))

(declare-fun m!7582808 () Bool)

(assert (=> bm!622785 m!7582808))

(declare-fun m!7582810 () Bool)

(assert (=> b!6837957 m!7582810))

(declare-fun m!7582812 () Bool)

(assert (=> bm!622787 m!7582812))

(assert (=> bm!622732 d!2150579))

(declare-fun d!2150581 () Bool)

(assert (=> d!2150581 (= (nullable!6622 r!7292) (nullableFct!2516 r!7292))))

(declare-fun bs!1828757 () Bool)

(assert (= bs!1828757 d!2150581))

(declare-fun m!7582814 () Bool)

(assert (=> bs!1828757 m!7582814))

(assert (=> b!6837209 d!2150581))

(declare-fun bm!622788 () Bool)

(declare-fun c!1273294 () Bool)

(declare-fun call!622793 () Bool)

(declare-fun c!1273293 () Bool)

(assert (=> bm!622788 (= call!622793 (validRegex!8391 (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086)))))))

(declare-fun b!6837965 () Bool)

(declare-fun res!2792380 () Bool)

(declare-fun e!4124378 () Bool)

(assert (=> b!6837965 (=> res!2792380 e!4124378)))

(assert (=> b!6837965 (= res!2792380 (not ((_ is Concat!25500) lt!2455086)))))

(declare-fun e!4124374 () Bool)

(assert (=> b!6837965 (= e!4124374 e!4124378)))

(declare-fun b!6837966 () Bool)

(declare-fun e!4124377 () Bool)

(declare-fun e!4124376 () Bool)

(assert (=> b!6837966 (= e!4124377 e!4124376)))

(declare-fun res!2792378 () Bool)

(assert (=> b!6837966 (= res!2792378 (not (nullable!6622 (reg!16984 lt!2455086))))))

(assert (=> b!6837966 (=> (not res!2792378) (not e!4124376))))

(declare-fun b!6837967 () Bool)

(declare-fun e!4124372 () Bool)

(declare-fun call!622794 () Bool)

(assert (=> b!6837967 (= e!4124372 call!622794)))

(declare-fun bm!622789 () Bool)

(declare-fun call!622795 () Bool)

(assert (=> bm!622789 (= call!622795 call!622793)))

(declare-fun b!6837968 () Bool)

(assert (=> b!6837968 (= e!4124376 call!622793)))

(declare-fun bm!622790 () Bool)

(assert (=> bm!622790 (= call!622794 (validRegex!8391 (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086))))))

(declare-fun b!6837969 () Bool)

(declare-fun e!4124373 () Bool)

(assert (=> b!6837969 (= e!4124373 call!622794)))

(declare-fun b!6837970 () Bool)

(assert (=> b!6837970 (= e!4124377 e!4124374)))

(assert (=> b!6837970 (= c!1273294 ((_ is Union!16655) lt!2455086))))

(declare-fun b!6837971 () Bool)

(declare-fun e!4124375 () Bool)

(assert (=> b!6837971 (= e!4124375 e!4124377)))

(assert (=> b!6837971 (= c!1273293 ((_ is Star!16655) lt!2455086))))

(declare-fun b!6837972 () Bool)

(assert (=> b!6837972 (= e!4124378 e!4124373)))

(declare-fun res!2792379 () Bool)

(assert (=> b!6837972 (=> (not res!2792379) (not e!4124373))))

(assert (=> b!6837972 (= res!2792379 call!622795)))

(declare-fun d!2150583 () Bool)

(declare-fun res!2792381 () Bool)

(assert (=> d!2150583 (=> res!2792381 e!4124375)))

(assert (=> d!2150583 (= res!2792381 ((_ is ElementMatch!16655) lt!2455086))))

(assert (=> d!2150583 (= (validRegex!8391 lt!2455086) e!4124375)))

(declare-fun b!6837973 () Bool)

(declare-fun res!2792382 () Bool)

(assert (=> b!6837973 (=> (not res!2792382) (not e!4124372))))

(assert (=> b!6837973 (= res!2792382 call!622795)))

(assert (=> b!6837973 (= e!4124374 e!4124372)))

(assert (= (and d!2150583 (not res!2792381)) b!6837971))

(assert (= (and b!6837971 c!1273293) b!6837966))

(assert (= (and b!6837971 (not c!1273293)) b!6837970))

(assert (= (and b!6837966 res!2792378) b!6837968))

(assert (= (and b!6837970 c!1273294) b!6837973))

(assert (= (and b!6837970 (not c!1273294)) b!6837965))

(assert (= (and b!6837973 res!2792382) b!6837967))

(assert (= (and b!6837965 (not res!2792380)) b!6837972))

(assert (= (and b!6837972 res!2792379) b!6837969))

(assert (= (or b!6837967 b!6837969) bm!622790))

(assert (= (or b!6837973 b!6837972) bm!622789))

(assert (= (or b!6837968 bm!622789) bm!622788))

(declare-fun m!7582816 () Bool)

(assert (=> bm!622788 m!7582816))

(declare-fun m!7582818 () Bool)

(assert (=> b!6837966 m!7582818))

(declare-fun m!7582820 () Bool)

(assert (=> bm!622790 m!7582820))

(assert (=> d!2150455 d!2150583))

(declare-fun d!2150585 () Bool)

(declare-fun res!2792383 () Bool)

(declare-fun e!4124379 () Bool)

(assert (=> d!2150585 (=> res!2792383 e!4124379)))

(assert (=> d!2150585 (= res!2792383 ((_ is Nil!66140) (exprs!6539 (h!72589 zl!343))))))

(assert (=> d!2150585 (= (forall!15835 (exprs!6539 (h!72589 zl!343)) lambda!386661) e!4124379)))

(declare-fun b!6837974 () Bool)

(declare-fun e!4124380 () Bool)

(assert (=> b!6837974 (= e!4124379 e!4124380)))

(declare-fun res!2792384 () Bool)

(assert (=> b!6837974 (=> (not res!2792384) (not e!4124380))))

(assert (=> b!6837974 (= res!2792384 (dynLambda!26428 lambda!386661 (h!72588 (exprs!6539 (h!72589 zl!343)))))))

(declare-fun b!6837975 () Bool)

(assert (=> b!6837975 (= e!4124380 (forall!15835 (t!380007 (exprs!6539 (h!72589 zl!343))) lambda!386661))))

(assert (= (and d!2150585 (not res!2792383)) b!6837974))

(assert (= (and b!6837974 res!2792384) b!6837975))

(declare-fun b_lambda!257937 () Bool)

(assert (=> (not b_lambda!257937) (not b!6837974)))

(declare-fun m!7582822 () Bool)

(assert (=> b!6837974 m!7582822))

(declare-fun m!7582824 () Bool)

(assert (=> b!6837975 m!7582824))

(assert (=> d!2150455 d!2150585))

(declare-fun d!2150587 () Bool)

(assert (=> d!2150587 (= (isEmpty!38531 (tail!12782 s!2326)) ((_ is Nil!66142) (tail!12782 s!2326)))))

(assert (=> b!6837213 d!2150587))

(assert (=> b!6837213 d!2150567))

(declare-fun bs!1828758 () Bool)

(declare-fun d!2150589 () Bool)

(assert (= bs!1828758 (and d!2150589 d!2150549)))

(declare-fun lambda!386687 () Int)

(assert (=> bs!1828758 (= lambda!386687 lambda!386679)))

(declare-fun bs!1828759 () Bool)

(assert (= bs!1828759 (and d!2150589 d!2150575)))

(assert (=> bs!1828759 (= lambda!386687 lambda!386685)))

(declare-fun bs!1828760 () Bool)

(assert (= bs!1828760 (and d!2150589 d!2150573)))

(assert (=> bs!1828760 (= lambda!386687 lambda!386682)))

(declare-fun bs!1828761 () Bool)

(assert (= bs!1828761 (and d!2150589 d!2150455)))

(assert (=> bs!1828761 (= lambda!386687 lambda!386661)))

(declare-fun bs!1828762 () Bool)

(assert (= bs!1828762 (and d!2150589 d!2150577)))

(assert (=> bs!1828762 (= lambda!386687 lambda!386686)))

(declare-fun bs!1828763 () Bool)

(assert (= bs!1828763 (and d!2150589 d!2150449)))

(assert (=> bs!1828763 (= lambda!386687 lambda!386657)))

(declare-fun bs!1828764 () Bool)

(assert (= bs!1828764 (and d!2150589 d!2150451)))

(assert (=> bs!1828764 (= lambda!386687 lambda!386658)))

(assert (=> d!2150589 (= (inv!84884 (h!72589 (t!380008 zl!343))) (forall!15835 (exprs!6539 (h!72589 (t!380008 zl!343))) lambda!386687))))

(declare-fun bs!1828765 () Bool)

(assert (= bs!1828765 d!2150589))

(declare-fun m!7582826 () Bool)

(assert (=> bs!1828765 m!7582826))

(assert (=> b!6837503 d!2150589))

(assert (=> d!2150445 d!2150427))

(assert (=> d!2150445 d!2150433))

(declare-fun d!2150591 () Bool)

(assert (=> d!2150591 (= (matchR!8838 r!7292 s!2326) (matchRSpec!3756 r!7292 s!2326))))

(assert (=> d!2150591 true))

(declare-fun _$88!5684 () Unit!160009)

(assert (=> d!2150591 (= (choose!50998 r!7292 s!2326) _$88!5684)))

(declare-fun bs!1828766 () Bool)

(assert (= bs!1828766 d!2150591))

(assert (=> bs!1828766 m!7582412))

(assert (=> bs!1828766 m!7582414))

(assert (=> d!2150445 d!2150591))

(assert (=> d!2150445 d!2150447))

(declare-fun d!2150593 () Bool)

(assert (=> d!2150593 (= (isConcat!1524 lt!2455086) ((_ is Concat!25500) lt!2455086))))

(assert (=> b!6837445 d!2150593))

(assert (=> b!6837218 d!2150587))

(assert (=> b!6837218 d!2150567))

(declare-fun d!2150595 () Bool)

(assert (=> d!2150595 (= (isEmpty!38532 (t!380007 (exprs!6539 (h!72589 zl!343)))) ((_ is Nil!66140) (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(assert (=> b!6837444 d!2150595))

(declare-fun d!2150597 () Bool)

(assert (=> d!2150597 (= (isEmptyExpr!2001 lt!2455086) ((_ is EmptyExpr!16655) lt!2455086))))

(assert (=> b!6837443 d!2150597))

(declare-fun d!2150599 () Bool)

(declare-fun c!1273297 () Bool)

(assert (=> d!2150599 (= c!1273297 ((_ is Nil!66141) lt!2455092))))

(declare-fun e!4124383 () (InoxSet Context!12078))

(assert (=> d!2150599 (= (content!12963 lt!2455092) e!4124383)))

(declare-fun b!6837980 () Bool)

(assert (=> b!6837980 (= e!4124383 ((as const (Array Context!12078 Bool)) false))))

(declare-fun b!6837981 () Bool)

(assert (=> b!6837981 (= e!4124383 ((_ map or) (store ((as const (Array Context!12078 Bool)) false) (h!72589 lt!2455092) true) (content!12963 (t!380008 lt!2455092))))))

(assert (= (and d!2150599 c!1273297) b!6837980))

(assert (= (and d!2150599 (not c!1273297)) b!6837981))

(declare-fun m!7582828 () Bool)

(assert (=> b!6837981 m!7582828))

(declare-fun m!7582830 () Bool)

(assert (=> b!6837981 m!7582830))

(assert (=> b!6837455 d!2150599))

(declare-fun d!2150601 () Bool)

(declare-fun res!2792385 () Bool)

(declare-fun e!4124384 () Bool)

(assert (=> d!2150601 (=> res!2792385 e!4124384)))

(assert (=> d!2150601 (= res!2792385 ((_ is Nil!66140) (exprs!6539 (h!72589 zl!343))))))

(assert (=> d!2150601 (= (forall!15835 (exprs!6539 (h!72589 zl!343)) lambda!386658) e!4124384)))

(declare-fun b!6837982 () Bool)

(declare-fun e!4124385 () Bool)

(assert (=> b!6837982 (= e!4124384 e!4124385)))

(declare-fun res!2792386 () Bool)

(assert (=> b!6837982 (=> (not res!2792386) (not e!4124385))))

(assert (=> b!6837982 (= res!2792386 (dynLambda!26428 lambda!386658 (h!72588 (exprs!6539 (h!72589 zl!343)))))))

(declare-fun b!6837983 () Bool)

(assert (=> b!6837983 (= e!4124385 (forall!15835 (t!380007 (exprs!6539 (h!72589 zl!343))) lambda!386658))))

(assert (= (and d!2150601 (not res!2792385)) b!6837982))

(assert (= (and b!6837982 res!2792386) b!6837983))

(declare-fun b_lambda!257939 () Bool)

(assert (=> (not b_lambda!257939) (not b!6837982)))

(declare-fun m!7582832 () Bool)

(assert (=> b!6837982 m!7582832))

(declare-fun m!7582834 () Bool)

(assert (=> b!6837983 m!7582834))

(assert (=> d!2150451 d!2150601))

(declare-fun b!6837984 () Bool)

(declare-fun e!4124386 () Bool)

(assert (=> b!6837984 (= e!4124386 tp_is_empty!42563)))

(declare-fun b!6837985 () Bool)

(declare-fun tp!1871257 () Bool)

(declare-fun tp!1871259 () Bool)

(assert (=> b!6837985 (= e!4124386 (and tp!1871257 tp!1871259))))

(assert (=> b!6837478 (= tp!1871058 e!4124386)))

(declare-fun b!6837986 () Bool)

(declare-fun tp!1871260 () Bool)

(assert (=> b!6837986 (= e!4124386 tp!1871260)))

(declare-fun b!6837987 () Bool)

(declare-fun tp!1871258 () Bool)

(declare-fun tp!1871256 () Bool)

(assert (=> b!6837987 (= e!4124386 (and tp!1871258 tp!1871256))))

(assert (= (and b!6837478 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33822 r!7292)))) b!6837984))

(assert (= (and b!6837478 ((_ is Concat!25500) (regOne!33823 (regTwo!33822 r!7292)))) b!6837985))

(assert (= (and b!6837478 ((_ is Star!16655) (regOne!33823 (regTwo!33822 r!7292)))) b!6837986))

(assert (= (and b!6837478 ((_ is Union!16655) (regOne!33823 (regTwo!33822 r!7292)))) b!6837987))

(declare-fun b!6837988 () Bool)

(declare-fun e!4124387 () Bool)

(assert (=> b!6837988 (= e!4124387 tp_is_empty!42563)))

(declare-fun b!6837989 () Bool)

(declare-fun tp!1871262 () Bool)

(declare-fun tp!1871264 () Bool)

(assert (=> b!6837989 (= e!4124387 (and tp!1871262 tp!1871264))))

(assert (=> b!6837478 (= tp!1871056 e!4124387)))

(declare-fun b!6837990 () Bool)

(declare-fun tp!1871265 () Bool)

(assert (=> b!6837990 (= e!4124387 tp!1871265)))

(declare-fun b!6837991 () Bool)

(declare-fun tp!1871263 () Bool)

(declare-fun tp!1871261 () Bool)

(assert (=> b!6837991 (= e!4124387 (and tp!1871263 tp!1871261))))

(assert (= (and b!6837478 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33822 r!7292)))) b!6837988))

(assert (= (and b!6837478 ((_ is Concat!25500) (regTwo!33823 (regTwo!33822 r!7292)))) b!6837989))

(assert (= (and b!6837478 ((_ is Star!16655) (regTwo!33823 (regTwo!33822 r!7292)))) b!6837990))

(assert (= (and b!6837478 ((_ is Union!16655) (regTwo!33823 (regTwo!33822 r!7292)))) b!6837991))

(declare-fun b!6837992 () Bool)

(declare-fun e!4124388 () Bool)

(assert (=> b!6837992 (= e!4124388 tp_is_empty!42563)))

(declare-fun b!6837993 () Bool)

(declare-fun tp!1871267 () Bool)

(declare-fun tp!1871269 () Bool)

(assert (=> b!6837993 (= e!4124388 (and tp!1871267 tp!1871269))))

(assert (=> b!6837485 (= tp!1871068 e!4124388)))

(declare-fun b!6837994 () Bool)

(declare-fun tp!1871270 () Bool)

(assert (=> b!6837994 (= e!4124388 tp!1871270)))

(declare-fun b!6837995 () Bool)

(declare-fun tp!1871268 () Bool)

(declare-fun tp!1871266 () Bool)

(assert (=> b!6837995 (= e!4124388 (and tp!1871268 tp!1871266))))

(assert (= (and b!6837485 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33823 r!7292)))) b!6837992))

(assert (= (and b!6837485 ((_ is Concat!25500) (regOne!33822 (regOne!33823 r!7292)))) b!6837993))

(assert (= (and b!6837485 ((_ is Star!16655) (regOne!33822 (regOne!33823 r!7292)))) b!6837994))

(assert (= (and b!6837485 ((_ is Union!16655) (regOne!33822 (regOne!33823 r!7292)))) b!6837995))

(declare-fun b!6837996 () Bool)

(declare-fun e!4124389 () Bool)

(assert (=> b!6837996 (= e!4124389 tp_is_empty!42563)))

(declare-fun b!6837997 () Bool)

(declare-fun tp!1871272 () Bool)

(declare-fun tp!1871274 () Bool)

(assert (=> b!6837997 (= e!4124389 (and tp!1871272 tp!1871274))))

(assert (=> b!6837485 (= tp!1871070 e!4124389)))

(declare-fun b!6837998 () Bool)

(declare-fun tp!1871275 () Bool)

(assert (=> b!6837998 (= e!4124389 tp!1871275)))

(declare-fun b!6837999 () Bool)

(declare-fun tp!1871273 () Bool)

(declare-fun tp!1871271 () Bool)

(assert (=> b!6837999 (= e!4124389 (and tp!1871273 tp!1871271))))

(assert (= (and b!6837485 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33823 r!7292)))) b!6837996))

(assert (= (and b!6837485 ((_ is Concat!25500) (regTwo!33822 (regOne!33823 r!7292)))) b!6837997))

(assert (= (and b!6837485 ((_ is Star!16655) (regTwo!33822 (regOne!33823 r!7292)))) b!6837998))

(assert (= (and b!6837485 ((_ is Union!16655) (regTwo!33822 (regOne!33823 r!7292)))) b!6837999))

(declare-fun b!6838000 () Bool)

(declare-fun e!4124390 () Bool)

(assert (=> b!6838000 (= e!4124390 tp_is_empty!42563)))

(declare-fun b!6838001 () Bool)

(declare-fun tp!1871277 () Bool)

(declare-fun tp!1871279 () Bool)

(assert (=> b!6838001 (= e!4124390 (and tp!1871277 tp!1871279))))

(assert (=> b!6837507 (= tp!1871092 e!4124390)))

(declare-fun b!6838002 () Bool)

(declare-fun tp!1871280 () Bool)

(assert (=> b!6838002 (= e!4124390 tp!1871280)))

(declare-fun b!6838003 () Bool)

(declare-fun tp!1871278 () Bool)

(declare-fun tp!1871276 () Bool)

(assert (=> b!6838003 (= e!4124390 (and tp!1871278 tp!1871276))))

(assert (= (and b!6837507 ((_ is ElementMatch!16655) (regOne!33822 (reg!16984 r!7292)))) b!6838000))

(assert (= (and b!6837507 ((_ is Concat!25500) (regOne!33822 (reg!16984 r!7292)))) b!6838001))

(assert (= (and b!6837507 ((_ is Star!16655) (regOne!33822 (reg!16984 r!7292)))) b!6838002))

(assert (= (and b!6837507 ((_ is Union!16655) (regOne!33822 (reg!16984 r!7292)))) b!6838003))

(declare-fun b!6838004 () Bool)

(declare-fun e!4124391 () Bool)

(assert (=> b!6838004 (= e!4124391 tp_is_empty!42563)))

(declare-fun b!6838005 () Bool)

(declare-fun tp!1871282 () Bool)

(declare-fun tp!1871284 () Bool)

(assert (=> b!6838005 (= e!4124391 (and tp!1871282 tp!1871284))))

(assert (=> b!6837507 (= tp!1871094 e!4124391)))

(declare-fun b!6838006 () Bool)

(declare-fun tp!1871285 () Bool)

(assert (=> b!6838006 (= e!4124391 tp!1871285)))

(declare-fun b!6838007 () Bool)

(declare-fun tp!1871283 () Bool)

(declare-fun tp!1871281 () Bool)

(assert (=> b!6838007 (= e!4124391 (and tp!1871283 tp!1871281))))

(assert (= (and b!6837507 ((_ is ElementMatch!16655) (regTwo!33822 (reg!16984 r!7292)))) b!6838004))

(assert (= (and b!6837507 ((_ is Concat!25500) (regTwo!33822 (reg!16984 r!7292)))) b!6838005))

(assert (= (and b!6837507 ((_ is Star!16655) (regTwo!33822 (reg!16984 r!7292)))) b!6838006))

(assert (= (and b!6837507 ((_ is Union!16655) (regTwo!33822 (reg!16984 r!7292)))) b!6838007))

(declare-fun b!6838008 () Bool)

(declare-fun e!4124392 () Bool)

(assert (=> b!6838008 (= e!4124392 tp_is_empty!42563)))

(declare-fun b!6838009 () Bool)

(declare-fun tp!1871287 () Bool)

(declare-fun tp!1871289 () Bool)

(assert (=> b!6838009 (= e!4124392 (and tp!1871287 tp!1871289))))

(assert (=> b!6837487 (= tp!1871069 e!4124392)))

(declare-fun b!6838010 () Bool)

(declare-fun tp!1871290 () Bool)

(assert (=> b!6838010 (= e!4124392 tp!1871290)))

(declare-fun b!6838011 () Bool)

(declare-fun tp!1871288 () Bool)

(declare-fun tp!1871286 () Bool)

(assert (=> b!6838011 (= e!4124392 (and tp!1871288 tp!1871286))))

(assert (= (and b!6837487 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33823 r!7292)))) b!6838008))

(assert (= (and b!6837487 ((_ is Concat!25500) (regOne!33823 (regOne!33823 r!7292)))) b!6838009))

(assert (= (and b!6837487 ((_ is Star!16655) (regOne!33823 (regOne!33823 r!7292)))) b!6838010))

(assert (= (and b!6837487 ((_ is Union!16655) (regOne!33823 (regOne!33823 r!7292)))) b!6838011))

(declare-fun b!6838012 () Bool)

(declare-fun e!4124393 () Bool)

(assert (=> b!6838012 (= e!4124393 tp_is_empty!42563)))

(declare-fun b!6838013 () Bool)

(declare-fun tp!1871292 () Bool)

(declare-fun tp!1871294 () Bool)

(assert (=> b!6838013 (= e!4124393 (and tp!1871292 tp!1871294))))

(assert (=> b!6837487 (= tp!1871067 e!4124393)))

(declare-fun b!6838014 () Bool)

(declare-fun tp!1871295 () Bool)

(assert (=> b!6838014 (= e!4124393 tp!1871295)))

(declare-fun b!6838015 () Bool)

(declare-fun tp!1871293 () Bool)

(declare-fun tp!1871291 () Bool)

(assert (=> b!6838015 (= e!4124393 (and tp!1871293 tp!1871291))))

(assert (= (and b!6837487 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33823 r!7292)))) b!6838012))

(assert (= (and b!6837487 ((_ is Concat!25500) (regTwo!33823 (regOne!33823 r!7292)))) b!6838013))

(assert (= (and b!6837487 ((_ is Star!16655) (regTwo!33823 (regOne!33823 r!7292)))) b!6838014))

(assert (= (and b!6837487 ((_ is Union!16655) (regTwo!33823 (regOne!33823 r!7292)))) b!6838015))

(declare-fun b!6838016 () Bool)

(declare-fun e!4124394 () Bool)

(assert (=> b!6838016 (= e!4124394 tp_is_empty!42563)))

(declare-fun b!6838017 () Bool)

(declare-fun tp!1871297 () Bool)

(declare-fun tp!1871299 () Bool)

(assert (=> b!6838017 (= e!4124394 (and tp!1871297 tp!1871299))))

(assert (=> b!6837486 (= tp!1871071 e!4124394)))

(declare-fun b!6838018 () Bool)

(declare-fun tp!1871300 () Bool)

(assert (=> b!6838018 (= e!4124394 tp!1871300)))

(declare-fun b!6838019 () Bool)

(declare-fun tp!1871298 () Bool)

(declare-fun tp!1871296 () Bool)

(assert (=> b!6838019 (= e!4124394 (and tp!1871298 tp!1871296))))

(assert (= (and b!6837486 ((_ is ElementMatch!16655) (reg!16984 (regOne!33823 r!7292)))) b!6838016))

(assert (= (and b!6837486 ((_ is Concat!25500) (reg!16984 (regOne!33823 r!7292)))) b!6838017))

(assert (= (and b!6837486 ((_ is Star!16655) (reg!16984 (regOne!33823 r!7292)))) b!6838018))

(assert (= (and b!6837486 ((_ is Union!16655) (reg!16984 (regOne!33823 r!7292)))) b!6838019))

(declare-fun b!6838020 () Bool)

(declare-fun e!4124395 () Bool)

(declare-fun tp!1871301 () Bool)

(declare-fun tp!1871302 () Bool)

(assert (=> b!6838020 (= e!4124395 (and tp!1871301 tp!1871302))))

(assert (=> b!6837496 (= tp!1871082 e!4124395)))

(assert (= (and b!6837496 ((_ is Cons!66140) (exprs!6539 setElem!46975))) b!6838020))

(declare-fun condSetEmpty!46977 () Bool)

(assert (=> setNonEmpty!46975 (= condSetEmpty!46977 (= setRest!46975 ((as const (Array Context!12078 Bool)) false)))))

(declare-fun setRes!46977 () Bool)

(assert (=> setNonEmpty!46975 (= tp!1871081 setRes!46977)))

(declare-fun setIsEmpty!46977 () Bool)

(assert (=> setIsEmpty!46977 setRes!46977))

(declare-fun tp!1871303 () Bool)

(declare-fun setNonEmpty!46977 () Bool)

(declare-fun e!4124396 () Bool)

(declare-fun setElem!46977 () Context!12078)

(assert (=> setNonEmpty!46977 (= setRes!46977 (and tp!1871303 (inv!84884 setElem!46977) e!4124396))))

(declare-fun setRest!46977 () (InoxSet Context!12078))

(assert (=> setNonEmpty!46977 (= setRest!46975 ((_ map or) (store ((as const (Array Context!12078 Bool)) false) setElem!46977 true) setRest!46977))))

(declare-fun b!6838021 () Bool)

(declare-fun tp!1871304 () Bool)

(assert (=> b!6838021 (= e!4124396 tp!1871304)))

(assert (= (and setNonEmpty!46975 condSetEmpty!46977) setIsEmpty!46977))

(assert (= (and setNonEmpty!46975 (not condSetEmpty!46977)) setNonEmpty!46977))

(assert (= setNonEmpty!46977 b!6838021))

(declare-fun m!7582836 () Bool)

(assert (=> setNonEmpty!46977 m!7582836))

(declare-fun b!6838022 () Bool)

(declare-fun e!4124397 () Bool)

(assert (=> b!6838022 (= e!4124397 tp_is_empty!42563)))

(declare-fun b!6838023 () Bool)

(declare-fun tp!1871306 () Bool)

(declare-fun tp!1871308 () Bool)

(assert (=> b!6838023 (= e!4124397 (and tp!1871306 tp!1871308))))

(assert (=> b!6837472 (= tp!1871052 e!4124397)))

(declare-fun b!6838024 () Bool)

(declare-fun tp!1871309 () Bool)

(assert (=> b!6838024 (= e!4124397 tp!1871309)))

(declare-fun b!6838025 () Bool)

(declare-fun tp!1871307 () Bool)

(declare-fun tp!1871305 () Bool)

(assert (=> b!6838025 (= e!4124397 (and tp!1871307 tp!1871305))))

(assert (= (and b!6837472 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33822 r!7292)))) b!6838022))

(assert (= (and b!6837472 ((_ is Concat!25500) (regOne!33822 (regOne!33822 r!7292)))) b!6838023))

(assert (= (and b!6837472 ((_ is Star!16655) (regOne!33822 (regOne!33822 r!7292)))) b!6838024))

(assert (= (and b!6837472 ((_ is Union!16655) (regOne!33822 (regOne!33822 r!7292)))) b!6838025))

(declare-fun b!6838026 () Bool)

(declare-fun e!4124398 () Bool)

(assert (=> b!6838026 (= e!4124398 tp_is_empty!42563)))

(declare-fun b!6838027 () Bool)

(declare-fun tp!1871311 () Bool)

(declare-fun tp!1871313 () Bool)

(assert (=> b!6838027 (= e!4124398 (and tp!1871311 tp!1871313))))

(assert (=> b!6837472 (= tp!1871054 e!4124398)))

(declare-fun b!6838028 () Bool)

(declare-fun tp!1871314 () Bool)

(assert (=> b!6838028 (= e!4124398 tp!1871314)))

(declare-fun b!6838029 () Bool)

(declare-fun tp!1871312 () Bool)

(declare-fun tp!1871310 () Bool)

(assert (=> b!6838029 (= e!4124398 (and tp!1871312 tp!1871310))))

(assert (= (and b!6837472 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33822 r!7292)))) b!6838026))

(assert (= (and b!6837472 ((_ is Concat!25500) (regTwo!33822 (regOne!33822 r!7292)))) b!6838027))

(assert (= (and b!6837472 ((_ is Star!16655) (regTwo!33822 (regOne!33822 r!7292)))) b!6838028))

(assert (= (and b!6837472 ((_ is Union!16655) (regTwo!33822 (regOne!33822 r!7292)))) b!6838029))

(declare-fun b!6838030 () Bool)

(declare-fun e!4124399 () Bool)

(assert (=> b!6838030 (= e!4124399 tp_is_empty!42563)))

(declare-fun b!6838031 () Bool)

(declare-fun tp!1871316 () Bool)

(declare-fun tp!1871318 () Bool)

(assert (=> b!6838031 (= e!4124399 (and tp!1871316 tp!1871318))))

(assert (=> b!6837509 (= tp!1871093 e!4124399)))

(declare-fun b!6838032 () Bool)

(declare-fun tp!1871319 () Bool)

(assert (=> b!6838032 (= e!4124399 tp!1871319)))

(declare-fun b!6838033 () Bool)

(declare-fun tp!1871317 () Bool)

(declare-fun tp!1871315 () Bool)

(assert (=> b!6838033 (= e!4124399 (and tp!1871317 tp!1871315))))

(assert (= (and b!6837509 ((_ is ElementMatch!16655) (regOne!33823 (reg!16984 r!7292)))) b!6838030))

(assert (= (and b!6837509 ((_ is Concat!25500) (regOne!33823 (reg!16984 r!7292)))) b!6838031))

(assert (= (and b!6837509 ((_ is Star!16655) (regOne!33823 (reg!16984 r!7292)))) b!6838032))

(assert (= (and b!6837509 ((_ is Union!16655) (regOne!33823 (reg!16984 r!7292)))) b!6838033))

(declare-fun b!6838034 () Bool)

(declare-fun e!4124400 () Bool)

(assert (=> b!6838034 (= e!4124400 tp_is_empty!42563)))

(declare-fun b!6838035 () Bool)

(declare-fun tp!1871321 () Bool)

(declare-fun tp!1871323 () Bool)

(assert (=> b!6838035 (= e!4124400 (and tp!1871321 tp!1871323))))

(assert (=> b!6837509 (= tp!1871091 e!4124400)))

(declare-fun b!6838036 () Bool)

(declare-fun tp!1871324 () Bool)

(assert (=> b!6838036 (= e!4124400 tp!1871324)))

(declare-fun b!6838037 () Bool)

(declare-fun tp!1871322 () Bool)

(declare-fun tp!1871320 () Bool)

(assert (=> b!6838037 (= e!4124400 (and tp!1871322 tp!1871320))))

(assert (= (and b!6837509 ((_ is ElementMatch!16655) (regTwo!33823 (reg!16984 r!7292)))) b!6838034))

(assert (= (and b!6837509 ((_ is Concat!25500) (regTwo!33823 (reg!16984 r!7292)))) b!6838035))

(assert (= (and b!6837509 ((_ is Star!16655) (regTwo!33823 (reg!16984 r!7292)))) b!6838036))

(assert (= (and b!6837509 ((_ is Union!16655) (regTwo!33823 (reg!16984 r!7292)))) b!6838037))

(declare-fun b!6838038 () Bool)

(declare-fun e!4124401 () Bool)

(assert (=> b!6838038 (= e!4124401 tp_is_empty!42563)))

(declare-fun b!6838039 () Bool)

(declare-fun tp!1871326 () Bool)

(declare-fun tp!1871328 () Bool)

(assert (=> b!6838039 (= e!4124401 (and tp!1871326 tp!1871328))))

(assert (=> b!6837508 (= tp!1871095 e!4124401)))

(declare-fun b!6838040 () Bool)

(declare-fun tp!1871329 () Bool)

(assert (=> b!6838040 (= e!4124401 tp!1871329)))

(declare-fun b!6838041 () Bool)

(declare-fun tp!1871327 () Bool)

(declare-fun tp!1871325 () Bool)

(assert (=> b!6838041 (= e!4124401 (and tp!1871327 tp!1871325))))

(assert (= (and b!6837508 ((_ is ElementMatch!16655) (reg!16984 (reg!16984 r!7292)))) b!6838038))

(assert (= (and b!6837508 ((_ is Concat!25500) (reg!16984 (reg!16984 r!7292)))) b!6838039))

(assert (= (and b!6837508 ((_ is Star!16655) (reg!16984 (reg!16984 r!7292)))) b!6838040))

(assert (= (and b!6837508 ((_ is Union!16655) (reg!16984 (reg!16984 r!7292)))) b!6838041))

(declare-fun b!6838042 () Bool)

(declare-fun e!4124402 () Bool)

(assert (=> b!6838042 (= e!4124402 tp_is_empty!42563)))

(declare-fun b!6838043 () Bool)

(declare-fun tp!1871331 () Bool)

(declare-fun tp!1871333 () Bool)

(assert (=> b!6838043 (= e!4124402 (and tp!1871331 tp!1871333))))

(assert (=> b!6837474 (= tp!1871053 e!4124402)))

(declare-fun b!6838044 () Bool)

(declare-fun tp!1871334 () Bool)

(assert (=> b!6838044 (= e!4124402 tp!1871334)))

(declare-fun b!6838045 () Bool)

(declare-fun tp!1871332 () Bool)

(declare-fun tp!1871330 () Bool)

(assert (=> b!6838045 (= e!4124402 (and tp!1871332 tp!1871330))))

(assert (= (and b!6837474 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33822 r!7292)))) b!6838042))

(assert (= (and b!6837474 ((_ is Concat!25500) (regOne!33823 (regOne!33822 r!7292)))) b!6838043))

(assert (= (and b!6837474 ((_ is Star!16655) (regOne!33823 (regOne!33822 r!7292)))) b!6838044))

(assert (= (and b!6837474 ((_ is Union!16655) (regOne!33823 (regOne!33822 r!7292)))) b!6838045))

(declare-fun b!6838046 () Bool)

(declare-fun e!4124403 () Bool)

(assert (=> b!6838046 (= e!4124403 tp_is_empty!42563)))

(declare-fun b!6838047 () Bool)

(declare-fun tp!1871336 () Bool)

(declare-fun tp!1871338 () Bool)

(assert (=> b!6838047 (= e!4124403 (and tp!1871336 tp!1871338))))

(assert (=> b!6837474 (= tp!1871051 e!4124403)))

(declare-fun b!6838048 () Bool)

(declare-fun tp!1871339 () Bool)

(assert (=> b!6838048 (= e!4124403 tp!1871339)))

(declare-fun b!6838049 () Bool)

(declare-fun tp!1871337 () Bool)

(declare-fun tp!1871335 () Bool)

(assert (=> b!6838049 (= e!4124403 (and tp!1871337 tp!1871335))))

(assert (= (and b!6837474 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33822 r!7292)))) b!6838046))

(assert (= (and b!6837474 ((_ is Concat!25500) (regTwo!33823 (regOne!33822 r!7292)))) b!6838047))

(assert (= (and b!6837474 ((_ is Star!16655) (regTwo!33823 (regOne!33822 r!7292)))) b!6838048))

(assert (= (and b!6837474 ((_ is Union!16655) (regTwo!33823 (regOne!33822 r!7292)))) b!6838049))

(declare-fun b!6838050 () Bool)

(declare-fun e!4124404 () Bool)

(assert (=> b!6838050 (= e!4124404 tp_is_empty!42563)))

(declare-fun b!6838051 () Bool)

(declare-fun tp!1871341 () Bool)

(declare-fun tp!1871343 () Bool)

(assert (=> b!6838051 (= e!4124404 (and tp!1871341 tp!1871343))))

(assert (=> b!6837473 (= tp!1871055 e!4124404)))

(declare-fun b!6838052 () Bool)

(declare-fun tp!1871344 () Bool)

(assert (=> b!6838052 (= e!4124404 tp!1871344)))

(declare-fun b!6838053 () Bool)

(declare-fun tp!1871342 () Bool)

(declare-fun tp!1871340 () Bool)

(assert (=> b!6838053 (= e!4124404 (and tp!1871342 tp!1871340))))

(assert (= (and b!6837473 ((_ is ElementMatch!16655) (reg!16984 (regOne!33822 r!7292)))) b!6838050))

(assert (= (and b!6837473 ((_ is Concat!25500) (reg!16984 (regOne!33822 r!7292)))) b!6838051))

(assert (= (and b!6837473 ((_ is Star!16655) (reg!16984 (regOne!33822 r!7292)))) b!6838052))

(assert (= (and b!6837473 ((_ is Union!16655) (reg!16984 (regOne!33822 r!7292)))) b!6838053))

(declare-fun b!6838054 () Bool)

(declare-fun e!4124405 () Bool)

(assert (=> b!6838054 (= e!4124405 tp_is_empty!42563)))

(declare-fun b!6838055 () Bool)

(declare-fun tp!1871346 () Bool)

(declare-fun tp!1871348 () Bool)

(assert (=> b!6838055 (= e!4124405 (and tp!1871346 tp!1871348))))

(assert (=> b!6837489 (= tp!1871073 e!4124405)))

(declare-fun b!6838056 () Bool)

(declare-fun tp!1871349 () Bool)

(assert (=> b!6838056 (= e!4124405 tp!1871349)))

(declare-fun b!6838057 () Bool)

(declare-fun tp!1871347 () Bool)

(declare-fun tp!1871345 () Bool)

(assert (=> b!6838057 (= e!4124405 (and tp!1871347 tp!1871345))))

(assert (= (and b!6837489 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33823 r!7292)))) b!6838054))

(assert (= (and b!6837489 ((_ is Concat!25500) (regOne!33822 (regTwo!33823 r!7292)))) b!6838055))

(assert (= (and b!6837489 ((_ is Star!16655) (regOne!33822 (regTwo!33823 r!7292)))) b!6838056))

(assert (= (and b!6837489 ((_ is Union!16655) (regOne!33822 (regTwo!33823 r!7292)))) b!6838057))

(declare-fun b!6838058 () Bool)

(declare-fun e!4124406 () Bool)

(assert (=> b!6838058 (= e!4124406 tp_is_empty!42563)))

(declare-fun b!6838059 () Bool)

(declare-fun tp!1871351 () Bool)

(declare-fun tp!1871353 () Bool)

(assert (=> b!6838059 (= e!4124406 (and tp!1871351 tp!1871353))))

(assert (=> b!6837489 (= tp!1871075 e!4124406)))

(declare-fun b!6838060 () Bool)

(declare-fun tp!1871354 () Bool)

(assert (=> b!6838060 (= e!4124406 tp!1871354)))

(declare-fun b!6838061 () Bool)

(declare-fun tp!1871352 () Bool)

(declare-fun tp!1871350 () Bool)

(assert (=> b!6838061 (= e!4124406 (and tp!1871352 tp!1871350))))

(assert (= (and b!6837489 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33823 r!7292)))) b!6838058))

(assert (= (and b!6837489 ((_ is Concat!25500) (regTwo!33822 (regTwo!33823 r!7292)))) b!6838059))

(assert (= (and b!6837489 ((_ is Star!16655) (regTwo!33822 (regTwo!33823 r!7292)))) b!6838060))

(assert (= (and b!6837489 ((_ is Union!16655) (regTwo!33822 (regTwo!33823 r!7292)))) b!6838061))

(declare-fun b!6838062 () Bool)

(declare-fun e!4124407 () Bool)

(declare-fun tp!1871355 () Bool)

(declare-fun tp!1871356 () Bool)

(assert (=> b!6838062 (= e!4124407 (and tp!1871355 tp!1871356))))

(assert (=> b!6837504 (= tp!1871087 e!4124407)))

(assert (= (and b!6837504 ((_ is Cons!66140) (exprs!6539 (h!72589 (t!380008 zl!343))))) b!6838062))

(declare-fun b!6838064 () Bool)

(declare-fun e!4124409 () Bool)

(declare-fun tp!1871357 () Bool)

(assert (=> b!6838064 (= e!4124409 tp!1871357)))

(declare-fun b!6838063 () Bool)

(declare-fun e!4124408 () Bool)

(declare-fun tp!1871358 () Bool)

(assert (=> b!6838063 (= e!4124408 (and (inv!84884 (h!72589 (t!380008 (t!380008 zl!343)))) e!4124409 tp!1871358))))

(assert (=> b!6837503 (= tp!1871088 e!4124408)))

(assert (= b!6838063 b!6838064))

(assert (= (and b!6837503 ((_ is Cons!66141) (t!380008 (t!380008 zl!343)))) b!6838063))

(declare-fun m!7582838 () Bool)

(assert (=> b!6838063 m!7582838))

(declare-fun b!6838065 () Bool)

(declare-fun e!4124410 () Bool)

(declare-fun tp!1871359 () Bool)

(assert (=> b!6838065 (= e!4124410 (and tp_is_empty!42563 tp!1871359))))

(assert (=> b!6837460 (= tp!1871040 e!4124410)))

(assert (= (and b!6837460 ((_ is Cons!66142) (t!380009 (t!380009 s!2326)))) b!6838065))

(declare-fun b!6838066 () Bool)

(declare-fun e!4124411 () Bool)

(assert (=> b!6838066 (= e!4124411 tp_is_empty!42563)))

(declare-fun b!6838067 () Bool)

(declare-fun tp!1871361 () Bool)

(declare-fun tp!1871363 () Bool)

(assert (=> b!6838067 (= e!4124411 (and tp!1871361 tp!1871363))))

(assert (=> b!6837483 (= tp!1871065 e!4124411)))

(declare-fun b!6838068 () Bool)

(declare-fun tp!1871364 () Bool)

(assert (=> b!6838068 (= e!4124411 tp!1871364)))

(declare-fun b!6838069 () Bool)

(declare-fun tp!1871362 () Bool)

(declare-fun tp!1871360 () Bool)

(assert (=> b!6838069 (= e!4124411 (and tp!1871362 tp!1871360))))

(assert (= (and b!6837483 ((_ is ElementMatch!16655) (h!72588 (exprs!6539 (h!72589 zl!343))))) b!6838066))

(assert (= (and b!6837483 ((_ is Concat!25500) (h!72588 (exprs!6539 (h!72589 zl!343))))) b!6838067))

(assert (= (and b!6837483 ((_ is Star!16655) (h!72588 (exprs!6539 (h!72589 zl!343))))) b!6838068))

(assert (= (and b!6837483 ((_ is Union!16655) (h!72588 (exprs!6539 (h!72589 zl!343))))) b!6838069))

(declare-fun b!6838070 () Bool)

(declare-fun e!4124412 () Bool)

(declare-fun tp!1871365 () Bool)

(declare-fun tp!1871366 () Bool)

(assert (=> b!6838070 (= e!4124412 (and tp!1871365 tp!1871366))))

(assert (=> b!6837483 (= tp!1871066 e!4124412)))

(assert (= (and b!6837483 ((_ is Cons!66140) (t!380007 (exprs!6539 (h!72589 zl!343))))) b!6838070))

(declare-fun b!6838071 () Bool)

(declare-fun e!4124413 () Bool)

(assert (=> b!6838071 (= e!4124413 tp_is_empty!42563)))

(declare-fun b!6838072 () Bool)

(declare-fun tp!1871368 () Bool)

(declare-fun tp!1871370 () Bool)

(assert (=> b!6838072 (= e!4124413 (and tp!1871368 tp!1871370))))

(assert (=> b!6837491 (= tp!1871074 e!4124413)))

(declare-fun b!6838073 () Bool)

(declare-fun tp!1871371 () Bool)

(assert (=> b!6838073 (= e!4124413 tp!1871371)))

(declare-fun b!6838074 () Bool)

(declare-fun tp!1871369 () Bool)

(declare-fun tp!1871367 () Bool)

(assert (=> b!6838074 (= e!4124413 (and tp!1871369 tp!1871367))))

(assert (= (and b!6837491 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33823 r!7292)))) b!6838071))

(assert (= (and b!6837491 ((_ is Concat!25500) (regOne!33823 (regTwo!33823 r!7292)))) b!6838072))

(assert (= (and b!6837491 ((_ is Star!16655) (regOne!33823 (regTwo!33823 r!7292)))) b!6838073))

(assert (= (and b!6837491 ((_ is Union!16655) (regOne!33823 (regTwo!33823 r!7292)))) b!6838074))

(declare-fun b!6838075 () Bool)

(declare-fun e!4124414 () Bool)

(assert (=> b!6838075 (= e!4124414 tp_is_empty!42563)))

(declare-fun b!6838076 () Bool)

(declare-fun tp!1871373 () Bool)

(declare-fun tp!1871375 () Bool)

(assert (=> b!6838076 (= e!4124414 (and tp!1871373 tp!1871375))))

(assert (=> b!6837491 (= tp!1871072 e!4124414)))

(declare-fun b!6838077 () Bool)

(declare-fun tp!1871376 () Bool)

(assert (=> b!6838077 (= e!4124414 tp!1871376)))

(declare-fun b!6838078 () Bool)

(declare-fun tp!1871374 () Bool)

(declare-fun tp!1871372 () Bool)

(assert (=> b!6838078 (= e!4124414 (and tp!1871374 tp!1871372))))

(assert (= (and b!6837491 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33823 r!7292)))) b!6838075))

(assert (= (and b!6837491 ((_ is Concat!25500) (regTwo!33823 (regTwo!33823 r!7292)))) b!6838076))

(assert (= (and b!6837491 ((_ is Star!16655) (regTwo!33823 (regTwo!33823 r!7292)))) b!6838077))

(assert (= (and b!6837491 ((_ is Union!16655) (regTwo!33823 (regTwo!33823 r!7292)))) b!6838078))

(declare-fun b!6838079 () Bool)

(declare-fun e!4124415 () Bool)

(assert (=> b!6838079 (= e!4124415 tp_is_empty!42563)))

(declare-fun b!6838080 () Bool)

(declare-fun tp!1871378 () Bool)

(declare-fun tp!1871380 () Bool)

(assert (=> b!6838080 (= e!4124415 (and tp!1871378 tp!1871380))))

(assert (=> b!6837490 (= tp!1871076 e!4124415)))

(declare-fun b!6838081 () Bool)

(declare-fun tp!1871381 () Bool)

(assert (=> b!6838081 (= e!4124415 tp!1871381)))

(declare-fun b!6838082 () Bool)

(declare-fun tp!1871379 () Bool)

(declare-fun tp!1871377 () Bool)

(assert (=> b!6838082 (= e!4124415 (and tp!1871379 tp!1871377))))

(assert (= (and b!6837490 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33823 r!7292)))) b!6838079))

(assert (= (and b!6837490 ((_ is Concat!25500) (reg!16984 (regTwo!33823 r!7292)))) b!6838080))

(assert (= (and b!6837490 ((_ is Star!16655) (reg!16984 (regTwo!33823 r!7292)))) b!6838081))

(assert (= (and b!6837490 ((_ is Union!16655) (reg!16984 (regTwo!33823 r!7292)))) b!6838082))

(declare-fun b!6838083 () Bool)

(declare-fun e!4124416 () Bool)

(assert (=> b!6838083 (= e!4124416 tp_is_empty!42563)))

(declare-fun b!6838084 () Bool)

(declare-fun tp!1871383 () Bool)

(declare-fun tp!1871385 () Bool)

(assert (=> b!6838084 (= e!4124416 (and tp!1871383 tp!1871385))))

(assert (=> b!6837477 (= tp!1871060 e!4124416)))

(declare-fun b!6838085 () Bool)

(declare-fun tp!1871386 () Bool)

(assert (=> b!6838085 (= e!4124416 tp!1871386)))

(declare-fun b!6838086 () Bool)

(declare-fun tp!1871384 () Bool)

(declare-fun tp!1871382 () Bool)

(assert (=> b!6838086 (= e!4124416 (and tp!1871384 tp!1871382))))

(assert (= (and b!6837477 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33822 r!7292)))) b!6838083))

(assert (= (and b!6837477 ((_ is Concat!25500) (reg!16984 (regTwo!33822 r!7292)))) b!6838084))

(assert (= (and b!6837477 ((_ is Star!16655) (reg!16984 (regTwo!33822 r!7292)))) b!6838085))

(assert (= (and b!6837477 ((_ is Union!16655) (reg!16984 (regTwo!33822 r!7292)))) b!6838086))

(declare-fun b!6838087 () Bool)

(declare-fun e!4124417 () Bool)

(assert (=> b!6838087 (= e!4124417 tp_is_empty!42563)))

(declare-fun b!6838088 () Bool)

(declare-fun tp!1871388 () Bool)

(declare-fun tp!1871390 () Bool)

(assert (=> b!6838088 (= e!4124417 (and tp!1871388 tp!1871390))))

(assert (=> b!6837505 (= tp!1871089 e!4124417)))

(declare-fun b!6838089 () Bool)

(declare-fun tp!1871391 () Bool)

(assert (=> b!6838089 (= e!4124417 tp!1871391)))

(declare-fun b!6838090 () Bool)

(declare-fun tp!1871389 () Bool)

(declare-fun tp!1871387 () Bool)

(assert (=> b!6838090 (= e!4124417 (and tp!1871389 tp!1871387))))

(assert (= (and b!6837505 ((_ is ElementMatch!16655) (h!72588 (exprs!6539 setElem!46969)))) b!6838087))

(assert (= (and b!6837505 ((_ is Concat!25500) (h!72588 (exprs!6539 setElem!46969)))) b!6838088))

(assert (= (and b!6837505 ((_ is Star!16655) (h!72588 (exprs!6539 setElem!46969)))) b!6838089))

(assert (= (and b!6837505 ((_ is Union!16655) (h!72588 (exprs!6539 setElem!46969)))) b!6838090))

(declare-fun b!6838091 () Bool)

(declare-fun e!4124418 () Bool)

(declare-fun tp!1871392 () Bool)

(declare-fun tp!1871393 () Bool)

(assert (=> b!6838091 (= e!4124418 (and tp!1871392 tp!1871393))))

(assert (=> b!6837505 (= tp!1871090 e!4124418)))

(assert (= (and b!6837505 ((_ is Cons!66140) (t!380007 (exprs!6539 setElem!46969)))) b!6838091))

(declare-fun b!6838092 () Bool)

(declare-fun e!4124419 () Bool)

(assert (=> b!6838092 (= e!4124419 tp_is_empty!42563)))

(declare-fun b!6838093 () Bool)

(declare-fun tp!1871395 () Bool)

(declare-fun tp!1871397 () Bool)

(assert (=> b!6838093 (= e!4124419 (and tp!1871395 tp!1871397))))

(assert (=> b!6837476 (= tp!1871057 e!4124419)))

(declare-fun b!6838094 () Bool)

(declare-fun tp!1871398 () Bool)

(assert (=> b!6838094 (= e!4124419 tp!1871398)))

(declare-fun b!6838095 () Bool)

(declare-fun tp!1871396 () Bool)

(declare-fun tp!1871394 () Bool)

(assert (=> b!6838095 (= e!4124419 (and tp!1871396 tp!1871394))))

(assert (= (and b!6837476 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33822 r!7292)))) b!6838092))

(assert (= (and b!6837476 ((_ is Concat!25500) (regOne!33822 (regTwo!33822 r!7292)))) b!6838093))

(assert (= (and b!6837476 ((_ is Star!16655) (regOne!33822 (regTwo!33822 r!7292)))) b!6838094))

(assert (= (and b!6837476 ((_ is Union!16655) (regOne!33822 (regTwo!33822 r!7292)))) b!6838095))

(declare-fun b!6838096 () Bool)

(declare-fun e!4124420 () Bool)

(assert (=> b!6838096 (= e!4124420 tp_is_empty!42563)))

(declare-fun b!6838097 () Bool)

(declare-fun tp!1871400 () Bool)

(declare-fun tp!1871402 () Bool)

(assert (=> b!6838097 (= e!4124420 (and tp!1871400 tp!1871402))))

(assert (=> b!6837476 (= tp!1871059 e!4124420)))

(declare-fun b!6838098 () Bool)

(declare-fun tp!1871403 () Bool)

(assert (=> b!6838098 (= e!4124420 tp!1871403)))

(declare-fun b!6838099 () Bool)

(declare-fun tp!1871401 () Bool)

(declare-fun tp!1871399 () Bool)

(assert (=> b!6838099 (= e!4124420 (and tp!1871401 tp!1871399))))

(assert (= (and b!6837476 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33822 r!7292)))) b!6838096))

(assert (= (and b!6837476 ((_ is Concat!25500) (regTwo!33822 (regTwo!33822 r!7292)))) b!6838097))

(assert (= (and b!6837476 ((_ is Star!16655) (regTwo!33822 (regTwo!33822 r!7292)))) b!6838098))

(assert (= (and b!6837476 ((_ is Union!16655) (regTwo!33822 (regTwo!33822 r!7292)))) b!6838099))

(declare-fun b_lambda!257941 () Bool)

(assert (= b_lambda!257939 (or d!2150451 b_lambda!257941)))

(declare-fun bs!1828767 () Bool)

(declare-fun d!2150603 () Bool)

(assert (= bs!1828767 (and d!2150603 d!2150451)))

(assert (=> bs!1828767 (= (dynLambda!26428 lambda!386658 (h!72588 (exprs!6539 (h!72589 zl!343)))) (validRegex!8391 (h!72588 (exprs!6539 (h!72589 zl!343)))))))

(declare-fun m!7582840 () Bool)

(assert (=> bs!1828767 m!7582840))

(assert (=> b!6837982 d!2150603))

(declare-fun b_lambda!257943 () Bool)

(assert (= b_lambda!257937 (or d!2150455 b_lambda!257943)))

(declare-fun bs!1828768 () Bool)

(declare-fun d!2150605 () Bool)

(assert (= bs!1828768 (and d!2150605 d!2150455)))

(assert (=> bs!1828768 (= (dynLambda!26428 lambda!386661 (h!72588 (exprs!6539 (h!72589 zl!343)))) (validRegex!8391 (h!72588 (exprs!6539 (h!72589 zl!343)))))))

(assert (=> bs!1828768 m!7582840))

(assert (=> b!6837974 d!2150605))

(declare-fun b_lambda!257945 () Bool)

(assert (= b_lambda!257935 (or d!2150449 b_lambda!257945)))

(declare-fun bs!1828769 () Bool)

(declare-fun d!2150607 () Bool)

(assert (= bs!1828769 (and d!2150607 d!2150449)))

(assert (=> bs!1828769 (= (dynLambda!26428 lambda!386657 (h!72588 (exprs!6539 setElem!46969))) (validRegex!8391 (h!72588 (exprs!6539 setElem!46969))))))

(declare-fun m!7582842 () Bool)

(assert (=> bs!1828769 m!7582842))

(assert (=> b!6837829 d!2150607))

(check-sat (not b!6837904) (not b!6837856) (not b!6838069) (not b!6837983) (not b!6838036) (not b!6837998) (not bm!622764) (not setNonEmpty!46977) (not b!6838043) (not b!6838028) (not b!6838005) (not b!6837946) (not b!6837817) (not b!6838094) (not b!6837997) (not bm!622769) (not b!6838059) (not b!6838013) (not b!6838086) (not d!2150549) (not b!6838097) (not b!6837990) (not bs!1828768) (not b!6838065) (not b!6837987) (not d!2150581) (not b!6838017) (not b!6838047) (not d!2150569) (not b!6838006) (not b!6838040) (not b!6838062) (not b!6838063) (not b!6838029) (not b!6838018) (not bm!622784) (not b!6838089) (not b!6838014) (not b!6838076) (not b!6838048) (not b!6838078) (not b!6837999) (not bm!622762) (not b!6838002) (not b!6837957) (not b!6837985) (not bm!622766) (not bm!622767) (not b!6838080) (not bm!622790) (not b!6838091) (not b!6837866) (not b_lambda!257943) (not b!6837874) (not b!6838045) (not b!6838021) (not b!6837975) (not bs!1828769) (not b!6837940) (not bs!1828767) (not bm!622781) (not b!6837966) (not b!6837843) (not b!6838032) (not bm!622787) (not b!6838072) (not b!6837864) (not b!6837947) (not b!6838025) (not b!6838099) (not b!6837830) (not b!6837945) (not b!6838070) (not b!6837954) (not b!6838067) (not b!6838055) (not bm!622785) (not b!6837845) (not bm!622782) (not b!6838060) (not b!6837869) (not b!6838001) (not b!6837995) (not d!2150589) (not b!6837818) (not b!6837806) (not b!6837981) (not b!6837994) (not d!2150573) (not b!6837879) (not b!6838061) (not d!2150561) (not b!6837857) (not b!6838009) (not b!6837842) (not bm!622768) tp_is_empty!42563 (not b!6837870) (not d!2150557) (not b!6838081) (not b!6838007) (not b!6838051) (not b_lambda!257941) (not b!6837986) (not b!6837868) (not b!6838031) (not b!6838093) (not b!6837942) (not b!6838053) (not b!6838064) (not b!6837941) (not b!6838056) (not b!6838003) (not b!6838039) (not b!6837867) (not b!6838088) (not d!2150551) (not b!6837912) (not bm!622765) (not b!6838057) (not b!6837846) (not b!6838011) (not b!6838044) (not b!6838074) (not b!6837835) (not b!6838098) (not b!6838077) (not b!6838052) (not b!6838015) (not d!2150563) (not b!6838082) (not b!6837849) (not b!6838068) (not b!6838010) (not b!6838024) (not b!6837848) (not b!6837834) (not b!6837844) (not d!2150575) (not b!6838027) (not bm!622778) (not b!6838020) (not b!6838085) (not b_lambda!257945) (not b!6838073) (not b!6838095) (not d!2150577) (not b!6838035) (not b!6837865) (not b!6838090) (not bm!622788) (not b!6837993) (not b!6838019) (not b!6838037) (not b!6837991) (not b!6838023) (not b!6837949) (not d!2150591) (not b!6838049) (not b!6837989) (not b!6838033) (not b!6838084) (not b!6838041))
(check-sat)
(get-model)

(declare-fun b!6838827 () Bool)

(declare-fun e!4124765 () Bool)

(declare-fun call!622871 () Bool)

(assert (=> b!6838827 (= e!4124765 call!622871)))

(declare-fun b!6838829 () Bool)

(declare-fun e!4124762 () Bool)

(declare-fun e!4124761 () Bool)

(assert (=> b!6838829 (= e!4124762 e!4124761)))

(declare-fun res!2792542 () Bool)

(declare-fun call!622872 () Bool)

(assert (=> b!6838829 (= res!2792542 call!622872)))

(assert (=> b!6838829 (=> res!2792542 e!4124761)))

(declare-fun bm!622866 () Bool)

(declare-fun c!1273377 () Bool)

(assert (=> bm!622866 (= call!622872 (nullable!6622 (ite c!1273377 (regOne!33823 r!7292) (regOne!33822 r!7292))))))

(declare-fun b!6838830 () Bool)

(declare-fun e!4124764 () Bool)

(assert (=> b!6838830 (= e!4124764 e!4124762)))

(assert (=> b!6838830 (= c!1273377 ((_ is Union!16655) r!7292))))

(declare-fun bm!622867 () Bool)

(assert (=> bm!622867 (= call!622871 (nullable!6622 (ite c!1273377 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))

(declare-fun b!6838831 () Bool)

(declare-fun e!4124759 () Bool)

(declare-fun e!4124760 () Bool)

(assert (=> b!6838831 (= e!4124759 e!4124760)))

(declare-fun res!2792544 () Bool)

(assert (=> b!6838831 (=> (not res!2792544) (not e!4124760))))

(assert (=> b!6838831 (= res!2792544 (and (not ((_ is EmptyLang!16655) r!7292)) (not ((_ is ElementMatch!16655) r!7292))))))

(declare-fun b!6838832 () Bool)

(assert (=> b!6838832 (= e!4124761 call!622871)))

(declare-fun d!2150745 () Bool)

(declare-fun res!2792540 () Bool)

(assert (=> d!2150745 (=> res!2792540 e!4124759)))

(assert (=> d!2150745 (= res!2792540 ((_ is EmptyExpr!16655) r!7292))))

(assert (=> d!2150745 (= (nullableFct!2516 r!7292) e!4124759)))

(declare-fun b!6838833 () Bool)

(assert (=> b!6838833 (= e!4124762 e!4124765)))

(declare-fun res!2792543 () Bool)

(assert (=> b!6838833 (= res!2792543 call!622872)))

(assert (=> b!6838833 (=> (not res!2792543) (not e!4124765))))

(declare-fun b!6838834 () Bool)

(assert (=> b!6838834 (= e!4124760 e!4124764)))

(declare-fun res!2792541 () Bool)

(assert (=> b!6838834 (=> res!2792541 e!4124764)))

(assert (=> b!6838834 (= res!2792541 ((_ is Star!16655) r!7292))))

(assert (= (and d!2150745 (not res!2792540)) b!6838831))

(assert (= (and b!6838831 res!2792544) b!6838834))

(assert (= (and b!6838834 (not res!2792541)) b!6838830))

(assert (= (and b!6838830 c!1273377) b!6838829))

(assert (= (and b!6838830 (not c!1273377)) b!6838833))

(assert (= (and b!6838829 (not res!2792542)) b!6838832))

(assert (= (and b!6838833 res!2792543) b!6838827))

(assert (= (or b!6838832 b!6838827) bm!622867))

(assert (= (or b!6838829 b!6838833) bm!622866))

(declare-fun m!7583124 () Bool)

(assert (=> bm!622866 m!7583124))

(declare-fun m!7583126 () Bool)

(assert (=> bm!622867 m!7583126))

(assert (=> d!2150581 d!2150745))

(declare-fun d!2150747 () Bool)

(assert (=> d!2150747 (= (isEmpty!38532 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343))))) ((_ is Nil!66140) (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(assert (=> b!6837843 d!2150747))

(declare-fun bs!1828920 () Bool)

(declare-fun b!6838867 () Bool)

(assert (= bs!1828920 (and b!6838867 b!6837814)))

(declare-fun lambda!386702 () Int)

(assert (=> bs!1828920 (= (and (= (reg!16984 (regTwo!33823 (regOne!33823 r!7292))) (reg!16984 (regTwo!33823 r!7292))) (= (regTwo!33823 (regOne!33823 r!7292)) (regTwo!33823 r!7292))) (= lambda!386702 lambda!386675))))

(declare-fun bs!1828921 () Bool)

(assert (= bs!1828921 (and b!6838867 b!6837822)))

(assert (=> bs!1828921 (not (= lambda!386702 lambda!386676))))

(declare-fun bs!1828922 () Bool)

(assert (= bs!1828922 (and b!6838867 b!6837831)))

(assert (=> bs!1828922 (= (and (= (reg!16984 (regTwo!33823 (regOne!33823 r!7292))) (reg!16984 (regOne!33823 r!7292))) (= (regTwo!33823 (regOne!33823 r!7292)) (regOne!33823 r!7292))) (= lambda!386702 lambda!386677))))

(declare-fun bs!1828923 () Bool)

(assert (= bs!1828923 (and b!6838867 b!6837839)))

(assert (=> bs!1828923 (not (= lambda!386702 lambda!386678))))

(declare-fun bs!1828924 () Bool)

(assert (= bs!1828924 (and b!6838867 b!6837381)))

(assert (=> bs!1828924 (= (and (= (reg!16984 (regTwo!33823 (regOne!33823 r!7292))) (reg!16984 r!7292)) (= (regTwo!33823 (regOne!33823 r!7292)) r!7292)) (= lambda!386702 lambda!386653))))

(declare-fun bs!1828925 () Bool)

(assert (= bs!1828925 (and b!6838867 b!6837389)))

(assert (=> bs!1828925 (not (= lambda!386702 lambda!386654))))

(assert (=> b!6838867 true))

(assert (=> b!6838867 true))

(declare-fun bs!1828926 () Bool)

(declare-fun b!6838875 () Bool)

(assert (= bs!1828926 (and b!6838875 b!6837814)))

(declare-fun lambda!386703 () Int)

(assert (=> bs!1828926 (not (= lambda!386703 lambda!386675))))

(declare-fun bs!1828927 () Bool)

(assert (= bs!1828927 (and b!6838875 b!6838867)))

(assert (=> bs!1828927 (not (= lambda!386703 lambda!386702))))

(declare-fun bs!1828928 () Bool)

(assert (= bs!1828928 (and b!6838875 b!6837822)))

(assert (=> bs!1828928 (= (and (= (regOne!33822 (regTwo!33823 (regOne!33823 r!7292))) (regOne!33822 (regTwo!33823 r!7292))) (= (regTwo!33822 (regTwo!33823 (regOne!33823 r!7292))) (regTwo!33822 (regTwo!33823 r!7292)))) (= lambda!386703 lambda!386676))))

(declare-fun bs!1828929 () Bool)

(assert (= bs!1828929 (and b!6838875 b!6837831)))

(assert (=> bs!1828929 (not (= lambda!386703 lambda!386677))))

(declare-fun bs!1828930 () Bool)

(assert (= bs!1828930 (and b!6838875 b!6837839)))

(assert (=> bs!1828930 (= (and (= (regOne!33822 (regTwo!33823 (regOne!33823 r!7292))) (regOne!33822 (regOne!33823 r!7292))) (= (regTwo!33822 (regTwo!33823 (regOne!33823 r!7292))) (regTwo!33822 (regOne!33823 r!7292)))) (= lambda!386703 lambda!386678))))

(declare-fun bs!1828931 () Bool)

(assert (= bs!1828931 (and b!6838875 b!6837381)))

(assert (=> bs!1828931 (not (= lambda!386703 lambda!386653))))

(declare-fun bs!1828933 () Bool)

(assert (= bs!1828933 (and b!6838875 b!6837389)))

(assert (=> bs!1828933 (= (and (= (regOne!33822 (regTwo!33823 (regOne!33823 r!7292))) (regOne!33822 r!7292)) (= (regTwo!33822 (regTwo!33823 (regOne!33823 r!7292))) (regTwo!33822 r!7292))) (= lambda!386703 lambda!386654))))

(assert (=> b!6838875 true))

(assert (=> b!6838875 true))

(declare-fun d!2150749 () Bool)

(declare-fun c!1273378 () Bool)

(assert (=> d!2150749 (= c!1273378 ((_ is EmptyExpr!16655) (regTwo!33823 (regOne!33823 r!7292))))))

(declare-fun e!4124780 () Bool)

(assert (=> d!2150749 (= (matchRSpec!3756 (regTwo!33823 (regOne!33823 r!7292)) s!2326) e!4124780)))

(declare-fun e!4124778 () Bool)

(declare-fun call!622874 () Bool)

(assert (=> b!6838867 (= e!4124778 call!622874)))

(declare-fun b!6838868 () Bool)

(declare-fun res!2792546 () Bool)

(assert (=> b!6838868 (=> res!2792546 e!4124778)))

(declare-fun call!622873 () Bool)

(assert (=> b!6838868 (= res!2792546 call!622873)))

(declare-fun e!4124774 () Bool)

(assert (=> b!6838868 (= e!4124774 e!4124778)))

(declare-fun b!6838869 () Bool)

(assert (=> b!6838869 (= e!4124780 call!622873)))

(declare-fun b!6838870 () Bool)

(declare-fun e!4124779 () Bool)

(declare-fun e!4124777 () Bool)

(assert (=> b!6838870 (= e!4124779 e!4124777)))

(declare-fun res!2792545 () Bool)

(assert (=> b!6838870 (= res!2792545 (matchRSpec!3756 (regOne!33823 (regTwo!33823 (regOne!33823 r!7292))) s!2326))))

(assert (=> b!6838870 (=> res!2792545 e!4124777)))

(declare-fun b!6838871 () Bool)

(assert (=> b!6838871 (= e!4124777 (matchRSpec!3756 (regTwo!33823 (regTwo!33823 (regOne!33823 r!7292))) s!2326))))

(declare-fun b!6838872 () Bool)

(declare-fun e!4124775 () Bool)

(assert (=> b!6838872 (= e!4124780 e!4124775)))

(declare-fun res!2792547 () Bool)

(assert (=> b!6838872 (= res!2792547 (not ((_ is EmptyLang!16655) (regTwo!33823 (regOne!33823 r!7292)))))))

(assert (=> b!6838872 (=> (not res!2792547) (not e!4124775))))

(declare-fun b!6838873 () Bool)

(declare-fun c!1273379 () Bool)

(assert (=> b!6838873 (= c!1273379 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33823 r!7292))))))

(declare-fun e!4124776 () Bool)

(assert (=> b!6838873 (= e!4124775 e!4124776)))

(declare-fun b!6838874 () Bool)

(assert (=> b!6838874 (= e!4124779 e!4124774)))

(declare-fun c!1273381 () Bool)

(assert (=> b!6838874 (= c!1273381 ((_ is Star!16655) (regTwo!33823 (regOne!33823 r!7292))))))

(declare-fun bm!622868 () Bool)

(assert (=> bm!622868 (= call!622874 (Exists!3723 (ite c!1273381 lambda!386702 lambda!386703)))))

(assert (=> b!6838875 (= e!4124774 call!622874)))

(declare-fun bm!622869 () Bool)

(assert (=> bm!622869 (= call!622873 (isEmpty!38531 s!2326))))

(declare-fun b!6838876 () Bool)

(declare-fun c!1273380 () Bool)

(assert (=> b!6838876 (= c!1273380 ((_ is Union!16655) (regTwo!33823 (regOne!33823 r!7292))))))

(assert (=> b!6838876 (= e!4124776 e!4124779)))

(declare-fun b!6838878 () Bool)

(assert (=> b!6838878 (= e!4124776 (= s!2326 (Cons!66142 (c!1273107 (regTwo!33823 (regOne!33823 r!7292))) Nil!66142)))))

(assert (= (and d!2150749 c!1273378) b!6838869))

(assert (= (and d!2150749 (not c!1273378)) b!6838872))

(assert (= (and b!6838872 res!2792547) b!6838873))

(assert (= (and b!6838873 c!1273379) b!6838878))

(assert (= (and b!6838873 (not c!1273379)) b!6838876))

(assert (= (and b!6838876 c!1273380) b!6838870))

(assert (= (and b!6838876 (not c!1273380)) b!6838874))

(assert (= (and b!6838870 (not res!2792545)) b!6838871))

(assert (= (and b!6838874 c!1273381) b!6838868))

(assert (= (and b!6838874 (not c!1273381)) b!6838875))

(assert (= (and b!6838868 (not res!2792546)) b!6838867))

(assert (= (or b!6838867 b!6838875) bm!622868))

(assert (= (or b!6838869 b!6838868) bm!622869))

(declare-fun m!7583140 () Bool)

(assert (=> b!6838870 m!7583140))

(declare-fun m!7583142 () Bool)

(assert (=> b!6838871 m!7583142))

(declare-fun m!7583144 () Bool)

(assert (=> bm!622868 m!7583144))

(assert (=> bm!622869 m!7582442))

(assert (=> b!6837835 d!2150749))

(declare-fun bm!622870 () Bool)

(declare-fun c!1273382 () Bool)

(declare-fun c!1273383 () Bool)

(declare-fun call!622875 () Bool)

(assert (=> bm!622870 (= call!622875 (validRegex!8391 (ite c!1273382 (reg!16984 lt!2455108) (ite c!1273383 (regOne!33823 lt!2455108) (regOne!33822 lt!2455108)))))))

(declare-fun b!6838995 () Bool)

(declare-fun res!2792550 () Bool)

(declare-fun e!4124817 () Bool)

(assert (=> b!6838995 (=> res!2792550 e!4124817)))

(assert (=> b!6838995 (= res!2792550 (not ((_ is Concat!25500) lt!2455108)))))

(declare-fun e!4124813 () Bool)

(assert (=> b!6838995 (= e!4124813 e!4124817)))

(declare-fun b!6838996 () Bool)

(declare-fun e!4124816 () Bool)

(declare-fun e!4124815 () Bool)

(assert (=> b!6838996 (= e!4124816 e!4124815)))

(declare-fun res!2792548 () Bool)

(assert (=> b!6838996 (= res!2792548 (not (nullable!6622 (reg!16984 lt!2455108))))))

(assert (=> b!6838996 (=> (not res!2792548) (not e!4124815))))

(declare-fun b!6838997 () Bool)

(declare-fun e!4124811 () Bool)

(declare-fun call!622876 () Bool)

(assert (=> b!6838997 (= e!4124811 call!622876)))

(declare-fun bm!622871 () Bool)

(declare-fun call!622877 () Bool)

(assert (=> bm!622871 (= call!622877 call!622875)))

(declare-fun b!6838998 () Bool)

(assert (=> b!6838998 (= e!4124815 call!622875)))

(declare-fun bm!622872 () Bool)

(assert (=> bm!622872 (= call!622876 (validRegex!8391 (ite c!1273383 (regTwo!33823 lt!2455108) (regTwo!33822 lt!2455108))))))

(declare-fun b!6838999 () Bool)

(declare-fun e!4124812 () Bool)

(assert (=> b!6838999 (= e!4124812 call!622876)))

(declare-fun b!6839000 () Bool)

(assert (=> b!6839000 (= e!4124816 e!4124813)))

(assert (=> b!6839000 (= c!1273383 ((_ is Union!16655) lt!2455108))))

(declare-fun b!6839001 () Bool)

(declare-fun e!4124814 () Bool)

(assert (=> b!6839001 (= e!4124814 e!4124816)))

(assert (=> b!6839001 (= c!1273382 ((_ is Star!16655) lt!2455108))))

(declare-fun b!6839002 () Bool)

(assert (=> b!6839002 (= e!4124817 e!4124812)))

(declare-fun res!2792549 () Bool)

(assert (=> b!6839002 (=> (not res!2792549) (not e!4124812))))

(assert (=> b!6839002 (= res!2792549 call!622877)))

(declare-fun d!2150767 () Bool)

(declare-fun res!2792551 () Bool)

(assert (=> d!2150767 (=> res!2792551 e!4124814)))

(assert (=> d!2150767 (= res!2792551 ((_ is ElementMatch!16655) lt!2455108))))

(assert (=> d!2150767 (= (validRegex!8391 lt!2455108) e!4124814)))

(declare-fun b!6839003 () Bool)

(declare-fun res!2792552 () Bool)

(assert (=> b!6839003 (=> (not res!2792552) (not e!4124811))))

(assert (=> b!6839003 (= res!2792552 call!622877)))

(assert (=> b!6839003 (= e!4124813 e!4124811)))

(assert (= (and d!2150767 (not res!2792551)) b!6839001))

(assert (= (and b!6839001 c!1273382) b!6838996))

(assert (= (and b!6839001 (not c!1273382)) b!6839000))

(assert (= (and b!6838996 res!2792548) b!6838998))

(assert (= (and b!6839000 c!1273383) b!6839003))

(assert (= (and b!6839000 (not c!1273383)) b!6838995))

(assert (= (and b!6839003 res!2792552) b!6838997))

(assert (= (and b!6838995 (not res!2792550)) b!6839002))

(assert (= (and b!6839002 res!2792549) b!6838999))

(assert (= (or b!6838997 b!6838999) bm!622872))

(assert (= (or b!6839003 b!6839002) bm!622871))

(assert (= (or b!6838998 bm!622871) bm!622870))

(declare-fun m!7583146 () Bool)

(assert (=> bm!622870 m!7583146))

(declare-fun m!7583148 () Bool)

(assert (=> b!6838996 m!7583148))

(declare-fun m!7583150 () Bool)

(assert (=> bm!622872 m!7583150))

(assert (=> d!2150563 d!2150767))

(assert (=> d!2150563 d!2150447))

(declare-fun bm!622873 () Bool)

(declare-fun c!1273385 () Bool)

(declare-fun c!1273384 () Bool)

(declare-fun call!622878 () Bool)

(assert (=> bm!622873 (= call!622878 (validRegex!8391 (ite c!1273384 (reg!16984 (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))) (ite c!1273385 (regOne!33823 (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))) (regOne!33822 (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))))))))

(declare-fun b!6839004 () Bool)

(declare-fun res!2792555 () Bool)

(declare-fun e!4124824 () Bool)

(assert (=> b!6839004 (=> res!2792555 e!4124824)))

(assert (=> b!6839004 (= res!2792555 (not ((_ is Concat!25500) (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))))))

(declare-fun e!4124820 () Bool)

(assert (=> b!6839004 (= e!4124820 e!4124824)))

(declare-fun b!6839005 () Bool)

(declare-fun e!4124823 () Bool)

(declare-fun e!4124822 () Bool)

(assert (=> b!6839005 (= e!4124823 e!4124822)))

(declare-fun res!2792553 () Bool)

(assert (=> b!6839005 (= res!2792553 (not (nullable!6622 (reg!16984 (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))))))))

(assert (=> b!6839005 (=> (not res!2792553) (not e!4124822))))

(declare-fun b!6839006 () Bool)

(declare-fun e!4124818 () Bool)

(declare-fun call!622879 () Bool)

(assert (=> b!6839006 (= e!4124818 call!622879)))

(declare-fun bm!622874 () Bool)

(declare-fun call!622880 () Bool)

(assert (=> bm!622874 (= call!622880 call!622878)))

(declare-fun b!6839007 () Bool)

(assert (=> b!6839007 (= e!4124822 call!622878)))

(declare-fun bm!622875 () Bool)

(assert (=> bm!622875 (= call!622879 (validRegex!8391 (ite c!1273385 (regTwo!33823 (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))) (regTwo!33822 (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))))))))

(declare-fun b!6839008 () Bool)

(declare-fun e!4124819 () Bool)

(assert (=> b!6839008 (= e!4124819 call!622879)))

(declare-fun b!6839009 () Bool)

(assert (=> b!6839009 (= e!4124823 e!4124820)))

(assert (=> b!6839009 (= c!1273385 ((_ is Union!16655) (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))))))

(declare-fun b!6839010 () Bool)

(declare-fun e!4124821 () Bool)

(assert (=> b!6839010 (= e!4124821 e!4124823)))

(assert (=> b!6839010 (= c!1273384 ((_ is Star!16655) (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))))))

(declare-fun b!6839011 () Bool)

(assert (=> b!6839011 (= e!4124824 e!4124819)))

(declare-fun res!2792554 () Bool)

(assert (=> b!6839011 (=> (not res!2792554) (not e!4124819))))

(assert (=> b!6839011 (= res!2792554 call!622880)))

(declare-fun d!2150769 () Bool)

(declare-fun res!2792556 () Bool)

(assert (=> d!2150769 (=> res!2792556 e!4124821)))

(assert (=> d!2150769 (= res!2792556 ((_ is ElementMatch!16655) (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))))))

(assert (=> d!2150769 (= (validRegex!8391 (ite c!1273291 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (ite c!1273292 (regOne!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regOne!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))) e!4124821)))

(declare-fun b!6839012 () Bool)

(declare-fun res!2792557 () Bool)

(assert (=> b!6839012 (=> (not res!2792557) (not e!4124818))))

(assert (=> b!6839012 (= res!2792557 call!622880)))

(assert (=> b!6839012 (= e!4124820 e!4124818)))

(assert (= (and d!2150769 (not res!2792556)) b!6839010))

(assert (= (and b!6839010 c!1273384) b!6839005))

(assert (= (and b!6839010 (not c!1273384)) b!6839009))

(assert (= (and b!6839005 res!2792553) b!6839007))

(assert (= (and b!6839009 c!1273385) b!6839012))

(assert (= (and b!6839009 (not c!1273385)) b!6839004))

(assert (= (and b!6839012 res!2792557) b!6839006))

(assert (= (and b!6839004 (not res!2792555)) b!6839011))

(assert (= (and b!6839011 res!2792554) b!6839008))

(assert (= (or b!6839006 b!6839008) bm!622875))

(assert (= (or b!6839012 b!6839011) bm!622874))

(assert (= (or b!6839007 bm!622874) bm!622873))

(declare-fun m!7583152 () Bool)

(assert (=> bm!622873 m!7583152))

(declare-fun m!7583154 () Bool)

(assert (=> b!6839005 m!7583154))

(declare-fun m!7583156 () Bool)

(assert (=> bm!622875 m!7583156))

(assert (=> bm!622785 d!2150769))

(declare-fun bm!622876 () Bool)

(declare-fun c!1273387 () Bool)

(declare-fun c!1273386 () Bool)

(declare-fun call!622881 () Bool)

(assert (=> bm!622876 (= call!622881 (validRegex!8391 (ite c!1273386 (reg!16984 (h!72588 (exprs!6539 (h!72589 zl!343)))) (ite c!1273387 (regOne!33823 (h!72588 (exprs!6539 (h!72589 zl!343)))) (regOne!33822 (h!72588 (exprs!6539 (h!72589 zl!343))))))))))

(declare-fun b!6839013 () Bool)

(declare-fun res!2792560 () Bool)

(declare-fun e!4124831 () Bool)

(assert (=> b!6839013 (=> res!2792560 e!4124831)))

(assert (=> b!6839013 (= res!2792560 (not ((_ is Concat!25500) (h!72588 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun e!4124827 () Bool)

(assert (=> b!6839013 (= e!4124827 e!4124831)))

(declare-fun b!6839014 () Bool)

(declare-fun e!4124830 () Bool)

(declare-fun e!4124829 () Bool)

(assert (=> b!6839014 (= e!4124830 e!4124829)))

(declare-fun res!2792558 () Bool)

(assert (=> b!6839014 (= res!2792558 (not (nullable!6622 (reg!16984 (h!72588 (exprs!6539 (h!72589 zl!343)))))))))

(assert (=> b!6839014 (=> (not res!2792558) (not e!4124829))))

(declare-fun b!6839015 () Bool)

(declare-fun e!4124825 () Bool)

(declare-fun call!622882 () Bool)

(assert (=> b!6839015 (= e!4124825 call!622882)))

(declare-fun bm!622877 () Bool)

(declare-fun call!622883 () Bool)

(assert (=> bm!622877 (= call!622883 call!622881)))

(declare-fun b!6839016 () Bool)

(assert (=> b!6839016 (= e!4124829 call!622881)))

(declare-fun bm!622878 () Bool)

(assert (=> bm!622878 (= call!622882 (validRegex!8391 (ite c!1273387 (regTwo!33823 (h!72588 (exprs!6539 (h!72589 zl!343)))) (regTwo!33822 (h!72588 (exprs!6539 (h!72589 zl!343)))))))))

(declare-fun b!6839017 () Bool)

(declare-fun e!4124826 () Bool)

(assert (=> b!6839017 (= e!4124826 call!622882)))

(declare-fun b!6839018 () Bool)

(assert (=> b!6839018 (= e!4124830 e!4124827)))

(assert (=> b!6839018 (= c!1273387 ((_ is Union!16655) (h!72588 (exprs!6539 (h!72589 zl!343)))))))

(declare-fun b!6839019 () Bool)

(declare-fun e!4124828 () Bool)

(assert (=> b!6839019 (= e!4124828 e!4124830)))

(assert (=> b!6839019 (= c!1273386 ((_ is Star!16655) (h!72588 (exprs!6539 (h!72589 zl!343)))))))

(declare-fun b!6839020 () Bool)

(assert (=> b!6839020 (= e!4124831 e!4124826)))

(declare-fun res!2792559 () Bool)

(assert (=> b!6839020 (=> (not res!2792559) (not e!4124826))))

(assert (=> b!6839020 (= res!2792559 call!622883)))

(declare-fun d!2150771 () Bool)

(declare-fun res!2792561 () Bool)

(assert (=> d!2150771 (=> res!2792561 e!4124828)))

(assert (=> d!2150771 (= res!2792561 ((_ is ElementMatch!16655) (h!72588 (exprs!6539 (h!72589 zl!343)))))))

(assert (=> d!2150771 (= (validRegex!8391 (h!72588 (exprs!6539 (h!72589 zl!343)))) e!4124828)))

(declare-fun b!6839021 () Bool)

(declare-fun res!2792562 () Bool)

(assert (=> b!6839021 (=> (not res!2792562) (not e!4124825))))

(assert (=> b!6839021 (= res!2792562 call!622883)))

(assert (=> b!6839021 (= e!4124827 e!4124825)))

(assert (= (and d!2150771 (not res!2792561)) b!6839019))

(assert (= (and b!6839019 c!1273386) b!6839014))

(assert (= (and b!6839019 (not c!1273386)) b!6839018))

(assert (= (and b!6839014 res!2792558) b!6839016))

(assert (= (and b!6839018 c!1273387) b!6839021))

(assert (= (and b!6839018 (not c!1273387)) b!6839013))

(assert (= (and b!6839021 res!2792562) b!6839015))

(assert (= (and b!6839013 (not res!2792560)) b!6839020))

(assert (= (and b!6839020 res!2792559) b!6839017))

(assert (= (or b!6839015 b!6839017) bm!622878))

(assert (= (or b!6839021 b!6839020) bm!622877))

(assert (= (or b!6839016 bm!622877) bm!622876))

(declare-fun m!7583158 () Bool)

(assert (=> bm!622876 m!7583158))

(declare-fun m!7583160 () Bool)

(assert (=> b!6839014 m!7583160))

(declare-fun m!7583162 () Bool)

(assert (=> bm!622878 m!7583162))

(assert (=> bs!1828768 d!2150771))

(declare-fun d!2150773 () Bool)

(declare-fun lt!2455127 () Bool)

(assert (=> d!2150773 (= lt!2455127 (select (content!12963 (t!380008 lt!2455092)) (h!72589 lt!2455092)))))

(declare-fun e!4124836 () Bool)

(assert (=> d!2150773 (= lt!2455127 e!4124836)))

(declare-fun res!2792568 () Bool)

(assert (=> d!2150773 (=> (not res!2792568) (not e!4124836))))

(assert (=> d!2150773 (= res!2792568 ((_ is Cons!66141) (t!380008 lt!2455092)))))

(assert (=> d!2150773 (= (contains!20311 (t!380008 lt!2455092) (h!72589 lt!2455092)) lt!2455127)))

(declare-fun b!6839026 () Bool)

(declare-fun e!4124837 () Bool)

(assert (=> b!6839026 (= e!4124836 e!4124837)))

(declare-fun res!2792567 () Bool)

(assert (=> b!6839026 (=> res!2792567 e!4124837)))

(assert (=> b!6839026 (= res!2792567 (= (h!72589 (t!380008 lt!2455092)) (h!72589 lt!2455092)))))

(declare-fun b!6839027 () Bool)

(assert (=> b!6839027 (= e!4124837 (contains!20311 (t!380008 (t!380008 lt!2455092)) (h!72589 lt!2455092)))))

(assert (= (and d!2150773 res!2792568) b!6839026))

(assert (= (and b!6839026 (not res!2792567)) b!6839027))

(assert (=> d!2150773 m!7582830))

(declare-fun m!7583164 () Bool)

(assert (=> d!2150773 m!7583164))

(declare-fun m!7583166 () Bool)

(assert (=> b!6839027 m!7583166))

(assert (=> b!6837856 d!2150773))

(declare-fun c!1273389 () Bool)

(declare-fun call!622884 () Bool)

(declare-fun bm!622879 () Bool)

(declare-fun c!1273388 () Bool)

(assert (=> bm!622879 (= call!622884 (validRegex!8391 (ite c!1273388 (reg!16984 (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086)))) (ite c!1273389 (regOne!33823 (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086)))) (regOne!33822 (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086))))))))))

(declare-fun b!6839028 () Bool)

(declare-fun res!2792571 () Bool)

(declare-fun e!4124844 () Bool)

(assert (=> b!6839028 (=> res!2792571 e!4124844)))

(assert (=> b!6839028 (= res!2792571 (not ((_ is Concat!25500) (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086))))))))

(declare-fun e!4124840 () Bool)

(assert (=> b!6839028 (= e!4124840 e!4124844)))

(declare-fun b!6839029 () Bool)

(declare-fun e!4124843 () Bool)

(declare-fun e!4124842 () Bool)

(assert (=> b!6839029 (= e!4124843 e!4124842)))

(declare-fun res!2792569 () Bool)

(assert (=> b!6839029 (= res!2792569 (not (nullable!6622 (reg!16984 (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086)))))))))

(assert (=> b!6839029 (=> (not res!2792569) (not e!4124842))))

(declare-fun b!6839030 () Bool)

(declare-fun e!4124838 () Bool)

(declare-fun call!622885 () Bool)

(assert (=> b!6839030 (= e!4124838 call!622885)))

(declare-fun bm!622880 () Bool)

(declare-fun call!622886 () Bool)

(assert (=> bm!622880 (= call!622886 call!622884)))

(declare-fun b!6839031 () Bool)

(assert (=> b!6839031 (= e!4124842 call!622884)))

(declare-fun bm!622881 () Bool)

(assert (=> bm!622881 (= call!622885 (validRegex!8391 (ite c!1273389 (regTwo!33823 (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086)))) (regTwo!33822 (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086)))))))))

(declare-fun b!6839032 () Bool)

(declare-fun e!4124839 () Bool)

(assert (=> b!6839032 (= e!4124839 call!622885)))

(declare-fun b!6839033 () Bool)

(assert (=> b!6839033 (= e!4124843 e!4124840)))

(assert (=> b!6839033 (= c!1273389 ((_ is Union!16655) (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086)))))))

(declare-fun b!6839034 () Bool)

(declare-fun e!4124841 () Bool)

(assert (=> b!6839034 (= e!4124841 e!4124843)))

(assert (=> b!6839034 (= c!1273388 ((_ is Star!16655) (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086)))))))

(declare-fun b!6839035 () Bool)

(assert (=> b!6839035 (= e!4124844 e!4124839)))

(declare-fun res!2792570 () Bool)

(assert (=> b!6839035 (=> (not res!2792570) (not e!4124839))))

(assert (=> b!6839035 (= res!2792570 call!622886)))

(declare-fun d!2150775 () Bool)

(declare-fun res!2792572 () Bool)

(assert (=> d!2150775 (=> res!2792572 e!4124841)))

(assert (=> d!2150775 (= res!2792572 ((_ is ElementMatch!16655) (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086)))))))

(assert (=> d!2150775 (= (validRegex!8391 (ite c!1273293 (reg!16984 lt!2455086) (ite c!1273294 (regOne!33823 lt!2455086) (regOne!33822 lt!2455086)))) e!4124841)))

(declare-fun b!6839036 () Bool)

(declare-fun res!2792573 () Bool)

(assert (=> b!6839036 (=> (not res!2792573) (not e!4124838))))

(assert (=> b!6839036 (= res!2792573 call!622886)))

(assert (=> b!6839036 (= e!4124840 e!4124838)))

(assert (= (and d!2150775 (not res!2792572)) b!6839034))

(assert (= (and b!6839034 c!1273388) b!6839029))

(assert (= (and b!6839034 (not c!1273388)) b!6839033))

(assert (= (and b!6839029 res!2792569) b!6839031))

(assert (= (and b!6839033 c!1273389) b!6839036))

(assert (= (and b!6839033 (not c!1273389)) b!6839028))

(assert (= (and b!6839036 res!2792573) b!6839030))

(assert (= (and b!6839028 (not res!2792571)) b!6839035))

(assert (= (and b!6839035 res!2792570) b!6839032))

(assert (= (or b!6839030 b!6839032) bm!622881))

(assert (= (or b!6839036 b!6839035) bm!622880))

(assert (= (or b!6839031 bm!622880) bm!622879))

(declare-fun m!7583168 () Bool)

(assert (=> bm!622879 m!7583168))

(declare-fun m!7583170 () Bool)

(assert (=> b!6839029 m!7583170))

(declare-fun m!7583172 () Bool)

(assert (=> bm!622881 m!7583172))

(assert (=> bm!622788 d!2150775))

(assert (=> b!6837845 d!2150595))

(declare-fun d!2150777 () Bool)

(declare-fun res!2792574 () Bool)

(declare-fun e!4124845 () Bool)

(assert (=> d!2150777 (=> res!2792574 e!4124845)))

(assert (=> d!2150777 (= res!2792574 ((_ is Nil!66140) (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(assert (=> d!2150777 (= (forall!15835 (t!380007 (exprs!6539 (h!72589 zl!343))) lambda!386661) e!4124845)))

(declare-fun b!6839037 () Bool)

(declare-fun e!4124846 () Bool)

(assert (=> b!6839037 (= e!4124845 e!4124846)))

(declare-fun res!2792575 () Bool)

(assert (=> b!6839037 (=> (not res!2792575) (not e!4124846))))

(assert (=> b!6839037 (= res!2792575 (dynLambda!26428 lambda!386661 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun b!6839038 () Bool)

(assert (=> b!6839038 (= e!4124846 (forall!15835 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343)))) lambda!386661))))

(assert (= (and d!2150777 (not res!2792574)) b!6839037))

(assert (= (and b!6839037 res!2792575) b!6839038))

(declare-fun b_lambda!257979 () Bool)

(assert (=> (not b_lambda!257979) (not b!6839037)))

(declare-fun m!7583174 () Bool)

(assert (=> b!6839037 m!7583174))

(declare-fun m!7583176 () Bool)

(assert (=> b!6839038 m!7583176))

(assert (=> b!6837975 d!2150777))

(declare-fun bs!1828941 () Bool)

(declare-fun d!2150779 () Bool)

(assert (= bs!1828941 (and d!2150779 d!2150549)))

(declare-fun lambda!386704 () Int)

(assert (=> bs!1828941 (= lambda!386704 lambda!386679)))

(declare-fun bs!1828942 () Bool)

(assert (= bs!1828942 (and d!2150779 d!2150575)))

(assert (=> bs!1828942 (= lambda!386704 lambda!386685)))

(declare-fun bs!1828943 () Bool)

(assert (= bs!1828943 (and d!2150779 d!2150573)))

(assert (=> bs!1828943 (= lambda!386704 lambda!386682)))

(declare-fun bs!1828944 () Bool)

(assert (= bs!1828944 (and d!2150779 d!2150455)))

(assert (=> bs!1828944 (= lambda!386704 lambda!386661)))

(declare-fun bs!1828945 () Bool)

(assert (= bs!1828945 (and d!2150779 d!2150577)))

(assert (=> bs!1828945 (= lambda!386704 lambda!386686)))

(declare-fun bs!1828946 () Bool)

(assert (= bs!1828946 (and d!2150779 d!2150449)))

(assert (=> bs!1828946 (= lambda!386704 lambda!386657)))

(declare-fun bs!1828947 () Bool)

(assert (= bs!1828947 (and d!2150779 d!2150589)))

(assert (=> bs!1828947 (= lambda!386704 lambda!386687)))

(declare-fun bs!1828948 () Bool)

(assert (= bs!1828948 (and d!2150779 d!2150451)))

(assert (=> bs!1828948 (= lambda!386704 lambda!386658)))

(declare-fun b!6839040 () Bool)

(declare-fun e!4124849 () Bool)

(assert (=> b!6839040 (= e!4124849 (isEmpty!38532 (t!380007 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343)))))))))

(declare-fun b!6839041 () Bool)

(declare-fun e!4124852 () Bool)

(declare-fun lt!2455128 () Regex!16655)

(assert (=> b!6839041 (= e!4124852 (isConcat!1524 lt!2455128))))

(declare-fun b!6839042 () Bool)

(declare-fun e!4124850 () Bool)

(declare-fun e!4124851 () Bool)

(assert (=> b!6839042 (= e!4124850 e!4124851)))

(declare-fun c!1273391 () Bool)

(assert (=> b!6839042 (= c!1273391 (isEmpty!38532 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun b!6839043 () Bool)

(assert (=> b!6839043 (= e!4124851 e!4124852)))

(declare-fun c!1273392 () Bool)

(assert (=> b!6839043 (= c!1273392 (isEmpty!38532 (tail!12783 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343)))))))))

(declare-fun b!6839044 () Bool)

(declare-fun e!4124848 () Regex!16655)

(assert (=> b!6839044 (= e!4124848 (h!72588 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun b!6839045 () Bool)

(assert (=> b!6839045 (= e!4124852 (= lt!2455128 (head!13698 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343)))))))))

(declare-fun b!6839039 () Bool)

(assert (=> b!6839039 (= e!4124851 (isEmptyExpr!2001 lt!2455128))))

(assert (=> d!2150779 e!4124850))

(declare-fun res!2792577 () Bool)

(assert (=> d!2150779 (=> (not res!2792577) (not e!4124850))))

(assert (=> d!2150779 (= res!2792577 (validRegex!8391 lt!2455128))))

(assert (=> d!2150779 (= lt!2455128 e!4124848)))

(declare-fun c!1273390 () Bool)

(assert (=> d!2150779 (= c!1273390 e!4124849)))

(declare-fun res!2792576 () Bool)

(assert (=> d!2150779 (=> (not res!2792576) (not e!4124849))))

(assert (=> d!2150779 (= res!2792576 ((_ is Cons!66140) (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(assert (=> d!2150779 (forall!15835 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343)))) lambda!386704)))

(assert (=> d!2150779 (= (generalisedConcat!2252 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343))))) lt!2455128)))

(declare-fun b!6839046 () Bool)

(declare-fun e!4124847 () Regex!16655)

(assert (=> b!6839046 (= e!4124847 (Concat!25500 (h!72588 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343))))) (generalisedConcat!2252 (t!380007 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343))))))))))

(declare-fun b!6839047 () Bool)

(assert (=> b!6839047 (= e!4124847 EmptyExpr!16655)))

(declare-fun b!6839048 () Bool)

(assert (=> b!6839048 (= e!4124848 e!4124847)))

(declare-fun c!1273393 () Bool)

(assert (=> b!6839048 (= c!1273393 ((_ is Cons!66140) (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(assert (= (and d!2150779 res!2792576) b!6839040))

(assert (= (and d!2150779 c!1273390) b!6839044))

(assert (= (and d!2150779 (not c!1273390)) b!6839048))

(assert (= (and b!6839048 c!1273393) b!6839046))

(assert (= (and b!6839048 (not c!1273393)) b!6839047))

(assert (= (and d!2150779 res!2792577) b!6839042))

(assert (= (and b!6839042 c!1273391) b!6839039))

(assert (= (and b!6839042 (not c!1273391)) b!6839043))

(assert (= (and b!6839043 c!1273392) b!6839045))

(assert (= (and b!6839043 (not c!1273392)) b!6839041))

(declare-fun m!7583178 () Bool)

(assert (=> b!6839041 m!7583178))

(declare-fun m!7583180 () Bool)

(assert (=> d!2150779 m!7583180))

(declare-fun m!7583182 () Bool)

(assert (=> d!2150779 m!7583182))

(assert (=> b!6839042 m!7582738))

(declare-fun m!7583184 () Bool)

(assert (=> b!6839043 m!7583184))

(assert (=> b!6839043 m!7583184))

(declare-fun m!7583186 () Bool)

(assert (=> b!6839043 m!7583186))

(declare-fun m!7583188 () Bool)

(assert (=> b!6839039 m!7583188))

(declare-fun m!7583190 () Bool)

(assert (=> b!6839045 m!7583190))

(declare-fun m!7583192 () Bool)

(assert (=> b!6839046 m!7583192))

(declare-fun m!7583194 () Bool)

(assert (=> b!6839040 m!7583194))

(assert (=> b!6837849 d!2150779))

(declare-fun d!2150781 () Bool)

(assert (=> d!2150781 (= (nullable!6622 (reg!16984 lt!2455086)) (nullableFct!2516 (reg!16984 lt!2455086)))))

(declare-fun bs!1828949 () Bool)

(assert (= bs!1828949 d!2150781))

(declare-fun m!7583196 () Bool)

(assert (=> bs!1828949 m!7583196))

(assert (=> b!6837966 d!2150781))

(declare-fun d!2150783 () Bool)

(assert (=> d!2150783 (= (isEmpty!38531 (tail!12782 (tail!12782 s!2326))) ((_ is Nil!66142) (tail!12782 (tail!12782 s!2326))))))

(assert (=> b!6837879 d!2150783))

(declare-fun d!2150785 () Bool)

(assert (=> d!2150785 (= (tail!12782 (tail!12782 s!2326)) (t!380009 (tail!12782 s!2326)))))

(assert (=> b!6837879 d!2150785))

(declare-fun d!2150787 () Bool)

(assert (=> d!2150787 true))

(assert (=> d!2150787 true))

(declare-fun res!2792580 () Bool)

(assert (=> d!2150787 (= (choose!51001 (ite c!1273167 lambda!386653 lambda!386654)) res!2792580)))

(assert (=> d!2150569 d!2150787))

(declare-fun bm!622882 () Bool)

(declare-fun call!622890 () Regex!16655)

(declare-fun c!1273395 () Bool)

(declare-fun c!1273396 () Bool)

(declare-fun c!1273397 () Bool)

(assert (=> bm!622882 (= call!622890 (derivativeStep!5307 (ite c!1273397 (regTwo!33823 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292))) (ite c!1273396 (reg!16984 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292))) (ite c!1273395 (regTwo!33822 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292))) (regOne!33822 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292)))))) (head!13697 s!2326)))))

(declare-fun e!4124853 () Regex!16655)

(declare-fun b!6839049 () Bool)

(declare-fun call!622887 () Regex!16655)

(assert (=> b!6839049 (= e!4124853 (Union!16655 (Concat!25500 call!622887 (regTwo!33822 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292)))) EmptyLang!16655))))

(declare-fun bm!622883 () Bool)

(declare-fun call!622888 () Regex!16655)

(assert (=> bm!622883 (= call!622888 call!622890)))

(declare-fun e!4124855 () Regex!16655)

(declare-fun b!6839050 () Bool)

(assert (=> b!6839050 (= e!4124855 (ite (= (head!13697 s!2326) (c!1273107 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292)))) EmptyExpr!16655 EmptyLang!16655))))

(declare-fun bm!622884 () Bool)

(assert (=> bm!622884 (= call!622887 call!622888)))

(declare-fun b!6839051 () Bool)

(declare-fun e!4124854 () Regex!16655)

(assert (=> b!6839051 (= e!4124854 EmptyLang!16655)))

(declare-fun b!6839052 () Bool)

(assert (=> b!6839052 (= c!1273395 (nullable!6622 (regOne!33822 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))

(declare-fun e!4124857 () Regex!16655)

(assert (=> b!6839052 (= e!4124857 e!4124853)))

(declare-fun b!6839053 () Bool)

(declare-fun e!4124856 () Regex!16655)

(declare-fun call!622889 () Regex!16655)

(assert (=> b!6839053 (= e!4124856 (Union!16655 call!622889 call!622890))))

(declare-fun b!6839054 () Bool)

(assert (=> b!6839054 (= c!1273397 ((_ is Union!16655) (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292))))))

(assert (=> b!6839054 (= e!4124855 e!4124856)))

(declare-fun b!6839055 () Bool)

(assert (=> b!6839055 (= e!4124856 e!4124857)))

(assert (=> b!6839055 (= c!1273396 ((_ is Star!16655) (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292))))))

(declare-fun b!6839057 () Bool)

(assert (=> b!6839057 (= e!4124854 e!4124855)))

(declare-fun c!1273394 () Bool)

(assert (=> b!6839057 (= c!1273394 ((_ is ElementMatch!16655) (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292))))))

(declare-fun bm!622885 () Bool)

(assert (=> bm!622885 (= call!622889 (derivativeStep!5307 (ite c!1273397 (regOne!33823 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292))) (regOne!33822 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (head!13697 s!2326)))))

(declare-fun b!6839058 () Bool)

(assert (=> b!6839058 (= e!4124853 (Union!16655 (Concat!25500 call!622889 (regTwo!33822 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292)))) call!622887))))

(declare-fun d!2150789 () Bool)

(declare-fun lt!2455129 () Regex!16655)

(assert (=> d!2150789 (validRegex!8391 lt!2455129)))

(assert (=> d!2150789 (= lt!2455129 e!4124854)))

(declare-fun c!1273398 () Bool)

(assert (=> d!2150789 (= c!1273398 (or ((_ is EmptyExpr!16655) (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292))) ((_ is EmptyLang!16655) (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))

(assert (=> d!2150789 (validRegex!8391 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292)))))

(assert (=> d!2150789 (= (derivativeStep!5307 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292)) (head!13697 s!2326)) lt!2455129)))

(declare-fun b!6839056 () Bool)

(assert (=> b!6839056 (= e!4124857 (Concat!25500 call!622888 (ite c!1273272 (regOne!33823 r!7292) (regOne!33822 r!7292))))))

(assert (= (and d!2150789 c!1273398) b!6839051))

(assert (= (and d!2150789 (not c!1273398)) b!6839057))

(assert (= (and b!6839057 c!1273394) b!6839050))

(assert (= (and b!6839057 (not c!1273394)) b!6839054))

(assert (= (and b!6839054 c!1273397) b!6839053))

(assert (= (and b!6839054 (not c!1273397)) b!6839055))

(assert (= (and b!6839055 c!1273396) b!6839056))

(assert (= (and b!6839055 (not c!1273396)) b!6839052))

(assert (= (and b!6839052 c!1273395) b!6839058))

(assert (= (and b!6839052 (not c!1273395)) b!6839049))

(assert (= (or b!6839058 b!6839049) bm!622884))

(assert (= (or b!6839056 bm!622884) bm!622883))

(assert (= (or b!6839053 bm!622883) bm!622882))

(assert (= (or b!6839053 b!6839058) bm!622885))

(assert (=> bm!622882 m!7582448))

(declare-fun m!7583198 () Bool)

(assert (=> bm!622882 m!7583198))

(declare-fun m!7583200 () Bool)

(assert (=> b!6839052 m!7583200))

(assert (=> bm!622885 m!7582448))

(declare-fun m!7583202 () Bool)

(assert (=> bm!622885 m!7583202))

(declare-fun m!7583204 () Bool)

(assert (=> d!2150789 m!7583204))

(declare-fun m!7583206 () Bool)

(assert (=> d!2150789 m!7583206))

(assert (=> bm!622781 d!2150789))

(declare-fun d!2150791 () Bool)

(assert (=> d!2150791 (= (nullable!6622 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))) (nullableFct!2516 (reg!16984 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))))

(declare-fun bs!1828950 () Bool)

(assert (= bs!1828950 d!2150791))

(declare-fun m!7583208 () Bool)

(assert (=> bs!1828950 m!7583208))

(assert (=> b!6837957 d!2150791))

(declare-fun d!2150793 () Bool)

(assert (=> d!2150793 (= (Exists!3723 (ite c!1273251 lambda!386677 lambda!386678)) (choose!51001 (ite c!1273251 lambda!386677 lambda!386678)))))

(declare-fun bs!1828951 () Bool)

(assert (= bs!1828951 d!2150793))

(declare-fun m!7583210 () Bool)

(assert (=> bs!1828951 m!7583210))

(assert (=> bm!622767 d!2150793))

(declare-fun bm!622886 () Bool)

(declare-fun call!622891 () Bool)

(declare-fun c!1273399 () Bool)

(declare-fun c!1273400 () Bool)

(assert (=> bm!622886 (= call!622891 (validRegex!8391 (ite c!1273399 (reg!16984 (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086))) (ite c!1273400 (regOne!33823 (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086))) (regOne!33822 (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086)))))))))

(declare-fun b!6839059 () Bool)

(declare-fun res!2792583 () Bool)

(declare-fun e!4124864 () Bool)

(assert (=> b!6839059 (=> res!2792583 e!4124864)))

(assert (=> b!6839059 (= res!2792583 (not ((_ is Concat!25500) (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086)))))))

(declare-fun e!4124860 () Bool)

(assert (=> b!6839059 (= e!4124860 e!4124864)))

(declare-fun b!6839060 () Bool)

(declare-fun e!4124863 () Bool)

(declare-fun e!4124862 () Bool)

(assert (=> b!6839060 (= e!4124863 e!4124862)))

(declare-fun res!2792581 () Bool)

(assert (=> b!6839060 (= res!2792581 (not (nullable!6622 (reg!16984 (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086))))))))

(assert (=> b!6839060 (=> (not res!2792581) (not e!4124862))))

(declare-fun b!6839061 () Bool)

(declare-fun e!4124858 () Bool)

(declare-fun call!622892 () Bool)

(assert (=> b!6839061 (= e!4124858 call!622892)))

(declare-fun bm!622887 () Bool)

(declare-fun call!622893 () Bool)

(assert (=> bm!622887 (= call!622893 call!622891)))

(declare-fun b!6839062 () Bool)

(assert (=> b!6839062 (= e!4124862 call!622891)))

(declare-fun bm!622888 () Bool)

(assert (=> bm!622888 (= call!622892 (validRegex!8391 (ite c!1273400 (regTwo!33823 (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086))) (regTwo!33822 (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086))))))))

(declare-fun b!6839063 () Bool)

(declare-fun e!4124859 () Bool)

(assert (=> b!6839063 (= e!4124859 call!622892)))

(declare-fun b!6839064 () Bool)

(assert (=> b!6839064 (= e!4124863 e!4124860)))

(assert (=> b!6839064 (= c!1273400 ((_ is Union!16655) (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086))))))

(declare-fun b!6839065 () Bool)

(declare-fun e!4124861 () Bool)

(assert (=> b!6839065 (= e!4124861 e!4124863)))

(assert (=> b!6839065 (= c!1273399 ((_ is Star!16655) (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086))))))

(declare-fun b!6839066 () Bool)

(assert (=> b!6839066 (= e!4124864 e!4124859)))

(declare-fun res!2792582 () Bool)

(assert (=> b!6839066 (=> (not res!2792582) (not e!4124859))))

(assert (=> b!6839066 (= res!2792582 call!622893)))

(declare-fun d!2150795 () Bool)

(declare-fun res!2792584 () Bool)

(assert (=> d!2150795 (=> res!2792584 e!4124861)))

(assert (=> d!2150795 (= res!2792584 ((_ is ElementMatch!16655) (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086))))))

(assert (=> d!2150795 (= (validRegex!8391 (ite c!1273294 (regTwo!33823 lt!2455086) (regTwo!33822 lt!2455086))) e!4124861)))

(declare-fun b!6839067 () Bool)

(declare-fun res!2792585 () Bool)

(assert (=> b!6839067 (=> (not res!2792585) (not e!4124858))))

(assert (=> b!6839067 (= res!2792585 call!622893)))

(assert (=> b!6839067 (= e!4124860 e!4124858)))

(assert (= (and d!2150795 (not res!2792584)) b!6839065))

(assert (= (and b!6839065 c!1273399) b!6839060))

(assert (= (and b!6839065 (not c!1273399)) b!6839064))

(assert (= (and b!6839060 res!2792581) b!6839062))

(assert (= (and b!6839064 c!1273400) b!6839067))

(assert (= (and b!6839064 (not c!1273400)) b!6839059))

(assert (= (and b!6839067 res!2792585) b!6839061))

(assert (= (and b!6839059 (not res!2792583)) b!6839066))

(assert (= (and b!6839066 res!2792582) b!6839063))

(assert (= (or b!6839061 b!6839063) bm!622888))

(assert (= (or b!6839067 b!6839066) bm!622887))

(assert (= (or b!6839062 bm!622887) bm!622886))

(declare-fun m!7583212 () Bool)

(assert (=> bm!622886 m!7583212))

(declare-fun m!7583214 () Bool)

(assert (=> b!6839060 m!7583214))

(declare-fun m!7583216 () Bool)

(assert (=> bm!622888 m!7583216))

(assert (=> bm!622790 d!2150795))

(declare-fun bs!1828952 () Bool)

(declare-fun b!6839068 () Bool)

(assert (= bs!1828952 (and b!6839068 b!6837814)))

(declare-fun lambda!386705 () Int)

(assert (=> bs!1828952 (= (and (= (reg!16984 (regOne!33823 (regTwo!33823 r!7292))) (reg!16984 (regTwo!33823 r!7292))) (= (regOne!33823 (regTwo!33823 r!7292)) (regTwo!33823 r!7292))) (= lambda!386705 lambda!386675))))

(declare-fun bs!1828953 () Bool)

(assert (= bs!1828953 (and b!6839068 b!6838867)))

(assert (=> bs!1828953 (= (and (= (reg!16984 (regOne!33823 (regTwo!33823 r!7292))) (reg!16984 (regTwo!33823 (regOne!33823 r!7292)))) (= (regOne!33823 (regTwo!33823 r!7292)) (regTwo!33823 (regOne!33823 r!7292)))) (= lambda!386705 lambda!386702))))

(declare-fun bs!1828954 () Bool)

(assert (= bs!1828954 (and b!6839068 b!6837822)))

(assert (=> bs!1828954 (not (= lambda!386705 lambda!386676))))

(declare-fun bs!1828955 () Bool)

(assert (= bs!1828955 (and b!6839068 b!6837831)))

(assert (=> bs!1828955 (= (and (= (reg!16984 (regOne!33823 (regTwo!33823 r!7292))) (reg!16984 (regOne!33823 r!7292))) (= (regOne!33823 (regTwo!33823 r!7292)) (regOne!33823 r!7292))) (= lambda!386705 lambda!386677))))

(declare-fun bs!1828956 () Bool)

(assert (= bs!1828956 (and b!6839068 b!6838875)))

(assert (=> bs!1828956 (not (= lambda!386705 lambda!386703))))

(declare-fun bs!1828957 () Bool)

(assert (= bs!1828957 (and b!6839068 b!6837839)))

(assert (=> bs!1828957 (not (= lambda!386705 lambda!386678))))

(declare-fun bs!1828958 () Bool)

(assert (= bs!1828958 (and b!6839068 b!6837381)))

(assert (=> bs!1828958 (= (and (= (reg!16984 (regOne!33823 (regTwo!33823 r!7292))) (reg!16984 r!7292)) (= (regOne!33823 (regTwo!33823 r!7292)) r!7292)) (= lambda!386705 lambda!386653))))

(declare-fun bs!1828959 () Bool)

(assert (= bs!1828959 (and b!6839068 b!6837389)))

(assert (=> bs!1828959 (not (= lambda!386705 lambda!386654))))

(assert (=> b!6839068 true))

(assert (=> b!6839068 true))

(declare-fun bs!1828960 () Bool)

(declare-fun b!6839076 () Bool)

(assert (= bs!1828960 (and b!6839076 b!6837814)))

(declare-fun lambda!386706 () Int)

(assert (=> bs!1828960 (not (= lambda!386706 lambda!386675))))

(declare-fun bs!1828961 () Bool)

(assert (= bs!1828961 (and b!6839076 b!6838867)))

(assert (=> bs!1828961 (not (= lambda!386706 lambda!386702))))

(declare-fun bs!1828962 () Bool)

(assert (= bs!1828962 (and b!6839076 b!6837831)))

(assert (=> bs!1828962 (not (= lambda!386706 lambda!386677))))

(declare-fun bs!1828963 () Bool)

(assert (= bs!1828963 (and b!6839076 b!6838875)))

(assert (=> bs!1828963 (= (and (= (regOne!33822 (regOne!33823 (regTwo!33823 r!7292))) (regOne!33822 (regTwo!33823 (regOne!33823 r!7292)))) (= (regTwo!33822 (regOne!33823 (regTwo!33823 r!7292))) (regTwo!33822 (regTwo!33823 (regOne!33823 r!7292))))) (= lambda!386706 lambda!386703))))

(declare-fun bs!1828964 () Bool)

(assert (= bs!1828964 (and b!6839076 b!6837839)))

(assert (=> bs!1828964 (= (and (= (regOne!33822 (regOne!33823 (regTwo!33823 r!7292))) (regOne!33822 (regOne!33823 r!7292))) (= (regTwo!33822 (regOne!33823 (regTwo!33823 r!7292))) (regTwo!33822 (regOne!33823 r!7292)))) (= lambda!386706 lambda!386678))))

(declare-fun bs!1828965 () Bool)

(assert (= bs!1828965 (and b!6839076 b!6837381)))

(assert (=> bs!1828965 (not (= lambda!386706 lambda!386653))))

(declare-fun bs!1828966 () Bool)

(assert (= bs!1828966 (and b!6839076 b!6837389)))

(assert (=> bs!1828966 (= (and (= (regOne!33822 (regOne!33823 (regTwo!33823 r!7292))) (regOne!33822 r!7292)) (= (regTwo!33822 (regOne!33823 (regTwo!33823 r!7292))) (regTwo!33822 r!7292))) (= lambda!386706 lambda!386654))))

(declare-fun bs!1828967 () Bool)

(assert (= bs!1828967 (and b!6839076 b!6839068)))

(assert (=> bs!1828967 (not (= lambda!386706 lambda!386705))))

(declare-fun bs!1828968 () Bool)

(assert (= bs!1828968 (and b!6839076 b!6837822)))

(assert (=> bs!1828968 (= (and (= (regOne!33822 (regOne!33823 (regTwo!33823 r!7292))) (regOne!33822 (regTwo!33823 r!7292))) (= (regTwo!33822 (regOne!33823 (regTwo!33823 r!7292))) (regTwo!33822 (regTwo!33823 r!7292)))) (= lambda!386706 lambda!386676))))

(assert (=> b!6839076 true))

(assert (=> b!6839076 true))

(declare-fun d!2150797 () Bool)

(declare-fun c!1273401 () Bool)

(assert (=> d!2150797 (= c!1273401 ((_ is EmptyExpr!16655) (regOne!33823 (regTwo!33823 r!7292))))))

(declare-fun e!4124871 () Bool)

(assert (=> d!2150797 (= (matchRSpec!3756 (regOne!33823 (regTwo!33823 r!7292)) s!2326) e!4124871)))

(declare-fun e!4124869 () Bool)

(declare-fun call!622895 () Bool)

(assert (=> b!6839068 (= e!4124869 call!622895)))

(declare-fun b!6839069 () Bool)

(declare-fun res!2792587 () Bool)

(assert (=> b!6839069 (=> res!2792587 e!4124869)))

(declare-fun call!622894 () Bool)

(assert (=> b!6839069 (= res!2792587 call!622894)))

(declare-fun e!4124865 () Bool)

(assert (=> b!6839069 (= e!4124865 e!4124869)))

(declare-fun b!6839070 () Bool)

(assert (=> b!6839070 (= e!4124871 call!622894)))

(declare-fun b!6839071 () Bool)

(declare-fun e!4124870 () Bool)

(declare-fun e!4124868 () Bool)

(assert (=> b!6839071 (= e!4124870 e!4124868)))

(declare-fun res!2792586 () Bool)

(assert (=> b!6839071 (= res!2792586 (matchRSpec!3756 (regOne!33823 (regOne!33823 (regTwo!33823 r!7292))) s!2326))))

(assert (=> b!6839071 (=> res!2792586 e!4124868)))

(declare-fun b!6839072 () Bool)

(assert (=> b!6839072 (= e!4124868 (matchRSpec!3756 (regTwo!33823 (regOne!33823 (regTwo!33823 r!7292))) s!2326))))

(declare-fun b!6839073 () Bool)

(declare-fun e!4124866 () Bool)

(assert (=> b!6839073 (= e!4124871 e!4124866)))

(declare-fun res!2792588 () Bool)

(assert (=> b!6839073 (= res!2792588 (not ((_ is EmptyLang!16655) (regOne!33823 (regTwo!33823 r!7292)))))))

(assert (=> b!6839073 (=> (not res!2792588) (not e!4124866))))

(declare-fun b!6839074 () Bool)

(declare-fun c!1273402 () Bool)

(assert (=> b!6839074 (= c!1273402 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33823 r!7292))))))

(declare-fun e!4124867 () Bool)

(assert (=> b!6839074 (= e!4124866 e!4124867)))

(declare-fun b!6839075 () Bool)

(assert (=> b!6839075 (= e!4124870 e!4124865)))

(declare-fun c!1273404 () Bool)

(assert (=> b!6839075 (= c!1273404 ((_ is Star!16655) (regOne!33823 (regTwo!33823 r!7292))))))

(declare-fun bm!622889 () Bool)

(assert (=> bm!622889 (= call!622895 (Exists!3723 (ite c!1273404 lambda!386705 lambda!386706)))))

(assert (=> b!6839076 (= e!4124865 call!622895)))

(declare-fun bm!622890 () Bool)

(assert (=> bm!622890 (= call!622894 (isEmpty!38531 s!2326))))

(declare-fun b!6839077 () Bool)

(declare-fun c!1273403 () Bool)

(assert (=> b!6839077 (= c!1273403 ((_ is Union!16655) (regOne!33823 (regTwo!33823 r!7292))))))

(assert (=> b!6839077 (= e!4124867 e!4124870)))

(declare-fun b!6839078 () Bool)

(assert (=> b!6839078 (= e!4124867 (= s!2326 (Cons!66142 (c!1273107 (regOne!33823 (regTwo!33823 r!7292))) Nil!66142)))))

(assert (= (and d!2150797 c!1273401) b!6839070))

(assert (= (and d!2150797 (not c!1273401)) b!6839073))

(assert (= (and b!6839073 res!2792588) b!6839074))

(assert (= (and b!6839074 c!1273402) b!6839078))

(assert (= (and b!6839074 (not c!1273402)) b!6839077))

(assert (= (and b!6839077 c!1273403) b!6839071))

(assert (= (and b!6839077 (not c!1273403)) b!6839075))

(assert (= (and b!6839071 (not res!2792586)) b!6839072))

(assert (= (and b!6839075 c!1273404) b!6839069))

(assert (= (and b!6839075 (not c!1273404)) b!6839076))

(assert (= (and b!6839069 (not res!2792587)) b!6839068))

(assert (= (or b!6839068 b!6839076) bm!622889))

(assert (= (or b!6839070 b!6839069) bm!622890))

(declare-fun m!7583218 () Bool)

(assert (=> b!6839071 m!7583218))

(declare-fun m!7583220 () Bool)

(assert (=> b!6839072 m!7583220))

(declare-fun m!7583222 () Bool)

(assert (=> bm!622889 m!7583222))

(assert (=> bm!622890 m!7582442))

(assert (=> b!6837817 d!2150797))

(declare-fun c!1273405 () Bool)

(declare-fun bm!622891 () Bool)

(declare-fun c!1273406 () Bool)

(declare-fun call!622896 () Bool)

(assert (=> bm!622891 (= call!622896 (validRegex!8391 (ite c!1273405 (reg!16984 (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))) (ite c!1273406 (regOne!33823 (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))) (regOne!33822 (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))))))))

(declare-fun b!6839079 () Bool)

(declare-fun res!2792591 () Bool)

(declare-fun e!4124878 () Bool)

(assert (=> b!6839079 (=> res!2792591 e!4124878)))

(assert (=> b!6839079 (= res!2792591 (not ((_ is Concat!25500) (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292)))))))))

(declare-fun e!4124874 () Bool)

(assert (=> b!6839079 (= e!4124874 e!4124878)))

(declare-fun b!6839080 () Bool)

(declare-fun e!4124877 () Bool)

(declare-fun e!4124876 () Bool)

(assert (=> b!6839080 (= e!4124877 e!4124876)))

(declare-fun res!2792589 () Bool)

(assert (=> b!6839080 (= res!2792589 (not (nullable!6622 (reg!16984 (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))))))

(assert (=> b!6839080 (=> (not res!2792589) (not e!4124876))))

(declare-fun b!6839081 () Bool)

(declare-fun e!4124872 () Bool)

(declare-fun call!622897 () Bool)

(assert (=> b!6839081 (= e!4124872 call!622897)))

(declare-fun bm!622892 () Bool)

(declare-fun call!622898 () Bool)

(assert (=> bm!622892 (= call!622898 call!622896)))

(declare-fun b!6839082 () Bool)

(assert (=> b!6839082 (= e!4124876 call!622896)))

(declare-fun bm!622893 () Bool)

(assert (=> bm!622893 (= call!622897 (validRegex!8391 (ite c!1273406 (regTwo!33823 (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))) (regTwo!33822 (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))))))

(declare-fun b!6839083 () Bool)

(declare-fun e!4124873 () Bool)

(assert (=> b!6839083 (= e!4124873 call!622897)))

(declare-fun b!6839084 () Bool)

(assert (=> b!6839084 (= e!4124877 e!4124874)))

(assert (=> b!6839084 (= c!1273406 ((_ is Union!16655) (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))))

(declare-fun b!6839085 () Bool)

(declare-fun e!4124875 () Bool)

(assert (=> b!6839085 (= e!4124875 e!4124877)))

(assert (=> b!6839085 (= c!1273405 ((_ is Star!16655) (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))))

(declare-fun b!6839086 () Bool)

(assert (=> b!6839086 (= e!4124878 e!4124873)))

(declare-fun res!2792590 () Bool)

(assert (=> b!6839086 (=> (not res!2792590) (not e!4124873))))

(assert (=> b!6839086 (= res!2792590 call!622898)))

(declare-fun d!2150799 () Bool)

(declare-fun res!2792592 () Bool)

(assert (=> d!2150799 (=> res!2792592 e!4124875)))

(assert (=> d!2150799 (= res!2792592 ((_ is ElementMatch!16655) (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))))))

(assert (=> d!2150799 (= (validRegex!8391 (ite c!1273292 (regTwo!33823 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))) (regTwo!33822 (ite c!1273173 (regTwo!33823 r!7292) (regTwo!33822 r!7292))))) e!4124875)))

(declare-fun b!6839087 () Bool)

(declare-fun res!2792593 () Bool)

(assert (=> b!6839087 (=> (not res!2792593) (not e!4124872))))

(assert (=> b!6839087 (= res!2792593 call!622898)))

(assert (=> b!6839087 (= e!4124874 e!4124872)))

(assert (= (and d!2150799 (not res!2792592)) b!6839085))

(assert (= (and b!6839085 c!1273405) b!6839080))

(assert (= (and b!6839085 (not c!1273405)) b!6839084))

(assert (= (and b!6839080 res!2792589) b!6839082))

(assert (= (and b!6839084 c!1273406) b!6839087))

(assert (= (and b!6839084 (not c!1273406)) b!6839079))

(assert (= (and b!6839087 res!2792593) b!6839081))

(assert (= (and b!6839079 (not res!2792591)) b!6839086))

(assert (= (and b!6839086 res!2792590) b!6839083))

(assert (= (or b!6839081 b!6839083) bm!622893))

(assert (= (or b!6839087 b!6839086) bm!622892))

(assert (= (or b!6839082 bm!622892) bm!622891))

(declare-fun m!7583224 () Bool)

(assert (=> bm!622891 m!7583224))

(declare-fun m!7583226 () Bool)

(assert (=> b!6839080 m!7583226))

(declare-fun m!7583228 () Bool)

(assert (=> bm!622893 m!7583228))

(assert (=> bm!622787 d!2150799))

(declare-fun c!1273408 () Bool)

(declare-fun call!622899 () Bool)

(declare-fun c!1273407 () Bool)

(declare-fun bm!622894 () Bool)

(assert (=> bm!622894 (= call!622899 (validRegex!8391 (ite c!1273407 (reg!16984 lt!2455104) (ite c!1273408 (regOne!33823 lt!2455104) (regOne!33822 lt!2455104)))))))

(declare-fun b!6839088 () Bool)

(declare-fun res!2792596 () Bool)

(declare-fun e!4124885 () Bool)

(assert (=> b!6839088 (=> res!2792596 e!4124885)))

(assert (=> b!6839088 (= res!2792596 (not ((_ is Concat!25500) lt!2455104)))))

(declare-fun e!4124881 () Bool)

(assert (=> b!6839088 (= e!4124881 e!4124885)))

(declare-fun b!6839089 () Bool)

(declare-fun e!4124884 () Bool)

(declare-fun e!4124883 () Bool)

(assert (=> b!6839089 (= e!4124884 e!4124883)))

(declare-fun res!2792594 () Bool)

(assert (=> b!6839089 (= res!2792594 (not (nullable!6622 (reg!16984 lt!2455104))))))

(assert (=> b!6839089 (=> (not res!2792594) (not e!4124883))))

(declare-fun b!6839090 () Bool)

(declare-fun e!4124879 () Bool)

(declare-fun call!622900 () Bool)

(assert (=> b!6839090 (= e!4124879 call!622900)))

(declare-fun bm!622895 () Bool)

(declare-fun call!622901 () Bool)

(assert (=> bm!622895 (= call!622901 call!622899)))

(declare-fun b!6839091 () Bool)

(assert (=> b!6839091 (= e!4124883 call!622899)))

(declare-fun bm!622896 () Bool)

(assert (=> bm!622896 (= call!622900 (validRegex!8391 (ite c!1273408 (regTwo!33823 lt!2455104) (regTwo!33822 lt!2455104))))))

(declare-fun b!6839092 () Bool)

(declare-fun e!4124880 () Bool)

(assert (=> b!6839092 (= e!4124880 call!622900)))

(declare-fun b!6839093 () Bool)

(assert (=> b!6839093 (= e!4124884 e!4124881)))

(assert (=> b!6839093 (= c!1273408 ((_ is Union!16655) lt!2455104))))

(declare-fun b!6839094 () Bool)

(declare-fun e!4124882 () Bool)

(assert (=> b!6839094 (= e!4124882 e!4124884)))

(assert (=> b!6839094 (= c!1273407 ((_ is Star!16655) lt!2455104))))

(declare-fun b!6839095 () Bool)

(assert (=> b!6839095 (= e!4124885 e!4124880)))

(declare-fun res!2792595 () Bool)

(assert (=> b!6839095 (=> (not res!2792595) (not e!4124880))))

(assert (=> b!6839095 (= res!2792595 call!622901)))

(declare-fun d!2150801 () Bool)

(declare-fun res!2792597 () Bool)

(assert (=> d!2150801 (=> res!2792597 e!4124882)))

(assert (=> d!2150801 (= res!2792597 ((_ is ElementMatch!16655) lt!2455104))))

(assert (=> d!2150801 (= (validRegex!8391 lt!2455104) e!4124882)))

(declare-fun b!6839096 () Bool)

(declare-fun res!2792598 () Bool)

(assert (=> b!6839096 (=> (not res!2792598) (not e!4124879))))

(assert (=> b!6839096 (= res!2792598 call!622901)))

(assert (=> b!6839096 (= e!4124881 e!4124879)))

(assert (= (and d!2150801 (not res!2792597)) b!6839094))

(assert (= (and b!6839094 c!1273407) b!6839089))

(assert (= (and b!6839094 (not c!1273407)) b!6839093))

(assert (= (and b!6839089 res!2792594) b!6839091))

(assert (= (and b!6839093 c!1273408) b!6839096))

(assert (= (and b!6839093 (not c!1273408)) b!6839088))

(assert (= (and b!6839096 res!2792598) b!6839090))

(assert (= (and b!6839088 (not res!2792596)) b!6839095))

(assert (= (and b!6839095 res!2792595) b!6839092))

(assert (= (or b!6839090 b!6839092) bm!622896))

(assert (= (or b!6839096 b!6839095) bm!622895))

(assert (= (or b!6839091 bm!622895) bm!622894))

(declare-fun m!7583230 () Bool)

(assert (=> bm!622894 m!7583230))

(declare-fun m!7583232 () Bool)

(assert (=> b!6839089 m!7583232))

(declare-fun m!7583234 () Bool)

(assert (=> bm!622896 m!7583234))

(assert (=> d!2150549 d!2150801))

(declare-fun d!2150803 () Bool)

(declare-fun res!2792599 () Bool)

(declare-fun e!4124886 () Bool)

(assert (=> d!2150803 (=> res!2792599 e!4124886)))

(assert (=> d!2150803 (= res!2792599 ((_ is Nil!66140) (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(assert (=> d!2150803 (= (forall!15835 (t!380007 (exprs!6539 (h!72589 zl!343))) lambda!386679) e!4124886)))

(declare-fun b!6839097 () Bool)

(declare-fun e!4124887 () Bool)

(assert (=> b!6839097 (= e!4124886 e!4124887)))

(declare-fun res!2792600 () Bool)

(assert (=> b!6839097 (=> (not res!2792600) (not e!4124887))))

(assert (=> b!6839097 (= res!2792600 (dynLambda!26428 lambda!386679 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun b!6839098 () Bool)

(assert (=> b!6839098 (= e!4124887 (forall!15835 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343)))) lambda!386679))))

(assert (= (and d!2150803 (not res!2792599)) b!6839097))

(assert (= (and b!6839097 res!2792600) b!6839098))

(declare-fun b_lambda!257981 () Bool)

(assert (=> (not b_lambda!257981) (not b!6839097)))

(declare-fun m!7583236 () Bool)

(assert (=> b!6839097 m!7583236))

(declare-fun m!7583238 () Bool)

(assert (=> b!6839098 m!7583238))

(assert (=> d!2150549 d!2150803))

(assert (=> bm!622768 d!2150559))

(assert (=> d!2150591 d!2150427))

(assert (=> d!2150591 d!2150433))

(declare-fun d!2150805 () Bool)

(assert (=> d!2150805 (= (nullable!6622 (reg!16984 lt!2455089)) (nullableFct!2516 (reg!16984 lt!2455089)))))

(declare-fun bs!1828969 () Bool)

(assert (= bs!1828969 d!2150805))

(declare-fun m!7583240 () Bool)

(assert (=> bs!1828969 m!7583240))

(assert (=> b!6837912 d!2150805))

(declare-fun b!6839099 () Bool)

(declare-fun e!4124893 () Bool)

(declare-fun call!622902 () Bool)

(assert (=> b!6839099 (= e!4124893 call!622902)))

(declare-fun b!6839100 () Bool)

(declare-fun e!4124891 () Bool)

(declare-fun e!4124890 () Bool)

(assert (=> b!6839100 (= e!4124891 e!4124890)))

(declare-fun res!2792603 () Bool)

(declare-fun call!622903 () Bool)

(assert (=> b!6839100 (= res!2792603 call!622903)))

(assert (=> b!6839100 (=> res!2792603 e!4124890)))

(declare-fun bm!622897 () Bool)

(declare-fun c!1273409 () Bool)

(assert (=> bm!622897 (= call!622903 (nullable!6622 (ite c!1273409 (regOne!33823 (reg!16984 r!7292)) (regOne!33822 (reg!16984 r!7292)))))))

(declare-fun b!6839101 () Bool)

(declare-fun e!4124892 () Bool)

(assert (=> b!6839101 (= e!4124892 e!4124891)))

(assert (=> b!6839101 (= c!1273409 ((_ is Union!16655) (reg!16984 r!7292)))))

(declare-fun bm!622898 () Bool)

(assert (=> bm!622898 (= call!622902 (nullable!6622 (ite c!1273409 (regTwo!33823 (reg!16984 r!7292)) (regTwo!33822 (reg!16984 r!7292)))))))

(declare-fun b!6839102 () Bool)

(declare-fun e!4124888 () Bool)

(declare-fun e!4124889 () Bool)

(assert (=> b!6839102 (= e!4124888 e!4124889)))

(declare-fun res!2792605 () Bool)

(assert (=> b!6839102 (=> (not res!2792605) (not e!4124889))))

(assert (=> b!6839102 (= res!2792605 (and (not ((_ is EmptyLang!16655) (reg!16984 r!7292))) (not ((_ is ElementMatch!16655) (reg!16984 r!7292)))))))

(declare-fun b!6839103 () Bool)

(assert (=> b!6839103 (= e!4124890 call!622902)))

(declare-fun d!2150807 () Bool)

(declare-fun res!2792601 () Bool)

(assert (=> d!2150807 (=> res!2792601 e!4124888)))

(assert (=> d!2150807 (= res!2792601 ((_ is EmptyExpr!16655) (reg!16984 r!7292)))))

(assert (=> d!2150807 (= (nullableFct!2516 (reg!16984 r!7292)) e!4124888)))

(declare-fun b!6839104 () Bool)

(assert (=> b!6839104 (= e!4124891 e!4124893)))

(declare-fun res!2792604 () Bool)

(assert (=> b!6839104 (= res!2792604 call!622903)))

(assert (=> b!6839104 (=> (not res!2792604) (not e!4124893))))

(declare-fun b!6839105 () Bool)

(assert (=> b!6839105 (= e!4124889 e!4124892)))

(declare-fun res!2792602 () Bool)

(assert (=> b!6839105 (=> res!2792602 e!4124892)))

(assert (=> b!6839105 (= res!2792602 ((_ is Star!16655) (reg!16984 r!7292)))))

(assert (= (and d!2150807 (not res!2792601)) b!6839102))

(assert (= (and b!6839102 res!2792605) b!6839105))

(assert (= (and b!6839105 (not res!2792602)) b!6839101))

(assert (= (and b!6839101 c!1273409) b!6839100))

(assert (= (and b!6839101 (not c!1273409)) b!6839104))

(assert (= (and b!6839100 (not res!2792603)) b!6839103))

(assert (= (and b!6839104 res!2792604) b!6839099))

(assert (= (or b!6839103 b!6839099) bm!622898))

(assert (= (or b!6839100 b!6839104) bm!622897))

(declare-fun m!7583242 () Bool)

(assert (=> bm!622897 m!7583242))

(declare-fun m!7583244 () Bool)

(assert (=> bm!622898 m!7583244))

(assert (=> d!2150551 d!2150807))

(declare-fun d!2150809 () Bool)

(assert (=> d!2150809 (= (isEmpty!38532 (unfocusZipperList!2076 zl!343)) ((_ is Nil!66140) (unfocusZipperList!2076 zl!343)))))

(assert (=> b!6837942 d!2150809))

(declare-fun bs!1828970 () Bool)

(declare-fun b!6839106 () Bool)

(assert (= bs!1828970 (and b!6839106 b!6837814)))

(declare-fun lambda!386707 () Int)

(assert (=> bs!1828970 (= (and (= (reg!16984 (regTwo!33823 (regTwo!33823 r!7292))) (reg!16984 (regTwo!33823 r!7292))) (= (regTwo!33823 (regTwo!33823 r!7292)) (regTwo!33823 r!7292))) (= lambda!386707 lambda!386675))))

(declare-fun bs!1828971 () Bool)

(assert (= bs!1828971 (and b!6839106 b!6838867)))

(assert (=> bs!1828971 (= (and (= (reg!16984 (regTwo!33823 (regTwo!33823 r!7292))) (reg!16984 (regTwo!33823 (regOne!33823 r!7292)))) (= (regTwo!33823 (regTwo!33823 r!7292)) (regTwo!33823 (regOne!33823 r!7292)))) (= lambda!386707 lambda!386702))))

(declare-fun bs!1828972 () Bool)

(assert (= bs!1828972 (and b!6839106 b!6837831)))

(assert (=> bs!1828972 (= (and (= (reg!16984 (regTwo!33823 (regTwo!33823 r!7292))) (reg!16984 (regOne!33823 r!7292))) (= (regTwo!33823 (regTwo!33823 r!7292)) (regOne!33823 r!7292))) (= lambda!386707 lambda!386677))))

(declare-fun bs!1828973 () Bool)

(assert (= bs!1828973 (and b!6839106 b!6838875)))

(assert (=> bs!1828973 (not (= lambda!386707 lambda!386703))))

(declare-fun bs!1828974 () Bool)

(assert (= bs!1828974 (and b!6839106 b!6837839)))

(assert (=> bs!1828974 (not (= lambda!386707 lambda!386678))))

(declare-fun bs!1828975 () Bool)

(assert (= bs!1828975 (and b!6839106 b!6837381)))

(assert (=> bs!1828975 (= (and (= (reg!16984 (regTwo!33823 (regTwo!33823 r!7292))) (reg!16984 r!7292)) (= (regTwo!33823 (regTwo!33823 r!7292)) r!7292)) (= lambda!386707 lambda!386653))))

(declare-fun bs!1828976 () Bool)

(assert (= bs!1828976 (and b!6839106 b!6837389)))

(assert (=> bs!1828976 (not (= lambda!386707 lambda!386654))))

(declare-fun bs!1828977 () Bool)

(assert (= bs!1828977 (and b!6839106 b!6839076)))

(assert (=> bs!1828977 (not (= lambda!386707 lambda!386706))))

(declare-fun bs!1828978 () Bool)

(assert (= bs!1828978 (and b!6839106 b!6839068)))

(assert (=> bs!1828978 (= (and (= (reg!16984 (regTwo!33823 (regTwo!33823 r!7292))) (reg!16984 (regOne!33823 (regTwo!33823 r!7292)))) (= (regTwo!33823 (regTwo!33823 r!7292)) (regOne!33823 (regTwo!33823 r!7292)))) (= lambda!386707 lambda!386705))))

(declare-fun bs!1828979 () Bool)

(assert (= bs!1828979 (and b!6839106 b!6837822)))

(assert (=> bs!1828979 (not (= lambda!386707 lambda!386676))))

(assert (=> b!6839106 true))

(assert (=> b!6839106 true))

(declare-fun bs!1828980 () Bool)

(declare-fun b!6839114 () Bool)

(assert (= bs!1828980 (and b!6839114 b!6837814)))

(declare-fun lambda!386708 () Int)

(assert (=> bs!1828980 (not (= lambda!386708 lambda!386675))))

(declare-fun bs!1828981 () Bool)

(assert (= bs!1828981 (and b!6839114 b!6838867)))

(assert (=> bs!1828981 (not (= lambda!386708 lambda!386702))))

(declare-fun bs!1828982 () Bool)

(assert (= bs!1828982 (and b!6839114 b!6837831)))

(assert (=> bs!1828982 (not (= lambda!386708 lambda!386677))))

(declare-fun bs!1828983 () Bool)

(assert (= bs!1828983 (and b!6839114 b!6838875)))

(assert (=> bs!1828983 (= (and (= (regOne!33822 (regTwo!33823 (regTwo!33823 r!7292))) (regOne!33822 (regTwo!33823 (regOne!33823 r!7292)))) (= (regTwo!33822 (regTwo!33823 (regTwo!33823 r!7292))) (regTwo!33822 (regTwo!33823 (regOne!33823 r!7292))))) (= lambda!386708 lambda!386703))))

(declare-fun bs!1828984 () Bool)

(assert (= bs!1828984 (and b!6839114 b!6839106)))

(assert (=> bs!1828984 (not (= lambda!386708 lambda!386707))))

(declare-fun bs!1828985 () Bool)

(assert (= bs!1828985 (and b!6839114 b!6837839)))

(assert (=> bs!1828985 (= (and (= (regOne!33822 (regTwo!33823 (regTwo!33823 r!7292))) (regOne!33822 (regOne!33823 r!7292))) (= (regTwo!33822 (regTwo!33823 (regTwo!33823 r!7292))) (regTwo!33822 (regOne!33823 r!7292)))) (= lambda!386708 lambda!386678))))

(declare-fun bs!1828986 () Bool)

(assert (= bs!1828986 (and b!6839114 b!6837381)))

(assert (=> bs!1828986 (not (= lambda!386708 lambda!386653))))

(declare-fun bs!1828987 () Bool)

(assert (= bs!1828987 (and b!6839114 b!6837389)))

(assert (=> bs!1828987 (= (and (= (regOne!33822 (regTwo!33823 (regTwo!33823 r!7292))) (regOne!33822 r!7292)) (= (regTwo!33822 (regTwo!33823 (regTwo!33823 r!7292))) (regTwo!33822 r!7292))) (= lambda!386708 lambda!386654))))

(declare-fun bs!1828988 () Bool)

(assert (= bs!1828988 (and b!6839114 b!6839076)))

(assert (=> bs!1828988 (= (and (= (regOne!33822 (regTwo!33823 (regTwo!33823 r!7292))) (regOne!33822 (regOne!33823 (regTwo!33823 r!7292)))) (= (regTwo!33822 (regTwo!33823 (regTwo!33823 r!7292))) (regTwo!33822 (regOne!33823 (regTwo!33823 r!7292))))) (= lambda!386708 lambda!386706))))

(declare-fun bs!1828989 () Bool)

(assert (= bs!1828989 (and b!6839114 b!6839068)))

(assert (=> bs!1828989 (not (= lambda!386708 lambda!386705))))

(declare-fun bs!1828990 () Bool)

(assert (= bs!1828990 (and b!6839114 b!6837822)))

(assert (=> bs!1828990 (= (and (= (regOne!33822 (regTwo!33823 (regTwo!33823 r!7292))) (regOne!33822 (regTwo!33823 r!7292))) (= (regTwo!33822 (regTwo!33823 (regTwo!33823 r!7292))) (regTwo!33822 (regTwo!33823 r!7292)))) (= lambda!386708 lambda!386676))))

(assert (=> b!6839114 true))

(assert (=> b!6839114 true))

(declare-fun d!2150811 () Bool)

(declare-fun c!1273410 () Bool)

(assert (=> d!2150811 (= c!1273410 ((_ is EmptyExpr!16655) (regTwo!33823 (regTwo!33823 r!7292))))))

(declare-fun e!4124900 () Bool)

(assert (=> d!2150811 (= (matchRSpec!3756 (regTwo!33823 (regTwo!33823 r!7292)) s!2326) e!4124900)))

(declare-fun e!4124898 () Bool)

(declare-fun call!622905 () Bool)

(assert (=> b!6839106 (= e!4124898 call!622905)))

(declare-fun b!6839107 () Bool)

(declare-fun res!2792607 () Bool)

(assert (=> b!6839107 (=> res!2792607 e!4124898)))

(declare-fun call!622904 () Bool)

(assert (=> b!6839107 (= res!2792607 call!622904)))

(declare-fun e!4124894 () Bool)

(assert (=> b!6839107 (= e!4124894 e!4124898)))

(declare-fun b!6839108 () Bool)

(assert (=> b!6839108 (= e!4124900 call!622904)))

(declare-fun b!6839109 () Bool)

(declare-fun e!4124899 () Bool)

(declare-fun e!4124897 () Bool)

(assert (=> b!6839109 (= e!4124899 e!4124897)))

(declare-fun res!2792606 () Bool)

(assert (=> b!6839109 (= res!2792606 (matchRSpec!3756 (regOne!33823 (regTwo!33823 (regTwo!33823 r!7292))) s!2326))))

(assert (=> b!6839109 (=> res!2792606 e!4124897)))

(declare-fun b!6839110 () Bool)

(assert (=> b!6839110 (= e!4124897 (matchRSpec!3756 (regTwo!33823 (regTwo!33823 (regTwo!33823 r!7292))) s!2326))))

(declare-fun b!6839111 () Bool)

(declare-fun e!4124895 () Bool)

(assert (=> b!6839111 (= e!4124900 e!4124895)))

(declare-fun res!2792608 () Bool)

(assert (=> b!6839111 (= res!2792608 (not ((_ is EmptyLang!16655) (regTwo!33823 (regTwo!33823 r!7292)))))))

(assert (=> b!6839111 (=> (not res!2792608) (not e!4124895))))

(declare-fun b!6839112 () Bool)

(declare-fun c!1273411 () Bool)

(assert (=> b!6839112 (= c!1273411 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33823 r!7292))))))

(declare-fun e!4124896 () Bool)

(assert (=> b!6839112 (= e!4124895 e!4124896)))

(declare-fun b!6839113 () Bool)

(assert (=> b!6839113 (= e!4124899 e!4124894)))

(declare-fun c!1273413 () Bool)

(assert (=> b!6839113 (= c!1273413 ((_ is Star!16655) (regTwo!33823 (regTwo!33823 r!7292))))))

(declare-fun bm!622899 () Bool)

(assert (=> bm!622899 (= call!622905 (Exists!3723 (ite c!1273413 lambda!386707 lambda!386708)))))

(assert (=> b!6839114 (= e!4124894 call!622905)))

(declare-fun bm!622900 () Bool)

(assert (=> bm!622900 (= call!622904 (isEmpty!38531 s!2326))))

(declare-fun b!6839115 () Bool)

(declare-fun c!1273412 () Bool)

(assert (=> b!6839115 (= c!1273412 ((_ is Union!16655) (regTwo!33823 (regTwo!33823 r!7292))))))

(assert (=> b!6839115 (= e!4124896 e!4124899)))

(declare-fun b!6839116 () Bool)

(assert (=> b!6839116 (= e!4124896 (= s!2326 (Cons!66142 (c!1273107 (regTwo!33823 (regTwo!33823 r!7292))) Nil!66142)))))

(assert (= (and d!2150811 c!1273410) b!6839108))

(assert (= (and d!2150811 (not c!1273410)) b!6839111))

(assert (= (and b!6839111 res!2792608) b!6839112))

(assert (= (and b!6839112 c!1273411) b!6839116))

(assert (= (and b!6839112 (not c!1273411)) b!6839115))

(assert (= (and b!6839115 c!1273412) b!6839109))

(assert (= (and b!6839115 (not c!1273412)) b!6839113))

(assert (= (and b!6839109 (not res!2792606)) b!6839110))

(assert (= (and b!6839113 c!1273413) b!6839107))

(assert (= (and b!6839113 (not c!1273413)) b!6839114))

(assert (= (and b!6839107 (not res!2792607)) b!6839106))

(assert (= (or b!6839106 b!6839114) bm!622899))

(assert (= (or b!6839108 b!6839107) bm!622900))

(declare-fun m!7583246 () Bool)

(assert (=> b!6839109 m!7583246))

(declare-fun m!7583248 () Bool)

(assert (=> b!6839110 m!7583248))

(declare-fun m!7583250 () Bool)

(assert (=> bm!622899 m!7583250))

(assert (=> bm!622900 m!7582442))

(assert (=> b!6837818 d!2150811))

(declare-fun d!2150813 () Bool)

(assert (=> d!2150813 (= (isEmpty!38532 (tail!12783 (unfocusZipperList!2076 zl!343))) ((_ is Nil!66140) (tail!12783 (unfocusZipperList!2076 zl!343))))))

(assert (=> b!6837940 d!2150813))

(declare-fun d!2150815 () Bool)

(assert (=> d!2150815 (= (tail!12783 (unfocusZipperList!2076 zl!343)) (t!380007 (unfocusZipperList!2076 zl!343)))))

(assert (=> b!6837940 d!2150815))

(declare-fun d!2150817 () Bool)

(assert (=> d!2150817 (= (Exists!3723 (ite c!1273247 lambda!386675 lambda!386676)) (choose!51001 (ite c!1273247 lambda!386675 lambda!386676)))))

(declare-fun bs!1828991 () Bool)

(assert (= bs!1828991 d!2150817))

(declare-fun m!7583252 () Bool)

(assert (=> bs!1828991 m!7583252))

(assert (=> bm!622765 d!2150817))

(assert (=> bm!622769 d!2150587))

(declare-fun d!2150819 () Bool)

(declare-fun res!2792609 () Bool)

(declare-fun e!4124901 () Bool)

(assert (=> d!2150819 (=> res!2792609 e!4124901)))

(assert (=> d!2150819 (= res!2792609 ((_ is Nil!66140) (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(assert (=> d!2150819 (= (forall!15835 (t!380007 (exprs!6539 (h!72589 zl!343))) lambda!386658) e!4124901)))

(declare-fun b!6839117 () Bool)

(declare-fun e!4124902 () Bool)

(assert (=> b!6839117 (= e!4124901 e!4124902)))

(declare-fun res!2792610 () Bool)

(assert (=> b!6839117 (=> (not res!2792610) (not e!4124902))))

(assert (=> b!6839117 (= res!2792610 (dynLambda!26428 lambda!386658 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun b!6839118 () Bool)

(assert (=> b!6839118 (= e!4124902 (forall!15835 (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343)))) lambda!386658))))

(assert (= (and d!2150819 (not res!2792609)) b!6839117))

(assert (= (and b!6839117 res!2792610) b!6839118))

(declare-fun b_lambda!257983 () Bool)

(assert (=> (not b_lambda!257983) (not b!6839117)))

(declare-fun m!7583254 () Bool)

(assert (=> b!6839117 m!7583254))

(declare-fun m!7583256 () Bool)

(assert (=> b!6839118 m!7583256))

(assert (=> b!6837983 d!2150819))

(declare-fun bm!622901 () Bool)

(declare-fun c!1273415 () Bool)

(declare-fun c!1273416 () Bool)

(declare-fun c!1273417 () Bool)

(declare-fun call!622909 () Regex!16655)

(assert (=> bm!622901 (= call!622909 (derivativeStep!5307 (ite c!1273417 (regTwo!33823 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292))))) (ite c!1273416 (reg!16984 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292))))) (ite c!1273415 (regTwo!33822 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292))))) (regOne!33822 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292)))))))) (head!13697 s!2326)))))

(declare-fun call!622906 () Regex!16655)

(declare-fun b!6839119 () Bool)

(declare-fun e!4124903 () Regex!16655)

(assert (=> b!6839119 (= e!4124903 (Union!16655 (Concat!25500 call!622906 (regTwo!33822 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292)))))) EmptyLang!16655))))

(declare-fun bm!622902 () Bool)

(declare-fun call!622907 () Regex!16655)

(assert (=> bm!622902 (= call!622907 call!622909)))

(declare-fun e!4124905 () Regex!16655)

(declare-fun b!6839120 () Bool)

(assert (=> b!6839120 (= e!4124905 (ite (= (head!13697 s!2326) (c!1273107 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292)))))) EmptyExpr!16655 EmptyLang!16655))))

(declare-fun bm!622903 () Bool)

(assert (=> bm!622903 (= call!622906 call!622907)))

(declare-fun b!6839121 () Bool)

(declare-fun e!4124904 () Regex!16655)

(assert (=> b!6839121 (= e!4124904 EmptyLang!16655)))

(declare-fun b!6839122 () Bool)

(assert (=> b!6839122 (= c!1273415 (nullable!6622 (regOne!33822 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292)))))))))

(declare-fun e!4124907 () Regex!16655)

(assert (=> b!6839122 (= e!4124907 e!4124903)))

(declare-fun b!6839123 () Bool)

(declare-fun e!4124906 () Regex!16655)

(declare-fun call!622908 () Regex!16655)

(assert (=> b!6839123 (= e!4124906 (Union!16655 call!622908 call!622909))))

(declare-fun b!6839124 () Bool)

(assert (=> b!6839124 (= c!1273417 ((_ is Union!16655) (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292))))))))

(assert (=> b!6839124 (= e!4124905 e!4124906)))

(declare-fun b!6839125 () Bool)

(assert (=> b!6839125 (= e!4124906 e!4124907)))

(assert (=> b!6839125 (= c!1273416 ((_ is Star!16655) (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292))))))))

(declare-fun b!6839127 () Bool)

(assert (=> b!6839127 (= e!4124904 e!4124905)))

(declare-fun c!1273414 () Bool)

(assert (=> b!6839127 (= c!1273414 ((_ is ElementMatch!16655) (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292))))))))

(declare-fun bm!622904 () Bool)

(assert (=> bm!622904 (= call!622908 (derivativeStep!5307 (ite c!1273417 (regOne!33823 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292))))) (regOne!33822 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292)))))) (head!13697 s!2326)))))

(declare-fun b!6839128 () Bool)

(assert (=> b!6839128 (= e!4124903 (Union!16655 (Concat!25500 call!622908 (regTwo!33822 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292)))))) call!622906))))

(declare-fun d!2150821 () Bool)

(declare-fun lt!2455130 () Regex!16655)

(assert (=> d!2150821 (validRegex!8391 lt!2455130)))

(assert (=> d!2150821 (= lt!2455130 e!4124904)))

(declare-fun c!1273418 () Bool)

(assert (=> d!2150821 (= c!1273418 (or ((_ is EmptyExpr!16655) (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292))))) ((_ is EmptyLang!16655) (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292)))))))))

(assert (=> d!2150821 (validRegex!8391 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292)))))))

(assert (=> d!2150821 (= (derivativeStep!5307 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292)))) (head!13697 s!2326)) lt!2455130)))

(declare-fun b!6839126 () Bool)

(assert (=> b!6839126 (= e!4124907 (Concat!25500 call!622907 (ite c!1273272 (regTwo!33823 r!7292) (ite c!1273271 (reg!16984 r!7292) (ite c!1273270 (regTwo!33822 r!7292) (regOne!33822 r!7292))))))))

(assert (= (and d!2150821 c!1273418) b!6839121))

(assert (= (and d!2150821 (not c!1273418)) b!6839127))

(assert (= (and b!6839127 c!1273414) b!6839120))

(assert (= (and b!6839127 (not c!1273414)) b!6839124))

(assert (= (and b!6839124 c!1273417) b!6839123))

(assert (= (and b!6839124 (not c!1273417)) b!6839125))

(assert (= (and b!6839125 c!1273416) b!6839126))

(assert (= (and b!6839125 (not c!1273416)) b!6839122))

(assert (= (and b!6839122 c!1273415) b!6839128))

(assert (= (and b!6839122 (not c!1273415)) b!6839119))

(assert (= (or b!6839128 b!6839119) bm!622903))

(assert (= (or b!6839126 bm!622903) bm!622902))

(assert (= (or b!6839123 bm!622902) bm!622901))

(assert (= (or b!6839123 b!6839128) bm!622904))

(assert (=> bm!622901 m!7582448))

(declare-fun m!7583258 () Bool)

(assert (=> bm!622901 m!7583258))

(declare-fun m!7583260 () Bool)

(assert (=> b!6839122 m!7583260))

(assert (=> bm!622904 m!7582448))

(declare-fun m!7583262 () Bool)

(assert (=> bm!622904 m!7583262))

(declare-fun m!7583264 () Bool)

(assert (=> d!2150821 m!7583264))

(declare-fun m!7583266 () Bool)

(assert (=> d!2150821 m!7583266))

(assert (=> bm!622778 d!2150821))

(declare-fun d!2150823 () Bool)

(declare-fun res!2792611 () Bool)

(declare-fun e!4124908 () Bool)

(assert (=> d!2150823 (=> res!2792611 e!4124908)))

(assert (=> d!2150823 (= res!2792611 ((_ is Nil!66140) (t!380007 (exprs!6539 setElem!46969))))))

(assert (=> d!2150823 (= (forall!15835 (t!380007 (exprs!6539 setElem!46969)) lambda!386657) e!4124908)))

(declare-fun b!6839129 () Bool)

(declare-fun e!4124909 () Bool)

(assert (=> b!6839129 (= e!4124908 e!4124909)))

(declare-fun res!2792612 () Bool)

(assert (=> b!6839129 (=> (not res!2792612) (not e!4124909))))

(assert (=> b!6839129 (= res!2792612 (dynLambda!26428 lambda!386657 (h!72588 (t!380007 (exprs!6539 setElem!46969)))))))

(declare-fun b!6839130 () Bool)

(assert (=> b!6839130 (= e!4124909 (forall!15835 (t!380007 (t!380007 (exprs!6539 setElem!46969))) lambda!386657))))

(assert (= (and d!2150823 (not res!2792611)) b!6839129))

(assert (= (and b!6839129 res!2792612) b!6839130))

(declare-fun b_lambda!257985 () Bool)

(assert (=> (not b_lambda!257985) (not b!6839129)))

(declare-fun m!7583268 () Bool)

(assert (=> b!6839129 m!7583268))

(declare-fun m!7583270 () Bool)

(assert (=> b!6839130 m!7583270))

(assert (=> b!6837830 d!2150823))

(declare-fun bs!1828992 () Bool)

(declare-fun d!2150825 () Bool)

(assert (= bs!1828992 (and d!2150825 d!2150549)))

(declare-fun lambda!386709 () Int)

(assert (=> bs!1828992 (= lambda!386709 lambda!386679)))

(declare-fun bs!1828993 () Bool)

(assert (= bs!1828993 (and d!2150825 d!2150575)))

(assert (=> bs!1828993 (= lambda!386709 lambda!386685)))

(declare-fun bs!1828994 () Bool)

(assert (= bs!1828994 (and d!2150825 d!2150573)))

(assert (=> bs!1828994 (= lambda!386709 lambda!386682)))

(declare-fun bs!1828995 () Bool)

(assert (= bs!1828995 (and d!2150825 d!2150577)))

(assert (=> bs!1828995 (= lambda!386709 lambda!386686)))

(declare-fun bs!1828996 () Bool)

(assert (= bs!1828996 (and d!2150825 d!2150449)))

(assert (=> bs!1828996 (= lambda!386709 lambda!386657)))

(declare-fun bs!1828997 () Bool)

(assert (= bs!1828997 (and d!2150825 d!2150589)))

(assert (=> bs!1828997 (= lambda!386709 lambda!386687)))

(declare-fun bs!1828998 () Bool)

(assert (= bs!1828998 (and d!2150825 d!2150451)))

(assert (=> bs!1828998 (= lambda!386709 lambda!386658)))

(declare-fun bs!1828999 () Bool)

(assert (= bs!1828999 (and d!2150825 d!2150455)))

(assert (=> bs!1828999 (= lambda!386709 lambda!386661)))

(declare-fun bs!1829000 () Bool)

(assert (= bs!1829000 (and d!2150825 d!2150779)))

(assert (=> bs!1829000 (= lambda!386709 lambda!386704)))

(assert (=> d!2150825 (= (inv!84884 setElem!46977) (forall!15835 (exprs!6539 setElem!46977) lambda!386709))))

(declare-fun bs!1829001 () Bool)

(assert (= bs!1829001 d!2150825))

(declare-fun m!7583272 () Bool)

(assert (=> bs!1829001 m!7583272))

(assert (=> setNonEmpty!46977 d!2150825))

(declare-fun c!1273419 () Bool)

(declare-fun c!1273420 () Bool)

(declare-fun bm!622905 () Bool)

(declare-fun call!622910 () Bool)

(assert (=> bm!622905 (= call!622910 (validRegex!8391 (ite c!1273419 (reg!16984 (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089))) (ite c!1273420 (regOne!33823 (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089))) (regOne!33822 (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089)))))))))

(declare-fun b!6839131 () Bool)

(declare-fun res!2792615 () Bool)

(declare-fun e!4124916 () Bool)

(assert (=> b!6839131 (=> res!2792615 e!4124916)))

(assert (=> b!6839131 (= res!2792615 (not ((_ is Concat!25500) (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089)))))))

(declare-fun e!4124912 () Bool)

(assert (=> b!6839131 (= e!4124912 e!4124916)))

(declare-fun b!6839132 () Bool)

(declare-fun e!4124915 () Bool)

(declare-fun e!4124914 () Bool)

(assert (=> b!6839132 (= e!4124915 e!4124914)))

(declare-fun res!2792613 () Bool)

(assert (=> b!6839132 (= res!2792613 (not (nullable!6622 (reg!16984 (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089))))))))

(assert (=> b!6839132 (=> (not res!2792613) (not e!4124914))))

(declare-fun b!6839133 () Bool)

(declare-fun e!4124910 () Bool)

(declare-fun call!622911 () Bool)

(assert (=> b!6839133 (= e!4124910 call!622911)))

(declare-fun bm!622906 () Bool)

(declare-fun call!622912 () Bool)

(assert (=> bm!622906 (= call!622912 call!622910)))

(declare-fun b!6839134 () Bool)

(assert (=> b!6839134 (= e!4124914 call!622910)))

(declare-fun bm!622907 () Bool)

(assert (=> bm!622907 (= call!622911 (validRegex!8391 (ite c!1273420 (regTwo!33823 (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089))) (regTwo!33822 (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089))))))))

(declare-fun b!6839135 () Bool)

(declare-fun e!4124911 () Bool)

(assert (=> b!6839135 (= e!4124911 call!622911)))

(declare-fun b!6839136 () Bool)

(assert (=> b!6839136 (= e!4124915 e!4124912)))

(assert (=> b!6839136 (= c!1273420 ((_ is Union!16655) (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089))))))

(declare-fun b!6839137 () Bool)

(declare-fun e!4124913 () Bool)

(assert (=> b!6839137 (= e!4124913 e!4124915)))

(assert (=> b!6839137 (= c!1273419 ((_ is Star!16655) (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089))))))

(declare-fun b!6839138 () Bool)

(assert (=> b!6839138 (= e!4124916 e!4124911)))

(declare-fun res!2792614 () Bool)

(assert (=> b!6839138 (=> (not res!2792614) (not e!4124911))))

(assert (=> b!6839138 (= res!2792614 call!622912)))

(declare-fun d!2150827 () Bool)

(declare-fun res!2792616 () Bool)

(assert (=> d!2150827 (=> res!2792616 e!4124913)))

(assert (=> d!2150827 (= res!2792616 ((_ is ElementMatch!16655) (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089))))))

(assert (=> d!2150827 (= (validRegex!8391 (ite c!1273275 (regTwo!33823 lt!2455089) (regTwo!33822 lt!2455089))) e!4124913)))

(declare-fun b!6839139 () Bool)

(declare-fun res!2792617 () Bool)

(assert (=> b!6839139 (=> (not res!2792617) (not e!4124910))))

(assert (=> b!6839139 (= res!2792617 call!622912)))

(assert (=> b!6839139 (= e!4124912 e!4124910)))

(assert (= (and d!2150827 (not res!2792616)) b!6839137))

(assert (= (and b!6839137 c!1273419) b!6839132))

(assert (= (and b!6839137 (not c!1273419)) b!6839136))

(assert (= (and b!6839132 res!2792613) b!6839134))

(assert (= (and b!6839136 c!1273420) b!6839139))

(assert (= (and b!6839136 (not c!1273420)) b!6839131))

(assert (= (and b!6839139 res!2792617) b!6839133))

(assert (= (and b!6839131 (not res!2792615)) b!6839138))

(assert (= (and b!6839138 res!2792614) b!6839135))

(assert (= (or b!6839133 b!6839135) bm!622907))

(assert (= (or b!6839139 b!6839138) bm!622906))

(assert (= (or b!6839134 bm!622906) bm!622905))

(declare-fun m!7583274 () Bool)

(assert (=> bm!622905 m!7583274))

(declare-fun m!7583276 () Bool)

(assert (=> b!6839132 m!7583276))

(declare-fun m!7583278 () Bool)

(assert (=> bm!622907 m!7583278))

(assert (=> bm!622784 d!2150827))

(assert (=> bm!622766 d!2150559))

(declare-fun d!2150829 () Bool)

(assert (=> d!2150829 (= (head!13697 (tail!12782 s!2326)) (h!72590 (tail!12782 s!2326)))))

(assert (=> b!6837869 d!2150829))

(declare-fun d!2150831 () Bool)

(assert (=> d!2150831 (= (head!13698 (unfocusZipperList!2076 zl!343)) (h!72588 (unfocusZipperList!2076 zl!343)))))

(assert (=> b!6837946 d!2150831))

(declare-fun d!2150833 () Bool)

(assert (=> d!2150833 (= (nullable!6622 (regOne!33822 r!7292)) (nullableFct!2516 (regOne!33822 r!7292)))))

(declare-fun bs!1829002 () Bool)

(assert (= bs!1829002 d!2150833))

(declare-fun m!7583280 () Bool)

(assert (=> bs!1829002 m!7583280))

(assert (=> b!6837904 d!2150833))

(declare-fun bs!1829003 () Bool)

(declare-fun d!2150835 () Bool)

(assert (= bs!1829003 (and d!2150835 d!2150549)))

(declare-fun lambda!386710 () Int)

(assert (=> bs!1829003 (= lambda!386710 lambda!386679)))

(declare-fun bs!1829004 () Bool)

(assert (= bs!1829004 (and d!2150835 d!2150575)))

(assert (=> bs!1829004 (= lambda!386710 lambda!386685)))

(declare-fun bs!1829005 () Bool)

(assert (= bs!1829005 (and d!2150835 d!2150573)))

(assert (=> bs!1829005 (= lambda!386710 lambda!386682)))

(declare-fun bs!1829006 () Bool)

(assert (= bs!1829006 (and d!2150835 d!2150825)))

(assert (=> bs!1829006 (= lambda!386710 lambda!386709)))

(declare-fun bs!1829007 () Bool)

(assert (= bs!1829007 (and d!2150835 d!2150577)))

(assert (=> bs!1829007 (= lambda!386710 lambda!386686)))

(declare-fun bs!1829008 () Bool)

(assert (= bs!1829008 (and d!2150835 d!2150449)))

(assert (=> bs!1829008 (= lambda!386710 lambda!386657)))

(declare-fun bs!1829009 () Bool)

(assert (= bs!1829009 (and d!2150835 d!2150589)))

(assert (=> bs!1829009 (= lambda!386710 lambda!386687)))

(declare-fun bs!1829010 () Bool)

(assert (= bs!1829010 (and d!2150835 d!2150451)))

(assert (=> bs!1829010 (= lambda!386710 lambda!386658)))

(declare-fun bs!1829011 () Bool)

(assert (= bs!1829011 (and d!2150835 d!2150455)))

(assert (=> bs!1829011 (= lambda!386710 lambda!386661)))

(declare-fun bs!1829012 () Bool)

(assert (= bs!1829012 (and d!2150835 d!2150779)))

(assert (=> bs!1829012 (= lambda!386710 lambda!386704)))

(assert (=> d!2150835 (= (inv!84884 (h!72589 (t!380008 (t!380008 zl!343)))) (forall!15835 (exprs!6539 (h!72589 (t!380008 (t!380008 zl!343)))) lambda!386710))))

(declare-fun bs!1829013 () Bool)

(assert (= bs!1829013 d!2150835))

(declare-fun m!7583282 () Bool)

(assert (=> bs!1829013 m!7583282))

(assert (=> b!6838063 d!2150835))

(declare-fun bs!1829014 () Bool)

(declare-fun b!6839140 () Bool)

(assert (= bs!1829014 (and b!6839140 b!6837814)))

(declare-fun lambda!386711 () Int)

(assert (=> bs!1829014 (= (and (= (reg!16984 (regOne!33823 (regOne!33823 r!7292))) (reg!16984 (regTwo!33823 r!7292))) (= (regOne!33823 (regOne!33823 r!7292)) (regTwo!33823 r!7292))) (= lambda!386711 lambda!386675))))

(declare-fun bs!1829015 () Bool)

(assert (= bs!1829015 (and b!6839140 b!6838867)))

(assert (=> bs!1829015 (= (and (= (reg!16984 (regOne!33823 (regOne!33823 r!7292))) (reg!16984 (regTwo!33823 (regOne!33823 r!7292)))) (= (regOne!33823 (regOne!33823 r!7292)) (regTwo!33823 (regOne!33823 r!7292)))) (= lambda!386711 lambda!386702))))

(declare-fun bs!1829016 () Bool)

(assert (= bs!1829016 (and b!6839140 b!6837831)))

(assert (=> bs!1829016 (= (and (= (reg!16984 (regOne!33823 (regOne!33823 r!7292))) (reg!16984 (regOne!33823 r!7292))) (= (regOne!33823 (regOne!33823 r!7292)) (regOne!33823 r!7292))) (= lambda!386711 lambda!386677))))

(declare-fun bs!1829017 () Bool)

(assert (= bs!1829017 (and b!6839140 b!6838875)))

(assert (=> bs!1829017 (not (= lambda!386711 lambda!386703))))

(declare-fun bs!1829018 () Bool)

(assert (= bs!1829018 (and b!6839140 b!6839106)))

(assert (=> bs!1829018 (= (and (= (reg!16984 (regOne!33823 (regOne!33823 r!7292))) (reg!16984 (regTwo!33823 (regTwo!33823 r!7292)))) (= (regOne!33823 (regOne!33823 r!7292)) (regTwo!33823 (regTwo!33823 r!7292)))) (= lambda!386711 lambda!386707))))

(declare-fun bs!1829019 () Bool)

(assert (= bs!1829019 (and b!6839140 b!6837839)))

(assert (=> bs!1829019 (not (= lambda!386711 lambda!386678))))

(declare-fun bs!1829020 () Bool)

(assert (= bs!1829020 (and b!6839140 b!6837381)))

(assert (=> bs!1829020 (= (and (= (reg!16984 (regOne!33823 (regOne!33823 r!7292))) (reg!16984 r!7292)) (= (regOne!33823 (regOne!33823 r!7292)) r!7292)) (= lambda!386711 lambda!386653))))

(declare-fun bs!1829021 () Bool)

(assert (= bs!1829021 (and b!6839140 b!6837389)))

(assert (=> bs!1829021 (not (= lambda!386711 lambda!386654))))

(declare-fun bs!1829022 () Bool)

(assert (= bs!1829022 (and b!6839140 b!6839114)))

(assert (=> bs!1829022 (not (= lambda!386711 lambda!386708))))

(declare-fun bs!1829023 () Bool)

(assert (= bs!1829023 (and b!6839140 b!6839076)))

(assert (=> bs!1829023 (not (= lambda!386711 lambda!386706))))

(declare-fun bs!1829024 () Bool)

(assert (= bs!1829024 (and b!6839140 b!6839068)))

(assert (=> bs!1829024 (= (and (= (reg!16984 (regOne!33823 (regOne!33823 r!7292))) (reg!16984 (regOne!33823 (regTwo!33823 r!7292)))) (= (regOne!33823 (regOne!33823 r!7292)) (regOne!33823 (regTwo!33823 r!7292)))) (= lambda!386711 lambda!386705))))

(declare-fun bs!1829025 () Bool)

(assert (= bs!1829025 (and b!6839140 b!6837822)))

(assert (=> bs!1829025 (not (= lambda!386711 lambda!386676))))

(assert (=> b!6839140 true))

(assert (=> b!6839140 true))

(declare-fun bs!1829026 () Bool)

(declare-fun b!6839148 () Bool)

(assert (= bs!1829026 (and b!6839148 b!6837814)))

(declare-fun lambda!386712 () Int)

(assert (=> bs!1829026 (not (= lambda!386712 lambda!386675))))

(declare-fun bs!1829027 () Bool)

(assert (= bs!1829027 (and b!6839148 b!6838867)))

(assert (=> bs!1829027 (not (= lambda!386712 lambda!386702))))

(declare-fun bs!1829028 () Bool)

(assert (= bs!1829028 (and b!6839148 b!6837831)))

(assert (=> bs!1829028 (not (= lambda!386712 lambda!386677))))

(declare-fun bs!1829029 () Bool)

(assert (= bs!1829029 (and b!6839148 b!6838875)))

(assert (=> bs!1829029 (= (and (= (regOne!33822 (regOne!33823 (regOne!33823 r!7292))) (regOne!33822 (regTwo!33823 (regOne!33823 r!7292)))) (= (regTwo!33822 (regOne!33823 (regOne!33823 r!7292))) (regTwo!33822 (regTwo!33823 (regOne!33823 r!7292))))) (= lambda!386712 lambda!386703))))

(declare-fun bs!1829030 () Bool)

(assert (= bs!1829030 (and b!6839148 b!6839106)))

(assert (=> bs!1829030 (not (= lambda!386712 lambda!386707))))

(declare-fun bs!1829031 () Bool)

(assert (= bs!1829031 (and b!6839148 b!6837839)))

(assert (=> bs!1829031 (= (and (= (regOne!33822 (regOne!33823 (regOne!33823 r!7292))) (regOne!33822 (regOne!33823 r!7292))) (= (regTwo!33822 (regOne!33823 (regOne!33823 r!7292))) (regTwo!33822 (regOne!33823 r!7292)))) (= lambda!386712 lambda!386678))))

(declare-fun bs!1829032 () Bool)

(assert (= bs!1829032 (and b!6839148 b!6837381)))

(assert (=> bs!1829032 (not (= lambda!386712 lambda!386653))))

(declare-fun bs!1829033 () Bool)

(assert (= bs!1829033 (and b!6839148 b!6839140)))

(assert (=> bs!1829033 (not (= lambda!386712 lambda!386711))))

(declare-fun bs!1829034 () Bool)

(assert (= bs!1829034 (and b!6839148 b!6837389)))

(assert (=> bs!1829034 (= (and (= (regOne!33822 (regOne!33823 (regOne!33823 r!7292))) (regOne!33822 r!7292)) (= (regTwo!33822 (regOne!33823 (regOne!33823 r!7292))) (regTwo!33822 r!7292))) (= lambda!386712 lambda!386654))))

(declare-fun bs!1829035 () Bool)

(assert (= bs!1829035 (and b!6839148 b!6839114)))

(assert (=> bs!1829035 (= (and (= (regOne!33822 (regOne!33823 (regOne!33823 r!7292))) (regOne!33822 (regTwo!33823 (regTwo!33823 r!7292)))) (= (regTwo!33822 (regOne!33823 (regOne!33823 r!7292))) (regTwo!33822 (regTwo!33823 (regTwo!33823 r!7292))))) (= lambda!386712 lambda!386708))))

(declare-fun bs!1829036 () Bool)

(assert (= bs!1829036 (and b!6839148 b!6839076)))

(assert (=> bs!1829036 (= (and (= (regOne!33822 (regOne!33823 (regOne!33823 r!7292))) (regOne!33822 (regOne!33823 (regTwo!33823 r!7292)))) (= (regTwo!33822 (regOne!33823 (regOne!33823 r!7292))) (regTwo!33822 (regOne!33823 (regTwo!33823 r!7292))))) (= lambda!386712 lambda!386706))))

(declare-fun bs!1829037 () Bool)

(assert (= bs!1829037 (and b!6839148 b!6839068)))

(assert (=> bs!1829037 (not (= lambda!386712 lambda!386705))))

(declare-fun bs!1829038 () Bool)

(assert (= bs!1829038 (and b!6839148 b!6837822)))

(assert (=> bs!1829038 (= (and (= (regOne!33822 (regOne!33823 (regOne!33823 r!7292))) (regOne!33822 (regTwo!33823 r!7292))) (= (regTwo!33822 (regOne!33823 (regOne!33823 r!7292))) (regTwo!33822 (regTwo!33823 r!7292)))) (= lambda!386712 lambda!386676))))

(assert (=> b!6839148 true))

(assert (=> b!6839148 true))

(declare-fun d!2150837 () Bool)

(declare-fun c!1273421 () Bool)

(assert (=> d!2150837 (= c!1273421 ((_ is EmptyExpr!16655) (regOne!33823 (regOne!33823 r!7292))))))

(declare-fun e!4124923 () Bool)

(assert (=> d!2150837 (= (matchRSpec!3756 (regOne!33823 (regOne!33823 r!7292)) s!2326) e!4124923)))

(declare-fun e!4124921 () Bool)

(declare-fun call!622914 () Bool)

(assert (=> b!6839140 (= e!4124921 call!622914)))

(declare-fun b!6839141 () Bool)

(declare-fun res!2792619 () Bool)

(assert (=> b!6839141 (=> res!2792619 e!4124921)))

(declare-fun call!622913 () Bool)

(assert (=> b!6839141 (= res!2792619 call!622913)))

(declare-fun e!4124917 () Bool)

(assert (=> b!6839141 (= e!4124917 e!4124921)))

(declare-fun b!6839142 () Bool)

(assert (=> b!6839142 (= e!4124923 call!622913)))

(declare-fun b!6839143 () Bool)

(declare-fun e!4124922 () Bool)

(declare-fun e!4124920 () Bool)

(assert (=> b!6839143 (= e!4124922 e!4124920)))

(declare-fun res!2792618 () Bool)

(assert (=> b!6839143 (= res!2792618 (matchRSpec!3756 (regOne!33823 (regOne!33823 (regOne!33823 r!7292))) s!2326))))

(assert (=> b!6839143 (=> res!2792618 e!4124920)))

(declare-fun b!6839144 () Bool)

(assert (=> b!6839144 (= e!4124920 (matchRSpec!3756 (regTwo!33823 (regOne!33823 (regOne!33823 r!7292))) s!2326))))

(declare-fun b!6839145 () Bool)

(declare-fun e!4124918 () Bool)

(assert (=> b!6839145 (= e!4124923 e!4124918)))

(declare-fun res!2792620 () Bool)

(assert (=> b!6839145 (= res!2792620 (not ((_ is EmptyLang!16655) (regOne!33823 (regOne!33823 r!7292)))))))

(assert (=> b!6839145 (=> (not res!2792620) (not e!4124918))))

(declare-fun b!6839146 () Bool)

(declare-fun c!1273422 () Bool)

(assert (=> b!6839146 (= c!1273422 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33823 r!7292))))))

(declare-fun e!4124919 () Bool)

(assert (=> b!6839146 (= e!4124918 e!4124919)))

(declare-fun b!6839147 () Bool)

(assert (=> b!6839147 (= e!4124922 e!4124917)))

(declare-fun c!1273424 () Bool)

(assert (=> b!6839147 (= c!1273424 ((_ is Star!16655) (regOne!33823 (regOne!33823 r!7292))))))

(declare-fun bm!622908 () Bool)

(assert (=> bm!622908 (= call!622914 (Exists!3723 (ite c!1273424 lambda!386711 lambda!386712)))))

(assert (=> b!6839148 (= e!4124917 call!622914)))

(declare-fun bm!622909 () Bool)

(assert (=> bm!622909 (= call!622913 (isEmpty!38531 s!2326))))

(declare-fun b!6839149 () Bool)

(declare-fun c!1273423 () Bool)

(assert (=> b!6839149 (= c!1273423 ((_ is Union!16655) (regOne!33823 (regOne!33823 r!7292))))))

(assert (=> b!6839149 (= e!4124919 e!4124922)))

(declare-fun b!6839150 () Bool)

(assert (=> b!6839150 (= e!4124919 (= s!2326 (Cons!66142 (c!1273107 (regOne!33823 (regOne!33823 r!7292))) Nil!66142)))))

(assert (= (and d!2150837 c!1273421) b!6839142))

(assert (= (and d!2150837 (not c!1273421)) b!6839145))

(assert (= (and b!6839145 res!2792620) b!6839146))

(assert (= (and b!6839146 c!1273422) b!6839150))

(assert (= (and b!6839146 (not c!1273422)) b!6839149))

(assert (= (and b!6839149 c!1273423) b!6839143))

(assert (= (and b!6839149 (not c!1273423)) b!6839147))

(assert (= (and b!6839143 (not res!2792618)) b!6839144))

(assert (= (and b!6839147 c!1273424) b!6839141))

(assert (= (and b!6839147 (not c!1273424)) b!6839148))

(assert (= (and b!6839141 (not res!2792619)) b!6839140))

(assert (= (or b!6839140 b!6839148) bm!622908))

(assert (= (or b!6839142 b!6839141) bm!622909))

(declare-fun m!7583284 () Bool)

(assert (=> b!6839143 m!7583284))

(declare-fun m!7583286 () Bool)

(assert (=> b!6839144 m!7583286))

(declare-fun m!7583288 () Bool)

(assert (=> bm!622908 m!7583288))

(assert (=> bm!622909 m!7582442))

(assert (=> b!6837834 d!2150837))

(assert (=> b!6837874 d!2150783))

(assert (=> b!6837874 d!2150785))

(declare-fun d!2150839 () Bool)

(assert (=> d!2150839 (= (isEmptyExpr!2001 lt!2455104) ((_ is EmptyExpr!16655) lt!2455104))))

(assert (=> b!6837842 d!2150839))

(declare-fun d!2150841 () Bool)

(declare-fun c!1273425 () Bool)

(assert (=> d!2150841 (= c!1273425 ((_ is Nil!66141) res!2792352))))

(declare-fun e!4124924 () (InoxSet Context!12078))

(assert (=> d!2150841 (= (content!12963 res!2792352) e!4124924)))

(declare-fun b!6839151 () Bool)

(assert (=> b!6839151 (= e!4124924 ((as const (Array Context!12078 Bool)) false))))

(declare-fun b!6839152 () Bool)

(assert (=> b!6839152 (= e!4124924 ((_ map or) (store ((as const (Array Context!12078 Bool)) false) (h!72589 res!2792352) true) (content!12963 (t!380008 res!2792352))))))

(assert (= (and d!2150841 c!1273425) b!6839151))

(assert (= (and d!2150841 (not c!1273425)) b!6839152))

(declare-fun m!7583290 () Bool)

(assert (=> b!6839152 m!7583290))

(declare-fun m!7583292 () Bool)

(assert (=> b!6839152 m!7583292))

(assert (=> b!6837866 d!2150841))

(declare-fun d!2150843 () Bool)

(declare-fun res!2792621 () Bool)

(declare-fun e!4124925 () Bool)

(assert (=> d!2150843 (=> res!2792621 e!4124925)))

(assert (=> d!2150843 (= res!2792621 ((_ is Nil!66140) lt!2455114))))

(assert (=> d!2150843 (= (forall!15835 lt!2455114 lambda!386685) e!4124925)))

(declare-fun b!6839153 () Bool)

(declare-fun e!4124926 () Bool)

(assert (=> b!6839153 (= e!4124925 e!4124926)))

(declare-fun res!2792622 () Bool)

(assert (=> b!6839153 (=> (not res!2792622) (not e!4124926))))

(assert (=> b!6839153 (= res!2792622 (dynLambda!26428 lambda!386685 (h!72588 lt!2455114)))))

(declare-fun b!6839154 () Bool)

(assert (=> b!6839154 (= e!4124926 (forall!15835 (t!380007 lt!2455114) lambda!386685))))

(assert (= (and d!2150843 (not res!2792621)) b!6839153))

(assert (= (and b!6839153 res!2792622) b!6839154))

(declare-fun b_lambda!257987 () Bool)

(assert (=> (not b_lambda!257987) (not b!6839153)))

(declare-fun m!7583294 () Bool)

(assert (=> b!6839153 m!7583294))

(declare-fun m!7583296 () Bool)

(assert (=> b!6839154 m!7583296))

(assert (=> d!2150575 d!2150843))

(declare-fun d!2150845 () Bool)

(assert (=> d!2150845 (= (isEmpty!38532 (tail!12783 (t!380007 (exprs!6539 (h!72589 zl!343))))) ((_ is Nil!66140) (tail!12783 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(assert (=> b!6837846 d!2150845))

(declare-fun d!2150847 () Bool)

(assert (=> d!2150847 (= (tail!12783 (t!380007 (exprs!6539 (h!72589 zl!343)))) (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(assert (=> b!6837846 d!2150847))

(declare-fun d!2150849 () Bool)

(assert (=> d!2150849 (= (isConcat!1524 lt!2455104) ((_ is Concat!25500) lt!2455104))))

(assert (=> b!6837844 d!2150849))

(declare-fun d!2150851 () Bool)

(declare-fun c!1273426 () Bool)

(assert (=> d!2150851 (= c!1273426 ((_ is Nil!66141) (t!380008 lt!2455092)))))

(declare-fun e!4124927 () (InoxSet Context!12078))

(assert (=> d!2150851 (= (content!12963 (t!380008 lt!2455092)) e!4124927)))

(declare-fun b!6839155 () Bool)

(assert (=> b!6839155 (= e!4124927 ((as const (Array Context!12078 Bool)) false))))

(declare-fun b!6839156 () Bool)

(assert (=> b!6839156 (= e!4124927 ((_ map or) (store ((as const (Array Context!12078 Bool)) false) (h!72589 (t!380008 lt!2455092)) true) (content!12963 (t!380008 (t!380008 lt!2455092)))))))

(assert (= (and d!2150851 c!1273426) b!6839155))

(assert (= (and d!2150851 (not c!1273426)) b!6839156))

(declare-fun m!7583298 () Bool)

(assert (=> b!6839156 m!7583298))

(declare-fun m!7583300 () Bool)

(assert (=> b!6839156 m!7583300))

(assert (=> b!6837981 d!2150851))

(declare-fun call!622915 () Bool)

(declare-fun c!1273428 () Bool)

(declare-fun c!1273427 () Bool)

(declare-fun bm!622910 () Bool)

(assert (=> bm!622910 (= call!622915 (validRegex!8391 (ite c!1273427 (reg!16984 (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))) (ite c!1273428 (regOne!33823 (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))) (regOne!33822 (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))))))))

(declare-fun b!6839157 () Bool)

(declare-fun res!2792625 () Bool)

(declare-fun e!4124934 () Bool)

(assert (=> b!6839157 (=> res!2792625 e!4124934)))

(assert (=> b!6839157 (= res!2792625 (not ((_ is Concat!25500) (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))))))

(declare-fun e!4124930 () Bool)

(assert (=> b!6839157 (= e!4124930 e!4124934)))

(declare-fun b!6839158 () Bool)

(declare-fun e!4124933 () Bool)

(declare-fun e!4124932 () Bool)

(assert (=> b!6839158 (= e!4124933 e!4124932)))

(declare-fun res!2792623 () Bool)

(assert (=> b!6839158 (= res!2792623 (not (nullable!6622 (reg!16984 (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))))))))

(assert (=> b!6839158 (=> (not res!2792623) (not e!4124932))))

(declare-fun b!6839159 () Bool)

(declare-fun e!4124928 () Bool)

(declare-fun call!622916 () Bool)

(assert (=> b!6839159 (= e!4124928 call!622916)))

(declare-fun bm!622911 () Bool)

(declare-fun call!622917 () Bool)

(assert (=> bm!622911 (= call!622917 call!622915)))

(declare-fun b!6839160 () Bool)

(assert (=> b!6839160 (= e!4124932 call!622915)))

(declare-fun bm!622912 () Bool)

(assert (=> bm!622912 (= call!622916 (validRegex!8391 (ite c!1273428 (regTwo!33823 (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))) (regTwo!33822 (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))))))))

(declare-fun b!6839161 () Bool)

(declare-fun e!4124929 () Bool)

(assert (=> b!6839161 (= e!4124929 call!622916)))

(declare-fun b!6839162 () Bool)

(assert (=> b!6839162 (= e!4124933 e!4124930)))

(assert (=> b!6839162 (= c!1273428 ((_ is Union!16655) (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))))))

(declare-fun b!6839163 () Bool)

(declare-fun e!4124931 () Bool)

(assert (=> b!6839163 (= e!4124931 e!4124933)))

(assert (=> b!6839163 (= c!1273427 ((_ is Star!16655) (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))))))

(declare-fun b!6839164 () Bool)

(assert (=> b!6839164 (= e!4124934 e!4124929)))

(declare-fun res!2792624 () Bool)

(assert (=> b!6839164 (=> (not res!2792624) (not e!4124929))))

(assert (=> b!6839164 (= res!2792624 call!622917)))

(declare-fun d!2150853 () Bool)

(declare-fun res!2792626 () Bool)

(assert (=> d!2150853 (=> res!2792626 e!4124931)))

(assert (=> d!2150853 (= res!2792626 ((_ is ElementMatch!16655) (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))))))

(assert (=> d!2150853 (= (validRegex!8391 (ite c!1273242 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (ite c!1273243 (regOne!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regOne!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))) e!4124931)))

(declare-fun b!6839165 () Bool)

(declare-fun res!2792627 () Bool)

(assert (=> b!6839165 (=> (not res!2792627) (not e!4124928))))

(assert (=> b!6839165 (= res!2792627 call!622917)))

(assert (=> b!6839165 (= e!4124930 e!4124928)))

(assert (= (and d!2150853 (not res!2792626)) b!6839163))

(assert (= (and b!6839163 c!1273427) b!6839158))

(assert (= (and b!6839163 (not c!1273427)) b!6839162))

(assert (= (and b!6839158 res!2792623) b!6839160))

(assert (= (and b!6839162 c!1273428) b!6839165))

(assert (= (and b!6839162 (not c!1273428)) b!6839157))

(assert (= (and b!6839165 res!2792627) b!6839159))

(assert (= (and b!6839157 (not res!2792625)) b!6839164))

(assert (= (and b!6839164 res!2792624) b!6839161))

(assert (= (or b!6839159 b!6839161) bm!622912))

(assert (= (or b!6839165 b!6839164) bm!622911))

(assert (= (or b!6839160 bm!622911) bm!622910))

(declare-fun m!7583302 () Bool)

(assert (=> bm!622910 m!7583302))

(declare-fun m!7583304 () Bool)

(assert (=> b!6839158 m!7583304))

(declare-fun m!7583306 () Bool)

(assert (=> bm!622912 m!7583306))

(assert (=> bm!622762 d!2150853))

(assert (=> b!6837954 d!2150455))

(declare-fun bs!1829039 () Bool)

(declare-fun d!2150855 () Bool)

(assert (= bs!1829039 (and d!2150855 d!2150549)))

(declare-fun lambda!386713 () Int)

(assert (=> bs!1829039 (= lambda!386713 lambda!386679)))

(declare-fun bs!1829040 () Bool)

(assert (= bs!1829040 (and d!2150855 d!2150575)))

(assert (=> bs!1829040 (= lambda!386713 lambda!386685)))

(declare-fun bs!1829041 () Bool)

(assert (= bs!1829041 (and d!2150855 d!2150573)))

(assert (=> bs!1829041 (= lambda!386713 lambda!386682)))

(declare-fun bs!1829042 () Bool)

(assert (= bs!1829042 (and d!2150855 d!2150825)))

(assert (=> bs!1829042 (= lambda!386713 lambda!386709)))

(declare-fun bs!1829043 () Bool)

(assert (= bs!1829043 (and d!2150855 d!2150577)))

(assert (=> bs!1829043 (= lambda!386713 lambda!386686)))

(declare-fun bs!1829044 () Bool)

(assert (= bs!1829044 (and d!2150855 d!2150449)))

(assert (=> bs!1829044 (= lambda!386713 lambda!386657)))

(declare-fun bs!1829045 () Bool)

(assert (= bs!1829045 (and d!2150855 d!2150589)))

(assert (=> bs!1829045 (= lambda!386713 lambda!386687)))

(declare-fun bs!1829046 () Bool)

(assert (= bs!1829046 (and d!2150855 d!2150451)))

(assert (=> bs!1829046 (= lambda!386713 lambda!386658)))

(declare-fun bs!1829047 () Bool)

(assert (= bs!1829047 (and d!2150855 d!2150835)))

(assert (=> bs!1829047 (= lambda!386713 lambda!386710)))

(declare-fun bs!1829048 () Bool)

(assert (= bs!1829048 (and d!2150855 d!2150455)))

(assert (=> bs!1829048 (= lambda!386713 lambda!386661)))

(declare-fun bs!1829049 () Bool)

(assert (= bs!1829049 (and d!2150855 d!2150779)))

(assert (=> bs!1829049 (= lambda!386713 lambda!386704)))

(declare-fun lt!2455131 () List!66264)

(assert (=> d!2150855 (forall!15835 lt!2455131 lambda!386713)))

(declare-fun e!4124935 () List!66264)

(assert (=> d!2150855 (= lt!2455131 e!4124935)))

(declare-fun c!1273429 () Bool)

(assert (=> d!2150855 (= c!1273429 ((_ is Cons!66141) (t!380008 zl!343)))))

(assert (=> d!2150855 (= (unfocusZipperList!2076 (t!380008 zl!343)) lt!2455131)))

(declare-fun b!6839166 () Bool)

(assert (=> b!6839166 (= e!4124935 (Cons!66140 (generalisedConcat!2252 (exprs!6539 (h!72589 (t!380008 zl!343)))) (unfocusZipperList!2076 (t!380008 (t!380008 zl!343)))))))

(declare-fun b!6839167 () Bool)

(assert (=> b!6839167 (= e!4124935 Nil!66140)))

(assert (= (and d!2150855 c!1273429) b!6839166))

(assert (= (and d!2150855 (not c!1273429)) b!6839167))

(declare-fun m!7583308 () Bool)

(assert (=> d!2150855 m!7583308))

(declare-fun m!7583310 () Bool)

(assert (=> b!6839166 m!7583310))

(declare-fun m!7583312 () Bool)

(assert (=> b!6839166 m!7583312))

(assert (=> b!6837954 d!2150855))

(declare-fun d!2150857 () Bool)

(declare-fun res!2792628 () Bool)

(declare-fun e!4124936 () Bool)

(assert (=> d!2150857 (=> res!2792628 e!4124936)))

(assert (=> d!2150857 (= res!2792628 ((_ is Nil!66141) (t!380008 lt!2455092)))))

(assert (=> d!2150857 (= (noDuplicate!2428 (t!380008 lt!2455092)) e!4124936)))

(declare-fun b!6839168 () Bool)

(declare-fun e!4124937 () Bool)

(assert (=> b!6839168 (= e!4124936 e!4124937)))

(declare-fun res!2792629 () Bool)

(assert (=> b!6839168 (=> (not res!2792629) (not e!4124937))))

(assert (=> b!6839168 (= res!2792629 (not (contains!20311 (t!380008 (t!380008 lt!2455092)) (h!72589 (t!380008 lt!2455092)))))))

(declare-fun b!6839169 () Bool)

(assert (=> b!6839169 (= e!4124937 (noDuplicate!2428 (t!380008 (t!380008 lt!2455092))))))

(assert (= (and d!2150857 (not res!2792628)) b!6839168))

(assert (= (and b!6839168 res!2792629) b!6839169))

(declare-fun m!7583314 () Bool)

(assert (=> b!6839168 m!7583314))

(declare-fun m!7583316 () Bool)

(assert (=> b!6839169 m!7583316))

(assert (=> b!6837857 d!2150857))

(declare-fun d!2150859 () Bool)

(assert (=> d!2150859 (= (head!13698 (t!380007 (exprs!6539 (h!72589 zl!343)))) (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343)))))))

(assert (=> b!6837848 d!2150859))

(declare-fun call!622918 () Bool)

(declare-fun c!1273431 () Bool)

(declare-fun bm!622913 () Bool)

(declare-fun c!1273430 () Bool)

(assert (=> bm!622913 (= call!622918 (validRegex!8391 (ite c!1273430 (reg!16984 (h!72588 (exprs!6539 setElem!46969))) (ite c!1273431 (regOne!33823 (h!72588 (exprs!6539 setElem!46969))) (regOne!33822 (h!72588 (exprs!6539 setElem!46969)))))))))

(declare-fun b!6839170 () Bool)

(declare-fun res!2792632 () Bool)

(declare-fun e!4124944 () Bool)

(assert (=> b!6839170 (=> res!2792632 e!4124944)))

(assert (=> b!6839170 (= res!2792632 (not ((_ is Concat!25500) (h!72588 (exprs!6539 setElem!46969)))))))

(declare-fun e!4124940 () Bool)

(assert (=> b!6839170 (= e!4124940 e!4124944)))

(declare-fun b!6839171 () Bool)

(declare-fun e!4124943 () Bool)

(declare-fun e!4124942 () Bool)

(assert (=> b!6839171 (= e!4124943 e!4124942)))

(declare-fun res!2792630 () Bool)

(assert (=> b!6839171 (= res!2792630 (not (nullable!6622 (reg!16984 (h!72588 (exprs!6539 setElem!46969))))))))

(assert (=> b!6839171 (=> (not res!2792630) (not e!4124942))))

(declare-fun b!6839172 () Bool)

(declare-fun e!4124938 () Bool)

(declare-fun call!622919 () Bool)

(assert (=> b!6839172 (= e!4124938 call!622919)))

(declare-fun bm!622914 () Bool)

(declare-fun call!622920 () Bool)

(assert (=> bm!622914 (= call!622920 call!622918)))

(declare-fun b!6839173 () Bool)

(assert (=> b!6839173 (= e!4124942 call!622918)))

(declare-fun bm!622915 () Bool)

(assert (=> bm!622915 (= call!622919 (validRegex!8391 (ite c!1273431 (regTwo!33823 (h!72588 (exprs!6539 setElem!46969))) (regTwo!33822 (h!72588 (exprs!6539 setElem!46969))))))))

(declare-fun b!6839174 () Bool)

(declare-fun e!4124939 () Bool)

(assert (=> b!6839174 (= e!4124939 call!622919)))

(declare-fun b!6839175 () Bool)

(assert (=> b!6839175 (= e!4124943 e!4124940)))

(assert (=> b!6839175 (= c!1273431 ((_ is Union!16655) (h!72588 (exprs!6539 setElem!46969))))))

(declare-fun b!6839176 () Bool)

(declare-fun e!4124941 () Bool)

(assert (=> b!6839176 (= e!4124941 e!4124943)))

(assert (=> b!6839176 (= c!1273430 ((_ is Star!16655) (h!72588 (exprs!6539 setElem!46969))))))

(declare-fun b!6839177 () Bool)

(assert (=> b!6839177 (= e!4124944 e!4124939)))

(declare-fun res!2792631 () Bool)

(assert (=> b!6839177 (=> (not res!2792631) (not e!4124939))))

(assert (=> b!6839177 (= res!2792631 call!622920)))

(declare-fun d!2150861 () Bool)

(declare-fun res!2792633 () Bool)

(assert (=> d!2150861 (=> res!2792633 e!4124941)))

(assert (=> d!2150861 (= res!2792633 ((_ is ElementMatch!16655) (h!72588 (exprs!6539 setElem!46969))))))

(assert (=> d!2150861 (= (validRegex!8391 (h!72588 (exprs!6539 setElem!46969))) e!4124941)))

(declare-fun b!6839178 () Bool)

(declare-fun res!2792634 () Bool)

(assert (=> b!6839178 (=> (not res!2792634) (not e!4124938))))

(assert (=> b!6839178 (= res!2792634 call!622920)))

(assert (=> b!6839178 (= e!4124940 e!4124938)))

(assert (= (and d!2150861 (not res!2792633)) b!6839176))

(assert (= (and b!6839176 c!1273430) b!6839171))

(assert (= (and b!6839176 (not c!1273430)) b!6839175))

(assert (= (and b!6839171 res!2792630) b!6839173))

(assert (= (and b!6839175 c!1273431) b!6839178))

(assert (= (and b!6839175 (not c!1273431)) b!6839170))

(assert (= (and b!6839178 res!2792634) b!6839172))

(assert (= (and b!6839170 (not res!2792632)) b!6839177))

(assert (= (and b!6839177 res!2792631) b!6839174))

(assert (= (or b!6839172 b!6839174) bm!622915))

(assert (= (or b!6839178 b!6839177) bm!622914))

(assert (= (or b!6839173 bm!622914) bm!622913))

(declare-fun m!7583318 () Bool)

(assert (=> bm!622913 m!7583318))

(declare-fun m!7583320 () Bool)

(assert (=> b!6839171 m!7583320))

(declare-fun m!7583322 () Bool)

(assert (=> bm!622915 m!7583322))

(assert (=> bs!1828769 d!2150861))

(declare-fun c!1273433 () Bool)

(declare-fun call!622921 () Bool)

(declare-fun bm!622916 () Bool)

(declare-fun c!1273432 () Bool)

(assert (=> bm!622916 (= call!622921 (validRegex!8391 (ite c!1273432 (reg!16984 lt!2455111) (ite c!1273433 (regOne!33823 lt!2455111) (regOne!33822 lt!2455111)))))))

(declare-fun b!6839179 () Bool)

(declare-fun res!2792637 () Bool)

(declare-fun e!4124951 () Bool)

(assert (=> b!6839179 (=> res!2792637 e!4124951)))

(assert (=> b!6839179 (= res!2792637 (not ((_ is Concat!25500) lt!2455111)))))

(declare-fun e!4124947 () Bool)

(assert (=> b!6839179 (= e!4124947 e!4124951)))

(declare-fun b!6839180 () Bool)

(declare-fun e!4124950 () Bool)

(declare-fun e!4124949 () Bool)

(assert (=> b!6839180 (= e!4124950 e!4124949)))

(declare-fun res!2792635 () Bool)

(assert (=> b!6839180 (= res!2792635 (not (nullable!6622 (reg!16984 lt!2455111))))))

(assert (=> b!6839180 (=> (not res!2792635) (not e!4124949))))

(declare-fun b!6839181 () Bool)

(declare-fun e!4124945 () Bool)

(declare-fun call!622922 () Bool)

(assert (=> b!6839181 (= e!4124945 call!622922)))

(declare-fun bm!622917 () Bool)

(declare-fun call!622923 () Bool)

(assert (=> bm!622917 (= call!622923 call!622921)))

(declare-fun b!6839182 () Bool)

(assert (=> b!6839182 (= e!4124949 call!622921)))

(declare-fun bm!622918 () Bool)

(assert (=> bm!622918 (= call!622922 (validRegex!8391 (ite c!1273433 (regTwo!33823 lt!2455111) (regTwo!33822 lt!2455111))))))

(declare-fun b!6839183 () Bool)

(declare-fun e!4124946 () Bool)

(assert (=> b!6839183 (= e!4124946 call!622922)))

(declare-fun b!6839184 () Bool)

(assert (=> b!6839184 (= e!4124950 e!4124947)))

(assert (=> b!6839184 (= c!1273433 ((_ is Union!16655) lt!2455111))))

(declare-fun b!6839185 () Bool)

(declare-fun e!4124948 () Bool)

(assert (=> b!6839185 (= e!4124948 e!4124950)))

(assert (=> b!6839185 (= c!1273432 ((_ is Star!16655) lt!2455111))))

(declare-fun b!6839186 () Bool)

(assert (=> b!6839186 (= e!4124951 e!4124946)))

(declare-fun res!2792636 () Bool)

(assert (=> b!6839186 (=> (not res!2792636) (not e!4124946))))

(assert (=> b!6839186 (= res!2792636 call!622923)))

(declare-fun d!2150863 () Bool)

(declare-fun res!2792638 () Bool)

(assert (=> d!2150863 (=> res!2792638 e!4124948)))

(assert (=> d!2150863 (= res!2792638 ((_ is ElementMatch!16655) lt!2455111))))

(assert (=> d!2150863 (= (validRegex!8391 lt!2455111) e!4124948)))

(declare-fun b!6839187 () Bool)

(declare-fun res!2792639 () Bool)

(assert (=> b!6839187 (=> (not res!2792639) (not e!4124945))))

(assert (=> b!6839187 (= res!2792639 call!622923)))

(assert (=> b!6839187 (= e!4124947 e!4124945)))

(assert (= (and d!2150863 (not res!2792638)) b!6839185))

(assert (= (and b!6839185 c!1273432) b!6839180))

(assert (= (and b!6839185 (not c!1273432)) b!6839184))

(assert (= (and b!6839180 res!2792635) b!6839182))

(assert (= (and b!6839184 c!1273433) b!6839187))

(assert (= (and b!6839184 (not c!1273433)) b!6839179))

(assert (= (and b!6839187 res!2792639) b!6839181))

(assert (= (and b!6839179 (not res!2792637)) b!6839186))

(assert (= (and b!6839186 res!2792636) b!6839183))

(assert (= (or b!6839181 b!6839183) bm!622918))

(assert (= (or b!6839187 b!6839186) bm!622917))

(assert (= (or b!6839182 bm!622917) bm!622916))

(declare-fun m!7583324 () Bool)

(assert (=> bm!622916 m!7583324))

(declare-fun m!7583326 () Bool)

(assert (=> b!6839180 m!7583326))

(declare-fun m!7583328 () Bool)

(assert (=> bm!622918 m!7583328))

(assert (=> d!2150573 d!2150863))

(declare-fun d!2150865 () Bool)

(declare-fun res!2792640 () Bool)

(declare-fun e!4124952 () Bool)

(assert (=> d!2150865 (=> res!2792640 e!4124952)))

(assert (=> d!2150865 (= res!2792640 ((_ is Nil!66140) (unfocusZipperList!2076 zl!343)))))

(assert (=> d!2150865 (= (forall!15835 (unfocusZipperList!2076 zl!343) lambda!386682) e!4124952)))

(declare-fun b!6839188 () Bool)

(declare-fun e!4124953 () Bool)

(assert (=> b!6839188 (= e!4124952 e!4124953)))

(declare-fun res!2792641 () Bool)

(assert (=> b!6839188 (=> (not res!2792641) (not e!4124953))))

(assert (=> b!6839188 (= res!2792641 (dynLambda!26428 lambda!386682 (h!72588 (unfocusZipperList!2076 zl!343))))))

(declare-fun b!6839189 () Bool)

(assert (=> b!6839189 (= e!4124953 (forall!15835 (t!380007 (unfocusZipperList!2076 zl!343)) lambda!386682))))

(assert (= (and d!2150865 (not res!2792640)) b!6839188))

(assert (= (and b!6839188 res!2792641) b!6839189))

(declare-fun b_lambda!257989 () Bool)

(assert (=> (not b_lambda!257989) (not b!6839188)))

(declare-fun m!7583330 () Bool)

(assert (=> b!6839188 m!7583330))

(declare-fun m!7583332 () Bool)

(assert (=> b!6839189 m!7583332))

(assert (=> d!2150573 d!2150865))

(declare-fun d!2150867 () Bool)

(assert (=> d!2150867 (= (nullable!6622 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))) (nullableFct!2516 (reg!16984 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))))

(declare-fun bs!1829050 () Bool)

(assert (= bs!1829050 d!2150867))

(declare-fun m!7583334 () Bool)

(assert (=> bs!1829050 m!7583334))

(assert (=> b!6837806 d!2150867))

(declare-fun c!1273434 () Bool)

(declare-fun bm!622919 () Bool)

(declare-fun c!1273435 () Bool)

(declare-fun call!622924 () Bool)

(assert (=> bm!622919 (= call!622924 (validRegex!8391 (ite c!1273434 (reg!16984 (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))) (ite c!1273435 (regOne!33823 (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))) (regOne!33822 (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))))))))

(declare-fun b!6839190 () Bool)

(declare-fun res!2792644 () Bool)

(declare-fun e!4124960 () Bool)

(assert (=> b!6839190 (=> res!2792644 e!4124960)))

(assert (=> b!6839190 (= res!2792644 (not ((_ is Concat!25500) (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292))))))))))

(declare-fun e!4124956 () Bool)

(assert (=> b!6839190 (= e!4124956 e!4124960)))

(declare-fun b!6839191 () Bool)

(declare-fun e!4124959 () Bool)

(declare-fun e!4124958 () Bool)

(assert (=> b!6839191 (= e!4124959 e!4124958)))

(declare-fun res!2792642 () Bool)

(assert (=> b!6839191 (= res!2792642 (not (nullable!6622 (reg!16984 (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))))))

(assert (=> b!6839191 (=> (not res!2792642) (not e!4124958))))

(declare-fun b!6839192 () Bool)

(declare-fun e!4124954 () Bool)

(declare-fun call!622925 () Bool)

(assert (=> b!6839192 (= e!4124954 call!622925)))

(declare-fun bm!622920 () Bool)

(declare-fun call!622926 () Bool)

(assert (=> bm!622920 (= call!622926 call!622924)))

(declare-fun b!6839193 () Bool)

(assert (=> b!6839193 (= e!4124958 call!622924)))

(declare-fun bm!622921 () Bool)

(assert (=> bm!622921 (= call!622925 (validRegex!8391 (ite c!1273435 (regTwo!33823 (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))) (regTwo!33822 (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))))))

(declare-fun b!6839194 () Bool)

(declare-fun e!4124955 () Bool)

(assert (=> b!6839194 (= e!4124955 call!622925)))

(declare-fun b!6839195 () Bool)

(assert (=> b!6839195 (= e!4124959 e!4124956)))

(assert (=> b!6839195 (= c!1273435 ((_ is Union!16655) (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))))

(declare-fun b!6839196 () Bool)

(declare-fun e!4124957 () Bool)

(assert (=> b!6839196 (= e!4124957 e!4124959)))

(assert (=> b!6839196 (= c!1273434 ((_ is Star!16655) (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))))

(declare-fun b!6839197 () Bool)

(assert (=> b!6839197 (= e!4124960 e!4124955)))

(declare-fun res!2792643 () Bool)

(assert (=> b!6839197 (=> (not res!2792643) (not e!4124955))))

(assert (=> b!6839197 (= res!2792643 call!622926)))

(declare-fun d!2150869 () Bool)

(declare-fun res!2792645 () Bool)

(assert (=> d!2150869 (=> res!2792645 e!4124957)))

(assert (=> d!2150869 (= res!2792645 ((_ is ElementMatch!16655) (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))))))

(assert (=> d!2150869 (= (validRegex!8391 (ite c!1273243 (regTwo!33823 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))) (regTwo!33822 (ite c!1273172 (reg!16984 r!7292) (ite c!1273173 (regOne!33823 r!7292) (regOne!33822 r!7292)))))) e!4124957)))

(declare-fun b!6839198 () Bool)

(declare-fun res!2792646 () Bool)

(assert (=> b!6839198 (=> (not res!2792646) (not e!4124954))))

(assert (=> b!6839198 (= res!2792646 call!622926)))

(assert (=> b!6839198 (= e!4124956 e!4124954)))

(assert (= (and d!2150869 (not res!2792645)) b!6839196))

(assert (= (and b!6839196 c!1273434) b!6839191))

(assert (= (and b!6839196 (not c!1273434)) b!6839195))

(assert (= (and b!6839191 res!2792642) b!6839193))

(assert (= (and b!6839195 c!1273435) b!6839198))

(assert (= (and b!6839195 (not c!1273435)) b!6839190))

(assert (= (and b!6839198 res!2792646) b!6839192))

(assert (= (and b!6839190 (not res!2792644)) b!6839197))

(assert (= (and b!6839197 res!2792643) b!6839194))

(assert (= (or b!6839192 b!6839194) bm!622921))

(assert (= (or b!6839198 b!6839197) bm!622920))

(assert (= (or b!6839193 bm!622920) bm!622919))

(declare-fun m!7583336 () Bool)

(assert (=> bm!622919 m!7583336))

(declare-fun m!7583338 () Bool)

(assert (=> b!6839191 m!7583338))

(declare-fun m!7583340 () Bool)

(assert (=> bm!622921 m!7583340))

(assert (=> bm!622764 d!2150869))

(declare-fun d!2150871 () Bool)

(declare-fun res!2792647 () Bool)

(declare-fun e!4124961 () Bool)

(assert (=> d!2150871 (=> res!2792647 e!4124961)))

(assert (=> d!2150871 (= res!2792647 ((_ is Nil!66141) res!2792352))))

(assert (=> d!2150871 (= (noDuplicate!2428 res!2792352) e!4124961)))

(declare-fun b!6839199 () Bool)

(declare-fun e!4124962 () Bool)

(assert (=> b!6839199 (= e!4124961 e!4124962)))

(declare-fun res!2792648 () Bool)

(assert (=> b!6839199 (=> (not res!2792648) (not e!4124962))))

(assert (=> b!6839199 (= res!2792648 (not (contains!20311 (t!380008 res!2792352) (h!72589 res!2792352))))))

(declare-fun b!6839200 () Bool)

(assert (=> b!6839200 (= e!4124962 (noDuplicate!2428 (t!380008 res!2792352)))))

(assert (= (and d!2150871 (not res!2792647)) b!6839199))

(assert (= (and b!6839199 res!2792648) b!6839200))

(declare-fun m!7583342 () Bool)

(assert (=> b!6839199 m!7583342))

(declare-fun m!7583344 () Bool)

(assert (=> b!6839200 m!7583344))

(assert (=> d!2150557 d!2150871))

(declare-fun call!622927 () Bool)

(declare-fun c!1273436 () Bool)

(declare-fun c!1273437 () Bool)

(declare-fun bm!622922 () Bool)

(assert (=> bm!622922 (= call!622927 (validRegex!8391 (ite c!1273436 (reg!16984 (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089)))) (ite c!1273437 (regOne!33823 (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089)))) (regOne!33822 (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089))))))))))

(declare-fun b!6839201 () Bool)

(declare-fun res!2792651 () Bool)

(declare-fun e!4124969 () Bool)

(assert (=> b!6839201 (=> res!2792651 e!4124969)))

(assert (=> b!6839201 (= res!2792651 (not ((_ is Concat!25500) (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089))))))))

(declare-fun e!4124965 () Bool)

(assert (=> b!6839201 (= e!4124965 e!4124969)))

(declare-fun b!6839202 () Bool)

(declare-fun e!4124968 () Bool)

(declare-fun e!4124967 () Bool)

(assert (=> b!6839202 (= e!4124968 e!4124967)))

(declare-fun res!2792649 () Bool)

(assert (=> b!6839202 (= res!2792649 (not (nullable!6622 (reg!16984 (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089)))))))))

(assert (=> b!6839202 (=> (not res!2792649) (not e!4124967))))

(declare-fun b!6839203 () Bool)

(declare-fun e!4124963 () Bool)

(declare-fun call!622928 () Bool)

(assert (=> b!6839203 (= e!4124963 call!622928)))

(declare-fun bm!622923 () Bool)

(declare-fun call!622929 () Bool)

(assert (=> bm!622923 (= call!622929 call!622927)))

(declare-fun b!6839204 () Bool)

(assert (=> b!6839204 (= e!4124967 call!622927)))

(declare-fun bm!622924 () Bool)

(assert (=> bm!622924 (= call!622928 (validRegex!8391 (ite c!1273437 (regTwo!33823 (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089)))) (regTwo!33822 (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089)))))))))

(declare-fun b!6839205 () Bool)

(declare-fun e!4124964 () Bool)

(assert (=> b!6839205 (= e!4124964 call!622928)))

(declare-fun b!6839206 () Bool)

(assert (=> b!6839206 (= e!4124968 e!4124965)))

(assert (=> b!6839206 (= c!1273437 ((_ is Union!16655) (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089)))))))

(declare-fun b!6839207 () Bool)

(declare-fun e!4124966 () Bool)

(assert (=> b!6839207 (= e!4124966 e!4124968)))

(assert (=> b!6839207 (= c!1273436 ((_ is Star!16655) (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089)))))))

(declare-fun b!6839208 () Bool)

(assert (=> b!6839208 (= e!4124969 e!4124964)))

(declare-fun res!2792650 () Bool)

(assert (=> b!6839208 (=> (not res!2792650) (not e!4124964))))

(assert (=> b!6839208 (= res!2792650 call!622929)))

(declare-fun d!2150873 () Bool)

(declare-fun res!2792652 () Bool)

(assert (=> d!2150873 (=> res!2792652 e!4124966)))

(assert (=> d!2150873 (= res!2792652 ((_ is ElementMatch!16655) (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089)))))))

(assert (=> d!2150873 (= (validRegex!8391 (ite c!1273274 (reg!16984 lt!2455089) (ite c!1273275 (regOne!33823 lt!2455089) (regOne!33822 lt!2455089)))) e!4124966)))

(declare-fun b!6839209 () Bool)

(declare-fun res!2792653 () Bool)

(assert (=> b!6839209 (=> (not res!2792653) (not e!4124963))))

(assert (=> b!6839209 (= res!2792653 call!622929)))

(assert (=> b!6839209 (= e!4124965 e!4124963)))

(assert (= (and d!2150873 (not res!2792652)) b!6839207))

(assert (= (and b!6839207 c!1273436) b!6839202))

(assert (= (and b!6839207 (not c!1273436)) b!6839206))

(assert (= (and b!6839202 res!2792649) b!6839204))

(assert (= (and b!6839206 c!1273437) b!6839209))

(assert (= (and b!6839206 (not c!1273437)) b!6839201))

(assert (= (and b!6839209 res!2792653) b!6839203))

(assert (= (and b!6839201 (not res!2792651)) b!6839208))

(assert (= (and b!6839208 res!2792650) b!6839205))

(assert (= (or b!6839203 b!6839205) bm!622924))

(assert (= (or b!6839209 b!6839208) bm!622923))

(assert (= (or b!6839204 bm!622923) bm!622922))

(declare-fun m!7583346 () Bool)

(assert (=> bm!622922 m!7583346))

(declare-fun m!7583348 () Bool)

(assert (=> b!6839202 m!7583348))

(declare-fun m!7583350 () Bool)

(assert (=> bm!622924 m!7583350))

(assert (=> bm!622782 d!2150873))

(declare-fun d!2150875 () Bool)

(assert (=> d!2150875 (= (isEmpty!38532 (t!380007 (unfocusZipperList!2076 zl!343))) ((_ is Nil!66140) (t!380007 (unfocusZipperList!2076 zl!343))))))

(assert (=> b!6837941 d!2150875))

(assert (=> b!6837868 d!2150829))

(declare-fun bs!1829051 () Bool)

(declare-fun d!2150877 () Bool)

(assert (= bs!1829051 (and d!2150877 d!2150549)))

(declare-fun lambda!386714 () Int)

(assert (=> bs!1829051 (= lambda!386714 lambda!386679)))

(declare-fun bs!1829052 () Bool)

(assert (= bs!1829052 (and d!2150877 d!2150855)))

(assert (=> bs!1829052 (= lambda!386714 lambda!386713)))

(declare-fun bs!1829053 () Bool)

(assert (= bs!1829053 (and d!2150877 d!2150575)))

(assert (=> bs!1829053 (= lambda!386714 lambda!386685)))

(declare-fun bs!1829054 () Bool)

(assert (= bs!1829054 (and d!2150877 d!2150573)))

(assert (=> bs!1829054 (= lambda!386714 lambda!386682)))

(declare-fun bs!1829055 () Bool)

(assert (= bs!1829055 (and d!2150877 d!2150825)))

(assert (=> bs!1829055 (= lambda!386714 lambda!386709)))

(declare-fun bs!1829056 () Bool)

(assert (= bs!1829056 (and d!2150877 d!2150577)))

(assert (=> bs!1829056 (= lambda!386714 lambda!386686)))

(declare-fun bs!1829057 () Bool)

(assert (= bs!1829057 (and d!2150877 d!2150449)))

(assert (=> bs!1829057 (= lambda!386714 lambda!386657)))

(declare-fun bs!1829058 () Bool)

(assert (= bs!1829058 (and d!2150877 d!2150589)))

(assert (=> bs!1829058 (= lambda!386714 lambda!386687)))

(declare-fun bs!1829059 () Bool)

(assert (= bs!1829059 (and d!2150877 d!2150451)))

(assert (=> bs!1829059 (= lambda!386714 lambda!386658)))

(declare-fun bs!1829060 () Bool)

(assert (= bs!1829060 (and d!2150877 d!2150835)))

(assert (=> bs!1829060 (= lambda!386714 lambda!386710)))

(declare-fun bs!1829061 () Bool)

(assert (= bs!1829061 (and d!2150877 d!2150455)))

(assert (=> bs!1829061 (= lambda!386714 lambda!386661)))

(declare-fun bs!1829062 () Bool)

(assert (= bs!1829062 (and d!2150877 d!2150779)))

(assert (=> bs!1829062 (= lambda!386714 lambda!386704)))

(declare-fun b!6839210 () Bool)

(declare-fun e!4124972 () Bool)

(declare-fun e!4124971 () Bool)

(assert (=> b!6839210 (= e!4124972 e!4124971)))

(declare-fun c!1273440 () Bool)

(assert (=> b!6839210 (= c!1273440 (isEmpty!38532 (tail!12783 (t!380007 (unfocusZipperList!2076 zl!343)))))))

(declare-fun b!6839211 () Bool)

(declare-fun e!4124974 () Bool)

(assert (=> b!6839211 (= e!4124974 (isEmpty!38532 (t!380007 (t!380007 (unfocusZipperList!2076 zl!343)))))))

(declare-fun b!6839212 () Bool)

(declare-fun e!4124973 () Bool)

(assert (=> b!6839212 (= e!4124973 e!4124972)))

(declare-fun c!1273439 () Bool)

(assert (=> b!6839212 (= c!1273439 (isEmpty!38532 (t!380007 (unfocusZipperList!2076 zl!343))))))

(declare-fun b!6839213 () Bool)

(declare-fun e!4124970 () Regex!16655)

(declare-fun e!4124975 () Regex!16655)

(assert (=> b!6839213 (= e!4124970 e!4124975)))

(declare-fun c!1273441 () Bool)

(assert (=> b!6839213 (= c!1273441 ((_ is Cons!66140) (t!380007 (unfocusZipperList!2076 zl!343))))))

(declare-fun b!6839214 () Bool)

(assert (=> b!6839214 (= e!4124975 EmptyLang!16655)))

(declare-fun b!6839215 () Bool)

(assert (=> b!6839215 (= e!4124975 (Union!16655 (h!72588 (t!380007 (unfocusZipperList!2076 zl!343))) (generalisedUnion!2499 (t!380007 (t!380007 (unfocusZipperList!2076 zl!343))))))))

(declare-fun b!6839217 () Bool)

(declare-fun lt!2455132 () Regex!16655)

(assert (=> b!6839217 (= e!4124971 (isUnion!1439 lt!2455132))))

(declare-fun b!6839218 () Bool)

(assert (=> b!6839218 (= e!4124970 (h!72588 (t!380007 (unfocusZipperList!2076 zl!343))))))

(declare-fun b!6839219 () Bool)

(assert (=> b!6839219 (= e!4124972 (isEmptyLang!2009 lt!2455132))))

(declare-fun b!6839216 () Bool)

(assert (=> b!6839216 (= e!4124971 (= lt!2455132 (head!13698 (t!380007 (unfocusZipperList!2076 zl!343)))))))

(assert (=> d!2150877 e!4124973))

(declare-fun res!2792655 () Bool)

(assert (=> d!2150877 (=> (not res!2792655) (not e!4124973))))

(assert (=> d!2150877 (= res!2792655 (validRegex!8391 lt!2455132))))

(assert (=> d!2150877 (= lt!2455132 e!4124970)))

(declare-fun c!1273438 () Bool)

(assert (=> d!2150877 (= c!1273438 e!4124974)))

(declare-fun res!2792654 () Bool)

(assert (=> d!2150877 (=> (not res!2792654) (not e!4124974))))

(assert (=> d!2150877 (= res!2792654 ((_ is Cons!66140) (t!380007 (unfocusZipperList!2076 zl!343))))))

(assert (=> d!2150877 (forall!15835 (t!380007 (unfocusZipperList!2076 zl!343)) lambda!386714)))

(assert (=> d!2150877 (= (generalisedUnion!2499 (t!380007 (unfocusZipperList!2076 zl!343))) lt!2455132)))

(assert (= (and d!2150877 res!2792654) b!6839211))

(assert (= (and d!2150877 c!1273438) b!6839218))

(assert (= (and d!2150877 (not c!1273438)) b!6839213))

(assert (= (and b!6839213 c!1273441) b!6839215))

(assert (= (and b!6839213 (not c!1273441)) b!6839214))

(assert (= (and d!2150877 res!2792655) b!6839212))

(assert (= (and b!6839212 c!1273439) b!6839219))

(assert (= (and b!6839212 (not c!1273439)) b!6839210))

(assert (= (and b!6839210 c!1273440) b!6839216))

(assert (= (and b!6839210 (not c!1273440)) b!6839217))

(declare-fun m!7583352 () Bool)

(assert (=> b!6839211 m!7583352))

(declare-fun m!7583354 () Bool)

(assert (=> d!2150877 m!7583354))

(declare-fun m!7583356 () Bool)

(assert (=> d!2150877 m!7583356))

(declare-fun m!7583358 () Bool)

(assert (=> b!6839217 m!7583358))

(assert (=> b!6839212 m!7582782))

(declare-fun m!7583360 () Bool)

(assert (=> b!6839219 m!7583360))

(declare-fun m!7583362 () Bool)

(assert (=> b!6839216 m!7583362))

(declare-fun m!7583364 () Bool)

(assert (=> b!6839215 m!7583364))

(declare-fun m!7583366 () Bool)

(assert (=> b!6839210 m!7583366))

(assert (=> b!6839210 m!7583366))

(declare-fun m!7583368 () Bool)

(assert (=> b!6839210 m!7583368))

(assert (=> b!6837945 d!2150877))

(declare-fun b!6839220 () Bool)

(declare-fun e!4124979 () Bool)

(assert (=> b!6839220 (= e!4124979 (matchR!8838 (derivativeStep!5307 (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326))) (head!13697 (tail!12782 (tail!12782 s!2326)))) (tail!12782 (tail!12782 (tail!12782 s!2326)))))))

(declare-fun bm!622925 () Bool)

(declare-fun call!622930 () Bool)

(assert (=> bm!622925 (= call!622930 (isEmpty!38531 (tail!12782 (tail!12782 s!2326))))))

(declare-fun b!6839221 () Bool)

(declare-fun e!4124981 () Bool)

(assert (=> b!6839221 (= e!4124981 (= (head!13697 (tail!12782 (tail!12782 s!2326))) (c!1273107 (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326))))))))

(declare-fun b!6839222 () Bool)

(declare-fun e!4124976 () Bool)

(assert (=> b!6839222 (= e!4124976 (not (= (head!13697 (tail!12782 (tail!12782 s!2326))) (c!1273107 (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326)))))))))

(declare-fun b!6839223 () Bool)

(assert (=> b!6839223 (= e!4124979 (nullable!6622 (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326)))))))

(declare-fun b!6839224 () Bool)

(declare-fun res!2792658 () Bool)

(declare-fun e!4124978 () Bool)

(assert (=> b!6839224 (=> res!2792658 e!4124978)))

(assert (=> b!6839224 (= res!2792658 (not ((_ is ElementMatch!16655) (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326))))))))

(declare-fun e!4124982 () Bool)

(assert (=> b!6839224 (= e!4124982 e!4124978)))

(declare-fun d!2150879 () Bool)

(declare-fun e!4124977 () Bool)

(assert (=> d!2150879 e!4124977))

(declare-fun c!1273442 () Bool)

(assert (=> d!2150879 (= c!1273442 ((_ is EmptyExpr!16655) (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326)))))))

(declare-fun lt!2455133 () Bool)

(assert (=> d!2150879 (= lt!2455133 e!4124979)))

(declare-fun c!1273443 () Bool)

(assert (=> d!2150879 (= c!1273443 (isEmpty!38531 (tail!12782 (tail!12782 s!2326))))))

(assert (=> d!2150879 (validRegex!8391 (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326))))))

(assert (=> d!2150879 (= (matchR!8838 (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326))) (tail!12782 (tail!12782 s!2326))) lt!2455133)))

(declare-fun b!6839225 () Bool)

(assert (=> b!6839225 (= e!4124982 (not lt!2455133))))

(declare-fun b!6839226 () Bool)

(declare-fun res!2792656 () Bool)

(assert (=> b!6839226 (=> (not res!2792656) (not e!4124981))))

(assert (=> b!6839226 (= res!2792656 (not call!622930))))

(declare-fun b!6839227 () Bool)

(declare-fun res!2792659 () Bool)

(assert (=> b!6839227 (=> (not res!2792659) (not e!4124981))))

(assert (=> b!6839227 (= res!2792659 (isEmpty!38531 (tail!12782 (tail!12782 (tail!12782 s!2326)))))))

(declare-fun b!6839228 () Bool)

(declare-fun res!2792661 () Bool)

(assert (=> b!6839228 (=> res!2792661 e!4124978)))

(assert (=> b!6839228 (= res!2792661 e!4124981)))

(declare-fun res!2792662 () Bool)

(assert (=> b!6839228 (=> (not res!2792662) (not e!4124981))))

(assert (=> b!6839228 (= res!2792662 lt!2455133)))

(declare-fun b!6839229 () Bool)

(assert (=> b!6839229 (= e!4124977 e!4124982)))

(declare-fun c!1273444 () Bool)

(assert (=> b!6839229 (= c!1273444 ((_ is EmptyLang!16655) (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326)))))))

(declare-fun b!6839230 () Bool)

(declare-fun e!4124980 () Bool)

(assert (=> b!6839230 (= e!4124980 e!4124976)))

(declare-fun res!2792663 () Bool)

(assert (=> b!6839230 (=> res!2792663 e!4124976)))

(assert (=> b!6839230 (= res!2792663 call!622930)))

(declare-fun b!6839231 () Bool)

(assert (=> b!6839231 (= e!4124978 e!4124980)))

(declare-fun res!2792660 () Bool)

(assert (=> b!6839231 (=> (not res!2792660) (not e!4124980))))

(assert (=> b!6839231 (= res!2792660 (not lt!2455133))))

(declare-fun b!6839232 () Bool)

(declare-fun res!2792657 () Bool)

(assert (=> b!6839232 (=> res!2792657 e!4124976)))

(assert (=> b!6839232 (= res!2792657 (not (isEmpty!38531 (tail!12782 (tail!12782 (tail!12782 s!2326))))))))

(declare-fun b!6839233 () Bool)

(assert (=> b!6839233 (= e!4124977 (= lt!2455133 call!622930))))

(assert (= (and d!2150879 c!1273443) b!6839223))

(assert (= (and d!2150879 (not c!1273443)) b!6839220))

(assert (= (and d!2150879 c!1273442) b!6839233))

(assert (= (and d!2150879 (not c!1273442)) b!6839229))

(assert (= (and b!6839229 c!1273444) b!6839225))

(assert (= (and b!6839229 (not c!1273444)) b!6839224))

(assert (= (and b!6839224 (not res!2792658)) b!6839228))

(assert (= (and b!6839228 res!2792662) b!6839226))

(assert (= (and b!6839226 res!2792656) b!6839227))

(assert (= (and b!6839227 res!2792659) b!6839221))

(assert (= (and b!6839228 (not res!2792661)) b!6839231))

(assert (= (and b!6839231 res!2792660) b!6839230))

(assert (= (and b!6839230 (not res!2792663)) b!6839232))

(assert (= (and b!6839232 (not res!2792657)) b!6839222))

(assert (= (or b!6839233 b!6839226 b!6839230) bm!622925))

(assert (=> bm!622925 m!7582752))

(assert (=> bm!622925 m!7582754))

(assert (=> b!6839227 m!7582752))

(declare-fun m!7583370 () Bool)

(assert (=> b!6839227 m!7583370))

(assert (=> b!6839227 m!7583370))

(declare-fun m!7583372 () Bool)

(assert (=> b!6839227 m!7583372))

(assert (=> b!6839220 m!7582752))

(declare-fun m!7583374 () Bool)

(assert (=> b!6839220 m!7583374))

(assert (=> b!6839220 m!7582758))

(assert (=> b!6839220 m!7583374))

(declare-fun m!7583376 () Bool)

(assert (=> b!6839220 m!7583376))

(assert (=> b!6839220 m!7582752))

(assert (=> b!6839220 m!7583370))

(assert (=> b!6839220 m!7583376))

(assert (=> b!6839220 m!7583370))

(declare-fun m!7583378 () Bool)

(assert (=> b!6839220 m!7583378))

(assert (=> b!6839232 m!7582752))

(assert (=> b!6839232 m!7583370))

(assert (=> b!6839232 m!7583370))

(assert (=> b!6839232 m!7583372))

(assert (=> b!6839222 m!7582752))

(assert (=> b!6839222 m!7583374))

(assert (=> b!6839221 m!7582752))

(assert (=> b!6839221 m!7583374))

(assert (=> d!2150879 m!7582752))

(assert (=> d!2150879 m!7582754))

(assert (=> d!2150879 m!7582758))

(declare-fun m!7583380 () Bool)

(assert (=> d!2150879 m!7583380))

(assert (=> b!6839223 m!7582758))

(declare-fun m!7583382 () Bool)

(assert (=> b!6839223 m!7583382))

(assert (=> b!6837867 d!2150879))

(declare-fun c!1273447 () Bool)

(declare-fun bm!622926 () Bool)

(declare-fun call!622934 () Regex!16655)

(declare-fun c!1273446 () Bool)

(declare-fun c!1273448 () Bool)

(assert (=> bm!622926 (= call!622934 (derivativeStep!5307 (ite c!1273448 (regTwo!33823 (derivativeStep!5307 r!7292 (head!13697 s!2326))) (ite c!1273447 (reg!16984 (derivativeStep!5307 r!7292 (head!13697 s!2326))) (ite c!1273446 (regTwo!33822 (derivativeStep!5307 r!7292 (head!13697 s!2326))) (regOne!33822 (derivativeStep!5307 r!7292 (head!13697 s!2326)))))) (head!13697 (tail!12782 s!2326))))))

(declare-fun e!4124983 () Regex!16655)

(declare-fun call!622931 () Regex!16655)

(declare-fun b!6839234 () Bool)

(assert (=> b!6839234 (= e!4124983 (Union!16655 (Concat!25500 call!622931 (regTwo!33822 (derivativeStep!5307 r!7292 (head!13697 s!2326)))) EmptyLang!16655))))

(declare-fun bm!622927 () Bool)

(declare-fun call!622932 () Regex!16655)

(assert (=> bm!622927 (= call!622932 call!622934)))

(declare-fun b!6839235 () Bool)

(declare-fun e!4124985 () Regex!16655)

(assert (=> b!6839235 (= e!4124985 (ite (= (head!13697 (tail!12782 s!2326)) (c!1273107 (derivativeStep!5307 r!7292 (head!13697 s!2326)))) EmptyExpr!16655 EmptyLang!16655))))

(declare-fun bm!622928 () Bool)

(assert (=> bm!622928 (= call!622931 call!622932)))

(declare-fun b!6839236 () Bool)

(declare-fun e!4124984 () Regex!16655)

(assert (=> b!6839236 (= e!4124984 EmptyLang!16655)))

(declare-fun b!6839237 () Bool)

(assert (=> b!6839237 (= c!1273446 (nullable!6622 (regOne!33822 (derivativeStep!5307 r!7292 (head!13697 s!2326)))))))

(declare-fun e!4124987 () Regex!16655)

(assert (=> b!6839237 (= e!4124987 e!4124983)))

(declare-fun b!6839238 () Bool)

(declare-fun e!4124986 () Regex!16655)

(declare-fun call!622933 () Regex!16655)

(assert (=> b!6839238 (= e!4124986 (Union!16655 call!622933 call!622934))))

(declare-fun b!6839239 () Bool)

(assert (=> b!6839239 (= c!1273448 ((_ is Union!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(assert (=> b!6839239 (= e!4124985 e!4124986)))

(declare-fun b!6839240 () Bool)

(assert (=> b!6839240 (= e!4124986 e!4124987)))

(assert (=> b!6839240 (= c!1273447 ((_ is Star!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(declare-fun b!6839242 () Bool)

(assert (=> b!6839242 (= e!4124984 e!4124985)))

(declare-fun c!1273445 () Bool)

(assert (=> b!6839242 (= c!1273445 ((_ is ElementMatch!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(declare-fun bm!622929 () Bool)

(assert (=> bm!622929 (= call!622933 (derivativeStep!5307 (ite c!1273448 (regOne!33823 (derivativeStep!5307 r!7292 (head!13697 s!2326))) (regOne!33822 (derivativeStep!5307 r!7292 (head!13697 s!2326)))) (head!13697 (tail!12782 s!2326))))))

(declare-fun b!6839243 () Bool)

(assert (=> b!6839243 (= e!4124983 (Union!16655 (Concat!25500 call!622933 (regTwo!33822 (derivativeStep!5307 r!7292 (head!13697 s!2326)))) call!622931))))

(declare-fun d!2150881 () Bool)

(declare-fun lt!2455134 () Regex!16655)

(assert (=> d!2150881 (validRegex!8391 lt!2455134)))

(assert (=> d!2150881 (= lt!2455134 e!4124984)))

(declare-fun c!1273449 () Bool)

(assert (=> d!2150881 (= c!1273449 (or ((_ is EmptyExpr!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326))) ((_ is EmptyLang!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326)))))))

(assert (=> d!2150881 (validRegex!8391 (derivativeStep!5307 r!7292 (head!13697 s!2326)))))

(assert (=> d!2150881 (= (derivativeStep!5307 (derivativeStep!5307 r!7292 (head!13697 s!2326)) (head!13697 (tail!12782 s!2326))) lt!2455134)))

(declare-fun b!6839241 () Bool)

(assert (=> b!6839241 (= e!4124987 (Concat!25500 call!622932 (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(assert (= (and d!2150881 c!1273449) b!6839236))

(assert (= (and d!2150881 (not c!1273449)) b!6839242))

(assert (= (and b!6839242 c!1273445) b!6839235))

(assert (= (and b!6839242 (not c!1273445)) b!6839239))

(assert (= (and b!6839239 c!1273448) b!6839238))

(assert (= (and b!6839239 (not c!1273448)) b!6839240))

(assert (= (and b!6839240 c!1273447) b!6839241))

(assert (= (and b!6839240 (not c!1273447)) b!6839237))

(assert (= (and b!6839237 c!1273446) b!6839243))

(assert (= (and b!6839237 (not c!1273446)) b!6839234))

(assert (= (or b!6839243 b!6839234) bm!622928))

(assert (= (or b!6839241 bm!622928) bm!622927))

(assert (= (or b!6839238 bm!622927) bm!622926))

(assert (= (or b!6839238 b!6839243) bm!622929))

(assert (=> bm!622926 m!7582756))

(declare-fun m!7583384 () Bool)

(assert (=> bm!622926 m!7583384))

(declare-fun m!7583386 () Bool)

(assert (=> b!6839237 m!7583386))

(assert (=> bm!622929 m!7582756))

(declare-fun m!7583388 () Bool)

(assert (=> bm!622929 m!7583388))

(declare-fun m!7583390 () Bool)

(assert (=> d!2150881 m!7583390))

(assert (=> d!2150881 m!7582450))

(assert (=> d!2150881 m!7582762))

(assert (=> b!6837867 d!2150881))

(assert (=> b!6837867 d!2150829))

(assert (=> b!6837867 d!2150785))

(assert (=> d!2150561 d!2150587))

(declare-fun c!1273450 () Bool)

(declare-fun bm!622930 () Bool)

(declare-fun c!1273451 () Bool)

(declare-fun call!622935 () Bool)

(assert (=> bm!622930 (= call!622935 (validRegex!8391 (ite c!1273450 (reg!16984 (derivativeStep!5307 r!7292 (head!13697 s!2326))) (ite c!1273451 (regOne!33823 (derivativeStep!5307 r!7292 (head!13697 s!2326))) (regOne!33822 (derivativeStep!5307 r!7292 (head!13697 s!2326)))))))))

(declare-fun b!6839244 () Bool)

(declare-fun res!2792666 () Bool)

(declare-fun e!4124994 () Bool)

(assert (=> b!6839244 (=> res!2792666 e!4124994)))

(assert (=> b!6839244 (= res!2792666 (not ((_ is Concat!25500) (derivativeStep!5307 r!7292 (head!13697 s!2326)))))))

(declare-fun e!4124990 () Bool)

(assert (=> b!6839244 (= e!4124990 e!4124994)))

(declare-fun b!6839245 () Bool)

(declare-fun e!4124993 () Bool)

(declare-fun e!4124992 () Bool)

(assert (=> b!6839245 (= e!4124993 e!4124992)))

(declare-fun res!2792664 () Bool)

(assert (=> b!6839245 (= res!2792664 (not (nullable!6622 (reg!16984 (derivativeStep!5307 r!7292 (head!13697 s!2326))))))))

(assert (=> b!6839245 (=> (not res!2792664) (not e!4124992))))

(declare-fun b!6839246 () Bool)

(declare-fun e!4124988 () Bool)

(declare-fun call!622936 () Bool)

(assert (=> b!6839246 (= e!4124988 call!622936)))

(declare-fun bm!622931 () Bool)

(declare-fun call!622937 () Bool)

(assert (=> bm!622931 (= call!622937 call!622935)))

(declare-fun b!6839247 () Bool)

(assert (=> b!6839247 (= e!4124992 call!622935)))

(declare-fun bm!622932 () Bool)

(assert (=> bm!622932 (= call!622936 (validRegex!8391 (ite c!1273451 (regTwo!33823 (derivativeStep!5307 r!7292 (head!13697 s!2326))) (regTwo!33822 (derivativeStep!5307 r!7292 (head!13697 s!2326))))))))

(declare-fun b!6839248 () Bool)

(declare-fun e!4124989 () Bool)

(assert (=> b!6839248 (= e!4124989 call!622936)))

(declare-fun b!6839249 () Bool)

(assert (=> b!6839249 (= e!4124993 e!4124990)))

(assert (=> b!6839249 (= c!1273451 ((_ is Union!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(declare-fun b!6839250 () Bool)

(declare-fun e!4124991 () Bool)

(assert (=> b!6839250 (= e!4124991 e!4124993)))

(assert (=> b!6839250 (= c!1273450 ((_ is Star!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(declare-fun b!6839251 () Bool)

(assert (=> b!6839251 (= e!4124994 e!4124989)))

(declare-fun res!2792665 () Bool)

(assert (=> b!6839251 (=> (not res!2792665) (not e!4124989))))

(assert (=> b!6839251 (= res!2792665 call!622937)))

(declare-fun d!2150883 () Bool)

(declare-fun res!2792667 () Bool)

(assert (=> d!2150883 (=> res!2792667 e!4124991)))

(assert (=> d!2150883 (= res!2792667 ((_ is ElementMatch!16655) (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(assert (=> d!2150883 (= (validRegex!8391 (derivativeStep!5307 r!7292 (head!13697 s!2326))) e!4124991)))

(declare-fun b!6839252 () Bool)

(declare-fun res!2792668 () Bool)

(assert (=> b!6839252 (=> (not res!2792668) (not e!4124988))))

(assert (=> b!6839252 (= res!2792668 call!622937)))

(assert (=> b!6839252 (= e!4124990 e!4124988)))

(assert (= (and d!2150883 (not res!2792667)) b!6839250))

(assert (= (and b!6839250 c!1273450) b!6839245))

(assert (= (and b!6839250 (not c!1273450)) b!6839249))

(assert (= (and b!6839245 res!2792664) b!6839247))

(assert (= (and b!6839249 c!1273451) b!6839252))

(assert (= (and b!6839249 (not c!1273451)) b!6839244))

(assert (= (and b!6839252 res!2792668) b!6839246))

(assert (= (and b!6839244 (not res!2792666)) b!6839251))

(assert (= (and b!6839251 res!2792665) b!6839248))

(assert (= (or b!6839246 b!6839248) bm!622932))

(assert (= (or b!6839252 b!6839251) bm!622931))

(assert (= (or b!6839247 bm!622931) bm!622930))

(declare-fun m!7583392 () Bool)

(assert (=> bm!622930 m!7583392))

(declare-fun m!7583394 () Bool)

(assert (=> b!6839245 m!7583394))

(declare-fun m!7583396 () Bool)

(assert (=> bm!622932 m!7583396))

(assert (=> d!2150561 d!2150883))

(declare-fun d!2150885 () Bool)

(assert (=> d!2150885 (= (nullable!6622 (derivativeStep!5307 r!7292 (head!13697 s!2326))) (nullableFct!2516 (derivativeStep!5307 r!7292 (head!13697 s!2326))))))

(declare-fun bs!1829063 () Bool)

(assert (= bs!1829063 d!2150885))

(assert (=> bs!1829063 m!7582450))

(declare-fun m!7583398 () Bool)

(assert (=> bs!1829063 m!7583398))

(assert (=> b!6837870 d!2150885))

(declare-fun d!2150887 () Bool)

(assert (=> d!2150887 (= (isUnion!1439 lt!2455111) ((_ is Union!16655) lt!2455111))))

(assert (=> b!6837947 d!2150887))

(declare-fun d!2150889 () Bool)

(declare-fun res!2792669 () Bool)

(declare-fun e!4124995 () Bool)

(assert (=> d!2150889 (=> res!2792669 e!4124995)))

(assert (=> d!2150889 (= res!2792669 ((_ is Nil!66140) (exprs!6539 setElem!46975)))))

(assert (=> d!2150889 (= (forall!15835 (exprs!6539 setElem!46975) lambda!386686) e!4124995)))

(declare-fun b!6839253 () Bool)

(declare-fun e!4124996 () Bool)

(assert (=> b!6839253 (= e!4124995 e!4124996)))

(declare-fun res!2792670 () Bool)

(assert (=> b!6839253 (=> (not res!2792670) (not e!4124996))))

(assert (=> b!6839253 (= res!2792670 (dynLambda!26428 lambda!386686 (h!72588 (exprs!6539 setElem!46975))))))

(declare-fun b!6839254 () Bool)

(assert (=> b!6839254 (= e!4124996 (forall!15835 (t!380007 (exprs!6539 setElem!46975)) lambda!386686))))

(assert (= (and d!2150889 (not res!2792669)) b!6839253))

(assert (= (and b!6839253 res!2792670) b!6839254))

(declare-fun b_lambda!257991 () Bool)

(assert (=> (not b_lambda!257991) (not b!6839253)))

(declare-fun m!7583400 () Bool)

(assert (=> b!6839253 m!7583400))

(declare-fun m!7583402 () Bool)

(assert (=> b!6839254 m!7583402))

(assert (=> d!2150577 d!2150889))

(declare-fun d!2150891 () Bool)

(declare-fun res!2792671 () Bool)

(declare-fun e!4124997 () Bool)

(assert (=> d!2150891 (=> res!2792671 e!4124997)))

(assert (=> d!2150891 (= res!2792671 ((_ is Nil!66140) (exprs!6539 (h!72589 (t!380008 zl!343)))))))

(assert (=> d!2150891 (= (forall!15835 (exprs!6539 (h!72589 (t!380008 zl!343))) lambda!386687) e!4124997)))

(declare-fun b!6839255 () Bool)

(declare-fun e!4124998 () Bool)

(assert (=> b!6839255 (= e!4124997 e!4124998)))

(declare-fun res!2792672 () Bool)

(assert (=> b!6839255 (=> (not res!2792672) (not e!4124998))))

(assert (=> b!6839255 (= res!2792672 (dynLambda!26428 lambda!386687 (h!72588 (exprs!6539 (h!72589 (t!380008 zl!343))))))))

(declare-fun b!6839256 () Bool)

(assert (=> b!6839256 (= e!4124998 (forall!15835 (t!380007 (exprs!6539 (h!72589 (t!380008 zl!343)))) lambda!386687))))

(assert (= (and d!2150891 (not res!2792671)) b!6839255))

(assert (= (and b!6839255 res!2792672) b!6839256))

(declare-fun b_lambda!257993 () Bool)

(assert (=> (not b_lambda!257993) (not b!6839255)))

(declare-fun m!7583404 () Bool)

(assert (=> b!6839255 m!7583404))

(declare-fun m!7583406 () Bool)

(assert (=> b!6839256 m!7583406))

(assert (=> d!2150589 d!2150891))

(declare-fun bs!1829064 () Bool)

(declare-fun d!2150893 () Bool)

(assert (= bs!1829064 (and d!2150893 d!2150549)))

(declare-fun lambda!386715 () Int)

(assert (=> bs!1829064 (= lambda!386715 lambda!386679)))

(declare-fun bs!1829065 () Bool)

(assert (= bs!1829065 (and d!2150893 d!2150855)))

(assert (=> bs!1829065 (= lambda!386715 lambda!386713)))

(declare-fun bs!1829066 () Bool)

(assert (= bs!1829066 (and d!2150893 d!2150877)))

(assert (=> bs!1829066 (= lambda!386715 lambda!386714)))

(declare-fun bs!1829067 () Bool)

(assert (= bs!1829067 (and d!2150893 d!2150575)))

(assert (=> bs!1829067 (= lambda!386715 lambda!386685)))

(declare-fun bs!1829068 () Bool)

(assert (= bs!1829068 (and d!2150893 d!2150573)))

(assert (=> bs!1829068 (= lambda!386715 lambda!386682)))

(declare-fun bs!1829069 () Bool)

(assert (= bs!1829069 (and d!2150893 d!2150825)))

(assert (=> bs!1829069 (= lambda!386715 lambda!386709)))

(declare-fun bs!1829070 () Bool)

(assert (= bs!1829070 (and d!2150893 d!2150577)))

(assert (=> bs!1829070 (= lambda!386715 lambda!386686)))

(declare-fun bs!1829071 () Bool)

(assert (= bs!1829071 (and d!2150893 d!2150449)))

(assert (=> bs!1829071 (= lambda!386715 lambda!386657)))

(declare-fun bs!1829072 () Bool)

(assert (= bs!1829072 (and d!2150893 d!2150589)))

(assert (=> bs!1829072 (= lambda!386715 lambda!386687)))

(declare-fun bs!1829073 () Bool)

(assert (= bs!1829073 (and d!2150893 d!2150451)))

(assert (=> bs!1829073 (= lambda!386715 lambda!386658)))

(declare-fun bs!1829074 () Bool)

(assert (= bs!1829074 (and d!2150893 d!2150835)))

(assert (=> bs!1829074 (= lambda!386715 lambda!386710)))

(declare-fun bs!1829075 () Bool)

(assert (= bs!1829075 (and d!2150893 d!2150455)))

(assert (=> bs!1829075 (= lambda!386715 lambda!386661)))

(declare-fun bs!1829076 () Bool)

(assert (= bs!1829076 (and d!2150893 d!2150779)))

(assert (=> bs!1829076 (= lambda!386715 lambda!386704)))

(assert (=> d!2150893 (= (inv!84884 (h!72589 res!2792352)) (forall!15835 (exprs!6539 (h!72589 res!2792352)) lambda!386715))))

(declare-fun bs!1829077 () Bool)

(assert (= bs!1829077 d!2150893))

(declare-fun m!7583408 () Bool)

(assert (=> bs!1829077 m!7583408))

(assert (=> b!6837864 d!2150893))

(assert (=> bs!1828767 d!2150771))

(declare-fun d!2150895 () Bool)

(assert (=> d!2150895 (= (isEmptyLang!2009 lt!2455111) ((_ is EmptyLang!16655) lt!2455111))))

(assert (=> b!6837949 d!2150895))

(declare-fun b!6839257 () Bool)

(declare-fun e!4124999 () Bool)

(assert (=> b!6839257 (= e!4124999 tp_is_empty!42563)))

(declare-fun b!6839258 () Bool)

(declare-fun tp!1872121 () Bool)

(declare-fun tp!1872123 () Bool)

(assert (=> b!6839258 (= e!4124999 (and tp!1872121 tp!1872123))))

(assert (=> b!6838017 (= tp!1871297 e!4124999)))

(declare-fun b!6839259 () Bool)

(declare-fun tp!1872124 () Bool)

(assert (=> b!6839259 (= e!4124999 tp!1872124)))

(declare-fun b!6839260 () Bool)

(declare-fun tp!1872122 () Bool)

(declare-fun tp!1872120 () Bool)

(assert (=> b!6839260 (= e!4124999 (and tp!1872122 tp!1872120))))

(assert (= (and b!6838017 ((_ is ElementMatch!16655) (regOne!33822 (reg!16984 (regOne!33823 r!7292))))) b!6839257))

(assert (= (and b!6838017 ((_ is Concat!25500) (regOne!33822 (reg!16984 (regOne!33823 r!7292))))) b!6839258))

(assert (= (and b!6838017 ((_ is Star!16655) (regOne!33822 (reg!16984 (regOne!33823 r!7292))))) b!6839259))

(assert (= (and b!6838017 ((_ is Union!16655) (regOne!33822 (reg!16984 (regOne!33823 r!7292))))) b!6839260))

(declare-fun b!6839261 () Bool)

(declare-fun e!4125000 () Bool)

(assert (=> b!6839261 (= e!4125000 tp_is_empty!42563)))

(declare-fun b!6839262 () Bool)

(declare-fun tp!1872126 () Bool)

(declare-fun tp!1872128 () Bool)

(assert (=> b!6839262 (= e!4125000 (and tp!1872126 tp!1872128))))

(assert (=> b!6838017 (= tp!1871299 e!4125000)))

(declare-fun b!6839263 () Bool)

(declare-fun tp!1872129 () Bool)

(assert (=> b!6839263 (= e!4125000 tp!1872129)))

(declare-fun b!6839264 () Bool)

(declare-fun tp!1872127 () Bool)

(declare-fun tp!1872125 () Bool)

(assert (=> b!6839264 (= e!4125000 (and tp!1872127 tp!1872125))))

(assert (= (and b!6838017 ((_ is ElementMatch!16655) (regTwo!33822 (reg!16984 (regOne!33823 r!7292))))) b!6839261))

(assert (= (and b!6838017 ((_ is Concat!25500) (regTwo!33822 (reg!16984 (regOne!33823 r!7292))))) b!6839262))

(assert (= (and b!6838017 ((_ is Star!16655) (regTwo!33822 (reg!16984 (regOne!33823 r!7292))))) b!6839263))

(assert (= (and b!6838017 ((_ is Union!16655) (regTwo!33822 (reg!16984 (regOne!33823 r!7292))))) b!6839264))

(declare-fun b!6839265 () Bool)

(declare-fun e!4125001 () Bool)

(declare-fun tp!1872130 () Bool)

(declare-fun tp!1872131 () Bool)

(assert (=> b!6839265 (= e!4125001 (and tp!1872130 tp!1872131))))

(assert (=> b!6838064 (= tp!1871357 e!4125001)))

(assert (= (and b!6838064 ((_ is Cons!66140) (exprs!6539 (h!72589 (t!380008 (t!380008 zl!343)))))) b!6839265))

(declare-fun b!6839266 () Bool)

(declare-fun e!4125002 () Bool)

(assert (=> b!6839266 (= e!4125002 tp_is_empty!42563)))

(declare-fun b!6839267 () Bool)

(declare-fun tp!1872133 () Bool)

(declare-fun tp!1872135 () Bool)

(assert (=> b!6839267 (= e!4125002 (and tp!1872133 tp!1872135))))

(assert (=> b!6838070 (= tp!1871365 e!4125002)))

(declare-fun b!6839268 () Bool)

(declare-fun tp!1872136 () Bool)

(assert (=> b!6839268 (= e!4125002 tp!1872136)))

(declare-fun b!6839269 () Bool)

(declare-fun tp!1872134 () Bool)

(declare-fun tp!1872132 () Bool)

(assert (=> b!6839269 (= e!4125002 (and tp!1872134 tp!1872132))))

(assert (= (and b!6838070 ((_ is ElementMatch!16655) (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343)))))) b!6839266))

(assert (= (and b!6838070 ((_ is Concat!25500) (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343)))))) b!6839267))

(assert (= (and b!6838070 ((_ is Star!16655) (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343)))))) b!6839268))

(assert (= (and b!6838070 ((_ is Union!16655) (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343)))))) b!6839269))

(declare-fun b!6839270 () Bool)

(declare-fun e!4125003 () Bool)

(declare-fun tp!1872137 () Bool)

(declare-fun tp!1872138 () Bool)

(assert (=> b!6839270 (= e!4125003 (and tp!1872137 tp!1872138))))

(assert (=> b!6838070 (= tp!1871366 e!4125003)))

(assert (= (and b!6838070 ((_ is Cons!66140) (t!380007 (t!380007 (exprs!6539 (h!72589 zl!343)))))) b!6839270))

(declare-fun b!6839271 () Bool)

(declare-fun e!4125004 () Bool)

(declare-fun tp!1872139 () Bool)

(declare-fun tp!1872140 () Bool)

(assert (=> b!6839271 (= e!4125004 (and tp!1872139 tp!1872140))))

(assert (=> b!6837865 (= tp!1871255 e!4125004)))

(assert (= (and b!6837865 ((_ is Cons!66140) (exprs!6539 (h!72589 res!2792352)))) b!6839271))

(declare-fun b!6839272 () Bool)

(declare-fun e!4125005 () Bool)

(assert (=> b!6839272 (= e!4125005 tp_is_empty!42563)))

(declare-fun b!6839273 () Bool)

(declare-fun tp!1872142 () Bool)

(declare-fun tp!1872144 () Bool)

(assert (=> b!6839273 (= e!4125005 (and tp!1872142 tp!1872144))))

(assert (=> b!6838019 (= tp!1871298 e!4125005)))

(declare-fun b!6839274 () Bool)

(declare-fun tp!1872145 () Bool)

(assert (=> b!6839274 (= e!4125005 tp!1872145)))

(declare-fun b!6839275 () Bool)

(declare-fun tp!1872143 () Bool)

(declare-fun tp!1872141 () Bool)

(assert (=> b!6839275 (= e!4125005 (and tp!1872143 tp!1872141))))

(assert (= (and b!6838019 ((_ is ElementMatch!16655) (regOne!33823 (reg!16984 (regOne!33823 r!7292))))) b!6839272))

(assert (= (and b!6838019 ((_ is Concat!25500) (regOne!33823 (reg!16984 (regOne!33823 r!7292))))) b!6839273))

(assert (= (and b!6838019 ((_ is Star!16655) (regOne!33823 (reg!16984 (regOne!33823 r!7292))))) b!6839274))

(assert (= (and b!6838019 ((_ is Union!16655) (regOne!33823 (reg!16984 (regOne!33823 r!7292))))) b!6839275))

(declare-fun b!6839276 () Bool)

(declare-fun e!4125006 () Bool)

(assert (=> b!6839276 (= e!4125006 tp_is_empty!42563)))

(declare-fun b!6839277 () Bool)

(declare-fun tp!1872147 () Bool)

(declare-fun tp!1872149 () Bool)

(assert (=> b!6839277 (= e!4125006 (and tp!1872147 tp!1872149))))

(assert (=> b!6838019 (= tp!1871296 e!4125006)))

(declare-fun b!6839278 () Bool)

(declare-fun tp!1872150 () Bool)

(assert (=> b!6839278 (= e!4125006 tp!1872150)))

(declare-fun b!6839279 () Bool)

(declare-fun tp!1872148 () Bool)

(declare-fun tp!1872146 () Bool)

(assert (=> b!6839279 (= e!4125006 (and tp!1872148 tp!1872146))))

(assert (= (and b!6838019 ((_ is ElementMatch!16655) (regTwo!33823 (reg!16984 (regOne!33823 r!7292))))) b!6839276))

(assert (= (and b!6838019 ((_ is Concat!25500) (regTwo!33823 (reg!16984 (regOne!33823 r!7292))))) b!6839277))

(assert (= (and b!6838019 ((_ is Star!16655) (regTwo!33823 (reg!16984 (regOne!33823 r!7292))))) b!6839278))

(assert (= (and b!6838019 ((_ is Union!16655) (regTwo!33823 (reg!16984 (regOne!33823 r!7292))))) b!6839279))

(declare-fun b!6839280 () Bool)

(declare-fun e!4125007 () Bool)

(assert (=> b!6839280 (= e!4125007 tp_is_empty!42563)))

(declare-fun b!6839281 () Bool)

(declare-fun tp!1872152 () Bool)

(declare-fun tp!1872154 () Bool)

(assert (=> b!6839281 (= e!4125007 (and tp!1872152 tp!1872154))))

(assert (=> b!6838010 (= tp!1871290 e!4125007)))

(declare-fun b!6839282 () Bool)

(declare-fun tp!1872155 () Bool)

(assert (=> b!6839282 (= e!4125007 tp!1872155)))

(declare-fun b!6839283 () Bool)

(declare-fun tp!1872153 () Bool)

(declare-fun tp!1872151 () Bool)

(assert (=> b!6839283 (= e!4125007 (and tp!1872153 tp!1872151))))

(assert (= (and b!6838010 ((_ is ElementMatch!16655) (reg!16984 (regOne!33823 (regOne!33823 r!7292))))) b!6839280))

(assert (= (and b!6838010 ((_ is Concat!25500) (reg!16984 (regOne!33823 (regOne!33823 r!7292))))) b!6839281))

(assert (= (and b!6838010 ((_ is Star!16655) (reg!16984 (regOne!33823 (regOne!33823 r!7292))))) b!6839282))

(assert (= (and b!6838010 ((_ is Union!16655) (reg!16984 (regOne!33823 (regOne!33823 r!7292))))) b!6839283))

(declare-fun b!6839284 () Bool)

(declare-fun e!4125008 () Bool)

(assert (=> b!6839284 (= e!4125008 tp_is_empty!42563)))

(declare-fun b!6839285 () Bool)

(declare-fun tp!1872157 () Bool)

(declare-fun tp!1872159 () Bool)

(assert (=> b!6839285 (= e!4125008 (and tp!1872157 tp!1872159))))

(assert (=> b!6838001 (= tp!1871277 e!4125008)))

(declare-fun b!6839286 () Bool)

(declare-fun tp!1872160 () Bool)

(assert (=> b!6839286 (= e!4125008 tp!1872160)))

(declare-fun b!6839287 () Bool)

(declare-fun tp!1872158 () Bool)

(declare-fun tp!1872156 () Bool)

(assert (=> b!6839287 (= e!4125008 (and tp!1872158 tp!1872156))))

(assert (= (and b!6838001 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33822 (reg!16984 r!7292))))) b!6839284))

(assert (= (and b!6838001 ((_ is Concat!25500) (regOne!33822 (regOne!33822 (reg!16984 r!7292))))) b!6839285))

(assert (= (and b!6838001 ((_ is Star!16655) (regOne!33822 (regOne!33822 (reg!16984 r!7292))))) b!6839286))

(assert (= (and b!6838001 ((_ is Union!16655) (regOne!33822 (regOne!33822 (reg!16984 r!7292))))) b!6839287))

(declare-fun b!6839288 () Bool)

(declare-fun e!4125009 () Bool)

(assert (=> b!6839288 (= e!4125009 tp_is_empty!42563)))

(declare-fun b!6839289 () Bool)

(declare-fun tp!1872162 () Bool)

(declare-fun tp!1872164 () Bool)

(assert (=> b!6839289 (= e!4125009 (and tp!1872162 tp!1872164))))

(assert (=> b!6838001 (= tp!1871279 e!4125009)))

(declare-fun b!6839290 () Bool)

(declare-fun tp!1872165 () Bool)

(assert (=> b!6839290 (= e!4125009 tp!1872165)))

(declare-fun b!6839291 () Bool)

(declare-fun tp!1872163 () Bool)

(declare-fun tp!1872161 () Bool)

(assert (=> b!6839291 (= e!4125009 (and tp!1872163 tp!1872161))))

(assert (= (and b!6838001 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33822 (reg!16984 r!7292))))) b!6839288))

(assert (= (and b!6838001 ((_ is Concat!25500) (regTwo!33822 (regOne!33822 (reg!16984 r!7292))))) b!6839289))

(assert (= (and b!6838001 ((_ is Star!16655) (regTwo!33822 (regOne!33822 (reg!16984 r!7292))))) b!6839290))

(assert (= (and b!6838001 ((_ is Union!16655) (regTwo!33822 (regOne!33822 (reg!16984 r!7292))))) b!6839291))

(declare-fun b!6839292 () Bool)

(declare-fun e!4125010 () Bool)

(assert (=> b!6839292 (= e!4125010 tp_is_empty!42563)))

(declare-fun b!6839293 () Bool)

(declare-fun tp!1872167 () Bool)

(declare-fun tp!1872169 () Bool)

(assert (=> b!6839293 (= e!4125010 (and tp!1872167 tp!1872169))))

(assert (=> b!6838049 (= tp!1871337 e!4125010)))

(declare-fun b!6839294 () Bool)

(declare-fun tp!1872170 () Bool)

(assert (=> b!6839294 (= e!4125010 tp!1872170)))

(declare-fun b!6839295 () Bool)

(declare-fun tp!1872168 () Bool)

(declare-fun tp!1872166 () Bool)

(assert (=> b!6839295 (= e!4125010 (and tp!1872168 tp!1872166))))

(assert (= (and b!6838049 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33823 (regOne!33822 r!7292))))) b!6839292))

(assert (= (and b!6838049 ((_ is Concat!25500) (regOne!33823 (regTwo!33823 (regOne!33822 r!7292))))) b!6839293))

(assert (= (and b!6838049 ((_ is Star!16655) (regOne!33823 (regTwo!33823 (regOne!33822 r!7292))))) b!6839294))

(assert (= (and b!6838049 ((_ is Union!16655) (regOne!33823 (regTwo!33823 (regOne!33822 r!7292))))) b!6839295))

(declare-fun b!6839296 () Bool)

(declare-fun e!4125011 () Bool)

(assert (=> b!6839296 (= e!4125011 tp_is_empty!42563)))

(declare-fun b!6839297 () Bool)

(declare-fun tp!1872172 () Bool)

(declare-fun tp!1872174 () Bool)

(assert (=> b!6839297 (= e!4125011 (and tp!1872172 tp!1872174))))

(assert (=> b!6838049 (= tp!1871335 e!4125011)))

(declare-fun b!6839298 () Bool)

(declare-fun tp!1872175 () Bool)

(assert (=> b!6839298 (= e!4125011 tp!1872175)))

(declare-fun b!6839299 () Bool)

(declare-fun tp!1872173 () Bool)

(declare-fun tp!1872171 () Bool)

(assert (=> b!6839299 (= e!4125011 (and tp!1872173 tp!1872171))))

(assert (= (and b!6838049 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33823 (regOne!33822 r!7292))))) b!6839296))

(assert (= (and b!6838049 ((_ is Concat!25500) (regTwo!33823 (regTwo!33823 (regOne!33822 r!7292))))) b!6839297))

(assert (= (and b!6838049 ((_ is Star!16655) (regTwo!33823 (regTwo!33823 (regOne!33822 r!7292))))) b!6839298))

(assert (= (and b!6838049 ((_ is Union!16655) (regTwo!33823 (regTwo!33823 (regOne!33822 r!7292))))) b!6839299))

(declare-fun b!6839300 () Bool)

(declare-fun e!4125012 () Bool)

(assert (=> b!6839300 (= e!4125012 tp_is_empty!42563)))

(declare-fun b!6839301 () Bool)

(declare-fun tp!1872177 () Bool)

(declare-fun tp!1872179 () Bool)

(assert (=> b!6839301 (= e!4125012 (and tp!1872177 tp!1872179))))

(assert (=> b!6838056 (= tp!1871349 e!4125012)))

(declare-fun b!6839302 () Bool)

(declare-fun tp!1872180 () Bool)

(assert (=> b!6839302 (= e!4125012 tp!1872180)))

(declare-fun b!6839303 () Bool)

(declare-fun tp!1872178 () Bool)

(declare-fun tp!1872176 () Bool)

(assert (=> b!6839303 (= e!4125012 (and tp!1872178 tp!1872176))))

(assert (= (and b!6838056 ((_ is ElementMatch!16655) (reg!16984 (regOne!33822 (regTwo!33823 r!7292))))) b!6839300))

(assert (= (and b!6838056 ((_ is Concat!25500) (reg!16984 (regOne!33822 (regTwo!33823 r!7292))))) b!6839301))

(assert (= (and b!6838056 ((_ is Star!16655) (reg!16984 (regOne!33822 (regTwo!33823 r!7292))))) b!6839302))

(assert (= (and b!6838056 ((_ is Union!16655) (reg!16984 (regOne!33822 (regTwo!33823 r!7292))))) b!6839303))

(declare-fun b!6839304 () Bool)

(declare-fun e!4125013 () Bool)

(assert (=> b!6839304 (= e!4125013 tp_is_empty!42563)))

(declare-fun b!6839305 () Bool)

(declare-fun tp!1872182 () Bool)

(declare-fun tp!1872184 () Bool)

(assert (=> b!6839305 (= e!4125013 (and tp!1872182 tp!1872184))))

(assert (=> b!6838047 (= tp!1871336 e!4125013)))

(declare-fun b!6839306 () Bool)

(declare-fun tp!1872185 () Bool)

(assert (=> b!6839306 (= e!4125013 tp!1872185)))

(declare-fun b!6839307 () Bool)

(declare-fun tp!1872183 () Bool)

(declare-fun tp!1872181 () Bool)

(assert (=> b!6839307 (= e!4125013 (and tp!1872183 tp!1872181))))

(assert (= (and b!6838047 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33823 (regOne!33822 r!7292))))) b!6839304))

(assert (= (and b!6838047 ((_ is Concat!25500) (regOne!33822 (regTwo!33823 (regOne!33822 r!7292))))) b!6839305))

(assert (= (and b!6838047 ((_ is Star!16655) (regOne!33822 (regTwo!33823 (regOne!33822 r!7292))))) b!6839306))

(assert (= (and b!6838047 ((_ is Union!16655) (regOne!33822 (regTwo!33823 (regOne!33822 r!7292))))) b!6839307))

(declare-fun b!6839308 () Bool)

(declare-fun e!4125014 () Bool)

(assert (=> b!6839308 (= e!4125014 tp_is_empty!42563)))

(declare-fun b!6839309 () Bool)

(declare-fun tp!1872187 () Bool)

(declare-fun tp!1872189 () Bool)

(assert (=> b!6839309 (= e!4125014 (and tp!1872187 tp!1872189))))

(assert (=> b!6838047 (= tp!1871338 e!4125014)))

(declare-fun b!6839310 () Bool)

(declare-fun tp!1872190 () Bool)

(assert (=> b!6839310 (= e!4125014 tp!1872190)))

(declare-fun b!6839311 () Bool)

(declare-fun tp!1872188 () Bool)

(declare-fun tp!1872186 () Bool)

(assert (=> b!6839311 (= e!4125014 (and tp!1872188 tp!1872186))))

(assert (= (and b!6838047 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33823 (regOne!33822 r!7292))))) b!6839308))

(assert (= (and b!6838047 ((_ is Concat!25500) (regTwo!33822 (regTwo!33823 (regOne!33822 r!7292))))) b!6839309))

(assert (= (and b!6838047 ((_ is Star!16655) (regTwo!33822 (regTwo!33823 (regOne!33822 r!7292))))) b!6839310))

(assert (= (and b!6838047 ((_ is Union!16655) (regTwo!33822 (regTwo!33823 (regOne!33822 r!7292))))) b!6839311))

(declare-fun b!6839312 () Bool)

(declare-fun e!4125015 () Bool)

(assert (=> b!6839312 (= e!4125015 tp_is_empty!42563)))

(declare-fun b!6839313 () Bool)

(declare-fun tp!1872192 () Bool)

(declare-fun tp!1872194 () Bool)

(assert (=> b!6839313 (= e!4125015 (and tp!1872192 tp!1872194))))

(assert (=> b!6838003 (= tp!1871278 e!4125015)))

(declare-fun b!6839314 () Bool)

(declare-fun tp!1872195 () Bool)

(assert (=> b!6839314 (= e!4125015 tp!1872195)))

(declare-fun b!6839315 () Bool)

(declare-fun tp!1872193 () Bool)

(declare-fun tp!1872191 () Bool)

(assert (=> b!6839315 (= e!4125015 (and tp!1872193 tp!1872191))))

(assert (= (and b!6838003 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33822 (reg!16984 r!7292))))) b!6839312))

(assert (= (and b!6838003 ((_ is Concat!25500) (regOne!33823 (regOne!33822 (reg!16984 r!7292))))) b!6839313))

(assert (= (and b!6838003 ((_ is Star!16655) (regOne!33823 (regOne!33822 (reg!16984 r!7292))))) b!6839314))

(assert (= (and b!6838003 ((_ is Union!16655) (regOne!33823 (regOne!33822 (reg!16984 r!7292))))) b!6839315))

(declare-fun b!6839316 () Bool)

(declare-fun e!4125016 () Bool)

(assert (=> b!6839316 (= e!4125016 tp_is_empty!42563)))

(declare-fun b!6839317 () Bool)

(declare-fun tp!1872197 () Bool)

(declare-fun tp!1872199 () Bool)

(assert (=> b!6839317 (= e!4125016 (and tp!1872197 tp!1872199))))

(assert (=> b!6838003 (= tp!1871276 e!4125016)))

(declare-fun b!6839318 () Bool)

(declare-fun tp!1872200 () Bool)

(assert (=> b!6839318 (= e!4125016 tp!1872200)))

(declare-fun b!6839319 () Bool)

(declare-fun tp!1872198 () Bool)

(declare-fun tp!1872196 () Bool)

(assert (=> b!6839319 (= e!4125016 (and tp!1872198 tp!1872196))))

(assert (= (and b!6838003 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33822 (reg!16984 r!7292))))) b!6839316))

(assert (= (and b!6838003 ((_ is Concat!25500) (regTwo!33823 (regOne!33822 (reg!16984 r!7292))))) b!6839317))

(assert (= (and b!6838003 ((_ is Star!16655) (regTwo!33823 (regOne!33822 (reg!16984 r!7292))))) b!6839318))

(assert (= (and b!6838003 ((_ is Union!16655) (regTwo!33823 (regOne!33822 (reg!16984 r!7292))))) b!6839319))

(declare-fun b!6839320 () Bool)

(declare-fun e!4125017 () Bool)

(assert (=> b!6839320 (= e!4125017 tp_is_empty!42563)))

(declare-fun b!6839321 () Bool)

(declare-fun tp!1872202 () Bool)

(declare-fun tp!1872204 () Bool)

(assert (=> b!6839321 (= e!4125017 (and tp!1872202 tp!1872204))))

(assert (=> b!6837994 (= tp!1871270 e!4125017)))

(declare-fun b!6839322 () Bool)

(declare-fun tp!1872205 () Bool)

(assert (=> b!6839322 (= e!4125017 tp!1872205)))

(declare-fun b!6839323 () Bool)

(declare-fun tp!1872203 () Bool)

(declare-fun tp!1872201 () Bool)

(assert (=> b!6839323 (= e!4125017 (and tp!1872203 tp!1872201))))

(assert (= (and b!6837994 ((_ is ElementMatch!16655) (reg!16984 (regOne!33822 (regOne!33823 r!7292))))) b!6839320))

(assert (= (and b!6837994 ((_ is Concat!25500) (reg!16984 (regOne!33822 (regOne!33823 r!7292))))) b!6839321))

(assert (= (and b!6837994 ((_ is Star!16655) (reg!16984 (regOne!33822 (regOne!33823 r!7292))))) b!6839322))

(assert (= (and b!6837994 ((_ is Union!16655) (reg!16984 (regOne!33822 (regOne!33823 r!7292))))) b!6839323))

(declare-fun b!6839324 () Bool)

(declare-fun e!4125018 () Bool)

(assert (=> b!6839324 (= e!4125018 tp_is_empty!42563)))

(declare-fun b!6839325 () Bool)

(declare-fun tp!1872207 () Bool)

(declare-fun tp!1872209 () Bool)

(assert (=> b!6839325 (= e!4125018 (and tp!1872207 tp!1872209))))

(assert (=> b!6838090 (= tp!1871389 e!4125018)))

(declare-fun b!6839326 () Bool)

(declare-fun tp!1872210 () Bool)

(assert (=> b!6839326 (= e!4125018 tp!1872210)))

(declare-fun b!6839327 () Bool)

(declare-fun tp!1872208 () Bool)

(declare-fun tp!1872206 () Bool)

(assert (=> b!6839327 (= e!4125018 (and tp!1872208 tp!1872206))))

(assert (= (and b!6838090 ((_ is ElementMatch!16655) (regOne!33823 (h!72588 (exprs!6539 setElem!46969))))) b!6839324))

(assert (= (and b!6838090 ((_ is Concat!25500) (regOne!33823 (h!72588 (exprs!6539 setElem!46969))))) b!6839325))

(assert (= (and b!6838090 ((_ is Star!16655) (regOne!33823 (h!72588 (exprs!6539 setElem!46969))))) b!6839326))

(assert (= (and b!6838090 ((_ is Union!16655) (regOne!33823 (h!72588 (exprs!6539 setElem!46969))))) b!6839327))

(declare-fun b!6839328 () Bool)

(declare-fun e!4125019 () Bool)

(assert (=> b!6839328 (= e!4125019 tp_is_empty!42563)))

(declare-fun b!6839329 () Bool)

(declare-fun tp!1872212 () Bool)

(declare-fun tp!1872214 () Bool)

(assert (=> b!6839329 (= e!4125019 (and tp!1872212 tp!1872214))))

(assert (=> b!6838090 (= tp!1871387 e!4125019)))

(declare-fun b!6839330 () Bool)

(declare-fun tp!1872215 () Bool)

(assert (=> b!6839330 (= e!4125019 tp!1872215)))

(declare-fun b!6839331 () Bool)

(declare-fun tp!1872213 () Bool)

(declare-fun tp!1872211 () Bool)

(assert (=> b!6839331 (= e!4125019 (and tp!1872213 tp!1872211))))

(assert (= (and b!6838090 ((_ is ElementMatch!16655) (regTwo!33823 (h!72588 (exprs!6539 setElem!46969))))) b!6839328))

(assert (= (and b!6838090 ((_ is Concat!25500) (regTwo!33823 (h!72588 (exprs!6539 setElem!46969))))) b!6839329))

(assert (= (and b!6838090 ((_ is Star!16655) (regTwo!33823 (h!72588 (exprs!6539 setElem!46969))))) b!6839330))

(assert (= (and b!6838090 ((_ is Union!16655) (regTwo!33823 (h!72588 (exprs!6539 setElem!46969))))) b!6839331))

(declare-fun b!6839332 () Bool)

(declare-fun e!4125020 () Bool)

(assert (=> b!6839332 (= e!4125020 tp_is_empty!42563)))

(declare-fun b!6839333 () Bool)

(declare-fun tp!1872217 () Bool)

(declare-fun tp!1872219 () Bool)

(assert (=> b!6839333 (= e!4125020 (and tp!1872217 tp!1872219))))

(assert (=> b!6837985 (= tp!1871257 e!4125020)))

(declare-fun b!6839334 () Bool)

(declare-fun tp!1872220 () Bool)

(assert (=> b!6839334 (= e!4125020 tp!1872220)))

(declare-fun b!6839335 () Bool)

(declare-fun tp!1872218 () Bool)

(declare-fun tp!1872216 () Bool)

(assert (=> b!6839335 (= e!4125020 (and tp!1872218 tp!1872216))))

(assert (= (and b!6837985 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33823 (regTwo!33822 r!7292))))) b!6839332))

(assert (= (and b!6837985 ((_ is Concat!25500) (regOne!33822 (regOne!33823 (regTwo!33822 r!7292))))) b!6839333))

(assert (= (and b!6837985 ((_ is Star!16655) (regOne!33822 (regOne!33823 (regTwo!33822 r!7292))))) b!6839334))

(assert (= (and b!6837985 ((_ is Union!16655) (regOne!33822 (regOne!33823 (regTwo!33822 r!7292))))) b!6839335))

(declare-fun b!6839336 () Bool)

(declare-fun e!4125021 () Bool)

(assert (=> b!6839336 (= e!4125021 tp_is_empty!42563)))

(declare-fun b!6839337 () Bool)

(declare-fun tp!1872222 () Bool)

(declare-fun tp!1872224 () Bool)

(assert (=> b!6839337 (= e!4125021 (and tp!1872222 tp!1872224))))

(assert (=> b!6837985 (= tp!1871259 e!4125021)))

(declare-fun b!6839338 () Bool)

(declare-fun tp!1872225 () Bool)

(assert (=> b!6839338 (= e!4125021 tp!1872225)))

(declare-fun b!6839339 () Bool)

(declare-fun tp!1872223 () Bool)

(declare-fun tp!1872221 () Bool)

(assert (=> b!6839339 (= e!4125021 (and tp!1872223 tp!1872221))))

(assert (= (and b!6837985 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33823 (regTwo!33822 r!7292))))) b!6839336))

(assert (= (and b!6837985 ((_ is Concat!25500) (regTwo!33822 (regOne!33823 (regTwo!33822 r!7292))))) b!6839337))

(assert (= (and b!6837985 ((_ is Star!16655) (regTwo!33822 (regOne!33823 (regTwo!33822 r!7292))))) b!6839338))

(assert (= (and b!6837985 ((_ is Union!16655) (regTwo!33822 (regOne!33823 (regTwo!33822 r!7292))))) b!6839339))

(declare-fun b!6839340 () Bool)

(declare-fun e!4125022 () Bool)

(assert (=> b!6839340 (= e!4125022 tp_is_empty!42563)))

(declare-fun b!6839341 () Bool)

(declare-fun tp!1872227 () Bool)

(declare-fun tp!1872229 () Bool)

(assert (=> b!6839341 (= e!4125022 (and tp!1872227 tp!1872229))))

(assert (=> b!6838033 (= tp!1871317 e!4125022)))

(declare-fun b!6839342 () Bool)

(declare-fun tp!1872230 () Bool)

(assert (=> b!6839342 (= e!4125022 tp!1872230)))

(declare-fun b!6839343 () Bool)

(declare-fun tp!1872228 () Bool)

(declare-fun tp!1872226 () Bool)

(assert (=> b!6839343 (= e!4125022 (and tp!1872228 tp!1872226))))

(assert (= (and b!6838033 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33823 (reg!16984 r!7292))))) b!6839340))

(assert (= (and b!6838033 ((_ is Concat!25500) (regOne!33823 (regOne!33823 (reg!16984 r!7292))))) b!6839341))

(assert (= (and b!6838033 ((_ is Star!16655) (regOne!33823 (regOne!33823 (reg!16984 r!7292))))) b!6839342))

(assert (= (and b!6838033 ((_ is Union!16655) (regOne!33823 (regOne!33823 (reg!16984 r!7292))))) b!6839343))

(declare-fun b!6839344 () Bool)

(declare-fun e!4125023 () Bool)

(assert (=> b!6839344 (= e!4125023 tp_is_empty!42563)))

(declare-fun b!6839345 () Bool)

(declare-fun tp!1872232 () Bool)

(declare-fun tp!1872234 () Bool)

(assert (=> b!6839345 (= e!4125023 (and tp!1872232 tp!1872234))))

(assert (=> b!6838033 (= tp!1871315 e!4125023)))

(declare-fun b!6839346 () Bool)

(declare-fun tp!1872235 () Bool)

(assert (=> b!6839346 (= e!4125023 tp!1872235)))

(declare-fun b!6839347 () Bool)

(declare-fun tp!1872233 () Bool)

(declare-fun tp!1872231 () Bool)

(assert (=> b!6839347 (= e!4125023 (and tp!1872233 tp!1872231))))

(assert (= (and b!6838033 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33823 (reg!16984 r!7292))))) b!6839344))

(assert (= (and b!6838033 ((_ is Concat!25500) (regTwo!33823 (regOne!33823 (reg!16984 r!7292))))) b!6839345))

(assert (= (and b!6838033 ((_ is Star!16655) (regTwo!33823 (regOne!33823 (reg!16984 r!7292))))) b!6839346))

(assert (= (and b!6838033 ((_ is Union!16655) (regTwo!33823 (regOne!33823 (reg!16984 r!7292))))) b!6839347))

(declare-fun b!6839348 () Bool)

(declare-fun e!4125024 () Bool)

(assert (=> b!6839348 (= e!4125024 tp_is_empty!42563)))

(declare-fun b!6839349 () Bool)

(declare-fun tp!1872237 () Bool)

(declare-fun tp!1872239 () Bool)

(assert (=> b!6839349 (= e!4125024 (and tp!1872237 tp!1872239))))

(assert (=> b!6838081 (= tp!1871381 e!4125024)))

(declare-fun b!6839350 () Bool)

(declare-fun tp!1872240 () Bool)

(assert (=> b!6839350 (= e!4125024 tp!1872240)))

(declare-fun b!6839351 () Bool)

(declare-fun tp!1872238 () Bool)

(declare-fun tp!1872236 () Bool)

(assert (=> b!6839351 (= e!4125024 (and tp!1872238 tp!1872236))))

(assert (= (and b!6838081 ((_ is ElementMatch!16655) (reg!16984 (reg!16984 (regTwo!33823 r!7292))))) b!6839348))

(assert (= (and b!6838081 ((_ is Concat!25500) (reg!16984 (reg!16984 (regTwo!33823 r!7292))))) b!6839349))

(assert (= (and b!6838081 ((_ is Star!16655) (reg!16984 (reg!16984 (regTwo!33823 r!7292))))) b!6839350))

(assert (= (and b!6838081 ((_ is Union!16655) (reg!16984 (reg!16984 (regTwo!33823 r!7292))))) b!6839351))

(declare-fun b!6839352 () Bool)

(declare-fun e!4125025 () Bool)

(assert (=> b!6839352 (= e!4125025 tp_is_empty!42563)))

(declare-fun b!6839353 () Bool)

(declare-fun tp!1872242 () Bool)

(declare-fun tp!1872244 () Bool)

(assert (=> b!6839353 (= e!4125025 (and tp!1872242 tp!1872244))))

(assert (=> b!6838040 (= tp!1871329 e!4125025)))

(declare-fun b!6839354 () Bool)

(declare-fun tp!1872245 () Bool)

(assert (=> b!6839354 (= e!4125025 tp!1872245)))

(declare-fun b!6839355 () Bool)

(declare-fun tp!1872243 () Bool)

(declare-fun tp!1872241 () Bool)

(assert (=> b!6839355 (= e!4125025 (and tp!1872243 tp!1872241))))

(assert (= (and b!6838040 ((_ is ElementMatch!16655) (reg!16984 (reg!16984 (reg!16984 r!7292))))) b!6839352))

(assert (= (and b!6838040 ((_ is Concat!25500) (reg!16984 (reg!16984 (reg!16984 r!7292))))) b!6839353))

(assert (= (and b!6838040 ((_ is Star!16655) (reg!16984 (reg!16984 (reg!16984 r!7292))))) b!6839354))

(assert (= (and b!6838040 ((_ is Union!16655) (reg!16984 (reg!16984 (reg!16984 r!7292))))) b!6839355))

(declare-fun b!6839356 () Bool)

(declare-fun e!4125026 () Bool)

(assert (=> b!6839356 (= e!4125026 tp_is_empty!42563)))

(declare-fun b!6839357 () Bool)

(declare-fun tp!1872247 () Bool)

(declare-fun tp!1872249 () Bool)

(assert (=> b!6839357 (= e!4125026 (and tp!1872247 tp!1872249))))

(assert (=> b!6838088 (= tp!1871388 e!4125026)))

(declare-fun b!6839358 () Bool)

(declare-fun tp!1872250 () Bool)

(assert (=> b!6839358 (= e!4125026 tp!1872250)))

(declare-fun b!6839359 () Bool)

(declare-fun tp!1872248 () Bool)

(declare-fun tp!1872246 () Bool)

(assert (=> b!6839359 (= e!4125026 (and tp!1872248 tp!1872246))))

(assert (= (and b!6838088 ((_ is ElementMatch!16655) (regOne!33822 (h!72588 (exprs!6539 setElem!46969))))) b!6839356))

(assert (= (and b!6838088 ((_ is Concat!25500) (regOne!33822 (h!72588 (exprs!6539 setElem!46969))))) b!6839357))

(assert (= (and b!6838088 ((_ is Star!16655) (regOne!33822 (h!72588 (exprs!6539 setElem!46969))))) b!6839358))

(assert (= (and b!6838088 ((_ is Union!16655) (regOne!33822 (h!72588 (exprs!6539 setElem!46969))))) b!6839359))

(declare-fun b!6839360 () Bool)

(declare-fun e!4125027 () Bool)

(assert (=> b!6839360 (= e!4125027 tp_is_empty!42563)))

(declare-fun b!6839361 () Bool)

(declare-fun tp!1872252 () Bool)

(declare-fun tp!1872254 () Bool)

(assert (=> b!6839361 (= e!4125027 (and tp!1872252 tp!1872254))))

(assert (=> b!6838088 (= tp!1871390 e!4125027)))

(declare-fun b!6839362 () Bool)

(declare-fun tp!1872255 () Bool)

(assert (=> b!6839362 (= e!4125027 tp!1872255)))

(declare-fun b!6839363 () Bool)

(declare-fun tp!1872253 () Bool)

(declare-fun tp!1872251 () Bool)

(assert (=> b!6839363 (= e!4125027 (and tp!1872253 tp!1872251))))

(assert (= (and b!6838088 ((_ is ElementMatch!16655) (regTwo!33822 (h!72588 (exprs!6539 setElem!46969))))) b!6839360))

(assert (= (and b!6838088 ((_ is Concat!25500) (regTwo!33822 (h!72588 (exprs!6539 setElem!46969))))) b!6839361))

(assert (= (and b!6838088 ((_ is Star!16655) (regTwo!33822 (h!72588 (exprs!6539 setElem!46969))))) b!6839362))

(assert (= (and b!6838088 ((_ is Union!16655) (regTwo!33822 (h!72588 (exprs!6539 setElem!46969))))) b!6839363))

(declare-fun b!6839364 () Bool)

(declare-fun e!4125028 () Bool)

(assert (=> b!6839364 (= e!4125028 tp_is_empty!42563)))

(declare-fun b!6839365 () Bool)

(declare-fun tp!1872257 () Bool)

(declare-fun tp!1872259 () Bool)

(assert (=> b!6839365 (= e!4125028 (and tp!1872257 tp!1872259))))

(assert (=> b!6838031 (= tp!1871316 e!4125028)))

(declare-fun b!6839366 () Bool)

(declare-fun tp!1872260 () Bool)

(assert (=> b!6839366 (= e!4125028 tp!1872260)))

(declare-fun b!6839367 () Bool)

(declare-fun tp!1872258 () Bool)

(declare-fun tp!1872256 () Bool)

(assert (=> b!6839367 (= e!4125028 (and tp!1872258 tp!1872256))))

(assert (= (and b!6838031 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33823 (reg!16984 r!7292))))) b!6839364))

(assert (= (and b!6838031 ((_ is Concat!25500) (regOne!33822 (regOne!33823 (reg!16984 r!7292))))) b!6839365))

(assert (= (and b!6838031 ((_ is Star!16655) (regOne!33822 (regOne!33823 (reg!16984 r!7292))))) b!6839366))

(assert (= (and b!6838031 ((_ is Union!16655) (regOne!33822 (regOne!33823 (reg!16984 r!7292))))) b!6839367))

(declare-fun b!6839368 () Bool)

(declare-fun e!4125029 () Bool)

(assert (=> b!6839368 (= e!4125029 tp_is_empty!42563)))

(declare-fun b!6839369 () Bool)

(declare-fun tp!1872262 () Bool)

(declare-fun tp!1872264 () Bool)

(assert (=> b!6839369 (= e!4125029 (and tp!1872262 tp!1872264))))

(assert (=> b!6838031 (= tp!1871318 e!4125029)))

(declare-fun b!6839370 () Bool)

(declare-fun tp!1872265 () Bool)

(assert (=> b!6839370 (= e!4125029 tp!1872265)))

(declare-fun b!6839371 () Bool)

(declare-fun tp!1872263 () Bool)

(declare-fun tp!1872261 () Bool)

(assert (=> b!6839371 (= e!4125029 (and tp!1872263 tp!1872261))))

(assert (= (and b!6838031 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33823 (reg!16984 r!7292))))) b!6839368))

(assert (= (and b!6838031 ((_ is Concat!25500) (regTwo!33822 (regOne!33823 (reg!16984 r!7292))))) b!6839369))

(assert (= (and b!6838031 ((_ is Star!16655) (regTwo!33822 (regOne!33823 (reg!16984 r!7292))))) b!6839370))

(assert (= (and b!6838031 ((_ is Union!16655) (regTwo!33822 (regOne!33823 (reg!16984 r!7292))))) b!6839371))

(declare-fun b!6839372 () Bool)

(declare-fun e!4125030 () Bool)

(assert (=> b!6839372 (= e!4125030 tp_is_empty!42563)))

(declare-fun b!6839373 () Bool)

(declare-fun tp!1872267 () Bool)

(declare-fun tp!1872269 () Bool)

(assert (=> b!6839373 (= e!4125030 (and tp!1872267 tp!1872269))))

(assert (=> b!6838098 (= tp!1871403 e!4125030)))

(declare-fun b!6839374 () Bool)

(declare-fun tp!1872270 () Bool)

(assert (=> b!6839374 (= e!4125030 tp!1872270)))

(declare-fun b!6839375 () Bool)

(declare-fun tp!1872268 () Bool)

(declare-fun tp!1872266 () Bool)

(assert (=> b!6839375 (= e!4125030 (and tp!1872268 tp!1872266))))

(assert (= (and b!6838098 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839372))

(assert (= (and b!6838098 ((_ is Concat!25500) (reg!16984 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839373))

(assert (= (and b!6838098 ((_ is Star!16655) (reg!16984 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839374))

(assert (= (and b!6838098 ((_ is Union!16655) (reg!16984 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839375))

(declare-fun b!6839376 () Bool)

(declare-fun e!4125031 () Bool)

(assert (=> b!6839376 (= e!4125031 tp_is_empty!42563)))

(declare-fun b!6839377 () Bool)

(declare-fun tp!1872272 () Bool)

(declare-fun tp!1872274 () Bool)

(assert (=> b!6839377 (= e!4125031 (and tp!1872272 tp!1872274))))

(assert (=> b!6837987 (= tp!1871258 e!4125031)))

(declare-fun b!6839378 () Bool)

(declare-fun tp!1872275 () Bool)

(assert (=> b!6839378 (= e!4125031 tp!1872275)))

(declare-fun b!6839379 () Bool)

(declare-fun tp!1872273 () Bool)

(declare-fun tp!1872271 () Bool)

(assert (=> b!6839379 (= e!4125031 (and tp!1872273 tp!1872271))))

(assert (= (and b!6837987 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33823 (regTwo!33822 r!7292))))) b!6839376))

(assert (= (and b!6837987 ((_ is Concat!25500) (regOne!33823 (regOne!33823 (regTwo!33822 r!7292))))) b!6839377))

(assert (= (and b!6837987 ((_ is Star!16655) (regOne!33823 (regOne!33823 (regTwo!33822 r!7292))))) b!6839378))

(assert (= (and b!6837987 ((_ is Union!16655) (regOne!33823 (regOne!33823 (regTwo!33822 r!7292))))) b!6839379))

(declare-fun b!6839380 () Bool)

(declare-fun e!4125032 () Bool)

(assert (=> b!6839380 (= e!4125032 tp_is_empty!42563)))

(declare-fun b!6839381 () Bool)

(declare-fun tp!1872277 () Bool)

(declare-fun tp!1872279 () Bool)

(assert (=> b!6839381 (= e!4125032 (and tp!1872277 tp!1872279))))

(assert (=> b!6837987 (= tp!1871256 e!4125032)))

(declare-fun b!6839382 () Bool)

(declare-fun tp!1872280 () Bool)

(assert (=> b!6839382 (= e!4125032 tp!1872280)))

(declare-fun b!6839383 () Bool)

(declare-fun tp!1872278 () Bool)

(declare-fun tp!1872276 () Bool)

(assert (=> b!6839383 (= e!4125032 (and tp!1872278 tp!1872276))))

(assert (= (and b!6837987 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33823 (regTwo!33822 r!7292))))) b!6839380))

(assert (= (and b!6837987 ((_ is Concat!25500) (regTwo!33823 (regOne!33823 (regTwo!33822 r!7292))))) b!6839381))

(assert (= (and b!6837987 ((_ is Star!16655) (regTwo!33823 (regOne!33823 (regTwo!33822 r!7292))))) b!6839382))

(assert (= (and b!6837987 ((_ is Union!16655) (regTwo!33823 (regOne!33823 (regTwo!33822 r!7292))))) b!6839383))

(declare-fun b!6839384 () Bool)

(declare-fun e!4125033 () Bool)

(assert (=> b!6839384 (= e!4125033 tp_is_empty!42563)))

(declare-fun b!6839385 () Bool)

(declare-fun tp!1872282 () Bool)

(declare-fun tp!1872284 () Bool)

(assert (=> b!6839385 (= e!4125033 (and tp!1872282 tp!1872284))))

(assert (=> b!6838074 (= tp!1871369 e!4125033)))

(declare-fun b!6839386 () Bool)

(declare-fun tp!1872285 () Bool)

(assert (=> b!6839386 (= e!4125033 tp!1872285)))

(declare-fun b!6839387 () Bool)

(declare-fun tp!1872283 () Bool)

(declare-fun tp!1872281 () Bool)

(assert (=> b!6839387 (= e!4125033 (and tp!1872283 tp!1872281))))

(assert (= (and b!6838074 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33823 (regTwo!33823 r!7292))))) b!6839384))

(assert (= (and b!6838074 ((_ is Concat!25500) (regOne!33823 (regOne!33823 (regTwo!33823 r!7292))))) b!6839385))

(assert (= (and b!6838074 ((_ is Star!16655) (regOne!33823 (regOne!33823 (regTwo!33823 r!7292))))) b!6839386))

(assert (= (and b!6838074 ((_ is Union!16655) (regOne!33823 (regOne!33823 (regTwo!33823 r!7292))))) b!6839387))

(declare-fun b!6839388 () Bool)

(declare-fun e!4125034 () Bool)

(assert (=> b!6839388 (= e!4125034 tp_is_empty!42563)))

(declare-fun b!6839389 () Bool)

(declare-fun tp!1872287 () Bool)

(declare-fun tp!1872289 () Bool)

(assert (=> b!6839389 (= e!4125034 (and tp!1872287 tp!1872289))))

(assert (=> b!6838074 (= tp!1871367 e!4125034)))

(declare-fun b!6839390 () Bool)

(declare-fun tp!1872290 () Bool)

(assert (=> b!6839390 (= e!4125034 tp!1872290)))

(declare-fun b!6839391 () Bool)

(declare-fun tp!1872288 () Bool)

(declare-fun tp!1872286 () Bool)

(assert (=> b!6839391 (= e!4125034 (and tp!1872288 tp!1872286))))

(assert (= (and b!6838074 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33823 (regTwo!33823 r!7292))))) b!6839388))

(assert (= (and b!6838074 ((_ is Concat!25500) (regTwo!33823 (regOne!33823 (regTwo!33823 r!7292))))) b!6839389))

(assert (= (and b!6838074 ((_ is Star!16655) (regTwo!33823 (regOne!33823 (regTwo!33823 r!7292))))) b!6839390))

(assert (= (and b!6838074 ((_ is Union!16655) (regTwo!33823 (regOne!33823 (regTwo!33823 r!7292))))) b!6839391))

(declare-fun b!6839392 () Bool)

(declare-fun e!4125035 () Bool)

(assert (=> b!6839392 (= e!4125035 tp_is_empty!42563)))

(declare-fun b!6839393 () Bool)

(declare-fun tp!1872292 () Bool)

(declare-fun tp!1872294 () Bool)

(assert (=> b!6839393 (= e!4125035 (and tp!1872292 tp!1872294))))

(assert (=> b!6838024 (= tp!1871309 e!4125035)))

(declare-fun b!6839394 () Bool)

(declare-fun tp!1872295 () Bool)

(assert (=> b!6839394 (= e!4125035 tp!1872295)))

(declare-fun b!6839395 () Bool)

(declare-fun tp!1872293 () Bool)

(declare-fun tp!1872291 () Bool)

(assert (=> b!6839395 (= e!4125035 (and tp!1872293 tp!1872291))))

(assert (= (and b!6838024 ((_ is ElementMatch!16655) (reg!16984 (regOne!33822 (regOne!33822 r!7292))))) b!6839392))

(assert (= (and b!6838024 ((_ is Concat!25500) (reg!16984 (regOne!33822 (regOne!33822 r!7292))))) b!6839393))

(assert (= (and b!6838024 ((_ is Star!16655) (reg!16984 (regOne!33822 (regOne!33822 r!7292))))) b!6839394))

(assert (= (and b!6838024 ((_ is Union!16655) (reg!16984 (regOne!33822 (regOne!33822 r!7292))))) b!6839395))

(declare-fun b!6839396 () Bool)

(declare-fun e!4125036 () Bool)

(assert (=> b!6839396 (= e!4125036 tp_is_empty!42563)))

(declare-fun b!6839397 () Bool)

(declare-fun tp!1872297 () Bool)

(declare-fun tp!1872299 () Bool)

(assert (=> b!6839397 (= e!4125036 (and tp!1872297 tp!1872299))))

(assert (=> b!6838072 (= tp!1871368 e!4125036)))

(declare-fun b!6839398 () Bool)

(declare-fun tp!1872300 () Bool)

(assert (=> b!6839398 (= e!4125036 tp!1872300)))

(declare-fun b!6839399 () Bool)

(declare-fun tp!1872298 () Bool)

(declare-fun tp!1872296 () Bool)

(assert (=> b!6839399 (= e!4125036 (and tp!1872298 tp!1872296))))

(assert (= (and b!6838072 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33823 (regTwo!33823 r!7292))))) b!6839396))

(assert (= (and b!6838072 ((_ is Concat!25500) (regOne!33822 (regOne!33823 (regTwo!33823 r!7292))))) b!6839397))

(assert (= (and b!6838072 ((_ is Star!16655) (regOne!33822 (regOne!33823 (regTwo!33823 r!7292))))) b!6839398))

(assert (= (and b!6838072 ((_ is Union!16655) (regOne!33822 (regOne!33823 (regTwo!33823 r!7292))))) b!6839399))

(declare-fun b!6839400 () Bool)

(declare-fun e!4125037 () Bool)

(assert (=> b!6839400 (= e!4125037 tp_is_empty!42563)))

(declare-fun b!6839401 () Bool)

(declare-fun tp!1872302 () Bool)

(declare-fun tp!1872304 () Bool)

(assert (=> b!6839401 (= e!4125037 (and tp!1872302 tp!1872304))))

(assert (=> b!6838072 (= tp!1871370 e!4125037)))

(declare-fun b!6839402 () Bool)

(declare-fun tp!1872305 () Bool)

(assert (=> b!6839402 (= e!4125037 tp!1872305)))

(declare-fun b!6839403 () Bool)

(declare-fun tp!1872303 () Bool)

(declare-fun tp!1872301 () Bool)

(assert (=> b!6839403 (= e!4125037 (and tp!1872303 tp!1872301))))

(assert (= (and b!6838072 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33823 (regTwo!33823 r!7292))))) b!6839400))

(assert (= (and b!6838072 ((_ is Concat!25500) (regTwo!33822 (regOne!33823 (regTwo!33823 r!7292))))) b!6839401))

(assert (= (and b!6838072 ((_ is Star!16655) (regTwo!33822 (regOne!33823 (regTwo!33823 r!7292))))) b!6839402))

(assert (= (and b!6838072 ((_ is Union!16655) (regTwo!33822 (regOne!33823 (regTwo!33823 r!7292))))) b!6839403))

(declare-fun b!6839404 () Bool)

(declare-fun e!4125038 () Bool)

(assert (=> b!6839404 (= e!4125038 tp_is_empty!42563)))

(declare-fun b!6839405 () Bool)

(declare-fun tp!1872307 () Bool)

(declare-fun tp!1872309 () Bool)

(assert (=> b!6839405 (= e!4125038 (and tp!1872307 tp!1872309))))

(assert (=> b!6838020 (= tp!1871301 e!4125038)))

(declare-fun b!6839406 () Bool)

(declare-fun tp!1872310 () Bool)

(assert (=> b!6839406 (= e!4125038 tp!1872310)))

(declare-fun b!6839407 () Bool)

(declare-fun tp!1872308 () Bool)

(declare-fun tp!1872306 () Bool)

(assert (=> b!6839407 (= e!4125038 (and tp!1872308 tp!1872306))))

(assert (= (and b!6838020 ((_ is ElementMatch!16655) (h!72588 (exprs!6539 setElem!46975)))) b!6839404))

(assert (= (and b!6838020 ((_ is Concat!25500) (h!72588 (exprs!6539 setElem!46975)))) b!6839405))

(assert (= (and b!6838020 ((_ is Star!16655) (h!72588 (exprs!6539 setElem!46975)))) b!6839406))

(assert (= (and b!6838020 ((_ is Union!16655) (h!72588 (exprs!6539 setElem!46975)))) b!6839407))

(declare-fun b!6839408 () Bool)

(declare-fun e!4125039 () Bool)

(declare-fun tp!1872311 () Bool)

(declare-fun tp!1872312 () Bool)

(assert (=> b!6839408 (= e!4125039 (and tp!1872311 tp!1872312))))

(assert (=> b!6838020 (= tp!1871302 e!4125039)))

(assert (= (and b!6838020 ((_ is Cons!66140) (t!380007 (exprs!6539 setElem!46975)))) b!6839408))

(declare-fun b!6839409 () Bool)

(declare-fun e!4125040 () Bool)

(assert (=> b!6839409 (= e!4125040 tp_is_empty!42563)))

(declare-fun b!6839410 () Bool)

(declare-fun tp!1872314 () Bool)

(declare-fun tp!1872316 () Bool)

(assert (=> b!6839410 (= e!4125040 (and tp!1872314 tp!1872316))))

(assert (=> b!6838059 (= tp!1871351 e!4125040)))

(declare-fun b!6839411 () Bool)

(declare-fun tp!1872317 () Bool)

(assert (=> b!6839411 (= e!4125040 tp!1872317)))

(declare-fun b!6839412 () Bool)

(declare-fun tp!1872315 () Bool)

(declare-fun tp!1872313 () Bool)

(assert (=> b!6839412 (= e!4125040 (and tp!1872315 tp!1872313))))

(assert (= (and b!6838059 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839409))

(assert (= (and b!6838059 ((_ is Concat!25500) (regOne!33822 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839410))

(assert (= (and b!6838059 ((_ is Star!16655) (regOne!33822 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839411))

(assert (= (and b!6838059 ((_ is Union!16655) (regOne!33822 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839412))

(declare-fun b!6839413 () Bool)

(declare-fun e!4125041 () Bool)

(assert (=> b!6839413 (= e!4125041 tp_is_empty!42563)))

(declare-fun b!6839414 () Bool)

(declare-fun tp!1872319 () Bool)

(declare-fun tp!1872321 () Bool)

(assert (=> b!6839414 (= e!4125041 (and tp!1872319 tp!1872321))))

(assert (=> b!6838059 (= tp!1871353 e!4125041)))

(declare-fun b!6839415 () Bool)

(declare-fun tp!1872322 () Bool)

(assert (=> b!6839415 (= e!4125041 tp!1872322)))

(declare-fun b!6839416 () Bool)

(declare-fun tp!1872320 () Bool)

(declare-fun tp!1872318 () Bool)

(assert (=> b!6839416 (= e!4125041 (and tp!1872320 tp!1872318))))

(assert (= (and b!6838059 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839413))

(assert (= (and b!6838059 ((_ is Concat!25500) (regTwo!33822 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839414))

(assert (= (and b!6838059 ((_ is Star!16655) (regTwo!33822 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839415))

(assert (= (and b!6838059 ((_ is Union!16655) (regTwo!33822 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839416))

(declare-fun b!6839417 () Bool)

(declare-fun e!4125042 () Bool)

(assert (=> b!6839417 (= e!4125042 tp_is_empty!42563)))

(declare-fun b!6839418 () Bool)

(declare-fun tp!1872324 () Bool)

(declare-fun tp!1872326 () Bool)

(assert (=> b!6839418 (= e!4125042 (and tp!1872324 tp!1872326))))

(assert (=> b!6838067 (= tp!1871361 e!4125042)))

(declare-fun b!6839419 () Bool)

(declare-fun tp!1872327 () Bool)

(assert (=> b!6839419 (= e!4125042 tp!1872327)))

(declare-fun b!6839420 () Bool)

(declare-fun tp!1872325 () Bool)

(declare-fun tp!1872323 () Bool)

(assert (=> b!6839420 (= e!4125042 (and tp!1872325 tp!1872323))))

(assert (= (and b!6838067 ((_ is ElementMatch!16655) (regOne!33822 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839417))

(assert (= (and b!6838067 ((_ is Concat!25500) (regOne!33822 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839418))

(assert (= (and b!6838067 ((_ is Star!16655) (regOne!33822 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839419))

(assert (= (and b!6838067 ((_ is Union!16655) (regOne!33822 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839420))

(declare-fun b!6839421 () Bool)

(declare-fun e!4125043 () Bool)

(assert (=> b!6839421 (= e!4125043 tp_is_empty!42563)))

(declare-fun b!6839422 () Bool)

(declare-fun tp!1872329 () Bool)

(declare-fun tp!1872331 () Bool)

(assert (=> b!6839422 (= e!4125043 (and tp!1872329 tp!1872331))))

(assert (=> b!6838067 (= tp!1871363 e!4125043)))

(declare-fun b!6839423 () Bool)

(declare-fun tp!1872332 () Bool)

(assert (=> b!6839423 (= e!4125043 tp!1872332)))

(declare-fun b!6839424 () Bool)

(declare-fun tp!1872330 () Bool)

(declare-fun tp!1872328 () Bool)

(assert (=> b!6839424 (= e!4125043 (and tp!1872330 tp!1872328))))

(assert (= (and b!6838067 ((_ is ElementMatch!16655) (regTwo!33822 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839421))

(assert (= (and b!6838067 ((_ is Concat!25500) (regTwo!33822 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839422))

(assert (= (and b!6838067 ((_ is Star!16655) (regTwo!33822 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839423))

(assert (= (and b!6838067 ((_ is Union!16655) (regTwo!33822 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839424))

(declare-fun b!6839425 () Bool)

(declare-fun e!4125044 () Bool)

(assert (=> b!6839425 (= e!4125044 tp_is_empty!42563)))

(declare-fun b!6839426 () Bool)

(declare-fun tp!1872334 () Bool)

(declare-fun tp!1872336 () Bool)

(assert (=> b!6839426 (= e!4125044 (and tp!1872334 tp!1872336))))

(assert (=> b!6838015 (= tp!1871293 e!4125044)))

(declare-fun b!6839427 () Bool)

(declare-fun tp!1872337 () Bool)

(assert (=> b!6839427 (= e!4125044 tp!1872337)))

(declare-fun b!6839428 () Bool)

(declare-fun tp!1872335 () Bool)

(declare-fun tp!1872333 () Bool)

(assert (=> b!6839428 (= e!4125044 (and tp!1872335 tp!1872333))))

(assert (= (and b!6838015 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33823 (regOne!33823 r!7292))))) b!6839425))

(assert (= (and b!6838015 ((_ is Concat!25500) (regOne!33823 (regTwo!33823 (regOne!33823 r!7292))))) b!6839426))

(assert (= (and b!6838015 ((_ is Star!16655) (regOne!33823 (regTwo!33823 (regOne!33823 r!7292))))) b!6839427))

(assert (= (and b!6838015 ((_ is Union!16655) (regOne!33823 (regTwo!33823 (regOne!33823 r!7292))))) b!6839428))

(declare-fun b!6839429 () Bool)

(declare-fun e!4125045 () Bool)

(assert (=> b!6839429 (= e!4125045 tp_is_empty!42563)))

(declare-fun b!6839430 () Bool)

(declare-fun tp!1872339 () Bool)

(declare-fun tp!1872341 () Bool)

(assert (=> b!6839430 (= e!4125045 (and tp!1872339 tp!1872341))))

(assert (=> b!6838015 (= tp!1871291 e!4125045)))

(declare-fun b!6839431 () Bool)

(declare-fun tp!1872342 () Bool)

(assert (=> b!6839431 (= e!4125045 tp!1872342)))

(declare-fun b!6839432 () Bool)

(declare-fun tp!1872340 () Bool)

(declare-fun tp!1872338 () Bool)

(assert (=> b!6839432 (= e!4125045 (and tp!1872340 tp!1872338))))

(assert (= (and b!6838015 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33823 (regOne!33823 r!7292))))) b!6839429))

(assert (= (and b!6838015 ((_ is Concat!25500) (regTwo!33823 (regTwo!33823 (regOne!33823 r!7292))))) b!6839430))

(assert (= (and b!6838015 ((_ is Star!16655) (regTwo!33823 (regTwo!33823 (regOne!33823 r!7292))))) b!6839431))

(assert (= (and b!6838015 ((_ is Union!16655) (regTwo!33823 (regTwo!33823 (regOne!33823 r!7292))))) b!6839432))

(declare-fun b!6839433 () Bool)

(declare-fun e!4125046 () Bool)

(assert (=> b!6839433 (= e!4125046 tp_is_empty!42563)))

(declare-fun b!6839434 () Bool)

(declare-fun tp!1872344 () Bool)

(declare-fun tp!1872346 () Bool)

(assert (=> b!6839434 (= e!4125046 (and tp!1872344 tp!1872346))))

(assert (=> b!6838013 (= tp!1871292 e!4125046)))

(declare-fun b!6839435 () Bool)

(declare-fun tp!1872347 () Bool)

(assert (=> b!6839435 (= e!4125046 tp!1872347)))

(declare-fun b!6839436 () Bool)

(declare-fun tp!1872345 () Bool)

(declare-fun tp!1872343 () Bool)

(assert (=> b!6839436 (= e!4125046 (and tp!1872345 tp!1872343))))

(assert (= (and b!6838013 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33823 (regOne!33823 r!7292))))) b!6839433))

(assert (= (and b!6838013 ((_ is Concat!25500) (regOne!33822 (regTwo!33823 (regOne!33823 r!7292))))) b!6839434))

(assert (= (and b!6838013 ((_ is Star!16655) (regOne!33822 (regTwo!33823 (regOne!33823 r!7292))))) b!6839435))

(assert (= (and b!6838013 ((_ is Union!16655) (regOne!33822 (regTwo!33823 (regOne!33823 r!7292))))) b!6839436))

(declare-fun b!6839437 () Bool)

(declare-fun e!4125047 () Bool)

(assert (=> b!6839437 (= e!4125047 tp_is_empty!42563)))

(declare-fun b!6839438 () Bool)

(declare-fun tp!1872349 () Bool)

(declare-fun tp!1872351 () Bool)

(assert (=> b!6839438 (= e!4125047 (and tp!1872349 tp!1872351))))

(assert (=> b!6838013 (= tp!1871294 e!4125047)))

(declare-fun b!6839439 () Bool)

(declare-fun tp!1872352 () Bool)

(assert (=> b!6839439 (= e!4125047 tp!1872352)))

(declare-fun b!6839440 () Bool)

(declare-fun tp!1872350 () Bool)

(declare-fun tp!1872348 () Bool)

(assert (=> b!6839440 (= e!4125047 (and tp!1872350 tp!1872348))))

(assert (= (and b!6838013 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33823 (regOne!33823 r!7292))))) b!6839437))

(assert (= (and b!6838013 ((_ is Concat!25500) (regTwo!33822 (regTwo!33823 (regOne!33823 r!7292))))) b!6839438))

(assert (= (and b!6838013 ((_ is Star!16655) (regTwo!33822 (regTwo!33823 (regOne!33823 r!7292))))) b!6839439))

(assert (= (and b!6838013 ((_ is Union!16655) (regTwo!33822 (regTwo!33823 (regOne!33823 r!7292))))) b!6839440))

(declare-fun b!6839441 () Bool)

(declare-fun e!4125048 () Bool)

(assert (=> b!6839441 (= e!4125048 tp_is_empty!42563)))

(declare-fun b!6839442 () Bool)

(declare-fun tp!1872354 () Bool)

(declare-fun tp!1872356 () Bool)

(assert (=> b!6839442 (= e!4125048 (and tp!1872354 tp!1872356))))

(assert (=> b!6838061 (= tp!1871352 e!4125048)))

(declare-fun b!6839443 () Bool)

(declare-fun tp!1872357 () Bool)

(assert (=> b!6839443 (= e!4125048 tp!1872357)))

(declare-fun b!6839444 () Bool)

(declare-fun tp!1872355 () Bool)

(declare-fun tp!1872353 () Bool)

(assert (=> b!6839444 (= e!4125048 (and tp!1872355 tp!1872353))))

(assert (= (and b!6838061 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839441))

(assert (= (and b!6838061 ((_ is Concat!25500) (regOne!33823 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839442))

(assert (= (and b!6838061 ((_ is Star!16655) (regOne!33823 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839443))

(assert (= (and b!6838061 ((_ is Union!16655) (regOne!33823 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839444))

(declare-fun b!6839445 () Bool)

(declare-fun e!4125049 () Bool)

(assert (=> b!6839445 (= e!4125049 tp_is_empty!42563)))

(declare-fun b!6839446 () Bool)

(declare-fun tp!1872359 () Bool)

(declare-fun tp!1872361 () Bool)

(assert (=> b!6839446 (= e!4125049 (and tp!1872359 tp!1872361))))

(assert (=> b!6838061 (= tp!1871350 e!4125049)))

(declare-fun b!6839447 () Bool)

(declare-fun tp!1872362 () Bool)

(assert (=> b!6839447 (= e!4125049 tp!1872362)))

(declare-fun b!6839448 () Bool)

(declare-fun tp!1872360 () Bool)

(declare-fun tp!1872358 () Bool)

(assert (=> b!6839448 (= e!4125049 (and tp!1872360 tp!1872358))))

(assert (= (and b!6838061 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839445))

(assert (= (and b!6838061 ((_ is Concat!25500) (regTwo!33823 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839446))

(assert (= (and b!6838061 ((_ is Star!16655) (regTwo!33823 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839447))

(assert (= (and b!6838061 ((_ is Union!16655) (regTwo!33823 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839448))

(declare-fun b!6839449 () Bool)

(declare-fun e!4125050 () Bool)

(assert (=> b!6839449 (= e!4125050 tp_is_empty!42563)))

(declare-fun b!6839450 () Bool)

(declare-fun tp!1872364 () Bool)

(declare-fun tp!1872366 () Bool)

(assert (=> b!6839450 (= e!4125050 (and tp!1872364 tp!1872366))))

(assert (=> b!6838052 (= tp!1871344 e!4125050)))

(declare-fun b!6839451 () Bool)

(declare-fun tp!1872367 () Bool)

(assert (=> b!6839451 (= e!4125050 tp!1872367)))

(declare-fun b!6839452 () Bool)

(declare-fun tp!1872365 () Bool)

(declare-fun tp!1872363 () Bool)

(assert (=> b!6839452 (= e!4125050 (and tp!1872365 tp!1872363))))

(assert (= (and b!6838052 ((_ is ElementMatch!16655) (reg!16984 (reg!16984 (regOne!33822 r!7292))))) b!6839449))

(assert (= (and b!6838052 ((_ is Concat!25500) (reg!16984 (reg!16984 (regOne!33822 r!7292))))) b!6839450))

(assert (= (and b!6838052 ((_ is Star!16655) (reg!16984 (reg!16984 (regOne!33822 r!7292))))) b!6839451))

(assert (= (and b!6838052 ((_ is Union!16655) (reg!16984 (reg!16984 (regOne!33822 r!7292))))) b!6839452))

(declare-fun b!6839453 () Bool)

(declare-fun e!4125051 () Bool)

(assert (=> b!6839453 (= e!4125051 tp_is_empty!42563)))

(declare-fun b!6839454 () Bool)

(declare-fun tp!1872369 () Bool)

(declare-fun tp!1872371 () Bool)

(assert (=> b!6839454 (= e!4125051 (and tp!1872369 tp!1872371))))

(assert (=> b!6838043 (= tp!1871331 e!4125051)))

(declare-fun b!6839455 () Bool)

(declare-fun tp!1872372 () Bool)

(assert (=> b!6839455 (= e!4125051 tp!1872372)))

(declare-fun b!6839456 () Bool)

(declare-fun tp!1872370 () Bool)

(declare-fun tp!1872368 () Bool)

(assert (=> b!6839456 (= e!4125051 (and tp!1872370 tp!1872368))))

(assert (= (and b!6838043 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33823 (regOne!33822 r!7292))))) b!6839453))

(assert (= (and b!6838043 ((_ is Concat!25500) (regOne!33822 (regOne!33823 (regOne!33822 r!7292))))) b!6839454))

(assert (= (and b!6838043 ((_ is Star!16655) (regOne!33822 (regOne!33823 (regOne!33822 r!7292))))) b!6839455))

(assert (= (and b!6838043 ((_ is Union!16655) (regOne!33822 (regOne!33823 (regOne!33822 r!7292))))) b!6839456))

(declare-fun b!6839457 () Bool)

(declare-fun e!4125052 () Bool)

(assert (=> b!6839457 (= e!4125052 tp_is_empty!42563)))

(declare-fun b!6839458 () Bool)

(declare-fun tp!1872374 () Bool)

(declare-fun tp!1872376 () Bool)

(assert (=> b!6839458 (= e!4125052 (and tp!1872374 tp!1872376))))

(assert (=> b!6838043 (= tp!1871333 e!4125052)))

(declare-fun b!6839459 () Bool)

(declare-fun tp!1872377 () Bool)

(assert (=> b!6839459 (= e!4125052 tp!1872377)))

(declare-fun b!6839460 () Bool)

(declare-fun tp!1872375 () Bool)

(declare-fun tp!1872373 () Bool)

(assert (=> b!6839460 (= e!4125052 (and tp!1872375 tp!1872373))))

(assert (= (and b!6838043 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33823 (regOne!33822 r!7292))))) b!6839457))

(assert (= (and b!6838043 ((_ is Concat!25500) (regTwo!33822 (regOne!33823 (regOne!33822 r!7292))))) b!6839458))

(assert (= (and b!6838043 ((_ is Star!16655) (regTwo!33822 (regOne!33823 (regOne!33822 r!7292))))) b!6839459))

(assert (= (and b!6838043 ((_ is Union!16655) (regTwo!33822 (regOne!33823 (regOne!33822 r!7292))))) b!6839460))

(declare-fun condSetEmpty!46979 () Bool)

(assert (=> setNonEmpty!46977 (= condSetEmpty!46979 (= setRest!46977 ((as const (Array Context!12078 Bool)) false)))))

(declare-fun setRes!46979 () Bool)

(assert (=> setNonEmpty!46977 (= tp!1871303 setRes!46979)))

(declare-fun setIsEmpty!46979 () Bool)

(assert (=> setIsEmpty!46979 setRes!46979))

(declare-fun e!4125053 () Bool)

(declare-fun setNonEmpty!46979 () Bool)

(declare-fun tp!1872378 () Bool)

(declare-fun setElem!46979 () Context!12078)

(assert (=> setNonEmpty!46979 (= setRes!46979 (and tp!1872378 (inv!84884 setElem!46979) e!4125053))))

(declare-fun setRest!46979 () (InoxSet Context!12078))

(assert (=> setNonEmpty!46979 (= setRest!46977 ((_ map or) (store ((as const (Array Context!12078 Bool)) false) setElem!46979 true) setRest!46979))))

(declare-fun b!6839461 () Bool)

(declare-fun tp!1872379 () Bool)

(assert (=> b!6839461 (= e!4125053 tp!1872379)))

(assert (= (and setNonEmpty!46977 condSetEmpty!46979) setIsEmpty!46979))

(assert (= (and setNonEmpty!46977 (not condSetEmpty!46979)) setNonEmpty!46979))

(assert (= setNonEmpty!46979 b!6839461))

(declare-fun m!7583410 () Bool)

(assert (=> setNonEmpty!46979 m!7583410))

(declare-fun b!6839462 () Bool)

(declare-fun e!4125054 () Bool)

(assert (=> b!6839462 (= e!4125054 tp_is_empty!42563)))

(declare-fun b!6839463 () Bool)

(declare-fun tp!1872381 () Bool)

(declare-fun tp!1872383 () Bool)

(assert (=> b!6839463 (= e!4125054 (and tp!1872381 tp!1872383))))

(assert (=> b!6838069 (= tp!1871362 e!4125054)))

(declare-fun b!6839464 () Bool)

(declare-fun tp!1872384 () Bool)

(assert (=> b!6839464 (= e!4125054 tp!1872384)))

(declare-fun b!6839465 () Bool)

(declare-fun tp!1872382 () Bool)

(declare-fun tp!1872380 () Bool)

(assert (=> b!6839465 (= e!4125054 (and tp!1872382 tp!1872380))))

(assert (= (and b!6838069 ((_ is ElementMatch!16655) (regOne!33823 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839462))

(assert (= (and b!6838069 ((_ is Concat!25500) (regOne!33823 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839463))

(assert (= (and b!6838069 ((_ is Star!16655) (regOne!33823 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839464))

(assert (= (and b!6838069 ((_ is Union!16655) (regOne!33823 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839465))

(declare-fun b!6839466 () Bool)

(declare-fun e!4125055 () Bool)

(assert (=> b!6839466 (= e!4125055 tp_is_empty!42563)))

(declare-fun b!6839467 () Bool)

(declare-fun tp!1872386 () Bool)

(declare-fun tp!1872388 () Bool)

(assert (=> b!6839467 (= e!4125055 (and tp!1872386 tp!1872388))))

(assert (=> b!6838069 (= tp!1871360 e!4125055)))

(declare-fun b!6839468 () Bool)

(declare-fun tp!1872389 () Bool)

(assert (=> b!6839468 (= e!4125055 tp!1872389)))

(declare-fun b!6839469 () Bool)

(declare-fun tp!1872387 () Bool)

(declare-fun tp!1872385 () Bool)

(assert (=> b!6839469 (= e!4125055 (and tp!1872387 tp!1872385))))

(assert (= (and b!6838069 ((_ is ElementMatch!16655) (regTwo!33823 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839466))

(assert (= (and b!6838069 ((_ is Concat!25500) (regTwo!33823 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839467))

(assert (= (and b!6838069 ((_ is Star!16655) (regTwo!33823 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839468))

(assert (= (and b!6838069 ((_ is Union!16655) (regTwo!33823 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839469))

(declare-fun b!6839470 () Bool)

(declare-fun e!4125056 () Bool)

(assert (=> b!6839470 (= e!4125056 tp_is_empty!42563)))

(declare-fun b!6839471 () Bool)

(declare-fun tp!1872391 () Bool)

(declare-fun tp!1872393 () Bool)

(assert (=> b!6839471 (= e!4125056 (and tp!1872391 tp!1872393))))

(assert (=> b!6838062 (= tp!1871355 e!4125056)))

(declare-fun b!6839472 () Bool)

(declare-fun tp!1872394 () Bool)

(assert (=> b!6839472 (= e!4125056 tp!1872394)))

(declare-fun b!6839473 () Bool)

(declare-fun tp!1872392 () Bool)

(declare-fun tp!1872390 () Bool)

(assert (=> b!6839473 (= e!4125056 (and tp!1872392 tp!1872390))))

(assert (= (and b!6838062 ((_ is ElementMatch!16655) (h!72588 (exprs!6539 (h!72589 (t!380008 zl!343)))))) b!6839470))

(assert (= (and b!6838062 ((_ is Concat!25500) (h!72588 (exprs!6539 (h!72589 (t!380008 zl!343)))))) b!6839471))

(assert (= (and b!6838062 ((_ is Star!16655) (h!72588 (exprs!6539 (h!72589 (t!380008 zl!343)))))) b!6839472))

(assert (= (and b!6838062 ((_ is Union!16655) (h!72588 (exprs!6539 (h!72589 (t!380008 zl!343)))))) b!6839473))

(declare-fun b!6839474 () Bool)

(declare-fun e!4125057 () Bool)

(declare-fun tp!1872395 () Bool)

(declare-fun tp!1872396 () Bool)

(assert (=> b!6839474 (= e!4125057 (and tp!1872395 tp!1872396))))

(assert (=> b!6838062 (= tp!1871356 e!4125057)))

(assert (= (and b!6838062 ((_ is Cons!66140) (t!380007 (exprs!6539 (h!72589 (t!380008 zl!343)))))) b!6839474))

(declare-fun b!6839475 () Bool)

(declare-fun e!4125058 () Bool)

(assert (=> b!6839475 (= e!4125058 tp_is_empty!42563)))

(declare-fun b!6839476 () Bool)

(declare-fun tp!1872398 () Bool)

(declare-fun tp!1872400 () Bool)

(assert (=> b!6839476 (= e!4125058 (and tp!1872398 tp!1872400))))

(assert (=> b!6837999 (= tp!1871273 e!4125058)))

(declare-fun b!6839477 () Bool)

(declare-fun tp!1872401 () Bool)

(assert (=> b!6839477 (= e!4125058 tp!1872401)))

(declare-fun b!6839478 () Bool)

(declare-fun tp!1872399 () Bool)

(declare-fun tp!1872397 () Bool)

(assert (=> b!6839478 (= e!4125058 (and tp!1872399 tp!1872397))))

(assert (= (and b!6837999 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33822 (regOne!33823 r!7292))))) b!6839475))

(assert (= (and b!6837999 ((_ is Concat!25500) (regOne!33823 (regTwo!33822 (regOne!33823 r!7292))))) b!6839476))

(assert (= (and b!6837999 ((_ is Star!16655) (regOne!33823 (regTwo!33822 (regOne!33823 r!7292))))) b!6839477))

(assert (= (and b!6837999 ((_ is Union!16655) (regOne!33823 (regTwo!33822 (regOne!33823 r!7292))))) b!6839478))

(declare-fun b!6839479 () Bool)

(declare-fun e!4125059 () Bool)

(assert (=> b!6839479 (= e!4125059 tp_is_empty!42563)))

(declare-fun b!6839480 () Bool)

(declare-fun tp!1872403 () Bool)

(declare-fun tp!1872405 () Bool)

(assert (=> b!6839480 (= e!4125059 (and tp!1872403 tp!1872405))))

(assert (=> b!6837999 (= tp!1871271 e!4125059)))

(declare-fun b!6839481 () Bool)

(declare-fun tp!1872406 () Bool)

(assert (=> b!6839481 (= e!4125059 tp!1872406)))

(declare-fun b!6839482 () Bool)

(declare-fun tp!1872404 () Bool)

(declare-fun tp!1872402 () Bool)

(assert (=> b!6839482 (= e!4125059 (and tp!1872404 tp!1872402))))

(assert (= (and b!6837999 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33822 (regOne!33823 r!7292))))) b!6839479))

(assert (= (and b!6837999 ((_ is Concat!25500) (regTwo!33823 (regTwo!33822 (regOne!33823 r!7292))))) b!6839480))

(assert (= (and b!6837999 ((_ is Star!16655) (regTwo!33823 (regTwo!33822 (regOne!33823 r!7292))))) b!6839481))

(assert (= (and b!6837999 ((_ is Union!16655) (regTwo!33823 (regTwo!33822 (regOne!33823 r!7292))))) b!6839482))

(declare-fun b!6839483 () Bool)

(declare-fun e!4125060 () Bool)

(assert (=> b!6839483 (= e!4125060 tp_is_empty!42563)))

(declare-fun b!6839484 () Bool)

(declare-fun tp!1872408 () Bool)

(declare-fun tp!1872410 () Bool)

(assert (=> b!6839484 (= e!4125060 (and tp!1872408 tp!1872410))))

(assert (=> b!6838006 (= tp!1871285 e!4125060)))

(declare-fun b!6839485 () Bool)

(declare-fun tp!1872411 () Bool)

(assert (=> b!6839485 (= e!4125060 tp!1872411)))

(declare-fun b!6839486 () Bool)

(declare-fun tp!1872409 () Bool)

(declare-fun tp!1872407 () Bool)

(assert (=> b!6839486 (= e!4125060 (and tp!1872409 tp!1872407))))

(assert (= (and b!6838006 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33822 (reg!16984 r!7292))))) b!6839483))

(assert (= (and b!6838006 ((_ is Concat!25500) (reg!16984 (regTwo!33822 (reg!16984 r!7292))))) b!6839484))

(assert (= (and b!6838006 ((_ is Star!16655) (reg!16984 (regTwo!33822 (reg!16984 r!7292))))) b!6839485))

(assert (= (and b!6838006 ((_ is Union!16655) (reg!16984 (regTwo!33822 (reg!16984 r!7292))))) b!6839486))

(declare-fun b!6839487 () Bool)

(declare-fun e!4125061 () Bool)

(assert (=> b!6839487 (= e!4125061 tp_is_empty!42563)))

(declare-fun b!6839488 () Bool)

(declare-fun tp!1872413 () Bool)

(declare-fun tp!1872415 () Bool)

(assert (=> b!6839488 (= e!4125061 (and tp!1872413 tp!1872415))))

(assert (=> b!6837997 (= tp!1871272 e!4125061)))

(declare-fun b!6839489 () Bool)

(declare-fun tp!1872416 () Bool)

(assert (=> b!6839489 (= e!4125061 tp!1872416)))

(declare-fun b!6839490 () Bool)

(declare-fun tp!1872414 () Bool)

(declare-fun tp!1872412 () Bool)

(assert (=> b!6839490 (= e!4125061 (and tp!1872414 tp!1872412))))

(assert (= (and b!6837997 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33822 (regOne!33823 r!7292))))) b!6839487))

(assert (= (and b!6837997 ((_ is Concat!25500) (regOne!33822 (regTwo!33822 (regOne!33823 r!7292))))) b!6839488))

(assert (= (and b!6837997 ((_ is Star!16655) (regOne!33822 (regTwo!33822 (regOne!33823 r!7292))))) b!6839489))

(assert (= (and b!6837997 ((_ is Union!16655) (regOne!33822 (regTwo!33822 (regOne!33823 r!7292))))) b!6839490))

(declare-fun b!6839491 () Bool)

(declare-fun e!4125062 () Bool)

(assert (=> b!6839491 (= e!4125062 tp_is_empty!42563)))

(declare-fun b!6839492 () Bool)

(declare-fun tp!1872418 () Bool)

(declare-fun tp!1872420 () Bool)

(assert (=> b!6839492 (= e!4125062 (and tp!1872418 tp!1872420))))

(assert (=> b!6837997 (= tp!1871274 e!4125062)))

(declare-fun b!6839493 () Bool)

(declare-fun tp!1872421 () Bool)

(assert (=> b!6839493 (= e!4125062 tp!1872421)))

(declare-fun b!6839494 () Bool)

(declare-fun tp!1872419 () Bool)

(declare-fun tp!1872417 () Bool)

(assert (=> b!6839494 (= e!4125062 (and tp!1872419 tp!1872417))))

(assert (= (and b!6837997 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33822 (regOne!33823 r!7292))))) b!6839491))

(assert (= (and b!6837997 ((_ is Concat!25500) (regTwo!33822 (regTwo!33822 (regOne!33823 r!7292))))) b!6839492))

(assert (= (and b!6837997 ((_ is Star!16655) (regTwo!33822 (regTwo!33822 (regOne!33823 r!7292))))) b!6839493))

(assert (= (and b!6837997 ((_ is Union!16655) (regTwo!33822 (regTwo!33822 (regOne!33823 r!7292))))) b!6839494))

(declare-fun b!6839495 () Bool)

(declare-fun e!4125063 () Bool)

(assert (=> b!6839495 (= e!4125063 tp_is_empty!42563)))

(declare-fun b!6839496 () Bool)

(declare-fun tp!1872423 () Bool)

(declare-fun tp!1872425 () Bool)

(assert (=> b!6839496 (= e!4125063 (and tp!1872423 tp!1872425))))

(assert (=> b!6838045 (= tp!1871332 e!4125063)))

(declare-fun b!6839497 () Bool)

(declare-fun tp!1872426 () Bool)

(assert (=> b!6839497 (= e!4125063 tp!1872426)))

(declare-fun b!6839498 () Bool)

(declare-fun tp!1872424 () Bool)

(declare-fun tp!1872422 () Bool)

(assert (=> b!6839498 (= e!4125063 (and tp!1872424 tp!1872422))))

(assert (= (and b!6838045 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33823 (regOne!33822 r!7292))))) b!6839495))

(assert (= (and b!6838045 ((_ is Concat!25500) (regOne!33823 (regOne!33823 (regOne!33822 r!7292))))) b!6839496))

(assert (= (and b!6838045 ((_ is Star!16655) (regOne!33823 (regOne!33823 (regOne!33822 r!7292))))) b!6839497))

(assert (= (and b!6838045 ((_ is Union!16655) (regOne!33823 (regOne!33823 (regOne!33822 r!7292))))) b!6839498))

(declare-fun b!6839499 () Bool)

(declare-fun e!4125064 () Bool)

(assert (=> b!6839499 (= e!4125064 tp_is_empty!42563)))

(declare-fun b!6839500 () Bool)

(declare-fun tp!1872428 () Bool)

(declare-fun tp!1872430 () Bool)

(assert (=> b!6839500 (= e!4125064 (and tp!1872428 tp!1872430))))

(assert (=> b!6838045 (= tp!1871330 e!4125064)))

(declare-fun b!6839501 () Bool)

(declare-fun tp!1872431 () Bool)

(assert (=> b!6839501 (= e!4125064 tp!1872431)))

(declare-fun b!6839502 () Bool)

(declare-fun tp!1872429 () Bool)

(declare-fun tp!1872427 () Bool)

(assert (=> b!6839502 (= e!4125064 (and tp!1872429 tp!1872427))))

(assert (= (and b!6838045 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33823 (regOne!33822 r!7292))))) b!6839499))

(assert (= (and b!6838045 ((_ is Concat!25500) (regTwo!33823 (regOne!33823 (regOne!33822 r!7292))))) b!6839500))

(assert (= (and b!6838045 ((_ is Star!16655) (regTwo!33823 (regOne!33823 (regOne!33822 r!7292))))) b!6839501))

(assert (= (and b!6838045 ((_ is Union!16655) (regTwo!33823 (regOne!33823 (regOne!33822 r!7292))))) b!6839502))

(declare-fun b!6839503 () Bool)

(declare-fun e!4125065 () Bool)

(assert (=> b!6839503 (= e!4125065 tp_is_empty!42563)))

(declare-fun b!6839504 () Bool)

(declare-fun tp!1872433 () Bool)

(declare-fun tp!1872435 () Bool)

(assert (=> b!6839504 (= e!4125065 (and tp!1872433 tp!1872435))))

(assert (=> b!6838036 (= tp!1871324 e!4125065)))

(declare-fun b!6839505 () Bool)

(declare-fun tp!1872436 () Bool)

(assert (=> b!6839505 (= e!4125065 tp!1872436)))

(declare-fun b!6839506 () Bool)

(declare-fun tp!1872434 () Bool)

(declare-fun tp!1872432 () Bool)

(assert (=> b!6839506 (= e!4125065 (and tp!1872434 tp!1872432))))

(assert (= (and b!6838036 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33823 (reg!16984 r!7292))))) b!6839503))

(assert (= (and b!6838036 ((_ is Concat!25500) (reg!16984 (regTwo!33823 (reg!16984 r!7292))))) b!6839504))

(assert (= (and b!6838036 ((_ is Star!16655) (reg!16984 (regTwo!33823 (reg!16984 r!7292))))) b!6839505))

(assert (= (and b!6838036 ((_ is Union!16655) (reg!16984 (regTwo!33823 (reg!16984 r!7292))))) b!6839506))

(declare-fun b!6839507 () Bool)

(declare-fun e!4125066 () Bool)

(assert (=> b!6839507 (= e!4125066 tp_is_empty!42563)))

(declare-fun b!6839508 () Bool)

(declare-fun tp!1872438 () Bool)

(declare-fun tp!1872440 () Bool)

(assert (=> b!6839508 (= e!4125066 (and tp!1872438 tp!1872440))))

(assert (=> b!6838084 (= tp!1871383 e!4125066)))

(declare-fun b!6839509 () Bool)

(declare-fun tp!1872441 () Bool)

(assert (=> b!6839509 (= e!4125066 tp!1872441)))

(declare-fun b!6839510 () Bool)

(declare-fun tp!1872439 () Bool)

(declare-fun tp!1872437 () Bool)

(assert (=> b!6839510 (= e!4125066 (and tp!1872439 tp!1872437))))

(assert (= (and b!6838084 ((_ is ElementMatch!16655) (regOne!33822 (reg!16984 (regTwo!33822 r!7292))))) b!6839507))

(assert (= (and b!6838084 ((_ is Concat!25500) (regOne!33822 (reg!16984 (regTwo!33822 r!7292))))) b!6839508))

(assert (= (and b!6838084 ((_ is Star!16655) (regOne!33822 (reg!16984 (regTwo!33822 r!7292))))) b!6839509))

(assert (= (and b!6838084 ((_ is Union!16655) (regOne!33822 (reg!16984 (regTwo!33822 r!7292))))) b!6839510))

(declare-fun b!6839511 () Bool)

(declare-fun e!4125067 () Bool)

(assert (=> b!6839511 (= e!4125067 tp_is_empty!42563)))

(declare-fun b!6839512 () Bool)

(declare-fun tp!1872443 () Bool)

(declare-fun tp!1872445 () Bool)

(assert (=> b!6839512 (= e!4125067 (and tp!1872443 tp!1872445))))

(assert (=> b!6838084 (= tp!1871385 e!4125067)))

(declare-fun b!6839513 () Bool)

(declare-fun tp!1872446 () Bool)

(assert (=> b!6839513 (= e!4125067 tp!1872446)))

(declare-fun b!6839514 () Bool)

(declare-fun tp!1872444 () Bool)

(declare-fun tp!1872442 () Bool)

(assert (=> b!6839514 (= e!4125067 (and tp!1872444 tp!1872442))))

(assert (= (and b!6838084 ((_ is ElementMatch!16655) (regTwo!33822 (reg!16984 (regTwo!33822 r!7292))))) b!6839511))

(assert (= (and b!6838084 ((_ is Concat!25500) (regTwo!33822 (reg!16984 (regTwo!33822 r!7292))))) b!6839512))

(assert (= (and b!6838084 ((_ is Star!16655) (regTwo!33822 (reg!16984 (regTwo!33822 r!7292))))) b!6839513))

(assert (= (and b!6838084 ((_ is Union!16655) (regTwo!33822 (reg!16984 (regTwo!33822 r!7292))))) b!6839514))

(declare-fun b!6839515 () Bool)

(declare-fun e!4125068 () Bool)

(assert (=> b!6839515 (= e!4125068 tp_is_empty!42563)))

(declare-fun b!6839516 () Bool)

(declare-fun tp!1872448 () Bool)

(declare-fun tp!1872450 () Bool)

(assert (=> b!6839516 (= e!4125068 (and tp!1872448 tp!1872450))))

(assert (=> b!6838027 (= tp!1871311 e!4125068)))

(declare-fun b!6839517 () Bool)

(declare-fun tp!1872451 () Bool)

(assert (=> b!6839517 (= e!4125068 tp!1872451)))

(declare-fun b!6839518 () Bool)

(declare-fun tp!1872449 () Bool)

(declare-fun tp!1872447 () Bool)

(assert (=> b!6839518 (= e!4125068 (and tp!1872449 tp!1872447))))

(assert (= (and b!6838027 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33822 (regOne!33822 r!7292))))) b!6839515))

(assert (= (and b!6838027 ((_ is Concat!25500) (regOne!33822 (regTwo!33822 (regOne!33822 r!7292))))) b!6839516))

(assert (= (and b!6838027 ((_ is Star!16655) (regOne!33822 (regTwo!33822 (regOne!33822 r!7292))))) b!6839517))

(assert (= (and b!6838027 ((_ is Union!16655) (regOne!33822 (regTwo!33822 (regOne!33822 r!7292))))) b!6839518))

(declare-fun b!6839519 () Bool)

(declare-fun e!4125069 () Bool)

(assert (=> b!6839519 (= e!4125069 tp_is_empty!42563)))

(declare-fun b!6839520 () Bool)

(declare-fun tp!1872453 () Bool)

(declare-fun tp!1872455 () Bool)

(assert (=> b!6839520 (= e!4125069 (and tp!1872453 tp!1872455))))

(assert (=> b!6838027 (= tp!1871313 e!4125069)))

(declare-fun b!6839521 () Bool)

(declare-fun tp!1872456 () Bool)

(assert (=> b!6839521 (= e!4125069 tp!1872456)))

(declare-fun b!6839522 () Bool)

(declare-fun tp!1872454 () Bool)

(declare-fun tp!1872452 () Bool)

(assert (=> b!6839522 (= e!4125069 (and tp!1872454 tp!1872452))))

(assert (= (and b!6838027 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33822 (regOne!33822 r!7292))))) b!6839519))

(assert (= (and b!6838027 ((_ is Concat!25500) (regTwo!33822 (regTwo!33822 (regOne!33822 r!7292))))) b!6839520))

(assert (= (and b!6838027 ((_ is Star!16655) (regTwo!33822 (regTwo!33822 (regOne!33822 r!7292))))) b!6839521))

(assert (= (and b!6838027 ((_ is Union!16655) (regTwo!33822 (regTwo!33822 (regOne!33822 r!7292))))) b!6839522))

(declare-fun b!6839523 () Bool)

(declare-fun e!4125070 () Bool)

(assert (=> b!6839523 (= e!4125070 tp_is_empty!42563)))

(declare-fun b!6839524 () Bool)

(declare-fun tp!1872458 () Bool)

(declare-fun tp!1872460 () Bool)

(assert (=> b!6839524 (= e!4125070 (and tp!1872458 tp!1872460))))

(assert (=> b!6838094 (= tp!1871398 e!4125070)))

(declare-fun b!6839525 () Bool)

(declare-fun tp!1872461 () Bool)

(assert (=> b!6839525 (= e!4125070 tp!1872461)))

(declare-fun b!6839526 () Bool)

(declare-fun tp!1872459 () Bool)

(declare-fun tp!1872457 () Bool)

(assert (=> b!6839526 (= e!4125070 (and tp!1872459 tp!1872457))))

(assert (= (and b!6838094 ((_ is ElementMatch!16655) (reg!16984 (regOne!33822 (regTwo!33822 r!7292))))) b!6839523))

(assert (= (and b!6838094 ((_ is Concat!25500) (reg!16984 (regOne!33822 (regTwo!33822 r!7292))))) b!6839524))

(assert (= (and b!6838094 ((_ is Star!16655) (reg!16984 (regOne!33822 (regTwo!33822 r!7292))))) b!6839525))

(assert (= (and b!6838094 ((_ is Union!16655) (reg!16984 (regOne!33822 (regTwo!33822 r!7292))))) b!6839526))

(declare-fun b!6839527 () Bool)

(declare-fun e!4125071 () Bool)

(assert (=> b!6839527 (= e!4125071 tp_is_empty!42563)))

(declare-fun b!6839528 () Bool)

(declare-fun tp!1872463 () Bool)

(declare-fun tp!1872465 () Bool)

(assert (=> b!6839528 (= e!4125071 (and tp!1872463 tp!1872465))))

(assert (=> b!6837990 (= tp!1871265 e!4125071)))

(declare-fun b!6839529 () Bool)

(declare-fun tp!1872466 () Bool)

(assert (=> b!6839529 (= e!4125071 tp!1872466)))

(declare-fun b!6839530 () Bool)

(declare-fun tp!1872464 () Bool)

(declare-fun tp!1872462 () Bool)

(assert (=> b!6839530 (= e!4125071 (and tp!1872464 tp!1872462))))

(assert (= (and b!6837990 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839527))

(assert (= (and b!6837990 ((_ is Concat!25500) (reg!16984 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839528))

(assert (= (and b!6837990 ((_ is Star!16655) (reg!16984 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839529))

(assert (= (and b!6837990 ((_ is Union!16655) (reg!16984 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839530))

(declare-fun b!6839531 () Bool)

(declare-fun e!4125072 () Bool)

(assert (=> b!6839531 (= e!4125072 tp_is_empty!42563)))

(declare-fun b!6839532 () Bool)

(declare-fun tp!1872468 () Bool)

(declare-fun tp!1872470 () Bool)

(assert (=> b!6839532 (= e!4125072 (and tp!1872468 tp!1872470))))

(assert (=> b!6838086 (= tp!1871384 e!4125072)))

(declare-fun b!6839533 () Bool)

(declare-fun tp!1872471 () Bool)

(assert (=> b!6839533 (= e!4125072 tp!1872471)))

(declare-fun b!6839534 () Bool)

(declare-fun tp!1872469 () Bool)

(declare-fun tp!1872467 () Bool)

(assert (=> b!6839534 (= e!4125072 (and tp!1872469 tp!1872467))))

(assert (= (and b!6838086 ((_ is ElementMatch!16655) (regOne!33823 (reg!16984 (regTwo!33822 r!7292))))) b!6839531))

(assert (= (and b!6838086 ((_ is Concat!25500) (regOne!33823 (reg!16984 (regTwo!33822 r!7292))))) b!6839532))

(assert (= (and b!6838086 ((_ is Star!16655) (regOne!33823 (reg!16984 (regTwo!33822 r!7292))))) b!6839533))

(assert (= (and b!6838086 ((_ is Union!16655) (regOne!33823 (reg!16984 (regTwo!33822 r!7292))))) b!6839534))

(declare-fun b!6839535 () Bool)

(declare-fun e!4125073 () Bool)

(assert (=> b!6839535 (= e!4125073 tp_is_empty!42563)))

(declare-fun b!6839536 () Bool)

(declare-fun tp!1872473 () Bool)

(declare-fun tp!1872475 () Bool)

(assert (=> b!6839536 (= e!4125073 (and tp!1872473 tp!1872475))))

(assert (=> b!6838086 (= tp!1871382 e!4125073)))

(declare-fun b!6839537 () Bool)

(declare-fun tp!1872476 () Bool)

(assert (=> b!6839537 (= e!4125073 tp!1872476)))

(declare-fun b!6839538 () Bool)

(declare-fun tp!1872474 () Bool)

(declare-fun tp!1872472 () Bool)

(assert (=> b!6839538 (= e!4125073 (and tp!1872474 tp!1872472))))

(assert (= (and b!6838086 ((_ is ElementMatch!16655) (regTwo!33823 (reg!16984 (regTwo!33822 r!7292))))) b!6839535))

(assert (= (and b!6838086 ((_ is Concat!25500) (regTwo!33823 (reg!16984 (regTwo!33822 r!7292))))) b!6839536))

(assert (= (and b!6838086 ((_ is Star!16655) (regTwo!33823 (reg!16984 (regTwo!33822 r!7292))))) b!6839537))

(assert (= (and b!6838086 ((_ is Union!16655) (regTwo!33823 (reg!16984 (regTwo!33822 r!7292))))) b!6839538))

(declare-fun b!6839539 () Bool)

(declare-fun e!4125074 () Bool)

(assert (=> b!6839539 (= e!4125074 tp_is_empty!42563)))

(declare-fun b!6839540 () Bool)

(declare-fun tp!1872478 () Bool)

(declare-fun tp!1872480 () Bool)

(assert (=> b!6839540 (= e!4125074 (and tp!1872478 tp!1872480))))

(assert (=> b!6838029 (= tp!1871312 e!4125074)))

(declare-fun b!6839541 () Bool)

(declare-fun tp!1872481 () Bool)

(assert (=> b!6839541 (= e!4125074 tp!1872481)))

(declare-fun b!6839542 () Bool)

(declare-fun tp!1872479 () Bool)

(declare-fun tp!1872477 () Bool)

(assert (=> b!6839542 (= e!4125074 (and tp!1872479 tp!1872477))))

(assert (= (and b!6838029 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33822 (regOne!33822 r!7292))))) b!6839539))

(assert (= (and b!6838029 ((_ is Concat!25500) (regOne!33823 (regTwo!33822 (regOne!33822 r!7292))))) b!6839540))

(assert (= (and b!6838029 ((_ is Star!16655) (regOne!33823 (regTwo!33822 (regOne!33822 r!7292))))) b!6839541))

(assert (= (and b!6838029 ((_ is Union!16655) (regOne!33823 (regTwo!33822 (regOne!33822 r!7292))))) b!6839542))

(declare-fun b!6839543 () Bool)

(declare-fun e!4125075 () Bool)

(assert (=> b!6839543 (= e!4125075 tp_is_empty!42563)))

(declare-fun b!6839544 () Bool)

(declare-fun tp!1872483 () Bool)

(declare-fun tp!1872485 () Bool)

(assert (=> b!6839544 (= e!4125075 (and tp!1872483 tp!1872485))))

(assert (=> b!6838029 (= tp!1871310 e!4125075)))

(declare-fun b!6839545 () Bool)

(declare-fun tp!1872486 () Bool)

(assert (=> b!6839545 (= e!4125075 tp!1872486)))

(declare-fun b!6839546 () Bool)

(declare-fun tp!1872484 () Bool)

(declare-fun tp!1872482 () Bool)

(assert (=> b!6839546 (= e!4125075 (and tp!1872484 tp!1872482))))

(assert (= (and b!6838029 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33822 (regOne!33822 r!7292))))) b!6839543))

(assert (= (and b!6838029 ((_ is Concat!25500) (regTwo!33823 (regTwo!33822 (regOne!33822 r!7292))))) b!6839544))

(assert (= (and b!6838029 ((_ is Star!16655) (regTwo!33823 (regTwo!33822 (regOne!33822 r!7292))))) b!6839545))

(assert (= (and b!6838029 ((_ is Union!16655) (regTwo!33823 (regTwo!33822 (regOne!33822 r!7292))))) b!6839546))

(declare-fun b!6839547 () Bool)

(declare-fun e!4125076 () Bool)

(assert (=> b!6839547 (= e!4125076 tp_is_empty!42563)))

(declare-fun b!6839548 () Bool)

(declare-fun tp!1872488 () Bool)

(declare-fun tp!1872490 () Bool)

(assert (=> b!6839548 (= e!4125076 (and tp!1872488 tp!1872490))))

(assert (=> b!6838077 (= tp!1871376 e!4125076)))

(declare-fun b!6839549 () Bool)

(declare-fun tp!1872491 () Bool)

(assert (=> b!6839549 (= e!4125076 tp!1872491)))

(declare-fun b!6839550 () Bool)

(declare-fun tp!1872489 () Bool)

(declare-fun tp!1872487 () Bool)

(assert (=> b!6839550 (= e!4125076 (and tp!1872489 tp!1872487))))

(assert (= (and b!6838077 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839547))

(assert (= (and b!6838077 ((_ is Concat!25500) (reg!16984 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839548))

(assert (= (and b!6838077 ((_ is Star!16655) (reg!16984 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839549))

(assert (= (and b!6838077 ((_ is Union!16655) (reg!16984 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839550))

(declare-fun b!6839552 () Bool)

(declare-fun e!4125078 () Bool)

(declare-fun tp!1872492 () Bool)

(assert (=> b!6839552 (= e!4125078 tp!1872492)))

(declare-fun b!6839551 () Bool)

(declare-fun tp!1872493 () Bool)

(declare-fun e!4125077 () Bool)

(assert (=> b!6839551 (= e!4125077 (and (inv!84884 (h!72589 (t!380008 (t!380008 (t!380008 zl!343))))) e!4125078 tp!1872493))))

(assert (=> b!6838063 (= tp!1871358 e!4125077)))

(assert (= b!6839551 b!6839552))

(assert (= (and b!6838063 ((_ is Cons!66141) (t!380008 (t!380008 (t!380008 zl!343))))) b!6839551))

(declare-fun m!7583412 () Bool)

(assert (=> b!6839551 m!7583412))

(declare-fun b!6839553 () Bool)

(declare-fun e!4125079 () Bool)

(assert (=> b!6839553 (= e!4125079 tp_is_empty!42563)))

(declare-fun b!6839554 () Bool)

(declare-fun tp!1872495 () Bool)

(declare-fun tp!1872497 () Bool)

(assert (=> b!6839554 (= e!4125079 (and tp!1872495 tp!1872497))))

(assert (=> b!6838055 (= tp!1871346 e!4125079)))

(declare-fun b!6839555 () Bool)

(declare-fun tp!1872498 () Bool)

(assert (=> b!6839555 (= e!4125079 tp!1872498)))

(declare-fun b!6839556 () Bool)

(declare-fun tp!1872496 () Bool)

(declare-fun tp!1872494 () Bool)

(assert (=> b!6839556 (= e!4125079 (and tp!1872496 tp!1872494))))

(assert (= (and b!6838055 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33822 (regTwo!33823 r!7292))))) b!6839553))

(assert (= (and b!6838055 ((_ is Concat!25500) (regOne!33822 (regOne!33822 (regTwo!33823 r!7292))))) b!6839554))

(assert (= (and b!6838055 ((_ is Star!16655) (regOne!33822 (regOne!33822 (regTwo!33823 r!7292))))) b!6839555))

(assert (= (and b!6838055 ((_ is Union!16655) (regOne!33822 (regOne!33822 (regTwo!33823 r!7292))))) b!6839556))

(declare-fun b!6839557 () Bool)

(declare-fun e!4125080 () Bool)

(assert (=> b!6839557 (= e!4125080 tp_is_empty!42563)))

(declare-fun b!6839558 () Bool)

(declare-fun tp!1872500 () Bool)

(declare-fun tp!1872502 () Bool)

(assert (=> b!6839558 (= e!4125080 (and tp!1872500 tp!1872502))))

(assert (=> b!6838055 (= tp!1871348 e!4125080)))

(declare-fun b!6839559 () Bool)

(declare-fun tp!1872503 () Bool)

(assert (=> b!6839559 (= e!4125080 tp!1872503)))

(declare-fun b!6839560 () Bool)

(declare-fun tp!1872501 () Bool)

(declare-fun tp!1872499 () Bool)

(assert (=> b!6839560 (= e!4125080 (and tp!1872501 tp!1872499))))

(assert (= (and b!6838055 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33822 (regTwo!33823 r!7292))))) b!6839557))

(assert (= (and b!6838055 ((_ is Concat!25500) (regTwo!33822 (regOne!33822 (regTwo!33823 r!7292))))) b!6839558))

(assert (= (and b!6838055 ((_ is Star!16655) (regTwo!33822 (regOne!33822 (regTwo!33823 r!7292))))) b!6839559))

(assert (= (and b!6838055 ((_ is Union!16655) (regTwo!33822 (regOne!33822 (regTwo!33823 r!7292))))) b!6839560))

(declare-fun b!6839561 () Bool)

(declare-fun e!4125081 () Bool)

(assert (=> b!6839561 (= e!4125081 tp_is_empty!42563)))

(declare-fun b!6839562 () Bool)

(declare-fun tp!1872505 () Bool)

(declare-fun tp!1872507 () Bool)

(assert (=> b!6839562 (= e!4125081 (and tp!1872505 tp!1872507))))

(assert (=> b!6838095 (= tp!1871396 e!4125081)))

(declare-fun b!6839563 () Bool)

(declare-fun tp!1872508 () Bool)

(assert (=> b!6839563 (= e!4125081 tp!1872508)))

(declare-fun b!6839564 () Bool)

(declare-fun tp!1872506 () Bool)

(declare-fun tp!1872504 () Bool)

(assert (=> b!6839564 (= e!4125081 (and tp!1872506 tp!1872504))))

(assert (= (and b!6838095 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33822 (regTwo!33822 r!7292))))) b!6839561))

(assert (= (and b!6838095 ((_ is Concat!25500) (regOne!33823 (regOne!33822 (regTwo!33822 r!7292))))) b!6839562))

(assert (= (and b!6838095 ((_ is Star!16655) (regOne!33823 (regOne!33822 (regTwo!33822 r!7292))))) b!6839563))

(assert (= (and b!6838095 ((_ is Union!16655) (regOne!33823 (regOne!33822 (regTwo!33822 r!7292))))) b!6839564))

(declare-fun b!6839565 () Bool)

(declare-fun e!4125082 () Bool)

(assert (=> b!6839565 (= e!4125082 tp_is_empty!42563)))

(declare-fun b!6839566 () Bool)

(declare-fun tp!1872510 () Bool)

(declare-fun tp!1872512 () Bool)

(assert (=> b!6839566 (= e!4125082 (and tp!1872510 tp!1872512))))

(assert (=> b!6838095 (= tp!1871394 e!4125082)))

(declare-fun b!6839567 () Bool)

(declare-fun tp!1872513 () Bool)

(assert (=> b!6839567 (= e!4125082 tp!1872513)))

(declare-fun b!6839568 () Bool)

(declare-fun tp!1872511 () Bool)

(declare-fun tp!1872509 () Bool)

(assert (=> b!6839568 (= e!4125082 (and tp!1872511 tp!1872509))))

(assert (= (and b!6838095 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33822 (regTwo!33822 r!7292))))) b!6839565))

(assert (= (and b!6838095 ((_ is Concat!25500) (regTwo!33823 (regOne!33822 (regTwo!33822 r!7292))))) b!6839566))

(assert (= (and b!6838095 ((_ is Star!16655) (regTwo!33823 (regOne!33822 (regTwo!33822 r!7292))))) b!6839567))

(assert (= (and b!6838095 ((_ is Union!16655) (regTwo!33823 (regOne!33822 (regTwo!33822 r!7292))))) b!6839568))

(declare-fun b!6839569 () Bool)

(declare-fun e!4125083 () Bool)

(assert (=> b!6839569 (= e!4125083 tp_is_empty!42563)))

(declare-fun b!6839570 () Bool)

(declare-fun tp!1872515 () Bool)

(declare-fun tp!1872517 () Bool)

(assert (=> b!6839570 (= e!4125083 (and tp!1872515 tp!1872517))))

(assert (=> b!6838048 (= tp!1871339 e!4125083)))

(declare-fun b!6839571 () Bool)

(declare-fun tp!1872518 () Bool)

(assert (=> b!6839571 (= e!4125083 tp!1872518)))

(declare-fun b!6839572 () Bool)

(declare-fun tp!1872516 () Bool)

(declare-fun tp!1872514 () Bool)

(assert (=> b!6839572 (= e!4125083 (and tp!1872516 tp!1872514))))

(assert (= (and b!6838048 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33823 (regOne!33822 r!7292))))) b!6839569))

(assert (= (and b!6838048 ((_ is Concat!25500) (reg!16984 (regTwo!33823 (regOne!33822 r!7292))))) b!6839570))

(assert (= (and b!6838048 ((_ is Star!16655) (reg!16984 (regTwo!33823 (regOne!33822 r!7292))))) b!6839571))

(assert (= (and b!6838048 ((_ is Union!16655) (reg!16984 (regTwo!33823 (regOne!33822 r!7292))))) b!6839572))

(declare-fun b!6839573 () Bool)

(declare-fun e!4125084 () Bool)

(assert (=> b!6839573 (= e!4125084 tp_is_empty!42563)))

(declare-fun b!6839574 () Bool)

(declare-fun tp!1872520 () Bool)

(declare-fun tp!1872522 () Bool)

(assert (=> b!6839574 (= e!4125084 (and tp!1872520 tp!1872522))))

(assert (=> b!6838039 (= tp!1871326 e!4125084)))

(declare-fun b!6839575 () Bool)

(declare-fun tp!1872523 () Bool)

(assert (=> b!6839575 (= e!4125084 tp!1872523)))

(declare-fun b!6839576 () Bool)

(declare-fun tp!1872521 () Bool)

(declare-fun tp!1872519 () Bool)

(assert (=> b!6839576 (= e!4125084 (and tp!1872521 tp!1872519))))

(assert (= (and b!6838039 ((_ is ElementMatch!16655) (regOne!33822 (reg!16984 (reg!16984 r!7292))))) b!6839573))

(assert (= (and b!6838039 ((_ is Concat!25500) (regOne!33822 (reg!16984 (reg!16984 r!7292))))) b!6839574))

(assert (= (and b!6838039 ((_ is Star!16655) (regOne!33822 (reg!16984 (reg!16984 r!7292))))) b!6839575))

(assert (= (and b!6838039 ((_ is Union!16655) (regOne!33822 (reg!16984 (reg!16984 r!7292))))) b!6839576))

(declare-fun b!6839577 () Bool)

(declare-fun e!4125085 () Bool)

(assert (=> b!6839577 (= e!4125085 tp_is_empty!42563)))

(declare-fun b!6839578 () Bool)

(declare-fun tp!1872525 () Bool)

(declare-fun tp!1872527 () Bool)

(assert (=> b!6839578 (= e!4125085 (and tp!1872525 tp!1872527))))

(assert (=> b!6838039 (= tp!1871328 e!4125085)))

(declare-fun b!6839579 () Bool)

(declare-fun tp!1872528 () Bool)

(assert (=> b!6839579 (= e!4125085 tp!1872528)))

(declare-fun b!6839580 () Bool)

(declare-fun tp!1872526 () Bool)

(declare-fun tp!1872524 () Bool)

(assert (=> b!6839580 (= e!4125085 (and tp!1872526 tp!1872524))))

(assert (= (and b!6838039 ((_ is ElementMatch!16655) (regTwo!33822 (reg!16984 (reg!16984 r!7292))))) b!6839577))

(assert (= (and b!6838039 ((_ is Concat!25500) (regTwo!33822 (reg!16984 (reg!16984 r!7292))))) b!6839578))

(assert (= (and b!6838039 ((_ is Star!16655) (regTwo!33822 (reg!16984 (reg!16984 r!7292))))) b!6839579))

(assert (= (and b!6838039 ((_ is Union!16655) (regTwo!33822 (reg!16984 (reg!16984 r!7292))))) b!6839580))

(declare-fun b!6839581 () Bool)

(declare-fun e!4125086 () Bool)

(assert (=> b!6839581 (= e!4125086 tp_is_empty!42563)))

(declare-fun b!6839582 () Bool)

(declare-fun tp!1872530 () Bool)

(declare-fun tp!1872532 () Bool)

(assert (=> b!6839582 (= e!4125086 (and tp!1872530 tp!1872532))))

(assert (=> b!6838018 (= tp!1871300 e!4125086)))

(declare-fun b!6839583 () Bool)

(declare-fun tp!1872533 () Bool)

(assert (=> b!6839583 (= e!4125086 tp!1872533)))

(declare-fun b!6839584 () Bool)

(declare-fun tp!1872531 () Bool)

(declare-fun tp!1872529 () Bool)

(assert (=> b!6839584 (= e!4125086 (and tp!1872531 tp!1872529))))

(assert (= (and b!6838018 ((_ is ElementMatch!16655) (reg!16984 (reg!16984 (regOne!33823 r!7292))))) b!6839581))

(assert (= (and b!6838018 ((_ is Concat!25500) (reg!16984 (reg!16984 (regOne!33823 r!7292))))) b!6839582))

(assert (= (and b!6838018 ((_ is Star!16655) (reg!16984 (reg!16984 (regOne!33823 r!7292))))) b!6839583))

(assert (= (and b!6838018 ((_ is Union!16655) (reg!16984 (reg!16984 (regOne!33823 r!7292))))) b!6839584))

(declare-fun b!6839585 () Bool)

(declare-fun e!4125087 () Bool)

(assert (=> b!6839585 (= e!4125087 tp_is_empty!42563)))

(declare-fun b!6839586 () Bool)

(declare-fun tp!1872535 () Bool)

(declare-fun tp!1872537 () Bool)

(assert (=> b!6839586 (= e!4125087 (and tp!1872535 tp!1872537))))

(assert (=> b!6838009 (= tp!1871287 e!4125087)))

(declare-fun b!6839587 () Bool)

(declare-fun tp!1872538 () Bool)

(assert (=> b!6839587 (= e!4125087 tp!1872538)))

(declare-fun b!6839588 () Bool)

(declare-fun tp!1872536 () Bool)

(declare-fun tp!1872534 () Bool)

(assert (=> b!6839588 (= e!4125087 (and tp!1872536 tp!1872534))))

(assert (= (and b!6838009 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33823 (regOne!33823 r!7292))))) b!6839585))

(assert (= (and b!6838009 ((_ is Concat!25500) (regOne!33822 (regOne!33823 (regOne!33823 r!7292))))) b!6839586))

(assert (= (and b!6838009 ((_ is Star!16655) (regOne!33822 (regOne!33823 (regOne!33823 r!7292))))) b!6839587))

(assert (= (and b!6838009 ((_ is Union!16655) (regOne!33822 (regOne!33823 (regOne!33823 r!7292))))) b!6839588))

(declare-fun b!6839589 () Bool)

(declare-fun e!4125088 () Bool)

(assert (=> b!6839589 (= e!4125088 tp_is_empty!42563)))

(declare-fun b!6839590 () Bool)

(declare-fun tp!1872540 () Bool)

(declare-fun tp!1872542 () Bool)

(assert (=> b!6839590 (= e!4125088 (and tp!1872540 tp!1872542))))

(assert (=> b!6838009 (= tp!1871289 e!4125088)))

(declare-fun b!6839591 () Bool)

(declare-fun tp!1872543 () Bool)

(assert (=> b!6839591 (= e!4125088 tp!1872543)))

(declare-fun b!6839592 () Bool)

(declare-fun tp!1872541 () Bool)

(declare-fun tp!1872539 () Bool)

(assert (=> b!6839592 (= e!4125088 (and tp!1872541 tp!1872539))))

(assert (= (and b!6838009 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33823 (regOne!33823 r!7292))))) b!6839589))

(assert (= (and b!6838009 ((_ is Concat!25500) (regTwo!33822 (regOne!33823 (regOne!33823 r!7292))))) b!6839590))

(assert (= (and b!6838009 ((_ is Star!16655) (regTwo!33822 (regOne!33823 (regOne!33823 r!7292))))) b!6839591))

(assert (= (and b!6838009 ((_ is Union!16655) (regTwo!33822 (regOne!33823 (regOne!33823 r!7292))))) b!6839592))

(declare-fun b!6839593 () Bool)

(declare-fun e!4125089 () Bool)

(assert (=> b!6839593 (= e!4125089 tp_is_empty!42563)))

(declare-fun b!6839594 () Bool)

(declare-fun tp!1872545 () Bool)

(declare-fun tp!1872547 () Bool)

(assert (=> b!6839594 (= e!4125089 (and tp!1872545 tp!1872547))))

(assert (=> b!6838057 (= tp!1871347 e!4125089)))

(declare-fun b!6839595 () Bool)

(declare-fun tp!1872548 () Bool)

(assert (=> b!6839595 (= e!4125089 tp!1872548)))

(declare-fun b!6839596 () Bool)

(declare-fun tp!1872546 () Bool)

(declare-fun tp!1872544 () Bool)

(assert (=> b!6839596 (= e!4125089 (and tp!1872546 tp!1872544))))

(assert (= (and b!6838057 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33822 (regTwo!33823 r!7292))))) b!6839593))

(assert (= (and b!6838057 ((_ is Concat!25500) (regOne!33823 (regOne!33822 (regTwo!33823 r!7292))))) b!6839594))

(assert (= (and b!6838057 ((_ is Star!16655) (regOne!33823 (regOne!33822 (regTwo!33823 r!7292))))) b!6839595))

(assert (= (and b!6838057 ((_ is Union!16655) (regOne!33823 (regOne!33822 (regTwo!33823 r!7292))))) b!6839596))

(declare-fun b!6839597 () Bool)

(declare-fun e!4125090 () Bool)

(assert (=> b!6839597 (= e!4125090 tp_is_empty!42563)))

(declare-fun b!6839598 () Bool)

(declare-fun tp!1872550 () Bool)

(declare-fun tp!1872552 () Bool)

(assert (=> b!6839598 (= e!4125090 (and tp!1872550 tp!1872552))))

(assert (=> b!6838057 (= tp!1871345 e!4125090)))

(declare-fun b!6839599 () Bool)

(declare-fun tp!1872553 () Bool)

(assert (=> b!6839599 (= e!4125090 tp!1872553)))

(declare-fun b!6839600 () Bool)

(declare-fun tp!1872551 () Bool)

(declare-fun tp!1872549 () Bool)

(assert (=> b!6839600 (= e!4125090 (and tp!1872551 tp!1872549))))

(assert (= (and b!6838057 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33822 (regTwo!33823 r!7292))))) b!6839597))

(assert (= (and b!6838057 ((_ is Concat!25500) (regTwo!33823 (regOne!33822 (regTwo!33823 r!7292))))) b!6839598))

(assert (= (and b!6838057 ((_ is Star!16655) (regTwo!33823 (regOne!33822 (regTwo!33823 r!7292))))) b!6839599))

(assert (= (and b!6838057 ((_ is Union!16655) (regTwo!33823 (regOne!33822 (regTwo!33823 r!7292))))) b!6839600))

(declare-fun b!6839601 () Bool)

(declare-fun e!4125091 () Bool)

(assert (=> b!6839601 (= e!4125091 tp_is_empty!42563)))

(declare-fun b!6839602 () Bool)

(declare-fun tp!1872555 () Bool)

(declare-fun tp!1872557 () Bool)

(assert (=> b!6839602 (= e!4125091 (and tp!1872555 tp!1872557))))

(assert (=> b!6838032 (= tp!1871319 e!4125091)))

(declare-fun b!6839603 () Bool)

(declare-fun tp!1872558 () Bool)

(assert (=> b!6839603 (= e!4125091 tp!1872558)))

(declare-fun b!6839604 () Bool)

(declare-fun tp!1872556 () Bool)

(declare-fun tp!1872554 () Bool)

(assert (=> b!6839604 (= e!4125091 (and tp!1872556 tp!1872554))))

(assert (= (and b!6838032 ((_ is ElementMatch!16655) (reg!16984 (regOne!33823 (reg!16984 r!7292))))) b!6839601))

(assert (= (and b!6838032 ((_ is Concat!25500) (reg!16984 (regOne!33823 (reg!16984 r!7292))))) b!6839602))

(assert (= (and b!6838032 ((_ is Star!16655) (reg!16984 (regOne!33823 (reg!16984 r!7292))))) b!6839603))

(assert (= (and b!6838032 ((_ is Union!16655) (reg!16984 (regOne!33823 (reg!16984 r!7292))))) b!6839604))

(declare-fun b!6839605 () Bool)

(declare-fun e!4125092 () Bool)

(assert (=> b!6839605 (= e!4125092 tp_is_empty!42563)))

(declare-fun b!6839606 () Bool)

(declare-fun tp!1872560 () Bool)

(declare-fun tp!1872562 () Bool)

(assert (=> b!6839606 (= e!4125092 (and tp!1872560 tp!1872562))))

(assert (=> b!6838080 (= tp!1871378 e!4125092)))

(declare-fun b!6839607 () Bool)

(declare-fun tp!1872563 () Bool)

(assert (=> b!6839607 (= e!4125092 tp!1872563)))

(declare-fun b!6839608 () Bool)

(declare-fun tp!1872561 () Bool)

(declare-fun tp!1872559 () Bool)

(assert (=> b!6839608 (= e!4125092 (and tp!1872561 tp!1872559))))

(assert (= (and b!6838080 ((_ is ElementMatch!16655) (regOne!33822 (reg!16984 (regTwo!33823 r!7292))))) b!6839605))

(assert (= (and b!6838080 ((_ is Concat!25500) (regOne!33822 (reg!16984 (regTwo!33823 r!7292))))) b!6839606))

(assert (= (and b!6838080 ((_ is Star!16655) (regOne!33822 (reg!16984 (regTwo!33823 r!7292))))) b!6839607))

(assert (= (and b!6838080 ((_ is Union!16655) (regOne!33822 (reg!16984 (regTwo!33823 r!7292))))) b!6839608))

(declare-fun b!6839609 () Bool)

(declare-fun e!4125093 () Bool)

(assert (=> b!6839609 (= e!4125093 tp_is_empty!42563)))

(declare-fun b!6839610 () Bool)

(declare-fun tp!1872565 () Bool)

(declare-fun tp!1872567 () Bool)

(assert (=> b!6839610 (= e!4125093 (and tp!1872565 tp!1872567))))

(assert (=> b!6838080 (= tp!1871380 e!4125093)))

(declare-fun b!6839611 () Bool)

(declare-fun tp!1872568 () Bool)

(assert (=> b!6839611 (= e!4125093 tp!1872568)))

(declare-fun b!6839612 () Bool)

(declare-fun tp!1872566 () Bool)

(declare-fun tp!1872564 () Bool)

(assert (=> b!6839612 (= e!4125093 (and tp!1872566 tp!1872564))))

(assert (= (and b!6838080 ((_ is ElementMatch!16655) (regTwo!33822 (reg!16984 (regTwo!33823 r!7292))))) b!6839609))

(assert (= (and b!6838080 ((_ is Concat!25500) (regTwo!33822 (reg!16984 (regTwo!33823 r!7292))))) b!6839610))

(assert (= (and b!6838080 ((_ is Star!16655) (regTwo!33822 (reg!16984 (regTwo!33823 r!7292))))) b!6839611))

(assert (= (and b!6838080 ((_ is Union!16655) (regTwo!33822 (reg!16984 (regTwo!33823 r!7292))))) b!6839612))

(declare-fun b!6839613 () Bool)

(declare-fun e!4125094 () Bool)

(assert (=> b!6839613 (= e!4125094 tp_is_empty!42563)))

(declare-fun b!6839614 () Bool)

(declare-fun tp!1872570 () Bool)

(declare-fun tp!1872572 () Bool)

(assert (=> b!6839614 (= e!4125094 (and tp!1872570 tp!1872572))))

(assert (=> b!6838023 (= tp!1871306 e!4125094)))

(declare-fun b!6839615 () Bool)

(declare-fun tp!1872573 () Bool)

(assert (=> b!6839615 (= e!4125094 tp!1872573)))

(declare-fun b!6839616 () Bool)

(declare-fun tp!1872571 () Bool)

(declare-fun tp!1872569 () Bool)

(assert (=> b!6839616 (= e!4125094 (and tp!1872571 tp!1872569))))

(assert (= (and b!6838023 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33822 (regOne!33822 r!7292))))) b!6839613))

(assert (= (and b!6838023 ((_ is Concat!25500) (regOne!33822 (regOne!33822 (regOne!33822 r!7292))))) b!6839614))

(assert (= (and b!6838023 ((_ is Star!16655) (regOne!33822 (regOne!33822 (regOne!33822 r!7292))))) b!6839615))

(assert (= (and b!6838023 ((_ is Union!16655) (regOne!33822 (regOne!33822 (regOne!33822 r!7292))))) b!6839616))

(declare-fun b!6839617 () Bool)

(declare-fun e!4125095 () Bool)

(assert (=> b!6839617 (= e!4125095 tp_is_empty!42563)))

(declare-fun b!6839618 () Bool)

(declare-fun tp!1872575 () Bool)

(declare-fun tp!1872577 () Bool)

(assert (=> b!6839618 (= e!4125095 (and tp!1872575 tp!1872577))))

(assert (=> b!6838023 (= tp!1871308 e!4125095)))

(declare-fun b!6839619 () Bool)

(declare-fun tp!1872578 () Bool)

(assert (=> b!6839619 (= e!4125095 tp!1872578)))

(declare-fun b!6839620 () Bool)

(declare-fun tp!1872576 () Bool)

(declare-fun tp!1872574 () Bool)

(assert (=> b!6839620 (= e!4125095 (and tp!1872576 tp!1872574))))

(assert (= (and b!6838023 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33822 (regOne!33822 r!7292))))) b!6839617))

(assert (= (and b!6838023 ((_ is Concat!25500) (regTwo!33822 (regOne!33822 (regOne!33822 r!7292))))) b!6839618))

(assert (= (and b!6838023 ((_ is Star!16655) (regTwo!33822 (regOne!33822 (regOne!33822 r!7292))))) b!6839619))

(assert (= (and b!6838023 ((_ is Union!16655) (regTwo!33822 (regOne!33822 (regOne!33822 r!7292))))) b!6839620))

(declare-fun b!6839621 () Bool)

(declare-fun e!4125096 () Bool)

(declare-fun tp!1872579 () Bool)

(assert (=> b!6839621 (= e!4125096 (and tp_is_empty!42563 tp!1872579))))

(assert (=> b!6838065 (= tp!1871359 e!4125096)))

(assert (= (and b!6838065 ((_ is Cons!66142) (t!380009 (t!380009 (t!380009 s!2326))))) b!6839621))

(declare-fun b!6839622 () Bool)

(declare-fun e!4125097 () Bool)

(assert (=> b!6839622 (= e!4125097 tp_is_empty!42563)))

(declare-fun b!6839623 () Bool)

(declare-fun tp!1872581 () Bool)

(declare-fun tp!1872583 () Bool)

(assert (=> b!6839623 (= e!4125097 (and tp!1872581 tp!1872583))))

(assert (=> b!6838011 (= tp!1871288 e!4125097)))

(declare-fun b!6839624 () Bool)

(declare-fun tp!1872584 () Bool)

(assert (=> b!6839624 (= e!4125097 tp!1872584)))

(declare-fun b!6839625 () Bool)

(declare-fun tp!1872582 () Bool)

(declare-fun tp!1872580 () Bool)

(assert (=> b!6839625 (= e!4125097 (and tp!1872582 tp!1872580))))

(assert (= (and b!6838011 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33823 (regOne!33823 r!7292))))) b!6839622))

(assert (= (and b!6838011 ((_ is Concat!25500) (regOne!33823 (regOne!33823 (regOne!33823 r!7292))))) b!6839623))

(assert (= (and b!6838011 ((_ is Star!16655) (regOne!33823 (regOne!33823 (regOne!33823 r!7292))))) b!6839624))

(assert (= (and b!6838011 ((_ is Union!16655) (regOne!33823 (regOne!33823 (regOne!33823 r!7292))))) b!6839625))

(declare-fun b!6839626 () Bool)

(declare-fun e!4125098 () Bool)

(assert (=> b!6839626 (= e!4125098 tp_is_empty!42563)))

(declare-fun b!6839627 () Bool)

(declare-fun tp!1872586 () Bool)

(declare-fun tp!1872588 () Bool)

(assert (=> b!6839627 (= e!4125098 (and tp!1872586 tp!1872588))))

(assert (=> b!6838011 (= tp!1871286 e!4125098)))

(declare-fun b!6839628 () Bool)

(declare-fun tp!1872589 () Bool)

(assert (=> b!6839628 (= e!4125098 tp!1872589)))

(declare-fun b!6839629 () Bool)

(declare-fun tp!1872587 () Bool)

(declare-fun tp!1872585 () Bool)

(assert (=> b!6839629 (= e!4125098 (and tp!1872587 tp!1872585))))

(assert (= (and b!6838011 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33823 (regOne!33823 r!7292))))) b!6839626))

(assert (= (and b!6838011 ((_ is Concat!25500) (regTwo!33823 (regOne!33823 (regOne!33823 r!7292))))) b!6839627))

(assert (= (and b!6838011 ((_ is Star!16655) (regTwo!33823 (regOne!33823 (regOne!33823 r!7292))))) b!6839628))

(assert (= (and b!6838011 ((_ is Union!16655) (regTwo!33823 (regOne!33823 (regOne!33823 r!7292))))) b!6839629))

(declare-fun b!6839630 () Bool)

(declare-fun e!4125099 () Bool)

(assert (=> b!6839630 (= e!4125099 tp_is_empty!42563)))

(declare-fun b!6839631 () Bool)

(declare-fun tp!1872591 () Bool)

(declare-fun tp!1872593 () Bool)

(assert (=> b!6839631 (= e!4125099 (and tp!1872591 tp!1872593))))

(assert (=> b!6838002 (= tp!1871280 e!4125099)))

(declare-fun b!6839632 () Bool)

(declare-fun tp!1872594 () Bool)

(assert (=> b!6839632 (= e!4125099 tp!1872594)))

(declare-fun b!6839633 () Bool)

(declare-fun tp!1872592 () Bool)

(declare-fun tp!1872590 () Bool)

(assert (=> b!6839633 (= e!4125099 (and tp!1872592 tp!1872590))))

(assert (= (and b!6838002 ((_ is ElementMatch!16655) (reg!16984 (regOne!33822 (reg!16984 r!7292))))) b!6839630))

(assert (= (and b!6838002 ((_ is Concat!25500) (reg!16984 (regOne!33822 (reg!16984 r!7292))))) b!6839631))

(assert (= (and b!6838002 ((_ is Star!16655) (reg!16984 (regOne!33822 (reg!16984 r!7292))))) b!6839632))

(assert (= (and b!6838002 ((_ is Union!16655) (reg!16984 (regOne!33822 (reg!16984 r!7292))))) b!6839633))

(declare-fun b!6839634 () Bool)

(declare-fun e!4125100 () Bool)

(assert (=> b!6839634 (= e!4125100 tp_is_empty!42563)))

(declare-fun b!6839635 () Bool)

(declare-fun tp!1872596 () Bool)

(declare-fun tp!1872598 () Bool)

(assert (=> b!6839635 (= e!4125100 (and tp!1872596 tp!1872598))))

(assert (=> b!6837993 (= tp!1871267 e!4125100)))

(declare-fun b!6839636 () Bool)

(declare-fun tp!1872599 () Bool)

(assert (=> b!6839636 (= e!4125100 tp!1872599)))

(declare-fun b!6839637 () Bool)

(declare-fun tp!1872597 () Bool)

(declare-fun tp!1872595 () Bool)

(assert (=> b!6839637 (= e!4125100 (and tp!1872597 tp!1872595))))

(assert (= (and b!6837993 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33822 (regOne!33823 r!7292))))) b!6839634))

(assert (= (and b!6837993 ((_ is Concat!25500) (regOne!33822 (regOne!33822 (regOne!33823 r!7292))))) b!6839635))

(assert (= (and b!6837993 ((_ is Star!16655) (regOne!33822 (regOne!33822 (regOne!33823 r!7292))))) b!6839636))

(assert (= (and b!6837993 ((_ is Union!16655) (regOne!33822 (regOne!33822 (regOne!33823 r!7292))))) b!6839637))

(declare-fun b!6839638 () Bool)

(declare-fun e!4125101 () Bool)

(assert (=> b!6839638 (= e!4125101 tp_is_empty!42563)))

(declare-fun b!6839639 () Bool)

(declare-fun tp!1872601 () Bool)

(declare-fun tp!1872603 () Bool)

(assert (=> b!6839639 (= e!4125101 (and tp!1872601 tp!1872603))))

(assert (=> b!6837993 (= tp!1871269 e!4125101)))

(declare-fun b!6839640 () Bool)

(declare-fun tp!1872604 () Bool)

(assert (=> b!6839640 (= e!4125101 tp!1872604)))

(declare-fun b!6839641 () Bool)

(declare-fun tp!1872602 () Bool)

(declare-fun tp!1872600 () Bool)

(assert (=> b!6839641 (= e!4125101 (and tp!1872602 tp!1872600))))

(assert (= (and b!6837993 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33822 (regOne!33823 r!7292))))) b!6839638))

(assert (= (and b!6837993 ((_ is Concat!25500) (regTwo!33822 (regOne!33822 (regOne!33823 r!7292))))) b!6839639))

(assert (= (and b!6837993 ((_ is Star!16655) (regTwo!33822 (regOne!33822 (regOne!33823 r!7292))))) b!6839640))

(assert (= (and b!6837993 ((_ is Union!16655) (regTwo!33822 (regOne!33822 (regOne!33823 r!7292))))) b!6839641))

(declare-fun b!6839642 () Bool)

(declare-fun e!4125102 () Bool)

(assert (=> b!6839642 (= e!4125102 tp_is_empty!42563)))

(declare-fun b!6839643 () Bool)

(declare-fun tp!1872606 () Bool)

(declare-fun tp!1872608 () Bool)

(assert (=> b!6839643 (= e!4125102 (and tp!1872606 tp!1872608))))

(assert (=> b!6838041 (= tp!1871327 e!4125102)))

(declare-fun b!6839644 () Bool)

(declare-fun tp!1872609 () Bool)

(assert (=> b!6839644 (= e!4125102 tp!1872609)))

(declare-fun b!6839645 () Bool)

(declare-fun tp!1872607 () Bool)

(declare-fun tp!1872605 () Bool)

(assert (=> b!6839645 (= e!4125102 (and tp!1872607 tp!1872605))))

(assert (= (and b!6838041 ((_ is ElementMatch!16655) (regOne!33823 (reg!16984 (reg!16984 r!7292))))) b!6839642))

(assert (= (and b!6838041 ((_ is Concat!25500) (regOne!33823 (reg!16984 (reg!16984 r!7292))))) b!6839643))

(assert (= (and b!6838041 ((_ is Star!16655) (regOne!33823 (reg!16984 (reg!16984 r!7292))))) b!6839644))

(assert (= (and b!6838041 ((_ is Union!16655) (regOne!33823 (reg!16984 (reg!16984 r!7292))))) b!6839645))

(declare-fun b!6839646 () Bool)

(declare-fun e!4125103 () Bool)

(assert (=> b!6839646 (= e!4125103 tp_is_empty!42563)))

(declare-fun b!6839647 () Bool)

(declare-fun tp!1872611 () Bool)

(declare-fun tp!1872613 () Bool)

(assert (=> b!6839647 (= e!4125103 (and tp!1872611 tp!1872613))))

(assert (=> b!6838041 (= tp!1871325 e!4125103)))

(declare-fun b!6839648 () Bool)

(declare-fun tp!1872614 () Bool)

(assert (=> b!6839648 (= e!4125103 tp!1872614)))

(declare-fun b!6839649 () Bool)

(declare-fun tp!1872612 () Bool)

(declare-fun tp!1872610 () Bool)

(assert (=> b!6839649 (= e!4125103 (and tp!1872612 tp!1872610))))

(assert (= (and b!6838041 ((_ is ElementMatch!16655) (regTwo!33823 (reg!16984 (reg!16984 r!7292))))) b!6839646))

(assert (= (and b!6838041 ((_ is Concat!25500) (regTwo!33823 (reg!16984 (reg!16984 r!7292))))) b!6839647))

(assert (= (and b!6838041 ((_ is Star!16655) (regTwo!33823 (reg!16984 (reg!16984 r!7292))))) b!6839648))

(assert (= (and b!6838041 ((_ is Union!16655) (regTwo!33823 (reg!16984 (reg!16984 r!7292))))) b!6839649))

(declare-fun b!6839650 () Bool)

(declare-fun e!4125104 () Bool)

(assert (=> b!6839650 (= e!4125104 tp_is_empty!42563)))

(declare-fun b!6839651 () Bool)

(declare-fun tp!1872616 () Bool)

(declare-fun tp!1872618 () Bool)

(assert (=> b!6839651 (= e!4125104 (and tp!1872616 tp!1872618))))

(assert (=> b!6838089 (= tp!1871391 e!4125104)))

(declare-fun b!6839652 () Bool)

(declare-fun tp!1872619 () Bool)

(assert (=> b!6839652 (= e!4125104 tp!1872619)))

(declare-fun b!6839653 () Bool)

(declare-fun tp!1872617 () Bool)

(declare-fun tp!1872615 () Bool)

(assert (=> b!6839653 (= e!4125104 (and tp!1872617 tp!1872615))))

(assert (= (and b!6838089 ((_ is ElementMatch!16655) (reg!16984 (h!72588 (exprs!6539 setElem!46969))))) b!6839650))

(assert (= (and b!6838089 ((_ is Concat!25500) (reg!16984 (h!72588 (exprs!6539 setElem!46969))))) b!6839651))

(assert (= (and b!6838089 ((_ is Star!16655) (reg!16984 (h!72588 (exprs!6539 setElem!46969))))) b!6839652))

(assert (= (and b!6838089 ((_ is Union!16655) (reg!16984 (h!72588 (exprs!6539 setElem!46969))))) b!6839653))

(declare-fun b!6839654 () Bool)

(declare-fun e!4125105 () Bool)

(assert (=> b!6839654 (= e!4125105 tp_is_empty!42563)))

(declare-fun b!6839655 () Bool)

(declare-fun tp!1872621 () Bool)

(declare-fun tp!1872623 () Bool)

(assert (=> b!6839655 (= e!4125105 (and tp!1872621 tp!1872623))))

(assert (=> b!6838097 (= tp!1871400 e!4125105)))

(declare-fun b!6839656 () Bool)

(declare-fun tp!1872624 () Bool)

(assert (=> b!6839656 (= e!4125105 tp!1872624)))

(declare-fun b!6839657 () Bool)

(declare-fun tp!1872622 () Bool)

(declare-fun tp!1872620 () Bool)

(assert (=> b!6839657 (= e!4125105 (and tp!1872622 tp!1872620))))

(assert (= (and b!6838097 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839654))

(assert (= (and b!6838097 ((_ is Concat!25500) (regOne!33822 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839655))

(assert (= (and b!6838097 ((_ is Star!16655) (regOne!33822 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839656))

(assert (= (and b!6838097 ((_ is Union!16655) (regOne!33822 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839657))

(declare-fun b!6839658 () Bool)

(declare-fun e!4125106 () Bool)

(assert (=> b!6839658 (= e!4125106 tp_is_empty!42563)))

(declare-fun b!6839659 () Bool)

(declare-fun tp!1872626 () Bool)

(declare-fun tp!1872628 () Bool)

(assert (=> b!6839659 (= e!4125106 (and tp!1872626 tp!1872628))))

(assert (=> b!6838097 (= tp!1871402 e!4125106)))

(declare-fun b!6839660 () Bool)

(declare-fun tp!1872629 () Bool)

(assert (=> b!6839660 (= e!4125106 tp!1872629)))

(declare-fun b!6839661 () Bool)

(declare-fun tp!1872627 () Bool)

(declare-fun tp!1872625 () Bool)

(assert (=> b!6839661 (= e!4125106 (and tp!1872627 tp!1872625))))

(assert (= (and b!6838097 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839658))

(assert (= (and b!6838097 ((_ is Concat!25500) (regTwo!33822 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839659))

(assert (= (and b!6838097 ((_ is Star!16655) (regTwo!33822 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839660))

(assert (= (and b!6838097 ((_ is Union!16655) (regTwo!33822 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839661))

(declare-fun b!6839662 () Bool)

(declare-fun e!4125107 () Bool)

(assert (=> b!6839662 (= e!4125107 tp_is_empty!42563)))

(declare-fun b!6839663 () Bool)

(declare-fun tp!1872631 () Bool)

(declare-fun tp!1872633 () Bool)

(assert (=> b!6839663 (= e!4125107 (and tp!1872631 tp!1872633))))

(assert (=> b!6837995 (= tp!1871268 e!4125107)))

(declare-fun b!6839664 () Bool)

(declare-fun tp!1872634 () Bool)

(assert (=> b!6839664 (= e!4125107 tp!1872634)))

(declare-fun b!6839665 () Bool)

(declare-fun tp!1872632 () Bool)

(declare-fun tp!1872630 () Bool)

(assert (=> b!6839665 (= e!4125107 (and tp!1872632 tp!1872630))))

(assert (= (and b!6837995 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33822 (regOne!33823 r!7292))))) b!6839662))

(assert (= (and b!6837995 ((_ is Concat!25500) (regOne!33823 (regOne!33822 (regOne!33823 r!7292))))) b!6839663))

(assert (= (and b!6837995 ((_ is Star!16655) (regOne!33823 (regOne!33822 (regOne!33823 r!7292))))) b!6839664))

(assert (= (and b!6837995 ((_ is Union!16655) (regOne!33823 (regOne!33822 (regOne!33823 r!7292))))) b!6839665))

(declare-fun b!6839666 () Bool)

(declare-fun e!4125108 () Bool)

(assert (=> b!6839666 (= e!4125108 tp_is_empty!42563)))

(declare-fun b!6839667 () Bool)

(declare-fun tp!1872636 () Bool)

(declare-fun tp!1872638 () Bool)

(assert (=> b!6839667 (= e!4125108 (and tp!1872636 tp!1872638))))

(assert (=> b!6837995 (= tp!1871266 e!4125108)))

(declare-fun b!6839668 () Bool)

(declare-fun tp!1872639 () Bool)

(assert (=> b!6839668 (= e!4125108 tp!1872639)))

(declare-fun b!6839669 () Bool)

(declare-fun tp!1872637 () Bool)

(declare-fun tp!1872635 () Bool)

(assert (=> b!6839669 (= e!4125108 (and tp!1872637 tp!1872635))))

(assert (= (and b!6837995 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33822 (regOne!33823 r!7292))))) b!6839666))

(assert (= (and b!6837995 ((_ is Concat!25500) (regTwo!33823 (regOne!33822 (regOne!33823 r!7292))))) b!6839667))

(assert (= (and b!6837995 ((_ is Star!16655) (regTwo!33823 (regOne!33822 (regOne!33823 r!7292))))) b!6839668))

(assert (= (and b!6837995 ((_ is Union!16655) (regTwo!33823 (regOne!33822 (regOne!33823 r!7292))))) b!6839669))

(declare-fun b!6839670 () Bool)

(declare-fun e!4125109 () Bool)

(assert (=> b!6839670 (= e!4125109 tp_is_empty!42563)))

(declare-fun b!6839671 () Bool)

(declare-fun tp!1872641 () Bool)

(declare-fun tp!1872643 () Bool)

(assert (=> b!6839671 (= e!4125109 (and tp!1872641 tp!1872643))))

(assert (=> b!6838099 (= tp!1871401 e!4125109)))

(declare-fun b!6839672 () Bool)

(declare-fun tp!1872644 () Bool)

(assert (=> b!6839672 (= e!4125109 tp!1872644)))

(declare-fun b!6839673 () Bool)

(declare-fun tp!1872642 () Bool)

(declare-fun tp!1872640 () Bool)

(assert (=> b!6839673 (= e!4125109 (and tp!1872642 tp!1872640))))

(assert (= (and b!6838099 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839670))

(assert (= (and b!6838099 ((_ is Concat!25500) (regOne!33823 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839671))

(assert (= (and b!6838099 ((_ is Star!16655) (regOne!33823 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839672))

(assert (= (and b!6838099 ((_ is Union!16655) (regOne!33823 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839673))

(declare-fun b!6839674 () Bool)

(declare-fun e!4125110 () Bool)

(assert (=> b!6839674 (= e!4125110 tp_is_empty!42563)))

(declare-fun b!6839675 () Bool)

(declare-fun tp!1872646 () Bool)

(declare-fun tp!1872648 () Bool)

(assert (=> b!6839675 (= e!4125110 (and tp!1872646 tp!1872648))))

(assert (=> b!6838099 (= tp!1871399 e!4125110)))

(declare-fun b!6839676 () Bool)

(declare-fun tp!1872649 () Bool)

(assert (=> b!6839676 (= e!4125110 tp!1872649)))

(declare-fun b!6839677 () Bool)

(declare-fun tp!1872647 () Bool)

(declare-fun tp!1872645 () Bool)

(assert (=> b!6839677 (= e!4125110 (and tp!1872647 tp!1872645))))

(assert (= (and b!6838099 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839674))

(assert (= (and b!6838099 ((_ is Concat!25500) (regTwo!33823 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839675))

(assert (= (and b!6838099 ((_ is Star!16655) (regTwo!33823 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839676))

(assert (= (and b!6838099 ((_ is Union!16655) (regTwo!33823 (regTwo!33822 (regTwo!33822 r!7292))))) b!6839677))

(declare-fun b!6839678 () Bool)

(declare-fun e!4125111 () Bool)

(assert (=> b!6839678 (= e!4125111 tp_is_empty!42563)))

(declare-fun b!6839679 () Bool)

(declare-fun tp!1872651 () Bool)

(declare-fun tp!1872653 () Bool)

(assert (=> b!6839679 (= e!4125111 (and tp!1872651 tp!1872653))))

(assert (=> b!6837986 (= tp!1871260 e!4125111)))

(declare-fun b!6839680 () Bool)

(declare-fun tp!1872654 () Bool)

(assert (=> b!6839680 (= e!4125111 tp!1872654)))

(declare-fun b!6839681 () Bool)

(declare-fun tp!1872652 () Bool)

(declare-fun tp!1872650 () Bool)

(assert (=> b!6839681 (= e!4125111 (and tp!1872652 tp!1872650))))

(assert (= (and b!6837986 ((_ is ElementMatch!16655) (reg!16984 (regOne!33823 (regTwo!33822 r!7292))))) b!6839678))

(assert (= (and b!6837986 ((_ is Concat!25500) (reg!16984 (regOne!33823 (regTwo!33822 r!7292))))) b!6839679))

(assert (= (and b!6837986 ((_ is Star!16655) (reg!16984 (regOne!33823 (regTwo!33822 r!7292))))) b!6839680))

(assert (= (and b!6837986 ((_ is Union!16655) (reg!16984 (regOne!33823 (regTwo!33822 r!7292))))) b!6839681))

(declare-fun b!6839682 () Bool)

(declare-fun e!4125112 () Bool)

(assert (=> b!6839682 (= e!4125112 tp_is_empty!42563)))

(declare-fun b!6839683 () Bool)

(declare-fun tp!1872656 () Bool)

(declare-fun tp!1872658 () Bool)

(assert (=> b!6839683 (= e!4125112 (and tp!1872656 tp!1872658))))

(assert (=> b!6838082 (= tp!1871379 e!4125112)))

(declare-fun b!6839684 () Bool)

(declare-fun tp!1872659 () Bool)

(assert (=> b!6839684 (= e!4125112 tp!1872659)))

(declare-fun b!6839685 () Bool)

(declare-fun tp!1872657 () Bool)

(declare-fun tp!1872655 () Bool)

(assert (=> b!6839685 (= e!4125112 (and tp!1872657 tp!1872655))))

(assert (= (and b!6838082 ((_ is ElementMatch!16655) (regOne!33823 (reg!16984 (regTwo!33823 r!7292))))) b!6839682))

(assert (= (and b!6838082 ((_ is Concat!25500) (regOne!33823 (reg!16984 (regTwo!33823 r!7292))))) b!6839683))

(assert (= (and b!6838082 ((_ is Star!16655) (regOne!33823 (reg!16984 (regTwo!33823 r!7292))))) b!6839684))

(assert (= (and b!6838082 ((_ is Union!16655) (regOne!33823 (reg!16984 (regTwo!33823 r!7292))))) b!6839685))

(declare-fun b!6839686 () Bool)

(declare-fun e!4125113 () Bool)

(assert (=> b!6839686 (= e!4125113 tp_is_empty!42563)))

(declare-fun b!6839687 () Bool)

(declare-fun tp!1872661 () Bool)

(declare-fun tp!1872663 () Bool)

(assert (=> b!6839687 (= e!4125113 (and tp!1872661 tp!1872663))))

(assert (=> b!6838082 (= tp!1871377 e!4125113)))

(declare-fun b!6839688 () Bool)

(declare-fun tp!1872664 () Bool)

(assert (=> b!6839688 (= e!4125113 tp!1872664)))

(declare-fun b!6839689 () Bool)

(declare-fun tp!1872662 () Bool)

(declare-fun tp!1872660 () Bool)

(assert (=> b!6839689 (= e!4125113 (and tp!1872662 tp!1872660))))

(assert (= (and b!6838082 ((_ is ElementMatch!16655) (regTwo!33823 (reg!16984 (regTwo!33823 r!7292))))) b!6839686))

(assert (= (and b!6838082 ((_ is Concat!25500) (regTwo!33823 (reg!16984 (regTwo!33823 r!7292))))) b!6839687))

(assert (= (and b!6838082 ((_ is Star!16655) (regTwo!33823 (reg!16984 (regTwo!33823 r!7292))))) b!6839688))

(assert (= (and b!6838082 ((_ is Union!16655) (regTwo!33823 (reg!16984 (regTwo!33823 r!7292))))) b!6839689))

(declare-fun b!6839690 () Bool)

(declare-fun e!4125114 () Bool)

(assert (=> b!6839690 (= e!4125114 tp_is_empty!42563)))

(declare-fun b!6839691 () Bool)

(declare-fun tp!1872666 () Bool)

(declare-fun tp!1872668 () Bool)

(assert (=> b!6839691 (= e!4125114 (and tp!1872666 tp!1872668))))

(assert (=> b!6838025 (= tp!1871307 e!4125114)))

(declare-fun b!6839692 () Bool)

(declare-fun tp!1872669 () Bool)

(assert (=> b!6839692 (= e!4125114 tp!1872669)))

(declare-fun b!6839693 () Bool)

(declare-fun tp!1872667 () Bool)

(declare-fun tp!1872665 () Bool)

(assert (=> b!6839693 (= e!4125114 (and tp!1872667 tp!1872665))))

(assert (= (and b!6838025 ((_ is ElementMatch!16655) (regOne!33823 (regOne!33822 (regOne!33822 r!7292))))) b!6839690))

(assert (= (and b!6838025 ((_ is Concat!25500) (regOne!33823 (regOne!33822 (regOne!33822 r!7292))))) b!6839691))

(assert (= (and b!6838025 ((_ is Star!16655) (regOne!33823 (regOne!33822 (regOne!33822 r!7292))))) b!6839692))

(assert (= (and b!6838025 ((_ is Union!16655) (regOne!33823 (regOne!33822 (regOne!33822 r!7292))))) b!6839693))

(declare-fun b!6839694 () Bool)

(declare-fun e!4125115 () Bool)

(assert (=> b!6839694 (= e!4125115 tp_is_empty!42563)))

(declare-fun b!6839695 () Bool)

(declare-fun tp!1872671 () Bool)

(declare-fun tp!1872673 () Bool)

(assert (=> b!6839695 (= e!4125115 (and tp!1872671 tp!1872673))))

(assert (=> b!6838025 (= tp!1871305 e!4125115)))

(declare-fun b!6839696 () Bool)

(declare-fun tp!1872674 () Bool)

(assert (=> b!6839696 (= e!4125115 tp!1872674)))

(declare-fun b!6839697 () Bool)

(declare-fun tp!1872672 () Bool)

(declare-fun tp!1872670 () Bool)

(assert (=> b!6839697 (= e!4125115 (and tp!1872672 tp!1872670))))

(assert (= (and b!6838025 ((_ is ElementMatch!16655) (regTwo!33823 (regOne!33822 (regOne!33822 r!7292))))) b!6839694))

(assert (= (and b!6838025 ((_ is Concat!25500) (regTwo!33823 (regOne!33822 (regOne!33822 r!7292))))) b!6839695))

(assert (= (and b!6838025 ((_ is Star!16655) (regTwo!33823 (regOne!33822 (regOne!33822 r!7292))))) b!6839696))

(assert (= (and b!6838025 ((_ is Union!16655) (regTwo!33823 (regOne!33822 (regOne!33822 r!7292))))) b!6839697))

(declare-fun b!6839698 () Bool)

(declare-fun e!4125116 () Bool)

(assert (=> b!6839698 (= e!4125116 tp_is_empty!42563)))

(declare-fun b!6839699 () Bool)

(declare-fun tp!1872676 () Bool)

(declare-fun tp!1872678 () Bool)

(assert (=> b!6839699 (= e!4125116 (and tp!1872676 tp!1872678))))

(assert (=> b!6838073 (= tp!1871371 e!4125116)))

(declare-fun b!6839700 () Bool)

(declare-fun tp!1872679 () Bool)

(assert (=> b!6839700 (= e!4125116 tp!1872679)))

(declare-fun b!6839701 () Bool)

(declare-fun tp!1872677 () Bool)

(declare-fun tp!1872675 () Bool)

(assert (=> b!6839701 (= e!4125116 (and tp!1872677 tp!1872675))))

(assert (= (and b!6838073 ((_ is ElementMatch!16655) (reg!16984 (regOne!33823 (regTwo!33823 r!7292))))) b!6839698))

(assert (= (and b!6838073 ((_ is Concat!25500) (reg!16984 (regOne!33823 (regTwo!33823 r!7292))))) b!6839699))

(assert (= (and b!6838073 ((_ is Star!16655) (reg!16984 (regOne!33823 (regTwo!33823 r!7292))))) b!6839700))

(assert (= (and b!6838073 ((_ is Union!16655) (reg!16984 (regOne!33823 (regTwo!33823 r!7292))))) b!6839701))

(declare-fun b!6839702 () Bool)

(declare-fun e!4125117 () Bool)

(assert (=> b!6839702 (= e!4125117 tp_is_empty!42563)))

(declare-fun b!6839703 () Bool)

(declare-fun tp!1872681 () Bool)

(declare-fun tp!1872683 () Bool)

(assert (=> b!6839703 (= e!4125117 (and tp!1872681 tp!1872683))))

(assert (=> b!6838060 (= tp!1871354 e!4125117)))

(declare-fun b!6839704 () Bool)

(declare-fun tp!1872684 () Bool)

(assert (=> b!6839704 (= e!4125117 tp!1872684)))

(declare-fun b!6839705 () Bool)

(declare-fun tp!1872682 () Bool)

(declare-fun tp!1872680 () Bool)

(assert (=> b!6839705 (= e!4125117 (and tp!1872682 tp!1872680))))

(assert (= (and b!6838060 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839702))

(assert (= (and b!6838060 ((_ is Concat!25500) (reg!16984 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839703))

(assert (= (and b!6838060 ((_ is Star!16655) (reg!16984 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839704))

(assert (= (and b!6838060 ((_ is Union!16655) (reg!16984 (regTwo!33822 (regTwo!33823 r!7292))))) b!6839705))

(declare-fun b!6839706 () Bool)

(declare-fun e!4125118 () Bool)

(assert (=> b!6839706 (= e!4125118 tp_is_empty!42563)))

(declare-fun b!6839707 () Bool)

(declare-fun tp!1872686 () Bool)

(declare-fun tp!1872688 () Bool)

(assert (=> b!6839707 (= e!4125118 (and tp!1872686 tp!1872688))))

(assert (=> b!6838051 (= tp!1871341 e!4125118)))

(declare-fun b!6839708 () Bool)

(declare-fun tp!1872689 () Bool)

(assert (=> b!6839708 (= e!4125118 tp!1872689)))

(declare-fun b!6839709 () Bool)

(declare-fun tp!1872687 () Bool)

(declare-fun tp!1872685 () Bool)

(assert (=> b!6839709 (= e!4125118 (and tp!1872687 tp!1872685))))

(assert (= (and b!6838051 ((_ is ElementMatch!16655) (regOne!33822 (reg!16984 (regOne!33822 r!7292))))) b!6839706))

(assert (= (and b!6838051 ((_ is Concat!25500) (regOne!33822 (reg!16984 (regOne!33822 r!7292))))) b!6839707))

(assert (= (and b!6838051 ((_ is Star!16655) (regOne!33822 (reg!16984 (regOne!33822 r!7292))))) b!6839708))

(assert (= (and b!6838051 ((_ is Union!16655) (regOne!33822 (reg!16984 (regOne!33822 r!7292))))) b!6839709))

(declare-fun b!6839710 () Bool)

(declare-fun e!4125119 () Bool)

(assert (=> b!6839710 (= e!4125119 tp_is_empty!42563)))

(declare-fun b!6839711 () Bool)

(declare-fun tp!1872691 () Bool)

(declare-fun tp!1872693 () Bool)

(assert (=> b!6839711 (= e!4125119 (and tp!1872691 tp!1872693))))

(assert (=> b!6838051 (= tp!1871343 e!4125119)))

(declare-fun b!6839712 () Bool)

(declare-fun tp!1872694 () Bool)

(assert (=> b!6839712 (= e!4125119 tp!1872694)))

(declare-fun b!6839713 () Bool)

(declare-fun tp!1872692 () Bool)

(declare-fun tp!1872690 () Bool)

(assert (=> b!6839713 (= e!4125119 (and tp!1872692 tp!1872690))))

(assert (= (and b!6838051 ((_ is ElementMatch!16655) (regTwo!33822 (reg!16984 (regOne!33822 r!7292))))) b!6839710))

(assert (= (and b!6838051 ((_ is Concat!25500) (regTwo!33822 (reg!16984 (regOne!33822 r!7292))))) b!6839711))

(assert (= (and b!6838051 ((_ is Star!16655) (regTwo!33822 (reg!16984 (regOne!33822 r!7292))))) b!6839712))

(assert (= (and b!6838051 ((_ is Union!16655) (regTwo!33822 (reg!16984 (regOne!33822 r!7292))))) b!6839713))

(declare-fun b!6839714 () Bool)

(declare-fun e!4125120 () Bool)

(assert (=> b!6839714 (= e!4125120 tp_is_empty!42563)))

(declare-fun b!6839715 () Bool)

(declare-fun tp!1872696 () Bool)

(declare-fun tp!1872698 () Bool)

(assert (=> b!6839715 (= e!4125120 (and tp!1872696 tp!1872698))))

(assert (=> b!6838091 (= tp!1871392 e!4125120)))

(declare-fun b!6839716 () Bool)

(declare-fun tp!1872699 () Bool)

(assert (=> b!6839716 (= e!4125120 tp!1872699)))

(declare-fun b!6839717 () Bool)

(declare-fun tp!1872697 () Bool)

(declare-fun tp!1872695 () Bool)

(assert (=> b!6839717 (= e!4125120 (and tp!1872697 tp!1872695))))

(assert (= (and b!6838091 ((_ is ElementMatch!16655) (h!72588 (t!380007 (exprs!6539 setElem!46969))))) b!6839714))

(assert (= (and b!6838091 ((_ is Concat!25500) (h!72588 (t!380007 (exprs!6539 setElem!46969))))) b!6839715))

(assert (= (and b!6838091 ((_ is Star!16655) (h!72588 (t!380007 (exprs!6539 setElem!46969))))) b!6839716))

(assert (= (and b!6838091 ((_ is Union!16655) (h!72588 (t!380007 (exprs!6539 setElem!46969))))) b!6839717))

(declare-fun b!6839718 () Bool)

(declare-fun e!4125121 () Bool)

(declare-fun tp!1872700 () Bool)

(declare-fun tp!1872701 () Bool)

(assert (=> b!6839718 (= e!4125121 (and tp!1872700 tp!1872701))))

(assert (=> b!6838091 (= tp!1871393 e!4125121)))

(assert (= (and b!6838091 ((_ is Cons!66140) (t!380007 (t!380007 (exprs!6539 setElem!46969))))) b!6839718))

(declare-fun b!6839719 () Bool)

(declare-fun e!4125122 () Bool)

(assert (=> b!6839719 (= e!4125122 tp_is_empty!42563)))

(declare-fun b!6839720 () Bool)

(declare-fun tp!1872703 () Bool)

(declare-fun tp!1872705 () Bool)

(assert (=> b!6839720 (= e!4125122 (and tp!1872703 tp!1872705))))

(assert (=> b!6838014 (= tp!1871295 e!4125122)))

(declare-fun b!6839721 () Bool)

(declare-fun tp!1872706 () Bool)

(assert (=> b!6839721 (= e!4125122 tp!1872706)))

(declare-fun b!6839722 () Bool)

(declare-fun tp!1872704 () Bool)

(declare-fun tp!1872702 () Bool)

(assert (=> b!6839722 (= e!4125122 (and tp!1872704 tp!1872702))))

(assert (= (and b!6838014 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33823 (regOne!33823 r!7292))))) b!6839719))

(assert (= (and b!6838014 ((_ is Concat!25500) (reg!16984 (regTwo!33823 (regOne!33823 r!7292))))) b!6839720))

(assert (= (and b!6838014 ((_ is Star!16655) (reg!16984 (regTwo!33823 (regOne!33823 r!7292))))) b!6839721))

(assert (= (and b!6838014 ((_ is Union!16655) (reg!16984 (regTwo!33823 (regOne!33823 r!7292))))) b!6839722))

(declare-fun b!6839723 () Bool)

(declare-fun e!4125123 () Bool)

(assert (=> b!6839723 (= e!4125123 tp_is_empty!42563)))

(declare-fun b!6839724 () Bool)

(declare-fun tp!1872708 () Bool)

(declare-fun tp!1872710 () Bool)

(assert (=> b!6839724 (= e!4125123 (and tp!1872708 tp!1872710))))

(assert (=> b!6838005 (= tp!1871282 e!4125123)))

(declare-fun b!6839725 () Bool)

(declare-fun tp!1872711 () Bool)

(assert (=> b!6839725 (= e!4125123 tp!1872711)))

(declare-fun b!6839726 () Bool)

(declare-fun tp!1872709 () Bool)

(declare-fun tp!1872707 () Bool)

(assert (=> b!6839726 (= e!4125123 (and tp!1872709 tp!1872707))))

(assert (= (and b!6838005 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33822 (reg!16984 r!7292))))) b!6839723))

(assert (= (and b!6838005 ((_ is Concat!25500) (regOne!33822 (regTwo!33822 (reg!16984 r!7292))))) b!6839724))

(assert (= (and b!6838005 ((_ is Star!16655) (regOne!33822 (regTwo!33822 (reg!16984 r!7292))))) b!6839725))

(assert (= (and b!6838005 ((_ is Union!16655) (regOne!33822 (regTwo!33822 (reg!16984 r!7292))))) b!6839726))

(declare-fun b!6839727 () Bool)

(declare-fun e!4125124 () Bool)

(assert (=> b!6839727 (= e!4125124 tp_is_empty!42563)))

(declare-fun b!6839728 () Bool)

(declare-fun tp!1872713 () Bool)

(declare-fun tp!1872715 () Bool)

(assert (=> b!6839728 (= e!4125124 (and tp!1872713 tp!1872715))))

(assert (=> b!6838005 (= tp!1871284 e!4125124)))

(declare-fun b!6839729 () Bool)

(declare-fun tp!1872716 () Bool)

(assert (=> b!6839729 (= e!4125124 tp!1872716)))

(declare-fun b!6839730 () Bool)

(declare-fun tp!1872714 () Bool)

(declare-fun tp!1872712 () Bool)

(assert (=> b!6839730 (= e!4125124 (and tp!1872714 tp!1872712))))

(assert (= (and b!6838005 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33822 (reg!16984 r!7292))))) b!6839727))

(assert (= (and b!6838005 ((_ is Concat!25500) (regTwo!33822 (regTwo!33822 (reg!16984 r!7292))))) b!6839728))

(assert (= (and b!6838005 ((_ is Star!16655) (regTwo!33822 (regTwo!33822 (reg!16984 r!7292))))) b!6839729))

(assert (= (and b!6838005 ((_ is Union!16655) (regTwo!33822 (regTwo!33822 (reg!16984 r!7292))))) b!6839730))

(declare-fun b!6839731 () Bool)

(declare-fun e!4125125 () Bool)

(assert (=> b!6839731 (= e!4125125 tp_is_empty!42563)))

(declare-fun b!6839732 () Bool)

(declare-fun tp!1872718 () Bool)

(declare-fun tp!1872720 () Bool)

(assert (=> b!6839732 (= e!4125125 (and tp!1872718 tp!1872720))))

(assert (=> b!6838053 (= tp!1871342 e!4125125)))

(declare-fun b!6839733 () Bool)

(declare-fun tp!1872721 () Bool)

(assert (=> b!6839733 (= e!4125125 tp!1872721)))

(declare-fun b!6839734 () Bool)

(declare-fun tp!1872719 () Bool)

(declare-fun tp!1872717 () Bool)

(assert (=> b!6839734 (= e!4125125 (and tp!1872719 tp!1872717))))

(assert (= (and b!6838053 ((_ is ElementMatch!16655) (regOne!33823 (reg!16984 (regOne!33822 r!7292))))) b!6839731))

(assert (= (and b!6838053 ((_ is Concat!25500) (regOne!33823 (reg!16984 (regOne!33822 r!7292))))) b!6839732))

(assert (= (and b!6838053 ((_ is Star!16655) (regOne!33823 (reg!16984 (regOne!33822 r!7292))))) b!6839733))

(assert (= (and b!6838053 ((_ is Union!16655) (regOne!33823 (reg!16984 (regOne!33822 r!7292))))) b!6839734))

(declare-fun b!6839735 () Bool)

(declare-fun e!4125126 () Bool)

(assert (=> b!6839735 (= e!4125126 tp_is_empty!42563)))

(declare-fun b!6839736 () Bool)

(declare-fun tp!1872723 () Bool)

(declare-fun tp!1872725 () Bool)

(assert (=> b!6839736 (= e!4125126 (and tp!1872723 tp!1872725))))

(assert (=> b!6838053 (= tp!1871340 e!4125126)))

(declare-fun b!6839737 () Bool)

(declare-fun tp!1872726 () Bool)

(assert (=> b!6839737 (= e!4125126 tp!1872726)))

(declare-fun b!6839738 () Bool)

(declare-fun tp!1872724 () Bool)

(declare-fun tp!1872722 () Bool)

(assert (=> b!6839738 (= e!4125126 (and tp!1872724 tp!1872722))))

(assert (= (and b!6838053 ((_ is ElementMatch!16655) (regTwo!33823 (reg!16984 (regOne!33822 r!7292))))) b!6839735))

(assert (= (and b!6838053 ((_ is Concat!25500) (regTwo!33823 (reg!16984 (regOne!33822 r!7292))))) b!6839736))

(assert (= (and b!6838053 ((_ is Star!16655) (regTwo!33823 (reg!16984 (regOne!33822 r!7292))))) b!6839737))

(assert (= (and b!6838053 ((_ is Union!16655) (regTwo!33823 (reg!16984 (regOne!33822 r!7292))))) b!6839738))

(declare-fun b!6839739 () Bool)

(declare-fun e!4125127 () Bool)

(assert (=> b!6839739 (= e!4125127 tp_is_empty!42563)))

(declare-fun b!6839740 () Bool)

(declare-fun tp!1872728 () Bool)

(declare-fun tp!1872730 () Bool)

(assert (=> b!6839740 (= e!4125127 (and tp!1872728 tp!1872730))))

(assert (=> b!6838044 (= tp!1871334 e!4125127)))

(declare-fun b!6839741 () Bool)

(declare-fun tp!1872731 () Bool)

(assert (=> b!6839741 (= e!4125127 tp!1872731)))

(declare-fun b!6839742 () Bool)

(declare-fun tp!1872729 () Bool)

(declare-fun tp!1872727 () Bool)

(assert (=> b!6839742 (= e!4125127 (and tp!1872729 tp!1872727))))

(assert (= (and b!6838044 ((_ is ElementMatch!16655) (reg!16984 (regOne!33823 (regOne!33822 r!7292))))) b!6839739))

(assert (= (and b!6838044 ((_ is Concat!25500) (reg!16984 (regOne!33823 (regOne!33822 r!7292))))) b!6839740))

(assert (= (and b!6838044 ((_ is Star!16655) (reg!16984 (regOne!33823 (regOne!33822 r!7292))))) b!6839741))

(assert (= (and b!6838044 ((_ is Union!16655) (reg!16984 (regOne!33823 (regOne!33822 r!7292))))) b!6839742))

(declare-fun b!6839743 () Bool)

(declare-fun e!4125128 () Bool)

(assert (=> b!6839743 (= e!4125128 tp_is_empty!42563)))

(declare-fun b!6839744 () Bool)

(declare-fun tp!1872733 () Bool)

(declare-fun tp!1872735 () Bool)

(assert (=> b!6839744 (= e!4125128 (and tp!1872733 tp!1872735))))

(assert (=> b!6838035 (= tp!1871321 e!4125128)))

(declare-fun b!6839745 () Bool)

(declare-fun tp!1872736 () Bool)

(assert (=> b!6839745 (= e!4125128 tp!1872736)))

(declare-fun b!6839746 () Bool)

(declare-fun tp!1872734 () Bool)

(declare-fun tp!1872732 () Bool)

(assert (=> b!6839746 (= e!4125128 (and tp!1872734 tp!1872732))))

(assert (= (and b!6838035 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33823 (reg!16984 r!7292))))) b!6839743))

(assert (= (and b!6838035 ((_ is Concat!25500) (regOne!33822 (regTwo!33823 (reg!16984 r!7292))))) b!6839744))

(assert (= (and b!6838035 ((_ is Star!16655) (regOne!33822 (regTwo!33823 (reg!16984 r!7292))))) b!6839745))

(assert (= (and b!6838035 ((_ is Union!16655) (regOne!33822 (regTwo!33823 (reg!16984 r!7292))))) b!6839746))

(declare-fun b!6839747 () Bool)

(declare-fun e!4125129 () Bool)

(assert (=> b!6839747 (= e!4125129 tp_is_empty!42563)))

(declare-fun b!6839748 () Bool)

(declare-fun tp!1872738 () Bool)

(declare-fun tp!1872740 () Bool)

(assert (=> b!6839748 (= e!4125129 (and tp!1872738 tp!1872740))))

(assert (=> b!6838035 (= tp!1871323 e!4125129)))

(declare-fun b!6839749 () Bool)

(declare-fun tp!1872741 () Bool)

(assert (=> b!6839749 (= e!4125129 tp!1872741)))

(declare-fun b!6839750 () Bool)

(declare-fun tp!1872739 () Bool)

(declare-fun tp!1872737 () Bool)

(assert (=> b!6839750 (= e!4125129 (and tp!1872739 tp!1872737))))

(assert (= (and b!6838035 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33823 (reg!16984 r!7292))))) b!6839747))

(assert (= (and b!6838035 ((_ is Concat!25500) (regTwo!33822 (regTwo!33823 (reg!16984 r!7292))))) b!6839748))

(assert (= (and b!6838035 ((_ is Star!16655) (regTwo!33822 (regTwo!33823 (reg!16984 r!7292))))) b!6839749))

(assert (= (and b!6838035 ((_ is Union!16655) (regTwo!33822 (regTwo!33823 (reg!16984 r!7292))))) b!6839750))

(declare-fun b!6839751 () Bool)

(declare-fun e!4125130 () Bool)

(assert (=> b!6839751 (= e!4125130 tp_is_empty!42563)))

(declare-fun b!6839752 () Bool)

(declare-fun tp!1872743 () Bool)

(declare-fun tp!1872745 () Bool)

(assert (=> b!6839752 (= e!4125130 (and tp!1872743 tp!1872745))))

(assert (=> b!6837998 (= tp!1871275 e!4125130)))

(declare-fun b!6839753 () Bool)

(declare-fun tp!1872746 () Bool)

(assert (=> b!6839753 (= e!4125130 tp!1872746)))

(declare-fun b!6839754 () Bool)

(declare-fun tp!1872744 () Bool)

(declare-fun tp!1872742 () Bool)

(assert (=> b!6839754 (= e!4125130 (and tp!1872744 tp!1872742))))

(assert (= (and b!6837998 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33822 (regOne!33823 r!7292))))) b!6839751))

(assert (= (and b!6837998 ((_ is Concat!25500) (reg!16984 (regTwo!33822 (regOne!33823 r!7292))))) b!6839752))

(assert (= (and b!6837998 ((_ is Star!16655) (reg!16984 (regTwo!33822 (regOne!33823 r!7292))))) b!6839753))

(assert (= (and b!6837998 ((_ is Union!16655) (reg!16984 (regTwo!33822 (regOne!33823 r!7292))))) b!6839754))

(declare-fun b!6839755 () Bool)

(declare-fun e!4125131 () Bool)

(assert (=> b!6839755 (= e!4125131 tp_is_empty!42563)))

(declare-fun b!6839756 () Bool)

(declare-fun tp!1872748 () Bool)

(declare-fun tp!1872750 () Bool)

(assert (=> b!6839756 (= e!4125131 (and tp!1872748 tp!1872750))))

(assert (=> b!6837989 (= tp!1871262 e!4125131)))

(declare-fun b!6839757 () Bool)

(declare-fun tp!1872751 () Bool)

(assert (=> b!6839757 (= e!4125131 tp!1872751)))

(declare-fun b!6839758 () Bool)

(declare-fun tp!1872749 () Bool)

(declare-fun tp!1872747 () Bool)

(assert (=> b!6839758 (= e!4125131 (and tp!1872749 tp!1872747))))

(assert (= (and b!6837989 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839755))

(assert (= (and b!6837989 ((_ is Concat!25500) (regOne!33822 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839756))

(assert (= (and b!6837989 ((_ is Star!16655) (regOne!33822 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839757))

(assert (= (and b!6837989 ((_ is Union!16655) (regOne!33822 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839758))

(declare-fun b!6839759 () Bool)

(declare-fun e!4125132 () Bool)

(assert (=> b!6839759 (= e!4125132 tp_is_empty!42563)))

(declare-fun b!6839760 () Bool)

(declare-fun tp!1872753 () Bool)

(declare-fun tp!1872755 () Bool)

(assert (=> b!6839760 (= e!4125132 (and tp!1872753 tp!1872755))))

(assert (=> b!6837989 (= tp!1871264 e!4125132)))

(declare-fun b!6839761 () Bool)

(declare-fun tp!1872756 () Bool)

(assert (=> b!6839761 (= e!4125132 tp!1872756)))

(declare-fun b!6839762 () Bool)

(declare-fun tp!1872754 () Bool)

(declare-fun tp!1872752 () Bool)

(assert (=> b!6839762 (= e!4125132 (and tp!1872754 tp!1872752))))

(assert (= (and b!6837989 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839759))

(assert (= (and b!6837989 ((_ is Concat!25500) (regTwo!33822 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839760))

(assert (= (and b!6837989 ((_ is Star!16655) (regTwo!33822 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839761))

(assert (= (and b!6837989 ((_ is Union!16655) (regTwo!33822 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839762))

(declare-fun b!6839763 () Bool)

(declare-fun e!4125133 () Bool)

(assert (=> b!6839763 (= e!4125133 tp_is_empty!42563)))

(declare-fun b!6839764 () Bool)

(declare-fun tp!1872758 () Bool)

(declare-fun tp!1872760 () Bool)

(assert (=> b!6839764 (= e!4125133 (and tp!1872758 tp!1872760))))

(assert (=> b!6838037 (= tp!1871322 e!4125133)))

(declare-fun b!6839765 () Bool)

(declare-fun tp!1872761 () Bool)

(assert (=> b!6839765 (= e!4125133 tp!1872761)))

(declare-fun b!6839766 () Bool)

(declare-fun tp!1872759 () Bool)

(declare-fun tp!1872757 () Bool)

(assert (=> b!6839766 (= e!4125133 (and tp!1872759 tp!1872757))))

(assert (= (and b!6838037 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33823 (reg!16984 r!7292))))) b!6839763))

(assert (= (and b!6838037 ((_ is Concat!25500) (regOne!33823 (regTwo!33823 (reg!16984 r!7292))))) b!6839764))

(assert (= (and b!6838037 ((_ is Star!16655) (regOne!33823 (regTwo!33823 (reg!16984 r!7292))))) b!6839765))

(assert (= (and b!6838037 ((_ is Union!16655) (regOne!33823 (regTwo!33823 (reg!16984 r!7292))))) b!6839766))

(declare-fun b!6839767 () Bool)

(declare-fun e!4125134 () Bool)

(assert (=> b!6839767 (= e!4125134 tp_is_empty!42563)))

(declare-fun b!6839768 () Bool)

(declare-fun tp!1872763 () Bool)

(declare-fun tp!1872765 () Bool)

(assert (=> b!6839768 (= e!4125134 (and tp!1872763 tp!1872765))))

(assert (=> b!6838037 (= tp!1871320 e!4125134)))

(declare-fun b!6839769 () Bool)

(declare-fun tp!1872766 () Bool)

(assert (=> b!6839769 (= e!4125134 tp!1872766)))

(declare-fun b!6839770 () Bool)

(declare-fun tp!1872764 () Bool)

(declare-fun tp!1872762 () Bool)

(assert (=> b!6839770 (= e!4125134 (and tp!1872764 tp!1872762))))

(assert (= (and b!6838037 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33823 (reg!16984 r!7292))))) b!6839767))

(assert (= (and b!6838037 ((_ is Concat!25500) (regTwo!33823 (regTwo!33823 (reg!16984 r!7292))))) b!6839768))

(assert (= (and b!6838037 ((_ is Star!16655) (regTwo!33823 (regTwo!33823 (reg!16984 r!7292))))) b!6839769))

(assert (= (and b!6838037 ((_ is Union!16655) (regTwo!33823 (regTwo!33823 (reg!16984 r!7292))))) b!6839770))

(declare-fun b!6839771 () Bool)

(declare-fun e!4125135 () Bool)

(assert (=> b!6839771 (= e!4125135 tp_is_empty!42563)))

(declare-fun b!6839772 () Bool)

(declare-fun tp!1872768 () Bool)

(declare-fun tp!1872770 () Bool)

(assert (=> b!6839772 (= e!4125135 (and tp!1872768 tp!1872770))))

(assert (=> b!6838085 (= tp!1871386 e!4125135)))

(declare-fun b!6839773 () Bool)

(declare-fun tp!1872771 () Bool)

(assert (=> b!6839773 (= e!4125135 tp!1872771)))

(declare-fun b!6839774 () Bool)

(declare-fun tp!1872769 () Bool)

(declare-fun tp!1872767 () Bool)

(assert (=> b!6839774 (= e!4125135 (and tp!1872769 tp!1872767))))

(assert (= (and b!6838085 ((_ is ElementMatch!16655) (reg!16984 (reg!16984 (regTwo!33822 r!7292))))) b!6839771))

(assert (= (and b!6838085 ((_ is Concat!25500) (reg!16984 (reg!16984 (regTwo!33822 r!7292))))) b!6839772))

(assert (= (and b!6838085 ((_ is Star!16655) (reg!16984 (reg!16984 (regTwo!33822 r!7292))))) b!6839773))

(assert (= (and b!6838085 ((_ is Union!16655) (reg!16984 (reg!16984 (regTwo!33822 r!7292))))) b!6839774))

(declare-fun b!6839775 () Bool)

(declare-fun e!4125136 () Bool)

(assert (=> b!6839775 (= e!4125136 tp_is_empty!42563)))

(declare-fun b!6839776 () Bool)

(declare-fun tp!1872773 () Bool)

(declare-fun tp!1872775 () Bool)

(assert (=> b!6839776 (= e!4125136 (and tp!1872773 tp!1872775))))

(assert (=> b!6838028 (= tp!1871314 e!4125136)))

(declare-fun b!6839777 () Bool)

(declare-fun tp!1872776 () Bool)

(assert (=> b!6839777 (= e!4125136 tp!1872776)))

(declare-fun b!6839778 () Bool)

(declare-fun tp!1872774 () Bool)

(declare-fun tp!1872772 () Bool)

(assert (=> b!6839778 (= e!4125136 (and tp!1872774 tp!1872772))))

(assert (= (and b!6838028 ((_ is ElementMatch!16655) (reg!16984 (regTwo!33822 (regOne!33822 r!7292))))) b!6839775))

(assert (= (and b!6838028 ((_ is Concat!25500) (reg!16984 (regTwo!33822 (regOne!33822 r!7292))))) b!6839776))

(assert (= (and b!6838028 ((_ is Star!16655) (reg!16984 (regTwo!33822 (regOne!33822 r!7292))))) b!6839777))

(assert (= (and b!6838028 ((_ is Union!16655) (reg!16984 (regTwo!33822 (regOne!33822 r!7292))))) b!6839778))

(declare-fun b!6839779 () Bool)

(declare-fun e!4125137 () Bool)

(assert (=> b!6839779 (= e!4125137 tp_is_empty!42563)))

(declare-fun b!6839780 () Bool)

(declare-fun tp!1872778 () Bool)

(declare-fun tp!1872780 () Bool)

(assert (=> b!6839780 (= e!4125137 (and tp!1872778 tp!1872780))))

(assert (=> b!6838076 (= tp!1871373 e!4125137)))

(declare-fun b!6839781 () Bool)

(declare-fun tp!1872781 () Bool)

(assert (=> b!6839781 (= e!4125137 tp!1872781)))

(declare-fun b!6839782 () Bool)

(declare-fun tp!1872779 () Bool)

(declare-fun tp!1872777 () Bool)

(assert (=> b!6839782 (= e!4125137 (and tp!1872779 tp!1872777))))

(assert (= (and b!6838076 ((_ is ElementMatch!16655) (regOne!33822 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839779))

(assert (= (and b!6838076 ((_ is Concat!25500) (regOne!33822 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839780))

(assert (= (and b!6838076 ((_ is Star!16655) (regOne!33822 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839781))

(assert (= (and b!6838076 ((_ is Union!16655) (regOne!33822 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839782))

(declare-fun b!6839783 () Bool)

(declare-fun e!4125138 () Bool)

(assert (=> b!6839783 (= e!4125138 tp_is_empty!42563)))

(declare-fun b!6839784 () Bool)

(declare-fun tp!1872783 () Bool)

(declare-fun tp!1872785 () Bool)

(assert (=> b!6839784 (= e!4125138 (and tp!1872783 tp!1872785))))

(assert (=> b!6838076 (= tp!1871375 e!4125138)))

(declare-fun b!6839785 () Bool)

(declare-fun tp!1872786 () Bool)

(assert (=> b!6839785 (= e!4125138 tp!1872786)))

(declare-fun b!6839786 () Bool)

(declare-fun tp!1872784 () Bool)

(declare-fun tp!1872782 () Bool)

(assert (=> b!6839786 (= e!4125138 (and tp!1872784 tp!1872782))))

(assert (= (and b!6838076 ((_ is ElementMatch!16655) (regTwo!33822 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839783))

(assert (= (and b!6838076 ((_ is Concat!25500) (regTwo!33822 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839784))

(assert (= (and b!6838076 ((_ is Star!16655) (regTwo!33822 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839785))

(assert (= (and b!6838076 ((_ is Union!16655) (regTwo!33822 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839786))

(declare-fun b!6839787 () Bool)

(declare-fun e!4125139 () Bool)

(declare-fun tp!1872787 () Bool)

(declare-fun tp!1872788 () Bool)

(assert (=> b!6839787 (= e!4125139 (and tp!1872787 tp!1872788))))

(assert (=> b!6838021 (= tp!1871304 e!4125139)))

(assert (= (and b!6838021 ((_ is Cons!66140) (exprs!6539 setElem!46977))) b!6839787))

(declare-fun b!6839788 () Bool)

(declare-fun e!4125140 () Bool)

(assert (=> b!6839788 (= e!4125140 tp_is_empty!42563)))

(declare-fun b!6839789 () Bool)

(declare-fun tp!1872790 () Bool)

(declare-fun tp!1872792 () Bool)

(assert (=> b!6839789 (= e!4125140 (and tp!1872790 tp!1872792))))

(assert (=> b!6838068 (= tp!1871364 e!4125140)))

(declare-fun b!6839790 () Bool)

(declare-fun tp!1872793 () Bool)

(assert (=> b!6839790 (= e!4125140 tp!1872793)))

(declare-fun b!6839791 () Bool)

(declare-fun tp!1872791 () Bool)

(declare-fun tp!1872789 () Bool)

(assert (=> b!6839791 (= e!4125140 (and tp!1872791 tp!1872789))))

(assert (= (and b!6838068 ((_ is ElementMatch!16655) (reg!16984 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839788))

(assert (= (and b!6838068 ((_ is Concat!25500) (reg!16984 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839789))

(assert (= (and b!6838068 ((_ is Star!16655) (reg!16984 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839790))

(assert (= (and b!6838068 ((_ is Union!16655) (reg!16984 (h!72588 (exprs!6539 (h!72589 zl!343)))))) b!6839791))

(declare-fun b!6839792 () Bool)

(declare-fun e!4125141 () Bool)

(assert (=> b!6839792 (= e!4125141 tp_is_empty!42563)))

(declare-fun b!6839793 () Bool)

(declare-fun tp!1872795 () Bool)

(declare-fun tp!1872797 () Bool)

(assert (=> b!6839793 (= e!4125141 (and tp!1872795 tp!1872797))))

(assert (=> b!6838007 (= tp!1871283 e!4125141)))

(declare-fun b!6839794 () Bool)

(declare-fun tp!1872798 () Bool)

(assert (=> b!6839794 (= e!4125141 tp!1872798)))

(declare-fun b!6839795 () Bool)

(declare-fun tp!1872796 () Bool)

(declare-fun tp!1872794 () Bool)

(assert (=> b!6839795 (= e!4125141 (and tp!1872796 tp!1872794))))

(assert (= (and b!6838007 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33822 (reg!16984 r!7292))))) b!6839792))

(assert (= (and b!6838007 ((_ is Concat!25500) (regOne!33823 (regTwo!33822 (reg!16984 r!7292))))) b!6839793))

(assert (= (and b!6838007 ((_ is Star!16655) (regOne!33823 (regTwo!33822 (reg!16984 r!7292))))) b!6839794))

(assert (= (and b!6838007 ((_ is Union!16655) (regOne!33823 (regTwo!33822 (reg!16984 r!7292))))) b!6839795))

(declare-fun b!6839796 () Bool)

(declare-fun e!4125142 () Bool)

(assert (=> b!6839796 (= e!4125142 tp_is_empty!42563)))

(declare-fun b!6839797 () Bool)

(declare-fun tp!1872800 () Bool)

(declare-fun tp!1872802 () Bool)

(assert (=> b!6839797 (= e!4125142 (and tp!1872800 tp!1872802))))

(assert (=> b!6838007 (= tp!1871281 e!4125142)))

(declare-fun b!6839798 () Bool)

(declare-fun tp!1872803 () Bool)

(assert (=> b!6839798 (= e!4125142 tp!1872803)))

(declare-fun b!6839799 () Bool)

(declare-fun tp!1872801 () Bool)

(declare-fun tp!1872799 () Bool)

(assert (=> b!6839799 (= e!4125142 (and tp!1872801 tp!1872799))))

(assert (= (and b!6838007 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33822 (reg!16984 r!7292))))) b!6839796))

(assert (= (and b!6838007 ((_ is Concat!25500) (regTwo!33823 (regTwo!33822 (reg!16984 r!7292))))) b!6839797))

(assert (= (and b!6838007 ((_ is Star!16655) (regTwo!33823 (regTwo!33822 (reg!16984 r!7292))))) b!6839798))

(assert (= (and b!6838007 ((_ is Union!16655) (regTwo!33823 (regTwo!33822 (reg!16984 r!7292))))) b!6839799))

(declare-fun b!6839800 () Bool)

(declare-fun e!4125143 () Bool)

(assert (=> b!6839800 (= e!4125143 tp_is_empty!42563)))

(declare-fun b!6839801 () Bool)

(declare-fun tp!1872805 () Bool)

(declare-fun tp!1872807 () Bool)

(assert (=> b!6839801 (= e!4125143 (and tp!1872805 tp!1872807))))

(assert (=> b!6838078 (= tp!1871374 e!4125143)))

(declare-fun b!6839802 () Bool)

(declare-fun tp!1872808 () Bool)

(assert (=> b!6839802 (= e!4125143 tp!1872808)))

(declare-fun b!6839803 () Bool)

(declare-fun tp!1872806 () Bool)

(declare-fun tp!1872804 () Bool)

(assert (=> b!6839803 (= e!4125143 (and tp!1872806 tp!1872804))))

(assert (= (and b!6838078 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839800))

(assert (= (and b!6838078 ((_ is Concat!25500) (regOne!33823 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839801))

(assert (= (and b!6838078 ((_ is Star!16655) (regOne!33823 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839802))

(assert (= (and b!6838078 ((_ is Union!16655) (regOne!33823 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839803))

(declare-fun b!6839804 () Bool)

(declare-fun e!4125144 () Bool)

(assert (=> b!6839804 (= e!4125144 tp_is_empty!42563)))

(declare-fun b!6839805 () Bool)

(declare-fun tp!1872810 () Bool)

(declare-fun tp!1872812 () Bool)

(assert (=> b!6839805 (= e!4125144 (and tp!1872810 tp!1872812))))

(assert (=> b!6838078 (= tp!1871372 e!4125144)))

(declare-fun b!6839806 () Bool)

(declare-fun tp!1872813 () Bool)

(assert (=> b!6839806 (= e!4125144 tp!1872813)))

(declare-fun b!6839807 () Bool)

(declare-fun tp!1872811 () Bool)

(declare-fun tp!1872809 () Bool)

(assert (=> b!6839807 (= e!4125144 (and tp!1872811 tp!1872809))))

(assert (= (and b!6838078 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839804))

(assert (= (and b!6838078 ((_ is Concat!25500) (regTwo!33823 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839805))

(assert (= (and b!6838078 ((_ is Star!16655) (regTwo!33823 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839806))

(assert (= (and b!6838078 ((_ is Union!16655) (regTwo!33823 (regTwo!33823 (regTwo!33823 r!7292))))) b!6839807))

(declare-fun b!6839809 () Bool)

(declare-fun e!4125146 () Bool)

(declare-fun tp!1872814 () Bool)

(assert (=> b!6839809 (= e!4125146 tp!1872814)))

(declare-fun e!4125145 () Bool)

(declare-fun tp!1872815 () Bool)

(declare-fun b!6839808 () Bool)

(assert (=> b!6839808 (= e!4125145 (and (inv!84884 (h!72589 (t!380008 res!2792352))) e!4125146 tp!1872815))))

(assert (=> b!6837864 (= tp!1871254 e!4125145)))

(assert (= b!6839808 b!6839809))

(assert (= (and b!6837864 ((_ is Cons!66141) (t!380008 res!2792352))) b!6839808))

(declare-fun m!7583414 () Bool)

(assert (=> b!6839808 m!7583414))

(declare-fun b!6839810 () Bool)

(declare-fun e!4125147 () Bool)

(assert (=> b!6839810 (= e!4125147 tp_is_empty!42563)))

(declare-fun b!6839811 () Bool)

(declare-fun tp!1872817 () Bool)

(declare-fun tp!1872819 () Bool)

(assert (=> b!6839811 (= e!4125147 (and tp!1872817 tp!1872819))))

(assert (=> b!6838093 (= tp!1871395 e!4125147)))

(declare-fun b!6839812 () Bool)

(declare-fun tp!1872820 () Bool)

(assert (=> b!6839812 (= e!4125147 tp!1872820)))

(declare-fun b!6839813 () Bool)

(declare-fun tp!1872818 () Bool)

(declare-fun tp!1872816 () Bool)

(assert (=> b!6839813 (= e!4125147 (and tp!1872818 tp!1872816))))

(assert (= (and b!6838093 ((_ is ElementMatch!16655) (regOne!33822 (regOne!33822 (regTwo!33822 r!7292))))) b!6839810))

(assert (= (and b!6838093 ((_ is Concat!25500) (regOne!33822 (regOne!33822 (regTwo!33822 r!7292))))) b!6839811))

(assert (= (and b!6838093 ((_ is Star!16655) (regOne!33822 (regOne!33822 (regTwo!33822 r!7292))))) b!6839812))

(assert (= (and b!6838093 ((_ is Union!16655) (regOne!33822 (regOne!33822 (regTwo!33822 r!7292))))) b!6839813))

(declare-fun b!6839814 () Bool)

(declare-fun e!4125148 () Bool)

(assert (=> b!6839814 (= e!4125148 tp_is_empty!42563)))

(declare-fun b!6839815 () Bool)

(declare-fun tp!1872822 () Bool)

(declare-fun tp!1872824 () Bool)

(assert (=> b!6839815 (= e!4125148 (and tp!1872822 tp!1872824))))

(assert (=> b!6838093 (= tp!1871397 e!4125148)))

(declare-fun b!6839816 () Bool)

(declare-fun tp!1872825 () Bool)

(assert (=> b!6839816 (= e!4125148 tp!1872825)))

(declare-fun b!6839817 () Bool)

(declare-fun tp!1872823 () Bool)

(declare-fun tp!1872821 () Bool)

(assert (=> b!6839817 (= e!4125148 (and tp!1872823 tp!1872821))))

(assert (= (and b!6838093 ((_ is ElementMatch!16655) (regTwo!33822 (regOne!33822 (regTwo!33822 r!7292))))) b!6839814))

(assert (= (and b!6838093 ((_ is Concat!25500) (regTwo!33822 (regOne!33822 (regTwo!33822 r!7292))))) b!6839815))

(assert (= (and b!6838093 ((_ is Star!16655) (regTwo!33822 (regOne!33822 (regTwo!33822 r!7292))))) b!6839816))

(assert (= (and b!6838093 ((_ is Union!16655) (regTwo!33822 (regOne!33822 (regTwo!33822 r!7292))))) b!6839817))

(declare-fun b!6839818 () Bool)

(declare-fun e!4125149 () Bool)

(assert (=> b!6839818 (= e!4125149 tp_is_empty!42563)))

(declare-fun b!6839819 () Bool)

(declare-fun tp!1872827 () Bool)

(declare-fun tp!1872829 () Bool)

(assert (=> b!6839819 (= e!4125149 (and tp!1872827 tp!1872829))))

(assert (=> b!6837991 (= tp!1871263 e!4125149)))

(declare-fun b!6839820 () Bool)

(declare-fun tp!1872830 () Bool)

(assert (=> b!6839820 (= e!4125149 tp!1872830)))

(declare-fun b!6839821 () Bool)

(declare-fun tp!1872828 () Bool)

(declare-fun tp!1872826 () Bool)

(assert (=> b!6839821 (= e!4125149 (and tp!1872828 tp!1872826))))

(assert (= (and b!6837991 ((_ is ElementMatch!16655) (regOne!33823 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839818))

(assert (= (and b!6837991 ((_ is Concat!25500) (regOne!33823 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839819))

(assert (= (and b!6837991 ((_ is Star!16655) (regOne!33823 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839820))

(assert (= (and b!6837991 ((_ is Union!16655) (regOne!33823 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839821))

(declare-fun b!6839822 () Bool)

(declare-fun e!4125150 () Bool)

(assert (=> b!6839822 (= e!4125150 tp_is_empty!42563)))

(declare-fun b!6839823 () Bool)

(declare-fun tp!1872832 () Bool)

(declare-fun tp!1872834 () Bool)

(assert (=> b!6839823 (= e!4125150 (and tp!1872832 tp!1872834))))

(assert (=> b!6837991 (= tp!1871261 e!4125150)))

(declare-fun b!6839824 () Bool)

(declare-fun tp!1872835 () Bool)

(assert (=> b!6839824 (= e!4125150 tp!1872835)))

(declare-fun b!6839825 () Bool)

(declare-fun tp!1872833 () Bool)

(declare-fun tp!1872831 () Bool)

(assert (=> b!6839825 (= e!4125150 (and tp!1872833 tp!1872831))))

(assert (= (and b!6837991 ((_ is ElementMatch!16655) (regTwo!33823 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839822))

(assert (= (and b!6837991 ((_ is Concat!25500) (regTwo!33823 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839823))

(assert (= (and b!6837991 ((_ is Star!16655) (regTwo!33823 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839824))

(assert (= (and b!6837991 ((_ is Union!16655) (regTwo!33823 (regTwo!33823 (regTwo!33822 r!7292))))) b!6839825))

(declare-fun b_lambda!257995 () Bool)

(assert (= b_lambda!257993 (or d!2150589 b_lambda!257995)))

(declare-fun bs!1829078 () Bool)

(declare-fun d!2150897 () Bool)

(assert (= bs!1829078 (and d!2150897 d!2150589)))

(assert (=> bs!1829078 (= (dynLambda!26428 lambda!386687 (h!72588 (exprs!6539 (h!72589 (t!380008 zl!343))))) (validRegex!8391 (h!72588 (exprs!6539 (h!72589 (t!380008 zl!343))))))))

(declare-fun m!7583416 () Bool)

(assert (=> bs!1829078 m!7583416))

(assert (=> b!6839255 d!2150897))

(declare-fun b_lambda!257997 () Bool)

(assert (= b_lambda!257979 (or d!2150455 b_lambda!257997)))

(declare-fun bs!1829079 () Bool)

(declare-fun d!2150899 () Bool)

(assert (= bs!1829079 (and d!2150899 d!2150455)))

(assert (=> bs!1829079 (= (dynLambda!26428 lambda!386661 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343))))) (validRegex!8391 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(declare-fun m!7583418 () Bool)

(assert (=> bs!1829079 m!7583418))

(assert (=> b!6839037 d!2150899))

(declare-fun b_lambda!257999 () Bool)

(assert (= b_lambda!257985 (or d!2150449 b_lambda!257999)))

(declare-fun bs!1829080 () Bool)

(declare-fun d!2150901 () Bool)

(assert (= bs!1829080 (and d!2150901 d!2150449)))

(assert (=> bs!1829080 (= (dynLambda!26428 lambda!386657 (h!72588 (t!380007 (exprs!6539 setElem!46969)))) (validRegex!8391 (h!72588 (t!380007 (exprs!6539 setElem!46969)))))))

(declare-fun m!7583420 () Bool)

(assert (=> bs!1829080 m!7583420))

(assert (=> b!6839129 d!2150901))

(declare-fun b_lambda!258001 () Bool)

(assert (= b_lambda!257981 (or d!2150549 b_lambda!258001)))

(declare-fun bs!1829081 () Bool)

(declare-fun d!2150903 () Bool)

(assert (= bs!1829081 (and d!2150903 d!2150549)))

(assert (=> bs!1829081 (= (dynLambda!26428 lambda!386679 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343))))) (validRegex!8391 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(assert (=> bs!1829081 m!7583418))

(assert (=> b!6839097 d!2150903))

(declare-fun b_lambda!258003 () Bool)

(assert (= b_lambda!257991 (or d!2150577 b_lambda!258003)))

(declare-fun bs!1829082 () Bool)

(declare-fun d!2150905 () Bool)

(assert (= bs!1829082 (and d!2150905 d!2150577)))

(assert (=> bs!1829082 (= (dynLambda!26428 lambda!386686 (h!72588 (exprs!6539 setElem!46975))) (validRegex!8391 (h!72588 (exprs!6539 setElem!46975))))))

(declare-fun m!7583422 () Bool)

(assert (=> bs!1829082 m!7583422))

(assert (=> b!6839253 d!2150905))

(declare-fun b_lambda!258005 () Bool)

(assert (= b_lambda!257987 (or d!2150575 b_lambda!258005)))

(declare-fun bs!1829083 () Bool)

(declare-fun d!2150907 () Bool)

(assert (= bs!1829083 (and d!2150907 d!2150575)))

(assert (=> bs!1829083 (= (dynLambda!26428 lambda!386685 (h!72588 lt!2455114)) (validRegex!8391 (h!72588 lt!2455114)))))

(declare-fun m!7583424 () Bool)

(assert (=> bs!1829083 m!7583424))

(assert (=> b!6839153 d!2150907))

(declare-fun b_lambda!258007 () Bool)

(assert (= b_lambda!257983 (or d!2150451 b_lambda!258007)))

(declare-fun bs!1829084 () Bool)

(declare-fun d!2150909 () Bool)

(assert (= bs!1829084 (and d!2150909 d!2150451)))

(assert (=> bs!1829084 (= (dynLambda!26428 lambda!386658 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343))))) (validRegex!8391 (h!72588 (t!380007 (exprs!6539 (h!72589 zl!343))))))))

(assert (=> bs!1829084 m!7583418))

(assert (=> b!6839117 d!2150909))

(declare-fun b_lambda!258009 () Bool)

(assert (= b_lambda!257989 (or d!2150573 b_lambda!258009)))

(declare-fun bs!1829085 () Bool)

(declare-fun d!2150911 () Bool)

(assert (= bs!1829085 (and d!2150911 d!2150573)))

(assert (=> bs!1829085 (= (dynLambda!26428 lambda!386682 (h!72588 (unfocusZipperList!2076 zl!343))) (validRegex!8391 (h!72588 (unfocusZipperList!2076 zl!343))))))

(declare-fun m!7583426 () Bool)

(assert (=> bs!1829085 m!7583426))

(assert (=> b!6839188 d!2150911))

(check-sat (not b!6839169) (not bm!622907) (not b!6839502) (not b!6839781) (not b!6839645) (not b!6839554) (not b!6839350) (not b!6839673) (not b!6839411) (not bm!622896) (not b!6839371) (not b!6839508) (not bm!622916) (not b!6839791) (not b!6839805) (not b!6839399) (not b!6839156) (not b!6839541) (not b_lambda!258001) (not b!6839451) (not b!6839583) (not b!6839795) (not bm!622915) (not b!6839329) (not b!6839602) (not b!6839307) (not d!2150791) (not b!6839542) (not b!6839545) (not b!6839132) (not b!6839538) (not b!6839764) (not b!6839391) (not b!6839386) (not b!6839043) (not b!6839335) (not b!6839603) (not b!6839567) (not b!6839333) (not b!6839656) (not b!6839498) (not b!6839365) (not b!6839651) (not b!6839762) (not b_lambda!258009) (not b!6839628) (not b!6839659) (not b!6839734) (not b!6839306) (not d!2150867) (not b!6839323) (not b!6839294) (not b!6839713) (not b!6839720) (not b!6839591) (not b!6839180) (not b!6839465) (not bm!622869) (not b!6839339) (not b!6839729) (not b!6839286) (not bs!1829081) (not bs!1829080) (not b!6839598) (not b!6839298) (not b!6839395) (not bm!622885) (not b!6839787) (not b!6839676) (not b!6839349) (not b!6839452) (not b!6839199) (not b!6839432) (not b!6839632) (not b!6839200) (not b!6839110) (not b!6839522) (not b!6839806) (not b!6839798) (not b!6839488) (not b!6839039) (not bm!622921) (not bs!1829079) (not bm!622889) (not b!6839817) (not b!6839480) (not b!6839648) (not b!6839313) (not b!6839520) (not b!6839359) (not b!6839730) (not b!6839785) (not b!6839311) (not b!6839464) (not b!6839363) (not b!6839570) (not b!6839477) (not b!6839265) (not b!6838996) (not b!6839014) (not b!6839587) (not b!6838871) (not b!6839273) (not b!6839478) (not bm!622910) (not b!6839665) (not b!6839293) (not b!6839494) (not b!6839526) (not bm!622881) (not b!6839584) (not b!6839768) (not b!6839514) (not d!2150893) (not b!6839749) (not b!6839821) (not b!6839575) (not b!6839166) (not b!6839254) (not b!6839420) (not b!6839669) (not b!6839738) (not b!6839537) (not b!6839595) (not b!6839733) (not b!6839377) (not b!6839338) (not b!6839623) (not b!6839629) (not d!2150855) (not b!6839699) (not b!6839072) (not b!6839401) (not b!6839588) (not b!6839594) (not b!6839808) (not b!6839219) (not b!6839258) (not b!6839345) (not b_lambda!258005) (not b!6839299) (not b!6839268) (not b!6839285) (not b!6839524) (not b!6839812) (not b!6839705) (not b!6839776) (not b!6839612) (not b!6839693) (not b!6839394) (not b!6839309) (not b!6839721) (not b!6839677) (not b!6839461) (not b!6839220) (not bm!622922) (not b!6839652) (not b!6839269) (not b!6839802) (not b!6839444) (not b!6839550) (not b!6839644) (not b!6839532) (not b!6839568) (not b!6839530) (not b!6839660) (not b!6839820) (not b!6839815) (not b!6839327) (not b!6839472) (not b!6839325) (not b!6839685) (not b!6839672) (not b!6839639) (not b!6839750) (not d!2150881) (not bm!622876) (not b!6839343) (not b!6839695) (not bs!1829083) (not b!6839279) (not b!6839786) (not b!6839301) (not b_lambda!257943) (not b!6839454) (not b!6839419) (not b!6839564) (not b!6839423) (not b!6839516) (not b!6839631) (not b!6839211) (not b!6839290) (not bm!622894) (not b!6839754) (not bm!622905) (not b!6839430) (not b!6839643) (not b!6839534) (not b!6839277) (not b!6839366) (not b!6839726) (not b!6839627) (not b!6839221) (not bm!622904) (not b!6839688) (not b!6839540) (not b!6839381) (not b!6839692) (not bm!622879) (not bm!622908) (not b!6839607) (not b!6839756) (not b!6839572) (not b!6838870) (not b!6839263) (not b!6839390) (not b!6839668) (not b!6839813) (not b_lambda!257995) (not b!6839736) (not b!6839122) (not b!6839574) (not b!6839778) (not b!6839551) (not b!6839210) (not b!6839481) (not b!6839367) (not b!6839624) (not b!6839496) (not b!6839358) (not b!6839403) (not bm!622893) (not b!6839374) (not b!6839422) (not b!6839789) (not b!6839819) (not b!6839707) (not b!6839590) (not b!6839704) (not b!6839303) (not b!6839614) (not b!6839405) (not b!6839560) (not b!6839528) (not b!6839046) (not b!6839267) (not b!6839578) (not b!6839458) (not b!6839260) (not b!6839512) (not b!6839282) (not b!6839697) (not b!6839375) (not b!6839385) (not b!6839326) (not b!6839490) (not b!6839476) (not b!6839732) (not b!6839566) (not b!6839291) (not b!6839027) (not b!6839232) (not b!6839256) (not b!6839289) (not b!6839314) (not b!6839427) (not bm!622867) (not b!6839474) (not b_lambda!257999) (not b!6839741) (not b!6839610) (not b!6839718) (not b!6839580) (not setNonEmpty!46979) (not b!6839497) (not b!6839319) (not b!6839318) (not bs!1829085) (not b!6839098) (not b!6839529) (not b!6839696) (not d!2150835) (not b!6839341) (not b!6839636) (not bm!622872) (not b!6839716) (not b!6839317) (not b!6839606) (not b!6839649) (not b!6839793) (not b!6839675) (not b!6839264) (not b!6839748) (not b!6839355) (not b!6839005) (not b!6839460) (not b!6839760) (not b!6839616) (not b!6839592) (not b!6839152) (not b!6839548) (not b_lambda!258003) (not b!6839446) (not b!6839436) (not b!6839555) (not b!6839517) (not b!6839406) (not bm!622919) (not b!6839505) (not b!6839761) (not b!6839576) (not b!6839402) (not b!6839647) (not b!6839711) (not b!6839563) (not bm!622918) (not b!6839745) (not b!6839683) tp_is_empty!42563 (not b!6839621) (not b!6839080) (not b!6839625) (not b!6839615) (not b!6839321) (not b!6839378) (not b!6839060) (not b!6839811) (not b!6839757) (not b!6839769) (not bm!622901) (not d!2150877) (not b!6839428) (not b!6839506) (not b!6839493) (not b!6839518) (not b!6839663) (not b!6839712) (not b!6839168) (not bm!622926) (not b!6839393) (not bm!622929) (not b!6839772) (not b!6839608) (not b!6839426) (not b!6839373) (not b!6839467) (not bm!622882) (not b!6839222) (not b!6839270) (not b!6839278) (not b!6839742) (not b!6839424) (not b!6839533) (not b!6839671) (not b!6839484) (not b!6839283) (not b!6839637) (not b!6839334) (not b!6839310) (not b!6839071) (not bm!622866) (not b!6839773) (not b!6839330) (not b!6839442) (not b!6839684) (not b_lambda!257941) (not bm!622899) (not b!6839302) (not b!6839431) (not d!2150821) (not b!6839463) (not b!6839635) (not bm!622900) (not b!6839271) (not b!6839447) (not b!6839782) (not b!6839752) (not b!6839109) (not b!6839679) (not bm!622925) (not bs!1829084) (not b!6839089) (not b!6839780) (not bm!622891) (not b!6839803) (not b!6839552) (not b!6839357) (not b!6839700) (not b!6839351) (not b!6839725) (not b!6839544) (not b!6839227) (not b!6839412) (not b!6839212) (not b!6839259) (not b!6839439) (not b!6839766) (not b!6839667) (not b!6839513) (not b!6839042) (not b!6839599) (not b!6839501) (not b!6839455) (not b!6839653) (not b!6839753) (not b!6839342) (not b!6839245) (not b!6839223) (not b!6839361) (not d!2150779) (not b!6839746) (not b!6839582) (not b!6839728) (not b!6839586) (not b_lambda!258007) (not d!2150781) (not b!6839353) (not b!6839215) (not b_lambda!257997) (not d!2150885) (not b!6839171) (not bm!622898) (not b!6839154) (not b!6839370) (not d!2150879) (not b!6839346) (not bm!622909) (not b!6839715) (not b!6839558) (not b!6839509) (not b!6839801) (not bm!622878) (not b!6839770) (not bm!622932) (not b!6839619) (not b!6839758) (not b!6839281) (not b!6839709) (not b!6839680) (not b!6839571) (not b!6839737) (not b!6839398) (not b!6839347) (not b!6839740) (not bm!622886) (not b!6839041) (not b!6839435) (not b!6839579) (not b!6839383) (not bs!1829082) (not bm!622875) (not b!6839443) (not b!6839144) (not bm!622873) (not bm!622868) (not bm!622888) (not b!6839118) (not b!6839521) (not b!6839600) (not b!6839777) (not b!6839525) (not b!6839158) (not b!6839315) (not b!6839797) (not b!6839799) (not b!6839274) (not b!6839143) (not b!6839661) (not b!6839549) (not b!6839816) (not b!6839633) (not b!6839459) (not b!6839275) (not b!6839823) (not bm!622912) (not b!6839189) (not b!6839546) (not b!6839362) (not b!6839824) (not b!6839485) (not b!6839701) (not bs!1829078) (not b!6839611) (not b!6839655) (not b!6839191) (not b!6839640) (not b!6839202) (not b!6839618) (not b!6839382) (not b!6839504) (not b!6839687) (not b!6839620) (not b!6839448) (not b!6839708) (not b!6839450) (not bm!622924) (not b!6839052) (not b!6839722) (not b!6839434) (not b!6839784) (not b!6839408) (not b!6839790) (not b!6839807) (not b_lambda!257945) (not b!6839040) (not b!6839473) (not b!6839045) (not b!6839765) (not b!6839418) (not bm!622897) (not d!2150817) (not bm!622890) (not b!6839397) (not b!6839536) (not b!6839489) (not b!6839703) (not b!6839468) (not b!6839562) (not b!6839809) (not b!6839691) (not b!6839407) (not b!6839681) (not b!6839500) (not b!6839416) (not bm!622913) (not b!6839469) (not bm!622870) (not b!6839305) (not b!6839774) (not b!6839440) (not b!6839415) (not d!2150793) (not b!6839717) (not b!6839724) (not b!6839410) (not b!6839029) (not b!6839369) (not d!2150789) (not b!6839297) (not b!6839337) (not b!6839604) (not b!6839414) (not b!6839657) (not b!6839456) (not b!6839295) (not b!6839689) (not b!6839510) (not b!6839389) (not b!6839482) (not b!6839559) (not b!6839216) (not b!6839641) (not b!6839379) (not d!2150773) (not b!6839556) (not b!6839596) (not b!6839354) (not b!6839287) (not b!6839237) (not b!6839262) (not b!6839322) (not b!6839492) (not b!6839130) (not b!6839038) (not b!6839331) (not b!6839471) (not b!6839794) (not b!6839387) (not d!2150805) (not b!6839664) (not d!2150825) (not b!6839438) (not b!6839217) (not b!6839744) (not d!2150833) (not b!6839486) (not b!6839825) (not bm!622930))
(check-sat)
