; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187356 () Bool)

(assert start!187356)

(declare-fun b!1871166 () Bool)

(declare-fun e!1193763 () Bool)

(declare-fun e!1193762 () Bool)

(assert (=> b!1871166 (= e!1193763 e!1193762)))

(declare-fun res!837682 () Bool)

(assert (=> b!1871166 (=> (not res!837682) (not e!1193762))))

(declare-datatypes ((T!33368 0))(
  ( (T!33369 (val!5978 Int)) )
))
(declare-datatypes ((List!20795 0))(
  ( (Nil!20713) (Cons!20713 (h!26114 T!33368) (t!173012 List!20795)) )
))
(declare-fun l!2791 () List!20795)

(declare-fun lt!719349 () Int)

(declare-fun lt!719347 () Int)

(declare-fun slice!593 (List!20795 Int Int) List!20795)

(assert (=> b!1871166 (= res!837682 (= (slice!593 l!2791 1 lt!719347) (slice!593 (t!173012 l!2791) 0 lt!719349)))))

(declare-fun size!16446 (List!20795) Int)

(assert (=> b!1871166 (= lt!719349 (size!16446 (t!173012 l!2791)))))

(declare-fun b!1871167 () Bool)

(assert (=> b!1871167 (= e!1193762 (not (not (= l!2791 Nil!20713))))))

(declare-fun tail!2853 (List!20795) List!20795)

(assert (=> b!1871167 (= (tail!2853 (t!173012 l!2791)) (slice!593 (t!173012 l!2791) 1 lt!719349))))

(declare-datatypes ((Unit!35319 0))(
  ( (Unit!35320) )
))
(declare-fun lt!719348 () Unit!35319)

(declare-fun sliceTailLemma!42 (List!20795) Unit!35319)

(assert (=> b!1871167 (= lt!719348 (sliceTailLemma!42 (t!173012 l!2791)))))

(declare-fun b!1871168 () Bool)

(declare-fun res!837684 () Bool)

(assert (=> b!1871168 (=> (not res!837684) (not e!1193763))))

(assert (=> b!1871168 (= res!837684 (= (tail!2853 l!2791) (t!173012 l!2791)))))

(declare-fun b!1871169 () Bool)

(declare-fun e!1193761 () Bool)

(declare-fun tp_is_empty!8735 () Bool)

(declare-fun tp!532313 () Bool)

(assert (=> b!1871169 (= e!1193761 (and tp_is_empty!8735 tp!532313))))

(declare-fun res!837685 () Bool)

(assert (=> start!187356 (=> (not res!837685) (not e!1193763))))

(get-info :version)

(assert (=> start!187356 (= res!837685 (and (> lt!719347 0) (not ((_ is Nil!20713) l!2791))))))

(assert (=> start!187356 (= lt!719347 (size!16446 l!2791))))

(assert (=> start!187356 e!1193763))

(assert (=> start!187356 e!1193761))

(declare-fun b!1871170 () Bool)

(declare-fun res!837683 () Bool)

(assert (=> b!1871170 (=> (not res!837683) (not e!1193762))))

(assert (=> b!1871170 (= res!837683 (> lt!719349 0))))

(assert (= (and start!187356 res!837685) b!1871168))

(assert (= (and b!1871168 res!837684) b!1871166))

(assert (= (and b!1871166 res!837682) b!1871170))

(assert (= (and b!1871170 res!837683) b!1871167))

(assert (= (and start!187356 ((_ is Cons!20713) l!2791)) b!1871169))

(declare-fun m!2297223 () Bool)

(assert (=> b!1871166 m!2297223))

(declare-fun m!2297225 () Bool)

(assert (=> b!1871166 m!2297225))

(declare-fun m!2297227 () Bool)

(assert (=> b!1871166 m!2297227))

(declare-fun m!2297229 () Bool)

(assert (=> b!1871167 m!2297229))

(declare-fun m!2297231 () Bool)

(assert (=> b!1871167 m!2297231))

(declare-fun m!2297233 () Bool)

(assert (=> b!1871167 m!2297233))

(declare-fun m!2297235 () Bool)

(assert (=> b!1871168 m!2297235))

(declare-fun m!2297237 () Bool)

(assert (=> start!187356 m!2297237))

(check-sat (not start!187356) tp_is_empty!8735 (not b!1871166) (not b!1871167) (not b!1871168) (not b!1871169))
(check-sat)
