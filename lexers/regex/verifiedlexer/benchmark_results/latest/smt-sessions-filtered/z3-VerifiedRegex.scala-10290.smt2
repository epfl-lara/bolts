; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535334 () Bool)

(assert start!535334)

(declare-fun b!5072222 () Bool)

(declare-fun e!3164801 () Bool)

(declare-datatypes ((T!105174 0))(
  ( (T!105175 (val!23656 Int)) )
))
(declare-datatypes ((List!58566 0))(
  ( (Nil!58442) (Cons!58442 (h!64890 T!105174) (t!371335 List!58566)) )
))
(declare-datatypes ((IArray!31205 0))(
  ( (IArray!31206 (innerList!15660 List!58566)) )
))
(declare-datatypes ((Conc!15572 0))(
  ( (Node!15572 (left!42828 Conc!15572) (right!43158 Conc!15572) (csize!31374 Int) (cheight!15783 Int)) (Leaf!25863 (xs!18930 IArray!31205) (csize!31375 Int)) (Empty!15572) )
))
(declare-fun err!4609 () Conc!15572)

(declare-fun e!3164806 () Bool)

(declare-fun inv!77599 (IArray!31205) Bool)

(assert (=> b!5072222 (= e!3164801 (and (inv!77599 (xs!18930 err!4609)) e!3164806))))

(declare-fun lt!2089724 () Conc!15572)

(declare-fun xs!286 () Conc!15572)

(declare-fun b!5072223 () Bool)

(declare-fun e!3164800 () Bool)

(declare-fun ys!41 () Conc!15572)

(declare-fun list!19005 (Conc!15572) List!58566)

(declare-fun ++!12795 (List!58566 List!58566) List!58566)

(assert (=> b!5072223 (= e!3164800 (not (= (list!19005 lt!2089724) (++!12795 (list!19005 xs!286) (list!19005 ys!41)))))))

(declare-fun b!5072224 () Bool)

(declare-fun e!3164803 () Bool)

(declare-fun tp!1415802 () Bool)

(assert (=> b!5072224 (= e!3164803 tp!1415802)))

(declare-fun b!5072225 () Bool)

(declare-fun e!3164804 () Bool)

(assert (=> b!5072225 (= e!3164804 (and (inv!77599 (xs!18930 xs!286)) e!3164803))))

(declare-fun b!5072226 () Bool)

(declare-fun res!2159554 () Bool)

(declare-fun e!3164805 () Bool)

(assert (=> b!5072226 (=> (not res!2159554) (not e!3164805))))

(declare-fun isBalanced!4434 (Conc!15572) Bool)

(assert (=> b!5072226 (= res!2159554 (isBalanced!4434 ys!41))))

(declare-fun b!5072227 () Bool)

(declare-fun e!3164799 () Bool)

(declare-fun e!3164808 () Bool)

(assert (=> b!5072227 (= e!3164799 e!3164808)))

(declare-fun res!2159550 () Bool)

(assert (=> b!5072227 (=> res!2159550 e!3164808)))

(declare-fun appendAssocInst!914 (Conc!15572 Conc!15572) Bool)

(assert (=> b!5072227 (= res!2159550 (not (appendAssocInst!914 xs!286 ys!41)))))

(assert (=> b!5072227 (= lt!2089724 err!4609)))

(assert (=> b!5072227 true))

(declare-fun inv!77600 (Conc!15572) Bool)

(assert (=> b!5072227 (and (inv!77600 err!4609) e!3164801)))

(declare-fun b!5072228 () Bool)

(declare-fun e!3164802 () Bool)

(declare-fun e!3164807 () Bool)

(assert (=> b!5072228 (= e!3164802 (and (inv!77599 (xs!18930 ys!41)) e!3164807))))

(declare-fun res!2159549 () Bool)

(assert (=> start!535334 (=> (not res!2159549) (not e!3164805))))

(assert (=> start!535334 (= res!2159549 (isBalanced!4434 xs!286))))

(assert (=> start!535334 e!3164805))

(assert (=> start!535334 (and (inv!77600 xs!286) e!3164804)))

(assert (=> start!535334 (and (inv!77600 ys!41) e!3164802)))

(declare-fun tp!1415799 () Bool)

(declare-fun b!5072229 () Bool)

(declare-fun tp!1415795 () Bool)

(assert (=> b!5072229 (= e!3164802 (and (inv!77600 (left!42828 ys!41)) tp!1415795 (inv!77600 (right!43158 ys!41)) tp!1415799))))

(declare-fun b!5072230 () Bool)

(declare-fun res!2159552 () Bool)

(assert (=> b!5072230 (=> (not res!2159552) (not e!3164805))))

(assert (=> b!5072230 (= res!2159552 (and (not (= xs!286 Empty!15572)) (not (= ys!41 Empty!15572))))))

(declare-fun b!5072231 () Bool)

(declare-fun tp!1415801 () Bool)

(declare-fun tp!1415803 () Bool)

(assert (=> b!5072231 (= e!3164801 (and (inv!77600 (left!42828 err!4609)) tp!1415801 (inv!77600 (right!43158 err!4609)) tp!1415803))))

(declare-fun b!5072232 () Bool)

(declare-fun tp!1415798 () Bool)

(declare-fun tp!1415800 () Bool)

(assert (=> b!5072232 (= e!3164804 (and (inv!77600 (left!42828 xs!286)) tp!1415800 (inv!77600 (right!43158 xs!286)) tp!1415798))))

(declare-fun b!5072233 () Bool)

(declare-fun tp!1415797 () Bool)

(assert (=> b!5072233 (= e!3164806 tp!1415797)))

(declare-fun b!5072234 () Bool)

(assert (=> b!5072234 (= e!3164808 e!3164800)))

(declare-fun res!2159551 () Bool)

(assert (=> b!5072234 (=> res!2159551 e!3164800)))

(declare-fun lt!2089726 () Int)

(declare-fun lt!2089727 () Int)

(assert (=> b!5072234 (= res!2159551 (or (> lt!2089726 (+ 1 lt!2089727)) (< lt!2089726 lt!2089727)))))

(declare-fun height!2149 (Conc!15572) Int)

(assert (=> b!5072234 (= lt!2089726 (height!2149 lt!2089724))))

(declare-fun lt!2089729 () Int)

(declare-fun lt!2089728 () Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5072234 (= lt!2089727 (max!0 lt!2089729 lt!2089728))))

(declare-fun b!5072235 () Bool)

(assert (=> b!5072235 (= e!3164805 e!3164799)))

(declare-fun res!2159555 () Bool)

(assert (=> b!5072235 (=> (not res!2159555) (not e!3164799))))

(declare-fun lt!2089725 () Int)

(get-info :version)

(assert (=> b!5072235 (= res!2159555 (and (or (> (- 1) lt!2089725) (> lt!2089725 1)) (< lt!2089725 (- 1)) (not ((_ is Node!15572) xs!286))))))

(assert (=> b!5072235 (= lt!2089725 (- lt!2089728 lt!2089729))))

(assert (=> b!5072235 (= lt!2089729 (height!2149 xs!286))))

(assert (=> b!5072235 (= lt!2089728 (height!2149 ys!41))))

(declare-fun b!5072236 () Bool)

(declare-fun res!2159553 () Bool)

(assert (=> b!5072236 (=> res!2159553 e!3164808)))

(assert (=> b!5072236 (= res!2159553 (not (isBalanced!4434 lt!2089724)))))

(declare-fun b!5072237 () Bool)

(declare-fun tp!1415796 () Bool)

(assert (=> b!5072237 (= e!3164807 tp!1415796)))

(assert (= (and start!535334 res!2159549) b!5072226))

(assert (= (and b!5072226 res!2159554) b!5072230))

(assert (= (and b!5072230 res!2159552) b!5072235))

(assert (= (and b!5072235 res!2159555) b!5072227))

(assert (= (and b!5072227 ((_ is Node!15572) err!4609)) b!5072231))

(assert (= b!5072222 b!5072233))

(assert (= (and b!5072227 ((_ is Leaf!25863) err!4609)) b!5072222))

(assert (= (and b!5072227 (not res!2159550)) b!5072236))

(assert (= (and b!5072236 (not res!2159553)) b!5072234))

(assert (= (and b!5072234 (not res!2159551)) b!5072223))

(assert (= (and start!535334 ((_ is Node!15572) xs!286)) b!5072232))

(assert (= b!5072225 b!5072224))

(assert (= (and start!535334 ((_ is Leaf!25863) xs!286)) b!5072225))

(assert (= (and start!535334 ((_ is Node!15572) ys!41)) b!5072229))

(assert (= b!5072228 b!5072237))

(assert (= (and start!535334 ((_ is Leaf!25863) ys!41)) b!5072228))

(declare-fun m!6118934 () Bool)

(assert (=> b!5072236 m!6118934))

(declare-fun m!6118936 () Bool)

(assert (=> start!535334 m!6118936))

(declare-fun m!6118938 () Bool)

(assert (=> start!535334 m!6118938))

(declare-fun m!6118940 () Bool)

(assert (=> start!535334 m!6118940))

(declare-fun m!6118942 () Bool)

(assert (=> b!5072231 m!6118942))

(declare-fun m!6118944 () Bool)

(assert (=> b!5072231 m!6118944))

(declare-fun m!6118946 () Bool)

(assert (=> b!5072232 m!6118946))

(declare-fun m!6118948 () Bool)

(assert (=> b!5072232 m!6118948))

(declare-fun m!6118950 () Bool)

(assert (=> b!5072228 m!6118950))

(declare-fun m!6118952 () Bool)

(assert (=> b!5072229 m!6118952))

(declare-fun m!6118954 () Bool)

(assert (=> b!5072229 m!6118954))

(declare-fun m!6118956 () Bool)

(assert (=> b!5072227 m!6118956))

(declare-fun m!6118958 () Bool)

(assert (=> b!5072227 m!6118958))

(declare-fun m!6118960 () Bool)

(assert (=> b!5072226 m!6118960))

(declare-fun m!6118962 () Bool)

(assert (=> b!5072222 m!6118962))

(declare-fun m!6118964 () Bool)

(assert (=> b!5072235 m!6118964))

(declare-fun m!6118966 () Bool)

(assert (=> b!5072235 m!6118966))

(declare-fun m!6118968 () Bool)

(assert (=> b!5072223 m!6118968))

(declare-fun m!6118970 () Bool)

(assert (=> b!5072223 m!6118970))

(declare-fun m!6118972 () Bool)

(assert (=> b!5072223 m!6118972))

(assert (=> b!5072223 m!6118970))

(assert (=> b!5072223 m!6118972))

(declare-fun m!6118974 () Bool)

(assert (=> b!5072223 m!6118974))

(declare-fun m!6118976 () Bool)

(assert (=> b!5072234 m!6118976))

(declare-fun m!6118978 () Bool)

(assert (=> b!5072234 m!6118978))

(declare-fun m!6118980 () Bool)

(assert (=> b!5072225 m!6118980))

(check-sat (not b!5072235) (not b!5072231) (not b!5072236) (not b!5072227) (not start!535334) (not b!5072226) (not b!5072224) (not b!5072228) (not b!5072223) (not b!5072237) (not b!5072234) (not b!5072233) (not b!5072222) (not b!5072229) (not b!5072225) (not b!5072232))
(check-sat)
(get-model)

(declare-fun d!1637327 () Bool)

(declare-fun c!870900 () Bool)

(assert (=> d!1637327 (= c!870900 ((_ is Node!15572) (left!42828 xs!286)))))

(declare-fun e!3164837 () Bool)

(assert (=> d!1637327 (= (inv!77600 (left!42828 xs!286)) e!3164837)))

(declare-fun b!5072280 () Bool)

(declare-fun inv!77601 (Conc!15572) Bool)

(assert (=> b!5072280 (= e!3164837 (inv!77601 (left!42828 xs!286)))))

(declare-fun b!5072281 () Bool)

(declare-fun e!3164838 () Bool)

(assert (=> b!5072281 (= e!3164837 e!3164838)))

(declare-fun res!2159594 () Bool)

(assert (=> b!5072281 (= res!2159594 (not ((_ is Leaf!25863) (left!42828 xs!286))))))

(assert (=> b!5072281 (=> res!2159594 e!3164838)))

(declare-fun b!5072282 () Bool)

(declare-fun inv!77603 (Conc!15572) Bool)

(assert (=> b!5072282 (= e!3164838 (inv!77603 (left!42828 xs!286)))))

(assert (= (and d!1637327 c!870900) b!5072280))

(assert (= (and d!1637327 (not c!870900)) b!5072281))

(assert (= (and b!5072281 (not res!2159594)) b!5072282))

(declare-fun m!6118996 () Bool)

(assert (=> b!5072280 m!6118996))

(declare-fun m!6118998 () Bool)

(assert (=> b!5072282 m!6118998))

(assert (=> b!5072232 d!1637327))

(declare-fun d!1637339 () Bool)

(declare-fun c!870901 () Bool)

(assert (=> d!1637339 (= c!870901 ((_ is Node!15572) (right!43158 xs!286)))))

(declare-fun e!3164839 () Bool)

(assert (=> d!1637339 (= (inv!77600 (right!43158 xs!286)) e!3164839)))

(declare-fun b!5072283 () Bool)

(assert (=> b!5072283 (= e!3164839 (inv!77601 (right!43158 xs!286)))))

(declare-fun b!5072284 () Bool)

(declare-fun e!3164840 () Bool)

(assert (=> b!5072284 (= e!3164839 e!3164840)))

(declare-fun res!2159595 () Bool)

(assert (=> b!5072284 (= res!2159595 (not ((_ is Leaf!25863) (right!43158 xs!286))))))

(assert (=> b!5072284 (=> res!2159595 e!3164840)))

(declare-fun b!5072285 () Bool)

(assert (=> b!5072285 (= e!3164840 (inv!77603 (right!43158 xs!286)))))

(assert (= (and d!1637339 c!870901) b!5072283))

(assert (= (and d!1637339 (not c!870901)) b!5072284))

(assert (= (and b!5072284 (not res!2159595)) b!5072285))

(declare-fun m!6119000 () Bool)

(assert (=> b!5072283 m!6119000))

(declare-fun m!6119002 () Bool)

(assert (=> b!5072285 m!6119002))

(assert (=> b!5072232 d!1637339))

(declare-fun b!5072296 () Bool)

(declare-fun e!3164846 () List!58566)

(declare-fun list!19006 (IArray!31205) List!58566)

(assert (=> b!5072296 (= e!3164846 (list!19006 (xs!18930 lt!2089724)))))

(declare-fun b!5072297 () Bool)

(assert (=> b!5072297 (= e!3164846 (++!12795 (list!19005 (left!42828 lt!2089724)) (list!19005 (right!43158 lt!2089724))))))

(declare-fun d!1637341 () Bool)

(declare-fun c!870906 () Bool)

(assert (=> d!1637341 (= c!870906 ((_ is Empty!15572) lt!2089724))))

(declare-fun e!3164845 () List!58566)

(assert (=> d!1637341 (= (list!19005 lt!2089724) e!3164845)))

(declare-fun b!5072294 () Bool)

(assert (=> b!5072294 (= e!3164845 Nil!58442)))

(declare-fun b!5072295 () Bool)

(assert (=> b!5072295 (= e!3164845 e!3164846)))

(declare-fun c!870907 () Bool)

(assert (=> b!5072295 (= c!870907 ((_ is Leaf!25863) lt!2089724))))

(assert (= (and d!1637341 c!870906) b!5072294))

(assert (= (and d!1637341 (not c!870906)) b!5072295))

(assert (= (and b!5072295 c!870907) b!5072296))

(assert (= (and b!5072295 (not c!870907)) b!5072297))

(declare-fun m!6119004 () Bool)

(assert (=> b!5072296 m!6119004))

(declare-fun m!6119006 () Bool)

(assert (=> b!5072297 m!6119006))

(declare-fun m!6119008 () Bool)

(assert (=> b!5072297 m!6119008))

(assert (=> b!5072297 m!6119006))

(assert (=> b!5072297 m!6119008))

(declare-fun m!6119010 () Bool)

(assert (=> b!5072297 m!6119010))

(assert (=> b!5072223 d!1637341))

(declare-fun b!5072316 () Bool)

(declare-fun e!3164861 () List!58566)

(assert (=> b!5072316 (= e!3164861 (Cons!58442 (h!64890 (list!19005 xs!286)) (++!12795 (t!371335 (list!19005 xs!286)) (list!19005 ys!41))))))

(declare-fun d!1637343 () Bool)

(declare-fun e!3164860 () Bool)

(assert (=> d!1637343 e!3164860))

(declare-fun res!2159609 () Bool)

(assert (=> d!1637343 (=> (not res!2159609) (not e!3164860))))

(declare-fun lt!2089732 () List!58566)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10421 (List!58566) (InoxSet T!105174))

(assert (=> d!1637343 (= res!2159609 (= (content!10421 lt!2089732) ((_ map or) (content!10421 (list!19005 xs!286)) (content!10421 (list!19005 ys!41)))))))

(assert (=> d!1637343 (= lt!2089732 e!3164861)))

(declare-fun c!870910 () Bool)

(assert (=> d!1637343 (= c!870910 ((_ is Nil!58442) (list!19005 xs!286)))))

(assert (=> d!1637343 (= (++!12795 (list!19005 xs!286) (list!19005 ys!41)) lt!2089732)))

(declare-fun b!5072318 () Bool)

(assert (=> b!5072318 (= e!3164860 (or (not (= (list!19005 ys!41) Nil!58442)) (= lt!2089732 (list!19005 xs!286))))))

(declare-fun b!5072315 () Bool)

(assert (=> b!5072315 (= e!3164861 (list!19005 ys!41))))

(declare-fun b!5072317 () Bool)

(declare-fun res!2159610 () Bool)

(assert (=> b!5072317 (=> (not res!2159610) (not e!3164860))))

(declare-fun size!39091 (List!58566) Int)

(assert (=> b!5072317 (= res!2159610 (= (size!39091 lt!2089732) (+ (size!39091 (list!19005 xs!286)) (size!39091 (list!19005 ys!41)))))))

(assert (= (and d!1637343 c!870910) b!5072315))

(assert (= (and d!1637343 (not c!870910)) b!5072316))

(assert (= (and d!1637343 res!2159609) b!5072317))

(assert (= (and b!5072317 res!2159610) b!5072318))

(assert (=> b!5072316 m!6118972))

(declare-fun m!6119044 () Bool)

(assert (=> b!5072316 m!6119044))

(declare-fun m!6119046 () Bool)

(assert (=> d!1637343 m!6119046))

(assert (=> d!1637343 m!6118970))

(declare-fun m!6119048 () Bool)

(assert (=> d!1637343 m!6119048))

(assert (=> d!1637343 m!6118972))

(declare-fun m!6119050 () Bool)

(assert (=> d!1637343 m!6119050))

(declare-fun m!6119052 () Bool)

(assert (=> b!5072317 m!6119052))

(assert (=> b!5072317 m!6118970))

(declare-fun m!6119054 () Bool)

(assert (=> b!5072317 m!6119054))

(assert (=> b!5072317 m!6118972))

(declare-fun m!6119056 () Bool)

(assert (=> b!5072317 m!6119056))

(assert (=> b!5072223 d!1637343))

(declare-fun b!5072325 () Bool)

(declare-fun e!3164865 () List!58566)

(assert (=> b!5072325 (= e!3164865 (list!19006 (xs!18930 xs!286)))))

(declare-fun b!5072326 () Bool)

(assert (=> b!5072326 (= e!3164865 (++!12795 (list!19005 (left!42828 xs!286)) (list!19005 (right!43158 xs!286))))))

(declare-fun d!1637347 () Bool)

(declare-fun c!870913 () Bool)

(assert (=> d!1637347 (= c!870913 ((_ is Empty!15572) xs!286))))

(declare-fun e!3164864 () List!58566)

(assert (=> d!1637347 (= (list!19005 xs!286) e!3164864)))

(declare-fun b!5072323 () Bool)

(assert (=> b!5072323 (= e!3164864 Nil!58442)))

(declare-fun b!5072324 () Bool)

(assert (=> b!5072324 (= e!3164864 e!3164865)))

(declare-fun c!870914 () Bool)

(assert (=> b!5072324 (= c!870914 ((_ is Leaf!25863) xs!286))))

(assert (= (and d!1637347 c!870913) b!5072323))

(assert (= (and d!1637347 (not c!870913)) b!5072324))

(assert (= (and b!5072324 c!870914) b!5072325))

(assert (= (and b!5072324 (not c!870914)) b!5072326))

(declare-fun m!6119058 () Bool)

(assert (=> b!5072325 m!6119058))

(declare-fun m!6119060 () Bool)

(assert (=> b!5072326 m!6119060))

(declare-fun m!6119062 () Bool)

(assert (=> b!5072326 m!6119062))

(assert (=> b!5072326 m!6119060))

(assert (=> b!5072326 m!6119062))

(declare-fun m!6119064 () Bool)

(assert (=> b!5072326 m!6119064))

(assert (=> b!5072223 d!1637347))

(declare-fun b!5072331 () Bool)

(declare-fun e!3164869 () List!58566)

(assert (=> b!5072331 (= e!3164869 (list!19006 (xs!18930 ys!41)))))

(declare-fun b!5072332 () Bool)

(assert (=> b!5072332 (= e!3164869 (++!12795 (list!19005 (left!42828 ys!41)) (list!19005 (right!43158 ys!41))))))

(declare-fun d!1637349 () Bool)

(declare-fun c!870915 () Bool)

(assert (=> d!1637349 (= c!870915 ((_ is Empty!15572) ys!41))))

(declare-fun e!3164868 () List!58566)

(assert (=> d!1637349 (= (list!19005 ys!41) e!3164868)))

(declare-fun b!5072329 () Bool)

(assert (=> b!5072329 (= e!3164868 Nil!58442)))

(declare-fun b!5072330 () Bool)

(assert (=> b!5072330 (= e!3164868 e!3164869)))

(declare-fun c!870916 () Bool)

(assert (=> b!5072330 (= c!870916 ((_ is Leaf!25863) ys!41))))

(assert (= (and d!1637349 c!870915) b!5072329))

(assert (= (and d!1637349 (not c!870915)) b!5072330))

(assert (= (and b!5072330 c!870916) b!5072331))

(assert (= (and b!5072330 (not c!870916)) b!5072332))

(declare-fun m!6119066 () Bool)

(assert (=> b!5072331 m!6119066))

(declare-fun m!6119068 () Bool)

(assert (=> b!5072332 m!6119068))

(declare-fun m!6119070 () Bool)

(assert (=> b!5072332 m!6119070))

(assert (=> b!5072332 m!6119068))

(assert (=> b!5072332 m!6119070))

(declare-fun m!6119072 () Bool)

(assert (=> b!5072332 m!6119072))

(assert (=> b!5072223 d!1637349))

(declare-fun d!1637351 () Bool)

(assert (=> d!1637351 (= (inv!77599 (xs!18930 err!4609)) (<= (size!39091 (innerList!15660 (xs!18930 err!4609))) 2147483647))))

(declare-fun bs!1190221 () Bool)

(assert (= bs!1190221 d!1637351))

(declare-fun m!6119078 () Bool)

(assert (=> bs!1190221 m!6119078))

(assert (=> b!5072222 d!1637351))

(declare-fun d!1637355 () Bool)

(assert (=> d!1637355 (= (height!2149 xs!286) (ite ((_ is Empty!15572) xs!286) 0 (ite ((_ is Leaf!25863) xs!286) 1 (cheight!15783 xs!286))))))

(assert (=> b!5072235 d!1637355))

(declare-fun d!1637367 () Bool)

(assert (=> d!1637367 (= (height!2149 ys!41) (ite ((_ is Empty!15572) ys!41) 0 (ite ((_ is Leaf!25863) ys!41) 1 (cheight!15783 ys!41))))))

(assert (=> b!5072235 d!1637367))

(declare-fun d!1637369 () Bool)

(assert (=> d!1637369 (= (height!2149 lt!2089724) (ite ((_ is Empty!15572) lt!2089724) 0 (ite ((_ is Leaf!25863) lt!2089724) 1 (cheight!15783 lt!2089724))))))

(assert (=> b!5072234 d!1637369))

(declare-fun d!1637371 () Bool)

(assert (=> d!1637371 (= (max!0 lt!2089729 lt!2089728) (ite (< lt!2089729 lt!2089728) lt!2089728 lt!2089729))))

(assert (=> b!5072234 d!1637371))

(declare-fun b!5072399 () Bool)

(declare-fun res!2159650 () Bool)

(declare-fun e!3164903 () Bool)

(assert (=> b!5072399 (=> (not res!2159650) (not e!3164903))))

(assert (=> b!5072399 (= res!2159650 (isBalanced!4434 (left!42828 lt!2089724)))))

(declare-fun b!5072400 () Bool)

(declare-fun res!2159653 () Bool)

(assert (=> b!5072400 (=> (not res!2159653) (not e!3164903))))

(assert (=> b!5072400 (= res!2159653 (<= (- (height!2149 (left!42828 lt!2089724)) (height!2149 (right!43158 lt!2089724))) 1))))

(declare-fun b!5072401 () Bool)

(declare-fun res!2159652 () Bool)

(assert (=> b!5072401 (=> (not res!2159652) (not e!3164903))))

(declare-fun isEmpty!31647 (Conc!15572) Bool)

(assert (=> b!5072401 (= res!2159652 (not (isEmpty!31647 (left!42828 lt!2089724))))))

(declare-fun b!5072402 () Bool)

(declare-fun e!3164902 () Bool)

(assert (=> b!5072402 (= e!3164902 e!3164903)))

(declare-fun res!2159651 () Bool)

(assert (=> b!5072402 (=> (not res!2159651) (not e!3164903))))

(assert (=> b!5072402 (= res!2159651 (<= (- 1) (- (height!2149 (left!42828 lt!2089724)) (height!2149 (right!43158 lt!2089724)))))))

(declare-fun b!5072403 () Bool)

(assert (=> b!5072403 (= e!3164903 (not (isEmpty!31647 (right!43158 lt!2089724))))))

(declare-fun d!1637375 () Bool)

(declare-fun res!2159649 () Bool)

(assert (=> d!1637375 (=> res!2159649 e!3164902)))

(assert (=> d!1637375 (= res!2159649 (not ((_ is Node!15572) lt!2089724)))))

(assert (=> d!1637375 (= (isBalanced!4434 lt!2089724) e!3164902)))

(declare-fun b!5072398 () Bool)

(declare-fun res!2159648 () Bool)

(assert (=> b!5072398 (=> (not res!2159648) (not e!3164903))))

(assert (=> b!5072398 (= res!2159648 (isBalanced!4434 (right!43158 lt!2089724)))))

(assert (= (and d!1637375 (not res!2159649)) b!5072402))

(assert (= (and b!5072402 res!2159651) b!5072400))

(assert (= (and b!5072400 res!2159653) b!5072399))

(assert (= (and b!5072399 res!2159650) b!5072398))

(assert (= (and b!5072398 res!2159648) b!5072401))

(assert (= (and b!5072401 res!2159652) b!5072403))

(declare-fun m!6119140 () Bool)

(assert (=> b!5072399 m!6119140))

(declare-fun m!6119142 () Bool)

(assert (=> b!5072398 m!6119142))

(declare-fun m!6119144 () Bool)

(assert (=> b!5072400 m!6119144))

(declare-fun m!6119146 () Bool)

(assert (=> b!5072400 m!6119146))

(declare-fun m!6119148 () Bool)

(assert (=> b!5072401 m!6119148))

(declare-fun m!6119150 () Bool)

(assert (=> b!5072403 m!6119150))

(assert (=> b!5072402 m!6119144))

(assert (=> b!5072402 m!6119146))

(assert (=> b!5072236 d!1637375))

(declare-fun d!1637391 () Bool)

(assert (=> d!1637391 (= (inv!77599 (xs!18930 xs!286)) (<= (size!39091 (innerList!15660 (xs!18930 xs!286))) 2147483647))))

(declare-fun bs!1190224 () Bool)

(assert (= bs!1190224 d!1637391))

(declare-fun m!6119152 () Bool)

(assert (=> bs!1190224 m!6119152))

(assert (=> b!5072225 d!1637391))

(declare-fun b!5072473 () Bool)

(declare-fun e!3164960 () Bool)

(declare-fun appendAssoc!306 (List!58566 List!58566 List!58566) Bool)

(assert (=> b!5072473 (= e!3164960 (appendAssoc!306 (list!19005 (left!42828 xs!286)) (list!19005 (left!42828 (right!43158 xs!286))) (++!12795 (list!19005 (right!43158 (right!43158 xs!286))) (list!19005 ys!41))))))

(declare-fun b!5072474 () Bool)

(declare-fun e!3164956 () Bool)

(declare-fun e!3164953 () Bool)

(assert (=> b!5072474 (= e!3164956 e!3164953)))

(declare-fun res!2159682 () Bool)

(assert (=> b!5072474 (=> (not res!2159682) (not e!3164953))))

(assert (=> b!5072474 (= res!2159682 (appendAssoc!306 (list!19005 (left!42828 xs!286)) (list!19005 (right!43158 xs!286)) (list!19005 ys!41)))))

(declare-fun b!5072475 () Bool)

(declare-fun e!3164955 () Bool)

(declare-fun e!3164961 () Bool)

(assert (=> b!5072475 (= e!3164955 e!3164961)))

(declare-fun res!2159676 () Bool)

(assert (=> b!5072475 (=> res!2159676 e!3164961)))

(assert (=> b!5072475 (= res!2159676 (not ((_ is Node!15572) (left!42828 ys!41))))))

(declare-fun b!5072476 () Bool)

(declare-fun e!3164954 () Bool)

(assert (=> b!5072476 (= e!3164961 e!3164954)))

(declare-fun res!2159681 () Bool)

(assert (=> b!5072476 (=> (not res!2159681) (not e!3164954))))

(assert (=> b!5072476 (= res!2159681 (appendAssoc!306 (list!19005 xs!286) (list!19005 (left!42828 (left!42828 ys!41))) (list!19005 (right!43158 (left!42828 ys!41)))))))

(declare-fun b!5072477 () Bool)

(declare-fun e!3164958 () Bool)

(assert (=> b!5072477 (= e!3164953 e!3164958)))

(declare-fun res!2159684 () Bool)

(assert (=> b!5072477 (=> res!2159684 e!3164958)))

