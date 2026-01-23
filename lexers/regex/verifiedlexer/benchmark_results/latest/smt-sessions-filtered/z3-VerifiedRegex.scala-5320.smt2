; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272148 () Bool)

(assert start!272148)

(declare-fun res!1170476 () Bool)

(declare-fun e!1778045 () Bool)

(assert (=> start!272148 (=> (not res!1170476) (not e!1778045))))

(declare-datatypes ((T!54766 0))(
  ( (T!54767 (val!10328 Int)) )
))
(declare-datatypes ((List!32949 0))(
  ( (Nil!32840) (Cons!32840 (h!38260 T!54766) (t!229900 List!32949)) )
))
(declare-fun ll!54 () List!32949)

(get-info :version)

(assert (=> start!272148 (= res!1170476 (not ((_ is Nil!32840) ll!54)))))

(assert (=> start!272148 e!1778045))

(declare-fun e!1778043 () Bool)

(assert (=> start!272148 e!1778043))

(declare-fun e!1778044 () Bool)

(assert (=> start!272148 e!1778044))

(declare-datatypes ((Conc!10166 0) (List!32951 0) (IArray!20337 0) (Object!5248 0) (BalanceConc!19956 0))(
  ( (Node!10166 (left!24770 Conc!10166) (right!25100 Conc!10166) (csize!20562 Int) (cheight!10377 Int)) (Leaf!15487 (xs!13278 IArray!20337) (csize!20563 Int)) (Empty!10166) )
  ( (Nil!32841) (Cons!32841 (h!38261 Object!5248) (t!229901 List!32951)) )
  ( (IArray!20338 (innerList!10226 List!32951)) )
  ( (BalanceConc!19955 (value!158108 BalanceConc!19956)) (List!32950 (value!158109 List!32951)) (Character!108 (value!158110 (_ BitVec 16))) (Open!108 (value!158111 Int)) )
  ( (BalanceConc!19957 (c!455468 Conc!10166)) )
))
(declare-datatypes ((Vector!224 0))(
  ( (Vector!225 (underlying!8352 Object!5248) (overflowing!169 List!32949)) )
))
(declare-fun lt!1004319 () Vector!224)

(declare-fun lt!1004318 () List!32949)

(declare-fun b!2811429 () Bool)

(declare-fun list!12301 (Vector!224) List!32949)

(declare-fun rec!19 (List!32949 Vector!224) Vector!224)

(declare-fun ++!8061 (List!32949 List!32949) List!32949)

(assert (=> b!2811429 (= e!1778045 (not (= (list!12301 (rec!19 (t!229900 ll!54) lt!1004319)) (++!8061 lt!1004318 (t!229900 ll!54)))))))

(declare-fun v!5966 () Vector!224)

(declare-fun $colon+!198 (List!32949 T!54766) List!32949)

(assert (=> b!2811429 (= lt!1004318 ($colon+!198 (list!12301 v!5966) (h!38260 ll!54)))))

(assert (=> b!2811429 (= lt!1004318 (list!12301 lt!1004319))))

(declare-fun $colon+!199 (Vector!224 T!54766) Vector!224)

(assert (=> b!2811429 (= lt!1004319 ($colon+!199 v!5966 (h!38260 ll!54)))))

(declare-fun b!2811430 () Bool)

(declare-fun tp_is_empty!14379 () Bool)

(declare-fun tp!897876 () Bool)

(assert (=> b!2811430 (= e!1778043 (and tp_is_empty!14379 tp!897876))))

(declare-fun b!2811431 () Bool)

(declare-fun tp!897877 () Bool)

(declare-fun tp!897878 () Bool)

(assert (=> b!2811431 (= e!1778044 (and tp!897877 tp!897878))))

(assert (= (and start!272148 res!1170476) b!2811429))

(assert (= (and start!272148 ((_ is Cons!32840) ll!54)) b!2811430))

(assert (= start!272148 b!2811431))

(declare-fun m!3241259 () Bool)

(assert (=> b!2811429 m!3241259))

(declare-fun m!3241261 () Bool)

(assert (=> b!2811429 m!3241261))

(declare-fun m!3241263 () Bool)

(assert (=> b!2811429 m!3241263))

(declare-fun m!3241265 () Bool)

(assert (=> b!2811429 m!3241265))

(declare-fun m!3241267 () Bool)

(assert (=> b!2811429 m!3241267))

