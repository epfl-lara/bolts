; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107220 () Bool)

(assert start!107220)

(declare-fun b!1203773 () Bool)

(declare-fun e!772318 () Bool)

(declare-fun tp_is_empty!6035 () Bool)

(declare-fun tp!341697 () Bool)

(assert (=> b!1203773 (= e!772318 (and tp_is_empty!6035 tp!341697))))

(declare-fun b!1203772 () Bool)

(declare-fun e!772315 () Bool)

(declare-fun lt!411484 () Int)

(declare-fun lt!411485 () Int)

(assert (=> b!1203772 (= e!772315 (or (> 0 lt!411484) (> lt!411484 lt!411485)))))

(declare-fun until!61 () Int)

(declare-fun lt!411486 () Int)

(assert (=> b!1203772 (= lt!411484 (- until!61 lt!411486))))

(declare-datatypes ((T!21978 0))(
  ( (T!21979 (val!3916 Int)) )
))
(declare-datatypes ((List!12095 0))(
  ( (Nil!12071) (Cons!12071 (h!17472 T!21978) (t!112511 List!12095)) )
))
(declare-fun l!2744 () List!12095)

(declare-fun from!613 () Int)

(declare-fun lt!411483 () List!12095)

(declare-fun slice!495 (List!12095 Int Int) List!12095)

(assert (=> b!1203772 (= lt!411483 (slice!495 l!2744 from!613 lt!411486))))

(declare-fun b!1203774 () Bool)

(declare-fun e!772317 () Bool)

(declare-fun tp!341696 () Bool)

(assert (=> b!1203774 (= e!772317 (and tp_is_empty!6035 tp!341696))))

(declare-fun res!542223 () Bool)

(declare-fun e!772316 () Bool)

(assert (=> start!107220 (=> (not res!542223) (not e!772316))))

(assert (=> start!107220 (= res!542223 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107220 e!772316))

(assert (=> start!107220 true))

(assert (=> start!107220 e!772318))

(assert (=> start!107220 e!772317))

(declare-fun b!1203771 () Bool)

(assert (=> b!1203771 (= e!772316 e!772315)))

(declare-fun res!542224 () Bool)

(assert (=> b!1203771 (=> (not res!542224) (not e!772315))))

(declare-fun r!2028 () List!12095)

(assert (=> b!1203771 (= res!542224 (and (<= until!61 (+ lt!411486 lt!411485)) (not (= l!2744 Nil!12071)) (not (= r!2028 Nil!12071)) (= until!61 0) (> lt!411486 from!613) (> until!61 lt!411486)))))

(declare-fun size!9611 (List!12095) Int)

(assert (=> b!1203771 (= lt!411485 (size!9611 r!2028))))

(assert (=> b!1203771 (= lt!411486 (size!9611 l!2744))))

(assert (= (and start!107220 res!542223) b!1203771))

(assert (= (and b!1203771 res!542224) b!1203772))

(get-info :version)

(assert (= (and start!107220 ((_ is Cons!12071) l!2744)) b!1203773))

(assert (= (and start!107220 ((_ is Cons!12071) r!2028)) b!1203774))

(declare-fun m!1379375 () Bool)

(assert (=> b!1203772 m!1379375))

(declare-fun m!1379377 () Bool)

(assert (=> b!1203771 m!1379377))

(declare-fun m!1379379 () Bool)

(assert (=> b!1203771 m!1379379))

(check-sat tp_is_empty!6035 (not b!1203772) (not b!1203773) (not b!1203771) (not b!1203774))
(check-sat)