(assert (=> b!5072477 (= res!2159684 (not ((_ is Node!15572) (right!43158 xs!286))))))

(declare-fun b!5072478 () Bool)

(assert (=> b!5072478 (= e!3164958 e!3164960)))

(declare-fun res!2159679 () Bool)

(assert (=> b!5072478 (=> (not res!2159679) (not e!3164960))))

(assert (=> b!5072478 (= res!2159679 (appendAssoc!306 (list!19005 (left!42828 (right!43158 xs!286))) (list!19005 (right!43158 (right!43158 xs!286))) (list!19005 ys!41)))))

(declare-fun b!5072479 () Bool)

(assert (=> b!5072479 (= e!3164954 (appendAssoc!306 (++!12795 (list!19005 xs!286) (list!19005 (left!42828 (left!42828 ys!41)))) (list!19005 (right!43158 (left!42828 ys!41))) (list!19005 (right!43158 ys!41))))))

(declare-fun b!5072480 () Bool)

(declare-fun e!3164959 () Bool)

(declare-fun e!3164957 () Bool)

(assert (=> b!5072480 (= e!3164959 e!3164957)))

(declare-fun res!2159680 () Bool)

(assert (=> b!5072480 (=> res!2159680 e!3164957)))

(assert (=> b!5072480 (= res!2159680 (not ((_ is Node!15572) ys!41)))))

(declare-fun d!1637393 () Bool)

(assert (=> d!1637393 e!3164959))

(declare-fun res!2159677 () Bool)

(assert (=> d!1637393 (=> (not res!2159677) (not e!3164959))))

(assert (=> d!1637393 (= res!2159677 e!3164956)))

(declare-fun res!2159678 () Bool)

(assert (=> d!1637393 (=> res!2159678 e!3164956)))

(assert (=> d!1637393 (= res!2159678 (not ((_ is Node!15572) xs!286)))))

(assert (=> d!1637393 (= (appendAssocInst!914 xs!286 ys!41) true)))

(declare-fun b!5072481 () Bool)

(assert (=> b!5072481 (= e!3164957 e!3164955)))

(declare-fun res!2159683 () Bool)

(assert (=> b!5072481 (=> (not res!2159683) (not e!3164955))))

(assert (=> b!5072481 (= res!2159683 (appendAssoc!306 (list!19005 xs!286) (list!19005 (left!42828 ys!41)) (list!19005 (right!43158 ys!41))))))

(assert (= (and d!1637393 (not res!2159678)) b!5072474))

(assert (= (and b!5072474 res!2159682) b!5072477))

(assert (= (and b!5072477 (not res!2159684)) b!5072478))

(assert (= (and b!5072478 res!2159679) b!5072473))

(assert (= (and d!1637393 res!2159677) b!5072480))

(assert (= (and b!5072480 (not res!2159680)) b!5072481))

(assert (= (and b!5072481 res!2159683) b!5072475))

(assert (= (and b!5072475 (not res!2159676)) b!5072476))

(assert (= (and b!5072476 res!2159681) b!5072479))

(assert (=> b!5072474 m!6119060))

(assert (=> b!5072474 m!6119062))

(assert (=> b!5072474 m!6118972))

(assert (=> b!5072474 m!6119060))

(assert (=> b!5072474 m!6119062))

(assert (=> b!5072474 m!6118972))

(declare-fun m!6119220 () Bool)

(assert (=> b!5072474 m!6119220))

(assert (=> b!5072476 m!6118970))

(declare-fun m!6119222 () Bool)

(assert (=> b!5072476 m!6119222))

(declare-fun m!6119224 () Bool)

(assert (=> b!5072476 m!6119224))

(assert (=> b!5072476 m!6118970))

(assert (=> b!5072476 m!6119222))

(assert (=> b!5072476 m!6119224))

(declare-fun m!6119226 () Bool)

(assert (=> b!5072476 m!6119226))

(declare-fun m!6119228 () Bool)

(assert (=> b!5072478 m!6119228))

(declare-fun m!6119230 () Bool)

(assert (=> b!5072478 m!6119230))

(assert (=> b!5072478 m!6118972))

(assert (=> b!5072478 m!6119228))

(assert (=> b!5072478 m!6119230))

(assert (=> b!5072478 m!6118972))

(declare-fun m!6119232 () Bool)

(assert (=> b!5072478 m!6119232))

(assert (=> b!5072479 m!6119070))

(assert (=> b!5072479 m!6119224))

(assert (=> b!5072479 m!6118970))

(assert (=> b!5072479 m!6118970))

(assert (=> b!5072479 m!6119222))

(declare-fun m!6119234 () Bool)

(assert (=> b!5072479 m!6119234))

(assert (=> b!5072479 m!6119222))

(assert (=> b!5072479 m!6119234))

(assert (=> b!5072479 m!6119224))

(assert (=> b!5072479 m!6119070))

(declare-fun m!6119236 () Bool)

(assert (=> b!5072479 m!6119236))

(assert (=> b!5072473 m!6119230))

(assert (=> b!5072473 m!6118972))

(declare-fun m!6119238 () Bool)

(assert (=> b!5072473 m!6119238))

(assert (=> b!5072473 m!6119230))

(assert (=> b!5072473 m!6118972))

(assert (=> b!5072473 m!6119228))

(assert (=> b!5072473 m!6119060))

(assert (=> b!5072473 m!6119228))

(assert (=> b!5072473 m!6119238))

(declare-fun m!6119240 () Bool)

(assert (=> b!5072473 m!6119240))

(assert (=> b!5072473 m!6119060))

(assert (=> b!5072481 m!6118970))

(assert (=> b!5072481 m!6119068))

(assert (=> b!5072481 m!6119070))

(assert (=> b!5072481 m!6118970))

(assert (=> b!5072481 m!6119068))

(assert (=> b!5072481 m!6119070))

(declare-fun m!6119242 () Bool)

(assert (=> b!5072481 m!6119242))

(assert (=> b!5072227 d!1637393))

(declare-fun d!1637403 () Bool)

(declare-fun c!870939 () Bool)

(assert (=> d!1637403 (= c!870939 ((_ is Node!15572) err!4609))))

(declare-fun e!3164962 () Bool)

(assert (=> d!1637403 (= (inv!77600 err!4609) e!3164962)))

(declare-fun b!5072482 () Bool)

(assert (=> b!5072482 (= e!3164962 (inv!77601 err!4609))))

(declare-fun b!5072483 () Bool)

(declare-fun e!3164963 () Bool)

(assert (=> b!5072483 (= e!3164962 e!3164963)))

(declare-fun res!2159685 () Bool)

(assert (=> b!5072483 (= res!2159685 (not ((_ is Leaf!25863) err!4609)))))

(assert (=> b!5072483 (=> res!2159685 e!3164963)))

(declare-fun b!5072484 () Bool)

(assert (=> b!5072484 (= e!3164963 (inv!77603 err!4609))))

(assert (= (and d!1637403 c!870939) b!5072482))

(assert (= (and d!1637403 (not c!870939)) b!5072483))

(assert (= (and b!5072483 (not res!2159685)) b!5072484))

(declare-fun m!6119244 () Bool)

(assert (=> b!5072482 m!6119244))

(declare-fun m!6119246 () Bool)

(assert (=> b!5072484 m!6119246))

(assert (=> b!5072227 d!1637403))

(declare-fun b!5072486 () Bool)

(declare-fun res!2159688 () Bool)

(declare-fun e!3164965 () Bool)

(assert (=> b!5072486 (=> (not res!2159688) (not e!3164965))))

(assert (=> b!5072486 (= res!2159688 (isBalanced!4434 (left!42828 ys!41)))))

(declare-fun b!5072487 () Bool)

(declare-fun res!2159691 () Bool)

(assert (=> b!5072487 (=> (not res!2159691) (not e!3164965))))

(assert (=> b!5072487 (= res!2159691 (<= (- (height!2149 (left!42828 ys!41)) (height!2149 (right!43158 ys!41))) 1))))

(declare-fun b!5072488 () Bool)

(declare-fun res!2159690 () Bool)

(assert (=> b!5072488 (=> (not res!2159690) (not e!3164965))))

(assert (=> b!5072488 (= res!2159690 (not (isEmpty!31647 (left!42828 ys!41))))))

(declare-fun b!5072489 () Bool)

(declare-fun e!3164964 () Bool)

(assert (=> b!5072489 (= e!3164964 e!3164965)))

(declare-fun res!2159689 () Bool)

(assert (=> b!5072489 (=> (not res!2159689) (not e!3164965))))

(assert (=> b!5072489 (= res!2159689 (<= (- 1) (- (height!2149 (left!42828 ys!41)) (height!2149 (right!43158 ys!41)))))))

(declare-fun b!5072490 () Bool)

(assert (=> b!5072490 (= e!3164965 (not (isEmpty!31647 (right!43158 ys!41))))))

(declare-fun d!1637405 () Bool)

(declare-fun res!2159687 () Bool)

(assert (=> d!1637405 (=> res!2159687 e!3164964)))

(assert (=> d!1637405 (= res!2159687 (not ((_ is Node!15572) ys!41)))))

(assert (=> d!1637405 (= (isBalanced!4434 ys!41) e!3164964)))

(declare-fun b!5072485 () Bool)

(declare-fun res!2159686 () Bool)

(assert (=> b!5072485 (=> (not res!2159686) (not e!3164965))))

(assert (=> b!5072485 (= res!2159686 (isBalanced!4434 (right!43158 ys!41)))))

(assert (= (and d!1637405 (not res!2159687)) b!5072489))

(assert (= (and b!5072489 res!2159689) b!5072487))

(assert (= (and b!5072487 res!2159691) b!5072486))

(assert (= (and b!5072486 res!2159688) b!5072485))

(assert (= (and b!5072485 res!2159686) b!5072488))

(assert (= (and b!5072488 res!2159690) b!5072490))

(declare-fun m!6119248 () Bool)

(assert (=> b!5072486 m!6119248))

(declare-fun m!6119250 () Bool)

(assert (=> b!5072485 m!6119250))

(declare-fun m!6119252 () Bool)

(assert (=> b!5072487 m!6119252))

(declare-fun m!6119254 () Bool)

(assert (=> b!5072487 m!6119254))

(declare-fun m!6119256 () Bool)

(assert (=> b!5072488 m!6119256))

(declare-fun m!6119258 () Bool)

(assert (=> b!5072490 m!6119258))

(assert (=> b!5072489 m!6119252))

(assert (=> b!5072489 m!6119254))

(assert (=> b!5072226 d!1637405))

(declare-fun d!1637407 () Bool)

(assert (=> d!1637407 (= (inv!77599 (xs!18930 ys!41)) (<= (size!39091 (innerList!15660 (xs!18930 ys!41))) 2147483647))))

(declare-fun bs!1190225 () Bool)

(assert (= bs!1190225 d!1637407))

(declare-fun m!6119260 () Bool)

(assert (=> bs!1190225 m!6119260))

(assert (=> b!5072228 d!1637407))

(declare-fun d!1637409 () Bool)

(declare-fun c!870940 () Bool)

(assert (=> d!1637409 (= c!870940 ((_ is Node!15572) (left!42828 ys!41)))))

(declare-fun e!3164966 () Bool)

(assert (=> d!1637409 (= (inv!77600 (left!42828 ys!41)) e!3164966)))

(declare-fun b!5072491 () Bool)

(assert (=> b!5072491 (= e!3164966 (inv!77601 (left!42828 ys!41)))))

(declare-fun b!5072492 () Bool)

(declare-fun e!3164967 () Bool)

(assert (=> b!5072492 (= e!3164966 e!3164967)))

(declare-fun res!2159692 () Bool)

(assert (=> b!5072492 (= res!2159692 (not ((_ is Leaf!25863) (left!42828 ys!41))))))

(assert (=> b!5072492 (=> res!2159692 e!3164967)))

(declare-fun b!5072493 () Bool)

(assert (=> b!5072493 (= e!3164967 (inv!77603 (left!42828 ys!41)))))

(assert (= (and d!1637409 c!870940) b!5072491))

(assert (= (and d!1637409 (not c!870940)) b!5072492))

(assert (= (and b!5072492 (not res!2159692)) b!5072493))

(declare-fun m!6119262 () Bool)

(assert (=> b!5072491 m!6119262))

(declare-fun m!6119264 () Bool)

(assert (=> b!5072493 m!6119264))

(assert (=> b!5072229 d!1637409))

(declare-fun d!1637411 () Bool)

(declare-fun c!870941 () Bool)

(assert (=> d!1637411 (= c!870941 ((_ is Node!15572) (right!43158 ys!41)))))

(declare-fun e!3164968 () Bool)

(assert (=> d!1637411 (= (inv!77600 (right!43158 ys!41)) e!3164968)))

(declare-fun b!5072494 () Bool)

(assert (=> b!5072494 (= e!3164968 (inv!77601 (right!43158 ys!41)))))

(declare-fun b!5072495 () Bool)

(declare-fun e!3164969 () Bool)

(assert (=> b!5072495 (= e!3164968 e!3164969)))

(declare-fun res!2159693 () Bool)

(assert (=> b!5072495 (= res!2159693 (not ((_ is Leaf!25863) (right!43158 ys!41))))))

(assert (=> b!5072495 (=> res!2159693 e!3164969)))

(declare-fun b!5072496 () Bool)

(assert (=> b!5072496 (= e!3164969 (inv!77603 (right!43158 ys!41)))))

(assert (= (and d!1637411 c!870941) b!5072494))

(assert (= (and d!1637411 (not c!870941)) b!5072495))

(assert (= (and b!5072495 (not res!2159693)) b!5072496))

(declare-fun m!6119266 () Bool)

(assert (=> b!5072494 m!6119266))

(declare-fun m!6119268 () Bool)

(assert (=> b!5072496 m!6119268))

(assert (=> b!5072229 d!1637411))

(declare-fun b!5072498 () Bool)

(declare-fun res!2159696 () Bool)

(declare-fun e!3164971 () Bool)

(assert (=> b!5072498 (=> (not res!2159696) (not e!3164971))))

(assert (=> b!5072498 (= res!2159696 (isBalanced!4434 (left!42828 xs!286)))))

(declare-fun b!5072499 () Bool)

(declare-fun res!2159699 () Bool)

(assert (=> b!5072499 (=> (not res!2159699) (not e!3164971))))

(assert (=> b!5072499 (= res!2159699 (<= (- (height!2149 (left!42828 xs!286)) (height!2149 (right!43158 xs!286))) 1))))

(declare-fun b!5072500 () Bool)

(declare-fun res!2159698 () Bool)

(assert (=> b!5072500 (=> (not res!2159698) (not e!3164971))))

(assert (=> b!5072500 (= res!2159698 (not (isEmpty!31647 (left!42828 xs!286))))))

(declare-fun b!5072501 () Bool)

(declare-fun e!3164970 () Bool)

(assert (=> b!5072501 (= e!3164970 e!3164971)))

(declare-fun res!2159697 () Bool)

(assert (=> b!5072501 (=> (not res!2159697) (not e!3164971))))

(assert (=> b!5072501 (= res!2159697 (<= (- 1) (- (height!2149 (left!42828 xs!286)) (height!2149 (right!43158 xs!286)))))))

(declare-fun b!5072502 () Bool)

(assert (=> b!5072502 (= e!3164971 (not (isEmpty!31647 (right!43158 xs!286))))))

(declare-fun d!1637413 () Bool)

(declare-fun res!2159695 () Bool)

(assert (=> d!1637413 (=> res!2159695 e!3164970)))

(assert (=> d!1637413 (= res!2159695 (not ((_ is Node!15572) xs!286)))))

(assert (=> d!1637413 (= (isBalanced!4434 xs!286) e!3164970)))

(declare-fun b!5072497 () Bool)

(declare-fun res!2159694 () Bool)

(assert (=> b!5072497 (=> (not res!2159694) (not e!3164971))))

(assert (=> b!5072497 (= res!2159694 (isBalanced!4434 (right!43158 xs!286)))))

(assert (= (and d!1637413 (not res!2159695)) b!5072501))

(assert (= (and b!5072501 res!2159697) b!5072499))

(assert (= (and b!5072499 res!2159699) b!5072498))

(assert (= (and b!5072498 res!2159696) b!5072497))

(assert (= (and b!5072497 res!2159694) b!5072500))

(assert (= (and b!5072500 res!2159698) b!5072502))

(declare-fun m!6119270 () Bool)

(assert (=> b!5072498 m!6119270))

(declare-fun m!6119272 () Bool)

(assert (=> b!5072497 m!6119272))

(declare-fun m!6119274 () Bool)

(assert (=> b!5072499 m!6119274))

(declare-fun m!6119276 () Bool)

(assert (=> b!5072499 m!6119276))

(declare-fun m!6119278 () Bool)

(assert (=> b!5072500 m!6119278))

(declare-fun m!6119280 () Bool)

(assert (=> b!5072502 m!6119280))

(assert (=> b!5072501 m!6119274))

(assert (=> b!5072501 m!6119276))

(assert (=> start!535334 d!1637413))

(declare-fun d!1637415 () Bool)

(declare-fun c!870942 () Bool)

(assert (=> d!1637415 (= c!870942 ((_ is Node!15572) xs!286))))

(declare-fun e!3164972 () Bool)

(assert (=> d!1637415 (= (inv!77600 xs!286) e!3164972)))

(declare-fun b!5072503 () Bool)

(assert (=> b!5072503 (= e!3164972 (inv!77601 xs!286))))

(declare-fun b!5072504 () Bool)

(declare-fun e!3164973 () Bool)

(assert (=> b!5072504 (= e!3164972 e!3164973)))

(declare-fun res!2159700 () Bool)

(assert (=> b!5072504 (= res!2159700 (not ((_ is Leaf!25863) xs!286)))))

(assert (=> b!5072504 (=> res!2159700 e!3164973)))

(declare-fun b!5072505 () Bool)

(assert (=> b!5072505 (= e!3164973 (inv!77603 xs!286))))

(assert (= (and d!1637415 c!870942) b!5072503))

(assert (= (and d!1637415 (not c!870942)) b!5072504))

(assert (= (and b!5072504 (not res!2159700)) b!5072505))

(declare-fun m!6119282 () Bool)

(assert (=> b!5072503 m!6119282))

(declare-fun m!6119284 () Bool)

(assert (=> b!5072505 m!6119284))

(assert (=> start!535334 d!1637415))

(declare-fun d!1637417 () Bool)

(declare-fun c!870943 () Bool)

(assert (=> d!1637417 (= c!870943 ((_ is Node!15572) ys!41))))

(declare-fun e!3164974 () Bool)

(assert (=> d!1637417 (= (inv!77600 ys!41) e!3164974)))

(declare-fun b!5072506 () Bool)

(assert (=> b!5072506 (= e!3164974 (inv!77601 ys!41))))

(declare-fun b!5072507 () Bool)

(declare-fun e!3164975 () Bool)

(assert (=> b!5072507 (= e!3164974 e!3164975)))

(declare-fun res!2159701 () Bool)

(assert (=> b!5072507 (= res!2159701 (not ((_ is Leaf!25863) ys!41)))))

(assert (=> b!5072507 (=> res!2159701 e!3164975)))

(declare-fun b!5072508 () Bool)

(assert (=> b!5072508 (= e!3164975 (inv!77603 ys!41))))

(assert (= (and d!1637417 c!870943) b!5072506))

(assert (= (and d!1637417 (not c!870943)) b!5072507))

(assert (= (and b!5072507 (not res!2159701)) b!5072508))

(declare-fun m!6119286 () Bool)

(assert (=> b!5072506 m!6119286))

(declare-fun m!6119288 () Bool)

(assert (=> b!5072508 m!6119288))

(assert (=> start!535334 d!1637417))

(declare-fun d!1637419 () Bool)

(declare-fun c!870944 () Bool)

(assert (=> d!1637419 (= c!870944 ((_ is Node!15572) (left!42828 err!4609)))))

(declare-fun e!3164976 () Bool)

(assert (=> d!1637419 (= (inv!77600 (left!42828 err!4609)) e!3164976)))

(declare-fun b!5072509 () Bool)

(assert (=> b!5072509 (= e!3164976 (inv!77601 (left!42828 err!4609)))))

(declare-fun b!5072510 () Bool)

(declare-fun e!3164977 () Bool)

(assert (=> b!5072510 (= e!3164976 e!3164977)))

(declare-fun res!2159702 () Bool)

(assert (=> b!5072510 (= res!2159702 (not ((_ is Leaf!25863) (left!42828 err!4609))))))

(assert (=> b!5072510 (=> res!2159702 e!3164977)))

(declare-fun b!5072511 () Bool)

(assert (=> b!5072511 (= e!3164977 (inv!77603 (left!42828 err!4609)))))

(assert (= (and d!1637419 c!870944) b!5072509))

(assert (= (and d!1637419 (not c!870944)) b!5072510))

(assert (= (and b!5072510 (not res!2159702)) b!5072511))

(declare-fun m!6119290 () Bool)

(assert (=> b!5072509 m!6119290))

(declare-fun m!6119292 () Bool)

(assert (=> b!5072511 m!6119292))

(assert (=> b!5072231 d!1637419))

(declare-fun d!1637421 () Bool)

(declare-fun c!870945 () Bool)

(assert (=> d!1637421 (= c!870945 ((_ is Node!15572) (right!43158 err!4609)))))

(declare-fun e!3164978 () Bool)

(assert (=> d!1637421 (= (inv!77600 (right!43158 err!4609)) e!3164978)))

(declare-fun b!5072512 () Bool)

(assert (=> b!5072512 (= e!3164978 (inv!77601 (right!43158 err!4609)))))

(declare-fun b!5072513 () Bool)

(declare-fun e!3164979 () Bool)

(assert (=> b!5072513 (= e!3164978 e!3164979)))

(declare-fun res!2159703 () Bool)

(assert (=> b!5072513 (= res!2159703 (not ((_ is Leaf!25863) (right!43158 err!4609))))))

(assert (=> b!5072513 (=> res!2159703 e!3164979)))

(declare-fun b!5072514 () Bool)

(assert (=> b!5072514 (= e!3164979 (inv!77603 (right!43158 err!4609)))))

(assert (= (and d!1637421 c!870945) b!5072512))

(assert (= (and d!1637421 (not c!870945)) b!5072513))

(assert (= (and b!5072513 (not res!2159703)) b!5072514))

(declare-fun m!6119294 () Bool)

(assert (=> b!5072512 m!6119294))

(declare-fun m!6119296 () Bool)

(assert (=> b!5072514 m!6119296))

(assert (=> b!5072231 d!1637421))

(declare-fun e!3164985 () Bool)

(declare-fun tp!1415840 () Bool)

(declare-fun b!5072523 () Bool)

(declare-fun tp!1415839 () Bool)

(assert (=> b!5072523 (= e!3164985 (and (inv!77600 (left!42828 (left!42828 xs!286))) tp!1415839 (inv!77600 (right!43158 (left!42828 xs!286))) tp!1415840))))

(declare-fun b!5072525 () Bool)

(declare-fun e!3164984 () Bool)

(declare-fun tp!1415841 () Bool)

(assert (=> b!5072525 (= e!3164984 tp!1415841)))

(declare-fun b!5072524 () Bool)

(assert (=> b!5072524 (= e!3164985 (and (inv!77599 (xs!18930 (left!42828 xs!286))) e!3164984))))

(assert (=> b!5072232 (= tp!1415800 (and (inv!77600 (left!42828 xs!286)) e!3164985))))

(assert (= (and b!5072232 ((_ is Node!15572) (left!42828 xs!286))) b!5072523))

(assert (= b!5072524 b!5072525))

(assert (= (and b!5072232 ((_ is Leaf!25863) (left!42828 xs!286))) b!5072524))

(declare-fun m!6119298 () Bool)

(assert (=> b!5072523 m!6119298))

(declare-fun m!6119300 () Bool)

(assert (=> b!5072523 m!6119300))

(declare-fun m!6119302 () Bool)

(assert (=> b!5072524 m!6119302))

(assert (=> b!5072232 m!6118946))

(declare-fun b!5072526 () Bool)

(declare-fun tp!1415843 () Bool)

(declare-fun e!3164987 () Bool)

(declare-fun tp!1415842 () Bool)

(assert (=> b!5072526 (= e!3164987 (and (inv!77600 (left!42828 (right!43158 xs!286))) tp!1415842 (inv!77600 (right!43158 (right!43158 xs!286))) tp!1415843))))

(declare-fun b!5072528 () Bool)

(declare-fun e!3164986 () Bool)

(declare-fun tp!1415844 () Bool)

(assert (=> b!5072528 (= e!3164986 tp!1415844)))

(declare-fun b!5072527 () Bool)

(assert (=> b!5072527 (= e!3164987 (and (inv!77599 (xs!18930 (right!43158 xs!286))) e!3164986))))

(assert (=> b!5072232 (= tp!1415798 (and (inv!77600 (right!43158 xs!286)) e!3164987))))

(assert (= (and b!5072232 ((_ is Node!15572) (right!43158 xs!286))) b!5072526))

(assert (= b!5072527 b!5072528))

(assert (= (and b!5072232 ((_ is Leaf!25863) (right!43158 xs!286))) b!5072527))

(declare-fun m!6119304 () Bool)

(assert (=> b!5072526 m!6119304))

(declare-fun m!6119306 () Bool)

(assert (=> b!5072526 m!6119306))

(declare-fun m!6119308 () Bool)

(assert (=> b!5072527 m!6119308))

(assert (=> b!5072232 m!6118948))

(declare-fun b!5072533 () Bool)

(declare-fun e!3164990 () Bool)

(declare-fun tp_is_empty!37067 () Bool)

(declare-fun tp!1415847 () Bool)

(assert (=> b!5072533 (= e!3164990 (and tp_is_empty!37067 tp!1415847))))

(assert (=> b!5072237 (= tp!1415796 e!3164990)))

(assert (= (and b!5072237 ((_ is Cons!58442) (innerList!15660 (xs!18930 ys!41)))) b!5072533))

(declare-fun b!5072534 () Bool)

(declare-fun e!3164991 () Bool)

(declare-fun tp!1415848 () Bool)

(assert (=> b!5072534 (= e!3164991 (and tp_is_empty!37067 tp!1415848))))

(assert (=> b!5072233 (= tp!1415797 e!3164991)))

(assert (= (and b!5072233 ((_ is Cons!58442) (innerList!15660 (xs!18930 err!4609)))) b!5072534))

(declare-fun b!5072535 () Bool)

(declare-fun e!3164992 () Bool)

(declare-fun tp!1415849 () Bool)

(assert (=> b!5072535 (= e!3164992 (and tp_is_empty!37067 tp!1415849))))

(assert (=> b!5072224 (= tp!1415802 e!3164992)))

(assert (= (and b!5072224 ((_ is Cons!58442) (innerList!15660 (xs!18930 xs!286)))) b!5072535))

(declare-fun e!3164994 () Bool)

(declare-fun tp!1415850 () Bool)

(declare-fun b!5072536 () Bool)

(declare-fun tp!1415851 () Bool)

(assert (=> b!5072536 (= e!3164994 (and (inv!77600 (left!42828 (left!42828 ys!41))) tp!1415850 (inv!77600 (right!43158 (left!42828 ys!41))) tp!1415851))))

(declare-fun b!5072538 () Bool)

(declare-fun e!3164993 () Bool)

(declare-fun tp!1415852 () Bool)

(assert (=> b!5072538 (= e!3164993 tp!1415852)))

(declare-fun b!5072537 () Bool)

(assert (=> b!5072537 (= e!3164994 (and (inv!77599 (xs!18930 (left!42828 ys!41))) e!3164993))))

(assert (=> b!5072229 (= tp!1415795 (and (inv!77600 (left!42828 ys!41)) e!3164994))))

(assert (= (and b!5072229 ((_ is Node!15572) (left!42828 ys!41))) b!5072536))

(assert (= b!5072537 b!5072538))

(assert (= (and b!5072229 ((_ is Leaf!25863) (left!42828 ys!41))) b!5072537))

(declare-fun m!6119310 () Bool)

(assert (=> b!5072536 m!6119310))

(declare-fun m!6119312 () Bool)

(assert (=> b!5072536 m!6119312))

(declare-fun m!6119314 () Bool)

(assert (=> b!5072537 m!6119314))

(assert (=> b!5072229 m!6118952))

(declare-fun b!5072539 () Bool)

(declare-fun e!3164996 () Bool)

(declare-fun tp!1415854 () Bool)

(declare-fun tp!1415853 () Bool)

(assert (=> b!5072539 (= e!3164996 (and (inv!77600 (left!42828 (right!43158 ys!41))) tp!1415853 (inv!77600 (right!43158 (right!43158 ys!41))) tp!1415854))))

(declare-fun b!5072541 () Bool)

(declare-fun e!3164995 () Bool)

(declare-fun tp!1415855 () Bool)

(assert (=> b!5072541 (= e!3164995 tp!1415855)))

(declare-fun b!5072540 () Bool)

(assert (=> b!5072540 (= e!3164996 (and (inv!77599 (xs!18930 (right!43158 ys!41))) e!3164995))))

(assert (=> b!5072229 (= tp!1415799 (and (inv!77600 (right!43158 ys!41)) e!3164996))))

(assert (= (and b!5072229 ((_ is Node!15572) (right!43158 ys!41))) b!5072539))

(assert (= b!5072540 b!5072541))

(assert (= (and b!5072229 ((_ is Leaf!25863) (right!43158 ys!41))) b!5072540))

(declare-fun m!6119316 () Bool)

(assert (=> b!5072539 m!6119316))

(declare-fun m!6119318 () Bool)

(assert (=> b!5072539 m!6119318))

(declare-fun m!6119320 () Bool)

(assert (=> b!5072540 m!6119320))

(assert (=> b!5072229 m!6118954))

(declare-fun tp!1415857 () Bool)

(declare-fun e!3164998 () Bool)

(declare-fun tp!1415856 () Bool)

(declare-fun b!5072542 () Bool)

(assert (=> b!5072542 (= e!3164998 (and (inv!77600 (left!42828 (left!42828 err!4609))) tp!1415856 (inv!77600 (right!43158 (left!42828 err!4609))) tp!1415857))))

(declare-fun b!5072544 () Bool)

(declare-fun e!3164997 () Bool)

(declare-fun tp!1415858 () Bool)

(assert (=> b!5072544 (= e!3164997 tp!1415858)))

(declare-fun b!5072543 () Bool)

