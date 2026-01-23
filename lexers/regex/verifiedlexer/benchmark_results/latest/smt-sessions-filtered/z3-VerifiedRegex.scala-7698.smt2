; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405090 () Bool)

(assert start!405090)

(declare-fun b!4233936 () Bool)

(declare-fun res!1741371 () Bool)

(declare-fun e!2628892 () Bool)

(assert (=> b!4233936 (=> (not res!1741371) (not e!2628892))))

(declare-datatypes ((B!2745 0))(
  ( (B!2746 (val!15074 Int)) )
))
(declare-datatypes ((List!46871 0))(
  ( (Nil!46747) (Cons!46747 (h!52167 B!2745) (t!349574 List!46871)) )
))
(declare-fun l!3106 () List!46871)

(declare-fun e2!42 () B!2745)

(declare-fun contains!9691 (List!46871 B!2745) Bool)

(assert (=> b!4233936 (= res!1741371 (contains!9691 l!3106 e2!42))))

(declare-fun b!4233937 () Bool)

(declare-fun res!1741376 () Bool)

(declare-fun e!2628891 () Bool)

(assert (=> b!4233937 (=> (not res!1741376) (not e!2628891))))

(declare-fun lt!1505420 () List!46871)

(assert (=> b!4233937 (= res!1741376 (contains!9691 lt!1505420 e2!42))))

(declare-fun b!4233938 () Bool)

(declare-fun e!2628889 () Bool)

(declare-fun tp_is_empty!22561 () Bool)

(declare-fun tp!1296552 () Bool)

(assert (=> b!4233938 (= e!2628889 (and tp_is_empty!22561 tp!1296552))))

(declare-fun b!4233939 () Bool)

(declare-fun e!2628890 () Bool)

(assert (=> b!4233939 (= e!2628890 e!2628891)))

(declare-fun res!1741374 () Bool)

(assert (=> b!4233939 (=> (not res!1741374) (not e!2628891))))

(declare-fun e1!42 () B!2745)

(assert (=> b!4233939 (= res!1741374 (contains!9691 lt!1505420 e1!42))))

(declare-fun tail!6824 (List!46871) List!46871)

(assert (=> b!4233939 (= lt!1505420 (tail!6824 l!3106))))

(declare-fun b!4233940 () Bool)

(declare-fun res!1741373 () Bool)

(assert (=> b!4233940 (=> (not res!1741373) (not e!2628890))))

(declare-fun lt!1505419 () Int)

(assert (=> b!4233940 (= res!1741373 (not (= lt!1505419 0)))))

(declare-fun b!4233941 () Bool)

(assert (=> b!4233941 (= e!2628892 e!2628890)))

(declare-fun res!1741372 () Bool)

(assert (=> b!4233941 (=> (not res!1741372) (not e!2628890))))

(declare-fun getIndex!890 (List!46871 B!2745) Int)

(assert (=> b!4233941 (= res!1741372 (= lt!1505419 (getIndex!890 l!3106 e2!42)))))

(assert (=> b!4233941 (= lt!1505419 (getIndex!890 l!3106 e1!42))))

(declare-fun res!1741375 () Bool)

(assert (=> start!405090 (=> (not res!1741375) (not e!2628892))))

(assert (=> start!405090 (= res!1741375 (contains!9691 l!3106 e1!42))))

(assert (=> start!405090 e!2628892))

(assert (=> start!405090 e!2628889))

(assert (=> start!405090 tp_is_empty!22561))

(declare-fun b!4233942 () Bool)

(assert (=> b!4233942 (= e!2628891 false)))

(declare-fun lt!1505418 () Int)

(assert (=> b!4233942 (= lt!1505418 (getIndex!890 lt!1505420 e2!42))))

(declare-fun lt!1505417 () Int)

(assert (=> b!4233942 (= lt!1505417 (getIndex!890 lt!1505420 e1!42))))

(assert (= (and start!405090 res!1741375) b!4233936))

(assert (= (and b!4233936 res!1741371) b!4233941))

(assert (= (and b!4233941 res!1741372) b!4233940))

(assert (= (and b!4233940 res!1741373) b!4233939))

(assert (= (and b!4233939 res!1741374) b!4233937))

(assert (= (and b!4233937 res!1741376) b!4233942))

(get-info :version)

(assert (= (and start!405090 ((_ is Cons!46747) l!3106)) b!4233938))

(declare-fun m!4820213 () Bool)

(assert (=> b!4233941 m!4820213))

(declare-fun m!4820215 () Bool)

(assert (=> b!4233941 m!4820215))

(declare-fun m!4820217 () Bool)

(assert (=> b!4233939 m!4820217))

(declare-fun m!4820219 () Bool)

(assert (=> b!4233939 m!4820219))

(declare-fun m!4820221 () Bool)

(assert (=> b!4233936 m!4820221))

(declare-fun m!4820223 () Bool)

(assert (=> b!4233942 m!4820223))

(declare-fun m!4820225 () Bool)

(assert (=> b!4233942 m!4820225))

(declare-fun m!4820227 () Bool)

(assert (=> b!4233937 m!4820227))

(declare-fun m!4820229 () Bool)

(assert (=> start!405090 m!4820229))

(check-sat (not b!4233936) (not b!4233939) (not b!4233941) tp_is_empty!22561 (not b!4233937) (not b!4233938) (not start!405090) (not b!4233942))
(check-sat)
