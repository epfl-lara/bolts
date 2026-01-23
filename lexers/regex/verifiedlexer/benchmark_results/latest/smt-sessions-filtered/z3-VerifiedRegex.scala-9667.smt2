; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507086 () Bool)

(assert start!507086)

(declare-fun b_free!130393 () Bool)

(declare-fun b_next!131183 () Bool)

(assert (=> start!507086 (= b_free!130393 (not b_next!131183))))

(declare-fun tp!1366043 () Bool)

(declare-fun b_and!342221 () Bool)

(assert (=> start!507086 (= tp!1366043 b_and!342221)))

(declare-fun b!4855152 () Bool)

(declare-datatypes ((B!2909 0))(
  ( (B!2910 (val!22382 Int)) )
))
(declare-datatypes ((List!55850 0))(
  ( (Nil!55726) (Cons!55726 (h!62174 B!2909) (t!363352 List!55850)) )
))
(declare-fun l2!1452 () List!55850)

(declare-fun e!3035500 () Bool)

(declare-fun p!2075 () Int)

(declare-fun l1!1483 () List!55850)

(declare-fun e!3035499 () Bool)

(declare-fun exists!1230 (List!55850 Int) Bool)

(declare-fun ++!12111 (List!55850 List!55850) List!55850)

(assert (=> b!4855152 (= e!3035500 (not (= (exists!1230 (++!12111 l1!1483 l2!1452) p!2075) e!3035499)))))

(declare-fun res!2072647 () Bool)

(assert (=> b!4855152 (=> res!2072647 e!3035499)))

(assert (=> b!4855152 (= res!2072647 (exists!1230 l1!1483 p!2075))))

(declare-datatypes ((Unit!145831 0))(
  ( (Unit!145832) )
))
(declare-fun lt!1991201 () Unit!145831)

(declare-fun lemmaExistsConcat!10 (List!55850 List!55850 Int) Unit!145831)

(assert (=> b!4855152 (= lt!1991201 (lemmaExistsConcat!10 (t!363352 l1!1483) l2!1452 p!2075))))

(declare-fun b!4855154 () Bool)

(declare-fun e!3035502 () Bool)

(declare-fun tp_is_empty!35483 () Bool)

(declare-fun tp!1366041 () Bool)

(assert (=> b!4855154 (= e!3035502 (and tp_is_empty!35483 tp!1366041))))

(declare-fun b!4855155 () Bool)

(declare-fun e!3035501 () Bool)

(declare-fun tp!1366042 () Bool)

(assert (=> b!4855155 (= e!3035501 (and tp_is_empty!35483 tp!1366042))))

(declare-fun b!4855153 () Bool)

(assert (=> b!4855153 (= e!3035499 (exists!1230 l2!1452 p!2075))))

(declare-fun res!2072646 () Bool)

(assert (=> start!507086 (=> (not res!2072646) (not e!3035500))))

(get-info :version)

(assert (=> start!507086 (= res!2072646 ((_ is Cons!55726) l1!1483))))

(assert (=> start!507086 e!3035500))

(assert (=> start!507086 e!3035502))

(assert (=> start!507086 e!3035501))

(assert (=> start!507086 tp!1366043))

(assert (= (and start!507086 res!2072646) b!4855152))

(assert (= (and b!4855152 (not res!2072647)) b!4855153))

(assert (= (and start!507086 ((_ is Cons!55726) l1!1483)) b!4855154))

(assert (= (and start!507086 ((_ is Cons!55726) l2!1452)) b!4855155))

(declare-fun m!5852860 () Bool)

(assert (=> b!4855152 m!5852860))

(assert (=> b!4855152 m!5852860))

(declare-fun m!5852862 () Bool)

(assert (=> b!4855152 m!5852862))

(declare-fun m!5852864 () Bool)

(assert (=> b!4855152 m!5852864))

(declare-fun m!5852866 () Bool)

(assert (=> b!4855152 m!5852866))

(declare-fun m!5852868 () Bool)

(assert (=> b!4855153 m!5852868))

(check-sat (not b_next!131183) (not b!4855153) b_and!342221 (not b!4855154) (not b!4855155) tp_is_empty!35483 (not b!4855152))
(check-sat b_and!342221 (not b_next!131183))
(get-model)

(declare-fun d!1558354 () Bool)

(assert (=> d!1558354 true))

(declare-fun order!25141 () Int)

(declare-fun lambda!243086 () Int)

(declare-fun dynLambda!22388 (Int Int) Int)

