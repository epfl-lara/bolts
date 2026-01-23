; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411472 () Bool)

(assert start!411472)

(declare-fun b!4282219 () Bool)

(declare-fun res!1757520 () Bool)

(declare-fun e!2658377 () Bool)

(assert (=> b!4282219 (=> (not res!1757520) (not e!2658377))))

(declare-fun i!813 () Int)

(declare-datatypes ((B!2901 0))(
  ( (B!2902 (val!15320 Int)) )
))
(declare-datatypes ((List!47529 0))(
  ( (Nil!47405) (Cons!47405 (h!52825 B!2901) (t!354118 List!47529)) )
))
(declare-fun l!2982 () List!47529)

(declare-fun size!34741 (List!47529) Int)

(assert (=> b!4282219 (= res!1757520 (< i!813 (size!34741 l!2982)))))

(declare-fun b!4282220 () Bool)

(declare-fun e!2658376 () Bool)

(declare-fun tp_is_empty!23049 () Bool)

(declare-fun tp!1309528 () Bool)

(assert (=> b!4282220 (= e!2658376 (and tp_is_empty!23049 tp!1309528))))

(declare-fun res!1757522 () Bool)

(assert (=> start!411472 (=> (not res!1757522) (not e!2658377))))

(assert (=> start!411472 (= res!1757522 (>= i!813 0))))

(assert (=> start!411472 e!2658377))

(assert (=> start!411472 true))

(assert (=> start!411472 e!2658376))

(declare-fun b!4282221 () Bool)

(declare-fun res!1757521 () Bool)

(assert (=> b!4282221 (=> (not res!1757521) (not e!2658377))))

(assert (=> b!4282221 (= res!1757521 (< (- i!813 1) (size!34741 (t!354118 l!2982))))))

(declare-fun b!4282222 () Bool)

(declare-fun res!1757523 () Bool)

(assert (=> b!4282222 (=> (not res!1757523) (not e!2658377))))

(get-info :version)

(assert (=> b!4282222 (= res!1757523 (and (not ((_ is Nil!47405) l!2982)) (not (= i!813 0)) (>= (- i!813 1) 0)))))

(declare-fun b!4282223 () Bool)

(declare-fun ListPrimitiveSize!321 (List!47529) Int)

(assert (=> b!4282223 (= e!2658377 (>= (ListPrimitiveSize!321 (t!354118 l!2982)) (ListPrimitiveSize!321 l!2982)))))

(assert (= (and start!411472 res!1757522) b!4282219))

(assert (= (and b!4282219 res!1757520) b!4282222))

(assert (= (and b!4282222 res!1757523) b!4282221))

(assert (= (and b!4282221 res!1757521) b!4282223))

(assert (= (and start!411472 ((_ is Cons!47405) l!2982)) b!4282220))

(declare-fun m!4879327 () Bool)

(assert (=> b!4282219 m!4879327))

(declare-fun m!4879329 () Bool)

(assert (=> b!4282221 m!4879329))

(declare-fun m!4879331 () Bool)

(assert (=> b!4282223 m!4879331))

(declare-fun m!4879333 () Bool)

(assert (=> b!4282223 m!4879333))

(check-sat (not b!4282220) tp_is_empty!23049 (not b!4282223) (not b!4282219) (not b!4282221))
(check-sat)
(get-model)

(declare-fun d!1264889 () Bool)

(declare-fun lt!1515336 () Int)

(assert (=> d!1264889 (>= lt!1515336 0)))

(declare-fun e!2658380 () Int)

(assert (=> d!1264889 (= lt!1515336 e!2658380)))

(declare-fun c!729909 () Bool)

(assert (=> d!1264889 (= c!729909 ((_ is Nil!47405) l!2982))))

(assert (=> d!1264889 (= (size!34741 l!2982) lt!1515336)))

(declare-fun b!4282228 () Bool)

(assert (=> b!4282228 (= e!2658380 0)))

(declare-fun b!4282229 () Bool)

(assert (=> b!4282229 (= e!2658380 (+ 1 (size!34741 (t!354118 l!2982))))))

