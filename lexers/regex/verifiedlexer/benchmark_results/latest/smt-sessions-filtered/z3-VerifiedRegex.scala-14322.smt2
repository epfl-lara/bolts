; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747882 () Bool)

(assert start!747882)

(declare-fun b!7918402 () Bool)

(declare-fun e!4673914 () Bool)

(declare-fun e!4673915 () Bool)

(assert (=> b!7918402 (= e!4673914 e!4673915)))

(declare-fun res!3142706 () Bool)

(assert (=> b!7918402 (=> (not res!3142706) (not e!4673915))))

(declare-datatypes ((T!145678 0))(
  ( (T!145679 (val!32042 Int)) )
))
(declare-datatypes ((List!74554 0))(
  ( (Nil!74430) (Cons!74430 (h!80878 T!145678) (t!390099 List!74554)) )
))
(declare-fun ll!14 () List!74554)

(declare-fun lt!2691081 () List!74554)

(declare-datatypes ((IArray!31829 0))(
  ( (IArray!31830 (innerList!15972 List!74554)) )
))
(declare-datatypes ((Conc!15884 0))(
  ( (Node!15884 (left!56846 Conc!15884) (right!57176 Conc!15884) (csize!31998 Int) (cheight!16095 Int)) (Leaf!30207 (xs!19270 IArray!31829) (csize!31999 Int)) (Empty!15884) )
))
(declare-fun lt!2691084 () Conc!15884)

(declare-fun list!19383 (Conc!15884) List!74554)

(declare-fun ++!18246 (List!74554 List!74554) List!74554)

(assert (=> b!7918402 (= res!3142706 (= (list!19383 lt!2691084) (++!18246 lt!2691081 (t!390099 ll!14))))))

(declare-fun lt!2691079 () Conc!15884)

(assert (=> b!7918402 (= lt!2691081 (list!19383 lt!2691079))))

(declare-fun rec!59 (List!74554 Conc!15884) Conc!15884)

(assert (=> b!7918402 (= lt!2691084 (rec!59 (t!390099 ll!14) lt!2691079))))

(declare-fun c!5365 () Conc!15884)

(declare-fun append!1132 (Conc!15884 T!145678) Conc!15884)

(assert (=> b!7918402 (= lt!2691079 (append!1132 c!5365 (h!80878 ll!14)))))

(declare-fun res!3142705 () Bool)

(assert (=> start!747882 (=> (not res!3142705) (not e!4673914))))

(declare-fun isBalanced!4510 (Conc!15884) Bool)

(assert (=> start!747882 (= res!3142705 (isBalanced!4510 c!5365))))

(assert (=> start!747882 e!4673914))

(declare-fun e!4673918 () Bool)

(declare-fun inv!95622 (Conc!15884) Bool)

(assert (=> start!747882 (and (inv!95622 c!5365) e!4673918)))

(declare-fun e!4673919 () Bool)

(assert (=> start!747882 e!4673919))

(declare-fun b!7918403 () Bool)

(declare-fun e!4673917 () Bool)

(declare-fun size!43215 (List!74554) Int)

(assert (=> b!7918403 (= e!4673917 (< (size!43215 (t!390099 ll!14)) (size!43215 ll!14)))))

(declare-fun b!7918404 () Bool)

(declare-fun e!4673916 () Bool)

(declare-fun inv!95623 (IArray!31829) Bool)

(assert (=> b!7918404 (= e!4673918 (and (inv!95623 (xs!19270 c!5365)) e!4673916))))

(declare-fun b!7918405 () Bool)

(declare-fun tp!2357760 () Bool)

(assert (=> b!7918405 (= e!4673916 tp!2357760)))

(declare-fun b!7918406 () Bool)

(declare-fun res!3142703 () Bool)

(assert (=> b!7918406 (=> (not res!3142703) (not e!4673914))))

(get-info :version)

(assert (=> b!7918406 (= res!3142703 (not ((_ is Nil!74430) ll!14)))))

(declare-fun tp!2357761 () Bool)

(declare-fun tp!2357762 () Bool)

(declare-fun b!7918407 () Bool)

(assert (=> b!7918407 (= e!4673918 (and (inv!95622 (left!56846 c!5365)) tp!2357762 (inv!95622 (right!57176 c!5365)) tp!2357761))))

(declare-fun b!7918408 () Bool)

(declare-fun e!4673920 () Bool)

(assert (=> b!7918408 (= e!4673915 e!4673920)))

(declare-fun res!3142704 () Bool)

(assert (=> b!7918408 (=> (not res!3142704) (not e!4673920))))

(declare-fun lt!2691082 () List!74554)

(assert (=> b!7918408 (= res!3142704 (= lt!2691081 lt!2691082))))

(declare-fun lt!2691080 () List!74554)

(declare-fun lt!2691083 () List!74554)

(assert (=> b!7918408 (= lt!2691082 (++!18246 lt!2691080 lt!2691083))))

(assert (=> b!7918408 (= lt!2691083 (Cons!74430 (h!80878 ll!14) Nil!74430))))

(assert (=> b!7918408 (= lt!2691080 (list!19383 c!5365))))

(declare-fun b!7918409 () Bool)

(declare-fun tp_is_empty!53193 () Bool)

(declare-fun tp!2357759 () Bool)

(assert (=> b!7918409 (= e!4673919 (and tp_is_empty!53193 tp!2357759))))

(declare-fun b!7918410 () Bool)

(assert (=> b!7918410 (= e!4673920 (not e!4673917))))

(declare-fun res!3142702 () Bool)

(assert (=> b!7918410 (=> res!3142702 e!4673917)))

(declare-fun lt!2691085 () List!74554)

(declare-fun $colon$colon!3421 (List!74554 T!145678) List!74554)

(assert (=> b!7918410 (= res!3142702 (not (= lt!2691085 (++!18246 lt!2691080 ($colon$colon!3421 (t!390099 ll!14) (h!80878 ll!14))))))))

(declare-fun lt!2691086 () List!74554)

(assert (=> b!7918410 (= lt!2691085 (++!18246 lt!2691080 lt!2691086))))

(assert (=> b!7918410 (= lt!2691085 (++!18246 lt!2691082 (t!390099 ll!14)))))

(assert (=> b!7918410 (= lt!2691086 (++!18246 lt!2691083 (t!390099 ll!14)))))

(declare-datatypes ((Unit!169553 0))(
  ( (Unit!169554) )
))
(declare-fun lt!2691087 () Unit!169553)

(declare-fun lemmaConcatAssociativity!3152 (List!74554 List!74554 List!74554) Unit!169553)

(assert (=> b!7918410 (= lt!2691087 (lemmaConcatAssociativity!3152 lt!2691080 lt!2691083 (t!390099 ll!14)))))

(assert (= (and start!747882 res!3142705) b!7918406))

(assert (= (and b!7918406 res!3142703) b!7918402))

(assert (= (and b!7918402 res!3142706) b!7918408))

(assert (= (and b!7918408 res!3142704) b!7918410))

(assert (= (and b!7918410 (not res!3142702)) b!7918403))

(assert (= (and start!747882 ((_ is Node!15884) c!5365)) b!7918407))

(assert (= b!7918404 b!7918405))

(assert (= (and start!747882 ((_ is Leaf!30207) c!5365)) b!7918404))

(assert (= (and start!747882 ((_ is Cons!74430) ll!14)) b!7918409))

(declare-fun m!8294184 () Bool)

(assert (=> b!7918402 m!8294184))

(declare-fun m!8294186 () Bool)

(assert (=> b!7918402 m!8294186))

(declare-fun m!8294188 () Bool)

(assert (=> b!7918402 m!8294188))

(declare-fun m!8294190 () Bool)

(assert (=> b!7918402 m!8294190))

(declare-fun m!8294192 () Bool)

(assert (=> b!7918402 m!8294192))

(declare-fun m!8294194 () Bool)

(assert (=> b!7918410 m!8294194))

(declare-fun m!8294196 () Bool)

(assert (=> b!7918410 m!8294196))

(declare-fun m!8294198 () Bool)

(assert (=> b!7918410 m!8294198))

(assert (=> b!7918410 m!8294196))

(declare-fun m!8294200 () Bool)

(assert (=> b!7918410 m!8294200))

(declare-fun m!8294202 () Bool)

(assert (=> b!7918410 m!8294202))

