; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1742 () Bool)

(assert start!1742)

(declare-fun b!12255 () Bool)

(declare-fun e!7322 () Bool)

(declare-datatypes ((B!448 0))(
  ( (B!449 (val!319 Int)) )
))
(declare-datatypes ((tuple2!420 0))(
  ( (tuple2!421 (_1!210 (_ BitVec 64)) (_2!210 B!448)) )
))
(declare-datatypes ((List!366 0))(
  ( (Nil!363) (Cons!362 (h!928 tuple2!420) (t!2753 List!366)) )
))
(declare-fun l!1094 () List!366)

(declare-fun ListPrimitiveSize!17 (List!366) Int)

(assert (=> b!12255 (= e!7322 (>= (ListPrimitiveSize!17 (t!2753 l!1094)) (ListPrimitiveSize!17 l!1094)))))

(declare-fun b!12256 () Bool)

(declare-fun e!7321 () Bool)

(declare-fun tp_is_empty!621 () Bool)

(declare-fun tp!2063 () Bool)

(assert (=> b!12256 (= e!7321 (and tp_is_empty!621 tp!2063))))

(declare-fun b!12257 () Bool)

(declare-fun res!9940 () Bool)

(assert (=> b!12257 (=> (not res!9940) (not e!7322))))

(declare-fun isStrictlySorted!63 (List!366) Bool)

(assert (=> b!12257 (= res!9940 (isStrictlySorted!63 (t!2753 l!1094)))))

(declare-fun b!12258 () Bool)

(declare-fun e!7320 () Bool)

(assert (=> b!12258 (= e!7320 e!7322)))

(declare-fun res!9942 () Bool)

(assert (=> b!12258 (=> (not res!9942) (not e!7322))))

(declare-fun key!303 () (_ BitVec 64))

(declare-datatypes ((Option!51 0))(
  ( (Some!50 (v!1365 B!448)) (None!49) )
))
(declare-fun lt!3111 () Option!51)

(declare-fun getValueByKey!45 (List!366 (_ BitVec 64)) Option!51)

(assert (=> b!12258 (= res!9942 (= (getValueByKey!45 l!1094 key!303) lt!3111))))

(declare-fun v!194 () B!448)

(assert (=> b!12258 (= lt!3111 (Some!50 v!194))))

(declare-fun res!9941 () Bool)

(assert (=> start!1742 (=> (not res!9941) (not e!7320))))

(assert (=> start!1742 (= res!9941 (isStrictlySorted!63 l!1094))))

(assert (=> start!1742 e!7320))

(assert (=> start!1742 e!7321))

(assert (=> start!1742 tp_is_empty!621))

(assert (=> start!1742 true))

(declare-fun b!12259 () Bool)

(declare-fun res!9939 () Bool)

(assert (=> b!12259 (=> (not res!9939) (not e!7322))))

(assert (=> b!12259 (= res!9939 (= (getValueByKey!45 (t!2753 l!1094) key!303) lt!3111))))

(declare-fun b!12260 () Bool)

(declare-fun res!9943 () Bool)

(assert (=> b!12260 (=> (not res!9943) (not e!7322))))

(get-info :version)

(assert (=> b!12260 (= res!9943 (and ((_ is Cons!362) l!1094) (not (= (_1!210 (h!928 l!1094)) key!303))))))

(assert (= (and start!1742 res!9941) b!12258))

(assert (= (and b!12258 res!9942) b!12260))

(assert (= (and b!12260 res!9943) b!12257))

(assert (= (and b!12257 res!9940) b!12259))

(assert (= (and b!12259 res!9939) b!12255))

(assert (= (and start!1742 ((_ is Cons!362) l!1094)) b!12256))

(declare-fun m!8411 () Bool)

(assert (=> b!12255 m!8411))

(declare-fun m!8413 () Bool)

(assert (=> b!12255 m!8413))

(declare-fun m!8415 () Bool)

(assert (=> b!12258 m!8415))

(declare-fun m!8417 () Bool)

(assert (=> start!1742 m!8417))

(declare-fun m!8419 () Bool)

(assert (=> b!12259 m!8419))

(declare-fun m!8421 () Bool)

(assert (=> b!12257 m!8421))

