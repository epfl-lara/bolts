; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215630 () Bool)

(assert start!215630)

(declare-fun b!2212977 () Bool)

(declare-fun res!951080 () Bool)

(declare-fun e!1413150 () Bool)

(assert (=> b!2212977 (=> (not res!951080) (not e!1413150))))

(declare-datatypes ((T!40620 0))(
  ( (T!40621 (val!7388 Int)) )
))
(declare-datatypes ((List!25952 0))(
  ( (Nil!25868) (Cons!25868 (h!31269 T!40620) (t!198708 List!25952)) )
))
(declare-datatypes ((IArray!16935 0))(
  ( (IArray!16936 (innerList!8525 List!25952)) )
))
(declare-datatypes ((Conc!8465 0))(
  ( (Node!8465 (left!19900 Conc!8465) (right!20230 Conc!8465) (csize!17160 Int) (cheight!8676 Int)) (Leaf!12397 (xs!11407 IArray!16935) (csize!17161 Int)) (Empty!8465) )
))
(declare-fun t!4663 () Conc!8465)

(declare-fun isEmpty!14819 (Conc!8465) Bool)

(assert (=> b!2212977 (= res!951080 (not (isEmpty!14819 t!4663)))))

(declare-fun b!2212979 () Bool)

(get-info :version)

(assert (=> b!2212979 (= e!1413150 (and (not ((_ is Leaf!12397) t!4663)) (not ((_ is Node!8465) t!4663))))))

(declare-fun b!2212980 () Bool)

(declare-fun e!1413149 () Bool)

(declare-fun tp!687618 () Bool)

(declare-fun tp!687619 () Bool)

(declare-fun inv!35052 (Conc!8465) Bool)

(assert (=> b!2212980 (= e!1413149 (and (inv!35052 (left!19900 t!4663)) tp!687619 (inv!35052 (right!20230 t!4663)) tp!687618))))

(declare-fun b!2212981 () Bool)

(declare-fun e!1413151 () Bool)

(declare-fun tp!687620 () Bool)

(assert (=> b!2212981 (= e!1413151 tp!687620)))

(declare-fun b!2212978 () Bool)

(declare-fun inv!35053 (IArray!16935) Bool)

(assert (=> b!2212978 (= e!1413149 (and (inv!35053 (xs!11407 t!4663)) e!1413151))))

(declare-fun res!951081 () Bool)

(assert (=> start!215630 (=> (not res!951081) (not e!1413150))))

(declare-fun isBalanced!2623 (Conc!8465) Bool)

(assert (=> start!215630 (= res!951081 (isBalanced!2623 t!4663))))

(assert (=> start!215630 e!1413150))

(assert (=> start!215630 (and (inv!35052 t!4663) e!1413149)))

(assert (= (and start!215630 res!951081) b!2212977))

(assert (= (and b!2212977 res!951080) b!2212979))

(assert (= (and start!215630 ((_ is Node!8465) t!4663)) b!2212980))

(assert (= b!2212978 b!2212981))

(assert (= (and start!215630 ((_ is Leaf!12397) t!4663)) b!2212978))

(declare-fun m!2655283 () Bool)

(assert (=> b!2212977 m!2655283))

(declare-fun m!2655285 () Bool)

(assert (=> b!2212980 m!2655285))

(declare-fun m!2655287 () Bool)

(assert (=> b!2212980 m!2655287))

(declare-fun m!2655289 () Bool)

(assert (=> b!2212978 m!2655289))

(declare-fun m!2655291 () Bool)

(assert (=> start!215630 m!2655291))

(declare-fun m!2655293 () Bool)

(assert (=> start!215630 m!2655293))

(check-sat (not b!2212980) (not b!2212978) (not b!2212977) (not b!2212981) (not start!215630))
(check-sat)
(get-model)

(declare-fun b!2213012 () Bool)

(declare-fun e!1413162 () Bool)

(assert (=> b!2213012 (= e!1413162 (not (isEmpty!14819 (right!20230 t!4663))))))

(declare-fun b!2213013 () Bool)

(declare-fun res!951116 () Bool)

(assert (=> b!2213013 (=> (not res!951116) (not e!1413162))))

(declare-fun height!1289 (Conc!8465) Int)

(assert (=> b!2213013 (= res!951116 (<= (- (height!1289 (left!19900 t!4663)) (height!1289 (right!20230 t!4663))) 1))))

(declare-fun d!661812 () Bool)

(declare-fun res!951114 () Bool)

(declare-fun e!1413163 () Bool)

(assert (=> d!661812 (=> res!951114 e!1413163)))

(assert (=> d!661812 (= res!951114 (not ((_ is Node!8465) t!4663)))))

(assert (=> d!661812 (= (isBalanced!2623 t!4663) e!1413163)))

(declare-fun b!2213014 () Bool)

(declare-fun res!951117 () Bool)

(assert (=> b!2213014 (=> (not res!951117) (not e!1413162))))

(assert (=> b!2213014 (= res!951117 (isBalanced!2623 (right!20230 t!4663)))))

(declare-fun b!2213015 () Bool)

(declare-fun res!951115 () Bool)

(assert (=> b!2213015 (=> (not res!951115) (not e!1413162))))

(assert (=> b!2213015 (= res!951115 (not (isEmpty!14819 (left!19900 t!4663))))))

(declare-fun b!2213016 () Bool)

(declare-fun res!951112 () Bool)

(assert (=> b!2213016 (=> (not res!951112) (not e!1413162))))

(assert (=> b!2213016 (= res!951112 (isBalanced!2623 (left!19900 t!4663)))))

(declare-fun b!2213017 () Bool)

(assert (=> b!2213017 (= e!1413163 e!1413162)))

(declare-fun res!951113 () Bool)

(assert (=> b!2213017 (=> (not res!951113) (not e!1413162))))

(assert (=> b!2213017 (= res!951113 (<= (- 1) (- (height!1289 (left!19900 t!4663)) (height!1289 (right!20230 t!4663)))))))

(assert (= (and d!661812 (not res!951114)) b!2213017))

(assert (= (and b!2213017 res!951113) b!2213013))

(assert (= (and b!2213013 res!951116) b!2213016))

(assert (= (and b!2213016 res!951112) b!2213014))

(assert (= (and b!2213014 res!951117) b!2213015))

(assert (= (and b!2213015 res!951115) b!2213012))

(declare-fun m!2655307 () Bool)

(assert (=> b!2213012 m!2655307))

(declare-fun m!2655309 () Bool)

(assert (=> b!2213017 m!2655309))

(declare-fun m!2655311 () Bool)

(assert (=> b!2213017 m!2655311))

(declare-fun m!2655313 () Bool)

(assert (=> b!2213015 m!2655313))

(declare-fun m!2655315 () Bool)

(assert (=> b!2213014 m!2655315))

(declare-fun m!2655317 () Bool)

(assert (=> b!2213016 m!2655317))

(assert (=> b!2213013 m!2655309))

(assert (=> b!2213013 m!2655311))

(assert (=> start!215630 d!661812))

(declare-fun d!661816 () Bool)

(declare-fun c!353713 () Bool)