(assert (=> b!5072543 (= e!3164998 (and (inv!77599 (xs!18930 (left!42828 err!4609))) e!3164997))))

(assert (=> b!5072231 (= tp!1415801 (and (inv!77600 (left!42828 err!4609)) e!3164998))))

(assert (= (and b!5072231 ((_ is Node!15572) (left!42828 err!4609))) b!5072542))

(assert (= b!5072543 b!5072544))

(assert (= (and b!5072231 ((_ is Leaf!25863) (left!42828 err!4609))) b!5072543))

(declare-fun m!6119322 () Bool)

(assert (=> b!5072542 m!6119322))

(declare-fun m!6119324 () Bool)

(assert (=> b!5072542 m!6119324))

(declare-fun m!6119326 () Bool)

(assert (=> b!5072543 m!6119326))

(assert (=> b!5072231 m!6118942))

(declare-fun tp!1415860 () Bool)

(declare-fun b!5072545 () Bool)

(declare-fun e!3165000 () Bool)

(declare-fun tp!1415859 () Bool)

(assert (=> b!5072545 (= e!3165000 (and (inv!77600 (left!42828 (right!43158 err!4609))) tp!1415859 (inv!77600 (right!43158 (right!43158 err!4609))) tp!1415860))))

(declare-fun b!5072547 () Bool)

(declare-fun e!3164999 () Bool)

(declare-fun tp!1415861 () Bool)

(assert (=> b!5072547 (= e!3164999 tp!1415861)))

(declare-fun b!5072546 () Bool)

(assert (=> b!5072546 (= e!3165000 (and (inv!77599 (xs!18930 (right!43158 err!4609))) e!3164999))))

(assert (=> b!5072231 (= tp!1415803 (and (inv!77600 (right!43158 err!4609)) e!3165000))))

(assert (= (and b!5072231 ((_ is Node!15572) (right!43158 err!4609))) b!5072545))

(assert (= b!5072546 b!5072547))

(assert (= (and b!5072231 ((_ is Leaf!25863) (right!43158 err!4609))) b!5072546))

(declare-fun m!6119328 () Bool)

(assert (=> b!5072545 m!6119328))

(declare-fun m!6119330 () Bool)

(assert (=> b!5072545 m!6119330))

(declare-fun m!6119332 () Bool)

(assert (=> b!5072546 m!6119332))

(assert (=> b!5072231 m!6118944))

(check-sat (not b!5072545) (not b!5072476) (not b!5072332) (not b!5072494) (not b!5072508) (not b!5072283) (not b!5072539) (not b!5072402) (not d!1637351) (not b!5072282) (not b!5072485) (not b!5072297) (not b!5072541) (not b!5072496) (not b!5072509) (not b!5072231) (not b!5072403) (not b!5072285) (not b!5072527) (not b!5072398) (not b!5072505) (not b!5072543) (not b!5072537) (not b!5072523) (not b!5072484) (not b!5072514) (not b!5072534) (not b!5072296) (not b!5072525) (not b!5072497) (not b!5072528) (not b!5072488) (not b!5072542) (not b!5072500) (not b!5072540) (not b!5072544) (not b!5072401) (not b!5072316) (not b!5072524) (not b!5072536) (not d!1637343) (not b!5072490) (not b!5072502) (not b!5072512) (not d!1637407) (not b!5072526) (not b!5072399) (not b!5072486) (not b!5072547) (not b!5072546) (not b!5072400) (not b!5072473) (not b!5072533) (not b!5072478) (not b!5072503) (not b!5072487) (not d!1637391) (not b!5072506) (not b!5072331) (not b!5072489) (not b!5072474) (not b!5072511) (not b!5072493) (not b!5072479) (not b!5072326) (not b!5072229) (not b!5072481) (not b!5072317) (not b!5072498) (not b!5072232) (not b!5072280) (not b!5072325) (not b!5072538) (not b!5072482) tp_is_empty!37067 (not b!5072491) (not b!5072535) (not b!5072501) (not b!5072499))
(check-sat)
(get-model)

(declare-fun d!1637429 () Bool)

(declare-fun res!2159722 () Bool)

(declare-fun e!3165007 () Bool)

(assert (=> d!1637429 (=> (not res!2159722) (not e!3165007))))

(declare-fun size!39092 (Conc!15572) Int)

(assert (=> d!1637429 (= res!2159722 (= (csize!31374 (right!43158 xs!286)) (+ (size!39092 (left!42828 (right!43158 xs!286))) (size!39092 (right!43158 (right!43158 xs!286))))))))

(assert (=> d!1637429 (= (inv!77601 (right!43158 xs!286)) e!3165007)))

(declare-fun b!5072566 () Bool)

(declare-fun res!2159723 () Bool)

(assert (=> b!5072566 (=> (not res!2159723) (not e!3165007))))

(assert (=> b!5072566 (= res!2159723 (and (not (= (left!42828 (right!43158 xs!286)) Empty!15572)) (not (= (right!43158 (right!43158 xs!286)) Empty!15572))))))

(declare-fun b!5072567 () Bool)

(declare-fun res!2159724 () Bool)

(assert (=> b!5072567 (=> (not res!2159724) (not e!3165007))))

(assert (=> b!5072567 (= res!2159724 (= (cheight!15783 (right!43158 xs!286)) (+ (max!0 (height!2149 (left!42828 (right!43158 xs!286))) (height!2149 (right!43158 (right!43158 xs!286)))) 1)))))

(declare-fun b!5072568 () Bool)

(assert (=> b!5072568 (= e!3165007 (<= 0 (cheight!15783 (right!43158 xs!286))))))

(assert (= (and d!1637429 res!2159722) b!5072566))

(assert (= (and b!5072566 res!2159723) b!5072567))

(assert (= (and b!5072567 res!2159724) b!5072568))

(declare-fun m!6119352 () Bool)

(assert (=> d!1637429 m!6119352))

(declare-fun m!6119356 () Bool)

(assert (=> d!1637429 m!6119356))

(declare-fun m!6119360 () Bool)

(assert (=> b!5072567 m!6119360))

(declare-fun m!6119362 () Bool)

(assert (=> b!5072567 m!6119362))

(assert (=> b!5072567 m!6119360))

(assert (=> b!5072567 m!6119362))

(declare-fun m!6119364 () Bool)

(assert (=> b!5072567 m!6119364))

(assert (=> b!5072283 d!1637429))

(assert (=> b!5072232 d!1637327))

(assert (=> b!5072232 d!1637339))

(declare-fun bm!353345 () Bool)

(declare-fun call!353353 () List!58566)

(assert (=> bm!353345 (= call!353353 (++!12795 (list!19005 (left!42828 (right!43158 xs!286))) (list!19005 (right!43158 (right!43158 xs!286)))))))

(declare-fun bm!353346 () Bool)

(declare-fun call!353350 () List!58566)

(declare-fun call!353351 () List!58566)

(assert (=> bm!353346 (= call!353350 (++!12795 (list!19005 (left!42828 (right!43158 xs!286))) call!353351))))

(declare-fun bm!353347 () Bool)

(assert (=> bm!353347 (= call!353351 (++!12795 (list!19005 (right!43158 (right!43158 xs!286))) (list!19005 ys!41)))))

(declare-fun b!5072589 () Bool)

(declare-fun e!3165017 () Bool)

(declare-fun call!353352 () List!58566)

(assert (=> b!5072589 (= e!3165017 (= call!353352 call!353350))))

(declare-fun lt!2089740 () Bool)

(assert (=> b!5072589 (= lt!2089740 (appendAssoc!306 (t!371335 (list!19005 (left!42828 (right!43158 xs!286)))) (list!19005 (right!43158 (right!43158 xs!286))) (list!19005 ys!41)))))

(declare-fun bm!353348 () Bool)

(assert (=> bm!353348 (= call!353352 (++!12795 call!353353 (list!19005 ys!41)))))

(declare-fun b!5072590 () Bool)

(assert (=> b!5072590 (= e!3165017 (= call!353352 call!353350))))

(declare-fun d!1637435 () Bool)

(assert (=> d!1637435 e!3165017))

(declare-fun c!870950 () Bool)

(assert (=> d!1637435 (= c!870950 ((_ is Nil!58442) (list!19005 (left!42828 (right!43158 xs!286)))))))

(assert (=> d!1637435 (= (appendAssoc!306 (list!19005 (left!42828 (right!43158 xs!286))) (list!19005 (right!43158 (right!43158 xs!286))) (list!19005 ys!41)) true)))

(assert (= (and d!1637435 c!870950) b!5072590))

(assert (= (and d!1637435 (not c!870950)) b!5072589))

(assert (= (or b!5072590 b!5072589) bm!353345))

(assert (= (or b!5072590 b!5072589) bm!353347))

(assert (= (or b!5072590 b!5072589) bm!353346))

(assert (= (or b!5072590 b!5072589) bm!353348))

(assert (=> bm!353346 m!6119228))

(declare-fun m!6119380 () Bool)

(assert (=> bm!353346 m!6119380))

(assert (=> bm!353345 m!6119228))

(assert (=> bm!353345 m!6119230))

(declare-fun m!6119382 () Bool)

(assert (=> bm!353345 m!6119382))

(assert (=> bm!353347 m!6119230))

(assert (=> bm!353347 m!6118972))

(assert (=> bm!353347 m!6119238))

(assert (=> bm!353348 m!6118972))

(declare-fun m!6119384 () Bool)

(assert (=> bm!353348 m!6119384))

(assert (=> b!5072589 m!6119230))

(assert (=> b!5072589 m!6118972))

(declare-fun m!6119386 () Bool)

(assert (=> b!5072589 m!6119386))

(assert (=> b!5072478 d!1637435))

(declare-fun b!5072593 () Bool)

(declare-fun e!3165019 () List!58566)

(assert (=> b!5072593 (= e!3165019 (list!19006 (xs!18930 (left!42828 (right!43158 xs!286)))))))

(declare-fun b!5072594 () Bool)

(assert (=> b!5072594 (= e!3165019 (++!12795 (list!19005 (left!42828 (left!42828 (right!43158 xs!286)))) (list!19005 (right!43158 (left!42828 (right!43158 xs!286))))))))

(declare-fun d!1637441 () Bool)

(declare-fun c!870951 () Bool)

(assert (=> d!1637441 (= c!870951 ((_ is Empty!15572) (left!42828 (right!43158 xs!286))))))

(declare-fun e!3165018 () List!58566)

(assert (=> d!1637441 (= (list!19005 (left!42828 (right!43158 xs!286))) e!3165018)))

(declare-fun b!5072591 () Bool)

(assert (=> b!5072591 (= e!3165018 Nil!58442)))

(declare-fun b!5072592 () Bool)

(assert (=> b!5072592 (= e!3165018 e!3165019)))

(declare-fun c!870952 () Bool)

(assert (=> b!5072592 (= c!870952 ((_ is Leaf!25863) (left!42828 (right!43158 xs!286))))))

(assert (= (and d!1637441 c!870951) b!5072591))

(assert (= (and d!1637441 (not c!870951)) b!5072592))

(assert (= (and b!5072592 c!870952) b!5072593))

(assert (= (and b!5072592 (not c!870952)) b!5072594))

(declare-fun m!6119388 () Bool)

(assert (=> b!5072593 m!6119388))

(declare-fun m!6119390 () Bool)

(assert (=> b!5072594 m!6119390))

(declare-fun m!6119392 () Bool)

(assert (=> b!5072594 m!6119392))

(assert (=> b!5072594 m!6119390))

(assert (=> b!5072594 m!6119392))

(declare-fun m!6119394 () Bool)

(assert (=> b!5072594 m!6119394))

(assert (=> b!5072478 d!1637441))

(declare-fun b!5072597 () Bool)

(declare-fun e!3165021 () List!58566)

(assert (=> b!5072597 (= e!3165021 (list!19006 (xs!18930 (right!43158 (right!43158 xs!286)))))))

(declare-fun b!5072598 () Bool)

(assert (=> b!5072598 (= e!3165021 (++!12795 (list!19005 (left!42828 (right!43158 (right!43158 xs!286)))) (list!19005 (right!43158 (right!43158 (right!43158 xs!286))))))))

(declare-fun d!1637443 () Bool)

(declare-fun c!870953 () Bool)

(assert (=> d!1637443 (= c!870953 ((_ is Empty!15572) (right!43158 (right!43158 xs!286))))))

(declare-fun e!3165020 () List!58566)

(assert (=> d!1637443 (= (list!19005 (right!43158 (right!43158 xs!286))) e!3165020)))

(declare-fun b!5072595 () Bool)

(assert (=> b!5072595 (= e!3165020 Nil!58442)))

(declare-fun b!5072596 () Bool)

(assert (=> b!5072596 (= e!3165020 e!3165021)))

(declare-fun c!870954 () Bool)

(assert (=> b!5072596 (= c!870954 ((_ is Leaf!25863) (right!43158 (right!43158 xs!286))))))

(assert (= (and d!1637443 c!870953) b!5072595))

(assert (= (and d!1637443 (not c!870953)) b!5072596))

(assert (= (and b!5072596 c!870954) b!5072597))

(assert (= (and b!5072596 (not c!870954)) b!5072598))

(declare-fun m!6119396 () Bool)

(assert (=> b!5072597 m!6119396))

(declare-fun m!6119398 () Bool)

(assert (=> b!5072598 m!6119398))

(declare-fun m!6119400 () Bool)

(assert (=> b!5072598 m!6119400))

(assert (=> b!5072598 m!6119398))

(assert (=> b!5072598 m!6119400))

(declare-fun m!6119402 () Bool)

(assert (=> b!5072598 m!6119402))

(assert (=> b!5072478 d!1637443))

(assert (=> b!5072478 d!1637349))

(declare-fun d!1637445 () Bool)

(declare-fun c!870955 () Bool)

(assert (=> d!1637445 (= c!870955 ((_ is Node!15572) (left!42828 (right!43158 err!4609))))))

(declare-fun e!3165022 () Bool)

(assert (=> d!1637445 (= (inv!77600 (left!42828 (right!43158 err!4609))) e!3165022)))

(declare-fun b!5072599 () Bool)

(assert (=> b!5072599 (= e!3165022 (inv!77601 (left!42828 (right!43158 err!4609))))))

(declare-fun b!5072600 () Bool)

(declare-fun e!3165023 () Bool)

(assert (=> b!5072600 (= e!3165022 e!3165023)))

(declare-fun res!2159737 () Bool)

(assert (=> b!5072600 (= res!2159737 (not ((_ is Leaf!25863) (left!42828 (right!43158 err!4609)))))))

(assert (=> b!5072600 (=> res!2159737 e!3165023)))

(declare-fun b!5072601 () Bool)

(assert (=> b!5072601 (= e!3165023 (inv!77603 (left!42828 (right!43158 err!4609))))))

(assert (= (and d!1637445 c!870955) b!5072599))

(assert (= (and d!1637445 (not c!870955)) b!5072600))

(assert (= (and b!5072600 (not res!2159737)) b!5072601))

(declare-fun m!6119404 () Bool)

(assert (=> b!5072599 m!6119404))

(declare-fun m!6119406 () Bool)

(assert (=> b!5072601 m!6119406))

(assert (=> b!5072545 d!1637445))

(declare-fun d!1637447 () Bool)

(declare-fun c!870956 () Bool)

(assert (=> d!1637447 (= c!870956 ((_ is Node!15572) (right!43158 (right!43158 err!4609))))))

(declare-fun e!3165024 () Bool)

(assert (=> d!1637447 (= (inv!77600 (right!43158 (right!43158 err!4609))) e!3165024)))

(declare-fun b!5072602 () Bool)

(assert (=> b!5072602 (= e!3165024 (inv!77601 (right!43158 (right!43158 err!4609))))))

(declare-fun b!5072603 () Bool)

(declare-fun e!3165025 () Bool)

(assert (=> b!5072603 (= e!3165024 e!3165025)))

(declare-fun res!2159738 () Bool)

(assert (=> b!5072603 (= res!2159738 (not ((_ is Leaf!25863) (right!43158 (right!43158 err!4609)))))))

(assert (=> b!5072603 (=> res!2159738 e!3165025)))

(declare-fun b!5072604 () Bool)

(assert (=> b!5072604 (= e!3165025 (inv!77603 (right!43158 (right!43158 err!4609))))))

(assert (= (and d!1637447 c!870956) b!5072602))

(assert (= (and d!1637447 (not c!870956)) b!5072603))

(assert (= (and b!5072603 (not res!2159738)) b!5072604))

(declare-fun m!6119408 () Bool)

(assert (=> b!5072602 m!6119408))

(declare-fun m!6119410 () Bool)

(assert (=> b!5072604 m!6119410))

(assert (=> b!5072545 d!1637447))

(declare-fun d!1637449 () Bool)

(declare-fun c!870957 () Bool)

(assert (=> d!1637449 (= c!870957 ((_ is Node!15572) (left!42828 (left!42828 ys!41))))))

(declare-fun e!3165026 () Bool)

(assert (=> d!1637449 (= (inv!77600 (left!42828 (left!42828 ys!41))) e!3165026)))

(declare-fun b!5072605 () Bool)

(assert (=> b!5072605 (= e!3165026 (inv!77601 (left!42828 (left!42828 ys!41))))))

(declare-fun b!5072606 () Bool)

(declare-fun e!3165027 () Bool)

(assert (=> b!5072606 (= e!3165026 e!3165027)))

(declare-fun res!2159739 () Bool)

(assert (=> b!5072606 (= res!2159739 (not ((_ is Leaf!25863) (left!42828 (left!42828 ys!41)))))))

(assert (=> b!5072606 (=> res!2159739 e!3165027)))

(declare-fun b!5072607 () Bool)

(assert (=> b!5072607 (= e!3165027 (inv!77603 (left!42828 (left!42828 ys!41))))))

(assert (= (and d!1637449 c!870957) b!5072605))

(assert (= (and d!1637449 (not c!870957)) b!5072606))

(assert (= (and b!5072606 (not res!2159739)) b!5072607))

(declare-fun m!6119412 () Bool)

(assert (=> b!5072605 m!6119412))

(declare-fun m!6119414 () Bool)

(assert (=> b!5072607 m!6119414))

(assert (=> b!5072536 d!1637449))

(declare-fun d!1637451 () Bool)

(declare-fun c!870958 () Bool)

(assert (=> d!1637451 (= c!870958 ((_ is Node!15572) (right!43158 (left!42828 ys!41))))))

(declare-fun e!3165028 () Bool)

(assert (=> d!1637451 (= (inv!77600 (right!43158 (left!42828 ys!41))) e!3165028)))

(declare-fun b!5072608 () Bool)

(assert (=> b!5072608 (= e!3165028 (inv!77601 (right!43158 (left!42828 ys!41))))))

(declare-fun b!5072609 () Bool)

(declare-fun e!3165029 () Bool)

(assert (=> b!5072609 (= e!3165028 e!3165029)))

(declare-fun res!2159740 () Bool)

(assert (=> b!5072609 (= res!2159740 (not ((_ is Leaf!25863) (right!43158 (left!42828 ys!41)))))))

(assert (=> b!5072609 (=> res!2159740 e!3165029)))

(declare-fun b!5072610 () Bool)

(assert (=> b!5072610 (= e!3165029 (inv!77603 (right!43158 (left!42828 ys!41))))))

(assert (= (and d!1637451 c!870958) b!5072608))

(assert (= (and d!1637451 (not c!870958)) b!5072609))

(assert (= (and b!5072609 (not res!2159740)) b!5072610))

(declare-fun m!6119416 () Bool)

(assert (=> b!5072608 m!6119416))

(declare-fun m!6119418 () Bool)

(assert (=> b!5072610 m!6119418))

(assert (=> b!5072536 d!1637451))

(declare-fun d!1637453 () Bool)

(declare-fun res!2159745 () Bool)

(declare-fun e!3165037 () Bool)

(assert (=> d!1637453 (=> (not res!2159745) (not e!3165037))))

(assert (=> d!1637453 (= res!2159745 (<= (size!39091 (list!19006 (xs!18930 (right!43158 xs!286)))) 512))))

(assert (=> d!1637453 (= (inv!77603 (right!43158 xs!286)) e!3165037)))

(declare-fun b!5072625 () Bool)

(declare-fun res!2159746 () Bool)

(assert (=> b!5072625 (=> (not res!2159746) (not e!3165037))))

(assert (=> b!5072625 (= res!2159746 (= (csize!31375 (right!43158 xs!286)) (size!39091 (list!19006 (xs!18930 (right!43158 xs!286))))))))

(declare-fun b!5072626 () Bool)

(assert (=> b!5072626 (= e!3165037 (and (> (csize!31375 (right!43158 xs!286)) 0) (<= (csize!31375 (right!43158 xs!286)) 512)))))

(assert (= (and d!1637453 res!2159745) b!5072625))

(assert (= (and b!5072625 res!2159746) b!5072626))

(declare-fun m!6119432 () Bool)

(assert (=> d!1637453 m!6119432))

(assert (=> d!1637453 m!6119432))

(declare-fun m!6119438 () Bool)

(assert (=> d!1637453 m!6119438))

(assert (=> b!5072625 m!6119432))

(assert (=> b!5072625 m!6119432))

(assert (=> b!5072625 m!6119438))

(assert (=> b!5072285 d!1637453))

(declare-fun b!5072628 () Bool)

(declare-fun res!2159749 () Bool)

(declare-fun e!3165039 () Bool)

(assert (=> b!5072628 (=> (not res!2159749) (not e!3165039))))

(assert (=> b!5072628 (= res!2159749 (isBalanced!4434 (left!42828 (left!42828 lt!2089724))))))

(declare-fun b!5072629 () Bool)

(declare-fun res!2159752 () Bool)

(assert (=> b!5072629 (=> (not res!2159752) (not e!3165039))))

(assert (=> b!5072629 (= res!2159752 (<= (- (height!2149 (left!42828 (left!42828 lt!2089724))) (height!2149 (right!43158 (left!42828 lt!2089724)))) 1))))

(declare-fun b!5072631 () Bool)

(declare-fun res!2159751 () Bool)

(assert (=> b!5072631 (=> (not res!2159751) (not e!3165039))))

(assert (=> b!5072631 (= res!2159751 (not (isEmpty!31647 (left!42828 (left!42828 lt!2089724)))))))

(declare-fun b!5072633 () Bool)

(declare-fun e!3165038 () Bool)

(assert (=> b!5072633 (= e!3165038 e!3165039)))

(declare-fun res!2159750 () Bool)

(assert (=> b!5072633 (=> (not res!2159750) (not e!3165039))))

(assert (=> b!5072633 (= res!2159750 (<= (- 1) (- (height!2149 (left!42828 (left!42828 lt!2089724))) (height!2149 (right!43158 (left!42828 lt!2089724))))))))

(declare-fun b!5072634 () Bool)

(assert (=> b!5072634 (= e!3165039 (not (isEmpty!31647 (right!43158 (left!42828 lt!2089724)))))))

(declare-fun d!1637459 () Bool)

(declare-fun res!2159748 () Bool)

(assert (=> d!1637459 (=> res!2159748 e!3165038)))

(assert (=> d!1637459 (= res!2159748 (not ((_ is Node!15572) (left!42828 lt!2089724))))))

(assert (=> d!1637459 (= (isBalanced!4434 (left!42828 lt!2089724)) e!3165038)))

(declare-fun b!5072627 () Bool)

(declare-fun res!2159747 () Bool)

(assert (=> b!5072627 (=> (not res!2159747) (not e!3165039))))

(assert (=> b!5072627 (= res!2159747 (isBalanced!4434 (right!43158 (left!42828 lt!2089724))))))

(assert (= (and d!1637459 (not res!2159748)) b!5072633))

(assert (= (and b!5072633 res!2159750) b!5072629))

(assert (= (and b!5072629 res!2159752) b!5072628))

(assert (= (and b!5072628 res!2159749) b!5072627))

(assert (= (and b!5072627 res!2159747) b!5072631))

(assert (= (and b!5072631 res!2159751) b!5072634))

(declare-fun m!6119446 () Bool)

(assert (=> b!5072628 m!6119446))

(declare-fun m!6119450 () Bool)

(assert (=> b!5072627 m!6119450))

(declare-fun m!6119452 () Bool)

(assert (=> b!5072629 m!6119452))

(declare-fun m!6119454 () Bool)

(assert (=> b!5072629 m!6119454))

(declare-fun m!6119456 () Bool)

(assert (=> b!5072631 m!6119456))

(declare-fun m!6119458 () Bool)

(assert (=> b!5072634 m!6119458))

(assert (=> b!5072633 m!6119452))

(assert (=> b!5072633 m!6119454))

(assert (=> b!5072399 d!1637459))

(declare-fun d!1637467 () Bool)

(assert (=> d!1637467 (= (list!19006 (xs!18930 xs!286)) (innerList!15660 (xs!18930 xs!286)))))

(assert (=> b!5072325 d!1637467))

(declare-fun b!5072642 () Bool)

(declare-fun res!2159763 () Bool)

(declare-fun e!3165044 () Bool)

(assert (=> b!5072642 (=> (not res!2159763) (not e!3165044))))

(assert (=> b!5072642 (= res!2159763 (isBalanced!4434 (left!42828 (left!42828 xs!286))))))

(declare-fun b!5072643 () Bool)

(declare-fun res!2159766 () Bool)

(assert (=> b!5072643 (=> (not res!2159766) (not e!3165044))))

(assert (=> b!5072643 (= res!2159766 (<= (- (height!2149 (left!42828 (left!42828 xs!286))) (height!2149 (right!43158 (left!42828 xs!286)))) 1))))

(declare-fun b!5072644 () Bool)

(declare-fun res!2159765 () Bool)

(assert (=> b!5072644 (=> (not res!2159765) (not e!3165044))))

(assert (=> b!5072644 (= res!2159765 (not (isEmpty!31647 (left!42828 (left!42828 xs!286)))))))

(declare-fun b!5072645 () Bool)

(declare-fun e!3165043 () Bool)

(assert (=> b!5072645 (= e!3165043 e!3165044)))

(declare-fun res!2159764 () Bool)

(assert (=> b!5072645 (=> (not res!2159764) (not e!3165044))))

(assert (=> b!5072645 (= res!2159764 (<= (- 1) (- (height!2149 (left!42828 (left!42828 xs!286))) (height!2149 (right!43158 (left!42828 xs!286))))))))

(declare-fun b!5072646 () Bool)

(assert (=> b!5072646 (= e!3165044 (not (isEmpty!31647 (right!43158 (left!42828 xs!286)))))))

(declare-fun d!1637469 () Bool)

(declare-fun res!2159762 () Bool)

(assert (=> d!1637469 (=> res!2159762 e!3165043)))

(assert (=> d!1637469 (= res!2159762 (not ((_ is Node!15572) (left!42828 xs!286))))))

(assert (=> d!1637469 (= (isBalanced!4434 (left!42828 xs!286)) e!3165043)))

(declare-fun b!5072641 () Bool)

(declare-fun res!2159761 () Bool)

(assert (=> b!5072641 (=> (not res!2159761) (not e!3165044))))

(assert (=> b!5072641 (= res!2159761 (isBalanced!4434 (right!43158 (left!42828 xs!286))))))

(assert (= (and d!1637469 (not res!2159762)) b!5072645))

(assert (= (and b!5072645 res!2159764) b!5072643))

(assert (= (and b!5072643 res!2159766) b!5072642))

(assert (= (and b!5072642 res!2159763) b!5072641))

(assert (= (and b!5072641 res!2159761) b!5072644))

(assert (= (and b!5072644 res!2159765) b!5072646))

(declare-fun m!6119472 () Bool)

(assert (=> b!5072642 m!6119472))

(declare-fun m!6119474 () Bool)

(assert (=> b!5072641 m!6119474))

(declare-fun m!6119476 () Bool)

(assert (=> b!5072643 m!6119476))

(declare-fun m!6119478 () Bool)

(assert (=> b!5072643 m!6119478))

(declare-fun m!6119480 () Bool)

(assert (=> b!5072644 m!6119480))

(declare-fun m!6119482 () Bool)

(assert (=> b!5072646 m!6119482))

(assert (=> b!5072645 m!6119476))

(assert (=> b!5072645 m!6119478))

(assert (=> b!5072498 d!1637469))

(declare-fun d!1637473 () Bool)

(declare-fun res!2159770 () Bool)

(declare-fun e!3165046 () Bool)

(assert (=> d!1637473 (=> (not res!2159770) (not e!3165046))))

(assert (=> d!1637473 (= res!2159770 (= (csize!31374 xs!286) (+ (size!39092 (left!42828 xs!286)) (size!39092 (right!43158 xs!286)))))))

(assert (=> d!1637473 (= (inv!77601 xs!286) e!3165046)))

(declare-fun b!5072650 () Bool)

(declare-fun res!2159771 () Bool)

(assert (=> b!5072650 (=> (not res!2159771) (not e!3165046))))

(assert (=> b!5072650 (= res!2159771 (and (not (= (left!42828 xs!286) Empty!15572)) (not (= (right!43158 xs!286) Empty!15572))))))

(declare-fun b!5072651 () Bool)

(declare-fun res!2159772 () Bool)

(assert (=> b!5072651 (=> (not res!2159772) (not e!3165046))))

(assert (=> b!5072651 (= res!2159772 (= (cheight!15783 xs!286) (+ (max!0 (height!2149 (left!42828 xs!286)) (height!2149 (right!43158 xs!286))) 1)))))

(declare-fun b!5072652 () Bool)

(assert (=> b!5072652 (= e!3165046 (<= 0 (cheight!15783 xs!286)))))

(assert (= (and d!1637473 res!2159770) b!5072650))

(assert (= (and b!5072650 res!2159771) b!5072651))

(assert (= (and b!5072651 res!2159772) b!5072652))

(declare-fun m!6119494 () Bool)

(assert (=> d!1637473 m!6119494))

(declare-fun m!6119496 () Bool)

(assert (=> d!1637473 m!6119496))

(assert (=> b!5072651 m!6119274))

(assert (=> b!5072651 m!6119276))

(assert (=> b!5072651 m!6119274))

(assert (=> b!5072651 m!6119276))

(declare-fun m!6119498 () Bool)

(assert (=> b!5072651 m!6119498))

(assert (=> b!5072503 d!1637473))

(declare-fun d!1637477 () Bool)

(declare-fun lt!2089745 () Bool)

(declare-fun isEmpty!31648 (List!58566) Bool)

(assert (=> d!1637477 (= lt!2089745 (isEmpty!31648 (list!19005 (left!42828 xs!286))))))