(check-sat (not b!12257) (not b!12256) (not b!12258) tp_is_empty!621 (not b!12259) (not b!12255) (not start!1742))
(check-sat)
(get-model)

(declare-fun b!12294 () Bool)

(declare-fun e!7341 () Option!51)

(assert (=> b!12294 (= e!7341 None!49)))

(declare-fun b!12291 () Bool)

(declare-fun e!7340 () Option!51)

(assert (=> b!12291 (= e!7340 (Some!50 (_2!210 (h!928 (t!2753 l!1094)))))))

(declare-fun b!12292 () Bool)

(assert (=> b!12292 (= e!7340 e!7341)))

(declare-fun c!1070 () Bool)

(assert (=> b!12292 (= c!1070 (and ((_ is Cons!362) (t!2753 l!1094)) (not (= (_1!210 (h!928 (t!2753 l!1094))) key!303))))))

(declare-fun d!1715 () Bool)

(declare-fun c!1069 () Bool)

(assert (=> d!1715 (= c!1069 (and ((_ is Cons!362) (t!2753 l!1094)) (= (_1!210 (h!928 (t!2753 l!1094))) key!303)))))

(assert (=> d!1715 (= (getValueByKey!45 (t!2753 l!1094) key!303) e!7340)))

(declare-fun b!12293 () Bool)

(assert (=> b!12293 (= e!7341 (getValueByKey!45 (t!2753 (t!2753 l!1094)) key!303))))

(assert (= (and d!1715 c!1069) b!12291))

(assert (= (and d!1715 (not c!1069)) b!12292))

(assert (= (and b!12292 c!1070) b!12293))

(assert (= (and b!12292 (not c!1070)) b!12294))

(declare-fun m!8435 () Bool)

(assert (=> b!12293 m!8435))

(assert (=> b!12259 d!1715))

(declare-fun d!1721 () Bool)

(declare-fun lt!3119 () Int)

(assert (=> d!1721 (>= lt!3119 0)))

(declare-fun e!7352 () Int)

(assert (=> d!1721 (= lt!3119 e!7352)))

(declare-fun c!1075 () Bool)

(assert (=> d!1721 (= c!1075 ((_ is Nil!363) (t!2753 l!1094)))))

(assert (=> d!1721 (= (ListPrimitiveSize!17 (t!2753 l!1094)) lt!3119)))

(declare-fun b!12309 () Bool)

(assert (=> b!12309 (= e!7352 0)))

(declare-fun b!12311 () Bool)

(assert (=> b!12311 (= e!7352 (+ 1 (ListPrimitiveSize!17 (t!2753 (t!2753 l!1094)))))))

(assert (= (and d!1721 c!1075) b!12309))

(assert (= (and d!1721 (not c!1075)) b!12311))

(declare-fun m!8441 () Bool)

(assert (=> b!12311 m!8441))

(assert (=> b!12255 d!1721))

(declare-fun d!1727 () Bool)

(declare-fun lt!3122 () Int)

(assert (=> d!1727 (>= lt!3122 0)))

(declare-fun e!7355 () Int)

(assert (=> d!1727 (= lt!3122 e!7355)))

(declare-fun c!1078 () Bool)

(assert (=> d!1727 (= c!1078 ((_ is Nil!363) l!1094))))

(assert (=> d!1727 (= (ListPrimitiveSize!17 l!1094) lt!3122)))

(declare-fun b!12315 () Bool)

(assert (=> b!12315 (= e!7355 0)))

(declare-fun b!12316 () Bool)

(assert (=> b!12316 (= e!7355 (+ 1 (ListPrimitiveSize!17 (t!2753 l!1094))))))

(assert (= (and d!1727 c!1078) b!12315))

(assert (= (and d!1727 (not c!1078)) b!12316))

(assert (=> b!12316 m!8411))

(assert (=> b!12255 d!1727))

(declare-fun d!1731 () Bool)

(declare-fun res!9977 () Bool)

(declare-fun e!7368 () Bool)

(assert (=> d!1731 (=> res!9977 e!7368)))

(assert (=> d!1731 (= res!9977 (or ((_ is Nil!363) (t!2753 l!1094)) ((_ is Nil!363) (t!2753 (t!2753 l!1094)))))))

