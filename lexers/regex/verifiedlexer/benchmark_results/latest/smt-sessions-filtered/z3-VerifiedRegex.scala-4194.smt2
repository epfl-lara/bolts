; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!227852 () Bool)

(assert start!227852)

(declare-fun res!988131 () Bool)

(declare-fun e!1481264 () Bool)

(assert (=> start!227852 (=> (not res!988131) (not e!1481264))))

(declare-datatypes ((C!13672 0))(
  ( (C!13673 (val!7888 Int)) )
))
(declare-datatypes ((Regex!6763 0))(
  ( (ElementMatch!6763 (c!366434 C!13672)) (Concat!11339 (regOne!14038 Regex!6763) (regTwo!14038 Regex!6763)) (EmptyExpr!6763) (Star!6763 (reg!7092 Regex!6763)) (EmptyLang!6763) (Union!6763 (regOne!14039 Regex!6763) (regTwo!14039 Regex!6763)) )
))
(declare-datatypes ((List!27609 0))(
  ( (Nil!27511) (Cons!27511 (h!32912 Regex!6763) (t!207105 List!27609)) )
))
(declare-datatypes ((Context!4170 0))(
  ( (Context!4171 (exprs!2585 List!27609)) )
))
(declare-fun thiss!29363 () Context!4170)

(declare-fun isEmpty!15744 (List!27609) Bool)

(assert (=> start!227852 (= res!988131 (not (isEmpty!15744 (exprs!2585 thiss!29363))))))

(assert (=> start!227852 e!1481264))

(declare-fun e!1481265 () Bool)

(declare-fun inv!37176 (Context!4170) Bool)

(assert (=> start!227852 (and (inv!37176 thiss!29363) e!1481265)))

(declare-fun b!2311299 () Bool)

(declare-fun tail!3341 (List!27609) List!27609)

(assert (=> b!2311299 (= e!1481264 (not (inv!37176 (Context!4171 (tail!3341 (exprs!2585 thiss!29363))))))))

(declare-fun b!2311300 () Bool)

(declare-fun tp!733321 () Bool)

(assert (=> b!2311300 (= e!1481265 tp!733321)))

(assert (= (and start!227852 res!988131) b!2311299))

(assert (= start!227852 b!2311300))

(declare-fun m!2738619 () Bool)

(assert (=> start!227852 m!2738619))

(declare-fun m!2738621 () Bool)

(assert (=> start!227852 m!2738621))

(declare-fun m!2738623 () Bool)

(assert (=> b!2311299 m!2738623))

(declare-fun m!2738625 () Bool)

(assert (=> b!2311299 m!2738625))

(check-sat (not start!227852) (not b!2311299) (not b!2311300))
(check-sat)
(get-model)

(declare-fun d!683815 () Bool)

(get-info :version)

(assert (=> d!683815 (= (isEmpty!15744 (exprs!2585 thiss!29363)) ((_ is Nil!27511) (exprs!2585 thiss!29363)))))

(assert (=> start!227852 d!683815))

(declare-fun d!683817 () Bool)

(declare-fun lambda!86078 () Int)

(declare-fun forall!5510 (List!27609 Int) Bool)

(assert (=> d!683817 (= (inv!37176 thiss!29363) (forall!5510 (exprs!2585 thiss!29363) lambda!86078))))

(declare-fun bs!458285 () Bool)

(assert (= bs!458285 d!683817))

(declare-fun m!2738631 () Bool)

(assert (=> bs!458285 m!2738631))

(assert (=> start!227852 d!683817))

(declare-fun bs!458286 () Bool)

(declare-fun d!683823 () Bool)

(assert (= bs!458286 (and d!683823 d!683817)))

(declare-fun lambda!86079 () Int)

(assert (=> bs!458286 (= lambda!86079 lambda!86078)))

(assert (=> d!683823 (= (inv!37176 (Context!4171 (tail!3341 (exprs!2585 thiss!29363)))) (forall!5510 (exprs!2585 (Context!4171 (tail!3341 (exprs!2585 thiss!29363)))) lambda!86079))))

