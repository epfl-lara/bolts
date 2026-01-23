; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107196 () Bool)

(assert start!107196)

(declare-fun b!1203622 () Bool)

(declare-fun e!772201 () Bool)

(declare-fun tp_is_empty!6019 () Bool)

(declare-fun tp!341641 () Bool)

(assert (=> b!1203622 (= e!772201 (and tp_is_empty!6019 tp!341641))))

(declare-fun res!542163 () Bool)

(declare-fun e!772204 () Bool)

(assert (=> start!107196 (=> (not res!542163) (not e!772204))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107196 (= res!542163 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107196 e!772204))

(assert (=> start!107196 true))

(declare-fun e!772202 () Bool)

(assert (=> start!107196 e!772202))

(assert (=> start!107196 e!772201))

(declare-fun b!1203621 () Bool)

(declare-fun tp!341640 () Bool)

(assert (=> b!1203621 (= e!772202 (and tp_is_empty!6019 tp!341640))))

(declare-fun b!1203620 () Bool)

(declare-fun e!772203 () Bool)

(declare-fun lt!411428 () Int)

(declare-fun lt!411426 () Int)

(assert (=> b!1203620 (= e!772203 (or (> 0 lt!411428) (> lt!411428 lt!411426)))))

(declare-fun lt!411425 () Int)

(assert (=> b!1203620 (= lt!411428 (- until!61 lt!411425))))

(declare-datatypes ((T!21922 0))(
  ( (T!21923 (val!3908 Int)) )
))
(declare-datatypes ((List!12087 0))(
  ( (Nil!12063) (Cons!12063 (h!17464 T!21922) (t!112503 List!12087)) )
))
(declare-fun l!2744 () List!12087)

(declare-fun lt!411427 () List!12087)

(declare-fun slice!493 (List!12087 Int Int) List!12087)

(assert (=> b!1203620 (= lt!411427 (slice!493 l!2744 from!613 lt!411425))))

(declare-fun b!1203619 () Bool)

(assert (=> b!1203619 (= e!772204 e!772203)))

(declare-fun res!542164 () Bool)

(assert (=> b!1203619 (=> (not res!542164) (not e!772203))))

(declare-fun r!2028 () List!12087)

(assert (=> b!1203619 (= res!542164 (and (<= until!61 (+ lt!411425 lt!411426)) (or (= l!2744 Nil!12063) (= r!2028 Nil!12063)) (> lt!411425 from!613) (> until!61 lt!411425)))))

(declare-fun size!9603 (List!12087) Int)

(assert (=> b!1203619 (= lt!411426 (size!9603 r!2028))))

(assert (=> b!1203619 (= lt!411425 (size!9603 l!2744))))

(assert (= (and start!107196 res!542163) b!1203619))

(assert (= (and b!1203619 res!542164) b!1203620))

(get-info :version)

(assert (= (and start!107196 ((_ is Cons!12063) l!2744)) b!1203621))

(assert (= (and start!107196 ((_ is Cons!12063) r!2028)) b!1203622))

(declare-fun m!1379299 () Bool)

(assert (=> b!1203620 m!1379299))

(declare-fun m!1379301 () Bool)

(assert (=> b!1203619 m!1379301))

(declare-fun m!1379303 () Bool)

(assert (=> b!1203619 m!1379303))

(check-sat (not b!1203620) (not b!1203621) tp_is_empty!6019 (not b!1203619) (not b!1203622))
(check-sat)
