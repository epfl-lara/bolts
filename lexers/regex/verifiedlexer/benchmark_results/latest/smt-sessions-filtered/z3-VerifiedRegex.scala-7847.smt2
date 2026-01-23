; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411464 () Bool)

(assert start!411464)

(declare-fun b!4282163 () Bool)

(declare-fun res!1757496 () Bool)

(declare-fun e!2658349 () Bool)

(assert (=> b!4282163 (=> (not res!1757496) (not e!2658349))))

(declare-fun i!813 () Int)

(declare-datatypes ((B!2897 0))(
  ( (B!2898 (val!15318 Int)) )
))
(declare-datatypes ((List!47527 0))(
  ( (Nil!47403) (Cons!47403 (h!52823 B!2897) (t!354116 List!47527)) )
))
(declare-fun l!2982 () List!47527)

(declare-fun size!34739 (List!47527) Int)

(assert (=> b!4282163 (= res!1757496 (< i!813 (size!34739 l!2982)))))

(declare-fun b!4282164 () Bool)

(declare-fun res!1757499 () Bool)

(assert (=> b!4282164 (=> (not res!1757499) (not e!2658349))))

(get-info :version)

(assert (=> b!4282164 (= res!1757499 (and (not ((_ is Nil!47403) l!2982)) (not (= i!813 0))))))

(declare-fun b!4282165 () Bool)

(declare-fun e!2658351 () Bool)

(assert (=> b!4282165 (= e!2658349 e!2658351)))

(declare-fun res!1757498 () Bool)

(assert (=> b!4282165 (=> res!1757498 e!2658351)))

(assert (=> b!4282165 (= res!1757498 (< (- i!813 1) 0))))

(declare-fun b!4282166 () Bool)

(assert (=> b!4282166 (= e!2658351 (>= (- i!813 1) (size!34739 (t!354116 l!2982))))))

(declare-fun res!1757497 () Bool)

(assert (=> start!411464 (=> (not res!1757497) (not e!2658349))))

(assert (=> start!411464 (= res!1757497 (>= i!813 0))))

(assert (=> start!411464 e!2658349))

(assert (=> start!411464 true))

(declare-fun e!2658350 () Bool)

(assert (=> start!411464 e!2658350))

(declare-fun b!4282167 () Bool)

(declare-fun tp_is_empty!23045 () Bool)

(declare-fun tp!1309516 () Bool)

(assert (=> b!4282167 (= e!2658350 (and tp_is_empty!23045 tp!1309516))))

(assert (= (and start!411464 res!1757497) b!4282163))

(assert (= (and b!4282163 res!1757496) b!4282164))

(assert (= (and b!4282164 res!1757499) b!4282165))

(assert (= (and b!4282165 (not res!1757498)) b!4282166))

(assert (= (and start!411464 ((_ is Cons!47403) l!2982)) b!4282167))

(declare-fun m!4879311 () Bool)

(assert (=> b!4282163 m!4879311))

(declare-fun m!4879313 () Bool)

(assert (=> b!4282166 m!4879313))

(check-sat (not b!4282163) (not b!4282166) (not b!4282167) tp_is_empty!23045)
(check-sat)
(get-model)

(declare-fun d!1264880 () Bool)

(declare-fun lt!1515330 () Int)

(assert (=> d!1264880 (>= lt!1515330 0)))

(declare-fun e!2658356 () Int)

(assert (=> d!1264880 (= lt!1515330 e!2658356)))

(declare-fun c!729903 () Bool)

(assert (=> d!1264880 (= c!729903 ((_ is Nil!47403) l!2982))))

(assert (=> d!1264880 (= (size!34739 l!2982) lt!1515330)))

(declare-fun b!4282176 () Bool)

(assert (=> b!4282176 (= e!2658356 0)))

(declare-fun b!4282177 () Bool)

(assert (=> b!4282177 (= e!2658356 (+ 1 (size!34739 (t!354116 l!2982))))))

(assert (= (and d!1264880 c!729903) b!4282176))

(assert (= (and d!1264880 (not c!729903)) b!4282177))

(assert (=> b!4282177 m!4879313))

(assert (=> b!4282163 d!1264880))

(declare-fun d!1264884 () Bool)

(declare-fun lt!1515331 () Int)

(assert (=> d!1264884 (>= lt!1515331 0)))

(declare-fun e!2658357 () Int)

(assert (=> d!1264884 (= lt!1515331 e!2658357)))

(declare-fun c!729904 () Bool)

(assert (=> d!1264884 (= c!729904 ((_ is Nil!47403) (t!354116 l!2982)))))

(assert (=> d!1264884 (= (size!34739 (t!354116 l!2982)) lt!1515331)))

(declare-fun b!4282178 () Bool)

(assert (=> b!4282178 (= e!2658357 0)))

(declare-fun b!4282179 () Bool)

(assert (=> b!4282179 (= e!2658357 (+ 1 (size!34739 (t!354116 (t!354116 l!2982)))))))

(assert (= (and d!1264884 c!729904) b!4282178))

(assert (= (and d!1264884 (not c!729904)) b!4282179))

(declare-fun m!4879315 () Bool)

(assert (=> b!4282179 m!4879315))

(assert (=> b!4282166 d!1264884))

(declare-fun b!4282192 () Bool)

(declare-fun e!2658364 () Bool)

(declare-fun tp!1309521 () Bool)

(assert (=> b!4282192 (= e!2658364 (and tp_is_empty!23045 tp!1309521))))

(assert (=> b!4282167 (= tp!1309516 e!2658364)))

(assert (= (and b!4282167 ((_ is Cons!47403) (t!354116 l!2982))) b!4282192))

(check-sat (not b!4282179) (not b!4282177) (not b!4282192) tp_is_empty!23045)
(check-sat)
