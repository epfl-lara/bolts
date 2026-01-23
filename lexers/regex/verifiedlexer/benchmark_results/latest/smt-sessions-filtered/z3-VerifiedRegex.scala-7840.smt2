; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411360 () Bool)

(assert start!411360)

(declare-fun res!1757313 () Bool)

(declare-fun e!2657893 () Bool)

(assert (=> start!411360 (=> (not res!1757313) (not e!2657893))))

(declare-fun i!813 () Int)

(assert (=> start!411360 (= res!1757313 (>= i!813 0))))

(assert (=> start!411360 e!2657893))

(assert (=> start!411360 true))

(declare-fun e!2657892 () Bool)

(assert (=> start!411360 e!2657892))

(declare-fun b!4281327 () Bool)

(declare-fun tp_is_empty!23017 () Bool)

(declare-fun tp!1309434 () Bool)

(assert (=> b!4281327 (= e!2657892 (and tp_is_empty!23017 tp!1309434))))

(declare-fun b!4281325 () Bool)

(declare-fun res!1757311 () Bool)

(assert (=> b!4281325 (=> (not res!1757311) (not e!2657893))))

(declare-datatypes ((B!2869 0))(
  ( (B!2870 (val!15304 Int)) )
))
(declare-datatypes ((List!47513 0))(
  ( (Nil!47389) (Cons!47389 (h!52809 B!2869) (t!354102 List!47513)) )
))
(declare-fun l!2982 () List!47513)

(get-info :version)

(assert (=> b!4281325 (= res!1757311 ((_ is Nil!47389) l!2982))))

(declare-fun b!4281324 () Bool)

(declare-fun res!1757312 () Bool)

(assert (=> b!4281324 (=> (not res!1757312) (not e!2657893))))

(declare-fun size!34725 (List!47513) Int)

(assert (=> b!4281324 (= res!1757312 (< i!813 (size!34725 l!2982)))))

(declare-fun b!4281326 () Bool)

(declare-fun drop!2171 (List!47513 Int) List!47513)

(assert (=> b!4281326 (= e!2657893 (= (drop!2171 l!2982 i!813) Nil!47389))))

(assert (= (and start!411360 res!1757313) b!4281324))

(assert (= (and b!4281324 res!1757312) b!4281325))

(assert (= (and b!4281325 res!1757311) b!4281326))

(assert (= (and start!411360 ((_ is Cons!47389) l!2982)) b!4281327))

(declare-fun m!4878907 () Bool)

(assert (=> b!4281324 m!4878907))

(declare-fun m!4878909 () Bool)

(assert (=> b!4281326 m!4878909))

(check-sat (not b!4281324) (not b!4281326) (not b!4281327) tp_is_empty!23017)
(check-sat)
(get-model)

(declare-fun d!1264707 () Bool)

(declare-fun lt!1515207 () Int)

(assert (=> d!1264707 (>= lt!1515207 0)))

(declare-fun e!2657899 () Int)

(assert (=> d!1264707 (= lt!1515207 e!2657899)))

(declare-fun c!729630 () Bool)

(assert (=> d!1264707 (= c!729630 ((_ is Nil!47389) l!2982))))

(assert (=> d!1264707 (= (size!34725 l!2982) lt!1515207)))

(declare-fun b!4281338 () Bool)

(assert (=> b!4281338 (= e!2657899 0)))

(declare-fun b!4281339 () Bool)

(assert (=> b!4281339 (= e!2657899 (+ 1 (size!34725 (t!354102 l!2982))))))

(assert (= (and d!1264707 c!729630) b!4281338))

(assert (= (and d!1264707 (not c!729630)) b!4281339))

(declare-fun m!4878913 () Bool)

(assert (=> b!4281339 m!4878913))

(assert (=> b!4281324 d!1264707))

(declare-fun b!4281390 () Bool)

(declare-fun e!2657929 () Bool)

(declare-fun lt!1515213 () List!47513)

(declare-fun e!2657931 () Int)

(assert (=> b!4281390 (= e!2657929 (= (size!34725 lt!1515213) e!2657931))))

(declare-fun c!729652 () Bool)