(assert (=> d!1637477 (= lt!2089745 (= (size!39092 (left!42828 xs!286)) 0))))

(assert (=> d!1637477 (= (isEmpty!31647 (left!42828 xs!286)) lt!2089745)))

(declare-fun bs!1190227 () Bool)

(assert (= bs!1190227 d!1637477))

(assert (=> bs!1190227 m!6119060))

(assert (=> bs!1190227 m!6119060))

(declare-fun m!6119526 () Bool)

(assert (=> bs!1190227 m!6119526))

(assert (=> bs!1190227 m!6119494))

(assert (=> b!5072500 d!1637477))

(declare-fun b!5072668 () Bool)

(declare-fun e!3165055 () List!58566)

(assert (=> b!5072668 (= e!3165055 (Cons!58442 (h!64890 (list!19005 (left!42828 ys!41))) (++!12795 (t!371335 (list!19005 (left!42828 ys!41))) (list!19005 (right!43158 ys!41)))))))

(declare-fun d!1637487 () Bool)

(declare-fun e!3165054 () Bool)

(assert (=> d!1637487 e!3165054))

(declare-fun res!2159775 () Bool)

(assert (=> d!1637487 (=> (not res!2159775) (not e!3165054))))

(declare-fun lt!2089747 () List!58566)

(assert (=> d!1637487 (= res!2159775 (= (content!10421 lt!2089747) ((_ map or) (content!10421 (list!19005 (left!42828 ys!41))) (content!10421 (list!19005 (right!43158 ys!41))))))))

(assert (=> d!1637487 (= lt!2089747 e!3165055)))

(declare-fun c!870970 () Bool)

(assert (=> d!1637487 (= c!870970 ((_ is Nil!58442) (list!19005 (left!42828 ys!41))))))

(assert (=> d!1637487 (= (++!12795 (list!19005 (left!42828 ys!41)) (list!19005 (right!43158 ys!41))) lt!2089747)))

(declare-fun b!5072670 () Bool)

(assert (=> b!5072670 (= e!3165054 (or (not (= (list!19005 (right!43158 ys!41)) Nil!58442)) (= lt!2089747 (list!19005 (left!42828 ys!41)))))))

(declare-fun b!5072667 () Bool)

(assert (=> b!5072667 (= e!3165055 (list!19005 (right!43158 ys!41)))))

(declare-fun b!5072669 () Bool)

(declare-fun res!2159776 () Bool)

(assert (=> b!5072669 (=> (not res!2159776) (not e!3165054))))

(assert (=> b!5072669 (= res!2159776 (= (size!39091 lt!2089747) (+ (size!39091 (list!19005 (left!42828 ys!41))) (size!39091 (list!19005 (right!43158 ys!41))))))))

(assert (= (and d!1637487 c!870970) b!5072667))

(assert (= (and d!1637487 (not c!870970)) b!5072668))

(assert (= (and d!1637487 res!2159775) b!5072669))

(assert (= (and b!5072669 res!2159776) b!5072670))

(assert (=> b!5072668 m!6119070))

(declare-fun m!6119536 () Bool)

(assert (=> b!5072668 m!6119536))

(declare-fun m!6119538 () Bool)

(assert (=> d!1637487 m!6119538))

(assert (=> d!1637487 m!6119068))

(declare-fun m!6119540 () Bool)

(assert (=> d!1637487 m!6119540))

(assert (=> d!1637487 m!6119070))

(declare-fun m!6119542 () Bool)

(assert (=> d!1637487 m!6119542))

(declare-fun m!6119544 () Bool)

(assert (=> b!5072669 m!6119544))

(assert (=> b!5072669 m!6119068))

(declare-fun m!6119546 () Bool)

(assert (=> b!5072669 m!6119546))

(assert (=> b!5072669 m!6119070))

(declare-fun m!6119548 () Bool)

(assert (=> b!5072669 m!6119548))

(assert (=> b!5072332 d!1637487))

(declare-fun b!5072677 () Bool)

(declare-fun e!3165059 () List!58566)

(assert (=> b!5072677 (= e!3165059 (list!19006 (xs!18930 (left!42828 ys!41))))))

(declare-fun b!5072678 () Bool)

(assert (=> b!5072678 (= e!3165059 (++!12795 (list!19005 (left!42828 (left!42828 ys!41))) (list!19005 (right!43158 (left!42828 ys!41)))))))

(declare-fun d!1637491 () Bool)

(declare-fun c!870973 () Bool)

(assert (=> d!1637491 (= c!870973 ((_ is Empty!15572) (left!42828 ys!41)))))

(declare-fun e!3165058 () List!58566)

(assert (=> d!1637491 (= (list!19005 (left!42828 ys!41)) e!3165058)))

(declare-fun b!5072675 () Bool)

(assert (=> b!5072675 (= e!3165058 Nil!58442)))

(declare-fun b!5072676 () Bool)

(assert (=> b!5072676 (= e!3165058 e!3165059)))

(declare-fun c!870974 () Bool)

(assert (=> b!5072676 (= c!870974 ((_ is Leaf!25863) (left!42828 ys!41)))))

(assert (= (and d!1637491 c!870973) b!5072675))

(assert (= (and d!1637491 (not c!870973)) b!5072676))

(assert (= (and b!5072676 c!870974) b!5072677))

(assert (= (and b!5072676 (not c!870974)) b!5072678))

(declare-fun m!6119558 () Bool)

(assert (=> b!5072677 m!6119558))

(assert (=> b!5072678 m!6119222))

(assert (=> b!5072678 m!6119224))

(assert (=> b!5072678 m!6119222))

(assert (=> b!5072678 m!6119224))

(declare-fun m!6119560 () Bool)

(assert (=> b!5072678 m!6119560))

(assert (=> b!5072332 d!1637491))

(declare-fun b!5072685 () Bool)

(declare-fun e!3165063 () List!58566)

(assert (=> b!5072685 (= e!3165063 (list!19006 (xs!18930 (right!43158 ys!41))))))

(declare-fun b!5072686 () Bool)

(assert (=> b!5072686 (= e!3165063 (++!12795 (list!19005 (left!42828 (right!43158 ys!41))) (list!19005 (right!43158 (right!43158 ys!41)))))))

(declare-fun d!1637495 () Bool)

(declare-fun c!870977 () Bool)

(assert (=> d!1637495 (= c!870977 ((_ is Empty!15572) (right!43158 ys!41)))))

(declare-fun e!3165062 () List!58566)

(assert (=> d!1637495 (= (list!19005 (right!43158 ys!41)) e!3165062)))

(declare-fun b!5072683 () Bool)

(assert (=> b!5072683 (= e!3165062 Nil!58442)))

(declare-fun b!5072684 () Bool)

(assert (=> b!5072684 (= e!3165062 e!3165063)))

(declare-fun c!870978 () Bool)

(assert (=> b!5072684 (= c!870978 ((_ is Leaf!25863) (right!43158 ys!41)))))

(assert (= (and d!1637495 c!870977) b!5072683))

(assert (= (and d!1637495 (not c!870977)) b!5072684))

(assert (= (and b!5072684 c!870978) b!5072685))

(assert (= (and b!5072684 (not c!870978)) b!5072686))

(declare-fun m!6119570 () Bool)

(assert (=> b!5072685 m!6119570))

(declare-fun m!6119572 () Bool)

(assert (=> b!5072686 m!6119572))

(declare-fun m!6119576 () Bool)

(assert (=> b!5072686 m!6119576))

(assert (=> b!5072686 m!6119572))

(assert (=> b!5072686 m!6119576))

(declare-fun m!6119578 () Bool)

(assert (=> b!5072686 m!6119578))

(assert (=> b!5072332 d!1637495))

(declare-fun d!1637501 () Bool)

(declare-fun lt!2089748 () Bool)

(assert (=> d!1637501 (= lt!2089748 (isEmpty!31648 (list!19005 (left!42828 lt!2089724))))))

(assert (=> d!1637501 (= lt!2089748 (= (size!39092 (left!42828 lt!2089724)) 0))))

(assert (=> d!1637501 (= (isEmpty!31647 (left!42828 lt!2089724)) lt!2089748)))

(declare-fun bs!1190229 () Bool)

(assert (= bs!1190229 d!1637501))

(assert (=> bs!1190229 m!6119006))

(assert (=> bs!1190229 m!6119006))

(declare-fun m!6119580 () Bool)

(assert (=> bs!1190229 m!6119580))

(declare-fun m!6119582 () Bool)

(assert (=> bs!1190229 m!6119582))

(assert (=> b!5072401 d!1637501))

(declare-fun d!1637503 () Bool)

(declare-fun res!2159777 () Bool)

(declare-fun e!3165064 () Bool)

(assert (=> d!1637503 (=> (not res!2159777) (not e!3165064))))

(assert (=> d!1637503 (= res!2159777 (= (csize!31374 (left!42828 xs!286)) (+ (size!39092 (left!42828 (left!42828 xs!286))) (size!39092 (right!43158 (left!42828 xs!286))))))))

(assert (=> d!1637503 (= (inv!77601 (left!42828 xs!286)) e!3165064)))

(declare-fun b!5072687 () Bool)

(declare-fun res!2159778 () Bool)

(assert (=> b!5072687 (=> (not res!2159778) (not e!3165064))))

(assert (=> b!5072687 (= res!2159778 (and (not (= (left!42828 (left!42828 xs!286)) Empty!15572)) (not (= (right!43158 (left!42828 xs!286)) Empty!15572))))))

(declare-fun b!5072688 () Bool)

(declare-fun res!2159779 () Bool)

(assert (=> b!5072688 (=> (not res!2159779) (not e!3165064))))

(assert (=> b!5072688 (= res!2159779 (= (cheight!15783 (left!42828 xs!286)) (+ (max!0 (height!2149 (left!42828 (left!42828 xs!286))) (height!2149 (right!43158 (left!42828 xs!286)))) 1)))))

(declare-fun b!5072689 () Bool)

(assert (=> b!5072689 (= e!3165064 (<= 0 (cheight!15783 (left!42828 xs!286))))))

(assert (= (and d!1637503 res!2159777) b!5072687))

(assert (= (and b!5072687 res!2159778) b!5072688))

(assert (= (and b!5072688 res!2159779) b!5072689))

(declare-fun m!6119584 () Bool)

(assert (=> d!1637503 m!6119584))

(declare-fun m!6119586 () Bool)

(assert (=> d!1637503 m!6119586))

(assert (=> b!5072688 m!6119476))

(assert (=> b!5072688 m!6119478))

(assert (=> b!5072688 m!6119476))

(assert (=> b!5072688 m!6119478))

(declare-fun m!6119588 () Bool)

(assert (=> b!5072688 m!6119588))

(assert (=> b!5072280 d!1637503))

(declare-fun d!1637511 () Bool)

(declare-fun lt!2089749 () Bool)

(assert (=> d!1637511 (= lt!2089749 (isEmpty!31648 (list!19005 (right!43158 lt!2089724))))))

(assert (=> d!1637511 (= lt!2089749 (= (size!39092 (right!43158 lt!2089724)) 0))))

(assert (=> d!1637511 (= (isEmpty!31647 (right!43158 lt!2089724)) lt!2089749)))

(declare-fun bs!1190230 () Bool)

(assert (= bs!1190230 d!1637511))

(assert (=> bs!1190230 m!6119008))

(assert (=> bs!1190230 m!6119008))

(declare-fun m!6119590 () Bool)

(assert (=> bs!1190230 m!6119590))

(declare-fun m!6119592 () Bool)

(assert (=> bs!1190230 m!6119592))

(assert (=> b!5072403 d!1637511))

(declare-fun d!1637513 () Bool)

(declare-fun res!2159780 () Bool)

(declare-fun e!3165065 () Bool)

(assert (=> d!1637513 (=> (not res!2159780) (not e!3165065))))

(assert (=> d!1637513 (= res!2159780 (<= (size!39091 (list!19006 (xs!18930 xs!286))) 512))))

(assert (=> d!1637513 (= (inv!77603 xs!286) e!3165065)))

(declare-fun b!5072690 () Bool)

(declare-fun res!2159781 () Bool)

(assert (=> b!5072690 (=> (not res!2159781) (not e!3165065))))

(assert (=> b!5072690 (= res!2159781 (= (csize!31375 xs!286) (size!39091 (list!19006 (xs!18930 xs!286)))))))

(declare-fun b!5072691 () Bool)

(assert (=> b!5072691 (= e!3165065 (and (> (csize!31375 xs!286) 0) (<= (csize!31375 xs!286) 512)))))

(assert (= (and d!1637513 res!2159780) b!5072690))

(assert (= (and b!5072690 res!2159781) b!5072691))

(assert (=> d!1637513 m!6119058))

(assert (=> d!1637513 m!6119058))

(declare-fun m!6119594 () Bool)

(assert (=> d!1637513 m!6119594))

(assert (=> b!5072690 m!6119058))

(assert (=> b!5072690 m!6119058))

(assert (=> b!5072690 m!6119594))

(assert (=> b!5072505 d!1637513))

(declare-fun d!1637515 () Bool)

(declare-fun lt!2089750 () Bool)

(assert (=> d!1637515 (= lt!2089750 (isEmpty!31648 (list!19005 (right!43158 xs!286))))))

(assert (=> d!1637515 (= lt!2089750 (= (size!39092 (right!43158 xs!286)) 0))))

(assert (=> d!1637515 (= (isEmpty!31647 (right!43158 xs!286)) lt!2089750)))

(declare-fun bs!1190231 () Bool)

(assert (= bs!1190231 d!1637515))

(assert (=> bs!1190231 m!6119062))

(assert (=> bs!1190231 m!6119062))

(declare-fun m!6119596 () Bool)

(assert (=> bs!1190231 m!6119596))

(assert (=> bs!1190231 m!6119496))

(assert (=> b!5072502 d!1637515))

(declare-fun d!1637517 () Bool)

(assert (=> d!1637517 (= (inv!77599 (xs!18930 (right!43158 xs!286))) (<= (size!39091 (innerList!15660 (xs!18930 (right!43158 xs!286)))) 2147483647))))

(declare-fun bs!1190232 () Bool)

(assert (= bs!1190232 d!1637517))

(declare-fun m!6119598 () Bool)

(assert (=> bs!1190232 m!6119598))

(assert (=> b!5072527 d!1637517))

(declare-fun d!1637519 () Bool)

(assert (=> d!1637519 (= (inv!77599 (xs!18930 (left!42828 err!4609))) (<= (size!39091 (innerList!15660 (xs!18930 (left!42828 err!4609)))) 2147483647))))

(declare-fun bs!1190233 () Bool)

(assert (= bs!1190233 d!1637519))

(declare-fun m!6119600 () Bool)

(assert (=> bs!1190233 m!6119600))

(assert (=> b!5072543 d!1637519))

(declare-fun b!5072693 () Bool)

(declare-fun res!2159784 () Bool)

(declare-fun e!3165067 () Bool)

(assert (=> b!5072693 (=> (not res!2159784) (not e!3165067))))

(assert (=> b!5072693 (= res!2159784 (isBalanced!4434 (left!42828 (left!42828 ys!41))))))

(declare-fun b!5072694 () Bool)

(declare-fun res!2159787 () Bool)

(assert (=> b!5072694 (=> (not res!2159787) (not e!3165067))))

(assert (=> b!5072694 (= res!2159787 (<= (- (height!2149 (left!42828 (left!42828 ys!41))) (height!2149 (right!43158 (left!42828 ys!41)))) 1))))

(declare-fun b!5072695 () Bool)

(declare-fun res!2159786 () Bool)

(assert (=> b!5072695 (=> (not res!2159786) (not e!3165067))))

(assert (=> b!5072695 (= res!2159786 (not (isEmpty!31647 (left!42828 (left!42828 ys!41)))))))

(declare-fun b!5072696 () Bool)

(declare-fun e!3165066 () Bool)

(assert (=> b!5072696 (= e!3165066 e!3165067)))

(declare-fun res!2159785 () Bool)

(assert (=> b!5072696 (=> (not res!2159785) (not e!3165067))))

(assert (=> b!5072696 (= res!2159785 (<= (- 1) (- (height!2149 (left!42828 (left!42828 ys!41))) (height!2149 (right!43158 (left!42828 ys!41))))))))

(declare-fun b!5072697 () Bool)

(assert (=> b!5072697 (= e!3165067 (not (isEmpty!31647 (right!43158 (left!42828 ys!41)))))))

(declare-fun d!1637521 () Bool)

(declare-fun res!2159783 () Bool)

(assert (=> d!1637521 (=> res!2159783 e!3165066)))

(assert (=> d!1637521 (= res!2159783 (not ((_ is Node!15572) (left!42828 ys!41))))))

(assert (=> d!1637521 (= (isBalanced!4434 (left!42828 ys!41)) e!3165066)))

(declare-fun b!5072692 () Bool)

(declare-fun res!2159782 () Bool)

(assert (=> b!5072692 (=> (not res!2159782) (not e!3165067))))

(assert (=> b!5072692 (= res!2159782 (isBalanced!4434 (right!43158 (left!42828 ys!41))))))

(assert (= (and d!1637521 (not res!2159783)) b!5072696))

(assert (= (and b!5072696 res!2159785) b!5072694))

(assert (= (and b!5072694 res!2159787) b!5072693))

(assert (= (and b!5072693 res!2159784) b!5072692))

(assert (= (and b!5072692 res!2159782) b!5072695))

(assert (= (and b!5072695 res!2159786) b!5072697))

(declare-fun m!6119602 () Bool)

(assert (=> b!5072693 m!6119602))

(declare-fun m!6119604 () Bool)

(assert (=> b!5072692 m!6119604))

(declare-fun m!6119606 () Bool)

(assert (=> b!5072694 m!6119606))

(declare-fun m!6119608 () Bool)

(assert (=> b!5072694 m!6119608))

(declare-fun m!6119610 () Bool)

(assert (=> b!5072695 m!6119610))

(declare-fun m!6119612 () Bool)

(assert (=> b!5072697 m!6119612))

(assert (=> b!5072696 m!6119606))

(assert (=> b!5072696 m!6119608))

(assert (=> b!5072486 d!1637521))

(declare-fun d!1637523 () Bool)

(declare-fun lt!2089756 () Int)

(assert (=> d!1637523 (>= lt!2089756 0)))

(declare-fun e!3165075 () Int)

(assert (=> d!1637523 (= lt!2089756 e!3165075)))

(declare-fun c!870983 () Bool)

(assert (=> d!1637523 (= c!870983 ((_ is Nil!58442) lt!2089732))))

(assert (=> d!1637523 (= (size!39091 lt!2089732) lt!2089756)))

(declare-fun b!5072710 () Bool)

(assert (=> b!5072710 (= e!3165075 0)))

(declare-fun b!5072711 () Bool)

(assert (=> b!5072711 (= e!3165075 (+ 1 (size!39091 (t!371335 lt!2089732))))))

(assert (= (and d!1637523 c!870983) b!5072710))

(assert (= (and d!1637523 (not c!870983)) b!5072711))

(declare-fun m!6119632 () Bool)

(assert (=> b!5072711 m!6119632))

(assert (=> b!5072317 d!1637523))

(declare-fun d!1637537 () Bool)

(declare-fun lt!2089757 () Int)

(assert (=> d!1637537 (>= lt!2089757 0)))

(declare-fun e!3165076 () Int)

(assert (=> d!1637537 (= lt!2089757 e!3165076)))

(declare-fun c!870984 () Bool)

(assert (=> d!1637537 (= c!870984 ((_ is Nil!58442) (list!19005 xs!286)))))

(assert (=> d!1637537 (= (size!39091 (list!19005 xs!286)) lt!2089757)))

(declare-fun b!5072712 () Bool)

(assert (=> b!5072712 (= e!3165076 0)))

(declare-fun b!5072713 () Bool)

(assert (=> b!5072713 (= e!3165076 (+ 1 (size!39091 (t!371335 (list!19005 xs!286)))))))

(assert (= (and d!1637537 c!870984) b!5072712))

(assert (= (and d!1637537 (not c!870984)) b!5072713))

(declare-fun m!6119634 () Bool)

(assert (=> b!5072713 m!6119634))

(assert (=> b!5072317 d!1637537))

(declare-fun d!1637539 () Bool)

(declare-fun lt!2089758 () Int)

(assert (=> d!1637539 (>= lt!2089758 0)))

(declare-fun e!3165077 () Int)

(assert (=> d!1637539 (= lt!2089758 e!3165077)))

(declare-fun c!870985 () Bool)

(assert (=> d!1637539 (= c!870985 ((_ is Nil!58442) (list!19005 ys!41)))))

(assert (=> d!1637539 (= (size!39091 (list!19005 ys!41)) lt!2089758)))

(declare-fun b!5072714 () Bool)

(assert (=> b!5072714 (= e!3165077 0)))

(declare-fun b!5072715 () Bool)

(assert (=> b!5072715 (= e!3165077 (+ 1 (size!39091 (t!371335 (list!19005 ys!41)))))))

(assert (= (and d!1637539 c!870985) b!5072714))

(assert (= (and d!1637539 (not c!870985)) b!5072715))

(declare-fun m!6119636 () Bool)

(assert (=> b!5072715 m!6119636))

(assert (=> b!5072317 d!1637539))

(declare-fun d!1637541 () Bool)

(declare-fun res!2159792 () Bool)

(declare-fun e!3165078 () Bool)

(assert (=> d!1637541 (=> (not res!2159792) (not e!3165078))))

(assert (=> d!1637541 (= res!2159792 (= (csize!31374 (left!42828 err!4609)) (+ (size!39092 (left!42828 (left!42828 err!4609))) (size!39092 (right!43158 (left!42828 err!4609))))))))

(assert (=> d!1637541 (= (inv!77601 (left!42828 err!4609)) e!3165078)))

(declare-fun b!5072716 () Bool)

(declare-fun res!2159793 () Bool)

(assert (=> b!5072716 (=> (not res!2159793) (not e!3165078))))

(assert (=> b!5072716 (= res!2159793 (and (not (= (left!42828 (left!42828 err!4609)) Empty!15572)) (not (= (right!43158 (left!42828 err!4609)) Empty!15572))))))

(declare-fun b!5072717 () Bool)

(declare-fun res!2159794 () Bool)

(assert (=> b!5072717 (=> (not res!2159794) (not e!3165078))))

(assert (=> b!5072717 (= res!2159794 (= (cheight!15783 (left!42828 err!4609)) (+ (max!0 (height!2149 (left!42828 (left!42828 err!4609))) (height!2149 (right!43158 (left!42828 err!4609)))) 1)))))

(declare-fun b!5072718 () Bool)

(assert (=> b!5072718 (= e!3165078 (<= 0 (cheight!15783 (left!42828 err!4609))))))

(assert (= (and d!1637541 res!2159792) b!5072716))

(assert (= (and b!5072716 res!2159793) b!5072717))

(assert (= (and b!5072717 res!2159794) b!5072718))

(declare-fun m!6119638 () Bool)

(assert (=> d!1637541 m!6119638))

(declare-fun m!6119640 () Bool)

(assert (=> d!1637541 m!6119640))

(declare-fun m!6119642 () Bool)

(assert (=> b!5072717 m!6119642))

(declare-fun m!6119644 () Bool)

(assert (=> b!5072717 m!6119644))

(assert (=> b!5072717 m!6119642))

(assert (=> b!5072717 m!6119644))

(declare-fun m!6119646 () Bool)

(assert (=> b!5072717 m!6119646))

(assert (=> b!5072509 d!1637541))

(declare-fun d!1637543 () Bool)

(declare-fun res!2159795 () Bool)

(declare-fun e!3165081 () Bool)

(assert (=> d!1637543 (=> (not res!2159795) (not e!3165081))))

(assert (=> d!1637543 (= res!2159795 (= (csize!31374 err!4609) (+ (size!39092 (left!42828 err!4609)) (size!39092 (right!43158 err!4609)))))))

(assert (=> d!1637543 (= (inv!77601 err!4609) e!3165081)))

(declare-fun b!5072723 () Bool)

(declare-fun res!2159796 () Bool)

(assert (=> b!5072723 (=> (not res!2159796) (not e!3165081))))

(assert (=> b!5072723 (= res!2159796 (and (not (= (left!42828 err!4609) Empty!15572)) (not (= (right!43158 err!4609) Empty!15572))))))

(declare-fun b!5072724 () Bool)

(declare-fun res!2159797 () Bool)

(assert (=> b!5072724 (=> (not res!2159797) (not e!3165081))))

(assert (=> b!5072724 (= res!2159797 (= (cheight!15783 err!4609) (+ (max!0 (height!2149 (left!42828 err!4609)) (height!2149 (right!43158 err!4609))) 1)))))

(declare-fun b!5072725 () Bool)

(assert (=> b!5072725 (= e!3165081 (<= 0 (cheight!15783 err!4609)))))

(assert (= (and d!1637543 res!2159795) b!5072723))

(assert (= (and b!5072723 res!2159796) b!5072724))

(assert (= (and b!5072724 res!2159797) b!5072725))

(declare-fun m!6119648 () Bool)

(assert (=> d!1637543 m!6119648))

(declare-fun m!6119650 () Bool)

(assert (=> d!1637543 m!6119650))

(declare-fun m!6119652 () Bool)

(assert (=> b!5072724 m!6119652))

(declare-fun m!6119654 () Bool)

(assert (=> b!5072724 m!6119654))

(assert (=> b!5072724 m!6119652))

(assert (=> b!5072724 m!6119654))

(declare-fun m!6119656 () Bool)

(assert (=> b!5072724 m!6119656))

(assert (=> b!5072482 d!1637543))

(declare-fun d!1637545 () Bool)

(assert (=> d!1637545 (= (height!2149 (left!42828 ys!41)) (ite ((_ is Empty!15572) (left!42828 ys!41)) 0 (ite ((_ is Leaf!25863) (left!42828 ys!41)) 1 (cheight!15783 (left!42828 ys!41)))))))

(assert (=> b!5072489 d!1637545))

(declare-fun d!1637547 () Bool)

(assert (=> d!1637547 (= (height!2149 (right!43158 ys!41)) (ite ((_ is Empty!15572) (right!43158 ys!41)) 0 (ite ((_ is Leaf!25863) (right!43158 ys!41)) 1 (cheight!15783 (right!43158 ys!41)))))))

(assert (=> b!5072489 d!1637547))

(declare-fun d!1637549 () Bool)

(declare-fun res!2159798 () Bool)

(declare-fun e!3165082 () Bool)

(assert (=> d!1637549 (=> (not res!2159798) (not e!3165082))))

(assert (=> d!1637549 (= res!2159798 (<= (size!39091 (list!19006 (xs!18930 (left!42828 err!4609)))) 512))))

(assert (=> d!1637549 (= (inv!77603 (left!42828 err!4609)) e!3165082)))

(declare-fun b!5072726 () Bool)

(declare-fun res!2159799 () Bool)

(assert (=> b!5072726 (=> (not res!2159799) (not e!3165082))))

(assert (=> b!5072726 (= res!2159799 (= (csize!31375 (left!42828 err!4609)) (size!39091 (list!19006 (xs!18930 (left!42828 err!4609))))))))

(declare-fun b!5072727 () Bool)

(assert (=> b!5072727 (= e!3165082 (and (> (csize!31375 (left!42828 err!4609)) 0) (<= (csize!31375 (left!42828 err!4609)) 512)))))

(assert (= (and d!1637549 res!2159798) b!5072726))

(assert (= (and b!5072726 res!2159799) b!5072727))

(declare-fun m!6119658 () Bool)

(assert (=> d!1637549 m!6119658))

(assert (=> d!1637549 m!6119658))

(declare-fun m!6119660 () Bool)

(assert (=> d!1637549 m!6119660))

(assert (=> b!5072726 m!6119658))

(assert (=> b!5072726 m!6119658))

(assert (=> b!5072726 m!6119660))

(assert (=> b!5072511 d!1637549))

(declare-fun d!1637551 () Bool)

(assert (=> d!1637551 (= (list!19006 (xs!18930 lt!2089724)) (innerList!15660 (xs!18930 lt!2089724)))))

(assert (=> b!5072296 d!1637551))

(declare-fun d!1637555 () Bool)

(declare-fun res!2159800 () Bool)

(declare-fun e!3165084 () Bool)

(assert (=> d!1637555 (=> (not res!2159800) (not e!3165084))))

(assert (=> d!1637555 (= res!2159800 (<= (size!39091 (list!19006 (xs!18930 err!4609))) 512))))

(assert (=> d!1637555 (= (inv!77603 err!4609) e!3165084)))

(declare-fun b!5072731 () Bool)

(declare-fun res!2159801 () Bool)

(assert (=> b!5072731 (=> (not res!2159801) (not e!3165084))))

(assert (=> b!5072731 (= res!2159801 (= (csize!31375 err!4609) (size!39091 (list!19006 (xs!18930 err!4609)))))))

(declare-fun b!5072733 () Bool)

(assert (=> b!5072733 (= e!3165084 (and (> (csize!31375 err!4609) 0) (<= (csize!31375 err!4609) 512)))))

(assert (= (and d!1637555 res!2159800) b!5072731))

(assert (= (and b!5072731 res!2159801) b!5072733))

(declare-fun m!6119666 () Bool)

(assert (=> d!1637555 m!6119666))

(assert (=> d!1637555 m!6119666))

(declare-fun m!6119668 () Bool)

(assert (=> d!1637555 m!6119668))

(assert (=> b!5072731 m!6119666))

(assert (=> b!5072731 m!6119666))

(assert (=> b!5072731 m!6119668))

(assert (=> b!5072484 d!1637555))

(declare-fun d!1637559 () Bool)

(assert (=> d!1637559 (= (inv!77599 (xs!18930 (left!42828 xs!286))) (<= (size!39091 (innerList!15660 (xs!18930 (left!42828 xs!286)))) 2147483647))))

(declare-fun bs!1190236 () Bool)

(assert (= bs!1190236 d!1637559))

(declare-fun m!6119672 () Bool)

(assert (=> bs!1190236 m!6119672))

(assert (=> b!5072524 d!1637559))

(declare-fun d!1637563 () Bool)

(declare-fun res!2159802 () Bool)

(declare-fun e!3165087 () Bool)

(assert (=> d!1637563 (=> (not res!2159802) (not e!3165087))))