(assert (=> d!661816 (= c!353713 ((_ is Node!8465) t!4663))))

(declare-fun e!1413178 () Bool)

(assert (=> d!661816 (= (inv!35052 t!4663) e!1413178)))

(declare-fun b!2213039 () Bool)

(declare-fun inv!35056 (Conc!8465) Bool)

(assert (=> b!2213039 (= e!1413178 (inv!35056 t!4663))))

(declare-fun b!2213040 () Bool)

(declare-fun e!1413179 () Bool)

(assert (=> b!2213040 (= e!1413178 e!1413179)))

(declare-fun res!951125 () Bool)

(assert (=> b!2213040 (= res!951125 (not ((_ is Leaf!12397) t!4663)))))

(assert (=> b!2213040 (=> res!951125 e!1413179)))

(declare-fun b!2213041 () Bool)

(declare-fun inv!35057 (Conc!8465) Bool)

(assert (=> b!2213041 (= e!1413179 (inv!35057 t!4663))))

(assert (= (and d!661816 c!353713) b!2213039))

(assert (= (and d!661816 (not c!353713)) b!2213040))

(assert (= (and b!2213040 (not res!951125)) b!2213041))

(declare-fun m!2655331 () Bool)

(assert (=> b!2213039 m!2655331))

(declare-fun m!2655333 () Bool)

(assert (=> b!2213041 m!2655333))

(assert (=> start!215630 d!661816))

(declare-fun d!661824 () Bool)

(declare-fun c!353714 () Bool)

(assert (=> d!661824 (= c!353714 ((_ is Node!8465) (left!19900 t!4663)))))

(declare-fun e!1413180 () Bool)

(assert (=> d!661824 (= (inv!35052 (left!19900 t!4663)) e!1413180)))

(declare-fun b!2213042 () Bool)

(assert (=> b!2213042 (= e!1413180 (inv!35056 (left!19900 t!4663)))))

(declare-fun b!2213043 () Bool)

(declare-fun e!1413181 () Bool)

(assert (=> b!2213043 (= e!1413180 e!1413181)))

(declare-fun res!951126 () Bool)

(assert (=> b!2213043 (= res!951126 (not ((_ is Leaf!12397) (left!19900 t!4663))))))

(assert (=> b!2213043 (=> res!951126 e!1413181)))

(declare-fun b!2213044 () Bool)

(assert (=> b!2213044 (= e!1413181 (inv!35057 (left!19900 t!4663)))))

(assert (= (and d!661824 c!353714) b!2213042))

(assert (= (and d!661824 (not c!353714)) b!2213043))

(assert (= (and b!2213043 (not res!951126)) b!2213044))

(declare-fun m!2655335 () Bool)

(assert (=> b!2213042 m!2655335))

(declare-fun m!2655337 () Bool)

(assert (=> b!2213044 m!2655337))

(assert (=> b!2212980 d!661824))

(declare-fun d!661826 () Bool)

(declare-fun c!353715 () Bool)

(assert (=> d!661826 (= c!353715 ((_ is Node!8465) (right!20230 t!4663)))))

(declare-fun e!1413182 () Bool)

(assert (=> d!661826 (= (inv!35052 (right!20230 t!4663)) e!1413182)))

(declare-fun b!2213045 () Bool)

(assert (=> b!2213045 (= e!1413182 (inv!35056 (right!20230 t!4663)))))

(declare-fun b!2213046 () Bool)

(declare-fun e!1413183 () Bool)

(assert (=> b!2213046 (= e!1413182 e!1413183)))

(declare-fun res!951127 () Bool)

(assert (=> b!2213046 (= res!951127 (not ((_ is Leaf!12397) (right!20230 t!4663))))))

(assert (=> b!2213046 (=> res!951127 e!1413183)))

(declare-fun b!2213047 () Bool)

(assert (=> b!2213047 (= e!1413183 (inv!35057 (right!20230 t!4663)))))

(assert (= (and d!661826 c!353715) b!2213045))

(assert (= (and d!661826 (not c!353715)) b!2213046))

(assert (= (and b!2213046 (not res!951127)) b!2213047))

(declare-fun m!2655339 () Bool)

(assert (=> b!2213045 m!2655339))

(declare-fun m!2655341 () Bool)

(assert (=> b!2213047 m!2655341))

(assert (=> b!2212980 d!661826))

(declare-fun d!661828 () Bool)

(declare-fun lt!826654 () Bool)

(declare-fun isEmpty!14820 (List!25952) Bool)

(declare-fun list!10043 (Conc!8465) List!25952)

(assert (=> d!661828 (= lt!826654 (isEmpty!14820 (list!10043 t!4663)))))

(declare-fun size!20189 (Conc!8465) Int)

(assert (=> d!661828 (= lt!826654 (= (size!20189 t!4663) 0))))

(assert (=> d!661828 (= (isEmpty!14819 t!4663) lt!826654)))

(declare-fun bs!451523 () Bool)

(assert (= bs!451523 d!661828))

(declare-fun m!2655351 () Bool)

(assert (=> bs!451523 m!2655351))

(assert (=> bs!451523 m!2655351))

(declare-fun m!2655353 () Bool)

(assert (=> bs!451523 m!2655353))

(declare-fun m!2655355 () Bool)

(assert (=> bs!451523 m!2655355))

(assert (=> b!2212977 d!661828))

(declare-fun d!661832 () Bool)

(declare-fun size!20191 (List!25952) Int)

(assert (=> d!661832 (= (inv!35053 (xs!11407 t!4663)) (<= (size!20191 (innerList!8525 (xs!11407 t!4663))) 2147483647))))

(declare-fun bs!451524 () Bool)

(assert (= bs!451524 d!661832))

(declare-fun m!2655357 () Bool)

(assert (=> bs!451524 m!2655357))

(assert (=> b!2212978 d!661832))

(declare-fun tp!687643 () Bool)

(declare-fun e!1413199 () Bool)

(declare-fun tp!687644 () Bool)

(declare-fun b!2213075 () Bool)

(assert (=> b!2213075 (= e!1413199 (and (inv!35052 (left!19900 (left!19900 t!4663))) tp!687643 (inv!35052 (right!20230 (left!19900 t!4663))) tp!687644))))

(declare-fun b!2213077 () Bool)

(declare-fun e!1413200 () Bool)

(declare-fun tp!687642 () Bool)

(assert (=> b!2213077 (= e!1413200 tp!687642)))

(declare-fun b!2213076 () Bool)

(assert (=> b!2213076 (= e!1413199 (and (inv!35053 (xs!11407 (left!19900 t!4663))) e!1413200))))

(assert (=> b!2212980 (= tp!687619 (and (inv!35052 (left!19900 t!4663)) e!1413199))))

(assert (= (and b!2212980 ((_ is Node!8465) (left!19900 t!4663))) b!2213075))

(assert (= b!2213076 b!2213077))

(assert (= (and b!2212980 ((_ is Leaf!12397) (left!19900 t!4663))) b!2213076))

(declare-fun m!2655371 () Bool)

(assert (=> b!2213075 m!2655371))

(declare-fun m!2655373 () Bool)

(assert (=> b!2213075 m!2655373))

(declare-fun m!2655375 () Bool)

