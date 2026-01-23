; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416942 () Bool)

(assert start!416942)

(declare-fun b!4328605 () Bool)

(declare-fun e!2693490 () Bool)

(declare-datatypes ((K!9770 0))(
  ( (K!9771 (val!16087 Int)) )
))
(declare-datatypes ((V!10016 0))(
  ( (V!10017 (val!16088 Int)) )
))
(declare-datatypes ((tuple2!47552 0))(
  ( (tuple2!47553 (_1!27070 K!9770) (_2!27070 V!10016)) )
))
(declare-datatypes ((List!48604 0))(
  ( (Nil!48480) (Cons!48480 (h!53949 tuple2!47552) (t!355516 List!48604)) )
))
(declare-fun l!13867 () List!48604)

(declare-fun ListPrimitiveSize!325 (List!48604) Int)

(assert (=> b!4328605 (= e!2693490 (>= (ListPrimitiveSize!325 (t!355516 l!13867)) (ListPrimitiveSize!325 l!13867)))))

(declare-fun b!4328603 () Bool)

(declare-fun res!1773819 () Bool)

(assert (=> b!4328603 (=> (not res!1773819) (not e!2693490))))

(declare-fun key!5269 () K!9770)

(get-info :version)

(assert (=> b!4328603 (= res!1773819 (and (or (not ((_ is Cons!48480) l!13867)) (not (= (_1!27070 (h!53949 l!13867)) key!5269))) ((_ is Cons!48480) l!13867)))))

(declare-fun res!1773820 () Bool)

(assert (=> start!416942 (=> (not res!1773820) (not e!2693490))))

(declare-fun noDuplicateKeys!293 (List!48604) Bool)

(assert (=> start!416942 (= res!1773820 (noDuplicateKeys!293 l!13867))))

(assert (=> start!416942 e!2693490))

(declare-fun e!2693491 () Bool)

(assert (=> start!416942 e!2693491))

(declare-fun tp_is_empty!24361 () Bool)

(assert (=> start!416942 tp_is_empty!24361))

(declare-fun tp!1328046 () Bool)

(declare-fun b!4328606 () Bool)

(declare-fun tp_is_empty!24363 () Bool)

(assert (=> b!4328606 (= e!2693491 (and tp_is_empty!24361 tp_is_empty!24363 tp!1328046))))

(declare-fun b!4328604 () Bool)

(declare-fun res!1773821 () Bool)

(assert (=> b!4328604 (=> (not res!1773821) (not e!2693490))))

(assert (=> b!4328604 (= res!1773821 (noDuplicateKeys!293 (t!355516 l!13867)))))

(assert (= (and start!416942 res!1773820) b!4328603))

(assert (= (and b!4328603 res!1773819) b!4328604))

(assert (= (and b!4328604 res!1773821) b!4328605))

(assert (= (and start!416942 ((_ is Cons!48480) l!13867)) b!4328606))

(declare-fun m!4923357 () Bool)

(assert (=> b!4328605 m!4923357))

(declare-fun m!4923359 () Bool)

(assert (=> b!4328605 m!4923359))

(declare-fun m!4923361 () Bool)

(assert (=> start!416942 m!4923361))

(declare-fun m!4923363 () Bool)

(assert (=> b!4328604 m!4923363))

(check-sat (not b!4328605) (not start!416942) tp_is_empty!24361 (not b!4328604) (not b!4328606) tp_is_empty!24363)
(check-sat)
(get-model)

(declare-fun d!1272222 () Bool)

(declare-fun res!1773826 () Bool)

(declare-fun e!2693500 () Bool)

(assert (=> d!1272222 (=> res!1773826 e!2693500)))

(assert (=> d!1272222 (= res!1773826 (not ((_ is Cons!48480) l!13867)))))

(assert (=> d!1272222 (= (noDuplicateKeys!293 l!13867) e!2693500)))

(declare-fun b!4328619 () Bool)

(declare-fun e!2693501 () Bool)

(assert (=> b!4328619 (= e!2693500 e!2693501)))

(declare-fun res!1773827 () Bool)

(assert (=> b!4328619 (=> (not res!1773827) (not e!2693501))))

(declare-fun containsKey!441 (List!48604 K!9770) Bool)

(assert (=> b!4328619 (= res!1773827 (not (containsKey!441 (t!355516 l!13867) (_1!27070 (h!53949 l!13867)))))))

(declare-fun b!4328620 () Bool)

(assert (=> b!4328620 (= e!2693501 (noDuplicateKeys!293 (t!355516 l!13867)))))

(assert (= (and d!1272222 (not res!1773826)) b!4328619))