(assert (=> d!1637563 (= res!2159802 (= (csize!31374 (left!42828 ys!41)) (+ (size!39092 (left!42828 (left!42828 ys!41))) (size!39092 (right!43158 (left!42828 ys!41))))))))

(assert (=> d!1637563 (= (inv!77601 (left!42828 ys!41)) e!3165087)))

(declare-fun b!5072736 () Bool)

(declare-fun res!2159803 () Bool)

(assert (=> b!5072736 (=> (not res!2159803) (not e!3165087))))

(assert (=> b!5072736 (= res!2159803 (and (not (= (left!42828 (left!42828 ys!41)) Empty!15572)) (not (= (right!43158 (left!42828 ys!41)) Empty!15572))))))

(declare-fun b!5072737 () Bool)

(declare-fun res!2159804 () Bool)

(assert (=> b!5072737 (=> (not res!2159804) (not e!3165087))))

(assert (=> b!5072737 (= res!2159804 (= (cheight!15783 (left!42828 ys!41)) (+ (max!0 (height!2149 (left!42828 (left!42828 ys!41))) (height!2149 (right!43158 (left!42828 ys!41)))) 1)))))

(declare-fun b!5072738 () Bool)

(assert (=> b!5072738 (= e!3165087 (<= 0 (cheight!15783 (left!42828 ys!41))))))

(assert (= (and d!1637563 res!2159802) b!5072736))

(assert (= (and b!5072736 res!2159803) b!5072737))

(assert (= (and b!5072737 res!2159804) b!5072738))

(declare-fun m!6119676 () Bool)

(assert (=> d!1637563 m!6119676))

(declare-fun m!6119678 () Bool)

(assert (=> d!1637563 m!6119678))

(assert (=> b!5072737 m!6119606))

(assert (=> b!5072737 m!6119608))

(assert (=> b!5072737 m!6119606))

(assert (=> b!5072737 m!6119608))

(declare-fun m!6119680 () Bool)

(assert (=> b!5072737 m!6119680))

(assert (=> b!5072491 d!1637563))

(declare-fun d!1637567 () Bool)

(assert (=> d!1637567 (= (inv!77599 (xs!18930 (right!43158 ys!41))) (<= (size!39091 (innerList!15660 (xs!18930 (right!43158 ys!41)))) 2147483647))))

(declare-fun bs!1190238 () Bool)

(assert (= bs!1190238 d!1637567))

(declare-fun m!6119684 () Bool)

(assert (=> bs!1190238 m!6119684))

(assert (=> b!5072540 d!1637567))

(declare-fun d!1637569 () Bool)

(declare-fun res!2159808 () Bool)

(declare-fun e!3165089 () Bool)

(assert (=> d!1637569 (=> (not res!2159808) (not e!3165089))))

(assert (=> d!1637569 (= res!2159808 (<= (size!39091 (list!19006 (xs!18930 (left!42828 ys!41)))) 512))))

(assert (=> d!1637569 (= (inv!77603 (left!42828 ys!41)) e!3165089)))

(declare-fun b!5072742 () Bool)

(declare-fun res!2159809 () Bool)

(assert (=> b!5072742 (=> (not res!2159809) (not e!3165089))))

(assert (=> b!5072742 (= res!2159809 (= (csize!31375 (left!42828 ys!41)) (size!39091 (list!19006 (xs!18930 (left!42828 ys!41))))))))

(declare-fun b!5072743 () Bool)

(assert (=> b!5072743 (= e!3165089 (and (> (csize!31375 (left!42828 ys!41)) 0) (<= (csize!31375 (left!42828 ys!41)) 512)))))

(assert (= (and d!1637569 res!2159808) b!5072742))

(assert (= (and b!5072742 res!2159809) b!5072743))

(assert (=> d!1637569 m!6119558))

(assert (=> d!1637569 m!6119558))

(declare-fun m!6119690 () Bool)

(assert (=> d!1637569 m!6119690))

(assert (=> b!5072742 m!6119558))

(assert (=> b!5072742 m!6119558))

(assert (=> b!5072742 m!6119690))

(assert (=> b!5072493 d!1637569))

(declare-fun bm!353369 () Bool)

(declare-fun call!353377 () List!58566)

(assert (=> bm!353369 (= call!353377 (++!12795 (list!19005 (left!42828 xs!286)) (list!19005 (right!43158 xs!286))))))

(declare-fun bm!353370 () Bool)

(declare-fun call!353374 () List!58566)

(declare-fun call!353375 () List!58566)

(assert (=> bm!353370 (= call!353374 (++!12795 (list!19005 (left!42828 xs!286)) call!353375))))

(declare-fun bm!353371 () Bool)

(assert (=> bm!353371 (= call!353375 (++!12795 (list!19005 (right!43158 xs!286)) (list!19005 ys!41)))))

(declare-fun b!5072746 () Bool)

(declare-fun e!3165091 () Bool)

(declare-fun call!353376 () List!58566)

(assert (=> b!5072746 (= e!3165091 (= call!353376 call!353374))))

(declare-fun lt!2089764 () Bool)

(assert (=> b!5072746 (= lt!2089764 (appendAssoc!306 (t!371335 (list!19005 (left!42828 xs!286))) (list!19005 (right!43158 xs!286)) (list!19005 ys!41)))))

(declare-fun bm!353372 () Bool)

(assert (=> bm!353372 (= call!353376 (++!12795 call!353377 (list!19005 ys!41)))))

(declare-fun b!5072747 () Bool)

(assert (=> b!5072747 (= e!3165091 (= call!353376 call!353374))))

(declare-fun d!1637573 () Bool)

(assert (=> d!1637573 e!3165091))

(declare-fun c!870991 () Bool)

(assert (=> d!1637573 (= c!870991 ((_ is Nil!58442) (list!19005 (left!42828 xs!286))))))

(assert (=> d!1637573 (= (appendAssoc!306 (list!19005 (left!42828 xs!286)) (list!19005 (right!43158 xs!286)) (list!19005 ys!41)) true)))

(assert (= (and d!1637573 c!870991) b!5072747))

(assert (= (and d!1637573 (not c!870991)) b!5072746))

(assert (= (or b!5072747 b!5072746) bm!353369))

(assert (= (or b!5072747 b!5072746) bm!353371))

(assert (= (or b!5072747 b!5072746) bm!353370))

(assert (= (or b!5072747 b!5072746) bm!353372))

(assert (=> bm!353370 m!6119060))

(declare-fun m!6119698 () Bool)

(assert (=> bm!353370 m!6119698))

(assert (=> bm!353369 m!6119060))

(assert (=> bm!353369 m!6119062))

(assert (=> bm!353369 m!6119064))

(assert (=> bm!353371 m!6119062))

(assert (=> bm!353371 m!6118972))

(declare-fun m!6119706 () Bool)

(assert (=> bm!353371 m!6119706))

(assert (=> bm!353372 m!6118972))

(declare-fun m!6119708 () Bool)

(assert (=> bm!353372 m!6119708))

(assert (=> b!5072746 m!6119062))

(assert (=> b!5072746 m!6118972))

(declare-fun m!6119710 () Bool)

(assert (=> b!5072746 m!6119710))

(assert (=> b!5072474 d!1637573))

(declare-fun b!5072753 () Bool)

(declare-fun e!3165094 () List!58566)

(assert (=> b!5072753 (= e!3165094 (list!19006 (xs!18930 (left!42828 xs!286))))))

(declare-fun b!5072754 () Bool)

(assert (=> b!5072754 (= e!3165094 (++!12795 (list!19005 (left!42828 (left!42828 xs!286))) (list!19005 (right!43158 (left!42828 xs!286)))))))

(declare-fun d!1637581 () Bool)

(declare-fun c!870992 () Bool)

(assert (=> d!1637581 (= c!870992 ((_ is Empty!15572) (left!42828 xs!286)))))

(declare-fun e!3165093 () List!58566)

(assert (=> d!1637581 (= (list!19005 (left!42828 xs!286)) e!3165093)))

(declare-fun b!5072751 () Bool)

(assert (=> b!5072751 (= e!3165093 Nil!58442)))

(declare-fun b!5072752 () Bool)

(assert (=> b!5072752 (= e!3165093 e!3165094)))

(declare-fun c!870993 () Bool)

(assert (=> b!5072752 (= c!870993 ((_ is Leaf!25863) (left!42828 xs!286)))))

(assert (= (and d!1637581 c!870992) b!5072751))

(assert (= (and d!1637581 (not c!870992)) b!5072752))

(assert (= (and b!5072752 c!870993) b!5072753))

(assert (= (and b!5072752 (not c!870993)) b!5072754))

(declare-fun m!6119712 () Bool)

(assert (=> b!5072753 m!6119712))

(declare-fun m!6119714 () Bool)

(assert (=> b!5072754 m!6119714))

(declare-fun m!6119716 () Bool)

(assert (=> b!5072754 m!6119716))

(assert (=> b!5072754 m!6119714))

(assert (=> b!5072754 m!6119716))

(declare-fun m!6119718 () Bool)

(assert (=> b!5072754 m!6119718))

(assert (=> b!5072474 d!1637581))

(declare-fun b!5072761 () Bool)

(declare-fun e!3165098 () List!58566)

(assert (=> b!5072761 (= e!3165098 (list!19006 (xs!18930 (right!43158 xs!286))))))

(declare-fun b!5072762 () Bool)

(assert (=> b!5072762 (= e!3165098 (++!12795 (list!19005 (left!42828 (right!43158 xs!286))) (list!19005 (right!43158 (right!43158 xs!286)))))))

(declare-fun d!1637585 () Bool)

(declare-fun c!870995 () Bool)

(assert (=> d!1637585 (= c!870995 ((_ is Empty!15572) (right!43158 xs!286)))))

(declare-fun e!3165097 () List!58566)

(assert (=> d!1637585 (= (list!19005 (right!43158 xs!286)) e!3165097)))

(declare-fun b!5072759 () Bool)

(assert (=> b!5072759 (= e!3165097 Nil!58442)))

(declare-fun b!5072760 () Bool)

(assert (=> b!5072760 (= e!3165097 e!3165098)))

(declare-fun c!870996 () Bool)

(assert (=> b!5072760 (= c!870996 ((_ is Leaf!25863) (right!43158 xs!286)))))

(assert (= (and d!1637585 c!870995) b!5072759))

(assert (= (and d!1637585 (not c!870995)) b!5072760))

(assert (= (and b!5072760 c!870996) b!5072761))

(assert (= (and b!5072760 (not c!870996)) b!5072762))

(assert (=> b!5072761 m!6119432))

(assert (=> b!5072762 m!6119228))

(assert (=> b!5072762 m!6119230))

(assert (=> b!5072762 m!6119228))

(assert (=> b!5072762 m!6119230))

(assert (=> b!5072762 m!6119382))

(assert (=> b!5072474 d!1637585))

(assert (=> b!5072474 d!1637349))

(declare-fun bm!353373 () Bool)

(declare-fun call!353381 () List!58566)

(assert (=> bm!353373 (= call!353381 (++!12795 (list!19005 xs!286) (list!19005 (left!42828 (left!42828 ys!41)))))))

(declare-fun bm!353374 () Bool)

(declare-fun call!353378 () List!58566)

(declare-fun call!353379 () List!58566)

(assert (=> bm!353374 (= call!353378 (++!12795 (list!19005 xs!286) call!353379))))

(declare-fun bm!353375 () Bool)

(assert (=> bm!353375 (= call!353379 (++!12795 (list!19005 (left!42828 (left!42828 ys!41))) (list!19005 (right!43158 (left!42828 ys!41)))))))

(declare-fun b!5072767 () Bool)

(declare-fun e!3165101 () Bool)

(declare-fun call!353380 () List!58566)

(assert (=> b!5072767 (= e!3165101 (= call!353380 call!353378))))

(declare-fun lt!2089766 () Bool)

(assert (=> b!5072767 (= lt!2089766 (appendAssoc!306 (t!371335 (list!19005 xs!286)) (list!19005 (left!42828 (left!42828 ys!41))) (list!19005 (right!43158 (left!42828 ys!41)))))))

(declare-fun bm!353376 () Bool)

(assert (=> bm!353376 (= call!353380 (++!12795 call!353381 (list!19005 (right!43158 (left!42828 ys!41)))))))

(declare-fun b!5072768 () Bool)

(assert (=> b!5072768 (= e!3165101 (= call!353380 call!353378))))

(declare-fun d!1637589 () Bool)

(assert (=> d!1637589 e!3165101))

(declare-fun c!870999 () Bool)

(assert (=> d!1637589 (= c!870999 ((_ is Nil!58442) (list!19005 xs!286)))))

(assert (=> d!1637589 (= (appendAssoc!306 (list!19005 xs!286) (list!19005 (left!42828 (left!42828 ys!41))) (list!19005 (right!43158 (left!42828 ys!41)))) true)))

(assert (= (and d!1637589 c!870999) b!5072768))

(assert (= (and d!1637589 (not c!870999)) b!5072767))

(assert (= (or b!5072768 b!5072767) bm!353373))

(assert (= (or b!5072768 b!5072767) bm!353375))

(assert (= (or b!5072768 b!5072767) bm!353374))

(assert (= (or b!5072768 b!5072767) bm!353376))

(assert (=> bm!353374 m!6118970))

(declare-fun m!6119740 () Bool)

(assert (=> bm!353374 m!6119740))

(assert (=> bm!353373 m!6118970))

(assert (=> bm!353373 m!6119222))

(assert (=> bm!353373 m!6119234))

(assert (=> bm!353375 m!6119222))

(assert (=> bm!353375 m!6119224))

(assert (=> bm!353375 m!6119560))

(assert (=> bm!353376 m!6119224))

(declare-fun m!6119742 () Bool)

(assert (=> bm!353376 m!6119742))

(assert (=> b!5072767 m!6119222))

(assert (=> b!5072767 m!6119224))

(declare-fun m!6119744 () Bool)

(assert (=> b!5072767 m!6119744))

(assert (=> b!5072476 d!1637589))

(assert (=> b!5072476 d!1637347))

(declare-fun b!5072775 () Bool)

(declare-fun e!3165105 () List!58566)

(assert (=> b!5072775 (= e!3165105 (list!19006 (xs!18930 (left!42828 (left!42828 ys!41)))))))

(declare-fun b!5072776 () Bool)

(assert (=> b!5072776 (= e!3165105 (++!12795 (list!19005 (left!42828 (left!42828 (left!42828 ys!41)))) (list!19005 (right!43158 (left!42828 (left!42828 ys!41))))))))

(declare-fun d!1637593 () Bool)

(declare-fun c!871002 () Bool)

(assert (=> d!1637593 (= c!871002 ((_ is Empty!15572) (left!42828 (left!42828 ys!41))))))

(declare-fun e!3165104 () List!58566)

(assert (=> d!1637593 (= (list!19005 (left!42828 (left!42828 ys!41))) e!3165104)))

(declare-fun b!5072773 () Bool)

(assert (=> b!5072773 (= e!3165104 Nil!58442)))

(declare-fun b!5072774 () Bool)

(assert (=> b!5072774 (= e!3165104 e!3165105)))

(declare-fun c!871003 () Bool)

(assert (=> b!5072774 (= c!871003 ((_ is Leaf!25863) (left!42828 (left!42828 ys!41))))))

(assert (= (and d!1637593 c!871002) b!5072773))

(assert (= (and d!1637593 (not c!871002)) b!5072774))

(assert (= (and b!5072774 c!871003) b!5072775))

(assert (= (and b!5072774 (not c!871003)) b!5072776))

(declare-fun m!6119748 () Bool)

(assert (=> b!5072775 m!6119748))

(declare-fun m!6119750 () Bool)

(assert (=> b!5072776 m!6119750))

(declare-fun m!6119752 () Bool)

(assert (=> b!5072776 m!6119752))

(assert (=> b!5072776 m!6119750))

(assert (=> b!5072776 m!6119752))

(declare-fun m!6119758 () Bool)

(assert (=> b!5072776 m!6119758))

(assert (=> b!5072476 d!1637593))

(declare-fun b!5072785 () Bool)

(declare-fun e!3165111 () List!58566)

(assert (=> b!5072785 (= e!3165111 (list!19006 (xs!18930 (right!43158 (left!42828 ys!41)))))))

(declare-fun b!5072786 () Bool)

(assert (=> b!5072786 (= e!3165111 (++!12795 (list!19005 (left!42828 (right!43158 (left!42828 ys!41)))) (list!19005 (right!43158 (right!43158 (left!42828 ys!41))))))))

(declare-fun d!1637599 () Bool)

(declare-fun c!871006 () Bool)

(assert (=> d!1637599 (= c!871006 ((_ is Empty!15572) (right!43158 (left!42828 ys!41))))))

(declare-fun e!3165110 () List!58566)

(assert (=> d!1637599 (= (list!19005 (right!43158 (left!42828 ys!41))) e!3165110)))

(declare-fun b!5072783 () Bool)

(assert (=> b!5072783 (= e!3165110 Nil!58442)))

(declare-fun b!5072784 () Bool)

(assert (=> b!5072784 (= e!3165110 e!3165111)))

(declare-fun c!871007 () Bool)

(assert (=> b!5072784 (= c!871007 ((_ is Leaf!25863) (right!43158 (left!42828 ys!41))))))

(assert (= (and d!1637599 c!871006) b!5072783))

(assert (= (and d!1637599 (not c!871006)) b!5072784))

(assert (= (and b!5072784 c!871007) b!5072785))

(assert (= (and b!5072784 (not c!871007)) b!5072786))

(declare-fun m!6119764 () Bool)

(assert (=> b!5072785 m!6119764))

(declare-fun m!6119766 () Bool)

(assert (=> b!5072786 m!6119766))

(declare-fun m!6119768 () Bool)

(assert (=> b!5072786 m!6119768))

(assert (=> b!5072786 m!6119766))

(assert (=> b!5072786 m!6119768))

(declare-fun m!6119770 () Bool)

(assert (=> b!5072786 m!6119770))

(assert (=> b!5072476 d!1637599))

(declare-fun d!1637603 () Bool)

(declare-fun res!2159821 () Bool)

(declare-fun e!3165113 () Bool)

(assert (=> d!1637603 (=> (not res!2159821) (not e!3165113))))

(assert (=> d!1637603 (= res!2159821 (= (csize!31374 ys!41) (+ (size!39092 (left!42828 ys!41)) (size!39092 (right!43158 ys!41)))))))

(assert (=> d!1637603 (= (inv!77601 ys!41) e!3165113)))

(declare-fun b!5072789 () Bool)

(declare-fun res!2159822 () Bool)

(assert (=> b!5072789 (=> (not res!2159822) (not e!3165113))))

(assert (=> b!5072789 (= res!2159822 (and (not (= (left!42828 ys!41) Empty!15572)) (not (= (right!43158 ys!41) Empty!15572))))))

(declare-fun b!5072790 () Bool)

(declare-fun res!2159823 () Bool)

(assert (=> b!5072790 (=> (not res!2159823) (not e!3165113))))

(assert (=> b!5072790 (= res!2159823 (= (cheight!15783 ys!41) (+ (max!0 (height!2149 (left!42828 ys!41)) (height!2149 (right!43158 ys!41))) 1)))))

(declare-fun b!5072791 () Bool)

(assert (=> b!5072791 (= e!3165113 (<= 0 (cheight!15783 ys!41)))))

(assert (= (and d!1637603 res!2159821) b!5072789))

(assert (= (and b!5072789 res!2159822) b!5072790))

(assert (= (and b!5072790 res!2159823) b!5072791))

(declare-fun m!6119774 () Bool)

(assert (=> d!1637603 m!6119774))

(declare-fun m!6119776 () Bool)

(assert (=> d!1637603 m!6119776))

(assert (=> b!5072790 m!6119252))

(assert (=> b!5072790 m!6119254))

(assert (=> b!5072790 m!6119252))

(assert (=> b!5072790 m!6119254))

(declare-fun m!6119778 () Bool)

(assert (=> b!5072790 m!6119778))

(assert (=> b!5072506 d!1637603))

(declare-fun d!1637607 () Bool)

(declare-fun res!2159826 () Bool)

(declare-fun e!3165115 () Bool)

(assert (=> d!1637607 (=> (not res!2159826) (not e!3165115))))

(assert (=> d!1637607 (= res!2159826 (<= (size!39091 (list!19006 (xs!18930 ys!41))) 512))))

(assert (=> d!1637607 (= (inv!77603 ys!41) e!3165115)))

(declare-fun b!5072794 () Bool)

(declare-fun res!2159827 () Bool)

(assert (=> b!5072794 (=> (not res!2159827) (not e!3165115))))

(assert (=> b!5072794 (= res!2159827 (= (csize!31375 ys!41) (size!39091 (list!19006 (xs!18930 ys!41)))))))

(declare-fun b!5072795 () Bool)

(assert (=> b!5072795 (= e!3165115 (and (> (csize!31375 ys!41) 0) (<= (csize!31375 ys!41) 512)))))

(assert (= (and d!1637607 res!2159826) b!5072794))

(assert (= (and b!5072794 res!2159827) b!5072795))

(assert (=> d!1637607 m!6119066))

(assert (=> d!1637607 m!6119066))

(declare-fun m!6119782 () Bool)

(assert (=> d!1637607 m!6119782))

(assert (=> b!5072794 m!6119066))

(assert (=> b!5072794 m!6119066))

(assert (=> b!5072794 m!6119782))

(assert (=> b!5072508 d!1637607))

(assert (=> b!5072479 d!1637347))

(assert (=> b!5072479 d!1637495))

(assert (=> b!5072479 d!1637599))

(declare-fun bm!353381 () Bool)

(declare-fun call!353389 () List!58566)

(assert (=> bm!353381 (= call!353389 (++!12795 (++!12795 (list!19005 xs!286) (list!19005 (left!42828 (left!42828 ys!41)))) (list!19005 (right!43158 (left!42828 ys!41)))))))

(declare-fun bm!353382 () Bool)

(declare-fun call!353386 () List!58566)

(declare-fun call!353387 () List!58566)

(assert (=> bm!353382 (= call!353386 (++!12795 (++!12795 (list!19005 xs!286) (list!19005 (left!42828 (left!42828 ys!41)))) call!353387))))

(declare-fun bm!353383 () Bool)

(assert (=> bm!353383 (= call!353387 (++!12795 (list!19005 (right!43158 (left!42828 ys!41))) (list!19005 (right!43158 ys!41))))))

(declare-fun b!5072798 () Bool)

(declare-fun e!3165117 () Bool)

(declare-fun call!353388 () List!58566)

(assert (=> b!5072798 (= e!3165117 (= call!353388 call!353386))))

(declare-fun lt!2089768 () Bool)

(assert (=> b!5072798 (= lt!2089768 (appendAssoc!306 (t!371335 (++!12795 (list!19005 xs!286) (list!19005 (left!42828 (left!42828 ys!41))))) (list!19005 (right!43158 (left!42828 ys!41))) (list!19005 (right!43158 ys!41))))))

(declare-fun bm!353384 () Bool)

(assert (=> bm!353384 (= call!353388 (++!12795 call!353389 (list!19005 (right!43158 ys!41))))))

(declare-fun b!5072799 () Bool)

(assert (=> b!5072799 (= e!3165117 (= call!353388 call!353386))))

(declare-fun d!1637611 () Bool)

(assert (=> d!1637611 e!3165117))

(declare-fun c!871009 () Bool)

(assert (=> d!1637611 (= c!871009 ((_ is Nil!58442) (++!12795 (list!19005 xs!286) (list!19005 (left!42828 (left!42828 ys!41))))))))

(assert (=> d!1637611 (= (appendAssoc!306 (++!12795 (list!19005 xs!286) (list!19005 (left!42828 (left!42828 ys!41)))) (list!19005 (right!43158 (left!42828 ys!41))) (list!19005 (right!43158 ys!41))) true)))

(assert (= (and d!1637611 c!871009) b!5072799))

(assert (= (and d!1637611 (not c!871009)) b!5072798))

(assert (= (or b!5072799 b!5072798) bm!353381))

(assert (= (or b!5072799 b!5072798) bm!353383))

(assert (= (or b!5072799 b!5072798) bm!353382))

(assert (= (or b!5072799 b!5072798) bm!353384))

(assert (=> bm!353382 m!6119234))

(declare-fun m!6119792 () Bool)

(assert (=> bm!353382 m!6119792))

(assert (=> bm!353381 m!6119234))

(assert (=> bm!353381 m!6119224))

(declare-fun m!6119796 () Bool)

(assert (=> bm!353381 m!6119796))

(assert (=> bm!353383 m!6119224))

(assert (=> bm!353383 m!6119070))

(declare-fun m!6119798 () Bool)

(assert (=> bm!353383 m!6119798))

(assert (=> bm!353384 m!6119070))

(declare-fun m!6119800 () Bool)

(assert (=> bm!353384 m!6119800))

(assert (=> b!5072798 m!6119224))

(assert (=> b!5072798 m!6119070))

(declare-fun m!6119802 () Bool)

(assert (=> b!5072798 m!6119802))

(assert (=> b!5072479 d!1637611))

(declare-fun b!5072805 () Bool)

(declare-fun e!3165121 () List!58566)

(assert (=> b!5072805 (= e!3165121 (Cons!58442 (h!64890 (list!19005 xs!286)) (++!12795 (t!371335 (list!19005 xs!286)) (list!19005 (left!42828 (left!42828 ys!41))))))))

(declare-fun d!1637615 () Bool)

(declare-fun e!3165120 () Bool)

(assert (=> d!1637615 e!3165120))

(declare-fun res!2159830 () Bool)

(assert (=> d!1637615 (=> (not res!2159830) (not e!3165120))))

(declare-fun lt!2089770 () List!58566)

(assert (=> d!1637615 (= res!2159830 (= (content!10421 lt!2089770) ((_ map or) (content!10421 (list!19005 xs!286)) (content!10421 (list!19005 (left!42828 (left!42828 ys!41)))))))))

(assert (=> d!1637615 (= lt!2089770 e!3165121)))

(declare-fun c!871011 () Bool)

(assert (=> d!1637615 (= c!871011 ((_ is Nil!58442) (list!19005 xs!286)))))

(assert (=> d!1637615 (= (++!12795 (list!19005 xs!286) (list!19005 (left!42828 (left!42828 ys!41)))) lt!2089770)))

(declare-fun b!5072807 () Bool)

(assert (=> b!5072807 (= e!3165120 (or (not (= (list!19005 (left!42828 (left!42828 ys!41))) Nil!58442)) (= lt!2089770 (list!19005 xs!286))))))

(declare-fun b!5072804 () Bool)

(assert (=> b!5072804 (= e!3165121 (list!19005 (left!42828 (left!42828 ys!41))))))

(declare-fun b!5072806 () Bool)

(declare-fun res!2159831 () Bool)

(assert (=> b!5072806 (=> (not res!2159831) (not e!3165120))))

(assert (=> b!5072806 (= res!2159831 (= (size!39091 lt!2089770) (+ (size!39091 (list!19005 xs!286)) (size!39091 (list!19005 (left!42828 (left!42828 ys!41)))))))))

(assert (= (and d!1637615 c!871011) b!5072804))

(assert (= (and d!1637615 (not c!871011)) b!5072805))

(assert (= (and d!1637615 res!2159830) b!5072806))

(assert (= (and b!5072806 res!2159831) b!5072807))

(assert (=> b!5072805 m!6119222))

(declare-fun m!6119814 () Bool)

(assert (=> b!5072805 m!6119814))

(declare-fun m!6119816 () Bool)

(assert (=> d!1637615 m!6119816))

(assert (=> d!1637615 m!6118970))

(assert (=> d!1637615 m!6119048))

(assert (=> d!1637615 m!6119222))

(declare-fun m!6119818 () Bool)

(assert (=> d!1637615 m!6119818))

(declare-fun m!6119820 () Bool)

(assert (=> b!5072806 m!6119820))

(assert (=> b!5072806 m!6118970))

(assert (=> b!5072806 m!6119054))

(assert (=> b!5072806 m!6119222))

(declare-fun m!6119824 () Bool)

(assert (=> b!5072806 m!6119824))

(assert (=> b!5072479 d!1637615))

(assert (=> b!5072479 d!1637593))

(declare-fun d!1637621 () Bool)

(assert (=> d!1637621 (= (inv!77599 (xs!18930 (right!43158 err!4609))) (<= (size!39091 (innerList!15660 (xs!18930 (right!43158 err!4609)))) 2147483647))))

(declare-fun bs!1190240 () Bool)

(assert (= bs!1190240 d!1637621))

(declare-fun m!6119826 () Bool)

(assert (=> bs!1190240 m!6119826))

(assert (=> b!5072546 d!1637621))

(declare-fun d!1637623 () Bool)

(declare-fun res!2159832 () Bool)

(declare-fun e!3165123 () Bool)

(assert (=> d!1637623 (=> (not res!2159832) (not e!3165123))))

(assert (=> d!1637623 (= res!2159832 (= (csize!31374 (right!43158 err!4609)) (+ (size!39092 (left!42828 (right!43158 err!4609))) (size!39092 (right!43158 (right!43158 err!4609))))))))

(assert (=> d!1637623 (= (inv!77601 (right!43158 err!4609)) e!3165123)))

(declare-fun b!5072810 () Bool)

(declare-fun res!2159833 () Bool)

(assert (=> b!5072810 (=> (not res!2159833) (not e!3165123))))

(assert (=> b!5072810 (= res!2159833 (and (not (= (left!42828 (right!43158 err!4609)) Empty!15572)) (not (= (right!43158 (right!43158 err!4609)) Empty!15572))))))

(declare-fun b!5072811 () Bool)

(declare-fun res!2159834 () Bool)

(assert (=> b!5072811 (=> (not res!2159834) (not e!3165123))))

(assert (=> b!5072811 (= res!2159834 (= (cheight!15783 (right!43158 err!4609)) (+ (max!0 (height!2149 (left!42828 (right!43158 err!4609))) (height!2149 (right!43158 (right!43158 err!4609)))) 1)))))

(declare-fun b!5072812 () Bool)

(assert (=> b!5072812 (= e!3165123 (<= 0 (cheight!15783 (right!43158 err!4609))))))

(assert (= (and d!1637623 res!2159832) b!5072810))

(assert (= (and b!5072810 res!2159833) b!5072811))

(assert (= (and b!5072811 res!2159834) b!5072812))

(declare-fun m!6119834 () Bool)

(assert (=> d!1637623 m!6119834))

(declare-fun m!6119836 () Bool)

(assert (=> d!1637623 m!6119836))

