; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187574 () Bool)

(assert start!187574)

(declare-fun b!1872503 () Bool)

(declare-fun e!1194567 () Bool)

(declare-datatypes ((B!1645 0))(
  ( (B!1646 (val!6012 Int)) )
))
(declare-datatypes ((List!20829 0))(
  ( (Nil!20747) (Cons!20747 (h!26148 B!1645) (t!173046 List!20829)) )
))
(declare-fun l1!1293 () List!20829)

(declare-fun ListPrimitiveSize!143 (List!20829) Int)

(assert (=> b!1872503 (= e!1194567 (>= (ListPrimitiveSize!143 (t!173046 l1!1293)) (ListPrimitiveSize!143 l1!1293)))))

(declare-fun b!1872504 () Bool)

(declare-fun e!1194566 () Bool)

(declare-fun tp_is_empty!8803 () Bool)

(declare-fun tp!532511 () Bool)

(assert (=> b!1872504 (= e!1194566 (and tp_is_empty!8803 tp!532511))))

(declare-fun b!1872501 () Bool)

(declare-fun res!838040 () Bool)

(assert (=> b!1872501 (=> (not res!838040) (not e!1194567))))

(get-info :version)

(assert (=> b!1872501 (= res!838040 ((_ is Cons!20747) l1!1293))))

(declare-fun res!838039 () Bool)

(assert (=> start!187574 (=> (not res!838039) (not e!1194567))))

(declare-fun isEmpty!12953 (List!20829) Bool)

(assert (=> start!187574 (= res!838039 (not (isEmpty!12953 l1!1293)))))

(assert (=> start!187574 e!1194567))

(assert (=> start!187574 e!1194566))

(declare-fun b!1872502 () Bool)

(declare-fun res!838041 () Bool)

(assert (=> b!1872502 (=> (not res!838041) (not e!1194567))))

(assert (=> b!1872502 (= res!838041 (not (isEmpty!12953 (t!173046 l1!1293))))))

(assert (= (and start!187574 res!838039) b!1872501))

(assert (= (and b!1872501 res!838040) b!1872502))

(assert (= (and b!1872502 res!838041) b!1872503))

(assert (= (and start!187574 ((_ is Cons!20747) l1!1293)) b!1872504))

(declare-fun m!2298233 () Bool)

(assert (=> b!1872503 m!2298233))

(declare-fun m!2298235 () Bool)

(assert (=> b!1872503 m!2298235))

(declare-fun m!2298237 () Bool)

(assert (=> start!187574 m!2298237))

(declare-fun m!2298239 () Bool)

(assert (=> b!1872502 m!2298239))

(check-sat (not start!187574) (not b!1872504) (not b!1872503) (not b!1872502) tp_is_empty!8803)
(check-sat)
(get-model)

(declare-fun d!572455 () Bool)

(declare-fun lt!719684 () Int)

(assert (=> d!572455 (>= lt!719684 0)))

(declare-fun e!1194574 () Int)

(assert (=> d!572455 (= lt!719684 e!1194574)))

(declare-fun c!305272 () Bool)

(assert (=> d!572455 (= c!305272 ((_ is Nil!20747) (t!173046 l1!1293)))))

(assert (=> d!572455 (= (ListPrimitiveSize!143 (t!173046 l1!1293)) lt!719684)))

(declare-fun b!1872517 () Bool)

(assert (=> b!1872517 (= e!1194574 0)))

(declare-fun b!1872518 () Bool)

(assert (=> b!1872518 (= e!1194574 (+ 1 (ListPrimitiveSize!143 (t!173046 (t!173046 l1!1293)))))))

(assert (= (and d!572455 c!305272) b!1872517))

(assert (= (and d!572455 (not c!305272)) b!1872518))

(declare-fun m!2298243 () Bool)

(assert (=> b!1872518 m!2298243))

(assert (=> b!1872503 d!572455))

(declare-fun d!572463 () Bool)

(declare-fun lt!719685 () Int)

(assert (=> d!572463 (>= lt!719685 0)))

(declare-fun e!1194577 () Int)

(assert (=> d!572463 (= lt!719685 e!1194577)))

(declare-fun c!305273 () Bool)

(assert (=> d!572463 (= c!305273 ((_ is Nil!20747) l1!1293))))

(assert (=> d!572463 (= (ListPrimitiveSize!143 l1!1293) lt!719685)))

(declare-fun b!1872523 () Bool)

(assert (=> b!1872523 (= e!1194577 0)))

(declare-fun b!1872524 () Bool)

(assert (=> b!1872524 (= e!1194577 (+ 1 (ListPrimitiveSize!143 (t!173046 l1!1293))))))

(assert (= (and d!572463 c!305273) b!1872523))

(assert (= (and d!572463 (not c!305273)) b!1872524))

(assert (=> b!1872524 m!2298233))

(assert (=> b!1872503 d!572463))

(declare-fun d!572465 () Bool)

(assert (=> d!572465 (= (isEmpty!12953 l1!1293) ((_ is Nil!20747) l1!1293))))

(assert (=> start!187574 d!572465))

(declare-fun d!572467 () Bool)

(assert (=> d!572467 (= (isEmpty!12953 (t!173046 l1!1293)) ((_ is Nil!20747) (t!173046 l1!1293)))))

(assert (=> b!1872502 d!572467))

(declare-fun b!1872530 () Bool)

(declare-fun e!1194581 () Bool)

(declare-fun tp!532517 () Bool)

(assert (=> b!1872530 (= e!1194581 (and tp_is_empty!8803 tp!532517))))

(assert (=> b!1872504 (= tp!532511 e!1194581)))

(assert (= (and b!1872504 ((_ is Cons!20747) (t!173046 l1!1293))) b!1872530))

(check-sat (not b!1872524) (not b!1872518) (not b!1872530) tp_is_empty!8803)
(check-sat)