(declare-fun m!3241269 () Bool)

(assert (=> b!2811429 m!3241269))

(assert (=> b!2811429 m!3241265))

(assert (=> b!2811429 m!3241259))

(declare-fun m!3241271 () Bool)

(assert (=> b!2811429 m!3241271))

(check-sat (not b!2811429) (not b!2811430) (not b!2811431) tp_is_empty!14379)
(check-sat)
(get-model)

(declare-fun b!2811450 () Bool)

(declare-fun res!1170486 () Bool)

(declare-fun e!1778055 () Bool)

(assert (=> b!2811450 (=> (not res!1170486) (not e!1778055))))

(declare-fun lt!1004324 () List!32949)

(declare-fun size!25597 (List!32949) Int)

(assert (=> b!2811450 (= res!1170486 (= (size!25597 lt!1004324) (+ (size!25597 lt!1004318) (size!25597 (t!229900 ll!54)))))))

(declare-fun b!2811451 () Bool)

(assert (=> b!2811451 (= e!1778055 (or (not (= (t!229900 ll!54) Nil!32840)) (= lt!1004324 lt!1004318)))))

(declare-fun d!816051 () Bool)

(assert (=> d!816051 e!1778055))

(declare-fun res!1170485 () Bool)

(assert (=> d!816051 (=> (not res!1170485) (not e!1778055))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4573 (List!32949) (InoxSet T!54766))

(assert (=> d!816051 (= res!1170485 (= (content!4573 lt!1004324) ((_ map or) (content!4573 lt!1004318) (content!4573 (t!229900 ll!54)))))))

(declare-fun e!1778054 () List!32949)

(assert (=> d!816051 (= lt!1004324 e!1778054)))

(declare-fun c!455473 () Bool)

(assert (=> d!816051 (= c!455473 ((_ is Nil!32840) lt!1004318))))

(assert (=> d!816051 (= (++!8061 lt!1004318 (t!229900 ll!54)) lt!1004324)))

(declare-fun b!2811449 () Bool)

(assert (=> b!2811449 (= e!1778054 (Cons!32840 (h!38260 lt!1004318) (++!8061 (t!229900 lt!1004318) (t!229900 ll!54))))))

(declare-fun b!2811448 () Bool)

(assert (=> b!2811448 (= e!1778054 (t!229900 ll!54))))

(assert (= (and d!816051 c!455473) b!2811448))

(assert (= (and d!816051 (not c!455473)) b!2811449))

(assert (= (and d!816051 res!1170485) b!2811450))

(assert (= (and b!2811450 res!1170486) b!2811451))

(declare-fun m!3241275 () Bool)

(assert (=> b!2811450 m!3241275))

(declare-fun m!3241277 () Bool)

(assert (=> b!2811450 m!3241277))

(declare-fun m!3241279 () Bool)

(assert (=> b!2811450 m!3241279))

(declare-fun m!3241281 () Bool)

(assert (=> d!816051 m!3241281))

(declare-fun m!3241283 () Bool)

(assert (=> d!816051 m!3241283))

(declare-fun m!3241285 () Bool)

(assert (=> d!816051 m!3241285))

(declare-fun m!3241287 () Bool)

(assert (=> b!2811449 m!3241287))

(assert (=> b!2811429 d!816051))

(declare-fun d!816057 () Bool)

(declare-fun lt!1004344 () Vector!224)

(assert (=> d!816057 (= (list!12301 lt!1004344) (++!8061 (list!12301 lt!1004319) (t!229900 ll!54)))))

(declare-fun e!1778060 () Vector!224)

(assert (=> d!816057 (= lt!1004344 e!1778060)))

(declare-fun c!455477 () Bool)

(assert (=> d!816057 (= c!455477 ((_ is Nil!32840) (t!229900 ll!54)))))

(assert (=> d!816057 (= (rec!19 (t!229900 ll!54) lt!1004319) lt!1004344)))

(declare-fun b!2811460 () Bool)

(assert (=> b!2811460 (= e!1778060 lt!1004319)))

(declare-fun b!2811461 () Bool)

(declare-fun lt!1004341 () Vector!224)

(assert (=> b!2811461 (= e!1778060 (rec!19 (t!229900 (t!229900 ll!54)) lt!1004341))))

(declare-fun lt!1004343 () List!32949)

(assert (=> b!2811461 (= lt!1004343 (list!12301 lt!1004319))))

(declare-fun lt!1004345 () List!32949)

(assert (=> b!2811461 (= lt!1004345 (Cons!32840 (h!38260 (t!229900 ll!54)) Nil!32840))))

(declare-datatypes ((Unit!46850 0))(
  ( (Unit!46851) )
))
(declare-fun lt!1004346 () Unit!46850)

(declare-fun lemmaConcatAssociativity!1669 (List!32949 List!32949 List!32949) Unit!46850)

(assert (=> b!2811461 (= lt!1004346 (lemmaConcatAssociativity!1669 lt!1004343 lt!1004345 (t!229900 (t!229900 ll!54))))))

(assert (=> b!2811461 (= (++!8061 (++!8061 lt!1004343 lt!1004345) (t!229900 (t!229900 ll!54))) (++!8061 lt!1004343 (++!8061 lt!1004345 (t!229900 (t!229900 ll!54)))))))

(declare-fun lt!1004342 () Unit!46850)

(assert (=> b!2811461 (= lt!1004342 lt!1004346)))

(assert (=> b!2811461 (= lt!1004341 ($colon+!199 lt!1004319 (h!38260 (t!229900 ll!54))))))

(assert (=> b!2811461 (= (list!12301 lt!1004341) ($colon+!198 (list!12301 lt!1004319) (h!38260 (t!229900 ll!54))))))

(assert (= (and d!816057 c!455477) b!2811460))

(assert (= (and d!816057 (not c!455477)) b!2811461))

(declare-fun m!3241309 () Bool)

(assert (=> d!816057 m!3241309))

(assert (=> d!816057 m!3241269))

(assert (=> d!816057 m!3241269))

(declare-fun m!3241311 () Bool)

(assert (=> d!816057 m!3241311))

(declare-fun m!3241313 () Bool)

(assert (=> b!2811461 m!3241313))

(declare-fun m!3241315 () Bool)

(assert (=> b!2811461 m!3241315))

(assert (=> b!2811461 m!3241269))

(declare-fun m!3241317 () Bool)

(assert (=> b!2811461 m!3241317))

(declare-fun m!3241319 () Bool)

(assert (=> b!2811461 m!3241319))

(declare-fun m!3241321 () Bool)

(assert (=> b!2811461 m!3241321))

(declare-fun m!3241323 () Bool)

(assert (=> b!2811461 m!3241323))

(assert (=> b!2811461 m!3241323))

(declare-fun m!3241325 () Bool)

(assert (=> b!2811461 m!3241325))

(assert (=> b!2811461 m!3241319))

(assert (=> b!2811461 m!3241269))

(declare-fun m!3241327 () Bool)

(assert (=> b!2811461 m!3241327))

(declare-fun m!3241329 () Bool)

(assert (=> b!2811461 m!3241329))

(assert (=> b!2811429 d!816057))

(declare-fun d!816065 () Bool)

(declare-fun choose!16598 (Vector!224) List!32949)

(assert (=> d!816065 (= (list!12301 lt!1004319) (choose!16598 lt!1004319))))

(declare-fun bs!516417 () Bool)

(assert (= bs!516417 d!816065))

(declare-fun m!3241331 () Bool)

(assert (=> bs!516417 m!3241331))

(assert (=> b!2811429 d!816065))

(declare-fun d!816067 () Bool)

(declare-fun lt!1004361 () Vector!224)

(assert (=> d!816067 (= (list!12301 lt!1004361) ($colon+!198 (list!12301 v!5966) (h!38260 ll!54)))))

(declare-fun choose!16599 (Vector!224 T!54766) Vector!224)

(assert (=> d!816067 (= lt!1004361 (choose!16599 v!5966 (h!38260 ll!54)))))

(assert (=> d!816067 (= ($colon+!199 v!5966 (h!38260 ll!54)) lt!1004361)))

(declare-fun bs!516418 () Bool)

(assert (= bs!516418 d!816067))

(declare-fun m!3241333 () Bool)

(assert (=> bs!516418 m!3241333))

(assert (=> bs!516418 m!3241259))

(assert (=> bs!516418 m!3241259))

(assert (=> bs!516418 m!3241261))

(declare-fun m!3241335 () Bool)

(assert (=> bs!516418 m!3241335))

(assert (=> b!2811429 d!816067))

(declare-fun b!2811508 () Bool)

(declare-fun e!1778080 () Bool)

(declare-fun call!183075 () (_ BitVec 32))

(declare-fun call!183076 () (_ BitVec 32))

(assert (=> b!2811508 (= e!1778080 (= call!183075 (bvadd call!183076 #b00000000000000000000000000000001)))))

(declare-fun bm!183070 () Bool)

(declare-fun isize!63 (List!32949) (_ BitVec 32))

(assert (=> bm!183070 (= call!183076 (isize!63 (list!12301 v!5966)))))

(declare-fun bm!183071 () Bool)

(declare-fun lt!1004373 () List!32949)

(assert (=> bm!183071 (= call!183075 (isize!63 lt!1004373))))

(declare-fun b!2811509 () Bool)

(declare-fun res!1170510 () Bool)

(declare-fun e!1778081 () Bool)

(assert (=> b!2811509 (=> (not res!1170510) (not e!1778081))))

(assert (=> b!2811509 (= res!1170510 e!1778080)))

(declare-fun c!455492 () Bool)

(assert (=> b!2811509 (= c!455492 (bvslt (isize!63 (list!12301 v!5966)) #b01111111111111111111111111111111))))

(declare-fun b!2811510 () Bool)

(declare-fun res!1170512 () Bool)

(assert (=> b!2811510 (=> (not res!1170512) (not e!1778081))))

(assert (=> b!2811510 (= res!1170512 (= (content!4573 lt!1004373) ((_ map or) (content!4573 (list!12301 v!5966)) (store ((as const (Array T!54766 Bool)) false) (h!38260 ll!54) true))))))

(declare-fun b!2811511 () Bool)

(assert (=> b!2811511 (= e!1778081 (= lt!1004373 (++!8061 (list!12301 v!5966) (Cons!32840 (h!38260 ll!54) Nil!32840))))))

(declare-fun b!2811512 () Bool)

(declare-fun res!1170509 () Bool)

(assert (=> b!2811512 (=> (not res!1170509) (not e!1778081))))

(assert (=> b!2811512 (= res!1170509 (= (size!25597 lt!1004373) (+ (size!25597 (list!12301 v!5966)) 1)))))

(declare-fun d!816069 () Bool)

(assert (=> d!816069 e!1778081))

(declare-fun res!1170511 () Bool)

(assert (=> d!816069 (=> (not res!1170511) (not e!1778081))))

(assert (=> d!816069 (= res!1170511 ((_ is Cons!32840) lt!1004373))))

(declare-fun e!1778079 () List!32949)

(assert (=> d!816069 (= lt!1004373 e!1778079)))

(declare-fun c!455491 () Bool)

(assert (=> d!816069 (= c!455491 ((_ is Nil!32840) (list!12301 v!5966)))))

(assert (=> d!816069 (= ($colon+!198 (list!12301 v!5966) (h!38260 ll!54)) lt!1004373)))

(declare-fun b!2811513 () Bool)

(assert (=> b!2811513 (= e!1778079 (Cons!32840 (h!38260 ll!54) (list!12301 v!5966)))))

(declare-fun b!2811514 () Bool)

(assert (=> b!2811514 (= e!1778080 (= call!183075 call!183076))))

(declare-fun b!2811515 () Bool)

(assert (=> b!2811515 (= e!1778079 (Cons!32840 (h!38260 (list!12301 v!5966)) ($colon+!198 (t!229900 (list!12301 v!5966)) (h!38260 ll!54))))))

(assert (= (and d!816069 c!455491) b!2811513))

(assert (= (and d!816069 (not c!455491)) b!2811515))

(assert (= (and d!816069 res!1170511) b!2811512))

(assert (= (and b!2811512 res!1170509) b!2811509))

(assert (= (and b!2811509 c!455492) b!2811508))

(assert (= (and b!2811509 (not c!455492)) b!2811514))

(assert (= (or b!2811508 b!2811514) bm!183070))

(assert (= (or b!2811508 b!2811514) bm!183071))

(assert (= (and b!2811509 res!1170510) b!2811510))

(assert (= (and b!2811510 res!1170512) b!2811511))

(declare-fun m!3241379 () Bool)

(assert (=> b!2811512 m!3241379))

(assert (=> b!2811512 m!3241259))

(declare-fun m!3241381 () Bool)

(assert (=> b!2811512 m!3241381))

(declare-fun m!3241383 () Bool)

(assert (=> b!2811510 m!3241383))

(assert (=> b!2811510 m!3241259))

(declare-fun m!3241385 () Bool)

(assert (=> b!2811510 m!3241385))

(declare-fun m!3241387 () Bool)

(assert (=> b!2811510 m!3241387))

(assert (=> bm!183070 m!3241259))

(declare-fun m!3241389 () Bool)

(assert (=> bm!183070 m!3241389))

(assert (=> b!2811511 m!3241259))

(declare-fun m!3241391 () Bool)

(assert (=> b!2811511 m!3241391))

(declare-fun m!3241393 () Bool)

(assert (=> bm!183071 m!3241393))

(declare-fun m!3241395 () Bool)

(assert (=> b!2811515 m!3241395))

(assert (=> b!2811509 m!3241259))

(assert (=> b!2811509 m!3241389))

(assert (=> b!2811429 d!816069))

(declare-fun d!816075 () Bool)

(assert (=> d!816075 (= (list!12301 (rec!19 (t!229900 ll!54) lt!1004319)) (choose!16598 (rec!19 (t!229900 ll!54) lt!1004319)))))

(declare-fun bs!516420 () Bool)

(assert (= bs!516420 d!816075))

(assert (=> bs!516420 m!3241265))

(declare-fun m!3241397 () Bool)

(assert (=> bs!516420 m!3241397))

(assert (=> b!2811429 d!816075))

(declare-fun d!816077 () Bool)

(assert (=> d!816077 (= (list!12301 v!5966) (choose!16598 v!5966))))

(declare-fun bs!516421 () Bool)

(assert (= bs!516421 d!816077))

(declare-fun m!3241399 () Bool)

(assert (=> bs!516421 m!3241399))

(assert (=> b!2811429 d!816077))

(declare-fun b!2811532 () Bool)

(declare-fun e!1778090 () Bool)

(declare-fun tp!897887 () Bool)

(assert (=> b!2811532 (= e!1778090 (and tp_is_empty!14379 tp!897887))))

(assert (=> b!2811430 (= tp!897876 e!1778090)))

(assert (= (and b!2811430 ((_ is Cons!32840) (t!229900 ll!54))) b!2811532))

(declare-fun b!2811547 () Bool)

(declare-fun e!1778100 () Bool)

(declare-fun tp!897896 () Bool)

(declare-fun inv!44578 (Conc!10166) Bool)

(assert (=> b!2811547 (= e!1778100 (and (inv!44578 (c!455468 (value!158108 (underlying!8352 v!5966)))) tp!897896))))

(declare-fun b!2811546 () Bool)

(declare-fun e!1778099 () Bool)

(declare-fun inv!44579 (BalanceConc!19956) Bool)

(assert (=> b!2811546 (= e!1778099 (and (inv!44579 (value!158108 (underlying!8352 v!5966))) e!1778100))))

(declare-fun b!2811548 () Bool)

(declare-fun tp!897897 () Bool)

(assert (=> b!2811548 (= e!1778099 tp!897897)))

(assert (=> b!2811431 (= tp!897877 e!1778099)))

(assert (= b!2811546 b!2811547))

(assert (= (and b!2811431 ((_ is BalanceConc!19955) (underlying!8352 v!5966))) b!2811546))

(assert (= (and b!2811431 ((_ is List!32950) (underlying!8352 v!5966))) b!2811548))

(declare-fun m!3241405 () Bool)

(assert (=> b!2811547 m!3241405))

(declare-fun m!3241407 () Bool)

(assert (=> b!2811546 m!3241407))

(declare-fun b!2811549 () Bool)

(declare-fun e!1778101 () Bool)

(declare-fun tp!897898 () Bool)

(assert (=> b!2811549 (= e!1778101 (and tp_is_empty!14379 tp!897898))))

(assert (=> b!2811431 (= tp!897878 e!1778101)))

(assert (= (and b!2811431 ((_ is Cons!32840) (overflowing!169 v!5966))) b!2811549))

(check-sat (not b!2811511) (not b!2811547) (not d!816067) (not d!816051) (not b!2811548) (not b!2811450) (not b!2811510) (not d!816077) (not b!2811509) (not b!2811515) (not d!816057) (not b!2811549) tp_is_empty!14379 (not d!816065) (not bm!183071) (not b!2811512) (not bm!183070) (not b!2811461) (not b!2811449) (not d!816075) (not b!2811546) (not b!2811532))
(check-sat)