(declare-fun m!6119838 () Bool)

(assert (=> b!5072811 m!6119838))

(declare-fun m!6119840 () Bool)

(assert (=> b!5072811 m!6119840))

(assert (=> b!5072811 m!6119838))

(assert (=> b!5072811 m!6119840))

(declare-fun m!6119842 () Bool)

(assert (=> b!5072811 m!6119842))

(assert (=> b!5072512 d!1637623))

(declare-fun d!1637629 () Bool)

(declare-fun lt!2089773 () Int)

(assert (=> d!1637629 (>= lt!2089773 0)))

(declare-fun e!3165126 () Int)

(assert (=> d!1637629 (= lt!2089773 e!3165126)))

(declare-fun c!871013 () Bool)

(assert (=> d!1637629 (= c!871013 ((_ is Nil!58442) (innerList!15660 (xs!18930 xs!286))))))

(assert (=> d!1637629 (= (size!39091 (innerList!15660 (xs!18930 xs!286))) lt!2089773)))

(declare-fun b!5072819 () Bool)

(assert (=> b!5072819 (= e!3165126 0)))

(declare-fun b!5072820 () Bool)

(assert (=> b!5072820 (= e!3165126 (+ 1 (size!39091 (t!371335 (innerList!15660 (xs!18930 xs!286))))))))

(assert (= (and d!1637629 c!871013) b!5072819))

(assert (= (and d!1637629 (not c!871013)) b!5072820))

(declare-fun m!6119844 () Bool)

(assert (=> b!5072820 m!6119844))

(assert (=> d!1637391 d!1637629))

(declare-fun b!5072822 () Bool)

(declare-fun res!2159843 () Bool)

(declare-fun e!3165128 () Bool)

(assert (=> b!5072822 (=> (not res!2159843) (not e!3165128))))

(assert (=> b!5072822 (= res!2159843 (isBalanced!4434 (left!42828 (right!43158 xs!286))))))

(declare-fun b!5072823 () Bool)

(declare-fun res!2159846 () Bool)

(assert (=> b!5072823 (=> (not res!2159846) (not e!3165128))))

(assert (=> b!5072823 (= res!2159846 (<= (- (height!2149 (left!42828 (right!43158 xs!286))) (height!2149 (right!43158 (right!43158 xs!286)))) 1))))

(declare-fun b!5072824 () Bool)

(declare-fun res!2159845 () Bool)

(assert (=> b!5072824 (=> (not res!2159845) (not e!3165128))))

(assert (=> b!5072824 (= res!2159845 (not (isEmpty!31647 (left!42828 (right!43158 xs!286)))))))

(declare-fun b!5072825 () Bool)

(declare-fun e!3165127 () Bool)

(assert (=> b!5072825 (= e!3165127 e!3165128)))

(declare-fun res!2159844 () Bool)

(assert (=> b!5072825 (=> (not res!2159844) (not e!3165128))))

(assert (=> b!5072825 (= res!2159844 (<= (- 1) (- (height!2149 (left!42828 (right!43158 xs!286))) (height!2149 (right!43158 (right!43158 xs!286))))))))

(declare-fun b!5072826 () Bool)

(assert (=> b!5072826 (= e!3165128 (not (isEmpty!31647 (right!43158 (right!43158 xs!286)))))))

(declare-fun d!1637631 () Bool)

(declare-fun res!2159842 () Bool)

(assert (=> d!1637631 (=> res!2159842 e!3165127)))

(assert (=> d!1637631 (= res!2159842 (not ((_ is Node!15572) (right!43158 xs!286))))))

(assert (=> d!1637631 (= (isBalanced!4434 (right!43158 xs!286)) e!3165127)))

(declare-fun b!5072821 () Bool)

(declare-fun res!2159841 () Bool)

(assert (=> b!5072821 (=> (not res!2159841) (not e!3165128))))

(assert (=> b!5072821 (= res!2159841 (isBalanced!4434 (right!43158 (right!43158 xs!286))))))

(assert (= (and d!1637631 (not res!2159842)) b!5072825))

(assert (= (and b!5072825 res!2159844) b!5072823))

(assert (= (and b!5072823 res!2159846) b!5072822))

(assert (= (and b!5072822 res!2159843) b!5072821))

(assert (= (and b!5072821 res!2159841) b!5072824))

(assert (= (and b!5072824 res!2159845) b!5072826))

(declare-fun m!6119854 () Bool)

(assert (=> b!5072822 m!6119854))

(declare-fun m!6119856 () Bool)

(assert (=> b!5072821 m!6119856))

(assert (=> b!5072823 m!6119360))

(assert (=> b!5072823 m!6119362))

(declare-fun m!6119858 () Bool)

(assert (=> b!5072824 m!6119858))

(declare-fun m!6119860 () Bool)

(assert (=> b!5072826 m!6119860))

(assert (=> b!5072825 m!6119360))

(assert (=> b!5072825 m!6119362))

(assert (=> b!5072497 d!1637631))

(declare-fun d!1637635 () Bool)

(assert (=> d!1637635 (= (inv!77599 (xs!18930 (left!42828 ys!41))) (<= (size!39091 (innerList!15660 (xs!18930 (left!42828 ys!41)))) 2147483647))))

(declare-fun bs!1190242 () Bool)

(assert (= bs!1190242 d!1637635))

(declare-fun m!6119870 () Bool)

(assert (=> bs!1190242 m!6119870))

(assert (=> b!5072537 d!1637635))

(declare-fun d!1637637 () Bool)

(declare-fun c!871019 () Bool)

(assert (=> d!1637637 (= c!871019 ((_ is Nil!58442) lt!2089732))))

(declare-fun e!3165138 () (InoxSet T!105174))

(assert (=> d!1637637 (= (content!10421 lt!2089732) e!3165138)))

(declare-fun b!5072844 () Bool)

(assert (=> b!5072844 (= e!3165138 ((as const (Array T!105174 Bool)) false))))

(declare-fun b!5072845 () Bool)

(assert (=> b!5072845 (= e!3165138 ((_ map or) (store ((as const (Array T!105174 Bool)) false) (h!64890 lt!2089732) true) (content!10421 (t!371335 lt!2089732))))))

(assert (= (and d!1637637 c!871019) b!5072844))

(assert (= (and d!1637637 (not c!871019)) b!5072845))

(declare-fun m!6119896 () Bool)

(assert (=> b!5072845 m!6119896))

(declare-fun m!6119898 () Bool)

(assert (=> b!5072845 m!6119898))

(assert (=> d!1637343 d!1637637))

(declare-fun d!1637651 () Bool)

(declare-fun c!871020 () Bool)

(assert (=> d!1637651 (= c!871020 ((_ is Nil!58442) (list!19005 xs!286)))))

(declare-fun e!3165139 () (InoxSet T!105174))

(assert (=> d!1637651 (= (content!10421 (list!19005 xs!286)) e!3165139)))

(declare-fun b!5072846 () Bool)

(assert (=> b!5072846 (= e!3165139 ((as const (Array T!105174 Bool)) false))))

(declare-fun b!5072847 () Bool)

(assert (=> b!5072847 (= e!3165139 ((_ map or) (store ((as const (Array T!105174 Bool)) false) (h!64890 (list!19005 xs!286)) true) (content!10421 (t!371335 (list!19005 xs!286)))))))

(assert (= (and d!1637651 c!871020) b!5072846))

(assert (= (and d!1637651 (not c!871020)) b!5072847))

(declare-fun m!6119908 () Bool)

(assert (=> b!5072847 m!6119908))

(declare-fun m!6119910 () Bool)

(assert (=> b!5072847 m!6119910))

(assert (=> d!1637343 d!1637651))

(declare-fun d!1637655 () Bool)

(declare-fun c!871022 () Bool)

(assert (=> d!1637655 (= c!871022 ((_ is Nil!58442) (list!19005 ys!41)))))

(declare-fun e!3165142 () (InoxSet T!105174))

(assert (=> d!1637655 (= (content!10421 (list!19005 ys!41)) e!3165142)))

(declare-fun b!5072852 () Bool)

(assert (=> b!5072852 (= e!3165142 ((as const (Array T!105174 Bool)) false))))

(declare-fun b!5072853 () Bool)

(assert (=> b!5072853 (= e!3165142 ((_ map or) (store ((as const (Array T!105174 Bool)) false) (h!64890 (list!19005 ys!41)) true) (content!10421 (t!371335 (list!19005 ys!41)))))))

(assert (= (and d!1637655 c!871022) b!5072852))

(assert (= (and d!1637655 (not c!871022)) b!5072853))

(declare-fun m!6119912 () Bool)

(assert (=> b!5072853 m!6119912))

(declare-fun m!6119914 () Bool)

(assert (=> b!5072853 m!6119914))

(assert (=> d!1637343 d!1637655))

(declare-fun bm!353389 () Bool)

(declare-fun call!353397 () List!58566)

(assert (=> bm!353389 (= call!353397 (++!12795 (list!19005 xs!286) (list!19005 (left!42828 ys!41))))))

(declare-fun bm!353390 () Bool)

(declare-fun call!353394 () List!58566)

(declare-fun call!353395 () List!58566)

(assert (=> bm!353390 (= call!353394 (++!12795 (list!19005 xs!286) call!353395))))

(declare-fun bm!353391 () Bool)

(assert (=> bm!353391 (= call!353395 (++!12795 (list!19005 (left!42828 ys!41)) (list!19005 (right!43158 ys!41))))))

(declare-fun b!5072854 () Bool)

(declare-fun e!3165143 () Bool)

(declare-fun call!353396 () List!58566)

(assert (=> b!5072854 (= e!3165143 (= call!353396 call!353394))))

(declare-fun lt!2089778 () Bool)

(assert (=> b!5072854 (= lt!2089778 (appendAssoc!306 (t!371335 (list!19005 xs!286)) (list!19005 (left!42828 ys!41)) (list!19005 (right!43158 ys!41))))))

(declare-fun bm!353392 () Bool)

(assert (=> bm!353392 (= call!353396 (++!12795 call!353397 (list!19005 (right!43158 ys!41))))))

(declare-fun b!5072855 () Bool)

(assert (=> b!5072855 (= e!3165143 (= call!353396 call!353394))))

(declare-fun d!1637657 () Bool)

(assert (=> d!1637657 e!3165143))

(declare-fun c!871023 () Bool)

(assert (=> d!1637657 (= c!871023 ((_ is Nil!58442) (list!19005 xs!286)))))

(assert (=> d!1637657 (= (appendAssoc!306 (list!19005 xs!286) (list!19005 (left!42828 ys!41)) (list!19005 (right!43158 ys!41))) true)))

(assert (= (and d!1637657 c!871023) b!5072855))

(assert (= (and d!1637657 (not c!871023)) b!5072854))

(assert (= (or b!5072855 b!5072854) bm!353389))

(assert (= (or b!5072855 b!5072854) bm!353391))

(assert (= (or b!5072855 b!5072854) bm!353390))

(assert (= (or b!5072855 b!5072854) bm!353392))

(assert (=> bm!353390 m!6118970))

(declare-fun m!6119926 () Bool)

(assert (=> bm!353390 m!6119926))

(assert (=> bm!353389 m!6118970))

(assert (=> bm!353389 m!6119068))

(declare-fun m!6119928 () Bool)

(assert (=> bm!353389 m!6119928))

(assert (=> bm!353391 m!6119068))

(assert (=> bm!353391 m!6119070))

(assert (=> bm!353391 m!6119072))

(assert (=> bm!353392 m!6119070))

(declare-fun m!6119934 () Bool)

(assert (=> bm!353392 m!6119934))

(assert (=> b!5072854 m!6119068))

(assert (=> b!5072854 m!6119070))

(declare-fun m!6119936 () Bool)

(assert (=> b!5072854 m!6119936))

(assert (=> b!5072481 d!1637657))

(assert (=> b!5072481 d!1637347))

(assert (=> b!5072481 d!1637491))

(assert (=> b!5072481 d!1637495))

(declare-fun d!1637663 () Bool)

(declare-fun res!2159858 () Bool)

(declare-fun e!3165148 () Bool)

(assert (=> d!1637663 (=> (not res!2159858) (not e!3165148))))

(assert (=> d!1637663 (= res!2159858 (<= (size!39091 (list!19006 (xs!18930 (right!43158 err!4609)))) 512))))

(assert (=> d!1637663 (= (inv!77603 (right!43158 err!4609)) e!3165148)))

(declare-fun b!5072862 () Bool)

(declare-fun res!2159859 () Bool)

(assert (=> b!5072862 (=> (not res!2159859) (not e!3165148))))

(assert (=> b!5072862 (= res!2159859 (= (csize!31375 (right!43158 err!4609)) (size!39091 (list!19006 (xs!18930 (right!43158 err!4609))))))))

(declare-fun b!5072863 () Bool)

(assert (=> b!5072863 (= e!3165148 (and (> (csize!31375 (right!43158 err!4609)) 0) (<= (csize!31375 (right!43158 err!4609)) 512)))))

(assert (= (and d!1637663 res!2159858) b!5072862))

(assert (= (and b!5072862 res!2159859) b!5072863))

(declare-fun m!6119942 () Bool)

(assert (=> d!1637663 m!6119942))

(assert (=> d!1637663 m!6119942))

(declare-fun m!6119944 () Bool)

(assert (=> d!1637663 m!6119944))

(assert (=> b!5072862 m!6119942))

(assert (=> b!5072862 m!6119942))

(assert (=> b!5072862 m!6119944))

(assert (=> b!5072514 d!1637663))

(declare-fun b!5072867 () Bool)

(declare-fun e!3165151 () List!58566)

(assert (=> b!5072867 (= e!3165151 (Cons!58442 (h!64890 (list!19005 (left!42828 xs!286))) (++!12795 (t!371335 (list!19005 (left!42828 xs!286))) (list!19005 (right!43158 xs!286)))))))

(declare-fun d!1637667 () Bool)

(declare-fun e!3165150 () Bool)

(assert (=> d!1637667 e!3165150))

(declare-fun res!2159860 () Bool)

(assert (=> d!1637667 (=> (not res!2159860) (not e!3165150))))

(declare-fun lt!2089780 () List!58566)

(assert (=> d!1637667 (= res!2159860 (= (content!10421 lt!2089780) ((_ map or) (content!10421 (list!19005 (left!42828 xs!286))) (content!10421 (list!19005 (right!43158 xs!286))))))))

(assert (=> d!1637667 (= lt!2089780 e!3165151)))

(declare-fun c!871027 () Bool)

(assert (=> d!1637667 (= c!871027 ((_ is Nil!58442) (list!19005 (left!42828 xs!286))))))

(assert (=> d!1637667 (= (++!12795 (list!19005 (left!42828 xs!286)) (list!19005 (right!43158 xs!286))) lt!2089780)))

(declare-fun b!5072869 () Bool)

(assert (=> b!5072869 (= e!3165150 (or (not (= (list!19005 (right!43158 xs!286)) Nil!58442)) (= lt!2089780 (list!19005 (left!42828 xs!286)))))))

(declare-fun b!5072866 () Bool)

(assert (=> b!5072866 (= e!3165151 (list!19005 (right!43158 xs!286)))))

(declare-fun b!5072868 () Bool)

(declare-fun res!2159861 () Bool)

(assert (=> b!5072868 (=> (not res!2159861) (not e!3165150))))

(assert (=> b!5072868 (= res!2159861 (= (size!39091 lt!2089780) (+ (size!39091 (list!19005 (left!42828 xs!286))) (size!39091 (list!19005 (right!43158 xs!286))))))))

(assert (= (and d!1637667 c!871027) b!5072866))

(assert (= (and d!1637667 (not c!871027)) b!5072867))

(assert (= (and d!1637667 res!2159860) b!5072868))

(assert (= (and b!5072868 res!2159861) b!5072869))

(assert (=> b!5072867 m!6119062))

(declare-fun m!6119952 () Bool)

(assert (=> b!5072867 m!6119952))

(declare-fun m!6119956 () Bool)

(assert (=> d!1637667 m!6119956))

(assert (=> d!1637667 m!6119060))

(declare-fun m!6119958 () Bool)

(assert (=> d!1637667 m!6119958))

(assert (=> d!1637667 m!6119062))

(declare-fun m!6119960 () Bool)

(assert (=> d!1637667 m!6119960))

(declare-fun m!6119962 () Bool)

(assert (=> b!5072868 m!6119962))

(assert (=> b!5072868 m!6119060))

(declare-fun m!6119964 () Bool)

(assert (=> b!5072868 m!6119964))

(assert (=> b!5072868 m!6119062))

(declare-fun m!6119966 () Bool)

(assert (=> b!5072868 m!6119966))

(assert (=> b!5072326 d!1637667))

(assert (=> b!5072326 d!1637581))

(assert (=> b!5072326 d!1637585))

(declare-fun b!5072875 () Bool)

(declare-fun res!2159866 () Bool)

(declare-fun e!3165155 () Bool)

(assert (=> b!5072875 (=> (not res!2159866) (not e!3165155))))

(assert (=> b!5072875 (= res!2159866 (isBalanced!4434 (left!42828 (right!43158 lt!2089724))))))

(declare-fun b!5072876 () Bool)

(declare-fun res!2159869 () Bool)

(assert (=> b!5072876 (=> (not res!2159869) (not e!3165155))))

(assert (=> b!5072876 (= res!2159869 (<= (- (height!2149 (left!42828 (right!43158 lt!2089724))) (height!2149 (right!43158 (right!43158 lt!2089724)))) 1))))

(declare-fun b!5072877 () Bool)

(declare-fun res!2159868 () Bool)

(assert (=> b!5072877 (=> (not res!2159868) (not e!3165155))))

(assert (=> b!5072877 (= res!2159868 (not (isEmpty!31647 (left!42828 (right!43158 lt!2089724)))))))

(declare-fun b!5072878 () Bool)

(declare-fun e!3165154 () Bool)

(assert (=> b!5072878 (= e!3165154 e!3165155)))

(declare-fun res!2159867 () Bool)

(assert (=> b!5072878 (=> (not res!2159867) (not e!3165155))))

(assert (=> b!5072878 (= res!2159867 (<= (- 1) (- (height!2149 (left!42828 (right!43158 lt!2089724))) (height!2149 (right!43158 (right!43158 lt!2089724))))))))

(declare-fun b!5072879 () Bool)

(assert (=> b!5072879 (= e!3165155 (not (isEmpty!31647 (right!43158 (right!43158 lt!2089724)))))))

(declare-fun d!1637671 () Bool)

(declare-fun res!2159865 () Bool)

(assert (=> d!1637671 (=> res!2159865 e!3165154)))

(assert (=> d!1637671 (= res!2159865 (not ((_ is Node!15572) (right!43158 lt!2089724))))))

(assert (=> d!1637671 (= (isBalanced!4434 (right!43158 lt!2089724)) e!3165154)))

(declare-fun b!5072874 () Bool)

(declare-fun res!2159864 () Bool)

(assert (=> b!5072874 (=> (not res!2159864) (not e!3165155))))

(assert (=> b!5072874 (= res!2159864 (isBalanced!4434 (right!43158 (right!43158 lt!2089724))))))

(assert (= (and d!1637671 (not res!2159865)) b!5072878))

(assert (= (and b!5072878 res!2159867) b!5072876))

(assert (= (and b!5072876 res!2159869) b!5072875))

(assert (= (and b!5072875 res!2159866) b!5072874))

(assert (= (and b!5072874 res!2159864) b!5072877))

(assert (= (and b!5072877 res!2159868) b!5072879))

(declare-fun m!6119982 () Bool)

(assert (=> b!5072875 m!6119982))

(declare-fun m!6119984 () Bool)

(assert (=> b!5072874 m!6119984))

(declare-fun m!6119986 () Bool)

(assert (=> b!5072876 m!6119986))

(declare-fun m!6119988 () Bool)

(assert (=> b!5072876 m!6119988))

(declare-fun m!6119990 () Bool)

(assert (=> b!5072877 m!6119990))

(declare-fun m!6119992 () Bool)

(assert (=> b!5072879 m!6119992))

(assert (=> b!5072878 m!6119986))

(assert (=> b!5072878 m!6119988))

(assert (=> b!5072398 d!1637671))

(declare-fun d!1637675 () Bool)

(declare-fun lt!2089782 () Int)

(assert (=> d!1637675 (>= lt!2089782 0)))

(declare-fun e!3165158 () Int)

(assert (=> d!1637675 (= lt!2089782 e!3165158)))

(declare-fun c!871031 () Bool)

(assert (=> d!1637675 (= c!871031 ((_ is Nil!58442) (innerList!15660 (xs!18930 ys!41))))))

(assert (=> d!1637675 (= (size!39091 (innerList!15660 (xs!18930 ys!41))) lt!2089782)))

(declare-fun b!5072884 () Bool)

(assert (=> b!5072884 (= e!3165158 0)))

(declare-fun b!5072885 () Bool)

(assert (=> b!5072885 (= e!3165158 (+ 1 (size!39091 (t!371335 (innerList!15660 (xs!18930 ys!41))))))))

(assert (= (and d!1637675 c!871031) b!5072884))

(assert (= (and d!1637675 (not c!871031)) b!5072885))

(declare-fun m!6119998 () Bool)

(assert (=> b!5072885 m!6119998))

(assert (=> d!1637407 d!1637675))

(declare-fun d!1637677 () Bool)

(assert (=> d!1637677 (= (height!2149 (left!42828 lt!2089724)) (ite ((_ is Empty!15572) (left!42828 lt!2089724)) 0 (ite ((_ is Leaf!25863) (left!42828 lt!2089724)) 1 (cheight!15783 (left!42828 lt!2089724)))))))

(assert (=> b!5072400 d!1637677))

(declare-fun d!1637679 () Bool)

(assert (=> d!1637679 (= (height!2149 (right!43158 lt!2089724)) (ite ((_ is Empty!15572) (right!43158 lt!2089724)) 0 (ite ((_ is Leaf!25863) (right!43158 lt!2089724)) 1 (cheight!15783 (right!43158 lt!2089724)))))))

(assert (=> b!5072400 d!1637679))

(declare-fun d!1637683 () Bool)

(assert (=> d!1637683 (= (height!2149 (left!42828 xs!286)) (ite ((_ is Empty!15572) (left!42828 xs!286)) 0 (ite ((_ is Leaf!25863) (left!42828 xs!286)) 1 (cheight!15783 (left!42828 xs!286)))))))

(assert (=> b!5072499 d!1637683))

(declare-fun d!1637685 () Bool)

(assert (=> d!1637685 (= (height!2149 (right!43158 xs!286)) (ite ((_ is Empty!15572) (right!43158 xs!286)) 0 (ite ((_ is Leaf!25863) (right!43158 xs!286)) 1 (cheight!15783 (right!43158 xs!286)))))))

(assert (=> b!5072499 d!1637685))

(assert (=> b!5072501 d!1637683))

(assert (=> b!5072501 d!1637685))

(declare-fun d!1637687 () Bool)

(declare-fun res!2159870 () Bool)

(declare-fun e!3165161 () Bool)

(assert (=> d!1637687 (=> (not res!2159870) (not e!3165161))))

(assert (=> d!1637687 (= res!2159870 (= (csize!31374 (right!43158 ys!41)) (+ (size!39092 (left!42828 (right!43158 ys!41))) (size!39092 (right!43158 (right!43158 ys!41))))))))

(assert (=> d!1637687 (= (inv!77601 (right!43158 ys!41)) e!3165161)))

(declare-fun b!5072890 () Bool)

(declare-fun res!2159871 () Bool)

(assert (=> b!5072890 (=> (not res!2159871) (not e!3165161))))

(assert (=> b!5072890 (= res!2159871 (and (not (= (left!42828 (right!43158 ys!41)) Empty!15572)) (not (= (right!43158 (right!43158 ys!41)) Empty!15572))))))

(declare-fun b!5072891 () Bool)

(declare-fun res!2159872 () Bool)

(assert (=> b!5072891 (=> (not res!2159872) (not e!3165161))))

(assert (=> b!5072891 (= res!2159872 (= (cheight!15783 (right!43158 ys!41)) (+ (max!0 (height!2149 (left!42828 (right!43158 ys!41))) (height!2149 (right!43158 (right!43158 ys!41)))) 1)))))

(declare-fun b!5072892 () Bool)

(assert (=> b!5072892 (= e!3165161 (<= 0 (cheight!15783 (right!43158 ys!41))))))

(assert (= (and d!1637687 res!2159870) b!5072890))

(assert (= (and b!5072890 res!2159871) b!5072891))

(assert (= (and b!5072891 res!2159872) b!5072892))

(declare-fun m!6120012 () Bool)

(assert (=> d!1637687 m!6120012))

(declare-fun m!6120014 () Bool)

(assert (=> d!1637687 m!6120014))

(declare-fun m!6120016 () Bool)

(assert (=> b!5072891 m!6120016))

(declare-fun m!6120018 () Bool)

(assert (=> b!5072891 m!6120018))

(assert (=> b!5072891 m!6120016))

(assert (=> b!5072891 m!6120018))

(declare-fun m!6120020 () Bool)

(assert (=> b!5072891 m!6120020))

(assert (=> b!5072494 d!1637687))

(declare-fun d!1637691 () Bool)

(assert (=> d!1637691 (= (list!19006 (xs!18930 ys!41)) (innerList!15660 (xs!18930 ys!41)))))

(assert (=> b!5072331 d!1637691))

(declare-fun d!1637693 () Bool)

(declare-fun c!871034 () Bool)

(assert (=> d!1637693 (= c!871034 ((_ is Node!15572) (left!42828 (right!43158 xs!286))))))

(declare-fun e!3165163 () Bool)

(assert (=> d!1637693 (= (inv!77600 (left!42828 (right!43158 xs!286))) e!3165163)))

(declare-fun b!5072896 () Bool)

(assert (=> b!5072896 (= e!3165163 (inv!77601 (left!42828 (right!43158 xs!286))))))

(declare-fun b!5072897 () Bool)

(declare-fun e!3165164 () Bool)

(assert (=> b!5072897 (= e!3165163 e!3165164)))

(declare-fun res!2159876 () Bool)

(assert (=> b!5072897 (= res!2159876 (not ((_ is Leaf!25863) (left!42828 (right!43158 xs!286)))))))

(assert (=> b!5072897 (=> res!2159876 e!3165164)))

(declare-fun b!5072898 () Bool)

(assert (=> b!5072898 (= e!3165164 (inv!77603 (left!42828 (right!43158 xs!286))))))

(assert (= (and d!1637693 c!871034) b!5072896))

(assert (= (and d!1637693 (not c!871034)) b!5072897))

(assert (= (and b!5072897 (not res!2159876)) b!5072898))

(declare-fun m!6120032 () Bool)

(assert (=> b!5072896 m!6120032))

(declare-fun m!6120034 () Bool)

(assert (=> b!5072898 m!6120034))

(assert (=> b!5072526 d!1637693))

(declare-fun d!1637697 () Bool)

(declare-fun c!871035 () Bool)

(assert (=> d!1637697 (= c!871035 ((_ is Node!15572) (right!43158 (right!43158 xs!286))))))

(declare-fun e!3165167 () Bool)

(assert (=> d!1637697 (= (inv!77600 (right!43158 (right!43158 xs!286))) e!3165167)))

(declare-fun b!5072905 () Bool)

(assert (=> b!5072905 (= e!3165167 (inv!77601 (right!43158 (right!43158 xs!286))))))

(declare-fun b!5072906 () Bool)

(declare-fun e!3165168 () Bool)

(assert (=> b!5072906 (= e!3165167 e!3165168)))

(declare-fun res!2159883 () Bool)

(assert (=> b!5072906 (= res!2159883 (not ((_ is Leaf!25863) (right!43158 (right!43158 xs!286)))))))

(assert (=> b!5072906 (=> res!2159883 e!3165168)))

(declare-fun b!5072907 () Bool)

(assert (=> b!5072907 (= e!3165168 (inv!77603 (right!43158 (right!43158 xs!286))))))

(assert (= (and d!1637697 c!871035) b!5072905))

(assert (= (and d!1637697 (not c!871035)) b!5072906))

(assert (= (and b!5072906 (not res!2159883)) b!5072907))

(declare-fun m!6120036 () Bool)

(assert (=> b!5072905 m!6120036))

(declare-fun m!6120038 () Bool)

(assert (=> b!5072907 m!6120038))

(assert (=> b!5072526 d!1637697))

(assert (=> b!5072402 d!1637677))

(assert (=> b!5072402 d!1637679))

(declare-fun b!5072909 () Bool)

(declare-fun res!2159886 () Bool)

(declare-fun e!3165170 () Bool)

(assert (=> b!5072909 (=> (not res!2159886) (not e!3165170))))

(assert (=> b!5072909 (= res!2159886 (isBalanced!4434 (left!42828 (right!43158 ys!41))))))

(declare-fun b!5072910 () Bool)

(declare-fun res!2159889 () Bool)

(assert (=> b!5072910 (=> (not res!2159889) (not e!3165170))))

(assert (=> b!5072910 (= res!2159889 (<= (- (height!2149 (left!42828 (right!43158 ys!41))) (height!2149 (right!43158 (right!43158 ys!41)))) 1))))

(declare-fun b!5072911 () Bool)

(declare-fun res!2159888 () Bool)

(assert (=> b!5072911 (=> (not res!2159888) (not e!3165170))))

(assert (=> b!5072911 (= res!2159888 (not (isEmpty!31647 (left!42828 (right!43158 ys!41)))))))

(declare-fun b!5072912 () Bool)

(declare-fun e!3165169 () Bool)

(assert (=> b!5072912 (= e!3165169 e!3165170)))

(declare-fun res!2159887 () Bool)

(assert (=> b!5072912 (=> (not res!2159887) (not e!3165170))))

(assert (=> b!5072912 (= res!2159887 (<= (- 1) (- (height!2149 (left!42828 (right!43158 ys!41))) (height!2149 (right!43158 (right!43158 ys!41))))))))

(declare-fun b!5072913 () Bool)

(assert (=> b!5072913 (= e!3165170 (not (isEmpty!31647 (right!43158 (right!43158 ys!41)))))))

(declare-fun d!1637699 () Bool)

(declare-fun res!2159885 () Bool)

(assert (=> d!1637699 (=> res!2159885 e!3165169)))

(assert (=> d!1637699 (= res!2159885 (not ((_ is Node!15572) (right!43158 ys!41))))))

