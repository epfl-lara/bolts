; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252272 () Bool)

(assert start!252272)

(declare-fun b!2598332 () Bool)

(declare-fun e!1640030 () Bool)

(declare-datatypes ((B!2269 0))(
  ( (B!2270 (val!9602 Int)) )
))
(declare-datatypes ((List!30035 0))(
  ( (Nil!29935) (Cons!29935 (h!35355 B!2269) (t!213048 List!30035)) )
))
(declare-fun l!3796 () List!30035)

(declare-fun noDuplicate!483 (List!30035) Bool)

(assert (=> b!2598332 (= e!1640030 (not (noDuplicate!483 (t!213048 l!3796))))))

(declare-fun res!1094007 () Bool)

(assert (=> start!252272 (=> (not res!1094007) (not e!1640030))))

(assert (=> start!252272 (= res!1094007 (noDuplicate!483 l!3796))))

(assert (=> start!252272 e!1640030))

(declare-fun e!1640031 () Bool)

(assert (=> start!252272 e!1640031))

(declare-fun tp_is_empty!13549 () Bool)

(assert (=> start!252272 tp_is_empty!13549))

(declare-fun b!2598330 () Bool)

(declare-fun res!1094008 () Bool)

(assert (=> b!2598330 (=> (not res!1094008) (not e!1640030))))

(declare-fun e!9468 () B!2269)

(declare-fun contains!5483 (List!30035 B!2269) Bool)

(assert (=> b!2598330 (= res!1094008 (contains!5483 l!3796 e!9468))))

(declare-fun b!2598333 () Bool)

(declare-fun tp!823486 () Bool)

(assert (=> b!2598333 (= e!1640031 (and tp_is_empty!13549 tp!823486))))

(declare-fun b!2598331 () Bool)

(declare-fun res!1094009 () Bool)

(assert (=> b!2598331 (=> (not res!1094009) (not e!1640030))))

(get-info :version)

(assert (=> b!2598331 (= res!1094009 (and ((_ is Cons!29935) l!3796) (not (= (h!35355 l!3796) e!9468))))))

(assert (= (and start!252272 res!1094007) b!2598330))

(assert (= (and b!2598330 res!1094008) b!2598331))

(assert (= (and b!2598331 res!1094009) b!2598332))

(assert (= (and start!252272 ((_ is Cons!29935) l!3796)) b!2598333))

(declare-fun m!2934439 () Bool)

(assert (=> b!2598332 m!2934439))

(declare-fun m!2934441 () Bool)

(assert (=> start!252272 m!2934441))

(declare-fun m!2934443 () Bool)

(assert (=> b!2598330 m!2934443))

(check-sat (not b!2598332) (not start!252272) (not b!2598333) (not b!2598330) tp_is_empty!13549)
(check-sat)
(get-model)

(declare-fun d!736257 () Bool)

(declare-fun lt!914934 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4218 (List!30035) (InoxSet B!2269))

(assert (=> d!736257 (= lt!914934 (select (content!4218 l!3796) e!9468))))

(declare-fun e!1640048 () Bool)

(assert (=> d!736257 (= lt!914934 e!1640048)))

(declare-fun res!1094026 () Bool)

(assert (=> d!736257 (=> (not res!1094026) (not e!1640048))))

(assert (=> d!736257 (= res!1094026 ((_ is Cons!29935) l!3796))))

(assert (=> d!736257 (= (contains!5483 l!3796 e!9468) lt!914934)))

(declare-fun b!2598350 () Bool)

(declare-fun e!1640049 () Bool)

(assert (=> b!2598350 (= e!1640048 e!1640049)))

(declare-fun res!1094027 () Bool)

(assert (=> b!2598350 (=> res!1094027 e!1640049)))

(assert (=> b!2598350 (= res!1094027 (= (h!35355 l!3796) e!9468))))

(declare-fun b!2598351 () Bool)