(declare-fun m!8294204 () Bool)

(assert (=> b!7918410 m!8294204))

(declare-fun m!8294206 () Bool)

(assert (=> start!747882 m!8294206))

(declare-fun m!8294208 () Bool)

(assert (=> start!747882 m!8294208))

(declare-fun m!8294210 () Bool)

(assert (=> b!7918403 m!8294210))

(declare-fun m!8294212 () Bool)

(assert (=> b!7918403 m!8294212))

(declare-fun m!8294214 () Bool)

(assert (=> b!7918407 m!8294214))

(declare-fun m!8294216 () Bool)

(assert (=> b!7918407 m!8294216))

(declare-fun m!8294218 () Bool)

(assert (=> b!7918404 m!8294218))

(declare-fun m!8294220 () Bool)

(assert (=> b!7918408 m!8294220))

(declare-fun m!8294222 () Bool)

(assert (=> b!7918408 m!8294222))

(check-sat (not b!7918403) tp_is_empty!53193 (not b!7918408) (not b!7918407) (not b!7918402) (not b!7918409) (not b!7918404) (not b!7918405) (not b!7918410) (not start!747882))
(check-sat)
(get-model)

(declare-fun d!2362491 () Bool)

(declare-fun lt!2691090 () Int)

(assert (=> d!2362491 (>= lt!2691090 0)))

(declare-fun e!4673931 () Int)

(assert (=> d!2362491 (= lt!2691090 e!4673931)))

(declare-fun c!1453109 () Bool)

(assert (=> d!2362491 (= c!1453109 ((_ is Nil!74430) (t!390099 ll!14)))))

(assert (=> d!2362491 (= (size!43215 (t!390099 ll!14)) lt!2691090)))

(declare-fun b!7918427 () Bool)

(assert (=> b!7918427 (= e!4673931 0)))

(declare-fun b!7918428 () Bool)

(assert (=> b!7918428 (= e!4673931 (+ 1 (size!43215 (t!390099 (t!390099 ll!14)))))))

(assert (= (and d!2362491 c!1453109) b!7918427))

(assert (= (and d!2362491 (not c!1453109)) b!7918428))

(declare-fun m!8294232 () Bool)

(assert (=> b!7918428 m!8294232))

(assert (=> b!7918403 d!2362491))

(declare-fun d!2362497 () Bool)

(declare-fun lt!2691091 () Int)

(assert (=> d!2362497 (>= lt!2691091 0)))

(declare-fun e!4673932 () Int)

(assert (=> d!2362497 (= lt!2691091 e!4673932)))

(declare-fun c!1453110 () Bool)

(assert (=> d!2362497 (= c!1453110 ((_ is Nil!74430) ll!14))))

(assert (=> d!2362497 (= (size!43215 ll!14) lt!2691091)))

(declare-fun b!7918429 () Bool)

(assert (=> b!7918429 (= e!4673932 0)))

(declare-fun b!7918430 () Bool)

(assert (=> b!7918430 (= e!4673932 (+ 1 (size!43215 (t!390099 ll!14))))))

(assert (= (and d!2362497 c!1453110) b!7918429))

(assert (= (and d!2362497 (not c!1453110)) b!7918430))

(assert (=> b!7918430 m!8294210))

(assert (=> b!7918403 d!2362497))

(declare-fun b!7918456 () Bool)

(declare-fun e!4673946 () List!74554)

(assert (=> b!7918456 (= e!4673946 (Cons!74430 (h!80878 lt!2691080) (++!18246 (t!390099 lt!2691080) lt!2691083)))))

(declare-fun b!7918455 () Bool)

(assert (=> b!7918455 (= e!4673946 lt!2691083)))

(declare-fun d!2362499 () Bool)

(declare-fun e!4673945 () Bool)

(assert (=> d!2362499 e!4673945))

(declare-fun res!3142724 () Bool)

(assert (=> d!2362499 (=> (not res!3142724) (not e!4673945))))

(declare-fun lt!2691098 () List!74554)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15770 (List!74554) (InoxSet T!145678))

(assert (=> d!2362499 (= res!3142724 (= (content!15770 lt!2691098) ((_ map or) (content!15770 lt!2691080) (content!15770 lt!2691083))))))

(assert (=> d!2362499 (= lt!2691098 e!4673946)))

(declare-fun c!1453117 () Bool)

(assert (=> d!2362499 (= c!1453117 ((_ is Nil!74430) lt!2691080))))

(assert (=> d!2362499 (= (++!18246 lt!2691080 lt!2691083) lt!2691098)))

(declare-fun b!7918457 () Bool)

(declare-fun res!3142723 () Bool)

(assert (=> b!7918457 (=> (not res!3142723) (not e!4673945))))

(assert (=> b!7918457 (= res!3142723 (= (size!43215 lt!2691098) (+ (size!43215 lt!2691080) (size!43215 lt!2691083))))))

(declare-fun b!7918458 () Bool)

(assert (=> b!7918458 (= e!4673945 (or (not (= lt!2691083 Nil!74430)) (= lt!2691098 lt!2691080)))))

(assert (= (and d!2362499 c!1453117) b!7918455))

(assert (= (and d!2362499 (not c!1453117)) b!7918456))

(assert (= (and d!2362499 res!3142724) b!7918457))

(assert (= (and b!7918457 res!3142723) b!7918458))

(declare-fun m!8294260 () Bool)

(assert (=> b!7918456 m!8294260))

(declare-fun m!8294262 () Bool)

(assert (=> d!2362499 m!8294262))

(declare-fun m!8294264 () Bool)

(assert (=> d!2362499 m!8294264))

(declare-fun m!8294266 () Bool)

(assert (=> d!2362499 m!8294266))

(declare-fun m!8294268 () Bool)

(assert (=> b!7918457 m!8294268))

(declare-fun m!8294270 () Bool)

(assert (=> b!7918457 m!8294270))

(declare-fun m!8294272 () Bool)

(assert (=> b!7918457 m!8294272))

(assert (=> b!7918408 d!2362499))

(declare-fun b!7918475 () Bool)

(declare-fun e!4673955 () List!74554)

(assert (=> b!7918475 (= e!4673955 Nil!74430)))

(declare-fun b!7918477 () Bool)

(declare-fun e!4673956 () List!74554)

(declare-fun list!19385 (IArray!31829) List!74554)

(assert (=> b!7918477 (= e!4673956 (list!19385 (xs!19270 c!5365)))))

(declare-fun b!7918478 () Bool)

(assert (=> b!7918478 (= e!4673956 (++!18246 (list!19383 (left!56846 c!5365)) (list!19383 (right!57176 c!5365))))))

(declare-fun d!2362505 () Bool)

(declare-fun c!1453124 () Bool)

(assert (=> d!2362505 (= c!1453124 ((_ is Empty!15884) c!5365))))

(assert (=> d!2362505 (= (list!19383 c!5365) e!4673955)))

(declare-fun b!7918476 () Bool)

(assert (=> b!7918476 (= e!4673955 e!4673956)))

(declare-fun c!1453125 () Bool)

(assert (=> b!7918476 (= c!1453125 ((_ is Leaf!30207) c!5365))))

(assert (= (and d!2362505 c!1453124) b!7918475))

(assert (= (and d!2362505 (not c!1453124)) b!7918476))

(assert (= (and b!7918476 c!1453125) b!7918477))

(assert (= (and b!7918476 (not c!1453125)) b!7918478))

(declare-fun m!8294294 () Bool)

(assert (=> b!7918477 m!8294294))

(declare-fun m!8294298 () Bool)

(assert (=> b!7918478 m!8294298))

(declare-fun m!8294302 () Bool)

(assert (=> b!7918478 m!8294302))

(assert (=> b!7918478 m!8294298))

(assert (=> b!7918478 m!8294302))

(declare-fun m!8294306 () Bool)

(assert (=> b!7918478 m!8294306))

(assert (=> b!7918408 d!2362505))

(declare-fun b!7918480 () Bool)

(declare-fun e!4673958 () List!74554)

(assert (=> b!7918480 (= e!4673958 (Cons!74430 (h!80878 lt!2691081) (++!18246 (t!390099 lt!2691081) (t!390099 ll!14))))))

(declare-fun b!7918479 () Bool)

(assert (=> b!7918479 (= e!4673958 (t!390099 ll!14))))

(declare-fun d!2362513 () Bool)