(assert (= (and d!1264889 c!729909) b!4282228))

(assert (= (and d!1264889 (not c!729909)) b!4282229))

(assert (=> b!4282229 m!4879329))

(assert (=> b!4282219 d!1264889))

(declare-fun d!1264893 () Bool)

(declare-fun lt!1515341 () Int)

(assert (=> d!1264893 (>= lt!1515341 0)))

(declare-fun e!2658385 () Int)

(assert (=> d!1264893 (= lt!1515341 e!2658385)))

(declare-fun c!729914 () Bool)

(assert (=> d!1264893 (= c!729914 ((_ is Nil!47405) (t!354118 l!2982)))))

(assert (=> d!1264893 (= (ListPrimitiveSize!321 (t!354118 l!2982)) lt!1515341)))

(declare-fun b!4282238 () Bool)

(assert (=> b!4282238 (= e!2658385 0)))

(declare-fun b!4282239 () Bool)

(assert (=> b!4282239 (= e!2658385 (+ 1 (ListPrimitiveSize!321 (t!354118 (t!354118 l!2982)))))))

(assert (= (and d!1264893 c!729914) b!4282238))

(assert (= (and d!1264893 (not c!729914)) b!4282239))

(declare-fun m!4879335 () Bool)

(assert (=> b!4282239 m!4879335))

(assert (=> b!4282223 d!1264893))

(declare-fun d!1264895 () Bool)

(declare-fun lt!1515343 () Int)

(assert (=> d!1264895 (>= lt!1515343 0)))

(declare-fun e!2658387 () Int)

(assert (=> d!1264895 (= lt!1515343 e!2658387)))

(declare-fun c!729916 () Bool)

(assert (=> d!1264895 (= c!729916 ((_ is Nil!47405) l!2982))))

(assert (=> d!1264895 (= (ListPrimitiveSize!321 l!2982) lt!1515343)))

(declare-fun b!4282242 () Bool)

(assert (=> b!4282242 (= e!2658387 0)))

(declare-fun b!4282243 () Bool)

(assert (=> b!4282243 (= e!2658387 (+ 1 (ListPrimitiveSize!321 (t!354118 l!2982))))))

(assert (= (and d!1264895 c!729916) b!4282242))

(assert (= (and d!1264895 (not c!729916)) b!4282243))

(assert (=> b!4282243 m!4879331))

(assert (=> b!4282223 d!1264895))

(declare-fun d!1264899 () Bool)

(declare-fun lt!1515344 () Int)

(assert (=> d!1264899 (>= lt!1515344 0)))

(declare-fun e!2658388 () Int)

(assert (=> d!1264899 (= lt!1515344 e!2658388)))

(declare-fun c!729917 () Bool)

(assert (=> d!1264899 (= c!729917 ((_ is Nil!47405) (t!354118 l!2982)))))

(assert (=> d!1264899 (= (size!34741 (t!354118 l!2982)) lt!1515344)))

(declare-fun b!4282244 () Bool)

(assert (=> b!4282244 (= e!2658388 0)))

(declare-fun b!4282245 () Bool)

(assert (=> b!4282245 (= e!2658388 (+ 1 (size!34741 (t!354118 (t!354118 l!2982)))))))

(assert (= (and d!1264899 c!729917) b!4282244))

(assert (= (and d!1264899 (not c!729917)) b!4282245))

(declare-fun m!4879337 () Bool)

(assert (=> b!4282245 m!4879337))

(assert (=> b!4282221 d!1264899))

(declare-fun b!4282250 () Bool)

(declare-fun e!2658391 () Bool)

(declare-fun tp!1309531 () Bool)

(assert (=> b!4282250 (= e!2658391 (and tp_is_empty!23049 tp!1309531))))

(assert (=> b!4282220 (= tp!1309528 e!2658391)))

(assert (= (and b!4282220 ((_ is Cons!47405) (t!354118 l!2982))) b!4282250))

(check-sat (not b!4282239) (not b!4282250) (not b!4282245) (not b!4282243) tp_is_empty!23049 (not b!4282229))
(check-sat)
