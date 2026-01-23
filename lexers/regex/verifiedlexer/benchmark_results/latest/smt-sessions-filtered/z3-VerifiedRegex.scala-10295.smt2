; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535678 () Bool)

(assert start!535678)

(declare-fun b!5080322 () Bool)

(declare-fun e!3169090 () Bool)

(declare-fun e!3169091 () Bool)

(assert (=> b!5080322 (= e!3169090 e!3169091)))

(declare-fun res!2162883 () Bool)

(assert (=> b!5080322 (=> (not res!2162883) (not e!3169091))))

(declare-fun lt!2090880 () Int)

(declare-datatypes ((T!105244 0))(
  ( (T!105245 (val!23666 Int)) )
))
(declare-datatypes ((List!58576 0))(
  ( (Nil!58452) (Cons!58452 (h!64900 T!105244) (t!371393 List!58576)) )
))
(declare-datatypes ((IArray!31225 0))(
  ( (IArray!31226 (innerList!15670 List!58576)) )
))
(declare-datatypes ((Conc!15582 0))(
  ( (Node!15582 (left!42843 Conc!15582) (right!43173 Conc!15582) (csize!31394 Int) (cheight!15793 Int)) (Leaf!25878 (xs!18954 IArray!31225) (csize!31395 Int)) (Empty!15582) )
))
(declare-fun ys!41 () Conc!15582)

(get-info :version)

(assert (=> b!5080322 (= res!2162883 (and (or (> (- 1) lt!2090880) (> lt!2090880 1)) (>= lt!2090880 (- 1)) ((_ is Node!15582) ys!41)))))

(declare-fun lt!2090878 () Int)

(declare-fun lt!2090876 () Int)

(assert (=> b!5080322 (= lt!2090880 (- lt!2090878 lt!2090876))))

(declare-fun xs!286 () Conc!15582)

(declare-fun height!2159 (Conc!15582) Int)

(assert (=> b!5080322 (= lt!2090876 (height!2159 xs!286))))

(assert (=> b!5080322 (= lt!2090878 (height!2159 ys!41))))

(declare-fun b!5080323 () Bool)

(declare-fun e!3169086 () Bool)

(declare-fun tp!1417042 () Bool)

(assert (=> b!5080323 (= e!3169086 tp!1417042)))

(declare-fun b!5080324 () Bool)

(declare-fun e!3169089 () Bool)

(assert (=> b!5080324 (= e!3169091 e!3169089)))

(declare-fun res!2162882 () Bool)

(assert (=> b!5080324 (=> (not res!2162882) (not e!3169089))))

(declare-fun lt!2090879 () Conc!15582)

(assert (=> b!5080324 (= res!2162882 (not (= (height!2159 lt!2090879) (- lt!2090878 3))))))

(declare-fun ++!12810 (Conc!15582 Conc!15582) Conc!15582)

(assert (=> b!5080324 (= lt!2090879 (++!12810 xs!286 (left!42843 (left!42843 ys!41))))))

(declare-fun b!5080325 () Bool)

(declare-fun res!2162885 () Bool)

(assert (=> b!5080325 (=> (not res!2162885) (not e!3169090))))

(declare-fun isBalanced!4444 (Conc!15582) Bool)

(assert (=> b!5080325 (= res!2162885 (isBalanced!4444 ys!41))))

(declare-fun b!5080326 () Bool)

(declare-fun res!2162884 () Bool)

(assert (=> b!5080326 (=> (not res!2162884) (not e!3169091))))

(assert (=> b!5080326 (= res!2162884 ((_ is Node!15582) (left!42843 ys!41)))))

(declare-fun res!2162886 () Bool)

(assert (=> start!535678 (=> (not res!2162886) (not e!3169090))))

(assert (=> start!535678 (= res!2162886 (isBalanced!4444 xs!286))))

(assert (=> start!535678 e!3169090))

(declare-fun e!3169087 () Bool)

(declare-fun inv!77654 (Conc!15582) Bool)

(assert (=> start!535678 (and (inv!77654 xs!286) e!3169087)))

(declare-fun e!3169088 () Bool)

(assert (=> start!535678 (and (inv!77654 ys!41) e!3169088)))

(declare-fun tp!1417038 () Bool)

(declare-fun tp!1417041 () Bool)

(declare-fun b!5080327 () Bool)

(assert (=> b!5080327 (= e!3169087 (and (inv!77654 (left!42843 xs!286)) tp!1417038 (inv!77654 (right!43173 xs!286)) tp!1417041))))

(declare-fun b!5080328 () Bool)

(declare-fun e!3169084 () Bool)

(declare-fun e!3169085 () Bool)

(assert (=> b!5080328 (= e!3169084 e!3169085)))

(declare-fun res!2162887 () Bool)

(assert (=> b!5080328 (=> res!2162887 e!3169085)))

(declare-fun lt!2090877 () Int)

(declare-fun lt!2090881 () Int)

(assert (=> b!5080328 (= res!2162887 (or (> lt!2090877 (+ 1 lt!2090881)) (< lt!2090877 lt!2090881)))))

(declare-fun lt!2090875 () Conc!15582)

(assert (=> b!5080328 (= lt!2090877 (height!2159 lt!2090875))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5080328 (= lt!2090881 (max!0 lt!2090876 lt!2090878))))

(declare-fun b!5080329 () Bool)

(assert (=> b!5080329 (= e!3169089 e!3169084)))

(declare-fun res!2162891 () Bool)

(assert (=> b!5080329 (=> res!2162891 e!3169084)))

(declare-fun appendAssocInst!920 (Conc!15582 Conc!15582) Bool)

(assert (=> b!5080329 (= res!2162891 (not (appendAssocInst!920 xs!286 ys!41)))))

(declare-fun <>!402 (Conc!15582 Conc!15582) Conc!15582)

(assert (=> b!5080329 (= lt!2090875 (<>!402 lt!2090879 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))

(declare-fun tp!1417040 () Bool)

(declare-fun tp!1417043 () Bool)

(declare-fun b!5080330 () Bool)

(assert (=> b!5080330 (= e!3169088 (and (inv!77654 (left!42843 ys!41)) tp!1417040 (inv!77654 (right!43173 ys!41)) tp!1417043))))

(declare-fun b!5080331 () Bool)

(declare-fun res!2162889 () Bool)

(assert (=> b!5080331 (=> (not res!2162889) (not e!3169091))))

(assert (=> b!5080331 (= res!2162889 (< (height!2159 (right!43173 ys!41)) (height!2159 (left!42843 ys!41))))))

(declare-fun b!5080332 () Bool)

(declare-fun e!3169092 () Bool)

(declare-fun inv!77655 (IArray!31225) Bool)

(assert (=> b!5080332 (= e!3169088 (and (inv!77655 (xs!18954 ys!41)) e!3169092))))

(declare-fun b!5080333 () Bool)

(declare-fun res!2162890 () Bool)

(assert (=> b!5080333 (=> res!2162890 e!3169084)))

(assert (=> b!5080333 (= res!2162890 (not (isBalanced!4444 lt!2090875)))))

(declare-fun b!5080334 () Bool)

(assert (=> b!5080334 (= e!3169087 (and (inv!77655 (xs!18954 xs!286)) e!3169086))))

(declare-fun b!5080335 () Bool)

(declare-fun tp!1417039 () Bool)

(assert (=> b!5080335 (= e!3169092 tp!1417039)))

(declare-fun b!5080336 () Bool)

(declare-fun list!19025 (Conc!15582) List!58576)

(declare-fun ++!12811 (List!58576 List!58576) List!58576)

(assert (=> b!5080336 (= e!3169085 (not (= (list!19025 lt!2090875) (++!12811 (list!19025 xs!286) (list!19025 ys!41)))))))

(declare-fun b!5080337 () Bool)

(declare-fun res!2162888 () Bool)

(assert (=> b!5080337 (=> (not res!2162888) (not e!3169090))))

(assert (=> b!5080337 (= res!2162888 (and (not (= xs!286 Empty!15582)) (not (= ys!41 Empty!15582))))))

(assert (= (and start!535678 res!2162886) b!5080325))

(assert (= (and b!5080325 res!2162885) b!5080337))

(assert (= (and b!5080337 res!2162888) b!5080322))

(assert (= (and b!5080322 res!2162883) b!5080331))

(assert (= (and b!5080331 res!2162889) b!5080326))

(assert (= (and b!5080326 res!2162884) b!5080324))

(assert (= (and b!5080324 res!2162882) b!5080329))

(assert (= (and b!5080329 (not res!2162891)) b!5080333))

(assert (= (and b!5080333 (not res!2162890)) b!5080328))

(assert (= (and b!5080328 (not res!2162887)) b!5080336))

(assert (= (and start!535678 ((_ is Node!15582) xs!286)) b!5080327))

(assert (= b!5080334 b!5080323))

(assert (= (and start!535678 ((_ is Leaf!25878) xs!286)) b!5080334))

(assert (= (and start!535678 ((_ is Node!15582) ys!41)) b!5080330))

(assert (= b!5080332 b!5080335))

(assert (= (and start!535678 ((_ is Leaf!25878) ys!41)) b!5080332))

(declare-fun m!6132954 () Bool)

(assert (=> b!5080325 m!6132954))

(declare-fun m!6132956 () Bool)

(assert (=> b!5080331 m!6132956))

(declare-fun m!6132958 () Bool)

(assert (=> b!5080331 m!6132958))

(declare-fun m!6132960 () Bool)

(assert (=> b!5080336 m!6132960))

(declare-fun m!6132962 () Bool)

(assert (=> b!5080336 m!6132962))

(declare-fun m!6132964 () Bool)

(assert (=> b!5080336 m!6132964))

(assert (=> b!5080336 m!6132962))

(assert (=> b!5080336 m!6132964))

(declare-fun m!6132966 () Bool)

(assert (=> b!5080336 m!6132966))

(declare-fun m!6132968 () Bool)

(assert (=> b!5080324 m!6132968))

(declare-fun m!6132970 () Bool)

(assert (=> b!5080324 m!6132970))

(declare-fun m!6132972 () Bool)

(assert (=> b!5080332 m!6132972))

(declare-fun m!6132974 () Bool)

(assert (=> b!5080333 m!6132974))

(declare-fun m!6132976 () Bool)

(assert (=> b!5080330 m!6132976))

(declare-fun m!6132978 () Bool)

(assert (=> b!5080330 m!6132978))

(declare-fun m!6132980 () Bool)

(assert (=> b!5080322 m!6132980))

(declare-fun m!6132982 () Bool)

(assert (=> b!5080322 m!6132982))

(declare-fun m!6132984 () Bool)

(assert (=> start!535678 m!6132984))

(declare-fun m!6132986 () Bool)

(assert (=> start!535678 m!6132986))

(declare-fun m!6132988 () Bool)

(assert (=> start!535678 m!6132988))

(declare-fun m!6132990 () Bool)

(assert (=> b!5080327 m!6132990))

(declare-fun m!6132992 () Bool)

(assert (=> b!5080327 m!6132992))

(declare-fun m!6132994 () Bool)

(assert (=> b!5080334 m!6132994))

(declare-fun m!6132996 () Bool)

(assert (=> b!5080329 m!6132996))

(declare-fun m!6132998 () Bool)

(assert (=> b!5080329 m!6132998))

(assert (=> b!5080329 m!6132998))

(declare-fun m!6133000 () Bool)

(assert (=> b!5080329 m!6133000))

(declare-fun m!6133002 () Bool)

(assert (=> b!5080328 m!6133002))

(declare-fun m!6133004 () Bool)

(assert (=> b!5080328 m!6133004))

(check-sat (not b!5080324) (not b!5080335) (not b!5080333) (not b!5080325) (not start!535678) (not b!5080336) (not b!5080330) (not b!5080331) (not b!5080329) (not b!5080332) (not b!5080322) (not b!5080327) (not b!5080323) (not b!5080334) (not b!5080328))
(check-sat)
(get-model)

(declare-fun d!1642364 () Bool)

(declare-fun c!872642 () Bool)

(assert (=> d!1642364 (= c!872642 ((_ is Node!15582) (left!42843 ys!41)))))

(declare-fun e!3169097 () Bool)

(assert (=> d!1642364 (= (inv!77654 (left!42843 ys!41)) e!3169097)))

(declare-fun b!5080344 () Bool)

(declare-fun inv!77656 (Conc!15582) Bool)

(assert (=> b!5080344 (= e!3169097 (inv!77656 (left!42843 ys!41)))))

(declare-fun b!5080345 () Bool)

(declare-fun e!3169098 () Bool)

(assert (=> b!5080345 (= e!3169097 e!3169098)))

(declare-fun res!2162894 () Bool)

(assert (=> b!5080345 (= res!2162894 (not ((_ is Leaf!25878) (left!42843 ys!41))))))

(assert (=> b!5080345 (=> res!2162894 e!3169098)))

(declare-fun b!5080346 () Bool)

(declare-fun inv!77657 (Conc!15582) Bool)

(assert (=> b!5080346 (= e!3169098 (inv!77657 (left!42843 ys!41)))))

(assert (= (and d!1642364 c!872642) b!5080344))

(assert (= (and d!1642364 (not c!872642)) b!5080345))

(assert (= (and b!5080345 (not res!2162894)) b!5080346))

(declare-fun m!6133006 () Bool)

(assert (=> b!5080344 m!6133006))

(declare-fun m!6133008 () Bool)

(assert (=> b!5080346 m!6133008))

(assert (=> b!5080330 d!1642364))

(declare-fun d!1642366 () Bool)

(declare-fun c!872643 () Bool)

(assert (=> d!1642366 (= c!872643 ((_ is Node!15582) (right!43173 ys!41)))))

(declare-fun e!3169099 () Bool)

(assert (=> d!1642366 (= (inv!77654 (right!43173 ys!41)) e!3169099)))

(declare-fun b!5080347 () Bool)

(assert (=> b!5080347 (= e!3169099 (inv!77656 (right!43173 ys!41)))))

(declare-fun b!5080348 () Bool)

(declare-fun e!3169100 () Bool)

(assert (=> b!5080348 (= e!3169099 e!3169100)))

(declare-fun res!2162895 () Bool)

(assert (=> b!5080348 (= res!2162895 (not ((_ is Leaf!25878) (right!43173 ys!41))))))

(assert (=> b!5080348 (=> res!2162895 e!3169100)))

(declare-fun b!5080349 () Bool)

(assert (=> b!5080349 (= e!3169100 (inv!77657 (right!43173 ys!41)))))

(assert (= (and d!1642366 c!872643) b!5080347))

(assert (= (and d!1642366 (not c!872643)) b!5080348))

(assert (= (and b!5080348 (not res!2162895)) b!5080349))

(declare-fun m!6133010 () Bool)

(assert (=> b!5080347 m!6133010))

(declare-fun m!6133012 () Bool)

(assert (=> b!5080349 m!6133012))

(assert (=> b!5080330 d!1642366))

(declare-fun b!5080380 () Bool)

(declare-fun e!3169125 () Bool)

(declare-fun e!3169130 () Bool)

(assert (=> b!5080380 (= e!3169125 e!3169130)))

(declare-fun res!2162928 () Bool)

(assert (=> b!5080380 (=> res!2162928 e!3169130)))

(assert (=> b!5080380 (= res!2162928 (not ((_ is Node!15582) ys!41)))))

(declare-fun b!5080381 () Bool)

(declare-fun e!3169126 () Bool)

(declare-fun e!3169124 () Bool)

(assert (=> b!5080381 (= e!3169126 e!3169124)))

(declare-fun res!2162933 () Bool)

(assert (=> b!5080381 (=> (not res!2162933) (not e!3169124))))

(declare-fun appendAssoc!312 (List!58576 List!58576 List!58576) Bool)

(assert (=> b!5080381 (= res!2162933 (appendAssoc!312 (list!19025 (left!42843 (right!43173 xs!286))) (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)))))

(declare-fun b!5080382 () Bool)

(declare-fun e!3169123 () Bool)

(assert (=> b!5080382 (= e!3169123 e!3169126)))

(declare-fun res!2162932 () Bool)

(assert (=> b!5080382 (=> res!2162932 e!3169126)))

(assert (=> b!5080382 (= res!2162932 (not ((_ is Node!15582) (right!43173 xs!286))))))

(declare-fun b!5080383 () Bool)

(declare-fun e!3169131 () Bool)

(assert (=> b!5080383 (= e!3169131 e!3169123)))

(declare-fun res!2162934 () Bool)

(assert (=> b!5080383 (=> (not res!2162934) (not e!3169123))))

(assert (=> b!5080383 (= res!2162934 (appendAssoc!312 (list!19025 (left!42843 xs!286)) (list!19025 (right!43173 xs!286)) (list!19025 ys!41)))))

(declare-fun b!5080384 () Bool)

(declare-fun e!3169127 () Bool)

(declare-fun e!3169129 () Bool)

(assert (=> b!5080384 (= e!3169127 e!3169129)))

(declare-fun res!2162930 () Bool)

(assert (=> b!5080384 (=> res!2162930 e!3169129)))

(assert (=> b!5080384 (= res!2162930 (not ((_ is Node!15582) (left!42843 ys!41))))))

(declare-fun b!5080385 () Bool)

(assert (=> b!5080385 (= e!3169124 (appendAssoc!312 (list!19025 (left!42843 xs!286)) (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))

(declare-fun b!5080386 () Bool)

(declare-fun e!3169128 () Bool)

(assert (=> b!5080386 (= e!3169129 e!3169128)))

(declare-fun res!2162929 () Bool)

(assert (=> b!5080386 (=> (not res!2162929) (not e!3169128))))

(assert (=> b!5080386 (= res!2162929 (appendAssoc!312 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))) (list!19025 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5080387 () Bool)

(assert (=> b!5080387 (= e!3169130 e!3169127)))

(declare-fun res!2162926 () Bool)

(assert (=> b!5080387 (=> (not res!2162926) (not e!3169127))))

(assert (=> b!5080387 (= res!2162926 (appendAssoc!312 (list!19025 xs!286) (list!19025 (left!42843 ys!41)) (list!19025 (right!43173 ys!41))))))

(declare-fun d!1642368 () Bool)

(assert (=> d!1642368 e!3169125))

(declare-fun res!2162927 () Bool)

(assert (=> d!1642368 (=> (not res!2162927) (not e!3169125))))

(assert (=> d!1642368 (= res!2162927 e!3169131)))

(declare-fun res!2162931 () Bool)

(assert (=> d!1642368 (=> res!2162931 e!3169131)))

(assert (=> d!1642368 (= res!2162931 (not ((_ is Node!15582) xs!286)))))

(assert (=> d!1642368 (= (appendAssocInst!920 xs!286 ys!41) true)))

(declare-fun b!5080388 () Bool)

(assert (=> b!5080388 (= e!3169128 (appendAssoc!312 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 ys!41))) (list!19025 (right!43173 ys!41))))))

(assert (= (and d!1642368 (not res!2162931)) b!5080383))

(assert (= (and b!5080383 res!2162934) b!5080382))

(assert (= (and b!5080382 (not res!2162932)) b!5080381))

(assert (= (and b!5080381 res!2162933) b!5080385))

(assert (= (and d!1642368 res!2162927) b!5080380))

(assert (= (and b!5080380 (not res!2162928)) b!5080387))

(assert (= (and b!5080387 res!2162926) b!5080384))

(assert (= (and b!5080384 (not res!2162930)) b!5080386))

(assert (= (and b!5080386 res!2162929) b!5080388))

(declare-fun m!6133016 () Bool)

(assert (=> b!5080388 m!6133016))

(declare-fun m!6133018 () Bool)

(assert (=> b!5080388 m!6133018))

(declare-fun m!6133020 () Bool)

(assert (=> b!5080388 m!6133020))

(assert (=> b!5080388 m!6133018))

(assert (=> b!5080388 m!6133016))

(declare-fun m!6133022 () Bool)

(assert (=> b!5080388 m!6133022))

(assert (=> b!5080388 m!6132962))

(declare-fun m!6133024 () Bool)

(assert (=> b!5080388 m!6133024))

(assert (=> b!5080388 m!6132962))

(assert (=> b!5080388 m!6133024))

(assert (=> b!5080388 m!6133020))

(assert (=> b!5080387 m!6132962))

(declare-fun m!6133026 () Bool)

(assert (=> b!5080387 m!6133026))

(assert (=> b!5080387 m!6133016))

(assert (=> b!5080387 m!6132962))

(assert (=> b!5080387 m!6133026))

(assert (=> b!5080387 m!6133016))

(declare-fun m!6133028 () Bool)

(assert (=> b!5080387 m!6133028))

(declare-fun m!6133030 () Bool)

(assert (=> b!5080383 m!6133030))

(declare-fun m!6133032 () Bool)

(assert (=> b!5080383 m!6133032))

(assert (=> b!5080383 m!6132964))

(assert (=> b!5080383 m!6133030))

(assert (=> b!5080383 m!6133032))

(assert (=> b!5080383 m!6132964))

(declare-fun m!6133034 () Bool)

(assert (=> b!5080383 m!6133034))

(assert (=> b!5080385 m!6133030))

(declare-fun m!6133036 () Bool)

(assert (=> b!5080385 m!6133036))

(declare-fun m!6133038 () Bool)

(assert (=> b!5080385 m!6133038))

(declare-fun m!6133040 () Bool)

(assert (=> b!5080385 m!6133040))

(declare-fun m!6133042 () Bool)

(assert (=> b!5080385 m!6133042))

(assert (=> b!5080385 m!6132964))

(assert (=> b!5080385 m!6133030))

(assert (=> b!5080385 m!6133036))

(assert (=> b!5080385 m!6133042))

(assert (=> b!5080385 m!6132964))

(assert (=> b!5080385 m!6133038))

(assert (=> b!5080381 m!6133036))

(assert (=> b!5080381 m!6133042))

(assert (=> b!5080381 m!6132964))

(assert (=> b!5080381 m!6133036))

(assert (=> b!5080381 m!6133042))

(assert (=> b!5080381 m!6132964))

(declare-fun m!6133044 () Bool)

(assert (=> b!5080381 m!6133044))

(assert (=> b!5080386 m!6132962))

(assert (=> b!5080386 m!6133024))

(assert (=> b!5080386 m!6133018))

(assert (=> b!5080386 m!6132962))

(assert (=> b!5080386 m!6133024))

(assert (=> b!5080386 m!6133018))

(declare-fun m!6133046 () Bool)

(assert (=> b!5080386 m!6133046))

(assert (=> b!5080329 d!1642368))

(declare-fun b!5080403 () Bool)

(declare-fun e!3169138 () Conc!15582)

(assert (=> b!5080403 (= e!3169138 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))

(declare-fun d!1642374 () Bool)

(declare-fun lt!2090884 () Conc!15582)

(assert (=> d!1642374 (= (list!19025 lt!2090884) (++!12811 (list!19025 lt!2090879) (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(assert (=> d!1642374 (= lt!2090884 e!3169138)))

(declare-fun c!872648 () Bool)

(assert (=> d!1642374 (= c!872648 (= lt!2090879 Empty!15582))))

(assert (=> d!1642374 (= (<>!402 lt!2090879 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) lt!2090884)))

(declare-fun b!5080404 () Bool)

(declare-fun e!3169139 () Conc!15582)

(assert (=> b!5080404 (= e!3169138 e!3169139)))

(declare-fun c!872649 () Bool)

(assert (=> b!5080404 (= c!872649 (= (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)) Empty!15582))))

(declare-fun b!5080406 () Bool)

(declare-fun size!39112 (Conc!15582) Int)

(assert (=> b!5080406 (= e!3169139 (Node!15582 lt!2090879 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)) (+ (size!39112 lt!2090879) (size!39112 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) (+ (max!0 (height!2159 lt!2090879) (height!2159 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) 1)))))

(declare-fun b!5080405 () Bool)

(assert (=> b!5080405 (= e!3169139 lt!2090879)))

(assert (= (and d!1642374 c!872648) b!5080403))

(assert (= (and d!1642374 (not c!872648)) b!5080404))

(assert (= (and b!5080404 c!872649) b!5080405))

(assert (= (and b!5080404 (not c!872649)) b!5080406))

(declare-fun m!6133056 () Bool)

(assert (=> d!1642374 m!6133056))

(declare-fun m!6133058 () Bool)

(assert (=> d!1642374 m!6133058))

(assert (=> d!1642374 m!6132998))

(declare-fun m!6133060 () Bool)

(assert (=> d!1642374 m!6133060))

(assert (=> d!1642374 m!6133058))

(assert (=> d!1642374 m!6133060))

(declare-fun m!6133062 () Bool)

(assert (=> d!1642374 m!6133062))

(declare-fun m!6133064 () Bool)

(assert (=> b!5080406 m!6133064))

(assert (=> b!5080406 m!6132968))

(assert (=> b!5080406 m!6132968))

(declare-fun m!6133066 () Bool)

(assert (=> b!5080406 m!6133066))

(declare-fun m!6133068 () Bool)

(assert (=> b!5080406 m!6133068))

(assert (=> b!5080406 m!6132998))

(assert (=> b!5080406 m!6133066))

(assert (=> b!5080406 m!6132998))

(declare-fun m!6133070 () Bool)

(assert (=> b!5080406 m!6133070))

(assert (=> b!5080329 d!1642374))

(declare-fun b!5080407 () Bool)

(declare-fun e!3169140 () Conc!15582)

(assert (=> b!5080407 (= e!3169140 (right!43173 ys!41))))

(declare-fun d!1642378 () Bool)

(declare-fun lt!2090885 () Conc!15582)

(assert (=> d!1642378 (= (list!19025 lt!2090885) (++!12811 (list!19025 (right!43173 (left!42843 ys!41))) (list!19025 (right!43173 ys!41))))))

(assert (=> d!1642378 (= lt!2090885 e!3169140)))

(declare-fun c!872650 () Bool)

(assert (=> d!1642378 (= c!872650 (= (right!43173 (left!42843 ys!41)) Empty!15582))))

(assert (=> d!1642378 (= (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)) lt!2090885)))

(declare-fun b!5080408 () Bool)

(declare-fun e!3169141 () Conc!15582)

(assert (=> b!5080408 (= e!3169140 e!3169141)))

(declare-fun c!872651 () Bool)

(assert (=> b!5080408 (= c!872651 (= (right!43173 ys!41) Empty!15582))))

(declare-fun b!5080410 () Bool)

(assert (=> b!5080410 (= e!3169141 (Node!15582 (right!43173 (left!42843 ys!41)) (right!43173 ys!41) (+ (size!39112 (right!43173 (left!42843 ys!41))) (size!39112 (right!43173 ys!41))) (+ (max!0 (height!2159 (right!43173 (left!42843 ys!41))) (height!2159 (right!43173 ys!41))) 1)))))

(declare-fun b!5080409 () Bool)

(assert (=> b!5080409 (= e!3169141 (right!43173 (left!42843 ys!41)))))

(assert (= (and d!1642378 c!872650) b!5080407))

(assert (= (and d!1642378 (not c!872650)) b!5080408))

(assert (= (and b!5080408 c!872651) b!5080409))

(assert (= (and b!5080408 (not c!872651)) b!5080410))

(declare-fun m!6133072 () Bool)

(assert (=> d!1642378 m!6133072))

(assert (=> d!1642378 m!6133018))

(assert (=> d!1642378 m!6133016))

(assert (=> d!1642378 m!6133018))

(assert (=> d!1642378 m!6133016))

(declare-fun m!6133074 () Bool)

(assert (=> d!1642378 m!6133074))

(declare-fun m!6133076 () Bool)

(assert (=> b!5080410 m!6133076))

(declare-fun m!6133078 () Bool)

(assert (=> b!5080410 m!6133078))

(assert (=> b!5080410 m!6133078))

(assert (=> b!5080410 m!6132956))

(declare-fun m!6133080 () Bool)

(assert (=> b!5080410 m!6133080))

(assert (=> b!5080410 m!6132956))

(declare-fun m!6133082 () Bool)

(assert (=> b!5080410 m!6133082))

(assert (=> b!5080329 d!1642378))

(declare-fun d!1642380 () Bool)

(assert (=> d!1642380 (= (height!2159 (right!43173 ys!41)) (ite ((_ is Empty!15582) (right!43173 ys!41)) 0 (ite ((_ is Leaf!25878) (right!43173 ys!41)) 1 (cheight!15793 (right!43173 ys!41)))))))

(assert (=> b!5080331 d!1642380))

(declare-fun d!1642382 () Bool)

(assert (=> d!1642382 (= (height!2159 (left!42843 ys!41)) (ite ((_ is Empty!15582) (left!42843 ys!41)) 0 (ite ((_ is Leaf!25878) (left!42843 ys!41)) 1 (cheight!15793 (left!42843 ys!41)))))))

(assert (=> b!5080331 d!1642382))

(declare-fun d!1642384 () Bool)

(declare-fun c!872652 () Bool)

(assert (=> d!1642384 (= c!872652 ((_ is Node!15582) (left!42843 xs!286)))))

(declare-fun e!3169154 () Bool)

(assert (=> d!1642384 (= (inv!77654 (left!42843 xs!286)) e!3169154)))

(declare-fun b!5080423 () Bool)

(assert (=> b!5080423 (= e!3169154 (inv!77656 (left!42843 xs!286)))))

(declare-fun b!5080424 () Bool)

(declare-fun e!3169157 () Bool)

(assert (=> b!5080424 (= e!3169154 e!3169157)))

(declare-fun res!2162954 () Bool)

(assert (=> b!5080424 (= res!2162954 (not ((_ is Leaf!25878) (left!42843 xs!286))))))

(assert (=> b!5080424 (=> res!2162954 e!3169157)))

(declare-fun b!5080425 () Bool)

(assert (=> b!5080425 (= e!3169157 (inv!77657 (left!42843 xs!286)))))

(assert (= (and d!1642384 c!872652) b!5080423))

(assert (= (and d!1642384 (not c!872652)) b!5080424))

(assert (= (and b!5080424 (not res!2162954)) b!5080425))

(declare-fun m!6133084 () Bool)

(assert (=> b!5080423 m!6133084))

(declare-fun m!6133086 () Bool)

(assert (=> b!5080425 m!6133086))

(assert (=> b!5080327 d!1642384))

(declare-fun d!1642386 () Bool)

(declare-fun c!872653 () Bool)

(assert (=> d!1642386 (= c!872653 ((_ is Node!15582) (right!43173 xs!286)))))

(declare-fun e!3169162 () Bool)

(assert (=> d!1642386 (= (inv!77654 (right!43173 xs!286)) e!3169162)))

(declare-fun b!5080432 () Bool)

(assert (=> b!5080432 (= e!3169162 (inv!77656 (right!43173 xs!286)))))

(declare-fun b!5080433 () Bool)

(declare-fun e!3169163 () Bool)

(assert (=> b!5080433 (= e!3169162 e!3169163)))

(declare-fun res!2162960 () Bool)

(assert (=> b!5080433 (= res!2162960 (not ((_ is Leaf!25878) (right!43173 xs!286))))))

(assert (=> b!5080433 (=> res!2162960 e!3169163)))

(declare-fun b!5080434 () Bool)

(assert (=> b!5080434 (= e!3169163 (inv!77657 (right!43173 xs!286)))))

(assert (= (and d!1642386 c!872653) b!5080432))

(assert (= (and d!1642386 (not c!872653)) b!5080433))

(assert (= (and b!5080433 (not res!2162960)) b!5080434))

(declare-fun m!6133088 () Bool)

(assert (=> b!5080432 m!6133088))

(declare-fun m!6133090 () Bool)

(assert (=> b!5080434 m!6133090))

(assert (=> b!5080327 d!1642386))

(declare-fun d!1642388 () Bool)

(assert (=> d!1642388 (= (height!2159 lt!2090875) (ite ((_ is Empty!15582) lt!2090875) 0 (ite ((_ is Leaf!25878) lt!2090875) 1 (cheight!15793 lt!2090875))))))

(assert (=> b!5080328 d!1642388))

(declare-fun d!1642390 () Bool)

(assert (=> d!1642390 (= (max!0 lt!2090876 lt!2090878) (ite (< lt!2090876 lt!2090878) lt!2090878 lt!2090876))))

(assert (=> b!5080328 d!1642390))

(declare-fun d!1642392 () Bool)

(assert (=> d!1642392 (= (height!2159 lt!2090879) (ite ((_ is Empty!15582) lt!2090879) 0 (ite ((_ is Leaf!25878) lt!2090879) 1 (cheight!15793 lt!2090879))))))

(assert (=> b!5080324 d!1642392))

(declare-fun c!872706 () Bool)

(declare-fun c!872700 () Bool)

(declare-fun bm!354097 () Bool)

(declare-fun lt!2090908 () Conc!15582)

(declare-fun c!872705 () Bool)

(declare-fun c!872707 () Bool)

(declare-fun call!354109 () Conc!15582)

(declare-fun lt!2090906 () Conc!15582)

(declare-fun call!354117 () Conc!15582)

(declare-fun c!872702 () Bool)

(assert (=> bm!354097 (= call!354109 (<>!402 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))) (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))))))

(declare-fun bm!354098 () Bool)

(declare-fun call!354104 () Conc!15582)

(assert (=> bm!354098 (= call!354104 call!354109)))

(declare-fun bm!354099 () Bool)

(declare-fun call!354110 () Conc!15582)

(declare-fun call!354111 () Conc!15582)

(assert (=> bm!354099 (= call!354110 call!354111)))

(declare-fun bm!354100 () Bool)

(declare-fun call!354107 () Conc!15582)

(declare-fun call!354115 () Conc!15582)

(assert (=> bm!354100 (= call!354107 call!354115)))

(declare-fun e!3169239 () Bool)

(declare-fun lt!2090909 () Conc!15582)

(declare-fun b!5080574 () Bool)

(assert (=> b!5080574 (= e!3169239 (= (list!19025 lt!2090909) (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))))))

(declare-fun bm!354101 () Bool)

(declare-fun call!354112 () Int)

(assert (=> bm!354101 (= call!354112 (height!2159 (ite c!872702 (left!42843 xs!286) lt!2090906)))))

(declare-fun bm!354102 () Bool)

(declare-fun call!354105 () Int)

(assert (=> bm!354102 (= call!354105 (height!2159 (ite c!872702 (right!43173 xs!286) (left!42843 (left!42843 (left!42843 ys!41))))))))

(declare-fun bm!354103 () Bool)

(declare-fun call!354113 () Conc!15582)

(assert (=> bm!354103 (= call!354113 call!354104)))

(declare-fun b!5080576 () Bool)

(declare-fun e!3169245 () Conc!15582)

(assert (=> b!5080576 (= e!3169245 call!354110)))

(declare-fun b!5080577 () Bool)

(declare-fun res!2163008 () Bool)

(assert (=> b!5080577 (=> (not res!2163008) (not e!3169239))))

(assert (=> b!5080577 (= res!2163008 (>= (height!2159 lt!2090909) (max!0 (height!2159 xs!286) (height!2159 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5080578 () Bool)

(declare-fun e!3169237 () Conc!15582)

(assert (=> b!5080578 (= e!3169237 call!354107)))

(declare-fun call!354103 () Int)

(declare-fun bm!354104 () Bool)

(assert (=> bm!354104 (= call!354103 (height!2159 (ite c!872702 lt!2090908 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5080579 () Bool)

(declare-fun e!3169240 () Conc!15582)

(declare-fun e!3169238 () Conc!15582)

(assert (=> b!5080579 (= e!3169240 e!3169238)))

(declare-fun lt!2090907 () Int)

(assert (=> b!5080579 (= c!872702 (< lt!2090907 (- 1)))))

(declare-fun b!5080580 () Bool)

(declare-fun e!3169244 () Conc!15582)

(assert (=> b!5080580 (= e!3169244 e!3169237)))

(declare-fun call!354116 () Conc!15582)

(assert (=> b!5080580 (= lt!2090908 call!354116)))

(declare-fun call!354102 () Int)

(assert (=> b!5080580 (= c!872707 (= call!354103 (- call!354102 3)))))

(declare-fun b!5080581 () Bool)

(assert (=> b!5080581 (= c!872700 (and (<= (- 1) lt!2090907) (<= lt!2090907 1)))))

(assert (=> b!5080581 (= lt!2090907 (- (height!2159 (left!42843 (left!42843 ys!41))) (height!2159 xs!286)))))

(declare-fun e!3169242 () Conc!15582)

(assert (=> b!5080581 (= e!3169242 e!3169240)))

(declare-fun bm!354105 () Bool)

(assert (=> bm!354105 (= call!354102 (height!2159 (ite c!872702 xs!286 (right!43173 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5080582 () Bool)

(declare-fun res!2163009 () Bool)

(assert (=> b!5080582 (=> (not res!2163009) (not e!3169239))))

(assert (=> b!5080582 (= res!2163009 (<= (height!2159 lt!2090909) (+ (max!0 (height!2159 xs!286) (height!2159 (left!42843 (left!42843 ys!41)))) 1)))))

(declare-fun b!5080583 () Bool)

(assert (=> b!5080583 (= e!3169240 call!354109)))

(declare-fun b!5080584 () Bool)

(declare-fun e!3169246 () Conc!15582)

(assert (=> b!5080584 (= e!3169246 e!3169245)))

(assert (=> b!5080584 (= lt!2090906 call!354117)))

(assert (=> b!5080584 (= c!872706 (= call!354112 (- call!354103 3)))))

(declare-fun b!5080585 () Bool)

(declare-fun e!3169243 () Bool)

(assert (=> b!5080585 (= e!3169243 (isBalanced!4444 (left!42843 (left!42843 ys!41))))))

(declare-fun b!5080586 () Bool)

(declare-fun c!872704 () Bool)

(assert (=> b!5080586 (= c!872704 (>= call!354112 call!354105))))

(assert (=> b!5080586 (= e!3169238 e!3169244)))

(declare-fun b!5080587 () Bool)

(declare-fun e!3169241 () Conc!15582)

(assert (=> b!5080587 (= e!3169241 e!3169242)))

(declare-fun c!872703 () Bool)

(assert (=> b!5080587 (= c!872703 (= (left!42843 (left!42843 ys!41)) Empty!15582))))

(declare-fun b!5080588 () Bool)

(assert (=> b!5080588 (= e!3169241 (left!42843 (left!42843 ys!41)))))

(declare-fun b!5080589 () Bool)

(assert (=> b!5080589 (= e!3169244 call!354115)))

(declare-fun bm!354106 () Bool)

(declare-fun call!354108 () Conc!15582)

(assert (=> bm!354106 (= call!354116 call!354108)))

(declare-fun bm!354107 () Bool)

(declare-fun call!354114 () Conc!15582)

(assert (=> bm!354107 (= call!354114 call!354104)))

(declare-fun bm!354108 () Bool)

(assert (=> bm!354108 (= call!354108 (++!12810 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(declare-fun bm!354109 () Bool)

(declare-fun call!354106 () Conc!15582)

(assert (=> bm!354109 (= call!354106 call!354114)))

(declare-fun b!5080590 () Bool)

(assert (=> b!5080590 (= e!3169246 call!354114)))

(declare-fun b!5080591 () Bool)

(declare-fun res!2163012 () Bool)

(assert (=> b!5080591 (=> (not res!2163012) (not e!3169239))))

(assert (=> b!5080591 (= res!2163012 (isBalanced!4444 lt!2090909))))

(declare-fun b!5080592 () Bool)

(assert (=> b!5080592 (= c!872705 (>= call!354102 call!354105))))

(assert (=> b!5080592 (= e!3169238 e!3169246)))

(declare-fun b!5080593 () Bool)

(assert (=> b!5080593 (= e!3169237 call!354107)))

(declare-fun bm!354110 () Bool)

(assert (=> bm!354110 (= call!354117 call!354108)))

(declare-fun bm!354111 () Bool)

(assert (=> bm!354111 (= call!354115 call!354111)))

(declare-fun bm!354112 () Bool)

(assert (=> bm!354112 (= call!354111 (<>!402 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)) (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))))))

(declare-fun b!5080594 () Bool)

(assert (=> b!5080594 (= e!3169242 xs!286)))

(declare-fun b!5080575 () Bool)

(assert (=> b!5080575 (= e!3169245 call!354110)))

(declare-fun d!1642394 () Bool)

(assert (=> d!1642394 e!3169239))

(declare-fun res!2163011 () Bool)

(assert (=> d!1642394 (=> (not res!2163011) (not e!3169239))))

(assert (=> d!1642394 (= res!2163011 (appendAssocInst!920 xs!286 (left!42843 (left!42843 ys!41))))))

(assert (=> d!1642394 (= lt!2090909 e!3169241)))

(declare-fun c!872701 () Bool)

(assert (=> d!1642394 (= c!872701 (= xs!286 Empty!15582))))

(assert (=> d!1642394 e!3169243))

(declare-fun res!2163010 () Bool)

(assert (=> d!1642394 (=> (not res!2163010) (not e!3169243))))

(assert (=> d!1642394 (= res!2163010 (isBalanced!4444 xs!286))))

(assert (=> d!1642394 (= (++!12810 xs!286 (left!42843 (left!42843 ys!41))) lt!2090909)))

(assert (= (and d!1642394 res!2163010) b!5080585))

(assert (= (and d!1642394 c!872701) b!5080588))

(assert (= (and d!1642394 (not c!872701)) b!5080587))

(assert (= (and b!5080587 c!872703) b!5080594))

(assert (= (and b!5080587 (not c!872703)) b!5080581))

(assert (= (and b!5080581 c!872700) b!5080583))

(assert (= (and b!5080581 (not c!872700)) b!5080579))

(assert (= (and b!5080579 c!872702) b!5080586))

(assert (= (and b!5080579 (not c!872702)) b!5080592))

(assert (= (and b!5080586 c!872704) b!5080589))

(assert (= (and b!5080586 (not c!872704)) b!5080580))

(assert (= (and b!5080580 c!872707) b!5080593))

(assert (= (and b!5080580 (not c!872707)) b!5080578))

(assert (= (or b!5080593 b!5080578) bm!354103))

(assert (= (or b!5080593 b!5080578) bm!354100))

(assert (= (or b!5080589 b!5080580) bm!354106))

(assert (= (or b!5080589 bm!354100) bm!354111))

(assert (= (and b!5080592 c!872705) b!5080590))

(assert (= (and b!5080592 (not c!872705)) b!5080584))

(assert (= (and b!5080584 c!872706) b!5080575))

(assert (= (and b!5080584 (not c!872706)) b!5080576))

(assert (= (or b!5080575 b!5080576) bm!354109))

(assert (= (or b!5080575 b!5080576) bm!354099))

(assert (= (or b!5080590 b!5080584) bm!354110))

(assert (= (or b!5080590 bm!354109) bm!354107))

(assert (= (or bm!354111 bm!354099) bm!354112))

(assert (= (or b!5080586 b!5080584) bm!354101))

(assert (= (or b!5080586 b!5080592) bm!354102))

(assert (= (or bm!354106 bm!354110) bm!354108))

(assert (= (or b!5080580 b!5080584) bm!354104))

(assert (= (or b!5080580 b!5080592) bm!354105))

(assert (= (or bm!354103 bm!354107) bm!354098))

(assert (= (or b!5080583 bm!354098) bm!354097))

(assert (= (and d!1642394 res!2163011) b!5080591))

(assert (= (and b!5080591 res!2163012) b!5080582))

(assert (= (and b!5080582 res!2163009) b!5080577))

(assert (= (and b!5080577 res!2163008) b!5080574))

(declare-fun m!6133192 () Bool)

(assert (=> bm!354105 m!6133192))

(declare-fun m!6133194 () Bool)

(assert (=> b!5080582 m!6133194))

(assert (=> b!5080582 m!6132980))

(declare-fun m!6133196 () Bool)

(assert (=> b!5080582 m!6133196))

(assert (=> b!5080582 m!6132980))

(assert (=> b!5080582 m!6133196))

(declare-fun m!6133198 () Bool)

(assert (=> b!5080582 m!6133198))

(declare-fun m!6133200 () Bool)

(assert (=> b!5080585 m!6133200))

(declare-fun m!6133202 () Bool)

(assert (=> d!1642394 m!6133202))

(assert (=> d!1642394 m!6132984))

(assert (=> b!5080581 m!6133196))

(assert (=> b!5080581 m!6132980))

(declare-fun m!6133204 () Bool)

(assert (=> bm!354104 m!6133204))

(declare-fun m!6133206 () Bool)

(assert (=> bm!354102 m!6133206))

(assert (=> b!5080577 m!6133194))

(assert (=> b!5080577 m!6132980))

(assert (=> b!5080577 m!6133196))

(assert (=> b!5080577 m!6132980))

(assert (=> b!5080577 m!6133196))

(assert (=> b!5080577 m!6133198))

(declare-fun m!6133208 () Bool)

(assert (=> bm!354097 m!6133208))

(declare-fun m!6133210 () Bool)

(assert (=> bm!354108 m!6133210))

(declare-fun m!6133212 () Bool)

(assert (=> b!5080574 m!6133212))

(assert (=> b!5080574 m!6132962))

(assert (=> b!5080574 m!6133024))

(assert (=> b!5080574 m!6132962))

(assert (=> b!5080574 m!6133024))

(assert (=> b!5080574 m!6133020))

(declare-fun m!6133214 () Bool)

(assert (=> bm!354112 m!6133214))

(declare-fun m!6133216 () Bool)

(assert (=> b!5080591 m!6133216))

(declare-fun m!6133218 () Bool)

(assert (=> bm!354101 m!6133218))

(assert (=> b!5080324 d!1642394))

(declare-fun b!5080636 () Bool)

(declare-fun e!3169267 () List!58576)

(assert (=> b!5080636 (= e!3169267 Nil!58452)))

(declare-fun b!5080639 () Bool)

(declare-fun e!3169268 () List!58576)

(assert (=> b!5080639 (= e!3169268 (++!12811 (list!19025 (left!42843 lt!2090875)) (list!19025 (right!43173 lt!2090875))))))

(declare-fun d!1642416 () Bool)

(declare-fun c!872726 () Bool)

(assert (=> d!1642416 (= c!872726 ((_ is Empty!15582) lt!2090875))))

(assert (=> d!1642416 (= (list!19025 lt!2090875) e!3169267)))

(declare-fun b!5080637 () Bool)

(assert (=> b!5080637 (= e!3169267 e!3169268)))

(declare-fun c!872727 () Bool)

(assert (=> b!5080637 (= c!872727 ((_ is Leaf!25878) lt!2090875))))

(declare-fun b!5080638 () Bool)

(declare-fun list!19027 (IArray!31225) List!58576)

(assert (=> b!5080638 (= e!3169268 (list!19027 (xs!18954 lt!2090875)))))

(assert (= (and d!1642416 c!872726) b!5080636))

(assert (= (and d!1642416 (not c!872726)) b!5080637))

(assert (= (and b!5080637 c!872727) b!5080638))

(assert (= (and b!5080637 (not c!872727)) b!5080639))

(declare-fun m!6133256 () Bool)

(assert (=> b!5080639 m!6133256))

(declare-fun m!6133258 () Bool)

(assert (=> b!5080639 m!6133258))

(assert (=> b!5080639 m!6133256))

(assert (=> b!5080639 m!6133258))

(declare-fun m!6133260 () Bool)

(assert (=> b!5080639 m!6133260))

(declare-fun m!6133262 () Bool)

(assert (=> b!5080638 m!6133262))

(assert (=> b!5080336 d!1642416))

(declare-fun b!5080692 () Bool)

(declare-fun e!3169297 () List!58576)

(assert (=> b!5080692 (= e!3169297 (Cons!58452 (h!64900 (list!19025 xs!286)) (++!12811 (t!371393 (list!19025 xs!286)) (list!19025 ys!41))))))

(declare-fun d!1642422 () Bool)

(declare-fun e!3169298 () Bool)

(assert (=> d!1642422 e!3169298))

(declare-fun res!2163031 () Bool)

(assert (=> d!1642422 (=> (not res!2163031) (not e!3169298))))

(declare-fun lt!2090919 () List!58576)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10428 (List!58576) (InoxSet T!105244))

(assert (=> d!1642422 (= res!2163031 (= (content!10428 lt!2090919) ((_ map or) (content!10428 (list!19025 xs!286)) (content!10428 (list!19025 ys!41)))))))

(assert (=> d!1642422 (= lt!2090919 e!3169297)))

(declare-fun c!872739 () Bool)

(assert (=> d!1642422 (= c!872739 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1642422 (= (++!12811 (list!19025 xs!286) (list!19025 ys!41)) lt!2090919)))

(declare-fun b!5080691 () Bool)

(assert (=> b!5080691 (= e!3169297 (list!19025 ys!41))))

(declare-fun b!5080693 () Bool)

(declare-fun res!2163030 () Bool)

(assert (=> b!5080693 (=> (not res!2163030) (not e!3169298))))

(declare-fun size!39113 (List!58576) Int)

(assert (=> b!5080693 (= res!2163030 (= (size!39113 lt!2090919) (+ (size!39113 (list!19025 xs!286)) (size!39113 (list!19025 ys!41)))))))

(declare-fun b!5080694 () Bool)

(assert (=> b!5080694 (= e!3169298 (or (not (= (list!19025 ys!41) Nil!58452)) (= lt!2090919 (list!19025 xs!286))))))

(assert (= (and d!1642422 c!872739) b!5080691))

(assert (= (and d!1642422 (not c!872739)) b!5080692))

(assert (= (and d!1642422 res!2163031) b!5080693))

(assert (= (and b!5080693 res!2163030) b!5080694))

(assert (=> b!5080692 m!6132964))

(declare-fun m!6133314 () Bool)

(assert (=> b!5080692 m!6133314))

(declare-fun m!6133316 () Bool)

(assert (=> d!1642422 m!6133316))

(assert (=> d!1642422 m!6132962))

(declare-fun m!6133318 () Bool)

(assert (=> d!1642422 m!6133318))

(assert (=> d!1642422 m!6132964))

(declare-fun m!6133322 () Bool)

(assert (=> d!1642422 m!6133322))

(declare-fun m!6133326 () Bool)

(assert (=> b!5080693 m!6133326))

(assert (=> b!5080693 m!6132962))

(declare-fun m!6133330 () Bool)

(assert (=> b!5080693 m!6133330))

(assert (=> b!5080693 m!6132964))

(declare-fun m!6133332 () Bool)

(assert (=> b!5080693 m!6133332))

(assert (=> b!5080336 d!1642422))

(declare-fun b!5080702 () Bool)

(declare-fun e!3169303 () List!58576)

(assert (=> b!5080702 (= e!3169303 Nil!58452)))

(declare-fun b!5080705 () Bool)

(declare-fun e!3169304 () List!58576)

(assert (=> b!5080705 (= e!3169304 (++!12811 (list!19025 (left!42843 xs!286)) (list!19025 (right!43173 xs!286))))))

(declare-fun d!1642446 () Bool)

(declare-fun c!872740 () Bool)

(assert (=> d!1642446 (= c!872740 ((_ is Empty!15582) xs!286))))

(assert (=> d!1642446 (= (list!19025 xs!286) e!3169303)))

(declare-fun b!5080703 () Bool)

(assert (=> b!5080703 (= e!3169303 e!3169304)))

(declare-fun c!872741 () Bool)

(assert (=> b!5080703 (= c!872741 ((_ is Leaf!25878) xs!286))))

(declare-fun b!5080704 () Bool)

(assert (=> b!5080704 (= e!3169304 (list!19027 (xs!18954 xs!286)))))

(assert (= (and d!1642446 c!872740) b!5080702))

(assert (= (and d!1642446 (not c!872740)) b!5080703))

(assert (= (and b!5080703 c!872741) b!5080704))

(assert (= (and b!5080703 (not c!872741)) b!5080705))

(assert (=> b!5080705 m!6133030))

(assert (=> b!5080705 m!6133032))

(assert (=> b!5080705 m!6133030))

(assert (=> b!5080705 m!6133032))

(declare-fun m!6133334 () Bool)

(assert (=> b!5080705 m!6133334))

(declare-fun m!6133336 () Bool)

(assert (=> b!5080704 m!6133336))

(assert (=> b!5080336 d!1642446))

(declare-fun b!5080707 () Bool)

(declare-fun e!3169306 () List!58576)

(assert (=> b!5080707 (= e!3169306 Nil!58452)))

(declare-fun b!5080710 () Bool)

(declare-fun e!3169307 () List!58576)

(assert (=> b!5080710 (= e!3169307 (++!12811 (list!19025 (left!42843 ys!41)) (list!19025 (right!43173 ys!41))))))

(declare-fun d!1642448 () Bool)

(declare-fun c!872742 () Bool)

(assert (=> d!1642448 (= c!872742 ((_ is Empty!15582) ys!41))))

(assert (=> d!1642448 (= (list!19025 ys!41) e!3169306)))

(declare-fun b!5080708 () Bool)

(assert (=> b!5080708 (= e!3169306 e!3169307)))

(declare-fun c!872743 () Bool)

(assert (=> b!5080708 (= c!872743 ((_ is Leaf!25878) ys!41))))

(declare-fun b!5080709 () Bool)

(assert (=> b!5080709 (= e!3169307 (list!19027 (xs!18954 ys!41)))))

(assert (= (and d!1642448 c!872742) b!5080707))

(assert (= (and d!1642448 (not c!872742)) b!5080708))

(assert (= (and b!5080708 c!872743) b!5080709))

(assert (= (and b!5080708 (not c!872743)) b!5080710))

(assert (=> b!5080710 m!6133026))

(assert (=> b!5080710 m!6133016))

(assert (=> b!5080710 m!6133026))

(assert (=> b!5080710 m!6133016))

(declare-fun m!6133338 () Bool)

(assert (=> b!5080710 m!6133338))

(declare-fun m!6133340 () Bool)

(assert (=> b!5080709 m!6133340))

(assert (=> b!5080336 d!1642448))

(declare-fun d!1642450 () Bool)

(declare-fun res!2163048 () Bool)

(declare-fun e!3169313 () Bool)

(assert (=> d!1642450 (=> res!2163048 e!3169313)))

(assert (=> d!1642450 (= res!2163048 (not ((_ is Node!15582) ys!41)))))

(assert (=> d!1642450 (= (isBalanced!4444 ys!41) e!3169313)))

(declare-fun b!5080724 () Bool)

(declare-fun res!2163044 () Bool)

(declare-fun e!3169314 () Bool)

(assert (=> b!5080724 (=> (not res!2163044) (not e!3169314))))

(assert (=> b!5080724 (= res!2163044 (<= (- (height!2159 (left!42843 ys!41)) (height!2159 (right!43173 ys!41))) 1))))

(declare-fun b!5080725 () Bool)

(declare-fun res!2163045 () Bool)

(assert (=> b!5080725 (=> (not res!2163045) (not e!3169314))))

(assert (=> b!5080725 (= res!2163045 (isBalanced!4444 (right!43173 ys!41)))))

(declare-fun b!5080726 () Bool)

(declare-fun res!2163047 () Bool)

(assert (=> b!5080726 (=> (not res!2163047) (not e!3169314))))

(assert (=> b!5080726 (= res!2163047 (isBalanced!4444 (left!42843 ys!41)))))

(declare-fun b!5080727 () Bool)

(assert (=> b!5080727 (= e!3169313 e!3169314)))

(declare-fun res!2163046 () Bool)

(assert (=> b!5080727 (=> (not res!2163046) (not e!3169314))))

(assert (=> b!5080727 (= res!2163046 (<= (- 1) (- (height!2159 (left!42843 ys!41)) (height!2159 (right!43173 ys!41)))))))

(declare-fun b!5080728 () Bool)

(declare-fun res!2163049 () Bool)

(assert (=> b!5080728 (=> (not res!2163049) (not e!3169314))))

(declare-fun isEmpty!31667 (Conc!15582) Bool)

(assert (=> b!5080728 (= res!2163049 (not (isEmpty!31667 (left!42843 ys!41))))))

(declare-fun b!5080729 () Bool)

(assert (=> b!5080729 (= e!3169314 (not (isEmpty!31667 (right!43173 ys!41))))))

(assert (= (and d!1642450 (not res!2163048)) b!5080727))

(assert (= (and b!5080727 res!2163046) b!5080724))

(assert (= (and b!5080724 res!2163044) b!5080726))

(assert (= (and b!5080726 res!2163047) b!5080725))

(assert (= (and b!5080725 res!2163045) b!5080728))

(assert (= (and b!5080728 res!2163049) b!5080729))

(declare-fun m!6133342 () Bool)

(assert (=> b!5080725 m!6133342))

(assert (=> b!5080724 m!6132958))

(assert (=> b!5080724 m!6132956))

(declare-fun m!6133344 () Bool)

(assert (=> b!5080729 m!6133344))

(assert (=> b!5080727 m!6132958))

(assert (=> b!5080727 m!6132956))

(declare-fun m!6133346 () Bool)

(assert (=> b!5080728 m!6133346))

(declare-fun m!6133348 () Bool)

(assert (=> b!5080726 m!6133348))

(assert (=> b!5080325 d!1642450))

(declare-fun d!1642452 () Bool)

(assert (=> d!1642452 (= (height!2159 xs!286) (ite ((_ is Empty!15582) xs!286) 0 (ite ((_ is Leaf!25878) xs!286) 1 (cheight!15793 xs!286))))))

(assert (=> b!5080322 d!1642452))

(declare-fun d!1642454 () Bool)

(assert (=> d!1642454 (= (height!2159 ys!41) (ite ((_ is Empty!15582) ys!41) 0 (ite ((_ is Leaf!25878) ys!41) 1 (cheight!15793 ys!41))))))

(assert (=> b!5080322 d!1642454))

(declare-fun d!1642456 () Bool)

(assert (=> d!1642456 (= (inv!77655 (xs!18954 ys!41)) (<= (size!39113 (innerList!15670 (xs!18954 ys!41))) 2147483647))))

(declare-fun bs!1190632 () Bool)

(assert (= bs!1190632 d!1642456))

(declare-fun m!6133350 () Bool)

(assert (=> bs!1190632 m!6133350))

(assert (=> b!5080332 d!1642456))

(declare-fun d!1642458 () Bool)

(declare-fun res!2163054 () Bool)

(declare-fun e!3169315 () Bool)

(assert (=> d!1642458 (=> res!2163054 e!3169315)))

(assert (=> d!1642458 (= res!2163054 (not ((_ is Node!15582) xs!286)))))

(assert (=> d!1642458 (= (isBalanced!4444 xs!286) e!3169315)))

(declare-fun b!5080730 () Bool)

(declare-fun res!2163050 () Bool)

(declare-fun e!3169316 () Bool)

(assert (=> b!5080730 (=> (not res!2163050) (not e!3169316))))

(assert (=> b!5080730 (= res!2163050 (<= (- (height!2159 (left!42843 xs!286)) (height!2159 (right!43173 xs!286))) 1))))

(declare-fun b!5080731 () Bool)

(declare-fun res!2163051 () Bool)

(assert (=> b!5080731 (=> (not res!2163051) (not e!3169316))))

(assert (=> b!5080731 (= res!2163051 (isBalanced!4444 (right!43173 xs!286)))))

(declare-fun b!5080732 () Bool)

(declare-fun res!2163053 () Bool)

(assert (=> b!5080732 (=> (not res!2163053) (not e!3169316))))

(assert (=> b!5080732 (= res!2163053 (isBalanced!4444 (left!42843 xs!286)))))

(declare-fun b!5080733 () Bool)

(assert (=> b!5080733 (= e!3169315 e!3169316)))

(declare-fun res!2163052 () Bool)

(assert (=> b!5080733 (=> (not res!2163052) (not e!3169316))))

(assert (=> b!5080733 (= res!2163052 (<= (- 1) (- (height!2159 (left!42843 xs!286)) (height!2159 (right!43173 xs!286)))))))

(declare-fun b!5080734 () Bool)

(declare-fun res!2163055 () Bool)

(assert (=> b!5080734 (=> (not res!2163055) (not e!3169316))))

(assert (=> b!5080734 (= res!2163055 (not (isEmpty!31667 (left!42843 xs!286))))))

(declare-fun b!5080735 () Bool)

(assert (=> b!5080735 (= e!3169316 (not (isEmpty!31667 (right!43173 xs!286))))))

(assert (= (and d!1642458 (not res!2163054)) b!5080733))

(assert (= (and b!5080733 res!2163052) b!5080730))

(assert (= (and b!5080730 res!2163050) b!5080732))

(assert (= (and b!5080732 res!2163053) b!5080731))

(assert (= (and b!5080731 res!2163051) b!5080734))

(assert (= (and b!5080734 res!2163055) b!5080735))

(declare-fun m!6133352 () Bool)

(assert (=> b!5080731 m!6133352))

(declare-fun m!6133354 () Bool)

(assert (=> b!5080730 m!6133354))

(declare-fun m!6133356 () Bool)

(assert (=> b!5080730 m!6133356))

(declare-fun m!6133358 () Bool)

(assert (=> b!5080735 m!6133358))

(assert (=> b!5080733 m!6133354))

(assert (=> b!5080733 m!6133356))

(declare-fun m!6133360 () Bool)

(assert (=> b!5080734 m!6133360))

(declare-fun m!6133362 () Bool)

(assert (=> b!5080732 m!6133362))

(assert (=> start!535678 d!1642458))

(declare-fun d!1642460 () Bool)

(declare-fun c!872744 () Bool)

(assert (=> d!1642460 (= c!872744 ((_ is Node!15582) xs!286))))

(declare-fun e!3169317 () Bool)

(assert (=> d!1642460 (= (inv!77654 xs!286) e!3169317)))

(declare-fun b!5080736 () Bool)

(assert (=> b!5080736 (= e!3169317 (inv!77656 xs!286))))

(declare-fun b!5080737 () Bool)

(declare-fun e!3169318 () Bool)

(assert (=> b!5080737 (= e!3169317 e!3169318)))

(declare-fun res!2163056 () Bool)

(assert (=> b!5080737 (= res!2163056 (not ((_ is Leaf!25878) xs!286)))))

(assert (=> b!5080737 (=> res!2163056 e!3169318)))

(declare-fun b!5080738 () Bool)

(assert (=> b!5080738 (= e!3169318 (inv!77657 xs!286))))

(assert (= (and d!1642460 c!872744) b!5080736))

(assert (= (and d!1642460 (not c!872744)) b!5080737))

(assert (= (and b!5080737 (not res!2163056)) b!5080738))

(declare-fun m!6133364 () Bool)

(assert (=> b!5080736 m!6133364))

(declare-fun m!6133366 () Bool)

(assert (=> b!5080738 m!6133366))

(assert (=> start!535678 d!1642460))

(declare-fun d!1642462 () Bool)

(declare-fun c!872745 () Bool)

(assert (=> d!1642462 (= c!872745 ((_ is Node!15582) ys!41))))

(declare-fun e!3169319 () Bool)

(assert (=> d!1642462 (= (inv!77654 ys!41) e!3169319)))

(declare-fun b!5080739 () Bool)

(assert (=> b!5080739 (= e!3169319 (inv!77656 ys!41))))

(declare-fun b!5080740 () Bool)

(declare-fun e!3169320 () Bool)

(assert (=> b!5080740 (= e!3169319 e!3169320)))

(declare-fun res!2163057 () Bool)

(assert (=> b!5080740 (= res!2163057 (not ((_ is Leaf!25878) ys!41)))))

(assert (=> b!5080740 (=> res!2163057 e!3169320)))

(declare-fun b!5080741 () Bool)

(assert (=> b!5080741 (= e!3169320 (inv!77657 ys!41))))

(assert (= (and d!1642462 c!872745) b!5080739))

(assert (= (and d!1642462 (not c!872745)) b!5080740))

(assert (= (and b!5080740 (not res!2163057)) b!5080741))

(declare-fun m!6133368 () Bool)

(assert (=> b!5080739 m!6133368))

(declare-fun m!6133370 () Bool)

(assert (=> b!5080741 m!6133370))

(assert (=> start!535678 d!1642462))

(declare-fun d!1642464 () Bool)

(assert (=> d!1642464 (= (inv!77655 (xs!18954 xs!286)) (<= (size!39113 (innerList!15670 (xs!18954 xs!286))) 2147483647))))

(declare-fun bs!1190633 () Bool)

(assert (= bs!1190633 d!1642464))

(declare-fun m!6133372 () Bool)

(assert (=> bs!1190633 m!6133372))

(assert (=> b!5080334 d!1642464))

(declare-fun d!1642466 () Bool)

(declare-fun res!2163062 () Bool)

(declare-fun e!3169321 () Bool)

(assert (=> d!1642466 (=> res!2163062 e!3169321)))

(assert (=> d!1642466 (= res!2163062 (not ((_ is Node!15582) lt!2090875)))))

(assert (=> d!1642466 (= (isBalanced!4444 lt!2090875) e!3169321)))

(declare-fun b!5080742 () Bool)

(declare-fun res!2163058 () Bool)

(declare-fun e!3169322 () Bool)

(assert (=> b!5080742 (=> (not res!2163058) (not e!3169322))))

(assert (=> b!5080742 (= res!2163058 (<= (- (height!2159 (left!42843 lt!2090875)) (height!2159 (right!43173 lt!2090875))) 1))))

(declare-fun b!5080743 () Bool)

(declare-fun res!2163059 () Bool)

(assert (=> b!5080743 (=> (not res!2163059) (not e!3169322))))

(assert (=> b!5080743 (= res!2163059 (isBalanced!4444 (right!43173 lt!2090875)))))

(declare-fun b!5080744 () Bool)

(declare-fun res!2163061 () Bool)

(assert (=> b!5080744 (=> (not res!2163061) (not e!3169322))))

(assert (=> b!5080744 (= res!2163061 (isBalanced!4444 (left!42843 lt!2090875)))))

(declare-fun b!5080745 () Bool)

(assert (=> b!5080745 (= e!3169321 e!3169322)))

(declare-fun res!2163060 () Bool)

(assert (=> b!5080745 (=> (not res!2163060) (not e!3169322))))

(assert (=> b!5080745 (= res!2163060 (<= (- 1) (- (height!2159 (left!42843 lt!2090875)) (height!2159 (right!43173 lt!2090875)))))))

(declare-fun b!5080746 () Bool)

(declare-fun res!2163063 () Bool)

(assert (=> b!5080746 (=> (not res!2163063) (not e!3169322))))

(assert (=> b!5080746 (= res!2163063 (not (isEmpty!31667 (left!42843 lt!2090875))))))

(declare-fun b!5080747 () Bool)

(assert (=> b!5080747 (= e!3169322 (not (isEmpty!31667 (right!43173 lt!2090875))))))

(assert (= (and d!1642466 (not res!2163062)) b!5080745))

(assert (= (and b!5080745 res!2163060) b!5080742))

(assert (= (and b!5080742 res!2163058) b!5080744))

(assert (= (and b!5080744 res!2163061) b!5080743))

(assert (= (and b!5080743 res!2163059) b!5080746))

(assert (= (and b!5080746 res!2163063) b!5080747))

(declare-fun m!6133374 () Bool)

(assert (=> b!5080743 m!6133374))

(declare-fun m!6133376 () Bool)

(assert (=> b!5080742 m!6133376))

(declare-fun m!6133378 () Bool)

(assert (=> b!5080742 m!6133378))

(declare-fun m!6133380 () Bool)

(assert (=> b!5080747 m!6133380))

(assert (=> b!5080745 m!6133376))

(assert (=> b!5080745 m!6133378))

(declare-fun m!6133382 () Bool)

(assert (=> b!5080746 m!6133382))

(declare-fun m!6133384 () Bool)

(assert (=> b!5080744 m!6133384))

(assert (=> b!5080333 d!1642466))

(declare-fun e!3169328 () Bool)

(declare-fun tp!1417072 () Bool)

(declare-fun tp!1417074 () Bool)

(declare-fun b!5080756 () Bool)

(assert (=> b!5080756 (= e!3169328 (and (inv!77654 (left!42843 (left!42843 ys!41))) tp!1417074 (inv!77654 (right!43173 (left!42843 ys!41))) tp!1417072))))

(declare-fun b!5080758 () Bool)

(declare-fun e!3169327 () Bool)

(declare-fun tp!1417073 () Bool)

(assert (=> b!5080758 (= e!3169327 tp!1417073)))

(declare-fun b!5080757 () Bool)

(assert (=> b!5080757 (= e!3169328 (and (inv!77655 (xs!18954 (left!42843 ys!41))) e!3169327))))

(assert (=> b!5080330 (= tp!1417040 (and (inv!77654 (left!42843 ys!41)) e!3169328))))

(assert (= (and b!5080330 ((_ is Node!15582) (left!42843 ys!41))) b!5080756))

(assert (= b!5080757 b!5080758))

(assert (= (and b!5080330 ((_ is Leaf!25878) (left!42843 ys!41))) b!5080757))

(declare-fun m!6133386 () Bool)

(assert (=> b!5080756 m!6133386))

(declare-fun m!6133388 () Bool)

(assert (=> b!5080756 m!6133388))

(declare-fun m!6133390 () Bool)

(assert (=> b!5080757 m!6133390))

(assert (=> b!5080330 m!6132976))

(declare-fun tp!1417077 () Bool)

(declare-fun b!5080759 () Bool)

(declare-fun tp!1417075 () Bool)

(declare-fun e!3169330 () Bool)

(assert (=> b!5080759 (= e!3169330 (and (inv!77654 (left!42843 (right!43173 ys!41))) tp!1417077 (inv!77654 (right!43173 (right!43173 ys!41))) tp!1417075))))

(declare-fun b!5080761 () Bool)

(declare-fun e!3169329 () Bool)

(declare-fun tp!1417076 () Bool)

(assert (=> b!5080761 (= e!3169329 tp!1417076)))

(declare-fun b!5080760 () Bool)

(assert (=> b!5080760 (= e!3169330 (and (inv!77655 (xs!18954 (right!43173 ys!41))) e!3169329))))

(assert (=> b!5080330 (= tp!1417043 (and (inv!77654 (right!43173 ys!41)) e!3169330))))

(assert (= (and b!5080330 ((_ is Node!15582) (right!43173 ys!41))) b!5080759))

(assert (= b!5080760 b!5080761))

(assert (= (and b!5080330 ((_ is Leaf!25878) (right!43173 ys!41))) b!5080760))

(declare-fun m!6133392 () Bool)

(assert (=> b!5080759 m!6133392))

(declare-fun m!6133394 () Bool)

(assert (=> b!5080759 m!6133394))

(declare-fun m!6133396 () Bool)

(assert (=> b!5080760 m!6133396))

(assert (=> b!5080330 m!6132978))

(declare-fun b!5080766 () Bool)

(declare-fun e!3169333 () Bool)

(declare-fun tp_is_empty!37087 () Bool)

(declare-fun tp!1417080 () Bool)

(assert (=> b!5080766 (= e!3169333 (and tp_is_empty!37087 tp!1417080))))

(assert (=> b!5080335 (= tp!1417039 e!3169333)))

(assert (= (and b!5080335 ((_ is Cons!58452) (innerList!15670 (xs!18954 ys!41)))) b!5080766))

(declare-fun b!5080767 () Bool)

(declare-fun e!3169335 () Bool)

(declare-fun tp!1417081 () Bool)

(declare-fun tp!1417083 () Bool)

(assert (=> b!5080767 (= e!3169335 (and (inv!77654 (left!42843 (left!42843 xs!286))) tp!1417083 (inv!77654 (right!43173 (left!42843 xs!286))) tp!1417081))))

(declare-fun b!5080769 () Bool)

(declare-fun e!3169334 () Bool)

(declare-fun tp!1417082 () Bool)

(assert (=> b!5080769 (= e!3169334 tp!1417082)))

(declare-fun b!5080768 () Bool)

(assert (=> b!5080768 (= e!3169335 (and (inv!77655 (xs!18954 (left!42843 xs!286))) e!3169334))))

(assert (=> b!5080327 (= tp!1417038 (and (inv!77654 (left!42843 xs!286)) e!3169335))))

(assert (= (and b!5080327 ((_ is Node!15582) (left!42843 xs!286))) b!5080767))

(assert (= b!5080768 b!5080769))

(assert (= (and b!5080327 ((_ is Leaf!25878) (left!42843 xs!286))) b!5080768))

(declare-fun m!6133398 () Bool)

(assert (=> b!5080767 m!6133398))

(declare-fun m!6133400 () Bool)

(assert (=> b!5080767 m!6133400))

(declare-fun m!6133402 () Bool)

(assert (=> b!5080768 m!6133402))

(assert (=> b!5080327 m!6132990))

(declare-fun tp!1417084 () Bool)

(declare-fun e!3169337 () Bool)

(declare-fun b!5080770 () Bool)

(declare-fun tp!1417086 () Bool)

(assert (=> b!5080770 (= e!3169337 (and (inv!77654 (left!42843 (right!43173 xs!286))) tp!1417086 (inv!77654 (right!43173 (right!43173 xs!286))) tp!1417084))))

(declare-fun b!5080772 () Bool)

(declare-fun e!3169336 () Bool)

(declare-fun tp!1417085 () Bool)

(assert (=> b!5080772 (= e!3169336 tp!1417085)))

(declare-fun b!5080771 () Bool)

(assert (=> b!5080771 (= e!3169337 (and (inv!77655 (xs!18954 (right!43173 xs!286))) e!3169336))))

(assert (=> b!5080327 (= tp!1417041 (and (inv!77654 (right!43173 xs!286)) e!3169337))))

(assert (= (and b!5080327 ((_ is Node!15582) (right!43173 xs!286))) b!5080770))

(assert (= b!5080771 b!5080772))

(assert (= (and b!5080327 ((_ is Leaf!25878) (right!43173 xs!286))) b!5080771))

(declare-fun m!6133404 () Bool)

(assert (=> b!5080770 m!6133404))

(declare-fun m!6133406 () Bool)

(assert (=> b!5080770 m!6133406))

(declare-fun m!6133408 () Bool)

(assert (=> b!5080771 m!6133408))

(assert (=> b!5080327 m!6132992))

(declare-fun b!5080773 () Bool)

(declare-fun e!3169338 () Bool)

(declare-fun tp!1417087 () Bool)

(assert (=> b!5080773 (= e!3169338 (and tp_is_empty!37087 tp!1417087))))

(assert (=> b!5080323 (= tp!1417042 e!3169338)))

(assert (= (and b!5080323 ((_ is Cons!58452) (innerList!15670 (xs!18954 xs!286)))) b!5080773))

(check-sat (not b!5080756) (not b!5080704) (not b!5080724) (not b!5080747) (not d!1642456) (not bm!354097) (not b!5080344) (not b!5080591) (not d!1642378) (not b!5080767) (not b!5080347) (not b!5080736) (not b!5080638) (not b!5080381) (not d!1642374) (not b!5080693) (not b!5080709) (not b!5080327) (not b!5080726) (not b!5080769) (not b!5080757) (not b!5080771) (not b!5080735) (not b!5080729) (not bm!354101) (not b!5080738) (not b!5080423) (not b!5080432) (not b!5080386) (not b!5080745) (not b!5080739) (not b!5080585) (not b!5080743) (not b!5080761) tp_is_empty!37087 (not b!5080770) (not b!5080727) (not b!5080725) (not d!1642464) (not b!5080768) (not b!5080410) (not bm!354105) (not bm!354108) (not b!5080734) (not b!5080728) (not b!5080574) (not b!5080639) (not b!5080760) (not b!5080692) (not b!5080773) (not b!5080383) (not b!5080710) (not b!5080385) (not d!1642394) (not b!5080759) (not b!5080705) (not b!5080388) (not bm!354112) (not b!5080731) (not b!5080349) (not b!5080581) (not b!5080766) (not b!5080387) (not b!5080346) (not b!5080746) (not b!5080733) (not bm!354104) (not b!5080577) (not d!1642422) (not b!5080434) (not b!5080758) (not bm!354102) (not b!5080582) (not b!5080330) (not b!5080772) (not b!5080425) (not b!5080406) (not b!5080732) (not b!5080744) (not b!5080741) (not b!5080742) (not b!5080730))
(check-sat)
(get-model)

(declare-fun d!1642468 () Bool)

(declare-fun res!2163068 () Bool)

(declare-fun e!3169341 () Bool)

(assert (=> d!1642468 (=> (not res!2163068) (not e!3169341))))

(assert (=> d!1642468 (= res!2163068 (<= (size!39113 (list!19027 (xs!18954 (left!42843 xs!286)))) 512))))

(assert (=> d!1642468 (= (inv!77657 (left!42843 xs!286)) e!3169341)))

(declare-fun b!5080778 () Bool)

(declare-fun res!2163069 () Bool)

(assert (=> b!5080778 (=> (not res!2163069) (not e!3169341))))

(assert (=> b!5080778 (= res!2163069 (= (csize!31395 (left!42843 xs!286)) (size!39113 (list!19027 (xs!18954 (left!42843 xs!286))))))))

(declare-fun b!5080779 () Bool)

(assert (=> b!5080779 (= e!3169341 (and (> (csize!31395 (left!42843 xs!286)) 0) (<= (csize!31395 (left!42843 xs!286)) 512)))))

(assert (= (and d!1642468 res!2163068) b!5080778))

(assert (= (and b!5080778 res!2163069) b!5080779))

(declare-fun m!6133410 () Bool)

(assert (=> d!1642468 m!6133410))

(assert (=> d!1642468 m!6133410))

(declare-fun m!6133412 () Bool)

(assert (=> d!1642468 m!6133412))

(assert (=> b!5080778 m!6133410))

(assert (=> b!5080778 m!6133410))

(assert (=> b!5080778 m!6133412))

(assert (=> b!5080425 d!1642468))

(declare-fun d!1642470 () Bool)

(assert (=> d!1642470 (= (list!19027 (xs!18954 lt!2090875)) (innerList!15670 (xs!18954 lt!2090875)))))

(assert (=> b!5080638 d!1642470))

(declare-fun d!1642472 () Bool)

(declare-fun res!2163076 () Bool)

(declare-fun e!3169344 () Bool)

(assert (=> d!1642472 (=> (not res!2163076) (not e!3169344))))

(assert (=> d!1642472 (= res!2163076 (= (csize!31394 ys!41) (+ (size!39112 (left!42843 ys!41)) (size!39112 (right!43173 ys!41)))))))

(assert (=> d!1642472 (= (inv!77656 ys!41) e!3169344)))

(declare-fun b!5080786 () Bool)

(declare-fun res!2163077 () Bool)

(assert (=> b!5080786 (=> (not res!2163077) (not e!3169344))))

(assert (=> b!5080786 (= res!2163077 (and (not (= (left!42843 ys!41) Empty!15582)) (not (= (right!43173 ys!41) Empty!15582))))))

(declare-fun b!5080787 () Bool)

(declare-fun res!2163078 () Bool)

(assert (=> b!5080787 (=> (not res!2163078) (not e!3169344))))

(assert (=> b!5080787 (= res!2163078 (= (cheight!15793 ys!41) (+ (max!0 (height!2159 (left!42843 ys!41)) (height!2159 (right!43173 ys!41))) 1)))))

(declare-fun b!5080788 () Bool)

(assert (=> b!5080788 (= e!3169344 (<= 0 (cheight!15793 ys!41)))))

(assert (= (and d!1642472 res!2163076) b!5080786))

(assert (= (and b!5080786 res!2163077) b!5080787))

(assert (= (and b!5080787 res!2163078) b!5080788))

(declare-fun m!6133414 () Bool)

(assert (=> d!1642472 m!6133414))

(assert (=> d!1642472 m!6133082))

(assert (=> b!5080787 m!6132958))

(assert (=> b!5080787 m!6132956))

(assert (=> b!5080787 m!6132958))

(assert (=> b!5080787 m!6132956))

(declare-fun m!6133416 () Bool)

(assert (=> b!5080787 m!6133416))

(assert (=> b!5080739 d!1642472))

(declare-fun d!1642474 () Bool)

(declare-fun e!3169349 () Bool)

(assert (=> d!1642474 e!3169349))

(declare-fun c!872750 () Bool)

(assert (=> d!1642474 (= c!872750 ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(assert (=> d!1642474 (= (appendAssoc!312 (list!19025 (left!42843 xs!286)) (list!19025 (right!43173 xs!286)) (list!19025 ys!41)) true)))

(declare-fun bm!354137 () Bool)

(declare-fun call!354144 () List!58576)

(assert (=> bm!354137 (= call!354144 (++!12811 (list!19025 (left!42843 xs!286)) (list!19025 (right!43173 xs!286))))))

(declare-fun bm!354138 () Bool)

(declare-fun call!354143 () List!58576)

(declare-fun call!354145 () List!58576)

(assert (=> bm!354138 (= call!354143 (++!12811 (list!19025 (left!42843 xs!286)) call!354145))))

(declare-fun bm!354139 () Bool)

(assert (=> bm!354139 (= call!354145 (++!12811 (list!19025 (right!43173 xs!286)) (list!19025 ys!41)))))

(declare-fun b!5080797 () Bool)

(declare-fun call!354142 () List!58576)

(assert (=> b!5080797 (= e!3169349 (= call!354142 call!354143))))

(declare-fun bm!354140 () Bool)

(assert (=> bm!354140 (= call!354142 (++!12811 call!354144 (list!19025 ys!41)))))

(declare-fun b!5080798 () Bool)

(assert (=> b!5080798 (= e!3169349 (= call!354142 call!354143))))

(declare-fun lt!2090924 () Bool)

(assert (=> b!5080798 (= lt!2090924 (appendAssoc!312 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (right!43173 xs!286)) (list!19025 ys!41)))))

(assert (= (and d!1642474 c!872750) b!5080797))

(assert (= (and d!1642474 (not c!872750)) b!5080798))

(assert (= (or b!5080797 b!5080798) bm!354137))

(assert (= (or b!5080797 b!5080798) bm!354139))

(assert (= (or b!5080797 b!5080798) bm!354138))

(assert (= (or b!5080797 b!5080798) bm!354140))

(assert (=> bm!354139 m!6133032))

(assert (=> bm!354139 m!6132964))

(declare-fun m!6133418 () Bool)

(assert (=> bm!354139 m!6133418))

(assert (=> bm!354138 m!6133030))

(declare-fun m!6133420 () Bool)

(assert (=> bm!354138 m!6133420))

(assert (=> bm!354140 m!6132964))

(declare-fun m!6133422 () Bool)

(assert (=> bm!354140 m!6133422))

(assert (=> bm!354137 m!6133030))

(assert (=> bm!354137 m!6133032))

(assert (=> bm!354137 m!6133334))

(assert (=> b!5080798 m!6133032))

(assert (=> b!5080798 m!6132964))

(declare-fun m!6133424 () Bool)

(assert (=> b!5080798 m!6133424))

(assert (=> b!5080383 d!1642474))

(declare-fun b!5080799 () Bool)

(declare-fun e!3169350 () List!58576)

(assert (=> b!5080799 (= e!3169350 Nil!58452)))

(declare-fun b!5080802 () Bool)

(declare-fun e!3169351 () List!58576)

(assert (=> b!5080802 (= e!3169351 (++!12811 (list!19025 (left!42843 (left!42843 xs!286))) (list!19025 (right!43173 (left!42843 xs!286)))))))

(declare-fun d!1642478 () Bool)

(declare-fun c!872751 () Bool)

(assert (=> d!1642478 (= c!872751 ((_ is Empty!15582) (left!42843 xs!286)))))

(assert (=> d!1642478 (= (list!19025 (left!42843 xs!286)) e!3169350)))

(declare-fun b!5080800 () Bool)

(assert (=> b!5080800 (= e!3169350 e!3169351)))

(declare-fun c!872752 () Bool)

(assert (=> b!5080800 (= c!872752 ((_ is Leaf!25878) (left!42843 xs!286)))))

(declare-fun b!5080801 () Bool)

(assert (=> b!5080801 (= e!3169351 (list!19027 (xs!18954 (left!42843 xs!286))))))

(assert (= (and d!1642478 c!872751) b!5080799))

(assert (= (and d!1642478 (not c!872751)) b!5080800))

(assert (= (and b!5080800 c!872752) b!5080801))

(assert (= (and b!5080800 (not c!872752)) b!5080802))

(declare-fun m!6133426 () Bool)

(assert (=> b!5080802 m!6133426))

(declare-fun m!6133428 () Bool)

(assert (=> b!5080802 m!6133428))

(assert (=> b!5080802 m!6133426))

(assert (=> b!5080802 m!6133428))

(declare-fun m!6133430 () Bool)

(assert (=> b!5080802 m!6133430))

(assert (=> b!5080801 m!6133410))

(assert (=> b!5080383 d!1642478))

(declare-fun b!5080803 () Bool)

(declare-fun e!3169352 () List!58576)

(assert (=> b!5080803 (= e!3169352 Nil!58452)))

(declare-fun b!5080806 () Bool)

(declare-fun e!3169353 () List!58576)

(assert (=> b!5080806 (= e!3169353 (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) (list!19025 (right!43173 (right!43173 xs!286)))))))

(declare-fun d!1642480 () Bool)

(declare-fun c!872753 () Bool)

(assert (=> d!1642480 (= c!872753 ((_ is Empty!15582) (right!43173 xs!286)))))

(assert (=> d!1642480 (= (list!19025 (right!43173 xs!286)) e!3169352)))

(declare-fun b!5080804 () Bool)

(assert (=> b!5080804 (= e!3169352 e!3169353)))

(declare-fun c!872754 () Bool)

(assert (=> b!5080804 (= c!872754 ((_ is Leaf!25878) (right!43173 xs!286)))))

(declare-fun b!5080805 () Bool)

(assert (=> b!5080805 (= e!3169353 (list!19027 (xs!18954 (right!43173 xs!286))))))

(assert (= (and d!1642480 c!872753) b!5080803))

(assert (= (and d!1642480 (not c!872753)) b!5080804))

(assert (= (and b!5080804 c!872754) b!5080805))

(assert (= (and b!5080804 (not c!872754)) b!5080806))

(assert (=> b!5080806 m!6133036))

(assert (=> b!5080806 m!6133042))

(assert (=> b!5080806 m!6133036))

(assert (=> b!5080806 m!6133042))

(declare-fun m!6133432 () Bool)

(assert (=> b!5080806 m!6133432))

(declare-fun m!6133434 () Bool)

(assert (=> b!5080805 m!6133434))

(assert (=> b!5080383 d!1642480))

(assert (=> b!5080383 d!1642448))

(declare-fun b!5080807 () Bool)

(declare-fun e!3169354 () List!58576)

(assert (=> b!5080807 (= e!3169354 Nil!58452)))

(declare-fun b!5080810 () Bool)

(declare-fun e!3169355 () List!58576)

(assert (=> b!5080810 (= e!3169355 (++!12811 (list!19025 (left!42843 lt!2090909)) (list!19025 (right!43173 lt!2090909))))))

(declare-fun d!1642482 () Bool)

(declare-fun c!872755 () Bool)

(assert (=> d!1642482 (= c!872755 ((_ is Empty!15582) lt!2090909))))

(assert (=> d!1642482 (= (list!19025 lt!2090909) e!3169354)))

(declare-fun b!5080808 () Bool)

(assert (=> b!5080808 (= e!3169354 e!3169355)))

(declare-fun c!872756 () Bool)

(assert (=> b!5080808 (= c!872756 ((_ is Leaf!25878) lt!2090909))))

(declare-fun b!5080809 () Bool)

(assert (=> b!5080809 (= e!3169355 (list!19027 (xs!18954 lt!2090909)))))

(assert (= (and d!1642482 c!872755) b!5080807))

(assert (= (and d!1642482 (not c!872755)) b!5080808))

(assert (= (and b!5080808 c!872756) b!5080809))

(assert (= (and b!5080808 (not c!872756)) b!5080810))

(declare-fun m!6133436 () Bool)

(assert (=> b!5080810 m!6133436))

(declare-fun m!6133438 () Bool)

(assert (=> b!5080810 m!6133438))

(assert (=> b!5080810 m!6133436))

(assert (=> b!5080810 m!6133438))

(declare-fun m!6133440 () Bool)

(assert (=> b!5080810 m!6133440))

(declare-fun m!6133442 () Bool)

(assert (=> b!5080809 m!6133442))

(assert (=> b!5080574 d!1642482))

(declare-fun b!5080812 () Bool)

(declare-fun e!3169356 () List!58576)

(assert (=> b!5080812 (= e!3169356 (Cons!58452 (h!64900 (list!19025 xs!286)) (++!12811 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 (left!42843 ys!41))))))))

(declare-fun d!1642484 () Bool)

(declare-fun e!3169357 () Bool)

(assert (=> d!1642484 e!3169357))

(declare-fun res!2163080 () Bool)

(assert (=> d!1642484 (=> (not res!2163080) (not e!3169357))))

(declare-fun lt!2090925 () List!58576)

(assert (=> d!1642484 (= res!2163080 (= (content!10428 lt!2090925) ((_ map or) (content!10428 (list!19025 xs!286)) (content!10428 (list!19025 (left!42843 (left!42843 ys!41)))))))))

(assert (=> d!1642484 (= lt!2090925 e!3169356)))

(declare-fun c!872757 () Bool)

(assert (=> d!1642484 (= c!872757 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1642484 (= (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))) lt!2090925)))

(declare-fun b!5080811 () Bool)

(assert (=> b!5080811 (= e!3169356 (list!19025 (left!42843 (left!42843 ys!41))))))

(declare-fun b!5080813 () Bool)

(declare-fun res!2163079 () Bool)

(assert (=> b!5080813 (=> (not res!2163079) (not e!3169357))))

(assert (=> b!5080813 (= res!2163079 (= (size!39113 lt!2090925) (+ (size!39113 (list!19025 xs!286)) (size!39113 (list!19025 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5080814 () Bool)

(assert (=> b!5080814 (= e!3169357 (or (not (= (list!19025 (left!42843 (left!42843 ys!41))) Nil!58452)) (= lt!2090925 (list!19025 xs!286))))))

(assert (= (and d!1642484 c!872757) b!5080811))

(assert (= (and d!1642484 (not c!872757)) b!5080812))

(assert (= (and d!1642484 res!2163080) b!5080813))

(assert (= (and b!5080813 res!2163079) b!5080814))

(assert (=> b!5080812 m!6133024))

(declare-fun m!6133444 () Bool)

(assert (=> b!5080812 m!6133444))

(declare-fun m!6133446 () Bool)

(assert (=> d!1642484 m!6133446))

(assert (=> d!1642484 m!6132962))

(assert (=> d!1642484 m!6133318))

(assert (=> d!1642484 m!6133024))

(declare-fun m!6133448 () Bool)

(assert (=> d!1642484 m!6133448))

(declare-fun m!6133450 () Bool)

(assert (=> b!5080813 m!6133450))

(assert (=> b!5080813 m!6132962))

(assert (=> b!5080813 m!6133330))

(assert (=> b!5080813 m!6133024))

(declare-fun m!6133452 () Bool)

(assert (=> b!5080813 m!6133452))

(assert (=> b!5080574 d!1642484))

(assert (=> b!5080574 d!1642446))

(declare-fun b!5080815 () Bool)

(declare-fun e!3169358 () List!58576)

(assert (=> b!5080815 (= e!3169358 Nil!58452)))

(declare-fun b!5080818 () Bool)

(declare-fun e!3169359 () List!58576)

(assert (=> b!5080818 (= e!3169359 (++!12811 (list!19025 (left!42843 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))

(declare-fun d!1642486 () Bool)

(declare-fun c!872758 () Bool)

(assert (=> d!1642486 (= c!872758 ((_ is Empty!15582) (left!42843 (left!42843 ys!41))))))

(assert (=> d!1642486 (= (list!19025 (left!42843 (left!42843 ys!41))) e!3169358)))

(declare-fun b!5080816 () Bool)

(assert (=> b!5080816 (= e!3169358 e!3169359)))

(declare-fun c!872759 () Bool)

(assert (=> b!5080816 (= c!872759 ((_ is Leaf!25878) (left!42843 (left!42843 ys!41))))))

(declare-fun b!5080817 () Bool)

(assert (=> b!5080817 (= e!3169359 (list!19027 (xs!18954 (left!42843 (left!42843 ys!41)))))))

(assert (= (and d!1642486 c!872758) b!5080815))

(assert (= (and d!1642486 (not c!872758)) b!5080816))

(assert (= (and b!5080816 c!872759) b!5080817))

(assert (= (and b!5080816 (not c!872759)) b!5080818))

(declare-fun m!6133454 () Bool)

(assert (=> b!5080818 m!6133454))

(declare-fun m!6133456 () Bool)

(assert (=> b!5080818 m!6133456))

(assert (=> b!5080818 m!6133454))

(assert (=> b!5080818 m!6133456))

(declare-fun m!6133458 () Bool)

(assert (=> b!5080818 m!6133458))

(declare-fun m!6133460 () Bool)

(assert (=> b!5080817 m!6133460))

(assert (=> b!5080574 d!1642486))

(declare-fun c!872763 () Bool)

(declare-fun c!872768 () Bool)

(declare-fun lt!2090929 () Conc!15582)

(declare-fun c!872767 () Bool)

(declare-fun lt!2090927 () Conc!15582)

(declare-fun c!872766 () Bool)

(declare-fun call!354165 () Conc!15582)

(declare-fun bm!354153 () Bool)

(declare-fun c!872761 () Bool)

(declare-fun call!354173 () Conc!15582)

(assert (=> bm!354153 (= call!354165 (<>!402 (ite c!872761 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872763 (ite c!872768 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (ite c!872766 call!354173 (ite c!872767 lt!2090927 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))) (ite c!872761 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872763 (ite c!872768 lt!2090929 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872766 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (ite c!872767 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))))

(declare-fun bm!354154 () Bool)

(declare-fun call!354160 () Conc!15582)

(assert (=> bm!354154 (= call!354160 call!354165)))

(declare-fun bm!354155 () Bool)

(declare-fun call!354166 () Conc!15582)

(declare-fun call!354167 () Conc!15582)

(assert (=> bm!354155 (= call!354166 call!354167)))

(declare-fun bm!354156 () Bool)

(declare-fun call!354163 () Conc!15582)

(declare-fun call!354171 () Conc!15582)

(assert (=> bm!354156 (= call!354163 call!354171)))

(declare-fun b!5080821 () Bool)

(declare-fun lt!2090930 () Conc!15582)

(declare-fun e!3169363 () Bool)

(assert (=> b!5080821 (= e!3169363 (= (list!19025 lt!2090930) (++!12811 (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun bm!354157 () Bool)

(declare-fun call!354168 () Int)

(assert (=> bm!354157 (= call!354168 (height!2159 (ite c!872763 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) lt!2090927)))))

(declare-fun bm!354158 () Bool)

(declare-fun call!354161 () Int)

(assert (=> bm!354158 (= call!354161 (height!2159 (ite c!872763 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun bm!354159 () Bool)

(declare-fun call!354169 () Conc!15582)

(assert (=> bm!354159 (= call!354169 call!354160)))

(declare-fun b!5080823 () Bool)

(declare-fun e!3169369 () Conc!15582)

(assert (=> b!5080823 (= e!3169369 call!354166)))

(declare-fun b!5080824 () Bool)

(declare-fun res!2163081 () Bool)

(assert (=> b!5080824 (=> (not res!2163081) (not e!3169363))))

(assert (=> b!5080824 (= res!2163081 (>= (height!2159 lt!2090930) (max!0 (height!2159 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (height!2159 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun b!5080825 () Bool)

(declare-fun e!3169361 () Conc!15582)

(assert (=> b!5080825 (= e!3169361 call!354163)))

(declare-fun call!354159 () Int)

(declare-fun bm!354160 () Bool)

(assert (=> bm!354160 (= call!354159 (height!2159 (ite c!872763 lt!2090929 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(declare-fun b!5080826 () Bool)

(declare-fun e!3169364 () Conc!15582)

(declare-fun e!3169362 () Conc!15582)

(assert (=> b!5080826 (= e!3169364 e!3169362)))

(declare-fun lt!2090928 () Int)

(assert (=> b!5080826 (= c!872763 (< lt!2090928 (- 1)))))

(declare-fun b!5080827 () Bool)

(declare-fun e!3169368 () Conc!15582)

(assert (=> b!5080827 (= e!3169368 e!3169361)))

(declare-fun call!354172 () Conc!15582)

(assert (=> b!5080827 (= lt!2090929 call!354172)))

(declare-fun call!354158 () Int)

(assert (=> b!5080827 (= c!872768 (= call!354159 (- call!354158 3)))))

(declare-fun b!5080828 () Bool)

(assert (=> b!5080828 (= c!872761 (and (<= (- 1) lt!2090928) (<= lt!2090928 1)))))

(assert (=> b!5080828 (= lt!2090928 (- (height!2159 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (height!2159 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))))

(declare-fun e!3169366 () Conc!15582)

(assert (=> b!5080828 (= e!3169366 e!3169364)))

(declare-fun bm!354161 () Bool)

(assert (=> bm!354161 (= call!354158 (height!2159 (ite c!872763 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun b!5080829 () Bool)

(declare-fun res!2163082 () Bool)

(assert (=> b!5080829 (=> (not res!2163082) (not e!3169363))))

(assert (=> b!5080829 (= res!2163082 (<= (height!2159 lt!2090930) (+ (max!0 (height!2159 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (height!2159 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) 1)))))

(declare-fun b!5080830 () Bool)

(assert (=> b!5080830 (= e!3169364 call!354165)))

(declare-fun b!5080831 () Bool)

(declare-fun e!3169370 () Conc!15582)

(assert (=> b!5080831 (= e!3169370 e!3169369)))

(assert (=> b!5080831 (= lt!2090927 call!354173)))

(assert (=> b!5080831 (= c!872767 (= call!354168 (- call!354159 3)))))

(declare-fun e!3169367 () Bool)

(declare-fun b!5080832 () Bool)

(assert (=> b!5080832 (= e!3169367 (isBalanced!4444 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(declare-fun b!5080833 () Bool)

(declare-fun c!872765 () Bool)

(assert (=> b!5080833 (= c!872765 (>= call!354168 call!354161))))

(assert (=> b!5080833 (= e!3169362 e!3169368)))

(declare-fun b!5080834 () Bool)

(declare-fun e!3169365 () Conc!15582)

(assert (=> b!5080834 (= e!3169365 e!3169366)))

(declare-fun c!872764 () Bool)

(assert (=> b!5080834 (= c!872764 (= (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) Empty!15582))))

(declare-fun b!5080835 () Bool)

(assert (=> b!5080835 (= e!3169365 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5080836 () Bool)

(assert (=> b!5080836 (= e!3169368 call!354171)))

(declare-fun bm!354162 () Bool)

(declare-fun call!354164 () Conc!15582)

(assert (=> bm!354162 (= call!354172 call!354164)))

(declare-fun bm!354163 () Bool)

(declare-fun call!354170 () Conc!15582)

(assert (=> bm!354163 (= call!354170 call!354160)))

(declare-fun bm!354164 () Bool)

(assert (=> bm!354164 (= call!354164 (++!12810 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))

(declare-fun bm!354165 () Bool)

(declare-fun call!354162 () Conc!15582)

(assert (=> bm!354165 (= call!354162 call!354170)))

(declare-fun b!5080837 () Bool)

(assert (=> b!5080837 (= e!3169370 call!354170)))

(declare-fun b!5080838 () Bool)

(declare-fun res!2163085 () Bool)

(assert (=> b!5080838 (=> (not res!2163085) (not e!3169363))))

(assert (=> b!5080838 (= res!2163085 (isBalanced!4444 lt!2090930))))

(declare-fun b!5080839 () Bool)

(assert (=> b!5080839 (= c!872766 (>= call!354158 call!354161))))

(assert (=> b!5080839 (= e!3169362 e!3169370)))

(declare-fun b!5080840 () Bool)

(assert (=> b!5080840 (= e!3169361 call!354163)))

(declare-fun bm!354166 () Bool)

(assert (=> bm!354166 (= call!354173 call!354164)))

(declare-fun bm!354167 () Bool)

(assert (=> bm!354167 (= call!354171 call!354167)))

(declare-fun bm!354168 () Bool)

(assert (=> bm!354168 (= call!354167 (<>!402 (ite c!872763 (ite (or c!872765 c!872768) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) call!354169) (ite c!872767 call!354162 lt!2090927)) (ite c!872763 (ite c!872765 call!354172 (ite c!872768 call!354169 lt!2090929)) (ite c!872767 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) call!354162))))))

(declare-fun b!5080841 () Bool)

(assert (=> b!5080841 (= e!3169366 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))

(declare-fun b!5080822 () Bool)

(assert (=> b!5080822 (= e!3169369 call!354166)))

(declare-fun d!1642488 () Bool)

(assert (=> d!1642488 e!3169363))

(declare-fun res!2163084 () Bool)

(assert (=> d!1642488 (=> (not res!2163084) (not e!3169363))))

(assert (=> d!1642488 (= res!2163084 (appendAssocInst!920 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(assert (=> d!1642488 (= lt!2090930 e!3169365)))

(declare-fun c!872762 () Bool)

(assert (=> d!1642488 (= c!872762 (= (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) Empty!15582))))

(assert (=> d!1642488 e!3169367))

(declare-fun res!2163083 () Bool)

(assert (=> d!1642488 (=> (not res!2163083) (not e!3169367))))

(assert (=> d!1642488 (= res!2163083 (isBalanced!4444 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))

(assert (=> d!1642488 (= (++!12810 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) lt!2090930)))

(assert (= (and d!1642488 res!2163083) b!5080832))

(assert (= (and d!1642488 c!872762) b!5080835))

(assert (= (and d!1642488 (not c!872762)) b!5080834))

(assert (= (and b!5080834 c!872764) b!5080841))

(assert (= (and b!5080834 (not c!872764)) b!5080828))

(assert (= (and b!5080828 c!872761) b!5080830))

(assert (= (and b!5080828 (not c!872761)) b!5080826))

(assert (= (and b!5080826 c!872763) b!5080833))

(assert (= (and b!5080826 (not c!872763)) b!5080839))

(assert (= (and b!5080833 c!872765) b!5080836))

(assert (= (and b!5080833 (not c!872765)) b!5080827))

(assert (= (and b!5080827 c!872768) b!5080840))

(assert (= (and b!5080827 (not c!872768)) b!5080825))

(assert (= (or b!5080840 b!5080825) bm!354159))

(assert (= (or b!5080840 b!5080825) bm!354156))

(assert (= (or b!5080836 b!5080827) bm!354162))

(assert (= (or b!5080836 bm!354156) bm!354167))

(assert (= (and b!5080839 c!872766) b!5080837))

(assert (= (and b!5080839 (not c!872766)) b!5080831))

(assert (= (and b!5080831 c!872767) b!5080822))

(assert (= (and b!5080831 (not c!872767)) b!5080823))

(assert (= (or b!5080822 b!5080823) bm!354165))

(assert (= (or b!5080822 b!5080823) bm!354155))

(assert (= (or b!5080837 b!5080831) bm!354166))

(assert (= (or b!5080837 bm!354165) bm!354163))

(assert (= (or bm!354167 bm!354155) bm!354168))

(assert (= (or b!5080833 b!5080831) bm!354157))

(assert (= (or b!5080833 b!5080839) bm!354158))

(assert (= (or bm!354162 bm!354166) bm!354164))

(assert (= (or b!5080827 b!5080831) bm!354160))

(assert (= (or b!5080827 b!5080839) bm!354161))

(assert (= (or bm!354159 bm!354163) bm!354154))

(assert (= (or b!5080830 bm!354154) bm!354153))

(assert (= (and d!1642488 res!2163084) b!5080838))

(assert (= (and b!5080838 res!2163085) b!5080829))

(assert (= (and b!5080829 res!2163082) b!5080824))

(assert (= (and b!5080824 res!2163081) b!5080821))

(declare-fun m!6133482 () Bool)

(assert (=> bm!354161 m!6133482))

(declare-fun m!6133484 () Bool)

(assert (=> b!5080829 m!6133484))

(declare-fun m!6133486 () Bool)

(assert (=> b!5080829 m!6133486))

(declare-fun m!6133488 () Bool)

(assert (=> b!5080829 m!6133488))

(assert (=> b!5080829 m!6133486))

(assert (=> b!5080829 m!6133488))

(declare-fun m!6133490 () Bool)

(assert (=> b!5080829 m!6133490))

(declare-fun m!6133492 () Bool)

(assert (=> b!5080832 m!6133492))

(declare-fun m!6133494 () Bool)

(assert (=> d!1642488 m!6133494))

(declare-fun m!6133496 () Bool)

(assert (=> d!1642488 m!6133496))

(assert (=> b!5080828 m!6133488))

(assert (=> b!5080828 m!6133486))

(declare-fun m!6133498 () Bool)

(assert (=> bm!354160 m!6133498))

(declare-fun m!6133500 () Bool)

(assert (=> bm!354158 m!6133500))

(assert (=> b!5080824 m!6133484))

(assert (=> b!5080824 m!6133486))

(assert (=> b!5080824 m!6133488))

(assert (=> b!5080824 m!6133486))

(assert (=> b!5080824 m!6133488))

(assert (=> b!5080824 m!6133490))

(declare-fun m!6133502 () Bool)

(assert (=> bm!354153 m!6133502))

(declare-fun m!6133504 () Bool)

(assert (=> bm!354164 m!6133504))

(declare-fun m!6133506 () Bool)

(assert (=> b!5080821 m!6133506))

(declare-fun m!6133508 () Bool)

(assert (=> b!5080821 m!6133508))

(declare-fun m!6133510 () Bool)

(assert (=> b!5080821 m!6133510))

(assert (=> b!5080821 m!6133508))

(assert (=> b!5080821 m!6133510))

(declare-fun m!6133512 () Bool)

(assert (=> b!5080821 m!6133512))

(declare-fun m!6133516 () Bool)

(assert (=> bm!354168 m!6133516))

(declare-fun m!6133518 () Bool)

(assert (=> b!5080838 m!6133518))

(declare-fun m!6133520 () Bool)

(assert (=> bm!354157 m!6133520))

(assert (=> bm!354108 d!1642488))

(declare-fun d!1642498 () Bool)

(declare-fun res!2163086 () Bool)

(declare-fun e!3169379 () Bool)

(assert (=> d!1642498 (=> (not res!2163086) (not e!3169379))))

(assert (=> d!1642498 (= res!2163086 (<= (size!39113 (list!19027 (xs!18954 ys!41))) 512))))

(assert (=> d!1642498 (= (inv!77657 ys!41) e!3169379)))

(declare-fun b!5080858 () Bool)

(declare-fun res!2163087 () Bool)

(assert (=> b!5080858 (=> (not res!2163087) (not e!3169379))))

(assert (=> b!5080858 (= res!2163087 (= (csize!31395 ys!41) (size!39113 (list!19027 (xs!18954 ys!41)))))))

(declare-fun b!5080859 () Bool)

(assert (=> b!5080859 (= e!3169379 (and (> (csize!31395 ys!41) 0) (<= (csize!31395 ys!41) 512)))))

(assert (= (and d!1642498 res!2163086) b!5080858))

(assert (= (and b!5080858 res!2163087) b!5080859))

(assert (=> d!1642498 m!6133340))

(assert (=> d!1642498 m!6133340))

(declare-fun m!6133526 () Bool)

(assert (=> d!1642498 m!6133526))

(assert (=> b!5080858 m!6133340))

(assert (=> b!5080858 m!6133340))

(assert (=> b!5080858 m!6133526))

(assert (=> b!5080741 d!1642498))

(declare-fun d!1642504 () Bool)

(assert (=> d!1642504 (= (list!19027 (xs!18954 ys!41)) (innerList!15670 (xs!18954 ys!41)))))

(assert (=> b!5080709 d!1642504))

(assert (=> b!5080385 d!1642448))

(assert (=> b!5080385 d!1642478))

(declare-fun b!5080866 () Bool)

(declare-fun e!3169383 () List!58576)

(assert (=> b!5080866 (= e!3169383 Nil!58452)))

(declare-fun b!5080869 () Bool)

(declare-fun e!3169384 () List!58576)

(assert (=> b!5080869 (= e!3169384 (++!12811 (list!19025 (left!42843 (right!43173 (right!43173 xs!286)))) (list!19025 (right!43173 (right!43173 (right!43173 xs!286))))))))

(declare-fun d!1642506 () Bool)

(declare-fun c!872780 () Bool)

(assert (=> d!1642506 (= c!872780 ((_ is Empty!15582) (right!43173 (right!43173 xs!286))))))

(assert (=> d!1642506 (= (list!19025 (right!43173 (right!43173 xs!286))) e!3169383)))

(declare-fun b!5080867 () Bool)

(assert (=> b!5080867 (= e!3169383 e!3169384)))

(declare-fun c!872781 () Bool)

(assert (=> b!5080867 (= c!872781 ((_ is Leaf!25878) (right!43173 (right!43173 xs!286))))))

(declare-fun b!5080868 () Bool)

(assert (=> b!5080868 (= e!3169384 (list!19027 (xs!18954 (right!43173 (right!43173 xs!286)))))))

(assert (= (and d!1642506 c!872780) b!5080866))

(assert (= (and d!1642506 (not c!872780)) b!5080867))

(assert (= (and b!5080867 c!872781) b!5080868))

(assert (= (and b!5080867 (not c!872781)) b!5080869))

(declare-fun m!6133536 () Bool)

(assert (=> b!5080869 m!6133536))

(declare-fun m!6133538 () Bool)

(assert (=> b!5080869 m!6133538))

(assert (=> b!5080869 m!6133536))

(assert (=> b!5080869 m!6133538))

(declare-fun m!6133540 () Bool)

(assert (=> b!5080869 m!6133540))

(declare-fun m!6133542 () Bool)

(assert (=> b!5080868 m!6133542))

(assert (=> b!5080385 d!1642506))

(declare-fun d!1642510 () Bool)

(declare-fun e!3169387 () Bool)

(assert (=> d!1642510 e!3169387))

(declare-fun c!872784 () Bool)

(assert (=> d!1642510 (= c!872784 ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(assert (=> d!1642510 (= (appendAssoc!312 (list!19025 (left!42843 xs!286)) (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))) true)))

(declare-fun bm!354169 () Bool)

(declare-fun call!354176 () List!58576)

(assert (=> bm!354169 (= call!354176 (++!12811 (list!19025 (left!42843 xs!286)) (list!19025 (left!42843 (right!43173 xs!286)))))))

(declare-fun bm!354170 () Bool)

(declare-fun call!354175 () List!58576)

(declare-fun call!354177 () List!58576)

(assert (=> bm!354170 (= call!354175 (++!12811 (list!19025 (left!42843 xs!286)) call!354177))))

(declare-fun bm!354171 () Bool)

(assert (=> bm!354171 (= call!354177 (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))

(declare-fun b!5080874 () Bool)

(declare-fun call!354174 () List!58576)

(assert (=> b!5080874 (= e!3169387 (= call!354174 call!354175))))

(declare-fun bm!354172 () Bool)

(assert (=> bm!354172 (= call!354174 (++!12811 call!354176 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))

(declare-fun b!5080875 () Bool)

(assert (=> b!5080875 (= e!3169387 (= call!354174 call!354175))))

(declare-fun lt!2090936 () Bool)

(assert (=> b!5080875 (= lt!2090936 (appendAssoc!312 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))

(assert (= (and d!1642510 c!872784) b!5080874))

(assert (= (and d!1642510 (not c!872784)) b!5080875))

(assert (= (or b!5080874 b!5080875) bm!354169))

(assert (= (or b!5080874 b!5080875) bm!354171))

(assert (= (or b!5080874 b!5080875) bm!354170))

(assert (= (or b!5080874 b!5080875) bm!354172))

(assert (=> bm!354171 m!6133036))

(assert (=> bm!354171 m!6133038))

(declare-fun m!6133552 () Bool)

(assert (=> bm!354171 m!6133552))

(assert (=> bm!354170 m!6133030))

(declare-fun m!6133554 () Bool)

(assert (=> bm!354170 m!6133554))

(assert (=> bm!354172 m!6133038))

(declare-fun m!6133556 () Bool)

(assert (=> bm!354172 m!6133556))

(assert (=> bm!354169 m!6133030))

(assert (=> bm!354169 m!6133036))

(declare-fun m!6133558 () Bool)

(assert (=> bm!354169 m!6133558))

(assert (=> b!5080875 m!6133036))

(assert (=> b!5080875 m!6133038))

(declare-fun m!6133560 () Bool)

(assert (=> b!5080875 m!6133560))

(assert (=> b!5080385 d!1642510))

(declare-fun b!5080878 () Bool)

(declare-fun e!3169389 () List!58576)

(assert (=> b!5080878 (= e!3169389 Nil!58452)))

(declare-fun b!5080881 () Bool)

(declare-fun e!3169390 () List!58576)

(assert (=> b!5080881 (= e!3169390 (++!12811 (list!19025 (left!42843 (left!42843 (right!43173 xs!286)))) (list!19025 (right!43173 (left!42843 (right!43173 xs!286))))))))

(declare-fun d!1642514 () Bool)

(declare-fun c!872786 () Bool)

(assert (=> d!1642514 (= c!872786 ((_ is Empty!15582) (left!42843 (right!43173 xs!286))))))

(assert (=> d!1642514 (= (list!19025 (left!42843 (right!43173 xs!286))) e!3169389)))

(declare-fun b!5080879 () Bool)

(assert (=> b!5080879 (= e!3169389 e!3169390)))

(declare-fun c!872787 () Bool)

(assert (=> b!5080879 (= c!872787 ((_ is Leaf!25878) (left!42843 (right!43173 xs!286))))))

(declare-fun b!5080880 () Bool)

(assert (=> b!5080880 (= e!3169390 (list!19027 (xs!18954 (left!42843 (right!43173 xs!286)))))))

(assert (= (and d!1642514 c!872786) b!5080878))

(assert (= (and d!1642514 (not c!872786)) b!5080879))

(assert (= (and b!5080879 c!872787) b!5080880))

(assert (= (and b!5080879 (not c!872787)) b!5080881))

(declare-fun m!6133572 () Bool)

(assert (=> b!5080881 m!6133572))

(declare-fun m!6133574 () Bool)

(assert (=> b!5080881 m!6133574))

(assert (=> b!5080881 m!6133572))

(assert (=> b!5080881 m!6133574))

(declare-fun m!6133576 () Bool)

(assert (=> b!5080881 m!6133576))

(declare-fun m!6133578 () Bool)

(assert (=> b!5080880 m!6133578))

(assert (=> b!5080385 d!1642514))

(declare-fun b!5080887 () Bool)

(declare-fun e!3169393 () List!58576)

(assert (=> b!5080887 (= e!3169393 (Cons!58452 (h!64900 (list!19025 (right!43173 (right!43173 xs!286)))) (++!12811 (t!371393 (list!19025 (right!43173 (right!43173 xs!286)))) (list!19025 ys!41))))))

(declare-fun d!1642518 () Bool)

(declare-fun e!3169394 () Bool)

(assert (=> d!1642518 e!3169394))

(declare-fun res!2163089 () Bool)

(assert (=> d!1642518 (=> (not res!2163089) (not e!3169394))))

(declare-fun lt!2090938 () List!58576)

(assert (=> d!1642518 (= res!2163089 (= (content!10428 lt!2090938) ((_ map or) (content!10428 (list!19025 (right!43173 (right!43173 xs!286)))) (content!10428 (list!19025 ys!41)))))))

(assert (=> d!1642518 (= lt!2090938 e!3169393)))

(declare-fun c!872790 () Bool)

(assert (=> d!1642518 (= c!872790 ((_ is Nil!58452) (list!19025 (right!43173 (right!43173 xs!286)))))))

(assert (=> d!1642518 (= (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)) lt!2090938)))

(declare-fun b!5080886 () Bool)

(assert (=> b!5080886 (= e!3169393 (list!19025 ys!41))))

(declare-fun b!5080888 () Bool)

(declare-fun res!2163088 () Bool)

(assert (=> b!5080888 (=> (not res!2163088) (not e!3169394))))

(assert (=> b!5080888 (= res!2163088 (= (size!39113 lt!2090938) (+ (size!39113 (list!19025 (right!43173 (right!43173 xs!286)))) (size!39113 (list!19025 ys!41)))))))

(declare-fun b!5080889 () Bool)

(assert (=> b!5080889 (= e!3169394 (or (not (= (list!19025 ys!41) Nil!58452)) (= lt!2090938 (list!19025 (right!43173 (right!43173 xs!286))))))))

(assert (= (and d!1642518 c!872790) b!5080886))

(assert (= (and d!1642518 (not c!872790)) b!5080887))

(assert (= (and d!1642518 res!2163089) b!5080888))

(assert (= (and b!5080888 res!2163088) b!5080889))

(assert (=> b!5080887 m!6132964))

(declare-fun m!6133588 () Bool)

(assert (=> b!5080887 m!6133588))

(declare-fun m!6133590 () Bool)

(assert (=> d!1642518 m!6133590))

(assert (=> d!1642518 m!6133042))

(declare-fun m!6133592 () Bool)

(assert (=> d!1642518 m!6133592))

(assert (=> d!1642518 m!6132964))

(assert (=> d!1642518 m!6133322))

(declare-fun m!6133594 () Bool)

(assert (=> b!5080888 m!6133594))

(assert (=> b!5080888 m!6133042))

(declare-fun m!6133596 () Bool)

(assert (=> b!5080888 m!6133596))

(assert (=> b!5080888 m!6132964))

(assert (=> b!5080888 m!6133332))

(assert (=> b!5080385 d!1642518))

(declare-fun d!1642522 () Bool)

(declare-fun res!2163096 () Bool)

(declare-fun e!3169397 () Bool)

(assert (=> d!1642522 (=> res!2163096 e!3169397)))

(assert (=> d!1642522 (= res!2163096 (not ((_ is Node!15582) (right!43173 lt!2090875))))))

(assert (=> d!1642522 (= (isBalanced!4444 (right!43173 lt!2090875)) e!3169397)))

(declare-fun b!5080894 () Bool)

(declare-fun res!2163092 () Bool)

(declare-fun e!3169398 () Bool)

(assert (=> b!5080894 (=> (not res!2163092) (not e!3169398))))

(assert (=> b!5080894 (= res!2163092 (<= (- (height!2159 (left!42843 (right!43173 lt!2090875))) (height!2159 (right!43173 (right!43173 lt!2090875)))) 1))))

(declare-fun b!5080895 () Bool)

(declare-fun res!2163093 () Bool)

(assert (=> b!5080895 (=> (not res!2163093) (not e!3169398))))

(assert (=> b!5080895 (= res!2163093 (isBalanced!4444 (right!43173 (right!43173 lt!2090875))))))

(declare-fun b!5080896 () Bool)

(declare-fun res!2163095 () Bool)

(assert (=> b!5080896 (=> (not res!2163095) (not e!3169398))))

(assert (=> b!5080896 (= res!2163095 (isBalanced!4444 (left!42843 (right!43173 lt!2090875))))))

(declare-fun b!5080897 () Bool)

(assert (=> b!5080897 (= e!3169397 e!3169398)))

(declare-fun res!2163094 () Bool)

(assert (=> b!5080897 (=> (not res!2163094) (not e!3169398))))

(assert (=> b!5080897 (= res!2163094 (<= (- 1) (- (height!2159 (left!42843 (right!43173 lt!2090875))) (height!2159 (right!43173 (right!43173 lt!2090875))))))))

(declare-fun b!5080898 () Bool)

(declare-fun res!2163097 () Bool)

(assert (=> b!5080898 (=> (not res!2163097) (not e!3169398))))

(assert (=> b!5080898 (= res!2163097 (not (isEmpty!31667 (left!42843 (right!43173 lt!2090875)))))))

(declare-fun b!5080899 () Bool)

(assert (=> b!5080899 (= e!3169398 (not (isEmpty!31667 (right!43173 (right!43173 lt!2090875)))))))

(assert (= (and d!1642522 (not res!2163096)) b!5080897))

(assert (= (and b!5080897 res!2163094) b!5080894))

(assert (= (and b!5080894 res!2163092) b!5080896))

(assert (= (and b!5080896 res!2163095) b!5080895))

(assert (= (and b!5080895 res!2163093) b!5080898))

(assert (= (and b!5080898 res!2163097) b!5080899))

(declare-fun m!6133608 () Bool)

(assert (=> b!5080895 m!6133608))

(declare-fun m!6133614 () Bool)

(assert (=> b!5080894 m!6133614))

(declare-fun m!6133616 () Bool)

(assert (=> b!5080894 m!6133616))

(declare-fun m!6133618 () Bool)

(assert (=> b!5080899 m!6133618))

(assert (=> b!5080897 m!6133614))

(assert (=> b!5080897 m!6133616))

(declare-fun m!6133620 () Bool)

(assert (=> b!5080898 m!6133620))

(declare-fun m!6133622 () Bool)

(assert (=> b!5080896 m!6133622))

(assert (=> b!5080743 d!1642522))

(declare-fun d!1642528 () Bool)

(declare-fun c!872794 () Bool)

(assert (=> d!1642528 (= c!872794 ((_ is Node!15582) (left!42843 (right!43173 xs!286))))))

(declare-fun e!3169403 () Bool)

(assert (=> d!1642528 (= (inv!77654 (left!42843 (right!43173 xs!286))) e!3169403)))

(declare-fun b!5080906 () Bool)

(assert (=> b!5080906 (= e!3169403 (inv!77656 (left!42843 (right!43173 xs!286))))))

(declare-fun b!5080907 () Bool)

(declare-fun e!3169404 () Bool)

(assert (=> b!5080907 (= e!3169403 e!3169404)))

(declare-fun res!2163100 () Bool)

(assert (=> b!5080907 (= res!2163100 (not ((_ is Leaf!25878) (left!42843 (right!43173 xs!286)))))))

(assert (=> b!5080907 (=> res!2163100 e!3169404)))

(declare-fun b!5080908 () Bool)

(assert (=> b!5080908 (= e!3169404 (inv!77657 (left!42843 (right!43173 xs!286))))))

(assert (= (and d!1642528 c!872794) b!5080906))

(assert (= (and d!1642528 (not c!872794)) b!5080907))

(assert (= (and b!5080907 (not res!2163100)) b!5080908))

(declare-fun m!6133628 () Bool)

(assert (=> b!5080906 m!6133628))

(declare-fun m!6133630 () Bool)

(assert (=> b!5080908 m!6133630))

(assert (=> b!5080770 d!1642528))

(declare-fun d!1642532 () Bool)

(declare-fun c!872795 () Bool)

(assert (=> d!1642532 (= c!872795 ((_ is Node!15582) (right!43173 (right!43173 xs!286))))))

(declare-fun e!3169405 () Bool)

(assert (=> d!1642532 (= (inv!77654 (right!43173 (right!43173 xs!286))) e!3169405)))

(declare-fun b!5080909 () Bool)

(assert (=> b!5080909 (= e!3169405 (inv!77656 (right!43173 (right!43173 xs!286))))))

(declare-fun b!5080910 () Bool)

(declare-fun e!3169406 () Bool)

(assert (=> b!5080910 (= e!3169405 e!3169406)))

(declare-fun res!2163101 () Bool)

(assert (=> b!5080910 (= res!2163101 (not ((_ is Leaf!25878) (right!43173 (right!43173 xs!286)))))))

(assert (=> b!5080910 (=> res!2163101 e!3169406)))

(declare-fun b!5080911 () Bool)

(assert (=> b!5080911 (= e!3169406 (inv!77657 (right!43173 (right!43173 xs!286))))))

(assert (= (and d!1642532 c!872795) b!5080909))

(assert (= (and d!1642532 (not c!872795)) b!5080910))

(assert (= (and b!5080910 (not res!2163101)) b!5080911))

(declare-fun m!6133632 () Bool)

(assert (=> b!5080909 m!6133632))

(declare-fun m!6133634 () Bool)

(assert (=> b!5080911 m!6133634))

(assert (=> b!5080770 d!1642532))

(declare-fun d!1642534 () Bool)

(declare-fun e!3169407 () Bool)

(assert (=> d!1642534 e!3169407))

(declare-fun c!872796 () Bool)

(assert (=> d!1642534 (= c!872796 ((_ is Nil!58452) (list!19025 (left!42843 (right!43173 xs!286)))))))

(assert (=> d!1642534 (= (appendAssoc!312 (list!19025 (left!42843 (right!43173 xs!286))) (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)) true)))

(declare-fun bm!354177 () Bool)

(declare-fun call!354184 () List!58576)

(assert (=> bm!354177 (= call!354184 (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) (list!19025 (right!43173 (right!43173 xs!286)))))))

(declare-fun bm!354178 () Bool)

(declare-fun call!354183 () List!58576)

(declare-fun call!354185 () List!58576)

(assert (=> bm!354178 (= call!354183 (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) call!354185))))

(declare-fun bm!354179 () Bool)

(assert (=> bm!354179 (= call!354185 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)))))

(declare-fun b!5080912 () Bool)

(declare-fun call!354182 () List!58576)

(assert (=> b!5080912 (= e!3169407 (= call!354182 call!354183))))

(declare-fun bm!354180 () Bool)

(assert (=> bm!354180 (= call!354182 (++!12811 call!354184 (list!19025 ys!41)))))

(declare-fun b!5080913 () Bool)

(assert (=> b!5080913 (= e!3169407 (= call!354182 call!354183))))

(declare-fun lt!2090940 () Bool)

(assert (=> b!5080913 (= lt!2090940 (appendAssoc!312 (t!371393 (list!19025 (left!42843 (right!43173 xs!286)))) (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)))))

(assert (= (and d!1642534 c!872796) b!5080912))

(assert (= (and d!1642534 (not c!872796)) b!5080913))

(assert (= (or b!5080912 b!5080913) bm!354177))

(assert (= (or b!5080912 b!5080913) bm!354179))

(assert (= (or b!5080912 b!5080913) bm!354178))

(assert (= (or b!5080912 b!5080913) bm!354180))

(assert (=> bm!354179 m!6133042))

(assert (=> bm!354179 m!6132964))

(assert (=> bm!354179 m!6133038))

(assert (=> bm!354178 m!6133036))

(declare-fun m!6133636 () Bool)

(assert (=> bm!354178 m!6133636))

(assert (=> bm!354180 m!6132964))

(declare-fun m!6133638 () Bool)

(assert (=> bm!354180 m!6133638))

(assert (=> bm!354177 m!6133036))

(assert (=> bm!354177 m!6133042))

(assert (=> bm!354177 m!6133432))

(assert (=> b!5080913 m!6133042))

(assert (=> b!5080913 m!6132964))

(declare-fun m!6133640 () Bool)

(assert (=> b!5080913 m!6133640))

(assert (=> b!5080381 d!1642534))

(assert (=> b!5080381 d!1642514))

(assert (=> b!5080381 d!1642506))

(assert (=> b!5080381 d!1642448))

(assert (=> b!5080327 d!1642384))

(assert (=> b!5080327 d!1642386))

(declare-fun d!1642536 () Bool)

(declare-fun res!2163102 () Bool)

(declare-fun e!3169408 () Bool)

(assert (=> d!1642536 (=> (not res!2163102) (not e!3169408))))

(assert (=> d!1642536 (= res!2163102 (= (csize!31394 (left!42843 xs!286)) (+ (size!39112 (left!42843 (left!42843 xs!286))) (size!39112 (right!43173 (left!42843 xs!286))))))))

(assert (=> d!1642536 (= (inv!77656 (left!42843 xs!286)) e!3169408)))

(declare-fun b!5080914 () Bool)

(declare-fun res!2163103 () Bool)

(assert (=> b!5080914 (=> (not res!2163103) (not e!3169408))))

(assert (=> b!5080914 (= res!2163103 (and (not (= (left!42843 (left!42843 xs!286)) Empty!15582)) (not (= (right!43173 (left!42843 xs!286)) Empty!15582))))))

(declare-fun b!5080915 () Bool)

(declare-fun res!2163104 () Bool)

(assert (=> b!5080915 (=> (not res!2163104) (not e!3169408))))

(assert (=> b!5080915 (= res!2163104 (= (cheight!15793 (left!42843 xs!286)) (+ (max!0 (height!2159 (left!42843 (left!42843 xs!286))) (height!2159 (right!43173 (left!42843 xs!286)))) 1)))))

(declare-fun b!5080916 () Bool)

(assert (=> b!5080916 (= e!3169408 (<= 0 (cheight!15793 (left!42843 xs!286))))))

(assert (= (and d!1642536 res!2163102) b!5080914))

(assert (= (and b!5080914 res!2163103) b!5080915))

(assert (= (and b!5080915 res!2163104) b!5080916))

(declare-fun m!6133642 () Bool)

(assert (=> d!1642536 m!6133642))

(declare-fun m!6133644 () Bool)

(assert (=> d!1642536 m!6133644))

(declare-fun m!6133646 () Bool)

(assert (=> b!5080915 m!6133646))

(declare-fun m!6133648 () Bool)

(assert (=> b!5080915 m!6133648))

(assert (=> b!5080915 m!6133646))

(assert (=> b!5080915 m!6133648))

(declare-fun m!6133650 () Bool)

(assert (=> b!5080915 m!6133650))

(assert (=> b!5080423 d!1642536))

(declare-fun d!1642538 () Bool)

(declare-fun lt!2090947 () Bool)

(declare-fun isEmpty!31669 (List!58576) Bool)

(assert (=> d!1642538 (= lt!2090947 (isEmpty!31669 (list!19025 (right!43173 ys!41))))))

(assert (=> d!1642538 (= lt!2090947 (= (size!39112 (right!43173 ys!41)) 0))))

(assert (=> d!1642538 (= (isEmpty!31667 (right!43173 ys!41)) lt!2090947)))

(declare-fun bs!1190636 () Bool)

(assert (= bs!1190636 d!1642538))

(assert (=> bs!1190636 m!6133016))

(assert (=> bs!1190636 m!6133016))

(declare-fun m!6133670 () Bool)

(assert (=> bs!1190636 m!6133670))

(assert (=> bs!1190636 m!6133082))

(assert (=> b!5080729 d!1642538))

(declare-fun d!1642548 () Bool)

(assert (=> d!1642548 (= (inv!77655 (xs!18954 (right!43173 ys!41))) (<= (size!39113 (innerList!15670 (xs!18954 (right!43173 ys!41)))) 2147483647))))

(declare-fun bs!1190637 () Bool)

(assert (= bs!1190637 d!1642548))

(declare-fun m!6133674 () Bool)

(assert (=> bs!1190637 m!6133674))

(assert (=> b!5080760 d!1642548))

(declare-fun b!5080923 () Bool)

(declare-fun e!3169415 () Conc!15582)

(assert (=> b!5080923 (= e!3169415 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))))

(declare-fun lt!2090948 () Conc!15582)

(declare-fun d!1642552 () Bool)

(assert (=> d!1642552 (= (list!19025 lt!2090948) (++!12811 (list!19025 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) (list!19025 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))))))

(assert (=> d!1642552 (= lt!2090948 e!3169415)))

(declare-fun c!872797 () Bool)

(assert (=> d!1642552 (= c!872797 (= (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))) Empty!15582))))

(assert (=> d!1642552 (= (<>!402 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))) (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) lt!2090948)))

(declare-fun b!5080924 () Bool)

(declare-fun e!3169417 () Conc!15582)

(assert (=> b!5080924 (= e!3169415 e!3169417)))

(declare-fun c!872798 () Bool)

(assert (=> b!5080924 (= c!872798 (= (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))) Empty!15582))))

(declare-fun b!5080926 () Bool)

(assert (=> b!5080926 (= e!3169417 (Node!15582 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))) (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))) (+ (size!39112 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) (size!39112 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))) (+ (max!0 (height!2159 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) (height!2159 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))) 1)))))

(declare-fun b!5080925 () Bool)

(assert (=> b!5080925 (= e!3169417 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(assert (= (and d!1642552 c!872797) b!5080923))

(assert (= (and d!1642552 (not c!872797)) b!5080924))

(assert (= (and b!5080924 c!872798) b!5080925))

(assert (= (and b!5080924 (not c!872798)) b!5080926))

(declare-fun m!6133678 () Bool)

(assert (=> d!1642552 m!6133678))

(declare-fun m!6133680 () Bool)

(assert (=> d!1642552 m!6133680))

(declare-fun m!6133682 () Bool)

(assert (=> d!1642552 m!6133682))

(assert (=> d!1642552 m!6133680))

(assert (=> d!1642552 m!6133682))

(declare-fun m!6133688 () Bool)

(assert (=> d!1642552 m!6133688))

(declare-fun m!6133690 () Bool)

(assert (=> b!5080926 m!6133690))

(declare-fun m!6133694 () Bool)

(assert (=> b!5080926 m!6133694))

(assert (=> b!5080926 m!6133694))

(declare-fun m!6133700 () Bool)

(assert (=> b!5080926 m!6133700))

(declare-fun m!6133702 () Bool)

(assert (=> b!5080926 m!6133702))

(assert (=> b!5080926 m!6133700))

(declare-fun m!6133704 () Bool)

(assert (=> b!5080926 m!6133704))

(assert (=> bm!354097 d!1642552))

(assert (=> b!5080727 d!1642382))

(assert (=> b!5080727 d!1642380))

(declare-fun d!1642556 () Bool)

(assert (=> d!1642556 (= (height!2159 lt!2090909) (ite ((_ is Empty!15582) lt!2090909) 0 (ite ((_ is Leaf!25878) lt!2090909) 1 (cheight!15793 lt!2090909))))))

(assert (=> b!5080582 d!1642556))

(declare-fun d!1642558 () Bool)

(assert (=> d!1642558 (= (max!0 (height!2159 xs!286) (height!2159 (left!42843 (left!42843 ys!41)))) (ite (< (height!2159 xs!286) (height!2159 (left!42843 (left!42843 ys!41)))) (height!2159 (left!42843 (left!42843 ys!41))) (height!2159 xs!286)))))

(assert (=> b!5080582 d!1642558))

(assert (=> b!5080582 d!1642452))

(declare-fun d!1642560 () Bool)

(assert (=> d!1642560 (= (height!2159 (left!42843 (left!42843 ys!41))) (ite ((_ is Empty!15582) (left!42843 (left!42843 ys!41))) 0 (ite ((_ is Leaf!25878) (left!42843 (left!42843 ys!41))) 1 (cheight!15793 (left!42843 (left!42843 ys!41))))))))

(assert (=> b!5080582 d!1642560))

(assert (=> b!5080581 d!1642560))

(assert (=> b!5080581 d!1642452))

(declare-fun d!1642562 () Bool)

(declare-fun c!872801 () Bool)

(assert (=> d!1642562 (= c!872801 ((_ is Nil!58452) lt!2090919))))

(declare-fun e!3169426 () (InoxSet T!105244))

(assert (=> d!1642562 (= (content!10428 lt!2090919) e!3169426)))

(declare-fun b!5080944 () Bool)

(assert (=> b!5080944 (= e!3169426 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5080945 () Bool)

(assert (=> b!5080945 (= e!3169426 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 lt!2090919) true) (content!10428 (t!371393 lt!2090919))))))

(assert (= (and d!1642562 c!872801) b!5080944))

(assert (= (and d!1642562 (not c!872801)) b!5080945))

(declare-fun m!6133720 () Bool)

(assert (=> b!5080945 m!6133720))

(declare-fun m!6133722 () Bool)

(assert (=> b!5080945 m!6133722))

(assert (=> d!1642422 d!1642562))

(declare-fun d!1642566 () Bool)

(declare-fun c!872802 () Bool)

(assert (=> d!1642566 (= c!872802 ((_ is Nil!58452) (list!19025 xs!286)))))

(declare-fun e!3169427 () (InoxSet T!105244))

(assert (=> d!1642566 (= (content!10428 (list!19025 xs!286)) e!3169427)))

(declare-fun b!5080946 () Bool)

(assert (=> b!5080946 (= e!3169427 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5080947 () Bool)

(assert (=> b!5080947 (= e!3169427 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 xs!286)) true) (content!10428 (t!371393 (list!19025 xs!286)))))))

(assert (= (and d!1642566 c!872802) b!5080946))

(assert (= (and d!1642566 (not c!872802)) b!5080947))

(declare-fun m!6133724 () Bool)

(assert (=> b!5080947 m!6133724))

(declare-fun m!6133726 () Bool)

(assert (=> b!5080947 m!6133726))

(assert (=> d!1642422 d!1642566))

(declare-fun d!1642568 () Bool)

(declare-fun c!872803 () Bool)

(assert (=> d!1642568 (= c!872803 ((_ is Nil!58452) (list!19025 ys!41)))))

(declare-fun e!3169428 () (InoxSet T!105244))

(assert (=> d!1642568 (= (content!10428 (list!19025 ys!41)) e!3169428)))

(declare-fun b!5080948 () Bool)

(assert (=> b!5080948 (= e!3169428 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5080949 () Bool)

(assert (=> b!5080949 (= e!3169428 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 ys!41)) true) (content!10428 (t!371393 (list!19025 ys!41)))))))

(assert (= (and d!1642568 c!872803) b!5080948))

(assert (= (and d!1642568 (not c!872803)) b!5080949))

(declare-fun m!6133728 () Bool)

(assert (=> b!5080949 m!6133728))

(declare-fun m!6133730 () Bool)

(assert (=> b!5080949 m!6133730))

(assert (=> d!1642422 d!1642568))

(declare-fun d!1642570 () Bool)

(declare-fun res!2163128 () Bool)

(declare-fun e!3169429 () Bool)

(assert (=> d!1642570 (=> res!2163128 e!3169429)))

(assert (=> d!1642570 (= res!2163128 (not ((_ is Node!15582) (right!43173 ys!41))))))

(assert (=> d!1642570 (= (isBalanced!4444 (right!43173 ys!41)) e!3169429)))

(declare-fun b!5080950 () Bool)

(declare-fun res!2163124 () Bool)

(declare-fun e!3169430 () Bool)

(assert (=> b!5080950 (=> (not res!2163124) (not e!3169430))))

(assert (=> b!5080950 (= res!2163124 (<= (- (height!2159 (left!42843 (right!43173 ys!41))) (height!2159 (right!43173 (right!43173 ys!41)))) 1))))

(declare-fun b!5080951 () Bool)

(declare-fun res!2163125 () Bool)

(assert (=> b!5080951 (=> (not res!2163125) (not e!3169430))))

(assert (=> b!5080951 (= res!2163125 (isBalanced!4444 (right!43173 (right!43173 ys!41))))))

(declare-fun b!5080952 () Bool)

(declare-fun res!2163127 () Bool)

(assert (=> b!5080952 (=> (not res!2163127) (not e!3169430))))

(assert (=> b!5080952 (= res!2163127 (isBalanced!4444 (left!42843 (right!43173 ys!41))))))

(declare-fun b!5080953 () Bool)

(assert (=> b!5080953 (= e!3169429 e!3169430)))

(declare-fun res!2163126 () Bool)

(assert (=> b!5080953 (=> (not res!2163126) (not e!3169430))))

(assert (=> b!5080953 (= res!2163126 (<= (- 1) (- (height!2159 (left!42843 (right!43173 ys!41))) (height!2159 (right!43173 (right!43173 ys!41))))))))

(declare-fun b!5080954 () Bool)

(declare-fun res!2163129 () Bool)

(assert (=> b!5080954 (=> (not res!2163129) (not e!3169430))))

(assert (=> b!5080954 (= res!2163129 (not (isEmpty!31667 (left!42843 (right!43173 ys!41)))))))

(declare-fun b!5080955 () Bool)

(assert (=> b!5080955 (= e!3169430 (not (isEmpty!31667 (right!43173 (right!43173 ys!41)))))))

(assert (= (and d!1642570 (not res!2163128)) b!5080953))

(assert (= (and b!5080953 res!2163126) b!5080950))

(assert (= (and b!5080950 res!2163124) b!5080952))

(assert (= (and b!5080952 res!2163127) b!5080951))

(assert (= (and b!5080951 res!2163125) b!5080954))

(assert (= (and b!5080954 res!2163129) b!5080955))

(declare-fun m!6133732 () Bool)

(assert (=> b!5080951 m!6133732))

(declare-fun m!6133734 () Bool)

(assert (=> b!5080950 m!6133734))

(declare-fun m!6133736 () Bool)

(assert (=> b!5080950 m!6133736))

(declare-fun m!6133738 () Bool)

(assert (=> b!5080955 m!6133738))

(assert (=> b!5080953 m!6133734))

(assert (=> b!5080953 m!6133736))

(declare-fun m!6133740 () Bool)

(assert (=> b!5080954 m!6133740))

(declare-fun m!6133742 () Bool)

(assert (=> b!5080952 m!6133742))

(assert (=> b!5080725 d!1642570))

(declare-fun d!1642572 () Bool)

(declare-fun lt!2090951 () Int)

(assert (=> d!1642572 (>= lt!2090951 0)))

(declare-fun e!3169434 () Int)

(assert (=> d!1642572 (= lt!2090951 e!3169434)))

(declare-fun c!872806 () Bool)

(assert (=> d!1642572 (= c!872806 ((_ is Nil!58452) lt!2090919))))

(assert (=> d!1642572 (= (size!39113 lt!2090919) lt!2090951)))

(declare-fun b!5080962 () Bool)

(assert (=> b!5080962 (= e!3169434 0)))

(declare-fun b!5080963 () Bool)

(assert (=> b!5080963 (= e!3169434 (+ 1 (size!39113 (t!371393 lt!2090919))))))

(assert (= (and d!1642572 c!872806) b!5080962))

(assert (= (and d!1642572 (not c!872806)) b!5080963))

(declare-fun m!6133746 () Bool)

(assert (=> b!5080963 m!6133746))

(assert (=> b!5080693 d!1642572))

(declare-fun d!1642584 () Bool)

(declare-fun lt!2090952 () Int)

(assert (=> d!1642584 (>= lt!2090952 0)))

(declare-fun e!3169435 () Int)

(assert (=> d!1642584 (= lt!2090952 e!3169435)))

(declare-fun c!872807 () Bool)

(assert (=> d!1642584 (= c!872807 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1642584 (= (size!39113 (list!19025 xs!286)) lt!2090952)))

(declare-fun b!5080964 () Bool)

(assert (=> b!5080964 (= e!3169435 0)))

(declare-fun b!5080965 () Bool)

(assert (=> b!5080965 (= e!3169435 (+ 1 (size!39113 (t!371393 (list!19025 xs!286)))))))

(assert (= (and d!1642584 c!872807) b!5080964))

(assert (= (and d!1642584 (not c!872807)) b!5080965))

(declare-fun m!6133748 () Bool)

(assert (=> b!5080965 m!6133748))

(assert (=> b!5080693 d!1642584))

(declare-fun d!1642586 () Bool)

(declare-fun lt!2090953 () Int)

(assert (=> d!1642586 (>= lt!2090953 0)))

(declare-fun e!3169436 () Int)

(assert (=> d!1642586 (= lt!2090953 e!3169436)))

(declare-fun c!872808 () Bool)

(assert (=> d!1642586 (= c!872808 ((_ is Nil!58452) (list!19025 ys!41)))))

(assert (=> d!1642586 (= (size!39113 (list!19025 ys!41)) lt!2090953)))

(declare-fun b!5080966 () Bool)

(assert (=> b!5080966 (= e!3169436 0)))

(declare-fun b!5080967 () Bool)

(assert (=> b!5080967 (= e!3169436 (+ 1 (size!39113 (t!371393 (list!19025 ys!41)))))))

(assert (= (and d!1642586 c!872808) b!5080966))

(assert (= (and d!1642586 (not c!872808)) b!5080967))

(declare-fun m!6133750 () Bool)

(assert (=> b!5080967 m!6133750))

(assert (=> b!5080693 d!1642586))

(declare-fun d!1642588 () Bool)

(declare-fun res!2163132 () Bool)

(declare-fun e!3169437 () Bool)

(assert (=> d!1642588 (=> (not res!2163132) (not e!3169437))))

(assert (=> d!1642588 (= res!2163132 (<= (size!39113 (list!19027 (xs!18954 (left!42843 ys!41)))) 512))))

(assert (=> d!1642588 (= (inv!77657 (left!42843 ys!41)) e!3169437)))

(declare-fun b!5080968 () Bool)

(declare-fun res!2163133 () Bool)

(assert (=> b!5080968 (=> (not res!2163133) (not e!3169437))))

(assert (=> b!5080968 (= res!2163133 (= (csize!31395 (left!42843 ys!41)) (size!39113 (list!19027 (xs!18954 (left!42843 ys!41))))))))

(declare-fun b!5080969 () Bool)

(assert (=> b!5080969 (= e!3169437 (and (> (csize!31395 (left!42843 ys!41)) 0) (<= (csize!31395 (left!42843 ys!41)) 512)))))

(assert (= (and d!1642588 res!2163132) b!5080968))

(assert (= (and b!5080968 res!2163133) b!5080969))

(declare-fun m!6133752 () Bool)

(assert (=> d!1642588 m!6133752))

(assert (=> d!1642588 m!6133752))

(declare-fun m!6133754 () Bool)

(assert (=> d!1642588 m!6133754))

(assert (=> b!5080968 m!6133752))

(assert (=> b!5080968 m!6133752))

(assert (=> b!5080968 m!6133754))

(assert (=> b!5080346 d!1642588))

(declare-fun d!1642590 () Bool)

(declare-fun lt!2090954 () Bool)

(assert (=> d!1642590 (= lt!2090954 (isEmpty!31669 (list!19025 (right!43173 xs!286))))))

(assert (=> d!1642590 (= lt!2090954 (= (size!39112 (right!43173 xs!286)) 0))))

(assert (=> d!1642590 (= (isEmpty!31667 (right!43173 xs!286)) lt!2090954)))

(declare-fun bs!1190639 () Bool)

(assert (= bs!1190639 d!1642590))

(assert (=> bs!1190639 m!6133032))

(assert (=> bs!1190639 m!6133032))

(declare-fun m!6133756 () Bool)

(assert (=> bs!1190639 m!6133756))

(declare-fun m!6133758 () Bool)

(assert (=> bs!1190639 m!6133758))

(assert (=> b!5080735 d!1642590))

(declare-fun d!1642592 () Bool)

(declare-fun c!872809 () Bool)

(assert (=> d!1642592 (= c!872809 ((_ is Node!15582) (left!42843 (left!42843 xs!286))))))

(declare-fun e!3169438 () Bool)

(assert (=> d!1642592 (= (inv!77654 (left!42843 (left!42843 xs!286))) e!3169438)))

(declare-fun b!5080970 () Bool)

(assert (=> b!5080970 (= e!3169438 (inv!77656 (left!42843 (left!42843 xs!286))))))

(declare-fun b!5080971 () Bool)

(declare-fun e!3169439 () Bool)

(assert (=> b!5080971 (= e!3169438 e!3169439)))

(declare-fun res!2163134 () Bool)

(assert (=> b!5080971 (= res!2163134 (not ((_ is Leaf!25878) (left!42843 (left!42843 xs!286)))))))

(assert (=> b!5080971 (=> res!2163134 e!3169439)))

(declare-fun b!5080972 () Bool)

(assert (=> b!5080972 (= e!3169439 (inv!77657 (left!42843 (left!42843 xs!286))))))

(assert (= (and d!1642592 c!872809) b!5080970))

(assert (= (and d!1642592 (not c!872809)) b!5080971))

(assert (= (and b!5080971 (not res!2163134)) b!5080972))

(declare-fun m!6133760 () Bool)

(assert (=> b!5080970 m!6133760))

(declare-fun m!6133762 () Bool)

(assert (=> b!5080972 m!6133762))

(assert (=> b!5080767 d!1642592))

(declare-fun d!1642594 () Bool)

(declare-fun c!872810 () Bool)

(assert (=> d!1642594 (= c!872810 ((_ is Node!15582) (right!43173 (left!42843 xs!286))))))

(declare-fun e!3169440 () Bool)

(assert (=> d!1642594 (= (inv!77654 (right!43173 (left!42843 xs!286))) e!3169440)))

(declare-fun b!5080973 () Bool)

(assert (=> b!5080973 (= e!3169440 (inv!77656 (right!43173 (left!42843 xs!286))))))

(declare-fun b!5080974 () Bool)

(declare-fun e!3169441 () Bool)

(assert (=> b!5080974 (= e!3169440 e!3169441)))

(declare-fun res!2163135 () Bool)

(assert (=> b!5080974 (= res!2163135 (not ((_ is Leaf!25878) (right!43173 (left!42843 xs!286)))))))

(assert (=> b!5080974 (=> res!2163135 e!3169441)))

(declare-fun b!5080975 () Bool)

(assert (=> b!5080975 (= e!3169441 (inv!77657 (right!43173 (left!42843 xs!286))))))

(assert (= (and d!1642594 c!872810) b!5080973))

(assert (= (and d!1642594 (not c!872810)) b!5080974))

(assert (= (and b!5080974 (not res!2163135)) b!5080975))

(declare-fun m!6133764 () Bool)

(assert (=> b!5080973 m!6133764))

(declare-fun m!6133766 () Bool)

(assert (=> b!5080975 m!6133766))

(assert (=> b!5080767 d!1642594))

(declare-fun b!5080976 () Bool)

(declare-fun e!3169442 () List!58576)

(assert (=> b!5080976 (= e!3169442 Nil!58452)))

(declare-fun b!5080979 () Bool)

(declare-fun e!3169443 () List!58576)

(assert (=> b!5080979 (= e!3169443 (++!12811 (list!19025 (left!42843 lt!2090885)) (list!19025 (right!43173 lt!2090885))))))

(declare-fun d!1642596 () Bool)

(declare-fun c!872811 () Bool)

(assert (=> d!1642596 (= c!872811 ((_ is Empty!15582) lt!2090885))))

(assert (=> d!1642596 (= (list!19025 lt!2090885) e!3169442)))

(declare-fun b!5080977 () Bool)

(assert (=> b!5080977 (= e!3169442 e!3169443)))

(declare-fun c!872812 () Bool)

(assert (=> b!5080977 (= c!872812 ((_ is Leaf!25878) lt!2090885))))

(declare-fun b!5080978 () Bool)

(assert (=> b!5080978 (= e!3169443 (list!19027 (xs!18954 lt!2090885)))))

(assert (= (and d!1642596 c!872811) b!5080976))

(assert (= (and d!1642596 (not c!872811)) b!5080977))

(assert (= (and b!5080977 c!872812) b!5080978))

(assert (= (and b!5080977 (not c!872812)) b!5080979))

(declare-fun m!6133768 () Bool)

(assert (=> b!5080979 m!6133768))

(declare-fun m!6133770 () Bool)

(assert (=> b!5080979 m!6133770))

(assert (=> b!5080979 m!6133768))

(assert (=> b!5080979 m!6133770))

(declare-fun m!6133772 () Bool)

(assert (=> b!5080979 m!6133772))

(declare-fun m!6133774 () Bool)

(assert (=> b!5080978 m!6133774))

(assert (=> d!1642378 d!1642596))

(declare-fun b!5080981 () Bool)

(declare-fun e!3169446 () List!58576)

(assert (=> b!5080981 (= e!3169446 (Cons!58452 (h!64900 (list!19025 (right!43173 (left!42843 ys!41)))) (++!12811 (t!371393 (list!19025 (right!43173 (left!42843 ys!41)))) (list!19025 (right!43173 ys!41)))))))

(declare-fun d!1642598 () Bool)

(declare-fun e!3169447 () Bool)

(assert (=> d!1642598 e!3169447))

(declare-fun res!2163139 () Bool)

(assert (=> d!1642598 (=> (not res!2163139) (not e!3169447))))

(declare-fun lt!2090955 () List!58576)

(assert (=> d!1642598 (= res!2163139 (= (content!10428 lt!2090955) ((_ map or) (content!10428 (list!19025 (right!43173 (left!42843 ys!41)))) (content!10428 (list!19025 (right!43173 ys!41))))))))

(assert (=> d!1642598 (= lt!2090955 e!3169446)))

(declare-fun c!872813 () Bool)

(assert (=> d!1642598 (= c!872813 ((_ is Nil!58452) (list!19025 (right!43173 (left!42843 ys!41)))))))

(assert (=> d!1642598 (= (++!12811 (list!19025 (right!43173 (left!42843 ys!41))) (list!19025 (right!43173 ys!41))) lt!2090955)))

(declare-fun b!5080980 () Bool)

(assert (=> b!5080980 (= e!3169446 (list!19025 (right!43173 ys!41)))))

(declare-fun b!5080982 () Bool)

(declare-fun res!2163138 () Bool)

(assert (=> b!5080982 (=> (not res!2163138) (not e!3169447))))

(assert (=> b!5080982 (= res!2163138 (= (size!39113 lt!2090955) (+ (size!39113 (list!19025 (right!43173 (left!42843 ys!41)))) (size!39113 (list!19025 (right!43173 ys!41))))))))

(declare-fun b!5080983 () Bool)

(assert (=> b!5080983 (= e!3169447 (or (not (= (list!19025 (right!43173 ys!41)) Nil!58452)) (= lt!2090955 (list!19025 (right!43173 (left!42843 ys!41))))))))

(assert (= (and d!1642598 c!872813) b!5080980))

(assert (= (and d!1642598 (not c!872813)) b!5080981))

(assert (= (and d!1642598 res!2163139) b!5080982))

(assert (= (and b!5080982 res!2163138) b!5080983))

(assert (=> b!5080981 m!6133016))

(declare-fun m!6133776 () Bool)

(assert (=> b!5080981 m!6133776))

(declare-fun m!6133778 () Bool)

(assert (=> d!1642598 m!6133778))

(assert (=> d!1642598 m!6133018))

(declare-fun m!6133780 () Bool)

(assert (=> d!1642598 m!6133780))

(assert (=> d!1642598 m!6133016))

(declare-fun m!6133782 () Bool)

(assert (=> d!1642598 m!6133782))

(declare-fun m!6133784 () Bool)

(assert (=> b!5080982 m!6133784))

(assert (=> b!5080982 m!6133018))

(declare-fun m!6133786 () Bool)

(assert (=> b!5080982 m!6133786))

(assert (=> b!5080982 m!6133016))

(declare-fun m!6133788 () Bool)

(assert (=> b!5080982 m!6133788))

(assert (=> d!1642378 d!1642598))

(declare-fun b!5080990 () Bool)

(declare-fun e!3169448 () List!58576)

(assert (=> b!5080990 (= e!3169448 Nil!58452)))

(declare-fun b!5080993 () Bool)

(declare-fun e!3169449 () List!58576)

(assert (=> b!5080993 (= e!3169449 (++!12811 (list!19025 (left!42843 (right!43173 (left!42843 ys!41)))) (list!19025 (right!43173 (right!43173 (left!42843 ys!41))))))))

(declare-fun d!1642600 () Bool)

(declare-fun c!872814 () Bool)

(assert (=> d!1642600 (= c!872814 ((_ is Empty!15582) (right!43173 (left!42843 ys!41))))))

(assert (=> d!1642600 (= (list!19025 (right!43173 (left!42843 ys!41))) e!3169448)))

(declare-fun b!5080991 () Bool)

(assert (=> b!5080991 (= e!3169448 e!3169449)))

(declare-fun c!872815 () Bool)

(assert (=> b!5080991 (= c!872815 ((_ is Leaf!25878) (right!43173 (left!42843 ys!41))))))

(declare-fun b!5080992 () Bool)

(assert (=> b!5080992 (= e!3169449 (list!19027 (xs!18954 (right!43173 (left!42843 ys!41)))))))

(assert (= (and d!1642600 c!872814) b!5080990))

(assert (= (and d!1642600 (not c!872814)) b!5080991))

(assert (= (and b!5080991 c!872815) b!5080992))

(assert (= (and b!5080991 (not c!872815)) b!5080993))

(declare-fun m!6133790 () Bool)

(assert (=> b!5080993 m!6133790))

(declare-fun m!6133792 () Bool)

(assert (=> b!5080993 m!6133792))

(assert (=> b!5080993 m!6133790))

(assert (=> b!5080993 m!6133792))

(declare-fun m!6133794 () Bool)

(assert (=> b!5080993 m!6133794))

(declare-fun m!6133796 () Bool)

(assert (=> b!5080992 m!6133796))

(assert (=> d!1642378 d!1642600))

(declare-fun b!5080994 () Bool)

(declare-fun e!3169450 () List!58576)

(assert (=> b!5080994 (= e!3169450 Nil!58452)))

(declare-fun b!5080997 () Bool)

(declare-fun e!3169451 () List!58576)

(assert (=> b!5080997 (= e!3169451 (++!12811 (list!19025 (left!42843 (right!43173 ys!41))) (list!19025 (right!43173 (right!43173 ys!41)))))))

(declare-fun d!1642602 () Bool)

(declare-fun c!872816 () Bool)

(assert (=> d!1642602 (= c!872816 ((_ is Empty!15582) (right!43173 ys!41)))))

(assert (=> d!1642602 (= (list!19025 (right!43173 ys!41)) e!3169450)))

(declare-fun b!5080995 () Bool)

(assert (=> b!5080995 (= e!3169450 e!3169451)))

(declare-fun c!872817 () Bool)

(assert (=> b!5080995 (= c!872817 ((_ is Leaf!25878) (right!43173 ys!41)))))

(declare-fun b!5080996 () Bool)

(assert (=> b!5080996 (= e!3169451 (list!19027 (xs!18954 (right!43173 ys!41))))))

(assert (= (and d!1642602 c!872816) b!5080994))

(assert (= (and d!1642602 (not c!872816)) b!5080995))

(assert (= (and b!5080995 c!872817) b!5080996))

(assert (= (and b!5080995 (not c!872817)) b!5080997))

(declare-fun m!6133798 () Bool)

(assert (=> b!5080997 m!6133798))

(declare-fun m!6133800 () Bool)

(assert (=> b!5080997 m!6133800))

(assert (=> b!5080997 m!6133798))

(assert (=> b!5080997 m!6133800))

(declare-fun m!6133802 () Bool)

(assert (=> b!5080997 m!6133802))

(declare-fun m!6133804 () Bool)

(assert (=> b!5080996 m!6133804))

(assert (=> d!1642378 d!1642602))

(declare-fun d!1642604 () Bool)

(declare-fun res!2163148 () Bool)

(declare-fun e!3169452 () Bool)

(assert (=> d!1642604 (=> res!2163148 e!3169452)))

(assert (=> d!1642604 (= res!2163148 (not ((_ is Node!15582) (right!43173 xs!286))))))

(assert (=> d!1642604 (= (isBalanced!4444 (right!43173 xs!286)) e!3169452)))

(declare-fun b!5080998 () Bool)

(declare-fun res!2163144 () Bool)

(declare-fun e!3169453 () Bool)

(assert (=> b!5080998 (=> (not res!2163144) (not e!3169453))))

(assert (=> b!5080998 (= res!2163144 (<= (- (height!2159 (left!42843 (right!43173 xs!286))) (height!2159 (right!43173 (right!43173 xs!286)))) 1))))

(declare-fun b!5080999 () Bool)

(declare-fun res!2163145 () Bool)

(assert (=> b!5080999 (=> (not res!2163145) (not e!3169453))))

(assert (=> b!5080999 (= res!2163145 (isBalanced!4444 (right!43173 (right!43173 xs!286))))))

(declare-fun b!5081000 () Bool)

(declare-fun res!2163147 () Bool)

(assert (=> b!5081000 (=> (not res!2163147) (not e!3169453))))

(assert (=> b!5081000 (= res!2163147 (isBalanced!4444 (left!42843 (right!43173 xs!286))))))

(declare-fun b!5081001 () Bool)

(assert (=> b!5081001 (= e!3169452 e!3169453)))

(declare-fun res!2163146 () Bool)

(assert (=> b!5081001 (=> (not res!2163146) (not e!3169453))))

(assert (=> b!5081001 (= res!2163146 (<= (- 1) (- (height!2159 (left!42843 (right!43173 xs!286))) (height!2159 (right!43173 (right!43173 xs!286))))))))

(declare-fun b!5081002 () Bool)

(declare-fun res!2163149 () Bool)

(assert (=> b!5081002 (=> (not res!2163149) (not e!3169453))))

(assert (=> b!5081002 (= res!2163149 (not (isEmpty!31667 (left!42843 (right!43173 xs!286)))))))

(declare-fun b!5081003 () Bool)

(assert (=> b!5081003 (= e!3169453 (not (isEmpty!31667 (right!43173 (right!43173 xs!286)))))))

(assert (= (and d!1642604 (not res!2163148)) b!5081001))

(assert (= (and b!5081001 res!2163146) b!5080998))

(assert (= (and b!5080998 res!2163144) b!5081000))

(assert (= (and b!5081000 res!2163147) b!5080999))

(assert (= (and b!5080999 res!2163145) b!5081002))

(assert (= (and b!5081002 res!2163149) b!5081003))

(declare-fun m!6133806 () Bool)

(assert (=> b!5080999 m!6133806))

(declare-fun m!6133808 () Bool)

(assert (=> b!5080998 m!6133808))

(declare-fun m!6133810 () Bool)

(assert (=> b!5080998 m!6133810))

(declare-fun m!6133812 () Bool)

(assert (=> b!5081003 m!6133812))

(assert (=> b!5081001 m!6133808))

(assert (=> b!5081001 m!6133810))

(declare-fun m!6133814 () Bool)

(assert (=> b!5081002 m!6133814))

(declare-fun m!6133816 () Bool)

(assert (=> b!5081000 m!6133816))

(assert (=> b!5080731 d!1642604))

(declare-fun b!5081005 () Bool)

(declare-fun e!3169454 () List!58576)

(assert (=> b!5081005 (= e!3169454 (Cons!58452 (h!64900 (list!19025 (left!42843 xs!286))) (++!12811 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (right!43173 xs!286)))))))

(declare-fun d!1642606 () Bool)

(declare-fun e!3169455 () Bool)

(assert (=> d!1642606 e!3169455))

(declare-fun res!2163151 () Bool)

(assert (=> d!1642606 (=> (not res!2163151) (not e!3169455))))

(declare-fun lt!2090956 () List!58576)

(assert (=> d!1642606 (= res!2163151 (= (content!10428 lt!2090956) ((_ map or) (content!10428 (list!19025 (left!42843 xs!286))) (content!10428 (list!19025 (right!43173 xs!286))))))))

(assert (=> d!1642606 (= lt!2090956 e!3169454)))

(declare-fun c!872818 () Bool)

(assert (=> d!1642606 (= c!872818 ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(assert (=> d!1642606 (= (++!12811 (list!19025 (left!42843 xs!286)) (list!19025 (right!43173 xs!286))) lt!2090956)))

(declare-fun b!5081004 () Bool)

(assert (=> b!5081004 (= e!3169454 (list!19025 (right!43173 xs!286)))))

(declare-fun b!5081006 () Bool)

(declare-fun res!2163150 () Bool)

(assert (=> b!5081006 (=> (not res!2163150) (not e!3169455))))

(assert (=> b!5081006 (= res!2163150 (= (size!39113 lt!2090956) (+ (size!39113 (list!19025 (left!42843 xs!286))) (size!39113 (list!19025 (right!43173 xs!286))))))))

(declare-fun b!5081007 () Bool)

(assert (=> b!5081007 (= e!3169455 (or (not (= (list!19025 (right!43173 xs!286)) Nil!58452)) (= lt!2090956 (list!19025 (left!42843 xs!286)))))))

(assert (= (and d!1642606 c!872818) b!5081004))

(assert (= (and d!1642606 (not c!872818)) b!5081005))

(assert (= (and d!1642606 res!2163151) b!5081006))

(assert (= (and b!5081006 res!2163150) b!5081007))

(assert (=> b!5081005 m!6133032))

(declare-fun m!6133818 () Bool)

(assert (=> b!5081005 m!6133818))

(declare-fun m!6133820 () Bool)

(assert (=> d!1642606 m!6133820))

(assert (=> d!1642606 m!6133030))

(declare-fun m!6133822 () Bool)

(assert (=> d!1642606 m!6133822))

(assert (=> d!1642606 m!6133032))

(declare-fun m!6133824 () Bool)

(assert (=> d!1642606 m!6133824))

(declare-fun m!6133826 () Bool)

(assert (=> b!5081006 m!6133826))

(assert (=> b!5081006 m!6133030))

(declare-fun m!6133828 () Bool)

(assert (=> b!5081006 m!6133828))

(assert (=> b!5081006 m!6133032))

(declare-fun m!6133830 () Bool)

(assert (=> b!5081006 m!6133830))

(assert (=> b!5080705 d!1642606))

(assert (=> b!5080705 d!1642478))

(assert (=> b!5080705 d!1642480))

(declare-fun d!1642608 () Bool)

(declare-fun res!2163152 () Bool)

(declare-fun e!3169456 () Bool)

(assert (=> d!1642608 (=> (not res!2163152) (not e!3169456))))

(assert (=> d!1642608 (= res!2163152 (= (csize!31394 (left!42843 ys!41)) (+ (size!39112 (left!42843 (left!42843 ys!41))) (size!39112 (right!43173 (left!42843 ys!41))))))))

(assert (=> d!1642608 (= (inv!77656 (left!42843 ys!41)) e!3169456)))

(declare-fun b!5081008 () Bool)

(declare-fun res!2163153 () Bool)

(assert (=> b!5081008 (=> (not res!2163153) (not e!3169456))))

(assert (=> b!5081008 (= res!2163153 (and (not (= (left!42843 (left!42843 ys!41)) Empty!15582)) (not (= (right!43173 (left!42843 ys!41)) Empty!15582))))))

(declare-fun b!5081009 () Bool)

(declare-fun res!2163154 () Bool)

(assert (=> b!5081009 (=> (not res!2163154) (not e!3169456))))

(assert (=> b!5081009 (= res!2163154 (= (cheight!15793 (left!42843 ys!41)) (+ (max!0 (height!2159 (left!42843 (left!42843 ys!41))) (height!2159 (right!43173 (left!42843 ys!41)))) 1)))))

(declare-fun b!5081010 () Bool)

(assert (=> b!5081010 (= e!3169456 (<= 0 (cheight!15793 (left!42843 ys!41))))))

(assert (= (and d!1642608 res!2163152) b!5081008))

(assert (= (and b!5081008 res!2163153) b!5081009))

(assert (= (and b!5081009 res!2163154) b!5081010))

(declare-fun m!6133832 () Bool)

(assert (=> d!1642608 m!6133832))

(assert (=> d!1642608 m!6133076))

(assert (=> b!5081009 m!6133196))

(assert (=> b!5081009 m!6133078))

(assert (=> b!5081009 m!6133196))

(assert (=> b!5081009 m!6133078))

(declare-fun m!6133834 () Bool)

(assert (=> b!5081009 m!6133834))

(assert (=> b!5080344 d!1642608))

(declare-fun d!1642610 () Bool)

(assert (=> d!1642610 (= (height!2159 (left!42843 xs!286)) (ite ((_ is Empty!15582) (left!42843 xs!286)) 0 (ite ((_ is Leaf!25878) (left!42843 xs!286)) 1 (cheight!15793 (left!42843 xs!286)))))))

(assert (=> b!5080733 d!1642610))

(declare-fun d!1642612 () Bool)

(assert (=> d!1642612 (= (height!2159 (right!43173 xs!286)) (ite ((_ is Empty!15582) (right!43173 xs!286)) 0 (ite ((_ is Leaf!25878) (right!43173 xs!286)) 1 (cheight!15793 (right!43173 xs!286)))))))

(assert (=> b!5080733 d!1642612))

(declare-fun d!1642614 () Bool)

(assert (=> d!1642614 (= (height!2159 (ite c!872702 (right!43173 xs!286) (left!42843 (left!42843 (left!42843 ys!41))))) (ite ((_ is Empty!15582) (ite c!872702 (right!43173 xs!286) (left!42843 (left!42843 (left!42843 ys!41))))) 0 (ite ((_ is Leaf!25878) (ite c!872702 (right!43173 xs!286) (left!42843 (left!42843 (left!42843 ys!41))))) 1 (cheight!15793 (ite c!872702 (right!43173 xs!286) (left!42843 (left!42843 (left!42843 ys!41))))))))))

(assert (=> bm!354102 d!1642614))

(declare-fun d!1642616 () Bool)

(declare-fun e!3169457 () Bool)

(assert (=> d!1642616 e!3169457))

(declare-fun c!872819 () Bool)

(assert (=> d!1642616 (= c!872819 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1642616 (= (appendAssoc!312 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))) (list!19025 (right!43173 (left!42843 ys!41)))) true)))

(declare-fun bm!354181 () Bool)

(declare-fun call!354188 () List!58576)

(assert (=> bm!354181 (= call!354188 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))))))

(declare-fun bm!354182 () Bool)

(declare-fun call!354187 () List!58576)

(declare-fun call!354189 () List!58576)

(assert (=> bm!354182 (= call!354187 (++!12811 (list!19025 xs!286) call!354189))))

(declare-fun bm!354183 () Bool)

(assert (=> bm!354183 (= call!354189 (++!12811 (list!19025 (left!42843 (left!42843 ys!41))) (list!19025 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5081011 () Bool)

(declare-fun call!354186 () List!58576)

(assert (=> b!5081011 (= e!3169457 (= call!354186 call!354187))))

(declare-fun bm!354184 () Bool)

(assert (=> bm!354184 (= call!354186 (++!12811 call!354188 (list!19025 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5081012 () Bool)

(assert (=> b!5081012 (= e!3169457 (= call!354186 call!354187))))

(declare-fun lt!2090957 () Bool)

(assert (=> b!5081012 (= lt!2090957 (appendAssoc!312 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 (left!42843 ys!41))) (list!19025 (right!43173 (left!42843 ys!41)))))))

(assert (= (and d!1642616 c!872819) b!5081011))

(assert (= (and d!1642616 (not c!872819)) b!5081012))

(assert (= (or b!5081011 b!5081012) bm!354181))

(assert (= (or b!5081011 b!5081012) bm!354183))

(assert (= (or b!5081011 b!5081012) bm!354182))

(assert (= (or b!5081011 b!5081012) bm!354184))

(assert (=> bm!354183 m!6133024))

(assert (=> bm!354183 m!6133018))

(declare-fun m!6133836 () Bool)

(assert (=> bm!354183 m!6133836))

(assert (=> bm!354182 m!6132962))

(declare-fun m!6133838 () Bool)

(assert (=> bm!354182 m!6133838))

(assert (=> bm!354184 m!6133018))

(declare-fun m!6133840 () Bool)

(assert (=> bm!354184 m!6133840))

(assert (=> bm!354181 m!6132962))

(assert (=> bm!354181 m!6133024))

(assert (=> bm!354181 m!6133020))

(assert (=> b!5081012 m!6133024))

(assert (=> b!5081012 m!6133018))

(declare-fun m!6133842 () Bool)

(assert (=> b!5081012 m!6133842))

(assert (=> b!5080386 d!1642616))

(assert (=> b!5080386 d!1642446))

(assert (=> b!5080386 d!1642486))

(assert (=> b!5080386 d!1642600))

(declare-fun d!1642618 () Bool)

(declare-fun res!2163162 () Bool)

(declare-fun e!3169459 () Bool)

(assert (=> d!1642618 (=> res!2163162 e!3169459)))

(assert (=> d!1642618 (= res!2163162 (not ((_ is Node!15582) (left!42843 lt!2090875))))))

(assert (=> d!1642618 (= (isBalanced!4444 (left!42843 lt!2090875)) e!3169459)))

(declare-fun b!5081016 () Bool)

(declare-fun res!2163158 () Bool)

(declare-fun e!3169460 () Bool)

(assert (=> b!5081016 (=> (not res!2163158) (not e!3169460))))

(assert (=> b!5081016 (= res!2163158 (<= (- (height!2159 (left!42843 (left!42843 lt!2090875))) (height!2159 (right!43173 (left!42843 lt!2090875)))) 1))))

(declare-fun b!5081017 () Bool)

(declare-fun res!2163159 () Bool)

(assert (=> b!5081017 (=> (not res!2163159) (not e!3169460))))

(assert (=> b!5081017 (= res!2163159 (isBalanced!4444 (right!43173 (left!42843 lt!2090875))))))

(declare-fun b!5081018 () Bool)

(declare-fun res!2163161 () Bool)

(assert (=> b!5081018 (=> (not res!2163161) (not e!3169460))))

(assert (=> b!5081018 (= res!2163161 (isBalanced!4444 (left!42843 (left!42843 lt!2090875))))))

(declare-fun b!5081019 () Bool)

(assert (=> b!5081019 (= e!3169459 e!3169460)))

(declare-fun res!2163160 () Bool)

(assert (=> b!5081019 (=> (not res!2163160) (not e!3169460))))

(assert (=> b!5081019 (= res!2163160 (<= (- 1) (- (height!2159 (left!42843 (left!42843 lt!2090875))) (height!2159 (right!43173 (left!42843 lt!2090875))))))))

(declare-fun b!5081020 () Bool)

(declare-fun res!2163163 () Bool)

(assert (=> b!5081020 (=> (not res!2163163) (not e!3169460))))

(assert (=> b!5081020 (= res!2163163 (not (isEmpty!31667 (left!42843 (left!42843 lt!2090875)))))))

(declare-fun b!5081021 () Bool)

(assert (=> b!5081021 (= e!3169460 (not (isEmpty!31667 (right!43173 (left!42843 lt!2090875)))))))

(assert (= (and d!1642618 (not res!2163162)) b!5081019))

(assert (= (and b!5081019 res!2163160) b!5081016))

(assert (= (and b!5081016 res!2163158) b!5081018))

(assert (= (and b!5081018 res!2163161) b!5081017))

(assert (= (and b!5081017 res!2163159) b!5081020))

(assert (= (and b!5081020 res!2163163) b!5081021))

(declare-fun m!6133846 () Bool)

(assert (=> b!5081017 m!6133846))

(declare-fun m!6133848 () Bool)

(assert (=> b!5081016 m!6133848))

(declare-fun m!6133852 () Bool)

(assert (=> b!5081016 m!6133852))

(declare-fun m!6133854 () Bool)

(assert (=> b!5081021 m!6133854))

(assert (=> b!5081019 m!6133848))

(assert (=> b!5081019 m!6133852))

(declare-fun m!6133856 () Bool)

(assert (=> b!5081020 m!6133856))

(declare-fun m!6133858 () Bool)

(assert (=> b!5081018 m!6133858))

(assert (=> b!5080744 d!1642618))

(declare-fun b!5081023 () Bool)

(declare-fun e!3169461 () List!58576)

(assert (=> b!5081023 (= e!3169461 (Cons!58452 (h!64900 (list!19025 (left!42843 ys!41))) (++!12811 (t!371393 (list!19025 (left!42843 ys!41))) (list!19025 (right!43173 ys!41)))))))

(declare-fun d!1642622 () Bool)

(declare-fun e!3169462 () Bool)

(assert (=> d!1642622 e!3169462))

(declare-fun res!2163165 () Bool)

(assert (=> d!1642622 (=> (not res!2163165) (not e!3169462))))

(declare-fun lt!2090958 () List!58576)

(assert (=> d!1642622 (= res!2163165 (= (content!10428 lt!2090958) ((_ map or) (content!10428 (list!19025 (left!42843 ys!41))) (content!10428 (list!19025 (right!43173 ys!41))))))))

(assert (=> d!1642622 (= lt!2090958 e!3169461)))

(declare-fun c!872820 () Bool)

(assert (=> d!1642622 (= c!872820 ((_ is Nil!58452) (list!19025 (left!42843 ys!41))))))

(assert (=> d!1642622 (= (++!12811 (list!19025 (left!42843 ys!41)) (list!19025 (right!43173 ys!41))) lt!2090958)))

(declare-fun b!5081022 () Bool)

(assert (=> b!5081022 (= e!3169461 (list!19025 (right!43173 ys!41)))))

(declare-fun b!5081024 () Bool)

(declare-fun res!2163164 () Bool)

(assert (=> b!5081024 (=> (not res!2163164) (not e!3169462))))

(assert (=> b!5081024 (= res!2163164 (= (size!39113 lt!2090958) (+ (size!39113 (list!19025 (left!42843 ys!41))) (size!39113 (list!19025 (right!43173 ys!41))))))))

(declare-fun b!5081025 () Bool)

(assert (=> b!5081025 (= e!3169462 (or (not (= (list!19025 (right!43173 ys!41)) Nil!58452)) (= lt!2090958 (list!19025 (left!42843 ys!41)))))))

(assert (= (and d!1642622 c!872820) b!5081022))

(assert (= (and d!1642622 (not c!872820)) b!5081023))

(assert (= (and d!1642622 res!2163165) b!5081024))

(assert (= (and b!5081024 res!2163164) b!5081025))

(assert (=> b!5081023 m!6133016))

(declare-fun m!6133860 () Bool)

(assert (=> b!5081023 m!6133860))

(declare-fun m!6133862 () Bool)

(assert (=> d!1642622 m!6133862))

(assert (=> d!1642622 m!6133026))

(declare-fun m!6133864 () Bool)

(assert (=> d!1642622 m!6133864))

(assert (=> d!1642622 m!6133016))

(assert (=> d!1642622 m!6133782))

(declare-fun m!6133866 () Bool)

(assert (=> b!5081024 m!6133866))

(assert (=> b!5081024 m!6133026))

(declare-fun m!6133868 () Bool)

(assert (=> b!5081024 m!6133868))

(assert (=> b!5081024 m!6133016))

(assert (=> b!5081024 m!6133788))

(assert (=> b!5080710 d!1642622))

(declare-fun b!5081026 () Bool)

(declare-fun e!3169463 () List!58576)

(assert (=> b!5081026 (= e!3169463 Nil!58452)))

(declare-fun b!5081029 () Bool)

(declare-fun e!3169464 () List!58576)

(assert (=> b!5081029 (= e!3169464 (++!12811 (list!19025 (left!42843 (left!42843 ys!41))) (list!19025 (right!43173 (left!42843 ys!41)))))))

(declare-fun d!1642628 () Bool)

(declare-fun c!872821 () Bool)

(assert (=> d!1642628 (= c!872821 ((_ is Empty!15582) (left!42843 ys!41)))))

(assert (=> d!1642628 (= (list!19025 (left!42843 ys!41)) e!3169463)))

(declare-fun b!5081027 () Bool)

(assert (=> b!5081027 (= e!3169463 e!3169464)))

(declare-fun c!872822 () Bool)

(assert (=> b!5081027 (= c!872822 ((_ is Leaf!25878) (left!42843 ys!41)))))

(declare-fun b!5081028 () Bool)

(assert (=> b!5081028 (= e!3169464 (list!19027 (xs!18954 (left!42843 ys!41))))))

(assert (= (and d!1642628 c!872821) b!5081026))

(assert (= (and d!1642628 (not c!872821)) b!5081027))

(assert (= (and b!5081027 c!872822) b!5081028))

(assert (= (and b!5081027 (not c!872822)) b!5081029))

(assert (=> b!5081029 m!6133024))

(assert (=> b!5081029 m!6133018))

(assert (=> b!5081029 m!6133024))

(assert (=> b!5081029 m!6133018))

(assert (=> b!5081029 m!6133836))

(assert (=> b!5081028 m!6133752))

(assert (=> b!5080710 d!1642628))

(assert (=> b!5080710 d!1642602))

(assert (=> b!5080388 d!1642446))

(assert (=> b!5080388 d!1642602))

(assert (=> b!5080388 d!1642600))

(declare-fun d!1642630 () Bool)

(declare-fun e!3169465 () Bool)

(assert (=> d!1642630 e!3169465))

(declare-fun c!872823 () Bool)

(assert (=> d!1642630 (= c!872823 ((_ is Nil!58452) (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1642630 (= (appendAssoc!312 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 ys!41))) (list!19025 (right!43173 ys!41))) true)))

(declare-fun bm!354185 () Bool)

(declare-fun call!354192 () List!58576)

(assert (=> bm!354185 (= call!354192 (++!12811 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 ys!41)))))))

(declare-fun call!354193 () List!58576)

(declare-fun bm!354186 () Bool)

(declare-fun call!354191 () List!58576)

(assert (=> bm!354186 (= call!354191 (++!12811 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))) call!354193))))

(declare-fun bm!354187 () Bool)

(assert (=> bm!354187 (= call!354193 (++!12811 (list!19025 (right!43173 (left!42843 ys!41))) (list!19025 (right!43173 ys!41))))))

(declare-fun b!5081030 () Bool)

(declare-fun call!354190 () List!58576)

(assert (=> b!5081030 (= e!3169465 (= call!354190 call!354191))))

(declare-fun bm!354188 () Bool)

(assert (=> bm!354188 (= call!354190 (++!12811 call!354192 (list!19025 (right!43173 ys!41))))))

(declare-fun b!5081031 () Bool)

(assert (=> b!5081031 (= e!3169465 (= call!354190 call!354191))))

(declare-fun lt!2090959 () Bool)

(assert (=> b!5081031 (= lt!2090959 (appendAssoc!312 (t!371393 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 ys!41))) (list!19025 (right!43173 ys!41))))))

(assert (= (and d!1642630 c!872823) b!5081030))

(assert (= (and d!1642630 (not c!872823)) b!5081031))

(assert (= (or b!5081030 b!5081031) bm!354185))

(assert (= (or b!5081030 b!5081031) bm!354187))

(assert (= (or b!5081030 b!5081031) bm!354186))

(assert (= (or b!5081030 b!5081031) bm!354188))

(assert (=> bm!354187 m!6133018))

(assert (=> bm!354187 m!6133016))

(assert (=> bm!354187 m!6133074))

(assert (=> bm!354186 m!6133020))

(declare-fun m!6133870 () Bool)

(assert (=> bm!354186 m!6133870))

(assert (=> bm!354188 m!6133016))

(declare-fun m!6133872 () Bool)

(assert (=> bm!354188 m!6133872))

(assert (=> bm!354185 m!6133020))

(assert (=> bm!354185 m!6133018))

(declare-fun m!6133874 () Bool)

(assert (=> bm!354185 m!6133874))

(assert (=> b!5081031 m!6133018))

(assert (=> b!5081031 m!6133016))

(declare-fun m!6133876 () Bool)

(assert (=> b!5081031 m!6133876))

(assert (=> b!5080388 d!1642630))

(assert (=> b!5080388 d!1642484))

(assert (=> b!5080388 d!1642486))

(declare-fun d!1642632 () Bool)

(declare-fun lt!2090960 () Bool)

(assert (=> d!1642632 (= lt!2090960 (isEmpty!31669 (list!19025 (left!42843 lt!2090875))))))

(assert (=> d!1642632 (= lt!2090960 (= (size!39112 (left!42843 lt!2090875)) 0))))

(assert (=> d!1642632 (= (isEmpty!31667 (left!42843 lt!2090875)) lt!2090960)))

(declare-fun bs!1190640 () Bool)

(assert (= bs!1190640 d!1642632))

(assert (=> bs!1190640 m!6133256))

(assert (=> bs!1190640 m!6133256))

(declare-fun m!6133878 () Bool)

(assert (=> bs!1190640 m!6133878))

(declare-fun m!6133880 () Bool)

(assert (=> bs!1190640 m!6133880))

(assert (=> b!5080746 d!1642632))

(declare-fun d!1642634 () Bool)

(declare-fun res!2163170 () Bool)

(declare-fun e!3169466 () Bool)

(assert (=> d!1642634 (=> res!2163170 e!3169466)))

(assert (=> d!1642634 (= res!2163170 (not ((_ is Node!15582) lt!2090909)))))

(assert (=> d!1642634 (= (isBalanced!4444 lt!2090909) e!3169466)))

(declare-fun b!5081032 () Bool)

(declare-fun res!2163166 () Bool)

(declare-fun e!3169467 () Bool)

(assert (=> b!5081032 (=> (not res!2163166) (not e!3169467))))

(assert (=> b!5081032 (= res!2163166 (<= (- (height!2159 (left!42843 lt!2090909)) (height!2159 (right!43173 lt!2090909))) 1))))

(declare-fun b!5081033 () Bool)

(declare-fun res!2163167 () Bool)

(assert (=> b!5081033 (=> (not res!2163167) (not e!3169467))))

(assert (=> b!5081033 (= res!2163167 (isBalanced!4444 (right!43173 lt!2090909)))))

(declare-fun b!5081034 () Bool)

(declare-fun res!2163169 () Bool)

(assert (=> b!5081034 (=> (not res!2163169) (not e!3169467))))

(assert (=> b!5081034 (= res!2163169 (isBalanced!4444 (left!42843 lt!2090909)))))

(declare-fun b!5081035 () Bool)

(assert (=> b!5081035 (= e!3169466 e!3169467)))

(declare-fun res!2163168 () Bool)

(assert (=> b!5081035 (=> (not res!2163168) (not e!3169467))))

(assert (=> b!5081035 (= res!2163168 (<= (- 1) (- (height!2159 (left!42843 lt!2090909)) (height!2159 (right!43173 lt!2090909)))))))

(declare-fun b!5081036 () Bool)

(declare-fun res!2163171 () Bool)

(assert (=> b!5081036 (=> (not res!2163171) (not e!3169467))))

(assert (=> b!5081036 (= res!2163171 (not (isEmpty!31667 (left!42843 lt!2090909))))))

(declare-fun b!5081037 () Bool)

(assert (=> b!5081037 (= e!3169467 (not (isEmpty!31667 (right!43173 lt!2090909))))))

(assert (= (and d!1642634 (not res!2163170)) b!5081035))

(assert (= (and b!5081035 res!2163168) b!5081032))

(assert (= (and b!5081032 res!2163166) b!5081034))

(assert (= (and b!5081034 res!2163169) b!5081033))

(assert (= (and b!5081033 res!2163167) b!5081036))

(assert (= (and b!5081036 res!2163171) b!5081037))

(declare-fun m!6133882 () Bool)

(assert (=> b!5081033 m!6133882))

(declare-fun m!6133884 () Bool)

(assert (=> b!5081032 m!6133884))

(declare-fun m!6133886 () Bool)

(assert (=> b!5081032 m!6133886))

(declare-fun m!6133888 () Bool)

(assert (=> b!5081037 m!6133888))

(assert (=> b!5081035 m!6133884))

(assert (=> b!5081035 m!6133886))

(declare-fun m!6133890 () Bool)

(assert (=> b!5081036 m!6133890))

(declare-fun m!6133892 () Bool)

(assert (=> b!5081034 m!6133892))

(assert (=> b!5080591 d!1642634))

(declare-fun d!1642636 () Bool)

(assert (=> d!1642636 (= (inv!77655 (xs!18954 (left!42843 ys!41))) (<= (size!39113 (innerList!15670 (xs!18954 (left!42843 ys!41)))) 2147483647))))

(declare-fun bs!1190641 () Bool)

(assert (= bs!1190641 d!1642636))

(declare-fun m!6133894 () Bool)

(assert (=> bs!1190641 m!6133894))

(assert (=> b!5080757 d!1642636))

(declare-fun d!1642638 () Bool)

(declare-fun res!2163172 () Bool)

(declare-fun e!3169468 () Bool)

(assert (=> d!1642638 (=> (not res!2163172) (not e!3169468))))

(assert (=> d!1642638 (= res!2163172 (<= (size!39113 (list!19027 (xs!18954 (right!43173 ys!41)))) 512))))

(assert (=> d!1642638 (= (inv!77657 (right!43173 ys!41)) e!3169468)))

(declare-fun b!5081038 () Bool)

(declare-fun res!2163173 () Bool)

(assert (=> b!5081038 (=> (not res!2163173) (not e!3169468))))

(assert (=> b!5081038 (= res!2163173 (= (csize!31395 (right!43173 ys!41)) (size!39113 (list!19027 (xs!18954 (right!43173 ys!41))))))))

(declare-fun b!5081039 () Bool)

(assert (=> b!5081039 (= e!3169468 (and (> (csize!31395 (right!43173 ys!41)) 0) (<= (csize!31395 (right!43173 ys!41)) 512)))))

(assert (= (and d!1642638 res!2163172) b!5081038))

(assert (= (and b!5081038 res!2163173) b!5081039))

(assert (=> d!1642638 m!6133804))

(assert (=> d!1642638 m!6133804))

(declare-fun m!6133896 () Bool)

(assert (=> d!1642638 m!6133896))

(assert (=> b!5081038 m!6133804))

(assert (=> b!5081038 m!6133804))

(assert (=> b!5081038 m!6133896))

(assert (=> b!5080349 d!1642638))

(assert (=> b!5080330 d!1642364))

(assert (=> b!5080330 d!1642366))

(declare-fun d!1642640 () Bool)

(assert (=> d!1642640 (= (height!2159 (left!42843 lt!2090875)) (ite ((_ is Empty!15582) (left!42843 lt!2090875)) 0 (ite ((_ is Leaf!25878) (left!42843 lt!2090875)) 1 (cheight!15793 (left!42843 lt!2090875)))))))

(assert (=> b!5080742 d!1642640))

(declare-fun d!1642642 () Bool)

(assert (=> d!1642642 (= (height!2159 (right!43173 lt!2090875)) (ite ((_ is Empty!15582) (right!43173 lt!2090875)) 0 (ite ((_ is Leaf!25878) (right!43173 lt!2090875)) 1 (cheight!15793 (right!43173 lt!2090875)))))))

(assert (=> b!5080742 d!1642642))

(declare-fun d!1642644 () Bool)

(assert (=> d!1642644 (= (height!2159 (ite c!872702 (left!42843 xs!286) lt!2090906)) (ite ((_ is Empty!15582) (ite c!872702 (left!42843 xs!286) lt!2090906)) 0 (ite ((_ is Leaf!25878) (ite c!872702 (left!42843 xs!286) lt!2090906)) 1 (cheight!15793 (ite c!872702 (left!42843 xs!286) lt!2090906)))))))

(assert (=> bm!354101 d!1642644))

(declare-fun b!5081040 () Bool)

(declare-fun e!3169471 () Bool)

(declare-fun e!3169476 () Bool)

(assert (=> b!5081040 (= e!3169471 e!3169476)))

(declare-fun res!2163176 () Bool)

(assert (=> b!5081040 (=> res!2163176 e!3169476)))

(assert (=> b!5081040 (= res!2163176 (not ((_ is Node!15582) (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081041 () Bool)

(declare-fun e!3169472 () Bool)

(declare-fun e!3169470 () Bool)

(assert (=> b!5081041 (= e!3169472 e!3169470)))

(declare-fun res!2163181 () Bool)

(assert (=> b!5081041 (=> (not res!2163181) (not e!3169470))))

(assert (=> b!5081041 (= res!2163181 (appendAssoc!312 (list!19025 (left!42843 (right!43173 xs!286))) (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081042 () Bool)

(declare-fun e!3169469 () Bool)

(assert (=> b!5081042 (= e!3169469 e!3169472)))

(declare-fun res!2163180 () Bool)

(assert (=> b!5081042 (=> res!2163180 e!3169472)))

(assert (=> b!5081042 (= res!2163180 (not ((_ is Node!15582) (right!43173 xs!286))))))

(declare-fun b!5081043 () Bool)

(declare-fun e!3169477 () Bool)

(assert (=> b!5081043 (= e!3169477 e!3169469)))

(declare-fun res!2163182 () Bool)

(assert (=> b!5081043 (=> (not res!2163182) (not e!3169469))))

(assert (=> b!5081043 (= res!2163182 (appendAssoc!312 (list!19025 (left!42843 xs!286)) (list!19025 (right!43173 xs!286)) (list!19025 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081044 () Bool)

(declare-fun e!3169473 () Bool)

(declare-fun e!3169475 () Bool)

(assert (=> b!5081044 (= e!3169473 e!3169475)))

(declare-fun res!2163178 () Bool)

(assert (=> b!5081044 (=> res!2163178 e!3169475)))

(assert (=> b!5081044 (= res!2163178 (not ((_ is Node!15582) (left!42843 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081045 () Bool)

(assert (=> b!5081045 (= e!3169470 (appendAssoc!312 (list!19025 (left!42843 xs!286)) (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081046 () Bool)

(declare-fun e!3169474 () Bool)

(assert (=> b!5081046 (= e!3169475 e!3169474)))

(declare-fun res!2163177 () Bool)

(assert (=> b!5081046 (=> (not res!2163177) (not e!3169474))))

(assert (=> b!5081046 (= res!2163177 (appendAssoc!312 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5081047 () Bool)

(assert (=> b!5081047 (= e!3169476 e!3169473)))

(declare-fun res!2163174 () Bool)

(assert (=> b!5081047 (=> (not res!2163174) (not e!3169473))))

(assert (=> b!5081047 (= res!2163174 (appendAssoc!312 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))

(declare-fun d!1642646 () Bool)

(assert (=> d!1642646 e!3169471))

(declare-fun res!2163175 () Bool)

(assert (=> d!1642646 (=> (not res!2163175) (not e!3169471))))

(assert (=> d!1642646 (= res!2163175 e!3169477)))

(declare-fun res!2163179 () Bool)

(assert (=> d!1642646 (=> res!2163179 e!3169477)))

(assert (=> d!1642646 (= res!2163179 (not ((_ is Node!15582) xs!286)))))

(assert (=> d!1642646 (= (appendAssocInst!920 xs!286 (left!42843 (left!42843 ys!41))) true)))

(declare-fun b!5081048 () Bool)

(assert (=> b!5081048 (= e!3169474 (appendAssoc!312 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))

(assert (= (and d!1642646 (not res!2163179)) b!5081043))

(assert (= (and b!5081043 res!2163182) b!5081042))

(assert (= (and b!5081042 (not res!2163180)) b!5081041))

(assert (= (and b!5081041 res!2163181) b!5081045))

(assert (= (and d!1642646 res!2163175) b!5081040))

(assert (= (and b!5081040 (not res!2163176)) b!5081047))

(assert (= (and b!5081047 res!2163174) b!5081044))

(assert (= (and b!5081044 (not res!2163178)) b!5081046))

(assert (= (and b!5081046 res!2163177) b!5081048))

(assert (=> b!5081048 m!6133456))

(declare-fun m!6133902 () Bool)

(assert (=> b!5081048 m!6133902))

(declare-fun m!6133904 () Bool)

(assert (=> b!5081048 m!6133904))

(assert (=> b!5081048 m!6133902))

(assert (=> b!5081048 m!6133456))

(declare-fun m!6133906 () Bool)

(assert (=> b!5081048 m!6133906))

(assert (=> b!5081048 m!6132962))

(declare-fun m!6133908 () Bool)

(assert (=> b!5081048 m!6133908))

(assert (=> b!5081048 m!6132962))

(assert (=> b!5081048 m!6133908))

(assert (=> b!5081048 m!6133904))

(assert (=> b!5081047 m!6132962))

(assert (=> b!5081047 m!6133454))

(assert (=> b!5081047 m!6133456))

(assert (=> b!5081047 m!6132962))

(assert (=> b!5081047 m!6133454))

(assert (=> b!5081047 m!6133456))

(declare-fun m!6133910 () Bool)

(assert (=> b!5081047 m!6133910))

(assert (=> b!5081043 m!6133030))

(assert (=> b!5081043 m!6133032))

(assert (=> b!5081043 m!6133024))

(assert (=> b!5081043 m!6133030))

(assert (=> b!5081043 m!6133032))

(assert (=> b!5081043 m!6133024))

(declare-fun m!6133912 () Bool)

(assert (=> b!5081043 m!6133912))

(assert (=> b!5081045 m!6133030))

(assert (=> b!5081045 m!6133036))

(declare-fun m!6133914 () Bool)

(assert (=> b!5081045 m!6133914))

(declare-fun m!6133916 () Bool)

(assert (=> b!5081045 m!6133916))

(assert (=> b!5081045 m!6133042))

(assert (=> b!5081045 m!6133024))

(assert (=> b!5081045 m!6133030))

(assert (=> b!5081045 m!6133036))

(assert (=> b!5081045 m!6133042))

(assert (=> b!5081045 m!6133024))

(assert (=> b!5081045 m!6133914))

(assert (=> b!5081041 m!6133036))

(assert (=> b!5081041 m!6133042))

(assert (=> b!5081041 m!6133024))

(assert (=> b!5081041 m!6133036))

(assert (=> b!5081041 m!6133042))

(assert (=> b!5081041 m!6133024))

(declare-fun m!6133918 () Bool)

(assert (=> b!5081041 m!6133918))

(assert (=> b!5081046 m!6132962))

(assert (=> b!5081046 m!6133908))

(assert (=> b!5081046 m!6133902))

(assert (=> b!5081046 m!6132962))

(assert (=> b!5081046 m!6133908))

(assert (=> b!5081046 m!6133902))

(declare-fun m!6133924 () Bool)

(assert (=> b!5081046 m!6133924))

(assert (=> d!1642394 d!1642646))

(assert (=> d!1642394 d!1642458))

(declare-fun b!5081056 () Bool)

(declare-fun e!3169480 () List!58576)

(assert (=> b!5081056 (= e!3169480 (Cons!58452 (h!64900 (list!19025 (left!42843 lt!2090875))) (++!12811 (t!371393 (list!19025 (left!42843 lt!2090875))) (list!19025 (right!43173 lt!2090875)))))))

(declare-fun d!1642652 () Bool)

(declare-fun e!3169481 () Bool)

(assert (=> d!1642652 e!3169481))

(declare-fun res!2163190 () Bool)

(assert (=> d!1642652 (=> (not res!2163190) (not e!3169481))))

(declare-fun lt!2090965 () List!58576)

(assert (=> d!1642652 (= res!2163190 (= (content!10428 lt!2090965) ((_ map or) (content!10428 (list!19025 (left!42843 lt!2090875))) (content!10428 (list!19025 (right!43173 lt!2090875))))))))

(assert (=> d!1642652 (= lt!2090965 e!3169480)))

(declare-fun c!872824 () Bool)

(assert (=> d!1642652 (= c!872824 ((_ is Nil!58452) (list!19025 (left!42843 lt!2090875))))))

(assert (=> d!1642652 (= (++!12811 (list!19025 (left!42843 lt!2090875)) (list!19025 (right!43173 lt!2090875))) lt!2090965)))

(declare-fun b!5081055 () Bool)

(assert (=> b!5081055 (= e!3169480 (list!19025 (right!43173 lt!2090875)))))

(declare-fun b!5081057 () Bool)

(declare-fun res!2163189 () Bool)

(assert (=> b!5081057 (=> (not res!2163189) (not e!3169481))))

(assert (=> b!5081057 (= res!2163189 (= (size!39113 lt!2090965) (+ (size!39113 (list!19025 (left!42843 lt!2090875))) (size!39113 (list!19025 (right!43173 lt!2090875))))))))

(declare-fun b!5081058 () Bool)

(assert (=> b!5081058 (= e!3169481 (or (not (= (list!19025 (right!43173 lt!2090875)) Nil!58452)) (= lt!2090965 (list!19025 (left!42843 lt!2090875)))))))

(assert (= (and d!1642652 c!872824) b!5081055))

(assert (= (and d!1642652 (not c!872824)) b!5081056))

(assert (= (and d!1642652 res!2163190) b!5081057))

(assert (= (and b!5081057 res!2163189) b!5081058))

(assert (=> b!5081056 m!6133258))

(declare-fun m!6133934 () Bool)

(assert (=> b!5081056 m!6133934))

(declare-fun m!6133936 () Bool)

(assert (=> d!1642652 m!6133936))

(assert (=> d!1642652 m!6133256))

(declare-fun m!6133938 () Bool)

(assert (=> d!1642652 m!6133938))

(assert (=> d!1642652 m!6133258))

(declare-fun m!6133940 () Bool)

(assert (=> d!1642652 m!6133940))

(declare-fun m!6133942 () Bool)

(assert (=> b!5081057 m!6133942))

(assert (=> b!5081057 m!6133256))

(declare-fun m!6133944 () Bool)

(assert (=> b!5081057 m!6133944))

(assert (=> b!5081057 m!6133258))

(declare-fun m!6133946 () Bool)

(assert (=> b!5081057 m!6133946))

(assert (=> b!5080639 d!1642652))

(declare-fun b!5081059 () Bool)

(declare-fun e!3169489 () List!58576)

(assert (=> b!5081059 (= e!3169489 Nil!58452)))

(declare-fun b!5081063 () Bool)

(declare-fun e!3169491 () List!58576)

(assert (=> b!5081063 (= e!3169491 (++!12811 (list!19025 (left!42843 (left!42843 lt!2090875))) (list!19025 (right!43173 (left!42843 lt!2090875)))))))

(declare-fun d!1642656 () Bool)

(declare-fun c!872832 () Bool)

(assert (=> d!1642656 (= c!872832 ((_ is Empty!15582) (left!42843 lt!2090875)))))

(assert (=> d!1642656 (= (list!19025 (left!42843 lt!2090875)) e!3169489)))

(declare-fun b!5081060 () Bool)

(assert (=> b!5081060 (= e!3169489 e!3169491)))

(declare-fun c!872833 () Bool)

(assert (=> b!5081060 (= c!872833 ((_ is Leaf!25878) (left!42843 lt!2090875)))))

(declare-fun b!5081061 () Bool)

(assert (=> b!5081061 (= e!3169491 (list!19027 (xs!18954 (left!42843 lt!2090875))))))

(assert (= (and d!1642656 c!872832) b!5081059))

(assert (= (and d!1642656 (not c!872832)) b!5081060))

(assert (= (and b!5081060 c!872833) b!5081061))

(assert (= (and b!5081060 (not c!872833)) b!5081063))

(declare-fun m!6133948 () Bool)

(assert (=> b!5081063 m!6133948))

(declare-fun m!6133950 () Bool)

(assert (=> b!5081063 m!6133950))

(assert (=> b!5081063 m!6133948))

(assert (=> b!5081063 m!6133950))

(declare-fun m!6133952 () Bool)

(assert (=> b!5081063 m!6133952))

(declare-fun m!6133954 () Bool)

(assert (=> b!5081061 m!6133954))

(assert (=> b!5080639 d!1642656))

(declare-fun b!5081084 () Bool)

(declare-fun e!3169494 () List!58576)

(assert (=> b!5081084 (= e!3169494 Nil!58452)))

(declare-fun b!5081087 () Bool)

(declare-fun e!3169495 () List!58576)

(assert (=> b!5081087 (= e!3169495 (++!12811 (list!19025 (left!42843 (right!43173 lt!2090875))) (list!19025 (right!43173 (right!43173 lt!2090875)))))))

(declare-fun d!1642658 () Bool)

(declare-fun c!872835 () Bool)

(assert (=> d!1642658 (= c!872835 ((_ is Empty!15582) (right!43173 lt!2090875)))))

(assert (=> d!1642658 (= (list!19025 (right!43173 lt!2090875)) e!3169494)))

(declare-fun b!5081085 () Bool)

(assert (=> b!5081085 (= e!3169494 e!3169495)))

(declare-fun c!872836 () Bool)

(assert (=> b!5081085 (= c!872836 ((_ is Leaf!25878) (right!43173 lt!2090875)))))

(declare-fun b!5081086 () Bool)

(assert (=> b!5081086 (= e!3169495 (list!19027 (xs!18954 (right!43173 lt!2090875))))))

(assert (= (and d!1642658 c!872835) b!5081084))

(assert (= (and d!1642658 (not c!872835)) b!5081085))

(assert (= (and b!5081085 c!872836) b!5081086))

(assert (= (and b!5081085 (not c!872836)) b!5081087))

(declare-fun m!6133956 () Bool)

(assert (=> b!5081087 m!6133956))

(declare-fun m!6133958 () Bool)

(assert (=> b!5081087 m!6133958))

(assert (=> b!5081087 m!6133956))

(assert (=> b!5081087 m!6133958))

(declare-fun m!6133960 () Bool)

(assert (=> b!5081087 m!6133960))

(declare-fun m!6133962 () Bool)

(assert (=> b!5081086 m!6133962))

(assert (=> b!5080639 d!1642658))

(declare-fun d!1642660 () Bool)

(declare-fun res!2163196 () Bool)

(declare-fun e!3169496 () Bool)

(assert (=> d!1642660 (=> (not res!2163196) (not e!3169496))))

(assert (=> d!1642660 (= res!2163196 (= (csize!31394 (right!43173 ys!41)) (+ (size!39112 (left!42843 (right!43173 ys!41))) (size!39112 (right!43173 (right!43173 ys!41))))))))

(assert (=> d!1642660 (= (inv!77656 (right!43173 ys!41)) e!3169496)))

(declare-fun b!5081088 () Bool)

(declare-fun res!2163197 () Bool)

(assert (=> b!5081088 (=> (not res!2163197) (not e!3169496))))

(assert (=> b!5081088 (= res!2163197 (and (not (= (left!42843 (right!43173 ys!41)) Empty!15582)) (not (= (right!43173 (right!43173 ys!41)) Empty!15582))))))

(declare-fun b!5081089 () Bool)

(declare-fun res!2163198 () Bool)

(assert (=> b!5081089 (=> (not res!2163198) (not e!3169496))))

(assert (=> b!5081089 (= res!2163198 (= (cheight!15793 (right!43173 ys!41)) (+ (max!0 (height!2159 (left!42843 (right!43173 ys!41))) (height!2159 (right!43173 (right!43173 ys!41)))) 1)))))

(declare-fun b!5081090 () Bool)

(assert (=> b!5081090 (= e!3169496 (<= 0 (cheight!15793 (right!43173 ys!41))))))

(assert (= (and d!1642660 res!2163196) b!5081088))

(assert (= (and b!5081088 res!2163197) b!5081089))

(assert (= (and b!5081089 res!2163198) b!5081090))

(declare-fun m!6133964 () Bool)

(assert (=> d!1642660 m!6133964))

(declare-fun m!6133966 () Bool)

(assert (=> d!1642660 m!6133966))

(assert (=> b!5081089 m!6133734))

(assert (=> b!5081089 m!6133736))

(assert (=> b!5081089 m!6133734))

(assert (=> b!5081089 m!6133736))

(declare-fun m!6133968 () Bool)

(assert (=> b!5081089 m!6133968))

(assert (=> b!5080347 d!1642660))

(declare-fun d!1642662 () Bool)

(assert (=> d!1642662 (= (inv!77655 (xs!18954 (right!43173 xs!286))) (<= (size!39113 (innerList!15670 (xs!18954 (right!43173 xs!286)))) 2147483647))))

(declare-fun bs!1190644 () Bool)

(assert (= bs!1190644 d!1642662))

(declare-fun m!6133970 () Bool)

(assert (=> bs!1190644 m!6133970))

(assert (=> b!5080771 d!1642662))

(declare-fun d!1642664 () Bool)

(declare-fun c!872837 () Bool)

(assert (=> d!1642664 (= c!872837 ((_ is Node!15582) (left!42843 (right!43173 ys!41))))))

(declare-fun e!3169497 () Bool)

(assert (=> d!1642664 (= (inv!77654 (left!42843 (right!43173 ys!41))) e!3169497)))

(declare-fun b!5081091 () Bool)

(assert (=> b!5081091 (= e!3169497 (inv!77656 (left!42843 (right!43173 ys!41))))))

(declare-fun b!5081092 () Bool)

(declare-fun e!3169498 () Bool)

(assert (=> b!5081092 (= e!3169497 e!3169498)))

(declare-fun res!2163199 () Bool)

(assert (=> b!5081092 (= res!2163199 (not ((_ is Leaf!25878) (left!42843 (right!43173 ys!41)))))))

(assert (=> b!5081092 (=> res!2163199 e!3169498)))

(declare-fun b!5081093 () Bool)

(assert (=> b!5081093 (= e!3169498 (inv!77657 (left!42843 (right!43173 ys!41))))))

(assert (= (and d!1642664 c!872837) b!5081091))

(assert (= (and d!1642664 (not c!872837)) b!5081092))

(assert (= (and b!5081092 (not res!2163199)) b!5081093))

(declare-fun m!6133972 () Bool)

(assert (=> b!5081091 m!6133972))

(declare-fun m!6133974 () Bool)

(assert (=> b!5081093 m!6133974))

(assert (=> b!5080759 d!1642664))

(declare-fun d!1642666 () Bool)

(declare-fun c!872838 () Bool)

(assert (=> d!1642666 (= c!872838 ((_ is Node!15582) (right!43173 (right!43173 ys!41))))))

(declare-fun e!3169499 () Bool)

(assert (=> d!1642666 (= (inv!77654 (right!43173 (right!43173 ys!41))) e!3169499)))

(declare-fun b!5081094 () Bool)

(assert (=> b!5081094 (= e!3169499 (inv!77656 (right!43173 (right!43173 ys!41))))))

(declare-fun b!5081095 () Bool)

(declare-fun e!3169500 () Bool)

(assert (=> b!5081095 (= e!3169499 e!3169500)))

(declare-fun res!2163200 () Bool)

(assert (=> b!5081095 (= res!2163200 (not ((_ is Leaf!25878) (right!43173 (right!43173 ys!41)))))))

(assert (=> b!5081095 (=> res!2163200 e!3169500)))

(declare-fun b!5081096 () Bool)

(assert (=> b!5081096 (= e!3169500 (inv!77657 (right!43173 (right!43173 ys!41))))))

(assert (= (and d!1642666 c!872838) b!5081094))

(assert (= (and d!1642666 (not c!872838)) b!5081095))

(assert (= (and b!5081095 (not res!2163200)) b!5081096))

(declare-fun m!6133976 () Bool)

(assert (=> b!5081094 m!6133976))

(declare-fun m!6133978 () Bool)

(assert (=> b!5081096 m!6133978))

(assert (=> b!5080759 d!1642666))

(declare-fun d!1642668 () Bool)

(declare-fun res!2163205 () Bool)

(declare-fun e!3169501 () Bool)

(assert (=> d!1642668 (=> res!2163205 e!3169501)))

(assert (=> d!1642668 (= res!2163205 (not ((_ is Node!15582) (left!42843 (left!42843 ys!41)))))))

(assert (=> d!1642668 (= (isBalanced!4444 (left!42843 (left!42843 ys!41))) e!3169501)))

(declare-fun b!5081097 () Bool)

(declare-fun res!2163201 () Bool)

(declare-fun e!3169502 () Bool)

(assert (=> b!5081097 (=> (not res!2163201) (not e!3169502))))

(assert (=> b!5081097 (= res!2163201 (<= (- (height!2159 (left!42843 (left!42843 (left!42843 ys!41)))) (height!2159 (right!43173 (left!42843 (left!42843 ys!41))))) 1))))

(declare-fun b!5081098 () Bool)

(declare-fun res!2163202 () Bool)

(assert (=> b!5081098 (=> (not res!2163202) (not e!3169502))))

(assert (=> b!5081098 (= res!2163202 (isBalanced!4444 (right!43173 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081099 () Bool)

(declare-fun res!2163204 () Bool)

(assert (=> b!5081099 (=> (not res!2163204) (not e!3169502))))

(assert (=> b!5081099 (= res!2163204 (isBalanced!4444 (left!42843 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081100 () Bool)

(assert (=> b!5081100 (= e!3169501 e!3169502)))

(declare-fun res!2163203 () Bool)

(assert (=> b!5081100 (=> (not res!2163203) (not e!3169502))))

(assert (=> b!5081100 (= res!2163203 (<= (- 1) (- (height!2159 (left!42843 (left!42843 (left!42843 ys!41)))) (height!2159 (right!43173 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5081101 () Bool)

(declare-fun res!2163206 () Bool)

(assert (=> b!5081101 (=> (not res!2163206) (not e!3169502))))

(assert (=> b!5081101 (= res!2163206 (not (isEmpty!31667 (left!42843 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081102 () Bool)

(assert (=> b!5081102 (= e!3169502 (not (isEmpty!31667 (right!43173 (left!42843 (left!42843 ys!41))))))))

(assert (= (and d!1642668 (not res!2163205)) b!5081100))

(assert (= (and b!5081100 res!2163203) b!5081097))

(assert (= (and b!5081097 res!2163201) b!5081099))

(assert (= (and b!5081099 res!2163204) b!5081098))

(assert (= (and b!5081098 res!2163202) b!5081101))

(assert (= (and b!5081101 res!2163206) b!5081102))

(declare-fun m!6133980 () Bool)

(assert (=> b!5081098 m!6133980))

(declare-fun m!6133982 () Bool)

(assert (=> b!5081097 m!6133982))

(declare-fun m!6133984 () Bool)

(assert (=> b!5081097 m!6133984))

(declare-fun m!6133986 () Bool)

(assert (=> b!5081102 m!6133986))

(assert (=> b!5081100 m!6133982))

(assert (=> b!5081100 m!6133984))

(declare-fun m!6133988 () Bool)

(assert (=> b!5081101 m!6133988))

(declare-fun m!6133990 () Bool)

(assert (=> b!5081099 m!6133990))

(assert (=> b!5080585 d!1642668))

(declare-fun b!5081103 () Bool)

(declare-fun e!3169503 () List!58576)

(assert (=> b!5081103 (= e!3169503 Nil!58452)))

(declare-fun b!5081106 () Bool)

(declare-fun e!3169504 () List!58576)

(assert (=> b!5081106 (= e!3169504 (++!12811 (list!19025 (left!42843 lt!2090884)) (list!19025 (right!43173 lt!2090884))))))

(declare-fun d!1642670 () Bool)

(declare-fun c!872839 () Bool)

(assert (=> d!1642670 (= c!872839 ((_ is Empty!15582) lt!2090884))))

(assert (=> d!1642670 (= (list!19025 lt!2090884) e!3169503)))

(declare-fun b!5081104 () Bool)

(assert (=> b!5081104 (= e!3169503 e!3169504)))

(declare-fun c!872840 () Bool)

(assert (=> b!5081104 (= c!872840 ((_ is Leaf!25878) lt!2090884))))

(declare-fun b!5081105 () Bool)

(assert (=> b!5081105 (= e!3169504 (list!19027 (xs!18954 lt!2090884)))))

(assert (= (and d!1642670 c!872839) b!5081103))

(assert (= (and d!1642670 (not c!872839)) b!5081104))

(assert (= (and b!5081104 c!872840) b!5081105))

(assert (= (and b!5081104 (not c!872840)) b!5081106))

(declare-fun m!6133992 () Bool)

(assert (=> b!5081106 m!6133992))

(declare-fun m!6133994 () Bool)

(assert (=> b!5081106 m!6133994))

(assert (=> b!5081106 m!6133992))

(assert (=> b!5081106 m!6133994))

(declare-fun m!6133996 () Bool)

(assert (=> b!5081106 m!6133996))

(declare-fun m!6133998 () Bool)

(assert (=> b!5081105 m!6133998))

(assert (=> d!1642374 d!1642670))

(declare-fun b!5081108 () Bool)

(declare-fun e!3169505 () List!58576)

(assert (=> b!5081108 (= e!3169505 (Cons!58452 (h!64900 (list!19025 lt!2090879)) (++!12811 (t!371393 (list!19025 lt!2090879)) (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))))

(declare-fun d!1642672 () Bool)

(declare-fun e!3169506 () Bool)

(assert (=> d!1642672 e!3169506))

(declare-fun res!2163208 () Bool)

(assert (=> d!1642672 (=> (not res!2163208) (not e!3169506))))

(declare-fun lt!2090970 () List!58576)

(assert (=> d!1642672 (= res!2163208 (= (content!10428 lt!2090970) ((_ map or) (content!10428 (list!19025 lt!2090879)) (content!10428 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))))

(assert (=> d!1642672 (= lt!2090970 e!3169505)))

(declare-fun c!872841 () Bool)

(assert (=> d!1642672 (= c!872841 ((_ is Nil!58452) (list!19025 lt!2090879)))))

(assert (=> d!1642672 (= (++!12811 (list!19025 lt!2090879) (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) lt!2090970)))

(declare-fun b!5081107 () Bool)

(assert (=> b!5081107 (= e!3169505 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))

(declare-fun b!5081109 () Bool)

(declare-fun res!2163207 () Bool)

(assert (=> b!5081109 (=> (not res!2163207) (not e!3169506))))

(assert (=> b!5081109 (= res!2163207 (= (size!39113 lt!2090970) (+ (size!39113 (list!19025 lt!2090879)) (size!39113 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))))

(declare-fun b!5081110 () Bool)

(assert (=> b!5081110 (= e!3169506 (or (not (= (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) Nil!58452)) (= lt!2090970 (list!19025 lt!2090879))))))

(assert (= (and d!1642672 c!872841) b!5081107))

(assert (= (and d!1642672 (not c!872841)) b!5081108))

(assert (= (and d!1642672 res!2163208) b!5081109))

(assert (= (and b!5081109 res!2163207) b!5081110))

(assert (=> b!5081108 m!6133060))

(declare-fun m!6134000 () Bool)

(assert (=> b!5081108 m!6134000))

(declare-fun m!6134002 () Bool)

(assert (=> d!1642672 m!6134002))

(assert (=> d!1642672 m!6133058))

(declare-fun m!6134004 () Bool)

(assert (=> d!1642672 m!6134004))

(assert (=> d!1642672 m!6133060))

(declare-fun m!6134006 () Bool)

(assert (=> d!1642672 m!6134006))

(declare-fun m!6134008 () Bool)

(assert (=> b!5081109 m!6134008))

(assert (=> b!5081109 m!6133058))

(declare-fun m!6134010 () Bool)

(assert (=> b!5081109 m!6134010))

(assert (=> b!5081109 m!6133060))

(declare-fun m!6134012 () Bool)

(assert (=> b!5081109 m!6134012))

(assert (=> d!1642374 d!1642672))

(declare-fun b!5081111 () Bool)

(declare-fun e!3169507 () List!58576)

(assert (=> b!5081111 (= e!3169507 Nil!58452)))

(declare-fun b!5081114 () Bool)

(declare-fun e!3169508 () List!58576)

(assert (=> b!5081114 (= e!3169508 (++!12811 (list!19025 (left!42843 lt!2090879)) (list!19025 (right!43173 lt!2090879))))))

(declare-fun d!1642674 () Bool)

(declare-fun c!872842 () Bool)

(assert (=> d!1642674 (= c!872842 ((_ is Empty!15582) lt!2090879))))

(assert (=> d!1642674 (= (list!19025 lt!2090879) e!3169507)))

(declare-fun b!5081112 () Bool)

(assert (=> b!5081112 (= e!3169507 e!3169508)))

(declare-fun c!872843 () Bool)

(assert (=> b!5081112 (= c!872843 ((_ is Leaf!25878) lt!2090879))))

(declare-fun b!5081113 () Bool)

(assert (=> b!5081113 (= e!3169508 (list!19027 (xs!18954 lt!2090879)))))

(assert (= (and d!1642674 c!872842) b!5081111))

(assert (= (and d!1642674 (not c!872842)) b!5081112))

(assert (= (and b!5081112 c!872843) b!5081113))

(assert (= (and b!5081112 (not c!872843)) b!5081114))

(declare-fun m!6134014 () Bool)

(assert (=> b!5081114 m!6134014))

(declare-fun m!6134016 () Bool)

(assert (=> b!5081114 m!6134016))

(assert (=> b!5081114 m!6134014))

(assert (=> b!5081114 m!6134016))

(declare-fun m!6134020 () Bool)

(assert (=> b!5081114 m!6134020))

(declare-fun m!6134024 () Bool)

(assert (=> b!5081113 m!6134024))

(assert (=> d!1642374 d!1642674))

(declare-fun b!5081115 () Bool)

(declare-fun e!3169509 () List!58576)

(assert (=> b!5081115 (= e!3169509 Nil!58452)))

(declare-fun b!5081118 () Bool)

(declare-fun e!3169510 () List!58576)

(assert (=> b!5081118 (= e!3169510 (++!12811 (list!19025 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) (list!19025 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))))

(declare-fun d!1642676 () Bool)

(declare-fun c!872844 () Bool)

(assert (=> d!1642676 (= c!872844 ((_ is Empty!15582) (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))

(assert (=> d!1642676 (= (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) e!3169509)))

(declare-fun b!5081116 () Bool)

(assert (=> b!5081116 (= e!3169509 e!3169510)))

(declare-fun c!872845 () Bool)

(assert (=> b!5081116 (= c!872845 ((_ is Leaf!25878) (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))

(declare-fun b!5081117 () Bool)

(assert (=> b!5081117 (= e!3169510 (list!19027 (xs!18954 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(assert (= (and d!1642676 c!872844) b!5081115))

(assert (= (and d!1642676 (not c!872844)) b!5081116))

(assert (= (and b!5081116 c!872845) b!5081117))

(assert (= (and b!5081116 (not c!872845)) b!5081118))

(declare-fun m!6134036 () Bool)

(assert (=> b!5081118 m!6134036))

(declare-fun m!6134040 () Bool)

(assert (=> b!5081118 m!6134040))

(assert (=> b!5081118 m!6134036))

(assert (=> b!5081118 m!6134040))

(declare-fun m!6134046 () Bool)

(assert (=> b!5081118 m!6134046))

(declare-fun m!6134050 () Bool)

(assert (=> b!5081117 m!6134050))

(assert (=> d!1642374 d!1642676))

(declare-fun d!1642678 () Bool)

(assert (=> d!1642678 (= (height!2159 (right!43173 (left!42843 ys!41))) (ite ((_ is Empty!15582) (right!43173 (left!42843 ys!41))) 0 (ite ((_ is Leaf!25878) (right!43173 (left!42843 ys!41))) 1 (cheight!15793 (right!43173 (left!42843 ys!41))))))))

(assert (=> b!5080410 d!1642678))

(declare-fun d!1642680 () Bool)

(assert (=> d!1642680 (= (max!0 (height!2159 (right!43173 (left!42843 ys!41))) (height!2159 (right!43173 ys!41))) (ite (< (height!2159 (right!43173 (left!42843 ys!41))) (height!2159 (right!43173 ys!41))) (height!2159 (right!43173 ys!41)) (height!2159 (right!43173 (left!42843 ys!41)))))))

(assert (=> b!5080410 d!1642680))

(declare-fun d!1642682 () Bool)

(declare-fun lt!2090975 () Int)

(assert (=> d!1642682 (= lt!2090975 (size!39113 (list!19025 (right!43173 (left!42843 ys!41)))))))

(assert (=> d!1642682 (= lt!2090975 (ite ((_ is Empty!15582) (right!43173 (left!42843 ys!41))) 0 (ite ((_ is Leaf!25878) (right!43173 (left!42843 ys!41))) (csize!31395 (right!43173 (left!42843 ys!41))) (csize!31394 (right!43173 (left!42843 ys!41))))))))

(assert (=> d!1642682 (= (size!39112 (right!43173 (left!42843 ys!41))) lt!2090975)))

(declare-fun bs!1190645 () Bool)

(assert (= bs!1190645 d!1642682))

(assert (=> bs!1190645 m!6133018))

(assert (=> bs!1190645 m!6133018))

(assert (=> bs!1190645 m!6133786))

(assert (=> b!5080410 d!1642682))

(assert (=> b!5080410 d!1642380))

(declare-fun d!1642690 () Bool)

(declare-fun lt!2090976 () Int)

(assert (=> d!1642690 (= lt!2090976 (size!39113 (list!19025 (right!43173 ys!41))))))

(assert (=> d!1642690 (= lt!2090976 (ite ((_ is Empty!15582) (right!43173 ys!41)) 0 (ite ((_ is Leaf!25878) (right!43173 ys!41)) (csize!31395 (right!43173 ys!41)) (csize!31394 (right!43173 ys!41)))))))

(assert (=> d!1642690 (= (size!39112 (right!43173 ys!41)) lt!2090976)))

(declare-fun bs!1190646 () Bool)

(assert (= bs!1190646 d!1642690))

(assert (=> bs!1190646 m!6133016))

(assert (=> bs!1190646 m!6133016))

(assert (=> bs!1190646 m!6133788))

(assert (=> b!5080410 d!1642690))

(declare-fun d!1642694 () Bool)

(declare-fun res!2163218 () Bool)

(declare-fun e!3169518 () Bool)

(assert (=> d!1642694 (=> res!2163218 e!3169518)))

(assert (=> d!1642694 (= res!2163218 (not ((_ is Node!15582) (left!42843 ys!41))))))

(assert (=> d!1642694 (= (isBalanced!4444 (left!42843 ys!41)) e!3169518)))

(declare-fun b!5081132 () Bool)

(declare-fun res!2163214 () Bool)

(declare-fun e!3169519 () Bool)

(assert (=> b!5081132 (=> (not res!2163214) (not e!3169519))))

(assert (=> b!5081132 (= res!2163214 (<= (- (height!2159 (left!42843 (left!42843 ys!41))) (height!2159 (right!43173 (left!42843 ys!41)))) 1))))

(declare-fun b!5081133 () Bool)

(declare-fun res!2163215 () Bool)

(assert (=> b!5081133 (=> (not res!2163215) (not e!3169519))))

(assert (=> b!5081133 (= res!2163215 (isBalanced!4444 (right!43173 (left!42843 ys!41))))))

(declare-fun b!5081134 () Bool)

(declare-fun res!2163217 () Bool)

(assert (=> b!5081134 (=> (not res!2163217) (not e!3169519))))

(assert (=> b!5081134 (= res!2163217 (isBalanced!4444 (left!42843 (left!42843 ys!41))))))

(declare-fun b!5081135 () Bool)

(assert (=> b!5081135 (= e!3169518 e!3169519)))

(declare-fun res!2163216 () Bool)

(assert (=> b!5081135 (=> (not res!2163216) (not e!3169519))))

(assert (=> b!5081135 (= res!2163216 (<= (- 1) (- (height!2159 (left!42843 (left!42843 ys!41))) (height!2159 (right!43173 (left!42843 ys!41))))))))

(declare-fun b!5081136 () Bool)

(declare-fun res!2163219 () Bool)

(assert (=> b!5081136 (=> (not res!2163219) (not e!3169519))))

(assert (=> b!5081136 (= res!2163219 (not (isEmpty!31667 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081137 () Bool)

(assert (=> b!5081137 (= e!3169519 (not (isEmpty!31667 (right!43173 (left!42843 ys!41)))))))

(assert (= (and d!1642694 (not res!2163218)) b!5081135))

(assert (= (and b!5081135 res!2163216) b!5081132))

(assert (= (and b!5081132 res!2163214) b!5081134))

(assert (= (and b!5081134 res!2163217) b!5081133))

(assert (= (and b!5081133 res!2163215) b!5081136))

(assert (= (and b!5081136 res!2163219) b!5081137))

(declare-fun m!6134108 () Bool)

(assert (=> b!5081133 m!6134108))

(assert (=> b!5081132 m!6133196))

(assert (=> b!5081132 m!6133078))

(declare-fun m!6134110 () Bool)

(assert (=> b!5081137 m!6134110))

(assert (=> b!5081135 m!6133196))

(assert (=> b!5081135 m!6133078))

(declare-fun m!6134112 () Bool)

(assert (=> b!5081136 m!6134112))

(assert (=> b!5081134 m!6133200))

(assert (=> b!5080726 d!1642694))

(declare-fun d!1642702 () Bool)

(declare-fun lt!2090978 () Bool)

(assert (=> d!1642702 (= lt!2090978 (isEmpty!31669 (list!19025 (left!42843 ys!41))))))

(assert (=> d!1642702 (= lt!2090978 (= (size!39112 (left!42843 ys!41)) 0))))

(assert (=> d!1642702 (= (isEmpty!31667 (left!42843 ys!41)) lt!2090978)))

(declare-fun bs!1190648 () Bool)

(assert (= bs!1190648 d!1642702))

(assert (=> bs!1190648 m!6133026))

(assert (=> bs!1190648 m!6133026))

(declare-fun m!6134116 () Bool)

(assert (=> bs!1190648 m!6134116))

(assert (=> bs!1190648 m!6133414))

(assert (=> b!5080728 d!1642702))

(assert (=> b!5080724 d!1642382))

(assert (=> b!5080724 d!1642380))

(declare-fun b!5081142 () Bool)

(declare-fun e!3169522 () List!58576)

(assert (=> b!5081142 (= e!3169522 (Cons!58452 (h!64900 (t!371393 (list!19025 xs!286))) (++!12811 (t!371393 (t!371393 (list!19025 xs!286))) (list!19025 ys!41))))))

(declare-fun d!1642706 () Bool)

(declare-fun e!3169523 () Bool)

(assert (=> d!1642706 e!3169523))

(declare-fun res!2163222 () Bool)

(assert (=> d!1642706 (=> (not res!2163222) (not e!3169523))))

(declare-fun lt!2090980 () List!58576)

(assert (=> d!1642706 (= res!2163222 (= (content!10428 lt!2090980) ((_ map or) (content!10428 (t!371393 (list!19025 xs!286))) (content!10428 (list!19025 ys!41)))))))

(assert (=> d!1642706 (= lt!2090980 e!3169522)))

(declare-fun c!872851 () Bool)

(assert (=> d!1642706 (= c!872851 ((_ is Nil!58452) (t!371393 (list!19025 xs!286))))))

(assert (=> d!1642706 (= (++!12811 (t!371393 (list!19025 xs!286)) (list!19025 ys!41)) lt!2090980)))

(declare-fun b!5081141 () Bool)

(assert (=> b!5081141 (= e!3169522 (list!19025 ys!41))))

(declare-fun b!5081143 () Bool)

(declare-fun res!2163221 () Bool)

(assert (=> b!5081143 (=> (not res!2163221) (not e!3169523))))

(assert (=> b!5081143 (= res!2163221 (= (size!39113 lt!2090980) (+ (size!39113 (t!371393 (list!19025 xs!286))) (size!39113 (list!19025 ys!41)))))))

(declare-fun b!5081144 () Bool)

(assert (=> b!5081144 (= e!3169523 (or (not (= (list!19025 ys!41) Nil!58452)) (= lt!2090980 (t!371393 (list!19025 xs!286)))))))

(assert (= (and d!1642706 c!872851) b!5081141))

(assert (= (and d!1642706 (not c!872851)) b!5081142))

(assert (= (and d!1642706 res!2163222) b!5081143))

(assert (= (and b!5081143 res!2163221) b!5081144))

(assert (=> b!5081142 m!6132964))

(declare-fun m!6134124 () Bool)

(assert (=> b!5081142 m!6134124))

(declare-fun m!6134126 () Bool)

(assert (=> d!1642706 m!6134126))

(assert (=> d!1642706 m!6133726))

(assert (=> d!1642706 m!6132964))

(assert (=> d!1642706 m!6133322))

(declare-fun m!6134128 () Bool)

(assert (=> b!5081143 m!6134128))

(assert (=> b!5081143 m!6133748))

(assert (=> b!5081143 m!6132964))

(assert (=> b!5081143 m!6133332))

(assert (=> b!5080692 d!1642706))

(declare-fun d!1642716 () Bool)

(assert (=> d!1642716 (= (height!2159 (ite c!872702 xs!286 (right!43173 (left!42843 (left!42843 ys!41))))) (ite ((_ is Empty!15582) (ite c!872702 xs!286 (right!43173 (left!42843 (left!42843 ys!41))))) 0 (ite ((_ is Leaf!25878) (ite c!872702 xs!286 (right!43173 (left!42843 (left!42843 ys!41))))) 1 (cheight!15793 (ite c!872702 xs!286 (right!43173 (left!42843 (left!42843 ys!41))))))))))

(assert (=> bm!354105 d!1642716))

(declare-fun d!1642718 () Bool)

(declare-fun lt!2090982 () Bool)

(assert (=> d!1642718 (= lt!2090982 (isEmpty!31669 (list!19025 (left!42843 xs!286))))))

(assert (=> d!1642718 (= lt!2090982 (= (size!39112 (left!42843 xs!286)) 0))))

(assert (=> d!1642718 (= (isEmpty!31667 (left!42843 xs!286)) lt!2090982)))

(declare-fun bs!1190651 () Bool)

(assert (= bs!1190651 d!1642718))

(assert (=> bs!1190651 m!6133030))

(assert (=> bs!1190651 m!6133030))

(declare-fun m!6134132 () Bool)

(assert (=> bs!1190651 m!6134132))

(declare-fun m!6134134 () Bool)

(assert (=> bs!1190651 m!6134134))

(assert (=> b!5080734 d!1642718))

(declare-fun d!1642722 () Bool)

(assert (=> d!1642722 (= (height!2159 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) (ite ((_ is Empty!15582) (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) 0 (ite ((_ is Leaf!25878) (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) 1 (cheight!15793 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))))

(assert (=> b!5080406 d!1642722))

(declare-fun d!1642724 () Bool)

(declare-fun lt!2090983 () Int)

(assert (=> d!1642724 (= lt!2090983 (size!39113 (list!19025 lt!2090879)))))

(assert (=> d!1642724 (= lt!2090983 (ite ((_ is Empty!15582) lt!2090879) 0 (ite ((_ is Leaf!25878) lt!2090879) (csize!31395 lt!2090879) (csize!31394 lt!2090879))))))

(assert (=> d!1642724 (= (size!39112 lt!2090879) lt!2090983)))

(declare-fun bs!1190652 () Bool)

(assert (= bs!1190652 d!1642724))

(assert (=> bs!1190652 m!6133058))

(assert (=> bs!1190652 m!6133058))

(assert (=> bs!1190652 m!6134010))

(assert (=> b!5080406 d!1642724))

(declare-fun d!1642726 () Bool)

(declare-fun lt!2090984 () Int)

(assert (=> d!1642726 (= lt!2090984 (size!39113 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(assert (=> d!1642726 (= lt!2090984 (ite ((_ is Empty!15582) (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) 0 (ite ((_ is Leaf!25878) (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) (csize!31395 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) (csize!31394 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))))

(assert (=> d!1642726 (= (size!39112 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) lt!2090984)))

(declare-fun bs!1190653 () Bool)

(assert (= bs!1190653 d!1642726))

(assert (=> bs!1190653 m!6132998))

(assert (=> bs!1190653 m!6133060))

(assert (=> bs!1190653 m!6133060))

(assert (=> bs!1190653 m!6134012))

(assert (=> b!5080406 d!1642726))

(assert (=> b!5080406 d!1642392))

(declare-fun d!1642728 () Bool)

(assert (=> d!1642728 (= (max!0 (height!2159 lt!2090879) (height!2159 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) (ite (< (height!2159 lt!2090879) (height!2159 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) (height!2159 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) (height!2159 lt!2090879)))))

(assert (=> b!5080406 d!1642728))

(declare-fun d!1642730 () Bool)

(declare-fun lt!2090985 () Int)

(assert (=> d!1642730 (>= lt!2090985 0)))

(declare-fun e!3169527 () Int)

(assert (=> d!1642730 (= lt!2090985 e!3169527)))

(declare-fun c!872852 () Bool)

(assert (=> d!1642730 (= c!872852 ((_ is Nil!58452) (innerList!15670 (xs!18954 ys!41))))))

(assert (=> d!1642730 (= (size!39113 (innerList!15670 (xs!18954 ys!41))) lt!2090985)))

(declare-fun b!5081153 () Bool)

(assert (=> b!5081153 (= e!3169527 0)))

(declare-fun b!5081154 () Bool)

(assert (=> b!5081154 (= e!3169527 (+ 1 (size!39113 (t!371393 (innerList!15670 (xs!18954 ys!41))))))))

(assert (= (and d!1642730 c!872852) b!5081153))

(assert (= (and d!1642730 (not c!872852)) b!5081154))

(declare-fun m!6134142 () Bool)

(assert (=> b!5081154 m!6134142))

(assert (=> d!1642456 d!1642730))

(declare-fun d!1642734 () Bool)

(declare-fun lt!2090986 () Int)

(assert (=> d!1642734 (>= lt!2090986 0)))

(declare-fun e!3169530 () Int)

(assert (=> d!1642734 (= lt!2090986 e!3169530)))

(declare-fun c!872855 () Bool)

(assert (=> d!1642734 (= c!872855 ((_ is Nil!58452) (innerList!15670 (xs!18954 xs!286))))))

(assert (=> d!1642734 (= (size!39113 (innerList!15670 (xs!18954 xs!286))) lt!2090986)))

(declare-fun b!5081159 () Bool)

(assert (=> b!5081159 (= e!3169530 0)))

(declare-fun b!5081160 () Bool)

(assert (=> b!5081160 (= e!3169530 (+ 1 (size!39113 (t!371393 (innerList!15670 (xs!18954 xs!286))))))))

(assert (= (and d!1642734 c!872855) b!5081159))

(assert (= (and d!1642734 (not c!872855)) b!5081160))

(declare-fun m!6134146 () Bool)

(assert (=> b!5081160 m!6134146))

(assert (=> d!1642464 d!1642734))

(declare-fun d!1642736 () Bool)

(assert (=> d!1642736 (= (height!2159 (ite c!872702 lt!2090908 (left!42843 (left!42843 ys!41)))) (ite ((_ is Empty!15582) (ite c!872702 lt!2090908 (left!42843 (left!42843 ys!41)))) 0 (ite ((_ is Leaf!25878) (ite c!872702 lt!2090908 (left!42843 (left!42843 ys!41)))) 1 (cheight!15793 (ite c!872702 lt!2090908 (left!42843 (left!42843 ys!41)))))))))

(assert (=> bm!354104 d!1642736))

(declare-fun d!1642738 () Bool)

(declare-fun res!2163231 () Bool)

(declare-fun e!3169531 () Bool)

(assert (=> d!1642738 (=> (not res!2163231) (not e!3169531))))

(assert (=> d!1642738 (= res!2163231 (= (csize!31394 xs!286) (+ (size!39112 (left!42843 xs!286)) (size!39112 (right!43173 xs!286)))))))

(assert (=> d!1642738 (= (inv!77656 xs!286) e!3169531)))

(declare-fun b!5081161 () Bool)

(declare-fun res!2163232 () Bool)

(assert (=> b!5081161 (=> (not res!2163232) (not e!3169531))))

(assert (=> b!5081161 (= res!2163232 (and (not (= (left!42843 xs!286) Empty!15582)) (not (= (right!43173 xs!286) Empty!15582))))))

(declare-fun b!5081162 () Bool)

(declare-fun res!2163233 () Bool)

(assert (=> b!5081162 (=> (not res!2163233) (not e!3169531))))

(assert (=> b!5081162 (= res!2163233 (= (cheight!15793 xs!286) (+ (max!0 (height!2159 (left!42843 xs!286)) (height!2159 (right!43173 xs!286))) 1)))))

(declare-fun b!5081163 () Bool)

(assert (=> b!5081163 (= e!3169531 (<= 0 (cheight!15793 xs!286)))))

(assert (= (and d!1642738 res!2163231) b!5081161))

(assert (= (and b!5081161 res!2163232) b!5081162))

(assert (= (and b!5081162 res!2163233) b!5081163))

(assert (=> d!1642738 m!6134134))

(assert (=> d!1642738 m!6133758))

(assert (=> b!5081162 m!6133354))

(assert (=> b!5081162 m!6133356))

(assert (=> b!5081162 m!6133354))

(assert (=> b!5081162 m!6133356))

(declare-fun m!6134156 () Bool)

(assert (=> b!5081162 m!6134156))

(assert (=> b!5080736 d!1642738))

(declare-fun b!5081172 () Bool)

(declare-fun e!3169536 () Conc!15582)

(assert (=> b!5081172 (= e!3169536 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))))

(declare-fun lt!2090988 () Conc!15582)

(declare-fun d!1642742 () Bool)

(assert (=> d!1642742 (= (list!19025 lt!2090988) (++!12811 (list!19025 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) (list!19025 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))))))

(assert (=> d!1642742 (= lt!2090988 e!3169536)))

(declare-fun c!872859 () Bool)

(assert (=> d!1642742 (= c!872859 (= (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)) Empty!15582))))

(assert (=> d!1642742 (= (<>!402 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)) (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) lt!2090988)))

(declare-fun b!5081173 () Bool)

(declare-fun e!3169537 () Conc!15582)

(assert (=> b!5081173 (= e!3169536 e!3169537)))

(declare-fun c!872860 () Bool)

(assert (=> b!5081173 (= c!872860 (= (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)) Empty!15582))))

(declare-fun b!5081175 () Bool)

(assert (=> b!5081175 (= e!3169537 (Node!15582 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)) (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)) (+ (size!39112 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) (size!39112 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))) (+ (max!0 (height!2159 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) (height!2159 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))) 1)))))

(declare-fun b!5081174 () Bool)

(assert (=> b!5081174 (= e!3169537 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)))))

(assert (= (and d!1642742 c!872859) b!5081172))

(assert (= (and d!1642742 (not c!872859)) b!5081173))

(assert (= (and b!5081173 c!872860) b!5081174))

(assert (= (and b!5081173 (not c!872860)) b!5081175))

(declare-fun m!6134170 () Bool)

(assert (=> d!1642742 m!6134170))

(declare-fun m!6134172 () Bool)

(assert (=> d!1642742 m!6134172))

(declare-fun m!6134174 () Bool)

(assert (=> d!1642742 m!6134174))

(assert (=> d!1642742 m!6134172))

(assert (=> d!1642742 m!6134174))

(declare-fun m!6134176 () Bool)

(assert (=> d!1642742 m!6134176))

(declare-fun m!6134178 () Bool)

(assert (=> b!5081175 m!6134178))

(declare-fun m!6134180 () Bool)

(assert (=> b!5081175 m!6134180))

(assert (=> b!5081175 m!6134180))

(declare-fun m!6134182 () Bool)

(assert (=> b!5081175 m!6134182))

(declare-fun m!6134184 () Bool)

(assert (=> b!5081175 m!6134184))

(assert (=> b!5081175 m!6134182))

(declare-fun m!6134194 () Bool)

(assert (=> b!5081175 m!6134194))

(assert (=> bm!354112 d!1642742))

(declare-fun d!1642748 () Bool)

(declare-fun res!2163239 () Bool)

(declare-fun e!3169539 () Bool)

(assert (=> d!1642748 (=> (not res!2163239) (not e!3169539))))

(assert (=> d!1642748 (= res!2163239 (<= (size!39113 (list!19027 (xs!18954 xs!286))) 512))))

(assert (=> d!1642748 (= (inv!77657 xs!286) e!3169539)))

(declare-fun b!5081179 () Bool)

(declare-fun res!2163240 () Bool)

(assert (=> b!5081179 (=> (not res!2163240) (not e!3169539))))

(assert (=> b!5081179 (= res!2163240 (= (csize!31395 xs!286) (size!39113 (list!19027 (xs!18954 xs!286)))))))

(declare-fun b!5081180 () Bool)

(assert (=> b!5081180 (= e!3169539 (and (> (csize!31395 xs!286) 0) (<= (csize!31395 xs!286) 512)))))

(assert (= (and d!1642748 res!2163239) b!5081179))

(assert (= (and b!5081179 res!2163240) b!5081180))

(assert (=> d!1642748 m!6133336))

(assert (=> d!1642748 m!6133336))

(declare-fun m!6134198 () Bool)

(assert (=> d!1642748 m!6134198))

(assert (=> b!5081179 m!6133336))

(assert (=> b!5081179 m!6133336))

(assert (=> b!5081179 m!6134198))

(assert (=> b!5080738 d!1642748))

(assert (=> b!5080577 d!1642556))

(assert (=> b!5080577 d!1642558))

(assert (=> b!5080577 d!1642452))

(assert (=> b!5080577 d!1642560))

(declare-fun d!1642752 () Bool)

(assert (=> d!1642752 (= (inv!77655 (xs!18954 (left!42843 xs!286))) (<= (size!39113 (innerList!15670 (xs!18954 (left!42843 xs!286)))) 2147483647))))

(declare-fun bs!1190654 () Bool)

(assert (= bs!1190654 d!1642752))

(declare-fun m!6134206 () Bool)

(assert (=> bs!1190654 m!6134206))

(assert (=> b!5080768 d!1642752))

(declare-fun d!1642756 () Bool)

(assert (=> d!1642756 (= (list!19027 (xs!18954 xs!286)) (innerList!15670 (xs!18954 xs!286)))))

(assert (=> b!5080704 d!1642756))

(declare-fun d!1642758 () Bool)

(declare-fun lt!2090990 () Bool)

(assert (=> d!1642758 (= lt!2090990 (isEmpty!31669 (list!19025 (right!43173 lt!2090875))))))

(assert (=> d!1642758 (= lt!2090990 (= (size!39112 (right!43173 lt!2090875)) 0))))

(assert (=> d!1642758 (= (isEmpty!31667 (right!43173 lt!2090875)) lt!2090990)))

(declare-fun bs!1190655 () Bool)

(assert (= bs!1190655 d!1642758))

(assert (=> bs!1190655 m!6133258))

(assert (=> bs!1190655 m!6133258))

(declare-fun m!6134208 () Bool)

(assert (=> bs!1190655 m!6134208))

(declare-fun m!6134210 () Bool)

(assert (=> bs!1190655 m!6134210))

(assert (=> b!5080747 d!1642758))

(declare-fun d!1642760 () Bool)

(declare-fun res!2163248 () Bool)

(declare-fun e!3169542 () Bool)

(assert (=> d!1642760 (=> res!2163248 e!3169542)))

(assert (=> d!1642760 (= res!2163248 (not ((_ is Node!15582) (left!42843 xs!286))))))

(assert (=> d!1642760 (= (isBalanced!4444 (left!42843 xs!286)) e!3169542)))

(declare-fun b!5081186 () Bool)

(declare-fun res!2163244 () Bool)

(declare-fun e!3169543 () Bool)

(assert (=> b!5081186 (=> (not res!2163244) (not e!3169543))))

(assert (=> b!5081186 (= res!2163244 (<= (- (height!2159 (left!42843 (left!42843 xs!286))) (height!2159 (right!43173 (left!42843 xs!286)))) 1))))

(declare-fun b!5081187 () Bool)

(declare-fun res!2163245 () Bool)

(assert (=> b!5081187 (=> (not res!2163245) (not e!3169543))))

(assert (=> b!5081187 (= res!2163245 (isBalanced!4444 (right!43173 (left!42843 xs!286))))))

(declare-fun b!5081188 () Bool)

(declare-fun res!2163247 () Bool)

(assert (=> b!5081188 (=> (not res!2163247) (not e!3169543))))

(assert (=> b!5081188 (= res!2163247 (isBalanced!4444 (left!42843 (left!42843 xs!286))))))

(declare-fun b!5081189 () Bool)

(assert (=> b!5081189 (= e!3169542 e!3169543)))

(declare-fun res!2163246 () Bool)

(assert (=> b!5081189 (=> (not res!2163246) (not e!3169543))))

(assert (=> b!5081189 (= res!2163246 (<= (- 1) (- (height!2159 (left!42843 (left!42843 xs!286))) (height!2159 (right!43173 (left!42843 xs!286))))))))

(declare-fun b!5081190 () Bool)

(declare-fun res!2163249 () Bool)

(assert (=> b!5081190 (=> (not res!2163249) (not e!3169543))))

(assert (=> b!5081190 (= res!2163249 (not (isEmpty!31667 (left!42843 (left!42843 xs!286)))))))

(declare-fun b!5081191 () Bool)

(assert (=> b!5081191 (= e!3169543 (not (isEmpty!31667 (right!43173 (left!42843 xs!286)))))))

(assert (= (and d!1642760 (not res!2163248)) b!5081189))

(assert (= (and b!5081189 res!2163246) b!5081186))

(assert (= (and b!5081186 res!2163244) b!5081188))

(assert (= (and b!5081188 res!2163247) b!5081187))

(assert (= (and b!5081187 res!2163245) b!5081190))

(assert (= (and b!5081190 res!2163249) b!5081191))

(declare-fun m!6134218 () Bool)

(assert (=> b!5081187 m!6134218))

(assert (=> b!5081186 m!6133646))

(assert (=> b!5081186 m!6133648))

(declare-fun m!6134220 () Bool)

(assert (=> b!5081191 m!6134220))

(assert (=> b!5081189 m!6133646))

(assert (=> b!5081189 m!6133648))

(declare-fun m!6134222 () Bool)

(assert (=> b!5081190 m!6134222))

(declare-fun m!6134224 () Bool)

(assert (=> b!5081188 m!6134224))

(assert (=> b!5080732 d!1642760))

(declare-fun d!1642764 () Bool)

(declare-fun res!2163250 () Bool)

(declare-fun e!3169546 () Bool)

(assert (=> d!1642764 (=> (not res!2163250) (not e!3169546))))

(assert (=> d!1642764 (= res!2163250 (<= (size!39113 (list!19027 (xs!18954 (right!43173 xs!286)))) 512))))

(assert (=> d!1642764 (= (inv!77657 (right!43173 xs!286)) e!3169546)))

(declare-fun b!5081196 () Bool)

(declare-fun res!2163251 () Bool)

(assert (=> b!5081196 (=> (not res!2163251) (not e!3169546))))

(assert (=> b!5081196 (= res!2163251 (= (csize!31395 (right!43173 xs!286)) (size!39113 (list!19027 (xs!18954 (right!43173 xs!286))))))))

(declare-fun b!5081197 () Bool)

(assert (=> b!5081197 (= e!3169546 (and (> (csize!31395 (right!43173 xs!286)) 0) (<= (csize!31395 (right!43173 xs!286)) 512)))))

(assert (= (and d!1642764 res!2163250) b!5081196))

(assert (= (and b!5081196 res!2163251) b!5081197))

(assert (=> d!1642764 m!6133434))

(assert (=> d!1642764 m!6133434))

(declare-fun m!6134234 () Bool)

(assert (=> d!1642764 m!6134234))

(assert (=> b!5081196 m!6133434))

(assert (=> b!5081196 m!6133434))

(assert (=> b!5081196 m!6134234))

(assert (=> b!5080434 d!1642764))

(assert (=> b!5080745 d!1642640))

(assert (=> b!5080745 d!1642642))

(declare-fun d!1642768 () Bool)

(declare-fun c!872864 () Bool)

(assert (=> d!1642768 (= c!872864 ((_ is Node!15582) (left!42843 (left!42843 ys!41))))))

(declare-fun e!3169547 () Bool)

(assert (=> d!1642768 (= (inv!77654 (left!42843 (left!42843 ys!41))) e!3169547)))

(declare-fun b!5081198 () Bool)

(assert (=> b!5081198 (= e!3169547 (inv!77656 (left!42843 (left!42843 ys!41))))))

(declare-fun b!5081199 () Bool)

(declare-fun e!3169548 () Bool)

(assert (=> b!5081199 (= e!3169547 e!3169548)))

(declare-fun res!2163252 () Bool)

(assert (=> b!5081199 (= res!2163252 (not ((_ is Leaf!25878) (left!42843 (left!42843 ys!41)))))))

(assert (=> b!5081199 (=> res!2163252 e!3169548)))

(declare-fun b!5081200 () Bool)

(assert (=> b!5081200 (= e!3169548 (inv!77657 (left!42843 (left!42843 ys!41))))))

(assert (= (and d!1642768 c!872864) b!5081198))

(assert (= (and d!1642768 (not c!872864)) b!5081199))

(assert (= (and b!5081199 (not res!2163252)) b!5081200))

(declare-fun m!6134236 () Bool)

(assert (=> b!5081198 m!6134236))

(declare-fun m!6134238 () Bool)

(assert (=> b!5081200 m!6134238))

(assert (=> b!5080756 d!1642768))

(declare-fun d!1642770 () Bool)

(declare-fun c!872865 () Bool)

(assert (=> d!1642770 (= c!872865 ((_ is Node!15582) (right!43173 (left!42843 ys!41))))))

(declare-fun e!3169549 () Bool)

(assert (=> d!1642770 (= (inv!77654 (right!43173 (left!42843 ys!41))) e!3169549)))

(declare-fun b!5081201 () Bool)

(assert (=> b!5081201 (= e!3169549 (inv!77656 (right!43173 (left!42843 ys!41))))))

(declare-fun b!5081202 () Bool)

(declare-fun e!3169550 () Bool)

(assert (=> b!5081202 (= e!3169549 e!3169550)))

(declare-fun res!2163253 () Bool)

(assert (=> b!5081202 (= res!2163253 (not ((_ is Leaf!25878) (right!43173 (left!42843 ys!41)))))))

(assert (=> b!5081202 (=> res!2163253 e!3169550)))

(declare-fun b!5081203 () Bool)

(assert (=> b!5081203 (= e!3169550 (inv!77657 (right!43173 (left!42843 ys!41))))))

(assert (= (and d!1642770 c!872865) b!5081201))

(assert (= (and d!1642770 (not c!872865)) b!5081202))

(assert (= (and b!5081202 (not res!2163253)) b!5081203))

(declare-fun m!6134240 () Bool)

(assert (=> b!5081201 m!6134240))

(declare-fun m!6134242 () Bool)

(assert (=> b!5081203 m!6134242))

(assert (=> b!5080756 d!1642770))

(assert (=> b!5080730 d!1642610))

(assert (=> b!5080730 d!1642612))

(declare-fun d!1642776 () Bool)

(declare-fun res!2163255 () Bool)

(declare-fun e!3169553 () Bool)

(assert (=> d!1642776 (=> (not res!2163255) (not e!3169553))))

(assert (=> d!1642776 (= res!2163255 (= (csize!31394 (right!43173 xs!286)) (+ (size!39112 (left!42843 (right!43173 xs!286))) (size!39112 (right!43173 (right!43173 xs!286))))))))

(assert (=> d!1642776 (= (inv!77656 (right!43173 xs!286)) e!3169553)))

(declare-fun b!5081207 () Bool)

(declare-fun res!2163256 () Bool)

(assert (=> b!5081207 (=> (not res!2163256) (not e!3169553))))

(assert (=> b!5081207 (= res!2163256 (and (not (= (left!42843 (right!43173 xs!286)) Empty!15582)) (not (= (right!43173 (right!43173 xs!286)) Empty!15582))))))

(declare-fun b!5081208 () Bool)

(declare-fun res!2163257 () Bool)

(assert (=> b!5081208 (=> (not res!2163257) (not e!3169553))))

(assert (=> b!5081208 (= res!2163257 (= (cheight!15793 (right!43173 xs!286)) (+ (max!0 (height!2159 (left!42843 (right!43173 xs!286))) (height!2159 (right!43173 (right!43173 xs!286)))) 1)))))

(declare-fun b!5081209 () Bool)

(assert (=> b!5081209 (= e!3169553 (<= 0 (cheight!15793 (right!43173 xs!286))))))

(assert (= (and d!1642776 res!2163255) b!5081207))

(assert (= (and b!5081207 res!2163256) b!5081208))

(assert (= (and b!5081208 res!2163257) b!5081209))

(declare-fun m!6134248 () Bool)

(assert (=> d!1642776 m!6134248))

(declare-fun m!6134252 () Bool)

(assert (=> d!1642776 m!6134252))

(assert (=> b!5081208 m!6133808))

(assert (=> b!5081208 m!6133810))

(assert (=> b!5081208 m!6133808))

(assert (=> b!5081208 m!6133810))

(declare-fun m!6134256 () Bool)

(assert (=> b!5081208 m!6134256))

(assert (=> b!5080432 d!1642776))

(declare-fun d!1642782 () Bool)

(declare-fun e!3169557 () Bool)

(assert (=> d!1642782 e!3169557))

(declare-fun c!872869 () Bool)

(assert (=> d!1642782 (= c!872869 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1642782 (= (appendAssoc!312 (list!19025 xs!286) (list!19025 (left!42843 ys!41)) (list!19025 (right!43173 ys!41))) true)))

(declare-fun bm!354213 () Bool)

(declare-fun call!354220 () List!58576)

(assert (=> bm!354213 (= call!354220 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 ys!41))))))

(declare-fun bm!354214 () Bool)

(declare-fun call!354219 () List!58576)

(declare-fun call!354221 () List!58576)

(assert (=> bm!354214 (= call!354219 (++!12811 (list!19025 xs!286) call!354221))))

(declare-fun bm!354215 () Bool)

(assert (=> bm!354215 (= call!354221 (++!12811 (list!19025 (left!42843 ys!41)) (list!19025 (right!43173 ys!41))))))

(declare-fun b!5081215 () Bool)

(declare-fun call!354218 () List!58576)

(assert (=> b!5081215 (= e!3169557 (= call!354218 call!354219))))

(declare-fun bm!354216 () Bool)

(assert (=> bm!354216 (= call!354218 (++!12811 call!354220 (list!19025 (right!43173 ys!41))))))

(declare-fun b!5081216 () Bool)

(assert (=> b!5081216 (= e!3169557 (= call!354218 call!354219))))

(declare-fun lt!2090992 () Bool)

(assert (=> b!5081216 (= lt!2090992 (appendAssoc!312 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 ys!41)) (list!19025 (right!43173 ys!41))))))

(assert (= (and d!1642782 c!872869) b!5081215))

(assert (= (and d!1642782 (not c!872869)) b!5081216))

(assert (= (or b!5081215 b!5081216) bm!354213))

(assert (= (or b!5081215 b!5081216) bm!354215))

(assert (= (or b!5081215 b!5081216) bm!354214))

(assert (= (or b!5081215 b!5081216) bm!354216))

(assert (=> bm!354215 m!6133026))

(assert (=> bm!354215 m!6133016))

(assert (=> bm!354215 m!6133338))

(assert (=> bm!354214 m!6132962))

(declare-fun m!6134260 () Bool)

(assert (=> bm!354214 m!6134260))

(assert (=> bm!354216 m!6133016))

(declare-fun m!6134264 () Bool)

(assert (=> bm!354216 m!6134264))

(assert (=> bm!354213 m!6132962))

(assert (=> bm!354213 m!6133026))

(declare-fun m!6134268 () Bool)

(assert (=> bm!354213 m!6134268))

(assert (=> b!5081216 m!6133026))

(assert (=> b!5081216 m!6133016))

(declare-fun m!6134272 () Bool)

(assert (=> b!5081216 m!6134272))

(assert (=> b!5080387 d!1642782))

(assert (=> b!5080387 d!1642446))

(assert (=> b!5080387 d!1642628))

(assert (=> b!5080387 d!1642602))

(declare-fun e!3169560 () Bool)

(declare-fun tp!1417088 () Bool)

(declare-fun b!5081219 () Bool)

(declare-fun tp!1417090 () Bool)

(assert (=> b!5081219 (= e!3169560 (and (inv!77654 (left!42843 (left!42843 (right!43173 ys!41)))) tp!1417090 (inv!77654 (right!43173 (left!42843 (right!43173 ys!41)))) tp!1417088))))

(declare-fun b!5081221 () Bool)

(declare-fun e!3169559 () Bool)

(declare-fun tp!1417089 () Bool)

(assert (=> b!5081221 (= e!3169559 tp!1417089)))

(declare-fun b!5081220 () Bool)

(assert (=> b!5081220 (= e!3169560 (and (inv!77655 (xs!18954 (left!42843 (right!43173 ys!41)))) e!3169559))))

(assert (=> b!5080759 (= tp!1417077 (and (inv!77654 (left!42843 (right!43173 ys!41))) e!3169560))))

(assert (= (and b!5080759 ((_ is Node!15582) (left!42843 (right!43173 ys!41)))) b!5081219))

(assert (= b!5081220 b!5081221))

(assert (= (and b!5080759 ((_ is Leaf!25878) (left!42843 (right!43173 ys!41)))) b!5081220))

(declare-fun m!6134278 () Bool)

(assert (=> b!5081219 m!6134278))

(declare-fun m!6134280 () Bool)

(assert (=> b!5081219 m!6134280))

(declare-fun m!6134282 () Bool)

(assert (=> b!5081220 m!6134282))

(assert (=> b!5080759 m!6133392))

(declare-fun tp!1417093 () Bool)

(declare-fun b!5081226 () Bool)

(declare-fun e!3169564 () Bool)

(declare-fun tp!1417091 () Bool)

(assert (=> b!5081226 (= e!3169564 (and (inv!77654 (left!42843 (right!43173 (right!43173 ys!41)))) tp!1417093 (inv!77654 (right!43173 (right!43173 (right!43173 ys!41)))) tp!1417091))))

(declare-fun b!5081228 () Bool)

(declare-fun e!3169563 () Bool)

(declare-fun tp!1417092 () Bool)

(assert (=> b!5081228 (= e!3169563 tp!1417092)))

(declare-fun b!5081227 () Bool)

(assert (=> b!5081227 (= e!3169564 (and (inv!77655 (xs!18954 (right!43173 (right!43173 ys!41)))) e!3169563))))

(assert (=> b!5080759 (= tp!1417075 (and (inv!77654 (right!43173 (right!43173 ys!41))) e!3169564))))

(assert (= (and b!5080759 ((_ is Node!15582) (right!43173 (right!43173 ys!41)))) b!5081226))

(assert (= b!5081227 b!5081228))

(assert (= (and b!5080759 ((_ is Leaf!25878) (right!43173 (right!43173 ys!41)))) b!5081227))

(declare-fun m!6134292 () Bool)

(assert (=> b!5081226 m!6134292))

(declare-fun m!6134294 () Bool)

(assert (=> b!5081226 m!6134294))

(declare-fun m!6134296 () Bool)

(assert (=> b!5081227 m!6134296))

(assert (=> b!5080759 m!6133394))

(declare-fun b!5081229 () Bool)

(declare-fun e!3169565 () Bool)

(declare-fun tp!1417094 () Bool)

(assert (=> b!5081229 (= e!3169565 (and tp_is_empty!37087 tp!1417094))))

(assert (=> b!5080772 (= tp!1417085 e!3169565)))

(assert (= (and b!5080772 ((_ is Cons!58452) (innerList!15670 (xs!18954 (right!43173 xs!286))))) b!5081229))

(declare-fun tp!1417097 () Bool)

(declare-fun tp!1417095 () Bool)

(declare-fun b!5081230 () Bool)

(declare-fun e!3169567 () Bool)

(assert (=> b!5081230 (= e!3169567 (and (inv!77654 (left!42843 (left!42843 (left!42843 xs!286)))) tp!1417097 (inv!77654 (right!43173 (left!42843 (left!42843 xs!286)))) tp!1417095))))

(declare-fun b!5081232 () Bool)

(declare-fun e!3169566 () Bool)

(declare-fun tp!1417096 () Bool)

(assert (=> b!5081232 (= e!3169566 tp!1417096)))

(declare-fun b!5081231 () Bool)

(assert (=> b!5081231 (= e!3169567 (and (inv!77655 (xs!18954 (left!42843 (left!42843 xs!286)))) e!3169566))))

(assert (=> b!5080767 (= tp!1417083 (and (inv!77654 (left!42843 (left!42843 xs!286))) e!3169567))))

(assert (= (and b!5080767 ((_ is Node!15582) (left!42843 (left!42843 xs!286)))) b!5081230))

(assert (= b!5081231 b!5081232))

(assert (= (and b!5080767 ((_ is Leaf!25878) (left!42843 (left!42843 xs!286)))) b!5081231))

(declare-fun m!6134300 () Bool)

(assert (=> b!5081230 m!6134300))

(declare-fun m!6134302 () Bool)

(assert (=> b!5081230 m!6134302))

(declare-fun m!6134304 () Bool)

(assert (=> b!5081231 m!6134304))

(assert (=> b!5080767 m!6133398))

(declare-fun tp!1417100 () Bool)

(declare-fun tp!1417098 () Bool)

(declare-fun e!3169569 () Bool)

(declare-fun b!5081233 () Bool)

(assert (=> b!5081233 (= e!3169569 (and (inv!77654 (left!42843 (right!43173 (left!42843 xs!286)))) tp!1417100 (inv!77654 (right!43173 (right!43173 (left!42843 xs!286)))) tp!1417098))))

(declare-fun b!5081235 () Bool)

(declare-fun e!3169568 () Bool)

(declare-fun tp!1417099 () Bool)

(assert (=> b!5081235 (= e!3169568 tp!1417099)))

(declare-fun b!5081234 () Bool)

(assert (=> b!5081234 (= e!3169569 (and (inv!77655 (xs!18954 (right!43173 (left!42843 xs!286)))) e!3169568))))

(assert (=> b!5080767 (= tp!1417081 (and (inv!77654 (right!43173 (left!42843 xs!286))) e!3169569))))

(assert (= (and b!5080767 ((_ is Node!15582) (right!43173 (left!42843 xs!286)))) b!5081233))

(assert (= b!5081234 b!5081235))

(assert (= (and b!5080767 ((_ is Leaf!25878) (right!43173 (left!42843 xs!286)))) b!5081234))

(declare-fun m!6134310 () Bool)

(assert (=> b!5081233 m!6134310))

(declare-fun m!6134312 () Bool)

(assert (=> b!5081233 m!6134312))

(declare-fun m!6134314 () Bool)

(assert (=> b!5081234 m!6134314))

(assert (=> b!5080767 m!6133400))

(declare-fun b!5081240 () Bool)

(declare-fun e!3169572 () Bool)

(declare-fun tp!1417101 () Bool)

(assert (=> b!5081240 (= e!3169572 (and tp_is_empty!37087 tp!1417101))))

(assert (=> b!5080769 (= tp!1417082 e!3169572)))

(assert (= (and b!5080769 ((_ is Cons!58452) (innerList!15670 (xs!18954 (left!42843 xs!286))))) b!5081240))

(declare-fun tp!1417102 () Bool)

(declare-fun b!5081241 () Bool)

(declare-fun tp!1417104 () Bool)

(declare-fun e!3169574 () Bool)

(assert (=> b!5081241 (= e!3169574 (and (inv!77654 (left!42843 (left!42843 (right!43173 xs!286)))) tp!1417104 (inv!77654 (right!43173 (left!42843 (right!43173 xs!286)))) tp!1417102))))

(declare-fun b!5081243 () Bool)

(declare-fun e!3169573 () Bool)

(declare-fun tp!1417103 () Bool)

(assert (=> b!5081243 (= e!3169573 tp!1417103)))

(declare-fun b!5081242 () Bool)

(assert (=> b!5081242 (= e!3169574 (and (inv!77655 (xs!18954 (left!42843 (right!43173 xs!286)))) e!3169573))))

(assert (=> b!5080770 (= tp!1417086 (and (inv!77654 (left!42843 (right!43173 xs!286))) e!3169574))))

(assert (= (and b!5080770 ((_ is Node!15582) (left!42843 (right!43173 xs!286)))) b!5081241))

(assert (= b!5081242 b!5081243))

(assert (= (and b!5080770 ((_ is Leaf!25878) (left!42843 (right!43173 xs!286)))) b!5081242))

(declare-fun m!6134324 () Bool)

(assert (=> b!5081241 m!6134324))

(declare-fun m!6134326 () Bool)

(assert (=> b!5081241 m!6134326))

(declare-fun m!6134328 () Bool)

(assert (=> b!5081242 m!6134328))

(assert (=> b!5080770 m!6133404))

(declare-fun tp!1417107 () Bool)

(declare-fun e!3169578 () Bool)

(declare-fun tp!1417105 () Bool)

(declare-fun b!5081248 () Bool)

(assert (=> b!5081248 (= e!3169578 (and (inv!77654 (left!42843 (right!43173 (right!43173 xs!286)))) tp!1417107 (inv!77654 (right!43173 (right!43173 (right!43173 xs!286)))) tp!1417105))))

(declare-fun b!5081250 () Bool)

(declare-fun e!3169577 () Bool)

(declare-fun tp!1417106 () Bool)

(assert (=> b!5081250 (= e!3169577 tp!1417106)))

(declare-fun b!5081249 () Bool)

(assert (=> b!5081249 (= e!3169578 (and (inv!77655 (xs!18954 (right!43173 (right!43173 xs!286)))) e!3169577))))

(assert (=> b!5080770 (= tp!1417084 (and (inv!77654 (right!43173 (right!43173 xs!286))) e!3169578))))

(assert (= (and b!5080770 ((_ is Node!15582) (right!43173 (right!43173 xs!286)))) b!5081248))

(assert (= b!5081249 b!5081250))

(assert (= (and b!5080770 ((_ is Leaf!25878) (right!43173 (right!43173 xs!286)))) b!5081249))

(declare-fun m!6134330 () Bool)

(assert (=> b!5081248 m!6134330))

(declare-fun m!6134332 () Bool)

(assert (=> b!5081248 m!6134332))

(declare-fun m!6134334 () Bool)

(assert (=> b!5081249 m!6134334))

(assert (=> b!5080770 m!6133406))

(declare-fun b!5081251 () Bool)

(declare-fun e!3169579 () Bool)

(declare-fun tp!1417108 () Bool)

(assert (=> b!5081251 (= e!3169579 (and tp_is_empty!37087 tp!1417108))))

(assert (=> b!5080773 (= tp!1417087 e!3169579)))

(assert (= (and b!5080773 ((_ is Cons!58452) (t!371393 (innerList!15670 (xs!18954 xs!286))))) b!5081251))

(declare-fun e!3169581 () Bool)

(declare-fun tp!1417111 () Bool)

(declare-fun b!5081252 () Bool)

(declare-fun tp!1417109 () Bool)

(assert (=> b!5081252 (= e!3169581 (and (inv!77654 (left!42843 (left!42843 (left!42843 ys!41)))) tp!1417111 (inv!77654 (right!43173 (left!42843 (left!42843 ys!41)))) tp!1417109))))

(declare-fun b!5081254 () Bool)

(declare-fun e!3169580 () Bool)

(declare-fun tp!1417110 () Bool)

(assert (=> b!5081254 (= e!3169580 tp!1417110)))

(declare-fun b!5081253 () Bool)

(assert (=> b!5081253 (= e!3169581 (and (inv!77655 (xs!18954 (left!42843 (left!42843 ys!41)))) e!3169580))))

(assert (=> b!5080756 (= tp!1417074 (and (inv!77654 (left!42843 (left!42843 ys!41))) e!3169581))))

(assert (= (and b!5080756 ((_ is Node!15582) (left!42843 (left!42843 ys!41)))) b!5081252))

(assert (= b!5081253 b!5081254))

(assert (= (and b!5080756 ((_ is Leaf!25878) (left!42843 (left!42843 ys!41)))) b!5081253))

(declare-fun m!6134346 () Bool)

(assert (=> b!5081252 m!6134346))

(declare-fun m!6134348 () Bool)

(assert (=> b!5081252 m!6134348))

(declare-fun m!6134350 () Bool)

(assert (=> b!5081253 m!6134350))

(assert (=> b!5080756 m!6133386))

(declare-fun e!3169585 () Bool)

(declare-fun b!5081259 () Bool)

(declare-fun tp!1417112 () Bool)

(declare-fun tp!1417114 () Bool)

(assert (=> b!5081259 (= e!3169585 (and (inv!77654 (left!42843 (right!43173 (left!42843 ys!41)))) tp!1417114 (inv!77654 (right!43173 (right!43173 (left!42843 ys!41)))) tp!1417112))))

(declare-fun b!5081261 () Bool)

(declare-fun e!3169584 () Bool)

(declare-fun tp!1417113 () Bool)

(assert (=> b!5081261 (= e!3169584 tp!1417113)))

(declare-fun b!5081260 () Bool)

(assert (=> b!5081260 (= e!3169585 (and (inv!77655 (xs!18954 (right!43173 (left!42843 ys!41)))) e!3169584))))

(assert (=> b!5080756 (= tp!1417072 (and (inv!77654 (right!43173 (left!42843 ys!41))) e!3169585))))

(assert (= (and b!5080756 ((_ is Node!15582) (right!43173 (left!42843 ys!41)))) b!5081259))

(assert (= b!5081260 b!5081261))

(assert (= (and b!5080756 ((_ is Leaf!25878) (right!43173 (left!42843 ys!41)))) b!5081260))

(declare-fun m!6134360 () Bool)

(assert (=> b!5081259 m!6134360))

(declare-fun m!6134362 () Bool)

(assert (=> b!5081259 m!6134362))

(declare-fun m!6134364 () Bool)

(assert (=> b!5081260 m!6134364))

(assert (=> b!5080756 m!6133388))

(declare-fun b!5081266 () Bool)

(declare-fun e!3169588 () Bool)

(declare-fun tp!1417115 () Bool)

(assert (=> b!5081266 (= e!3169588 (and tp_is_empty!37087 tp!1417115))))

(assert (=> b!5080761 (= tp!1417076 e!3169588)))

(assert (= (and b!5080761 ((_ is Cons!58452) (innerList!15670 (xs!18954 (right!43173 ys!41))))) b!5081266))

(declare-fun b!5081267 () Bool)

(declare-fun e!3169589 () Bool)

(declare-fun tp!1417116 () Bool)

(assert (=> b!5081267 (= e!3169589 (and tp_is_empty!37087 tp!1417116))))

(assert (=> b!5080766 (= tp!1417080 e!3169589)))

(assert (= (and b!5080766 ((_ is Cons!58452) (t!371393 (innerList!15670 (xs!18954 ys!41))))) b!5081267))

(declare-fun b!5081268 () Bool)

(declare-fun e!3169590 () Bool)

(declare-fun tp!1417117 () Bool)

(assert (=> b!5081268 (= e!3169590 (and tp_is_empty!37087 tp!1417117))))

(assert (=> b!5080758 (= tp!1417073 e!3169590)))

(assert (= (and b!5080758 ((_ is Cons!58452) (innerList!15670 (xs!18954 (left!42843 ys!41))))) b!5081268))

(check-sat (not d!1642638) (not b!5080909) (not b!5081016) (not b!5081208) (not b!5080911) (not b!5081098) (not b!5081221) (not b!5081254) (not b!5080778) (not bm!354186) (not b!5080818) (not b!5080996) (not bm!354157) (not d!1642598) (not bm!354188) (not bm!354178) (not b!5081248) (not d!1642738) (not b!5081029) (not b!5081023) (not b!5080881) (not b!5080817) (not b!5081021) (not b!5080767) (not b!5081101) (not b!5081233) (not b!5081019) (not d!1642636) (not b!5081266) (not b!5081087) (not b!5080973) (not d!1642622) (not d!1642488) (not b!5081230) (not d!1642776) (not b!5080979) (not b!5081260) (not b!5081252) (not b!5081018) (not b!5081137) (not bm!354214) (not b!5081041) (not d!1642672) (not b!5080913) (not b!5081105) (not b!5081043) (not b!5081097) (not b!5080954) (not b!5080828) (not b!5081093) (not b!5081002) (not b!5081031) (not b!5081231) (not b!5081056) (not b!5080895) (not b!5080809) (not b!5080829) (not b!5080756) (not b!5080915) (not bm!354180) (not d!1642588) (not b!5081261) (not b!5081045) (not bm!354137) (not b!5081242) (not b!5080898) (not b!5080887) (not b!5080888) (not bm!354138) (not b!5081136) (not b!5080972) (not b!5081198) (not b!5081201) (not b!5080899) (not bm!354216) (not b!5081229) (not b!5080968) (not b!5081000) (not bm!354182) (not b!5081179) (not d!1642748) (not b!5081200) (not b!5080832) (not b!5081001) (not b!5080824) (not d!1642608) (not b!5081034) (not d!1642702) (not bm!354185) (not b!5080821) (not b!5081232) (not bm!354161) (not b!5081106) (not b!5080812) (not b!5081187) (not b!5080906) (not b!5080897) (not b!5081020) (not b!5081117) (not b!5081259) (not d!1642518) (not d!1642652) (not b!5081033) (not d!1642472) (not b!5081061) (not b!5081005) tp_is_empty!37087 (not b!5080770) (not bm!354183) (not b!5081142) (not bm!354158) (not b!5080999) (not b!5080805) (not d!1642724) (not d!1642484) (not b!5081240) (not b!5081024) (not bm!354172) (not b!5080982) (not b!5081006) (not b!5081143) (not b!5081094) (not b!5081099) (not b!5080981) (not b!5081048) (not d!1642718) (not b!5081250) (not d!1642536) (not d!1642468) (not b!5081047) (not bm!354153) (not bm!354187) (not b!5081037) (not b!5081220) (not bm!354140) (not b!5081253) (not d!1642632) (not bm!354164) (not bm!354171) (not d!1642606) (not b!5081109) (not b!5081134) (not b!5081063) (not b!5081189) (not b!5081102) (not b!5080858) (not bm!354179) (not d!1642538) (not b!5081234) (not bm!354170) (not b!5081243) (not b!5081251) (not b!5080963) (not bm!354213) (not b!5081241) (not b!5080806) (not d!1642690) (not b!5081235) (not d!1642552) (not b!5080975) (not b!5081091) (not b!5081188) (not b!5080965) (not b!5081113) (not b!5081249) (not b!5081017) (not d!1642498) (not b!5081096) (not b!5081190) (not b!5080759) (not b!5080798) (not d!1642752) (not b!5080880) (not b!5081175) (not bm!354181) (not b!5081100) (not d!1642548) (not b!5081228) (not b!5080967) (not b!5080813) (not b!5080952) (not b!5081219) (not d!1642590) (not d!1642660) (not bm!354160) (not b!5081203) (not b!5080868) (not b!5080926) (not b!5080992) (not b!5080802) (not bm!354169) (not b!5081057) (not b!5080875) (not bm!354168) (not b!5081028) (not b!5080801) (not d!1642758) (not b!5081046) (not bm!354177) (not bm!354215) (not b!5080908) (not b!5080993) (not b!5080787) (not b!5080945) (not b!5081036) (not b!5081216) (not b!5080951) (not b!5081186) (not b!5081191) (not b!5081132) (not b!5081114) (not b!5081154) (not b!5080949) (not b!5081268) (not b!5080896) (not b!5081196) (not b!5080838) (not b!5081133) (not b!5080970) (not b!5081032) (not b!5081226) (not b!5080955) (not d!1642742) (not d!1642682) (not b!5081162) (not bm!354139) (not b!5081086) (not b!5081135) (not b!5081012) (not bm!354184) (not b!5081003) (not b!5081267) (not b!5080953) (not b!5080997) (not b!5080947) (not b!5081089) (not b!5080810) (not b!5080950) (not b!5080894) (not d!1642706) (not b!5081108) (not b!5081227) (not d!1642726) (not b!5081118) (not b!5080998) (not d!1642764) (not b!5081038) (not b!5081160) (not b!5081009) (not b!5081035) (not b!5080978) (not b!5080869) (not d!1642662))
(check-sat)
(get-model)

(declare-fun d!1642872 () Bool)

(declare-fun res!2163320 () Bool)

(declare-fun e!3169657 () Bool)

(assert (=> d!1642872 (=> res!2163320 e!3169657)))

(assert (=> d!1642872 (= res!2163320 (not ((_ is Node!15582) (left!42843 (left!42843 lt!2090875)))))))

(assert (=> d!1642872 (= (isBalanced!4444 (left!42843 (left!42843 lt!2090875))) e!3169657)))

(declare-fun b!5081398 () Bool)

(declare-fun res!2163316 () Bool)

(declare-fun e!3169658 () Bool)

(assert (=> b!5081398 (=> (not res!2163316) (not e!3169658))))

(assert (=> b!5081398 (= res!2163316 (<= (- (height!2159 (left!42843 (left!42843 (left!42843 lt!2090875)))) (height!2159 (right!43173 (left!42843 (left!42843 lt!2090875))))) 1))))

(declare-fun b!5081399 () Bool)

(declare-fun res!2163317 () Bool)

(assert (=> b!5081399 (=> (not res!2163317) (not e!3169658))))

(assert (=> b!5081399 (= res!2163317 (isBalanced!4444 (right!43173 (left!42843 (left!42843 lt!2090875)))))))

(declare-fun b!5081400 () Bool)

(declare-fun res!2163319 () Bool)

(assert (=> b!5081400 (=> (not res!2163319) (not e!3169658))))

(assert (=> b!5081400 (= res!2163319 (isBalanced!4444 (left!42843 (left!42843 (left!42843 lt!2090875)))))))

(declare-fun b!5081401 () Bool)

(assert (=> b!5081401 (= e!3169657 e!3169658)))

(declare-fun res!2163318 () Bool)

(assert (=> b!5081401 (=> (not res!2163318) (not e!3169658))))

(assert (=> b!5081401 (= res!2163318 (<= (- 1) (- (height!2159 (left!42843 (left!42843 (left!42843 lt!2090875)))) (height!2159 (right!43173 (left!42843 (left!42843 lt!2090875)))))))))

(declare-fun b!5081402 () Bool)

(declare-fun res!2163321 () Bool)

(assert (=> b!5081402 (=> (not res!2163321) (not e!3169658))))

(assert (=> b!5081402 (= res!2163321 (not (isEmpty!31667 (left!42843 (left!42843 (left!42843 lt!2090875))))))))

(declare-fun b!5081403 () Bool)

(assert (=> b!5081403 (= e!3169658 (not (isEmpty!31667 (right!43173 (left!42843 (left!42843 lt!2090875))))))))

(assert (= (and d!1642872 (not res!2163320)) b!5081401))

(assert (= (and b!5081401 res!2163318) b!5081398))

(assert (= (and b!5081398 res!2163316) b!5081400))

(assert (= (and b!5081400 res!2163319) b!5081399))

(assert (= (and b!5081399 res!2163317) b!5081402))

(assert (= (and b!5081402 res!2163321) b!5081403))

(declare-fun m!6134618 () Bool)

(assert (=> b!5081399 m!6134618))

(declare-fun m!6134620 () Bool)

(assert (=> b!5081398 m!6134620))

(declare-fun m!6134622 () Bool)

(assert (=> b!5081398 m!6134622))

(declare-fun m!6134624 () Bool)

(assert (=> b!5081403 m!6134624))

(assert (=> b!5081401 m!6134620))

(assert (=> b!5081401 m!6134622))

(declare-fun m!6134626 () Bool)

(assert (=> b!5081402 m!6134626))

(declare-fun m!6134628 () Bool)

(assert (=> b!5081400 m!6134628))

(assert (=> b!5081018 d!1642872))

(declare-fun d!1642874 () Bool)

(assert (=> d!1642874 (= (inv!77655 (xs!18954 (left!42843 (left!42843 xs!286)))) (<= (size!39113 (innerList!15670 (xs!18954 (left!42843 (left!42843 xs!286))))) 2147483647))))

(declare-fun bs!1190662 () Bool)

(assert (= bs!1190662 d!1642874))

(declare-fun m!6134630 () Bool)

(assert (=> bs!1190662 m!6134630))

(assert (=> b!5081231 d!1642874))

(declare-fun d!1642876 () Bool)

(declare-fun e!3169659 () Bool)

(assert (=> d!1642876 e!3169659))

(declare-fun c!872902 () Bool)

(assert (=> d!1642876 (= c!872902 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1642876 (= (appendAssoc!312 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))) true)))

(declare-fun bm!354225 () Bool)

(declare-fun call!354232 () List!58576)

(assert (=> bm!354225 (= call!354232 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(declare-fun bm!354226 () Bool)

(declare-fun call!354231 () List!58576)

(declare-fun call!354233 () List!58576)

(assert (=> bm!354226 (= call!354231 (++!12811 (list!19025 xs!286) call!354233))))

(declare-fun bm!354227 () Bool)

(assert (=> bm!354227 (= call!354233 (++!12811 (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5081404 () Bool)

(declare-fun call!354230 () List!58576)

(assert (=> b!5081404 (= e!3169659 (= call!354230 call!354231))))

(declare-fun bm!354228 () Bool)

(assert (=> bm!354228 (= call!354230 (++!12811 call!354232 (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5081405 () Bool)

(assert (=> b!5081405 (= e!3169659 (= call!354230 call!354231))))

(declare-fun lt!2091006 () Bool)

(assert (=> b!5081405 (= lt!2091006 (appendAssoc!312 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(assert (= (and d!1642876 c!872902) b!5081404))

(assert (= (and d!1642876 (not c!872902)) b!5081405))

(assert (= (or b!5081404 b!5081405) bm!354225))

(assert (= (or b!5081404 b!5081405) bm!354227))

(assert (= (or b!5081404 b!5081405) bm!354226))

(assert (= (or b!5081404 b!5081405) bm!354228))

(assert (=> bm!354227 m!6133908))

(assert (=> bm!354227 m!6133902))

(declare-fun m!6134632 () Bool)

(assert (=> bm!354227 m!6134632))

(assert (=> bm!354226 m!6132962))

(declare-fun m!6134634 () Bool)

(assert (=> bm!354226 m!6134634))

(assert (=> bm!354228 m!6133902))

(declare-fun m!6134636 () Bool)

(assert (=> bm!354228 m!6134636))

(assert (=> bm!354225 m!6132962))

(assert (=> bm!354225 m!6133908))

(assert (=> bm!354225 m!6133904))

(assert (=> b!5081405 m!6133908))

(assert (=> b!5081405 m!6133902))

(declare-fun m!6134638 () Bool)

(assert (=> b!5081405 m!6134638))

(assert (=> b!5081046 d!1642876))

(assert (=> b!5081046 d!1642446))

(declare-fun b!5081406 () Bool)

(declare-fun e!3169660 () List!58576)

(assert (=> b!5081406 (= e!3169660 Nil!58452)))

(declare-fun b!5081409 () Bool)

(declare-fun e!3169661 () List!58576)

(assert (=> b!5081409 (= e!3169661 (++!12811 (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(declare-fun d!1642878 () Bool)

(declare-fun c!872903 () Bool)

(assert (=> d!1642878 (= c!872903 ((_ is Empty!15582) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1642878 (= (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))) e!3169660)))

(declare-fun b!5081407 () Bool)

(assert (=> b!5081407 (= e!3169660 e!3169661)))

(declare-fun c!872904 () Bool)

(assert (=> b!5081407 (= c!872904 ((_ is Leaf!25878) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081408 () Bool)

(assert (=> b!5081408 (= e!3169661 (list!19027 (xs!18954 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(assert (= (and d!1642878 c!872903) b!5081406))

(assert (= (and d!1642878 (not c!872903)) b!5081407))

(assert (= (and b!5081407 c!872904) b!5081408))

(assert (= (and b!5081407 (not c!872904)) b!5081409))

(declare-fun m!6134640 () Bool)

(assert (=> b!5081409 m!6134640))

(declare-fun m!6134642 () Bool)

(assert (=> b!5081409 m!6134642))

(assert (=> b!5081409 m!6134640))

(assert (=> b!5081409 m!6134642))

(declare-fun m!6134644 () Bool)

(assert (=> b!5081409 m!6134644))

(declare-fun m!6134646 () Bool)

(assert (=> b!5081408 m!6134646))

(assert (=> b!5081046 d!1642878))

(declare-fun b!5081410 () Bool)

(declare-fun e!3169662 () List!58576)

(assert (=> b!5081410 (= e!3169662 Nil!58452)))

(declare-fun b!5081413 () Bool)

(declare-fun e!3169663 () List!58576)

(assert (=> b!5081413 (= e!3169663 (++!12811 (list!19025 (left!42843 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))) (list!19025 (right!43173 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(declare-fun d!1642880 () Bool)

(declare-fun c!872905 () Bool)

(assert (=> d!1642880 (= c!872905 ((_ is Empty!15582) (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1642880 (= (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))) e!3169662)))

(declare-fun b!5081411 () Bool)

(assert (=> b!5081411 (= e!3169662 e!3169663)))

(declare-fun c!872906 () Bool)

(assert (=> b!5081411 (= c!872906 ((_ is Leaf!25878) (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081412 () Bool)

(assert (=> b!5081412 (= e!3169663 (list!19027 (xs!18954 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(assert (= (and d!1642880 c!872905) b!5081410))

(assert (= (and d!1642880 (not c!872905)) b!5081411))

(assert (= (and b!5081411 c!872906) b!5081412))

(assert (= (and b!5081411 (not c!872906)) b!5081413))

(declare-fun m!6134648 () Bool)

(assert (=> b!5081413 m!6134648))

(declare-fun m!6134650 () Bool)

(assert (=> b!5081413 m!6134650))

(assert (=> b!5081413 m!6134648))

(assert (=> b!5081413 m!6134650))

(declare-fun m!6134652 () Bool)

(assert (=> b!5081413 m!6134652))

(declare-fun m!6134654 () Bool)

(assert (=> b!5081412 m!6134654))

(assert (=> b!5081046 d!1642880))

(declare-fun d!1642882 () Bool)

(declare-fun res!2163326 () Bool)

(declare-fun e!3169664 () Bool)

(assert (=> d!1642882 (=> res!2163326 e!3169664)))

(assert (=> d!1642882 (= res!2163326 (not ((_ is Node!15582) (left!42843 lt!2090909))))))

(assert (=> d!1642882 (= (isBalanced!4444 (left!42843 lt!2090909)) e!3169664)))

(declare-fun b!5081414 () Bool)

(declare-fun res!2163322 () Bool)

(declare-fun e!3169665 () Bool)

(assert (=> b!5081414 (=> (not res!2163322) (not e!3169665))))

(assert (=> b!5081414 (= res!2163322 (<= (- (height!2159 (left!42843 (left!42843 lt!2090909))) (height!2159 (right!43173 (left!42843 lt!2090909)))) 1))))

(declare-fun b!5081415 () Bool)

(declare-fun res!2163323 () Bool)

(assert (=> b!5081415 (=> (not res!2163323) (not e!3169665))))

(assert (=> b!5081415 (= res!2163323 (isBalanced!4444 (right!43173 (left!42843 lt!2090909))))))

(declare-fun b!5081416 () Bool)

(declare-fun res!2163325 () Bool)

(assert (=> b!5081416 (=> (not res!2163325) (not e!3169665))))

(assert (=> b!5081416 (= res!2163325 (isBalanced!4444 (left!42843 (left!42843 lt!2090909))))))

(declare-fun b!5081417 () Bool)

(assert (=> b!5081417 (= e!3169664 e!3169665)))

(declare-fun res!2163324 () Bool)

(assert (=> b!5081417 (=> (not res!2163324) (not e!3169665))))

(assert (=> b!5081417 (= res!2163324 (<= (- 1) (- (height!2159 (left!42843 (left!42843 lt!2090909))) (height!2159 (right!43173 (left!42843 lt!2090909))))))))

(declare-fun b!5081418 () Bool)

(declare-fun res!2163327 () Bool)

(assert (=> b!5081418 (=> (not res!2163327) (not e!3169665))))

(assert (=> b!5081418 (= res!2163327 (not (isEmpty!31667 (left!42843 (left!42843 lt!2090909)))))))

(declare-fun b!5081419 () Bool)

(assert (=> b!5081419 (= e!3169665 (not (isEmpty!31667 (right!43173 (left!42843 lt!2090909)))))))

(assert (= (and d!1642882 (not res!2163326)) b!5081417))

(assert (= (and b!5081417 res!2163324) b!5081414))

(assert (= (and b!5081414 res!2163322) b!5081416))

(assert (= (and b!5081416 res!2163325) b!5081415))

(assert (= (and b!5081415 res!2163323) b!5081418))

(assert (= (and b!5081418 res!2163327) b!5081419))

(declare-fun m!6134656 () Bool)

(assert (=> b!5081415 m!6134656))

(declare-fun m!6134658 () Bool)

(assert (=> b!5081414 m!6134658))

(declare-fun m!6134660 () Bool)

(assert (=> b!5081414 m!6134660))

(declare-fun m!6134662 () Bool)

(assert (=> b!5081419 m!6134662))

(assert (=> b!5081417 m!6134658))

(assert (=> b!5081417 m!6134660))

(declare-fun m!6134664 () Bool)

(assert (=> b!5081418 m!6134664))

(declare-fun m!6134666 () Bool)

(assert (=> b!5081416 m!6134666))

(assert (=> b!5081034 d!1642882))

(declare-fun d!1642884 () Bool)

(declare-fun lt!2091007 () Int)

(assert (=> d!1642884 (>= lt!2091007 0)))

(declare-fun e!3169666 () Int)

(assert (=> d!1642884 (= lt!2091007 e!3169666)))

(declare-fun c!872907 () Bool)

(assert (=> d!1642884 (= c!872907 ((_ is Nil!58452) (t!371393 (list!19025 ys!41))))))

(assert (=> d!1642884 (= (size!39113 (t!371393 (list!19025 ys!41))) lt!2091007)))

(declare-fun b!5081420 () Bool)

(assert (=> b!5081420 (= e!3169666 0)))

(declare-fun b!5081421 () Bool)

(assert (=> b!5081421 (= e!3169666 (+ 1 (size!39113 (t!371393 (t!371393 (list!19025 ys!41))))))))

(assert (= (and d!1642884 c!872907) b!5081420))

(assert (= (and d!1642884 (not c!872907)) b!5081421))

(declare-fun m!6134668 () Bool)

(assert (=> b!5081421 m!6134668))

(assert (=> b!5080967 d!1642884))

(declare-fun d!1642886 () Bool)

(declare-fun c!872908 () Bool)

(assert (=> d!1642886 (= c!872908 ((_ is Node!15582) (left!42843 (right!43173 (right!43173 xs!286)))))))

(declare-fun e!3169667 () Bool)

(assert (=> d!1642886 (= (inv!77654 (left!42843 (right!43173 (right!43173 xs!286)))) e!3169667)))

(declare-fun b!5081422 () Bool)

(assert (=> b!5081422 (= e!3169667 (inv!77656 (left!42843 (right!43173 (right!43173 xs!286)))))))

(declare-fun b!5081423 () Bool)

(declare-fun e!3169668 () Bool)

(assert (=> b!5081423 (= e!3169667 e!3169668)))

(declare-fun res!2163328 () Bool)

(assert (=> b!5081423 (= res!2163328 (not ((_ is Leaf!25878) (left!42843 (right!43173 (right!43173 xs!286))))))))

(assert (=> b!5081423 (=> res!2163328 e!3169668)))

(declare-fun b!5081424 () Bool)

(assert (=> b!5081424 (= e!3169668 (inv!77657 (left!42843 (right!43173 (right!43173 xs!286)))))))

(assert (= (and d!1642886 c!872908) b!5081422))

(assert (= (and d!1642886 (not c!872908)) b!5081423))

(assert (= (and b!5081423 (not res!2163328)) b!5081424))

(declare-fun m!6134670 () Bool)

(assert (=> b!5081422 m!6134670))

(declare-fun m!6134672 () Bool)

(assert (=> b!5081424 m!6134672))

(assert (=> b!5081248 d!1642886))

(declare-fun d!1642888 () Bool)

(declare-fun c!872909 () Bool)

(assert (=> d!1642888 (= c!872909 ((_ is Node!15582) (right!43173 (right!43173 (right!43173 xs!286)))))))

(declare-fun e!3169669 () Bool)

(assert (=> d!1642888 (= (inv!77654 (right!43173 (right!43173 (right!43173 xs!286)))) e!3169669)))

(declare-fun b!5081425 () Bool)

(assert (=> b!5081425 (= e!3169669 (inv!77656 (right!43173 (right!43173 (right!43173 xs!286)))))))

(declare-fun b!5081426 () Bool)

(declare-fun e!3169670 () Bool)

(assert (=> b!5081426 (= e!3169669 e!3169670)))

(declare-fun res!2163329 () Bool)

(assert (=> b!5081426 (= res!2163329 (not ((_ is Leaf!25878) (right!43173 (right!43173 (right!43173 xs!286))))))))

(assert (=> b!5081426 (=> res!2163329 e!3169670)))

(declare-fun b!5081427 () Bool)

(assert (=> b!5081427 (= e!3169670 (inv!77657 (right!43173 (right!43173 (right!43173 xs!286)))))))

(assert (= (and d!1642888 c!872909) b!5081425))

(assert (= (and d!1642888 (not c!872909)) b!5081426))

(assert (= (and b!5081426 (not res!2163329)) b!5081427))

(declare-fun m!6134674 () Bool)

(assert (=> b!5081425 m!6134674))

(declare-fun m!6134676 () Bool)

(assert (=> b!5081427 m!6134676))

(assert (=> b!5081248 d!1642888))

(declare-fun b!5081428 () Bool)

(declare-fun e!3169673 () Bool)

(declare-fun e!3169678 () Bool)

(assert (=> b!5081428 (= e!3169673 e!3169678)))

(declare-fun res!2163332 () Bool)

(assert (=> b!5081428 (=> res!2163332 e!3169678)))

(assert (=> b!5081428 (= res!2163332 (not ((_ is Node!15582) (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(declare-fun b!5081429 () Bool)

(declare-fun e!3169674 () Bool)

(declare-fun e!3169672 () Bool)

(assert (=> b!5081429 (= e!3169674 e!3169672)))

(declare-fun res!2163337 () Bool)

(assert (=> b!5081429 (=> (not res!2163337) (not e!3169672))))

(assert (=> b!5081429 (= res!2163337 (appendAssoc!312 (list!19025 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (list!19025 (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(declare-fun b!5081430 () Bool)

(declare-fun e!3169671 () Bool)

(assert (=> b!5081430 (= e!3169671 e!3169674)))

(declare-fun res!2163336 () Bool)

(assert (=> b!5081430 (=> res!2163336 e!3169674)))

(assert (=> b!5081430 (= res!2163336 (not ((_ is Node!15582) (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))))

(declare-fun b!5081431 () Bool)

(declare-fun e!3169679 () Bool)

(assert (=> b!5081431 (= e!3169679 e!3169671)))

(declare-fun res!2163338 () Bool)

(assert (=> b!5081431 (=> (not res!2163338) (not e!3169671))))

(assert (=> b!5081431 (= res!2163338 (appendAssoc!312 (list!19025 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (list!19025 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(declare-fun b!5081432 () Bool)

(declare-fun e!3169675 () Bool)

(declare-fun e!3169677 () Bool)

(assert (=> b!5081432 (= e!3169675 e!3169677)))

(declare-fun res!2163334 () Bool)

(assert (=> b!5081432 (=> res!2163334 e!3169677)))

(assert (=> b!5081432 (= res!2163334 (not ((_ is Node!15582) (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun b!5081433 () Bool)

(assert (=> b!5081433 (= e!3169672 (appendAssoc!312 (list!19025 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (list!19025 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (++!12811 (list!19025 (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun b!5081434 () Bool)

(declare-fun e!3169676 () Bool)

(assert (=> b!5081434 (= e!3169677 e!3169676)))

(declare-fun res!2163333 () Bool)

(assert (=> b!5081434 (=> (not res!2163333) (not e!3169676))))

(assert (=> b!5081434 (= res!2163333 (appendAssoc!312 (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (list!19025 (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))) (list!19025 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))

(declare-fun b!5081435 () Bool)

(assert (=> b!5081435 (= e!3169678 e!3169675)))

(declare-fun res!2163330 () Bool)

(assert (=> b!5081435 (=> (not res!2163330) (not e!3169675))))

(assert (=> b!5081435 (= res!2163330 (appendAssoc!312 (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (list!19025 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (list!19025 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun d!1642890 () Bool)

(assert (=> d!1642890 e!3169673))

(declare-fun res!2163331 () Bool)

(assert (=> d!1642890 (=> (not res!2163331) (not e!3169673))))

(assert (=> d!1642890 (= res!2163331 e!3169679)))

(declare-fun res!2163335 () Bool)

(assert (=> d!1642890 (=> res!2163335 e!3169679)))

(assert (=> d!1642890 (= res!2163335 (not ((_ is Node!15582) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))))

(assert (=> d!1642890 (= (appendAssocInst!920 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) true)))

(declare-fun b!5081436 () Bool)

(assert (=> b!5081436 (= e!3169676 (appendAssoc!312 (++!12811 (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (list!19025 (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))) (list!19025 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))) (list!19025 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(assert (= (and d!1642890 (not res!2163335)) b!5081431))

(assert (= (and b!5081431 res!2163338) b!5081430))

(assert (= (and b!5081430 (not res!2163336)) b!5081429))

(assert (= (and b!5081429 res!2163337) b!5081433))

(assert (= (and d!1642890 res!2163331) b!5081428))

(assert (= (and b!5081428 (not res!2163332)) b!5081435))

(assert (= (and b!5081435 res!2163330) b!5081432))

(assert (= (and b!5081432 (not res!2163334)) b!5081434))

(assert (= (and b!5081434 res!2163333) b!5081436))

(declare-fun m!6134678 () Bool)

(assert (=> b!5081436 m!6134678))

(declare-fun m!6134680 () Bool)

(assert (=> b!5081436 m!6134680))

(declare-fun m!6134682 () Bool)

(assert (=> b!5081436 m!6134682))

(assert (=> b!5081436 m!6134680))

(assert (=> b!5081436 m!6134678))

(declare-fun m!6134684 () Bool)

(assert (=> b!5081436 m!6134684))

(assert (=> b!5081436 m!6133508))

(declare-fun m!6134686 () Bool)

(assert (=> b!5081436 m!6134686))

(assert (=> b!5081436 m!6133508))

(assert (=> b!5081436 m!6134686))

(assert (=> b!5081436 m!6134682))

(assert (=> b!5081435 m!6133508))

(declare-fun m!6134688 () Bool)

(assert (=> b!5081435 m!6134688))

(assert (=> b!5081435 m!6134678))

(assert (=> b!5081435 m!6133508))

(assert (=> b!5081435 m!6134688))

(assert (=> b!5081435 m!6134678))

(declare-fun m!6134690 () Bool)

(assert (=> b!5081435 m!6134690))

(declare-fun m!6134692 () Bool)

(assert (=> b!5081431 m!6134692))

(declare-fun m!6134694 () Bool)

(assert (=> b!5081431 m!6134694))

(assert (=> b!5081431 m!6133510))

(assert (=> b!5081431 m!6134692))

(assert (=> b!5081431 m!6134694))

(assert (=> b!5081431 m!6133510))

(declare-fun m!6134696 () Bool)

(assert (=> b!5081431 m!6134696))

(assert (=> b!5081433 m!6134692))

(declare-fun m!6134698 () Bool)

(assert (=> b!5081433 m!6134698))

(declare-fun m!6134700 () Bool)

(assert (=> b!5081433 m!6134700))

(declare-fun m!6134702 () Bool)

(assert (=> b!5081433 m!6134702))

(declare-fun m!6134704 () Bool)

(assert (=> b!5081433 m!6134704))

(assert (=> b!5081433 m!6133510))

(assert (=> b!5081433 m!6134692))

(assert (=> b!5081433 m!6134698))

(assert (=> b!5081433 m!6134704))

(assert (=> b!5081433 m!6133510))

(assert (=> b!5081433 m!6134700))

(assert (=> b!5081429 m!6134698))

(assert (=> b!5081429 m!6134704))

(assert (=> b!5081429 m!6133510))

(assert (=> b!5081429 m!6134698))

(assert (=> b!5081429 m!6134704))

(assert (=> b!5081429 m!6133510))

(declare-fun m!6134706 () Bool)

(assert (=> b!5081429 m!6134706))

(assert (=> b!5081434 m!6133508))

(assert (=> b!5081434 m!6134686))

(assert (=> b!5081434 m!6134680))

(assert (=> b!5081434 m!6133508))

(assert (=> b!5081434 m!6134686))

(assert (=> b!5081434 m!6134680))

(declare-fun m!6134708 () Bool)

(assert (=> b!5081434 m!6134708))

(assert (=> d!1642488 d!1642890))

(declare-fun d!1642892 () Bool)

(declare-fun res!2163343 () Bool)

(declare-fun e!3169680 () Bool)

(assert (=> d!1642892 (=> res!2163343 e!3169680)))

(assert (=> d!1642892 (= res!2163343 (not ((_ is Node!15582) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))))

(assert (=> d!1642892 (= (isBalanced!4444 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) e!3169680)))

(declare-fun b!5081437 () Bool)

(declare-fun res!2163339 () Bool)

(declare-fun e!3169681 () Bool)

(assert (=> b!5081437 (=> (not res!2163339) (not e!3169681))))

(assert (=> b!5081437 (= res!2163339 (<= (- (height!2159 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (height!2159 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) 1))))

(declare-fun b!5081438 () Bool)

(declare-fun res!2163340 () Bool)

(assert (=> b!5081438 (=> (not res!2163340) (not e!3169681))))

(assert (=> b!5081438 (= res!2163340 (isBalanced!4444 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))))

(declare-fun b!5081439 () Bool)

(declare-fun res!2163342 () Bool)

(assert (=> b!5081439 (=> (not res!2163342) (not e!3169681))))

(assert (=> b!5081439 (= res!2163342 (isBalanced!4444 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))))

(declare-fun b!5081440 () Bool)

(assert (=> b!5081440 (= e!3169680 e!3169681)))

(declare-fun res!2163341 () Bool)

(assert (=> b!5081440 (=> (not res!2163341) (not e!3169681))))

(assert (=> b!5081440 (= res!2163341 (<= (- 1) (- (height!2159 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (height!2159 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))))))

(declare-fun b!5081441 () Bool)

(declare-fun res!2163344 () Bool)

(assert (=> b!5081441 (=> (not res!2163344) (not e!3169681))))

(assert (=> b!5081441 (= res!2163344 (not (isEmpty!31667 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))))

(declare-fun b!5081442 () Bool)

(assert (=> b!5081442 (= e!3169681 (not (isEmpty!31667 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))))

(assert (= (and d!1642892 (not res!2163343)) b!5081440))

(assert (= (and b!5081440 res!2163341) b!5081437))

(assert (= (and b!5081437 res!2163339) b!5081439))

(assert (= (and b!5081439 res!2163342) b!5081438))

(assert (= (and b!5081438 res!2163340) b!5081441))

(assert (= (and b!5081441 res!2163344) b!5081442))

(declare-fun m!6134710 () Bool)

(assert (=> b!5081438 m!6134710))

(declare-fun m!6134712 () Bool)

(assert (=> b!5081437 m!6134712))

(declare-fun m!6134714 () Bool)

(assert (=> b!5081437 m!6134714))

(declare-fun m!6134716 () Bool)

(assert (=> b!5081442 m!6134716))

(assert (=> b!5081440 m!6134712))

(assert (=> b!5081440 m!6134714))

(declare-fun m!6134718 () Bool)

(assert (=> b!5081441 m!6134718))

(declare-fun m!6134720 () Bool)

(assert (=> b!5081439 m!6134720))

(assert (=> d!1642488 d!1642892))

(declare-fun d!1642894 () Bool)

(declare-fun lt!2091008 () Bool)

(assert (=> d!1642894 (= lt!2091008 (isEmpty!31669 (list!19025 (right!43173 (right!43173 ys!41)))))))

(assert (=> d!1642894 (= lt!2091008 (= (size!39112 (right!43173 (right!43173 ys!41))) 0))))

(assert (=> d!1642894 (= (isEmpty!31667 (right!43173 (right!43173 ys!41))) lt!2091008)))

(declare-fun bs!1190663 () Bool)

(assert (= bs!1190663 d!1642894))

(assert (=> bs!1190663 m!6133800))

(assert (=> bs!1190663 m!6133800))

(declare-fun m!6134722 () Bool)

(assert (=> bs!1190663 m!6134722))

(assert (=> bs!1190663 m!6133966))

(assert (=> b!5080955 d!1642894))

(assert (=> bm!354181 d!1642484))

(assert (=> bm!354179 d!1642518))

(declare-fun d!1642896 () Bool)

(declare-fun lt!2091009 () Int)

(assert (=> d!1642896 (>= lt!2091009 0)))

(declare-fun e!3169682 () Int)

(assert (=> d!1642896 (= lt!2091009 e!3169682)))

(declare-fun c!872910 () Bool)

(assert (=> d!1642896 (= c!872910 ((_ is Nil!58452) (innerList!15670 (xs!18954 (left!42843 ys!41)))))))

(assert (=> d!1642896 (= (size!39113 (innerList!15670 (xs!18954 (left!42843 ys!41)))) lt!2091009)))

(declare-fun b!5081443 () Bool)

(assert (=> b!5081443 (= e!3169682 0)))

(declare-fun b!5081444 () Bool)

(assert (=> b!5081444 (= e!3169682 (+ 1 (size!39113 (t!371393 (innerList!15670 (xs!18954 (left!42843 ys!41)))))))))

(assert (= (and d!1642896 c!872910) b!5081443))

(assert (= (and d!1642896 (not c!872910)) b!5081444))

(declare-fun m!6134724 () Bool)

(assert (=> b!5081444 m!6134724))

(assert (=> d!1642636 d!1642896))

(declare-fun b!5081446 () Bool)

(declare-fun e!3169683 () List!58576)

(assert (=> b!5081446 (= e!3169683 (Cons!58452 (h!64900 (list!19025 (left!42843 (right!43173 (left!42843 ys!41))))) (++!12811 (t!371393 (list!19025 (left!42843 (right!43173 (left!42843 ys!41))))) (list!19025 (right!43173 (right!43173 (left!42843 ys!41)))))))))

(declare-fun d!1642898 () Bool)

(declare-fun e!3169684 () Bool)

(assert (=> d!1642898 e!3169684))

(declare-fun res!2163346 () Bool)

(assert (=> d!1642898 (=> (not res!2163346) (not e!3169684))))

(declare-fun lt!2091010 () List!58576)

(assert (=> d!1642898 (= res!2163346 (= (content!10428 lt!2091010) ((_ map or) (content!10428 (list!19025 (left!42843 (right!43173 (left!42843 ys!41))))) (content!10428 (list!19025 (right!43173 (right!43173 (left!42843 ys!41))))))))))

(assert (=> d!1642898 (= lt!2091010 e!3169683)))

(declare-fun c!872911 () Bool)

(assert (=> d!1642898 (= c!872911 ((_ is Nil!58452) (list!19025 (left!42843 (right!43173 (left!42843 ys!41))))))))

(assert (=> d!1642898 (= (++!12811 (list!19025 (left!42843 (right!43173 (left!42843 ys!41)))) (list!19025 (right!43173 (right!43173 (left!42843 ys!41))))) lt!2091010)))

(declare-fun b!5081445 () Bool)

(assert (=> b!5081445 (= e!3169683 (list!19025 (right!43173 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5081447 () Bool)

(declare-fun res!2163345 () Bool)

(assert (=> b!5081447 (=> (not res!2163345) (not e!3169684))))

(assert (=> b!5081447 (= res!2163345 (= (size!39113 lt!2091010) (+ (size!39113 (list!19025 (left!42843 (right!43173 (left!42843 ys!41))))) (size!39113 (list!19025 (right!43173 (right!43173 (left!42843 ys!41))))))))))

(declare-fun b!5081448 () Bool)

(assert (=> b!5081448 (= e!3169684 (or (not (= (list!19025 (right!43173 (right!43173 (left!42843 ys!41)))) Nil!58452)) (= lt!2091010 (list!19025 (left!42843 (right!43173 (left!42843 ys!41)))))))))

(assert (= (and d!1642898 c!872911) b!5081445))

(assert (= (and d!1642898 (not c!872911)) b!5081446))

(assert (= (and d!1642898 res!2163346) b!5081447))

(assert (= (and b!5081447 res!2163345) b!5081448))

(assert (=> b!5081446 m!6133792))

(declare-fun m!6134726 () Bool)

(assert (=> b!5081446 m!6134726))

(declare-fun m!6134728 () Bool)

(assert (=> d!1642898 m!6134728))

(assert (=> d!1642898 m!6133790))

(declare-fun m!6134730 () Bool)

(assert (=> d!1642898 m!6134730))

(assert (=> d!1642898 m!6133792))

(declare-fun m!6134732 () Bool)

(assert (=> d!1642898 m!6134732))

(declare-fun m!6134734 () Bool)

(assert (=> b!5081447 m!6134734))

(assert (=> b!5081447 m!6133790))

(declare-fun m!6134736 () Bool)

(assert (=> b!5081447 m!6134736))

(assert (=> b!5081447 m!6133792))

(declare-fun m!6134738 () Bool)

(assert (=> b!5081447 m!6134738))

(assert (=> b!5080993 d!1642898))

(declare-fun b!5081449 () Bool)

(declare-fun e!3169685 () List!58576)

(assert (=> b!5081449 (= e!3169685 Nil!58452)))

(declare-fun b!5081452 () Bool)

(declare-fun e!3169686 () List!58576)

(assert (=> b!5081452 (= e!3169686 (++!12811 (list!19025 (left!42843 (left!42843 (right!43173 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (right!43173 (left!42843 ys!41)))))))))

(declare-fun d!1642900 () Bool)

(declare-fun c!872912 () Bool)

(assert (=> d!1642900 (= c!872912 ((_ is Empty!15582) (left!42843 (right!43173 (left!42843 ys!41)))))))

(assert (=> d!1642900 (= (list!19025 (left!42843 (right!43173 (left!42843 ys!41)))) e!3169685)))

(declare-fun b!5081450 () Bool)

(assert (=> b!5081450 (= e!3169685 e!3169686)))

(declare-fun c!872913 () Bool)

(assert (=> b!5081450 (= c!872913 ((_ is Leaf!25878) (left!42843 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5081451 () Bool)

(assert (=> b!5081451 (= e!3169686 (list!19027 (xs!18954 (left!42843 (right!43173 (left!42843 ys!41))))))))

(assert (= (and d!1642900 c!872912) b!5081449))

(assert (= (and d!1642900 (not c!872912)) b!5081450))

(assert (= (and b!5081450 c!872913) b!5081451))

(assert (= (and b!5081450 (not c!872913)) b!5081452))

(declare-fun m!6134740 () Bool)

(assert (=> b!5081452 m!6134740))

(declare-fun m!6134742 () Bool)

(assert (=> b!5081452 m!6134742))

(assert (=> b!5081452 m!6134740))

(assert (=> b!5081452 m!6134742))

(declare-fun m!6134744 () Bool)

(assert (=> b!5081452 m!6134744))

(declare-fun m!6134746 () Bool)

(assert (=> b!5081451 m!6134746))

(assert (=> b!5080993 d!1642900))

(declare-fun b!5081453 () Bool)

(declare-fun e!3169687 () List!58576)

(assert (=> b!5081453 (= e!3169687 Nil!58452)))

(declare-fun b!5081456 () Bool)

(declare-fun e!3169688 () List!58576)

(assert (=> b!5081456 (= e!3169688 (++!12811 (list!19025 (left!42843 (right!43173 (right!43173 (left!42843 ys!41))))) (list!19025 (right!43173 (right!43173 (right!43173 (left!42843 ys!41)))))))))

(declare-fun d!1642902 () Bool)

(declare-fun c!872914 () Bool)

(assert (=> d!1642902 (= c!872914 ((_ is Empty!15582) (right!43173 (right!43173 (left!42843 ys!41)))))))

(assert (=> d!1642902 (= (list!19025 (right!43173 (right!43173 (left!42843 ys!41)))) e!3169687)))

(declare-fun b!5081454 () Bool)

(assert (=> b!5081454 (= e!3169687 e!3169688)))

(declare-fun c!872915 () Bool)

(assert (=> b!5081454 (= c!872915 ((_ is Leaf!25878) (right!43173 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5081455 () Bool)

(assert (=> b!5081455 (= e!3169688 (list!19027 (xs!18954 (right!43173 (right!43173 (left!42843 ys!41))))))))

(assert (= (and d!1642902 c!872914) b!5081453))

(assert (= (and d!1642902 (not c!872914)) b!5081454))

(assert (= (and b!5081454 c!872915) b!5081455))

(assert (= (and b!5081454 (not c!872915)) b!5081456))

(declare-fun m!6134748 () Bool)

(assert (=> b!5081456 m!6134748))

(declare-fun m!6134750 () Bool)

(assert (=> b!5081456 m!6134750))

(assert (=> b!5081456 m!6134748))

(assert (=> b!5081456 m!6134750))

(declare-fun m!6134752 () Bool)

(assert (=> b!5081456 m!6134752))

(declare-fun m!6134754 () Bool)

(assert (=> b!5081455 m!6134754))

(assert (=> b!5080993 d!1642902))

(declare-fun d!1642904 () Bool)

(declare-fun e!3169689 () Bool)

(assert (=> d!1642904 e!3169689))

(declare-fun c!872916 () Bool)

(assert (=> d!1642904 (= c!872916 ((_ is Nil!58452) (t!371393 (list!19025 xs!286))))))

(assert (=> d!1642904 (= (appendAssoc!312 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 ys!41)) (list!19025 (right!43173 ys!41))) true)))

(declare-fun bm!354229 () Bool)

(declare-fun call!354236 () List!58576)

(assert (=> bm!354229 (= call!354236 (++!12811 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 ys!41))))))

(declare-fun bm!354230 () Bool)

(declare-fun call!354235 () List!58576)

(declare-fun call!354237 () List!58576)

(assert (=> bm!354230 (= call!354235 (++!12811 (t!371393 (list!19025 xs!286)) call!354237))))

(declare-fun bm!354231 () Bool)

(assert (=> bm!354231 (= call!354237 (++!12811 (list!19025 (left!42843 ys!41)) (list!19025 (right!43173 ys!41))))))

(declare-fun b!5081457 () Bool)

(declare-fun call!354234 () List!58576)

(assert (=> b!5081457 (= e!3169689 (= call!354234 call!354235))))

(declare-fun bm!354232 () Bool)

(assert (=> bm!354232 (= call!354234 (++!12811 call!354236 (list!19025 (right!43173 ys!41))))))

(declare-fun b!5081458 () Bool)

(assert (=> b!5081458 (= e!3169689 (= call!354234 call!354235))))

(declare-fun lt!2091011 () Bool)

(assert (=> b!5081458 (= lt!2091011 (appendAssoc!312 (t!371393 (t!371393 (list!19025 xs!286))) (list!19025 (left!42843 ys!41)) (list!19025 (right!43173 ys!41))))))

(assert (= (and d!1642904 c!872916) b!5081457))

(assert (= (and d!1642904 (not c!872916)) b!5081458))

(assert (= (or b!5081457 b!5081458) bm!354229))

(assert (= (or b!5081457 b!5081458) bm!354231))

(assert (= (or b!5081457 b!5081458) bm!354230))

(assert (= (or b!5081457 b!5081458) bm!354232))

(assert (=> bm!354231 m!6133026))

(assert (=> bm!354231 m!6133016))

(assert (=> bm!354231 m!6133338))

(declare-fun m!6134756 () Bool)

(assert (=> bm!354230 m!6134756))

(assert (=> bm!354232 m!6133016))

(declare-fun m!6134758 () Bool)

(assert (=> bm!354232 m!6134758))

(assert (=> bm!354229 m!6133026))

(declare-fun m!6134760 () Bool)

(assert (=> bm!354229 m!6134760))

(assert (=> b!5081458 m!6133026))

(assert (=> b!5081458 m!6133016))

(declare-fun m!6134762 () Bool)

(assert (=> b!5081458 m!6134762))

(assert (=> b!5081216 d!1642904))

(declare-fun d!1642906 () Bool)

(declare-fun lt!2091012 () Int)

(assert (=> d!1642906 (= lt!2091012 (size!39113 (list!19025 (left!42843 ys!41))))))

(assert (=> d!1642906 (= lt!2091012 (ite ((_ is Empty!15582) (left!42843 ys!41)) 0 (ite ((_ is Leaf!25878) (left!42843 ys!41)) (csize!31395 (left!42843 ys!41)) (csize!31394 (left!42843 ys!41)))))))

(assert (=> d!1642906 (= (size!39112 (left!42843 ys!41)) lt!2091012)))

(declare-fun bs!1190664 () Bool)

(assert (= bs!1190664 d!1642906))

(assert (=> bs!1190664 m!6133026))

(assert (=> bs!1190664 m!6133026))

(assert (=> bs!1190664 m!6133868))

(assert (=> d!1642472 d!1642906))

(assert (=> d!1642472 d!1642690))

(declare-fun d!1642908 () Bool)

(declare-fun c!872917 () Bool)

(assert (=> d!1642908 (= c!872917 ((_ is Node!15582) (left!42843 (right!43173 (left!42843 ys!41)))))))

(declare-fun e!3169690 () Bool)

(assert (=> d!1642908 (= (inv!77654 (left!42843 (right!43173 (left!42843 ys!41)))) e!3169690)))

(declare-fun b!5081459 () Bool)

(assert (=> b!5081459 (= e!3169690 (inv!77656 (left!42843 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5081460 () Bool)

(declare-fun e!3169691 () Bool)

(assert (=> b!5081460 (= e!3169690 e!3169691)))

(declare-fun res!2163347 () Bool)

(assert (=> b!5081460 (= res!2163347 (not ((_ is Leaf!25878) (left!42843 (right!43173 (left!42843 ys!41))))))))

(assert (=> b!5081460 (=> res!2163347 e!3169691)))

(declare-fun b!5081461 () Bool)

(assert (=> b!5081461 (= e!3169691 (inv!77657 (left!42843 (right!43173 (left!42843 ys!41)))))))

(assert (= (and d!1642908 c!872917) b!5081459))

(assert (= (and d!1642908 (not c!872917)) b!5081460))

(assert (= (and b!5081460 (not res!2163347)) b!5081461))

(declare-fun m!6134764 () Bool)

(assert (=> b!5081459 m!6134764))

(declare-fun m!6134766 () Bool)

(assert (=> b!5081461 m!6134766))

(assert (=> b!5081259 d!1642908))

(declare-fun d!1642910 () Bool)

(declare-fun c!872918 () Bool)

(assert (=> d!1642910 (= c!872918 ((_ is Node!15582) (right!43173 (right!43173 (left!42843 ys!41)))))))

(declare-fun e!3169692 () Bool)

(assert (=> d!1642910 (= (inv!77654 (right!43173 (right!43173 (left!42843 ys!41)))) e!3169692)))

(declare-fun b!5081462 () Bool)

(assert (=> b!5081462 (= e!3169692 (inv!77656 (right!43173 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5081463 () Bool)

(declare-fun e!3169693 () Bool)

(assert (=> b!5081463 (= e!3169692 e!3169693)))

(declare-fun res!2163348 () Bool)

(assert (=> b!5081463 (= res!2163348 (not ((_ is Leaf!25878) (right!43173 (right!43173 (left!42843 ys!41))))))))

(assert (=> b!5081463 (=> res!2163348 e!3169693)))

(declare-fun b!5081464 () Bool)

(assert (=> b!5081464 (= e!3169693 (inv!77657 (right!43173 (right!43173 (left!42843 ys!41)))))))

(assert (= (and d!1642910 c!872918) b!5081462))

(assert (= (and d!1642910 (not c!872918)) b!5081463))

(assert (= (and b!5081463 (not res!2163348)) b!5081464))

(declare-fun m!6134768 () Bool)

(assert (=> b!5081462 m!6134768))

(declare-fun m!6134770 () Bool)

(assert (=> b!5081464 m!6134770))

(assert (=> b!5081259 d!1642910))

(declare-fun d!1642912 () Bool)

(assert (=> d!1642912 (= (max!0 (height!2159 (left!42843 (left!42843 xs!286))) (height!2159 (right!43173 (left!42843 xs!286)))) (ite (< (height!2159 (left!42843 (left!42843 xs!286))) (height!2159 (right!43173 (left!42843 xs!286)))) (height!2159 (right!43173 (left!42843 xs!286))) (height!2159 (left!42843 (left!42843 xs!286)))))))

(assert (=> b!5080915 d!1642912))

(declare-fun d!1642914 () Bool)

(assert (=> d!1642914 (= (height!2159 (left!42843 (left!42843 xs!286))) (ite ((_ is Empty!15582) (left!42843 (left!42843 xs!286))) 0 (ite ((_ is Leaf!25878) (left!42843 (left!42843 xs!286))) 1 (cheight!15793 (left!42843 (left!42843 xs!286))))))))

(assert (=> b!5080915 d!1642914))

(declare-fun d!1642916 () Bool)

(assert (=> d!1642916 (= (height!2159 (right!43173 (left!42843 xs!286))) (ite ((_ is Empty!15582) (right!43173 (left!42843 xs!286))) 0 (ite ((_ is Leaf!25878) (right!43173 (left!42843 xs!286))) 1 (cheight!15793 (right!43173 (left!42843 xs!286))))))))

(assert (=> b!5080915 d!1642916))

(declare-fun b!5081466 () Bool)

(declare-fun e!3169694 () List!58576)

(assert (=> b!5081466 (= e!3169694 (Cons!58452 (h!64900 (list!19025 (left!42843 xs!286))) (++!12811 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (left!42843 (right!43173 xs!286))))))))

(declare-fun d!1642918 () Bool)

(declare-fun e!3169695 () Bool)

(assert (=> d!1642918 e!3169695))

(declare-fun res!2163350 () Bool)

(assert (=> d!1642918 (=> (not res!2163350) (not e!3169695))))

(declare-fun lt!2091013 () List!58576)

(assert (=> d!1642918 (= res!2163350 (= (content!10428 lt!2091013) ((_ map or) (content!10428 (list!19025 (left!42843 xs!286))) (content!10428 (list!19025 (left!42843 (right!43173 xs!286)))))))))

(assert (=> d!1642918 (= lt!2091013 e!3169694)))

(declare-fun c!872919 () Bool)

(assert (=> d!1642918 (= c!872919 ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(assert (=> d!1642918 (= (++!12811 (list!19025 (left!42843 xs!286)) (list!19025 (left!42843 (right!43173 xs!286)))) lt!2091013)))

(declare-fun b!5081465 () Bool)

(assert (=> b!5081465 (= e!3169694 (list!19025 (left!42843 (right!43173 xs!286))))))

(declare-fun b!5081467 () Bool)

(declare-fun res!2163349 () Bool)

(assert (=> b!5081467 (=> (not res!2163349) (not e!3169695))))

(assert (=> b!5081467 (= res!2163349 (= (size!39113 lt!2091013) (+ (size!39113 (list!19025 (left!42843 xs!286))) (size!39113 (list!19025 (left!42843 (right!43173 xs!286)))))))))

(declare-fun b!5081468 () Bool)

(assert (=> b!5081468 (= e!3169695 (or (not (= (list!19025 (left!42843 (right!43173 xs!286))) Nil!58452)) (= lt!2091013 (list!19025 (left!42843 xs!286)))))))

(assert (= (and d!1642918 c!872919) b!5081465))

(assert (= (and d!1642918 (not c!872919)) b!5081466))

(assert (= (and d!1642918 res!2163350) b!5081467))

(assert (= (and b!5081467 res!2163349) b!5081468))

(assert (=> b!5081466 m!6133036))

(declare-fun m!6134772 () Bool)

(assert (=> b!5081466 m!6134772))

(declare-fun m!6134774 () Bool)

(assert (=> d!1642918 m!6134774))

(assert (=> d!1642918 m!6133030))

(assert (=> d!1642918 m!6133822))

(assert (=> d!1642918 m!6133036))

(declare-fun m!6134776 () Bool)

(assert (=> d!1642918 m!6134776))

(declare-fun m!6134778 () Bool)

(assert (=> b!5081467 m!6134778))

(assert (=> b!5081467 m!6133030))

(assert (=> b!5081467 m!6133828))

(assert (=> b!5081467 m!6133036))

(declare-fun m!6134780 () Bool)

(assert (=> b!5081467 m!6134780))

(assert (=> bm!354169 d!1642918))

(declare-fun d!1642920 () Bool)

(declare-fun lt!2091014 () Bool)

(assert (=> d!1642920 (= lt!2091014 (isEmpty!31669 (list!19025 (right!43173 (right!43173 xs!286)))))))

(assert (=> d!1642920 (= lt!2091014 (= (size!39112 (right!43173 (right!43173 xs!286))) 0))))

(assert (=> d!1642920 (= (isEmpty!31667 (right!43173 (right!43173 xs!286))) lt!2091014)))

(declare-fun bs!1190665 () Bool)

(assert (= bs!1190665 d!1642920))

(assert (=> bs!1190665 m!6133042))

(assert (=> bs!1190665 m!6133042))

(declare-fun m!6134782 () Bool)

(assert (=> bs!1190665 m!6134782))

(assert (=> bs!1190665 m!6134252))

(assert (=> b!5081003 d!1642920))

(declare-fun d!1642922 () Bool)

(declare-fun res!2163351 () Bool)

(declare-fun e!3169696 () Bool)

(assert (=> d!1642922 (=> (not res!2163351) (not e!3169696))))

(assert (=> d!1642922 (= res!2163351 (= (csize!31394 (right!43173 (right!43173 ys!41))) (+ (size!39112 (left!42843 (right!43173 (right!43173 ys!41)))) (size!39112 (right!43173 (right!43173 (right!43173 ys!41)))))))))

(assert (=> d!1642922 (= (inv!77656 (right!43173 (right!43173 ys!41))) e!3169696)))

(declare-fun b!5081469 () Bool)

(declare-fun res!2163352 () Bool)

(assert (=> b!5081469 (=> (not res!2163352) (not e!3169696))))

(assert (=> b!5081469 (= res!2163352 (and (not (= (left!42843 (right!43173 (right!43173 ys!41))) Empty!15582)) (not (= (right!43173 (right!43173 (right!43173 ys!41))) Empty!15582))))))

(declare-fun b!5081470 () Bool)

(declare-fun res!2163353 () Bool)

(assert (=> b!5081470 (=> (not res!2163353) (not e!3169696))))

(assert (=> b!5081470 (= res!2163353 (= (cheight!15793 (right!43173 (right!43173 ys!41))) (+ (max!0 (height!2159 (left!42843 (right!43173 (right!43173 ys!41)))) (height!2159 (right!43173 (right!43173 (right!43173 ys!41))))) 1)))))

(declare-fun b!5081471 () Bool)

(assert (=> b!5081471 (= e!3169696 (<= 0 (cheight!15793 (right!43173 (right!43173 ys!41)))))))

(assert (= (and d!1642922 res!2163351) b!5081469))

(assert (= (and b!5081469 res!2163352) b!5081470))

(assert (= (and b!5081470 res!2163353) b!5081471))

(declare-fun m!6134784 () Bool)

(assert (=> d!1642922 m!6134784))

(declare-fun m!6134786 () Bool)

(assert (=> d!1642922 m!6134786))

(declare-fun m!6134788 () Bool)

(assert (=> b!5081470 m!6134788))

(declare-fun m!6134790 () Bool)

(assert (=> b!5081470 m!6134790))

(assert (=> b!5081470 m!6134788))

(assert (=> b!5081470 m!6134790))

(declare-fun m!6134792 () Bool)

(assert (=> b!5081470 m!6134792))

(assert (=> b!5081094 d!1642922))

(declare-fun d!1642924 () Bool)

(declare-fun c!872920 () Bool)

(assert (=> d!1642924 (= c!872920 ((_ is Node!15582) (left!42843 (right!43173 (right!43173 ys!41)))))))

(declare-fun e!3169697 () Bool)

(assert (=> d!1642924 (= (inv!77654 (left!42843 (right!43173 (right!43173 ys!41)))) e!3169697)))

(declare-fun b!5081472 () Bool)

(assert (=> b!5081472 (= e!3169697 (inv!77656 (left!42843 (right!43173 (right!43173 ys!41)))))))

(declare-fun b!5081473 () Bool)

(declare-fun e!3169698 () Bool)

(assert (=> b!5081473 (= e!3169697 e!3169698)))

(declare-fun res!2163354 () Bool)

(assert (=> b!5081473 (= res!2163354 (not ((_ is Leaf!25878) (left!42843 (right!43173 (right!43173 ys!41))))))))

(assert (=> b!5081473 (=> res!2163354 e!3169698)))

(declare-fun b!5081474 () Bool)

(assert (=> b!5081474 (= e!3169698 (inv!77657 (left!42843 (right!43173 (right!43173 ys!41)))))))

(assert (= (and d!1642924 c!872920) b!5081472))

(assert (= (and d!1642924 (not c!872920)) b!5081473))

(assert (= (and b!5081473 (not res!2163354)) b!5081474))

(declare-fun m!6134794 () Bool)

(assert (=> b!5081472 m!6134794))

(declare-fun m!6134796 () Bool)

(assert (=> b!5081474 m!6134796))

(assert (=> b!5081226 d!1642924))

(declare-fun d!1642926 () Bool)

(declare-fun c!872921 () Bool)

(assert (=> d!1642926 (= c!872921 ((_ is Node!15582) (right!43173 (right!43173 (right!43173 ys!41)))))))

(declare-fun e!3169699 () Bool)

(assert (=> d!1642926 (= (inv!77654 (right!43173 (right!43173 (right!43173 ys!41)))) e!3169699)))

(declare-fun b!5081475 () Bool)

(assert (=> b!5081475 (= e!3169699 (inv!77656 (right!43173 (right!43173 (right!43173 ys!41)))))))

(declare-fun b!5081476 () Bool)

(declare-fun e!3169700 () Bool)

(assert (=> b!5081476 (= e!3169699 e!3169700)))

(declare-fun res!2163355 () Bool)

(assert (=> b!5081476 (= res!2163355 (not ((_ is Leaf!25878) (right!43173 (right!43173 (right!43173 ys!41))))))))

(assert (=> b!5081476 (=> res!2163355 e!3169700)))

(declare-fun b!5081477 () Bool)

(assert (=> b!5081477 (= e!3169700 (inv!77657 (right!43173 (right!43173 (right!43173 ys!41)))))))

(assert (= (and d!1642926 c!872921) b!5081475))

(assert (= (and d!1642926 (not c!872921)) b!5081476))

(assert (= (and b!5081476 (not res!2163355)) b!5081477))

(declare-fun m!6134798 () Bool)

(assert (=> b!5081475 m!6134798))

(declare-fun m!6134800 () Bool)

(assert (=> b!5081477 m!6134800))

(assert (=> b!5081226 d!1642926))

(declare-fun d!1642928 () Bool)

(assert (=> d!1642928 (= (height!2159 (left!42843 (left!42843 (left!42843 ys!41)))) (ite ((_ is Empty!15582) (left!42843 (left!42843 (left!42843 ys!41)))) 0 (ite ((_ is Leaf!25878) (left!42843 (left!42843 (left!42843 ys!41)))) 1 (cheight!15793 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(assert (=> b!5081097 d!1642928))

(declare-fun d!1642930 () Bool)

(assert (=> d!1642930 (= (height!2159 (right!43173 (left!42843 (left!42843 ys!41)))) (ite ((_ is Empty!15582) (right!43173 (left!42843 (left!42843 ys!41)))) 0 (ite ((_ is Leaf!25878) (right!43173 (left!42843 (left!42843 ys!41)))) 1 (cheight!15793 (right!43173 (left!42843 (left!42843 ys!41)))))))))

(assert (=> b!5081097 d!1642930))

(declare-fun d!1642932 () Bool)

(declare-fun res!2163360 () Bool)

(declare-fun e!3169701 () Bool)

(assert (=> d!1642932 (=> res!2163360 e!3169701)))

(assert (=> d!1642932 (= res!2163360 (not ((_ is Node!15582) (right!43173 (left!42843 ys!41)))))))

(assert (=> d!1642932 (= (isBalanced!4444 (right!43173 (left!42843 ys!41))) e!3169701)))

(declare-fun b!5081478 () Bool)

(declare-fun res!2163356 () Bool)

(declare-fun e!3169702 () Bool)

(assert (=> b!5081478 (=> (not res!2163356) (not e!3169702))))

(assert (=> b!5081478 (= res!2163356 (<= (- (height!2159 (left!42843 (right!43173 (left!42843 ys!41)))) (height!2159 (right!43173 (right!43173 (left!42843 ys!41))))) 1))))

(declare-fun b!5081479 () Bool)

(declare-fun res!2163357 () Bool)

(assert (=> b!5081479 (=> (not res!2163357) (not e!3169702))))

(assert (=> b!5081479 (= res!2163357 (isBalanced!4444 (right!43173 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5081480 () Bool)

(declare-fun res!2163359 () Bool)

(assert (=> b!5081480 (=> (not res!2163359) (not e!3169702))))

(assert (=> b!5081480 (= res!2163359 (isBalanced!4444 (left!42843 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5081481 () Bool)

(assert (=> b!5081481 (= e!3169701 e!3169702)))

(declare-fun res!2163358 () Bool)

(assert (=> b!5081481 (=> (not res!2163358) (not e!3169702))))

(assert (=> b!5081481 (= res!2163358 (<= (- 1) (- (height!2159 (left!42843 (right!43173 (left!42843 ys!41)))) (height!2159 (right!43173 (right!43173 (left!42843 ys!41)))))))))

(declare-fun b!5081482 () Bool)

(declare-fun res!2163361 () Bool)

(assert (=> b!5081482 (=> (not res!2163361) (not e!3169702))))

(assert (=> b!5081482 (= res!2163361 (not (isEmpty!31667 (left!42843 (right!43173 (left!42843 ys!41))))))))

(declare-fun b!5081483 () Bool)

(assert (=> b!5081483 (= e!3169702 (not (isEmpty!31667 (right!43173 (right!43173 (left!42843 ys!41))))))))

(assert (= (and d!1642932 (not res!2163360)) b!5081481))

(assert (= (and b!5081481 res!2163358) b!5081478))

(assert (= (and b!5081478 res!2163356) b!5081480))

(assert (= (and b!5081480 res!2163359) b!5081479))

(assert (= (and b!5081479 res!2163357) b!5081482))

(assert (= (and b!5081482 res!2163361) b!5081483))

(declare-fun m!6134802 () Bool)

(assert (=> b!5081479 m!6134802))

(declare-fun m!6134804 () Bool)

(assert (=> b!5081478 m!6134804))

(declare-fun m!6134806 () Bool)

(assert (=> b!5081478 m!6134806))

(declare-fun m!6134808 () Bool)

(assert (=> b!5081483 m!6134808))

(assert (=> b!5081481 m!6134804))

(assert (=> b!5081481 m!6134806))

(declare-fun m!6134810 () Bool)

(assert (=> b!5081482 m!6134810))

(declare-fun m!6134812 () Bool)

(assert (=> b!5081480 m!6134812))

(assert (=> b!5081133 d!1642932))

(declare-fun d!1642934 () Bool)

(assert (=> d!1642934 (= (list!19027 (xs!18954 (right!43173 ys!41))) (innerList!15670 (xs!18954 (right!43173 ys!41))))))

(assert (=> b!5080996 d!1642934))

(declare-fun d!1642936 () Bool)

(declare-fun res!2163362 () Bool)

(declare-fun e!3169703 () Bool)

(assert (=> d!1642936 (=> (not res!2163362) (not e!3169703))))

(assert (=> d!1642936 (= res!2163362 (= (csize!31394 (left!42843 (left!42843 ys!41))) (+ (size!39112 (left!42843 (left!42843 (left!42843 ys!41)))) (size!39112 (right!43173 (left!42843 (left!42843 ys!41)))))))))

(assert (=> d!1642936 (= (inv!77656 (left!42843 (left!42843 ys!41))) e!3169703)))

(declare-fun b!5081484 () Bool)

(declare-fun res!2163363 () Bool)

(assert (=> b!5081484 (=> (not res!2163363) (not e!3169703))))

(assert (=> b!5081484 (= res!2163363 (and (not (= (left!42843 (left!42843 (left!42843 ys!41))) Empty!15582)) (not (= (right!43173 (left!42843 (left!42843 ys!41))) Empty!15582))))))

(declare-fun b!5081485 () Bool)

(declare-fun res!2163364 () Bool)

(assert (=> b!5081485 (=> (not res!2163364) (not e!3169703))))

(assert (=> b!5081485 (= res!2163364 (= (cheight!15793 (left!42843 (left!42843 ys!41))) (+ (max!0 (height!2159 (left!42843 (left!42843 (left!42843 ys!41)))) (height!2159 (right!43173 (left!42843 (left!42843 ys!41))))) 1)))))

(declare-fun b!5081486 () Bool)

(assert (=> b!5081486 (= e!3169703 (<= 0 (cheight!15793 (left!42843 (left!42843 ys!41)))))))

(assert (= (and d!1642936 res!2163362) b!5081484))

(assert (= (and b!5081484 res!2163363) b!5081485))

(assert (= (and b!5081485 res!2163364) b!5081486))

(declare-fun m!6134814 () Bool)

(assert (=> d!1642936 m!6134814))

(declare-fun m!6134816 () Bool)

(assert (=> d!1642936 m!6134816))

(assert (=> b!5081485 m!6133982))

(assert (=> b!5081485 m!6133984))

(assert (=> b!5081485 m!6133982))

(assert (=> b!5081485 m!6133984))

(declare-fun m!6134818 () Bool)

(assert (=> b!5081485 m!6134818))

(assert (=> b!5081198 d!1642936))

(declare-fun d!1642938 () Bool)

(declare-fun res!2163369 () Bool)

(declare-fun e!3169704 () Bool)

(assert (=> d!1642938 (=> res!2163369 e!3169704)))

(assert (=> d!1642938 (= res!2163369 (not ((_ is Node!15582) (right!43173 (right!43173 lt!2090875)))))))

(assert (=> d!1642938 (= (isBalanced!4444 (right!43173 (right!43173 lt!2090875))) e!3169704)))

(declare-fun b!5081487 () Bool)

(declare-fun res!2163365 () Bool)

(declare-fun e!3169705 () Bool)

(assert (=> b!5081487 (=> (not res!2163365) (not e!3169705))))

(assert (=> b!5081487 (= res!2163365 (<= (- (height!2159 (left!42843 (right!43173 (right!43173 lt!2090875)))) (height!2159 (right!43173 (right!43173 (right!43173 lt!2090875))))) 1))))

(declare-fun b!5081488 () Bool)

(declare-fun res!2163366 () Bool)

(assert (=> b!5081488 (=> (not res!2163366) (not e!3169705))))

(assert (=> b!5081488 (= res!2163366 (isBalanced!4444 (right!43173 (right!43173 (right!43173 lt!2090875)))))))

(declare-fun b!5081489 () Bool)

(declare-fun res!2163368 () Bool)

(assert (=> b!5081489 (=> (not res!2163368) (not e!3169705))))

(assert (=> b!5081489 (= res!2163368 (isBalanced!4444 (left!42843 (right!43173 (right!43173 lt!2090875)))))))

(declare-fun b!5081490 () Bool)

(assert (=> b!5081490 (= e!3169704 e!3169705)))

(declare-fun res!2163367 () Bool)

(assert (=> b!5081490 (=> (not res!2163367) (not e!3169705))))

(assert (=> b!5081490 (= res!2163367 (<= (- 1) (- (height!2159 (left!42843 (right!43173 (right!43173 lt!2090875)))) (height!2159 (right!43173 (right!43173 (right!43173 lt!2090875)))))))))

(declare-fun b!5081491 () Bool)

(declare-fun res!2163370 () Bool)

(assert (=> b!5081491 (=> (not res!2163370) (not e!3169705))))

(assert (=> b!5081491 (= res!2163370 (not (isEmpty!31667 (left!42843 (right!43173 (right!43173 lt!2090875))))))))

(declare-fun b!5081492 () Bool)

(assert (=> b!5081492 (= e!3169705 (not (isEmpty!31667 (right!43173 (right!43173 (right!43173 lt!2090875))))))))

(assert (= (and d!1642938 (not res!2163369)) b!5081490))

(assert (= (and b!5081490 res!2163367) b!5081487))

(assert (= (and b!5081487 res!2163365) b!5081489))

(assert (= (and b!5081489 res!2163368) b!5081488))

(assert (= (and b!5081488 res!2163366) b!5081491))

(assert (= (and b!5081491 res!2163370) b!5081492))

(declare-fun m!6134820 () Bool)

(assert (=> b!5081488 m!6134820))

(declare-fun m!6134822 () Bool)

(assert (=> b!5081487 m!6134822))

(declare-fun m!6134824 () Bool)

(assert (=> b!5081487 m!6134824))

(declare-fun m!6134826 () Bool)

(assert (=> b!5081492 m!6134826))

(assert (=> b!5081490 m!6134822))

(assert (=> b!5081490 m!6134824))

(declare-fun m!6134828 () Bool)

(assert (=> b!5081491 m!6134828))

(declare-fun m!6134830 () Bool)

(assert (=> b!5081489 m!6134830))

(assert (=> b!5080895 d!1642938))

(declare-fun b!5081494 () Bool)

(declare-fun e!3169706 () List!58576)

(assert (=> b!5081494 (= e!3169706 (Cons!58452 (h!64900 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) (++!12811 (t!371393 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) call!354193)))))

(declare-fun d!1642940 () Bool)

(declare-fun e!3169707 () Bool)

(assert (=> d!1642940 e!3169707))

(declare-fun res!2163372 () Bool)

(assert (=> d!1642940 (=> (not res!2163372) (not e!3169707))))

(declare-fun lt!2091015 () List!58576)

(assert (=> d!1642940 (= res!2163372 (= (content!10428 lt!2091015) ((_ map or) (content!10428 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) (content!10428 call!354193))))))

(assert (=> d!1642940 (= lt!2091015 e!3169706)))

(declare-fun c!872922 () Bool)

(assert (=> d!1642940 (= c!872922 ((_ is Nil!58452) (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1642940 (= (++!12811 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))) call!354193) lt!2091015)))

(declare-fun b!5081493 () Bool)

(assert (=> b!5081493 (= e!3169706 call!354193)))

(declare-fun b!5081495 () Bool)

(declare-fun res!2163371 () Bool)

(assert (=> b!5081495 (=> (not res!2163371) (not e!3169707))))

(assert (=> b!5081495 (= res!2163371 (= (size!39113 lt!2091015) (+ (size!39113 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) (size!39113 call!354193))))))

(declare-fun b!5081496 () Bool)

(assert (=> b!5081496 (= e!3169707 (or (not (= call!354193 Nil!58452)) (= lt!2091015 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))))))))

(assert (= (and d!1642940 c!872922) b!5081493))

(assert (= (and d!1642940 (not c!872922)) b!5081494))

(assert (= (and d!1642940 res!2163372) b!5081495))

(assert (= (and b!5081495 res!2163371) b!5081496))

(declare-fun m!6134832 () Bool)

(assert (=> b!5081494 m!6134832))

(declare-fun m!6134834 () Bool)

(assert (=> d!1642940 m!6134834))

(assert (=> d!1642940 m!6133020))

(declare-fun m!6134836 () Bool)

(assert (=> d!1642940 m!6134836))

(declare-fun m!6134838 () Bool)

(assert (=> d!1642940 m!6134838))

(declare-fun m!6134840 () Bool)

(assert (=> b!5081495 m!6134840))

(assert (=> b!5081495 m!6133020))

(declare-fun m!6134842 () Bool)

(assert (=> b!5081495 m!6134842))

(declare-fun m!6134844 () Bool)

(assert (=> b!5081495 m!6134844))

(assert (=> bm!354186 d!1642940))

(declare-fun d!1642942 () Bool)

(declare-fun lt!2091016 () Int)

(assert (=> d!1642942 (>= lt!2091016 0)))

(declare-fun e!3169708 () Int)

(assert (=> d!1642942 (= lt!2091016 e!3169708)))

(declare-fun c!872923 () Bool)

(assert (=> d!1642942 (= c!872923 ((_ is Nil!58452) (t!371393 lt!2090919)))))

(assert (=> d!1642942 (= (size!39113 (t!371393 lt!2090919)) lt!2091016)))

(declare-fun b!5081497 () Bool)

(assert (=> b!5081497 (= e!3169708 0)))

(declare-fun b!5081498 () Bool)

(assert (=> b!5081498 (= e!3169708 (+ 1 (size!39113 (t!371393 (t!371393 lt!2090919)))))))

(assert (= (and d!1642942 c!872923) b!5081497))

(assert (= (and d!1642942 (not c!872923)) b!5081498))

(declare-fun m!6134846 () Bool)

(assert (=> b!5081498 m!6134846))

(assert (=> b!5080963 d!1642942))

(declare-fun d!1642944 () Bool)

(declare-fun res!2163377 () Bool)

(declare-fun e!3169709 () Bool)

(assert (=> d!1642944 (=> res!2163377 e!3169709)))

(assert (=> d!1642944 (= res!2163377 (not ((_ is Node!15582) (right!43173 (left!42843 lt!2090875)))))))

(assert (=> d!1642944 (= (isBalanced!4444 (right!43173 (left!42843 lt!2090875))) e!3169709)))

(declare-fun b!5081499 () Bool)

(declare-fun res!2163373 () Bool)

(declare-fun e!3169710 () Bool)

(assert (=> b!5081499 (=> (not res!2163373) (not e!3169710))))

(assert (=> b!5081499 (= res!2163373 (<= (- (height!2159 (left!42843 (right!43173 (left!42843 lt!2090875)))) (height!2159 (right!43173 (right!43173 (left!42843 lt!2090875))))) 1))))

(declare-fun b!5081500 () Bool)

(declare-fun res!2163374 () Bool)

(assert (=> b!5081500 (=> (not res!2163374) (not e!3169710))))

(assert (=> b!5081500 (= res!2163374 (isBalanced!4444 (right!43173 (right!43173 (left!42843 lt!2090875)))))))

(declare-fun b!5081501 () Bool)

(declare-fun res!2163376 () Bool)

(assert (=> b!5081501 (=> (not res!2163376) (not e!3169710))))

(assert (=> b!5081501 (= res!2163376 (isBalanced!4444 (left!42843 (right!43173 (left!42843 lt!2090875)))))))

(declare-fun b!5081502 () Bool)

(assert (=> b!5081502 (= e!3169709 e!3169710)))

(declare-fun res!2163375 () Bool)

(assert (=> b!5081502 (=> (not res!2163375) (not e!3169710))))

(assert (=> b!5081502 (= res!2163375 (<= (- 1) (- (height!2159 (left!42843 (right!43173 (left!42843 lt!2090875)))) (height!2159 (right!43173 (right!43173 (left!42843 lt!2090875)))))))))

(declare-fun b!5081503 () Bool)

(declare-fun res!2163378 () Bool)

(assert (=> b!5081503 (=> (not res!2163378) (not e!3169710))))

(assert (=> b!5081503 (= res!2163378 (not (isEmpty!31667 (left!42843 (right!43173 (left!42843 lt!2090875))))))))

(declare-fun b!5081504 () Bool)

(assert (=> b!5081504 (= e!3169710 (not (isEmpty!31667 (right!43173 (right!43173 (left!42843 lt!2090875))))))))

(assert (= (and d!1642944 (not res!2163377)) b!5081502))

(assert (= (and b!5081502 res!2163375) b!5081499))

(assert (= (and b!5081499 res!2163373) b!5081501))

(assert (= (and b!5081501 res!2163376) b!5081500))

(assert (= (and b!5081500 res!2163374) b!5081503))

(assert (= (and b!5081503 res!2163378) b!5081504))

(declare-fun m!6134848 () Bool)

(assert (=> b!5081500 m!6134848))

(declare-fun m!6134850 () Bool)

(assert (=> b!5081499 m!6134850))

(declare-fun m!6134852 () Bool)

(assert (=> b!5081499 m!6134852))

(declare-fun m!6134854 () Bool)

(assert (=> b!5081504 m!6134854))

(assert (=> b!5081502 m!6134850))

(assert (=> b!5081502 m!6134852))

(declare-fun m!6134856 () Bool)

(assert (=> b!5081503 m!6134856))

(declare-fun m!6134858 () Bool)

(assert (=> b!5081501 m!6134858))

(assert (=> b!5081017 d!1642944))

(declare-fun d!1642946 () Bool)

(assert (=> d!1642946 (= (height!2159 (ite c!872763 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) lt!2090927)) (ite ((_ is Empty!15582) (ite c!872763 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) lt!2090927)) 0 (ite ((_ is Leaf!25878) (ite c!872763 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) lt!2090927)) 1 (cheight!15793 (ite c!872763 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) lt!2090927)))))))

(assert (=> bm!354157 d!1642946))

(declare-fun d!1642948 () Bool)

(declare-fun res!2163379 () Bool)

(declare-fun e!3169711 () Bool)

(assert (=> d!1642948 (=> (not res!2163379) (not e!3169711))))

(assert (=> d!1642948 (= res!2163379 (= (csize!31394 (right!43173 (left!42843 ys!41))) (+ (size!39112 (left!42843 (right!43173 (left!42843 ys!41)))) (size!39112 (right!43173 (right!43173 (left!42843 ys!41)))))))))

(assert (=> d!1642948 (= (inv!77656 (right!43173 (left!42843 ys!41))) e!3169711)))

(declare-fun b!5081505 () Bool)

(declare-fun res!2163380 () Bool)

(assert (=> b!5081505 (=> (not res!2163380) (not e!3169711))))

(assert (=> b!5081505 (= res!2163380 (and (not (= (left!42843 (right!43173 (left!42843 ys!41))) Empty!15582)) (not (= (right!43173 (right!43173 (left!42843 ys!41))) Empty!15582))))))

(declare-fun b!5081506 () Bool)

(declare-fun res!2163381 () Bool)

(assert (=> b!5081506 (=> (not res!2163381) (not e!3169711))))

(assert (=> b!5081506 (= res!2163381 (= (cheight!15793 (right!43173 (left!42843 ys!41))) (+ (max!0 (height!2159 (left!42843 (right!43173 (left!42843 ys!41)))) (height!2159 (right!43173 (right!43173 (left!42843 ys!41))))) 1)))))

(declare-fun b!5081507 () Bool)

(assert (=> b!5081507 (= e!3169711 (<= 0 (cheight!15793 (right!43173 (left!42843 ys!41)))))))

(assert (= (and d!1642948 res!2163379) b!5081505))

(assert (= (and b!5081505 res!2163380) b!5081506))

(assert (= (and b!5081506 res!2163381) b!5081507))

(declare-fun m!6134860 () Bool)

(assert (=> d!1642948 m!6134860))

(declare-fun m!6134862 () Bool)

(assert (=> d!1642948 m!6134862))

(assert (=> b!5081506 m!6134804))

(assert (=> b!5081506 m!6134806))

(assert (=> b!5081506 m!6134804))

(assert (=> b!5081506 m!6134806))

(declare-fun m!6134864 () Bool)

(assert (=> b!5081506 m!6134864))

(assert (=> b!5081201 d!1642948))

(declare-fun b!5081509 () Bool)

(declare-fun e!3169712 () List!58576)

(assert (=> b!5081509 (= e!3169712 (Cons!58452 (h!64900 (list!19025 (left!42843 (right!43173 xs!286)))) (++!12811 (t!371393 (list!19025 (left!42843 (right!43173 xs!286)))) (list!19025 (right!43173 (right!43173 xs!286))))))))

(declare-fun d!1642950 () Bool)

(declare-fun e!3169713 () Bool)

(assert (=> d!1642950 e!3169713))

(declare-fun res!2163383 () Bool)

(assert (=> d!1642950 (=> (not res!2163383) (not e!3169713))))

(declare-fun lt!2091017 () List!58576)

(assert (=> d!1642950 (= res!2163383 (= (content!10428 lt!2091017) ((_ map or) (content!10428 (list!19025 (left!42843 (right!43173 xs!286)))) (content!10428 (list!19025 (right!43173 (right!43173 xs!286)))))))))

(assert (=> d!1642950 (= lt!2091017 e!3169712)))

(declare-fun c!872924 () Bool)

(assert (=> d!1642950 (= c!872924 ((_ is Nil!58452) (list!19025 (left!42843 (right!43173 xs!286)))))))

(assert (=> d!1642950 (= (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) (list!19025 (right!43173 (right!43173 xs!286)))) lt!2091017)))

(declare-fun b!5081508 () Bool)

(assert (=> b!5081508 (= e!3169712 (list!19025 (right!43173 (right!43173 xs!286))))))

(declare-fun b!5081510 () Bool)

(declare-fun res!2163382 () Bool)

(assert (=> b!5081510 (=> (not res!2163382) (not e!3169713))))

(assert (=> b!5081510 (= res!2163382 (= (size!39113 lt!2091017) (+ (size!39113 (list!19025 (left!42843 (right!43173 xs!286)))) (size!39113 (list!19025 (right!43173 (right!43173 xs!286)))))))))

(declare-fun b!5081511 () Bool)

(assert (=> b!5081511 (= e!3169713 (or (not (= (list!19025 (right!43173 (right!43173 xs!286))) Nil!58452)) (= lt!2091017 (list!19025 (left!42843 (right!43173 xs!286))))))))

(assert (= (and d!1642950 c!872924) b!5081508))

(assert (= (and d!1642950 (not c!872924)) b!5081509))

(assert (= (and d!1642950 res!2163383) b!5081510))

(assert (= (and b!5081510 res!2163382) b!5081511))

(assert (=> b!5081509 m!6133042))

(declare-fun m!6134866 () Bool)

(assert (=> b!5081509 m!6134866))

(declare-fun m!6134868 () Bool)

(assert (=> d!1642950 m!6134868))

(assert (=> d!1642950 m!6133036))

(assert (=> d!1642950 m!6134776))

(assert (=> d!1642950 m!6133042))

(assert (=> d!1642950 m!6133592))

(declare-fun m!6134870 () Bool)

(assert (=> b!5081510 m!6134870))

(assert (=> b!5081510 m!6133036))

(assert (=> b!5081510 m!6134780))

(assert (=> b!5081510 m!6133042))

(assert (=> b!5081510 m!6133596))

(assert (=> b!5080806 d!1642950))

(assert (=> b!5080806 d!1642514))

(assert (=> b!5080806 d!1642506))

(declare-fun d!1642952 () Bool)

(declare-fun res!2163384 () Bool)

(declare-fun e!3169714 () Bool)

(assert (=> d!1642952 (=> (not res!2163384) (not e!3169714))))

(assert (=> d!1642952 (= res!2163384 (<= (size!39113 (list!19027 (xs!18954 (left!42843 (right!43173 xs!286))))) 512))))

(assert (=> d!1642952 (= (inv!77657 (left!42843 (right!43173 xs!286))) e!3169714)))

(declare-fun b!5081512 () Bool)

(declare-fun res!2163385 () Bool)

(assert (=> b!5081512 (=> (not res!2163385) (not e!3169714))))

(assert (=> b!5081512 (= res!2163385 (= (csize!31395 (left!42843 (right!43173 xs!286))) (size!39113 (list!19027 (xs!18954 (left!42843 (right!43173 xs!286)))))))))

(declare-fun b!5081513 () Bool)

(assert (=> b!5081513 (= e!3169714 (and (> (csize!31395 (left!42843 (right!43173 xs!286))) 0) (<= (csize!31395 (left!42843 (right!43173 xs!286))) 512)))))

(assert (= (and d!1642952 res!2163384) b!5081512))

(assert (= (and b!5081512 res!2163385) b!5081513))

(assert (=> d!1642952 m!6133578))

(assert (=> d!1642952 m!6133578))

(declare-fun m!6134872 () Bool)

(assert (=> d!1642952 m!6134872))

(assert (=> b!5081512 m!6133578))

(assert (=> b!5081512 m!6133578))

(assert (=> b!5081512 m!6134872))

(assert (=> b!5080908 d!1642952))

(assert (=> b!5081045 d!1642478))

(assert (=> b!5081045 d!1642506))

(declare-fun b!5081515 () Bool)

(declare-fun e!3169715 () List!58576)

(assert (=> b!5081515 (= e!3169715 (Cons!58452 (h!64900 (list!19025 (right!43173 (right!43173 xs!286)))) (++!12811 (t!371393 (list!19025 (right!43173 (right!43173 xs!286)))) (list!19025 (left!42843 (left!42843 ys!41))))))))

(declare-fun d!1642954 () Bool)

(declare-fun e!3169716 () Bool)

(assert (=> d!1642954 e!3169716))

(declare-fun res!2163387 () Bool)

(assert (=> d!1642954 (=> (not res!2163387) (not e!3169716))))

(declare-fun lt!2091018 () List!58576)

(assert (=> d!1642954 (= res!2163387 (= (content!10428 lt!2091018) ((_ map or) (content!10428 (list!19025 (right!43173 (right!43173 xs!286)))) (content!10428 (list!19025 (left!42843 (left!42843 ys!41)))))))))

(assert (=> d!1642954 (= lt!2091018 e!3169715)))

(declare-fun c!872925 () Bool)

(assert (=> d!1642954 (= c!872925 ((_ is Nil!58452) (list!19025 (right!43173 (right!43173 xs!286)))))))

(assert (=> d!1642954 (= (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 (left!42843 (left!42843 ys!41)))) lt!2091018)))

(declare-fun b!5081514 () Bool)

(assert (=> b!5081514 (= e!3169715 (list!19025 (left!42843 (left!42843 ys!41))))))

(declare-fun b!5081516 () Bool)

(declare-fun res!2163386 () Bool)

(assert (=> b!5081516 (=> (not res!2163386) (not e!3169716))))

(assert (=> b!5081516 (= res!2163386 (= (size!39113 lt!2091018) (+ (size!39113 (list!19025 (right!43173 (right!43173 xs!286)))) (size!39113 (list!19025 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5081517 () Bool)

(assert (=> b!5081517 (= e!3169716 (or (not (= (list!19025 (left!42843 (left!42843 ys!41))) Nil!58452)) (= lt!2091018 (list!19025 (right!43173 (right!43173 xs!286))))))))

(assert (= (and d!1642954 c!872925) b!5081514))

(assert (= (and d!1642954 (not c!872925)) b!5081515))

(assert (= (and d!1642954 res!2163387) b!5081516))

(assert (= (and b!5081516 res!2163386) b!5081517))

(assert (=> b!5081515 m!6133024))

(declare-fun m!6134874 () Bool)

(assert (=> b!5081515 m!6134874))

(declare-fun m!6134876 () Bool)

(assert (=> d!1642954 m!6134876))

(assert (=> d!1642954 m!6133042))

(assert (=> d!1642954 m!6133592))

(assert (=> d!1642954 m!6133024))

(assert (=> d!1642954 m!6133448))

(declare-fun m!6134878 () Bool)

(assert (=> b!5081516 m!6134878))

(assert (=> b!5081516 m!6133042))

(assert (=> b!5081516 m!6133596))

(assert (=> b!5081516 m!6133024))

(assert (=> b!5081516 m!6133452))

(assert (=> b!5081045 d!1642954))

(assert (=> b!5081045 d!1642514))

(assert (=> b!5081045 d!1642486))

(declare-fun d!1642956 () Bool)

(declare-fun e!3169717 () Bool)

(assert (=> d!1642956 e!3169717))

(declare-fun c!872926 () Bool)

(assert (=> d!1642956 (= c!872926 ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(assert (=> d!1642956 (= (appendAssoc!312 (list!19025 (left!42843 xs!286)) (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 (left!42843 (left!42843 ys!41))))) true)))

(declare-fun bm!354233 () Bool)

(declare-fun call!354240 () List!58576)

(assert (=> bm!354233 (= call!354240 (++!12811 (list!19025 (left!42843 xs!286)) (list!19025 (left!42843 (right!43173 xs!286)))))))

(declare-fun bm!354234 () Bool)

(declare-fun call!354239 () List!58576)

(declare-fun call!354241 () List!58576)

(assert (=> bm!354234 (= call!354239 (++!12811 (list!19025 (left!42843 xs!286)) call!354241))))

(declare-fun bm!354235 () Bool)

(assert (=> bm!354235 (= call!354241 (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081518 () Bool)

(declare-fun call!354238 () List!58576)

(assert (=> b!5081518 (= e!3169717 (= call!354238 call!354239))))

(declare-fun bm!354236 () Bool)

(assert (=> bm!354236 (= call!354238 (++!12811 call!354240 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081519 () Bool)

(assert (=> b!5081519 (= e!3169717 (= call!354238 call!354239))))

(declare-fun lt!2091019 () Bool)

(assert (=> b!5081519 (= lt!2091019 (appendAssoc!312 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 (left!42843 (left!42843 ys!41))))))))

(assert (= (and d!1642956 c!872926) b!5081518))

(assert (= (and d!1642956 (not c!872926)) b!5081519))

(assert (= (or b!5081518 b!5081519) bm!354233))

(assert (= (or b!5081518 b!5081519) bm!354235))

(assert (= (or b!5081518 b!5081519) bm!354234))

(assert (= (or b!5081518 b!5081519) bm!354236))

(assert (=> bm!354235 m!6133036))

(assert (=> bm!354235 m!6133914))

(declare-fun m!6134880 () Bool)

(assert (=> bm!354235 m!6134880))

(assert (=> bm!354234 m!6133030))

(declare-fun m!6134882 () Bool)

(assert (=> bm!354234 m!6134882))

(assert (=> bm!354236 m!6133914))

(declare-fun m!6134884 () Bool)

(assert (=> bm!354236 m!6134884))

(assert (=> bm!354233 m!6133030))

(assert (=> bm!354233 m!6133036))

(assert (=> bm!354233 m!6133558))

(assert (=> b!5081519 m!6133036))

(assert (=> b!5081519 m!6133914))

(declare-fun m!6134886 () Bool)

(assert (=> b!5081519 m!6134886))

(assert (=> b!5081045 d!1642956))

(declare-fun d!1642958 () Bool)

(assert (=> d!1642958 (= (inv!77655 (xs!18954 (left!42843 (right!43173 ys!41)))) (<= (size!39113 (innerList!15670 (xs!18954 (left!42843 (right!43173 ys!41))))) 2147483647))))

(declare-fun bs!1190666 () Bool)

(assert (= bs!1190666 d!1642958))

(declare-fun m!6134888 () Bool)

(assert (=> bs!1190666 m!6134888))

(assert (=> b!5081220 d!1642958))

(declare-fun d!1642960 () Bool)

(declare-fun lt!2091020 () Int)

(assert (=> d!1642960 (>= lt!2091020 0)))

(declare-fun e!3169718 () Int)

(assert (=> d!1642960 (= lt!2091020 e!3169718)))

(declare-fun c!872927 () Bool)

(assert (=> d!1642960 (= c!872927 ((_ is Nil!58452) (list!19027 (xs!18954 (right!43173 xs!286)))))))

(assert (=> d!1642960 (= (size!39113 (list!19027 (xs!18954 (right!43173 xs!286)))) lt!2091020)))

(declare-fun b!5081520 () Bool)

(assert (=> b!5081520 (= e!3169718 0)))

(declare-fun b!5081521 () Bool)

(assert (=> b!5081521 (= e!3169718 (+ 1 (size!39113 (t!371393 (list!19027 (xs!18954 (right!43173 xs!286)))))))))

(assert (= (and d!1642960 c!872927) b!5081520))

(assert (= (and d!1642960 (not c!872927)) b!5081521))

(declare-fun m!6134890 () Bool)

(assert (=> b!5081521 m!6134890))

(assert (=> d!1642764 d!1642960))

(declare-fun d!1642962 () Bool)

(assert (=> d!1642962 (= (list!19027 (xs!18954 (right!43173 xs!286))) (innerList!15670 (xs!18954 (right!43173 xs!286))))))

(assert (=> d!1642764 d!1642962))

(declare-fun d!1642964 () Bool)

(declare-fun lt!2091021 () Int)

(assert (=> d!1642964 (>= lt!2091021 0)))

(declare-fun e!3169719 () Int)

(assert (=> d!1642964 (= lt!2091021 e!3169719)))

(declare-fun c!872928 () Bool)

(assert (=> d!1642964 (= c!872928 ((_ is Nil!58452) lt!2090955))))

(assert (=> d!1642964 (= (size!39113 lt!2090955) lt!2091021)))

(declare-fun b!5081522 () Bool)

(assert (=> b!5081522 (= e!3169719 0)))

(declare-fun b!5081523 () Bool)

(assert (=> b!5081523 (= e!3169719 (+ 1 (size!39113 (t!371393 lt!2090955))))))

(assert (= (and d!1642964 c!872928) b!5081522))

(assert (= (and d!1642964 (not c!872928)) b!5081523))

(declare-fun m!6134892 () Bool)

(assert (=> b!5081523 m!6134892))

(assert (=> b!5080982 d!1642964))

(declare-fun d!1642966 () Bool)

(declare-fun lt!2091022 () Int)

(assert (=> d!1642966 (>= lt!2091022 0)))

(declare-fun e!3169720 () Int)

(assert (=> d!1642966 (= lt!2091022 e!3169720)))

(declare-fun c!872929 () Bool)

(assert (=> d!1642966 (= c!872929 ((_ is Nil!58452) (list!19025 (right!43173 (left!42843 ys!41)))))))

(assert (=> d!1642966 (= (size!39113 (list!19025 (right!43173 (left!42843 ys!41)))) lt!2091022)))

(declare-fun b!5081524 () Bool)

(assert (=> b!5081524 (= e!3169720 0)))

(declare-fun b!5081525 () Bool)

(assert (=> b!5081525 (= e!3169720 (+ 1 (size!39113 (t!371393 (list!19025 (right!43173 (left!42843 ys!41)))))))))

(assert (= (and d!1642966 c!872929) b!5081524))

(assert (= (and d!1642966 (not c!872929)) b!5081525))

(declare-fun m!6134894 () Bool)

(assert (=> b!5081525 m!6134894))

(assert (=> b!5080982 d!1642966))

(declare-fun d!1642968 () Bool)

(declare-fun lt!2091023 () Int)

(assert (=> d!1642968 (>= lt!2091023 0)))

(declare-fun e!3169721 () Int)

(assert (=> d!1642968 (= lt!2091023 e!3169721)))

(declare-fun c!872930 () Bool)

(assert (=> d!1642968 (= c!872930 ((_ is Nil!58452) (list!19025 (right!43173 ys!41))))))

(assert (=> d!1642968 (= (size!39113 (list!19025 (right!43173 ys!41))) lt!2091023)))

(declare-fun b!5081526 () Bool)

(assert (=> b!5081526 (= e!3169721 0)))

(declare-fun b!5081527 () Bool)

(assert (=> b!5081527 (= e!3169721 (+ 1 (size!39113 (t!371393 (list!19025 (right!43173 ys!41))))))))

(assert (= (and d!1642968 c!872930) b!5081526))

(assert (= (and d!1642968 (not c!872930)) b!5081527))

(declare-fun m!6134896 () Bool)

(assert (=> b!5081527 m!6134896))

(assert (=> b!5080982 d!1642968))

(declare-fun d!1642970 () Bool)

(declare-fun e!3169722 () Bool)

(assert (=> d!1642970 e!3169722))

(declare-fun c!872931 () Bool)

(assert (=> d!1642970 (= c!872931 ((_ is Nil!58452) (t!371393 (list!19025 (left!42843 xs!286)))))))

(assert (=> d!1642970 (= (appendAssoc!312 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (right!43173 xs!286)) (list!19025 ys!41)) true)))

(declare-fun bm!354237 () Bool)

(declare-fun call!354244 () List!58576)

(assert (=> bm!354237 (= call!354244 (++!12811 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (right!43173 xs!286))))))

(declare-fun bm!354238 () Bool)

(declare-fun call!354243 () List!58576)

(declare-fun call!354245 () List!58576)

(assert (=> bm!354238 (= call!354243 (++!12811 (t!371393 (list!19025 (left!42843 xs!286))) call!354245))))

(declare-fun bm!354239 () Bool)

(assert (=> bm!354239 (= call!354245 (++!12811 (list!19025 (right!43173 xs!286)) (list!19025 ys!41)))))

(declare-fun b!5081528 () Bool)

(declare-fun call!354242 () List!58576)

(assert (=> b!5081528 (= e!3169722 (= call!354242 call!354243))))

(declare-fun bm!354240 () Bool)

(assert (=> bm!354240 (= call!354242 (++!12811 call!354244 (list!19025 ys!41)))))

(declare-fun b!5081529 () Bool)

(assert (=> b!5081529 (= e!3169722 (= call!354242 call!354243))))

(declare-fun lt!2091024 () Bool)

(assert (=> b!5081529 (= lt!2091024 (appendAssoc!312 (t!371393 (t!371393 (list!19025 (left!42843 xs!286)))) (list!19025 (right!43173 xs!286)) (list!19025 ys!41)))))

(assert (= (and d!1642970 c!872931) b!5081528))

(assert (= (and d!1642970 (not c!872931)) b!5081529))

(assert (= (or b!5081528 b!5081529) bm!354237))

(assert (= (or b!5081528 b!5081529) bm!354239))

(assert (= (or b!5081528 b!5081529) bm!354238))

(assert (= (or b!5081528 b!5081529) bm!354240))

(assert (=> bm!354239 m!6133032))

(assert (=> bm!354239 m!6132964))

(assert (=> bm!354239 m!6133418))

(declare-fun m!6134898 () Bool)

(assert (=> bm!354238 m!6134898))

(assert (=> bm!354240 m!6132964))

(declare-fun m!6134900 () Bool)

(assert (=> bm!354240 m!6134900))

(assert (=> bm!354237 m!6133032))

(assert (=> bm!354237 m!6133818))

(assert (=> b!5081529 m!6133032))

(assert (=> b!5081529 m!6132964))

(declare-fun m!6134902 () Bool)

(assert (=> b!5081529 m!6134902))

(assert (=> b!5080798 d!1642970))

(declare-fun d!1642972 () Bool)

(declare-fun res!2163392 () Bool)

(declare-fun e!3169723 () Bool)

(assert (=> d!1642972 (=> res!2163392 e!3169723)))

(assert (=> d!1642972 (= res!2163392 (not ((_ is Node!15582) (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(assert (=> d!1642972 (= (isBalanced!4444 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) e!3169723)))

(declare-fun b!5081530 () Bool)

(declare-fun res!2163388 () Bool)

(declare-fun e!3169724 () Bool)

(assert (=> b!5081530 (=> (not res!2163388) (not e!3169724))))

(assert (=> b!5081530 (= res!2163388 (<= (- (height!2159 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (height!2159 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))) 1))))

(declare-fun b!5081531 () Bool)

(declare-fun res!2163389 () Bool)

(assert (=> b!5081531 (=> (not res!2163389) (not e!3169724))))

(assert (=> b!5081531 (= res!2163389 (isBalanced!4444 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(declare-fun b!5081532 () Bool)

(declare-fun res!2163391 () Bool)

(assert (=> b!5081532 (=> (not res!2163391) (not e!3169724))))

(assert (=> b!5081532 (= res!2163391 (isBalanced!4444 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(declare-fun b!5081533 () Bool)

(assert (=> b!5081533 (= e!3169723 e!3169724)))

(declare-fun res!2163390 () Bool)

(assert (=> b!5081533 (=> (not res!2163390) (not e!3169724))))

(assert (=> b!5081533 (= res!2163390 (<= (- 1) (- (height!2159 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (height!2159 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))

(declare-fun b!5081534 () Bool)

(declare-fun res!2163393 () Bool)

(assert (=> b!5081534 (=> (not res!2163393) (not e!3169724))))

(assert (=> b!5081534 (= res!2163393 (not (isEmpty!31667 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun b!5081535 () Bool)

(assert (=> b!5081535 (= e!3169724 (not (isEmpty!31667 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(assert (= (and d!1642972 (not res!2163392)) b!5081533))

(assert (= (and b!5081533 res!2163390) b!5081530))

(assert (= (and b!5081530 res!2163388) b!5081532))

(assert (= (and b!5081532 res!2163391) b!5081531))

(assert (= (and b!5081531 res!2163389) b!5081534))

(assert (= (and b!5081534 res!2163393) b!5081535))

(declare-fun m!6134904 () Bool)

(assert (=> b!5081531 m!6134904))

(declare-fun m!6134906 () Bool)

(assert (=> b!5081530 m!6134906))

(declare-fun m!6134908 () Bool)

(assert (=> b!5081530 m!6134908))

(declare-fun m!6134910 () Bool)

(assert (=> b!5081535 m!6134910))

(assert (=> b!5081533 m!6134906))

(assert (=> b!5081533 m!6134908))

(declare-fun m!6134912 () Bool)

(assert (=> b!5081534 m!6134912))

(declare-fun m!6134914 () Bool)

(assert (=> b!5081532 m!6134914))

(assert (=> b!5080832 d!1642972))

(declare-fun d!1642974 () Bool)

(declare-fun c!872932 () Bool)

(assert (=> d!1642974 (= c!872932 ((_ is Nil!58452) lt!2090938))))

(declare-fun e!3169725 () (InoxSet T!105244))

(assert (=> d!1642974 (= (content!10428 lt!2090938) e!3169725)))

(declare-fun b!5081536 () Bool)

(assert (=> b!5081536 (= e!3169725 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081537 () Bool)

(assert (=> b!5081537 (= e!3169725 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 lt!2090938) true) (content!10428 (t!371393 lt!2090938))))))

(assert (= (and d!1642974 c!872932) b!5081536))

(assert (= (and d!1642974 (not c!872932)) b!5081537))

(declare-fun m!6134916 () Bool)

(assert (=> b!5081537 m!6134916))

(declare-fun m!6134918 () Bool)

(assert (=> b!5081537 m!6134918))

(assert (=> d!1642518 d!1642974))

(declare-fun d!1642976 () Bool)

(declare-fun c!872933 () Bool)

(assert (=> d!1642976 (= c!872933 ((_ is Nil!58452) (list!19025 (right!43173 (right!43173 xs!286)))))))

(declare-fun e!3169726 () (InoxSet T!105244))

(assert (=> d!1642976 (= (content!10428 (list!19025 (right!43173 (right!43173 xs!286)))) e!3169726)))

(declare-fun b!5081538 () Bool)

(assert (=> b!5081538 (= e!3169726 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081539 () Bool)

(assert (=> b!5081539 (= e!3169726 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 (right!43173 (right!43173 xs!286)))) true) (content!10428 (t!371393 (list!19025 (right!43173 (right!43173 xs!286)))))))))

(assert (= (and d!1642976 c!872933) b!5081538))

(assert (= (and d!1642976 (not c!872933)) b!5081539))

(declare-fun m!6134920 () Bool)

(assert (=> b!5081539 m!6134920))

(declare-fun m!6134922 () Bool)

(assert (=> b!5081539 m!6134922))

(assert (=> d!1642518 d!1642976))

(assert (=> d!1642518 d!1642568))

(declare-fun d!1642978 () Bool)

(declare-fun res!2163394 () Bool)

(declare-fun e!3169727 () Bool)

(assert (=> d!1642978 (=> (not res!2163394) (not e!3169727))))

(assert (=> d!1642978 (= res!2163394 (= (csize!31394 (right!43173 (left!42843 xs!286))) (+ (size!39112 (left!42843 (right!43173 (left!42843 xs!286)))) (size!39112 (right!43173 (right!43173 (left!42843 xs!286)))))))))

(assert (=> d!1642978 (= (inv!77656 (right!43173 (left!42843 xs!286))) e!3169727)))

(declare-fun b!5081540 () Bool)

(declare-fun res!2163395 () Bool)

(assert (=> b!5081540 (=> (not res!2163395) (not e!3169727))))

(assert (=> b!5081540 (= res!2163395 (and (not (= (left!42843 (right!43173 (left!42843 xs!286))) Empty!15582)) (not (= (right!43173 (right!43173 (left!42843 xs!286))) Empty!15582))))))

(declare-fun b!5081541 () Bool)

(declare-fun res!2163396 () Bool)

(assert (=> b!5081541 (=> (not res!2163396) (not e!3169727))))

(assert (=> b!5081541 (= res!2163396 (= (cheight!15793 (right!43173 (left!42843 xs!286))) (+ (max!0 (height!2159 (left!42843 (right!43173 (left!42843 xs!286)))) (height!2159 (right!43173 (right!43173 (left!42843 xs!286))))) 1)))))

(declare-fun b!5081542 () Bool)

(assert (=> b!5081542 (= e!3169727 (<= 0 (cheight!15793 (right!43173 (left!42843 xs!286)))))))

(assert (= (and d!1642978 res!2163394) b!5081540))

(assert (= (and b!5081540 res!2163395) b!5081541))

(assert (= (and b!5081541 res!2163396) b!5081542))

(declare-fun m!6134924 () Bool)

(assert (=> d!1642978 m!6134924))

(declare-fun m!6134926 () Bool)

(assert (=> d!1642978 m!6134926))

(declare-fun m!6134928 () Bool)

(assert (=> b!5081541 m!6134928))

(declare-fun m!6134930 () Bool)

(assert (=> b!5081541 m!6134930))

(assert (=> b!5081541 m!6134928))

(assert (=> b!5081541 m!6134930))

(declare-fun m!6134932 () Bool)

(assert (=> b!5081541 m!6134932))

(assert (=> b!5080973 d!1642978))

(declare-fun b!5081544 () Bool)

(declare-fun e!3169728 () List!58576)

(assert (=> b!5081544 (= e!3169728 (Cons!58452 (h!64900 (list!19025 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))) (++!12811 (t!371393 (list!19025 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))) (list!19025 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))))

(declare-fun d!1642980 () Bool)

(declare-fun e!3169729 () Bool)

(assert (=> d!1642980 e!3169729))

(declare-fun res!2163398 () Bool)

(assert (=> d!1642980 (=> (not res!2163398) (not e!3169729))))

(declare-fun lt!2091025 () List!58576)

(assert (=> d!1642980 (= res!2163398 (= (content!10428 lt!2091025) ((_ map or) (content!10428 (list!19025 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))) (content!10428 (list!19025 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))))))

(assert (=> d!1642980 (= lt!2091025 e!3169728)))

(declare-fun c!872934 () Bool)

(assert (=> d!1642980 (= c!872934 ((_ is Nil!58452) (list!19025 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))))

(assert (=> d!1642980 (= (++!12811 (list!19025 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) (list!19025 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))) lt!2091025)))

(declare-fun b!5081543 () Bool)

(assert (=> b!5081543 (= e!3169728 (list!19025 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(declare-fun b!5081545 () Bool)

(declare-fun res!2163397 () Bool)

(assert (=> b!5081545 (=> (not res!2163397) (not e!3169729))))

(assert (=> b!5081545 (= res!2163397 (= (size!39113 lt!2091025) (+ (size!39113 (list!19025 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))) (size!39113 (list!19025 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))))))

(declare-fun b!5081546 () Bool)

(assert (=> b!5081546 (= e!3169729 (or (not (= (list!19025 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) Nil!58452)) (= lt!2091025 (list!19025 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))))

(assert (= (and d!1642980 c!872934) b!5081543))

(assert (= (and d!1642980 (not c!872934)) b!5081544))

(assert (= (and d!1642980 res!2163398) b!5081545))

(assert (= (and b!5081545 res!2163397) b!5081546))

(assert (=> b!5081544 m!6134040))

(declare-fun m!6134934 () Bool)

(assert (=> b!5081544 m!6134934))

(declare-fun m!6134936 () Bool)

(assert (=> d!1642980 m!6134936))

(assert (=> d!1642980 m!6134036))

(declare-fun m!6134938 () Bool)

(assert (=> d!1642980 m!6134938))

(assert (=> d!1642980 m!6134040))

(declare-fun m!6134940 () Bool)

(assert (=> d!1642980 m!6134940))

(declare-fun m!6134942 () Bool)

(assert (=> b!5081545 m!6134942))

(assert (=> b!5081545 m!6134036))

(declare-fun m!6134944 () Bool)

(assert (=> b!5081545 m!6134944))

(assert (=> b!5081545 m!6134040))

(declare-fun m!6134946 () Bool)

(assert (=> b!5081545 m!6134946))

(assert (=> b!5081118 d!1642980))

(declare-fun b!5081547 () Bool)

(declare-fun e!3169730 () List!58576)

(assert (=> b!5081547 (= e!3169730 Nil!58452)))

(declare-fun b!5081550 () Bool)

(declare-fun e!3169731 () List!58576)

(assert (=> b!5081550 (= e!3169731 (++!12811 (list!19025 (left!42843 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))) (list!19025 (right!43173 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))))

(declare-fun d!1642982 () Bool)

(declare-fun c!872935 () Bool)

(assert (=> d!1642982 (= c!872935 ((_ is Empty!15582) (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(assert (=> d!1642982 (= (list!19025 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) e!3169730)))

(declare-fun b!5081548 () Bool)

(assert (=> b!5081548 (= e!3169730 e!3169731)))

(declare-fun c!872936 () Bool)

(assert (=> b!5081548 (= c!872936 ((_ is Leaf!25878) (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(declare-fun b!5081549 () Bool)

(assert (=> b!5081549 (= e!3169731 (list!19027 (xs!18954 (left!42843 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))))

(assert (= (and d!1642982 c!872935) b!5081547))

(assert (= (and d!1642982 (not c!872935)) b!5081548))

(assert (= (and b!5081548 c!872936) b!5081549))

(assert (= (and b!5081548 (not c!872936)) b!5081550))

(declare-fun m!6134948 () Bool)

(assert (=> b!5081550 m!6134948))

(declare-fun m!6134950 () Bool)

(assert (=> b!5081550 m!6134950))

(assert (=> b!5081550 m!6134948))

(assert (=> b!5081550 m!6134950))

(declare-fun m!6134952 () Bool)

(assert (=> b!5081550 m!6134952))

(declare-fun m!6134954 () Bool)

(assert (=> b!5081549 m!6134954))

(assert (=> b!5081118 d!1642982))

(declare-fun b!5081551 () Bool)

(declare-fun e!3169732 () List!58576)

(assert (=> b!5081551 (= e!3169732 Nil!58452)))

(declare-fun b!5081554 () Bool)

(declare-fun e!3169733 () List!58576)

(assert (=> b!5081554 (= e!3169733 (++!12811 (list!19025 (left!42843 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))) (list!19025 (right!43173 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))))

(declare-fun d!1642984 () Bool)

(declare-fun c!872937 () Bool)

(assert (=> d!1642984 (= c!872937 ((_ is Empty!15582) (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(assert (=> d!1642984 (= (list!19025 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) e!3169732)))

(declare-fun b!5081552 () Bool)

(assert (=> b!5081552 (= e!3169732 e!3169733)))

(declare-fun c!872938 () Bool)

(assert (=> b!5081552 (= c!872938 ((_ is Leaf!25878) (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(declare-fun b!5081553 () Bool)

(assert (=> b!5081553 (= e!3169733 (list!19027 (xs!18954 (right!43173 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))))

(assert (= (and d!1642984 c!872937) b!5081551))

(assert (= (and d!1642984 (not c!872937)) b!5081552))

(assert (= (and b!5081552 c!872938) b!5081553))

(assert (= (and b!5081552 (not c!872938)) b!5081554))

(declare-fun m!6134956 () Bool)

(assert (=> b!5081554 m!6134956))

(declare-fun m!6134958 () Bool)

(assert (=> b!5081554 m!6134958))

(assert (=> b!5081554 m!6134956))

(assert (=> b!5081554 m!6134958))

(declare-fun m!6134960 () Bool)

(assert (=> b!5081554 m!6134960))

(declare-fun m!6134962 () Bool)

(assert (=> b!5081553 m!6134962))

(assert (=> b!5081118 d!1642984))

(declare-fun d!1642986 () Bool)

(declare-fun c!872939 () Bool)

(assert (=> d!1642986 (= c!872939 ((_ is Nil!58452) lt!2090965))))

(declare-fun e!3169734 () (InoxSet T!105244))

(assert (=> d!1642986 (= (content!10428 lt!2090965) e!3169734)))

(declare-fun b!5081555 () Bool)

(assert (=> b!5081555 (= e!3169734 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081556 () Bool)

(assert (=> b!5081556 (= e!3169734 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 lt!2090965) true) (content!10428 (t!371393 lt!2090965))))))

(assert (= (and d!1642986 c!872939) b!5081555))

(assert (= (and d!1642986 (not c!872939)) b!5081556))

(declare-fun m!6134964 () Bool)

(assert (=> b!5081556 m!6134964))

(declare-fun m!6134966 () Bool)

(assert (=> b!5081556 m!6134966))

(assert (=> d!1642652 d!1642986))

(declare-fun d!1642988 () Bool)

(declare-fun c!872940 () Bool)

(assert (=> d!1642988 (= c!872940 ((_ is Nil!58452) (list!19025 (left!42843 lt!2090875))))))

(declare-fun e!3169735 () (InoxSet T!105244))

(assert (=> d!1642988 (= (content!10428 (list!19025 (left!42843 lt!2090875))) e!3169735)))

(declare-fun b!5081557 () Bool)

(assert (=> b!5081557 (= e!3169735 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081558 () Bool)

(assert (=> b!5081558 (= e!3169735 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 (left!42843 lt!2090875))) true) (content!10428 (t!371393 (list!19025 (left!42843 lt!2090875))))))))

(assert (= (and d!1642988 c!872940) b!5081557))

(assert (= (and d!1642988 (not c!872940)) b!5081558))

(declare-fun m!6134968 () Bool)

(assert (=> b!5081558 m!6134968))

(declare-fun m!6134970 () Bool)

(assert (=> b!5081558 m!6134970))

(assert (=> d!1642652 d!1642988))

(declare-fun d!1642990 () Bool)

(declare-fun c!872941 () Bool)

(assert (=> d!1642990 (= c!872941 ((_ is Nil!58452) (list!19025 (right!43173 lt!2090875))))))

(declare-fun e!3169736 () (InoxSet T!105244))

(assert (=> d!1642990 (= (content!10428 (list!19025 (right!43173 lt!2090875))) e!3169736)))

(declare-fun b!5081559 () Bool)

(assert (=> b!5081559 (= e!3169736 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081560 () Bool)

(assert (=> b!5081560 (= e!3169736 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 (right!43173 lt!2090875))) true) (content!10428 (t!371393 (list!19025 (right!43173 lt!2090875))))))))

(assert (= (and d!1642990 c!872941) b!5081559))

(assert (= (and d!1642990 (not c!872941)) b!5081560))

(declare-fun m!6134972 () Bool)

(assert (=> b!5081560 m!6134972))

(declare-fun m!6134974 () Bool)

(assert (=> b!5081560 m!6134974))

(assert (=> d!1642652 d!1642990))

(declare-fun d!1642992 () Bool)

(declare-fun c!872942 () Bool)

(assert (=> d!1642992 (= c!872942 ((_ is Node!15582) (left!42843 (left!42843 (left!42843 xs!286)))))))

(declare-fun e!3169737 () Bool)

(assert (=> d!1642992 (= (inv!77654 (left!42843 (left!42843 (left!42843 xs!286)))) e!3169737)))

(declare-fun b!5081561 () Bool)

(assert (=> b!5081561 (= e!3169737 (inv!77656 (left!42843 (left!42843 (left!42843 xs!286)))))))

(declare-fun b!5081562 () Bool)

(declare-fun e!3169738 () Bool)

(assert (=> b!5081562 (= e!3169737 e!3169738)))

(declare-fun res!2163399 () Bool)

(assert (=> b!5081562 (= res!2163399 (not ((_ is Leaf!25878) (left!42843 (left!42843 (left!42843 xs!286))))))))

(assert (=> b!5081562 (=> res!2163399 e!3169738)))

(declare-fun b!5081563 () Bool)

(assert (=> b!5081563 (= e!3169738 (inv!77657 (left!42843 (left!42843 (left!42843 xs!286)))))))

(assert (= (and d!1642992 c!872942) b!5081561))

(assert (= (and d!1642992 (not c!872942)) b!5081562))

(assert (= (and b!5081562 (not res!2163399)) b!5081563))

(declare-fun m!6134976 () Bool)

(assert (=> b!5081561 m!6134976))

(declare-fun m!6134978 () Bool)

(assert (=> b!5081563 m!6134978))

(assert (=> b!5081230 d!1642992))

(declare-fun d!1642994 () Bool)

(declare-fun c!872943 () Bool)

(assert (=> d!1642994 (= c!872943 ((_ is Node!15582) (right!43173 (left!42843 (left!42843 xs!286)))))))

(declare-fun e!3169739 () Bool)

(assert (=> d!1642994 (= (inv!77654 (right!43173 (left!42843 (left!42843 xs!286)))) e!3169739)))

(declare-fun b!5081564 () Bool)

(assert (=> b!5081564 (= e!3169739 (inv!77656 (right!43173 (left!42843 (left!42843 xs!286)))))))

(declare-fun b!5081565 () Bool)

(declare-fun e!3169740 () Bool)

(assert (=> b!5081565 (= e!3169739 e!3169740)))

(declare-fun res!2163400 () Bool)

(assert (=> b!5081565 (= res!2163400 (not ((_ is Leaf!25878) (right!43173 (left!42843 (left!42843 xs!286))))))))

(assert (=> b!5081565 (=> res!2163400 e!3169740)))

(declare-fun b!5081566 () Bool)

(assert (=> b!5081566 (= e!3169740 (inv!77657 (right!43173 (left!42843 (left!42843 xs!286)))))))

(assert (= (and d!1642994 c!872943) b!5081564))

(assert (= (and d!1642994 (not c!872943)) b!5081565))

(assert (= (and b!5081565 (not res!2163400)) b!5081566))

(declare-fun m!6134980 () Bool)

(assert (=> b!5081564 m!6134980))

(declare-fun m!6134982 () Bool)

(assert (=> b!5081566 m!6134982))

(assert (=> b!5081230 d!1642994))

(declare-fun d!1642996 () Bool)

(declare-fun lt!2091026 () Bool)

(assert (=> d!1642996 (= lt!2091026 (isEmpty!31669 (list!19025 (left!42843 (right!43173 ys!41)))))))

(assert (=> d!1642996 (= lt!2091026 (= (size!39112 (left!42843 (right!43173 ys!41))) 0))))

(assert (=> d!1642996 (= (isEmpty!31667 (left!42843 (right!43173 ys!41))) lt!2091026)))

(declare-fun bs!1190667 () Bool)

(assert (= bs!1190667 d!1642996))

(assert (=> bs!1190667 m!6133798))

(assert (=> bs!1190667 m!6133798))

(declare-fun m!6134984 () Bool)

(assert (=> bs!1190667 m!6134984))

(assert (=> bs!1190667 m!6133964))

(assert (=> b!5080954 d!1642996))

(declare-fun d!1642998 () Bool)

(assert (=> d!1642998 (= (isEmpty!31669 (list!19025 (right!43173 lt!2090875))) ((_ is Nil!58452) (list!19025 (right!43173 lt!2090875))))))

(assert (=> d!1642758 d!1642998))

(assert (=> d!1642758 d!1642658))

(declare-fun d!1643000 () Bool)

(declare-fun lt!2091027 () Int)

(assert (=> d!1643000 (= lt!2091027 (size!39113 (list!19025 (right!43173 lt!2090875))))))

(assert (=> d!1643000 (= lt!2091027 (ite ((_ is Empty!15582) (right!43173 lt!2090875)) 0 (ite ((_ is Leaf!25878) (right!43173 lt!2090875)) (csize!31395 (right!43173 lt!2090875)) (csize!31394 (right!43173 lt!2090875)))))))

(assert (=> d!1643000 (= (size!39112 (right!43173 lt!2090875)) lt!2091027)))

(declare-fun bs!1190668 () Bool)

(assert (= bs!1190668 d!1643000))

(assert (=> bs!1190668 m!6133258))

(assert (=> bs!1190668 m!6133258))

(assert (=> bs!1190668 m!6133946))

(assert (=> d!1642758 d!1643000))

(declare-fun d!1643002 () Bool)

(declare-fun res!2163401 () Bool)

(declare-fun e!3169741 () Bool)

(assert (=> d!1643002 (=> (not res!2163401) (not e!3169741))))

(assert (=> d!1643002 (= res!2163401 (= (csize!31394 (right!43173 (right!43173 xs!286))) (+ (size!39112 (left!42843 (right!43173 (right!43173 xs!286)))) (size!39112 (right!43173 (right!43173 (right!43173 xs!286)))))))))

(assert (=> d!1643002 (= (inv!77656 (right!43173 (right!43173 xs!286))) e!3169741)))

(declare-fun b!5081567 () Bool)

(declare-fun res!2163402 () Bool)

(assert (=> b!5081567 (=> (not res!2163402) (not e!3169741))))

(assert (=> b!5081567 (= res!2163402 (and (not (= (left!42843 (right!43173 (right!43173 xs!286))) Empty!15582)) (not (= (right!43173 (right!43173 (right!43173 xs!286))) Empty!15582))))))

(declare-fun b!5081568 () Bool)

(declare-fun res!2163403 () Bool)

(assert (=> b!5081568 (=> (not res!2163403) (not e!3169741))))

(assert (=> b!5081568 (= res!2163403 (= (cheight!15793 (right!43173 (right!43173 xs!286))) (+ (max!0 (height!2159 (left!42843 (right!43173 (right!43173 xs!286)))) (height!2159 (right!43173 (right!43173 (right!43173 xs!286))))) 1)))))

(declare-fun b!5081569 () Bool)

(assert (=> b!5081569 (= e!3169741 (<= 0 (cheight!15793 (right!43173 (right!43173 xs!286)))))))

(assert (= (and d!1643002 res!2163401) b!5081567))

(assert (= (and b!5081567 res!2163402) b!5081568))

(assert (= (and b!5081568 res!2163403) b!5081569))

(declare-fun m!6134986 () Bool)

(assert (=> d!1643002 m!6134986))

(declare-fun m!6134988 () Bool)

(assert (=> d!1643002 m!6134988))

(declare-fun m!6134990 () Bool)

(assert (=> b!5081568 m!6134990))

(declare-fun m!6134992 () Bool)

(assert (=> b!5081568 m!6134992))

(assert (=> b!5081568 m!6134990))

(assert (=> b!5081568 m!6134992))

(declare-fun m!6134994 () Bool)

(assert (=> b!5081568 m!6134994))

(assert (=> b!5080909 d!1643002))

(declare-fun d!1643004 () Bool)

(declare-fun lt!2091028 () Int)

(assert (=> d!1643004 (= lt!2091028 (size!39113 (list!19025 (left!42843 (right!43173 xs!286)))))))

(assert (=> d!1643004 (= lt!2091028 (ite ((_ is Empty!15582) (left!42843 (right!43173 xs!286))) 0 (ite ((_ is Leaf!25878) (left!42843 (right!43173 xs!286))) (csize!31395 (left!42843 (right!43173 xs!286))) (csize!31394 (left!42843 (right!43173 xs!286))))))))

(assert (=> d!1643004 (= (size!39112 (left!42843 (right!43173 xs!286))) lt!2091028)))

(declare-fun bs!1190669 () Bool)

(assert (= bs!1190669 d!1643004))

(assert (=> bs!1190669 m!6133036))

(assert (=> bs!1190669 m!6133036))

(assert (=> bs!1190669 m!6134780))

(assert (=> d!1642776 d!1643004))

(declare-fun d!1643006 () Bool)

(declare-fun lt!2091029 () Int)

(assert (=> d!1643006 (= lt!2091029 (size!39113 (list!19025 (right!43173 (right!43173 xs!286)))))))

(assert (=> d!1643006 (= lt!2091029 (ite ((_ is Empty!15582) (right!43173 (right!43173 xs!286))) 0 (ite ((_ is Leaf!25878) (right!43173 (right!43173 xs!286))) (csize!31395 (right!43173 (right!43173 xs!286))) (csize!31394 (right!43173 (right!43173 xs!286))))))))

(assert (=> d!1643006 (= (size!39112 (right!43173 (right!43173 xs!286))) lt!2091029)))

(declare-fun bs!1190670 () Bool)

(assert (= bs!1190670 d!1643006))

(assert (=> bs!1190670 m!6133042))

(assert (=> bs!1190670 m!6133042))

(assert (=> bs!1190670 m!6133596))

(assert (=> d!1642776 d!1643006))

(declare-fun d!1643008 () Bool)

(declare-fun res!2163408 () Bool)

(declare-fun e!3169742 () Bool)

(assert (=> d!1643008 (=> res!2163408 e!3169742)))

(assert (=> d!1643008 (= res!2163408 (not ((_ is Node!15582) (right!43173 lt!2090909))))))

(assert (=> d!1643008 (= (isBalanced!4444 (right!43173 lt!2090909)) e!3169742)))

(declare-fun b!5081570 () Bool)

(declare-fun res!2163404 () Bool)

(declare-fun e!3169743 () Bool)

(assert (=> b!5081570 (=> (not res!2163404) (not e!3169743))))

(assert (=> b!5081570 (= res!2163404 (<= (- (height!2159 (left!42843 (right!43173 lt!2090909))) (height!2159 (right!43173 (right!43173 lt!2090909)))) 1))))

(declare-fun b!5081571 () Bool)

(declare-fun res!2163405 () Bool)

(assert (=> b!5081571 (=> (not res!2163405) (not e!3169743))))

(assert (=> b!5081571 (= res!2163405 (isBalanced!4444 (right!43173 (right!43173 lt!2090909))))))

(declare-fun b!5081572 () Bool)

(declare-fun res!2163407 () Bool)

(assert (=> b!5081572 (=> (not res!2163407) (not e!3169743))))

(assert (=> b!5081572 (= res!2163407 (isBalanced!4444 (left!42843 (right!43173 lt!2090909))))))

(declare-fun b!5081573 () Bool)

(assert (=> b!5081573 (= e!3169742 e!3169743)))

(declare-fun res!2163406 () Bool)

(assert (=> b!5081573 (=> (not res!2163406) (not e!3169743))))

(assert (=> b!5081573 (= res!2163406 (<= (- 1) (- (height!2159 (left!42843 (right!43173 lt!2090909))) (height!2159 (right!43173 (right!43173 lt!2090909))))))))

(declare-fun b!5081574 () Bool)

(declare-fun res!2163409 () Bool)

(assert (=> b!5081574 (=> (not res!2163409) (not e!3169743))))

(assert (=> b!5081574 (= res!2163409 (not (isEmpty!31667 (left!42843 (right!43173 lt!2090909)))))))

(declare-fun b!5081575 () Bool)

(assert (=> b!5081575 (= e!3169743 (not (isEmpty!31667 (right!43173 (right!43173 lt!2090909)))))))

(assert (= (and d!1643008 (not res!2163408)) b!5081573))

(assert (= (and b!5081573 res!2163406) b!5081570))

(assert (= (and b!5081570 res!2163404) b!5081572))

(assert (= (and b!5081572 res!2163407) b!5081571))

(assert (= (and b!5081571 res!2163405) b!5081574))

(assert (= (and b!5081574 res!2163409) b!5081575))

(declare-fun m!6134996 () Bool)

(assert (=> b!5081571 m!6134996))

(declare-fun m!6134998 () Bool)

(assert (=> b!5081570 m!6134998))

(declare-fun m!6135000 () Bool)

(assert (=> b!5081570 m!6135000))

(declare-fun m!6135002 () Bool)

(assert (=> b!5081575 m!6135002))

(assert (=> b!5081573 m!6134998))

(assert (=> b!5081573 m!6135000))

(declare-fun m!6135004 () Bool)

(assert (=> b!5081574 m!6135004))

(declare-fun m!6135006 () Bool)

(assert (=> b!5081572 m!6135006))

(assert (=> b!5081033 d!1643008))

(declare-fun b!5081577 () Bool)

(declare-fun e!3169744 () List!58576)

(assert (=> b!5081577 (= e!3169744 (Cons!58452 (h!64900 (list!19025 (left!42843 (left!42843 lt!2090875)))) (++!12811 (t!371393 (list!19025 (left!42843 (left!42843 lt!2090875)))) (list!19025 (right!43173 (left!42843 lt!2090875))))))))

(declare-fun d!1643010 () Bool)

(declare-fun e!3169745 () Bool)

(assert (=> d!1643010 e!3169745))

(declare-fun res!2163411 () Bool)

(assert (=> d!1643010 (=> (not res!2163411) (not e!3169745))))

(declare-fun lt!2091030 () List!58576)

(assert (=> d!1643010 (= res!2163411 (= (content!10428 lt!2091030) ((_ map or) (content!10428 (list!19025 (left!42843 (left!42843 lt!2090875)))) (content!10428 (list!19025 (right!43173 (left!42843 lt!2090875)))))))))

(assert (=> d!1643010 (= lt!2091030 e!3169744)))

(declare-fun c!872944 () Bool)

(assert (=> d!1643010 (= c!872944 ((_ is Nil!58452) (list!19025 (left!42843 (left!42843 lt!2090875)))))))

(assert (=> d!1643010 (= (++!12811 (list!19025 (left!42843 (left!42843 lt!2090875))) (list!19025 (right!43173 (left!42843 lt!2090875)))) lt!2091030)))

(declare-fun b!5081576 () Bool)

(assert (=> b!5081576 (= e!3169744 (list!19025 (right!43173 (left!42843 lt!2090875))))))

(declare-fun b!5081578 () Bool)

(declare-fun res!2163410 () Bool)

(assert (=> b!5081578 (=> (not res!2163410) (not e!3169745))))

(assert (=> b!5081578 (= res!2163410 (= (size!39113 lt!2091030) (+ (size!39113 (list!19025 (left!42843 (left!42843 lt!2090875)))) (size!39113 (list!19025 (right!43173 (left!42843 lt!2090875)))))))))

(declare-fun b!5081579 () Bool)

(assert (=> b!5081579 (= e!3169745 (or (not (= (list!19025 (right!43173 (left!42843 lt!2090875))) Nil!58452)) (= lt!2091030 (list!19025 (left!42843 (left!42843 lt!2090875))))))))

(assert (= (and d!1643010 c!872944) b!5081576))

(assert (= (and d!1643010 (not c!872944)) b!5081577))

(assert (= (and d!1643010 res!2163411) b!5081578))

(assert (= (and b!5081578 res!2163410) b!5081579))

(assert (=> b!5081577 m!6133950))

(declare-fun m!6135008 () Bool)

(assert (=> b!5081577 m!6135008))

(declare-fun m!6135010 () Bool)

(assert (=> d!1643010 m!6135010))

(assert (=> d!1643010 m!6133948))

(declare-fun m!6135012 () Bool)

(assert (=> d!1643010 m!6135012))

(assert (=> d!1643010 m!6133950))

(declare-fun m!6135014 () Bool)

(assert (=> d!1643010 m!6135014))

(declare-fun m!6135016 () Bool)

(assert (=> b!5081578 m!6135016))

(assert (=> b!5081578 m!6133948))

(declare-fun m!6135018 () Bool)

(assert (=> b!5081578 m!6135018))

(assert (=> b!5081578 m!6133950))

(declare-fun m!6135020 () Bool)

(assert (=> b!5081578 m!6135020))

(assert (=> b!5081063 d!1643010))

(declare-fun b!5081580 () Bool)

(declare-fun e!3169746 () List!58576)

(assert (=> b!5081580 (= e!3169746 Nil!58452)))

(declare-fun b!5081583 () Bool)

(declare-fun e!3169747 () List!58576)

(assert (=> b!5081583 (= e!3169747 (++!12811 (list!19025 (left!42843 (left!42843 (left!42843 lt!2090875)))) (list!19025 (right!43173 (left!42843 (left!42843 lt!2090875))))))))

(declare-fun d!1643012 () Bool)

(declare-fun c!872945 () Bool)

(assert (=> d!1643012 (= c!872945 ((_ is Empty!15582) (left!42843 (left!42843 lt!2090875))))))

(assert (=> d!1643012 (= (list!19025 (left!42843 (left!42843 lt!2090875))) e!3169746)))

(declare-fun b!5081581 () Bool)

(assert (=> b!5081581 (= e!3169746 e!3169747)))

(declare-fun c!872946 () Bool)

(assert (=> b!5081581 (= c!872946 ((_ is Leaf!25878) (left!42843 (left!42843 lt!2090875))))))

(declare-fun b!5081582 () Bool)

(assert (=> b!5081582 (= e!3169747 (list!19027 (xs!18954 (left!42843 (left!42843 lt!2090875)))))))

(assert (= (and d!1643012 c!872945) b!5081580))

(assert (= (and d!1643012 (not c!872945)) b!5081581))

(assert (= (and b!5081581 c!872946) b!5081582))

(assert (= (and b!5081581 (not c!872946)) b!5081583))

(declare-fun m!6135022 () Bool)

(assert (=> b!5081583 m!6135022))

(declare-fun m!6135024 () Bool)

(assert (=> b!5081583 m!6135024))

(assert (=> b!5081583 m!6135022))

(assert (=> b!5081583 m!6135024))

(declare-fun m!6135026 () Bool)

(assert (=> b!5081583 m!6135026))

(declare-fun m!6135028 () Bool)

(assert (=> b!5081582 m!6135028))

(assert (=> b!5081063 d!1643012))

(declare-fun b!5081584 () Bool)

(declare-fun e!3169748 () List!58576)

(assert (=> b!5081584 (= e!3169748 Nil!58452)))

(declare-fun b!5081587 () Bool)

(declare-fun e!3169749 () List!58576)

(assert (=> b!5081587 (= e!3169749 (++!12811 (list!19025 (left!42843 (right!43173 (left!42843 lt!2090875)))) (list!19025 (right!43173 (right!43173 (left!42843 lt!2090875))))))))

(declare-fun d!1643014 () Bool)

(declare-fun c!872947 () Bool)

(assert (=> d!1643014 (= c!872947 ((_ is Empty!15582) (right!43173 (left!42843 lt!2090875))))))

(assert (=> d!1643014 (= (list!19025 (right!43173 (left!42843 lt!2090875))) e!3169748)))

(declare-fun b!5081585 () Bool)

(assert (=> b!5081585 (= e!3169748 e!3169749)))

(declare-fun c!872948 () Bool)

(assert (=> b!5081585 (= c!872948 ((_ is Leaf!25878) (right!43173 (left!42843 lt!2090875))))))

(declare-fun b!5081586 () Bool)

(assert (=> b!5081586 (= e!3169749 (list!19027 (xs!18954 (right!43173 (left!42843 lt!2090875)))))))

(assert (= (and d!1643014 c!872947) b!5081584))

(assert (= (and d!1643014 (not c!872947)) b!5081585))

(assert (= (and b!5081585 c!872948) b!5081586))

(assert (= (and b!5081585 (not c!872948)) b!5081587))

(declare-fun m!6135030 () Bool)

(assert (=> b!5081587 m!6135030))

(declare-fun m!6135032 () Bool)

(assert (=> b!5081587 m!6135032))

(assert (=> b!5081587 m!6135030))

(assert (=> b!5081587 m!6135032))

(declare-fun m!6135034 () Bool)

(assert (=> b!5081587 m!6135034))

(declare-fun m!6135036 () Bool)

(assert (=> b!5081586 m!6135036))

(assert (=> b!5081063 d!1643014))

(declare-fun b!5081588 () Bool)

(declare-fun e!3169750 () Conc!15582)

(assert (=> b!5081588 (= e!3169750 (ite c!872763 (ite c!872765 call!354172 (ite c!872768 call!354169 lt!2090929)) (ite c!872767 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) call!354162)))))

(declare-fun lt!2091031 () Conc!15582)

(declare-fun d!1643016 () Bool)

(assert (=> d!1643016 (= (list!19025 lt!2091031) (++!12811 (list!19025 (ite c!872763 (ite (or c!872765 c!872768) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) call!354169) (ite c!872767 call!354162 lt!2090927))) (list!19025 (ite c!872763 (ite c!872765 call!354172 (ite c!872768 call!354169 lt!2090929)) (ite c!872767 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) call!354162)))))))

(assert (=> d!1643016 (= lt!2091031 e!3169750)))

(declare-fun c!872949 () Bool)

(assert (=> d!1643016 (= c!872949 (= (ite c!872763 (ite (or c!872765 c!872768) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) call!354169) (ite c!872767 call!354162 lt!2090927)) Empty!15582))))

(assert (=> d!1643016 (= (<>!402 (ite c!872763 (ite (or c!872765 c!872768) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) call!354169) (ite c!872767 call!354162 lt!2090927)) (ite c!872763 (ite c!872765 call!354172 (ite c!872768 call!354169 lt!2090929)) (ite c!872767 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) call!354162))) lt!2091031)))

(declare-fun b!5081589 () Bool)

(declare-fun e!3169751 () Conc!15582)

(assert (=> b!5081589 (= e!3169750 e!3169751)))

(declare-fun c!872950 () Bool)

(assert (=> b!5081589 (= c!872950 (= (ite c!872763 (ite c!872765 call!354172 (ite c!872768 call!354169 lt!2090929)) (ite c!872767 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) call!354162)) Empty!15582))))

(declare-fun b!5081591 () Bool)

(assert (=> b!5081591 (= e!3169751 (Node!15582 (ite c!872763 (ite (or c!872765 c!872768) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) call!354169) (ite c!872767 call!354162 lt!2090927)) (ite c!872763 (ite c!872765 call!354172 (ite c!872768 call!354169 lt!2090929)) (ite c!872767 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) call!354162)) (+ (size!39112 (ite c!872763 (ite (or c!872765 c!872768) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) call!354169) (ite c!872767 call!354162 lt!2090927))) (size!39112 (ite c!872763 (ite c!872765 call!354172 (ite c!872768 call!354169 lt!2090929)) (ite c!872767 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) call!354162)))) (+ (max!0 (height!2159 (ite c!872763 (ite (or c!872765 c!872768) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) call!354169) (ite c!872767 call!354162 lt!2090927))) (height!2159 (ite c!872763 (ite c!872765 call!354172 (ite c!872768 call!354169 lt!2090929)) (ite c!872767 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) call!354162)))) 1)))))

(declare-fun b!5081590 () Bool)

(assert (=> b!5081590 (= e!3169751 (ite c!872763 (ite (or c!872765 c!872768) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) call!354169) (ite c!872767 call!354162 lt!2090927)))))

(assert (= (and d!1643016 c!872949) b!5081588))

(assert (= (and d!1643016 (not c!872949)) b!5081589))

(assert (= (and b!5081589 c!872950) b!5081590))

(assert (= (and b!5081589 (not c!872950)) b!5081591))

(declare-fun m!6135038 () Bool)

(assert (=> d!1643016 m!6135038))

(declare-fun m!6135040 () Bool)

(assert (=> d!1643016 m!6135040))

(declare-fun m!6135042 () Bool)

(assert (=> d!1643016 m!6135042))

(assert (=> d!1643016 m!6135040))

(assert (=> d!1643016 m!6135042))

(declare-fun m!6135044 () Bool)

(assert (=> d!1643016 m!6135044))

(declare-fun m!6135046 () Bool)

(assert (=> b!5081591 m!6135046))

(declare-fun m!6135048 () Bool)

(assert (=> b!5081591 m!6135048))

(assert (=> b!5081591 m!6135048))

(declare-fun m!6135050 () Bool)

(assert (=> b!5081591 m!6135050))

(declare-fun m!6135052 () Bool)

(assert (=> b!5081591 m!6135052))

(assert (=> b!5081591 m!6135050))

(declare-fun m!6135054 () Bool)

(assert (=> b!5081591 m!6135054))

(assert (=> bm!354168 d!1643016))

(declare-fun d!1643018 () Bool)

(declare-fun lt!2091032 () Int)

(assert (=> d!1643018 (>= lt!2091032 0)))

(declare-fun e!3169752 () Int)

(assert (=> d!1643018 (= lt!2091032 e!3169752)))

(declare-fun c!872951 () Bool)

(assert (=> d!1643018 (= c!872951 ((_ is Nil!58452) (list!19025 lt!2090879)))))

(assert (=> d!1643018 (= (size!39113 (list!19025 lt!2090879)) lt!2091032)))

(declare-fun b!5081592 () Bool)

(assert (=> b!5081592 (= e!3169752 0)))

(declare-fun b!5081593 () Bool)

(assert (=> b!5081593 (= e!3169752 (+ 1 (size!39113 (t!371393 (list!19025 lt!2090879)))))))

(assert (= (and d!1643018 c!872951) b!5081592))

(assert (= (and d!1643018 (not c!872951)) b!5081593))

(declare-fun m!6135056 () Bool)

(assert (=> b!5081593 m!6135056))

(assert (=> d!1642724 d!1643018))

(assert (=> d!1642724 d!1642674))

(declare-fun d!1643020 () Bool)

(assert (=> d!1643020 (= (height!2159 (ite c!872763 lt!2090929 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (ite ((_ is Empty!15582) (ite c!872763 lt!2090929 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) 0 (ite ((_ is Leaf!25878) (ite c!872763 lt!2090929 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) 1 (cheight!15793 (ite c!872763 lt!2090929 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))

(assert (=> bm!354160 d!1643020))

(declare-fun d!1643022 () Bool)

(declare-fun lt!2091033 () Int)

(assert (=> d!1643022 (>= lt!2091033 0)))

(declare-fun e!3169753 () Int)

(assert (=> d!1643022 (= lt!2091033 e!3169753)))

(declare-fun c!872952 () Bool)

(assert (=> d!1643022 (= c!872952 ((_ is Nil!58452) (t!371393 (list!19025 xs!286))))))

(assert (=> d!1643022 (= (size!39113 (t!371393 (list!19025 xs!286))) lt!2091033)))

(declare-fun b!5081594 () Bool)

(assert (=> b!5081594 (= e!3169753 0)))

(declare-fun b!5081595 () Bool)

(assert (=> b!5081595 (= e!3169753 (+ 1 (size!39113 (t!371393 (t!371393 (list!19025 xs!286))))))))

(assert (= (and d!1643022 c!872952) b!5081594))

(assert (= (and d!1643022 (not c!872952)) b!5081595))

(declare-fun m!6135058 () Bool)

(assert (=> b!5081595 m!6135058))

(assert (=> b!5080965 d!1643022))

(declare-fun b!5081597 () Bool)

(declare-fun e!3169754 () List!58576)

(assert (=> b!5081597 (= e!3169754 (Cons!58452 (h!64900 call!354220) (++!12811 (t!371393 call!354220) (list!19025 (right!43173 ys!41)))))))

(declare-fun d!1643024 () Bool)

(declare-fun e!3169755 () Bool)

(assert (=> d!1643024 e!3169755))

(declare-fun res!2163413 () Bool)

(assert (=> d!1643024 (=> (not res!2163413) (not e!3169755))))

(declare-fun lt!2091034 () List!58576)

(assert (=> d!1643024 (= res!2163413 (= (content!10428 lt!2091034) ((_ map or) (content!10428 call!354220) (content!10428 (list!19025 (right!43173 ys!41))))))))

(assert (=> d!1643024 (= lt!2091034 e!3169754)))

(declare-fun c!872953 () Bool)

(assert (=> d!1643024 (= c!872953 ((_ is Nil!58452) call!354220))))

(assert (=> d!1643024 (= (++!12811 call!354220 (list!19025 (right!43173 ys!41))) lt!2091034)))

(declare-fun b!5081596 () Bool)

(assert (=> b!5081596 (= e!3169754 (list!19025 (right!43173 ys!41)))))

(declare-fun b!5081598 () Bool)

(declare-fun res!2163412 () Bool)

(assert (=> b!5081598 (=> (not res!2163412) (not e!3169755))))

(assert (=> b!5081598 (= res!2163412 (= (size!39113 lt!2091034) (+ (size!39113 call!354220) (size!39113 (list!19025 (right!43173 ys!41))))))))

(declare-fun b!5081599 () Bool)

(assert (=> b!5081599 (= e!3169755 (or (not (= (list!19025 (right!43173 ys!41)) Nil!58452)) (= lt!2091034 call!354220)))))

(assert (= (and d!1643024 c!872953) b!5081596))

(assert (= (and d!1643024 (not c!872953)) b!5081597))

(assert (= (and d!1643024 res!2163413) b!5081598))

(assert (= (and b!5081598 res!2163412) b!5081599))

(assert (=> b!5081597 m!6133016))

(declare-fun m!6135060 () Bool)

(assert (=> b!5081597 m!6135060))

(declare-fun m!6135062 () Bool)

(assert (=> d!1643024 m!6135062))

(declare-fun m!6135064 () Bool)

(assert (=> d!1643024 m!6135064))

(assert (=> d!1643024 m!6133016))

(assert (=> d!1643024 m!6133782))

(declare-fun m!6135066 () Bool)

(assert (=> b!5081598 m!6135066))

(declare-fun m!6135068 () Bool)

(assert (=> b!5081598 m!6135068))

(assert (=> b!5081598 m!6133016))

(assert (=> b!5081598 m!6133788))

(assert (=> bm!354216 d!1643024))

(declare-fun b!5081601 () Bool)

(declare-fun e!3169756 () List!58576)

(assert (=> b!5081601 (= e!3169756 (Cons!58452 (h!64900 (list!19025 (left!42843 (right!43173 xs!286)))) (++!12811 (t!371393 (list!19025 (left!42843 (right!43173 xs!286)))) call!354185)))))

(declare-fun d!1643026 () Bool)

(declare-fun e!3169757 () Bool)

(assert (=> d!1643026 e!3169757))

(declare-fun res!2163415 () Bool)

(assert (=> d!1643026 (=> (not res!2163415) (not e!3169757))))

(declare-fun lt!2091035 () List!58576)

(assert (=> d!1643026 (= res!2163415 (= (content!10428 lt!2091035) ((_ map or) (content!10428 (list!19025 (left!42843 (right!43173 xs!286)))) (content!10428 call!354185))))))

(assert (=> d!1643026 (= lt!2091035 e!3169756)))

(declare-fun c!872954 () Bool)

(assert (=> d!1643026 (= c!872954 ((_ is Nil!58452) (list!19025 (left!42843 (right!43173 xs!286)))))))

(assert (=> d!1643026 (= (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) call!354185) lt!2091035)))

(declare-fun b!5081600 () Bool)

(assert (=> b!5081600 (= e!3169756 call!354185)))

(declare-fun b!5081602 () Bool)

(declare-fun res!2163414 () Bool)

(assert (=> b!5081602 (=> (not res!2163414) (not e!3169757))))

(assert (=> b!5081602 (= res!2163414 (= (size!39113 lt!2091035) (+ (size!39113 (list!19025 (left!42843 (right!43173 xs!286)))) (size!39113 call!354185))))))

(declare-fun b!5081603 () Bool)

(assert (=> b!5081603 (= e!3169757 (or (not (= call!354185 Nil!58452)) (= lt!2091035 (list!19025 (left!42843 (right!43173 xs!286))))))))

(assert (= (and d!1643026 c!872954) b!5081600))

(assert (= (and d!1643026 (not c!872954)) b!5081601))

(assert (= (and d!1643026 res!2163415) b!5081602))

(assert (= (and b!5081602 res!2163414) b!5081603))

(declare-fun m!6135070 () Bool)

(assert (=> b!5081601 m!6135070))

(declare-fun m!6135072 () Bool)

(assert (=> d!1643026 m!6135072))

(assert (=> d!1643026 m!6133036))

(assert (=> d!1643026 m!6134776))

(declare-fun m!6135074 () Bool)

(assert (=> d!1643026 m!6135074))

(declare-fun m!6135076 () Bool)

(assert (=> b!5081602 m!6135076))

(assert (=> b!5081602 m!6133036))

(assert (=> b!5081602 m!6134780))

(declare-fun m!6135078 () Bool)

(assert (=> b!5081602 m!6135078))

(assert (=> bm!354178 d!1643026))

(declare-fun d!1643028 () Bool)

(declare-fun c!872955 () Bool)

(assert (=> d!1643028 (= c!872955 ((_ is Nil!58452) lt!2090980))))

(declare-fun e!3169758 () (InoxSet T!105244))

(assert (=> d!1643028 (= (content!10428 lt!2090980) e!3169758)))

(declare-fun b!5081604 () Bool)

(assert (=> b!5081604 (= e!3169758 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081605 () Bool)

(assert (=> b!5081605 (= e!3169758 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 lt!2090980) true) (content!10428 (t!371393 lt!2090980))))))

(assert (= (and d!1643028 c!872955) b!5081604))

(assert (= (and d!1643028 (not c!872955)) b!5081605))

(declare-fun m!6135080 () Bool)

(assert (=> b!5081605 m!6135080))

(declare-fun m!6135082 () Bool)

(assert (=> b!5081605 m!6135082))

(assert (=> d!1642706 d!1643028))

(declare-fun d!1643030 () Bool)

(declare-fun c!872956 () Bool)

(assert (=> d!1643030 (= c!872956 ((_ is Nil!58452) (t!371393 (list!19025 xs!286))))))

(declare-fun e!3169759 () (InoxSet T!105244))

(assert (=> d!1643030 (= (content!10428 (t!371393 (list!19025 xs!286))) e!3169759)))

(declare-fun b!5081606 () Bool)

(assert (=> b!5081606 (= e!3169759 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081607 () Bool)

(assert (=> b!5081607 (= e!3169759 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (t!371393 (list!19025 xs!286))) true) (content!10428 (t!371393 (t!371393 (list!19025 xs!286))))))))

(assert (= (and d!1643030 c!872956) b!5081606))

(assert (= (and d!1643030 (not c!872956)) b!5081607))

(declare-fun m!6135084 () Bool)

(assert (=> b!5081607 m!6135084))

(declare-fun m!6135086 () Bool)

(assert (=> b!5081607 m!6135086))

(assert (=> d!1642706 d!1643030))

(assert (=> d!1642706 d!1642568))

(declare-fun d!1643032 () Bool)

(declare-fun lt!2091036 () Bool)

(assert (=> d!1643032 (= lt!2091036 (isEmpty!31669 (list!19025 (left!42843 (right!43173 xs!286)))))))

(assert (=> d!1643032 (= lt!2091036 (= (size!39112 (left!42843 (right!43173 xs!286))) 0))))

(assert (=> d!1643032 (= (isEmpty!31667 (left!42843 (right!43173 xs!286))) lt!2091036)))

(declare-fun bs!1190671 () Bool)

(assert (= bs!1190671 d!1643032))

(assert (=> bs!1190671 m!6133036))

(assert (=> bs!1190671 m!6133036))

(declare-fun m!6135088 () Bool)

(assert (=> bs!1190671 m!6135088))

(assert (=> bs!1190671 m!6134248))

(assert (=> b!5081002 d!1643032))

(declare-fun b!5081609 () Bool)

(declare-fun e!3169760 () List!58576)

(assert (=> b!5081609 (= e!3169760 (Cons!58452 (h!64900 (list!19025 (left!42843 (left!42843 xs!286)))) (++!12811 (t!371393 (list!19025 (left!42843 (left!42843 xs!286)))) (list!19025 (right!43173 (left!42843 xs!286))))))))

(declare-fun d!1643034 () Bool)

(declare-fun e!3169761 () Bool)

(assert (=> d!1643034 e!3169761))

(declare-fun res!2163417 () Bool)

(assert (=> d!1643034 (=> (not res!2163417) (not e!3169761))))

(declare-fun lt!2091037 () List!58576)

(assert (=> d!1643034 (= res!2163417 (= (content!10428 lt!2091037) ((_ map or) (content!10428 (list!19025 (left!42843 (left!42843 xs!286)))) (content!10428 (list!19025 (right!43173 (left!42843 xs!286)))))))))

(assert (=> d!1643034 (= lt!2091037 e!3169760)))

(declare-fun c!872957 () Bool)

(assert (=> d!1643034 (= c!872957 ((_ is Nil!58452) (list!19025 (left!42843 (left!42843 xs!286)))))))

(assert (=> d!1643034 (= (++!12811 (list!19025 (left!42843 (left!42843 xs!286))) (list!19025 (right!43173 (left!42843 xs!286)))) lt!2091037)))

(declare-fun b!5081608 () Bool)

(assert (=> b!5081608 (= e!3169760 (list!19025 (right!43173 (left!42843 xs!286))))))

(declare-fun b!5081610 () Bool)

(declare-fun res!2163416 () Bool)

(assert (=> b!5081610 (=> (not res!2163416) (not e!3169761))))

(assert (=> b!5081610 (= res!2163416 (= (size!39113 lt!2091037) (+ (size!39113 (list!19025 (left!42843 (left!42843 xs!286)))) (size!39113 (list!19025 (right!43173 (left!42843 xs!286)))))))))

(declare-fun b!5081611 () Bool)

(assert (=> b!5081611 (= e!3169761 (or (not (= (list!19025 (right!43173 (left!42843 xs!286))) Nil!58452)) (= lt!2091037 (list!19025 (left!42843 (left!42843 xs!286))))))))

(assert (= (and d!1643034 c!872957) b!5081608))

(assert (= (and d!1643034 (not c!872957)) b!5081609))

(assert (= (and d!1643034 res!2163417) b!5081610))

(assert (= (and b!5081610 res!2163416) b!5081611))

(assert (=> b!5081609 m!6133428))

(declare-fun m!6135090 () Bool)

(assert (=> b!5081609 m!6135090))

(declare-fun m!6135092 () Bool)

(assert (=> d!1643034 m!6135092))

(assert (=> d!1643034 m!6133426))

(declare-fun m!6135094 () Bool)

(assert (=> d!1643034 m!6135094))

(assert (=> d!1643034 m!6133428))

(declare-fun m!6135096 () Bool)

(assert (=> d!1643034 m!6135096))

(declare-fun m!6135098 () Bool)

(assert (=> b!5081610 m!6135098))

(assert (=> b!5081610 m!6133426))

(declare-fun m!6135100 () Bool)

(assert (=> b!5081610 m!6135100))

(assert (=> b!5081610 m!6133428))

(declare-fun m!6135102 () Bool)

(assert (=> b!5081610 m!6135102))

(assert (=> b!5080802 d!1643034))

(declare-fun b!5081612 () Bool)

(declare-fun e!3169762 () List!58576)

(assert (=> b!5081612 (= e!3169762 Nil!58452)))

(declare-fun b!5081615 () Bool)

(declare-fun e!3169763 () List!58576)

(assert (=> b!5081615 (= e!3169763 (++!12811 (list!19025 (left!42843 (left!42843 (left!42843 xs!286)))) (list!19025 (right!43173 (left!42843 (left!42843 xs!286))))))))

(declare-fun d!1643036 () Bool)

(declare-fun c!872958 () Bool)

(assert (=> d!1643036 (= c!872958 ((_ is Empty!15582) (left!42843 (left!42843 xs!286))))))

(assert (=> d!1643036 (= (list!19025 (left!42843 (left!42843 xs!286))) e!3169762)))

(declare-fun b!5081613 () Bool)

(assert (=> b!5081613 (= e!3169762 e!3169763)))

(declare-fun c!872959 () Bool)

(assert (=> b!5081613 (= c!872959 ((_ is Leaf!25878) (left!42843 (left!42843 xs!286))))))

(declare-fun b!5081614 () Bool)

(assert (=> b!5081614 (= e!3169763 (list!19027 (xs!18954 (left!42843 (left!42843 xs!286)))))))

(assert (= (and d!1643036 c!872958) b!5081612))

(assert (= (and d!1643036 (not c!872958)) b!5081613))

(assert (= (and b!5081613 c!872959) b!5081614))

(assert (= (and b!5081613 (not c!872959)) b!5081615))

(declare-fun m!6135104 () Bool)

(assert (=> b!5081615 m!6135104))

(declare-fun m!6135106 () Bool)

(assert (=> b!5081615 m!6135106))

(assert (=> b!5081615 m!6135104))

(assert (=> b!5081615 m!6135106))

(declare-fun m!6135108 () Bool)

(assert (=> b!5081615 m!6135108))

(declare-fun m!6135110 () Bool)

(assert (=> b!5081614 m!6135110))

(assert (=> b!5080802 d!1643036))

(declare-fun b!5081616 () Bool)

(declare-fun e!3169764 () List!58576)

(assert (=> b!5081616 (= e!3169764 Nil!58452)))

(declare-fun b!5081619 () Bool)

(declare-fun e!3169765 () List!58576)

(assert (=> b!5081619 (= e!3169765 (++!12811 (list!19025 (left!42843 (right!43173 (left!42843 xs!286)))) (list!19025 (right!43173 (right!43173 (left!42843 xs!286))))))))

(declare-fun d!1643038 () Bool)

(declare-fun c!872960 () Bool)

(assert (=> d!1643038 (= c!872960 ((_ is Empty!15582) (right!43173 (left!42843 xs!286))))))

(assert (=> d!1643038 (= (list!19025 (right!43173 (left!42843 xs!286))) e!3169764)))

(declare-fun b!5081617 () Bool)

(assert (=> b!5081617 (= e!3169764 e!3169765)))

(declare-fun c!872961 () Bool)

(assert (=> b!5081617 (= c!872961 ((_ is Leaf!25878) (right!43173 (left!42843 xs!286))))))

(declare-fun b!5081618 () Bool)

(assert (=> b!5081618 (= e!3169765 (list!19027 (xs!18954 (right!43173 (left!42843 xs!286)))))))

(assert (= (and d!1643038 c!872960) b!5081616))

(assert (= (and d!1643038 (not c!872960)) b!5081617))

(assert (= (and b!5081617 c!872961) b!5081618))

(assert (= (and b!5081617 (not c!872961)) b!5081619))

(declare-fun m!6135112 () Bool)

(assert (=> b!5081619 m!6135112))

(declare-fun m!6135114 () Bool)

(assert (=> b!5081619 m!6135114))

(assert (=> b!5081619 m!6135112))

(assert (=> b!5081619 m!6135114))

(declare-fun m!6135116 () Bool)

(assert (=> b!5081619 m!6135116))

(declare-fun m!6135118 () Bool)

(assert (=> b!5081618 m!6135118))

(assert (=> b!5080802 d!1643038))

(declare-fun d!1643040 () Bool)

(assert (=> d!1643040 (= (list!19027 (xs!18954 (right!43173 (left!42843 ys!41)))) (innerList!15670 (xs!18954 (right!43173 (left!42843 ys!41)))))))

(assert (=> b!5080992 d!1643040))

(assert (=> b!5081132 d!1642560))

(assert (=> b!5081132 d!1642678))

(declare-fun d!1643042 () Bool)

(assert (=> d!1643042 (= (height!2159 (left!42843 (right!43173 lt!2090875))) (ite ((_ is Empty!15582) (left!42843 (right!43173 lt!2090875))) 0 (ite ((_ is Leaf!25878) (left!42843 (right!43173 lt!2090875))) 1 (cheight!15793 (left!42843 (right!43173 lt!2090875))))))))

(assert (=> b!5080894 d!1643042))

(declare-fun d!1643044 () Bool)

(assert (=> d!1643044 (= (height!2159 (right!43173 (right!43173 lt!2090875))) (ite ((_ is Empty!15582) (right!43173 (right!43173 lt!2090875))) 0 (ite ((_ is Leaf!25878) (right!43173 (right!43173 lt!2090875))) 1 (cheight!15793 (right!43173 (right!43173 lt!2090875))))))))

(assert (=> b!5080894 d!1643044))

(declare-fun d!1643046 () Bool)

(declare-fun lt!2091038 () Int)

(assert (=> d!1643046 (>= lt!2091038 0)))

(declare-fun e!3169766 () Int)

(assert (=> d!1643046 (= lt!2091038 e!3169766)))

(declare-fun c!872962 () Bool)

(assert (=> d!1643046 (= c!872962 ((_ is Nil!58452) lt!2090938))))

(assert (=> d!1643046 (= (size!39113 lt!2090938) lt!2091038)))

(declare-fun b!5081620 () Bool)

(assert (=> b!5081620 (= e!3169766 0)))

(declare-fun b!5081621 () Bool)

(assert (=> b!5081621 (= e!3169766 (+ 1 (size!39113 (t!371393 lt!2090938))))))

(assert (= (and d!1643046 c!872962) b!5081620))

(assert (= (and d!1643046 (not c!872962)) b!5081621))

(declare-fun m!6135120 () Bool)

(assert (=> b!5081621 m!6135120))

(assert (=> b!5080888 d!1643046))

(declare-fun d!1643048 () Bool)

(declare-fun lt!2091039 () Int)

(assert (=> d!1643048 (>= lt!2091039 0)))

(declare-fun e!3169767 () Int)

(assert (=> d!1643048 (= lt!2091039 e!3169767)))

(declare-fun c!872963 () Bool)

(assert (=> d!1643048 (= c!872963 ((_ is Nil!58452) (list!19025 (right!43173 (right!43173 xs!286)))))))

(assert (=> d!1643048 (= (size!39113 (list!19025 (right!43173 (right!43173 xs!286)))) lt!2091039)))

(declare-fun b!5081622 () Bool)

(assert (=> b!5081622 (= e!3169767 0)))

(declare-fun b!5081623 () Bool)

(assert (=> b!5081623 (= e!3169767 (+ 1 (size!39113 (t!371393 (list!19025 (right!43173 (right!43173 xs!286)))))))))

(assert (= (and d!1643048 c!872963) b!5081622))

(assert (= (and d!1643048 (not c!872963)) b!5081623))

(declare-fun m!6135122 () Bool)

(assert (=> b!5081623 m!6135122))

(assert (=> b!5080888 d!1643048))

(assert (=> b!5080888 d!1642586))

(declare-fun b!5081625 () Bool)

(declare-fun e!3169768 () List!58576)

(assert (=> b!5081625 (= e!3169768 (Cons!58452 (h!64900 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) (++!12811 (t!371393 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 ys!41))))))))

(declare-fun d!1643050 () Bool)

(declare-fun e!3169769 () Bool)

(assert (=> d!1643050 e!3169769))

(declare-fun res!2163419 () Bool)

(assert (=> d!1643050 (=> (not res!2163419) (not e!3169769))))

(declare-fun lt!2091040 () List!58576)

(assert (=> d!1643050 (= res!2163419 (= (content!10428 lt!2091040) ((_ map or) (content!10428 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) (content!10428 (list!19025 (right!43173 (left!42843 ys!41)))))))))

(assert (=> d!1643050 (= lt!2091040 e!3169768)))

(declare-fun c!872964 () Bool)

(assert (=> d!1643050 (= c!872964 ((_ is Nil!58452) (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1643050 (= (++!12811 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 ys!41)))) lt!2091040)))

(declare-fun b!5081624 () Bool)

(assert (=> b!5081624 (= e!3169768 (list!19025 (right!43173 (left!42843 ys!41))))))

(declare-fun b!5081626 () Bool)

(declare-fun res!2163418 () Bool)

(assert (=> b!5081626 (=> (not res!2163418) (not e!3169769))))

(assert (=> b!5081626 (= res!2163418 (= (size!39113 lt!2091040) (+ (size!39113 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) (size!39113 (list!19025 (right!43173 (left!42843 ys!41)))))))))

(declare-fun b!5081627 () Bool)

(assert (=> b!5081627 (= e!3169769 (or (not (= (list!19025 (right!43173 (left!42843 ys!41))) Nil!58452)) (= lt!2091040 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))))))))

(assert (= (and d!1643050 c!872964) b!5081624))

(assert (= (and d!1643050 (not c!872964)) b!5081625))

(assert (= (and d!1643050 res!2163419) b!5081626))

(assert (= (and b!5081626 res!2163418) b!5081627))

(assert (=> b!5081625 m!6133018))

(declare-fun m!6135124 () Bool)

(assert (=> b!5081625 m!6135124))

(declare-fun m!6135126 () Bool)

(assert (=> d!1643050 m!6135126))

(assert (=> d!1643050 m!6133020))

(assert (=> d!1643050 m!6134836))

(assert (=> d!1643050 m!6133018))

(assert (=> d!1643050 m!6133780))

(declare-fun m!6135128 () Bool)

(assert (=> b!5081626 m!6135128))

(assert (=> b!5081626 m!6133020))

(assert (=> b!5081626 m!6134842))

(assert (=> b!5081626 m!6133018))

(assert (=> b!5081626 m!6133786))

(assert (=> bm!354185 d!1643050))

(declare-fun d!1643052 () Bool)

(declare-fun lt!2091041 () Int)

(assert (=> d!1643052 (>= lt!2091041 0)))

(declare-fun e!3169770 () Int)

(assert (=> d!1643052 (= lt!2091041 e!3169770)))

(declare-fun c!872965 () Bool)

(assert (=> d!1643052 (= c!872965 ((_ is Nil!58452) (list!19027 (xs!18954 (left!42843 ys!41)))))))

(assert (=> d!1643052 (= (size!39113 (list!19027 (xs!18954 (left!42843 ys!41)))) lt!2091041)))

(declare-fun b!5081628 () Bool)

(assert (=> b!5081628 (= e!3169770 0)))

(declare-fun b!5081629 () Bool)

(assert (=> b!5081629 (= e!3169770 (+ 1 (size!39113 (t!371393 (list!19027 (xs!18954 (left!42843 ys!41)))))))))

(assert (= (and d!1643052 c!872965) b!5081628))

(assert (= (and d!1643052 (not c!872965)) b!5081629))

(declare-fun m!6135130 () Bool)

(assert (=> b!5081629 m!6135130))

(assert (=> b!5080968 d!1643052))

(declare-fun d!1643054 () Bool)

(assert (=> d!1643054 (= (list!19027 (xs!18954 (left!42843 ys!41))) (innerList!15670 (xs!18954 (left!42843 ys!41))))))

(assert (=> b!5080968 d!1643054))

(declare-fun bm!354241 () Bool)

(declare-fun call!354261 () Conc!15582)

(declare-fun c!872973 () Bool)

(declare-fun lt!2091044 () Conc!15582)

(declare-fun c!872972 () Bool)

(declare-fun call!354253 () Conc!15582)

(declare-fun c!872968 () Bool)

(declare-fun c!872966 () Bool)

(declare-fun lt!2091042 () Conc!15582)

(declare-fun c!872971 () Bool)

(assert (=> bm!354241 (= call!354253 (<>!402 (ite c!872966 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (ite c!872968 (ite c!872973 (left!42843 (right!43173 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (left!42843 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872971 call!354261 (ite c!872972 lt!2091042 (right!43173 (left!42843 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))))) (ite c!872966 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))) (ite c!872968 (ite c!872973 lt!2091044 (left!42843 (right!43173 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))) (ite c!872971 (right!43173 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))) (ite c!872972 (right!43173 (left!42843 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))) (right!43173 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))))))))

(declare-fun bm!354242 () Bool)

(declare-fun call!354248 () Conc!15582)

(assert (=> bm!354242 (= call!354248 call!354253)))

(declare-fun bm!354243 () Bool)

(declare-fun call!354254 () Conc!15582)

(declare-fun call!354255 () Conc!15582)

(assert (=> bm!354243 (= call!354254 call!354255)))

(declare-fun bm!354244 () Bool)

(declare-fun call!354251 () Conc!15582)

(declare-fun call!354259 () Conc!15582)

(assert (=> bm!354244 (= call!354251 call!354259)))

(declare-fun e!3169773 () Bool)

(declare-fun b!5081630 () Bool)

(declare-fun lt!2091045 () Conc!15582)

(assert (=> b!5081630 (= e!3169773 (= (list!19025 lt!2091045) (++!12811 (list!19025 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (list!19025 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))))

(declare-fun call!354256 () Int)

(declare-fun bm!354245 () Bool)

(assert (=> bm!354245 (= call!354256 (height!2159 (ite c!872968 (left!42843 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) lt!2091042)))))

(declare-fun bm!354246 () Bool)

(declare-fun call!354249 () Int)

(assert (=> bm!354246 (= call!354249 (height!2159 (ite c!872968 (right!43173 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (left!42843 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))))

(declare-fun bm!354247 () Bool)

(declare-fun call!354257 () Conc!15582)

(assert (=> bm!354247 (= call!354257 call!354248)))

(declare-fun b!5081632 () Bool)

(declare-fun e!3169779 () Conc!15582)

(assert (=> b!5081632 (= e!3169779 call!354254)))

(declare-fun b!5081633 () Bool)

(declare-fun res!2163420 () Bool)

(assert (=> b!5081633 (=> (not res!2163420) (not e!3169773))))

(assert (=> b!5081633 (= res!2163420 (>= (height!2159 lt!2091045) (max!0 (height!2159 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (height!2159 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))))

(declare-fun b!5081634 () Bool)

(declare-fun e!3169771 () Conc!15582)

(assert (=> b!5081634 (= e!3169771 call!354251)))

(declare-fun bm!354248 () Bool)

(declare-fun call!354247 () Int)

(assert (=> bm!354248 (= call!354247 (height!2159 (ite c!872968 lt!2091044 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))))

(declare-fun b!5081635 () Bool)

(declare-fun e!3169774 () Conc!15582)

(declare-fun e!3169772 () Conc!15582)

(assert (=> b!5081635 (= e!3169774 e!3169772)))

(declare-fun lt!2091043 () Int)

(assert (=> b!5081635 (= c!872968 (< lt!2091043 (- 1)))))

(declare-fun b!5081636 () Bool)

(declare-fun e!3169778 () Conc!15582)

(assert (=> b!5081636 (= e!3169778 e!3169771)))

(declare-fun call!354260 () Conc!15582)

(assert (=> b!5081636 (= lt!2091044 call!354260)))

(declare-fun call!354246 () Int)

(assert (=> b!5081636 (= c!872973 (= call!354247 (- call!354246 3)))))

(declare-fun b!5081637 () Bool)

(assert (=> b!5081637 (= c!872966 (and (<= (- 1) lt!2091043) (<= lt!2091043 1)))))

(assert (=> b!5081637 (= lt!2091043 (- (height!2159 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))) (height!2159 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))))

(declare-fun e!3169776 () Conc!15582)

(assert (=> b!5081637 (= e!3169776 e!3169774)))

(declare-fun bm!354249 () Bool)

(assert (=> bm!354249 (= call!354246 (height!2159 (ite c!872968 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))))

(declare-fun b!5081638 () Bool)

(declare-fun res!2163421 () Bool)

(assert (=> b!5081638 (=> (not res!2163421) (not e!3169773))))

(assert (=> b!5081638 (= res!2163421 (<= (height!2159 lt!2091045) (+ (max!0 (height!2159 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (height!2159 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))) 1)))))

(declare-fun b!5081639 () Bool)

(assert (=> b!5081639 (= e!3169774 call!354253)))

(declare-fun b!5081640 () Bool)

(declare-fun e!3169780 () Conc!15582)

(assert (=> b!5081640 (= e!3169780 e!3169779)))

(assert (=> b!5081640 (= lt!2091042 call!354261)))

(assert (=> b!5081640 (= c!872972 (= call!354256 (- call!354247 3)))))

(declare-fun e!3169777 () Bool)

(declare-fun b!5081641 () Bool)

(assert (=> b!5081641 (= e!3169777 (isBalanced!4444 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))

(declare-fun b!5081642 () Bool)

(declare-fun c!872970 () Bool)

(assert (=> b!5081642 (= c!872970 (>= call!354256 call!354249))))

(assert (=> b!5081642 (= e!3169772 e!3169778)))

(declare-fun b!5081643 () Bool)

(declare-fun e!3169775 () Conc!15582)

(assert (=> b!5081643 (= e!3169775 e!3169776)))

(declare-fun c!872969 () Bool)

(assert (=> b!5081643 (= c!872969 (= (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))) Empty!15582))))

(declare-fun b!5081644 () Bool)

(assert (=> b!5081644 (= e!3169775 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))

(declare-fun b!5081645 () Bool)

(assert (=> b!5081645 (= e!3169778 call!354259)))

(declare-fun bm!354250 () Bool)

(declare-fun call!354252 () Conc!15582)

(assert (=> bm!354250 (= call!354260 call!354252)))

(declare-fun bm!354251 () Bool)

(declare-fun call!354258 () Conc!15582)

(assert (=> bm!354251 (= call!354258 call!354248)))

(declare-fun bm!354252 () Bool)

(assert (=> bm!354252 (= call!354252 (++!12810 (ite c!872968 (ite c!872970 (right!43173 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (right!43173 (right!43173 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))) (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (ite c!872968 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))) (ite c!872971 (left!42843 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))) (left!42843 (left!42843 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))))))

(declare-fun bm!354253 () Bool)

(declare-fun call!354250 () Conc!15582)

(assert (=> bm!354253 (= call!354250 call!354258)))

(declare-fun b!5081646 () Bool)

(assert (=> b!5081646 (= e!3169780 call!354258)))

(declare-fun b!5081647 () Bool)

(declare-fun res!2163424 () Bool)

(assert (=> b!5081647 (=> (not res!2163424) (not e!3169773))))

(assert (=> b!5081647 (= res!2163424 (isBalanced!4444 lt!2091045))))

(declare-fun b!5081648 () Bool)

(assert (=> b!5081648 (= c!872971 (>= call!354246 call!354249))))

(assert (=> b!5081648 (= e!3169772 e!3169780)))

(declare-fun b!5081649 () Bool)

(assert (=> b!5081649 (= e!3169771 call!354251)))

(declare-fun bm!354254 () Bool)

(assert (=> bm!354254 (= call!354261 call!354252)))

(declare-fun bm!354255 () Bool)

(assert (=> bm!354255 (= call!354259 call!354255)))

(declare-fun bm!354256 () Bool)

(assert (=> bm!354256 (= call!354255 (<>!402 (ite c!872968 (ite (or c!872970 c!872973) (left!42843 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) call!354257) (ite c!872972 call!354250 lt!2091042)) (ite c!872968 (ite c!872970 call!354260 (ite c!872973 call!354257 lt!2091044)) (ite c!872972 (right!43173 (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))) call!354250))))))

(declare-fun b!5081650 () Bool)

(assert (=> b!5081650 (= e!3169776 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))

(declare-fun b!5081631 () Bool)

(assert (=> b!5081631 (= e!3169779 call!354254)))

(declare-fun d!1643056 () Bool)

(assert (=> d!1643056 e!3169773))

(declare-fun res!2163423 () Bool)

(assert (=> d!1643056 (=> (not res!2163423) (not e!3169773))))

(assert (=> d!1643056 (= res!2163423 (appendAssocInst!920 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))

(assert (=> d!1643056 (= lt!2091045 e!3169775)))

(declare-fun c!872967 () Bool)

(assert (=> d!1643056 (= c!872967 (= (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) Empty!15582))))

(assert (=> d!1643056 e!3169777))

(declare-fun res!2163422 () Bool)

(assert (=> d!1643056 (=> (not res!2163422) (not e!3169777))))

(assert (=> d!1643056 (= res!2163422 (isBalanced!4444 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))))

(assert (=> d!1643056 (= (++!12810 (ite c!872763 (ite c!872765 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (right!43173 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (ite c!872763 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872766 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (left!42843 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))) lt!2091045)))

(assert (= (and d!1643056 res!2163422) b!5081641))

(assert (= (and d!1643056 c!872967) b!5081644))

(assert (= (and d!1643056 (not c!872967)) b!5081643))

(assert (= (and b!5081643 c!872969) b!5081650))

(assert (= (and b!5081643 (not c!872969)) b!5081637))

(assert (= (and b!5081637 c!872966) b!5081639))

(assert (= (and b!5081637 (not c!872966)) b!5081635))

(assert (= (and b!5081635 c!872968) b!5081642))

(assert (= (and b!5081635 (not c!872968)) b!5081648))

(assert (= (and b!5081642 c!872970) b!5081645))

(assert (= (and b!5081642 (not c!872970)) b!5081636))

(assert (= (and b!5081636 c!872973) b!5081649))

(assert (= (and b!5081636 (not c!872973)) b!5081634))

(assert (= (or b!5081649 b!5081634) bm!354247))

(assert (= (or b!5081649 b!5081634) bm!354244))

(assert (= (or b!5081645 b!5081636) bm!354250))

(assert (= (or b!5081645 bm!354244) bm!354255))

(assert (= (and b!5081648 c!872971) b!5081646))

(assert (= (and b!5081648 (not c!872971)) b!5081640))

(assert (= (and b!5081640 c!872972) b!5081631))

(assert (= (and b!5081640 (not c!872972)) b!5081632))

(assert (= (or b!5081631 b!5081632) bm!354253))

(assert (= (or b!5081631 b!5081632) bm!354243))

(assert (= (or b!5081646 b!5081640) bm!354254))

(assert (= (or b!5081646 bm!354253) bm!354251))

(assert (= (or bm!354255 bm!354243) bm!354256))

(assert (= (or b!5081642 b!5081640) bm!354245))

(assert (= (or b!5081642 b!5081648) bm!354246))

(assert (= (or bm!354250 bm!354254) bm!354252))

(assert (= (or b!5081636 b!5081640) bm!354248))

(assert (= (or b!5081636 b!5081648) bm!354249))

(assert (= (or bm!354247 bm!354251) bm!354242))

(assert (= (or b!5081639 bm!354242) bm!354241))

(assert (= (and d!1643056 res!2163423) b!5081647))

(assert (= (and b!5081647 res!2163424) b!5081638))

(assert (= (and b!5081638 res!2163421) b!5081633))

(assert (= (and b!5081633 res!2163420) b!5081630))

(declare-fun m!6135132 () Bool)

(assert (=> bm!354249 m!6135132))

(declare-fun m!6135134 () Bool)

(assert (=> b!5081638 m!6135134))

(declare-fun m!6135136 () Bool)

(assert (=> b!5081638 m!6135136))

(declare-fun m!6135138 () Bool)

(assert (=> b!5081638 m!6135138))

(assert (=> b!5081638 m!6135136))

(assert (=> b!5081638 m!6135138))

(declare-fun m!6135140 () Bool)

(assert (=> b!5081638 m!6135140))

(declare-fun m!6135142 () Bool)

(assert (=> b!5081641 m!6135142))

(declare-fun m!6135144 () Bool)

(assert (=> d!1643056 m!6135144))

(declare-fun m!6135146 () Bool)

(assert (=> d!1643056 m!6135146))

(assert (=> b!5081637 m!6135138))

(assert (=> b!5081637 m!6135136))

(declare-fun m!6135148 () Bool)

(assert (=> bm!354248 m!6135148))

(declare-fun m!6135150 () Bool)

(assert (=> bm!354246 m!6135150))

(assert (=> b!5081633 m!6135134))

(assert (=> b!5081633 m!6135136))

(assert (=> b!5081633 m!6135138))

(assert (=> b!5081633 m!6135136))

(assert (=> b!5081633 m!6135138))

(assert (=> b!5081633 m!6135140))

(declare-fun m!6135152 () Bool)

(assert (=> bm!354241 m!6135152))

(declare-fun m!6135154 () Bool)

(assert (=> bm!354252 m!6135154))

(declare-fun m!6135156 () Bool)

(assert (=> b!5081630 m!6135156))

(declare-fun m!6135158 () Bool)

(assert (=> b!5081630 m!6135158))

(declare-fun m!6135160 () Bool)

(assert (=> b!5081630 m!6135160))

(assert (=> b!5081630 m!6135158))

(assert (=> b!5081630 m!6135160))

(declare-fun m!6135162 () Bool)

(assert (=> b!5081630 m!6135162))

(declare-fun m!6135164 () Bool)

(assert (=> bm!354256 m!6135164))

(declare-fun m!6135166 () Bool)

(assert (=> b!5081647 m!6135166))

(declare-fun m!6135168 () Bool)

(assert (=> bm!354245 m!6135168))

(assert (=> bm!354164 d!1643056))

(assert (=> b!5081048 d!1642878))

(assert (=> b!5081048 d!1642446))

(declare-fun b!5081651 () Bool)

(declare-fun e!3169781 () List!58576)

(assert (=> b!5081651 (= e!3169781 Nil!58452)))

(declare-fun b!5081654 () Bool)

(declare-fun e!3169782 () List!58576)

(assert (=> b!5081654 (= e!3169782 (++!12811 (list!19025 (left!42843 (right!43173 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (right!43173 (left!42843 (left!42843 ys!41)))))))))

(declare-fun d!1643058 () Bool)

(declare-fun c!872974 () Bool)

(assert (=> d!1643058 (= c!872974 ((_ is Empty!15582) (right!43173 (left!42843 (left!42843 ys!41)))))))

(assert (=> d!1643058 (= (list!19025 (right!43173 (left!42843 (left!42843 ys!41)))) e!3169781)))

(declare-fun b!5081652 () Bool)

(assert (=> b!5081652 (= e!3169781 e!3169782)))

(declare-fun c!872975 () Bool)

(assert (=> b!5081652 (= c!872975 ((_ is Leaf!25878) (right!43173 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081653 () Bool)

(assert (=> b!5081653 (= e!3169782 (list!19027 (xs!18954 (right!43173 (left!42843 (left!42843 ys!41))))))))

(assert (= (and d!1643058 c!872974) b!5081651))

(assert (= (and d!1643058 (not c!872974)) b!5081652))

(assert (= (and b!5081652 c!872975) b!5081653))

(assert (= (and b!5081652 (not c!872975)) b!5081654))

(declare-fun m!6135170 () Bool)

(assert (=> b!5081654 m!6135170))

(declare-fun m!6135172 () Bool)

(assert (=> b!5081654 m!6135172))

(assert (=> b!5081654 m!6135170))

(assert (=> b!5081654 m!6135172))

(declare-fun m!6135174 () Bool)

(assert (=> b!5081654 m!6135174))

(declare-fun m!6135176 () Bool)

(assert (=> b!5081653 m!6135176))

(assert (=> b!5081048 d!1643058))

(declare-fun b!5081656 () Bool)

(declare-fun e!3169783 () List!58576)

(assert (=> b!5081656 (= e!3169783 (Cons!58452 (h!64900 (list!19025 xs!286)) (++!12811 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(declare-fun d!1643060 () Bool)

(declare-fun e!3169784 () Bool)

(assert (=> d!1643060 e!3169784))

(declare-fun res!2163426 () Bool)

(assert (=> d!1643060 (=> (not res!2163426) (not e!3169784))))

(declare-fun lt!2091046 () List!58576)

(assert (=> d!1643060 (= res!2163426 (= (content!10428 lt!2091046) ((_ map or) (content!10428 (list!19025 xs!286)) (content!10428 (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(assert (=> d!1643060 (= lt!2091046 e!3169783)))

(declare-fun c!872976 () Bool)

(assert (=> d!1643060 (= c!872976 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1643060 (= (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) lt!2091046)))

(declare-fun b!5081655 () Bool)

(assert (=> b!5081655 (= e!3169783 (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081657 () Bool)

(declare-fun res!2163425 () Bool)

(assert (=> b!5081657 (=> (not res!2163425) (not e!3169784))))

(assert (=> b!5081657 (= res!2163425 (= (size!39113 lt!2091046) (+ (size!39113 (list!19025 xs!286)) (size!39113 (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(declare-fun b!5081658 () Bool)

(assert (=> b!5081658 (= e!3169784 (or (not (= (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))) Nil!58452)) (= lt!2091046 (list!19025 xs!286))))))

(assert (= (and d!1643060 c!872976) b!5081655))

(assert (= (and d!1643060 (not c!872976)) b!5081656))

(assert (= (and d!1643060 res!2163426) b!5081657))

(assert (= (and b!5081657 res!2163425) b!5081658))

(assert (=> b!5081656 m!6133908))

(declare-fun m!6135178 () Bool)

(assert (=> b!5081656 m!6135178))

(declare-fun m!6135180 () Bool)

(assert (=> d!1643060 m!6135180))

(assert (=> d!1643060 m!6132962))

(assert (=> d!1643060 m!6133318))

(assert (=> d!1643060 m!6133908))

(declare-fun m!6135182 () Bool)

(assert (=> d!1643060 m!6135182))

(declare-fun m!6135184 () Bool)

(assert (=> b!5081657 m!6135184))

(assert (=> b!5081657 m!6132962))

(assert (=> b!5081657 m!6133330))

(assert (=> b!5081657 m!6133908))

(declare-fun m!6135186 () Bool)

(assert (=> b!5081657 m!6135186))

(assert (=> b!5081048 d!1643060))

(assert (=> b!5081048 d!1642880))

(declare-fun d!1643062 () Bool)

(declare-fun e!3169785 () Bool)

(assert (=> d!1643062 e!3169785))

(declare-fun c!872977 () Bool)

(assert (=> d!1643062 (= c!872977 ((_ is Nil!58452) (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(assert (=> d!1643062 (= (appendAssoc!312 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))) true)))

(declare-fun bm!354257 () Bool)

(declare-fun call!354264 () List!58576)

(assert (=> bm!354257 (= call!354264 (++!12811 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(declare-fun bm!354258 () Bool)

(declare-fun call!354263 () List!58576)

(declare-fun call!354265 () List!58576)

(assert (=> bm!354258 (= call!354263 (++!12811 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) call!354265))))

(declare-fun bm!354259 () Bool)

(assert (=> bm!354259 (= call!354265 (++!12811 (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081659 () Bool)

(declare-fun call!354262 () List!58576)

(assert (=> b!5081659 (= e!3169785 (= call!354262 call!354263))))

(declare-fun bm!354260 () Bool)

(assert (=> bm!354260 (= call!354262 (++!12811 call!354264 (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081660 () Bool)

(assert (=> b!5081660 (= e!3169785 (= call!354262 call!354263))))

(declare-fun lt!2091047 () Bool)

(assert (=> b!5081660 (= lt!2091047 (appendAssoc!312 (t!371393 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))

(assert (= (and d!1643062 c!872977) b!5081659))

(assert (= (and d!1643062 (not c!872977)) b!5081660))

(assert (= (or b!5081659 b!5081660) bm!354257))

(assert (= (or b!5081659 b!5081660) bm!354259))

(assert (= (or b!5081659 b!5081660) bm!354258))

(assert (= (or b!5081659 b!5081660) bm!354260))

(assert (=> bm!354259 m!6133902))

(assert (=> bm!354259 m!6133456))

(declare-fun m!6135188 () Bool)

(assert (=> bm!354259 m!6135188))

(assert (=> bm!354258 m!6133904))

(declare-fun m!6135190 () Bool)

(assert (=> bm!354258 m!6135190))

(assert (=> bm!354260 m!6133456))

(declare-fun m!6135192 () Bool)

(assert (=> bm!354260 m!6135192))

(assert (=> bm!354257 m!6133904))

(assert (=> bm!354257 m!6133902))

(declare-fun m!6135194 () Bool)

(assert (=> bm!354257 m!6135194))

(assert (=> b!5081660 m!6133902))

(assert (=> b!5081660 m!6133456))

(declare-fun m!6135196 () Bool)

(assert (=> b!5081660 m!6135196))

(assert (=> b!5081048 d!1643062))

(declare-fun d!1643064 () Bool)

(assert (=> d!1643064 (= (list!19027 (xs!18954 (right!43173 lt!2090875))) (innerList!15670 (xs!18954 (right!43173 lt!2090875))))))

(assert (=> b!5081086 d!1643064))

(declare-fun d!1643066 () Bool)

(declare-fun lt!2091048 () Bool)

(assert (=> d!1643066 (= lt!2091048 (isEmpty!31669 (list!19025 (left!42843 lt!2090909))))))

(assert (=> d!1643066 (= lt!2091048 (= (size!39112 (left!42843 lt!2090909)) 0))))

(assert (=> d!1643066 (= (isEmpty!31667 (left!42843 lt!2090909)) lt!2091048)))

(declare-fun bs!1190672 () Bool)

(assert (= bs!1190672 d!1643066))

(assert (=> bs!1190672 m!6133436))

(assert (=> bs!1190672 m!6133436))

(declare-fun m!6135198 () Bool)

(assert (=> bs!1190672 m!6135198))

(declare-fun m!6135200 () Bool)

(assert (=> bs!1190672 m!6135200))

(assert (=> b!5081036 d!1643066))

(declare-fun d!1643068 () Bool)

(declare-fun c!872978 () Bool)

(assert (=> d!1643068 (= c!872978 ((_ is Node!15582) (left!42843 (left!42843 (left!42843 ys!41)))))))

(declare-fun e!3169786 () Bool)

(assert (=> d!1643068 (= (inv!77654 (left!42843 (left!42843 (left!42843 ys!41)))) e!3169786)))

(declare-fun b!5081661 () Bool)

(assert (=> b!5081661 (= e!3169786 (inv!77656 (left!42843 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081662 () Bool)

(declare-fun e!3169787 () Bool)

(assert (=> b!5081662 (= e!3169786 e!3169787)))

(declare-fun res!2163427 () Bool)

(assert (=> b!5081662 (= res!2163427 (not ((_ is Leaf!25878) (left!42843 (left!42843 (left!42843 ys!41))))))))

(assert (=> b!5081662 (=> res!2163427 e!3169787)))

(declare-fun b!5081663 () Bool)

(assert (=> b!5081663 (= e!3169787 (inv!77657 (left!42843 (left!42843 (left!42843 ys!41)))))))

(assert (= (and d!1643068 c!872978) b!5081661))

(assert (= (and d!1643068 (not c!872978)) b!5081662))

(assert (= (and b!5081662 (not res!2163427)) b!5081663))

(declare-fun m!6135202 () Bool)

(assert (=> b!5081661 m!6135202))

(declare-fun m!6135204 () Bool)

(assert (=> b!5081663 m!6135204))

(assert (=> b!5081252 d!1643068))

(declare-fun d!1643070 () Bool)

(declare-fun c!872979 () Bool)

(assert (=> d!1643070 (= c!872979 ((_ is Node!15582) (right!43173 (left!42843 (left!42843 ys!41)))))))

(declare-fun e!3169788 () Bool)

(assert (=> d!1643070 (= (inv!77654 (right!43173 (left!42843 (left!42843 ys!41)))) e!3169788)))

(declare-fun b!5081664 () Bool)

(assert (=> b!5081664 (= e!3169788 (inv!77656 (right!43173 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081665 () Bool)

(declare-fun e!3169789 () Bool)

(assert (=> b!5081665 (= e!3169788 e!3169789)))

(declare-fun res!2163428 () Bool)

(assert (=> b!5081665 (= res!2163428 (not ((_ is Leaf!25878) (right!43173 (left!42843 (left!42843 ys!41))))))))

(assert (=> b!5081665 (=> res!2163428 e!3169789)))

(declare-fun b!5081666 () Bool)

(assert (=> b!5081666 (= e!3169789 (inv!77657 (right!43173 (left!42843 (left!42843 ys!41)))))))

(assert (= (and d!1643070 c!872979) b!5081664))

(assert (= (and d!1643070 (not c!872979)) b!5081665))

(assert (= (and b!5081665 (not res!2163428)) b!5081666))

(declare-fun m!6135206 () Bool)

(assert (=> b!5081664 m!6135206))

(declare-fun m!6135208 () Bool)

(assert (=> b!5081666 m!6135208))

(assert (=> b!5081252 d!1643070))

(declare-fun d!1643072 () Bool)

(declare-fun lt!2091049 () Int)

(assert (=> d!1643072 (>= lt!2091049 0)))

(declare-fun e!3169790 () Int)

(assert (=> d!1643072 (= lt!2091049 e!3169790)))

(declare-fun c!872980 () Bool)

(assert (=> d!1643072 (= c!872980 ((_ is Nil!58452) lt!2090980))))

(assert (=> d!1643072 (= (size!39113 lt!2090980) lt!2091049)))

(declare-fun b!5081667 () Bool)

(assert (=> b!5081667 (= e!3169790 0)))

(declare-fun b!5081668 () Bool)

(assert (=> b!5081668 (= e!3169790 (+ 1 (size!39113 (t!371393 lt!2090980))))))

(assert (= (and d!1643072 c!872980) b!5081667))

(assert (= (and d!1643072 (not c!872980)) b!5081668))

(declare-fun m!6135210 () Bool)

(assert (=> b!5081668 m!6135210))

(assert (=> b!5081143 d!1643072))

(assert (=> b!5081143 d!1643022))

(assert (=> b!5081143 d!1642586))

(declare-fun b!5081669 () Bool)

(declare-fun e!3169791 () Conc!15582)

(assert (=> b!5081669 (= e!3169791 (ite c!872761 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872763 (ite c!872768 lt!2090929 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872766 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (ite c!872767 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))

(declare-fun d!1643074 () Bool)

(declare-fun lt!2091050 () Conc!15582)

(assert (=> d!1643074 (= (list!19025 lt!2091050) (++!12811 (list!19025 (ite c!872761 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872763 (ite c!872768 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (ite c!872766 call!354173 (ite c!872767 lt!2090927 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))) (list!19025 (ite c!872761 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872763 (ite c!872768 lt!2090929 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872766 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (ite c!872767 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))))

(assert (=> d!1643074 (= lt!2091050 e!3169791)))

(declare-fun c!872981 () Bool)

(assert (=> d!1643074 (= c!872981 (= (ite c!872761 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872763 (ite c!872768 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (ite c!872766 call!354173 (ite c!872767 lt!2090927 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))) Empty!15582))))

(assert (=> d!1643074 (= (<>!402 (ite c!872761 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872763 (ite c!872768 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (ite c!872766 call!354173 (ite c!872767 lt!2090927 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))) (ite c!872761 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872763 (ite c!872768 lt!2090929 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872766 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (ite c!872767 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))) lt!2091050)))

(declare-fun b!5081670 () Bool)

(declare-fun e!3169792 () Conc!15582)

(assert (=> b!5081670 (= e!3169791 e!3169792)))

(declare-fun c!872982 () Bool)

(assert (=> b!5081670 (= c!872982 (= (ite c!872761 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872763 (ite c!872768 lt!2090929 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872766 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (ite c!872767 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))) Empty!15582))))

(declare-fun b!5081672 () Bool)

(assert (=> b!5081672 (= e!3169792 (Node!15582 (ite c!872761 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872763 (ite c!872768 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (ite c!872766 call!354173 (ite c!872767 lt!2090927 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))) (ite c!872761 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872763 (ite c!872768 lt!2090929 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872766 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (ite c!872767 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))) (+ (size!39112 (ite c!872761 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872763 (ite c!872768 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (ite c!872766 call!354173 (ite c!872767 lt!2090927 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))) (size!39112 (ite c!872761 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872763 (ite c!872768 lt!2090929 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872766 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (ite c!872767 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))) (+ (max!0 (height!2159 (ite c!872761 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872763 (ite c!872768 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (ite c!872766 call!354173 (ite c!872767 lt!2090927 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))) (height!2159 (ite c!872761 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))) (ite c!872763 (ite c!872768 lt!2090929 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))) (ite c!872766 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (ite c!872767 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))) 1)))))

(declare-fun b!5081671 () Bool)

(assert (=> b!5081671 (= e!3169792 (ite c!872761 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (ite c!872763 (ite c!872768 (left!42843 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (ite c!872766 call!354173 (ite c!872767 lt!2090927 (right!43173 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))))

(assert (= (and d!1643074 c!872981) b!5081669))

(assert (= (and d!1643074 (not c!872981)) b!5081670))

(assert (= (and b!5081670 c!872982) b!5081671))

(assert (= (and b!5081670 (not c!872982)) b!5081672))

(declare-fun m!6135212 () Bool)

(assert (=> d!1643074 m!6135212))

(declare-fun m!6135214 () Bool)

(assert (=> d!1643074 m!6135214))

(declare-fun m!6135216 () Bool)

(assert (=> d!1643074 m!6135216))

(assert (=> d!1643074 m!6135214))

(assert (=> d!1643074 m!6135216))

(declare-fun m!6135218 () Bool)

(assert (=> d!1643074 m!6135218))

(declare-fun m!6135220 () Bool)

(assert (=> b!5081672 m!6135220))

(declare-fun m!6135222 () Bool)

(assert (=> b!5081672 m!6135222))

(assert (=> b!5081672 m!6135222))

(declare-fun m!6135224 () Bool)

(assert (=> b!5081672 m!6135224))

(declare-fun m!6135226 () Bool)

(assert (=> b!5081672 m!6135226))

(assert (=> b!5081672 m!6135224))

(declare-fun m!6135228 () Bool)

(assert (=> b!5081672 m!6135228))

(assert (=> bm!354153 d!1643074))

(declare-fun d!1643076 () Bool)

(assert (=> d!1643076 (= (isEmpty!31669 (list!19025 (left!42843 ys!41))) ((_ is Nil!58452) (list!19025 (left!42843 ys!41))))))

(assert (=> d!1642702 d!1643076))

(assert (=> d!1642702 d!1642628))

(assert (=> d!1642702 d!1642906))

(declare-fun d!1643078 () Bool)

(declare-fun c!872983 () Bool)

(assert (=> d!1643078 (= c!872983 ((_ is Nil!58452) (t!371393 lt!2090919)))))

(declare-fun e!3169793 () (InoxSet T!105244))

(assert (=> d!1643078 (= (content!10428 (t!371393 lt!2090919)) e!3169793)))

(declare-fun b!5081673 () Bool)

(assert (=> b!5081673 (= e!3169793 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081674 () Bool)

(assert (=> b!5081674 (= e!3169793 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (t!371393 lt!2090919)) true) (content!10428 (t!371393 (t!371393 lt!2090919)))))))

(assert (= (and d!1643078 c!872983) b!5081673))

(assert (= (and d!1643078 (not c!872983)) b!5081674))

(declare-fun m!6135230 () Bool)

(assert (=> b!5081674 m!6135230))

(declare-fun m!6135232 () Bool)

(assert (=> b!5081674 m!6135232))

(assert (=> b!5080945 d!1643078))

(declare-fun d!1643080 () Bool)

(assert (=> d!1643080 (= (max!0 (height!2159 (left!42843 (right!43173 ys!41))) (height!2159 (right!43173 (right!43173 ys!41)))) (ite (< (height!2159 (left!42843 (right!43173 ys!41))) (height!2159 (right!43173 (right!43173 ys!41)))) (height!2159 (right!43173 (right!43173 ys!41))) (height!2159 (left!42843 (right!43173 ys!41)))))))

(assert (=> b!5081089 d!1643080))

(declare-fun d!1643082 () Bool)

(assert (=> d!1643082 (= (height!2159 (left!42843 (right!43173 ys!41))) (ite ((_ is Empty!15582) (left!42843 (right!43173 ys!41))) 0 (ite ((_ is Leaf!25878) (left!42843 (right!43173 ys!41))) 1 (cheight!15793 (left!42843 (right!43173 ys!41))))))))

(assert (=> b!5081089 d!1643082))

(declare-fun d!1643084 () Bool)

(assert (=> d!1643084 (= (height!2159 (right!43173 (right!43173 ys!41))) (ite ((_ is Empty!15582) (right!43173 (right!43173 ys!41))) 0 (ite ((_ is Leaf!25878) (right!43173 (right!43173 ys!41))) 1 (cheight!15793 (right!43173 (right!43173 ys!41))))))))

(assert (=> b!5081089 d!1643084))

(declare-fun d!1643086 () Bool)

(declare-fun lt!2091051 () Int)

(assert (=> d!1643086 (>= lt!2091051 0)))

(declare-fun e!3169794 () Int)

(assert (=> d!1643086 (= lt!2091051 e!3169794)))

(declare-fun c!872984 () Bool)

(assert (=> d!1643086 (= c!872984 ((_ is Nil!58452) (innerList!15670 (xs!18954 (left!42843 xs!286)))))))

(assert (=> d!1643086 (= (size!39113 (innerList!15670 (xs!18954 (left!42843 xs!286)))) lt!2091051)))

(declare-fun b!5081675 () Bool)

(assert (=> b!5081675 (= e!3169794 0)))

(declare-fun b!5081676 () Bool)

(assert (=> b!5081676 (= e!3169794 (+ 1 (size!39113 (t!371393 (innerList!15670 (xs!18954 (left!42843 xs!286)))))))))

(assert (= (and d!1643086 c!872984) b!5081675))

(assert (= (and d!1643086 (not c!872984)) b!5081676))

(declare-fun m!6135234 () Bool)

(assert (=> b!5081676 m!6135234))

(assert (=> d!1642752 d!1643086))

(declare-fun b!5081678 () Bool)

(declare-fun e!3169795 () List!58576)

(assert (=> b!5081678 (= e!3169795 (Cons!58452 (h!64900 (list!19025 (left!42843 (left!42843 (left!42843 ys!41))))) (++!12811 (t!371393 (list!19025 (left!42843 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41)))))))))

(declare-fun d!1643088 () Bool)

(declare-fun e!3169796 () Bool)

(assert (=> d!1643088 e!3169796))

(declare-fun res!2163430 () Bool)

(assert (=> d!1643088 (=> (not res!2163430) (not e!3169796))))

(declare-fun lt!2091052 () List!58576)

(assert (=> d!1643088 (= res!2163430 (= (content!10428 lt!2091052) ((_ map or) (content!10428 (list!19025 (left!42843 (left!42843 (left!42843 ys!41))))) (content!10428 (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))))

(assert (=> d!1643088 (= lt!2091052 e!3169795)))

(declare-fun c!872985 () Bool)

(assert (=> d!1643088 (= c!872985 ((_ is Nil!58452) (list!19025 (left!42843 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1643088 (= (++!12811 (list!19025 (left!42843 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))) lt!2091052)))

(declare-fun b!5081677 () Bool)

(assert (=> b!5081677 (= e!3169795 (list!19025 (right!43173 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081679 () Bool)

(declare-fun res!2163429 () Bool)

(assert (=> b!5081679 (=> (not res!2163429) (not e!3169796))))

(assert (=> b!5081679 (= res!2163429 (= (size!39113 lt!2091052) (+ (size!39113 (list!19025 (left!42843 (left!42843 (left!42843 ys!41))))) (size!39113 (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))))

(declare-fun b!5081680 () Bool)

(assert (=> b!5081680 (= e!3169796 (or (not (= (list!19025 (right!43173 (left!42843 (left!42843 ys!41)))) Nil!58452)) (= lt!2091052 (list!19025 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(assert (= (and d!1643088 c!872985) b!5081677))

(assert (= (and d!1643088 (not c!872985)) b!5081678))

(assert (= (and d!1643088 res!2163430) b!5081679))

(assert (= (and b!5081679 res!2163429) b!5081680))

(assert (=> b!5081678 m!6133456))

(declare-fun m!6135236 () Bool)

(assert (=> b!5081678 m!6135236))

(declare-fun m!6135238 () Bool)

(assert (=> d!1643088 m!6135238))

(assert (=> d!1643088 m!6133454))

(declare-fun m!6135240 () Bool)

(assert (=> d!1643088 m!6135240))

(assert (=> d!1643088 m!6133456))

(declare-fun m!6135242 () Bool)

(assert (=> d!1643088 m!6135242))

(declare-fun m!6135244 () Bool)

(assert (=> b!5081679 m!6135244))

(assert (=> b!5081679 m!6133454))

(declare-fun m!6135246 () Bool)

(assert (=> b!5081679 m!6135246))

(assert (=> b!5081679 m!6133456))

(declare-fun m!6135248 () Bool)

(assert (=> b!5081679 m!6135248))

(assert (=> b!5080818 d!1643088))

(declare-fun b!5081681 () Bool)

(declare-fun e!3169797 () List!58576)

(assert (=> b!5081681 (= e!3169797 Nil!58452)))

(declare-fun b!5081684 () Bool)

(declare-fun e!3169798 () List!58576)

(assert (=> b!5081684 (= e!3169798 (++!12811 (list!19025 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(declare-fun d!1643090 () Bool)

(declare-fun c!872986 () Bool)

(assert (=> d!1643090 (= c!872986 ((_ is Empty!15582) (left!42843 (left!42843 (left!42843 ys!41)))))))

(assert (=> d!1643090 (= (list!19025 (left!42843 (left!42843 (left!42843 ys!41)))) e!3169797)))

(declare-fun b!5081682 () Bool)

(assert (=> b!5081682 (= e!3169797 e!3169798)))

(declare-fun c!872987 () Bool)

(assert (=> b!5081682 (= c!872987 ((_ is Leaf!25878) (left!42843 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081683 () Bool)

(assert (=> b!5081683 (= e!3169798 (list!19027 (xs!18954 (left!42843 (left!42843 (left!42843 ys!41))))))))

(assert (= (and d!1643090 c!872986) b!5081681))

(assert (= (and d!1643090 (not c!872986)) b!5081682))

(assert (= (and b!5081682 c!872987) b!5081683))

(assert (= (and b!5081682 (not c!872987)) b!5081684))

(assert (=> b!5081684 m!6133908))

(assert (=> b!5081684 m!6133902))

(assert (=> b!5081684 m!6133908))

(assert (=> b!5081684 m!6133902))

(assert (=> b!5081684 m!6134632))

(declare-fun m!6135250 () Bool)

(assert (=> b!5081683 m!6135250))

(assert (=> b!5080818 d!1643090))

(assert (=> b!5080818 d!1643058))

(declare-fun b!5081686 () Bool)

(declare-fun e!3169799 () List!58576)

(assert (=> b!5081686 (= e!3169799 (Cons!58452 (h!64900 call!354184) (++!12811 (t!371393 call!354184) (list!19025 ys!41))))))

(declare-fun d!1643092 () Bool)

(declare-fun e!3169800 () Bool)

(assert (=> d!1643092 e!3169800))

(declare-fun res!2163432 () Bool)

(assert (=> d!1643092 (=> (not res!2163432) (not e!3169800))))

(declare-fun lt!2091053 () List!58576)

(assert (=> d!1643092 (= res!2163432 (= (content!10428 lt!2091053) ((_ map or) (content!10428 call!354184) (content!10428 (list!19025 ys!41)))))))

(assert (=> d!1643092 (= lt!2091053 e!3169799)))

(declare-fun c!872988 () Bool)

(assert (=> d!1643092 (= c!872988 ((_ is Nil!58452) call!354184))))

(assert (=> d!1643092 (= (++!12811 call!354184 (list!19025 ys!41)) lt!2091053)))

(declare-fun b!5081685 () Bool)

(assert (=> b!5081685 (= e!3169799 (list!19025 ys!41))))

(declare-fun b!5081687 () Bool)

(declare-fun res!2163431 () Bool)

(assert (=> b!5081687 (=> (not res!2163431) (not e!3169800))))

(assert (=> b!5081687 (= res!2163431 (= (size!39113 lt!2091053) (+ (size!39113 call!354184) (size!39113 (list!19025 ys!41)))))))

(declare-fun b!5081688 () Bool)

(assert (=> b!5081688 (= e!3169800 (or (not (= (list!19025 ys!41) Nil!58452)) (= lt!2091053 call!354184)))))

(assert (= (and d!1643092 c!872988) b!5081685))

(assert (= (and d!1643092 (not c!872988)) b!5081686))

(assert (= (and d!1643092 res!2163432) b!5081687))

(assert (= (and b!5081687 res!2163431) b!5081688))

(assert (=> b!5081686 m!6132964))

(declare-fun m!6135252 () Bool)

(assert (=> b!5081686 m!6135252))

(declare-fun m!6135254 () Bool)

(assert (=> d!1643092 m!6135254))

(declare-fun m!6135256 () Bool)

(assert (=> d!1643092 m!6135256))

(assert (=> d!1643092 m!6132964))

(assert (=> d!1643092 m!6133322))

(declare-fun m!6135258 () Bool)

(assert (=> b!5081687 m!6135258))

(declare-fun m!6135260 () Bool)

(assert (=> b!5081687 m!6135260))

(assert (=> b!5081687 m!6132964))

(assert (=> b!5081687 m!6133332))

(assert (=> bm!354180 d!1643092))

(declare-fun d!1643094 () Bool)

(declare-fun c!872989 () Bool)

(assert (=> d!1643094 (= c!872989 ((_ is Node!15582) (left!42843 (right!43173 (left!42843 xs!286)))))))

(declare-fun e!3169801 () Bool)

(assert (=> d!1643094 (= (inv!77654 (left!42843 (right!43173 (left!42843 xs!286)))) e!3169801)))

(declare-fun b!5081689 () Bool)

(assert (=> b!5081689 (= e!3169801 (inv!77656 (left!42843 (right!43173 (left!42843 xs!286)))))))

(declare-fun b!5081690 () Bool)

(declare-fun e!3169802 () Bool)

(assert (=> b!5081690 (= e!3169801 e!3169802)))

(declare-fun res!2163433 () Bool)

(assert (=> b!5081690 (= res!2163433 (not ((_ is Leaf!25878) (left!42843 (right!43173 (left!42843 xs!286))))))))

(assert (=> b!5081690 (=> res!2163433 e!3169802)))

(declare-fun b!5081691 () Bool)

(assert (=> b!5081691 (= e!3169802 (inv!77657 (left!42843 (right!43173 (left!42843 xs!286)))))))

(assert (= (and d!1643094 c!872989) b!5081689))

(assert (= (and d!1643094 (not c!872989)) b!5081690))

(assert (= (and b!5081690 (not res!2163433)) b!5081691))

(declare-fun m!6135262 () Bool)

(assert (=> b!5081689 m!6135262))

(declare-fun m!6135264 () Bool)

(assert (=> b!5081691 m!6135264))

(assert (=> b!5081233 d!1643094))

(declare-fun d!1643096 () Bool)

(declare-fun c!872990 () Bool)

(assert (=> d!1643096 (= c!872990 ((_ is Node!15582) (right!43173 (right!43173 (left!42843 xs!286)))))))

(declare-fun e!3169803 () Bool)

(assert (=> d!1643096 (= (inv!77654 (right!43173 (right!43173 (left!42843 xs!286)))) e!3169803)))

(declare-fun b!5081692 () Bool)

(assert (=> b!5081692 (= e!3169803 (inv!77656 (right!43173 (right!43173 (left!42843 xs!286)))))))

(declare-fun b!5081693 () Bool)

(declare-fun e!3169804 () Bool)

(assert (=> b!5081693 (= e!3169803 e!3169804)))

(declare-fun res!2163434 () Bool)

(assert (=> b!5081693 (= res!2163434 (not ((_ is Leaf!25878) (right!43173 (right!43173 (left!42843 xs!286))))))))

(assert (=> b!5081693 (=> res!2163434 e!3169804)))

(declare-fun b!5081694 () Bool)

(assert (=> b!5081694 (= e!3169804 (inv!77657 (right!43173 (right!43173 (left!42843 xs!286)))))))

(assert (= (and d!1643096 c!872990) b!5081692))

(assert (= (and d!1643096 (not c!872990)) b!5081693))

(assert (= (and b!5081693 (not res!2163434)) b!5081694))

(declare-fun m!6135266 () Bool)

(assert (=> b!5081692 m!6135266))

(declare-fun m!6135268 () Bool)

(assert (=> b!5081694 m!6135268))

(assert (=> b!5081233 d!1643096))

(declare-fun d!1643098 () Bool)

(assert (=> d!1643098 (= (max!0 (height!2159 (left!42843 xs!286)) (height!2159 (right!43173 xs!286))) (ite (< (height!2159 (left!42843 xs!286)) (height!2159 (right!43173 xs!286))) (height!2159 (right!43173 xs!286)) (height!2159 (left!42843 xs!286))))))

(assert (=> b!5081162 d!1643098))

(assert (=> b!5081162 d!1642610))

(assert (=> b!5081162 d!1642612))

(assert (=> bm!354137 d!1642606))

(declare-fun d!1643100 () Bool)

(assert (=> d!1643100 (= (height!2159 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (ite ((_ is Empty!15582) (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) 0 (ite ((_ is Leaf!25878) (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) 1 (cheight!15793 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(assert (=> b!5080828 d!1643100))

(declare-fun d!1643102 () Bool)

(assert (=> d!1643102 (= (height!2159 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (ite ((_ is Empty!15582) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) 0 (ite ((_ is Leaf!25878) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) 1 (cheight!15793 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))))

(assert (=> b!5080828 d!1643102))

(declare-fun b!5081696 () Bool)

(declare-fun e!3169805 () List!58576)

(assert (=> b!5081696 (= e!3169805 (Cons!58452 (h!64900 (list!19025 (left!42843 (left!42843 ys!41)))) (++!12811 (t!371393 (list!19025 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 ys!41))))))))

(declare-fun d!1643104 () Bool)

(declare-fun e!3169806 () Bool)

(assert (=> d!1643104 e!3169806))

(declare-fun res!2163436 () Bool)

(assert (=> d!1643104 (=> (not res!2163436) (not e!3169806))))

(declare-fun lt!2091054 () List!58576)

(assert (=> d!1643104 (= res!2163436 (= (content!10428 lt!2091054) ((_ map or) (content!10428 (list!19025 (left!42843 (left!42843 ys!41)))) (content!10428 (list!19025 (right!43173 (left!42843 ys!41)))))))))

(assert (=> d!1643104 (= lt!2091054 e!3169805)))

(declare-fun c!872991 () Bool)

(assert (=> d!1643104 (= c!872991 ((_ is Nil!58452) (list!19025 (left!42843 (left!42843 ys!41)))))))

(assert (=> d!1643104 (= (++!12811 (list!19025 (left!42843 (left!42843 ys!41))) (list!19025 (right!43173 (left!42843 ys!41)))) lt!2091054)))

(declare-fun b!5081695 () Bool)

(assert (=> b!5081695 (= e!3169805 (list!19025 (right!43173 (left!42843 ys!41))))))

(declare-fun b!5081697 () Bool)

(declare-fun res!2163435 () Bool)

(assert (=> b!5081697 (=> (not res!2163435) (not e!3169806))))

(assert (=> b!5081697 (= res!2163435 (= (size!39113 lt!2091054) (+ (size!39113 (list!19025 (left!42843 (left!42843 ys!41)))) (size!39113 (list!19025 (right!43173 (left!42843 ys!41)))))))))

(declare-fun b!5081698 () Bool)

(assert (=> b!5081698 (= e!3169806 (or (not (= (list!19025 (right!43173 (left!42843 ys!41))) Nil!58452)) (= lt!2091054 (list!19025 (left!42843 (left!42843 ys!41))))))))

(assert (= (and d!1643104 c!872991) b!5081695))

(assert (= (and d!1643104 (not c!872991)) b!5081696))

(assert (= (and d!1643104 res!2163436) b!5081697))

(assert (= (and b!5081697 res!2163435) b!5081698))

(assert (=> b!5081696 m!6133018))

(declare-fun m!6135270 () Bool)

(assert (=> b!5081696 m!6135270))

(declare-fun m!6135272 () Bool)

(assert (=> d!1643104 m!6135272))

(assert (=> d!1643104 m!6133024))

(assert (=> d!1643104 m!6133448))

(assert (=> d!1643104 m!6133018))

(assert (=> d!1643104 m!6133780))

(declare-fun m!6135274 () Bool)

(assert (=> b!5081697 m!6135274))

(assert (=> b!5081697 m!6133024))

(assert (=> b!5081697 m!6133452))

(assert (=> b!5081697 m!6133018))

(assert (=> b!5081697 m!6133786))

(assert (=> bm!354183 d!1643104))

(declare-fun d!1643106 () Bool)

(declare-fun res!2163441 () Bool)

(declare-fun e!3169807 () Bool)

(assert (=> d!1643106 (=> res!2163441 e!3169807)))

(assert (=> d!1643106 (= res!2163441 (not ((_ is Node!15582) (right!43173 (left!42843 xs!286)))))))

(assert (=> d!1643106 (= (isBalanced!4444 (right!43173 (left!42843 xs!286))) e!3169807)))

(declare-fun b!5081699 () Bool)

(declare-fun res!2163437 () Bool)

(declare-fun e!3169808 () Bool)

(assert (=> b!5081699 (=> (not res!2163437) (not e!3169808))))

(assert (=> b!5081699 (= res!2163437 (<= (- (height!2159 (left!42843 (right!43173 (left!42843 xs!286)))) (height!2159 (right!43173 (right!43173 (left!42843 xs!286))))) 1))))

(declare-fun b!5081700 () Bool)

(declare-fun res!2163438 () Bool)

(assert (=> b!5081700 (=> (not res!2163438) (not e!3169808))))

(assert (=> b!5081700 (= res!2163438 (isBalanced!4444 (right!43173 (right!43173 (left!42843 xs!286)))))))

(declare-fun b!5081701 () Bool)

(declare-fun res!2163440 () Bool)

(assert (=> b!5081701 (=> (not res!2163440) (not e!3169808))))

(assert (=> b!5081701 (= res!2163440 (isBalanced!4444 (left!42843 (right!43173 (left!42843 xs!286)))))))

(declare-fun b!5081702 () Bool)

(assert (=> b!5081702 (= e!3169807 e!3169808)))

(declare-fun res!2163439 () Bool)

(assert (=> b!5081702 (=> (not res!2163439) (not e!3169808))))

(assert (=> b!5081702 (= res!2163439 (<= (- 1) (- (height!2159 (left!42843 (right!43173 (left!42843 xs!286)))) (height!2159 (right!43173 (right!43173 (left!42843 xs!286)))))))))

(declare-fun b!5081703 () Bool)

(declare-fun res!2163442 () Bool)

(assert (=> b!5081703 (=> (not res!2163442) (not e!3169808))))

(assert (=> b!5081703 (= res!2163442 (not (isEmpty!31667 (left!42843 (right!43173 (left!42843 xs!286))))))))

(declare-fun b!5081704 () Bool)

(assert (=> b!5081704 (= e!3169808 (not (isEmpty!31667 (right!43173 (right!43173 (left!42843 xs!286))))))))

(assert (= (and d!1643106 (not res!2163441)) b!5081702))

(assert (= (and b!5081702 res!2163439) b!5081699))

(assert (= (and b!5081699 res!2163437) b!5081701))

(assert (= (and b!5081701 res!2163440) b!5081700))

(assert (= (and b!5081700 res!2163438) b!5081703))

(assert (= (and b!5081703 res!2163442) b!5081704))

(declare-fun m!6135276 () Bool)

(assert (=> b!5081700 m!6135276))

(assert (=> b!5081699 m!6134928))

(assert (=> b!5081699 m!6134930))

(declare-fun m!6135278 () Bool)

(assert (=> b!5081704 m!6135278))

(assert (=> b!5081702 m!6134928))

(assert (=> b!5081702 m!6134930))

(declare-fun m!6135280 () Bool)

(assert (=> b!5081703 m!6135280))

(declare-fun m!6135282 () Bool)

(assert (=> b!5081701 m!6135282))

(assert (=> b!5081187 d!1643106))

(declare-fun b!5081706 () Bool)

(declare-fun e!3169809 () List!58576)

(assert (=> b!5081706 (= e!3169809 (Cons!58452 (h!64900 (list!19025 (left!42843 (right!43173 xs!286)))) (++!12811 (t!371393 (list!19025 (left!42843 (right!43173 xs!286)))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)))))))

(declare-fun d!1643108 () Bool)

(declare-fun e!3169810 () Bool)

(assert (=> d!1643108 e!3169810))

(declare-fun res!2163444 () Bool)

(assert (=> d!1643108 (=> (not res!2163444) (not e!3169810))))

(declare-fun lt!2091055 () List!58576)

(assert (=> d!1643108 (= res!2163444 (= (content!10428 lt!2091055) ((_ map or) (content!10428 (list!19025 (left!42843 (right!43173 xs!286)))) (content!10428 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))))

(assert (=> d!1643108 (= lt!2091055 e!3169809)))

(declare-fun c!872992 () Bool)

(assert (=> d!1643108 (= c!872992 ((_ is Nil!58452) (list!19025 (left!42843 (right!43173 xs!286)))))))

(assert (=> d!1643108 (= (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))) lt!2091055)))

(declare-fun b!5081705 () Bool)

(assert (=> b!5081705 (= e!3169809 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)))))

(declare-fun b!5081707 () Bool)

(declare-fun res!2163443 () Bool)

(assert (=> b!5081707 (=> (not res!2163443) (not e!3169810))))

(assert (=> b!5081707 (= res!2163443 (= (size!39113 lt!2091055) (+ (size!39113 (list!19025 (left!42843 (right!43173 xs!286)))) (size!39113 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))))

(declare-fun b!5081708 () Bool)

(assert (=> b!5081708 (= e!3169810 (or (not (= (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)) Nil!58452)) (= lt!2091055 (list!19025 (left!42843 (right!43173 xs!286))))))))

(assert (= (and d!1643108 c!872992) b!5081705))

(assert (= (and d!1643108 (not c!872992)) b!5081706))

(assert (= (and d!1643108 res!2163444) b!5081707))

(assert (= (and b!5081707 res!2163443) b!5081708))

(assert (=> b!5081706 m!6133038))

(declare-fun m!6135284 () Bool)

(assert (=> b!5081706 m!6135284))

(declare-fun m!6135286 () Bool)

(assert (=> d!1643108 m!6135286))

(assert (=> d!1643108 m!6133036))

(assert (=> d!1643108 m!6134776))

(assert (=> d!1643108 m!6133038))

(declare-fun m!6135288 () Bool)

(assert (=> d!1643108 m!6135288))

(declare-fun m!6135290 () Bool)

(assert (=> b!5081707 m!6135290))

(assert (=> b!5081707 m!6133036))

(assert (=> b!5081707 m!6134780))

(assert (=> b!5081707 m!6133038))

(declare-fun m!6135292 () Bool)

(assert (=> b!5081707 m!6135292))

(assert (=> bm!354171 d!1643108))

(declare-fun b!5081710 () Bool)

(declare-fun e!3169811 () List!58576)

(assert (=> b!5081710 (= e!3169811 (Cons!58452 (h!64900 (list!19025 (left!42843 lt!2090884))) (++!12811 (t!371393 (list!19025 (left!42843 lt!2090884))) (list!19025 (right!43173 lt!2090884)))))))

(declare-fun d!1643110 () Bool)

(declare-fun e!3169812 () Bool)

(assert (=> d!1643110 e!3169812))

(declare-fun res!2163446 () Bool)

(assert (=> d!1643110 (=> (not res!2163446) (not e!3169812))))

(declare-fun lt!2091056 () List!58576)

(assert (=> d!1643110 (= res!2163446 (= (content!10428 lt!2091056) ((_ map or) (content!10428 (list!19025 (left!42843 lt!2090884))) (content!10428 (list!19025 (right!43173 lt!2090884))))))))

(assert (=> d!1643110 (= lt!2091056 e!3169811)))

(declare-fun c!872993 () Bool)

(assert (=> d!1643110 (= c!872993 ((_ is Nil!58452) (list!19025 (left!42843 lt!2090884))))))

(assert (=> d!1643110 (= (++!12811 (list!19025 (left!42843 lt!2090884)) (list!19025 (right!43173 lt!2090884))) lt!2091056)))

(declare-fun b!5081709 () Bool)

(assert (=> b!5081709 (= e!3169811 (list!19025 (right!43173 lt!2090884)))))

(declare-fun b!5081711 () Bool)

(declare-fun res!2163445 () Bool)

(assert (=> b!5081711 (=> (not res!2163445) (not e!3169812))))

(assert (=> b!5081711 (= res!2163445 (= (size!39113 lt!2091056) (+ (size!39113 (list!19025 (left!42843 lt!2090884))) (size!39113 (list!19025 (right!43173 lt!2090884))))))))

(declare-fun b!5081712 () Bool)

(assert (=> b!5081712 (= e!3169812 (or (not (= (list!19025 (right!43173 lt!2090884)) Nil!58452)) (= lt!2091056 (list!19025 (left!42843 lt!2090884)))))))

(assert (= (and d!1643110 c!872993) b!5081709))

(assert (= (and d!1643110 (not c!872993)) b!5081710))

(assert (= (and d!1643110 res!2163446) b!5081711))

(assert (= (and b!5081711 res!2163445) b!5081712))

(assert (=> b!5081710 m!6133994))

(declare-fun m!6135294 () Bool)

(assert (=> b!5081710 m!6135294))

(declare-fun m!6135296 () Bool)

(assert (=> d!1643110 m!6135296))

(assert (=> d!1643110 m!6133992))

(declare-fun m!6135298 () Bool)

(assert (=> d!1643110 m!6135298))

(assert (=> d!1643110 m!6133994))

(declare-fun m!6135300 () Bool)

(assert (=> d!1643110 m!6135300))

(declare-fun m!6135302 () Bool)

(assert (=> b!5081711 m!6135302))

(assert (=> b!5081711 m!6133992))

(declare-fun m!6135304 () Bool)

(assert (=> b!5081711 m!6135304))

(assert (=> b!5081711 m!6133994))

(declare-fun m!6135306 () Bool)

(assert (=> b!5081711 m!6135306))

(assert (=> b!5081106 d!1643110))

(declare-fun b!5081713 () Bool)

(declare-fun e!3169813 () List!58576)

(assert (=> b!5081713 (= e!3169813 Nil!58452)))

(declare-fun b!5081716 () Bool)

(declare-fun e!3169814 () List!58576)

(assert (=> b!5081716 (= e!3169814 (++!12811 (list!19025 (left!42843 (left!42843 lt!2090884))) (list!19025 (right!43173 (left!42843 lt!2090884)))))))

(declare-fun d!1643112 () Bool)

(declare-fun c!872994 () Bool)

(assert (=> d!1643112 (= c!872994 ((_ is Empty!15582) (left!42843 lt!2090884)))))

(assert (=> d!1643112 (= (list!19025 (left!42843 lt!2090884)) e!3169813)))

(declare-fun b!5081714 () Bool)

(assert (=> b!5081714 (= e!3169813 e!3169814)))

(declare-fun c!872995 () Bool)

(assert (=> b!5081714 (= c!872995 ((_ is Leaf!25878) (left!42843 lt!2090884)))))

(declare-fun b!5081715 () Bool)

(assert (=> b!5081715 (= e!3169814 (list!19027 (xs!18954 (left!42843 lt!2090884))))))

(assert (= (and d!1643112 c!872994) b!5081713))

(assert (= (and d!1643112 (not c!872994)) b!5081714))

(assert (= (and b!5081714 c!872995) b!5081715))

(assert (= (and b!5081714 (not c!872995)) b!5081716))

(declare-fun m!6135308 () Bool)

(assert (=> b!5081716 m!6135308))

(declare-fun m!6135310 () Bool)

(assert (=> b!5081716 m!6135310))

(assert (=> b!5081716 m!6135308))

(assert (=> b!5081716 m!6135310))

(declare-fun m!6135312 () Bool)

(assert (=> b!5081716 m!6135312))

(declare-fun m!6135314 () Bool)

(assert (=> b!5081715 m!6135314))

(assert (=> b!5081106 d!1643112))

(declare-fun b!5081717 () Bool)

(declare-fun e!3169815 () List!58576)

(assert (=> b!5081717 (= e!3169815 Nil!58452)))

(declare-fun b!5081720 () Bool)

(declare-fun e!3169816 () List!58576)

(assert (=> b!5081720 (= e!3169816 (++!12811 (list!19025 (left!42843 (right!43173 lt!2090884))) (list!19025 (right!43173 (right!43173 lt!2090884)))))))

(declare-fun d!1643114 () Bool)

(declare-fun c!872996 () Bool)

(assert (=> d!1643114 (= c!872996 ((_ is Empty!15582) (right!43173 lt!2090884)))))

(assert (=> d!1643114 (= (list!19025 (right!43173 lt!2090884)) e!3169815)))

(declare-fun b!5081718 () Bool)

(assert (=> b!5081718 (= e!3169815 e!3169816)))

(declare-fun c!872997 () Bool)

(assert (=> b!5081718 (= c!872997 ((_ is Leaf!25878) (right!43173 lt!2090884)))))

(declare-fun b!5081719 () Bool)

(assert (=> b!5081719 (= e!3169816 (list!19027 (xs!18954 (right!43173 lt!2090884))))))

(assert (= (and d!1643114 c!872996) b!5081717))

(assert (= (and d!1643114 (not c!872996)) b!5081718))

(assert (= (and b!5081718 c!872997) b!5081719))

(assert (= (and b!5081718 (not c!872997)) b!5081720))

(declare-fun m!6135316 () Bool)

(assert (=> b!5081720 m!6135316))

(declare-fun m!6135318 () Bool)

(assert (=> b!5081720 m!6135318))

(assert (=> b!5081720 m!6135316))

(assert (=> b!5081720 m!6135318))

(declare-fun m!6135320 () Bool)

(assert (=> b!5081720 m!6135320))

(declare-fun m!6135322 () Bool)

(assert (=> b!5081719 m!6135322))

(assert (=> b!5081106 d!1643114))

(declare-fun b!5081722 () Bool)

(declare-fun e!3169817 () List!58576)

(assert (=> b!5081722 (= e!3169817 (Cons!58452 (h!64900 (list!19025 (left!42843 (right!43173 (right!43173 xs!286))))) (++!12811 (t!371393 (list!19025 (left!42843 (right!43173 (right!43173 xs!286))))) (list!19025 (right!43173 (right!43173 (right!43173 xs!286)))))))))

(declare-fun d!1643116 () Bool)

(declare-fun e!3169818 () Bool)

(assert (=> d!1643116 e!3169818))

(declare-fun res!2163448 () Bool)

(assert (=> d!1643116 (=> (not res!2163448) (not e!3169818))))

(declare-fun lt!2091057 () List!58576)

(assert (=> d!1643116 (= res!2163448 (= (content!10428 lt!2091057) ((_ map or) (content!10428 (list!19025 (left!42843 (right!43173 (right!43173 xs!286))))) (content!10428 (list!19025 (right!43173 (right!43173 (right!43173 xs!286))))))))))

(assert (=> d!1643116 (= lt!2091057 e!3169817)))

(declare-fun c!872998 () Bool)

(assert (=> d!1643116 (= c!872998 ((_ is Nil!58452) (list!19025 (left!42843 (right!43173 (right!43173 xs!286))))))))

(assert (=> d!1643116 (= (++!12811 (list!19025 (left!42843 (right!43173 (right!43173 xs!286)))) (list!19025 (right!43173 (right!43173 (right!43173 xs!286))))) lt!2091057)))

(declare-fun b!5081721 () Bool)

(assert (=> b!5081721 (= e!3169817 (list!19025 (right!43173 (right!43173 (right!43173 xs!286)))))))

(declare-fun b!5081723 () Bool)

(declare-fun res!2163447 () Bool)

(assert (=> b!5081723 (=> (not res!2163447) (not e!3169818))))

(assert (=> b!5081723 (= res!2163447 (= (size!39113 lt!2091057) (+ (size!39113 (list!19025 (left!42843 (right!43173 (right!43173 xs!286))))) (size!39113 (list!19025 (right!43173 (right!43173 (right!43173 xs!286))))))))))

(declare-fun b!5081724 () Bool)

(assert (=> b!5081724 (= e!3169818 (or (not (= (list!19025 (right!43173 (right!43173 (right!43173 xs!286)))) Nil!58452)) (= lt!2091057 (list!19025 (left!42843 (right!43173 (right!43173 xs!286)))))))))

(assert (= (and d!1643116 c!872998) b!5081721))

(assert (= (and d!1643116 (not c!872998)) b!5081722))

(assert (= (and d!1643116 res!2163448) b!5081723))

(assert (= (and b!5081723 res!2163447) b!5081724))

(assert (=> b!5081722 m!6133538))

(declare-fun m!6135324 () Bool)

(assert (=> b!5081722 m!6135324))

(declare-fun m!6135326 () Bool)

(assert (=> d!1643116 m!6135326))

(assert (=> d!1643116 m!6133536))

(declare-fun m!6135328 () Bool)

(assert (=> d!1643116 m!6135328))

(assert (=> d!1643116 m!6133538))

(declare-fun m!6135330 () Bool)

(assert (=> d!1643116 m!6135330))

(declare-fun m!6135332 () Bool)

(assert (=> b!5081723 m!6135332))

(assert (=> b!5081723 m!6133536))

(declare-fun m!6135334 () Bool)

(assert (=> b!5081723 m!6135334))

(assert (=> b!5081723 m!6133538))

(declare-fun m!6135336 () Bool)

(assert (=> b!5081723 m!6135336))

(assert (=> b!5080869 d!1643116))

(declare-fun b!5081725 () Bool)

(declare-fun e!3169819 () List!58576)

(assert (=> b!5081725 (= e!3169819 Nil!58452)))

(declare-fun b!5081728 () Bool)

(declare-fun e!3169820 () List!58576)

(assert (=> b!5081728 (= e!3169820 (++!12811 (list!19025 (left!42843 (left!42843 (right!43173 (right!43173 xs!286))))) (list!19025 (right!43173 (left!42843 (right!43173 (right!43173 xs!286)))))))))

(declare-fun d!1643118 () Bool)

(declare-fun c!872999 () Bool)

(assert (=> d!1643118 (= c!872999 ((_ is Empty!15582) (left!42843 (right!43173 (right!43173 xs!286)))))))

(assert (=> d!1643118 (= (list!19025 (left!42843 (right!43173 (right!43173 xs!286)))) e!3169819)))

(declare-fun b!5081726 () Bool)

(assert (=> b!5081726 (= e!3169819 e!3169820)))

(declare-fun c!873000 () Bool)

(assert (=> b!5081726 (= c!873000 ((_ is Leaf!25878) (left!42843 (right!43173 (right!43173 xs!286)))))))

(declare-fun b!5081727 () Bool)

(assert (=> b!5081727 (= e!3169820 (list!19027 (xs!18954 (left!42843 (right!43173 (right!43173 xs!286))))))))

(assert (= (and d!1643118 c!872999) b!5081725))

(assert (= (and d!1643118 (not c!872999)) b!5081726))

(assert (= (and b!5081726 c!873000) b!5081727))

(assert (= (and b!5081726 (not c!873000)) b!5081728))

(declare-fun m!6135338 () Bool)

(assert (=> b!5081728 m!6135338))

(declare-fun m!6135340 () Bool)

(assert (=> b!5081728 m!6135340))

(assert (=> b!5081728 m!6135338))

(assert (=> b!5081728 m!6135340))

(declare-fun m!6135342 () Bool)

(assert (=> b!5081728 m!6135342))

(declare-fun m!6135344 () Bool)

(assert (=> b!5081727 m!6135344))

(assert (=> b!5080869 d!1643118))

(declare-fun b!5081729 () Bool)

(declare-fun e!3169821 () List!58576)

(assert (=> b!5081729 (= e!3169821 Nil!58452)))

(declare-fun b!5081732 () Bool)

(declare-fun e!3169822 () List!58576)

(assert (=> b!5081732 (= e!3169822 (++!12811 (list!19025 (left!42843 (right!43173 (right!43173 (right!43173 xs!286))))) (list!19025 (right!43173 (right!43173 (right!43173 (right!43173 xs!286)))))))))

(declare-fun d!1643120 () Bool)

(declare-fun c!873001 () Bool)

(assert (=> d!1643120 (= c!873001 ((_ is Empty!15582) (right!43173 (right!43173 (right!43173 xs!286)))))))

(assert (=> d!1643120 (= (list!19025 (right!43173 (right!43173 (right!43173 xs!286)))) e!3169821)))

(declare-fun b!5081730 () Bool)

(assert (=> b!5081730 (= e!3169821 e!3169822)))

(declare-fun c!873002 () Bool)

(assert (=> b!5081730 (= c!873002 ((_ is Leaf!25878) (right!43173 (right!43173 (right!43173 xs!286)))))))

(declare-fun b!5081731 () Bool)

(assert (=> b!5081731 (= e!3169822 (list!19027 (xs!18954 (right!43173 (right!43173 (right!43173 xs!286))))))))

(assert (= (and d!1643120 c!873001) b!5081729))

(assert (= (and d!1643120 (not c!873001)) b!5081730))

(assert (= (and b!5081730 c!873002) b!5081731))

(assert (= (and b!5081730 (not c!873002)) b!5081732))

(declare-fun m!6135346 () Bool)

(assert (=> b!5081732 m!6135346))

(declare-fun m!6135348 () Bool)

(assert (=> b!5081732 m!6135348))

(assert (=> b!5081732 m!6135346))

(assert (=> b!5081732 m!6135348))

(declare-fun m!6135350 () Bool)

(assert (=> b!5081732 m!6135350))

(declare-fun m!6135352 () Bool)

(assert (=> b!5081731 m!6135352))

(assert (=> b!5080869 d!1643120))

(declare-fun d!1643122 () Bool)

(declare-fun res!2163449 () Bool)

(declare-fun e!3169823 () Bool)

(assert (=> d!1643122 (=> (not res!2163449) (not e!3169823))))

(assert (=> d!1643122 (= res!2163449 (<= (size!39113 (list!19027 (xs!18954 (right!43173 (right!43173 ys!41))))) 512))))

(assert (=> d!1643122 (= (inv!77657 (right!43173 (right!43173 ys!41))) e!3169823)))

(declare-fun b!5081733 () Bool)

(declare-fun res!2163450 () Bool)

(assert (=> b!5081733 (=> (not res!2163450) (not e!3169823))))

(assert (=> b!5081733 (= res!2163450 (= (csize!31395 (right!43173 (right!43173 ys!41))) (size!39113 (list!19027 (xs!18954 (right!43173 (right!43173 ys!41)))))))))

(declare-fun b!5081734 () Bool)

(assert (=> b!5081734 (= e!3169823 (and (> (csize!31395 (right!43173 (right!43173 ys!41))) 0) (<= (csize!31395 (right!43173 (right!43173 ys!41))) 512)))))

(assert (= (and d!1643122 res!2163449) b!5081733))

(assert (= (and b!5081733 res!2163450) b!5081734))

(declare-fun m!6135354 () Bool)

(assert (=> d!1643122 m!6135354))

(assert (=> d!1643122 m!6135354))

(declare-fun m!6135356 () Bool)

(assert (=> d!1643122 m!6135356))

(assert (=> b!5081733 m!6135354))

(assert (=> b!5081733 m!6135354))

(assert (=> b!5081733 m!6135356))

(assert (=> b!5081096 d!1643122))

(declare-fun d!1643124 () Bool)

(declare-fun res!2163455 () Bool)

(declare-fun e!3169824 () Bool)

(assert (=> d!1643124 (=> res!2163455 e!3169824)))

(assert (=> d!1643124 (= res!2163455 (not ((_ is Node!15582) (left!42843 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1643124 (= (isBalanced!4444 (left!42843 (left!42843 (left!42843 ys!41)))) e!3169824)))

(declare-fun b!5081735 () Bool)

(declare-fun res!2163451 () Bool)

(declare-fun e!3169825 () Bool)

(assert (=> b!5081735 (=> (not res!2163451) (not e!3169825))))

(assert (=> b!5081735 (= res!2163451 (<= (- (height!2159 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))) (height!2159 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))) 1))))

(declare-fun b!5081736 () Bool)

(declare-fun res!2163452 () Bool)

(assert (=> b!5081736 (=> (not res!2163452) (not e!3169825))))

(assert (=> b!5081736 (= res!2163452 (isBalanced!4444 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081737 () Bool)

(declare-fun res!2163454 () Bool)

(assert (=> b!5081737 (=> (not res!2163454) (not e!3169825))))

(assert (=> b!5081737 (= res!2163454 (isBalanced!4444 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081738 () Bool)

(assert (=> b!5081738 (= e!3169824 e!3169825)))

(declare-fun res!2163453 () Bool)

(assert (=> b!5081738 (=> (not res!2163453) (not e!3169825))))

(assert (=> b!5081738 (= res!2163453 (<= (- 1) (- (height!2159 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))) (height!2159 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(declare-fun b!5081739 () Bool)

(declare-fun res!2163456 () Bool)

(assert (=> b!5081739 (=> (not res!2163456) (not e!3169825))))

(assert (=> b!5081739 (= res!2163456 (not (isEmpty!31667 (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5081740 () Bool)

(assert (=> b!5081740 (= e!3169825 (not (isEmpty!31667 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))

(assert (= (and d!1643124 (not res!2163455)) b!5081738))

(assert (= (and b!5081738 res!2163453) b!5081735))

(assert (= (and b!5081735 res!2163451) b!5081737))

(assert (= (and b!5081737 res!2163454) b!5081736))

(assert (= (and b!5081736 res!2163452) b!5081739))

(assert (= (and b!5081739 res!2163456) b!5081740))

(declare-fun m!6135358 () Bool)

(assert (=> b!5081736 m!6135358))

(declare-fun m!6135360 () Bool)

(assert (=> b!5081735 m!6135360))

(declare-fun m!6135362 () Bool)

(assert (=> b!5081735 m!6135362))

(declare-fun m!6135364 () Bool)

(assert (=> b!5081740 m!6135364))

(assert (=> b!5081738 m!6135360))

(assert (=> b!5081738 m!6135362))

(declare-fun m!6135366 () Bool)

(assert (=> b!5081739 m!6135366))

(declare-fun m!6135368 () Bool)

(assert (=> b!5081737 m!6135368))

(assert (=> b!5081099 d!1643124))

(assert (=> b!5081135 d!1642560))

(assert (=> b!5081135 d!1642678))

(declare-fun d!1643126 () Bool)

(declare-fun lt!2091058 () Int)

(assert (=> d!1643126 (>= lt!2091058 0)))

(declare-fun e!3169826 () Int)

(assert (=> d!1643126 (= lt!2091058 e!3169826)))

(declare-fun c!873003 () Bool)

(assert (=> d!1643126 (= c!873003 ((_ is Nil!58452) (innerList!15670 (xs!18954 (right!43173 xs!286)))))))

(assert (=> d!1643126 (= (size!39113 (innerList!15670 (xs!18954 (right!43173 xs!286)))) lt!2091058)))

(declare-fun b!5081741 () Bool)

(assert (=> b!5081741 (= e!3169826 0)))

(declare-fun b!5081742 () Bool)

(assert (=> b!5081742 (= e!3169826 (+ 1 (size!39113 (t!371393 (innerList!15670 (xs!18954 (right!43173 xs!286)))))))))

(assert (= (and d!1643126 c!873003) b!5081741))

(assert (= (and d!1643126 (not c!873003)) b!5081742))

(declare-fun m!6135370 () Bool)

(assert (=> b!5081742 m!6135370))

(assert (=> d!1642662 d!1643126))

(assert (=> b!5081196 d!1642960))

(assert (=> b!5081196 d!1642962))

(assert (=> b!5080897 d!1643042))

(assert (=> b!5080897 d!1643044))

(declare-fun d!1643128 () Bool)

(declare-fun res!2163461 () Bool)

(declare-fun e!3169827 () Bool)

(assert (=> d!1643128 (=> res!2163461 e!3169827)))

(assert (=> d!1643128 (= res!2163461 (not ((_ is Node!15582) lt!2090930)))))

(assert (=> d!1643128 (= (isBalanced!4444 lt!2090930) e!3169827)))

(declare-fun b!5081743 () Bool)

(declare-fun res!2163457 () Bool)

(declare-fun e!3169828 () Bool)

(assert (=> b!5081743 (=> (not res!2163457) (not e!3169828))))

(assert (=> b!5081743 (= res!2163457 (<= (- (height!2159 (left!42843 lt!2090930)) (height!2159 (right!43173 lt!2090930))) 1))))

(declare-fun b!5081744 () Bool)

(declare-fun res!2163458 () Bool)

(assert (=> b!5081744 (=> (not res!2163458) (not e!3169828))))

(assert (=> b!5081744 (= res!2163458 (isBalanced!4444 (right!43173 lt!2090930)))))

(declare-fun b!5081745 () Bool)

(declare-fun res!2163460 () Bool)

(assert (=> b!5081745 (=> (not res!2163460) (not e!3169828))))

(assert (=> b!5081745 (= res!2163460 (isBalanced!4444 (left!42843 lt!2090930)))))

(declare-fun b!5081746 () Bool)

(assert (=> b!5081746 (= e!3169827 e!3169828)))

(declare-fun res!2163459 () Bool)

(assert (=> b!5081746 (=> (not res!2163459) (not e!3169828))))

(assert (=> b!5081746 (= res!2163459 (<= (- 1) (- (height!2159 (left!42843 lt!2090930)) (height!2159 (right!43173 lt!2090930)))))))

(declare-fun b!5081747 () Bool)

(declare-fun res!2163462 () Bool)

(assert (=> b!5081747 (=> (not res!2163462) (not e!3169828))))

(assert (=> b!5081747 (= res!2163462 (not (isEmpty!31667 (left!42843 lt!2090930))))))

(declare-fun b!5081748 () Bool)

(assert (=> b!5081748 (= e!3169828 (not (isEmpty!31667 (right!43173 lt!2090930))))))

(assert (= (and d!1643128 (not res!2163461)) b!5081746))

(assert (= (and b!5081746 res!2163459) b!5081743))

(assert (= (and b!5081743 res!2163457) b!5081745))

(assert (= (and b!5081745 res!2163460) b!5081744))

(assert (= (and b!5081744 res!2163458) b!5081747))

(assert (= (and b!5081747 res!2163462) b!5081748))

(declare-fun m!6135372 () Bool)

(assert (=> b!5081744 m!6135372))

(declare-fun m!6135374 () Bool)

(assert (=> b!5081743 m!6135374))

(declare-fun m!6135376 () Bool)

(assert (=> b!5081743 m!6135376))

(declare-fun m!6135378 () Bool)

(assert (=> b!5081748 m!6135378))

(assert (=> b!5081746 m!6135374))

(assert (=> b!5081746 m!6135376))

(declare-fun m!6135380 () Bool)

(assert (=> b!5081747 m!6135380))

(declare-fun m!6135382 () Bool)

(assert (=> b!5081745 m!6135382))

(assert (=> b!5080838 d!1643128))

(declare-fun d!1643130 () Bool)

(assert (=> d!1643130 (= (inv!77655 (xs!18954 (left!42843 (left!42843 ys!41)))) (<= (size!39113 (innerList!15670 (xs!18954 (left!42843 (left!42843 ys!41))))) 2147483647))))

(declare-fun bs!1190673 () Bool)

(assert (= bs!1190673 d!1643130))

(declare-fun m!6135384 () Bool)

(assert (=> bs!1190673 m!6135384))

(assert (=> b!5081253 d!1643130))

(declare-fun d!1643132 () Bool)

(declare-fun c!873004 () Bool)

(assert (=> d!1643132 (= c!873004 ((_ is Nil!58452) lt!2090955))))

(declare-fun e!3169829 () (InoxSet T!105244))

(assert (=> d!1643132 (= (content!10428 lt!2090955) e!3169829)))

(declare-fun b!5081749 () Bool)

(assert (=> b!5081749 (= e!3169829 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081750 () Bool)

(assert (=> b!5081750 (= e!3169829 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 lt!2090955) true) (content!10428 (t!371393 lt!2090955))))))

(assert (= (and d!1643132 c!873004) b!5081749))

(assert (= (and d!1643132 (not c!873004)) b!5081750))

(declare-fun m!6135386 () Bool)

(assert (=> b!5081750 m!6135386))

(declare-fun m!6135388 () Bool)

(assert (=> b!5081750 m!6135388))

(assert (=> d!1642598 d!1643132))

(declare-fun d!1643134 () Bool)

(declare-fun c!873005 () Bool)

(assert (=> d!1643134 (= c!873005 ((_ is Nil!58452) (list!19025 (right!43173 (left!42843 ys!41)))))))

(declare-fun e!3169830 () (InoxSet T!105244))

(assert (=> d!1643134 (= (content!10428 (list!19025 (right!43173 (left!42843 ys!41)))) e!3169830)))

(declare-fun b!5081751 () Bool)

(assert (=> b!5081751 (= e!3169830 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081752 () Bool)

(assert (=> b!5081752 (= e!3169830 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 (right!43173 (left!42843 ys!41)))) true) (content!10428 (t!371393 (list!19025 (right!43173 (left!42843 ys!41)))))))))

(assert (= (and d!1643134 c!873005) b!5081751))

(assert (= (and d!1643134 (not c!873005)) b!5081752))

(declare-fun m!6135390 () Bool)

(assert (=> b!5081752 m!6135390))

(declare-fun m!6135392 () Bool)

(assert (=> b!5081752 m!6135392))

(assert (=> d!1642598 d!1643134))

(declare-fun d!1643136 () Bool)

(declare-fun c!873006 () Bool)

(assert (=> d!1643136 (= c!873006 ((_ is Nil!58452) (list!19025 (right!43173 ys!41))))))

(declare-fun e!3169831 () (InoxSet T!105244))

(assert (=> d!1643136 (= (content!10428 (list!19025 (right!43173 ys!41))) e!3169831)))

(declare-fun b!5081753 () Bool)

(assert (=> b!5081753 (= e!3169831 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081754 () Bool)

(assert (=> b!5081754 (= e!3169831 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 (right!43173 ys!41))) true) (content!10428 (t!371393 (list!19025 (right!43173 ys!41))))))))

(assert (= (and d!1643136 c!873006) b!5081753))

(assert (= (and d!1643136 (not c!873006)) b!5081754))

(declare-fun m!6135394 () Bool)

(assert (=> b!5081754 m!6135394))

(declare-fun m!6135396 () Bool)

(assert (=> b!5081754 m!6135396))

(assert (=> d!1642598 d!1643136))

(declare-fun d!1643138 () Bool)

(declare-fun res!2163463 () Bool)

(declare-fun e!3169832 () Bool)

(assert (=> d!1643138 (=> (not res!2163463) (not e!3169832))))

(assert (=> d!1643138 (= res!2163463 (<= (size!39113 (list!19027 (xs!18954 (left!42843 (left!42843 ys!41))))) 512))))

(assert (=> d!1643138 (= (inv!77657 (left!42843 (left!42843 ys!41))) e!3169832)))

(declare-fun b!5081755 () Bool)

(declare-fun res!2163464 () Bool)

(assert (=> b!5081755 (=> (not res!2163464) (not e!3169832))))

(assert (=> b!5081755 (= res!2163464 (= (csize!31395 (left!42843 (left!42843 ys!41))) (size!39113 (list!19027 (xs!18954 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5081756 () Bool)

(assert (=> b!5081756 (= e!3169832 (and (> (csize!31395 (left!42843 (left!42843 ys!41))) 0) (<= (csize!31395 (left!42843 (left!42843 ys!41))) 512)))))

(assert (= (and d!1643138 res!2163463) b!5081755))

(assert (= (and b!5081755 res!2163464) b!5081756))

(assert (=> d!1643138 m!6133460))

(assert (=> d!1643138 m!6133460))

(declare-fun m!6135398 () Bool)

(assert (=> d!1643138 m!6135398))

(assert (=> b!5081755 m!6133460))

(assert (=> b!5081755 m!6133460))

(assert (=> b!5081755 m!6135398))

(assert (=> b!5081200 d!1643138))

(declare-fun d!1643140 () Bool)

(declare-fun lt!2091059 () Int)

(assert (=> d!1643140 (= lt!2091059 (size!39113 (list!19025 (left!42843 xs!286))))))

(assert (=> d!1643140 (= lt!2091059 (ite ((_ is Empty!15582) (left!42843 xs!286)) 0 (ite ((_ is Leaf!25878) (left!42843 xs!286)) (csize!31395 (left!42843 xs!286)) (csize!31394 (left!42843 xs!286)))))))

(assert (=> d!1643140 (= (size!39112 (left!42843 xs!286)) lt!2091059)))

(declare-fun bs!1190674 () Bool)

(assert (= bs!1190674 d!1643140))

(assert (=> bs!1190674 m!6133030))

(assert (=> bs!1190674 m!6133030))

(assert (=> bs!1190674 m!6133828))

(assert (=> d!1642738 d!1643140))

(declare-fun d!1643142 () Bool)

(declare-fun lt!2091060 () Int)

(assert (=> d!1643142 (= lt!2091060 (size!39113 (list!19025 (right!43173 xs!286))))))

(assert (=> d!1643142 (= lt!2091060 (ite ((_ is Empty!15582) (right!43173 xs!286)) 0 (ite ((_ is Leaf!25878) (right!43173 xs!286)) (csize!31395 (right!43173 xs!286)) (csize!31394 (right!43173 xs!286)))))))

(assert (=> d!1643142 (= (size!39112 (right!43173 xs!286)) lt!2091060)))

(declare-fun bs!1190675 () Bool)

(assert (= bs!1190675 d!1643142))

(assert (=> bs!1190675 m!6133032))

(assert (=> bs!1190675 m!6133032))

(assert (=> bs!1190675 m!6133830))

(assert (=> d!1642738 d!1643142))

(declare-fun d!1643144 () Bool)

(declare-fun res!2163465 () Bool)

(declare-fun e!3169833 () Bool)

(assert (=> d!1643144 (=> (not res!2163465) (not e!3169833))))

(assert (=> d!1643144 (= res!2163465 (= (csize!31394 (left!42843 (left!42843 xs!286))) (+ (size!39112 (left!42843 (left!42843 (left!42843 xs!286)))) (size!39112 (right!43173 (left!42843 (left!42843 xs!286)))))))))

(assert (=> d!1643144 (= (inv!77656 (left!42843 (left!42843 xs!286))) e!3169833)))

(declare-fun b!5081757 () Bool)

(declare-fun res!2163466 () Bool)

(assert (=> b!5081757 (=> (not res!2163466) (not e!3169833))))

(assert (=> b!5081757 (= res!2163466 (and (not (= (left!42843 (left!42843 (left!42843 xs!286))) Empty!15582)) (not (= (right!43173 (left!42843 (left!42843 xs!286))) Empty!15582))))))

(declare-fun b!5081758 () Bool)

(declare-fun res!2163467 () Bool)

(assert (=> b!5081758 (=> (not res!2163467) (not e!3169833))))

(assert (=> b!5081758 (= res!2163467 (= (cheight!15793 (left!42843 (left!42843 xs!286))) (+ (max!0 (height!2159 (left!42843 (left!42843 (left!42843 xs!286)))) (height!2159 (right!43173 (left!42843 (left!42843 xs!286))))) 1)))))

(declare-fun b!5081759 () Bool)

(assert (=> b!5081759 (= e!3169833 (<= 0 (cheight!15793 (left!42843 (left!42843 xs!286)))))))

(assert (= (and d!1643144 res!2163465) b!5081757))

(assert (= (and b!5081757 res!2163466) b!5081758))

(assert (= (and b!5081758 res!2163467) b!5081759))

(declare-fun m!6135400 () Bool)

(assert (=> d!1643144 m!6135400))

(declare-fun m!6135402 () Bool)

(assert (=> d!1643144 m!6135402))

(declare-fun m!6135404 () Bool)

(assert (=> b!5081758 m!6135404))

(declare-fun m!6135406 () Bool)

(assert (=> b!5081758 m!6135406))

(assert (=> b!5081758 m!6135404))

(assert (=> b!5081758 m!6135406))

(declare-fun m!6135408 () Bool)

(assert (=> b!5081758 m!6135408))

(assert (=> b!5080970 d!1643144))

(declare-fun d!1643146 () Bool)

(declare-fun lt!2091061 () Bool)

(assert (=> d!1643146 (= lt!2091061 (isEmpty!31669 (list!19025 (right!43173 (left!42843 lt!2090875)))))))

(assert (=> d!1643146 (= lt!2091061 (= (size!39112 (right!43173 (left!42843 lt!2090875))) 0))))

(assert (=> d!1643146 (= (isEmpty!31667 (right!43173 (left!42843 lt!2090875))) lt!2091061)))

(declare-fun bs!1190676 () Bool)

(assert (= bs!1190676 d!1643146))

(assert (=> bs!1190676 m!6133950))

(assert (=> bs!1190676 m!6133950))

(declare-fun m!6135410 () Bool)

(assert (=> bs!1190676 m!6135410))

(declare-fun m!6135412 () Bool)

(assert (=> bs!1190676 m!6135412))

(assert (=> b!5081021 d!1643146))

(declare-fun d!1643148 () Bool)

(declare-fun lt!2091062 () Int)

(assert (=> d!1643148 (>= lt!2091062 0)))

(declare-fun e!3169834 () Int)

(assert (=> d!1643148 (= lt!2091062 e!3169834)))

(declare-fun c!873007 () Bool)

(assert (=> d!1643148 (= c!873007 ((_ is Nil!58452) (list!19027 (xs!18954 (right!43173 ys!41)))))))

(assert (=> d!1643148 (= (size!39113 (list!19027 (xs!18954 (right!43173 ys!41)))) lt!2091062)))

(declare-fun b!5081760 () Bool)

(assert (=> b!5081760 (= e!3169834 0)))

(declare-fun b!5081761 () Bool)

(assert (=> b!5081761 (= e!3169834 (+ 1 (size!39113 (t!371393 (list!19027 (xs!18954 (right!43173 ys!41)))))))))

(assert (= (and d!1643148 c!873007) b!5081760))

(assert (= (and d!1643148 (not c!873007)) b!5081761))

(declare-fun m!6135414 () Bool)

(assert (=> b!5081761 m!6135414))

(assert (=> b!5081038 d!1643148))

(assert (=> b!5081038 d!1642934))

(assert (=> d!1642690 d!1642968))

(assert (=> d!1642690 d!1642602))

(declare-fun d!1643150 () Bool)

(assert (=> d!1643150 (= (height!2159 (left!42843 (left!42843 lt!2090875))) (ite ((_ is Empty!15582) (left!42843 (left!42843 lt!2090875))) 0 (ite ((_ is Leaf!25878) (left!42843 (left!42843 lt!2090875))) 1 (cheight!15793 (left!42843 (left!42843 lt!2090875))))))))

(assert (=> b!5081019 d!1643150))

(declare-fun d!1643152 () Bool)

(assert (=> d!1643152 (= (height!2159 (right!43173 (left!42843 lt!2090875))) (ite ((_ is Empty!15582) (right!43173 (left!42843 lt!2090875))) 0 (ite ((_ is Leaf!25878) (right!43173 (left!42843 lt!2090875))) 1 (cheight!15793 (right!43173 (left!42843 lt!2090875))))))))

(assert (=> b!5081019 d!1643152))

(declare-fun d!1643154 () Bool)

(assert (=> d!1643154 (= (height!2159 (ite c!872763 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))) (ite ((_ is Empty!15582) (ite c!872763 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))) 0 (ite ((_ is Leaf!25878) (ite c!872763 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))) 1 (cheight!15793 (ite c!872763 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))

(assert (=> bm!354158 d!1643154))

(declare-fun b!5081763 () Bool)

(declare-fun e!3169835 () List!58576)

(assert (=> b!5081763 (= e!3169835 (Cons!58452 (h!64900 (t!371393 (list!19025 (left!42843 lt!2090875)))) (++!12811 (t!371393 (t!371393 (list!19025 (left!42843 lt!2090875)))) (list!19025 (right!43173 lt!2090875)))))))

(declare-fun d!1643156 () Bool)

(declare-fun e!3169836 () Bool)

(assert (=> d!1643156 e!3169836))

(declare-fun res!2163469 () Bool)

(assert (=> d!1643156 (=> (not res!2163469) (not e!3169836))))

(declare-fun lt!2091063 () List!58576)

(assert (=> d!1643156 (= res!2163469 (= (content!10428 lt!2091063) ((_ map or) (content!10428 (t!371393 (list!19025 (left!42843 lt!2090875)))) (content!10428 (list!19025 (right!43173 lt!2090875))))))))

(assert (=> d!1643156 (= lt!2091063 e!3169835)))

(declare-fun c!873008 () Bool)

(assert (=> d!1643156 (= c!873008 ((_ is Nil!58452) (t!371393 (list!19025 (left!42843 lt!2090875)))))))

(assert (=> d!1643156 (= (++!12811 (t!371393 (list!19025 (left!42843 lt!2090875))) (list!19025 (right!43173 lt!2090875))) lt!2091063)))

(declare-fun b!5081762 () Bool)

(assert (=> b!5081762 (= e!3169835 (list!19025 (right!43173 lt!2090875)))))

(declare-fun b!5081764 () Bool)

(declare-fun res!2163468 () Bool)

(assert (=> b!5081764 (=> (not res!2163468) (not e!3169836))))

(assert (=> b!5081764 (= res!2163468 (= (size!39113 lt!2091063) (+ (size!39113 (t!371393 (list!19025 (left!42843 lt!2090875)))) (size!39113 (list!19025 (right!43173 lt!2090875))))))))

(declare-fun b!5081765 () Bool)

(assert (=> b!5081765 (= e!3169836 (or (not (= (list!19025 (right!43173 lt!2090875)) Nil!58452)) (= lt!2091063 (t!371393 (list!19025 (left!42843 lt!2090875))))))))

(assert (= (and d!1643156 c!873008) b!5081762))

(assert (= (and d!1643156 (not c!873008)) b!5081763))

(assert (= (and d!1643156 res!2163469) b!5081764))

(assert (= (and b!5081764 res!2163468) b!5081765))

(assert (=> b!5081763 m!6133258))

(declare-fun m!6135416 () Bool)

(assert (=> b!5081763 m!6135416))

(declare-fun m!6135418 () Bool)

(assert (=> d!1643156 m!6135418))

(assert (=> d!1643156 m!6134970))

(assert (=> d!1643156 m!6133258))

(assert (=> d!1643156 m!6133940))

(declare-fun m!6135420 () Bool)

(assert (=> b!5081764 m!6135420))

(declare-fun m!6135422 () Bool)

(assert (=> b!5081764 m!6135422))

(assert (=> b!5081764 m!6133258))

(assert (=> b!5081764 m!6133946))

(assert (=> b!5081056 d!1643156))

(declare-fun d!1643158 () Bool)

(assert (=> d!1643158 (= (inv!77655 (xs!18954 (right!43173 (right!43173 xs!286)))) (<= (size!39113 (innerList!15670 (xs!18954 (right!43173 (right!43173 xs!286))))) 2147483647))))

(declare-fun bs!1190677 () Bool)

(assert (= bs!1190677 d!1643158))

(declare-fun m!6135424 () Bool)

(assert (=> bs!1190677 m!6135424))

(assert (=> b!5081249 d!1643158))

(declare-fun d!1643160 () Bool)

(declare-fun res!2163470 () Bool)

(declare-fun e!3169837 () Bool)

(assert (=> d!1643160 (=> (not res!2163470) (not e!3169837))))

(assert (=> d!1643160 (= res!2163470 (<= (size!39113 (list!19027 (xs!18954 (right!43173 (left!42843 xs!286))))) 512))))

(assert (=> d!1643160 (= (inv!77657 (right!43173 (left!42843 xs!286))) e!3169837)))

(declare-fun b!5081766 () Bool)

(declare-fun res!2163471 () Bool)

(assert (=> b!5081766 (=> (not res!2163471) (not e!3169837))))

(assert (=> b!5081766 (= res!2163471 (= (csize!31395 (right!43173 (left!42843 xs!286))) (size!39113 (list!19027 (xs!18954 (right!43173 (left!42843 xs!286)))))))))

(declare-fun b!5081767 () Bool)

(assert (=> b!5081767 (= e!3169837 (and (> (csize!31395 (right!43173 (left!42843 xs!286))) 0) (<= (csize!31395 (right!43173 (left!42843 xs!286))) 512)))))

(assert (= (and d!1643160 res!2163470) b!5081766))

(assert (= (and b!5081766 res!2163471) b!5081767))

(assert (=> d!1643160 m!6135118))

(assert (=> d!1643160 m!6135118))

(declare-fun m!6135426 () Bool)

(assert (=> d!1643160 m!6135426))

(assert (=> b!5081766 m!6135118))

(assert (=> b!5081766 m!6135118))

(assert (=> b!5081766 m!6135426))

(assert (=> b!5080975 d!1643160))

(declare-fun d!1643162 () Bool)

(declare-fun res!2163472 () Bool)

(declare-fun e!3169838 () Bool)

(assert (=> d!1643162 (=> (not res!2163472) (not e!3169838))))

(assert (=> d!1643162 (= res!2163472 (<= (size!39113 (list!19027 (xs!18954 (right!43173 (left!42843 ys!41))))) 512))))

(assert (=> d!1643162 (= (inv!77657 (right!43173 (left!42843 ys!41))) e!3169838)))

(declare-fun b!5081768 () Bool)

(declare-fun res!2163473 () Bool)

(assert (=> b!5081768 (=> (not res!2163473) (not e!3169838))))

(assert (=> b!5081768 (= res!2163473 (= (csize!31395 (right!43173 (left!42843 ys!41))) (size!39113 (list!19027 (xs!18954 (right!43173 (left!42843 ys!41)))))))))

(declare-fun b!5081769 () Bool)

(assert (=> b!5081769 (= e!3169838 (and (> (csize!31395 (right!43173 (left!42843 ys!41))) 0) (<= (csize!31395 (right!43173 (left!42843 ys!41))) 512)))))

(assert (= (and d!1643162 res!2163472) b!5081768))

(assert (= (and b!5081768 res!2163473) b!5081769))

(assert (=> d!1643162 m!6133796))

(assert (=> d!1643162 m!6133796))

(declare-fun m!6135428 () Bool)

(assert (=> d!1643162 m!6135428))

(assert (=> b!5081768 m!6133796))

(assert (=> b!5081768 m!6133796))

(assert (=> b!5081768 m!6135428))

(assert (=> b!5081203 d!1643162))

(declare-fun b!5081771 () Bool)

(declare-fun e!3169839 () List!58576)

(assert (=> b!5081771 (= e!3169839 (Cons!58452 (h!64900 (t!371393 (t!371393 (list!19025 xs!286)))) (++!12811 (t!371393 (t!371393 (t!371393 (list!19025 xs!286)))) (list!19025 ys!41))))))

(declare-fun d!1643164 () Bool)

(declare-fun e!3169840 () Bool)

(assert (=> d!1643164 e!3169840))

(declare-fun res!2163475 () Bool)

(assert (=> d!1643164 (=> (not res!2163475) (not e!3169840))))

(declare-fun lt!2091064 () List!58576)

(assert (=> d!1643164 (= res!2163475 (= (content!10428 lt!2091064) ((_ map or) (content!10428 (t!371393 (t!371393 (list!19025 xs!286)))) (content!10428 (list!19025 ys!41)))))))

(assert (=> d!1643164 (= lt!2091064 e!3169839)))

(declare-fun c!873009 () Bool)

(assert (=> d!1643164 (= c!873009 ((_ is Nil!58452) (t!371393 (t!371393 (list!19025 xs!286)))))))

(assert (=> d!1643164 (= (++!12811 (t!371393 (t!371393 (list!19025 xs!286))) (list!19025 ys!41)) lt!2091064)))

(declare-fun b!5081770 () Bool)

(assert (=> b!5081770 (= e!3169839 (list!19025 ys!41))))

(declare-fun b!5081772 () Bool)

(declare-fun res!2163474 () Bool)

(assert (=> b!5081772 (=> (not res!2163474) (not e!3169840))))

(assert (=> b!5081772 (= res!2163474 (= (size!39113 lt!2091064) (+ (size!39113 (t!371393 (t!371393 (list!19025 xs!286)))) (size!39113 (list!19025 ys!41)))))))

(declare-fun b!5081773 () Bool)

(assert (=> b!5081773 (= e!3169840 (or (not (= (list!19025 ys!41) Nil!58452)) (= lt!2091064 (t!371393 (t!371393 (list!19025 xs!286))))))))

(assert (= (and d!1643164 c!873009) b!5081770))

(assert (= (and d!1643164 (not c!873009)) b!5081771))

(assert (= (and d!1643164 res!2163475) b!5081772))

(assert (= (and b!5081772 res!2163474) b!5081773))

(assert (=> b!5081771 m!6132964))

(declare-fun m!6135430 () Bool)

(assert (=> b!5081771 m!6135430))

(declare-fun m!6135432 () Bool)

(assert (=> d!1643164 m!6135432))

(assert (=> d!1643164 m!6135086))

(assert (=> d!1643164 m!6132964))

(assert (=> d!1643164 m!6133322))

(declare-fun m!6135434 () Bool)

(assert (=> b!5081772 m!6135434))

(assert (=> b!5081772 m!6135058))

(assert (=> b!5081772 m!6132964))

(assert (=> b!5081772 m!6133332))

(assert (=> b!5081142 d!1643164))

(declare-fun d!1643166 () Bool)

(declare-fun e!3169841 () Bool)

(assert (=> d!1643166 e!3169841))

(declare-fun c!873010 () Bool)

(assert (=> d!1643166 (= c!873010 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1643166 (= (appendAssoc!312 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))) true)))

(declare-fun bm!354261 () Bool)

(declare-fun call!354268 () List!58576)

(assert (=> bm!354261 (= call!354268 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 (left!42843 ys!41))))))))

(declare-fun bm!354262 () Bool)

(declare-fun call!354267 () List!58576)

(declare-fun call!354269 () List!58576)

(assert (=> bm!354262 (= call!354267 (++!12811 (list!19025 xs!286) call!354269))))

(declare-fun bm!354263 () Bool)

(assert (=> bm!354263 (= call!354269 (++!12811 (list!19025 (left!42843 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081774 () Bool)

(declare-fun call!354266 () List!58576)

(assert (=> b!5081774 (= e!3169841 (= call!354266 call!354267))))

(declare-fun bm!354264 () Bool)

(assert (=> bm!354264 (= call!354266 (++!12811 call!354268 (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081775 () Bool)

(assert (=> b!5081775 (= e!3169841 (= call!354266 call!354267))))

(declare-fun lt!2091065 () Bool)

(assert (=> b!5081775 (= lt!2091065 (appendAssoc!312 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 (left!42843 (left!42843 ys!41)))) (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))

(assert (= (and d!1643166 c!873010) b!5081774))

(assert (= (and d!1643166 (not c!873010)) b!5081775))

(assert (= (or b!5081774 b!5081775) bm!354261))

(assert (= (or b!5081774 b!5081775) bm!354263))

(assert (= (or b!5081774 b!5081775) bm!354262))

(assert (= (or b!5081774 b!5081775) bm!354264))

(assert (=> bm!354263 m!6133454))

(assert (=> bm!354263 m!6133456))

(assert (=> bm!354263 m!6133458))

(assert (=> bm!354262 m!6132962))

(declare-fun m!6135436 () Bool)

(assert (=> bm!354262 m!6135436))

(assert (=> bm!354264 m!6133456))

(declare-fun m!6135438 () Bool)

(assert (=> bm!354264 m!6135438))

(assert (=> bm!354261 m!6132962))

(assert (=> bm!354261 m!6133454))

(declare-fun m!6135440 () Bool)

(assert (=> bm!354261 m!6135440))

(assert (=> b!5081775 m!6133454))

(assert (=> b!5081775 m!6133456))

(declare-fun m!6135442 () Bool)

(assert (=> b!5081775 m!6135442))

(assert (=> b!5081047 d!1643166))

(assert (=> b!5081047 d!1642446))

(assert (=> b!5081047 d!1643090))

(assert (=> b!5081047 d!1643058))

(assert (=> b!5080759 d!1642664))

(assert (=> b!5080759 d!1642666))

(declare-fun d!1643168 () Bool)

(declare-fun res!2163476 () Bool)

(declare-fun e!3169842 () Bool)

(assert (=> d!1643168 (=> (not res!2163476) (not e!3169842))))

(assert (=> d!1643168 (= res!2163476 (<= (size!39113 (list!19027 (xs!18954 (right!43173 (right!43173 xs!286))))) 512))))

(assert (=> d!1643168 (= (inv!77657 (right!43173 (right!43173 xs!286))) e!3169842)))

(declare-fun b!5081776 () Bool)

(declare-fun res!2163477 () Bool)

(assert (=> b!5081776 (=> (not res!2163477) (not e!3169842))))

(assert (=> b!5081776 (= res!2163477 (= (csize!31395 (right!43173 (right!43173 xs!286))) (size!39113 (list!19027 (xs!18954 (right!43173 (right!43173 xs!286)))))))))

(declare-fun b!5081777 () Bool)

(assert (=> b!5081777 (= e!3169842 (and (> (csize!31395 (right!43173 (right!43173 xs!286))) 0) (<= (csize!31395 (right!43173 (right!43173 xs!286))) 512)))))

(assert (= (and d!1643168 res!2163476) b!5081776))

(assert (= (and b!5081776 res!2163477) b!5081777))

(assert (=> d!1643168 m!6133542))

(assert (=> d!1643168 m!6133542))

(declare-fun m!6135444 () Bool)

(assert (=> d!1643168 m!6135444))

(assert (=> b!5081776 m!6133542))

(assert (=> b!5081776 m!6133542))

(assert (=> b!5081776 m!6135444))

(assert (=> b!5080911 d!1643168))

(declare-fun d!1643170 () Bool)

(assert (=> d!1643170 (= (height!2159 (left!42843 lt!2090909)) (ite ((_ is Empty!15582) (left!42843 lt!2090909)) 0 (ite ((_ is Leaf!25878) (left!42843 lt!2090909)) 1 (cheight!15793 (left!42843 lt!2090909)))))))

(assert (=> b!5081035 d!1643170))

(declare-fun d!1643172 () Bool)

(assert (=> d!1643172 (= (height!2159 (right!43173 lt!2090909)) (ite ((_ is Empty!15582) (right!43173 lt!2090909)) 0 (ite ((_ is Leaf!25878) (right!43173 lt!2090909)) 1 (cheight!15793 (right!43173 lt!2090909)))))))

(assert (=> b!5081035 d!1643172))

(declare-fun d!1643174 () Bool)

(declare-fun lt!2091066 () Int)

(assert (=> d!1643174 (>= lt!2091066 0)))

(declare-fun e!3169843 () Int)

(assert (=> d!1643174 (= lt!2091066 e!3169843)))

(declare-fun c!873011 () Bool)

(assert (=> d!1643174 (= c!873011 ((_ is Nil!58452) (t!371393 (innerList!15670 (xs!18954 ys!41)))))))

(assert (=> d!1643174 (= (size!39113 (t!371393 (innerList!15670 (xs!18954 ys!41)))) lt!2091066)))

(declare-fun b!5081778 () Bool)

(assert (=> b!5081778 (= e!3169843 0)))

(declare-fun b!5081779 () Bool)

(assert (=> b!5081779 (= e!3169843 (+ 1 (size!39113 (t!371393 (t!371393 (innerList!15670 (xs!18954 ys!41)))))))))

(assert (= (and d!1643174 c!873011) b!5081778))

(assert (= (and d!1643174 (not c!873011)) b!5081779))

(declare-fun m!6135446 () Bool)

(assert (=> b!5081779 m!6135446))

(assert (=> b!5081154 d!1643174))

(declare-fun b!5081781 () Bool)

(declare-fun e!3169844 () List!58576)

(assert (=> b!5081781 (= e!3169844 (Cons!58452 (h!64900 (list!19025 xs!286)) (++!12811 (t!371393 (list!19025 xs!286)) call!354189)))))

(declare-fun d!1643176 () Bool)

(declare-fun e!3169845 () Bool)

(assert (=> d!1643176 e!3169845))

(declare-fun res!2163479 () Bool)

(assert (=> d!1643176 (=> (not res!2163479) (not e!3169845))))

(declare-fun lt!2091067 () List!58576)

(assert (=> d!1643176 (= res!2163479 (= (content!10428 lt!2091067) ((_ map or) (content!10428 (list!19025 xs!286)) (content!10428 call!354189))))))

(assert (=> d!1643176 (= lt!2091067 e!3169844)))

(declare-fun c!873012 () Bool)

(assert (=> d!1643176 (= c!873012 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1643176 (= (++!12811 (list!19025 xs!286) call!354189) lt!2091067)))

(declare-fun b!5081780 () Bool)

(assert (=> b!5081780 (= e!3169844 call!354189)))

(declare-fun b!5081782 () Bool)

(declare-fun res!2163478 () Bool)

(assert (=> b!5081782 (=> (not res!2163478) (not e!3169845))))

(assert (=> b!5081782 (= res!2163478 (= (size!39113 lt!2091067) (+ (size!39113 (list!19025 xs!286)) (size!39113 call!354189))))))

(declare-fun b!5081783 () Bool)

(assert (=> b!5081783 (= e!3169845 (or (not (= call!354189 Nil!58452)) (= lt!2091067 (list!19025 xs!286))))))

(assert (= (and d!1643176 c!873012) b!5081780))

(assert (= (and d!1643176 (not c!873012)) b!5081781))

(assert (= (and d!1643176 res!2163479) b!5081782))

(assert (= (and b!5081782 res!2163478) b!5081783))

(declare-fun m!6135448 () Bool)

(assert (=> b!5081781 m!6135448))

(declare-fun m!6135450 () Bool)

(assert (=> d!1643176 m!6135450))

(assert (=> d!1643176 m!6132962))

(assert (=> d!1643176 m!6133318))

(declare-fun m!6135452 () Bool)

(assert (=> d!1643176 m!6135452))

(declare-fun m!6135454 () Bool)

(assert (=> b!5081782 m!6135454))

(assert (=> b!5081782 m!6132962))

(assert (=> b!5081782 m!6133330))

(declare-fun m!6135456 () Bool)

(assert (=> b!5081782 m!6135456))

(assert (=> bm!354182 d!1643176))

(declare-fun d!1643178 () Bool)

(assert (=> d!1643178 (= (list!19027 (xs!18954 (left!42843 (left!42843 ys!41)))) (innerList!15670 (xs!18954 (left!42843 (left!42843 ys!41)))))))

(assert (=> b!5080817 d!1643178))

(declare-fun d!1643180 () Bool)

(assert (=> d!1643180 (= (inv!77655 (xs!18954 (right!43173 (right!43173 ys!41)))) (<= (size!39113 (innerList!15670 (xs!18954 (right!43173 (right!43173 ys!41))))) 2147483647))))

(declare-fun bs!1190678 () Bool)

(assert (= bs!1190678 d!1643180))

(declare-fun m!6135458 () Bool)

(assert (=> bs!1190678 m!6135458))

(assert (=> b!5081227 d!1643180))

(declare-fun d!1643182 () Bool)

(assert (=> d!1643182 (= (list!19027 (xs!18954 (right!43173 (right!43173 xs!286)))) (innerList!15670 (xs!18954 (right!43173 (right!43173 xs!286)))))))

(assert (=> b!5080868 d!1643182))

(declare-fun d!1643184 () Bool)

(assert (=> d!1643184 (= (list!19027 (xs!18954 lt!2090884)) (innerList!15670 (xs!18954 lt!2090884)))))

(assert (=> b!5081105 d!1643184))

(assert (=> b!5081186 d!1642914))

(assert (=> b!5081186 d!1642916))

(declare-fun lt!2091068 () Int)

(declare-fun d!1643186 () Bool)

(assert (=> d!1643186 (= lt!2091068 (size!39113 (list!19025 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))

(assert (=> d!1643186 (= lt!2091068 (ite ((_ is Empty!15582) (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) 0 (ite ((_ is Leaf!25878) (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) (csize!31395 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) (csize!31394 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))

(assert (=> d!1643186 (= (size!39112 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) lt!2091068)))

(declare-fun bs!1190679 () Bool)

(assert (= bs!1190679 d!1643186))

(assert (=> bs!1190679 m!6133680))

(assert (=> bs!1190679 m!6133680))

(declare-fun m!6135460 () Bool)

(assert (=> bs!1190679 m!6135460))

(assert (=> b!5080926 d!1643186))

(declare-fun d!1643188 () Bool)

(assert (=> d!1643188 (= (height!2159 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) (ite ((_ is Empty!15582) (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) 0 (ite ((_ is Leaf!25878) (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) 1 (cheight!15793 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))))))))

(assert (=> b!5080926 d!1643188))

(declare-fun d!1643190 () Bool)

(assert (=> d!1643190 (= (max!0 (height!2159 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) (height!2159 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))) (ite (< (height!2159 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) (height!2159 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))) (height!2159 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) (height!2159 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))

(assert (=> b!5080926 d!1643190))

(declare-fun d!1643192 () Bool)

(declare-fun lt!2091069 () Int)

(assert (=> d!1643192 (= lt!2091069 (size!39113 (list!19025 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))))))

(assert (=> d!1643192 (= lt!2091069 (ite ((_ is Empty!15582) (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) 0 (ite ((_ is Leaf!25878) (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) (csize!31395 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) (csize!31394 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))))))))

(assert (=> d!1643192 (= (size!39112 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) lt!2091069)))

(declare-fun bs!1190680 () Bool)

(assert (= bs!1190680 d!1643192))

(assert (=> bs!1190680 m!6133682))

(assert (=> bs!1190680 m!6133682))

(declare-fun m!6135462 () Bool)

(assert (=> bs!1190680 m!6135462))

(assert (=> b!5080926 d!1643192))

(declare-fun d!1643194 () Bool)

(assert (=> d!1643194 (= (height!2159 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) (ite ((_ is Empty!15582) (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) 0 (ite ((_ is Leaf!25878) (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) 1 (cheight!15793 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))

(assert (=> b!5080926 d!1643194))

(declare-fun d!1643196 () Bool)

(declare-fun res!2163484 () Bool)

(declare-fun e!3169846 () Bool)

(assert (=> d!1643196 (=> res!2163484 e!3169846)))

(assert (=> d!1643196 (= res!2163484 (not ((_ is Node!15582) (left!42843 (right!43173 lt!2090875)))))))

(assert (=> d!1643196 (= (isBalanced!4444 (left!42843 (right!43173 lt!2090875))) e!3169846)))

(declare-fun b!5081784 () Bool)

(declare-fun res!2163480 () Bool)

(declare-fun e!3169847 () Bool)

(assert (=> b!5081784 (=> (not res!2163480) (not e!3169847))))

(assert (=> b!5081784 (= res!2163480 (<= (- (height!2159 (left!42843 (left!42843 (right!43173 lt!2090875)))) (height!2159 (right!43173 (left!42843 (right!43173 lt!2090875))))) 1))))

(declare-fun b!5081785 () Bool)

(declare-fun res!2163481 () Bool)

(assert (=> b!5081785 (=> (not res!2163481) (not e!3169847))))

(assert (=> b!5081785 (= res!2163481 (isBalanced!4444 (right!43173 (left!42843 (right!43173 lt!2090875)))))))

(declare-fun b!5081786 () Bool)

(declare-fun res!2163483 () Bool)

(assert (=> b!5081786 (=> (not res!2163483) (not e!3169847))))

(assert (=> b!5081786 (= res!2163483 (isBalanced!4444 (left!42843 (left!42843 (right!43173 lt!2090875)))))))

(declare-fun b!5081787 () Bool)

(assert (=> b!5081787 (= e!3169846 e!3169847)))

(declare-fun res!2163482 () Bool)

(assert (=> b!5081787 (=> (not res!2163482) (not e!3169847))))

(assert (=> b!5081787 (= res!2163482 (<= (- 1) (- (height!2159 (left!42843 (left!42843 (right!43173 lt!2090875)))) (height!2159 (right!43173 (left!42843 (right!43173 lt!2090875)))))))))

(declare-fun b!5081788 () Bool)

(declare-fun res!2163485 () Bool)

(assert (=> b!5081788 (=> (not res!2163485) (not e!3169847))))

(assert (=> b!5081788 (= res!2163485 (not (isEmpty!31667 (left!42843 (left!42843 (right!43173 lt!2090875))))))))

(declare-fun b!5081789 () Bool)

(assert (=> b!5081789 (= e!3169847 (not (isEmpty!31667 (right!43173 (left!42843 (right!43173 lt!2090875))))))))

(assert (= (and d!1643196 (not res!2163484)) b!5081787))

(assert (= (and b!5081787 res!2163482) b!5081784))

(assert (= (and b!5081784 res!2163480) b!5081786))

(assert (= (and b!5081786 res!2163483) b!5081785))

(assert (= (and b!5081785 res!2163481) b!5081788))

(assert (= (and b!5081788 res!2163485) b!5081789))

(declare-fun m!6135464 () Bool)

(assert (=> b!5081785 m!6135464))

(declare-fun m!6135466 () Bool)

(assert (=> b!5081784 m!6135466))

(declare-fun m!6135468 () Bool)

(assert (=> b!5081784 m!6135468))

(declare-fun m!6135470 () Bool)

(assert (=> b!5081789 m!6135470))

(assert (=> b!5081787 m!6135466))

(assert (=> b!5081787 m!6135468))

(declare-fun m!6135472 () Bool)

(assert (=> b!5081788 m!6135472))

(declare-fun m!6135474 () Bool)

(assert (=> b!5081786 m!6135474))

(assert (=> b!5080896 d!1643196))

(assert (=> bm!354187 d!1642598))

(declare-fun b!5081791 () Bool)

(declare-fun e!3169848 () List!58576)

(assert (=> b!5081791 (= e!3169848 (Cons!58452 (h!64900 (list!19025 (left!42843 xs!286))) (++!12811 (t!371393 (list!19025 (left!42843 xs!286))) call!354177)))))

(declare-fun d!1643198 () Bool)

(declare-fun e!3169849 () Bool)

(assert (=> d!1643198 e!3169849))

(declare-fun res!2163487 () Bool)

(assert (=> d!1643198 (=> (not res!2163487) (not e!3169849))))

(declare-fun lt!2091070 () List!58576)

(assert (=> d!1643198 (= res!2163487 (= (content!10428 lt!2091070) ((_ map or) (content!10428 (list!19025 (left!42843 xs!286))) (content!10428 call!354177))))))

(assert (=> d!1643198 (= lt!2091070 e!3169848)))

(declare-fun c!873013 () Bool)

(assert (=> d!1643198 (= c!873013 ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(assert (=> d!1643198 (= (++!12811 (list!19025 (left!42843 xs!286)) call!354177) lt!2091070)))

(declare-fun b!5081790 () Bool)

(assert (=> b!5081790 (= e!3169848 call!354177)))

(declare-fun b!5081792 () Bool)

(declare-fun res!2163486 () Bool)

(assert (=> b!5081792 (=> (not res!2163486) (not e!3169849))))

(assert (=> b!5081792 (= res!2163486 (= (size!39113 lt!2091070) (+ (size!39113 (list!19025 (left!42843 xs!286))) (size!39113 call!354177))))))

(declare-fun b!5081793 () Bool)

(assert (=> b!5081793 (= e!3169849 (or (not (= call!354177 Nil!58452)) (= lt!2091070 (list!19025 (left!42843 xs!286)))))))

(assert (= (and d!1643198 c!873013) b!5081790))

(assert (= (and d!1643198 (not c!873013)) b!5081791))

(assert (= (and d!1643198 res!2163487) b!5081792))

(assert (= (and b!5081792 res!2163486) b!5081793))

(declare-fun m!6135476 () Bool)

(assert (=> b!5081791 m!6135476))

(declare-fun m!6135478 () Bool)

(assert (=> d!1643198 m!6135478))

(assert (=> d!1643198 m!6133030))

(assert (=> d!1643198 m!6133822))

(declare-fun m!6135480 () Bool)

(assert (=> d!1643198 m!6135480))

(declare-fun m!6135482 () Bool)

(assert (=> b!5081792 m!6135482))

(assert (=> b!5081792 m!6133030))

(assert (=> b!5081792 m!6133828))

(declare-fun m!6135484 () Bool)

(assert (=> b!5081792 m!6135484))

(assert (=> bm!354170 d!1643198))

(declare-fun d!1643200 () Bool)

(declare-fun lt!2091071 () Bool)

(assert (=> d!1643200 (= lt!2091071 (isEmpty!31669 (list!19025 (left!42843 (left!42843 lt!2090875)))))))

(assert (=> d!1643200 (= lt!2091071 (= (size!39112 (left!42843 (left!42843 lt!2090875))) 0))))

(assert (=> d!1643200 (= (isEmpty!31667 (left!42843 (left!42843 lt!2090875))) lt!2091071)))

(declare-fun bs!1190681 () Bool)

(assert (= bs!1190681 d!1643200))

(assert (=> bs!1190681 m!6133948))

(assert (=> bs!1190681 m!6133948))

(declare-fun m!6135486 () Bool)

(assert (=> bs!1190681 m!6135486))

(declare-fun m!6135488 () Bool)

(assert (=> bs!1190681 m!6135488))

(assert (=> b!5081020 d!1643200))

(declare-fun d!1643202 () Bool)

(declare-fun lt!2091072 () Int)

(assert (=> d!1643202 (>= lt!2091072 0)))

(declare-fun e!3169850 () Int)

(assert (=> d!1643202 (= lt!2091072 e!3169850)))

(declare-fun c!873014 () Bool)

(assert (=> d!1643202 (= c!873014 ((_ is Nil!58452) lt!2090965))))

(assert (=> d!1643202 (= (size!39113 lt!2090965) lt!2091072)))

(declare-fun b!5081794 () Bool)

(assert (=> b!5081794 (= e!3169850 0)))

(declare-fun b!5081795 () Bool)

(assert (=> b!5081795 (= e!3169850 (+ 1 (size!39113 (t!371393 lt!2090965))))))

(assert (= (and d!1643202 c!873014) b!5081794))

(assert (= (and d!1643202 (not c!873014)) b!5081795))

(declare-fun m!6135490 () Bool)

(assert (=> b!5081795 m!6135490))

(assert (=> b!5081057 d!1643202))

(declare-fun d!1643204 () Bool)

(declare-fun lt!2091073 () Int)

(assert (=> d!1643204 (>= lt!2091073 0)))

(declare-fun e!3169851 () Int)

(assert (=> d!1643204 (= lt!2091073 e!3169851)))

(declare-fun c!873015 () Bool)

(assert (=> d!1643204 (= c!873015 ((_ is Nil!58452) (list!19025 (left!42843 lt!2090875))))))

(assert (=> d!1643204 (= (size!39113 (list!19025 (left!42843 lt!2090875))) lt!2091073)))

(declare-fun b!5081796 () Bool)

(assert (=> b!5081796 (= e!3169851 0)))

(declare-fun b!5081797 () Bool)

(assert (=> b!5081797 (= e!3169851 (+ 1 (size!39113 (t!371393 (list!19025 (left!42843 lt!2090875))))))))

(assert (= (and d!1643204 c!873015) b!5081796))

(assert (= (and d!1643204 (not c!873015)) b!5081797))

(assert (=> b!5081797 m!6135422))

(assert (=> b!5081057 d!1643204))

(declare-fun d!1643206 () Bool)

(declare-fun lt!2091074 () Int)

(assert (=> d!1643206 (>= lt!2091074 0)))

(declare-fun e!3169852 () Int)

(assert (=> d!1643206 (= lt!2091074 e!3169852)))

(declare-fun c!873016 () Bool)

(assert (=> d!1643206 (= c!873016 ((_ is Nil!58452) (list!19025 (right!43173 lt!2090875))))))

(assert (=> d!1643206 (= (size!39113 (list!19025 (right!43173 lt!2090875))) lt!2091074)))

(declare-fun b!5081798 () Bool)

(assert (=> b!5081798 (= e!3169852 0)))

(declare-fun b!5081799 () Bool)

(assert (=> b!5081799 (= e!3169852 (+ 1 (size!39113 (t!371393 (list!19025 (right!43173 lt!2090875))))))))

(assert (= (and d!1643206 c!873016) b!5081798))

(assert (= (and d!1643206 (not c!873016)) b!5081799))

(declare-fun m!6135492 () Bool)

(assert (=> b!5081799 m!6135492))

(assert (=> b!5081057 d!1643206))

(declare-fun d!1643208 () Bool)

(declare-fun res!2163492 () Bool)

(declare-fun e!3169853 () Bool)

(assert (=> d!1643208 (=> res!2163492 e!3169853)))

(assert (=> d!1643208 (= res!2163492 (not ((_ is Node!15582) (right!43173 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1643208 (= (isBalanced!4444 (right!43173 (left!42843 (left!42843 ys!41)))) e!3169853)))

(declare-fun b!5081800 () Bool)

(declare-fun res!2163488 () Bool)

(declare-fun e!3169854 () Bool)

(assert (=> b!5081800 (=> (not res!2163488) (not e!3169854))))

(assert (=> b!5081800 (= res!2163488 (<= (- (height!2159 (left!42843 (right!43173 (left!42843 (left!42843 ys!41))))) (height!2159 (right!43173 (right!43173 (left!42843 (left!42843 ys!41)))))) 1))))

(declare-fun b!5081801 () Bool)

(declare-fun res!2163489 () Bool)

(assert (=> b!5081801 (=> (not res!2163489) (not e!3169854))))

(assert (=> b!5081801 (= res!2163489 (isBalanced!4444 (right!43173 (right!43173 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081802 () Bool)

(declare-fun res!2163491 () Bool)

(assert (=> b!5081802 (=> (not res!2163491) (not e!3169854))))

(assert (=> b!5081802 (= res!2163491 (isBalanced!4444 (left!42843 (right!43173 (left!42843 (left!42843 ys!41))))))))

(declare-fun b!5081803 () Bool)

(assert (=> b!5081803 (= e!3169853 e!3169854)))

(declare-fun res!2163490 () Bool)

(assert (=> b!5081803 (=> (not res!2163490) (not e!3169854))))

(assert (=> b!5081803 (= res!2163490 (<= (- 1) (- (height!2159 (left!42843 (right!43173 (left!42843 (left!42843 ys!41))))) (height!2159 (right!43173 (right!43173 (left!42843 (left!42843 ys!41))))))))))

(declare-fun b!5081804 () Bool)

(declare-fun res!2163493 () Bool)

(assert (=> b!5081804 (=> (not res!2163493) (not e!3169854))))

(assert (=> b!5081804 (= res!2163493 (not (isEmpty!31667 (left!42843 (right!43173 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5081805 () Bool)

(assert (=> b!5081805 (= e!3169854 (not (isEmpty!31667 (right!43173 (right!43173 (left!42843 (left!42843 ys!41)))))))))

(assert (= (and d!1643208 (not res!2163492)) b!5081803))

(assert (= (and b!5081803 res!2163490) b!5081800))

(assert (= (and b!5081800 res!2163488) b!5081802))

(assert (= (and b!5081802 res!2163491) b!5081801))

(assert (= (and b!5081801 res!2163489) b!5081804))

(assert (= (and b!5081804 res!2163493) b!5081805))

(declare-fun m!6135494 () Bool)

(assert (=> b!5081801 m!6135494))

(declare-fun m!6135496 () Bool)

(assert (=> b!5081800 m!6135496))

(declare-fun m!6135498 () Bool)

(assert (=> b!5081800 m!6135498))

(declare-fun m!6135500 () Bool)

(assert (=> b!5081805 m!6135500))

(assert (=> b!5081803 m!6135496))

(assert (=> b!5081803 m!6135498))

(declare-fun m!6135502 () Bool)

(assert (=> b!5081804 m!6135502))

(declare-fun m!6135504 () Bool)

(assert (=> b!5081802 m!6135504))

(assert (=> b!5081098 d!1643208))

(declare-fun b!5081807 () Bool)

(declare-fun e!3169855 () List!58576)

(assert (=> b!5081807 (= e!3169855 (Cons!58452 (h!64900 (list!19025 (left!42843 (right!43173 ys!41)))) (++!12811 (t!371393 (list!19025 (left!42843 (right!43173 ys!41)))) (list!19025 (right!43173 (right!43173 ys!41))))))))

(declare-fun d!1643210 () Bool)

(declare-fun e!3169856 () Bool)

(assert (=> d!1643210 e!3169856))

(declare-fun res!2163495 () Bool)

(assert (=> d!1643210 (=> (not res!2163495) (not e!3169856))))

(declare-fun lt!2091075 () List!58576)

(assert (=> d!1643210 (= res!2163495 (= (content!10428 lt!2091075) ((_ map or) (content!10428 (list!19025 (left!42843 (right!43173 ys!41)))) (content!10428 (list!19025 (right!43173 (right!43173 ys!41)))))))))

(assert (=> d!1643210 (= lt!2091075 e!3169855)))

(declare-fun c!873017 () Bool)

(assert (=> d!1643210 (= c!873017 ((_ is Nil!58452) (list!19025 (left!42843 (right!43173 ys!41)))))))

(assert (=> d!1643210 (= (++!12811 (list!19025 (left!42843 (right!43173 ys!41))) (list!19025 (right!43173 (right!43173 ys!41)))) lt!2091075)))

(declare-fun b!5081806 () Bool)

(assert (=> b!5081806 (= e!3169855 (list!19025 (right!43173 (right!43173 ys!41))))))

(declare-fun b!5081808 () Bool)

(declare-fun res!2163494 () Bool)

(assert (=> b!5081808 (=> (not res!2163494) (not e!3169856))))

(assert (=> b!5081808 (= res!2163494 (= (size!39113 lt!2091075) (+ (size!39113 (list!19025 (left!42843 (right!43173 ys!41)))) (size!39113 (list!19025 (right!43173 (right!43173 ys!41)))))))))

(declare-fun b!5081809 () Bool)

(assert (=> b!5081809 (= e!3169856 (or (not (= (list!19025 (right!43173 (right!43173 ys!41))) Nil!58452)) (= lt!2091075 (list!19025 (left!42843 (right!43173 ys!41))))))))

(assert (= (and d!1643210 c!873017) b!5081806))

(assert (= (and d!1643210 (not c!873017)) b!5081807))

(assert (= (and d!1643210 res!2163495) b!5081808))

(assert (= (and b!5081808 res!2163494) b!5081809))

(assert (=> b!5081807 m!6133800))

(declare-fun m!6135506 () Bool)

(assert (=> b!5081807 m!6135506))

(declare-fun m!6135508 () Bool)

(assert (=> d!1643210 m!6135508))

(assert (=> d!1643210 m!6133798))

(declare-fun m!6135510 () Bool)

(assert (=> d!1643210 m!6135510))

(assert (=> d!1643210 m!6133800))

(declare-fun m!6135512 () Bool)

(assert (=> d!1643210 m!6135512))

(declare-fun m!6135514 () Bool)

(assert (=> b!5081808 m!6135514))

(assert (=> b!5081808 m!6133798))

(declare-fun m!6135516 () Bool)

(assert (=> b!5081808 m!6135516))

(assert (=> b!5081808 m!6133800))

(declare-fun m!6135518 () Bool)

(assert (=> b!5081808 m!6135518))

(assert (=> b!5080997 d!1643210))

(declare-fun b!5081810 () Bool)

(declare-fun e!3169857 () List!58576)

(assert (=> b!5081810 (= e!3169857 Nil!58452)))

(declare-fun b!5081813 () Bool)

(declare-fun e!3169858 () List!58576)

(assert (=> b!5081813 (= e!3169858 (++!12811 (list!19025 (left!42843 (left!42843 (right!43173 ys!41)))) (list!19025 (right!43173 (left!42843 (right!43173 ys!41))))))))

(declare-fun d!1643212 () Bool)

(declare-fun c!873018 () Bool)

(assert (=> d!1643212 (= c!873018 ((_ is Empty!15582) (left!42843 (right!43173 ys!41))))))

(assert (=> d!1643212 (= (list!19025 (left!42843 (right!43173 ys!41))) e!3169857)))

(declare-fun b!5081811 () Bool)

(assert (=> b!5081811 (= e!3169857 e!3169858)))

(declare-fun c!873019 () Bool)

(assert (=> b!5081811 (= c!873019 ((_ is Leaf!25878) (left!42843 (right!43173 ys!41))))))

(declare-fun b!5081812 () Bool)

(assert (=> b!5081812 (= e!3169858 (list!19027 (xs!18954 (left!42843 (right!43173 ys!41)))))))

(assert (= (and d!1643212 c!873018) b!5081810))

(assert (= (and d!1643212 (not c!873018)) b!5081811))

(assert (= (and b!5081811 c!873019) b!5081812))

(assert (= (and b!5081811 (not c!873019)) b!5081813))

(declare-fun m!6135520 () Bool)

(assert (=> b!5081813 m!6135520))

(declare-fun m!6135522 () Bool)

(assert (=> b!5081813 m!6135522))

(assert (=> b!5081813 m!6135520))

(assert (=> b!5081813 m!6135522))

(declare-fun m!6135524 () Bool)

(assert (=> b!5081813 m!6135524))

(declare-fun m!6135526 () Bool)

(assert (=> b!5081812 m!6135526))

(assert (=> b!5080997 d!1643212))

(declare-fun b!5081814 () Bool)

(declare-fun e!3169859 () List!58576)

(assert (=> b!5081814 (= e!3169859 Nil!58452)))

(declare-fun b!5081817 () Bool)

(declare-fun e!3169860 () List!58576)

(assert (=> b!5081817 (= e!3169860 (++!12811 (list!19025 (left!42843 (right!43173 (right!43173 ys!41)))) (list!19025 (right!43173 (right!43173 (right!43173 ys!41))))))))

(declare-fun d!1643214 () Bool)

(declare-fun c!873020 () Bool)

(assert (=> d!1643214 (= c!873020 ((_ is Empty!15582) (right!43173 (right!43173 ys!41))))))

(assert (=> d!1643214 (= (list!19025 (right!43173 (right!43173 ys!41))) e!3169859)))

(declare-fun b!5081815 () Bool)

(assert (=> b!5081815 (= e!3169859 e!3169860)))

(declare-fun c!873021 () Bool)

(assert (=> b!5081815 (= c!873021 ((_ is Leaf!25878) (right!43173 (right!43173 ys!41))))))

(declare-fun b!5081816 () Bool)

(assert (=> b!5081816 (= e!3169860 (list!19027 (xs!18954 (right!43173 (right!43173 ys!41)))))))

(assert (= (and d!1643214 c!873020) b!5081814))

(assert (= (and d!1643214 (not c!873020)) b!5081815))

(assert (= (and b!5081815 c!873021) b!5081816))

(assert (= (and b!5081815 (not c!873021)) b!5081817))

(declare-fun m!6135528 () Bool)

(assert (=> b!5081817 m!6135528))

(declare-fun m!6135530 () Bool)

(assert (=> b!5081817 m!6135530))

(assert (=> b!5081817 m!6135528))

(assert (=> b!5081817 m!6135530))

(declare-fun m!6135532 () Bool)

(assert (=> b!5081817 m!6135532))

(assert (=> b!5081816 m!6135354))

(assert (=> b!5080997 d!1643214))

(assert (=> b!5081134 d!1642668))

(declare-fun d!1643216 () Bool)

(assert (=> d!1643216 (= (inv!77655 (xs!18954 (right!43173 (left!42843 ys!41)))) (<= (size!39113 (innerList!15670 (xs!18954 (right!43173 (left!42843 ys!41))))) 2147483647))))

(declare-fun bs!1190682 () Bool)

(assert (= bs!1190682 d!1643216))

(declare-fun m!6135534 () Bool)

(assert (=> bs!1190682 m!6135534))

(assert (=> b!5081260 d!1643216))

(assert (=> d!1642588 d!1643052))

(assert (=> d!1642588 d!1643054))

(assert (=> b!5080770 d!1642528))

(assert (=> b!5080770 d!1642532))

(declare-fun d!1643218 () Bool)

(declare-fun c!873022 () Bool)

(assert (=> d!1643218 (= c!873022 ((_ is Nil!58452) lt!2090970))))

(declare-fun e!3169861 () (InoxSet T!105244))

(assert (=> d!1643218 (= (content!10428 lt!2090970) e!3169861)))

(declare-fun b!5081818 () Bool)

(assert (=> b!5081818 (= e!3169861 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081819 () Bool)

(assert (=> b!5081819 (= e!3169861 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 lt!2090970) true) (content!10428 (t!371393 lt!2090970))))))

(assert (= (and d!1643218 c!873022) b!5081818))

(assert (= (and d!1643218 (not c!873022)) b!5081819))

(declare-fun m!6135536 () Bool)

(assert (=> b!5081819 m!6135536))

(declare-fun m!6135538 () Bool)

(assert (=> b!5081819 m!6135538))

(assert (=> d!1642672 d!1643218))

(declare-fun d!1643220 () Bool)

(declare-fun c!873023 () Bool)

(assert (=> d!1643220 (= c!873023 ((_ is Nil!58452) (list!19025 lt!2090879)))))

(declare-fun e!3169862 () (InoxSet T!105244))

(assert (=> d!1643220 (= (content!10428 (list!19025 lt!2090879)) e!3169862)))

(declare-fun b!5081820 () Bool)

(assert (=> b!5081820 (= e!3169862 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081821 () Bool)

(assert (=> b!5081821 (= e!3169862 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 lt!2090879)) true) (content!10428 (t!371393 (list!19025 lt!2090879)))))))

(assert (= (and d!1643220 c!873023) b!5081820))

(assert (= (and d!1643220 (not c!873023)) b!5081821))

(declare-fun m!6135540 () Bool)

(assert (=> b!5081821 m!6135540))

(declare-fun m!6135542 () Bool)

(assert (=> b!5081821 m!6135542))

(assert (=> d!1642672 d!1643220))

(declare-fun d!1643222 () Bool)

(declare-fun c!873024 () Bool)

(assert (=> d!1643222 (= c!873024 ((_ is Nil!58452) (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(declare-fun e!3169863 () (InoxSet T!105244))

(assert (=> d!1643222 (= (content!10428 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) e!3169863)))

(declare-fun b!5081822 () Bool)

(assert (=> b!5081822 (= e!3169863 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081823 () Bool)

(assert (=> b!5081823 (= e!3169863 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) true) (content!10428 (t!371393 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))))

(assert (= (and d!1643222 c!873024) b!5081822))

(assert (= (and d!1643222 (not c!873024)) b!5081823))

(declare-fun m!6135544 () Bool)

(assert (=> b!5081823 m!6135544))

(declare-fun m!6135546 () Bool)

(assert (=> b!5081823 m!6135546))

(assert (=> d!1642672 d!1643222))

(declare-fun d!1643224 () Bool)

(declare-fun lt!2091076 () Int)

(assert (=> d!1643224 (>= lt!2091076 0)))

(declare-fun e!3169864 () Int)

(assert (=> d!1643224 (= lt!2091076 e!3169864)))

(declare-fun c!873025 () Bool)

(assert (=> d!1643224 (= c!873025 ((_ is Nil!58452) (list!19027 (xs!18954 ys!41))))))

(assert (=> d!1643224 (= (size!39113 (list!19027 (xs!18954 ys!41))) lt!2091076)))

(declare-fun b!5081824 () Bool)

(assert (=> b!5081824 (= e!3169864 0)))

(declare-fun b!5081825 () Bool)

(assert (=> b!5081825 (= e!3169864 (+ 1 (size!39113 (t!371393 (list!19027 (xs!18954 ys!41))))))))

(assert (= (and d!1643224 c!873025) b!5081824))

(assert (= (and d!1643224 (not c!873025)) b!5081825))

(declare-fun m!6135548 () Bool)

(assert (=> b!5081825 m!6135548))

(assert (=> b!5080858 d!1643224))

(assert (=> b!5080858 d!1642504))

(declare-fun d!1643226 () Bool)

(declare-fun res!2163496 () Bool)

(declare-fun e!3169865 () Bool)

(assert (=> d!1643226 (=> (not res!2163496) (not e!3169865))))

(assert (=> d!1643226 (= res!2163496 (= (csize!31394 (left!42843 (right!43173 ys!41))) (+ (size!39112 (left!42843 (left!42843 (right!43173 ys!41)))) (size!39112 (right!43173 (left!42843 (right!43173 ys!41)))))))))

(assert (=> d!1643226 (= (inv!77656 (left!42843 (right!43173 ys!41))) e!3169865)))

(declare-fun b!5081826 () Bool)

(declare-fun res!2163497 () Bool)

(assert (=> b!5081826 (=> (not res!2163497) (not e!3169865))))

(assert (=> b!5081826 (= res!2163497 (and (not (= (left!42843 (left!42843 (right!43173 ys!41))) Empty!15582)) (not (= (right!43173 (left!42843 (right!43173 ys!41))) Empty!15582))))))

(declare-fun b!5081827 () Bool)

(declare-fun res!2163498 () Bool)

(assert (=> b!5081827 (=> (not res!2163498) (not e!3169865))))

(assert (=> b!5081827 (= res!2163498 (= (cheight!15793 (left!42843 (right!43173 ys!41))) (+ (max!0 (height!2159 (left!42843 (left!42843 (right!43173 ys!41)))) (height!2159 (right!43173 (left!42843 (right!43173 ys!41))))) 1)))))

(declare-fun b!5081828 () Bool)

(assert (=> b!5081828 (= e!3169865 (<= 0 (cheight!15793 (left!42843 (right!43173 ys!41)))))))

(assert (= (and d!1643226 res!2163496) b!5081826))

(assert (= (and b!5081826 res!2163497) b!5081827))

(assert (= (and b!5081827 res!2163498) b!5081828))

(declare-fun m!6135550 () Bool)

(assert (=> d!1643226 m!6135550))

(declare-fun m!6135552 () Bool)

(assert (=> d!1643226 m!6135552))

(declare-fun m!6135554 () Bool)

(assert (=> b!5081827 m!6135554))

(declare-fun m!6135556 () Bool)

(assert (=> b!5081827 m!6135556))

(assert (=> b!5081827 m!6135554))

(assert (=> b!5081827 m!6135556))

(declare-fun m!6135558 () Bool)

(assert (=> b!5081827 m!6135558))

(assert (=> b!5081091 d!1643226))

(declare-fun b!5081830 () Bool)

(declare-fun e!3169866 () List!58576)

(assert (=> b!5081830 (= e!3169866 (Cons!58452 (h!64900 (list!19025 (left!42843 lt!2090909))) (++!12811 (t!371393 (list!19025 (left!42843 lt!2090909))) (list!19025 (right!43173 lt!2090909)))))))

(declare-fun d!1643228 () Bool)

(declare-fun e!3169867 () Bool)

(assert (=> d!1643228 e!3169867))

(declare-fun res!2163500 () Bool)

(assert (=> d!1643228 (=> (not res!2163500) (not e!3169867))))

(declare-fun lt!2091077 () List!58576)

(assert (=> d!1643228 (= res!2163500 (= (content!10428 lt!2091077) ((_ map or) (content!10428 (list!19025 (left!42843 lt!2090909))) (content!10428 (list!19025 (right!43173 lt!2090909))))))))

(assert (=> d!1643228 (= lt!2091077 e!3169866)))

(declare-fun c!873026 () Bool)

(assert (=> d!1643228 (= c!873026 ((_ is Nil!58452) (list!19025 (left!42843 lt!2090909))))))

(assert (=> d!1643228 (= (++!12811 (list!19025 (left!42843 lt!2090909)) (list!19025 (right!43173 lt!2090909))) lt!2091077)))

(declare-fun b!5081829 () Bool)

(assert (=> b!5081829 (= e!3169866 (list!19025 (right!43173 lt!2090909)))))

(declare-fun b!5081831 () Bool)

(declare-fun res!2163499 () Bool)

(assert (=> b!5081831 (=> (not res!2163499) (not e!3169867))))

(assert (=> b!5081831 (= res!2163499 (= (size!39113 lt!2091077) (+ (size!39113 (list!19025 (left!42843 lt!2090909))) (size!39113 (list!19025 (right!43173 lt!2090909))))))))

(declare-fun b!5081832 () Bool)

(assert (=> b!5081832 (= e!3169867 (or (not (= (list!19025 (right!43173 lt!2090909)) Nil!58452)) (= lt!2091077 (list!19025 (left!42843 lt!2090909)))))))

(assert (= (and d!1643228 c!873026) b!5081829))

(assert (= (and d!1643228 (not c!873026)) b!5081830))

(assert (= (and d!1643228 res!2163500) b!5081831))

(assert (= (and b!5081831 res!2163499) b!5081832))

(assert (=> b!5081830 m!6133438))

(declare-fun m!6135560 () Bool)

(assert (=> b!5081830 m!6135560))

(declare-fun m!6135562 () Bool)

(assert (=> d!1643228 m!6135562))

(assert (=> d!1643228 m!6133436))

(declare-fun m!6135564 () Bool)

(assert (=> d!1643228 m!6135564))

(assert (=> d!1643228 m!6133438))

(declare-fun m!6135566 () Bool)

(assert (=> d!1643228 m!6135566))

(declare-fun m!6135568 () Bool)

(assert (=> b!5081831 m!6135568))

(assert (=> b!5081831 m!6133436))

(declare-fun m!6135570 () Bool)

(assert (=> b!5081831 m!6135570))

(assert (=> b!5081831 m!6133438))

(declare-fun m!6135572 () Bool)

(assert (=> b!5081831 m!6135572))

(assert (=> b!5080810 d!1643228))

(declare-fun b!5081833 () Bool)

(declare-fun e!3169868 () List!58576)

(assert (=> b!5081833 (= e!3169868 Nil!58452)))

(declare-fun b!5081836 () Bool)

(declare-fun e!3169869 () List!58576)

(assert (=> b!5081836 (= e!3169869 (++!12811 (list!19025 (left!42843 (left!42843 lt!2090909))) (list!19025 (right!43173 (left!42843 lt!2090909)))))))

(declare-fun d!1643230 () Bool)

(declare-fun c!873027 () Bool)

(assert (=> d!1643230 (= c!873027 ((_ is Empty!15582) (left!42843 lt!2090909)))))

(assert (=> d!1643230 (= (list!19025 (left!42843 lt!2090909)) e!3169868)))

(declare-fun b!5081834 () Bool)

(assert (=> b!5081834 (= e!3169868 e!3169869)))

(declare-fun c!873028 () Bool)

(assert (=> b!5081834 (= c!873028 ((_ is Leaf!25878) (left!42843 lt!2090909)))))

(declare-fun b!5081835 () Bool)

(assert (=> b!5081835 (= e!3169869 (list!19027 (xs!18954 (left!42843 lt!2090909))))))

(assert (= (and d!1643230 c!873027) b!5081833))

(assert (= (and d!1643230 (not c!873027)) b!5081834))

(assert (= (and b!5081834 c!873028) b!5081835))

(assert (= (and b!5081834 (not c!873028)) b!5081836))

(declare-fun m!6135574 () Bool)

(assert (=> b!5081836 m!6135574))

(declare-fun m!6135576 () Bool)

(assert (=> b!5081836 m!6135576))

(assert (=> b!5081836 m!6135574))

(assert (=> b!5081836 m!6135576))

(declare-fun m!6135578 () Bool)

(assert (=> b!5081836 m!6135578))

(declare-fun m!6135580 () Bool)

(assert (=> b!5081835 m!6135580))

(assert (=> b!5080810 d!1643230))

(declare-fun b!5081837 () Bool)

(declare-fun e!3169870 () List!58576)

(assert (=> b!5081837 (= e!3169870 Nil!58452)))

(declare-fun b!5081840 () Bool)

(declare-fun e!3169871 () List!58576)

(assert (=> b!5081840 (= e!3169871 (++!12811 (list!19025 (left!42843 (right!43173 lt!2090909))) (list!19025 (right!43173 (right!43173 lt!2090909)))))))

(declare-fun d!1643232 () Bool)

(declare-fun c!873029 () Bool)

(assert (=> d!1643232 (= c!873029 ((_ is Empty!15582) (right!43173 lt!2090909)))))

(assert (=> d!1643232 (= (list!19025 (right!43173 lt!2090909)) e!3169870)))

(declare-fun b!5081838 () Bool)

(assert (=> b!5081838 (= e!3169870 e!3169871)))

(declare-fun c!873030 () Bool)

(assert (=> b!5081838 (= c!873030 ((_ is Leaf!25878) (right!43173 lt!2090909)))))

(declare-fun b!5081839 () Bool)

(assert (=> b!5081839 (= e!3169871 (list!19027 (xs!18954 (right!43173 lt!2090909))))))

(assert (= (and d!1643232 c!873029) b!5081837))

(assert (= (and d!1643232 (not c!873029)) b!5081838))

(assert (= (and b!5081838 c!873030) b!5081839))

(assert (= (and b!5081838 (not c!873030)) b!5081840))

(declare-fun m!6135582 () Bool)

(assert (=> b!5081840 m!6135582))

(declare-fun m!6135584 () Bool)

(assert (=> b!5081840 m!6135584))

(assert (=> b!5081840 m!6135582))

(assert (=> b!5081840 m!6135584))

(declare-fun m!6135586 () Bool)

(assert (=> b!5081840 m!6135586))

(declare-fun m!6135588 () Bool)

(assert (=> b!5081839 m!6135588))

(assert (=> b!5080810 d!1643232))

(assert (=> b!5081189 d!1642914))

(assert (=> b!5081189 d!1642916))

(declare-fun d!1643234 () Bool)

(assert (=> d!1643234 (= (height!2159 lt!2090930) (ite ((_ is Empty!15582) lt!2090930) 0 (ite ((_ is Leaf!25878) lt!2090930) 1 (cheight!15793 lt!2090930))))))

(assert (=> b!5080829 d!1643234))

(declare-fun d!1643236 () Bool)

(assert (=> d!1643236 (= (max!0 (height!2159 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (height!2159 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (ite (< (height!2159 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (height!2159 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (height!2159 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) (height!2159 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))))

(assert (=> b!5080829 d!1643236))

(assert (=> b!5080829 d!1643102))

(assert (=> b!5080829 d!1643100))

(declare-fun b!5081842 () Bool)

(declare-fun e!3169872 () List!58576)

(assert (=> b!5081842 (= e!3169872 (Cons!58452 (h!64900 call!354188) (++!12811 (t!371393 call!354188) (list!19025 (right!43173 (left!42843 ys!41))))))))

(declare-fun d!1643238 () Bool)

(declare-fun e!3169873 () Bool)

(assert (=> d!1643238 e!3169873))

(declare-fun res!2163502 () Bool)

(assert (=> d!1643238 (=> (not res!2163502) (not e!3169873))))

(declare-fun lt!2091078 () List!58576)

(assert (=> d!1643238 (= res!2163502 (= (content!10428 lt!2091078) ((_ map or) (content!10428 call!354188) (content!10428 (list!19025 (right!43173 (left!42843 ys!41)))))))))

(assert (=> d!1643238 (= lt!2091078 e!3169872)))

(declare-fun c!873031 () Bool)

(assert (=> d!1643238 (= c!873031 ((_ is Nil!58452) call!354188))))

(assert (=> d!1643238 (= (++!12811 call!354188 (list!19025 (right!43173 (left!42843 ys!41)))) lt!2091078)))

(declare-fun b!5081841 () Bool)

(assert (=> b!5081841 (= e!3169872 (list!19025 (right!43173 (left!42843 ys!41))))))

(declare-fun b!5081843 () Bool)

(declare-fun res!2163501 () Bool)

(assert (=> b!5081843 (=> (not res!2163501) (not e!3169873))))

(assert (=> b!5081843 (= res!2163501 (= (size!39113 lt!2091078) (+ (size!39113 call!354188) (size!39113 (list!19025 (right!43173 (left!42843 ys!41)))))))))

(declare-fun b!5081844 () Bool)

(assert (=> b!5081844 (= e!3169873 (or (not (= (list!19025 (right!43173 (left!42843 ys!41))) Nil!58452)) (= lt!2091078 call!354188)))))

(assert (= (and d!1643238 c!873031) b!5081841))

(assert (= (and d!1643238 (not c!873031)) b!5081842))

(assert (= (and d!1643238 res!2163502) b!5081843))

(assert (= (and b!5081843 res!2163501) b!5081844))

(assert (=> b!5081842 m!6133018))

(declare-fun m!6135590 () Bool)

(assert (=> b!5081842 m!6135590))

(declare-fun m!6135592 () Bool)

(assert (=> d!1643238 m!6135592))

(declare-fun m!6135594 () Bool)

(assert (=> d!1643238 m!6135594))

(assert (=> d!1643238 m!6133018))

(assert (=> d!1643238 m!6133780))

(declare-fun m!6135596 () Bool)

(assert (=> b!5081843 m!6135596))

(declare-fun m!6135598 () Bool)

(assert (=> b!5081843 m!6135598))

(assert (=> b!5081843 m!6133018))

(assert (=> b!5081843 m!6133786))

(assert (=> bm!354184 d!1643238))

(declare-fun e!3169874 () List!58576)

(declare-fun b!5081846 () Bool)

(assert (=> b!5081846 (= e!3169874 (Cons!58452 (h!64900 call!354176) (++!12811 (t!371393 call!354176) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)))))))

(declare-fun d!1643240 () Bool)

(declare-fun e!3169875 () Bool)

(assert (=> d!1643240 e!3169875))

(declare-fun res!2163504 () Bool)

(assert (=> d!1643240 (=> (not res!2163504) (not e!3169875))))

(declare-fun lt!2091079 () List!58576)

(assert (=> d!1643240 (= res!2163504 (= (content!10428 lt!2091079) ((_ map or) (content!10428 call!354176) (content!10428 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))))

(assert (=> d!1643240 (= lt!2091079 e!3169874)))

(declare-fun c!873032 () Bool)

(assert (=> d!1643240 (= c!873032 ((_ is Nil!58452) call!354176))))

(assert (=> d!1643240 (= (++!12811 call!354176 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))) lt!2091079)))

(declare-fun b!5081845 () Bool)

(assert (=> b!5081845 (= e!3169874 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)))))

(declare-fun b!5081847 () Bool)

(declare-fun res!2163503 () Bool)

(assert (=> b!5081847 (=> (not res!2163503) (not e!3169875))))

(assert (=> b!5081847 (= res!2163503 (= (size!39113 lt!2091079) (+ (size!39113 call!354176) (size!39113 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))))

(declare-fun b!5081848 () Bool)

(assert (=> b!5081848 (= e!3169875 (or (not (= (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)) Nil!58452)) (= lt!2091079 call!354176)))))

(assert (= (and d!1643240 c!873032) b!5081845))

(assert (= (and d!1643240 (not c!873032)) b!5081846))

(assert (= (and d!1643240 res!2163504) b!5081847))

(assert (= (and b!5081847 res!2163503) b!5081848))

(assert (=> b!5081846 m!6133038))

(declare-fun m!6135600 () Bool)

(assert (=> b!5081846 m!6135600))

(declare-fun m!6135602 () Bool)

(assert (=> d!1643240 m!6135602))

(declare-fun m!6135604 () Bool)

(assert (=> d!1643240 m!6135604))

(assert (=> d!1643240 m!6133038))

(assert (=> d!1643240 m!6135288))

(declare-fun m!6135606 () Bool)

(assert (=> b!5081847 m!6135606))

(declare-fun m!6135608 () Bool)

(assert (=> b!5081847 m!6135608))

(assert (=> b!5081847 m!6133038))

(assert (=> b!5081847 m!6135292))

(assert (=> bm!354172 d!1643240))

(declare-fun d!1643242 () Bool)

(assert (=> d!1643242 (= (max!0 (height!2159 (left!42843 (left!42843 ys!41))) (height!2159 (right!43173 (left!42843 ys!41)))) (ite (< (height!2159 (left!42843 (left!42843 ys!41))) (height!2159 (right!43173 (left!42843 ys!41)))) (height!2159 (right!43173 (left!42843 ys!41))) (height!2159 (left!42843 (left!42843 ys!41)))))))

(assert (=> b!5081009 d!1643242))

(assert (=> b!5081009 d!1642560))

(assert (=> b!5081009 d!1642678))

(declare-fun d!1643244 () Bool)

(assert (=> d!1643244 (= (inv!77655 (xs!18954 (left!42843 (right!43173 xs!286)))) (<= (size!39113 (innerList!15670 (xs!18954 (left!42843 (right!43173 xs!286))))) 2147483647))))

(declare-fun bs!1190683 () Bool)

(assert (= bs!1190683 d!1643244))

(declare-fun m!6135610 () Bool)

(assert (=> bs!1190683 m!6135610))

(assert (=> b!5081242 d!1643244))

(declare-fun d!1643246 () Bool)

(declare-fun res!2163509 () Bool)

(declare-fun e!3169876 () Bool)

(assert (=> d!1643246 (=> res!2163509 e!3169876)))

(assert (=> d!1643246 (= res!2163509 (not ((_ is Node!15582) (right!43173 (right!43173 ys!41)))))))

(assert (=> d!1643246 (= (isBalanced!4444 (right!43173 (right!43173 ys!41))) e!3169876)))

(declare-fun b!5081849 () Bool)

(declare-fun res!2163505 () Bool)

(declare-fun e!3169877 () Bool)

(assert (=> b!5081849 (=> (not res!2163505) (not e!3169877))))

(assert (=> b!5081849 (= res!2163505 (<= (- (height!2159 (left!42843 (right!43173 (right!43173 ys!41)))) (height!2159 (right!43173 (right!43173 (right!43173 ys!41))))) 1))))

(declare-fun b!5081850 () Bool)

(declare-fun res!2163506 () Bool)

(assert (=> b!5081850 (=> (not res!2163506) (not e!3169877))))

(assert (=> b!5081850 (= res!2163506 (isBalanced!4444 (right!43173 (right!43173 (right!43173 ys!41)))))))

(declare-fun b!5081851 () Bool)

(declare-fun res!2163508 () Bool)

(assert (=> b!5081851 (=> (not res!2163508) (not e!3169877))))

(assert (=> b!5081851 (= res!2163508 (isBalanced!4444 (left!42843 (right!43173 (right!43173 ys!41)))))))

(declare-fun b!5081852 () Bool)

(assert (=> b!5081852 (= e!3169876 e!3169877)))

(declare-fun res!2163507 () Bool)

(assert (=> b!5081852 (=> (not res!2163507) (not e!3169877))))

(assert (=> b!5081852 (= res!2163507 (<= (- 1) (- (height!2159 (left!42843 (right!43173 (right!43173 ys!41)))) (height!2159 (right!43173 (right!43173 (right!43173 ys!41)))))))))

(declare-fun b!5081853 () Bool)

(declare-fun res!2163510 () Bool)

(assert (=> b!5081853 (=> (not res!2163510) (not e!3169877))))

(assert (=> b!5081853 (= res!2163510 (not (isEmpty!31667 (left!42843 (right!43173 (right!43173 ys!41))))))))

(declare-fun b!5081854 () Bool)

(assert (=> b!5081854 (= e!3169877 (not (isEmpty!31667 (right!43173 (right!43173 (right!43173 ys!41))))))))

(assert (= (and d!1643246 (not res!2163509)) b!5081852))

(assert (= (and b!5081852 res!2163507) b!5081849))

(assert (= (and b!5081849 res!2163505) b!5081851))

(assert (= (and b!5081851 res!2163508) b!5081850))

(assert (= (and b!5081850 res!2163506) b!5081853))

(assert (= (and b!5081853 res!2163510) b!5081854))

(declare-fun m!6135612 () Bool)

(assert (=> b!5081850 m!6135612))

(assert (=> b!5081849 m!6134788))

(assert (=> b!5081849 m!6134790))

(declare-fun m!6135614 () Bool)

(assert (=> b!5081854 m!6135614))

(assert (=> b!5081852 m!6134788))

(assert (=> b!5081852 m!6134790))

(declare-fun m!6135616 () Bool)

(assert (=> b!5081853 m!6135616))

(declare-fun m!6135618 () Bool)

(assert (=> b!5081851 m!6135618))

(assert (=> b!5080951 d!1643246))

(declare-fun b!5081856 () Bool)

(declare-fun e!3169878 () List!58576)

(assert (=> b!5081856 (= e!3169878 (Cons!58452 (h!64900 (list!19025 (right!43173 xs!286))) (++!12811 (t!371393 (list!19025 (right!43173 xs!286))) (list!19025 ys!41))))))

(declare-fun d!1643248 () Bool)

(declare-fun e!3169879 () Bool)

(assert (=> d!1643248 e!3169879))

(declare-fun res!2163512 () Bool)

(assert (=> d!1643248 (=> (not res!2163512) (not e!3169879))))

(declare-fun lt!2091080 () List!58576)

(assert (=> d!1643248 (= res!2163512 (= (content!10428 lt!2091080) ((_ map or) (content!10428 (list!19025 (right!43173 xs!286))) (content!10428 (list!19025 ys!41)))))))

(assert (=> d!1643248 (= lt!2091080 e!3169878)))

(declare-fun c!873033 () Bool)

(assert (=> d!1643248 (= c!873033 ((_ is Nil!58452) (list!19025 (right!43173 xs!286))))))

(assert (=> d!1643248 (= (++!12811 (list!19025 (right!43173 xs!286)) (list!19025 ys!41)) lt!2091080)))

(declare-fun b!5081855 () Bool)

(assert (=> b!5081855 (= e!3169878 (list!19025 ys!41))))

(declare-fun b!5081857 () Bool)

(declare-fun res!2163511 () Bool)

(assert (=> b!5081857 (=> (not res!2163511) (not e!3169879))))

(assert (=> b!5081857 (= res!2163511 (= (size!39113 lt!2091080) (+ (size!39113 (list!19025 (right!43173 xs!286))) (size!39113 (list!19025 ys!41)))))))

(declare-fun b!5081858 () Bool)

(assert (=> b!5081858 (= e!3169879 (or (not (= (list!19025 ys!41) Nil!58452)) (= lt!2091080 (list!19025 (right!43173 xs!286)))))))

(assert (= (and d!1643248 c!873033) b!5081855))

(assert (= (and d!1643248 (not c!873033)) b!5081856))

(assert (= (and d!1643248 res!2163512) b!5081857))

(assert (= (and b!5081857 res!2163511) b!5081858))

(assert (=> b!5081856 m!6132964))

(declare-fun m!6135620 () Bool)

(assert (=> b!5081856 m!6135620))

(declare-fun m!6135622 () Bool)

(assert (=> d!1643248 m!6135622))

(assert (=> d!1643248 m!6133032))

(assert (=> d!1643248 m!6133824))

(assert (=> d!1643248 m!6132964))

(assert (=> d!1643248 m!6133322))

(declare-fun m!6135624 () Bool)

(assert (=> b!5081857 m!6135624))

(assert (=> b!5081857 m!6133032))

(assert (=> b!5081857 m!6133830))

(assert (=> b!5081857 m!6132964))

(assert (=> b!5081857 m!6133332))

(assert (=> bm!354139 d!1643248))

(assert (=> d!1642498 d!1643224))

(assert (=> d!1642498 d!1642504))

(declare-fun d!1643250 () Bool)

(declare-fun lt!2091081 () Int)

(assert (=> d!1643250 (= lt!2091081 (size!39113 (list!19025 (left!42843 (right!43173 ys!41)))))))

(assert (=> d!1643250 (= lt!2091081 (ite ((_ is Empty!15582) (left!42843 (right!43173 ys!41))) 0 (ite ((_ is Leaf!25878) (left!42843 (right!43173 ys!41))) (csize!31395 (left!42843 (right!43173 ys!41))) (csize!31394 (left!42843 (right!43173 ys!41))))))))

(assert (=> d!1643250 (= (size!39112 (left!42843 (right!43173 ys!41))) lt!2091081)))

(declare-fun bs!1190684 () Bool)

(assert (= bs!1190684 d!1643250))

(assert (=> bs!1190684 m!6133798))

(assert (=> bs!1190684 m!6133798))

(assert (=> bs!1190684 m!6135516))

(assert (=> d!1642660 d!1643250))

(declare-fun d!1643252 () Bool)

(declare-fun lt!2091082 () Int)

(assert (=> d!1643252 (= lt!2091082 (size!39113 (list!19025 (right!43173 (right!43173 ys!41)))))))

(assert (=> d!1643252 (= lt!2091082 (ite ((_ is Empty!15582) (right!43173 (right!43173 ys!41))) 0 (ite ((_ is Leaf!25878) (right!43173 (right!43173 ys!41))) (csize!31395 (right!43173 (right!43173 ys!41))) (csize!31394 (right!43173 (right!43173 ys!41))))))))

(assert (=> d!1643252 (= (size!39112 (right!43173 (right!43173 ys!41))) lt!2091082)))

(declare-fun bs!1190685 () Bool)

(assert (= bs!1190685 d!1643252))

(assert (=> bs!1190685 m!6133800))

(assert (=> bs!1190685 m!6133800))

(assert (=> bs!1190685 m!6135518))

(assert (=> d!1642660 d!1643252))

(declare-fun d!1643254 () Bool)

(assert (=> d!1643254 (= (max!0 (height!2159 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) (height!2159 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))) (ite (< (height!2159 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) (height!2159 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))) (height!2159 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) (height!2159 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)))))))

(assert (=> b!5081175 d!1643254))

(declare-fun lt!2091083 () Int)

(declare-fun d!1643256 () Bool)

(assert (=> d!1643256 (= lt!2091083 (size!39113 (list!19025 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)))))))

(assert (=> d!1643256 (= lt!2091083 (ite ((_ is Empty!15582) (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) 0 (ite ((_ is Leaf!25878) (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) (csize!31395 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) (csize!31394 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))))))))

(assert (=> d!1643256 (= (size!39112 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) lt!2091083)))

(declare-fun bs!1190686 () Bool)

(assert (= bs!1190686 d!1643256))

(assert (=> bs!1190686 m!6134172))

(assert (=> bs!1190686 m!6134172))

(declare-fun m!6135626 () Bool)

(assert (=> bs!1190686 m!6135626))

(assert (=> b!5081175 d!1643256))

(declare-fun d!1643258 () Bool)

(assert (=> d!1643258 (= (height!2159 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) (ite ((_ is Empty!15582) (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) 0 (ite ((_ is Leaf!25878) (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) 1 (cheight!15793 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))))))))

(assert (=> b!5081175 d!1643258))

(declare-fun d!1643260 () Bool)

(assert (=> d!1643260 (= (height!2159 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) (ite ((_ is Empty!15582) (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) 0 (ite ((_ is Leaf!25878) (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) 1 (cheight!15793 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))))))))

(assert (=> b!5081175 d!1643260))

(declare-fun lt!2091084 () Int)

(declare-fun d!1643262 () Bool)

(assert (=> d!1643262 (= lt!2091084 (size!39113 (list!19025 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))))))

(assert (=> d!1643262 (= lt!2091084 (ite ((_ is Empty!15582) (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) 0 (ite ((_ is Leaf!25878) (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) (csize!31395 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) (csize!31394 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))))))))

(assert (=> d!1643262 (= (size!39112 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) lt!2091084)))

(declare-fun bs!1190687 () Bool)

(assert (= bs!1190687 d!1643262))

(assert (=> bs!1190687 m!6134174))

(assert (=> bs!1190687 m!6134174))

(declare-fun m!6135628 () Bool)

(assert (=> bs!1190687 m!6135628))

(assert (=> b!5081175 d!1643262))

(declare-fun b!5081860 () Bool)

(declare-fun e!3169880 () List!58576)

(assert (=> b!5081860 (= e!3169880 (Cons!58452 (h!64900 (list!19025 xs!286)) (++!12811 (t!371393 (list!19025 xs!286)) call!354221)))))

(declare-fun d!1643264 () Bool)

(declare-fun e!3169881 () Bool)

(assert (=> d!1643264 e!3169881))

(declare-fun res!2163514 () Bool)

(assert (=> d!1643264 (=> (not res!2163514) (not e!3169881))))

(declare-fun lt!2091085 () List!58576)

(assert (=> d!1643264 (= res!2163514 (= (content!10428 lt!2091085) ((_ map or) (content!10428 (list!19025 xs!286)) (content!10428 call!354221))))))

(assert (=> d!1643264 (= lt!2091085 e!3169880)))

(declare-fun c!873034 () Bool)

(assert (=> d!1643264 (= c!873034 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1643264 (= (++!12811 (list!19025 xs!286) call!354221) lt!2091085)))

(declare-fun b!5081859 () Bool)

(assert (=> b!5081859 (= e!3169880 call!354221)))

(declare-fun b!5081861 () Bool)

(declare-fun res!2163513 () Bool)

(assert (=> b!5081861 (=> (not res!2163513) (not e!3169881))))

(assert (=> b!5081861 (= res!2163513 (= (size!39113 lt!2091085) (+ (size!39113 (list!19025 xs!286)) (size!39113 call!354221))))))

(declare-fun b!5081862 () Bool)

(assert (=> b!5081862 (= e!3169881 (or (not (= call!354221 Nil!58452)) (= lt!2091085 (list!19025 xs!286))))))

(assert (= (and d!1643264 c!873034) b!5081859))

(assert (= (and d!1643264 (not c!873034)) b!5081860))

(assert (= (and d!1643264 res!2163514) b!5081861))

(assert (= (and b!5081861 res!2163513) b!5081862))

(declare-fun m!6135630 () Bool)

(assert (=> b!5081860 m!6135630))

(declare-fun m!6135632 () Bool)

(assert (=> d!1643264 m!6135632))

(assert (=> d!1643264 m!6132962))

(assert (=> d!1643264 m!6133318))

(declare-fun m!6135634 () Bool)

(assert (=> d!1643264 m!6135634))

(declare-fun m!6135636 () Bool)

(assert (=> b!5081861 m!6135636))

(assert (=> b!5081861 m!6132962))

(assert (=> b!5081861 m!6133330))

(declare-fun m!6135638 () Bool)

(assert (=> b!5081861 m!6135638))

(assert (=> bm!354214 d!1643264))

(declare-fun b!5081863 () Bool)

(declare-fun e!3169882 () List!58576)

(assert (=> b!5081863 (= e!3169882 Nil!58452)))

(declare-fun b!5081866 () Bool)

(declare-fun e!3169883 () List!58576)

(assert (=> b!5081866 (= e!3169883 (++!12811 (list!19025 (left!42843 lt!2090988)) (list!19025 (right!43173 lt!2090988))))))

(declare-fun d!1643266 () Bool)

(declare-fun c!873035 () Bool)

(assert (=> d!1643266 (= c!873035 ((_ is Empty!15582) lt!2090988))))

(assert (=> d!1643266 (= (list!19025 lt!2090988) e!3169882)))

(declare-fun b!5081864 () Bool)

(assert (=> b!5081864 (= e!3169882 e!3169883)))

(declare-fun c!873036 () Bool)

(assert (=> b!5081864 (= c!873036 ((_ is Leaf!25878) lt!2090988))))

(declare-fun b!5081865 () Bool)

(assert (=> b!5081865 (= e!3169883 (list!19027 (xs!18954 lt!2090988)))))

(assert (= (and d!1643266 c!873035) b!5081863))

(assert (= (and d!1643266 (not c!873035)) b!5081864))

(assert (= (and b!5081864 c!873036) b!5081865))

(assert (= (and b!5081864 (not c!873036)) b!5081866))

(declare-fun m!6135640 () Bool)

(assert (=> b!5081866 m!6135640))

(declare-fun m!6135642 () Bool)

(assert (=> b!5081866 m!6135642))

(assert (=> b!5081866 m!6135640))

(assert (=> b!5081866 m!6135642))

(declare-fun m!6135644 () Bool)

(assert (=> b!5081866 m!6135644))

(declare-fun m!6135646 () Bool)

(assert (=> b!5081865 m!6135646))

(assert (=> d!1642742 d!1643266))

(declare-fun e!3169884 () List!58576)

(declare-fun b!5081868 () Bool)

(assert (=> b!5081868 (= e!3169884 (Cons!58452 (h!64900 (list!19025 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)))) (++!12811 (t!371393 (list!19025 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)))) (list!19025 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))))))))

(declare-fun d!1643268 () Bool)

(declare-fun e!3169885 () Bool)

(assert (=> d!1643268 e!3169885))

(declare-fun res!2163516 () Bool)

(assert (=> d!1643268 (=> (not res!2163516) (not e!3169885))))

(declare-fun lt!2091086 () List!58576)

(assert (=> d!1643268 (= res!2163516 (= (content!10428 lt!2091086) ((_ map or) (content!10428 (list!19025 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)))) (content!10428 (list!19025 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))))))))

(assert (=> d!1643268 (= lt!2091086 e!3169884)))

(declare-fun c!873037 () Bool)

(assert (=> d!1643268 (= c!873037 ((_ is Nil!58452) (list!19025 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)))))))

(assert (=> d!1643268 (= (++!12811 (list!19025 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) (list!19025 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))) lt!2091086)))

(declare-fun b!5081867 () Bool)

(assert (=> b!5081867 (= e!3169884 (list!19025 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))))))

(declare-fun b!5081869 () Bool)

(declare-fun res!2163515 () Bool)

(assert (=> b!5081869 (=> (not res!2163515) (not e!3169885))))

(assert (=> b!5081869 (= res!2163515 (= (size!39113 lt!2091086) (+ (size!39113 (list!19025 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)))) (size!39113 (list!19025 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))))))))

(declare-fun b!5081870 () Bool)

(assert (=> b!5081870 (= e!3169885 (or (not (= (list!19025 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) Nil!58452)) (= lt!2091086 (list!19025 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))))))))

(assert (= (and d!1643268 c!873037) b!5081867))

(assert (= (and d!1643268 (not c!873037)) b!5081868))

(assert (= (and d!1643268 res!2163516) b!5081869))

(assert (= (and b!5081869 res!2163515) b!5081870))

(assert (=> b!5081868 m!6134174))

(declare-fun m!6135648 () Bool)

(assert (=> b!5081868 m!6135648))

(declare-fun m!6135650 () Bool)

(assert (=> d!1643268 m!6135650))

(assert (=> d!1643268 m!6134172))

(declare-fun m!6135652 () Bool)

(assert (=> d!1643268 m!6135652))

(assert (=> d!1643268 m!6134174))

(declare-fun m!6135654 () Bool)

(assert (=> d!1643268 m!6135654))

(declare-fun m!6135656 () Bool)

(assert (=> b!5081869 m!6135656))

(assert (=> b!5081869 m!6134172))

(assert (=> b!5081869 m!6135626))

(assert (=> b!5081869 m!6134174))

(assert (=> b!5081869 m!6135628))

(assert (=> d!1642742 d!1643268))

(declare-fun b!5081871 () Bool)

(declare-fun e!3169886 () List!58576)

(assert (=> b!5081871 (= e!3169886 Nil!58452)))

(declare-fun b!5081874 () Bool)

(declare-fun e!3169887 () List!58576)

(assert (=> b!5081874 (= e!3169887 (++!12811 (list!19025 (left!42843 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)))) (list!19025 (right!43173 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))))))))

(declare-fun d!1643270 () Bool)

(declare-fun c!873038 () Bool)

(assert (=> d!1643270 (= c!873038 ((_ is Empty!15582) (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))))))

(assert (=> d!1643270 (= (list!19025 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))) e!3169886)))

(declare-fun b!5081872 () Bool)

(assert (=> b!5081872 (= e!3169886 e!3169887)))

(declare-fun c!873039 () Bool)

(assert (=> b!5081872 (= c!873039 ((_ is Leaf!25878) (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906))))))

(declare-fun b!5081873 () Bool)

(assert (=> b!5081873 (= e!3169887 (list!19027 (xs!18954 (ite c!872702 (ite (or c!872704 c!872707) (left!42843 xs!286) call!354113) (ite c!872706 call!354106 lt!2090906)))))))

(assert (= (and d!1643270 c!873038) b!5081871))

(assert (= (and d!1643270 (not c!873038)) b!5081872))

(assert (= (and b!5081872 c!873039) b!5081873))

(assert (= (and b!5081872 (not c!873039)) b!5081874))

(declare-fun m!6135658 () Bool)

(assert (=> b!5081874 m!6135658))

(declare-fun m!6135660 () Bool)

(assert (=> b!5081874 m!6135660))

(assert (=> b!5081874 m!6135658))

(assert (=> b!5081874 m!6135660))

(declare-fun m!6135662 () Bool)

(assert (=> b!5081874 m!6135662))

(declare-fun m!6135664 () Bool)

(assert (=> b!5081873 m!6135664))

(assert (=> d!1642742 d!1643270))

(declare-fun b!5081875 () Bool)

(declare-fun e!3169888 () List!58576)

(assert (=> b!5081875 (= e!3169888 Nil!58452)))

(declare-fun b!5081878 () Bool)

(declare-fun e!3169889 () List!58576)

(assert (=> b!5081878 (= e!3169889 (++!12811 (list!19025 (left!42843 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))) (list!19025 (right!43173 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))))))))

(declare-fun c!873040 () Bool)

(declare-fun d!1643272 () Bool)

(assert (=> d!1643272 (= c!873040 ((_ is Empty!15582) (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))))))

(assert (=> d!1643272 (= (list!19025 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))) e!3169888)))

(declare-fun b!5081876 () Bool)

(assert (=> b!5081876 (= e!3169888 e!3169889)))

(declare-fun c!873041 () Bool)

(assert (=> b!5081876 (= c!873041 ((_ is Leaf!25878) (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106))))))

(declare-fun b!5081877 () Bool)

(assert (=> b!5081877 (= e!3169889 (list!19027 (xs!18954 (ite c!872702 (ite c!872704 call!354116 (ite c!872707 call!354113 lt!2090908)) (ite c!872706 (right!43173 (left!42843 (left!42843 ys!41))) call!354106)))))))

(assert (= (and d!1643272 c!873040) b!5081875))

(assert (= (and d!1643272 (not c!873040)) b!5081876))

(assert (= (and b!5081876 c!873041) b!5081877))

(assert (= (and b!5081876 (not c!873041)) b!5081878))

(declare-fun m!6135666 () Bool)

(assert (=> b!5081878 m!6135666))

(declare-fun m!6135668 () Bool)

(assert (=> b!5081878 m!6135668))

(assert (=> b!5081878 m!6135666))

(assert (=> b!5081878 m!6135668))

(declare-fun m!6135670 () Bool)

(assert (=> b!5081878 m!6135670))

(declare-fun m!6135672 () Bool)

(assert (=> b!5081877 m!6135672))

(assert (=> d!1642742 d!1643272))

(declare-fun d!1643274 () Bool)

(declare-fun lt!2091087 () Bool)

(assert (=> d!1643274 (= lt!2091087 (isEmpty!31669 (list!19025 (right!43173 (right!43173 lt!2090875)))))))

(assert (=> d!1643274 (= lt!2091087 (= (size!39112 (right!43173 (right!43173 lt!2090875))) 0))))

(assert (=> d!1643274 (= (isEmpty!31667 (right!43173 (right!43173 lt!2090875))) lt!2091087)))

(declare-fun bs!1190688 () Bool)

(assert (= bs!1190688 d!1643274))

(assert (=> bs!1190688 m!6133958))

(assert (=> bs!1190688 m!6133958))

(declare-fun m!6135674 () Bool)

(assert (=> bs!1190688 m!6135674))

(declare-fun m!6135676 () Bool)

(assert (=> bs!1190688 m!6135676))

(assert (=> b!5080899 d!1643274))

(declare-fun d!1643276 () Bool)

(declare-fun e!3169890 () Bool)

(assert (=> d!1643276 e!3169890))

(declare-fun c!873042 () Bool)

(assert (=> d!1643276 (= c!873042 ((_ is Nil!58452) (t!371393 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))))))))

(assert (=> d!1643276 (= (appendAssoc!312 (t!371393 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 ys!41))) (list!19025 (right!43173 ys!41))) true)))

(declare-fun bm!354265 () Bool)

(declare-fun call!354272 () List!58576)

(assert (=> bm!354265 (= call!354272 (++!12811 (t!371393 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) (list!19025 (right!43173 (left!42843 ys!41)))))))

(declare-fun bm!354266 () Bool)

(declare-fun call!354271 () List!58576)

(declare-fun call!354273 () List!58576)

(assert (=> bm!354266 (= call!354271 (++!12811 (t!371393 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41))))) call!354273))))

(declare-fun bm!354267 () Bool)

(assert (=> bm!354267 (= call!354273 (++!12811 (list!19025 (right!43173 (left!42843 ys!41))) (list!19025 (right!43173 ys!41))))))

(declare-fun b!5081879 () Bool)

(declare-fun call!354270 () List!58576)

(assert (=> b!5081879 (= e!3169890 (= call!354270 call!354271))))

(declare-fun bm!354268 () Bool)

(assert (=> bm!354268 (= call!354270 (++!12811 call!354272 (list!19025 (right!43173 ys!41))))))

(declare-fun b!5081880 () Bool)

(assert (=> b!5081880 (= e!3169890 (= call!354270 call!354271))))

(declare-fun lt!2091088 () Bool)

(assert (=> b!5081880 (= lt!2091088 (appendAssoc!312 (t!371393 (t!371393 (++!12811 (list!19025 xs!286) (list!19025 (left!42843 (left!42843 ys!41)))))) (list!19025 (right!43173 (left!42843 ys!41))) (list!19025 (right!43173 ys!41))))))

(assert (= (and d!1643276 c!873042) b!5081879))

(assert (= (and d!1643276 (not c!873042)) b!5081880))

(assert (= (or b!5081879 b!5081880) bm!354265))

(assert (= (or b!5081879 b!5081880) bm!354267))

(assert (= (or b!5081879 b!5081880) bm!354266))

(assert (= (or b!5081879 b!5081880) bm!354268))

(assert (=> bm!354267 m!6133018))

(assert (=> bm!354267 m!6133016))

(assert (=> bm!354267 m!6133074))

(declare-fun m!6135678 () Bool)

(assert (=> bm!354266 m!6135678))

(assert (=> bm!354268 m!6133016))

(declare-fun m!6135680 () Bool)

(assert (=> bm!354268 m!6135680))

(assert (=> bm!354265 m!6133018))

(assert (=> bm!354265 m!6135124))

(assert (=> b!5081880 m!6133018))

(assert (=> b!5081880 m!6133016))

(declare-fun m!6135682 () Bool)

(assert (=> b!5081880 m!6135682))

(assert (=> b!5081031 d!1643276))

(declare-fun b!5081882 () Bool)

(declare-fun e!3169891 () List!58576)

(assert (=> b!5081882 (= e!3169891 (Cons!58452 (h!64900 (list!19025 (left!42843 (left!42843 (right!43173 xs!286))))) (++!12811 (t!371393 (list!19025 (left!42843 (left!42843 (right!43173 xs!286))))) (list!19025 (right!43173 (left!42843 (right!43173 xs!286)))))))))

(declare-fun d!1643278 () Bool)

(declare-fun e!3169892 () Bool)

(assert (=> d!1643278 e!3169892))

(declare-fun res!2163518 () Bool)

(assert (=> d!1643278 (=> (not res!2163518) (not e!3169892))))

(declare-fun lt!2091089 () List!58576)

(assert (=> d!1643278 (= res!2163518 (= (content!10428 lt!2091089) ((_ map or) (content!10428 (list!19025 (left!42843 (left!42843 (right!43173 xs!286))))) (content!10428 (list!19025 (right!43173 (left!42843 (right!43173 xs!286))))))))))

(assert (=> d!1643278 (= lt!2091089 e!3169891)))

(declare-fun c!873043 () Bool)

(assert (=> d!1643278 (= c!873043 ((_ is Nil!58452) (list!19025 (left!42843 (left!42843 (right!43173 xs!286))))))))

(assert (=> d!1643278 (= (++!12811 (list!19025 (left!42843 (left!42843 (right!43173 xs!286)))) (list!19025 (right!43173 (left!42843 (right!43173 xs!286))))) lt!2091089)))

(declare-fun b!5081881 () Bool)

(assert (=> b!5081881 (= e!3169891 (list!19025 (right!43173 (left!42843 (right!43173 xs!286)))))))

(declare-fun b!5081883 () Bool)

(declare-fun res!2163517 () Bool)

(assert (=> b!5081883 (=> (not res!2163517) (not e!3169892))))

(assert (=> b!5081883 (= res!2163517 (= (size!39113 lt!2091089) (+ (size!39113 (list!19025 (left!42843 (left!42843 (right!43173 xs!286))))) (size!39113 (list!19025 (right!43173 (left!42843 (right!43173 xs!286))))))))))

(declare-fun b!5081884 () Bool)

(assert (=> b!5081884 (= e!3169892 (or (not (= (list!19025 (right!43173 (left!42843 (right!43173 xs!286)))) Nil!58452)) (= lt!2091089 (list!19025 (left!42843 (left!42843 (right!43173 xs!286)))))))))

(assert (= (and d!1643278 c!873043) b!5081881))

(assert (= (and d!1643278 (not c!873043)) b!5081882))

(assert (= (and d!1643278 res!2163518) b!5081883))

(assert (= (and b!5081883 res!2163517) b!5081884))

(assert (=> b!5081882 m!6133574))

(declare-fun m!6135684 () Bool)

(assert (=> b!5081882 m!6135684))

(declare-fun m!6135686 () Bool)

(assert (=> d!1643278 m!6135686))

(assert (=> d!1643278 m!6133572))

(declare-fun m!6135688 () Bool)

(assert (=> d!1643278 m!6135688))

(assert (=> d!1643278 m!6133574))

(declare-fun m!6135690 () Bool)

(assert (=> d!1643278 m!6135690))

(declare-fun m!6135692 () Bool)

(assert (=> b!5081883 m!6135692))

(assert (=> b!5081883 m!6133572))

(declare-fun m!6135694 () Bool)

(assert (=> b!5081883 m!6135694))

(assert (=> b!5081883 m!6133574))

(declare-fun m!6135696 () Bool)

(assert (=> b!5081883 m!6135696))

(assert (=> b!5080881 d!1643278))

(declare-fun b!5081885 () Bool)

(declare-fun e!3169893 () List!58576)

(assert (=> b!5081885 (= e!3169893 Nil!58452)))

(declare-fun b!5081888 () Bool)

(declare-fun e!3169894 () List!58576)

(assert (=> b!5081888 (= e!3169894 (++!12811 (list!19025 (left!42843 (left!42843 (left!42843 (right!43173 xs!286))))) (list!19025 (right!43173 (left!42843 (left!42843 (right!43173 xs!286)))))))))

(declare-fun d!1643280 () Bool)

(declare-fun c!873044 () Bool)

(assert (=> d!1643280 (= c!873044 ((_ is Empty!15582) (left!42843 (left!42843 (right!43173 xs!286)))))))

(assert (=> d!1643280 (= (list!19025 (left!42843 (left!42843 (right!43173 xs!286)))) e!3169893)))

(declare-fun b!5081886 () Bool)

(assert (=> b!5081886 (= e!3169893 e!3169894)))

(declare-fun c!873045 () Bool)

(assert (=> b!5081886 (= c!873045 ((_ is Leaf!25878) (left!42843 (left!42843 (right!43173 xs!286)))))))

(declare-fun b!5081887 () Bool)

(assert (=> b!5081887 (= e!3169894 (list!19027 (xs!18954 (left!42843 (left!42843 (right!43173 xs!286))))))))

(assert (= (and d!1643280 c!873044) b!5081885))

(assert (= (and d!1643280 (not c!873044)) b!5081886))

(assert (= (and b!5081886 c!873045) b!5081887))

(assert (= (and b!5081886 (not c!873045)) b!5081888))

(declare-fun m!6135698 () Bool)

(assert (=> b!5081888 m!6135698))

(declare-fun m!6135700 () Bool)

(assert (=> b!5081888 m!6135700))

(assert (=> b!5081888 m!6135698))

(assert (=> b!5081888 m!6135700))

(declare-fun m!6135702 () Bool)

(assert (=> b!5081888 m!6135702))

(declare-fun m!6135704 () Bool)

(assert (=> b!5081887 m!6135704))

(assert (=> b!5080881 d!1643280))

(declare-fun b!5081889 () Bool)

(declare-fun e!3169895 () List!58576)

(assert (=> b!5081889 (= e!3169895 Nil!58452)))

(declare-fun b!5081892 () Bool)

(declare-fun e!3169896 () List!58576)

(assert (=> b!5081892 (= e!3169896 (++!12811 (list!19025 (left!42843 (right!43173 (left!42843 (right!43173 xs!286))))) (list!19025 (right!43173 (right!43173 (left!42843 (right!43173 xs!286)))))))))

(declare-fun d!1643282 () Bool)

(declare-fun c!873046 () Bool)

(assert (=> d!1643282 (= c!873046 ((_ is Empty!15582) (right!43173 (left!42843 (right!43173 xs!286)))))))

(assert (=> d!1643282 (= (list!19025 (right!43173 (left!42843 (right!43173 xs!286)))) e!3169895)))

(declare-fun b!5081890 () Bool)

(assert (=> b!5081890 (= e!3169895 e!3169896)))

(declare-fun c!873047 () Bool)

(assert (=> b!5081890 (= c!873047 ((_ is Leaf!25878) (right!43173 (left!42843 (right!43173 xs!286)))))))

(declare-fun b!5081891 () Bool)

(assert (=> b!5081891 (= e!3169896 (list!19027 (xs!18954 (right!43173 (left!42843 (right!43173 xs!286))))))))

(assert (= (and d!1643282 c!873046) b!5081889))

(assert (= (and d!1643282 (not c!873046)) b!5081890))

(assert (= (and b!5081890 c!873047) b!5081891))

(assert (= (and b!5081890 (not c!873047)) b!5081892))

(declare-fun m!6135706 () Bool)

(assert (=> b!5081892 m!6135706))

(declare-fun m!6135708 () Bool)

(assert (=> b!5081892 m!6135708))

(assert (=> b!5081892 m!6135706))

(assert (=> b!5081892 m!6135708))

(declare-fun m!6135710 () Bool)

(assert (=> b!5081892 m!6135710))

(declare-fun m!6135712 () Bool)

(assert (=> b!5081891 m!6135712))

(assert (=> b!5080881 d!1643282))

(declare-fun b!5081894 () Bool)

(declare-fun e!3169897 () List!58576)

(assert (=> b!5081894 (= e!3169897 (Cons!58452 (h!64900 (list!19025 (left!42843 lt!2090879))) (++!12811 (t!371393 (list!19025 (left!42843 lt!2090879))) (list!19025 (right!43173 lt!2090879)))))))

(declare-fun d!1643284 () Bool)

(declare-fun e!3169898 () Bool)

(assert (=> d!1643284 e!3169898))

(declare-fun res!2163520 () Bool)

(assert (=> d!1643284 (=> (not res!2163520) (not e!3169898))))

(declare-fun lt!2091090 () List!58576)

(assert (=> d!1643284 (= res!2163520 (= (content!10428 lt!2091090) ((_ map or) (content!10428 (list!19025 (left!42843 lt!2090879))) (content!10428 (list!19025 (right!43173 lt!2090879))))))))

(assert (=> d!1643284 (= lt!2091090 e!3169897)))

(declare-fun c!873048 () Bool)

(assert (=> d!1643284 (= c!873048 ((_ is Nil!58452) (list!19025 (left!42843 lt!2090879))))))

(assert (=> d!1643284 (= (++!12811 (list!19025 (left!42843 lt!2090879)) (list!19025 (right!43173 lt!2090879))) lt!2091090)))

(declare-fun b!5081893 () Bool)

(assert (=> b!5081893 (= e!3169897 (list!19025 (right!43173 lt!2090879)))))

(declare-fun b!5081895 () Bool)

(declare-fun res!2163519 () Bool)

(assert (=> b!5081895 (=> (not res!2163519) (not e!3169898))))

(assert (=> b!5081895 (= res!2163519 (= (size!39113 lt!2091090) (+ (size!39113 (list!19025 (left!42843 lt!2090879))) (size!39113 (list!19025 (right!43173 lt!2090879))))))))

(declare-fun b!5081896 () Bool)

(assert (=> b!5081896 (= e!3169898 (or (not (= (list!19025 (right!43173 lt!2090879)) Nil!58452)) (= lt!2091090 (list!19025 (left!42843 lt!2090879)))))))

(assert (= (and d!1643284 c!873048) b!5081893))

(assert (= (and d!1643284 (not c!873048)) b!5081894))

(assert (= (and d!1643284 res!2163520) b!5081895))

(assert (= (and b!5081895 res!2163519) b!5081896))

(assert (=> b!5081894 m!6134016))

(declare-fun m!6135714 () Bool)

(assert (=> b!5081894 m!6135714))

(declare-fun m!6135716 () Bool)

(assert (=> d!1643284 m!6135716))

(assert (=> d!1643284 m!6134014))

(declare-fun m!6135718 () Bool)

(assert (=> d!1643284 m!6135718))

(assert (=> d!1643284 m!6134016))

(declare-fun m!6135720 () Bool)

(assert (=> d!1643284 m!6135720))

(declare-fun m!6135722 () Bool)

(assert (=> b!5081895 m!6135722))

(assert (=> b!5081895 m!6134014))

(declare-fun m!6135724 () Bool)

(assert (=> b!5081895 m!6135724))

(assert (=> b!5081895 m!6134016))

(declare-fun m!6135726 () Bool)

(assert (=> b!5081895 m!6135726))

(assert (=> b!5081114 d!1643284))

(declare-fun b!5081897 () Bool)

(declare-fun e!3169899 () List!58576)

(assert (=> b!5081897 (= e!3169899 Nil!58452)))

(declare-fun b!5081900 () Bool)

(declare-fun e!3169900 () List!58576)

(assert (=> b!5081900 (= e!3169900 (++!12811 (list!19025 (left!42843 (left!42843 lt!2090879))) (list!19025 (right!43173 (left!42843 lt!2090879)))))))

(declare-fun d!1643286 () Bool)

(declare-fun c!873049 () Bool)

(assert (=> d!1643286 (= c!873049 ((_ is Empty!15582) (left!42843 lt!2090879)))))

(assert (=> d!1643286 (= (list!19025 (left!42843 lt!2090879)) e!3169899)))

(declare-fun b!5081898 () Bool)

(assert (=> b!5081898 (= e!3169899 e!3169900)))

(declare-fun c!873050 () Bool)

(assert (=> b!5081898 (= c!873050 ((_ is Leaf!25878) (left!42843 lt!2090879)))))

(declare-fun b!5081899 () Bool)

(assert (=> b!5081899 (= e!3169900 (list!19027 (xs!18954 (left!42843 lt!2090879))))))

(assert (= (and d!1643286 c!873049) b!5081897))

(assert (= (and d!1643286 (not c!873049)) b!5081898))

(assert (= (and b!5081898 c!873050) b!5081899))

(assert (= (and b!5081898 (not c!873050)) b!5081900))

(declare-fun m!6135728 () Bool)

(assert (=> b!5081900 m!6135728))

(declare-fun m!6135730 () Bool)

(assert (=> b!5081900 m!6135730))

(assert (=> b!5081900 m!6135728))

(assert (=> b!5081900 m!6135730))

(declare-fun m!6135732 () Bool)

(assert (=> b!5081900 m!6135732))

(declare-fun m!6135734 () Bool)

(assert (=> b!5081899 m!6135734))

(assert (=> b!5081114 d!1643286))

(declare-fun b!5081901 () Bool)

(declare-fun e!3169901 () List!58576)

(assert (=> b!5081901 (= e!3169901 Nil!58452)))

(declare-fun b!5081904 () Bool)

(declare-fun e!3169902 () List!58576)

(assert (=> b!5081904 (= e!3169902 (++!12811 (list!19025 (left!42843 (right!43173 lt!2090879))) (list!19025 (right!43173 (right!43173 lt!2090879)))))))

(declare-fun d!1643288 () Bool)

(declare-fun c!873051 () Bool)

(assert (=> d!1643288 (= c!873051 ((_ is Empty!15582) (right!43173 lt!2090879)))))

(assert (=> d!1643288 (= (list!19025 (right!43173 lt!2090879)) e!3169901)))

(declare-fun b!5081902 () Bool)

(assert (=> b!5081902 (= e!3169901 e!3169902)))

(declare-fun c!873052 () Bool)

(assert (=> b!5081902 (= c!873052 ((_ is Leaf!25878) (right!43173 lt!2090879)))))

(declare-fun b!5081903 () Bool)

(assert (=> b!5081903 (= e!3169902 (list!19027 (xs!18954 (right!43173 lt!2090879))))))

(assert (= (and d!1643288 c!873051) b!5081901))

(assert (= (and d!1643288 (not c!873051)) b!5081902))

(assert (= (and b!5081902 c!873052) b!5081903))

(assert (= (and b!5081902 (not c!873052)) b!5081904))

(declare-fun m!6135736 () Bool)

(assert (=> b!5081904 m!6135736))

(declare-fun m!6135738 () Bool)

(assert (=> b!5081904 m!6135738))

(assert (=> b!5081904 m!6135736))

(assert (=> b!5081904 m!6135738))

(declare-fun m!6135740 () Bool)

(assert (=> b!5081904 m!6135740))

(declare-fun m!6135742 () Bool)

(assert (=> b!5081903 m!6135742))

(assert (=> b!5081114 d!1643288))

(declare-fun d!1643290 () Bool)

(declare-fun res!2163521 () Bool)

(declare-fun e!3169903 () Bool)

(assert (=> d!1643290 (=> (not res!2163521) (not e!3169903))))

(assert (=> d!1643290 (= res!2163521 (<= (size!39113 (list!19027 (xs!18954 (left!42843 (left!42843 xs!286))))) 512))))

(assert (=> d!1643290 (= (inv!77657 (left!42843 (left!42843 xs!286))) e!3169903)))

(declare-fun b!5081905 () Bool)

(declare-fun res!2163522 () Bool)

(assert (=> b!5081905 (=> (not res!2163522) (not e!3169903))))

(assert (=> b!5081905 (= res!2163522 (= (csize!31395 (left!42843 (left!42843 xs!286))) (size!39113 (list!19027 (xs!18954 (left!42843 (left!42843 xs!286)))))))))

(declare-fun b!5081906 () Bool)

(assert (=> b!5081906 (= e!3169903 (and (> (csize!31395 (left!42843 (left!42843 xs!286))) 0) (<= (csize!31395 (left!42843 (left!42843 xs!286))) 512)))))

(assert (= (and d!1643290 res!2163521) b!5081905))

(assert (= (and b!5081905 res!2163522) b!5081906))

(assert (=> d!1643290 m!6135110))

(assert (=> d!1643290 m!6135110))

(declare-fun m!6135744 () Bool)

(assert (=> d!1643290 m!6135744))

(assert (=> b!5081905 m!6135110))

(assert (=> b!5081905 m!6135110))

(assert (=> b!5081905 m!6135744))

(assert (=> b!5080972 d!1643290))

(declare-fun d!1643292 () Bool)

(assert (=> d!1643292 (= (isEmpty!31669 (list!19025 (left!42843 xs!286))) ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(assert (=> d!1642718 d!1643292))

(assert (=> d!1642718 d!1642478))

(assert (=> d!1642718 d!1643140))

(declare-fun d!1643294 () Bool)

(declare-fun lt!2091091 () Int)

(assert (=> d!1643294 (>= lt!2091091 0)))

(declare-fun e!3169904 () Int)

(assert (=> d!1643294 (= lt!2091091 e!3169904)))

(declare-fun c!873053 () Bool)

(assert (=> d!1643294 (= c!873053 ((_ is Nil!58452) lt!2090970))))

(assert (=> d!1643294 (= (size!39113 lt!2090970) lt!2091091)))

(declare-fun b!5081907 () Bool)

(assert (=> b!5081907 (= e!3169904 0)))

(declare-fun b!5081908 () Bool)

(assert (=> b!5081908 (= e!3169904 (+ 1 (size!39113 (t!371393 lt!2090970))))))

(assert (= (and d!1643294 c!873053) b!5081907))

(assert (= (and d!1643294 (not c!873053)) b!5081908))

(declare-fun m!6135746 () Bool)

(assert (=> b!5081908 m!6135746))

(assert (=> b!5081109 d!1643294))

(assert (=> b!5081109 d!1643018))

(declare-fun d!1643296 () Bool)

(declare-fun lt!2091092 () Int)

(assert (=> d!1643296 (>= lt!2091092 0)))

(declare-fun e!3169905 () Int)

(assert (=> d!1643296 (= lt!2091092 e!3169905)))

(declare-fun c!873054 () Bool)

(assert (=> d!1643296 (= c!873054 ((_ is Nil!58452) (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(assert (=> d!1643296 (= (size!39113 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) lt!2091092)))

(declare-fun b!5081909 () Bool)

(assert (=> b!5081909 (= e!3169905 0)))

(declare-fun b!5081910 () Bool)

(assert (=> b!5081910 (= e!3169905 (+ 1 (size!39113 (t!371393 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))))

(assert (= (and d!1643296 c!873054) b!5081909))

(assert (= (and d!1643296 (not c!873054)) b!5081910))

(declare-fun m!6135748 () Bool)

(assert (=> b!5081910 m!6135748))

(assert (=> b!5081109 d!1643296))

(declare-fun d!1643298 () Bool)

(declare-fun lt!2091093 () Bool)

(assert (=> d!1643298 (= lt!2091093 (isEmpty!31669 (list!19025 (left!42843 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1643298 (= lt!2091093 (= (size!39112 (left!42843 (left!42843 (left!42843 ys!41)))) 0))))

(assert (=> d!1643298 (= (isEmpty!31667 (left!42843 (left!42843 (left!42843 ys!41)))) lt!2091093)))

(declare-fun bs!1190689 () Bool)

(assert (= bs!1190689 d!1643298))

(assert (=> bs!1190689 m!6133454))

(assert (=> bs!1190689 m!6133454))

(declare-fun m!6135750 () Bool)

(assert (=> bs!1190689 m!6135750))

(assert (=> bs!1190689 m!6134814))

(assert (=> b!5081101 d!1643298))

(declare-fun d!1643300 () Bool)

(declare-fun lt!2091094 () Bool)

(assert (=> d!1643300 (= lt!2091094 (isEmpty!31669 (list!19025 (right!43173 (left!42843 ys!41)))))))

(assert (=> d!1643300 (= lt!2091094 (= (size!39112 (right!43173 (left!42843 ys!41))) 0))))

(assert (=> d!1643300 (= (isEmpty!31667 (right!43173 (left!42843 ys!41))) lt!2091094)))

(declare-fun bs!1190690 () Bool)

(assert (= bs!1190690 d!1643300))

(assert (=> bs!1190690 m!6133018))

(assert (=> bs!1190690 m!6133018))

(declare-fun m!6135752 () Bool)

(assert (=> bs!1190690 m!6135752))

(assert (=> bs!1190690 m!6133076))

(assert (=> b!5081137 d!1643300))

(declare-fun d!1643302 () Bool)

(declare-fun lt!2091095 () Int)

(assert (=> d!1643302 (>= lt!2091095 0)))

(declare-fun e!3169906 () Int)

(assert (=> d!1643302 (= lt!2091095 e!3169906)))

(declare-fun c!873055 () Bool)

(assert (=> d!1643302 (= c!873055 ((_ is Nil!58452) (list!19027 (xs!18954 (left!42843 xs!286)))))))

(assert (=> d!1643302 (= (size!39113 (list!19027 (xs!18954 (left!42843 xs!286)))) lt!2091095)))

(declare-fun b!5081911 () Bool)

(assert (=> b!5081911 (= e!3169906 0)))

(declare-fun b!5081912 () Bool)

(assert (=> b!5081912 (= e!3169906 (+ 1 (size!39113 (t!371393 (list!19027 (xs!18954 (left!42843 xs!286)))))))))

(assert (= (and d!1643302 c!873055) b!5081911))

(assert (= (and d!1643302 (not c!873055)) b!5081912))

(declare-fun m!6135754 () Bool)

(assert (=> b!5081912 m!6135754))

(assert (=> d!1642468 d!1643302))

(declare-fun d!1643304 () Bool)

(assert (=> d!1643304 (= (list!19027 (xs!18954 (left!42843 xs!286))) (innerList!15670 (xs!18954 (left!42843 xs!286))))))

(assert (=> d!1642468 d!1643304))

(declare-fun d!1643306 () Bool)

(declare-fun res!2163527 () Bool)

(declare-fun e!3169907 () Bool)

(assert (=> d!1643306 (=> res!2163527 e!3169907)))

(assert (=> d!1643306 (= res!2163527 (not ((_ is Node!15582) (right!43173 (right!43173 xs!286)))))))

(assert (=> d!1643306 (= (isBalanced!4444 (right!43173 (right!43173 xs!286))) e!3169907)))

(declare-fun b!5081913 () Bool)

(declare-fun res!2163523 () Bool)

(declare-fun e!3169908 () Bool)

(assert (=> b!5081913 (=> (not res!2163523) (not e!3169908))))

(assert (=> b!5081913 (= res!2163523 (<= (- (height!2159 (left!42843 (right!43173 (right!43173 xs!286)))) (height!2159 (right!43173 (right!43173 (right!43173 xs!286))))) 1))))

(declare-fun b!5081914 () Bool)

(declare-fun res!2163524 () Bool)

(assert (=> b!5081914 (=> (not res!2163524) (not e!3169908))))

(assert (=> b!5081914 (= res!2163524 (isBalanced!4444 (right!43173 (right!43173 (right!43173 xs!286)))))))

(declare-fun b!5081915 () Bool)

(declare-fun res!2163526 () Bool)

(assert (=> b!5081915 (=> (not res!2163526) (not e!3169908))))

(assert (=> b!5081915 (= res!2163526 (isBalanced!4444 (left!42843 (right!43173 (right!43173 xs!286)))))))

(declare-fun b!5081916 () Bool)

(assert (=> b!5081916 (= e!3169907 e!3169908)))

(declare-fun res!2163525 () Bool)

(assert (=> b!5081916 (=> (not res!2163525) (not e!3169908))))

(assert (=> b!5081916 (= res!2163525 (<= (- 1) (- (height!2159 (left!42843 (right!43173 (right!43173 xs!286)))) (height!2159 (right!43173 (right!43173 (right!43173 xs!286)))))))))

(declare-fun b!5081917 () Bool)

(declare-fun res!2163528 () Bool)

(assert (=> b!5081917 (=> (not res!2163528) (not e!3169908))))

(assert (=> b!5081917 (= res!2163528 (not (isEmpty!31667 (left!42843 (right!43173 (right!43173 xs!286))))))))

(declare-fun b!5081918 () Bool)

(assert (=> b!5081918 (= e!3169908 (not (isEmpty!31667 (right!43173 (right!43173 (right!43173 xs!286))))))))

(assert (= (and d!1643306 (not res!2163527)) b!5081916))

(assert (= (and b!5081916 res!2163525) b!5081913))

(assert (= (and b!5081913 res!2163523) b!5081915))

(assert (= (and b!5081915 res!2163526) b!5081914))

(assert (= (and b!5081914 res!2163524) b!5081917))

(assert (= (and b!5081917 res!2163528) b!5081918))

(declare-fun m!6135756 () Bool)

(assert (=> b!5081914 m!6135756))

(assert (=> b!5081913 m!6134990))

(assert (=> b!5081913 m!6134992))

(declare-fun m!6135758 () Bool)

(assert (=> b!5081918 m!6135758))

(assert (=> b!5081916 m!6134990))

(assert (=> b!5081916 m!6134992))

(declare-fun m!6135760 () Bool)

(assert (=> b!5081917 m!6135760))

(declare-fun m!6135762 () Bool)

(assert (=> b!5081915 m!6135762))

(assert (=> b!5080999 d!1643306))

(declare-fun d!1643308 () Bool)

(declare-fun lt!2091096 () Int)

(assert (=> d!1643308 (= lt!2091096 (size!39113 (list!19025 (left!42843 (left!42843 xs!286)))))))

(assert (=> d!1643308 (= lt!2091096 (ite ((_ is Empty!15582) (left!42843 (left!42843 xs!286))) 0 (ite ((_ is Leaf!25878) (left!42843 (left!42843 xs!286))) (csize!31395 (left!42843 (left!42843 xs!286))) (csize!31394 (left!42843 (left!42843 xs!286))))))))

(assert (=> d!1643308 (= (size!39112 (left!42843 (left!42843 xs!286))) lt!2091096)))

(declare-fun bs!1190691 () Bool)

(assert (= bs!1190691 d!1643308))

(assert (=> bs!1190691 m!6133426))

(assert (=> bs!1190691 m!6133426))

(assert (=> bs!1190691 m!6135100))

(assert (=> d!1642536 d!1643308))

(declare-fun d!1643310 () Bool)

(declare-fun lt!2091097 () Int)

(assert (=> d!1643310 (= lt!2091097 (size!39113 (list!19025 (right!43173 (left!42843 xs!286)))))))

(assert (=> d!1643310 (= lt!2091097 (ite ((_ is Empty!15582) (right!43173 (left!42843 xs!286))) 0 (ite ((_ is Leaf!25878) (right!43173 (left!42843 xs!286))) (csize!31395 (right!43173 (left!42843 xs!286))) (csize!31394 (right!43173 (left!42843 xs!286))))))))

(assert (=> d!1643310 (= (size!39112 (right!43173 (left!42843 xs!286))) lt!2091097)))

(declare-fun bs!1190692 () Bool)

(assert (= bs!1190692 d!1643310))

(assert (=> bs!1190692 m!6133428))

(assert (=> bs!1190692 m!6133428))

(assert (=> bs!1190692 m!6135102))

(assert (=> d!1642536 d!1643310))

(declare-fun b!5081920 () Bool)

(declare-fun e!3169909 () List!58576)

(assert (=> b!5081920 (= e!3169909 (Cons!58452 (h!64900 (list!19025 (left!42843 (right!43173 lt!2090875)))) (++!12811 (t!371393 (list!19025 (left!42843 (right!43173 lt!2090875)))) (list!19025 (right!43173 (right!43173 lt!2090875))))))))

(declare-fun d!1643312 () Bool)

(declare-fun e!3169910 () Bool)

(assert (=> d!1643312 e!3169910))

(declare-fun res!2163530 () Bool)

(assert (=> d!1643312 (=> (not res!2163530) (not e!3169910))))

(declare-fun lt!2091098 () List!58576)

(assert (=> d!1643312 (= res!2163530 (= (content!10428 lt!2091098) ((_ map or) (content!10428 (list!19025 (left!42843 (right!43173 lt!2090875)))) (content!10428 (list!19025 (right!43173 (right!43173 lt!2090875)))))))))

(assert (=> d!1643312 (= lt!2091098 e!3169909)))

(declare-fun c!873056 () Bool)

(assert (=> d!1643312 (= c!873056 ((_ is Nil!58452) (list!19025 (left!42843 (right!43173 lt!2090875)))))))

(assert (=> d!1643312 (= (++!12811 (list!19025 (left!42843 (right!43173 lt!2090875))) (list!19025 (right!43173 (right!43173 lt!2090875)))) lt!2091098)))

(declare-fun b!5081919 () Bool)

(assert (=> b!5081919 (= e!3169909 (list!19025 (right!43173 (right!43173 lt!2090875))))))

(declare-fun b!5081921 () Bool)

(declare-fun res!2163529 () Bool)

(assert (=> b!5081921 (=> (not res!2163529) (not e!3169910))))

(assert (=> b!5081921 (= res!2163529 (= (size!39113 lt!2091098) (+ (size!39113 (list!19025 (left!42843 (right!43173 lt!2090875)))) (size!39113 (list!19025 (right!43173 (right!43173 lt!2090875)))))))))

(declare-fun b!5081922 () Bool)

(assert (=> b!5081922 (= e!3169910 (or (not (= (list!19025 (right!43173 (right!43173 lt!2090875))) Nil!58452)) (= lt!2091098 (list!19025 (left!42843 (right!43173 lt!2090875))))))))

(assert (= (and d!1643312 c!873056) b!5081919))

(assert (= (and d!1643312 (not c!873056)) b!5081920))

(assert (= (and d!1643312 res!2163530) b!5081921))

(assert (= (and b!5081921 res!2163529) b!5081922))

(assert (=> b!5081920 m!6133958))

(declare-fun m!6135764 () Bool)

(assert (=> b!5081920 m!6135764))

(declare-fun m!6135766 () Bool)

(assert (=> d!1643312 m!6135766))

(assert (=> d!1643312 m!6133956))

(declare-fun m!6135768 () Bool)

(assert (=> d!1643312 m!6135768))

(assert (=> d!1643312 m!6133958))

(declare-fun m!6135770 () Bool)

(assert (=> d!1643312 m!6135770))

(declare-fun m!6135772 () Bool)

(assert (=> b!5081921 m!6135772))

(assert (=> b!5081921 m!6133956))

(declare-fun m!6135774 () Bool)

(assert (=> b!5081921 m!6135774))

(assert (=> b!5081921 m!6133958))

(declare-fun m!6135776 () Bool)

(assert (=> b!5081921 m!6135776))

(assert (=> b!5081087 d!1643312))

(declare-fun b!5081923 () Bool)

(declare-fun e!3169911 () List!58576)

(assert (=> b!5081923 (= e!3169911 Nil!58452)))

(declare-fun b!5081926 () Bool)

(declare-fun e!3169912 () List!58576)

(assert (=> b!5081926 (= e!3169912 (++!12811 (list!19025 (left!42843 (left!42843 (right!43173 lt!2090875)))) (list!19025 (right!43173 (left!42843 (right!43173 lt!2090875))))))))

(declare-fun d!1643314 () Bool)

(declare-fun c!873057 () Bool)

(assert (=> d!1643314 (= c!873057 ((_ is Empty!15582) (left!42843 (right!43173 lt!2090875))))))

(assert (=> d!1643314 (= (list!19025 (left!42843 (right!43173 lt!2090875))) e!3169911)))

(declare-fun b!5081924 () Bool)

(assert (=> b!5081924 (= e!3169911 e!3169912)))

(declare-fun c!873058 () Bool)

(assert (=> b!5081924 (= c!873058 ((_ is Leaf!25878) (left!42843 (right!43173 lt!2090875))))))

(declare-fun b!5081925 () Bool)

(assert (=> b!5081925 (= e!3169912 (list!19027 (xs!18954 (left!42843 (right!43173 lt!2090875)))))))

(assert (= (and d!1643314 c!873057) b!5081923))

(assert (= (and d!1643314 (not c!873057)) b!5081924))

(assert (= (and b!5081924 c!873058) b!5081925))

(assert (= (and b!5081924 (not c!873058)) b!5081926))

(declare-fun m!6135778 () Bool)

(assert (=> b!5081926 m!6135778))

(declare-fun m!6135780 () Bool)

(assert (=> b!5081926 m!6135780))

(assert (=> b!5081926 m!6135778))

(assert (=> b!5081926 m!6135780))

(declare-fun m!6135782 () Bool)

(assert (=> b!5081926 m!6135782))

(declare-fun m!6135784 () Bool)

(assert (=> b!5081925 m!6135784))

(assert (=> b!5081087 d!1643314))

(declare-fun b!5081927 () Bool)

(declare-fun e!3169913 () List!58576)

(assert (=> b!5081927 (= e!3169913 Nil!58452)))

(declare-fun b!5081930 () Bool)

(declare-fun e!3169914 () List!58576)

(assert (=> b!5081930 (= e!3169914 (++!12811 (list!19025 (left!42843 (right!43173 (right!43173 lt!2090875)))) (list!19025 (right!43173 (right!43173 (right!43173 lt!2090875))))))))

(declare-fun d!1643316 () Bool)

(declare-fun c!873059 () Bool)

(assert (=> d!1643316 (= c!873059 ((_ is Empty!15582) (right!43173 (right!43173 lt!2090875))))))

(assert (=> d!1643316 (= (list!19025 (right!43173 (right!43173 lt!2090875))) e!3169913)))

(declare-fun b!5081928 () Bool)

(assert (=> b!5081928 (= e!3169913 e!3169914)))

(declare-fun c!873060 () Bool)

(assert (=> b!5081928 (= c!873060 ((_ is Leaf!25878) (right!43173 (right!43173 lt!2090875))))))

(declare-fun b!5081929 () Bool)

(assert (=> b!5081929 (= e!3169914 (list!19027 (xs!18954 (right!43173 (right!43173 lt!2090875)))))))

(assert (= (and d!1643316 c!873059) b!5081927))

(assert (= (and d!1643316 (not c!873059)) b!5081928))

(assert (= (and b!5081928 c!873060) b!5081929))

(assert (= (and b!5081928 (not c!873060)) b!5081930))

(declare-fun m!6135786 () Bool)

(assert (=> b!5081930 m!6135786))

(declare-fun m!6135788 () Bool)

(assert (=> b!5081930 m!6135788))

(assert (=> b!5081930 m!6135786))

(assert (=> b!5081930 m!6135788))

(declare-fun m!6135790 () Bool)

(assert (=> b!5081930 m!6135790))

(declare-fun m!6135792 () Bool)

(assert (=> b!5081929 m!6135792))

(assert (=> b!5081087 d!1643316))

(declare-fun d!1643318 () Bool)

(declare-fun lt!2091099 () Int)

(assert (=> d!1643318 (>= lt!2091099 0)))

(declare-fun e!3169915 () Int)

(assert (=> d!1643318 (= lt!2091099 e!3169915)))

(declare-fun c!873061 () Bool)

(assert (=> d!1643318 (= c!873061 ((_ is Nil!58452) (list!19027 (xs!18954 xs!286))))))

(assert (=> d!1643318 (= (size!39113 (list!19027 (xs!18954 xs!286))) lt!2091099)))

(declare-fun b!5081931 () Bool)

(assert (=> b!5081931 (= e!3169915 0)))

(declare-fun b!5081932 () Bool)

(assert (=> b!5081932 (= e!3169915 (+ 1 (size!39113 (t!371393 (list!19027 (xs!18954 xs!286))))))))

(assert (= (and d!1643318 c!873061) b!5081931))

(assert (= (and d!1643318 (not c!873061)) b!5081932))

(declare-fun m!6135794 () Bool)

(assert (=> b!5081932 m!6135794))

(assert (=> b!5081179 d!1643318))

(assert (=> b!5081179 d!1642756))

(declare-fun d!1643320 () Bool)

(declare-fun lt!2091100 () Bool)

(assert (=> d!1643320 (= lt!2091100 (isEmpty!31669 (list!19025 (right!43173 lt!2090909))))))

(assert (=> d!1643320 (= lt!2091100 (= (size!39112 (right!43173 lt!2090909)) 0))))

(assert (=> d!1643320 (= (isEmpty!31667 (right!43173 lt!2090909)) lt!2091100)))

(declare-fun bs!1190693 () Bool)

(assert (= bs!1190693 d!1643320))

(assert (=> bs!1190693 m!6133438))

(assert (=> bs!1190693 m!6133438))

(declare-fun m!6135796 () Bool)

(assert (=> bs!1190693 m!6135796))

(declare-fun m!6135798 () Bool)

(assert (=> bs!1190693 m!6135798))

(assert (=> b!5081037 d!1643320))

(assert (=> d!1642726 d!1643296))

(assert (=> d!1642726 d!1642676))

(declare-fun d!1643322 () Bool)

(declare-fun res!2163535 () Bool)

(declare-fun e!3169916 () Bool)

(assert (=> d!1643322 (=> res!2163535 e!3169916)))

(assert (=> d!1643322 (= res!2163535 (not ((_ is Node!15582) (left!42843 (left!42843 xs!286)))))))

(assert (=> d!1643322 (= (isBalanced!4444 (left!42843 (left!42843 xs!286))) e!3169916)))

(declare-fun b!5081933 () Bool)

(declare-fun res!2163531 () Bool)

(declare-fun e!3169917 () Bool)

(assert (=> b!5081933 (=> (not res!2163531) (not e!3169917))))

(assert (=> b!5081933 (= res!2163531 (<= (- (height!2159 (left!42843 (left!42843 (left!42843 xs!286)))) (height!2159 (right!43173 (left!42843 (left!42843 xs!286))))) 1))))

(declare-fun b!5081934 () Bool)

(declare-fun res!2163532 () Bool)

(assert (=> b!5081934 (=> (not res!2163532) (not e!3169917))))

(assert (=> b!5081934 (= res!2163532 (isBalanced!4444 (right!43173 (left!42843 (left!42843 xs!286)))))))

(declare-fun b!5081935 () Bool)

(declare-fun res!2163534 () Bool)

(assert (=> b!5081935 (=> (not res!2163534) (not e!3169917))))

(assert (=> b!5081935 (= res!2163534 (isBalanced!4444 (left!42843 (left!42843 (left!42843 xs!286)))))))

(declare-fun b!5081936 () Bool)

(assert (=> b!5081936 (= e!3169916 e!3169917)))

(declare-fun res!2163533 () Bool)

(assert (=> b!5081936 (=> (not res!2163533) (not e!3169917))))

(assert (=> b!5081936 (= res!2163533 (<= (- 1) (- (height!2159 (left!42843 (left!42843 (left!42843 xs!286)))) (height!2159 (right!43173 (left!42843 (left!42843 xs!286)))))))))

(declare-fun b!5081937 () Bool)

(declare-fun res!2163536 () Bool)

(assert (=> b!5081937 (=> (not res!2163536) (not e!3169917))))

(assert (=> b!5081937 (= res!2163536 (not (isEmpty!31667 (left!42843 (left!42843 (left!42843 xs!286))))))))

(declare-fun b!5081938 () Bool)

(assert (=> b!5081938 (= e!3169917 (not (isEmpty!31667 (right!43173 (left!42843 (left!42843 xs!286))))))))

(assert (= (and d!1643322 (not res!2163535)) b!5081936))

(assert (= (and b!5081936 res!2163533) b!5081933))

(assert (= (and b!5081933 res!2163531) b!5081935))

(assert (= (and b!5081935 res!2163534) b!5081934))

(assert (= (and b!5081934 res!2163532) b!5081937))

(assert (= (and b!5081937 res!2163536) b!5081938))

(declare-fun m!6135800 () Bool)

(assert (=> b!5081934 m!6135800))

(assert (=> b!5081933 m!6135404))

(assert (=> b!5081933 m!6135406))

(declare-fun m!6135802 () Bool)

(assert (=> b!5081938 m!6135802))

(assert (=> b!5081936 m!6135404))

(assert (=> b!5081936 m!6135406))

(declare-fun m!6135804 () Bool)

(assert (=> b!5081937 m!6135804))

(declare-fun m!6135806 () Bool)

(assert (=> b!5081935 m!6135806))

(assert (=> b!5081188 d!1643322))

(declare-fun d!1643324 () Bool)

(declare-fun e!3169918 () Bool)

(assert (=> d!1643324 e!3169918))

(declare-fun c!873062 () Bool)

(assert (=> d!1643324 (= c!873062 ((_ is Nil!58452) (t!371393 (list!19025 (left!42843 (right!43173 xs!286))))))))

(assert (=> d!1643324 (= (appendAssoc!312 (t!371393 (list!19025 (left!42843 (right!43173 xs!286)))) (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)) true)))

(declare-fun bm!354269 () Bool)

(declare-fun call!354276 () List!58576)

(assert (=> bm!354269 (= call!354276 (++!12811 (t!371393 (list!19025 (left!42843 (right!43173 xs!286)))) (list!19025 (right!43173 (right!43173 xs!286)))))))

(declare-fun bm!354270 () Bool)

(declare-fun call!354275 () List!58576)

(declare-fun call!354277 () List!58576)

(assert (=> bm!354270 (= call!354275 (++!12811 (t!371393 (list!19025 (left!42843 (right!43173 xs!286)))) call!354277))))

(declare-fun bm!354271 () Bool)

(assert (=> bm!354271 (= call!354277 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)))))

(declare-fun b!5081939 () Bool)

(declare-fun call!354274 () List!58576)

(assert (=> b!5081939 (= e!3169918 (= call!354274 call!354275))))

(declare-fun bm!354272 () Bool)

(assert (=> bm!354272 (= call!354274 (++!12811 call!354276 (list!19025 ys!41)))))

(declare-fun b!5081940 () Bool)

(assert (=> b!5081940 (= e!3169918 (= call!354274 call!354275))))

(declare-fun lt!2091101 () Bool)

(assert (=> b!5081940 (= lt!2091101 (appendAssoc!312 (t!371393 (t!371393 (list!19025 (left!42843 (right!43173 xs!286))))) (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41)))))

(assert (= (and d!1643324 c!873062) b!5081939))

(assert (= (and d!1643324 (not c!873062)) b!5081940))

(assert (= (or b!5081939 b!5081940) bm!354269))

(assert (= (or b!5081939 b!5081940) bm!354271))

(assert (= (or b!5081939 b!5081940) bm!354270))

(assert (= (or b!5081939 b!5081940) bm!354272))

(assert (=> bm!354271 m!6133042))

(assert (=> bm!354271 m!6132964))

(assert (=> bm!354271 m!6133038))

(declare-fun m!6135808 () Bool)

(assert (=> bm!354270 m!6135808))

(assert (=> bm!354272 m!6132964))

(declare-fun m!6135810 () Bool)

(assert (=> bm!354272 m!6135810))

(assert (=> bm!354269 m!6133042))

(assert (=> bm!354269 m!6134866))

(assert (=> b!5081940 m!6133042))

(assert (=> b!5081940 m!6132964))

(declare-fun m!6135812 () Bool)

(assert (=> b!5081940 m!6135812))

(assert (=> b!5080913 d!1643324))

(declare-fun d!1643326 () Bool)

(assert (=> d!1643326 (= (inv!77655 (xs!18954 (right!43173 (left!42843 xs!286)))) (<= (size!39113 (innerList!15670 (xs!18954 (right!43173 (left!42843 xs!286))))) 2147483647))))

(declare-fun bs!1190694 () Bool)

(assert (= bs!1190694 d!1643326))

(declare-fun m!6135814 () Bool)

(assert (=> bs!1190694 m!6135814))

(assert (=> b!5081234 d!1643326))

(declare-fun d!1643328 () Bool)

(assert (=> d!1643328 (= (list!19027 (xs!18954 lt!2090909)) (innerList!15670 (xs!18954 lt!2090909)))))

(assert (=> b!5080809 d!1643328))

(declare-fun d!1643330 () Bool)

(declare-fun e!3169919 () Bool)

(assert (=> d!1643330 e!3169919))

(declare-fun c!873063 () Bool)

(assert (=> d!1643330 (= c!873063 ((_ is Nil!58452) (list!19025 (left!42843 (right!43173 xs!286)))))))

(assert (=> d!1643330 (= (appendAssoc!312 (list!19025 (left!42843 (right!43173 xs!286))) (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 (left!42843 (left!42843 ys!41)))) true)))

(declare-fun bm!354273 () Bool)

(declare-fun call!354280 () List!58576)

(assert (=> bm!354273 (= call!354280 (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) (list!19025 (right!43173 (right!43173 xs!286)))))))

(declare-fun bm!354274 () Bool)

(declare-fun call!354279 () List!58576)

(declare-fun call!354281 () List!58576)

(assert (=> bm!354274 (= call!354279 (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) call!354281))))

(declare-fun bm!354275 () Bool)

(assert (=> bm!354275 (= call!354281 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081941 () Bool)

(declare-fun call!354278 () List!58576)

(assert (=> b!5081941 (= e!3169919 (= call!354278 call!354279))))

(declare-fun bm!354276 () Bool)

(assert (=> bm!354276 (= call!354278 (++!12811 call!354280 (list!19025 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5081942 () Bool)

(assert (=> b!5081942 (= e!3169919 (= call!354278 call!354279))))

(declare-fun lt!2091102 () Bool)

(assert (=> b!5081942 (= lt!2091102 (appendAssoc!312 (t!371393 (list!19025 (left!42843 (right!43173 xs!286)))) (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 (left!42843 (left!42843 ys!41)))))))

(assert (= (and d!1643330 c!873063) b!5081941))

(assert (= (and d!1643330 (not c!873063)) b!5081942))

(assert (= (or b!5081941 b!5081942) bm!354273))

(assert (= (or b!5081941 b!5081942) bm!354275))

(assert (= (or b!5081941 b!5081942) bm!354274))

(assert (= (or b!5081941 b!5081942) bm!354276))

(assert (=> bm!354275 m!6133042))

(assert (=> bm!354275 m!6133024))

(assert (=> bm!354275 m!6133914))

(assert (=> bm!354274 m!6133036))

(declare-fun m!6135816 () Bool)

(assert (=> bm!354274 m!6135816))

(assert (=> bm!354276 m!6133024))

(declare-fun m!6135818 () Bool)

(assert (=> bm!354276 m!6135818))

(assert (=> bm!354273 m!6133036))

(assert (=> bm!354273 m!6133042))

(assert (=> bm!354273 m!6133432))

(assert (=> b!5081942 m!6133042))

(assert (=> b!5081942 m!6133024))

(declare-fun m!6135820 () Bool)

(assert (=> b!5081942 m!6135820))

(assert (=> b!5081041 d!1643330))

(assert (=> b!5081041 d!1642514))

(assert (=> b!5081041 d!1642506))

(assert (=> b!5081041 d!1642486))

(assert (=> d!1642748 d!1643318))

(assert (=> d!1642748 d!1642756))

(declare-fun d!1643332 () Bool)

(declare-fun c!873064 () Bool)

(assert (=> d!1643332 (= c!873064 ((_ is Node!15582) (left!42843 (left!42843 (right!43173 xs!286)))))))

(declare-fun e!3169920 () Bool)

(assert (=> d!1643332 (= (inv!77654 (left!42843 (left!42843 (right!43173 xs!286)))) e!3169920)))

(declare-fun b!5081943 () Bool)

(assert (=> b!5081943 (= e!3169920 (inv!77656 (left!42843 (left!42843 (right!43173 xs!286)))))))

(declare-fun b!5081944 () Bool)

(declare-fun e!3169921 () Bool)

(assert (=> b!5081944 (= e!3169920 e!3169921)))

(declare-fun res!2163537 () Bool)

(assert (=> b!5081944 (= res!2163537 (not ((_ is Leaf!25878) (left!42843 (left!42843 (right!43173 xs!286))))))))

(assert (=> b!5081944 (=> res!2163537 e!3169921)))

(declare-fun b!5081945 () Bool)

(assert (=> b!5081945 (= e!3169921 (inv!77657 (left!42843 (left!42843 (right!43173 xs!286)))))))

(assert (= (and d!1643332 c!873064) b!5081943))

(assert (= (and d!1643332 (not c!873064)) b!5081944))

(assert (= (and b!5081944 (not res!2163537)) b!5081945))

(declare-fun m!6135822 () Bool)

(assert (=> b!5081943 m!6135822))

(declare-fun m!6135824 () Bool)

(assert (=> b!5081945 m!6135824))

(assert (=> b!5081241 d!1643332))

(declare-fun d!1643334 () Bool)

(declare-fun c!873065 () Bool)

(assert (=> d!1643334 (= c!873065 ((_ is Node!15582) (right!43173 (left!42843 (right!43173 xs!286)))))))

(declare-fun e!3169922 () Bool)

(assert (=> d!1643334 (= (inv!77654 (right!43173 (left!42843 (right!43173 xs!286)))) e!3169922)))

(declare-fun b!5081946 () Bool)

(assert (=> b!5081946 (= e!3169922 (inv!77656 (right!43173 (left!42843 (right!43173 xs!286)))))))

(declare-fun b!5081947 () Bool)

(declare-fun e!3169923 () Bool)

(assert (=> b!5081947 (= e!3169922 e!3169923)))

(declare-fun res!2163538 () Bool)

(assert (=> b!5081947 (= res!2163538 (not ((_ is Leaf!25878) (right!43173 (left!42843 (right!43173 xs!286))))))))

(assert (=> b!5081947 (=> res!2163538 e!3169923)))

(declare-fun b!5081948 () Bool)

(assert (=> b!5081948 (= e!3169923 (inv!77657 (right!43173 (left!42843 (right!43173 xs!286)))))))

(assert (= (and d!1643334 c!873065) b!5081946))

(assert (= (and d!1643334 (not c!873065)) b!5081947))

(assert (= (and b!5081947 (not res!2163538)) b!5081948))

(declare-fun m!6135826 () Bool)

(assert (=> b!5081946 m!6135826))

(declare-fun m!6135828 () Bool)

(assert (=> b!5081948 m!6135828))

(assert (=> b!5081241 d!1643334))

(declare-fun b!5081950 () Bool)

(declare-fun e!3169924 () List!58576)

(assert (=> b!5081950 (= e!3169924 (Cons!58452 (h!64900 (list!19025 (left!42843 xs!286))) (++!12811 (t!371393 (list!19025 (left!42843 xs!286))) call!354145)))))

(declare-fun d!1643336 () Bool)

(declare-fun e!3169925 () Bool)

(assert (=> d!1643336 e!3169925))

(declare-fun res!2163540 () Bool)

(assert (=> d!1643336 (=> (not res!2163540) (not e!3169925))))

(declare-fun lt!2091103 () List!58576)

(assert (=> d!1643336 (= res!2163540 (= (content!10428 lt!2091103) ((_ map or) (content!10428 (list!19025 (left!42843 xs!286))) (content!10428 call!354145))))))

(assert (=> d!1643336 (= lt!2091103 e!3169924)))

(declare-fun c!873066 () Bool)

(assert (=> d!1643336 (= c!873066 ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(assert (=> d!1643336 (= (++!12811 (list!19025 (left!42843 xs!286)) call!354145) lt!2091103)))

(declare-fun b!5081949 () Bool)

(assert (=> b!5081949 (= e!3169924 call!354145)))

(declare-fun b!5081951 () Bool)

(declare-fun res!2163539 () Bool)

(assert (=> b!5081951 (=> (not res!2163539) (not e!3169925))))

(assert (=> b!5081951 (= res!2163539 (= (size!39113 lt!2091103) (+ (size!39113 (list!19025 (left!42843 xs!286))) (size!39113 call!354145))))))

(declare-fun b!5081952 () Bool)

(assert (=> b!5081952 (= e!3169925 (or (not (= call!354145 Nil!58452)) (= lt!2091103 (list!19025 (left!42843 xs!286)))))))

(assert (= (and d!1643336 c!873066) b!5081949))

(assert (= (and d!1643336 (not c!873066)) b!5081950))

(assert (= (and d!1643336 res!2163540) b!5081951))

(assert (= (and b!5081951 res!2163539) b!5081952))

(declare-fun m!6135830 () Bool)

(assert (=> b!5081950 m!6135830))

(declare-fun m!6135832 () Bool)

(assert (=> d!1643336 m!6135832))

(assert (=> d!1643336 m!6133030))

(assert (=> d!1643336 m!6133822))

(declare-fun m!6135834 () Bool)

(assert (=> d!1643336 m!6135834))

(declare-fun m!6135836 () Bool)

(assert (=> b!5081951 m!6135836))

(assert (=> b!5081951 m!6133030))

(assert (=> b!5081951 m!6133828))

(declare-fun m!6135838 () Bool)

(assert (=> b!5081951 m!6135838))

(assert (=> bm!354138 d!1643336))

(declare-fun d!1643338 () Bool)

(assert (=> d!1643338 (= (height!2159 (ite c!872763 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))) (ite ((_ is Empty!15582) (ite c!872763 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))) 0 (ite ((_ is Leaf!25878) (ite c!872763 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))) 1 (cheight!15793 (ite c!872763 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286) (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))

(assert (=> bm!354161 d!1643338))

(declare-fun b!5081954 () Bool)

(declare-fun e!3169926 () List!58576)

(assert (=> b!5081954 (= e!3169926 (Cons!58452 (h!64900 call!354192) (++!12811 (t!371393 call!354192) (list!19025 (right!43173 ys!41)))))))

(declare-fun d!1643340 () Bool)

(declare-fun e!3169927 () Bool)

(assert (=> d!1643340 e!3169927))

(declare-fun res!2163542 () Bool)

(assert (=> d!1643340 (=> (not res!2163542) (not e!3169927))))

(declare-fun lt!2091104 () List!58576)

(assert (=> d!1643340 (= res!2163542 (= (content!10428 lt!2091104) ((_ map or) (content!10428 call!354192) (content!10428 (list!19025 (right!43173 ys!41))))))))

(assert (=> d!1643340 (= lt!2091104 e!3169926)))

(declare-fun c!873067 () Bool)

(assert (=> d!1643340 (= c!873067 ((_ is Nil!58452) call!354192))))

(assert (=> d!1643340 (= (++!12811 call!354192 (list!19025 (right!43173 ys!41))) lt!2091104)))

(declare-fun b!5081953 () Bool)

(assert (=> b!5081953 (= e!3169926 (list!19025 (right!43173 ys!41)))))

(declare-fun b!5081955 () Bool)

(declare-fun res!2163541 () Bool)

(assert (=> b!5081955 (=> (not res!2163541) (not e!3169927))))

(assert (=> b!5081955 (= res!2163541 (= (size!39113 lt!2091104) (+ (size!39113 call!354192) (size!39113 (list!19025 (right!43173 ys!41))))))))

(declare-fun b!5081956 () Bool)

(assert (=> b!5081956 (= e!3169927 (or (not (= (list!19025 (right!43173 ys!41)) Nil!58452)) (= lt!2091104 call!354192)))))

(assert (= (and d!1643340 c!873067) b!5081953))

(assert (= (and d!1643340 (not c!873067)) b!5081954))

(assert (= (and d!1643340 res!2163542) b!5081955))

(assert (= (and b!5081955 res!2163541) b!5081956))

(assert (=> b!5081954 m!6133016))

(declare-fun m!6135840 () Bool)

(assert (=> b!5081954 m!6135840))

(declare-fun m!6135842 () Bool)

(assert (=> d!1643340 m!6135842))

(declare-fun m!6135844 () Bool)

(assert (=> d!1643340 m!6135844))

(assert (=> d!1643340 m!6133016))

(assert (=> d!1643340 m!6133782))

(declare-fun m!6135846 () Bool)

(assert (=> b!5081955 m!6135846))

(declare-fun m!6135848 () Bool)

(assert (=> b!5081955 m!6135848))

(assert (=> b!5081955 m!6133016))

(assert (=> b!5081955 m!6133788))

(assert (=> bm!354188 d!1643340))

(declare-fun d!1643342 () Bool)

(assert (=> d!1643342 (= (list!19027 (xs!18954 (left!42843 (right!43173 xs!286)))) (innerList!15670 (xs!18954 (left!42843 (right!43173 xs!286)))))))

(assert (=> b!5080880 d!1643342))

(declare-fun d!1643344 () Bool)

(assert (=> d!1643344 (= (list!19027 (xs!18954 lt!2090879)) (innerList!15670 (xs!18954 lt!2090879)))))

(assert (=> b!5081113 d!1643344))

(assert (=> b!5080950 d!1643082))

(assert (=> b!5080950 d!1643084))

(declare-fun b!5081958 () Bool)

(declare-fun e!3169928 () List!58576)

(assert (=> b!5081958 (= e!3169928 (Cons!58452 (h!64900 (t!371393 (list!19025 lt!2090879))) (++!12811 (t!371393 (t!371393 (list!19025 lt!2090879))) (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))))

(declare-fun d!1643346 () Bool)

(declare-fun e!3169929 () Bool)

(assert (=> d!1643346 e!3169929))

(declare-fun res!2163544 () Bool)

(assert (=> d!1643346 (=> (not res!2163544) (not e!3169929))))

(declare-fun lt!2091105 () List!58576)

(assert (=> d!1643346 (= res!2163544 (= (content!10428 lt!2091105) ((_ map or) (content!10428 (t!371393 (list!19025 lt!2090879))) (content!10428 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))))

(assert (=> d!1643346 (= lt!2091105 e!3169928)))

(declare-fun c!873068 () Bool)

(assert (=> d!1643346 (= c!873068 ((_ is Nil!58452) (t!371393 (list!19025 lt!2090879))))))

(assert (=> d!1643346 (= (++!12811 (t!371393 (list!19025 lt!2090879)) (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) lt!2091105)))

(declare-fun b!5081957 () Bool)

(assert (=> b!5081957 (= e!3169928 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))))))

(declare-fun b!5081959 () Bool)

(declare-fun res!2163543 () Bool)

(assert (=> b!5081959 (=> (not res!2163543) (not e!3169929))))

(assert (=> b!5081959 (= res!2163543 (= (size!39113 lt!2091105) (+ (size!39113 (t!371393 (list!19025 lt!2090879))) (size!39113 (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))))

(declare-fun b!5081960 () Bool)

(assert (=> b!5081960 (= e!3169929 (or (not (= (list!19025 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41))) Nil!58452)) (= lt!2091105 (t!371393 (list!19025 lt!2090879)))))))

(assert (= (and d!1643346 c!873068) b!5081957))

(assert (= (and d!1643346 (not c!873068)) b!5081958))

(assert (= (and d!1643346 res!2163544) b!5081959))

(assert (= (and b!5081959 res!2163543) b!5081960))

(assert (=> b!5081958 m!6133060))

(declare-fun m!6135850 () Bool)

(assert (=> b!5081958 m!6135850))

(declare-fun m!6135852 () Bool)

(assert (=> d!1643346 m!6135852))

(assert (=> d!1643346 m!6135542))

(assert (=> d!1643346 m!6133060))

(assert (=> d!1643346 m!6134006))

(declare-fun m!6135854 () Bool)

(assert (=> b!5081959 m!6135854))

(assert (=> b!5081959 m!6135056))

(assert (=> b!5081959 m!6133060))

(assert (=> b!5081959 m!6134012))

(assert (=> b!5081108 d!1643346))

(assert (=> b!5081100 d!1642928))

(assert (=> b!5081100 d!1642930))

(declare-fun d!1643348 () Bool)

(declare-fun lt!2091106 () Bool)

(assert (=> d!1643348 (= lt!2091106 (isEmpty!31669 (list!19025 (left!42843 (left!42843 ys!41)))))))

(assert (=> d!1643348 (= lt!2091106 (= (size!39112 (left!42843 (left!42843 ys!41))) 0))))

(assert (=> d!1643348 (= (isEmpty!31667 (left!42843 (left!42843 ys!41))) lt!2091106)))

(declare-fun bs!1190695 () Bool)

(assert (= bs!1190695 d!1643348))

(assert (=> bs!1190695 m!6133024))

(assert (=> bs!1190695 m!6133024))

(declare-fun m!6135856 () Bool)

(assert (=> bs!1190695 m!6135856))

(assert (=> bs!1190695 m!6133832))

(assert (=> b!5081136 d!1643348))

(assert (=> b!5080947 d!1643030))

(declare-fun d!1643350 () Bool)

(declare-fun lt!2091107 () Bool)

(assert (=> d!1643350 (= lt!2091107 (isEmpty!31669 (list!19025 (left!42843 (right!43173 lt!2090875)))))))

(assert (=> d!1643350 (= lt!2091107 (= (size!39112 (left!42843 (right!43173 lt!2090875))) 0))))

(assert (=> d!1643350 (= (isEmpty!31667 (left!42843 (right!43173 lt!2090875))) lt!2091107)))

(declare-fun bs!1190696 () Bool)

(assert (= bs!1190696 d!1643350))

(assert (=> bs!1190696 m!6133956))

(assert (=> bs!1190696 m!6133956))

(declare-fun m!6135858 () Bool)

(assert (=> bs!1190696 m!6135858))

(declare-fun m!6135860 () Bool)

(assert (=> bs!1190696 m!6135860))

(assert (=> b!5080898 d!1643350))

(declare-fun d!1643352 () Bool)

(assert (=> d!1643352 (= (height!2159 (left!42843 (right!43173 xs!286))) (ite ((_ is Empty!15582) (left!42843 (right!43173 xs!286))) 0 (ite ((_ is Leaf!25878) (left!42843 (right!43173 xs!286))) 1 (cheight!15793 (left!42843 (right!43173 xs!286))))))))

(assert (=> b!5080998 d!1643352))

(declare-fun d!1643354 () Bool)

(assert (=> d!1643354 (= (height!2159 (right!43173 (right!43173 xs!286))) (ite ((_ is Empty!15582) (right!43173 (right!43173 xs!286))) 0 (ite ((_ is Leaf!25878) (right!43173 (right!43173 xs!286))) 1 (cheight!15793 (right!43173 (right!43173 xs!286))))))))

(assert (=> b!5080998 d!1643354))

(declare-fun b!5081962 () Bool)

(declare-fun e!3169930 () List!58576)

(assert (=> b!5081962 (= e!3169930 (Cons!58452 (h!64900 (list!19025 xs!286)) (++!12811 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 ys!41)))))))

(declare-fun d!1643356 () Bool)

(declare-fun e!3169931 () Bool)

(assert (=> d!1643356 e!3169931))

(declare-fun res!2163546 () Bool)

(assert (=> d!1643356 (=> (not res!2163546) (not e!3169931))))

(declare-fun lt!2091108 () List!58576)

(assert (=> d!1643356 (= res!2163546 (= (content!10428 lt!2091108) ((_ map or) (content!10428 (list!19025 xs!286)) (content!10428 (list!19025 (left!42843 ys!41))))))))

(assert (=> d!1643356 (= lt!2091108 e!3169930)))

(declare-fun c!873069 () Bool)

(assert (=> d!1643356 (= c!873069 ((_ is Nil!58452) (list!19025 xs!286)))))

(assert (=> d!1643356 (= (++!12811 (list!19025 xs!286) (list!19025 (left!42843 ys!41))) lt!2091108)))

(declare-fun b!5081961 () Bool)

(assert (=> b!5081961 (= e!3169930 (list!19025 (left!42843 ys!41)))))

(declare-fun b!5081963 () Bool)

(declare-fun res!2163545 () Bool)

(assert (=> b!5081963 (=> (not res!2163545) (not e!3169931))))

(assert (=> b!5081963 (= res!2163545 (= (size!39113 lt!2091108) (+ (size!39113 (list!19025 xs!286)) (size!39113 (list!19025 (left!42843 ys!41))))))))

(declare-fun b!5081964 () Bool)

(assert (=> b!5081964 (= e!3169931 (or (not (= (list!19025 (left!42843 ys!41)) Nil!58452)) (= lt!2091108 (list!19025 xs!286))))))

(assert (= (and d!1643356 c!873069) b!5081961))

(assert (= (and d!1643356 (not c!873069)) b!5081962))

(assert (= (and d!1643356 res!2163546) b!5081963))

(assert (= (and b!5081963 res!2163545) b!5081964))

(assert (=> b!5081962 m!6133026))

(assert (=> b!5081962 m!6134760))

(declare-fun m!6135862 () Bool)

(assert (=> d!1643356 m!6135862))

(assert (=> d!1643356 m!6132962))

(assert (=> d!1643356 m!6133318))

(assert (=> d!1643356 m!6133026))

(assert (=> d!1643356 m!6133864))

(declare-fun m!6135864 () Bool)

(assert (=> b!5081963 m!6135864))

(assert (=> b!5081963 m!6132962))

(assert (=> b!5081963 m!6133330))

(assert (=> b!5081963 m!6133026))

(assert (=> b!5081963 m!6133868))

(assert (=> bm!354213 d!1643356))

(assert (=> b!5080756 d!1642768))

(assert (=> b!5080756 d!1642770))

(assert (=> d!1642682 d!1642966))

(assert (=> d!1642682 d!1642600))

(assert (=> b!5080824 d!1643234))

(assert (=> b!5080824 d!1643236))

(assert (=> b!5080824 d!1643102))

(assert (=> b!5080824 d!1643100))

(declare-fun d!1643358 () Bool)

(declare-fun c!873070 () Bool)

(assert (=> d!1643358 (= c!873070 ((_ is Nil!58452) lt!2090956))))

(declare-fun e!3169932 () (InoxSet T!105244))

(assert (=> d!1643358 (= (content!10428 lt!2090956) e!3169932)))

(declare-fun b!5081965 () Bool)

(assert (=> b!5081965 (= e!3169932 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081966 () Bool)

(assert (=> b!5081966 (= e!3169932 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 lt!2090956) true) (content!10428 (t!371393 lt!2090956))))))

(assert (= (and d!1643358 c!873070) b!5081965))

(assert (= (and d!1643358 (not c!873070)) b!5081966))

(declare-fun m!6135866 () Bool)

(assert (=> b!5081966 m!6135866))

(declare-fun m!6135868 () Bool)

(assert (=> b!5081966 m!6135868))

(assert (=> d!1642606 d!1643358))

(declare-fun d!1643360 () Bool)

(declare-fun c!873071 () Bool)

(assert (=> d!1643360 (= c!873071 ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(declare-fun e!3169933 () (InoxSet T!105244))

(assert (=> d!1643360 (= (content!10428 (list!19025 (left!42843 xs!286))) e!3169933)))

(declare-fun b!5081967 () Bool)

(assert (=> b!5081967 (= e!3169933 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081968 () Bool)

(assert (=> b!5081968 (= e!3169933 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 (left!42843 xs!286))) true) (content!10428 (t!371393 (list!19025 (left!42843 xs!286))))))))

(assert (= (and d!1643360 c!873071) b!5081967))

(assert (= (and d!1643360 (not c!873071)) b!5081968))

(declare-fun m!6135870 () Bool)

(assert (=> b!5081968 m!6135870))

(declare-fun m!6135872 () Bool)

(assert (=> b!5081968 m!6135872))

(assert (=> d!1642606 d!1643360))

(declare-fun d!1643362 () Bool)

(declare-fun c!873072 () Bool)

(assert (=> d!1643362 (= c!873072 ((_ is Nil!58452) (list!19025 (right!43173 xs!286))))))

(declare-fun e!3169934 () (InoxSet T!105244))

(assert (=> d!1643362 (= (content!10428 (list!19025 (right!43173 xs!286))) e!3169934)))

(declare-fun b!5081969 () Bool)

(assert (=> b!5081969 (= e!3169934 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5081970 () Bool)

(assert (=> b!5081970 (= e!3169934 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 (right!43173 xs!286))) true) (content!10428 (t!371393 (list!19025 (right!43173 xs!286))))))))

(assert (= (and d!1643362 c!873072) b!5081969))

(assert (= (and d!1643362 (not c!873072)) b!5081970))

(declare-fun m!6135874 () Bool)

(assert (=> b!5081970 m!6135874))

(declare-fun m!6135876 () Bool)

(assert (=> b!5081970 m!6135876))

(assert (=> d!1642606 d!1643362))

(assert (=> b!5080805 d!1642962))

(declare-fun d!1643364 () Bool)

(assert (=> d!1643364 (= (isEmpty!31669 (list!19025 (left!42843 lt!2090875))) ((_ is Nil!58452) (list!19025 (left!42843 lt!2090875))))))

(assert (=> d!1642632 d!1643364))

(assert (=> d!1642632 d!1642656))

(declare-fun d!1643366 () Bool)

(declare-fun lt!2091109 () Int)

(assert (=> d!1643366 (= lt!2091109 (size!39113 (list!19025 (left!42843 lt!2090875))))))

(assert (=> d!1643366 (= lt!2091109 (ite ((_ is Empty!15582) (left!42843 lt!2090875)) 0 (ite ((_ is Leaf!25878) (left!42843 lt!2090875)) (csize!31395 (left!42843 lt!2090875)) (csize!31394 (left!42843 lt!2090875)))))))

(assert (=> d!1643366 (= (size!39112 (left!42843 lt!2090875)) lt!2091109)))

(declare-fun bs!1190697 () Bool)

(assert (= bs!1190697 d!1643366))

(assert (=> bs!1190697 m!6133256))

(assert (=> bs!1190697 m!6133256))

(assert (=> bs!1190697 m!6133944))

(assert (=> d!1642632 d!1643366))

(declare-fun b!5081971 () Bool)

(declare-fun e!3169935 () List!58576)

(assert (=> b!5081971 (= e!3169935 Nil!58452)))

(declare-fun b!5081974 () Bool)

(declare-fun e!3169936 () List!58576)

(assert (=> b!5081974 (= e!3169936 (++!12811 (list!19025 (left!42843 lt!2090930)) (list!19025 (right!43173 lt!2090930))))))

(declare-fun d!1643368 () Bool)

(declare-fun c!873073 () Bool)

(assert (=> d!1643368 (= c!873073 ((_ is Empty!15582) lt!2090930))))

(assert (=> d!1643368 (= (list!19025 lt!2090930) e!3169935)))

(declare-fun b!5081972 () Bool)

(assert (=> b!5081972 (= e!3169935 e!3169936)))

(declare-fun c!873074 () Bool)

(assert (=> b!5081972 (= c!873074 ((_ is Leaf!25878) lt!2090930))))

(declare-fun b!5081973 () Bool)

(assert (=> b!5081973 (= e!3169936 (list!19027 (xs!18954 lt!2090930)))))

(assert (= (and d!1643368 c!873073) b!5081971))

(assert (= (and d!1643368 (not c!873073)) b!5081972))

(assert (= (and b!5081972 c!873074) b!5081973))

(assert (= (and b!5081972 (not c!873074)) b!5081974))

(declare-fun m!6135878 () Bool)

(assert (=> b!5081974 m!6135878))

(declare-fun m!6135880 () Bool)

(assert (=> b!5081974 m!6135880))

(assert (=> b!5081974 m!6135878))

(assert (=> b!5081974 m!6135880))

(declare-fun m!6135882 () Bool)

(assert (=> b!5081974 m!6135882))

(declare-fun m!6135884 () Bool)

(assert (=> b!5081973 m!6135884))

(assert (=> b!5080821 d!1643368))

(declare-fun b!5081976 () Bool)

(declare-fun e!3169937 () List!58576)

(assert (=> b!5081976 (= e!3169937 (Cons!58452 (h!64900 (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (++!12811 (t!371393 (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun d!1643370 () Bool)

(declare-fun e!3169938 () Bool)

(assert (=> d!1643370 e!3169938))

(declare-fun res!2163548 () Bool)

(assert (=> d!1643370 (=> (not res!2163548) (not e!3169938))))

(declare-fun lt!2091110 () List!58576)

(assert (=> d!1643370 (= res!2163548 (= (content!10428 lt!2091110) ((_ map or) (content!10428 (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (content!10428 (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))

(assert (=> d!1643370 (= lt!2091110 e!3169937)))

(declare-fun c!873075 () Bool)

(assert (=> d!1643370 (= c!873075 ((_ is Nil!58452) (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))))

(assert (=> d!1643370 (= (++!12811 (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) lt!2091110)))

(declare-fun b!5081975 () Bool)

(assert (=> b!5081975 (= e!3169937 (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(declare-fun b!5081977 () Bool)

(declare-fun res!2163547 () Bool)

(assert (=> b!5081977 (=> (not res!2163547) (not e!3169938))))

(assert (=> b!5081977 (= res!2163547 (= (size!39113 lt!2091110) (+ (size!39113 (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (size!39113 (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))

(declare-fun b!5081978 () Bool)

(assert (=> b!5081978 (= e!3169938 (or (not (= (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) Nil!58452)) (= lt!2091110 (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))))

(assert (= (and d!1643370 c!873075) b!5081975))

(assert (= (and d!1643370 (not c!873075)) b!5081976))

(assert (= (and d!1643370 res!2163548) b!5081977))

(assert (= (and b!5081977 res!2163547) b!5081978))

(assert (=> b!5081976 m!6133510))

(declare-fun m!6135886 () Bool)

(assert (=> b!5081976 m!6135886))

(declare-fun m!6135888 () Bool)

(assert (=> d!1643370 m!6135888))

(assert (=> d!1643370 m!6133508))

(declare-fun m!6135890 () Bool)

(assert (=> d!1643370 m!6135890))

(assert (=> d!1643370 m!6133510))

(declare-fun m!6135892 () Bool)

(assert (=> d!1643370 m!6135892))

(declare-fun m!6135894 () Bool)

(assert (=> b!5081977 m!6135894))

(assert (=> b!5081977 m!6133508))

(declare-fun m!6135896 () Bool)

(assert (=> b!5081977 m!6135896))

(assert (=> b!5081977 m!6133510))

(declare-fun m!6135898 () Bool)

(assert (=> b!5081977 m!6135898))

(assert (=> b!5080821 d!1643370))

(declare-fun b!5081979 () Bool)

(declare-fun e!3169939 () List!58576)

(assert (=> b!5081979 (= e!3169939 Nil!58452)))

(declare-fun e!3169940 () List!58576)

(declare-fun b!5081982 () Bool)

(assert (=> b!5081982 (= e!3169940 (++!12811 (list!19025 (left!42843 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))) (list!19025 (right!43173 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))))

(declare-fun d!1643372 () Bool)

(declare-fun c!873076 () Bool)

(assert (=> d!1643372 (= c!873076 ((_ is Empty!15582) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))

(assert (=> d!1643372 (= (list!19025 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)) e!3169939)))

(declare-fun b!5081980 () Bool)

(assert (=> b!5081980 (= e!3169939 e!3169940)))

(declare-fun c!873077 () Bool)

(assert (=> b!5081980 (= c!873077 ((_ is Leaf!25878) (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286)))))

(declare-fun b!5081981 () Bool)

(assert (=> b!5081981 (= e!3169940 (list!19027 (xs!18954 (ite c!872702 (ite c!872704 (right!43173 xs!286) (right!43173 (right!43173 xs!286))) xs!286))))))

(assert (= (and d!1643372 c!873076) b!5081979))

(assert (= (and d!1643372 (not c!873076)) b!5081980))

(assert (= (and b!5081980 c!873077) b!5081981))

(assert (= (and b!5081980 (not c!873077)) b!5081982))

(assert (=> b!5081982 m!6134692))

(assert (=> b!5081982 m!6134694))

(assert (=> b!5081982 m!6134692))

(assert (=> b!5081982 m!6134694))

(declare-fun m!6135900 () Bool)

(assert (=> b!5081982 m!6135900))

(declare-fun m!6135902 () Bool)

(assert (=> b!5081981 m!6135902))

(assert (=> b!5080821 d!1643372))

(declare-fun b!5081983 () Bool)

(declare-fun e!3169941 () List!58576)

(assert (=> b!5081983 (= e!3169941 Nil!58452)))

(declare-fun b!5081986 () Bool)

(declare-fun e!3169942 () List!58576)

(assert (=> b!5081986 (= e!3169942 (++!12811 (list!19025 (left!42843 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))) (list!19025 (right!43173 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun d!1643374 () Bool)

(declare-fun c!873078 () Bool)

(assert (=> d!1643374 (= c!873078 ((_ is Empty!15582) (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(assert (=> d!1643374 (= (list!19025 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))) e!3169941)))

(declare-fun b!5081984 () Bool)

(assert (=> b!5081984 (= e!3169941 e!3169942)))

(declare-fun c!873079 () Bool)

(assert (=> b!5081984 (= c!873079 ((_ is Leaf!25878) (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))))))))

(declare-fun b!5081985 () Bool)

(assert (=> b!5081985 (= e!3169942 (list!19027 (xs!18954 (ite c!872702 (left!42843 (left!42843 ys!41)) (ite c!872705 (left!42843 (left!42843 (left!42843 ys!41))) (left!42843 (left!42843 (left!42843 (left!42843 ys!41)))))))))))

(assert (= (and d!1643374 c!873078) b!5081983))

(assert (= (and d!1643374 (not c!873078)) b!5081984))

(assert (= (and b!5081984 c!873079) b!5081985))

(assert (= (and b!5081984 (not c!873079)) b!5081986))

(assert (=> b!5081986 m!6134688))

(assert (=> b!5081986 m!6134678))

(assert (=> b!5081986 m!6134688))

(assert (=> b!5081986 m!6134678))

(declare-fun m!6135904 () Bool)

(assert (=> b!5081986 m!6135904))

(declare-fun m!6135906 () Bool)

(assert (=> b!5081985 m!6135906))

(assert (=> b!5080821 d!1643374))

(assert (=> b!5081016 d!1643150))

(assert (=> b!5081016 d!1643152))

(declare-fun d!1643376 () Bool)

(declare-fun c!873080 () Bool)

(assert (=> d!1643376 (= c!873080 ((_ is Node!15582) (left!42843 (left!42843 (right!43173 ys!41)))))))

(declare-fun e!3169943 () Bool)

(assert (=> d!1643376 (= (inv!77654 (left!42843 (left!42843 (right!43173 ys!41)))) e!3169943)))

(declare-fun b!5081987 () Bool)

(assert (=> b!5081987 (= e!3169943 (inv!77656 (left!42843 (left!42843 (right!43173 ys!41)))))))

(declare-fun b!5081988 () Bool)

(declare-fun e!3169944 () Bool)

(assert (=> b!5081988 (= e!3169943 e!3169944)))

(declare-fun res!2163549 () Bool)

(assert (=> b!5081988 (= res!2163549 (not ((_ is Leaf!25878) (left!42843 (left!42843 (right!43173 ys!41))))))))

(assert (=> b!5081988 (=> res!2163549 e!3169944)))

(declare-fun b!5081989 () Bool)

(assert (=> b!5081989 (= e!3169944 (inv!77657 (left!42843 (left!42843 (right!43173 ys!41)))))))

(assert (= (and d!1643376 c!873080) b!5081987))

(assert (= (and d!1643376 (not c!873080)) b!5081988))

(assert (= (and b!5081988 (not res!2163549)) b!5081989))

(declare-fun m!6135908 () Bool)

(assert (=> b!5081987 m!6135908))

(declare-fun m!6135910 () Bool)

(assert (=> b!5081989 m!6135910))

(assert (=> b!5081219 d!1643376))

(declare-fun d!1643378 () Bool)

(declare-fun c!873081 () Bool)

(assert (=> d!1643378 (= c!873081 ((_ is Node!15582) (right!43173 (left!42843 (right!43173 ys!41)))))))

(declare-fun e!3169945 () Bool)

(assert (=> d!1643378 (= (inv!77654 (right!43173 (left!42843 (right!43173 ys!41)))) e!3169945)))

(declare-fun b!5081990 () Bool)

(assert (=> b!5081990 (= e!3169945 (inv!77656 (right!43173 (left!42843 (right!43173 ys!41)))))))

(declare-fun b!5081991 () Bool)

(declare-fun e!3169946 () Bool)

(assert (=> b!5081991 (= e!3169945 e!3169946)))

(declare-fun res!2163550 () Bool)

(assert (=> b!5081991 (= res!2163550 (not ((_ is Leaf!25878) (right!43173 (left!42843 (right!43173 ys!41))))))))

(assert (=> b!5081991 (=> res!2163550 e!3169946)))

(declare-fun b!5081992 () Bool)

(assert (=> b!5081992 (= e!3169946 (inv!77657 (right!43173 (left!42843 (right!43173 ys!41)))))))

(assert (= (and d!1643378 c!873081) b!5081990))

(assert (= (and d!1643378 (not c!873081)) b!5081991))

(assert (= (and b!5081991 (not res!2163550)) b!5081992))

(declare-fun m!6135912 () Bool)

(assert (=> b!5081990 m!6135912))

(declare-fun m!6135914 () Bool)

(assert (=> b!5081992 m!6135914))

(assert (=> b!5081219 d!1643378))

(declare-fun d!1643380 () Bool)

(assert (=> d!1643380 (= (list!19027 (xs!18954 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))) (innerList!15670 (xs!18954 (<>!402 (right!43173 (left!42843 ys!41)) (right!43173 ys!41)))))))

(assert (=> b!5081117 d!1643380))

(declare-fun d!1643382 () Bool)

(declare-fun lt!2091111 () Int)

(assert (=> d!1643382 (>= lt!2091111 0)))

(declare-fun e!3169947 () Int)

(assert (=> d!1643382 (= lt!2091111 e!3169947)))

(declare-fun c!873082 () Bool)

(assert (=> d!1643382 (= c!873082 ((_ is Nil!58452) (innerList!15670 (xs!18954 (right!43173 ys!41)))))))

(assert (=> d!1643382 (= (size!39113 (innerList!15670 (xs!18954 (right!43173 ys!41)))) lt!2091111)))

(declare-fun b!5081993 () Bool)

(assert (=> b!5081993 (= e!3169947 0)))

(declare-fun b!5081994 () Bool)

(assert (=> b!5081994 (= e!3169947 (+ 1 (size!39113 (t!371393 (innerList!15670 (xs!18954 (right!43173 ys!41)))))))))

(assert (= (and d!1643382 c!873082) b!5081993))

(assert (= (and d!1643382 (not c!873082)) b!5081994))

(declare-fun m!6135916 () Bool)

(assert (=> b!5081994 m!6135916))

(assert (=> d!1642548 d!1643382))

(declare-fun d!1643384 () Bool)

(declare-fun res!2163551 () Bool)

(declare-fun e!3169948 () Bool)

(assert (=> d!1643384 (=> (not res!2163551) (not e!3169948))))

(assert (=> d!1643384 (= res!2163551 (<= (size!39113 (list!19027 (xs!18954 (left!42843 (right!43173 ys!41))))) 512))))

(assert (=> d!1643384 (= (inv!77657 (left!42843 (right!43173 ys!41))) e!3169948)))

(declare-fun b!5081995 () Bool)

(declare-fun res!2163552 () Bool)

(assert (=> b!5081995 (=> (not res!2163552) (not e!3169948))))

(assert (=> b!5081995 (= res!2163552 (= (csize!31395 (left!42843 (right!43173 ys!41))) (size!39113 (list!19027 (xs!18954 (left!42843 (right!43173 ys!41)))))))))

(declare-fun b!5081996 () Bool)

(assert (=> b!5081996 (= e!3169948 (and (> (csize!31395 (left!42843 (right!43173 ys!41))) 0) (<= (csize!31395 (left!42843 (right!43173 ys!41))) 512)))))

(assert (= (and d!1643384 res!2163551) b!5081995))

(assert (= (and b!5081995 res!2163552) b!5081996))

(assert (=> d!1643384 m!6135526))

(assert (=> d!1643384 m!6135526))

(declare-fun m!6135918 () Bool)

(assert (=> d!1643384 m!6135918))

(assert (=> b!5081995 m!6135526))

(assert (=> b!5081995 m!6135526))

(assert (=> b!5081995 m!6135918))

(assert (=> b!5081093 d!1643384))

(declare-fun d!1643386 () Bool)

(declare-fun lt!2091112 () Int)

(assert (=> d!1643386 (>= lt!2091112 0)))

(declare-fun e!3169949 () Int)

(assert (=> d!1643386 (= lt!2091112 e!3169949)))

(declare-fun c!873083 () Bool)

(assert (=> d!1643386 (= c!873083 ((_ is Nil!58452) lt!2090925))))

(assert (=> d!1643386 (= (size!39113 lt!2090925) lt!2091112)))

(declare-fun b!5081997 () Bool)

(assert (=> b!5081997 (= e!3169949 0)))

(declare-fun b!5081998 () Bool)

(assert (=> b!5081998 (= e!3169949 (+ 1 (size!39113 (t!371393 lt!2090925))))))

(assert (= (and d!1643386 c!873083) b!5081997))

(assert (= (and d!1643386 (not c!873083)) b!5081998))

(declare-fun m!6135920 () Bool)

(assert (=> b!5081998 m!6135920))

(assert (=> b!5080813 d!1643386))

(assert (=> b!5080813 d!1642584))

(declare-fun d!1643388 () Bool)

(declare-fun lt!2091113 () Int)

(assert (=> d!1643388 (>= lt!2091113 0)))

(declare-fun e!3169950 () Int)

(assert (=> d!1643388 (= lt!2091113 e!3169950)))

(declare-fun c!873084 () Bool)

(assert (=> d!1643388 (= c!873084 ((_ is Nil!58452) (list!19025 (left!42843 (left!42843 ys!41)))))))

(assert (=> d!1643388 (= (size!39113 (list!19025 (left!42843 (left!42843 ys!41)))) lt!2091113)))

(declare-fun b!5081999 () Bool)

(assert (=> b!5081999 (= e!3169950 0)))

(declare-fun b!5082000 () Bool)

(assert (=> b!5082000 (= e!3169950 (+ 1 (size!39113 (t!371393 (list!19025 (left!42843 (left!42843 ys!41)))))))))

(assert (= (and d!1643388 c!873084) b!5081999))

(assert (= (and d!1643388 (not c!873084)) b!5082000))

(declare-fun m!6135922 () Bool)

(assert (=> b!5082000 m!6135922))

(assert (=> b!5080813 d!1643388))

(assert (=> b!5080953 d!1643082))

(assert (=> b!5080953 d!1643084))

(declare-fun b!5082002 () Bool)

(declare-fun e!3169951 () List!58576)

(assert (=> b!5082002 (= e!3169951 (Cons!58452 (h!64900 (t!371393 (list!19025 (right!43173 (left!42843 ys!41))))) (++!12811 (t!371393 (t!371393 (list!19025 (right!43173 (left!42843 ys!41))))) (list!19025 (right!43173 ys!41)))))))

(declare-fun d!1643390 () Bool)

(declare-fun e!3169952 () Bool)

(assert (=> d!1643390 e!3169952))

(declare-fun res!2163554 () Bool)

(assert (=> d!1643390 (=> (not res!2163554) (not e!3169952))))

(declare-fun lt!2091114 () List!58576)

(assert (=> d!1643390 (= res!2163554 (= (content!10428 lt!2091114) ((_ map or) (content!10428 (t!371393 (list!19025 (right!43173 (left!42843 ys!41))))) (content!10428 (list!19025 (right!43173 ys!41))))))))

(assert (=> d!1643390 (= lt!2091114 e!3169951)))

(declare-fun c!873085 () Bool)

(assert (=> d!1643390 (= c!873085 ((_ is Nil!58452) (t!371393 (list!19025 (right!43173 (left!42843 ys!41))))))))

(assert (=> d!1643390 (= (++!12811 (t!371393 (list!19025 (right!43173 (left!42843 ys!41)))) (list!19025 (right!43173 ys!41))) lt!2091114)))

(declare-fun b!5082001 () Bool)

(assert (=> b!5082001 (= e!3169951 (list!19025 (right!43173 ys!41)))))

(declare-fun b!5082003 () Bool)

(declare-fun res!2163553 () Bool)

(assert (=> b!5082003 (=> (not res!2163553) (not e!3169952))))

(assert (=> b!5082003 (= res!2163553 (= (size!39113 lt!2091114) (+ (size!39113 (t!371393 (list!19025 (right!43173 (left!42843 ys!41))))) (size!39113 (list!19025 (right!43173 ys!41))))))))

(declare-fun b!5082004 () Bool)

(assert (=> b!5082004 (= e!3169952 (or (not (= (list!19025 (right!43173 ys!41)) Nil!58452)) (= lt!2091114 (t!371393 (list!19025 (right!43173 (left!42843 ys!41)))))))))

(assert (= (and d!1643390 c!873085) b!5082001))

(assert (= (and d!1643390 (not c!873085)) b!5082002))

(assert (= (and d!1643390 res!2163554) b!5082003))

(assert (= (and b!5082003 res!2163553) b!5082004))

(assert (=> b!5082002 m!6133016))

(declare-fun m!6135924 () Bool)

(assert (=> b!5082002 m!6135924))

(declare-fun m!6135926 () Bool)

(assert (=> d!1643390 m!6135926))

(assert (=> d!1643390 m!6135392))

(assert (=> d!1643390 m!6133016))

(assert (=> d!1643390 m!6133782))

(declare-fun m!6135928 () Bool)

(assert (=> b!5082003 m!6135928))

(assert (=> b!5082003 m!6134894))

(assert (=> b!5082003 m!6133016))

(assert (=> b!5082003 m!6133788))

(assert (=> b!5080981 d!1643390))

(assert (=> b!5081032 d!1643170))

(assert (=> b!5081032 d!1643172))

(declare-fun d!1643392 () Bool)

(declare-fun lt!2091115 () Bool)

(assert (=> d!1643392 (= lt!2091115 (isEmpty!31669 (list!19025 (right!43173 (left!42843 xs!286)))))))

(assert (=> d!1643392 (= lt!2091115 (= (size!39112 (right!43173 (left!42843 xs!286))) 0))))

(assert (=> d!1643392 (= (isEmpty!31667 (right!43173 (left!42843 xs!286))) lt!2091115)))

(declare-fun bs!1190698 () Bool)

(assert (= bs!1190698 d!1643392))

(assert (=> bs!1190698 m!6133428))

(assert (=> bs!1190698 m!6133428))

(declare-fun m!6135930 () Bool)

(assert (=> bs!1190698 m!6135930))

(assert (=> bs!1190698 m!6133644))

(assert (=> b!5081191 d!1643392))

(assert (=> b!5081029 d!1643104))

(assert (=> b!5081029 d!1642486))

(assert (=> b!5081029 d!1642600))

(declare-fun b!5082006 () Bool)

(declare-fun e!3169953 () List!58576)

(assert (=> b!5082006 (= e!3169953 (Cons!58452 (h!64900 call!354144) (++!12811 (t!371393 call!354144) (list!19025 ys!41))))))

(declare-fun d!1643394 () Bool)

(declare-fun e!3169954 () Bool)

(assert (=> d!1643394 e!3169954))

(declare-fun res!2163556 () Bool)

(assert (=> d!1643394 (=> (not res!2163556) (not e!3169954))))

(declare-fun lt!2091116 () List!58576)

(assert (=> d!1643394 (= res!2163556 (= (content!10428 lt!2091116) ((_ map or) (content!10428 call!354144) (content!10428 (list!19025 ys!41)))))))

(assert (=> d!1643394 (= lt!2091116 e!3169953)))

(declare-fun c!873086 () Bool)

(assert (=> d!1643394 (= c!873086 ((_ is Nil!58452) call!354144))))

(assert (=> d!1643394 (= (++!12811 call!354144 (list!19025 ys!41)) lt!2091116)))

(declare-fun b!5082005 () Bool)

(assert (=> b!5082005 (= e!3169953 (list!19025 ys!41))))

(declare-fun b!5082007 () Bool)

(declare-fun res!2163555 () Bool)

(assert (=> b!5082007 (=> (not res!2163555) (not e!3169954))))

(assert (=> b!5082007 (= res!2163555 (= (size!39113 lt!2091116) (+ (size!39113 call!354144) (size!39113 (list!19025 ys!41)))))))

(declare-fun b!5082008 () Bool)

(assert (=> b!5082008 (= e!3169954 (or (not (= (list!19025 ys!41) Nil!58452)) (= lt!2091116 call!354144)))))

(assert (= (and d!1643394 c!873086) b!5082005))

(assert (= (and d!1643394 (not c!873086)) b!5082006))

(assert (= (and d!1643394 res!2163556) b!5082007))

(assert (= (and b!5082007 res!2163555) b!5082008))

(assert (=> b!5082006 m!6132964))

(declare-fun m!6135932 () Bool)

(assert (=> b!5082006 m!6135932))

(declare-fun m!6135934 () Bool)

(assert (=> d!1643394 m!6135934))

(declare-fun m!6135936 () Bool)

(assert (=> d!1643394 m!6135936))

(assert (=> d!1643394 m!6132964))

(assert (=> d!1643394 m!6133322))

(declare-fun m!6135938 () Bool)

(assert (=> b!5082007 m!6135938))

(declare-fun m!6135940 () Bool)

(assert (=> b!5082007 m!6135940))

(assert (=> b!5082007 m!6132964))

(assert (=> b!5082007 m!6133332))

(assert (=> bm!354140 d!1643394))

(declare-fun b!5082010 () Bool)

(declare-fun e!3169955 () List!58576)

(assert (=> b!5082010 (= e!3169955 (Cons!58452 (h!64900 (list!19025 (left!42843 lt!2090885))) (++!12811 (t!371393 (list!19025 (left!42843 lt!2090885))) (list!19025 (right!43173 lt!2090885)))))))

(declare-fun d!1643396 () Bool)

(declare-fun e!3169956 () Bool)

(assert (=> d!1643396 e!3169956))

(declare-fun res!2163558 () Bool)

(assert (=> d!1643396 (=> (not res!2163558) (not e!3169956))))

(declare-fun lt!2091117 () List!58576)

(assert (=> d!1643396 (= res!2163558 (= (content!10428 lt!2091117) ((_ map or) (content!10428 (list!19025 (left!42843 lt!2090885))) (content!10428 (list!19025 (right!43173 lt!2090885))))))))

(assert (=> d!1643396 (= lt!2091117 e!3169955)))

(declare-fun c!873087 () Bool)

(assert (=> d!1643396 (= c!873087 ((_ is Nil!58452) (list!19025 (left!42843 lt!2090885))))))

(assert (=> d!1643396 (= (++!12811 (list!19025 (left!42843 lt!2090885)) (list!19025 (right!43173 lt!2090885))) lt!2091117)))

(declare-fun b!5082009 () Bool)

(assert (=> b!5082009 (= e!3169955 (list!19025 (right!43173 lt!2090885)))))

(declare-fun b!5082011 () Bool)

(declare-fun res!2163557 () Bool)

(assert (=> b!5082011 (=> (not res!2163557) (not e!3169956))))

(assert (=> b!5082011 (= res!2163557 (= (size!39113 lt!2091117) (+ (size!39113 (list!19025 (left!42843 lt!2090885))) (size!39113 (list!19025 (right!43173 lt!2090885))))))))

(declare-fun b!5082012 () Bool)

(assert (=> b!5082012 (= e!3169956 (or (not (= (list!19025 (right!43173 lt!2090885)) Nil!58452)) (= lt!2091117 (list!19025 (left!42843 lt!2090885)))))))

(assert (= (and d!1643396 c!873087) b!5082009))

(assert (= (and d!1643396 (not c!873087)) b!5082010))

(assert (= (and d!1643396 res!2163558) b!5082011))

(assert (= (and b!5082011 res!2163557) b!5082012))

(assert (=> b!5082010 m!6133770))

(declare-fun m!6135942 () Bool)

(assert (=> b!5082010 m!6135942))

(declare-fun m!6135944 () Bool)

(assert (=> d!1643396 m!6135944))

(assert (=> d!1643396 m!6133768))

(declare-fun m!6135946 () Bool)

(assert (=> d!1643396 m!6135946))

(assert (=> d!1643396 m!6133770))

(declare-fun m!6135948 () Bool)

(assert (=> d!1643396 m!6135948))

(declare-fun m!6135950 () Bool)

(assert (=> b!5082011 m!6135950))

(assert (=> b!5082011 m!6133768))

(declare-fun m!6135952 () Bool)

(assert (=> b!5082011 m!6135952))

(assert (=> b!5082011 m!6133770))

(declare-fun m!6135954 () Bool)

(assert (=> b!5082011 m!6135954))

(assert (=> b!5080979 d!1643396))

(declare-fun b!5082013 () Bool)

(declare-fun e!3169957 () List!58576)

(assert (=> b!5082013 (= e!3169957 Nil!58452)))

(declare-fun b!5082016 () Bool)

(declare-fun e!3169958 () List!58576)

(assert (=> b!5082016 (= e!3169958 (++!12811 (list!19025 (left!42843 (left!42843 lt!2090885))) (list!19025 (right!43173 (left!42843 lt!2090885)))))))

(declare-fun d!1643398 () Bool)

(declare-fun c!873088 () Bool)

(assert (=> d!1643398 (= c!873088 ((_ is Empty!15582) (left!42843 lt!2090885)))))

(assert (=> d!1643398 (= (list!19025 (left!42843 lt!2090885)) e!3169957)))

(declare-fun b!5082014 () Bool)

(assert (=> b!5082014 (= e!3169957 e!3169958)))

(declare-fun c!873089 () Bool)

(assert (=> b!5082014 (= c!873089 ((_ is Leaf!25878) (left!42843 lt!2090885)))))

(declare-fun b!5082015 () Bool)

(assert (=> b!5082015 (= e!3169958 (list!19027 (xs!18954 (left!42843 lt!2090885))))))

(assert (= (and d!1643398 c!873088) b!5082013))

(assert (= (and d!1643398 (not c!873088)) b!5082014))

(assert (= (and b!5082014 c!873089) b!5082015))

(assert (= (and b!5082014 (not c!873089)) b!5082016))

(declare-fun m!6135956 () Bool)

(assert (=> b!5082016 m!6135956))

(declare-fun m!6135958 () Bool)

(assert (=> b!5082016 m!6135958))

(assert (=> b!5082016 m!6135956))

(assert (=> b!5082016 m!6135958))

(declare-fun m!6135960 () Bool)

(assert (=> b!5082016 m!6135960))

(declare-fun m!6135962 () Bool)

(assert (=> b!5082015 m!6135962))

(assert (=> b!5080979 d!1643398))

(declare-fun b!5082017 () Bool)

(declare-fun e!3169959 () List!58576)

(assert (=> b!5082017 (= e!3169959 Nil!58452)))

(declare-fun b!5082020 () Bool)

(declare-fun e!3169960 () List!58576)

(assert (=> b!5082020 (= e!3169960 (++!12811 (list!19025 (left!42843 (right!43173 lt!2090885))) (list!19025 (right!43173 (right!43173 lt!2090885)))))))

(declare-fun d!1643400 () Bool)

(declare-fun c!873090 () Bool)

(assert (=> d!1643400 (= c!873090 ((_ is Empty!15582) (right!43173 lt!2090885)))))

(assert (=> d!1643400 (= (list!19025 (right!43173 lt!2090885)) e!3169959)))

(declare-fun b!5082018 () Bool)

(assert (=> b!5082018 (= e!3169959 e!3169960)))

(declare-fun c!873091 () Bool)

(assert (=> b!5082018 (= c!873091 ((_ is Leaf!25878) (right!43173 lt!2090885)))))

(declare-fun b!5082019 () Bool)

(assert (=> b!5082019 (= e!3169960 (list!19027 (xs!18954 (right!43173 lt!2090885))))))

(assert (= (and d!1643400 c!873090) b!5082017))

(assert (= (and d!1643400 (not c!873090)) b!5082018))

(assert (= (and b!5082018 c!873091) b!5082019))

(assert (= (and b!5082018 (not c!873091)) b!5082020))

(declare-fun m!6135964 () Bool)

(assert (=> b!5082020 m!6135964))

(declare-fun m!6135966 () Bool)

(assert (=> b!5082020 m!6135966))

(assert (=> b!5082020 m!6135964))

(assert (=> b!5082020 m!6135966))

(declare-fun m!6135968 () Bool)

(assert (=> b!5082020 m!6135968))

(declare-fun m!6135970 () Bool)

(assert (=> b!5082019 m!6135970))

(assert (=> b!5080979 d!1643400))

(declare-fun d!1643402 () Bool)

(declare-fun lt!2091118 () Int)

(assert (=> d!1643402 (>= lt!2091118 0)))

(declare-fun e!3169961 () Int)

(assert (=> d!1643402 (= lt!2091118 e!3169961)))

(declare-fun c!873092 () Bool)

(assert (=> d!1643402 (= c!873092 ((_ is Nil!58452) lt!2090958))))

(assert (=> d!1643402 (= (size!39113 lt!2090958) lt!2091118)))

(declare-fun b!5082021 () Bool)

(assert (=> b!5082021 (= e!3169961 0)))

(declare-fun b!5082022 () Bool)

(assert (=> b!5082022 (= e!3169961 (+ 1 (size!39113 (t!371393 lt!2090958))))))

(assert (= (and d!1643402 c!873092) b!5082021))

(assert (= (and d!1643402 (not c!873092)) b!5082022))

(declare-fun m!6135972 () Bool)

(assert (=> b!5082022 m!6135972))

(assert (=> b!5081024 d!1643402))

(declare-fun d!1643404 () Bool)

(declare-fun lt!2091119 () Int)

(assert (=> d!1643404 (>= lt!2091119 0)))

(declare-fun e!3169962 () Int)

(assert (=> d!1643404 (= lt!2091119 e!3169962)))

(declare-fun c!873093 () Bool)

(assert (=> d!1643404 (= c!873093 ((_ is Nil!58452) (list!19025 (left!42843 ys!41))))))

(assert (=> d!1643404 (= (size!39113 (list!19025 (left!42843 ys!41))) lt!2091119)))

(declare-fun b!5082023 () Bool)

(assert (=> b!5082023 (= e!3169962 0)))

(declare-fun b!5082024 () Bool)

(assert (=> b!5082024 (= e!3169962 (+ 1 (size!39113 (t!371393 (list!19025 (left!42843 ys!41))))))))

(assert (= (and d!1643404 c!873093) b!5082023))

(assert (= (and d!1643404 (not c!873093)) b!5082024))

(declare-fun m!6135974 () Bool)

(assert (=> b!5082024 m!6135974))

(assert (=> b!5081024 d!1643404))

(assert (=> b!5081024 d!1642968))

(declare-fun d!1643406 () Bool)

(assert (=> d!1643406 (= (isEmpty!31669 (list!19025 (right!43173 xs!286))) ((_ is Nil!58452) (list!19025 (right!43173 xs!286))))))

(assert (=> d!1642590 d!1643406))

(assert (=> d!1642590 d!1642480))

(assert (=> d!1642590 d!1643142))

(declare-fun d!1643408 () Bool)

(assert (=> d!1643408 (= (max!0 (height!2159 (left!42843 ys!41)) (height!2159 (right!43173 ys!41))) (ite (< (height!2159 (left!42843 ys!41)) (height!2159 (right!43173 ys!41))) (height!2159 (right!43173 ys!41)) (height!2159 (left!42843 ys!41))))))

(assert (=> b!5080787 d!1643408))

(assert (=> b!5080787 d!1642382))

(assert (=> b!5080787 d!1642380))

(declare-fun d!1643410 () Bool)

(declare-fun lt!2091120 () Int)

(assert (=> d!1643410 (>= lt!2091120 0)))

(declare-fun e!3169963 () Int)

(assert (=> d!1643410 (= lt!2091120 e!3169963)))

(declare-fun c!873094 () Bool)

(assert (=> d!1643410 (= c!873094 ((_ is Nil!58452) lt!2090956))))

(assert (=> d!1643410 (= (size!39113 lt!2090956) lt!2091120)))

(declare-fun b!5082025 () Bool)

(assert (=> b!5082025 (= e!3169963 0)))

(declare-fun b!5082026 () Bool)

(assert (=> b!5082026 (= e!3169963 (+ 1 (size!39113 (t!371393 lt!2090956))))))

(assert (= (and d!1643410 c!873094) b!5082025))

(assert (= (and d!1643410 (not c!873094)) b!5082026))

(declare-fun m!6135976 () Bool)

(assert (=> b!5082026 m!6135976))

(assert (=> b!5081006 d!1643410))

(declare-fun d!1643412 () Bool)

(declare-fun lt!2091121 () Int)

(assert (=> d!1643412 (>= lt!2091121 0)))

(declare-fun e!3169964 () Int)

(assert (=> d!1643412 (= lt!2091121 e!3169964)))

(declare-fun c!873095 () Bool)

(assert (=> d!1643412 (= c!873095 ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(assert (=> d!1643412 (= (size!39113 (list!19025 (left!42843 xs!286))) lt!2091121)))

(declare-fun b!5082027 () Bool)

(assert (=> b!5082027 (= e!3169964 0)))

(declare-fun b!5082028 () Bool)

(assert (=> b!5082028 (= e!3169964 (+ 1 (size!39113 (t!371393 (list!19025 (left!42843 xs!286))))))))

(assert (= (and d!1643412 c!873095) b!5082027))

(assert (= (and d!1643412 (not c!873095)) b!5082028))

(declare-fun m!6135978 () Bool)

(assert (=> b!5082028 m!6135978))

(assert (=> b!5081006 d!1643412))

(declare-fun d!1643414 () Bool)

(declare-fun lt!2091122 () Int)

(assert (=> d!1643414 (>= lt!2091122 0)))

(declare-fun e!3169965 () Int)

(assert (=> d!1643414 (= lt!2091122 e!3169965)))

(declare-fun c!873096 () Bool)

(assert (=> d!1643414 (= c!873096 ((_ is Nil!58452) (list!19025 (right!43173 xs!286))))))

(assert (=> d!1643414 (= (size!39113 (list!19025 (right!43173 xs!286))) lt!2091122)))

(declare-fun b!5082029 () Bool)

(assert (=> b!5082029 (= e!3169965 0)))

(declare-fun b!5082030 () Bool)

(assert (=> b!5082030 (= e!3169965 (+ 1 (size!39113 (t!371393 (list!19025 (right!43173 xs!286))))))))

(assert (= (and d!1643414 c!873096) b!5082029))

(assert (= (and d!1643414 (not c!873096)) b!5082030))

(declare-fun m!6135980 () Bool)

(assert (=> b!5082030 m!6135980))

(assert (=> b!5081006 d!1643414))

(assert (=> bm!354177 d!1642950))

(assert (=> b!5081001 d!1643352))

(assert (=> b!5081001 d!1643354))

(assert (=> b!5080801 d!1643304))

(assert (=> b!5080767 d!1642592))

(assert (=> b!5080767 d!1642594))

(declare-fun b!5082031 () Bool)

(declare-fun e!3169966 () List!58576)

(assert (=> b!5082031 (= e!3169966 Nil!58452)))

(declare-fun b!5082034 () Bool)

(declare-fun e!3169967 () List!58576)

(assert (=> b!5082034 (= e!3169967 (++!12811 (list!19025 (left!42843 lt!2090948)) (list!19025 (right!43173 lt!2090948))))))

(declare-fun d!1643416 () Bool)

(declare-fun c!873097 () Bool)

(assert (=> d!1643416 (= c!873097 ((_ is Empty!15582) lt!2090948))))

(assert (=> d!1643416 (= (list!19025 lt!2090948) e!3169966)))

(declare-fun b!5082032 () Bool)

(assert (=> b!5082032 (= e!3169966 e!3169967)))

(declare-fun c!873098 () Bool)

(assert (=> b!5082032 (= c!873098 ((_ is Leaf!25878) lt!2090948))))

(declare-fun b!5082033 () Bool)

(assert (=> b!5082033 (= e!3169967 (list!19027 (xs!18954 lt!2090948)))))

(assert (= (and d!1643416 c!873097) b!5082031))

(assert (= (and d!1643416 (not c!873097)) b!5082032))

(assert (= (and b!5082032 c!873098) b!5082033))

(assert (= (and b!5082032 (not c!873098)) b!5082034))

(declare-fun m!6135982 () Bool)

(assert (=> b!5082034 m!6135982))

(declare-fun m!6135984 () Bool)

(assert (=> b!5082034 m!6135984))

(assert (=> b!5082034 m!6135982))

(assert (=> b!5082034 m!6135984))

(declare-fun m!6135986 () Bool)

(assert (=> b!5082034 m!6135986))

(declare-fun m!6135988 () Bool)

(assert (=> b!5082033 m!6135988))

(assert (=> d!1642552 d!1643416))

(declare-fun e!3169968 () List!58576)

(declare-fun b!5082036 () Bool)

(assert (=> b!5082036 (= e!3169968 (Cons!58452 (h!64900 (list!19025 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))) (++!12811 (t!371393 (list!19025 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))) (list!19025 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))))))))

(declare-fun d!1643418 () Bool)

(declare-fun e!3169969 () Bool)

(assert (=> d!1643418 e!3169969))

(declare-fun res!2163560 () Bool)

(assert (=> d!1643418 (=> (not res!2163560) (not e!3169969))))

(declare-fun lt!2091123 () List!58576)

(assert (=> d!1643418 (= res!2163560 (= (content!10428 lt!2091123) ((_ map or) (content!10428 (list!19025 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))) (content!10428 (list!19025 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))))))))

(assert (=> d!1643418 (= lt!2091123 e!3169968)))

(declare-fun c!873099 () Bool)

(assert (=> d!1643418 (= c!873099 ((_ is Nil!58452) (list!19025 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))

(assert (=> d!1643418 (= (++!12811 (list!19025 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) (list!19025 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))) lt!2091123)))

(declare-fun b!5082035 () Bool)

(assert (=> b!5082035 (= e!3169968 (list!19025 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))))))

(declare-fun b!5082037 () Bool)

(declare-fun res!2163559 () Bool)

(assert (=> b!5082037 (=> (not res!2163559) (not e!3169969))))

(assert (=> b!5082037 (= res!2163559 (= (size!39113 lt!2091123) (+ (size!39113 (list!19025 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))) (size!39113 (list!19025 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))))))))

(declare-fun b!5082038 () Bool)

(assert (=> b!5082038 (= e!3169969 (or (not (= (list!19025 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) Nil!58452)) (= lt!2091123 (list!19025 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))

(assert (= (and d!1643418 c!873099) b!5082035))

(assert (= (and d!1643418 (not c!873099)) b!5082036))

(assert (= (and d!1643418 res!2163560) b!5082037))

(assert (= (and b!5082037 res!2163559) b!5082038))

(assert (=> b!5082036 m!6133682))

(declare-fun m!6135990 () Bool)

(assert (=> b!5082036 m!6135990))

(declare-fun m!6135992 () Bool)

(assert (=> d!1643418 m!6135992))

(assert (=> d!1643418 m!6133680))

(declare-fun m!6135994 () Bool)

(assert (=> d!1643418 m!6135994))

(assert (=> d!1643418 m!6133682))

(declare-fun m!6135996 () Bool)

(assert (=> d!1643418 m!6135996))

(declare-fun m!6135998 () Bool)

(assert (=> b!5082037 m!6135998))

(assert (=> b!5082037 m!6133680))

(assert (=> b!5082037 m!6135460))

(assert (=> b!5082037 m!6133682))

(assert (=> b!5082037 m!6135462))

(assert (=> d!1642552 d!1643418))

(declare-fun b!5082039 () Bool)

(declare-fun e!3169970 () List!58576)

(assert (=> b!5082039 (= e!3169970 Nil!58452)))

(declare-fun e!3169971 () List!58576)

(declare-fun b!5082042 () Bool)

(assert (=> b!5082042 (= e!3169971 (++!12811 (list!19025 (left!42843 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))) (list!19025 (right!43173 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))))))))

(declare-fun d!1643420 () Bool)

(declare-fun c!873100 () Bool)

(assert (=> d!1643420 (= c!873100 ((_ is Empty!15582) (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(assert (=> d!1643420 (= (list!19025 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))) e!3169970)))

(declare-fun b!5082040 () Bool)

(assert (=> b!5082040 (= e!3169970 e!3169971)))

(declare-fun c!873101 () Bool)

(assert (=> b!5082040 (= c!873101 ((_ is Leaf!25878) (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))))))))))

(declare-fun b!5082041 () Bool)

(assert (=> b!5082041 (= e!3169971 (list!19027 (xs!18954 (ite c!872700 xs!286 (ite c!872702 (ite c!872707 (left!42843 (right!43173 xs!286)) (left!42843 xs!286)) (ite c!872705 call!354117 (ite c!872706 lt!2090906 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))))))))))))

(assert (= (and d!1643420 c!873100) b!5082039))

(assert (= (and d!1643420 (not c!873100)) b!5082040))

(assert (= (and b!5082040 c!873101) b!5082041))

(assert (= (and b!5082040 (not c!873101)) b!5082042))

(declare-fun m!6136000 () Bool)

(assert (=> b!5082042 m!6136000))

(declare-fun m!6136002 () Bool)

(assert (=> b!5082042 m!6136002))

(assert (=> b!5082042 m!6136000))

(assert (=> b!5082042 m!6136002))

(declare-fun m!6136004 () Bool)

(assert (=> b!5082042 m!6136004))

(declare-fun m!6136006 () Bool)

(assert (=> b!5082041 m!6136006))

(assert (=> d!1642552 d!1643420))

(declare-fun b!5082043 () Bool)

(declare-fun e!3169972 () List!58576)

(assert (=> b!5082043 (= e!3169972 Nil!58452)))

(declare-fun e!3169973 () List!58576)

(declare-fun b!5082046 () Bool)

(assert (=> b!5082046 (= e!3169973 (++!12811 (list!19025 (left!42843 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))) (list!19025 (right!43173 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))))))))

(declare-fun c!873102 () Bool)

(declare-fun d!1643422 () Bool)

(assert (=> d!1643422 (= c!873102 ((_ is Empty!15582) (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))))))

(assert (=> d!1643422 (= (list!19025 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))) e!3169972)))

(declare-fun b!5082044 () Bool)

(assert (=> b!5082044 (= e!3169972 e!3169973)))

(declare-fun c!873103 () Bool)

(assert (=> b!5082044 (= c!873103 ((_ is Leaf!25878) (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41)))))))))))

(declare-fun b!5082045 () Bool)

(assert (=> b!5082045 (= e!3169973 (list!19027 (xs!18954 (ite c!872700 (left!42843 (left!42843 ys!41)) (ite c!872702 (ite c!872707 lt!2090908 (left!42843 (right!43173 xs!286))) (ite c!872705 (right!43173 (left!42843 (left!42843 ys!41))) (ite c!872706 (right!43173 (left!42843 (left!42843 (left!42843 ys!41)))) (right!43173 (left!42843 (left!42843 ys!41))))))))))))

(assert (= (and d!1643422 c!873102) b!5082043))

(assert (= (and d!1643422 (not c!873102)) b!5082044))

(assert (= (and b!5082044 c!873103) b!5082045))

(assert (= (and b!5082044 (not c!873103)) b!5082046))

(declare-fun m!6136008 () Bool)

(assert (=> b!5082046 m!6136008))

(declare-fun m!6136010 () Bool)

(assert (=> b!5082046 m!6136010))

(assert (=> b!5082046 m!6136008))

(assert (=> b!5082046 m!6136010))

(declare-fun m!6136012 () Bool)

(assert (=> b!5082046 m!6136012))

(declare-fun m!6136014 () Bool)

(assert (=> b!5082045 m!6136014))

(assert (=> d!1642552 d!1643422))

(declare-fun b!5082048 () Bool)

(declare-fun e!3169974 () List!58576)

(assert (=> b!5082048 (= e!3169974 (Cons!58452 (h!64900 (t!371393 (list!19025 (right!43173 (right!43173 xs!286))))) (++!12811 (t!371393 (t!371393 (list!19025 (right!43173 (right!43173 xs!286))))) (list!19025 ys!41))))))

(declare-fun d!1643424 () Bool)

(declare-fun e!3169975 () Bool)

(assert (=> d!1643424 e!3169975))

(declare-fun res!2163562 () Bool)

(assert (=> d!1643424 (=> (not res!2163562) (not e!3169975))))

(declare-fun lt!2091124 () List!58576)

(assert (=> d!1643424 (= res!2163562 (= (content!10428 lt!2091124) ((_ map or) (content!10428 (t!371393 (list!19025 (right!43173 (right!43173 xs!286))))) (content!10428 (list!19025 ys!41)))))))

(assert (=> d!1643424 (= lt!2091124 e!3169974)))

(declare-fun c!873104 () Bool)

(assert (=> d!1643424 (= c!873104 ((_ is Nil!58452) (t!371393 (list!19025 (right!43173 (right!43173 xs!286))))))))

(assert (=> d!1643424 (= (++!12811 (t!371393 (list!19025 (right!43173 (right!43173 xs!286)))) (list!19025 ys!41)) lt!2091124)))

(declare-fun b!5082047 () Bool)

(assert (=> b!5082047 (= e!3169974 (list!19025 ys!41))))

(declare-fun b!5082049 () Bool)

(declare-fun res!2163561 () Bool)

(assert (=> b!5082049 (=> (not res!2163561) (not e!3169975))))

(assert (=> b!5082049 (= res!2163561 (= (size!39113 lt!2091124) (+ (size!39113 (t!371393 (list!19025 (right!43173 (right!43173 xs!286))))) (size!39113 (list!19025 ys!41)))))))

(declare-fun b!5082050 () Bool)

(assert (=> b!5082050 (= e!3169975 (or (not (= (list!19025 ys!41) Nil!58452)) (= lt!2091124 (t!371393 (list!19025 (right!43173 (right!43173 xs!286)))))))))

(assert (= (and d!1643424 c!873104) b!5082047))

(assert (= (and d!1643424 (not c!873104)) b!5082048))

(assert (= (and d!1643424 res!2163562) b!5082049))

(assert (= (and b!5082049 res!2163561) b!5082050))

(assert (=> b!5082048 m!6132964))

(declare-fun m!6136016 () Bool)

(assert (=> b!5082048 m!6136016))

(declare-fun m!6136018 () Bool)

(assert (=> d!1643424 m!6136018))

(assert (=> d!1643424 m!6134922))

(assert (=> d!1643424 m!6132964))

(assert (=> d!1643424 m!6133322))

(declare-fun m!6136020 () Bool)

(assert (=> b!5082049 m!6136020))

(assert (=> b!5082049 m!6135122))

(assert (=> b!5082049 m!6132964))

(assert (=> b!5082049 m!6133332))

(assert (=> b!5080887 d!1643424))

(declare-fun d!1643426 () Bool)

(declare-fun lt!2091125 () Int)

(assert (=> d!1643426 (= lt!2091125 (size!39113 (list!19025 (left!42843 (left!42843 ys!41)))))))

(assert (=> d!1643426 (= lt!2091125 (ite ((_ is Empty!15582) (left!42843 (left!42843 ys!41))) 0 (ite ((_ is Leaf!25878) (left!42843 (left!42843 ys!41))) (csize!31395 (left!42843 (left!42843 ys!41))) (csize!31394 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1643426 (= (size!39112 (left!42843 (left!42843 ys!41))) lt!2091125)))

(declare-fun bs!1190699 () Bool)

(assert (= bs!1190699 d!1643426))

(assert (=> bs!1190699 m!6133024))

(assert (=> bs!1190699 m!6133024))

(assert (=> bs!1190699 m!6133452))

(assert (=> d!1642608 d!1643426))

(assert (=> d!1642608 d!1642682))

(assert (=> b!5080778 d!1643302))

(assert (=> b!5080778 d!1643304))

(declare-fun d!1643428 () Bool)

(assert (=> d!1643428 (= (max!0 (height!2159 (left!42843 (right!43173 xs!286))) (height!2159 (right!43173 (right!43173 xs!286)))) (ite (< (height!2159 (left!42843 (right!43173 xs!286))) (height!2159 (right!43173 (right!43173 xs!286)))) (height!2159 (right!43173 (right!43173 xs!286))) (height!2159 (left!42843 (right!43173 xs!286)))))))

(assert (=> b!5081208 d!1643428))

(assert (=> b!5081208 d!1643352))

(assert (=> b!5081208 d!1643354))

(declare-fun d!1643430 () Bool)

(assert (=> d!1643430 (= (isEmpty!31669 (list!19025 (right!43173 ys!41))) ((_ is Nil!58452) (list!19025 (right!43173 ys!41))))))

(assert (=> d!1642538 d!1643430))

(assert (=> d!1642538 d!1642602))

(assert (=> d!1642538 d!1642690))

(declare-fun d!1643432 () Bool)

(declare-fun lt!2091126 () Bool)

(assert (=> d!1643432 (= lt!2091126 (isEmpty!31669 (list!19025 (left!42843 (left!42843 xs!286)))))))

(assert (=> d!1643432 (= lt!2091126 (= (size!39112 (left!42843 (left!42843 xs!286))) 0))))

(assert (=> d!1643432 (= (isEmpty!31667 (left!42843 (left!42843 xs!286))) lt!2091126)))

(declare-fun bs!1190700 () Bool)

(assert (= bs!1190700 d!1643432))

(assert (=> bs!1190700 m!6133426))

(assert (=> bs!1190700 m!6133426))

(declare-fun m!6136022 () Bool)

(assert (=> bs!1190700 m!6136022))

(assert (=> bs!1190700 m!6133642))

(assert (=> b!5081190 d!1643432))

(declare-fun d!1643434 () Bool)

(declare-fun res!2163563 () Bool)

(declare-fun e!3169976 () Bool)

(assert (=> d!1643434 (=> (not res!2163563) (not e!3169976))))

(assert (=> d!1643434 (= res!2163563 (= (csize!31394 (left!42843 (right!43173 xs!286))) (+ (size!39112 (left!42843 (left!42843 (right!43173 xs!286)))) (size!39112 (right!43173 (left!42843 (right!43173 xs!286)))))))))

(assert (=> d!1643434 (= (inv!77656 (left!42843 (right!43173 xs!286))) e!3169976)))

(declare-fun b!5082051 () Bool)

(declare-fun res!2163564 () Bool)

(assert (=> b!5082051 (=> (not res!2163564) (not e!3169976))))

(assert (=> b!5082051 (= res!2163564 (and (not (= (left!42843 (left!42843 (right!43173 xs!286))) Empty!15582)) (not (= (right!43173 (left!42843 (right!43173 xs!286))) Empty!15582))))))

(declare-fun b!5082052 () Bool)

(declare-fun res!2163565 () Bool)

(assert (=> b!5082052 (=> (not res!2163565) (not e!3169976))))

(assert (=> b!5082052 (= res!2163565 (= (cheight!15793 (left!42843 (right!43173 xs!286))) (+ (max!0 (height!2159 (left!42843 (left!42843 (right!43173 xs!286)))) (height!2159 (right!43173 (left!42843 (right!43173 xs!286))))) 1)))))

(declare-fun b!5082053 () Bool)

(assert (=> b!5082053 (= e!3169976 (<= 0 (cheight!15793 (left!42843 (right!43173 xs!286)))))))

(assert (= (and d!1643434 res!2163563) b!5082051))

(assert (= (and b!5082051 res!2163564) b!5082052))

(assert (= (and b!5082052 res!2163565) b!5082053))

(declare-fun m!6136024 () Bool)

(assert (=> d!1643434 m!6136024))

(declare-fun m!6136026 () Bool)

(assert (=> d!1643434 m!6136026))

(declare-fun m!6136028 () Bool)

(assert (=> b!5082052 m!6136028))

(declare-fun m!6136030 () Bool)

(assert (=> b!5082052 m!6136030))

(assert (=> b!5082052 m!6136028))

(assert (=> b!5082052 m!6136030))

(declare-fun m!6136032 () Bool)

(assert (=> b!5082052 m!6136032))

(assert (=> b!5080906 d!1643434))

(declare-fun d!1643436 () Bool)

(declare-fun e!3169977 () Bool)

(assert (=> d!1643436 e!3169977))

(declare-fun c!873105 () Bool)

(assert (=> d!1643436 (= c!873105 ((_ is Nil!58452) (list!19025 (left!42843 xs!286))))))

(assert (=> d!1643436 (= (appendAssoc!312 (list!19025 (left!42843 xs!286)) (list!19025 (right!43173 xs!286)) (list!19025 (left!42843 (left!42843 ys!41)))) true)))

(declare-fun bm!354277 () Bool)

(declare-fun call!354284 () List!58576)

(assert (=> bm!354277 (= call!354284 (++!12811 (list!19025 (left!42843 xs!286)) (list!19025 (right!43173 xs!286))))))

(declare-fun bm!354278 () Bool)

(declare-fun call!354283 () List!58576)

(declare-fun call!354285 () List!58576)

(assert (=> bm!354278 (= call!354283 (++!12811 (list!19025 (left!42843 xs!286)) call!354285))))

(declare-fun bm!354279 () Bool)

(assert (=> bm!354279 (= call!354285 (++!12811 (list!19025 (right!43173 xs!286)) (list!19025 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5082054 () Bool)

(declare-fun call!354282 () List!58576)

(assert (=> b!5082054 (= e!3169977 (= call!354282 call!354283))))

(declare-fun bm!354280 () Bool)

(assert (=> bm!354280 (= call!354282 (++!12811 call!354284 (list!19025 (left!42843 (left!42843 ys!41)))))))

(declare-fun b!5082055 () Bool)

(assert (=> b!5082055 (= e!3169977 (= call!354282 call!354283))))

(declare-fun lt!2091127 () Bool)

(assert (=> b!5082055 (= lt!2091127 (appendAssoc!312 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (right!43173 xs!286)) (list!19025 (left!42843 (left!42843 ys!41)))))))

(assert (= (and d!1643436 c!873105) b!5082054))

(assert (= (and d!1643436 (not c!873105)) b!5082055))

(assert (= (or b!5082054 b!5082055) bm!354277))

(assert (= (or b!5082054 b!5082055) bm!354279))

(assert (= (or b!5082054 b!5082055) bm!354278))

(assert (= (or b!5082054 b!5082055) bm!354280))

(assert (=> bm!354279 m!6133032))

(assert (=> bm!354279 m!6133024))

(declare-fun m!6136034 () Bool)

(assert (=> bm!354279 m!6136034))

(assert (=> bm!354278 m!6133030))

(declare-fun m!6136036 () Bool)

(assert (=> bm!354278 m!6136036))

(assert (=> bm!354280 m!6133024))

(declare-fun m!6136038 () Bool)

(assert (=> bm!354280 m!6136038))

(assert (=> bm!354277 m!6133030))

(assert (=> bm!354277 m!6133032))

(assert (=> bm!354277 m!6133334))

(assert (=> b!5082055 m!6133032))

(assert (=> b!5082055 m!6133024))

(declare-fun m!6136040 () Bool)

(assert (=> b!5082055 m!6136040))

(assert (=> b!5081043 d!1643436))

(assert (=> b!5081043 d!1642478))

(assert (=> b!5081043 d!1642480))

(assert (=> b!5081043 d!1642486))

(declare-fun d!1643438 () Bool)

(declare-fun c!873106 () Bool)

(assert (=> d!1643438 (= c!873106 ((_ is Nil!58452) (t!371393 (list!19025 ys!41))))))

(declare-fun e!3169978 () (InoxSet T!105244))

(assert (=> d!1643438 (= (content!10428 (t!371393 (list!19025 ys!41))) e!3169978)))

(declare-fun b!5082056 () Bool)

(assert (=> b!5082056 (= e!3169978 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5082057 () Bool)

(assert (=> b!5082057 (= e!3169978 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (t!371393 (list!19025 ys!41))) true) (content!10428 (t!371393 (t!371393 (list!19025 ys!41))))))))

(assert (= (and d!1643438 c!873106) b!5082056))

(assert (= (and d!1643438 (not c!873106)) b!5082057))

(declare-fun m!6136042 () Bool)

(assert (=> b!5082057 m!6136042))

(declare-fun m!6136044 () Bool)

(assert (=> b!5082057 m!6136044))

(assert (=> b!5080949 d!1643438))

(assert (=> d!1642638 d!1643148))

(assert (=> d!1642638 d!1642934))

(assert (=> b!5081028 d!1643054))

(declare-fun d!1643440 () Bool)

(declare-fun e!3169979 () Bool)

(assert (=> d!1643440 e!3169979))

(declare-fun c!873107 () Bool)

(assert (=> d!1643440 (= c!873107 ((_ is Nil!58452) (t!371393 (list!19025 xs!286))))))

(assert (=> d!1643440 (= (appendAssoc!312 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 (left!42843 ys!41))) (list!19025 (right!43173 (left!42843 ys!41)))) true)))

(declare-fun bm!354281 () Bool)

(declare-fun call!354288 () List!58576)

(assert (=> bm!354281 (= call!354288 (++!12811 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 (left!42843 ys!41)))))))

(declare-fun bm!354282 () Bool)

(declare-fun call!354287 () List!58576)

(declare-fun call!354289 () List!58576)

(assert (=> bm!354282 (= call!354287 (++!12811 (t!371393 (list!19025 xs!286)) call!354289))))

(declare-fun bm!354283 () Bool)

(assert (=> bm!354283 (= call!354289 (++!12811 (list!19025 (left!42843 (left!42843 ys!41))) (list!19025 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5082058 () Bool)

(declare-fun call!354286 () List!58576)

(assert (=> b!5082058 (= e!3169979 (= call!354286 call!354287))))

(declare-fun bm!354284 () Bool)

(assert (=> bm!354284 (= call!354286 (++!12811 call!354288 (list!19025 (right!43173 (left!42843 ys!41)))))))

(declare-fun b!5082059 () Bool)

(assert (=> b!5082059 (= e!3169979 (= call!354286 call!354287))))

(declare-fun lt!2091128 () Bool)

(assert (=> b!5082059 (= lt!2091128 (appendAssoc!312 (t!371393 (t!371393 (list!19025 xs!286))) (list!19025 (left!42843 (left!42843 ys!41))) (list!19025 (right!43173 (left!42843 ys!41)))))))

(assert (= (and d!1643440 c!873107) b!5082058))

(assert (= (and d!1643440 (not c!873107)) b!5082059))

(assert (= (or b!5082058 b!5082059) bm!354281))

(assert (= (or b!5082058 b!5082059) bm!354283))

(assert (= (or b!5082058 b!5082059) bm!354282))

(assert (= (or b!5082058 b!5082059) bm!354284))

(assert (=> bm!354283 m!6133024))

(assert (=> bm!354283 m!6133018))

(assert (=> bm!354283 m!6133836))

(declare-fun m!6136046 () Bool)

(assert (=> bm!354282 m!6136046))

(assert (=> bm!354284 m!6133018))

(declare-fun m!6136048 () Bool)

(assert (=> bm!354284 m!6136048))

(assert (=> bm!354281 m!6133024))

(assert (=> bm!354281 m!6133444))

(assert (=> b!5082059 m!6133024))

(assert (=> b!5082059 m!6133018))

(declare-fun m!6136050 () Bool)

(assert (=> b!5082059 m!6136050))

(assert (=> b!5081012 d!1643440))

(declare-fun b!5082061 () Bool)

(declare-fun e!3169980 () List!58576)

(assert (=> b!5082061 (= e!3169980 (Cons!58452 (h!64900 (t!371393 (list!19025 (left!42843 ys!41)))) (++!12811 (t!371393 (t!371393 (list!19025 (left!42843 ys!41)))) (list!19025 (right!43173 ys!41)))))))

(declare-fun d!1643442 () Bool)

(declare-fun e!3169981 () Bool)

(assert (=> d!1643442 e!3169981))

(declare-fun res!2163567 () Bool)

(assert (=> d!1643442 (=> (not res!2163567) (not e!3169981))))

(declare-fun lt!2091129 () List!58576)

(assert (=> d!1643442 (= res!2163567 (= (content!10428 lt!2091129) ((_ map or) (content!10428 (t!371393 (list!19025 (left!42843 ys!41)))) (content!10428 (list!19025 (right!43173 ys!41))))))))

(assert (=> d!1643442 (= lt!2091129 e!3169980)))

(declare-fun c!873108 () Bool)

(assert (=> d!1643442 (= c!873108 ((_ is Nil!58452) (t!371393 (list!19025 (left!42843 ys!41)))))))

(assert (=> d!1643442 (= (++!12811 (t!371393 (list!19025 (left!42843 ys!41))) (list!19025 (right!43173 ys!41))) lt!2091129)))

(declare-fun b!5082060 () Bool)

(assert (=> b!5082060 (= e!3169980 (list!19025 (right!43173 ys!41)))))

(declare-fun b!5082062 () Bool)

(declare-fun res!2163566 () Bool)

(assert (=> b!5082062 (=> (not res!2163566) (not e!3169981))))

(assert (=> b!5082062 (= res!2163566 (= (size!39113 lt!2091129) (+ (size!39113 (t!371393 (list!19025 (left!42843 ys!41)))) (size!39113 (list!19025 (right!43173 ys!41))))))))

(declare-fun b!5082063 () Bool)

(assert (=> b!5082063 (= e!3169981 (or (not (= (list!19025 (right!43173 ys!41)) Nil!58452)) (= lt!2091129 (t!371393 (list!19025 (left!42843 ys!41))))))))

(assert (= (and d!1643442 c!873108) b!5082060))

(assert (= (and d!1643442 (not c!873108)) b!5082061))

(assert (= (and d!1643442 res!2163567) b!5082062))

(assert (= (and b!5082062 res!2163566) b!5082063))

(assert (=> b!5082061 m!6133016))

(declare-fun m!6136052 () Bool)

(assert (=> b!5082061 m!6136052))

(declare-fun m!6136054 () Bool)

(assert (=> d!1643442 m!6136054))

(declare-fun m!6136056 () Bool)

(assert (=> d!1643442 m!6136056))

(assert (=> d!1643442 m!6133016))

(assert (=> d!1643442 m!6133782))

(declare-fun m!6136058 () Bool)

(assert (=> b!5082062 m!6136058))

(assert (=> b!5082062 m!6135974))

(assert (=> b!5082062 m!6133016))

(assert (=> b!5082062 m!6133788))

(assert (=> b!5081023 d!1643442))

(declare-fun d!1643444 () Bool)

(declare-fun e!3169982 () Bool)

(assert (=> d!1643444 e!3169982))

(declare-fun c!873109 () Bool)

(assert (=> d!1643444 (= c!873109 ((_ is Nil!58452) (t!371393 (list!19025 (left!42843 xs!286)))))))

(assert (=> d!1643444 (= (appendAssoc!312 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))) true)))

(declare-fun bm!354285 () Bool)

(declare-fun call!354292 () List!58576)

(assert (=> bm!354285 (= call!354292 (++!12811 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (left!42843 (right!43173 xs!286)))))))

(declare-fun bm!354286 () Bool)

(declare-fun call!354291 () List!58576)

(declare-fun call!354293 () List!58576)

(assert (=> bm!354286 (= call!354291 (++!12811 (t!371393 (list!19025 (left!42843 xs!286))) call!354293))))

(declare-fun bm!354287 () Bool)

(assert (=> bm!354287 (= call!354293 (++!12811 (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))

(declare-fun b!5082064 () Bool)

(declare-fun call!354290 () List!58576)

(assert (=> b!5082064 (= e!3169982 (= call!354290 call!354291))))

(declare-fun bm!354288 () Bool)

(assert (=> bm!354288 (= call!354290 (++!12811 call!354292 (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))

(declare-fun b!5082065 () Bool)

(assert (=> b!5082065 (= e!3169982 (= call!354290 call!354291))))

(declare-fun lt!2091130 () Bool)

(assert (=> b!5082065 (= lt!2091130 (appendAssoc!312 (t!371393 (t!371393 (list!19025 (left!42843 xs!286)))) (list!19025 (left!42843 (right!43173 xs!286))) (++!12811 (list!19025 (right!43173 (right!43173 xs!286))) (list!19025 ys!41))))))

(assert (= (and d!1643444 c!873109) b!5082064))

(assert (= (and d!1643444 (not c!873109)) b!5082065))

(assert (= (or b!5082064 b!5082065) bm!354285))

(assert (= (or b!5082064 b!5082065) bm!354287))

(assert (= (or b!5082064 b!5082065) bm!354286))

(assert (= (or b!5082064 b!5082065) bm!354288))

(assert (=> bm!354287 m!6133036))

(assert (=> bm!354287 m!6133038))

(assert (=> bm!354287 m!6133552))

(declare-fun m!6136060 () Bool)

(assert (=> bm!354286 m!6136060))

(assert (=> bm!354288 m!6133038))

(declare-fun m!6136062 () Bool)

(assert (=> bm!354288 m!6136062))

(assert (=> bm!354285 m!6133036))

(assert (=> bm!354285 m!6134772))

(assert (=> b!5082065 m!6133036))

(assert (=> b!5082065 m!6133038))

(declare-fun m!6136064 () Bool)

(assert (=> b!5082065 m!6136064))

(assert (=> b!5080875 d!1643444))

(assert (=> bm!354215 d!1642622))

(declare-fun d!1643446 () Bool)

(declare-fun res!2163572 () Bool)

(declare-fun e!3169983 () Bool)

(assert (=> d!1643446 (=> res!2163572 e!3169983)))

(assert (=> d!1643446 (= res!2163572 (not ((_ is Node!15582) (left!42843 (right!43173 ys!41)))))))

(assert (=> d!1643446 (= (isBalanced!4444 (left!42843 (right!43173 ys!41))) e!3169983)))

(declare-fun b!5082066 () Bool)

(declare-fun res!2163568 () Bool)

(declare-fun e!3169984 () Bool)

(assert (=> b!5082066 (=> (not res!2163568) (not e!3169984))))

(assert (=> b!5082066 (= res!2163568 (<= (- (height!2159 (left!42843 (left!42843 (right!43173 ys!41)))) (height!2159 (right!43173 (left!42843 (right!43173 ys!41))))) 1))))

(declare-fun b!5082067 () Bool)

(declare-fun res!2163569 () Bool)

(assert (=> b!5082067 (=> (not res!2163569) (not e!3169984))))

(assert (=> b!5082067 (= res!2163569 (isBalanced!4444 (right!43173 (left!42843 (right!43173 ys!41)))))))

(declare-fun b!5082068 () Bool)

(declare-fun res!2163571 () Bool)

(assert (=> b!5082068 (=> (not res!2163571) (not e!3169984))))

(assert (=> b!5082068 (= res!2163571 (isBalanced!4444 (left!42843 (left!42843 (right!43173 ys!41)))))))

(declare-fun b!5082069 () Bool)

(assert (=> b!5082069 (= e!3169983 e!3169984)))

(declare-fun res!2163570 () Bool)

(assert (=> b!5082069 (=> (not res!2163570) (not e!3169984))))

(assert (=> b!5082069 (= res!2163570 (<= (- 1) (- (height!2159 (left!42843 (left!42843 (right!43173 ys!41)))) (height!2159 (right!43173 (left!42843 (right!43173 ys!41)))))))))

(declare-fun b!5082070 () Bool)

(declare-fun res!2163573 () Bool)

(assert (=> b!5082070 (=> (not res!2163573) (not e!3169984))))

(assert (=> b!5082070 (= res!2163573 (not (isEmpty!31667 (left!42843 (left!42843 (right!43173 ys!41))))))))

(declare-fun b!5082071 () Bool)

(assert (=> b!5082071 (= e!3169984 (not (isEmpty!31667 (right!43173 (left!42843 (right!43173 ys!41))))))))

(assert (= (and d!1643446 (not res!2163572)) b!5082069))

(assert (= (and b!5082069 res!2163570) b!5082066))

(assert (= (and b!5082066 res!2163568) b!5082068))

(assert (= (and b!5082068 res!2163571) b!5082067))

(assert (= (and b!5082067 res!2163569) b!5082070))

(assert (= (and b!5082070 res!2163573) b!5082071))

(declare-fun m!6136066 () Bool)

(assert (=> b!5082067 m!6136066))

(assert (=> b!5082066 m!6135554))

(assert (=> b!5082066 m!6135556))

(declare-fun m!6136068 () Bool)

(assert (=> b!5082071 m!6136068))

(assert (=> b!5082069 m!6135554))

(assert (=> b!5082069 m!6135556))

(declare-fun m!6136070 () Bool)

(assert (=> b!5082070 m!6136070))

(declare-fun m!6136072 () Bool)

(assert (=> b!5082068 m!6136072))

(assert (=> b!5080952 d!1643446))

(declare-fun b!5082073 () Bool)

(declare-fun e!3169985 () List!58576)

(assert (=> b!5082073 (= e!3169985 (Cons!58452 (h!64900 (t!371393 (list!19025 xs!286))) (++!12811 (t!371393 (t!371393 (list!19025 xs!286))) (list!19025 (left!42843 (left!42843 ys!41))))))))

(declare-fun d!1643448 () Bool)

(declare-fun e!3169986 () Bool)

(assert (=> d!1643448 e!3169986))

(declare-fun res!2163575 () Bool)

(assert (=> d!1643448 (=> (not res!2163575) (not e!3169986))))

(declare-fun lt!2091131 () List!58576)

(assert (=> d!1643448 (= res!2163575 (= (content!10428 lt!2091131) ((_ map or) (content!10428 (t!371393 (list!19025 xs!286))) (content!10428 (list!19025 (left!42843 (left!42843 ys!41)))))))))

(assert (=> d!1643448 (= lt!2091131 e!3169985)))

(declare-fun c!873110 () Bool)

(assert (=> d!1643448 (= c!873110 ((_ is Nil!58452) (t!371393 (list!19025 xs!286))))))

(assert (=> d!1643448 (= (++!12811 (t!371393 (list!19025 xs!286)) (list!19025 (left!42843 (left!42843 ys!41)))) lt!2091131)))

(declare-fun b!5082072 () Bool)

(assert (=> b!5082072 (= e!3169985 (list!19025 (left!42843 (left!42843 ys!41))))))

(declare-fun b!5082074 () Bool)

(declare-fun res!2163574 () Bool)

(assert (=> b!5082074 (=> (not res!2163574) (not e!3169986))))

(assert (=> b!5082074 (= res!2163574 (= (size!39113 lt!2091131) (+ (size!39113 (t!371393 (list!19025 xs!286))) (size!39113 (list!19025 (left!42843 (left!42843 ys!41)))))))))

(declare-fun b!5082075 () Bool)

(assert (=> b!5082075 (= e!3169986 (or (not (= (list!19025 (left!42843 (left!42843 ys!41))) Nil!58452)) (= lt!2091131 (t!371393 (list!19025 xs!286)))))))

(assert (= (and d!1643448 c!873110) b!5082072))

(assert (= (and d!1643448 (not c!873110)) b!5082073))

(assert (= (and d!1643448 res!2163575) b!5082074))

(assert (= (and b!5082074 res!2163574) b!5082075))

(assert (=> b!5082073 m!6133024))

(declare-fun m!6136074 () Bool)

(assert (=> b!5082073 m!6136074))

(declare-fun m!6136076 () Bool)

(assert (=> d!1643448 m!6136076))

(assert (=> d!1643448 m!6133726))

(assert (=> d!1643448 m!6133024))

(assert (=> d!1643448 m!6133448))

(declare-fun m!6136078 () Bool)

(assert (=> b!5082074 m!6136078))

(assert (=> b!5082074 m!6133748))

(assert (=> b!5082074 m!6133024))

(assert (=> b!5082074 m!6133452))

(assert (=> b!5080812 d!1643448))

(declare-fun d!1643450 () Bool)

(declare-fun lt!2091132 () Bool)

(assert (=> d!1643450 (= lt!2091132 (isEmpty!31669 (list!19025 (right!43173 (left!42843 (left!42843 ys!41))))))))

(assert (=> d!1643450 (= lt!2091132 (= (size!39112 (right!43173 (left!42843 (left!42843 ys!41)))) 0))))

(assert (=> d!1643450 (= (isEmpty!31667 (right!43173 (left!42843 (left!42843 ys!41)))) lt!2091132)))

(declare-fun bs!1190701 () Bool)

(assert (= bs!1190701 d!1643450))

(assert (=> bs!1190701 m!6133456))

(assert (=> bs!1190701 m!6133456))

(declare-fun m!6136080 () Bool)

(assert (=> bs!1190701 m!6136080))

(assert (=> bs!1190701 m!6134816))

(assert (=> b!5081102 d!1643450))

(declare-fun b!5082077 () Bool)

(declare-fun e!3169987 () List!58576)

(assert (=> b!5082077 (= e!3169987 (Cons!58452 (h!64900 (t!371393 (list!19025 (left!42843 xs!286)))) (++!12811 (t!371393 (t!371393 (list!19025 (left!42843 xs!286)))) (list!19025 (right!43173 xs!286)))))))

(declare-fun d!1643452 () Bool)

(declare-fun e!3169988 () Bool)

(assert (=> d!1643452 e!3169988))

(declare-fun res!2163577 () Bool)

(assert (=> d!1643452 (=> (not res!2163577) (not e!3169988))))

(declare-fun lt!2091133 () List!58576)

(assert (=> d!1643452 (= res!2163577 (= (content!10428 lt!2091133) ((_ map or) (content!10428 (t!371393 (list!19025 (left!42843 xs!286)))) (content!10428 (list!19025 (right!43173 xs!286))))))))

(assert (=> d!1643452 (= lt!2091133 e!3169987)))

(declare-fun c!873111 () Bool)

(assert (=> d!1643452 (= c!873111 ((_ is Nil!58452) (t!371393 (list!19025 (left!42843 xs!286)))))))

(assert (=> d!1643452 (= (++!12811 (t!371393 (list!19025 (left!42843 xs!286))) (list!19025 (right!43173 xs!286))) lt!2091133)))

(declare-fun b!5082076 () Bool)

(assert (=> b!5082076 (= e!3169987 (list!19025 (right!43173 xs!286)))))

(declare-fun b!5082078 () Bool)

(declare-fun res!2163576 () Bool)

(assert (=> b!5082078 (=> (not res!2163576) (not e!3169988))))

(assert (=> b!5082078 (= res!2163576 (= (size!39113 lt!2091133) (+ (size!39113 (t!371393 (list!19025 (left!42843 xs!286)))) (size!39113 (list!19025 (right!43173 xs!286))))))))

(declare-fun b!5082079 () Bool)

(assert (=> b!5082079 (= e!3169988 (or (not (= (list!19025 (right!43173 xs!286)) Nil!58452)) (= lt!2091133 (t!371393 (list!19025 (left!42843 xs!286))))))))

(assert (= (and d!1643452 c!873111) b!5082076))

(assert (= (and d!1643452 (not c!873111)) b!5082077))

(assert (= (and d!1643452 res!2163577) b!5082078))

(assert (= (and b!5082078 res!2163576) b!5082079))

(assert (=> b!5082077 m!6133032))

(declare-fun m!6136082 () Bool)

(assert (=> b!5082077 m!6136082))

(declare-fun m!6136084 () Bool)

(assert (=> d!1643452 m!6136084))

(assert (=> d!1643452 m!6135872))

(assert (=> d!1643452 m!6133032))

(assert (=> d!1643452 m!6133824))

(declare-fun m!6136086 () Bool)

(assert (=> b!5082078 m!6136086))

(assert (=> b!5082078 m!6135978))

(assert (=> b!5082078 m!6133032))

(assert (=> b!5082078 m!6133830))

(assert (=> b!5081005 d!1643452))

(declare-fun d!1643454 () Bool)

(assert (=> d!1643454 (= (list!19027 (xs!18954 lt!2090885)) (innerList!15670 (xs!18954 lt!2090885)))))

(assert (=> b!5080978 d!1643454))

(declare-fun d!1643456 () Bool)

(assert (=> d!1643456 (= (list!19027 (xs!18954 (left!42843 lt!2090875))) (innerList!15670 (xs!18954 (left!42843 lt!2090875))))))

(assert (=> b!5081061 d!1643456))

(declare-fun d!1643458 () Bool)

(declare-fun lt!2091134 () Int)

(assert (=> d!1643458 (>= lt!2091134 0)))

(declare-fun e!3169989 () Int)

(assert (=> d!1643458 (= lt!2091134 e!3169989)))

(declare-fun c!873112 () Bool)

(assert (=> d!1643458 (= c!873112 ((_ is Nil!58452) (t!371393 (innerList!15670 (xs!18954 xs!286)))))))

(assert (=> d!1643458 (= (size!39113 (t!371393 (innerList!15670 (xs!18954 xs!286)))) lt!2091134)))

(declare-fun b!5082080 () Bool)

(assert (=> b!5082080 (= e!3169989 0)))

(declare-fun b!5082081 () Bool)

(assert (=> b!5082081 (= e!3169989 (+ 1 (size!39113 (t!371393 (t!371393 (innerList!15670 (xs!18954 xs!286)))))))))

(assert (= (and d!1643458 c!873112) b!5082080))

(assert (= (and d!1643458 (not c!873112)) b!5082081))

(declare-fun m!6136088 () Bool)

(assert (=> b!5082081 m!6136088))

(assert (=> b!5081160 d!1643458))

(declare-fun d!1643460 () Bool)

(declare-fun c!873113 () Bool)

(assert (=> d!1643460 (= c!873113 ((_ is Nil!58452) lt!2090958))))

(declare-fun e!3169990 () (InoxSet T!105244))

(assert (=> d!1643460 (= (content!10428 lt!2090958) e!3169990)))

(declare-fun b!5082082 () Bool)

(assert (=> b!5082082 (= e!3169990 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5082083 () Bool)

(assert (=> b!5082083 (= e!3169990 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 lt!2090958) true) (content!10428 (t!371393 lt!2090958))))))

(assert (= (and d!1643460 c!873113) b!5082082))

(assert (= (and d!1643460 (not c!873113)) b!5082083))

(declare-fun m!6136090 () Bool)

(assert (=> b!5082083 m!6136090))

(declare-fun m!6136092 () Bool)

(assert (=> b!5082083 m!6136092))

(assert (=> d!1642622 d!1643460))

(declare-fun d!1643462 () Bool)

(declare-fun c!873114 () Bool)

(assert (=> d!1643462 (= c!873114 ((_ is Nil!58452) (list!19025 (left!42843 ys!41))))))

(declare-fun e!3169991 () (InoxSet T!105244))

(assert (=> d!1643462 (= (content!10428 (list!19025 (left!42843 ys!41))) e!3169991)))

(declare-fun b!5082084 () Bool)

(assert (=> b!5082084 (= e!3169991 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5082085 () Bool)

(assert (=> b!5082085 (= e!3169991 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 (left!42843 ys!41))) true) (content!10428 (t!371393 (list!19025 (left!42843 ys!41))))))))

(assert (= (and d!1643462 c!873114) b!5082084))

(assert (= (and d!1643462 (not c!873114)) b!5082085))

(declare-fun m!6136094 () Bool)

(assert (=> b!5082085 m!6136094))

(assert (=> b!5082085 m!6136056))

(assert (=> d!1642622 d!1643462))

(assert (=> d!1642622 d!1643136))

(declare-fun d!1643464 () Bool)

(declare-fun c!873115 () Bool)

(assert (=> d!1643464 (= c!873115 ((_ is Nil!58452) lt!2090925))))

(declare-fun e!3169992 () (InoxSet T!105244))

(assert (=> d!1643464 (= (content!10428 lt!2090925) e!3169992)))

(declare-fun b!5082086 () Bool)

(assert (=> b!5082086 (= e!3169992 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5082087 () Bool)

(assert (=> b!5082087 (= e!3169992 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 lt!2090925) true) (content!10428 (t!371393 lt!2090925))))))

(assert (= (and d!1643464 c!873115) b!5082086))

(assert (= (and d!1643464 (not c!873115)) b!5082087))

(declare-fun m!6136096 () Bool)

(assert (=> b!5082087 m!6136096))

(declare-fun m!6136098 () Bool)

(assert (=> b!5082087 m!6136098))

(assert (=> d!1642484 d!1643464))

(assert (=> d!1642484 d!1642566))

(declare-fun d!1643466 () Bool)

(declare-fun c!873116 () Bool)

(assert (=> d!1643466 (= c!873116 ((_ is Nil!58452) (list!19025 (left!42843 (left!42843 ys!41)))))))

(declare-fun e!3169993 () (InoxSet T!105244))

(assert (=> d!1643466 (= (content!10428 (list!19025 (left!42843 (left!42843 ys!41)))) e!3169993)))

(declare-fun b!5082088 () Bool)

(assert (=> b!5082088 (= e!3169993 ((as const (Array T!105244 Bool)) false))))

(declare-fun b!5082089 () Bool)

(assert (=> b!5082089 (= e!3169993 ((_ map or) (store ((as const (Array T!105244 Bool)) false) (h!64900 (list!19025 (left!42843 (left!42843 ys!41)))) true) (content!10428 (t!371393 (list!19025 (left!42843 (left!42843 ys!41)))))))))

(assert (= (and d!1643466 c!873116) b!5082088))

(assert (= (and d!1643466 (not c!873116)) b!5082089))

(declare-fun m!6136100 () Bool)

(assert (=> b!5082089 m!6136100))

(declare-fun m!6136102 () Bool)

(assert (=> b!5082089 m!6136102))

(assert (=> d!1642484 d!1643466))

(declare-fun d!1643468 () Bool)

(declare-fun res!2163582 () Bool)

(declare-fun e!3169994 () Bool)

(assert (=> d!1643468 (=> res!2163582 e!3169994)))

(assert (=> d!1643468 (= res!2163582 (not ((_ is Node!15582) (left!42843 (right!43173 xs!286)))))))

(assert (=> d!1643468 (= (isBalanced!4444 (left!42843 (right!43173 xs!286))) e!3169994)))

(declare-fun b!5082090 () Bool)

(declare-fun res!2163578 () Bool)

(declare-fun e!3169995 () Bool)

(assert (=> b!5082090 (=> (not res!2163578) (not e!3169995))))

(assert (=> b!5082090 (= res!2163578 (<= (- (height!2159 (left!42843 (left!42843 (right!43173 xs!286)))) (height!2159 (right!43173 (left!42843 (right!43173 xs!286))))) 1))))

(declare-fun b!5082091 () Bool)

(declare-fun res!2163579 () Bool)

(assert (=> b!5082091 (=> (not res!2163579) (not e!3169995))))

(assert (=> b!5082091 (= res!2163579 (isBalanced!4444 (right!43173 (left!42843 (right!43173 xs!286)))))))

(declare-fun b!5082092 () Bool)

(declare-fun res!2163581 () Bool)

(assert (=> b!5082092 (=> (not res!2163581) (not e!3169995))))

(assert (=> b!5082092 (= res!2163581 (isBalanced!4444 (left!42843 (left!42843 (right!43173 xs!286)))))))

(declare-fun b!5082093 () Bool)

(assert (=> b!5082093 (= e!3169994 e!3169995)))

(declare-fun res!2163580 () Bool)

(assert (=> b!5082093 (=> (not res!2163580) (not e!3169995))))

(assert (=> b!5082093 (= res!2163580 (<= (- 1) (- (height!2159 (left!42843 (left!42843 (right!43173 xs!286)))) (height!2159 (right!43173 (left!42843 (right!43173 xs!286)))))))))

(declare-fun b!5082094 () Bool)

(declare-fun res!2163583 () Bool)

(assert (=> b!5082094 (=> (not res!2163583) (not e!3169995))))

(assert (=> b!5082094 (= res!2163583 (not (isEmpty!31667 (left!42843 (left!42843 (right!43173 xs!286))))))))

(declare-fun b!5082095 () Bool)

(assert (=> b!5082095 (= e!3169995 (not (isEmpty!31667 (right!43173 (left!42843 (right!43173 xs!286))))))))

(assert (= (and d!1643468 (not res!2163582)) b!5082093))

(assert (= (and b!5082093 res!2163580) b!5082090))

(assert (= (and b!5082090 res!2163578) b!5082092))

(assert (= (and b!5082092 res!2163581) b!5082091))

(assert (= (and b!5082091 res!2163579) b!5082094))

(assert (= (and b!5082094 res!2163583) b!5082095))

(declare-fun m!6136104 () Bool)

(assert (=> b!5082091 m!6136104))

(assert (=> b!5082090 m!6136028))

(assert (=> b!5082090 m!6136030))

(declare-fun m!6136106 () Bool)

(assert (=> b!5082095 m!6136106))

(assert (=> b!5082093 m!6136028))

(assert (=> b!5082093 m!6136030))

(declare-fun m!6136108 () Bool)

(assert (=> b!5082094 m!6136108))

(declare-fun m!6136110 () Bool)

(assert (=> b!5082092 m!6136110))

(assert (=> b!5081000 d!1643468))

(declare-fun b!5082096 () Bool)

(declare-fun e!3169996 () Bool)

(declare-fun tp!1417148 () Bool)

(assert (=> b!5082096 (= e!3169996 (and tp_is_empty!37087 tp!1417148))))

(assert (=> b!5081268 (= tp!1417117 e!3169996)))

(assert (= (and b!5081268 ((_ is Cons!58452) (t!371393 (innerList!15670 (xs!18954 (left!42843 ys!41)))))) b!5082096))

(declare-fun b!5082097 () Bool)

(declare-fun e!3169997 () Bool)

(declare-fun tp!1417149 () Bool)

(assert (=> b!5082097 (= e!3169997 (and tp_is_empty!37087 tp!1417149))))

(assert (=> b!5081240 (= tp!1417101 e!3169997)))

(assert (= (and b!5081240 ((_ is Cons!58452) (t!371393 (innerList!15670 (xs!18954 (left!42843 xs!286)))))) b!5082097))

(declare-fun b!5082098 () Bool)

(declare-fun e!3169998 () Bool)

(declare-fun tp!1417150 () Bool)

(assert (=> b!5082098 (= e!3169998 (and tp_is_empty!37087 tp!1417150))))

(assert (=> b!5081228 (= tp!1417092 e!3169998)))

(assert (= (and b!5081228 ((_ is Cons!58452) (innerList!15670 (xs!18954 (right!43173 (right!43173 ys!41)))))) b!5082098))

(declare-fun b!5082099 () Bool)

(declare-fun e!3169999 () Bool)

(declare-fun tp!1417151 () Bool)

(assert (=> b!5082099 (= e!3169999 (and tp_is_empty!37087 tp!1417151))))

(assert (=> b!5081232 (= tp!1417096 e!3169999)))

(assert (= (and b!5081232 ((_ is Cons!58452) (innerList!15670 (xs!18954 (left!42843 (left!42843 xs!286)))))) b!5082099))

(declare-fun b!5082100 () Bool)

(declare-fun tp!1417152 () Bool)

(declare-fun tp!1417154 () Bool)

(declare-fun e!3170001 () Bool)

(assert (=> b!5082100 (= e!3170001 (and (inv!77654 (left!42843 (left!42843 (left!42843 (right!43173 xs!286))))) tp!1417154 (inv!77654 (right!43173 (left!42843 (left!42843 (right!43173 xs!286))))) tp!1417152))))

(declare-fun b!5082102 () Bool)

(declare-fun e!3170000 () Bool)

(declare-fun tp!1417153 () Bool)

(assert (=> b!5082102 (= e!3170000 tp!1417153)))

(declare-fun b!5082101 () Bool)

(assert (=> b!5082101 (= e!3170001 (and (inv!77655 (xs!18954 (left!42843 (left!42843 (right!43173 xs!286))))) e!3170000))))

(assert (=> b!5081241 (= tp!1417104 (and (inv!77654 (left!42843 (left!42843 (right!43173 xs!286)))) e!3170001))))

(assert (= (and b!5081241 ((_ is Node!15582) (left!42843 (left!42843 (right!43173 xs!286))))) b!5082100))

(assert (= b!5082101 b!5082102))

(assert (= (and b!5081241 ((_ is Leaf!25878) (left!42843 (left!42843 (right!43173 xs!286))))) b!5082101))

(declare-fun m!6136112 () Bool)

(assert (=> b!5082100 m!6136112))

(declare-fun m!6136114 () Bool)

(assert (=> b!5082100 m!6136114))

(declare-fun m!6136116 () Bool)

(assert (=> b!5082101 m!6136116))

(assert (=> b!5081241 m!6134324))

(declare-fun b!5082103 () Bool)

(declare-fun tp!1417155 () Bool)

(declare-fun tp!1417157 () Bool)

(declare-fun e!3170003 () Bool)

(assert (=> b!5082103 (= e!3170003 (and (inv!77654 (left!42843 (right!43173 (left!42843 (right!43173 xs!286))))) tp!1417157 (inv!77654 (right!43173 (right!43173 (left!42843 (right!43173 xs!286))))) tp!1417155))))

(declare-fun b!5082105 () Bool)

(declare-fun e!3170002 () Bool)

(declare-fun tp!1417156 () Bool)

(assert (=> b!5082105 (= e!3170002 tp!1417156)))

(declare-fun b!5082104 () Bool)

(assert (=> b!5082104 (= e!3170003 (and (inv!77655 (xs!18954 (right!43173 (left!42843 (right!43173 xs!286))))) e!3170002))))

(assert (=> b!5081241 (= tp!1417102 (and (inv!77654 (right!43173 (left!42843 (right!43173 xs!286)))) e!3170003))))

(assert (= (and b!5081241 ((_ is Node!15582) (right!43173 (left!42843 (right!43173 xs!286))))) b!5082103))

(assert (= b!5082104 b!5082105))

(assert (= (and b!5081241 ((_ is Leaf!25878) (right!43173 (left!42843 (right!43173 xs!286))))) b!5082104))

(declare-fun m!6136118 () Bool)

(assert (=> b!5082103 m!6136118))

(declare-fun m!6136120 () Bool)

(assert (=> b!5082103 m!6136120))

(declare-fun m!6136122 () Bool)

(assert (=> b!5082104 m!6136122))

(assert (=> b!5081241 m!6134326))

(declare-fun b!5082106 () Bool)

(declare-fun e!3170004 () Bool)

(declare-fun tp!1417158 () Bool)

(assert (=> b!5082106 (= e!3170004 (and tp_is_empty!37087 tp!1417158))))

(assert (=> b!5081250 (= tp!1417106 e!3170004)))

(assert (= (and b!5081250 ((_ is Cons!58452) (innerList!15670 (xs!18954 (right!43173 (right!43173 xs!286)))))) b!5082106))

(declare-fun b!5082107 () Bool)

(declare-fun e!3170005 () Bool)

(declare-fun tp!1417159 () Bool)

(assert (=> b!5082107 (= e!3170005 (and tp_is_empty!37087 tp!1417159))))

(assert (=> b!5081235 (= tp!1417099 e!3170005)))

(assert (= (and b!5081235 ((_ is Cons!58452) (innerList!15670 (xs!18954 (right!43173 (left!42843 xs!286)))))) b!5082107))

(declare-fun tp!1417162 () Bool)

(declare-fun b!5082108 () Bool)

(declare-fun tp!1417160 () Bool)

(declare-fun e!3170007 () Bool)

(assert (=> b!5082108 (= e!3170007 (and (inv!77654 (left!42843 (left!42843 (left!42843 (left!42843 ys!41))))) tp!1417162 (inv!77654 (right!43173 (left!42843 (left!42843 (left!42843 ys!41))))) tp!1417160))))

(declare-fun b!5082110 () Bool)

(declare-fun e!3170006 () Bool)

(declare-fun tp!1417161 () Bool)

(assert (=> b!5082110 (= e!3170006 tp!1417161)))

(declare-fun b!5082109 () Bool)

(assert (=> b!5082109 (= e!3170007 (and (inv!77655 (xs!18954 (left!42843 (left!42843 (left!42843 ys!41))))) e!3170006))))

(assert (=> b!5081252 (= tp!1417111 (and (inv!77654 (left!42843 (left!42843 (left!42843 ys!41)))) e!3170007))))

(assert (= (and b!5081252 ((_ is Node!15582) (left!42843 (left!42843 (left!42843 ys!41))))) b!5082108))

(assert (= b!5082109 b!5082110))

(assert (= (and b!5081252 ((_ is Leaf!25878) (left!42843 (left!42843 (left!42843 ys!41))))) b!5082109))

(declare-fun m!6136124 () Bool)

(assert (=> b!5082108 m!6136124))

(declare-fun m!6136126 () Bool)

(assert (=> b!5082108 m!6136126))

(declare-fun m!6136128 () Bool)

(assert (=> b!5082109 m!6136128))

(assert (=> b!5081252 m!6134346))

(declare-fun tp!1417165 () Bool)

(declare-fun b!5082111 () Bool)

(declare-fun e!3170009 () Bool)

(declare-fun tp!1417163 () Bool)

(assert (=> b!5082111 (= e!3170009 (and (inv!77654 (left!42843 (right!43173 (left!42843 (left!42843 ys!41))))) tp!1417165 (inv!77654 (right!43173 (right!43173 (left!42843 (left!42843 ys!41))))) tp!1417163))))

(declare-fun b!5082113 () Bool)

(declare-fun e!3170008 () Bool)

(declare-fun tp!1417164 () Bool)

(assert (=> b!5082113 (= e!3170008 tp!1417164)))

(declare-fun b!5082112 () Bool)

(assert (=> b!5082112 (= e!3170009 (and (inv!77655 (xs!18954 (right!43173 (left!42843 (left!42843 ys!41))))) e!3170008))))

(assert (=> b!5081252 (= tp!1417109 (and (inv!77654 (right!43173 (left!42843 (left!42843 ys!41)))) e!3170009))))

(assert (= (and b!5081252 ((_ is Node!15582) (right!43173 (left!42843 (left!42843 ys!41))))) b!5082111))

(assert (= b!5082112 b!5082113))

(assert (= (and b!5081252 ((_ is Leaf!25878) (right!43173 (left!42843 (left!42843 ys!41))))) b!5082112))

(declare-fun m!6136130 () Bool)

(assert (=> b!5082111 m!6136130))

(declare-fun m!6136132 () Bool)

(assert (=> b!5082111 m!6136132))

(declare-fun m!6136134 () Bool)

(assert (=> b!5082112 m!6136134))

(assert (=> b!5081252 m!6134348))

(declare-fun b!5082114 () Bool)

(declare-fun e!3170010 () Bool)

(declare-fun tp!1417166 () Bool)

(assert (=> b!5082114 (= e!3170010 (and tp_is_empty!37087 tp!1417166))))

(assert (=> b!5081266 (= tp!1417115 e!3170010)))

(assert (= (and b!5081266 ((_ is Cons!58452) (t!371393 (innerList!15670 (xs!18954 (right!43173 ys!41)))))) b!5082114))

(declare-fun b!5082115 () Bool)

(declare-fun e!3170011 () Bool)

(declare-fun tp!1417167 () Bool)

(assert (=> b!5082115 (= e!3170011 (and tp_is_empty!37087 tp!1417167))))

(assert (=> b!5081251 (= tp!1417108 e!3170011)))

(assert (= (and b!5081251 ((_ is Cons!58452) (t!371393 (t!371393 (innerList!15670 (xs!18954 xs!286)))))) b!5082115))

(declare-fun tp!1417168 () Bool)

(declare-fun e!3170013 () Bool)

(declare-fun tp!1417170 () Bool)

(declare-fun b!5082116 () Bool)

(assert (=> b!5082116 (= e!3170013 (and (inv!77654 (left!42843 (left!42843 (left!42843 (right!43173 ys!41))))) tp!1417170 (inv!77654 (right!43173 (left!42843 (left!42843 (right!43173 ys!41))))) tp!1417168))))

(declare-fun b!5082118 () Bool)

(declare-fun e!3170012 () Bool)

(declare-fun tp!1417169 () Bool)

(assert (=> b!5082118 (= e!3170012 tp!1417169)))

(declare-fun b!5082117 () Bool)

(assert (=> b!5082117 (= e!3170013 (and (inv!77655 (xs!18954 (left!42843 (left!42843 (right!43173 ys!41))))) e!3170012))))

(assert (=> b!5081219 (= tp!1417090 (and (inv!77654 (left!42843 (left!42843 (right!43173 ys!41)))) e!3170013))))

(assert (= (and b!5081219 ((_ is Node!15582) (left!42843 (left!42843 (right!43173 ys!41))))) b!5082116))

(assert (= b!5082117 b!5082118))

(assert (= (and b!5081219 ((_ is Leaf!25878) (left!42843 (left!42843 (right!43173 ys!41))))) b!5082117))

(declare-fun m!6136136 () Bool)

(assert (=> b!5082116 m!6136136))

(declare-fun m!6136138 () Bool)

(assert (=> b!5082116 m!6136138))

(declare-fun m!6136140 () Bool)

(assert (=> b!5082117 m!6136140))

(assert (=> b!5081219 m!6134278))

(declare-fun tp!1417173 () Bool)

(declare-fun tp!1417171 () Bool)

(declare-fun b!5082119 () Bool)

(declare-fun e!3170015 () Bool)

(assert (=> b!5082119 (= e!3170015 (and (inv!77654 (left!42843 (right!43173 (left!42843 (right!43173 ys!41))))) tp!1417173 (inv!77654 (right!43173 (right!43173 (left!42843 (right!43173 ys!41))))) tp!1417171))))

(declare-fun b!5082121 () Bool)

(declare-fun e!3170014 () Bool)

(declare-fun tp!1417172 () Bool)

(assert (=> b!5082121 (= e!3170014 tp!1417172)))

(declare-fun b!5082120 () Bool)

(assert (=> b!5082120 (= e!3170015 (and (inv!77655 (xs!18954 (right!43173 (left!42843 (right!43173 ys!41))))) e!3170014))))

(assert (=> b!5081219 (= tp!1417088 (and (inv!77654 (right!43173 (left!42843 (right!43173 ys!41)))) e!3170015))))

(assert (= (and b!5081219 ((_ is Node!15582) (right!43173 (left!42843 (right!43173 ys!41))))) b!5082119))

(assert (= b!5082120 b!5082121))

(assert (= (and b!5081219 ((_ is Leaf!25878) (right!43173 (left!42843 (right!43173 ys!41))))) b!5082120))

(declare-fun m!6136142 () Bool)

(assert (=> b!5082119 m!6136142))

(declare-fun m!6136144 () Bool)

(assert (=> b!5082119 m!6136144))

(declare-fun m!6136146 () Bool)

(assert (=> b!5082120 m!6136146))

(assert (=> b!5081219 m!6134280))

(declare-fun b!5082122 () Bool)

(declare-fun e!3170016 () Bool)

(declare-fun tp!1417174 () Bool)

(assert (=> b!5082122 (= e!3170016 (and tp_is_empty!37087 tp!1417174))))

(assert (=> b!5081243 (= tp!1417103 e!3170016)))

(assert (= (and b!5081243 ((_ is Cons!58452) (innerList!15670 (xs!18954 (left!42843 (right!43173 xs!286)))))) b!5082122))

(declare-fun b!5082123 () Bool)

(declare-fun e!3170017 () Bool)

(declare-fun tp!1417175 () Bool)

(assert (=> b!5082123 (= e!3170017 (and tp_is_empty!37087 tp!1417175))))

(assert (=> b!5081267 (= tp!1417116 e!3170017)))

(assert (= (and b!5081267 ((_ is Cons!58452) (t!371393 (t!371393 (innerList!15670 (xs!18954 ys!41)))))) b!5082123))

(declare-fun b!5082124 () Bool)

(declare-fun tp!1417176 () Bool)

(declare-fun tp!1417178 () Bool)

(declare-fun e!3170019 () Bool)

(assert (=> b!5082124 (= e!3170019 (and (inv!77654 (left!42843 (left!42843 (right!43173 (left!42843 ys!41))))) tp!1417178 (inv!77654 (right!43173 (left!42843 (right!43173 (left!42843 ys!41))))) tp!1417176))))

(declare-fun b!5082126 () Bool)

(declare-fun e!3170018 () Bool)

(declare-fun tp!1417177 () Bool)

(assert (=> b!5082126 (= e!3170018 tp!1417177)))

(declare-fun b!5082125 () Bool)

(assert (=> b!5082125 (= e!3170019 (and (inv!77655 (xs!18954 (left!42843 (right!43173 (left!42843 ys!41))))) e!3170018))))

(assert (=> b!5081259 (= tp!1417114 (and (inv!77654 (left!42843 (right!43173 (left!42843 ys!41)))) e!3170019))))

(assert (= (and b!5081259 ((_ is Node!15582) (left!42843 (right!43173 (left!42843 ys!41))))) b!5082124))

(assert (= b!5082125 b!5082126))

(assert (= (and b!5081259 ((_ is Leaf!25878) (left!42843 (right!43173 (left!42843 ys!41))))) b!5082125))

(declare-fun m!6136148 () Bool)

(assert (=> b!5082124 m!6136148))

(declare-fun m!6136150 () Bool)

(assert (=> b!5082124 m!6136150))

(declare-fun m!6136152 () Bool)

(assert (=> b!5082125 m!6136152))

(assert (=> b!5081259 m!6134360))

(declare-fun b!5082127 () Bool)

(declare-fun tp!1417179 () Bool)

(declare-fun tp!1417181 () Bool)

(declare-fun e!3170021 () Bool)

(assert (=> b!5082127 (= e!3170021 (and (inv!77654 (left!42843 (right!43173 (right!43173 (left!42843 ys!41))))) tp!1417181 (inv!77654 (right!43173 (right!43173 (right!43173 (left!42843 ys!41))))) tp!1417179))))

(declare-fun b!5082129 () Bool)

(declare-fun e!3170020 () Bool)

(declare-fun tp!1417180 () Bool)

(assert (=> b!5082129 (= e!3170020 tp!1417180)))

(declare-fun b!5082128 () Bool)

(assert (=> b!5082128 (= e!3170021 (and (inv!77655 (xs!18954 (right!43173 (right!43173 (left!42843 ys!41))))) e!3170020))))

(assert (=> b!5081259 (= tp!1417112 (and (inv!77654 (right!43173 (right!43173 (left!42843 ys!41)))) e!3170021))))

(assert (= (and b!5081259 ((_ is Node!15582) (right!43173 (right!43173 (left!42843 ys!41))))) b!5082127))

(assert (= b!5082128 b!5082129))

(assert (= (and b!5081259 ((_ is Leaf!25878) (right!43173 (right!43173 (left!42843 ys!41))))) b!5082128))

(declare-fun m!6136154 () Bool)

(assert (=> b!5082127 m!6136154))

(declare-fun m!6136156 () Bool)

(assert (=> b!5082127 m!6136156))

(declare-fun m!6136158 () Bool)

(assert (=> b!5082128 m!6136158))

(assert (=> b!5081259 m!6134362))

(declare-fun b!5082130 () Bool)

(declare-fun e!3170022 () Bool)

(declare-fun tp!1417182 () Bool)

(assert (=> b!5082130 (= e!3170022 (and tp_is_empty!37087 tp!1417182))))

(assert (=> b!5081254 (= tp!1417110 e!3170022)))

(assert (= (and b!5081254 ((_ is Cons!58452) (innerList!15670 (xs!18954 (left!42843 (left!42843 ys!41)))))) b!5082130))

(declare-fun b!5082131 () Bool)

(declare-fun e!3170023 () Bool)

(declare-fun tp!1417183 () Bool)

(assert (=> b!5082131 (= e!3170023 (and tp_is_empty!37087 tp!1417183))))

(assert (=> b!5081221 (= tp!1417089 e!3170023)))

(assert (= (and b!5081221 ((_ is Cons!58452) (innerList!15670 (xs!18954 (left!42843 (right!43173 ys!41)))))) b!5082131))

(declare-fun tp!1417184 () Bool)

(declare-fun b!5082132 () Bool)

(declare-fun e!3170025 () Bool)

(declare-fun tp!1417186 () Bool)

(assert (=> b!5082132 (= e!3170025 (and (inv!77654 (left!42843 (left!42843 (right!43173 (right!43173 ys!41))))) tp!1417186 (inv!77654 (right!43173 (left!42843 (right!43173 (right!43173 ys!41))))) tp!1417184))))

(declare-fun b!5082134 () Bool)

(declare-fun e!3170024 () Bool)

(declare-fun tp!1417185 () Bool)

(assert (=> b!5082134 (= e!3170024 tp!1417185)))

(declare-fun b!5082133 () Bool)

(assert (=> b!5082133 (= e!3170025 (and (inv!77655 (xs!18954 (left!42843 (right!43173 (right!43173 ys!41))))) e!3170024))))

(assert (=> b!5081226 (= tp!1417093 (and (inv!77654 (left!42843 (right!43173 (right!43173 ys!41)))) e!3170025))))

(assert (= (and b!5081226 ((_ is Node!15582) (left!42843 (right!43173 (right!43173 ys!41))))) b!5082132))

(assert (= b!5082133 b!5082134))

(assert (= (and b!5081226 ((_ is Leaf!25878) (left!42843 (right!43173 (right!43173 ys!41))))) b!5082133))

(declare-fun m!6136160 () Bool)

(assert (=> b!5082132 m!6136160))

(declare-fun m!6136162 () Bool)

(assert (=> b!5082132 m!6136162))

(declare-fun m!6136164 () Bool)

(assert (=> b!5082133 m!6136164))

(assert (=> b!5081226 m!6134292))

(declare-fun b!5082135 () Bool)

(declare-fun tp!1417189 () Bool)

(declare-fun tp!1417187 () Bool)

(declare-fun e!3170027 () Bool)

(assert (=> b!5082135 (= e!3170027 (and (inv!77654 (left!42843 (right!43173 (right!43173 (right!43173 ys!41))))) tp!1417189 (inv!77654 (right!43173 (right!43173 (right!43173 (right!43173 ys!41))))) tp!1417187))))

(declare-fun b!5082137 () Bool)

(declare-fun e!3170026 () Bool)

(declare-fun tp!1417188 () Bool)

(assert (=> b!5082137 (= e!3170026 tp!1417188)))

(declare-fun b!5082136 () Bool)

(assert (=> b!5082136 (= e!3170027 (and (inv!77655 (xs!18954 (right!43173 (right!43173 (right!43173 ys!41))))) e!3170026))))

(assert (=> b!5081226 (= tp!1417091 (and (inv!77654 (right!43173 (right!43173 (right!43173 ys!41)))) e!3170027))))

(assert (= (and b!5081226 ((_ is Node!15582) (right!43173 (right!43173 (right!43173 ys!41))))) b!5082135))

(assert (= b!5082136 b!5082137))

(assert (= (and b!5081226 ((_ is Leaf!25878) (right!43173 (right!43173 (right!43173 ys!41))))) b!5082136))

(declare-fun m!6136166 () Bool)

(assert (=> b!5082135 m!6136166))

(declare-fun m!6136168 () Bool)

(assert (=> b!5082135 m!6136168))

(declare-fun m!6136170 () Bool)

(assert (=> b!5082136 m!6136170))

(assert (=> b!5081226 m!6134294))

(declare-fun tp!1417192 () Bool)

(declare-fun e!3170029 () Bool)

(declare-fun tp!1417190 () Bool)

(declare-fun b!5082138 () Bool)

(assert (=> b!5082138 (= e!3170029 (and (inv!77654 (left!42843 (left!42843 (left!42843 (left!42843 xs!286))))) tp!1417192 (inv!77654 (right!43173 (left!42843 (left!42843 (left!42843 xs!286))))) tp!1417190))))

(declare-fun b!5082140 () Bool)

(declare-fun e!3170028 () Bool)

(declare-fun tp!1417191 () Bool)

(assert (=> b!5082140 (= e!3170028 tp!1417191)))

(declare-fun b!5082139 () Bool)

(assert (=> b!5082139 (= e!3170029 (and (inv!77655 (xs!18954 (left!42843 (left!42843 (left!42843 xs!286))))) e!3170028))))

(assert (=> b!5081230 (= tp!1417097 (and (inv!77654 (left!42843 (left!42843 (left!42843 xs!286)))) e!3170029))))

(assert (= (and b!5081230 ((_ is Node!15582) (left!42843 (left!42843 (left!42843 xs!286))))) b!5082138))

(assert (= b!5082139 b!5082140))

(assert (= (and b!5081230 ((_ is Leaf!25878) (left!42843 (left!42843 (left!42843 xs!286))))) b!5082139))

(declare-fun m!6136172 () Bool)

(assert (=> b!5082138 m!6136172))

(declare-fun m!6136174 () Bool)

(assert (=> b!5082138 m!6136174))

(declare-fun m!6136176 () Bool)

(assert (=> b!5082139 m!6136176))

(assert (=> b!5081230 m!6134300))

(declare-fun b!5082141 () Bool)

(declare-fun tp!1417193 () Bool)

(declare-fun tp!1417195 () Bool)

(declare-fun e!3170031 () Bool)

(assert (=> b!5082141 (= e!3170031 (and (inv!77654 (left!42843 (right!43173 (left!42843 (left!42843 xs!286))))) tp!1417195 (inv!77654 (right!43173 (right!43173 (left!42843 (left!42843 xs!286))))) tp!1417193))))

(declare-fun b!5082143 () Bool)

(declare-fun e!3170030 () Bool)

(declare-fun tp!1417194 () Bool)

(assert (=> b!5082143 (= e!3170030 tp!1417194)))

(declare-fun b!5082142 () Bool)

(assert (=> b!5082142 (= e!3170031 (and (inv!77655 (xs!18954 (right!43173 (left!42843 (left!42843 xs!286))))) e!3170030))))

(assert (=> b!5081230 (= tp!1417095 (and (inv!77654 (right!43173 (left!42843 (left!42843 xs!286)))) e!3170031))))

(assert (= (and b!5081230 ((_ is Node!15582) (right!43173 (left!42843 (left!42843 xs!286))))) b!5082141))

(assert (= b!5082142 b!5082143))

(assert (= (and b!5081230 ((_ is Leaf!25878) (right!43173 (left!42843 (left!42843 xs!286))))) b!5082142))

(declare-fun m!6136178 () Bool)

(assert (=> b!5082141 m!6136178))

(declare-fun m!6136180 () Bool)

(assert (=> b!5082141 m!6136180))

(declare-fun m!6136182 () Bool)

(assert (=> b!5082142 m!6136182))

(assert (=> b!5081230 m!6134302))

(declare-fun tp!1417198 () Bool)

(declare-fun tp!1417196 () Bool)

(declare-fun b!5082144 () Bool)

(declare-fun e!3170033 () Bool)

(assert (=> b!5082144 (= e!3170033 (and (inv!77654 (left!42843 (left!42843 (right!43173 (right!43173 xs!286))))) tp!1417198 (inv!77654 (right!43173 (left!42843 (right!43173 (right!43173 xs!286))))) tp!1417196))))

(declare-fun b!5082146 () Bool)

(declare-fun e!3170032 () Bool)

(declare-fun tp!1417197 () Bool)

(assert (=> b!5082146 (= e!3170032 tp!1417197)))

(declare-fun b!5082145 () Bool)

(assert (=> b!5082145 (= e!3170033 (and (inv!77655 (xs!18954 (left!42843 (right!43173 (right!43173 xs!286))))) e!3170032))))

(assert (=> b!5081248 (= tp!1417107 (and (inv!77654 (left!42843 (right!43173 (right!43173 xs!286)))) e!3170033))))

(assert (= (and b!5081248 ((_ is Node!15582) (left!42843 (right!43173 (right!43173 xs!286))))) b!5082144))

(assert (= b!5082145 b!5082146))

(assert (= (and b!5081248 ((_ is Leaf!25878) (left!42843 (right!43173 (right!43173 xs!286))))) b!5082145))

(declare-fun m!6136184 () Bool)

(assert (=> b!5082144 m!6136184))

(declare-fun m!6136186 () Bool)

(assert (=> b!5082144 m!6136186))

(declare-fun m!6136188 () Bool)

(assert (=> b!5082145 m!6136188))

(assert (=> b!5081248 m!6134330))

(declare-fun tp!1417199 () Bool)

(declare-fun b!5082147 () Bool)

(declare-fun tp!1417201 () Bool)

(declare-fun e!3170035 () Bool)

(assert (=> b!5082147 (= e!3170035 (and (inv!77654 (left!42843 (right!43173 (right!43173 (right!43173 xs!286))))) tp!1417201 (inv!77654 (right!43173 (right!43173 (right!43173 (right!43173 xs!286))))) tp!1417199))))

(declare-fun b!5082149 () Bool)

(declare-fun e!3170034 () Bool)

(declare-fun tp!1417200 () Bool)

(assert (=> b!5082149 (= e!3170034 tp!1417200)))

(declare-fun b!5082148 () Bool)

(assert (=> b!5082148 (= e!3170035 (and (inv!77655 (xs!18954 (right!43173 (right!43173 (right!43173 xs!286))))) e!3170034))))

(assert (=> b!5081248 (= tp!1417105 (and (inv!77654 (right!43173 (right!43173 (right!43173 xs!286)))) e!3170035))))

(assert (= (and b!5081248 ((_ is Node!15582) (right!43173 (right!43173 (right!43173 xs!286))))) b!5082147))

(assert (= b!5082148 b!5082149))

(assert (= (and b!5081248 ((_ is Leaf!25878) (right!43173 (right!43173 (right!43173 xs!286))))) b!5082148))

(declare-fun m!6136190 () Bool)

(assert (=> b!5082147 m!6136190))

(declare-fun m!6136192 () Bool)

(assert (=> b!5082147 m!6136192))

(declare-fun m!6136194 () Bool)

(assert (=> b!5082148 m!6136194))

(assert (=> b!5081248 m!6134332))

(declare-fun b!5082150 () Bool)

(declare-fun e!3170036 () Bool)

(declare-fun tp!1417202 () Bool)

(assert (=> b!5082150 (= e!3170036 (and tp_is_empty!37087 tp!1417202))))

(assert (=> b!5081229 (= tp!1417094 e!3170036)))

(assert (= (and b!5081229 ((_ is Cons!58452) (t!371393 (innerList!15670 (xs!18954 (right!43173 xs!286)))))) b!5082150))

(declare-fun b!5082151 () Bool)

(declare-fun e!3170037 () Bool)

(declare-fun tp!1417203 () Bool)

(assert (=> b!5082151 (= e!3170037 (and tp_is_empty!37087 tp!1417203))))

(assert (=> b!5081261 (= tp!1417113 e!3170037)))

(assert (= (and b!5081261 ((_ is Cons!58452) (innerList!15670 (xs!18954 (right!43173 (left!42843 ys!41)))))) b!5082151))

(declare-fun b!5082152 () Bool)

(declare-fun e!3170039 () Bool)

(declare-fun tp!1417206 () Bool)

(declare-fun tp!1417204 () Bool)

(assert (=> b!5082152 (= e!3170039 (and (inv!77654 (left!42843 (left!42843 (right!43173 (left!42843 xs!286))))) tp!1417206 (inv!77654 (right!43173 (left!42843 (right!43173 (left!42843 xs!286))))) tp!1417204))))

(declare-fun b!5082154 () Bool)

(declare-fun e!3170038 () Bool)

(declare-fun tp!1417205 () Bool)

(assert (=> b!5082154 (= e!3170038 tp!1417205)))

(declare-fun b!5082153 () Bool)

(assert (=> b!5082153 (= e!3170039 (and (inv!77655 (xs!18954 (left!42843 (right!43173 (left!42843 xs!286))))) e!3170038))))

(assert (=> b!5081233 (= tp!1417100 (and (inv!77654 (left!42843 (right!43173 (left!42843 xs!286)))) e!3170039))))

(assert (= (and b!5081233 ((_ is Node!15582) (left!42843 (right!43173 (left!42843 xs!286))))) b!5082152))

(assert (= b!5082153 b!5082154))

(assert (= (and b!5081233 ((_ is Leaf!25878) (left!42843 (right!43173 (left!42843 xs!286))))) b!5082153))

(declare-fun m!6136196 () Bool)

(assert (=> b!5082152 m!6136196))

(declare-fun m!6136198 () Bool)

(assert (=> b!5082152 m!6136198))

(declare-fun m!6136200 () Bool)

(assert (=> b!5082153 m!6136200))

(assert (=> b!5081233 m!6134310))

(declare-fun b!5082155 () Bool)

(declare-fun e!3170041 () Bool)

(declare-fun tp!1417207 () Bool)

(declare-fun tp!1417209 () Bool)

(assert (=> b!5082155 (= e!3170041 (and (inv!77654 (left!42843 (right!43173 (right!43173 (left!42843 xs!286))))) tp!1417209 (inv!77654 (right!43173 (right!43173 (right!43173 (left!42843 xs!286))))) tp!1417207))))

(declare-fun b!5082157 () Bool)

(declare-fun e!3170040 () Bool)

(declare-fun tp!1417208 () Bool)

(assert (=> b!5082157 (= e!3170040 tp!1417208)))

(declare-fun b!5082156 () Bool)

(assert (=> b!5082156 (= e!3170041 (and (inv!77655 (xs!18954 (right!43173 (right!43173 (left!42843 xs!286))))) e!3170040))))

(assert (=> b!5081233 (= tp!1417098 (and (inv!77654 (right!43173 (right!43173 (left!42843 xs!286)))) e!3170041))))

(assert (= (and b!5081233 ((_ is Node!15582) (right!43173 (right!43173 (left!42843 xs!286))))) b!5082155))

(assert (= b!5082156 b!5082157))

(assert (= (and b!5081233 ((_ is Leaf!25878) (right!43173 (right!43173 (left!42843 xs!286))))) b!5082156))

(declare-fun m!6136202 () Bool)

(assert (=> b!5082155 m!6136202))

(declare-fun m!6136204 () Bool)

(assert (=> b!5082155 m!6136204))

(declare-fun m!6136206 () Bool)

(assert (=> b!5082156 m!6136206))

(assert (=> b!5081233 m!6134312))

(check-sat (not b!5081597) (not b!5081574) (not bm!354283) (not b!5081415) (not d!1643300) (not d!1643452) (not b!5081466) (not b!5081686) (not b!5081684) (not d!1643250) (not d!1643228) (not b!5082028) (not b!5082045) (not b!5081558) (not b!5081416) (not b!5081425) (not b!5081955) (not d!1643226) (not b!5081754) (not bm!354272) (not b!5081702) (not d!1643122) (not b!5081573) (not d!1643060) (not d!1643186) (not d!1643162) (not b!5081618) (not b!5081485) (not b!5081440) (not bm!354273) (not b!5081706) (not b!5082034) (not b!5081479) (not b!5081475) (not b!5081733) (not b!5081781) (not b!5081694) (not bm!354258) (not bm!354265) (not b!5081248) (not b!5081766) (not b!5082121) (not b!5081732) (not b!5081746) (not b!5081852) (not b!5081233) (not b!5081728) (not bm!354241) (not b!5082098) (not d!1643244) (not bm!354268) (not b!5082120) (not b!5081421) (not b!5081817) (not b!5081664) (not b!5082130) (not b!5081910) (not b!5082131) (not b!5081940) (not b!5081230) (not b!5081804) (not d!1643290) (not b!5081842) (not b!5081880) (not b!5081252) (not b!5082150) (not d!1643350) (not b!5081792) (not b!5081974) (not d!1643268) (not b!5082140) (not b!5081768) (not b!5082147) (not bm!354231) (not d!1643326) (not b!5082006) (not b!5081803) (not bm!354245) (not b!5081405) (not b!5081873) (not b!5081593) (not b!5082033) (not d!1643176) (not d!1643274) (not b!5081495) (not b!5081977) (not b!5081434) (not b!5082145) (not d!1642952) (not d!1643384) (not bm!354236) (not b!5081488) (not d!1643144) (not b!5081839) (not b!5081966) (not b!5081556) (not d!1642894) (not b!5081427) (not b!5082123) (not b!5082037) (not b!5082114) (not b!5081539) (not b!5081609) (not b!5081981) (not b!5081510) (not b!5082091) (not bm!354286) (not b!5081719) (not d!1643366) (not b!5081786) (not b!5081452) (not b!5081989) (not d!1642940) (not b!5081472) (not b!5081735) (not b!5081846) (not b!5082149) (not b!5081477) (not b!5082094) (not bm!354257) (not b!5081503) (not b!5082126) (not d!1643158) (not b!5081704) (not b!5081823) (not b!5081764) (not b!5081752) (not b!5082109) (not b!5081763) (not b!5081571) (not b!5082148) (not bm!354260) (not b!5081959) (not b!5081861) (not b!5082068) (not b!5081856) (not b!5081467) (not bm!354246) (not b!5081758) (not d!1643278) (not b!5081512) (not d!1643284) (not b!5082052) (not b!5081836) (not b!5082059) (not b!5082057) (not b!5081933) (not b!5082019) (not b!5082115) (not d!1643424) (not b!5081501) (not d!1643180) (not d!1643426) (not b!5082010) (not b!5082000) (not b!5081568) (not bm!354232) (not b!5081560) (not b!5081968) (not b!5081531) (not d!1643320) (not b!5081857) (not b!5081458) (not b!5082108) (not b!5081401) (not b!5082118) (not b!5082143) (not b!5082048) (not b!5082090) (not d!1643340) (not b!5081676) (not b!5081874) (not b!5082003) (not b!5081657) (not bm!354230) (not b!5081661) (not b!5081409) (not b!5081747) (not bm!354275) (not b!5081787) (not b!5081549) (not b!5081831) (not b!5081403) (not b!5081731) (not b!5081700) (not d!1642936) (not b!5081398) (not b!5081602) (not d!1643336) (not d!1642980) (not b!5081877) (not b!5081727) (not b!5081504) (not d!1643050) (not b!5081433) (not b!5081795) (not b!5081710) (not b!5081654) (not b!5081761) (not b!5081498) (not bm!354279) (not b!5081447) (not b!5081515) (not b!5081537) (not b!5081605) (not b!5081869) (not b!5081607) (not b!5082141) (not d!1643396) (not b!5081489) (not b!5082026) (not d!1642958) (not b!5082007) (not b!5082049) (not b!5081775) (not b!5082002) (not b!5081990) (not b!5081895) (not b!5081499) (not b!5081550) (not b!5081441) (not b!5082111) (not b!5081946) (not bm!354276) (not b!5081532) (not b!5082132) (not b!5081908) (not b!5081455) (not b!5081835) (not d!1642978) (not d!1642922) (not b!5081424) (not b!5081699) (not d!1643032) (not b!5081843) (not d!1643164) (not b!5081523) (not b!5081656) (not b!5081772) (not b!5082081) (not b!5081739) (not b!5081429) (not b!5081866) (not b!5081899) (not d!1643088) (not b!5081462) (not b!5082046) (not b!5081973) (not b!5081904) (not b!5081566) (not b!5081784) (not b!5081482) (not b!5081480) (not d!1643092) (not b!5081591) (not b!5081905) (not b!5081992) (not b!5081748) (not b!5081402) (not b!5081614) (not b!5081259) (not d!1643168) (not b!5081647) (not b!5081903) (not b!5081918) (not b!5081785) (not d!1643310) (not b!5081400) (not b!5081936) (not b!5081408) (not d!1643006) (not b!5082071) (not b!5082119) (not bm!354269) (not b!5081527) tp_is_empty!37087 (not b!5082087) (not b!5082101) (not b!5081868) (not b!5082055) (not b!5081601) (not b!5082135) (not b!5082155) (not b!5081687) (not b!5082152) (not b!5081678) (not b!5081853) (not b!5081674) (not b!5081743) (not b!5082157) (not b!5082116) (not b!5081696) (not b!5081545) (not b!5082074) (not b!5081554) (not b!5082097) (not d!1642918) (not b!5082099) (not d!1642920) (not d!1643016) (not b!5082113) (not d!1643200) (not b!5081976) (not d!1643056) (not d!1642950) (not d!1643198) (not b!5082085) (not b!5081740) (not b!5081925) (not b!5081533) (not b!5081697) (not b!5081529) (not d!1643240) (not b!5081587) (not b!5081998) (not b!5081934) (not b!5081738) (not bm!354229) (not d!1643392) (not b!5081660) (not b!5081985) (not b!5081878) (not bm!354280) (not d!1643160) (not b!5082153) (not b!5081800) (not b!5082144) (not b!5081819) (not b!5082103) (not b!5081892) (not b!5082036) (not d!1643356) (not b!5081683) (not b!5081439) (not bm!354267) (not b!5081464) (not b!5081435) (not b!5081494) (not d!1643312) (not b!5081716) (not b!5081461) (not d!1643066) (not b!5081492) (not b!5081755) (not d!1643192) (not b!5082015) (not b!5081630) (not b!5081865) (not b!5081921) (not b!5081598) (not b!5081813) (not b!5081418) (not b!5081564) (not b!5081451) (not d!1643370) (not b!5081720) (not b!5081723) (not b!5081413) (not b!5081958) (not b!5081789) (not d!1642948) (not b!5081578) (not b!5081970) (not b!5081891) (not b!5082134) (not b!5082125) (not d!1643308) (not bm!354249) (not b!5081625) (not b!5081782) (not bm!354278) (not b!5082138) (not b!5081986) (not b!5081851) (not b!5082069) (not d!1643000) (not b!5081414) (not b!5082083) (not d!1643004) (not b!5081995) (not bm!354262) (not b!5081926) (not b!5082095) (not b!5081849) (not b!5082124) (not b!5082112) (not b!5082067) (not b!5081633) (not b!5081621) (not bm!354264) (not b!5082030) (not b!5081963) (not b!5081807) (not b!5081417) (not b!5081595) (not b!5081412) (not b!5081672) (not b!5081821) (not b!5082041) (not b!5081653) (not b!5081894) (not b!5081912) (not bm!354270) (not b!5081561) (not b!5081805) (not b!5081470) (not b!5081930) (not b!5081888) (not b!5082154) (not b!5081847) (not b!5082062) (not bm!354228) (not d!1642906) (not b!5082104) (not b!5081474) (not bm!354288) (not b!5081541) (not b!5081629) (not b!5081913) (not b!5082142) (not b!5082105) (not b!5082133) (not b!5082100) (not b!5082092) (not b!5081241) (not b!5081442) (not bm!354259) (not b!5081563) (not b!5082061) (not b!5081637) (not b!5082122) (not b!5082146) (not b!5081948) (not b!5082107) (not d!1642874) (not b!5082151) (not bm!354226) (not b!5081914) (not b!5081544) (not bm!354271) (not b!5082106) (not b!5081521) (not b!5081942) (not b!5082020) (not b!5082011) (not b!5081431) (not b!5081610) (not b!5081882) (not b!5081943) (not d!1643418) (not d!1643024) (not b!5081437) (not b!5081534) (not b!5082093) (not d!1643010) (not b!5082156) (not b!5082129) (not b!5081615) (not b!5081771) (not d!1643390) (not b!5081638) (not b!5081937) (not b!5082096) (not b!5081887) (not b!5081744) (not d!1643238) (not d!1643252) (not d!1643434) (not b!5081483) (not b!5082042) (not d!1643026) (not b!5081830) (not b!5081707) (not bm!354256) (not b!5081623) (not b!5082128) (not b!5081219) (not b!5082110) (not bm!354235) (not d!1642996) (not b!5082102) (not b!5081945) (not b!5082066) (not b!5082137) (not d!1643034) (not b!5081954) (not b!5081801) (not bm!354285) (not b!5081994) (not b!5081436) (not bm!354287) (not b!5081419) (not b!5081920) (not b!5081750) (not b!5081506) (not b!5082022) (not d!1643074) (not d!1643116) (not b!5081900) (not bm!354263) (not b!5081689) (not b!5081456) (not bm!354261) (not b!5081619) (not b!5081932) (not b!5081854) (not b!5081500) (not b!5081444) (not d!1643108) (not b!5081641) (not d!1643146) (not d!1643432) (not d!1643110) (not b!5081663) (not b!5081691) (not b!5081915) (not b!5081679) (not b!5081982) (not b!5081446) (not b!5081438) (not b!5081583) (not b!5081802) (not d!1643104) (not bm!354240) (not d!1643138) (not b!5081916) (not b!5081666) (not b!5081722) (not d!1643210) (not b!5081812) (not d!1643248) (not b!5081530) (not b!5081711) (not b!5081816) (not d!1642954) (not b!5081860) (not bm!354274) (not d!1643002) (not bm!354248) (not b!5081572) (not b!5081459) (not bm!354282) (not b!5081553) (not b!5081668) (not b!5081577) (not d!1643442) (not d!1643348) (not b!5081797) (not d!1643450) (not bm!354237) (not b!5081575) (not bm!354225) (not b!5081586) (not b!5081509) (not b!5081742) (not d!1643130) (not b!5082139) (not b!5082016) (not b!5081788) (not b!5081935) (not bm!354234) (not b!5081850) (not b!5081799) (not b!5081491) (not b!5081701) (not b!5081703) (not d!1643142) (not b!5081827) (not b!5082078) (not b!5082089) (not d!1643256) (not b!5081519) (not bm!354281) (not b!5081951) (not d!1643262) (not bm!354227) (not b!5081478) (not b!5081917) (not bm!354233) (not d!1642898) (not b!5082127) (not d!1643156) (not b!5081226) (not bm!354238) (not b!5082117) (not d!1643394) (not b!5081525) (not bm!354239) (not bm!354252) (not b!5081422) (not b!5081487) (not b!5081626) (not d!1643140) (not bm!354284) (not bm!354277) (not b!5082136) (not b!5081737) (not b!5081490) (not bm!354266) (not b!5081715) (not b!5081987) (not b!5081779) (not b!5081929) (not b!5082077) (not b!5082065) (not b!5081736) (not b!5081502) (not d!1643298) (not d!1643264) (not b!5081399) (not b!5081791) (not b!5081938) (not b!5081570) (not b!5081825) (not d!1643216) (not b!5081883) (not b!5082070) (not b!5081582) (not b!5081745) (not b!5081776) (not b!5081692) (not b!5081840) (not d!1643346) (not b!5082024) (not b!5081535) (not d!1643448) (not b!5082073) (not b!5081516) (not b!5081481) (not b!5081962) (not b!5081950) (not b!5081808))
(check-sat)