(declare-fun e!4673957 () Bool)

(assert (=> d!2362513 e!4673957))

(declare-fun res!3142730 () Bool)

(assert (=> d!2362513 (=> (not res!3142730) (not e!4673957))))

(declare-fun lt!2691104 () List!74554)

(assert (=> d!2362513 (= res!3142730 (= (content!15770 lt!2691104) ((_ map or) (content!15770 lt!2691081) (content!15770 (t!390099 ll!14)))))))

(assert (=> d!2362513 (= lt!2691104 e!4673958)))

(declare-fun c!1453126 () Bool)

(assert (=> d!2362513 (= c!1453126 ((_ is Nil!74430) lt!2691081))))

(assert (=> d!2362513 (= (++!18246 lt!2691081 (t!390099 ll!14)) lt!2691104)))

(declare-fun b!7918481 () Bool)

(declare-fun res!3142729 () Bool)

(assert (=> b!7918481 (=> (not res!3142729) (not e!4673957))))

(assert (=> b!7918481 (= res!3142729 (= (size!43215 lt!2691104) (+ (size!43215 lt!2691081) (size!43215 (t!390099 ll!14)))))))

(declare-fun b!7918482 () Bool)

(assert (=> b!7918482 (= e!4673957 (or (not (= (t!390099 ll!14) Nil!74430)) (= lt!2691104 lt!2691081)))))

(assert (= (and d!2362513 c!1453126) b!7918479))

(assert (= (and d!2362513 (not c!1453126)) b!7918480))

(assert (= (and d!2362513 res!3142730) b!7918481))

(assert (= (and b!7918481 res!3142729) b!7918482))

(declare-fun m!8294308 () Bool)

(assert (=> b!7918480 m!8294308))

(declare-fun m!8294310 () Bool)

(assert (=> d!2362513 m!8294310))

(declare-fun m!8294312 () Bool)

(assert (=> d!2362513 m!8294312))

(declare-fun m!8294314 () Bool)

(assert (=> d!2362513 m!8294314))

(declare-fun m!8294316 () Bool)

(assert (=> b!7918481 m!8294316))

(declare-fun m!8294318 () Bool)

(assert (=> b!7918481 m!8294318))

(assert (=> b!7918481 m!8294210))

(assert (=> b!7918402 d!2362513))

(declare-fun d!2362517 () Bool)

(declare-fun e!4673978 () Bool)

(assert (=> d!2362517 e!4673978))

(declare-fun res!3142735 () Bool)

(assert (=> d!2362517 (=> (not res!3142735) (not e!4673978))))

(declare-fun lt!2691120 () Conc!15884)

(assert (=> d!2362517 (= res!3142735 (= (list!19383 lt!2691120) (++!18246 (list!19383 lt!2691079) (t!390099 ll!14))))))

(declare-fun e!4673977 () Conc!15884)

(assert (=> d!2362517 (= lt!2691120 e!4673977)))

(declare-fun c!1453143 () Bool)

(assert (=> d!2362517 (= c!1453143 ((_ is Nil!74430) (t!390099 ll!14)))))

(assert (=> d!2362517 (isBalanced!4510 lt!2691079)))

(assert (=> d!2362517 (= (rec!59 (t!390099 ll!14) lt!2691079) lt!2691120)))

(declare-fun b!7918517 () Bool)

(assert (=> b!7918517 (= e!4673977 lt!2691079)))

(declare-fun b!7918518 () Bool)

(assert (=> b!7918518 (= e!4673977 (rec!59 (t!390099 (t!390099 ll!14)) (append!1132 lt!2691079 (h!80878 (t!390099 ll!14)))))))

(declare-fun lt!2691122 () List!74554)

(assert (=> b!7918518 (= lt!2691122 (list!19383 lt!2691079))))

(declare-fun lt!2691123 () List!74554)

(assert (=> b!7918518 (= lt!2691123 (Cons!74430 (h!80878 (t!390099 ll!14)) Nil!74430))))

(declare-fun lt!2691124 () Unit!169553)

(assert (=> b!7918518 (= lt!2691124 (lemmaConcatAssociativity!3152 lt!2691122 lt!2691123 (t!390099 (t!390099 ll!14))))))

(assert (=> b!7918518 (= (++!18246 (++!18246 lt!2691122 lt!2691123) (t!390099 (t!390099 ll!14))) (++!18246 lt!2691122 (++!18246 lt!2691123 (t!390099 (t!390099 ll!14)))))))

(declare-fun lt!2691121 () Unit!169553)

(assert (=> b!7918518 (= lt!2691121 lt!2691124)))

(declare-fun b!7918519 () Bool)

(assert (=> b!7918519 (= e!4673978 (isBalanced!4510 lt!2691120))))

(assert (= (and d!2362517 c!1453143) b!7918517))

(assert (= (and d!2362517 (not c!1453143)) b!7918518))

(assert (= (and d!2362517 res!3142735) b!7918519))

(declare-fun m!8294350 () Bool)

(assert (=> d!2362517 m!8294350))

(assert (=> d!2362517 m!8294186))

(assert (=> d!2362517 m!8294186))

(declare-fun m!8294352 () Bool)

(assert (=> d!2362517 m!8294352))

(declare-fun m!8294354 () Bool)

(assert (=> d!2362517 m!8294354))

(declare-fun m!8294356 () Bool)

(assert (=> b!7918518 m!8294356))

(declare-fun m!8294358 () Bool)

(assert (=> b!7918518 m!8294358))

(assert (=> b!7918518 m!8294356))

(declare-fun m!8294360 () Bool)

(assert (=> b!7918518 m!8294360))

(declare-fun m!8294362 () Bool)

(assert (=> b!7918518 m!8294362))

(declare-fun m!8294364 () Bool)

(assert (=> b!7918518 m!8294364))

(assert (=> b!7918518 m!8294362))

(declare-fun m!8294366 () Bool)

(assert (=> b!7918518 m!8294366))

(assert (=> b!7918518 m!8294186))

(assert (=> b!7918518 m!8294360))

(declare-fun m!8294368 () Bool)

(assert (=> b!7918518 m!8294368))

(declare-fun m!8294370 () Bool)

(assert (=> b!7918519 m!8294370))

(assert (=> b!7918402 d!2362517))

(declare-fun b!7918520 () Bool)

(declare-fun e!4673979 () List!74554)

(assert (=> b!7918520 (= e!4673979 Nil!74430)))

(declare-fun b!7918522 () Bool)

(declare-fun e!4673980 () List!74554)

(assert (=> b!7918522 (= e!4673980 (list!19385 (xs!19270 lt!2691084)))))

(declare-fun b!7918523 () Bool)

(assert (=> b!7918523 (= e!4673980 (++!18246 (list!19383 (left!56846 lt!2691084)) (list!19383 (right!57176 lt!2691084))))))

(declare-fun d!2362531 () Bool)

(declare-fun c!1453144 () Bool)

(assert (=> d!2362531 (= c!1453144 ((_ is Empty!15884) lt!2691084))))

(assert (=> d!2362531 (= (list!19383 lt!2691084) e!4673979)))

(declare-fun b!7918521 () Bool)

(assert (=> b!7918521 (= e!4673979 e!4673980)))

(declare-fun c!1453145 () Bool)

(assert (=> b!7918521 (= c!1453145 ((_ is Leaf!30207) lt!2691084))))

(assert (= (and d!2362531 c!1453144) b!7918520))

(assert (= (and d!2362531 (not c!1453144)) b!7918521))

(assert (= (and b!7918521 c!1453145) b!7918522))

(assert (= (and b!7918521 (not c!1453145)) b!7918523))

(declare-fun m!8294372 () Bool)

(assert (=> b!7918522 m!8294372))

(declare-fun m!8294374 () Bool)

(assert (=> b!7918523 m!8294374))

(declare-fun m!8294376 () Bool)

(assert (=> b!7918523 m!8294376))

(assert (=> b!7918523 m!8294374))

(assert (=> b!7918523 m!8294376))

(declare-fun m!8294378 () Bool)

(assert (=> b!7918523 m!8294378))

(assert (=> b!7918402 d!2362531))

(declare-fun b!7918524 () Bool)

(declare-fun e!4673981 () List!74554)

(assert (=> b!7918524 (= e!4673981 Nil!74430)))

(declare-fun b!7918526 () Bool)

(declare-fun e!4673982 () List!74554)