(assert (=> b!4281390 (= c!729652 (<= i!813 0))))

(declare-fun b!4281391 () Bool)

(declare-fun e!2657930 () List!47513)

(assert (=> b!4281391 (= e!2657930 (drop!2171 (t!354102 l!2982) (- i!813 1)))))

(declare-fun b!4281392 () Bool)

(assert (=> b!4281392 (= e!2657930 l!2982)))

(declare-fun b!4281393 () Bool)

(declare-fun call!294359 () Int)

(assert (=> b!4281393 (= e!2657931 call!294359)))

(declare-fun b!4281394 () Bool)

(declare-fun e!2657928 () Int)

(assert (=> b!4281394 (= e!2657931 e!2657928)))

(declare-fun c!729654 () Bool)

(assert (=> b!4281394 (= c!729654 (>= i!813 call!294359))))

(declare-fun b!4281395 () Bool)

(assert (=> b!4281395 (= e!2657928 (- call!294359 i!813))))

(declare-fun d!1264711 () Bool)

(assert (=> d!1264711 e!2657929))

(declare-fun res!1757319 () Bool)

(assert (=> d!1264711 (=> (not res!1757319) (not e!2657929))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7507 (List!47513) (InoxSet B!2869))

(assert (=> d!1264711 (= res!1757319 (= ((_ map implies) (content!7507 lt!1515213) (content!7507 l!2982)) ((as const (InoxSet B!2869)) true)))))

(declare-fun e!2657932 () List!47513)

(assert (=> d!1264711 (= lt!1515213 e!2657932)))

(declare-fun c!729651 () Bool)

(assert (=> d!1264711 (= c!729651 ((_ is Nil!47389) l!2982))))

(assert (=> d!1264711 (= (drop!2171 l!2982 i!813) lt!1515213)))

(declare-fun b!4281396 () Bool)

(assert (=> b!4281396 (= e!2657928 0)))

(declare-fun bm!294354 () Bool)

(assert (=> bm!294354 (= call!294359 (size!34725 l!2982))))

(declare-fun b!4281397 () Bool)

(assert (=> b!4281397 (= e!2657932 Nil!47389)))

(declare-fun b!4281398 () Bool)

(assert (=> b!4281398 (= e!2657932 e!2657930)))

(declare-fun c!729653 () Bool)

(assert (=> b!4281398 (= c!729653 (<= i!813 0))))

(assert (= (and d!1264711 c!729651) b!4281397))

(assert (= (and d!1264711 (not c!729651)) b!4281398))

(assert (= (and b!4281398 c!729653) b!4281392))

(assert (= (and b!4281398 (not c!729653)) b!4281391))

(assert (= (and d!1264711 res!1757319) b!4281390))

(assert (= (and b!4281390 c!729652) b!4281393))

(assert (= (and b!4281390 (not c!729652)) b!4281394))

(assert (= (and b!4281394 c!729654) b!4281396))

(assert (= (and b!4281394 (not c!729654)) b!4281395))

(assert (= (or b!4281393 b!4281394 b!4281395) bm!294354))

(declare-fun m!4878923 () Bool)

(assert (=> b!4281390 m!4878923))

(declare-fun m!4878925 () Bool)

(assert (=> b!4281391 m!4878925))

(declare-fun m!4878927 () Bool)

(assert (=> d!1264711 m!4878927))

(declare-fun m!4878929 () Bool)

(assert (=> d!1264711 m!4878929))

(assert (=> bm!294354 m!4878907))

(assert (=> b!4281326 d!1264711))

(declare-fun b!4281403 () Bool)

(declare-fun e!2657935 () Bool)

(declare-fun tp!1309440 () Bool)

(assert (=> b!4281403 (= e!2657935 (and tp_is_empty!23017 tp!1309440))))

(assert (=> b!4281327 (= tp!1309434 e!2657935)))

(assert (= (and b!4281327 ((_ is Cons!47389) (t!354102 l!2982))) b!4281403))

(check-sat (not b!4281390) (not bm!294354) (not b!4281403) (not b!4281391) (not b!4281339) tp_is_empty!23017 (not d!1264711))
(check-sat)
