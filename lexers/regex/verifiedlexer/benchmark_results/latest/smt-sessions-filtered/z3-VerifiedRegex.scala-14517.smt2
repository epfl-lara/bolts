; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754648 () Bool)

(assert start!754648)

(declare-fun b!8018356 () Bool)

(declare-fun e!4723340 () Bool)

(declare-fun tp_is_empty!53973 () Bool)

(declare-fun tp!2400073 () Bool)

(assert (=> b!8018356 (= e!4723340 (and tp_is_empty!53973 tp!2400073))))

(declare-fun b!8018358 () Bool)

(declare-fun e!4723342 () Bool)

(declare-fun e!4723341 () Bool)

(assert (=> b!8018358 (= e!4723342 e!4723341)))

(declare-fun res!3170359 () Bool)

(assert (=> b!8018358 (=> (not res!3170359) (not e!4723341))))

(declare-datatypes ((B!4085 0))(
  ( (B!4086 (val!32432 Int)) )
))
(declare-datatypes ((List!74944 0))(
  ( (Nil!74820) (Cons!74820 (h!81268 B!4085) (t!390687 List!74944)) )
))
(declare-fun p!2009 () List!74944)

(declare-fun lt!2719269 () List!74944)

(declare-fun isPrefix!6767 (List!74944 List!74944) Bool)

(assert (=> b!8018358 (= res!3170359 (isPrefix!6767 (t!390687 p!2009) lt!2719269))))

(declare-fun l!3435 () List!74944)

(declare-fun tail!15908 (List!74944) List!74944)

(assert (=> b!8018358 (= lt!2719269 (tail!15908 l!3435))))

(declare-fun b!8018359 () Bool)

(assert (=> b!8018359 (= e!4723341 (not true))))

(declare-fun ++!18521 (List!74944 List!74944) List!74944)

(declare-fun head!16381 (List!74944) B!4085)

(declare-fun getSuffix!3942 (List!74944 List!74944) List!74944)

(assert (=> b!8018359 (isPrefix!6767 (++!18521 (t!390687 p!2009) (Cons!74820 (head!16381 (getSuffix!3942 lt!2719269 (t!390687 p!2009))) Nil!74820)) lt!2719269)))

(declare-datatypes ((Unit!170908 0))(
  ( (Unit!170909) )
))
(declare-fun lt!2719268 () Unit!170908)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1420 (List!74944 List!74944) Unit!170908)

(assert (=> b!8018359 (= lt!2719268 (lemmaAddHeadSuffixToPrefixStillPrefix!1420 (t!390687 p!2009) lt!2719269))))

(declare-fun b!8018360 () Bool)

(declare-fun res!3170357 () Bool)

(assert (=> b!8018360 (=> (not res!3170357) (not e!4723342))))

(declare-fun size!43611 (List!74944) Int)

(assert (=> b!8018360 (= res!3170357 (< (size!43611 p!2009) (size!43611 l!3435)))))

(declare-fun b!8018361 () Bool)

(declare-fun res!3170358 () Bool)

(assert (=> b!8018361 (=> (not res!3170358) (not e!4723342))))

(get-info :version)

(assert (=> b!8018361 (= res!3170358 ((_ is Cons!74820) p!2009))))

(declare-fun b!8018362 () Bool)

(declare-fun e!4723343 () Bool)

(declare-fun tp!2400074 () Bool)

(assert (=> b!8018362 (= e!4723343 (and tp_is_empty!53973 tp!2400074))))

(declare-fun res!3170360 () Bool)

(assert (=> start!754648 (=> (not res!3170360) (not e!4723342))))

(assert (=> start!754648 (= res!3170360 (isPrefix!6767 p!2009 l!3435))))

(assert (=> start!754648 e!4723342))

(assert (=> start!754648 e!4723343))

(assert (=> start!754648 e!4723340))

(declare-fun b!8018357 () Bool)

(declare-fun res!3170356 () Bool)

(assert (=> b!8018357 (=> (not res!3170356) (not e!4723341))))

(assert (=> b!8018357 (= res!3170356 (< (size!43611 (t!390687 p!2009)) (size!43611 lt!2719269)))))

(assert (= (and start!754648 res!3170360) b!8018360))

(assert (= (and b!8018360 res!3170357) b!8018361))

(assert (= (and b!8018361 res!3170358) b!8018358))

(assert (= (and b!8018358 res!3170359) b!8018357))

(assert (= (and b!8018357 res!3170356) b!8018359))

(assert (= (and start!754648 ((_ is Cons!74820) p!2009)) b!8018362))

(assert (= (and start!754648 ((_ is Cons!74820) l!3435)) b!8018356))

(declare-fun m!8381326 () Bool)

(assert (=> b!8018358 m!8381326))

(declare-fun m!8381328 () Bool)

(assert (=> b!8018358 m!8381328))

(declare-fun m!8381330 () Bool)

(assert (=> b!8018359 m!8381330))

(declare-fun m!8381332 () Bool)

(assert (=> b!8018359 m!8381332))

(declare-fun m!8381334 () Bool)

(assert (=> b!8018359 m!8381334))

(declare-fun m!8381336 () Bool)

(assert (=> b!8018359 m!8381336))

(assert (=> b!8018359 m!8381332))

(assert (=> b!8018359 m!8381330))

(declare-fun m!8381338 () Bool)

(assert (=> b!8018359 m!8381338))

(declare-fun m!8381340 () Bool)

(assert (=> b!8018357 m!8381340))

(declare-fun m!8381342 () Bool)

(assert (=> b!8018357 m!8381342))

(declare-fun m!8381344 () Bool)

(assert (=> start!754648 m!8381344))

(declare-fun m!8381346 () Bool)

(assert (=> b!8018360 m!8381346))

(declare-fun m!8381348 () Bool)

(assert (=> b!8018360 m!8381348))

(check-sat tp_is_empty!53973 (not b!8018357) (not b!8018358) (not start!754648) (not b!8018359) (not b!8018362) (not b!8018360) (not b!8018356))
(check-sat)