(assert (=> b!2213076 m!2655375))

(assert (=> b!2212980 m!2655285))

(declare-fun tp!687647 () Bool)

(declare-fun b!2213078 () Bool)

(declare-fun tp!687646 () Bool)

(declare-fun e!1413201 () Bool)

(assert (=> b!2213078 (= e!1413201 (and (inv!35052 (left!19900 (right!20230 t!4663))) tp!687646 (inv!35052 (right!20230 (right!20230 t!4663))) tp!687647))))

(declare-fun b!2213080 () Bool)

(declare-fun e!1413202 () Bool)

(declare-fun tp!687645 () Bool)

(assert (=> b!2213080 (= e!1413202 tp!687645)))

(declare-fun b!2213079 () Bool)

(assert (=> b!2213079 (= e!1413201 (and (inv!35053 (xs!11407 (right!20230 t!4663))) e!1413202))))

(assert (=> b!2212980 (= tp!687618 (and (inv!35052 (right!20230 t!4663)) e!1413201))))

(assert (= (and b!2212980 ((_ is Node!8465) (right!20230 t!4663))) b!2213078))

(assert (= b!2213079 b!2213080))

(assert (= (and b!2212980 ((_ is Leaf!12397) (right!20230 t!4663))) b!2213079))

(declare-fun m!2655377 () Bool)

(assert (=> b!2213078 m!2655377))

(declare-fun m!2655379 () Bool)

(assert (=> b!2213078 m!2655379))

(declare-fun m!2655381 () Bool)

(assert (=> b!2213079 m!2655381))

(assert (=> b!2212980 m!2655287))

(declare-fun b!2213085 () Bool)

(declare-fun e!1413205 () Bool)

(declare-fun tp_is_empty!9797 () Bool)

(declare-fun tp!687650 () Bool)

(assert (=> b!2213085 (= e!1413205 (and tp_is_empty!9797 tp!687650))))

(assert (=> b!2212981 (= tp!687620 e!1413205)))

(assert (= (and b!2212981 ((_ is Cons!25868) (innerList!8525 (xs!11407 t!4663)))) b!2213085))

(check-sat (not b!2212980) (not b!2213039) (not d!661828) (not b!2213014) (not b!2213016) (not b!2213079) tp_is_empty!9797 (not b!2213041) (not b!2213078) (not b!2213076) (not b!2213013) (not b!2213017) (not b!2213044) (not b!2213012) (not b!2213047) (not b!2213080) (not d!661832) (not b!2213075) (not b!2213045) (not b!2213077) (not b!2213042) (not b!2213085) (not b!2213015))
(check-sat)
(get-model)

(assert (=> b!2212980 d!661824))

(assert (=> b!2212980 d!661826))

(declare-fun d!661834 () Bool)

(declare-fun res!951134 () Bool)

(declare-fun e!1413208 () Bool)

(assert (=> d!661834 (=> (not res!951134) (not e!1413208))))

(assert (=> d!661834 (= res!951134 (= (csize!17160 (left!19900 t!4663)) (+ (size!20189 (left!19900 (left!19900 t!4663))) (size!20189 (right!20230 (left!19900 t!4663))))))))

(assert (=> d!661834 (= (inv!35056 (left!19900 t!4663)) e!1413208)))

(declare-fun b!2213092 () Bool)

(declare-fun res!951135 () Bool)

(assert (=> b!2213092 (=> (not res!951135) (not e!1413208))))

(assert (=> b!2213092 (= res!951135 (and (not (= (left!19900 (left!19900 t!4663)) Empty!8465)) (not (= (right!20230 (left!19900 t!4663)) Empty!8465))))))

(declare-fun b!2213093 () Bool)

(declare-fun res!951136 () Bool)

(assert (=> b!2213093 (=> (not res!951136) (not e!1413208))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2213093 (= res!951136 (= (cheight!8676 (left!19900 t!4663)) (+ (max!0 (height!1289 (left!19900 (left!19900 t!4663))) (height!1289 (right!20230 (left!19900 t!4663)))) 1)))))

(declare-fun b!2213094 () Bool)

(assert (=> b!2213094 (= e!1413208 (<= 0 (cheight!8676 (left!19900 t!4663))))))

(assert (= (and d!661834 res!951134) b!2213092))

(assert (= (and b!2213092 res!951135) b!2213093))

(assert (= (and b!2213093 res!951136) b!2213094))

(declare-fun m!2655383 () Bool)

(assert (=> d!661834 m!2655383))

(declare-fun m!2655385 () Bool)

(assert (=> d!661834 m!2655385))

(declare-fun m!2655387 () Bool)

(assert (=> b!2213093 m!2655387))

(declare-fun m!2655389 () Bool)

(assert (=> b!2213093 m!2655389))

(assert (=> b!2213093 m!2655387))

(assert (=> b!2213093 m!2655389))

(declare-fun m!2655391 () Bool)

(assert (=> b!2213093 m!2655391))

(assert (=> b!2213042 d!661834))

(declare-fun d!661836 () Bool)

(assert (=> d!661836 (= (isEmpty!14820 (list!10043 t!4663)) ((_ is Nil!25868) (list!10043 t!4663)))))

(assert (=> d!661828 d!661836))

(declare-fun b!2213106 () Bool)

(declare-fun e!1413214 () List!25952)

(declare-fun ++!6454 (List!25952 List!25952) List!25952)

(assert (=> b!2213106 (= e!1413214 (++!6454 (list!10043 (left!19900 t!4663)) (list!10043 (right!20230 t!4663))))))

(declare-fun d!661838 () Bool)

(declare-fun c!353720 () Bool)

(assert (=> d!661838 (= c!353720 ((_ is Empty!8465) t!4663))))

(declare-fun e!1413213 () List!25952)

(assert (=> d!661838 (= (list!10043 t!4663) e!1413213)))

(declare-fun b!2213103 () Bool)

(assert (=> b!2213103 (= e!1413213 Nil!25868)))

(declare-fun b!2213105 () Bool)

(declare-fun list!10045 (IArray!16935) List!25952)

(assert (=> b!2213105 (= e!1413214 (list!10045 (xs!11407 t!4663)))))

(declare-fun b!2213104 () Bool)

(assert (=> b!2213104 (= e!1413213 e!1413214)))

(declare-fun c!353721 () Bool)

(assert (=> b!2213104 (= c!353721 ((_ is Leaf!12397) t!4663))))

(assert (= (and d!661838 c!353720) b!2213103))

(assert (= (and d!661838 (not c!353720)) b!2213104))

(assert (= (and b!2213104 c!353721) b!2213105))

(assert (= (and b!2213104 (not c!353721)) b!2213106))

(declare-fun m!2655393 () Bool)

(assert (=> b!2213106 m!2655393))

(declare-fun m!2655395 () Bool)

(assert (=> b!2213106 m!2655395))

(assert (=> b!2213106 m!2655393))

(assert (=> b!2213106 m!2655395))

(declare-fun m!2655397 () Bool)

(assert (=> b!2213106 m!2655397))

(declare-fun m!2655399 () Bool)

(assert (=> b!2213105 m!2655399))

(assert (=> d!661828 d!661838))

