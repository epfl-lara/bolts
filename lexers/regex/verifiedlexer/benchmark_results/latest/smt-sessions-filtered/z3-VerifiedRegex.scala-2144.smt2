; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107352 () Bool)

(assert start!107352)

(declare-fun b!1205058 () Bool)

(declare-fun e!773153 () Bool)

(declare-fun tp_is_empty!6107 () Bool)

(declare-fun tp!341945 () Bool)

(assert (=> b!1205058 (= e!773153 (and tp_is_empty!6107 tp!341945))))

(declare-fun b!1205056 () Bool)

(declare-fun e!773154 () Bool)

(declare-fun lt!412112 () Int)

(declare-fun lt!412111 () Int)

(assert (=> b!1205056 (= e!773154 (or (< lt!412112 0) (< lt!412111 0)))))

(declare-datatypes ((T!22230 0))(
  ( (T!22231 (val!3952 Int)) )
))
(declare-datatypes ((List!12131 0))(
  ( (Nil!12107) (Cons!12107 (h!17508 T!22230) (t!112547 List!12131)) )
))
(declare-fun r!2028 () List!12131)

(declare-fun ListPrimitiveSize!84 (List!12131) Int)

(assert (=> b!1205056 (= lt!412111 (ListPrimitiveSize!84 r!2028))))

(declare-fun l!2744 () List!12131)

(assert (=> b!1205056 (= lt!412112 (ListPrimitiveSize!84 l!2744))))

(declare-fun b!1205055 () Bool)

(declare-fun res!542783 () Bool)

(assert (=> b!1205055 (=> (not res!542783) (not e!773154))))

(declare-fun until!61 () Int)

(declare-fun size!9647 (List!12131) Int)

(assert (=> b!1205055 (= res!542783 (<= until!61 (+ (size!9647 l!2744) (size!9647 r!2028))))))

(declare-fun res!542784 () Bool)

(assert (=> start!107352 (=> (not res!542784) (not e!773154))))

(declare-fun from!613 () Int)

