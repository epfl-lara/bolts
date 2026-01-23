; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187350 () Bool)

(assert start!187350)

(declare-fun res!837655 () Bool)

(declare-fun e!1193739 () Bool)

(assert (=> start!187350 (=> (not res!837655) (not e!1193739))))

(declare-fun lt!719316 () Int)

(declare-datatypes ((T!33352 0))(
  ( (T!33353 (val!5975 Int)) )
))
(declare-datatypes ((List!20792 0))(
  ( (Nil!20710) (Cons!20710 (h!26111 T!33352) (t!173009 List!20792)) )
))
(declare-fun l!2791 () List!20792)

(assert (=> start!187350 (= res!837655 (and (> lt!719316 0) (not (is-Nil!20710 l!2791))))))

(declare-fun size!16443 (List!20792) Int)

(assert (=> start!187350 (= lt!719316 (size!16443 l!2791))))

(assert (=> start!187350 e!1193739))

(declare-fun e!1193738 () Bool)

(assert (=> start!187350 e!1193738))

(declare-fun b!1871129 () Bool)

(declare-fun res!837654 () Bool)

(assert (=> b!1871129 (=> (not res!837654) (not e!1193739))))

(declare-fun tail!2850 (List!20792) List!20792)

(assert (=> b!1871129 (= res!837654 (= (tail!2850 l!2791) (t!173009 l!2791)))))

(declare-fun b!1871130 () Bool)

(assert (=> b!1871130 (= e!1193739 false)))

(declare-fun lt!719318 () List!20792)

(declare-fun lt!719317 () Int)

(declare-fun slice!590 (List!20792 Int Int) List!20792)

(assert (=> b!1871130 (= lt!719318 (slice!590 (t!173009 l!2791) 0 lt!719317))))

(declare-fun lt!719319 () List!20792)

(assert (=> b!1871130 (= lt!719319 (slice!590 l!2791 1 lt!719316))))

(assert (=> b!1871130 (= lt!719317 (size!16443 (t!173009 l!2791)))))

(declare-fun b!1871131 () Bool)

(declare-fun tp_is_empty!8729 () Bool)

(declare-fun tp!532304 () Bool)

(assert (=> b!1871131 (= e!1193738 (and tp_is_empty!8729 tp!532304))))

(assert (= (and start!187350 res!837655) b!1871129))

(assert (= (and b!1871129 res!837654) b!1871130))

(assert (= (and start!187350 (is-Cons!20710 l!2791)) b!1871131))

(declare-fun m!2297187 () Bool)

(assert (=> start!187350 m!2297187))

(declare-fun m!2297189 () Bool)

(assert (=> b!1871129 m!2297189))

(declare-fun m!2297191 () Bool)

(assert (=> b!1871130 m!2297191))

(declare-fun m!2297193 () Bool)

(assert (=> b!1871130 m!2297193))

(declare-fun m!2297195 () Bool)

(assert (=> b!1871130 m!2297195))

(push 1)

(assert (not start!187350))

(assert (not b!1871129))

(assert (not b!1871131))

(assert tp_is_empty!8729)

(assert (not b!1871130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