(declare-fun bs!458287 () Bool)

(assert (= bs!458287 d!683823))

(declare-fun m!2738633 () Bool)

(assert (=> bs!458287 m!2738633))

(assert (=> b!2311299 d!683823))

(declare-fun d!683825 () Bool)

(assert (=> d!683825 (= (tail!3341 (exprs!2585 thiss!29363)) (t!207105 (exprs!2585 thiss!29363)))))

(assert (=> b!2311299 d!683825))

(declare-fun b!2311310 () Bool)

(declare-fun e!1481271 () Bool)

(declare-fun tp!733332 () Bool)

(declare-fun tp!733333 () Bool)

(assert (=> b!2311310 (= e!1481271 (and tp!733332 tp!733333))))

(assert (=> b!2311300 (= tp!733321 e!1481271)))

(assert (= (and b!2311300 ((_ is Cons!27511) (exprs!2585 thiss!29363))) b!2311310))

(check-sat (not d!683823) (not d!683817) (not b!2311310))
(check-sat)
(get-model)

(declare-fun d!683835 () Bool)

(declare-fun res!988144 () Bool)

(declare-fun e!1481288 () Bool)

(assert (=> d!683835 (=> res!988144 e!1481288)))

(assert (=> d!683835 (= res!988144 ((_ is Nil!27511) (exprs!2585 (Context!4171 (tail!3341 (exprs!2585 thiss!29363))))))))

(assert (=> d!683835 (= (forall!5510 (exprs!2585 (Context!4171 (tail!3341 (exprs!2585 thiss!29363)))) lambda!86079) e!1481288)))

(declare-fun b!2311338 () Bool)

(declare-fun e!1481289 () Bool)

(assert (=> b!2311338 (= e!1481288 e!1481289)))

(declare-fun res!988145 () Bool)

(assert (=> b!2311338 (=> (not res!988145) (not e!1481289))))

(declare-fun dynLambda!11973 (Int Regex!6763) Bool)

(assert (=> b!2311338 (= res!988145 (dynLambda!11973 lambda!86079 (h!32912 (exprs!2585 (Context!4171 (tail!3341 (exprs!2585 thiss!29363)))))))))

(declare-fun b!2311339 () Bool)

(assert (=> b!2311339 (= e!1481289 (forall!5510 (t!207105 (exprs!2585 (Context!4171 (tail!3341 (exprs!2585 thiss!29363))))) lambda!86079))))

(assert (= (and d!683835 (not res!988144)) b!2311338))

(assert (= (and b!2311338 res!988145) b!2311339))

(declare-fun b_lambda!73681 () Bool)

(assert (=> (not b_lambda!73681) (not b!2311338)))

(declare-fun m!2738647 () Bool)

(assert (=> b!2311338 m!2738647))

(declare-fun m!2738649 () Bool)

(assert (=> b!2311339 m!2738649))

(assert (=> d!683823 d!683835))

(declare-fun d!683837 () Bool)

(declare-fun res!988146 () Bool)

(declare-fun e!1481290 () Bool)

(assert (=> d!683837 (=> res!988146 e!1481290)))

(assert (=> d!683837 (= res!988146 ((_ is Nil!27511) (exprs!2585 thiss!29363)))))

(assert (=> d!683837 (= (forall!5510 (exprs!2585 thiss!29363) lambda!86078) e!1481290)))

(declare-fun b!2311340 () Bool)

(declare-fun e!1481291 () Bool)

(assert (=> b!2311340 (= e!1481290 e!1481291)))

(declare-fun res!988147 () Bool)

(assert (=> b!2311340 (=> (not res!988147) (not e!1481291))))

(assert (=> b!2311340 (= res!988147 (dynLambda!11973 lambda!86078 (h!32912 (exprs!2585 thiss!29363))))))

(declare-fun b!2311341 () Bool)

(assert (=> b!2311341 (= e!1481291 (forall!5510 (t!207105 (exprs!2585 thiss!29363)) lambda!86078))))

(assert (= (and d!683837 (not res!988146)) b!2311340))

(assert (= (and b!2311340 res!988147) b!2311341))