(assert (=> d!1637699 (= (isBalanced!4434 (right!43158 ys!41)) e!3165169)))

(declare-fun b!5072908 () Bool)

(declare-fun res!2159884 () Bool)

(assert (=> b!5072908 (=> (not res!2159884) (not e!3165170))))

(assert (=> b!5072908 (= res!2159884 (isBalanced!4434 (right!43158 (right!43158 ys!41))))))

(assert (= (and d!1637699 (not res!2159885)) b!5072912))

(assert (= (and b!5072912 res!2159887) b!5072910))

(assert (= (and b!5072910 res!2159889) b!5072909))

(assert (= (and b!5072909 res!2159886) b!5072908))

(assert (= (and b!5072908 res!2159884) b!5072911))

(assert (= (and b!5072911 res!2159888) b!5072913))

(declare-fun m!6120048 () Bool)

(assert (=> b!5072909 m!6120048))

(declare-fun m!6120050 () Bool)

(assert (=> b!5072908 m!6120050))

(assert (=> b!5072910 m!6120016))

(assert (=> b!5072910 m!6120018))

(declare-fun m!6120052 () Bool)

(assert (=> b!5072911 m!6120052))

(declare-fun m!6120054 () Bool)

(assert (=> b!5072913 m!6120054))

(assert (=> b!5072912 m!6120016))

(assert (=> b!5072912 m!6120018))

(assert (=> b!5072485 d!1637699))

(declare-fun d!1637703 () Bool)

(declare-fun c!871037 () Bool)

(assert (=> d!1637703 (= c!871037 ((_ is Node!15572) (left!42828 (left!42828 err!4609))))))

(declare-fun e!3165172 () Bool)

(assert (=> d!1637703 (= (inv!77600 (left!42828 (left!42828 err!4609))) e!3165172)))

(declare-fun b!5072916 () Bool)

(assert (=> b!5072916 (= e!3165172 (inv!77601 (left!42828 (left!42828 err!4609))))))

(declare-fun b!5072917 () Bool)

(declare-fun e!3165173 () Bool)

(assert (=> b!5072917 (= e!3165172 e!3165173)))

(declare-fun res!2159890 () Bool)

(assert (=> b!5072917 (= res!2159890 (not ((_ is Leaf!25863) (left!42828 (left!42828 err!4609)))))))

(assert (=> b!5072917 (=> res!2159890 e!3165173)))

(declare-fun b!5072918 () Bool)

(assert (=> b!5072918 (= e!3165173 (inv!77603 (left!42828 (left!42828 err!4609))))))

(assert (= (and d!1637703 c!871037) b!5072916))

(assert (= (and d!1637703 (not c!871037)) b!5072917))

(assert (= (and b!5072917 (not res!2159890)) b!5072918))

(declare-fun m!6120058 () Bool)

(assert (=> b!5072916 m!6120058))

(declare-fun m!6120060 () Bool)

(assert (=> b!5072918 m!6120060))

(assert (=> b!5072542 d!1637703))

(declare-fun d!1637707 () Bool)

(declare-fun c!871039 () Bool)

(assert (=> d!1637707 (= c!871039 ((_ is Node!15572) (right!43158 (left!42828 err!4609))))))

(declare-fun e!3165176 () Bool)

(assert (=> d!1637707 (= (inv!77600 (right!43158 (left!42828 err!4609))) e!3165176)))

(declare-fun b!5072923 () Bool)

(assert (=> b!5072923 (= e!3165176 (inv!77601 (right!43158 (left!42828 err!4609))))))

(declare-fun b!5072924 () Bool)

(declare-fun e!3165177 () Bool)

(assert (=> b!5072924 (= e!3165176 e!3165177)))

(declare-fun res!2159893 () Bool)

(assert (=> b!5072924 (= res!2159893 (not ((_ is Leaf!25863) (right!43158 (left!42828 err!4609)))))))

(assert (=> b!5072924 (=> res!2159893 e!3165177)))

(declare-fun b!5072925 () Bool)

(assert (=> b!5072925 (= e!3165177 (inv!77603 (right!43158 (left!42828 err!4609))))))

(assert (= (and d!1637707 c!871039) b!5072923))

(assert (= (and d!1637707 (not c!871039)) b!5072924))

(assert (= (and b!5072924 (not res!2159893)) b!5072925))

(declare-fun m!6120066 () Bool)

(assert (=> b!5072923 m!6120066))

(declare-fun m!6120068 () Bool)

(assert (=> b!5072925 m!6120068))

(assert (=> b!5072542 d!1637707))

(assert (=> b!5072487 d!1637545))

(assert (=> b!5072487 d!1637547))

(declare-fun d!1637709 () Bool)

(declare-fun res!2159894 () Bool)

(declare-fun e!3165178 () Bool)

(assert (=> d!1637709 (=> (not res!2159894) (not e!3165178))))

(assert (=> d!1637709 (= res!2159894 (<= (size!39091 (list!19006 (xs!18930 (right!43158 ys!41)))) 512))))

(assert (=> d!1637709 (= (inv!77603 (right!43158 ys!41)) e!3165178)))

(declare-fun b!5072926 () Bool)

(declare-fun res!2159895 () Bool)

(assert (=> b!5072926 (=> (not res!2159895) (not e!3165178))))

(assert (=> b!5072926 (= res!2159895 (= (csize!31375 (right!43158 ys!41)) (size!39091 (list!19006 (xs!18930 (right!43158 ys!41))))))))

(declare-fun b!5072927 () Bool)

(assert (=> b!5072927 (= e!3165178 (and (> (csize!31375 (right!43158 ys!41)) 0) (<= (csize!31375 (right!43158 ys!41)) 512)))))

(assert (= (and d!1637709 res!2159894) b!5072926))

(assert (= (and b!5072926 res!2159895) b!5072927))

(assert (=> d!1637709 m!6119570))

(assert (=> d!1637709 m!6119570))

(declare-fun m!6120080 () Bool)

(assert (=> d!1637709 m!6120080))

(assert (=> b!5072926 m!6119570))

(assert (=> b!5072926 m!6119570))

(assert (=> b!5072926 m!6120080))

(assert (=> b!5072496 d!1637709))

(declare-fun d!1637713 () Bool)

(declare-fun lt!2089785 () Bool)

(assert (=> d!1637713 (= lt!2089785 (isEmpty!31648 (list!19005 (left!42828 ys!41))))))

(assert (=> d!1637713 (= lt!2089785 (= (size!39092 (left!42828 ys!41)) 0))))

(assert (=> d!1637713 (= (isEmpty!31647 (left!42828 ys!41)) lt!2089785)))

(declare-fun bs!1190245 () Bool)

(assert (= bs!1190245 d!1637713))

(assert (=> bs!1190245 m!6119068))

(assert (=> bs!1190245 m!6119068))

(declare-fun m!6120082 () Bool)

(assert (=> bs!1190245 m!6120082))

(assert (=> bs!1190245 m!6119774))

(assert (=> b!5072488 d!1637713))

(declare-fun b!5072935 () Bool)

(declare-fun e!3165182 () List!58566)

(assert (=> b!5072935 (= e!3165182 (Cons!58442 (h!64890 (t!371335 (list!19005 xs!286))) (++!12795 (t!371335 (t!371335 (list!19005 xs!286))) (list!19005 ys!41))))))

(declare-fun d!1637715 () Bool)

(declare-fun e!3165181 () Bool)

(assert (=> d!1637715 e!3165181))

(declare-fun res!2159902 () Bool)

(assert (=> d!1637715 (=> (not res!2159902) (not e!3165181))))

(declare-fun lt!2089786 () List!58566)

(assert (=> d!1637715 (= res!2159902 (= (content!10421 lt!2089786) ((_ map or) (content!10421 (t!371335 (list!19005 xs!286))) (content!10421 (list!19005 ys!41)))))))

(assert (=> d!1637715 (= lt!2089786 e!3165182)))

(declare-fun c!871040 () Bool)

(assert (=> d!1637715 (= c!871040 ((_ is Nil!58442) (t!371335 (list!19005 xs!286))))))

(assert (=> d!1637715 (= (++!12795 (t!371335 (list!19005 xs!286)) (list!19005 ys!41)) lt!2089786)))

(declare-fun b!5072937 () Bool)

(assert (=> b!5072937 (= e!3165181 (or (not (= (list!19005 ys!41) Nil!58442)) (= lt!2089786 (t!371335 (list!19005 xs!286)))))))

(declare-fun b!5072934 () Bool)

(assert (=> b!5072934 (= e!3165182 (list!19005 ys!41))))

(declare-fun b!5072936 () Bool)

(declare-fun res!2159903 () Bool)

(assert (=> b!5072936 (=> (not res!2159903) (not e!3165181))))

(assert (=> b!5072936 (= res!2159903 (= (size!39091 lt!2089786) (+ (size!39091 (t!371335 (list!19005 xs!286))) (size!39091 (list!19005 ys!41)))))))

(assert (= (and d!1637715 c!871040) b!5072934))

(assert (= (and d!1637715 (not c!871040)) b!5072935))

(assert (= (and d!1637715 res!2159902) b!5072936))

(assert (= (and b!5072936 res!2159903) b!5072937))

(assert (=> b!5072935 m!6118972))

(declare-fun m!6120092 () Bool)

(assert (=> b!5072935 m!6120092))

(declare-fun m!6120094 () Bool)

(assert (=> d!1637715 m!6120094))

(assert (=> d!1637715 m!6119910))

(assert (=> d!1637715 m!6118972))

(assert (=> d!1637715 m!6119050))

(declare-fun m!6120100 () Bool)

(assert (=> b!5072936 m!6120100))

(assert (=> b!5072936 m!6119634))

(assert (=> b!5072936 m!6118972))

(assert (=> b!5072936 m!6119056))

(assert (=> b!5072316 d!1637715))

(declare-fun d!1637721 () Bool)

(declare-fun res!2159906 () Bool)

(declare-fun e!3165187 () Bool)

(assert (=> d!1637721 (=> (not res!2159906) (not e!3165187))))

(assert (=> d!1637721 (= res!2159906 (<= (size!39091 (list!19006 (xs!18930 (left!42828 xs!286)))) 512))))

(assert (=> d!1637721 (= (inv!77603 (left!42828 xs!286)) e!3165187)))

(declare-fun b!5072944 () Bool)

(declare-fun res!2159907 () Bool)

(assert (=> b!5072944 (=> (not res!2159907) (not e!3165187))))

(assert (=> b!5072944 (= res!2159907 (= (csize!31375 (left!42828 xs!286)) (size!39091 (list!19006 (xs!18930 (left!42828 xs!286))))))))

(declare-fun b!5072945 () Bool)

(assert (=> b!5072945 (= e!3165187 (and (> (csize!31375 (left!42828 xs!286)) 0) (<= (csize!31375 (left!42828 xs!286)) 512)))))

(assert (= (and d!1637721 res!2159906) b!5072944))

(assert (= (and b!5072944 res!2159907) b!5072945))

(assert (=> d!1637721 m!6119712))

(assert (=> d!1637721 m!6119712))

(declare-fun m!6120106 () Bool)

(assert (=> d!1637721 m!6120106))

(assert (=> b!5072944 m!6119712))

(assert (=> b!5072944 m!6119712))

(assert (=> b!5072944 m!6120106))

(assert (=> b!5072282 d!1637721))

(declare-fun b!5072950 () Bool)

(declare-fun e!3165190 () List!58566)

(assert (=> b!5072950 (= e!3165190 (Cons!58442 (h!64890 (list!19005 (left!42828 lt!2089724))) (++!12795 (t!371335 (list!19005 (left!42828 lt!2089724))) (list!19005 (right!43158 lt!2089724)))))))

(declare-fun d!1637725 () Bool)

(declare-fun e!3165189 () Bool)

(assert (=> d!1637725 e!3165189))

(declare-fun res!2159911 () Bool)

(assert (=> d!1637725 (=> (not res!2159911) (not e!3165189))))

(declare-fun lt!2089787 () List!58566)

(assert (=> d!1637725 (= res!2159911 (= (content!10421 lt!2089787) ((_ map or) (content!10421 (list!19005 (left!42828 lt!2089724))) (content!10421 (list!19005 (right!43158 lt!2089724))))))))

(assert (=> d!1637725 (= lt!2089787 e!3165190)))

(declare-fun c!871043 () Bool)

(assert (=> d!1637725 (= c!871043 ((_ is Nil!58442) (list!19005 (left!42828 lt!2089724))))))

(assert (=> d!1637725 (= (++!12795 (list!19005 (left!42828 lt!2089724)) (list!19005 (right!43158 lt!2089724))) lt!2089787)))

(declare-fun b!5072952 () Bool)

(assert (=> b!5072952 (= e!3165189 (or (not (= (list!19005 (right!43158 lt!2089724)) Nil!58442)) (= lt!2089787 (list!19005 (left!42828 lt!2089724)))))))

(declare-fun b!5072949 () Bool)

(assert (=> b!5072949 (= e!3165190 (list!19005 (right!43158 lt!2089724)))))

(declare-fun b!5072951 () Bool)

(declare-fun res!2159912 () Bool)

(assert (=> b!5072951 (=> (not res!2159912) (not e!3165189))))

(assert (=> b!5072951 (= res!2159912 (= (size!39091 lt!2089787) (+ (size!39091 (list!19005 (left!42828 lt!2089724))) (size!39091 (list!19005 (right!43158 lt!2089724))))))))

(assert (= (and d!1637725 c!871043) b!5072949))

(assert (= (and d!1637725 (not c!871043)) b!5072950))

(assert (= (and d!1637725 res!2159911) b!5072951))

(assert (= (and b!5072951 res!2159912) b!5072952))

(assert (=> b!5072950 m!6119008))

(declare-fun m!6120110 () Bool)

(assert (=> b!5072950 m!6120110))

(declare-fun m!6120112 () Bool)

(assert (=> d!1637725 m!6120112))

(assert (=> d!1637725 m!6119006))

(declare-fun m!6120114 () Bool)

(assert (=> d!1637725 m!6120114))

(assert (=> d!1637725 m!6119008))

(declare-fun m!6120116 () Bool)

(assert (=> d!1637725 m!6120116))

(declare-fun m!6120120 () Bool)

(assert (=> b!5072951 m!6120120))

(assert (=> b!5072951 m!6119006))

(declare-fun m!6120124 () Bool)

(assert (=> b!5072951 m!6120124))

(assert (=> b!5072951 m!6119008))

(declare-fun m!6120126 () Bool)

(assert (=> b!5072951 m!6120126))

(assert (=> b!5072297 d!1637725))

(declare-fun b!5072961 () Bool)

(declare-fun e!3165196 () List!58566)

(assert (=> b!5072961 (= e!3165196 (list!19006 (xs!18930 (left!42828 lt!2089724))))))

(declare-fun b!5072962 () Bool)

(assert (=> b!5072962 (= e!3165196 (++!12795 (list!19005 (left!42828 (left!42828 lt!2089724))) (list!19005 (right!43158 (left!42828 lt!2089724)))))))

(declare-fun d!1637731 () Bool)

(declare-fun c!871046 () Bool)

(assert (=> d!1637731 (= c!871046 ((_ is Empty!15572) (left!42828 lt!2089724)))))

(declare-fun e!3165195 () List!58566)

(assert (=> d!1637731 (= (list!19005 (left!42828 lt!2089724)) e!3165195)))

(declare-fun b!5072959 () Bool)

(assert (=> b!5072959 (= e!3165195 Nil!58442)))

(declare-fun b!5072960 () Bool)

(assert (=> b!5072960 (= e!3165195 e!3165196)))

(declare-fun c!871047 () Bool)

(assert (=> b!5072960 (= c!871047 ((_ is Leaf!25863) (left!42828 lt!2089724)))))

(assert (= (and d!1637731 c!871046) b!5072959))

(assert (= (and d!1637731 (not c!871046)) b!5072960))

(assert (= (and b!5072960 c!871047) b!5072961))

(assert (= (and b!5072960 (not c!871047)) b!5072962))

(declare-fun m!6120132 () Bool)

(assert (=> b!5072961 m!6120132))

(declare-fun m!6120134 () Bool)

(assert (=> b!5072962 m!6120134))

(declare-fun m!6120136 () Bool)

(assert (=> b!5072962 m!6120136))

(assert (=> b!5072962 m!6120134))

(assert (=> b!5072962 m!6120136))

(declare-fun m!6120138 () Bool)

(assert (=> b!5072962 m!6120138))

(assert (=> b!5072297 d!1637731))

(declare-fun b!5072965 () Bool)

(declare-fun e!3165198 () List!58566)

(assert (=> b!5072965 (= e!3165198 (list!19006 (xs!18930 (right!43158 lt!2089724))))))

(declare-fun b!5072966 () Bool)

(assert (=> b!5072966 (= e!3165198 (++!12795 (list!19005 (left!42828 (right!43158 lt!2089724))) (list!19005 (right!43158 (right!43158 lt!2089724)))))))

(declare-fun d!1637735 () Bool)

(declare-fun c!871048 () Bool)

(assert (=> d!1637735 (= c!871048 ((_ is Empty!15572) (right!43158 lt!2089724)))))

(declare-fun e!3165197 () List!58566)

(assert (=> d!1637735 (= (list!19005 (right!43158 lt!2089724)) e!3165197)))

(declare-fun b!5072963 () Bool)

(assert (=> b!5072963 (= e!3165197 Nil!58442)))

(declare-fun b!5072964 () Bool)

(assert (=> b!5072964 (= e!3165197 e!3165198)))

(declare-fun c!871049 () Bool)

(assert (=> b!5072964 (= c!871049 ((_ is Leaf!25863) (right!43158 lt!2089724)))))

(assert (= (and d!1637735 c!871048) b!5072963))

(assert (= (and d!1637735 (not c!871048)) b!5072964))

(assert (= (and b!5072964 c!871049) b!5072965))

(assert (= (and b!5072964 (not c!871049)) b!5072966))

(declare-fun m!6120140 () Bool)

(assert (=> b!5072965 m!6120140))

(declare-fun m!6120142 () Bool)

(assert (=> b!5072966 m!6120142))

(declare-fun m!6120144 () Bool)

(assert (=> b!5072966 m!6120144))

(assert (=> b!5072966 m!6120142))

(assert (=> b!5072966 m!6120144))

(declare-fun m!6120146 () Bool)

(assert (=> b!5072966 m!6120146))

(assert (=> b!5072297 d!1637735))

(declare-fun d!1637737 () Bool)

(declare-fun lt!2089788 () Bool)

(assert (=> d!1637737 (= lt!2089788 (isEmpty!31648 (list!19005 (right!43158 ys!41))))))

(assert (=> d!1637737 (= lt!2089788 (= (size!39092 (right!43158 ys!41)) 0))))

(assert (=> d!1637737 (= (isEmpty!31647 (right!43158 ys!41)) lt!2089788)))

(declare-fun bs!1190246 () Bool)

(assert (= bs!1190246 d!1637737))

(assert (=> bs!1190246 m!6119070))

(assert (=> bs!1190246 m!6119070))

(declare-fun m!6120148 () Bool)

(assert (=> bs!1190246 m!6120148))

(assert (=> bs!1190246 m!6119776))

(assert (=> b!5072490 d!1637737))

(declare-fun d!1637739 () Bool)

(declare-fun c!871050 () Bool)

(assert (=> d!1637739 (= c!871050 ((_ is Node!15572) (left!42828 (left!42828 xs!286))))))

(declare-fun e!3165199 () Bool)

(assert (=> d!1637739 (= (inv!77600 (left!42828 (left!42828 xs!286))) e!3165199)))

(declare-fun b!5072967 () Bool)

(assert (=> b!5072967 (= e!3165199 (inv!77601 (left!42828 (left!42828 xs!286))))))

(declare-fun b!5072968 () Bool)

(declare-fun e!3165200 () Bool)

(assert (=> b!5072968 (= e!3165199 e!3165200)))

(declare-fun res!2159915 () Bool)

(assert (=> b!5072968 (= res!2159915 (not ((_ is Leaf!25863) (left!42828 (left!42828 xs!286)))))))

(assert (=> b!5072968 (=> res!2159915 e!3165200)))

(declare-fun b!5072969 () Bool)

(assert (=> b!5072969 (= e!3165200 (inv!77603 (left!42828 (left!42828 xs!286))))))

(assert (= (and d!1637739 c!871050) b!5072967))

(assert (= (and d!1637739 (not c!871050)) b!5072968))

(assert (= (and b!5072968 (not res!2159915)) b!5072969))

(declare-fun m!6120150 () Bool)

(assert (=> b!5072967 m!6120150))

(declare-fun m!6120152 () Bool)

(assert (=> b!5072969 m!6120152))

(assert (=> b!5072523 d!1637739))

(declare-fun d!1637741 () Bool)

(declare-fun c!871051 () Bool)

(assert (=> d!1637741 (= c!871051 ((_ is Node!15572) (right!43158 (left!42828 xs!286))))))

(declare-fun e!3165201 () Bool)

(assert (=> d!1637741 (= (inv!77600 (right!43158 (left!42828 xs!286))) e!3165201)))

(declare-fun b!5072970 () Bool)

(assert (=> b!5072970 (= e!3165201 (inv!77601 (right!43158 (left!42828 xs!286))))))

(declare-fun b!5072971 () Bool)

(declare-fun e!3165202 () Bool)

(assert (=> b!5072971 (= e!3165201 e!3165202)))

(declare-fun res!2159916 () Bool)

(assert (=> b!5072971 (= res!2159916 (not ((_ is Leaf!25863) (right!43158 (left!42828 xs!286)))))))

(assert (=> b!5072971 (=> res!2159916 e!3165202)))

(declare-fun b!5072972 () Bool)

(assert (=> b!5072972 (= e!3165202 (inv!77603 (right!43158 (left!42828 xs!286))))))

(assert (= (and d!1637741 c!871051) b!5072970))

(assert (= (and d!1637741 (not c!871051)) b!5072971))

(assert (= (and b!5072971 (not res!2159916)) b!5072972))

(declare-fun m!6120154 () Bool)

(assert (=> b!5072970 m!6120154))

(declare-fun m!6120156 () Bool)

(assert (=> b!5072972 m!6120156))

(assert (=> b!5072523 d!1637741))

(declare-fun d!1637743 () Bool)

(declare-fun c!871053 () Bool)

(assert (=> d!1637743 (= c!871053 ((_ is Node!15572) (left!42828 (right!43158 ys!41))))))

(declare-fun e!3165204 () Bool)

(assert (=> d!1637743 (= (inv!77600 (left!42828 (right!43158 ys!41))) e!3165204)))

(declare-fun b!5072977 () Bool)

(assert (=> b!5072977 (= e!3165204 (inv!77601 (left!42828 (right!43158 ys!41))))))

(declare-fun b!5072978 () Bool)

(declare-fun e!3165206 () Bool)

(assert (=> b!5072978 (= e!3165204 e!3165206)))

(declare-fun res!2159917 () Bool)

(assert (=> b!5072978 (= res!2159917 (not ((_ is Leaf!25863) (left!42828 (right!43158 ys!41)))))))

(assert (=> b!5072978 (=> res!2159917 e!3165206)))

(declare-fun b!5072979 () Bool)

(assert (=> b!5072979 (= e!3165206 (inv!77603 (left!42828 (right!43158 ys!41))))))

(assert (= (and d!1637743 c!871053) b!5072977))

(assert (= (and d!1637743 (not c!871053)) b!5072978))

(assert (= (and b!5072978 (not res!2159917)) b!5072979))

(declare-fun m!6120158 () Bool)

(assert (=> b!5072977 m!6120158))

(declare-fun m!6120160 () Bool)

(assert (=> b!5072979 m!6120160))

(assert (=> b!5072539 d!1637743))

(declare-fun d!1637745 () Bool)

(declare-fun c!871055 () Bool)

(assert (=> d!1637745 (= c!871055 ((_ is Node!15572) (right!43158 (right!43158 ys!41))))))

(declare-fun e!3165207 () Bool)

(assert (=> d!1637745 (= (inv!77600 (right!43158 (right!43158 ys!41))) e!3165207)))

(declare-fun b!5072980 () Bool)

(assert (=> b!5072980 (= e!3165207 (inv!77601 (right!43158 (right!43158 ys!41))))))

(declare-fun b!5072981 () Bool)

(declare-fun e!3165208 () Bool)

(assert (=> b!5072981 (= e!3165207 e!3165208)))

(declare-fun res!2159918 () Bool)

(assert (=> b!5072981 (= res!2159918 (not ((_ is Leaf!25863) (right!43158 (right!43158 ys!41)))))))

(assert (=> b!5072981 (=> res!2159918 e!3165208)))

(declare-fun b!5072982 () Bool)

(assert (=> b!5072982 (= e!3165208 (inv!77603 (right!43158 (right!43158 ys!41))))))

(assert (= (and d!1637745 c!871055) b!5072980))

(assert (= (and d!1637745 (not c!871055)) b!5072981))

(assert (= (and b!5072981 (not res!2159918)) b!5072982))

(declare-fun m!6120162 () Bool)

(assert (=> b!5072980 m!6120162))

(declare-fun m!6120164 () Bool)

(assert (=> b!5072982 m!6120164))

(assert (=> b!5072539 d!1637745))

(assert (=> b!5072473 d!1637349))

(assert (=> b!5072473 d!1637581))

(assert (=> b!5072473 d!1637443))

(declare-fun bm!353397 () Bool)

(declare-fun call!353405 () List!58566)

(assert (=> bm!353397 (= call!353405 (++!12795 (list!19005 (left!42828 xs!286)) (list!19005 (left!42828 (right!43158 xs!286)))))))

(declare-fun bm!353398 () Bool)

(declare-fun call!353402 () List!58566)

(declare-fun call!353403 () List!58566)

(assert (=> bm!353398 (= call!353402 (++!12795 (list!19005 (left!42828 xs!286)) call!353403))))

(declare-fun bm!353399 () Bool)

(assert (=> bm!353399 (= call!353403 (++!12795 (list!19005 (left!42828 (right!43158 xs!286))) (++!12795 (list!19005 (right!43158 (right!43158 xs!286))) (list!19005 ys!41))))))

(declare-fun b!5072983 () Bool)

(declare-fun e!3165209 () Bool)

(declare-fun call!353404 () List!58566)

(assert (=> b!5072983 (= e!3165209 (= call!353404 call!353402))))

(declare-fun lt!2089789 () Bool)

(assert (=> b!5072983 (= lt!2089789 (appendAssoc!306 (t!371335 (list!19005 (left!42828 xs!286))) (list!19005 (left!42828 (right!43158 xs!286))) (++!12795 (list!19005 (right!43158 (right!43158 xs!286))) (list!19005 ys!41))))))

(declare-fun bm!353400 () Bool)

(assert (=> bm!353400 (= call!353404 (++!12795 call!353405 (++!12795 (list!19005 (right!43158 (right!43158 xs!286))) (list!19005 ys!41))))))

(declare-fun b!5072984 () Bool)

(assert (=> b!5072984 (= e!3165209 (= call!353404 call!353402))))

(declare-fun d!1637747 () Bool)

(assert (=> d!1637747 e!3165209))

(declare-fun c!871056 () Bool)

(assert (=> d!1637747 (= c!871056 ((_ is Nil!58442) (list!19005 (left!42828 xs!286))))))

(assert (=> d!1637747 (= (appendAssoc!306 (list!19005 (left!42828 xs!286)) (list!19005 (left!42828 (right!43158 xs!286))) (++!12795 (list!19005 (right!43158 (right!43158 xs!286))) (list!19005 ys!41))) true)))

(assert (= (and d!1637747 c!871056) b!5072984))

(assert (= (and d!1637747 (not c!871056)) b!5072983))

(assert (= (or b!5072984 b!5072983) bm!353397))

(assert (= (or b!5072984 b!5072983) bm!353399))

(assert (= (or b!5072984 b!5072983) bm!353398))

(assert (= (or b!5072984 b!5072983) bm!353400))

(assert (=> bm!353398 m!6119060))

(declare-fun m!6120166 () Bool)

(assert (=> bm!353398 m!6120166))

(assert (=> bm!353397 m!6119060))

(assert (=> bm!353397 m!6119228))

(declare-fun m!6120168 () Bool)

(assert (=> bm!353397 m!6120168))

(assert (=> bm!353399 m!6119228))

(assert (=> bm!353399 m!6119238))

(declare-fun m!6120170 () Bool)

(assert (=> bm!353399 m!6120170))

(assert (=> bm!353400 m!6119238))

(declare-fun m!6120172 () Bool)

(assert (=> bm!353400 m!6120172))

(assert (=> b!5072983 m!6119228))

(assert (=> b!5072983 m!6119238))

(declare-fun m!6120174 () Bool)

(assert (=> b!5072983 m!6120174))

(assert (=> b!5072473 d!1637747))

(assert (=> b!5072473 d!1637441))

(declare-fun b!5072986 () Bool)

(declare-fun e!3165211 () List!58566)

(assert (=> b!5072986 (= e!3165211 (Cons!58442 (h!64890 (list!19005 (right!43158 (right!43158 xs!286)))) (++!12795 (t!371335 (list!19005 (right!43158 (right!43158 xs!286)))) (list!19005 ys!41))))))

(declare-fun d!1637749 () Bool)

(declare-fun e!3165210 () Bool)

(assert (=> d!1637749 e!3165210))

(declare-fun res!2159919 () Bool)

(assert (=> d!1637749 (=> (not res!2159919) (not e!3165210))))

(declare-fun lt!2089790 () List!58566)

(assert (=> d!1637749 (= res!2159919 (= (content!10421 lt!2089790) ((_ map or) (content!10421 (list!19005 (right!43158 (right!43158 xs!286)))) (content!10421 (list!19005 ys!41)))))))

(assert (=> d!1637749 (= lt!2089790 e!3165211)))

(declare-fun c!871057 () Bool)

(assert (=> d!1637749 (= c!871057 ((_ is Nil!58442) (list!19005 (right!43158 (right!43158 xs!286)))))))

(assert (=> d!1637749 (= (++!12795 (list!19005 (right!43158 (right!43158 xs!286))) (list!19005 ys!41)) lt!2089790)))

(declare-fun b!5072988 () Bool)

(assert (=> b!5072988 (= e!3165210 (or (not (= (list!19005 ys!41) Nil!58442)) (= lt!2089790 (list!19005 (right!43158 (right!43158 xs!286))))))))

(declare-fun b!5072985 () Bool)

