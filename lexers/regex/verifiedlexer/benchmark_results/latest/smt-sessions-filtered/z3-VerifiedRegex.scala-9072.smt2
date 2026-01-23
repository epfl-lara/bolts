; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486418 () Bool)

(assert start!486418)

(declare-fun res!2018081 () Bool)

(declare-fun e!2967458 () Bool)

(assert (=> start!486418 (=> (not res!2018081) (not e!2967458))))

(declare-datatypes ((K!14765 0))(
  ( (K!14766 (val!20083 Int)) )
))
(declare-datatypes ((V!15011 0))(
  ( (V!15012 (val!20084 Int)) )
))
(declare-datatypes ((tuple2!55064 0))(
  ( (tuple2!55065 (_1!30826 K!14765) (_2!30826 V!15011)) )
))
(declare-datatypes ((List!53316 0))(
  ( (Nil!53192) (Cons!53192 (h!59603 tuple2!55064) (t!360660 List!53316)) )
))
(declare-fun l!11094 () List!53316)

(declare-fun noDuplicateKeys!2240 (List!53316) Bool)

(assert (=> start!486418 (= res!2018081 (noDuplicateKeys!2240 l!11094))))

(assert (=> start!486418 e!2967458))

(declare-fun e!2967459 () Bool)

(assert (=> start!486418 e!2967459))

(declare-fun tp_is_empty!32277 () Bool)

(assert (=> start!486418 tp_is_empty!32277))

(declare-fun b!4756692 () Bool)

(declare-fun res!2018080 () Bool)

(assert (=> b!4756692 (=> (not res!2018080) (not e!2967458))))

(declare-fun key!2520 () K!14765)

(get-info :version)

(assert (=> b!4756692 (= res!2018080 (and (or (not ((_ is Cons!53192) l!11094)) (not (= (_1!30826 (h!59603 l!11094)) key!2520))) ((_ is Cons!53192) l!11094)))))

(declare-fun b!4756693 () Bool)

(declare-fun ListPrimitiveSize!349 (List!53316) Int)

(assert (=> b!4756693 (= e!2967458 (>= (ListPrimitiveSize!349 (t!360660 l!11094)) (ListPrimitiveSize!349 l!11094)))))

(declare-fun b!4756694 () Bool)

(declare-fun tp!1351070 () Bool)

(declare-fun tp_is_empty!32279 () Bool)

(assert (=> b!4756694 (= e!2967459 (and tp_is_empty!32277 tp_is_empty!32279 tp!1351070))))

(assert (= (and start!486418 res!2018081) b!4756692))

(assert (= (and b!4756692 res!2018080) b!4756693))

(assert (= (and start!486418 ((_ is Cons!53192) l!11094)) b!4756694))

(declare-fun m!5726587 () Bool)

(assert (=> start!486418 m!5726587))

(declare-fun m!5726589 () Bool)

(assert (=> b!4756693 m!5726589))

(declare-fun m!5726591 () Bool)

(assert (=> b!4756693 m!5726591))

(check-sat (not b!4756694) tp_is_empty!32277 tp_is_empty!32279 (not b!4756693) (not start!486418))
(check-sat)
(get-model)

(declare-fun d!1520959 () Bool)

(declare-fun lt!1923030 () Int)

(assert (=> d!1520959 (>= lt!1923030 0)))

(declare-fun e!2967468 () Int)

(assert (=> d!1520959 (= lt!1923030 e!2967468)))

(declare-fun c!811724 () Bool)

(assert (=> d!1520959 (= c!811724 ((_ is Nil!53192) (t!360660 l!11094)))))

(assert (=> d!1520959 (= (ListPrimitiveSize!349 (t!360660 l!11094)) lt!1923030)))

(declare-fun b!4756705 () Bool)

(assert (=> b!4756705 (= e!2967468 0)))

(declare-fun b!4756706 () Bool)

(assert (=> b!4756706 (= e!2967468 (+ 1 (ListPrimitiveSize!349 (t!360660 (t!360660 l!11094)))))))

(assert (= (and d!1520959 c!811724) b!4756705))

(assert (= (and d!1520959 (not c!811724)) b!4756706))

(declare-fun m!5726597 () Bool)

(assert (=> b!4756706 m!5726597))

(assert (=> b!4756693 d!1520959))

(declare-fun d!1520963 () Bool)

(declare-fun lt!1923033 () Int)

(assert (=> d!1520963 (>= lt!1923033 0)))

(declare-fun e!2967469 () Int)

(assert (=> d!1520963 (= lt!1923033 e!2967469)))

(declare-fun c!811725 () Bool)

(assert (=> d!1520963 (= c!811725 ((_ is Nil!53192) l!11094))))

(assert (=> d!1520963 (= (ListPrimitiveSize!349 l!11094) lt!1923033)))

(declare-fun b!4756709 () Bool)

(assert (=> b!4756709 (= e!2967469 0)))

(declare-fun b!4756710 () Bool)

(assert (=> b!4756710 (= e!2967469 (+ 1 (ListPrimitiveSize!349 (t!360660 l!11094))))))

(assert (= (and d!1520963 c!811725) b!4756709))

(assert (= (and d!1520963 (not c!811725)) b!4756710))

(assert (=> b!4756710 m!5726589))

(assert (=> b!4756693 d!1520963))

(declare-fun d!1520965 () Bool)

(declare-fun res!2018092 () Bool)

(declare-fun e!2967481 () Bool)

(assert (=> d!1520965 (=> res!2018092 e!2967481)))

(assert (=> d!1520965 (= res!2018092 (not ((_ is Cons!53192) l!11094)))))

(assert (=> d!1520965 (= (noDuplicateKeys!2240 l!11094) e!2967481)))

(declare-fun b!4756726 () Bool)

(declare-fun e!2967482 () Bool)

(assert (=> b!4756726 (= e!2967481 e!2967482)))

(declare-fun res!2018093 () Bool)

(assert (=> b!4756726 (=> (not res!2018093) (not e!2967482))))

(declare-fun containsKey!3623 (List!53316 K!14765) Bool)

(assert (=> b!4756726 (= res!2018093 (not (containsKey!3623 (t!360660 l!11094) (_1!30826 (h!59603 l!11094)))))))

(declare-fun b!4756727 () Bool)

(assert (=> b!4756727 (= e!2967482 (noDuplicateKeys!2240 (t!360660 l!11094)))))

(assert (= (and d!1520965 (not res!2018092)) b!4756726))

(assert (= (and b!4756726 res!2018093) b!4756727))

(declare-fun m!5726601 () Bool)

(assert (=> b!4756726 m!5726601))

(declare-fun m!5726603 () Bool)

(assert (=> b!4756727 m!5726603))

(assert (=> start!486418 d!1520965))

(declare-fun e!2967485 () Bool)

(declare-fun b!4756732 () Bool)

(declare-fun tp!1351076 () Bool)

(assert (=> b!4756732 (= e!2967485 (and tp_is_empty!32277 tp_is_empty!32279 tp!1351076))))

(assert (=> b!4756694 (= tp!1351070 e!2967485)))

(assert (= (and b!4756694 ((_ is Cons!53192) (t!360660 l!11094))) b!4756732))

(check-sat (not b!4756732) (not b!4756710) (not b!4756706) tp_is_empty!32277 tp_is_empty!32279 (not b!4756726) (not b!4756727))
(check-sat)