(declare-fun d!661840 () Bool)

(declare-fun lt!826657 () Int)

(assert (=> d!661840 (= lt!826657 (size!20191 (list!10043 t!4663)))))

(assert (=> d!661840 (= lt!826657 (ite ((_ is Empty!8465) t!4663) 0 (ite ((_ is Leaf!12397) t!4663) (csize!17161 t!4663) (csize!17160 t!4663))))))

(assert (=> d!661840 (= (size!20189 t!4663) lt!826657)))

(declare-fun bs!451525 () Bool)

(assert (= bs!451525 d!661840))

(assert (=> bs!451525 m!2655351))

(assert (=> bs!451525 m!2655351))

(declare-fun m!2655401 () Bool)

(assert (=> bs!451525 m!2655401))

(assert (=> d!661828 d!661840))

(declare-fun d!661842 () Bool)

(assert (=> d!661842 (= (height!1289 (left!19900 t!4663)) (ite ((_ is Empty!8465) (left!19900 t!4663)) 0 (ite ((_ is Leaf!12397) (left!19900 t!4663)) 1 (cheight!8676 (left!19900 t!4663)))))))

(assert (=> b!2213017 d!661842))

(declare-fun d!661844 () Bool)

(assert (=> d!661844 (= (height!1289 (right!20230 t!4663)) (ite ((_ is Empty!8465) (right!20230 t!4663)) 0 (ite ((_ is Leaf!12397) (right!20230 t!4663)) 1 (cheight!8676 (right!20230 t!4663)))))))

(assert (=> b!2213017 d!661844))

(declare-fun d!661846 () Bool)

(declare-fun c!353722 () Bool)

(assert (=> d!661846 (= c!353722 ((_ is Node!8465) (left!19900 (right!20230 t!4663))))))

(declare-fun e!1413215 () Bool)

(assert (=> d!661846 (= (inv!35052 (left!19900 (right!20230 t!4663))) e!1413215)))

(declare-fun b!2213107 () Bool)

(assert (=> b!2213107 (= e!1413215 (inv!35056 (left!19900 (right!20230 t!4663))))))

(declare-fun b!2213108 () Bool)

(declare-fun e!1413216 () Bool)

(assert (=> b!2213108 (= e!1413215 e!1413216)))

(declare-fun res!951137 () Bool)

(assert (=> b!2213108 (= res!951137 (not ((_ is Leaf!12397) (left!19900 (right!20230 t!4663)))))))

(assert (=> b!2213108 (=> res!951137 e!1413216)))

(declare-fun b!2213109 () Bool)

(assert (=> b!2213109 (= e!1413216 (inv!35057 (left!19900 (right!20230 t!4663))))))

(assert (= (and d!661846 c!353722) b!2213107))

(assert (= (and d!661846 (not c!353722)) b!2213108))

(assert (= (and b!2213108 (not res!951137)) b!2213109))

(declare-fun m!2655403 () Bool)

(assert (=> b!2213107 m!2655403))

(declare-fun m!2655405 () Bool)

(assert (=> b!2213109 m!2655405))

(assert (=> b!2213078 d!661846))

(declare-fun d!661848 () Bool)

(declare-fun c!353723 () Bool)

(assert (=> d!661848 (= c!353723 ((_ is Node!8465) (right!20230 (right!20230 t!4663))))))

(declare-fun e!1413217 () Bool)

(assert (=> d!661848 (= (inv!35052 (right!20230 (right!20230 t!4663))) e!1413217)))

(declare-fun b!2213110 () Bool)

(assert (=> b!2213110 (= e!1413217 (inv!35056 (right!20230 (right!20230 t!4663))))))

(declare-fun b!2213111 () Bool)

(declare-fun e!1413218 () Bool)

(assert (=> b!2213111 (= e!1413217 e!1413218)))

(declare-fun res!951138 () Bool)

(assert (=> b!2213111 (= res!951138 (not ((_ is Leaf!12397) (right!20230 (right!20230 t!4663)))))))

(assert (=> b!2213111 (=> res!951138 e!1413218)))

(declare-fun b!2213112 () Bool)

(assert (=> b!2213112 (= e!1413218 (inv!35057 (right!20230 (right!20230 t!4663))))))

(assert (= (and d!661848 c!353723) b!2213110))

(assert (= (and d!661848 (not c!353723)) b!2213111))

(assert (= (and b!2213111 (not res!951138)) b!2213112))

(declare-fun m!2655407 () Bool)

(assert (=> b!2213110 m!2655407))

(declare-fun m!2655409 () Bool)

(assert (=> b!2213112 m!2655409))

(assert (=> b!2213078 d!661848))

(declare-fun d!661850 () Bool)

(assert (=> d!661850 (= (inv!35053 (xs!11407 (right!20230 t!4663))) (<= (size!20191 (innerList!8525 (xs!11407 (right!20230 t!4663)))) 2147483647))))

(declare-fun bs!451526 () Bool)

(assert (= bs!451526 d!661850))

(declare-fun m!2655411 () Bool)

(assert (=> bs!451526 m!2655411))

(assert (=> b!2213079 d!661850))

(declare-fun d!661852 () Bool)

(assert (=> d!661852 (= (inv!35053 (xs!11407 (left!19900 t!4663))) (<= (size!20191 (innerList!8525 (xs!11407 (left!19900 t!4663)))) 2147483647))))

(declare-fun bs!451527 () Bool)

(assert (= bs!451527 d!661852))

(declare-fun m!2655413 () Bool)

(assert (=> bs!451527 m!2655413))

(assert (=> b!2213076 d!661852))

(declare-fun b!2213113 () Bool)

(declare-fun e!1413219 () Bool)

(assert (=> b!2213113 (= e!1413219 (not (isEmpty!14819 (right!20230 (right!20230 t!4663)))))))

(declare-fun b!2213114 () Bool)

(declare-fun res!951143 () Bool)

(assert (=> b!2213114 (=> (not res!951143) (not e!1413219))))

(assert (=> b!2213114 (= res!951143 (<= (- (height!1289 (left!19900 (right!20230 t!4663))) (height!1289 (right!20230 (right!20230 t!4663)))) 1))))

(declare-fun d!661854 () Bool)

(declare-fun res!951141 () Bool)

(declare-fun e!1413220 () Bool)

(assert (=> d!661854 (=> res!951141 e!1413220)))

(assert (=> d!661854 (= res!951141 (not ((_ is Node!8465) (right!20230 t!4663))))))

(assert (=> d!661854 (= (isBalanced!2623 (right!20230 t!4663)) e!1413220)))

(declare-fun b!2213115 () Bool)

(declare-fun res!951144 () Bool)

(assert (=> b!2213115 (=> (not res!951144) (not e!1413219))))

(assert (=> b!2213115 (= res!951144 (isBalanced!2623 (right!20230 (right!20230 t!4663))))))

(declare-fun b!2213116 () Bool)

(declare-fun res!951142 () Bool)

(assert (=> b!2213116 (=> (not res!951142) (not e!1413219))))

(assert (=> b!2213116 (= res!951142 (not (isEmpty!14819 (left!19900 (right!20230 t!4663)))))))

