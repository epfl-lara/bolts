; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239146 () Bool)

(assert start!239146)

(declare-fun b!2447222 () Bool)

(declare-fun e!1554007 () Bool)

(declare-fun tp!777383 () Bool)

(declare-fun tp!777385 () Bool)

(assert (=> b!2447222 (= e!1554007 (and tp!777383 tp!777385))))

(declare-fun b!2447223 () Bool)

(declare-fun e!1554010 () Bool)

(declare-fun tp!777381 () Bool)

(declare-fun tp!777379 () Bool)

(assert (=> b!2447223 (= e!1554010 (and tp!777381 tp!777379))))

(declare-fun b!2447224 () Bool)

(declare-fun e!1554009 () Bool)

(declare-fun tp_is_empty!11807 () Bool)

(declare-fun tp!777382 () Bool)

(assert (=> b!2447224 (= e!1554009 (and tp_is_empty!11807 tp!777382))))

(declare-fun res!1038520 () Bool)

(declare-fun e!1554008 () Bool)

(assert (=> start!239146 (=> (not res!1038520) (not e!1554008))))

(declare-datatypes ((C!14552 0))(
  ( (C!14553 (val!8518 Int)) )
))
(declare-datatypes ((Regex!7197 0))(
  ( (ElementMatch!7197 (c!390559 C!14552)) (Concat!11833 (regOne!14906 Regex!7197) (regTwo!14906 Regex!7197)) (EmptyExpr!7197) (Star!7197 (reg!7526 Regex!7197)) (EmptyLang!7197) (Union!7197 (regOne!14907 Regex!7197) (regTwo!14907 Regex!7197)) )
))
(declare-datatypes ((List!28630 0))(
  ( (Nil!28532) (Cons!28532 (h!33933 Regex!7197) (t!208607 List!28630)) )
))
(declare-fun l!9164 () List!28630)

(declare-fun lambda!92751 () Int)

(declare-fun forall!5831 (List!28630 Int) Bool)

(assert (=> start!239146 (= res!1038520 (forall!5831 l!9164 lambda!92751))))

(assert (=> start!239146 e!1554008))

(assert (=> start!239146 e!1554007))

(assert (=> start!239146 e!1554010))

(assert (=> start!239146 e!1554009))

(declare-fun b!2447225 () Bool)

(declare-fun tp!777384 () Bool)

(assert (=> b!2447225 (= e!1554010 tp!777384)))

(declare-datatypes ((List!28631 0))(
  ( (Nil!28533) (Cons!28533 (h!33934 C!14552) (t!208608 List!28631)) )
))
(declare-fun s!9460 () List!28631)

(declare-fun e!1554005 () Bool)

(declare-fun lt!879531 () Bool)

(declare-fun b!2447226 () Bool)

(declare-datatypes ((tuple2!28146 0))(
  ( (tuple2!28147 (_1!16614 List!28631) (_2!16614 List!28631)) )
))
(declare-datatypes ((Option!5684 0))(
  ( (None!5683) (Some!5683 (v!31091 tuple2!28146)) )
))
(declare-fun isDefined!4510 (Option!5684) Bool)

(declare-fun findConcatSeparation!792 (Regex!7197 Regex!7197 List!28631 List!28631 List!28631) Option!5684)

(declare-fun generalisedConcat!298 (List!28630) Regex!7197)

(assert (=> b!2447226 (= e!1554005 (= lt!879531 (isDefined!4510 (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) Nil!28533 s!9460 s!9460))))))

(declare-fun b!2447227 () Bool)

(declare-fun e!1554006 () Bool)

(assert (=> b!2447227 (= e!1554006 e!1554005)))

(declare-fun c!390558 () Bool)

(get-info :version)

(assert (=> b!2447227 (= c!390558 ((_ is Cons!28532) l!9164))))

(declare-fun b!2447228 () Bool)

(declare-fun tp!777380 () Bool)

(declare-fun tp!777378 () Bool)

(assert (=> b!2447228 (= e!1554010 (and tp!777380 tp!777378))))

(declare-fun b!2447229 () Bool)

(assert (=> b!2447229 (= e!1554010 tp_is_empty!11807)))

(declare-fun b!2447230 () Bool)

(assert (=> b!2447230 (= e!1554008 (not e!1554006))))

(declare-fun res!1038518 () Bool)

(assert (=> b!2447230 (=> res!1038518 e!1554006)))

(declare-fun r!13927 () Regex!7197)

(assert (=> b!2447230 (= res!1038518 (or ((_ is Concat!11833) r!13927) (not ((_ is EmptyExpr!7197) r!13927))))))

(declare-fun matchRSpec!1044 (Regex!7197 List!28631) Bool)

(assert (=> b!2447230 (= lt!879531 (matchRSpec!1044 r!13927 s!9460))))

(declare-fun matchR!3312 (Regex!7197 List!28631) Bool)

(assert (=> b!2447230 (= lt!879531 (matchR!3312 r!13927 s!9460))))

(declare-datatypes ((Unit!41849 0))(
  ( (Unit!41850) )
))
(declare-fun lt!879532 () Unit!41849)

(declare-fun mainMatchTheorem!1044 (Regex!7197 List!28631) Unit!41849)

(assert (=> b!2447230 (= lt!879532 (mainMatchTheorem!1044 r!13927 s!9460))))

(declare-fun b!2447231 () Bool)

(declare-fun isEmpty!16569 (List!28631) Bool)

(assert (=> b!2447231 (= e!1554005 (= lt!879531 (isEmpty!16569 s!9460)))))

(declare-fun b!2447232 () Bool)

(declare-fun res!1038519 () Bool)

(assert (=> b!2447232 (=> (not res!1038519) (not e!1554008))))

(assert (=> b!2447232 (= res!1038519 (= r!13927 (generalisedConcat!298 l!9164)))))

(assert (= (and start!239146 res!1038520) b!2447232))

(assert (= (and b!2447232 res!1038519) b!2447230))

(assert (= (and b!2447230 (not res!1038518)) b!2447227))

(assert (= (and b!2447227 c!390558) b!2447226))

(assert (= (and b!2447227 (not c!390558)) b!2447231))

(assert (= (and start!239146 ((_ is Cons!28532) l!9164)) b!2447222))

(assert (= (and start!239146 ((_ is ElementMatch!7197) r!13927)) b!2447229))

(assert (= (and start!239146 ((_ is Concat!11833) r!13927)) b!2447228))

(assert (= (and start!239146 ((_ is Star!7197) r!13927)) b!2447225))

(assert (= (and start!239146 ((_ is Union!7197) r!13927)) b!2447223))

(assert (= (and start!239146 ((_ is Cons!28533) s!9460)) b!2447224))

(declare-fun m!2822979 () Bool)

(assert (=> b!2447226 m!2822979))

(assert (=> b!2447226 m!2822979))

(declare-fun m!2822981 () Bool)

(assert (=> b!2447226 m!2822981))

(assert (=> b!2447226 m!2822981))

(declare-fun m!2822983 () Bool)

(assert (=> b!2447226 m!2822983))

(declare-fun m!2822985 () Bool)

(assert (=> start!239146 m!2822985))

(declare-fun m!2822987 () Bool)

(assert (=> b!2447231 m!2822987))

(declare-fun m!2822989 () Bool)

(assert (=> b!2447230 m!2822989))

(declare-fun m!2822991 () Bool)

(assert (=> b!2447230 m!2822991))

(declare-fun m!2822993 () Bool)

(assert (=> b!2447230 m!2822993))

(declare-fun m!2822995 () Bool)

(assert (=> b!2447232 m!2822995))

(check-sat (not b!2447223) (not b!2447230) (not b!2447232) (not b!2447225) tp_is_empty!11807 (not b!2447228) (not b!2447224) (not b!2447222) (not b!2447226) (not b!2447231) (not start!239146))
(check-sat)
(get-model)

(declare-fun d!706003 () Bool)

(assert (=> d!706003 (= (isEmpty!16569 s!9460) ((_ is Nil!28533) s!9460))))

(assert (=> b!2447231 d!706003))

(declare-fun d!706005 () Bool)

(declare-fun isEmpty!16572 (Option!5684) Bool)

(assert (=> d!706005 (= (isDefined!4510 (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) Nil!28533 s!9460 s!9460)) (not (isEmpty!16572 (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) Nil!28533 s!9460 s!9460))))))

(declare-fun bs!465438 () Bool)

(assert (= bs!465438 d!706005))

(assert (=> bs!465438 m!2822981))

(declare-fun m!2822999 () Bool)

(assert (=> bs!465438 m!2822999))

(assert (=> b!2447226 d!706005))

(declare-fun b!2447346 () Bool)

(declare-fun e!1554082 () Bool)

(assert (=> b!2447346 (= e!1554082 (matchR!3312 (generalisedConcat!298 (t!208607 l!9164)) s!9460))))

(declare-fun b!2447347 () Bool)

(declare-fun e!1554080 () Bool)

(declare-fun lt!879551 () Option!5684)

(assert (=> b!2447347 (= e!1554080 (not (isDefined!4510 lt!879551)))))

(declare-fun b!2447349 () Bool)

(declare-fun res!1038578 () Bool)

(declare-fun e!1554078 () Bool)

(assert (=> b!2447349 (=> (not res!1038578) (not e!1554078))))

(declare-fun get!8823 (Option!5684) tuple2!28146)

(assert (=> b!2447349 (= res!1038578 (matchR!3312 (generalisedConcat!298 (t!208607 l!9164)) (_2!16614 (get!8823 lt!879551))))))

(declare-fun b!2447350 () Bool)

(declare-fun ++!7098 (List!28631 List!28631) List!28631)

(assert (=> b!2447350 (= e!1554078 (= (++!7098 (_1!16614 (get!8823 lt!879551)) (_2!16614 (get!8823 lt!879551))) s!9460))))

(declare-fun d!706007 () Bool)

(assert (=> d!706007 e!1554080))

(declare-fun res!1038575 () Bool)

(assert (=> d!706007 (=> res!1038575 e!1554080)))

(assert (=> d!706007 (= res!1038575 e!1554078)))

(declare-fun res!1038574 () Bool)

(assert (=> d!706007 (=> (not res!1038574) (not e!1554078))))

(assert (=> d!706007 (= res!1038574 (isDefined!4510 lt!879551))))

(declare-fun e!1554079 () Option!5684)

(assert (=> d!706007 (= lt!879551 e!1554079)))

(declare-fun c!390590 () Bool)

(assert (=> d!706007 (= c!390590 e!1554082)))

(declare-fun res!1038576 () Bool)

(assert (=> d!706007 (=> (not res!1038576) (not e!1554082))))

(assert (=> d!706007 (= res!1038576 (matchR!3312 (h!33933 l!9164) Nil!28533))))

(declare-fun validRegex!2897 (Regex!7197) Bool)

(assert (=> d!706007 (validRegex!2897 (h!33933 l!9164))))

(assert (=> d!706007 (= (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) Nil!28533 s!9460 s!9460) lt!879551)))

(declare-fun b!2447348 () Bool)

(declare-fun lt!879552 () Unit!41849)

(declare-fun lt!879553 () Unit!41849)

(assert (=> b!2447348 (= lt!879552 lt!879553)))

(assert (=> b!2447348 (= (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (t!208608 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!707 (List!28631 C!14552 List!28631 List!28631) Unit!41849)

(assert (=> b!2447348 (= lt!879553 (lemmaMoveElementToOtherListKeepsConcatEq!707 Nil!28533 (h!33934 s!9460) (t!208608 s!9460) s!9460))))

(declare-fun e!1554081 () Option!5684)

(assert (=> b!2447348 (= e!1554081 (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (t!208608 s!9460) s!9460))))

(declare-fun b!2447351 () Bool)

(assert (=> b!2447351 (= e!1554081 None!5683)))

(declare-fun b!2447352 () Bool)

(assert (=> b!2447352 (= e!1554079 (Some!5683 (tuple2!28147 Nil!28533 s!9460)))))

(declare-fun b!2447353 () Bool)

(assert (=> b!2447353 (= e!1554079 e!1554081)))

(declare-fun c!390591 () Bool)

(assert (=> b!2447353 (= c!390591 ((_ is Nil!28533) s!9460))))

(declare-fun b!2447354 () Bool)

(declare-fun res!1038577 () Bool)

(assert (=> b!2447354 (=> (not res!1038577) (not e!1554078))))

(assert (=> b!2447354 (= res!1038577 (matchR!3312 (h!33933 l!9164) (_1!16614 (get!8823 lt!879551))))))

(assert (= (and d!706007 res!1038576) b!2447346))

(assert (= (and d!706007 c!390590) b!2447352))

(assert (= (and d!706007 (not c!390590)) b!2447353))

(assert (= (and b!2447353 c!390591) b!2447351))

(assert (= (and b!2447353 (not c!390591)) b!2447348))

(assert (= (and d!706007 res!1038574) b!2447354))

(assert (= (and b!2447354 res!1038577) b!2447349))

(assert (= (and b!2447349 res!1038578) b!2447350))

(assert (= (and d!706007 (not res!1038575)) b!2447347))

(declare-fun m!2823049 () Bool)

(assert (=> b!2447347 m!2823049))

(assert (=> b!2447346 m!2822979))

(declare-fun m!2823051 () Bool)

(assert (=> b!2447346 m!2823051))

(assert (=> d!706007 m!2823049))

(declare-fun m!2823053 () Bool)

(assert (=> d!706007 m!2823053))

(declare-fun m!2823055 () Bool)

(assert (=> d!706007 m!2823055))

(declare-fun m!2823057 () Bool)

(assert (=> b!2447350 m!2823057))

(declare-fun m!2823059 () Bool)

(assert (=> b!2447350 m!2823059))

(assert (=> b!2447349 m!2823057))

(assert (=> b!2447349 m!2822979))

(declare-fun m!2823061 () Bool)

(assert (=> b!2447349 m!2823061))

(assert (=> b!2447354 m!2823057))

(declare-fun m!2823063 () Bool)

(assert (=> b!2447354 m!2823063))

(declare-fun m!2823065 () Bool)

(assert (=> b!2447348 m!2823065))

(assert (=> b!2447348 m!2823065))

(declare-fun m!2823067 () Bool)

(assert (=> b!2447348 m!2823067))

(declare-fun m!2823069 () Bool)

(assert (=> b!2447348 m!2823069))

(assert (=> b!2447348 m!2822979))

(assert (=> b!2447348 m!2823065))

(declare-fun m!2823071 () Bool)

(assert (=> b!2447348 m!2823071))

(assert (=> b!2447226 d!706007))

(declare-fun bs!465444 () Bool)

(declare-fun d!706015 () Bool)

(assert (= bs!465444 (and d!706015 start!239146)))

(declare-fun lambda!92764 () Int)

(assert (=> bs!465444 (= lambda!92764 lambda!92751)))

(declare-fun b!2447460 () Bool)

(declare-fun e!1554137 () Bool)

(declare-fun lt!879563 () Regex!7197)

(declare-fun head!5569 (List!28630) Regex!7197)

(assert (=> b!2447460 (= e!1554137 (= lt!879563 (head!5569 (t!208607 l!9164))))))

(declare-fun b!2447461 () Bool)

(declare-fun e!1554138 () Regex!7197)

(assert (=> b!2447461 (= e!1554138 EmptyExpr!7197)))

(declare-fun b!2447462 () Bool)

(declare-fun e!1554132 () Bool)

(declare-fun isEmptyExpr!224 (Regex!7197) Bool)

(assert (=> b!2447462 (= e!1554132 (isEmptyExpr!224 lt!879563))))

(declare-fun b!2447463 () Bool)

(assert (=> b!2447463 (= e!1554132 e!1554137)))

(declare-fun c!390620 () Bool)

(declare-fun isEmpty!16573 (List!28630) Bool)

(declare-fun tail!3842 (List!28630) List!28630)

(assert (=> b!2447463 (= c!390620 (isEmpty!16573 (tail!3842 (t!208607 l!9164))))))

(declare-fun b!2447464 () Bool)

(declare-fun e!1554136 () Bool)

(assert (=> b!2447464 (= e!1554136 e!1554132)))

(declare-fun c!390617 () Bool)

(assert (=> b!2447464 (= c!390617 (isEmpty!16573 (t!208607 l!9164)))))

(assert (=> d!706015 e!1554136))

(declare-fun res!1038613 () Bool)

(assert (=> d!706015 (=> (not res!1038613) (not e!1554136))))

(assert (=> d!706015 (= res!1038613 (validRegex!2897 lt!879563))))

(declare-fun e!1554135 () Regex!7197)

(assert (=> d!706015 (= lt!879563 e!1554135)))

(declare-fun c!390619 () Bool)

(declare-fun e!1554134 () Bool)

(assert (=> d!706015 (= c!390619 e!1554134)))

(declare-fun res!1038612 () Bool)

(assert (=> d!706015 (=> (not res!1038612) (not e!1554134))))

(assert (=> d!706015 (= res!1038612 ((_ is Cons!28532) (t!208607 l!9164)))))

(assert (=> d!706015 (forall!5831 (t!208607 l!9164) lambda!92764)))

(assert (=> d!706015 (= (generalisedConcat!298 (t!208607 l!9164)) lt!879563)))

(declare-fun b!2447465 () Bool)

(assert (=> b!2447465 (= e!1554134 (isEmpty!16573 (t!208607 (t!208607 l!9164))))))

(declare-fun b!2447466 () Bool)

(declare-fun isConcat!224 (Regex!7197) Bool)

(assert (=> b!2447466 (= e!1554137 (isConcat!224 lt!879563))))

(declare-fun b!2447467 () Bool)

(assert (=> b!2447467 (= e!1554135 e!1554138)))

(declare-fun c!390618 () Bool)

(assert (=> b!2447467 (= c!390618 ((_ is Cons!28532) (t!208607 l!9164)))))

(declare-fun b!2447468 () Bool)

(assert (=> b!2447468 (= e!1554138 (Concat!11833 (h!33933 (t!208607 l!9164)) (generalisedConcat!298 (t!208607 (t!208607 l!9164)))))))

(declare-fun b!2447469 () Bool)

(assert (=> b!2447469 (= e!1554135 (h!33933 (t!208607 l!9164)))))

(assert (= (and d!706015 res!1038612) b!2447465))

(assert (= (and d!706015 c!390619) b!2447469))

(assert (= (and d!706015 (not c!390619)) b!2447467))

(assert (= (and b!2447467 c!390618) b!2447468))

(assert (= (and b!2447467 (not c!390618)) b!2447461))

(assert (= (and d!706015 res!1038613) b!2447464))

(assert (= (and b!2447464 c!390617) b!2447462))

(assert (= (and b!2447464 (not c!390617)) b!2447463))

(assert (= (and b!2447463 c!390620) b!2447460))

(assert (= (and b!2447463 (not c!390620)) b!2447466))

(declare-fun m!2823111 () Bool)

(assert (=> b!2447462 m!2823111))

(declare-fun m!2823113 () Bool)

(assert (=> b!2447464 m!2823113))

(declare-fun m!2823115 () Bool)

(assert (=> b!2447468 m!2823115))

(declare-fun m!2823117 () Bool)

(assert (=> d!706015 m!2823117))

(declare-fun m!2823119 () Bool)

(assert (=> d!706015 m!2823119))

(declare-fun m!2823121 () Bool)

(assert (=> b!2447463 m!2823121))

(assert (=> b!2447463 m!2823121))

(declare-fun m!2823123 () Bool)

(assert (=> b!2447463 m!2823123))

(declare-fun m!2823125 () Bool)

(assert (=> b!2447460 m!2823125))

(declare-fun m!2823127 () Bool)

(assert (=> b!2447465 m!2823127))

(declare-fun m!2823129 () Bool)

(assert (=> b!2447466 m!2823129))

(assert (=> b!2447226 d!706015))

(declare-fun bs!465446 () Bool)

(declare-fun d!706027 () Bool)

(assert (= bs!465446 (and d!706027 start!239146)))

(declare-fun lambda!92765 () Int)

(assert (=> bs!465446 (= lambda!92765 lambda!92751)))

(declare-fun bs!465447 () Bool)

(assert (= bs!465447 (and d!706027 d!706015)))

(assert (=> bs!465447 (= lambda!92765 lambda!92764)))

(declare-fun b!2447496 () Bool)

(declare-fun e!1554153 () Bool)

(declare-fun lt!879564 () Regex!7197)

(assert (=> b!2447496 (= e!1554153 (= lt!879564 (head!5569 l!9164)))))

(declare-fun b!2447497 () Bool)

(declare-fun e!1554154 () Regex!7197)

(assert (=> b!2447497 (= e!1554154 EmptyExpr!7197)))

(declare-fun b!2447498 () Bool)

(declare-fun e!1554149 () Bool)

(assert (=> b!2447498 (= e!1554149 (isEmptyExpr!224 lt!879564))))

(declare-fun b!2447499 () Bool)

(assert (=> b!2447499 (= e!1554149 e!1554153)))

(declare-fun c!390624 () Bool)

(assert (=> b!2447499 (= c!390624 (isEmpty!16573 (tail!3842 l!9164)))))

(declare-fun b!2447500 () Bool)

(declare-fun e!1554152 () Bool)

(assert (=> b!2447500 (= e!1554152 e!1554149)))

(declare-fun c!390621 () Bool)

(assert (=> b!2447500 (= c!390621 (isEmpty!16573 l!9164))))

(assert (=> d!706027 e!1554152))

(declare-fun res!1038615 () Bool)

(assert (=> d!706027 (=> (not res!1038615) (not e!1554152))))

(assert (=> d!706027 (= res!1038615 (validRegex!2897 lt!879564))))

(declare-fun e!1554151 () Regex!7197)

(assert (=> d!706027 (= lt!879564 e!1554151)))

(declare-fun c!390623 () Bool)

(declare-fun e!1554150 () Bool)

(assert (=> d!706027 (= c!390623 e!1554150)))

(declare-fun res!1038614 () Bool)

(assert (=> d!706027 (=> (not res!1038614) (not e!1554150))))

(assert (=> d!706027 (= res!1038614 ((_ is Cons!28532) l!9164))))

(assert (=> d!706027 (forall!5831 l!9164 lambda!92765)))

(assert (=> d!706027 (= (generalisedConcat!298 l!9164) lt!879564)))

(declare-fun b!2447501 () Bool)

(assert (=> b!2447501 (= e!1554150 (isEmpty!16573 (t!208607 l!9164)))))

(declare-fun b!2447502 () Bool)

(assert (=> b!2447502 (= e!1554153 (isConcat!224 lt!879564))))

(declare-fun b!2447503 () Bool)

(assert (=> b!2447503 (= e!1554151 e!1554154)))

(declare-fun c!390622 () Bool)

(assert (=> b!2447503 (= c!390622 ((_ is Cons!28532) l!9164))))

(declare-fun b!2447504 () Bool)

(assert (=> b!2447504 (= e!1554154 (Concat!11833 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2447505 () Bool)

(assert (=> b!2447505 (= e!1554151 (h!33933 l!9164))))

(assert (= (and d!706027 res!1038614) b!2447501))

(assert (= (and d!706027 c!390623) b!2447505))

(assert (= (and d!706027 (not c!390623)) b!2447503))

(assert (= (and b!2447503 c!390622) b!2447504))

(assert (= (and b!2447503 (not c!390622)) b!2447497))

(assert (= (and d!706027 res!1038615) b!2447500))

(assert (= (and b!2447500 c!390621) b!2447498))

(assert (= (and b!2447500 (not c!390621)) b!2447499))

(assert (= (and b!2447499 c!390624) b!2447496))

(assert (= (and b!2447499 (not c!390624)) b!2447502))

(declare-fun m!2823131 () Bool)

(assert (=> b!2447498 m!2823131))

(declare-fun m!2823133 () Bool)

(assert (=> b!2447500 m!2823133))

(assert (=> b!2447504 m!2822979))

(declare-fun m!2823135 () Bool)

(assert (=> d!706027 m!2823135))

(declare-fun m!2823137 () Bool)

(assert (=> d!706027 m!2823137))

(declare-fun m!2823139 () Bool)

(assert (=> b!2447499 m!2823139))

(assert (=> b!2447499 m!2823139))

(declare-fun m!2823141 () Bool)

(assert (=> b!2447499 m!2823141))

(declare-fun m!2823143 () Bool)

(assert (=> b!2447496 m!2823143))

(assert (=> b!2447501 m!2823113))

(declare-fun m!2823145 () Bool)

(assert (=> b!2447502 m!2823145))

(assert (=> b!2447232 d!706027))

(declare-fun b!2447545 () Bool)

(assert (=> b!2447545 true))

(assert (=> b!2447545 true))

(declare-fun bs!465448 () Bool)

(declare-fun b!2447542 () Bool)

(assert (= bs!465448 (and b!2447542 b!2447545)))

(declare-fun lambda!92771 () Int)

(declare-fun lambda!92770 () Int)

(assert (=> bs!465448 (not (= lambda!92771 lambda!92770))))

(assert (=> b!2447542 true))

(assert (=> b!2447542 true))

(declare-fun b!2447538 () Bool)

(declare-fun e!1554175 () Bool)

(declare-fun e!1554176 () Bool)

(assert (=> b!2447538 (= e!1554175 e!1554176)))

(declare-fun res!1038633 () Bool)

(assert (=> b!2447538 (= res!1038633 (matchRSpec!1044 (regOne!14907 r!13927) s!9460))))

(assert (=> b!2447538 (=> res!1038633 e!1554176)))

(declare-fun b!2447539 () Bool)

(declare-fun e!1554174 () Bool)

(declare-fun e!1554179 () Bool)

(assert (=> b!2447539 (= e!1554174 e!1554179)))

(declare-fun res!1038632 () Bool)

(assert (=> b!2447539 (= res!1038632 (not ((_ is EmptyLang!7197) r!13927)))))

(assert (=> b!2447539 (=> (not res!1038632) (not e!1554179))))

(declare-fun b!2447540 () Bool)

(declare-fun e!1554173 () Bool)

(assert (=> b!2447540 (= e!1554175 e!1554173)))

(declare-fun c!390634 () Bool)

(assert (=> b!2447540 (= c!390634 ((_ is Star!7197) r!13927))))

(declare-fun b!2447541 () Bool)

(assert (=> b!2447541 (= e!1554176 (matchRSpec!1044 (regTwo!14907 r!13927) s!9460))))

(declare-fun bm!150251 () Bool)

(declare-fun call!150256 () Bool)

(declare-fun Exists!1231 (Int) Bool)

(assert (=> bm!150251 (= call!150256 (Exists!1231 (ite c!390634 lambda!92770 lambda!92771)))))

(assert (=> b!2447542 (= e!1554173 call!150256)))

(declare-fun b!2447543 () Bool)

(declare-fun res!1038634 () Bool)

(declare-fun e!1554177 () Bool)

(assert (=> b!2447543 (=> res!1038634 e!1554177)))

(declare-fun call!150257 () Bool)

(assert (=> b!2447543 (= res!1038634 call!150257)))

(assert (=> b!2447543 (= e!1554173 e!1554177)))

(declare-fun b!2447544 () Bool)

(assert (=> b!2447544 (= e!1554174 call!150257)))

(declare-fun d!706029 () Bool)

(declare-fun c!390636 () Bool)

(assert (=> d!706029 (= c!390636 ((_ is EmptyExpr!7197) r!13927))))

(assert (=> d!706029 (= (matchRSpec!1044 r!13927 s!9460) e!1554174)))

(declare-fun bm!150252 () Bool)

(assert (=> bm!150252 (= call!150257 (isEmpty!16569 s!9460))))

(assert (=> b!2447545 (= e!1554177 call!150256)))

(declare-fun b!2447546 () Bool)

(declare-fun e!1554178 () Bool)

(assert (=> b!2447546 (= e!1554178 (= s!9460 (Cons!28533 (c!390559 r!13927) Nil!28533)))))

(declare-fun b!2447547 () Bool)

(declare-fun c!390635 () Bool)

(assert (=> b!2447547 (= c!390635 ((_ is ElementMatch!7197) r!13927))))

(assert (=> b!2447547 (= e!1554179 e!1554178)))

(declare-fun b!2447548 () Bool)

(declare-fun c!390633 () Bool)

(assert (=> b!2447548 (= c!390633 ((_ is Union!7197) r!13927))))

(assert (=> b!2447548 (= e!1554178 e!1554175)))

(assert (= (and d!706029 c!390636) b!2447544))

(assert (= (and d!706029 (not c!390636)) b!2447539))

(assert (= (and b!2447539 res!1038632) b!2447547))

(assert (= (and b!2447547 c!390635) b!2447546))

(assert (= (and b!2447547 (not c!390635)) b!2447548))

(assert (= (and b!2447548 c!390633) b!2447538))

(assert (= (and b!2447548 (not c!390633)) b!2447540))

(assert (= (and b!2447538 (not res!1038633)) b!2447541))

(assert (= (and b!2447540 c!390634) b!2447543))

(assert (= (and b!2447540 (not c!390634)) b!2447542))

(assert (= (and b!2447543 (not res!1038634)) b!2447545))

(assert (= (or b!2447545 b!2447542) bm!150251))

(assert (= (or b!2447544 b!2447543) bm!150252))

(declare-fun m!2823147 () Bool)

(assert (=> b!2447538 m!2823147))

(declare-fun m!2823149 () Bool)

(assert (=> b!2447541 m!2823149))

(declare-fun m!2823151 () Bool)

(assert (=> bm!150251 m!2823151))

(assert (=> bm!150252 m!2822987))

(assert (=> b!2447230 d!706029))

(declare-fun b!2447581 () Bool)

(declare-fun res!1038652 () Bool)

(declare-fun e!1554195 () Bool)

(assert (=> b!2447581 (=> res!1038652 e!1554195)))

(declare-fun e!1554200 () Bool)

(assert (=> b!2447581 (= res!1038652 e!1554200)))

(declare-fun res!1038655 () Bool)

(assert (=> b!2447581 (=> (not res!1038655) (not e!1554200))))

(declare-fun lt!879567 () Bool)

(assert (=> b!2447581 (= res!1038655 lt!879567)))

(declare-fun b!2447582 () Bool)

(declare-fun res!1038651 () Bool)

(assert (=> b!2447582 (=> (not res!1038651) (not e!1554200))))

(declare-fun call!150260 () Bool)

(assert (=> b!2447582 (= res!1038651 (not call!150260))))

(declare-fun b!2447583 () Bool)

(declare-fun e!1554194 () Bool)

(assert (=> b!2447583 (= e!1554194 (= lt!879567 call!150260))))

(declare-fun b!2447584 () Bool)

(declare-fun res!1038653 () Bool)

(assert (=> b!2447584 (=> res!1038653 e!1554195)))

(assert (=> b!2447584 (= res!1038653 (not ((_ is ElementMatch!7197) r!13927)))))

(declare-fun e!1554199 () Bool)

(assert (=> b!2447584 (= e!1554199 e!1554195)))

(declare-fun b!2447585 () Bool)

(declare-fun e!1554197 () Bool)

(declare-fun head!5570 (List!28631) C!14552)

(assert (=> b!2447585 (= e!1554197 (not (= (head!5570 s!9460) (c!390559 r!13927))))))

(declare-fun bm!150255 () Bool)

(assert (=> bm!150255 (= call!150260 (isEmpty!16569 s!9460))))

(declare-fun b!2447586 () Bool)

(declare-fun e!1554198 () Bool)

(assert (=> b!2447586 (= e!1554195 e!1554198)))

(declare-fun res!1038656 () Bool)

(assert (=> b!2447586 (=> (not res!1038656) (not e!1554198))))

(assert (=> b!2447586 (= res!1038656 (not lt!879567))))

(declare-fun b!2447587 () Bool)

(declare-fun res!1038654 () Bool)

(assert (=> b!2447587 (=> (not res!1038654) (not e!1554200))))

(declare-fun tail!3843 (List!28631) List!28631)

(assert (=> b!2447587 (= res!1038654 (isEmpty!16569 (tail!3843 s!9460)))))

(declare-fun d!706031 () Bool)

(assert (=> d!706031 e!1554194))

(declare-fun c!390644 () Bool)

(assert (=> d!706031 (= c!390644 ((_ is EmptyExpr!7197) r!13927))))

(declare-fun e!1554196 () Bool)

(assert (=> d!706031 (= lt!879567 e!1554196)))

(declare-fun c!390643 () Bool)

(assert (=> d!706031 (= c!390643 (isEmpty!16569 s!9460))))

(assert (=> d!706031 (validRegex!2897 r!13927)))

(assert (=> d!706031 (= (matchR!3312 r!13927 s!9460) lt!879567)))

(declare-fun b!2447588 () Bool)

(assert (=> b!2447588 (= e!1554198 e!1554197)))

(declare-fun res!1038658 () Bool)

(assert (=> b!2447588 (=> res!1038658 e!1554197)))

(assert (=> b!2447588 (= res!1038658 call!150260)))

(declare-fun b!2447589 () Bool)

(assert (=> b!2447589 (= e!1554200 (= (head!5570 s!9460) (c!390559 r!13927)))))

(declare-fun b!2447590 () Bool)

(assert (=> b!2447590 (= e!1554199 (not lt!879567))))

(declare-fun b!2447591 () Bool)

(assert (=> b!2447591 (= e!1554194 e!1554199)))

(declare-fun c!390645 () Bool)

(assert (=> b!2447591 (= c!390645 ((_ is EmptyLang!7197) r!13927))))

(declare-fun b!2447592 () Bool)

(declare-fun nullable!2205 (Regex!7197) Bool)

(assert (=> b!2447592 (= e!1554196 (nullable!2205 r!13927))))

(declare-fun b!2447593 () Bool)

(declare-fun res!1038657 () Bool)

(assert (=> b!2447593 (=> res!1038657 e!1554197)))

(assert (=> b!2447593 (= res!1038657 (not (isEmpty!16569 (tail!3843 s!9460))))))

(declare-fun b!2447594 () Bool)

(declare-fun derivativeStep!1859 (Regex!7197 C!14552) Regex!7197)

(assert (=> b!2447594 (= e!1554196 (matchR!3312 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (tail!3843 s!9460)))))

(assert (= (and d!706031 c!390643) b!2447592))

(assert (= (and d!706031 (not c!390643)) b!2447594))

(assert (= (and d!706031 c!390644) b!2447583))

(assert (= (and d!706031 (not c!390644)) b!2447591))

(assert (= (and b!2447591 c!390645) b!2447590))

(assert (= (and b!2447591 (not c!390645)) b!2447584))

(assert (= (and b!2447584 (not res!1038653)) b!2447581))

(assert (= (and b!2447581 res!1038655) b!2447582))

(assert (= (and b!2447582 res!1038651) b!2447587))

(assert (= (and b!2447587 res!1038654) b!2447589))

(assert (= (and b!2447581 (not res!1038652)) b!2447586))

(assert (= (and b!2447586 res!1038656) b!2447588))

(assert (= (and b!2447588 (not res!1038658)) b!2447593))

(assert (= (and b!2447593 (not res!1038657)) b!2447585))

(assert (= (or b!2447583 b!2447582 b!2447588) bm!150255))

(declare-fun m!2823153 () Bool)

(assert (=> b!2447585 m!2823153))

(assert (=> bm!150255 m!2822987))

(declare-fun m!2823155 () Bool)

(assert (=> b!2447592 m!2823155))

(declare-fun m!2823157 () Bool)

(assert (=> b!2447587 m!2823157))

(assert (=> b!2447587 m!2823157))

(declare-fun m!2823159 () Bool)

(assert (=> b!2447587 m!2823159))

(assert (=> b!2447593 m!2823157))

(assert (=> b!2447593 m!2823157))

(assert (=> b!2447593 m!2823159))

(assert (=> b!2447589 m!2823153))

(assert (=> d!706031 m!2822987))

(declare-fun m!2823161 () Bool)

(assert (=> d!706031 m!2823161))

(assert (=> b!2447594 m!2823153))

(assert (=> b!2447594 m!2823153))

(declare-fun m!2823163 () Bool)

(assert (=> b!2447594 m!2823163))

(assert (=> b!2447594 m!2823157))

(assert (=> b!2447594 m!2823163))

(assert (=> b!2447594 m!2823157))

(declare-fun m!2823165 () Bool)

(assert (=> b!2447594 m!2823165))

(assert (=> b!2447230 d!706031))

(declare-fun d!706033 () Bool)

(assert (=> d!706033 (= (matchR!3312 r!13927 s!9460) (matchRSpec!1044 r!13927 s!9460))))

(declare-fun lt!879570 () Unit!41849)

(declare-fun choose!14521 (Regex!7197 List!28631) Unit!41849)

(assert (=> d!706033 (= lt!879570 (choose!14521 r!13927 s!9460))))

(assert (=> d!706033 (validRegex!2897 r!13927)))

(assert (=> d!706033 (= (mainMatchTheorem!1044 r!13927 s!9460) lt!879570)))

(declare-fun bs!465449 () Bool)

(assert (= bs!465449 d!706033))

(assert (=> bs!465449 m!2822991))

(assert (=> bs!465449 m!2822989))

(declare-fun m!2823167 () Bool)

(assert (=> bs!465449 m!2823167))

(assert (=> bs!465449 m!2823161))

(assert (=> b!2447230 d!706033))

(declare-fun d!706035 () Bool)

(declare-fun res!1038663 () Bool)

(declare-fun e!1554205 () Bool)

(assert (=> d!706035 (=> res!1038663 e!1554205)))

(assert (=> d!706035 (= res!1038663 ((_ is Nil!28532) l!9164))))

(assert (=> d!706035 (= (forall!5831 l!9164 lambda!92751) e!1554205)))

(declare-fun b!2447599 () Bool)

(declare-fun e!1554206 () Bool)

(assert (=> b!2447599 (= e!1554205 e!1554206)))

(declare-fun res!1038664 () Bool)

(assert (=> b!2447599 (=> (not res!1038664) (not e!1554206))))

(declare-fun dynLambda!12263 (Int Regex!7197) Bool)

(assert (=> b!2447599 (= res!1038664 (dynLambda!12263 lambda!92751 (h!33933 l!9164)))))

(declare-fun b!2447600 () Bool)

(assert (=> b!2447600 (= e!1554206 (forall!5831 (t!208607 l!9164) lambda!92751))))

(assert (= (and d!706035 (not res!1038663)) b!2447599))

(assert (= (and b!2447599 res!1038664) b!2447600))

(declare-fun b_lambda!75019 () Bool)

(assert (=> (not b_lambda!75019) (not b!2447599)))

(declare-fun m!2823169 () Bool)

(assert (=> b!2447599 m!2823169))

(declare-fun m!2823171 () Bool)

(assert (=> b!2447600 m!2823171))

(assert (=> start!239146 d!706035))

(declare-fun e!1554209 () Bool)

(assert (=> b!2447223 (= tp!777381 e!1554209)))

(declare-fun b!2447613 () Bool)

(declare-fun tp!777449 () Bool)

(assert (=> b!2447613 (= e!1554209 tp!777449)))

(declare-fun b!2447612 () Bool)

(declare-fun tp!777445 () Bool)

(declare-fun tp!777448 () Bool)

(assert (=> b!2447612 (= e!1554209 (and tp!777445 tp!777448))))

(declare-fun b!2447614 () Bool)

(declare-fun tp!777446 () Bool)

(declare-fun tp!777447 () Bool)

(assert (=> b!2447614 (= e!1554209 (and tp!777446 tp!777447))))

(declare-fun b!2447611 () Bool)

(assert (=> b!2447611 (= e!1554209 tp_is_empty!11807)))

(assert (= (and b!2447223 ((_ is ElementMatch!7197) (regOne!14907 r!13927))) b!2447611))

(assert (= (and b!2447223 ((_ is Concat!11833) (regOne!14907 r!13927))) b!2447612))

(assert (= (and b!2447223 ((_ is Star!7197) (regOne!14907 r!13927))) b!2447613))

(assert (= (and b!2447223 ((_ is Union!7197) (regOne!14907 r!13927))) b!2447614))

(declare-fun e!1554210 () Bool)

(assert (=> b!2447223 (= tp!777379 e!1554210)))

(declare-fun b!2447617 () Bool)

(declare-fun tp!777454 () Bool)

(assert (=> b!2447617 (= e!1554210 tp!777454)))

(declare-fun b!2447616 () Bool)

(declare-fun tp!777450 () Bool)

(declare-fun tp!777453 () Bool)

(assert (=> b!2447616 (= e!1554210 (and tp!777450 tp!777453))))

(declare-fun b!2447618 () Bool)

(declare-fun tp!777451 () Bool)

(declare-fun tp!777452 () Bool)

(assert (=> b!2447618 (= e!1554210 (and tp!777451 tp!777452))))

(declare-fun b!2447615 () Bool)

(assert (=> b!2447615 (= e!1554210 tp_is_empty!11807)))

(assert (= (and b!2447223 ((_ is ElementMatch!7197) (regTwo!14907 r!13927))) b!2447615))

(assert (= (and b!2447223 ((_ is Concat!11833) (regTwo!14907 r!13927))) b!2447616))

(assert (= (and b!2447223 ((_ is Star!7197) (regTwo!14907 r!13927))) b!2447617))

(assert (= (and b!2447223 ((_ is Union!7197) (regTwo!14907 r!13927))) b!2447618))

(declare-fun b!2447623 () Bool)

(declare-fun e!1554213 () Bool)

(declare-fun tp!777457 () Bool)

(assert (=> b!2447623 (= e!1554213 (and tp_is_empty!11807 tp!777457))))

(assert (=> b!2447224 (= tp!777382 e!1554213)))

(assert (= (and b!2447224 ((_ is Cons!28533) (t!208608 s!9460))) b!2447623))

(declare-fun e!1554214 () Bool)

(assert (=> b!2447222 (= tp!777383 e!1554214)))

(declare-fun b!2447626 () Bool)

(declare-fun tp!777462 () Bool)

(assert (=> b!2447626 (= e!1554214 tp!777462)))

(declare-fun b!2447625 () Bool)

(declare-fun tp!777458 () Bool)

(declare-fun tp!777461 () Bool)

(assert (=> b!2447625 (= e!1554214 (and tp!777458 tp!777461))))

(declare-fun b!2447627 () Bool)

(declare-fun tp!777459 () Bool)

(declare-fun tp!777460 () Bool)

(assert (=> b!2447627 (= e!1554214 (and tp!777459 tp!777460))))

(declare-fun b!2447624 () Bool)

(assert (=> b!2447624 (= e!1554214 tp_is_empty!11807)))

(assert (= (and b!2447222 ((_ is ElementMatch!7197) (h!33933 l!9164))) b!2447624))

(assert (= (and b!2447222 ((_ is Concat!11833) (h!33933 l!9164))) b!2447625))

(assert (= (and b!2447222 ((_ is Star!7197) (h!33933 l!9164))) b!2447626))

(assert (= (and b!2447222 ((_ is Union!7197) (h!33933 l!9164))) b!2447627))

(declare-fun b!2447632 () Bool)

(declare-fun e!1554217 () Bool)

(declare-fun tp!777467 () Bool)

(declare-fun tp!777468 () Bool)

(assert (=> b!2447632 (= e!1554217 (and tp!777467 tp!777468))))

(assert (=> b!2447222 (= tp!777385 e!1554217)))

(assert (= (and b!2447222 ((_ is Cons!28532) (t!208607 l!9164))) b!2447632))

(declare-fun e!1554218 () Bool)

(assert (=> b!2447228 (= tp!777380 e!1554218)))

(declare-fun b!2447635 () Bool)

(declare-fun tp!777473 () Bool)

(assert (=> b!2447635 (= e!1554218 tp!777473)))

(declare-fun b!2447634 () Bool)

(declare-fun tp!777469 () Bool)

(declare-fun tp!777472 () Bool)

(assert (=> b!2447634 (= e!1554218 (and tp!777469 tp!777472))))

(declare-fun b!2447636 () Bool)

(declare-fun tp!777470 () Bool)

(declare-fun tp!777471 () Bool)

(assert (=> b!2447636 (= e!1554218 (and tp!777470 tp!777471))))

(declare-fun b!2447633 () Bool)

(assert (=> b!2447633 (= e!1554218 tp_is_empty!11807)))

(assert (= (and b!2447228 ((_ is ElementMatch!7197) (regOne!14906 r!13927))) b!2447633))

(assert (= (and b!2447228 ((_ is Concat!11833) (regOne!14906 r!13927))) b!2447634))

(assert (= (and b!2447228 ((_ is Star!7197) (regOne!14906 r!13927))) b!2447635))

(assert (= (and b!2447228 ((_ is Union!7197) (regOne!14906 r!13927))) b!2447636))

(declare-fun e!1554219 () Bool)

(assert (=> b!2447228 (= tp!777378 e!1554219)))

(declare-fun b!2447639 () Bool)

(declare-fun tp!777478 () Bool)

(assert (=> b!2447639 (= e!1554219 tp!777478)))

(declare-fun b!2447638 () Bool)

(declare-fun tp!777474 () Bool)

(declare-fun tp!777477 () Bool)

(assert (=> b!2447638 (= e!1554219 (and tp!777474 tp!777477))))

(declare-fun b!2447640 () Bool)

(declare-fun tp!777475 () Bool)

(declare-fun tp!777476 () Bool)

(assert (=> b!2447640 (= e!1554219 (and tp!777475 tp!777476))))

(declare-fun b!2447637 () Bool)

(assert (=> b!2447637 (= e!1554219 tp_is_empty!11807)))

(assert (= (and b!2447228 ((_ is ElementMatch!7197) (regTwo!14906 r!13927))) b!2447637))

(assert (= (and b!2447228 ((_ is Concat!11833) (regTwo!14906 r!13927))) b!2447638))

(assert (= (and b!2447228 ((_ is Star!7197) (regTwo!14906 r!13927))) b!2447639))

(assert (= (and b!2447228 ((_ is Union!7197) (regTwo!14906 r!13927))) b!2447640))

(declare-fun e!1554220 () Bool)

(assert (=> b!2447225 (= tp!777384 e!1554220)))

(declare-fun b!2447643 () Bool)

(declare-fun tp!777483 () Bool)

(assert (=> b!2447643 (= e!1554220 tp!777483)))

(declare-fun b!2447642 () Bool)

(declare-fun tp!777479 () Bool)

(declare-fun tp!777482 () Bool)

(assert (=> b!2447642 (= e!1554220 (and tp!777479 tp!777482))))

(declare-fun b!2447644 () Bool)

(declare-fun tp!777480 () Bool)

(declare-fun tp!777481 () Bool)

(assert (=> b!2447644 (= e!1554220 (and tp!777480 tp!777481))))

(declare-fun b!2447641 () Bool)

(assert (=> b!2447641 (= e!1554220 tp_is_empty!11807)))

(assert (= (and b!2447225 ((_ is ElementMatch!7197) (reg!7526 r!13927))) b!2447641))

(assert (= (and b!2447225 ((_ is Concat!11833) (reg!7526 r!13927))) b!2447642))

(assert (= (and b!2447225 ((_ is Star!7197) (reg!7526 r!13927))) b!2447643))

(assert (= (and b!2447225 ((_ is Union!7197) (reg!7526 r!13927))) b!2447644))

(declare-fun b_lambda!75021 () Bool)

(assert (= b_lambda!75019 (or start!239146 b_lambda!75021)))

(declare-fun bs!465450 () Bool)

(declare-fun d!706037 () Bool)

(assert (= bs!465450 (and d!706037 start!239146)))

(assert (=> bs!465450 (= (dynLambda!12263 lambda!92751 (h!33933 l!9164)) (validRegex!2897 (h!33933 l!9164)))))

(assert (=> bs!465450 m!2823055))

(assert (=> b!2447599 d!706037))

(check-sat (not bm!150252) (not b!2447592) (not bs!465450) (not b!2447616) (not b!2447538) (not b!2447627) (not b!2447634) (not b!2447460) (not b!2447466) (not b!2447594) (not d!706005) (not b!2447346) (not b!2447499) (not b!2447587) (not b!2447347) (not b!2447614) (not d!706031) (not b!2447640) (not b!2447498) (not b!2447354) (not b!2447612) (not d!706015) (not d!706007) (not b!2447541) (not b!2447504) (not b!2447501) (not b!2447625) (not d!706027) (not b!2447464) (not b!2447643) (not b!2447636) (not b!2447593) (not b!2447626) (not b!2447465) (not b!2447462) (not bm!150251) (not b!2447496) (not b!2447613) (not b!2447589) (not b!2447623) (not b_lambda!75021) (not b!2447463) tp_is_empty!11807 (not b!2447642) (not b!2447468) (not b!2447618) (not bm!150255) (not b!2447617) (not b!2447600) (not b!2447644) (not b!2447638) (not b!2447350) (not d!706033) (not b!2447632) (not b!2447639) (not b!2447502) (not b!2447585) (not b!2447635) (not b!2447348) (not b!2447500) (not b!2447349))
(check-sat)
(get-model)

(declare-fun d!706131 () Bool)

(declare-fun res!1038764 () Bool)

(declare-fun e!1554387 () Bool)

(assert (=> d!706131 (=> res!1038764 e!1554387)))

(assert (=> d!706131 (= res!1038764 ((_ is Nil!28532) (t!208607 l!9164)))))

(assert (=> d!706131 (= (forall!5831 (t!208607 l!9164) lambda!92751) e!1554387)))

(declare-fun b!2447992 () Bool)

(declare-fun e!1554388 () Bool)

(assert (=> b!2447992 (= e!1554387 e!1554388)))

(declare-fun res!1038765 () Bool)

(assert (=> b!2447992 (=> (not res!1038765) (not e!1554388))))

(assert (=> b!2447992 (= res!1038765 (dynLambda!12263 lambda!92751 (h!33933 (t!208607 l!9164))))))

(declare-fun b!2447993 () Bool)

(assert (=> b!2447993 (= e!1554388 (forall!5831 (t!208607 (t!208607 l!9164)) lambda!92751))))

(assert (= (and d!706131 (not res!1038764)) b!2447992))

(assert (= (and b!2447992 res!1038765) b!2447993))

(declare-fun b_lambda!75035 () Bool)

(assert (=> (not b_lambda!75035) (not b!2447992)))

(declare-fun m!2823383 () Bool)

(assert (=> b!2447992 m!2823383))

(declare-fun m!2823385 () Bool)

(assert (=> b!2447993 m!2823385))

(assert (=> b!2447600 d!706131))

(declare-fun b!2448004 () Bool)

(declare-fun res!1038771 () Bool)

(declare-fun e!1554393 () Bool)

(assert (=> b!2448004 (=> (not res!1038771) (not e!1554393))))

(declare-fun lt!879593 () List!28631)

(declare-fun size!22268 (List!28631) Int)

(assert (=> b!2448004 (= res!1038771 (= (size!22268 lt!879593) (+ (size!22268 (_1!16614 (get!8823 lt!879551))) (size!22268 (_2!16614 (get!8823 lt!879551))))))))

(declare-fun d!706133 () Bool)

(assert (=> d!706133 e!1554393))

(declare-fun res!1038770 () Bool)

(assert (=> d!706133 (=> (not res!1038770) (not e!1554393))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3930 (List!28631) (InoxSet C!14552))

(assert (=> d!706133 (= res!1038770 (= (content!3930 lt!879593) ((_ map or) (content!3930 (_1!16614 (get!8823 lt!879551))) (content!3930 (_2!16614 (get!8823 lt!879551))))))))

(declare-fun e!1554394 () List!28631)

(assert (=> d!706133 (= lt!879593 e!1554394)))

(declare-fun c!390709 () Bool)

(assert (=> d!706133 (= c!390709 ((_ is Nil!28533) (_1!16614 (get!8823 lt!879551))))))

(assert (=> d!706133 (= (++!7098 (_1!16614 (get!8823 lt!879551)) (_2!16614 (get!8823 lt!879551))) lt!879593)))

(declare-fun b!2448005 () Bool)

(assert (=> b!2448005 (= e!1554393 (or (not (= (_2!16614 (get!8823 lt!879551)) Nil!28533)) (= lt!879593 (_1!16614 (get!8823 lt!879551)))))))

(declare-fun b!2448003 () Bool)

(assert (=> b!2448003 (= e!1554394 (Cons!28533 (h!33934 (_1!16614 (get!8823 lt!879551))) (++!7098 (t!208608 (_1!16614 (get!8823 lt!879551))) (_2!16614 (get!8823 lt!879551)))))))

(declare-fun b!2448002 () Bool)

(assert (=> b!2448002 (= e!1554394 (_2!16614 (get!8823 lt!879551)))))

(assert (= (and d!706133 c!390709) b!2448002))

(assert (= (and d!706133 (not c!390709)) b!2448003))

(assert (= (and d!706133 res!1038770) b!2448004))

(assert (= (and b!2448004 res!1038771) b!2448005))

(declare-fun m!2823387 () Bool)

(assert (=> b!2448004 m!2823387))

(declare-fun m!2823389 () Bool)

(assert (=> b!2448004 m!2823389))

(declare-fun m!2823391 () Bool)

(assert (=> b!2448004 m!2823391))

(declare-fun m!2823393 () Bool)

(assert (=> d!706133 m!2823393))

(declare-fun m!2823395 () Bool)

(assert (=> d!706133 m!2823395))

(declare-fun m!2823397 () Bool)

(assert (=> d!706133 m!2823397))

(declare-fun m!2823399 () Bool)

(assert (=> b!2448003 m!2823399))

(assert (=> b!2447350 d!706133))

(declare-fun d!706135 () Bool)

(assert (=> d!706135 (= (get!8823 lt!879551) (v!31091 lt!879551))))

(assert (=> b!2447350 d!706135))

(declare-fun d!706137 () Bool)

(assert (=> d!706137 (= (isEmpty!16573 (tail!3842 l!9164)) ((_ is Nil!28532) (tail!3842 l!9164)))))

(assert (=> b!2447499 d!706137))

(declare-fun d!706139 () Bool)

(assert (=> d!706139 (= (tail!3842 l!9164) (t!208607 l!9164))))

(assert (=> b!2447499 d!706139))

(declare-fun d!706141 () Bool)

(assert (=> d!706141 (= (head!5569 (t!208607 l!9164)) (h!33933 (t!208607 l!9164)))))

(assert (=> b!2447460 d!706141))

(declare-fun b!2448006 () Bool)

(declare-fun res!1038773 () Bool)

(declare-fun e!1554396 () Bool)

(assert (=> b!2448006 (=> res!1038773 e!1554396)))

(declare-fun e!1554401 () Bool)

(assert (=> b!2448006 (= res!1038773 e!1554401)))

(declare-fun res!1038776 () Bool)

(assert (=> b!2448006 (=> (not res!1038776) (not e!1554401))))

(declare-fun lt!879594 () Bool)

(assert (=> b!2448006 (= res!1038776 lt!879594)))

(declare-fun b!2448007 () Bool)

(declare-fun res!1038772 () Bool)

(assert (=> b!2448007 (=> (not res!1038772) (not e!1554401))))

(declare-fun call!150300 () Bool)

(assert (=> b!2448007 (= res!1038772 (not call!150300))))

(declare-fun b!2448008 () Bool)

(declare-fun e!1554395 () Bool)

(assert (=> b!2448008 (= e!1554395 (= lt!879594 call!150300))))

(declare-fun b!2448009 () Bool)

(declare-fun res!1038774 () Bool)

(assert (=> b!2448009 (=> res!1038774 e!1554396)))

(assert (=> b!2448009 (= res!1038774 (not ((_ is ElementMatch!7197) (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun e!1554400 () Bool)

(assert (=> b!2448009 (= e!1554400 e!1554396)))

(declare-fun b!2448010 () Bool)

(declare-fun e!1554398 () Bool)

(assert (=> b!2448010 (= e!1554398 (not (= (head!5570 (_2!16614 (get!8823 lt!879551))) (c!390559 (generalisedConcat!298 (t!208607 l!9164))))))))

(declare-fun bm!150295 () Bool)

(assert (=> bm!150295 (= call!150300 (isEmpty!16569 (_2!16614 (get!8823 lt!879551))))))

(declare-fun b!2448011 () Bool)

(declare-fun e!1554399 () Bool)

(assert (=> b!2448011 (= e!1554396 e!1554399)))

(declare-fun res!1038777 () Bool)

(assert (=> b!2448011 (=> (not res!1038777) (not e!1554399))))

(assert (=> b!2448011 (= res!1038777 (not lt!879594))))

(declare-fun b!2448012 () Bool)

(declare-fun res!1038775 () Bool)

(assert (=> b!2448012 (=> (not res!1038775) (not e!1554401))))

(assert (=> b!2448012 (= res!1038775 (isEmpty!16569 (tail!3843 (_2!16614 (get!8823 lt!879551)))))))

(declare-fun d!706143 () Bool)

(assert (=> d!706143 e!1554395))

(declare-fun c!390711 () Bool)

(assert (=> d!706143 (= c!390711 ((_ is EmptyExpr!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun e!1554397 () Bool)

(assert (=> d!706143 (= lt!879594 e!1554397)))

(declare-fun c!390710 () Bool)

(assert (=> d!706143 (= c!390710 (isEmpty!16569 (_2!16614 (get!8823 lt!879551))))))

(assert (=> d!706143 (validRegex!2897 (generalisedConcat!298 (t!208607 l!9164)))))

(assert (=> d!706143 (= (matchR!3312 (generalisedConcat!298 (t!208607 l!9164)) (_2!16614 (get!8823 lt!879551))) lt!879594)))

(declare-fun b!2448013 () Bool)

(assert (=> b!2448013 (= e!1554399 e!1554398)))

(declare-fun res!1038779 () Bool)

(assert (=> b!2448013 (=> res!1038779 e!1554398)))

(assert (=> b!2448013 (= res!1038779 call!150300)))

(declare-fun b!2448014 () Bool)

(assert (=> b!2448014 (= e!1554401 (= (head!5570 (_2!16614 (get!8823 lt!879551))) (c!390559 (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun b!2448015 () Bool)

(assert (=> b!2448015 (= e!1554400 (not lt!879594))))

(declare-fun b!2448016 () Bool)

(assert (=> b!2448016 (= e!1554395 e!1554400)))

(declare-fun c!390712 () Bool)

(assert (=> b!2448016 (= c!390712 ((_ is EmptyLang!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448017 () Bool)

(assert (=> b!2448017 (= e!1554397 (nullable!2205 (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448018 () Bool)

(declare-fun res!1038778 () Bool)

(assert (=> b!2448018 (=> res!1038778 e!1554398)))

(assert (=> b!2448018 (= res!1038778 (not (isEmpty!16569 (tail!3843 (_2!16614 (get!8823 lt!879551))))))))

(declare-fun b!2448019 () Bool)

(assert (=> b!2448019 (= e!1554397 (matchR!3312 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551)))) (tail!3843 (_2!16614 (get!8823 lt!879551)))))))

(assert (= (and d!706143 c!390710) b!2448017))

(assert (= (and d!706143 (not c!390710)) b!2448019))

(assert (= (and d!706143 c!390711) b!2448008))

(assert (= (and d!706143 (not c!390711)) b!2448016))

(assert (= (and b!2448016 c!390712) b!2448015))

(assert (= (and b!2448016 (not c!390712)) b!2448009))

(assert (= (and b!2448009 (not res!1038774)) b!2448006))

(assert (= (and b!2448006 res!1038776) b!2448007))

(assert (= (and b!2448007 res!1038772) b!2448012))

(assert (= (and b!2448012 res!1038775) b!2448014))

(assert (= (and b!2448006 (not res!1038773)) b!2448011))

(assert (= (and b!2448011 res!1038777) b!2448013))

(assert (= (and b!2448013 (not res!1038779)) b!2448018))

(assert (= (and b!2448018 (not res!1038778)) b!2448010))

(assert (= (or b!2448008 b!2448007 b!2448013) bm!150295))

(declare-fun m!2823401 () Bool)

(assert (=> b!2448010 m!2823401))

(declare-fun m!2823403 () Bool)

(assert (=> bm!150295 m!2823403))

(assert (=> b!2448017 m!2822979))

(declare-fun m!2823405 () Bool)

(assert (=> b!2448017 m!2823405))

(declare-fun m!2823407 () Bool)

(assert (=> b!2448012 m!2823407))

(assert (=> b!2448012 m!2823407))

(declare-fun m!2823409 () Bool)

(assert (=> b!2448012 m!2823409))

(assert (=> b!2448018 m!2823407))

(assert (=> b!2448018 m!2823407))

(assert (=> b!2448018 m!2823409))

(assert (=> b!2448014 m!2823401))

(assert (=> d!706143 m!2823403))

(assert (=> d!706143 m!2822979))

(declare-fun m!2823411 () Bool)

(assert (=> d!706143 m!2823411))

(assert (=> b!2448019 m!2823401))

(assert (=> b!2448019 m!2822979))

(assert (=> b!2448019 m!2823401))

(declare-fun m!2823413 () Bool)

(assert (=> b!2448019 m!2823413))

(assert (=> b!2448019 m!2823407))

(assert (=> b!2448019 m!2823413))

(assert (=> b!2448019 m!2823407))

(declare-fun m!2823415 () Bool)

(assert (=> b!2448019 m!2823415))

(assert (=> b!2447349 d!706143))

(assert (=> b!2447349 d!706135))

(declare-fun d!706145 () Bool)

(assert (=> d!706145 (= (isEmpty!16573 l!9164) ((_ is Nil!28532) l!9164))))

(assert (=> b!2447500 d!706145))

(declare-fun d!706147 () Bool)

(assert (=> d!706147 (= (isDefined!4510 lt!879551) (not (isEmpty!16572 lt!879551)))))

(declare-fun bs!465476 () Bool)

(assert (= bs!465476 d!706147))

(declare-fun m!2823417 () Bool)

(assert (=> bs!465476 m!2823417))

(assert (=> b!2447347 d!706147))

(declare-fun b!2448038 () Bool)

(declare-fun e!1554422 () Bool)

(declare-fun call!150309 () Bool)

(assert (=> b!2448038 (= e!1554422 call!150309)))

(declare-fun bm!150302 () Bool)

(declare-fun c!390718 () Bool)

(declare-fun call!150307 () Bool)

(declare-fun c!390717 () Bool)

(assert (=> bm!150302 (= call!150307 (validRegex!2897 (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563)))))))

(declare-fun b!2448039 () Bool)

(declare-fun e!1554417 () Bool)

(assert (=> b!2448039 (= e!1554417 call!150307)))

(declare-fun b!2448040 () Bool)

(declare-fun e!1554419 () Bool)

(declare-fun call!150308 () Bool)

(assert (=> b!2448040 (= e!1554419 call!150308)))

(declare-fun b!2448042 () Bool)

(declare-fun res!1038793 () Bool)

(declare-fun e!1554418 () Bool)

(assert (=> b!2448042 (=> res!1038793 e!1554418)))

(assert (=> b!2448042 (= res!1038793 (not ((_ is Concat!11833) lt!879563)))))

(declare-fun e!1554421 () Bool)

(assert (=> b!2448042 (= e!1554421 e!1554418)))

(declare-fun bm!150303 () Bool)

(assert (=> bm!150303 (= call!150309 call!150307)))

(declare-fun b!2448043 () Bool)

(declare-fun e!1554416 () Bool)

(declare-fun e!1554420 () Bool)

(assert (=> b!2448043 (= e!1554416 e!1554420)))

(assert (=> b!2448043 (= c!390718 ((_ is Star!7197) lt!879563))))

(declare-fun b!2448044 () Bool)

(assert (=> b!2448044 (= e!1554420 e!1554417)))

(declare-fun res!1038790 () Bool)

(assert (=> b!2448044 (= res!1038790 (not (nullable!2205 (reg!7526 lt!879563))))))

(assert (=> b!2448044 (=> (not res!1038790) (not e!1554417))))

(declare-fun b!2448045 () Bool)

(assert (=> b!2448045 (= e!1554420 e!1554421)))

(assert (=> b!2448045 (= c!390717 ((_ is Union!7197) lt!879563))))

(declare-fun b!2448046 () Bool)

(declare-fun res!1038791 () Bool)

(assert (=> b!2448046 (=> (not res!1038791) (not e!1554422))))

(assert (=> b!2448046 (= res!1038791 call!150308)))

(assert (=> b!2448046 (= e!1554421 e!1554422)))

(declare-fun bm!150304 () Bool)

(assert (=> bm!150304 (= call!150308 (validRegex!2897 (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563))))))

(declare-fun d!706149 () Bool)

(declare-fun res!1038792 () Bool)

(assert (=> d!706149 (=> res!1038792 e!1554416)))

(assert (=> d!706149 (= res!1038792 ((_ is ElementMatch!7197) lt!879563))))

(assert (=> d!706149 (= (validRegex!2897 lt!879563) e!1554416)))

(declare-fun b!2448041 () Bool)

(assert (=> b!2448041 (= e!1554418 e!1554419)))

(declare-fun res!1038794 () Bool)

(assert (=> b!2448041 (=> (not res!1038794) (not e!1554419))))

(assert (=> b!2448041 (= res!1038794 call!150309)))

(assert (= (and d!706149 (not res!1038792)) b!2448043))

(assert (= (and b!2448043 c!390718) b!2448044))

(assert (= (and b!2448043 (not c!390718)) b!2448045))

(assert (= (and b!2448044 res!1038790) b!2448039))

(assert (= (and b!2448045 c!390717) b!2448046))

(assert (= (and b!2448045 (not c!390717)) b!2448042))

(assert (= (and b!2448046 res!1038791) b!2448038))

(assert (= (and b!2448042 (not res!1038793)) b!2448041))

(assert (= (and b!2448041 res!1038794) b!2448040))

(assert (= (or b!2448046 b!2448040) bm!150304))

(assert (= (or b!2448038 b!2448041) bm!150303))

(assert (= (or b!2448039 bm!150303) bm!150302))

(declare-fun m!2823419 () Bool)

(assert (=> bm!150302 m!2823419))

(declare-fun m!2823421 () Bool)

(assert (=> b!2448044 m!2823421))

(declare-fun m!2823423 () Bool)

(assert (=> bm!150304 m!2823423))

(assert (=> d!706015 d!706149))

(declare-fun d!706151 () Bool)

(declare-fun res!1038795 () Bool)

(declare-fun e!1554423 () Bool)

(assert (=> d!706151 (=> res!1038795 e!1554423)))

(assert (=> d!706151 (= res!1038795 ((_ is Nil!28532) (t!208607 l!9164)))))

(assert (=> d!706151 (= (forall!5831 (t!208607 l!9164) lambda!92764) e!1554423)))

(declare-fun b!2448047 () Bool)

(declare-fun e!1554424 () Bool)

(assert (=> b!2448047 (= e!1554423 e!1554424)))

(declare-fun res!1038796 () Bool)

(assert (=> b!2448047 (=> (not res!1038796) (not e!1554424))))

(assert (=> b!2448047 (= res!1038796 (dynLambda!12263 lambda!92764 (h!33933 (t!208607 l!9164))))))

(declare-fun b!2448048 () Bool)

(assert (=> b!2448048 (= e!1554424 (forall!5831 (t!208607 (t!208607 l!9164)) lambda!92764))))

(assert (= (and d!706151 (not res!1038795)) b!2448047))

(assert (= (and b!2448047 res!1038796) b!2448048))

(declare-fun b_lambda!75037 () Bool)

(assert (=> (not b_lambda!75037) (not b!2448047)))

(declare-fun m!2823425 () Bool)

(assert (=> b!2448047 m!2823425))

(declare-fun m!2823427 () Bool)

(assert (=> b!2448048 m!2823427))

(assert (=> d!706015 d!706151))

(declare-fun d!706153 () Bool)

(assert (=> d!706153 (= (head!5569 l!9164) (h!33933 l!9164))))

(assert (=> b!2447496 d!706153))

(declare-fun b!2448051 () Bool)

(declare-fun res!1038798 () Bool)

(declare-fun e!1554425 () Bool)

(assert (=> b!2448051 (=> (not res!1038798) (not e!1554425))))

(declare-fun lt!879595 () List!28631)

(assert (=> b!2448051 (= res!1038798 (= (size!22268 lt!879595) (+ (size!22268 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (size!22268 (t!208608 s!9460)))))))

(declare-fun d!706155 () Bool)

(assert (=> d!706155 e!1554425))

(declare-fun res!1038797 () Bool)

(assert (=> d!706155 (=> (not res!1038797) (not e!1554425))))

(assert (=> d!706155 (= res!1038797 (= (content!3930 lt!879595) ((_ map or) (content!3930 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (content!3930 (t!208608 s!9460)))))))

(declare-fun e!1554426 () List!28631)

(assert (=> d!706155 (= lt!879595 e!1554426)))

(declare-fun c!390719 () Bool)

(assert (=> d!706155 (= c!390719 ((_ is Nil!28533) (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))

(assert (=> d!706155 (= (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (t!208608 s!9460)) lt!879595)))

(declare-fun b!2448052 () Bool)

(assert (=> b!2448052 (= e!1554425 (or (not (= (t!208608 s!9460) Nil!28533)) (= lt!879595 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)))))))

(declare-fun b!2448050 () Bool)

(assert (=> b!2448050 (= e!1554426 (Cons!28533 (h!33934 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (++!7098 (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (t!208608 s!9460))))))

(declare-fun b!2448049 () Bool)

(assert (=> b!2448049 (= e!1554426 (t!208608 s!9460))))

(assert (= (and d!706155 c!390719) b!2448049))

(assert (= (and d!706155 (not c!390719)) b!2448050))

(assert (= (and d!706155 res!1038797) b!2448051))

(assert (= (and b!2448051 res!1038798) b!2448052))

(declare-fun m!2823429 () Bool)

(assert (=> b!2448051 m!2823429))

(assert (=> b!2448051 m!2823065))

(declare-fun m!2823431 () Bool)

(assert (=> b!2448051 m!2823431))

(declare-fun m!2823433 () Bool)

(assert (=> b!2448051 m!2823433))

(declare-fun m!2823435 () Bool)

(assert (=> d!706155 m!2823435))

(assert (=> d!706155 m!2823065))

(declare-fun m!2823437 () Bool)

(assert (=> d!706155 m!2823437))

(declare-fun m!2823439 () Bool)

(assert (=> d!706155 m!2823439))

(declare-fun m!2823441 () Bool)

(assert (=> b!2448050 m!2823441))

(assert (=> b!2447348 d!706155))

(declare-fun b!2448055 () Bool)

(declare-fun res!1038800 () Bool)

(declare-fun e!1554427 () Bool)

(assert (=> b!2448055 (=> (not res!1038800) (not e!1554427))))

(declare-fun lt!879596 () List!28631)

(assert (=> b!2448055 (= res!1038800 (= (size!22268 lt!879596) (+ (size!22268 Nil!28533) (size!22268 (Cons!28533 (h!33934 s!9460) Nil!28533)))))))

(declare-fun d!706157 () Bool)

(assert (=> d!706157 e!1554427))

(declare-fun res!1038799 () Bool)

(assert (=> d!706157 (=> (not res!1038799) (not e!1554427))))

(assert (=> d!706157 (= res!1038799 (= (content!3930 lt!879596) ((_ map or) (content!3930 Nil!28533) (content!3930 (Cons!28533 (h!33934 s!9460) Nil!28533)))))))

(declare-fun e!1554428 () List!28631)

(assert (=> d!706157 (= lt!879596 e!1554428)))

(declare-fun c!390720 () Bool)

(assert (=> d!706157 (= c!390720 ((_ is Nil!28533) Nil!28533))))

(assert (=> d!706157 (= (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) lt!879596)))

(declare-fun b!2448056 () Bool)

(assert (=> b!2448056 (= e!1554427 (or (not (= (Cons!28533 (h!33934 s!9460) Nil!28533) Nil!28533)) (= lt!879596 Nil!28533)))))

(declare-fun b!2448054 () Bool)

(assert (=> b!2448054 (= e!1554428 (Cons!28533 (h!33934 Nil!28533) (++!7098 (t!208608 Nil!28533) (Cons!28533 (h!33934 s!9460) Nil!28533))))))

(declare-fun b!2448053 () Bool)

(assert (=> b!2448053 (= e!1554428 (Cons!28533 (h!33934 s!9460) Nil!28533))))

(assert (= (and d!706157 c!390720) b!2448053))

(assert (= (and d!706157 (not c!390720)) b!2448054))

(assert (= (and d!706157 res!1038799) b!2448055))

(assert (= (and b!2448055 res!1038800) b!2448056))

(declare-fun m!2823443 () Bool)

(assert (=> b!2448055 m!2823443))

(declare-fun m!2823445 () Bool)

(assert (=> b!2448055 m!2823445))

(declare-fun m!2823447 () Bool)

(assert (=> b!2448055 m!2823447))

(declare-fun m!2823449 () Bool)

(assert (=> d!706157 m!2823449))

(declare-fun m!2823451 () Bool)

(assert (=> d!706157 m!2823451))

(declare-fun m!2823453 () Bool)

(assert (=> d!706157 m!2823453))

(declare-fun m!2823455 () Bool)

(assert (=> b!2448054 m!2823455))

(assert (=> b!2447348 d!706157))

(declare-fun d!706159 () Bool)

(assert (=> d!706159 (= (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (t!208608 s!9460)) s!9460)))

(declare-fun lt!879599 () Unit!41849)

(declare-fun choose!14523 (List!28631 C!14552 List!28631 List!28631) Unit!41849)

(assert (=> d!706159 (= lt!879599 (choose!14523 Nil!28533 (h!33934 s!9460) (t!208608 s!9460) s!9460))))

(assert (=> d!706159 (= (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) (t!208608 s!9460))) s!9460)))

(assert (=> d!706159 (= (lemmaMoveElementToOtherListKeepsConcatEq!707 Nil!28533 (h!33934 s!9460) (t!208608 s!9460) s!9460) lt!879599)))

(declare-fun bs!465477 () Bool)

(assert (= bs!465477 d!706159))

(assert (=> bs!465477 m!2823065))

(assert (=> bs!465477 m!2823065))

(assert (=> bs!465477 m!2823067))

(declare-fun m!2823457 () Bool)

(assert (=> bs!465477 m!2823457))

(declare-fun m!2823459 () Bool)

(assert (=> bs!465477 m!2823459))

(assert (=> b!2447348 d!706159))

(declare-fun b!2448057 () Bool)

(declare-fun e!1554433 () Bool)

(assert (=> b!2448057 (= e!1554433 (matchR!3312 (generalisedConcat!298 (t!208607 l!9164)) (t!208608 s!9460)))))

(declare-fun b!2448058 () Bool)

(declare-fun e!1554431 () Bool)

(declare-fun lt!879600 () Option!5684)

(assert (=> b!2448058 (= e!1554431 (not (isDefined!4510 lt!879600)))))

(declare-fun b!2448060 () Bool)

(declare-fun res!1038805 () Bool)

(declare-fun e!1554429 () Bool)

(assert (=> b!2448060 (=> (not res!1038805) (not e!1554429))))

(assert (=> b!2448060 (= res!1038805 (matchR!3312 (generalisedConcat!298 (t!208607 l!9164)) (_2!16614 (get!8823 lt!879600))))))

(declare-fun b!2448061 () Bool)

(assert (=> b!2448061 (= e!1554429 (= (++!7098 (_1!16614 (get!8823 lt!879600)) (_2!16614 (get!8823 lt!879600))) s!9460))))

(declare-fun d!706161 () Bool)

(assert (=> d!706161 e!1554431))

(declare-fun res!1038802 () Bool)

(assert (=> d!706161 (=> res!1038802 e!1554431)))

(assert (=> d!706161 (= res!1038802 e!1554429)))

(declare-fun res!1038801 () Bool)

(assert (=> d!706161 (=> (not res!1038801) (not e!1554429))))

(assert (=> d!706161 (= res!1038801 (isDefined!4510 lt!879600))))

(declare-fun e!1554430 () Option!5684)

(assert (=> d!706161 (= lt!879600 e!1554430)))

(declare-fun c!390721 () Bool)

(assert (=> d!706161 (= c!390721 e!1554433)))

(declare-fun res!1038803 () Bool)

(assert (=> d!706161 (=> (not res!1038803) (not e!1554433))))

(assert (=> d!706161 (= res!1038803 (matchR!3312 (h!33933 l!9164) (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))

(assert (=> d!706161 (validRegex!2897 (h!33933 l!9164))))

(assert (=> d!706161 (= (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (t!208608 s!9460) s!9460) lt!879600)))

(declare-fun b!2448059 () Bool)

(declare-fun lt!879601 () Unit!41849)

(declare-fun lt!879602 () Unit!41849)

(assert (=> b!2448059 (= lt!879601 lt!879602)))

(assert (=> b!2448059 (= (++!7098 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)) (t!208608 (t!208608 s!9460))) s!9460)))

(assert (=> b!2448059 (= lt!879602 (lemmaMoveElementToOtherListKeepsConcatEq!707 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (h!33934 (t!208608 s!9460)) (t!208608 (t!208608 s!9460)) s!9460))))

(declare-fun e!1554432 () Option!5684)

(assert (=> b!2448059 (= e!1554432 (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)) (t!208608 (t!208608 s!9460)) s!9460))))

(declare-fun b!2448062 () Bool)

(assert (=> b!2448062 (= e!1554432 None!5683)))

(declare-fun b!2448063 () Bool)

(assert (=> b!2448063 (= e!1554430 (Some!5683 (tuple2!28147 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (t!208608 s!9460))))))

(declare-fun b!2448064 () Bool)

(assert (=> b!2448064 (= e!1554430 e!1554432)))

(declare-fun c!390722 () Bool)

(assert (=> b!2448064 (= c!390722 ((_ is Nil!28533) (t!208608 s!9460)))))

(declare-fun b!2448065 () Bool)

(declare-fun res!1038804 () Bool)

(assert (=> b!2448065 (=> (not res!1038804) (not e!1554429))))

(assert (=> b!2448065 (= res!1038804 (matchR!3312 (h!33933 l!9164) (_1!16614 (get!8823 lt!879600))))))

(assert (= (and d!706161 res!1038803) b!2448057))

(assert (= (and d!706161 c!390721) b!2448063))

(assert (= (and d!706161 (not c!390721)) b!2448064))

(assert (= (and b!2448064 c!390722) b!2448062))

(assert (= (and b!2448064 (not c!390722)) b!2448059))

(assert (= (and d!706161 res!1038801) b!2448065))

(assert (= (and b!2448065 res!1038804) b!2448060))

(assert (= (and b!2448060 res!1038805) b!2448061))

(assert (= (and d!706161 (not res!1038802)) b!2448058))

(declare-fun m!2823461 () Bool)

(assert (=> b!2448058 m!2823461))

(assert (=> b!2448057 m!2822979))

(declare-fun m!2823463 () Bool)

(assert (=> b!2448057 m!2823463))

(assert (=> d!706161 m!2823461))

(assert (=> d!706161 m!2823065))

(declare-fun m!2823465 () Bool)

(assert (=> d!706161 m!2823465))

(assert (=> d!706161 m!2823055))

(declare-fun m!2823467 () Bool)

(assert (=> b!2448061 m!2823467))

(declare-fun m!2823469 () Bool)

(assert (=> b!2448061 m!2823469))

(assert (=> b!2448060 m!2823467))

(assert (=> b!2448060 m!2822979))

(declare-fun m!2823471 () Bool)

(assert (=> b!2448060 m!2823471))

(assert (=> b!2448065 m!2823467))

(declare-fun m!2823473 () Bool)

(assert (=> b!2448065 m!2823473))

(assert (=> b!2448059 m!2823065))

(declare-fun m!2823475 () Bool)

(assert (=> b!2448059 m!2823475))

(assert (=> b!2448059 m!2823475))

(declare-fun m!2823477 () Bool)

(assert (=> b!2448059 m!2823477))

(assert (=> b!2448059 m!2823065))

(declare-fun m!2823479 () Bool)

(assert (=> b!2448059 m!2823479))

(assert (=> b!2448059 m!2822979))

(assert (=> b!2448059 m!2823475))

(declare-fun m!2823481 () Bool)

(assert (=> b!2448059 m!2823481))

(assert (=> b!2447348 d!706161))

(declare-fun d!706163 () Bool)

(assert (=> d!706163 (= (isEmptyExpr!224 lt!879564) ((_ is EmptyExpr!7197) lt!879564))))

(assert (=> b!2447498 d!706163))

(declare-fun b!2448066 () Bool)

(declare-fun res!1038807 () Bool)

(declare-fun e!1554435 () Bool)

(assert (=> b!2448066 (=> res!1038807 e!1554435)))

(declare-fun e!1554440 () Bool)

(assert (=> b!2448066 (= res!1038807 e!1554440)))

(declare-fun res!1038810 () Bool)

(assert (=> b!2448066 (=> (not res!1038810) (not e!1554440))))

(declare-fun lt!879603 () Bool)

(assert (=> b!2448066 (= res!1038810 lt!879603)))

(declare-fun b!2448067 () Bool)

(declare-fun res!1038806 () Bool)

(assert (=> b!2448067 (=> (not res!1038806) (not e!1554440))))

(declare-fun call!150310 () Bool)

(assert (=> b!2448067 (= res!1038806 (not call!150310))))

(declare-fun b!2448068 () Bool)

(declare-fun e!1554434 () Bool)

(assert (=> b!2448068 (= e!1554434 (= lt!879603 call!150310))))

(declare-fun b!2448069 () Bool)

(declare-fun res!1038808 () Bool)

(assert (=> b!2448069 (=> res!1038808 e!1554435)))

(assert (=> b!2448069 (= res!1038808 (not ((_ is ElementMatch!7197) (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun e!1554439 () Bool)

(assert (=> b!2448069 (= e!1554439 e!1554435)))

(declare-fun b!2448070 () Bool)

(declare-fun e!1554437 () Bool)

(assert (=> b!2448070 (= e!1554437 (not (= (head!5570 s!9460) (c!390559 (generalisedConcat!298 (t!208607 l!9164))))))))

(declare-fun bm!150305 () Bool)

(assert (=> bm!150305 (= call!150310 (isEmpty!16569 s!9460))))

(declare-fun b!2448071 () Bool)

(declare-fun e!1554438 () Bool)

(assert (=> b!2448071 (= e!1554435 e!1554438)))

(declare-fun res!1038811 () Bool)

(assert (=> b!2448071 (=> (not res!1038811) (not e!1554438))))

(assert (=> b!2448071 (= res!1038811 (not lt!879603))))

(declare-fun b!2448072 () Bool)

(declare-fun res!1038809 () Bool)

(assert (=> b!2448072 (=> (not res!1038809) (not e!1554440))))

(assert (=> b!2448072 (= res!1038809 (isEmpty!16569 (tail!3843 s!9460)))))

(declare-fun d!706165 () Bool)

(assert (=> d!706165 e!1554434))

(declare-fun c!390724 () Bool)

(assert (=> d!706165 (= c!390724 ((_ is EmptyExpr!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun e!1554436 () Bool)

(assert (=> d!706165 (= lt!879603 e!1554436)))

(declare-fun c!390723 () Bool)

(assert (=> d!706165 (= c!390723 (isEmpty!16569 s!9460))))

(assert (=> d!706165 (validRegex!2897 (generalisedConcat!298 (t!208607 l!9164)))))

(assert (=> d!706165 (= (matchR!3312 (generalisedConcat!298 (t!208607 l!9164)) s!9460) lt!879603)))

(declare-fun b!2448073 () Bool)

(assert (=> b!2448073 (= e!1554438 e!1554437)))

(declare-fun res!1038813 () Bool)

(assert (=> b!2448073 (=> res!1038813 e!1554437)))

(assert (=> b!2448073 (= res!1038813 call!150310)))

(declare-fun b!2448074 () Bool)

(assert (=> b!2448074 (= e!1554440 (= (head!5570 s!9460) (c!390559 (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun b!2448075 () Bool)

(assert (=> b!2448075 (= e!1554439 (not lt!879603))))

(declare-fun b!2448076 () Bool)

(assert (=> b!2448076 (= e!1554434 e!1554439)))

(declare-fun c!390725 () Bool)

(assert (=> b!2448076 (= c!390725 ((_ is EmptyLang!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448077 () Bool)

(assert (=> b!2448077 (= e!1554436 (nullable!2205 (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448078 () Bool)

(declare-fun res!1038812 () Bool)

(assert (=> b!2448078 (=> res!1038812 e!1554437)))

(assert (=> b!2448078 (= res!1038812 (not (isEmpty!16569 (tail!3843 s!9460))))))

(declare-fun b!2448079 () Bool)

(assert (=> b!2448079 (= e!1554436 (matchR!3312 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460)) (tail!3843 s!9460)))))

(assert (= (and d!706165 c!390723) b!2448077))

(assert (= (and d!706165 (not c!390723)) b!2448079))

(assert (= (and d!706165 c!390724) b!2448068))

(assert (= (and d!706165 (not c!390724)) b!2448076))

(assert (= (and b!2448076 c!390725) b!2448075))

(assert (= (and b!2448076 (not c!390725)) b!2448069))

(assert (= (and b!2448069 (not res!1038808)) b!2448066))

(assert (= (and b!2448066 res!1038810) b!2448067))

(assert (= (and b!2448067 res!1038806) b!2448072))

(assert (= (and b!2448072 res!1038809) b!2448074))

(assert (= (and b!2448066 (not res!1038807)) b!2448071))

(assert (= (and b!2448071 res!1038811) b!2448073))

(assert (= (and b!2448073 (not res!1038813)) b!2448078))

(assert (= (and b!2448078 (not res!1038812)) b!2448070))

(assert (= (or b!2448068 b!2448067 b!2448073) bm!150305))

(assert (=> b!2448070 m!2823153))

(assert (=> bm!150305 m!2822987))

(assert (=> b!2448077 m!2822979))

(assert (=> b!2448077 m!2823405))

(assert (=> b!2448072 m!2823157))

(assert (=> b!2448072 m!2823157))

(assert (=> b!2448072 m!2823159))

(assert (=> b!2448078 m!2823157))

(assert (=> b!2448078 m!2823157))

(assert (=> b!2448078 m!2823159))

(assert (=> b!2448074 m!2823153))

(assert (=> d!706165 m!2822987))

(assert (=> d!706165 m!2822979))

(assert (=> d!706165 m!2823411))

(assert (=> b!2448079 m!2823153))

(assert (=> b!2448079 m!2822979))

(assert (=> b!2448079 m!2823153))

(declare-fun m!2823483 () Bool)

(assert (=> b!2448079 m!2823483))

(assert (=> b!2448079 m!2823157))

(assert (=> b!2448079 m!2823483))

(assert (=> b!2448079 m!2823157))

(declare-fun m!2823485 () Bool)

(assert (=> b!2448079 m!2823485))

(assert (=> b!2447346 d!706165))

(assert (=> bm!150255 d!706003))

(assert (=> b!2447504 d!706015))

(declare-fun d!706167 () Bool)

(assert (=> d!706167 (= (isEmpty!16573 (t!208607 (t!208607 l!9164))) ((_ is Nil!28532) (t!208607 (t!208607 l!9164))))))

(assert (=> b!2447465 d!706167))

(assert (=> d!706031 d!706003))

(declare-fun b!2448080 () Bool)

(declare-fun e!1554447 () Bool)

(declare-fun call!150313 () Bool)

(assert (=> b!2448080 (= e!1554447 call!150313)))

(declare-fun call!150311 () Bool)

(declare-fun bm!150306 () Bool)

(declare-fun c!390727 () Bool)

(declare-fun c!390726 () Bool)

(assert (=> bm!150306 (= call!150311 (validRegex!2897 (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927)))))))

(declare-fun b!2448081 () Bool)

(declare-fun e!1554442 () Bool)

(assert (=> b!2448081 (= e!1554442 call!150311)))

(declare-fun b!2448082 () Bool)

(declare-fun e!1554444 () Bool)

(declare-fun call!150312 () Bool)

(assert (=> b!2448082 (= e!1554444 call!150312)))

(declare-fun b!2448084 () Bool)

(declare-fun res!1038817 () Bool)

(declare-fun e!1554443 () Bool)

(assert (=> b!2448084 (=> res!1038817 e!1554443)))

(assert (=> b!2448084 (= res!1038817 (not ((_ is Concat!11833) r!13927)))))

(declare-fun e!1554446 () Bool)

(assert (=> b!2448084 (= e!1554446 e!1554443)))

(declare-fun bm!150307 () Bool)

(assert (=> bm!150307 (= call!150313 call!150311)))

(declare-fun b!2448085 () Bool)

(declare-fun e!1554441 () Bool)

(declare-fun e!1554445 () Bool)

(assert (=> b!2448085 (= e!1554441 e!1554445)))

(assert (=> b!2448085 (= c!390727 ((_ is Star!7197) r!13927))))

(declare-fun b!2448086 () Bool)

(assert (=> b!2448086 (= e!1554445 e!1554442)))

(declare-fun res!1038814 () Bool)

(assert (=> b!2448086 (= res!1038814 (not (nullable!2205 (reg!7526 r!13927))))))

(assert (=> b!2448086 (=> (not res!1038814) (not e!1554442))))

(declare-fun b!2448087 () Bool)

(assert (=> b!2448087 (= e!1554445 e!1554446)))

(assert (=> b!2448087 (= c!390726 ((_ is Union!7197) r!13927))))

(declare-fun b!2448088 () Bool)

(declare-fun res!1038815 () Bool)

(assert (=> b!2448088 (=> (not res!1038815) (not e!1554447))))

(assert (=> b!2448088 (= res!1038815 call!150312)))

(assert (=> b!2448088 (= e!1554446 e!1554447)))

(declare-fun bm!150308 () Bool)

(assert (=> bm!150308 (= call!150312 (validRegex!2897 (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927))))))

(declare-fun d!706169 () Bool)

(declare-fun res!1038816 () Bool)

(assert (=> d!706169 (=> res!1038816 e!1554441)))

(assert (=> d!706169 (= res!1038816 ((_ is ElementMatch!7197) r!13927))))

(assert (=> d!706169 (= (validRegex!2897 r!13927) e!1554441)))

(declare-fun b!2448083 () Bool)

(assert (=> b!2448083 (= e!1554443 e!1554444)))

(declare-fun res!1038818 () Bool)

(assert (=> b!2448083 (=> (not res!1038818) (not e!1554444))))

(assert (=> b!2448083 (= res!1038818 call!150313)))

(assert (= (and d!706169 (not res!1038816)) b!2448085))

(assert (= (and b!2448085 c!390727) b!2448086))

(assert (= (and b!2448085 (not c!390727)) b!2448087))

(assert (= (and b!2448086 res!1038814) b!2448081))

(assert (= (and b!2448087 c!390726) b!2448088))

(assert (= (and b!2448087 (not c!390726)) b!2448084))

(assert (= (and b!2448088 res!1038815) b!2448080))

(assert (= (and b!2448084 (not res!1038817)) b!2448083))

(assert (= (and b!2448083 res!1038818) b!2448082))

(assert (= (or b!2448088 b!2448082) bm!150308))

(assert (= (or b!2448080 b!2448083) bm!150307))

(assert (= (or b!2448081 bm!150307) bm!150306))

(declare-fun m!2823487 () Bool)

(assert (=> bm!150306 m!2823487))

(declare-fun m!2823489 () Bool)

(assert (=> b!2448086 m!2823489))

(declare-fun m!2823491 () Bool)

(assert (=> bm!150308 m!2823491))

(assert (=> d!706031 d!706169))

(declare-fun b!2448089 () Bool)

(declare-fun res!1038820 () Bool)

(declare-fun e!1554449 () Bool)

(assert (=> b!2448089 (=> res!1038820 e!1554449)))

(declare-fun e!1554454 () Bool)

(assert (=> b!2448089 (= res!1038820 e!1554454)))

(declare-fun res!1038823 () Bool)

(assert (=> b!2448089 (=> (not res!1038823) (not e!1554454))))

(declare-fun lt!879604 () Bool)

(assert (=> b!2448089 (= res!1038823 lt!879604)))

(declare-fun b!2448090 () Bool)

(declare-fun res!1038819 () Bool)

(assert (=> b!2448090 (=> (not res!1038819) (not e!1554454))))

(declare-fun call!150314 () Bool)

(assert (=> b!2448090 (= res!1038819 (not call!150314))))

(declare-fun b!2448091 () Bool)

(declare-fun e!1554448 () Bool)

(assert (=> b!2448091 (= e!1554448 (= lt!879604 call!150314))))

(declare-fun b!2448092 () Bool)

(declare-fun res!1038821 () Bool)

(assert (=> b!2448092 (=> res!1038821 e!1554449)))

(assert (=> b!2448092 (= res!1038821 (not ((_ is ElementMatch!7197) (h!33933 l!9164))))))

(declare-fun e!1554453 () Bool)

(assert (=> b!2448092 (= e!1554453 e!1554449)))

(declare-fun b!2448093 () Bool)

(declare-fun e!1554451 () Bool)

(assert (=> b!2448093 (= e!1554451 (not (= (head!5570 (_1!16614 (get!8823 lt!879551))) (c!390559 (h!33933 l!9164)))))))

(declare-fun bm!150309 () Bool)

(assert (=> bm!150309 (= call!150314 (isEmpty!16569 (_1!16614 (get!8823 lt!879551))))))

(declare-fun b!2448094 () Bool)

(declare-fun e!1554452 () Bool)

(assert (=> b!2448094 (= e!1554449 e!1554452)))

(declare-fun res!1038824 () Bool)

(assert (=> b!2448094 (=> (not res!1038824) (not e!1554452))))

(assert (=> b!2448094 (= res!1038824 (not lt!879604))))

(declare-fun b!2448095 () Bool)

(declare-fun res!1038822 () Bool)

(assert (=> b!2448095 (=> (not res!1038822) (not e!1554454))))

(assert (=> b!2448095 (= res!1038822 (isEmpty!16569 (tail!3843 (_1!16614 (get!8823 lt!879551)))))))

(declare-fun d!706171 () Bool)

(assert (=> d!706171 e!1554448))

(declare-fun c!390729 () Bool)

(assert (=> d!706171 (= c!390729 ((_ is EmptyExpr!7197) (h!33933 l!9164)))))

(declare-fun e!1554450 () Bool)

(assert (=> d!706171 (= lt!879604 e!1554450)))

(declare-fun c!390728 () Bool)

(assert (=> d!706171 (= c!390728 (isEmpty!16569 (_1!16614 (get!8823 lt!879551))))))

(assert (=> d!706171 (validRegex!2897 (h!33933 l!9164))))

(assert (=> d!706171 (= (matchR!3312 (h!33933 l!9164) (_1!16614 (get!8823 lt!879551))) lt!879604)))

(declare-fun b!2448096 () Bool)

(assert (=> b!2448096 (= e!1554452 e!1554451)))

(declare-fun res!1038826 () Bool)

(assert (=> b!2448096 (=> res!1038826 e!1554451)))

(assert (=> b!2448096 (= res!1038826 call!150314)))

(declare-fun b!2448097 () Bool)

(assert (=> b!2448097 (= e!1554454 (= (head!5570 (_1!16614 (get!8823 lt!879551))) (c!390559 (h!33933 l!9164))))))

(declare-fun b!2448098 () Bool)

(assert (=> b!2448098 (= e!1554453 (not lt!879604))))

(declare-fun b!2448099 () Bool)

(assert (=> b!2448099 (= e!1554448 e!1554453)))

(declare-fun c!390730 () Bool)

(assert (=> b!2448099 (= c!390730 ((_ is EmptyLang!7197) (h!33933 l!9164)))))

(declare-fun b!2448100 () Bool)

(assert (=> b!2448100 (= e!1554450 (nullable!2205 (h!33933 l!9164)))))

(declare-fun b!2448101 () Bool)

(declare-fun res!1038825 () Bool)

(assert (=> b!2448101 (=> res!1038825 e!1554451)))

(assert (=> b!2448101 (= res!1038825 (not (isEmpty!16569 (tail!3843 (_1!16614 (get!8823 lt!879551))))))))

(declare-fun b!2448102 () Bool)

(assert (=> b!2448102 (= e!1554450 (matchR!3312 (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551)))) (tail!3843 (_1!16614 (get!8823 lt!879551)))))))

(assert (= (and d!706171 c!390728) b!2448100))

(assert (= (and d!706171 (not c!390728)) b!2448102))

(assert (= (and d!706171 c!390729) b!2448091))

(assert (= (and d!706171 (not c!390729)) b!2448099))

(assert (= (and b!2448099 c!390730) b!2448098))

(assert (= (and b!2448099 (not c!390730)) b!2448092))

(assert (= (and b!2448092 (not res!1038821)) b!2448089))

(assert (= (and b!2448089 res!1038823) b!2448090))

(assert (= (and b!2448090 res!1038819) b!2448095))

(assert (= (and b!2448095 res!1038822) b!2448097))

(assert (= (and b!2448089 (not res!1038820)) b!2448094))

(assert (= (and b!2448094 res!1038824) b!2448096))

(assert (= (and b!2448096 (not res!1038826)) b!2448101))

(assert (= (and b!2448101 (not res!1038825)) b!2448093))

(assert (= (or b!2448091 b!2448090 b!2448096) bm!150309))

(declare-fun m!2823493 () Bool)

(assert (=> b!2448093 m!2823493))

(declare-fun m!2823495 () Bool)

(assert (=> bm!150309 m!2823495))

(declare-fun m!2823497 () Bool)

(assert (=> b!2448100 m!2823497))

(declare-fun m!2823499 () Bool)

(assert (=> b!2448095 m!2823499))

(assert (=> b!2448095 m!2823499))

(declare-fun m!2823501 () Bool)

(assert (=> b!2448095 m!2823501))

(assert (=> b!2448101 m!2823499))

(assert (=> b!2448101 m!2823499))

(assert (=> b!2448101 m!2823501))

(assert (=> b!2448097 m!2823493))

(assert (=> d!706171 m!2823495))

(assert (=> d!706171 m!2823055))

(assert (=> b!2448102 m!2823493))

(assert (=> b!2448102 m!2823493))

(declare-fun m!2823503 () Bool)

(assert (=> b!2448102 m!2823503))

(assert (=> b!2448102 m!2823499))

(assert (=> b!2448102 m!2823503))

(assert (=> b!2448102 m!2823499))

(declare-fun m!2823505 () Bool)

(assert (=> b!2448102 m!2823505))

(assert (=> b!2447354 d!706171))

(assert (=> b!2447354 d!706135))

(declare-fun d!706173 () Bool)

(assert (=> d!706173 (= (isEmpty!16572 (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) Nil!28533 s!9460 s!9460)) (not ((_ is Some!5683) (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) Nil!28533 s!9460 s!9460))))))

(assert (=> d!706005 d!706173))

(declare-fun d!706175 () Bool)

(assert (=> d!706175 (= (isConcat!224 lt!879563) ((_ is Concat!11833) lt!879563))))

(assert (=> b!2447466 d!706175))

(declare-fun d!706177 () Bool)

(assert (=> d!706177 (= (isConcat!224 lt!879564) ((_ is Concat!11833) lt!879564))))

(assert (=> b!2447502 d!706177))

(declare-fun d!706179 () Bool)

(assert (=> d!706179 (= (isEmpty!16573 (tail!3842 (t!208607 l!9164))) ((_ is Nil!28532) (tail!3842 (t!208607 l!9164))))))

(assert (=> b!2447463 d!706179))

(declare-fun d!706181 () Bool)

(assert (=> d!706181 (= (tail!3842 (t!208607 l!9164)) (t!208607 (t!208607 l!9164)))))

(assert (=> b!2447463 d!706181))

(declare-fun b!2448103 () Bool)

(declare-fun e!1554461 () Bool)

(declare-fun call!150317 () Bool)

(assert (=> b!2448103 (= e!1554461 call!150317)))

(declare-fun c!390732 () Bool)

(declare-fun call!150315 () Bool)

(declare-fun c!390731 () Bool)

(declare-fun bm!150310 () Bool)

(assert (=> bm!150310 (= call!150315 (validRegex!2897 (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))))))

(declare-fun b!2448104 () Bool)

(declare-fun e!1554456 () Bool)

(assert (=> b!2448104 (= e!1554456 call!150315)))

(declare-fun b!2448105 () Bool)

(declare-fun e!1554458 () Bool)

(declare-fun call!150316 () Bool)

(assert (=> b!2448105 (= e!1554458 call!150316)))

(declare-fun b!2448107 () Bool)

(declare-fun res!1038830 () Bool)

(declare-fun e!1554457 () Bool)

(assert (=> b!2448107 (=> res!1038830 e!1554457)))

(assert (=> b!2448107 (= res!1038830 (not ((_ is Concat!11833) (h!33933 l!9164))))))

(declare-fun e!1554460 () Bool)

(assert (=> b!2448107 (= e!1554460 e!1554457)))

(declare-fun bm!150311 () Bool)

(assert (=> bm!150311 (= call!150317 call!150315)))

(declare-fun b!2448108 () Bool)

(declare-fun e!1554455 () Bool)

(declare-fun e!1554459 () Bool)

(assert (=> b!2448108 (= e!1554455 e!1554459)))

(assert (=> b!2448108 (= c!390732 ((_ is Star!7197) (h!33933 l!9164)))))

(declare-fun b!2448109 () Bool)

(assert (=> b!2448109 (= e!1554459 e!1554456)))

(declare-fun res!1038827 () Bool)

(assert (=> b!2448109 (= res!1038827 (not (nullable!2205 (reg!7526 (h!33933 l!9164)))))))

(assert (=> b!2448109 (=> (not res!1038827) (not e!1554456))))

(declare-fun b!2448110 () Bool)

(assert (=> b!2448110 (= e!1554459 e!1554460)))

(assert (=> b!2448110 (= c!390731 ((_ is Union!7197) (h!33933 l!9164)))))

(declare-fun b!2448111 () Bool)

(declare-fun res!1038828 () Bool)

(assert (=> b!2448111 (=> (not res!1038828) (not e!1554461))))

(assert (=> b!2448111 (= res!1038828 call!150316)))

(assert (=> b!2448111 (= e!1554460 e!1554461)))

(declare-fun bm!150312 () Bool)

(assert (=> bm!150312 (= call!150316 (validRegex!2897 (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164)))))))

(declare-fun d!706183 () Bool)

(declare-fun res!1038829 () Bool)

(assert (=> d!706183 (=> res!1038829 e!1554455)))

(assert (=> d!706183 (= res!1038829 ((_ is ElementMatch!7197) (h!33933 l!9164)))))

(assert (=> d!706183 (= (validRegex!2897 (h!33933 l!9164)) e!1554455)))

(declare-fun b!2448106 () Bool)

(assert (=> b!2448106 (= e!1554457 e!1554458)))

(declare-fun res!1038831 () Bool)

(assert (=> b!2448106 (=> (not res!1038831) (not e!1554458))))

(assert (=> b!2448106 (= res!1038831 call!150317)))

(assert (= (and d!706183 (not res!1038829)) b!2448108))

(assert (= (and b!2448108 c!390732) b!2448109))

(assert (= (and b!2448108 (not c!390732)) b!2448110))

(assert (= (and b!2448109 res!1038827) b!2448104))

(assert (= (and b!2448110 c!390731) b!2448111))

(assert (= (and b!2448110 (not c!390731)) b!2448107))

(assert (= (and b!2448111 res!1038828) b!2448103))

(assert (= (and b!2448107 (not res!1038830)) b!2448106))

(assert (= (and b!2448106 res!1038831) b!2448105))

(assert (= (or b!2448111 b!2448105) bm!150312))

(assert (= (or b!2448103 b!2448106) bm!150311))

(assert (= (or b!2448104 bm!150311) bm!150310))

(declare-fun m!2823507 () Bool)

(assert (=> bm!150310 m!2823507))

(declare-fun m!2823509 () Bool)

(assert (=> b!2448109 m!2823509))

(declare-fun m!2823511 () Bool)

(assert (=> bm!150312 m!2823511))

(assert (=> bs!465450 d!706183))

(declare-fun d!706185 () Bool)

(assert (=> d!706185 (= (isEmpty!16573 (t!208607 l!9164)) ((_ is Nil!28532) (t!208607 l!9164)))))

(assert (=> b!2447501 d!706185))

(declare-fun d!706187 () Bool)

(assert (=> d!706187 (= (isEmptyExpr!224 lt!879563) ((_ is EmptyExpr!7197) lt!879563))))

(assert (=> b!2447462 d!706187))

(declare-fun b!2448112 () Bool)

(declare-fun e!1554468 () Bool)

(declare-fun call!150320 () Bool)

(assert (=> b!2448112 (= e!1554468 call!150320)))

(declare-fun c!390733 () Bool)

(declare-fun c!390734 () Bool)

(declare-fun bm!150313 () Bool)

(declare-fun call!150318 () Bool)

(assert (=> bm!150313 (= call!150318 (validRegex!2897 (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564)))))))

(declare-fun b!2448113 () Bool)

(declare-fun e!1554463 () Bool)

(assert (=> b!2448113 (= e!1554463 call!150318)))

(declare-fun b!2448114 () Bool)

(declare-fun e!1554465 () Bool)

(declare-fun call!150319 () Bool)

(assert (=> b!2448114 (= e!1554465 call!150319)))

(declare-fun b!2448116 () Bool)

(declare-fun res!1038835 () Bool)

(declare-fun e!1554464 () Bool)

(assert (=> b!2448116 (=> res!1038835 e!1554464)))

(assert (=> b!2448116 (= res!1038835 (not ((_ is Concat!11833) lt!879564)))))

(declare-fun e!1554467 () Bool)

(assert (=> b!2448116 (= e!1554467 e!1554464)))

(declare-fun bm!150314 () Bool)

(assert (=> bm!150314 (= call!150320 call!150318)))

(declare-fun b!2448117 () Bool)

(declare-fun e!1554462 () Bool)

(declare-fun e!1554466 () Bool)

(assert (=> b!2448117 (= e!1554462 e!1554466)))

(assert (=> b!2448117 (= c!390734 ((_ is Star!7197) lt!879564))))

(declare-fun b!2448118 () Bool)

(assert (=> b!2448118 (= e!1554466 e!1554463)))

(declare-fun res!1038832 () Bool)

(assert (=> b!2448118 (= res!1038832 (not (nullable!2205 (reg!7526 lt!879564))))))

(assert (=> b!2448118 (=> (not res!1038832) (not e!1554463))))

(declare-fun b!2448119 () Bool)

(assert (=> b!2448119 (= e!1554466 e!1554467)))

(assert (=> b!2448119 (= c!390733 ((_ is Union!7197) lt!879564))))

(declare-fun b!2448120 () Bool)

(declare-fun res!1038833 () Bool)

(assert (=> b!2448120 (=> (not res!1038833) (not e!1554468))))

(assert (=> b!2448120 (= res!1038833 call!150319)))

(assert (=> b!2448120 (= e!1554467 e!1554468)))

(declare-fun bm!150315 () Bool)

(assert (=> bm!150315 (= call!150319 (validRegex!2897 (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564))))))

(declare-fun d!706189 () Bool)

(declare-fun res!1038834 () Bool)

(assert (=> d!706189 (=> res!1038834 e!1554462)))

(assert (=> d!706189 (= res!1038834 ((_ is ElementMatch!7197) lt!879564))))

(assert (=> d!706189 (= (validRegex!2897 lt!879564) e!1554462)))

(declare-fun b!2448115 () Bool)

(assert (=> b!2448115 (= e!1554464 e!1554465)))

(declare-fun res!1038836 () Bool)

(assert (=> b!2448115 (=> (not res!1038836) (not e!1554465))))

(assert (=> b!2448115 (= res!1038836 call!150320)))

(assert (= (and d!706189 (not res!1038834)) b!2448117))

(assert (= (and b!2448117 c!390734) b!2448118))

(assert (= (and b!2448117 (not c!390734)) b!2448119))

(assert (= (and b!2448118 res!1038832) b!2448113))

(assert (= (and b!2448119 c!390733) b!2448120))

(assert (= (and b!2448119 (not c!390733)) b!2448116))

(assert (= (and b!2448120 res!1038833) b!2448112))

(assert (= (and b!2448116 (not res!1038835)) b!2448115))

(assert (= (and b!2448115 res!1038836) b!2448114))

(assert (= (or b!2448120 b!2448114) bm!150315))

(assert (= (or b!2448112 b!2448115) bm!150314))

(assert (= (or b!2448113 bm!150314) bm!150313))

(declare-fun m!2823513 () Bool)

(assert (=> bm!150313 m!2823513))

(declare-fun m!2823515 () Bool)

(assert (=> b!2448118 m!2823515))

(declare-fun m!2823517 () Bool)

(assert (=> bm!150315 m!2823517))

(assert (=> d!706027 d!706189))

(declare-fun d!706191 () Bool)

(declare-fun res!1038837 () Bool)

(declare-fun e!1554469 () Bool)

(assert (=> d!706191 (=> res!1038837 e!1554469)))

(assert (=> d!706191 (= res!1038837 ((_ is Nil!28532) l!9164))))

(assert (=> d!706191 (= (forall!5831 l!9164 lambda!92765) e!1554469)))

(declare-fun b!2448121 () Bool)

(declare-fun e!1554470 () Bool)

(assert (=> b!2448121 (= e!1554469 e!1554470)))

(declare-fun res!1038838 () Bool)

(assert (=> b!2448121 (=> (not res!1038838) (not e!1554470))))

(assert (=> b!2448121 (= res!1038838 (dynLambda!12263 lambda!92765 (h!33933 l!9164)))))

(declare-fun b!2448122 () Bool)

(assert (=> b!2448122 (= e!1554470 (forall!5831 (t!208607 l!9164) lambda!92765))))

(assert (= (and d!706191 (not res!1038837)) b!2448121))

(assert (= (and b!2448121 res!1038838) b!2448122))

(declare-fun b_lambda!75039 () Bool)

(assert (=> (not b_lambda!75039) (not b!2448121)))

(declare-fun m!2823519 () Bool)

(assert (=> b!2448121 m!2823519))

(declare-fun m!2823521 () Bool)

(assert (=> b!2448122 m!2823521))

(assert (=> d!706027 d!706191))

(declare-fun d!706193 () Bool)

(assert (=> d!706193 (= (head!5570 s!9460) (h!33934 s!9460))))

(assert (=> b!2447585 d!706193))

(assert (=> b!2447464 d!706185))

(declare-fun d!706195 () Bool)

(declare-fun nullableFct!537 (Regex!7197) Bool)

(assert (=> d!706195 (= (nullable!2205 r!13927) (nullableFct!537 r!13927))))

(declare-fun bs!465478 () Bool)

(assert (= bs!465478 d!706195))

(declare-fun m!2823523 () Bool)

(assert (=> bs!465478 m!2823523))

(assert (=> b!2447592 d!706195))

(declare-fun bs!465479 () Bool)

(declare-fun d!706197 () Bool)

(assert (= bs!465479 (and d!706197 start!239146)))

(declare-fun lambda!92777 () Int)

(assert (=> bs!465479 (= lambda!92777 lambda!92751)))

(declare-fun bs!465480 () Bool)

(assert (= bs!465480 (and d!706197 d!706015)))

(assert (=> bs!465480 (= lambda!92777 lambda!92764)))

(declare-fun bs!465481 () Bool)

(assert (= bs!465481 (and d!706197 d!706027)))

(assert (=> bs!465481 (= lambda!92777 lambda!92765)))

(declare-fun b!2448123 () Bool)

(declare-fun e!1554475 () Bool)

(declare-fun lt!879605 () Regex!7197)

(assert (=> b!2448123 (= e!1554475 (= lt!879605 (head!5569 (t!208607 (t!208607 l!9164)))))))

(declare-fun b!2448124 () Bool)

(declare-fun e!1554476 () Regex!7197)

(assert (=> b!2448124 (= e!1554476 EmptyExpr!7197)))

(declare-fun b!2448125 () Bool)

(declare-fun e!1554471 () Bool)

(assert (=> b!2448125 (= e!1554471 (isEmptyExpr!224 lt!879605))))

(declare-fun b!2448126 () Bool)

(assert (=> b!2448126 (= e!1554471 e!1554475)))

(declare-fun c!390738 () Bool)

(assert (=> b!2448126 (= c!390738 (isEmpty!16573 (tail!3842 (t!208607 (t!208607 l!9164)))))))

(declare-fun b!2448127 () Bool)

(declare-fun e!1554474 () Bool)

(assert (=> b!2448127 (= e!1554474 e!1554471)))

(declare-fun c!390735 () Bool)

(assert (=> b!2448127 (= c!390735 (isEmpty!16573 (t!208607 (t!208607 l!9164))))))

(assert (=> d!706197 e!1554474))

(declare-fun res!1038840 () Bool)

(assert (=> d!706197 (=> (not res!1038840) (not e!1554474))))

(assert (=> d!706197 (= res!1038840 (validRegex!2897 lt!879605))))

(declare-fun e!1554473 () Regex!7197)

(assert (=> d!706197 (= lt!879605 e!1554473)))

(declare-fun c!390737 () Bool)

(declare-fun e!1554472 () Bool)

(assert (=> d!706197 (= c!390737 e!1554472)))

(declare-fun res!1038839 () Bool)

(assert (=> d!706197 (=> (not res!1038839) (not e!1554472))))

(assert (=> d!706197 (= res!1038839 ((_ is Cons!28532) (t!208607 (t!208607 l!9164))))))

(assert (=> d!706197 (forall!5831 (t!208607 (t!208607 l!9164)) lambda!92777)))

(assert (=> d!706197 (= (generalisedConcat!298 (t!208607 (t!208607 l!9164))) lt!879605)))

(declare-fun b!2448128 () Bool)

(assert (=> b!2448128 (= e!1554472 (isEmpty!16573 (t!208607 (t!208607 (t!208607 l!9164)))))))

(declare-fun b!2448129 () Bool)

(assert (=> b!2448129 (= e!1554475 (isConcat!224 lt!879605))))

(declare-fun b!2448130 () Bool)

(assert (=> b!2448130 (= e!1554473 e!1554476)))

(declare-fun c!390736 () Bool)

(assert (=> b!2448130 (= c!390736 ((_ is Cons!28532) (t!208607 (t!208607 l!9164))))))

(declare-fun b!2448131 () Bool)

(assert (=> b!2448131 (= e!1554476 (Concat!11833 (h!33933 (t!208607 (t!208607 l!9164))) (generalisedConcat!298 (t!208607 (t!208607 (t!208607 l!9164))))))))

(declare-fun b!2448132 () Bool)

(assert (=> b!2448132 (= e!1554473 (h!33933 (t!208607 (t!208607 l!9164))))))

(assert (= (and d!706197 res!1038839) b!2448128))

(assert (= (and d!706197 c!390737) b!2448132))

(assert (= (and d!706197 (not c!390737)) b!2448130))

(assert (= (and b!2448130 c!390736) b!2448131))

(assert (= (and b!2448130 (not c!390736)) b!2448124))

(assert (= (and d!706197 res!1038840) b!2448127))

(assert (= (and b!2448127 c!390735) b!2448125))

(assert (= (and b!2448127 (not c!390735)) b!2448126))

(assert (= (and b!2448126 c!390738) b!2448123))

(assert (= (and b!2448126 (not c!390738)) b!2448129))

(declare-fun m!2823525 () Bool)

(assert (=> b!2448125 m!2823525))

(assert (=> b!2448127 m!2823127))

(declare-fun m!2823527 () Bool)

(assert (=> b!2448131 m!2823527))

(declare-fun m!2823529 () Bool)

(assert (=> d!706197 m!2823529))

(declare-fun m!2823531 () Bool)

(assert (=> d!706197 m!2823531))

(declare-fun m!2823533 () Bool)

(assert (=> b!2448126 m!2823533))

(assert (=> b!2448126 m!2823533))

(declare-fun m!2823535 () Bool)

(assert (=> b!2448126 m!2823535))

(declare-fun m!2823537 () Bool)

(assert (=> b!2448123 m!2823537))

(declare-fun m!2823539 () Bool)

(assert (=> b!2448128 m!2823539))

(declare-fun m!2823541 () Bool)

(assert (=> b!2448129 m!2823541))

(assert (=> b!2447468 d!706197))

(declare-fun d!706199 () Bool)

(assert (=> d!706199 (= (isEmpty!16569 (tail!3843 s!9460)) ((_ is Nil!28533) (tail!3843 s!9460)))))

(assert (=> b!2447587 d!706199))

(declare-fun d!706201 () Bool)

(assert (=> d!706201 (= (tail!3843 s!9460) (t!208608 s!9460))))

(assert (=> b!2447587 d!706201))

(declare-fun bs!465482 () Bool)

(declare-fun b!2448140 () Bool)

(assert (= bs!465482 (and b!2448140 b!2447545)))

(declare-fun lambda!92778 () Int)

(assert (=> bs!465482 (= (and (= (reg!7526 (regOne!14907 r!13927)) (reg!7526 r!13927)) (= (regOne!14907 r!13927) r!13927)) (= lambda!92778 lambda!92770))))

(declare-fun bs!465483 () Bool)

(assert (= bs!465483 (and b!2448140 b!2447542)))

(assert (=> bs!465483 (not (= lambda!92778 lambda!92771))))

(assert (=> b!2448140 true))

(assert (=> b!2448140 true))

(declare-fun bs!465484 () Bool)

(declare-fun b!2448137 () Bool)

(assert (= bs!465484 (and b!2448137 b!2447545)))

(declare-fun lambda!92779 () Int)

(assert (=> bs!465484 (not (= lambda!92779 lambda!92770))))

(declare-fun bs!465485 () Bool)

(assert (= bs!465485 (and b!2448137 b!2447542)))

(assert (=> bs!465485 (= (and (= (regOne!14906 (regOne!14907 r!13927)) (regOne!14906 r!13927)) (= (regTwo!14906 (regOne!14907 r!13927)) (regTwo!14906 r!13927))) (= lambda!92779 lambda!92771))))

(declare-fun bs!465486 () Bool)

(assert (= bs!465486 (and b!2448137 b!2448140)))

(assert (=> bs!465486 (not (= lambda!92779 lambda!92778))))

(assert (=> b!2448137 true))

(assert (=> b!2448137 true))

(declare-fun b!2448133 () Bool)

(declare-fun e!1554479 () Bool)

(declare-fun e!1554480 () Bool)

(assert (=> b!2448133 (= e!1554479 e!1554480)))

(declare-fun res!1038842 () Bool)

(assert (=> b!2448133 (= res!1038842 (matchRSpec!1044 (regOne!14907 (regOne!14907 r!13927)) s!9460))))

(assert (=> b!2448133 (=> res!1038842 e!1554480)))

(declare-fun b!2448134 () Bool)

(declare-fun e!1554478 () Bool)

(declare-fun e!1554483 () Bool)

(assert (=> b!2448134 (= e!1554478 e!1554483)))

(declare-fun res!1038841 () Bool)

(assert (=> b!2448134 (= res!1038841 (not ((_ is EmptyLang!7197) (regOne!14907 r!13927))))))

(assert (=> b!2448134 (=> (not res!1038841) (not e!1554483))))

(declare-fun b!2448135 () Bool)

(declare-fun e!1554477 () Bool)

(assert (=> b!2448135 (= e!1554479 e!1554477)))

(declare-fun c!390740 () Bool)

(assert (=> b!2448135 (= c!390740 ((_ is Star!7197) (regOne!14907 r!13927)))))

(declare-fun b!2448136 () Bool)

(assert (=> b!2448136 (= e!1554480 (matchRSpec!1044 (regTwo!14907 (regOne!14907 r!13927)) s!9460))))

(declare-fun bm!150316 () Bool)

(declare-fun call!150321 () Bool)

(assert (=> bm!150316 (= call!150321 (Exists!1231 (ite c!390740 lambda!92778 lambda!92779)))))

(assert (=> b!2448137 (= e!1554477 call!150321)))

(declare-fun b!2448138 () Bool)

(declare-fun res!1038843 () Bool)

(declare-fun e!1554481 () Bool)

(assert (=> b!2448138 (=> res!1038843 e!1554481)))

(declare-fun call!150322 () Bool)

(assert (=> b!2448138 (= res!1038843 call!150322)))

(assert (=> b!2448138 (= e!1554477 e!1554481)))

(declare-fun b!2448139 () Bool)

(assert (=> b!2448139 (= e!1554478 call!150322)))

(declare-fun d!706203 () Bool)

(declare-fun c!390742 () Bool)

(assert (=> d!706203 (= c!390742 ((_ is EmptyExpr!7197) (regOne!14907 r!13927)))))

(assert (=> d!706203 (= (matchRSpec!1044 (regOne!14907 r!13927) s!9460) e!1554478)))

(declare-fun bm!150317 () Bool)

(assert (=> bm!150317 (= call!150322 (isEmpty!16569 s!9460))))

(assert (=> b!2448140 (= e!1554481 call!150321)))

(declare-fun b!2448141 () Bool)

(declare-fun e!1554482 () Bool)

(assert (=> b!2448141 (= e!1554482 (= s!9460 (Cons!28533 (c!390559 (regOne!14907 r!13927)) Nil!28533)))))

(declare-fun b!2448142 () Bool)

(declare-fun c!390741 () Bool)

(assert (=> b!2448142 (= c!390741 ((_ is ElementMatch!7197) (regOne!14907 r!13927)))))

(assert (=> b!2448142 (= e!1554483 e!1554482)))

(declare-fun b!2448143 () Bool)

(declare-fun c!390739 () Bool)

(assert (=> b!2448143 (= c!390739 ((_ is Union!7197) (regOne!14907 r!13927)))))

(assert (=> b!2448143 (= e!1554482 e!1554479)))

(assert (= (and d!706203 c!390742) b!2448139))

(assert (= (and d!706203 (not c!390742)) b!2448134))

(assert (= (and b!2448134 res!1038841) b!2448142))

(assert (= (and b!2448142 c!390741) b!2448141))

(assert (= (and b!2448142 (not c!390741)) b!2448143))

(assert (= (and b!2448143 c!390739) b!2448133))

(assert (= (and b!2448143 (not c!390739)) b!2448135))

(assert (= (and b!2448133 (not res!1038842)) b!2448136))

(assert (= (and b!2448135 c!390740) b!2448138))

(assert (= (and b!2448135 (not c!390740)) b!2448137))

(assert (= (and b!2448138 (not res!1038843)) b!2448140))

(assert (= (or b!2448140 b!2448137) bm!150316))

(assert (= (or b!2448139 b!2448138) bm!150317))

(declare-fun m!2823543 () Bool)

(assert (=> b!2448133 m!2823543))

(declare-fun m!2823545 () Bool)

(assert (=> b!2448136 m!2823545))

(declare-fun m!2823547 () Bool)

(assert (=> bm!150316 m!2823547))

(assert (=> bm!150317 m!2822987))

(assert (=> b!2447538 d!706203))

(assert (=> b!2447589 d!706193))

(assert (=> d!706033 d!706031))

(assert (=> d!706033 d!706029))

(declare-fun d!706205 () Bool)

(assert (=> d!706205 (= (matchR!3312 r!13927 s!9460) (matchRSpec!1044 r!13927 s!9460))))

(assert (=> d!706205 true))

(declare-fun _$88!3292 () Unit!41849)

(assert (=> d!706205 (= (choose!14521 r!13927 s!9460) _$88!3292)))

(declare-fun bs!465487 () Bool)

(assert (= bs!465487 d!706205))

(assert (=> bs!465487 m!2822991))

(assert (=> bs!465487 m!2822989))

(assert (=> d!706033 d!706205))

(assert (=> d!706033 d!706169))

(assert (=> bm!150252 d!706003))

(declare-fun d!706207 () Bool)

(declare-fun choose!14525 (Int) Bool)

(assert (=> d!706207 (= (Exists!1231 (ite c!390634 lambda!92770 lambda!92771)) (choose!14525 (ite c!390634 lambda!92770 lambda!92771)))))

(declare-fun bs!465488 () Bool)

(assert (= bs!465488 d!706207))

(declare-fun m!2823549 () Bool)

(assert (=> bs!465488 m!2823549))

(assert (=> bm!150251 d!706207))

(assert (=> b!2447593 d!706199))

(assert (=> b!2447593 d!706201))

(declare-fun bs!465489 () Bool)

(declare-fun b!2448151 () Bool)

(assert (= bs!465489 (and b!2448151 b!2447545)))

(declare-fun lambda!92780 () Int)

(assert (=> bs!465489 (= (and (= (reg!7526 (regTwo!14907 r!13927)) (reg!7526 r!13927)) (= (regTwo!14907 r!13927) r!13927)) (= lambda!92780 lambda!92770))))

(declare-fun bs!465490 () Bool)

(assert (= bs!465490 (and b!2448151 b!2447542)))

(assert (=> bs!465490 (not (= lambda!92780 lambda!92771))))

(declare-fun bs!465491 () Bool)

(assert (= bs!465491 (and b!2448151 b!2448140)))

(assert (=> bs!465491 (= (and (= (reg!7526 (regTwo!14907 r!13927)) (reg!7526 (regOne!14907 r!13927))) (= (regTwo!14907 r!13927) (regOne!14907 r!13927))) (= lambda!92780 lambda!92778))))

(declare-fun bs!465492 () Bool)

(assert (= bs!465492 (and b!2448151 b!2448137)))

(assert (=> bs!465492 (not (= lambda!92780 lambda!92779))))

(assert (=> b!2448151 true))

(assert (=> b!2448151 true))

(declare-fun bs!465493 () Bool)

(declare-fun b!2448148 () Bool)

(assert (= bs!465493 (and b!2448148 b!2448137)))

(declare-fun lambda!92781 () Int)

(assert (=> bs!465493 (= (and (= (regOne!14906 (regTwo!14907 r!13927)) (regOne!14906 (regOne!14907 r!13927))) (= (regTwo!14906 (regTwo!14907 r!13927)) (regTwo!14906 (regOne!14907 r!13927)))) (= lambda!92781 lambda!92779))))

(declare-fun bs!465494 () Bool)

(assert (= bs!465494 (and b!2448148 b!2447545)))

(assert (=> bs!465494 (not (= lambda!92781 lambda!92770))))

(declare-fun bs!465495 () Bool)

(assert (= bs!465495 (and b!2448148 b!2447542)))

(assert (=> bs!465495 (= (and (= (regOne!14906 (regTwo!14907 r!13927)) (regOne!14906 r!13927)) (= (regTwo!14906 (regTwo!14907 r!13927)) (regTwo!14906 r!13927))) (= lambda!92781 lambda!92771))))

(declare-fun bs!465496 () Bool)

(assert (= bs!465496 (and b!2448148 b!2448151)))

(assert (=> bs!465496 (not (= lambda!92781 lambda!92780))))

(declare-fun bs!465497 () Bool)

(assert (= bs!465497 (and b!2448148 b!2448140)))

(assert (=> bs!465497 (not (= lambda!92781 lambda!92778))))

(assert (=> b!2448148 true))

(assert (=> b!2448148 true))

(declare-fun b!2448144 () Bool)

(declare-fun e!1554486 () Bool)

(declare-fun e!1554487 () Bool)

(assert (=> b!2448144 (= e!1554486 e!1554487)))

(declare-fun res!1038845 () Bool)

(assert (=> b!2448144 (= res!1038845 (matchRSpec!1044 (regOne!14907 (regTwo!14907 r!13927)) s!9460))))

(assert (=> b!2448144 (=> res!1038845 e!1554487)))

(declare-fun b!2448145 () Bool)

(declare-fun e!1554485 () Bool)

(declare-fun e!1554490 () Bool)

(assert (=> b!2448145 (= e!1554485 e!1554490)))

(declare-fun res!1038844 () Bool)

(assert (=> b!2448145 (= res!1038844 (not ((_ is EmptyLang!7197) (regTwo!14907 r!13927))))))

(assert (=> b!2448145 (=> (not res!1038844) (not e!1554490))))

(declare-fun b!2448146 () Bool)

(declare-fun e!1554484 () Bool)

(assert (=> b!2448146 (= e!1554486 e!1554484)))

(declare-fun c!390744 () Bool)

(assert (=> b!2448146 (= c!390744 ((_ is Star!7197) (regTwo!14907 r!13927)))))

(declare-fun b!2448147 () Bool)

(assert (=> b!2448147 (= e!1554487 (matchRSpec!1044 (regTwo!14907 (regTwo!14907 r!13927)) s!9460))))

(declare-fun call!150323 () Bool)

(declare-fun bm!150318 () Bool)

(assert (=> bm!150318 (= call!150323 (Exists!1231 (ite c!390744 lambda!92780 lambda!92781)))))

(assert (=> b!2448148 (= e!1554484 call!150323)))

(declare-fun b!2448149 () Bool)

(declare-fun res!1038846 () Bool)

(declare-fun e!1554488 () Bool)

(assert (=> b!2448149 (=> res!1038846 e!1554488)))

(declare-fun call!150324 () Bool)

(assert (=> b!2448149 (= res!1038846 call!150324)))

(assert (=> b!2448149 (= e!1554484 e!1554488)))

(declare-fun b!2448150 () Bool)

(assert (=> b!2448150 (= e!1554485 call!150324)))

(declare-fun d!706209 () Bool)

(declare-fun c!390746 () Bool)

(assert (=> d!706209 (= c!390746 ((_ is EmptyExpr!7197) (regTwo!14907 r!13927)))))

(assert (=> d!706209 (= (matchRSpec!1044 (regTwo!14907 r!13927) s!9460) e!1554485)))

(declare-fun bm!150319 () Bool)

(assert (=> bm!150319 (= call!150324 (isEmpty!16569 s!9460))))

(assert (=> b!2448151 (= e!1554488 call!150323)))

(declare-fun b!2448152 () Bool)

(declare-fun e!1554489 () Bool)

(assert (=> b!2448152 (= e!1554489 (= s!9460 (Cons!28533 (c!390559 (regTwo!14907 r!13927)) Nil!28533)))))

(declare-fun b!2448153 () Bool)

(declare-fun c!390745 () Bool)

(assert (=> b!2448153 (= c!390745 ((_ is ElementMatch!7197) (regTwo!14907 r!13927)))))

(assert (=> b!2448153 (= e!1554490 e!1554489)))

(declare-fun b!2448154 () Bool)

(declare-fun c!390743 () Bool)

(assert (=> b!2448154 (= c!390743 ((_ is Union!7197) (regTwo!14907 r!13927)))))

(assert (=> b!2448154 (= e!1554489 e!1554486)))

(assert (= (and d!706209 c!390746) b!2448150))

(assert (= (and d!706209 (not c!390746)) b!2448145))

(assert (= (and b!2448145 res!1038844) b!2448153))

(assert (= (and b!2448153 c!390745) b!2448152))

(assert (= (and b!2448153 (not c!390745)) b!2448154))

(assert (= (and b!2448154 c!390743) b!2448144))

(assert (= (and b!2448154 (not c!390743)) b!2448146))

(assert (= (and b!2448144 (not res!1038845)) b!2448147))

(assert (= (and b!2448146 c!390744) b!2448149))

(assert (= (and b!2448146 (not c!390744)) b!2448148))

(assert (= (and b!2448149 (not res!1038846)) b!2448151))

(assert (= (or b!2448151 b!2448148) bm!150318))

(assert (= (or b!2448150 b!2448149) bm!150319))

(declare-fun m!2823551 () Bool)

(assert (=> b!2448144 m!2823551))

(declare-fun m!2823553 () Bool)

(assert (=> b!2448147 m!2823553))

(declare-fun m!2823555 () Bool)

(assert (=> bm!150318 m!2823555))

(assert (=> bm!150319 m!2822987))

(assert (=> b!2447541 d!706209))

(declare-fun b!2448155 () Bool)

(declare-fun res!1038848 () Bool)

(declare-fun e!1554492 () Bool)

(assert (=> b!2448155 (=> res!1038848 e!1554492)))

(declare-fun e!1554497 () Bool)

(assert (=> b!2448155 (= res!1038848 e!1554497)))

(declare-fun res!1038851 () Bool)

(assert (=> b!2448155 (=> (not res!1038851) (not e!1554497))))

(declare-fun lt!879606 () Bool)

(assert (=> b!2448155 (= res!1038851 lt!879606)))

(declare-fun b!2448156 () Bool)

(declare-fun res!1038847 () Bool)

(assert (=> b!2448156 (=> (not res!1038847) (not e!1554497))))

(declare-fun call!150325 () Bool)

(assert (=> b!2448156 (= res!1038847 (not call!150325))))

(declare-fun b!2448157 () Bool)

(declare-fun e!1554491 () Bool)

(assert (=> b!2448157 (= e!1554491 (= lt!879606 call!150325))))

(declare-fun b!2448158 () Bool)

(declare-fun res!1038849 () Bool)

(assert (=> b!2448158 (=> res!1038849 e!1554492)))

(assert (=> b!2448158 (= res!1038849 (not ((_ is ElementMatch!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460)))))))

(declare-fun e!1554496 () Bool)

(assert (=> b!2448158 (= e!1554496 e!1554492)))

(declare-fun b!2448159 () Bool)

(declare-fun e!1554494 () Bool)

(assert (=> b!2448159 (= e!1554494 (not (= (head!5570 (tail!3843 s!9460)) (c!390559 (derivativeStep!1859 r!13927 (head!5570 s!9460))))))))

(declare-fun bm!150320 () Bool)

(assert (=> bm!150320 (= call!150325 (isEmpty!16569 (tail!3843 s!9460)))))

(declare-fun b!2448160 () Bool)

(declare-fun e!1554495 () Bool)

(assert (=> b!2448160 (= e!1554492 e!1554495)))

(declare-fun res!1038852 () Bool)

(assert (=> b!2448160 (=> (not res!1038852) (not e!1554495))))

(assert (=> b!2448160 (= res!1038852 (not lt!879606))))

(declare-fun b!2448161 () Bool)

(declare-fun res!1038850 () Bool)

(assert (=> b!2448161 (=> (not res!1038850) (not e!1554497))))

(assert (=> b!2448161 (= res!1038850 (isEmpty!16569 (tail!3843 (tail!3843 s!9460))))))

(declare-fun d!706211 () Bool)

(assert (=> d!706211 e!1554491))

(declare-fun c!390748 () Bool)

(assert (=> d!706211 (= c!390748 ((_ is EmptyExpr!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(declare-fun e!1554493 () Bool)

(assert (=> d!706211 (= lt!879606 e!1554493)))

(declare-fun c!390747 () Bool)

(assert (=> d!706211 (= c!390747 (isEmpty!16569 (tail!3843 s!9460)))))

(assert (=> d!706211 (validRegex!2897 (derivativeStep!1859 r!13927 (head!5570 s!9460)))))

(assert (=> d!706211 (= (matchR!3312 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (tail!3843 s!9460)) lt!879606)))

(declare-fun b!2448162 () Bool)

(assert (=> b!2448162 (= e!1554495 e!1554494)))

(declare-fun res!1038854 () Bool)

(assert (=> b!2448162 (=> res!1038854 e!1554494)))

(assert (=> b!2448162 (= res!1038854 call!150325)))

(declare-fun b!2448163 () Bool)

(assert (=> b!2448163 (= e!1554497 (= (head!5570 (tail!3843 s!9460)) (c!390559 (derivativeStep!1859 r!13927 (head!5570 s!9460)))))))

(declare-fun b!2448164 () Bool)

(assert (=> b!2448164 (= e!1554496 (not lt!879606))))

(declare-fun b!2448165 () Bool)

(assert (=> b!2448165 (= e!1554491 e!1554496)))

(declare-fun c!390749 () Bool)

(assert (=> b!2448165 (= c!390749 ((_ is EmptyLang!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(declare-fun b!2448166 () Bool)

(assert (=> b!2448166 (= e!1554493 (nullable!2205 (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(declare-fun b!2448167 () Bool)

(declare-fun res!1038853 () Bool)

(assert (=> b!2448167 (=> res!1038853 e!1554494)))

(assert (=> b!2448167 (= res!1038853 (not (isEmpty!16569 (tail!3843 (tail!3843 s!9460)))))))

(declare-fun b!2448168 () Bool)

(assert (=> b!2448168 (= e!1554493 (matchR!3312 (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460))) (tail!3843 (tail!3843 s!9460))))))

(assert (= (and d!706211 c!390747) b!2448166))

(assert (= (and d!706211 (not c!390747)) b!2448168))

(assert (= (and d!706211 c!390748) b!2448157))

(assert (= (and d!706211 (not c!390748)) b!2448165))

(assert (= (and b!2448165 c!390749) b!2448164))

(assert (= (and b!2448165 (not c!390749)) b!2448158))

(assert (= (and b!2448158 (not res!1038849)) b!2448155))

(assert (= (and b!2448155 res!1038851) b!2448156))

(assert (= (and b!2448156 res!1038847) b!2448161))

(assert (= (and b!2448161 res!1038850) b!2448163))

(assert (= (and b!2448155 (not res!1038848)) b!2448160))

(assert (= (and b!2448160 res!1038852) b!2448162))

(assert (= (and b!2448162 (not res!1038854)) b!2448167))

(assert (= (and b!2448167 (not res!1038853)) b!2448159))

(assert (= (or b!2448157 b!2448156 b!2448162) bm!150320))

(assert (=> b!2448159 m!2823157))

(declare-fun m!2823557 () Bool)

(assert (=> b!2448159 m!2823557))

(assert (=> bm!150320 m!2823157))

(assert (=> bm!150320 m!2823159))

(assert (=> b!2448166 m!2823163))

(declare-fun m!2823559 () Bool)

(assert (=> b!2448166 m!2823559))

(assert (=> b!2448161 m!2823157))

(declare-fun m!2823561 () Bool)

(assert (=> b!2448161 m!2823561))

(assert (=> b!2448161 m!2823561))

(declare-fun m!2823563 () Bool)

(assert (=> b!2448161 m!2823563))

(assert (=> b!2448167 m!2823157))

(assert (=> b!2448167 m!2823561))

(assert (=> b!2448167 m!2823561))

(assert (=> b!2448167 m!2823563))

(assert (=> b!2448163 m!2823157))

(assert (=> b!2448163 m!2823557))

(assert (=> d!706211 m!2823157))

(assert (=> d!706211 m!2823159))

(assert (=> d!706211 m!2823163))

(declare-fun m!2823565 () Bool)

(assert (=> d!706211 m!2823565))

(assert (=> b!2448168 m!2823157))

(assert (=> b!2448168 m!2823557))

(assert (=> b!2448168 m!2823163))

(assert (=> b!2448168 m!2823557))

(declare-fun m!2823567 () Bool)

(assert (=> b!2448168 m!2823567))

(assert (=> b!2448168 m!2823157))

(assert (=> b!2448168 m!2823561))

(assert (=> b!2448168 m!2823567))

(assert (=> b!2448168 m!2823561))

(declare-fun m!2823569 () Bool)

(assert (=> b!2448168 m!2823569))

(assert (=> b!2447594 d!706211))

(declare-fun b!2448189 () Bool)

(declare-fun e!1554512 () Regex!7197)

(assert (=> b!2448189 (= e!1554512 EmptyLang!7197)))

(declare-fun b!2448190 () Bool)

(declare-fun e!1554510 () Regex!7197)

(declare-fun call!150337 () Regex!7197)

(assert (=> b!2448190 (= e!1554510 (Concat!11833 call!150337 r!13927))))

(declare-fun b!2448191 () Bool)

(declare-fun e!1554508 () Regex!7197)

(assert (=> b!2448191 (= e!1554508 (ite (= (head!5570 s!9460) (c!390559 r!13927)) EmptyExpr!7197 EmptyLang!7197))))

(declare-fun b!2448192 () Bool)

(declare-fun c!390763 () Bool)

(assert (=> b!2448192 (= c!390763 ((_ is Union!7197) r!13927))))

(declare-fun e!1554511 () Regex!7197)

(assert (=> b!2448192 (= e!1554508 e!1554511)))

(declare-fun d!706213 () Bool)

(declare-fun lt!879609 () Regex!7197)

(assert (=> d!706213 (validRegex!2897 lt!879609)))

(assert (=> d!706213 (= lt!879609 e!1554512)))

(declare-fun c!390760 () Bool)

(assert (=> d!706213 (= c!390760 (or ((_ is EmptyExpr!7197) r!13927) ((_ is EmptyLang!7197) r!13927)))))

(assert (=> d!706213 (validRegex!2897 r!13927)))

(assert (=> d!706213 (= (derivativeStep!1859 r!13927 (head!5570 s!9460)) lt!879609)))

(declare-fun bm!150329 () Bool)

(declare-fun call!150335 () Regex!7197)

(assert (=> bm!150329 (= call!150335 (derivativeStep!1859 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927)) (head!5570 s!9460)))))

(declare-fun b!2448193 () Bool)

(declare-fun call!150334 () Regex!7197)

(assert (=> b!2448193 (= e!1554511 (Union!7197 call!150334 call!150335))))

(declare-fun b!2448194 () Bool)

(declare-fun c!390762 () Bool)

(assert (=> b!2448194 (= c!390762 (nullable!2205 (regOne!14906 r!13927)))))

(declare-fun e!1554509 () Regex!7197)

(assert (=> b!2448194 (= e!1554510 e!1554509)))

(declare-fun b!2448195 () Bool)

(assert (=> b!2448195 (= e!1554512 e!1554508)))

(declare-fun c!390761 () Bool)

(assert (=> b!2448195 (= c!390761 ((_ is ElementMatch!7197) r!13927))))

(declare-fun bm!150330 () Bool)

(declare-fun call!150336 () Regex!7197)

(assert (=> bm!150330 (= call!150336 call!150337)))

(declare-fun c!390764 () Bool)

(declare-fun bm!150331 () Bool)

(assert (=> bm!150331 (= call!150334 (derivativeStep!1859 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927)))) (head!5570 s!9460)))))

(declare-fun bm!150332 () Bool)

(assert (=> bm!150332 (= call!150337 call!150334)))

(declare-fun b!2448196 () Bool)

(assert (=> b!2448196 (= e!1554511 e!1554510)))

(assert (=> b!2448196 (= c!390764 ((_ is Star!7197) r!13927))))

(declare-fun b!2448197 () Bool)

(assert (=> b!2448197 (= e!1554509 (Union!7197 (Concat!11833 call!150336 (regTwo!14906 r!13927)) EmptyLang!7197))))

(declare-fun b!2448198 () Bool)

(assert (=> b!2448198 (= e!1554509 (Union!7197 (Concat!11833 call!150335 (regTwo!14906 r!13927)) call!150336))))

(assert (= (and d!706213 c!390760) b!2448189))

(assert (= (and d!706213 (not c!390760)) b!2448195))

(assert (= (and b!2448195 c!390761) b!2448191))

(assert (= (and b!2448195 (not c!390761)) b!2448192))

(assert (= (and b!2448192 c!390763) b!2448193))

(assert (= (and b!2448192 (not c!390763)) b!2448196))

(assert (= (and b!2448196 c!390764) b!2448190))

(assert (= (and b!2448196 (not c!390764)) b!2448194))

(assert (= (and b!2448194 c!390762) b!2448198))

(assert (= (and b!2448194 (not c!390762)) b!2448197))

(assert (= (or b!2448198 b!2448197) bm!150330))

(assert (= (or b!2448190 bm!150330) bm!150332))

(assert (= (or b!2448193 bm!150332) bm!150331))

(assert (= (or b!2448193 b!2448198) bm!150329))

(declare-fun m!2823571 () Bool)

(assert (=> d!706213 m!2823571))

(assert (=> d!706213 m!2823161))

(assert (=> bm!150329 m!2823153))

(declare-fun m!2823573 () Bool)

(assert (=> bm!150329 m!2823573))

(declare-fun m!2823575 () Bool)

(assert (=> b!2448194 m!2823575))

(assert (=> bm!150331 m!2823153))

(declare-fun m!2823577 () Bool)

(assert (=> bm!150331 m!2823577))

(assert (=> b!2447594 d!706213))

(assert (=> b!2447594 d!706193))

(assert (=> b!2447594 d!706201))

(assert (=> d!706007 d!706147))

(declare-fun b!2448199 () Bool)

(declare-fun res!1038856 () Bool)

(declare-fun e!1554514 () Bool)

(assert (=> b!2448199 (=> res!1038856 e!1554514)))

(declare-fun e!1554519 () Bool)

(assert (=> b!2448199 (= res!1038856 e!1554519)))

(declare-fun res!1038859 () Bool)

(assert (=> b!2448199 (=> (not res!1038859) (not e!1554519))))

(declare-fun lt!879610 () Bool)

(assert (=> b!2448199 (= res!1038859 lt!879610)))

(declare-fun b!2448200 () Bool)

(declare-fun res!1038855 () Bool)

(assert (=> b!2448200 (=> (not res!1038855) (not e!1554519))))

(declare-fun call!150338 () Bool)

(assert (=> b!2448200 (= res!1038855 (not call!150338))))

(declare-fun b!2448201 () Bool)

(declare-fun e!1554513 () Bool)

(assert (=> b!2448201 (= e!1554513 (= lt!879610 call!150338))))

(declare-fun b!2448202 () Bool)

(declare-fun res!1038857 () Bool)

(assert (=> b!2448202 (=> res!1038857 e!1554514)))

(assert (=> b!2448202 (= res!1038857 (not ((_ is ElementMatch!7197) (h!33933 l!9164))))))

(declare-fun e!1554518 () Bool)

(assert (=> b!2448202 (= e!1554518 e!1554514)))

(declare-fun b!2448203 () Bool)

(declare-fun e!1554516 () Bool)

(assert (=> b!2448203 (= e!1554516 (not (= (head!5570 Nil!28533) (c!390559 (h!33933 l!9164)))))))

(declare-fun bm!150333 () Bool)

(assert (=> bm!150333 (= call!150338 (isEmpty!16569 Nil!28533))))

(declare-fun b!2448204 () Bool)

(declare-fun e!1554517 () Bool)

(assert (=> b!2448204 (= e!1554514 e!1554517)))

(declare-fun res!1038860 () Bool)

(assert (=> b!2448204 (=> (not res!1038860) (not e!1554517))))

(assert (=> b!2448204 (= res!1038860 (not lt!879610))))

(declare-fun b!2448205 () Bool)

(declare-fun res!1038858 () Bool)

(assert (=> b!2448205 (=> (not res!1038858) (not e!1554519))))

(assert (=> b!2448205 (= res!1038858 (isEmpty!16569 (tail!3843 Nil!28533)))))

(declare-fun d!706215 () Bool)

(assert (=> d!706215 e!1554513))

(declare-fun c!390766 () Bool)

(assert (=> d!706215 (= c!390766 ((_ is EmptyExpr!7197) (h!33933 l!9164)))))

(declare-fun e!1554515 () Bool)

(assert (=> d!706215 (= lt!879610 e!1554515)))

(declare-fun c!390765 () Bool)

(assert (=> d!706215 (= c!390765 (isEmpty!16569 Nil!28533))))

(assert (=> d!706215 (validRegex!2897 (h!33933 l!9164))))

(assert (=> d!706215 (= (matchR!3312 (h!33933 l!9164) Nil!28533) lt!879610)))

(declare-fun b!2448206 () Bool)

(assert (=> b!2448206 (= e!1554517 e!1554516)))

(declare-fun res!1038862 () Bool)

(assert (=> b!2448206 (=> res!1038862 e!1554516)))

(assert (=> b!2448206 (= res!1038862 call!150338)))

(declare-fun b!2448207 () Bool)

(assert (=> b!2448207 (= e!1554519 (= (head!5570 Nil!28533) (c!390559 (h!33933 l!9164))))))

(declare-fun b!2448208 () Bool)

(assert (=> b!2448208 (= e!1554518 (not lt!879610))))

(declare-fun b!2448209 () Bool)

(assert (=> b!2448209 (= e!1554513 e!1554518)))

(declare-fun c!390767 () Bool)

(assert (=> b!2448209 (= c!390767 ((_ is EmptyLang!7197) (h!33933 l!9164)))))

(declare-fun b!2448210 () Bool)

(assert (=> b!2448210 (= e!1554515 (nullable!2205 (h!33933 l!9164)))))

(declare-fun b!2448211 () Bool)

(declare-fun res!1038861 () Bool)

(assert (=> b!2448211 (=> res!1038861 e!1554516)))

(assert (=> b!2448211 (= res!1038861 (not (isEmpty!16569 (tail!3843 Nil!28533))))))

(declare-fun b!2448212 () Bool)

(assert (=> b!2448212 (= e!1554515 (matchR!3312 (derivativeStep!1859 (h!33933 l!9164) (head!5570 Nil!28533)) (tail!3843 Nil!28533)))))

(assert (= (and d!706215 c!390765) b!2448210))

(assert (= (and d!706215 (not c!390765)) b!2448212))

(assert (= (and d!706215 c!390766) b!2448201))

(assert (= (and d!706215 (not c!390766)) b!2448209))

(assert (= (and b!2448209 c!390767) b!2448208))

(assert (= (and b!2448209 (not c!390767)) b!2448202))

(assert (= (and b!2448202 (not res!1038857)) b!2448199))

(assert (= (and b!2448199 res!1038859) b!2448200))

(assert (= (and b!2448200 res!1038855) b!2448205))

(assert (= (and b!2448205 res!1038858) b!2448207))

(assert (= (and b!2448199 (not res!1038856)) b!2448204))

(assert (= (and b!2448204 res!1038860) b!2448206))

(assert (= (and b!2448206 (not res!1038862)) b!2448211))

(assert (= (and b!2448211 (not res!1038861)) b!2448203))

(assert (= (or b!2448201 b!2448200 b!2448206) bm!150333))

(declare-fun m!2823579 () Bool)

(assert (=> b!2448203 m!2823579))

(declare-fun m!2823581 () Bool)

(assert (=> bm!150333 m!2823581))

(assert (=> b!2448210 m!2823497))

(declare-fun m!2823583 () Bool)

(assert (=> b!2448205 m!2823583))

(assert (=> b!2448205 m!2823583))

(declare-fun m!2823585 () Bool)

(assert (=> b!2448205 m!2823585))

(assert (=> b!2448211 m!2823583))

(assert (=> b!2448211 m!2823583))

(assert (=> b!2448211 m!2823585))

(assert (=> b!2448207 m!2823579))

(assert (=> d!706215 m!2823581))

(assert (=> d!706215 m!2823055))

(assert (=> b!2448212 m!2823579))

(assert (=> b!2448212 m!2823579))

(declare-fun m!2823587 () Bool)

(assert (=> b!2448212 m!2823587))

(assert (=> b!2448212 m!2823583))

(assert (=> b!2448212 m!2823587))

(assert (=> b!2448212 m!2823583))

(declare-fun m!2823589 () Bool)

(assert (=> b!2448212 m!2823589))

(assert (=> d!706007 d!706215))

(assert (=> d!706007 d!706183))

(declare-fun e!1554520 () Bool)

(assert (=> b!2447614 (= tp!777446 e!1554520)))

(declare-fun b!2448215 () Bool)

(declare-fun tp!777646 () Bool)

(assert (=> b!2448215 (= e!1554520 tp!777646)))

(declare-fun b!2448214 () Bool)

(declare-fun tp!777642 () Bool)

(declare-fun tp!777645 () Bool)

(assert (=> b!2448214 (= e!1554520 (and tp!777642 tp!777645))))

(declare-fun b!2448216 () Bool)

(declare-fun tp!777643 () Bool)

(declare-fun tp!777644 () Bool)

(assert (=> b!2448216 (= e!1554520 (and tp!777643 tp!777644))))

(declare-fun b!2448213 () Bool)

(assert (=> b!2448213 (= e!1554520 tp_is_empty!11807)))

(assert (= (and b!2447614 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14907 r!13927)))) b!2448213))

(assert (= (and b!2447614 ((_ is Concat!11833) (regOne!14907 (regOne!14907 r!13927)))) b!2448214))

(assert (= (and b!2447614 ((_ is Star!7197) (regOne!14907 (regOne!14907 r!13927)))) b!2448215))

(assert (= (and b!2447614 ((_ is Union!7197) (regOne!14907 (regOne!14907 r!13927)))) b!2448216))

(declare-fun e!1554521 () Bool)

(assert (=> b!2447614 (= tp!777447 e!1554521)))

(declare-fun b!2448219 () Bool)

(declare-fun tp!777651 () Bool)

(assert (=> b!2448219 (= e!1554521 tp!777651)))

(declare-fun b!2448218 () Bool)

(declare-fun tp!777647 () Bool)

(declare-fun tp!777650 () Bool)

(assert (=> b!2448218 (= e!1554521 (and tp!777647 tp!777650))))

(declare-fun b!2448220 () Bool)

(declare-fun tp!777648 () Bool)

(declare-fun tp!777649 () Bool)

(assert (=> b!2448220 (= e!1554521 (and tp!777648 tp!777649))))

(declare-fun b!2448217 () Bool)

(assert (=> b!2448217 (= e!1554521 tp_is_empty!11807)))

(assert (= (and b!2447614 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14907 r!13927)))) b!2448217))

(assert (= (and b!2447614 ((_ is Concat!11833) (regTwo!14907 (regOne!14907 r!13927)))) b!2448218))

(assert (= (and b!2447614 ((_ is Star!7197) (regTwo!14907 (regOne!14907 r!13927)))) b!2448219))

(assert (= (and b!2447614 ((_ is Union!7197) (regTwo!14907 (regOne!14907 r!13927)))) b!2448220))

(declare-fun e!1554522 () Bool)

(assert (=> b!2447632 (= tp!777467 e!1554522)))

(declare-fun b!2448223 () Bool)

(declare-fun tp!777656 () Bool)

(assert (=> b!2448223 (= e!1554522 tp!777656)))

(declare-fun b!2448222 () Bool)

(declare-fun tp!777652 () Bool)

(declare-fun tp!777655 () Bool)

(assert (=> b!2448222 (= e!1554522 (and tp!777652 tp!777655))))

(declare-fun b!2448224 () Bool)

(declare-fun tp!777653 () Bool)

(declare-fun tp!777654 () Bool)

(assert (=> b!2448224 (= e!1554522 (and tp!777653 tp!777654))))

(declare-fun b!2448221 () Bool)

(assert (=> b!2448221 (= e!1554522 tp_is_empty!11807)))

(assert (= (and b!2447632 ((_ is ElementMatch!7197) (h!33933 (t!208607 l!9164)))) b!2448221))

(assert (= (and b!2447632 ((_ is Concat!11833) (h!33933 (t!208607 l!9164)))) b!2448222))

(assert (= (and b!2447632 ((_ is Star!7197) (h!33933 (t!208607 l!9164)))) b!2448223))

(assert (= (and b!2447632 ((_ is Union!7197) (h!33933 (t!208607 l!9164)))) b!2448224))

(declare-fun b!2448225 () Bool)

(declare-fun e!1554523 () Bool)

(declare-fun tp!777657 () Bool)

(declare-fun tp!777658 () Bool)

(assert (=> b!2448225 (= e!1554523 (and tp!777657 tp!777658))))

(assert (=> b!2447632 (= tp!777468 e!1554523)))

(assert (= (and b!2447632 ((_ is Cons!28532) (t!208607 (t!208607 l!9164)))) b!2448225))

(declare-fun e!1554524 () Bool)

(assert (=> b!2447626 (= tp!777462 e!1554524)))

(declare-fun b!2448228 () Bool)

(declare-fun tp!777663 () Bool)

(assert (=> b!2448228 (= e!1554524 tp!777663)))

(declare-fun b!2448227 () Bool)

(declare-fun tp!777659 () Bool)

(declare-fun tp!777662 () Bool)

(assert (=> b!2448227 (= e!1554524 (and tp!777659 tp!777662))))

(declare-fun b!2448229 () Bool)

(declare-fun tp!777660 () Bool)

(declare-fun tp!777661 () Bool)

(assert (=> b!2448229 (= e!1554524 (and tp!777660 tp!777661))))

(declare-fun b!2448226 () Bool)

(assert (=> b!2448226 (= e!1554524 tp_is_empty!11807)))

(assert (= (and b!2447626 ((_ is ElementMatch!7197) (reg!7526 (h!33933 l!9164)))) b!2448226))

(assert (= (and b!2447626 ((_ is Concat!11833) (reg!7526 (h!33933 l!9164)))) b!2448227))

(assert (= (and b!2447626 ((_ is Star!7197) (reg!7526 (h!33933 l!9164)))) b!2448228))

(assert (= (and b!2447626 ((_ is Union!7197) (reg!7526 (h!33933 l!9164)))) b!2448229))

(declare-fun e!1554525 () Bool)

(assert (=> b!2447625 (= tp!777458 e!1554525)))

(declare-fun b!2448232 () Bool)

(declare-fun tp!777668 () Bool)

(assert (=> b!2448232 (= e!1554525 tp!777668)))

(declare-fun b!2448231 () Bool)

(declare-fun tp!777664 () Bool)

(declare-fun tp!777667 () Bool)

(assert (=> b!2448231 (= e!1554525 (and tp!777664 tp!777667))))

(declare-fun b!2448233 () Bool)

(declare-fun tp!777665 () Bool)

(declare-fun tp!777666 () Bool)

(assert (=> b!2448233 (= e!1554525 (and tp!777665 tp!777666))))

(declare-fun b!2448230 () Bool)

(assert (=> b!2448230 (= e!1554525 tp_is_empty!11807)))

(assert (= (and b!2447625 ((_ is ElementMatch!7197) (regOne!14906 (h!33933 l!9164)))) b!2448230))

(assert (= (and b!2447625 ((_ is Concat!11833) (regOne!14906 (h!33933 l!9164)))) b!2448231))

(assert (= (and b!2447625 ((_ is Star!7197) (regOne!14906 (h!33933 l!9164)))) b!2448232))

(assert (= (and b!2447625 ((_ is Union!7197) (regOne!14906 (h!33933 l!9164)))) b!2448233))

(declare-fun e!1554526 () Bool)

(assert (=> b!2447625 (= tp!777461 e!1554526)))

(declare-fun b!2448236 () Bool)

(declare-fun tp!777673 () Bool)

(assert (=> b!2448236 (= e!1554526 tp!777673)))

(declare-fun b!2448235 () Bool)

(declare-fun tp!777669 () Bool)

(declare-fun tp!777672 () Bool)

(assert (=> b!2448235 (= e!1554526 (and tp!777669 tp!777672))))

(declare-fun b!2448237 () Bool)

(declare-fun tp!777670 () Bool)

(declare-fun tp!777671 () Bool)

(assert (=> b!2448237 (= e!1554526 (and tp!777670 tp!777671))))

(declare-fun b!2448234 () Bool)

(assert (=> b!2448234 (= e!1554526 tp_is_empty!11807)))

(assert (= (and b!2447625 ((_ is ElementMatch!7197) (regTwo!14906 (h!33933 l!9164)))) b!2448234))

(assert (= (and b!2447625 ((_ is Concat!11833) (regTwo!14906 (h!33933 l!9164)))) b!2448235))

(assert (= (and b!2447625 ((_ is Star!7197) (regTwo!14906 (h!33933 l!9164)))) b!2448236))

(assert (= (and b!2447625 ((_ is Union!7197) (regTwo!14906 (h!33933 l!9164)))) b!2448237))

(declare-fun e!1554527 () Bool)

(assert (=> b!2447635 (= tp!777473 e!1554527)))

(declare-fun b!2448240 () Bool)

(declare-fun tp!777678 () Bool)

(assert (=> b!2448240 (= e!1554527 tp!777678)))

(declare-fun b!2448239 () Bool)

(declare-fun tp!777674 () Bool)

(declare-fun tp!777677 () Bool)

(assert (=> b!2448239 (= e!1554527 (and tp!777674 tp!777677))))

(declare-fun b!2448241 () Bool)

(declare-fun tp!777675 () Bool)

(declare-fun tp!777676 () Bool)

(assert (=> b!2448241 (= e!1554527 (and tp!777675 tp!777676))))

(declare-fun b!2448238 () Bool)

(assert (=> b!2448238 (= e!1554527 tp_is_empty!11807)))

(assert (= (and b!2447635 ((_ is ElementMatch!7197) (reg!7526 (regOne!14906 r!13927)))) b!2448238))

(assert (= (and b!2447635 ((_ is Concat!11833) (reg!7526 (regOne!14906 r!13927)))) b!2448239))

(assert (= (and b!2447635 ((_ is Star!7197) (reg!7526 (regOne!14906 r!13927)))) b!2448240))

(assert (= (and b!2447635 ((_ is Union!7197) (reg!7526 (regOne!14906 r!13927)))) b!2448241))

(declare-fun e!1554528 () Bool)

(assert (=> b!2447612 (= tp!777445 e!1554528)))

(declare-fun b!2448244 () Bool)

(declare-fun tp!777683 () Bool)

(assert (=> b!2448244 (= e!1554528 tp!777683)))

(declare-fun b!2448243 () Bool)

(declare-fun tp!777679 () Bool)

(declare-fun tp!777682 () Bool)

(assert (=> b!2448243 (= e!1554528 (and tp!777679 tp!777682))))

(declare-fun b!2448245 () Bool)

(declare-fun tp!777680 () Bool)

(declare-fun tp!777681 () Bool)

(assert (=> b!2448245 (= e!1554528 (and tp!777680 tp!777681))))

(declare-fun b!2448242 () Bool)

(assert (=> b!2448242 (= e!1554528 tp_is_empty!11807)))

(assert (= (and b!2447612 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14907 r!13927)))) b!2448242))

(assert (= (and b!2447612 ((_ is Concat!11833) (regOne!14906 (regOne!14907 r!13927)))) b!2448243))

(assert (= (and b!2447612 ((_ is Star!7197) (regOne!14906 (regOne!14907 r!13927)))) b!2448244))

(assert (= (and b!2447612 ((_ is Union!7197) (regOne!14906 (regOne!14907 r!13927)))) b!2448245))

(declare-fun e!1554529 () Bool)

(assert (=> b!2447612 (= tp!777448 e!1554529)))

(declare-fun b!2448248 () Bool)

(declare-fun tp!777688 () Bool)

(assert (=> b!2448248 (= e!1554529 tp!777688)))

(declare-fun b!2448247 () Bool)

(declare-fun tp!777684 () Bool)

(declare-fun tp!777687 () Bool)

(assert (=> b!2448247 (= e!1554529 (and tp!777684 tp!777687))))

(declare-fun b!2448249 () Bool)

(declare-fun tp!777685 () Bool)

(declare-fun tp!777686 () Bool)

(assert (=> b!2448249 (= e!1554529 (and tp!777685 tp!777686))))

(declare-fun b!2448246 () Bool)

(assert (=> b!2448246 (= e!1554529 tp_is_empty!11807)))

(assert (= (and b!2447612 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14907 r!13927)))) b!2448246))

(assert (= (and b!2447612 ((_ is Concat!11833) (regTwo!14906 (regOne!14907 r!13927)))) b!2448247))

(assert (= (and b!2447612 ((_ is Star!7197) (regTwo!14906 (regOne!14907 r!13927)))) b!2448248))

(assert (= (and b!2447612 ((_ is Union!7197) (regTwo!14906 (regOne!14907 r!13927)))) b!2448249))

(declare-fun e!1554530 () Bool)

(assert (=> b!2447644 (= tp!777480 e!1554530)))

(declare-fun b!2448252 () Bool)

(declare-fun tp!777693 () Bool)

(assert (=> b!2448252 (= e!1554530 tp!777693)))

(declare-fun b!2448251 () Bool)

(declare-fun tp!777689 () Bool)

(declare-fun tp!777692 () Bool)

(assert (=> b!2448251 (= e!1554530 (and tp!777689 tp!777692))))

(declare-fun b!2448253 () Bool)

(declare-fun tp!777690 () Bool)

(declare-fun tp!777691 () Bool)

(assert (=> b!2448253 (= e!1554530 (and tp!777690 tp!777691))))

(declare-fun b!2448250 () Bool)

(assert (=> b!2448250 (= e!1554530 tp_is_empty!11807)))

(assert (= (and b!2447644 ((_ is ElementMatch!7197) (regOne!14907 (reg!7526 r!13927)))) b!2448250))

(assert (= (and b!2447644 ((_ is Concat!11833) (regOne!14907 (reg!7526 r!13927)))) b!2448251))

(assert (= (and b!2447644 ((_ is Star!7197) (regOne!14907 (reg!7526 r!13927)))) b!2448252))

(assert (= (and b!2447644 ((_ is Union!7197) (regOne!14907 (reg!7526 r!13927)))) b!2448253))

(declare-fun e!1554531 () Bool)

(assert (=> b!2447644 (= tp!777481 e!1554531)))

(declare-fun b!2448256 () Bool)

(declare-fun tp!777698 () Bool)

(assert (=> b!2448256 (= e!1554531 tp!777698)))

(declare-fun b!2448255 () Bool)

(declare-fun tp!777694 () Bool)

(declare-fun tp!777697 () Bool)

(assert (=> b!2448255 (= e!1554531 (and tp!777694 tp!777697))))

(declare-fun b!2448257 () Bool)

(declare-fun tp!777695 () Bool)

(declare-fun tp!777696 () Bool)

(assert (=> b!2448257 (= e!1554531 (and tp!777695 tp!777696))))

(declare-fun b!2448254 () Bool)

(assert (=> b!2448254 (= e!1554531 tp_is_empty!11807)))

(assert (= (and b!2447644 ((_ is ElementMatch!7197) (regTwo!14907 (reg!7526 r!13927)))) b!2448254))

(assert (= (and b!2447644 ((_ is Concat!11833) (regTwo!14907 (reg!7526 r!13927)))) b!2448255))

(assert (= (and b!2447644 ((_ is Star!7197) (regTwo!14907 (reg!7526 r!13927)))) b!2448256))

(assert (= (and b!2447644 ((_ is Union!7197) (regTwo!14907 (reg!7526 r!13927)))) b!2448257))

(declare-fun e!1554532 () Bool)

(assert (=> b!2447639 (= tp!777478 e!1554532)))

(declare-fun b!2448260 () Bool)

(declare-fun tp!777703 () Bool)

(assert (=> b!2448260 (= e!1554532 tp!777703)))

(declare-fun b!2448259 () Bool)

(declare-fun tp!777699 () Bool)

(declare-fun tp!777702 () Bool)

(assert (=> b!2448259 (= e!1554532 (and tp!777699 tp!777702))))

(declare-fun b!2448261 () Bool)

(declare-fun tp!777700 () Bool)

(declare-fun tp!777701 () Bool)

(assert (=> b!2448261 (= e!1554532 (and tp!777700 tp!777701))))

(declare-fun b!2448258 () Bool)

(assert (=> b!2448258 (= e!1554532 tp_is_empty!11807)))

(assert (= (and b!2447639 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14906 r!13927)))) b!2448258))

(assert (= (and b!2447639 ((_ is Concat!11833) (reg!7526 (regTwo!14906 r!13927)))) b!2448259))

(assert (= (and b!2447639 ((_ is Star!7197) (reg!7526 (regTwo!14906 r!13927)))) b!2448260))

(assert (= (and b!2447639 ((_ is Union!7197) (reg!7526 (regTwo!14906 r!13927)))) b!2448261))

(declare-fun e!1554533 () Bool)

(assert (=> b!2447616 (= tp!777450 e!1554533)))

(declare-fun b!2448264 () Bool)

(declare-fun tp!777708 () Bool)

(assert (=> b!2448264 (= e!1554533 tp!777708)))

(declare-fun b!2448263 () Bool)

(declare-fun tp!777704 () Bool)

(declare-fun tp!777707 () Bool)

(assert (=> b!2448263 (= e!1554533 (and tp!777704 tp!777707))))

(declare-fun b!2448265 () Bool)

(declare-fun tp!777705 () Bool)

(declare-fun tp!777706 () Bool)

(assert (=> b!2448265 (= e!1554533 (and tp!777705 tp!777706))))

(declare-fun b!2448262 () Bool)

(assert (=> b!2448262 (= e!1554533 tp_is_empty!11807)))

(assert (= (and b!2447616 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14907 r!13927)))) b!2448262))

(assert (= (and b!2447616 ((_ is Concat!11833) (regOne!14906 (regTwo!14907 r!13927)))) b!2448263))

(assert (= (and b!2447616 ((_ is Star!7197) (regOne!14906 (regTwo!14907 r!13927)))) b!2448264))

(assert (= (and b!2447616 ((_ is Union!7197) (regOne!14906 (regTwo!14907 r!13927)))) b!2448265))

(declare-fun e!1554534 () Bool)

(assert (=> b!2447616 (= tp!777453 e!1554534)))

(declare-fun b!2448268 () Bool)

(declare-fun tp!777713 () Bool)

(assert (=> b!2448268 (= e!1554534 tp!777713)))

(declare-fun b!2448267 () Bool)

(declare-fun tp!777709 () Bool)

(declare-fun tp!777712 () Bool)

(assert (=> b!2448267 (= e!1554534 (and tp!777709 tp!777712))))

(declare-fun b!2448269 () Bool)

(declare-fun tp!777710 () Bool)

(declare-fun tp!777711 () Bool)

(assert (=> b!2448269 (= e!1554534 (and tp!777710 tp!777711))))

(declare-fun b!2448266 () Bool)

(assert (=> b!2448266 (= e!1554534 tp_is_empty!11807)))

(assert (= (and b!2447616 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14907 r!13927)))) b!2448266))

(assert (= (and b!2447616 ((_ is Concat!11833) (regTwo!14906 (regTwo!14907 r!13927)))) b!2448267))

(assert (= (and b!2447616 ((_ is Star!7197) (regTwo!14906 (regTwo!14907 r!13927)))) b!2448268))

(assert (= (and b!2447616 ((_ is Union!7197) (regTwo!14906 (regTwo!14907 r!13927)))) b!2448269))

(declare-fun e!1554535 () Bool)

(assert (=> b!2447634 (= tp!777469 e!1554535)))

(declare-fun b!2448272 () Bool)

(declare-fun tp!777718 () Bool)

(assert (=> b!2448272 (= e!1554535 tp!777718)))

(declare-fun b!2448271 () Bool)

(declare-fun tp!777714 () Bool)

(declare-fun tp!777717 () Bool)

(assert (=> b!2448271 (= e!1554535 (and tp!777714 tp!777717))))

(declare-fun b!2448273 () Bool)

(declare-fun tp!777715 () Bool)

(declare-fun tp!777716 () Bool)

(assert (=> b!2448273 (= e!1554535 (and tp!777715 tp!777716))))

(declare-fun b!2448270 () Bool)

(assert (=> b!2448270 (= e!1554535 tp_is_empty!11807)))

(assert (= (and b!2447634 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14906 r!13927)))) b!2448270))

(assert (= (and b!2447634 ((_ is Concat!11833) (regOne!14906 (regOne!14906 r!13927)))) b!2448271))

(assert (= (and b!2447634 ((_ is Star!7197) (regOne!14906 (regOne!14906 r!13927)))) b!2448272))

(assert (= (and b!2447634 ((_ is Union!7197) (regOne!14906 (regOne!14906 r!13927)))) b!2448273))

(declare-fun e!1554536 () Bool)

(assert (=> b!2447634 (= tp!777472 e!1554536)))

(declare-fun b!2448276 () Bool)

(declare-fun tp!777723 () Bool)

(assert (=> b!2448276 (= e!1554536 tp!777723)))

(declare-fun b!2448275 () Bool)

(declare-fun tp!777719 () Bool)

(declare-fun tp!777722 () Bool)

(assert (=> b!2448275 (= e!1554536 (and tp!777719 tp!777722))))

(declare-fun b!2448277 () Bool)

(declare-fun tp!777720 () Bool)

(declare-fun tp!777721 () Bool)

(assert (=> b!2448277 (= e!1554536 (and tp!777720 tp!777721))))

(declare-fun b!2448274 () Bool)

(assert (=> b!2448274 (= e!1554536 tp_is_empty!11807)))

(assert (= (and b!2447634 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14906 r!13927)))) b!2448274))

(assert (= (and b!2447634 ((_ is Concat!11833) (regTwo!14906 (regOne!14906 r!13927)))) b!2448275))

(assert (= (and b!2447634 ((_ is Star!7197) (regTwo!14906 (regOne!14906 r!13927)))) b!2448276))

(assert (= (and b!2447634 ((_ is Union!7197) (regTwo!14906 (regOne!14906 r!13927)))) b!2448277))

(declare-fun e!1554537 () Bool)

(assert (=> b!2447618 (= tp!777451 e!1554537)))

(declare-fun b!2448280 () Bool)

(declare-fun tp!777728 () Bool)

(assert (=> b!2448280 (= e!1554537 tp!777728)))

(declare-fun b!2448279 () Bool)

(declare-fun tp!777724 () Bool)

(declare-fun tp!777727 () Bool)

(assert (=> b!2448279 (= e!1554537 (and tp!777724 tp!777727))))

(declare-fun b!2448281 () Bool)

(declare-fun tp!777725 () Bool)

(declare-fun tp!777726 () Bool)

(assert (=> b!2448281 (= e!1554537 (and tp!777725 tp!777726))))

(declare-fun b!2448278 () Bool)

(assert (=> b!2448278 (= e!1554537 tp_is_empty!11807)))

(assert (= (and b!2447618 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14907 r!13927)))) b!2448278))

(assert (= (and b!2447618 ((_ is Concat!11833) (regOne!14907 (regTwo!14907 r!13927)))) b!2448279))

(assert (= (and b!2447618 ((_ is Star!7197) (regOne!14907 (regTwo!14907 r!13927)))) b!2448280))

(assert (= (and b!2447618 ((_ is Union!7197) (regOne!14907 (regTwo!14907 r!13927)))) b!2448281))

(declare-fun e!1554538 () Bool)

(assert (=> b!2447618 (= tp!777452 e!1554538)))

(declare-fun b!2448284 () Bool)

(declare-fun tp!777733 () Bool)

(assert (=> b!2448284 (= e!1554538 tp!777733)))

(declare-fun b!2448283 () Bool)

(declare-fun tp!777729 () Bool)

(declare-fun tp!777732 () Bool)

(assert (=> b!2448283 (= e!1554538 (and tp!777729 tp!777732))))

(declare-fun b!2448285 () Bool)

(declare-fun tp!777730 () Bool)

(declare-fun tp!777731 () Bool)

(assert (=> b!2448285 (= e!1554538 (and tp!777730 tp!777731))))

(declare-fun b!2448282 () Bool)

(assert (=> b!2448282 (= e!1554538 tp_is_empty!11807)))

(assert (= (and b!2447618 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14907 r!13927)))) b!2448282))

(assert (= (and b!2447618 ((_ is Concat!11833) (regTwo!14907 (regTwo!14907 r!13927)))) b!2448283))

(assert (= (and b!2447618 ((_ is Star!7197) (regTwo!14907 (regTwo!14907 r!13927)))) b!2448284))

(assert (= (and b!2447618 ((_ is Union!7197) (regTwo!14907 (regTwo!14907 r!13927)))) b!2448285))

(declare-fun e!1554539 () Bool)

(assert (=> b!2447636 (= tp!777470 e!1554539)))

(declare-fun b!2448288 () Bool)

(declare-fun tp!777738 () Bool)

(assert (=> b!2448288 (= e!1554539 tp!777738)))

(declare-fun b!2448287 () Bool)

(declare-fun tp!777734 () Bool)

(declare-fun tp!777737 () Bool)

(assert (=> b!2448287 (= e!1554539 (and tp!777734 tp!777737))))

(declare-fun b!2448289 () Bool)

(declare-fun tp!777735 () Bool)

(declare-fun tp!777736 () Bool)

(assert (=> b!2448289 (= e!1554539 (and tp!777735 tp!777736))))

(declare-fun b!2448286 () Bool)

(assert (=> b!2448286 (= e!1554539 tp_is_empty!11807)))

(assert (= (and b!2447636 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14906 r!13927)))) b!2448286))

(assert (= (and b!2447636 ((_ is Concat!11833) (regOne!14907 (regOne!14906 r!13927)))) b!2448287))

(assert (= (and b!2447636 ((_ is Star!7197) (regOne!14907 (regOne!14906 r!13927)))) b!2448288))

(assert (= (and b!2447636 ((_ is Union!7197) (regOne!14907 (regOne!14906 r!13927)))) b!2448289))

(declare-fun e!1554540 () Bool)

(assert (=> b!2447636 (= tp!777471 e!1554540)))

(declare-fun b!2448292 () Bool)

(declare-fun tp!777743 () Bool)

(assert (=> b!2448292 (= e!1554540 tp!777743)))

(declare-fun b!2448291 () Bool)

(declare-fun tp!777739 () Bool)

(declare-fun tp!777742 () Bool)

(assert (=> b!2448291 (= e!1554540 (and tp!777739 tp!777742))))

(declare-fun b!2448293 () Bool)

(declare-fun tp!777740 () Bool)

(declare-fun tp!777741 () Bool)

(assert (=> b!2448293 (= e!1554540 (and tp!777740 tp!777741))))

(declare-fun b!2448290 () Bool)

(assert (=> b!2448290 (= e!1554540 tp_is_empty!11807)))

(assert (= (and b!2447636 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14906 r!13927)))) b!2448290))

(assert (= (and b!2447636 ((_ is Concat!11833) (regTwo!14907 (regOne!14906 r!13927)))) b!2448291))

(assert (= (and b!2447636 ((_ is Star!7197) (regTwo!14907 (regOne!14906 r!13927)))) b!2448292))

(assert (= (and b!2447636 ((_ is Union!7197) (regTwo!14907 (regOne!14906 r!13927)))) b!2448293))

(declare-fun e!1554541 () Bool)

(assert (=> b!2447613 (= tp!777449 e!1554541)))

(declare-fun b!2448296 () Bool)

(declare-fun tp!777748 () Bool)

(assert (=> b!2448296 (= e!1554541 tp!777748)))

(declare-fun b!2448295 () Bool)

(declare-fun tp!777744 () Bool)

(declare-fun tp!777747 () Bool)

(assert (=> b!2448295 (= e!1554541 (and tp!777744 tp!777747))))

(declare-fun b!2448297 () Bool)

(declare-fun tp!777745 () Bool)

(declare-fun tp!777746 () Bool)

(assert (=> b!2448297 (= e!1554541 (and tp!777745 tp!777746))))

(declare-fun b!2448294 () Bool)

(assert (=> b!2448294 (= e!1554541 tp_is_empty!11807)))

(assert (= (and b!2447613 ((_ is ElementMatch!7197) (reg!7526 (regOne!14907 r!13927)))) b!2448294))

(assert (= (and b!2447613 ((_ is Concat!11833) (reg!7526 (regOne!14907 r!13927)))) b!2448295))

(assert (= (and b!2447613 ((_ is Star!7197) (reg!7526 (regOne!14907 r!13927)))) b!2448296))

(assert (= (and b!2447613 ((_ is Union!7197) (reg!7526 (regOne!14907 r!13927)))) b!2448297))

(declare-fun e!1554542 () Bool)

(assert (=> b!2447640 (= tp!777475 e!1554542)))

(declare-fun b!2448300 () Bool)

(declare-fun tp!777753 () Bool)

(assert (=> b!2448300 (= e!1554542 tp!777753)))

(declare-fun b!2448299 () Bool)

(declare-fun tp!777749 () Bool)

(declare-fun tp!777752 () Bool)

(assert (=> b!2448299 (= e!1554542 (and tp!777749 tp!777752))))

(declare-fun b!2448301 () Bool)

(declare-fun tp!777750 () Bool)

(declare-fun tp!777751 () Bool)

(assert (=> b!2448301 (= e!1554542 (and tp!777750 tp!777751))))

(declare-fun b!2448298 () Bool)

(assert (=> b!2448298 (= e!1554542 tp_is_empty!11807)))

(assert (= (and b!2447640 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14906 r!13927)))) b!2448298))

(assert (= (and b!2447640 ((_ is Concat!11833) (regOne!14907 (regTwo!14906 r!13927)))) b!2448299))

(assert (= (and b!2447640 ((_ is Star!7197) (regOne!14907 (regTwo!14906 r!13927)))) b!2448300))

(assert (= (and b!2447640 ((_ is Union!7197) (regOne!14907 (regTwo!14906 r!13927)))) b!2448301))

(declare-fun e!1554543 () Bool)

(assert (=> b!2447640 (= tp!777476 e!1554543)))

(declare-fun b!2448304 () Bool)

(declare-fun tp!777758 () Bool)

(assert (=> b!2448304 (= e!1554543 tp!777758)))

(declare-fun b!2448303 () Bool)

(declare-fun tp!777754 () Bool)

(declare-fun tp!777757 () Bool)

(assert (=> b!2448303 (= e!1554543 (and tp!777754 tp!777757))))

(declare-fun b!2448305 () Bool)

(declare-fun tp!777755 () Bool)

(declare-fun tp!777756 () Bool)

(assert (=> b!2448305 (= e!1554543 (and tp!777755 tp!777756))))

(declare-fun b!2448302 () Bool)

(assert (=> b!2448302 (= e!1554543 tp_is_empty!11807)))

(assert (= (and b!2447640 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14906 r!13927)))) b!2448302))

(assert (= (and b!2447640 ((_ is Concat!11833) (regTwo!14907 (regTwo!14906 r!13927)))) b!2448303))

(assert (= (and b!2447640 ((_ is Star!7197) (regTwo!14907 (regTwo!14906 r!13927)))) b!2448304))

(assert (= (and b!2447640 ((_ is Union!7197) (regTwo!14907 (regTwo!14906 r!13927)))) b!2448305))

(declare-fun e!1554544 () Bool)

(assert (=> b!2447617 (= tp!777454 e!1554544)))

(declare-fun b!2448308 () Bool)

(declare-fun tp!777763 () Bool)

(assert (=> b!2448308 (= e!1554544 tp!777763)))

(declare-fun b!2448307 () Bool)

(declare-fun tp!777759 () Bool)

(declare-fun tp!777762 () Bool)

(assert (=> b!2448307 (= e!1554544 (and tp!777759 tp!777762))))

(declare-fun b!2448309 () Bool)

(declare-fun tp!777760 () Bool)

(declare-fun tp!777761 () Bool)

(assert (=> b!2448309 (= e!1554544 (and tp!777760 tp!777761))))

(declare-fun b!2448306 () Bool)

(assert (=> b!2448306 (= e!1554544 tp_is_empty!11807)))

(assert (= (and b!2447617 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14907 r!13927)))) b!2448306))

(assert (= (and b!2447617 ((_ is Concat!11833) (reg!7526 (regTwo!14907 r!13927)))) b!2448307))

(assert (= (and b!2447617 ((_ is Star!7197) (reg!7526 (regTwo!14907 r!13927)))) b!2448308))

(assert (= (and b!2447617 ((_ is Union!7197) (reg!7526 (regTwo!14907 r!13927)))) b!2448309))

(declare-fun e!1554545 () Bool)

(assert (=> b!2447643 (= tp!777483 e!1554545)))

(declare-fun b!2448312 () Bool)

(declare-fun tp!777768 () Bool)

(assert (=> b!2448312 (= e!1554545 tp!777768)))

(declare-fun b!2448311 () Bool)

(declare-fun tp!777764 () Bool)

(declare-fun tp!777767 () Bool)

(assert (=> b!2448311 (= e!1554545 (and tp!777764 tp!777767))))

(declare-fun b!2448313 () Bool)

(declare-fun tp!777765 () Bool)

(declare-fun tp!777766 () Bool)

(assert (=> b!2448313 (= e!1554545 (and tp!777765 tp!777766))))

(declare-fun b!2448310 () Bool)

(assert (=> b!2448310 (= e!1554545 tp_is_empty!11807)))

(assert (= (and b!2447643 ((_ is ElementMatch!7197) (reg!7526 (reg!7526 r!13927)))) b!2448310))

(assert (= (and b!2447643 ((_ is Concat!11833) (reg!7526 (reg!7526 r!13927)))) b!2448311))

(assert (= (and b!2447643 ((_ is Star!7197) (reg!7526 (reg!7526 r!13927)))) b!2448312))

(assert (= (and b!2447643 ((_ is Union!7197) (reg!7526 (reg!7526 r!13927)))) b!2448313))

(declare-fun e!1554546 () Bool)

(assert (=> b!2447638 (= tp!777474 e!1554546)))

(declare-fun b!2448316 () Bool)

(declare-fun tp!777773 () Bool)

(assert (=> b!2448316 (= e!1554546 tp!777773)))

(declare-fun b!2448315 () Bool)

(declare-fun tp!777769 () Bool)

(declare-fun tp!777772 () Bool)

(assert (=> b!2448315 (= e!1554546 (and tp!777769 tp!777772))))

(declare-fun b!2448317 () Bool)

(declare-fun tp!777770 () Bool)

(declare-fun tp!777771 () Bool)

(assert (=> b!2448317 (= e!1554546 (and tp!777770 tp!777771))))

(declare-fun b!2448314 () Bool)

(assert (=> b!2448314 (= e!1554546 tp_is_empty!11807)))

(assert (= (and b!2447638 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14906 r!13927)))) b!2448314))

(assert (= (and b!2447638 ((_ is Concat!11833) (regOne!14906 (regTwo!14906 r!13927)))) b!2448315))

(assert (= (and b!2447638 ((_ is Star!7197) (regOne!14906 (regTwo!14906 r!13927)))) b!2448316))

(assert (= (and b!2447638 ((_ is Union!7197) (regOne!14906 (regTwo!14906 r!13927)))) b!2448317))

(declare-fun e!1554547 () Bool)

(assert (=> b!2447638 (= tp!777477 e!1554547)))

(declare-fun b!2448320 () Bool)

(declare-fun tp!777778 () Bool)

(assert (=> b!2448320 (= e!1554547 tp!777778)))

(declare-fun b!2448319 () Bool)

(declare-fun tp!777774 () Bool)

(declare-fun tp!777777 () Bool)

(assert (=> b!2448319 (= e!1554547 (and tp!777774 tp!777777))))

(declare-fun b!2448321 () Bool)

(declare-fun tp!777775 () Bool)

(declare-fun tp!777776 () Bool)

(assert (=> b!2448321 (= e!1554547 (and tp!777775 tp!777776))))

(declare-fun b!2448318 () Bool)

(assert (=> b!2448318 (= e!1554547 tp_is_empty!11807)))

(assert (= (and b!2447638 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14906 r!13927)))) b!2448318))

(assert (= (and b!2447638 ((_ is Concat!11833) (regTwo!14906 (regTwo!14906 r!13927)))) b!2448319))

(assert (= (and b!2447638 ((_ is Star!7197) (regTwo!14906 (regTwo!14906 r!13927)))) b!2448320))

(assert (= (and b!2447638 ((_ is Union!7197) (regTwo!14906 (regTwo!14906 r!13927)))) b!2448321))

(declare-fun e!1554548 () Bool)

(assert (=> b!2447642 (= tp!777479 e!1554548)))

(declare-fun b!2448324 () Bool)

(declare-fun tp!777783 () Bool)

(assert (=> b!2448324 (= e!1554548 tp!777783)))

(declare-fun b!2448323 () Bool)

(declare-fun tp!777779 () Bool)

(declare-fun tp!777782 () Bool)

(assert (=> b!2448323 (= e!1554548 (and tp!777779 tp!777782))))

(declare-fun b!2448325 () Bool)

(declare-fun tp!777780 () Bool)

(declare-fun tp!777781 () Bool)

(assert (=> b!2448325 (= e!1554548 (and tp!777780 tp!777781))))

(declare-fun b!2448322 () Bool)

(assert (=> b!2448322 (= e!1554548 tp_is_empty!11807)))

(assert (= (and b!2447642 ((_ is ElementMatch!7197) (regOne!14906 (reg!7526 r!13927)))) b!2448322))

(assert (= (and b!2447642 ((_ is Concat!11833) (regOne!14906 (reg!7526 r!13927)))) b!2448323))

(assert (= (and b!2447642 ((_ is Star!7197) (regOne!14906 (reg!7526 r!13927)))) b!2448324))

(assert (= (and b!2447642 ((_ is Union!7197) (regOne!14906 (reg!7526 r!13927)))) b!2448325))

(declare-fun e!1554549 () Bool)

(assert (=> b!2447642 (= tp!777482 e!1554549)))

(declare-fun b!2448328 () Bool)

(declare-fun tp!777788 () Bool)

(assert (=> b!2448328 (= e!1554549 tp!777788)))

(declare-fun b!2448327 () Bool)

(declare-fun tp!777784 () Bool)

(declare-fun tp!777787 () Bool)

(assert (=> b!2448327 (= e!1554549 (and tp!777784 tp!777787))))

(declare-fun b!2448329 () Bool)

(declare-fun tp!777785 () Bool)

(declare-fun tp!777786 () Bool)

(assert (=> b!2448329 (= e!1554549 (and tp!777785 tp!777786))))

(declare-fun b!2448326 () Bool)

(assert (=> b!2448326 (= e!1554549 tp_is_empty!11807)))

(assert (= (and b!2447642 ((_ is ElementMatch!7197) (regTwo!14906 (reg!7526 r!13927)))) b!2448326))

(assert (= (and b!2447642 ((_ is Concat!11833) (regTwo!14906 (reg!7526 r!13927)))) b!2448327))

(assert (= (and b!2447642 ((_ is Star!7197) (regTwo!14906 (reg!7526 r!13927)))) b!2448328))

(assert (= (and b!2447642 ((_ is Union!7197) (regTwo!14906 (reg!7526 r!13927)))) b!2448329))

(declare-fun e!1554550 () Bool)

(assert (=> b!2447627 (= tp!777459 e!1554550)))

(declare-fun b!2448332 () Bool)

(declare-fun tp!777793 () Bool)

(assert (=> b!2448332 (= e!1554550 tp!777793)))

(declare-fun b!2448331 () Bool)

(declare-fun tp!777789 () Bool)

(declare-fun tp!777792 () Bool)

(assert (=> b!2448331 (= e!1554550 (and tp!777789 tp!777792))))

(declare-fun b!2448333 () Bool)

(declare-fun tp!777790 () Bool)

(declare-fun tp!777791 () Bool)

(assert (=> b!2448333 (= e!1554550 (and tp!777790 tp!777791))))

(declare-fun b!2448330 () Bool)

(assert (=> b!2448330 (= e!1554550 tp_is_empty!11807)))

(assert (= (and b!2447627 ((_ is ElementMatch!7197) (regOne!14907 (h!33933 l!9164)))) b!2448330))

(assert (= (and b!2447627 ((_ is Concat!11833) (regOne!14907 (h!33933 l!9164)))) b!2448331))

(assert (= (and b!2447627 ((_ is Star!7197) (regOne!14907 (h!33933 l!9164)))) b!2448332))

(assert (= (and b!2447627 ((_ is Union!7197) (regOne!14907 (h!33933 l!9164)))) b!2448333))

(declare-fun e!1554551 () Bool)

(assert (=> b!2447627 (= tp!777460 e!1554551)))

(declare-fun b!2448336 () Bool)

(declare-fun tp!777798 () Bool)

(assert (=> b!2448336 (= e!1554551 tp!777798)))

(declare-fun b!2448335 () Bool)

(declare-fun tp!777794 () Bool)

(declare-fun tp!777797 () Bool)

(assert (=> b!2448335 (= e!1554551 (and tp!777794 tp!777797))))

(declare-fun b!2448337 () Bool)

(declare-fun tp!777795 () Bool)

(declare-fun tp!777796 () Bool)

(assert (=> b!2448337 (= e!1554551 (and tp!777795 tp!777796))))

(declare-fun b!2448334 () Bool)

(assert (=> b!2448334 (= e!1554551 tp_is_empty!11807)))

(assert (= (and b!2447627 ((_ is ElementMatch!7197) (regTwo!14907 (h!33933 l!9164)))) b!2448334))

(assert (= (and b!2447627 ((_ is Concat!11833) (regTwo!14907 (h!33933 l!9164)))) b!2448335))

(assert (= (and b!2447627 ((_ is Star!7197) (regTwo!14907 (h!33933 l!9164)))) b!2448336))

(assert (= (and b!2447627 ((_ is Union!7197) (regTwo!14907 (h!33933 l!9164)))) b!2448337))

(declare-fun b!2448338 () Bool)

(declare-fun e!1554552 () Bool)

(declare-fun tp!777799 () Bool)

(assert (=> b!2448338 (= e!1554552 (and tp_is_empty!11807 tp!777799))))

(assert (=> b!2447623 (= tp!777457 e!1554552)))

(assert (= (and b!2447623 ((_ is Cons!28533) (t!208608 (t!208608 s!9460)))) b!2448338))

(declare-fun b_lambda!75041 () Bool)

(assert (= b_lambda!75037 (or d!706015 b_lambda!75041)))

(declare-fun bs!465498 () Bool)

(declare-fun d!706217 () Bool)

(assert (= bs!465498 (and d!706217 d!706015)))

(assert (=> bs!465498 (= (dynLambda!12263 lambda!92764 (h!33933 (t!208607 l!9164))) (validRegex!2897 (h!33933 (t!208607 l!9164))))))

(declare-fun m!2823591 () Bool)

(assert (=> bs!465498 m!2823591))

(assert (=> b!2448047 d!706217))

(declare-fun b_lambda!75043 () Bool)

(assert (= b_lambda!75035 (or start!239146 b_lambda!75043)))

(declare-fun bs!465499 () Bool)

(declare-fun d!706219 () Bool)

(assert (= bs!465499 (and d!706219 start!239146)))

(assert (=> bs!465499 (= (dynLambda!12263 lambda!92751 (h!33933 (t!208607 l!9164))) (validRegex!2897 (h!33933 (t!208607 l!9164))))))

(assert (=> bs!465499 m!2823591))

(assert (=> b!2447992 d!706219))

(declare-fun b_lambda!75045 () Bool)

(assert (= b_lambda!75039 (or d!706027 b_lambda!75045)))

(declare-fun bs!465500 () Bool)

(declare-fun d!706221 () Bool)

(assert (= bs!465500 (and d!706221 d!706027)))

(assert (=> bs!465500 (= (dynLambda!12263 lambda!92765 (h!33933 l!9164)) (validRegex!2897 (h!33933 l!9164)))))

(assert (=> bs!465500 m!2823055))

(assert (=> b!2448121 d!706221))

(check-sat (not b!2448101) (not d!706215) (not b!2448289) (not b!2448163) (not b_lambda!75045) (not b!2448224) (not b!2448050) (not d!706207) (not b!2448057) (not b!2448313) (not b!2448014) (not bm!150317) (not bm!150310) (not b!2448236) (not b!2448332) (not b!2448017) (not b!2448093) (not b!2448260) (not b!2448203) (not d!706171) (not b!2448276) (not d!706195) (not bm!150312) (not b!2448086) (not b!2448003) (not b!2448097) (not b!2448281) (not b!2448296) (not b!2448288) (not b!2448283) (not b!2448211) (not b!2448237) (not b!2448128) (not b!2448323) (not b_lambda!75041) (not d!706213) (not b!2448231) (not b!2448252) (not b!2448267) (not b!2448312) (not b!2448324) (not b!2448167) (not d!706155) (not bs!465498) (not b!2448333) (not b!2448125) (not b!2448249) (not b!2448304) (not b!2448233) (not bm!150318) (not b!2448225) (not b!2448307) (not b!2448243) (not b!2448133) (not b!2448335) (not b!2448166) (not b!2448241) (not d!706157) (not b!2448044) (not b_lambda!75043) (not b!2448222) (not b!2448328) (not b!2448257) (not b!2448161) (not b!2448284) (not b!2448061) (not b!2448271) (not b!2448229) (not b!2448207) (not b!2448295) (not b!2448077) (not b!2448261) (not b!2448078) (not bm!150302) (not b!2448251) (not b!2448095) (not b!2448337) (not b!2448100) (not b!2448147) (not b!2448264) (not b!2448070) (not bm!150333) (not b!2448317) (not b!2448109) (not b!2448269) (not b!2448048) (not bm!150320) (not bm!150308) (not b!2448308) (not b!2448321) (not bm!150331) (not b!2448285) (not b!2448319) (not b!2448212) (not b!2448315) (not b!2448305) (not b!2448019) (not b!2448247) (not b!2448220) (not b!2448144) (not b!2448280) (not b!2448010) (not bm!150306) (not d!706161) (not b!2448311) (not b!2448074) (not d!706205) (not b!2448320) (not bm!150309) (not b!2448102) (not b!2448273) (not b!2448292) (not b!2448259) (not b!2448058) (not bm!150316) (not b!2448065) (not b!2448255) (not b!2448239) (not b!2448329) (not b!2448272) (not b!2448275) (not b!2448168) (not b_lambda!75021) (not b!2448131) (not bm!150329) (not b!2448327) (not b!2448256) (not b!2448060) (not b!2448054) (not b!2448309) (not b!2448004) (not b!2448277) (not b!2448214) (not b!2448263) (not b!2448265) (not b!2448232) (not bm!150315) (not b!2448118) (not b!2448325) (not b!2448122) (not b!2448012) (not bm!150295) (not b!2448205) (not b!2448216) (not b!2448218) tp_is_empty!11807 (not b!2448126) (not bm!150305) (not b!2448316) (not b!2448338) (not d!706159) (not b!2448227) (not b!2448245) (not b!2448299) (not b!2448055) (not b!2448079) (not d!706165) (not b!2448072) (not d!706211) (not b!2448293) (not bm!150313) (not d!706143) (not b!2448240) (not b!2448297) (not b!2448244) (not b!2448051) (not b!2448291) (not b!2448129) (not b!2448127) (not bs!465500) (not b!2448331) (not bs!465499) (not b!2447993) (not b!2448215) (not b!2448235) (not b!2448228) (not b!2448248) (not b!2448219) (not b!2448194) (not b!2448303) (not d!706133) (not b!2448018) (not d!706197) (not bm!150304) (not b!2448301) (not d!706147) (not b!2448300) (not b!2448223) (not bm!150319) (not b!2448253) (not b!2448268) (not b!2448336) (not b!2448059) (not b!2448210) (not b!2448136) (not b!2448279) (not b!2448287) (not b!2448123) (not b!2448159))
(check-sat)
(get-model)

(declare-fun d!706255 () Bool)

(assert (not d!706255))

(assert (=> b!2448205 d!706255))

(declare-fun d!706261 () Bool)

(assert (not d!706261))

(assert (=> b!2448205 d!706261))

(declare-fun b!2448421 () Bool)

(declare-fun e!1554602 () Regex!7197)

(assert (=> b!2448421 (= e!1554602 EmptyLang!7197)))

(declare-fun b!2448422 () Bool)

(declare-fun call!150360 () Regex!7197)

(declare-fun e!1554600 () Regex!7197)

(assert (=> b!2448422 (= e!1554600 (Concat!11833 call!150360 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927))))))))

(declare-fun b!2448423 () Bool)

(declare-fun e!1554598 () Regex!7197)

(assert (=> b!2448423 (= e!1554598 (ite (= (head!5570 s!9460) (c!390559 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927)))))) EmptyExpr!7197 EmptyLang!7197))))

(declare-fun c!390802 () Bool)

(declare-fun b!2448424 () Bool)

(assert (=> b!2448424 (= c!390802 ((_ is Union!7197) (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927))))))))

(declare-fun e!1554601 () Regex!7197)

(assert (=> b!2448424 (= e!1554598 e!1554601)))

(declare-fun d!706263 () Bool)

(declare-fun lt!879617 () Regex!7197)

(assert (=> d!706263 (validRegex!2897 lt!879617)))

(assert (=> d!706263 (= lt!879617 e!1554602)))

(declare-fun c!390799 () Bool)

(assert (=> d!706263 (= c!390799 (or ((_ is EmptyExpr!7197) (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927))))) ((_ is EmptyLang!7197) (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927)))))))))

(assert (=> d!706263 (validRegex!2897 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927)))))))

(assert (=> d!706263 (= (derivativeStep!1859 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927)))) (head!5570 s!9460)) lt!879617)))

(declare-fun call!150358 () Regex!7197)

(declare-fun bm!150352 () Bool)

(assert (=> bm!150352 (= call!150358 (derivativeStep!1859 (ite c!390802 (regTwo!14907 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927))))) (regOne!14906 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927)))))) (head!5570 s!9460)))))

(declare-fun b!2448425 () Bool)

(declare-fun call!150357 () Regex!7197)

(assert (=> b!2448425 (= e!1554601 (Union!7197 call!150357 call!150358))))

(declare-fun b!2448426 () Bool)

(declare-fun c!390801 () Bool)

(assert (=> b!2448426 (= c!390801 (nullable!2205 (regOne!14906 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927)))))))))

(declare-fun e!1554599 () Regex!7197)

(assert (=> b!2448426 (= e!1554600 e!1554599)))

(declare-fun b!2448427 () Bool)

(assert (=> b!2448427 (= e!1554602 e!1554598)))

(declare-fun c!390800 () Bool)

(assert (=> b!2448427 (= c!390800 ((_ is ElementMatch!7197) (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927))))))))

(declare-fun bm!150353 () Bool)

(declare-fun call!150359 () Regex!7197)

(assert (=> bm!150353 (= call!150359 call!150360)))

(declare-fun bm!150354 () Bool)

(declare-fun c!390803 () Bool)

(assert (=> bm!150354 (= call!150357 (derivativeStep!1859 (ite c!390802 (regOne!14907 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927))))) (ite c!390803 (reg!7526 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927))))) (ite c!390801 (regTwo!14906 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927))))) (regOne!14906 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927)))))))) (head!5570 s!9460)))))

(declare-fun bm!150355 () Bool)

(assert (=> bm!150355 (= call!150360 call!150357)))

(declare-fun b!2448428 () Bool)

(assert (=> b!2448428 (= e!1554601 e!1554600)))

(assert (=> b!2448428 (= c!390803 ((_ is Star!7197) (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927))))))))

(declare-fun b!2448429 () Bool)

(assert (=> b!2448429 (= e!1554599 (Union!7197 (Concat!11833 call!150359 (regTwo!14906 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927)))))) EmptyLang!7197))))

(declare-fun b!2448430 () Bool)

(assert (=> b!2448430 (= e!1554599 (Union!7197 (Concat!11833 call!150358 (regTwo!14906 (ite c!390763 (regOne!14907 r!13927) (ite c!390764 (reg!7526 r!13927) (ite c!390762 (regTwo!14906 r!13927) (regOne!14906 r!13927)))))) call!150359))))

(assert (= (and d!706263 c!390799) b!2448421))

(assert (= (and d!706263 (not c!390799)) b!2448427))

(assert (= (and b!2448427 c!390800) b!2448423))

(assert (= (and b!2448427 (not c!390800)) b!2448424))

(assert (= (and b!2448424 c!390802) b!2448425))

(assert (= (and b!2448424 (not c!390802)) b!2448428))

(assert (= (and b!2448428 c!390803) b!2448422))

(assert (= (and b!2448428 (not c!390803)) b!2448426))

(assert (= (and b!2448426 c!390801) b!2448430))

(assert (= (and b!2448426 (not c!390801)) b!2448429))

(assert (= (or b!2448430 b!2448429) bm!150353))

(assert (= (or b!2448422 bm!150353) bm!150355))

(assert (= (or b!2448425 bm!150355) bm!150354))

(assert (= (or b!2448425 b!2448430) bm!150352))

(declare-fun m!2823685 () Bool)

(assert (=> d!706263 m!2823685))

(declare-fun m!2823687 () Bool)

(assert (=> d!706263 m!2823687))

(assert (=> bm!150352 m!2823153))

(declare-fun m!2823689 () Bool)

(assert (=> bm!150352 m!2823689))

(declare-fun m!2823691 () Bool)

(assert (=> b!2448426 m!2823691))

(assert (=> bm!150354 m!2823153))

(declare-fun m!2823693 () Bool)

(assert (=> bm!150354 m!2823693))

(assert (=> bm!150331 d!706263))

(assert (=> d!706165 d!706003))

(declare-fun b!2448431 () Bool)

(declare-fun e!1554609 () Bool)

(declare-fun call!150363 () Bool)

(assert (=> b!2448431 (= e!1554609 call!150363)))

(declare-fun call!150361 () Bool)

(declare-fun c!390804 () Bool)

(declare-fun bm!150356 () Bool)

(declare-fun c!390805 () Bool)

(assert (=> bm!150356 (= call!150361 (validRegex!2897 (ite c!390805 (reg!7526 (generalisedConcat!298 (t!208607 l!9164))) (ite c!390804 (regTwo!14907 (generalisedConcat!298 (t!208607 l!9164))) (regOne!14906 (generalisedConcat!298 (t!208607 l!9164)))))))))

(declare-fun b!2448432 () Bool)

(declare-fun e!1554604 () Bool)

(assert (=> b!2448432 (= e!1554604 call!150361)))

(declare-fun b!2448433 () Bool)

(declare-fun e!1554606 () Bool)

(declare-fun call!150362 () Bool)

(assert (=> b!2448433 (= e!1554606 call!150362)))

(declare-fun b!2448435 () Bool)

(declare-fun res!1038886 () Bool)

(declare-fun e!1554605 () Bool)

(assert (=> b!2448435 (=> res!1038886 e!1554605)))

(assert (=> b!2448435 (= res!1038886 (not ((_ is Concat!11833) (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun e!1554608 () Bool)

(assert (=> b!2448435 (= e!1554608 e!1554605)))

(declare-fun bm!150357 () Bool)

(assert (=> bm!150357 (= call!150363 call!150361)))

(declare-fun b!2448436 () Bool)

(declare-fun e!1554603 () Bool)

(declare-fun e!1554607 () Bool)

(assert (=> b!2448436 (= e!1554603 e!1554607)))

(assert (=> b!2448436 (= c!390805 ((_ is Star!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448437 () Bool)

(assert (=> b!2448437 (= e!1554607 e!1554604)))

(declare-fun res!1038883 () Bool)

(assert (=> b!2448437 (= res!1038883 (not (nullable!2205 (reg!7526 (generalisedConcat!298 (t!208607 l!9164))))))))

(assert (=> b!2448437 (=> (not res!1038883) (not e!1554604))))

(declare-fun b!2448438 () Bool)

(assert (=> b!2448438 (= e!1554607 e!1554608)))

(assert (=> b!2448438 (= c!390804 ((_ is Union!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448439 () Bool)

(declare-fun res!1038884 () Bool)

(assert (=> b!2448439 (=> (not res!1038884) (not e!1554609))))

(assert (=> b!2448439 (= res!1038884 call!150362)))

(assert (=> b!2448439 (= e!1554608 e!1554609)))

(declare-fun bm!150358 () Bool)

(assert (=> bm!150358 (= call!150362 (validRegex!2897 (ite c!390804 (regOne!14907 (generalisedConcat!298 (t!208607 l!9164))) (regTwo!14906 (generalisedConcat!298 (t!208607 l!9164))))))))

(declare-fun d!706269 () Bool)

(declare-fun res!1038885 () Bool)

(assert (=> d!706269 (=> res!1038885 e!1554603)))

(assert (=> d!706269 (= res!1038885 ((_ is ElementMatch!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(assert (=> d!706269 (= (validRegex!2897 (generalisedConcat!298 (t!208607 l!9164))) e!1554603)))

(declare-fun b!2448434 () Bool)

(assert (=> b!2448434 (= e!1554605 e!1554606)))

(declare-fun res!1038887 () Bool)

(assert (=> b!2448434 (=> (not res!1038887) (not e!1554606))))

(assert (=> b!2448434 (= res!1038887 call!150363)))

(assert (= (and d!706269 (not res!1038885)) b!2448436))

(assert (= (and b!2448436 c!390805) b!2448437))

(assert (= (and b!2448436 (not c!390805)) b!2448438))

(assert (= (and b!2448437 res!1038883) b!2448432))

(assert (= (and b!2448438 c!390804) b!2448439))

(assert (= (and b!2448438 (not c!390804)) b!2448435))

(assert (= (and b!2448439 res!1038884) b!2448431))

(assert (= (and b!2448435 (not res!1038886)) b!2448434))

(assert (= (and b!2448434 res!1038887) b!2448433))

(assert (= (or b!2448439 b!2448433) bm!150358))

(assert (= (or b!2448431 b!2448434) bm!150357))

(assert (= (or b!2448432 bm!150357) bm!150356))

(declare-fun m!2823697 () Bool)

(assert (=> bm!150356 m!2823697))

(declare-fun m!2823699 () Bool)

(assert (=> b!2448437 m!2823699))

(declare-fun m!2823703 () Bool)

(assert (=> bm!150358 m!2823703))

(assert (=> d!706165 d!706269))

(declare-fun d!706273 () Bool)

(assert (=> d!706273 (= (nullable!2205 (derivativeStep!1859 r!13927 (head!5570 s!9460))) (nullableFct!537 (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(declare-fun bs!465516 () Bool)

(assert (= bs!465516 d!706273))

(assert (=> bs!465516 m!2823163))

(declare-fun m!2823709 () Bool)

(assert (=> bs!465516 m!2823709))

(assert (=> b!2448166 d!706273))

(declare-fun d!706277 () Bool)

(assert (=> d!706277 (= (isEmpty!16569 (_2!16614 (get!8823 lt!879551))) ((_ is Nil!28533) (_2!16614 (get!8823 lt!879551))))))

(assert (=> d!706143 d!706277))

(assert (=> d!706143 d!706269))

(declare-fun d!706279 () Bool)

(assert (=> d!706279 (= (nullable!2205 (reg!7526 lt!879564)) (nullableFct!537 (reg!7526 lt!879564)))))

(declare-fun bs!465517 () Bool)

(assert (= bs!465517 d!706279))

(declare-fun m!2823711 () Bool)

(assert (=> bs!465517 m!2823711))

(assert (=> b!2448118 d!706279))

(declare-fun d!706281 () Bool)

(declare-fun res!1038898 () Bool)

(declare-fun e!1554624 () Bool)

(assert (=> d!706281 (=> res!1038898 e!1554624)))

(assert (=> d!706281 (= res!1038898 ((_ is Nil!28532) (t!208607 l!9164)))))

(assert (=> d!706281 (= (forall!5831 (t!208607 l!9164) lambda!92765) e!1554624)))

(declare-fun b!2448458 () Bool)

(declare-fun e!1554625 () Bool)

(assert (=> b!2448458 (= e!1554624 e!1554625)))

(declare-fun res!1038899 () Bool)

(assert (=> b!2448458 (=> (not res!1038899) (not e!1554625))))

(assert (=> b!2448458 (= res!1038899 (dynLambda!12263 lambda!92765 (h!33933 (t!208607 l!9164))))))

(declare-fun b!2448459 () Bool)

(assert (=> b!2448459 (= e!1554625 (forall!5831 (t!208607 (t!208607 l!9164)) lambda!92765))))

(assert (= (and d!706281 (not res!1038898)) b!2448458))

(assert (= (and b!2448458 res!1038899) b!2448459))

(declare-fun b_lambda!75047 () Bool)

(assert (=> (not b_lambda!75047) (not b!2448458)))

(declare-fun m!2823715 () Bool)

(assert (=> b!2448458 m!2823715))

(declare-fun m!2823719 () Bool)

(assert (=> b!2448459 m!2823719))

(assert (=> b!2448122 d!706281))

(declare-fun b!2448460 () Bool)

(declare-fun e!1554632 () Bool)

(declare-fun call!150373 () Bool)

(assert (=> b!2448460 (= e!1554632 call!150373)))

(declare-fun call!150370 () Bool)

(declare-fun bm!150365 () Bool)

(declare-fun c!390810 () Bool)

(declare-fun c!390811 () Bool)

(assert (=> bm!150365 (= call!150370 (validRegex!2897 (ite c!390811 (reg!7526 lt!879605) (ite c!390810 (regTwo!14907 lt!879605) (regOne!14906 lt!879605)))))))

(declare-fun b!2448461 () Bool)

(declare-fun e!1554627 () Bool)

(assert (=> b!2448461 (= e!1554627 call!150370)))

(declare-fun b!2448462 () Bool)

(declare-fun e!1554629 () Bool)

(declare-fun call!150371 () Bool)

(assert (=> b!2448462 (= e!1554629 call!150371)))

(declare-fun b!2448464 () Bool)

(declare-fun res!1038903 () Bool)

(declare-fun e!1554628 () Bool)

(assert (=> b!2448464 (=> res!1038903 e!1554628)))

(assert (=> b!2448464 (= res!1038903 (not ((_ is Concat!11833) lt!879605)))))

(declare-fun e!1554631 () Bool)

(assert (=> b!2448464 (= e!1554631 e!1554628)))

(declare-fun bm!150366 () Bool)

(assert (=> bm!150366 (= call!150373 call!150370)))

(declare-fun b!2448465 () Bool)

(declare-fun e!1554626 () Bool)

(declare-fun e!1554630 () Bool)

(assert (=> b!2448465 (= e!1554626 e!1554630)))

(assert (=> b!2448465 (= c!390811 ((_ is Star!7197) lt!879605))))

(declare-fun b!2448466 () Bool)

(assert (=> b!2448466 (= e!1554630 e!1554627)))

(declare-fun res!1038900 () Bool)

(assert (=> b!2448466 (= res!1038900 (not (nullable!2205 (reg!7526 lt!879605))))))

(assert (=> b!2448466 (=> (not res!1038900) (not e!1554627))))

(declare-fun b!2448467 () Bool)

(assert (=> b!2448467 (= e!1554630 e!1554631)))

(assert (=> b!2448467 (= c!390810 ((_ is Union!7197) lt!879605))))

(declare-fun b!2448468 () Bool)

(declare-fun res!1038901 () Bool)

(assert (=> b!2448468 (=> (not res!1038901) (not e!1554632))))

(assert (=> b!2448468 (= res!1038901 call!150371)))

(assert (=> b!2448468 (= e!1554631 e!1554632)))

(declare-fun bm!150367 () Bool)

(assert (=> bm!150367 (= call!150371 (validRegex!2897 (ite c!390810 (regOne!14907 lt!879605) (regTwo!14906 lt!879605))))))

(declare-fun d!706283 () Bool)

(declare-fun res!1038902 () Bool)

(assert (=> d!706283 (=> res!1038902 e!1554626)))

(assert (=> d!706283 (= res!1038902 ((_ is ElementMatch!7197) lt!879605))))

(assert (=> d!706283 (= (validRegex!2897 lt!879605) e!1554626)))

(declare-fun b!2448463 () Bool)

(assert (=> b!2448463 (= e!1554628 e!1554629)))

(declare-fun res!1038904 () Bool)

(assert (=> b!2448463 (=> (not res!1038904) (not e!1554629))))

(assert (=> b!2448463 (= res!1038904 call!150373)))

(assert (= (and d!706283 (not res!1038902)) b!2448465))

(assert (= (and b!2448465 c!390811) b!2448466))

(assert (= (and b!2448465 (not c!390811)) b!2448467))

(assert (= (and b!2448466 res!1038900) b!2448461))

(assert (= (and b!2448467 c!390810) b!2448468))

(assert (= (and b!2448467 (not c!390810)) b!2448464))

(assert (= (and b!2448468 res!1038901) b!2448460))

(assert (= (and b!2448464 (not res!1038903)) b!2448463))

(assert (= (and b!2448463 res!1038904) b!2448462))

(assert (= (or b!2448468 b!2448462) bm!150367))

(assert (= (or b!2448460 b!2448463) bm!150366))

(assert (= (or b!2448461 bm!150366) bm!150365))

(declare-fun m!2823725 () Bool)

(assert (=> bm!150365 m!2823725))

(declare-fun m!2823727 () Bool)

(assert (=> b!2448466 m!2823727))

(declare-fun m!2823733 () Bool)

(assert (=> bm!150367 m!2823733))

(assert (=> d!706197 d!706283))

(declare-fun d!706289 () Bool)

(declare-fun res!1038910 () Bool)

(declare-fun e!1554640 () Bool)

(assert (=> d!706289 (=> res!1038910 e!1554640)))

(assert (=> d!706289 (= res!1038910 ((_ is Nil!28532) (t!208607 (t!208607 l!9164))))))

(assert (=> d!706289 (= (forall!5831 (t!208607 (t!208607 l!9164)) lambda!92777) e!1554640)))

(declare-fun b!2448478 () Bool)

(declare-fun e!1554641 () Bool)

(assert (=> b!2448478 (= e!1554640 e!1554641)))

(declare-fun res!1038911 () Bool)

(assert (=> b!2448478 (=> (not res!1038911) (not e!1554641))))

(assert (=> b!2448478 (= res!1038911 (dynLambda!12263 lambda!92777 (h!33933 (t!208607 (t!208607 l!9164)))))))

(declare-fun b!2448479 () Bool)

(assert (=> b!2448479 (= e!1554641 (forall!5831 (t!208607 (t!208607 (t!208607 l!9164))) lambda!92777))))

(assert (= (and d!706289 (not res!1038910)) b!2448478))

(assert (= (and b!2448478 res!1038911) b!2448479))

(declare-fun b_lambda!75049 () Bool)

(assert (=> (not b_lambda!75049) (not b!2448478)))

(declare-fun m!2823735 () Bool)

(assert (=> b!2448478 m!2823735))

(declare-fun m!2823737 () Bool)

(assert (=> b!2448479 m!2823737))

(assert (=> d!706197 d!706289))

(declare-fun d!706291 () Bool)

(assert (not d!706291))

(assert (=> b!2448054 d!706291))

(declare-fun d!706295 () Bool)

(assert (=> d!706295 (= (head!5570 (_1!16614 (get!8823 lt!879551))) (h!33934 (_1!16614 (get!8823 lt!879551))))))

(assert (=> b!2448093 d!706295))

(declare-fun d!706297 () Bool)

(assert (=> d!706297 (= (head!5570 (_2!16614 (get!8823 lt!879551))) (h!33934 (_2!16614 (get!8823 lt!879551))))))

(assert (=> b!2448010 d!706297))

(declare-fun b!2448494 () Bool)

(declare-fun res!1038917 () Bool)

(declare-fun e!1554650 () Bool)

(assert (=> b!2448494 (=> (not res!1038917) (not e!1554650))))

(declare-fun lt!879619 () List!28631)

(assert (=> b!2448494 (= res!1038917 (= (size!22268 lt!879619) (+ (size!22268 (t!208608 (_1!16614 (get!8823 lt!879551)))) (size!22268 (_2!16614 (get!8823 lt!879551))))))))

(declare-fun d!706301 () Bool)

(assert (=> d!706301 e!1554650))

(declare-fun res!1038916 () Bool)

(assert (=> d!706301 (=> (not res!1038916) (not e!1554650))))

(assert (=> d!706301 (= res!1038916 (= (content!3930 lt!879619) ((_ map or) (content!3930 (t!208608 (_1!16614 (get!8823 lt!879551)))) (content!3930 (_2!16614 (get!8823 lt!879551))))))))

(declare-fun e!1554651 () List!28631)

(assert (=> d!706301 (= lt!879619 e!1554651)))

(declare-fun c!390818 () Bool)

(assert (=> d!706301 (= c!390818 ((_ is Nil!28533) (t!208608 (_1!16614 (get!8823 lt!879551)))))))

(assert (=> d!706301 (= (++!7098 (t!208608 (_1!16614 (get!8823 lt!879551))) (_2!16614 (get!8823 lt!879551))) lt!879619)))

(declare-fun b!2448495 () Bool)

(assert (=> b!2448495 (= e!1554650 (or (not (= (_2!16614 (get!8823 lt!879551)) Nil!28533)) (= lt!879619 (t!208608 (_1!16614 (get!8823 lt!879551))))))))

(declare-fun b!2448493 () Bool)

(assert (=> b!2448493 (= e!1554651 (Cons!28533 (h!33934 (t!208608 (_1!16614 (get!8823 lt!879551)))) (++!7098 (t!208608 (t!208608 (_1!16614 (get!8823 lt!879551)))) (_2!16614 (get!8823 lt!879551)))))))

(declare-fun b!2448492 () Bool)

(assert (=> b!2448492 (= e!1554651 (_2!16614 (get!8823 lt!879551)))))

(assert (= (and d!706301 c!390818) b!2448492))

(assert (= (and d!706301 (not c!390818)) b!2448493))

(assert (= (and d!706301 res!1038916) b!2448494))

(assert (= (and b!2448494 res!1038917) b!2448495))

(declare-fun m!2823743 () Bool)

(assert (=> b!2448494 m!2823743))

(declare-fun m!2823745 () Bool)

(assert (=> b!2448494 m!2823745))

(assert (=> b!2448494 m!2823391))

(declare-fun m!2823747 () Bool)

(assert (=> d!706301 m!2823747))

(declare-fun m!2823749 () Bool)

(assert (=> d!706301 m!2823749))

(assert (=> d!706301 m!2823397))

(declare-fun m!2823751 () Bool)

(assert (=> b!2448493 m!2823751))

(assert (=> b!2448003 d!706301))

(declare-fun b!2448496 () Bool)

(declare-fun e!1554658 () Bool)

(declare-fun call!150378 () Bool)

(assert (=> b!2448496 (= e!1554658 call!150378)))

(declare-fun c!390819 () Bool)

(declare-fun bm!150371 () Bool)

(declare-fun call!150376 () Bool)

(declare-fun c!390820 () Bool)

(assert (=> bm!150371 (= call!150376 (validRegex!2897 (ite c!390820 (reg!7526 (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164)))) (ite c!390819 (regTwo!14907 (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164)))) (regOne!14906 (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164))))))))))

(declare-fun b!2448497 () Bool)

(declare-fun e!1554653 () Bool)

(assert (=> b!2448497 (= e!1554653 call!150376)))

(declare-fun b!2448498 () Bool)

(declare-fun e!1554655 () Bool)

(declare-fun call!150377 () Bool)

(assert (=> b!2448498 (= e!1554655 call!150377)))

(declare-fun b!2448500 () Bool)

(declare-fun res!1038921 () Bool)

(declare-fun e!1554654 () Bool)

(assert (=> b!2448500 (=> res!1038921 e!1554654)))

(assert (=> b!2448500 (= res!1038921 (not ((_ is Concat!11833) (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164))))))))

(declare-fun e!1554657 () Bool)

(assert (=> b!2448500 (= e!1554657 e!1554654)))

(declare-fun bm!150372 () Bool)

(assert (=> bm!150372 (= call!150378 call!150376)))

(declare-fun b!2448501 () Bool)

(declare-fun e!1554652 () Bool)

(declare-fun e!1554656 () Bool)

(assert (=> b!2448501 (= e!1554652 e!1554656)))

(assert (=> b!2448501 (= c!390820 ((_ is Star!7197) (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164)))))))

(declare-fun b!2448502 () Bool)

(assert (=> b!2448502 (= e!1554656 e!1554653)))

(declare-fun res!1038918 () Bool)

(assert (=> b!2448502 (= res!1038918 (not (nullable!2205 (reg!7526 (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164)))))))))

(assert (=> b!2448502 (=> (not res!1038918) (not e!1554653))))

(declare-fun b!2448503 () Bool)

(assert (=> b!2448503 (= e!1554656 e!1554657)))

(assert (=> b!2448503 (= c!390819 ((_ is Union!7197) (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164)))))))

(declare-fun b!2448504 () Bool)

(declare-fun res!1038919 () Bool)

(assert (=> b!2448504 (=> (not res!1038919) (not e!1554658))))

(assert (=> b!2448504 (= res!1038919 call!150377)))

(assert (=> b!2448504 (= e!1554657 e!1554658)))

(declare-fun bm!150373 () Bool)

(assert (=> bm!150373 (= call!150377 (validRegex!2897 (ite c!390819 (regOne!14907 (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164)))) (regTwo!14906 (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164)))))))))

(declare-fun d!706303 () Bool)

(declare-fun res!1038920 () Bool)

(assert (=> d!706303 (=> res!1038920 e!1554652)))

(assert (=> d!706303 (= res!1038920 ((_ is ElementMatch!7197) (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164)))))))

(assert (=> d!706303 (= (validRegex!2897 (ite c!390731 (regOne!14907 (h!33933 l!9164)) (regTwo!14906 (h!33933 l!9164)))) e!1554652)))

(declare-fun b!2448499 () Bool)

(assert (=> b!2448499 (= e!1554654 e!1554655)))

(declare-fun res!1038922 () Bool)

(assert (=> b!2448499 (=> (not res!1038922) (not e!1554655))))

(assert (=> b!2448499 (= res!1038922 call!150378)))

(assert (= (and d!706303 (not res!1038920)) b!2448501))

(assert (= (and b!2448501 c!390820) b!2448502))

(assert (= (and b!2448501 (not c!390820)) b!2448503))

(assert (= (and b!2448502 res!1038918) b!2448497))

(assert (= (and b!2448503 c!390819) b!2448504))

(assert (= (and b!2448503 (not c!390819)) b!2448500))

(assert (= (and b!2448504 res!1038919) b!2448496))

(assert (= (and b!2448500 (not res!1038921)) b!2448499))

(assert (= (and b!2448499 res!1038922) b!2448498))

(assert (= (or b!2448504 b!2448498) bm!150373))

(assert (= (or b!2448496 b!2448499) bm!150372))

(assert (= (or b!2448497 bm!150372) bm!150371))

(declare-fun m!2823767 () Bool)

(assert (=> bm!150371 m!2823767))

(declare-fun m!2823771 () Bool)

(assert (=> b!2448502 m!2823771))

(declare-fun m!2823775 () Bool)

(assert (=> bm!150373 m!2823775))

(assert (=> bm!150312 d!706303))

(declare-fun d!706307 () Bool)

(assert (=> d!706307 (= (nullable!2205 (h!33933 l!9164)) (nullableFct!537 (h!33933 l!9164)))))

(declare-fun bs!465522 () Bool)

(assert (= bs!465522 d!706307))

(declare-fun m!2823777 () Bool)

(assert (=> bs!465522 m!2823777))

(assert (=> b!2448100 d!706307))

(declare-fun d!706309 () Bool)

(declare-fun c!390829 () Bool)

(assert (=> d!706309 (= c!390829 ((_ is Nil!28533) lt!879595))))

(declare-fun e!1554675 () (InoxSet C!14552))

(assert (=> d!706309 (= (content!3930 lt!879595) e!1554675)))

(declare-fun b!2448537 () Bool)

(assert (=> b!2448537 (= e!1554675 ((as const (Array C!14552 Bool)) false))))

(declare-fun b!2448538 () Bool)

(assert (=> b!2448538 (= e!1554675 ((_ map or) (store ((as const (Array C!14552 Bool)) false) (h!33934 lt!879595) true) (content!3930 (t!208608 lt!879595))))))

(assert (= (and d!706309 c!390829) b!2448537))

(assert (= (and d!706309 (not c!390829)) b!2448538))

(declare-fun m!2823791 () Bool)

(assert (=> b!2448538 m!2823791))

(declare-fun m!2823793 () Bool)

(assert (=> b!2448538 m!2823793))

(assert (=> d!706155 d!706309))

(declare-fun d!706317 () Bool)

(declare-fun c!390830 () Bool)

(assert (=> d!706317 (= c!390830 ((_ is Nil!28533) (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))

(declare-fun e!1554676 () (InoxSet C!14552))

(assert (=> d!706317 (= (content!3930 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) e!1554676)))

(declare-fun b!2448539 () Bool)

(assert (=> b!2448539 (= e!1554676 ((as const (Array C!14552 Bool)) false))))

(declare-fun b!2448540 () Bool)

(assert (=> b!2448540 (= e!1554676 ((_ map or) (store ((as const (Array C!14552 Bool)) false) (h!33934 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) true) (content!3930 (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))))

(assert (= (and d!706317 c!390830) b!2448539))

(assert (= (and d!706317 (not c!390830)) b!2448540))

(declare-fun m!2823795 () Bool)

(assert (=> b!2448540 m!2823795))

(declare-fun m!2823797 () Bool)

(assert (=> b!2448540 m!2823797))

(assert (=> d!706155 d!706317))

(declare-fun d!706319 () Bool)

(declare-fun c!390831 () Bool)

(assert (=> d!706319 (= c!390831 ((_ is Nil!28533) (t!208608 s!9460)))))

(declare-fun e!1554677 () (InoxSet C!14552))

(assert (=> d!706319 (= (content!3930 (t!208608 s!9460)) e!1554677)))

(declare-fun b!2448541 () Bool)

(assert (=> b!2448541 (= e!1554677 ((as const (Array C!14552 Bool)) false))))

(declare-fun b!2448542 () Bool)

(assert (=> b!2448542 (= e!1554677 ((_ map or) (store ((as const (Array C!14552 Bool)) false) (h!33934 (t!208608 s!9460)) true) (content!3930 (t!208608 (t!208608 s!9460)))))))

(assert (= (and d!706319 c!390831) b!2448541))

(assert (= (and d!706319 (not c!390831)) b!2448542))

(declare-fun m!2823799 () Bool)

(assert (=> b!2448542 m!2823799))

(declare-fun m!2823801 () Bool)

(assert (=> b!2448542 m!2823801))

(assert (=> d!706155 d!706319))

(declare-fun bs!465523 () Bool)

(declare-fun b!2448550 () Bool)

(assert (= bs!465523 (and b!2448550 b!2448137)))

(declare-fun lambda!92785 () Int)

(assert (=> bs!465523 (not (= lambda!92785 lambda!92779))))

(declare-fun bs!465524 () Bool)

(assert (= bs!465524 (and b!2448550 b!2447545)))

(assert (=> bs!465524 (= (and (= (reg!7526 (regOne!14907 (regOne!14907 r!13927))) (reg!7526 r!13927)) (= (regOne!14907 (regOne!14907 r!13927)) r!13927)) (= lambda!92785 lambda!92770))))

(declare-fun bs!465525 () Bool)

(assert (= bs!465525 (and b!2448550 b!2447542)))

(assert (=> bs!465525 (not (= lambda!92785 lambda!92771))))

(declare-fun bs!465526 () Bool)

(assert (= bs!465526 (and b!2448550 b!2448151)))

(assert (=> bs!465526 (= (and (= (reg!7526 (regOne!14907 (regOne!14907 r!13927))) (reg!7526 (regTwo!14907 r!13927))) (= (regOne!14907 (regOne!14907 r!13927)) (regTwo!14907 r!13927))) (= lambda!92785 lambda!92780))))

(declare-fun bs!465527 () Bool)

(assert (= bs!465527 (and b!2448550 b!2448140)))

(assert (=> bs!465527 (= (and (= (reg!7526 (regOne!14907 (regOne!14907 r!13927))) (reg!7526 (regOne!14907 r!13927))) (= (regOne!14907 (regOne!14907 r!13927)) (regOne!14907 r!13927))) (= lambda!92785 lambda!92778))))

(declare-fun bs!465528 () Bool)

(assert (= bs!465528 (and b!2448550 b!2448148)))

(assert (=> bs!465528 (not (= lambda!92785 lambda!92781))))

(assert (=> b!2448550 true))

(assert (=> b!2448550 true))

(declare-fun bs!465529 () Bool)

(declare-fun b!2448547 () Bool)

(assert (= bs!465529 (and b!2448547 b!2448137)))

(declare-fun lambda!92786 () Int)

(assert (=> bs!465529 (= (and (= (regOne!14906 (regOne!14907 (regOne!14907 r!13927))) (regOne!14906 (regOne!14907 r!13927))) (= (regTwo!14906 (regOne!14907 (regOne!14907 r!13927))) (regTwo!14906 (regOne!14907 r!13927)))) (= lambda!92786 lambda!92779))))

(declare-fun bs!465530 () Bool)

(assert (= bs!465530 (and b!2448547 b!2447545)))

(assert (=> bs!465530 (not (= lambda!92786 lambda!92770))))

(declare-fun bs!465531 () Bool)

(assert (= bs!465531 (and b!2448547 b!2447542)))

(assert (=> bs!465531 (= (and (= (regOne!14906 (regOne!14907 (regOne!14907 r!13927))) (regOne!14906 r!13927)) (= (regTwo!14906 (regOne!14907 (regOne!14907 r!13927))) (regTwo!14906 r!13927))) (= lambda!92786 lambda!92771))))

(declare-fun bs!465532 () Bool)

(assert (= bs!465532 (and b!2448547 b!2448151)))

(assert (=> bs!465532 (not (= lambda!92786 lambda!92780))))

(declare-fun bs!465533 () Bool)

(assert (= bs!465533 (and b!2448547 b!2448140)))

(assert (=> bs!465533 (not (= lambda!92786 lambda!92778))))

(declare-fun bs!465534 () Bool)

(assert (= bs!465534 (and b!2448547 b!2448148)))

(assert (=> bs!465534 (= (and (= (regOne!14906 (regOne!14907 (regOne!14907 r!13927))) (regOne!14906 (regTwo!14907 r!13927))) (= (regTwo!14906 (regOne!14907 (regOne!14907 r!13927))) (regTwo!14906 (regTwo!14907 r!13927)))) (= lambda!92786 lambda!92781))))

(declare-fun bs!465535 () Bool)

(assert (= bs!465535 (and b!2448547 b!2448550)))

(assert (=> bs!465535 (not (= lambda!92786 lambda!92785))))

(assert (=> b!2448547 true))

(assert (=> b!2448547 true))

(declare-fun b!2448543 () Bool)

(declare-fun e!1554680 () Bool)

(declare-fun e!1554681 () Bool)

(assert (=> b!2448543 (= e!1554680 e!1554681)))

(declare-fun res!1038940 () Bool)

(assert (=> b!2448543 (= res!1038940 (matchRSpec!1044 (regOne!14907 (regOne!14907 (regOne!14907 r!13927))) s!9460))))

(assert (=> b!2448543 (=> res!1038940 e!1554681)))

(declare-fun b!2448544 () Bool)

(declare-fun e!1554679 () Bool)

(declare-fun e!1554684 () Bool)

(assert (=> b!2448544 (= e!1554679 e!1554684)))

(declare-fun res!1038939 () Bool)

(assert (=> b!2448544 (= res!1038939 (not ((_ is EmptyLang!7197) (regOne!14907 (regOne!14907 r!13927)))))))

(assert (=> b!2448544 (=> (not res!1038939) (not e!1554684))))

(declare-fun b!2448545 () Bool)

(declare-fun e!1554678 () Bool)

(assert (=> b!2448545 (= e!1554680 e!1554678)))

(declare-fun c!390833 () Bool)

(assert (=> b!2448545 (= c!390833 ((_ is Star!7197) (regOne!14907 (regOne!14907 r!13927))))))

(declare-fun b!2448546 () Bool)

(assert (=> b!2448546 (= e!1554681 (matchRSpec!1044 (regTwo!14907 (regOne!14907 (regOne!14907 r!13927))) s!9460))))

(declare-fun call!150381 () Bool)

(declare-fun bm!150376 () Bool)

(assert (=> bm!150376 (= call!150381 (Exists!1231 (ite c!390833 lambda!92785 lambda!92786)))))

(assert (=> b!2448547 (= e!1554678 call!150381)))

(declare-fun b!2448548 () Bool)

(declare-fun res!1038941 () Bool)

(declare-fun e!1554682 () Bool)

(assert (=> b!2448548 (=> res!1038941 e!1554682)))

(declare-fun call!150382 () Bool)

(assert (=> b!2448548 (= res!1038941 call!150382)))

(assert (=> b!2448548 (= e!1554678 e!1554682)))

(declare-fun b!2448549 () Bool)

(assert (=> b!2448549 (= e!1554679 call!150382)))

(declare-fun d!706321 () Bool)

(declare-fun c!390835 () Bool)

(assert (=> d!706321 (= c!390835 ((_ is EmptyExpr!7197) (regOne!14907 (regOne!14907 r!13927))))))

(assert (=> d!706321 (= (matchRSpec!1044 (regOne!14907 (regOne!14907 r!13927)) s!9460) e!1554679)))

(declare-fun bm!150377 () Bool)

(assert (=> bm!150377 (= call!150382 (isEmpty!16569 s!9460))))

(assert (=> b!2448550 (= e!1554682 call!150381)))

(declare-fun b!2448551 () Bool)

(declare-fun e!1554683 () Bool)

(assert (=> b!2448551 (= e!1554683 (= s!9460 (Cons!28533 (c!390559 (regOne!14907 (regOne!14907 r!13927))) Nil!28533)))))

(declare-fun b!2448552 () Bool)

(declare-fun c!390834 () Bool)

(assert (=> b!2448552 (= c!390834 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14907 r!13927))))))

(assert (=> b!2448552 (= e!1554684 e!1554683)))

(declare-fun b!2448553 () Bool)

(declare-fun c!390832 () Bool)

(assert (=> b!2448553 (= c!390832 ((_ is Union!7197) (regOne!14907 (regOne!14907 r!13927))))))

(assert (=> b!2448553 (= e!1554683 e!1554680)))

(assert (= (and d!706321 c!390835) b!2448549))

(assert (= (and d!706321 (not c!390835)) b!2448544))

(assert (= (and b!2448544 res!1038939) b!2448552))

(assert (= (and b!2448552 c!390834) b!2448551))

(assert (= (and b!2448552 (not c!390834)) b!2448553))

(assert (= (and b!2448553 c!390832) b!2448543))

(assert (= (and b!2448553 (not c!390832)) b!2448545))

(assert (= (and b!2448543 (not res!1038940)) b!2448546))

(assert (= (and b!2448545 c!390833) b!2448548))

(assert (= (and b!2448545 (not c!390833)) b!2448547))

(assert (= (and b!2448548 (not res!1038941)) b!2448550))

(assert (= (or b!2448550 b!2448547) bm!150376))

(assert (= (or b!2448549 b!2448548) bm!150377))

(declare-fun m!2823825 () Bool)

(assert (=> b!2448543 m!2823825))

(declare-fun m!2823827 () Bool)

(assert (=> b!2448546 m!2823827))

(declare-fun m!2823829 () Bool)

(assert (=> bm!150376 m!2823829))

(assert (=> bm!150377 m!2822987))

(assert (=> b!2448133 d!706321))

(assert (=> b!2448070 d!706193))

(declare-fun b!2448566 () Bool)

(declare-fun res!1038943 () Bool)

(declare-fun e!1554690 () Bool)

(assert (=> b!2448566 (=> (not res!1038943) (not e!1554690))))

(declare-fun lt!879623 () List!28631)

(assert (=> b!2448566 (= res!1038943 (= (size!22268 lt!879623) (+ (size!22268 (_1!16614 (get!8823 lt!879600))) (size!22268 (_2!16614 (get!8823 lt!879600))))))))

(declare-fun d!706331 () Bool)

(assert (=> d!706331 e!1554690))

(declare-fun res!1038942 () Bool)

(assert (=> d!706331 (=> (not res!1038942) (not e!1554690))))

(assert (=> d!706331 (= res!1038942 (= (content!3930 lt!879623) ((_ map or) (content!3930 (_1!16614 (get!8823 lt!879600))) (content!3930 (_2!16614 (get!8823 lt!879600))))))))

(declare-fun e!1554691 () List!28631)

(assert (=> d!706331 (= lt!879623 e!1554691)))

(declare-fun c!390841 () Bool)

(assert (=> d!706331 (= c!390841 ((_ is Nil!28533) (_1!16614 (get!8823 lt!879600))))))

(assert (=> d!706331 (= (++!7098 (_1!16614 (get!8823 lt!879600)) (_2!16614 (get!8823 lt!879600))) lt!879623)))

(declare-fun b!2448567 () Bool)

(assert (=> b!2448567 (= e!1554690 (or (not (= (_2!16614 (get!8823 lt!879600)) Nil!28533)) (= lt!879623 (_1!16614 (get!8823 lt!879600)))))))

(declare-fun b!2448565 () Bool)

(assert (=> b!2448565 (= e!1554691 (Cons!28533 (h!33934 (_1!16614 (get!8823 lt!879600))) (++!7098 (t!208608 (_1!16614 (get!8823 lt!879600))) (_2!16614 (get!8823 lt!879600)))))))

(declare-fun b!2448564 () Bool)

(assert (=> b!2448564 (= e!1554691 (_2!16614 (get!8823 lt!879600)))))

(assert (= (and d!706331 c!390841) b!2448564))

(assert (= (and d!706331 (not c!390841)) b!2448565))

(assert (= (and d!706331 res!1038942) b!2448566))

(assert (= (and b!2448566 res!1038943) b!2448567))

(declare-fun m!2823831 () Bool)

(assert (=> b!2448566 m!2823831))

(declare-fun m!2823833 () Bool)

(assert (=> b!2448566 m!2823833))

(declare-fun m!2823835 () Bool)

(assert (=> b!2448566 m!2823835))

(declare-fun m!2823837 () Bool)

(assert (=> d!706331 m!2823837))

(declare-fun m!2823839 () Bool)

(assert (=> d!706331 m!2823839))

(declare-fun m!2823841 () Bool)

(assert (=> d!706331 m!2823841))

(declare-fun m!2823843 () Bool)

(assert (=> b!2448565 m!2823843))

(assert (=> b!2448061 d!706331))

(declare-fun d!706333 () Bool)

(assert (=> d!706333 (= (get!8823 lt!879600) (v!31091 lt!879600))))

(assert (=> b!2448061 d!706333))

(assert (=> b!2448014 d!706297))

(declare-fun b!2448606 () Bool)

(declare-fun e!1554717 () Bool)

(declare-fun call!150392 () Bool)

(assert (=> b!2448606 (= e!1554717 call!150392)))

(declare-fun bm!150387 () Bool)

(declare-fun call!150393 () Bool)

(declare-fun c!390852 () Bool)

(assert (=> bm!150387 (= call!150393 (nullable!2205 (ite c!390852 (regOne!14907 r!13927) (regTwo!14906 r!13927))))))

(declare-fun b!2448607 () Bool)

(declare-fun e!1554721 () Bool)

(assert (=> b!2448607 (= e!1554721 call!150393)))

(declare-fun b!2448608 () Bool)

(declare-fun e!1554716 () Bool)

(declare-fun e!1554719 () Bool)

(assert (=> b!2448608 (= e!1554716 e!1554719)))

(declare-fun res!1038964 () Bool)

(assert (=> b!2448608 (=> res!1038964 e!1554719)))

(assert (=> b!2448608 (= res!1038964 ((_ is Star!7197) r!13927))))

(declare-fun b!2448609 () Bool)

(declare-fun e!1554718 () Bool)

(assert (=> b!2448609 (= e!1554718 e!1554721)))

(declare-fun res!1038963 () Bool)

(assert (=> b!2448609 (= res!1038963 call!150392)))

(assert (=> b!2448609 (=> (not res!1038963) (not e!1554721))))

(declare-fun b!2448610 () Bool)

(declare-fun e!1554720 () Bool)

(assert (=> b!2448610 (= e!1554720 e!1554716)))

(declare-fun res!1038965 () Bool)

(assert (=> b!2448610 (=> (not res!1038965) (not e!1554716))))

(assert (=> b!2448610 (= res!1038965 (and (not ((_ is EmptyLang!7197) r!13927)) (not ((_ is ElementMatch!7197) r!13927))))))

(declare-fun bm!150388 () Bool)

(assert (=> bm!150388 (= call!150392 (nullable!2205 (ite c!390852 (regTwo!14907 r!13927) (regOne!14906 r!13927))))))

(declare-fun b!2448611 () Bool)

(assert (=> b!2448611 (= e!1554719 e!1554718)))

(assert (=> b!2448611 (= c!390852 ((_ is Union!7197) r!13927))))

(declare-fun b!2448612 () Bool)

(assert (=> b!2448612 (= e!1554718 e!1554717)))

(declare-fun res!1038962 () Bool)

(assert (=> b!2448612 (= res!1038962 call!150393)))

(assert (=> b!2448612 (=> res!1038962 e!1554717)))

(declare-fun d!706335 () Bool)

(declare-fun res!1038966 () Bool)

(assert (=> d!706335 (=> res!1038966 e!1554720)))

(assert (=> d!706335 (= res!1038966 ((_ is EmptyExpr!7197) r!13927))))

(assert (=> d!706335 (= (nullableFct!537 r!13927) e!1554720)))

(assert (= (and d!706335 (not res!1038966)) b!2448610))

(assert (= (and b!2448610 res!1038965) b!2448608))

(assert (= (and b!2448608 (not res!1038964)) b!2448611))

(assert (= (and b!2448611 c!390852) b!2448612))

(assert (= (and b!2448611 (not c!390852)) b!2448609))

(assert (= (and b!2448612 (not res!1038962)) b!2448606))

(assert (= (and b!2448609 res!1038963) b!2448607))

(assert (= (or b!2448612 b!2448607) bm!150387))

(assert (= (or b!2448606 b!2448609) bm!150388))

(declare-fun m!2823853 () Bool)

(assert (=> bm!150387 m!2823853))

(declare-fun m!2823855 () Bool)

(assert (=> bm!150388 m!2823855))

(assert (=> d!706195 d!706335))

(assert (=> bs!465500 d!706183))

(declare-fun d!706345 () Bool)

(declare-fun c!390853 () Bool)

(assert (=> d!706345 (= c!390853 ((_ is Nil!28533) lt!879596))))

(declare-fun e!1554722 () (InoxSet C!14552))

(assert (=> d!706345 (= (content!3930 lt!879596) e!1554722)))

(declare-fun b!2448613 () Bool)

(assert (=> b!2448613 (= e!1554722 ((as const (Array C!14552 Bool)) false))))

(declare-fun b!2448614 () Bool)

(assert (=> b!2448614 (= e!1554722 ((_ map or) (store ((as const (Array C!14552 Bool)) false) (h!33934 lt!879596) true) (content!3930 (t!208608 lt!879596))))))

(assert (= (and d!706345 c!390853) b!2448613))

(assert (= (and d!706345 (not c!390853)) b!2448614))

(declare-fun m!2823857 () Bool)

(assert (=> b!2448614 m!2823857))

(declare-fun m!2823859 () Bool)

(assert (=> b!2448614 m!2823859))

(assert (=> d!706157 d!706345))

(declare-fun d!706347 () Bool)

(assert (=> d!706347 (= (content!3930 Nil!28533) ((as const (Array C!14552 Bool)) false))))

(assert (=> d!706157 d!706347))

(declare-fun d!706349 () Bool)

(declare-fun c!390854 () Bool)

(assert (=> d!706349 (= c!390854 ((_ is Nil!28533) (Cons!28533 (h!33934 s!9460) Nil!28533)))))

(declare-fun e!1554723 () (InoxSet C!14552))

(assert (=> d!706349 (= (content!3930 (Cons!28533 (h!33934 s!9460) Nil!28533)) e!1554723)))

(declare-fun b!2448615 () Bool)

(assert (=> b!2448615 (= e!1554723 ((as const (Array C!14552 Bool)) false))))

(declare-fun b!2448616 () Bool)

(assert (=> b!2448616 (= e!1554723 ((_ map or) (store ((as const (Array C!14552 Bool)) false) (h!33934 (Cons!28533 (h!33934 s!9460) Nil!28533)) true) (content!3930 (t!208608 (Cons!28533 (h!33934 s!9460) Nil!28533)))))))

(assert (= (and d!706349 c!390854) b!2448615))

(assert (= (and d!706349 (not c!390854)) b!2448616))

(declare-fun m!2823869 () Bool)

(assert (=> b!2448616 m!2823869))

(declare-fun m!2823873 () Bool)

(assert (=> b!2448616 m!2823873))

(assert (=> d!706157 d!706349))

(assert (=> d!706211 d!706199))

(declare-fun b!2448617 () Bool)

(declare-fun e!1554730 () Bool)

(declare-fun call!150396 () Bool)

(assert (=> b!2448617 (= e!1554730 call!150396)))

(declare-fun c!390855 () Bool)

(declare-fun c!390856 () Bool)

(declare-fun call!150394 () Bool)

(declare-fun bm!150389 () Bool)

(assert (=> bm!150389 (= call!150394 (validRegex!2897 (ite c!390856 (reg!7526 (derivativeStep!1859 r!13927 (head!5570 s!9460))) (ite c!390855 (regTwo!14907 (derivativeStep!1859 r!13927 (head!5570 s!9460))) (regOne!14906 (derivativeStep!1859 r!13927 (head!5570 s!9460)))))))))

(declare-fun b!2448618 () Bool)

(declare-fun e!1554725 () Bool)

(assert (=> b!2448618 (= e!1554725 call!150394)))

(declare-fun b!2448619 () Bool)

(declare-fun e!1554727 () Bool)

(declare-fun call!150395 () Bool)

(assert (=> b!2448619 (= e!1554727 call!150395)))

(declare-fun b!2448621 () Bool)

(declare-fun res!1038970 () Bool)

(declare-fun e!1554726 () Bool)

(assert (=> b!2448621 (=> res!1038970 e!1554726)))

(assert (=> b!2448621 (= res!1038970 (not ((_ is Concat!11833) (derivativeStep!1859 r!13927 (head!5570 s!9460)))))))

(declare-fun e!1554729 () Bool)

(assert (=> b!2448621 (= e!1554729 e!1554726)))

(declare-fun bm!150390 () Bool)

(assert (=> bm!150390 (= call!150396 call!150394)))

(declare-fun b!2448622 () Bool)

(declare-fun e!1554724 () Bool)

(declare-fun e!1554728 () Bool)

(assert (=> b!2448622 (= e!1554724 e!1554728)))

(assert (=> b!2448622 (= c!390856 ((_ is Star!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(declare-fun b!2448623 () Bool)

(assert (=> b!2448623 (= e!1554728 e!1554725)))

(declare-fun res!1038967 () Bool)

(assert (=> b!2448623 (= res!1038967 (not (nullable!2205 (reg!7526 (derivativeStep!1859 r!13927 (head!5570 s!9460))))))))

(assert (=> b!2448623 (=> (not res!1038967) (not e!1554725))))

(declare-fun b!2448624 () Bool)

(assert (=> b!2448624 (= e!1554728 e!1554729)))

(assert (=> b!2448624 (= c!390855 ((_ is Union!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(declare-fun b!2448625 () Bool)

(declare-fun res!1038968 () Bool)

(assert (=> b!2448625 (=> (not res!1038968) (not e!1554730))))

(assert (=> b!2448625 (= res!1038968 call!150395)))

(assert (=> b!2448625 (= e!1554729 e!1554730)))

(declare-fun bm!150391 () Bool)

(assert (=> bm!150391 (= call!150395 (validRegex!2897 (ite c!390855 (regOne!14907 (derivativeStep!1859 r!13927 (head!5570 s!9460))) (regTwo!14906 (derivativeStep!1859 r!13927 (head!5570 s!9460))))))))

(declare-fun d!706351 () Bool)

(declare-fun res!1038969 () Bool)

(assert (=> d!706351 (=> res!1038969 e!1554724)))

(assert (=> d!706351 (= res!1038969 ((_ is ElementMatch!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(assert (=> d!706351 (= (validRegex!2897 (derivativeStep!1859 r!13927 (head!5570 s!9460))) e!1554724)))

(declare-fun b!2448620 () Bool)

(assert (=> b!2448620 (= e!1554726 e!1554727)))

(declare-fun res!1038971 () Bool)

(assert (=> b!2448620 (=> (not res!1038971) (not e!1554727))))

(assert (=> b!2448620 (= res!1038971 call!150396)))

(assert (= (and d!706351 (not res!1038969)) b!2448622))

(assert (= (and b!2448622 c!390856) b!2448623))

(assert (= (and b!2448622 (not c!390856)) b!2448624))

(assert (= (and b!2448623 res!1038967) b!2448618))

(assert (= (and b!2448624 c!390855) b!2448625))

(assert (= (and b!2448624 (not c!390855)) b!2448621))

(assert (= (and b!2448625 res!1038968) b!2448617))

(assert (= (and b!2448621 (not res!1038970)) b!2448620))

(assert (= (and b!2448620 res!1038971) b!2448619))

(assert (= (or b!2448625 b!2448619) bm!150391))

(assert (= (or b!2448617 b!2448620) bm!150390))

(assert (= (or b!2448618 bm!150390) bm!150389))

(declare-fun m!2823877 () Bool)

(assert (=> bm!150389 m!2823877))

(declare-fun m!2823879 () Bool)

(assert (=> b!2448623 m!2823879))

(declare-fun m!2823881 () Bool)

(assert (=> bm!150391 m!2823881))

(assert (=> d!706211 d!706351))

(declare-fun d!706355 () Bool)

(assert (=> d!706355 (= (isEmpty!16569 (tail!3843 (_1!16614 (get!8823 lt!879551)))) ((_ is Nil!28533) (tail!3843 (_1!16614 (get!8823 lt!879551)))))))

(assert (=> b!2448101 d!706355))

(declare-fun d!706357 () Bool)

(assert (=> d!706357 (= (tail!3843 (_1!16614 (get!8823 lt!879551))) (t!208608 (_1!16614 (get!8823 lt!879551))))))

(assert (=> b!2448101 d!706357))

(declare-fun b!2448640 () Bool)

(declare-fun e!1554744 () Bool)

(declare-fun call!150400 () Bool)

(assert (=> b!2448640 (= e!1554744 call!150400)))

(declare-fun call!150398 () Bool)

(declare-fun c!390860 () Bool)

(declare-fun c!390861 () Bool)

(declare-fun bm!150393 () Bool)

(assert (=> bm!150393 (= call!150398 (validRegex!2897 (ite c!390861 (reg!7526 (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927))) (ite c!390860 (regTwo!14907 (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927))) (regOne!14906 (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927)))))))))

(declare-fun b!2448641 () Bool)

(declare-fun e!1554739 () Bool)

(assert (=> b!2448641 (= e!1554739 call!150398)))

(declare-fun b!2448642 () Bool)

(declare-fun e!1554741 () Bool)

(declare-fun call!150399 () Bool)

(assert (=> b!2448642 (= e!1554741 call!150399)))

(declare-fun b!2448644 () Bool)

(declare-fun res!1038983 () Bool)

(declare-fun e!1554740 () Bool)

(assert (=> b!2448644 (=> res!1038983 e!1554740)))

(assert (=> b!2448644 (= res!1038983 (not ((_ is Concat!11833) (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927)))))))

(declare-fun e!1554743 () Bool)

(assert (=> b!2448644 (= e!1554743 e!1554740)))

(declare-fun bm!150394 () Bool)

(assert (=> bm!150394 (= call!150400 call!150398)))

(declare-fun b!2448645 () Bool)

(declare-fun e!1554738 () Bool)

(declare-fun e!1554742 () Bool)

(assert (=> b!2448645 (= e!1554738 e!1554742)))

(assert (=> b!2448645 (= c!390861 ((_ is Star!7197) (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927))))))

(declare-fun b!2448646 () Bool)

(assert (=> b!2448646 (= e!1554742 e!1554739)))

(declare-fun res!1038980 () Bool)

(assert (=> b!2448646 (= res!1038980 (not (nullable!2205 (reg!7526 (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927))))))))

(assert (=> b!2448646 (=> (not res!1038980) (not e!1554739))))

(declare-fun b!2448647 () Bool)

(assert (=> b!2448647 (= e!1554742 e!1554743)))

(assert (=> b!2448647 (= c!390860 ((_ is Union!7197) (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927))))))

(declare-fun b!2448648 () Bool)

(declare-fun res!1038981 () Bool)

(assert (=> b!2448648 (=> (not res!1038981) (not e!1554744))))

(assert (=> b!2448648 (= res!1038981 call!150399)))

(assert (=> b!2448648 (= e!1554743 e!1554744)))

(declare-fun bm!150395 () Bool)

(assert (=> bm!150395 (= call!150399 (validRegex!2897 (ite c!390860 (regOne!14907 (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927))) (regTwo!14906 (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927))))))))

(declare-fun d!706359 () Bool)

(declare-fun res!1038982 () Bool)

(assert (=> d!706359 (=> res!1038982 e!1554738)))

(assert (=> d!706359 (= res!1038982 ((_ is ElementMatch!7197) (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927))))))

(assert (=> d!706359 (= (validRegex!2897 (ite c!390726 (regOne!14907 r!13927) (regTwo!14906 r!13927))) e!1554738)))

(declare-fun b!2448643 () Bool)

(assert (=> b!2448643 (= e!1554740 e!1554741)))

(declare-fun res!1038984 () Bool)

(assert (=> b!2448643 (=> (not res!1038984) (not e!1554741))))

(assert (=> b!2448643 (= res!1038984 call!150400)))

(assert (= (and d!706359 (not res!1038982)) b!2448645))

(assert (= (and b!2448645 c!390861) b!2448646))

(assert (= (and b!2448645 (not c!390861)) b!2448647))

(assert (= (and b!2448646 res!1038980) b!2448641))

(assert (= (and b!2448647 c!390860) b!2448648))

(assert (= (and b!2448647 (not c!390860)) b!2448644))

(assert (= (and b!2448648 res!1038981) b!2448640))

(assert (= (and b!2448644 (not res!1038983)) b!2448643))

(assert (= (and b!2448643 res!1038984) b!2448642))

(assert (= (or b!2448648 b!2448642) bm!150395))

(assert (= (or b!2448640 b!2448643) bm!150394))

(assert (= (or b!2448641 bm!150394) bm!150393))

(declare-fun m!2823883 () Bool)

(assert (=> bm!150393 m!2823883))

(declare-fun m!2823885 () Bool)

(assert (=> b!2448646 m!2823885))

(declare-fun m!2823887 () Bool)

(assert (=> bm!150395 m!2823887))

(assert (=> bm!150308 d!706359))

(assert (=> b!2448074 d!706193))

(declare-fun d!706361 () Bool)

(declare-fun lt!879633 () Int)

(assert (=> d!706361 (>= lt!879633 0)))

(declare-fun e!1554748 () Int)

(assert (=> d!706361 (= lt!879633 e!1554748)))

(declare-fun c!390865 () Bool)

(assert (=> d!706361 (= c!390865 ((_ is Nil!28533) lt!879595))))

(assert (=> d!706361 (= (size!22268 lt!879595) lt!879633)))

(declare-fun b!2448655 () Bool)

(assert (=> b!2448655 (= e!1554748 0)))

(declare-fun b!2448656 () Bool)

(assert (=> b!2448656 (= e!1554748 (+ 1 (size!22268 (t!208608 lt!879595))))))

(assert (= (and d!706361 c!390865) b!2448655))

(assert (= (and d!706361 (not c!390865)) b!2448656))

(declare-fun m!2823905 () Bool)

(assert (=> b!2448656 m!2823905))

(assert (=> b!2448051 d!706361))

(declare-fun d!706369 () Bool)

(declare-fun lt!879634 () Int)

(assert (=> d!706369 (>= lt!879634 0)))

(declare-fun e!1554749 () Int)

(assert (=> d!706369 (= lt!879634 e!1554749)))

(declare-fun c!390866 () Bool)

(assert (=> d!706369 (= c!390866 ((_ is Nil!28533) (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))

(assert (=> d!706369 (= (size!22268 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) lt!879634)))

(declare-fun b!2448657 () Bool)

(assert (=> b!2448657 (= e!1554749 0)))

(declare-fun b!2448658 () Bool)

(assert (=> b!2448658 (= e!1554749 (+ 1 (size!22268 (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))))

(assert (= (and d!706369 c!390866) b!2448657))

(assert (= (and d!706369 (not c!390866)) b!2448658))

(declare-fun m!2823907 () Bool)

(assert (=> b!2448658 m!2823907))

(assert (=> b!2448051 d!706369))

(declare-fun d!706371 () Bool)

(declare-fun lt!879635 () Int)

(assert (=> d!706371 (>= lt!879635 0)))

(declare-fun e!1554750 () Int)

(assert (=> d!706371 (= lt!879635 e!1554750)))

(declare-fun c!390867 () Bool)

(assert (=> d!706371 (= c!390867 ((_ is Nil!28533) (t!208608 s!9460)))))

(assert (=> d!706371 (= (size!22268 (t!208608 s!9460)) lt!879635)))

(declare-fun b!2448659 () Bool)

(assert (=> b!2448659 (= e!1554750 0)))

(declare-fun b!2448660 () Bool)

(assert (=> b!2448660 (= e!1554750 (+ 1 (size!22268 (t!208608 (t!208608 s!9460)))))))

(assert (= (and d!706371 c!390867) b!2448659))

(assert (= (and d!706371 (not c!390867)) b!2448660))

(declare-fun m!2823909 () Bool)

(assert (=> b!2448660 m!2823909))

(assert (=> b!2448051 d!706371))

(declare-fun d!706375 () Bool)

(assert (=> d!706375 (= (isEmpty!16569 (_1!16614 (get!8823 lt!879551))) ((_ is Nil!28533) (_1!16614 (get!8823 lt!879551))))))

(assert (=> d!706171 d!706375))

(assert (=> d!706171 d!706183))

(declare-fun d!706377 () Bool)

(assert (=> d!706377 (= (isEmpty!16572 lt!879551) (not ((_ is Some!5683) lt!879551)))))

(assert (=> d!706147 d!706377))

(declare-fun d!706379 () Bool)

(assert (=> d!706379 (= (isEmpty!16573 (tail!3842 (t!208607 (t!208607 l!9164)))) ((_ is Nil!28532) (tail!3842 (t!208607 (t!208607 l!9164)))))))

(assert (=> b!2448126 d!706379))

(declare-fun d!706381 () Bool)

(assert (=> d!706381 (= (tail!3842 (t!208607 (t!208607 l!9164))) (t!208607 (t!208607 (t!208607 l!9164))))))

(assert (=> b!2448126 d!706381))

(assert (=> b!2448078 d!706199))

(assert (=> b!2448078 d!706201))

(declare-fun b!2448663 () Bool)

(declare-fun res!1038986 () Bool)

(declare-fun e!1554753 () Bool)

(assert (=> b!2448663 (=> res!1038986 e!1554753)))

(declare-fun e!1554758 () Bool)

(assert (=> b!2448663 (= res!1038986 e!1554758)))

(declare-fun res!1038989 () Bool)

(assert (=> b!2448663 (=> (not res!1038989) (not e!1554758))))

(declare-fun lt!879636 () Bool)

(assert (=> b!2448663 (= res!1038989 lt!879636)))

(declare-fun b!2448664 () Bool)

(declare-fun res!1038985 () Bool)

(assert (=> b!2448664 (=> (not res!1038985) (not e!1554758))))

(declare-fun call!150401 () Bool)

(assert (=> b!2448664 (= res!1038985 (not call!150401))))

(declare-fun b!2448665 () Bool)

(declare-fun e!1554752 () Bool)

(assert (=> b!2448665 (= e!1554752 (= lt!879636 call!150401))))

(declare-fun b!2448666 () Bool)

(declare-fun res!1038987 () Bool)

(assert (=> b!2448666 (=> res!1038987 e!1554753)))

(assert (=> b!2448666 (= res!1038987 (not ((_ is ElementMatch!7197) (h!33933 l!9164))))))

(declare-fun e!1554757 () Bool)

(assert (=> b!2448666 (= e!1554757 e!1554753)))

(declare-fun b!2448667 () Bool)

(declare-fun e!1554755 () Bool)

(assert (=> b!2448667 (= e!1554755 (not (= (head!5570 (_1!16614 (get!8823 lt!879600))) (c!390559 (h!33933 l!9164)))))))

(declare-fun bm!150396 () Bool)

(assert (=> bm!150396 (= call!150401 (isEmpty!16569 (_1!16614 (get!8823 lt!879600))))))

(declare-fun b!2448668 () Bool)

(declare-fun e!1554756 () Bool)

(assert (=> b!2448668 (= e!1554753 e!1554756)))

(declare-fun res!1038990 () Bool)

(assert (=> b!2448668 (=> (not res!1038990) (not e!1554756))))

(assert (=> b!2448668 (= res!1038990 (not lt!879636))))

(declare-fun b!2448669 () Bool)

(declare-fun res!1038988 () Bool)

(assert (=> b!2448669 (=> (not res!1038988) (not e!1554758))))

(assert (=> b!2448669 (= res!1038988 (isEmpty!16569 (tail!3843 (_1!16614 (get!8823 lt!879600)))))))

(declare-fun d!706383 () Bool)

(assert (=> d!706383 e!1554752))

(declare-fun c!390870 () Bool)

(assert (=> d!706383 (= c!390870 ((_ is EmptyExpr!7197) (h!33933 l!9164)))))

(declare-fun e!1554754 () Bool)

(assert (=> d!706383 (= lt!879636 e!1554754)))

(declare-fun c!390869 () Bool)

(assert (=> d!706383 (= c!390869 (isEmpty!16569 (_1!16614 (get!8823 lt!879600))))))

(assert (=> d!706383 (validRegex!2897 (h!33933 l!9164))))

(assert (=> d!706383 (= (matchR!3312 (h!33933 l!9164) (_1!16614 (get!8823 lt!879600))) lt!879636)))

(declare-fun b!2448670 () Bool)

(assert (=> b!2448670 (= e!1554756 e!1554755)))

(declare-fun res!1038992 () Bool)

(assert (=> b!2448670 (=> res!1038992 e!1554755)))

(assert (=> b!2448670 (= res!1038992 call!150401)))

(declare-fun b!2448671 () Bool)

(assert (=> b!2448671 (= e!1554758 (= (head!5570 (_1!16614 (get!8823 lt!879600))) (c!390559 (h!33933 l!9164))))))

(declare-fun b!2448672 () Bool)

(assert (=> b!2448672 (= e!1554757 (not lt!879636))))

(declare-fun b!2448673 () Bool)

(assert (=> b!2448673 (= e!1554752 e!1554757)))

(declare-fun c!390871 () Bool)

(assert (=> b!2448673 (= c!390871 ((_ is EmptyLang!7197) (h!33933 l!9164)))))

(declare-fun b!2448674 () Bool)

(assert (=> b!2448674 (= e!1554754 (nullable!2205 (h!33933 l!9164)))))

(declare-fun b!2448675 () Bool)

(declare-fun res!1038991 () Bool)

(assert (=> b!2448675 (=> res!1038991 e!1554755)))

(assert (=> b!2448675 (= res!1038991 (not (isEmpty!16569 (tail!3843 (_1!16614 (get!8823 lt!879600))))))))

(declare-fun b!2448676 () Bool)

(assert (=> b!2448676 (= e!1554754 (matchR!3312 (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879600)))) (tail!3843 (_1!16614 (get!8823 lt!879600)))))))

(assert (= (and d!706383 c!390869) b!2448674))

(assert (= (and d!706383 (not c!390869)) b!2448676))

(assert (= (and d!706383 c!390870) b!2448665))

(assert (= (and d!706383 (not c!390870)) b!2448673))

(assert (= (and b!2448673 c!390871) b!2448672))

(assert (= (and b!2448673 (not c!390871)) b!2448666))

(assert (= (and b!2448666 (not res!1038987)) b!2448663))

(assert (= (and b!2448663 res!1038989) b!2448664))

(assert (= (and b!2448664 res!1038985) b!2448669))

(assert (= (and b!2448669 res!1038988) b!2448671))

(assert (= (and b!2448663 (not res!1038986)) b!2448668))

(assert (= (and b!2448668 res!1038990) b!2448670))

(assert (= (and b!2448670 (not res!1038992)) b!2448675))

(assert (= (and b!2448675 (not res!1038991)) b!2448667))

(assert (= (or b!2448665 b!2448664 b!2448670) bm!150396))

(declare-fun m!2823919 () Bool)

(assert (=> b!2448667 m!2823919))

(declare-fun m!2823921 () Bool)

(assert (=> bm!150396 m!2823921))

(assert (=> b!2448674 m!2823497))

(declare-fun m!2823923 () Bool)

(assert (=> b!2448669 m!2823923))

(assert (=> b!2448669 m!2823923))

(declare-fun m!2823925 () Bool)

(assert (=> b!2448669 m!2823925))

(assert (=> b!2448675 m!2823923))

(assert (=> b!2448675 m!2823923))

(assert (=> b!2448675 m!2823925))

(assert (=> b!2448671 m!2823919))

(assert (=> d!706383 m!2823921))

(assert (=> d!706383 m!2823055))

(assert (=> b!2448676 m!2823919))

(assert (=> b!2448676 m!2823919))

(declare-fun m!2823929 () Bool)

(assert (=> b!2448676 m!2823929))

(assert (=> b!2448676 m!2823923))

(assert (=> b!2448676 m!2823929))

(assert (=> b!2448676 m!2823923))

(declare-fun m!2823931 () Bool)

(assert (=> b!2448676 m!2823931))

(assert (=> b!2448065 d!706383))

(assert (=> b!2448065 d!706333))

(declare-fun d!706393 () Bool)

(assert (=> d!706393 (= (isEmpty!16569 (tail!3843 (_2!16614 (get!8823 lt!879551)))) ((_ is Nil!28533) (tail!3843 (_2!16614 (get!8823 lt!879551)))))))

(assert (=> b!2448018 d!706393))

(declare-fun d!706395 () Bool)

(assert (=> d!706395 (= (tail!3843 (_2!16614 (get!8823 lt!879551))) (t!208608 (_2!16614 (get!8823 lt!879551))))))

(assert (=> b!2448018 d!706395))

(declare-fun d!706397 () Bool)

(assert (=> d!706397 (= (head!5570 (tail!3843 s!9460)) (h!33934 (tail!3843 s!9460)))))

(assert (=> b!2448159 d!706397))

(assert (=> bm!150309 d!706375))

(declare-fun d!706399 () Bool)

(assert (=> d!706399 (= (nullable!2205 (regOne!14906 r!13927)) (nullableFct!537 (regOne!14906 r!13927)))))

(declare-fun bs!465537 () Bool)

(assert (= bs!465537 d!706399))

(declare-fun m!2823933 () Bool)

(assert (=> bs!465537 m!2823933))

(assert (=> b!2448194 d!706399))

(declare-fun bs!465538 () Bool)

(declare-fun d!706403 () Bool)

(assert (= bs!465538 (and d!706403 start!239146)))

(declare-fun lambda!92787 () Int)

(assert (=> bs!465538 (= lambda!92787 lambda!92751)))

(declare-fun bs!465539 () Bool)

(assert (= bs!465539 (and d!706403 d!706015)))

(assert (=> bs!465539 (= lambda!92787 lambda!92764)))

(declare-fun bs!465540 () Bool)

(assert (= bs!465540 (and d!706403 d!706027)))

(assert (=> bs!465540 (= lambda!92787 lambda!92765)))

(declare-fun bs!465541 () Bool)

(assert (= bs!465541 (and d!706403 d!706197)))

(assert (=> bs!465541 (= lambda!92787 lambda!92777)))

(declare-fun b!2448685 () Bool)

(declare-fun e!1554768 () Bool)

(declare-fun lt!879640 () Regex!7197)

(assert (=> b!2448685 (= e!1554768 (= lt!879640 (head!5569 (t!208607 (t!208607 (t!208607 l!9164))))))))

(declare-fun b!2448686 () Bool)

(declare-fun e!1554769 () Regex!7197)

(assert (=> b!2448686 (= e!1554769 EmptyExpr!7197)))

(declare-fun b!2448687 () Bool)

(declare-fun e!1554764 () Bool)

(assert (=> b!2448687 (= e!1554764 (isEmptyExpr!224 lt!879640))))

(declare-fun b!2448688 () Bool)

(assert (=> b!2448688 (= e!1554764 e!1554768)))

(declare-fun c!390878 () Bool)

(assert (=> b!2448688 (= c!390878 (isEmpty!16573 (tail!3842 (t!208607 (t!208607 (t!208607 l!9164))))))))

(declare-fun b!2448689 () Bool)

(declare-fun e!1554767 () Bool)

(assert (=> b!2448689 (= e!1554767 e!1554764)))

(declare-fun c!390875 () Bool)

(assert (=> b!2448689 (= c!390875 (isEmpty!16573 (t!208607 (t!208607 (t!208607 l!9164)))))))

(assert (=> d!706403 e!1554767))

(declare-fun res!1038996 () Bool)

(assert (=> d!706403 (=> (not res!1038996) (not e!1554767))))

(assert (=> d!706403 (= res!1038996 (validRegex!2897 lt!879640))))

(declare-fun e!1554766 () Regex!7197)

(assert (=> d!706403 (= lt!879640 e!1554766)))

(declare-fun c!390877 () Bool)

(declare-fun e!1554765 () Bool)

(assert (=> d!706403 (= c!390877 e!1554765)))

(declare-fun res!1038995 () Bool)

(assert (=> d!706403 (=> (not res!1038995) (not e!1554765))))

(assert (=> d!706403 (= res!1038995 ((_ is Cons!28532) (t!208607 (t!208607 (t!208607 l!9164)))))))

(assert (=> d!706403 (forall!5831 (t!208607 (t!208607 (t!208607 l!9164))) lambda!92787)))

(assert (=> d!706403 (= (generalisedConcat!298 (t!208607 (t!208607 (t!208607 l!9164)))) lt!879640)))

(declare-fun b!2448690 () Bool)

(assert (=> b!2448690 (= e!1554765 (isEmpty!16573 (t!208607 (t!208607 (t!208607 (t!208607 l!9164))))))))

(declare-fun b!2448691 () Bool)

(assert (=> b!2448691 (= e!1554768 (isConcat!224 lt!879640))))

(declare-fun b!2448692 () Bool)

(assert (=> b!2448692 (= e!1554766 e!1554769)))

(declare-fun c!390876 () Bool)

(assert (=> b!2448692 (= c!390876 ((_ is Cons!28532) (t!208607 (t!208607 (t!208607 l!9164)))))))

(declare-fun b!2448693 () Bool)

(assert (=> b!2448693 (= e!1554769 (Concat!11833 (h!33933 (t!208607 (t!208607 (t!208607 l!9164)))) (generalisedConcat!298 (t!208607 (t!208607 (t!208607 (t!208607 l!9164)))))))))

(declare-fun b!2448694 () Bool)

(assert (=> b!2448694 (= e!1554766 (h!33933 (t!208607 (t!208607 (t!208607 l!9164)))))))

(assert (= (and d!706403 res!1038995) b!2448690))

(assert (= (and d!706403 c!390877) b!2448694))

(assert (= (and d!706403 (not c!390877)) b!2448692))

(assert (= (and b!2448692 c!390876) b!2448693))

(assert (= (and b!2448692 (not c!390876)) b!2448686))

(assert (= (and d!706403 res!1038996) b!2448689))

(assert (= (and b!2448689 c!390875) b!2448687))

(assert (= (and b!2448689 (not c!390875)) b!2448688))

(assert (= (and b!2448688 c!390878) b!2448685))

(assert (= (and b!2448688 (not c!390878)) b!2448691))

(declare-fun m!2823941 () Bool)

(assert (=> b!2448687 m!2823941))

(assert (=> b!2448689 m!2823539))

(declare-fun m!2823943 () Bool)

(assert (=> b!2448693 m!2823943))

(declare-fun m!2823945 () Bool)

(assert (=> d!706403 m!2823945))

(declare-fun m!2823947 () Bool)

(assert (=> d!706403 m!2823947))

(declare-fun m!2823949 () Bool)

(assert (=> b!2448688 m!2823949))

(assert (=> b!2448688 m!2823949))

(declare-fun m!2823951 () Bool)

(assert (=> b!2448688 m!2823951))

(declare-fun m!2823953 () Bool)

(assert (=> b!2448685 m!2823953))

(declare-fun m!2823955 () Bool)

(assert (=> b!2448690 m!2823955))

(declare-fun m!2823957 () Bool)

(assert (=> b!2448691 m!2823957))

(assert (=> b!2448131 d!706403))

(declare-fun b!2448706 () Bool)

(declare-fun e!1554785 () Bool)

(declare-fun call!150407 () Bool)

(assert (=> b!2448706 (= e!1554785 call!150407)))

(declare-fun call!150405 () Bool)

(declare-fun bm!150400 () Bool)

(declare-fun c!390882 () Bool)

(declare-fun c!390881 () Bool)

(assert (=> bm!150400 (= call!150405 (validRegex!2897 (ite c!390882 (reg!7526 lt!879609) (ite c!390881 (regTwo!14907 lt!879609) (regOne!14906 lt!879609)))))))

(declare-fun b!2448707 () Bool)

(declare-fun e!1554780 () Bool)

(assert (=> b!2448707 (= e!1554780 call!150405)))

(declare-fun b!2448708 () Bool)

(declare-fun e!1554782 () Bool)

(declare-fun call!150406 () Bool)

(assert (=> b!2448708 (= e!1554782 call!150406)))

(declare-fun b!2448710 () Bool)

(declare-fun res!1039007 () Bool)

(declare-fun e!1554781 () Bool)

(assert (=> b!2448710 (=> res!1039007 e!1554781)))

(assert (=> b!2448710 (= res!1039007 (not ((_ is Concat!11833) lt!879609)))))

(declare-fun e!1554784 () Bool)

(assert (=> b!2448710 (= e!1554784 e!1554781)))

(declare-fun bm!150401 () Bool)

(assert (=> bm!150401 (= call!150407 call!150405)))

(declare-fun b!2448711 () Bool)

(declare-fun e!1554779 () Bool)

(declare-fun e!1554783 () Bool)

(assert (=> b!2448711 (= e!1554779 e!1554783)))

(assert (=> b!2448711 (= c!390882 ((_ is Star!7197) lt!879609))))

(declare-fun b!2448712 () Bool)

(assert (=> b!2448712 (= e!1554783 e!1554780)))

(declare-fun res!1039004 () Bool)

(assert (=> b!2448712 (= res!1039004 (not (nullable!2205 (reg!7526 lt!879609))))))

(assert (=> b!2448712 (=> (not res!1039004) (not e!1554780))))

(declare-fun b!2448713 () Bool)

(assert (=> b!2448713 (= e!1554783 e!1554784)))

(assert (=> b!2448713 (= c!390881 ((_ is Union!7197) lt!879609))))

(declare-fun b!2448714 () Bool)

(declare-fun res!1039005 () Bool)

(assert (=> b!2448714 (=> (not res!1039005) (not e!1554785))))

(assert (=> b!2448714 (= res!1039005 call!150406)))

(assert (=> b!2448714 (= e!1554784 e!1554785)))

(declare-fun bm!150402 () Bool)

(assert (=> bm!150402 (= call!150406 (validRegex!2897 (ite c!390881 (regOne!14907 lt!879609) (regTwo!14906 lt!879609))))))

(declare-fun d!706413 () Bool)

(declare-fun res!1039006 () Bool)

(assert (=> d!706413 (=> res!1039006 e!1554779)))

(assert (=> d!706413 (= res!1039006 ((_ is ElementMatch!7197) lt!879609))))

(assert (=> d!706413 (= (validRegex!2897 lt!879609) e!1554779)))

(declare-fun b!2448709 () Bool)

(assert (=> b!2448709 (= e!1554781 e!1554782)))

(declare-fun res!1039008 () Bool)

(assert (=> b!2448709 (=> (not res!1039008) (not e!1554782))))

(assert (=> b!2448709 (= res!1039008 call!150407)))

(assert (= (and d!706413 (not res!1039006)) b!2448711))

(assert (= (and b!2448711 c!390882) b!2448712))

(assert (= (and b!2448711 (not c!390882)) b!2448713))

(assert (= (and b!2448712 res!1039004) b!2448707))

(assert (= (and b!2448713 c!390881) b!2448714))

(assert (= (and b!2448713 (not c!390881)) b!2448710))

(assert (= (and b!2448714 res!1039005) b!2448706))

(assert (= (and b!2448710 (not res!1039007)) b!2448709))

(assert (= (and b!2448709 res!1039008) b!2448708))

(assert (= (or b!2448714 b!2448708) bm!150402))

(assert (= (or b!2448706 b!2448709) bm!150401))

(assert (= (or b!2448707 bm!150401) bm!150400))

(declare-fun m!2823959 () Bool)

(assert (=> bm!150400 m!2823959))

(declare-fun m!2823961 () Bool)

(assert (=> b!2448712 m!2823961))

(declare-fun m!2823963 () Bool)

(assert (=> bm!150402 m!2823963))

(assert (=> d!706213 d!706413))

(assert (=> d!706213 d!706169))

(declare-fun d!706415 () Bool)

(declare-fun lt!879641 () Int)

(assert (=> d!706415 (>= lt!879641 0)))

(declare-fun e!1554786 () Int)

(assert (=> d!706415 (= lt!879641 e!1554786)))

(declare-fun c!390883 () Bool)

(assert (=> d!706415 (= c!390883 ((_ is Nil!28533) lt!879596))))

(assert (=> d!706415 (= (size!22268 lt!879596) lt!879641)))

(declare-fun b!2448715 () Bool)

(assert (=> b!2448715 (= e!1554786 0)))

(declare-fun b!2448716 () Bool)

(assert (=> b!2448716 (= e!1554786 (+ 1 (size!22268 (t!208608 lt!879596))))))

(assert (= (and d!706415 c!390883) b!2448715))

(assert (= (and d!706415 (not c!390883)) b!2448716))

(declare-fun m!2823965 () Bool)

(assert (=> b!2448716 m!2823965))

(assert (=> b!2448055 d!706415))

(declare-fun d!706417 () Bool)

(declare-fun lt!879642 () Int)

(assert (=> d!706417 (>= lt!879642 0)))

(declare-fun e!1554787 () Int)

(assert (=> d!706417 (= lt!879642 e!1554787)))

(declare-fun c!390884 () Bool)

(assert (=> d!706417 (= c!390884 ((_ is Nil!28533) Nil!28533))))

(assert (=> d!706417 (= (size!22268 Nil!28533) lt!879642)))

(declare-fun b!2448717 () Bool)

(assert (=> b!2448717 (= e!1554787 0)))

(declare-fun b!2448718 () Bool)

(assert (=> b!2448718 (= e!1554787 (+ 1 (size!22268 (t!208608 Nil!28533))))))

(assert (= (and d!706417 c!390884) b!2448717))

(assert (= (and d!706417 (not c!390884)) b!2448718))

(declare-fun m!2823969 () Bool)

(assert (=> b!2448718 m!2823969))

(assert (=> b!2448055 d!706417))

(declare-fun d!706419 () Bool)

(declare-fun lt!879643 () Int)

(assert (=> d!706419 (>= lt!879643 0)))

(declare-fun e!1554788 () Int)

(assert (=> d!706419 (= lt!879643 e!1554788)))

(declare-fun c!390885 () Bool)

(assert (=> d!706419 (= c!390885 ((_ is Nil!28533) (Cons!28533 (h!33934 s!9460) Nil!28533)))))

(assert (=> d!706419 (= (size!22268 (Cons!28533 (h!33934 s!9460) Nil!28533)) lt!879643)))

(declare-fun b!2448719 () Bool)

(assert (=> b!2448719 (= e!1554788 0)))

(declare-fun b!2448720 () Bool)

(assert (=> b!2448720 (= e!1554788 (+ 1 (size!22268 (t!208608 (Cons!28533 (h!33934 s!9460) Nil!28533)))))))

(assert (= (and d!706419 c!390885) b!2448719))

(assert (= (and d!706419 (not c!390885)) b!2448720))

(declare-fun m!2823975 () Bool)

(assert (=> b!2448720 m!2823975))

(assert (=> b!2448055 d!706419))

(assert (=> b!2448163 d!706397))

(assert (=> bm!150305 d!706003))

(declare-fun b!2448732 () Bool)

(declare-fun res!1039013 () Bool)

(declare-fun e!1554797 () Bool)

(assert (=> b!2448732 (=> res!1039013 e!1554797)))

(declare-fun e!1554802 () Bool)

(assert (=> b!2448732 (= res!1039013 e!1554802)))

(declare-fun res!1039016 () Bool)

(assert (=> b!2448732 (=> (not res!1039016) (not e!1554802))))

(declare-fun lt!879644 () Bool)

(assert (=> b!2448732 (= res!1039016 lt!879644)))

(declare-fun b!2448733 () Bool)

(declare-fun res!1039012 () Bool)

(assert (=> b!2448733 (=> (not res!1039012) (not e!1554802))))

(declare-fun call!150410 () Bool)

(assert (=> b!2448733 (= res!1039012 (not call!150410))))

(declare-fun b!2448734 () Bool)

(declare-fun e!1554796 () Bool)

(assert (=> b!2448734 (= e!1554796 (= lt!879644 call!150410))))

(declare-fun b!2448735 () Bool)

(declare-fun res!1039014 () Bool)

(assert (=> b!2448735 (=> res!1039014 e!1554797)))

(assert (=> b!2448735 (= res!1039014 (not ((_ is ElementMatch!7197) (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun e!1554801 () Bool)

(assert (=> b!2448735 (= e!1554801 e!1554797)))

(declare-fun b!2448736 () Bool)

(declare-fun e!1554799 () Bool)

(assert (=> b!2448736 (= e!1554799 (not (= (head!5570 (t!208608 s!9460)) (c!390559 (generalisedConcat!298 (t!208607 l!9164))))))))

(declare-fun bm!150405 () Bool)

(assert (=> bm!150405 (= call!150410 (isEmpty!16569 (t!208608 s!9460)))))

(declare-fun b!2448737 () Bool)

(declare-fun e!1554800 () Bool)

(assert (=> b!2448737 (= e!1554797 e!1554800)))

(declare-fun res!1039017 () Bool)

(assert (=> b!2448737 (=> (not res!1039017) (not e!1554800))))

(assert (=> b!2448737 (= res!1039017 (not lt!879644))))

(declare-fun b!2448738 () Bool)

(declare-fun res!1039015 () Bool)

(assert (=> b!2448738 (=> (not res!1039015) (not e!1554802))))

(assert (=> b!2448738 (= res!1039015 (isEmpty!16569 (tail!3843 (t!208608 s!9460))))))

(declare-fun d!706423 () Bool)

(assert (=> d!706423 e!1554796))

(declare-fun c!390891 () Bool)

(assert (=> d!706423 (= c!390891 ((_ is EmptyExpr!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun e!1554798 () Bool)

(assert (=> d!706423 (= lt!879644 e!1554798)))

(declare-fun c!390890 () Bool)

(assert (=> d!706423 (= c!390890 (isEmpty!16569 (t!208608 s!9460)))))

(assert (=> d!706423 (validRegex!2897 (generalisedConcat!298 (t!208607 l!9164)))))

(assert (=> d!706423 (= (matchR!3312 (generalisedConcat!298 (t!208607 l!9164)) (t!208608 s!9460)) lt!879644)))

(declare-fun b!2448739 () Bool)

(assert (=> b!2448739 (= e!1554800 e!1554799)))

(declare-fun res!1039019 () Bool)

(assert (=> b!2448739 (=> res!1039019 e!1554799)))

(assert (=> b!2448739 (= res!1039019 call!150410)))

(declare-fun b!2448740 () Bool)

(assert (=> b!2448740 (= e!1554802 (= (head!5570 (t!208608 s!9460)) (c!390559 (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun b!2448741 () Bool)

(assert (=> b!2448741 (= e!1554801 (not lt!879644))))

(declare-fun b!2448742 () Bool)

(assert (=> b!2448742 (= e!1554796 e!1554801)))

(declare-fun c!390892 () Bool)

(assert (=> b!2448742 (= c!390892 ((_ is EmptyLang!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448743 () Bool)

(assert (=> b!2448743 (= e!1554798 (nullable!2205 (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448744 () Bool)

(declare-fun res!1039018 () Bool)

(assert (=> b!2448744 (=> res!1039018 e!1554799)))

(assert (=> b!2448744 (= res!1039018 (not (isEmpty!16569 (tail!3843 (t!208608 s!9460)))))))

(declare-fun b!2448745 () Bool)

(assert (=> b!2448745 (= e!1554798 (matchR!3312 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (t!208608 s!9460))) (tail!3843 (t!208608 s!9460))))))

(assert (= (and d!706423 c!390890) b!2448743))

(assert (= (and d!706423 (not c!390890)) b!2448745))

(assert (= (and d!706423 c!390891) b!2448734))

(assert (= (and d!706423 (not c!390891)) b!2448742))

(assert (= (and b!2448742 c!390892) b!2448741))

(assert (= (and b!2448742 (not c!390892)) b!2448735))

(assert (= (and b!2448735 (not res!1039014)) b!2448732))

(assert (= (and b!2448732 res!1039016) b!2448733))

(assert (= (and b!2448733 res!1039012) b!2448738))

(assert (= (and b!2448738 res!1039015) b!2448740))

(assert (= (and b!2448732 (not res!1039013)) b!2448737))

(assert (= (and b!2448737 res!1039017) b!2448739))

(assert (= (and b!2448739 (not res!1039019)) b!2448744))

(assert (= (and b!2448744 (not res!1039018)) b!2448736))

(assert (= (or b!2448734 b!2448733 b!2448739) bm!150405))

(declare-fun m!2823977 () Bool)

(assert (=> b!2448736 m!2823977))

(declare-fun m!2823979 () Bool)

(assert (=> bm!150405 m!2823979))

(assert (=> b!2448743 m!2822979))

(assert (=> b!2448743 m!2823405))

(declare-fun m!2823981 () Bool)

(assert (=> b!2448738 m!2823981))

(assert (=> b!2448738 m!2823981))

(declare-fun m!2823983 () Bool)

(assert (=> b!2448738 m!2823983))

(assert (=> b!2448744 m!2823981))

(assert (=> b!2448744 m!2823981))

(assert (=> b!2448744 m!2823983))

(assert (=> b!2448740 m!2823977))

(assert (=> d!706423 m!2823979))

(assert (=> d!706423 m!2822979))

(assert (=> d!706423 m!2823411))

(assert (=> b!2448745 m!2823977))

(assert (=> b!2448745 m!2822979))

(assert (=> b!2448745 m!2823977))

(declare-fun m!2823985 () Bool)

(assert (=> b!2448745 m!2823985))

(assert (=> b!2448745 m!2823981))

(assert (=> b!2448745 m!2823985))

(assert (=> b!2448745 m!2823981))

(declare-fun m!2823987 () Bool)

(assert (=> b!2448745 m!2823987))

(assert (=> b!2448057 d!706423))

(assert (=> bm!150295 d!706277))

(declare-fun d!706425 () Bool)

(declare-fun lt!879645 () Int)

(assert (=> d!706425 (>= lt!879645 0)))

(declare-fun e!1554803 () Int)

(assert (=> d!706425 (= lt!879645 e!1554803)))

(declare-fun c!390893 () Bool)

(assert (=> d!706425 (= c!390893 ((_ is Nil!28533) lt!879593))))

(assert (=> d!706425 (= (size!22268 lt!879593) lt!879645)))

(declare-fun b!2448746 () Bool)

(assert (=> b!2448746 (= e!1554803 0)))

(declare-fun b!2448747 () Bool)

(assert (=> b!2448747 (= e!1554803 (+ 1 (size!22268 (t!208608 lt!879593))))))

(assert (= (and d!706425 c!390893) b!2448746))

(assert (= (and d!706425 (not c!390893)) b!2448747))

(declare-fun m!2823989 () Bool)

(assert (=> b!2448747 m!2823989))

(assert (=> b!2448004 d!706425))

(declare-fun d!706427 () Bool)

(declare-fun lt!879646 () Int)

(assert (=> d!706427 (>= lt!879646 0)))

(declare-fun e!1554804 () Int)

(assert (=> d!706427 (= lt!879646 e!1554804)))

(declare-fun c!390894 () Bool)

(assert (=> d!706427 (= c!390894 ((_ is Nil!28533) (_1!16614 (get!8823 lt!879551))))))

(assert (=> d!706427 (= (size!22268 (_1!16614 (get!8823 lt!879551))) lt!879646)))

(declare-fun b!2448748 () Bool)

(assert (=> b!2448748 (= e!1554804 0)))

(declare-fun b!2448749 () Bool)

(assert (=> b!2448749 (= e!1554804 (+ 1 (size!22268 (t!208608 (_1!16614 (get!8823 lt!879551))))))))

(assert (= (and d!706427 c!390894) b!2448748))

(assert (= (and d!706427 (not c!390894)) b!2448749))

(assert (=> b!2448749 m!2823745))

(assert (=> b!2448004 d!706427))

(declare-fun d!706429 () Bool)

(declare-fun lt!879647 () Int)

(assert (=> d!706429 (>= lt!879647 0)))

(declare-fun e!1554805 () Int)

(assert (=> d!706429 (= lt!879647 e!1554805)))

(declare-fun c!390895 () Bool)

(assert (=> d!706429 (= c!390895 ((_ is Nil!28533) (_2!16614 (get!8823 lt!879551))))))

(assert (=> d!706429 (= (size!22268 (_2!16614 (get!8823 lt!879551))) lt!879647)))

(declare-fun b!2448750 () Bool)

(assert (=> b!2448750 (= e!1554805 0)))

(declare-fun b!2448751 () Bool)

(assert (=> b!2448751 (= e!1554805 (+ 1 (size!22268 (t!208608 (_2!16614 (get!8823 lt!879551))))))))

(assert (= (and d!706429 c!390895) b!2448750))

(assert (= (and d!706429 (not c!390895)) b!2448751))

(declare-fun m!2823991 () Bool)

(assert (=> b!2448751 m!2823991))

(assert (=> b!2448004 d!706429))

(declare-fun d!706431 () Bool)

(assert (=> d!706431 (= (nullable!2205 (reg!7526 (h!33933 l!9164))) (nullableFct!537 (reg!7526 (h!33933 l!9164))))))

(declare-fun bs!465544 () Bool)

(assert (= bs!465544 d!706431))

(declare-fun m!2823993 () Bool)

(assert (=> bs!465544 m!2823993))

(assert (=> b!2448109 d!706431))

(declare-fun d!706433 () Bool)

(assert (=> d!706433 (= (isEmpty!16569 (tail!3843 (tail!3843 s!9460))) ((_ is Nil!28533) (tail!3843 (tail!3843 s!9460))))))

(assert (=> b!2448167 d!706433))

(declare-fun d!706435 () Bool)

(assert (=> d!706435 (= (tail!3843 (tail!3843 s!9460)) (t!208608 (tail!3843 s!9460)))))

(assert (=> b!2448167 d!706435))

(declare-fun b!2448752 () Bool)

(declare-fun e!1554812 () Bool)

(declare-fun call!150413 () Bool)

(assert (=> b!2448752 (= e!1554812 call!150413)))

(declare-fun bm!150406 () Bool)

(declare-fun c!390897 () Bool)

(declare-fun c!390896 () Bool)

(declare-fun call!150411 () Bool)

(assert (=> bm!150406 (= call!150411 (validRegex!2897 (ite c!390897 (reg!7526 (h!33933 (t!208607 l!9164))) (ite c!390896 (regTwo!14907 (h!33933 (t!208607 l!9164))) (regOne!14906 (h!33933 (t!208607 l!9164)))))))))

(declare-fun b!2448753 () Bool)

(declare-fun e!1554807 () Bool)

(assert (=> b!2448753 (= e!1554807 call!150411)))

(declare-fun b!2448754 () Bool)

(declare-fun e!1554809 () Bool)

(declare-fun call!150412 () Bool)

(assert (=> b!2448754 (= e!1554809 call!150412)))

(declare-fun b!2448756 () Bool)

(declare-fun res!1039023 () Bool)

(declare-fun e!1554808 () Bool)

(assert (=> b!2448756 (=> res!1039023 e!1554808)))

(assert (=> b!2448756 (= res!1039023 (not ((_ is Concat!11833) (h!33933 (t!208607 l!9164)))))))

(declare-fun e!1554811 () Bool)

(assert (=> b!2448756 (= e!1554811 e!1554808)))

(declare-fun bm!150407 () Bool)

(assert (=> bm!150407 (= call!150413 call!150411)))

(declare-fun b!2448757 () Bool)

(declare-fun e!1554806 () Bool)

(declare-fun e!1554810 () Bool)

(assert (=> b!2448757 (= e!1554806 e!1554810)))

(assert (=> b!2448757 (= c!390897 ((_ is Star!7197) (h!33933 (t!208607 l!9164))))))

(declare-fun b!2448758 () Bool)

(assert (=> b!2448758 (= e!1554810 e!1554807)))

(declare-fun res!1039020 () Bool)

(assert (=> b!2448758 (= res!1039020 (not (nullable!2205 (reg!7526 (h!33933 (t!208607 l!9164))))))))

(assert (=> b!2448758 (=> (not res!1039020) (not e!1554807))))

(declare-fun b!2448759 () Bool)

(assert (=> b!2448759 (= e!1554810 e!1554811)))

(assert (=> b!2448759 (= c!390896 ((_ is Union!7197) (h!33933 (t!208607 l!9164))))))

(declare-fun b!2448760 () Bool)

(declare-fun res!1039021 () Bool)

(assert (=> b!2448760 (=> (not res!1039021) (not e!1554812))))

(assert (=> b!2448760 (= res!1039021 call!150412)))

(assert (=> b!2448760 (= e!1554811 e!1554812)))

(declare-fun bm!150408 () Bool)

(assert (=> bm!150408 (= call!150412 (validRegex!2897 (ite c!390896 (regOne!14907 (h!33933 (t!208607 l!9164))) (regTwo!14906 (h!33933 (t!208607 l!9164))))))))

(declare-fun d!706437 () Bool)

(declare-fun res!1039022 () Bool)

(assert (=> d!706437 (=> res!1039022 e!1554806)))

(assert (=> d!706437 (= res!1039022 ((_ is ElementMatch!7197) (h!33933 (t!208607 l!9164))))))

(assert (=> d!706437 (= (validRegex!2897 (h!33933 (t!208607 l!9164))) e!1554806)))

(declare-fun b!2448755 () Bool)

(assert (=> b!2448755 (= e!1554808 e!1554809)))

(declare-fun res!1039024 () Bool)

(assert (=> b!2448755 (=> (not res!1039024) (not e!1554809))))

(assert (=> b!2448755 (= res!1039024 call!150413)))

(assert (= (and d!706437 (not res!1039022)) b!2448757))

(assert (= (and b!2448757 c!390897) b!2448758))

(assert (= (and b!2448757 (not c!390897)) b!2448759))

(assert (= (and b!2448758 res!1039020) b!2448753))

(assert (= (and b!2448759 c!390896) b!2448760))

(assert (= (and b!2448759 (not c!390896)) b!2448756))

(assert (= (and b!2448760 res!1039021) b!2448752))

(assert (= (and b!2448756 (not res!1039023)) b!2448755))

(assert (= (and b!2448755 res!1039024) b!2448754))

(assert (= (or b!2448760 b!2448754) bm!150408))

(assert (= (or b!2448752 b!2448755) bm!150407))

(assert (= (or b!2448753 bm!150407) bm!150406))

(declare-fun m!2823995 () Bool)

(assert (=> bm!150406 m!2823995))

(declare-fun m!2823997 () Bool)

(assert (=> b!2448758 m!2823997))

(declare-fun m!2823999 () Bool)

(assert (=> bm!150408 m!2823999))

(assert (=> bs!465498 d!706437))

(declare-fun b!2448761 () Bool)

(declare-fun e!1554819 () Bool)

(declare-fun call!150416 () Bool)

(assert (=> b!2448761 (= e!1554819 call!150416)))

(declare-fun call!150414 () Bool)

(declare-fun c!390898 () Bool)

(declare-fun c!390899 () Bool)

(declare-fun bm!150409 () Bool)

(assert (=> bm!150409 (= call!150414 (validRegex!2897 (ite c!390899 (reg!7526 (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563))) (ite c!390898 (regTwo!14907 (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563))) (regOne!14906 (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563)))))))))

(declare-fun b!2448762 () Bool)

(declare-fun e!1554814 () Bool)

(assert (=> b!2448762 (= e!1554814 call!150414)))

(declare-fun b!2448763 () Bool)

(declare-fun e!1554816 () Bool)

(declare-fun call!150415 () Bool)

(assert (=> b!2448763 (= e!1554816 call!150415)))

(declare-fun b!2448765 () Bool)

(declare-fun res!1039028 () Bool)

(declare-fun e!1554815 () Bool)

(assert (=> b!2448765 (=> res!1039028 e!1554815)))

(assert (=> b!2448765 (= res!1039028 (not ((_ is Concat!11833) (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563)))))))

(declare-fun e!1554818 () Bool)

(assert (=> b!2448765 (= e!1554818 e!1554815)))

(declare-fun bm!150410 () Bool)

(assert (=> bm!150410 (= call!150416 call!150414)))

(declare-fun b!2448766 () Bool)

(declare-fun e!1554813 () Bool)

(declare-fun e!1554817 () Bool)

(assert (=> b!2448766 (= e!1554813 e!1554817)))

(assert (=> b!2448766 (= c!390899 ((_ is Star!7197) (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563))))))

(declare-fun b!2448767 () Bool)

(assert (=> b!2448767 (= e!1554817 e!1554814)))

(declare-fun res!1039025 () Bool)

(assert (=> b!2448767 (= res!1039025 (not (nullable!2205 (reg!7526 (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563))))))))

(assert (=> b!2448767 (=> (not res!1039025) (not e!1554814))))

(declare-fun b!2448768 () Bool)

(assert (=> b!2448768 (= e!1554817 e!1554818)))

(assert (=> b!2448768 (= c!390898 ((_ is Union!7197) (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563))))))

(declare-fun b!2448769 () Bool)

(declare-fun res!1039026 () Bool)

(assert (=> b!2448769 (=> (not res!1039026) (not e!1554819))))

(assert (=> b!2448769 (= res!1039026 call!150415)))

(assert (=> b!2448769 (= e!1554818 e!1554819)))

(declare-fun bm!150411 () Bool)

(assert (=> bm!150411 (= call!150415 (validRegex!2897 (ite c!390898 (regOne!14907 (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563))) (regTwo!14906 (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563))))))))

(declare-fun d!706439 () Bool)

(declare-fun res!1039027 () Bool)

(assert (=> d!706439 (=> res!1039027 e!1554813)))

(assert (=> d!706439 (= res!1039027 ((_ is ElementMatch!7197) (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563))))))

(assert (=> d!706439 (= (validRegex!2897 (ite c!390717 (regOne!14907 lt!879563) (regTwo!14906 lt!879563))) e!1554813)))

(declare-fun b!2448764 () Bool)

(assert (=> b!2448764 (= e!1554815 e!1554816)))

(declare-fun res!1039029 () Bool)

(assert (=> b!2448764 (=> (not res!1039029) (not e!1554816))))

(assert (=> b!2448764 (= res!1039029 call!150416)))

(assert (= (and d!706439 (not res!1039027)) b!2448766))

(assert (= (and b!2448766 c!390899) b!2448767))

(assert (= (and b!2448766 (not c!390899)) b!2448768))

(assert (= (and b!2448767 res!1039025) b!2448762))

(assert (= (and b!2448768 c!390898) b!2448769))

(assert (= (and b!2448768 (not c!390898)) b!2448765))

(assert (= (and b!2448769 res!1039026) b!2448761))

(assert (= (and b!2448765 (not res!1039028)) b!2448764))

(assert (= (and b!2448764 res!1039029) b!2448763))

(assert (= (or b!2448769 b!2448763) bm!150411))

(assert (= (or b!2448761 b!2448764) bm!150410))

(assert (= (or b!2448762 bm!150410) bm!150409))

(declare-fun m!2824001 () Bool)

(assert (=> bm!150409 m!2824001))

(declare-fun m!2824003 () Bool)

(assert (=> b!2448767 m!2824003))

(declare-fun m!2824005 () Bool)

(assert (=> bm!150411 m!2824005))

(assert (=> bm!150304 d!706439))

(assert (=> b!2448097 d!706295))

(assert (=> b!2448210 d!706307))

(declare-fun d!706441 () Bool)

(assert (=> d!706441 (= (head!5569 (t!208607 (t!208607 l!9164))) (h!33933 (t!208607 (t!208607 l!9164))))))

(assert (=> b!2448123 d!706441))

(declare-fun d!706443 () Bool)

(assert (=> d!706443 (= (isDefined!4510 lt!879600) (not (isEmpty!16572 lt!879600)))))

(declare-fun bs!465551 () Bool)

(assert (= bs!465551 d!706443))

(declare-fun m!2824007 () Bool)

(assert (=> bs!465551 m!2824007))

(assert (=> d!706161 d!706443))

(declare-fun b!2448770 () Bool)

(declare-fun res!1039031 () Bool)

(declare-fun e!1554821 () Bool)

(assert (=> b!2448770 (=> res!1039031 e!1554821)))

(declare-fun e!1554826 () Bool)

(assert (=> b!2448770 (= res!1039031 e!1554826)))

(declare-fun res!1039034 () Bool)

(assert (=> b!2448770 (=> (not res!1039034) (not e!1554826))))

(declare-fun lt!879648 () Bool)

(assert (=> b!2448770 (= res!1039034 lt!879648)))

(declare-fun b!2448771 () Bool)

(declare-fun res!1039030 () Bool)

(assert (=> b!2448771 (=> (not res!1039030) (not e!1554826))))

(declare-fun call!150417 () Bool)

(assert (=> b!2448771 (= res!1039030 (not call!150417))))

(declare-fun b!2448772 () Bool)

(declare-fun e!1554820 () Bool)

(assert (=> b!2448772 (= e!1554820 (= lt!879648 call!150417))))

(declare-fun b!2448773 () Bool)

(declare-fun res!1039032 () Bool)

(assert (=> b!2448773 (=> res!1039032 e!1554821)))

(assert (=> b!2448773 (= res!1039032 (not ((_ is ElementMatch!7197) (h!33933 l!9164))))))

(declare-fun e!1554825 () Bool)

(assert (=> b!2448773 (= e!1554825 e!1554821)))

(declare-fun b!2448774 () Bool)

(declare-fun e!1554823 () Bool)

(assert (=> b!2448774 (= e!1554823 (not (= (head!5570 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (c!390559 (h!33933 l!9164)))))))

(declare-fun bm!150412 () Bool)

(assert (=> bm!150412 (= call!150417 (isEmpty!16569 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))

(declare-fun b!2448775 () Bool)

(declare-fun e!1554824 () Bool)

(assert (=> b!2448775 (= e!1554821 e!1554824)))

(declare-fun res!1039035 () Bool)

(assert (=> b!2448775 (=> (not res!1039035) (not e!1554824))))

(assert (=> b!2448775 (= res!1039035 (not lt!879648))))

(declare-fun b!2448776 () Bool)

(declare-fun res!1039033 () Bool)

(assert (=> b!2448776 (=> (not res!1039033) (not e!1554826))))

(assert (=> b!2448776 (= res!1039033 (isEmpty!16569 (tail!3843 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)))))))

(declare-fun d!706445 () Bool)

(assert (=> d!706445 e!1554820))

(declare-fun c!390901 () Bool)

(assert (=> d!706445 (= c!390901 ((_ is EmptyExpr!7197) (h!33933 l!9164)))))

(declare-fun e!1554822 () Bool)

(assert (=> d!706445 (= lt!879648 e!1554822)))

(declare-fun c!390900 () Bool)

(assert (=> d!706445 (= c!390900 (isEmpty!16569 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))

(assert (=> d!706445 (validRegex!2897 (h!33933 l!9164))))

(assert (=> d!706445 (= (matchR!3312 (h!33933 l!9164) (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) lt!879648)))

(declare-fun b!2448777 () Bool)

(assert (=> b!2448777 (= e!1554824 e!1554823)))

(declare-fun res!1039037 () Bool)

(assert (=> b!2448777 (=> res!1039037 e!1554823)))

(assert (=> b!2448777 (= res!1039037 call!150417)))

(declare-fun b!2448778 () Bool)

(assert (=> b!2448778 (= e!1554826 (= (head!5570 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (c!390559 (h!33933 l!9164))))))

(declare-fun b!2448779 () Bool)

(assert (=> b!2448779 (= e!1554825 (not lt!879648))))

(declare-fun b!2448780 () Bool)

(assert (=> b!2448780 (= e!1554820 e!1554825)))

(declare-fun c!390902 () Bool)

(assert (=> b!2448780 (= c!390902 ((_ is EmptyLang!7197) (h!33933 l!9164)))))

(declare-fun b!2448781 () Bool)

(assert (=> b!2448781 (= e!1554822 (nullable!2205 (h!33933 l!9164)))))

(declare-fun b!2448782 () Bool)

(declare-fun res!1039036 () Bool)

(assert (=> b!2448782 (=> res!1039036 e!1554823)))

(assert (=> b!2448782 (= res!1039036 (not (isEmpty!16569 (tail!3843 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))))

(declare-fun b!2448783 () Bool)

(assert (=> b!2448783 (= e!1554822 (matchR!3312 (derivativeStep!1859 (h!33933 l!9164) (head!5570 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)))) (tail!3843 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)))))))

(assert (= (and d!706445 c!390900) b!2448781))

(assert (= (and d!706445 (not c!390900)) b!2448783))

(assert (= (and d!706445 c!390901) b!2448772))

(assert (= (and d!706445 (not c!390901)) b!2448780))

(assert (= (and b!2448780 c!390902) b!2448779))

(assert (= (and b!2448780 (not c!390902)) b!2448773))

(assert (= (and b!2448773 (not res!1039032)) b!2448770))

(assert (= (and b!2448770 res!1039034) b!2448771))

(assert (= (and b!2448771 res!1039030) b!2448776))

(assert (= (and b!2448776 res!1039033) b!2448778))

(assert (= (and b!2448770 (not res!1039031)) b!2448775))

(assert (= (and b!2448775 res!1039035) b!2448777))

(assert (= (and b!2448777 (not res!1039037)) b!2448782))

(assert (= (and b!2448782 (not res!1039036)) b!2448774))

(assert (= (or b!2448772 b!2448771 b!2448777) bm!150412))

(assert (=> b!2448774 m!2823065))

(declare-fun m!2824009 () Bool)

(assert (=> b!2448774 m!2824009))

(assert (=> bm!150412 m!2823065))

(declare-fun m!2824011 () Bool)

(assert (=> bm!150412 m!2824011))

(assert (=> b!2448781 m!2823497))

(assert (=> b!2448776 m!2823065))

(declare-fun m!2824013 () Bool)

(assert (=> b!2448776 m!2824013))

(assert (=> b!2448776 m!2824013))

(declare-fun m!2824015 () Bool)

(assert (=> b!2448776 m!2824015))

(assert (=> b!2448782 m!2823065))

(assert (=> b!2448782 m!2824013))

(assert (=> b!2448782 m!2824013))

(assert (=> b!2448782 m!2824015))

(assert (=> b!2448778 m!2823065))

(assert (=> b!2448778 m!2824009))

(assert (=> d!706445 m!2823065))

(assert (=> d!706445 m!2824011))

(assert (=> d!706445 m!2823055))

(assert (=> b!2448783 m!2823065))

(assert (=> b!2448783 m!2824009))

(assert (=> b!2448783 m!2824009))

(declare-fun m!2824017 () Bool)

(assert (=> b!2448783 m!2824017))

(assert (=> b!2448783 m!2823065))

(assert (=> b!2448783 m!2824013))

(assert (=> b!2448783 m!2824017))

(assert (=> b!2448783 m!2824013))

(declare-fun m!2824019 () Bool)

(assert (=> b!2448783 m!2824019))

(assert (=> d!706161 d!706445))

(assert (=> d!706161 d!706183))

(assert (=> b!2448058 d!706443))

(assert (=> bs!465499 d!706437))

(declare-fun b!2448784 () Bool)

(declare-fun res!1039039 () Bool)

(declare-fun e!1554828 () Bool)

(assert (=> b!2448784 (=> res!1039039 e!1554828)))

(declare-fun e!1554833 () Bool)

(assert (=> b!2448784 (= res!1039039 e!1554833)))

(declare-fun res!1039042 () Bool)

(assert (=> b!2448784 (=> (not res!1039042) (not e!1554833))))

(declare-fun lt!879649 () Bool)

(assert (=> b!2448784 (= res!1039042 lt!879649)))

(declare-fun b!2448785 () Bool)

(declare-fun res!1039038 () Bool)

(assert (=> b!2448785 (=> (not res!1039038) (not e!1554833))))

(declare-fun call!150418 () Bool)

(assert (=> b!2448785 (= res!1039038 (not call!150418))))

(declare-fun b!2448786 () Bool)

(declare-fun e!1554827 () Bool)

(assert (=> b!2448786 (= e!1554827 (= lt!879649 call!150418))))

(declare-fun b!2448787 () Bool)

(declare-fun res!1039040 () Bool)

(assert (=> b!2448787 (=> res!1039040 e!1554828)))

(assert (=> b!2448787 (= res!1039040 (not ((_ is ElementMatch!7197) (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551)))))))))

(declare-fun e!1554832 () Bool)

(assert (=> b!2448787 (= e!1554832 e!1554828)))

(declare-fun b!2448788 () Bool)

(declare-fun e!1554830 () Bool)

(assert (=> b!2448788 (= e!1554830 (not (= (head!5570 (tail!3843 (_1!16614 (get!8823 lt!879551)))) (c!390559 (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551))))))))))

(declare-fun bm!150413 () Bool)

(assert (=> bm!150413 (= call!150418 (isEmpty!16569 (tail!3843 (_1!16614 (get!8823 lt!879551)))))))

(declare-fun b!2448789 () Bool)

(declare-fun e!1554831 () Bool)

(assert (=> b!2448789 (= e!1554828 e!1554831)))

(declare-fun res!1039043 () Bool)

(assert (=> b!2448789 (=> (not res!1039043) (not e!1554831))))

(assert (=> b!2448789 (= res!1039043 (not lt!879649))))

(declare-fun b!2448790 () Bool)

(declare-fun res!1039041 () Bool)

(assert (=> b!2448790 (=> (not res!1039041) (not e!1554833))))

(assert (=> b!2448790 (= res!1039041 (isEmpty!16569 (tail!3843 (tail!3843 (_1!16614 (get!8823 lt!879551))))))))

(declare-fun d!706447 () Bool)

(assert (=> d!706447 e!1554827))

(declare-fun c!390904 () Bool)

(assert (=> d!706447 (= c!390904 ((_ is EmptyExpr!7197) (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551))))))))

(declare-fun e!1554829 () Bool)

(assert (=> d!706447 (= lt!879649 e!1554829)))

(declare-fun c!390903 () Bool)

(assert (=> d!706447 (= c!390903 (isEmpty!16569 (tail!3843 (_1!16614 (get!8823 lt!879551)))))))

(assert (=> d!706447 (validRegex!2897 (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551)))))))

(assert (=> d!706447 (= (matchR!3312 (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551)))) (tail!3843 (_1!16614 (get!8823 lt!879551)))) lt!879649)))

(declare-fun b!2448791 () Bool)

(assert (=> b!2448791 (= e!1554831 e!1554830)))

(declare-fun res!1039045 () Bool)

(assert (=> b!2448791 (=> res!1039045 e!1554830)))

(assert (=> b!2448791 (= res!1039045 call!150418)))

(declare-fun b!2448792 () Bool)

(assert (=> b!2448792 (= e!1554833 (= (head!5570 (tail!3843 (_1!16614 (get!8823 lt!879551)))) (c!390559 (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551)))))))))

(declare-fun b!2448793 () Bool)

(assert (=> b!2448793 (= e!1554832 (not lt!879649))))

(declare-fun b!2448794 () Bool)

(assert (=> b!2448794 (= e!1554827 e!1554832)))

(declare-fun c!390905 () Bool)

(assert (=> b!2448794 (= c!390905 ((_ is EmptyLang!7197) (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551))))))))

(declare-fun b!2448795 () Bool)

(assert (=> b!2448795 (= e!1554829 (nullable!2205 (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551))))))))

(declare-fun b!2448796 () Bool)

(declare-fun res!1039044 () Bool)

(assert (=> b!2448796 (=> res!1039044 e!1554830)))

(assert (=> b!2448796 (= res!1039044 (not (isEmpty!16569 (tail!3843 (tail!3843 (_1!16614 (get!8823 lt!879551)))))))))

(declare-fun b!2448797 () Bool)

(assert (=> b!2448797 (= e!1554829 (matchR!3312 (derivativeStep!1859 (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551)))) (head!5570 (tail!3843 (_1!16614 (get!8823 lt!879551))))) (tail!3843 (tail!3843 (_1!16614 (get!8823 lt!879551))))))))

(assert (= (and d!706447 c!390903) b!2448795))

(assert (= (and d!706447 (not c!390903)) b!2448797))

(assert (= (and d!706447 c!390904) b!2448786))

(assert (= (and d!706447 (not c!390904)) b!2448794))

(assert (= (and b!2448794 c!390905) b!2448793))

(assert (= (and b!2448794 (not c!390905)) b!2448787))

(assert (= (and b!2448787 (not res!1039040)) b!2448784))

(assert (= (and b!2448784 res!1039042) b!2448785))

(assert (= (and b!2448785 res!1039038) b!2448790))

(assert (= (and b!2448790 res!1039041) b!2448792))

(assert (= (and b!2448784 (not res!1039039)) b!2448789))

(assert (= (and b!2448789 res!1039043) b!2448791))

(assert (= (and b!2448791 (not res!1039045)) b!2448796))

(assert (= (and b!2448796 (not res!1039044)) b!2448788))

(assert (= (or b!2448786 b!2448785 b!2448791) bm!150413))

(assert (=> b!2448788 m!2823499))

(declare-fun m!2824021 () Bool)

(assert (=> b!2448788 m!2824021))

(assert (=> bm!150413 m!2823499))

(assert (=> bm!150413 m!2823501))

(assert (=> b!2448795 m!2823503))

(declare-fun m!2824023 () Bool)

(assert (=> b!2448795 m!2824023))

(assert (=> b!2448790 m!2823499))

(declare-fun m!2824025 () Bool)

(assert (=> b!2448790 m!2824025))

(assert (=> b!2448790 m!2824025))

(declare-fun m!2824027 () Bool)

(assert (=> b!2448790 m!2824027))

(assert (=> b!2448796 m!2823499))

(assert (=> b!2448796 m!2824025))

(assert (=> b!2448796 m!2824025))

(assert (=> b!2448796 m!2824027))

(assert (=> b!2448792 m!2823499))

(assert (=> b!2448792 m!2824021))

(assert (=> d!706447 m!2823499))

(assert (=> d!706447 m!2823501))

(assert (=> d!706447 m!2823503))

(declare-fun m!2824029 () Bool)

(assert (=> d!706447 m!2824029))

(assert (=> b!2448797 m!2823499))

(assert (=> b!2448797 m!2824021))

(assert (=> b!2448797 m!2823503))

(assert (=> b!2448797 m!2824021))

(declare-fun m!2824031 () Bool)

(assert (=> b!2448797 m!2824031))

(assert (=> b!2448797 m!2823499))

(assert (=> b!2448797 m!2824025))

(assert (=> b!2448797 m!2824031))

(assert (=> b!2448797 m!2824025))

(declare-fun m!2824033 () Bool)

(assert (=> b!2448797 m!2824033))

(assert (=> b!2448102 d!706447))

(declare-fun b!2448798 () Bool)

(declare-fun e!1554838 () Regex!7197)

(assert (=> b!2448798 (= e!1554838 EmptyLang!7197)))

(declare-fun b!2448799 () Bool)

(declare-fun e!1554836 () Regex!7197)

(declare-fun call!150422 () Regex!7197)

(assert (=> b!2448799 (= e!1554836 (Concat!11833 call!150422 (h!33933 l!9164)))))

(declare-fun b!2448800 () Bool)

(declare-fun e!1554834 () Regex!7197)

(assert (=> b!2448800 (= e!1554834 (ite (= (head!5570 (_1!16614 (get!8823 lt!879551))) (c!390559 (h!33933 l!9164))) EmptyExpr!7197 EmptyLang!7197))))

(declare-fun b!2448801 () Bool)

(declare-fun c!390909 () Bool)

(assert (=> b!2448801 (= c!390909 ((_ is Union!7197) (h!33933 l!9164)))))

(declare-fun e!1554837 () Regex!7197)

(assert (=> b!2448801 (= e!1554834 e!1554837)))

(declare-fun d!706449 () Bool)

(declare-fun lt!879650 () Regex!7197)

(assert (=> d!706449 (validRegex!2897 lt!879650)))

(assert (=> d!706449 (= lt!879650 e!1554838)))

(declare-fun c!390906 () Bool)

(assert (=> d!706449 (= c!390906 (or ((_ is EmptyExpr!7197) (h!33933 l!9164)) ((_ is EmptyLang!7197) (h!33933 l!9164))))))

(assert (=> d!706449 (validRegex!2897 (h!33933 l!9164))))

(assert (=> d!706449 (= (derivativeStep!1859 (h!33933 l!9164) (head!5570 (_1!16614 (get!8823 lt!879551)))) lt!879650)))

(declare-fun call!150420 () Regex!7197)

(declare-fun bm!150414 () Bool)

(assert (=> bm!150414 (= call!150420 (derivativeStep!1859 (ite c!390909 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))) (head!5570 (_1!16614 (get!8823 lt!879551)))))))

(declare-fun b!2448802 () Bool)

(declare-fun call!150419 () Regex!7197)

(assert (=> b!2448802 (= e!1554837 (Union!7197 call!150419 call!150420))))

(declare-fun b!2448803 () Bool)

(declare-fun c!390908 () Bool)

(assert (=> b!2448803 (= c!390908 (nullable!2205 (regOne!14906 (h!33933 l!9164))))))

(declare-fun e!1554835 () Regex!7197)

(assert (=> b!2448803 (= e!1554836 e!1554835)))

(declare-fun b!2448804 () Bool)

(assert (=> b!2448804 (= e!1554838 e!1554834)))

(declare-fun c!390907 () Bool)

(assert (=> b!2448804 (= c!390907 ((_ is ElementMatch!7197) (h!33933 l!9164)))))

(declare-fun bm!150415 () Bool)

(declare-fun call!150421 () Regex!7197)

(assert (=> bm!150415 (= call!150421 call!150422)))

(declare-fun bm!150416 () Bool)

(declare-fun c!390910 () Bool)

(assert (=> bm!150416 (= call!150419 (derivativeStep!1859 (ite c!390909 (regOne!14907 (h!33933 l!9164)) (ite c!390910 (reg!7526 (h!33933 l!9164)) (ite c!390908 (regTwo!14906 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))) (head!5570 (_1!16614 (get!8823 lt!879551)))))))

(declare-fun bm!150417 () Bool)

(assert (=> bm!150417 (= call!150422 call!150419)))

(declare-fun b!2448805 () Bool)

(assert (=> b!2448805 (= e!1554837 e!1554836)))

(assert (=> b!2448805 (= c!390910 ((_ is Star!7197) (h!33933 l!9164)))))

(declare-fun b!2448806 () Bool)

(assert (=> b!2448806 (= e!1554835 (Union!7197 (Concat!11833 call!150421 (regTwo!14906 (h!33933 l!9164))) EmptyLang!7197))))

(declare-fun b!2448807 () Bool)

(assert (=> b!2448807 (= e!1554835 (Union!7197 (Concat!11833 call!150420 (regTwo!14906 (h!33933 l!9164))) call!150421))))

(assert (= (and d!706449 c!390906) b!2448798))

(assert (= (and d!706449 (not c!390906)) b!2448804))

(assert (= (and b!2448804 c!390907) b!2448800))

(assert (= (and b!2448804 (not c!390907)) b!2448801))

(assert (= (and b!2448801 c!390909) b!2448802))

(assert (= (and b!2448801 (not c!390909)) b!2448805))

(assert (= (and b!2448805 c!390910) b!2448799))

(assert (= (and b!2448805 (not c!390910)) b!2448803))

(assert (= (and b!2448803 c!390908) b!2448807))

(assert (= (and b!2448803 (not c!390908)) b!2448806))

(assert (= (or b!2448807 b!2448806) bm!150415))

(assert (= (or b!2448799 bm!150415) bm!150417))

(assert (= (or b!2448802 bm!150417) bm!150416))

(assert (= (or b!2448802 b!2448807) bm!150414))

(declare-fun m!2824035 () Bool)

(assert (=> d!706449 m!2824035))

(assert (=> d!706449 m!2823055))

(assert (=> bm!150414 m!2823493))

(declare-fun m!2824041 () Bool)

(assert (=> bm!150414 m!2824041))

(declare-fun m!2824045 () Bool)

(assert (=> b!2448803 m!2824045))

(assert (=> bm!150416 m!2823493))

(declare-fun m!2824047 () Bool)

(assert (=> bm!150416 m!2824047))

(assert (=> b!2448102 d!706449))

(assert (=> b!2448102 d!706295))

(assert (=> b!2448102 d!706357))

(declare-fun d!706451 () Bool)

(declare-fun res!1039046 () Bool)

(declare-fun e!1554839 () Bool)

(assert (=> d!706451 (=> res!1039046 e!1554839)))

(assert (=> d!706451 (= res!1039046 ((_ is Nil!28532) (t!208607 (t!208607 l!9164))))))

(assert (=> d!706451 (= (forall!5831 (t!208607 (t!208607 l!9164)) lambda!92751) e!1554839)))

(declare-fun b!2448808 () Bool)

(declare-fun e!1554840 () Bool)

(assert (=> b!2448808 (= e!1554839 e!1554840)))

(declare-fun res!1039047 () Bool)

(assert (=> b!2448808 (=> (not res!1039047) (not e!1554840))))

(assert (=> b!2448808 (= res!1039047 (dynLambda!12263 lambda!92751 (h!33933 (t!208607 (t!208607 l!9164)))))))

(declare-fun b!2448809 () Bool)

(assert (=> b!2448809 (= e!1554840 (forall!5831 (t!208607 (t!208607 (t!208607 l!9164))) lambda!92751))))

(assert (= (and d!706451 (not res!1039046)) b!2448808))

(assert (= (and b!2448808 res!1039047) b!2448809))

(declare-fun b_lambda!75057 () Bool)

(assert (=> (not b_lambda!75057) (not b!2448808)))

(declare-fun m!2824049 () Bool)

(assert (=> b!2448808 m!2824049))

(declare-fun m!2824051 () Bool)

(assert (=> b!2448809 m!2824051))

(assert (=> b!2447993 d!706451))

(assert (=> d!706205 d!706031))

(assert (=> d!706205 d!706029))

(declare-fun b!2448812 () Bool)

(declare-fun e!1554848 () Bool)

(declare-fun call!150425 () Bool)

(assert (=> b!2448812 (= e!1554848 call!150425)))

(declare-fun c!390912 () Bool)

(declare-fun call!150423 () Bool)

(declare-fun c!390913 () Bool)

(declare-fun bm!150418 () Bool)

(assert (=> bm!150418 (= call!150423 (validRegex!2897 (ite c!390913 (reg!7526 (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564)))) (ite c!390912 (regTwo!14907 (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564)))) (regOne!14906 (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564))))))))))

(declare-fun b!2448813 () Bool)

(declare-fun e!1554843 () Bool)

(assert (=> b!2448813 (= e!1554843 call!150423)))

(declare-fun b!2448814 () Bool)

(declare-fun e!1554845 () Bool)

(declare-fun call!150424 () Bool)

(assert (=> b!2448814 (= e!1554845 call!150424)))

(declare-fun b!2448816 () Bool)

(declare-fun res!1039051 () Bool)

(declare-fun e!1554844 () Bool)

(assert (=> b!2448816 (=> res!1039051 e!1554844)))

(assert (=> b!2448816 (= res!1039051 (not ((_ is Concat!11833) (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564))))))))

(declare-fun e!1554847 () Bool)

(assert (=> b!2448816 (= e!1554847 e!1554844)))

(declare-fun bm!150419 () Bool)

(assert (=> bm!150419 (= call!150425 call!150423)))

(declare-fun b!2448817 () Bool)

(declare-fun e!1554842 () Bool)

(declare-fun e!1554846 () Bool)

(assert (=> b!2448817 (= e!1554842 e!1554846)))

(assert (=> b!2448817 (= c!390913 ((_ is Star!7197) (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564)))))))

(declare-fun b!2448818 () Bool)

(assert (=> b!2448818 (= e!1554846 e!1554843)))

(declare-fun res!1039048 () Bool)

(assert (=> b!2448818 (= res!1039048 (not (nullable!2205 (reg!7526 (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564)))))))))

(assert (=> b!2448818 (=> (not res!1039048) (not e!1554843))))

(declare-fun b!2448819 () Bool)

(assert (=> b!2448819 (= e!1554846 e!1554847)))

(assert (=> b!2448819 (= c!390912 ((_ is Union!7197) (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564)))))))

(declare-fun b!2448820 () Bool)

(declare-fun res!1039049 () Bool)

(assert (=> b!2448820 (=> (not res!1039049) (not e!1554848))))

(assert (=> b!2448820 (= res!1039049 call!150424)))

(assert (=> b!2448820 (= e!1554847 e!1554848)))

(declare-fun bm!150420 () Bool)

(assert (=> bm!150420 (= call!150424 (validRegex!2897 (ite c!390912 (regOne!14907 (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564)))) (regTwo!14906 (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564)))))))))

(declare-fun d!706459 () Bool)

(declare-fun res!1039050 () Bool)

(assert (=> d!706459 (=> res!1039050 e!1554842)))

(assert (=> d!706459 (= res!1039050 ((_ is ElementMatch!7197) (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564)))))))

(assert (=> d!706459 (= (validRegex!2897 (ite c!390734 (reg!7526 lt!879564) (ite c!390733 (regTwo!14907 lt!879564) (regOne!14906 lt!879564)))) e!1554842)))

(declare-fun b!2448815 () Bool)

(assert (=> b!2448815 (= e!1554844 e!1554845)))

(declare-fun res!1039052 () Bool)

(assert (=> b!2448815 (=> (not res!1039052) (not e!1554845))))

(assert (=> b!2448815 (= res!1039052 call!150425)))

(assert (= (and d!706459 (not res!1039050)) b!2448817))

(assert (= (and b!2448817 c!390913) b!2448818))

(assert (= (and b!2448817 (not c!390913)) b!2448819))

(assert (= (and b!2448818 res!1039048) b!2448813))

(assert (= (and b!2448819 c!390912) b!2448820))

(assert (= (and b!2448819 (not c!390912)) b!2448816))

(assert (= (and b!2448820 res!1039049) b!2448812))

(assert (= (and b!2448816 (not res!1039051)) b!2448815))

(assert (= (and b!2448815 res!1039052) b!2448814))

(assert (= (or b!2448820 b!2448814) bm!150420))

(assert (= (or b!2448812 b!2448815) bm!150419))

(assert (= (or b!2448813 bm!150419) bm!150418))

(declare-fun m!2824055 () Bool)

(assert (=> bm!150418 m!2824055))

(declare-fun m!2824057 () Bool)

(assert (=> b!2448818 m!2824057))

(declare-fun m!2824059 () Bool)

(assert (=> bm!150420 m!2824059))

(assert (=> bm!150313 d!706459))

(assert (=> d!706159 d!706155))

(assert (=> d!706159 d!706157))

(declare-fun d!706463 () Bool)

(assert (=> d!706463 (= (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (t!208608 s!9460)) s!9460)))

(assert (=> d!706463 true))

(declare-fun _$68!619 () Unit!41849)

(assert (=> d!706463 (= (choose!14523 Nil!28533 (h!33934 s!9460) (t!208608 s!9460) s!9460) _$68!619)))

(declare-fun bs!465561 () Bool)

(assert (= bs!465561 d!706463))

(assert (=> bs!465561 m!2823065))

(assert (=> bs!465561 m!2823065))

(assert (=> bs!465561 m!2823067))

(assert (=> d!706159 d!706463))

(declare-fun b!2448836 () Bool)

(declare-fun res!1039059 () Bool)

(declare-fun e!1554858 () Bool)

(assert (=> b!2448836 (=> (not res!1039059) (not e!1554858))))

(declare-fun lt!879654 () List!28631)

(assert (=> b!2448836 (= res!1039059 (= (size!22268 lt!879654) (+ (size!22268 Nil!28533) (size!22268 (Cons!28533 (h!33934 s!9460) (t!208608 s!9460))))))))

(declare-fun d!706471 () Bool)

(assert (=> d!706471 e!1554858))

(declare-fun res!1039058 () Bool)

(assert (=> d!706471 (=> (not res!1039058) (not e!1554858))))

(assert (=> d!706471 (= res!1039058 (= (content!3930 lt!879654) ((_ map or) (content!3930 Nil!28533) (content!3930 (Cons!28533 (h!33934 s!9460) (t!208608 s!9460))))))))

(declare-fun e!1554859 () List!28631)

(assert (=> d!706471 (= lt!879654 e!1554859)))

(declare-fun c!390918 () Bool)

(assert (=> d!706471 (= c!390918 ((_ is Nil!28533) Nil!28533))))

(assert (=> d!706471 (= (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) (t!208608 s!9460))) lt!879654)))

(declare-fun b!2448837 () Bool)

(assert (=> b!2448837 (= e!1554858 (or (not (= (Cons!28533 (h!33934 s!9460) (t!208608 s!9460)) Nil!28533)) (= lt!879654 Nil!28533)))))

(declare-fun b!2448835 () Bool)

(assert (=> b!2448835 (= e!1554859 (Cons!28533 (h!33934 Nil!28533) (++!7098 (t!208608 Nil!28533) (Cons!28533 (h!33934 s!9460) (t!208608 s!9460)))))))

(declare-fun b!2448834 () Bool)

(assert (=> b!2448834 (= e!1554859 (Cons!28533 (h!33934 s!9460) (t!208608 s!9460)))))

(assert (= (and d!706471 c!390918) b!2448834))

(assert (= (and d!706471 (not c!390918)) b!2448835))

(assert (= (and d!706471 res!1039058) b!2448836))

(assert (= (and b!2448836 res!1039059) b!2448837))

(declare-fun m!2824071 () Bool)

(assert (=> b!2448836 m!2824071))

(assert (=> b!2448836 m!2823445))

(declare-fun m!2824073 () Bool)

(assert (=> b!2448836 m!2824073))

(declare-fun m!2824077 () Bool)

(assert (=> d!706471 m!2824077))

(assert (=> d!706471 m!2823451))

(declare-fun m!2824079 () Bool)

(assert (=> d!706471 m!2824079))

(declare-fun m!2824081 () Bool)

(assert (=> b!2448835 m!2824081))

(assert (=> d!706159 d!706471))

(assert (=> bm!150320 d!706199))

(declare-fun d!706477 () Bool)

(declare-fun c!390920 () Bool)

(assert (=> d!706477 (= c!390920 ((_ is Nil!28533) lt!879593))))

(declare-fun e!1554861 () (InoxSet C!14552))

(assert (=> d!706477 (= (content!3930 lt!879593) e!1554861)))

(declare-fun b!2448840 () Bool)

(assert (=> b!2448840 (= e!1554861 ((as const (Array C!14552 Bool)) false))))

(declare-fun b!2448841 () Bool)

(assert (=> b!2448841 (= e!1554861 ((_ map or) (store ((as const (Array C!14552 Bool)) false) (h!33934 lt!879593) true) (content!3930 (t!208608 lt!879593))))))

(assert (= (and d!706477 c!390920) b!2448840))

(assert (= (and d!706477 (not c!390920)) b!2448841))

(declare-fun m!2824083 () Bool)

(assert (=> b!2448841 m!2824083))

(declare-fun m!2824085 () Bool)

(assert (=> b!2448841 m!2824085))

(assert (=> d!706133 d!706477))

(declare-fun d!706479 () Bool)

(declare-fun c!390921 () Bool)

(assert (=> d!706479 (= c!390921 ((_ is Nil!28533) (_1!16614 (get!8823 lt!879551))))))

(declare-fun e!1554862 () (InoxSet C!14552))

(assert (=> d!706479 (= (content!3930 (_1!16614 (get!8823 lt!879551))) e!1554862)))

(declare-fun b!2448842 () Bool)

(assert (=> b!2448842 (= e!1554862 ((as const (Array C!14552 Bool)) false))))

(declare-fun b!2448843 () Bool)

(assert (=> b!2448843 (= e!1554862 ((_ map or) (store ((as const (Array C!14552 Bool)) false) (h!33934 (_1!16614 (get!8823 lt!879551))) true) (content!3930 (t!208608 (_1!16614 (get!8823 lt!879551))))))))

(assert (= (and d!706479 c!390921) b!2448842))

(assert (= (and d!706479 (not c!390921)) b!2448843))

(declare-fun m!2824091 () Bool)

(assert (=> b!2448843 m!2824091))

(assert (=> b!2448843 m!2823749))

(assert (=> d!706133 d!706479))

(declare-fun d!706483 () Bool)

(declare-fun c!390923 () Bool)

(assert (=> d!706483 (= c!390923 ((_ is Nil!28533) (_2!16614 (get!8823 lt!879551))))))

(declare-fun e!1554864 () (InoxSet C!14552))

(assert (=> d!706483 (= (content!3930 (_2!16614 (get!8823 lt!879551))) e!1554864)))

(declare-fun b!2448846 () Bool)

(assert (=> b!2448846 (= e!1554864 ((as const (Array C!14552 Bool)) false))))

(declare-fun b!2448847 () Bool)

(assert (=> b!2448847 (= e!1554864 ((_ map or) (store ((as const (Array C!14552 Bool)) false) (h!33934 (_2!16614 (get!8823 lt!879551))) true) (content!3930 (t!208608 (_2!16614 (get!8823 lt!879551))))))))

(assert (= (and d!706483 c!390923) b!2448846))

(assert (= (and d!706483 (not c!390923)) b!2448847))

(declare-fun m!2824093 () Bool)

(assert (=> b!2448847 m!2824093))

(declare-fun m!2824095 () Bool)

(assert (=> b!2448847 m!2824095))

(assert (=> d!706133 d!706483))

(declare-fun d!706485 () Bool)

(assert (not d!706485))

(assert (=> b!2448203 d!706485))

(declare-fun b!2448850 () Bool)

(declare-fun res!1039061 () Bool)

(declare-fun e!1554867 () Bool)

(assert (=> b!2448850 (=> res!1039061 e!1554867)))

(declare-fun e!1554872 () Bool)

(assert (=> b!2448850 (= res!1039061 e!1554872)))

(declare-fun res!1039064 () Bool)

(assert (=> b!2448850 (=> (not res!1039064) (not e!1554872))))

(declare-fun lt!879655 () Bool)

(assert (=> b!2448850 (= res!1039064 lt!879655)))

(declare-fun b!2448851 () Bool)

(declare-fun res!1039060 () Bool)

(assert (=> b!2448851 (=> (not res!1039060) (not e!1554872))))

(declare-fun call!150429 () Bool)

(assert (=> b!2448851 (= res!1039060 (not call!150429))))

(declare-fun b!2448852 () Bool)

(declare-fun e!1554866 () Bool)

(assert (=> b!2448852 (= e!1554866 (= lt!879655 call!150429))))

(declare-fun b!2448853 () Bool)

(declare-fun res!1039062 () Bool)

(assert (=> b!2448853 (=> res!1039062 e!1554867)))

(assert (=> b!2448853 (= res!1039062 (not ((_ is ElementMatch!7197) (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460)))))))

(declare-fun e!1554871 () Bool)

(assert (=> b!2448853 (= e!1554871 e!1554867)))

(declare-fun b!2448854 () Bool)

(declare-fun e!1554869 () Bool)

(assert (=> b!2448854 (= e!1554869 (not (= (head!5570 (tail!3843 s!9460)) (c!390559 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460))))))))

(declare-fun bm!150424 () Bool)

(assert (=> bm!150424 (= call!150429 (isEmpty!16569 (tail!3843 s!9460)))))

(declare-fun b!2448855 () Bool)

(declare-fun e!1554870 () Bool)

(assert (=> b!2448855 (= e!1554867 e!1554870)))

(declare-fun res!1039065 () Bool)

(assert (=> b!2448855 (=> (not res!1039065) (not e!1554870))))

(assert (=> b!2448855 (= res!1039065 (not lt!879655))))

(declare-fun b!2448856 () Bool)

(declare-fun res!1039063 () Bool)

(assert (=> b!2448856 (=> (not res!1039063) (not e!1554872))))

(assert (=> b!2448856 (= res!1039063 (isEmpty!16569 (tail!3843 (tail!3843 s!9460))))))

(declare-fun d!706489 () Bool)

(assert (=> d!706489 e!1554866))

(declare-fun c!390926 () Bool)

(assert (=> d!706489 (= c!390926 ((_ is EmptyExpr!7197) (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460))))))

(declare-fun e!1554868 () Bool)

(assert (=> d!706489 (= lt!879655 e!1554868)))

(declare-fun c!390925 () Bool)

(assert (=> d!706489 (= c!390925 (isEmpty!16569 (tail!3843 s!9460)))))

(assert (=> d!706489 (validRegex!2897 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460)))))

(assert (=> d!706489 (= (matchR!3312 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460)) (tail!3843 s!9460)) lt!879655)))

(declare-fun b!2448857 () Bool)

(assert (=> b!2448857 (= e!1554870 e!1554869)))

(declare-fun res!1039067 () Bool)

(assert (=> b!2448857 (=> res!1039067 e!1554869)))

(assert (=> b!2448857 (= res!1039067 call!150429)))

(declare-fun b!2448858 () Bool)

(assert (=> b!2448858 (= e!1554872 (= (head!5570 (tail!3843 s!9460)) (c!390559 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460)))))))

(declare-fun b!2448859 () Bool)

(assert (=> b!2448859 (= e!1554871 (not lt!879655))))

(declare-fun b!2448860 () Bool)

(assert (=> b!2448860 (= e!1554866 e!1554871)))

(declare-fun c!390927 () Bool)

(assert (=> b!2448860 (= c!390927 ((_ is EmptyLang!7197) (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460))))))

(declare-fun b!2448861 () Bool)

(assert (=> b!2448861 (= e!1554868 (nullable!2205 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460))))))

(declare-fun b!2448862 () Bool)

(declare-fun res!1039066 () Bool)

(assert (=> b!2448862 (=> res!1039066 e!1554869)))

(assert (=> b!2448862 (= res!1039066 (not (isEmpty!16569 (tail!3843 (tail!3843 s!9460)))))))

(declare-fun b!2448863 () Bool)

(assert (=> b!2448863 (= e!1554868 (matchR!3312 (derivativeStep!1859 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460)) (head!5570 (tail!3843 s!9460))) (tail!3843 (tail!3843 s!9460))))))

(assert (= (and d!706489 c!390925) b!2448861))

(assert (= (and d!706489 (not c!390925)) b!2448863))

(assert (= (and d!706489 c!390926) b!2448852))

(assert (= (and d!706489 (not c!390926)) b!2448860))

(assert (= (and b!2448860 c!390927) b!2448859))

(assert (= (and b!2448860 (not c!390927)) b!2448853))

(assert (= (and b!2448853 (not res!1039062)) b!2448850))

(assert (= (and b!2448850 res!1039064) b!2448851))

(assert (= (and b!2448851 res!1039060) b!2448856))

(assert (= (and b!2448856 res!1039063) b!2448858))

(assert (= (and b!2448850 (not res!1039061)) b!2448855))

(assert (= (and b!2448855 res!1039065) b!2448857))

(assert (= (and b!2448857 (not res!1039067)) b!2448862))

(assert (= (and b!2448862 (not res!1039066)) b!2448854))

(assert (= (or b!2448852 b!2448851 b!2448857) bm!150424))

(assert (=> b!2448854 m!2823157))

(assert (=> b!2448854 m!2823557))

(assert (=> bm!150424 m!2823157))

(assert (=> bm!150424 m!2823159))

(assert (=> b!2448861 m!2823483))

(declare-fun m!2824107 () Bool)

(assert (=> b!2448861 m!2824107))

(assert (=> b!2448856 m!2823157))

(assert (=> b!2448856 m!2823561))

(assert (=> b!2448856 m!2823561))

(assert (=> b!2448856 m!2823563))

(assert (=> b!2448862 m!2823157))

(assert (=> b!2448862 m!2823561))

(assert (=> b!2448862 m!2823561))

(assert (=> b!2448862 m!2823563))

(assert (=> b!2448858 m!2823157))

(assert (=> b!2448858 m!2823557))

(assert (=> d!706489 m!2823157))

(assert (=> d!706489 m!2823159))

(assert (=> d!706489 m!2823483))

(declare-fun m!2824109 () Bool)

(assert (=> d!706489 m!2824109))

(assert (=> b!2448863 m!2823157))

(assert (=> b!2448863 m!2823557))

(assert (=> b!2448863 m!2823483))

(assert (=> b!2448863 m!2823557))

(declare-fun m!2824111 () Bool)

(assert (=> b!2448863 m!2824111))

(assert (=> b!2448863 m!2823157))

(assert (=> b!2448863 m!2823561))

(assert (=> b!2448863 m!2824111))

(assert (=> b!2448863 m!2823561))

(declare-fun m!2824113 () Bool)

(assert (=> b!2448863 m!2824113))

(assert (=> b!2448079 d!706489))

(declare-fun b!2448873 () Bool)

(declare-fun e!1554884 () Regex!7197)

(assert (=> b!2448873 (= e!1554884 EmptyLang!7197)))

(declare-fun b!2448874 () Bool)

(declare-fun e!1554882 () Regex!7197)

(declare-fun call!150436 () Regex!7197)

(assert (=> b!2448874 (= e!1554882 (Concat!11833 call!150436 (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448875 () Bool)

(declare-fun e!1554880 () Regex!7197)

(assert (=> b!2448875 (= e!1554880 (ite (= (head!5570 s!9460) (c!390559 (generalisedConcat!298 (t!208607 l!9164)))) EmptyExpr!7197 EmptyLang!7197))))

(declare-fun b!2448876 () Bool)

(declare-fun c!390933 () Bool)

(assert (=> b!2448876 (= c!390933 ((_ is Union!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun e!1554883 () Regex!7197)

(assert (=> b!2448876 (= e!1554880 e!1554883)))

(declare-fun d!706499 () Bool)

(declare-fun lt!879656 () Regex!7197)

(assert (=> d!706499 (validRegex!2897 lt!879656)))

(assert (=> d!706499 (= lt!879656 e!1554884)))

(declare-fun c!390930 () Bool)

(assert (=> d!706499 (= c!390930 (or ((_ is EmptyExpr!7197) (generalisedConcat!298 (t!208607 l!9164))) ((_ is EmptyLang!7197) (generalisedConcat!298 (t!208607 l!9164)))))))

(assert (=> d!706499 (validRegex!2897 (generalisedConcat!298 (t!208607 l!9164)))))

(assert (=> d!706499 (= (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 s!9460)) lt!879656)))

(declare-fun bm!150428 () Bool)

(declare-fun call!150434 () Regex!7197)

(assert (=> bm!150428 (= call!150434 (derivativeStep!1859 (ite c!390933 (regTwo!14907 (generalisedConcat!298 (t!208607 l!9164))) (regOne!14906 (generalisedConcat!298 (t!208607 l!9164)))) (head!5570 s!9460)))))

(declare-fun b!2448877 () Bool)

(declare-fun call!150433 () Regex!7197)

(assert (=> b!2448877 (= e!1554883 (Union!7197 call!150433 call!150434))))

(declare-fun b!2448878 () Bool)

(declare-fun c!390932 () Bool)

(assert (=> b!2448878 (= c!390932 (nullable!2205 (regOne!14906 (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun e!1554881 () Regex!7197)

(assert (=> b!2448878 (= e!1554882 e!1554881)))

(declare-fun b!2448879 () Bool)

(assert (=> b!2448879 (= e!1554884 e!1554880)))

(declare-fun c!390931 () Bool)

(assert (=> b!2448879 (= c!390931 ((_ is ElementMatch!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun bm!150429 () Bool)

(declare-fun call!150435 () Regex!7197)

(assert (=> bm!150429 (= call!150435 call!150436)))

(declare-fun c!390934 () Bool)

(declare-fun bm!150430 () Bool)

(assert (=> bm!150430 (= call!150433 (derivativeStep!1859 (ite c!390933 (regOne!14907 (generalisedConcat!298 (t!208607 l!9164))) (ite c!390934 (reg!7526 (generalisedConcat!298 (t!208607 l!9164))) (ite c!390932 (regTwo!14906 (generalisedConcat!298 (t!208607 l!9164))) (regOne!14906 (generalisedConcat!298 (t!208607 l!9164)))))) (head!5570 s!9460)))))

(declare-fun bm!150431 () Bool)

(assert (=> bm!150431 (= call!150436 call!150433)))

(declare-fun b!2448880 () Bool)

(assert (=> b!2448880 (= e!1554883 e!1554882)))

(assert (=> b!2448880 (= c!390934 ((_ is Star!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448881 () Bool)

(assert (=> b!2448881 (= e!1554881 (Union!7197 (Concat!11833 call!150435 (regTwo!14906 (generalisedConcat!298 (t!208607 l!9164)))) EmptyLang!7197))))

(declare-fun b!2448882 () Bool)

(assert (=> b!2448882 (= e!1554881 (Union!7197 (Concat!11833 call!150434 (regTwo!14906 (generalisedConcat!298 (t!208607 l!9164)))) call!150435))))

(assert (= (and d!706499 c!390930) b!2448873))

(assert (= (and d!706499 (not c!390930)) b!2448879))

(assert (= (and b!2448879 c!390931) b!2448875))

(assert (= (and b!2448879 (not c!390931)) b!2448876))

(assert (= (and b!2448876 c!390933) b!2448877))

(assert (= (and b!2448876 (not c!390933)) b!2448880))

(assert (= (and b!2448880 c!390934) b!2448874))

(assert (= (and b!2448880 (not c!390934)) b!2448878))

(assert (= (and b!2448878 c!390932) b!2448882))

(assert (= (and b!2448878 (not c!390932)) b!2448881))

(assert (= (or b!2448882 b!2448881) bm!150429))

(assert (= (or b!2448874 bm!150429) bm!150431))

(assert (= (or b!2448877 bm!150431) bm!150430))

(assert (= (or b!2448877 b!2448882) bm!150428))

(declare-fun m!2824121 () Bool)

(assert (=> d!706499 m!2824121))

(assert (=> d!706499 m!2822979))

(assert (=> d!706499 m!2823411))

(assert (=> bm!150428 m!2823153))

(declare-fun m!2824123 () Bool)

(assert (=> bm!150428 m!2824123))

(declare-fun m!2824125 () Bool)

(assert (=> b!2448878 m!2824125))

(assert (=> bm!150430 m!2823153))

(declare-fun m!2824127 () Bool)

(assert (=> bm!150430 m!2824127))

(assert (=> b!2448079 d!706499))

(assert (=> b!2448079 d!706193))

(assert (=> b!2448079 d!706201))

(declare-fun d!706503 () Bool)

(assert (=> d!706503 (= (isEmpty!16569 Nil!28533) true)))

(assert (=> d!706215 d!706503))

(assert (=> d!706215 d!706183))

(declare-fun b!2448897 () Bool)

(declare-fun res!1039082 () Bool)

(declare-fun e!1554893 () Bool)

(assert (=> b!2448897 (=> res!1039082 e!1554893)))

(declare-fun e!1554898 () Bool)

(assert (=> b!2448897 (= res!1039082 e!1554898)))

(declare-fun res!1039085 () Bool)

(assert (=> b!2448897 (=> (not res!1039085) (not e!1554898))))

(declare-fun lt!879658 () Bool)

(assert (=> b!2448897 (= res!1039085 lt!879658)))

(declare-fun b!2448898 () Bool)

(declare-fun res!1039081 () Bool)

(assert (=> b!2448898 (=> (not res!1039081) (not e!1554898))))

(declare-fun call!150438 () Bool)

(assert (=> b!2448898 (= res!1039081 (not call!150438))))

(declare-fun b!2448899 () Bool)

(declare-fun e!1554892 () Bool)

(assert (=> b!2448899 (= e!1554892 (= lt!879658 call!150438))))

(declare-fun b!2448900 () Bool)

(declare-fun res!1039083 () Bool)

(assert (=> b!2448900 (=> res!1039083 e!1554893)))

(assert (=> b!2448900 (= res!1039083 (not ((_ is ElementMatch!7197) (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551)))))))))

(declare-fun e!1554897 () Bool)

(assert (=> b!2448900 (= e!1554897 e!1554893)))

(declare-fun b!2448901 () Bool)

(declare-fun e!1554895 () Bool)

(assert (=> b!2448901 (= e!1554895 (not (= (head!5570 (tail!3843 (_2!16614 (get!8823 lt!879551)))) (c!390559 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551))))))))))

(declare-fun bm!150433 () Bool)

(assert (=> bm!150433 (= call!150438 (isEmpty!16569 (tail!3843 (_2!16614 (get!8823 lt!879551)))))))

(declare-fun b!2448902 () Bool)

(declare-fun e!1554896 () Bool)

(assert (=> b!2448902 (= e!1554893 e!1554896)))

(declare-fun res!1039086 () Bool)

(assert (=> b!2448902 (=> (not res!1039086) (not e!1554896))))

(assert (=> b!2448902 (= res!1039086 (not lt!879658))))

(declare-fun b!2448903 () Bool)

(declare-fun res!1039084 () Bool)

(assert (=> b!2448903 (=> (not res!1039084) (not e!1554898))))

(assert (=> b!2448903 (= res!1039084 (isEmpty!16569 (tail!3843 (tail!3843 (_2!16614 (get!8823 lt!879551))))))))

(declare-fun d!706505 () Bool)

(assert (=> d!706505 e!1554892))

(declare-fun c!390939 () Bool)

(assert (=> d!706505 (= c!390939 ((_ is EmptyExpr!7197) (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551))))))))

(declare-fun e!1554894 () Bool)

(assert (=> d!706505 (= lt!879658 e!1554894)))

(declare-fun c!390938 () Bool)

(assert (=> d!706505 (= c!390938 (isEmpty!16569 (tail!3843 (_2!16614 (get!8823 lt!879551)))))))

(assert (=> d!706505 (validRegex!2897 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551)))))))

(assert (=> d!706505 (= (matchR!3312 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551)))) (tail!3843 (_2!16614 (get!8823 lt!879551)))) lt!879658)))

(declare-fun b!2448904 () Bool)

(assert (=> b!2448904 (= e!1554896 e!1554895)))

(declare-fun res!1039088 () Bool)

(assert (=> b!2448904 (=> res!1039088 e!1554895)))

(assert (=> b!2448904 (= res!1039088 call!150438)))

(declare-fun b!2448905 () Bool)

(assert (=> b!2448905 (= e!1554898 (= (head!5570 (tail!3843 (_2!16614 (get!8823 lt!879551)))) (c!390559 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551)))))))))

(declare-fun b!2448906 () Bool)

(assert (=> b!2448906 (= e!1554897 (not lt!879658))))

(declare-fun b!2448907 () Bool)

(assert (=> b!2448907 (= e!1554892 e!1554897)))

(declare-fun c!390940 () Bool)

(assert (=> b!2448907 (= c!390940 ((_ is EmptyLang!7197) (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551))))))))

(declare-fun b!2448908 () Bool)

(assert (=> b!2448908 (= e!1554894 (nullable!2205 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551))))))))

(declare-fun b!2448909 () Bool)

(declare-fun res!1039087 () Bool)

(assert (=> b!2448909 (=> res!1039087 e!1554895)))

(assert (=> b!2448909 (= res!1039087 (not (isEmpty!16569 (tail!3843 (tail!3843 (_2!16614 (get!8823 lt!879551)))))))))

(declare-fun b!2448910 () Bool)

(assert (=> b!2448910 (= e!1554894 (matchR!3312 (derivativeStep!1859 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551)))) (head!5570 (tail!3843 (_2!16614 (get!8823 lt!879551))))) (tail!3843 (tail!3843 (_2!16614 (get!8823 lt!879551))))))))

(assert (= (and d!706505 c!390938) b!2448908))

(assert (= (and d!706505 (not c!390938)) b!2448910))

(assert (= (and d!706505 c!390939) b!2448899))

(assert (= (and d!706505 (not c!390939)) b!2448907))

(assert (= (and b!2448907 c!390940) b!2448906))

(assert (= (and b!2448907 (not c!390940)) b!2448900))

(assert (= (and b!2448900 (not res!1039083)) b!2448897))

(assert (= (and b!2448897 res!1039085) b!2448898))

(assert (= (and b!2448898 res!1039081) b!2448903))

(assert (= (and b!2448903 res!1039084) b!2448905))

(assert (= (and b!2448897 (not res!1039082)) b!2448902))

(assert (= (and b!2448902 res!1039086) b!2448904))

(assert (= (and b!2448904 (not res!1039088)) b!2448909))

(assert (= (and b!2448909 (not res!1039087)) b!2448901))

(assert (= (or b!2448899 b!2448898 b!2448904) bm!150433))

(assert (=> b!2448901 m!2823407))

(declare-fun m!2824135 () Bool)

(assert (=> b!2448901 m!2824135))

(assert (=> bm!150433 m!2823407))

(assert (=> bm!150433 m!2823409))

(assert (=> b!2448908 m!2823413))

(declare-fun m!2824139 () Bool)

(assert (=> b!2448908 m!2824139))

(assert (=> b!2448903 m!2823407))

(declare-fun m!2824141 () Bool)

(assert (=> b!2448903 m!2824141))

(assert (=> b!2448903 m!2824141))

(declare-fun m!2824143 () Bool)

(assert (=> b!2448903 m!2824143))

(assert (=> b!2448909 m!2823407))

(assert (=> b!2448909 m!2824141))

(assert (=> b!2448909 m!2824141))

(assert (=> b!2448909 m!2824143))

(assert (=> b!2448905 m!2823407))

(assert (=> b!2448905 m!2824135))

(assert (=> d!706505 m!2823407))

(assert (=> d!706505 m!2823409))

(assert (=> d!706505 m!2823413))

(declare-fun m!2824147 () Bool)

(assert (=> d!706505 m!2824147))

(assert (=> b!2448910 m!2823407))

(assert (=> b!2448910 m!2824135))

(assert (=> b!2448910 m!2823413))

(assert (=> b!2448910 m!2824135))

(declare-fun m!2824151 () Bool)

(assert (=> b!2448910 m!2824151))

(assert (=> b!2448910 m!2823407))

(assert (=> b!2448910 m!2824141))

(assert (=> b!2448910 m!2824151))

(assert (=> b!2448910 m!2824141))

(declare-fun m!2824153 () Bool)

(assert (=> b!2448910 m!2824153))

(assert (=> b!2448019 d!706505))

(declare-fun b!2448911 () Bool)

(declare-fun e!1554903 () Regex!7197)

(assert (=> b!2448911 (= e!1554903 EmptyLang!7197)))

(declare-fun b!2448912 () Bool)

(declare-fun e!1554901 () Regex!7197)

(declare-fun call!150442 () Regex!7197)

(assert (=> b!2448912 (= e!1554901 (Concat!11833 call!150442 (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448913 () Bool)

(declare-fun e!1554899 () Regex!7197)

(assert (=> b!2448913 (= e!1554899 (ite (= (head!5570 (_2!16614 (get!8823 lt!879551))) (c!390559 (generalisedConcat!298 (t!208607 l!9164)))) EmptyExpr!7197 EmptyLang!7197))))

(declare-fun b!2448914 () Bool)

(declare-fun c!390944 () Bool)

(assert (=> b!2448914 (= c!390944 ((_ is Union!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun e!1554902 () Regex!7197)

(assert (=> b!2448914 (= e!1554899 e!1554902)))

(declare-fun d!706509 () Bool)

(declare-fun lt!879659 () Regex!7197)

(assert (=> d!706509 (validRegex!2897 lt!879659)))

(assert (=> d!706509 (= lt!879659 e!1554903)))

(declare-fun c!390941 () Bool)

(assert (=> d!706509 (= c!390941 (or ((_ is EmptyExpr!7197) (generalisedConcat!298 (t!208607 l!9164))) ((_ is EmptyLang!7197) (generalisedConcat!298 (t!208607 l!9164)))))))

(assert (=> d!706509 (validRegex!2897 (generalisedConcat!298 (t!208607 l!9164)))))

(assert (=> d!706509 (= (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879551)))) lt!879659)))

(declare-fun call!150440 () Regex!7197)

(declare-fun bm!150434 () Bool)

(assert (=> bm!150434 (= call!150440 (derivativeStep!1859 (ite c!390944 (regTwo!14907 (generalisedConcat!298 (t!208607 l!9164))) (regOne!14906 (generalisedConcat!298 (t!208607 l!9164)))) (head!5570 (_2!16614 (get!8823 lt!879551)))))))

(declare-fun b!2448915 () Bool)

(declare-fun call!150439 () Regex!7197)

(assert (=> b!2448915 (= e!1554902 (Union!7197 call!150439 call!150440))))

(declare-fun b!2448916 () Bool)

(declare-fun c!390943 () Bool)

(assert (=> b!2448916 (= c!390943 (nullable!2205 (regOne!14906 (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun e!1554900 () Regex!7197)

(assert (=> b!2448916 (= e!1554901 e!1554900)))

(declare-fun b!2448917 () Bool)

(assert (=> b!2448917 (= e!1554903 e!1554899)))

(declare-fun c!390942 () Bool)

(assert (=> b!2448917 (= c!390942 ((_ is ElementMatch!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun bm!150435 () Bool)

(declare-fun call!150441 () Regex!7197)

(assert (=> bm!150435 (= call!150441 call!150442)))

(declare-fun c!390945 () Bool)

(declare-fun bm!150436 () Bool)

(assert (=> bm!150436 (= call!150439 (derivativeStep!1859 (ite c!390944 (regOne!14907 (generalisedConcat!298 (t!208607 l!9164))) (ite c!390945 (reg!7526 (generalisedConcat!298 (t!208607 l!9164))) (ite c!390943 (regTwo!14906 (generalisedConcat!298 (t!208607 l!9164))) (regOne!14906 (generalisedConcat!298 (t!208607 l!9164)))))) (head!5570 (_2!16614 (get!8823 lt!879551)))))))

(declare-fun bm!150437 () Bool)

(assert (=> bm!150437 (= call!150442 call!150439)))

(declare-fun b!2448918 () Bool)

(assert (=> b!2448918 (= e!1554902 e!1554901)))

(assert (=> b!2448918 (= c!390945 ((_ is Star!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2448919 () Bool)

(assert (=> b!2448919 (= e!1554900 (Union!7197 (Concat!11833 call!150441 (regTwo!14906 (generalisedConcat!298 (t!208607 l!9164)))) EmptyLang!7197))))

(declare-fun b!2448920 () Bool)

(assert (=> b!2448920 (= e!1554900 (Union!7197 (Concat!11833 call!150440 (regTwo!14906 (generalisedConcat!298 (t!208607 l!9164)))) call!150441))))

(assert (= (and d!706509 c!390941) b!2448911))

(assert (= (and d!706509 (not c!390941)) b!2448917))

(assert (= (and b!2448917 c!390942) b!2448913))

(assert (= (and b!2448917 (not c!390942)) b!2448914))

(assert (= (and b!2448914 c!390944) b!2448915))

(assert (= (and b!2448914 (not c!390944)) b!2448918))

(assert (= (and b!2448918 c!390945) b!2448912))

(assert (= (and b!2448918 (not c!390945)) b!2448916))

(assert (= (and b!2448916 c!390943) b!2448920))

(assert (= (and b!2448916 (not c!390943)) b!2448919))

(assert (= (or b!2448920 b!2448919) bm!150435))

(assert (= (or b!2448912 bm!150435) bm!150437))

(assert (= (or b!2448915 bm!150437) bm!150436))

(assert (= (or b!2448915 b!2448920) bm!150434))

(declare-fun m!2824155 () Bool)

(assert (=> d!706509 m!2824155))

(assert (=> d!706509 m!2822979))

(assert (=> d!706509 m!2823411))

(assert (=> bm!150434 m!2823401))

(declare-fun m!2824157 () Bool)

(assert (=> bm!150434 m!2824157))

(assert (=> b!2448916 m!2824125))

(assert (=> bm!150436 m!2823401))

(declare-fun m!2824161 () Bool)

(assert (=> bm!150436 m!2824161))

(assert (=> b!2448019 d!706509))

(assert (=> b!2448019 d!706297))

(assert (=> b!2448019 d!706395))

(assert (=> b!2448127 d!706167))

(declare-fun d!706511 () Bool)

(assert (=> d!706511 (= (nullable!2205 (reg!7526 lt!879563)) (nullableFct!537 (reg!7526 lt!879563)))))

(declare-fun bs!465565 () Bool)

(assert (= bs!465565 d!706511))

(declare-fun m!2824166 () Bool)

(assert (=> bs!465565 m!2824166))

(assert (=> b!2448044 d!706511))

(assert (=> b!2448207 d!706485))

(declare-fun d!706513 () Bool)

(declare-fun res!1039091 () Bool)

(declare-fun e!1554906 () Bool)

(assert (=> d!706513 (=> res!1039091 e!1554906)))

(assert (=> d!706513 (= res!1039091 ((_ is Nil!28532) (t!208607 (t!208607 l!9164))))))

(assert (=> d!706513 (= (forall!5831 (t!208607 (t!208607 l!9164)) lambda!92764) e!1554906)))

(declare-fun b!2448925 () Bool)

(declare-fun e!1554907 () Bool)

(assert (=> b!2448925 (= e!1554906 e!1554907)))

(declare-fun res!1039092 () Bool)

(assert (=> b!2448925 (=> (not res!1039092) (not e!1554907))))

(assert (=> b!2448925 (= res!1039092 (dynLambda!12263 lambda!92764 (h!33933 (t!208607 (t!208607 l!9164)))))))

(declare-fun b!2448926 () Bool)

(assert (=> b!2448926 (= e!1554907 (forall!5831 (t!208607 (t!208607 (t!208607 l!9164))) lambda!92764))))

(assert (= (and d!706513 (not res!1039091)) b!2448925))

(assert (= (and b!2448925 res!1039092) b!2448926))

(declare-fun b_lambda!75059 () Bool)

(assert (=> (not b_lambda!75059) (not b!2448925)))

(declare-fun m!2824173 () Bool)

(assert (=> b!2448925 m!2824173))

(declare-fun m!2824175 () Bool)

(assert (=> b!2448926 m!2824175))

(assert (=> b!2448048 d!706513))

(assert (=> bm!150333 d!706503))

(declare-fun bs!465566 () Bool)

(declare-fun b!2448938 () Bool)

(assert (= bs!465566 (and b!2448938 b!2448547)))

(declare-fun lambda!92790 () Int)

(assert (=> bs!465566 (not (= lambda!92790 lambda!92786))))

(declare-fun bs!465568 () Bool)

(assert (= bs!465568 (and b!2448938 b!2448137)))

(assert (=> bs!465568 (not (= lambda!92790 lambda!92779))))

(declare-fun bs!465569 () Bool)

(assert (= bs!465569 (and b!2448938 b!2447545)))

(assert (=> bs!465569 (= (and (= (reg!7526 (regTwo!14907 (regTwo!14907 r!13927))) (reg!7526 r!13927)) (= (regTwo!14907 (regTwo!14907 r!13927)) r!13927)) (= lambda!92790 lambda!92770))))

(declare-fun bs!465570 () Bool)

(assert (= bs!465570 (and b!2448938 b!2447542)))

(assert (=> bs!465570 (not (= lambda!92790 lambda!92771))))

(declare-fun bs!465571 () Bool)

(assert (= bs!465571 (and b!2448938 b!2448151)))

(assert (=> bs!465571 (= (and (= (reg!7526 (regTwo!14907 (regTwo!14907 r!13927))) (reg!7526 (regTwo!14907 r!13927))) (= (regTwo!14907 (regTwo!14907 r!13927)) (regTwo!14907 r!13927))) (= lambda!92790 lambda!92780))))

(declare-fun bs!465572 () Bool)

(assert (= bs!465572 (and b!2448938 b!2448140)))

(assert (=> bs!465572 (= (and (= (reg!7526 (regTwo!14907 (regTwo!14907 r!13927))) (reg!7526 (regOne!14907 r!13927))) (= (regTwo!14907 (regTwo!14907 r!13927)) (regOne!14907 r!13927))) (= lambda!92790 lambda!92778))))

(declare-fun bs!465573 () Bool)

(assert (= bs!465573 (and b!2448938 b!2448148)))

(assert (=> bs!465573 (not (= lambda!92790 lambda!92781))))

(declare-fun bs!465574 () Bool)

(assert (= bs!465574 (and b!2448938 b!2448550)))

(assert (=> bs!465574 (= (and (= (reg!7526 (regTwo!14907 (regTwo!14907 r!13927))) (reg!7526 (regOne!14907 (regOne!14907 r!13927)))) (= (regTwo!14907 (regTwo!14907 r!13927)) (regOne!14907 (regOne!14907 r!13927)))) (= lambda!92790 lambda!92785))))

(assert (=> b!2448938 true))

(assert (=> b!2448938 true))

(declare-fun bs!465575 () Bool)

(declare-fun b!2448935 () Bool)

(assert (= bs!465575 (and b!2448935 b!2448547)))

(declare-fun lambda!92791 () Int)

(assert (=> bs!465575 (= (and (= (regOne!14906 (regTwo!14907 (regTwo!14907 r!13927))) (regOne!14906 (regOne!14907 (regOne!14907 r!13927)))) (= (regTwo!14906 (regTwo!14907 (regTwo!14907 r!13927))) (regTwo!14906 (regOne!14907 (regOne!14907 r!13927))))) (= lambda!92791 lambda!92786))))

(declare-fun bs!465576 () Bool)

(assert (= bs!465576 (and b!2448935 b!2448137)))

(assert (=> bs!465576 (= (and (= (regOne!14906 (regTwo!14907 (regTwo!14907 r!13927))) (regOne!14906 (regOne!14907 r!13927))) (= (regTwo!14906 (regTwo!14907 (regTwo!14907 r!13927))) (regTwo!14906 (regOne!14907 r!13927)))) (= lambda!92791 lambda!92779))))

(declare-fun bs!465577 () Bool)

(assert (= bs!465577 (and b!2448935 b!2447545)))

(assert (=> bs!465577 (not (= lambda!92791 lambda!92770))))

(declare-fun bs!465578 () Bool)

(assert (= bs!465578 (and b!2448935 b!2447542)))

(assert (=> bs!465578 (= (and (= (regOne!14906 (regTwo!14907 (regTwo!14907 r!13927))) (regOne!14906 r!13927)) (= (regTwo!14906 (regTwo!14907 (regTwo!14907 r!13927))) (regTwo!14906 r!13927))) (= lambda!92791 lambda!92771))))

(declare-fun bs!465579 () Bool)

(assert (= bs!465579 (and b!2448935 b!2448151)))

(assert (=> bs!465579 (not (= lambda!92791 lambda!92780))))

(declare-fun bs!465580 () Bool)

(assert (= bs!465580 (and b!2448935 b!2448938)))

(assert (=> bs!465580 (not (= lambda!92791 lambda!92790))))

(declare-fun bs!465581 () Bool)

(assert (= bs!465581 (and b!2448935 b!2448140)))

(assert (=> bs!465581 (not (= lambda!92791 lambda!92778))))

(declare-fun bs!465582 () Bool)

(assert (= bs!465582 (and b!2448935 b!2448148)))

(assert (=> bs!465582 (= (and (= (regOne!14906 (regTwo!14907 (regTwo!14907 r!13927))) (regOne!14906 (regTwo!14907 r!13927))) (= (regTwo!14906 (regTwo!14907 (regTwo!14907 r!13927))) (regTwo!14906 (regTwo!14907 r!13927)))) (= lambda!92791 lambda!92781))))

(declare-fun bs!465583 () Bool)

(assert (= bs!465583 (and b!2448935 b!2448550)))

(assert (=> bs!465583 (not (= lambda!92791 lambda!92785))))

(assert (=> b!2448935 true))

(assert (=> b!2448935 true))

(declare-fun b!2448931 () Bool)

(declare-fun e!1554912 () Bool)

(declare-fun e!1554913 () Bool)

(assert (=> b!2448931 (= e!1554912 e!1554913)))

(declare-fun res!1039096 () Bool)

(assert (=> b!2448931 (= res!1039096 (matchRSpec!1044 (regOne!14907 (regTwo!14907 (regTwo!14907 r!13927))) s!9460))))

(assert (=> b!2448931 (=> res!1039096 e!1554913)))

(declare-fun b!2448932 () Bool)

(declare-fun e!1554911 () Bool)

(declare-fun e!1554916 () Bool)

(assert (=> b!2448932 (= e!1554911 e!1554916)))

(declare-fun res!1039095 () Bool)

(assert (=> b!2448932 (= res!1039095 (not ((_ is EmptyLang!7197) (regTwo!14907 (regTwo!14907 r!13927)))))))

(assert (=> b!2448932 (=> (not res!1039095) (not e!1554916))))

(declare-fun b!2448933 () Bool)

(declare-fun e!1554910 () Bool)

(assert (=> b!2448933 (= e!1554912 e!1554910)))

(declare-fun c!390949 () Bool)

(assert (=> b!2448933 (= c!390949 ((_ is Star!7197) (regTwo!14907 (regTwo!14907 r!13927))))))

(declare-fun b!2448934 () Bool)

(assert (=> b!2448934 (= e!1554913 (matchRSpec!1044 (regTwo!14907 (regTwo!14907 (regTwo!14907 r!13927))) s!9460))))

(declare-fun call!150443 () Bool)

(declare-fun bm!150438 () Bool)

(assert (=> bm!150438 (= call!150443 (Exists!1231 (ite c!390949 lambda!92790 lambda!92791)))))

(assert (=> b!2448935 (= e!1554910 call!150443)))

(declare-fun b!2448936 () Bool)

(declare-fun res!1039097 () Bool)

(declare-fun e!1554914 () Bool)

(assert (=> b!2448936 (=> res!1039097 e!1554914)))

(declare-fun call!150444 () Bool)

(assert (=> b!2448936 (= res!1039097 call!150444)))

(assert (=> b!2448936 (= e!1554910 e!1554914)))

(declare-fun b!2448937 () Bool)

(assert (=> b!2448937 (= e!1554911 call!150444)))

(declare-fun d!706517 () Bool)

(declare-fun c!390951 () Bool)

(assert (=> d!706517 (= c!390951 ((_ is EmptyExpr!7197) (regTwo!14907 (regTwo!14907 r!13927))))))

(assert (=> d!706517 (= (matchRSpec!1044 (regTwo!14907 (regTwo!14907 r!13927)) s!9460) e!1554911)))

(declare-fun bm!150439 () Bool)

(assert (=> bm!150439 (= call!150444 (isEmpty!16569 s!9460))))

(assert (=> b!2448938 (= e!1554914 call!150443)))

(declare-fun b!2448939 () Bool)

(declare-fun e!1554915 () Bool)

(assert (=> b!2448939 (= e!1554915 (= s!9460 (Cons!28533 (c!390559 (regTwo!14907 (regTwo!14907 r!13927))) Nil!28533)))))

(declare-fun b!2448940 () Bool)

(declare-fun c!390950 () Bool)

(assert (=> b!2448940 (= c!390950 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14907 r!13927))))))

(assert (=> b!2448940 (= e!1554916 e!1554915)))

(declare-fun b!2448941 () Bool)

(declare-fun c!390948 () Bool)

(assert (=> b!2448941 (= c!390948 ((_ is Union!7197) (regTwo!14907 (regTwo!14907 r!13927))))))

(assert (=> b!2448941 (= e!1554915 e!1554912)))

(assert (= (and d!706517 c!390951) b!2448937))

(assert (= (and d!706517 (not c!390951)) b!2448932))

(assert (= (and b!2448932 res!1039095) b!2448940))

(assert (= (and b!2448940 c!390950) b!2448939))

(assert (= (and b!2448940 (not c!390950)) b!2448941))

(assert (= (and b!2448941 c!390948) b!2448931))

(assert (= (and b!2448941 (not c!390948)) b!2448933))

(assert (= (and b!2448931 (not res!1039096)) b!2448934))

(assert (= (and b!2448933 c!390949) b!2448936))

(assert (= (and b!2448933 (not c!390949)) b!2448935))

(assert (= (and b!2448936 (not res!1039097)) b!2448938))

(assert (= (or b!2448938 b!2448935) bm!150438))

(assert (= (or b!2448937 b!2448936) bm!150439))

(declare-fun m!2824213 () Bool)

(assert (=> b!2448931 m!2824213))

(declare-fun m!2824215 () Bool)

(assert (=> b!2448934 m!2824215))

(declare-fun m!2824217 () Bool)

(assert (=> bm!150438 m!2824217))

(assert (=> bm!150439 m!2822987))

(assert (=> b!2448147 d!706517))

(declare-fun d!706527 () Bool)

(assert (=> d!706527 (= (nullable!2205 (reg!7526 r!13927)) (nullableFct!537 (reg!7526 r!13927)))))

(declare-fun bs!465584 () Bool)

(assert (= bs!465584 d!706527))

(declare-fun m!2824219 () Bool)

(assert (=> bs!465584 m!2824219))

(assert (=> b!2448086 d!706527))

(assert (=> b!2448211 d!706255))

(assert (=> b!2448211 d!706261))

(declare-fun b!2448951 () Bool)

(declare-fun res!1039104 () Bool)

(declare-fun e!1554923 () Bool)

(assert (=> b!2448951 (=> res!1039104 e!1554923)))

(declare-fun e!1554928 () Bool)

(assert (=> b!2448951 (= res!1039104 e!1554928)))

(declare-fun res!1039107 () Bool)

(assert (=> b!2448951 (=> (not res!1039107) (not e!1554928))))

(declare-fun lt!879666 () Bool)

(assert (=> b!2448951 (= res!1039107 lt!879666)))

(declare-fun b!2448952 () Bool)

(declare-fun res!1039103 () Bool)

(assert (=> b!2448952 (=> (not res!1039103) (not e!1554928))))

(declare-fun call!150445 () Bool)

(assert (=> b!2448952 (= res!1039103 (not call!150445))))

(declare-fun b!2448953 () Bool)

(declare-fun e!1554922 () Bool)

(assert (=> b!2448953 (= e!1554922 (= lt!879666 call!150445))))

(declare-fun b!2448954 () Bool)

(declare-fun res!1039105 () Bool)

(assert (=> b!2448954 (=> res!1039105 e!1554923)))

(assert (=> b!2448954 (= res!1039105 (not ((_ is ElementMatch!7197) (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460))))))))

(declare-fun e!1554927 () Bool)

(assert (=> b!2448954 (= e!1554927 e!1554923)))

(declare-fun b!2448955 () Bool)

(declare-fun e!1554925 () Bool)

(assert (=> b!2448955 (= e!1554925 (not (= (head!5570 (tail!3843 (tail!3843 s!9460))) (c!390559 (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460)))))))))

(declare-fun bm!150440 () Bool)

(assert (=> bm!150440 (= call!150445 (isEmpty!16569 (tail!3843 (tail!3843 s!9460))))))

(declare-fun b!2448956 () Bool)

(declare-fun e!1554926 () Bool)

(assert (=> b!2448956 (= e!1554923 e!1554926)))

(declare-fun res!1039108 () Bool)

(assert (=> b!2448956 (=> (not res!1039108) (not e!1554926))))

(assert (=> b!2448956 (= res!1039108 (not lt!879666))))

(declare-fun b!2448957 () Bool)

(declare-fun res!1039106 () Bool)

(assert (=> b!2448957 (=> (not res!1039106) (not e!1554928))))

(assert (=> b!2448957 (= res!1039106 (isEmpty!16569 (tail!3843 (tail!3843 (tail!3843 s!9460)))))))

(declare-fun d!706529 () Bool)

(assert (=> d!706529 e!1554922))

(declare-fun c!390955 () Bool)

(assert (=> d!706529 (= c!390955 ((_ is EmptyExpr!7197) (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460)))))))

(declare-fun e!1554924 () Bool)

(assert (=> d!706529 (= lt!879666 e!1554924)))

(declare-fun c!390954 () Bool)

(assert (=> d!706529 (= c!390954 (isEmpty!16569 (tail!3843 (tail!3843 s!9460))))))

(assert (=> d!706529 (validRegex!2897 (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460))))))

(assert (=> d!706529 (= (matchR!3312 (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460))) (tail!3843 (tail!3843 s!9460))) lt!879666)))

(declare-fun b!2448958 () Bool)

(assert (=> b!2448958 (= e!1554926 e!1554925)))

(declare-fun res!1039110 () Bool)

(assert (=> b!2448958 (=> res!1039110 e!1554925)))

(assert (=> b!2448958 (= res!1039110 call!150445)))

(declare-fun b!2448959 () Bool)

(assert (=> b!2448959 (= e!1554928 (= (head!5570 (tail!3843 (tail!3843 s!9460))) (c!390559 (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460))))))))

(declare-fun b!2448960 () Bool)

(assert (=> b!2448960 (= e!1554927 (not lt!879666))))

(declare-fun b!2448961 () Bool)

(assert (=> b!2448961 (= e!1554922 e!1554927)))

(declare-fun c!390956 () Bool)

(assert (=> b!2448961 (= c!390956 ((_ is EmptyLang!7197) (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460)))))))

(declare-fun b!2448962 () Bool)

(assert (=> b!2448962 (= e!1554924 (nullable!2205 (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460)))))))

(declare-fun b!2448963 () Bool)

(declare-fun res!1039109 () Bool)

(assert (=> b!2448963 (=> res!1039109 e!1554925)))

(assert (=> b!2448963 (= res!1039109 (not (isEmpty!16569 (tail!3843 (tail!3843 (tail!3843 s!9460))))))))

(declare-fun b!2448964 () Bool)

(assert (=> b!2448964 (= e!1554924 (matchR!3312 (derivativeStep!1859 (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460))) (head!5570 (tail!3843 (tail!3843 s!9460)))) (tail!3843 (tail!3843 (tail!3843 s!9460)))))))

(assert (= (and d!706529 c!390954) b!2448962))

(assert (= (and d!706529 (not c!390954)) b!2448964))

(assert (= (and d!706529 c!390955) b!2448953))

(assert (= (and d!706529 (not c!390955)) b!2448961))

(assert (= (and b!2448961 c!390956) b!2448960))

(assert (= (and b!2448961 (not c!390956)) b!2448954))

(assert (= (and b!2448954 (not res!1039105)) b!2448951))

(assert (= (and b!2448951 res!1039107) b!2448952))

(assert (= (and b!2448952 res!1039103) b!2448957))

(assert (= (and b!2448957 res!1039106) b!2448959))

(assert (= (and b!2448951 (not res!1039104)) b!2448956))

(assert (= (and b!2448956 res!1039108) b!2448958))

(assert (= (and b!2448958 (not res!1039110)) b!2448963))

(assert (= (and b!2448963 (not res!1039109)) b!2448955))

(assert (= (or b!2448953 b!2448952 b!2448958) bm!150440))

(assert (=> b!2448955 m!2823561))

(declare-fun m!2824221 () Bool)

(assert (=> b!2448955 m!2824221))

(assert (=> bm!150440 m!2823561))

(assert (=> bm!150440 m!2823563))

(assert (=> b!2448962 m!2823567))

(declare-fun m!2824223 () Bool)

(assert (=> b!2448962 m!2824223))

(assert (=> b!2448957 m!2823561))

(declare-fun m!2824225 () Bool)

(assert (=> b!2448957 m!2824225))

(assert (=> b!2448957 m!2824225))

(declare-fun m!2824227 () Bool)

(assert (=> b!2448957 m!2824227))

(assert (=> b!2448963 m!2823561))

(assert (=> b!2448963 m!2824225))

(assert (=> b!2448963 m!2824225))

(assert (=> b!2448963 m!2824227))

(assert (=> b!2448959 m!2823561))

(assert (=> b!2448959 m!2824221))

(assert (=> d!706529 m!2823561))

(assert (=> d!706529 m!2823563))

(assert (=> d!706529 m!2823567))

(declare-fun m!2824229 () Bool)

(assert (=> d!706529 m!2824229))

(assert (=> b!2448964 m!2823561))

(assert (=> b!2448964 m!2824221))

(assert (=> b!2448964 m!2823567))

(assert (=> b!2448964 m!2824221))

(declare-fun m!2824239 () Bool)

(assert (=> b!2448964 m!2824239))

(assert (=> b!2448964 m!2823561))

(assert (=> b!2448964 m!2824225))

(assert (=> b!2448964 m!2824239))

(assert (=> b!2448964 m!2824225))

(declare-fun m!2824243 () Bool)

(assert (=> b!2448964 m!2824243))

(assert (=> b!2448168 d!706529))

(declare-fun b!2448983 () Bool)

(declare-fun e!1554942 () Regex!7197)

(assert (=> b!2448983 (= e!1554942 EmptyLang!7197)))

(declare-fun b!2448984 () Bool)

(declare-fun call!150450 () Regex!7197)

(declare-fun e!1554940 () Regex!7197)

(assert (=> b!2448984 (= e!1554940 (Concat!11833 call!150450 (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(declare-fun b!2448985 () Bool)

(declare-fun e!1554938 () Regex!7197)

(assert (=> b!2448985 (= e!1554938 (ite (= (head!5570 (tail!3843 s!9460)) (c!390559 (derivativeStep!1859 r!13927 (head!5570 s!9460)))) EmptyExpr!7197 EmptyLang!7197))))

(declare-fun b!2448986 () Bool)

(declare-fun c!390964 () Bool)

(assert (=> b!2448986 (= c!390964 ((_ is Union!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(declare-fun e!1554941 () Regex!7197)

(assert (=> b!2448986 (= e!1554938 e!1554941)))

(declare-fun d!706535 () Bool)

(declare-fun lt!879669 () Regex!7197)

(assert (=> d!706535 (validRegex!2897 lt!879669)))

(assert (=> d!706535 (= lt!879669 e!1554942)))

(declare-fun c!390961 () Bool)

(assert (=> d!706535 (= c!390961 (or ((_ is EmptyExpr!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460))) ((_ is EmptyLang!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460)))))))

(assert (=> d!706535 (validRegex!2897 (derivativeStep!1859 r!13927 (head!5570 s!9460)))))

(assert (=> d!706535 (= (derivativeStep!1859 (derivativeStep!1859 r!13927 (head!5570 s!9460)) (head!5570 (tail!3843 s!9460))) lt!879669)))

(declare-fun call!150448 () Regex!7197)

(declare-fun bm!150442 () Bool)

(assert (=> bm!150442 (= call!150448 (derivativeStep!1859 (ite c!390964 (regTwo!14907 (derivativeStep!1859 r!13927 (head!5570 s!9460))) (regOne!14906 (derivativeStep!1859 r!13927 (head!5570 s!9460)))) (head!5570 (tail!3843 s!9460))))))

(declare-fun b!2448987 () Bool)

(declare-fun call!150447 () Regex!7197)

(assert (=> b!2448987 (= e!1554941 (Union!7197 call!150447 call!150448))))

(declare-fun b!2448988 () Bool)

(declare-fun c!390963 () Bool)

(assert (=> b!2448988 (= c!390963 (nullable!2205 (regOne!14906 (derivativeStep!1859 r!13927 (head!5570 s!9460)))))))

(declare-fun e!1554939 () Regex!7197)

(assert (=> b!2448988 (= e!1554940 e!1554939)))

(declare-fun b!2448989 () Bool)

(assert (=> b!2448989 (= e!1554942 e!1554938)))

(declare-fun c!390962 () Bool)

(assert (=> b!2448989 (= c!390962 ((_ is ElementMatch!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(declare-fun bm!150443 () Bool)

(declare-fun call!150449 () Regex!7197)

(assert (=> bm!150443 (= call!150449 call!150450)))

(declare-fun c!390965 () Bool)

(declare-fun bm!150444 () Bool)

(assert (=> bm!150444 (= call!150447 (derivativeStep!1859 (ite c!390964 (regOne!14907 (derivativeStep!1859 r!13927 (head!5570 s!9460))) (ite c!390965 (reg!7526 (derivativeStep!1859 r!13927 (head!5570 s!9460))) (ite c!390963 (regTwo!14906 (derivativeStep!1859 r!13927 (head!5570 s!9460))) (regOne!14906 (derivativeStep!1859 r!13927 (head!5570 s!9460)))))) (head!5570 (tail!3843 s!9460))))))

(declare-fun bm!150445 () Bool)

(assert (=> bm!150445 (= call!150450 call!150447)))

(declare-fun b!2448990 () Bool)

(assert (=> b!2448990 (= e!1554941 e!1554940)))

(assert (=> b!2448990 (= c!390965 ((_ is Star!7197) (derivativeStep!1859 r!13927 (head!5570 s!9460))))))

(declare-fun b!2448991 () Bool)

(assert (=> b!2448991 (= e!1554939 (Union!7197 (Concat!11833 call!150449 (regTwo!14906 (derivativeStep!1859 r!13927 (head!5570 s!9460)))) EmptyLang!7197))))

(declare-fun b!2448992 () Bool)

(assert (=> b!2448992 (= e!1554939 (Union!7197 (Concat!11833 call!150448 (regTwo!14906 (derivativeStep!1859 r!13927 (head!5570 s!9460)))) call!150449))))

(assert (= (and d!706535 c!390961) b!2448983))

(assert (= (and d!706535 (not c!390961)) b!2448989))

(assert (= (and b!2448989 c!390962) b!2448985))

(assert (= (and b!2448989 (not c!390962)) b!2448986))

(assert (= (and b!2448986 c!390964) b!2448987))

(assert (= (and b!2448986 (not c!390964)) b!2448990))

(assert (= (and b!2448990 c!390965) b!2448984))

(assert (= (and b!2448990 (not c!390965)) b!2448988))

(assert (= (and b!2448988 c!390963) b!2448992))

(assert (= (and b!2448988 (not c!390963)) b!2448991))

(assert (= (or b!2448992 b!2448991) bm!150443))

(assert (= (or b!2448984 bm!150443) bm!150445))

(assert (= (or b!2448987 bm!150445) bm!150444))

(assert (= (or b!2448987 b!2448992) bm!150442))

(declare-fun m!2824245 () Bool)

(assert (=> d!706535 m!2824245))

(assert (=> d!706535 m!2823163))

(assert (=> d!706535 m!2823565))

(assert (=> bm!150442 m!2823557))

(declare-fun m!2824247 () Bool)

(assert (=> bm!150442 m!2824247))

(declare-fun m!2824249 () Bool)

(assert (=> b!2448988 m!2824249))

(assert (=> bm!150444 m!2823557))

(declare-fun m!2824253 () Bool)

(assert (=> bm!150444 m!2824253))

(assert (=> b!2448168 d!706535))

(assert (=> b!2448168 d!706397))

(assert (=> b!2448168 d!706435))

(assert (=> b!2448072 d!706199))

(assert (=> b!2448072 d!706201))

(declare-fun b!2448995 () Bool)

(declare-fun res!1039122 () Bool)

(declare-fun e!1554943 () Bool)

(assert (=> b!2448995 (=> (not res!1039122) (not e!1554943))))

(declare-fun lt!879670 () List!28631)

(assert (=> b!2448995 (= res!1039122 (= (size!22268 lt!879670) (+ (size!22268 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533))) (size!22268 (t!208608 (t!208608 s!9460))))))))

(declare-fun d!706537 () Bool)

(assert (=> d!706537 e!1554943))

(declare-fun res!1039121 () Bool)

(assert (=> d!706537 (=> (not res!1039121) (not e!1554943))))

(assert (=> d!706537 (= res!1039121 (= (content!3930 lt!879670) ((_ map or) (content!3930 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533))) (content!3930 (t!208608 (t!208608 s!9460))))))))

(declare-fun e!1554944 () List!28631)

(assert (=> d!706537 (= lt!879670 e!1554944)))

(declare-fun c!390966 () Bool)

(assert (=> d!706537 (= c!390966 ((_ is Nil!28533) (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533))))))

(assert (=> d!706537 (= (++!7098 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)) (t!208608 (t!208608 s!9460))) lt!879670)))

(declare-fun b!2448996 () Bool)

(assert (=> b!2448996 (= e!1554943 (or (not (= (t!208608 (t!208608 s!9460)) Nil!28533)) (= lt!879670 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)))))))

(declare-fun b!2448994 () Bool)

(assert (=> b!2448994 (= e!1554944 (Cons!28533 (h!33934 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533))) (++!7098 (t!208608 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533))) (t!208608 (t!208608 s!9460)))))))

(declare-fun b!2448993 () Bool)

(assert (=> b!2448993 (= e!1554944 (t!208608 (t!208608 s!9460)))))

(assert (= (and d!706537 c!390966) b!2448993))

(assert (= (and d!706537 (not c!390966)) b!2448994))

(assert (= (and d!706537 res!1039121) b!2448995))

(assert (= (and b!2448995 res!1039122) b!2448996))

(declare-fun m!2824267 () Bool)

(assert (=> b!2448995 m!2824267))

(assert (=> b!2448995 m!2823475))

(declare-fun m!2824269 () Bool)

(assert (=> b!2448995 m!2824269))

(assert (=> b!2448995 m!2823909))

(declare-fun m!2824271 () Bool)

(assert (=> d!706537 m!2824271))

(assert (=> d!706537 m!2823475))

(declare-fun m!2824273 () Bool)

(assert (=> d!706537 m!2824273))

(assert (=> d!706537 m!2823801))

(declare-fun m!2824275 () Bool)

(assert (=> b!2448994 m!2824275))

(assert (=> b!2448059 d!706537))

(declare-fun b!2449009 () Bool)

(declare-fun res!1039124 () Bool)

(declare-fun e!1554950 () Bool)

(assert (=> b!2449009 (=> (not res!1039124) (not e!1554950))))

(declare-fun lt!879672 () List!28631)

(assert (=> b!2449009 (= res!1039124 (= (size!22268 lt!879672) (+ (size!22268 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (size!22268 (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)))))))

(declare-fun d!706541 () Bool)

(assert (=> d!706541 e!1554950))

(declare-fun res!1039123 () Bool)

(assert (=> d!706541 (=> (not res!1039123) (not e!1554950))))

(assert (=> d!706541 (= res!1039123 (= (content!3930 lt!879672) ((_ map or) (content!3930 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (content!3930 (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)))))))

(declare-fun e!1554951 () List!28631)

(assert (=> d!706541 (= lt!879672 e!1554951)))

(declare-fun c!390972 () Bool)

(assert (=> d!706541 (= c!390972 ((_ is Nil!28533) (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))

(assert (=> d!706541 (= (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)) lt!879672)))

(declare-fun b!2449010 () Bool)

(assert (=> b!2449010 (= e!1554950 (or (not (= (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533) Nil!28533)) (= lt!879672 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)))))))

(declare-fun b!2449008 () Bool)

(assert (=> b!2449008 (= e!1554951 (Cons!28533 (h!33934 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (++!7098 (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533))))))

(declare-fun b!2449007 () Bool)

(assert (=> b!2449007 (= e!1554951 (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533))))

(assert (= (and d!706541 c!390972) b!2449007))

(assert (= (and d!706541 (not c!390972)) b!2449008))

(assert (= (and d!706541 res!1039123) b!2449009))

(assert (= (and b!2449009 res!1039124) b!2449010))

(declare-fun m!2824277 () Bool)

(assert (=> b!2449009 m!2824277))

(assert (=> b!2449009 m!2823065))

(assert (=> b!2449009 m!2823431))

(declare-fun m!2824279 () Bool)

(assert (=> b!2449009 m!2824279))

(declare-fun m!2824283 () Bool)

(assert (=> d!706541 m!2824283))

(assert (=> d!706541 m!2823065))

(assert (=> d!706541 m!2823437))

(declare-fun m!2824285 () Bool)

(assert (=> d!706541 m!2824285))

(declare-fun m!2824287 () Bool)

(assert (=> b!2449008 m!2824287))

(assert (=> b!2448059 d!706541))

(declare-fun d!706543 () Bool)

(assert (=> d!706543 (= (++!7098 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)) (t!208608 (t!208608 s!9460))) s!9460)))

(declare-fun lt!879673 () Unit!41849)

(assert (=> d!706543 (= lt!879673 (choose!14523 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (h!33934 (t!208608 s!9460)) (t!208608 (t!208608 s!9460)) s!9460))))

(assert (=> d!706543 (= (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) (t!208608 (t!208608 s!9460)))) s!9460)))

(assert (=> d!706543 (= (lemmaMoveElementToOtherListKeepsConcatEq!707 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (h!33934 (t!208608 s!9460)) (t!208608 (t!208608 s!9460)) s!9460) lt!879673)))

(declare-fun bs!465586 () Bool)

(assert (= bs!465586 d!706543))

(assert (=> bs!465586 m!2823065))

(assert (=> bs!465586 m!2823475))

(assert (=> bs!465586 m!2823475))

(assert (=> bs!465586 m!2823477))

(assert (=> bs!465586 m!2823065))

(declare-fun m!2824295 () Bool)

(assert (=> bs!465586 m!2824295))

(assert (=> bs!465586 m!2823065))

(declare-fun m!2824297 () Bool)

(assert (=> bs!465586 m!2824297))

(assert (=> b!2448059 d!706543))

(declare-fun b!2449013 () Bool)

(declare-fun e!1554958 () Bool)

(assert (=> b!2449013 (= e!1554958 (matchR!3312 (generalisedConcat!298 (t!208607 l!9164)) (t!208608 (t!208608 s!9460))))))

(declare-fun b!2449014 () Bool)

(declare-fun e!1554956 () Bool)

(declare-fun lt!879674 () Option!5684)

(assert (=> b!2449014 (= e!1554956 (not (isDefined!4510 lt!879674)))))

(declare-fun b!2449016 () Bool)

(declare-fun res!1039131 () Bool)

(declare-fun e!1554954 () Bool)

(assert (=> b!2449016 (=> (not res!1039131) (not e!1554954))))

(assert (=> b!2449016 (= res!1039131 (matchR!3312 (generalisedConcat!298 (t!208607 l!9164)) (_2!16614 (get!8823 lt!879674))))))

(declare-fun b!2449017 () Bool)

(assert (=> b!2449017 (= e!1554954 (= (++!7098 (_1!16614 (get!8823 lt!879674)) (_2!16614 (get!8823 lt!879674))) s!9460))))

(declare-fun d!706549 () Bool)

(assert (=> d!706549 e!1554956))

(declare-fun res!1039128 () Bool)

(assert (=> d!706549 (=> res!1039128 e!1554956)))

(assert (=> d!706549 (= res!1039128 e!1554954)))

(declare-fun res!1039127 () Bool)

(assert (=> d!706549 (=> (not res!1039127) (not e!1554954))))

(assert (=> d!706549 (= res!1039127 (isDefined!4510 lt!879674))))

(declare-fun e!1554955 () Option!5684)

(assert (=> d!706549 (= lt!879674 e!1554955)))

(declare-fun c!390973 () Bool)

(assert (=> d!706549 (= c!390973 e!1554958)))

(declare-fun res!1039129 () Bool)

(assert (=> d!706549 (=> (not res!1039129) (not e!1554958))))

(assert (=> d!706549 (= res!1039129 (matchR!3312 (h!33933 l!9164) (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533))))))

(assert (=> d!706549 (validRegex!2897 (h!33933 l!9164))))

(assert (=> d!706549 (= (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)) (t!208608 (t!208608 s!9460)) s!9460) lt!879674)))

(declare-fun b!2449015 () Bool)

(declare-fun lt!879675 () Unit!41849)

(declare-fun lt!879676 () Unit!41849)

(assert (=> b!2449015 (= lt!879675 lt!879676)))

(assert (=> b!2449015 (= (++!7098 (++!7098 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)) (Cons!28533 (h!33934 (t!208608 (t!208608 s!9460))) Nil!28533)) (t!208608 (t!208608 (t!208608 s!9460)))) s!9460)))

(assert (=> b!2449015 (= lt!879676 (lemmaMoveElementToOtherListKeepsConcatEq!707 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)) (h!33934 (t!208608 (t!208608 s!9460))) (t!208608 (t!208608 (t!208608 s!9460))) s!9460))))

(declare-fun e!1554957 () Option!5684)

(assert (=> b!2449015 (= e!1554957 (findConcatSeparation!792 (h!33933 l!9164) (generalisedConcat!298 (t!208607 l!9164)) (++!7098 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)) (Cons!28533 (h!33934 (t!208608 (t!208608 s!9460))) Nil!28533)) (t!208608 (t!208608 (t!208608 s!9460))) s!9460))))

(declare-fun b!2449018 () Bool)

(assert (=> b!2449018 (= e!1554957 None!5683)))

(declare-fun b!2449019 () Bool)

(assert (=> b!2449019 (= e!1554955 (Some!5683 (tuple2!28147 (++!7098 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)) (Cons!28533 (h!33934 (t!208608 s!9460)) Nil!28533)) (t!208608 (t!208608 s!9460)))))))

(declare-fun b!2449020 () Bool)

(assert (=> b!2449020 (= e!1554955 e!1554957)))

(declare-fun c!390974 () Bool)

(assert (=> b!2449020 (= c!390974 ((_ is Nil!28533) (t!208608 (t!208608 s!9460))))))

(declare-fun b!2449021 () Bool)

(declare-fun res!1039130 () Bool)

(assert (=> b!2449021 (=> (not res!1039130) (not e!1554954))))

(assert (=> b!2449021 (= res!1039130 (matchR!3312 (h!33933 l!9164) (_1!16614 (get!8823 lt!879674))))))

(assert (= (and d!706549 res!1039129) b!2449013))

(assert (= (and d!706549 c!390973) b!2449019))

(assert (= (and d!706549 (not c!390973)) b!2449020))

(assert (= (and b!2449020 c!390974) b!2449018))

(assert (= (and b!2449020 (not c!390974)) b!2449015))

(assert (= (and d!706549 res!1039127) b!2449021))

(assert (= (and b!2449021 res!1039130) b!2449016))

(assert (= (and b!2449016 res!1039131) b!2449017))

(assert (= (and d!706549 (not res!1039128)) b!2449014))

(declare-fun m!2824305 () Bool)

(assert (=> b!2449014 m!2824305))

(assert (=> b!2449013 m!2822979))

(declare-fun m!2824307 () Bool)

(assert (=> b!2449013 m!2824307))

(assert (=> d!706549 m!2824305))

(assert (=> d!706549 m!2823475))

(declare-fun m!2824309 () Bool)

(assert (=> d!706549 m!2824309))

(assert (=> d!706549 m!2823055))

(declare-fun m!2824311 () Bool)

(assert (=> b!2449017 m!2824311))

(declare-fun m!2824313 () Bool)

(assert (=> b!2449017 m!2824313))

(assert (=> b!2449016 m!2824311))

(assert (=> b!2449016 m!2822979))

(declare-fun m!2824315 () Bool)

(assert (=> b!2449016 m!2824315))

(assert (=> b!2449021 m!2824311))

(declare-fun m!2824317 () Bool)

(assert (=> b!2449021 m!2824317))

(assert (=> b!2449015 m!2823475))

(declare-fun m!2824319 () Bool)

(assert (=> b!2449015 m!2824319))

(assert (=> b!2449015 m!2824319))

(declare-fun m!2824321 () Bool)

(assert (=> b!2449015 m!2824321))

(assert (=> b!2449015 m!2823475))

(declare-fun m!2824323 () Bool)

(assert (=> b!2449015 m!2824323))

(assert (=> b!2449015 m!2822979))

(assert (=> b!2449015 m!2824319))

(declare-fun m!2824325 () Bool)

(assert (=> b!2449015 m!2824325))

(assert (=> b!2448059 d!706549))

(assert (=> b!2448012 d!706393))

(assert (=> b!2448012 d!706395))

(assert (=> bm!150319 d!706003))

(declare-fun d!706555 () Bool)

(assert (=> d!706555 (= (isEmpty!16573 (t!208607 (t!208607 (t!208607 l!9164)))) ((_ is Nil!28532) (t!208607 (t!208607 (t!208607 l!9164)))))))

(assert (=> b!2448128 d!706555))

(declare-fun b!2449033 () Bool)

(declare-fun e!1554972 () Bool)

(declare-fun call!150459 () Bool)

(assert (=> b!2449033 (= e!1554972 call!150459)))

(declare-fun c!390980 () Bool)

(declare-fun bm!150452 () Bool)

(declare-fun call!150457 () Bool)

(declare-fun c!390979 () Bool)

(assert (=> bm!150452 (= call!150457 (validRegex!2897 (ite c!390980 (reg!7526 (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))) (ite c!390979 (regTwo!14907 (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))) (regOne!14906 (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164)))))))))))

(declare-fun b!2449034 () Bool)

(declare-fun e!1554967 () Bool)

(assert (=> b!2449034 (= e!1554967 call!150457)))

(declare-fun b!2449035 () Bool)

(declare-fun e!1554969 () Bool)

(declare-fun call!150458 () Bool)

(assert (=> b!2449035 (= e!1554969 call!150458)))

(declare-fun b!2449037 () Bool)

(declare-fun res!1039138 () Bool)

(declare-fun e!1554968 () Bool)

(assert (=> b!2449037 (=> res!1039138 e!1554968)))

(assert (=> b!2449037 (= res!1039138 (not ((_ is Concat!11833) (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164)))))))))

(declare-fun e!1554971 () Bool)

(assert (=> b!2449037 (= e!1554971 e!1554968)))

(declare-fun bm!150453 () Bool)

(assert (=> bm!150453 (= call!150459 call!150457)))

(declare-fun b!2449038 () Bool)

(declare-fun e!1554966 () Bool)

(declare-fun e!1554970 () Bool)

(assert (=> b!2449038 (= e!1554966 e!1554970)))

(assert (=> b!2449038 (= c!390980 ((_ is Star!7197) (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))))))

(declare-fun b!2449039 () Bool)

(assert (=> b!2449039 (= e!1554970 e!1554967)))

(declare-fun res!1039135 () Bool)

(assert (=> b!2449039 (= res!1039135 (not (nullable!2205 (reg!7526 (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))))))))

(assert (=> b!2449039 (=> (not res!1039135) (not e!1554967))))

(declare-fun b!2449040 () Bool)

(assert (=> b!2449040 (= e!1554970 e!1554971)))

(assert (=> b!2449040 (= c!390979 ((_ is Union!7197) (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))))))

(declare-fun b!2449041 () Bool)

(declare-fun res!1039136 () Bool)

(assert (=> b!2449041 (=> (not res!1039136) (not e!1554972))))

(assert (=> b!2449041 (= res!1039136 call!150458)))

(assert (=> b!2449041 (= e!1554971 e!1554972)))

(declare-fun bm!150454 () Bool)

(assert (=> bm!150454 (= call!150458 (validRegex!2897 (ite c!390979 (regOne!14907 (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))) (regTwo!14906 (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))))))))

(declare-fun d!706557 () Bool)

(declare-fun res!1039137 () Bool)

(assert (=> d!706557 (=> res!1039137 e!1554966)))

(assert (=> d!706557 (= res!1039137 ((_ is ElementMatch!7197) (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))))))

(assert (=> d!706557 (= (validRegex!2897 (ite c!390732 (reg!7526 (h!33933 l!9164)) (ite c!390731 (regTwo!14907 (h!33933 l!9164)) (regOne!14906 (h!33933 l!9164))))) e!1554966)))

(declare-fun b!2449036 () Bool)

(assert (=> b!2449036 (= e!1554968 e!1554969)))

(declare-fun res!1039139 () Bool)

(assert (=> b!2449036 (=> (not res!1039139) (not e!1554969))))

(assert (=> b!2449036 (= res!1039139 call!150459)))

(assert (= (and d!706557 (not res!1039137)) b!2449038))

(assert (= (and b!2449038 c!390980) b!2449039))

(assert (= (and b!2449038 (not c!390980)) b!2449040))

(assert (= (and b!2449039 res!1039135) b!2449034))

(assert (= (and b!2449040 c!390979) b!2449041))

(assert (= (and b!2449040 (not c!390979)) b!2449037))

(assert (= (and b!2449041 res!1039136) b!2449033))

(assert (= (and b!2449037 (not res!1039138)) b!2449036))

(assert (= (and b!2449036 res!1039139) b!2449035))

(assert (= (or b!2449041 b!2449035) bm!150454))

(assert (= (or b!2449033 b!2449036) bm!150453))

(assert (= (or b!2449034 bm!150453) bm!150452))

(declare-fun m!2824327 () Bool)

(assert (=> bm!150452 m!2824327))

(declare-fun m!2824329 () Bool)

(assert (=> b!2449039 m!2824329))

(declare-fun m!2824331 () Bool)

(assert (=> bm!150454 m!2824331))

(assert (=> bm!150310 d!706557))

(declare-fun bs!465606 () Bool)

(declare-fun b!2449049 () Bool)

(assert (= bs!465606 (and b!2449049 b!2448547)))

(declare-fun lambda!92794 () Int)

(assert (=> bs!465606 (not (= lambda!92794 lambda!92786))))

(declare-fun bs!465609 () Bool)

(assert (= bs!465609 (and b!2449049 b!2448137)))

(assert (=> bs!465609 (not (= lambda!92794 lambda!92779))))

(declare-fun bs!465611 () Bool)

(assert (= bs!465611 (and b!2449049 b!2447545)))

(assert (=> bs!465611 (= (and (= (reg!7526 (regOne!14907 (regTwo!14907 r!13927))) (reg!7526 r!13927)) (= (regOne!14907 (regTwo!14907 r!13927)) r!13927)) (= lambda!92794 lambda!92770))))

(declare-fun bs!465612 () Bool)

(assert (= bs!465612 (and b!2449049 b!2447542)))

(assert (=> bs!465612 (not (= lambda!92794 lambda!92771))))

(declare-fun bs!465613 () Bool)

(assert (= bs!465613 (and b!2449049 b!2448938)))

(assert (=> bs!465613 (= (and (= (reg!7526 (regOne!14907 (regTwo!14907 r!13927))) (reg!7526 (regTwo!14907 (regTwo!14907 r!13927)))) (= (regOne!14907 (regTwo!14907 r!13927)) (regTwo!14907 (regTwo!14907 r!13927)))) (= lambda!92794 lambda!92790))))

(declare-fun bs!465614 () Bool)

(assert (= bs!465614 (and b!2449049 b!2448140)))

(assert (=> bs!465614 (= (and (= (reg!7526 (regOne!14907 (regTwo!14907 r!13927))) (reg!7526 (regOne!14907 r!13927))) (= (regOne!14907 (regTwo!14907 r!13927)) (regOne!14907 r!13927))) (= lambda!92794 lambda!92778))))

(declare-fun bs!465615 () Bool)

(assert (= bs!465615 (and b!2449049 b!2448148)))

(assert (=> bs!465615 (not (= lambda!92794 lambda!92781))))

(declare-fun bs!465616 () Bool)

(assert (= bs!465616 (and b!2449049 b!2448550)))

(assert (=> bs!465616 (= (and (= (reg!7526 (regOne!14907 (regTwo!14907 r!13927))) (reg!7526 (regOne!14907 (regOne!14907 r!13927)))) (= (regOne!14907 (regTwo!14907 r!13927)) (regOne!14907 (regOne!14907 r!13927)))) (= lambda!92794 lambda!92785))))

(declare-fun bs!465617 () Bool)

(assert (= bs!465617 (and b!2449049 b!2448935)))

(assert (=> bs!465617 (not (= lambda!92794 lambda!92791))))

(declare-fun bs!465619 () Bool)

(assert (= bs!465619 (and b!2449049 b!2448151)))

(assert (=> bs!465619 (= (and (= (reg!7526 (regOne!14907 (regTwo!14907 r!13927))) (reg!7526 (regTwo!14907 r!13927))) (= (regOne!14907 (regTwo!14907 r!13927)) (regTwo!14907 r!13927))) (= lambda!92794 lambda!92780))))

(assert (=> b!2449049 true))

(assert (=> b!2449049 true))

(declare-fun bs!465621 () Bool)

(declare-fun b!2449046 () Bool)

(assert (= bs!465621 (and b!2449046 b!2448547)))

(declare-fun lambda!92795 () Int)

(assert (=> bs!465621 (= (and (= (regOne!14906 (regOne!14907 (regTwo!14907 r!13927))) (regOne!14906 (regOne!14907 (regOne!14907 r!13927)))) (= (regTwo!14906 (regOne!14907 (regTwo!14907 r!13927))) (regTwo!14906 (regOne!14907 (regOne!14907 r!13927))))) (= lambda!92795 lambda!92786))))

(declare-fun bs!465622 () Bool)

(assert (= bs!465622 (and b!2449046 b!2448137)))

(assert (=> bs!465622 (= (and (= (regOne!14906 (regOne!14907 (regTwo!14907 r!13927))) (regOne!14906 (regOne!14907 r!13927))) (= (regTwo!14906 (regOne!14907 (regTwo!14907 r!13927))) (regTwo!14906 (regOne!14907 r!13927)))) (= lambda!92795 lambda!92779))))

(declare-fun bs!465623 () Bool)

(assert (= bs!465623 (and b!2449046 b!2447545)))

(assert (=> bs!465623 (not (= lambda!92795 lambda!92770))))

(declare-fun bs!465624 () Bool)

(assert (= bs!465624 (and b!2449046 b!2449049)))

(assert (=> bs!465624 (not (= lambda!92795 lambda!92794))))

(declare-fun bs!465625 () Bool)

(assert (= bs!465625 (and b!2449046 b!2447542)))

(assert (=> bs!465625 (= (and (= (regOne!14906 (regOne!14907 (regTwo!14907 r!13927))) (regOne!14906 r!13927)) (= (regTwo!14906 (regOne!14907 (regTwo!14907 r!13927))) (regTwo!14906 r!13927))) (= lambda!92795 lambda!92771))))

(declare-fun bs!465626 () Bool)

(assert (= bs!465626 (and b!2449046 b!2448938)))

(assert (=> bs!465626 (not (= lambda!92795 lambda!92790))))

(declare-fun bs!465627 () Bool)

(assert (= bs!465627 (and b!2449046 b!2448140)))

(assert (=> bs!465627 (not (= lambda!92795 lambda!92778))))

(declare-fun bs!465628 () Bool)

(assert (= bs!465628 (and b!2449046 b!2448148)))

(assert (=> bs!465628 (= (and (= (regOne!14906 (regOne!14907 (regTwo!14907 r!13927))) (regOne!14906 (regTwo!14907 r!13927))) (= (regTwo!14906 (regOne!14907 (regTwo!14907 r!13927))) (regTwo!14906 (regTwo!14907 r!13927)))) (= lambda!92795 lambda!92781))))

(declare-fun bs!465629 () Bool)

(assert (= bs!465629 (and b!2449046 b!2448550)))

(assert (=> bs!465629 (not (= lambda!92795 lambda!92785))))

(declare-fun bs!465630 () Bool)

(assert (= bs!465630 (and b!2449046 b!2448935)))

(assert (=> bs!465630 (= (and (= (regOne!14906 (regOne!14907 (regTwo!14907 r!13927))) (regOne!14906 (regTwo!14907 (regTwo!14907 r!13927)))) (= (regTwo!14906 (regOne!14907 (regTwo!14907 r!13927))) (regTwo!14906 (regTwo!14907 (regTwo!14907 r!13927))))) (= lambda!92795 lambda!92791))))

(declare-fun bs!465631 () Bool)

(assert (= bs!465631 (and b!2449046 b!2448151)))

(assert (=> bs!465631 (not (= lambda!92795 lambda!92780))))

(assert (=> b!2449046 true))

(assert (=> b!2449046 true))

(declare-fun b!2449042 () Bool)

(declare-fun e!1554975 () Bool)

(declare-fun e!1554976 () Bool)

(assert (=> b!2449042 (= e!1554975 e!1554976)))

(declare-fun res!1039141 () Bool)

(assert (=> b!2449042 (= res!1039141 (matchRSpec!1044 (regOne!14907 (regOne!14907 (regTwo!14907 r!13927))) s!9460))))

(assert (=> b!2449042 (=> res!1039141 e!1554976)))

(declare-fun b!2449043 () Bool)

(declare-fun e!1554974 () Bool)

(declare-fun e!1554979 () Bool)

(assert (=> b!2449043 (= e!1554974 e!1554979)))

(declare-fun res!1039140 () Bool)

(assert (=> b!2449043 (= res!1039140 (not ((_ is EmptyLang!7197) (regOne!14907 (regTwo!14907 r!13927)))))))

(assert (=> b!2449043 (=> (not res!1039140) (not e!1554979))))

(declare-fun b!2449044 () Bool)

(declare-fun e!1554973 () Bool)

(assert (=> b!2449044 (= e!1554975 e!1554973)))

(declare-fun c!390982 () Bool)

(assert (=> b!2449044 (= c!390982 ((_ is Star!7197) (regOne!14907 (regTwo!14907 r!13927))))))

(declare-fun b!2449045 () Bool)

(assert (=> b!2449045 (= e!1554976 (matchRSpec!1044 (regTwo!14907 (regOne!14907 (regTwo!14907 r!13927))) s!9460))))

(declare-fun bm!150455 () Bool)

(declare-fun call!150460 () Bool)

(assert (=> bm!150455 (= call!150460 (Exists!1231 (ite c!390982 lambda!92794 lambda!92795)))))

(assert (=> b!2449046 (= e!1554973 call!150460)))

(declare-fun b!2449047 () Bool)

(declare-fun res!1039142 () Bool)

(declare-fun e!1554977 () Bool)

(assert (=> b!2449047 (=> res!1039142 e!1554977)))

(declare-fun call!150461 () Bool)

(assert (=> b!2449047 (= res!1039142 call!150461)))

(assert (=> b!2449047 (= e!1554973 e!1554977)))

(declare-fun b!2449048 () Bool)

(assert (=> b!2449048 (= e!1554974 call!150461)))

(declare-fun d!706559 () Bool)

(declare-fun c!390984 () Bool)

(assert (=> d!706559 (= c!390984 ((_ is EmptyExpr!7197) (regOne!14907 (regTwo!14907 r!13927))))))

(assert (=> d!706559 (= (matchRSpec!1044 (regOne!14907 (regTwo!14907 r!13927)) s!9460) e!1554974)))

(declare-fun bm!150456 () Bool)

(assert (=> bm!150456 (= call!150461 (isEmpty!16569 s!9460))))

(assert (=> b!2449049 (= e!1554977 call!150460)))

(declare-fun b!2449050 () Bool)

(declare-fun e!1554978 () Bool)

(assert (=> b!2449050 (= e!1554978 (= s!9460 (Cons!28533 (c!390559 (regOne!14907 (regTwo!14907 r!13927))) Nil!28533)))))

(declare-fun b!2449051 () Bool)

(declare-fun c!390983 () Bool)

(assert (=> b!2449051 (= c!390983 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14907 r!13927))))))

(assert (=> b!2449051 (= e!1554979 e!1554978)))

(declare-fun b!2449052 () Bool)

(declare-fun c!390981 () Bool)

(assert (=> b!2449052 (= c!390981 ((_ is Union!7197) (regOne!14907 (regTwo!14907 r!13927))))))

(assert (=> b!2449052 (= e!1554978 e!1554975)))

(assert (= (and d!706559 c!390984) b!2449048))

(assert (= (and d!706559 (not c!390984)) b!2449043))

(assert (= (and b!2449043 res!1039140) b!2449051))

(assert (= (and b!2449051 c!390983) b!2449050))

(assert (= (and b!2449051 (not c!390983)) b!2449052))

(assert (= (and b!2449052 c!390981) b!2449042))

(assert (= (and b!2449052 (not c!390981)) b!2449044))

(assert (= (and b!2449042 (not res!1039141)) b!2449045))

(assert (= (and b!2449044 c!390982) b!2449047))

(assert (= (and b!2449044 (not c!390982)) b!2449046))

(assert (= (and b!2449047 (not res!1039142)) b!2449049))

(assert (= (or b!2449049 b!2449046) bm!150455))

(assert (= (or b!2449048 b!2449047) bm!150456))

(declare-fun m!2824343 () Bool)

(assert (=> b!2449042 m!2824343))

(declare-fun m!2824345 () Bool)

(assert (=> b!2449045 m!2824345))

(declare-fun m!2824347 () Bool)

(assert (=> bm!150455 m!2824347))

(assert (=> bm!150456 m!2822987))

(assert (=> b!2448144 d!706559))

(assert (=> b!2448161 d!706433))

(assert (=> b!2448161 d!706435))

(declare-fun d!706569 () Bool)

(assert (=> d!706569 true))

(assert (=> d!706569 true))

(declare-fun res!1039151 () Bool)

(assert (=> d!706569 (= (choose!14525 (ite c!390634 lambda!92770 lambda!92771)) res!1039151)))

(assert (=> d!706207 d!706569))

(declare-fun b!2449064 () Bool)

(declare-fun e!1554993 () Bool)

(declare-fun call!150466 () Bool)

(assert (=> b!2449064 (= e!1554993 call!150466)))

(declare-fun bm!150459 () Bool)

(declare-fun call!150464 () Bool)

(declare-fun c!390990 () Bool)

(declare-fun c!390989 () Bool)

(assert (=> bm!150459 (= call!150464 (validRegex!2897 (ite c!390990 (reg!7526 (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927)))) (ite c!390989 (regTwo!14907 (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927)))) (regOne!14906 (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927))))))))))

(declare-fun b!2449065 () Bool)

(declare-fun e!1554988 () Bool)

(assert (=> b!2449065 (= e!1554988 call!150464)))

(declare-fun b!2449066 () Bool)

(declare-fun e!1554990 () Bool)

(declare-fun call!150465 () Bool)

(assert (=> b!2449066 (= e!1554990 call!150465)))

(declare-fun b!2449068 () Bool)

(declare-fun res!1039155 () Bool)

(declare-fun e!1554989 () Bool)

(assert (=> b!2449068 (=> res!1039155 e!1554989)))

(assert (=> b!2449068 (= res!1039155 (not ((_ is Concat!11833) (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927))))))))

(declare-fun e!1554992 () Bool)

(assert (=> b!2449068 (= e!1554992 e!1554989)))

(declare-fun bm!150460 () Bool)

(assert (=> bm!150460 (= call!150466 call!150464)))

(declare-fun b!2449069 () Bool)

(declare-fun e!1554987 () Bool)

(declare-fun e!1554991 () Bool)

(assert (=> b!2449069 (= e!1554987 e!1554991)))

(assert (=> b!2449069 (= c!390990 ((_ is Star!7197) (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927)))))))

(declare-fun b!2449070 () Bool)

(assert (=> b!2449070 (= e!1554991 e!1554988)))

(declare-fun res!1039152 () Bool)

(assert (=> b!2449070 (= res!1039152 (not (nullable!2205 (reg!7526 (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927)))))))))

(assert (=> b!2449070 (=> (not res!1039152) (not e!1554988))))

(declare-fun b!2449071 () Bool)

(assert (=> b!2449071 (= e!1554991 e!1554992)))

(assert (=> b!2449071 (= c!390989 ((_ is Union!7197) (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927)))))))

(declare-fun b!2449072 () Bool)

(declare-fun res!1039153 () Bool)

(assert (=> b!2449072 (=> (not res!1039153) (not e!1554993))))

(assert (=> b!2449072 (= res!1039153 call!150465)))

(assert (=> b!2449072 (= e!1554992 e!1554993)))

(declare-fun bm!150461 () Bool)

(assert (=> bm!150461 (= call!150465 (validRegex!2897 (ite c!390989 (regOne!14907 (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927)))) (regTwo!14906 (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927)))))))))

(declare-fun d!706571 () Bool)

(declare-fun res!1039154 () Bool)

(assert (=> d!706571 (=> res!1039154 e!1554987)))

(assert (=> d!706571 (= res!1039154 ((_ is ElementMatch!7197) (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927)))))))

(assert (=> d!706571 (= (validRegex!2897 (ite c!390727 (reg!7526 r!13927) (ite c!390726 (regTwo!14907 r!13927) (regOne!14906 r!13927)))) e!1554987)))

(declare-fun b!2449067 () Bool)

(assert (=> b!2449067 (= e!1554989 e!1554990)))

(declare-fun res!1039156 () Bool)

(assert (=> b!2449067 (=> (not res!1039156) (not e!1554990))))

(assert (=> b!2449067 (= res!1039156 call!150466)))

(assert (= (and d!706571 (not res!1039154)) b!2449069))

(assert (= (and b!2449069 c!390990) b!2449070))

(assert (= (and b!2449069 (not c!390990)) b!2449071))

(assert (= (and b!2449070 res!1039152) b!2449065))

(assert (= (and b!2449071 c!390989) b!2449072))

(assert (= (and b!2449071 (not c!390989)) b!2449068))

(assert (= (and b!2449072 res!1039153) b!2449064))

(assert (= (and b!2449068 (not res!1039155)) b!2449067))

(assert (= (and b!2449067 res!1039156) b!2449066))

(assert (= (or b!2449072 b!2449066) bm!150461))

(assert (= (or b!2449064 b!2449067) bm!150460))

(assert (= (or b!2449065 bm!150460) bm!150459))

(declare-fun m!2824349 () Bool)

(assert (=> bm!150459 m!2824349))

(declare-fun m!2824351 () Bool)

(assert (=> b!2449070 m!2824351))

(declare-fun m!2824353 () Bool)

(assert (=> bm!150461 m!2824353))

(assert (=> bm!150306 d!706571))

(declare-fun d!706573 () Bool)

(assert (=> d!706573 (= (Exists!1231 (ite c!390744 lambda!92780 lambda!92781)) (choose!14525 (ite c!390744 lambda!92780 lambda!92781)))))

(declare-fun bs!465645 () Bool)

(assert (= bs!465645 d!706573))

(declare-fun m!2824355 () Bool)

(assert (=> bs!465645 m!2824355))

(assert (=> bm!150318 d!706573))

(declare-fun d!706575 () Bool)

(assert (not d!706575))

(assert (=> b!2448212 d!706575))

(declare-fun d!706577 () Bool)

(assert (not d!706577))

(assert (=> b!2448212 d!706577))

(assert (=> b!2448212 d!706485))

(assert (=> b!2448212 d!706261))

(declare-fun bs!465658 () Bool)

(declare-fun b!2449080 () Bool)

(assert (= bs!465658 (and b!2449080 b!2449046)))

(declare-fun lambda!92798 () Int)

(assert (=> bs!465658 (not (= lambda!92798 lambda!92795))))

(declare-fun bs!465659 () Bool)

(assert (= bs!465659 (and b!2449080 b!2448547)))

(assert (=> bs!465659 (not (= lambda!92798 lambda!92786))))

(declare-fun bs!465660 () Bool)

(assert (= bs!465660 (and b!2449080 b!2448137)))

(assert (=> bs!465660 (not (= lambda!92798 lambda!92779))))

(declare-fun bs!465661 () Bool)

(assert (= bs!465661 (and b!2449080 b!2447545)))

(assert (=> bs!465661 (= (and (= (reg!7526 (regTwo!14907 (regOne!14907 r!13927))) (reg!7526 r!13927)) (= (regTwo!14907 (regOne!14907 r!13927)) r!13927)) (= lambda!92798 lambda!92770))))

(declare-fun bs!465663 () Bool)

(assert (= bs!465663 (and b!2449080 b!2449049)))

(assert (=> bs!465663 (= (and (= (reg!7526 (regTwo!14907 (regOne!14907 r!13927))) (reg!7526 (regOne!14907 (regTwo!14907 r!13927)))) (= (regTwo!14907 (regOne!14907 r!13927)) (regOne!14907 (regTwo!14907 r!13927)))) (= lambda!92798 lambda!92794))))

(declare-fun bs!465664 () Bool)

(assert (= bs!465664 (and b!2449080 b!2447542)))

(assert (=> bs!465664 (not (= lambda!92798 lambda!92771))))

(declare-fun bs!465665 () Bool)

(assert (= bs!465665 (and b!2449080 b!2448938)))

(assert (=> bs!465665 (= (and (= (reg!7526 (regTwo!14907 (regOne!14907 r!13927))) (reg!7526 (regTwo!14907 (regTwo!14907 r!13927)))) (= (regTwo!14907 (regOne!14907 r!13927)) (regTwo!14907 (regTwo!14907 r!13927)))) (= lambda!92798 lambda!92790))))

(declare-fun bs!465666 () Bool)

(assert (= bs!465666 (and b!2449080 b!2448140)))

(assert (=> bs!465666 (= (and (= (reg!7526 (regTwo!14907 (regOne!14907 r!13927))) (reg!7526 (regOne!14907 r!13927))) (= (regTwo!14907 (regOne!14907 r!13927)) (regOne!14907 r!13927))) (= lambda!92798 lambda!92778))))

(declare-fun bs!465667 () Bool)

(assert (= bs!465667 (and b!2449080 b!2448148)))

(assert (=> bs!465667 (not (= lambda!92798 lambda!92781))))

(declare-fun bs!465668 () Bool)

(assert (= bs!465668 (and b!2449080 b!2448550)))

(assert (=> bs!465668 (= (and (= (reg!7526 (regTwo!14907 (regOne!14907 r!13927))) (reg!7526 (regOne!14907 (regOne!14907 r!13927)))) (= (regTwo!14907 (regOne!14907 r!13927)) (regOne!14907 (regOne!14907 r!13927)))) (= lambda!92798 lambda!92785))))

(declare-fun bs!465669 () Bool)

(assert (= bs!465669 (and b!2449080 b!2448935)))

(assert (=> bs!465669 (not (= lambda!92798 lambda!92791))))

(declare-fun bs!465670 () Bool)

(assert (= bs!465670 (and b!2449080 b!2448151)))

(assert (=> bs!465670 (= (and (= (reg!7526 (regTwo!14907 (regOne!14907 r!13927))) (reg!7526 (regTwo!14907 r!13927))) (= (regTwo!14907 (regOne!14907 r!13927)) (regTwo!14907 r!13927))) (= lambda!92798 lambda!92780))))

(assert (=> b!2449080 true))

(assert (=> b!2449080 true))

(declare-fun bs!465671 () Bool)

(declare-fun b!2449077 () Bool)

(assert (= bs!465671 (and b!2449077 b!2449046)))

(declare-fun lambda!92799 () Int)

(assert (=> bs!465671 (= (and (= (regOne!14906 (regTwo!14907 (regOne!14907 r!13927))) (regOne!14906 (regOne!14907 (regTwo!14907 r!13927)))) (= (regTwo!14906 (regTwo!14907 (regOne!14907 r!13927))) (regTwo!14906 (regOne!14907 (regTwo!14907 r!13927))))) (= lambda!92799 lambda!92795))))

(declare-fun bs!465672 () Bool)

(assert (= bs!465672 (and b!2449077 b!2448547)))

(assert (=> bs!465672 (= (and (= (regOne!14906 (regTwo!14907 (regOne!14907 r!13927))) (regOne!14906 (regOne!14907 (regOne!14907 r!13927)))) (= (regTwo!14906 (regTwo!14907 (regOne!14907 r!13927))) (regTwo!14906 (regOne!14907 (regOne!14907 r!13927))))) (= lambda!92799 lambda!92786))))

(declare-fun bs!465673 () Bool)

(assert (= bs!465673 (and b!2449077 b!2448137)))

(assert (=> bs!465673 (= (and (= (regOne!14906 (regTwo!14907 (regOne!14907 r!13927))) (regOne!14906 (regOne!14907 r!13927))) (= (regTwo!14906 (regTwo!14907 (regOne!14907 r!13927))) (regTwo!14906 (regOne!14907 r!13927)))) (= lambda!92799 lambda!92779))))

(declare-fun bs!465674 () Bool)

(assert (= bs!465674 (and b!2449077 b!2447545)))

(assert (=> bs!465674 (not (= lambda!92799 lambda!92770))))

(declare-fun bs!465675 () Bool)

(assert (= bs!465675 (and b!2449077 b!2449049)))

(assert (=> bs!465675 (not (= lambda!92799 lambda!92794))))

(declare-fun bs!465676 () Bool)

(assert (= bs!465676 (and b!2449077 b!2447542)))

(assert (=> bs!465676 (= (and (= (regOne!14906 (regTwo!14907 (regOne!14907 r!13927))) (regOne!14906 r!13927)) (= (regTwo!14906 (regTwo!14907 (regOne!14907 r!13927))) (regTwo!14906 r!13927))) (= lambda!92799 lambda!92771))))

(declare-fun bs!465677 () Bool)

(assert (= bs!465677 (and b!2449077 b!2448938)))

(assert (=> bs!465677 (not (= lambda!92799 lambda!92790))))

(declare-fun bs!465678 () Bool)

(assert (= bs!465678 (and b!2449077 b!2448140)))

(assert (=> bs!465678 (not (= lambda!92799 lambda!92778))))

(declare-fun bs!465679 () Bool)

(assert (= bs!465679 (and b!2449077 b!2448148)))

(assert (=> bs!465679 (= (and (= (regOne!14906 (regTwo!14907 (regOne!14907 r!13927))) (regOne!14906 (regTwo!14907 r!13927))) (= (regTwo!14906 (regTwo!14907 (regOne!14907 r!13927))) (regTwo!14906 (regTwo!14907 r!13927)))) (= lambda!92799 lambda!92781))))

(declare-fun bs!465680 () Bool)

(assert (= bs!465680 (and b!2449077 b!2448550)))

(assert (=> bs!465680 (not (= lambda!92799 lambda!92785))))

(declare-fun bs!465681 () Bool)

(assert (= bs!465681 (and b!2449077 b!2449080)))

(assert (=> bs!465681 (not (= lambda!92799 lambda!92798))))

(declare-fun bs!465682 () Bool)

(assert (= bs!465682 (and b!2449077 b!2448935)))

(assert (=> bs!465682 (= (and (= (regOne!14906 (regTwo!14907 (regOne!14907 r!13927))) (regOne!14906 (regTwo!14907 (regTwo!14907 r!13927)))) (= (regTwo!14906 (regTwo!14907 (regOne!14907 r!13927))) (regTwo!14906 (regTwo!14907 (regTwo!14907 r!13927))))) (= lambda!92799 lambda!92791))))

(declare-fun bs!465683 () Bool)

(assert (= bs!465683 (and b!2449077 b!2448151)))

(assert (=> bs!465683 (not (= lambda!92799 lambda!92780))))

(assert (=> b!2449077 true))

(assert (=> b!2449077 true))

(declare-fun b!2449073 () Bool)

(declare-fun e!1554996 () Bool)

(declare-fun e!1554997 () Bool)

(assert (=> b!2449073 (= e!1554996 e!1554997)))

(declare-fun res!1039158 () Bool)

(assert (=> b!2449073 (= res!1039158 (matchRSpec!1044 (regOne!14907 (regTwo!14907 (regOne!14907 r!13927))) s!9460))))

(assert (=> b!2449073 (=> res!1039158 e!1554997)))

(declare-fun b!2449074 () Bool)

(declare-fun e!1554995 () Bool)

(declare-fun e!1555000 () Bool)

(assert (=> b!2449074 (= e!1554995 e!1555000)))

(declare-fun res!1039157 () Bool)

(assert (=> b!2449074 (= res!1039157 (not ((_ is EmptyLang!7197) (regTwo!14907 (regOne!14907 r!13927)))))))

(assert (=> b!2449074 (=> (not res!1039157) (not e!1555000))))

(declare-fun b!2449075 () Bool)

(declare-fun e!1554994 () Bool)

(assert (=> b!2449075 (= e!1554996 e!1554994)))

(declare-fun c!390992 () Bool)

(assert (=> b!2449075 (= c!390992 ((_ is Star!7197) (regTwo!14907 (regOne!14907 r!13927))))))

(declare-fun b!2449076 () Bool)

(assert (=> b!2449076 (= e!1554997 (matchRSpec!1044 (regTwo!14907 (regTwo!14907 (regOne!14907 r!13927))) s!9460))))

(declare-fun call!150467 () Bool)

(declare-fun bm!150462 () Bool)

(assert (=> bm!150462 (= call!150467 (Exists!1231 (ite c!390992 lambda!92798 lambda!92799)))))

(assert (=> b!2449077 (= e!1554994 call!150467)))

(declare-fun b!2449078 () Bool)

(declare-fun res!1039159 () Bool)

(declare-fun e!1554998 () Bool)

(assert (=> b!2449078 (=> res!1039159 e!1554998)))

(declare-fun call!150468 () Bool)

(assert (=> b!2449078 (= res!1039159 call!150468)))

(assert (=> b!2449078 (= e!1554994 e!1554998)))

(declare-fun b!2449079 () Bool)

(assert (=> b!2449079 (= e!1554995 call!150468)))

(declare-fun d!706579 () Bool)

(declare-fun c!390994 () Bool)

(assert (=> d!706579 (= c!390994 ((_ is EmptyExpr!7197) (regTwo!14907 (regOne!14907 r!13927))))))

(assert (=> d!706579 (= (matchRSpec!1044 (regTwo!14907 (regOne!14907 r!13927)) s!9460) e!1554995)))

(declare-fun bm!150463 () Bool)

(assert (=> bm!150463 (= call!150468 (isEmpty!16569 s!9460))))

(assert (=> b!2449080 (= e!1554998 call!150467)))

(declare-fun b!2449081 () Bool)

(declare-fun e!1554999 () Bool)

(assert (=> b!2449081 (= e!1554999 (= s!9460 (Cons!28533 (c!390559 (regTwo!14907 (regOne!14907 r!13927))) Nil!28533)))))

(declare-fun b!2449082 () Bool)

(declare-fun c!390993 () Bool)

(assert (=> b!2449082 (= c!390993 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14907 r!13927))))))

(assert (=> b!2449082 (= e!1555000 e!1554999)))

(declare-fun b!2449083 () Bool)

(declare-fun c!390991 () Bool)

(assert (=> b!2449083 (= c!390991 ((_ is Union!7197) (regTwo!14907 (regOne!14907 r!13927))))))

(assert (=> b!2449083 (= e!1554999 e!1554996)))

(assert (= (and d!706579 c!390994) b!2449079))

(assert (= (and d!706579 (not c!390994)) b!2449074))

(assert (= (and b!2449074 res!1039157) b!2449082))

(assert (= (and b!2449082 c!390993) b!2449081))

(assert (= (and b!2449082 (not c!390993)) b!2449083))

(assert (= (and b!2449083 c!390991) b!2449073))

(assert (= (and b!2449083 (not c!390991)) b!2449075))

(assert (= (and b!2449073 (not res!1039158)) b!2449076))

(assert (= (and b!2449075 c!390992) b!2449078))

(assert (= (and b!2449075 (not c!390992)) b!2449077))

(assert (= (and b!2449078 (not res!1039159)) b!2449080))

(assert (= (or b!2449080 b!2449077) bm!150462))

(assert (= (or b!2449079 b!2449078) bm!150463))

(declare-fun m!2824391 () Bool)

(assert (=> b!2449073 m!2824391))

(declare-fun m!2824393 () Bool)

(assert (=> b!2449076 m!2824393))

(declare-fun m!2824395 () Bool)

(assert (=> bm!150462 m!2824395))

(assert (=> bm!150463 m!2822987))

(assert (=> b!2448136 d!706579))

(assert (=> b!2448095 d!706355))

(assert (=> b!2448095 d!706357))

(declare-fun b!2449129 () Bool)

(declare-fun e!1555042 () Bool)

(declare-fun call!150486 () Bool)

(assert (=> b!2449129 (= e!1555042 call!150486)))

(declare-fun call!150484 () Bool)

(declare-fun c!391006 () Bool)

(declare-fun bm!150479 () Bool)

(declare-fun c!391005 () Bool)

(assert (=> bm!150479 (= call!150484 (validRegex!2897 (ite c!391006 (reg!7526 (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564))) (ite c!391005 (regTwo!14907 (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564))) (regOne!14906 (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564)))))))))

(declare-fun b!2449130 () Bool)

(declare-fun e!1555037 () Bool)

(assert (=> b!2449130 (= e!1555037 call!150484)))

(declare-fun b!2449131 () Bool)

(declare-fun e!1555039 () Bool)

(declare-fun call!150485 () Bool)

(assert (=> b!2449131 (= e!1555039 call!150485)))

(declare-fun b!2449133 () Bool)

(declare-fun res!1039188 () Bool)

(declare-fun e!1555038 () Bool)

(assert (=> b!2449133 (=> res!1039188 e!1555038)))

(assert (=> b!2449133 (= res!1039188 (not ((_ is Concat!11833) (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564)))))))

(declare-fun e!1555041 () Bool)

(assert (=> b!2449133 (= e!1555041 e!1555038)))

(declare-fun bm!150480 () Bool)

(assert (=> bm!150480 (= call!150486 call!150484)))

(declare-fun b!2449134 () Bool)

(declare-fun e!1555036 () Bool)

(declare-fun e!1555040 () Bool)

(assert (=> b!2449134 (= e!1555036 e!1555040)))

(assert (=> b!2449134 (= c!391006 ((_ is Star!7197) (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564))))))

(declare-fun b!2449135 () Bool)

(assert (=> b!2449135 (= e!1555040 e!1555037)))

(declare-fun res!1039185 () Bool)

(assert (=> b!2449135 (= res!1039185 (not (nullable!2205 (reg!7526 (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564))))))))

(assert (=> b!2449135 (=> (not res!1039185) (not e!1555037))))

(declare-fun b!2449136 () Bool)

(assert (=> b!2449136 (= e!1555040 e!1555041)))

(assert (=> b!2449136 (= c!391005 ((_ is Union!7197) (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564))))))

(declare-fun b!2449137 () Bool)

(declare-fun res!1039186 () Bool)

(assert (=> b!2449137 (=> (not res!1039186) (not e!1555042))))

(assert (=> b!2449137 (= res!1039186 call!150485)))

(assert (=> b!2449137 (= e!1555041 e!1555042)))

(declare-fun bm!150481 () Bool)

(assert (=> bm!150481 (= call!150485 (validRegex!2897 (ite c!391005 (regOne!14907 (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564))) (regTwo!14906 (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564))))))))

(declare-fun d!706597 () Bool)

(declare-fun res!1039187 () Bool)

(assert (=> d!706597 (=> res!1039187 e!1555036)))

(assert (=> d!706597 (= res!1039187 ((_ is ElementMatch!7197) (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564))))))

(assert (=> d!706597 (= (validRegex!2897 (ite c!390733 (regOne!14907 lt!879564) (regTwo!14906 lt!879564))) e!1555036)))

(declare-fun b!2449132 () Bool)

(assert (=> b!2449132 (= e!1555038 e!1555039)))

(declare-fun res!1039189 () Bool)

(assert (=> b!2449132 (=> (not res!1039189) (not e!1555039))))

(assert (=> b!2449132 (= res!1039189 call!150486)))

(assert (= (and d!706597 (not res!1039187)) b!2449134))

(assert (= (and b!2449134 c!391006) b!2449135))

(assert (= (and b!2449134 (not c!391006)) b!2449136))

(assert (= (and b!2449135 res!1039185) b!2449130))

(assert (= (and b!2449136 c!391005) b!2449137))

(assert (= (and b!2449136 (not c!391005)) b!2449133))

(assert (= (and b!2449137 res!1039186) b!2449129))

(assert (= (and b!2449133 (not res!1039188)) b!2449132))

(assert (= (and b!2449132 res!1039189) b!2449131))

(assert (= (or b!2449137 b!2449131) bm!150481))

(assert (= (or b!2449129 b!2449132) bm!150480))

(assert (= (or b!2449130 bm!150480) bm!150479))

(declare-fun m!2824403 () Bool)

(assert (=> bm!150479 m!2824403))

(declare-fun m!2824407 () Bool)

(assert (=> b!2449135 m!2824407))

(declare-fun m!2824413 () Bool)

(assert (=> bm!150481 m!2824413))

(assert (=> bm!150315 d!706597))

(assert (=> bm!150317 d!706003))

(declare-fun d!706603 () Bool)

(assert (=> d!706603 (= (nullable!2205 (generalisedConcat!298 (t!208607 l!9164))) (nullableFct!537 (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun bs!465685 () Bool)

(assert (= bs!465685 d!706603))

(assert (=> bs!465685 m!2822979))

(declare-fun m!2824415 () Bool)

(assert (=> bs!465685 m!2824415))

(assert (=> b!2448077 d!706603))

(declare-fun d!706605 () Bool)

(assert (=> d!706605 (= (Exists!1231 (ite c!390740 lambda!92778 lambda!92779)) (choose!14525 (ite c!390740 lambda!92778 lambda!92779)))))

(declare-fun bs!465686 () Bool)

(assert (= bs!465686 d!706605))

(declare-fun m!2824417 () Bool)

(assert (=> bs!465686 m!2824417))

(assert (=> bm!150316 d!706605))

(declare-fun b!2449161 () Bool)

(declare-fun res!1039204 () Bool)

(declare-fun e!1555058 () Bool)

(assert (=> b!2449161 (=> res!1039204 e!1555058)))

(declare-fun e!1555063 () Bool)

(assert (=> b!2449161 (= res!1039204 e!1555063)))

(declare-fun res!1039207 () Bool)

(assert (=> b!2449161 (=> (not res!1039207) (not e!1555063))))

(declare-fun lt!879678 () Bool)

(assert (=> b!2449161 (= res!1039207 lt!879678)))

(declare-fun b!2449162 () Bool)

(declare-fun res!1039203 () Bool)

(assert (=> b!2449162 (=> (not res!1039203) (not e!1555063))))

(declare-fun call!150491 () Bool)

(assert (=> b!2449162 (= res!1039203 (not call!150491))))

(declare-fun b!2449163 () Bool)

(declare-fun e!1555057 () Bool)

(assert (=> b!2449163 (= e!1555057 (= lt!879678 call!150491))))

(declare-fun b!2449164 () Bool)

(declare-fun res!1039205 () Bool)

(assert (=> b!2449164 (=> res!1039205 e!1555058)))

(assert (=> b!2449164 (= res!1039205 (not ((_ is ElementMatch!7197) (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun e!1555062 () Bool)

(assert (=> b!2449164 (= e!1555062 e!1555058)))

(declare-fun b!2449165 () Bool)

(declare-fun e!1555060 () Bool)

(assert (=> b!2449165 (= e!1555060 (not (= (head!5570 (_2!16614 (get!8823 lt!879600))) (c!390559 (generalisedConcat!298 (t!208607 l!9164))))))))

(declare-fun bm!150486 () Bool)

(assert (=> bm!150486 (= call!150491 (isEmpty!16569 (_2!16614 (get!8823 lt!879600))))))

(declare-fun b!2449166 () Bool)

(declare-fun e!1555061 () Bool)

(assert (=> b!2449166 (= e!1555058 e!1555061)))

(declare-fun res!1039208 () Bool)

(assert (=> b!2449166 (=> (not res!1039208) (not e!1555061))))

(assert (=> b!2449166 (= res!1039208 (not lt!879678))))

(declare-fun b!2449167 () Bool)

(declare-fun res!1039206 () Bool)

(assert (=> b!2449167 (=> (not res!1039206) (not e!1555063))))

(assert (=> b!2449167 (= res!1039206 (isEmpty!16569 (tail!3843 (_2!16614 (get!8823 lt!879600)))))))

(declare-fun d!706607 () Bool)

(assert (=> d!706607 e!1555057))

(declare-fun c!391013 () Bool)

(assert (=> d!706607 (= c!391013 ((_ is EmptyExpr!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun e!1555059 () Bool)

(assert (=> d!706607 (= lt!879678 e!1555059)))

(declare-fun c!391012 () Bool)

(assert (=> d!706607 (= c!391012 (isEmpty!16569 (_2!16614 (get!8823 lt!879600))))))

(assert (=> d!706607 (validRegex!2897 (generalisedConcat!298 (t!208607 l!9164)))))

(assert (=> d!706607 (= (matchR!3312 (generalisedConcat!298 (t!208607 l!9164)) (_2!16614 (get!8823 lt!879600))) lt!879678)))

(declare-fun b!2449168 () Bool)

(assert (=> b!2449168 (= e!1555061 e!1555060)))

(declare-fun res!1039210 () Bool)

(assert (=> b!2449168 (=> res!1039210 e!1555060)))

(assert (=> b!2449168 (= res!1039210 call!150491)))

(declare-fun b!2449169 () Bool)

(assert (=> b!2449169 (= e!1555063 (= (head!5570 (_2!16614 (get!8823 lt!879600))) (c!390559 (generalisedConcat!298 (t!208607 l!9164)))))))

(declare-fun b!2449170 () Bool)

(assert (=> b!2449170 (= e!1555062 (not lt!879678))))

(declare-fun b!2449171 () Bool)

(assert (=> b!2449171 (= e!1555057 e!1555062)))

(declare-fun c!391014 () Bool)

(assert (=> b!2449171 (= c!391014 ((_ is EmptyLang!7197) (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2449172 () Bool)

(assert (=> b!2449172 (= e!1555059 (nullable!2205 (generalisedConcat!298 (t!208607 l!9164))))))

(declare-fun b!2449173 () Bool)

(declare-fun res!1039209 () Bool)

(assert (=> b!2449173 (=> res!1039209 e!1555060)))

(assert (=> b!2449173 (= res!1039209 (not (isEmpty!16569 (tail!3843 (_2!16614 (get!8823 lt!879600))))))))

(declare-fun b!2449174 () Bool)

(assert (=> b!2449174 (= e!1555059 (matchR!3312 (derivativeStep!1859 (generalisedConcat!298 (t!208607 l!9164)) (head!5570 (_2!16614 (get!8823 lt!879600)))) (tail!3843 (_2!16614 (get!8823 lt!879600)))))))

(assert (= (and d!706607 c!391012) b!2449172))

(assert (= (and d!706607 (not c!391012)) b!2449174))

(assert (= (and d!706607 c!391013) b!2449163))

(assert (= (and d!706607 (not c!391013)) b!2449171))

(assert (= (and b!2449171 c!391014) b!2449170))

(assert (= (and b!2449171 (not c!391014)) b!2449164))

(assert (= (and b!2449164 (not res!1039205)) b!2449161))

(assert (= (and b!2449161 res!1039207) b!2449162))

(assert (= (and b!2449162 res!1039203) b!2449167))

(assert (= (and b!2449167 res!1039206) b!2449169))

(assert (= (and b!2449161 (not res!1039204)) b!2449166))

(assert (= (and b!2449166 res!1039208) b!2449168))

(assert (= (and b!2449168 (not res!1039210)) b!2449173))

(assert (= (and b!2449173 (not res!1039209)) b!2449165))

(assert (= (or b!2449163 b!2449162 b!2449168) bm!150486))

(declare-fun m!2824425 () Bool)

(assert (=> b!2449165 m!2824425))

(declare-fun m!2824427 () Bool)

(assert (=> bm!150486 m!2824427))

(assert (=> b!2449172 m!2822979))

(assert (=> b!2449172 m!2823405))

(declare-fun m!2824430 () Bool)

(assert (=> b!2449167 m!2824430))

(assert (=> b!2449167 m!2824430))

(declare-fun m!2824433 () Bool)

(assert (=> b!2449167 m!2824433))

(assert (=> b!2449173 m!2824430))

(assert (=> b!2449173 m!2824430))

(assert (=> b!2449173 m!2824433))

(assert (=> b!2449169 m!2824425))

(assert (=> d!706607 m!2824427))

(assert (=> d!706607 m!2822979))

(assert (=> d!706607 m!2823411))

(assert (=> b!2449174 m!2824425))

(assert (=> b!2449174 m!2822979))

(assert (=> b!2449174 m!2824425))

(declare-fun m!2824435 () Bool)

(assert (=> b!2449174 m!2824435))

(assert (=> b!2449174 m!2824430))

(assert (=> b!2449174 m!2824435))

(assert (=> b!2449174 m!2824430))

(declare-fun m!2824437 () Bool)

(assert (=> b!2449174 m!2824437))

(assert (=> b!2448060 d!706607))

(assert (=> b!2448060 d!706333))

(declare-fun b!2449185 () Bool)

(declare-fun e!1555075 () Bool)

(declare-fun call!150498 () Bool)

(assert (=> b!2449185 (= e!1555075 call!150498)))

(declare-fun call!150496 () Bool)

(declare-fun c!391021 () Bool)

(declare-fun bm!150491 () Bool)

(declare-fun c!391020 () Bool)

(assert (=> bm!150491 (= call!150496 (validRegex!2897 (ite c!391021 (reg!7526 (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563)))) (ite c!391020 (regTwo!14907 (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563)))) (regOne!14906 (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563))))))))))

(declare-fun b!2449186 () Bool)

(declare-fun e!1555070 () Bool)

(assert (=> b!2449186 (= e!1555070 call!150496)))

(declare-fun b!2449187 () Bool)

(declare-fun e!1555072 () Bool)

(declare-fun call!150497 () Bool)

(assert (=> b!2449187 (= e!1555072 call!150497)))

(declare-fun b!2449189 () Bool)

(declare-fun res!1039214 () Bool)

(declare-fun e!1555071 () Bool)

(assert (=> b!2449189 (=> res!1039214 e!1555071)))

(assert (=> b!2449189 (= res!1039214 (not ((_ is Concat!11833) (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563))))))))

(declare-fun e!1555074 () Bool)

(assert (=> b!2449189 (= e!1555074 e!1555071)))

(declare-fun bm!150492 () Bool)

(assert (=> bm!150492 (= call!150498 call!150496)))

(declare-fun b!2449190 () Bool)

(declare-fun e!1555069 () Bool)

(declare-fun e!1555073 () Bool)

(assert (=> b!2449190 (= e!1555069 e!1555073)))

(assert (=> b!2449190 (= c!391021 ((_ is Star!7197) (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563)))))))

(declare-fun b!2449191 () Bool)

(assert (=> b!2449191 (= e!1555073 e!1555070)))

(declare-fun res!1039211 () Bool)

(assert (=> b!2449191 (= res!1039211 (not (nullable!2205 (reg!7526 (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563)))))))))

(assert (=> b!2449191 (=> (not res!1039211) (not e!1555070))))

(declare-fun b!2449192 () Bool)

(assert (=> b!2449192 (= e!1555073 e!1555074)))

(assert (=> b!2449192 (= c!391020 ((_ is Union!7197) (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563)))))))

(declare-fun b!2449193 () Bool)

(declare-fun res!1039212 () Bool)

(assert (=> b!2449193 (=> (not res!1039212) (not e!1555075))))

(assert (=> b!2449193 (= res!1039212 call!150497)))

(assert (=> b!2449193 (= e!1555074 e!1555075)))

(declare-fun bm!150493 () Bool)

(assert (=> bm!150493 (= call!150497 (validRegex!2897 (ite c!391020 (regOne!14907 (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563)))) (regTwo!14906 (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563)))))))))

(declare-fun d!706611 () Bool)

(declare-fun res!1039213 () Bool)

(assert (=> d!706611 (=> res!1039213 e!1555069)))

(assert (=> d!706611 (= res!1039213 ((_ is ElementMatch!7197) (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563)))))))

(assert (=> d!706611 (= (validRegex!2897 (ite c!390718 (reg!7526 lt!879563) (ite c!390717 (regTwo!14907 lt!879563) (regOne!14906 lt!879563)))) e!1555069)))

(declare-fun b!2449188 () Bool)

(assert (=> b!2449188 (= e!1555071 e!1555072)))

(declare-fun res!1039215 () Bool)

(assert (=> b!2449188 (=> (not res!1039215) (not e!1555072))))

(assert (=> b!2449188 (= res!1039215 call!150498)))

(assert (= (and d!706611 (not res!1039213)) b!2449190))

(assert (= (and b!2449190 c!391021) b!2449191))

(assert (= (and b!2449190 (not c!391021)) b!2449192))

(assert (= (and b!2449191 res!1039211) b!2449186))

(assert (= (and b!2449192 c!391020) b!2449193))

(assert (= (and b!2449192 (not c!391020)) b!2449189))

(assert (= (and b!2449193 res!1039212) b!2449185))

(assert (= (and b!2449189 (not res!1039214)) b!2449188))

(assert (= (and b!2449188 res!1039215) b!2449187))

(assert (= (or b!2449193 b!2449187) bm!150493))

(assert (= (or b!2449185 b!2449188) bm!150492))

(assert (= (or b!2449186 bm!150492) bm!150491))

(declare-fun m!2824445 () Bool)

(assert (=> bm!150491 m!2824445))

(declare-fun m!2824447 () Bool)

(assert (=> b!2449191 m!2824447))

(declare-fun m!2824449 () Bool)

(assert (=> bm!150493 m!2824449))

(assert (=> bm!150302 d!706611))

(declare-fun b!2449194 () Bool)

(declare-fun e!1555080 () Regex!7197)

(assert (=> b!2449194 (= e!1555080 EmptyLang!7197)))

(declare-fun e!1555078 () Regex!7197)

(declare-fun b!2449195 () Bool)

(declare-fun call!150502 () Regex!7197)

(assert (=> b!2449195 (= e!1555078 (Concat!11833 call!150502 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927))))))

(declare-fun e!1555076 () Regex!7197)

(declare-fun b!2449196 () Bool)

(assert (=> b!2449196 (= e!1555076 (ite (= (head!5570 s!9460) (c!390559 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927)))) EmptyExpr!7197 EmptyLang!7197))))

(declare-fun b!2449197 () Bool)

(declare-fun c!391025 () Bool)

(assert (=> b!2449197 (= c!391025 ((_ is Union!7197) (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927))))))

(declare-fun e!1555079 () Regex!7197)

(assert (=> b!2449197 (= e!1555076 e!1555079)))

(declare-fun d!706615 () Bool)

(declare-fun lt!879680 () Regex!7197)

(assert (=> d!706615 (validRegex!2897 lt!879680)))

(assert (=> d!706615 (= lt!879680 e!1555080)))

(declare-fun c!391022 () Bool)

(assert (=> d!706615 (= c!391022 (or ((_ is EmptyExpr!7197) (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927))) ((_ is EmptyLang!7197) (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927)))))))

(assert (=> d!706615 (validRegex!2897 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927)))))

(assert (=> d!706615 (= (derivativeStep!1859 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927)) (head!5570 s!9460)) lt!879680)))

(declare-fun call!150500 () Regex!7197)

(declare-fun bm!150494 () Bool)

(assert (=> bm!150494 (= call!150500 (derivativeStep!1859 (ite c!391025 (regTwo!14907 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927))) (regOne!14906 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927)))) (head!5570 s!9460)))))

(declare-fun b!2449198 () Bool)

(declare-fun call!150499 () Regex!7197)

(assert (=> b!2449198 (= e!1555079 (Union!7197 call!150499 call!150500))))

(declare-fun b!2449199 () Bool)

(declare-fun c!391024 () Bool)

(assert (=> b!2449199 (= c!391024 (nullable!2205 (regOne!14906 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927)))))))

(declare-fun e!1555077 () Regex!7197)

(assert (=> b!2449199 (= e!1555078 e!1555077)))

(declare-fun b!2449200 () Bool)

(assert (=> b!2449200 (= e!1555080 e!1555076)))

(declare-fun c!391023 () Bool)

(assert (=> b!2449200 (= c!391023 ((_ is ElementMatch!7197) (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927))))))

(declare-fun bm!150495 () Bool)

(declare-fun call!150501 () Regex!7197)

(assert (=> bm!150495 (= call!150501 call!150502)))

(declare-fun bm!150496 () Bool)

(declare-fun c!391026 () Bool)

(assert (=> bm!150496 (= call!150499 (derivativeStep!1859 (ite c!391025 (regOne!14907 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927))) (ite c!391026 (reg!7526 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927))) (ite c!391024 (regTwo!14906 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927))) (regOne!14906 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927)))))) (head!5570 s!9460)))))

(declare-fun bm!150497 () Bool)

(assert (=> bm!150497 (= call!150502 call!150499)))

(declare-fun b!2449201 () Bool)

(assert (=> b!2449201 (= e!1555079 e!1555078)))

(assert (=> b!2449201 (= c!391026 ((_ is Star!7197) (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927))))))

(declare-fun b!2449202 () Bool)

(assert (=> b!2449202 (= e!1555077 (Union!7197 (Concat!11833 call!150501 (regTwo!14906 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927)))) EmptyLang!7197))))

(declare-fun b!2449203 () Bool)

(assert (=> b!2449203 (= e!1555077 (Union!7197 (Concat!11833 call!150500 (regTwo!14906 (ite c!390763 (regTwo!14907 r!13927) (regOne!14906 r!13927)))) call!150501))))

(assert (= (and d!706615 c!391022) b!2449194))

(assert (= (and d!706615 (not c!391022)) b!2449200))

(assert (= (and b!2449200 c!391023) b!2449196))

(assert (= (and b!2449200 (not c!391023)) b!2449197))

(assert (= (and b!2449197 c!391025) b!2449198))

(assert (= (and b!2449197 (not c!391025)) b!2449201))

(assert (= (and b!2449201 c!391026) b!2449195))

(assert (= (and b!2449201 (not c!391026)) b!2449199))

(assert (= (and b!2449199 c!391024) b!2449203))

(assert (= (and b!2449199 (not c!391024)) b!2449202))

(assert (= (or b!2449203 b!2449202) bm!150495))

(assert (= (or b!2449195 bm!150495) bm!150497))

(assert (= (or b!2449198 bm!150497) bm!150496))

(assert (= (or b!2449198 b!2449203) bm!150494))

(declare-fun m!2824451 () Bool)

(assert (=> d!706615 m!2824451))

(declare-fun m!2824453 () Bool)

(assert (=> d!706615 m!2824453))

(assert (=> bm!150494 m!2823153))

(declare-fun m!2824455 () Bool)

(assert (=> bm!150494 m!2824455))

(declare-fun m!2824457 () Bool)

(assert (=> b!2449199 m!2824457))

(assert (=> bm!150496 m!2823153))

(declare-fun m!2824459 () Bool)

(assert (=> bm!150496 m!2824459))

(assert (=> bm!150329 d!706615))

(declare-fun d!706617 () Bool)

(assert (=> d!706617 (= (isConcat!224 lt!879605) ((_ is Concat!11833) lt!879605))))

(assert (=> b!2448129 d!706617))

(assert (=> b!2448017 d!706603))

(declare-fun d!706619 () Bool)

(assert (=> d!706619 (= (isEmptyExpr!224 lt!879605) ((_ is EmptyExpr!7197) lt!879605))))

(assert (=> b!2448125 d!706619))

(declare-fun b!2449206 () Bool)

(declare-fun res!1039217 () Bool)

(declare-fun e!1555081 () Bool)

(assert (=> b!2449206 (=> (not res!1039217) (not e!1555081))))

(declare-fun lt!879681 () List!28631)

(assert (=> b!2449206 (= res!1039217 (= (size!22268 lt!879681) (+ (size!22268 (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)))) (size!22268 (t!208608 s!9460)))))))

(declare-fun d!706621 () Bool)

(assert (=> d!706621 e!1555081))

(declare-fun res!1039216 () Bool)

(assert (=> d!706621 (=> (not res!1039216) (not e!1555081))))

(assert (=> d!706621 (= res!1039216 (= (content!3930 lt!879681) ((_ map or) (content!3930 (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)))) (content!3930 (t!208608 s!9460)))))))

(declare-fun e!1555082 () List!28631)

(assert (=> d!706621 (= lt!879681 e!1555082)))

(declare-fun c!391027 () Bool)

(assert (=> d!706621 (= c!391027 ((_ is Nil!28533) (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)))))))

(assert (=> d!706621 (= (++!7098 (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))) (t!208608 s!9460)) lt!879681)))

(declare-fun b!2449207 () Bool)

(assert (=> b!2449207 (= e!1555081 (or (not (= (t!208608 s!9460) Nil!28533)) (= lt!879681 (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533))))))))

(declare-fun b!2449205 () Bool)

(assert (=> b!2449205 (= e!1555082 (Cons!28533 (h!33934 (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)))) (++!7098 (t!208608 (t!208608 (++!7098 Nil!28533 (Cons!28533 (h!33934 s!9460) Nil!28533)))) (t!208608 s!9460))))))

(declare-fun b!2449204 () Bool)

(assert (=> b!2449204 (= e!1555082 (t!208608 s!9460))))

(assert (= (and d!706621 c!391027) b!2449204))

(assert (= (and d!706621 (not c!391027)) b!2449205))

(assert (= (and d!706621 res!1039216) b!2449206))

(assert (= (and b!2449206 res!1039217) b!2449207))

(declare-fun m!2824461 () Bool)

(assert (=> b!2449206 m!2824461))

(assert (=> b!2449206 m!2823907))

(assert (=> b!2449206 m!2823433))

(declare-fun m!2824463 () Bool)

(assert (=> d!706621 m!2824463))

(assert (=> d!706621 m!2823797))

(assert (=> d!706621 m!2823439))

(declare-fun m!2824465 () Bool)

(assert (=> b!2449205 m!2824465))

(assert (=> b!2448050 d!706621))

(declare-fun e!1555095 () Bool)

(assert (=> b!2448331 (= tp!777789 e!1555095)))

(declare-fun b!2449224 () Bool)

(declare-fun tp!777804 () Bool)

(assert (=> b!2449224 (= e!1555095 tp!777804)))

(declare-fun b!2449223 () Bool)

(declare-fun tp!777800 () Bool)

(declare-fun tp!777803 () Bool)

(assert (=> b!2449223 (= e!1555095 (and tp!777800 tp!777803))))

(declare-fun b!2449225 () Bool)

(declare-fun tp!777801 () Bool)

(declare-fun tp!777802 () Bool)

(assert (=> b!2449225 (= e!1555095 (and tp!777801 tp!777802))))

(declare-fun b!2449222 () Bool)

(assert (=> b!2449222 (= e!1555095 tp_is_empty!11807)))

(assert (= (and b!2448331 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14907 (h!33933 l!9164))))) b!2449222))

(assert (= (and b!2448331 ((_ is Concat!11833) (regOne!14906 (regOne!14907 (h!33933 l!9164))))) b!2449223))

(assert (= (and b!2448331 ((_ is Star!7197) (regOne!14906 (regOne!14907 (h!33933 l!9164))))) b!2449224))

(assert (= (and b!2448331 ((_ is Union!7197) (regOne!14906 (regOne!14907 (h!33933 l!9164))))) b!2449225))

(declare-fun e!1555096 () Bool)

(assert (=> b!2448331 (= tp!777792 e!1555096)))

(declare-fun b!2449228 () Bool)

(declare-fun tp!777809 () Bool)

(assert (=> b!2449228 (= e!1555096 tp!777809)))

(declare-fun b!2449227 () Bool)

(declare-fun tp!777805 () Bool)

(declare-fun tp!777808 () Bool)

(assert (=> b!2449227 (= e!1555096 (and tp!777805 tp!777808))))

(declare-fun b!2449229 () Bool)

(declare-fun tp!777806 () Bool)

(declare-fun tp!777807 () Bool)

(assert (=> b!2449229 (= e!1555096 (and tp!777806 tp!777807))))

(declare-fun b!2449226 () Bool)

(assert (=> b!2449226 (= e!1555096 tp_is_empty!11807)))

(assert (= (and b!2448331 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14907 (h!33933 l!9164))))) b!2449226))

(assert (= (and b!2448331 ((_ is Concat!11833) (regTwo!14906 (regOne!14907 (h!33933 l!9164))))) b!2449227))

(assert (= (and b!2448331 ((_ is Star!7197) (regTwo!14906 (regOne!14907 (h!33933 l!9164))))) b!2449228))

(assert (= (and b!2448331 ((_ is Union!7197) (regTwo!14906 (regOne!14907 (h!33933 l!9164))))) b!2449229))

(declare-fun e!1555097 () Bool)

(assert (=> b!2448281 (= tp!777725 e!1555097)))

(declare-fun b!2449232 () Bool)

(declare-fun tp!777814 () Bool)

(assert (=> b!2449232 (= e!1555097 tp!777814)))

(declare-fun b!2449231 () Bool)

(declare-fun tp!777810 () Bool)

(declare-fun tp!777813 () Bool)

(assert (=> b!2449231 (= e!1555097 (and tp!777810 tp!777813))))

(declare-fun b!2449233 () Bool)

(declare-fun tp!777811 () Bool)

(declare-fun tp!777812 () Bool)

(assert (=> b!2449233 (= e!1555097 (and tp!777811 tp!777812))))

(declare-fun b!2449230 () Bool)

(assert (=> b!2449230 (= e!1555097 tp_is_empty!11807)))

(assert (= (and b!2448281 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14907 (regTwo!14907 r!13927))))) b!2449230))

(assert (= (and b!2448281 ((_ is Concat!11833) (regOne!14907 (regOne!14907 (regTwo!14907 r!13927))))) b!2449231))

(assert (= (and b!2448281 ((_ is Star!7197) (regOne!14907 (regOne!14907 (regTwo!14907 r!13927))))) b!2449232))

(assert (= (and b!2448281 ((_ is Union!7197) (regOne!14907 (regOne!14907 (regTwo!14907 r!13927))))) b!2449233))

(declare-fun e!1555098 () Bool)

(assert (=> b!2448281 (= tp!777726 e!1555098)))

(declare-fun b!2449236 () Bool)

(declare-fun tp!777819 () Bool)

(assert (=> b!2449236 (= e!1555098 tp!777819)))

(declare-fun b!2449235 () Bool)

(declare-fun tp!777815 () Bool)

(declare-fun tp!777818 () Bool)

(assert (=> b!2449235 (= e!1555098 (and tp!777815 tp!777818))))

(declare-fun b!2449237 () Bool)

(declare-fun tp!777816 () Bool)

(declare-fun tp!777817 () Bool)

(assert (=> b!2449237 (= e!1555098 (and tp!777816 tp!777817))))

(declare-fun b!2449234 () Bool)

(assert (=> b!2449234 (= e!1555098 tp_is_empty!11807)))

(assert (= (and b!2448281 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14907 (regTwo!14907 r!13927))))) b!2449234))

(assert (= (and b!2448281 ((_ is Concat!11833) (regTwo!14907 (regOne!14907 (regTwo!14907 r!13927))))) b!2449235))

(assert (= (and b!2448281 ((_ is Star!7197) (regTwo!14907 (regOne!14907 (regTwo!14907 r!13927))))) b!2449236))

(assert (= (and b!2448281 ((_ is Union!7197) (regTwo!14907 (regOne!14907 (regTwo!14907 r!13927))))) b!2449237))

(declare-fun e!1555099 () Bool)

(assert (=> b!2448272 (= tp!777718 e!1555099)))

(declare-fun b!2449240 () Bool)

(declare-fun tp!777824 () Bool)

(assert (=> b!2449240 (= e!1555099 tp!777824)))

(declare-fun b!2449239 () Bool)

(declare-fun tp!777820 () Bool)

(declare-fun tp!777823 () Bool)

(assert (=> b!2449239 (= e!1555099 (and tp!777820 tp!777823))))

(declare-fun b!2449241 () Bool)

(declare-fun tp!777821 () Bool)

(declare-fun tp!777822 () Bool)

(assert (=> b!2449241 (= e!1555099 (and tp!777821 tp!777822))))

(declare-fun b!2449238 () Bool)

(assert (=> b!2449238 (= e!1555099 tp_is_empty!11807)))

(assert (= (and b!2448272 ((_ is ElementMatch!7197) (reg!7526 (regOne!14906 (regOne!14906 r!13927))))) b!2449238))

(assert (= (and b!2448272 ((_ is Concat!11833) (reg!7526 (regOne!14906 (regOne!14906 r!13927))))) b!2449239))

(assert (= (and b!2448272 ((_ is Star!7197) (reg!7526 (regOne!14906 (regOne!14906 r!13927))))) b!2449240))

(assert (= (and b!2448272 ((_ is Union!7197) (reg!7526 (regOne!14906 (regOne!14906 r!13927))))) b!2449241))

(declare-fun e!1555100 () Bool)

(assert (=> b!2448263 (= tp!777704 e!1555100)))

(declare-fun b!2449244 () Bool)

(declare-fun tp!777829 () Bool)

(assert (=> b!2449244 (= e!1555100 tp!777829)))

(declare-fun b!2449243 () Bool)

(declare-fun tp!777825 () Bool)

(declare-fun tp!777828 () Bool)

(assert (=> b!2449243 (= e!1555100 (and tp!777825 tp!777828))))

(declare-fun b!2449245 () Bool)

(declare-fun tp!777826 () Bool)

(declare-fun tp!777827 () Bool)

(assert (=> b!2449245 (= e!1555100 (and tp!777826 tp!777827))))

(declare-fun b!2449242 () Bool)

(assert (=> b!2449242 (= e!1555100 tp_is_empty!11807)))

(assert (= (and b!2448263 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14906 (regTwo!14907 r!13927))))) b!2449242))

(assert (= (and b!2448263 ((_ is Concat!11833) (regOne!14906 (regOne!14906 (regTwo!14907 r!13927))))) b!2449243))

(assert (= (and b!2448263 ((_ is Star!7197) (regOne!14906 (regOne!14906 (regTwo!14907 r!13927))))) b!2449244))

(assert (= (and b!2448263 ((_ is Union!7197) (regOne!14906 (regOne!14906 (regTwo!14907 r!13927))))) b!2449245))

(declare-fun e!1555101 () Bool)

(assert (=> b!2448263 (= tp!777707 e!1555101)))

(declare-fun b!2449248 () Bool)

(declare-fun tp!777834 () Bool)

(assert (=> b!2449248 (= e!1555101 tp!777834)))

(declare-fun b!2449247 () Bool)

(declare-fun tp!777830 () Bool)

(declare-fun tp!777833 () Bool)

(assert (=> b!2449247 (= e!1555101 (and tp!777830 tp!777833))))

(declare-fun b!2449249 () Bool)

(declare-fun tp!777831 () Bool)

(declare-fun tp!777832 () Bool)

(assert (=> b!2449249 (= e!1555101 (and tp!777831 tp!777832))))

(declare-fun b!2449246 () Bool)

(assert (=> b!2449246 (= e!1555101 tp_is_empty!11807)))

(assert (= (and b!2448263 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14906 (regTwo!14907 r!13927))))) b!2449246))

(assert (= (and b!2448263 ((_ is Concat!11833) (regTwo!14906 (regOne!14906 (regTwo!14907 r!13927))))) b!2449247))

(assert (= (and b!2448263 ((_ is Star!7197) (regTwo!14906 (regOne!14906 (regTwo!14907 r!13927))))) b!2449248))

(assert (= (and b!2448263 ((_ is Union!7197) (regTwo!14906 (regOne!14906 (regTwo!14907 r!13927))))) b!2449249))

(declare-fun e!1555102 () Bool)

(assert (=> b!2448297 (= tp!777745 e!1555102)))

(declare-fun b!2449252 () Bool)

(declare-fun tp!777839 () Bool)

(assert (=> b!2449252 (= e!1555102 tp!777839)))

(declare-fun b!2449251 () Bool)

(declare-fun tp!777835 () Bool)

(declare-fun tp!777838 () Bool)

(assert (=> b!2449251 (= e!1555102 (and tp!777835 tp!777838))))

(declare-fun b!2449253 () Bool)

(declare-fun tp!777836 () Bool)

(declare-fun tp!777837 () Bool)

(assert (=> b!2449253 (= e!1555102 (and tp!777836 tp!777837))))

(declare-fun b!2449250 () Bool)

(assert (=> b!2449250 (= e!1555102 tp_is_empty!11807)))

(assert (= (and b!2448297 ((_ is ElementMatch!7197) (regOne!14907 (reg!7526 (regOne!14907 r!13927))))) b!2449250))

(assert (= (and b!2448297 ((_ is Concat!11833) (regOne!14907 (reg!7526 (regOne!14907 r!13927))))) b!2449251))

(assert (= (and b!2448297 ((_ is Star!7197) (regOne!14907 (reg!7526 (regOne!14907 r!13927))))) b!2449252))

(assert (= (and b!2448297 ((_ is Union!7197) (regOne!14907 (reg!7526 (regOne!14907 r!13927))))) b!2449253))

(declare-fun e!1555103 () Bool)

(assert (=> b!2448297 (= tp!777746 e!1555103)))

(declare-fun b!2449256 () Bool)

(declare-fun tp!777844 () Bool)

(assert (=> b!2449256 (= e!1555103 tp!777844)))

(declare-fun b!2449255 () Bool)

(declare-fun tp!777840 () Bool)

(declare-fun tp!777843 () Bool)

(assert (=> b!2449255 (= e!1555103 (and tp!777840 tp!777843))))

(declare-fun b!2449257 () Bool)

(declare-fun tp!777841 () Bool)

(declare-fun tp!777842 () Bool)

(assert (=> b!2449257 (= e!1555103 (and tp!777841 tp!777842))))

(declare-fun b!2449254 () Bool)

(assert (=> b!2449254 (= e!1555103 tp_is_empty!11807)))

(assert (= (and b!2448297 ((_ is ElementMatch!7197) (regTwo!14907 (reg!7526 (regOne!14907 r!13927))))) b!2449254))

(assert (= (and b!2448297 ((_ is Concat!11833) (regTwo!14907 (reg!7526 (regOne!14907 r!13927))))) b!2449255))

(assert (= (and b!2448297 ((_ is Star!7197) (regTwo!14907 (reg!7526 (regOne!14907 r!13927))))) b!2449256))

(assert (= (and b!2448297 ((_ is Union!7197) (regTwo!14907 (reg!7526 (regOne!14907 r!13927))))) b!2449257))

(declare-fun e!1555104 () Bool)

(assert (=> b!2448288 (= tp!777738 e!1555104)))

(declare-fun b!2449260 () Bool)

(declare-fun tp!777849 () Bool)

(assert (=> b!2449260 (= e!1555104 tp!777849)))

(declare-fun b!2449259 () Bool)

(declare-fun tp!777845 () Bool)

(declare-fun tp!777848 () Bool)

(assert (=> b!2449259 (= e!1555104 (and tp!777845 tp!777848))))

(declare-fun b!2449261 () Bool)

(declare-fun tp!777846 () Bool)

(declare-fun tp!777847 () Bool)

(assert (=> b!2449261 (= e!1555104 (and tp!777846 tp!777847))))

(declare-fun b!2449258 () Bool)

(assert (=> b!2449258 (= e!1555104 tp_is_empty!11807)))

(assert (= (and b!2448288 ((_ is ElementMatch!7197) (reg!7526 (regOne!14907 (regOne!14906 r!13927))))) b!2449258))

(assert (= (and b!2448288 ((_ is Concat!11833) (reg!7526 (regOne!14907 (regOne!14906 r!13927))))) b!2449259))

(assert (= (and b!2448288 ((_ is Star!7197) (reg!7526 (regOne!14907 (regOne!14906 r!13927))))) b!2449260))

(assert (= (and b!2448288 ((_ is Union!7197) (reg!7526 (regOne!14907 (regOne!14906 r!13927))))) b!2449261))

(declare-fun e!1555105 () Bool)

(assert (=> b!2448229 (= tp!777660 e!1555105)))

(declare-fun b!2449264 () Bool)

(declare-fun tp!777854 () Bool)

(assert (=> b!2449264 (= e!1555105 tp!777854)))

(declare-fun b!2449263 () Bool)

(declare-fun tp!777850 () Bool)

(declare-fun tp!777853 () Bool)

(assert (=> b!2449263 (= e!1555105 (and tp!777850 tp!777853))))

(declare-fun b!2449265 () Bool)

(declare-fun tp!777851 () Bool)

(declare-fun tp!777852 () Bool)

(assert (=> b!2449265 (= e!1555105 (and tp!777851 tp!777852))))

(declare-fun b!2449262 () Bool)

(assert (=> b!2449262 (= e!1555105 tp_is_empty!11807)))

(assert (= (and b!2448229 ((_ is ElementMatch!7197) (regOne!14907 (reg!7526 (h!33933 l!9164))))) b!2449262))

(assert (= (and b!2448229 ((_ is Concat!11833) (regOne!14907 (reg!7526 (h!33933 l!9164))))) b!2449263))

(assert (= (and b!2448229 ((_ is Star!7197) (regOne!14907 (reg!7526 (h!33933 l!9164))))) b!2449264))

(assert (= (and b!2448229 ((_ is Union!7197) (regOne!14907 (reg!7526 (h!33933 l!9164))))) b!2449265))

(declare-fun e!1555106 () Bool)

(assert (=> b!2448229 (= tp!777661 e!1555106)))

(declare-fun b!2449268 () Bool)

(declare-fun tp!777859 () Bool)

(assert (=> b!2449268 (= e!1555106 tp!777859)))

(declare-fun b!2449267 () Bool)

(declare-fun tp!777855 () Bool)

(declare-fun tp!777858 () Bool)

(assert (=> b!2449267 (= e!1555106 (and tp!777855 tp!777858))))

(declare-fun b!2449269 () Bool)

(declare-fun tp!777856 () Bool)

(declare-fun tp!777857 () Bool)

(assert (=> b!2449269 (= e!1555106 (and tp!777856 tp!777857))))

(declare-fun b!2449266 () Bool)

(assert (=> b!2449266 (= e!1555106 tp_is_empty!11807)))

(assert (= (and b!2448229 ((_ is ElementMatch!7197) (regTwo!14907 (reg!7526 (h!33933 l!9164))))) b!2449266))

(assert (= (and b!2448229 ((_ is Concat!11833) (regTwo!14907 (reg!7526 (h!33933 l!9164))))) b!2449267))

(assert (= (and b!2448229 ((_ is Star!7197) (regTwo!14907 (reg!7526 (h!33933 l!9164))))) b!2449268))

(assert (= (and b!2448229 ((_ is Union!7197) (regTwo!14907 (reg!7526 (h!33933 l!9164))))) b!2449269))

(declare-fun e!1555107 () Bool)

(assert (=> b!2448279 (= tp!777724 e!1555107)))

(declare-fun b!2449272 () Bool)

(declare-fun tp!777864 () Bool)

(assert (=> b!2449272 (= e!1555107 tp!777864)))

(declare-fun b!2449271 () Bool)

(declare-fun tp!777860 () Bool)

(declare-fun tp!777863 () Bool)

(assert (=> b!2449271 (= e!1555107 (and tp!777860 tp!777863))))

(declare-fun b!2449273 () Bool)

(declare-fun tp!777861 () Bool)

(declare-fun tp!777862 () Bool)

(assert (=> b!2449273 (= e!1555107 (and tp!777861 tp!777862))))

(declare-fun b!2449270 () Bool)

(assert (=> b!2449270 (= e!1555107 tp_is_empty!11807)))

(assert (= (and b!2448279 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14907 (regTwo!14907 r!13927))))) b!2449270))

(assert (= (and b!2448279 ((_ is Concat!11833) (regOne!14906 (regOne!14907 (regTwo!14907 r!13927))))) b!2449271))

(assert (= (and b!2448279 ((_ is Star!7197) (regOne!14906 (regOne!14907 (regTwo!14907 r!13927))))) b!2449272))

(assert (= (and b!2448279 ((_ is Union!7197) (regOne!14906 (regOne!14907 (regTwo!14907 r!13927))))) b!2449273))

(declare-fun e!1555108 () Bool)

(assert (=> b!2448279 (= tp!777727 e!1555108)))

(declare-fun b!2449276 () Bool)

(declare-fun tp!777869 () Bool)

(assert (=> b!2449276 (= e!1555108 tp!777869)))

(declare-fun b!2449275 () Bool)

(declare-fun tp!777865 () Bool)

(declare-fun tp!777868 () Bool)

(assert (=> b!2449275 (= e!1555108 (and tp!777865 tp!777868))))

(declare-fun b!2449277 () Bool)

(declare-fun tp!777866 () Bool)

(declare-fun tp!777867 () Bool)

(assert (=> b!2449277 (= e!1555108 (and tp!777866 tp!777867))))

(declare-fun b!2449274 () Bool)

(assert (=> b!2449274 (= e!1555108 tp_is_empty!11807)))

(assert (= (and b!2448279 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14907 (regTwo!14907 r!13927))))) b!2449274))

(assert (= (and b!2448279 ((_ is Concat!11833) (regTwo!14906 (regOne!14907 (regTwo!14907 r!13927))))) b!2449275))

(assert (= (and b!2448279 ((_ is Star!7197) (regTwo!14906 (regOne!14907 (regTwo!14907 r!13927))))) b!2449276))

(assert (= (and b!2448279 ((_ is Union!7197) (regTwo!14906 (regOne!14907 (regTwo!14907 r!13927))))) b!2449277))

(declare-fun e!1555115 () Bool)

(assert (=> b!2448223 (= tp!777656 e!1555115)))

(declare-fun b!2449287 () Bool)

(declare-fun tp!777874 () Bool)

(assert (=> b!2449287 (= e!1555115 tp!777874)))

(declare-fun b!2449286 () Bool)

(declare-fun tp!777870 () Bool)

(declare-fun tp!777873 () Bool)

(assert (=> b!2449286 (= e!1555115 (and tp!777870 tp!777873))))

(declare-fun b!2449288 () Bool)

(declare-fun tp!777871 () Bool)

(declare-fun tp!777872 () Bool)

(assert (=> b!2449288 (= e!1555115 (and tp!777871 tp!777872))))

(declare-fun b!2449285 () Bool)

(assert (=> b!2449285 (= e!1555115 tp_is_empty!11807)))

(assert (= (and b!2448223 ((_ is ElementMatch!7197) (reg!7526 (h!33933 (t!208607 l!9164))))) b!2449285))

(assert (= (and b!2448223 ((_ is Concat!11833) (reg!7526 (h!33933 (t!208607 l!9164))))) b!2449286))

(assert (= (and b!2448223 ((_ is Star!7197) (reg!7526 (h!33933 (t!208607 l!9164))))) b!2449287))

(assert (= (and b!2448223 ((_ is Union!7197) (reg!7526 (h!33933 (t!208607 l!9164))))) b!2449288))

(declare-fun e!1555116 () Bool)

(assert (=> b!2448214 (= tp!777642 e!1555116)))

(declare-fun b!2449291 () Bool)

(declare-fun tp!777879 () Bool)

(assert (=> b!2449291 (= e!1555116 tp!777879)))

(declare-fun b!2449290 () Bool)

(declare-fun tp!777875 () Bool)

(declare-fun tp!777878 () Bool)

(assert (=> b!2449290 (= e!1555116 (and tp!777875 tp!777878))))

(declare-fun b!2449292 () Bool)

(declare-fun tp!777876 () Bool)

(declare-fun tp!777877 () Bool)

(assert (=> b!2449292 (= e!1555116 (and tp!777876 tp!777877))))

(declare-fun b!2449289 () Bool)

(assert (=> b!2449289 (= e!1555116 tp_is_empty!11807)))

(assert (= (and b!2448214 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14907 (regOne!14907 r!13927))))) b!2449289))

(assert (= (and b!2448214 ((_ is Concat!11833) (regOne!14906 (regOne!14907 (regOne!14907 r!13927))))) b!2449290))

(assert (= (and b!2448214 ((_ is Star!7197) (regOne!14906 (regOne!14907 (regOne!14907 r!13927))))) b!2449291))

(assert (= (and b!2448214 ((_ is Union!7197) (regOne!14906 (regOne!14907 (regOne!14907 r!13927))))) b!2449292))

(declare-fun e!1555117 () Bool)

(assert (=> b!2448214 (= tp!777645 e!1555117)))

(declare-fun b!2449295 () Bool)

(declare-fun tp!777884 () Bool)

(assert (=> b!2449295 (= e!1555117 tp!777884)))

(declare-fun b!2449294 () Bool)

(declare-fun tp!777880 () Bool)

(declare-fun tp!777883 () Bool)

(assert (=> b!2449294 (= e!1555117 (and tp!777880 tp!777883))))

(declare-fun b!2449296 () Bool)

(declare-fun tp!777881 () Bool)

(declare-fun tp!777882 () Bool)

(assert (=> b!2449296 (= e!1555117 (and tp!777881 tp!777882))))

(declare-fun b!2449293 () Bool)

(assert (=> b!2449293 (= e!1555117 tp_is_empty!11807)))

(assert (= (and b!2448214 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14907 (regOne!14907 r!13927))))) b!2449293))

(assert (= (and b!2448214 ((_ is Concat!11833) (regTwo!14906 (regOne!14907 (regOne!14907 r!13927))))) b!2449294))

(assert (= (and b!2448214 ((_ is Star!7197) (regTwo!14906 (regOne!14907 (regOne!14907 r!13927))))) b!2449295))

(assert (= (and b!2448214 ((_ is Union!7197) (regTwo!14906 (regOne!14907 (regOne!14907 r!13927))))) b!2449296))

(declare-fun e!1555118 () Bool)

(assert (=> b!2448317 (= tp!777770 e!1555118)))

(declare-fun b!2449299 () Bool)

(declare-fun tp!777889 () Bool)

(assert (=> b!2449299 (= e!1555118 tp!777889)))

(declare-fun b!2449298 () Bool)

(declare-fun tp!777885 () Bool)

(declare-fun tp!777888 () Bool)

(assert (=> b!2449298 (= e!1555118 (and tp!777885 tp!777888))))

(declare-fun b!2449300 () Bool)

(declare-fun tp!777886 () Bool)

(declare-fun tp!777887 () Bool)

(assert (=> b!2449300 (= e!1555118 (and tp!777886 tp!777887))))

(declare-fun b!2449297 () Bool)

(assert (=> b!2449297 (= e!1555118 tp_is_empty!11807)))

(assert (= (and b!2448317 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14906 (regTwo!14906 r!13927))))) b!2449297))

(assert (= (and b!2448317 ((_ is Concat!11833) (regOne!14907 (regOne!14906 (regTwo!14906 r!13927))))) b!2449298))

(assert (= (and b!2448317 ((_ is Star!7197) (regOne!14907 (regOne!14906 (regTwo!14906 r!13927))))) b!2449299))

(assert (= (and b!2448317 ((_ is Union!7197) (regOne!14907 (regOne!14906 (regTwo!14906 r!13927))))) b!2449300))

(declare-fun e!1555121 () Bool)

(assert (=> b!2448317 (= tp!777771 e!1555121)))

(declare-fun b!2449307 () Bool)

(declare-fun tp!777894 () Bool)

(assert (=> b!2449307 (= e!1555121 tp!777894)))

(declare-fun b!2449306 () Bool)

(declare-fun tp!777890 () Bool)

(declare-fun tp!777893 () Bool)

(assert (=> b!2449306 (= e!1555121 (and tp!777890 tp!777893))))

(declare-fun b!2449308 () Bool)

(declare-fun tp!777891 () Bool)

(declare-fun tp!777892 () Bool)

(assert (=> b!2449308 (= e!1555121 (and tp!777891 tp!777892))))

(declare-fun b!2449305 () Bool)

(assert (=> b!2449305 (= e!1555121 tp_is_empty!11807)))

(assert (= (and b!2448317 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14906 (regTwo!14906 r!13927))))) b!2449305))

(assert (= (and b!2448317 ((_ is Concat!11833) (regTwo!14907 (regOne!14906 (regTwo!14906 r!13927))))) b!2449306))

(assert (= (and b!2448317 ((_ is Star!7197) (regTwo!14907 (regOne!14906 (regTwo!14906 r!13927))))) b!2449307))

(assert (= (and b!2448317 ((_ is Union!7197) (regTwo!14907 (regOne!14906 (regTwo!14906 r!13927))))) b!2449308))

(declare-fun e!1555122 () Bool)

(assert (=> b!2448308 (= tp!777763 e!1555122)))

(declare-fun b!2449311 () Bool)

(declare-fun tp!777899 () Bool)

(assert (=> b!2449311 (= e!1555122 tp!777899)))

(declare-fun b!2449310 () Bool)

(declare-fun tp!777895 () Bool)

(declare-fun tp!777898 () Bool)

(assert (=> b!2449310 (= e!1555122 (and tp!777895 tp!777898))))

(declare-fun b!2449312 () Bool)

(declare-fun tp!777896 () Bool)

(declare-fun tp!777897 () Bool)

(assert (=> b!2449312 (= e!1555122 (and tp!777896 tp!777897))))

(declare-fun b!2449309 () Bool)

(assert (=> b!2449309 (= e!1555122 tp_is_empty!11807)))

(assert (= (and b!2448308 ((_ is ElementMatch!7197) (reg!7526 (reg!7526 (regTwo!14907 r!13927))))) b!2449309))

(assert (= (and b!2448308 ((_ is Concat!11833) (reg!7526 (reg!7526 (regTwo!14907 r!13927))))) b!2449310))

(assert (= (and b!2448308 ((_ is Star!7197) (reg!7526 (reg!7526 (regTwo!14907 r!13927))))) b!2449311))

(assert (= (and b!2448308 ((_ is Union!7197) (reg!7526 (reg!7526 (regTwo!14907 r!13927))))) b!2449312))

(declare-fun e!1555123 () Bool)

(assert (=> b!2448249 (= tp!777685 e!1555123)))

(declare-fun b!2449315 () Bool)

(declare-fun tp!777904 () Bool)

(assert (=> b!2449315 (= e!1555123 tp!777904)))

(declare-fun b!2449314 () Bool)

(declare-fun tp!777900 () Bool)

(declare-fun tp!777903 () Bool)

(assert (=> b!2449314 (= e!1555123 (and tp!777900 tp!777903))))

(declare-fun b!2449316 () Bool)

(declare-fun tp!777901 () Bool)

(declare-fun tp!777902 () Bool)

(assert (=> b!2449316 (= e!1555123 (and tp!777901 tp!777902))))

(declare-fun b!2449313 () Bool)

(assert (=> b!2449313 (= e!1555123 tp_is_empty!11807)))

(assert (= (and b!2448249 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14906 (regOne!14907 r!13927))))) b!2449313))

(assert (= (and b!2448249 ((_ is Concat!11833) (regOne!14907 (regTwo!14906 (regOne!14907 r!13927))))) b!2449314))

(assert (= (and b!2448249 ((_ is Star!7197) (regOne!14907 (regTwo!14906 (regOne!14907 r!13927))))) b!2449315))

(assert (= (and b!2448249 ((_ is Union!7197) (regOne!14907 (regTwo!14906 (regOne!14907 r!13927))))) b!2449316))

(declare-fun e!1555124 () Bool)

(assert (=> b!2448249 (= tp!777686 e!1555124)))

(declare-fun b!2449319 () Bool)

(declare-fun tp!777909 () Bool)

(assert (=> b!2449319 (= e!1555124 tp!777909)))

(declare-fun b!2449318 () Bool)

(declare-fun tp!777905 () Bool)

(declare-fun tp!777908 () Bool)

(assert (=> b!2449318 (= e!1555124 (and tp!777905 tp!777908))))

(declare-fun b!2449320 () Bool)

(declare-fun tp!777906 () Bool)

(declare-fun tp!777907 () Bool)

(assert (=> b!2449320 (= e!1555124 (and tp!777906 tp!777907))))

(declare-fun b!2449317 () Bool)

(assert (=> b!2449317 (= e!1555124 tp_is_empty!11807)))

(assert (= (and b!2448249 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14906 (regOne!14907 r!13927))))) b!2449317))

(assert (= (and b!2448249 ((_ is Concat!11833) (regTwo!14907 (regTwo!14906 (regOne!14907 r!13927))))) b!2449318))

(assert (= (and b!2448249 ((_ is Star!7197) (regTwo!14907 (regTwo!14906 (regOne!14907 r!13927))))) b!2449319))

(assert (= (and b!2448249 ((_ is Union!7197) (regTwo!14907 (regTwo!14906 (regOne!14907 r!13927))))) b!2449320))

(declare-fun e!1555125 () Bool)

(assert (=> b!2448299 (= tp!777749 e!1555125)))

(declare-fun b!2449323 () Bool)

(declare-fun tp!777914 () Bool)

(assert (=> b!2449323 (= e!1555125 tp!777914)))

(declare-fun b!2449322 () Bool)

(declare-fun tp!777910 () Bool)

(declare-fun tp!777913 () Bool)

(assert (=> b!2449322 (= e!1555125 (and tp!777910 tp!777913))))

(declare-fun b!2449324 () Bool)

(declare-fun tp!777911 () Bool)

(declare-fun tp!777912 () Bool)

(assert (=> b!2449324 (= e!1555125 (and tp!777911 tp!777912))))

(declare-fun b!2449321 () Bool)

(assert (=> b!2449321 (= e!1555125 tp_is_empty!11807)))

(assert (= (and b!2448299 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14907 (regTwo!14906 r!13927))))) b!2449321))

(assert (= (and b!2448299 ((_ is Concat!11833) (regOne!14906 (regOne!14907 (regTwo!14906 r!13927))))) b!2449322))

(assert (= (and b!2448299 ((_ is Star!7197) (regOne!14906 (regOne!14907 (regTwo!14906 r!13927))))) b!2449323))

(assert (= (and b!2448299 ((_ is Union!7197) (regOne!14906 (regOne!14907 (regTwo!14906 r!13927))))) b!2449324))

(declare-fun e!1555126 () Bool)

(assert (=> b!2448299 (= tp!777752 e!1555126)))

(declare-fun b!2449327 () Bool)

(declare-fun tp!777919 () Bool)

(assert (=> b!2449327 (= e!1555126 tp!777919)))

(declare-fun b!2449326 () Bool)

(declare-fun tp!777915 () Bool)

(declare-fun tp!777918 () Bool)

(assert (=> b!2449326 (= e!1555126 (and tp!777915 tp!777918))))

(declare-fun b!2449328 () Bool)

(declare-fun tp!777916 () Bool)

(declare-fun tp!777917 () Bool)

(assert (=> b!2449328 (= e!1555126 (and tp!777916 tp!777917))))

(declare-fun b!2449325 () Bool)

(assert (=> b!2449325 (= e!1555126 tp_is_empty!11807)))

(assert (= (and b!2448299 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14907 (regTwo!14906 r!13927))))) b!2449325))

(assert (= (and b!2448299 ((_ is Concat!11833) (regTwo!14906 (regOne!14907 (regTwo!14906 r!13927))))) b!2449326))

(assert (= (and b!2448299 ((_ is Star!7197) (regTwo!14906 (regOne!14907 (regTwo!14906 r!13927))))) b!2449327))

(assert (= (and b!2448299 ((_ is Union!7197) (regTwo!14906 (regOne!14907 (regTwo!14906 r!13927))))) b!2449328))

(declare-fun e!1555127 () Bool)

(assert (=> b!2448240 (= tp!777678 e!1555127)))

(declare-fun b!2449331 () Bool)

(declare-fun tp!777924 () Bool)

(assert (=> b!2449331 (= e!1555127 tp!777924)))

(declare-fun b!2449330 () Bool)

(declare-fun tp!777920 () Bool)

(declare-fun tp!777923 () Bool)

(assert (=> b!2449330 (= e!1555127 (and tp!777920 tp!777923))))

(declare-fun b!2449332 () Bool)

(declare-fun tp!777921 () Bool)

(declare-fun tp!777922 () Bool)

(assert (=> b!2449332 (= e!1555127 (and tp!777921 tp!777922))))

(declare-fun b!2449329 () Bool)

(assert (=> b!2449329 (= e!1555127 tp_is_empty!11807)))

(assert (= (and b!2448240 ((_ is ElementMatch!7197) (reg!7526 (reg!7526 (regOne!14906 r!13927))))) b!2449329))

(assert (= (and b!2448240 ((_ is Concat!11833) (reg!7526 (reg!7526 (regOne!14906 r!13927))))) b!2449330))

(assert (= (and b!2448240 ((_ is Star!7197) (reg!7526 (reg!7526 (regOne!14906 r!13927))))) b!2449331))

(assert (= (and b!2448240 ((_ is Union!7197) (reg!7526 (reg!7526 (regOne!14906 r!13927))))) b!2449332))

(declare-fun e!1555128 () Bool)

(assert (=> b!2448231 (= tp!777664 e!1555128)))

(declare-fun b!2449335 () Bool)

(declare-fun tp!777929 () Bool)

(assert (=> b!2449335 (= e!1555128 tp!777929)))

(declare-fun b!2449334 () Bool)

(declare-fun tp!777925 () Bool)

(declare-fun tp!777928 () Bool)

(assert (=> b!2449334 (= e!1555128 (and tp!777925 tp!777928))))

(declare-fun b!2449336 () Bool)

(declare-fun tp!777926 () Bool)

(declare-fun tp!777927 () Bool)

(assert (=> b!2449336 (= e!1555128 (and tp!777926 tp!777927))))

(declare-fun b!2449333 () Bool)

(assert (=> b!2449333 (= e!1555128 tp_is_empty!11807)))

(assert (= (and b!2448231 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14906 (h!33933 l!9164))))) b!2449333))

(assert (= (and b!2448231 ((_ is Concat!11833) (regOne!14906 (regOne!14906 (h!33933 l!9164))))) b!2449334))

(assert (= (and b!2448231 ((_ is Star!7197) (regOne!14906 (regOne!14906 (h!33933 l!9164))))) b!2449335))

(assert (= (and b!2448231 ((_ is Union!7197) (regOne!14906 (regOne!14906 (h!33933 l!9164))))) b!2449336))

(declare-fun e!1555130 () Bool)

(assert (=> b!2448231 (= tp!777667 e!1555130)))

(declare-fun b!2449343 () Bool)

(declare-fun tp!777939 () Bool)

(assert (=> b!2449343 (= e!1555130 tp!777939)))

(declare-fun b!2449341 () Bool)

(declare-fun tp!777931 () Bool)

(declare-fun tp!777938 () Bool)

(assert (=> b!2449341 (= e!1555130 (and tp!777931 tp!777938))))

(declare-fun b!2449344 () Bool)

(declare-fun tp!777933 () Bool)

(declare-fun tp!777936 () Bool)

(assert (=> b!2449344 (= e!1555130 (and tp!777933 tp!777936))))

(declare-fun b!2449339 () Bool)

(assert (=> b!2449339 (= e!1555130 tp_is_empty!11807)))

(assert (= (and b!2448231 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14906 (h!33933 l!9164))))) b!2449339))

(assert (= (and b!2448231 ((_ is Concat!11833) (regTwo!14906 (regOne!14906 (h!33933 l!9164))))) b!2449341))

(assert (= (and b!2448231 ((_ is Star!7197) (regTwo!14906 (regOne!14906 (h!33933 l!9164))))) b!2449343))

(assert (= (and b!2448231 ((_ is Union!7197) (regTwo!14906 (regOne!14906 (h!33933 l!9164))))) b!2449344))

(declare-fun e!1555131 () Bool)

(assert (=> b!2448216 (= tp!777643 e!1555131)))

(declare-fun b!2449347 () Bool)

(declare-fun tp!777944 () Bool)

(assert (=> b!2449347 (= e!1555131 tp!777944)))

(declare-fun b!2449346 () Bool)

(declare-fun tp!777940 () Bool)

(declare-fun tp!777943 () Bool)

(assert (=> b!2449346 (= e!1555131 (and tp!777940 tp!777943))))

(declare-fun b!2449348 () Bool)

(declare-fun tp!777941 () Bool)

(declare-fun tp!777942 () Bool)

(assert (=> b!2449348 (= e!1555131 (and tp!777941 tp!777942))))

(declare-fun b!2449345 () Bool)

(assert (=> b!2449345 (= e!1555131 tp_is_empty!11807)))

(assert (= (and b!2448216 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14907 (regOne!14907 r!13927))))) b!2449345))

(assert (= (and b!2448216 ((_ is Concat!11833) (regOne!14907 (regOne!14907 (regOne!14907 r!13927))))) b!2449346))

(assert (= (and b!2448216 ((_ is Star!7197) (regOne!14907 (regOne!14907 (regOne!14907 r!13927))))) b!2449347))

(assert (= (and b!2448216 ((_ is Union!7197) (regOne!14907 (regOne!14907 (regOne!14907 r!13927))))) b!2449348))

(declare-fun e!1555133 () Bool)

(assert (=> b!2448216 (= tp!777644 e!1555133)))

(declare-fun b!2449355 () Bool)

(declare-fun tp!777954 () Bool)

(assert (=> b!2449355 (= e!1555133 tp!777954)))

(declare-fun b!2449354 () Bool)

(declare-fun tp!777950 () Bool)

(declare-fun tp!777953 () Bool)

(assert (=> b!2449354 (= e!1555133 (and tp!777950 tp!777953))))

(declare-fun b!2449356 () Bool)

(declare-fun tp!777951 () Bool)

(declare-fun tp!777952 () Bool)

(assert (=> b!2449356 (= e!1555133 (and tp!777951 tp!777952))))

(declare-fun b!2449353 () Bool)

(assert (=> b!2449353 (= e!1555133 tp_is_empty!11807)))

(assert (= (and b!2448216 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14907 (regOne!14907 r!13927))))) b!2449353))

(assert (= (and b!2448216 ((_ is Concat!11833) (regTwo!14907 (regOne!14907 (regOne!14907 r!13927))))) b!2449354))

(assert (= (and b!2448216 ((_ is Star!7197) (regTwo!14907 (regOne!14907 (regOne!14907 r!13927))))) b!2449355))

(assert (= (and b!2448216 ((_ is Union!7197) (regTwo!14907 (regOne!14907 (regOne!14907 r!13927))))) b!2449356))

(declare-fun e!1555135 () Bool)

(assert (=> b!2448333 (= tp!777790 e!1555135)))

(declare-fun b!2449363 () Bool)

(declare-fun tp!777964 () Bool)

(assert (=> b!2449363 (= e!1555135 tp!777964)))

(declare-fun b!2449362 () Bool)

(declare-fun tp!777960 () Bool)

(declare-fun tp!777963 () Bool)

(assert (=> b!2449362 (= e!1555135 (and tp!777960 tp!777963))))

(declare-fun b!2449364 () Bool)

(declare-fun tp!777961 () Bool)

(declare-fun tp!777962 () Bool)

(assert (=> b!2449364 (= e!1555135 (and tp!777961 tp!777962))))

(declare-fun b!2449361 () Bool)

(assert (=> b!2449361 (= e!1555135 tp_is_empty!11807)))

(assert (= (and b!2448333 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14907 (h!33933 l!9164))))) b!2449361))

(assert (= (and b!2448333 ((_ is Concat!11833) (regOne!14907 (regOne!14907 (h!33933 l!9164))))) b!2449362))

(assert (= (and b!2448333 ((_ is Star!7197) (regOne!14907 (regOne!14907 (h!33933 l!9164))))) b!2449363))

(assert (= (and b!2448333 ((_ is Union!7197) (regOne!14907 (regOne!14907 (h!33933 l!9164))))) b!2449364))

(declare-fun e!1555137 () Bool)

(assert (=> b!2448333 (= tp!777791 e!1555137)))

(declare-fun b!2449371 () Bool)

(declare-fun tp!777974 () Bool)

(assert (=> b!2449371 (= e!1555137 tp!777974)))

(declare-fun b!2449370 () Bool)

(declare-fun tp!777970 () Bool)

(declare-fun tp!777973 () Bool)

(assert (=> b!2449370 (= e!1555137 (and tp!777970 tp!777973))))

(declare-fun b!2449372 () Bool)

(declare-fun tp!777971 () Bool)

(declare-fun tp!777972 () Bool)

(assert (=> b!2449372 (= e!1555137 (and tp!777971 tp!777972))))

(declare-fun b!2449369 () Bool)

(assert (=> b!2449369 (= e!1555137 tp_is_empty!11807)))

(assert (= (and b!2448333 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14907 (h!33933 l!9164))))) b!2449369))

(assert (= (and b!2448333 ((_ is Concat!11833) (regTwo!14907 (regOne!14907 (h!33933 l!9164))))) b!2449370))

(assert (= (and b!2448333 ((_ is Star!7197) (regTwo!14907 (regOne!14907 (h!33933 l!9164))))) b!2449371))

(assert (= (and b!2448333 ((_ is Union!7197) (regTwo!14907 (regOne!14907 (h!33933 l!9164))))) b!2449372))

(declare-fun e!1555138 () Bool)

(assert (=> b!2448324 (= tp!777783 e!1555138)))

(declare-fun b!2449375 () Bool)

(declare-fun tp!777979 () Bool)

(assert (=> b!2449375 (= e!1555138 tp!777979)))

(declare-fun b!2449374 () Bool)

(declare-fun tp!777975 () Bool)

(declare-fun tp!777978 () Bool)

(assert (=> b!2449374 (= e!1555138 (and tp!777975 tp!777978))))

(declare-fun b!2449376 () Bool)

(declare-fun tp!777976 () Bool)

(declare-fun tp!777977 () Bool)

(assert (=> b!2449376 (= e!1555138 (and tp!777976 tp!777977))))

(declare-fun b!2449373 () Bool)

(assert (=> b!2449373 (= e!1555138 tp_is_empty!11807)))

(assert (= (and b!2448324 ((_ is ElementMatch!7197) (reg!7526 (regOne!14906 (reg!7526 r!13927))))) b!2449373))

(assert (= (and b!2448324 ((_ is Concat!11833) (reg!7526 (regOne!14906 (reg!7526 r!13927))))) b!2449374))

(assert (= (and b!2448324 ((_ is Star!7197) (reg!7526 (regOne!14906 (reg!7526 r!13927))))) b!2449375))

(assert (= (and b!2448324 ((_ is Union!7197) (reg!7526 (regOne!14906 (reg!7526 r!13927))))) b!2449376))

(declare-fun e!1555141 () Bool)

(assert (=> b!2448315 (= tp!777769 e!1555141)))

(declare-fun b!2449385 () Bool)

(declare-fun tp!777993 () Bool)

(assert (=> b!2449385 (= e!1555141 tp!777993)))

(declare-fun b!2449383 () Bool)

(declare-fun tp!777985 () Bool)

(declare-fun tp!777991 () Bool)

(assert (=> b!2449383 (= e!1555141 (and tp!777985 tp!777991))))

(declare-fun b!2449387 () Bool)

(declare-fun tp!777987 () Bool)

(declare-fun tp!777989 () Bool)

(assert (=> b!2449387 (= e!1555141 (and tp!777987 tp!777989))))

(declare-fun b!2449381 () Bool)

(assert (=> b!2449381 (= e!1555141 tp_is_empty!11807)))

(assert (= (and b!2448315 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14906 (regTwo!14906 r!13927))))) b!2449381))

(assert (= (and b!2448315 ((_ is Concat!11833) (regOne!14906 (regOne!14906 (regTwo!14906 r!13927))))) b!2449383))

(assert (= (and b!2448315 ((_ is Star!7197) (regOne!14906 (regOne!14906 (regTwo!14906 r!13927))))) b!2449385))

(assert (= (and b!2448315 ((_ is Union!7197) (regOne!14906 (regOne!14906 (regTwo!14906 r!13927))))) b!2449387))

(declare-fun e!1555142 () Bool)

(assert (=> b!2448315 (= tp!777772 e!1555142)))

(declare-fun b!2449391 () Bool)

(declare-fun tp!777999 () Bool)

(assert (=> b!2449391 (= e!1555142 tp!777999)))

(declare-fun b!2449390 () Bool)

(declare-fun tp!777995 () Bool)

(declare-fun tp!777998 () Bool)

(assert (=> b!2449390 (= e!1555142 (and tp!777995 tp!777998))))

(declare-fun b!2449392 () Bool)

(declare-fun tp!777996 () Bool)

(declare-fun tp!777997 () Bool)

(assert (=> b!2449392 (= e!1555142 (and tp!777996 tp!777997))))

(declare-fun b!2449389 () Bool)

(assert (=> b!2449389 (= e!1555142 tp_is_empty!11807)))

(assert (= (and b!2448315 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14906 (regTwo!14906 r!13927))))) b!2449389))

(assert (= (and b!2448315 ((_ is Concat!11833) (regTwo!14906 (regOne!14906 (regTwo!14906 r!13927))))) b!2449390))

(assert (= (and b!2448315 ((_ is Star!7197) (regTwo!14906 (regOne!14906 (regTwo!14906 r!13927))))) b!2449391))

(assert (= (and b!2448315 ((_ is Union!7197) (regTwo!14906 (regOne!14906 (regTwo!14906 r!13927))))) b!2449392))

(declare-fun e!1555144 () Bool)

(assert (=> b!2448265 (= tp!777705 e!1555144)))

(declare-fun b!2449399 () Bool)

(declare-fun tp!778009 () Bool)

(assert (=> b!2449399 (= e!1555144 tp!778009)))

(declare-fun b!2449398 () Bool)

(declare-fun tp!778005 () Bool)

(declare-fun tp!778008 () Bool)

(assert (=> b!2449398 (= e!1555144 (and tp!778005 tp!778008))))

(declare-fun b!2449400 () Bool)

(declare-fun tp!778006 () Bool)

(declare-fun tp!778007 () Bool)

(assert (=> b!2449400 (= e!1555144 (and tp!778006 tp!778007))))

(declare-fun b!2449397 () Bool)

(assert (=> b!2449397 (= e!1555144 tp_is_empty!11807)))

(assert (= (and b!2448265 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14906 (regTwo!14907 r!13927))))) b!2449397))

(assert (= (and b!2448265 ((_ is Concat!11833) (regOne!14907 (regOne!14906 (regTwo!14907 r!13927))))) b!2449398))

(assert (= (and b!2448265 ((_ is Star!7197) (regOne!14907 (regOne!14906 (regTwo!14907 r!13927))))) b!2449399))

(assert (= (and b!2448265 ((_ is Union!7197) (regOne!14907 (regOne!14906 (regTwo!14907 r!13927))))) b!2449400))

(declare-fun e!1555146 () Bool)

(assert (=> b!2448265 (= tp!777706 e!1555146)))

(declare-fun b!2449407 () Bool)

(declare-fun tp!778019 () Bool)

(assert (=> b!2449407 (= e!1555146 tp!778019)))

(declare-fun b!2449406 () Bool)

(declare-fun tp!778015 () Bool)

(declare-fun tp!778018 () Bool)

(assert (=> b!2449406 (= e!1555146 (and tp!778015 tp!778018))))

(declare-fun b!2449408 () Bool)

(declare-fun tp!778016 () Bool)

(declare-fun tp!778017 () Bool)

(assert (=> b!2449408 (= e!1555146 (and tp!778016 tp!778017))))

(declare-fun b!2449405 () Bool)

(assert (=> b!2449405 (= e!1555146 tp_is_empty!11807)))

(assert (= (and b!2448265 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14906 (regTwo!14907 r!13927))))) b!2449405))

(assert (= (and b!2448265 ((_ is Concat!11833) (regTwo!14907 (regOne!14906 (regTwo!14907 r!13927))))) b!2449406))

(assert (= (and b!2448265 ((_ is Star!7197) (regTwo!14907 (regOne!14906 (regTwo!14907 r!13927))))) b!2449407))

(assert (= (and b!2448265 ((_ is Union!7197) (regTwo!14907 (regOne!14906 (regTwo!14907 r!13927))))) b!2449408))

(declare-fun e!1555148 () Bool)

(assert (=> b!2448256 (= tp!777698 e!1555148)))

(declare-fun b!2449415 () Bool)

(declare-fun tp!778029 () Bool)

(assert (=> b!2449415 (= e!1555148 tp!778029)))

(declare-fun b!2449414 () Bool)

(declare-fun tp!778025 () Bool)

(declare-fun tp!778028 () Bool)

(assert (=> b!2449414 (= e!1555148 (and tp!778025 tp!778028))))

(declare-fun b!2449416 () Bool)

(declare-fun tp!778026 () Bool)

(declare-fun tp!778027 () Bool)

(assert (=> b!2449416 (= e!1555148 (and tp!778026 tp!778027))))

(declare-fun b!2449413 () Bool)

(assert (=> b!2449413 (= e!1555148 tp_is_empty!11807)))

(assert (= (and b!2448256 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14907 (reg!7526 r!13927))))) b!2449413))

(assert (= (and b!2448256 ((_ is Concat!11833) (reg!7526 (regTwo!14907 (reg!7526 r!13927))))) b!2449414))

(assert (= (and b!2448256 ((_ is Star!7197) (reg!7526 (regTwo!14907 (reg!7526 r!13927))))) b!2449415))

(assert (= (and b!2448256 ((_ is Union!7197) (reg!7526 (regTwo!14907 (reg!7526 r!13927))))) b!2449416))

(declare-fun e!1555150 () Bool)

(assert (=> b!2448247 (= tp!777684 e!1555150)))

(declare-fun b!2449423 () Bool)

(declare-fun tp!778039 () Bool)

(assert (=> b!2449423 (= e!1555150 tp!778039)))

(declare-fun b!2449422 () Bool)

(declare-fun tp!778035 () Bool)

(declare-fun tp!778038 () Bool)

(assert (=> b!2449422 (= e!1555150 (and tp!778035 tp!778038))))

(declare-fun b!2449424 () Bool)

(declare-fun tp!778036 () Bool)

(declare-fun tp!778037 () Bool)

(assert (=> b!2449424 (= e!1555150 (and tp!778036 tp!778037))))

(declare-fun b!2449421 () Bool)

(assert (=> b!2449421 (= e!1555150 tp_is_empty!11807)))

(assert (= (and b!2448247 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14906 (regOne!14907 r!13927))))) b!2449421))

(assert (= (and b!2448247 ((_ is Concat!11833) (regOne!14906 (regTwo!14906 (regOne!14907 r!13927))))) b!2449422))

(assert (= (and b!2448247 ((_ is Star!7197) (regOne!14906 (regTwo!14906 (regOne!14907 r!13927))))) b!2449423))

(assert (= (and b!2448247 ((_ is Union!7197) (regOne!14906 (regTwo!14906 (regOne!14907 r!13927))))) b!2449424))

(declare-fun e!1555152 () Bool)

(assert (=> b!2448247 (= tp!777687 e!1555152)))

(declare-fun b!2449431 () Bool)

(declare-fun tp!778049 () Bool)

(assert (=> b!2449431 (= e!1555152 tp!778049)))

(declare-fun b!2449430 () Bool)

(declare-fun tp!778045 () Bool)

(declare-fun tp!778048 () Bool)

(assert (=> b!2449430 (= e!1555152 (and tp!778045 tp!778048))))

(declare-fun b!2449432 () Bool)

(declare-fun tp!778046 () Bool)

(declare-fun tp!778047 () Bool)

(assert (=> b!2449432 (= e!1555152 (and tp!778046 tp!778047))))

(declare-fun b!2449429 () Bool)

(assert (=> b!2449429 (= e!1555152 tp_is_empty!11807)))

(assert (= (and b!2448247 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14906 (regOne!14907 r!13927))))) b!2449429))

(assert (= (and b!2448247 ((_ is Concat!11833) (regTwo!14906 (regTwo!14906 (regOne!14907 r!13927))))) b!2449430))

(assert (= (and b!2448247 ((_ is Star!7197) (regTwo!14906 (regTwo!14906 (regOne!14907 r!13927))))) b!2449431))

(assert (= (and b!2448247 ((_ is Union!7197) (regTwo!14906 (regTwo!14906 (regOne!14907 r!13927))))) b!2449432))

(declare-fun e!1555154 () Bool)

(assert (=> b!2448336 (= tp!777798 e!1555154)))

(declare-fun b!2449439 () Bool)

(declare-fun tp!778059 () Bool)

(assert (=> b!2449439 (= e!1555154 tp!778059)))

(declare-fun b!2449438 () Bool)

(declare-fun tp!778055 () Bool)

(declare-fun tp!778058 () Bool)

(assert (=> b!2449438 (= e!1555154 (and tp!778055 tp!778058))))

(declare-fun b!2449440 () Bool)

(declare-fun tp!778056 () Bool)

(declare-fun tp!778057 () Bool)

(assert (=> b!2449440 (= e!1555154 (and tp!778056 tp!778057))))

(declare-fun b!2449437 () Bool)

(assert (=> b!2449437 (= e!1555154 tp_is_empty!11807)))

(assert (= (and b!2448336 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14907 (h!33933 l!9164))))) b!2449437))

(assert (= (and b!2448336 ((_ is Concat!11833) (reg!7526 (regTwo!14907 (h!33933 l!9164))))) b!2449438))

(assert (= (and b!2448336 ((_ is Star!7197) (reg!7526 (regTwo!14907 (h!33933 l!9164))))) b!2449439))

(assert (= (and b!2448336 ((_ is Union!7197) (reg!7526 (regTwo!14907 (h!33933 l!9164))))) b!2449440))

(declare-fun e!1555156 () Bool)

(assert (=> b!2448327 (= tp!777784 e!1555156)))

(declare-fun b!2449447 () Bool)

(declare-fun tp!778069 () Bool)

(assert (=> b!2449447 (= e!1555156 tp!778069)))

(declare-fun b!2449446 () Bool)

(declare-fun tp!778065 () Bool)

(declare-fun tp!778068 () Bool)

(assert (=> b!2449446 (= e!1555156 (and tp!778065 tp!778068))))

(declare-fun b!2449448 () Bool)

(declare-fun tp!778066 () Bool)

(declare-fun tp!778067 () Bool)

(assert (=> b!2449448 (= e!1555156 (and tp!778066 tp!778067))))

(declare-fun b!2449445 () Bool)

(assert (=> b!2449445 (= e!1555156 tp_is_empty!11807)))

(assert (= (and b!2448327 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14906 (reg!7526 r!13927))))) b!2449445))

(assert (= (and b!2448327 ((_ is Concat!11833) (regOne!14906 (regTwo!14906 (reg!7526 r!13927))))) b!2449446))

(assert (= (and b!2448327 ((_ is Star!7197) (regOne!14906 (regTwo!14906 (reg!7526 r!13927))))) b!2449447))

(assert (= (and b!2448327 ((_ is Union!7197) (regOne!14906 (regTwo!14906 (reg!7526 r!13927))))) b!2449448))

(declare-fun e!1555158 () Bool)

(assert (=> b!2448327 (= tp!777787 e!1555158)))

(declare-fun b!2449455 () Bool)

(declare-fun tp!778079 () Bool)

(assert (=> b!2449455 (= e!1555158 tp!778079)))

(declare-fun b!2449454 () Bool)

(declare-fun tp!778075 () Bool)

(declare-fun tp!778078 () Bool)

(assert (=> b!2449454 (= e!1555158 (and tp!778075 tp!778078))))

(declare-fun b!2449456 () Bool)

(declare-fun tp!778076 () Bool)

(declare-fun tp!778077 () Bool)

(assert (=> b!2449456 (= e!1555158 (and tp!778076 tp!778077))))

(declare-fun b!2449453 () Bool)

(assert (=> b!2449453 (= e!1555158 tp_is_empty!11807)))

(assert (= (and b!2448327 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14906 (reg!7526 r!13927))))) b!2449453))

(assert (= (and b!2448327 ((_ is Concat!11833) (regTwo!14906 (regTwo!14906 (reg!7526 r!13927))))) b!2449454))

(assert (= (and b!2448327 ((_ is Star!7197) (regTwo!14906 (regTwo!14906 (reg!7526 r!13927))))) b!2449455))

(assert (= (and b!2448327 ((_ is Union!7197) (regTwo!14906 (regTwo!14906 (reg!7526 r!13927))))) b!2449456))

(declare-fun e!1555160 () Bool)

(assert (=> b!2448277 (= tp!777720 e!1555160)))

(declare-fun b!2449463 () Bool)

(declare-fun tp!778089 () Bool)

(assert (=> b!2449463 (= e!1555160 tp!778089)))

(declare-fun b!2449462 () Bool)

(declare-fun tp!778085 () Bool)

(declare-fun tp!778088 () Bool)

(assert (=> b!2449462 (= e!1555160 (and tp!778085 tp!778088))))

(declare-fun b!2449464 () Bool)

(declare-fun tp!778086 () Bool)

(declare-fun tp!778087 () Bool)

(assert (=> b!2449464 (= e!1555160 (and tp!778086 tp!778087))))

(declare-fun b!2449461 () Bool)

(assert (=> b!2449461 (= e!1555160 tp_is_empty!11807)))

(assert (= (and b!2448277 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14906 (regOne!14906 r!13927))))) b!2449461))

(assert (= (and b!2448277 ((_ is Concat!11833) (regOne!14907 (regTwo!14906 (regOne!14906 r!13927))))) b!2449462))

(assert (= (and b!2448277 ((_ is Star!7197) (regOne!14907 (regTwo!14906 (regOne!14906 r!13927))))) b!2449463))

(assert (= (and b!2448277 ((_ is Union!7197) (regOne!14907 (regTwo!14906 (regOne!14906 r!13927))))) b!2449464))

(declare-fun e!1555162 () Bool)

(assert (=> b!2448277 (= tp!777721 e!1555162)))

(declare-fun b!2449471 () Bool)

(declare-fun tp!778099 () Bool)

(assert (=> b!2449471 (= e!1555162 tp!778099)))

(declare-fun b!2449470 () Bool)

(declare-fun tp!778095 () Bool)

(declare-fun tp!778098 () Bool)

(assert (=> b!2449470 (= e!1555162 (and tp!778095 tp!778098))))

(declare-fun b!2449472 () Bool)

(declare-fun tp!778096 () Bool)

(declare-fun tp!778097 () Bool)

(assert (=> b!2449472 (= e!1555162 (and tp!778096 tp!778097))))

(declare-fun b!2449469 () Bool)

(assert (=> b!2449469 (= e!1555162 tp_is_empty!11807)))

(assert (= (and b!2448277 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14906 (regOne!14906 r!13927))))) b!2449469))

(assert (= (and b!2448277 ((_ is Concat!11833) (regTwo!14907 (regTwo!14906 (regOne!14906 r!13927))))) b!2449470))

(assert (= (and b!2448277 ((_ is Star!7197) (regTwo!14907 (regTwo!14906 (regOne!14906 r!13927))))) b!2449471))

(assert (= (and b!2448277 ((_ is Union!7197) (regTwo!14907 (regTwo!14906 (regOne!14906 r!13927))))) b!2449472))

(declare-fun e!1555164 () Bool)

(assert (=> b!2448268 (= tp!777713 e!1555164)))

(declare-fun b!2449479 () Bool)

(declare-fun tp!778109 () Bool)

(assert (=> b!2449479 (= e!1555164 tp!778109)))

(declare-fun b!2449478 () Bool)

(declare-fun tp!778105 () Bool)

(declare-fun tp!778108 () Bool)

(assert (=> b!2449478 (= e!1555164 (and tp!778105 tp!778108))))

(declare-fun b!2449480 () Bool)

(declare-fun tp!778106 () Bool)

(declare-fun tp!778107 () Bool)

(assert (=> b!2449480 (= e!1555164 (and tp!778106 tp!778107))))

(declare-fun b!2449477 () Bool)

(assert (=> b!2449477 (= e!1555164 tp_is_empty!11807)))

(assert (= (and b!2448268 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14906 (regTwo!14907 r!13927))))) b!2449477))

(assert (= (and b!2448268 ((_ is Concat!11833) (reg!7526 (regTwo!14906 (regTwo!14907 r!13927))))) b!2449478))

(assert (= (and b!2448268 ((_ is Star!7197) (reg!7526 (regTwo!14906 (regTwo!14907 r!13927))))) b!2449479))

(assert (= (and b!2448268 ((_ is Union!7197) (reg!7526 (regTwo!14906 (regTwo!14907 r!13927))))) b!2449480))

(declare-fun e!1555166 () Bool)

(assert (=> b!2448259 (= tp!777699 e!1555166)))

(declare-fun b!2449487 () Bool)

(declare-fun tp!778119 () Bool)

(assert (=> b!2449487 (= e!1555166 tp!778119)))

(declare-fun b!2449486 () Bool)

(declare-fun tp!778115 () Bool)

(declare-fun tp!778118 () Bool)

(assert (=> b!2449486 (= e!1555166 (and tp!778115 tp!778118))))

(declare-fun b!2449488 () Bool)

(declare-fun tp!778116 () Bool)

(declare-fun tp!778117 () Bool)

(assert (=> b!2449488 (= e!1555166 (and tp!778116 tp!778117))))

(declare-fun b!2449485 () Bool)

(assert (=> b!2449485 (= e!1555166 tp_is_empty!11807)))

(assert (= (and b!2448259 ((_ is ElementMatch!7197) (regOne!14906 (reg!7526 (regTwo!14906 r!13927))))) b!2449485))

(assert (= (and b!2448259 ((_ is Concat!11833) (regOne!14906 (reg!7526 (regTwo!14906 r!13927))))) b!2449486))

(assert (= (and b!2448259 ((_ is Star!7197) (regOne!14906 (reg!7526 (regTwo!14906 r!13927))))) b!2449487))

(assert (= (and b!2448259 ((_ is Union!7197) (regOne!14906 (reg!7526 (regTwo!14906 r!13927))))) b!2449488))

(declare-fun e!1555168 () Bool)

(assert (=> b!2448259 (= tp!777702 e!1555168)))

(declare-fun b!2449495 () Bool)

(declare-fun tp!778129 () Bool)

(assert (=> b!2449495 (= e!1555168 tp!778129)))

(declare-fun b!2449494 () Bool)

(declare-fun tp!778125 () Bool)

(declare-fun tp!778128 () Bool)

(assert (=> b!2449494 (= e!1555168 (and tp!778125 tp!778128))))

(declare-fun b!2449496 () Bool)

(declare-fun tp!778126 () Bool)

(declare-fun tp!778127 () Bool)

(assert (=> b!2449496 (= e!1555168 (and tp!778126 tp!778127))))

(declare-fun b!2449493 () Bool)

(assert (=> b!2449493 (= e!1555168 tp_is_empty!11807)))

(assert (= (and b!2448259 ((_ is ElementMatch!7197) (regTwo!14906 (reg!7526 (regTwo!14906 r!13927))))) b!2449493))

(assert (= (and b!2448259 ((_ is Concat!11833) (regTwo!14906 (reg!7526 (regTwo!14906 r!13927))))) b!2449494))

(assert (= (and b!2448259 ((_ is Star!7197) (regTwo!14906 (reg!7526 (regTwo!14906 r!13927))))) b!2449495))

(assert (= (and b!2448259 ((_ is Union!7197) (regTwo!14906 (reg!7526 (regTwo!14906 r!13927))))) b!2449496))

(declare-fun e!1555170 () Bool)

(assert (=> b!2448232 (= tp!777668 e!1555170)))

(declare-fun b!2449503 () Bool)

(declare-fun tp!778139 () Bool)

(assert (=> b!2449503 (= e!1555170 tp!778139)))

(declare-fun b!2449502 () Bool)

(declare-fun tp!778135 () Bool)

(declare-fun tp!778138 () Bool)

(assert (=> b!2449502 (= e!1555170 (and tp!778135 tp!778138))))

(declare-fun b!2449504 () Bool)

(declare-fun tp!778136 () Bool)

(declare-fun tp!778137 () Bool)

(assert (=> b!2449504 (= e!1555170 (and tp!778136 tp!778137))))

(declare-fun b!2449501 () Bool)

(assert (=> b!2449501 (= e!1555170 tp_is_empty!11807)))

(assert (= (and b!2448232 ((_ is ElementMatch!7197) (reg!7526 (regOne!14906 (h!33933 l!9164))))) b!2449501))

(assert (= (and b!2448232 ((_ is Concat!11833) (reg!7526 (regOne!14906 (h!33933 l!9164))))) b!2449502))

(assert (= (and b!2448232 ((_ is Star!7197) (reg!7526 (regOne!14906 (h!33933 l!9164))))) b!2449503))

(assert (= (and b!2448232 ((_ is Union!7197) (reg!7526 (regOne!14906 (h!33933 l!9164))))) b!2449504))

(declare-fun e!1555172 () Bool)

(assert (=> b!2448293 (= tp!777740 e!1555172)))

(declare-fun b!2449511 () Bool)

(declare-fun tp!778149 () Bool)

(assert (=> b!2449511 (= e!1555172 tp!778149)))

(declare-fun b!2449510 () Bool)

(declare-fun tp!778145 () Bool)

(declare-fun tp!778148 () Bool)

(assert (=> b!2449510 (= e!1555172 (and tp!778145 tp!778148))))

(declare-fun b!2449512 () Bool)

(declare-fun tp!778146 () Bool)

(declare-fun tp!778147 () Bool)

(assert (=> b!2449512 (= e!1555172 (and tp!778146 tp!778147))))

(declare-fun b!2449509 () Bool)

(assert (=> b!2449509 (= e!1555172 tp_is_empty!11807)))

(assert (= (and b!2448293 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14907 (regOne!14906 r!13927))))) b!2449509))

(assert (= (and b!2448293 ((_ is Concat!11833) (regOne!14907 (regTwo!14907 (regOne!14906 r!13927))))) b!2449510))

(assert (= (and b!2448293 ((_ is Star!7197) (regOne!14907 (regTwo!14907 (regOne!14906 r!13927))))) b!2449511))

(assert (= (and b!2448293 ((_ is Union!7197) (regOne!14907 (regTwo!14907 (regOne!14906 r!13927))))) b!2449512))

(declare-fun e!1555174 () Bool)

(assert (=> b!2448293 (= tp!777741 e!1555174)))

(declare-fun b!2449519 () Bool)

(declare-fun tp!778159 () Bool)

(assert (=> b!2449519 (= e!1555174 tp!778159)))

(declare-fun b!2449518 () Bool)

(declare-fun tp!778155 () Bool)

(declare-fun tp!778158 () Bool)

(assert (=> b!2449518 (= e!1555174 (and tp!778155 tp!778158))))

(declare-fun b!2449520 () Bool)

(declare-fun tp!778156 () Bool)

(declare-fun tp!778157 () Bool)

(assert (=> b!2449520 (= e!1555174 (and tp!778156 tp!778157))))

(declare-fun b!2449517 () Bool)

(assert (=> b!2449517 (= e!1555174 tp_is_empty!11807)))

(assert (= (and b!2448293 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14907 (regOne!14906 r!13927))))) b!2449517))

(assert (= (and b!2448293 ((_ is Concat!11833) (regTwo!14907 (regTwo!14907 (regOne!14906 r!13927))))) b!2449518))

(assert (= (and b!2448293 ((_ is Star!7197) (regTwo!14907 (regTwo!14907 (regOne!14906 r!13927))))) b!2449519))

(assert (= (and b!2448293 ((_ is Union!7197) (regTwo!14907 (regTwo!14907 (regOne!14906 r!13927))))) b!2449520))

(declare-fun e!1555177 () Bool)

(assert (=> b!2448284 (= tp!777733 e!1555177)))

(declare-fun b!2449529 () Bool)

(declare-fun tp!778173 () Bool)

(assert (=> b!2449529 (= e!1555177 tp!778173)))

(declare-fun b!2449527 () Bool)

(declare-fun tp!778165 () Bool)

(declare-fun tp!778171 () Bool)

(assert (=> b!2449527 (= e!1555177 (and tp!778165 tp!778171))))

(declare-fun b!2449531 () Bool)

(declare-fun tp!778167 () Bool)

(declare-fun tp!778169 () Bool)

(assert (=> b!2449531 (= e!1555177 (and tp!778167 tp!778169))))

(declare-fun b!2449525 () Bool)

(assert (=> b!2449525 (= e!1555177 tp_is_empty!11807)))

(assert (= (and b!2448284 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14907 (regTwo!14907 r!13927))))) b!2449525))

(assert (= (and b!2448284 ((_ is Concat!11833) (reg!7526 (regTwo!14907 (regTwo!14907 r!13927))))) b!2449527))

(assert (= (and b!2448284 ((_ is Star!7197) (reg!7526 (regTwo!14907 (regTwo!14907 r!13927))))) b!2449529))

(assert (= (and b!2448284 ((_ is Union!7197) (reg!7526 (regTwo!14907 (regTwo!14907 r!13927))))) b!2449531))

(declare-fun e!1555178 () Bool)

(assert (=> b!2448225 (= tp!777657 e!1555178)))

(declare-fun b!2449535 () Bool)

(declare-fun tp!778180 () Bool)

(assert (=> b!2449535 (= e!1555178 tp!778180)))

(declare-fun b!2449534 () Bool)

(declare-fun tp!778175 () Bool)

(declare-fun tp!778178 () Bool)

(assert (=> b!2449534 (= e!1555178 (and tp!778175 tp!778178))))

(declare-fun b!2449536 () Bool)

(declare-fun tp!778176 () Bool)

(declare-fun tp!778177 () Bool)

(assert (=> b!2449536 (= e!1555178 (and tp!778176 tp!778177))))

(declare-fun b!2449533 () Bool)

(assert (=> b!2449533 (= e!1555178 tp_is_empty!11807)))

(assert (= (and b!2448225 ((_ is ElementMatch!7197) (h!33933 (t!208607 (t!208607 l!9164))))) b!2449533))

(assert (= (and b!2448225 ((_ is Concat!11833) (h!33933 (t!208607 (t!208607 l!9164))))) b!2449534))

(assert (= (and b!2448225 ((_ is Star!7197) (h!33933 (t!208607 (t!208607 l!9164))))) b!2449535))

(assert (= (and b!2448225 ((_ is Union!7197) (h!33933 (t!208607 (t!208607 l!9164))))) b!2449536))

(declare-fun b!2449541 () Bool)

(declare-fun e!1555180 () Bool)

(declare-fun tp!778186 () Bool)

(declare-fun tp!778188 () Bool)

(assert (=> b!2449541 (= e!1555180 (and tp!778186 tp!778188))))

(assert (=> b!2448225 (= tp!777658 e!1555180)))

(assert (= (and b!2448225 ((_ is Cons!28532) (t!208607 (t!208607 (t!208607 l!9164))))) b!2449541))

(declare-fun e!1555182 () Bool)

(assert (=> b!2448275 (= tp!777719 e!1555182)))

(declare-fun b!2449548 () Bool)

(declare-fun tp!778196 () Bool)

(assert (=> b!2449548 (= e!1555182 tp!778196)))

(declare-fun b!2449547 () Bool)

(declare-fun tp!778192 () Bool)

(declare-fun tp!778195 () Bool)

(assert (=> b!2449547 (= e!1555182 (and tp!778192 tp!778195))))

(declare-fun b!2449549 () Bool)

(declare-fun tp!778193 () Bool)

(declare-fun tp!778194 () Bool)

(assert (=> b!2449549 (= e!1555182 (and tp!778193 tp!778194))))

(declare-fun b!2449546 () Bool)

(assert (=> b!2449546 (= e!1555182 tp_is_empty!11807)))

(assert (= (and b!2448275 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14906 (regOne!14906 r!13927))))) b!2449546))

(assert (= (and b!2448275 ((_ is Concat!11833) (regOne!14906 (regTwo!14906 (regOne!14906 r!13927))))) b!2449547))

(assert (= (and b!2448275 ((_ is Star!7197) (regOne!14906 (regTwo!14906 (regOne!14906 r!13927))))) b!2449548))

(assert (= (and b!2448275 ((_ is Union!7197) (regOne!14906 (regTwo!14906 (regOne!14906 r!13927))))) b!2449549))

(declare-fun e!1555184 () Bool)

(assert (=> b!2448275 (= tp!777722 e!1555184)))

(declare-fun b!2449556 () Bool)

(declare-fun tp!778206 () Bool)

(assert (=> b!2449556 (= e!1555184 tp!778206)))

(declare-fun b!2449555 () Bool)

(declare-fun tp!778202 () Bool)

(declare-fun tp!778205 () Bool)

(assert (=> b!2449555 (= e!1555184 (and tp!778202 tp!778205))))

(declare-fun b!2449557 () Bool)

(declare-fun tp!778203 () Bool)

(declare-fun tp!778204 () Bool)

(assert (=> b!2449557 (= e!1555184 (and tp!778203 tp!778204))))

(declare-fun b!2449554 () Bool)

(assert (=> b!2449554 (= e!1555184 tp_is_empty!11807)))

(assert (= (and b!2448275 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14906 (regOne!14906 r!13927))))) b!2449554))

(assert (= (and b!2448275 ((_ is Concat!11833) (regTwo!14906 (regTwo!14906 (regOne!14906 r!13927))))) b!2449555))

(assert (= (and b!2448275 ((_ is Star!7197) (regTwo!14906 (regTwo!14906 (regOne!14906 r!13927))))) b!2449556))

(assert (= (and b!2448275 ((_ is Union!7197) (regTwo!14906 (regTwo!14906 (regOne!14906 r!13927))))) b!2449557))

(declare-fun b!2449562 () Bool)

(declare-fun e!1555186 () Bool)

(declare-fun tp!778212 () Bool)

(assert (=> b!2449562 (= e!1555186 (and tp_is_empty!11807 tp!778212))))

(assert (=> b!2448338 (= tp!777799 e!1555186)))

(assert (= (and b!2448338 ((_ is Cons!28533) (t!208608 (t!208608 (t!208608 s!9460))))) b!2449562))

(declare-fun e!1555188 () Bool)

(assert (=> b!2448219 (= tp!777651 e!1555188)))

(declare-fun b!2449569 () Bool)

(declare-fun tp!778222 () Bool)

(assert (=> b!2449569 (= e!1555188 tp!778222)))

(declare-fun b!2449568 () Bool)

(declare-fun tp!778218 () Bool)

(declare-fun tp!778221 () Bool)

(assert (=> b!2449568 (= e!1555188 (and tp!778218 tp!778221))))

(declare-fun b!2449570 () Bool)

(declare-fun tp!778219 () Bool)

(declare-fun tp!778220 () Bool)

(assert (=> b!2449570 (= e!1555188 (and tp!778219 tp!778220))))

(declare-fun b!2449567 () Bool)

(assert (=> b!2449567 (= e!1555188 tp_is_empty!11807)))

(assert (= (and b!2448219 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14907 (regOne!14907 r!13927))))) b!2449567))

(assert (= (and b!2448219 ((_ is Concat!11833) (reg!7526 (regTwo!14907 (regOne!14907 r!13927))))) b!2449568))

(assert (= (and b!2448219 ((_ is Star!7197) (reg!7526 (regTwo!14907 (regOne!14907 r!13927))))) b!2449569))

(assert (= (and b!2448219 ((_ is Union!7197) (reg!7526 (regTwo!14907 (regOne!14907 r!13927))))) b!2449570))

(declare-fun e!1555190 () Bool)

(assert (=> b!2448313 (= tp!777765 e!1555190)))

(declare-fun b!2449577 () Bool)

(declare-fun tp!778232 () Bool)

(assert (=> b!2449577 (= e!1555190 tp!778232)))

(declare-fun b!2449576 () Bool)

(declare-fun tp!778228 () Bool)

(declare-fun tp!778231 () Bool)

(assert (=> b!2449576 (= e!1555190 (and tp!778228 tp!778231))))

(declare-fun b!2449578 () Bool)

(declare-fun tp!778229 () Bool)

(declare-fun tp!778230 () Bool)

(assert (=> b!2449578 (= e!1555190 (and tp!778229 tp!778230))))

(declare-fun b!2449575 () Bool)

(assert (=> b!2449575 (= e!1555190 tp_is_empty!11807)))

(assert (= (and b!2448313 ((_ is ElementMatch!7197) (regOne!14907 (reg!7526 (reg!7526 r!13927))))) b!2449575))

(assert (= (and b!2448313 ((_ is Concat!11833) (regOne!14907 (reg!7526 (reg!7526 r!13927))))) b!2449576))

(assert (= (and b!2448313 ((_ is Star!7197) (regOne!14907 (reg!7526 (reg!7526 r!13927))))) b!2449577))

(assert (= (and b!2448313 ((_ is Union!7197) (regOne!14907 (reg!7526 (reg!7526 r!13927))))) b!2449578))

(declare-fun e!1555192 () Bool)

(assert (=> b!2448313 (= tp!777766 e!1555192)))

(declare-fun b!2449585 () Bool)

(declare-fun tp!778242 () Bool)

(assert (=> b!2449585 (= e!1555192 tp!778242)))

(declare-fun b!2449584 () Bool)

(declare-fun tp!778238 () Bool)

(declare-fun tp!778241 () Bool)

(assert (=> b!2449584 (= e!1555192 (and tp!778238 tp!778241))))

(declare-fun b!2449586 () Bool)

(declare-fun tp!778239 () Bool)

(declare-fun tp!778240 () Bool)

(assert (=> b!2449586 (= e!1555192 (and tp!778239 tp!778240))))

(declare-fun b!2449583 () Bool)

(assert (=> b!2449583 (= e!1555192 tp_is_empty!11807)))

(assert (= (and b!2448313 ((_ is ElementMatch!7197) (regTwo!14907 (reg!7526 (reg!7526 r!13927))))) b!2449583))

(assert (= (and b!2448313 ((_ is Concat!11833) (regTwo!14907 (reg!7526 (reg!7526 r!13927))))) b!2449584))

(assert (= (and b!2448313 ((_ is Star!7197) (regTwo!14907 (reg!7526 (reg!7526 r!13927))))) b!2449585))

(assert (= (and b!2448313 ((_ is Union!7197) (regTwo!14907 (reg!7526 (reg!7526 r!13927))))) b!2449586))

(declare-fun e!1555194 () Bool)

(assert (=> b!2448304 (= tp!777758 e!1555194)))

(declare-fun b!2449593 () Bool)

(declare-fun tp!778252 () Bool)

(assert (=> b!2449593 (= e!1555194 tp!778252)))

(declare-fun b!2449592 () Bool)

(declare-fun tp!778248 () Bool)

(declare-fun tp!778251 () Bool)

(assert (=> b!2449592 (= e!1555194 (and tp!778248 tp!778251))))

(declare-fun b!2449594 () Bool)

(declare-fun tp!778249 () Bool)

(declare-fun tp!778250 () Bool)

(assert (=> b!2449594 (= e!1555194 (and tp!778249 tp!778250))))

(declare-fun b!2449591 () Bool)

(assert (=> b!2449591 (= e!1555194 tp_is_empty!11807)))

(assert (= (and b!2448304 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14907 (regTwo!14906 r!13927))))) b!2449591))

(assert (= (and b!2448304 ((_ is Concat!11833) (reg!7526 (regTwo!14907 (regTwo!14906 r!13927))))) b!2449592))

(assert (= (and b!2448304 ((_ is Star!7197) (reg!7526 (regTwo!14907 (regTwo!14906 r!13927))))) b!2449593))

(assert (= (and b!2448304 ((_ is Union!7197) (reg!7526 (regTwo!14907 (regTwo!14906 r!13927))))) b!2449594))

(declare-fun e!1555196 () Bool)

(assert (=> b!2448245 (= tp!777680 e!1555196)))

(declare-fun b!2449601 () Bool)

(declare-fun tp!778262 () Bool)

(assert (=> b!2449601 (= e!1555196 tp!778262)))

(declare-fun b!2449600 () Bool)

(declare-fun tp!778258 () Bool)

(declare-fun tp!778261 () Bool)

(assert (=> b!2449600 (= e!1555196 (and tp!778258 tp!778261))))

(declare-fun b!2449602 () Bool)

(declare-fun tp!778259 () Bool)

(declare-fun tp!778260 () Bool)

(assert (=> b!2449602 (= e!1555196 (and tp!778259 tp!778260))))

(declare-fun b!2449599 () Bool)

(assert (=> b!2449599 (= e!1555196 tp_is_empty!11807)))

(assert (= (and b!2448245 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14906 (regOne!14907 r!13927))))) b!2449599))

(assert (= (and b!2448245 ((_ is Concat!11833) (regOne!14907 (regOne!14906 (regOne!14907 r!13927))))) b!2449600))

(assert (= (and b!2448245 ((_ is Star!7197) (regOne!14907 (regOne!14906 (regOne!14907 r!13927))))) b!2449601))

(assert (= (and b!2448245 ((_ is Union!7197) (regOne!14907 (regOne!14906 (regOne!14907 r!13927))))) b!2449602))

(declare-fun e!1555198 () Bool)

(assert (=> b!2448245 (= tp!777681 e!1555198)))

(declare-fun b!2449609 () Bool)

(declare-fun tp!778272 () Bool)

(assert (=> b!2449609 (= e!1555198 tp!778272)))

(declare-fun b!2449608 () Bool)

(declare-fun tp!778268 () Bool)

(declare-fun tp!778271 () Bool)

(assert (=> b!2449608 (= e!1555198 (and tp!778268 tp!778271))))

(declare-fun b!2449610 () Bool)

(declare-fun tp!778269 () Bool)

(declare-fun tp!778270 () Bool)

(assert (=> b!2449610 (= e!1555198 (and tp!778269 tp!778270))))

(declare-fun b!2449607 () Bool)

(assert (=> b!2449607 (= e!1555198 tp_is_empty!11807)))

(assert (= (and b!2448245 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14906 (regOne!14907 r!13927))))) b!2449607))

(assert (= (and b!2448245 ((_ is Concat!11833) (regTwo!14907 (regOne!14906 (regOne!14907 r!13927))))) b!2449608))

(assert (= (and b!2448245 ((_ is Star!7197) (regTwo!14907 (regOne!14906 (regOne!14907 r!13927))))) b!2449609))

(assert (= (and b!2448245 ((_ is Union!7197) (regTwo!14907 (regOne!14906 (regOne!14907 r!13927))))) b!2449610))

(declare-fun e!1555200 () Bool)

(assert (=> b!2448295 (= tp!777744 e!1555200)))

(declare-fun b!2449617 () Bool)

(declare-fun tp!778282 () Bool)

(assert (=> b!2449617 (= e!1555200 tp!778282)))

(declare-fun b!2449616 () Bool)

(declare-fun tp!778278 () Bool)

(declare-fun tp!778281 () Bool)

(assert (=> b!2449616 (= e!1555200 (and tp!778278 tp!778281))))

(declare-fun b!2449618 () Bool)

(declare-fun tp!778279 () Bool)

(declare-fun tp!778280 () Bool)

(assert (=> b!2449618 (= e!1555200 (and tp!778279 tp!778280))))

(declare-fun b!2449615 () Bool)

(assert (=> b!2449615 (= e!1555200 tp_is_empty!11807)))

(assert (= (and b!2448295 ((_ is ElementMatch!7197) (regOne!14906 (reg!7526 (regOne!14907 r!13927))))) b!2449615))

(assert (= (and b!2448295 ((_ is Concat!11833) (regOne!14906 (reg!7526 (regOne!14907 r!13927))))) b!2449616))

(assert (= (and b!2448295 ((_ is Star!7197) (regOne!14906 (reg!7526 (regOne!14907 r!13927))))) b!2449617))

(assert (= (and b!2448295 ((_ is Union!7197) (regOne!14906 (reg!7526 (regOne!14907 r!13927))))) b!2449618))

(declare-fun e!1555202 () Bool)

(assert (=> b!2448295 (= tp!777747 e!1555202)))

(declare-fun b!2449625 () Bool)

(declare-fun tp!778292 () Bool)

(assert (=> b!2449625 (= e!1555202 tp!778292)))

(declare-fun b!2449624 () Bool)

(declare-fun tp!778288 () Bool)

(declare-fun tp!778291 () Bool)

(assert (=> b!2449624 (= e!1555202 (and tp!778288 tp!778291))))

(declare-fun b!2449626 () Bool)

(declare-fun tp!778289 () Bool)

(declare-fun tp!778290 () Bool)

(assert (=> b!2449626 (= e!1555202 (and tp!778289 tp!778290))))

(declare-fun b!2449623 () Bool)

(assert (=> b!2449623 (= e!1555202 tp_is_empty!11807)))

(assert (= (and b!2448295 ((_ is ElementMatch!7197) (regTwo!14906 (reg!7526 (regOne!14907 r!13927))))) b!2449623))

(assert (= (and b!2448295 ((_ is Concat!11833) (regTwo!14906 (reg!7526 (regOne!14907 r!13927))))) b!2449624))

(assert (= (and b!2448295 ((_ is Star!7197) (regTwo!14906 (reg!7526 (regOne!14907 r!13927))))) b!2449625))

(assert (= (and b!2448295 ((_ is Union!7197) (regTwo!14906 (reg!7526 (regOne!14907 r!13927))))) b!2449626))

(declare-fun e!1555204 () Bool)

(assert (=> b!2448236 (= tp!777673 e!1555204)))

(declare-fun b!2449633 () Bool)

(declare-fun tp!778302 () Bool)

(assert (=> b!2449633 (= e!1555204 tp!778302)))

(declare-fun b!2449632 () Bool)

(declare-fun tp!778298 () Bool)

(declare-fun tp!778301 () Bool)

(assert (=> b!2449632 (= e!1555204 (and tp!778298 tp!778301))))

(declare-fun b!2449634 () Bool)

(declare-fun tp!778299 () Bool)

(declare-fun tp!778300 () Bool)

(assert (=> b!2449634 (= e!1555204 (and tp!778299 tp!778300))))

(declare-fun b!2449631 () Bool)

(assert (=> b!2449631 (= e!1555204 tp_is_empty!11807)))

(assert (= (and b!2448236 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14906 (h!33933 l!9164))))) b!2449631))

(assert (= (and b!2448236 ((_ is Concat!11833) (reg!7526 (regTwo!14906 (h!33933 l!9164))))) b!2449632))

(assert (= (and b!2448236 ((_ is Star!7197) (reg!7526 (regTwo!14906 (h!33933 l!9164))))) b!2449633))

(assert (= (and b!2448236 ((_ is Union!7197) (reg!7526 (regTwo!14906 (h!33933 l!9164))))) b!2449634))

(declare-fun e!1555206 () Bool)

(assert (=> b!2448227 (= tp!777659 e!1555206)))

(declare-fun b!2449641 () Bool)

(declare-fun tp!778312 () Bool)

(assert (=> b!2449641 (= e!1555206 tp!778312)))

(declare-fun b!2449640 () Bool)

(declare-fun tp!778308 () Bool)

(declare-fun tp!778311 () Bool)

(assert (=> b!2449640 (= e!1555206 (and tp!778308 tp!778311))))

(declare-fun b!2449642 () Bool)

(declare-fun tp!778309 () Bool)

(declare-fun tp!778310 () Bool)

(assert (=> b!2449642 (= e!1555206 (and tp!778309 tp!778310))))

(declare-fun b!2449639 () Bool)

(assert (=> b!2449639 (= e!1555206 tp_is_empty!11807)))

(assert (= (and b!2448227 ((_ is ElementMatch!7197) (regOne!14906 (reg!7526 (h!33933 l!9164))))) b!2449639))

(assert (= (and b!2448227 ((_ is Concat!11833) (regOne!14906 (reg!7526 (h!33933 l!9164))))) b!2449640))

(assert (= (and b!2448227 ((_ is Star!7197) (regOne!14906 (reg!7526 (h!33933 l!9164))))) b!2449641))

(assert (= (and b!2448227 ((_ is Union!7197) (regOne!14906 (reg!7526 (h!33933 l!9164))))) b!2449642))

(declare-fun e!1555208 () Bool)

(assert (=> b!2448227 (= tp!777662 e!1555208)))

(declare-fun b!2449646 () Bool)

(declare-fun tp!778319 () Bool)

(assert (=> b!2449646 (= e!1555208 tp!778319)))

(declare-fun b!2449645 () Bool)

(declare-fun tp!778315 () Bool)

(declare-fun tp!778318 () Bool)

(assert (=> b!2449645 (= e!1555208 (and tp!778315 tp!778318))))

(declare-fun b!2449647 () Bool)

(declare-fun tp!778316 () Bool)

(declare-fun tp!778317 () Bool)

(assert (=> b!2449647 (= e!1555208 (and tp!778316 tp!778317))))

(declare-fun b!2449644 () Bool)

(assert (=> b!2449644 (= e!1555208 tp_is_empty!11807)))

(assert (= (and b!2448227 ((_ is ElementMatch!7197) (regTwo!14906 (reg!7526 (h!33933 l!9164))))) b!2449644))

(assert (= (and b!2448227 ((_ is Concat!11833) (regTwo!14906 (reg!7526 (h!33933 l!9164))))) b!2449645))

(assert (= (and b!2448227 ((_ is Star!7197) (regTwo!14906 (reg!7526 (h!33933 l!9164))))) b!2449646))

(assert (= (and b!2448227 ((_ is Union!7197) (regTwo!14906 (reg!7526 (h!33933 l!9164))))) b!2449647))

(declare-fun e!1555210 () Bool)

(assert (=> b!2448329 (= tp!777785 e!1555210)))

(declare-fun b!2449654 () Bool)

(declare-fun tp!778329 () Bool)

(assert (=> b!2449654 (= e!1555210 tp!778329)))

(declare-fun b!2449653 () Bool)

(declare-fun tp!778325 () Bool)

(declare-fun tp!778328 () Bool)

(assert (=> b!2449653 (= e!1555210 (and tp!778325 tp!778328))))

(declare-fun b!2449655 () Bool)

(declare-fun tp!778326 () Bool)

(declare-fun tp!778327 () Bool)

(assert (=> b!2449655 (= e!1555210 (and tp!778326 tp!778327))))

(declare-fun b!2449652 () Bool)

(assert (=> b!2449652 (= e!1555210 tp_is_empty!11807)))

(assert (= (and b!2448329 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14906 (reg!7526 r!13927))))) b!2449652))

(assert (= (and b!2448329 ((_ is Concat!11833) (regOne!14907 (regTwo!14906 (reg!7526 r!13927))))) b!2449653))

(assert (= (and b!2448329 ((_ is Star!7197) (regOne!14907 (regTwo!14906 (reg!7526 r!13927))))) b!2449654))

(assert (= (and b!2448329 ((_ is Union!7197) (regOne!14907 (regTwo!14906 (reg!7526 r!13927))))) b!2449655))

(declare-fun e!1555212 () Bool)

(assert (=> b!2448329 (= tp!777786 e!1555212)))

(declare-fun b!2449662 () Bool)

(declare-fun tp!778339 () Bool)

(assert (=> b!2449662 (= e!1555212 tp!778339)))

(declare-fun b!2449661 () Bool)

(declare-fun tp!778335 () Bool)

(declare-fun tp!778338 () Bool)

(assert (=> b!2449661 (= e!1555212 (and tp!778335 tp!778338))))

(declare-fun b!2449663 () Bool)

(declare-fun tp!778336 () Bool)

(declare-fun tp!778337 () Bool)

(assert (=> b!2449663 (= e!1555212 (and tp!778336 tp!778337))))

(declare-fun b!2449660 () Bool)

(assert (=> b!2449660 (= e!1555212 tp_is_empty!11807)))

(assert (= (and b!2448329 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14906 (reg!7526 r!13927))))) b!2449660))

(assert (= (and b!2448329 ((_ is Concat!11833) (regTwo!14907 (regTwo!14906 (reg!7526 r!13927))))) b!2449661))

(assert (= (and b!2448329 ((_ is Star!7197) (regTwo!14907 (regTwo!14906 (reg!7526 r!13927))))) b!2449662))

(assert (= (and b!2448329 ((_ is Union!7197) (regTwo!14907 (regTwo!14906 (reg!7526 r!13927))))) b!2449663))

(declare-fun e!1555214 () Bool)

(assert (=> b!2448320 (= tp!777778 e!1555214)))

(declare-fun b!2449670 () Bool)

(declare-fun tp!778349 () Bool)

(assert (=> b!2449670 (= e!1555214 tp!778349)))

(declare-fun b!2449669 () Bool)

(declare-fun tp!778345 () Bool)

(declare-fun tp!778348 () Bool)

(assert (=> b!2449669 (= e!1555214 (and tp!778345 tp!778348))))

(declare-fun b!2449671 () Bool)

(declare-fun tp!778346 () Bool)

(declare-fun tp!778347 () Bool)

(assert (=> b!2449671 (= e!1555214 (and tp!778346 tp!778347))))

(declare-fun b!2449668 () Bool)

(assert (=> b!2449668 (= e!1555214 tp_is_empty!11807)))

(assert (= (and b!2448320 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14906 (regTwo!14906 r!13927))))) b!2449668))

(assert (= (and b!2448320 ((_ is Concat!11833) (reg!7526 (regTwo!14906 (regTwo!14906 r!13927))))) b!2449669))

(assert (= (and b!2448320 ((_ is Star!7197) (reg!7526 (regTwo!14906 (regTwo!14906 r!13927))))) b!2449670))

(assert (= (and b!2448320 ((_ is Union!7197) (reg!7526 (regTwo!14906 (regTwo!14906 r!13927))))) b!2449671))

(declare-fun e!1555216 () Bool)

(assert (=> b!2448311 (= tp!777764 e!1555216)))

(declare-fun b!2449678 () Bool)

(declare-fun tp!778359 () Bool)

(assert (=> b!2449678 (= e!1555216 tp!778359)))

(declare-fun b!2449677 () Bool)

(declare-fun tp!778355 () Bool)

(declare-fun tp!778358 () Bool)

(assert (=> b!2449677 (= e!1555216 (and tp!778355 tp!778358))))

(declare-fun b!2449679 () Bool)

(declare-fun tp!778356 () Bool)

(declare-fun tp!778357 () Bool)

(assert (=> b!2449679 (= e!1555216 (and tp!778356 tp!778357))))

(declare-fun b!2449676 () Bool)

(assert (=> b!2449676 (= e!1555216 tp_is_empty!11807)))

(assert (= (and b!2448311 ((_ is ElementMatch!7197) (regOne!14906 (reg!7526 (reg!7526 r!13927))))) b!2449676))

(assert (= (and b!2448311 ((_ is Concat!11833) (regOne!14906 (reg!7526 (reg!7526 r!13927))))) b!2449677))

(assert (= (and b!2448311 ((_ is Star!7197) (regOne!14906 (reg!7526 (reg!7526 r!13927))))) b!2449678))

(assert (= (and b!2448311 ((_ is Union!7197) (regOne!14906 (reg!7526 (reg!7526 r!13927))))) b!2449679))

(declare-fun e!1555218 () Bool)

(assert (=> b!2448311 (= tp!777767 e!1555218)))

(declare-fun b!2449686 () Bool)

(declare-fun tp!778369 () Bool)

(assert (=> b!2449686 (= e!1555218 tp!778369)))

(declare-fun b!2449685 () Bool)

(declare-fun tp!778365 () Bool)

(declare-fun tp!778368 () Bool)

(assert (=> b!2449685 (= e!1555218 (and tp!778365 tp!778368))))

(declare-fun b!2449687 () Bool)

(declare-fun tp!778366 () Bool)

(declare-fun tp!778367 () Bool)

(assert (=> b!2449687 (= e!1555218 (and tp!778366 tp!778367))))

(declare-fun b!2449684 () Bool)

(assert (=> b!2449684 (= e!1555218 tp_is_empty!11807)))

(assert (= (and b!2448311 ((_ is ElementMatch!7197) (regTwo!14906 (reg!7526 (reg!7526 r!13927))))) b!2449684))

(assert (= (and b!2448311 ((_ is Concat!11833) (regTwo!14906 (reg!7526 (reg!7526 r!13927))))) b!2449685))

(assert (= (and b!2448311 ((_ is Star!7197) (regTwo!14906 (reg!7526 (reg!7526 r!13927))))) b!2449686))

(assert (= (and b!2448311 ((_ is Union!7197) (regTwo!14906 (reg!7526 (reg!7526 r!13927))))) b!2449687))

(declare-fun e!1555220 () Bool)

(assert (=> b!2448261 (= tp!777700 e!1555220)))

(declare-fun b!2449694 () Bool)

(declare-fun tp!778379 () Bool)

(assert (=> b!2449694 (= e!1555220 tp!778379)))

(declare-fun b!2449693 () Bool)

(declare-fun tp!778375 () Bool)

(declare-fun tp!778378 () Bool)

(assert (=> b!2449693 (= e!1555220 (and tp!778375 tp!778378))))

(declare-fun b!2449695 () Bool)

(declare-fun tp!778376 () Bool)

(declare-fun tp!778377 () Bool)

(assert (=> b!2449695 (= e!1555220 (and tp!778376 tp!778377))))

(declare-fun b!2449692 () Bool)

(assert (=> b!2449692 (= e!1555220 tp_is_empty!11807)))

(assert (= (and b!2448261 ((_ is ElementMatch!7197) (regOne!14907 (reg!7526 (regTwo!14906 r!13927))))) b!2449692))

(assert (= (and b!2448261 ((_ is Concat!11833) (regOne!14907 (reg!7526 (regTwo!14906 r!13927))))) b!2449693))

(assert (= (and b!2448261 ((_ is Star!7197) (regOne!14907 (reg!7526 (regTwo!14906 r!13927))))) b!2449694))

(assert (= (and b!2448261 ((_ is Union!7197) (regOne!14907 (reg!7526 (regTwo!14906 r!13927))))) b!2449695))

(declare-fun e!1555222 () Bool)

(assert (=> b!2448261 (= tp!777701 e!1555222)))

(declare-fun b!2449702 () Bool)

(declare-fun tp!778389 () Bool)

(assert (=> b!2449702 (= e!1555222 tp!778389)))

(declare-fun b!2449701 () Bool)

(declare-fun tp!778385 () Bool)

(declare-fun tp!778388 () Bool)

(assert (=> b!2449701 (= e!1555222 (and tp!778385 tp!778388))))

(declare-fun b!2449703 () Bool)

(declare-fun tp!778386 () Bool)

(declare-fun tp!778387 () Bool)

(assert (=> b!2449703 (= e!1555222 (and tp!778386 tp!778387))))

(declare-fun b!2449700 () Bool)

(assert (=> b!2449700 (= e!1555222 tp_is_empty!11807)))

(assert (= (and b!2448261 ((_ is ElementMatch!7197) (regTwo!14907 (reg!7526 (regTwo!14906 r!13927))))) b!2449700))

(assert (= (and b!2448261 ((_ is Concat!11833) (regTwo!14907 (reg!7526 (regTwo!14906 r!13927))))) b!2449701))

(assert (= (and b!2448261 ((_ is Star!7197) (regTwo!14907 (reg!7526 (regTwo!14906 r!13927))))) b!2449702))

(assert (= (and b!2448261 ((_ is Union!7197) (regTwo!14907 (reg!7526 (regTwo!14906 r!13927))))) b!2449703))

(declare-fun e!1555224 () Bool)

(assert (=> b!2448252 (= tp!777693 e!1555224)))

(declare-fun b!2449710 () Bool)

(declare-fun tp!778399 () Bool)

(assert (=> b!2449710 (= e!1555224 tp!778399)))

(declare-fun b!2449709 () Bool)

(declare-fun tp!778395 () Bool)

(declare-fun tp!778398 () Bool)

(assert (=> b!2449709 (= e!1555224 (and tp!778395 tp!778398))))

(declare-fun b!2449711 () Bool)

(declare-fun tp!778396 () Bool)

(declare-fun tp!778397 () Bool)

(assert (=> b!2449711 (= e!1555224 (and tp!778396 tp!778397))))

(declare-fun b!2449708 () Bool)

(assert (=> b!2449708 (= e!1555224 tp_is_empty!11807)))

(assert (= (and b!2448252 ((_ is ElementMatch!7197) (reg!7526 (regOne!14907 (reg!7526 r!13927))))) b!2449708))

(assert (= (and b!2448252 ((_ is Concat!11833) (reg!7526 (regOne!14907 (reg!7526 r!13927))))) b!2449709))

(assert (= (and b!2448252 ((_ is Star!7197) (reg!7526 (regOne!14907 (reg!7526 r!13927))))) b!2449710))

(assert (= (and b!2448252 ((_ is Union!7197) (reg!7526 (regOne!14907 (reg!7526 r!13927))))) b!2449711))

(declare-fun e!1555226 () Bool)

(assert (=> b!2448243 (= tp!777679 e!1555226)))

(declare-fun b!2449718 () Bool)

(declare-fun tp!778409 () Bool)

(assert (=> b!2449718 (= e!1555226 tp!778409)))

(declare-fun b!2449717 () Bool)

(declare-fun tp!778405 () Bool)

(declare-fun tp!778408 () Bool)

(assert (=> b!2449717 (= e!1555226 (and tp!778405 tp!778408))))

(declare-fun b!2449719 () Bool)

(declare-fun tp!778406 () Bool)

(declare-fun tp!778407 () Bool)

(assert (=> b!2449719 (= e!1555226 (and tp!778406 tp!778407))))

(declare-fun b!2449716 () Bool)

(assert (=> b!2449716 (= e!1555226 tp_is_empty!11807)))

(assert (= (and b!2448243 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14906 (regOne!14907 r!13927))))) b!2449716))

(assert (= (and b!2448243 ((_ is Concat!11833) (regOne!14906 (regOne!14906 (regOne!14907 r!13927))))) b!2449717))

(assert (= (and b!2448243 ((_ is Star!7197) (regOne!14906 (regOne!14906 (regOne!14907 r!13927))))) b!2449718))

(assert (= (and b!2448243 ((_ is Union!7197) (regOne!14906 (regOne!14906 (regOne!14907 r!13927))))) b!2449719))

(declare-fun e!1555228 () Bool)

(assert (=> b!2448243 (= tp!777682 e!1555228)))

(declare-fun b!2449726 () Bool)

(declare-fun tp!778419 () Bool)

(assert (=> b!2449726 (= e!1555228 tp!778419)))

(declare-fun b!2449725 () Bool)

(declare-fun tp!778415 () Bool)

(declare-fun tp!778418 () Bool)

(assert (=> b!2449725 (= e!1555228 (and tp!778415 tp!778418))))

(declare-fun b!2449727 () Bool)

(declare-fun tp!778416 () Bool)

(declare-fun tp!778417 () Bool)

(assert (=> b!2449727 (= e!1555228 (and tp!778416 tp!778417))))

(declare-fun b!2449724 () Bool)

(assert (=> b!2449724 (= e!1555228 tp_is_empty!11807)))

(assert (= (and b!2448243 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14906 (regOne!14907 r!13927))))) b!2449724))

(assert (= (and b!2448243 ((_ is Concat!11833) (regTwo!14906 (regOne!14906 (regOne!14907 r!13927))))) b!2449725))

(assert (= (and b!2448243 ((_ is Star!7197) (regTwo!14906 (regOne!14906 (regOne!14907 r!13927))))) b!2449726))

(assert (= (and b!2448243 ((_ is Union!7197) (regTwo!14906 (regOne!14906 (regOne!14907 r!13927))))) b!2449727))

(declare-fun e!1555230 () Bool)

(assert (=> b!2448280 (= tp!777728 e!1555230)))

(declare-fun b!2449734 () Bool)

(declare-fun tp!778429 () Bool)

(assert (=> b!2449734 (= e!1555230 tp!778429)))

(declare-fun b!2449733 () Bool)

(declare-fun tp!778425 () Bool)

(declare-fun tp!778428 () Bool)

(assert (=> b!2449733 (= e!1555230 (and tp!778425 tp!778428))))

(declare-fun b!2449735 () Bool)

(declare-fun tp!778426 () Bool)

(declare-fun tp!778427 () Bool)

(assert (=> b!2449735 (= e!1555230 (and tp!778426 tp!778427))))

(declare-fun b!2449732 () Bool)

(assert (=> b!2449732 (= e!1555230 tp_is_empty!11807)))

(assert (= (and b!2448280 ((_ is ElementMatch!7197) (reg!7526 (regOne!14907 (regTwo!14907 r!13927))))) b!2449732))

(assert (= (and b!2448280 ((_ is Concat!11833) (reg!7526 (regOne!14907 (regTwo!14907 r!13927))))) b!2449733))

(assert (= (and b!2448280 ((_ is Star!7197) (reg!7526 (regOne!14907 (regTwo!14907 r!13927))))) b!2449734))

(assert (= (and b!2448280 ((_ is Union!7197) (reg!7526 (regOne!14907 (regTwo!14907 r!13927))))) b!2449735))

(declare-fun e!1555233 () Bool)

(assert (=> b!2448271 (= tp!777714 e!1555233)))

(declare-fun b!2449743 () Bool)

(declare-fun tp!778440 () Bool)

(assert (=> b!2449743 (= e!1555233 tp!778440)))

(declare-fun b!2449742 () Bool)

(declare-fun tp!778436 () Bool)

(declare-fun tp!778439 () Bool)

(assert (=> b!2449742 (= e!1555233 (and tp!778436 tp!778439))))

(declare-fun b!2449744 () Bool)

(declare-fun tp!778437 () Bool)

(declare-fun tp!778438 () Bool)

(assert (=> b!2449744 (= e!1555233 (and tp!778437 tp!778438))))

(declare-fun b!2449741 () Bool)

(assert (=> b!2449741 (= e!1555233 tp_is_empty!11807)))

(assert (= (and b!2448271 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14906 (regOne!14906 r!13927))))) b!2449741))

(assert (= (and b!2448271 ((_ is Concat!11833) (regOne!14906 (regOne!14906 (regOne!14906 r!13927))))) b!2449742))

(assert (= (and b!2448271 ((_ is Star!7197) (regOne!14906 (regOne!14906 (regOne!14906 r!13927))))) b!2449743))

(assert (= (and b!2448271 ((_ is Union!7197) (regOne!14906 (regOne!14906 (regOne!14906 r!13927))))) b!2449744))

(declare-fun e!1555235 () Bool)

(assert (=> b!2448271 (= tp!777717 e!1555235)))

(declare-fun b!2449751 () Bool)

(declare-fun tp!778450 () Bool)

(assert (=> b!2449751 (= e!1555235 tp!778450)))

(declare-fun b!2449750 () Bool)

(declare-fun tp!778446 () Bool)

(declare-fun tp!778449 () Bool)

(assert (=> b!2449750 (= e!1555235 (and tp!778446 tp!778449))))

(declare-fun b!2449752 () Bool)

(declare-fun tp!778447 () Bool)

(declare-fun tp!778448 () Bool)

(assert (=> b!2449752 (= e!1555235 (and tp!778447 tp!778448))))

(declare-fun b!2449749 () Bool)

(assert (=> b!2449749 (= e!1555235 tp_is_empty!11807)))

(assert (= (and b!2448271 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14906 (regOne!14906 r!13927))))) b!2449749))

(assert (= (and b!2448271 ((_ is Concat!11833) (regTwo!14906 (regOne!14906 (regOne!14906 r!13927))))) b!2449750))

(assert (= (and b!2448271 ((_ is Star!7197) (regTwo!14906 (regOne!14906 (regOne!14906 r!13927))))) b!2449751))

(assert (= (and b!2448271 ((_ is Union!7197) (regTwo!14906 (regOne!14906 (regOne!14906 r!13927))))) b!2449752))

(declare-fun e!1555237 () Bool)

(assert (=> b!2448332 (= tp!777793 e!1555237)))

(declare-fun b!2449759 () Bool)

(declare-fun tp!778460 () Bool)

(assert (=> b!2449759 (= e!1555237 tp!778460)))

(declare-fun b!2449758 () Bool)

(declare-fun tp!778456 () Bool)

(declare-fun tp!778459 () Bool)

(assert (=> b!2449758 (= e!1555237 (and tp!778456 tp!778459))))

(declare-fun b!2449760 () Bool)

(declare-fun tp!778457 () Bool)

(declare-fun tp!778458 () Bool)

(assert (=> b!2449760 (= e!1555237 (and tp!778457 tp!778458))))

(declare-fun b!2449757 () Bool)

(assert (=> b!2449757 (= e!1555237 tp_is_empty!11807)))

(assert (= (and b!2448332 ((_ is ElementMatch!7197) (reg!7526 (regOne!14907 (h!33933 l!9164))))) b!2449757))

(assert (= (and b!2448332 ((_ is Concat!11833) (reg!7526 (regOne!14907 (h!33933 l!9164))))) b!2449758))

(assert (= (and b!2448332 ((_ is Star!7197) (reg!7526 (regOne!14907 (h!33933 l!9164))))) b!2449759))

(assert (= (and b!2448332 ((_ is Union!7197) (reg!7526 (regOne!14907 (h!33933 l!9164))))) b!2449760))

(declare-fun e!1555239 () Bool)

(assert (=> b!2448323 (= tp!777779 e!1555239)))

(declare-fun b!2449767 () Bool)

(declare-fun tp!778470 () Bool)

(assert (=> b!2449767 (= e!1555239 tp!778470)))

(declare-fun b!2449766 () Bool)

(declare-fun tp!778466 () Bool)

(declare-fun tp!778469 () Bool)

(assert (=> b!2449766 (= e!1555239 (and tp!778466 tp!778469))))

(declare-fun b!2449768 () Bool)

(declare-fun tp!778467 () Bool)

(declare-fun tp!778468 () Bool)

(assert (=> b!2449768 (= e!1555239 (and tp!778467 tp!778468))))

(declare-fun b!2449765 () Bool)

(assert (=> b!2449765 (= e!1555239 tp_is_empty!11807)))

(assert (= (and b!2448323 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14906 (reg!7526 r!13927))))) b!2449765))

(assert (= (and b!2448323 ((_ is Concat!11833) (regOne!14906 (regOne!14906 (reg!7526 r!13927))))) b!2449766))

(assert (= (and b!2448323 ((_ is Star!7197) (regOne!14906 (regOne!14906 (reg!7526 r!13927))))) b!2449767))

(assert (= (and b!2448323 ((_ is Union!7197) (regOne!14906 (regOne!14906 (reg!7526 r!13927))))) b!2449768))

(declare-fun e!1555241 () Bool)

(assert (=> b!2448323 (= tp!777782 e!1555241)))

(declare-fun b!2449775 () Bool)

(declare-fun tp!778480 () Bool)

(assert (=> b!2449775 (= e!1555241 tp!778480)))

(declare-fun b!2449773 () Bool)

(declare-fun tp!778472 () Bool)

(declare-fun tp!778478 () Bool)

(assert (=> b!2449773 (= e!1555241 (and tp!778472 tp!778478))))

(declare-fun b!2449776 () Bool)

(declare-fun tp!778473 () Bool)

(declare-fun tp!778476 () Bool)

(assert (=> b!2449776 (= e!1555241 (and tp!778473 tp!778476))))

(declare-fun b!2449770 () Bool)

(assert (=> b!2449770 (= e!1555241 tp_is_empty!11807)))

(assert (= (and b!2448323 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14906 (reg!7526 r!13927))))) b!2449770))

(assert (= (and b!2448323 ((_ is Concat!11833) (regTwo!14906 (regOne!14906 (reg!7526 r!13927))))) b!2449773))

(assert (= (and b!2448323 ((_ is Star!7197) (regTwo!14906 (regOne!14906 (reg!7526 r!13927))))) b!2449775))

(assert (= (and b!2448323 ((_ is Union!7197) (regTwo!14906 (regOne!14906 (reg!7526 r!13927))))) b!2449776))

(declare-fun e!1555243 () Bool)

(assert (=> b!2448273 (= tp!777715 e!1555243)))

(declare-fun b!2449781 () Bool)

(declare-fun tp!778490 () Bool)

(assert (=> b!2449781 (= e!1555243 tp!778490)))

(declare-fun b!2449779 () Bool)

(declare-fun tp!778482 () Bool)

(declare-fun tp!778488 () Bool)

(assert (=> b!2449779 (= e!1555243 (and tp!778482 tp!778488))))

(declare-fun b!2449783 () Bool)

(declare-fun tp!778483 () Bool)

(declare-fun tp!778486 () Bool)

(assert (=> b!2449783 (= e!1555243 (and tp!778483 tp!778486))))

(declare-fun b!2449778 () Bool)

(assert (=> b!2449778 (= e!1555243 tp_is_empty!11807)))

(assert (= (and b!2448273 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14906 (regOne!14906 r!13927))))) b!2449778))

(assert (= (and b!2448273 ((_ is Concat!11833) (regOne!14907 (regOne!14906 (regOne!14906 r!13927))))) b!2449779))

(assert (= (and b!2448273 ((_ is Star!7197) (regOne!14907 (regOne!14906 (regOne!14906 r!13927))))) b!2449781))

(assert (= (and b!2448273 ((_ is Union!7197) (regOne!14907 (regOne!14906 (regOne!14906 r!13927))))) b!2449783))

(declare-fun e!1555245 () Bool)

(assert (=> b!2448273 (= tp!777716 e!1555245)))

(declare-fun b!2449789 () Bool)

(declare-fun tp!778499 () Bool)

(assert (=> b!2449789 (= e!1555245 tp!778499)))

(declare-fun b!2449787 () Bool)

(declare-fun tp!778491 () Bool)

(declare-fun tp!778497 () Bool)

(assert (=> b!2449787 (= e!1555245 (and tp!778491 tp!778497))))

(declare-fun b!2449791 () Bool)

(declare-fun tp!778493 () Bool)

(declare-fun tp!778495 () Bool)

(assert (=> b!2449791 (= e!1555245 (and tp!778493 tp!778495))))

(declare-fun b!2449785 () Bool)

(assert (=> b!2449785 (= e!1555245 tp_is_empty!11807)))

(assert (= (and b!2448273 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14906 (regOne!14906 r!13927))))) b!2449785))

(assert (= (and b!2448273 ((_ is Concat!11833) (regTwo!14907 (regOne!14906 (regOne!14906 r!13927))))) b!2449787))

(assert (= (and b!2448273 ((_ is Star!7197) (regTwo!14907 (regOne!14906 (regOne!14906 r!13927))))) b!2449789))

(assert (= (and b!2448273 ((_ is Union!7197) (regTwo!14907 (regOne!14906 (regOne!14906 r!13927))))) b!2449791))

(declare-fun e!1555247 () Bool)

(assert (=> b!2448296 (= tp!777748 e!1555247)))

(declare-fun b!2449798 () Bool)

(declare-fun tp!778510 () Bool)

(assert (=> b!2449798 (= e!1555247 tp!778510)))

(declare-fun b!2449796 () Bool)

(declare-fun tp!778501 () Bool)

(declare-fun tp!778508 () Bool)

(assert (=> b!2449796 (= e!1555247 (and tp!778501 tp!778508))))

(declare-fun b!2449800 () Bool)

(declare-fun tp!778503 () Bool)

(declare-fun tp!778506 () Bool)

(assert (=> b!2449800 (= e!1555247 (and tp!778503 tp!778506))))

(declare-fun b!2449794 () Bool)

(assert (=> b!2449794 (= e!1555247 tp_is_empty!11807)))

(assert (= (and b!2448296 ((_ is ElementMatch!7197) (reg!7526 (reg!7526 (regOne!14907 r!13927))))) b!2449794))

(assert (= (and b!2448296 ((_ is Concat!11833) (reg!7526 (reg!7526 (regOne!14907 r!13927))))) b!2449796))

(assert (= (and b!2448296 ((_ is Star!7197) (reg!7526 (reg!7526 (regOne!14907 r!13927))))) b!2449798))

(assert (= (and b!2448296 ((_ is Union!7197) (reg!7526 (reg!7526 (regOne!14907 r!13927))))) b!2449800))

(declare-fun e!1555249 () Bool)

(assert (=> b!2448237 (= tp!777670 e!1555249)))

(declare-fun b!2449806 () Bool)

(declare-fun tp!778520 () Bool)

(assert (=> b!2449806 (= e!1555249 tp!778520)))

(declare-fun b!2449804 () Bool)

(declare-fun tp!778512 () Bool)

(declare-fun tp!778518 () Bool)

(assert (=> b!2449804 (= e!1555249 (and tp!778512 tp!778518))))

(declare-fun b!2449808 () Bool)

(declare-fun tp!778513 () Bool)

(declare-fun tp!778516 () Bool)

(assert (=> b!2449808 (= e!1555249 (and tp!778513 tp!778516))))

(declare-fun b!2449802 () Bool)

(assert (=> b!2449802 (= e!1555249 tp_is_empty!11807)))

(assert (= (and b!2448237 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14906 (h!33933 l!9164))))) b!2449802))

(assert (= (and b!2448237 ((_ is Concat!11833) (regOne!14907 (regTwo!14906 (h!33933 l!9164))))) b!2449804))

(assert (= (and b!2448237 ((_ is Star!7197) (regOne!14907 (regTwo!14906 (h!33933 l!9164))))) b!2449806))

(assert (= (and b!2448237 ((_ is Union!7197) (regOne!14907 (regTwo!14906 (h!33933 l!9164))))) b!2449808))

(declare-fun e!1555251 () Bool)

(assert (=> b!2448237 (= tp!777671 e!1555251)))

(declare-fun b!2449815 () Bool)

(declare-fun tp!778530 () Bool)

(assert (=> b!2449815 (= e!1555251 tp!778530)))

(declare-fun b!2449814 () Bool)

(declare-fun tp!778522 () Bool)

(declare-fun tp!778529 () Bool)

(assert (=> b!2449814 (= e!1555251 (and tp!778522 tp!778529))))

(declare-fun b!2449816 () Bool)

(declare-fun tp!778523 () Bool)

(declare-fun tp!778526 () Bool)

(assert (=> b!2449816 (= e!1555251 (and tp!778523 tp!778526))))

(declare-fun b!2449812 () Bool)

(assert (=> b!2449812 (= e!1555251 tp_is_empty!11807)))

(assert (= (and b!2448237 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14906 (h!33933 l!9164))))) b!2449812))

(assert (= (and b!2448237 ((_ is Concat!11833) (regTwo!14907 (regTwo!14906 (h!33933 l!9164))))) b!2449814))

(assert (= (and b!2448237 ((_ is Star!7197) (regTwo!14907 (regTwo!14906 (h!33933 l!9164))))) b!2449815))

(assert (= (and b!2448237 ((_ is Union!7197) (regTwo!14907 (regTwo!14906 (h!33933 l!9164))))) b!2449816))

(declare-fun e!1555253 () Bool)

(assert (=> b!2448287 (= tp!777734 e!1555253)))

(declare-fun b!2449821 () Bool)

(declare-fun tp!778540 () Bool)

(assert (=> b!2449821 (= e!1555253 tp!778540)))

(declare-fun b!2449819 () Bool)

(declare-fun tp!778532 () Bool)

(declare-fun tp!778538 () Bool)

(assert (=> b!2449819 (= e!1555253 (and tp!778532 tp!778538))))

(declare-fun b!2449823 () Bool)

(declare-fun tp!778534 () Bool)

(declare-fun tp!778536 () Bool)

(assert (=> b!2449823 (= e!1555253 (and tp!778534 tp!778536))))

(declare-fun b!2449818 () Bool)

(assert (=> b!2449818 (= e!1555253 tp_is_empty!11807)))

(assert (= (and b!2448287 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14907 (regOne!14906 r!13927))))) b!2449818))

(assert (= (and b!2448287 ((_ is Concat!11833) (regOne!14906 (regOne!14907 (regOne!14906 r!13927))))) b!2449819))

(assert (= (and b!2448287 ((_ is Star!7197) (regOne!14906 (regOne!14907 (regOne!14906 r!13927))))) b!2449821))

(assert (= (and b!2448287 ((_ is Union!7197) (regOne!14906 (regOne!14907 (regOne!14906 r!13927))))) b!2449823))

(declare-fun e!1555254 () Bool)

(assert (=> b!2448287 (= tp!777737 e!1555254)))

(declare-fun b!2449827 () Bool)

(declare-fun tp!778545 () Bool)

(assert (=> b!2449827 (= e!1555254 tp!778545)))

(declare-fun b!2449826 () Bool)

(declare-fun tp!778541 () Bool)

(declare-fun tp!778544 () Bool)

(assert (=> b!2449826 (= e!1555254 (and tp!778541 tp!778544))))

(declare-fun b!2449828 () Bool)

(declare-fun tp!778542 () Bool)

(declare-fun tp!778543 () Bool)

(assert (=> b!2449828 (= e!1555254 (and tp!778542 tp!778543))))

(declare-fun b!2449825 () Bool)

(assert (=> b!2449825 (= e!1555254 tp_is_empty!11807)))

(assert (= (and b!2448287 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14907 (regOne!14906 r!13927))))) b!2449825))

(assert (= (and b!2448287 ((_ is Concat!11833) (regTwo!14906 (regOne!14907 (regOne!14906 r!13927))))) b!2449826))

(assert (= (and b!2448287 ((_ is Star!7197) (regTwo!14906 (regOne!14907 (regOne!14906 r!13927))))) b!2449827))

(assert (= (and b!2448287 ((_ is Union!7197) (regTwo!14906 (regOne!14907 (regOne!14906 r!13927))))) b!2449828))

(declare-fun e!1555256 () Bool)

(assert (=> b!2448228 (= tp!777663 e!1555256)))

(declare-fun b!2449835 () Bool)

(declare-fun tp!778557 () Bool)

(assert (=> b!2449835 (= e!1555256 tp!778557)))

(declare-fun b!2449834 () Bool)

(declare-fun tp!778551 () Bool)

(declare-fun tp!778555 () Bool)

(assert (=> b!2449834 (= e!1555256 (and tp!778551 tp!778555))))

(declare-fun b!2449837 () Bool)

(declare-fun tp!778552 () Bool)

(declare-fun tp!778554 () Bool)

(assert (=> b!2449837 (= e!1555256 (and tp!778552 tp!778554))))

(declare-fun b!2449833 () Bool)

(assert (=> b!2449833 (= e!1555256 tp_is_empty!11807)))

(assert (= (and b!2448228 ((_ is ElementMatch!7197) (reg!7526 (reg!7526 (h!33933 l!9164))))) b!2449833))

(assert (= (and b!2448228 ((_ is Concat!11833) (reg!7526 (reg!7526 (h!33933 l!9164))))) b!2449834))

(assert (= (and b!2448228 ((_ is Star!7197) (reg!7526 (reg!7526 (h!33933 l!9164))))) b!2449835))

(assert (= (and b!2448228 ((_ is Union!7197) (reg!7526 (reg!7526 (h!33933 l!9164))))) b!2449837))

(declare-fun e!1555259 () Bool)

(assert (=> b!2448289 (= tp!777735 e!1555259)))

(declare-fun b!2449843 () Bool)

(declare-fun tp!778567 () Bool)

(assert (=> b!2449843 (= e!1555259 tp!778567)))

(declare-fun b!2449842 () Bool)

(declare-fun tp!778561 () Bool)

(declare-fun tp!778565 () Bool)

(assert (=> b!2449842 (= e!1555259 (and tp!778561 tp!778565))))

(declare-fun b!2449844 () Bool)

(declare-fun tp!778563 () Bool)

(declare-fun tp!778564 () Bool)

(assert (=> b!2449844 (= e!1555259 (and tp!778563 tp!778564))))

(declare-fun b!2449841 () Bool)

(assert (=> b!2449841 (= e!1555259 tp_is_empty!11807)))

(assert (= (and b!2448289 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14907 (regOne!14906 r!13927))))) b!2449841))

(assert (= (and b!2448289 ((_ is Concat!11833) (regOne!14907 (regOne!14907 (regOne!14906 r!13927))))) b!2449842))

(assert (= (and b!2448289 ((_ is Star!7197) (regOne!14907 (regOne!14907 (regOne!14906 r!13927))))) b!2449843))

(assert (= (and b!2448289 ((_ is Union!7197) (regOne!14907 (regOne!14907 (regOne!14906 r!13927))))) b!2449844))

(declare-fun e!1555260 () Bool)

(assert (=> b!2448289 (= tp!777736 e!1555260)))

(declare-fun b!2449851 () Bool)

(declare-fun tp!778575 () Bool)

(assert (=> b!2449851 (= e!1555260 tp!778575)))

(declare-fun b!2449850 () Bool)

(declare-fun tp!778571 () Bool)

(declare-fun tp!778574 () Bool)

(assert (=> b!2449850 (= e!1555260 (and tp!778571 tp!778574))))

(declare-fun b!2449852 () Bool)

(declare-fun tp!778572 () Bool)

(declare-fun tp!778573 () Bool)

(assert (=> b!2449852 (= e!1555260 (and tp!778572 tp!778573))))

(declare-fun b!2449849 () Bool)

(assert (=> b!2449849 (= e!1555260 tp_is_empty!11807)))

(assert (= (and b!2448289 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14907 (regOne!14906 r!13927))))) b!2449849))

(assert (= (and b!2448289 ((_ is Concat!11833) (regTwo!14907 (regOne!14907 (regOne!14906 r!13927))))) b!2449850))

(assert (= (and b!2448289 ((_ is Star!7197) (regTwo!14907 (regOne!14907 (regOne!14906 r!13927))))) b!2449851))

(assert (= (and b!2448289 ((_ is Union!7197) (regTwo!14907 (regOne!14907 (regOne!14906 r!13927))))) b!2449852))

(declare-fun e!1555262 () Bool)

(assert (=> b!2448248 (= tp!777688 e!1555262)))

(declare-fun b!2449859 () Bool)

(declare-fun tp!778585 () Bool)

(assert (=> b!2449859 (= e!1555262 tp!778585)))

(declare-fun b!2449858 () Bool)

(declare-fun tp!778581 () Bool)

(declare-fun tp!778584 () Bool)

(assert (=> b!2449858 (= e!1555262 (and tp!778581 tp!778584))))

(declare-fun b!2449860 () Bool)

(declare-fun tp!778582 () Bool)

(declare-fun tp!778583 () Bool)

(assert (=> b!2449860 (= e!1555262 (and tp!778582 tp!778583))))

(declare-fun b!2449857 () Bool)

(assert (=> b!2449857 (= e!1555262 tp_is_empty!11807)))

(assert (= (and b!2448248 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14906 (regOne!14907 r!13927))))) b!2449857))

(assert (= (and b!2448248 ((_ is Concat!11833) (reg!7526 (regTwo!14906 (regOne!14907 r!13927))))) b!2449858))

(assert (= (and b!2448248 ((_ is Star!7197) (reg!7526 (regTwo!14906 (regOne!14907 r!13927))))) b!2449859))

(assert (= (and b!2448248 ((_ is Union!7197) (reg!7526 (regTwo!14906 (regOne!14907 r!13927))))) b!2449860))

(declare-fun e!1555264 () Bool)

(assert (=> b!2448239 (= tp!777674 e!1555264)))

(declare-fun b!2449867 () Bool)

(declare-fun tp!778595 () Bool)

(assert (=> b!2449867 (= e!1555264 tp!778595)))

(declare-fun b!2449866 () Bool)

(declare-fun tp!778591 () Bool)

(declare-fun tp!778594 () Bool)

(assert (=> b!2449866 (= e!1555264 (and tp!778591 tp!778594))))

(declare-fun b!2449868 () Bool)

(declare-fun tp!778592 () Bool)

(declare-fun tp!778593 () Bool)

(assert (=> b!2449868 (= e!1555264 (and tp!778592 tp!778593))))

(declare-fun b!2449865 () Bool)

(assert (=> b!2449865 (= e!1555264 tp_is_empty!11807)))

(assert (= (and b!2448239 ((_ is ElementMatch!7197) (regOne!14906 (reg!7526 (regOne!14906 r!13927))))) b!2449865))

(assert (= (and b!2448239 ((_ is Concat!11833) (regOne!14906 (reg!7526 (regOne!14906 r!13927))))) b!2449866))

(assert (= (and b!2448239 ((_ is Star!7197) (regOne!14906 (reg!7526 (regOne!14906 r!13927))))) b!2449867))

(assert (= (and b!2448239 ((_ is Union!7197) (regOne!14906 (reg!7526 (regOne!14906 r!13927))))) b!2449868))

(declare-fun e!1555266 () Bool)

(assert (=> b!2448239 (= tp!777677 e!1555266)))

(declare-fun b!2449875 () Bool)

(declare-fun tp!778605 () Bool)

(assert (=> b!2449875 (= e!1555266 tp!778605)))

(declare-fun b!2449874 () Bool)

(declare-fun tp!778601 () Bool)

(declare-fun tp!778604 () Bool)

(assert (=> b!2449874 (= e!1555266 (and tp!778601 tp!778604))))

(declare-fun b!2449876 () Bool)

(declare-fun tp!778602 () Bool)

(declare-fun tp!778603 () Bool)

(assert (=> b!2449876 (= e!1555266 (and tp!778602 tp!778603))))

(declare-fun b!2449873 () Bool)

(assert (=> b!2449873 (= e!1555266 tp_is_empty!11807)))

(assert (= (and b!2448239 ((_ is ElementMatch!7197) (regTwo!14906 (reg!7526 (regOne!14906 r!13927))))) b!2449873))

(assert (= (and b!2448239 ((_ is Concat!11833) (regTwo!14906 (reg!7526 (regOne!14906 r!13927))))) b!2449874))

(assert (= (and b!2448239 ((_ is Star!7197) (regTwo!14906 (reg!7526 (regOne!14906 r!13927))))) b!2449875))

(assert (= (and b!2448239 ((_ is Union!7197) (regTwo!14906 (reg!7526 (regOne!14906 r!13927))))) b!2449876))

(declare-fun e!1555268 () Bool)

(assert (=> b!2448224 (= tp!777653 e!1555268)))

(declare-fun b!2449883 () Bool)

(declare-fun tp!778615 () Bool)

(assert (=> b!2449883 (= e!1555268 tp!778615)))

(declare-fun b!2449882 () Bool)

(declare-fun tp!778611 () Bool)

(declare-fun tp!778614 () Bool)

(assert (=> b!2449882 (= e!1555268 (and tp!778611 tp!778614))))

(declare-fun b!2449884 () Bool)

(declare-fun tp!778612 () Bool)

(declare-fun tp!778613 () Bool)

(assert (=> b!2449884 (= e!1555268 (and tp!778612 tp!778613))))

(declare-fun b!2449881 () Bool)

(assert (=> b!2449881 (= e!1555268 tp_is_empty!11807)))

(assert (= (and b!2448224 ((_ is ElementMatch!7197) (regOne!14907 (h!33933 (t!208607 l!9164))))) b!2449881))

(assert (= (and b!2448224 ((_ is Concat!11833) (regOne!14907 (h!33933 (t!208607 l!9164))))) b!2449882))

(assert (= (and b!2448224 ((_ is Star!7197) (regOne!14907 (h!33933 (t!208607 l!9164))))) b!2449883))

(assert (= (and b!2448224 ((_ is Union!7197) (regOne!14907 (h!33933 (t!208607 l!9164))))) b!2449884))

(declare-fun e!1555270 () Bool)

(assert (=> b!2448224 (= tp!777654 e!1555270)))

(declare-fun b!2449891 () Bool)

(declare-fun tp!778625 () Bool)

(assert (=> b!2449891 (= e!1555270 tp!778625)))

(declare-fun b!2449890 () Bool)

(declare-fun tp!778621 () Bool)

(declare-fun tp!778624 () Bool)

(assert (=> b!2449890 (= e!1555270 (and tp!778621 tp!778624))))

(declare-fun b!2449892 () Bool)

(declare-fun tp!778622 () Bool)

(declare-fun tp!778623 () Bool)

(assert (=> b!2449892 (= e!1555270 (and tp!778622 tp!778623))))

(declare-fun b!2449889 () Bool)

(assert (=> b!2449889 (= e!1555270 tp_is_empty!11807)))

(assert (= (and b!2448224 ((_ is ElementMatch!7197) (regTwo!14907 (h!33933 (t!208607 l!9164))))) b!2449889))

(assert (= (and b!2448224 ((_ is Concat!11833) (regTwo!14907 (h!33933 (t!208607 l!9164))))) b!2449890))

(assert (= (and b!2448224 ((_ is Star!7197) (regTwo!14907 (h!33933 (t!208607 l!9164))))) b!2449891))

(assert (= (and b!2448224 ((_ is Union!7197) (regTwo!14907 (h!33933 (t!208607 l!9164))))) b!2449892))

(declare-fun e!1555272 () Bool)

(assert (=> b!2448215 (= tp!777646 e!1555272)))

(declare-fun b!2449899 () Bool)

(declare-fun tp!778635 () Bool)

(assert (=> b!2449899 (= e!1555272 tp!778635)))

(declare-fun b!2449898 () Bool)

(declare-fun tp!778631 () Bool)

(declare-fun tp!778634 () Bool)

(assert (=> b!2449898 (= e!1555272 (and tp!778631 tp!778634))))

(declare-fun b!2449900 () Bool)

(declare-fun tp!778632 () Bool)

(declare-fun tp!778633 () Bool)

(assert (=> b!2449900 (= e!1555272 (and tp!778632 tp!778633))))

(declare-fun b!2449897 () Bool)

(assert (=> b!2449897 (= e!1555272 tp_is_empty!11807)))

(assert (= (and b!2448215 ((_ is ElementMatch!7197) (reg!7526 (regOne!14907 (regOne!14907 r!13927))))) b!2449897))

(assert (= (and b!2448215 ((_ is Concat!11833) (reg!7526 (regOne!14907 (regOne!14907 r!13927))))) b!2449898))

(assert (= (and b!2448215 ((_ is Star!7197) (reg!7526 (regOne!14907 (regOne!14907 r!13927))))) b!2449899))

(assert (= (and b!2448215 ((_ is Union!7197) (reg!7526 (regOne!14907 (regOne!14907 r!13927))))) b!2449900))

(declare-fun e!1555274 () Bool)

(assert (=> b!2448309 (= tp!777760 e!1555274)))

(declare-fun b!2449907 () Bool)

(declare-fun tp!778645 () Bool)

(assert (=> b!2449907 (= e!1555274 tp!778645)))

(declare-fun b!2449906 () Bool)

(declare-fun tp!778641 () Bool)

(declare-fun tp!778644 () Bool)

(assert (=> b!2449906 (= e!1555274 (and tp!778641 tp!778644))))

(declare-fun b!2449908 () Bool)

(declare-fun tp!778642 () Bool)

(declare-fun tp!778643 () Bool)

(assert (=> b!2449908 (= e!1555274 (and tp!778642 tp!778643))))

(declare-fun b!2449905 () Bool)

(assert (=> b!2449905 (= e!1555274 tp_is_empty!11807)))

(assert (= (and b!2448309 ((_ is ElementMatch!7197) (regOne!14907 (reg!7526 (regTwo!14907 r!13927))))) b!2449905))

(assert (= (and b!2448309 ((_ is Concat!11833) (regOne!14907 (reg!7526 (regTwo!14907 r!13927))))) b!2449906))

(assert (= (and b!2448309 ((_ is Star!7197) (regOne!14907 (reg!7526 (regTwo!14907 r!13927))))) b!2449907))

(assert (= (and b!2448309 ((_ is Union!7197) (regOne!14907 (reg!7526 (regTwo!14907 r!13927))))) b!2449908))

(declare-fun e!1555276 () Bool)

(assert (=> b!2448309 (= tp!777761 e!1555276)))

(declare-fun b!2449915 () Bool)

(declare-fun tp!778655 () Bool)

(assert (=> b!2449915 (= e!1555276 tp!778655)))

(declare-fun b!2449914 () Bool)

(declare-fun tp!778651 () Bool)

(declare-fun tp!778654 () Bool)

(assert (=> b!2449914 (= e!1555276 (and tp!778651 tp!778654))))

(declare-fun b!2449916 () Bool)

(declare-fun tp!778652 () Bool)

(declare-fun tp!778653 () Bool)

(assert (=> b!2449916 (= e!1555276 (and tp!778652 tp!778653))))

(declare-fun b!2449913 () Bool)

(assert (=> b!2449913 (= e!1555276 tp_is_empty!11807)))

(assert (= (and b!2448309 ((_ is ElementMatch!7197) (regTwo!14907 (reg!7526 (regTwo!14907 r!13927))))) b!2449913))

(assert (= (and b!2448309 ((_ is Concat!11833) (regTwo!14907 (reg!7526 (regTwo!14907 r!13927))))) b!2449914))

(assert (= (and b!2448309 ((_ is Star!7197) (regTwo!14907 (reg!7526 (regTwo!14907 r!13927))))) b!2449915))

(assert (= (and b!2448309 ((_ is Union!7197) (regTwo!14907 (reg!7526 (regTwo!14907 r!13927))))) b!2449916))

(declare-fun e!1555278 () Bool)

(assert (=> b!2448300 (= tp!777753 e!1555278)))

(declare-fun b!2449923 () Bool)

(declare-fun tp!778665 () Bool)

(assert (=> b!2449923 (= e!1555278 tp!778665)))

(declare-fun b!2449922 () Bool)

(declare-fun tp!778661 () Bool)

(declare-fun tp!778664 () Bool)

(assert (=> b!2449922 (= e!1555278 (and tp!778661 tp!778664))))

(declare-fun b!2449924 () Bool)

(declare-fun tp!778662 () Bool)

(declare-fun tp!778663 () Bool)

(assert (=> b!2449924 (= e!1555278 (and tp!778662 tp!778663))))

(declare-fun b!2449921 () Bool)

(assert (=> b!2449921 (= e!1555278 tp_is_empty!11807)))

(assert (= (and b!2448300 ((_ is ElementMatch!7197) (reg!7526 (regOne!14907 (regTwo!14906 r!13927))))) b!2449921))

(assert (= (and b!2448300 ((_ is Concat!11833) (reg!7526 (regOne!14907 (regTwo!14906 r!13927))))) b!2449922))

(assert (= (and b!2448300 ((_ is Star!7197) (reg!7526 (regOne!14907 (regTwo!14906 r!13927))))) b!2449923))

(assert (= (and b!2448300 ((_ is Union!7197) (reg!7526 (regOne!14907 (regTwo!14906 r!13927))))) b!2449924))

(declare-fun e!1555280 () Bool)

(assert (=> b!2448241 (= tp!777675 e!1555280)))

(declare-fun b!2449931 () Bool)

(declare-fun tp!778675 () Bool)

(assert (=> b!2449931 (= e!1555280 tp!778675)))

(declare-fun b!2449930 () Bool)

(declare-fun tp!778671 () Bool)

(declare-fun tp!778674 () Bool)

(assert (=> b!2449930 (= e!1555280 (and tp!778671 tp!778674))))

(declare-fun b!2449932 () Bool)

(declare-fun tp!778672 () Bool)

(declare-fun tp!778673 () Bool)

(assert (=> b!2449932 (= e!1555280 (and tp!778672 tp!778673))))

(declare-fun b!2449929 () Bool)

(assert (=> b!2449929 (= e!1555280 tp_is_empty!11807)))

(assert (= (and b!2448241 ((_ is ElementMatch!7197) (regOne!14907 (reg!7526 (regOne!14906 r!13927))))) b!2449929))

(assert (= (and b!2448241 ((_ is Concat!11833) (regOne!14907 (reg!7526 (regOne!14906 r!13927))))) b!2449930))

(assert (= (and b!2448241 ((_ is Star!7197) (regOne!14907 (reg!7526 (regOne!14906 r!13927))))) b!2449931))

(assert (= (and b!2448241 ((_ is Union!7197) (regOne!14907 (reg!7526 (regOne!14906 r!13927))))) b!2449932))

(declare-fun e!1555282 () Bool)

(assert (=> b!2448241 (= tp!777676 e!1555282)))

(declare-fun b!2449939 () Bool)

(declare-fun tp!778685 () Bool)

(assert (=> b!2449939 (= e!1555282 tp!778685)))

(declare-fun b!2449938 () Bool)

(declare-fun tp!778681 () Bool)

(declare-fun tp!778684 () Bool)

(assert (=> b!2449938 (= e!1555282 (and tp!778681 tp!778684))))

(declare-fun b!2449940 () Bool)

(declare-fun tp!778682 () Bool)

(declare-fun tp!778683 () Bool)

(assert (=> b!2449940 (= e!1555282 (and tp!778682 tp!778683))))

(declare-fun b!2449937 () Bool)

(assert (=> b!2449937 (= e!1555282 tp_is_empty!11807)))

(assert (= (and b!2448241 ((_ is ElementMatch!7197) (regTwo!14907 (reg!7526 (regOne!14906 r!13927))))) b!2449937))

(assert (= (and b!2448241 ((_ is Concat!11833) (regTwo!14907 (reg!7526 (regOne!14906 r!13927))))) b!2449938))

(assert (= (and b!2448241 ((_ is Star!7197) (regTwo!14907 (reg!7526 (regOne!14906 r!13927))))) b!2449939))

(assert (= (and b!2448241 ((_ is Union!7197) (regTwo!14907 (reg!7526 (regOne!14906 r!13927))))) b!2449940))

(declare-fun e!1555284 () Bool)

(assert (=> b!2448291 (= tp!777739 e!1555284)))

(declare-fun b!2449947 () Bool)

(declare-fun tp!778695 () Bool)

(assert (=> b!2449947 (= e!1555284 tp!778695)))

(declare-fun b!2449946 () Bool)

(declare-fun tp!778691 () Bool)

(declare-fun tp!778694 () Bool)

(assert (=> b!2449946 (= e!1555284 (and tp!778691 tp!778694))))

(declare-fun b!2449948 () Bool)

(declare-fun tp!778692 () Bool)

(declare-fun tp!778693 () Bool)

(assert (=> b!2449948 (= e!1555284 (and tp!778692 tp!778693))))

(declare-fun b!2449945 () Bool)

(assert (=> b!2449945 (= e!1555284 tp_is_empty!11807)))

(assert (= (and b!2448291 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14907 (regOne!14906 r!13927))))) b!2449945))

(assert (= (and b!2448291 ((_ is Concat!11833) (regOne!14906 (regTwo!14907 (regOne!14906 r!13927))))) b!2449946))

(assert (= (and b!2448291 ((_ is Star!7197) (regOne!14906 (regTwo!14907 (regOne!14906 r!13927))))) b!2449947))

(assert (= (and b!2448291 ((_ is Union!7197) (regOne!14906 (regTwo!14907 (regOne!14906 r!13927))))) b!2449948))

(declare-fun e!1555286 () Bool)

(assert (=> b!2448291 (= tp!777742 e!1555286)))

(declare-fun b!2449955 () Bool)

(declare-fun tp!778705 () Bool)

(assert (=> b!2449955 (= e!1555286 tp!778705)))

(declare-fun b!2449954 () Bool)

(declare-fun tp!778701 () Bool)

(declare-fun tp!778704 () Bool)

(assert (=> b!2449954 (= e!1555286 (and tp!778701 tp!778704))))

(declare-fun b!2449956 () Bool)

(declare-fun tp!778702 () Bool)

(declare-fun tp!778703 () Bool)

(assert (=> b!2449956 (= e!1555286 (and tp!778702 tp!778703))))

(declare-fun b!2449953 () Bool)

(assert (=> b!2449953 (= e!1555286 tp_is_empty!11807)))

(assert (= (and b!2448291 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14907 (regOne!14906 r!13927))))) b!2449953))

(assert (= (and b!2448291 ((_ is Concat!11833) (regTwo!14906 (regTwo!14907 (regOne!14906 r!13927))))) b!2449954))

(assert (= (and b!2448291 ((_ is Star!7197) (regTwo!14906 (regTwo!14907 (regOne!14906 r!13927))))) b!2449955))

(assert (= (and b!2448291 ((_ is Union!7197) (regTwo!14906 (regTwo!14907 (regOne!14906 r!13927))))) b!2449956))

(declare-fun e!1555288 () Bool)

(assert (=> b!2448264 (= tp!777708 e!1555288)))

(declare-fun b!2449963 () Bool)

(declare-fun tp!778715 () Bool)

(assert (=> b!2449963 (= e!1555288 tp!778715)))

(declare-fun b!2449962 () Bool)

(declare-fun tp!778711 () Bool)

(declare-fun tp!778714 () Bool)

(assert (=> b!2449962 (= e!1555288 (and tp!778711 tp!778714))))

(declare-fun b!2449964 () Bool)

(declare-fun tp!778712 () Bool)

(declare-fun tp!778713 () Bool)

(assert (=> b!2449964 (= e!1555288 (and tp!778712 tp!778713))))

(declare-fun b!2449961 () Bool)

(assert (=> b!2449961 (= e!1555288 tp_is_empty!11807)))

(assert (= (and b!2448264 ((_ is ElementMatch!7197) (reg!7526 (regOne!14906 (regTwo!14907 r!13927))))) b!2449961))

(assert (= (and b!2448264 ((_ is Concat!11833) (reg!7526 (regOne!14906 (regTwo!14907 r!13927))))) b!2449962))

(assert (= (and b!2448264 ((_ is Star!7197) (reg!7526 (regOne!14906 (regTwo!14907 r!13927))))) b!2449963))

(assert (= (and b!2448264 ((_ is Union!7197) (reg!7526 (regOne!14906 (regTwo!14907 r!13927))))) b!2449964))

(declare-fun e!1555290 () Bool)

(assert (=> b!2448255 (= tp!777694 e!1555290)))

(declare-fun b!2449971 () Bool)

(declare-fun tp!778725 () Bool)

(assert (=> b!2449971 (= e!1555290 tp!778725)))

(declare-fun b!2449970 () Bool)

(declare-fun tp!778721 () Bool)

(declare-fun tp!778724 () Bool)

(assert (=> b!2449970 (= e!1555290 (and tp!778721 tp!778724))))

(declare-fun b!2449972 () Bool)

(declare-fun tp!778722 () Bool)

(declare-fun tp!778723 () Bool)

(assert (=> b!2449972 (= e!1555290 (and tp!778722 tp!778723))))

(declare-fun b!2449969 () Bool)

(assert (=> b!2449969 (= e!1555290 tp_is_empty!11807)))

(assert (= (and b!2448255 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14907 (reg!7526 r!13927))))) b!2449969))

(assert (= (and b!2448255 ((_ is Concat!11833) (regOne!14906 (regTwo!14907 (reg!7526 r!13927))))) b!2449970))

(assert (= (and b!2448255 ((_ is Star!7197) (regOne!14906 (regTwo!14907 (reg!7526 r!13927))))) b!2449971))

(assert (= (and b!2448255 ((_ is Union!7197) (regOne!14906 (regTwo!14907 (reg!7526 r!13927))))) b!2449972))

(declare-fun e!1555292 () Bool)

(assert (=> b!2448255 (= tp!777697 e!1555292)))

(declare-fun b!2449979 () Bool)

(declare-fun tp!778735 () Bool)

(assert (=> b!2449979 (= e!1555292 tp!778735)))

(declare-fun b!2449978 () Bool)

(declare-fun tp!778731 () Bool)

(declare-fun tp!778734 () Bool)

(assert (=> b!2449978 (= e!1555292 (and tp!778731 tp!778734))))

(declare-fun b!2449980 () Bool)

(declare-fun tp!778732 () Bool)

(declare-fun tp!778733 () Bool)

(assert (=> b!2449980 (= e!1555292 (and tp!778732 tp!778733))))

(declare-fun b!2449977 () Bool)

(assert (=> b!2449977 (= e!1555292 tp_is_empty!11807)))

(assert (= (and b!2448255 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14907 (reg!7526 r!13927))))) b!2449977))

(assert (= (and b!2448255 ((_ is Concat!11833) (regTwo!14906 (regTwo!14907 (reg!7526 r!13927))))) b!2449978))

(assert (= (and b!2448255 ((_ is Star!7197) (regTwo!14906 (regTwo!14907 (reg!7526 r!13927))))) b!2449979))

(assert (= (and b!2448255 ((_ is Union!7197) (regTwo!14906 (regTwo!14907 (reg!7526 r!13927))))) b!2449980))

(declare-fun e!1555294 () Bool)

(assert (=> b!2448222 (= tp!777652 e!1555294)))

(declare-fun b!2449987 () Bool)

(declare-fun tp!778745 () Bool)

(assert (=> b!2449987 (= e!1555294 tp!778745)))

(declare-fun b!2449986 () Bool)

(declare-fun tp!778741 () Bool)

(declare-fun tp!778744 () Bool)

(assert (=> b!2449986 (= e!1555294 (and tp!778741 tp!778744))))

(declare-fun b!2449988 () Bool)

(declare-fun tp!778742 () Bool)

(declare-fun tp!778743 () Bool)

(assert (=> b!2449988 (= e!1555294 (and tp!778742 tp!778743))))

(declare-fun b!2449985 () Bool)

(assert (=> b!2449985 (= e!1555294 tp_is_empty!11807)))

(assert (= (and b!2448222 ((_ is ElementMatch!7197) (regOne!14906 (h!33933 (t!208607 l!9164))))) b!2449985))

(assert (= (and b!2448222 ((_ is Concat!11833) (regOne!14906 (h!33933 (t!208607 l!9164))))) b!2449986))

(assert (= (and b!2448222 ((_ is Star!7197) (regOne!14906 (h!33933 (t!208607 l!9164))))) b!2449987))

(assert (= (and b!2448222 ((_ is Union!7197) (regOne!14906 (h!33933 (t!208607 l!9164))))) b!2449988))

(declare-fun e!1555296 () Bool)

(assert (=> b!2448222 (= tp!777655 e!1555296)))

(declare-fun b!2449995 () Bool)

(declare-fun tp!778755 () Bool)

(assert (=> b!2449995 (= e!1555296 tp!778755)))

(declare-fun b!2449994 () Bool)

(declare-fun tp!778751 () Bool)

(declare-fun tp!778754 () Bool)

(assert (=> b!2449994 (= e!1555296 (and tp!778751 tp!778754))))

(declare-fun b!2449996 () Bool)

(declare-fun tp!778752 () Bool)

(declare-fun tp!778753 () Bool)

(assert (=> b!2449996 (= e!1555296 (and tp!778752 tp!778753))))

(declare-fun b!2449993 () Bool)

(assert (=> b!2449993 (= e!1555296 tp_is_empty!11807)))

(assert (= (and b!2448222 ((_ is ElementMatch!7197) (regTwo!14906 (h!33933 (t!208607 l!9164))))) b!2449993))

(assert (= (and b!2448222 ((_ is Concat!11833) (regTwo!14906 (h!33933 (t!208607 l!9164))))) b!2449994))

(assert (= (and b!2448222 ((_ is Star!7197) (regTwo!14906 (h!33933 (t!208607 l!9164))))) b!2449995))

(assert (= (and b!2448222 ((_ is Union!7197) (regTwo!14906 (h!33933 (t!208607 l!9164))))) b!2449996))

(declare-fun e!1555298 () Bool)

(assert (=> b!2448325 (= tp!777780 e!1555298)))

(declare-fun b!2450003 () Bool)

(declare-fun tp!778765 () Bool)

(assert (=> b!2450003 (= e!1555298 tp!778765)))

(declare-fun b!2450002 () Bool)

(declare-fun tp!778761 () Bool)

(declare-fun tp!778764 () Bool)

(assert (=> b!2450002 (= e!1555298 (and tp!778761 tp!778764))))

(declare-fun b!2450004 () Bool)

(declare-fun tp!778762 () Bool)

(declare-fun tp!778763 () Bool)

(assert (=> b!2450004 (= e!1555298 (and tp!778762 tp!778763))))

(declare-fun b!2450001 () Bool)

(assert (=> b!2450001 (= e!1555298 tp_is_empty!11807)))

(assert (= (and b!2448325 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14906 (reg!7526 r!13927))))) b!2450001))

(assert (= (and b!2448325 ((_ is Concat!11833) (regOne!14907 (regOne!14906 (reg!7526 r!13927))))) b!2450002))

(assert (= (and b!2448325 ((_ is Star!7197) (regOne!14907 (regOne!14906 (reg!7526 r!13927))))) b!2450003))

(assert (= (and b!2448325 ((_ is Union!7197) (regOne!14907 (regOne!14906 (reg!7526 r!13927))))) b!2450004))

(declare-fun e!1555300 () Bool)

(assert (=> b!2448325 (= tp!777781 e!1555300)))

(declare-fun b!2450011 () Bool)

(declare-fun tp!778775 () Bool)

(assert (=> b!2450011 (= e!1555300 tp!778775)))

(declare-fun b!2450010 () Bool)

(declare-fun tp!778771 () Bool)

(declare-fun tp!778774 () Bool)

(assert (=> b!2450010 (= e!1555300 (and tp!778771 tp!778774))))

(declare-fun b!2450012 () Bool)

(declare-fun tp!778772 () Bool)

(declare-fun tp!778773 () Bool)

(assert (=> b!2450012 (= e!1555300 (and tp!778772 tp!778773))))

(declare-fun b!2450009 () Bool)

(assert (=> b!2450009 (= e!1555300 tp_is_empty!11807)))

(assert (= (and b!2448325 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14906 (reg!7526 r!13927))))) b!2450009))

(assert (= (and b!2448325 ((_ is Concat!11833) (regTwo!14907 (regOne!14906 (reg!7526 r!13927))))) b!2450010))

(assert (= (and b!2448325 ((_ is Star!7197) (regTwo!14907 (regOne!14906 (reg!7526 r!13927))))) b!2450011))

(assert (= (and b!2448325 ((_ is Union!7197) (regTwo!14907 (regOne!14906 (reg!7526 r!13927))))) b!2450012))

(declare-fun e!1555302 () Bool)

(assert (=> b!2448316 (= tp!777773 e!1555302)))

(declare-fun b!2450019 () Bool)

(declare-fun tp!778785 () Bool)

(assert (=> b!2450019 (= e!1555302 tp!778785)))

(declare-fun b!2450018 () Bool)

(declare-fun tp!778781 () Bool)

(declare-fun tp!778784 () Bool)

(assert (=> b!2450018 (= e!1555302 (and tp!778781 tp!778784))))

(declare-fun b!2450020 () Bool)

(declare-fun tp!778782 () Bool)

(declare-fun tp!778783 () Bool)

(assert (=> b!2450020 (= e!1555302 (and tp!778782 tp!778783))))

(declare-fun b!2450017 () Bool)

(assert (=> b!2450017 (= e!1555302 tp_is_empty!11807)))

(assert (= (and b!2448316 ((_ is ElementMatch!7197) (reg!7526 (regOne!14906 (regTwo!14906 r!13927))))) b!2450017))

(assert (= (and b!2448316 ((_ is Concat!11833) (reg!7526 (regOne!14906 (regTwo!14906 r!13927))))) b!2450018))

(assert (= (and b!2448316 ((_ is Star!7197) (reg!7526 (regOne!14906 (regTwo!14906 r!13927))))) b!2450019))

(assert (= (and b!2448316 ((_ is Union!7197) (reg!7526 (regOne!14906 (regTwo!14906 r!13927))))) b!2450020))

(declare-fun e!1555304 () Bool)

(assert (=> b!2448257 (= tp!777695 e!1555304)))

(declare-fun b!2450027 () Bool)

(declare-fun tp!778795 () Bool)

(assert (=> b!2450027 (= e!1555304 tp!778795)))

(declare-fun b!2450026 () Bool)

(declare-fun tp!778791 () Bool)

(declare-fun tp!778794 () Bool)

(assert (=> b!2450026 (= e!1555304 (and tp!778791 tp!778794))))

(declare-fun b!2450028 () Bool)

(declare-fun tp!778792 () Bool)

(declare-fun tp!778793 () Bool)

(assert (=> b!2450028 (= e!1555304 (and tp!778792 tp!778793))))

(declare-fun b!2450025 () Bool)

(assert (=> b!2450025 (= e!1555304 tp_is_empty!11807)))

(assert (= (and b!2448257 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14907 (reg!7526 r!13927))))) b!2450025))

(assert (= (and b!2448257 ((_ is Concat!11833) (regOne!14907 (regTwo!14907 (reg!7526 r!13927))))) b!2450026))

(assert (= (and b!2448257 ((_ is Star!7197) (regOne!14907 (regTwo!14907 (reg!7526 r!13927))))) b!2450027))

(assert (= (and b!2448257 ((_ is Union!7197) (regOne!14907 (regTwo!14907 (reg!7526 r!13927))))) b!2450028))

(declare-fun e!1555306 () Bool)

(assert (=> b!2448257 (= tp!777696 e!1555306)))

(declare-fun b!2450035 () Bool)

(declare-fun tp!778805 () Bool)

(assert (=> b!2450035 (= e!1555306 tp!778805)))

(declare-fun b!2450034 () Bool)

(declare-fun tp!778801 () Bool)

(declare-fun tp!778804 () Bool)

(assert (=> b!2450034 (= e!1555306 (and tp!778801 tp!778804))))

(declare-fun b!2450036 () Bool)

(declare-fun tp!778802 () Bool)

(declare-fun tp!778803 () Bool)

(assert (=> b!2450036 (= e!1555306 (and tp!778802 tp!778803))))

(declare-fun b!2450033 () Bool)

(assert (=> b!2450033 (= e!1555306 tp_is_empty!11807)))

(assert (= (and b!2448257 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14907 (reg!7526 r!13927))))) b!2450033))

(assert (= (and b!2448257 ((_ is Concat!11833) (regTwo!14907 (regTwo!14907 (reg!7526 r!13927))))) b!2450034))

(assert (= (and b!2448257 ((_ is Star!7197) (regTwo!14907 (regTwo!14907 (reg!7526 r!13927))))) b!2450035))

(assert (= (and b!2448257 ((_ is Union!7197) (regTwo!14907 (regTwo!14907 (reg!7526 r!13927))))) b!2450036))

(declare-fun e!1555308 () Bool)

(assert (=> b!2448307 (= tp!777759 e!1555308)))

(declare-fun b!2450043 () Bool)

(declare-fun tp!778815 () Bool)

(assert (=> b!2450043 (= e!1555308 tp!778815)))

(declare-fun b!2450042 () Bool)

(declare-fun tp!778811 () Bool)

(declare-fun tp!778814 () Bool)

(assert (=> b!2450042 (= e!1555308 (and tp!778811 tp!778814))))

(declare-fun b!2450044 () Bool)

(declare-fun tp!778812 () Bool)

(declare-fun tp!778813 () Bool)

(assert (=> b!2450044 (= e!1555308 (and tp!778812 tp!778813))))

(declare-fun b!2450041 () Bool)

(assert (=> b!2450041 (= e!1555308 tp_is_empty!11807)))

(assert (= (and b!2448307 ((_ is ElementMatch!7197) (regOne!14906 (reg!7526 (regTwo!14907 r!13927))))) b!2450041))

(assert (= (and b!2448307 ((_ is Concat!11833) (regOne!14906 (reg!7526 (regTwo!14907 r!13927))))) b!2450042))

(assert (= (and b!2448307 ((_ is Star!7197) (regOne!14906 (reg!7526 (regTwo!14907 r!13927))))) b!2450043))

(assert (= (and b!2448307 ((_ is Union!7197) (regOne!14906 (reg!7526 (regTwo!14907 r!13927))))) b!2450044))

(declare-fun e!1555310 () Bool)

(assert (=> b!2448307 (= tp!777762 e!1555310)))

(declare-fun b!2450051 () Bool)

(declare-fun tp!778825 () Bool)

(assert (=> b!2450051 (= e!1555310 tp!778825)))

(declare-fun b!2450050 () Bool)

(declare-fun tp!778821 () Bool)

(declare-fun tp!778824 () Bool)

(assert (=> b!2450050 (= e!1555310 (and tp!778821 tp!778824))))

(declare-fun b!2450052 () Bool)

(declare-fun tp!778822 () Bool)

(declare-fun tp!778823 () Bool)

(assert (=> b!2450052 (= e!1555310 (and tp!778822 tp!778823))))

(declare-fun b!2450049 () Bool)

(assert (=> b!2450049 (= e!1555310 tp_is_empty!11807)))

(assert (= (and b!2448307 ((_ is ElementMatch!7197) (regTwo!14906 (reg!7526 (regTwo!14907 r!13927))))) b!2450049))

(assert (= (and b!2448307 ((_ is Concat!11833) (regTwo!14906 (reg!7526 (regTwo!14907 r!13927))))) b!2450050))

(assert (= (and b!2448307 ((_ is Star!7197) (regTwo!14906 (reg!7526 (regTwo!14907 r!13927))))) b!2450051))

(assert (= (and b!2448307 ((_ is Union!7197) (regTwo!14906 (reg!7526 (regTwo!14907 r!13927))))) b!2450052))

(declare-fun e!1555312 () Bool)

(assert (=> b!2448335 (= tp!777794 e!1555312)))

(declare-fun b!2450059 () Bool)

(declare-fun tp!778835 () Bool)

(assert (=> b!2450059 (= e!1555312 tp!778835)))

(declare-fun b!2450058 () Bool)

(declare-fun tp!778831 () Bool)

(declare-fun tp!778834 () Bool)

(assert (=> b!2450058 (= e!1555312 (and tp!778831 tp!778834))))

(declare-fun b!2450060 () Bool)

(declare-fun tp!778832 () Bool)

(declare-fun tp!778833 () Bool)

(assert (=> b!2450060 (= e!1555312 (and tp!778832 tp!778833))))

(declare-fun b!2450057 () Bool)

(assert (=> b!2450057 (= e!1555312 tp_is_empty!11807)))

(assert (= (and b!2448335 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14907 (h!33933 l!9164))))) b!2450057))

(assert (= (and b!2448335 ((_ is Concat!11833) (regOne!14906 (regTwo!14907 (h!33933 l!9164))))) b!2450058))

(assert (= (and b!2448335 ((_ is Star!7197) (regOne!14906 (regTwo!14907 (h!33933 l!9164))))) b!2450059))

(assert (= (and b!2448335 ((_ is Union!7197) (regOne!14906 (regTwo!14907 (h!33933 l!9164))))) b!2450060))

(declare-fun e!1555314 () Bool)

(assert (=> b!2448335 (= tp!777797 e!1555314)))

(declare-fun b!2450067 () Bool)

(declare-fun tp!778845 () Bool)

(assert (=> b!2450067 (= e!1555314 tp!778845)))

(declare-fun b!2450066 () Bool)

(declare-fun tp!778841 () Bool)

(declare-fun tp!778844 () Bool)

(assert (=> b!2450066 (= e!1555314 (and tp!778841 tp!778844))))

(declare-fun b!2450068 () Bool)

(declare-fun tp!778842 () Bool)

(declare-fun tp!778843 () Bool)

(assert (=> b!2450068 (= e!1555314 (and tp!778842 tp!778843))))

(declare-fun b!2450065 () Bool)

(assert (=> b!2450065 (= e!1555314 tp_is_empty!11807)))

(assert (= (and b!2448335 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14907 (h!33933 l!9164))))) b!2450065))

(assert (= (and b!2448335 ((_ is Concat!11833) (regTwo!14906 (regTwo!14907 (h!33933 l!9164))))) b!2450066))

(assert (= (and b!2448335 ((_ is Star!7197) (regTwo!14906 (regTwo!14907 (h!33933 l!9164))))) b!2450067))

(assert (= (and b!2448335 ((_ is Union!7197) (regTwo!14906 (regTwo!14907 (h!33933 l!9164))))) b!2450068))

(declare-fun e!1555316 () Bool)

(assert (=> b!2448285 (= tp!777730 e!1555316)))

(declare-fun b!2450075 () Bool)

(declare-fun tp!778855 () Bool)

(assert (=> b!2450075 (= e!1555316 tp!778855)))

(declare-fun b!2450074 () Bool)

(declare-fun tp!778851 () Bool)

(declare-fun tp!778854 () Bool)

(assert (=> b!2450074 (= e!1555316 (and tp!778851 tp!778854))))

(declare-fun b!2450076 () Bool)

(declare-fun tp!778852 () Bool)

(declare-fun tp!778853 () Bool)

(assert (=> b!2450076 (= e!1555316 (and tp!778852 tp!778853))))

(declare-fun b!2450073 () Bool)

(assert (=> b!2450073 (= e!1555316 tp_is_empty!11807)))

(assert (= (and b!2448285 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450073))

(assert (= (and b!2448285 ((_ is Concat!11833) (regOne!14907 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450074))

(assert (= (and b!2448285 ((_ is Star!7197) (regOne!14907 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450075))

(assert (= (and b!2448285 ((_ is Union!7197) (regOne!14907 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450076))

(declare-fun e!1555318 () Bool)

(assert (=> b!2448285 (= tp!777731 e!1555318)))

(declare-fun b!2450083 () Bool)

(declare-fun tp!778865 () Bool)

(assert (=> b!2450083 (= e!1555318 tp!778865)))

(declare-fun b!2450082 () Bool)

(declare-fun tp!778861 () Bool)

(declare-fun tp!778864 () Bool)

(assert (=> b!2450082 (= e!1555318 (and tp!778861 tp!778864))))

(declare-fun b!2450084 () Bool)

(declare-fun tp!778862 () Bool)

(declare-fun tp!778863 () Bool)

(assert (=> b!2450084 (= e!1555318 (and tp!778862 tp!778863))))

(declare-fun b!2450081 () Bool)

(assert (=> b!2450081 (= e!1555318 tp_is_empty!11807)))

(assert (= (and b!2448285 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450081))

(assert (= (and b!2448285 ((_ is Concat!11833) (regTwo!14907 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450082))

(assert (= (and b!2448285 ((_ is Star!7197) (regTwo!14907 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450083))

(assert (= (and b!2448285 ((_ is Union!7197) (regTwo!14907 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450084))

(declare-fun e!1555320 () Bool)

(assert (=> b!2448276 (= tp!777723 e!1555320)))

(declare-fun b!2450091 () Bool)

(declare-fun tp!778875 () Bool)

(assert (=> b!2450091 (= e!1555320 tp!778875)))

(declare-fun b!2450090 () Bool)

(declare-fun tp!778871 () Bool)

(declare-fun tp!778874 () Bool)

(assert (=> b!2450090 (= e!1555320 (and tp!778871 tp!778874))))

(declare-fun b!2450092 () Bool)

(declare-fun tp!778872 () Bool)

(declare-fun tp!778873 () Bool)

(assert (=> b!2450092 (= e!1555320 (and tp!778872 tp!778873))))

(declare-fun b!2450089 () Bool)

(assert (=> b!2450089 (= e!1555320 tp_is_empty!11807)))

(assert (= (and b!2448276 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14906 (regOne!14906 r!13927))))) b!2450089))

(assert (= (and b!2448276 ((_ is Concat!11833) (reg!7526 (regTwo!14906 (regOne!14906 r!13927))))) b!2450090))

(assert (= (and b!2448276 ((_ is Star!7197) (reg!7526 (regTwo!14906 (regOne!14906 r!13927))))) b!2450091))

(assert (= (and b!2448276 ((_ is Union!7197) (reg!7526 (regTwo!14906 (regOne!14906 r!13927))))) b!2450092))

(declare-fun e!1555322 () Bool)

(assert (=> b!2448267 (= tp!777709 e!1555322)))

(declare-fun b!2450099 () Bool)

(declare-fun tp!778885 () Bool)

(assert (=> b!2450099 (= e!1555322 tp!778885)))

(declare-fun b!2450098 () Bool)

(declare-fun tp!778881 () Bool)

(declare-fun tp!778884 () Bool)

(assert (=> b!2450098 (= e!1555322 (and tp!778881 tp!778884))))

(declare-fun b!2450100 () Bool)

(declare-fun tp!778882 () Bool)

(declare-fun tp!778883 () Bool)

(assert (=> b!2450100 (= e!1555322 (and tp!778882 tp!778883))))

(declare-fun b!2450097 () Bool)

(assert (=> b!2450097 (= e!1555322 tp_is_empty!11807)))

(assert (= (and b!2448267 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450097))

(assert (= (and b!2448267 ((_ is Concat!11833) (regOne!14906 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450098))

(assert (= (and b!2448267 ((_ is Star!7197) (regOne!14906 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450099))

(assert (= (and b!2448267 ((_ is Union!7197) (regOne!14906 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450100))

(declare-fun e!1555324 () Bool)

(assert (=> b!2448267 (= tp!777712 e!1555324)))

(declare-fun b!2450107 () Bool)

(declare-fun tp!778895 () Bool)

(assert (=> b!2450107 (= e!1555324 tp!778895)))

(declare-fun b!2450106 () Bool)

(declare-fun tp!778891 () Bool)

(declare-fun tp!778894 () Bool)

(assert (=> b!2450106 (= e!1555324 (and tp!778891 tp!778894))))

(declare-fun b!2450108 () Bool)

(declare-fun tp!778892 () Bool)

(declare-fun tp!778893 () Bool)

(assert (=> b!2450108 (= e!1555324 (and tp!778892 tp!778893))))

(declare-fun b!2450105 () Bool)

(assert (=> b!2450105 (= e!1555324 tp_is_empty!11807)))

(assert (= (and b!2448267 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450105))

(assert (= (and b!2448267 ((_ is Concat!11833) (regTwo!14906 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450106))

(assert (= (and b!2448267 ((_ is Star!7197) (regTwo!14906 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450107))

(assert (= (and b!2448267 ((_ is Union!7197) (regTwo!14906 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450108))

(declare-fun e!1555326 () Bool)

(assert (=> b!2448337 (= tp!777795 e!1555326)))

(declare-fun b!2450115 () Bool)

(declare-fun tp!778905 () Bool)

(assert (=> b!2450115 (= e!1555326 tp!778905)))

(declare-fun b!2450114 () Bool)

(declare-fun tp!778901 () Bool)

(declare-fun tp!778904 () Bool)

(assert (=> b!2450114 (= e!1555326 (and tp!778901 tp!778904))))

(declare-fun b!2450116 () Bool)

(declare-fun tp!778902 () Bool)

(declare-fun tp!778903 () Bool)

(assert (=> b!2450116 (= e!1555326 (and tp!778902 tp!778903))))

(declare-fun b!2450113 () Bool)

(assert (=> b!2450113 (= e!1555326 tp_is_empty!11807)))

(assert (= (and b!2448337 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14907 (h!33933 l!9164))))) b!2450113))

(assert (= (and b!2448337 ((_ is Concat!11833) (regOne!14907 (regTwo!14907 (h!33933 l!9164))))) b!2450114))

(assert (= (and b!2448337 ((_ is Star!7197) (regOne!14907 (regTwo!14907 (h!33933 l!9164))))) b!2450115))

(assert (= (and b!2448337 ((_ is Union!7197) (regOne!14907 (regTwo!14907 (h!33933 l!9164))))) b!2450116))

(declare-fun e!1555328 () Bool)

(assert (=> b!2448337 (= tp!777796 e!1555328)))

(declare-fun b!2450123 () Bool)

(declare-fun tp!778915 () Bool)

(assert (=> b!2450123 (= e!1555328 tp!778915)))

(declare-fun b!2450122 () Bool)

(declare-fun tp!778911 () Bool)

(declare-fun tp!778914 () Bool)

(assert (=> b!2450122 (= e!1555328 (and tp!778911 tp!778914))))

(declare-fun b!2450124 () Bool)

(declare-fun tp!778912 () Bool)

(declare-fun tp!778913 () Bool)

(assert (=> b!2450124 (= e!1555328 (and tp!778912 tp!778913))))

(declare-fun b!2450121 () Bool)

(assert (=> b!2450121 (= e!1555328 tp_is_empty!11807)))

(assert (= (and b!2448337 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14907 (h!33933 l!9164))))) b!2450121))

(assert (= (and b!2448337 ((_ is Concat!11833) (regTwo!14907 (regTwo!14907 (h!33933 l!9164))))) b!2450122))

(assert (= (and b!2448337 ((_ is Star!7197) (regTwo!14907 (regTwo!14907 (h!33933 l!9164))))) b!2450123))

(assert (= (and b!2448337 ((_ is Union!7197) (regTwo!14907 (regTwo!14907 (h!33933 l!9164))))) b!2450124))

(declare-fun e!1555330 () Bool)

(assert (=> b!2448301 (= tp!777750 e!1555330)))

(declare-fun b!2450131 () Bool)

(declare-fun tp!778925 () Bool)

(assert (=> b!2450131 (= e!1555330 tp!778925)))

(declare-fun b!2450130 () Bool)

(declare-fun tp!778921 () Bool)

(declare-fun tp!778924 () Bool)

(assert (=> b!2450130 (= e!1555330 (and tp!778921 tp!778924))))

(declare-fun b!2450132 () Bool)

(declare-fun tp!778922 () Bool)

(declare-fun tp!778923 () Bool)

(assert (=> b!2450132 (= e!1555330 (and tp!778922 tp!778923))))

(declare-fun b!2450129 () Bool)

(assert (=> b!2450129 (= e!1555330 tp_is_empty!11807)))

(assert (= (and b!2448301 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14907 (regTwo!14906 r!13927))))) b!2450129))

(assert (= (and b!2448301 ((_ is Concat!11833) (regOne!14907 (regOne!14907 (regTwo!14906 r!13927))))) b!2450130))

(assert (= (and b!2448301 ((_ is Star!7197) (regOne!14907 (regOne!14907 (regTwo!14906 r!13927))))) b!2450131))

(assert (= (and b!2448301 ((_ is Union!7197) (regOne!14907 (regOne!14907 (regTwo!14906 r!13927))))) b!2450132))

(declare-fun e!1555332 () Bool)

(assert (=> b!2448301 (= tp!777751 e!1555332)))

(declare-fun b!2450139 () Bool)

(declare-fun tp!778935 () Bool)

(assert (=> b!2450139 (= e!1555332 tp!778935)))

(declare-fun b!2450138 () Bool)

(declare-fun tp!778931 () Bool)

(declare-fun tp!778934 () Bool)

(assert (=> b!2450138 (= e!1555332 (and tp!778931 tp!778934))))

(declare-fun b!2450140 () Bool)

(declare-fun tp!778932 () Bool)

(declare-fun tp!778933 () Bool)

(assert (=> b!2450140 (= e!1555332 (and tp!778932 tp!778933))))

(declare-fun b!2450137 () Bool)

(assert (=> b!2450137 (= e!1555332 tp_is_empty!11807)))

(assert (= (and b!2448301 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14907 (regTwo!14906 r!13927))))) b!2450137))

(assert (= (and b!2448301 ((_ is Concat!11833) (regTwo!14907 (regOne!14907 (regTwo!14906 r!13927))))) b!2450138))

(assert (= (and b!2448301 ((_ is Star!7197) (regTwo!14907 (regOne!14907 (regTwo!14906 r!13927))))) b!2450139))

(assert (= (and b!2448301 ((_ is Union!7197) (regTwo!14907 (regOne!14907 (regTwo!14906 r!13927))))) b!2450140))

(declare-fun e!1555334 () Bool)

(assert (=> b!2448292 (= tp!777743 e!1555334)))

(declare-fun b!2450147 () Bool)

(declare-fun tp!778945 () Bool)

(assert (=> b!2450147 (= e!1555334 tp!778945)))

(declare-fun b!2450146 () Bool)

(declare-fun tp!778941 () Bool)

(declare-fun tp!778944 () Bool)

(assert (=> b!2450146 (= e!1555334 (and tp!778941 tp!778944))))

(declare-fun b!2450148 () Bool)

(declare-fun tp!778942 () Bool)

(declare-fun tp!778943 () Bool)

(assert (=> b!2450148 (= e!1555334 (and tp!778942 tp!778943))))

(declare-fun b!2450145 () Bool)

(assert (=> b!2450145 (= e!1555334 tp_is_empty!11807)))

(assert (= (and b!2448292 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14907 (regOne!14906 r!13927))))) b!2450145))

(assert (= (and b!2448292 ((_ is Concat!11833) (reg!7526 (regTwo!14907 (regOne!14906 r!13927))))) b!2450146))

(assert (= (and b!2448292 ((_ is Star!7197) (reg!7526 (regTwo!14907 (regOne!14906 r!13927))))) b!2450147))

(assert (= (and b!2448292 ((_ is Union!7197) (reg!7526 (regTwo!14907 (regOne!14906 r!13927))))) b!2450148))

(declare-fun e!1555336 () Bool)

(assert (=> b!2448233 (= tp!777665 e!1555336)))

(declare-fun b!2450155 () Bool)

(declare-fun tp!778955 () Bool)

(assert (=> b!2450155 (= e!1555336 tp!778955)))

(declare-fun b!2450154 () Bool)

(declare-fun tp!778951 () Bool)

(declare-fun tp!778954 () Bool)

(assert (=> b!2450154 (= e!1555336 (and tp!778951 tp!778954))))

(declare-fun b!2450156 () Bool)

(declare-fun tp!778952 () Bool)

(declare-fun tp!778953 () Bool)

(assert (=> b!2450156 (= e!1555336 (and tp!778952 tp!778953))))

(declare-fun b!2450153 () Bool)

(assert (=> b!2450153 (= e!1555336 tp_is_empty!11807)))

(assert (= (and b!2448233 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14906 (h!33933 l!9164))))) b!2450153))

(assert (= (and b!2448233 ((_ is Concat!11833) (regOne!14907 (regOne!14906 (h!33933 l!9164))))) b!2450154))

(assert (= (and b!2448233 ((_ is Star!7197) (regOne!14907 (regOne!14906 (h!33933 l!9164))))) b!2450155))

(assert (= (and b!2448233 ((_ is Union!7197) (regOne!14907 (regOne!14906 (h!33933 l!9164))))) b!2450156))

(declare-fun e!1555338 () Bool)

(assert (=> b!2448233 (= tp!777666 e!1555338)))

(declare-fun b!2450163 () Bool)

(declare-fun tp!778965 () Bool)

(assert (=> b!2450163 (= e!1555338 tp!778965)))

(declare-fun b!2450162 () Bool)

(declare-fun tp!778961 () Bool)

(declare-fun tp!778964 () Bool)

(assert (=> b!2450162 (= e!1555338 (and tp!778961 tp!778964))))

(declare-fun b!2450164 () Bool)

(declare-fun tp!778962 () Bool)

(declare-fun tp!778963 () Bool)

(assert (=> b!2450164 (= e!1555338 (and tp!778962 tp!778963))))

(declare-fun b!2450161 () Bool)

(assert (=> b!2450161 (= e!1555338 tp_is_empty!11807)))

(assert (= (and b!2448233 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14906 (h!33933 l!9164))))) b!2450161))

(assert (= (and b!2448233 ((_ is Concat!11833) (regTwo!14907 (regOne!14906 (h!33933 l!9164))))) b!2450162))

(assert (= (and b!2448233 ((_ is Star!7197) (regTwo!14907 (regOne!14906 (h!33933 l!9164))))) b!2450163))

(assert (= (and b!2448233 ((_ is Union!7197) (regTwo!14907 (regOne!14906 (h!33933 l!9164))))) b!2450164))

(declare-fun e!1555340 () Bool)

(assert (=> b!2448283 (= tp!777729 e!1555340)))

(declare-fun b!2450171 () Bool)

(declare-fun tp!778975 () Bool)

(assert (=> b!2450171 (= e!1555340 tp!778975)))

(declare-fun b!2450170 () Bool)

(declare-fun tp!778971 () Bool)

(declare-fun tp!778974 () Bool)

(assert (=> b!2450170 (= e!1555340 (and tp!778971 tp!778974))))

(declare-fun b!2450172 () Bool)

(declare-fun tp!778972 () Bool)

(declare-fun tp!778973 () Bool)

(assert (=> b!2450172 (= e!1555340 (and tp!778972 tp!778973))))

(declare-fun b!2450169 () Bool)

(assert (=> b!2450169 (= e!1555340 tp_is_empty!11807)))

(assert (= (and b!2448283 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450169))

(assert (= (and b!2448283 ((_ is Concat!11833) (regOne!14906 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450170))

(assert (= (and b!2448283 ((_ is Star!7197) (regOne!14906 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450171))

(assert (= (and b!2448283 ((_ is Union!7197) (regOne!14906 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450172))

(declare-fun e!1555342 () Bool)

(assert (=> b!2448283 (= tp!777732 e!1555342)))

(declare-fun b!2450179 () Bool)

(declare-fun tp!778985 () Bool)

(assert (=> b!2450179 (= e!1555342 tp!778985)))

(declare-fun b!2450178 () Bool)

(declare-fun tp!778981 () Bool)

(declare-fun tp!778984 () Bool)

(assert (=> b!2450178 (= e!1555342 (and tp!778981 tp!778984))))

(declare-fun b!2450180 () Bool)

(declare-fun tp!778982 () Bool)

(declare-fun tp!778983 () Bool)

(assert (=> b!2450180 (= e!1555342 (and tp!778982 tp!778983))))

(declare-fun b!2450177 () Bool)

(assert (=> b!2450177 (= e!1555342 tp_is_empty!11807)))

(assert (= (and b!2448283 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450177))

(assert (= (and b!2448283 ((_ is Concat!11833) (regTwo!14906 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450178))

(assert (= (and b!2448283 ((_ is Star!7197) (regTwo!14906 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450179))

(assert (= (and b!2448283 ((_ is Union!7197) (regTwo!14906 (regTwo!14907 (regTwo!14907 r!13927))))) b!2450180))

(declare-fun e!1555344 () Bool)

(assert (=> b!2448312 (= tp!777768 e!1555344)))

(declare-fun b!2450187 () Bool)

(declare-fun tp!778995 () Bool)

(assert (=> b!2450187 (= e!1555344 tp!778995)))

(declare-fun b!2450186 () Bool)

(declare-fun tp!778991 () Bool)

(declare-fun tp!778994 () Bool)

(assert (=> b!2450186 (= e!1555344 (and tp!778991 tp!778994))))

(declare-fun b!2450188 () Bool)

(declare-fun tp!778992 () Bool)

(declare-fun tp!778993 () Bool)

(assert (=> b!2450188 (= e!1555344 (and tp!778992 tp!778993))))

(declare-fun b!2450185 () Bool)

(assert (=> b!2450185 (= e!1555344 tp_is_empty!11807)))

(assert (= (and b!2448312 ((_ is ElementMatch!7197) (reg!7526 (reg!7526 (reg!7526 r!13927))))) b!2450185))

(assert (= (and b!2448312 ((_ is Concat!11833) (reg!7526 (reg!7526 (reg!7526 r!13927))))) b!2450186))

(assert (= (and b!2448312 ((_ is Star!7197) (reg!7526 (reg!7526 (reg!7526 r!13927))))) b!2450187))

(assert (= (and b!2448312 ((_ is Union!7197) (reg!7526 (reg!7526 (reg!7526 r!13927))))) b!2450188))

(declare-fun e!1555346 () Bool)

(assert (=> b!2448253 (= tp!777690 e!1555346)))

(declare-fun b!2450195 () Bool)

(declare-fun tp!779005 () Bool)

(assert (=> b!2450195 (= e!1555346 tp!779005)))

(declare-fun b!2450194 () Bool)

(declare-fun tp!779001 () Bool)

(declare-fun tp!779004 () Bool)

(assert (=> b!2450194 (= e!1555346 (and tp!779001 tp!779004))))

(declare-fun b!2450196 () Bool)

(declare-fun tp!779002 () Bool)

(declare-fun tp!779003 () Bool)

(assert (=> b!2450196 (= e!1555346 (and tp!779002 tp!779003))))

(declare-fun b!2450193 () Bool)

(assert (=> b!2450193 (= e!1555346 tp_is_empty!11807)))

(assert (= (and b!2448253 ((_ is ElementMatch!7197) (regOne!14907 (regOne!14907 (reg!7526 r!13927))))) b!2450193))

(assert (= (and b!2448253 ((_ is Concat!11833) (regOne!14907 (regOne!14907 (reg!7526 r!13927))))) b!2450194))

(assert (= (and b!2448253 ((_ is Star!7197) (regOne!14907 (regOne!14907 (reg!7526 r!13927))))) b!2450195))

(assert (= (and b!2448253 ((_ is Union!7197) (regOne!14907 (regOne!14907 (reg!7526 r!13927))))) b!2450196))

(declare-fun e!1555348 () Bool)

(assert (=> b!2448253 (= tp!777691 e!1555348)))

(declare-fun b!2450203 () Bool)

(declare-fun tp!779015 () Bool)

(assert (=> b!2450203 (= e!1555348 tp!779015)))

(declare-fun b!2450202 () Bool)

(declare-fun tp!779011 () Bool)

(declare-fun tp!779014 () Bool)

(assert (=> b!2450202 (= e!1555348 (and tp!779011 tp!779014))))

(declare-fun b!2450204 () Bool)

(declare-fun tp!779012 () Bool)

(declare-fun tp!779013 () Bool)

(assert (=> b!2450204 (= e!1555348 (and tp!779012 tp!779013))))

(declare-fun b!2450201 () Bool)

(assert (=> b!2450201 (= e!1555348 tp_is_empty!11807)))

(assert (= (and b!2448253 ((_ is ElementMatch!7197) (regTwo!14907 (regOne!14907 (reg!7526 r!13927))))) b!2450201))

(assert (= (and b!2448253 ((_ is Concat!11833) (regTwo!14907 (regOne!14907 (reg!7526 r!13927))))) b!2450202))

(assert (= (and b!2448253 ((_ is Star!7197) (regTwo!14907 (regOne!14907 (reg!7526 r!13927))))) b!2450203))

(assert (= (and b!2448253 ((_ is Union!7197) (regTwo!14907 (regOne!14907 (reg!7526 r!13927))))) b!2450204))

(declare-fun e!1555350 () Bool)

(assert (=> b!2448303 (= tp!777754 e!1555350)))

(declare-fun b!2450211 () Bool)

(declare-fun tp!779025 () Bool)

(assert (=> b!2450211 (= e!1555350 tp!779025)))

(declare-fun b!2450210 () Bool)

(declare-fun tp!779021 () Bool)

(declare-fun tp!779024 () Bool)

(assert (=> b!2450210 (= e!1555350 (and tp!779021 tp!779024))))

(declare-fun b!2450212 () Bool)

(declare-fun tp!779022 () Bool)

(declare-fun tp!779023 () Bool)

(assert (=> b!2450212 (= e!1555350 (and tp!779022 tp!779023))))

(declare-fun b!2450209 () Bool)

(assert (=> b!2450209 (= e!1555350 tp_is_empty!11807)))

(assert (= (and b!2448303 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450209))

(assert (= (and b!2448303 ((_ is Concat!11833) (regOne!14906 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450210))

(assert (= (and b!2448303 ((_ is Star!7197) (regOne!14906 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450211))

(assert (= (and b!2448303 ((_ is Union!7197) (regOne!14906 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450212))

(declare-fun e!1555352 () Bool)

(assert (=> b!2448303 (= tp!777757 e!1555352)))

(declare-fun b!2450219 () Bool)

(declare-fun tp!779035 () Bool)

(assert (=> b!2450219 (= e!1555352 tp!779035)))

(declare-fun b!2450218 () Bool)

(declare-fun tp!779031 () Bool)

(declare-fun tp!779034 () Bool)

(assert (=> b!2450218 (= e!1555352 (and tp!779031 tp!779034))))

(declare-fun b!2450220 () Bool)

(declare-fun tp!779032 () Bool)

(declare-fun tp!779033 () Bool)

(assert (=> b!2450220 (= e!1555352 (and tp!779032 tp!779033))))

(declare-fun b!2450217 () Bool)

(assert (=> b!2450217 (= e!1555352 tp_is_empty!11807)))

(assert (= (and b!2448303 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450217))

(assert (= (and b!2448303 ((_ is Concat!11833) (regTwo!14906 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450218))

(assert (= (and b!2448303 ((_ is Star!7197) (regTwo!14906 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450219))

(assert (= (and b!2448303 ((_ is Union!7197) (regTwo!14906 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450220))

(declare-fun e!1555354 () Bool)

(assert (=> b!2448244 (= tp!777683 e!1555354)))

(declare-fun b!2450227 () Bool)

(declare-fun tp!779045 () Bool)

(assert (=> b!2450227 (= e!1555354 tp!779045)))

(declare-fun b!2450226 () Bool)

(declare-fun tp!779041 () Bool)

(declare-fun tp!779044 () Bool)

(assert (=> b!2450226 (= e!1555354 (and tp!779041 tp!779044))))

(declare-fun b!2450228 () Bool)

(declare-fun tp!779042 () Bool)

(declare-fun tp!779043 () Bool)

(assert (=> b!2450228 (= e!1555354 (and tp!779042 tp!779043))))

(declare-fun b!2450225 () Bool)

(assert (=> b!2450225 (= e!1555354 tp_is_empty!11807)))

(assert (= (and b!2448244 ((_ is ElementMatch!7197) (reg!7526 (regOne!14906 (regOne!14907 r!13927))))) b!2450225))

(assert (= (and b!2448244 ((_ is Concat!11833) (reg!7526 (regOne!14906 (regOne!14907 r!13927))))) b!2450226))

(assert (= (and b!2448244 ((_ is Star!7197) (reg!7526 (regOne!14906 (regOne!14907 r!13927))))) b!2450227))

(assert (= (and b!2448244 ((_ is Union!7197) (reg!7526 (regOne!14906 (regOne!14907 r!13927))))) b!2450228))

(declare-fun e!1555356 () Bool)

(assert (=> b!2448235 (= tp!777669 e!1555356)))

(declare-fun b!2450235 () Bool)

(declare-fun tp!779055 () Bool)

(assert (=> b!2450235 (= e!1555356 tp!779055)))

(declare-fun b!2450234 () Bool)

(declare-fun tp!779051 () Bool)

(declare-fun tp!779054 () Bool)

(assert (=> b!2450234 (= e!1555356 (and tp!779051 tp!779054))))

(declare-fun b!2450236 () Bool)

(declare-fun tp!779052 () Bool)

(declare-fun tp!779053 () Bool)

(assert (=> b!2450236 (= e!1555356 (and tp!779052 tp!779053))))

(declare-fun b!2450233 () Bool)

(assert (=> b!2450233 (= e!1555356 tp_is_empty!11807)))

(assert (= (and b!2448235 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14906 (h!33933 l!9164))))) b!2450233))

(assert (= (and b!2448235 ((_ is Concat!11833) (regOne!14906 (regTwo!14906 (h!33933 l!9164))))) b!2450234))

(assert (= (and b!2448235 ((_ is Star!7197) (regOne!14906 (regTwo!14906 (h!33933 l!9164))))) b!2450235))

(assert (= (and b!2448235 ((_ is Union!7197) (regOne!14906 (regTwo!14906 (h!33933 l!9164))))) b!2450236))

(declare-fun e!1555358 () Bool)

(assert (=> b!2448235 (= tp!777672 e!1555358)))

(declare-fun b!2450243 () Bool)

(declare-fun tp!779065 () Bool)

(assert (=> b!2450243 (= e!1555358 tp!779065)))

(declare-fun b!2450242 () Bool)

(declare-fun tp!779061 () Bool)

(declare-fun tp!779064 () Bool)

(assert (=> b!2450242 (= e!1555358 (and tp!779061 tp!779064))))

(declare-fun b!2450244 () Bool)

(declare-fun tp!779062 () Bool)

(declare-fun tp!779063 () Bool)

(assert (=> b!2450244 (= e!1555358 (and tp!779062 tp!779063))))

(declare-fun b!2450241 () Bool)

(assert (=> b!2450241 (= e!1555358 tp_is_empty!11807)))

(assert (= (and b!2448235 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14906 (h!33933 l!9164))))) b!2450241))

(assert (= (and b!2448235 ((_ is Concat!11833) (regTwo!14906 (regTwo!14906 (h!33933 l!9164))))) b!2450242))

(assert (= (and b!2448235 ((_ is Star!7197) (regTwo!14906 (regTwo!14906 (h!33933 l!9164))))) b!2450243))

(assert (= (and b!2448235 ((_ is Union!7197) (regTwo!14906 (regTwo!14906 (h!33933 l!9164))))) b!2450244))

(declare-fun e!1555360 () Bool)

(assert (=> b!2448220 (= tp!777648 e!1555360)))

(declare-fun b!2450251 () Bool)

(declare-fun tp!779075 () Bool)

(assert (=> b!2450251 (= e!1555360 tp!779075)))

(declare-fun b!2450250 () Bool)

(declare-fun tp!779070 () Bool)

(declare-fun tp!779074 () Bool)

(assert (=> b!2450250 (= e!1555360 (and tp!779070 tp!779074))))

(declare-fun b!2450252 () Bool)

(declare-fun tp!779072 () Bool)

(declare-fun tp!779073 () Bool)

(assert (=> b!2450252 (= e!1555360 (and tp!779072 tp!779073))))

(declare-fun b!2450249 () Bool)

(assert (=> b!2450249 (= e!1555360 tp_is_empty!11807)))

(assert (= (and b!2448220 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14907 (regOne!14907 r!13927))))) b!2450249))

(assert (= (and b!2448220 ((_ is Concat!11833) (regOne!14907 (regTwo!14907 (regOne!14907 r!13927))))) b!2450250))

(assert (= (and b!2448220 ((_ is Star!7197) (regOne!14907 (regTwo!14907 (regOne!14907 r!13927))))) b!2450251))

(assert (= (and b!2448220 ((_ is Union!7197) (regOne!14907 (regTwo!14907 (regOne!14907 r!13927))))) b!2450252))

(declare-fun e!1555362 () Bool)

(assert (=> b!2448220 (= tp!777649 e!1555362)))

(declare-fun b!2450259 () Bool)

(declare-fun tp!779085 () Bool)

(assert (=> b!2450259 (= e!1555362 tp!779085)))

(declare-fun b!2450258 () Bool)

(declare-fun tp!779078 () Bool)

(declare-fun tp!779084 () Bool)

(assert (=> b!2450258 (= e!1555362 (and tp!779078 tp!779084))))

(declare-fun b!2450260 () Bool)

(declare-fun tp!779080 () Bool)

(declare-fun tp!779083 () Bool)

(assert (=> b!2450260 (= e!1555362 (and tp!779080 tp!779083))))

(declare-fun b!2450256 () Bool)

(assert (=> b!2450256 (= e!1555362 tp_is_empty!11807)))

(assert (= (and b!2448220 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14907 (regOne!14907 r!13927))))) b!2450256))

(assert (= (and b!2448220 ((_ is Concat!11833) (regTwo!14907 (regTwo!14907 (regOne!14907 r!13927))))) b!2450258))

(assert (= (and b!2448220 ((_ is Star!7197) (regTwo!14907 (regTwo!14907 (regOne!14907 r!13927))))) b!2450259))

(assert (= (and b!2448220 ((_ is Union!7197) (regTwo!14907 (regTwo!14907 (regOne!14907 r!13927))))) b!2450260))

(declare-fun e!1555364 () Bool)

(assert (=> b!2448305 (= tp!777755 e!1555364)))

(declare-fun b!2450265 () Bool)

(declare-fun tp!779095 () Bool)

(assert (=> b!2450265 (= e!1555364 tp!779095)))

(declare-fun b!2450263 () Bool)

(declare-fun tp!779087 () Bool)

(declare-fun tp!779093 () Bool)

(assert (=> b!2450263 (= e!1555364 (and tp!779087 tp!779093))))

(declare-fun b!2450267 () Bool)

(declare-fun tp!779088 () Bool)

(declare-fun tp!779091 () Bool)

(assert (=> b!2450267 (= e!1555364 (and tp!779088 tp!779091))))

(declare-fun b!2450262 () Bool)

(assert (=> b!2450262 (= e!1555364 tp_is_empty!11807)))

(assert (= (and b!2448305 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450262))

(assert (= (and b!2448305 ((_ is Concat!11833) (regOne!14907 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450263))

(assert (= (and b!2448305 ((_ is Star!7197) (regOne!14907 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450265))

(assert (= (and b!2448305 ((_ is Union!7197) (regOne!14907 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450267))

(declare-fun e!1555365 () Bool)

(assert (=> b!2448305 (= tp!777756 e!1555365)))

(declare-fun b!2450271 () Bool)

(declare-fun tp!779102 () Bool)

(assert (=> b!2450271 (= e!1555365 tp!779102)))

(declare-fun b!2450270 () Bool)

(declare-fun tp!779096 () Bool)

(declare-fun tp!779100 () Bool)

(assert (=> b!2450270 (= e!1555365 (and tp!779096 tp!779100))))

(declare-fun b!2450273 () Bool)

(declare-fun tp!779097 () Bool)

(declare-fun tp!779099 () Bool)

(assert (=> b!2450273 (= e!1555365 (and tp!779097 tp!779099))))

(declare-fun b!2450269 () Bool)

(assert (=> b!2450269 (= e!1555365 tp_is_empty!11807)))

(assert (= (and b!2448305 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450269))

(assert (= (and b!2448305 ((_ is Concat!11833) (regTwo!14907 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450270))

(assert (= (and b!2448305 ((_ is Star!7197) (regTwo!14907 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450271))

(assert (= (and b!2448305 ((_ is Union!7197) (regTwo!14907 (regTwo!14907 (regTwo!14906 r!13927))))) b!2450273))

(declare-fun e!1555367 () Bool)

(assert (=> b!2448328 (= tp!777788 e!1555367)))

(declare-fun b!2450279 () Bool)

(declare-fun tp!779112 () Bool)

(assert (=> b!2450279 (= e!1555367 tp!779112)))

(declare-fun b!2450278 () Bool)

(declare-fun tp!779106 () Bool)

(declare-fun tp!779110 () Bool)

(assert (=> b!2450278 (= e!1555367 (and tp!779106 tp!779110))))

(declare-fun b!2450281 () Bool)

(declare-fun tp!779107 () Bool)

(declare-fun tp!779109 () Bool)

(assert (=> b!2450281 (= e!1555367 (and tp!779107 tp!779109))))

(declare-fun b!2450277 () Bool)

(assert (=> b!2450277 (= e!1555367 tp_is_empty!11807)))

(assert (= (and b!2448328 ((_ is ElementMatch!7197) (reg!7526 (regTwo!14906 (reg!7526 r!13927))))) b!2450277))

(assert (= (and b!2448328 ((_ is Concat!11833) (reg!7526 (regTwo!14906 (reg!7526 r!13927))))) b!2450278))

(assert (= (and b!2448328 ((_ is Star!7197) (reg!7526 (regTwo!14906 (reg!7526 r!13927))))) b!2450279))

(assert (= (and b!2448328 ((_ is Union!7197) (reg!7526 (regTwo!14906 (reg!7526 r!13927))))) b!2450281))

(declare-fun e!1555369 () Bool)

(assert (=> b!2448319 (= tp!777774 e!1555369)))

(declare-fun b!2450289 () Bool)

(declare-fun tp!779124 () Bool)

(assert (=> b!2450289 (= e!1555369 tp!779124)))

(declare-fun b!2450287 () Bool)

(declare-fun tp!779116 () Bool)

(declare-fun tp!779122 () Bool)

(assert (=> b!2450287 (= e!1555369 (and tp!779116 tp!779122))))

(declare-fun b!2450291 () Bool)

(declare-fun tp!779117 () Bool)

(declare-fun tp!779118 () Bool)

(assert (=> b!2450291 (= e!1555369 (and tp!779117 tp!779118))))

(declare-fun b!2450285 () Bool)

(assert (=> b!2450285 (= e!1555369 tp_is_empty!11807)))

(assert (= (and b!2448319 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450285))

(assert (= (and b!2448319 ((_ is Concat!11833) (regOne!14906 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450287))

(assert (= (and b!2448319 ((_ is Star!7197) (regOne!14906 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450289))

(assert (= (and b!2448319 ((_ is Union!7197) (regOne!14906 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450291))

(declare-fun e!1555371 () Bool)

(assert (=> b!2448319 (= tp!777777 e!1555371)))

(declare-fun b!2450296 () Bool)

(declare-fun tp!779133 () Bool)

(assert (=> b!2450296 (= e!1555371 tp!779133)))

(declare-fun b!2450294 () Bool)

(declare-fun tp!779126 () Bool)

(declare-fun tp!779130 () Bool)

(assert (=> b!2450294 (= e!1555371 (and tp!779126 tp!779130))))

(declare-fun b!2450298 () Bool)

(declare-fun tp!779127 () Bool)

(declare-fun tp!779129 () Bool)

(assert (=> b!2450298 (= e!1555371 (and tp!779127 tp!779129))))

(declare-fun b!2450293 () Bool)

(assert (=> b!2450293 (= e!1555371 tp_is_empty!11807)))

(assert (= (and b!2448319 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450293))

(assert (= (and b!2448319 ((_ is Concat!11833) (regTwo!14906 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450294))

(assert (= (and b!2448319 ((_ is Star!7197) (regTwo!14906 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450296))

(assert (= (and b!2448319 ((_ is Union!7197) (regTwo!14906 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450298))

(declare-fun e!1555373 () Bool)

(assert (=> b!2448269 (= tp!777710 e!1555373)))

(declare-fun b!2450303 () Bool)

(declare-fun tp!779140 () Bool)

(assert (=> b!2450303 (= e!1555373 tp!779140)))

(declare-fun b!2450302 () Bool)

(declare-fun tp!779136 () Bool)

(declare-fun tp!779139 () Bool)

(assert (=> b!2450302 (= e!1555373 (and tp!779136 tp!779139))))

(declare-fun b!2450304 () Bool)

(declare-fun tp!779137 () Bool)

(declare-fun tp!779138 () Bool)

(assert (=> b!2450304 (= e!1555373 (and tp!779137 tp!779138))))

(declare-fun b!2450301 () Bool)

(assert (=> b!2450301 (= e!1555373 tp_is_empty!11807)))

(assert (= (and b!2448269 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450301))

(assert (= (and b!2448269 ((_ is Concat!11833) (regOne!14907 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450302))

(assert (= (and b!2448269 ((_ is Star!7197) (regOne!14907 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450303))

(assert (= (and b!2448269 ((_ is Union!7197) (regOne!14907 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450304))

(declare-fun e!1555376 () Bool)

(assert (=> b!2448269 (= tp!777711 e!1555376)))

(declare-fun b!2450315 () Bool)

(declare-fun tp!779155 () Bool)

(assert (=> b!2450315 (= e!1555376 tp!779155)))

(declare-fun b!2450314 () Bool)

(declare-fun tp!779151 () Bool)

(declare-fun tp!779154 () Bool)

(assert (=> b!2450314 (= e!1555376 (and tp!779151 tp!779154))))

(declare-fun b!2450316 () Bool)

(declare-fun tp!779152 () Bool)

(declare-fun tp!779153 () Bool)

(assert (=> b!2450316 (= e!1555376 (and tp!779152 tp!779153))))

(declare-fun b!2450313 () Bool)

(assert (=> b!2450313 (= e!1555376 tp_is_empty!11807)))

(assert (= (and b!2448269 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450313))

(assert (= (and b!2448269 ((_ is Concat!11833) (regTwo!14907 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450314))

(assert (= (and b!2448269 ((_ is Star!7197) (regTwo!14907 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450315))

(assert (= (and b!2448269 ((_ is Union!7197) (regTwo!14907 (regTwo!14906 (regTwo!14907 r!13927))))) b!2450316))

(declare-fun e!1555378 () Bool)

(assert (=> b!2448260 (= tp!777703 e!1555378)))

(declare-fun b!2450323 () Bool)

(declare-fun tp!779165 () Bool)

(assert (=> b!2450323 (= e!1555378 tp!779165)))

(declare-fun b!2450322 () Bool)

(declare-fun tp!779161 () Bool)

(declare-fun tp!779164 () Bool)

(assert (=> b!2450322 (= e!1555378 (and tp!779161 tp!779164))))

(declare-fun b!2450324 () Bool)

(declare-fun tp!779162 () Bool)

(declare-fun tp!779163 () Bool)

(assert (=> b!2450324 (= e!1555378 (and tp!779162 tp!779163))))

(declare-fun b!2450321 () Bool)

(assert (=> b!2450321 (= e!1555378 tp_is_empty!11807)))

(assert (= (and b!2448260 ((_ is ElementMatch!7197) (reg!7526 (reg!7526 (regTwo!14906 r!13927))))) b!2450321))

(assert (= (and b!2448260 ((_ is Concat!11833) (reg!7526 (reg!7526 (regTwo!14906 r!13927))))) b!2450322))

(assert (= (and b!2448260 ((_ is Star!7197) (reg!7526 (reg!7526 (regTwo!14906 r!13927))))) b!2450323))

(assert (= (and b!2448260 ((_ is Union!7197) (reg!7526 (reg!7526 (regTwo!14906 r!13927))))) b!2450324))

(declare-fun e!1555380 () Bool)

(assert (=> b!2448251 (= tp!777689 e!1555380)))

(declare-fun b!2450331 () Bool)

(declare-fun tp!779175 () Bool)

(assert (=> b!2450331 (= e!1555380 tp!779175)))

(declare-fun b!2450330 () Bool)

(declare-fun tp!779168 () Bool)

(declare-fun tp!779174 () Bool)

(assert (=> b!2450330 (= e!1555380 (and tp!779168 tp!779174))))

(declare-fun b!2450332 () Bool)

(declare-fun tp!779170 () Bool)

(declare-fun tp!779173 () Bool)

(assert (=> b!2450332 (= e!1555380 (and tp!779170 tp!779173))))

(declare-fun b!2450328 () Bool)

(assert (=> b!2450328 (= e!1555380 tp_is_empty!11807)))

(assert (= (and b!2448251 ((_ is ElementMatch!7197) (regOne!14906 (regOne!14907 (reg!7526 r!13927))))) b!2450328))

(assert (= (and b!2448251 ((_ is Concat!11833) (regOne!14906 (regOne!14907 (reg!7526 r!13927))))) b!2450330))

(assert (= (and b!2448251 ((_ is Star!7197) (regOne!14906 (regOne!14907 (reg!7526 r!13927))))) b!2450331))

(assert (= (and b!2448251 ((_ is Union!7197) (regOne!14906 (regOne!14907 (reg!7526 r!13927))))) b!2450332))

(declare-fun e!1555382 () Bool)

(assert (=> b!2448251 (= tp!777692 e!1555382)))

(declare-fun b!2450337 () Bool)

(declare-fun tp!779184 () Bool)

(assert (=> b!2450337 (= e!1555382 tp!779184)))

(declare-fun b!2450335 () Bool)

(declare-fun tp!779177 () Bool)

(declare-fun tp!779183 () Bool)

(assert (=> b!2450335 (= e!1555382 (and tp!779177 tp!779183))))

(declare-fun b!2450339 () Bool)

(declare-fun tp!779179 () Bool)

(declare-fun tp!779182 () Bool)

(assert (=> b!2450339 (= e!1555382 (and tp!779179 tp!779182))))

(declare-fun b!2450333 () Bool)

(assert (=> b!2450333 (= e!1555382 tp_is_empty!11807)))

(assert (= (and b!2448251 ((_ is ElementMatch!7197) (regTwo!14906 (regOne!14907 (reg!7526 r!13927))))) b!2450333))

(assert (= (and b!2448251 ((_ is Concat!11833) (regTwo!14906 (regOne!14907 (reg!7526 r!13927))))) b!2450335))

(assert (= (and b!2448251 ((_ is Star!7197) (regTwo!14906 (regOne!14907 (reg!7526 r!13927))))) b!2450337))

(assert (= (and b!2448251 ((_ is Union!7197) (regTwo!14906 (regOne!14907 (reg!7526 r!13927))))) b!2450339))

(declare-fun e!1555385 () Bool)

(assert (=> b!2448218 (= tp!777647 e!1555385)))

(declare-fun b!2450351 () Bool)

(declare-fun tp!779200 () Bool)

(assert (=> b!2450351 (= e!1555385 tp!779200)))

(declare-fun b!2450350 () Bool)

(declare-fun tp!779196 () Bool)

(declare-fun tp!779199 () Bool)

(assert (=> b!2450350 (= e!1555385 (and tp!779196 tp!779199))))

(declare-fun b!2450352 () Bool)

(declare-fun tp!779197 () Bool)

(declare-fun tp!779198 () Bool)

(assert (=> b!2450352 (= e!1555385 (and tp!779197 tp!779198))))

(declare-fun b!2450349 () Bool)

(assert (=> b!2450349 (= e!1555385 tp_is_empty!11807)))

(assert (= (and b!2448218 ((_ is ElementMatch!7197) (regOne!14906 (regTwo!14907 (regOne!14907 r!13927))))) b!2450349))

(assert (= (and b!2448218 ((_ is Concat!11833) (regOne!14906 (regTwo!14907 (regOne!14907 r!13927))))) b!2450350))

(assert (= (and b!2448218 ((_ is Star!7197) (regOne!14906 (regTwo!14907 (regOne!14907 r!13927))))) b!2450351))

(assert (= (and b!2448218 ((_ is Union!7197) (regOne!14906 (regTwo!14907 (regOne!14907 r!13927))))) b!2450352))

(declare-fun e!1555387 () Bool)

(assert (=> b!2448218 (= tp!777650 e!1555387)))

(declare-fun b!2450359 () Bool)

(declare-fun tp!779210 () Bool)

(assert (=> b!2450359 (= e!1555387 tp!779210)))

(declare-fun b!2450358 () Bool)

(declare-fun tp!779206 () Bool)

(declare-fun tp!779209 () Bool)

(assert (=> b!2450358 (= e!1555387 (and tp!779206 tp!779209))))

(declare-fun b!2450360 () Bool)

(declare-fun tp!779207 () Bool)

(declare-fun tp!779208 () Bool)

(assert (=> b!2450360 (= e!1555387 (and tp!779207 tp!779208))))

(declare-fun b!2450357 () Bool)

(assert (=> b!2450357 (= e!1555387 tp_is_empty!11807)))

(assert (= (and b!2448218 ((_ is ElementMatch!7197) (regTwo!14906 (regTwo!14907 (regOne!14907 r!13927))))) b!2450357))

(assert (= (and b!2448218 ((_ is Concat!11833) (regTwo!14906 (regTwo!14907 (regOne!14907 r!13927))))) b!2450358))

(assert (= (and b!2448218 ((_ is Star!7197) (regTwo!14906 (regTwo!14907 (regOne!14907 r!13927))))) b!2450359))

(assert (= (and b!2448218 ((_ is Union!7197) (regTwo!14906 (regTwo!14907 (regOne!14907 r!13927))))) b!2450360))

(declare-fun e!1555389 () Bool)

(assert (=> b!2448321 (= tp!777775 e!1555389)))

(declare-fun b!2450366 () Bool)

(declare-fun tp!779220 () Bool)

(assert (=> b!2450366 (= e!1555389 tp!779220)))

(declare-fun b!2450364 () Bool)

(declare-fun tp!779212 () Bool)

(declare-fun tp!779219 () Bool)

(assert (=> b!2450364 (= e!1555389 (and tp!779212 tp!779219))))

(declare-fun b!2450368 () Bool)

(declare-fun tp!779213 () Bool)

(declare-fun tp!779216 () Bool)

(assert (=> b!2450368 (= e!1555389 (and tp!779213 tp!779216))))

(declare-fun b!2450363 () Bool)

(assert (=> b!2450363 (= e!1555389 tp_is_empty!11807)))

(assert (= (and b!2448321 ((_ is ElementMatch!7197) (regOne!14907 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450363))

(assert (= (and b!2448321 ((_ is Concat!11833) (regOne!14907 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450364))

(assert (= (and b!2448321 ((_ is Star!7197) (regOne!14907 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450366))

(assert (= (and b!2448321 ((_ is Union!7197) (regOne!14907 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450368))

(declare-fun e!1555391 () Bool)

(assert (=> b!2448321 (= tp!777776 e!1555391)))

(declare-fun b!2450371 () Bool)

(declare-fun tp!779228 () Bool)

(assert (=> b!2450371 (= e!1555391 tp!779228)))

(declare-fun b!2450370 () Bool)

(declare-fun tp!779221 () Bool)

(declare-fun tp!779226 () Bool)

(assert (=> b!2450370 (= e!1555391 (and tp!779221 tp!779226))))

(declare-fun b!2450373 () Bool)

(declare-fun tp!779223 () Bool)

(declare-fun tp!779224 () Bool)

(assert (=> b!2450373 (= e!1555391 (and tp!779223 tp!779224))))

(declare-fun b!2450369 () Bool)

(assert (=> b!2450369 (= e!1555391 tp_is_empty!11807)))

(assert (= (and b!2448321 ((_ is ElementMatch!7197) (regTwo!14907 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450369))

(assert (= (and b!2448321 ((_ is Concat!11833) (regTwo!14907 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450370))

(assert (= (and b!2448321 ((_ is Star!7197) (regTwo!14907 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450371))

(assert (= (and b!2448321 ((_ is Union!7197) (regTwo!14907 (regTwo!14906 (regTwo!14906 r!13927))))) b!2450373))

(declare-fun b_lambda!75063 () Bool)

(assert (= b_lambda!75049 (or d!706197 b_lambda!75063)))

(declare-fun bs!465687 () Bool)

(declare-fun d!706631 () Bool)

(assert (= bs!465687 (and d!706631 d!706197)))

(assert (=> bs!465687 (= (dynLambda!12263 lambda!92777 (h!33933 (t!208607 (t!208607 l!9164)))) (validRegex!2897 (h!33933 (t!208607 (t!208607 l!9164)))))))

(declare-fun m!2824477 () Bool)

(assert (=> bs!465687 m!2824477))

(assert (=> b!2448478 d!706631))

(declare-fun b_lambda!75065 () Bool)

(assert (= b_lambda!75057 (or start!239146 b_lambda!75065)))

(declare-fun bs!465688 () Bool)

(declare-fun d!706633 () Bool)

(assert (= bs!465688 (and d!706633 start!239146)))

(assert (=> bs!465688 (= (dynLambda!12263 lambda!92751 (h!33933 (t!208607 (t!208607 l!9164)))) (validRegex!2897 (h!33933 (t!208607 (t!208607 l!9164)))))))

(assert (=> bs!465688 m!2824477))

(assert (=> b!2448808 d!706633))

(declare-fun b_lambda!75067 () Bool)

(assert (= b_lambda!75059 (or d!706015 b_lambda!75067)))

(declare-fun bs!465689 () Bool)

(declare-fun d!706635 () Bool)

(assert (= bs!465689 (and d!706635 d!706015)))

(assert (=> bs!465689 (= (dynLambda!12263 lambda!92764 (h!33933 (t!208607 (t!208607 l!9164)))) (validRegex!2897 (h!33933 (t!208607 (t!208607 l!9164)))))))

(assert (=> bs!465689 m!2824477))

(assert (=> b!2448925 d!706635))

(declare-fun b_lambda!75069 () Bool)

(assert (= b_lambda!75047 (or d!706027 b_lambda!75069)))

(declare-fun bs!465690 () Bool)

(declare-fun d!706637 () Bool)

(assert (= bs!465690 (and d!706637 d!706027)))

(assert (=> bs!465690 (= (dynLambda!12263 lambda!92765 (h!33933 (t!208607 l!9164))) (validRegex!2897 (h!33933 (t!208607 l!9164))))))

(assert (=> bs!465690 m!2823591))

(assert (=> b!2448458 d!706637))

(check-sat (not b!2450012) (not b!2449535) (not b!2449616) (not b!2448674) (not b!2449994) (not b_lambda!75045) (not b!2449671) (not d!706529) (not b!2450002) (not b!2449868) (not bm!150433) (not b!2449892) (not b!2449502) (not b!2450236) (not b!2449646) (not b!2449569) (not b!2449310) (not b!2449883) (not b!2449678) (not b!2450281) (not b!2448685) (not d!706301) (not b!2449915) (not bm!150486) (not b!2449972) (not b!2449662) (not b!2449669) (not b!2449356) (not b!2449016) (not b!2449512) (not b!2449191) (not d!706273) (not b!2450122) (not b!2449800) (not b!2449908) (not b!2449173) (not d!706489) (not b!2449290) (not b!2449733) (not b!2449884) (not b!2449835) (not b!2449206) (not b!2449876) (not b_lambda!75069) (not bm!150365) (not d!706527) (not b!2449135) (not b!2450130) (not b!2449364) (not b!2449245) (not b!2448901) (not bm!150479) (not b!2450042) (not b!2449169) (not bm!150391) (not b!2449275) (not b!2449600) (not b!2448995) (not b!2449556) (not b!2449773) (not b!2449288) (not b!2449347) (not b!2448782) (not b!2449392) (not b!2450146) (not b!2450323) (not b!2450058) (not b!2449930) (not d!706499) (not b!2450091) (not d!706399) (not b!2448862) (not b!2448781) (not bm!150434) (not b!2448566) (not b!2449510) (not b!2449447) (not bm!150367) (not b!2448847) (not b!2450218) (not b!2449255) (not b!2450003) (not b!2450244) (not b!2449555) (not b!2449464) (not b!2450170) (not b!2449291) (not b!2450373) (not b!2450359) (not b!2449383) (not b!2450259) (not b!2449341) (not b!2448843) (not b!2449586) (not b!2449816) (not b!2449308) (not bm!150455) (not b!2449814) (not b!2449679) (not b!2450171) (not b!2449823) (not b!2448538) (not b!2450075) (not b!2449787) (not b!2449899) (not b!2449693) (not bm!150496) (not b!2449843) (not b!2450131) (not bm!150481) (not d!706423) (not b!2448774) (not b!2449626) (not b!2448854) (not b!2450106) (not b_lambda!75041) (not b!2450123) (not b!2450155) (not b!2449766) (not bm!150393) (not b!2449268) (not b!2449323) (not b!2450252) (not b!2450154) (not b!2450220) (not d!706607) (not b!2448926) (not b!2449557) (not b!2449618) (not b!2449701) (not bm!150358) (not b!2449783) (not b!2449448) (not b!2450100) (not b!2448745) (not b!2449633) (not b!2449355) (not b!2449592) (not b!2448614) (not b!2449768) (not b!2450035) (not b!2449374) (not b!2450271) (not b!2449645) (not bm!150412) (not b!2450260) (not b!2449804) (not bm!150395) (not b!2450291) (not b!2449938) (not b!2448479) (not b!2449703) (not b!2450082) (not b!2449273) (not b!2450099) (not b!2449478) (not b!2450278) (not d!706621) (not b!2449330) (not b!2449852) (not b!2450139) (not d!706535) (not b!2449400) (not b!2449594) (not b!2449609) (not b!2449815) (not b!2450162) (not b!2449299) (not b!2450267) (not b!2449781) (not d!706445) (not d!706543) (not b!2448809) (not b!2448749) (not bm!150430) (not b!2449324) (not b!2449408) (not bm!150354) (not b!2449663) (not b!2449264) (not b!2448964) (not b!2449376) (not b!2449199) (not b!2448669) (not bm!150388) (not bm!150463) (not b!2449759) (not b!2449319) (not b!2450020) (not b!2449406) (not b!2449344) (not b!2449655) (not b!2450011) (not d!706605) (not b!2450114) (not b!2449695) (not b!2449346) (not b!2450263) (not b!2449431) (not b!2449354) (not b!2449272) (not b!2448751) (not b!2449456) (not b!2448565) (not b!2449570) (not b!2449979) (not b!2449229) (not d!706431) (not b!2450179) (not b!2449924) (not bm!150387) (not b!2450270) (not b!2449727) (not b!2449686) (not b!2449971) (not b!2448493) (not bs!465687) (not b!2449970) (not b_lambda!75043) (not b!2449850) (not b!2449956) (not b!2449294) (not b!2449487) (not b!2450242) (not b!2450351) (not b!2448905) (not b!2449718) (not b!2449851) (not b!2450330) (not b!2449900) (not b!2448818) (not b!2450337) (not d!706541) (not b!2449504) (not bm!150408) (not b!2449424) (not bm!150462) (not b!2448656) (not b!2448689) (not b!2449593) (not d!706383) (not b!2449472) (not b!2450279) (not b!2449326) (not b!2448910) (not b!2449233) (not b!2449462) (not d!706263) (not b!2449223) (not b!2449923) (not b!2449758) (not b!2449577) (not bm!150413) (not b!2448908) (not b!2449228) (not b!2449295) (not b!2450350) (not b!2448691) (not b!2450132) (not b!2449292) (not b!2449978) (not b!2450188) (not b!2449471) (not b!2449931) (not b!2450116) (not b!2449371) (not bm!150442) (not b!2449743) (not b!2450187) (not b!2450302) (not bm!150352) (not b!2450074) (not b!2449844) (not b!2449362) (not b!2450148) (not b!2449470) (not bm!150406) (not b!2448988) (not b!2448736) (not b!2450026) (not b!2449488) (not b!2449562) (not bm!150439) (not b!2450084) (not b!2449601) (not b!2449955) (not b!2450051) (not b!2449796) (not b!2449751) (not b!2450092) (not bm!150396) (not d!706615) (not b!2450180) (not b!2448494) (not b!2449251) (not bm!150400) (not b!2449518) (not b!2449423) (not b!2449821) (not b!2448546) (not b!2449834) (not b!2449670) (not bm!150418) (not b!2449828) (not b!2448836) (not b!2449775) (not b!2450298) (not b!2449070) (not b!2449496) (not b!2449694) (not d!706537) (not b!2450370) (not b!2450124) (not b!2449422) (not b!2450027) (not b!2448863) (not b!2448616) (not b!2449859) (not b!2449946) (not b!2449311) (not b!2448803) (not b!2448688) (not b!2449858) (not b!2450339) (not b!2449677) (not b!2449167) (not b!2449172) (not b!2449348) (not b!2449742) (not b!2450258) (not b!2448716) (not b!2448795) (not d!706443) (not b!2449252) (not b!2448743) (not b!2449332) (not b!2449734) (not d!706403) (not b!2449306) (not b!2450371) (not bm!150411) (not b!2450083) (not b!2448909) (not b!2449240) (not b!2449263) (not b!2449271) (not b!2449320) (not b!2449391) (not b!2450115) (not bm!150376) (not b!2449837) (not bm!150461) (not b!2448646) (not b!2449767) (not b!2449335) (not b!2449399) (not b!2449260) (not b!2449922) (not b!2449225) (not b!2449531) (not b!2450322) (not b!2450234) (not b!2449267) (not b!2449940) (not bm!150420) (not b!2449236) (not b!2449866) (not b!2448675) (not bm!150493) (not b!2449608) (not b!2449874) (not b!2449625) (not b!2449986) (not b!2449277) (not b!2449438) (not b!2449875) (not b!2449287) (not b!2449247) (not bm!150424) (not b!2449947) (not b!2450195) (not b!2450368) (not b!2450067) (not b!2450059) (not b!2449576) (not b!2449249) (not b!2449015) (not b!2448660) (not b!2449529) (not b!2449750) (not d!706603) (not b!2448903) (not b!2449709) (not b!2449227) (not b!2449248) (not b!2450303) (not b!2450147) (not b!2449932) (not b!2450360) (not b!2450052) (not b!2449008) (not b_lambda!75021) (not b!2449312) (not b!2449711) (not b!2449387) (not b!2448963) (not b!2449891) (not b!2449385) (not b!2449009) (not bm!150452) (not bm!150414) (not b!2449073) (not b!2448934) (not b!2449827) (not bm!150371) (not b!2449995) (not bm!150373) (not b!2450156) (not b!2449568) (not b!2449882) (not b!2449480) (not b!2449632) (not b_lambda!75067) (not b!2448466) (not b!2450226) (not b!2450331) (not b!2449916) (not b!2449239) (not b!2449486) (not d!706549) (not b!2449534) (not b!2449503) (not b!2450028) (not b!2449013) (not d!706471) (not b!2449076) (not b!2450010) (not b!2450186) (not bm!150409) (not b!2449296) (not b!2449549) (not b!2449224) (not b!2448667) (not b!2449789) (not b!2448740) (not b!2449578) (not b!2449165) (not b!2449527) (not b!2449042) (not b!2450296) (not d!706463) (not bm!150428) (not b!2449906) (not d!706447) (not b!2448543) tp_is_empty!11807 (not b!2449174) (not b!2450044) (not b!2449519) (not b!2449017) (not b!2448687) (not b!2450324) (not b!2449654) (not b_lambda!75063) (not b!2448797) (not b!2450172) (not b!2450265) (not bm!150454) (not b!2449541) (not bm!150389) (not b!2449907) (not b!2449039) (not b!2449735) (not b!2449776) (not b!2449045) (not b!2448540) (not b!2449642) (not b!2449494) (not b!2449653) (not b!2449725) (not b!2450163) (not b!2449687) (not b!2449710) (not b!2450332) (not b!2449322) (not d!706449) (not b!2449842) (not b!2449390) (not b!2450194) (not b!2449440) (not b!2449314) (not b!2450036) (not b!2449021) (not b!2448747) (not b!2448718) (not b!2449261) (not b!2448676) (not b!2449584) (not b!2450211) (not bm!150402) (not b!2450108) (not b!2448758) (not bm!150356) (not b!2449372) (not b!2449416) (not b!2449479) (not b!2449316) (not b!2448861) (not b!2449343) (not b!2449331) (not b!2448459) (not b!2449744) (not b!2449414) (not b!2449334) (not bm!150438) (not bm!150494) (not b!2449243) (not b!2448788) (not b!2450076) (not b!2450210) (not b!2450273) (not b!2449415) (not b!2449610) (not b!2448994) (not b!2449307) (not b!2450316) (not b!2449536) (not b!2449898) (not b!2450219) (not b!2450289) (not b!2449300) (not b!2449455) (not b!2449939) (not b!2449520) (not b!2449463) (not d!706505) (not b!2449914) (not b!2448931) (not b!2448959) (not b!2449963) (not b!2450227) (not b!2450202) (not b!2448957) (not b!2450066) (not b!2450068) (not b!2448720) (not b!2449336) (not b!2449702) (not b!2448658) (not bm!150459) (not b!2449617) (not b!2449256) (not b!2448738) (not b!2449964) (not b!2448542) (not b!2449890) (not bm!150491) (not b!2450352) (not b!2448437) (not b!2449259) (not bm!150416) (not b!2449954) (not b!2449370) (not b!2449298) (not b!2449819) (not b!2450060) (not b!2450228) (not b!2449235) (not bm!150440) (not b!2450043) (not b!2449269) (not b!2449375) (not b!2450050) (not b!2448792) (not b!2449826) (not b!2450287) (not b!2449808) (not b!2450004) (not d!706279) (not b!2448916) (not b!2449327) (not bs!465688) (not b!2450107) (not b!2449548) (not b!2450250) (not b!2450315) (not b!2449231) (not b!2448858) (not b!2448962) (not d!706307) (not b!2449253) (not b!2449791) (not b!2449430) (not b!2448955) (not bs!465690) (not b!2450235) (not b!2448693) (not b!2450164) (not b!2448841) (not bm!150377) (not b!2450243) (not bm!150436) (not b!2448856) (not b!2449798) (not b!2450366) (not b!2448835) (not b!2450098) (not b!2450138) (not bm!150444) (not b!2449996) (not b!2448878) (not b!2449987) (not b!2448712) (not b!2449624) (not b!2450196) (not b!2450034) (not b!2449407) (not b!2450314) (not b!2449286) (not b!2449265) (not b!2449640) (not b!2449719) (not b!2449328) (not b!2449661) (not bs!465689) (not b!2450178) (not b!2449988) (not b!2450212) (not b!2449634) (not b!2448790) (not b!2449315) (not b!2449760) (not b!2448623) (not b!2449641) (not b!2450335) (not b!2448767) (not b!2449014) (not b!2450140) (not b!2449205) (not b!2449237) (not b!2449860) (not bm!150405) (not b!2449585) (not b!2450251) (not b!2449276) (not b!2450304) (not d!706331) (not b!2449363) (not b!2449752) (not b!2449726) (not b!2449806) (not b!2450204) (not b!2449602) (not b!2450358) (not b!2449980) (not b!2448796) (not b!2449398) (not d!706573) (not b!2449948) (not b!2448783) (not b!2449717) (not b!2449446) (not b!2448671) (not b!2449439) (not b!2448426) (not b!2449241) (not b!2449232) (not b!2449511) (not b!2449495) (not b!2449867) (not b!2448776) (not b!2450018) (not bm!150456) (not b!2449432) (not b!2449647) (not b!2449454) (not b!2449244) (not b!2450364) (not b!2449318) (not d!706511) (not b!2449779) (not d!706509) (not b!2448778) (not b!2448744) (not b!2448690) (not b!2449547) (not b!2448502) (not b!2450019) (not b!2449685) (not b_lambda!75065) (not b!2449962) (not b!2449257) (not b!2450090) (not b!2450294) (not b!2450203))
(check-sat)
