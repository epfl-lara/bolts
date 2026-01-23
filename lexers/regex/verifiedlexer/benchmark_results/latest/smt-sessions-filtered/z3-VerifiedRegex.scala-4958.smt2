; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252208 () Bool)

(assert start!252208)

(declare-fun res!1093854 () Bool)

(declare-fun e!1639822 () Bool)

(assert (=> start!252208 (=> (not res!1093854) (not e!1639822))))

(declare-datatypes ((B!2253 0))(
  ( (B!2254 (val!9594 Int)) )
))
(declare-datatypes ((List!30027 0))(
  ( (Nil!29927) (Cons!29927 (h!35347 B!2253) (t!213040 List!30027)) )
))
(declare-fun l!3770 () List!30027)

(declare-fun noDuplicate!475 (List!30027) Bool)

(assert (=> start!252208 (= res!1093854 (noDuplicate!475 l!3770))))

(assert (=> start!252208 e!1639822))

(declare-fun e!1639823 () Bool)

(assert (=> start!252208 e!1639823))

(declare-fun b!2598029 () Bool)

(declare-fun res!1093855 () Bool)

(assert (=> b!2598029 (=> (not res!1093855) (not e!1639822))))

(get-info :version)

(assert (=> b!2598029 (= res!1093855 (not ((_ is Nil!29927) l!3770)))))

(declare-fun b!2598030 () Bool)

(declare-fun ListPrimitiveSize!185 (List!30027) Int)

(assert (=> b!2598030 (= e!1639822 (>= (ListPrimitiveSize!185 (t!213040 l!3770)) (ListPrimitiveSize!185 l!3770)))))

(declare-fun b!2598031 () Bool)

(declare-fun tp_is_empty!13533 () Bool)

(declare-fun tp!823442 () Bool)

(assert (=> b!2598031 (= e!1639823 (and tp_is_empty!13533 tp!823442))))

(assert (= (and start!252208 res!1093854) b!2598029))

(assert (= (and b!2598029 res!1093855) b!2598030))

(assert (= (and start!252208 ((_ is Cons!29927) l!3770)) b!2598031))

(declare-fun m!2934219 () Bool)

(assert (=> start!252208 m!2934219))

(declare-fun m!2934221 () Bool)

(assert (=> b!2598030 m!2934221))

(declare-fun m!2934223 () Bool)

(assert (=> b!2598030 m!2934223))

(check-sat (not start!252208) (not b!2598030) (not b!2598031) tp_is_empty!13533)
(check-sat)
(get-model)

(declare-fun d!736167 () Bool)

(declare-fun res!1093860 () Bool)

(declare-fun e!1639830 () Bool)

(assert (=> d!736167 (=> res!1093860 e!1639830)))

(assert (=> d!736167 (= res!1093860 ((_ is Nil!29927) l!3770))))

(assert (=> d!736167 (= (noDuplicate!475 l!3770) e!1639830)))

(declare-fun b!2598040 () Bool)

(declare-fun e!1639831 () Bool)

(assert (=> b!2598040 (= e!1639830 e!1639831)))

(declare-fun res!1093861 () Bool)

(assert (=> b!2598040 (=> (not res!1093861) (not e!1639831))))

(declare-fun contains!5474 (List!30027 B!2253) Bool)

(assert (=> b!2598040 (= res!1093861 (not (contains!5474 (t!213040 l!3770) (h!35347 l!3770))))))

(declare-fun b!2598041 () Bool)

(assert (=> b!2598041 (= e!1639831 (noDuplicate!475 (t!213040 l!3770)))))

(assert (= (and d!736167 (not res!1093860)) b!2598040))

(assert (= (and b!2598040 res!1093861) b!2598041))

(declare-fun m!2934225 () Bool)

(assert (=> b!2598040 m!2934225))

(declare-fun m!2934229 () Bool)

(assert (=> b!2598041 m!2934229))

(assert (=> start!252208 d!736167))

(declare-fun d!736173 () Bool)

(declare-fun lt!914874 () Int)

(assert (=> d!736173 (>= lt!914874 0)))

(declare-fun e!1639840 () Int)

(assert (=> d!736173 (= lt!914874 e!1639840)))

(declare-fun c!418465 () Bool)

(assert (=> d!736173 (= c!418465 ((_ is Nil!29927) (t!213040 l!3770)))))

(assert (=> d!736173 (= (ListPrimitiveSize!185 (t!213040 l!3770)) lt!914874)))

(declare-fun b!2598054 () Bool)

(assert (=> b!2598054 (= e!1639840 0)))

(declare-fun b!2598055 () Bool)

(assert (=> b!2598055 (= e!1639840 (+ 1 (ListPrimitiveSize!185 (t!213040 (t!213040 l!3770)))))))

(assert (= (and d!736173 c!418465) b!2598054))

(assert (= (and d!736173 (not c!418465)) b!2598055))

(declare-fun m!2934231 () Bool)

(assert (=> b!2598055 m!2934231))

(assert (=> b!2598030 d!736173))

(declare-fun d!736177 () Bool)

(declare-fun lt!914875 () Int)

(assert (=> d!736177 (>= lt!914875 0)))

(declare-fun e!1639842 () Int)

(assert (=> d!736177 (= lt!914875 e!1639842)))

(declare-fun c!418466 () Bool)

(assert (=> d!736177 (= c!418466 ((_ is Nil!29927) l!3770))))

(assert (=> d!736177 (= (ListPrimitiveSize!185 l!3770) lt!914875)))

(declare-fun b!2598056 () Bool)

(assert (=> b!2598056 (= e!1639842 0)))

(declare-fun b!2598057 () Bool)

(assert (=> b!2598057 (= e!1639842 (+ 1 (ListPrimitiveSize!185 (t!213040 l!3770))))))

(assert (= (and d!736177 c!418466) b!2598056))

(assert (= (and d!736177 (not c!418466)) b!2598057))

(assert (=> b!2598057 m!2934221))

(assert (=> b!2598030 d!736177))

(declare-fun b!2598068 () Bool)

(declare-fun e!1639848 () Bool)

(declare-fun tp!823447 () Bool)

(assert (=> b!2598068 (= e!1639848 (and tp_is_empty!13533 tp!823447))))

(assert (=> b!2598031 (= tp!823442 e!1639848)))

(assert (= (and b!2598031 ((_ is Cons!29927) (t!213040 l!3770))) b!2598068))

(check-sat (not b!2598040) tp_is_empty!13533 (not b!2598068) (not b!2598041) (not b!2598057) (not b!2598055))
(check-sat)