(declare-fun b!2213117 () Bool)

(declare-fun res!951139 () Bool)

(assert (=> b!2213117 (=> (not res!951139) (not e!1413219))))

(assert (=> b!2213117 (= res!951139 (isBalanced!2623 (left!19900 (right!20230 t!4663))))))

(declare-fun b!2213118 () Bool)

(assert (=> b!2213118 (= e!1413220 e!1413219)))

(declare-fun res!951140 () Bool)

(assert (=> b!2213118 (=> (not res!951140) (not e!1413219))))

(assert (=> b!2213118 (= res!951140 (<= (- 1) (- (height!1289 (left!19900 (right!20230 t!4663))) (height!1289 (right!20230 (right!20230 t!4663))))))))

(assert (= (and d!661854 (not res!951141)) b!2213118))

(assert (= (and b!2213118 res!951140) b!2213114))

(assert (= (and b!2213114 res!951143) b!2213117))

(assert (= (and b!2213117 res!951139) b!2213115))

(assert (= (and b!2213115 res!951144) b!2213116))

(assert (= (and b!2213116 res!951142) b!2213113))

(declare-fun m!2655415 () Bool)

(assert (=> b!2213113 m!2655415))

(declare-fun m!2655417 () Bool)

(assert (=> b!2213118 m!2655417))

(declare-fun m!2655419 () Bool)

(assert (=> b!2213118 m!2655419))

(declare-fun m!2655421 () Bool)

(assert (=> b!2213116 m!2655421))

(declare-fun m!2655423 () Bool)

(assert (=> b!2213115 m!2655423))

(declare-fun m!2655425 () Bool)

(assert (=> b!2213117 m!2655425))

(assert (=> b!2213114 m!2655417))

(assert (=> b!2213114 m!2655419))

(assert (=> b!2213014 d!661854))

(declare-fun d!661856 () Bool)

(declare-fun res!951149 () Bool)

(declare-fun e!1413223 () Bool)

(assert (=> d!661856 (=> (not res!951149) (not e!1413223))))

(assert (=> d!661856 (= res!951149 (<= (size!20191 (list!10045 (xs!11407 (right!20230 t!4663)))) 512))))

(assert (=> d!661856 (= (inv!35057 (right!20230 t!4663)) e!1413223)))

(declare-fun b!2213123 () Bool)

(declare-fun res!951150 () Bool)

(assert (=> b!2213123 (=> (not res!951150) (not e!1413223))))

(assert (=> b!2213123 (= res!951150 (= (csize!17161 (right!20230 t!4663)) (size!20191 (list!10045 (xs!11407 (right!20230 t!4663))))))))

(declare-fun b!2213124 () Bool)

(assert (=> b!2213124 (= e!1413223 (and (> (csize!17161 (right!20230 t!4663)) 0) (<= (csize!17161 (right!20230 t!4663)) 512)))))

(assert (= (and d!661856 res!951149) b!2213123))

(assert (= (and b!2213123 res!951150) b!2213124))

(declare-fun m!2655427 () Bool)

(assert (=> d!661856 m!2655427))

(assert (=> d!661856 m!2655427))

(declare-fun m!2655429 () Bool)

(assert (=> d!661856 m!2655429))

(assert (=> b!2213123 m!2655427))

(assert (=> b!2213123 m!2655427))

(assert (=> b!2213123 m!2655429))

(assert (=> b!2213047 d!661856))

(declare-fun d!661858 () Bool)

(declare-fun lt!826658 () Bool)

(assert (=> d!661858 (= lt!826658 (isEmpty!14820 (list!10043 (left!19900 t!4663))))))

(assert (=> d!661858 (= lt!826658 (= (size!20189 (left!19900 t!4663)) 0))))

(assert (=> d!661858 (= (isEmpty!14819 (left!19900 t!4663)) lt!826658)))

(declare-fun bs!451528 () Bool)

(assert (= bs!451528 d!661858))

(assert (=> bs!451528 m!2655393))

(assert (=> bs!451528 m!2655393))

(declare-fun m!2655431 () Bool)

(assert (=> bs!451528 m!2655431))

(declare-fun m!2655433 () Bool)

(assert (=> bs!451528 m!2655433))

(assert (=> b!2213015 d!661858))

(declare-fun d!661860 () Bool)

(declare-fun res!951151 () Bool)

(declare-fun e!1413224 () Bool)

(assert (=> d!661860 (=> (not res!951151) (not e!1413224))))

(assert (=> d!661860 (= res!951151 (<= (size!20191 (list!10045 (xs!11407 t!4663))) 512))))

(assert (=> d!661860 (= (inv!35057 t!4663) e!1413224)))

(declare-fun b!2213125 () Bool)

(declare-fun res!951152 () Bool)

(assert (=> b!2213125 (=> (not res!951152) (not e!1413224))))

(assert (=> b!2213125 (= res!951152 (= (csize!17161 t!4663) (size!20191 (list!10045 (xs!11407 t!4663)))))))

(declare-fun b!2213126 () Bool)

(assert (=> b!2213126 (= e!1413224 (and (> (csize!17161 t!4663) 0) (<= (csize!17161 t!4663) 512)))))

(assert (= (and d!661860 res!951151) b!2213125))

(assert (= (and b!2213125 res!951152) b!2213126))

(assert (=> d!661860 m!2655399))

(assert (=> d!661860 m!2655399))

(declare-fun m!2655435 () Bool)

(assert (=> d!661860 m!2655435))

(assert (=> b!2213125 m!2655399))

(assert (=> b!2213125 m!2655399))

(assert (=> b!2213125 m!2655435))

(assert (=> b!2213041 d!661860))

(declare-fun d!661862 () Bool)

(declare-fun lt!826661 () Int)

(assert (=> d!661862 (>= lt!826661 0)))

(declare-fun e!1413227 () Int)

(assert (=> d!661862 (= lt!826661 e!1413227)))

(declare-fun c!353726 () Bool)

(assert (=> d!661862 (= c!353726 ((_ is Nil!25868) (innerList!8525 (xs!11407 t!4663))))))

(assert (=> d!661862 (= (size!20191 (innerList!8525 (xs!11407 t!4663))) lt!826661)))

(declare-fun b!2213131 () Bool)

(assert (=> b!2213131 (= e!1413227 0)))

(declare-fun b!2213132 () Bool)

(assert (=> b!2213132 (= e!1413227 (+ 1 (size!20191 (t!198708 (innerList!8525 (xs!11407 t!4663))))))))

(assert (= (and d!661862 c!353726) b!2213131))

(assert (= (and d!661862 (not c!353726)) b!2213132))

(declare-fun m!2655437 () Bool)

(assert (=> b!2213132 m!2655437))

(assert (=> d!661832 d!661862))

(declare-fun b!2213133 () Bool)

(declare-fun e!1413228 () Bool)

(assert (=> b!2213133 (= e!1413228 (not (isEmpty!14819 (right!20230 (left!19900 t!4663)))))))

(declare-fun b!2213134 () Bool)

(declare-fun res!951157 () Bool)

(assert (=> b!2213134 (=> (not res!951157) (not e!1413228))))