(assert (=> start!107352 (= res!542784 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107352 e!773154))

(assert (=> start!107352 true))

(declare-fun e!773152 () Bool)

(assert (=> start!107352 e!773152))

(assert (=> start!107352 e!773153))

(declare-fun b!1205057 () Bool)

(declare-fun tp!341944 () Bool)

(assert (=> b!1205057 (= e!773152 (and tp_is_empty!6107 tp!341944))))

(assert (= (and start!107352 res!542784) b!1205055))

(assert (= (and b!1205055 res!542783) b!1205056))

(get-info :version)

(assert (= (and start!107352 ((_ is Cons!12107) l!2744)) b!1205057))

(assert (= (and start!107352 ((_ is Cons!12107) r!2028)) b!1205058))

(declare-fun m!1380357 () Bool)

(assert (=> b!1205056 m!1380357))

(declare-fun m!1380359 () Bool)

(assert (=> b!1205056 m!1380359))

(declare-fun m!1380361 () Bool)

(assert (=> b!1205055 m!1380361))

(declare-fun m!1380363 () Bool)

(assert (=> b!1205055 m!1380363))

(check-sat tp_is_empty!6107 (not b!1205057) (not b!1205058) (not b!1205056) (not b!1205055))
(check-sat)
(get-model)

(declare-fun d!344333 () Bool)

(declare-fun lt!412117 () Int)

(assert (=> d!344333 (>= lt!412117 0)))

(declare-fun e!773159 () Int)

(assert (=> d!344333 (= lt!412117 e!773159)))

(declare-fun c!201157 () Bool)

(assert (=> d!344333 (= c!201157 ((_ is Nil!12107) l!2744))))

(assert (=> d!344333 (= (size!9647 l!2744) lt!412117)))

(declare-fun b!1205067 () Bool)

(assert (=> b!1205067 (= e!773159 0)))

(declare-fun b!1205068 () Bool)

(assert (=> b!1205068 (= e!773159 (+ 1 (size!9647 (t!112547 l!2744))))))

(assert (= (and d!344333 c!201157) b!1205067))

(assert (= (and d!344333 (not c!201157)) b!1205068))

(declare-fun m!1380365 () Bool)

(assert (=> b!1205068 m!1380365))

(assert (=> b!1205055 d!344333))

(declare-fun d!344335 () Bool)

(declare-fun lt!412118 () Int)

(assert (=> d!344335 (>= lt!412118 0)))

(declare-fun e!773160 () Int)

(assert (=> d!344335 (= lt!412118 e!773160)))

(declare-fun c!201158 () Bool)

(assert (=> d!344335 (= c!201158 ((_ is Nil!12107) r!2028))))

(assert (=> d!344335 (= (size!9647 r!2028) lt!412118)))

(declare-fun b!1205069 () Bool)

(assert (=> b!1205069 (= e!773160 0)))

(declare-fun b!1205070 () Bool)

(assert (=> b!1205070 (= e!773160 (+ 1 (size!9647 (t!112547 r!2028))))))

(assert (= (and d!344335 c!201158) b!1205069))

(assert (= (and d!344335 (not c!201158)) b!1205070))

(declare-fun m!1380367 () Bool)

(assert (=> b!1205070 m!1380367))

(assert (=> b!1205055 d!344335))

(declare-fun d!344337 () Bool)

(declare-fun lt!412123 () Int)

(assert (=> d!344337 (>= lt!412123 0)))

(declare-fun e!773165 () Int)

(assert (=> d!344337 (= lt!412123 e!773165)))

(declare-fun c!201163 () Bool)

(assert (=> d!344337 (= c!201163 ((_ is Nil!12107) r!2028))))

(assert (=> d!344337 (= (ListPrimitiveSize!84 r!2028) lt!412123)))

(declare-fun b!1205079 () Bool)

(assert (=> b!1205079 (= e!773165 0)))

(declare-fun b!1205080 () Bool)

(assert (=> b!1205080 (= e!773165 (+ 1 (ListPrimitiveSize!84 (t!112547 r!2028))))))

(assert (= (and d!344337 c!201163) b!1205079))

(assert (= (and d!344337 (not c!201163)) b!1205080))

(declare-fun m!1380373 () Bool)

(assert (=> b!1205080 m!1380373))

(assert (=> b!1205056 d!344337))

(declare-fun d!344343 () Bool)

(declare-fun lt!412124 () Int)

(assert (=> d!344343 (>= lt!412124 0)))

(declare-fun e!773166 () Int)

(assert (=> d!344343 (= lt!412124 e!773166)))

(declare-fun c!201164 () Bool)

(assert (=> d!344343 (= c!201164 ((_ is Nil!12107) l!2744))))

(assert (=> d!344343 (= (ListPrimitiveSize!84 l!2744) lt!412124)))

(declare-fun b!1205081 () Bool)

(assert (=> b!1205081 (= e!773166 0)))

(declare-fun b!1205082 () Bool)

(assert (=> b!1205082 (= e!773166 (+ 1 (ListPrimitiveSize!84 (t!112547 l!2744))))))

(assert (= (and d!344343 c!201164) b!1205081))

(assert (= (and d!344343 (not c!201164)) b!1205082))

(declare-fun m!1380375 () Bool)

(assert (=> b!1205082 m!1380375))

(assert (=> b!1205056 d!344343))

(declare-fun b!1205087 () Bool)

(declare-fun e!773169 () Bool)

(declare-fun tp!341948 () Bool)

(assert (=> b!1205087 (= e!773169 (and tp_is_empty!6107 tp!341948))))

(assert (=> b!1205057 (= tp!341944 e!773169)))

(assert (= (and b!1205057 ((_ is Cons!12107) (t!112547 l!2744))) b!1205087))

(declare-fun b!1205088 () Bool)

(declare-fun e!773170 () Bool)

(declare-fun tp!341949 () Bool)

(assert (=> b!1205088 (= e!773170 (and tp_is_empty!6107 tp!341949))))

(assert (=> b!1205058 (= tp!341945 e!773170)))

(assert (= (and b!1205058 ((_ is Cons!12107) (t!112547 r!2028))) b!1205088))

(check-sat tp_is_empty!6107 (not b!1205080) (not b!1205088) (not b!1205070) (not b!1205068) (not b!1205087) (not b!1205082))
(check-sat)