(assert (= (and b!4328619 res!1773827) b!4328620))

(declare-fun m!4923367 () Bool)

(assert (=> b!4328619 m!4923367))

(assert (=> b!4328620 m!4923363))

(assert (=> start!416942 d!1272222))

(declare-fun d!1272228 () Bool)

(declare-fun res!1773828 () Bool)

(declare-fun e!2693502 () Bool)

(assert (=> d!1272228 (=> res!1773828 e!2693502)))

(assert (=> d!1272228 (= res!1773828 (not ((_ is Cons!48480) (t!355516 l!13867))))))

(assert (=> d!1272228 (= (noDuplicateKeys!293 (t!355516 l!13867)) e!2693502)))

(declare-fun b!4328621 () Bool)

(declare-fun e!2693503 () Bool)

(assert (=> b!4328621 (= e!2693502 e!2693503)))

(declare-fun res!1773829 () Bool)

(assert (=> b!4328621 (=> (not res!1773829) (not e!2693503))))

(assert (=> b!4328621 (= res!1773829 (not (containsKey!441 (t!355516 (t!355516 l!13867)) (_1!27070 (h!53949 (t!355516 l!13867))))))))

(declare-fun b!4328622 () Bool)

(assert (=> b!4328622 (= e!2693503 (noDuplicateKeys!293 (t!355516 (t!355516 l!13867))))))

(assert (= (and d!1272228 (not res!1773828)) b!4328621))

(assert (= (and b!4328621 res!1773829) b!4328622))

(declare-fun m!4923369 () Bool)

(assert (=> b!4328621 m!4923369))

(declare-fun m!4923371 () Bool)

(assert (=> b!4328622 m!4923371))

(assert (=> b!4328604 d!1272228))

(declare-fun d!1272230 () Bool)

(declare-fun lt!1545254 () Int)

(assert (=> d!1272230 (>= lt!1545254 0)))

(declare-fun e!2693510 () Int)

(assert (=> d!1272230 (= lt!1545254 e!2693510)))

(declare-fun c!736558 () Bool)

(assert (=> d!1272230 (= c!736558 ((_ is Nil!48480) (t!355516 l!13867)))))

(assert (=> d!1272230 (= (ListPrimitiveSize!325 (t!355516 l!13867)) lt!1545254)))

(declare-fun b!4328631 () Bool)

(assert (=> b!4328631 (= e!2693510 0)))

(declare-fun b!4328632 () Bool)

(assert (=> b!4328632 (= e!2693510 (+ 1 (ListPrimitiveSize!325 (t!355516 (t!355516 l!13867)))))))

(assert (= (and d!1272230 c!736558) b!4328631))

(assert (= (and d!1272230 (not c!736558)) b!4328632))

(declare-fun m!4923373 () Bool)

(assert (=> b!4328632 m!4923373))

(assert (=> b!4328605 d!1272230))

(declare-fun d!1272232 () Bool)

(declare-fun lt!1545255 () Int)

(assert (=> d!1272232 (>= lt!1545255 0)))

(declare-fun e!2693513 () Int)

(assert (=> d!1272232 (= lt!1545255 e!2693513)))

(declare-fun c!736559 () Bool)

(assert (=> d!1272232 (= c!736559 ((_ is Nil!48480) l!13867))))

(assert (=> d!1272232 (= (ListPrimitiveSize!325 l!13867) lt!1545255)))

(declare-fun b!4328635 () Bool)

(assert (=> b!4328635 (= e!2693513 0)))

(declare-fun b!4328636 () Bool)

(assert (=> b!4328636 (= e!2693513 (+ 1 (ListPrimitiveSize!325 (t!355516 l!13867))))))

(assert (= (and d!1272232 c!736559) b!4328635))

(assert (= (and d!1272232 (not c!736559)) b!4328636))

(assert (=> b!4328636 m!4923357))

(assert (=> b!4328605 d!1272232))

(declare-fun tp!1328049 () Bool)

(declare-fun b!4328643 () Bool)

(declare-fun e!2693518 () Bool)

(assert (=> b!4328643 (= e!2693518 (and tp_is_empty!24361 tp_is_empty!24363 tp!1328049))))

(assert (=> b!4328606 (= tp!1328046 e!2693518)))

(assert (= (and b!4328606 ((_ is Cons!48480) (t!355516 l!13867))) b!4328643))

(check-sat (not b!4328621) (not b!4328636) (not b!4328632) (not b!4328643) tp_is_empty!24363 (not b!4328620) (not b!4328619) (not b!4328622) tp_is_empty!24361)
(check-sat)