(assert (=> b!7918526 (= e!4673982 (list!19385 (xs!19270 lt!2691079)))))

(declare-fun b!7918527 () Bool)

(assert (=> b!7918527 (= e!4673982 (++!18246 (list!19383 (left!56846 lt!2691079)) (list!19383 (right!57176 lt!2691079))))))

(declare-fun d!2362533 () Bool)

(declare-fun c!1453146 () Bool)

(assert (=> d!2362533 (= c!1453146 ((_ is Empty!15884) lt!2691079))))

(assert (=> d!2362533 (= (list!19383 lt!2691079) e!4673981)))

(declare-fun b!7918525 () Bool)

(assert (=> b!7918525 (= e!4673981 e!4673982)))

(declare-fun c!1453147 () Bool)

(assert (=> b!7918525 (= c!1453147 ((_ is Leaf!30207) lt!2691079))))

(assert (= (and d!2362533 c!1453146) b!7918524))

(assert (= (and d!2362533 (not c!1453146)) b!7918525))

(assert (= (and b!7918525 c!1453147) b!7918526))

(assert (= (and b!7918525 (not c!1453147)) b!7918527))

(declare-fun m!8294380 () Bool)

(assert (=> b!7918526 m!8294380))

(declare-fun m!8294382 () Bool)

(assert (=> b!7918527 m!8294382))

(declare-fun m!8294384 () Bool)

(assert (=> b!7918527 m!8294384))

(assert (=> b!7918527 m!8294382))

(assert (=> b!7918527 m!8294384))

(declare-fun m!8294386 () Bool)

(assert (=> b!7918527 m!8294386))

(assert (=> b!7918402 d!2362533))

(declare-fun bm!734814 () Bool)

(declare-fun call!734828 () IArray!31829)

(declare-fun fill!262 (Int T!145678) IArray!31829)

(assert (=> bm!734814 (= call!734828 (fill!262 1 (h!80878 ll!14)))))

(declare-fun b!7918623 () Bool)

(declare-fun e!4674032 () Conc!15884)

(declare-fun e!4674025 () Conc!15884)

(assert (=> b!7918623 (= e!4674032 e!4674025)))

(declare-fun c!1453179 () Bool)

(assert (=> b!7918623 (= c!1453179 ((_ is Node!15884) c!5365))))

(declare-fun d!2362535 () Bool)

(declare-fun e!4674028 () Bool)

(assert (=> d!2362535 e!4674028))

(declare-fun res!3142774 () Bool)

(assert (=> d!2362535 (=> (not res!3142774) (not e!4674028))))

(declare-fun lt!2691242 () Conc!15884)

(assert (=> d!2362535 (= res!3142774 (isBalanced!4510 lt!2691242))))

(assert (=> d!2362535 (= lt!2691242 e!4674032)))

(declare-fun c!1453178 () Bool)

(assert (=> d!2362535 (= c!1453178 ((_ is Empty!15884) c!5365))))

(assert (=> d!2362535 (isBalanced!4510 c!5365)))

(assert (=> d!2362535 (= (append!1132 c!5365 (h!80878 ll!14)) lt!2691242)))

(declare-fun bm!734815 () Bool)

(declare-fun call!734821 () List!74554)

(declare-fun lt!2691241 () List!74554)

(declare-fun c!1453181 () Bool)

(declare-fun lt!2691234 () List!74554)

(declare-fun lt!2691231 () List!74554)

(declare-fun lt!2691244 () List!74554)

(assert (=> bm!734815 (= call!734821 (++!18246 (ite c!1453181 lt!2691244 lt!2691234) (ite c!1453181 lt!2691231 lt!2691241)))))

(declare-fun b!7918624 () Bool)

(declare-fun lt!2691240 () Conc!15884)

(declare-fun height!2200 (Conc!15884) Int)

(assert (=> b!7918624 (= c!1453181 (<= (height!2200 lt!2691240) (+ (height!2200 (left!56846 c!5365)) 1)))))

(assert (=> b!7918624 (= lt!2691240 (append!1132 (right!57176 c!5365) (h!80878 ll!14)))))

(declare-fun e!4674030 () Conc!15884)

(assert (=> b!7918624 (= e!4674025 e!4674030)))

(declare-fun b!7918625 () Bool)

(assert (=> b!7918625 (= e!4674032 (Leaf!30207 call!734828 1))))

(declare-fun b!7918626 () Bool)

(declare-fun e!4674029 () Conc!15884)

(declare-fun call!734827 () Conc!15884)

(assert (=> b!7918626 (= e!4674029 call!734827)))

(declare-fun b!7918627 () Bool)

(declare-fun $colon+!303 (List!74554 T!145678) List!74554)

(assert (=> b!7918627 (= e!4674028 (= (list!19383 lt!2691242) ($colon+!303 (list!19383 c!5365) (h!80878 ll!14))))))

(declare-fun bm!734816 () Bool)

(declare-fun call!734822 () List!74554)

(assert (=> bm!734816 (= call!734822 (list!19383 (left!56846 c!5365)))))

(declare-fun b!7918628 () Bool)

(declare-fun res!3142772 () Bool)

(assert (=> b!7918628 (=> (not res!3142772) (not e!4674028))))

(assert (=> b!7918628 (= res!3142772 (<= (height!2200 c!5365) (height!2200 lt!2691242)))))

(declare-fun call!734820 () Conc!15884)

(declare-fun bm!734817 () Bool)

(declare-fun <>!418 (Conc!15884 Conc!15884) Conc!15884)

(assert (=> bm!734817 (= call!734820 (<>!418 (left!56846 c!5365) (ite c!1453181 lt!2691240 (left!56846 lt!2691240))))))

(declare-fun bm!734818 () Bool)

(declare-fun c!1453177 () Bool)

(assert (=> bm!734818 (= c!1453177 c!1453179)))

(declare-fun e!4674031 () Conc!15884)

(assert (=> bm!734818 (= call!734827 (<>!418 (ite c!1453179 call!734820 c!5365) e!4674031))))

(declare-fun b!7918629 () Bool)

(assert (=> b!7918629 (= e!4674031 (Leaf!30207 call!734828 1))))

(declare-fun bm!734819 () Bool)

(declare-fun call!734819 () List!74554)

(assert (=> bm!734819 (= call!734819 (list!19383 (right!57176 c!5365)))))

(declare-fun call!734823 () List!74554)

(declare-fun lt!2691232 () List!74554)

(declare-fun call!734826 () List!74554)

(declare-fun bm!734820 () Bool)

(assert (=> bm!734820 (= call!734826 (++!18246 (ite c!1453181 lt!2691244 lt!2691232) (ite c!1453181 call!734823 lt!2691234)))))

(declare-fun lt!2691238 () List!74554)

(declare-fun lt!2691230 () List!74554)

(declare-fun bm!734821 () Bool)

(declare-fun lt!2691243 () List!74554)

(assert (=> bm!734821 (= call!734823 (++!18246 (ite c!1453181 lt!2691231 lt!2691243) (ite c!1453181 lt!2691230 lt!2691238)))))

(declare-fun b!7918630 () Bool)

(declare-fun append!1134 (IArray!31829 T!145678) IArray!31829)

(assert (=> b!7918630 (= e!4674029 (Leaf!30207 (append!1134 (xs!19270 c!5365) (h!80878 ll!14)) (+ (csize!31999 c!5365) 1)))))

(declare-fun lt!2691233 () List!74554)

(assert (=> b!7918630 (= lt!2691233 ($colon+!303 (list!19385 (xs!19270 c!5365)) (h!80878 ll!14)))))

(declare-fun b!7918631 () Bool)

(assert (=> b!7918631 (= e!4674030 call!734827)))

(assert (=> b!7918631 (= lt!2691232 call!734822)))

(assert (=> b!7918631 (= lt!2691234 (list!19383 (left!56846 lt!2691240)))))

(assert (=> b!7918631 (= lt!2691241 (list!19383 (right!57176 lt!2691240)))))

(declare-fun lt!2691247 () Unit!169553)

(declare-fun call!734824 () Unit!169553)

(assert (=> b!7918631 (= lt!2691247 call!734824)))

(assert (=> b!7918631 (= (++!18246 call!734826 lt!2691241) (++!18246 lt!2691232 call!734821))))

(declare-fun lt!2691235 () Unit!169553)