(assert (=> b!2213134 (= res!951157 (<= (- (height!1289 (left!19900 (left!19900 t!4663))) (height!1289 (right!20230 (left!19900 t!4663)))) 1))))

(declare-fun d!661864 () Bool)

(declare-fun res!951155 () Bool)

(declare-fun e!1413229 () Bool)

(assert (=> d!661864 (=> res!951155 e!1413229)))

(assert (=> d!661864 (= res!951155 (not ((_ is Node!8465) (left!19900 t!4663))))))

(assert (=> d!661864 (= (isBalanced!2623 (left!19900 t!4663)) e!1413229)))

(declare-fun b!2213135 () Bool)

(declare-fun res!951158 () Bool)

(assert (=> b!2213135 (=> (not res!951158) (not e!1413228))))

(assert (=> b!2213135 (= res!951158 (isBalanced!2623 (right!20230 (left!19900 t!4663))))))

(declare-fun b!2213136 () Bool)

(declare-fun res!951156 () Bool)

(assert (=> b!2213136 (=> (not res!951156) (not e!1413228))))

(assert (=> b!2213136 (= res!951156 (not (isEmpty!14819 (left!19900 (left!19900 t!4663)))))))

(declare-fun b!2213137 () Bool)

(declare-fun res!951153 () Bool)

(assert (=> b!2213137 (=> (not res!951153) (not e!1413228))))

(assert (=> b!2213137 (= res!951153 (isBalanced!2623 (left!19900 (left!19900 t!4663))))))

(declare-fun b!2213138 () Bool)

(assert (=> b!2213138 (= e!1413229 e!1413228)))

(declare-fun res!951154 () Bool)

(assert (=> b!2213138 (=> (not res!951154) (not e!1413228))))

(assert (=> b!2213138 (= res!951154 (<= (- 1) (- (height!1289 (left!19900 (left!19900 t!4663))) (height!1289 (right!20230 (left!19900 t!4663))))))))

(assert (= (and d!661864 (not res!951155)) b!2213138))

(assert (= (and b!2213138 res!951154) b!2213134))

(assert (= (and b!2213134 res!951157) b!2213137))

(assert (= (and b!2213137 res!951153) b!2213135))

(assert (= (and b!2213135 res!951158) b!2213136))

(assert (= (and b!2213136 res!951156) b!2213133))

(declare-fun m!2655439 () Bool)

(assert (=> b!2213133 m!2655439))

(assert (=> b!2213138 m!2655387))

(assert (=> b!2213138 m!2655389))

(declare-fun m!2655441 () Bool)

(assert (=> b!2213136 m!2655441))

(declare-fun m!2655443 () Bool)

(assert (=> b!2213135 m!2655443))

(declare-fun m!2655445 () Bool)

(assert (=> b!2213137 m!2655445))

(assert (=> b!2213134 m!2655387))

(assert (=> b!2213134 m!2655389))

(assert (=> b!2213016 d!661864))

(declare-fun d!661866 () Bool)

(declare-fun res!951159 () Bool)

(declare-fun e!1413230 () Bool)

(assert (=> d!661866 (=> (not res!951159) (not e!1413230))))

(assert (=> d!661866 (= res!951159 (<= (size!20191 (list!10045 (xs!11407 (left!19900 t!4663)))) 512))))

(assert (=> d!661866 (= (inv!35057 (left!19900 t!4663)) e!1413230)))

(declare-fun b!2213139 () Bool)

(declare-fun res!951160 () Bool)

(assert (=> b!2213139 (=> (not res!951160) (not e!1413230))))

(assert (=> b!2213139 (= res!951160 (= (csize!17161 (left!19900 t!4663)) (size!20191 (list!10045 (xs!11407 (left!19900 t!4663))))))))

(declare-fun b!2213140 () Bool)

(assert (=> b!2213140 (= e!1413230 (and (> (csize!17161 (left!19900 t!4663)) 0) (<= (csize!17161 (left!19900 t!4663)) 512)))))

(assert (= (and d!661866 res!951159) b!2213139))

(assert (= (and b!2213139 res!951160) b!2213140))

(declare-fun m!2655447 () Bool)

(assert (=> d!661866 m!2655447))

(assert (=> d!661866 m!2655447))

(declare-fun m!2655449 () Bool)

(assert (=> d!661866 m!2655449))

(assert (=> b!2213139 m!2655447))

(assert (=> b!2213139 m!2655447))

(assert (=> b!2213139 m!2655449))

(assert (=> b!2213044 d!661866))

(declare-fun d!661868 () Bool)

(declare-fun lt!826662 () Bool)

(assert (=> d!661868 (= lt!826662 (isEmpty!14820 (list!10043 (right!20230 t!4663))))))

(assert (=> d!661868 (= lt!826662 (= (size!20189 (right!20230 t!4663)) 0))))

(assert (=> d!661868 (= (isEmpty!14819 (right!20230 t!4663)) lt!826662)))

(declare-fun bs!451529 () Bool)

(assert (= bs!451529 d!661868))

(assert (=> bs!451529 m!2655395))

(assert (=> bs!451529 m!2655395))

(declare-fun m!2655451 () Bool)

(assert (=> bs!451529 m!2655451))

(declare-fun m!2655453 () Bool)

(assert (=> bs!451529 m!2655453))

(assert (=> b!2213012 d!661868))

(declare-fun d!661870 () Bool)

(declare-fun res!951161 () Bool)

(declare-fun e!1413231 () Bool)

(assert (=> d!661870 (=> (not res!951161) (not e!1413231))))

(assert (=> d!661870 (= res!951161 (= (csize!17160 (right!20230 t!4663)) (+ (size!20189 (left!19900 (right!20230 t!4663))) (size!20189 (right!20230 (right!20230 t!4663))))))))

(assert (=> d!661870 (= (inv!35056 (right!20230 t!4663)) e!1413231)))

(declare-fun b!2213141 () Bool)

(declare-fun res!951162 () Bool)

(assert (=> b!2213141 (=> (not res!951162) (not e!1413231))))

(assert (=> b!2213141 (= res!951162 (and (not (= (left!19900 (right!20230 t!4663)) Empty!8465)) (not (= (right!20230 (right!20230 t!4663)) Empty!8465))))))

(declare-fun b!2213142 () Bool)

(declare-fun res!951163 () Bool)

(assert (=> b!2213142 (=> (not res!951163) (not e!1413231))))

(assert (=> b!2213142 (= res!951163 (= (cheight!8676 (right!20230 t!4663)) (+ (max!0 (height!1289 (left!19900 (right!20230 t!4663))) (height!1289 (right!20230 (right!20230 t!4663)))) 1)))))

(declare-fun b!2213143 () Bool)

(assert (=> b!2213143 (= e!1413231 (<= 0 (cheight!8676 (right!20230 t!4663))))))

(assert (= (and d!661870 res!951161) b!2213141))

(assert (= (and b!2213141 res!951162) b!2213142))

(assert (= (and b!2213142 res!951163) b!2213143))

(declare-fun m!2655455 () Bool)

(assert (=> d!661870 m!2655455))

(declare-fun m!2655457 () Bool)

(assert (=> d!661870 m!2655457))