(declare-fun b_lambda!73683 () Bool)

(assert (=> (not b_lambda!73683) (not b!2311340)))

(declare-fun m!2738651 () Bool)

(assert (=> b!2311340 m!2738651))

(declare-fun m!2738653 () Bool)

(assert (=> b!2311341 m!2738653))

(assert (=> d!683817 d!683837))

(declare-fun e!1481294 () Bool)

(assert (=> b!2311310 (= tp!733332 e!1481294)))

(declare-fun b!2311352 () Bool)

(declare-fun tp_is_empty!10751 () Bool)

(assert (=> b!2311352 (= e!1481294 tp_is_empty!10751)))

(declare-fun b!2311353 () Bool)

(declare-fun tp!733363 () Bool)

(declare-fun tp!733365 () Bool)

(assert (=> b!2311353 (= e!1481294 (and tp!733363 tp!733365))))

(declare-fun b!2311355 () Bool)

(declare-fun tp!733362 () Bool)

(declare-fun tp!733364 () Bool)

(assert (=> b!2311355 (= e!1481294 (and tp!733362 tp!733364))))

(declare-fun b!2311354 () Bool)

(declare-fun tp!733361 () Bool)

(assert (=> b!2311354 (= e!1481294 tp!733361)))

(assert (= (and b!2311310 ((_ is ElementMatch!6763) (h!32912 (exprs!2585 thiss!29363)))) b!2311352))

(assert (= (and b!2311310 ((_ is Concat!11339) (h!32912 (exprs!2585 thiss!29363)))) b!2311353))

(assert (= (and b!2311310 ((_ is Star!6763) (h!32912 (exprs!2585 thiss!29363)))) b!2311354))

(assert (= (and b!2311310 ((_ is Union!6763) (h!32912 (exprs!2585 thiss!29363)))) b!2311355))

(declare-fun b!2311356 () Bool)

(declare-fun e!1481295 () Bool)

(declare-fun tp!733366 () Bool)

(declare-fun tp!733367 () Bool)

(assert (=> b!2311356 (= e!1481295 (and tp!733366 tp!733367))))

(assert (=> b!2311310 (= tp!733333 e!1481295)))

(assert (= (and b!2311310 ((_ is Cons!27511) (t!207105 (exprs!2585 thiss!29363)))) b!2311356))

(declare-fun b_lambda!73685 () Bool)

(assert (= b_lambda!73683 (or d!683817 b_lambda!73685)))

(declare-fun bs!458290 () Bool)

(declare-fun d!683839 () Bool)

(assert (= bs!458290 (and d!683839 d!683817)))

(declare-fun validRegex!2560 (Regex!6763) Bool)

(assert (=> bs!458290 (= (dynLambda!11973 lambda!86078 (h!32912 (exprs!2585 thiss!29363))) (validRegex!2560 (h!32912 (exprs!2585 thiss!29363))))))

(declare-fun m!2738655 () Bool)

(assert (=> bs!458290 m!2738655))

(assert (=> b!2311340 d!683839))

(declare-fun b_lambda!73687 () Bool)

(assert (= b_lambda!73681 (or d!683823 b_lambda!73687)))

(declare-fun bs!458291 () Bool)

(declare-fun d!683841 () Bool)

(assert (= bs!458291 (and d!683841 d!683823)))

(assert (=> bs!458291 (= (dynLambda!11973 lambda!86079 (h!32912 (exprs!2585 (Context!4171 (tail!3341 (exprs!2585 thiss!29363)))))) (validRegex!2560 (h!32912 (exprs!2585 (Context!4171 (tail!3341 (exprs!2585 thiss!29363)))))))))

(declare-fun m!2738657 () Bool)

(assert (=> bs!458291 m!2738657))

(assert (=> b!2311338 d!683841))

(check-sat (not bs!458291) tp_is_empty!10751 (not b_lambda!73687) (not b!2311339) (not b!2311341) (not b!2311353) (not b!2311356) (not bs!458290) (not b!2311354) (not b!2311355) (not b_lambda!73685))
(check-sat)