(assert (=> b!7918631 (= lt!2691235 lt!2691247)))

(assert (=> b!7918631 (= lt!2691243 call!734822)))

(assert (=> b!7918631 (= lt!2691238 call!734819)))

(declare-fun lt!2691245 () List!74554)

(assert (=> b!7918631 (= lt!2691245 (Cons!74430 (h!80878 ll!14) Nil!74430))))

(declare-fun lt!2691237 () Unit!169553)

(declare-fun lemmaConcatAssociativity!3154 (List!74554 List!74554 List!74554) Unit!169553)

(assert (=> b!7918631 (= lt!2691237 (lemmaConcatAssociativity!3154 lt!2691243 lt!2691238 lt!2691245))))

(declare-fun call!734825 () List!74554)

(assert (=> b!7918631 (= (++!18246 call!734823 lt!2691245) (++!18246 lt!2691243 call!734825))))

(declare-fun lt!2691239 () Unit!169553)

(assert (=> b!7918631 (= lt!2691239 lt!2691237)))

(declare-fun b!7918632 () Bool)

(declare-fun c!1453180 () Bool)

(assert (=> b!7918632 (= c!1453180 (< (csize!31999 c!5365) 512))))

(assert (=> b!7918632 (= e!4674025 e!4674029)))

(declare-fun b!7918633 () Bool)

(declare-fun res!3142775 () Bool)

(assert (=> b!7918633 (=> (not res!3142775) (not e!4674028))))

(assert (=> b!7918633 (= res!3142775 (<= (height!2200 lt!2691242) (+ (height!2200 c!5365) 1)))))

(declare-fun b!7918634 () Bool)

(assert (=> b!7918634 (= e!4674031 (right!57176 lt!2691240))))

(declare-fun b!7918635 () Bool)

(assert (=> b!7918635 (= e!4674030 call!734820)))

(assert (=> b!7918635 (= lt!2691244 call!734822)))

(assert (=> b!7918635 (= lt!2691231 call!734819)))

(assert (=> b!7918635 (= lt!2691230 (Cons!74430 (h!80878 ll!14) Nil!74430))))

(declare-fun lt!2691246 () Unit!169553)

(assert (=> b!7918635 (= lt!2691246 call!734824)))

(assert (=> b!7918635 (= call!734825 call!734826)))

(declare-fun lt!2691236 () Unit!169553)

(assert (=> b!7918635 (= lt!2691236 lt!2691246)))

(declare-fun bm!734822 () Bool)

(assert (=> bm!734822 (= call!734825 (++!18246 (ite c!1453181 call!734821 lt!2691238) (ite c!1453181 lt!2691230 lt!2691245)))))

(declare-fun bm!734823 () Bool)

(assert (=> bm!734823 (= call!734824 (lemmaConcatAssociativity!3154 (ite c!1453181 lt!2691244 lt!2691232) (ite c!1453181 lt!2691231 lt!2691234) (ite c!1453181 lt!2691230 lt!2691241)))))

(assert (= (and d!2362535 c!1453178) b!7918625))

(assert (= (and d!2362535 (not c!1453178)) b!7918623))

(assert (= (and b!7918623 c!1453179) b!7918624))

(assert (= (and b!7918623 (not c!1453179)) b!7918632))

(assert (= (and b!7918624 c!1453181) b!7918635))

(assert (= (and b!7918624 (not c!1453181)) b!7918631))

(assert (= (or b!7918635 b!7918631) bm!734819))

(assert (= (or b!7918635 b!7918631) bm!734817))

(assert (= (or b!7918635 b!7918631) bm!734823))

(assert (= (or b!7918635 b!7918631) bm!734821))

(assert (= (or b!7918635 b!7918631) bm!734816))

(assert (= (or b!7918635 b!7918631) bm!734815))

(assert (= (or b!7918635 b!7918631) bm!734820))

(assert (= (or b!7918635 b!7918631) bm!734822))

(assert (= (and b!7918632 c!1453180) b!7918630))

(assert (= (and b!7918632 (not c!1453180)) b!7918626))

(assert (= (or b!7918631 b!7918626) bm!734818))

(assert (= (and bm!734818 c!1453177) b!7918634))

(assert (= (and bm!734818 (not c!1453177)) b!7918629))

(assert (= (or b!7918625 b!7918629) bm!734814))

(assert (= (and d!2362535 res!3142774) b!7918628))

(assert (= (and b!7918628 res!3142772) b!7918633))

(assert (= (and b!7918633 res!3142775) b!7918627))

(declare-fun m!8294500 () Bool)

(assert (=> b!7918627 m!8294500))

(assert (=> b!7918627 m!8294222))

(assert (=> b!7918627 m!8294222))

(declare-fun m!8294502 () Bool)

(assert (=> b!7918627 m!8294502))

(declare-fun m!8294504 () Bool)

(assert (=> bm!734821 m!8294504))

(declare-fun m!8294506 () Bool)

(assert (=> bm!734820 m!8294506))

(declare-fun m!8294508 () Bool)

(assert (=> b!7918628 m!8294508))

(declare-fun m!8294510 () Bool)

(assert (=> b!7918628 m!8294510))

(assert (=> bm!734816 m!8294298))

(declare-fun m!8294512 () Bool)

(assert (=> b!7918624 m!8294512))

(declare-fun m!8294514 () Bool)

(assert (=> b!7918624 m!8294514))

(declare-fun m!8294516 () Bool)

(assert (=> b!7918624 m!8294516))

(assert (=> bm!734819 m!8294302))

(assert (=> b!7918633 m!8294510))

(assert (=> b!7918633 m!8294508))

(declare-fun m!8294518 () Bool)

(assert (=> b!7918631 m!8294518))

(declare-fun m!8294520 () Bool)

(assert (=> b!7918631 m!8294520))

(declare-fun m!8294522 () Bool)

(assert (=> b!7918631 m!8294522))

(declare-fun m!8294524 () Bool)

(assert (=> b!7918631 m!8294524))

(declare-fun m!8294526 () Bool)

(assert (=> b!7918631 m!8294526))

(declare-fun m!8294528 () Bool)

(assert (=> b!7918631 m!8294528))

(declare-fun m!8294530 () Bool)

(assert (=> b!7918631 m!8294530))

(declare-fun m!8294532 () Bool)

(assert (=> bm!734815 m!8294532))

(declare-fun m!8294534 () Bool)

(assert (=> bm!734822 m!8294534))

(declare-fun m!8294536 () Bool)

(assert (=> bm!734823 m!8294536))

(declare-fun m!8294538 () Bool)

(assert (=> d!2362535 m!8294538))

(assert (=> d!2362535 m!8294206))

(declare-fun m!8294540 () Bool)

(assert (=> bm!734817 m!8294540))

(declare-fun m!8294542 () Bool)

(assert (=> bm!734814 m!8294542))

(declare-fun m!8294544 () Bool)

(assert (=> b!7918630 m!8294544))

(assert (=> b!7918630 m!8294294))

(assert (=> b!7918630 m!8294294))

(declare-fun m!8294546 () Bool)

(assert (=> b!7918630 m!8294546))

(declare-fun m!8294548 () Bool)

(assert (=> bm!734818 m!8294548))

(assert (=> b!7918402 d!2362535))

(declare-fun b!7918676 () Bool)

(declare-fun res!3142793 () Bool)

(declare-fun e!4674053 () Bool)

(assert (=> b!7918676 (=> (not res!3142793) (not e!4674053))))

(declare-fun isEmpty!42749 (Conc!15884) Bool)

(assert (=> b!7918676 (= res!3142793 (not (isEmpty!42749 (left!56846 c!5365))))))

(declare-fun b!7918678 () Bool)

(declare-fun res!3142795 () Bool)

(assert (=> b!7918678 (=> (not res!3142795) (not e!4674053))))

(assert (=> b!7918678 (= res!3142795 (isBalanced!4510 (left!56846 c!5365)))))

(declare-fun b!7918679 () Bool)

(declare-fun res!3142792 () Bool)

(assert (=> b!7918679 (=> (not res!3142792) (not e!4674053))))

(assert (=> b!7918679 (= res!3142792 (isBalanced!4510 (right!57176 c!5365)))))

(declare-fun b!7918680 () Bool)

(declare-fun res!3142790 () Bool)

(assert (=> b!7918680 (=> (not res!3142790) (not e!4674053))))