(assert (=> d!1558354 (< (dynLambda!22388 order!25141 p!2075) (dynLambda!22388 order!25141 lambda!243086))))

(declare-fun forall!13014 (List!55850 Int) Bool)

(assert (=> d!1558354 (= (exists!1230 (++!12111 l1!1483 l2!1452) p!2075) (not (forall!13014 (++!12111 l1!1483 l2!1452) lambda!243086)))))

(declare-fun bs!1173639 () Bool)

(assert (= bs!1173639 d!1558354))

(assert (=> bs!1173639 m!5852860))

(declare-fun m!5852872 () Bool)

(assert (=> bs!1173639 m!5852872))

(assert (=> b!4855152 d!1558354))

(declare-fun b!4855182 () Bool)

(declare-fun res!2072659 () Bool)

(declare-fun e!3035514 () Bool)

(assert (=> b!4855182 (=> (not res!2072659) (not e!3035514))))

(declare-fun lt!1991207 () List!55850)

(declare-fun size!36690 (List!55850) Int)

(assert (=> b!4855182 (= res!2072659 (= (size!36690 lt!1991207) (+ (size!36690 l1!1483) (size!36690 l2!1452))))))

(declare-fun d!1558358 () Bool)

(assert (=> d!1558358 e!3035514))

(declare-fun res!2072658 () Bool)