(assert (=> b!2213142 m!2655417))

(assert (=> b!2213142 m!2655419))

(assert (=> b!2213142 m!2655417))

(assert (=> b!2213142 m!2655419))

(declare-fun m!2655459 () Bool)

(assert (=> b!2213142 m!2655459))

(assert (=> b!2213045 d!661870))

(assert (=> b!2213013 d!661842))

(assert (=> b!2213013 d!661844))

(declare-fun d!661874 () Bool)

(declare-fun res!951164 () Bool)

(declare-fun e!1413232 () Bool)

(assert (=> d!661874 (=> (not res!951164) (not e!1413232))))

(assert (=> d!661874 (= res!951164 (= (csize!17160 t!4663) (+ (size!20189 (left!19900 t!4663)) (size!20189 (right!20230 t!4663)))))))

(assert (=> d!661874 (= (inv!35056 t!4663) e!1413232)))

(declare-fun b!2213144 () Bool)

(declare-fun res!951165 () Bool)

(assert (=> b!2213144 (=> (not res!951165) (not e!1413232))))

(assert (=> b!2213144 (= res!951165 (and (not (= (left!19900 t!4663) Empty!8465)) (not (= (right!20230 t!4663) Empty!8465))))))

(declare-fun b!2213145 () Bool)

(declare-fun res!951166 () Bool)

(assert (=> b!2213145 (=> (not res!951166) (not e!1413232))))

(assert (=> b!2213145 (= res!951166 (= (cheight!8676 t!4663) (+ (max!0 (height!1289 (left!19900 t!4663)) (height!1289 (right!20230 t!4663))) 1)))))

(declare-fun b!2213146 () Bool)

(assert (=> b!2213146 (= e!1413232 (<= 0 (cheight!8676 t!4663)))))

(assert (= (and d!661874 res!951164) b!2213144))

(assert (= (and b!2213144 res!951165) b!2213145))

(assert (= (and b!2213145 res!951166) b!2213146))

(assert (=> d!661874 m!2655433))

(assert (=> d!661874 m!2655453))

(assert (=> b!2213145 m!2655309))

(assert (=> b!2213145 m!2655311))

(assert (=> b!2213145 m!2655309))

(assert (=> b!2213145 m!2655311))

(declare-fun m!2655461 () Bool)

(assert (=> b!2213145 m!2655461))

(assert (=> b!2213039 d!661874))

(declare-fun d!661876 () Bool)

(declare-fun c!353727 () Bool)

(assert (=> d!661876 (= c!353727 ((_ is Node!8465) (left!19900 (left!19900 t!4663))))))

(declare-fun e!1413233 () Bool)

(assert (=> d!661876 (= (inv!35052 (left!19900 (left!19900 t!4663))) e!1413233)))

(declare-fun b!2213147 () Bool)

(assert (=> b!2213147 (= e!1413233 (inv!35056 (left!19900 (left!19900 t!4663))))))

(declare-fun b!2213148 () Bool)

(declare-fun e!1413234 () Bool)

(assert (=> b!2213148 (= e!1413233 e!1413234)))

(declare-fun res!951167 () Bool)

(assert (=> b!2213148 (= res!951167 (not ((_ is Leaf!12397) (left!19900 (left!19900 t!4663)))))))

(assert (=> b!2213148 (=> res!951167 e!1413234)))

(declare-fun b!2213149 () Bool)

(assert (=> b!2213149 (= e!1413234 (inv!35057 (left!19900 (left!19900 t!4663))))))

(assert (= (and d!661876 c!353727) b!2213147))

(assert (= (and d!661876 (not c!353727)) b!2213148))

(assert (= (and b!2213148 (not res!951167)) b!2213149))

(declare-fun m!2655463 () Bool)

(assert (=> b!2213147 m!2655463))

(declare-fun m!2655465 () Bool)

(assert (=> b!2213149 m!2655465))

(assert (=> b!2213075 d!661876))

(declare-fun d!661878 () Bool)

(declare-fun c!353730 () Bool)

(assert (=> d!661878 (= c!353730 ((_ is Node!8465) (right!20230 (left!19900 t!4663))))))

(declare-fun e!1413237 () Bool)

(assert (=> d!661878 (= (inv!35052 (right!20230 (left!19900 t!4663))) e!1413237)))

(declare-fun b!2213154 () Bool)

(assert (=> b!2213154 (= e!1413237 (inv!35056 (right!20230 (left!19900 t!4663))))))

(declare-fun b!2213155 () Bool)

(declare-fun e!1413238 () Bool)

(assert (=> b!2213155 (= e!1413237 e!1413238)))

(declare-fun res!951168 () Bool)

(assert (=> b!2213155 (= res!951168 (not ((_ is Leaf!12397) (right!20230 (left!19900 t!4663)))))))

(assert (=> b!2213155 (=> res!951168 e!1413238)))

(declare-fun b!2213156 () Bool)

(assert (=> b!2213156 (= e!1413238 (inv!35057 (right!20230 (left!19900 t!4663))))))

(assert (= (and d!661878 c!353730) b!2213154))

(assert (= (and d!661878 (not c!353730)) b!2213155))

(assert (= (and b!2213155 (not res!951168)) b!2213156))

(declare-fun m!2655467 () Bool)

(assert (=> b!2213154 m!2655467))

(declare-fun m!2655469 () Bool)

(assert (=> b!2213156 m!2655469))

(assert (=> b!2213075 d!661878))

(declare-fun b!2213157 () Bool)

(declare-fun e!1413239 () Bool)

(declare-fun tp!687651 () Bool)

(assert (=> b!2213157 (= e!1413239 (and tp_is_empty!9797 tp!687651))))

(assert (=> b!2213077 (= tp!687642 e!1413239)))

(assert (= (and b!2213077 ((_ is Cons!25868) (innerList!8525 (xs!11407 (left!19900 t!4663))))) b!2213157))

(declare-fun b!2213158 () Bool)

(declare-fun e!1413240 () Bool)

(declare-fun tp!687652 () Bool)

(assert (=> b!2213158 (= e!1413240 (and tp_is_empty!9797 tp!687652))))

(assert (=> b!2213085 (= tp!687650 e!1413240)))

(assert (= (and b!2213085 ((_ is Cons!25868) (t!198708 (innerList!8525 (xs!11407 t!4663))))) b!2213158))

(declare-fun b!2213159 () Bool)

(declare-fun e!1413241 () Bool)

(declare-fun tp!687654 () Bool)

(declare-fun tp!687655 () Bool)

(assert (=> b!2213159 (= e!1413241 (and (inv!35052 (left!19900 (left!19900 (right!20230 t!4663)))) tp!687654 (inv!35052 (right!20230 (left!19900 (right!20230 t!4663)))) tp!687655))))

(declare-fun b!2213161 () Bool)

(declare-fun e!1413242 () Bool)

(declare-fun tp!687653 () Bool)

(assert (=> b!2213161 (= e!1413242 tp!687653)))

(declare-fun b!2213160 () Bool)

(assert (=> b!2213160 (= e!1413241 (and (inv!35053 (xs!11407 (left!19900 (right!20230 t!4663)))) e!1413242))))