(assert (=> b!7918680 (= res!3142790 (<= (- (height!2200 (left!56846 c!5365)) (height!2200 (right!57176 c!5365))) 1))))

(declare-fun b!7918681 () Bool)

(declare-fun e!4674054 () Bool)

(assert (=> b!7918681 (= e!4674054 e!4674053)))

(declare-fun res!3142791 () Bool)

(assert (=> b!7918681 (=> (not res!3142791) (not e!4674053))))

(assert (=> b!7918681 (= res!3142791 (<= (- 1) (- (height!2200 (left!56846 c!5365)) (height!2200 (right!57176 c!5365)))))))

(declare-fun b!7918677 () Bool)

(assert (=> b!7918677 (= e!4674053 (not (isEmpty!42749 (right!57176 c!5365))))))

(declare-fun d!2362547 () Bool)

(declare-fun res!3142794 () Bool)

(assert (=> d!2362547 (=> res!3142794 e!4674054)))

(assert (=> d!2362547 (= res!3142794 (not ((_ is Node!15884) c!5365)))))

(assert (=> d!2362547 (= (isBalanced!4510 c!5365) e!4674054)))

(assert (= (and d!2362547 (not res!3142794)) b!7918681))

(assert (= (and b!7918681 res!3142791) b!7918680))

(assert (= (and b!7918680 res!3142790) b!7918678))

(assert (= (and b!7918678 res!3142795) b!7918679))

(assert (= (and b!7918679 res!3142792) b!7918676))

(assert (= (and b!7918676 res!3142793) b!7918677))

(declare-fun m!8294550 () Bool)

(assert (=> b!7918676 m!8294550))

(assert (=> b!7918681 m!8294514))

(declare-fun m!8294552 () Bool)

(assert (=> b!7918681 m!8294552))

(declare-fun m!8294554 () Bool)

(assert (=> b!7918679 m!8294554))

(assert (=> b!7918680 m!8294514))

(assert (=> b!7918680 m!8294552))

(declare-fun m!8294556 () Bool)

(assert (=> b!7918677 m!8294556))

(declare-fun m!8294558 () Bool)

(assert (=> b!7918678 m!8294558))

(assert (=> start!747882 d!2362547))

(declare-fun d!2362549 () Bool)

(declare-fun c!1453188 () Bool)

(assert (=> d!2362549 (= c!1453188 ((_ is Node!15884) c!5365))))

(declare-fun e!4674059 () Bool)

(assert (=> d!2362549 (= (inv!95622 c!5365) e!4674059)))

(declare-fun b!7918688 () Bool)

(declare-fun inv!95626 (Conc!15884) Bool)

(assert (=> b!7918688 (= e!4674059 (inv!95626 c!5365))))

(declare-fun b!7918689 () Bool)

(declare-fun e!4674060 () Bool)

(assert (=> b!7918689 (= e!4674059 e!4674060)))

(declare-fun res!3142798 () Bool)

(assert (=> b!7918689 (= res!3142798 (not ((_ is Leaf!30207) c!5365)))))

(assert (=> b!7918689 (=> res!3142798 e!4674060)))

(declare-fun b!7918690 () Bool)

(declare-fun inv!95627 (Conc!15884) Bool)

(assert (=> b!7918690 (= e!4674060 (inv!95627 c!5365))))

(assert (= (and d!2362549 c!1453188) b!7918688))

(assert (= (and d!2362549 (not c!1453188)) b!7918689))

(assert (= (and b!7918689 (not res!3142798)) b!7918690))

(declare-fun m!8294560 () Bool)

(assert (=> b!7918688 m!8294560))

(declare-fun m!8294562 () Bool)

(assert (=> b!7918690 m!8294562))

(assert (=> start!747882 d!2362549))

(declare-fun d!2362551 () Bool)

(declare-fun c!1453189 () Bool)

(assert (=> d!2362551 (= c!1453189 ((_ is Node!15884) (left!56846 c!5365)))))

(declare-fun e!4674061 () Bool)

(assert (=> d!2362551 (= (inv!95622 (left!56846 c!5365)) e!4674061)))

(declare-fun b!7918691 () Bool)

(assert (=> b!7918691 (= e!4674061 (inv!95626 (left!56846 c!5365)))))

(declare-fun b!7918692 () Bool)

(declare-fun e!4674062 () Bool)

(assert (=> b!7918692 (= e!4674061 e!4674062)))

(declare-fun res!3142799 () Bool)

(assert (=> b!7918692 (= res!3142799 (not ((_ is Leaf!30207) (left!56846 c!5365))))))

(assert (=> b!7918692 (=> res!3142799 e!4674062)))

(declare-fun b!7918693 () Bool)

(assert (=> b!7918693 (= e!4674062 (inv!95627 (left!56846 c!5365)))))

(assert (= (and d!2362551 c!1453189) b!7918691))

(assert (= (and d!2362551 (not c!1453189)) b!7918692))

(assert (= (and b!7918692 (not res!3142799)) b!7918693))

(declare-fun m!8294564 () Bool)

(assert (=> b!7918691 m!8294564))

(declare-fun m!8294566 () Bool)

(assert (=> b!7918693 m!8294566))

(assert (=> b!7918407 d!2362551))

(declare-fun d!2362553 () Bool)

(declare-fun c!1453190 () Bool)

(assert (=> d!2362553 (= c!1453190 ((_ is Node!15884) (right!57176 c!5365)))))

(declare-fun e!4674063 () Bool)

(assert (=> d!2362553 (= (inv!95622 (right!57176 c!5365)) e!4674063)))

(declare-fun b!7918694 () Bool)

(assert (=> b!7918694 (= e!4674063 (inv!95626 (right!57176 c!5365)))))

(declare-fun b!7918695 () Bool)

(declare-fun e!4674064 () Bool)

(assert (=> b!7918695 (= e!4674063 e!4674064)))

(declare-fun res!3142800 () Bool)

(assert (=> b!7918695 (= res!3142800 (not ((_ is Leaf!30207) (right!57176 c!5365))))))

(assert (=> b!7918695 (=> res!3142800 e!4674064)))

(declare-fun b!7918696 () Bool)

(assert (=> b!7918696 (= e!4674064 (inv!95627 (right!57176 c!5365)))))

(assert (= (and d!2362553 c!1453190) b!7918694))

(assert (= (and d!2362553 (not c!1453190)) b!7918695))

(assert (= (and b!7918695 (not res!3142800)) b!7918696))

(declare-fun m!8294568 () Bool)

(assert (=> b!7918694 m!8294568))

(declare-fun m!8294570 () Bool)

(assert (=> b!7918696 m!8294570))

(assert (=> b!7918407 d!2362553))

(declare-fun d!2362555 () Bool)

(assert (=> d!2362555 (= (++!18246 (++!18246 lt!2691080 lt!2691083) (t!390099 ll!14)) (++!18246 lt!2691080 (++!18246 lt!2691083 (t!390099 ll!14))))))

(declare-fun lt!2691251 () Unit!169553)

(declare-fun choose!59809 (List!74554 List!74554 List!74554) Unit!169553)

(assert (=> d!2362555 (= lt!2691251 (choose!59809 lt!2691080 lt!2691083 (t!390099 ll!14)))))

(assert (=> d!2362555 (= (lemmaConcatAssociativity!3152 lt!2691080 lt!2691083 (t!390099 ll!14)) lt!2691251)))

(declare-fun bs!1968515 () Bool)

(assert (= bs!1968515 d!2362555))

(assert (=> bs!1968515 m!8294220))

(declare-fun m!8294572 () Bool)

(assert (=> bs!1968515 m!8294572))

(assert (=> bs!1968515 m!8294194))

(declare-fun m!8294574 () Bool)

(assert (=> bs!1968515 m!8294574))

(assert (=> bs!1968515 m!8294194))

(declare-fun m!8294576 () Bool)

(assert (=> bs!1968515 m!8294576))

(assert (=> bs!1968515 m!8294220))

(assert (=> b!7918410 d!2362555))

(declare-fun b!7918698 () Bool)

(declare-fun e!4674066 () List!74554)

(assert (=> b!7918698 (= e!4674066 (Cons!74430 (h!80878 lt!2691080) (++!18246 (t!390099 lt!2691080) ($colon$colon!3421 (t!390099 ll!14) (h!80878 ll!14)))))))