(assert (=> b!5072985 (= e!3165211 (list!19005 ys!41))))

(declare-fun b!5072987 () Bool)

(declare-fun res!2159920 () Bool)

(assert (=> b!5072987 (=> (not res!2159920) (not e!3165210))))

(assert (=> b!5072987 (= res!2159920 (= (size!39091 lt!2089790) (+ (size!39091 (list!19005 (right!43158 (right!43158 xs!286)))) (size!39091 (list!19005 ys!41)))))))

(assert (= (and d!1637749 c!871057) b!5072985))

(assert (= (and d!1637749 (not c!871057)) b!5072986))

(assert (= (and d!1637749 res!2159919) b!5072987))

(assert (= (and b!5072987 res!2159920) b!5072988))

(assert (=> b!5072986 m!6118972))

(declare-fun m!6120176 () Bool)

(assert (=> b!5072986 m!6120176))

(declare-fun m!6120178 () Bool)

(assert (=> d!1637749 m!6120178))

(assert (=> d!1637749 m!6119230))

(declare-fun m!6120180 () Bool)

(assert (=> d!1637749 m!6120180))

(assert (=> d!1637749 m!6118972))

(assert (=> d!1637749 m!6119050))

(declare-fun m!6120182 () Bool)

(assert (=> b!5072987 m!6120182))

(assert (=> b!5072987 m!6119230))

(declare-fun m!6120184 () Bool)

(assert (=> b!5072987 m!6120184))

(assert (=> b!5072987 m!6118972))

(assert (=> b!5072987 m!6119056))

(assert (=> b!5072473 d!1637749))

(declare-fun d!1637751 () Bool)

(declare-fun lt!2089791 () Int)

(assert (=> d!1637751 (>= lt!2089791 0)))

(declare-fun e!3165213 () Int)

(assert (=> d!1637751 (= lt!2089791 e!3165213)))

(declare-fun c!871059 () Bool)

(assert (=> d!1637751 (= c!871059 ((_ is Nil!58442) (innerList!15660 (xs!18930 err!4609))))))

(assert (=> d!1637751 (= (size!39091 (innerList!15660 (xs!18930 err!4609))) lt!2089791)))

(declare-fun b!5072991 () Bool)

(assert (=> b!5072991 (= e!3165213 0)))

(declare-fun b!5072992 () Bool)

(assert (=> b!5072992 (= e!3165213 (+ 1 (size!39091 (t!371335 (innerList!15660 (xs!18930 err!4609))))))))

(assert (= (and d!1637751 c!871059) b!5072991))

(assert (= (and d!1637751 (not c!871059)) b!5072992))

(declare-fun m!6120186 () Bool)

(assert (=> b!5072992 m!6120186))

(assert (=> d!1637351 d!1637751))

(assert (=> b!5072229 d!1637409))

(assert (=> b!5072229 d!1637411))

(assert (=> b!5072231 d!1637419))

(assert (=> b!5072231 d!1637421))

(declare-fun b!5072993 () Bool)

(declare-fun e!3165214 () Bool)

(declare-fun tp!1415862 () Bool)

(assert (=> b!5072993 (= e!3165214 (and tp_is_empty!37067 tp!1415862))))

(assert (=> b!5072544 (= tp!1415858 e!3165214)))

(assert (= (and b!5072544 ((_ is Cons!58442) (innerList!15660 (xs!18930 (left!42828 err!4609))))) b!5072993))

(declare-fun b!5072996 () Bool)

(declare-fun e!3165216 () Bool)

(declare-fun tp!1415863 () Bool)

(assert (=> b!5072996 (= e!3165216 (and tp_is_empty!37067 tp!1415863))))

(assert (=> b!5072533 (= tp!1415847 e!3165216)))

(assert (= (and b!5072533 ((_ is Cons!58442) (t!371335 (innerList!15660 (xs!18930 ys!41))))) b!5072996))

(declare-fun tp!1415864 () Bool)

(declare-fun tp!1415865 () Bool)

(declare-fun e!3165218 () Bool)

(declare-fun b!5072997 () Bool)

(assert (=> b!5072997 (= e!3165218 (and (inv!77600 (left!42828 (left!42828 (right!43158 err!4609)))) tp!1415864 (inv!77600 (right!43158 (left!42828 (right!43158 err!4609)))) tp!1415865))))

(declare-fun b!5072999 () Bool)

(declare-fun e!3165217 () Bool)

(declare-fun tp!1415866 () Bool)

(assert (=> b!5072999 (= e!3165217 tp!1415866)))

(declare-fun b!5072998 () Bool)

(assert (=> b!5072998 (= e!3165218 (and (inv!77599 (xs!18930 (left!42828 (right!43158 err!4609)))) e!3165217))))

(assert (=> b!5072545 (= tp!1415859 (and (inv!77600 (left!42828 (right!43158 err!4609))) e!3165218))))

(assert (= (and b!5072545 ((_ is Node!15572) (left!42828 (right!43158 err!4609)))) b!5072997))

(assert (= b!5072998 b!5072999))

(assert (= (and b!5072545 ((_ is Leaf!25863) (left!42828 (right!43158 err!4609)))) b!5072998))

(declare-fun m!6120196 () Bool)

(assert (=> b!5072997 m!6120196))

(declare-fun m!6120198 () Bool)

(assert (=> b!5072997 m!6120198))

(declare-fun m!6120200 () Bool)

(assert (=> b!5072998 m!6120200))

(assert (=> b!5072545 m!6119328))

(declare-fun b!5073002 () Bool)

(declare-fun tp!1415868 () Bool)

(declare-fun tp!1415867 () Bool)

(declare-fun e!3165221 () Bool)

(assert (=> b!5073002 (= e!3165221 (and (inv!77600 (left!42828 (right!43158 (right!43158 err!4609)))) tp!1415867 (inv!77600 (right!43158 (right!43158 (right!43158 err!4609)))) tp!1415868))))

(declare-fun b!5073004 () Bool)

(declare-fun e!3165220 () Bool)

(declare-fun tp!1415869 () Bool)

(assert (=> b!5073004 (= e!3165220 tp!1415869)))

(declare-fun b!5073003 () Bool)

(assert (=> b!5073003 (= e!3165221 (and (inv!77599 (xs!18930 (right!43158 (right!43158 err!4609)))) e!3165220))))

(assert (=> b!5072545 (= tp!1415860 (and (inv!77600 (right!43158 (right!43158 err!4609))) e!3165221))))

(assert (= (and b!5072545 ((_ is Node!15572) (right!43158 (right!43158 err!4609)))) b!5073002))

(assert (= b!5073003 b!5073004))

(assert (= (and b!5072545 ((_ is Leaf!25863) (right!43158 (right!43158 err!4609)))) b!5073003))

(declare-fun m!6120206 () Bool)

(assert (=> b!5073002 m!6120206))

(declare-fun m!6120208 () Bool)

(assert (=> b!5073002 m!6120208))

(declare-fun m!6120210 () Bool)

(assert (=> b!5073003 m!6120210))

(assert (=> b!5072545 m!6119330))

(declare-fun b!5073007 () Bool)

(declare-fun e!3165224 () Bool)

(declare-fun tp!1415870 () Bool)

(declare-fun tp!1415871 () Bool)

(assert (=> b!5073007 (= e!3165224 (and (inv!77600 (left!42828 (left!42828 (left!42828 ys!41)))) tp!1415870 (inv!77600 (right!43158 (left!42828 (left!42828 ys!41)))) tp!1415871))))

(declare-fun b!5073009 () Bool)

(declare-fun e!3165223 () Bool)

(declare-fun tp!1415872 () Bool)

(assert (=> b!5073009 (= e!3165223 tp!1415872)))

(declare-fun b!5073008 () Bool)

(assert (=> b!5073008 (= e!3165224 (and (inv!77599 (xs!18930 (left!42828 (left!42828 ys!41)))) e!3165223))))

(assert (=> b!5072536 (= tp!1415850 (and (inv!77600 (left!42828 (left!42828 ys!41))) e!3165224))))

(assert (= (and b!5072536 ((_ is Node!15572) (left!42828 (left!42828 ys!41)))) b!5073007))

(assert (= b!5073008 b!5073009))

(assert (= (and b!5072536 ((_ is Leaf!25863) (left!42828 (left!42828 ys!41)))) b!5073008))

(declare-fun m!6120212 () Bool)

(assert (=> b!5073007 m!6120212))

(declare-fun m!6120214 () Bool)

(assert (=> b!5073007 m!6120214))

(declare-fun m!6120216 () Bool)

(assert (=> b!5073008 m!6120216))

(assert (=> b!5072536 m!6119310))

(declare-fun tp!1415874 () Bool)

(declare-fun b!5073010 () Bool)

(declare-fun e!3165226 () Bool)

(declare-fun tp!1415873 () Bool)

(assert (=> b!5073010 (= e!3165226 (and (inv!77600 (left!42828 (right!43158 (left!42828 ys!41)))) tp!1415873 (inv!77600 (right!43158 (right!43158 (left!42828 ys!41)))) tp!1415874))))

(declare-fun b!5073012 () Bool)

(declare-fun e!3165225 () Bool)

(declare-fun tp!1415875 () Bool)

(assert (=> b!5073012 (= e!3165225 tp!1415875)))

(declare-fun b!5073011 () Bool)

(assert (=> b!5073011 (= e!3165226 (and (inv!77599 (xs!18930 (right!43158 (left!42828 ys!41)))) e!3165225))))

(assert (=> b!5072536 (= tp!1415851 (and (inv!77600 (right!43158 (left!42828 ys!41))) e!3165226))))

(assert (= (and b!5072536 ((_ is Node!15572) (right!43158 (left!42828 ys!41)))) b!5073010))

(assert (= b!5073011 b!5073012))

(assert (= (and b!5072536 ((_ is Leaf!25863) (right!43158 (left!42828 ys!41)))) b!5073011))

(declare-fun m!6120220 () Bool)

(assert (=> b!5073010 m!6120220))

(declare-fun m!6120222 () Bool)

(assert (=> b!5073010 m!6120222))

(declare-fun m!6120224 () Bool)

(assert (=> b!5073011 m!6120224))

(assert (=> b!5072536 m!6119312))

(declare-fun b!5073015 () Bool)

(declare-fun e!3165228 () Bool)

(declare-fun tp!1415876 () Bool)

(assert (=> b!5073015 (= e!3165228 (and tp_is_empty!37067 tp!1415876))))

(assert (=> b!5072534 (= tp!1415848 e!3165228)))

(assert (= (and b!5072534 ((_ is Cons!58442) (t!371335 (innerList!15660 (xs!18930 err!4609))))) b!5073015))

(declare-fun b!5073016 () Bool)

(declare-fun e!3165229 () Bool)

(declare-fun tp!1415877 () Bool)

(assert (=> b!5073016 (= e!3165229 (and tp_is_empty!37067 tp!1415877))))

(assert (=> b!5072547 (= tp!1415861 e!3165229)))

(assert (= (and b!5072547 ((_ is Cons!58442) (innerList!15660 (xs!18930 (right!43158 err!4609))))) b!5073016))

(declare-fun b!5073017 () Bool)

(declare-fun tp!1415878 () Bool)

(declare-fun tp!1415879 () Bool)

(declare-fun e!3165231 () Bool)

(assert (=> b!5073017 (= e!3165231 (and (inv!77600 (left!42828 (left!42828 (left!42828 xs!286)))) tp!1415878 (inv!77600 (right!43158 (left!42828 (left!42828 xs!286)))) tp!1415879))))

(declare-fun b!5073019 () Bool)

(declare-fun e!3165230 () Bool)

(declare-fun tp!1415880 () Bool)

(assert (=> b!5073019 (= e!3165230 tp!1415880)))

(declare-fun b!5073018 () Bool)

(assert (=> b!5073018 (= e!3165231 (and (inv!77599 (xs!18930 (left!42828 (left!42828 xs!286)))) e!3165230))))

(assert (=> b!5072523 (= tp!1415839 (and (inv!77600 (left!42828 (left!42828 xs!286))) e!3165231))))

(assert (= (and b!5072523 ((_ is Node!15572) (left!42828 (left!42828 xs!286)))) b!5073017))

(assert (= b!5073018 b!5073019))

(assert (= (and b!5072523 ((_ is Leaf!25863) (left!42828 (left!42828 xs!286)))) b!5073018))

(declare-fun m!6120228 () Bool)

(assert (=> b!5073017 m!6120228))

(declare-fun m!6120230 () Bool)

(assert (=> b!5073017 m!6120230))

(declare-fun m!6120232 () Bool)

(assert (=> b!5073018 m!6120232))

(assert (=> b!5072523 m!6119298))

(declare-fun tp!1415881 () Bool)

(declare-fun b!5073024 () Bool)

(declare-fun e!3165235 () Bool)

(declare-fun tp!1415882 () Bool)

(assert (=> b!5073024 (= e!3165235 (and (inv!77600 (left!42828 (right!43158 (left!42828 xs!286)))) tp!1415881 (inv!77600 (right!43158 (right!43158 (left!42828 xs!286)))) tp!1415882))))

(declare-fun b!5073026 () Bool)

(declare-fun e!3165234 () Bool)

(declare-fun tp!1415883 () Bool)

(assert (=> b!5073026 (= e!3165234 tp!1415883)))

(declare-fun b!5073025 () Bool)

(assert (=> b!5073025 (= e!3165235 (and (inv!77599 (xs!18930 (right!43158 (left!42828 xs!286)))) e!3165234))))

(assert (=> b!5072523 (= tp!1415840 (and (inv!77600 (right!43158 (left!42828 xs!286))) e!3165235))))

(assert (= (and b!5072523 ((_ is Node!15572) (right!43158 (left!42828 xs!286)))) b!5073024))

(assert (= b!5073025 b!5073026))

(assert (= (and b!5072523 ((_ is Leaf!25863) (right!43158 (left!42828 xs!286)))) b!5073025))

(declare-fun m!6120234 () Bool)

(assert (=> b!5073024 m!6120234))

(declare-fun m!6120236 () Bool)

(assert (=> b!5073024 m!6120236))

(declare-fun m!6120238 () Bool)

(assert (=> b!5073025 m!6120238))

(assert (=> b!5072523 m!6119300))

(declare-fun b!5073027 () Bool)

(declare-fun e!3165236 () Bool)

(declare-fun tp!1415884 () Bool)

(assert (=> b!5073027 (= e!3165236 (and tp_is_empty!37067 tp!1415884))))

(assert (=> b!5072538 (= tp!1415852 e!3165236)))

(assert (= (and b!5072538 ((_ is Cons!58442) (innerList!15660 (xs!18930 (left!42828 ys!41))))) b!5073027))

(declare-fun e!3165238 () Bool)

(declare-fun tp!1415885 () Bool)

(declare-fun b!5073028 () Bool)

(declare-fun tp!1415886 () Bool)

(assert (=> b!5073028 (= e!3165238 (and (inv!77600 (left!42828 (left!42828 (right!43158 ys!41)))) tp!1415885 (inv!77600 (right!43158 (left!42828 (right!43158 ys!41)))) tp!1415886))))

(declare-fun b!5073030 () Bool)

(declare-fun e!3165237 () Bool)

(declare-fun tp!1415887 () Bool)

(assert (=> b!5073030 (= e!3165237 tp!1415887)))

(declare-fun b!5073029 () Bool)

(assert (=> b!5073029 (= e!3165238 (and (inv!77599 (xs!18930 (left!42828 (right!43158 ys!41)))) e!3165237))))

(assert (=> b!5072539 (= tp!1415853 (and (inv!77600 (left!42828 (right!43158 ys!41))) e!3165238))))

(assert (= (and b!5072539 ((_ is Node!15572) (left!42828 (right!43158 ys!41)))) b!5073028))

(assert (= b!5073029 b!5073030))

(assert (= (and b!5072539 ((_ is Leaf!25863) (left!42828 (right!43158 ys!41)))) b!5073029))

(declare-fun m!6120242 () Bool)

(assert (=> b!5073028 m!6120242))

(declare-fun m!6120244 () Bool)

(assert (=> b!5073028 m!6120244))

(declare-fun m!6120248 () Bool)

(assert (=> b!5073029 m!6120248))

(assert (=> b!5072539 m!6119316))

(declare-fun e!3165240 () Bool)

(declare-fun tp!1415888 () Bool)

(declare-fun tp!1415889 () Bool)

(declare-fun b!5073031 () Bool)

(assert (=> b!5073031 (= e!3165240 (and (inv!77600 (left!42828 (right!43158 (right!43158 ys!41)))) tp!1415888 (inv!77600 (right!43158 (right!43158 (right!43158 ys!41)))) tp!1415889))))

(declare-fun b!5073033 () Bool)

(declare-fun e!3165239 () Bool)

(declare-fun tp!1415890 () Bool)

(assert (=> b!5073033 (= e!3165239 tp!1415890)))

(declare-fun b!5073032 () Bool)

(assert (=> b!5073032 (= e!3165240 (and (inv!77599 (xs!18930 (right!43158 (right!43158 ys!41)))) e!3165239))))

(assert (=> b!5072539 (= tp!1415854 (and (inv!77600 (right!43158 (right!43158 ys!41))) e!3165240))))

(assert (= (and b!5072539 ((_ is Node!15572) (right!43158 (right!43158 ys!41)))) b!5073031))

(assert (= b!5073032 b!5073033))

(assert (= (and b!5072539 ((_ is Leaf!25863) (right!43158 (right!43158 ys!41)))) b!5073032))

(declare-fun m!6120252 () Bool)

(assert (=> b!5073031 m!6120252))

(declare-fun m!6120254 () Bool)

(assert (=> b!5073031 m!6120254))

(declare-fun m!6120258 () Bool)

(assert (=> b!5073032 m!6120258))

(assert (=> b!5072539 m!6119318))

(declare-fun b!5073034 () Bool)

(declare-fun e!3165241 () Bool)

(declare-fun tp!1415891 () Bool)

(assert (=> b!5073034 (= e!3165241 (and tp_is_empty!37067 tp!1415891))))

(assert (=> b!5072525 (= tp!1415841 e!3165241)))

(assert (= (and b!5072525 ((_ is Cons!58442) (innerList!15660 (xs!18930 (left!42828 xs!286))))) b!5073034))

(declare-fun b!5073035 () Bool)

(declare-fun e!3165242 () Bool)

(declare-fun tp!1415892 () Bool)

(assert (=> b!5073035 (= e!3165242 (and tp_is_empty!37067 tp!1415892))))

(assert (=> b!5072535 (= tp!1415849 e!3165242)))

(assert (= (and b!5072535 ((_ is Cons!58442) (t!371335 (innerList!15660 (xs!18930 xs!286))))) b!5073035))

(declare-fun e!3165244 () Bool)

(declare-fun b!5073036 () Bool)

(declare-fun tp!1415894 () Bool)

(declare-fun tp!1415893 () Bool)

(assert (=> b!5073036 (= e!3165244 (and (inv!77600 (left!42828 (left!42828 (right!43158 xs!286)))) tp!1415893 (inv!77600 (right!43158 (left!42828 (right!43158 xs!286)))) tp!1415894))))

(declare-fun b!5073038 () Bool)

(declare-fun e!3165243 () Bool)

(declare-fun tp!1415895 () Bool)

(assert (=> b!5073038 (= e!3165243 tp!1415895)))

(declare-fun b!5073037 () Bool)

(assert (=> b!5073037 (= e!3165244 (and (inv!77599 (xs!18930 (left!42828 (right!43158 xs!286)))) e!3165243))))

(assert (=> b!5072526 (= tp!1415842 (and (inv!77600 (left!42828 (right!43158 xs!286))) e!3165244))))

(assert (= (and b!5072526 ((_ is Node!15572) (left!42828 (right!43158 xs!286)))) b!5073036))

(assert (= b!5073037 b!5073038))

(assert (= (and b!5072526 ((_ is Leaf!25863) (left!42828 (right!43158 xs!286)))) b!5073037))

(declare-fun m!6120264 () Bool)

(assert (=> b!5073036 m!6120264))

(declare-fun m!6120266 () Bool)

(assert (=> b!5073036 m!6120266))

(declare-fun m!6120268 () Bool)

(assert (=> b!5073037 m!6120268))

(assert (=> b!5072526 m!6119304))

(declare-fun tp!1415897 () Bool)

(declare-fun e!3165246 () Bool)

(declare-fun b!5073039 () Bool)

(declare-fun tp!1415896 () Bool)

(assert (=> b!5073039 (= e!3165246 (and (inv!77600 (left!42828 (right!43158 (right!43158 xs!286)))) tp!1415896 (inv!77600 (right!43158 (right!43158 (right!43158 xs!286)))) tp!1415897))))

(declare-fun b!5073041 () Bool)

(declare-fun e!3165245 () Bool)

(declare-fun tp!1415898 () Bool)

(assert (=> b!5073041 (= e!3165245 tp!1415898)))

(declare-fun b!5073040 () Bool)

(assert (=> b!5073040 (= e!3165246 (and (inv!77599 (xs!18930 (right!43158 (right!43158 xs!286)))) e!3165245))))

(assert (=> b!5072526 (= tp!1415843 (and (inv!77600 (right!43158 (right!43158 xs!286))) e!3165246))))

(assert (= (and b!5072526 ((_ is Node!15572) (right!43158 (right!43158 xs!286)))) b!5073039))

(assert (= b!5073040 b!5073041))

(assert (= (and b!5072526 ((_ is Leaf!25863) (right!43158 (right!43158 xs!286)))) b!5073040))

(declare-fun m!6120270 () Bool)

(assert (=> b!5073039 m!6120270))

(declare-fun m!6120272 () Bool)

(assert (=> b!5073039 m!6120272))

(declare-fun m!6120274 () Bool)

(assert (=> b!5073040 m!6120274))

(assert (=> b!5072526 m!6119306))

(declare-fun b!5073048 () Bool)

(declare-fun e!3165249 () Bool)

(declare-fun tp!1415899 () Bool)

(assert (=> b!5073048 (= e!3165249 (and tp_is_empty!37067 tp!1415899))))

(assert (=> b!5072541 (= tp!1415855 e!3165249)))

(assert (= (and b!5072541 ((_ is Cons!58442) (innerList!15660 (xs!18930 (right!43158 ys!41))))) b!5073048))

(declare-fun tp!1415900 () Bool)

(declare-fun tp!1415901 () Bool)

(declare-fun b!5073049 () Bool)

(declare-fun e!3165251 () Bool)

(assert (=> b!5073049 (= e!3165251 (and (inv!77600 (left!42828 (left!42828 (left!42828 err!4609)))) tp!1415900 (inv!77600 (right!43158 (left!42828 (left!42828 err!4609)))) tp!1415901))))

(declare-fun b!5073051 () Bool)

(declare-fun e!3165250 () Bool)

(declare-fun tp!1415902 () Bool)

(assert (=> b!5073051 (= e!3165250 tp!1415902)))

(declare-fun b!5073050 () Bool)

(assert (=> b!5073050 (= e!3165251 (and (inv!77599 (xs!18930 (left!42828 (left!42828 err!4609)))) e!3165250))))

(assert (=> b!5072542 (= tp!1415856 (and (inv!77600 (left!42828 (left!42828 err!4609))) e!3165251))))

(assert (= (and b!5072542 ((_ is Node!15572) (left!42828 (left!42828 err!4609)))) b!5073049))

(assert (= b!5073050 b!5073051))

(assert (= (and b!5072542 ((_ is Leaf!25863) (left!42828 (left!42828 err!4609)))) b!5073050))

(declare-fun m!6120276 () Bool)

(assert (=> b!5073049 m!6120276))

(declare-fun m!6120278 () Bool)

(assert (=> b!5073049 m!6120278))

(declare-fun m!6120280 () Bool)

(assert (=> b!5073050 m!6120280))

(assert (=> b!5072542 m!6119322))

(declare-fun tp!1415904 () Bool)

(declare-fun e!3165253 () Bool)

(declare-fun tp!1415903 () Bool)

(declare-fun b!5073052 () Bool)

(assert (=> b!5073052 (= e!3165253 (and (inv!77600 (left!42828 (right!43158 (left!42828 err!4609)))) tp!1415903 (inv!77600 (right!43158 (right!43158 (left!42828 err!4609)))) tp!1415904))))

(declare-fun b!5073054 () Bool)

(declare-fun e!3165252 () Bool)

(declare-fun tp!1415905 () Bool)

(assert (=> b!5073054 (= e!3165252 tp!1415905)))

(declare-fun b!5073053 () Bool)

(assert (=> b!5073053 (= e!3165253 (and (inv!77599 (xs!18930 (right!43158 (left!42828 err!4609)))) e!3165252))))

(assert (=> b!5072542 (= tp!1415857 (and (inv!77600 (right!43158 (left!42828 err!4609))) e!3165253))))

(assert (= (and b!5072542 ((_ is Node!15572) (right!43158 (left!42828 err!4609)))) b!5073052))

(assert (= b!5073053 b!5073054))

(assert (= (and b!5072542 ((_ is Leaf!25863) (right!43158 (left!42828 err!4609)))) b!5073053))

(declare-fun m!6120284 () Bool)

(assert (=> b!5073052 m!6120284))

(declare-fun m!6120288 () Bool)

(assert (=> b!5073052 m!6120288))

(declare-fun m!6120290 () Bool)

(assert (=> b!5073053 m!6120290))

(assert (=> b!5072542 m!6119324))

(declare-fun b!5073055 () Bool)

(declare-fun e!3165254 () Bool)

(declare-fun tp!1415906 () Bool)

(assert (=> b!5073055 (= e!3165254 (and tp_is_empty!37067 tp!1415906))))

(assert (=> b!5072528 (= tp!1415844 e!3165254)))

(assert (= (and b!5072528 ((_ is Cons!58442) (innerList!15660 (xs!18930 (right!43158 xs!286))))) b!5073055))

(check-sat (not d!1637725) (not b!5072634) (not b!5072715) (not b!5072539) (not b!5072878) (not b!5072825) (not b!5072696) (not b!5072598) (not b!5072970) (not b!5073030) (not bm!353372) (not b!5072905) (not d!1637487) (not d!1637569) (not bm!353373) (not b!5072805) (not b!5072761) (not bm!353347) (not b!5072610) (not b!5072629) (not b!5072916) (not bm!353384) (not b!5073011) (not b!5072776) (not b!5072891) (not b!5072754) (not d!1637453) (not b!5072826) (not b!5073048) (not b!5073024) (not b!5072806) (not b!5072633) (not bm!353369) (not b!5072847) (not b!5072642) (not bm!353383) (not b!5072993) (not d!1637715) (not d!1637615) (not d!1637513) (not b!5072628) (not bm!353376) (not b!5072877) (not b!5072912) (not b!5073004) (not b!5073052) (not d!1637623) (not b!5072767) (not b!5072746) (not b!5072523) (not b!5072979) (not b!5072597) (not b!5072992) (not b!5072694) (not b!5072794) (not b!5072742) (not b!5073029) (not b!5072726) (not b!5072602) (not d!1637515) (not b!5072731) (not b!5072936) (not b!5072645) (not d!1637567) (not b!5072998) (not b!5073034) (not b!5072678) (not b!5072542) (not b!5072951) (not b!5072926) (not b!5073033) (not b!5072786) (not b!5073026) (not d!1637477) (not b!5072967) (not b!5072545) (not b!5073040) (not d!1637687) (not b!5073018) (not bm!353374) (not b!5073016) (not b!5073012) (not b!5072896) (not d!1637709) (not bm!353391) (not b!5072695) (not d!1637713) (not b!5072822) (not b!5072536) (not bm!353399) (not bm!353371) (not d!1637501) (not b!5073041) (not b!5072798) (not b!5073003) (not b!5072908) (not b!5073049) (not d!1637559) (not b!5073010) (not b!5072868) (not b!5072853) (not b!5072737) (not b!5072996) (not b!5072688) (not b!5072690) (not b!5072693) (not b!5072867) (not b!5072824) (not bm!353392) (not d!1637549) (not b!5072526) (not b!5072820) (not b!5073053) (not bm!353346) (not b!5073037) (not b!5072762) (not b!5072685) (not bm!353345) (not b!5072607) (not b!5072608) (not b!5073007) (not b!5072854) (not b!5072686) (not d!1637603) (not b!5072594) (not b!5072875) (not b!5072697) (not bm!353370) (not b!5072677) (not d!1637517) (not d!1637635) (not b!5072811) (not b!5072724) (not b!5072821) (not b!5073051) (not b!5072713) (not b!5072911) (not b!5072925) (not b!5072918) (not b!5072775) (not b!5072790) (not d!1637429) (not bm!353398) (not b!5072961) (not b!5072944) (not b!5072845) (not b!5072669) (not b!5072644) (not bm!353389) (not bm!353390) (not bm!353381) (not b!5072983) (not b!5072962) (not b!5072692) (not b!5073008) (not b!5072567) (not b!5072986) (not d!1637503) (not d!1637667) (not b!5072972) (not b!5072997) (not b!5072999) (not bm!353375) (not b!5072641) (not b!5072909) (not b!5072627) (not b!5073027) (not b!5072862) (not b!5072823) (not b!5072923) (not d!1637563) (not b!5072935) (not b!5072969) (not bm!353348) (not b!5072910) (not d!1637519) (not b!5073017) (not b!5072885) (not b!5073035) (not d!1637541) (not b!5072601) (not b!5073031) (not d!1637473) (not b!5072651) (not d!1637555) (not b!5073055) (not b!5072913) (not d!1637511) (not b!5072982) (not b!5072966) (not b!5072785) (not b!5072876) (not b!5072980) (not b!5072950) (not d!1637543) (not bm!353397) (not b!5073050) (not b!5072753) (not b!5073015) (not b!5073025) (not d!1637749) (not b!5072987) (not b!5072605) (not bm!353382) (not b!5072631) (not b!5072646) (not b!5072907) (not bm!353400) (not b!5073009) (not b!5072643) (not b!5072668) (not d!1637737) (not b!5073054) (not b!5072717) (not b!5072898) (not b!5072604) (not b!5073032) (not b!5073019) (not d!1637721) (not b!5072874) (not b!5072589) (not b!5072711) (not b!5073036) (not b!5073002) tp_is_empty!37067 (not d!1637607) (not b!5073039) (not b!5073028) (not b!5072977) (not b!5072965) (not b!5072599) (not b!5073038) (not d!1637663) (not b!5072593) (not d!1637621) (not b!5072625) (not b!5072879))
(check-sat)