(assert (=> b!2213078 (= tp!687646 (and (inv!35052 (left!19900 (right!20230 t!4663))) e!1413241))))

(assert (= (and b!2213078 ((_ is Node!8465) (left!19900 (right!20230 t!4663)))) b!2213159))

(assert (= b!2213160 b!2213161))

(assert (= (and b!2213078 ((_ is Leaf!12397) (left!19900 (right!20230 t!4663)))) b!2213160))

(declare-fun m!2655471 () Bool)

(assert (=> b!2213159 m!2655471))

(declare-fun m!2655473 () Bool)

(assert (=> b!2213159 m!2655473))

(declare-fun m!2655475 () Bool)

(assert (=> b!2213160 m!2655475))

(assert (=> b!2213078 m!2655377))

(declare-fun e!1413243 () Bool)

(declare-fun b!2213162 () Bool)

(declare-fun tp!687657 () Bool)

(declare-fun tp!687658 () Bool)

(assert (=> b!2213162 (= e!1413243 (and (inv!35052 (left!19900 (right!20230 (right!20230 t!4663)))) tp!687657 (inv!35052 (right!20230 (right!20230 (right!20230 t!4663)))) tp!687658))))

(declare-fun b!2213164 () Bool)

(declare-fun e!1413244 () Bool)

(declare-fun tp!687656 () Bool)

(assert (=> b!2213164 (= e!1413244 tp!687656)))

(declare-fun b!2213163 () Bool)

(assert (=> b!2213163 (= e!1413243 (and (inv!35053 (xs!11407 (right!20230 (right!20230 t!4663)))) e!1413244))))

(assert (=> b!2213078 (= tp!687647 (and (inv!35052 (right!20230 (right!20230 t!4663))) e!1413243))))

(assert (= (and b!2213078 ((_ is Node!8465) (right!20230 (right!20230 t!4663)))) b!2213162))

(assert (= b!2213163 b!2213164))

(assert (= (and b!2213078 ((_ is Leaf!12397) (right!20230 (right!20230 t!4663)))) b!2213163))

(declare-fun m!2655477 () Bool)

(assert (=> b!2213162 m!2655477))

(declare-fun m!2655479 () Bool)

(assert (=> b!2213162 m!2655479))

(declare-fun m!2655481 () Bool)

(assert (=> b!2213163 m!2655481))

(assert (=> b!2213078 m!2655379))

(declare-fun tp!687661 () Bool)

(declare-fun tp!687660 () Bool)

(declare-fun e!1413246 () Bool)

(declare-fun b!2213167 () Bool)

(assert (=> b!2213167 (= e!1413246 (and (inv!35052 (left!19900 (left!19900 (left!19900 t!4663)))) tp!687660 (inv!35052 (right!20230 (left!19900 (left!19900 t!4663)))) tp!687661))))

(declare-fun b!2213169 () Bool)

(declare-fun e!1413247 () Bool)

(declare-fun tp!687659 () Bool)

(assert (=> b!2213169 (= e!1413247 tp!687659)))

(declare-fun b!2213168 () Bool)

(assert (=> b!2213168 (= e!1413246 (and (inv!35053 (xs!11407 (left!19900 (left!19900 t!4663)))) e!1413247))))

(assert (=> b!2213075 (= tp!687643 (and (inv!35052 (left!19900 (left!19900 t!4663))) e!1413246))))

(assert (= (and b!2213075 ((_ is Node!8465) (left!19900 (left!19900 t!4663)))) b!2213167))

(assert (= b!2213168 b!2213169))

(assert (= (and b!2213075 ((_ is Leaf!12397) (left!19900 (left!19900 t!4663)))) b!2213168))

(declare-fun m!2655485 () Bool)

(assert (=> b!2213167 m!2655485))

(declare-fun m!2655487 () Bool)

(assert (=> b!2213167 m!2655487))

(declare-fun m!2655489 () Bool)

(assert (=> b!2213168 m!2655489))

(assert (=> b!2213075 m!2655371))

(declare-fun b!2213176 () Bool)

(declare-fun tp!687663 () Bool)

(declare-fun tp!687664 () Bool)

(declare-fun e!1413250 () Bool)

(assert (=> b!2213176 (= e!1413250 (and (inv!35052 (left!19900 (right!20230 (left!19900 t!4663)))) tp!687663 (inv!35052 (right!20230 (right!20230 (left!19900 t!4663)))) tp!687664))))

(declare-fun b!2213178 () Bool)

(declare-fun e!1413251 () Bool)

(declare-fun tp!687662 () Bool)

(assert (=> b!2213178 (= e!1413251 tp!687662)))

(declare-fun b!2213177 () Bool)

(assert (=> b!2213177 (= e!1413250 (and (inv!35053 (xs!11407 (right!20230 (left!19900 t!4663)))) e!1413251))))

(assert (=> b!2213075 (= tp!687644 (and (inv!35052 (right!20230 (left!19900 t!4663))) e!1413250))))

(assert (= (and b!2213075 ((_ is Node!8465) (right!20230 (left!19900 t!4663)))) b!2213176))

(assert (= b!2213177 b!2213178))

(assert (= (and b!2213075 ((_ is Leaf!12397) (right!20230 (left!19900 t!4663)))) b!2213177))

(declare-fun m!2655491 () Bool)

(assert (=> b!2213176 m!2655491))

(declare-fun m!2655493 () Bool)

(assert (=> b!2213176 m!2655493))

(declare-fun m!2655495 () Bool)

(assert (=> b!2213177 m!2655495))

(assert (=> b!2213075 m!2655373))

(declare-fun b!2213179 () Bool)

(declare-fun e!1413252 () Bool)

(declare-fun tp!687665 () Bool)

(assert (=> b!2213179 (= e!1413252 (and tp_is_empty!9797 tp!687665))))

(assert (=> b!2213080 (= tp!687645 e!1413252)))

(assert (= (and b!2213080 ((_ is Cons!25868) (innerList!8525 (xs!11407 (right!20230 t!4663))))) b!2213179))

(check-sat (not b!2213168) (not b!2213113) (not b!2213114) (not b!2213132) (not b!2213157) (not b!2213078) (not d!661870) (not b!2213125) (not b!2213134) (not b!2213112) (not b!2213162) (not d!661874) (not b!2213178) (not b!2213123) (not d!661852) (not d!661834) (not b!2213075) (not d!661858) (not b!2213159) (not b!2213161) (not b!2213169) (not b!2213137) (not b!2213149) (not b!2213176) (not b!2213115) (not b!2213154) (not b!2213156) (not d!661856) (not b!2213145) (not d!661866) (not b!2213136) (not b!2213116) (not b!2213179) (not d!661850) (not b!2213167) (not b!2213133) (not b!2213177) (not b!2213138) (not b!2213105) tp_is_empty!9797 (not d!661840) (not d!661868) (not b!2213106) (not b!2213135) (not b!2213163) (not b!2213117) (not b!2213147) (not b!2213093) (not b!2213164) (not b!2213158) (not d!661860) (not b!2213118) (not b!2213107) (not b!2213142) (not b!2213160) (not b!2213109) (not b!2213139) (not b!2213110))
(check-sat)