(declare-fun b!7918697 () Bool)

(assert (=> b!7918697 (= e!4674066 ($colon$colon!3421 (t!390099 ll!14) (h!80878 ll!14)))))

(declare-fun d!2362557 () Bool)

(declare-fun e!4674065 () Bool)

(assert (=> d!2362557 e!4674065))

(declare-fun res!3142802 () Bool)

(assert (=> d!2362557 (=> (not res!3142802) (not e!4674065))))

(declare-fun lt!2691252 () List!74554)

(assert (=> d!2362557 (= res!3142802 (= (content!15770 lt!2691252) ((_ map or) (content!15770 lt!2691080) (content!15770 ($colon$colon!3421 (t!390099 ll!14) (h!80878 ll!14))))))))

(assert (=> d!2362557 (= lt!2691252 e!4674066)))

(declare-fun c!1453191 () Bool)

(assert (=> d!2362557 (= c!1453191 ((_ is Nil!74430) lt!2691080))))

(assert (=> d!2362557 (= (++!18246 lt!2691080 ($colon$colon!3421 (t!390099 ll!14) (h!80878 ll!14))) lt!2691252)))

(declare-fun b!7918699 () Bool)

(declare-fun res!3142801 () Bool)

(assert (=> b!7918699 (=> (not res!3142801) (not e!4674065))))

(assert (=> b!7918699 (= res!3142801 (= (size!43215 lt!2691252) (+ (size!43215 lt!2691080) (size!43215 ($colon$colon!3421 (t!390099 ll!14) (h!80878 ll!14))))))))

(declare-fun b!7918700 () Bool)

(assert (=> b!7918700 (= e!4674065 (or (not (= ($colon$colon!3421 (t!390099 ll!14) (h!80878 ll!14)) Nil!74430)) (= lt!2691252 lt!2691080)))))

(assert (= (and d!2362557 c!1453191) b!7918697))

(assert (= (and d!2362557 (not c!1453191)) b!7918698))

(assert (= (and d!2362557 res!3142802) b!7918699))

(assert (= (and b!7918699 res!3142801) b!7918700))

(assert (=> b!7918698 m!8294196))

(declare-fun m!8294578 () Bool)

(assert (=> b!7918698 m!8294578))

(declare-fun m!8294580 () Bool)

(assert (=> d!2362557 m!8294580))

(assert (=> d!2362557 m!8294264))

(assert (=> d!2362557 m!8294196))

(declare-fun m!8294582 () Bool)

(assert (=> d!2362557 m!8294582))

(declare-fun m!8294584 () Bool)

(assert (=> b!7918699 m!8294584))

(assert (=> b!7918699 m!8294270))

(assert (=> b!7918699 m!8294196))

(declare-fun m!8294586 () Bool)

(assert (=> b!7918699 m!8294586))

(assert (=> b!7918410 d!2362557))

(declare-fun b!7918702 () Bool)

(declare-fun e!4674068 () List!74554)

(assert (=> b!7918702 (= e!4674068 (Cons!74430 (h!80878 lt!2691080) (++!18246 (t!390099 lt!2691080) lt!2691086)))))

(declare-fun b!7918701 () Bool)

(assert (=> b!7918701 (= e!4674068 lt!2691086)))

(declare-fun d!2362559 () Bool)

(declare-fun e!4674067 () Bool)

(assert (=> d!2362559 e!4674067))

(declare-fun res!3142804 () Bool)

(assert (=> d!2362559 (=> (not res!3142804) (not e!4674067))))

(declare-fun lt!2691253 () List!74554)

(assert (=> d!2362559 (= res!3142804 (= (content!15770 lt!2691253) ((_ map or) (content!15770 lt!2691080) (content!15770 lt!2691086))))))

(assert (=> d!2362559 (= lt!2691253 e!4674068)))

(declare-fun c!1453192 () Bool)

(assert (=> d!2362559 (= c!1453192 ((_ is Nil!74430) lt!2691080))))

(assert (=> d!2362559 (= (++!18246 lt!2691080 lt!2691086) lt!2691253)))

(declare-fun b!7918703 () Bool)

(declare-fun res!3142803 () Bool)

(assert (=> b!7918703 (=> (not res!3142803) (not e!4674067))))

(assert (=> b!7918703 (= res!3142803 (= (size!43215 lt!2691253) (+ (size!43215 lt!2691080) (size!43215 lt!2691086))))))

(declare-fun b!7918704 () Bool)

(assert (=> b!7918704 (= e!4674067 (or (not (= lt!2691086 Nil!74430)) (= lt!2691253 lt!2691080)))))

(assert (= (and d!2362559 c!1453192) b!7918701))

(assert (= (and d!2362559 (not c!1453192)) b!7918702))

(assert (= (and d!2362559 res!3142804) b!7918703))

(assert (= (and b!7918703 res!3142803) b!7918704))

(declare-fun m!8294588 () Bool)

(assert (=> b!7918702 m!8294588))

(declare-fun m!8294590 () Bool)

(assert (=> d!2362559 m!8294590))

(assert (=> d!2362559 m!8294264))

(declare-fun m!8294592 () Bool)

(assert (=> d!2362559 m!8294592))

(declare-fun m!8294594 () Bool)

(assert (=> b!7918703 m!8294594))

(assert (=> b!7918703 m!8294270))

(declare-fun m!8294596 () Bool)

(assert (=> b!7918703 m!8294596))

(assert (=> b!7918410 d!2362559))

(declare-fun b!7918706 () Bool)

(declare-fun e!4674070 () List!74554)

(assert (=> b!7918706 (= e!4674070 (Cons!74430 (h!80878 lt!2691082) (++!18246 (t!390099 lt!2691082) (t!390099 ll!14))))))

(declare-fun b!7918705 () Bool)

(assert (=> b!7918705 (= e!4674070 (t!390099 ll!14))))

(declare-fun d!2362561 () Bool)

(declare-fun e!4674069 () Bool)

(assert (=> d!2362561 e!4674069))

(declare-fun res!3142806 () Bool)

(assert (=> d!2362561 (=> (not res!3142806) (not e!4674069))))

(declare-fun lt!2691254 () List!74554)

(assert (=> d!2362561 (= res!3142806 (= (content!15770 lt!2691254) ((_ map or) (content!15770 lt!2691082) (content!15770 (t!390099 ll!14)))))))

(assert (=> d!2362561 (= lt!2691254 e!4674070)))

(declare-fun c!1453193 () Bool)

(assert (=> d!2362561 (= c!1453193 ((_ is Nil!74430) lt!2691082))))

(assert (=> d!2362561 (= (++!18246 lt!2691082 (t!390099 ll!14)) lt!2691254)))

(declare-fun b!7918707 () Bool)

(declare-fun res!3142805 () Bool)

(assert (=> b!7918707 (=> (not res!3142805) (not e!4674069))))

(assert (=> b!7918707 (= res!3142805 (= (size!43215 lt!2691254) (+ (size!43215 lt!2691082) (size!43215 (t!390099 ll!14)))))))

(declare-fun b!7918708 () Bool)

(assert (=> b!7918708 (= e!4674069 (or (not (= (t!390099 ll!14) Nil!74430)) (= lt!2691254 lt!2691082)))))

(assert (= (and d!2362561 c!1453193) b!7918705))

(assert (= (and d!2362561 (not c!1453193)) b!7918706))

(assert (= (and d!2362561 res!3142806) b!7918707))

(assert (= (and b!7918707 res!3142805) b!7918708))

(declare-fun m!8294598 () Bool)

(assert (=> b!7918706 m!8294598))

(declare-fun m!8294600 () Bool)

(assert (=> d!2362561 m!8294600))

(declare-fun m!8294602 () Bool)

(assert (=> d!2362561 m!8294602))

(assert (=> d!2362561 m!8294314))

(declare-fun m!8294604 () Bool)

(assert (=> b!7918707 m!8294604))

(declare-fun m!8294606 () Bool)

(assert (=> b!7918707 m!8294606))

(assert (=> b!7918707 m!8294210))

(assert (=> b!7918410 d!2362561))

(declare-fun d!2362563 () Bool)

(assert (=> d!2362563 (= ($colon$colon!3421 (t!390099 ll!14) (h!80878 ll!14)) (Cons!74430 (h!80878 ll!14) (t!390099 ll!14)))))

(assert (=> b!7918410 d!2362563))