(assert (=> d!1558358 (=> (not res!2072658) (not e!3035514))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9924 (List!55850) (InoxSet B!2909))

(assert (=> d!1558358 (= res!2072658 (= (content!9924 lt!1991207) ((_ map or) (content!9924 l1!1483) (content!9924 l2!1452))))))

(declare-fun e!3035513 () List!55850)

(assert (=> d!1558358 (= lt!1991207 e!3035513)))

(declare-fun c!825943 () Bool)

(assert (=> d!1558358 (= c!825943 ((_ is Nil!55726) l1!1483))))

(assert (=> d!1558358 (= (++!12111 l1!1483 l2!1452) lt!1991207)))

(declare-fun b!4855180 () Bool)

(assert (=> b!4855180 (= e!3035513 l2!1452)))

(declare-fun b!4855181 () Bool)

(assert (=> b!4855181 (= e!3035513 (Cons!55726 (h!62174 l1!1483) (++!12111 (t!363352 l1!1483) l2!1452)))))

(declare-fun b!4855183 () Bool)

(assert (=> b!4855183 (= e!3035514 (or (not (= l2!1452 Nil!55726)) (= lt!1991207 l1!1483)))))

(assert (= (and d!1558358 c!825943) b!4855180))

(assert (= (and d!1558358 (not c!825943)) b!4855181))

(assert (= (and d!1558358 res!2072658) b!4855182))

(assert (= (and b!4855182 res!2072659) b!4855183))

(declare-fun m!5852886 () Bool)

(assert (=> b!4855182 m!5852886))

(declare-fun m!5852890 () Bool)

(assert (=> b!4855182 m!5852890))

(declare-fun m!5852892 () Bool)

(assert (=> b!4855182 m!5852892))

(declare-fun m!5852894 () Bool)

(assert (=> d!1558358 m!5852894))

(declare-fun m!5852896 () Bool)

(assert (=> d!1558358 m!5852896))

(declare-fun m!5852898 () Bool)

(assert (=> d!1558358 m!5852898))

(declare-fun m!5852900 () Bool)

(assert (=> b!4855181 m!5852900))

(assert (=> b!4855152 d!1558358))

(declare-fun bs!1173641 () Bool)

(declare-fun d!1558362 () Bool)

(assert (= bs!1173641 (and d!1558362 d!1558354)))

(declare-fun lambda!243088 () Int)

(assert (=> bs!1173641 (= lambda!243088 lambda!243086)))

(assert (=> d!1558362 true))

(assert (=> d!1558362 (< (dynLambda!22388 order!25141 p!2075) (dynLambda!22388 order!25141 lambda!243088))))

(assert (=> d!1558362 (= (exists!1230 l1!1483 p!2075) (not (forall!13014 l1!1483 lambda!243088)))))

(declare-fun bs!1173643 () Bool)

(assert (= bs!1173643 d!1558362))

(declare-fun m!5852904 () Bool)

(assert (=> bs!1173643 m!5852904))

(assert (=> b!4855152 d!1558362))

(declare-fun e!3035520 () Bool)

(declare-fun d!1558366 () Bool)

(assert (=> d!1558366 (= (exists!1230 (++!12111 (t!363352 l1!1483) l2!1452) p!2075) e!3035520)))

(declare-fun res!2072665 () Bool)

(assert (=> d!1558366 (=> res!2072665 e!3035520)))

(assert (=> d!1558366 (= res!2072665 (exists!1230 (t!363352 l1!1483) p!2075))))

(declare-fun lt!1991213 () Unit!145831)

(declare-fun choose!35547 (List!55850 List!55850 Int) Unit!145831)

(assert (=> d!1558366 (= lt!1991213 (choose!35547 (t!363352 l1!1483) l2!1452 p!2075))))

(assert (=> d!1558366 (= (lemmaExistsConcat!10 (t!363352 l1!1483) l2!1452 p!2075) lt!1991213)))

(declare-fun b!4855189 () Bool)

(assert (=> b!4855189 (= e!3035520 (exists!1230 l2!1452 p!2075))))

(assert (= (and d!1558366 (not res!2072665)) b!4855189))

(assert (=> d!1558366 m!5852900))

(assert (=> d!1558366 m!5852900))

(declare-fun m!5852908 () Bool)

(assert (=> d!1558366 m!5852908))

(declare-fun m!5852912 () Bool)

(assert (=> d!1558366 m!5852912))

(declare-fun m!5852916 () Bool)

(assert (=> d!1558366 m!5852916))

(assert (=> b!4855189 m!5852868))

(assert (=> b!4855152 d!1558366))

(declare-fun bs!1173645 () Bool)

(declare-fun d!1558370 () Bool)

(assert (= bs!1173645 (and d!1558370 d!1558354)))

(declare-fun lambda!243090 () Int)

(assert (=> bs!1173645 (= lambda!243090 lambda!243086)))

(declare-fun bs!1173647 () Bool)

(assert (= bs!1173647 (and d!1558370 d!1558362)))

(assert (=> bs!1173647 (= lambda!243090 lambda!243088)))

(assert (=> d!1558370 true))

(assert (=> d!1558370 (< (dynLambda!22388 order!25141 p!2075) (dynLambda!22388 order!25141 lambda!243090))))

(assert (=> d!1558370 (= (exists!1230 l2!1452 p!2075) (not (forall!13014 l2!1452 lambda!243090)))))

(declare-fun bs!1173649 () Bool)

(assert (= bs!1173649 d!1558370))

(declare-fun m!5852920 () Bool)

(assert (=> bs!1173649 m!5852920))

(assert (=> b!4855153 d!1558370))

(declare-fun b!4855199 () Bool)

(declare-fun e!3035526 () Bool)

(declare-fun tp!1366049 () Bool)

(assert (=> b!4855199 (= e!3035526 (and tp_is_empty!35483 tp!1366049))))

(assert (=> b!4855155 (= tp!1366042 e!3035526)))

(assert (= (and b!4855155 ((_ is Cons!55726) (t!363352 l2!1452))) b!4855199))

(declare-fun b!4855201 () Bool)

(declare-fun e!3035528 () Bool)

(declare-fun tp!1366051 () Bool)

(assert (=> b!4855201 (= e!3035528 (and tp_is_empty!35483 tp!1366051))))

(assert (=> b!4855154 (= tp!1366041 e!3035528)))

(assert (= (and b!4855154 ((_ is Cons!55726) (t!363352 l1!1483))) b!4855201))

(check-sat (not b!4855201) b_and!342221 (not b!4855199) (not d!1558366) (not d!1558362) (not b_next!131183) (not b!4855189) (not b!4855182) (not d!1558370) (not b!4855181) tp_is_empty!35483 (not d!1558358) (not d!1558354))
(check-sat b_and!342221 (not b_next!131183))
(get-model)

(declare-fun d!1558372 () Bool)

(declare-fun res!2072670 () Bool)

(declare-fun e!3035533 () Bool)

(assert (=> d!1558372 (=> res!2072670 e!3035533)))

(assert (=> d!1558372 (= res!2072670 ((_ is Nil!55726) (++!12111 l1!1483 l2!1452)))))

(assert (=> d!1558372 (= (forall!13014 (++!12111 l1!1483 l2!1452) lambda!243086) e!3035533)))

(declare-fun b!4855206 () Bool)

(declare-fun e!3035534 () Bool)

(assert (=> b!4855206 (= e!3035533 e!3035534)))

(declare-fun res!2072671 () Bool)

(assert (=> b!4855206 (=> (not res!2072671) (not e!3035534))))

(declare-fun dynLambda!22390 (Int B!2909) Bool)

(assert (=> b!4855206 (= res!2072671 (dynLambda!22390 lambda!243086 (h!62174 (++!12111 l1!1483 l2!1452))))))

(declare-fun b!4855207 () Bool)

(assert (=> b!4855207 (= e!3035534 (forall!13014 (t!363352 (++!12111 l1!1483 l2!1452)) lambda!243086))))

(assert (= (and d!1558372 (not res!2072670)) b!4855206))

(assert (= (and b!4855206 res!2072671) b!4855207))

(declare-fun b_lambda!193237 () Bool)

(assert (=> (not b_lambda!193237) (not b!4855206)))

(declare-fun m!5852922 () Bool)

(assert (=> b!4855206 m!5852922))

(declare-fun m!5852924 () Bool)

(assert (=> b!4855207 m!5852924))

(assert (=> d!1558354 d!1558372))

(declare-fun d!1558374 () Bool)

(declare-fun lt!1991216 () Int)

(assert (=> d!1558374 (>= lt!1991216 0)))

(declare-fun e!3035537 () Int)

(assert (=> d!1558374 (= lt!1991216 e!3035537)))

(declare-fun c!825946 () Bool)

(assert (=> d!1558374 (= c!825946 ((_ is Nil!55726) lt!1991207))))

(assert (=> d!1558374 (= (size!36690 lt!1991207) lt!1991216)))

(declare-fun b!4855212 () Bool)

(assert (=> b!4855212 (= e!3035537 0)))

(declare-fun b!4855213 () Bool)

(assert (=> b!4855213 (= e!3035537 (+ 1 (size!36690 (t!363352 lt!1991207))))))

(assert (= (and d!1558374 c!825946) b!4855212))

(assert (= (and d!1558374 (not c!825946)) b!4855213))

(declare-fun m!5852926 () Bool)

(assert (=> b!4855213 m!5852926))

(assert (=> b!4855182 d!1558374))

(declare-fun d!1558376 () Bool)

(declare-fun lt!1991217 () Int)

(assert (=> d!1558376 (>= lt!1991217 0)))

(declare-fun e!3035538 () Int)

(assert (=> d!1558376 (= lt!1991217 e!3035538)))

(declare-fun c!825947 () Bool)

(assert (=> d!1558376 (= c!825947 ((_ is Nil!55726) l1!1483))))

(assert (=> d!1558376 (= (size!36690 l1!1483) lt!1991217)))

(declare-fun b!4855214 () Bool)

(assert (=> b!4855214 (= e!3035538 0)))

(declare-fun b!4855215 () Bool)

(assert (=> b!4855215 (= e!3035538 (+ 1 (size!36690 (t!363352 l1!1483))))))

(assert (= (and d!1558376 c!825947) b!4855214))

(assert (= (and d!1558376 (not c!825947)) b!4855215))

(declare-fun m!5852928 () Bool)

(assert (=> b!4855215 m!5852928))

(assert (=> b!4855182 d!1558376))

(declare-fun d!1558378 () Bool)

(declare-fun lt!1991218 () Int)

(assert (=> d!1558378 (>= lt!1991218 0)))

(declare-fun e!3035539 () Int)

(assert (=> d!1558378 (= lt!1991218 e!3035539)))

(declare-fun c!825948 () Bool)

(assert (=> d!1558378 (= c!825948 ((_ is Nil!55726) l2!1452))))

(assert (=> d!1558378 (= (size!36690 l2!1452) lt!1991218)))

(declare-fun b!4855216 () Bool)

(assert (=> b!4855216 (= e!3035539 0)))

(declare-fun b!4855217 () Bool)

(assert (=> b!4855217 (= e!3035539 (+ 1 (size!36690 (t!363352 l2!1452))))))

(assert (= (and d!1558378 c!825948) b!4855216))

(assert (= (and d!1558378 (not c!825948)) b!4855217))

(declare-fun m!5852930 () Bool)

(assert (=> b!4855217 m!5852930))

(assert (=> b!4855182 d!1558378))

(declare-fun d!1558380 () Bool)

(declare-fun res!2072672 () Bool)

(declare-fun e!3035540 () Bool)

(assert (=> d!1558380 (=> res!2072672 e!3035540)))

(assert (=> d!1558380 (= res!2072672 ((_ is Nil!55726) l2!1452))))

(assert (=> d!1558380 (= (forall!13014 l2!1452 lambda!243090) e!3035540)))

(declare-fun b!4855218 () Bool)

(declare-fun e!3035541 () Bool)

(assert (=> b!4855218 (= e!3035540 e!3035541)))

(declare-fun res!2072673 () Bool)

(assert (=> b!4855218 (=> (not res!2072673) (not e!3035541))))

(assert (=> b!4855218 (= res!2072673 (dynLambda!22390 lambda!243090 (h!62174 l2!1452)))))

(declare-fun b!4855219 () Bool)

(assert (=> b!4855219 (= e!3035541 (forall!13014 (t!363352 l2!1452) lambda!243090))))

(assert (= (and d!1558380 (not res!2072672)) b!4855218))

(assert (= (and b!4855218 res!2072673) b!4855219))

(declare-fun b_lambda!193239 () Bool)

(assert (=> (not b_lambda!193239) (not b!4855218)))

(declare-fun m!5852932 () Bool)

(assert (=> b!4855218 m!5852932))

(declare-fun m!5852934 () Bool)

(assert (=> b!4855219 m!5852934))

(assert (=> d!1558370 d!1558380))

(assert (=> b!4855189 d!1558370))

(declare-fun d!1558382 () Bool)

(declare-fun res!2072674 () Bool)

(declare-fun e!3035542 () Bool)

(assert (=> d!1558382 (=> res!2072674 e!3035542)))

(assert (=> d!1558382 (= res!2072674 ((_ is Nil!55726) l1!1483))))

(assert (=> d!1558382 (= (forall!13014 l1!1483 lambda!243088) e!3035542)))

(declare-fun b!4855220 () Bool)

(declare-fun e!3035543 () Bool)

(assert (=> b!4855220 (= e!3035542 e!3035543)))

(declare-fun res!2072675 () Bool)

(assert (=> b!4855220 (=> (not res!2072675) (not e!3035543))))

(assert (=> b!4855220 (= res!2072675 (dynLambda!22390 lambda!243088 (h!62174 l1!1483)))))

(declare-fun b!4855221 () Bool)

(assert (=> b!4855221 (= e!3035543 (forall!13014 (t!363352 l1!1483) lambda!243088))))

(assert (= (and d!1558382 (not res!2072674)) b!4855220))

(assert (= (and b!4855220 res!2072675) b!4855221))

(declare-fun b_lambda!193241 () Bool)

(assert (=> (not b_lambda!193241) (not b!4855220)))

(declare-fun m!5852936 () Bool)

(assert (=> b!4855220 m!5852936))

(declare-fun m!5852938 () Bool)

(assert (=> b!4855221 m!5852938))

(assert (=> d!1558362 d!1558382))

(declare-fun bs!1173650 () Bool)

(declare-fun d!1558384 () Bool)

(assert (= bs!1173650 (and d!1558384 d!1558354)))

(declare-fun lambda!243091 () Int)

(assert (=> bs!1173650 (= lambda!243091 lambda!243086)))

(declare-fun bs!1173651 () Bool)

(assert (= bs!1173651 (and d!1558384 d!1558362)))

(assert (=> bs!1173651 (= lambda!243091 lambda!243088)))

(declare-fun bs!1173652 () Bool)

(assert (= bs!1173652 (and d!1558384 d!1558370)))

(assert (=> bs!1173652 (= lambda!243091 lambda!243090)))

(assert (=> d!1558384 true))

(assert (=> d!1558384 (< (dynLambda!22388 order!25141 p!2075) (dynLambda!22388 order!25141 lambda!243091))))

(assert (=> d!1558384 (= (exists!1230 (++!12111 (t!363352 l1!1483) l2!1452) p!2075) (not (forall!13014 (++!12111 (t!363352 l1!1483) l2!1452) lambda!243091)))))

(declare-fun bs!1173653 () Bool)

(assert (= bs!1173653 d!1558384))

(assert (=> bs!1173653 m!5852900))

(declare-fun m!5852940 () Bool)

(assert (=> bs!1173653 m!5852940))

(assert (=> d!1558366 d!1558384))

(declare-fun b!4855224 () Bool)

(declare-fun res!2072677 () Bool)

(declare-fun e!3035545 () Bool)

(assert (=> b!4855224 (=> (not res!2072677) (not e!3035545))))

(declare-fun lt!1991219 () List!55850)

(assert (=> b!4855224 (= res!2072677 (= (size!36690 lt!1991219) (+ (size!36690 (t!363352 l1!1483)) (size!36690 l2!1452))))))

(declare-fun d!1558386 () Bool)

(assert (=> d!1558386 e!3035545))

(declare-fun res!2072676 () Bool)

(assert (=> d!1558386 (=> (not res!2072676) (not e!3035545))))

(assert (=> d!1558386 (= res!2072676 (= (content!9924 lt!1991219) ((_ map or) (content!9924 (t!363352 l1!1483)) (content!9924 l2!1452))))))

(declare-fun e!3035544 () List!55850)

(assert (=> d!1558386 (= lt!1991219 e!3035544)))

(declare-fun c!825949 () Bool)

(assert (=> d!1558386 (= c!825949 ((_ is Nil!55726) (t!363352 l1!1483)))))

(assert (=> d!1558386 (= (++!12111 (t!363352 l1!1483) l2!1452) lt!1991219)))

(declare-fun b!4855222 () Bool)

(assert (=> b!4855222 (= e!3035544 l2!1452)))

(declare-fun b!4855223 () Bool)

(assert (=> b!4855223 (= e!3035544 (Cons!55726 (h!62174 (t!363352 l1!1483)) (++!12111 (t!363352 (t!363352 l1!1483)) l2!1452)))))

(declare-fun b!4855225 () Bool)

(assert (=> b!4855225 (= e!3035545 (or (not (= l2!1452 Nil!55726)) (= lt!1991219 (t!363352 l1!1483))))))

(assert (= (and d!1558386 c!825949) b!4855222))

(assert (= (and d!1558386 (not c!825949)) b!4855223))

(assert (= (and d!1558386 res!2072676) b!4855224))

(assert (= (and b!4855224 res!2072677) b!4855225))

(declare-fun m!5852942 () Bool)

(assert (=> b!4855224 m!5852942))

(assert (=> b!4855224 m!5852928))

(assert (=> b!4855224 m!5852892))

(declare-fun m!5852944 () Bool)

(assert (=> d!1558386 m!5852944))

(declare-fun m!5852946 () Bool)

(assert (=> d!1558386 m!5852946))

(assert (=> d!1558386 m!5852898))

(declare-fun m!5852948 () Bool)

(assert (=> b!4855223 m!5852948))

(assert (=> d!1558366 d!1558386))

(declare-fun bs!1173654 () Bool)

(declare-fun d!1558388 () Bool)

(assert (= bs!1173654 (and d!1558388 d!1558354)))

(declare-fun lambda!243092 () Int)

(assert (=> bs!1173654 (= lambda!243092 lambda!243086)))

(declare-fun bs!1173655 () Bool)

(assert (= bs!1173655 (and d!1558388 d!1558362)))

(assert (=> bs!1173655 (= lambda!243092 lambda!243088)))

(declare-fun bs!1173656 () Bool)

(assert (= bs!1173656 (and d!1558388 d!1558370)))

(assert (=> bs!1173656 (= lambda!243092 lambda!243090)))

(declare-fun bs!1173657 () Bool)

(assert (= bs!1173657 (and d!1558388 d!1558384)))

(assert (=> bs!1173657 (= lambda!243092 lambda!243091)))

(assert (=> d!1558388 true))

(assert (=> d!1558388 (< (dynLambda!22388 order!25141 p!2075) (dynLambda!22388 order!25141 lambda!243092))))

(assert (=> d!1558388 (= (exists!1230 (t!363352 l1!1483) p!2075) (not (forall!13014 (t!363352 l1!1483) lambda!243092)))))

(declare-fun bs!1173658 () Bool)

(assert (= bs!1173658 d!1558388))

(declare-fun m!5852950 () Bool)

(assert (=> bs!1173658 m!5852950))

(assert (=> d!1558366 d!1558388))

(declare-fun e!3035548 () Bool)

(declare-fun d!1558390 () Bool)

(assert (=> d!1558390 (= (exists!1230 (++!12111 (t!363352 l1!1483) l2!1452) p!2075) e!3035548)))

(declare-fun res!2072680 () Bool)

(assert (=> d!1558390 (=> res!2072680 e!3035548)))

(assert (=> d!1558390 (= res!2072680 (exists!1230 (t!363352 l1!1483) p!2075))))

(assert (=> d!1558390 true))

(declare-fun _$80!52 () Unit!145831)

(assert (=> d!1558390 (= (choose!35547 (t!363352 l1!1483) l2!1452 p!2075) _$80!52)))

(declare-fun b!4855230 () Bool)

(assert (=> b!4855230 (= e!3035548 (exists!1230 l2!1452 p!2075))))

(assert (= (and d!1558390 (not res!2072680)) b!4855230))

(assert (=> d!1558390 m!5852900))

(assert (=> d!1558390 m!5852900))

(assert (=> d!1558390 m!5852908))

(assert (=> d!1558390 m!5852912))

(assert (=> b!4855230 m!5852868))

(assert (=> d!1558366 d!1558390))

(assert (=> b!4855181 d!1558386))

(declare-fun d!1558394 () Bool)

(declare-fun c!825957 () Bool)

(assert (=> d!1558394 (= c!825957 ((_ is Nil!55726) lt!1991207))))

(declare-fun e!3035556 () (InoxSet B!2909))

(assert (=> d!1558394 (= (content!9924 lt!1991207) e!3035556)))

(declare-fun b!4855243 () Bool)

(assert (=> b!4855243 (= e!3035556 ((as const (Array B!2909 Bool)) false))))

(declare-fun b!4855244 () Bool)

(assert (=> b!4855244 (= e!3035556 ((_ map or) (store ((as const (Array B!2909 Bool)) false) (h!62174 lt!1991207) true) (content!9924 (t!363352 lt!1991207))))))

(assert (= (and d!1558394 c!825957) b!4855243))

(assert (= (and d!1558394 (not c!825957)) b!4855244))

(declare-fun m!5852958 () Bool)

(assert (=> b!4855244 m!5852958))

(declare-fun m!5852960 () Bool)

(assert (=> b!4855244 m!5852960))

(assert (=> d!1558358 d!1558394))

(declare-fun d!1558402 () Bool)

(declare-fun c!825958 () Bool)

(assert (=> d!1558402 (= c!825958 ((_ is Nil!55726) l1!1483))))

(declare-fun e!3035557 () (InoxSet B!2909))

(assert (=> d!1558402 (= (content!9924 l1!1483) e!3035557)))

(declare-fun b!4855245 () Bool)

(assert (=> b!4855245 (= e!3035557 ((as const (Array B!2909 Bool)) false))))

(declare-fun b!4855246 () Bool)

(assert (=> b!4855246 (= e!3035557 ((_ map or) (store ((as const (Array B!2909 Bool)) false) (h!62174 l1!1483) true) (content!9924 (t!363352 l1!1483))))))

(assert (= (and d!1558402 c!825958) b!4855245))

(assert (= (and d!1558402 (not c!825958)) b!4855246))

(declare-fun m!5852962 () Bool)

(assert (=> b!4855246 m!5852962))

(assert (=> b!4855246 m!5852946))

(assert (=> d!1558358 d!1558402))

(declare-fun d!1558404 () Bool)

(declare-fun c!825959 () Bool)

(assert (=> d!1558404 (= c!825959 ((_ is Nil!55726) l2!1452))))

(declare-fun e!3035558 () (InoxSet B!2909))

(assert (=> d!1558404 (= (content!9924 l2!1452) e!3035558)))

(declare-fun b!4855247 () Bool)

(assert (=> b!4855247 (= e!3035558 ((as const (Array B!2909 Bool)) false))))

(declare-fun b!4855248 () Bool)

(assert (=> b!4855248 (= e!3035558 ((_ map or) (store ((as const (Array B!2909 Bool)) false) (h!62174 l2!1452) true) (content!9924 (t!363352 l2!1452))))))

(assert (= (and d!1558404 c!825959) b!4855247))

(assert (= (and d!1558404 (not c!825959)) b!4855248))

(declare-fun m!5852964 () Bool)

(assert (=> b!4855248 m!5852964))

(declare-fun m!5852966 () Bool)

(assert (=> b!4855248 m!5852966))

(assert (=> d!1558358 d!1558404))

(declare-fun b!4855253 () Bool)

(declare-fun e!3035563 () Bool)

(declare-fun tp!1366052 () Bool)

(assert (=> b!4855253 (= e!3035563 (and tp_is_empty!35483 tp!1366052))))

(assert (=> b!4855199 (= tp!1366049 e!3035563)))

(assert (= (and b!4855199 ((_ is Cons!55726) (t!363352 (t!363352 l2!1452)))) b!4855253))

(declare-fun b!4855254 () Bool)

(declare-fun e!3035564 () Bool)

(declare-fun tp!1366053 () Bool)

(assert (=> b!4855254 (= e!3035564 (and tp_is_empty!35483 tp!1366053))))

(assert (=> b!4855201 (= tp!1366051 e!3035564)))

(assert (= (and b!4855201 ((_ is Cons!55726) (t!363352 (t!363352 l1!1483)))) b!4855254))

(declare-fun b_lambda!193243 () Bool)

(assert (= b_lambda!193241 (or d!1558362 b_lambda!193243)))

(declare-fun bs!1173659 () Bool)

(declare-fun d!1558406 () Bool)

(assert (= bs!1173659 (and d!1558406 d!1558362)))

(assert (=> bs!1173659 (= (dynLambda!22390 lambda!243088 (h!62174 l1!1483)) (not (dynLambda!22390 p!2075 (h!62174 l1!1483))))))

(declare-fun b_lambda!193249 () Bool)

(assert (=> (not b_lambda!193249) (not bs!1173659)))

(declare-fun t!363354 () Bool)

(declare-fun tb!257555 () Bool)

(assert (=> (and start!507086 (= p!2075 p!2075) t!363354) tb!257555))

(declare-fun result!320418 () Bool)

(assert (=> tb!257555 (= result!320418 true)))

(assert (=> bs!1173659 t!363354))

(declare-fun b_and!342223 () Bool)

(assert (= b_and!342221 (and (=> t!363354 result!320418) b_and!342223)))

(declare-fun m!5852968 () Bool)

(assert (=> bs!1173659 m!5852968))

(assert (=> b!4855220 d!1558406))

(declare-fun b_lambda!193245 () Bool)

(assert (= b_lambda!193237 (or d!1558354 b_lambda!193245)))

(declare-fun bs!1173660 () Bool)

(declare-fun d!1558408 () Bool)

(assert (= bs!1173660 (and d!1558408 d!1558354)))

(assert (=> bs!1173660 (= (dynLambda!22390 lambda!243086 (h!62174 (++!12111 l1!1483 l2!1452))) (not (dynLambda!22390 p!2075 (h!62174 (++!12111 l1!1483 l2!1452)))))))

(declare-fun b_lambda!193251 () Bool)

(assert (=> (not b_lambda!193251) (not bs!1173660)))

(declare-fun t!363356 () Bool)

(declare-fun tb!257557 () Bool)

(assert (=> (and start!507086 (= p!2075 p!2075) t!363356) tb!257557))

(declare-fun result!320420 () Bool)

(assert (=> tb!257557 (= result!320420 true)))

(assert (=> bs!1173660 t!363356))

(declare-fun b_and!342225 () Bool)

(assert (= b_and!342223 (and (=> t!363356 result!320420) b_and!342225)))

(declare-fun m!5852970 () Bool)

(assert (=> bs!1173660 m!5852970))

(assert (=> b!4855206 d!1558408))

(declare-fun b_lambda!193247 () Bool)

(assert (= b_lambda!193239 (or d!1558370 b_lambda!193247)))

(declare-fun bs!1173661 () Bool)

(declare-fun d!1558410 () Bool)

(assert (= bs!1173661 (and d!1558410 d!1558370)))

(assert (=> bs!1173661 (= (dynLambda!22390 lambda!243090 (h!62174 l2!1452)) (not (dynLambda!22390 p!2075 (h!62174 l2!1452))))))

(declare-fun b_lambda!193253 () Bool)

(assert (=> (not b_lambda!193253) (not bs!1173661)))

(declare-fun t!363358 () Bool)

(declare-fun tb!257559 () Bool)

(assert (=> (and start!507086 (= p!2075 p!2075) t!363358) tb!257559))

(declare-fun result!320422 () Bool)

(assert (=> tb!257559 (= result!320422 true)))

(assert (=> bs!1173661 t!363358))

(declare-fun b_and!342227 () Bool)

(assert (= b_and!342225 (and (=> t!363358 result!320422) b_and!342227)))

(declare-fun m!5852972 () Bool)

(assert (=> bs!1173661 m!5852972))

(assert (=> b!4855218 d!1558410))

(check-sat (not b_next!131183) (not b_lambda!193253) (not b!4855244) (not d!1558384) (not b!4855224) (not b!4855254) (not d!1558388) (not b!4855217) (not d!1558386) (not b!4855223) (not d!1558390) (not b_lambda!193251) (not b_lambda!193247) (not b_lambda!193243) (not b!4855219) (not b!4855207) (not b_lambda!193245) (not b!4855230) (not b!4855248) (not b!4855215) (not b!4855221) b_and!342227 tp_is_empty!35483 (not b_lambda!193249) (not b!4855253) (not b!4855246) (not b!4855213))
(check-sat b_and!342227 (not b_next!131183))