(assert (=> b!2598351 (= e!1640049 (contains!5483 (t!213048 l!3796) e!9468))))

(assert (= (and d!736257 res!1094026) b!2598350))

(assert (= (and b!2598350 (not res!1094027)) b!2598351))

(declare-fun m!2934451 () Bool)

(assert (=> d!736257 m!2934451))

(declare-fun m!2934453 () Bool)

(assert (=> d!736257 m!2934453))

(declare-fun m!2934455 () Bool)

(assert (=> b!2598351 m!2934455))

(assert (=> b!2598330 d!736257))

(declare-fun d!736263 () Bool)

(declare-fun res!1094034 () Bool)

(declare-fun e!1640059 () Bool)

(assert (=> d!736263 (=> res!1094034 e!1640059)))

(assert (=> d!736263 (= res!1094034 ((_ is Nil!29935) (t!213048 l!3796)))))

(assert (=> d!736263 (= (noDuplicate!483 (t!213048 l!3796)) e!1640059)))

(declare-fun b!2598363 () Bool)

(declare-fun e!1640060 () Bool)

(assert (=> b!2598363 (= e!1640059 e!1640060)))

(declare-fun res!1094035 () Bool)

(assert (=> b!2598363 (=> (not res!1094035) (not e!1640060))))

(assert (=> b!2598363 (= res!1094035 (not (contains!5483 (t!213048 (t!213048 l!3796)) (h!35355 (t!213048 l!3796)))))))

(declare-fun b!2598364 () Bool)

(assert (=> b!2598364 (= e!1640060 (noDuplicate!483 (t!213048 (t!213048 l!3796))))))

(assert (= (and d!736263 (not res!1094034)) b!2598363))

(assert (= (and b!2598363 res!1094035) b!2598364))

(declare-fun m!2934463 () Bool)

(assert (=> b!2598363 m!2934463))

(declare-fun m!2934465 () Bool)

(assert (=> b!2598364 m!2934465))

(assert (=> b!2598332 d!736263))

(declare-fun d!736265 () Bool)

(declare-fun res!1094036 () Bool)

(declare-fun e!1640061 () Bool)

(assert (=> d!736265 (=> res!1094036 e!1640061)))

(assert (=> d!736265 (= res!1094036 ((_ is Nil!29935) l!3796))))

(assert (=> d!736265 (= (noDuplicate!483 l!3796) e!1640061)))

(declare-fun b!2598365 () Bool)

(declare-fun e!1640062 () Bool)

(assert (=> b!2598365 (= e!1640061 e!1640062)))

(declare-fun res!1094037 () Bool)

(assert (=> b!2598365 (=> (not res!1094037) (not e!1640062))))

(assert (=> b!2598365 (= res!1094037 (not (contains!5483 (t!213048 l!3796) (h!35355 l!3796))))))

(declare-fun b!2598366 () Bool)

(assert (=> b!2598366 (= e!1640062 (noDuplicate!483 (t!213048 l!3796)))))

(assert (= (and d!736265 (not res!1094036)) b!2598365))

(assert (= (and b!2598365 res!1094037) b!2598366))

(declare-fun m!2934467 () Bool)

(assert (=> b!2598365 m!2934467))

(assert (=> b!2598366 m!2934439))

(assert (=> start!252272 d!736265))

(declare-fun b!2598371 () Bool)

(declare-fun e!1640065 () Bool)

(declare-fun tp!823492 () Bool)

(assert (=> b!2598371 (= e!1640065 (and tp_is_empty!13549 tp!823492))))

(assert (=> b!2598333 (= tp!823486 e!1640065)))

(assert (= (and b!2598333 ((_ is Cons!29935) (t!213048 l!3796))) b!2598371))

(check-sat (not b!2598364) (not d!736257) (not b!2598351) (not b!2598371) (not b!2598366) (not b!2598365) tp_is_empty!13549 (not b!2598363))
(check-sat)