(assert (=> d!1731 (= (isStrictlySorted!63 (t!2753 l!1094)) e!7368)))

(declare-fun b!12333 () Bool)

(declare-fun e!7369 () Bool)

(assert (=> b!12333 (= e!7368 e!7369)))

(declare-fun res!9978 () Bool)

(assert (=> b!12333 (=> (not res!9978) (not e!7369))))

(assert (=> b!12333 (= res!9978 (bvslt (_1!210 (h!928 (t!2753 l!1094))) (_1!210 (h!928 (t!2753 (t!2753 l!1094))))))))

(declare-fun b!12334 () Bool)

(assert (=> b!12334 (= e!7369 (isStrictlySorted!63 (t!2753 (t!2753 l!1094))))))

(assert (= (and d!1731 (not res!9977)) b!12333))

(assert (= (and b!12333 res!9978) b!12334))

(declare-fun m!8445 () Bool)

(assert (=> b!12334 m!8445))

(assert (=> b!12257 d!1731))

(declare-fun d!1737 () Bool)

(declare-fun res!9979 () Bool)

(declare-fun e!7374 () Bool)

(assert (=> d!1737 (=> res!9979 e!7374)))

(assert (=> d!1737 (= res!9979 (or ((_ is Nil!363) l!1094) ((_ is Nil!363) (t!2753 l!1094))))))

(assert (=> d!1737 (= (isStrictlySorted!63 l!1094) e!7374)))

(declare-fun b!12343 () Bool)

(declare-fun e!7375 () Bool)

(assert (=> b!12343 (= e!7374 e!7375)))

(declare-fun res!9980 () Bool)

(assert (=> b!12343 (=> (not res!9980) (not e!7375))))

(assert (=> b!12343 (= res!9980 (bvslt (_1!210 (h!928 l!1094)) (_1!210 (h!928 (t!2753 l!1094)))))))

(declare-fun b!12344 () Bool)

(assert (=> b!12344 (= e!7375 (isStrictlySorted!63 (t!2753 l!1094)))))

(assert (= (and d!1737 (not res!9979)) b!12343))

(assert (= (and b!12343 res!9980) b!12344))

(assert (=> b!12344 m!8421))

(assert (=> start!1742 d!1737))

(declare-fun b!12348 () Bool)

(declare-fun e!7377 () Option!51)

(assert (=> b!12348 (= e!7377 None!49)))

(declare-fun b!12345 () Bool)

(declare-fun e!7376 () Option!51)

(assert (=> b!12345 (= e!7376 (Some!50 (_2!210 (h!928 l!1094))))))

(declare-fun b!12346 () Bool)

(assert (=> b!12346 (= e!7376 e!7377)))

(declare-fun c!1088 () Bool)

(assert (=> b!12346 (= c!1088 (and ((_ is Cons!362) l!1094) (not (= (_1!210 (h!928 l!1094)) key!303))))))

(declare-fun d!1739 () Bool)

(declare-fun c!1087 () Bool)

(assert (=> d!1739 (= c!1087 (and ((_ is Cons!362) l!1094) (= (_1!210 (h!928 l!1094)) key!303)))))

(assert (=> d!1739 (= (getValueByKey!45 l!1094 key!303) e!7376)))

(declare-fun b!12347 () Bool)

(assert (=> b!12347 (= e!7377 (getValueByKey!45 (t!2753 l!1094) key!303))))

(assert (= (and d!1739 c!1087) b!12345))

(assert (= (and d!1739 (not c!1087)) b!12346))

(assert (= (and b!12346 c!1088) b!12347))

(assert (= (and b!12346 (not c!1088)) b!12348))

(assert (=> b!12347 m!8419))

(assert (=> b!12258 d!1739))

(declare-fun b!12361 () Bool)

(declare-fun e!7384 () Bool)

(declare-fun tp!2069 () Bool)

(assert (=> b!12361 (= e!7384 (and tp_is_empty!621 tp!2069))))

(assert (=> b!12256 (= tp!2063 e!7384)))

(assert (= (and b!12256 ((_ is Cons!362) (t!2753 l!1094))) b!12361))

(check-sat (not b!12344) (not b!12361) (not b!12316) (not b!12334) (not b!12347) tp_is_empty!621 (not b!12293) (not b!12311))
(check-sat)