(declare-fun b!7918710 () Bool)

(declare-fun e!4674072 () List!74554)

(assert (=> b!7918710 (= e!4674072 (Cons!74430 (h!80878 lt!2691083) (++!18246 (t!390099 lt!2691083) (t!390099 ll!14))))))

(declare-fun b!7918709 () Bool)

(assert (=> b!7918709 (= e!4674072 (t!390099 ll!14))))

(declare-fun d!2362565 () Bool)

(declare-fun e!4674071 () Bool)

(assert (=> d!2362565 e!4674071))

(declare-fun res!3142808 () Bool)

(assert (=> d!2362565 (=> (not res!3142808) (not e!4674071))))

(declare-fun lt!2691255 () List!74554)

(assert (=> d!2362565 (= res!3142808 (= (content!15770 lt!2691255) ((_ map or) (content!15770 lt!2691083) (content!15770 (t!390099 ll!14)))))))

(assert (=> d!2362565 (= lt!2691255 e!4674072)))

(declare-fun c!1453194 () Bool)

(assert (=> d!2362565 (= c!1453194 ((_ is Nil!74430) lt!2691083))))

(assert (=> d!2362565 (= (++!18246 lt!2691083 (t!390099 ll!14)) lt!2691255)))

(declare-fun b!7918711 () Bool)

(declare-fun res!3142807 () Bool)

(assert (=> b!7918711 (=> (not res!3142807) (not e!4674071))))

(assert (=> b!7918711 (= res!3142807 (= (size!43215 lt!2691255) (+ (size!43215 lt!2691083) (size!43215 (t!390099 ll!14)))))))

(declare-fun b!7918712 () Bool)

(assert (=> b!7918712 (= e!4674071 (or (not (= (t!390099 ll!14) Nil!74430)) (= lt!2691255 lt!2691083)))))

(assert (= (and d!2362565 c!1453194) b!7918709))

(assert (= (and d!2362565 (not c!1453194)) b!7918710))

(assert (= (and d!2362565 res!3142808) b!7918711))

(assert (= (and b!7918711 res!3142807) b!7918712))

(declare-fun m!8294608 () Bool)

(assert (=> b!7918710 m!8294608))

(declare-fun m!8294610 () Bool)

(assert (=> d!2362565 m!8294610))

(assert (=> d!2362565 m!8294266))

(assert (=> d!2362565 m!8294314))

(declare-fun m!8294612 () Bool)

(assert (=> b!7918711 m!8294612))

(assert (=> b!7918711 m!8294272))

(assert (=> b!7918711 m!8294210))

(assert (=> b!7918410 d!2362565))

(declare-fun d!2362567 () Bool)

(assert (=> d!2362567 (= (inv!95623 (xs!19270 c!5365)) (<= (size!43215 (innerList!15972 (xs!19270 c!5365))) 2147483647))))

(declare-fun bs!1968516 () Bool)

(assert (= bs!1968516 d!2362567))

(declare-fun m!8294614 () Bool)

(assert (=> bs!1968516 m!8294614))

(assert (=> b!7918404 d!2362567))

(declare-fun b!7918717 () Bool)

(declare-fun e!4674075 () Bool)

(declare-fun tp!2357781 () Bool)

(assert (=> b!7918717 (= e!4674075 (and tp_is_empty!53193 tp!2357781))))

(assert (=> b!7918409 (= tp!2357759 e!4674075)))

(assert (= (and b!7918409 ((_ is Cons!74430) (t!390099 ll!14))) b!7918717))

(declare-fun tp!2357789 () Bool)

(declare-fun tp!2357790 () Bool)

(declare-fun e!4674081 () Bool)

(declare-fun b!7918726 () Bool)

(assert (=> b!7918726 (= e!4674081 (and (inv!95622 (left!56846 (left!56846 c!5365))) tp!2357789 (inv!95622 (right!57176 (left!56846 c!5365))) tp!2357790))))

(declare-fun b!7918728 () Bool)

(declare-fun e!4674080 () Bool)

(declare-fun tp!2357788 () Bool)

(assert (=> b!7918728 (= e!4674080 tp!2357788)))

(declare-fun b!7918727 () Bool)

(assert (=> b!7918727 (= e!4674081 (and (inv!95623 (xs!19270 (left!56846 c!5365))) e!4674080))))

(assert (=> b!7918407 (= tp!2357762 (and (inv!95622 (left!56846 c!5365)) e!4674081))))

(assert (= (and b!7918407 ((_ is Node!15884) (left!56846 c!5365))) b!7918726))

(assert (= b!7918727 b!7918728))

(assert (= (and b!7918407 ((_ is Leaf!30207) (left!56846 c!5365))) b!7918727))

(declare-fun m!8294616 () Bool)

(assert (=> b!7918726 m!8294616))

(declare-fun m!8294618 () Bool)

(assert (=> b!7918726 m!8294618))

(declare-fun m!8294620 () Bool)

(assert (=> b!7918727 m!8294620))

(assert (=> b!7918407 m!8294214))

(declare-fun tp!2357793 () Bool)

(declare-fun e!4674083 () Bool)

(declare-fun tp!2357792 () Bool)

(declare-fun b!7918729 () Bool)

(assert (=> b!7918729 (= e!4674083 (and (inv!95622 (left!56846 (right!57176 c!5365))) tp!2357792 (inv!95622 (right!57176 (right!57176 c!5365))) tp!2357793))))

(declare-fun b!7918731 () Bool)

(declare-fun e!4674082 () Bool)

(declare-fun tp!2357791 () Bool)

(assert (=> b!7918731 (= e!4674082 tp!2357791)))

(declare-fun b!7918730 () Bool)

(assert (=> b!7918730 (= e!4674083 (and (inv!95623 (xs!19270 (right!57176 c!5365))) e!4674082))))

(assert (=> b!7918407 (= tp!2357761 (and (inv!95622 (right!57176 c!5365)) e!4674083))))

(assert (= (and b!7918407 ((_ is Node!15884) (right!57176 c!5365))) b!7918729))

(assert (= b!7918730 b!7918731))

(assert (= (and b!7918407 ((_ is Leaf!30207) (right!57176 c!5365))) b!7918730))

(declare-fun m!8294622 () Bool)

(assert (=> b!7918729 m!8294622))

(declare-fun m!8294624 () Bool)

(assert (=> b!7918729 m!8294624))

(declare-fun m!8294626 () Bool)

(assert (=> b!7918730 m!8294626))

(assert (=> b!7918407 m!8294216))

(declare-fun b!7918732 () Bool)

(declare-fun e!4674084 () Bool)

(declare-fun tp!2357794 () Bool)

(assert (=> b!7918732 (= e!4674084 (and tp_is_empty!53193 tp!2357794))))

(assert (=> b!7918405 (= tp!2357760 e!4674084)))

(assert (= (and b!7918405 ((_ is Cons!74430) (innerList!15972 (xs!19270 c!5365)))) b!7918732))

(check-sat (not b!7918707) (not b!7918457) (not d!2362559) (not bm!734814) (not b!7918691) (not d!2362567) (not d!2362555) (not bm!734821) (not b!7918633) (not b!7918711) (not b!7918627) (not bm!734820) (not bm!734815) (not b!7918696) (not bm!734818) (not b!7918688) (not bm!734817) (not d!2362517) (not b!7918679) (not b!7918478) (not b!7918678) (not b!7918628) (not b!7918523) (not b!7918698) (not b!7918730) (not b!7918428) (not b!7918518) (not b!7918706) (not b!7918526) (not b!7918677) (not b!7918477) (not b!7918717) tp_is_empty!53193 (not b!7918481) (not b!7918681) (not bm!734816) (not bm!734819) (not b!7918732) (not b!7918728) (not d!2362499) (not b!7918699) (not b!7918727) (not b!7918624) (not d!2362513) (not d!2362565) (not b!7918726) (not b!7918729) (not b!7918522) (not b!7918676) (not b!7918527) (not b!7918480) (not b!7918456) (not b!7918731) (not bm!734822) (not d!2362557) (not d!2362535) (not b!7918631) (not b!7918694) (not b!7918702) (not b!7918710) (not b!7918430) (not b!7918703) (not b!7918693) (not b!7918690) (not bm!734823) (not b!7918519) (not b!7918407) (not d!2362561) (not b!7918630) (not b!7918680))
(check-sat)
