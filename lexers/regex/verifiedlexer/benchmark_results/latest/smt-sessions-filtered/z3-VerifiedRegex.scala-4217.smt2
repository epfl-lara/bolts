; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228370 () Bool)

(assert start!228370)

(declare-datatypes ((T!43516 0))(
  ( (T!43517 (val!7924 Int)) )
))
(declare-datatypes ((List!27710 0))(
  ( (Nil!27612) (Cons!27612 (h!33013 T!43516) (t!207310 List!27710)) )
))
(declare-datatypes ((IArray!18039 0))(
  ( (IArray!18040 (innerList!9077 List!27710)) )
))
(declare-datatypes ((Conc!9017 0))(
  ( (Node!9017 (left!20922 Conc!9017) (right!21252 Conc!9017) (csize!18264 Int) (cheight!9228 Int)) (Leaf!13235 (xs!11959 IArray!18039) (csize!18265 Int)) (Empty!9017) )
))
(declare-fun isBalanced!2713 (Conc!9017) Bool)

(assert (=> start!228370 (not (isBalanced!2713 Empty!9017))))

(declare-fun bs!458777 () Bool)

(assert (= bs!458777 start!228370))

(declare-fun m!2741697 () Bool)

(assert (=> bs!458777 m!2741697))

(check-sat (not start!228370))
(check-sat)
(get-model)

(declare-fun b!2314938 () Bool)

(declare-fun res!989132 () Bool)

(declare-fun e!1484179 () Bool)

(assert (=> b!2314938 (=> (not res!989132) (not e!1484179))))

(declare-fun isEmpty!15754 (Conc!9017) Bool)

(assert (=> b!2314938 (= res!989132 (not (isEmpty!15754 (left!20922 Empty!9017))))))

(declare-fun b!2314939 () Bool)

(declare-fun res!989136 () Bool)

(assert (=> b!2314939 (=> (not res!989136) (not e!1484179))))

(assert (=> b!2314939 (= res!989136 (isBalanced!2713 (left!20922 Empty!9017)))))

(declare-fun b!2314940 () Bool)

(declare-fun res!989133 () Bool)

(assert (=> b!2314940 (=> (not res!989133) (not e!1484179))))

(assert (=> b!2314940 (= res!989133 (isBalanced!2713 (right!21252 Empty!9017)))))

(declare-fun b!2314941 () Bool)

(declare-fun res!989135 () Bool)

(assert (=> b!2314941 (=> (not res!989135) (not e!1484179))))

(declare-fun height!1302 (Conc!9017) Int)

(assert (=> b!2314941 (= res!989135 (<= (- (height!1302 (left!20922 Empty!9017)) (height!1302 (right!21252 Empty!9017))) 1))))

(declare-fun b!2314942 () Bool)

(assert (=> b!2314942 (= e!1484179 (not (isEmpty!15754 (right!21252 Empty!9017))))))

(declare-fun b!2314943 () Bool)

(declare-fun e!1484178 () Bool)

(assert (=> b!2314943 (= e!1484178 e!1484179)))

(declare-fun res!989131 () Bool)

(assert (=> b!2314943 (=> (not res!989131) (not e!1484179))))

(assert (=> b!2314943 (= res!989131 (<= (- 1) (- (height!1302 (left!20922 Empty!9017)) (height!1302 (right!21252 Empty!9017)))))))

(declare-fun d!684524 () Bool)

(declare-fun res!989134 () Bool)

(assert (=> d!684524 (=> res!989134 e!1484178)))

(get-info :version)

(assert (=> d!684524 (= res!989134 (not ((_ is Node!9017) Empty!9017)))))

(assert (=> d!684524 (= (isBalanced!2713 Empty!9017) e!1484178)))

(assert (= (and d!684524 (not res!989134)) b!2314943))

(assert (= (and b!2314943 res!989131) b!2314941))

(assert (= (and b!2314941 res!989135) b!2314939))

(assert (= (and b!2314939 res!989136) b!2314940))

(assert (= (and b!2314940 res!989133) b!2314938))

(assert (= (and b!2314938 res!989132) b!2314942))

(declare-fun m!2741711 () Bool)

(assert (=> b!2314940 m!2741711))

(declare-fun m!2741713 () Bool)

(assert (=> b!2314941 m!2741713))

(declare-fun m!2741715 () Bool)

(assert (=> b!2314941 m!2741715))

(assert (=> b!2314943 m!2741713))

(assert (=> b!2314943 m!2741715))

(declare-fun m!2741717 () Bool)

(assert (=> b!2314938 m!2741717))

(declare-fun m!2741719 () Bool)

(assert (=> b!2314939 m!2741719))

(declare-fun m!2741721 () Bool)

(assert (=> b!2314942 m!2741721))

(assert (=> start!228370 d!684524))

(check-sat (not b!2314943) (not b!2314939) (not b!2314938) (not b!2314940) (not b!2314942) (not b!2314941))
(check-sat)
