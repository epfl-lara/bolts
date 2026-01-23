; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534870 () Bool)

(assert start!534870)

(declare-fun b!5059744 () Bool)

(declare-fun e!3158231 () Bool)

(declare-datatypes ((T!105076 0))(
  ( (T!105077 (val!23642 Int)) )
))
(declare-datatypes ((List!58552 0))(
  ( (Nil!58428) (Cons!58428 (h!64876 T!105076) (t!371255 List!58552)) )
))
(declare-datatypes ((IArray!31177 0))(
  ( (IArray!31178 (innerList!15646 List!58552)) )
))
(declare-datatypes ((Conc!15558 0))(
  ( (Node!15558 (left!42807 Conc!15558) (right!43137 Conc!15558) (csize!31346 Int) (cheight!15769 Int)) (Leaf!25842 (xs!18896 IArray!31177) (csize!31347 Int)) (Empty!15558) )
))
(declare-fun ys!41 () Conc!15558)

(declare-fun e!3158230 () Bool)

(declare-fun inv!77522 (IArray!31177) Bool)

(assert (=> b!5059744 (= e!3158231 (and (inv!77522 (xs!18896 ys!41)) e!3158230))))

(declare-fun b!5059745 () Bool)

(declare-fun tp!1413936 () Bool)

(declare-fun tp!1413933 () Bool)

(declare-fun inv!77523 (Conc!15558) Bool)

(assert (=> b!5059745 (= e!3158231 (and (inv!77523 (left!42807 ys!41)) tp!1413936 (inv!77523 (right!43137 ys!41)) tp!1413933))))

(declare-fun res!2154536 () Bool)

(declare-fun e!3158235 () Bool)

(assert (=> start!534870 (=> (not res!2154536) (not e!3158235))))

(declare-fun xs!286 () Conc!15558)

(declare-fun isBalanced!4420 (Conc!15558) Bool)

(assert (=> start!534870 (= res!2154536 (isBalanced!4420 xs!286))))

(assert (=> start!534870 e!3158235))

(declare-fun e!3158236 () Bool)

(assert (=> start!534870 (and (inv!77523 xs!286) e!3158236)))

(assert (=> start!534870 (and (inv!77523 ys!41) e!3158231)))

(declare-fun b!5059746 () Bool)

(declare-fun tp!1413937 () Bool)

(assert (=> b!5059746 (= e!3158230 tp!1413937)))

(declare-fun b!5059747 () Bool)

(declare-fun res!2154533 () Bool)

(assert (=> b!5059747 (=> (not res!2154533) (not e!3158235))))

(assert (=> b!5059747 (= res!2154533 (and (not (= xs!286 Empty!15558)) (not (= ys!41 Empty!15558))))))

(declare-fun b!5059748 () Bool)

(declare-fun e!3158234 () Bool)

(declare-fun e!3158233 () Bool)

(assert (=> b!5059748 (= e!3158234 e!3158233)))

(declare-fun res!2154537 () Bool)

(assert (=> b!5059748 (=> res!2154537 e!3158233)))

(declare-fun lt!2087930 () Int)

(declare-fun lt!2087931 () Int)

(assert (=> b!5059748 (= res!2154537 (or (> lt!2087930 (+ 1 lt!2087931)) (< lt!2087930 lt!2087931)))))

(declare-fun lt!2087928 () Conc!15558)

(declare-fun height!2135 (Conc!15558) Int)

(assert (=> b!5059748 (= lt!2087930 (height!2135 lt!2087928))))

(declare-fun lt!2087929 () Int)

(declare-fun lt!2087932 () Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5059748 (= lt!2087931 (max!0 lt!2087929 lt!2087932))))

(declare-fun tp!1413935 () Bool)

(declare-fun tp!1413932 () Bool)

(declare-fun b!5059749 () Bool)

(assert (=> b!5059749 (= e!3158236 (and (inv!77523 (left!42807 xs!286)) tp!1413935 (inv!77523 (right!43137 xs!286)) tp!1413932))))

(declare-fun b!5059750 () Bool)

(declare-fun e!3158232 () Bool)

(assert (=> b!5059750 (= e!3158232 e!3158234)))

(declare-fun res!2154532 () Bool)

(assert (=> b!5059750 (=> res!2154532 e!3158234)))

(declare-fun appendAssocInst!906 (Conc!15558 Conc!15558) Bool)

(assert (=> b!5059750 (= res!2154532 (not (appendAssocInst!906 xs!286 ys!41)))))

(declare-fun <>!392 (Conc!15558 Conc!15558) Conc!15558)

(declare-fun ++!12778 (Conc!15558 Conc!15558) Conc!15558)

(assert (=> b!5059750 (= lt!2087928 (<>!392 (left!42807 xs!286) (++!12778 (right!43137 xs!286) ys!41)))))

(declare-fun b!5059751 () Bool)

(declare-fun list!18977 (Conc!15558) List!58552)

(declare-fun ++!12779 (List!58552 List!58552) List!58552)

(assert (=> b!5059751 (= e!3158233 (not (= (list!18977 lt!2087928) (++!12779 (list!18977 xs!286) (list!18977 ys!41)))))))

(declare-fun b!5059752 () Bool)

(assert (=> b!5059752 (= e!3158235 e!3158232)))

(declare-fun res!2154534 () Bool)

(assert (=> b!5059752 (=> (not res!2154534) (not e!3158232))))

(declare-fun lt!2087933 () Int)

(get-info :version)

(assert (=> b!5059752 (= res!2154534 (and (or (> (- 1) lt!2087933) (> lt!2087933 1)) (< lt!2087933 (- 1)) ((_ is Node!15558) xs!286)))))

(assert (=> b!5059752 (= lt!2087933 (- lt!2087932 lt!2087929))))

(assert (=> b!5059752 (= lt!2087929 (height!2135 xs!286))))

(assert (=> b!5059752 (= lt!2087932 (height!2135 ys!41))))

(declare-fun b!5059753 () Bool)

(declare-fun res!2154535 () Bool)

(assert (=> b!5059753 (=> (not res!2154535) (not e!3158235))))

(assert (=> b!5059753 (= res!2154535 (isBalanced!4420 ys!41))))

(declare-fun b!5059754 () Bool)

(declare-fun res!2154531 () Bool)

(assert (=> b!5059754 (=> res!2154531 e!3158234)))

(assert (=> b!5059754 (= res!2154531 (not (isBalanced!4420 lt!2087928)))))

(declare-fun b!5059755 () Bool)

(declare-fun e!3158229 () Bool)

(declare-fun tp!1413934 () Bool)

(assert (=> b!5059755 (= e!3158229 tp!1413934)))

(declare-fun b!5059756 () Bool)

(assert (=> b!5059756 (= e!3158236 (and (inv!77522 (xs!18896 xs!286)) e!3158229))))

(declare-fun b!5059757 () Bool)

(declare-fun res!2154530 () Bool)

(assert (=> b!5059757 (=> (not res!2154530) (not e!3158232))))

(assert (=> b!5059757 (= res!2154530 (>= (height!2135 (left!42807 xs!286)) (height!2135 (right!43137 xs!286))))))

(assert (= (and start!534870 res!2154536) b!5059753))

(assert (= (and b!5059753 res!2154535) b!5059747))

(assert (= (and b!5059747 res!2154533) b!5059752))

(assert (= (and b!5059752 res!2154534) b!5059757))

(assert (= (and b!5059757 res!2154530) b!5059750))

(assert (= (and b!5059750 (not res!2154532)) b!5059754))

(assert (= (and b!5059754 (not res!2154531)) b!5059748))

(assert (= (and b!5059748 (not res!2154537)) b!5059751))

(assert (= (and start!534870 ((_ is Node!15558) xs!286)) b!5059749))

(assert (= b!5059756 b!5059755))

(assert (= (and start!534870 ((_ is Leaf!25842) xs!286)) b!5059756))

(assert (= (and start!534870 ((_ is Node!15558) ys!41)) b!5059745))

(assert (= b!5059744 b!5059746))

(assert (= (and start!534870 ((_ is Leaf!25842) ys!41)) b!5059744))

(declare-fun m!6096962 () Bool)

(assert (=> b!5059754 m!6096962))

(declare-fun m!6096964 () Bool)

(assert (=> start!534870 m!6096964))

(declare-fun m!6096966 () Bool)

(assert (=> start!534870 m!6096966))

(declare-fun m!6096968 () Bool)

(assert (=> start!534870 m!6096968))

(declare-fun m!6096970 () Bool)

(assert (=> b!5059745 m!6096970))

(declare-fun m!6096972 () Bool)

(assert (=> b!5059745 m!6096972))

(declare-fun m!6096974 () Bool)

(assert (=> b!5059756 m!6096974))

(declare-fun m!6096976 () Bool)

(assert (=> b!5059750 m!6096976))

(declare-fun m!6096978 () Bool)

(assert (=> b!5059750 m!6096978))

(assert (=> b!5059750 m!6096978))

(declare-fun m!6096980 () Bool)

(assert (=> b!5059750 m!6096980))

(declare-fun m!6096982 () Bool)

(assert (=> b!5059751 m!6096982))

(declare-fun m!6096984 () Bool)

(assert (=> b!5059751 m!6096984))

(declare-fun m!6096986 () Bool)

(assert (=> b!5059751 m!6096986))

(assert (=> b!5059751 m!6096984))

(assert (=> b!5059751 m!6096986))

(declare-fun m!6096988 () Bool)

(assert (=> b!5059751 m!6096988))

(declare-fun m!6096990 () Bool)

(assert (=> b!5059744 m!6096990))

(declare-fun m!6096992 () Bool)

(assert (=> b!5059748 m!6096992))

(declare-fun m!6096994 () Bool)

(assert (=> b!5059748 m!6096994))

(declare-fun m!6096996 () Bool)

(assert (=> b!5059757 m!6096996))

(declare-fun m!6096998 () Bool)

(assert (=> b!5059757 m!6096998))

(declare-fun m!6097000 () Bool)

(assert (=> b!5059752 m!6097000))

(declare-fun m!6097002 () Bool)

(assert (=> b!5059752 m!6097002))

(declare-fun m!6097004 () Bool)

(assert (=> b!5059749 m!6097004))

(declare-fun m!6097006 () Bool)

(assert (=> b!5059749 m!6097006))

(declare-fun m!6097008 () Bool)

(assert (=> b!5059753 m!6097008))

(check-sat (not b!5059756) (not b!5059748) (not b!5059751) (not b!5059750) (not b!5059749) (not b!5059757) (not b!5059752) (not b!5059753) (not b!5059754) (not start!534870) (not b!5059745) (not b!5059755) (not b!5059744) (not b!5059746))
(check-sat)
(get-model)

(declare-fun b!5059808 () Bool)

(declare-fun e!3158271 () Bool)

(declare-fun e!3158277 () Bool)

(assert (=> b!5059808 (= e!3158271 e!3158277)))

(declare-fun res!2154566 () Bool)

(assert (=> b!5059808 (=> (not res!2154566) (not e!3158277))))

(declare-fun appendAssoc!298 (List!58552 List!58552 List!58552) Bool)

(assert (=> b!5059808 (= res!2154566 (appendAssoc!298 (list!18977 (left!42807 xs!286)) (list!18977 (right!43137 xs!286)) (list!18977 ys!41)))))

(declare-fun b!5059809 () Bool)

(declare-fun e!3158272 () Bool)

(declare-fun e!3158274 () Bool)

(assert (=> b!5059809 (= e!3158272 e!3158274)))

(declare-fun res!2154563 () Bool)

(assert (=> b!5059809 (=> (not res!2154563) (not e!3158274))))

(assert (=> b!5059809 (= res!2154563 (appendAssoc!298 (list!18977 (left!42807 (right!43137 xs!286))) (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)))))

(declare-fun b!5059810 () Bool)

(declare-fun e!3158279 () Bool)

(declare-fun e!3158273 () Bool)

(assert (=> b!5059810 (= e!3158279 e!3158273)))

(declare-fun res!2154568 () Bool)

(assert (=> b!5059810 (=> res!2154568 e!3158273)))

(assert (=> b!5059810 (= res!2154568 (not ((_ is Node!15558) ys!41)))))

(declare-fun b!5059811 () Bool)

(declare-fun e!3158275 () Bool)

(declare-fun e!3158278 () Bool)

(assert (=> b!5059811 (= e!3158275 e!3158278)))

(declare-fun res!2154565 () Bool)

(assert (=> b!5059811 (=> res!2154565 e!3158278)))

(assert (=> b!5059811 (= res!2154565 (not ((_ is Node!15558) (left!42807 ys!41))))))

(declare-fun b!5059812 () Bool)

(assert (=> b!5059812 (= e!3158273 e!3158275)))

(declare-fun res!2154562 () Bool)

(assert (=> b!5059812 (=> (not res!2154562) (not e!3158275))))

(assert (=> b!5059812 (= res!2154562 (appendAssoc!298 (list!18977 xs!286) (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))))))

(declare-fun b!5059813 () Bool)

(declare-fun e!3158276 () Bool)

(assert (=> b!5059813 (= e!3158278 e!3158276)))

(declare-fun res!2154567 () Bool)

(assert (=> b!5059813 (=> (not res!2154567) (not e!3158276))))

(assert (=> b!5059813 (= res!2154567 (appendAssoc!298 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5059814 () Bool)

(assert (=> b!5059814 (= e!3158276 (appendAssoc!298 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))) (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))))))

(declare-fun b!5059815 () Bool)

(assert (=> b!5059815 (= e!3158274 (appendAssoc!298 (list!18977 (left!42807 xs!286)) (list!18977 (left!42807 (right!43137 xs!286))) (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))

(declare-fun d!1629362 () Bool)

(assert (=> d!1629362 e!3158279))

(declare-fun res!2154569 () Bool)

(assert (=> d!1629362 (=> (not res!2154569) (not e!3158279))))

(assert (=> d!1629362 (= res!2154569 e!3158271)))

(declare-fun res!2154570 () Bool)

(assert (=> d!1629362 (=> res!2154570 e!3158271)))

(assert (=> d!1629362 (= res!2154570 (not ((_ is Node!15558) xs!286)))))

(assert (=> d!1629362 (= (appendAssocInst!906 xs!286 ys!41) true)))

(declare-fun b!5059816 () Bool)

(assert (=> b!5059816 (= e!3158277 e!3158272)))

(declare-fun res!2154564 () Bool)

(assert (=> b!5059816 (=> res!2154564 e!3158272)))

(assert (=> b!5059816 (= res!2154564 (not ((_ is Node!15558) (right!43137 xs!286))))))

(assert (= (and d!1629362 (not res!2154570)) b!5059808))

(assert (= (and b!5059808 res!2154566) b!5059816))

(assert (= (and b!5059816 (not res!2154564)) b!5059809))

(assert (= (and b!5059809 res!2154563) b!5059815))

(assert (= (and d!1629362 res!2154569) b!5059810))

(assert (= (and b!5059810 (not res!2154568)) b!5059812))

(assert (= (and b!5059812 res!2154562) b!5059811))

(assert (= (and b!5059811 (not res!2154565)) b!5059813))

(assert (= (and b!5059813 res!2154567) b!5059814))

(assert (=> b!5059813 m!6096984))

(declare-fun m!6097050 () Bool)

(assert (=> b!5059813 m!6097050))

(declare-fun m!6097052 () Bool)

(assert (=> b!5059813 m!6097052))

(assert (=> b!5059813 m!6096984))

(assert (=> b!5059813 m!6097050))

(assert (=> b!5059813 m!6097052))

(declare-fun m!6097054 () Bool)

(assert (=> b!5059813 m!6097054))

(declare-fun m!6097056 () Bool)

(assert (=> b!5059809 m!6097056))

(declare-fun m!6097058 () Bool)

(assert (=> b!5059809 m!6097058))

(assert (=> b!5059809 m!6096986))

(assert (=> b!5059809 m!6097056))

(assert (=> b!5059809 m!6097058))

(assert (=> b!5059809 m!6096986))

(declare-fun m!6097060 () Bool)

(assert (=> b!5059809 m!6097060))

(declare-fun m!6097062 () Bool)

(assert (=> b!5059815 m!6097062))

(assert (=> b!5059815 m!6097056))

(declare-fun m!6097064 () Bool)

(assert (=> b!5059815 m!6097064))

(declare-fun m!6097066 () Bool)

(assert (=> b!5059815 m!6097066))

(assert (=> b!5059815 m!6096986))

(assert (=> b!5059815 m!6097056))

(assert (=> b!5059815 m!6097062))

(assert (=> b!5059815 m!6097058))

(assert (=> b!5059815 m!6096986))

(assert (=> b!5059815 m!6097064))

(assert (=> b!5059815 m!6097058))

(assert (=> b!5059808 m!6097062))

(declare-fun m!6097068 () Bool)

(assert (=> b!5059808 m!6097068))

(assert (=> b!5059808 m!6096986))

(assert (=> b!5059808 m!6097062))

(assert (=> b!5059808 m!6097068))

(assert (=> b!5059808 m!6096986))

(declare-fun m!6097070 () Bool)

(assert (=> b!5059808 m!6097070))

(assert (=> b!5059814 m!6096984))

(declare-fun m!6097072 () Bool)

(assert (=> b!5059814 m!6097072))

(assert (=> b!5059814 m!6097052))

(declare-fun m!6097074 () Bool)

(assert (=> b!5059814 m!6097074))

(declare-fun m!6097076 () Bool)

(assert (=> b!5059814 m!6097076))

(assert (=> b!5059814 m!6097074))

(assert (=> b!5059814 m!6097052))

(assert (=> b!5059814 m!6097050))

(assert (=> b!5059814 m!6096984))

(assert (=> b!5059814 m!6097050))

(assert (=> b!5059814 m!6097072))

(assert (=> b!5059812 m!6096984))

(declare-fun m!6097078 () Bool)

(assert (=> b!5059812 m!6097078))

(assert (=> b!5059812 m!6097074))

(assert (=> b!5059812 m!6096984))

(assert (=> b!5059812 m!6097078))

(assert (=> b!5059812 m!6097074))

(declare-fun m!6097080 () Bool)

(assert (=> b!5059812 m!6097080))

(assert (=> b!5059750 d!1629362))

(declare-fun d!1629374 () Bool)

(declare-fun lt!2087939 () Conc!15558)

(assert (=> d!1629374 (= (list!18977 lt!2087939) (++!12779 (list!18977 (left!42807 xs!286)) (list!18977 (++!12778 (right!43137 xs!286) ys!41))))))

(declare-fun e!3158303 () Conc!15558)

(assert (=> d!1629374 (= lt!2087939 e!3158303)))

(declare-fun c!868145 () Bool)

(assert (=> d!1629374 (= c!868145 (= (left!42807 xs!286) Empty!15558))))

(assert (=> d!1629374 (= (<>!392 (left!42807 xs!286) (++!12778 (right!43137 xs!286) ys!41)) lt!2087939)))

(declare-fun b!5059844 () Bool)

(declare-fun e!3158302 () Conc!15558)

(assert (=> b!5059844 (= e!3158303 e!3158302)))

(declare-fun c!868146 () Bool)

(assert (=> b!5059844 (= c!868146 (= (++!12778 (right!43137 xs!286) ys!41) Empty!15558))))

(declare-fun b!5059846 () Bool)

(declare-fun size!39064 (Conc!15558) Int)

(assert (=> b!5059846 (= e!3158302 (Node!15558 (left!42807 xs!286) (++!12778 (right!43137 xs!286) ys!41) (+ (size!39064 (left!42807 xs!286)) (size!39064 (++!12778 (right!43137 xs!286) ys!41))) (+ (max!0 (height!2135 (left!42807 xs!286)) (height!2135 (++!12778 (right!43137 xs!286) ys!41))) 1)))))

(declare-fun b!5059845 () Bool)

(assert (=> b!5059845 (= e!3158302 (left!42807 xs!286))))

(declare-fun b!5059843 () Bool)

(assert (=> b!5059843 (= e!3158303 (++!12778 (right!43137 xs!286) ys!41))))

(assert (= (and d!1629374 c!868145) b!5059843))

(assert (= (and d!1629374 (not c!868145)) b!5059844))

(assert (= (and b!5059844 c!868146) b!5059845))

(assert (= (and b!5059844 (not c!868146)) b!5059846))

(declare-fun m!6097082 () Bool)

(assert (=> d!1629374 m!6097082))

(assert (=> d!1629374 m!6097062))

(assert (=> d!1629374 m!6096978))

(declare-fun m!6097084 () Bool)

(assert (=> d!1629374 m!6097084))

(assert (=> d!1629374 m!6097062))

(assert (=> d!1629374 m!6097084))

(declare-fun m!6097086 () Bool)

(assert (=> d!1629374 m!6097086))

(assert (=> b!5059846 m!6096978))

(declare-fun m!6097088 () Bool)

(assert (=> b!5059846 m!6097088))

(declare-fun m!6097090 () Bool)

(assert (=> b!5059846 m!6097090))

(assert (=> b!5059846 m!6096978))

(declare-fun m!6097092 () Bool)

(assert (=> b!5059846 m!6097092))

(assert (=> b!5059846 m!6096996))

(assert (=> b!5059846 m!6097088))

(declare-fun m!6097094 () Bool)

(assert (=> b!5059846 m!6097094))

(assert (=> b!5059846 m!6096996))

(assert (=> b!5059750 d!1629374))

(declare-fun b!5059973 () Bool)

(declare-fun e!3158372 () Conc!15558)

(declare-fun call!352358 () Conc!15558)

(assert (=> b!5059973 (= e!3158372 call!352358)))

(declare-fun b!5059974 () Bool)

(declare-fun c!868193 () Bool)

(declare-fun call!352369 () Int)

(declare-fun call!352363 () Int)

(assert (=> b!5059974 (= c!868193 (>= call!352369 call!352363))))

(declare-fun e!3158378 () Conc!15558)

(declare-fun e!3158370 () Conc!15558)

(assert (=> b!5059974 (= e!3158378 e!3158370)))

(declare-fun b!5059975 () Bool)

(declare-fun c!868198 () Bool)

(declare-fun call!352360 () Int)

(assert (=> b!5059975 (= c!868198 (>= call!352360 call!352369))))

(declare-fun e!3158377 () Conc!15558)

(assert (=> b!5059975 (= e!3158378 e!3158377)))

(declare-fun bm!352353 () Bool)

(declare-fun call!352364 () Conc!15558)

(declare-fun call!352371 () Conc!15558)

(assert (=> bm!352353 (= call!352364 call!352371)))

(declare-fun b!5059976 () Bool)

(declare-fun e!3158369 () Conc!15558)

(declare-fun call!352359 () Conc!15558)

(assert (=> b!5059976 (= e!3158369 call!352359)))

(declare-fun bm!352354 () Bool)

(declare-fun call!352362 () Conc!15558)

(declare-fun call!352372 () Conc!15558)

(assert (=> bm!352354 (= call!352362 call!352372)))

(declare-fun b!5059977 () Bool)

(assert (=> b!5059977 (= e!3158370 e!3158372)))

(declare-fun lt!2087965 () Conc!15558)

(declare-fun call!352373 () Conc!15558)

(assert (=> b!5059977 (= lt!2087965 call!352373)))

(declare-fun c!868200 () Bool)

(declare-fun call!352368 () Int)

(assert (=> b!5059977 (= c!868200 (= call!352360 (- call!352368 3)))))

(declare-fun bm!352355 () Bool)

(declare-fun c!868195 () Bool)

(assert (=> bm!352355 (= call!352369 (height!2135 (ite c!868195 (left!42807 (right!43137 xs!286)) (left!42807 ys!41))))))

(declare-fun b!5059978 () Bool)

(assert (=> b!5059978 (= e!3158377 call!352362)))

(declare-fun b!5059979 () Bool)

(declare-fun res!2154625 () Bool)

(declare-fun e!3158374 () Bool)

(assert (=> b!5059979 (=> (not res!2154625) (not e!3158374))))

(declare-fun lt!2087966 () Conc!15558)

(assert (=> b!5059979 (= res!2154625 (>= (height!2135 lt!2087966) (max!0 (height!2135 (right!43137 xs!286)) (height!2135 ys!41))))))

(declare-fun bm!352356 () Bool)

(declare-fun call!352370 () Conc!15558)

(assert (=> bm!352356 (= call!352373 call!352370)))

(declare-fun b!5059980 () Bool)

(declare-fun call!352365 () Conc!15558)

(assert (=> b!5059980 (= e!3158370 call!352365)))

(declare-fun bm!352357 () Bool)

(assert (=> bm!352357 (= call!352360 (height!2135 (ite c!868195 lt!2087965 (right!43137 ys!41))))))

(declare-fun b!5059981 () Bool)

(declare-fun e!3158376 () Conc!15558)

(assert (=> b!5059981 (= e!3158377 e!3158376)))

(declare-fun lt!2087964 () Conc!15558)

(declare-fun call!352361 () Conc!15558)

(assert (=> b!5059981 (= lt!2087964 call!352361)))

(declare-fun c!868196 () Bool)

(assert (=> b!5059981 (= c!868196 (= call!352363 (- call!352368 3)))))

(declare-fun b!5059982 () Bool)

(declare-fun res!2154624 () Bool)

(assert (=> b!5059982 (=> (not res!2154624) (not e!3158374))))

(assert (=> b!5059982 (= res!2154624 (isBalanced!4420 lt!2087966))))

(declare-fun bm!352358 () Bool)

(assert (=> bm!352358 (= call!352365 call!352372)))

(declare-fun bm!352359 () Bool)

(declare-fun call!352366 () Conc!15558)

(assert (=> bm!352359 (= call!352366 call!352362)))

(declare-fun b!5059983 () Bool)

(declare-fun c!868194 () Bool)

(declare-fun lt!2087963 () Int)

(assert (=> b!5059983 (= c!868194 (and (<= (- 1) lt!2087963) (<= lt!2087963 1)))))

(assert (=> b!5059983 (= lt!2087963 (- (height!2135 ys!41) (height!2135 (right!43137 xs!286))))))

(declare-fun e!3158373 () Conc!15558)

(assert (=> b!5059983 (= e!3158373 e!3158369)))

(declare-fun b!5059984 () Bool)

(declare-fun e!3158375 () Bool)

(assert (=> b!5059984 (= e!3158375 (isBalanced!4420 ys!41))))

(declare-fun bm!352360 () Bool)

(assert (=> bm!352360 (= call!352372 (<>!392 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))) (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))))))

(declare-fun bm!352361 () Bool)

(assert (=> bm!352361 (= call!352371 call!352359)))

(declare-fun bm!352362 () Bool)

(assert (=> bm!352362 (= call!352361 call!352370)))

(declare-fun b!5059985 () Bool)

(declare-fun e!3158371 () Conc!15558)

(assert (=> b!5059985 (= e!3158371 ys!41)))

(declare-fun b!5059986 () Bool)

(assert (=> b!5059986 (= e!3158376 call!352364)))

(declare-fun b!5059987 () Bool)

(assert (=> b!5059987 (= e!3158372 call!352358)))

(declare-fun b!5059988 () Bool)

(assert (=> b!5059988 (= e!3158373 (right!43137 xs!286))))

(declare-fun b!5059989 () Bool)

(assert (=> b!5059989 (= e!3158371 e!3158373)))

(declare-fun c!868197 () Bool)

(assert (=> b!5059989 (= c!868197 (= ys!41 Empty!15558))))

(declare-fun b!5059990 () Bool)

(assert (=> b!5059990 (= e!3158374 (= (list!18977 lt!2087966) (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 ys!41))))))

(declare-fun b!5059991 () Bool)

(declare-fun res!2154623 () Bool)

(assert (=> b!5059991 (=> (not res!2154623) (not e!3158374))))

(assert (=> b!5059991 (= res!2154623 (<= (height!2135 lt!2087966) (+ (max!0 (height!2135 (right!43137 xs!286)) (height!2135 ys!41)) 1)))))

(declare-fun b!5059992 () Bool)

(assert (=> b!5059992 (= e!3158376 call!352364)))

(declare-fun b!5059993 () Bool)

(assert (=> b!5059993 (= e!3158369 e!3158378)))

(assert (=> b!5059993 (= c!868195 (< lt!2087963 (- 1)))))

(declare-fun d!1629376 () Bool)

(assert (=> d!1629376 e!3158374))

(declare-fun res!2154627 () Bool)

(assert (=> d!1629376 (=> (not res!2154627) (not e!3158374))))

(assert (=> d!1629376 (= res!2154627 (appendAssocInst!906 (right!43137 xs!286) ys!41))))

(assert (=> d!1629376 (= lt!2087966 e!3158371)))

(declare-fun c!868199 () Bool)

(assert (=> d!1629376 (= c!868199 (= (right!43137 xs!286) Empty!15558))))

(assert (=> d!1629376 e!3158375))

(declare-fun res!2154626 () Bool)

(assert (=> d!1629376 (=> (not res!2154626) (not e!3158375))))

(assert (=> d!1629376 (= res!2154626 (isBalanced!4420 (right!43137 xs!286)))))

(assert (=> d!1629376 (= (++!12778 (right!43137 xs!286) ys!41) lt!2087966)))

(declare-fun bm!352363 () Bool)

(declare-fun call!352367 () Conc!15558)

(assert (=> bm!352363 (= call!352367 call!352365)))

(declare-fun bm!352364 () Bool)

(assert (=> bm!352364 (= call!352368 (height!2135 (ite c!868195 (right!43137 xs!286) ys!41)))))

(declare-fun bm!352365 () Bool)

(assert (=> bm!352365 (= call!352358 call!352371)))

(declare-fun bm!352366 () Bool)

(assert (=> bm!352366 (= call!352370 (++!12778 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))

(declare-fun bm!352367 () Bool)

(assert (=> bm!352367 (= call!352363 (height!2135 (ite c!868195 (right!43137 (right!43137 xs!286)) lt!2087964)))))

(declare-fun bm!352368 () Bool)

(assert (=> bm!352368 (= call!352359 (<>!392 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))) (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))))))

(assert (= (and d!1629376 res!2154626) b!5059984))

(assert (= (and d!1629376 c!868199) b!5059985))

(assert (= (and d!1629376 (not c!868199)) b!5059989))

(assert (= (and b!5059989 c!868197) b!5059988))

(assert (= (and b!5059989 (not c!868197)) b!5059983))

(assert (= (and b!5059983 c!868194) b!5059976))

(assert (= (and b!5059983 (not c!868194)) b!5059993))

(assert (= (and b!5059993 c!868195) b!5059974))

(assert (= (and b!5059993 (not c!868195)) b!5059975))

(assert (= (and b!5059974 c!868193) b!5059980))

(assert (= (and b!5059974 (not c!868193)) b!5059977))

(assert (= (and b!5059977 c!868200) b!5059973))

(assert (= (and b!5059977 (not c!868200)) b!5059987))

(assert (= (or b!5059973 b!5059987) bm!352363))

(assert (= (or b!5059973 b!5059987) bm!352365))

(assert (= (or b!5059980 b!5059977) bm!352356))

(assert (= (or b!5059980 bm!352363) bm!352358))

(assert (= (and b!5059975 c!868198) b!5059978))

(assert (= (and b!5059975 (not c!868198)) b!5059981))

(assert (= (and b!5059981 c!868196) b!5059986))

(assert (= (and b!5059981 (not c!868196)) b!5059992))

(assert (= (or b!5059986 b!5059992) bm!352359))

(assert (= (or b!5059986 b!5059992) bm!352353))

(assert (= (or b!5059978 b!5059981) bm!352362))

(assert (= (or b!5059978 bm!352359) bm!352354))

(assert (= (or bm!352358 bm!352354) bm!352360))

(assert (= (or b!5059974 b!5059975) bm!352355))

(assert (= (or bm!352365 bm!352353) bm!352361))

(assert (= (or bm!352356 bm!352362) bm!352366))

(assert (= (or b!5059977 b!5059975) bm!352357))

(assert (= (or b!5059977 b!5059981) bm!352364))

(assert (= (or b!5059974 b!5059981) bm!352367))

(assert (= (or b!5059976 bm!352361) bm!352368))

(assert (= (and d!1629376 res!2154627) b!5059982))

(assert (= (and b!5059982 res!2154624) b!5059991))

(assert (= (and b!5059991 res!2154623) b!5059979))

(assert (= (and b!5059979 res!2154625) b!5059990))

(declare-fun m!6097162 () Bool)

(assert (=> bm!352368 m!6097162))

(declare-fun m!6097164 () Bool)

(assert (=> bm!352364 m!6097164))

(declare-fun m!6097166 () Bool)

(assert (=> bm!352367 m!6097166))

(declare-fun m!6097168 () Bool)

(assert (=> b!5059979 m!6097168))

(assert (=> b!5059979 m!6096998))

(assert (=> b!5059979 m!6097002))

(assert (=> b!5059979 m!6096998))

(assert (=> b!5059979 m!6097002))

(declare-fun m!6097170 () Bool)

(assert (=> b!5059979 m!6097170))

(declare-fun m!6097172 () Bool)

(assert (=> bm!352360 m!6097172))

(declare-fun m!6097174 () Bool)

(assert (=> d!1629376 m!6097174))

(declare-fun m!6097176 () Bool)

(assert (=> d!1629376 m!6097176))

(declare-fun m!6097178 () Bool)

(assert (=> b!5059982 m!6097178))

(declare-fun m!6097180 () Bool)

(assert (=> bm!352355 m!6097180))

(assert (=> b!5059983 m!6097002))

(assert (=> b!5059983 m!6096998))

(assert (=> b!5059984 m!6097008))

(assert (=> b!5059991 m!6097168))

(assert (=> b!5059991 m!6096998))

(assert (=> b!5059991 m!6097002))

(assert (=> b!5059991 m!6096998))

(assert (=> b!5059991 m!6097002))

(assert (=> b!5059991 m!6097170))

(declare-fun m!6097182 () Bool)

(assert (=> bm!352357 m!6097182))

(declare-fun m!6097184 () Bool)

(assert (=> b!5059990 m!6097184))

(assert (=> b!5059990 m!6097068))

(assert (=> b!5059990 m!6096986))

(assert (=> b!5059990 m!6097068))

(assert (=> b!5059990 m!6096986))

(declare-fun m!6097186 () Bool)

(assert (=> b!5059990 m!6097186))

(declare-fun m!6097188 () Bool)

(assert (=> bm!352366 m!6097188))

(assert (=> b!5059750 d!1629376))

(declare-fun d!1629384 () Bool)

(declare-fun c!868209 () Bool)

(assert (=> d!1629384 (= c!868209 ((_ is Node!15558) (left!42807 xs!286)))))

(declare-fun e!3158403 () Bool)

(assert (=> d!1629384 (= (inv!77523 (left!42807 xs!286)) e!3158403)))

(declare-fun b!5060042 () Bool)

(declare-fun inv!77526 (Conc!15558) Bool)

(assert (=> b!5060042 (= e!3158403 (inv!77526 (left!42807 xs!286)))))

(declare-fun b!5060043 () Bool)

(declare-fun e!3158404 () Bool)

(assert (=> b!5060043 (= e!3158403 e!3158404)))

(declare-fun res!2154660 () Bool)

(assert (=> b!5060043 (= res!2154660 (not ((_ is Leaf!25842) (left!42807 xs!286))))))

(assert (=> b!5060043 (=> res!2154660 e!3158404)))

(declare-fun b!5060044 () Bool)

(declare-fun inv!77527 (Conc!15558) Bool)

(assert (=> b!5060044 (= e!3158404 (inv!77527 (left!42807 xs!286)))))

(assert (= (and d!1629384 c!868209) b!5060042))

(assert (= (and d!1629384 (not c!868209)) b!5060043))

(assert (= (and b!5060043 (not res!2154660)) b!5060044))

(declare-fun m!6097226 () Bool)

(assert (=> b!5060042 m!6097226))

(declare-fun m!6097228 () Bool)

(assert (=> b!5060044 m!6097228))

(assert (=> b!5059749 d!1629384))

(declare-fun d!1629412 () Bool)

(declare-fun c!868210 () Bool)

(assert (=> d!1629412 (= c!868210 ((_ is Node!15558) (right!43137 xs!286)))))

(declare-fun e!3158407 () Bool)

(assert (=> d!1629412 (= (inv!77523 (right!43137 xs!286)) e!3158407)))

(declare-fun b!5060051 () Bool)

(assert (=> b!5060051 (= e!3158407 (inv!77526 (right!43137 xs!286)))))

(declare-fun b!5060052 () Bool)

(declare-fun e!3158408 () Bool)

(assert (=> b!5060052 (= e!3158407 e!3158408)))

(declare-fun res!2154667 () Bool)

(assert (=> b!5060052 (= res!2154667 (not ((_ is Leaf!25842) (right!43137 xs!286))))))

(assert (=> b!5060052 (=> res!2154667 e!3158408)))

(declare-fun b!5060053 () Bool)

(assert (=> b!5060053 (= e!3158408 (inv!77527 (right!43137 xs!286)))))

(assert (= (and d!1629412 c!868210) b!5060051))

(assert (= (and d!1629412 (not c!868210)) b!5060052))

(assert (= (and b!5060052 (not res!2154667)) b!5060053))

(declare-fun m!6097242 () Bool)

(assert (=> b!5060051 m!6097242))

(declare-fun m!6097244 () Bool)

(assert (=> b!5060053 m!6097244))

(assert (=> b!5059749 d!1629412))

(declare-fun b!5060098 () Bool)

(declare-fun res!2154683 () Bool)

(declare-fun e!3158433 () Bool)

(assert (=> b!5060098 (=> (not res!2154683) (not e!3158433))))

(assert (=> b!5060098 (= res!2154683 (isBalanced!4420 (left!42807 xs!286)))))

(declare-fun b!5060099 () Bool)

(declare-fun res!2154684 () Bool)

(assert (=> b!5060099 (=> (not res!2154684) (not e!3158433))))

(assert (=> b!5060099 (= res!2154684 (isBalanced!4420 (right!43137 xs!286)))))

(declare-fun b!5060100 () Bool)

(declare-fun res!2154686 () Bool)

(assert (=> b!5060100 (=> (not res!2154686) (not e!3158433))))

(declare-fun isEmpty!31619 (Conc!15558) Bool)

(assert (=> b!5060100 (= res!2154686 (not (isEmpty!31619 (left!42807 xs!286))))))

(declare-fun b!5060101 () Bool)

(assert (=> b!5060101 (= e!3158433 (not (isEmpty!31619 (right!43137 xs!286))))))

(declare-fun b!5060102 () Bool)

(declare-fun res!2154687 () Bool)

(assert (=> b!5060102 (=> (not res!2154687) (not e!3158433))))

(assert (=> b!5060102 (= res!2154687 (<= (- (height!2135 (left!42807 xs!286)) (height!2135 (right!43137 xs!286))) 1))))

(declare-fun b!5060103 () Bool)

(declare-fun e!3158434 () Bool)

(assert (=> b!5060103 (= e!3158434 e!3158433)))

(declare-fun res!2154685 () Bool)

(assert (=> b!5060103 (=> (not res!2154685) (not e!3158433))))

(assert (=> b!5060103 (= res!2154685 (<= (- 1) (- (height!2135 (left!42807 xs!286)) (height!2135 (right!43137 xs!286)))))))

(declare-fun d!1629416 () Bool)

(declare-fun res!2154682 () Bool)

(assert (=> d!1629416 (=> res!2154682 e!3158434)))

(assert (=> d!1629416 (= res!2154682 (not ((_ is Node!15558) xs!286)))))

(assert (=> d!1629416 (= (isBalanced!4420 xs!286) e!3158434)))

(assert (= (and d!1629416 (not res!2154682)) b!5060103))

(assert (= (and b!5060103 res!2154685) b!5060102))

(assert (= (and b!5060102 res!2154687) b!5060098))

(assert (= (and b!5060098 res!2154683) b!5060099))

(assert (= (and b!5060099 res!2154684) b!5060100))

(assert (= (and b!5060100 res!2154686) b!5060101))

(declare-fun m!6097278 () Bool)

(assert (=> b!5060100 m!6097278))

(assert (=> b!5060102 m!6096996))

(assert (=> b!5060102 m!6096998))

(assert (=> b!5060099 m!6097176))

(declare-fun m!6097280 () Bool)

(assert (=> b!5060101 m!6097280))

(declare-fun m!6097282 () Bool)

(assert (=> b!5060098 m!6097282))

(assert (=> b!5060103 m!6096996))

(assert (=> b!5060103 m!6096998))

(assert (=> start!534870 d!1629416))

(declare-fun d!1629420 () Bool)

(declare-fun c!868213 () Bool)

(assert (=> d!1629420 (= c!868213 ((_ is Node!15558) xs!286))))

(declare-fun e!3158435 () Bool)

(assert (=> d!1629420 (= (inv!77523 xs!286) e!3158435)))

(declare-fun b!5060104 () Bool)

(assert (=> b!5060104 (= e!3158435 (inv!77526 xs!286))))

(declare-fun b!5060105 () Bool)

(declare-fun e!3158436 () Bool)

(assert (=> b!5060105 (= e!3158435 e!3158436)))

(declare-fun res!2154688 () Bool)

(assert (=> b!5060105 (= res!2154688 (not ((_ is Leaf!25842) xs!286)))))

(assert (=> b!5060105 (=> res!2154688 e!3158436)))

(declare-fun b!5060106 () Bool)

(assert (=> b!5060106 (= e!3158436 (inv!77527 xs!286))))

(assert (= (and d!1629420 c!868213) b!5060104))

(assert (= (and d!1629420 (not c!868213)) b!5060105))

(assert (= (and b!5060105 (not res!2154688)) b!5060106))

(declare-fun m!6097284 () Bool)

(assert (=> b!5060104 m!6097284))

(declare-fun m!6097286 () Bool)

(assert (=> b!5060106 m!6097286))

(assert (=> start!534870 d!1629420))

(declare-fun d!1629422 () Bool)

(declare-fun c!868214 () Bool)

(assert (=> d!1629422 (= c!868214 ((_ is Node!15558) ys!41))))

(declare-fun e!3158437 () Bool)

(assert (=> d!1629422 (= (inv!77523 ys!41) e!3158437)))

(declare-fun b!5060107 () Bool)

(assert (=> b!5060107 (= e!3158437 (inv!77526 ys!41))))

(declare-fun b!5060108 () Bool)

(declare-fun e!3158438 () Bool)

(assert (=> b!5060108 (= e!3158437 e!3158438)))

(declare-fun res!2154689 () Bool)

(assert (=> b!5060108 (= res!2154689 (not ((_ is Leaf!25842) ys!41)))))

(assert (=> b!5060108 (=> res!2154689 e!3158438)))

(declare-fun b!5060109 () Bool)

(assert (=> b!5060109 (= e!3158438 (inv!77527 ys!41))))

(assert (= (and d!1629422 c!868214) b!5060107))

(assert (= (and d!1629422 (not c!868214)) b!5060108))

(assert (= (and b!5060108 (not res!2154689)) b!5060109))

(declare-fun m!6097288 () Bool)

(assert (=> b!5060107 m!6097288))

(declare-fun m!6097290 () Bool)

(assert (=> b!5060109 m!6097290))

(assert (=> start!534870 d!1629422))

(declare-fun d!1629424 () Bool)

(assert (=> d!1629424 (= (height!2135 lt!2087928) (ite ((_ is Empty!15558) lt!2087928) 0 (ite ((_ is Leaf!25842) lt!2087928) 1 (cheight!15769 lt!2087928))))))

(assert (=> b!5059748 d!1629424))

(declare-fun d!1629426 () Bool)

(assert (=> d!1629426 (= (max!0 lt!2087929 lt!2087932) (ite (< lt!2087929 lt!2087932) lt!2087932 lt!2087929))))

(assert (=> b!5059748 d!1629426))

(declare-fun d!1629428 () Bool)

(assert (=> d!1629428 (= (height!2135 (left!42807 xs!286)) (ite ((_ is Empty!15558) (left!42807 xs!286)) 0 (ite ((_ is Leaf!25842) (left!42807 xs!286)) 1 (cheight!15769 (left!42807 xs!286)))))))

(assert (=> b!5059757 d!1629428))

(declare-fun d!1629430 () Bool)

(assert (=> d!1629430 (= (height!2135 (right!43137 xs!286)) (ite ((_ is Empty!15558) (right!43137 xs!286)) 0 (ite ((_ is Leaf!25842) (right!43137 xs!286)) 1 (cheight!15769 (right!43137 xs!286)))))))

(assert (=> b!5059757 d!1629430))

(declare-fun d!1629432 () Bool)

(declare-fun size!39065 (List!58552) Int)

(assert (=> d!1629432 (= (inv!77522 (xs!18896 xs!286)) (<= (size!39065 (innerList!15646 (xs!18896 xs!286))) 2147483647))))

(declare-fun bs!1189588 () Bool)

(assert (= bs!1189588 d!1629432))

(declare-fun m!6097292 () Bool)

(assert (=> bs!1189588 m!6097292))

(assert (=> b!5059756 d!1629432))

(declare-fun d!1629434 () Bool)

(declare-fun c!868215 () Bool)

(assert (=> d!1629434 (= c!868215 ((_ is Node!15558) (left!42807 ys!41)))))

(declare-fun e!3158439 () Bool)

(assert (=> d!1629434 (= (inv!77523 (left!42807 ys!41)) e!3158439)))

(declare-fun b!5060110 () Bool)

(assert (=> b!5060110 (= e!3158439 (inv!77526 (left!42807 ys!41)))))

(declare-fun b!5060111 () Bool)

(declare-fun e!3158440 () Bool)

(assert (=> b!5060111 (= e!3158439 e!3158440)))

(declare-fun res!2154690 () Bool)

(assert (=> b!5060111 (= res!2154690 (not ((_ is Leaf!25842) (left!42807 ys!41))))))

(assert (=> b!5060111 (=> res!2154690 e!3158440)))

(declare-fun b!5060112 () Bool)

(assert (=> b!5060112 (= e!3158440 (inv!77527 (left!42807 ys!41)))))

(assert (= (and d!1629434 c!868215) b!5060110))

(assert (= (and d!1629434 (not c!868215)) b!5060111))

(assert (= (and b!5060111 (not res!2154690)) b!5060112))

(declare-fun m!6097294 () Bool)

(assert (=> b!5060110 m!6097294))

(declare-fun m!6097296 () Bool)

(assert (=> b!5060112 m!6097296))

(assert (=> b!5059745 d!1629434))

(declare-fun d!1629436 () Bool)

(declare-fun c!868216 () Bool)

(assert (=> d!1629436 (= c!868216 ((_ is Node!15558) (right!43137 ys!41)))))

(declare-fun e!3158441 () Bool)

(assert (=> d!1629436 (= (inv!77523 (right!43137 ys!41)) e!3158441)))

(declare-fun b!5060113 () Bool)

(assert (=> b!5060113 (= e!3158441 (inv!77526 (right!43137 ys!41)))))

(declare-fun b!5060114 () Bool)

(declare-fun e!3158442 () Bool)

(assert (=> b!5060114 (= e!3158441 e!3158442)))

(declare-fun res!2154691 () Bool)

(assert (=> b!5060114 (= res!2154691 (not ((_ is Leaf!25842) (right!43137 ys!41))))))

(assert (=> b!5060114 (=> res!2154691 e!3158442)))

(declare-fun b!5060115 () Bool)

(assert (=> b!5060115 (= e!3158442 (inv!77527 (right!43137 ys!41)))))

(assert (= (and d!1629436 c!868216) b!5060113))

(assert (= (and d!1629436 (not c!868216)) b!5060114))

(assert (= (and b!5060114 (not res!2154691)) b!5060115))

(declare-fun m!6097298 () Bool)

(assert (=> b!5060113 m!6097298))

(declare-fun m!6097300 () Bool)

(assert (=> b!5060115 m!6097300))

(assert (=> b!5059745 d!1629436))

(declare-fun d!1629438 () Bool)

(assert (=> d!1629438 (= (inv!77522 (xs!18896 ys!41)) (<= (size!39065 (innerList!15646 (xs!18896 ys!41))) 2147483647))))

(declare-fun bs!1189589 () Bool)

(assert (= bs!1189589 d!1629438))

(declare-fun m!6097302 () Bool)

(assert (=> bs!1189589 m!6097302))

(assert (=> b!5059744 d!1629438))

(declare-fun b!5060116 () Bool)

(declare-fun res!2154693 () Bool)

(declare-fun e!3158443 () Bool)

(assert (=> b!5060116 (=> (not res!2154693) (not e!3158443))))

(assert (=> b!5060116 (= res!2154693 (isBalanced!4420 (left!42807 lt!2087928)))))

(declare-fun b!5060117 () Bool)

(declare-fun res!2154694 () Bool)

(assert (=> b!5060117 (=> (not res!2154694) (not e!3158443))))

(assert (=> b!5060117 (= res!2154694 (isBalanced!4420 (right!43137 lt!2087928)))))

(declare-fun b!5060118 () Bool)

(declare-fun res!2154696 () Bool)

(assert (=> b!5060118 (=> (not res!2154696) (not e!3158443))))

(assert (=> b!5060118 (= res!2154696 (not (isEmpty!31619 (left!42807 lt!2087928))))))

(declare-fun b!5060119 () Bool)

(assert (=> b!5060119 (= e!3158443 (not (isEmpty!31619 (right!43137 lt!2087928))))))

(declare-fun b!5060120 () Bool)

(declare-fun res!2154697 () Bool)

(assert (=> b!5060120 (=> (not res!2154697) (not e!3158443))))

(assert (=> b!5060120 (= res!2154697 (<= (- (height!2135 (left!42807 lt!2087928)) (height!2135 (right!43137 lt!2087928))) 1))))

(declare-fun b!5060121 () Bool)

(declare-fun e!3158444 () Bool)

(assert (=> b!5060121 (= e!3158444 e!3158443)))

(declare-fun res!2154695 () Bool)

(assert (=> b!5060121 (=> (not res!2154695) (not e!3158443))))

(assert (=> b!5060121 (= res!2154695 (<= (- 1) (- (height!2135 (left!42807 lt!2087928)) (height!2135 (right!43137 lt!2087928)))))))

(declare-fun d!1629440 () Bool)

(declare-fun res!2154692 () Bool)

(assert (=> d!1629440 (=> res!2154692 e!3158444)))

(assert (=> d!1629440 (= res!2154692 (not ((_ is Node!15558) lt!2087928)))))

(assert (=> d!1629440 (= (isBalanced!4420 lt!2087928) e!3158444)))

(assert (= (and d!1629440 (not res!2154692)) b!5060121))

(assert (= (and b!5060121 res!2154695) b!5060120))

(assert (= (and b!5060120 res!2154697) b!5060116))

(assert (= (and b!5060116 res!2154693) b!5060117))

(assert (= (and b!5060117 res!2154694) b!5060118))

(assert (= (and b!5060118 res!2154696) b!5060119))

(declare-fun m!6097304 () Bool)

(assert (=> b!5060118 m!6097304))

(declare-fun m!6097306 () Bool)

(assert (=> b!5060120 m!6097306))

(declare-fun m!6097308 () Bool)

(assert (=> b!5060120 m!6097308))

(declare-fun m!6097310 () Bool)

(assert (=> b!5060117 m!6097310))

(declare-fun m!6097312 () Bool)

(assert (=> b!5060119 m!6097312))

(declare-fun m!6097314 () Bool)

(assert (=> b!5060116 m!6097314))

(assert (=> b!5060121 m!6097306))

(assert (=> b!5060121 m!6097308))

(assert (=> b!5059754 d!1629440))

(declare-fun b!5060122 () Bool)

(declare-fun res!2154699 () Bool)

(declare-fun e!3158445 () Bool)

(assert (=> b!5060122 (=> (not res!2154699) (not e!3158445))))

(assert (=> b!5060122 (= res!2154699 (isBalanced!4420 (left!42807 ys!41)))))

(declare-fun b!5060123 () Bool)

(declare-fun res!2154700 () Bool)

(assert (=> b!5060123 (=> (not res!2154700) (not e!3158445))))

(assert (=> b!5060123 (= res!2154700 (isBalanced!4420 (right!43137 ys!41)))))

(declare-fun b!5060124 () Bool)

(declare-fun res!2154702 () Bool)

(assert (=> b!5060124 (=> (not res!2154702) (not e!3158445))))

(assert (=> b!5060124 (= res!2154702 (not (isEmpty!31619 (left!42807 ys!41))))))

(declare-fun b!5060125 () Bool)

(assert (=> b!5060125 (= e!3158445 (not (isEmpty!31619 (right!43137 ys!41))))))

(declare-fun b!5060126 () Bool)

(declare-fun res!2154703 () Bool)

(assert (=> b!5060126 (=> (not res!2154703) (not e!3158445))))

(assert (=> b!5060126 (= res!2154703 (<= (- (height!2135 (left!42807 ys!41)) (height!2135 (right!43137 ys!41))) 1))))

(declare-fun b!5060127 () Bool)

(declare-fun e!3158446 () Bool)

(assert (=> b!5060127 (= e!3158446 e!3158445)))

(declare-fun res!2154701 () Bool)

(assert (=> b!5060127 (=> (not res!2154701) (not e!3158445))))

(assert (=> b!5060127 (= res!2154701 (<= (- 1) (- (height!2135 (left!42807 ys!41)) (height!2135 (right!43137 ys!41)))))))

(declare-fun d!1629442 () Bool)

(declare-fun res!2154698 () Bool)

(assert (=> d!1629442 (=> res!2154698 e!3158446)))

(assert (=> d!1629442 (= res!2154698 (not ((_ is Node!15558) ys!41)))))

(assert (=> d!1629442 (= (isBalanced!4420 ys!41) e!3158446)))

(assert (= (and d!1629442 (not res!2154698)) b!5060127))

(assert (= (and b!5060127 res!2154701) b!5060126))

(assert (= (and b!5060126 res!2154703) b!5060122))

(assert (= (and b!5060122 res!2154699) b!5060123))

(assert (= (and b!5060123 res!2154700) b!5060124))

(assert (= (and b!5060124 res!2154702) b!5060125))

(declare-fun m!6097316 () Bool)

(assert (=> b!5060124 m!6097316))

(declare-fun m!6097318 () Bool)

(assert (=> b!5060126 m!6097318))

(declare-fun m!6097320 () Bool)

(assert (=> b!5060126 m!6097320))

(declare-fun m!6097322 () Bool)

(assert (=> b!5060123 m!6097322))

(declare-fun m!6097324 () Bool)

(assert (=> b!5060125 m!6097324))

(declare-fun m!6097326 () Bool)

(assert (=> b!5060122 m!6097326))

(assert (=> b!5060127 m!6097318))

(assert (=> b!5060127 m!6097320))

(assert (=> b!5059753 d!1629442))

(declare-fun d!1629444 () Bool)

(assert (=> d!1629444 (= (height!2135 xs!286) (ite ((_ is Empty!15558) xs!286) 0 (ite ((_ is Leaf!25842) xs!286) 1 (cheight!15769 xs!286))))))

(assert (=> b!5059752 d!1629444))

(declare-fun d!1629446 () Bool)

(assert (=> d!1629446 (= (height!2135 ys!41) (ite ((_ is Empty!15558) ys!41) 0 (ite ((_ is Leaf!25842) ys!41) 1 (cheight!15769 ys!41))))))

(assert (=> b!5059752 d!1629446))

(declare-fun b!5060137 () Bool)

(declare-fun e!3158451 () List!58552)

(declare-fun e!3158452 () List!58552)

(assert (=> b!5060137 (= e!3158451 e!3158452)))

(declare-fun c!868222 () Bool)

(assert (=> b!5060137 (= c!868222 ((_ is Leaf!25842) lt!2087928))))

(declare-fun b!5060138 () Bool)

(declare-fun list!18979 (IArray!31177) List!58552)

(assert (=> b!5060138 (= e!3158452 (list!18979 (xs!18896 lt!2087928)))))

(declare-fun b!5060136 () Bool)

(assert (=> b!5060136 (= e!3158451 Nil!58428)))

(declare-fun b!5060139 () Bool)

(assert (=> b!5060139 (= e!3158452 (++!12779 (list!18977 (left!42807 lt!2087928)) (list!18977 (right!43137 lt!2087928))))))

(declare-fun d!1629448 () Bool)

(declare-fun c!868221 () Bool)

(assert (=> d!1629448 (= c!868221 ((_ is Empty!15558) lt!2087928))))

(assert (=> d!1629448 (= (list!18977 lt!2087928) e!3158451)))

(assert (= (and d!1629448 c!868221) b!5060136))

(assert (= (and d!1629448 (not c!868221)) b!5060137))

(assert (= (and b!5060137 c!868222) b!5060138))

(assert (= (and b!5060137 (not c!868222)) b!5060139))

(declare-fun m!6097328 () Bool)

(assert (=> b!5060138 m!6097328))

(declare-fun m!6097330 () Bool)

(assert (=> b!5060139 m!6097330))

(declare-fun m!6097332 () Bool)

(assert (=> b!5060139 m!6097332))

(assert (=> b!5060139 m!6097330))

(assert (=> b!5060139 m!6097332))

(declare-fun m!6097334 () Bool)

(assert (=> b!5060139 m!6097334))

(assert (=> b!5059751 d!1629448))

(declare-fun d!1629450 () Bool)

(declare-fun e!3158457 () Bool)

(assert (=> d!1629450 e!3158457))

(declare-fun res!2154709 () Bool)

(assert (=> d!1629450 (=> (not res!2154709) (not e!3158457))))

(declare-fun lt!2087969 () List!58552)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10414 (List!58552) (InoxSet T!105076))

(assert (=> d!1629450 (= res!2154709 (= (content!10414 lt!2087969) ((_ map or) (content!10414 (list!18977 xs!286)) (content!10414 (list!18977 ys!41)))))))

(declare-fun e!3158458 () List!58552)

(assert (=> d!1629450 (= lt!2087969 e!3158458)))

(declare-fun c!868225 () Bool)

(assert (=> d!1629450 (= c!868225 ((_ is Nil!58428) (list!18977 xs!286)))))

(assert (=> d!1629450 (= (++!12779 (list!18977 xs!286) (list!18977 ys!41)) lt!2087969)))

(declare-fun b!5060151 () Bool)

(assert (=> b!5060151 (= e!3158457 (or (not (= (list!18977 ys!41) Nil!58428)) (= lt!2087969 (list!18977 xs!286))))))

(declare-fun b!5060150 () Bool)

(declare-fun res!2154708 () Bool)

(assert (=> b!5060150 (=> (not res!2154708) (not e!3158457))))

(assert (=> b!5060150 (= res!2154708 (= (size!39065 lt!2087969) (+ (size!39065 (list!18977 xs!286)) (size!39065 (list!18977 ys!41)))))))

(declare-fun b!5060148 () Bool)

(assert (=> b!5060148 (= e!3158458 (list!18977 ys!41))))

(declare-fun b!5060149 () Bool)

(assert (=> b!5060149 (= e!3158458 (Cons!58428 (h!64876 (list!18977 xs!286)) (++!12779 (t!371255 (list!18977 xs!286)) (list!18977 ys!41))))))

(assert (= (and d!1629450 c!868225) b!5060148))

(assert (= (and d!1629450 (not c!868225)) b!5060149))

(assert (= (and d!1629450 res!2154709) b!5060150))

(assert (= (and b!5060150 res!2154708) b!5060151))

(declare-fun m!6097336 () Bool)

(assert (=> d!1629450 m!6097336))

(assert (=> d!1629450 m!6096984))

(declare-fun m!6097338 () Bool)

(assert (=> d!1629450 m!6097338))

(assert (=> d!1629450 m!6096986))

(declare-fun m!6097340 () Bool)

(assert (=> d!1629450 m!6097340))

(declare-fun m!6097342 () Bool)

(assert (=> b!5060150 m!6097342))

(assert (=> b!5060150 m!6096984))

(declare-fun m!6097344 () Bool)

(assert (=> b!5060150 m!6097344))

(assert (=> b!5060150 m!6096986))

(declare-fun m!6097346 () Bool)

(assert (=> b!5060150 m!6097346))

(assert (=> b!5060149 m!6096986))

(declare-fun m!6097348 () Bool)

(assert (=> b!5060149 m!6097348))

(assert (=> b!5059751 d!1629450))

(declare-fun b!5060153 () Bool)

(declare-fun e!3158459 () List!58552)

(declare-fun e!3158460 () List!58552)

(assert (=> b!5060153 (= e!3158459 e!3158460)))

(declare-fun c!868227 () Bool)

(assert (=> b!5060153 (= c!868227 ((_ is Leaf!25842) xs!286))))

(declare-fun b!5060154 () Bool)

(assert (=> b!5060154 (= e!3158460 (list!18979 (xs!18896 xs!286)))))

(declare-fun b!5060152 () Bool)

(assert (=> b!5060152 (= e!3158459 Nil!58428)))

(declare-fun b!5060155 () Bool)

(assert (=> b!5060155 (= e!3158460 (++!12779 (list!18977 (left!42807 xs!286)) (list!18977 (right!43137 xs!286))))))

(declare-fun d!1629452 () Bool)

(declare-fun c!868226 () Bool)

(assert (=> d!1629452 (= c!868226 ((_ is Empty!15558) xs!286))))

(assert (=> d!1629452 (= (list!18977 xs!286) e!3158459)))

(assert (= (and d!1629452 c!868226) b!5060152))

(assert (= (and d!1629452 (not c!868226)) b!5060153))

(assert (= (and b!5060153 c!868227) b!5060154))

(assert (= (and b!5060153 (not c!868227)) b!5060155))

(declare-fun m!6097350 () Bool)

(assert (=> b!5060154 m!6097350))

(assert (=> b!5060155 m!6097062))

(assert (=> b!5060155 m!6097068))

(assert (=> b!5060155 m!6097062))

(assert (=> b!5060155 m!6097068))

(declare-fun m!6097352 () Bool)

(assert (=> b!5060155 m!6097352))

(assert (=> b!5059751 d!1629452))

(declare-fun b!5060157 () Bool)

(declare-fun e!3158461 () List!58552)

(declare-fun e!3158462 () List!58552)

(assert (=> b!5060157 (= e!3158461 e!3158462)))

(declare-fun c!868229 () Bool)

(assert (=> b!5060157 (= c!868229 ((_ is Leaf!25842) ys!41))))

(declare-fun b!5060158 () Bool)

(assert (=> b!5060158 (= e!3158462 (list!18979 (xs!18896 ys!41)))))

(declare-fun b!5060156 () Bool)

(assert (=> b!5060156 (= e!3158461 Nil!58428)))

(declare-fun b!5060159 () Bool)

(assert (=> b!5060159 (= e!3158462 (++!12779 (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))))))

(declare-fun d!1629454 () Bool)

(declare-fun c!868228 () Bool)

(assert (=> d!1629454 (= c!868228 ((_ is Empty!15558) ys!41))))

(assert (=> d!1629454 (= (list!18977 ys!41) e!3158461)))

(assert (= (and d!1629454 c!868228) b!5060156))

(assert (= (and d!1629454 (not c!868228)) b!5060157))

(assert (= (and b!5060157 c!868229) b!5060158))

(assert (= (and b!5060157 (not c!868229)) b!5060159))

(declare-fun m!6097354 () Bool)

(assert (=> b!5060158 m!6097354))

(assert (=> b!5060159 m!6097078))

(assert (=> b!5060159 m!6097074))

(assert (=> b!5060159 m!6097078))

(assert (=> b!5060159 m!6097074))

(declare-fun m!6097356 () Bool)

(assert (=> b!5060159 m!6097356))

(assert (=> b!5059751 d!1629454))

(declare-fun b!5060164 () Bool)

(declare-fun e!3158465 () Bool)

(declare-fun tp_is_empty!37039 () Bool)

(declare-fun tp!1413962 () Bool)

(assert (=> b!5060164 (= e!3158465 (and tp_is_empty!37039 tp!1413962))))

(assert (=> b!5059755 (= tp!1413934 e!3158465)))

(assert (= (and b!5059755 ((_ is Cons!58428) (innerList!15646 (xs!18896 xs!286)))) b!5060164))

(declare-fun tp!1413971 () Bool)

(declare-fun b!5060173 () Bool)

(declare-fun tp!1413970 () Bool)

(declare-fun e!3158470 () Bool)

(assert (=> b!5060173 (= e!3158470 (and (inv!77523 (left!42807 (left!42807 xs!286))) tp!1413970 (inv!77523 (right!43137 (left!42807 xs!286))) tp!1413971))))

(declare-fun b!5060175 () Bool)

(declare-fun e!3158471 () Bool)

(declare-fun tp!1413969 () Bool)

(assert (=> b!5060175 (= e!3158471 tp!1413969)))

(declare-fun b!5060174 () Bool)

(assert (=> b!5060174 (= e!3158470 (and (inv!77522 (xs!18896 (left!42807 xs!286))) e!3158471))))

(assert (=> b!5059749 (= tp!1413935 (and (inv!77523 (left!42807 xs!286)) e!3158470))))

(assert (= (and b!5059749 ((_ is Node!15558) (left!42807 xs!286))) b!5060173))

(assert (= b!5060174 b!5060175))

(assert (= (and b!5059749 ((_ is Leaf!25842) (left!42807 xs!286))) b!5060174))

(declare-fun m!6097358 () Bool)

(assert (=> b!5060173 m!6097358))

(declare-fun m!6097360 () Bool)

(assert (=> b!5060173 m!6097360))

(declare-fun m!6097362 () Bool)

(assert (=> b!5060174 m!6097362))

(assert (=> b!5059749 m!6097004))

(declare-fun b!5060176 () Bool)

(declare-fun tp!1413974 () Bool)

(declare-fun e!3158472 () Bool)

(declare-fun tp!1413973 () Bool)

(assert (=> b!5060176 (= e!3158472 (and (inv!77523 (left!42807 (right!43137 xs!286))) tp!1413973 (inv!77523 (right!43137 (right!43137 xs!286))) tp!1413974))))

(declare-fun b!5060178 () Bool)

(declare-fun e!3158473 () Bool)

(declare-fun tp!1413972 () Bool)

(assert (=> b!5060178 (= e!3158473 tp!1413972)))

(declare-fun b!5060177 () Bool)

(assert (=> b!5060177 (= e!3158472 (and (inv!77522 (xs!18896 (right!43137 xs!286))) e!3158473))))

(assert (=> b!5059749 (= tp!1413932 (and (inv!77523 (right!43137 xs!286)) e!3158472))))

(assert (= (and b!5059749 ((_ is Node!15558) (right!43137 xs!286))) b!5060176))

(assert (= b!5060177 b!5060178))

(assert (= (and b!5059749 ((_ is Leaf!25842) (right!43137 xs!286))) b!5060177))

(declare-fun m!6097364 () Bool)

(assert (=> b!5060176 m!6097364))

(declare-fun m!6097366 () Bool)

(assert (=> b!5060176 m!6097366))

(declare-fun m!6097368 () Bool)

(assert (=> b!5060177 m!6097368))

(assert (=> b!5059749 m!6097006))

(declare-fun b!5060179 () Bool)

(declare-fun e!3158474 () Bool)

(declare-fun tp!1413975 () Bool)

(assert (=> b!5060179 (= e!3158474 (and tp_is_empty!37039 tp!1413975))))

(assert (=> b!5059746 (= tp!1413937 e!3158474)))

(assert (= (and b!5059746 ((_ is Cons!58428) (innerList!15646 (xs!18896 ys!41)))) b!5060179))

(declare-fun tp!1413977 () Bool)

(declare-fun e!3158475 () Bool)

(declare-fun b!5060180 () Bool)

(declare-fun tp!1413978 () Bool)

(assert (=> b!5060180 (= e!3158475 (and (inv!77523 (left!42807 (left!42807 ys!41))) tp!1413977 (inv!77523 (right!43137 (left!42807 ys!41))) tp!1413978))))

(declare-fun b!5060182 () Bool)

(declare-fun e!3158476 () Bool)

(declare-fun tp!1413976 () Bool)

(assert (=> b!5060182 (= e!3158476 tp!1413976)))

(declare-fun b!5060181 () Bool)

(assert (=> b!5060181 (= e!3158475 (and (inv!77522 (xs!18896 (left!42807 ys!41))) e!3158476))))

(assert (=> b!5059745 (= tp!1413936 (and (inv!77523 (left!42807 ys!41)) e!3158475))))

(assert (= (and b!5059745 ((_ is Node!15558) (left!42807 ys!41))) b!5060180))

(assert (= b!5060181 b!5060182))

(assert (= (and b!5059745 ((_ is Leaf!25842) (left!42807 ys!41))) b!5060181))

(declare-fun m!6097370 () Bool)

(assert (=> b!5060180 m!6097370))

(declare-fun m!6097372 () Bool)

(assert (=> b!5060180 m!6097372))

(declare-fun m!6097374 () Bool)

(assert (=> b!5060181 m!6097374))

(assert (=> b!5059745 m!6096970))

(declare-fun b!5060183 () Bool)

(declare-fun e!3158477 () Bool)

(declare-fun tp!1413981 () Bool)

(declare-fun tp!1413980 () Bool)

(assert (=> b!5060183 (= e!3158477 (and (inv!77523 (left!42807 (right!43137 ys!41))) tp!1413980 (inv!77523 (right!43137 (right!43137 ys!41))) tp!1413981))))

(declare-fun b!5060185 () Bool)

(declare-fun e!3158478 () Bool)

(declare-fun tp!1413979 () Bool)

(assert (=> b!5060185 (= e!3158478 tp!1413979)))

(declare-fun b!5060184 () Bool)

(assert (=> b!5060184 (= e!3158477 (and (inv!77522 (xs!18896 (right!43137 ys!41))) e!3158478))))

(assert (=> b!5059745 (= tp!1413933 (and (inv!77523 (right!43137 ys!41)) e!3158477))))

(assert (= (and b!5059745 ((_ is Node!15558) (right!43137 ys!41))) b!5060183))

(assert (= b!5060184 b!5060185))

(assert (= (and b!5059745 ((_ is Leaf!25842) (right!43137 ys!41))) b!5060184))

(declare-fun m!6097376 () Bool)

(assert (=> b!5060183 m!6097376))

(declare-fun m!6097378 () Bool)

(assert (=> b!5060183 m!6097378))

(declare-fun m!6097380 () Bool)

(assert (=> b!5060184 m!6097380))

(assert (=> b!5059745 m!6096972))

(check-sat (not b!5059846) (not b!5060180) (not bm!352357) (not b!5060175) (not b!5060102) (not b!5060183) (not b!5059808) (not b!5060115) (not bm!352367) (not b!5059745) (not b!5060139) (not b!5060126) (not b!5060104) (not b!5060149) (not d!1629432) (not b!5059982) (not b!5060042) (not bm!352360) (not b!5060177) (not b!5059813) (not b!5059984) (not b!5060120) (not bm!352364) (not b!5060100) (not b!5060179) (not b!5060164) (not b!5059815) (not b!5060113) (not b!5060154) (not b!5060123) (not b!5060159) (not b!5059809) (not b!5060174) (not b!5060127) (not b!5060112) (not b!5060185) (not b!5060184) (not b!5059979) (not b!5059814) (not b!5060176) (not b!5060182) (not b!5060178) (not b!5059991) (not b!5060121) (not b!5060109) (not b!5060158) (not bm!352355) (not b!5060125) (not b!5059749) (not b!5060101) (not b!5060053) (not b!5060103) (not b!5060181) (not d!1629374) (not bm!352366) (not b!5060118) (not d!1629450) (not b!5060106) (not b!5060044) (not b!5060138) (not b!5060116) (not b!5060119) (not b!5060117) (not b!5059990) (not b!5060150) (not b!5060110) (not b!5060051) (not b!5060099) (not d!1629376) (not b!5060098) (not b!5060155) tp_is_empty!37039 (not b!5060122) (not b!5060124) (not b!5060173) (not b!5060107) (not bm!352368) (not d!1629438) (not b!5059812) (not b!5059983))
(check-sat)
(get-model)

(declare-fun d!1629642 () Bool)

(declare-fun lt!2088013 () Bool)

(declare-fun isEmpty!31621 (List!58552) Bool)

(assert (=> d!1629642 (= lt!2088013 (isEmpty!31621 (list!18977 (left!42807 ys!41))))))

(assert (=> d!1629642 (= lt!2088013 (= (size!39064 (left!42807 ys!41)) 0))))

(assert (=> d!1629642 (= (isEmpty!31619 (left!42807 ys!41)) lt!2088013)))

(declare-fun bs!1189602 () Bool)

(assert (= bs!1189602 d!1629642))

(assert (=> bs!1189602 m!6097078))

(assert (=> bs!1189602 m!6097078))

(declare-fun m!6097952 () Bool)

(assert (=> bs!1189602 m!6097952))

(declare-fun m!6097954 () Bool)

(assert (=> bs!1189602 m!6097954))

(assert (=> b!5060124 d!1629642))

(assert (=> b!5060102 d!1629428))

(assert (=> b!5060102 d!1629430))

(declare-fun d!1629644 () Bool)

(declare-fun res!2154836 () Bool)

(declare-fun e!3158634 () Bool)

(assert (=> d!1629644 (=> (not res!2154836) (not e!3158634))))

(assert (=> d!1629644 (= res!2154836 (= (csize!31346 (left!42807 ys!41)) (+ (size!39064 (left!42807 (left!42807 ys!41))) (size!39064 (right!43137 (left!42807 ys!41))))))))

(assert (=> d!1629644 (= (inv!77526 (left!42807 ys!41)) e!3158634)))

(declare-fun b!5060490 () Bool)

(declare-fun res!2154837 () Bool)

(assert (=> b!5060490 (=> (not res!2154837) (not e!3158634))))

(assert (=> b!5060490 (= res!2154837 (and (not (= (left!42807 (left!42807 ys!41)) Empty!15558)) (not (= (right!43137 (left!42807 ys!41)) Empty!15558))))))

(declare-fun b!5060491 () Bool)

(declare-fun res!2154838 () Bool)

(assert (=> b!5060491 (=> (not res!2154838) (not e!3158634))))

(assert (=> b!5060491 (= res!2154838 (= (cheight!15769 (left!42807 ys!41)) (+ (max!0 (height!2135 (left!42807 (left!42807 ys!41))) (height!2135 (right!43137 (left!42807 ys!41)))) 1)))))

(declare-fun b!5060492 () Bool)

(assert (=> b!5060492 (= e!3158634 (<= 0 (cheight!15769 (left!42807 ys!41))))))

(assert (= (and d!1629644 res!2154836) b!5060490))

(assert (= (and b!5060490 res!2154837) b!5060491))

(assert (= (and b!5060491 res!2154838) b!5060492))

(declare-fun m!6097956 () Bool)

(assert (=> d!1629644 m!6097956))

(declare-fun m!6097958 () Bool)

(assert (=> d!1629644 m!6097958))

(declare-fun m!6097960 () Bool)

(assert (=> b!5060491 m!6097960))

(declare-fun m!6097962 () Bool)

(assert (=> b!5060491 m!6097962))

(assert (=> b!5060491 m!6097960))

(assert (=> b!5060491 m!6097962))

(declare-fun m!6097964 () Bool)

(assert (=> b!5060491 m!6097964))

(assert (=> b!5060110 d!1629644))

(declare-fun d!1629646 () Bool)

(declare-fun lt!2088016 () Int)

(assert (=> d!1629646 (>= lt!2088016 0)))

(declare-fun e!3158637 () Int)

(assert (=> d!1629646 (= lt!2088016 e!3158637)))

(declare-fun c!868306 () Bool)

(assert (=> d!1629646 (= c!868306 ((_ is Nil!58428) (innerList!15646 (xs!18896 ys!41))))))

(assert (=> d!1629646 (= (size!39065 (innerList!15646 (xs!18896 ys!41))) lt!2088016)))

(declare-fun b!5060497 () Bool)

(assert (=> b!5060497 (= e!3158637 0)))

(declare-fun b!5060498 () Bool)

(assert (=> b!5060498 (= e!3158637 (+ 1 (size!39065 (t!371255 (innerList!15646 (xs!18896 ys!41))))))))

(assert (= (and d!1629646 c!868306) b!5060497))

(assert (= (and d!1629646 (not c!868306)) b!5060498))

(declare-fun m!6097966 () Bool)

(assert (=> b!5060498 m!6097966))

(assert (=> d!1629438 d!1629646))

(declare-fun b!5060499 () Bool)

(declare-fun res!2154840 () Bool)

(declare-fun e!3158638 () Bool)

(assert (=> b!5060499 (=> (not res!2154840) (not e!3158638))))

(assert (=> b!5060499 (= res!2154840 (isBalanced!4420 (left!42807 (left!42807 ys!41))))))

(declare-fun b!5060500 () Bool)

(declare-fun res!2154841 () Bool)

(assert (=> b!5060500 (=> (not res!2154841) (not e!3158638))))

(assert (=> b!5060500 (= res!2154841 (isBalanced!4420 (right!43137 (left!42807 ys!41))))))

(declare-fun b!5060501 () Bool)

(declare-fun res!2154843 () Bool)

(assert (=> b!5060501 (=> (not res!2154843) (not e!3158638))))

(assert (=> b!5060501 (= res!2154843 (not (isEmpty!31619 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5060502 () Bool)

(assert (=> b!5060502 (= e!3158638 (not (isEmpty!31619 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5060503 () Bool)

(declare-fun res!2154844 () Bool)

(assert (=> b!5060503 (=> (not res!2154844) (not e!3158638))))

(assert (=> b!5060503 (= res!2154844 (<= (- (height!2135 (left!42807 (left!42807 ys!41))) (height!2135 (right!43137 (left!42807 ys!41)))) 1))))

(declare-fun b!5060504 () Bool)

(declare-fun e!3158639 () Bool)

(assert (=> b!5060504 (= e!3158639 e!3158638)))

(declare-fun res!2154842 () Bool)

(assert (=> b!5060504 (=> (not res!2154842) (not e!3158638))))

(assert (=> b!5060504 (= res!2154842 (<= (- 1) (- (height!2135 (left!42807 (left!42807 ys!41))) (height!2135 (right!43137 (left!42807 ys!41))))))))

(declare-fun d!1629648 () Bool)

(declare-fun res!2154839 () Bool)

(assert (=> d!1629648 (=> res!2154839 e!3158639)))

(assert (=> d!1629648 (= res!2154839 (not ((_ is Node!15558) (left!42807 ys!41))))))

(assert (=> d!1629648 (= (isBalanced!4420 (left!42807 ys!41)) e!3158639)))

(assert (= (and d!1629648 (not res!2154839)) b!5060504))

(assert (= (and b!5060504 res!2154842) b!5060503))

(assert (= (and b!5060503 res!2154844) b!5060499))

(assert (= (and b!5060499 res!2154840) b!5060500))

(assert (= (and b!5060500 res!2154841) b!5060501))

(assert (= (and b!5060501 res!2154843) b!5060502))

(declare-fun m!6097968 () Bool)

(assert (=> b!5060501 m!6097968))

(assert (=> b!5060503 m!6097960))

(assert (=> b!5060503 m!6097962))

(declare-fun m!6097970 () Bool)

(assert (=> b!5060500 m!6097970))

(declare-fun m!6097972 () Bool)

(assert (=> b!5060502 m!6097972))

(declare-fun m!6097974 () Bool)

(assert (=> b!5060499 m!6097974))

(assert (=> b!5060504 m!6097960))

(assert (=> b!5060504 m!6097962))

(assert (=> b!5060122 d!1629648))

(declare-fun d!1629650 () Bool)

(declare-fun lt!2088017 () Bool)

(assert (=> d!1629650 (= lt!2088017 (isEmpty!31621 (list!18977 (left!42807 xs!286))))))

(assert (=> d!1629650 (= lt!2088017 (= (size!39064 (left!42807 xs!286)) 0))))

(assert (=> d!1629650 (= (isEmpty!31619 (left!42807 xs!286)) lt!2088017)))

(declare-fun bs!1189603 () Bool)

(assert (= bs!1189603 d!1629650))

(assert (=> bs!1189603 m!6097062))

(assert (=> bs!1189603 m!6097062))

(declare-fun m!6097976 () Bool)

(assert (=> bs!1189603 m!6097976))

(assert (=> bs!1189603 m!6097090))

(assert (=> b!5060100 d!1629650))

(assert (=> b!5059984 d!1629442))

(declare-fun d!1629652 () Bool)

(assert (=> d!1629652 (= (height!2135 (left!42807 lt!2087928)) (ite ((_ is Empty!15558) (left!42807 lt!2087928)) 0 (ite ((_ is Leaf!25842) (left!42807 lt!2087928)) 1 (cheight!15769 (left!42807 lt!2087928)))))))

(assert (=> b!5060121 d!1629652))

(declare-fun d!1629654 () Bool)

(assert (=> d!1629654 (= (height!2135 (right!43137 lt!2087928)) (ite ((_ is Empty!15558) (right!43137 lt!2087928)) 0 (ite ((_ is Leaf!25842) (right!43137 lt!2087928)) 1 (cheight!15769 (right!43137 lt!2087928)))))))

(assert (=> b!5060121 d!1629654))

(declare-fun b!5060505 () Bool)

(declare-fun res!2154846 () Bool)

(declare-fun e!3158640 () Bool)

(assert (=> b!5060505 (=> (not res!2154846) (not e!3158640))))

(assert (=> b!5060505 (= res!2154846 (isBalanced!4420 (left!42807 (left!42807 xs!286))))))

(declare-fun b!5060506 () Bool)

(declare-fun res!2154847 () Bool)

(assert (=> b!5060506 (=> (not res!2154847) (not e!3158640))))

(assert (=> b!5060506 (= res!2154847 (isBalanced!4420 (right!43137 (left!42807 xs!286))))))

(declare-fun b!5060507 () Bool)

(declare-fun res!2154849 () Bool)

(assert (=> b!5060507 (=> (not res!2154849) (not e!3158640))))

(assert (=> b!5060507 (= res!2154849 (not (isEmpty!31619 (left!42807 (left!42807 xs!286)))))))

(declare-fun b!5060508 () Bool)

(assert (=> b!5060508 (= e!3158640 (not (isEmpty!31619 (right!43137 (left!42807 xs!286)))))))

(declare-fun b!5060509 () Bool)

(declare-fun res!2154850 () Bool)

(assert (=> b!5060509 (=> (not res!2154850) (not e!3158640))))

(assert (=> b!5060509 (= res!2154850 (<= (- (height!2135 (left!42807 (left!42807 xs!286))) (height!2135 (right!43137 (left!42807 xs!286)))) 1))))

(declare-fun b!5060510 () Bool)

(declare-fun e!3158641 () Bool)

(assert (=> b!5060510 (= e!3158641 e!3158640)))

(declare-fun res!2154848 () Bool)

(assert (=> b!5060510 (=> (not res!2154848) (not e!3158640))))

(assert (=> b!5060510 (= res!2154848 (<= (- 1) (- (height!2135 (left!42807 (left!42807 xs!286))) (height!2135 (right!43137 (left!42807 xs!286))))))))

(declare-fun d!1629656 () Bool)

(declare-fun res!2154845 () Bool)

(assert (=> d!1629656 (=> res!2154845 e!3158641)))

(assert (=> d!1629656 (= res!2154845 (not ((_ is Node!15558) (left!42807 xs!286))))))

(assert (=> d!1629656 (= (isBalanced!4420 (left!42807 xs!286)) e!3158641)))

(assert (= (and d!1629656 (not res!2154845)) b!5060510))

(assert (= (and b!5060510 res!2154848) b!5060509))

(assert (= (and b!5060509 res!2154850) b!5060505))

(assert (= (and b!5060505 res!2154846) b!5060506))

(assert (= (and b!5060506 res!2154847) b!5060507))

(assert (= (and b!5060507 res!2154849) b!5060508))

(declare-fun m!6097978 () Bool)

(assert (=> b!5060507 m!6097978))

(declare-fun m!6097980 () Bool)

(assert (=> b!5060509 m!6097980))

(declare-fun m!6097982 () Bool)

(assert (=> b!5060509 m!6097982))

(declare-fun m!6097984 () Bool)

(assert (=> b!5060506 m!6097984))

(declare-fun m!6097986 () Bool)

(assert (=> b!5060508 m!6097986))

(declare-fun m!6097988 () Bool)

(assert (=> b!5060505 m!6097988))

(assert (=> b!5060510 m!6097980))

(assert (=> b!5060510 m!6097982))

(assert (=> b!5060098 d!1629656))

(assert (=> b!5059815 d!1629454))

(declare-fun b!5060512 () Bool)

(declare-fun e!3158642 () List!58552)

(declare-fun e!3158643 () List!58552)

(assert (=> b!5060512 (= e!3158642 e!3158643)))

(declare-fun c!868308 () Bool)

(assert (=> b!5060512 (= c!868308 ((_ is Leaf!25842) (left!42807 xs!286)))))

(declare-fun b!5060513 () Bool)

(assert (=> b!5060513 (= e!3158643 (list!18979 (xs!18896 (left!42807 xs!286))))))

(declare-fun b!5060511 () Bool)

(assert (=> b!5060511 (= e!3158642 Nil!58428)))

(declare-fun b!5060514 () Bool)

(assert (=> b!5060514 (= e!3158643 (++!12779 (list!18977 (left!42807 (left!42807 xs!286))) (list!18977 (right!43137 (left!42807 xs!286)))))))

(declare-fun d!1629658 () Bool)

(declare-fun c!868307 () Bool)

(assert (=> d!1629658 (= c!868307 ((_ is Empty!15558) (left!42807 xs!286)))))

(assert (=> d!1629658 (= (list!18977 (left!42807 xs!286)) e!3158642)))

(assert (= (and d!1629658 c!868307) b!5060511))

(assert (= (and d!1629658 (not c!868307)) b!5060512))

(assert (= (and b!5060512 c!868308) b!5060513))

(assert (= (and b!5060512 (not c!868308)) b!5060514))

(declare-fun m!6097990 () Bool)

(assert (=> b!5060513 m!6097990))

(declare-fun m!6097992 () Bool)

(assert (=> b!5060514 m!6097992))

(declare-fun m!6097994 () Bool)

(assert (=> b!5060514 m!6097994))

(assert (=> b!5060514 m!6097992))

(assert (=> b!5060514 m!6097994))

(declare-fun m!6097996 () Bool)

(assert (=> b!5060514 m!6097996))

(assert (=> b!5059815 d!1629658))

(declare-fun b!5060516 () Bool)

(declare-fun e!3158644 () List!58552)

(declare-fun e!3158645 () List!58552)

(assert (=> b!5060516 (= e!3158644 e!3158645)))

(declare-fun c!868310 () Bool)

(assert (=> b!5060516 (= c!868310 ((_ is Leaf!25842) (right!43137 (right!43137 xs!286))))))

(declare-fun b!5060517 () Bool)

(assert (=> b!5060517 (= e!3158645 (list!18979 (xs!18896 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5060515 () Bool)

(assert (=> b!5060515 (= e!3158644 Nil!58428)))

(declare-fun b!5060518 () Bool)

(assert (=> b!5060518 (= e!3158645 (++!12779 (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) (list!18977 (right!43137 (right!43137 (right!43137 xs!286))))))))

(declare-fun d!1629660 () Bool)

(declare-fun c!868309 () Bool)

(assert (=> d!1629660 (= c!868309 ((_ is Empty!15558) (right!43137 (right!43137 xs!286))))))

(assert (=> d!1629660 (= (list!18977 (right!43137 (right!43137 xs!286))) e!3158644)))

(assert (= (and d!1629660 c!868309) b!5060515))

(assert (= (and d!1629660 (not c!868309)) b!5060516))

(assert (= (and b!5060516 c!868310) b!5060517))

(assert (= (and b!5060516 (not c!868310)) b!5060518))

(declare-fun m!6097998 () Bool)

(assert (=> b!5060517 m!6097998))

(declare-fun m!6098000 () Bool)

(assert (=> b!5060518 m!6098000))

(declare-fun m!6098002 () Bool)

(assert (=> b!5060518 m!6098002))

(assert (=> b!5060518 m!6098000))

(assert (=> b!5060518 m!6098002))

(declare-fun m!6098004 () Bool)

(assert (=> b!5060518 m!6098004))

(assert (=> b!5059815 d!1629660))

(declare-fun bm!352425 () Bool)

(declare-fun call!352431 () List!58552)

(assert (=> bm!352425 (= call!352431 (++!12779 (list!18977 (left!42807 xs!286)) (list!18977 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5060523 () Bool)

(declare-fun e!3158648 () Bool)

(declare-fun call!352432 () List!58552)

(declare-fun call!352430 () List!58552)

(assert (=> b!5060523 (= e!3158648 (= call!352432 call!352430))))

(declare-fun bm!352426 () Bool)

(declare-fun call!352433 () List!58552)

(assert (=> bm!352426 (= call!352433 (++!12779 (list!18977 (left!42807 (right!43137 xs!286))) (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))

(declare-fun b!5060524 () Bool)

(assert (=> b!5060524 (= e!3158648 (= call!352432 call!352430))))

(declare-fun lt!2088020 () Bool)

(assert (=> b!5060524 (= lt!2088020 (appendAssoc!298 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (left!42807 (right!43137 xs!286))) (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))

(declare-fun bm!352427 () Bool)

(assert (=> bm!352427 (= call!352432 (++!12779 call!352431 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))

(declare-fun d!1629662 () Bool)

(assert (=> d!1629662 e!3158648))

(declare-fun c!868313 () Bool)

(assert (=> d!1629662 (= c!868313 ((_ is Nil!58428) (list!18977 (left!42807 xs!286))))))

(assert (=> d!1629662 (= (appendAssoc!298 (list!18977 (left!42807 xs!286)) (list!18977 (left!42807 (right!43137 xs!286))) (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))) true)))

(declare-fun bm!352428 () Bool)

(assert (=> bm!352428 (= call!352430 (++!12779 (list!18977 (left!42807 xs!286)) call!352433))))

(assert (= (and d!1629662 c!868313) b!5060523))

(assert (= (and d!1629662 (not c!868313)) b!5060524))

(assert (= (or b!5060523 b!5060524) bm!352425))

(assert (= (or b!5060523 b!5060524) bm!352426))

(assert (= (or b!5060523 b!5060524) bm!352428))

(assert (= (or b!5060523 b!5060524) bm!352427))

(assert (=> bm!352428 m!6097062))

(declare-fun m!6098006 () Bool)

(assert (=> bm!352428 m!6098006))

(assert (=> bm!352425 m!6097062))

(assert (=> bm!352425 m!6097056))

(declare-fun m!6098008 () Bool)

(assert (=> bm!352425 m!6098008))

(assert (=> bm!352426 m!6097056))

(assert (=> bm!352426 m!6097064))

(declare-fun m!6098010 () Bool)

(assert (=> bm!352426 m!6098010))

(assert (=> bm!352427 m!6097064))

(declare-fun m!6098012 () Bool)

(assert (=> bm!352427 m!6098012))

(assert (=> b!5060524 m!6097056))

(assert (=> b!5060524 m!6097064))

(declare-fun m!6098014 () Bool)

(assert (=> b!5060524 m!6098014))

(assert (=> b!5059815 d!1629662))

(declare-fun b!5060526 () Bool)

(declare-fun e!3158649 () List!58552)

(declare-fun e!3158650 () List!58552)

(assert (=> b!5060526 (= e!3158649 e!3158650)))

(declare-fun c!868315 () Bool)

(assert (=> b!5060526 (= c!868315 ((_ is Leaf!25842) (left!42807 (right!43137 xs!286))))))

(declare-fun b!5060527 () Bool)

(assert (=> b!5060527 (= e!3158650 (list!18979 (xs!18896 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5060525 () Bool)

(assert (=> b!5060525 (= e!3158649 Nil!58428)))

(declare-fun b!5060528 () Bool)

(assert (=> b!5060528 (= e!3158650 (++!12779 (list!18977 (left!42807 (left!42807 (right!43137 xs!286)))) (list!18977 (right!43137 (left!42807 (right!43137 xs!286))))))))

(declare-fun d!1629664 () Bool)

(declare-fun c!868314 () Bool)

(assert (=> d!1629664 (= c!868314 ((_ is Empty!15558) (left!42807 (right!43137 xs!286))))))

(assert (=> d!1629664 (= (list!18977 (left!42807 (right!43137 xs!286))) e!3158649)))

(assert (= (and d!1629664 c!868314) b!5060525))

(assert (= (and d!1629664 (not c!868314)) b!5060526))

(assert (= (and b!5060526 c!868315) b!5060527))

(assert (= (and b!5060526 (not c!868315)) b!5060528))

(declare-fun m!6098016 () Bool)

(assert (=> b!5060527 m!6098016))

(declare-fun m!6098018 () Bool)

(assert (=> b!5060528 m!6098018))

(declare-fun m!6098020 () Bool)

(assert (=> b!5060528 m!6098020))

(assert (=> b!5060528 m!6098018))

(assert (=> b!5060528 m!6098020))

(declare-fun m!6098022 () Bool)

(assert (=> b!5060528 m!6098022))

(assert (=> b!5059815 d!1629664))

(declare-fun d!1629666 () Bool)

(declare-fun e!3158651 () Bool)

(assert (=> d!1629666 e!3158651))

(declare-fun res!2154852 () Bool)

(assert (=> d!1629666 (=> (not res!2154852) (not e!3158651))))

(declare-fun lt!2088021 () List!58552)

(assert (=> d!1629666 (= res!2154852 (= (content!10414 lt!2088021) ((_ map or) (content!10414 (list!18977 (right!43137 (right!43137 xs!286)))) (content!10414 (list!18977 ys!41)))))))

(declare-fun e!3158652 () List!58552)

(assert (=> d!1629666 (= lt!2088021 e!3158652)))

(declare-fun c!868316 () Bool)

(assert (=> d!1629666 (= c!868316 ((_ is Nil!58428) (list!18977 (right!43137 (right!43137 xs!286)))))))

(assert (=> d!1629666 (= (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)) lt!2088021)))

(declare-fun b!5060532 () Bool)

(assert (=> b!5060532 (= e!3158651 (or (not (= (list!18977 ys!41) Nil!58428)) (= lt!2088021 (list!18977 (right!43137 (right!43137 xs!286))))))))

(declare-fun b!5060531 () Bool)

(declare-fun res!2154851 () Bool)

(assert (=> b!5060531 (=> (not res!2154851) (not e!3158651))))

(assert (=> b!5060531 (= res!2154851 (= (size!39065 lt!2088021) (+ (size!39065 (list!18977 (right!43137 (right!43137 xs!286)))) (size!39065 (list!18977 ys!41)))))))

(declare-fun b!5060529 () Bool)

(assert (=> b!5060529 (= e!3158652 (list!18977 ys!41))))

(declare-fun b!5060530 () Bool)

(assert (=> b!5060530 (= e!3158652 (Cons!58428 (h!64876 (list!18977 (right!43137 (right!43137 xs!286)))) (++!12779 (t!371255 (list!18977 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41))))))

(assert (= (and d!1629666 c!868316) b!5060529))

(assert (= (and d!1629666 (not c!868316)) b!5060530))

(assert (= (and d!1629666 res!2154852) b!5060531))

(assert (= (and b!5060531 res!2154851) b!5060532))

(declare-fun m!6098024 () Bool)

(assert (=> d!1629666 m!6098024))

(assert (=> d!1629666 m!6097058))

(declare-fun m!6098026 () Bool)

(assert (=> d!1629666 m!6098026))

(assert (=> d!1629666 m!6096986))

(assert (=> d!1629666 m!6097340))

(declare-fun m!6098028 () Bool)

(assert (=> b!5060531 m!6098028))

(assert (=> b!5060531 m!6097058))

(declare-fun m!6098030 () Bool)

(assert (=> b!5060531 m!6098030))

(assert (=> b!5060531 m!6096986))

(assert (=> b!5060531 m!6097346))

(assert (=> b!5060530 m!6096986))

(declare-fun m!6098032 () Bool)

(assert (=> b!5060530 m!6098032))

(assert (=> b!5059815 d!1629666))

(declare-fun d!1629668 () Bool)

(declare-fun lt!2088022 () Bool)

(assert (=> d!1629668 (= lt!2088022 (isEmpty!31621 (list!18977 (right!43137 lt!2087928))))))

(assert (=> d!1629668 (= lt!2088022 (= (size!39064 (right!43137 lt!2087928)) 0))))

(assert (=> d!1629668 (= (isEmpty!31619 (right!43137 lt!2087928)) lt!2088022)))

(declare-fun bs!1189604 () Bool)

(assert (= bs!1189604 d!1629668))

(assert (=> bs!1189604 m!6097332))

(assert (=> bs!1189604 m!6097332))

(declare-fun m!6098034 () Bool)

(assert (=> bs!1189604 m!6098034))

(declare-fun m!6098036 () Bool)

(assert (=> bs!1189604 m!6098036))

(assert (=> b!5060119 d!1629668))

(declare-fun d!1629670 () Bool)

(assert (=> d!1629670 (= (height!2135 (ite c!868195 (right!43137 (right!43137 xs!286)) lt!2087964)) (ite ((_ is Empty!15558) (ite c!868195 (right!43137 (right!43137 xs!286)) lt!2087964)) 0 (ite ((_ is Leaf!25842) (ite c!868195 (right!43137 (right!43137 xs!286)) lt!2087964)) 1 (cheight!15769 (ite c!868195 (right!43137 (right!43137 xs!286)) lt!2087964)))))))

(assert (=> bm!352367 d!1629670))

(declare-fun b!5060533 () Bool)

(declare-fun res!2154854 () Bool)

(declare-fun e!3158653 () Bool)

(assert (=> b!5060533 (=> (not res!2154854) (not e!3158653))))

(assert (=> b!5060533 (= res!2154854 (isBalanced!4420 (left!42807 lt!2087966)))))

(declare-fun b!5060534 () Bool)

(declare-fun res!2154855 () Bool)

(assert (=> b!5060534 (=> (not res!2154855) (not e!3158653))))

(assert (=> b!5060534 (= res!2154855 (isBalanced!4420 (right!43137 lt!2087966)))))

(declare-fun b!5060535 () Bool)

(declare-fun res!2154857 () Bool)

(assert (=> b!5060535 (=> (not res!2154857) (not e!3158653))))

(assert (=> b!5060535 (= res!2154857 (not (isEmpty!31619 (left!42807 lt!2087966))))))

(declare-fun b!5060536 () Bool)

(assert (=> b!5060536 (= e!3158653 (not (isEmpty!31619 (right!43137 lt!2087966))))))

(declare-fun b!5060537 () Bool)

(declare-fun res!2154858 () Bool)

(assert (=> b!5060537 (=> (not res!2154858) (not e!3158653))))

(assert (=> b!5060537 (= res!2154858 (<= (- (height!2135 (left!42807 lt!2087966)) (height!2135 (right!43137 lt!2087966))) 1))))

(declare-fun b!5060538 () Bool)

(declare-fun e!3158654 () Bool)

(assert (=> b!5060538 (= e!3158654 e!3158653)))

(declare-fun res!2154856 () Bool)

(assert (=> b!5060538 (=> (not res!2154856) (not e!3158653))))

(assert (=> b!5060538 (= res!2154856 (<= (- 1) (- (height!2135 (left!42807 lt!2087966)) (height!2135 (right!43137 lt!2087966)))))))

(declare-fun d!1629672 () Bool)

(declare-fun res!2154853 () Bool)

(assert (=> d!1629672 (=> res!2154853 e!3158654)))

(assert (=> d!1629672 (= res!2154853 (not ((_ is Node!15558) lt!2087966)))))

(assert (=> d!1629672 (= (isBalanced!4420 lt!2087966) e!3158654)))

(assert (= (and d!1629672 (not res!2154853)) b!5060538))

(assert (= (and b!5060538 res!2154856) b!5060537))

(assert (= (and b!5060537 res!2154858) b!5060533))

(assert (= (and b!5060533 res!2154854) b!5060534))

(assert (= (and b!5060534 res!2154855) b!5060535))

(assert (= (and b!5060535 res!2154857) b!5060536))

(declare-fun m!6098038 () Bool)

(assert (=> b!5060535 m!6098038))

(declare-fun m!6098040 () Bool)

(assert (=> b!5060537 m!6098040))

(declare-fun m!6098042 () Bool)

(assert (=> b!5060537 m!6098042))

(declare-fun m!6098044 () Bool)

(assert (=> b!5060534 m!6098044))

(declare-fun m!6098046 () Bool)

(assert (=> b!5060536 m!6098046))

(declare-fun m!6098048 () Bool)

(assert (=> b!5060533 m!6098048))

(assert (=> b!5060538 m!6098040))

(assert (=> b!5060538 m!6098042))

(assert (=> b!5059982 d!1629672))

(declare-fun bm!352429 () Bool)

(declare-fun call!352435 () List!58552)

(assert (=> bm!352429 (= call!352435 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5060539 () Bool)

(declare-fun e!3158655 () Bool)

(declare-fun call!352436 () List!58552)

(declare-fun call!352434 () List!58552)

(assert (=> b!5060539 (= e!3158655 (= call!352436 call!352434))))

(declare-fun bm!352430 () Bool)

(declare-fun call!352437 () List!58552)

(assert (=> bm!352430 (= call!352437 (++!12779 (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5060540 () Bool)

(assert (=> b!5060540 (= e!3158655 (= call!352436 call!352434))))

(declare-fun lt!2088023 () Bool)

(assert (=> b!5060540 (= lt!2088023 (appendAssoc!298 (t!371255 (list!18977 xs!286)) (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun bm!352431 () Bool)

(assert (=> bm!352431 (= call!352436 (++!12779 call!352435 (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun d!1629674 () Bool)

(assert (=> d!1629674 e!3158655))

(declare-fun c!868317 () Bool)

(assert (=> d!1629674 (= c!868317 ((_ is Nil!58428) (list!18977 xs!286)))))

(assert (=> d!1629674 (= (appendAssoc!298 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))) true)))

(declare-fun bm!352432 () Bool)

(assert (=> bm!352432 (= call!352434 (++!12779 (list!18977 xs!286) call!352437))))

(assert (= (and d!1629674 c!868317) b!5060539))

(assert (= (and d!1629674 (not c!868317)) b!5060540))

(assert (= (or b!5060539 b!5060540) bm!352429))

(assert (= (or b!5060539 b!5060540) bm!352430))

(assert (= (or b!5060539 b!5060540) bm!352432))

(assert (= (or b!5060539 b!5060540) bm!352431))

(assert (=> bm!352432 m!6096984))

(declare-fun m!6098050 () Bool)

(assert (=> bm!352432 m!6098050))

(assert (=> bm!352429 m!6096984))

(assert (=> bm!352429 m!6097050))

(assert (=> bm!352429 m!6097072))

(assert (=> bm!352430 m!6097050))

(assert (=> bm!352430 m!6097052))

(declare-fun m!6098052 () Bool)

(assert (=> bm!352430 m!6098052))

(assert (=> bm!352431 m!6097052))

(declare-fun m!6098054 () Bool)

(assert (=> bm!352431 m!6098054))

(assert (=> b!5060540 m!6097050))

(assert (=> b!5060540 m!6097052))

(declare-fun m!6098056 () Bool)

(assert (=> b!5060540 m!6098056))

(assert (=> b!5059813 d!1629674))

(assert (=> b!5059813 d!1629452))

(declare-fun b!5060542 () Bool)

(declare-fun e!3158656 () List!58552)

(declare-fun e!3158657 () List!58552)

(assert (=> b!5060542 (= e!3158656 e!3158657)))

(declare-fun c!868319 () Bool)

(assert (=> b!5060542 (= c!868319 ((_ is Leaf!25842) (left!42807 (left!42807 ys!41))))))

(declare-fun b!5060543 () Bool)

(assert (=> b!5060543 (= e!3158657 (list!18979 (xs!18896 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5060541 () Bool)

(assert (=> b!5060541 (= e!3158656 Nil!58428)))

(declare-fun b!5060544 () Bool)

(assert (=> b!5060544 (= e!3158657 (++!12779 (list!18977 (left!42807 (left!42807 (left!42807 ys!41)))) (list!18977 (right!43137 (left!42807 (left!42807 ys!41))))))))

(declare-fun d!1629676 () Bool)

(declare-fun c!868318 () Bool)

(assert (=> d!1629676 (= c!868318 ((_ is Empty!15558) (left!42807 (left!42807 ys!41))))))

(assert (=> d!1629676 (= (list!18977 (left!42807 (left!42807 ys!41))) e!3158656)))

(assert (= (and d!1629676 c!868318) b!5060541))

(assert (= (and d!1629676 (not c!868318)) b!5060542))

(assert (= (and b!5060542 c!868319) b!5060543))

(assert (= (and b!5060542 (not c!868319)) b!5060544))

(declare-fun m!6098058 () Bool)

(assert (=> b!5060543 m!6098058))

(declare-fun m!6098060 () Bool)

(assert (=> b!5060544 m!6098060))

(declare-fun m!6098062 () Bool)

(assert (=> b!5060544 m!6098062))

(assert (=> b!5060544 m!6098060))

(assert (=> b!5060544 m!6098062))

(declare-fun m!6098064 () Bool)

(assert (=> b!5060544 m!6098064))

(assert (=> b!5059813 d!1629676))

(declare-fun b!5060546 () Bool)

(declare-fun e!3158658 () List!58552)

(declare-fun e!3158659 () List!58552)

(assert (=> b!5060546 (= e!3158658 e!3158659)))

(declare-fun c!868321 () Bool)

(assert (=> b!5060546 (= c!868321 ((_ is Leaf!25842) (right!43137 (left!42807 ys!41))))))

(declare-fun b!5060547 () Bool)

(assert (=> b!5060547 (= e!3158659 (list!18979 (xs!18896 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5060545 () Bool)

(assert (=> b!5060545 (= e!3158658 Nil!58428)))

(declare-fun b!5060548 () Bool)

(assert (=> b!5060548 (= e!3158659 (++!12779 (list!18977 (left!42807 (right!43137 (left!42807 ys!41)))) (list!18977 (right!43137 (right!43137 (left!42807 ys!41))))))))

(declare-fun d!1629678 () Bool)

(declare-fun c!868320 () Bool)

(assert (=> d!1629678 (= c!868320 ((_ is Empty!15558) (right!43137 (left!42807 ys!41))))))

(assert (=> d!1629678 (= (list!18977 (right!43137 (left!42807 ys!41))) e!3158658)))

(assert (= (and d!1629678 c!868320) b!5060545))

(assert (= (and d!1629678 (not c!868320)) b!5060546))

(assert (= (and b!5060546 c!868321) b!5060547))

(assert (= (and b!5060546 (not c!868321)) b!5060548))

(declare-fun m!6098066 () Bool)

(assert (=> b!5060547 m!6098066))

(declare-fun m!6098068 () Bool)

(assert (=> b!5060548 m!6098068))

(declare-fun m!6098070 () Bool)

(assert (=> b!5060548 m!6098070))

(assert (=> b!5060548 m!6098068))

(assert (=> b!5060548 m!6098070))

(declare-fun m!6098072 () Bool)

(assert (=> b!5060548 m!6098072))

(assert (=> b!5059813 d!1629678))

(declare-fun d!1629680 () Bool)

(declare-fun c!868322 () Bool)

(assert (=> d!1629680 (= c!868322 ((_ is Node!15558) (left!42807 (right!43137 ys!41))))))

(declare-fun e!3158660 () Bool)

(assert (=> d!1629680 (= (inv!77523 (left!42807 (right!43137 ys!41))) e!3158660)))

(declare-fun b!5060549 () Bool)

(assert (=> b!5060549 (= e!3158660 (inv!77526 (left!42807 (right!43137 ys!41))))))

(declare-fun b!5060550 () Bool)

(declare-fun e!3158661 () Bool)

(assert (=> b!5060550 (= e!3158660 e!3158661)))

(declare-fun res!2154859 () Bool)

(assert (=> b!5060550 (= res!2154859 (not ((_ is Leaf!25842) (left!42807 (right!43137 ys!41)))))))

(assert (=> b!5060550 (=> res!2154859 e!3158661)))

(declare-fun b!5060551 () Bool)

(assert (=> b!5060551 (= e!3158661 (inv!77527 (left!42807 (right!43137 ys!41))))))

(assert (= (and d!1629680 c!868322) b!5060549))

(assert (= (and d!1629680 (not c!868322)) b!5060550))

(assert (= (and b!5060550 (not res!2154859)) b!5060551))

(declare-fun m!6098074 () Bool)

(assert (=> b!5060549 m!6098074))

(declare-fun m!6098076 () Bool)

(assert (=> b!5060551 m!6098076))

(assert (=> b!5060183 d!1629680))

(declare-fun d!1629682 () Bool)

(declare-fun c!868323 () Bool)

(assert (=> d!1629682 (= c!868323 ((_ is Node!15558) (right!43137 (right!43137 ys!41))))))

(declare-fun e!3158662 () Bool)

(assert (=> d!1629682 (= (inv!77523 (right!43137 (right!43137 ys!41))) e!3158662)))

(declare-fun b!5060552 () Bool)

(assert (=> b!5060552 (= e!3158662 (inv!77526 (right!43137 (right!43137 ys!41))))))

(declare-fun b!5060553 () Bool)

(declare-fun e!3158663 () Bool)

(assert (=> b!5060553 (= e!3158662 e!3158663)))

(declare-fun res!2154860 () Bool)

(assert (=> b!5060553 (= res!2154860 (not ((_ is Leaf!25842) (right!43137 (right!43137 ys!41)))))))

(assert (=> b!5060553 (=> res!2154860 e!3158663)))

(declare-fun b!5060554 () Bool)

(assert (=> b!5060554 (= e!3158663 (inv!77527 (right!43137 (right!43137 ys!41))))))

(assert (= (and d!1629682 c!868323) b!5060552))

(assert (= (and d!1629682 (not c!868323)) b!5060553))

(assert (= (and b!5060553 (not res!2154860)) b!5060554))

(declare-fun m!6098078 () Bool)

(assert (=> b!5060552 m!6098078))

(declare-fun m!6098080 () Bool)

(assert (=> b!5060554 m!6098080))

(assert (=> b!5060183 d!1629682))

(declare-fun b!5060555 () Bool)

(declare-fun res!2154862 () Bool)

(declare-fun e!3158664 () Bool)

(assert (=> b!5060555 (=> (not res!2154862) (not e!3158664))))

(assert (=> b!5060555 (= res!2154862 (isBalanced!4420 (left!42807 (right!43137 lt!2087928))))))

(declare-fun b!5060556 () Bool)

(declare-fun res!2154863 () Bool)

(assert (=> b!5060556 (=> (not res!2154863) (not e!3158664))))

(assert (=> b!5060556 (= res!2154863 (isBalanced!4420 (right!43137 (right!43137 lt!2087928))))))

(declare-fun b!5060557 () Bool)

(declare-fun res!2154865 () Bool)

(assert (=> b!5060557 (=> (not res!2154865) (not e!3158664))))

(assert (=> b!5060557 (= res!2154865 (not (isEmpty!31619 (left!42807 (right!43137 lt!2087928)))))))

(declare-fun b!5060558 () Bool)

(assert (=> b!5060558 (= e!3158664 (not (isEmpty!31619 (right!43137 (right!43137 lt!2087928)))))))

(declare-fun b!5060559 () Bool)

(declare-fun res!2154866 () Bool)

(assert (=> b!5060559 (=> (not res!2154866) (not e!3158664))))

(assert (=> b!5060559 (= res!2154866 (<= (- (height!2135 (left!42807 (right!43137 lt!2087928))) (height!2135 (right!43137 (right!43137 lt!2087928)))) 1))))

(declare-fun b!5060560 () Bool)

(declare-fun e!3158665 () Bool)

(assert (=> b!5060560 (= e!3158665 e!3158664)))

(declare-fun res!2154864 () Bool)

(assert (=> b!5060560 (=> (not res!2154864) (not e!3158664))))

(assert (=> b!5060560 (= res!2154864 (<= (- 1) (- (height!2135 (left!42807 (right!43137 lt!2087928))) (height!2135 (right!43137 (right!43137 lt!2087928))))))))

(declare-fun d!1629684 () Bool)

(declare-fun res!2154861 () Bool)

(assert (=> d!1629684 (=> res!2154861 e!3158665)))

(assert (=> d!1629684 (= res!2154861 (not ((_ is Node!15558) (right!43137 lt!2087928))))))

(assert (=> d!1629684 (= (isBalanced!4420 (right!43137 lt!2087928)) e!3158665)))

(assert (= (and d!1629684 (not res!2154861)) b!5060560))

(assert (= (and b!5060560 res!2154864) b!5060559))

(assert (= (and b!5060559 res!2154866) b!5060555))

(assert (= (and b!5060555 res!2154862) b!5060556))

(assert (= (and b!5060556 res!2154863) b!5060557))

(assert (= (and b!5060557 res!2154865) b!5060558))

(declare-fun m!6098082 () Bool)

(assert (=> b!5060557 m!6098082))

(declare-fun m!6098084 () Bool)

(assert (=> b!5060559 m!6098084))

(declare-fun m!6098086 () Bool)

(assert (=> b!5060559 m!6098086))

(declare-fun m!6098088 () Bool)

(assert (=> b!5060556 m!6098088))

(declare-fun m!6098090 () Bool)

(assert (=> b!5060558 m!6098090))

(declare-fun m!6098092 () Bool)

(assert (=> b!5060555 m!6098092))

(assert (=> b!5060560 m!6098084))

(assert (=> b!5060560 m!6098086))

(assert (=> b!5060117 d!1629684))

(declare-fun d!1629686 () Bool)

(declare-fun res!2154871 () Bool)

(declare-fun e!3158668 () Bool)

(assert (=> d!1629686 (=> (not res!2154871) (not e!3158668))))

(assert (=> d!1629686 (= res!2154871 (<= (size!39065 (list!18979 (xs!18896 (right!43137 ys!41)))) 512))))

(assert (=> d!1629686 (= (inv!77527 (right!43137 ys!41)) e!3158668)))

(declare-fun b!5060565 () Bool)

(declare-fun res!2154872 () Bool)

(assert (=> b!5060565 (=> (not res!2154872) (not e!3158668))))

(assert (=> b!5060565 (= res!2154872 (= (csize!31347 (right!43137 ys!41)) (size!39065 (list!18979 (xs!18896 (right!43137 ys!41))))))))

(declare-fun b!5060566 () Bool)

(assert (=> b!5060566 (= e!3158668 (and (> (csize!31347 (right!43137 ys!41)) 0) (<= (csize!31347 (right!43137 ys!41)) 512)))))

(assert (= (and d!1629686 res!2154871) b!5060565))

(assert (= (and b!5060565 res!2154872) b!5060566))

(declare-fun m!6098094 () Bool)

(assert (=> d!1629686 m!6098094))

(assert (=> d!1629686 m!6098094))

(declare-fun m!6098096 () Bool)

(assert (=> d!1629686 m!6098096))

(assert (=> b!5060565 m!6098094))

(assert (=> b!5060565 m!6098094))

(assert (=> b!5060565 m!6098096))

(assert (=> b!5060115 d!1629686))

(declare-fun d!1629688 () Bool)

(assert (=> d!1629688 (= (height!2135 (ite c!868195 lt!2087965 (right!43137 ys!41))) (ite ((_ is Empty!15558) (ite c!868195 lt!2087965 (right!43137 ys!41))) 0 (ite ((_ is Leaf!25842) (ite c!868195 lt!2087965 (right!43137 ys!41))) 1 (cheight!15769 (ite c!868195 lt!2087965 (right!43137 ys!41))))))))

(assert (=> bm!352357 d!1629688))

(assert (=> b!5059846 d!1629428))

(declare-fun d!1629690 () Bool)

(declare-fun lt!2088026 () Int)

(assert (=> d!1629690 (= lt!2088026 (size!39065 (list!18977 (++!12778 (right!43137 xs!286) ys!41))))))

(assert (=> d!1629690 (= lt!2088026 (ite ((_ is Empty!15558) (++!12778 (right!43137 xs!286) ys!41)) 0 (ite ((_ is Leaf!25842) (++!12778 (right!43137 xs!286) ys!41)) (csize!31347 (++!12778 (right!43137 xs!286) ys!41)) (csize!31346 (++!12778 (right!43137 xs!286) ys!41)))))))

(assert (=> d!1629690 (= (size!39064 (++!12778 (right!43137 xs!286) ys!41)) lt!2088026)))

(declare-fun bs!1189605 () Bool)

(assert (= bs!1189605 d!1629690))

(assert (=> bs!1189605 m!6096978))

(assert (=> bs!1189605 m!6097084))

(assert (=> bs!1189605 m!6097084))

(declare-fun m!6098098 () Bool)

(assert (=> bs!1189605 m!6098098))

(assert (=> b!5059846 d!1629690))

(declare-fun d!1629692 () Bool)

(assert (=> d!1629692 (= (max!0 (height!2135 (left!42807 xs!286)) (height!2135 (++!12778 (right!43137 xs!286) ys!41))) (ite (< (height!2135 (left!42807 xs!286)) (height!2135 (++!12778 (right!43137 xs!286) ys!41))) (height!2135 (++!12778 (right!43137 xs!286) ys!41)) (height!2135 (left!42807 xs!286))))))

(assert (=> b!5059846 d!1629692))

(declare-fun d!1629694 () Bool)

(assert (=> d!1629694 (= (height!2135 (++!12778 (right!43137 xs!286) ys!41)) (ite ((_ is Empty!15558) (++!12778 (right!43137 xs!286) ys!41)) 0 (ite ((_ is Leaf!25842) (++!12778 (right!43137 xs!286) ys!41)) 1 (cheight!15769 (++!12778 (right!43137 xs!286) ys!41)))))))

(assert (=> b!5059846 d!1629694))

(declare-fun d!1629696 () Bool)

(declare-fun lt!2088027 () Int)

(assert (=> d!1629696 (= lt!2088027 (size!39065 (list!18977 (left!42807 xs!286))))))

(assert (=> d!1629696 (= lt!2088027 (ite ((_ is Empty!15558) (left!42807 xs!286)) 0 (ite ((_ is Leaf!25842) (left!42807 xs!286)) (csize!31347 (left!42807 xs!286)) (csize!31346 (left!42807 xs!286)))))))

(assert (=> d!1629696 (= (size!39064 (left!42807 xs!286)) lt!2088027)))

(declare-fun bs!1189606 () Bool)

(assert (= bs!1189606 d!1629696))

(assert (=> bs!1189606 m!6097062))

(assert (=> bs!1189606 m!6097062))

(declare-fun m!6098100 () Bool)

(assert (=> bs!1189606 m!6098100))

(assert (=> b!5059846 d!1629696))

(declare-fun d!1629698 () Bool)

(declare-fun res!2154873 () Bool)

(declare-fun e!3158669 () Bool)

(assert (=> d!1629698 (=> (not res!2154873) (not e!3158669))))

(assert (=> d!1629698 (= res!2154873 (= (csize!31346 (right!43137 ys!41)) (+ (size!39064 (left!42807 (right!43137 ys!41))) (size!39064 (right!43137 (right!43137 ys!41))))))))

(assert (=> d!1629698 (= (inv!77526 (right!43137 ys!41)) e!3158669)))

(declare-fun b!5060567 () Bool)

(declare-fun res!2154874 () Bool)

(assert (=> b!5060567 (=> (not res!2154874) (not e!3158669))))

(assert (=> b!5060567 (= res!2154874 (and (not (= (left!42807 (right!43137 ys!41)) Empty!15558)) (not (= (right!43137 (right!43137 ys!41)) Empty!15558))))))

(declare-fun b!5060568 () Bool)

(declare-fun res!2154875 () Bool)

(assert (=> b!5060568 (=> (not res!2154875) (not e!3158669))))

(assert (=> b!5060568 (= res!2154875 (= (cheight!15769 (right!43137 ys!41)) (+ (max!0 (height!2135 (left!42807 (right!43137 ys!41))) (height!2135 (right!43137 (right!43137 ys!41)))) 1)))))

(declare-fun b!5060569 () Bool)

(assert (=> b!5060569 (= e!3158669 (<= 0 (cheight!15769 (right!43137 ys!41))))))

(assert (= (and d!1629698 res!2154873) b!5060567))

(assert (= (and b!5060567 res!2154874) b!5060568))

(assert (= (and b!5060568 res!2154875) b!5060569))

(declare-fun m!6098102 () Bool)

(assert (=> d!1629698 m!6098102))

(declare-fun m!6098104 () Bool)

(assert (=> d!1629698 m!6098104))

(declare-fun m!6098106 () Bool)

(assert (=> b!5060568 m!6098106))

(declare-fun m!6098108 () Bool)

(assert (=> b!5060568 m!6098108))

(assert (=> b!5060568 m!6098106))

(assert (=> b!5060568 m!6098108))

(declare-fun m!6098110 () Bool)

(assert (=> b!5060568 m!6098110))

(assert (=> b!5060113 d!1629698))

(declare-fun d!1629700 () Bool)

(declare-fun e!3158670 () Bool)

(assert (=> d!1629700 e!3158670))

(declare-fun res!2154877 () Bool)

(assert (=> d!1629700 (=> (not res!2154877) (not e!3158670))))

(declare-fun lt!2088028 () List!58552)

(assert (=> d!1629700 (= res!2154877 (= (content!10414 lt!2088028) ((_ map or) (content!10414 (list!18977 (left!42807 xs!286))) (content!10414 (list!18977 (right!43137 xs!286))))))))

(declare-fun e!3158671 () List!58552)

(assert (=> d!1629700 (= lt!2088028 e!3158671)))

(declare-fun c!868324 () Bool)

(assert (=> d!1629700 (= c!868324 ((_ is Nil!58428) (list!18977 (left!42807 xs!286))))))

(assert (=> d!1629700 (= (++!12779 (list!18977 (left!42807 xs!286)) (list!18977 (right!43137 xs!286))) lt!2088028)))

(declare-fun b!5060573 () Bool)

(assert (=> b!5060573 (= e!3158670 (or (not (= (list!18977 (right!43137 xs!286)) Nil!58428)) (= lt!2088028 (list!18977 (left!42807 xs!286)))))))

(declare-fun b!5060572 () Bool)

(declare-fun res!2154876 () Bool)

(assert (=> b!5060572 (=> (not res!2154876) (not e!3158670))))

(assert (=> b!5060572 (= res!2154876 (= (size!39065 lt!2088028) (+ (size!39065 (list!18977 (left!42807 xs!286))) (size!39065 (list!18977 (right!43137 xs!286))))))))

(declare-fun b!5060570 () Bool)

(assert (=> b!5060570 (= e!3158671 (list!18977 (right!43137 xs!286)))))

(declare-fun b!5060571 () Bool)

(assert (=> b!5060571 (= e!3158671 (Cons!58428 (h!64876 (list!18977 (left!42807 xs!286))) (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (right!43137 xs!286)))))))

(assert (= (and d!1629700 c!868324) b!5060570))

(assert (= (and d!1629700 (not c!868324)) b!5060571))

(assert (= (and d!1629700 res!2154877) b!5060572))

(assert (= (and b!5060572 res!2154876) b!5060573))

(declare-fun m!6098112 () Bool)

(assert (=> d!1629700 m!6098112))

(assert (=> d!1629700 m!6097062))

(declare-fun m!6098114 () Bool)

(assert (=> d!1629700 m!6098114))

(assert (=> d!1629700 m!6097068))

(declare-fun m!6098116 () Bool)

(assert (=> d!1629700 m!6098116))

(declare-fun m!6098118 () Bool)

(assert (=> b!5060572 m!6098118))

(assert (=> b!5060572 m!6097062))

(assert (=> b!5060572 m!6098100))

(assert (=> b!5060572 m!6097068))

(declare-fun m!6098120 () Bool)

(assert (=> b!5060572 m!6098120))

(assert (=> b!5060571 m!6097068))

(declare-fun m!6098122 () Bool)

(assert (=> b!5060571 m!6098122))

(assert (=> b!5060155 d!1629700))

(assert (=> b!5060155 d!1629658))

(declare-fun b!5060575 () Bool)

(declare-fun e!3158672 () List!58552)

(declare-fun e!3158673 () List!58552)

(assert (=> b!5060575 (= e!3158672 e!3158673)))

(declare-fun c!868326 () Bool)

(assert (=> b!5060575 (= c!868326 ((_ is Leaf!25842) (right!43137 xs!286)))))

(declare-fun b!5060576 () Bool)

(assert (=> b!5060576 (= e!3158673 (list!18979 (xs!18896 (right!43137 xs!286))))))

(declare-fun b!5060574 () Bool)

(assert (=> b!5060574 (= e!3158672 Nil!58428)))

(declare-fun b!5060577 () Bool)

(assert (=> b!5060577 (= e!3158673 (++!12779 (list!18977 (left!42807 (right!43137 xs!286))) (list!18977 (right!43137 (right!43137 xs!286)))))))

(declare-fun d!1629702 () Bool)

(declare-fun c!868325 () Bool)

(assert (=> d!1629702 (= c!868325 ((_ is Empty!15558) (right!43137 xs!286)))))

(assert (=> d!1629702 (= (list!18977 (right!43137 xs!286)) e!3158672)))

(assert (= (and d!1629702 c!868325) b!5060574))

(assert (= (and d!1629702 (not c!868325)) b!5060575))

(assert (= (and b!5060575 c!868326) b!5060576))

(assert (= (and b!5060575 (not c!868326)) b!5060577))

(declare-fun m!6098124 () Bool)

(assert (=> b!5060576 m!6098124))

(assert (=> b!5060577 m!6097056))

(assert (=> b!5060577 m!6097058))

(assert (=> b!5060577 m!6097056))

(assert (=> b!5060577 m!6097058))

(declare-fun m!6098126 () Bool)

(assert (=> b!5060577 m!6098126))

(assert (=> b!5060155 d!1629702))

(declare-fun d!1629704 () Bool)

(assert (=> d!1629704 (= (list!18979 (xs!18896 xs!286)) (innerList!15646 (xs!18896 xs!286)))))

(assert (=> b!5060154 d!1629704))

(declare-fun d!1629706 () Bool)

(assert (=> d!1629706 (= (height!2135 lt!2087966) (ite ((_ is Empty!15558) lt!2087966) 0 (ite ((_ is Leaf!25842) lt!2087966) 1 (cheight!15769 lt!2087966))))))

(assert (=> b!5059979 d!1629706))

(declare-fun d!1629708 () Bool)

(assert (=> d!1629708 (= (max!0 (height!2135 (right!43137 xs!286)) (height!2135 ys!41)) (ite (< (height!2135 (right!43137 xs!286)) (height!2135 ys!41)) (height!2135 ys!41) (height!2135 (right!43137 xs!286))))))

(assert (=> b!5059979 d!1629708))

(assert (=> b!5059979 d!1629430))

(assert (=> b!5059979 d!1629446))

(assert (=> b!5059749 d!1629384))

(assert (=> b!5059749 d!1629412))

(declare-fun bm!352433 () Bool)

(declare-fun call!352439 () List!58552)

(assert (=> bm!352433 (= call!352439 (++!12779 (list!18977 (left!42807 xs!286)) (list!18977 (right!43137 xs!286))))))

(declare-fun b!5060578 () Bool)

(declare-fun e!3158674 () Bool)

(declare-fun call!352440 () List!58552)

(declare-fun call!352438 () List!58552)

(assert (=> b!5060578 (= e!3158674 (= call!352440 call!352438))))

(declare-fun bm!352434 () Bool)

(declare-fun call!352441 () List!58552)

(assert (=> bm!352434 (= call!352441 (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 ys!41)))))

(declare-fun b!5060579 () Bool)

(assert (=> b!5060579 (= e!3158674 (= call!352440 call!352438))))

(declare-fun lt!2088029 () Bool)

(assert (=> b!5060579 (= lt!2088029 (appendAssoc!298 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (right!43137 xs!286)) (list!18977 ys!41)))))

(declare-fun bm!352435 () Bool)

(assert (=> bm!352435 (= call!352440 (++!12779 call!352439 (list!18977 ys!41)))))

(declare-fun d!1629710 () Bool)

(assert (=> d!1629710 e!3158674))

(declare-fun c!868327 () Bool)

(assert (=> d!1629710 (= c!868327 ((_ is Nil!58428) (list!18977 (left!42807 xs!286))))))

(assert (=> d!1629710 (= (appendAssoc!298 (list!18977 (left!42807 xs!286)) (list!18977 (right!43137 xs!286)) (list!18977 ys!41)) true)))

(declare-fun bm!352436 () Bool)

(assert (=> bm!352436 (= call!352438 (++!12779 (list!18977 (left!42807 xs!286)) call!352441))))

(assert (= (and d!1629710 c!868327) b!5060578))

(assert (= (and d!1629710 (not c!868327)) b!5060579))

(assert (= (or b!5060578 b!5060579) bm!352433))

(assert (= (or b!5060578 b!5060579) bm!352434))

(assert (= (or b!5060578 b!5060579) bm!352436))

(assert (= (or b!5060578 b!5060579) bm!352435))

(assert (=> bm!352436 m!6097062))

(declare-fun m!6098128 () Bool)

(assert (=> bm!352436 m!6098128))

(assert (=> bm!352433 m!6097062))

(assert (=> bm!352433 m!6097068))

(assert (=> bm!352433 m!6097352))

(assert (=> bm!352434 m!6097068))

(assert (=> bm!352434 m!6096986))

(assert (=> bm!352434 m!6097186))

(assert (=> bm!352435 m!6096986))

(declare-fun m!6098130 () Bool)

(assert (=> bm!352435 m!6098130))

(assert (=> b!5060579 m!6097068))

(assert (=> b!5060579 m!6096986))

(declare-fun m!6098132 () Bool)

(assert (=> b!5060579 m!6098132))

(assert (=> b!5059808 d!1629710))

(assert (=> b!5059808 d!1629658))

(assert (=> b!5059808 d!1629702))

(assert (=> b!5059808 d!1629454))

(declare-fun b!5060581 () Bool)

(declare-fun e!3158675 () List!58552)

(declare-fun e!3158676 () List!58552)

(assert (=> b!5060581 (= e!3158675 e!3158676)))

(declare-fun c!868329 () Bool)

(assert (=> b!5060581 (= c!868329 ((_ is Leaf!25842) lt!2087939))))

(declare-fun b!5060582 () Bool)

(assert (=> b!5060582 (= e!3158676 (list!18979 (xs!18896 lt!2087939)))))

(declare-fun b!5060580 () Bool)

(assert (=> b!5060580 (= e!3158675 Nil!58428)))

(declare-fun b!5060583 () Bool)

(assert (=> b!5060583 (= e!3158676 (++!12779 (list!18977 (left!42807 lt!2087939)) (list!18977 (right!43137 lt!2087939))))))

(declare-fun d!1629712 () Bool)

(declare-fun c!868328 () Bool)

(assert (=> d!1629712 (= c!868328 ((_ is Empty!15558) lt!2087939))))

(assert (=> d!1629712 (= (list!18977 lt!2087939) e!3158675)))

(assert (= (and d!1629712 c!868328) b!5060580))

(assert (= (and d!1629712 (not c!868328)) b!5060581))

(assert (= (and b!5060581 c!868329) b!5060582))

(assert (= (and b!5060581 (not c!868329)) b!5060583))

(declare-fun m!6098134 () Bool)

(assert (=> b!5060582 m!6098134))

(declare-fun m!6098136 () Bool)

(assert (=> b!5060583 m!6098136))

(declare-fun m!6098138 () Bool)

(assert (=> b!5060583 m!6098138))

(assert (=> b!5060583 m!6098136))

(assert (=> b!5060583 m!6098138))

(declare-fun m!6098140 () Bool)

(assert (=> b!5060583 m!6098140))

(assert (=> d!1629374 d!1629712))

(declare-fun d!1629714 () Bool)

(declare-fun e!3158677 () Bool)

(assert (=> d!1629714 e!3158677))

(declare-fun res!2154879 () Bool)

(assert (=> d!1629714 (=> (not res!2154879) (not e!3158677))))

(declare-fun lt!2088030 () List!58552)

(assert (=> d!1629714 (= res!2154879 (= (content!10414 lt!2088030) ((_ map or) (content!10414 (list!18977 (left!42807 xs!286))) (content!10414 (list!18977 (++!12778 (right!43137 xs!286) ys!41))))))))

(declare-fun e!3158678 () List!58552)

(assert (=> d!1629714 (= lt!2088030 e!3158678)))

(declare-fun c!868330 () Bool)

(assert (=> d!1629714 (= c!868330 ((_ is Nil!58428) (list!18977 (left!42807 xs!286))))))

(assert (=> d!1629714 (= (++!12779 (list!18977 (left!42807 xs!286)) (list!18977 (++!12778 (right!43137 xs!286) ys!41))) lt!2088030)))

(declare-fun b!5060587 () Bool)

(assert (=> b!5060587 (= e!3158677 (or (not (= (list!18977 (++!12778 (right!43137 xs!286) ys!41)) Nil!58428)) (= lt!2088030 (list!18977 (left!42807 xs!286)))))))

(declare-fun b!5060586 () Bool)

(declare-fun res!2154878 () Bool)

(assert (=> b!5060586 (=> (not res!2154878) (not e!3158677))))

(assert (=> b!5060586 (= res!2154878 (= (size!39065 lt!2088030) (+ (size!39065 (list!18977 (left!42807 xs!286))) (size!39065 (list!18977 (++!12778 (right!43137 xs!286) ys!41))))))))

(declare-fun b!5060584 () Bool)

(assert (=> b!5060584 (= e!3158678 (list!18977 (++!12778 (right!43137 xs!286) ys!41)))))

(declare-fun b!5060585 () Bool)

(assert (=> b!5060585 (= e!3158678 (Cons!58428 (h!64876 (list!18977 (left!42807 xs!286))) (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (++!12778 (right!43137 xs!286) ys!41)))))))

(assert (= (and d!1629714 c!868330) b!5060584))

(assert (= (and d!1629714 (not c!868330)) b!5060585))

(assert (= (and d!1629714 res!2154879) b!5060586))

(assert (= (and b!5060586 res!2154878) b!5060587))

(declare-fun m!6098142 () Bool)

(assert (=> d!1629714 m!6098142))

(assert (=> d!1629714 m!6097062))

(assert (=> d!1629714 m!6098114))

(assert (=> d!1629714 m!6097084))

(declare-fun m!6098144 () Bool)

(assert (=> d!1629714 m!6098144))

(declare-fun m!6098146 () Bool)

(assert (=> b!5060586 m!6098146))

(assert (=> b!5060586 m!6097062))

(assert (=> b!5060586 m!6098100))

(assert (=> b!5060586 m!6097084))

(assert (=> b!5060586 m!6098098))

(assert (=> b!5060585 m!6097084))

(declare-fun m!6098148 () Bool)

(assert (=> b!5060585 m!6098148))

(assert (=> d!1629374 d!1629714))

(assert (=> d!1629374 d!1629658))

(declare-fun b!5060589 () Bool)

(declare-fun e!3158679 () List!58552)

(declare-fun e!3158680 () List!58552)

(assert (=> b!5060589 (= e!3158679 e!3158680)))

(declare-fun c!868332 () Bool)

(assert (=> b!5060589 (= c!868332 ((_ is Leaf!25842) (++!12778 (right!43137 xs!286) ys!41)))))

(declare-fun b!5060590 () Bool)

(assert (=> b!5060590 (= e!3158680 (list!18979 (xs!18896 (++!12778 (right!43137 xs!286) ys!41))))))

(declare-fun b!5060588 () Bool)

(assert (=> b!5060588 (= e!3158679 Nil!58428)))

(declare-fun b!5060591 () Bool)

(assert (=> b!5060591 (= e!3158680 (++!12779 (list!18977 (left!42807 (++!12778 (right!43137 xs!286) ys!41))) (list!18977 (right!43137 (++!12778 (right!43137 xs!286) ys!41)))))))

(declare-fun d!1629716 () Bool)

(declare-fun c!868331 () Bool)

(assert (=> d!1629716 (= c!868331 ((_ is Empty!15558) (++!12778 (right!43137 xs!286) ys!41)))))

(assert (=> d!1629716 (= (list!18977 (++!12778 (right!43137 xs!286) ys!41)) e!3158679)))

(assert (= (and d!1629716 c!868331) b!5060588))

(assert (= (and d!1629716 (not c!868331)) b!5060589))

(assert (= (and b!5060589 c!868332) b!5060590))

(assert (= (and b!5060589 (not c!868332)) b!5060591))

(declare-fun m!6098150 () Bool)

(assert (=> b!5060590 m!6098150))

(declare-fun m!6098152 () Bool)

(assert (=> b!5060591 m!6098152))

(declare-fun m!6098154 () Bool)

(assert (=> b!5060591 m!6098154))

(assert (=> b!5060591 m!6098152))

(assert (=> b!5060591 m!6098154))

(declare-fun m!6098156 () Bool)

(assert (=> b!5060591 m!6098156))

(assert (=> d!1629374 d!1629716))

(declare-fun d!1629718 () Bool)

(assert (=> d!1629718 (= (height!2135 (ite c!868195 (left!42807 (right!43137 xs!286)) (left!42807 ys!41))) (ite ((_ is Empty!15558) (ite c!868195 (left!42807 (right!43137 xs!286)) (left!42807 ys!41))) 0 (ite ((_ is Leaf!25842) (ite c!868195 (left!42807 (right!43137 xs!286)) (left!42807 ys!41))) 1 (cheight!15769 (ite c!868195 (left!42807 (right!43137 xs!286)) (left!42807 ys!41))))))))

(assert (=> bm!352355 d!1629718))

(declare-fun d!1629720 () Bool)

(declare-fun res!2154880 () Bool)

(declare-fun e!3158681 () Bool)

(assert (=> d!1629720 (=> (not res!2154880) (not e!3158681))))

(assert (=> d!1629720 (= res!2154880 (<= (size!39065 (list!18979 (xs!18896 ys!41))) 512))))

(assert (=> d!1629720 (= (inv!77527 ys!41) e!3158681)))

(declare-fun b!5060592 () Bool)

(declare-fun res!2154881 () Bool)

(assert (=> b!5060592 (=> (not res!2154881) (not e!3158681))))

(assert (=> b!5060592 (= res!2154881 (= (csize!31347 ys!41) (size!39065 (list!18979 (xs!18896 ys!41)))))))

(declare-fun b!5060593 () Bool)

(assert (=> b!5060593 (= e!3158681 (and (> (csize!31347 ys!41) 0) (<= (csize!31347 ys!41) 512)))))

(assert (= (and d!1629720 res!2154880) b!5060592))

(assert (= (and b!5060592 res!2154881) b!5060593))

(assert (=> d!1629720 m!6097354))

(assert (=> d!1629720 m!6097354))

(declare-fun m!6098158 () Bool)

(assert (=> d!1629720 m!6098158))

(assert (=> b!5060592 m!6097354))

(assert (=> b!5060592 m!6097354))

(assert (=> b!5060592 m!6098158))

(assert (=> b!5060109 d!1629720))

(assert (=> b!5059991 d!1629706))

(assert (=> b!5059991 d!1629708))

(assert (=> b!5059991 d!1629430))

(assert (=> b!5059991 d!1629446))

(declare-fun d!1629722 () Bool)

(declare-fun lt!2088031 () Int)

(assert (=> d!1629722 (>= lt!2088031 0)))

(declare-fun e!3158682 () Int)

(assert (=> d!1629722 (= lt!2088031 e!3158682)))

(declare-fun c!868333 () Bool)

(assert (=> d!1629722 (= c!868333 ((_ is Nil!58428) (innerList!15646 (xs!18896 xs!286))))))

(assert (=> d!1629722 (= (size!39065 (innerList!15646 (xs!18896 xs!286))) lt!2088031)))

(declare-fun b!5060594 () Bool)

(assert (=> b!5060594 (= e!3158682 0)))

(declare-fun b!5060595 () Bool)

(assert (=> b!5060595 (= e!3158682 (+ 1 (size!39065 (t!371255 (innerList!15646 (xs!18896 xs!286))))))))

(assert (= (and d!1629722 c!868333) b!5060594))

(assert (= (and d!1629722 (not c!868333)) b!5060595))

(declare-fun m!6098160 () Bool)

(assert (=> b!5060595 m!6098160))

(assert (=> d!1629432 d!1629722))

(declare-fun b!5060596 () Bool)

(declare-fun e!3158683 () Bool)

(declare-fun e!3158689 () Bool)

(assert (=> b!5060596 (= e!3158683 e!3158689)))

(declare-fun res!2154886 () Bool)

(assert (=> b!5060596 (=> (not res!2154886) (not e!3158689))))

(assert (=> b!5060596 (= res!2154886 (appendAssoc!298 (list!18977 (left!42807 (right!43137 xs!286))) (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)))))

(declare-fun b!5060597 () Bool)

(declare-fun e!3158684 () Bool)

(declare-fun e!3158686 () Bool)

(assert (=> b!5060597 (= e!3158684 e!3158686)))

(declare-fun res!2154883 () Bool)

(assert (=> b!5060597 (=> (not res!2154883) (not e!3158686))))

(assert (=> b!5060597 (= res!2154883 (appendAssoc!298 (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41)))))

(declare-fun b!5060598 () Bool)

(declare-fun e!3158691 () Bool)

(declare-fun e!3158685 () Bool)

(assert (=> b!5060598 (= e!3158691 e!3158685)))

(declare-fun res!2154888 () Bool)

(assert (=> b!5060598 (=> res!2154888 e!3158685)))

(assert (=> b!5060598 (= res!2154888 (not ((_ is Node!15558) ys!41)))))

(declare-fun b!5060599 () Bool)

(declare-fun e!3158687 () Bool)

(declare-fun e!3158690 () Bool)

(assert (=> b!5060599 (= e!3158687 e!3158690)))

(declare-fun res!2154885 () Bool)

(assert (=> b!5060599 (=> res!2154885 e!3158690)))

(assert (=> b!5060599 (= res!2154885 (not ((_ is Node!15558) (left!42807 ys!41))))))

(declare-fun b!5060600 () Bool)

(assert (=> b!5060600 (= e!3158685 e!3158687)))

(declare-fun res!2154882 () Bool)

(assert (=> b!5060600 (=> (not res!2154882) (not e!3158687))))

(assert (=> b!5060600 (= res!2154882 (appendAssoc!298 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))))))

(declare-fun b!5060601 () Bool)

(declare-fun e!3158688 () Bool)

(assert (=> b!5060601 (= e!3158690 e!3158688)))

(declare-fun res!2154887 () Bool)

(assert (=> b!5060601 (=> (not res!2154887) (not e!3158688))))

(assert (=> b!5060601 (= res!2154887 (appendAssoc!298 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5060602 () Bool)

(assert (=> b!5060602 (= e!3158688 (appendAssoc!298 (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 (left!42807 ys!41)))) (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))))))

(declare-fun b!5060603 () Bool)

(assert (=> b!5060603 (= e!3158686 (appendAssoc!298 (list!18977 (left!42807 (right!43137 xs!286))) (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) (++!12779 (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41))))))

(declare-fun d!1629724 () Bool)

(assert (=> d!1629724 e!3158691))

(declare-fun res!2154889 () Bool)

(assert (=> d!1629724 (=> (not res!2154889) (not e!3158691))))

(assert (=> d!1629724 (= res!2154889 e!3158683)))

(declare-fun res!2154890 () Bool)

(assert (=> d!1629724 (=> res!2154890 e!3158683)))

(assert (=> d!1629724 (= res!2154890 (not ((_ is Node!15558) (right!43137 xs!286))))))

(assert (=> d!1629724 (= (appendAssocInst!906 (right!43137 xs!286) ys!41) true)))

(declare-fun b!5060604 () Bool)

(assert (=> b!5060604 (= e!3158689 e!3158684)))

(declare-fun res!2154884 () Bool)

(assert (=> b!5060604 (=> res!2154884 e!3158684)))

(assert (=> b!5060604 (= res!2154884 (not ((_ is Node!15558) (right!43137 (right!43137 xs!286)))))))

(assert (= (and d!1629724 (not res!2154890)) b!5060596))

(assert (= (and b!5060596 res!2154886) b!5060604))

(assert (= (and b!5060604 (not res!2154884)) b!5060597))

(assert (= (and b!5060597 res!2154883) b!5060603))

(assert (= (and d!1629724 res!2154889) b!5060598))

(assert (= (and b!5060598 (not res!2154888)) b!5060600))

(assert (= (and b!5060600 res!2154882) b!5060599))

(assert (= (and b!5060599 (not res!2154885)) b!5060601))

(assert (= (and b!5060601 res!2154887) b!5060602))

(assert (=> b!5060601 m!6097068))

(assert (=> b!5060601 m!6097050))

(assert (=> b!5060601 m!6097052))

(assert (=> b!5060601 m!6097068))

(assert (=> b!5060601 m!6097050))

(assert (=> b!5060601 m!6097052))

(declare-fun m!6098162 () Bool)

(assert (=> b!5060601 m!6098162))

(assert (=> b!5060597 m!6098000))

(assert (=> b!5060597 m!6098002))

(assert (=> b!5060597 m!6096986))

(assert (=> b!5060597 m!6098000))

(assert (=> b!5060597 m!6098002))

(assert (=> b!5060597 m!6096986))

(declare-fun m!6098164 () Bool)

(assert (=> b!5060597 m!6098164))

(assert (=> b!5060603 m!6097056))

(assert (=> b!5060603 m!6098000))

(declare-fun m!6098166 () Bool)

(assert (=> b!5060603 m!6098166))

(declare-fun m!6098168 () Bool)

(assert (=> b!5060603 m!6098168))

(assert (=> b!5060603 m!6096986))

(assert (=> b!5060603 m!6098000))

(assert (=> b!5060603 m!6097056))

(assert (=> b!5060603 m!6098002))

(assert (=> b!5060603 m!6096986))

(assert (=> b!5060603 m!6098166))

(assert (=> b!5060603 m!6098002))

(assert (=> b!5060596 m!6097056))

(assert (=> b!5060596 m!6097058))

(assert (=> b!5060596 m!6096986))

(assert (=> b!5060596 m!6097056))

(assert (=> b!5060596 m!6097058))

(assert (=> b!5060596 m!6096986))

(assert (=> b!5060596 m!6097060))

(assert (=> b!5060602 m!6097068))

(declare-fun m!6098170 () Bool)

(assert (=> b!5060602 m!6098170))

(assert (=> b!5060602 m!6097052))

(assert (=> b!5060602 m!6097074))

(declare-fun m!6098172 () Bool)

(assert (=> b!5060602 m!6098172))

(assert (=> b!5060602 m!6097074))

(assert (=> b!5060602 m!6097052))

(assert (=> b!5060602 m!6097050))

(assert (=> b!5060602 m!6097068))

(assert (=> b!5060602 m!6097050))

(assert (=> b!5060602 m!6098170))

(assert (=> b!5060600 m!6097068))

(assert (=> b!5060600 m!6097078))

(assert (=> b!5060600 m!6097074))

(assert (=> b!5060600 m!6097068))

(assert (=> b!5060600 m!6097078))

(assert (=> b!5060600 m!6097074))

(declare-fun m!6098174 () Bool)

(assert (=> b!5060600 m!6098174))

(assert (=> d!1629376 d!1629724))

(declare-fun b!5060605 () Bool)

(declare-fun res!2154892 () Bool)

(declare-fun e!3158692 () Bool)

(assert (=> b!5060605 (=> (not res!2154892) (not e!3158692))))

(assert (=> b!5060605 (= res!2154892 (isBalanced!4420 (left!42807 (right!43137 xs!286))))))

(declare-fun b!5060606 () Bool)

(declare-fun res!2154893 () Bool)

(assert (=> b!5060606 (=> (not res!2154893) (not e!3158692))))

(assert (=> b!5060606 (= res!2154893 (isBalanced!4420 (right!43137 (right!43137 xs!286))))))

(declare-fun b!5060607 () Bool)

(declare-fun res!2154895 () Bool)

(assert (=> b!5060607 (=> (not res!2154895) (not e!3158692))))

(assert (=> b!5060607 (= res!2154895 (not (isEmpty!31619 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5060608 () Bool)

(assert (=> b!5060608 (= e!3158692 (not (isEmpty!31619 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5060609 () Bool)

(declare-fun res!2154896 () Bool)

(assert (=> b!5060609 (=> (not res!2154896) (not e!3158692))))

(assert (=> b!5060609 (= res!2154896 (<= (- (height!2135 (left!42807 (right!43137 xs!286))) (height!2135 (right!43137 (right!43137 xs!286)))) 1))))

(declare-fun b!5060610 () Bool)

(declare-fun e!3158693 () Bool)

(assert (=> b!5060610 (= e!3158693 e!3158692)))

(declare-fun res!2154894 () Bool)

(assert (=> b!5060610 (=> (not res!2154894) (not e!3158692))))

(assert (=> b!5060610 (= res!2154894 (<= (- 1) (- (height!2135 (left!42807 (right!43137 xs!286))) (height!2135 (right!43137 (right!43137 xs!286))))))))

(declare-fun d!1629726 () Bool)

(declare-fun res!2154891 () Bool)

(assert (=> d!1629726 (=> res!2154891 e!3158693)))

(assert (=> d!1629726 (= res!2154891 (not ((_ is Node!15558) (right!43137 xs!286))))))

(assert (=> d!1629726 (= (isBalanced!4420 (right!43137 xs!286)) e!3158693)))

(assert (= (and d!1629726 (not res!2154891)) b!5060610))

(assert (= (and b!5060610 res!2154894) b!5060609))

(assert (= (and b!5060609 res!2154896) b!5060605))

(assert (= (and b!5060605 res!2154892) b!5060606))

(assert (= (and b!5060606 res!2154893) b!5060607))

(assert (= (and b!5060607 res!2154895) b!5060608))

(declare-fun m!6098176 () Bool)

(assert (=> b!5060607 m!6098176))

(declare-fun m!6098178 () Bool)

(assert (=> b!5060609 m!6098178))

(declare-fun m!6098180 () Bool)

(assert (=> b!5060609 m!6098180))

(declare-fun m!6098182 () Bool)

(assert (=> b!5060606 m!6098182))

(declare-fun m!6098184 () Bool)

(assert (=> b!5060608 m!6098184))

(declare-fun m!6098186 () Bool)

(assert (=> b!5060605 m!6098186))

(assert (=> b!5060610 m!6098178))

(assert (=> b!5060610 m!6098180))

(assert (=> d!1629376 d!1629726))

(declare-fun d!1629728 () Bool)

(declare-fun e!3158694 () Bool)

(assert (=> d!1629728 e!3158694))

(declare-fun res!2154898 () Bool)

(assert (=> d!1629728 (=> (not res!2154898) (not e!3158694))))

(declare-fun lt!2088032 () List!58552)

(assert (=> d!1629728 (= res!2154898 (= (content!10414 lt!2088032) ((_ map or) (content!10414 (t!371255 (list!18977 xs!286))) (content!10414 (list!18977 ys!41)))))))

(declare-fun e!3158695 () List!58552)

(assert (=> d!1629728 (= lt!2088032 e!3158695)))

(declare-fun c!868334 () Bool)

(assert (=> d!1629728 (= c!868334 ((_ is Nil!58428) (t!371255 (list!18977 xs!286))))))

(assert (=> d!1629728 (= (++!12779 (t!371255 (list!18977 xs!286)) (list!18977 ys!41)) lt!2088032)))

(declare-fun b!5060614 () Bool)

(assert (=> b!5060614 (= e!3158694 (or (not (= (list!18977 ys!41) Nil!58428)) (= lt!2088032 (t!371255 (list!18977 xs!286)))))))

(declare-fun b!5060613 () Bool)

(declare-fun res!2154897 () Bool)

(assert (=> b!5060613 (=> (not res!2154897) (not e!3158694))))

(assert (=> b!5060613 (= res!2154897 (= (size!39065 lt!2088032) (+ (size!39065 (t!371255 (list!18977 xs!286))) (size!39065 (list!18977 ys!41)))))))

(declare-fun b!5060611 () Bool)

(assert (=> b!5060611 (= e!3158695 (list!18977 ys!41))))

(declare-fun b!5060612 () Bool)

(assert (=> b!5060612 (= e!3158695 (Cons!58428 (h!64876 (t!371255 (list!18977 xs!286))) (++!12779 (t!371255 (t!371255 (list!18977 xs!286))) (list!18977 ys!41))))))

(assert (= (and d!1629728 c!868334) b!5060611))

(assert (= (and d!1629728 (not c!868334)) b!5060612))

(assert (= (and d!1629728 res!2154898) b!5060613))

(assert (= (and b!5060613 res!2154897) b!5060614))

(declare-fun m!6098188 () Bool)

(assert (=> d!1629728 m!6098188))

(declare-fun m!6098190 () Bool)

(assert (=> d!1629728 m!6098190))

(assert (=> d!1629728 m!6096986))

(assert (=> d!1629728 m!6097340))

(declare-fun m!6098192 () Bool)

(assert (=> b!5060613 m!6098192))

(declare-fun m!6098194 () Bool)

(assert (=> b!5060613 m!6098194))

(assert (=> b!5060613 m!6096986))

(assert (=> b!5060613 m!6097346))

(assert (=> b!5060612 m!6096986))

(declare-fun m!6098196 () Bool)

(assert (=> b!5060612 m!6098196))

(assert (=> b!5060149 d!1629728))

(declare-fun d!1629730 () Bool)

(declare-fun res!2154899 () Bool)

(declare-fun e!3158696 () Bool)

(assert (=> d!1629730 (=> (not res!2154899) (not e!3158696))))

(assert (=> d!1629730 (= res!2154899 (= (csize!31346 ys!41) (+ (size!39064 (left!42807 ys!41)) (size!39064 (right!43137 ys!41)))))))

(assert (=> d!1629730 (= (inv!77526 ys!41) e!3158696)))

(declare-fun b!5060615 () Bool)

(declare-fun res!2154900 () Bool)

(assert (=> b!5060615 (=> (not res!2154900) (not e!3158696))))

(assert (=> b!5060615 (= res!2154900 (and (not (= (left!42807 ys!41) Empty!15558)) (not (= (right!43137 ys!41) Empty!15558))))))

(declare-fun b!5060616 () Bool)

(declare-fun res!2154901 () Bool)

(assert (=> b!5060616 (=> (not res!2154901) (not e!3158696))))

(assert (=> b!5060616 (= res!2154901 (= (cheight!15769 ys!41) (+ (max!0 (height!2135 (left!42807 ys!41)) (height!2135 (right!43137 ys!41))) 1)))))

(declare-fun b!5060617 () Bool)

(assert (=> b!5060617 (= e!3158696 (<= 0 (cheight!15769 ys!41)))))

(assert (= (and d!1629730 res!2154899) b!5060615))

(assert (= (and b!5060615 res!2154900) b!5060616))

(assert (= (and b!5060616 res!2154901) b!5060617))

(assert (=> d!1629730 m!6097954))

(declare-fun m!6098198 () Bool)

(assert (=> d!1629730 m!6098198))

(assert (=> b!5060616 m!6097318))

(assert (=> b!5060616 m!6097320))

(assert (=> b!5060616 m!6097318))

(assert (=> b!5060616 m!6097320))

(declare-fun m!6098200 () Bool)

(assert (=> b!5060616 m!6098200))

(assert (=> b!5060107 d!1629730))

(assert (=> b!5059745 d!1629434))

(assert (=> b!5059745 d!1629436))

(declare-fun d!1629732 () Bool)

(declare-fun res!2154902 () Bool)

(declare-fun e!3158697 () Bool)

(assert (=> d!1629732 (=> (not res!2154902) (not e!3158697))))

(assert (=> d!1629732 (= res!2154902 (<= (size!39065 (list!18979 (xs!18896 (right!43137 xs!286)))) 512))))

(assert (=> d!1629732 (= (inv!77527 (right!43137 xs!286)) e!3158697)))

(declare-fun b!5060618 () Bool)

(declare-fun res!2154903 () Bool)

(assert (=> b!5060618 (=> (not res!2154903) (not e!3158697))))

(assert (=> b!5060618 (= res!2154903 (= (csize!31347 (right!43137 xs!286)) (size!39065 (list!18979 (xs!18896 (right!43137 xs!286))))))))

(declare-fun b!5060619 () Bool)

(assert (=> b!5060619 (= e!3158697 (and (> (csize!31347 (right!43137 xs!286)) 0) (<= (csize!31347 (right!43137 xs!286)) 512)))))

(assert (= (and d!1629732 res!2154902) b!5060618))

(assert (= (and b!5060618 res!2154903) b!5060619))

(assert (=> d!1629732 m!6098124))

(assert (=> d!1629732 m!6098124))

(declare-fun m!6098202 () Bool)

(assert (=> d!1629732 m!6098202))

(assert (=> b!5060618 m!6098124))

(assert (=> b!5060618 m!6098124))

(assert (=> b!5060618 m!6098202))

(assert (=> b!5060053 d!1629732))

(declare-fun d!1629734 () Bool)

(assert (=> d!1629734 (= (inv!77522 (xs!18896 (right!43137 xs!286))) (<= (size!39065 (innerList!15646 (xs!18896 (right!43137 xs!286)))) 2147483647))))

(declare-fun bs!1189607 () Bool)

(assert (= bs!1189607 d!1629734))

(declare-fun m!6098204 () Bool)

(assert (=> bs!1189607 m!6098204))

(assert (=> b!5060177 d!1629734))

(declare-fun d!1629736 () Bool)

(declare-fun e!3158698 () Bool)

(assert (=> d!1629736 e!3158698))

(declare-fun res!2154905 () Bool)

(assert (=> d!1629736 (=> (not res!2154905) (not e!3158698))))

(declare-fun lt!2088033 () List!58552)

(assert (=> d!1629736 (= res!2154905 (= (content!10414 lt!2088033) ((_ map or) (content!10414 (list!18977 (left!42807 lt!2087928))) (content!10414 (list!18977 (right!43137 lt!2087928))))))))

(declare-fun e!3158699 () List!58552)

(assert (=> d!1629736 (= lt!2088033 e!3158699)))

(declare-fun c!868335 () Bool)

(assert (=> d!1629736 (= c!868335 ((_ is Nil!58428) (list!18977 (left!42807 lt!2087928))))))

(assert (=> d!1629736 (= (++!12779 (list!18977 (left!42807 lt!2087928)) (list!18977 (right!43137 lt!2087928))) lt!2088033)))

(declare-fun b!5060623 () Bool)

(assert (=> b!5060623 (= e!3158698 (or (not (= (list!18977 (right!43137 lt!2087928)) Nil!58428)) (= lt!2088033 (list!18977 (left!42807 lt!2087928)))))))

(declare-fun b!5060622 () Bool)

(declare-fun res!2154904 () Bool)

(assert (=> b!5060622 (=> (not res!2154904) (not e!3158698))))

(assert (=> b!5060622 (= res!2154904 (= (size!39065 lt!2088033) (+ (size!39065 (list!18977 (left!42807 lt!2087928))) (size!39065 (list!18977 (right!43137 lt!2087928))))))))

(declare-fun b!5060620 () Bool)

(assert (=> b!5060620 (= e!3158699 (list!18977 (right!43137 lt!2087928)))))

(declare-fun b!5060621 () Bool)

(assert (=> b!5060621 (= e!3158699 (Cons!58428 (h!64876 (list!18977 (left!42807 lt!2087928))) (++!12779 (t!371255 (list!18977 (left!42807 lt!2087928))) (list!18977 (right!43137 lt!2087928)))))))

(assert (= (and d!1629736 c!868335) b!5060620))

(assert (= (and d!1629736 (not c!868335)) b!5060621))

(assert (= (and d!1629736 res!2154905) b!5060622))

(assert (= (and b!5060622 res!2154904) b!5060623))

(declare-fun m!6098206 () Bool)

(assert (=> d!1629736 m!6098206))

(assert (=> d!1629736 m!6097330))

(declare-fun m!6098208 () Bool)

(assert (=> d!1629736 m!6098208))

(assert (=> d!1629736 m!6097332))

(declare-fun m!6098210 () Bool)

(assert (=> d!1629736 m!6098210))

(declare-fun m!6098212 () Bool)

(assert (=> b!5060622 m!6098212))

(assert (=> b!5060622 m!6097330))

(declare-fun m!6098214 () Bool)

(assert (=> b!5060622 m!6098214))

(assert (=> b!5060622 m!6097332))

(declare-fun m!6098216 () Bool)

(assert (=> b!5060622 m!6098216))

(assert (=> b!5060621 m!6097332))

(declare-fun m!6098218 () Bool)

(assert (=> b!5060621 m!6098218))

(assert (=> b!5060139 d!1629736))

(declare-fun b!5060625 () Bool)

(declare-fun e!3158700 () List!58552)

(declare-fun e!3158701 () List!58552)

(assert (=> b!5060625 (= e!3158700 e!3158701)))

(declare-fun c!868337 () Bool)

(assert (=> b!5060625 (= c!868337 ((_ is Leaf!25842) (left!42807 lt!2087928)))))

(declare-fun b!5060626 () Bool)

(assert (=> b!5060626 (= e!3158701 (list!18979 (xs!18896 (left!42807 lt!2087928))))))

(declare-fun b!5060624 () Bool)

(assert (=> b!5060624 (= e!3158700 Nil!58428)))

(declare-fun b!5060627 () Bool)

(assert (=> b!5060627 (= e!3158701 (++!12779 (list!18977 (left!42807 (left!42807 lt!2087928))) (list!18977 (right!43137 (left!42807 lt!2087928)))))))

(declare-fun d!1629738 () Bool)

(declare-fun c!868336 () Bool)

(assert (=> d!1629738 (= c!868336 ((_ is Empty!15558) (left!42807 lt!2087928)))))

(assert (=> d!1629738 (= (list!18977 (left!42807 lt!2087928)) e!3158700)))

(assert (= (and d!1629738 c!868336) b!5060624))

(assert (= (and d!1629738 (not c!868336)) b!5060625))

(assert (= (and b!5060625 c!868337) b!5060626))

(assert (= (and b!5060625 (not c!868337)) b!5060627))

(declare-fun m!6098220 () Bool)

(assert (=> b!5060626 m!6098220))

(declare-fun m!6098222 () Bool)

(assert (=> b!5060627 m!6098222))

(declare-fun m!6098224 () Bool)

(assert (=> b!5060627 m!6098224))

(assert (=> b!5060627 m!6098222))

(assert (=> b!5060627 m!6098224))

(declare-fun m!6098226 () Bool)

(assert (=> b!5060627 m!6098226))

(assert (=> b!5060139 d!1629738))

(declare-fun b!5060629 () Bool)

(declare-fun e!3158702 () List!58552)

(declare-fun e!3158703 () List!58552)

(assert (=> b!5060629 (= e!3158702 e!3158703)))

(declare-fun c!868339 () Bool)

(assert (=> b!5060629 (= c!868339 ((_ is Leaf!25842) (right!43137 lt!2087928)))))

(declare-fun b!5060630 () Bool)

(assert (=> b!5060630 (= e!3158703 (list!18979 (xs!18896 (right!43137 lt!2087928))))))

(declare-fun b!5060628 () Bool)

(assert (=> b!5060628 (= e!3158702 Nil!58428)))

(declare-fun b!5060631 () Bool)

(assert (=> b!5060631 (= e!3158703 (++!12779 (list!18977 (left!42807 (right!43137 lt!2087928))) (list!18977 (right!43137 (right!43137 lt!2087928)))))))

(declare-fun d!1629740 () Bool)

(declare-fun c!868338 () Bool)

(assert (=> d!1629740 (= c!868338 ((_ is Empty!15558) (right!43137 lt!2087928)))))

(assert (=> d!1629740 (= (list!18977 (right!43137 lt!2087928)) e!3158702)))

(assert (= (and d!1629740 c!868338) b!5060628))

(assert (= (and d!1629740 (not c!868338)) b!5060629))

(assert (= (and b!5060629 c!868339) b!5060630))

(assert (= (and b!5060629 (not c!868339)) b!5060631))

(declare-fun m!6098228 () Bool)

(assert (=> b!5060630 m!6098228))

(declare-fun m!6098230 () Bool)

(assert (=> b!5060631 m!6098230))

(declare-fun m!6098232 () Bool)

(assert (=> b!5060631 m!6098232))

(assert (=> b!5060631 m!6098230))

(assert (=> b!5060631 m!6098232))

(declare-fun m!6098234 () Bool)

(assert (=> b!5060631 m!6098234))

(assert (=> b!5060139 d!1629740))

(declare-fun d!1629742 () Bool)

(declare-fun e!3158704 () Bool)

(assert (=> d!1629742 e!3158704))

(declare-fun res!2154907 () Bool)

(assert (=> d!1629742 (=> (not res!2154907) (not e!3158704))))

(declare-fun lt!2088034 () List!58552)

(assert (=> d!1629742 (= res!2154907 (= (content!10414 lt!2088034) ((_ map or) (content!10414 (list!18977 (left!42807 ys!41))) (content!10414 (list!18977 (right!43137 ys!41))))))))

(declare-fun e!3158705 () List!58552)

(assert (=> d!1629742 (= lt!2088034 e!3158705)))

(declare-fun c!868340 () Bool)

(assert (=> d!1629742 (= c!868340 ((_ is Nil!58428) (list!18977 (left!42807 ys!41))))))

(assert (=> d!1629742 (= (++!12779 (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))) lt!2088034)))

(declare-fun b!5060635 () Bool)

(assert (=> b!5060635 (= e!3158704 (or (not (= (list!18977 (right!43137 ys!41)) Nil!58428)) (= lt!2088034 (list!18977 (left!42807 ys!41)))))))

(declare-fun b!5060634 () Bool)

(declare-fun res!2154906 () Bool)

(assert (=> b!5060634 (=> (not res!2154906) (not e!3158704))))

(assert (=> b!5060634 (= res!2154906 (= (size!39065 lt!2088034) (+ (size!39065 (list!18977 (left!42807 ys!41))) (size!39065 (list!18977 (right!43137 ys!41))))))))

(declare-fun b!5060632 () Bool)

(assert (=> b!5060632 (= e!3158705 (list!18977 (right!43137 ys!41)))))

(declare-fun b!5060633 () Bool)

(assert (=> b!5060633 (= e!3158705 (Cons!58428 (h!64876 (list!18977 (left!42807 ys!41))) (++!12779 (t!371255 (list!18977 (left!42807 ys!41))) (list!18977 (right!43137 ys!41)))))))

(assert (= (and d!1629742 c!868340) b!5060632))

(assert (= (and d!1629742 (not c!868340)) b!5060633))

(assert (= (and d!1629742 res!2154907) b!5060634))

(assert (= (and b!5060634 res!2154906) b!5060635))

(declare-fun m!6098236 () Bool)

(assert (=> d!1629742 m!6098236))

(assert (=> d!1629742 m!6097078))

(declare-fun m!6098238 () Bool)

(assert (=> d!1629742 m!6098238))

(assert (=> d!1629742 m!6097074))

(declare-fun m!6098240 () Bool)

(assert (=> d!1629742 m!6098240))

(declare-fun m!6098242 () Bool)

(assert (=> b!5060634 m!6098242))

(assert (=> b!5060634 m!6097078))

(declare-fun m!6098244 () Bool)

(assert (=> b!5060634 m!6098244))

(assert (=> b!5060634 m!6097074))

(declare-fun m!6098246 () Bool)

(assert (=> b!5060634 m!6098246))

(assert (=> b!5060633 m!6097074))

(declare-fun m!6098248 () Bool)

(assert (=> b!5060633 m!6098248))

(assert (=> b!5060159 d!1629742))

(declare-fun b!5060637 () Bool)

(declare-fun e!3158706 () List!58552)

(declare-fun e!3158707 () List!58552)

(assert (=> b!5060637 (= e!3158706 e!3158707)))

(declare-fun c!868342 () Bool)

(assert (=> b!5060637 (= c!868342 ((_ is Leaf!25842) (left!42807 ys!41)))))

(declare-fun b!5060638 () Bool)

(assert (=> b!5060638 (= e!3158707 (list!18979 (xs!18896 (left!42807 ys!41))))))

(declare-fun b!5060636 () Bool)

(assert (=> b!5060636 (= e!3158706 Nil!58428)))

(declare-fun b!5060639 () Bool)

(assert (=> b!5060639 (= e!3158707 (++!12779 (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun d!1629744 () Bool)

(declare-fun c!868341 () Bool)

(assert (=> d!1629744 (= c!868341 ((_ is Empty!15558) (left!42807 ys!41)))))

(assert (=> d!1629744 (= (list!18977 (left!42807 ys!41)) e!3158706)))

(assert (= (and d!1629744 c!868341) b!5060636))

(assert (= (and d!1629744 (not c!868341)) b!5060637))

(assert (= (and b!5060637 c!868342) b!5060638))

(assert (= (and b!5060637 (not c!868342)) b!5060639))

(declare-fun m!6098250 () Bool)

(assert (=> b!5060638 m!6098250))

(assert (=> b!5060639 m!6097050))

(assert (=> b!5060639 m!6097052))

(assert (=> b!5060639 m!6097050))

(assert (=> b!5060639 m!6097052))

(assert (=> b!5060639 m!6098052))

(assert (=> b!5060159 d!1629744))

(declare-fun b!5060641 () Bool)

(declare-fun e!3158708 () List!58552)

(declare-fun e!3158709 () List!58552)

(assert (=> b!5060641 (= e!3158708 e!3158709)))

(declare-fun c!868344 () Bool)

(assert (=> b!5060641 (= c!868344 ((_ is Leaf!25842) (right!43137 ys!41)))))

(declare-fun b!5060642 () Bool)

(assert (=> b!5060642 (= e!3158709 (list!18979 (xs!18896 (right!43137 ys!41))))))

(declare-fun b!5060640 () Bool)

(assert (=> b!5060640 (= e!3158708 Nil!58428)))

(declare-fun b!5060643 () Bool)

(assert (=> b!5060643 (= e!3158709 (++!12779 (list!18977 (left!42807 (right!43137 ys!41))) (list!18977 (right!43137 (right!43137 ys!41)))))))

(declare-fun d!1629746 () Bool)

(declare-fun c!868343 () Bool)

(assert (=> d!1629746 (= c!868343 ((_ is Empty!15558) (right!43137 ys!41)))))

(assert (=> d!1629746 (= (list!18977 (right!43137 ys!41)) e!3158708)))

(assert (= (and d!1629746 c!868343) b!5060640))

(assert (= (and d!1629746 (not c!868343)) b!5060641))

(assert (= (and b!5060641 c!868344) b!5060642))

(assert (= (and b!5060641 (not c!868344)) b!5060643))

(assert (=> b!5060642 m!6098094))

(declare-fun m!6098252 () Bool)

(assert (=> b!5060643 m!6098252))

(declare-fun m!6098254 () Bool)

(assert (=> b!5060643 m!6098254))

(assert (=> b!5060643 m!6098252))

(assert (=> b!5060643 m!6098254))

(declare-fun m!6098256 () Bool)

(assert (=> b!5060643 m!6098256))

(assert (=> b!5060159 d!1629746))

(declare-fun d!1629748 () Bool)

(declare-fun res!2154908 () Bool)

(declare-fun e!3158710 () Bool)

(assert (=> d!1629748 (=> (not res!2154908) (not e!3158710))))

(assert (=> d!1629748 (= res!2154908 (= (csize!31346 (right!43137 xs!286)) (+ (size!39064 (left!42807 (right!43137 xs!286))) (size!39064 (right!43137 (right!43137 xs!286))))))))

(assert (=> d!1629748 (= (inv!77526 (right!43137 xs!286)) e!3158710)))

(declare-fun b!5060644 () Bool)

(declare-fun res!2154909 () Bool)

(assert (=> b!5060644 (=> (not res!2154909) (not e!3158710))))

(assert (=> b!5060644 (= res!2154909 (and (not (= (left!42807 (right!43137 xs!286)) Empty!15558)) (not (= (right!43137 (right!43137 xs!286)) Empty!15558))))))

(declare-fun b!5060645 () Bool)

(declare-fun res!2154910 () Bool)

(assert (=> b!5060645 (=> (not res!2154910) (not e!3158710))))

(assert (=> b!5060645 (= res!2154910 (= (cheight!15769 (right!43137 xs!286)) (+ (max!0 (height!2135 (left!42807 (right!43137 xs!286))) (height!2135 (right!43137 (right!43137 xs!286)))) 1)))))

(declare-fun b!5060646 () Bool)

(assert (=> b!5060646 (= e!3158710 (<= 0 (cheight!15769 (right!43137 xs!286))))))

(assert (= (and d!1629748 res!2154908) b!5060644))

(assert (= (and b!5060644 res!2154909) b!5060645))

(assert (= (and b!5060645 res!2154910) b!5060646))

(declare-fun m!6098258 () Bool)

(assert (=> d!1629748 m!6098258))

(declare-fun m!6098260 () Bool)

(assert (=> d!1629748 m!6098260))

(assert (=> b!5060645 m!6098178))

(assert (=> b!5060645 m!6098180))

(assert (=> b!5060645 m!6098178))

(assert (=> b!5060645 m!6098180))

(declare-fun m!6098262 () Bool)

(assert (=> b!5060645 m!6098262))

(assert (=> b!5060051 d!1629748))

(declare-fun d!1629750 () Bool)

(assert (=> d!1629750 (= (height!2135 (left!42807 ys!41)) (ite ((_ is Empty!15558) (left!42807 ys!41)) 0 (ite ((_ is Leaf!25842) (left!42807 ys!41)) 1 (cheight!15769 (left!42807 ys!41)))))))

(assert (=> b!5060126 d!1629750))

(declare-fun d!1629752 () Bool)

(assert (=> d!1629752 (= (height!2135 (right!43137 ys!41)) (ite ((_ is Empty!15558) (right!43137 ys!41)) 0 (ite ((_ is Leaf!25842) (right!43137 ys!41)) 1 (cheight!15769 (right!43137 ys!41)))))))

(assert (=> b!5060126 d!1629752))

(declare-fun d!1629754 () Bool)

(declare-fun res!2154911 () Bool)

(declare-fun e!3158711 () Bool)

(assert (=> d!1629754 (=> (not res!2154911) (not e!3158711))))

(assert (=> d!1629754 (= res!2154911 (<= (size!39065 (list!18979 (xs!18896 (left!42807 ys!41)))) 512))))

(assert (=> d!1629754 (= (inv!77527 (left!42807 ys!41)) e!3158711)))

(declare-fun b!5060647 () Bool)

(declare-fun res!2154912 () Bool)

(assert (=> b!5060647 (=> (not res!2154912) (not e!3158711))))

(assert (=> b!5060647 (= res!2154912 (= (csize!31347 (left!42807 ys!41)) (size!39065 (list!18979 (xs!18896 (left!42807 ys!41))))))))

(declare-fun b!5060648 () Bool)

(assert (=> b!5060648 (= e!3158711 (and (> (csize!31347 (left!42807 ys!41)) 0) (<= (csize!31347 (left!42807 ys!41)) 512)))))

(assert (= (and d!1629754 res!2154911) b!5060647))

(assert (= (and b!5060647 res!2154912) b!5060648))

(assert (=> d!1629754 m!6098250))

(assert (=> d!1629754 m!6098250))

(declare-fun m!6098264 () Bool)

(assert (=> d!1629754 m!6098264))

(assert (=> b!5060647 m!6098250))

(assert (=> b!5060647 m!6098250))

(assert (=> b!5060647 m!6098264))

(assert (=> b!5060112 d!1629754))

(declare-fun d!1629756 () Bool)

(assert (=> d!1629756 (= (inv!77522 (xs!18896 (left!42807 ys!41))) (<= (size!39065 (innerList!15646 (xs!18896 (left!42807 ys!41)))) 2147483647))))

(declare-fun bs!1189608 () Bool)

(assert (= bs!1189608 d!1629756))

(declare-fun m!6098266 () Bool)

(assert (=> bs!1189608 m!6098266))

(assert (=> b!5060181 d!1629756))

(declare-fun d!1629758 () Bool)

(declare-fun c!868345 () Bool)

(assert (=> d!1629758 (= c!868345 ((_ is Node!15558) (left!42807 (left!42807 ys!41))))))

(declare-fun e!3158712 () Bool)

(assert (=> d!1629758 (= (inv!77523 (left!42807 (left!42807 ys!41))) e!3158712)))

(declare-fun b!5060649 () Bool)

(assert (=> b!5060649 (= e!3158712 (inv!77526 (left!42807 (left!42807 ys!41))))))

(declare-fun b!5060650 () Bool)

(declare-fun e!3158713 () Bool)

(assert (=> b!5060650 (= e!3158712 e!3158713)))

(declare-fun res!2154913 () Bool)

(assert (=> b!5060650 (= res!2154913 (not ((_ is Leaf!25842) (left!42807 (left!42807 ys!41)))))))

(assert (=> b!5060650 (=> res!2154913 e!3158713)))

(declare-fun b!5060651 () Bool)

(assert (=> b!5060651 (= e!3158713 (inv!77527 (left!42807 (left!42807 ys!41))))))

(assert (= (and d!1629758 c!868345) b!5060649))

(assert (= (and d!1629758 (not c!868345)) b!5060650))

(assert (= (and b!5060650 (not res!2154913)) b!5060651))

(declare-fun m!6098268 () Bool)

(assert (=> b!5060649 m!6098268))

(declare-fun m!6098270 () Bool)

(assert (=> b!5060651 m!6098270))

(assert (=> b!5060180 d!1629758))

(declare-fun d!1629760 () Bool)

(declare-fun c!868346 () Bool)

(assert (=> d!1629760 (= c!868346 ((_ is Node!15558) (right!43137 (left!42807 ys!41))))))

(declare-fun e!3158714 () Bool)

(assert (=> d!1629760 (= (inv!77523 (right!43137 (left!42807 ys!41))) e!3158714)))

(declare-fun b!5060652 () Bool)

(assert (=> b!5060652 (= e!3158714 (inv!77526 (right!43137 (left!42807 ys!41))))))

(declare-fun b!5060653 () Bool)

(declare-fun e!3158715 () Bool)

(assert (=> b!5060653 (= e!3158714 e!3158715)))

(declare-fun res!2154914 () Bool)

(assert (=> b!5060653 (= res!2154914 (not ((_ is Leaf!25842) (right!43137 (left!42807 ys!41)))))))

(assert (=> b!5060653 (=> res!2154914 e!3158715)))

(declare-fun b!5060654 () Bool)

(assert (=> b!5060654 (= e!3158715 (inv!77527 (right!43137 (left!42807 ys!41))))))

(assert (= (and d!1629760 c!868346) b!5060652))

(assert (= (and d!1629760 (not c!868346)) b!5060653))

(assert (= (and b!5060653 (not res!2154914)) b!5060654))

(declare-fun m!6098272 () Bool)

(assert (=> b!5060652 m!6098272))

(declare-fun m!6098274 () Bool)

(assert (=> b!5060654 m!6098274))

(assert (=> b!5060180 d!1629760))

(declare-fun b!5060655 () Bool)

(declare-fun res!2154916 () Bool)

(declare-fun e!3158716 () Bool)

(assert (=> b!5060655 (=> (not res!2154916) (not e!3158716))))

(assert (=> b!5060655 (= res!2154916 (isBalanced!4420 (left!42807 (right!43137 ys!41))))))

(declare-fun b!5060656 () Bool)

(declare-fun res!2154917 () Bool)

(assert (=> b!5060656 (=> (not res!2154917) (not e!3158716))))

(assert (=> b!5060656 (= res!2154917 (isBalanced!4420 (right!43137 (right!43137 ys!41))))))

(declare-fun b!5060657 () Bool)

(declare-fun res!2154919 () Bool)

(assert (=> b!5060657 (=> (not res!2154919) (not e!3158716))))

(assert (=> b!5060657 (= res!2154919 (not (isEmpty!31619 (left!42807 (right!43137 ys!41)))))))

(declare-fun b!5060658 () Bool)

(assert (=> b!5060658 (= e!3158716 (not (isEmpty!31619 (right!43137 (right!43137 ys!41)))))))

(declare-fun b!5060659 () Bool)

(declare-fun res!2154920 () Bool)

(assert (=> b!5060659 (=> (not res!2154920) (not e!3158716))))

(assert (=> b!5060659 (= res!2154920 (<= (- (height!2135 (left!42807 (right!43137 ys!41))) (height!2135 (right!43137 (right!43137 ys!41)))) 1))))

(declare-fun b!5060660 () Bool)

(declare-fun e!3158717 () Bool)

(assert (=> b!5060660 (= e!3158717 e!3158716)))

(declare-fun res!2154918 () Bool)

(assert (=> b!5060660 (=> (not res!2154918) (not e!3158716))))

(assert (=> b!5060660 (= res!2154918 (<= (- 1) (- (height!2135 (left!42807 (right!43137 ys!41))) (height!2135 (right!43137 (right!43137 ys!41))))))))

(declare-fun d!1629762 () Bool)

(declare-fun res!2154915 () Bool)

(assert (=> d!1629762 (=> res!2154915 e!3158717)))

(assert (=> d!1629762 (= res!2154915 (not ((_ is Node!15558) (right!43137 ys!41))))))

(assert (=> d!1629762 (= (isBalanced!4420 (right!43137 ys!41)) e!3158717)))

(assert (= (and d!1629762 (not res!2154915)) b!5060660))

(assert (= (and b!5060660 res!2154918) b!5060659))

(assert (= (and b!5060659 res!2154920) b!5060655))

(assert (= (and b!5060655 res!2154916) b!5060656))

(assert (= (and b!5060656 res!2154917) b!5060657))

(assert (= (and b!5060657 res!2154919) b!5060658))

(declare-fun m!6098276 () Bool)

(assert (=> b!5060657 m!6098276))

(assert (=> b!5060659 m!6098106))

(assert (=> b!5060659 m!6098108))

(declare-fun m!6098278 () Bool)

(assert (=> b!5060656 m!6098278))

(declare-fun m!6098280 () Bool)

(assert (=> b!5060658 m!6098280))

(declare-fun m!6098282 () Bool)

(assert (=> b!5060655 m!6098282))

(assert (=> b!5060660 m!6098106))

(assert (=> b!5060660 m!6098108))

(assert (=> b!5060123 d!1629762))

(declare-fun d!1629764 () Bool)

(declare-fun lt!2088035 () Bool)

(assert (=> d!1629764 (= lt!2088035 (isEmpty!31621 (list!18977 (right!43137 xs!286))))))

(assert (=> d!1629764 (= lt!2088035 (= (size!39064 (right!43137 xs!286)) 0))))

(assert (=> d!1629764 (= (isEmpty!31619 (right!43137 xs!286)) lt!2088035)))

(declare-fun bs!1189609 () Bool)

(assert (= bs!1189609 d!1629764))

(assert (=> bs!1189609 m!6097068))

(assert (=> bs!1189609 m!6097068))

(declare-fun m!6098284 () Bool)

(assert (=> bs!1189609 m!6098284))

(declare-fun m!6098286 () Bool)

(assert (=> bs!1189609 m!6098286))

(assert (=> b!5060101 d!1629764))

(declare-fun d!1629766 () Bool)

(declare-fun lt!2088036 () Conc!15558)

(assert (=> d!1629766 (= (list!18977 lt!2088036) (++!12779 (list!18977 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) (list!18977 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))))))

(declare-fun e!3158719 () Conc!15558)

(assert (=> d!1629766 (= lt!2088036 e!3158719)))

(declare-fun c!868347 () Bool)

(assert (=> d!1629766 (= c!868347 (= (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))) Empty!15558))))

(assert (=> d!1629766 (= (<>!392 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))) (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) lt!2088036)))

(declare-fun b!5060662 () Bool)

(declare-fun e!3158718 () Conc!15558)

(assert (=> b!5060662 (= e!3158719 e!3158718)))

(declare-fun c!868348 () Bool)

(assert (=> b!5060662 (= c!868348 (= (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))) Empty!15558))))

(declare-fun b!5060664 () Bool)

(assert (=> b!5060664 (= e!3158718 (Node!15558 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))) (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))) (+ (size!39064 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) (size!39064 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))) (+ (max!0 (height!2135 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) (height!2135 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))) 1)))))

(declare-fun b!5060663 () Bool)

(assert (=> b!5060663 (= e!3158718 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))))))

(declare-fun b!5060661 () Bool)

(assert (=> b!5060661 (= e!3158719 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))))

(assert (= (and d!1629766 c!868347) b!5060661))

(assert (= (and d!1629766 (not c!868347)) b!5060662))

(assert (= (and b!5060662 c!868348) b!5060663))

(assert (= (and b!5060662 (not c!868348)) b!5060664))

(declare-fun m!6098288 () Bool)

(assert (=> d!1629766 m!6098288))

(declare-fun m!6098290 () Bool)

(assert (=> d!1629766 m!6098290))

(declare-fun m!6098292 () Bool)

(assert (=> d!1629766 m!6098292))

(assert (=> d!1629766 m!6098290))

(assert (=> d!1629766 m!6098292))

(declare-fun m!6098294 () Bool)

(assert (=> d!1629766 m!6098294))

(declare-fun m!6098296 () Bool)

(assert (=> b!5060664 m!6098296))

(declare-fun m!6098298 () Bool)

(assert (=> b!5060664 m!6098298))

(declare-fun m!6098300 () Bool)

(assert (=> b!5060664 m!6098300))

(declare-fun m!6098302 () Bool)

(assert (=> b!5060664 m!6098302))

(assert (=> b!5060664 m!6098296))

(declare-fun m!6098304 () Bool)

(assert (=> b!5060664 m!6098304))

(assert (=> b!5060664 m!6098302))

(assert (=> bm!352360 d!1629766))

(assert (=> b!5060099 d!1629726))

(assert (=> b!5059983 d!1629446))

(assert (=> b!5059983 d!1629430))

(assert (=> b!5060120 d!1629652))

(assert (=> b!5060120 d!1629654))

(declare-fun d!1629768 () Bool)

(declare-fun res!2154921 () Bool)

(declare-fun e!3158720 () Bool)

(assert (=> d!1629768 (=> (not res!2154921) (not e!3158720))))

(assert (=> d!1629768 (= res!2154921 (<= (size!39065 (list!18979 (xs!18896 xs!286))) 512))))

(assert (=> d!1629768 (= (inv!77527 xs!286) e!3158720)))

(declare-fun b!5060665 () Bool)

(declare-fun res!2154922 () Bool)

(assert (=> b!5060665 (=> (not res!2154922) (not e!3158720))))

(assert (=> b!5060665 (= res!2154922 (= (csize!31347 xs!286) (size!39065 (list!18979 (xs!18896 xs!286)))))))

(declare-fun b!5060666 () Bool)

(assert (=> b!5060666 (= e!3158720 (and (> (csize!31347 xs!286) 0) (<= (csize!31347 xs!286) 512)))))

(assert (= (and d!1629768 res!2154921) b!5060665))

(assert (= (and b!5060665 res!2154922) b!5060666))

(assert (=> d!1629768 m!6097350))

(assert (=> d!1629768 m!6097350))

(declare-fun m!6098306 () Bool)

(assert (=> d!1629768 m!6098306))

(assert (=> b!5060665 m!6097350))

(assert (=> b!5060665 m!6097350))

(assert (=> b!5060665 m!6098306))

(assert (=> b!5060106 d!1629768))

(assert (=> b!5059814 d!1629452))

(assert (=> b!5059814 d!1629746))

(assert (=> b!5059814 d!1629678))

(declare-fun bm!352437 () Bool)

(declare-fun call!352443 () List!58552)

(assert (=> bm!352437 (= call!352443 (++!12779 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5060667 () Bool)

(declare-fun e!3158721 () Bool)

(declare-fun call!352444 () List!58552)

(declare-fun call!352442 () List!58552)

(assert (=> b!5060667 (= e!3158721 (= call!352444 call!352442))))

(declare-fun bm!352438 () Bool)

(declare-fun call!352445 () List!58552)

(assert (=> bm!352438 (= call!352445 (++!12779 (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))))))

(declare-fun b!5060668 () Bool)

(assert (=> b!5060668 (= e!3158721 (= call!352444 call!352442))))

(declare-fun lt!2088037 () Bool)

(assert (=> b!5060668 (= lt!2088037 (appendAssoc!298 (t!371255 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))))))

(declare-fun bm!352439 () Bool)

(assert (=> bm!352439 (= call!352444 (++!12779 call!352443 (list!18977 (right!43137 ys!41))))))

(declare-fun d!1629770 () Bool)

(assert (=> d!1629770 e!3158721))

(declare-fun c!868349 () Bool)

(assert (=> d!1629770 (= c!868349 ((_ is Nil!58428) (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))))))

(assert (=> d!1629770 (= (appendAssoc!298 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))) (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))) true)))

(declare-fun bm!352440 () Bool)

(assert (=> bm!352440 (= call!352442 (++!12779 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))) call!352445))))

(assert (= (and d!1629770 c!868349) b!5060667))

(assert (= (and d!1629770 (not c!868349)) b!5060668))

(assert (= (or b!5060667 b!5060668) bm!352437))

(assert (= (or b!5060667 b!5060668) bm!352438))

(assert (= (or b!5060667 b!5060668) bm!352440))

(assert (= (or b!5060667 b!5060668) bm!352439))

(assert (=> bm!352440 m!6097072))

(declare-fun m!6098308 () Bool)

(assert (=> bm!352440 m!6098308))

(assert (=> bm!352437 m!6097072))

(assert (=> bm!352437 m!6097052))

(declare-fun m!6098310 () Bool)

(assert (=> bm!352437 m!6098310))

(assert (=> bm!352438 m!6097052))

(assert (=> bm!352438 m!6097074))

(declare-fun m!6098312 () Bool)

(assert (=> bm!352438 m!6098312))

(assert (=> bm!352439 m!6097074))

(declare-fun m!6098314 () Bool)

(assert (=> bm!352439 m!6098314))

(assert (=> b!5060668 m!6097052))

(assert (=> b!5060668 m!6097074))

(declare-fun m!6098316 () Bool)

(assert (=> b!5060668 m!6098316))

(assert (=> b!5059814 d!1629770))

(declare-fun d!1629772 () Bool)

(declare-fun e!3158722 () Bool)

(assert (=> d!1629772 e!3158722))

(declare-fun res!2154924 () Bool)

(assert (=> d!1629772 (=> (not res!2154924) (not e!3158722))))

(declare-fun lt!2088038 () List!58552)

(assert (=> d!1629772 (= res!2154924 (= (content!10414 lt!2088038) ((_ map or) (content!10414 (list!18977 xs!286)) (content!10414 (list!18977 (left!42807 (left!42807 ys!41)))))))))

(declare-fun e!3158723 () List!58552)

(assert (=> d!1629772 (= lt!2088038 e!3158723)))

(declare-fun c!868350 () Bool)

(assert (=> d!1629772 (= c!868350 ((_ is Nil!58428) (list!18977 xs!286)))))

(assert (=> d!1629772 (= (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))) lt!2088038)))

(declare-fun b!5060672 () Bool)

(assert (=> b!5060672 (= e!3158722 (or (not (= (list!18977 (left!42807 (left!42807 ys!41))) Nil!58428)) (= lt!2088038 (list!18977 xs!286))))))

(declare-fun b!5060671 () Bool)

(declare-fun res!2154923 () Bool)

(assert (=> b!5060671 (=> (not res!2154923) (not e!3158722))))

(assert (=> b!5060671 (= res!2154923 (= (size!39065 lt!2088038) (+ (size!39065 (list!18977 xs!286)) (size!39065 (list!18977 (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5060669 () Bool)

(assert (=> b!5060669 (= e!3158723 (list!18977 (left!42807 (left!42807 ys!41))))))

(declare-fun b!5060670 () Bool)

(assert (=> b!5060670 (= e!3158723 (Cons!58428 (h!64876 (list!18977 xs!286)) (++!12779 (t!371255 (list!18977 xs!286)) (list!18977 (left!42807 (left!42807 ys!41))))))))

(assert (= (and d!1629772 c!868350) b!5060669))

(assert (= (and d!1629772 (not c!868350)) b!5060670))

(assert (= (and d!1629772 res!2154924) b!5060671))

(assert (= (and b!5060671 res!2154923) b!5060672))

(declare-fun m!6098318 () Bool)

(assert (=> d!1629772 m!6098318))

(assert (=> d!1629772 m!6096984))

(assert (=> d!1629772 m!6097338))

(assert (=> d!1629772 m!6097050))

(declare-fun m!6098320 () Bool)

(assert (=> d!1629772 m!6098320))

(declare-fun m!6098322 () Bool)

(assert (=> b!5060671 m!6098322))

(assert (=> b!5060671 m!6096984))

(assert (=> b!5060671 m!6097344))

(assert (=> b!5060671 m!6097050))

(declare-fun m!6098324 () Bool)

(assert (=> b!5060671 m!6098324))

(assert (=> b!5060670 m!6097050))

(declare-fun m!6098326 () Bool)

(assert (=> b!5060670 m!6098326))

(assert (=> b!5059814 d!1629772))

(assert (=> b!5059814 d!1629676))

(declare-fun d!1629774 () Bool)

(declare-fun lt!2088039 () Conc!15558)

(assert (=> d!1629774 (= (list!18977 lt!2088039) (++!12779 (list!18977 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) (list!18977 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))))))

(declare-fun e!3158725 () Conc!15558)

(assert (=> d!1629774 (= lt!2088039 e!3158725)))

(declare-fun c!868351 () Bool)

(assert (=> d!1629774 (= c!868351 (= (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))) Empty!15558))))

(assert (=> d!1629774 (= (<>!392 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))) (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) lt!2088039)))

(declare-fun b!5060674 () Bool)

(declare-fun e!3158724 () Conc!15558)

(assert (=> b!5060674 (= e!3158725 e!3158724)))

(declare-fun c!868352 () Bool)

(assert (=> b!5060674 (= c!868352 (= (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))) Empty!15558))))

(declare-fun b!5060676 () Bool)

(assert (=> b!5060676 (= e!3158724 (Node!15558 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))) (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))) (+ (size!39064 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) (size!39064 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))) (+ (max!0 (height!2135 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) (height!2135 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))) 1)))))

(declare-fun b!5060675 () Bool)

(assert (=> b!5060675 (= e!3158724 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))))))

(declare-fun b!5060673 () Bool)

(assert (=> b!5060673 (= e!3158725 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))))

(assert (= (and d!1629774 c!868351) b!5060673))

(assert (= (and d!1629774 (not c!868351)) b!5060674))

(assert (= (and b!5060674 c!868352) b!5060675))

(assert (= (and b!5060674 (not c!868352)) b!5060676))

(declare-fun m!6098328 () Bool)

(assert (=> d!1629774 m!6098328))

(declare-fun m!6098330 () Bool)

(assert (=> d!1629774 m!6098330))

(declare-fun m!6098332 () Bool)

(assert (=> d!1629774 m!6098332))

(assert (=> d!1629774 m!6098330))

(assert (=> d!1629774 m!6098332))

(declare-fun m!6098334 () Bool)

(assert (=> d!1629774 m!6098334))

(declare-fun m!6098336 () Bool)

(assert (=> b!5060676 m!6098336))

(declare-fun m!6098338 () Bool)

(assert (=> b!5060676 m!6098338))

(declare-fun m!6098340 () Bool)

(assert (=> b!5060676 m!6098340))

(declare-fun m!6098342 () Bool)

(assert (=> b!5060676 m!6098342))

(assert (=> b!5060676 m!6098336))

(declare-fun m!6098344 () Bool)

(assert (=> b!5060676 m!6098344))

(assert (=> b!5060676 m!6098342))

(assert (=> bm!352368 d!1629774))

(declare-fun d!1629776 () Bool)

(declare-fun c!868355 () Bool)

(assert (=> d!1629776 (= c!868355 ((_ is Nil!58428) lt!2087969))))

(declare-fun e!3158728 () (InoxSet T!105076))

(assert (=> d!1629776 (= (content!10414 lt!2087969) e!3158728)))

(declare-fun b!5060681 () Bool)

(assert (=> b!5060681 (= e!3158728 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5060682 () Bool)

(assert (=> b!5060682 (= e!3158728 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 lt!2087969) true) (content!10414 (t!371255 lt!2087969))))))

(assert (= (and d!1629776 c!868355) b!5060681))

(assert (= (and d!1629776 (not c!868355)) b!5060682))

(declare-fun m!6098346 () Bool)

(assert (=> b!5060682 m!6098346))

(declare-fun m!6098348 () Bool)

(assert (=> b!5060682 m!6098348))

(assert (=> d!1629450 d!1629776))

(declare-fun d!1629778 () Bool)

(declare-fun c!868356 () Bool)

(assert (=> d!1629778 (= c!868356 ((_ is Nil!58428) (list!18977 xs!286)))))

(declare-fun e!3158729 () (InoxSet T!105076))

(assert (=> d!1629778 (= (content!10414 (list!18977 xs!286)) e!3158729)))

(declare-fun b!5060683 () Bool)

(assert (=> b!5060683 (= e!3158729 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5060684 () Bool)

(assert (=> b!5060684 (= e!3158729 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 xs!286)) true) (content!10414 (t!371255 (list!18977 xs!286)))))))

(assert (= (and d!1629778 c!868356) b!5060683))

(assert (= (and d!1629778 (not c!868356)) b!5060684))

(declare-fun m!6098350 () Bool)

(assert (=> b!5060684 m!6098350))

(assert (=> b!5060684 m!6098190))

(assert (=> d!1629450 d!1629778))

(declare-fun d!1629780 () Bool)

(declare-fun c!868357 () Bool)

(assert (=> d!1629780 (= c!868357 ((_ is Nil!58428) (list!18977 ys!41)))))

(declare-fun e!3158730 () (InoxSet T!105076))

(assert (=> d!1629780 (= (content!10414 (list!18977 ys!41)) e!3158730)))

(declare-fun b!5060685 () Bool)

(assert (=> b!5060685 (= e!3158730 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5060686 () Bool)

(assert (=> b!5060686 (= e!3158730 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 ys!41)) true) (content!10414 (t!371255 (list!18977 ys!41)))))))

(assert (= (and d!1629780 c!868357) b!5060685))

(assert (= (and d!1629780 (not c!868357)) b!5060686))

(declare-fun m!6098352 () Bool)

(assert (=> b!5060686 m!6098352))

(declare-fun m!6098354 () Bool)

(assert (=> b!5060686 m!6098354))

(assert (=> d!1629450 d!1629780))

(declare-fun d!1629782 () Bool)

(assert (=> d!1629782 (= (inv!77522 (xs!18896 (right!43137 ys!41))) (<= (size!39065 (innerList!15646 (xs!18896 (right!43137 ys!41)))) 2147483647))))

(declare-fun bs!1189610 () Bool)

(assert (= bs!1189610 d!1629782))

(declare-fun m!6098356 () Bool)

(assert (=> bs!1189610 m!6098356))

(assert (=> b!5060184 d!1629782))

(declare-fun d!1629784 () Bool)

(declare-fun lt!2088040 () Bool)

(assert (=> d!1629784 (= lt!2088040 (isEmpty!31621 (list!18977 (left!42807 lt!2087928))))))

(assert (=> d!1629784 (= lt!2088040 (= (size!39064 (left!42807 lt!2087928)) 0))))

(assert (=> d!1629784 (= (isEmpty!31619 (left!42807 lt!2087928)) lt!2088040)))

(declare-fun bs!1189611 () Bool)

(assert (= bs!1189611 d!1629784))

(assert (=> bs!1189611 m!6097330))

(assert (=> bs!1189611 m!6097330))

(declare-fun m!6098358 () Bool)

(assert (=> bs!1189611 m!6098358))

(declare-fun m!6098360 () Bool)

(assert (=> bs!1189611 m!6098360))

(assert (=> b!5060118 d!1629784))

(declare-fun d!1629786 () Bool)

(declare-fun res!2154925 () Bool)

(declare-fun e!3158731 () Bool)

(assert (=> d!1629786 (=> (not res!2154925) (not e!3158731))))

(assert (=> d!1629786 (= res!2154925 (= (csize!31346 xs!286) (+ (size!39064 (left!42807 xs!286)) (size!39064 (right!43137 xs!286)))))))

(assert (=> d!1629786 (= (inv!77526 xs!286) e!3158731)))

(declare-fun b!5060687 () Bool)

(declare-fun res!2154926 () Bool)

(assert (=> b!5060687 (=> (not res!2154926) (not e!3158731))))

(assert (=> b!5060687 (= res!2154926 (and (not (= (left!42807 xs!286) Empty!15558)) (not (= (right!43137 xs!286) Empty!15558))))))

(declare-fun b!5060688 () Bool)

(declare-fun res!2154927 () Bool)

(assert (=> b!5060688 (=> (not res!2154927) (not e!3158731))))

(assert (=> b!5060688 (= res!2154927 (= (cheight!15769 xs!286) (+ (max!0 (height!2135 (left!42807 xs!286)) (height!2135 (right!43137 xs!286))) 1)))))

(declare-fun b!5060689 () Bool)

(assert (=> b!5060689 (= e!3158731 (<= 0 (cheight!15769 xs!286)))))

(assert (= (and d!1629786 res!2154925) b!5060687))

(assert (= (and b!5060687 res!2154926) b!5060688))

(assert (= (and b!5060688 res!2154927) b!5060689))

(assert (=> d!1629786 m!6097090))

(assert (=> d!1629786 m!6098286))

(assert (=> b!5060688 m!6096996))

(assert (=> b!5060688 m!6096998))

(assert (=> b!5060688 m!6096996))

(assert (=> b!5060688 m!6096998))

(declare-fun m!6098362 () Bool)

(assert (=> b!5060688 m!6098362))

(assert (=> b!5060104 d!1629786))

(declare-fun bm!352441 () Bool)

(declare-fun call!352447 () List!58552)

(assert (=> bm!352441 (= call!352447 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 ys!41))))))

(declare-fun b!5060690 () Bool)

(declare-fun e!3158732 () Bool)

(declare-fun call!352448 () List!58552)

(declare-fun call!352446 () List!58552)

(assert (=> b!5060690 (= e!3158732 (= call!352448 call!352446))))

(declare-fun bm!352442 () Bool)

(declare-fun call!352449 () List!58552)

(assert (=> bm!352442 (= call!352449 (++!12779 (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))))))

(declare-fun b!5060691 () Bool)

(assert (=> b!5060691 (= e!3158732 (= call!352448 call!352446))))

(declare-fun lt!2088041 () Bool)

(assert (=> b!5060691 (= lt!2088041 (appendAssoc!298 (t!371255 (list!18977 xs!286)) (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))))))

(declare-fun bm!352443 () Bool)

(assert (=> bm!352443 (= call!352448 (++!12779 call!352447 (list!18977 (right!43137 ys!41))))))

(declare-fun d!1629788 () Bool)

(assert (=> d!1629788 e!3158732))

(declare-fun c!868358 () Bool)

(assert (=> d!1629788 (= c!868358 ((_ is Nil!58428) (list!18977 xs!286)))))

(assert (=> d!1629788 (= (appendAssoc!298 (list!18977 xs!286) (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))) true)))

(declare-fun bm!352444 () Bool)

(assert (=> bm!352444 (= call!352446 (++!12779 (list!18977 xs!286) call!352449))))

(assert (= (and d!1629788 c!868358) b!5060690))

(assert (= (and d!1629788 (not c!868358)) b!5060691))

(assert (= (or b!5060690 b!5060691) bm!352441))

(assert (= (or b!5060690 b!5060691) bm!352442))

(assert (= (or b!5060690 b!5060691) bm!352444))

(assert (= (or b!5060690 b!5060691) bm!352443))

(assert (=> bm!352444 m!6096984))

(declare-fun m!6098364 () Bool)

(assert (=> bm!352444 m!6098364))

(assert (=> bm!352441 m!6096984))

(assert (=> bm!352441 m!6097078))

(declare-fun m!6098366 () Bool)

(assert (=> bm!352441 m!6098366))

(assert (=> bm!352442 m!6097078))

(assert (=> bm!352442 m!6097074))

(assert (=> bm!352442 m!6097356))

(assert (=> bm!352443 m!6097074))

(declare-fun m!6098368 () Bool)

(assert (=> bm!352443 m!6098368))

(assert (=> b!5060691 m!6097078))

(assert (=> b!5060691 m!6097074))

(declare-fun m!6098370 () Bool)

(assert (=> b!5060691 m!6098370))

(assert (=> b!5059812 d!1629788))

(assert (=> b!5059812 d!1629452))

(assert (=> b!5059812 d!1629744))

(assert (=> b!5059812 d!1629746))

(declare-fun b!5060692 () Bool)

(declare-fun e!3158736 () Conc!15558)

(declare-fun call!352450 () Conc!15558)

(assert (=> b!5060692 (= e!3158736 call!352450)))

(declare-fun b!5060693 () Bool)

(declare-fun c!868359 () Bool)

(declare-fun call!352461 () Int)

(declare-fun call!352455 () Int)

(assert (=> b!5060693 (= c!868359 (>= call!352461 call!352455))))

(declare-fun e!3158742 () Conc!15558)

(declare-fun e!3158734 () Conc!15558)

(assert (=> b!5060693 (= e!3158742 e!3158734)))

(declare-fun b!5060694 () Bool)

(declare-fun c!868364 () Bool)

(declare-fun call!352452 () Int)

(assert (=> b!5060694 (= c!868364 (>= call!352452 call!352461))))

(declare-fun e!3158741 () Conc!15558)

(assert (=> b!5060694 (= e!3158742 e!3158741)))

(declare-fun bm!352445 () Bool)

(declare-fun call!352456 () Conc!15558)

(declare-fun call!352463 () Conc!15558)

(assert (=> bm!352445 (= call!352456 call!352463)))

(declare-fun b!5060695 () Bool)

(declare-fun e!3158733 () Conc!15558)

(declare-fun call!352451 () Conc!15558)

(assert (=> b!5060695 (= e!3158733 call!352451)))

(declare-fun bm!352446 () Bool)

(declare-fun call!352454 () Conc!15558)

(declare-fun call!352464 () Conc!15558)

(assert (=> bm!352446 (= call!352454 call!352464)))

(declare-fun b!5060696 () Bool)

(assert (=> b!5060696 (= e!3158734 e!3158736)))

(declare-fun lt!2088044 () Conc!15558)

(declare-fun call!352465 () Conc!15558)

(assert (=> b!5060696 (= lt!2088044 call!352465)))

(declare-fun c!868366 () Bool)

(declare-fun call!352460 () Int)

(assert (=> b!5060696 (= c!868366 (= call!352452 (- call!352460 3)))))

(declare-fun bm!352447 () Bool)

(declare-fun c!868361 () Bool)

(assert (=> bm!352447 (= call!352461 (height!2135 (ite c!868361 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun b!5060697 () Bool)

(assert (=> b!5060697 (= e!3158741 call!352454)))

(declare-fun b!5060698 () Bool)

(declare-fun res!2154930 () Bool)

(declare-fun e!3158738 () Bool)

(assert (=> b!5060698 (=> (not res!2154930) (not e!3158738))))

(declare-fun lt!2088045 () Conc!15558)

(assert (=> b!5060698 (= res!2154930 (>= (height!2135 lt!2088045) (max!0 (height!2135 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (height!2135 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun bm!352448 () Bool)

(declare-fun call!352462 () Conc!15558)

(assert (=> bm!352448 (= call!352465 call!352462)))

(declare-fun b!5060699 () Bool)

(declare-fun call!352457 () Conc!15558)

(assert (=> b!5060699 (= e!3158734 call!352457)))

(declare-fun bm!352449 () Bool)

(assert (=> bm!352449 (= call!352452 (height!2135 (ite c!868361 lt!2088044 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun b!5060700 () Bool)

(declare-fun e!3158740 () Conc!15558)

(assert (=> b!5060700 (= e!3158741 e!3158740)))

(declare-fun lt!2088043 () Conc!15558)

(declare-fun call!352453 () Conc!15558)

(assert (=> b!5060700 (= lt!2088043 call!352453)))

(declare-fun c!868362 () Bool)

(assert (=> b!5060700 (= c!868362 (= call!352455 (- call!352460 3)))))

(declare-fun b!5060701 () Bool)

(declare-fun res!2154929 () Bool)

(assert (=> b!5060701 (=> (not res!2154929) (not e!3158738))))

(assert (=> b!5060701 (= res!2154929 (isBalanced!4420 lt!2088045))))

(declare-fun bm!352450 () Bool)

(assert (=> bm!352450 (= call!352457 call!352464)))

(declare-fun bm!352451 () Bool)

(declare-fun call!352458 () Conc!15558)

(assert (=> bm!352451 (= call!352458 call!352454)))

(declare-fun b!5060702 () Bool)

(declare-fun c!868360 () Bool)

(declare-fun lt!2088042 () Int)

(assert (=> b!5060702 (= c!868360 (and (<= (- 1) lt!2088042) (<= lt!2088042 1)))))

(assert (=> b!5060702 (= lt!2088042 (- (height!2135 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (height!2135 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))))

(declare-fun e!3158737 () Conc!15558)

(assert (=> b!5060702 (= e!3158737 e!3158733)))

(declare-fun e!3158739 () Bool)

(declare-fun b!5060703 () Bool)

(assert (=> b!5060703 (= e!3158739 (isBalanced!4420 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))

(declare-fun bm!352452 () Bool)

(assert (=> bm!352452 (= call!352464 (<>!392 (ite c!868361 (ite c!868359 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868366 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868364 call!352453 (ite c!868362 lt!2088043 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))) (ite c!868361 (ite c!868359 call!352465 (ite c!868366 lt!2088044 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))) (ite c!868364 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (ite c!868362 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))

(declare-fun bm!352453 () Bool)

(assert (=> bm!352453 (= call!352463 call!352451)))

(declare-fun bm!352454 () Bool)

(assert (=> bm!352454 (= call!352453 call!352462)))

(declare-fun b!5060704 () Bool)

(declare-fun e!3158735 () Conc!15558)

(assert (=> b!5060704 (= e!3158735 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5060705 () Bool)

(assert (=> b!5060705 (= e!3158740 call!352456)))

(declare-fun b!5060706 () Bool)

(assert (=> b!5060706 (= e!3158736 call!352450)))

(declare-fun b!5060707 () Bool)

(assert (=> b!5060707 (= e!3158737 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))

(declare-fun b!5060708 () Bool)

(assert (=> b!5060708 (= e!3158735 e!3158737)))

(declare-fun c!868363 () Bool)

(assert (=> b!5060708 (= c!868363 (= (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) Empty!15558))))

(declare-fun b!5060709 () Bool)

(assert (=> b!5060709 (= e!3158738 (= (list!18977 lt!2088045) (++!12779 (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun b!5060710 () Bool)

(declare-fun res!2154928 () Bool)

(assert (=> b!5060710 (=> (not res!2154928) (not e!3158738))))

(assert (=> b!5060710 (= res!2154928 (<= (height!2135 lt!2088045) (+ (max!0 (height!2135 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (height!2135 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) 1)))))

(declare-fun b!5060711 () Bool)

(assert (=> b!5060711 (= e!3158740 call!352456)))

(declare-fun b!5060712 () Bool)

(assert (=> b!5060712 (= e!3158733 e!3158742)))

(assert (=> b!5060712 (= c!868361 (< lt!2088042 (- 1)))))

(declare-fun d!1629790 () Bool)

(assert (=> d!1629790 e!3158738))

(declare-fun res!2154932 () Bool)

(assert (=> d!1629790 (=> (not res!2154932) (not e!3158738))))

(assert (=> d!1629790 (= res!2154932 (appendAssocInst!906 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))

(assert (=> d!1629790 (= lt!2088045 e!3158735)))

(declare-fun c!868365 () Bool)

(assert (=> d!1629790 (= c!868365 (= (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) Empty!15558))))

(assert (=> d!1629790 e!3158739))

(declare-fun res!2154931 () Bool)

(assert (=> d!1629790 (=> (not res!2154931) (not e!3158739))))

(assert (=> d!1629790 (= res!2154931 (isBalanced!4420 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))

(assert (=> d!1629790 (= (++!12778 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) lt!2088045)))

(declare-fun bm!352455 () Bool)

(declare-fun call!352459 () Conc!15558)

(assert (=> bm!352455 (= call!352459 call!352457)))

(declare-fun bm!352456 () Bool)

(assert (=> bm!352456 (= call!352460 (height!2135 (ite c!868361 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))

(declare-fun bm!352457 () Bool)

(assert (=> bm!352457 (= call!352450 call!352463)))

(declare-fun bm!352458 () Bool)

(assert (=> bm!352458 (= call!352462 (++!12778 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))

(declare-fun bm!352459 () Bool)

(assert (=> bm!352459 (= call!352455 (height!2135 (ite c!868361 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) lt!2088043)))))

(declare-fun bm!352460 () Bool)

(assert (=> bm!352460 (= call!352451 (<>!392 (ite c!868360 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868361 (ite c!868366 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) call!352459) (ite c!868362 call!352458 lt!2088043))) (ite c!868360 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868361 (ite c!868366 call!352459 lt!2088044) (ite c!868362 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) call!352458)))))))

(assert (= (and d!1629790 res!2154931) b!5060703))

(assert (= (and d!1629790 c!868365) b!5060704))

(assert (= (and d!1629790 (not c!868365)) b!5060708))

(assert (= (and b!5060708 c!868363) b!5060707))

(assert (= (and b!5060708 (not c!868363)) b!5060702))

(assert (= (and b!5060702 c!868360) b!5060695))

(assert (= (and b!5060702 (not c!868360)) b!5060712))

(assert (= (and b!5060712 c!868361) b!5060693))

(assert (= (and b!5060712 (not c!868361)) b!5060694))

(assert (= (and b!5060693 c!868359) b!5060699))

(assert (= (and b!5060693 (not c!868359)) b!5060696))

(assert (= (and b!5060696 c!868366) b!5060692))

(assert (= (and b!5060696 (not c!868366)) b!5060706))

(assert (= (or b!5060692 b!5060706) bm!352455))

(assert (= (or b!5060692 b!5060706) bm!352457))

(assert (= (or b!5060699 b!5060696) bm!352448))

(assert (= (or b!5060699 bm!352455) bm!352450))

(assert (= (and b!5060694 c!868364) b!5060697))

(assert (= (and b!5060694 (not c!868364)) b!5060700))

(assert (= (and b!5060700 c!868362) b!5060705))

(assert (= (and b!5060700 (not c!868362)) b!5060711))

(assert (= (or b!5060705 b!5060711) bm!352451))

(assert (= (or b!5060705 b!5060711) bm!352445))

(assert (= (or b!5060697 b!5060700) bm!352454))

(assert (= (or b!5060697 bm!352451) bm!352446))

(assert (= (or bm!352450 bm!352446) bm!352452))

(assert (= (or b!5060693 b!5060694) bm!352447))

(assert (= (or bm!352457 bm!352445) bm!352453))

(assert (= (or bm!352448 bm!352454) bm!352458))

(assert (= (or b!5060696 b!5060694) bm!352449))

(assert (= (or b!5060696 b!5060700) bm!352456))

(assert (= (or b!5060693 b!5060700) bm!352459))

(assert (= (or b!5060695 bm!352453) bm!352460))

(assert (= (and d!1629790 res!2154932) b!5060701))

(assert (= (and b!5060701 res!2154929) b!5060710))

(assert (= (and b!5060710 res!2154928) b!5060698))

(assert (= (and b!5060698 res!2154930) b!5060709))

(declare-fun m!6098372 () Bool)

(assert (=> bm!352460 m!6098372))

(declare-fun m!6098374 () Bool)

(assert (=> bm!352456 m!6098374))

(declare-fun m!6098376 () Bool)

(assert (=> bm!352459 m!6098376))

(declare-fun m!6098378 () Bool)

(assert (=> b!5060698 m!6098378))

(declare-fun m!6098380 () Bool)

(assert (=> b!5060698 m!6098380))

(declare-fun m!6098382 () Bool)

(assert (=> b!5060698 m!6098382))

(assert (=> b!5060698 m!6098380))

(assert (=> b!5060698 m!6098382))

(declare-fun m!6098384 () Bool)

(assert (=> b!5060698 m!6098384))

(declare-fun m!6098386 () Bool)

(assert (=> bm!352452 m!6098386))

(declare-fun m!6098388 () Bool)

(assert (=> d!1629790 m!6098388))

(declare-fun m!6098390 () Bool)

(assert (=> d!1629790 m!6098390))

(declare-fun m!6098392 () Bool)

(assert (=> b!5060701 m!6098392))

(declare-fun m!6098394 () Bool)

(assert (=> bm!352447 m!6098394))

(assert (=> b!5060702 m!6098382))

(assert (=> b!5060702 m!6098380))

(declare-fun m!6098396 () Bool)

(assert (=> b!5060703 m!6098396))

(assert (=> b!5060710 m!6098378))

(assert (=> b!5060710 m!6098380))

(assert (=> b!5060710 m!6098382))

(assert (=> b!5060710 m!6098380))

(assert (=> b!5060710 m!6098382))

(assert (=> b!5060710 m!6098384))

(declare-fun m!6098398 () Bool)

(assert (=> bm!352449 m!6098398))

(declare-fun m!6098400 () Bool)

(assert (=> b!5060709 m!6098400))

(declare-fun m!6098402 () Bool)

(assert (=> b!5060709 m!6098402))

(declare-fun m!6098404 () Bool)

(assert (=> b!5060709 m!6098404))

(assert (=> b!5060709 m!6098402))

(assert (=> b!5060709 m!6098404))

(declare-fun m!6098406 () Bool)

(assert (=> b!5060709 m!6098406))

(declare-fun m!6098408 () Bool)

(assert (=> bm!352458 m!6098408))

(assert (=> bm!352366 d!1629790))

(declare-fun b!5060713 () Bool)

(declare-fun res!2154934 () Bool)

(declare-fun e!3158743 () Bool)

(assert (=> b!5060713 (=> (not res!2154934) (not e!3158743))))

(assert (=> b!5060713 (= res!2154934 (isBalanced!4420 (left!42807 (left!42807 lt!2087928))))))

(declare-fun b!5060714 () Bool)

(declare-fun res!2154935 () Bool)

(assert (=> b!5060714 (=> (not res!2154935) (not e!3158743))))

(assert (=> b!5060714 (= res!2154935 (isBalanced!4420 (right!43137 (left!42807 lt!2087928))))))

(declare-fun b!5060715 () Bool)

(declare-fun res!2154937 () Bool)

(assert (=> b!5060715 (=> (not res!2154937) (not e!3158743))))

(assert (=> b!5060715 (= res!2154937 (not (isEmpty!31619 (left!42807 (left!42807 lt!2087928)))))))

(declare-fun b!5060716 () Bool)

(assert (=> b!5060716 (= e!3158743 (not (isEmpty!31619 (right!43137 (left!42807 lt!2087928)))))))

(declare-fun b!5060717 () Bool)

(declare-fun res!2154938 () Bool)

(assert (=> b!5060717 (=> (not res!2154938) (not e!3158743))))

(assert (=> b!5060717 (= res!2154938 (<= (- (height!2135 (left!42807 (left!42807 lt!2087928))) (height!2135 (right!43137 (left!42807 lt!2087928)))) 1))))

(declare-fun b!5060718 () Bool)

(declare-fun e!3158744 () Bool)

(assert (=> b!5060718 (= e!3158744 e!3158743)))

(declare-fun res!2154936 () Bool)

(assert (=> b!5060718 (=> (not res!2154936) (not e!3158743))))

(assert (=> b!5060718 (= res!2154936 (<= (- 1) (- (height!2135 (left!42807 (left!42807 lt!2087928))) (height!2135 (right!43137 (left!42807 lt!2087928))))))))

(declare-fun d!1629792 () Bool)

(declare-fun res!2154933 () Bool)

(assert (=> d!1629792 (=> res!2154933 e!3158744)))

(assert (=> d!1629792 (= res!2154933 (not ((_ is Node!15558) (left!42807 lt!2087928))))))

(assert (=> d!1629792 (= (isBalanced!4420 (left!42807 lt!2087928)) e!3158744)))

(assert (= (and d!1629792 (not res!2154933)) b!5060718))

(assert (= (and b!5060718 res!2154936) b!5060717))

(assert (= (and b!5060717 res!2154938) b!5060713))

(assert (= (and b!5060713 res!2154934) b!5060714))

(assert (= (and b!5060714 res!2154935) b!5060715))

(assert (= (and b!5060715 res!2154937) b!5060716))

(declare-fun m!6098410 () Bool)

(assert (=> b!5060715 m!6098410))

(declare-fun m!6098412 () Bool)

(assert (=> b!5060717 m!6098412))

(declare-fun m!6098414 () Bool)

(assert (=> b!5060717 m!6098414))

(declare-fun m!6098416 () Bool)

(assert (=> b!5060714 m!6098416))

(declare-fun m!6098418 () Bool)

(assert (=> b!5060716 m!6098418))

(declare-fun m!6098420 () Bool)

(assert (=> b!5060713 m!6098420))

(assert (=> b!5060718 m!6098412))

(assert (=> b!5060718 m!6098414))

(assert (=> b!5060116 d!1629792))

(declare-fun d!1629794 () Bool)

(declare-fun res!2154939 () Bool)

(declare-fun e!3158745 () Bool)

(assert (=> d!1629794 (=> (not res!2154939) (not e!3158745))))

(assert (=> d!1629794 (= res!2154939 (<= (size!39065 (list!18979 (xs!18896 (left!42807 xs!286)))) 512))))

(assert (=> d!1629794 (= (inv!77527 (left!42807 xs!286)) e!3158745)))

(declare-fun b!5060719 () Bool)

(declare-fun res!2154940 () Bool)

(assert (=> b!5060719 (=> (not res!2154940) (not e!3158745))))

(assert (=> b!5060719 (= res!2154940 (= (csize!31347 (left!42807 xs!286)) (size!39065 (list!18979 (xs!18896 (left!42807 xs!286))))))))

(declare-fun b!5060720 () Bool)

(assert (=> b!5060720 (= e!3158745 (and (> (csize!31347 (left!42807 xs!286)) 0) (<= (csize!31347 (left!42807 xs!286)) 512)))))

(assert (= (and d!1629794 res!2154939) b!5060719))

(assert (= (and b!5060719 res!2154940) b!5060720))

(assert (=> d!1629794 m!6097990))

(assert (=> d!1629794 m!6097990))

(declare-fun m!6098422 () Bool)

(assert (=> d!1629794 m!6098422))

(assert (=> b!5060719 m!6097990))

(assert (=> b!5060719 m!6097990))

(assert (=> b!5060719 m!6098422))

(assert (=> b!5060044 d!1629794))

(declare-fun d!1629796 () Bool)

(assert (=> d!1629796 (= (height!2135 (ite c!868195 (right!43137 xs!286) ys!41)) (ite ((_ is Empty!15558) (ite c!868195 (right!43137 xs!286) ys!41)) 0 (ite ((_ is Leaf!25842) (ite c!868195 (right!43137 xs!286) ys!41)) 1 (cheight!15769 (ite c!868195 (right!43137 xs!286) ys!41)))))))

(assert (=> bm!352364 d!1629796))

(declare-fun d!1629798 () Bool)

(assert (=> d!1629798 (= (inv!77522 (xs!18896 (left!42807 xs!286))) (<= (size!39065 (innerList!15646 (xs!18896 (left!42807 xs!286)))) 2147483647))))

(declare-fun bs!1189612 () Bool)

(assert (= bs!1189612 d!1629798))

(declare-fun m!6098424 () Bool)

(assert (=> bs!1189612 m!6098424))

(assert (=> b!5060174 d!1629798))

(declare-fun d!1629800 () Bool)

(declare-fun c!868367 () Bool)

(assert (=> d!1629800 (= c!868367 ((_ is Node!15558) (left!42807 (left!42807 xs!286))))))

(declare-fun e!3158746 () Bool)

(assert (=> d!1629800 (= (inv!77523 (left!42807 (left!42807 xs!286))) e!3158746)))

(declare-fun b!5060721 () Bool)

(assert (=> b!5060721 (= e!3158746 (inv!77526 (left!42807 (left!42807 xs!286))))))

(declare-fun b!5060722 () Bool)

(declare-fun e!3158747 () Bool)

(assert (=> b!5060722 (= e!3158746 e!3158747)))

(declare-fun res!2154941 () Bool)

(assert (=> b!5060722 (= res!2154941 (not ((_ is Leaf!25842) (left!42807 (left!42807 xs!286)))))))

(assert (=> b!5060722 (=> res!2154941 e!3158747)))

(declare-fun b!5060723 () Bool)

(assert (=> b!5060723 (= e!3158747 (inv!77527 (left!42807 (left!42807 xs!286))))))

(assert (= (and d!1629800 c!868367) b!5060721))

(assert (= (and d!1629800 (not c!868367)) b!5060722))

(assert (= (and b!5060722 (not res!2154941)) b!5060723))

(declare-fun m!6098426 () Bool)

(assert (=> b!5060721 m!6098426))

(declare-fun m!6098428 () Bool)

(assert (=> b!5060723 m!6098428))

(assert (=> b!5060173 d!1629800))

(declare-fun d!1629802 () Bool)

(declare-fun c!868368 () Bool)

(assert (=> d!1629802 (= c!868368 ((_ is Node!15558) (right!43137 (left!42807 xs!286))))))

(declare-fun e!3158748 () Bool)

(assert (=> d!1629802 (= (inv!77523 (right!43137 (left!42807 xs!286))) e!3158748)))

(declare-fun b!5060724 () Bool)

(assert (=> b!5060724 (= e!3158748 (inv!77526 (right!43137 (left!42807 xs!286))))))

(declare-fun b!5060725 () Bool)

(declare-fun e!3158749 () Bool)

(assert (=> b!5060725 (= e!3158748 e!3158749)))

(declare-fun res!2154942 () Bool)

(assert (=> b!5060725 (= res!2154942 (not ((_ is Leaf!25842) (right!43137 (left!42807 xs!286)))))))

(assert (=> b!5060725 (=> res!2154942 e!3158749)))

(declare-fun b!5060726 () Bool)

(assert (=> b!5060726 (= e!3158749 (inv!77527 (right!43137 (left!42807 xs!286))))))

(assert (= (and d!1629802 c!868368) b!5060724))

(assert (= (and d!1629802 (not c!868368)) b!5060725))

(assert (= (and b!5060725 (not res!2154942)) b!5060726))

(declare-fun m!6098430 () Bool)

(assert (=> b!5060724 m!6098430))

(declare-fun m!6098432 () Bool)

(assert (=> b!5060726 m!6098432))

(assert (=> b!5060173 d!1629802))

(declare-fun bm!352461 () Bool)

(declare-fun call!352467 () List!58552)

(assert (=> bm!352461 (= call!352467 (++!12779 (list!18977 (left!42807 (right!43137 xs!286))) (list!18977 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5060727 () Bool)

(declare-fun e!3158750 () Bool)

(declare-fun call!352468 () List!58552)

(declare-fun call!352466 () List!58552)

(assert (=> b!5060727 (= e!3158750 (= call!352468 call!352466))))

(declare-fun bm!352462 () Bool)

(declare-fun call!352469 () List!58552)

(assert (=> bm!352462 (= call!352469 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)))))

(declare-fun b!5060728 () Bool)

(assert (=> b!5060728 (= e!3158750 (= call!352468 call!352466))))

(declare-fun lt!2088046 () Bool)

(assert (=> b!5060728 (= lt!2088046 (appendAssoc!298 (t!371255 (list!18977 (left!42807 (right!43137 xs!286)))) (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)))))

(declare-fun bm!352463 () Bool)

(assert (=> bm!352463 (= call!352468 (++!12779 call!352467 (list!18977 ys!41)))))

(declare-fun d!1629804 () Bool)

(assert (=> d!1629804 e!3158750))

(declare-fun c!868369 () Bool)

(assert (=> d!1629804 (= c!868369 ((_ is Nil!58428) (list!18977 (left!42807 (right!43137 xs!286)))))))

(assert (=> d!1629804 (= (appendAssoc!298 (list!18977 (left!42807 (right!43137 xs!286))) (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)) true)))

(declare-fun bm!352464 () Bool)

(assert (=> bm!352464 (= call!352466 (++!12779 (list!18977 (left!42807 (right!43137 xs!286))) call!352469))))

(assert (= (and d!1629804 c!868369) b!5060727))

(assert (= (and d!1629804 (not c!868369)) b!5060728))

(assert (= (or b!5060727 b!5060728) bm!352461))

(assert (= (or b!5060727 b!5060728) bm!352462))

(assert (= (or b!5060727 b!5060728) bm!352464))

(assert (= (or b!5060727 b!5060728) bm!352463))

(assert (=> bm!352464 m!6097056))

(declare-fun m!6098434 () Bool)

(assert (=> bm!352464 m!6098434))

(assert (=> bm!352461 m!6097056))

(assert (=> bm!352461 m!6097058))

(assert (=> bm!352461 m!6098126))

(assert (=> bm!352462 m!6097058))

(assert (=> bm!352462 m!6096986))

(assert (=> bm!352462 m!6097064))

(assert (=> bm!352463 m!6096986))

(declare-fun m!6098436 () Bool)

(assert (=> bm!352463 m!6098436))

(assert (=> b!5060728 m!6097058))

(assert (=> b!5060728 m!6096986))

(declare-fun m!6098438 () Bool)

(assert (=> b!5060728 m!6098438))

(assert (=> b!5059809 d!1629804))

(assert (=> b!5059809 d!1629664))

(assert (=> b!5059809 d!1629660))

(assert (=> b!5059809 d!1629454))

(declare-fun d!1629806 () Bool)

(declare-fun res!2154943 () Bool)

(declare-fun e!3158751 () Bool)

(assert (=> d!1629806 (=> (not res!2154943) (not e!3158751))))

(assert (=> d!1629806 (= res!2154943 (= (csize!31346 (left!42807 xs!286)) (+ (size!39064 (left!42807 (left!42807 xs!286))) (size!39064 (right!43137 (left!42807 xs!286))))))))

(assert (=> d!1629806 (= (inv!77526 (left!42807 xs!286)) e!3158751)))

(declare-fun b!5060729 () Bool)

(declare-fun res!2154944 () Bool)

(assert (=> b!5060729 (=> (not res!2154944) (not e!3158751))))

(assert (=> b!5060729 (= res!2154944 (and (not (= (left!42807 (left!42807 xs!286)) Empty!15558)) (not (= (right!43137 (left!42807 xs!286)) Empty!15558))))))

(declare-fun b!5060730 () Bool)

(declare-fun res!2154945 () Bool)

(assert (=> b!5060730 (=> (not res!2154945) (not e!3158751))))

(assert (=> b!5060730 (= res!2154945 (= (cheight!15769 (left!42807 xs!286)) (+ (max!0 (height!2135 (left!42807 (left!42807 xs!286))) (height!2135 (right!43137 (left!42807 xs!286)))) 1)))))

(declare-fun b!5060731 () Bool)

(assert (=> b!5060731 (= e!3158751 (<= 0 (cheight!15769 (left!42807 xs!286))))))

(assert (= (and d!1629806 res!2154943) b!5060729))

(assert (= (and b!5060729 res!2154944) b!5060730))

(assert (= (and b!5060730 res!2154945) b!5060731))

(declare-fun m!6098440 () Bool)

(assert (=> d!1629806 m!6098440))

(declare-fun m!6098442 () Bool)

(assert (=> d!1629806 m!6098442))

(assert (=> b!5060730 m!6097980))

(assert (=> b!5060730 m!6097982))

(assert (=> b!5060730 m!6097980))

(assert (=> b!5060730 m!6097982))

(declare-fun m!6098444 () Bool)

(assert (=> b!5060730 m!6098444))

(assert (=> b!5060042 d!1629806))

(declare-fun d!1629808 () Bool)

(declare-fun lt!2088047 () Int)

(assert (=> d!1629808 (>= lt!2088047 0)))

(declare-fun e!3158752 () Int)

(assert (=> d!1629808 (= lt!2088047 e!3158752)))

(declare-fun c!868370 () Bool)

(assert (=> d!1629808 (= c!868370 ((_ is Nil!58428) lt!2087969))))

(assert (=> d!1629808 (= (size!39065 lt!2087969) lt!2088047)))

(declare-fun b!5060732 () Bool)

(assert (=> b!5060732 (= e!3158752 0)))

(declare-fun b!5060733 () Bool)

(assert (=> b!5060733 (= e!3158752 (+ 1 (size!39065 (t!371255 lt!2087969))))))

(assert (= (and d!1629808 c!868370) b!5060732))

(assert (= (and d!1629808 (not c!868370)) b!5060733))

(declare-fun m!6098446 () Bool)

(assert (=> b!5060733 m!6098446))

(assert (=> b!5060150 d!1629808))

(declare-fun d!1629810 () Bool)

(declare-fun lt!2088048 () Int)

(assert (=> d!1629810 (>= lt!2088048 0)))

(declare-fun e!3158753 () Int)

(assert (=> d!1629810 (= lt!2088048 e!3158753)))

(declare-fun c!868371 () Bool)

(assert (=> d!1629810 (= c!868371 ((_ is Nil!58428) (list!18977 xs!286)))))

(assert (=> d!1629810 (= (size!39065 (list!18977 xs!286)) lt!2088048)))

(declare-fun b!5060734 () Bool)

(assert (=> b!5060734 (= e!3158753 0)))

(declare-fun b!5060735 () Bool)

(assert (=> b!5060735 (= e!3158753 (+ 1 (size!39065 (t!371255 (list!18977 xs!286)))))))

(assert (= (and d!1629810 c!868371) b!5060734))

(assert (= (and d!1629810 (not c!868371)) b!5060735))

(assert (=> b!5060735 m!6098194))

(assert (=> b!5060150 d!1629810))

(declare-fun d!1629812 () Bool)

(declare-fun lt!2088049 () Int)

(assert (=> d!1629812 (>= lt!2088049 0)))

(declare-fun e!3158754 () Int)

(assert (=> d!1629812 (= lt!2088049 e!3158754)))

(declare-fun c!868372 () Bool)

(assert (=> d!1629812 (= c!868372 ((_ is Nil!58428) (list!18977 ys!41)))))

(assert (=> d!1629812 (= (size!39065 (list!18977 ys!41)) lt!2088049)))

(declare-fun b!5060736 () Bool)

(assert (=> b!5060736 (= e!3158754 0)))

(declare-fun b!5060737 () Bool)

(assert (=> b!5060737 (= e!3158754 (+ 1 (size!39065 (t!371255 (list!18977 ys!41)))))))

(assert (= (and d!1629812 c!868372) b!5060736))

(assert (= (and d!1629812 (not c!868372)) b!5060737))

(declare-fun m!6098448 () Bool)

(assert (=> b!5060737 m!6098448))

(assert (=> b!5060150 d!1629812))

(declare-fun b!5060739 () Bool)

(declare-fun e!3158755 () List!58552)

(declare-fun e!3158756 () List!58552)

(assert (=> b!5060739 (= e!3158755 e!3158756)))

(declare-fun c!868374 () Bool)

(assert (=> b!5060739 (= c!868374 ((_ is Leaf!25842) lt!2087966))))

(declare-fun b!5060740 () Bool)

(assert (=> b!5060740 (= e!3158756 (list!18979 (xs!18896 lt!2087966)))))

(declare-fun b!5060738 () Bool)

(assert (=> b!5060738 (= e!3158755 Nil!58428)))

(declare-fun b!5060741 () Bool)

(assert (=> b!5060741 (= e!3158756 (++!12779 (list!18977 (left!42807 lt!2087966)) (list!18977 (right!43137 lt!2087966))))))

(declare-fun d!1629814 () Bool)

(declare-fun c!868373 () Bool)

(assert (=> d!1629814 (= c!868373 ((_ is Empty!15558) lt!2087966))))

(assert (=> d!1629814 (= (list!18977 lt!2087966) e!3158755)))

(assert (= (and d!1629814 c!868373) b!5060738))

(assert (= (and d!1629814 (not c!868373)) b!5060739))

(assert (= (and b!5060739 c!868374) b!5060740))

(assert (= (and b!5060739 (not c!868374)) b!5060741))

(declare-fun m!6098450 () Bool)

(assert (=> b!5060740 m!6098450))

(declare-fun m!6098452 () Bool)

(assert (=> b!5060741 m!6098452))

(declare-fun m!6098454 () Bool)

(assert (=> b!5060741 m!6098454))

(assert (=> b!5060741 m!6098452))

(assert (=> b!5060741 m!6098454))

(declare-fun m!6098456 () Bool)

(assert (=> b!5060741 m!6098456))

(assert (=> b!5059990 d!1629814))

(declare-fun d!1629816 () Bool)

(declare-fun e!3158757 () Bool)

(assert (=> d!1629816 e!3158757))

(declare-fun res!2154947 () Bool)

(assert (=> d!1629816 (=> (not res!2154947) (not e!3158757))))

(declare-fun lt!2088050 () List!58552)

(assert (=> d!1629816 (= res!2154947 (= (content!10414 lt!2088050) ((_ map or) (content!10414 (list!18977 (right!43137 xs!286))) (content!10414 (list!18977 ys!41)))))))

(declare-fun e!3158758 () List!58552)

(assert (=> d!1629816 (= lt!2088050 e!3158758)))

(declare-fun c!868375 () Bool)

(assert (=> d!1629816 (= c!868375 ((_ is Nil!58428) (list!18977 (right!43137 xs!286))))))

(assert (=> d!1629816 (= (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 ys!41)) lt!2088050)))

(declare-fun b!5060745 () Bool)

(assert (=> b!5060745 (= e!3158757 (or (not (= (list!18977 ys!41) Nil!58428)) (= lt!2088050 (list!18977 (right!43137 xs!286)))))))

(declare-fun b!5060744 () Bool)

(declare-fun res!2154946 () Bool)

(assert (=> b!5060744 (=> (not res!2154946) (not e!3158757))))

(assert (=> b!5060744 (= res!2154946 (= (size!39065 lt!2088050) (+ (size!39065 (list!18977 (right!43137 xs!286))) (size!39065 (list!18977 ys!41)))))))

(declare-fun b!5060742 () Bool)

(assert (=> b!5060742 (= e!3158758 (list!18977 ys!41))))

(declare-fun b!5060743 () Bool)

(assert (=> b!5060743 (= e!3158758 (Cons!58428 (h!64876 (list!18977 (right!43137 xs!286))) (++!12779 (t!371255 (list!18977 (right!43137 xs!286))) (list!18977 ys!41))))))

(assert (= (and d!1629816 c!868375) b!5060742))

(assert (= (and d!1629816 (not c!868375)) b!5060743))

(assert (= (and d!1629816 res!2154947) b!5060744))

(assert (= (and b!5060744 res!2154946) b!5060745))

(declare-fun m!6098458 () Bool)

(assert (=> d!1629816 m!6098458))

(assert (=> d!1629816 m!6097068))

(assert (=> d!1629816 m!6098116))

(assert (=> d!1629816 m!6096986))

(assert (=> d!1629816 m!6097340))

(declare-fun m!6098460 () Bool)

(assert (=> b!5060744 m!6098460))

(assert (=> b!5060744 m!6097068))

(assert (=> b!5060744 m!6098120))

(assert (=> b!5060744 m!6096986))

(assert (=> b!5060744 m!6097346))

(assert (=> b!5060743 m!6096986))

(declare-fun m!6098462 () Bool)

(assert (=> b!5060743 m!6098462))

(assert (=> b!5059990 d!1629816))

(assert (=> b!5059990 d!1629702))

(assert (=> b!5059990 d!1629454))

(declare-fun d!1629818 () Bool)

(assert (=> d!1629818 (= (list!18979 (xs!18896 lt!2087928)) (innerList!15646 (xs!18896 lt!2087928)))))

(assert (=> b!5060138 d!1629818))

(declare-fun d!1629820 () Bool)

(declare-fun c!868376 () Bool)

(assert (=> d!1629820 (= c!868376 ((_ is Node!15558) (left!42807 (right!43137 xs!286))))))

(declare-fun e!3158759 () Bool)

(assert (=> d!1629820 (= (inv!77523 (left!42807 (right!43137 xs!286))) e!3158759)))

(declare-fun b!5060746 () Bool)

(assert (=> b!5060746 (= e!3158759 (inv!77526 (left!42807 (right!43137 xs!286))))))

(declare-fun b!5060747 () Bool)

(declare-fun e!3158760 () Bool)

(assert (=> b!5060747 (= e!3158759 e!3158760)))

(declare-fun res!2154948 () Bool)

(assert (=> b!5060747 (= res!2154948 (not ((_ is Leaf!25842) (left!42807 (right!43137 xs!286)))))))

(assert (=> b!5060747 (=> res!2154948 e!3158760)))

(declare-fun b!5060748 () Bool)

(assert (=> b!5060748 (= e!3158760 (inv!77527 (left!42807 (right!43137 xs!286))))))

(assert (= (and d!1629820 c!868376) b!5060746))

(assert (= (and d!1629820 (not c!868376)) b!5060747))

(assert (= (and b!5060747 (not res!2154948)) b!5060748))

(declare-fun m!6098464 () Bool)

(assert (=> b!5060746 m!6098464))

(declare-fun m!6098466 () Bool)

(assert (=> b!5060748 m!6098466))

(assert (=> b!5060176 d!1629820))

(declare-fun d!1629822 () Bool)

(declare-fun c!868377 () Bool)

(assert (=> d!1629822 (= c!868377 ((_ is Node!15558) (right!43137 (right!43137 xs!286))))))

(declare-fun e!3158761 () Bool)

(assert (=> d!1629822 (= (inv!77523 (right!43137 (right!43137 xs!286))) e!3158761)))

(declare-fun b!5060749 () Bool)

(assert (=> b!5060749 (= e!3158761 (inv!77526 (right!43137 (right!43137 xs!286))))))

(declare-fun b!5060750 () Bool)

(declare-fun e!3158762 () Bool)

(assert (=> b!5060750 (= e!3158761 e!3158762)))

(declare-fun res!2154949 () Bool)

(assert (=> b!5060750 (= res!2154949 (not ((_ is Leaf!25842) (right!43137 (right!43137 xs!286)))))))

(assert (=> b!5060750 (=> res!2154949 e!3158762)))

(declare-fun b!5060751 () Bool)

(assert (=> b!5060751 (= e!3158762 (inv!77527 (right!43137 (right!43137 xs!286))))))

(assert (= (and d!1629822 c!868377) b!5060749))

(assert (= (and d!1629822 (not c!868377)) b!5060750))

(assert (= (and b!5060750 (not res!2154949)) b!5060751))

(declare-fun m!6098468 () Bool)

(assert (=> b!5060749 m!6098468))

(declare-fun m!6098470 () Bool)

(assert (=> b!5060751 m!6098470))

(assert (=> b!5060176 d!1629822))

(declare-fun d!1629824 () Bool)

(assert (=> d!1629824 (= (list!18979 (xs!18896 ys!41)) (innerList!15646 (xs!18896 ys!41)))))

(assert (=> b!5060158 d!1629824))

(assert (=> b!5060127 d!1629750))

(assert (=> b!5060127 d!1629752))

(declare-fun d!1629826 () Bool)

(declare-fun lt!2088051 () Bool)

(assert (=> d!1629826 (= lt!2088051 (isEmpty!31621 (list!18977 (right!43137 ys!41))))))

(assert (=> d!1629826 (= lt!2088051 (= (size!39064 (right!43137 ys!41)) 0))))

(assert (=> d!1629826 (= (isEmpty!31619 (right!43137 ys!41)) lt!2088051)))

(declare-fun bs!1189613 () Bool)

(assert (= bs!1189613 d!1629826))

(assert (=> bs!1189613 m!6097074))

(assert (=> bs!1189613 m!6097074))

(declare-fun m!6098472 () Bool)

(assert (=> bs!1189613 m!6098472))

(assert (=> bs!1189613 m!6098198))

(assert (=> b!5060125 d!1629826))

(assert (=> b!5060103 d!1629428))

(assert (=> b!5060103 d!1629430))

(declare-fun tp!1414013 () Bool)

(declare-fun tp!1414014 () Bool)

(declare-fun b!5060752 () Bool)

(declare-fun e!3158763 () Bool)

(assert (=> b!5060752 (= e!3158763 (and (inv!77523 (left!42807 (left!42807 (left!42807 xs!286)))) tp!1414013 (inv!77523 (right!43137 (left!42807 (left!42807 xs!286)))) tp!1414014))))

(declare-fun b!5060754 () Bool)

(declare-fun e!3158764 () Bool)

(declare-fun tp!1414012 () Bool)

(assert (=> b!5060754 (= e!3158764 tp!1414012)))

(declare-fun b!5060753 () Bool)

(assert (=> b!5060753 (= e!3158763 (and (inv!77522 (xs!18896 (left!42807 (left!42807 xs!286)))) e!3158764))))

(assert (=> b!5060173 (= tp!1413970 (and (inv!77523 (left!42807 (left!42807 xs!286))) e!3158763))))

(assert (= (and b!5060173 ((_ is Node!15558) (left!42807 (left!42807 xs!286)))) b!5060752))

(assert (= b!5060753 b!5060754))

(assert (= (and b!5060173 ((_ is Leaf!25842) (left!42807 (left!42807 xs!286)))) b!5060753))

(declare-fun m!6098474 () Bool)

(assert (=> b!5060752 m!6098474))

(declare-fun m!6098476 () Bool)

(assert (=> b!5060752 m!6098476))

(declare-fun m!6098478 () Bool)

(assert (=> b!5060753 m!6098478))

(assert (=> b!5060173 m!6097358))

(declare-fun tp!1414017 () Bool)

(declare-fun b!5060755 () Bool)

(declare-fun e!3158765 () Bool)

(declare-fun tp!1414016 () Bool)

(assert (=> b!5060755 (= e!3158765 (and (inv!77523 (left!42807 (right!43137 (left!42807 xs!286)))) tp!1414016 (inv!77523 (right!43137 (right!43137 (left!42807 xs!286)))) tp!1414017))))

(declare-fun b!5060757 () Bool)

(declare-fun e!3158766 () Bool)

(declare-fun tp!1414015 () Bool)

(assert (=> b!5060757 (= e!3158766 tp!1414015)))

(declare-fun b!5060756 () Bool)

(assert (=> b!5060756 (= e!3158765 (and (inv!77522 (xs!18896 (right!43137 (left!42807 xs!286)))) e!3158766))))

(assert (=> b!5060173 (= tp!1413971 (and (inv!77523 (right!43137 (left!42807 xs!286))) e!3158765))))

(assert (= (and b!5060173 ((_ is Node!15558) (right!43137 (left!42807 xs!286)))) b!5060755))

(assert (= b!5060756 b!5060757))

(assert (= (and b!5060173 ((_ is Leaf!25842) (right!43137 (left!42807 xs!286)))) b!5060756))

(declare-fun m!6098480 () Bool)

(assert (=> b!5060755 m!6098480))

(declare-fun m!6098482 () Bool)

(assert (=> b!5060755 m!6098482))

(declare-fun m!6098484 () Bool)

(assert (=> b!5060756 m!6098484))

(assert (=> b!5060173 m!6097360))

(declare-fun e!3158767 () Bool)

(declare-fun b!5060758 () Bool)

(declare-fun tp!1414020 () Bool)

(declare-fun tp!1414019 () Bool)

(assert (=> b!5060758 (= e!3158767 (and (inv!77523 (left!42807 (left!42807 (left!42807 ys!41)))) tp!1414019 (inv!77523 (right!43137 (left!42807 (left!42807 ys!41)))) tp!1414020))))

(declare-fun b!5060760 () Bool)

(declare-fun e!3158768 () Bool)

(declare-fun tp!1414018 () Bool)

(assert (=> b!5060760 (= e!3158768 tp!1414018)))

(declare-fun b!5060759 () Bool)

(assert (=> b!5060759 (= e!3158767 (and (inv!77522 (xs!18896 (left!42807 (left!42807 ys!41)))) e!3158768))))

(assert (=> b!5060180 (= tp!1413977 (and (inv!77523 (left!42807 (left!42807 ys!41))) e!3158767))))

(assert (= (and b!5060180 ((_ is Node!15558) (left!42807 (left!42807 ys!41)))) b!5060758))

(assert (= b!5060759 b!5060760))

(assert (= (and b!5060180 ((_ is Leaf!25842) (left!42807 (left!42807 ys!41)))) b!5060759))

(declare-fun m!6098486 () Bool)

(assert (=> b!5060758 m!6098486))

(declare-fun m!6098488 () Bool)

(assert (=> b!5060758 m!6098488))

(declare-fun m!6098490 () Bool)

(assert (=> b!5060759 m!6098490))

(assert (=> b!5060180 m!6097370))

(declare-fun e!3158769 () Bool)

(declare-fun b!5060761 () Bool)

(declare-fun tp!1414023 () Bool)

(declare-fun tp!1414022 () Bool)

(assert (=> b!5060761 (= e!3158769 (and (inv!77523 (left!42807 (right!43137 (left!42807 ys!41)))) tp!1414022 (inv!77523 (right!43137 (right!43137 (left!42807 ys!41)))) tp!1414023))))

(declare-fun b!5060763 () Bool)

(declare-fun e!3158770 () Bool)

(declare-fun tp!1414021 () Bool)

(assert (=> b!5060763 (= e!3158770 tp!1414021)))

(declare-fun b!5060762 () Bool)

(assert (=> b!5060762 (= e!3158769 (and (inv!77522 (xs!18896 (right!43137 (left!42807 ys!41)))) e!3158770))))

(assert (=> b!5060180 (= tp!1413978 (and (inv!77523 (right!43137 (left!42807 ys!41))) e!3158769))))

(assert (= (and b!5060180 ((_ is Node!15558) (right!43137 (left!42807 ys!41)))) b!5060761))

(assert (= b!5060762 b!5060763))

(assert (= (and b!5060180 ((_ is Leaf!25842) (right!43137 (left!42807 ys!41)))) b!5060762))

(declare-fun m!6098492 () Bool)

(assert (=> b!5060761 m!6098492))

(declare-fun m!6098494 () Bool)

(assert (=> b!5060761 m!6098494))

(declare-fun m!6098496 () Bool)

(assert (=> b!5060762 m!6098496))

(assert (=> b!5060180 m!6097372))

(declare-fun b!5060764 () Bool)

(declare-fun e!3158771 () Bool)

(declare-fun tp!1414024 () Bool)

(assert (=> b!5060764 (= e!3158771 (and tp_is_empty!37039 tp!1414024))))

(assert (=> b!5060185 (= tp!1413979 e!3158771)))

(assert (= (and b!5060185 ((_ is Cons!58428) (innerList!15646 (xs!18896 (right!43137 ys!41))))) b!5060764))

(declare-fun b!5060765 () Bool)

(declare-fun e!3158772 () Bool)

(declare-fun tp!1414025 () Bool)

(assert (=> b!5060765 (= e!3158772 (and tp_is_empty!37039 tp!1414025))))

(assert (=> b!5060179 (= tp!1413975 e!3158772)))

(assert (= (and b!5060179 ((_ is Cons!58428) (t!371255 (innerList!15646 (xs!18896 ys!41))))) b!5060765))

(declare-fun b!5060766 () Bool)

(declare-fun e!3158773 () Bool)

(declare-fun tp!1414026 () Bool)

(assert (=> b!5060766 (= e!3158773 (and tp_is_empty!37039 tp!1414026))))

(assert (=> b!5060164 (= tp!1413962 e!3158773)))

(assert (= (and b!5060164 ((_ is Cons!58428) (t!371255 (innerList!15646 (xs!18896 xs!286))))) b!5060766))

(declare-fun tp!1414029 () Bool)

(declare-fun tp!1414028 () Bool)

(declare-fun e!3158774 () Bool)

(declare-fun b!5060767 () Bool)

(assert (=> b!5060767 (= e!3158774 (and (inv!77523 (left!42807 (left!42807 (right!43137 xs!286)))) tp!1414028 (inv!77523 (right!43137 (left!42807 (right!43137 xs!286)))) tp!1414029))))

(declare-fun b!5060769 () Bool)

(declare-fun e!3158775 () Bool)

(declare-fun tp!1414027 () Bool)

(assert (=> b!5060769 (= e!3158775 tp!1414027)))

(declare-fun b!5060768 () Bool)

(assert (=> b!5060768 (= e!3158774 (and (inv!77522 (xs!18896 (left!42807 (right!43137 xs!286)))) e!3158775))))

(assert (=> b!5060176 (= tp!1413973 (and (inv!77523 (left!42807 (right!43137 xs!286))) e!3158774))))

(assert (= (and b!5060176 ((_ is Node!15558) (left!42807 (right!43137 xs!286)))) b!5060767))

(assert (= b!5060768 b!5060769))

(assert (= (and b!5060176 ((_ is Leaf!25842) (left!42807 (right!43137 xs!286)))) b!5060768))

(declare-fun m!6098498 () Bool)

(assert (=> b!5060767 m!6098498))

(declare-fun m!6098500 () Bool)

(assert (=> b!5060767 m!6098500))

(declare-fun m!6098502 () Bool)

(assert (=> b!5060768 m!6098502))

(assert (=> b!5060176 m!6097364))

(declare-fun b!5060770 () Bool)

(declare-fun e!3158776 () Bool)

(declare-fun tp!1414031 () Bool)

(declare-fun tp!1414032 () Bool)

(assert (=> b!5060770 (= e!3158776 (and (inv!77523 (left!42807 (right!43137 (right!43137 xs!286)))) tp!1414031 (inv!77523 (right!43137 (right!43137 (right!43137 xs!286)))) tp!1414032))))

(declare-fun b!5060772 () Bool)

(declare-fun e!3158777 () Bool)

(declare-fun tp!1414030 () Bool)

(assert (=> b!5060772 (= e!3158777 tp!1414030)))

(declare-fun b!5060771 () Bool)

(assert (=> b!5060771 (= e!3158776 (and (inv!77522 (xs!18896 (right!43137 (right!43137 xs!286)))) e!3158777))))

(assert (=> b!5060176 (= tp!1413974 (and (inv!77523 (right!43137 (right!43137 xs!286))) e!3158776))))

(assert (= (and b!5060176 ((_ is Node!15558) (right!43137 (right!43137 xs!286)))) b!5060770))

(assert (= b!5060771 b!5060772))

(assert (= (and b!5060176 ((_ is Leaf!25842) (right!43137 (right!43137 xs!286)))) b!5060771))

(declare-fun m!6098504 () Bool)

(assert (=> b!5060770 m!6098504))

(declare-fun m!6098506 () Bool)

(assert (=> b!5060770 m!6098506))

(declare-fun m!6098508 () Bool)

(assert (=> b!5060771 m!6098508))

(assert (=> b!5060176 m!6097366))

(declare-fun e!3158778 () Bool)

(declare-fun tp!1414035 () Bool)

(declare-fun tp!1414034 () Bool)

(declare-fun b!5060773 () Bool)

(assert (=> b!5060773 (= e!3158778 (and (inv!77523 (left!42807 (left!42807 (right!43137 ys!41)))) tp!1414034 (inv!77523 (right!43137 (left!42807 (right!43137 ys!41)))) tp!1414035))))

(declare-fun b!5060775 () Bool)

(declare-fun e!3158779 () Bool)

(declare-fun tp!1414033 () Bool)

(assert (=> b!5060775 (= e!3158779 tp!1414033)))

(declare-fun b!5060774 () Bool)

(assert (=> b!5060774 (= e!3158778 (and (inv!77522 (xs!18896 (left!42807 (right!43137 ys!41)))) e!3158779))))

(assert (=> b!5060183 (= tp!1413980 (and (inv!77523 (left!42807 (right!43137 ys!41))) e!3158778))))

(assert (= (and b!5060183 ((_ is Node!15558) (left!42807 (right!43137 ys!41)))) b!5060773))

(assert (= b!5060774 b!5060775))

(assert (= (and b!5060183 ((_ is Leaf!25842) (left!42807 (right!43137 ys!41)))) b!5060774))

(declare-fun m!6098510 () Bool)

(assert (=> b!5060773 m!6098510))

(declare-fun m!6098512 () Bool)

(assert (=> b!5060773 m!6098512))

(declare-fun m!6098514 () Bool)

(assert (=> b!5060774 m!6098514))

(assert (=> b!5060183 m!6097376))

(declare-fun tp!1414038 () Bool)

(declare-fun b!5060776 () Bool)

(declare-fun tp!1414037 () Bool)

(declare-fun e!3158780 () Bool)

(assert (=> b!5060776 (= e!3158780 (and (inv!77523 (left!42807 (right!43137 (right!43137 ys!41)))) tp!1414037 (inv!77523 (right!43137 (right!43137 (right!43137 ys!41)))) tp!1414038))))

(declare-fun b!5060778 () Bool)

(declare-fun e!3158781 () Bool)

(declare-fun tp!1414036 () Bool)

(assert (=> b!5060778 (= e!3158781 tp!1414036)))

(declare-fun b!5060777 () Bool)

(assert (=> b!5060777 (= e!3158780 (and (inv!77522 (xs!18896 (right!43137 (right!43137 ys!41)))) e!3158781))))

(assert (=> b!5060183 (= tp!1413981 (and (inv!77523 (right!43137 (right!43137 ys!41))) e!3158780))))

(assert (= (and b!5060183 ((_ is Node!15558) (right!43137 (right!43137 ys!41)))) b!5060776))

(assert (= b!5060777 b!5060778))

(assert (= (and b!5060183 ((_ is Leaf!25842) (right!43137 (right!43137 ys!41)))) b!5060777))

(declare-fun m!6098516 () Bool)

(assert (=> b!5060776 m!6098516))

(declare-fun m!6098518 () Bool)

(assert (=> b!5060776 m!6098518))

(declare-fun m!6098520 () Bool)

(assert (=> b!5060777 m!6098520))

(assert (=> b!5060183 m!6097378))

(declare-fun b!5060779 () Bool)

(declare-fun e!3158782 () Bool)

(declare-fun tp!1414039 () Bool)

(assert (=> b!5060779 (= e!3158782 (and tp_is_empty!37039 tp!1414039))))

(assert (=> b!5060175 (= tp!1413969 e!3158782)))

(assert (= (and b!5060175 ((_ is Cons!58428) (innerList!15646 (xs!18896 (left!42807 xs!286))))) b!5060779))

(declare-fun b!5060780 () Bool)

(declare-fun e!3158783 () Bool)

(declare-fun tp!1414040 () Bool)

(assert (=> b!5060780 (= e!3158783 (and tp_is_empty!37039 tp!1414040))))

(assert (=> b!5060182 (= tp!1413976 e!3158783)))

(assert (= (and b!5060182 ((_ is Cons!58428) (innerList!15646 (xs!18896 (left!42807 ys!41))))) b!5060780))

(declare-fun b!5060781 () Bool)

(declare-fun e!3158784 () Bool)

(declare-fun tp!1414041 () Bool)

(assert (=> b!5060781 (= e!3158784 (and tp_is_empty!37039 tp!1414041))))

(assert (=> b!5060178 (= tp!1413972 e!3158784)))

(assert (= (and b!5060178 ((_ is Cons!58428) (innerList!15646 (xs!18896 (right!43137 xs!286))))) b!5060781))

(check-sat (not b!5060763) (not d!1629734) (not b!5060749) (not d!1629784) (not d!1629790) (not b!5060647) (not bm!352459) (not b!5060724) (not b!5060549) (not bm!352441) (not d!1629642) (not b!5060744) (not b!5060737) (not d!1629696) (not b!5060766) (not bm!352458) (not b!5060702) (not b!5060743) (not bm!352430) (not b!5060506) (not b!5060571) (not b!5060603) (not b!5060491) (not b!5060638) (not b!5060676) (not b!5060671) (not b!5060554) (not d!1629794) (not d!1629806) (not bm!352428) (not b!5060622) (not b!5060180) (not b!5060601) (not bm!352464) (not b!5060755) (not b!5060698) (not b!5060657) (not b!5060643) (not b!5060717) (not b!5060656) (not bm!352443) (not b!5060602) (not b!5060610) (not b!5060658) (not b!5060715) (not b!5060596) (not b!5060530) (not b!5060777) (not b!5060501) (not bm!352429) (not bm!352426) (not b!5060527) (not b!5060590) (not b!5060735) (not b!5060665) (not b!5060582) (not d!1629644) (not b!5060534) (not b!5060538) (not b!5060714) (not b!5060568) (not d!1629666) (not b!5060517) (not b!5060586) (not b!5060600) (not b!5060533) (not b!5060576) (not bm!352452) (not b!5060757) (not d!1629700) (not b!5060691) (not bm!352439) (not b!5060773) (not b!5060642) (not b!5060597) (not b!5060612) (not b!5060741) (not d!1629754) (not b!5060779) (not b!5060500) (not bm!352433) (not b!5060652) (not b!5060760) (not b!5060718) (not b!5060730) (not b!5060645) (not b!5060769) (not b!5060752) (not b!5060746) (not b!5060772) (not bm!352460) (not b!5060721) (not b!5060616) (not d!1629686) (not b!5060762) (not d!1629764) (not d!1629668) (not b!5060176) (not b!5060649) (not d!1629720) (not b!5060510) (not b!5060536) (not b!5060682) (not b!5060756) (not b!5060572) (not bm!352436) (not b!5060607) (not b!5060577) (not b!5060709) (not b!5060502) (not d!1629774) (not b!5060606) (not b!5060630) (not d!1629650) (not b!5060537) (not b!5060524) (not b!5060552) (not d!1629816) (not b!5060565) (not b!5060668) (not b!5060621) (not b!5060557) (not b!5060544) (not b!5060548) (not bm!352427) (not b!5060710) (not b!5060528) (not b!5060651) (not b!5060505) (not b!5060764) (not b!5060579) (not d!1629756) (not b!5060504) (not b!5060585) (not b!5060605) (not b!5060753) (not d!1629698) (not b!5060740) (not b!5060183) (not b!5060659) (not bm!352456) (not bm!352449) (not b!5060555) (not b!5060543) (not b!5060631) (not b!5060507) (not b!5060535) (not b!5060688) (not b!5060608) (not d!1629768) (not bm!352461) (not b!5060609) (not b!5060758) (not bm!352438) (not b!5060776) (not b!5060558) (not d!1629690) (not d!1629736) (not bm!352447) (not d!1629728) (not b!5060634) (not b!5060531) (not d!1629772) (not bm!352432) (not bm!352462) (not b!5060713) (not b!5060781) (not b!5060686) (not b!5060733) (not b!5060633) (not b!5060626) (not b!5060498) (not d!1629748) (not b!5060670) (not b!5060771) (not d!1629714) (not b!5060509) (not b!5060613) (not b!5060655) (not bm!352444) (not b!5060499) (not b!5060508) (not b!5060518) (not d!1629782) (not bm!352437) (not b!5060514) (not b!5060716) (not b!5060751) (not b!5060654) (not b!5060701) (not b!5060754) (not d!1629786) (not b!5060780) (not b!5060595) (not bm!352435) (not b!5060660) (not b!5060560) (not b!5060559) (not d!1629732) (not b!5060583) (not b!5060768) (not b!5060627) (not b!5060703) (not b!5060759) (not b!5060723) (not b!5060719) (not b!5060728) (not b!5060503) (not d!1629826) (not b!5060767) (not b!5060684) (not b!5060618) (not b!5060778) (not b!5060592) (not b!5060639) tp_is_empty!37039 (not d!1629742) (not bm!352463) (not b!5060551) (not bm!352442) (not b!5060173) (not b!5060591) (not b!5060748) (not b!5060664) (not bm!352425) (not d!1629798) (not b!5060547) (not bm!352440) (not b!5060726) (not b!5060775) (not d!1629730) (not b!5060774) (not bm!352434) (not b!5060513) (not b!5060761) (not b!5060540) (not bm!352431) (not b!5060770) (not d!1629766) (not b!5060765) (not b!5060556))
(check-sat)
(get-model)

(declare-fun d!1630392 () Bool)

(declare-fun e!3159147 () Bool)

(assert (=> d!1630392 e!3159147))

(declare-fun res!2155209 () Bool)

(assert (=> d!1630392 (=> (not res!2155209) (not e!3159147))))

(declare-fun lt!2088175 () List!58552)

(assert (=> d!1630392 (= res!2155209 (= (content!10414 lt!2088175) ((_ map or) (content!10414 (t!371255 (list!18977 (left!42807 xs!286)))) (content!10414 (list!18977 (right!43137 xs!286))))))))

(declare-fun e!3159148 () List!58552)

(assert (=> d!1630392 (= lt!2088175 e!3159148)))

(declare-fun c!868574 () Bool)

(assert (=> d!1630392 (= c!868574 ((_ is Nil!58428) (t!371255 (list!18977 (left!42807 xs!286)))))))

(assert (=> d!1630392 (= (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (right!43137 xs!286))) lt!2088175)))

(declare-fun b!5061497 () Bool)

(assert (=> b!5061497 (= e!3159147 (or (not (= (list!18977 (right!43137 xs!286)) Nil!58428)) (= lt!2088175 (t!371255 (list!18977 (left!42807 xs!286))))))))

(declare-fun b!5061496 () Bool)

(declare-fun res!2155208 () Bool)

(assert (=> b!5061496 (=> (not res!2155208) (not e!3159147))))

(assert (=> b!5061496 (= res!2155208 (= (size!39065 lt!2088175) (+ (size!39065 (t!371255 (list!18977 (left!42807 xs!286)))) (size!39065 (list!18977 (right!43137 xs!286))))))))

(declare-fun b!5061494 () Bool)

(assert (=> b!5061494 (= e!3159148 (list!18977 (right!43137 xs!286)))))

(declare-fun b!5061495 () Bool)

(assert (=> b!5061495 (= e!3159148 (Cons!58428 (h!64876 (t!371255 (list!18977 (left!42807 xs!286)))) (++!12779 (t!371255 (t!371255 (list!18977 (left!42807 xs!286)))) (list!18977 (right!43137 xs!286)))))))

(assert (= (and d!1630392 c!868574) b!5061494))

(assert (= (and d!1630392 (not c!868574)) b!5061495))

(assert (= (and d!1630392 res!2155209) b!5061496))

(assert (= (and b!5061496 res!2155208) b!5061497))

(declare-fun m!6100004 () Bool)

(assert (=> d!1630392 m!6100004))

(declare-fun m!6100006 () Bool)

(assert (=> d!1630392 m!6100006))

(assert (=> d!1630392 m!6097068))

(assert (=> d!1630392 m!6098116))

(declare-fun m!6100008 () Bool)

(assert (=> b!5061496 m!6100008))

(declare-fun m!6100010 () Bool)

(assert (=> b!5061496 m!6100010))

(assert (=> b!5061496 m!6097068))

(assert (=> b!5061496 m!6098120))

(assert (=> b!5061495 m!6097068))

(declare-fun m!6100012 () Bool)

(assert (=> b!5061495 m!6100012))

(assert (=> b!5060571 d!1630392))

(declare-fun d!1630394 () Bool)

(declare-fun e!3159149 () Bool)

(assert (=> d!1630394 e!3159149))

(declare-fun res!2155211 () Bool)

(assert (=> d!1630394 (=> (not res!2155211) (not e!3159149))))

(declare-fun lt!2088176 () List!58552)

(assert (=> d!1630394 (= res!2155211 (= (content!10414 lt!2088176) ((_ map or) (content!10414 (list!18977 (left!42807 xs!286))) (content!10414 call!352433))))))

(declare-fun e!3159150 () List!58552)

(assert (=> d!1630394 (= lt!2088176 e!3159150)))

(declare-fun c!868575 () Bool)

(assert (=> d!1630394 (= c!868575 ((_ is Nil!58428) (list!18977 (left!42807 xs!286))))))

(assert (=> d!1630394 (= (++!12779 (list!18977 (left!42807 xs!286)) call!352433) lt!2088176)))

(declare-fun b!5061501 () Bool)

(assert (=> b!5061501 (= e!3159149 (or (not (= call!352433 Nil!58428)) (= lt!2088176 (list!18977 (left!42807 xs!286)))))))

(declare-fun b!5061500 () Bool)

(declare-fun res!2155210 () Bool)

(assert (=> b!5061500 (=> (not res!2155210) (not e!3159149))))

(assert (=> b!5061500 (= res!2155210 (= (size!39065 lt!2088176) (+ (size!39065 (list!18977 (left!42807 xs!286))) (size!39065 call!352433))))))

(declare-fun b!5061498 () Bool)

(assert (=> b!5061498 (= e!3159150 call!352433)))

(declare-fun b!5061499 () Bool)

(assert (=> b!5061499 (= e!3159150 (Cons!58428 (h!64876 (list!18977 (left!42807 xs!286))) (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) call!352433)))))

(assert (= (and d!1630394 c!868575) b!5061498))

(assert (= (and d!1630394 (not c!868575)) b!5061499))

(assert (= (and d!1630394 res!2155211) b!5061500))

(assert (= (and b!5061500 res!2155210) b!5061501))

(declare-fun m!6100014 () Bool)

(assert (=> d!1630394 m!6100014))

(assert (=> d!1630394 m!6097062))

(assert (=> d!1630394 m!6098114))

(declare-fun m!6100016 () Bool)

(assert (=> d!1630394 m!6100016))

(declare-fun m!6100018 () Bool)

(assert (=> b!5061500 m!6100018))

(assert (=> b!5061500 m!6097062))

(assert (=> b!5061500 m!6098100))

(declare-fun m!6100020 () Bool)

(assert (=> b!5061500 m!6100020))

(declare-fun m!6100022 () Bool)

(assert (=> b!5061499 m!6100022))

(assert (=> bm!352428 d!1630394))

(declare-fun d!1630396 () Bool)

(assert (=> d!1630396 (= (max!0 (height!2135 (left!42807 ys!41)) (height!2135 (right!43137 ys!41))) (ite (< (height!2135 (left!42807 ys!41)) (height!2135 (right!43137 ys!41))) (height!2135 (right!43137 ys!41)) (height!2135 (left!42807 ys!41))))))

(assert (=> b!5060616 d!1630396))

(assert (=> b!5060616 d!1629750))

(assert (=> b!5060616 d!1629752))

(declare-fun bm!352525 () Bool)

(declare-fun call!352531 () List!58552)

(assert (=> bm!352525 (= call!352531 (++!12779 (t!371255 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5061502 () Bool)

(declare-fun e!3159151 () Bool)

(declare-fun call!352532 () List!58552)

(declare-fun call!352530 () List!58552)

(assert (=> b!5061502 (= e!3159151 (= call!352532 call!352530))))

(declare-fun bm!352526 () Bool)

(declare-fun call!352533 () List!58552)

(assert (=> bm!352526 (= call!352533 (++!12779 (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))))))

(declare-fun b!5061503 () Bool)

(assert (=> b!5061503 (= e!3159151 (= call!352532 call!352530))))

(declare-fun lt!2088177 () Bool)

(assert (=> b!5061503 (= lt!2088177 (appendAssoc!298 (t!371255 (t!371255 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))))) (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))))))

(declare-fun bm!352527 () Bool)

(assert (=> bm!352527 (= call!352532 (++!12779 call!352531 (list!18977 (right!43137 ys!41))))))

(declare-fun d!1630398 () Bool)

(assert (=> d!1630398 e!3159151))

(declare-fun c!868576 () Bool)

(assert (=> d!1630398 (= c!868576 ((_ is Nil!58428) (t!371255 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))))))))

(assert (=> d!1630398 (= (appendAssoc!298 (t!371255 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))) true)))

(declare-fun bm!352528 () Bool)

(assert (=> bm!352528 (= call!352530 (++!12779 (t!371255 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) call!352533))))

(assert (= (and d!1630398 c!868576) b!5061502))

(assert (= (and d!1630398 (not c!868576)) b!5061503))

(assert (= (or b!5061502 b!5061503) bm!352525))

(assert (= (or b!5061502 b!5061503) bm!352526))

(assert (= (or b!5061502 b!5061503) bm!352528))

(assert (= (or b!5061502 b!5061503) bm!352527))

(declare-fun m!6100024 () Bool)

(assert (=> bm!352528 m!6100024))

(assert (=> bm!352525 m!6097052))

(declare-fun m!6100026 () Bool)

(assert (=> bm!352525 m!6100026))

(assert (=> bm!352526 m!6097052))

(assert (=> bm!352526 m!6097074))

(assert (=> bm!352526 m!6098312))

(assert (=> bm!352527 m!6097074))

(declare-fun m!6100028 () Bool)

(assert (=> bm!352527 m!6100028))

(assert (=> b!5061503 m!6097052))

(assert (=> b!5061503 m!6097074))

(declare-fun m!6100030 () Bool)

(assert (=> b!5061503 m!6100030))

(assert (=> b!5060668 d!1630398))

(declare-fun d!1630400 () Bool)

(assert (=> d!1630400 (= (height!2135 (left!42807 (right!43137 ys!41))) (ite ((_ is Empty!15558) (left!42807 (right!43137 ys!41))) 0 (ite ((_ is Leaf!25842) (left!42807 (right!43137 ys!41))) 1 (cheight!15769 (left!42807 (right!43137 ys!41))))))))

(assert (=> b!5060660 d!1630400))

(declare-fun d!1630402 () Bool)

(assert (=> d!1630402 (= (height!2135 (right!43137 (right!43137 ys!41))) (ite ((_ is Empty!15558) (right!43137 (right!43137 ys!41))) 0 (ite ((_ is Leaf!25842) (right!43137 (right!43137 ys!41))) 1 (cheight!15769 (right!43137 (right!43137 ys!41))))))))

(assert (=> b!5060660 d!1630402))

(declare-fun d!1630404 () Bool)

(declare-fun res!2155212 () Bool)

(declare-fun e!3159152 () Bool)

(assert (=> d!1630404 (=> (not res!2155212) (not e!3159152))))

(assert (=> d!1630404 (= res!2155212 (= (csize!31346 (left!42807 (right!43137 xs!286))) (+ (size!39064 (left!42807 (left!42807 (right!43137 xs!286)))) (size!39064 (right!43137 (left!42807 (right!43137 xs!286)))))))))

(assert (=> d!1630404 (= (inv!77526 (left!42807 (right!43137 xs!286))) e!3159152)))

(declare-fun b!5061504 () Bool)

(declare-fun res!2155213 () Bool)

(assert (=> b!5061504 (=> (not res!2155213) (not e!3159152))))

(assert (=> b!5061504 (= res!2155213 (and (not (= (left!42807 (left!42807 (right!43137 xs!286))) Empty!15558)) (not (= (right!43137 (left!42807 (right!43137 xs!286))) Empty!15558))))))

(declare-fun b!5061505 () Bool)

(declare-fun res!2155214 () Bool)

(assert (=> b!5061505 (=> (not res!2155214) (not e!3159152))))

(assert (=> b!5061505 (= res!2155214 (= (cheight!15769 (left!42807 (right!43137 xs!286))) (+ (max!0 (height!2135 (left!42807 (left!42807 (right!43137 xs!286)))) (height!2135 (right!43137 (left!42807 (right!43137 xs!286))))) 1)))))

(declare-fun b!5061506 () Bool)

(assert (=> b!5061506 (= e!3159152 (<= 0 (cheight!15769 (left!42807 (right!43137 xs!286)))))))

(assert (= (and d!1630404 res!2155212) b!5061504))

(assert (= (and b!5061504 res!2155213) b!5061505))

(assert (= (and b!5061505 res!2155214) b!5061506))

(declare-fun m!6100032 () Bool)

(assert (=> d!1630404 m!6100032))

(declare-fun m!6100034 () Bool)

(assert (=> d!1630404 m!6100034))

(declare-fun m!6100036 () Bool)

(assert (=> b!5061505 m!6100036))

(declare-fun m!6100038 () Bool)

(assert (=> b!5061505 m!6100038))

(assert (=> b!5061505 m!6100036))

(assert (=> b!5061505 m!6100038))

(declare-fun m!6100040 () Bool)

(assert (=> b!5061505 m!6100040))

(assert (=> b!5060746 d!1630404))

(declare-fun d!1630406 () Bool)

(assert (=> d!1630406 (= (max!0 (height!2135 (left!42807 (right!43137 xs!286))) (height!2135 (right!43137 (right!43137 xs!286)))) (ite (< (height!2135 (left!42807 (right!43137 xs!286))) (height!2135 (right!43137 (right!43137 xs!286)))) (height!2135 (right!43137 (right!43137 xs!286))) (height!2135 (left!42807 (right!43137 xs!286)))))))

(assert (=> b!5060645 d!1630406))

(declare-fun d!1630408 () Bool)

(assert (=> d!1630408 (= (height!2135 (left!42807 (right!43137 xs!286))) (ite ((_ is Empty!15558) (left!42807 (right!43137 xs!286))) 0 (ite ((_ is Leaf!25842) (left!42807 (right!43137 xs!286))) 1 (cheight!15769 (left!42807 (right!43137 xs!286))))))))

(assert (=> b!5060645 d!1630408))

(declare-fun d!1630410 () Bool)

(assert (=> d!1630410 (= (height!2135 (right!43137 (right!43137 xs!286))) (ite ((_ is Empty!15558) (right!43137 (right!43137 xs!286))) 0 (ite ((_ is Leaf!25842) (right!43137 (right!43137 xs!286))) 1 (cheight!15769 (right!43137 (right!43137 xs!286))))))))

(assert (=> b!5060645 d!1630410))

(declare-fun bm!352529 () Bool)

(declare-fun call!352535 () List!58552)

(assert (=> bm!352529 (= call!352535 (++!12779 (t!371255 (list!18977 xs!286)) (list!18977 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5061507 () Bool)

(declare-fun e!3159153 () Bool)

(declare-fun call!352536 () List!58552)

(declare-fun call!352534 () List!58552)

(assert (=> b!5061507 (= e!3159153 (= call!352536 call!352534))))

(declare-fun bm!352530 () Bool)

(declare-fun call!352537 () List!58552)

(assert (=> bm!352530 (= call!352537 (++!12779 (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5061508 () Bool)

(assert (=> b!5061508 (= e!3159153 (= call!352536 call!352534))))

(declare-fun lt!2088178 () Bool)

(assert (=> b!5061508 (= lt!2088178 (appendAssoc!298 (t!371255 (t!371255 (list!18977 xs!286))) (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun bm!352531 () Bool)

(assert (=> bm!352531 (= call!352536 (++!12779 call!352535 (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun d!1630412 () Bool)

(assert (=> d!1630412 e!3159153))

(declare-fun c!868577 () Bool)

(assert (=> d!1630412 (= c!868577 ((_ is Nil!58428) (t!371255 (list!18977 xs!286))))))

(assert (=> d!1630412 (= (appendAssoc!298 (t!371255 (list!18977 xs!286)) (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))) true)))

(declare-fun bm!352532 () Bool)

(assert (=> bm!352532 (= call!352534 (++!12779 (t!371255 (list!18977 xs!286)) call!352537))))

(assert (= (and d!1630412 c!868577) b!5061507))

(assert (= (and d!1630412 (not c!868577)) b!5061508))

(assert (= (or b!5061507 b!5061508) bm!352529))

(assert (= (or b!5061507 b!5061508) bm!352530))

(assert (= (or b!5061507 b!5061508) bm!352532))

(assert (= (or b!5061507 b!5061508) bm!352531))

(declare-fun m!6100042 () Bool)

(assert (=> bm!352532 m!6100042))

(assert (=> bm!352529 m!6097050))

(assert (=> bm!352529 m!6098326))

(assert (=> bm!352530 m!6097050))

(assert (=> bm!352530 m!6097052))

(assert (=> bm!352530 m!6098052))

(assert (=> bm!352531 m!6097052))

(declare-fun m!6100044 () Bool)

(assert (=> bm!352531 m!6100044))

(assert (=> b!5061508 m!6097050))

(assert (=> b!5061508 m!6097052))

(declare-fun m!6100046 () Bool)

(assert (=> b!5061508 m!6100046))

(assert (=> b!5060540 d!1630412))

(declare-fun d!1630414 () Bool)

(declare-fun c!868578 () Bool)

(assert (=> d!1630414 (= c!868578 ((_ is Nil!58428) lt!2088050))))

(declare-fun e!3159154 () (InoxSet T!105076))

(assert (=> d!1630414 (= (content!10414 lt!2088050) e!3159154)))

(declare-fun b!5061509 () Bool)

(assert (=> b!5061509 (= e!3159154 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061510 () Bool)

(assert (=> b!5061510 (= e!3159154 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 lt!2088050) true) (content!10414 (t!371255 lt!2088050))))))

(assert (= (and d!1630414 c!868578) b!5061509))

(assert (= (and d!1630414 (not c!868578)) b!5061510))

(declare-fun m!6100048 () Bool)

(assert (=> b!5061510 m!6100048))

(declare-fun m!6100050 () Bool)

(assert (=> b!5061510 m!6100050))

(assert (=> d!1629816 d!1630414))

(declare-fun d!1630416 () Bool)

(declare-fun c!868579 () Bool)

(assert (=> d!1630416 (= c!868579 ((_ is Nil!58428) (list!18977 (right!43137 xs!286))))))

(declare-fun e!3159155 () (InoxSet T!105076))

(assert (=> d!1630416 (= (content!10414 (list!18977 (right!43137 xs!286))) e!3159155)))

(declare-fun b!5061511 () Bool)

(assert (=> b!5061511 (= e!3159155 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061512 () Bool)

(assert (=> b!5061512 (= e!3159155 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 (right!43137 xs!286))) true) (content!10414 (t!371255 (list!18977 (right!43137 xs!286))))))))

(assert (= (and d!1630416 c!868579) b!5061511))

(assert (= (and d!1630416 (not c!868579)) b!5061512))

(declare-fun m!6100052 () Bool)

(assert (=> b!5061512 m!6100052))

(declare-fun m!6100054 () Bool)

(assert (=> b!5061512 m!6100054))

(assert (=> d!1629816 d!1630416))

(assert (=> d!1629816 d!1629780))

(declare-fun b!5061513 () Bool)

(declare-fun res!2155216 () Bool)

(declare-fun e!3159156 () Bool)

(assert (=> b!5061513 (=> (not res!2155216) (not e!3159156))))

(assert (=> b!5061513 (= res!2155216 (isBalanced!4420 (left!42807 (right!43137 (right!43137 lt!2087928)))))))

(declare-fun b!5061514 () Bool)

(declare-fun res!2155217 () Bool)

(assert (=> b!5061514 (=> (not res!2155217) (not e!3159156))))

(assert (=> b!5061514 (= res!2155217 (isBalanced!4420 (right!43137 (right!43137 (right!43137 lt!2087928)))))))

(declare-fun b!5061515 () Bool)

(declare-fun res!2155219 () Bool)

(assert (=> b!5061515 (=> (not res!2155219) (not e!3159156))))

(assert (=> b!5061515 (= res!2155219 (not (isEmpty!31619 (left!42807 (right!43137 (right!43137 lt!2087928))))))))

(declare-fun b!5061516 () Bool)

(assert (=> b!5061516 (= e!3159156 (not (isEmpty!31619 (right!43137 (right!43137 (right!43137 lt!2087928))))))))

(declare-fun b!5061517 () Bool)

(declare-fun res!2155220 () Bool)

(assert (=> b!5061517 (=> (not res!2155220) (not e!3159156))))

(assert (=> b!5061517 (= res!2155220 (<= (- (height!2135 (left!42807 (right!43137 (right!43137 lt!2087928)))) (height!2135 (right!43137 (right!43137 (right!43137 lt!2087928))))) 1))))

(declare-fun b!5061518 () Bool)

(declare-fun e!3159157 () Bool)

(assert (=> b!5061518 (= e!3159157 e!3159156)))

(declare-fun res!2155218 () Bool)

(assert (=> b!5061518 (=> (not res!2155218) (not e!3159156))))

(assert (=> b!5061518 (= res!2155218 (<= (- 1) (- (height!2135 (left!42807 (right!43137 (right!43137 lt!2087928)))) (height!2135 (right!43137 (right!43137 (right!43137 lt!2087928)))))))))

(declare-fun d!1630418 () Bool)

(declare-fun res!2155215 () Bool)

(assert (=> d!1630418 (=> res!2155215 e!3159157)))

(assert (=> d!1630418 (= res!2155215 (not ((_ is Node!15558) (right!43137 (right!43137 lt!2087928)))))))

(assert (=> d!1630418 (= (isBalanced!4420 (right!43137 (right!43137 lt!2087928))) e!3159157)))

(assert (= (and d!1630418 (not res!2155215)) b!5061518))

(assert (= (and b!5061518 res!2155218) b!5061517))

(assert (= (and b!5061517 res!2155220) b!5061513))

(assert (= (and b!5061513 res!2155216) b!5061514))

(assert (= (and b!5061514 res!2155217) b!5061515))

(assert (= (and b!5061515 res!2155219) b!5061516))

(declare-fun m!6100056 () Bool)

(assert (=> b!5061515 m!6100056))

(declare-fun m!6100058 () Bool)

(assert (=> b!5061517 m!6100058))

(declare-fun m!6100060 () Bool)

(assert (=> b!5061517 m!6100060))

(declare-fun m!6100062 () Bool)

(assert (=> b!5061514 m!6100062))

(declare-fun m!6100064 () Bool)

(assert (=> b!5061516 m!6100064))

(declare-fun m!6100066 () Bool)

(assert (=> b!5061513 m!6100066))

(assert (=> b!5061518 m!6100058))

(assert (=> b!5061518 m!6100060))

(assert (=> b!5060556 d!1630418))

(declare-fun d!1630420 () Bool)

(declare-fun c!868580 () Bool)

(assert (=> d!1630420 (= c!868580 ((_ is Node!15558) (left!42807 (left!42807 (right!43137 ys!41)))))))

(declare-fun e!3159158 () Bool)

(assert (=> d!1630420 (= (inv!77523 (left!42807 (left!42807 (right!43137 ys!41)))) e!3159158)))

(declare-fun b!5061519 () Bool)

(assert (=> b!5061519 (= e!3159158 (inv!77526 (left!42807 (left!42807 (right!43137 ys!41)))))))

(declare-fun b!5061520 () Bool)

(declare-fun e!3159159 () Bool)

(assert (=> b!5061520 (= e!3159158 e!3159159)))

(declare-fun res!2155221 () Bool)

(assert (=> b!5061520 (= res!2155221 (not ((_ is Leaf!25842) (left!42807 (left!42807 (right!43137 ys!41))))))))

(assert (=> b!5061520 (=> res!2155221 e!3159159)))

(declare-fun b!5061521 () Bool)

(assert (=> b!5061521 (= e!3159159 (inv!77527 (left!42807 (left!42807 (right!43137 ys!41)))))))

(assert (= (and d!1630420 c!868580) b!5061519))

(assert (= (and d!1630420 (not c!868580)) b!5061520))

(assert (= (and b!5061520 (not res!2155221)) b!5061521))

(declare-fun m!6100068 () Bool)

(assert (=> b!5061519 m!6100068))

(declare-fun m!6100070 () Bool)

(assert (=> b!5061521 m!6100070))

(assert (=> b!5060773 d!1630420))

(declare-fun d!1630422 () Bool)

(declare-fun c!868581 () Bool)

(assert (=> d!1630422 (= c!868581 ((_ is Node!15558) (right!43137 (left!42807 (right!43137 ys!41)))))))

(declare-fun e!3159160 () Bool)

(assert (=> d!1630422 (= (inv!77523 (right!43137 (left!42807 (right!43137 ys!41)))) e!3159160)))

(declare-fun b!5061522 () Bool)

(assert (=> b!5061522 (= e!3159160 (inv!77526 (right!43137 (left!42807 (right!43137 ys!41)))))))

(declare-fun b!5061523 () Bool)

(declare-fun e!3159161 () Bool)

(assert (=> b!5061523 (= e!3159160 e!3159161)))

(declare-fun res!2155222 () Bool)

(assert (=> b!5061523 (= res!2155222 (not ((_ is Leaf!25842) (right!43137 (left!42807 (right!43137 ys!41))))))))

(assert (=> b!5061523 (=> res!2155222 e!3159161)))

(declare-fun b!5061524 () Bool)

(assert (=> b!5061524 (= e!3159161 (inv!77527 (right!43137 (left!42807 (right!43137 ys!41)))))))

(assert (= (and d!1630422 c!868581) b!5061522))

(assert (= (and d!1630422 (not c!868581)) b!5061523))

(assert (= (and b!5061523 (not res!2155222)) b!5061524))

(declare-fun m!6100072 () Bool)

(assert (=> b!5061522 m!6100072))

(declare-fun m!6100074 () Bool)

(assert (=> b!5061524 m!6100074))

(assert (=> b!5060773 d!1630422))

(declare-fun d!1630424 () Bool)

(declare-fun c!868582 () Bool)

(assert (=> d!1630424 (= c!868582 ((_ is Nil!58428) lt!2088028))))

(declare-fun e!3159162 () (InoxSet T!105076))

(assert (=> d!1630424 (= (content!10414 lt!2088028) e!3159162)))

(declare-fun b!5061525 () Bool)

(assert (=> b!5061525 (= e!3159162 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061526 () Bool)

(assert (=> b!5061526 (= e!3159162 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 lt!2088028) true) (content!10414 (t!371255 lt!2088028))))))

(assert (= (and d!1630424 c!868582) b!5061525))

(assert (= (and d!1630424 (not c!868582)) b!5061526))

(declare-fun m!6100076 () Bool)

(assert (=> b!5061526 m!6100076))

(declare-fun m!6100078 () Bool)

(assert (=> b!5061526 m!6100078))

(assert (=> d!1629700 d!1630424))

(declare-fun d!1630426 () Bool)

(declare-fun c!868583 () Bool)

(assert (=> d!1630426 (= c!868583 ((_ is Nil!58428) (list!18977 (left!42807 xs!286))))))

(declare-fun e!3159163 () (InoxSet T!105076))

(assert (=> d!1630426 (= (content!10414 (list!18977 (left!42807 xs!286))) e!3159163)))

(declare-fun b!5061527 () Bool)

(assert (=> b!5061527 (= e!3159163 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061528 () Bool)

(assert (=> b!5061528 (= e!3159163 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 (left!42807 xs!286))) true) (content!10414 (t!371255 (list!18977 (left!42807 xs!286))))))))

(assert (= (and d!1630426 c!868583) b!5061527))

(assert (= (and d!1630426 (not c!868583)) b!5061528))

(declare-fun m!6100080 () Bool)

(assert (=> b!5061528 m!6100080))

(assert (=> b!5061528 m!6100006))

(assert (=> d!1629700 d!1630426))

(assert (=> d!1629700 d!1630416))

(declare-fun d!1630428 () Bool)

(declare-fun e!3159164 () Bool)

(assert (=> d!1630428 e!3159164))

(declare-fun res!2155224 () Bool)

(assert (=> d!1630428 (=> (not res!2155224) (not e!3159164))))

(declare-fun lt!2088179 () List!58552)

(assert (=> d!1630428 (= res!2155224 (= (content!10414 lt!2088179) ((_ map or) (content!10414 call!352467) (content!10414 (list!18977 ys!41)))))))

(declare-fun e!3159165 () List!58552)

(assert (=> d!1630428 (= lt!2088179 e!3159165)))

(declare-fun c!868584 () Bool)

(assert (=> d!1630428 (= c!868584 ((_ is Nil!58428) call!352467))))

(assert (=> d!1630428 (= (++!12779 call!352467 (list!18977 ys!41)) lt!2088179)))

(declare-fun b!5061532 () Bool)

(assert (=> b!5061532 (= e!3159164 (or (not (= (list!18977 ys!41) Nil!58428)) (= lt!2088179 call!352467)))))

(declare-fun b!5061531 () Bool)

(declare-fun res!2155223 () Bool)

(assert (=> b!5061531 (=> (not res!2155223) (not e!3159164))))

(assert (=> b!5061531 (= res!2155223 (= (size!39065 lt!2088179) (+ (size!39065 call!352467) (size!39065 (list!18977 ys!41)))))))

(declare-fun b!5061529 () Bool)

(assert (=> b!5061529 (= e!3159165 (list!18977 ys!41))))

(declare-fun b!5061530 () Bool)

(assert (=> b!5061530 (= e!3159165 (Cons!58428 (h!64876 call!352467) (++!12779 (t!371255 call!352467) (list!18977 ys!41))))))

(assert (= (and d!1630428 c!868584) b!5061529))

(assert (= (and d!1630428 (not c!868584)) b!5061530))

(assert (= (and d!1630428 res!2155224) b!5061531))

(assert (= (and b!5061531 res!2155223) b!5061532))

(declare-fun m!6100082 () Bool)

(assert (=> d!1630428 m!6100082))

(declare-fun m!6100084 () Bool)

(assert (=> d!1630428 m!6100084))

(assert (=> d!1630428 m!6096986))

(assert (=> d!1630428 m!6097340))

(declare-fun m!6100086 () Bool)

(assert (=> b!5061531 m!6100086))

(declare-fun m!6100088 () Bool)

(assert (=> b!5061531 m!6100088))

(assert (=> b!5061531 m!6096986))

(assert (=> b!5061531 m!6097346))

(assert (=> b!5061530 m!6096986))

(declare-fun m!6100090 () Bool)

(assert (=> b!5061530 m!6100090))

(assert (=> bm!352463 d!1630428))

(declare-fun d!1630430 () Bool)

(assert (=> d!1630430 (= (height!2135 (ite c!868361 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (ite ((_ is Empty!15558) (ite c!868361 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) 0 (ite ((_ is Leaf!25842) (ite c!868361 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) 1 (cheight!15769 (ite c!868361 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))))

(assert (=> bm!352456 d!1630430))

(declare-fun d!1630432 () Bool)

(assert (=> d!1630432 (= (height!2135 (left!42807 lt!2087966)) (ite ((_ is Empty!15558) (left!42807 lt!2087966)) 0 (ite ((_ is Leaf!25842) (left!42807 lt!2087966)) 1 (cheight!15769 (left!42807 lt!2087966)))))))

(assert (=> b!5060538 d!1630432))

(declare-fun d!1630434 () Bool)

(assert (=> d!1630434 (= (height!2135 (right!43137 lt!2087966)) (ite ((_ is Empty!15558) (right!43137 lt!2087966)) 0 (ite ((_ is Leaf!25842) (right!43137 lt!2087966)) 1 (cheight!15769 (right!43137 lt!2087966)))))))

(assert (=> b!5060538 d!1630434))

(declare-fun d!1630436 () Bool)

(assert (=> d!1630436 (= (isEmpty!31621 (list!18977 (left!42807 xs!286))) ((_ is Nil!58428) (list!18977 (left!42807 xs!286))))))

(assert (=> d!1629650 d!1630436))

(assert (=> d!1629650 d!1629658))

(assert (=> d!1629650 d!1629696))

(declare-fun bm!352533 () Bool)

(declare-fun call!352539 () List!58552)

(assert (=> bm!352533 (= call!352539 (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 ys!41))))))

(declare-fun b!5061533 () Bool)

(declare-fun e!3159166 () Bool)

(declare-fun call!352540 () List!58552)

(declare-fun call!352538 () List!58552)

(assert (=> b!5061533 (= e!3159166 (= call!352540 call!352538))))

(declare-fun bm!352534 () Bool)

(declare-fun call!352541 () List!58552)

(assert (=> bm!352534 (= call!352541 (++!12779 (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))))))

(declare-fun b!5061534 () Bool)

(assert (=> b!5061534 (= e!3159166 (= call!352540 call!352538))))

(declare-fun lt!2088180 () Bool)

(assert (=> b!5061534 (= lt!2088180 (appendAssoc!298 (t!371255 (list!18977 (right!43137 xs!286))) (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))))))

(declare-fun bm!352535 () Bool)

(assert (=> bm!352535 (= call!352540 (++!12779 call!352539 (list!18977 (right!43137 ys!41))))))

(declare-fun d!1630438 () Bool)

(assert (=> d!1630438 e!3159166))

(declare-fun c!868585 () Bool)

(assert (=> d!1630438 (= c!868585 ((_ is Nil!58428) (list!18977 (right!43137 xs!286))))))

(assert (=> d!1630438 (= (appendAssoc!298 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))) true)))

(declare-fun bm!352536 () Bool)

(assert (=> bm!352536 (= call!352538 (++!12779 (list!18977 (right!43137 xs!286)) call!352541))))

(assert (= (and d!1630438 c!868585) b!5061533))

(assert (= (and d!1630438 (not c!868585)) b!5061534))

(assert (= (or b!5061533 b!5061534) bm!352533))

(assert (= (or b!5061533 b!5061534) bm!352534))

(assert (= (or b!5061533 b!5061534) bm!352536))

(assert (= (or b!5061533 b!5061534) bm!352535))

(assert (=> bm!352536 m!6097068))

(declare-fun m!6100092 () Bool)

(assert (=> bm!352536 m!6100092))

(assert (=> bm!352533 m!6097068))

(assert (=> bm!352533 m!6097078))

(declare-fun m!6100094 () Bool)

(assert (=> bm!352533 m!6100094))

(assert (=> bm!352534 m!6097078))

(assert (=> bm!352534 m!6097074))

(assert (=> bm!352534 m!6097356))

(assert (=> bm!352535 m!6097074))

(declare-fun m!6100096 () Bool)

(assert (=> bm!352535 m!6100096))

(assert (=> b!5061534 m!6097078))

(assert (=> b!5061534 m!6097074))

(declare-fun m!6100098 () Bool)

(assert (=> b!5061534 m!6100098))

(assert (=> b!5060600 d!1630438))

(assert (=> b!5060600 d!1629702))

(assert (=> b!5060600 d!1629744))

(assert (=> b!5060600 d!1629746))

(assert (=> b!5060537 d!1630432))

(assert (=> b!5060537 d!1630434))

(declare-fun d!1630440 () Bool)

(declare-fun lt!2088181 () Int)

(assert (=> d!1630440 (>= lt!2088181 0)))

(declare-fun e!3159167 () Int)

(assert (=> d!1630440 (= lt!2088181 e!3159167)))

(declare-fun c!868586 () Bool)

(assert (=> d!1630440 (= c!868586 ((_ is Nil!58428) (innerList!15646 (xs!18896 (left!42807 xs!286)))))))

(assert (=> d!1630440 (= (size!39065 (innerList!15646 (xs!18896 (left!42807 xs!286)))) lt!2088181)))

(declare-fun b!5061535 () Bool)

(assert (=> b!5061535 (= e!3159167 0)))

(declare-fun b!5061536 () Bool)

(assert (=> b!5061536 (= e!3159167 (+ 1 (size!39065 (t!371255 (innerList!15646 (xs!18896 (left!42807 xs!286)))))))))

(assert (= (and d!1630440 c!868586) b!5061535))

(assert (= (and d!1630440 (not c!868586)) b!5061536))

(declare-fun m!6100100 () Bool)

(assert (=> b!5061536 m!6100100))

(assert (=> d!1629798 d!1630440))

(declare-fun d!1630442 () Bool)

(declare-fun e!3159168 () Bool)

(assert (=> d!1630442 e!3159168))

(declare-fun res!2155226 () Bool)

(assert (=> d!1630442 (=> (not res!2155226) (not e!3159168))))

(declare-fun lt!2088182 () List!58552)

(assert (=> d!1630442 (= res!2155226 (= (content!10414 lt!2088182) ((_ map or) (content!10414 (list!18977 (left!42807 (left!42807 ys!41)))) (content!10414 (list!18977 (right!43137 (left!42807 ys!41)))))))))

(declare-fun e!3159169 () List!58552)

(assert (=> d!1630442 (= lt!2088182 e!3159169)))

(declare-fun c!868587 () Bool)

(assert (=> d!1630442 (= c!868587 ((_ is Nil!58428) (list!18977 (left!42807 (left!42807 ys!41)))))))

(assert (=> d!1630442 (= (++!12779 (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))) lt!2088182)))

(declare-fun b!5061540 () Bool)

(assert (=> b!5061540 (= e!3159168 (or (not (= (list!18977 (right!43137 (left!42807 ys!41))) Nil!58428)) (= lt!2088182 (list!18977 (left!42807 (left!42807 ys!41))))))))

(declare-fun b!5061539 () Bool)

(declare-fun res!2155225 () Bool)

(assert (=> b!5061539 (=> (not res!2155225) (not e!3159168))))

(assert (=> b!5061539 (= res!2155225 (= (size!39065 lt!2088182) (+ (size!39065 (list!18977 (left!42807 (left!42807 ys!41)))) (size!39065 (list!18977 (right!43137 (left!42807 ys!41)))))))))

(declare-fun b!5061537 () Bool)

(assert (=> b!5061537 (= e!3159169 (list!18977 (right!43137 (left!42807 ys!41))))))

(declare-fun b!5061538 () Bool)

(assert (=> b!5061538 (= e!3159169 (Cons!58428 (h!64876 (list!18977 (left!42807 (left!42807 ys!41)))) (++!12779 (t!371255 (list!18977 (left!42807 (left!42807 ys!41)))) (list!18977 (right!43137 (left!42807 ys!41))))))))

(assert (= (and d!1630442 c!868587) b!5061537))

(assert (= (and d!1630442 (not c!868587)) b!5061538))

(assert (= (and d!1630442 res!2155226) b!5061539))

(assert (= (and b!5061539 res!2155225) b!5061540))

(declare-fun m!6100102 () Bool)

(assert (=> d!1630442 m!6100102))

(assert (=> d!1630442 m!6097050))

(assert (=> d!1630442 m!6098320))

(assert (=> d!1630442 m!6097052))

(declare-fun m!6100104 () Bool)

(assert (=> d!1630442 m!6100104))

(declare-fun m!6100106 () Bool)

(assert (=> b!5061539 m!6100106))

(assert (=> b!5061539 m!6097050))

(assert (=> b!5061539 m!6098324))

(assert (=> b!5061539 m!6097052))

(declare-fun m!6100108 () Bool)

(assert (=> b!5061539 m!6100108))

(assert (=> b!5061538 m!6097052))

(declare-fun m!6100110 () Bool)

(assert (=> b!5061538 m!6100110))

(assert (=> b!5060639 d!1630442))

(assert (=> b!5060639 d!1629676))

(assert (=> b!5060639 d!1629678))

(declare-fun bm!352537 () Bool)

(declare-fun call!352543 () List!58552)

(assert (=> bm!352537 (= call!352543 (++!12779 (t!371255 (list!18977 (left!42807 (right!43137 xs!286)))) (list!18977 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5061541 () Bool)

(declare-fun e!3159170 () Bool)

(declare-fun call!352544 () List!58552)

(declare-fun call!352542 () List!58552)

(assert (=> b!5061541 (= e!3159170 (= call!352544 call!352542))))

(declare-fun bm!352538 () Bool)

(declare-fun call!352545 () List!58552)

(assert (=> bm!352538 (= call!352545 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)))))

(declare-fun b!5061542 () Bool)

(assert (=> b!5061542 (= e!3159170 (= call!352544 call!352542))))

(declare-fun lt!2088183 () Bool)

(assert (=> b!5061542 (= lt!2088183 (appendAssoc!298 (t!371255 (t!371255 (list!18977 (left!42807 (right!43137 xs!286))))) (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)))))

(declare-fun bm!352539 () Bool)

(assert (=> bm!352539 (= call!352544 (++!12779 call!352543 (list!18977 ys!41)))))

(declare-fun d!1630444 () Bool)

(assert (=> d!1630444 e!3159170))

(declare-fun c!868588 () Bool)

(assert (=> d!1630444 (= c!868588 ((_ is Nil!58428) (t!371255 (list!18977 (left!42807 (right!43137 xs!286))))))))

(assert (=> d!1630444 (= (appendAssoc!298 (t!371255 (list!18977 (left!42807 (right!43137 xs!286)))) (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)) true)))

(declare-fun bm!352540 () Bool)

(assert (=> bm!352540 (= call!352542 (++!12779 (t!371255 (list!18977 (left!42807 (right!43137 xs!286)))) call!352545))))

(assert (= (and d!1630444 c!868588) b!5061541))

(assert (= (and d!1630444 (not c!868588)) b!5061542))

(assert (= (or b!5061541 b!5061542) bm!352537))

(assert (= (or b!5061541 b!5061542) bm!352538))

(assert (= (or b!5061541 b!5061542) bm!352540))

(assert (= (or b!5061541 b!5061542) bm!352539))

(declare-fun m!6100112 () Bool)

(assert (=> bm!352540 m!6100112))

(assert (=> bm!352537 m!6097058))

(declare-fun m!6100114 () Bool)

(assert (=> bm!352537 m!6100114))

(assert (=> bm!352538 m!6097058))

(assert (=> bm!352538 m!6096986))

(assert (=> bm!352538 m!6097064))

(assert (=> bm!352539 m!6096986))

(declare-fun m!6100116 () Bool)

(assert (=> bm!352539 m!6100116))

(assert (=> b!5061542 m!6097058))

(assert (=> b!5061542 m!6096986))

(declare-fun m!6100118 () Bool)

(assert (=> b!5061542 m!6100118))

(assert (=> b!5060728 d!1630444))

(assert (=> d!1629786 d!1629696))

(declare-fun d!1630446 () Bool)

(declare-fun lt!2088184 () Int)

(assert (=> d!1630446 (= lt!2088184 (size!39065 (list!18977 (right!43137 xs!286))))))

(assert (=> d!1630446 (= lt!2088184 (ite ((_ is Empty!15558) (right!43137 xs!286)) 0 (ite ((_ is Leaf!25842) (right!43137 xs!286)) (csize!31347 (right!43137 xs!286)) (csize!31346 (right!43137 xs!286)))))))

(assert (=> d!1630446 (= (size!39064 (right!43137 xs!286)) lt!2088184)))

(declare-fun bs!1189653 () Bool)

(assert (= bs!1189653 d!1630446))

(assert (=> bs!1189653 m!6097068))

(assert (=> bs!1189653 m!6097068))

(assert (=> bs!1189653 m!6098120))

(assert (=> d!1629786 d!1630446))

(declare-fun d!1630448 () Bool)

(declare-fun lt!2088185 () Int)

(assert (=> d!1630448 (>= lt!2088185 0)))

(declare-fun e!3159171 () Int)

(assert (=> d!1630448 (= lt!2088185 e!3159171)))

(declare-fun c!868589 () Bool)

(assert (=> d!1630448 (= c!868589 ((_ is Nil!58428) lt!2088034))))

(assert (=> d!1630448 (= (size!39065 lt!2088034) lt!2088185)))

(declare-fun b!5061543 () Bool)

(assert (=> b!5061543 (= e!3159171 0)))

(declare-fun b!5061544 () Bool)

(assert (=> b!5061544 (= e!3159171 (+ 1 (size!39065 (t!371255 lt!2088034))))))

(assert (= (and d!1630448 c!868589) b!5061543))

(assert (= (and d!1630448 (not c!868589)) b!5061544))

(declare-fun m!6100120 () Bool)

(assert (=> b!5061544 m!6100120))

(assert (=> b!5060634 d!1630448))

(declare-fun d!1630450 () Bool)

(declare-fun lt!2088186 () Int)

(assert (=> d!1630450 (>= lt!2088186 0)))

(declare-fun e!3159172 () Int)

(assert (=> d!1630450 (= lt!2088186 e!3159172)))

(declare-fun c!868590 () Bool)

(assert (=> d!1630450 (= c!868590 ((_ is Nil!58428) (list!18977 (left!42807 ys!41))))))

(assert (=> d!1630450 (= (size!39065 (list!18977 (left!42807 ys!41))) lt!2088186)))

(declare-fun b!5061545 () Bool)

(assert (=> b!5061545 (= e!3159172 0)))

(declare-fun b!5061546 () Bool)

(assert (=> b!5061546 (= e!3159172 (+ 1 (size!39065 (t!371255 (list!18977 (left!42807 ys!41))))))))

(assert (= (and d!1630450 c!868590) b!5061545))

(assert (= (and d!1630450 (not c!868590)) b!5061546))

(declare-fun m!6100122 () Bool)

(assert (=> b!5061546 m!6100122))

(assert (=> b!5060634 d!1630450))

(declare-fun d!1630452 () Bool)

(declare-fun lt!2088187 () Int)

(assert (=> d!1630452 (>= lt!2088187 0)))

(declare-fun e!3159173 () Int)

(assert (=> d!1630452 (= lt!2088187 e!3159173)))

(declare-fun c!868591 () Bool)

(assert (=> d!1630452 (= c!868591 ((_ is Nil!58428) (list!18977 (right!43137 ys!41))))))

(assert (=> d!1630452 (= (size!39065 (list!18977 (right!43137 ys!41))) lt!2088187)))

(declare-fun b!5061547 () Bool)

(assert (=> b!5061547 (= e!3159173 0)))

(declare-fun b!5061548 () Bool)

(assert (=> b!5061548 (= e!3159173 (+ 1 (size!39065 (t!371255 (list!18977 (right!43137 ys!41))))))))

(assert (= (and d!1630452 c!868591) b!5061547))

(assert (= (and d!1630452 (not c!868591)) b!5061548))

(declare-fun m!6100124 () Bool)

(assert (=> b!5061548 m!6100124))

(assert (=> b!5060634 d!1630452))

(declare-fun d!1630454 () Bool)

(declare-fun c!868592 () Bool)

(assert (=> d!1630454 (= c!868592 ((_ is Node!15558) (left!42807 (left!42807 (left!42807 xs!286)))))))

(declare-fun e!3159174 () Bool)

(assert (=> d!1630454 (= (inv!77523 (left!42807 (left!42807 (left!42807 xs!286)))) e!3159174)))

(declare-fun b!5061549 () Bool)

(assert (=> b!5061549 (= e!3159174 (inv!77526 (left!42807 (left!42807 (left!42807 xs!286)))))))

(declare-fun b!5061550 () Bool)

(declare-fun e!3159175 () Bool)

(assert (=> b!5061550 (= e!3159174 e!3159175)))

(declare-fun res!2155227 () Bool)

(assert (=> b!5061550 (= res!2155227 (not ((_ is Leaf!25842) (left!42807 (left!42807 (left!42807 xs!286))))))))

(assert (=> b!5061550 (=> res!2155227 e!3159175)))

(declare-fun b!5061551 () Bool)

(assert (=> b!5061551 (= e!3159175 (inv!77527 (left!42807 (left!42807 (left!42807 xs!286)))))))

(assert (= (and d!1630454 c!868592) b!5061549))

(assert (= (and d!1630454 (not c!868592)) b!5061550))

(assert (= (and b!5061550 (not res!2155227)) b!5061551))

(declare-fun m!6100126 () Bool)

(assert (=> b!5061549 m!6100126))

(declare-fun m!6100128 () Bool)

(assert (=> b!5061551 m!6100128))

(assert (=> b!5060752 d!1630454))

(declare-fun d!1630456 () Bool)

(declare-fun c!868593 () Bool)

(assert (=> d!1630456 (= c!868593 ((_ is Node!15558) (right!43137 (left!42807 (left!42807 xs!286)))))))

(declare-fun e!3159176 () Bool)

(assert (=> d!1630456 (= (inv!77523 (right!43137 (left!42807 (left!42807 xs!286)))) e!3159176)))

(declare-fun b!5061552 () Bool)

(assert (=> b!5061552 (= e!3159176 (inv!77526 (right!43137 (left!42807 (left!42807 xs!286)))))))

(declare-fun b!5061553 () Bool)

(declare-fun e!3159177 () Bool)

(assert (=> b!5061553 (= e!3159176 e!3159177)))

(declare-fun res!2155228 () Bool)

(assert (=> b!5061553 (= res!2155228 (not ((_ is Leaf!25842) (right!43137 (left!42807 (left!42807 xs!286))))))))

(assert (=> b!5061553 (=> res!2155228 e!3159177)))

(declare-fun b!5061554 () Bool)

(assert (=> b!5061554 (= e!3159177 (inv!77527 (right!43137 (left!42807 (left!42807 xs!286)))))))

(assert (= (and d!1630456 c!868593) b!5061552))

(assert (= (and d!1630456 (not c!868593)) b!5061553))

(assert (= (and b!5061553 (not res!2155228)) b!5061554))

(declare-fun m!6100130 () Bool)

(assert (=> b!5061552 m!6100130))

(declare-fun m!6100132 () Bool)

(assert (=> b!5061554 m!6100132))

(assert (=> b!5060752 d!1630456))

(declare-fun d!1630458 () Bool)

(declare-fun c!868594 () Bool)

(assert (=> d!1630458 (= c!868594 ((_ is Node!15558) (left!42807 (right!43137 (left!42807 ys!41)))))))

(declare-fun e!3159178 () Bool)

(assert (=> d!1630458 (= (inv!77523 (left!42807 (right!43137 (left!42807 ys!41)))) e!3159178)))

(declare-fun b!5061555 () Bool)

(assert (=> b!5061555 (= e!3159178 (inv!77526 (left!42807 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5061556 () Bool)

(declare-fun e!3159179 () Bool)

(assert (=> b!5061556 (= e!3159178 e!3159179)))

(declare-fun res!2155229 () Bool)

(assert (=> b!5061556 (= res!2155229 (not ((_ is Leaf!25842) (left!42807 (right!43137 (left!42807 ys!41))))))))

(assert (=> b!5061556 (=> res!2155229 e!3159179)))

(declare-fun b!5061557 () Bool)

(assert (=> b!5061557 (= e!3159179 (inv!77527 (left!42807 (right!43137 (left!42807 ys!41)))))))

(assert (= (and d!1630458 c!868594) b!5061555))

(assert (= (and d!1630458 (not c!868594)) b!5061556))

(assert (= (and b!5061556 (not res!2155229)) b!5061557))

(declare-fun m!6100134 () Bool)

(assert (=> b!5061555 m!6100134))

(declare-fun m!6100136 () Bool)

(assert (=> b!5061557 m!6100136))

(assert (=> b!5060761 d!1630458))

(declare-fun d!1630460 () Bool)

(declare-fun c!868595 () Bool)

(assert (=> d!1630460 (= c!868595 ((_ is Node!15558) (right!43137 (right!43137 (left!42807 ys!41)))))))

(declare-fun e!3159180 () Bool)

(assert (=> d!1630460 (= (inv!77523 (right!43137 (right!43137 (left!42807 ys!41)))) e!3159180)))

(declare-fun b!5061558 () Bool)

(assert (=> b!5061558 (= e!3159180 (inv!77526 (right!43137 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5061559 () Bool)

(declare-fun e!3159181 () Bool)

(assert (=> b!5061559 (= e!3159180 e!3159181)))

(declare-fun res!2155230 () Bool)

(assert (=> b!5061559 (= res!2155230 (not ((_ is Leaf!25842) (right!43137 (right!43137 (left!42807 ys!41))))))))

(assert (=> b!5061559 (=> res!2155230 e!3159181)))

(declare-fun b!5061560 () Bool)

(assert (=> b!5061560 (= e!3159181 (inv!77527 (right!43137 (right!43137 (left!42807 ys!41)))))))

(assert (= (and d!1630460 c!868595) b!5061558))

(assert (= (and d!1630460 (not c!868595)) b!5061559))

(assert (= (and b!5061559 (not res!2155230)) b!5061560))

(declare-fun m!6100138 () Bool)

(assert (=> b!5061558 m!6100138))

(declare-fun m!6100140 () Bool)

(assert (=> b!5061560 m!6100140))

(assert (=> b!5060761 d!1630460))

(declare-fun bm!352541 () Bool)

(declare-fun call!352547 () List!58552)

(assert (=> bm!352541 (= call!352547 (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (right!43137 xs!286))))))

(declare-fun b!5061561 () Bool)

(declare-fun e!3159182 () Bool)

(declare-fun call!352548 () List!58552)

(declare-fun call!352546 () List!58552)

(assert (=> b!5061561 (= e!3159182 (= call!352548 call!352546))))

(declare-fun bm!352542 () Bool)

(declare-fun call!352549 () List!58552)

(assert (=> bm!352542 (= call!352549 (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 ys!41)))))

(declare-fun b!5061562 () Bool)

(assert (=> b!5061562 (= e!3159182 (= call!352548 call!352546))))

(declare-fun lt!2088188 () Bool)

(assert (=> b!5061562 (= lt!2088188 (appendAssoc!298 (t!371255 (t!371255 (list!18977 (left!42807 xs!286)))) (list!18977 (right!43137 xs!286)) (list!18977 ys!41)))))

(declare-fun bm!352543 () Bool)

(assert (=> bm!352543 (= call!352548 (++!12779 call!352547 (list!18977 ys!41)))))

(declare-fun d!1630462 () Bool)

(assert (=> d!1630462 e!3159182))

(declare-fun c!868596 () Bool)

(assert (=> d!1630462 (= c!868596 ((_ is Nil!58428) (t!371255 (list!18977 (left!42807 xs!286)))))))

(assert (=> d!1630462 (= (appendAssoc!298 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (right!43137 xs!286)) (list!18977 ys!41)) true)))

(declare-fun bm!352544 () Bool)

(assert (=> bm!352544 (= call!352546 (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) call!352549))))

(assert (= (and d!1630462 c!868596) b!5061561))

(assert (= (and d!1630462 (not c!868596)) b!5061562))

(assert (= (or b!5061561 b!5061562) bm!352541))

(assert (= (or b!5061561 b!5061562) bm!352542))

(assert (= (or b!5061561 b!5061562) bm!352544))

(assert (= (or b!5061561 b!5061562) bm!352543))

(declare-fun m!6100142 () Bool)

(assert (=> bm!352544 m!6100142))

(assert (=> bm!352541 m!6097068))

(assert (=> bm!352541 m!6098122))

(assert (=> bm!352542 m!6097068))

(assert (=> bm!352542 m!6096986))

(assert (=> bm!352542 m!6097186))

(assert (=> bm!352543 m!6096986))

(declare-fun m!6100144 () Bool)

(assert (=> bm!352543 m!6100144))

(assert (=> b!5061562 m!6097068))

(assert (=> b!5061562 m!6096986))

(declare-fun m!6100146 () Bool)

(assert (=> b!5061562 m!6100146))

(assert (=> b!5060579 d!1630462))

(declare-fun d!1630464 () Bool)

(assert (=> d!1630464 (= (height!2135 (left!42807 (left!42807 lt!2087928))) (ite ((_ is Empty!15558) (left!42807 (left!42807 lt!2087928))) 0 (ite ((_ is Leaf!25842) (left!42807 (left!42807 lt!2087928))) 1 (cheight!15769 (left!42807 (left!42807 lt!2087928))))))))

(assert (=> b!5060718 d!1630464))

(declare-fun d!1630466 () Bool)

(assert (=> d!1630466 (= (height!2135 (right!43137 (left!42807 lt!2087928))) (ite ((_ is Empty!15558) (right!43137 (left!42807 lt!2087928))) 0 (ite ((_ is Leaf!25842) (right!43137 (left!42807 lt!2087928))) 1 (cheight!15769 (right!43137 (left!42807 lt!2087928))))))))

(assert (=> b!5060718 d!1630466))

(declare-fun b!5061563 () Bool)

(declare-fun e!3159183 () Bool)

(declare-fun e!3159189 () Bool)

(assert (=> b!5061563 (= e!3159183 e!3159189)))

(declare-fun res!2155235 () Bool)

(assert (=> b!5061563 (=> (not res!2155235) (not e!3159189))))

(assert (=> b!5061563 (= res!2155235 (appendAssoc!298 (list!18977 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (list!18977 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5061564 () Bool)

(declare-fun e!3159184 () Bool)

(declare-fun e!3159186 () Bool)

(assert (=> b!5061564 (= e!3159184 e!3159186)))

(declare-fun res!2155232 () Bool)

(assert (=> b!5061564 (=> (not res!2155232) (not e!3159186))))

(assert (=> b!5061564 (= res!2155232 (appendAssoc!298 (list!18977 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (list!18977 (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5061565 () Bool)

(declare-fun e!3159191 () Bool)

(declare-fun e!3159185 () Bool)

(assert (=> b!5061565 (= e!3159191 e!3159185)))

(declare-fun res!2155237 () Bool)

(assert (=> b!5061565 (=> res!2155237 e!3159185)))

(assert (=> b!5061565 (= res!2155237 (not ((_ is Node!15558) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5061566 () Bool)

(declare-fun e!3159187 () Bool)

(declare-fun e!3159190 () Bool)

(assert (=> b!5061566 (= e!3159187 e!3159190)))

(declare-fun res!2155234 () Bool)

(assert (=> b!5061566 (=> res!2155234 e!3159190)))

(assert (=> b!5061566 (= res!2155234 (not ((_ is Node!15558) (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun b!5061567 () Bool)

(assert (=> b!5061567 (= e!3159185 e!3159187)))

(declare-fun res!2155231 () Bool)

(assert (=> b!5061567 (=> (not res!2155231) (not e!3159187))))

(assert (=> b!5061567 (= res!2155231 (appendAssoc!298 (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (list!18977 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (list!18977 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun b!5061568 () Bool)

(declare-fun e!3159188 () Bool)

(assert (=> b!5061568 (= e!3159190 e!3159188)))

(declare-fun res!2155236 () Bool)

(assert (=> b!5061568 (=> (not res!2155236) (not e!3159188))))

(assert (=> b!5061568 (= res!2155236 (appendAssoc!298 (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (list!18977 (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))) (list!18977 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))))

(declare-fun b!5061569 () Bool)

(assert (=> b!5061569 (= e!3159188 (appendAssoc!298 (++!12779 (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (list!18977 (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))) (list!18977 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))) (list!18977 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun b!5061570 () Bool)

(assert (=> b!5061570 (= e!3159186 (appendAssoc!298 (list!18977 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (list!18977 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (++!12779 (list!18977 (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun d!1630468 () Bool)

(assert (=> d!1630468 e!3159191))

(declare-fun res!2155238 () Bool)

(assert (=> d!1630468 (=> (not res!2155238) (not e!3159191))))

(assert (=> d!1630468 (= res!2155238 e!3159183)))

(declare-fun res!2155239 () Bool)

(assert (=> d!1630468 (=> res!2155239 e!3159183)))

(assert (=> d!1630468 (= res!2155239 (not ((_ is Node!15558) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))))

(assert (=> d!1630468 (= (appendAssocInst!906 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) true)))

(declare-fun b!5061571 () Bool)

(assert (=> b!5061571 (= e!3159189 e!3159184)))

(declare-fun res!2155233 () Bool)

(assert (=> b!5061571 (=> res!2155233 e!3159184)))

(assert (=> b!5061571 (= res!2155233 (not ((_ is Node!15558) (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))))

(assert (= (and d!1630468 (not res!2155239)) b!5061563))

(assert (= (and b!5061563 res!2155235) b!5061571))

(assert (= (and b!5061571 (not res!2155233)) b!5061564))

(assert (= (and b!5061564 res!2155232) b!5061570))

(assert (= (and d!1630468 res!2155238) b!5061565))

(assert (= (and b!5061565 (not res!2155237)) b!5061567))

(assert (= (and b!5061567 res!2155231) b!5061566))

(assert (= (and b!5061566 (not res!2155234)) b!5061568))

(assert (= (and b!5061568 res!2155236) b!5061569))

(assert (=> b!5061568 m!6098402))

(declare-fun m!6100148 () Bool)

(assert (=> b!5061568 m!6100148))

(declare-fun m!6100150 () Bool)

(assert (=> b!5061568 m!6100150))

(assert (=> b!5061568 m!6098402))

(assert (=> b!5061568 m!6100148))

(assert (=> b!5061568 m!6100150))

(declare-fun m!6100152 () Bool)

(assert (=> b!5061568 m!6100152))

(declare-fun m!6100154 () Bool)

(assert (=> b!5061564 m!6100154))

(declare-fun m!6100156 () Bool)

(assert (=> b!5061564 m!6100156))

(assert (=> b!5061564 m!6098404))

(assert (=> b!5061564 m!6100154))

(assert (=> b!5061564 m!6100156))

(assert (=> b!5061564 m!6098404))

(declare-fun m!6100158 () Bool)

(assert (=> b!5061564 m!6100158))

(declare-fun m!6100160 () Bool)

(assert (=> b!5061570 m!6100160))

(assert (=> b!5061570 m!6100154))

(declare-fun m!6100162 () Bool)

(assert (=> b!5061570 m!6100162))

(declare-fun m!6100164 () Bool)

(assert (=> b!5061570 m!6100164))

(assert (=> b!5061570 m!6098404))

(assert (=> b!5061570 m!6100154))

(assert (=> b!5061570 m!6100160))

(assert (=> b!5061570 m!6100156))

(assert (=> b!5061570 m!6098404))

(assert (=> b!5061570 m!6100162))

(assert (=> b!5061570 m!6100156))

(assert (=> b!5061563 m!6100160))

(declare-fun m!6100166 () Bool)

(assert (=> b!5061563 m!6100166))

(assert (=> b!5061563 m!6098404))

(assert (=> b!5061563 m!6100160))

(assert (=> b!5061563 m!6100166))

(assert (=> b!5061563 m!6098404))

(declare-fun m!6100168 () Bool)

(assert (=> b!5061563 m!6100168))

(assert (=> b!5061569 m!6098402))

(declare-fun m!6100170 () Bool)

(assert (=> b!5061569 m!6100170))

(assert (=> b!5061569 m!6100150))

(declare-fun m!6100172 () Bool)

(assert (=> b!5061569 m!6100172))

(declare-fun m!6100174 () Bool)

(assert (=> b!5061569 m!6100174))

(assert (=> b!5061569 m!6100172))

(assert (=> b!5061569 m!6100150))

(assert (=> b!5061569 m!6100148))

(assert (=> b!5061569 m!6098402))

(assert (=> b!5061569 m!6100148))

(assert (=> b!5061569 m!6100170))

(assert (=> b!5061567 m!6098402))

(declare-fun m!6100176 () Bool)

(assert (=> b!5061567 m!6100176))

(assert (=> b!5061567 m!6100172))

(assert (=> b!5061567 m!6098402))

(assert (=> b!5061567 m!6100176))

(assert (=> b!5061567 m!6100172))

(declare-fun m!6100178 () Bool)

(assert (=> b!5061567 m!6100178))

(assert (=> d!1629790 d!1630468))

(declare-fun b!5061572 () Bool)

(declare-fun res!2155241 () Bool)

(declare-fun e!3159192 () Bool)

(assert (=> b!5061572 (=> (not res!2155241) (not e!3159192))))

(assert (=> b!5061572 (= res!2155241 (isBalanced!4420 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))))

(declare-fun b!5061573 () Bool)

(declare-fun res!2155242 () Bool)

(assert (=> b!5061573 (=> (not res!2155242) (not e!3159192))))

(assert (=> b!5061573 (= res!2155242 (isBalanced!4420 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))))

(declare-fun b!5061574 () Bool)

(declare-fun res!2155244 () Bool)

(assert (=> b!5061574 (=> (not res!2155244) (not e!3159192))))

(assert (=> b!5061574 (= res!2155244 (not (isEmpty!31619 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))))

(declare-fun b!5061575 () Bool)

(assert (=> b!5061575 (= e!3159192 (not (isEmpty!31619 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))))

(declare-fun b!5061576 () Bool)

(declare-fun res!2155245 () Bool)

(assert (=> b!5061576 (=> (not res!2155245) (not e!3159192))))

(assert (=> b!5061576 (= res!2155245 (<= (- (height!2135 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (height!2135 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) 1))))

(declare-fun b!5061577 () Bool)

(declare-fun e!3159193 () Bool)

(assert (=> b!5061577 (= e!3159193 e!3159192)))

(declare-fun res!2155243 () Bool)

(assert (=> b!5061577 (=> (not res!2155243) (not e!3159192))))

(assert (=> b!5061577 (= res!2155243 (<= (- 1) (- (height!2135 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (height!2135 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))))))

(declare-fun d!1630470 () Bool)

(declare-fun res!2155240 () Bool)

(assert (=> d!1630470 (=> res!2155240 e!3159193)))

(assert (=> d!1630470 (= res!2155240 (not ((_ is Node!15558) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))))

(assert (=> d!1630470 (= (isBalanced!4420 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) e!3159193)))

(assert (= (and d!1630470 (not res!2155240)) b!5061577))

(assert (= (and b!5061577 res!2155243) b!5061576))

(assert (= (and b!5061576 res!2155245) b!5061572))

(assert (= (and b!5061572 res!2155241) b!5061573))

(assert (= (and b!5061573 res!2155242) b!5061574))

(assert (= (and b!5061574 res!2155244) b!5061575))

(declare-fun m!6100180 () Bool)

(assert (=> b!5061574 m!6100180))

(declare-fun m!6100182 () Bool)

(assert (=> b!5061576 m!6100182))

(declare-fun m!6100184 () Bool)

(assert (=> b!5061576 m!6100184))

(declare-fun m!6100186 () Bool)

(assert (=> b!5061573 m!6100186))

(declare-fun m!6100188 () Bool)

(assert (=> b!5061575 m!6100188))

(declare-fun m!6100190 () Bool)

(assert (=> b!5061572 m!6100190))

(assert (=> b!5061577 m!6100182))

(assert (=> b!5061577 m!6100184))

(assert (=> d!1629790 d!1630470))

(declare-fun d!1630472 () Bool)

(declare-fun e!3159194 () Bool)

(assert (=> d!1630472 e!3159194))

(declare-fun res!2155247 () Bool)

(assert (=> d!1630472 (=> (not res!2155247) (not e!3159194))))

(declare-fun lt!2088189 () List!58552)

(assert (=> d!1630472 (= res!2155247 (= (content!10414 lt!2088189) ((_ map or) (content!10414 (t!371255 (list!18977 (right!43137 xs!286)))) (content!10414 (list!18977 ys!41)))))))

(declare-fun e!3159195 () List!58552)

(assert (=> d!1630472 (= lt!2088189 e!3159195)))

(declare-fun c!868597 () Bool)

(assert (=> d!1630472 (= c!868597 ((_ is Nil!58428) (t!371255 (list!18977 (right!43137 xs!286)))))))

(assert (=> d!1630472 (= (++!12779 (t!371255 (list!18977 (right!43137 xs!286))) (list!18977 ys!41)) lt!2088189)))

(declare-fun b!5061581 () Bool)

(assert (=> b!5061581 (= e!3159194 (or (not (= (list!18977 ys!41) Nil!58428)) (= lt!2088189 (t!371255 (list!18977 (right!43137 xs!286))))))))

(declare-fun b!5061580 () Bool)

(declare-fun res!2155246 () Bool)

(assert (=> b!5061580 (=> (not res!2155246) (not e!3159194))))

(assert (=> b!5061580 (= res!2155246 (= (size!39065 lt!2088189) (+ (size!39065 (t!371255 (list!18977 (right!43137 xs!286)))) (size!39065 (list!18977 ys!41)))))))

(declare-fun b!5061578 () Bool)

(assert (=> b!5061578 (= e!3159195 (list!18977 ys!41))))

(declare-fun b!5061579 () Bool)

(assert (=> b!5061579 (= e!3159195 (Cons!58428 (h!64876 (t!371255 (list!18977 (right!43137 xs!286)))) (++!12779 (t!371255 (t!371255 (list!18977 (right!43137 xs!286)))) (list!18977 ys!41))))))

(assert (= (and d!1630472 c!868597) b!5061578))

(assert (= (and d!1630472 (not c!868597)) b!5061579))

(assert (= (and d!1630472 res!2155247) b!5061580))

(assert (= (and b!5061580 res!2155246) b!5061581))

(declare-fun m!6100192 () Bool)

(assert (=> d!1630472 m!6100192))

(assert (=> d!1630472 m!6100054))

(assert (=> d!1630472 m!6096986))

(assert (=> d!1630472 m!6097340))

(declare-fun m!6100194 () Bool)

(assert (=> b!5061580 m!6100194))

(declare-fun m!6100196 () Bool)

(assert (=> b!5061580 m!6100196))

(assert (=> b!5061580 m!6096986))

(assert (=> b!5061580 m!6097346))

(assert (=> b!5061579 m!6096986))

(declare-fun m!6100198 () Bool)

(assert (=> b!5061579 m!6100198))

(assert (=> b!5060743 d!1630472))

(assert (=> b!5060610 d!1630408))

(assert (=> b!5060610 d!1630410))

(declare-fun d!1630474 () Bool)

(assert (=> d!1630474 (= (list!18979 (xs!18896 lt!2087939)) (innerList!15646 (xs!18896 lt!2087939)))))

(assert (=> b!5060582 d!1630474))

(declare-fun d!1630476 () Bool)

(assert (=> d!1630476 (= (isEmpty!31621 (list!18977 (left!42807 lt!2087928))) ((_ is Nil!58428) (list!18977 (left!42807 lt!2087928))))))

(assert (=> d!1629784 d!1630476))

(assert (=> d!1629784 d!1629738))

(declare-fun d!1630478 () Bool)

(declare-fun lt!2088190 () Int)

(assert (=> d!1630478 (= lt!2088190 (size!39065 (list!18977 (left!42807 lt!2087928))))))

(assert (=> d!1630478 (= lt!2088190 (ite ((_ is Empty!15558) (left!42807 lt!2087928)) 0 (ite ((_ is Leaf!25842) (left!42807 lt!2087928)) (csize!31347 (left!42807 lt!2087928)) (csize!31346 (left!42807 lt!2087928)))))))

(assert (=> d!1630478 (= (size!39064 (left!42807 lt!2087928)) lt!2088190)))

(declare-fun bs!1189654 () Bool)

(assert (= bs!1189654 d!1630478))

(assert (=> bs!1189654 m!6097330))

(assert (=> bs!1189654 m!6097330))

(assert (=> bs!1189654 m!6098214))

(assert (=> d!1629784 d!1630478))

(assert (=> b!5060180 d!1629758))

(assert (=> b!5060180 d!1629760))

(declare-fun d!1630480 () Bool)

(declare-fun e!3159196 () Bool)

(assert (=> d!1630480 e!3159196))

(declare-fun res!2155249 () Bool)

(assert (=> d!1630480 (=> (not res!2155249) (not e!3159196))))

(declare-fun lt!2088191 () List!58552)

(assert (=> d!1630480 (= res!2155249 (= (content!10414 lt!2088191) ((_ map or) (content!10414 (list!18977 (right!43137 (left!42807 ys!41)))) (content!10414 (list!18977 (right!43137 ys!41))))))))

(declare-fun e!3159197 () List!58552)

(assert (=> d!1630480 (= lt!2088191 e!3159197)))

(declare-fun c!868598 () Bool)

(assert (=> d!1630480 (= c!868598 ((_ is Nil!58428) (list!18977 (right!43137 (left!42807 ys!41)))))))

(assert (=> d!1630480 (= (++!12779 (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))) lt!2088191)))

(declare-fun b!5061585 () Bool)

(assert (=> b!5061585 (= e!3159196 (or (not (= (list!18977 (right!43137 ys!41)) Nil!58428)) (= lt!2088191 (list!18977 (right!43137 (left!42807 ys!41))))))))

(declare-fun b!5061584 () Bool)

(declare-fun res!2155248 () Bool)

(assert (=> b!5061584 (=> (not res!2155248) (not e!3159196))))

(assert (=> b!5061584 (= res!2155248 (= (size!39065 lt!2088191) (+ (size!39065 (list!18977 (right!43137 (left!42807 ys!41)))) (size!39065 (list!18977 (right!43137 ys!41))))))))

(declare-fun b!5061582 () Bool)

(assert (=> b!5061582 (= e!3159197 (list!18977 (right!43137 ys!41)))))

(declare-fun b!5061583 () Bool)

(assert (=> b!5061583 (= e!3159197 (Cons!58428 (h!64876 (list!18977 (right!43137 (left!42807 ys!41)))) (++!12779 (t!371255 (list!18977 (right!43137 (left!42807 ys!41)))) (list!18977 (right!43137 ys!41)))))))

(assert (= (and d!1630480 c!868598) b!5061582))

(assert (= (and d!1630480 (not c!868598)) b!5061583))

(assert (= (and d!1630480 res!2155249) b!5061584))

(assert (= (and b!5061584 res!2155248) b!5061585))

(declare-fun m!6100200 () Bool)

(assert (=> d!1630480 m!6100200))

(assert (=> d!1630480 m!6097052))

(assert (=> d!1630480 m!6100104))

(assert (=> d!1630480 m!6097074))

(assert (=> d!1630480 m!6098240))

(declare-fun m!6100202 () Bool)

(assert (=> b!5061584 m!6100202))

(assert (=> b!5061584 m!6097052))

(assert (=> b!5061584 m!6100108))

(assert (=> b!5061584 m!6097074))

(assert (=> b!5061584 m!6098246))

(assert (=> b!5061583 m!6097074))

(declare-fun m!6100204 () Bool)

(assert (=> b!5061583 m!6100204))

(assert (=> bm!352438 d!1630480))

(assert (=> b!5060609 d!1630408))

(assert (=> b!5060609 d!1630410))

(declare-fun d!1630482 () Bool)

(declare-fun e!3159198 () Bool)

(assert (=> d!1630482 e!3159198))

(declare-fun res!2155251 () Bool)

(assert (=> d!1630482 (=> (not res!2155251) (not e!3159198))))

(declare-fun lt!2088192 () List!58552)

(assert (=> d!1630482 (= res!2155251 (= (content!10414 lt!2088192) ((_ map or) (content!10414 call!352431) (content!10414 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))))

(declare-fun e!3159199 () List!58552)

(assert (=> d!1630482 (= lt!2088192 e!3159199)))

(declare-fun c!868599 () Bool)

(assert (=> d!1630482 (= c!868599 ((_ is Nil!58428) call!352431))))

(assert (=> d!1630482 (= (++!12779 call!352431 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))) lt!2088192)))

(declare-fun b!5061589 () Bool)

(assert (=> b!5061589 (= e!3159198 (or (not (= (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)) Nil!58428)) (= lt!2088192 call!352431)))))

(declare-fun b!5061588 () Bool)

(declare-fun res!2155250 () Bool)

(assert (=> b!5061588 (=> (not res!2155250) (not e!3159198))))

(assert (=> b!5061588 (= res!2155250 (= (size!39065 lt!2088192) (+ (size!39065 call!352431) (size!39065 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))))

(declare-fun b!5061586 () Bool)

(assert (=> b!5061586 (= e!3159199 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)))))

(declare-fun b!5061587 () Bool)

(assert (=> b!5061587 (= e!3159199 (Cons!58428 (h!64876 call!352431) (++!12779 (t!371255 call!352431) (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)))))))

(assert (= (and d!1630482 c!868599) b!5061586))

(assert (= (and d!1630482 (not c!868599)) b!5061587))

(assert (= (and d!1630482 res!2155251) b!5061588))

(assert (= (and b!5061588 res!2155250) b!5061589))

(declare-fun m!6100206 () Bool)

(assert (=> d!1630482 m!6100206))

(declare-fun m!6100208 () Bool)

(assert (=> d!1630482 m!6100208))

(assert (=> d!1630482 m!6097064))

(declare-fun m!6100210 () Bool)

(assert (=> d!1630482 m!6100210))

(declare-fun m!6100212 () Bool)

(assert (=> b!5061588 m!6100212))

(declare-fun m!6100214 () Bool)

(assert (=> b!5061588 m!6100214))

(assert (=> b!5061588 m!6097064))

(declare-fun m!6100216 () Bool)

(assert (=> b!5061588 m!6100216))

(assert (=> b!5061587 m!6097064))

(declare-fun m!6100218 () Bool)

(assert (=> b!5061587 m!6100218))

(assert (=> bm!352427 d!1630482))

(assert (=> b!5060659 d!1630400))

(assert (=> b!5060659 d!1630402))

(declare-fun b!5061590 () Bool)

(declare-fun res!2155253 () Bool)

(declare-fun e!3159200 () Bool)

(assert (=> b!5061590 (=> (not res!2155253) (not e!3159200))))

(assert (=> b!5061590 (= res!2155253 (isBalanced!4420 (left!42807 lt!2088045)))))

(declare-fun b!5061591 () Bool)

(declare-fun res!2155254 () Bool)

(assert (=> b!5061591 (=> (not res!2155254) (not e!3159200))))

(assert (=> b!5061591 (= res!2155254 (isBalanced!4420 (right!43137 lt!2088045)))))

(declare-fun b!5061592 () Bool)

(declare-fun res!2155256 () Bool)

(assert (=> b!5061592 (=> (not res!2155256) (not e!3159200))))

(assert (=> b!5061592 (= res!2155256 (not (isEmpty!31619 (left!42807 lt!2088045))))))

(declare-fun b!5061593 () Bool)

(assert (=> b!5061593 (= e!3159200 (not (isEmpty!31619 (right!43137 lt!2088045))))))

(declare-fun b!5061594 () Bool)

(declare-fun res!2155257 () Bool)

(assert (=> b!5061594 (=> (not res!2155257) (not e!3159200))))

(assert (=> b!5061594 (= res!2155257 (<= (- (height!2135 (left!42807 lt!2088045)) (height!2135 (right!43137 lt!2088045))) 1))))

(declare-fun b!5061595 () Bool)

(declare-fun e!3159201 () Bool)

(assert (=> b!5061595 (= e!3159201 e!3159200)))

(declare-fun res!2155255 () Bool)

(assert (=> b!5061595 (=> (not res!2155255) (not e!3159200))))

(assert (=> b!5061595 (= res!2155255 (<= (- 1) (- (height!2135 (left!42807 lt!2088045)) (height!2135 (right!43137 lt!2088045)))))))

(declare-fun d!1630484 () Bool)

(declare-fun res!2155252 () Bool)

(assert (=> d!1630484 (=> res!2155252 e!3159201)))

(assert (=> d!1630484 (= res!2155252 (not ((_ is Node!15558) lt!2088045)))))

(assert (=> d!1630484 (= (isBalanced!4420 lt!2088045) e!3159201)))

(assert (= (and d!1630484 (not res!2155252)) b!5061595))

(assert (= (and b!5061595 res!2155255) b!5061594))

(assert (= (and b!5061594 res!2155257) b!5061590))

(assert (= (and b!5061590 res!2155253) b!5061591))

(assert (= (and b!5061591 res!2155254) b!5061592))

(assert (= (and b!5061592 res!2155256) b!5061593))

(declare-fun m!6100220 () Bool)

(assert (=> b!5061592 m!6100220))

(declare-fun m!6100222 () Bool)

(assert (=> b!5061594 m!6100222))

(declare-fun m!6100224 () Bool)

(assert (=> b!5061594 m!6100224))

(declare-fun m!6100226 () Bool)

(assert (=> b!5061591 m!6100226))

(declare-fun m!6100228 () Bool)

(assert (=> b!5061593 m!6100228))

(declare-fun m!6100230 () Bool)

(assert (=> b!5061590 m!6100230))

(assert (=> b!5061595 m!6100222))

(assert (=> b!5061595 m!6100224))

(assert (=> b!5060701 d!1630484))

(declare-fun d!1630486 () Bool)

(declare-fun c!868600 () Bool)

(assert (=> d!1630486 (= c!868600 ((_ is Nil!58428) lt!2088034))))

(declare-fun e!3159202 () (InoxSet T!105076))

(assert (=> d!1630486 (= (content!10414 lt!2088034) e!3159202)))

(declare-fun b!5061596 () Bool)

(assert (=> b!5061596 (= e!3159202 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061597 () Bool)

(assert (=> b!5061597 (= e!3159202 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 lt!2088034) true) (content!10414 (t!371255 lt!2088034))))))

(assert (= (and d!1630486 c!868600) b!5061596))

(assert (= (and d!1630486 (not c!868600)) b!5061597))

(declare-fun m!6100232 () Bool)

(assert (=> b!5061597 m!6100232))

(declare-fun m!6100234 () Bool)

(assert (=> b!5061597 m!6100234))

(assert (=> d!1629742 d!1630486))

(declare-fun d!1630488 () Bool)

(declare-fun c!868601 () Bool)

(assert (=> d!1630488 (= c!868601 ((_ is Nil!58428) (list!18977 (left!42807 ys!41))))))

(declare-fun e!3159203 () (InoxSet T!105076))

(assert (=> d!1630488 (= (content!10414 (list!18977 (left!42807 ys!41))) e!3159203)))

(declare-fun b!5061598 () Bool)

(assert (=> b!5061598 (= e!3159203 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061599 () Bool)

(assert (=> b!5061599 (= e!3159203 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 (left!42807 ys!41))) true) (content!10414 (t!371255 (list!18977 (left!42807 ys!41))))))))

(assert (= (and d!1630488 c!868601) b!5061598))

(assert (= (and d!1630488 (not c!868601)) b!5061599))

(declare-fun m!6100236 () Bool)

(assert (=> b!5061599 m!6100236))

(declare-fun m!6100238 () Bool)

(assert (=> b!5061599 m!6100238))

(assert (=> d!1629742 d!1630488))

(declare-fun d!1630490 () Bool)

(declare-fun c!868602 () Bool)

(assert (=> d!1630490 (= c!868602 ((_ is Nil!58428) (list!18977 (right!43137 ys!41))))))

(declare-fun e!3159204 () (InoxSet T!105076))

(assert (=> d!1630490 (= (content!10414 (list!18977 (right!43137 ys!41))) e!3159204)))

(declare-fun b!5061600 () Bool)

(assert (=> b!5061600 (= e!3159204 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061601 () Bool)

(assert (=> b!5061601 (= e!3159204 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 (right!43137 ys!41))) true) (content!10414 (t!371255 (list!18977 (right!43137 ys!41))))))))

(assert (= (and d!1630490 c!868602) b!5061600))

(assert (= (and d!1630490 (not c!868602)) b!5061601))

(declare-fun m!6100240 () Bool)

(assert (=> b!5061601 m!6100240))

(declare-fun m!6100242 () Bool)

(assert (=> b!5061601 m!6100242))

(assert (=> d!1629742 d!1630490))

(declare-fun d!1630492 () Bool)

(declare-fun res!2155258 () Bool)

(declare-fun e!3159205 () Bool)

(assert (=> d!1630492 (=> (not res!2155258) (not e!3159205))))

(assert (=> d!1630492 (= res!2155258 (= (csize!31346 (right!43137 (right!43137 ys!41))) (+ (size!39064 (left!42807 (right!43137 (right!43137 ys!41)))) (size!39064 (right!43137 (right!43137 (right!43137 ys!41)))))))))

(assert (=> d!1630492 (= (inv!77526 (right!43137 (right!43137 ys!41))) e!3159205)))

(declare-fun b!5061602 () Bool)

(declare-fun res!2155259 () Bool)

(assert (=> b!5061602 (=> (not res!2155259) (not e!3159205))))

(assert (=> b!5061602 (= res!2155259 (and (not (= (left!42807 (right!43137 (right!43137 ys!41))) Empty!15558)) (not (= (right!43137 (right!43137 (right!43137 ys!41))) Empty!15558))))))

(declare-fun b!5061603 () Bool)

(declare-fun res!2155260 () Bool)

(assert (=> b!5061603 (=> (not res!2155260) (not e!3159205))))

(assert (=> b!5061603 (= res!2155260 (= (cheight!15769 (right!43137 (right!43137 ys!41))) (+ (max!0 (height!2135 (left!42807 (right!43137 (right!43137 ys!41)))) (height!2135 (right!43137 (right!43137 (right!43137 ys!41))))) 1)))))

(declare-fun b!5061604 () Bool)

(assert (=> b!5061604 (= e!3159205 (<= 0 (cheight!15769 (right!43137 (right!43137 ys!41)))))))

(assert (= (and d!1630492 res!2155258) b!5061602))

(assert (= (and b!5061602 res!2155259) b!5061603))

(assert (= (and b!5061603 res!2155260) b!5061604))

(declare-fun m!6100244 () Bool)

(assert (=> d!1630492 m!6100244))

(declare-fun m!6100246 () Bool)

(assert (=> d!1630492 m!6100246))

(declare-fun m!6100248 () Bool)

(assert (=> b!5061603 m!6100248))

(declare-fun m!6100250 () Bool)

(assert (=> b!5061603 m!6100250))

(assert (=> b!5061603 m!6100248))

(assert (=> b!5061603 m!6100250))

(declare-fun m!6100252 () Bool)

(assert (=> b!5061603 m!6100252))

(assert (=> b!5060552 d!1630492))

(declare-fun d!1630494 () Bool)

(declare-fun res!2155261 () Bool)

(declare-fun e!3159206 () Bool)

(assert (=> d!1630494 (=> (not res!2155261) (not e!3159206))))

(assert (=> d!1630494 (= res!2155261 (<= (size!39065 (list!18979 (xs!18896 (right!43137 (left!42807 xs!286))))) 512))))

(assert (=> d!1630494 (= (inv!77527 (right!43137 (left!42807 xs!286))) e!3159206)))

(declare-fun b!5061605 () Bool)

(declare-fun res!2155262 () Bool)

(assert (=> b!5061605 (=> (not res!2155262) (not e!3159206))))

(assert (=> b!5061605 (= res!2155262 (= (csize!31347 (right!43137 (left!42807 xs!286))) (size!39065 (list!18979 (xs!18896 (right!43137 (left!42807 xs!286)))))))))

(declare-fun b!5061606 () Bool)

(assert (=> b!5061606 (= e!3159206 (and (> (csize!31347 (right!43137 (left!42807 xs!286))) 0) (<= (csize!31347 (right!43137 (left!42807 xs!286))) 512)))))

(assert (= (and d!1630494 res!2155261) b!5061605))

(assert (= (and b!5061605 res!2155262) b!5061606))

(declare-fun m!6100254 () Bool)

(assert (=> d!1630494 m!6100254))

(assert (=> d!1630494 m!6100254))

(declare-fun m!6100256 () Bool)

(assert (=> d!1630494 m!6100256))

(assert (=> b!5061605 m!6100254))

(assert (=> b!5061605 m!6100254))

(assert (=> b!5061605 m!6100256))

(assert (=> b!5060726 d!1630494))

(declare-fun d!1630496 () Bool)

(declare-fun lt!2088193 () Int)

(assert (=> d!1630496 (>= lt!2088193 0)))

(declare-fun e!3159207 () Int)

(assert (=> d!1630496 (= lt!2088193 e!3159207)))

(declare-fun c!868603 () Bool)

(assert (=> d!1630496 (= c!868603 ((_ is Nil!58428) (innerList!15646 (xs!18896 (right!43137 xs!286)))))))

(assert (=> d!1630496 (= (size!39065 (innerList!15646 (xs!18896 (right!43137 xs!286)))) lt!2088193)))

(declare-fun b!5061607 () Bool)

(assert (=> b!5061607 (= e!3159207 0)))

(declare-fun b!5061608 () Bool)

(assert (=> b!5061608 (= e!3159207 (+ 1 (size!39065 (t!371255 (innerList!15646 (xs!18896 (right!43137 xs!286)))))))))

(assert (= (and d!1630496 c!868603) b!5061607))

(assert (= (and d!1630496 (not c!868603)) b!5061608))

(declare-fun m!6100258 () Bool)

(assert (=> b!5061608 m!6100258))

(assert (=> d!1629734 d!1630496))

(assert (=> bm!352430 d!1630442))

(declare-fun d!1630498 () Bool)

(assert (=> d!1630498 (= (max!0 (height!2135 (left!42807 (left!42807 ys!41))) (height!2135 (right!43137 (left!42807 ys!41)))) (ite (< (height!2135 (left!42807 (left!42807 ys!41))) (height!2135 (right!43137 (left!42807 ys!41)))) (height!2135 (right!43137 (left!42807 ys!41))) (height!2135 (left!42807 (left!42807 ys!41)))))))

(assert (=> b!5060491 d!1630498))

(declare-fun d!1630500 () Bool)

(assert (=> d!1630500 (= (height!2135 (left!42807 (left!42807 ys!41))) (ite ((_ is Empty!15558) (left!42807 (left!42807 ys!41))) 0 (ite ((_ is Leaf!25842) (left!42807 (left!42807 ys!41))) 1 (cheight!15769 (left!42807 (left!42807 ys!41))))))))

(assert (=> b!5060491 d!1630500))

(declare-fun d!1630502 () Bool)

(assert (=> d!1630502 (= (height!2135 (right!43137 (left!42807 ys!41))) (ite ((_ is Empty!15558) (right!43137 (left!42807 ys!41))) 0 (ite ((_ is Leaf!25842) (right!43137 (left!42807 ys!41))) 1 (cheight!15769 (right!43137 (left!42807 ys!41))))))))

(assert (=> b!5060491 d!1630502))

(declare-fun b!5061609 () Bool)

(declare-fun res!2155264 () Bool)

(declare-fun e!3159208 () Bool)

(assert (=> b!5061609 (=> (not res!2155264) (not e!3159208))))

(assert (=> b!5061609 (= res!2155264 (isBalanced!4420 (left!42807 (left!42807 (right!43137 lt!2087928)))))))

(declare-fun b!5061610 () Bool)

(declare-fun res!2155265 () Bool)

(assert (=> b!5061610 (=> (not res!2155265) (not e!3159208))))

(assert (=> b!5061610 (= res!2155265 (isBalanced!4420 (right!43137 (left!42807 (right!43137 lt!2087928)))))))

(declare-fun b!5061611 () Bool)

(declare-fun res!2155267 () Bool)

(assert (=> b!5061611 (=> (not res!2155267) (not e!3159208))))

(assert (=> b!5061611 (= res!2155267 (not (isEmpty!31619 (left!42807 (left!42807 (right!43137 lt!2087928))))))))

(declare-fun b!5061612 () Bool)

(assert (=> b!5061612 (= e!3159208 (not (isEmpty!31619 (right!43137 (left!42807 (right!43137 lt!2087928))))))))

(declare-fun b!5061613 () Bool)

(declare-fun res!2155268 () Bool)

(assert (=> b!5061613 (=> (not res!2155268) (not e!3159208))))

(assert (=> b!5061613 (= res!2155268 (<= (- (height!2135 (left!42807 (left!42807 (right!43137 lt!2087928)))) (height!2135 (right!43137 (left!42807 (right!43137 lt!2087928))))) 1))))

(declare-fun b!5061614 () Bool)

(declare-fun e!3159209 () Bool)

(assert (=> b!5061614 (= e!3159209 e!3159208)))

(declare-fun res!2155266 () Bool)

(assert (=> b!5061614 (=> (not res!2155266) (not e!3159208))))

(assert (=> b!5061614 (= res!2155266 (<= (- 1) (- (height!2135 (left!42807 (left!42807 (right!43137 lt!2087928)))) (height!2135 (right!43137 (left!42807 (right!43137 lt!2087928)))))))))

(declare-fun d!1630504 () Bool)

(declare-fun res!2155263 () Bool)

(assert (=> d!1630504 (=> res!2155263 e!3159209)))

(assert (=> d!1630504 (= res!2155263 (not ((_ is Node!15558) (left!42807 (right!43137 lt!2087928)))))))

(assert (=> d!1630504 (= (isBalanced!4420 (left!42807 (right!43137 lt!2087928))) e!3159209)))

(assert (= (and d!1630504 (not res!2155263)) b!5061614))

(assert (= (and b!5061614 res!2155266) b!5061613))

(assert (= (and b!5061613 res!2155268) b!5061609))

(assert (= (and b!5061609 res!2155264) b!5061610))

(assert (= (and b!5061610 res!2155265) b!5061611))

(assert (= (and b!5061611 res!2155267) b!5061612))

(declare-fun m!6100260 () Bool)

(assert (=> b!5061611 m!6100260))

(declare-fun m!6100262 () Bool)

(assert (=> b!5061613 m!6100262))

(declare-fun m!6100264 () Bool)

(assert (=> b!5061613 m!6100264))

(declare-fun m!6100266 () Bool)

(assert (=> b!5061610 m!6100266))

(declare-fun m!6100268 () Bool)

(assert (=> b!5061612 m!6100268))

(declare-fun m!6100270 () Bool)

(assert (=> b!5061609 m!6100270))

(assert (=> b!5061614 m!6100262))

(assert (=> b!5061614 m!6100264))

(assert (=> b!5060555 d!1630504))

(declare-fun d!1630506 () Bool)

(declare-fun lt!2088194 () Bool)

(assert (=> d!1630506 (= lt!2088194 (isEmpty!31621 (list!18977 (right!43137 lt!2087966))))))

(assert (=> d!1630506 (= lt!2088194 (= (size!39064 (right!43137 lt!2087966)) 0))))

(assert (=> d!1630506 (= (isEmpty!31619 (right!43137 lt!2087966)) lt!2088194)))

(declare-fun bs!1189655 () Bool)

(assert (= bs!1189655 d!1630506))

(assert (=> bs!1189655 m!6098454))

(assert (=> bs!1189655 m!6098454))

(declare-fun m!6100272 () Bool)

(assert (=> bs!1189655 m!6100272))

(declare-fun m!6100274 () Bool)

(assert (=> bs!1189655 m!6100274))

(assert (=> b!5060536 d!1630506))

(declare-fun d!1630508 () Bool)

(assert (=> d!1630508 (= (inv!77522 (xs!18896 (right!43137 (right!43137 ys!41)))) (<= (size!39065 (innerList!15646 (xs!18896 (right!43137 (right!43137 ys!41))))) 2147483647))))

(declare-fun bs!1189656 () Bool)

(assert (= bs!1189656 d!1630508))

(declare-fun m!6100276 () Bool)

(assert (=> bs!1189656 m!6100276))

(assert (=> b!5060777 d!1630508))

(declare-fun d!1630510 () Bool)

(assert (=> d!1630510 (= (list!18979 (xs!18896 (left!42807 ys!41))) (innerList!15646 (xs!18896 (left!42807 ys!41))))))

(assert (=> b!5060638 d!1630510))

(assert (=> bm!352462 d!1629666))

(declare-fun d!1630512 () Bool)

(assert (=> d!1630512 (= (inv!77522 (xs!18896 (left!42807 (right!43137 xs!286)))) (<= (size!39065 (innerList!15646 (xs!18896 (left!42807 (right!43137 xs!286))))) 2147483647))))

(declare-fun bs!1189657 () Bool)

(assert (= bs!1189657 d!1630512))

(declare-fun m!6100278 () Bool)

(assert (=> bs!1189657 m!6100278))

(assert (=> b!5060768 d!1630512))

(declare-fun d!1630514 () Bool)

(declare-fun lt!2088195 () Int)

(assert (=> d!1630514 (>= lt!2088195 0)))

(declare-fun e!3159210 () Int)

(assert (=> d!1630514 (= lt!2088195 e!3159210)))

(declare-fun c!868604 () Bool)

(assert (=> d!1630514 (= c!868604 ((_ is Nil!58428) (list!18979 (xs!18896 (right!43137 xs!286)))))))

(assert (=> d!1630514 (= (size!39065 (list!18979 (xs!18896 (right!43137 xs!286)))) lt!2088195)))

(declare-fun b!5061615 () Bool)

(assert (=> b!5061615 (= e!3159210 0)))

(declare-fun b!5061616 () Bool)

(assert (=> b!5061616 (= e!3159210 (+ 1 (size!39065 (t!371255 (list!18979 (xs!18896 (right!43137 xs!286)))))))))

(assert (= (and d!1630514 c!868604) b!5061615))

(assert (= (and d!1630514 (not c!868604)) b!5061616))

(declare-fun m!6100280 () Bool)

(assert (=> b!5061616 m!6100280))

(assert (=> d!1629732 d!1630514))

(declare-fun d!1630516 () Bool)

(assert (=> d!1630516 (= (list!18979 (xs!18896 (right!43137 xs!286))) (innerList!15646 (xs!18896 (right!43137 xs!286))))))

(assert (=> d!1629732 d!1630516))

(assert (=> b!5060717 d!1630464))

(assert (=> b!5060717 d!1630466))

(assert (=> bm!352434 d!1629816))

(declare-fun d!1630518 () Bool)

(declare-fun res!2155269 () Bool)

(declare-fun e!3159211 () Bool)

(assert (=> d!1630518 (=> (not res!2155269) (not e!3159211))))

(assert (=> d!1630518 (= res!2155269 (= (csize!31346 (left!42807 (left!42807 ys!41))) (+ (size!39064 (left!42807 (left!42807 (left!42807 ys!41)))) (size!39064 (right!43137 (left!42807 (left!42807 ys!41)))))))))

(assert (=> d!1630518 (= (inv!77526 (left!42807 (left!42807 ys!41))) e!3159211)))

(declare-fun b!5061617 () Bool)

(declare-fun res!2155270 () Bool)

(assert (=> b!5061617 (=> (not res!2155270) (not e!3159211))))

(assert (=> b!5061617 (= res!2155270 (and (not (= (left!42807 (left!42807 (left!42807 ys!41))) Empty!15558)) (not (= (right!43137 (left!42807 (left!42807 ys!41))) Empty!15558))))))

(declare-fun b!5061618 () Bool)

(declare-fun res!2155271 () Bool)

(assert (=> b!5061618 (=> (not res!2155271) (not e!3159211))))

(assert (=> b!5061618 (= res!2155271 (= (cheight!15769 (left!42807 (left!42807 ys!41))) (+ (max!0 (height!2135 (left!42807 (left!42807 (left!42807 ys!41)))) (height!2135 (right!43137 (left!42807 (left!42807 ys!41))))) 1)))))

(declare-fun b!5061619 () Bool)

(assert (=> b!5061619 (= e!3159211 (<= 0 (cheight!15769 (left!42807 (left!42807 ys!41)))))))

(assert (= (and d!1630518 res!2155269) b!5061617))

(assert (= (and b!5061617 res!2155270) b!5061618))

(assert (= (and b!5061618 res!2155271) b!5061619))

(declare-fun m!6100282 () Bool)

(assert (=> d!1630518 m!6100282))

(declare-fun m!6100284 () Bool)

(assert (=> d!1630518 m!6100284))

(declare-fun m!6100286 () Bool)

(assert (=> b!5061618 m!6100286))

(declare-fun m!6100288 () Bool)

(assert (=> b!5061618 m!6100288))

(assert (=> b!5061618 m!6100286))

(assert (=> b!5061618 m!6100288))

(declare-fun m!6100290 () Bool)

(assert (=> b!5061618 m!6100290))

(assert (=> b!5060649 d!1630518))

(declare-fun d!1630520 () Bool)

(declare-fun e!3159212 () Bool)

(assert (=> d!1630520 e!3159212))

(declare-fun res!2155273 () Bool)

(assert (=> d!1630520 (=> (not res!2155273) (not e!3159212))))

(declare-fun lt!2088196 () List!58552)

(assert (=> d!1630520 (= res!2155273 (= (content!10414 lt!2088196) ((_ map or) (content!10414 (list!18977 (left!42807 lt!2087966))) (content!10414 (list!18977 (right!43137 lt!2087966))))))))

(declare-fun e!3159213 () List!58552)

(assert (=> d!1630520 (= lt!2088196 e!3159213)))

(declare-fun c!868605 () Bool)

(assert (=> d!1630520 (= c!868605 ((_ is Nil!58428) (list!18977 (left!42807 lt!2087966))))))

(assert (=> d!1630520 (= (++!12779 (list!18977 (left!42807 lt!2087966)) (list!18977 (right!43137 lt!2087966))) lt!2088196)))

(declare-fun b!5061623 () Bool)

(assert (=> b!5061623 (= e!3159212 (or (not (= (list!18977 (right!43137 lt!2087966)) Nil!58428)) (= lt!2088196 (list!18977 (left!42807 lt!2087966)))))))

(declare-fun b!5061622 () Bool)

(declare-fun res!2155272 () Bool)

(assert (=> b!5061622 (=> (not res!2155272) (not e!3159212))))

(assert (=> b!5061622 (= res!2155272 (= (size!39065 lt!2088196) (+ (size!39065 (list!18977 (left!42807 lt!2087966))) (size!39065 (list!18977 (right!43137 lt!2087966))))))))

(declare-fun b!5061620 () Bool)

(assert (=> b!5061620 (= e!3159213 (list!18977 (right!43137 lt!2087966)))))

(declare-fun b!5061621 () Bool)

(assert (=> b!5061621 (= e!3159213 (Cons!58428 (h!64876 (list!18977 (left!42807 lt!2087966))) (++!12779 (t!371255 (list!18977 (left!42807 lt!2087966))) (list!18977 (right!43137 lt!2087966)))))))

(assert (= (and d!1630520 c!868605) b!5061620))

(assert (= (and d!1630520 (not c!868605)) b!5061621))

(assert (= (and d!1630520 res!2155273) b!5061622))

(assert (= (and b!5061622 res!2155272) b!5061623))

(declare-fun m!6100292 () Bool)

(assert (=> d!1630520 m!6100292))

(assert (=> d!1630520 m!6098452))

(declare-fun m!6100294 () Bool)

(assert (=> d!1630520 m!6100294))

(assert (=> d!1630520 m!6098454))

(declare-fun m!6100296 () Bool)

(assert (=> d!1630520 m!6100296))

(declare-fun m!6100298 () Bool)

(assert (=> b!5061622 m!6100298))

(assert (=> b!5061622 m!6098452))

(declare-fun m!6100300 () Bool)

(assert (=> b!5061622 m!6100300))

(assert (=> b!5061622 m!6098454))

(declare-fun m!6100302 () Bool)

(assert (=> b!5061622 m!6100302))

(assert (=> b!5061621 m!6098454))

(declare-fun m!6100304 () Bool)

(assert (=> b!5061621 m!6100304))

(assert (=> b!5060741 d!1630520))

(declare-fun b!5061625 () Bool)

(declare-fun e!3159214 () List!58552)

(declare-fun e!3159215 () List!58552)

(assert (=> b!5061625 (= e!3159214 e!3159215)))

(declare-fun c!868607 () Bool)

(assert (=> b!5061625 (= c!868607 ((_ is Leaf!25842) (left!42807 lt!2087966)))))

(declare-fun b!5061626 () Bool)

(assert (=> b!5061626 (= e!3159215 (list!18979 (xs!18896 (left!42807 lt!2087966))))))

(declare-fun b!5061624 () Bool)

(assert (=> b!5061624 (= e!3159214 Nil!58428)))

(declare-fun b!5061627 () Bool)

(assert (=> b!5061627 (= e!3159215 (++!12779 (list!18977 (left!42807 (left!42807 lt!2087966))) (list!18977 (right!43137 (left!42807 lt!2087966)))))))

(declare-fun d!1630522 () Bool)

(declare-fun c!868606 () Bool)

(assert (=> d!1630522 (= c!868606 ((_ is Empty!15558) (left!42807 lt!2087966)))))

(assert (=> d!1630522 (= (list!18977 (left!42807 lt!2087966)) e!3159214)))

(assert (= (and d!1630522 c!868606) b!5061624))

(assert (= (and d!1630522 (not c!868606)) b!5061625))

(assert (= (and b!5061625 c!868607) b!5061626))

(assert (= (and b!5061625 (not c!868607)) b!5061627))

(declare-fun m!6100306 () Bool)

(assert (=> b!5061626 m!6100306))

(declare-fun m!6100308 () Bool)

(assert (=> b!5061627 m!6100308))

(declare-fun m!6100310 () Bool)

(assert (=> b!5061627 m!6100310))

(assert (=> b!5061627 m!6100308))

(assert (=> b!5061627 m!6100310))

(declare-fun m!6100312 () Bool)

(assert (=> b!5061627 m!6100312))

(assert (=> b!5060741 d!1630522))

(declare-fun b!5061629 () Bool)

(declare-fun e!3159216 () List!58552)

(declare-fun e!3159217 () List!58552)

(assert (=> b!5061629 (= e!3159216 e!3159217)))

(declare-fun c!868609 () Bool)

(assert (=> b!5061629 (= c!868609 ((_ is Leaf!25842) (right!43137 lt!2087966)))))

(declare-fun b!5061630 () Bool)

(assert (=> b!5061630 (= e!3159217 (list!18979 (xs!18896 (right!43137 lt!2087966))))))

(declare-fun b!5061628 () Bool)

(assert (=> b!5061628 (= e!3159216 Nil!58428)))

(declare-fun b!5061631 () Bool)

(assert (=> b!5061631 (= e!3159217 (++!12779 (list!18977 (left!42807 (right!43137 lt!2087966))) (list!18977 (right!43137 (right!43137 lt!2087966)))))))

(declare-fun d!1630524 () Bool)

(declare-fun c!868608 () Bool)

(assert (=> d!1630524 (= c!868608 ((_ is Empty!15558) (right!43137 lt!2087966)))))

(assert (=> d!1630524 (= (list!18977 (right!43137 lt!2087966)) e!3159216)))

(assert (= (and d!1630524 c!868608) b!5061628))

(assert (= (and d!1630524 (not c!868608)) b!5061629))

(assert (= (and b!5061629 c!868609) b!5061630))

(assert (= (and b!5061629 (not c!868609)) b!5061631))

(declare-fun m!6100314 () Bool)

(assert (=> b!5061630 m!6100314))

(declare-fun m!6100316 () Bool)

(assert (=> b!5061631 m!6100316))

(declare-fun m!6100318 () Bool)

(assert (=> b!5061631 m!6100318))

(assert (=> b!5061631 m!6100316))

(assert (=> b!5061631 m!6100318))

(declare-fun m!6100320 () Bool)

(assert (=> b!5061631 m!6100320))

(assert (=> b!5060741 d!1630524))

(declare-fun d!1630526 () Bool)

(declare-fun e!3159218 () Bool)

(assert (=> d!1630526 e!3159218))

(declare-fun res!2155275 () Bool)

(assert (=> d!1630526 (=> (not res!2155275) (not e!3159218))))

(declare-fun lt!2088197 () List!58552)

(assert (=> d!1630526 (= res!2155275 (= (content!10414 lt!2088197) ((_ map or) (content!10414 (t!371255 (list!18977 (left!42807 ys!41)))) (content!10414 (list!18977 (right!43137 ys!41))))))))

(declare-fun e!3159219 () List!58552)

(assert (=> d!1630526 (= lt!2088197 e!3159219)))

(declare-fun c!868610 () Bool)

(assert (=> d!1630526 (= c!868610 ((_ is Nil!58428) (t!371255 (list!18977 (left!42807 ys!41)))))))

(assert (=> d!1630526 (= (++!12779 (t!371255 (list!18977 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))) lt!2088197)))

(declare-fun b!5061635 () Bool)

(assert (=> b!5061635 (= e!3159218 (or (not (= (list!18977 (right!43137 ys!41)) Nil!58428)) (= lt!2088197 (t!371255 (list!18977 (left!42807 ys!41))))))))

(declare-fun b!5061634 () Bool)

(declare-fun res!2155274 () Bool)

(assert (=> b!5061634 (=> (not res!2155274) (not e!3159218))))

(assert (=> b!5061634 (= res!2155274 (= (size!39065 lt!2088197) (+ (size!39065 (t!371255 (list!18977 (left!42807 ys!41)))) (size!39065 (list!18977 (right!43137 ys!41))))))))

(declare-fun b!5061632 () Bool)

(assert (=> b!5061632 (= e!3159219 (list!18977 (right!43137 ys!41)))))

(declare-fun b!5061633 () Bool)

(assert (=> b!5061633 (= e!3159219 (Cons!58428 (h!64876 (t!371255 (list!18977 (left!42807 ys!41)))) (++!12779 (t!371255 (t!371255 (list!18977 (left!42807 ys!41)))) (list!18977 (right!43137 ys!41)))))))

(assert (= (and d!1630526 c!868610) b!5061632))

(assert (= (and d!1630526 (not c!868610)) b!5061633))

(assert (= (and d!1630526 res!2155275) b!5061634))

(assert (= (and b!5061634 res!2155274) b!5061635))

(declare-fun m!6100322 () Bool)

(assert (=> d!1630526 m!6100322))

(assert (=> d!1630526 m!6100238))

(assert (=> d!1630526 m!6097074))

(assert (=> d!1630526 m!6098240))

(declare-fun m!6100324 () Bool)

(assert (=> b!5061634 m!6100324))

(assert (=> b!5061634 m!6100122))

(assert (=> b!5061634 m!6097074))

(assert (=> b!5061634 m!6098246))

(assert (=> b!5061633 m!6097074))

(declare-fun m!6100326 () Bool)

(assert (=> b!5061633 m!6100326))

(assert (=> b!5060633 d!1630526))

(assert (=> b!5060176 d!1629820))

(assert (=> b!5060176 d!1629822))

(declare-fun d!1630528 () Bool)

(assert (=> d!1630528 (= (max!0 (height!2135 (left!42807 (left!42807 xs!286))) (height!2135 (right!43137 (left!42807 xs!286)))) (ite (< (height!2135 (left!42807 (left!42807 xs!286))) (height!2135 (right!43137 (left!42807 xs!286)))) (height!2135 (right!43137 (left!42807 xs!286))) (height!2135 (left!42807 (left!42807 xs!286)))))))

(assert (=> b!5060730 d!1630528))

(declare-fun d!1630530 () Bool)

(assert (=> d!1630530 (= (height!2135 (left!42807 (left!42807 xs!286))) (ite ((_ is Empty!15558) (left!42807 (left!42807 xs!286))) 0 (ite ((_ is Leaf!25842) (left!42807 (left!42807 xs!286))) 1 (cheight!15769 (left!42807 (left!42807 xs!286))))))))

(assert (=> b!5060730 d!1630530))

(declare-fun d!1630532 () Bool)

(assert (=> d!1630532 (= (height!2135 (right!43137 (left!42807 xs!286))) (ite ((_ is Empty!15558) (right!43137 (left!42807 xs!286))) 0 (ite ((_ is Leaf!25842) (right!43137 (left!42807 xs!286))) 1 (cheight!15769 (right!43137 (left!42807 xs!286))))))))

(assert (=> b!5060730 d!1630532))

(declare-fun d!1630534 () Bool)

(declare-fun e!3159220 () Bool)

(assert (=> d!1630534 e!3159220))

(declare-fun res!2155277 () Bool)

(assert (=> d!1630534 (=> (not res!2155277) (not e!3159220))))

(declare-fun lt!2088198 () List!58552)

(assert (=> d!1630534 (= res!2155277 (= (content!10414 lt!2088198) ((_ map or) (content!10414 (list!18977 (left!42807 (right!43137 xs!286)))) (content!10414 (list!18977 (right!43137 (right!43137 xs!286)))))))))

(declare-fun e!3159221 () List!58552)

(assert (=> d!1630534 (= lt!2088198 e!3159221)))

(declare-fun c!868611 () Bool)

(assert (=> d!1630534 (= c!868611 ((_ is Nil!58428) (list!18977 (left!42807 (right!43137 xs!286)))))))

(assert (=> d!1630534 (= (++!12779 (list!18977 (left!42807 (right!43137 xs!286))) (list!18977 (right!43137 (right!43137 xs!286)))) lt!2088198)))

(declare-fun b!5061639 () Bool)

(assert (=> b!5061639 (= e!3159220 (or (not (= (list!18977 (right!43137 (right!43137 xs!286))) Nil!58428)) (= lt!2088198 (list!18977 (left!42807 (right!43137 xs!286))))))))

(declare-fun b!5061638 () Bool)

(declare-fun res!2155276 () Bool)

(assert (=> b!5061638 (=> (not res!2155276) (not e!3159220))))

(assert (=> b!5061638 (= res!2155276 (= (size!39065 lt!2088198) (+ (size!39065 (list!18977 (left!42807 (right!43137 xs!286)))) (size!39065 (list!18977 (right!43137 (right!43137 xs!286)))))))))

(declare-fun b!5061636 () Bool)

(assert (=> b!5061636 (= e!3159221 (list!18977 (right!43137 (right!43137 xs!286))))))

(declare-fun b!5061637 () Bool)

(assert (=> b!5061637 (= e!3159221 (Cons!58428 (h!64876 (list!18977 (left!42807 (right!43137 xs!286)))) (++!12779 (t!371255 (list!18977 (left!42807 (right!43137 xs!286)))) (list!18977 (right!43137 (right!43137 xs!286))))))))

(assert (= (and d!1630534 c!868611) b!5061636))

(assert (= (and d!1630534 (not c!868611)) b!5061637))

(assert (= (and d!1630534 res!2155277) b!5061638))

(assert (= (and b!5061638 res!2155276) b!5061639))

(declare-fun m!6100328 () Bool)

(assert (=> d!1630534 m!6100328))

(assert (=> d!1630534 m!6097056))

(declare-fun m!6100330 () Bool)

(assert (=> d!1630534 m!6100330))

(assert (=> d!1630534 m!6097058))

(assert (=> d!1630534 m!6098026))

(declare-fun m!6100332 () Bool)

(assert (=> b!5061638 m!6100332))

(assert (=> b!5061638 m!6097056))

(declare-fun m!6100334 () Bool)

(assert (=> b!5061638 m!6100334))

(assert (=> b!5061638 m!6097058))

(assert (=> b!5061638 m!6098030))

(assert (=> b!5061637 m!6097058))

(assert (=> b!5061637 m!6100114))

(assert (=> b!5060577 d!1630534))

(assert (=> b!5060577 d!1629664))

(assert (=> b!5060577 d!1629660))

(declare-fun d!1630536 () Bool)

(declare-fun lt!2088199 () Bool)

(assert (=> d!1630536 (= lt!2088199 (isEmpty!31621 (list!18977 (right!43137 (right!43137 xs!286)))))))

(assert (=> d!1630536 (= lt!2088199 (= (size!39064 (right!43137 (right!43137 xs!286))) 0))))

(assert (=> d!1630536 (= (isEmpty!31619 (right!43137 (right!43137 xs!286))) lt!2088199)))

(declare-fun bs!1189658 () Bool)

(assert (= bs!1189658 d!1630536))

(assert (=> bs!1189658 m!6097058))

(assert (=> bs!1189658 m!6097058))

(declare-fun m!6100336 () Bool)

(assert (=> bs!1189658 m!6100336))

(assert (=> bs!1189658 m!6098260))

(assert (=> b!5060608 d!1630536))

(assert (=> b!5060504 d!1630500))

(assert (=> b!5060504 d!1630502))

(declare-fun d!1630538 () Bool)

(assert (=> d!1630538 (= (isEmpty!31621 (list!18977 (right!43137 ys!41))) ((_ is Nil!58428) (list!18977 (right!43137 ys!41))))))

(assert (=> d!1629826 d!1630538))

(assert (=> d!1629826 d!1629746))

(declare-fun d!1630540 () Bool)

(declare-fun lt!2088200 () Int)

(assert (=> d!1630540 (= lt!2088200 (size!39065 (list!18977 (right!43137 ys!41))))))

(assert (=> d!1630540 (= lt!2088200 (ite ((_ is Empty!15558) (right!43137 ys!41)) 0 (ite ((_ is Leaf!25842) (right!43137 ys!41)) (csize!31347 (right!43137 ys!41)) (csize!31346 (right!43137 ys!41)))))))

(assert (=> d!1630540 (= (size!39064 (right!43137 ys!41)) lt!2088200)))

(declare-fun bs!1189659 () Bool)

(assert (= bs!1189659 d!1630540))

(assert (=> bs!1189659 m!6097074))

(assert (=> bs!1189659 m!6097074))

(assert (=> bs!1189659 m!6098246))

(assert (=> d!1629826 d!1630540))

(declare-fun bm!352545 () Bool)

(declare-fun call!352551 () List!58552)

(assert (=> bm!352545 (= call!352551 (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5061640 () Bool)

(declare-fun e!3159222 () Bool)

(declare-fun call!352552 () List!58552)

(declare-fun call!352550 () List!58552)

(assert (=> b!5061640 (= e!3159222 (= call!352552 call!352550))))

(declare-fun bm!352546 () Bool)

(declare-fun call!352553 () List!58552)

(assert (=> bm!352546 (= call!352553 (++!12779 (list!18977 (left!42807 (right!43137 xs!286))) (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))

(declare-fun b!5061641 () Bool)

(assert (=> b!5061641 (= e!3159222 (= call!352552 call!352550))))

(declare-fun lt!2088201 () Bool)

(assert (=> b!5061641 (= lt!2088201 (appendAssoc!298 (t!371255 (t!371255 (list!18977 (left!42807 xs!286)))) (list!18977 (left!42807 (right!43137 xs!286))) (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))

(declare-fun bm!352547 () Bool)

(assert (=> bm!352547 (= call!352552 (++!12779 call!352551 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))

(declare-fun d!1630542 () Bool)

(assert (=> d!1630542 e!3159222))

(declare-fun c!868612 () Bool)

(assert (=> d!1630542 (= c!868612 ((_ is Nil!58428) (t!371255 (list!18977 (left!42807 xs!286)))))))

(assert (=> d!1630542 (= (appendAssoc!298 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (left!42807 (right!43137 xs!286))) (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))) true)))

(declare-fun bm!352548 () Bool)

(assert (=> bm!352548 (= call!352550 (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) call!352553))))

(assert (= (and d!1630542 c!868612) b!5061640))

(assert (= (and d!1630542 (not c!868612)) b!5061641))

(assert (= (or b!5061640 b!5061641) bm!352545))

(assert (= (or b!5061640 b!5061641) bm!352546))

(assert (= (or b!5061640 b!5061641) bm!352548))

(assert (= (or b!5061640 b!5061641) bm!352547))

(declare-fun m!6100338 () Bool)

(assert (=> bm!352548 m!6100338))

(assert (=> bm!352545 m!6097056))

(declare-fun m!6100340 () Bool)

(assert (=> bm!352545 m!6100340))

(assert (=> bm!352546 m!6097056))

(assert (=> bm!352546 m!6097064))

(assert (=> bm!352546 m!6098010))

(assert (=> bm!352547 m!6097064))

(declare-fun m!6100342 () Bool)

(assert (=> bm!352547 m!6100342))

(assert (=> b!5061641 m!6097056))

(assert (=> b!5061641 m!6097064))

(declare-fun m!6100344 () Bool)

(assert (=> b!5061641 m!6100344))

(assert (=> b!5060524 d!1630542))

(declare-fun d!1630544 () Bool)

(declare-fun lt!2088202 () Int)

(assert (=> d!1630544 (= lt!2088202 (size!39065 (list!18977 (left!42807 (right!43137 ys!41)))))))

(assert (=> d!1630544 (= lt!2088202 (ite ((_ is Empty!15558) (left!42807 (right!43137 ys!41))) 0 (ite ((_ is Leaf!25842) (left!42807 (right!43137 ys!41))) (csize!31347 (left!42807 (right!43137 ys!41))) (csize!31346 (left!42807 (right!43137 ys!41))))))))

(assert (=> d!1630544 (= (size!39064 (left!42807 (right!43137 ys!41))) lt!2088202)))

(declare-fun bs!1189660 () Bool)

(assert (= bs!1189660 d!1630544))

(assert (=> bs!1189660 m!6098252))

(assert (=> bs!1189660 m!6098252))

(declare-fun m!6100346 () Bool)

(assert (=> bs!1189660 m!6100346))

(assert (=> d!1629698 d!1630544))

(declare-fun d!1630546 () Bool)

(declare-fun lt!2088203 () Int)

(assert (=> d!1630546 (= lt!2088203 (size!39065 (list!18977 (right!43137 (right!43137 ys!41)))))))

(assert (=> d!1630546 (= lt!2088203 (ite ((_ is Empty!15558) (right!43137 (right!43137 ys!41))) 0 (ite ((_ is Leaf!25842) (right!43137 (right!43137 ys!41))) (csize!31347 (right!43137 (right!43137 ys!41))) (csize!31346 (right!43137 (right!43137 ys!41))))))))

(assert (=> d!1630546 (= (size!39064 (right!43137 (right!43137 ys!41))) lt!2088203)))

(declare-fun bs!1189661 () Bool)

(assert (= bs!1189661 d!1630546))

(assert (=> bs!1189661 m!6098254))

(assert (=> bs!1189661 m!6098254))

(declare-fun m!6100348 () Bool)

(assert (=> bs!1189661 m!6100348))

(assert (=> d!1629698 d!1630546))

(declare-fun d!1630548 () Bool)

(declare-fun lt!2088204 () Bool)

(assert (=> d!1630548 (= lt!2088204 (isEmpty!31621 (list!18977 (right!43137 (right!43137 ys!41)))))))

(assert (=> d!1630548 (= lt!2088204 (= (size!39064 (right!43137 (right!43137 ys!41))) 0))))

(assert (=> d!1630548 (= (isEmpty!31619 (right!43137 (right!43137 ys!41))) lt!2088204)))

(declare-fun bs!1189662 () Bool)

(assert (= bs!1189662 d!1630548))

(assert (=> bs!1189662 m!6098254))

(assert (=> bs!1189662 m!6098254))

(declare-fun m!6100350 () Bool)

(assert (=> bs!1189662 m!6100350))

(assert (=> bs!1189662 m!6098104))

(assert (=> b!5060658 d!1630548))

(assert (=> b!5060510 d!1630530))

(assert (=> b!5060510 d!1630532))

(declare-fun d!1630550 () Bool)

(declare-fun res!2155278 () Bool)

(declare-fun e!3159223 () Bool)

(assert (=> d!1630550 (=> (not res!2155278) (not e!3159223))))

(assert (=> d!1630550 (= res!2155278 (<= (size!39065 (list!18979 (xs!18896 (right!43137 (right!43137 xs!286))))) 512))))

(assert (=> d!1630550 (= (inv!77527 (right!43137 (right!43137 xs!286))) e!3159223)))

(declare-fun b!5061642 () Bool)

(declare-fun res!2155279 () Bool)

(assert (=> b!5061642 (=> (not res!2155279) (not e!3159223))))

(assert (=> b!5061642 (= res!2155279 (= (csize!31347 (right!43137 (right!43137 xs!286))) (size!39065 (list!18979 (xs!18896 (right!43137 (right!43137 xs!286)))))))))

(declare-fun b!5061643 () Bool)

(assert (=> b!5061643 (= e!3159223 (and (> (csize!31347 (right!43137 (right!43137 xs!286))) 0) (<= (csize!31347 (right!43137 (right!43137 xs!286))) 512)))))

(assert (= (and d!1630550 res!2155278) b!5061642))

(assert (= (and b!5061642 res!2155279) b!5061643))

(assert (=> d!1630550 m!6097998))

(assert (=> d!1630550 m!6097998))

(declare-fun m!6100352 () Bool)

(assert (=> d!1630550 m!6100352))

(assert (=> b!5061642 m!6097998))

(assert (=> b!5061642 m!6097998))

(assert (=> b!5061642 m!6100352))

(assert (=> b!5060751 d!1630550))

(declare-fun d!1630552 () Bool)

(declare-fun e!3159224 () Bool)

(assert (=> d!1630552 e!3159224))

(declare-fun res!2155281 () Bool)

(assert (=> d!1630552 (=> (not res!2155281) (not e!3159224))))

(declare-fun lt!2088205 () List!58552)

(assert (=> d!1630552 (= res!2155281 (= (content!10414 lt!2088205) ((_ map or) (content!10414 (list!18977 xs!286)) (content!10414 call!352449))))))

(declare-fun e!3159225 () List!58552)

(assert (=> d!1630552 (= lt!2088205 e!3159225)))

(declare-fun c!868613 () Bool)

(assert (=> d!1630552 (= c!868613 ((_ is Nil!58428) (list!18977 xs!286)))))

(assert (=> d!1630552 (= (++!12779 (list!18977 xs!286) call!352449) lt!2088205)))

(declare-fun b!5061647 () Bool)

(assert (=> b!5061647 (= e!3159224 (or (not (= call!352449 Nil!58428)) (= lt!2088205 (list!18977 xs!286))))))

(declare-fun b!5061646 () Bool)

(declare-fun res!2155280 () Bool)

(assert (=> b!5061646 (=> (not res!2155280) (not e!3159224))))

(assert (=> b!5061646 (= res!2155280 (= (size!39065 lt!2088205) (+ (size!39065 (list!18977 xs!286)) (size!39065 call!352449))))))

(declare-fun b!5061644 () Bool)

(assert (=> b!5061644 (= e!3159225 call!352449)))

(declare-fun b!5061645 () Bool)

(assert (=> b!5061645 (= e!3159225 (Cons!58428 (h!64876 (list!18977 xs!286)) (++!12779 (t!371255 (list!18977 xs!286)) call!352449)))))

(assert (= (and d!1630552 c!868613) b!5061644))

(assert (= (and d!1630552 (not c!868613)) b!5061645))

(assert (= (and d!1630552 res!2155281) b!5061646))

(assert (= (and b!5061646 res!2155280) b!5061647))

(declare-fun m!6100354 () Bool)

(assert (=> d!1630552 m!6100354))

(assert (=> d!1630552 m!6096984))

(assert (=> d!1630552 m!6097338))

(declare-fun m!6100356 () Bool)

(assert (=> d!1630552 m!6100356))

(declare-fun m!6100358 () Bool)

(assert (=> b!5061646 m!6100358))

(assert (=> b!5061646 m!6096984))

(assert (=> b!5061646 m!6097344))

(declare-fun m!6100360 () Bool)

(assert (=> b!5061646 m!6100360))

(declare-fun m!6100362 () Bool)

(assert (=> b!5061645 m!6100362))

(assert (=> bm!352444 d!1630552))

(declare-fun d!1630554 () Bool)

(declare-fun c!868614 () Bool)

(assert (=> d!1630554 (= c!868614 ((_ is Node!15558) (left!42807 (left!42807 (right!43137 xs!286)))))))

(declare-fun e!3159226 () Bool)

(assert (=> d!1630554 (= (inv!77523 (left!42807 (left!42807 (right!43137 xs!286)))) e!3159226)))

(declare-fun b!5061648 () Bool)

(assert (=> b!5061648 (= e!3159226 (inv!77526 (left!42807 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5061649 () Bool)

(declare-fun e!3159227 () Bool)

(assert (=> b!5061649 (= e!3159226 e!3159227)))

(declare-fun res!2155282 () Bool)

(assert (=> b!5061649 (= res!2155282 (not ((_ is Leaf!25842) (left!42807 (left!42807 (right!43137 xs!286))))))))

(assert (=> b!5061649 (=> res!2155282 e!3159227)))

(declare-fun b!5061650 () Bool)

(assert (=> b!5061650 (= e!3159227 (inv!77527 (left!42807 (left!42807 (right!43137 xs!286)))))))

(assert (= (and d!1630554 c!868614) b!5061648))

(assert (= (and d!1630554 (not c!868614)) b!5061649))

(assert (= (and b!5061649 (not res!2155282)) b!5061650))

(declare-fun m!6100364 () Bool)

(assert (=> b!5061648 m!6100364))

(declare-fun m!6100366 () Bool)

(assert (=> b!5061650 m!6100366))

(assert (=> b!5060767 d!1630554))

(declare-fun d!1630556 () Bool)

(declare-fun c!868615 () Bool)

(assert (=> d!1630556 (= c!868615 ((_ is Node!15558) (right!43137 (left!42807 (right!43137 xs!286)))))))

(declare-fun e!3159228 () Bool)

(assert (=> d!1630556 (= (inv!77523 (right!43137 (left!42807 (right!43137 xs!286)))) e!3159228)))

(declare-fun b!5061651 () Bool)

(assert (=> b!5061651 (= e!3159228 (inv!77526 (right!43137 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5061652 () Bool)

(declare-fun e!3159229 () Bool)

(assert (=> b!5061652 (= e!3159228 e!3159229)))

(declare-fun res!2155283 () Bool)

(assert (=> b!5061652 (= res!2155283 (not ((_ is Leaf!25842) (right!43137 (left!42807 (right!43137 xs!286))))))))

(assert (=> b!5061652 (=> res!2155283 e!3159229)))

(declare-fun b!5061653 () Bool)

(assert (=> b!5061653 (= e!3159229 (inv!77527 (right!43137 (left!42807 (right!43137 xs!286)))))))

(assert (= (and d!1630556 c!868615) b!5061651))

(assert (= (and d!1630556 (not c!868615)) b!5061652))

(assert (= (and b!5061652 (not res!2155283)) b!5061653))

(declare-fun m!6100368 () Bool)

(assert (=> b!5061651 m!6100368))

(declare-fun m!6100370 () Bool)

(assert (=> b!5061653 m!6100370))

(assert (=> b!5060767 d!1630556))

(declare-fun d!1630558 () Bool)

(declare-fun e!3159230 () Bool)

(assert (=> d!1630558 e!3159230))

(declare-fun res!2155285 () Bool)

(assert (=> d!1630558 (=> (not res!2155285) (not e!3159230))))

(declare-fun lt!2088206 () List!58552)

(assert (=> d!1630558 (= res!2155285 (= (content!10414 lt!2088206) ((_ map or) (content!10414 (list!18977 (left!42807 (right!43137 lt!2087928)))) (content!10414 (list!18977 (right!43137 (right!43137 lt!2087928)))))))))

(declare-fun e!3159231 () List!58552)

(assert (=> d!1630558 (= lt!2088206 e!3159231)))

(declare-fun c!868616 () Bool)

(assert (=> d!1630558 (= c!868616 ((_ is Nil!58428) (list!18977 (left!42807 (right!43137 lt!2087928)))))))

(assert (=> d!1630558 (= (++!12779 (list!18977 (left!42807 (right!43137 lt!2087928))) (list!18977 (right!43137 (right!43137 lt!2087928)))) lt!2088206)))

(declare-fun b!5061657 () Bool)

(assert (=> b!5061657 (= e!3159230 (or (not (= (list!18977 (right!43137 (right!43137 lt!2087928))) Nil!58428)) (= lt!2088206 (list!18977 (left!42807 (right!43137 lt!2087928))))))))

(declare-fun b!5061656 () Bool)

(declare-fun res!2155284 () Bool)

(assert (=> b!5061656 (=> (not res!2155284) (not e!3159230))))

(assert (=> b!5061656 (= res!2155284 (= (size!39065 lt!2088206) (+ (size!39065 (list!18977 (left!42807 (right!43137 lt!2087928)))) (size!39065 (list!18977 (right!43137 (right!43137 lt!2087928)))))))))

(declare-fun b!5061654 () Bool)

(assert (=> b!5061654 (= e!3159231 (list!18977 (right!43137 (right!43137 lt!2087928))))))

(declare-fun b!5061655 () Bool)

(assert (=> b!5061655 (= e!3159231 (Cons!58428 (h!64876 (list!18977 (left!42807 (right!43137 lt!2087928)))) (++!12779 (t!371255 (list!18977 (left!42807 (right!43137 lt!2087928)))) (list!18977 (right!43137 (right!43137 lt!2087928))))))))

(assert (= (and d!1630558 c!868616) b!5061654))

(assert (= (and d!1630558 (not c!868616)) b!5061655))

(assert (= (and d!1630558 res!2155285) b!5061656))

(assert (= (and b!5061656 res!2155284) b!5061657))

(declare-fun m!6100372 () Bool)

(assert (=> d!1630558 m!6100372))

(assert (=> d!1630558 m!6098230))

(declare-fun m!6100374 () Bool)

(assert (=> d!1630558 m!6100374))

(assert (=> d!1630558 m!6098232))

(declare-fun m!6100376 () Bool)

(assert (=> d!1630558 m!6100376))

(declare-fun m!6100378 () Bool)

(assert (=> b!5061656 m!6100378))

(assert (=> b!5061656 m!6098230))

(declare-fun m!6100380 () Bool)

(assert (=> b!5061656 m!6100380))

(assert (=> b!5061656 m!6098232))

(declare-fun m!6100382 () Bool)

(assert (=> b!5061656 m!6100382))

(assert (=> b!5061655 m!6098232))

(declare-fun m!6100384 () Bool)

(assert (=> b!5061655 m!6100384))

(assert (=> b!5060631 d!1630558))

(declare-fun b!5061659 () Bool)

(declare-fun e!3159232 () List!58552)

(declare-fun e!3159233 () List!58552)

(assert (=> b!5061659 (= e!3159232 e!3159233)))

(declare-fun c!868618 () Bool)

(assert (=> b!5061659 (= c!868618 ((_ is Leaf!25842) (left!42807 (right!43137 lt!2087928))))))

(declare-fun b!5061660 () Bool)

(assert (=> b!5061660 (= e!3159233 (list!18979 (xs!18896 (left!42807 (right!43137 lt!2087928)))))))

(declare-fun b!5061658 () Bool)

(assert (=> b!5061658 (= e!3159232 Nil!58428)))

(declare-fun b!5061661 () Bool)

(assert (=> b!5061661 (= e!3159233 (++!12779 (list!18977 (left!42807 (left!42807 (right!43137 lt!2087928)))) (list!18977 (right!43137 (left!42807 (right!43137 lt!2087928))))))))

(declare-fun d!1630560 () Bool)

(declare-fun c!868617 () Bool)

(assert (=> d!1630560 (= c!868617 ((_ is Empty!15558) (left!42807 (right!43137 lt!2087928))))))

(assert (=> d!1630560 (= (list!18977 (left!42807 (right!43137 lt!2087928))) e!3159232)))

(assert (= (and d!1630560 c!868617) b!5061658))

(assert (= (and d!1630560 (not c!868617)) b!5061659))

(assert (= (and b!5061659 c!868618) b!5061660))

(assert (= (and b!5061659 (not c!868618)) b!5061661))

(declare-fun m!6100386 () Bool)

(assert (=> b!5061660 m!6100386))

(declare-fun m!6100388 () Bool)

(assert (=> b!5061661 m!6100388))

(declare-fun m!6100390 () Bool)

(assert (=> b!5061661 m!6100390))

(assert (=> b!5061661 m!6100388))

(assert (=> b!5061661 m!6100390))

(declare-fun m!6100392 () Bool)

(assert (=> b!5061661 m!6100392))

(assert (=> b!5060631 d!1630560))

(declare-fun b!5061663 () Bool)

(declare-fun e!3159234 () List!58552)

(declare-fun e!3159235 () List!58552)

(assert (=> b!5061663 (= e!3159234 e!3159235)))

(declare-fun c!868620 () Bool)

(assert (=> b!5061663 (= c!868620 ((_ is Leaf!25842) (right!43137 (right!43137 lt!2087928))))))

(declare-fun b!5061664 () Bool)

(assert (=> b!5061664 (= e!3159235 (list!18979 (xs!18896 (right!43137 (right!43137 lt!2087928)))))))

(declare-fun b!5061662 () Bool)

(assert (=> b!5061662 (= e!3159234 Nil!58428)))

(declare-fun b!5061665 () Bool)

(assert (=> b!5061665 (= e!3159235 (++!12779 (list!18977 (left!42807 (right!43137 (right!43137 lt!2087928)))) (list!18977 (right!43137 (right!43137 (right!43137 lt!2087928))))))))

(declare-fun d!1630562 () Bool)

(declare-fun c!868619 () Bool)

(assert (=> d!1630562 (= c!868619 ((_ is Empty!15558) (right!43137 (right!43137 lt!2087928))))))

(assert (=> d!1630562 (= (list!18977 (right!43137 (right!43137 lt!2087928))) e!3159234)))

(assert (= (and d!1630562 c!868619) b!5061662))

(assert (= (and d!1630562 (not c!868619)) b!5061663))

(assert (= (and b!5061663 c!868620) b!5061664))

(assert (= (and b!5061663 (not c!868620)) b!5061665))

(declare-fun m!6100394 () Bool)

(assert (=> b!5061664 m!6100394))

(declare-fun m!6100396 () Bool)

(assert (=> b!5061665 m!6100396))

(declare-fun m!6100398 () Bool)

(assert (=> b!5061665 m!6100398))

(assert (=> b!5061665 m!6100396))

(assert (=> b!5061665 m!6100398))

(declare-fun m!6100400 () Bool)

(assert (=> b!5061665 m!6100400))

(assert (=> b!5060631 d!1630562))

(declare-fun d!1630564 () Bool)

(declare-fun c!868621 () Bool)

(assert (=> d!1630564 (= c!868621 ((_ is Node!15558) (left!42807 (right!43137 (right!43137 ys!41)))))))

(declare-fun e!3159236 () Bool)

(assert (=> d!1630564 (= (inv!77523 (left!42807 (right!43137 (right!43137 ys!41)))) e!3159236)))

(declare-fun b!5061666 () Bool)

(assert (=> b!5061666 (= e!3159236 (inv!77526 (left!42807 (right!43137 (right!43137 ys!41)))))))

(declare-fun b!5061667 () Bool)

(declare-fun e!3159237 () Bool)

(assert (=> b!5061667 (= e!3159236 e!3159237)))

(declare-fun res!2155286 () Bool)

(assert (=> b!5061667 (= res!2155286 (not ((_ is Leaf!25842) (left!42807 (right!43137 (right!43137 ys!41))))))))

(assert (=> b!5061667 (=> res!2155286 e!3159237)))

(declare-fun b!5061668 () Bool)

(assert (=> b!5061668 (= e!3159237 (inv!77527 (left!42807 (right!43137 (right!43137 ys!41)))))))

(assert (= (and d!1630564 c!868621) b!5061666))

(assert (= (and d!1630564 (not c!868621)) b!5061667))

(assert (= (and b!5061667 (not res!2155286)) b!5061668))

(declare-fun m!6100402 () Bool)

(assert (=> b!5061666 m!6100402))

(declare-fun m!6100404 () Bool)

(assert (=> b!5061668 m!6100404))

(assert (=> b!5060776 d!1630564))

(declare-fun d!1630566 () Bool)

(declare-fun c!868622 () Bool)

(assert (=> d!1630566 (= c!868622 ((_ is Node!15558) (right!43137 (right!43137 (right!43137 ys!41)))))))

(declare-fun e!3159238 () Bool)

(assert (=> d!1630566 (= (inv!77523 (right!43137 (right!43137 (right!43137 ys!41)))) e!3159238)))

(declare-fun b!5061669 () Bool)

(assert (=> b!5061669 (= e!3159238 (inv!77526 (right!43137 (right!43137 (right!43137 ys!41)))))))

(declare-fun b!5061670 () Bool)

(declare-fun e!3159239 () Bool)

(assert (=> b!5061670 (= e!3159238 e!3159239)))

(declare-fun res!2155287 () Bool)

(assert (=> b!5061670 (= res!2155287 (not ((_ is Leaf!25842) (right!43137 (right!43137 (right!43137 ys!41))))))))

(assert (=> b!5061670 (=> res!2155287 e!3159239)))

(declare-fun b!5061671 () Bool)

(assert (=> b!5061671 (= e!3159239 (inv!77527 (right!43137 (right!43137 (right!43137 ys!41)))))))

(assert (= (and d!1630566 c!868622) b!5061669))

(assert (= (and d!1630566 (not c!868622)) b!5061670))

(assert (= (and b!5061670 (not res!2155287)) b!5061671))

(declare-fun m!6100406 () Bool)

(assert (=> b!5061669 m!6100406))

(declare-fun m!6100408 () Bool)

(assert (=> b!5061671 m!6100408))

(assert (=> b!5060776 d!1630566))

(declare-fun d!1630568 () Bool)

(declare-fun lt!2088207 () Bool)

(assert (=> d!1630568 (= lt!2088207 (isEmpty!31621 (list!18977 (left!42807 lt!2087966))))))

(assert (=> d!1630568 (= lt!2088207 (= (size!39064 (left!42807 lt!2087966)) 0))))

(assert (=> d!1630568 (= (isEmpty!31619 (left!42807 lt!2087966)) lt!2088207)))

(declare-fun bs!1189663 () Bool)

(assert (= bs!1189663 d!1630568))

(assert (=> bs!1189663 m!6098452))

(assert (=> bs!1189663 m!6098452))

(declare-fun m!6100410 () Bool)

(assert (=> bs!1189663 m!6100410))

(declare-fun m!6100412 () Bool)

(assert (=> bs!1189663 m!6100412))

(assert (=> b!5060535 d!1630568))

(declare-fun d!1630570 () Bool)

(declare-fun c!868623 () Bool)

(assert (=> d!1630570 (= c!868623 ((_ is Nil!58428) (t!371255 (list!18977 xs!286))))))

(declare-fun e!3159240 () (InoxSet T!105076))

(assert (=> d!1630570 (= (content!10414 (t!371255 (list!18977 xs!286))) e!3159240)))

(declare-fun b!5061672 () Bool)

(assert (=> b!5061672 (= e!3159240 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061673 () Bool)

(assert (=> b!5061673 (= e!3159240 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (t!371255 (list!18977 xs!286))) true) (content!10414 (t!371255 (t!371255 (list!18977 xs!286))))))))

(assert (= (and d!1630570 c!868623) b!5061672))

(assert (= (and d!1630570 (not c!868623)) b!5061673))

(declare-fun m!6100414 () Bool)

(assert (=> b!5061673 m!6100414))

(declare-fun m!6100416 () Bool)

(assert (=> b!5061673 m!6100416))

(assert (=> b!5060684 d!1630570))

(declare-fun d!1630572 () Bool)

(declare-fun lt!2088208 () Int)

(assert (=> d!1630572 (>= lt!2088208 0)))

(declare-fun e!3159241 () Int)

(assert (=> d!1630572 (= lt!2088208 e!3159241)))

(declare-fun c!868624 () Bool)

(assert (=> d!1630572 (= c!868624 ((_ is Nil!58428) (t!371255 (innerList!15646 (xs!18896 xs!286)))))))

(assert (=> d!1630572 (= (size!39065 (t!371255 (innerList!15646 (xs!18896 xs!286)))) lt!2088208)))

(declare-fun b!5061674 () Bool)

(assert (=> b!5061674 (= e!3159241 0)))

(declare-fun b!5061675 () Bool)

(assert (=> b!5061675 (= e!3159241 (+ 1 (size!39065 (t!371255 (t!371255 (innerList!15646 (xs!18896 xs!286)))))))))

(assert (= (and d!1630572 c!868624) b!5061674))

(assert (= (and d!1630572 (not c!868624)) b!5061675))

(declare-fun m!6100418 () Bool)

(assert (=> b!5061675 m!6100418))

(assert (=> b!5060595 d!1630572))

(declare-fun d!1630574 () Bool)

(assert (=> d!1630574 (= (list!18979 (xs!18896 lt!2087966)) (innerList!15646 (xs!18896 lt!2087966)))))

(assert (=> b!5060740 d!1630574))

(declare-fun d!1630576 () Bool)

(declare-fun lt!2088209 () Bool)

(assert (=> d!1630576 (= lt!2088209 (isEmpty!31621 (list!18977 (right!43137 (left!42807 lt!2087928)))))))

(assert (=> d!1630576 (= lt!2088209 (= (size!39064 (right!43137 (left!42807 lt!2087928))) 0))))

(assert (=> d!1630576 (= (isEmpty!31619 (right!43137 (left!42807 lt!2087928))) lt!2088209)))

(declare-fun bs!1189664 () Bool)

(assert (= bs!1189664 d!1630576))

(assert (=> bs!1189664 m!6098224))

(assert (=> bs!1189664 m!6098224))

(declare-fun m!6100420 () Bool)

(assert (=> bs!1189664 m!6100420))

(declare-fun m!6100422 () Bool)

(assert (=> bs!1189664 m!6100422))

(assert (=> b!5060716 d!1630576))

(declare-fun d!1630578 () Bool)

(declare-fun lt!2088210 () Int)

(assert (=> d!1630578 (>= lt!2088210 0)))

(declare-fun e!3159242 () Int)

(assert (=> d!1630578 (= lt!2088210 e!3159242)))

(declare-fun c!868625 () Bool)

(assert (=> d!1630578 (= c!868625 ((_ is Nil!58428) lt!2088038))))

(assert (=> d!1630578 (= (size!39065 lt!2088038) lt!2088210)))

(declare-fun b!5061676 () Bool)

(assert (=> b!5061676 (= e!3159242 0)))

(declare-fun b!5061677 () Bool)

(assert (=> b!5061677 (= e!3159242 (+ 1 (size!39065 (t!371255 lt!2088038))))))

(assert (= (and d!1630578 c!868625) b!5061676))

(assert (= (and d!1630578 (not c!868625)) b!5061677))

(declare-fun m!6100424 () Bool)

(assert (=> b!5061677 m!6100424))

(assert (=> b!5060671 d!1630578))

(assert (=> b!5060671 d!1629810))

(declare-fun d!1630580 () Bool)

(declare-fun lt!2088211 () Int)

(assert (=> d!1630580 (>= lt!2088211 0)))

(declare-fun e!3159243 () Int)

(assert (=> d!1630580 (= lt!2088211 e!3159243)))

(declare-fun c!868626 () Bool)

(assert (=> d!1630580 (= c!868626 ((_ is Nil!58428) (list!18977 (left!42807 (left!42807 ys!41)))))))

(assert (=> d!1630580 (= (size!39065 (list!18977 (left!42807 (left!42807 ys!41)))) lt!2088211)))

(declare-fun b!5061678 () Bool)

(assert (=> b!5061678 (= e!3159243 0)))

(declare-fun b!5061679 () Bool)

(assert (=> b!5061679 (= e!3159243 (+ 1 (size!39065 (t!371255 (list!18977 (left!42807 (left!42807 ys!41)))))))))

(assert (= (and d!1630580 c!868626) b!5061678))

(assert (= (and d!1630580 (not c!868626)) b!5061679))

(declare-fun m!6100426 () Bool)

(assert (=> b!5061679 m!6100426))

(assert (=> b!5060671 d!1630580))

(assert (=> b!5060576 d!1630516))

(declare-fun d!1630582 () Bool)

(declare-fun lt!2088212 () Int)

(assert (=> d!1630582 (>= lt!2088212 0)))

(declare-fun e!3159244 () Int)

(assert (=> d!1630582 (= lt!2088212 e!3159244)))

(declare-fun c!868627 () Bool)

(assert (=> d!1630582 (= c!868627 ((_ is Nil!58428) lt!2088032))))

(assert (=> d!1630582 (= (size!39065 lt!2088032) lt!2088212)))

(declare-fun b!5061680 () Bool)

(assert (=> b!5061680 (= e!3159244 0)))

(declare-fun b!5061681 () Bool)

(assert (=> b!5061681 (= e!3159244 (+ 1 (size!39065 (t!371255 lt!2088032))))))

(assert (= (and d!1630582 c!868627) b!5061680))

(assert (= (and d!1630582 (not c!868627)) b!5061681))

(declare-fun m!6100428 () Bool)

(assert (=> b!5061681 m!6100428))

(assert (=> b!5060613 d!1630582))

(declare-fun d!1630584 () Bool)

(declare-fun lt!2088213 () Int)

(assert (=> d!1630584 (>= lt!2088213 0)))

(declare-fun e!3159245 () Int)

(assert (=> d!1630584 (= lt!2088213 e!3159245)))

(declare-fun c!868628 () Bool)

(assert (=> d!1630584 (= c!868628 ((_ is Nil!58428) (t!371255 (list!18977 xs!286))))))

(assert (=> d!1630584 (= (size!39065 (t!371255 (list!18977 xs!286))) lt!2088213)))

(declare-fun b!5061682 () Bool)

(assert (=> b!5061682 (= e!3159245 0)))

(declare-fun b!5061683 () Bool)

(assert (=> b!5061683 (= e!3159245 (+ 1 (size!39065 (t!371255 (t!371255 (list!18977 xs!286))))))))

(assert (= (and d!1630584 c!868628) b!5061682))

(assert (= (and d!1630584 (not c!868628)) b!5061683))

(declare-fun m!6100430 () Bool)

(assert (=> b!5061683 m!6100430))

(assert (=> b!5060613 d!1630584))

(assert (=> b!5060613 d!1629812))

(declare-fun d!1630586 () Bool)

(assert (=> d!1630586 (= (inv!77522 (xs!18896 (right!43137 (left!42807 xs!286)))) (<= (size!39065 (innerList!15646 (xs!18896 (right!43137 (left!42807 xs!286))))) 2147483647))))

(declare-fun bs!1189665 () Bool)

(assert (= bs!1189665 d!1630586))

(declare-fun m!6100432 () Bool)

(assert (=> bs!1189665 m!6100432))

(assert (=> b!5060756 d!1630586))

(declare-fun d!1630588 () Bool)

(declare-fun e!3159246 () Bool)

(assert (=> d!1630588 e!3159246))

(declare-fun res!2155289 () Bool)

(assert (=> d!1630588 (=> (not res!2155289) (not e!3159246))))

(declare-fun lt!2088214 () List!58552)

(assert (=> d!1630588 (= res!2155289 (= (content!10414 lt!2088214) ((_ map or) (content!10414 (list!18977 (left!42807 (++!12778 (right!43137 xs!286) ys!41)))) (content!10414 (list!18977 (right!43137 (++!12778 (right!43137 xs!286) ys!41)))))))))

(declare-fun e!3159247 () List!58552)

(assert (=> d!1630588 (= lt!2088214 e!3159247)))

(declare-fun c!868629 () Bool)

(assert (=> d!1630588 (= c!868629 ((_ is Nil!58428) (list!18977 (left!42807 (++!12778 (right!43137 xs!286) ys!41)))))))

(assert (=> d!1630588 (= (++!12779 (list!18977 (left!42807 (++!12778 (right!43137 xs!286) ys!41))) (list!18977 (right!43137 (++!12778 (right!43137 xs!286) ys!41)))) lt!2088214)))

(declare-fun b!5061687 () Bool)

(assert (=> b!5061687 (= e!3159246 (or (not (= (list!18977 (right!43137 (++!12778 (right!43137 xs!286) ys!41))) Nil!58428)) (= lt!2088214 (list!18977 (left!42807 (++!12778 (right!43137 xs!286) ys!41))))))))

(declare-fun b!5061686 () Bool)

(declare-fun res!2155288 () Bool)

(assert (=> b!5061686 (=> (not res!2155288) (not e!3159246))))

(assert (=> b!5061686 (= res!2155288 (= (size!39065 lt!2088214) (+ (size!39065 (list!18977 (left!42807 (++!12778 (right!43137 xs!286) ys!41)))) (size!39065 (list!18977 (right!43137 (++!12778 (right!43137 xs!286) ys!41)))))))))

(declare-fun b!5061684 () Bool)

(assert (=> b!5061684 (= e!3159247 (list!18977 (right!43137 (++!12778 (right!43137 xs!286) ys!41))))))

(declare-fun b!5061685 () Bool)

(assert (=> b!5061685 (= e!3159247 (Cons!58428 (h!64876 (list!18977 (left!42807 (++!12778 (right!43137 xs!286) ys!41)))) (++!12779 (t!371255 (list!18977 (left!42807 (++!12778 (right!43137 xs!286) ys!41)))) (list!18977 (right!43137 (++!12778 (right!43137 xs!286) ys!41))))))))

(assert (= (and d!1630588 c!868629) b!5061684))

(assert (= (and d!1630588 (not c!868629)) b!5061685))

(assert (= (and d!1630588 res!2155289) b!5061686))

(assert (= (and b!5061686 res!2155288) b!5061687))

(declare-fun m!6100434 () Bool)

(assert (=> d!1630588 m!6100434))

(assert (=> d!1630588 m!6098152))

(declare-fun m!6100436 () Bool)

(assert (=> d!1630588 m!6100436))

(assert (=> d!1630588 m!6098154))

(declare-fun m!6100438 () Bool)

(assert (=> d!1630588 m!6100438))

(declare-fun m!6100440 () Bool)

(assert (=> b!5061686 m!6100440))

(assert (=> b!5061686 m!6098152))

(declare-fun m!6100442 () Bool)

(assert (=> b!5061686 m!6100442))

(assert (=> b!5061686 m!6098154))

(declare-fun m!6100444 () Bool)

(assert (=> b!5061686 m!6100444))

(assert (=> b!5061685 m!6098154))

(declare-fun m!6100446 () Bool)

(assert (=> b!5061685 m!6100446))

(assert (=> b!5060591 d!1630588))

(declare-fun b!5061689 () Bool)

(declare-fun e!3159248 () List!58552)

(declare-fun e!3159249 () List!58552)

(assert (=> b!5061689 (= e!3159248 e!3159249)))

(declare-fun c!868631 () Bool)

(assert (=> b!5061689 (= c!868631 ((_ is Leaf!25842) (left!42807 (++!12778 (right!43137 xs!286) ys!41))))))

(declare-fun b!5061690 () Bool)

(assert (=> b!5061690 (= e!3159249 (list!18979 (xs!18896 (left!42807 (++!12778 (right!43137 xs!286) ys!41)))))))

(declare-fun b!5061688 () Bool)

(assert (=> b!5061688 (= e!3159248 Nil!58428)))

(declare-fun b!5061691 () Bool)

(assert (=> b!5061691 (= e!3159249 (++!12779 (list!18977 (left!42807 (left!42807 (++!12778 (right!43137 xs!286) ys!41)))) (list!18977 (right!43137 (left!42807 (++!12778 (right!43137 xs!286) ys!41))))))))

(declare-fun d!1630590 () Bool)

(declare-fun c!868630 () Bool)

(assert (=> d!1630590 (= c!868630 ((_ is Empty!15558) (left!42807 (++!12778 (right!43137 xs!286) ys!41))))))

(assert (=> d!1630590 (= (list!18977 (left!42807 (++!12778 (right!43137 xs!286) ys!41))) e!3159248)))

(assert (= (and d!1630590 c!868630) b!5061688))

(assert (= (and d!1630590 (not c!868630)) b!5061689))

(assert (= (and b!5061689 c!868631) b!5061690))

(assert (= (and b!5061689 (not c!868631)) b!5061691))

(declare-fun m!6100448 () Bool)

(assert (=> b!5061690 m!6100448))

(declare-fun m!6100450 () Bool)

(assert (=> b!5061691 m!6100450))

(declare-fun m!6100452 () Bool)

(assert (=> b!5061691 m!6100452))

(assert (=> b!5061691 m!6100450))

(assert (=> b!5061691 m!6100452))

(declare-fun m!6100454 () Bool)

(assert (=> b!5061691 m!6100454))

(assert (=> b!5060591 d!1630590))

(declare-fun b!5061693 () Bool)

(declare-fun e!3159250 () List!58552)

(declare-fun e!3159251 () List!58552)

(assert (=> b!5061693 (= e!3159250 e!3159251)))

(declare-fun c!868633 () Bool)

(assert (=> b!5061693 (= c!868633 ((_ is Leaf!25842) (right!43137 (++!12778 (right!43137 xs!286) ys!41))))))

(declare-fun b!5061694 () Bool)

(assert (=> b!5061694 (= e!3159251 (list!18979 (xs!18896 (right!43137 (++!12778 (right!43137 xs!286) ys!41)))))))

(declare-fun b!5061692 () Bool)

(assert (=> b!5061692 (= e!3159250 Nil!58428)))

(declare-fun b!5061695 () Bool)

(assert (=> b!5061695 (= e!3159251 (++!12779 (list!18977 (left!42807 (right!43137 (++!12778 (right!43137 xs!286) ys!41)))) (list!18977 (right!43137 (right!43137 (++!12778 (right!43137 xs!286) ys!41))))))))

(declare-fun d!1630592 () Bool)

(declare-fun c!868632 () Bool)

(assert (=> d!1630592 (= c!868632 ((_ is Empty!15558) (right!43137 (++!12778 (right!43137 xs!286) ys!41))))))

(assert (=> d!1630592 (= (list!18977 (right!43137 (++!12778 (right!43137 xs!286) ys!41))) e!3159250)))

(assert (= (and d!1630592 c!868632) b!5061692))

(assert (= (and d!1630592 (not c!868632)) b!5061693))

(assert (= (and b!5061693 c!868633) b!5061694))

(assert (= (and b!5061693 (not c!868633)) b!5061695))

(declare-fun m!6100456 () Bool)

(assert (=> b!5061694 m!6100456))

(declare-fun m!6100458 () Bool)

(assert (=> b!5061695 m!6100458))

(declare-fun m!6100460 () Bool)

(assert (=> b!5061695 m!6100460))

(assert (=> b!5061695 m!6100458))

(assert (=> b!5061695 m!6100460))

(declare-fun m!6100462 () Bool)

(assert (=> b!5061695 m!6100462))

(assert (=> b!5060591 d!1630592))

(declare-fun d!1630594 () Bool)

(assert (=> d!1630594 (= (isEmpty!31621 (list!18977 (left!42807 ys!41))) ((_ is Nil!58428) (list!18977 (left!42807 ys!41))))))

(assert (=> d!1629642 d!1630594))

(assert (=> d!1629642 d!1629744))

(declare-fun d!1630596 () Bool)

(declare-fun lt!2088215 () Int)

(assert (=> d!1630596 (= lt!2088215 (size!39065 (list!18977 (left!42807 ys!41))))))

(assert (=> d!1630596 (= lt!2088215 (ite ((_ is Empty!15558) (left!42807 ys!41)) 0 (ite ((_ is Leaf!25842) (left!42807 ys!41)) (csize!31347 (left!42807 ys!41)) (csize!31346 (left!42807 ys!41)))))))

(assert (=> d!1630596 (= (size!39064 (left!42807 ys!41)) lt!2088215)))

(declare-fun bs!1189666 () Bool)

(assert (= bs!1189666 d!1630596))

(assert (=> bs!1189666 m!6097078))

(assert (=> bs!1189666 m!6097078))

(assert (=> bs!1189666 m!6098244))

(assert (=> d!1629642 d!1630596))

(declare-fun d!1630598 () Bool)

(declare-fun res!2155290 () Bool)

(declare-fun e!3159252 () Bool)

(assert (=> d!1630598 (=> (not res!2155290) (not e!3159252))))

(assert (=> d!1630598 (= res!2155290 (<= (size!39065 (list!18979 (xs!18896 (right!43137 (left!42807 ys!41))))) 512))))

(assert (=> d!1630598 (= (inv!77527 (right!43137 (left!42807 ys!41))) e!3159252)))

(declare-fun b!5061696 () Bool)

(declare-fun res!2155291 () Bool)

(assert (=> b!5061696 (=> (not res!2155291) (not e!3159252))))

(assert (=> b!5061696 (= res!2155291 (= (csize!31347 (right!43137 (left!42807 ys!41))) (size!39065 (list!18979 (xs!18896 (right!43137 (left!42807 ys!41)))))))))

(declare-fun b!5061697 () Bool)

(assert (=> b!5061697 (= e!3159252 (and (> (csize!31347 (right!43137 (left!42807 ys!41))) 0) (<= (csize!31347 (right!43137 (left!42807 ys!41))) 512)))))

(assert (= (and d!1630598 res!2155290) b!5061696))

(assert (= (and b!5061696 res!2155291) b!5061697))

(assert (=> d!1630598 m!6098066))

(assert (=> d!1630598 m!6098066))

(declare-fun m!6100464 () Bool)

(assert (=> d!1630598 m!6100464))

(assert (=> b!5061696 m!6098066))

(assert (=> b!5061696 m!6098066))

(assert (=> b!5061696 m!6100464))

(assert (=> b!5060654 d!1630598))

(declare-fun d!1630600 () Bool)

(declare-fun e!3159253 () Bool)

(assert (=> d!1630600 e!3159253))

(declare-fun res!2155293 () Bool)

(assert (=> d!1630600 (=> (not res!2155293) (not e!3159253))))

(declare-fun lt!2088216 () List!58552)

(assert (=> d!1630600 (= res!2155293 (= (content!10414 lt!2088216) ((_ map or) (content!10414 (t!371255 (list!18977 xs!286))) (content!10414 (list!18977 (left!42807 (left!42807 ys!41)))))))))

(declare-fun e!3159254 () List!58552)

(assert (=> d!1630600 (= lt!2088216 e!3159254)))

(declare-fun c!868634 () Bool)

(assert (=> d!1630600 (= c!868634 ((_ is Nil!58428) (t!371255 (list!18977 xs!286))))))

(assert (=> d!1630600 (= (++!12779 (t!371255 (list!18977 xs!286)) (list!18977 (left!42807 (left!42807 ys!41)))) lt!2088216)))

(declare-fun b!5061701 () Bool)

(assert (=> b!5061701 (= e!3159253 (or (not (= (list!18977 (left!42807 (left!42807 ys!41))) Nil!58428)) (= lt!2088216 (t!371255 (list!18977 xs!286)))))))

(declare-fun b!5061700 () Bool)

(declare-fun res!2155292 () Bool)

(assert (=> b!5061700 (=> (not res!2155292) (not e!3159253))))

(assert (=> b!5061700 (= res!2155292 (= (size!39065 lt!2088216) (+ (size!39065 (t!371255 (list!18977 xs!286))) (size!39065 (list!18977 (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5061698 () Bool)

(assert (=> b!5061698 (= e!3159254 (list!18977 (left!42807 (left!42807 ys!41))))))

(declare-fun b!5061699 () Bool)

(assert (=> b!5061699 (= e!3159254 (Cons!58428 (h!64876 (t!371255 (list!18977 xs!286))) (++!12779 (t!371255 (t!371255 (list!18977 xs!286))) (list!18977 (left!42807 (left!42807 ys!41))))))))

(assert (= (and d!1630600 c!868634) b!5061698))

(assert (= (and d!1630600 (not c!868634)) b!5061699))

(assert (= (and d!1630600 res!2155293) b!5061700))

(assert (= (and b!5061700 res!2155292) b!5061701))

(declare-fun m!6100466 () Bool)

(assert (=> d!1630600 m!6100466))

(assert (=> d!1630600 m!6098190))

(assert (=> d!1630600 m!6097050))

(assert (=> d!1630600 m!6098320))

(declare-fun m!6100468 () Bool)

(assert (=> b!5061700 m!6100468))

(assert (=> b!5061700 m!6098194))

(assert (=> b!5061700 m!6097050))

(assert (=> b!5061700 m!6098324))

(assert (=> b!5061699 m!6097050))

(declare-fun m!6100470 () Bool)

(assert (=> b!5061699 m!6100470))

(assert (=> b!5060670 d!1630600))

(declare-fun d!1630602 () Bool)

(declare-fun lt!2088217 () Int)

(assert (=> d!1630602 (>= lt!2088217 0)))

(declare-fun e!3159255 () Int)

(assert (=> d!1630602 (= lt!2088217 e!3159255)))

(declare-fun c!868635 () Bool)

(assert (=> d!1630602 (= c!868635 ((_ is Nil!58428) (list!18979 (xs!18896 (left!42807 xs!286)))))))

(assert (=> d!1630602 (= (size!39065 (list!18979 (xs!18896 (left!42807 xs!286)))) lt!2088217)))

(declare-fun b!5061702 () Bool)

(assert (=> b!5061702 (= e!3159255 0)))

(declare-fun b!5061703 () Bool)

(assert (=> b!5061703 (= e!3159255 (+ 1 (size!39065 (t!371255 (list!18979 (xs!18896 (left!42807 xs!286)))))))))

(assert (= (and d!1630602 c!868635) b!5061702))

(assert (= (and d!1630602 (not c!868635)) b!5061703))

(declare-fun m!6100472 () Bool)

(assert (=> b!5061703 m!6100472))

(assert (=> d!1629794 d!1630602))

(declare-fun d!1630604 () Bool)

(assert (=> d!1630604 (= (list!18979 (xs!18896 (left!42807 xs!286))) (innerList!15646 (xs!18896 (left!42807 xs!286))))))

(assert (=> d!1629794 d!1630604))

(assert (=> b!5060503 d!1630500))

(assert (=> b!5060503 d!1630502))

(declare-fun d!1630606 () Bool)

(declare-fun e!3159256 () Bool)

(assert (=> d!1630606 e!3159256))

(declare-fun res!2155295 () Bool)

(assert (=> d!1630606 (=> (not res!2155295) (not e!3159256))))

(declare-fun lt!2088218 () List!58552)

(assert (=> d!1630606 (= res!2155295 (= (content!10414 lt!2088218) ((_ map or) (content!10414 (list!18977 (left!42807 (right!43137 xs!286)))) (content!10414 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))))

(declare-fun e!3159257 () List!58552)

(assert (=> d!1630606 (= lt!2088218 e!3159257)))

(declare-fun c!868636 () Bool)

(assert (=> d!1630606 (= c!868636 ((_ is Nil!58428) (list!18977 (left!42807 (right!43137 xs!286)))))))

(assert (=> d!1630606 (= (++!12779 (list!18977 (left!42807 (right!43137 xs!286))) (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))) lt!2088218)))

(declare-fun b!5061707 () Bool)

(assert (=> b!5061707 (= e!3159256 (or (not (= (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)) Nil!58428)) (= lt!2088218 (list!18977 (left!42807 (right!43137 xs!286))))))))

(declare-fun b!5061706 () Bool)

(declare-fun res!2155294 () Bool)

(assert (=> b!5061706 (=> (not res!2155294) (not e!3159256))))

(assert (=> b!5061706 (= res!2155294 (= (size!39065 lt!2088218) (+ (size!39065 (list!18977 (left!42807 (right!43137 xs!286)))) (size!39065 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41))))))))

(declare-fun b!5061704 () Bool)

(assert (=> b!5061704 (= e!3159257 (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)))))

(declare-fun b!5061705 () Bool)

(assert (=> b!5061705 (= e!3159257 (Cons!58428 (h!64876 (list!18977 (left!42807 (right!43137 xs!286)))) (++!12779 (t!371255 (list!18977 (left!42807 (right!43137 xs!286)))) (++!12779 (list!18977 (right!43137 (right!43137 xs!286))) (list!18977 ys!41)))))))

(assert (= (and d!1630606 c!868636) b!5061704))

(assert (= (and d!1630606 (not c!868636)) b!5061705))

(assert (= (and d!1630606 res!2155295) b!5061706))

(assert (= (and b!5061706 res!2155294) b!5061707))

(declare-fun m!6100474 () Bool)

(assert (=> d!1630606 m!6100474))

(assert (=> d!1630606 m!6097056))

(assert (=> d!1630606 m!6100330))

(assert (=> d!1630606 m!6097064))

(assert (=> d!1630606 m!6100210))

(declare-fun m!6100476 () Bool)

(assert (=> b!5061706 m!6100476))

(assert (=> b!5061706 m!6097056))

(assert (=> b!5061706 m!6100334))

(assert (=> b!5061706 m!6097064))

(assert (=> b!5061706 m!6100216))

(assert (=> b!5061705 m!6097064))

(declare-fun m!6100478 () Bool)

(assert (=> b!5061705 m!6100478))

(assert (=> bm!352426 d!1630606))

(declare-fun d!1630608 () Bool)

(declare-fun lt!2088219 () Bool)

(assert (=> d!1630608 (= lt!2088219 (isEmpty!31621 (list!18977 (left!42807 (right!43137 xs!286)))))))

(assert (=> d!1630608 (= lt!2088219 (= (size!39064 (left!42807 (right!43137 xs!286))) 0))))

(assert (=> d!1630608 (= (isEmpty!31619 (left!42807 (right!43137 xs!286))) lt!2088219)))

(declare-fun bs!1189667 () Bool)

(assert (= bs!1189667 d!1630608))

(assert (=> bs!1189667 m!6097056))

(assert (=> bs!1189667 m!6097056))

(declare-fun m!6100480 () Bool)

(assert (=> bs!1189667 m!6100480))

(assert (=> bs!1189667 m!6098258))

(assert (=> b!5060607 d!1630608))

(declare-fun d!1630610 () Bool)

(declare-fun lt!2088220 () Int)

(assert (=> d!1630610 (>= lt!2088220 0)))

(declare-fun e!3159258 () Int)

(assert (=> d!1630610 (= lt!2088220 e!3159258)))

(declare-fun c!868637 () Bool)

(assert (=> d!1630610 (= c!868637 ((_ is Nil!58428) lt!2088021))))

(assert (=> d!1630610 (= (size!39065 lt!2088021) lt!2088220)))

(declare-fun b!5061708 () Bool)

(assert (=> b!5061708 (= e!3159258 0)))

(declare-fun b!5061709 () Bool)

(assert (=> b!5061709 (= e!3159258 (+ 1 (size!39065 (t!371255 lt!2088021))))))

(assert (= (and d!1630610 c!868637) b!5061708))

(assert (= (and d!1630610 (not c!868637)) b!5061709))

(declare-fun m!6100482 () Bool)

(assert (=> b!5061709 m!6100482))

(assert (=> b!5060531 d!1630610))

(declare-fun d!1630612 () Bool)

(declare-fun lt!2088221 () Int)

(assert (=> d!1630612 (>= lt!2088221 0)))

(declare-fun e!3159259 () Int)

(assert (=> d!1630612 (= lt!2088221 e!3159259)))

(declare-fun c!868638 () Bool)

(assert (=> d!1630612 (= c!868638 ((_ is Nil!58428) (list!18977 (right!43137 (right!43137 xs!286)))))))

(assert (=> d!1630612 (= (size!39065 (list!18977 (right!43137 (right!43137 xs!286)))) lt!2088221)))

(declare-fun b!5061710 () Bool)

(assert (=> b!5061710 (= e!3159259 0)))

(declare-fun b!5061711 () Bool)

(assert (=> b!5061711 (= e!3159259 (+ 1 (size!39065 (t!371255 (list!18977 (right!43137 (right!43137 xs!286)))))))))

(assert (= (and d!1630612 c!868638) b!5061710))

(assert (= (and d!1630612 (not c!868638)) b!5061711))

(declare-fun m!6100484 () Bool)

(assert (=> b!5061711 m!6100484))

(assert (=> b!5060531 d!1630612))

(assert (=> b!5060531 d!1629812))

(declare-fun d!1630614 () Bool)

(declare-fun e!3159260 () Bool)

(assert (=> d!1630614 e!3159260))

(declare-fun res!2155297 () Bool)

(assert (=> d!1630614 (=> (not res!2155297) (not e!3159260))))

(declare-fun lt!2088222 () List!58552)

(assert (=> d!1630614 (= res!2155297 (= (content!10414 lt!2088222) ((_ map or) (content!10414 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) (content!10414 (list!18977 (right!43137 (left!42807 ys!41)))))))))

(declare-fun e!3159261 () List!58552)

(assert (=> d!1630614 (= lt!2088222 e!3159261)))

(declare-fun c!868639 () Bool)

(assert (=> d!1630614 (= c!868639 ((_ is Nil!58428) (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))))))

(assert (=> d!1630614 (= (++!12779 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))) (list!18977 (right!43137 (left!42807 ys!41)))) lt!2088222)))

(declare-fun b!5061715 () Bool)

(assert (=> b!5061715 (= e!3159260 (or (not (= (list!18977 (right!43137 (left!42807 ys!41))) Nil!58428)) (= lt!2088222 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5061714 () Bool)

(declare-fun res!2155296 () Bool)

(assert (=> b!5061714 (=> (not res!2155296) (not e!3159260))))

(assert (=> b!5061714 (= res!2155296 (= (size!39065 lt!2088222) (+ (size!39065 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) (size!39065 (list!18977 (right!43137 (left!42807 ys!41)))))))))

(declare-fun b!5061712 () Bool)

(assert (=> b!5061712 (= e!3159261 (list!18977 (right!43137 (left!42807 ys!41))))))

(declare-fun b!5061713 () Bool)

(assert (=> b!5061713 (= e!3159261 (Cons!58428 (h!64876 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) (++!12779 (t!371255 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) (list!18977 (right!43137 (left!42807 ys!41))))))))

(assert (= (and d!1630614 c!868639) b!5061712))

(assert (= (and d!1630614 (not c!868639)) b!5061713))

(assert (= (and d!1630614 res!2155297) b!5061714))

(assert (= (and b!5061714 res!2155296) b!5061715))

(declare-fun m!6100486 () Bool)

(assert (=> d!1630614 m!6100486))

(assert (=> d!1630614 m!6097072))

(declare-fun m!6100488 () Bool)

(assert (=> d!1630614 m!6100488))

(assert (=> d!1630614 m!6097052))

(assert (=> d!1630614 m!6100104))

(declare-fun m!6100490 () Bool)

(assert (=> b!5061714 m!6100490))

(assert (=> b!5061714 m!6097072))

(declare-fun m!6100492 () Bool)

(assert (=> b!5061714 m!6100492))

(assert (=> b!5061714 m!6097052))

(assert (=> b!5061714 m!6100108))

(assert (=> b!5061713 m!6097052))

(assert (=> b!5061713 m!6100026))

(assert (=> bm!352437 d!1630614))

(declare-fun d!1630616 () Bool)

(declare-fun lt!2088223 () Bool)

(assert (=> d!1630616 (= lt!2088223 (isEmpty!31621 (list!18977 (left!42807 (right!43137 ys!41)))))))

(assert (=> d!1630616 (= lt!2088223 (= (size!39064 (left!42807 (right!43137 ys!41))) 0))))

(assert (=> d!1630616 (= (isEmpty!31619 (left!42807 (right!43137 ys!41))) lt!2088223)))

(declare-fun bs!1189668 () Bool)

(assert (= bs!1189668 d!1630616))

(assert (=> bs!1189668 m!6098252))

(assert (=> bs!1189668 m!6098252))

(declare-fun m!6100494 () Bool)

(assert (=> bs!1189668 m!6100494))

(assert (=> bs!1189668 m!6098102))

(assert (=> b!5060657 d!1630616))

(declare-fun d!1630618 () Bool)

(declare-fun c!868640 () Bool)

(assert (=> d!1630618 (= c!868640 ((_ is Nil!58428) lt!2088032))))

(declare-fun e!3159262 () (InoxSet T!105076))

(assert (=> d!1630618 (= (content!10414 lt!2088032) e!3159262)))

(declare-fun b!5061716 () Bool)

(assert (=> b!5061716 (= e!3159262 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061717 () Bool)

(assert (=> b!5061717 (= e!3159262 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 lt!2088032) true) (content!10414 (t!371255 lt!2088032))))))

(assert (= (and d!1630618 c!868640) b!5061716))

(assert (= (and d!1630618 (not c!868640)) b!5061717))

(declare-fun m!6100496 () Bool)

(assert (=> b!5061717 m!6100496))

(declare-fun m!6100498 () Bool)

(assert (=> b!5061717 m!6100498))

(assert (=> d!1629728 d!1630618))

(assert (=> d!1629728 d!1630570))

(assert (=> d!1629728 d!1629780))

(declare-fun d!1630620 () Bool)

(assert (=> d!1630620 (= (height!2135 (ite c!868361 lt!2088044 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))) (ite ((_ is Empty!15558) (ite c!868361 lt!2088044 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))) 0 (ite ((_ is Leaf!25842) (ite c!868361 lt!2088044 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))) 1 (cheight!15769 (ite c!868361 lt!2088044 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))

(assert (=> bm!352449 d!1630620))

(declare-fun d!1630622 () Bool)

(assert (=> d!1630622 (= (max!0 (height!2135 (left!42807 xs!286)) (height!2135 (right!43137 xs!286))) (ite (< (height!2135 (left!42807 xs!286)) (height!2135 (right!43137 xs!286))) (height!2135 (right!43137 xs!286)) (height!2135 (left!42807 xs!286))))))

(assert (=> b!5060688 d!1630622))

(assert (=> b!5060688 d!1629428))

(assert (=> b!5060688 d!1629430))

(declare-fun d!1630624 () Bool)

(declare-fun lt!2088224 () Int)

(assert (=> d!1630624 (>= lt!2088224 0)))

(declare-fun e!3159263 () Int)

(assert (=> d!1630624 (= lt!2088224 e!3159263)))

(declare-fun c!868641 () Bool)

(assert (=> d!1630624 (= c!868641 ((_ is Nil!58428) (innerList!15646 (xs!18896 (left!42807 ys!41)))))))

(assert (=> d!1630624 (= (size!39065 (innerList!15646 (xs!18896 (left!42807 ys!41)))) lt!2088224)))

(declare-fun b!5061718 () Bool)

(assert (=> b!5061718 (= e!3159263 0)))

(declare-fun b!5061719 () Bool)

(assert (=> b!5061719 (= e!3159263 (+ 1 (size!39065 (t!371255 (innerList!15646 (xs!18896 (left!42807 ys!41)))))))))

(assert (= (and d!1630624 c!868641) b!5061718))

(assert (= (and d!1630624 (not c!868641)) b!5061719))

(declare-fun m!6100500 () Bool)

(assert (=> b!5061719 m!6100500))

(assert (=> d!1629756 d!1630624))

(assert (=> bm!352429 d!1629772))

(declare-fun d!1630626 () Bool)

(declare-fun c!868642 () Bool)

(assert (=> d!1630626 (= c!868642 ((_ is Nil!58428) (t!371255 (list!18977 ys!41))))))

(declare-fun e!3159264 () (InoxSet T!105076))

(assert (=> d!1630626 (= (content!10414 (t!371255 (list!18977 ys!41))) e!3159264)))

(declare-fun b!5061720 () Bool)

(assert (=> b!5061720 (= e!3159264 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061721 () Bool)

(assert (=> b!5061721 (= e!3159264 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (t!371255 (list!18977 ys!41))) true) (content!10414 (t!371255 (t!371255 (list!18977 ys!41))))))))

(assert (= (and d!1630626 c!868642) b!5061720))

(assert (= (and d!1630626 (not c!868642)) b!5061721))

(declare-fun m!6100502 () Bool)

(assert (=> b!5061721 m!6100502))

(declare-fun m!6100504 () Bool)

(assert (=> b!5061721 m!6100504))

(assert (=> b!5060686 d!1630626))

(declare-fun d!1630628 () Bool)

(declare-fun e!3159265 () Bool)

(assert (=> d!1630628 e!3159265))

(declare-fun res!2155299 () Bool)

(assert (=> d!1630628 (=> (not res!2155299) (not e!3159265))))

(declare-fun lt!2088225 () List!58552)

(assert (=> d!1630628 (= res!2155299 (= (content!10414 lt!2088225) ((_ map or) (content!10414 call!352447) (content!10414 (list!18977 (right!43137 ys!41))))))))

(declare-fun e!3159266 () List!58552)

(assert (=> d!1630628 (= lt!2088225 e!3159266)))

(declare-fun c!868643 () Bool)

(assert (=> d!1630628 (= c!868643 ((_ is Nil!58428) call!352447))))

(assert (=> d!1630628 (= (++!12779 call!352447 (list!18977 (right!43137 ys!41))) lt!2088225)))

(declare-fun b!5061725 () Bool)

(assert (=> b!5061725 (= e!3159265 (or (not (= (list!18977 (right!43137 ys!41)) Nil!58428)) (= lt!2088225 call!352447)))))

(declare-fun b!5061724 () Bool)

(declare-fun res!2155298 () Bool)

(assert (=> b!5061724 (=> (not res!2155298) (not e!3159265))))

(assert (=> b!5061724 (= res!2155298 (= (size!39065 lt!2088225) (+ (size!39065 call!352447) (size!39065 (list!18977 (right!43137 ys!41))))))))

(declare-fun b!5061722 () Bool)

(assert (=> b!5061722 (= e!3159266 (list!18977 (right!43137 ys!41)))))

(declare-fun b!5061723 () Bool)

(assert (=> b!5061723 (= e!3159266 (Cons!58428 (h!64876 call!352447) (++!12779 (t!371255 call!352447) (list!18977 (right!43137 ys!41)))))))

(assert (= (and d!1630628 c!868643) b!5061722))

(assert (= (and d!1630628 (not c!868643)) b!5061723))

(assert (= (and d!1630628 res!2155299) b!5061724))

(assert (= (and b!5061724 res!2155298) b!5061725))

(declare-fun m!6100506 () Bool)

(assert (=> d!1630628 m!6100506))

(declare-fun m!6100508 () Bool)

(assert (=> d!1630628 m!6100508))

(assert (=> d!1630628 m!6097074))

(assert (=> d!1630628 m!6098240))

(declare-fun m!6100510 () Bool)

(assert (=> b!5061724 m!6100510))

(declare-fun m!6100512 () Bool)

(assert (=> b!5061724 m!6100512))

(assert (=> b!5061724 m!6097074))

(assert (=> b!5061724 m!6098246))

(assert (=> b!5061723 m!6097074))

(declare-fun m!6100514 () Bool)

(assert (=> b!5061723 m!6100514))

(assert (=> bm!352443 d!1630628))

(declare-fun d!1630630 () Bool)

(declare-fun c!868644 () Bool)

(assert (=> d!1630630 (= c!868644 ((_ is Nil!58428) lt!2088038))))

(declare-fun e!3159267 () (InoxSet T!105076))

(assert (=> d!1630630 (= (content!10414 lt!2088038) e!3159267)))

(declare-fun b!5061726 () Bool)

(assert (=> b!5061726 (= e!3159267 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061727 () Bool)

(assert (=> b!5061727 (= e!3159267 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 lt!2088038) true) (content!10414 (t!371255 lt!2088038))))))

(assert (= (and d!1630630 c!868644) b!5061726))

(assert (= (and d!1630630 (not c!868644)) b!5061727))

(declare-fun m!6100516 () Bool)

(assert (=> b!5061727 m!6100516))

(declare-fun m!6100518 () Bool)

(assert (=> b!5061727 m!6100518))

(assert (=> d!1629772 d!1630630))

(assert (=> d!1629772 d!1629778))

(declare-fun d!1630632 () Bool)

(declare-fun c!868645 () Bool)

(assert (=> d!1630632 (= c!868645 ((_ is Nil!58428) (list!18977 (left!42807 (left!42807 ys!41)))))))

(declare-fun e!3159268 () (InoxSet T!105076))

(assert (=> d!1630632 (= (content!10414 (list!18977 (left!42807 (left!42807 ys!41)))) e!3159268)))

(declare-fun b!5061728 () Bool)

(assert (=> b!5061728 (= e!3159268 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061729 () Bool)

(assert (=> b!5061729 (= e!3159268 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 (left!42807 (left!42807 ys!41)))) true) (content!10414 (t!371255 (list!18977 (left!42807 (left!42807 ys!41)))))))))

(assert (= (and d!1630632 c!868645) b!5061728))

(assert (= (and d!1630632 (not c!868645)) b!5061729))

(declare-fun m!6100520 () Bool)

(assert (=> b!5061729 m!6100520))

(declare-fun m!6100522 () Bool)

(assert (=> b!5061729 m!6100522))

(assert (=> d!1629772 d!1630632))

(assert (=> b!5060509 d!1630530))

(assert (=> b!5060509 d!1630532))

(declare-fun d!1630634 () Bool)

(declare-fun res!2155300 () Bool)

(declare-fun e!3159269 () Bool)

(assert (=> d!1630634 (=> (not res!2155300) (not e!3159269))))

(assert (=> d!1630634 (= res!2155300 (= (csize!31346 (right!43137 (left!42807 xs!286))) (+ (size!39064 (left!42807 (right!43137 (left!42807 xs!286)))) (size!39064 (right!43137 (right!43137 (left!42807 xs!286)))))))))

(assert (=> d!1630634 (= (inv!77526 (right!43137 (left!42807 xs!286))) e!3159269)))

(declare-fun b!5061730 () Bool)

(declare-fun res!2155301 () Bool)

(assert (=> b!5061730 (=> (not res!2155301) (not e!3159269))))

(assert (=> b!5061730 (= res!2155301 (and (not (= (left!42807 (right!43137 (left!42807 xs!286))) Empty!15558)) (not (= (right!43137 (right!43137 (left!42807 xs!286))) Empty!15558))))))

(declare-fun b!5061731 () Bool)

(declare-fun res!2155302 () Bool)

(assert (=> b!5061731 (=> (not res!2155302) (not e!3159269))))

(assert (=> b!5061731 (= res!2155302 (= (cheight!15769 (right!43137 (left!42807 xs!286))) (+ (max!0 (height!2135 (left!42807 (right!43137 (left!42807 xs!286)))) (height!2135 (right!43137 (right!43137 (left!42807 xs!286))))) 1)))))

(declare-fun b!5061732 () Bool)

(assert (=> b!5061732 (= e!3159269 (<= 0 (cheight!15769 (right!43137 (left!42807 xs!286)))))))

(assert (= (and d!1630634 res!2155300) b!5061730))

(assert (= (and b!5061730 res!2155301) b!5061731))

(assert (= (and b!5061731 res!2155302) b!5061732))

(declare-fun m!6100524 () Bool)

(assert (=> d!1630634 m!6100524))

(declare-fun m!6100526 () Bool)

(assert (=> d!1630634 m!6100526))

(declare-fun m!6100528 () Bool)

(assert (=> b!5061731 m!6100528))

(declare-fun m!6100530 () Bool)

(assert (=> b!5061731 m!6100530))

(assert (=> b!5061731 m!6100528))

(assert (=> b!5061731 m!6100530))

(declare-fun m!6100532 () Bool)

(assert (=> b!5061731 m!6100532))

(assert (=> b!5060724 d!1630634))

(declare-fun d!1630636 () Bool)

(declare-fun e!3159270 () Bool)

(assert (=> d!1630636 e!3159270))

(declare-fun res!2155304 () Bool)

(assert (=> d!1630636 (=> (not res!2155304) (not e!3159270))))

(declare-fun lt!2088226 () List!58552)

(assert (=> d!1630636 (= res!2155304 (= (content!10414 lt!2088226) ((_ map or) (content!10414 (list!18977 (left!42807 (right!43137 (right!43137 xs!286))))) (content!10414 (list!18977 (right!43137 (right!43137 (right!43137 xs!286))))))))))

(declare-fun e!3159271 () List!58552)

(assert (=> d!1630636 (= lt!2088226 e!3159271)))

(declare-fun c!868646 () Bool)

(assert (=> d!1630636 (= c!868646 ((_ is Nil!58428) (list!18977 (left!42807 (right!43137 (right!43137 xs!286))))))))

(assert (=> d!1630636 (= (++!12779 (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) (list!18977 (right!43137 (right!43137 (right!43137 xs!286))))) lt!2088226)))

(declare-fun b!5061736 () Bool)

(assert (=> b!5061736 (= e!3159270 (or (not (= (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) Nil!58428)) (= lt!2088226 (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))))))))

(declare-fun b!5061735 () Bool)

(declare-fun res!2155303 () Bool)

(assert (=> b!5061735 (=> (not res!2155303) (not e!3159270))))

(assert (=> b!5061735 (= res!2155303 (= (size!39065 lt!2088226) (+ (size!39065 (list!18977 (left!42807 (right!43137 (right!43137 xs!286))))) (size!39065 (list!18977 (right!43137 (right!43137 (right!43137 xs!286))))))))))

(declare-fun b!5061733 () Bool)

(assert (=> b!5061733 (= e!3159271 (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5061734 () Bool)

(assert (=> b!5061734 (= e!3159271 (Cons!58428 (h!64876 (list!18977 (left!42807 (right!43137 (right!43137 xs!286))))) (++!12779 (t!371255 (list!18977 (left!42807 (right!43137 (right!43137 xs!286))))) (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))))))))

(assert (= (and d!1630636 c!868646) b!5061733))

(assert (= (and d!1630636 (not c!868646)) b!5061734))

(assert (= (and d!1630636 res!2155304) b!5061735))

(assert (= (and b!5061735 res!2155303) b!5061736))

(declare-fun m!6100534 () Bool)

(assert (=> d!1630636 m!6100534))

(assert (=> d!1630636 m!6098000))

(declare-fun m!6100536 () Bool)

(assert (=> d!1630636 m!6100536))

(assert (=> d!1630636 m!6098002))

(declare-fun m!6100538 () Bool)

(assert (=> d!1630636 m!6100538))

(declare-fun m!6100540 () Bool)

(assert (=> b!5061735 m!6100540))

(assert (=> b!5061735 m!6098000))

(declare-fun m!6100542 () Bool)

(assert (=> b!5061735 m!6100542))

(assert (=> b!5061735 m!6098002))

(declare-fun m!6100544 () Bool)

(assert (=> b!5061735 m!6100544))

(assert (=> b!5061734 m!6098002))

(declare-fun m!6100546 () Bool)

(assert (=> b!5061734 m!6100546))

(assert (=> b!5060518 d!1630636))

(declare-fun b!5061738 () Bool)

(declare-fun e!3159272 () List!58552)

(declare-fun e!3159273 () List!58552)

(assert (=> b!5061738 (= e!3159272 e!3159273)))

(declare-fun c!868648 () Bool)

(assert (=> b!5061738 (= c!868648 ((_ is Leaf!25842) (left!42807 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5061739 () Bool)

(assert (=> b!5061739 (= e!3159273 (list!18979 (xs!18896 (left!42807 (right!43137 (right!43137 xs!286))))))))

(declare-fun b!5061737 () Bool)

(assert (=> b!5061737 (= e!3159272 Nil!58428)))

(declare-fun b!5061740 () Bool)

(assert (=> b!5061740 (= e!3159273 (++!12779 (list!18977 (left!42807 (left!42807 (right!43137 (right!43137 xs!286))))) (list!18977 (right!43137 (left!42807 (right!43137 (right!43137 xs!286)))))))))

(declare-fun d!1630638 () Bool)

(declare-fun c!868647 () Bool)

(assert (=> d!1630638 (= c!868647 ((_ is Empty!15558) (left!42807 (right!43137 (right!43137 xs!286)))))))

(assert (=> d!1630638 (= (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) e!3159272)))

(assert (= (and d!1630638 c!868647) b!5061737))

(assert (= (and d!1630638 (not c!868647)) b!5061738))

(assert (= (and b!5061738 c!868648) b!5061739))

(assert (= (and b!5061738 (not c!868648)) b!5061740))

(declare-fun m!6100548 () Bool)

(assert (=> b!5061739 m!6100548))

(declare-fun m!6100550 () Bool)

(assert (=> b!5061740 m!6100550))

(declare-fun m!6100552 () Bool)

(assert (=> b!5061740 m!6100552))

(assert (=> b!5061740 m!6100550))

(assert (=> b!5061740 m!6100552))

(declare-fun m!6100554 () Bool)

(assert (=> b!5061740 m!6100554))

(assert (=> b!5060518 d!1630638))

(declare-fun b!5061742 () Bool)

(declare-fun e!3159274 () List!58552)

(declare-fun e!3159275 () List!58552)

(assert (=> b!5061742 (= e!3159274 e!3159275)))

(declare-fun c!868650 () Bool)

(assert (=> b!5061742 (= c!868650 ((_ is Leaf!25842) (right!43137 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5061743 () Bool)

(assert (=> b!5061743 (= e!3159275 (list!18979 (xs!18896 (right!43137 (right!43137 (right!43137 xs!286))))))))

(declare-fun b!5061741 () Bool)

(assert (=> b!5061741 (= e!3159274 Nil!58428)))

(declare-fun b!5061744 () Bool)

(assert (=> b!5061744 (= e!3159275 (++!12779 (list!18977 (left!42807 (right!43137 (right!43137 (right!43137 xs!286))))) (list!18977 (right!43137 (right!43137 (right!43137 (right!43137 xs!286)))))))))

(declare-fun d!1630640 () Bool)

(declare-fun c!868649 () Bool)

(assert (=> d!1630640 (= c!868649 ((_ is Empty!15558) (right!43137 (right!43137 (right!43137 xs!286)))))))

(assert (=> d!1630640 (= (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) e!3159274)))

(assert (= (and d!1630640 c!868649) b!5061741))

(assert (= (and d!1630640 (not c!868649)) b!5061742))

(assert (= (and b!5061742 c!868650) b!5061743))

(assert (= (and b!5061742 (not c!868650)) b!5061744))

(declare-fun m!6100556 () Bool)

(assert (=> b!5061743 m!6100556))

(declare-fun m!6100558 () Bool)

(assert (=> b!5061744 m!6100558))

(declare-fun m!6100560 () Bool)

(assert (=> b!5061744 m!6100560))

(assert (=> b!5061744 m!6100558))

(assert (=> b!5061744 m!6100560))

(declare-fun m!6100562 () Bool)

(assert (=> b!5061744 m!6100562))

(assert (=> b!5060518 d!1630640))

(declare-fun d!1630642 () Bool)

(declare-fun res!2155305 () Bool)

(declare-fun e!3159276 () Bool)

(assert (=> d!1630642 (=> (not res!2155305) (not e!3159276))))

(assert (=> d!1630642 (= res!2155305 (= (csize!31346 (right!43137 (right!43137 xs!286))) (+ (size!39064 (left!42807 (right!43137 (right!43137 xs!286)))) (size!39064 (right!43137 (right!43137 (right!43137 xs!286)))))))))

(assert (=> d!1630642 (= (inv!77526 (right!43137 (right!43137 xs!286))) e!3159276)))

(declare-fun b!5061745 () Bool)

(declare-fun res!2155306 () Bool)

(assert (=> b!5061745 (=> (not res!2155306) (not e!3159276))))

(assert (=> b!5061745 (= res!2155306 (and (not (= (left!42807 (right!43137 (right!43137 xs!286))) Empty!15558)) (not (= (right!43137 (right!43137 (right!43137 xs!286))) Empty!15558))))))

(declare-fun b!5061746 () Bool)

(declare-fun res!2155307 () Bool)

(assert (=> b!5061746 (=> (not res!2155307) (not e!3159276))))

(assert (=> b!5061746 (= res!2155307 (= (cheight!15769 (right!43137 (right!43137 xs!286))) (+ (max!0 (height!2135 (left!42807 (right!43137 (right!43137 xs!286)))) (height!2135 (right!43137 (right!43137 (right!43137 xs!286))))) 1)))))

(declare-fun b!5061747 () Bool)

(assert (=> b!5061747 (= e!3159276 (<= 0 (cheight!15769 (right!43137 (right!43137 xs!286)))))))

(assert (= (and d!1630642 res!2155305) b!5061745))

(assert (= (and b!5061745 res!2155306) b!5061746))

(assert (= (and b!5061746 res!2155307) b!5061747))

(declare-fun m!6100564 () Bool)

(assert (=> d!1630642 m!6100564))

(declare-fun m!6100566 () Bool)

(assert (=> d!1630642 m!6100566))

(declare-fun m!6100568 () Bool)

(assert (=> b!5061746 m!6100568))

(declare-fun m!6100570 () Bool)

(assert (=> b!5061746 m!6100570))

(assert (=> b!5061746 m!6100568))

(assert (=> b!5061746 m!6100570))

(declare-fun m!6100572 () Bool)

(assert (=> b!5061746 m!6100572))

(assert (=> b!5060749 d!1630642))

(declare-fun d!1630644 () Bool)

(assert (=> d!1630644 (= (height!2135 lt!2088045) (ite ((_ is Empty!15558) lt!2088045) 0 (ite ((_ is Leaf!25842) lt!2088045) 1 (cheight!15769 lt!2088045))))))

(assert (=> b!5060710 d!1630644))

(declare-fun d!1630646 () Bool)

(assert (=> d!1630646 (= (max!0 (height!2135 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (height!2135 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (ite (< (height!2135 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (height!2135 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (height!2135 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (height!2135 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))))

(assert (=> b!5060710 d!1630646))

(declare-fun d!1630648 () Bool)

(assert (=> d!1630648 (= (height!2135 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite ((_ is Empty!15558) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) 0 (ite ((_ is Leaf!25842) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) 1 (cheight!15769 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))))

(assert (=> b!5060710 d!1630648))

(declare-fun d!1630650 () Bool)

(assert (=> d!1630650 (= (height!2135 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (ite ((_ is Empty!15558) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) 0 (ite ((_ is Leaf!25842) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) 1 (cheight!15769 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(assert (=> b!5060710 d!1630650))

(declare-fun d!1630652 () Bool)

(declare-fun lt!2088227 () Bool)

(assert (=> d!1630652 (= lt!2088227 (isEmpty!31621 (list!18977 (right!43137 (left!42807 xs!286)))))))

(assert (=> d!1630652 (= lt!2088227 (= (size!39064 (right!43137 (left!42807 xs!286))) 0))))

(assert (=> d!1630652 (= (isEmpty!31619 (right!43137 (left!42807 xs!286))) lt!2088227)))

(declare-fun bs!1189669 () Bool)

(assert (= bs!1189669 d!1630652))

(assert (=> bs!1189669 m!6097994))

(assert (=> bs!1189669 m!6097994))

(declare-fun m!6100574 () Bool)

(assert (=> bs!1189669 m!6100574))

(assert (=> bs!1189669 m!6098442))

(assert (=> b!5060508 d!1630652))

(declare-fun d!1630654 () Bool)

(declare-fun e!3159277 () Bool)

(assert (=> d!1630654 e!3159277))

(declare-fun res!2155309 () Bool)

(assert (=> d!1630654 (=> (not res!2155309) (not e!3159277))))

(declare-fun lt!2088228 () List!58552)

(assert (=> d!1630654 (= res!2155309 (= (content!10414 lt!2088228) ((_ map or) (content!10414 (list!18977 (left!42807 (right!43137 (left!42807 ys!41))))) (content!10414 (list!18977 (right!43137 (right!43137 (left!42807 ys!41))))))))))

(declare-fun e!3159278 () List!58552)

(assert (=> d!1630654 (= lt!2088228 e!3159278)))

(declare-fun c!868651 () Bool)

(assert (=> d!1630654 (= c!868651 ((_ is Nil!58428) (list!18977 (left!42807 (right!43137 (left!42807 ys!41))))))))

(assert (=> d!1630654 (= (++!12779 (list!18977 (left!42807 (right!43137 (left!42807 ys!41)))) (list!18977 (right!43137 (right!43137 (left!42807 ys!41))))) lt!2088228)))

(declare-fun b!5061751 () Bool)

(assert (=> b!5061751 (= e!3159277 (or (not (= (list!18977 (right!43137 (right!43137 (left!42807 ys!41)))) Nil!58428)) (= lt!2088228 (list!18977 (left!42807 (right!43137 (left!42807 ys!41)))))))))

(declare-fun b!5061750 () Bool)

(declare-fun res!2155308 () Bool)

(assert (=> b!5061750 (=> (not res!2155308) (not e!3159277))))

(assert (=> b!5061750 (= res!2155308 (= (size!39065 lt!2088228) (+ (size!39065 (list!18977 (left!42807 (right!43137 (left!42807 ys!41))))) (size!39065 (list!18977 (right!43137 (right!43137 (left!42807 ys!41))))))))))

(declare-fun b!5061748 () Bool)

(assert (=> b!5061748 (= e!3159278 (list!18977 (right!43137 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5061749 () Bool)

(assert (=> b!5061749 (= e!3159278 (Cons!58428 (h!64876 (list!18977 (left!42807 (right!43137 (left!42807 ys!41))))) (++!12779 (t!371255 (list!18977 (left!42807 (right!43137 (left!42807 ys!41))))) (list!18977 (right!43137 (right!43137 (left!42807 ys!41)))))))))

(assert (= (and d!1630654 c!868651) b!5061748))

(assert (= (and d!1630654 (not c!868651)) b!5061749))

(assert (= (and d!1630654 res!2155309) b!5061750))

(assert (= (and b!5061750 res!2155308) b!5061751))

(declare-fun m!6100576 () Bool)

(assert (=> d!1630654 m!6100576))

(assert (=> d!1630654 m!6098068))

(declare-fun m!6100578 () Bool)

(assert (=> d!1630654 m!6100578))

(assert (=> d!1630654 m!6098070))

(declare-fun m!6100580 () Bool)

(assert (=> d!1630654 m!6100580))

(declare-fun m!6100582 () Bool)

(assert (=> b!5061750 m!6100582))

(assert (=> b!5061750 m!6098068))

(declare-fun m!6100584 () Bool)

(assert (=> b!5061750 m!6100584))

(assert (=> b!5061750 m!6098070))

(declare-fun m!6100586 () Bool)

(assert (=> b!5061750 m!6100586))

(assert (=> b!5061749 m!6098070))

(declare-fun m!6100588 () Bool)

(assert (=> b!5061749 m!6100588))

(assert (=> b!5060548 d!1630654))

(declare-fun b!5061753 () Bool)

(declare-fun e!3159279 () List!58552)

(declare-fun e!3159280 () List!58552)

(assert (=> b!5061753 (= e!3159279 e!3159280)))

(declare-fun c!868653 () Bool)

(assert (=> b!5061753 (= c!868653 ((_ is Leaf!25842) (left!42807 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5061754 () Bool)

(assert (=> b!5061754 (= e!3159280 (list!18979 (xs!18896 (left!42807 (right!43137 (left!42807 ys!41))))))))

(declare-fun b!5061752 () Bool)

(assert (=> b!5061752 (= e!3159279 Nil!58428)))

(declare-fun b!5061755 () Bool)

(assert (=> b!5061755 (= e!3159280 (++!12779 (list!18977 (left!42807 (left!42807 (right!43137 (left!42807 ys!41))))) (list!18977 (right!43137 (left!42807 (right!43137 (left!42807 ys!41)))))))))

(declare-fun d!1630656 () Bool)

(declare-fun c!868652 () Bool)

(assert (=> d!1630656 (= c!868652 ((_ is Empty!15558) (left!42807 (right!43137 (left!42807 ys!41)))))))

(assert (=> d!1630656 (= (list!18977 (left!42807 (right!43137 (left!42807 ys!41)))) e!3159279)))

(assert (= (and d!1630656 c!868652) b!5061752))

(assert (= (and d!1630656 (not c!868652)) b!5061753))

(assert (= (and b!5061753 c!868653) b!5061754))

(assert (= (and b!5061753 (not c!868653)) b!5061755))

(declare-fun m!6100590 () Bool)

(assert (=> b!5061754 m!6100590))

(declare-fun m!6100592 () Bool)

(assert (=> b!5061755 m!6100592))

(declare-fun m!6100594 () Bool)

(assert (=> b!5061755 m!6100594))

(assert (=> b!5061755 m!6100592))

(assert (=> b!5061755 m!6100594))

(declare-fun m!6100596 () Bool)

(assert (=> b!5061755 m!6100596))

(assert (=> b!5060548 d!1630656))

(declare-fun b!5061757 () Bool)

(declare-fun e!3159281 () List!58552)

(declare-fun e!3159282 () List!58552)

(assert (=> b!5061757 (= e!3159281 e!3159282)))

(declare-fun c!868655 () Bool)

(assert (=> b!5061757 (= c!868655 ((_ is Leaf!25842) (right!43137 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5061758 () Bool)

(assert (=> b!5061758 (= e!3159282 (list!18979 (xs!18896 (right!43137 (right!43137 (left!42807 ys!41))))))))

(declare-fun b!5061756 () Bool)

(assert (=> b!5061756 (= e!3159281 Nil!58428)))

(declare-fun b!5061759 () Bool)

(assert (=> b!5061759 (= e!3159282 (++!12779 (list!18977 (left!42807 (right!43137 (right!43137 (left!42807 ys!41))))) (list!18977 (right!43137 (right!43137 (right!43137 (left!42807 ys!41)))))))))

(declare-fun d!1630658 () Bool)

(declare-fun c!868654 () Bool)

(assert (=> d!1630658 (= c!868654 ((_ is Empty!15558) (right!43137 (right!43137 (left!42807 ys!41)))))))

(assert (=> d!1630658 (= (list!18977 (right!43137 (right!43137 (left!42807 ys!41)))) e!3159281)))

(assert (= (and d!1630658 c!868654) b!5061756))

(assert (= (and d!1630658 (not c!868654)) b!5061757))

(assert (= (and b!5061757 c!868655) b!5061758))

(assert (= (and b!5061757 (not c!868655)) b!5061759))

(declare-fun m!6100598 () Bool)

(assert (=> b!5061758 m!6100598))

(declare-fun m!6100600 () Bool)

(assert (=> b!5061759 m!6100600))

(declare-fun m!6100602 () Bool)

(assert (=> b!5061759 m!6100602))

(assert (=> b!5061759 m!6100600))

(assert (=> b!5061759 m!6100602))

(declare-fun m!6100604 () Bool)

(assert (=> b!5061759 m!6100604))

(assert (=> b!5060548 d!1630658))

(declare-fun d!1630660 () Bool)

(declare-fun lt!2088229 () Int)

(assert (=> d!1630660 (>= lt!2088229 0)))

(declare-fun e!3159283 () Int)

(assert (=> d!1630660 (= lt!2088229 e!3159283)))

(declare-fun c!868656 () Bool)

(assert (=> d!1630660 (= c!868656 ((_ is Nil!58428) lt!2088033))))

(assert (=> d!1630660 (= (size!39065 lt!2088033) lt!2088229)))

(declare-fun b!5061760 () Bool)

(assert (=> b!5061760 (= e!3159283 0)))

(declare-fun b!5061761 () Bool)

(assert (=> b!5061761 (= e!3159283 (+ 1 (size!39065 (t!371255 lt!2088033))))))

(assert (= (and d!1630660 c!868656) b!5061760))

(assert (= (and d!1630660 (not c!868656)) b!5061761))

(declare-fun m!6100606 () Bool)

(assert (=> b!5061761 m!6100606))

(assert (=> b!5060622 d!1630660))

(declare-fun d!1630662 () Bool)

(declare-fun lt!2088230 () Int)

(assert (=> d!1630662 (>= lt!2088230 0)))

(declare-fun e!3159284 () Int)

(assert (=> d!1630662 (= lt!2088230 e!3159284)))

(declare-fun c!868657 () Bool)

(assert (=> d!1630662 (= c!868657 ((_ is Nil!58428) (list!18977 (left!42807 lt!2087928))))))

(assert (=> d!1630662 (= (size!39065 (list!18977 (left!42807 lt!2087928))) lt!2088230)))

(declare-fun b!5061762 () Bool)

(assert (=> b!5061762 (= e!3159284 0)))

(declare-fun b!5061763 () Bool)

(assert (=> b!5061763 (= e!3159284 (+ 1 (size!39065 (t!371255 (list!18977 (left!42807 lt!2087928))))))))

(assert (= (and d!1630662 c!868657) b!5061762))

(assert (= (and d!1630662 (not c!868657)) b!5061763))

(declare-fun m!6100608 () Bool)

(assert (=> b!5061763 m!6100608))

(assert (=> b!5060622 d!1630662))

(declare-fun d!1630664 () Bool)

(declare-fun lt!2088231 () Int)

(assert (=> d!1630664 (>= lt!2088231 0)))

(declare-fun e!3159285 () Int)

(assert (=> d!1630664 (= lt!2088231 e!3159285)))

(declare-fun c!868658 () Bool)

(assert (=> d!1630664 (= c!868658 ((_ is Nil!58428) (list!18977 (right!43137 lt!2087928))))))

(assert (=> d!1630664 (= (size!39065 (list!18977 (right!43137 lt!2087928))) lt!2088231)))

(declare-fun b!5061764 () Bool)

(assert (=> b!5061764 (= e!3159285 0)))

(declare-fun b!5061765 () Bool)

(assert (=> b!5061765 (= e!3159285 (+ 1 (size!39065 (t!371255 (list!18977 (right!43137 lt!2087928))))))))

(assert (= (and d!1630664 c!868658) b!5061764))

(assert (= (and d!1630664 (not c!868658)) b!5061765))

(declare-fun m!6100610 () Bool)

(assert (=> b!5061765 m!6100610))

(assert (=> b!5060622 d!1630664))

(declare-fun d!1630666 () Bool)

(declare-fun c!868659 () Bool)

(assert (=> d!1630666 (= c!868659 ((_ is Nil!58428) lt!2088021))))

(declare-fun e!3159286 () (InoxSet T!105076))

(assert (=> d!1630666 (= (content!10414 lt!2088021) e!3159286)))

(declare-fun b!5061766 () Bool)

(assert (=> b!5061766 (= e!3159286 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061767 () Bool)

(assert (=> b!5061767 (= e!3159286 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 lt!2088021) true) (content!10414 (t!371255 lt!2088021))))))

(assert (= (and d!1630666 c!868659) b!5061766))

(assert (= (and d!1630666 (not c!868659)) b!5061767))

(declare-fun m!6100612 () Bool)

(assert (=> b!5061767 m!6100612))

(declare-fun m!6100614 () Bool)

(assert (=> b!5061767 m!6100614))

(assert (=> d!1629666 d!1630666))

(declare-fun d!1630668 () Bool)

(declare-fun c!868660 () Bool)

(assert (=> d!1630668 (= c!868660 ((_ is Nil!58428) (list!18977 (right!43137 (right!43137 xs!286)))))))

(declare-fun e!3159287 () (InoxSet T!105076))

(assert (=> d!1630668 (= (content!10414 (list!18977 (right!43137 (right!43137 xs!286)))) e!3159287)))

(declare-fun b!5061768 () Bool)

(assert (=> b!5061768 (= e!3159287 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061769 () Bool)

(assert (=> b!5061769 (= e!3159287 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 (right!43137 (right!43137 xs!286)))) true) (content!10414 (t!371255 (list!18977 (right!43137 (right!43137 xs!286)))))))))

(assert (= (and d!1630668 c!868660) b!5061768))

(assert (= (and d!1630668 (not c!868660)) b!5061769))

(declare-fun m!6100616 () Bool)

(assert (=> b!5061769 m!6100616))

(declare-fun m!6100618 () Bool)

(assert (=> b!5061769 m!6100618))

(assert (=> d!1629666 d!1630668))

(assert (=> d!1629666 d!1629780))

(declare-fun bm!352549 () Bool)

(declare-fun call!352555 () List!58552)

(assert (=> bm!352549 (= call!352555 (++!12779 (t!371255 (list!18977 xs!286)) (list!18977 (left!42807 ys!41))))))

(declare-fun b!5061770 () Bool)

(declare-fun e!3159288 () Bool)

(declare-fun call!352556 () List!58552)

(declare-fun call!352554 () List!58552)

(assert (=> b!5061770 (= e!3159288 (= call!352556 call!352554))))

(declare-fun bm!352550 () Bool)

(declare-fun call!352557 () List!58552)

(assert (=> bm!352550 (= call!352557 (++!12779 (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))))))

(declare-fun b!5061771 () Bool)

(assert (=> b!5061771 (= e!3159288 (= call!352556 call!352554))))

(declare-fun lt!2088232 () Bool)

(assert (=> b!5061771 (= lt!2088232 (appendAssoc!298 (t!371255 (t!371255 (list!18977 xs!286))) (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))))))

(declare-fun bm!352551 () Bool)

(assert (=> bm!352551 (= call!352556 (++!12779 call!352555 (list!18977 (right!43137 ys!41))))))

(declare-fun d!1630670 () Bool)

(assert (=> d!1630670 e!3159288))

(declare-fun c!868661 () Bool)

(assert (=> d!1630670 (= c!868661 ((_ is Nil!58428) (t!371255 (list!18977 xs!286))))))

(assert (=> d!1630670 (= (appendAssoc!298 (t!371255 (list!18977 xs!286)) (list!18977 (left!42807 ys!41)) (list!18977 (right!43137 ys!41))) true)))

(declare-fun bm!352552 () Bool)

(assert (=> bm!352552 (= call!352554 (++!12779 (t!371255 (list!18977 xs!286)) call!352557))))

(assert (= (and d!1630670 c!868661) b!5061770))

(assert (= (and d!1630670 (not c!868661)) b!5061771))

(assert (= (or b!5061770 b!5061771) bm!352549))

(assert (= (or b!5061770 b!5061771) bm!352550))

(assert (= (or b!5061770 b!5061771) bm!352552))

(assert (= (or b!5061770 b!5061771) bm!352551))

(declare-fun m!6100620 () Bool)

(assert (=> bm!352552 m!6100620))

(assert (=> bm!352549 m!6097078))

(declare-fun m!6100622 () Bool)

(assert (=> bm!352549 m!6100622))

(assert (=> bm!352550 m!6097078))

(assert (=> bm!352550 m!6097074))

(assert (=> bm!352550 m!6097356))

(assert (=> bm!352551 m!6097074))

(declare-fun m!6100624 () Bool)

(assert (=> bm!352551 m!6100624))

(assert (=> b!5061771 m!6097078))

(assert (=> b!5061771 m!6097074))

(declare-fun m!6100626 () Bool)

(assert (=> b!5061771 m!6100626))

(assert (=> b!5060691 d!1630670))

(declare-fun d!1630672 () Bool)

(declare-fun lt!2088233 () Int)

(assert (=> d!1630672 (>= lt!2088233 0)))

(declare-fun e!3159289 () Int)

(assert (=> d!1630672 (= lt!2088233 e!3159289)))

(declare-fun c!868662 () Bool)

(assert (=> d!1630672 (= c!868662 ((_ is Nil!58428) (list!18979 (xs!18896 (left!42807 ys!41)))))))

(assert (=> d!1630672 (= (size!39065 (list!18979 (xs!18896 (left!42807 ys!41)))) lt!2088233)))

(declare-fun b!5061772 () Bool)

(assert (=> b!5061772 (= e!3159289 0)))

(declare-fun b!5061773 () Bool)

(assert (=> b!5061773 (= e!3159289 (+ 1 (size!39065 (t!371255 (list!18979 (xs!18896 (left!42807 ys!41)))))))))

(assert (= (and d!1630672 c!868662) b!5061772))

(assert (= (and d!1630672 (not c!868662)) b!5061773))

(declare-fun m!6100628 () Bool)

(assert (=> b!5061773 m!6100628))

(assert (=> d!1629754 d!1630672))

(assert (=> d!1629754 d!1630510))

(assert (=> b!5060735 d!1630584))

(declare-fun b!5061774 () Bool)

(declare-fun res!2155311 () Bool)

(declare-fun e!3159290 () Bool)

(assert (=> b!5061774 (=> (not res!2155311) (not e!3159290))))

(assert (=> b!5061774 (= res!2155311 (isBalanced!4420 (left!42807 (right!43137 lt!2087966))))))

(declare-fun b!5061775 () Bool)

(declare-fun res!2155312 () Bool)

(assert (=> b!5061775 (=> (not res!2155312) (not e!3159290))))

(assert (=> b!5061775 (= res!2155312 (isBalanced!4420 (right!43137 (right!43137 lt!2087966))))))

(declare-fun b!5061776 () Bool)

(declare-fun res!2155314 () Bool)

(assert (=> b!5061776 (=> (not res!2155314) (not e!3159290))))

(assert (=> b!5061776 (= res!2155314 (not (isEmpty!31619 (left!42807 (right!43137 lt!2087966)))))))

(declare-fun b!5061777 () Bool)

(assert (=> b!5061777 (= e!3159290 (not (isEmpty!31619 (right!43137 (right!43137 lt!2087966)))))))

(declare-fun b!5061778 () Bool)

(declare-fun res!2155315 () Bool)

(assert (=> b!5061778 (=> (not res!2155315) (not e!3159290))))

(assert (=> b!5061778 (= res!2155315 (<= (- (height!2135 (left!42807 (right!43137 lt!2087966))) (height!2135 (right!43137 (right!43137 lt!2087966)))) 1))))

(declare-fun b!5061779 () Bool)

(declare-fun e!3159291 () Bool)

(assert (=> b!5061779 (= e!3159291 e!3159290)))

(declare-fun res!2155313 () Bool)

(assert (=> b!5061779 (=> (not res!2155313) (not e!3159290))))

(assert (=> b!5061779 (= res!2155313 (<= (- 1) (- (height!2135 (left!42807 (right!43137 lt!2087966))) (height!2135 (right!43137 (right!43137 lt!2087966))))))))

(declare-fun d!1630674 () Bool)

(declare-fun res!2155310 () Bool)

(assert (=> d!1630674 (=> res!2155310 e!3159291)))

(assert (=> d!1630674 (= res!2155310 (not ((_ is Node!15558) (right!43137 lt!2087966))))))

(assert (=> d!1630674 (= (isBalanced!4420 (right!43137 lt!2087966)) e!3159291)))

(assert (= (and d!1630674 (not res!2155310)) b!5061779))

(assert (= (and b!5061779 res!2155313) b!5061778))

(assert (= (and b!5061778 res!2155315) b!5061774))

(assert (= (and b!5061774 res!2155311) b!5061775))

(assert (= (and b!5061775 res!2155312) b!5061776))

(assert (= (and b!5061776 res!2155314) b!5061777))

(declare-fun m!6100630 () Bool)

(assert (=> b!5061776 m!6100630))

(declare-fun m!6100632 () Bool)

(assert (=> b!5061778 m!6100632))

(declare-fun m!6100634 () Bool)

(assert (=> b!5061778 m!6100634))

(declare-fun m!6100636 () Bool)

(assert (=> b!5061775 m!6100636))

(declare-fun m!6100638 () Bool)

(assert (=> b!5061777 m!6100638))

(declare-fun m!6100640 () Bool)

(assert (=> b!5061774 m!6100640))

(assert (=> b!5061779 m!6100632))

(assert (=> b!5061779 m!6100634))

(assert (=> b!5060534 d!1630674))

(declare-fun bm!352553 () Bool)

(declare-fun call!352559 () List!58552)

(assert (=> bm!352553 (= call!352559 (++!12779 (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) (list!18977 (right!43137 (right!43137 (right!43137 xs!286))))))))

(declare-fun b!5061780 () Bool)

(declare-fun e!3159292 () Bool)

(declare-fun call!352560 () List!58552)

(declare-fun call!352558 () List!58552)

(assert (=> b!5061780 (= e!3159292 (= call!352560 call!352558))))

(declare-fun bm!352554 () Bool)

(declare-fun call!352561 () List!58552)

(assert (=> bm!352554 (= call!352561 (++!12779 (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41)))))

(declare-fun b!5061781 () Bool)

(assert (=> b!5061781 (= e!3159292 (= call!352560 call!352558))))

(declare-fun lt!2088234 () Bool)

(assert (=> b!5061781 (= lt!2088234 (appendAssoc!298 (t!371255 (list!18977 (left!42807 (right!43137 (right!43137 xs!286))))) (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41)))))

(declare-fun bm!352555 () Bool)

(assert (=> bm!352555 (= call!352560 (++!12779 call!352559 (list!18977 ys!41)))))

(declare-fun d!1630676 () Bool)

(assert (=> d!1630676 e!3159292))

(declare-fun c!868663 () Bool)

(assert (=> d!1630676 (= c!868663 ((_ is Nil!58428) (list!18977 (left!42807 (right!43137 (right!43137 xs!286))))))))

(assert (=> d!1630676 (= (appendAssoc!298 (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41)) true)))

(declare-fun bm!352556 () Bool)

(assert (=> bm!352556 (= call!352558 (++!12779 (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) call!352561))))

(assert (= (and d!1630676 c!868663) b!5061780))

(assert (= (and d!1630676 (not c!868663)) b!5061781))

(assert (= (or b!5061780 b!5061781) bm!352553))

(assert (= (or b!5061780 b!5061781) bm!352554))

(assert (= (or b!5061780 b!5061781) bm!352556))

(assert (= (or b!5061780 b!5061781) bm!352555))

(assert (=> bm!352556 m!6098000))

(declare-fun m!6100642 () Bool)

(assert (=> bm!352556 m!6100642))

(assert (=> bm!352553 m!6098000))

(assert (=> bm!352553 m!6098002))

(assert (=> bm!352553 m!6098004))

(assert (=> bm!352554 m!6098002))

(assert (=> bm!352554 m!6096986))

(assert (=> bm!352554 m!6098166))

(assert (=> bm!352555 m!6096986))

(declare-fun m!6100644 () Bool)

(assert (=> bm!352555 m!6100644))

(assert (=> b!5061781 m!6098002))

(assert (=> b!5061781 m!6096986))

(declare-fun m!6100646 () Bool)

(assert (=> b!5061781 m!6100646))

(assert (=> b!5060597 d!1630676))

(assert (=> b!5060597 d!1630638))

(assert (=> b!5060597 d!1630640))

(assert (=> b!5060597 d!1629454))

(declare-fun d!1630678 () Bool)

(assert (=> d!1630678 (= (list!18979 (xs!18896 (right!43137 lt!2087928))) (innerList!15646 (xs!18896 (right!43137 lt!2087928))))))

(assert (=> b!5060630 d!1630678))

(declare-fun d!1630680 () Bool)

(declare-fun res!2155316 () Bool)

(declare-fun e!3159293 () Bool)

(assert (=> d!1630680 (=> (not res!2155316) (not e!3159293))))

(assert (=> d!1630680 (= res!2155316 (<= (size!39065 (list!18979 (xs!18896 (left!42807 (right!43137 ys!41))))) 512))))

(assert (=> d!1630680 (= (inv!77527 (left!42807 (right!43137 ys!41))) e!3159293)))

(declare-fun b!5061782 () Bool)

(declare-fun res!2155317 () Bool)

(assert (=> b!5061782 (=> (not res!2155317) (not e!3159293))))

(assert (=> b!5061782 (= res!2155317 (= (csize!31347 (left!42807 (right!43137 ys!41))) (size!39065 (list!18979 (xs!18896 (left!42807 (right!43137 ys!41)))))))))

(declare-fun b!5061783 () Bool)

(assert (=> b!5061783 (= e!3159293 (and (> (csize!31347 (left!42807 (right!43137 ys!41))) 0) (<= (csize!31347 (left!42807 (right!43137 ys!41))) 512)))))

(assert (= (and d!1630680 res!2155316) b!5061782))

(assert (= (and b!5061782 res!2155317) b!5061783))

(declare-fun m!6100648 () Bool)

(assert (=> d!1630680 m!6100648))

(assert (=> d!1630680 m!6100648))

(declare-fun m!6100650 () Bool)

(assert (=> d!1630680 m!6100650))

(assert (=> b!5061782 m!6100648))

(assert (=> b!5061782 m!6100648))

(assert (=> b!5061782 m!6100650))

(assert (=> b!5060551 d!1630680))

(assert (=> bm!352461 d!1630534))

(declare-fun d!1630682 () Bool)

(declare-fun lt!2088235 () Bool)

(assert (=> d!1630682 (= lt!2088235 (isEmpty!31621 (list!18977 (left!42807 (left!42807 lt!2087928)))))))

(assert (=> d!1630682 (= lt!2088235 (= (size!39064 (left!42807 (left!42807 lt!2087928))) 0))))

(assert (=> d!1630682 (= (isEmpty!31619 (left!42807 (left!42807 lt!2087928))) lt!2088235)))

(declare-fun bs!1189670 () Bool)

(assert (= bs!1189670 d!1630682))

(assert (=> bs!1189670 m!6098222))

(assert (=> bs!1189670 m!6098222))

(declare-fun m!6100652 () Bool)

(assert (=> bs!1189670 m!6100652))

(declare-fun m!6100654 () Bool)

(assert (=> bs!1189670 m!6100654))

(assert (=> b!5060715 d!1630682))

(declare-fun d!1630684 () Bool)

(declare-fun lt!2088236 () Int)

(assert (=> d!1630684 (>= lt!2088236 0)))

(declare-fun e!3159294 () Int)

(assert (=> d!1630684 (= lt!2088236 e!3159294)))

(declare-fun c!868664 () Bool)

(assert (=> d!1630684 (= c!868664 ((_ is Nil!58428) (t!371255 (innerList!15646 (xs!18896 ys!41)))))))

(assert (=> d!1630684 (= (size!39065 (t!371255 (innerList!15646 (xs!18896 ys!41)))) lt!2088236)))

(declare-fun b!5061784 () Bool)

(assert (=> b!5061784 (= e!3159294 0)))

(declare-fun b!5061785 () Bool)

(assert (=> b!5061785 (= e!3159294 (+ 1 (size!39065 (t!371255 (t!371255 (innerList!15646 (xs!18896 ys!41)))))))))

(assert (= (and d!1630684 c!868664) b!5061784))

(assert (= (and d!1630684 (not c!868664)) b!5061785))

(declare-fun m!6100656 () Bool)

(assert (=> b!5061785 m!6100656))

(assert (=> b!5060498 d!1630684))

(assert (=> bm!352433 d!1629700))

(declare-fun d!1630686 () Bool)

(declare-fun e!3159295 () Bool)

(assert (=> d!1630686 e!3159295))

(declare-fun res!2155319 () Bool)

(assert (=> d!1630686 (=> (not res!2155319) (not e!3159295))))

(declare-fun lt!2088237 () List!58552)

(assert (=> d!1630686 (= res!2155319 (= (content!10414 lt!2088237) ((_ map or) (content!10414 (t!371255 (t!371255 (list!18977 xs!286)))) (content!10414 (list!18977 ys!41)))))))

(declare-fun e!3159296 () List!58552)

(assert (=> d!1630686 (= lt!2088237 e!3159296)))

(declare-fun c!868665 () Bool)

(assert (=> d!1630686 (= c!868665 ((_ is Nil!58428) (t!371255 (t!371255 (list!18977 xs!286)))))))

(assert (=> d!1630686 (= (++!12779 (t!371255 (t!371255 (list!18977 xs!286))) (list!18977 ys!41)) lt!2088237)))

(declare-fun b!5061789 () Bool)

(assert (=> b!5061789 (= e!3159295 (or (not (= (list!18977 ys!41) Nil!58428)) (= lt!2088237 (t!371255 (t!371255 (list!18977 xs!286))))))))

(declare-fun b!5061788 () Bool)

(declare-fun res!2155318 () Bool)

(assert (=> b!5061788 (=> (not res!2155318) (not e!3159295))))

(assert (=> b!5061788 (= res!2155318 (= (size!39065 lt!2088237) (+ (size!39065 (t!371255 (t!371255 (list!18977 xs!286)))) (size!39065 (list!18977 ys!41)))))))

(declare-fun b!5061786 () Bool)

(assert (=> b!5061786 (= e!3159296 (list!18977 ys!41))))

(declare-fun b!5061787 () Bool)

(assert (=> b!5061787 (= e!3159296 (Cons!58428 (h!64876 (t!371255 (t!371255 (list!18977 xs!286)))) (++!12779 (t!371255 (t!371255 (t!371255 (list!18977 xs!286)))) (list!18977 ys!41))))))

(assert (= (and d!1630686 c!868665) b!5061786))

(assert (= (and d!1630686 (not c!868665)) b!5061787))

(assert (= (and d!1630686 res!2155319) b!5061788))

(assert (= (and b!5061788 res!2155318) b!5061789))

(declare-fun m!6100658 () Bool)

(assert (=> d!1630686 m!6100658))

(assert (=> d!1630686 m!6100416))

(assert (=> d!1630686 m!6096986))

(assert (=> d!1630686 m!6097340))

(declare-fun m!6100660 () Bool)

(assert (=> b!5061788 m!6100660))

(assert (=> b!5061788 m!6100430))

(assert (=> b!5061788 m!6096986))

(assert (=> b!5061788 m!6097346))

(assert (=> b!5061787 m!6096986))

(declare-fun m!6100662 () Bool)

(assert (=> b!5061787 m!6100662))

(assert (=> b!5060612 d!1630686))

(declare-fun d!1630688 () Bool)

(declare-fun lt!2088238 () Int)

(assert (=> d!1630688 (>= lt!2088238 0)))

(declare-fun e!3159297 () Int)

(assert (=> d!1630688 (= lt!2088238 e!3159297)))

(declare-fun c!868666 () Bool)

(assert (=> d!1630688 (= c!868666 ((_ is Nil!58428) (list!18979 (xs!18896 xs!286))))))

(assert (=> d!1630688 (= (size!39065 (list!18979 (xs!18896 xs!286))) lt!2088238)))

(declare-fun b!5061790 () Bool)

(assert (=> b!5061790 (= e!3159297 0)))

(declare-fun b!5061791 () Bool)

(assert (=> b!5061791 (= e!3159297 (+ 1 (size!39065 (t!371255 (list!18979 (xs!18896 xs!286))))))))

(assert (= (and d!1630688 c!868666) b!5061790))

(assert (= (and d!1630688 (not c!868666)) b!5061791))

(declare-fun m!6100664 () Bool)

(assert (=> b!5061791 m!6100664))

(assert (=> d!1629768 d!1630688))

(assert (=> d!1629768 d!1629704))

(declare-fun d!1630690 () Bool)

(declare-fun c!868667 () Bool)

(assert (=> d!1630690 (= c!868667 ((_ is Node!15558) (left!42807 (right!43137 (left!42807 xs!286)))))))

(declare-fun e!3159298 () Bool)

(assert (=> d!1630690 (= (inv!77523 (left!42807 (right!43137 (left!42807 xs!286)))) e!3159298)))

(declare-fun b!5061792 () Bool)

(assert (=> b!5061792 (= e!3159298 (inv!77526 (left!42807 (right!43137 (left!42807 xs!286)))))))

(declare-fun b!5061793 () Bool)

(declare-fun e!3159299 () Bool)

(assert (=> b!5061793 (= e!3159298 e!3159299)))

(declare-fun res!2155320 () Bool)

(assert (=> b!5061793 (= res!2155320 (not ((_ is Leaf!25842) (left!42807 (right!43137 (left!42807 xs!286))))))))

(assert (=> b!5061793 (=> res!2155320 e!3159299)))

(declare-fun b!5061794 () Bool)

(assert (=> b!5061794 (= e!3159299 (inv!77527 (left!42807 (right!43137 (left!42807 xs!286)))))))

(assert (= (and d!1630690 c!868667) b!5061792))

(assert (= (and d!1630690 (not c!868667)) b!5061793))

(assert (= (and b!5061793 (not res!2155320)) b!5061794))

(declare-fun m!6100666 () Bool)

(assert (=> b!5061792 m!6100666))

(declare-fun m!6100668 () Bool)

(assert (=> b!5061794 m!6100668))

(assert (=> b!5060755 d!1630690))

(declare-fun d!1630692 () Bool)

(declare-fun c!868668 () Bool)

(assert (=> d!1630692 (= c!868668 ((_ is Node!15558) (right!43137 (right!43137 (left!42807 xs!286)))))))

(declare-fun e!3159300 () Bool)

(assert (=> d!1630692 (= (inv!77523 (right!43137 (right!43137 (left!42807 xs!286)))) e!3159300)))

(declare-fun b!5061795 () Bool)

(assert (=> b!5061795 (= e!3159300 (inv!77526 (right!43137 (right!43137 (left!42807 xs!286)))))))

(declare-fun b!5061796 () Bool)

(declare-fun e!3159301 () Bool)

(assert (=> b!5061796 (= e!3159300 e!3159301)))

(declare-fun res!2155321 () Bool)

(assert (=> b!5061796 (= res!2155321 (not ((_ is Leaf!25842) (right!43137 (right!43137 (left!42807 xs!286))))))))

(assert (=> b!5061796 (=> res!2155321 e!3159301)))

(declare-fun b!5061797 () Bool)

(assert (=> b!5061797 (= e!3159301 (inv!77527 (right!43137 (right!43137 (left!42807 xs!286)))))))

(assert (= (and d!1630692 c!868668) b!5061795))

(assert (= (and d!1630692 (not c!868668)) b!5061796))

(assert (= (and b!5061796 (not res!2155321)) b!5061797))

(declare-fun m!6100670 () Bool)

(assert (=> b!5061795 m!6100670))

(declare-fun m!6100672 () Bool)

(assert (=> b!5061797 m!6100672))

(assert (=> b!5060755 d!1630692))

(declare-fun d!1630694 () Bool)

(assert (=> d!1630694 (= (max!0 (height!2135 (left!42807 (right!43137 ys!41))) (height!2135 (right!43137 (right!43137 ys!41)))) (ite (< (height!2135 (left!42807 (right!43137 ys!41))) (height!2135 (right!43137 (right!43137 ys!41)))) (height!2135 (right!43137 (right!43137 ys!41))) (height!2135 (left!42807 (right!43137 ys!41)))))))

(assert (=> b!5060568 d!1630694))

(assert (=> b!5060568 d!1630400))

(assert (=> b!5060568 d!1630402))

(declare-fun d!1630696 () Bool)

(assert (=> d!1630696 (= (list!18979 (xs!18896 (++!12778 (right!43137 xs!286) ys!41))) (innerList!15646 (xs!18896 (++!12778 (right!43137 xs!286) ys!41))))))

(assert (=> b!5060590 d!1630696))

(declare-fun d!1630698 () Bool)

(declare-fun lt!2088239 () Bool)

(assert (=> d!1630698 (= lt!2088239 (isEmpty!31621 (list!18977 (right!43137 (left!42807 ys!41)))))))

(assert (=> d!1630698 (= lt!2088239 (= (size!39064 (right!43137 (left!42807 ys!41))) 0))))

(assert (=> d!1630698 (= (isEmpty!31619 (right!43137 (left!42807 ys!41))) lt!2088239)))

(declare-fun bs!1189671 () Bool)

(assert (= bs!1189671 d!1630698))

(assert (=> bs!1189671 m!6097052))

(assert (=> bs!1189671 m!6097052))

(declare-fun m!6100674 () Bool)

(assert (=> bs!1189671 m!6100674))

(assert (=> bs!1189671 m!6097958))

(assert (=> b!5060502 d!1630698))

(declare-fun d!1630700 () Bool)

(declare-fun lt!2088240 () Conc!15558)

(assert (=> d!1630700 (= (list!18977 lt!2088240) (++!12779 (list!18977 (ite c!868361 (ite c!868359 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868366 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868364 call!352453 (ite c!868362 lt!2088043 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))) (list!18977 (ite c!868361 (ite c!868359 call!352465 (ite c!868366 lt!2088044 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))) (ite c!868364 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (ite c!868362 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))))))

(declare-fun e!3159303 () Conc!15558)

(assert (=> d!1630700 (= lt!2088240 e!3159303)))

(declare-fun c!868669 () Bool)

(assert (=> d!1630700 (= c!868669 (= (ite c!868361 (ite c!868359 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868366 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868364 call!352453 (ite c!868362 lt!2088043 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))) Empty!15558))))

(assert (=> d!1630700 (= (<>!392 (ite c!868361 (ite c!868359 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868366 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868364 call!352453 (ite c!868362 lt!2088043 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))) (ite c!868361 (ite c!868359 call!352465 (ite c!868366 lt!2088044 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))) (ite c!868364 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (ite c!868362 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))) lt!2088240)))

(declare-fun b!5061799 () Bool)

(declare-fun e!3159302 () Conc!15558)

(assert (=> b!5061799 (= e!3159303 e!3159302)))

(declare-fun c!868670 () Bool)

(assert (=> b!5061799 (= c!868670 (= (ite c!868361 (ite c!868359 call!352465 (ite c!868366 lt!2088044 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))) (ite c!868364 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (ite c!868362 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))) Empty!15558))))

(declare-fun b!5061801 () Bool)

(assert (=> b!5061801 (= e!3159302 (Node!15558 (ite c!868361 (ite c!868359 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868366 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868364 call!352453 (ite c!868362 lt!2088043 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))) (ite c!868361 (ite c!868359 call!352465 (ite c!868366 lt!2088044 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))) (ite c!868364 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (ite c!868362 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))) (+ (size!39064 (ite c!868361 (ite c!868359 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868366 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868364 call!352453 (ite c!868362 lt!2088043 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))) (size!39064 (ite c!868361 (ite c!868359 call!352465 (ite c!868366 lt!2088044 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))) (ite c!868364 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (ite c!868362 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))) (+ (max!0 (height!2135 (ite c!868361 (ite c!868359 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868366 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868364 call!352453 (ite c!868362 lt!2088043 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))) (height!2135 (ite c!868361 (ite c!868359 call!352465 (ite c!868366 lt!2088044 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))) (ite c!868364 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (ite c!868362 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))) 1)))))

(declare-fun b!5061800 () Bool)

(assert (=> b!5061800 (= e!3159302 (ite c!868361 (ite c!868359 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868366 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868364 call!352453 (ite c!868362 lt!2088043 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))

(declare-fun b!5061798 () Bool)

(assert (=> b!5061798 (= e!3159303 (ite c!868361 (ite c!868359 call!352465 (ite c!868366 lt!2088044 (left!42807 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))) (ite c!868364 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (ite c!868362 (right!43137 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))))

(assert (= (and d!1630700 c!868669) b!5061798))

(assert (= (and d!1630700 (not c!868669)) b!5061799))

(assert (= (and b!5061799 c!868670) b!5061800))

(assert (= (and b!5061799 (not c!868670)) b!5061801))

(declare-fun m!6100676 () Bool)

(assert (=> d!1630700 m!6100676))

(declare-fun m!6100678 () Bool)

(assert (=> d!1630700 m!6100678))

(declare-fun m!6100680 () Bool)

(assert (=> d!1630700 m!6100680))

(assert (=> d!1630700 m!6100678))

(assert (=> d!1630700 m!6100680))

(declare-fun m!6100682 () Bool)

(assert (=> d!1630700 m!6100682))

(declare-fun m!6100684 () Bool)

(assert (=> b!5061801 m!6100684))

(declare-fun m!6100686 () Bool)

(assert (=> b!5061801 m!6100686))

(declare-fun m!6100688 () Bool)

(assert (=> b!5061801 m!6100688))

(declare-fun m!6100690 () Bool)

(assert (=> b!5061801 m!6100690))

(assert (=> b!5061801 m!6100684))

(declare-fun m!6100692 () Bool)

(assert (=> b!5061801 m!6100692))

(assert (=> b!5061801 m!6100690))

(assert (=> bm!352452 d!1630700))

(declare-fun d!1630702 () Bool)

(declare-fun c!868671 () Bool)

(assert (=> d!1630702 (= c!868671 ((_ is Nil!58428) lt!2088033))))

(declare-fun e!3159304 () (InoxSet T!105076))

(assert (=> d!1630702 (= (content!10414 lt!2088033) e!3159304)))

(declare-fun b!5061802 () Bool)

(assert (=> b!5061802 (= e!3159304 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061803 () Bool)

(assert (=> b!5061803 (= e!3159304 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 lt!2088033) true) (content!10414 (t!371255 lt!2088033))))))

(assert (= (and d!1630702 c!868671) b!5061802))

(assert (= (and d!1630702 (not c!868671)) b!5061803))

(declare-fun m!6100694 () Bool)

(assert (=> b!5061803 m!6100694))

(declare-fun m!6100696 () Bool)

(assert (=> b!5061803 m!6100696))

(assert (=> d!1629736 d!1630702))

(declare-fun d!1630704 () Bool)

(declare-fun c!868672 () Bool)

(assert (=> d!1630704 (= c!868672 ((_ is Nil!58428) (list!18977 (left!42807 lt!2087928))))))

(declare-fun e!3159305 () (InoxSet T!105076))

(assert (=> d!1630704 (= (content!10414 (list!18977 (left!42807 lt!2087928))) e!3159305)))

(declare-fun b!5061804 () Bool)

(assert (=> b!5061804 (= e!3159305 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061805 () Bool)

(assert (=> b!5061805 (= e!3159305 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 (left!42807 lt!2087928))) true) (content!10414 (t!371255 (list!18977 (left!42807 lt!2087928))))))))

(assert (= (and d!1630704 c!868672) b!5061804))

(assert (= (and d!1630704 (not c!868672)) b!5061805))

(declare-fun m!6100698 () Bool)

(assert (=> b!5061805 m!6100698))

(declare-fun m!6100700 () Bool)

(assert (=> b!5061805 m!6100700))

(assert (=> d!1629736 d!1630704))

(declare-fun d!1630706 () Bool)

(declare-fun c!868673 () Bool)

(assert (=> d!1630706 (= c!868673 ((_ is Nil!58428) (list!18977 (right!43137 lt!2087928))))))

(declare-fun e!3159306 () (InoxSet T!105076))

(assert (=> d!1630706 (= (content!10414 (list!18977 (right!43137 lt!2087928))) e!3159306)))

(declare-fun b!5061806 () Bool)

(assert (=> b!5061806 (= e!3159306 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061807 () Bool)

(assert (=> b!5061807 (= e!3159306 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 (right!43137 lt!2087928))) true) (content!10414 (t!371255 (list!18977 (right!43137 lt!2087928))))))))

(assert (= (and d!1630706 c!868673) b!5061806))

(assert (= (and d!1630706 (not c!868673)) b!5061807))

(declare-fun m!6100702 () Bool)

(assert (=> b!5061807 m!6100702))

(declare-fun m!6100704 () Bool)

(assert (=> b!5061807 m!6100704))

(assert (=> d!1629736 d!1630706))

(declare-fun d!1630708 () Bool)

(assert (=> d!1630708 (= (height!2135 (left!42807 (right!43137 lt!2087928))) (ite ((_ is Empty!15558) (left!42807 (right!43137 lt!2087928))) 0 (ite ((_ is Leaf!25842) (left!42807 (right!43137 lt!2087928))) 1 (cheight!15769 (left!42807 (right!43137 lt!2087928))))))))

(assert (=> b!5060560 d!1630708))

(declare-fun d!1630710 () Bool)

(assert (=> d!1630710 (= (height!2135 (right!43137 (right!43137 lt!2087928))) (ite ((_ is Empty!15558) (right!43137 (right!43137 lt!2087928))) 0 (ite ((_ is Leaf!25842) (right!43137 (right!43137 lt!2087928))) 1 (cheight!15769 (right!43137 (right!43137 lt!2087928))))))))

(assert (=> b!5060560 d!1630710))

(declare-fun d!1630712 () Bool)

(declare-fun lt!2088241 () Conc!15558)

(assert (=> d!1630712 (= (list!18977 lt!2088241) (++!12779 (list!18977 (ite c!868360 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868361 (ite c!868366 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) call!352459) (ite c!868362 call!352458 lt!2088043)))) (list!18977 (ite c!868360 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868361 (ite c!868366 call!352459 lt!2088044) (ite c!868362 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) call!352458))))))))

(declare-fun e!3159308 () Conc!15558)

(assert (=> d!1630712 (= lt!2088241 e!3159308)))

(declare-fun c!868674 () Bool)

(assert (=> d!1630712 (= c!868674 (= (ite c!868360 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868361 (ite c!868366 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) call!352459) (ite c!868362 call!352458 lt!2088043))) Empty!15558))))

(assert (=> d!1630712 (= (<>!392 (ite c!868360 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868361 (ite c!868366 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) call!352459) (ite c!868362 call!352458 lt!2088043))) (ite c!868360 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868361 (ite c!868366 call!352459 lt!2088044) (ite c!868362 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) call!352458)))) lt!2088241)))

(declare-fun b!5061809 () Bool)

(declare-fun e!3159307 () Conc!15558)

(assert (=> b!5061809 (= e!3159308 e!3159307)))

(declare-fun c!868675 () Bool)

(assert (=> b!5061809 (= c!868675 (= (ite c!868360 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868361 (ite c!868366 call!352459 lt!2088044) (ite c!868362 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) call!352458))) Empty!15558))))

(declare-fun b!5061811 () Bool)

(assert (=> b!5061811 (= e!3159307 (Node!15558 (ite c!868360 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868361 (ite c!868366 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) call!352459) (ite c!868362 call!352458 lt!2088043))) (ite c!868360 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868361 (ite c!868366 call!352459 lt!2088044) (ite c!868362 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) call!352458))) (+ (size!39064 (ite c!868360 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868361 (ite c!868366 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) call!352459) (ite c!868362 call!352458 lt!2088043)))) (size!39064 (ite c!868360 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868361 (ite c!868366 call!352459 lt!2088044) (ite c!868362 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) call!352458))))) (+ (max!0 (height!2135 (ite c!868360 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868361 (ite c!868366 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) call!352459) (ite c!868362 call!352458 lt!2088043)))) (height!2135 (ite c!868360 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868361 (ite c!868366 call!352459 lt!2088044) (ite c!868362 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) call!352458))))) 1)))))

(declare-fun b!5061810 () Bool)

(assert (=> b!5061810 (= e!3159307 (ite c!868360 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)) (ite c!868361 (ite c!868366 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) call!352459) (ite c!868362 call!352458 lt!2088043))))))

(declare-fun b!5061808 () Bool)

(assert (=> b!5061808 (= e!3159308 (ite c!868360 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868361 (ite c!868366 call!352459 lt!2088044) (ite c!868362 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) call!352458))))))

(assert (= (and d!1630712 c!868674) b!5061808))

(assert (= (and d!1630712 (not c!868674)) b!5061809))

(assert (= (and b!5061809 c!868675) b!5061810))

(assert (= (and b!5061809 (not c!868675)) b!5061811))

(declare-fun m!6100706 () Bool)

(assert (=> d!1630712 m!6100706))

(declare-fun m!6100708 () Bool)

(assert (=> d!1630712 m!6100708))

(declare-fun m!6100710 () Bool)

(assert (=> d!1630712 m!6100710))

(assert (=> d!1630712 m!6100708))

(assert (=> d!1630712 m!6100710))

(declare-fun m!6100712 () Bool)

(assert (=> d!1630712 m!6100712))

(declare-fun m!6100714 () Bool)

(assert (=> b!5061811 m!6100714))

(declare-fun m!6100716 () Bool)

(assert (=> b!5061811 m!6100716))

(declare-fun m!6100718 () Bool)

(assert (=> b!5061811 m!6100718))

(declare-fun m!6100720 () Bool)

(assert (=> b!5061811 m!6100720))

(assert (=> b!5061811 m!6100714))

(declare-fun m!6100722 () Bool)

(assert (=> b!5061811 m!6100722))

(assert (=> b!5061811 m!6100720))

(assert (=> bm!352460 d!1630712))

(declare-fun d!1630714 () Bool)

(declare-fun e!3159309 () Bool)

(assert (=> d!1630714 e!3159309))

(declare-fun res!2155323 () Bool)

(assert (=> d!1630714 (=> (not res!2155323) (not e!3159309))))

(declare-fun lt!2088242 () List!58552)

(assert (=> d!1630714 (= res!2155323 (= (content!10414 lt!2088242) ((_ map or) (content!10414 (t!371255 (list!18977 (right!43137 (right!43137 xs!286))))) (content!10414 (list!18977 ys!41)))))))

(declare-fun e!3159310 () List!58552)

(assert (=> d!1630714 (= lt!2088242 e!3159310)))

(declare-fun c!868676 () Bool)

(assert (=> d!1630714 (= c!868676 ((_ is Nil!58428) (t!371255 (list!18977 (right!43137 (right!43137 xs!286))))))))

(assert (=> d!1630714 (= (++!12779 (t!371255 (list!18977 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41)) lt!2088242)))

(declare-fun b!5061815 () Bool)

(assert (=> b!5061815 (= e!3159309 (or (not (= (list!18977 ys!41) Nil!58428)) (= lt!2088242 (t!371255 (list!18977 (right!43137 (right!43137 xs!286)))))))))

(declare-fun b!5061814 () Bool)

(declare-fun res!2155322 () Bool)

(assert (=> b!5061814 (=> (not res!2155322) (not e!3159309))))

(assert (=> b!5061814 (= res!2155322 (= (size!39065 lt!2088242) (+ (size!39065 (t!371255 (list!18977 (right!43137 (right!43137 xs!286))))) (size!39065 (list!18977 ys!41)))))))

(declare-fun b!5061812 () Bool)

(assert (=> b!5061812 (= e!3159310 (list!18977 ys!41))))

(declare-fun b!5061813 () Bool)

(assert (=> b!5061813 (= e!3159310 (Cons!58428 (h!64876 (t!371255 (list!18977 (right!43137 (right!43137 xs!286))))) (++!12779 (t!371255 (t!371255 (list!18977 (right!43137 (right!43137 xs!286))))) (list!18977 ys!41))))))

(assert (= (and d!1630714 c!868676) b!5061812))

(assert (= (and d!1630714 (not c!868676)) b!5061813))

(assert (= (and d!1630714 res!2155323) b!5061814))

(assert (= (and b!5061814 res!2155322) b!5061815))

(declare-fun m!6100724 () Bool)

(assert (=> d!1630714 m!6100724))

(assert (=> d!1630714 m!6100618))

(assert (=> d!1630714 m!6096986))

(assert (=> d!1630714 m!6097340))

(declare-fun m!6100726 () Bool)

(assert (=> b!5061814 m!6100726))

(assert (=> b!5061814 m!6100484))

(assert (=> b!5061814 m!6096986))

(assert (=> b!5061814 m!6097346))

(assert (=> b!5061813 m!6096986))

(declare-fun m!6100728 () Bool)

(assert (=> b!5061813 m!6100728))

(assert (=> b!5060530 d!1630714))

(declare-fun d!1630716 () Bool)

(declare-fun lt!2088243 () Int)

(assert (=> d!1630716 (>= lt!2088243 0)))

(declare-fun e!3159311 () Int)

(assert (=> d!1630716 (= lt!2088243 e!3159311)))

(declare-fun c!868677 () Bool)

(assert (=> d!1630716 (= c!868677 ((_ is Nil!58428) (t!371255 lt!2087969)))))

(assert (=> d!1630716 (= (size!39065 (t!371255 lt!2087969)) lt!2088243)))

(declare-fun b!5061816 () Bool)

(assert (=> b!5061816 (= e!3159311 0)))

(declare-fun b!5061817 () Bool)

(assert (=> b!5061817 (= e!3159311 (+ 1 (size!39065 (t!371255 (t!371255 lt!2087969)))))))

(assert (= (and d!1630716 c!868677) b!5061816))

(assert (= (and d!1630716 (not c!868677)) b!5061817))

(declare-fun m!6100730 () Bool)

(assert (=> b!5061817 m!6100730))

(assert (=> b!5060733 d!1630716))

(declare-fun b!5061818 () Bool)

(declare-fun res!2155325 () Bool)

(declare-fun e!3159312 () Bool)

(assert (=> b!5061818 (=> (not res!2155325) (not e!3159312))))

(assert (=> b!5061818 (= res!2155325 (isBalanced!4420 (left!42807 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5061819 () Bool)

(declare-fun res!2155326 () Bool)

(assert (=> b!5061819 (=> (not res!2155326) (not e!3159312))))

(assert (=> b!5061819 (= res!2155326 (isBalanced!4420 (right!43137 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5061820 () Bool)

(declare-fun res!2155328 () Bool)

(assert (=> b!5061820 (=> (not res!2155328) (not e!3159312))))

(assert (=> b!5061820 (= res!2155328 (not (isEmpty!31619 (left!42807 (right!43137 (right!43137 xs!286))))))))

(declare-fun b!5061821 () Bool)

(assert (=> b!5061821 (= e!3159312 (not (isEmpty!31619 (right!43137 (right!43137 (right!43137 xs!286))))))))

(declare-fun b!5061822 () Bool)

(declare-fun res!2155329 () Bool)

(assert (=> b!5061822 (=> (not res!2155329) (not e!3159312))))

(assert (=> b!5061822 (= res!2155329 (<= (- (height!2135 (left!42807 (right!43137 (right!43137 xs!286)))) (height!2135 (right!43137 (right!43137 (right!43137 xs!286))))) 1))))

(declare-fun b!5061823 () Bool)

(declare-fun e!3159313 () Bool)

(assert (=> b!5061823 (= e!3159313 e!3159312)))

(declare-fun res!2155327 () Bool)

(assert (=> b!5061823 (=> (not res!2155327) (not e!3159312))))

(assert (=> b!5061823 (= res!2155327 (<= (- 1) (- (height!2135 (left!42807 (right!43137 (right!43137 xs!286)))) (height!2135 (right!43137 (right!43137 (right!43137 xs!286)))))))))

(declare-fun d!1630718 () Bool)

(declare-fun res!2155324 () Bool)

(assert (=> d!1630718 (=> res!2155324 e!3159313)))

(assert (=> d!1630718 (= res!2155324 (not ((_ is Node!15558) (right!43137 (right!43137 xs!286)))))))

(assert (=> d!1630718 (= (isBalanced!4420 (right!43137 (right!43137 xs!286))) e!3159313)))

(assert (= (and d!1630718 (not res!2155324)) b!5061823))

(assert (= (and b!5061823 res!2155327) b!5061822))

(assert (= (and b!5061822 res!2155329) b!5061818))

(assert (= (and b!5061818 res!2155325) b!5061819))

(assert (= (and b!5061819 res!2155326) b!5061820))

(assert (= (and b!5061820 res!2155328) b!5061821))

(declare-fun m!6100732 () Bool)

(assert (=> b!5061820 m!6100732))

(assert (=> b!5061822 m!6100568))

(assert (=> b!5061822 m!6100570))

(declare-fun m!6100734 () Bool)

(assert (=> b!5061819 m!6100734))

(declare-fun m!6100736 () Bool)

(assert (=> b!5061821 m!6100736))

(declare-fun m!6100738 () Bool)

(assert (=> b!5061818 m!6100738))

(assert (=> b!5061823 m!6100568))

(assert (=> b!5061823 m!6100570))

(assert (=> b!5060606 d!1630718))

(declare-fun d!1630720 () Bool)

(declare-fun lt!2088244 () Int)

(assert (=> d!1630720 (>= lt!2088244 0)))

(declare-fun e!3159314 () Int)

(assert (=> d!1630720 (= lt!2088244 e!3159314)))

(declare-fun c!868678 () Bool)

(assert (=> d!1630720 (= c!868678 ((_ is Nil!58428) (list!18979 (xs!18896 ys!41))))))

(assert (=> d!1630720 (= (size!39065 (list!18979 (xs!18896 ys!41))) lt!2088244)))

(declare-fun b!5061824 () Bool)

(assert (=> b!5061824 (= e!3159314 0)))

(declare-fun b!5061825 () Bool)

(assert (=> b!5061825 (= e!3159314 (+ 1 (size!39065 (t!371255 (list!18979 (xs!18896 ys!41))))))))

(assert (= (and d!1630720 c!868678) b!5061824))

(assert (= (and d!1630720 (not c!868678)) b!5061825))

(declare-fun m!6100740 () Bool)

(assert (=> b!5061825 m!6100740))

(assert (=> b!5060592 d!1630720))

(assert (=> b!5060592 d!1629824))

(declare-fun b!5061826 () Bool)

(declare-fun res!2155331 () Bool)

(declare-fun e!3159315 () Bool)

(assert (=> b!5061826 (=> (not res!2155331) (not e!3159315))))

(assert (=> b!5061826 (= res!2155331 (isBalanced!4420 (left!42807 (right!43137 (right!43137 ys!41)))))))

(declare-fun b!5061827 () Bool)

(declare-fun res!2155332 () Bool)

(assert (=> b!5061827 (=> (not res!2155332) (not e!3159315))))

(assert (=> b!5061827 (= res!2155332 (isBalanced!4420 (right!43137 (right!43137 (right!43137 ys!41)))))))

(declare-fun b!5061828 () Bool)

(declare-fun res!2155334 () Bool)

(assert (=> b!5061828 (=> (not res!2155334) (not e!3159315))))

(assert (=> b!5061828 (= res!2155334 (not (isEmpty!31619 (left!42807 (right!43137 (right!43137 ys!41))))))))

(declare-fun b!5061829 () Bool)

(assert (=> b!5061829 (= e!3159315 (not (isEmpty!31619 (right!43137 (right!43137 (right!43137 ys!41))))))))

(declare-fun b!5061830 () Bool)

(declare-fun res!2155335 () Bool)

(assert (=> b!5061830 (=> (not res!2155335) (not e!3159315))))

(assert (=> b!5061830 (= res!2155335 (<= (- (height!2135 (left!42807 (right!43137 (right!43137 ys!41)))) (height!2135 (right!43137 (right!43137 (right!43137 ys!41))))) 1))))

(declare-fun b!5061831 () Bool)

(declare-fun e!3159316 () Bool)

(assert (=> b!5061831 (= e!3159316 e!3159315)))

(declare-fun res!2155333 () Bool)

(assert (=> b!5061831 (=> (not res!2155333) (not e!3159315))))

(assert (=> b!5061831 (= res!2155333 (<= (- 1) (- (height!2135 (left!42807 (right!43137 (right!43137 ys!41)))) (height!2135 (right!43137 (right!43137 (right!43137 ys!41)))))))))

(declare-fun d!1630722 () Bool)

(declare-fun res!2155330 () Bool)

(assert (=> d!1630722 (=> res!2155330 e!3159316)))

(assert (=> d!1630722 (= res!2155330 (not ((_ is Node!15558) (right!43137 (right!43137 ys!41)))))))

(assert (=> d!1630722 (= (isBalanced!4420 (right!43137 (right!43137 ys!41))) e!3159316)))

(assert (= (and d!1630722 (not res!2155330)) b!5061831))

(assert (= (and b!5061831 res!2155333) b!5061830))

(assert (= (and b!5061830 res!2155335) b!5061826))

(assert (= (and b!5061826 res!2155331) b!5061827))

(assert (= (and b!5061827 res!2155332) b!5061828))

(assert (= (and b!5061828 res!2155334) b!5061829))

(declare-fun m!6100742 () Bool)

(assert (=> b!5061828 m!6100742))

(assert (=> b!5061830 m!6100248))

(assert (=> b!5061830 m!6100250))

(declare-fun m!6100744 () Bool)

(assert (=> b!5061827 m!6100744))

(declare-fun m!6100746 () Bool)

(assert (=> b!5061829 m!6100746))

(declare-fun m!6100748 () Bool)

(assert (=> b!5061826 m!6100748))

(assert (=> b!5061831 m!6100248))

(assert (=> b!5061831 m!6100250))

(assert (=> b!5060656 d!1630722))

(assert (=> b!5060183 d!1629680))

(assert (=> b!5060183 d!1629682))

(declare-fun d!1630724 () Bool)

(declare-fun c!868679 () Bool)

(assert (=> d!1630724 (= c!868679 ((_ is Nil!58428) (t!371255 lt!2087969)))))

(declare-fun e!3159317 () (InoxSet T!105076))

(assert (=> d!1630724 (= (content!10414 (t!371255 lt!2087969)) e!3159317)))

(declare-fun b!5061832 () Bool)

(assert (=> b!5061832 (= e!3159317 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5061833 () Bool)

(assert (=> b!5061833 (= e!3159317 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (t!371255 lt!2087969)) true) (content!10414 (t!371255 (t!371255 lt!2087969)))))))

(assert (= (and d!1630724 c!868679) b!5061832))

(assert (= (and d!1630724 (not c!868679)) b!5061833))

(declare-fun m!6100750 () Bool)

(assert (=> b!5061833 m!6100750))

(declare-fun m!6100752 () Bool)

(assert (=> b!5061833 m!6100752))

(assert (=> b!5060682 d!1630724))

(declare-fun d!1630726 () Bool)

(declare-fun e!3159318 () Bool)

(assert (=> d!1630726 e!3159318))

(declare-fun res!2155337 () Bool)

(assert (=> d!1630726 (=> (not res!2155337) (not e!3159318))))

(declare-fun lt!2088245 () List!58552)

(assert (=> d!1630726 (= res!2155337 (= (content!10414 lt!2088245) ((_ map or) (content!10414 (list!18977 (left!42807 (left!42807 lt!2087928)))) (content!10414 (list!18977 (right!43137 (left!42807 lt!2087928)))))))))

(declare-fun e!3159319 () List!58552)

(assert (=> d!1630726 (= lt!2088245 e!3159319)))

(declare-fun c!868680 () Bool)

(assert (=> d!1630726 (= c!868680 ((_ is Nil!58428) (list!18977 (left!42807 (left!42807 lt!2087928)))))))

(assert (=> d!1630726 (= (++!12779 (list!18977 (left!42807 (left!42807 lt!2087928))) (list!18977 (right!43137 (left!42807 lt!2087928)))) lt!2088245)))

(declare-fun b!5061837 () Bool)

(assert (=> b!5061837 (= e!3159318 (or (not (= (list!18977 (right!43137 (left!42807 lt!2087928))) Nil!58428)) (= lt!2088245 (list!18977 (left!42807 (left!42807 lt!2087928))))))))

(declare-fun b!5061836 () Bool)

(declare-fun res!2155336 () Bool)

(assert (=> b!5061836 (=> (not res!2155336) (not e!3159318))))

(assert (=> b!5061836 (= res!2155336 (= (size!39065 lt!2088245) (+ (size!39065 (list!18977 (left!42807 (left!42807 lt!2087928)))) (size!39065 (list!18977 (right!43137 (left!42807 lt!2087928)))))))))

(declare-fun b!5061834 () Bool)

(assert (=> b!5061834 (= e!3159319 (list!18977 (right!43137 (left!42807 lt!2087928))))))

(declare-fun b!5061835 () Bool)

(assert (=> b!5061835 (= e!3159319 (Cons!58428 (h!64876 (list!18977 (left!42807 (left!42807 lt!2087928)))) (++!12779 (t!371255 (list!18977 (left!42807 (left!42807 lt!2087928)))) (list!18977 (right!43137 (left!42807 lt!2087928))))))))

(assert (= (and d!1630726 c!868680) b!5061834))

(assert (= (and d!1630726 (not c!868680)) b!5061835))

(assert (= (and d!1630726 res!2155337) b!5061836))

(assert (= (and b!5061836 res!2155336) b!5061837))

(declare-fun m!6100754 () Bool)

(assert (=> d!1630726 m!6100754))

(assert (=> d!1630726 m!6098222))

(declare-fun m!6100756 () Bool)

(assert (=> d!1630726 m!6100756))

(assert (=> d!1630726 m!6098224))

(declare-fun m!6100758 () Bool)

(assert (=> d!1630726 m!6100758))

(declare-fun m!6100760 () Bool)

(assert (=> b!5061836 m!6100760))

(assert (=> b!5061836 m!6098222))

(declare-fun m!6100762 () Bool)

(assert (=> b!5061836 m!6100762))

(assert (=> b!5061836 m!6098224))

(declare-fun m!6100764 () Bool)

(assert (=> b!5061836 m!6100764))

(assert (=> b!5061835 m!6098224))

(declare-fun m!6100766 () Bool)

(assert (=> b!5061835 m!6100766))

(assert (=> b!5060627 d!1630726))

(declare-fun b!5061839 () Bool)

(declare-fun e!3159320 () List!58552)

(declare-fun e!3159321 () List!58552)

(assert (=> b!5061839 (= e!3159320 e!3159321)))

(declare-fun c!868682 () Bool)

(assert (=> b!5061839 (= c!868682 ((_ is Leaf!25842) (left!42807 (left!42807 lt!2087928))))))

(declare-fun b!5061840 () Bool)

(assert (=> b!5061840 (= e!3159321 (list!18979 (xs!18896 (left!42807 (left!42807 lt!2087928)))))))

(declare-fun b!5061838 () Bool)

(assert (=> b!5061838 (= e!3159320 Nil!58428)))

(declare-fun b!5061841 () Bool)

(assert (=> b!5061841 (= e!3159321 (++!12779 (list!18977 (left!42807 (left!42807 (left!42807 lt!2087928)))) (list!18977 (right!43137 (left!42807 (left!42807 lt!2087928))))))))

(declare-fun d!1630728 () Bool)

(declare-fun c!868681 () Bool)

(assert (=> d!1630728 (= c!868681 ((_ is Empty!15558) (left!42807 (left!42807 lt!2087928))))))

(assert (=> d!1630728 (= (list!18977 (left!42807 (left!42807 lt!2087928))) e!3159320)))

(assert (= (and d!1630728 c!868681) b!5061838))

(assert (= (and d!1630728 (not c!868681)) b!5061839))

(assert (= (and b!5061839 c!868682) b!5061840))

(assert (= (and b!5061839 (not c!868682)) b!5061841))

(declare-fun m!6100768 () Bool)

(assert (=> b!5061840 m!6100768))

(declare-fun m!6100770 () Bool)

(assert (=> b!5061841 m!6100770))

(declare-fun m!6100772 () Bool)

(assert (=> b!5061841 m!6100772))

(assert (=> b!5061841 m!6100770))

(assert (=> b!5061841 m!6100772))

(declare-fun m!6100774 () Bool)

(assert (=> b!5061841 m!6100774))

(assert (=> b!5060627 d!1630728))

(declare-fun b!5061843 () Bool)

(declare-fun e!3159322 () List!58552)

(declare-fun e!3159323 () List!58552)

(assert (=> b!5061843 (= e!3159322 e!3159323)))

(declare-fun c!868684 () Bool)

(assert (=> b!5061843 (= c!868684 ((_ is Leaf!25842) (right!43137 (left!42807 lt!2087928))))))

(declare-fun b!5061844 () Bool)

(assert (=> b!5061844 (= e!3159323 (list!18979 (xs!18896 (right!43137 (left!42807 lt!2087928)))))))

(declare-fun b!5061842 () Bool)

(assert (=> b!5061842 (= e!3159322 Nil!58428)))

(declare-fun b!5061845 () Bool)

(assert (=> b!5061845 (= e!3159323 (++!12779 (list!18977 (left!42807 (right!43137 (left!42807 lt!2087928)))) (list!18977 (right!43137 (right!43137 (left!42807 lt!2087928))))))))

(declare-fun d!1630730 () Bool)

(declare-fun c!868683 () Bool)

(assert (=> d!1630730 (= c!868683 ((_ is Empty!15558) (right!43137 (left!42807 lt!2087928))))))

(assert (=> d!1630730 (= (list!18977 (right!43137 (left!42807 lt!2087928))) e!3159322)))

(assert (= (and d!1630730 c!868683) b!5061842))

(assert (= (and d!1630730 (not c!868683)) b!5061843))

(assert (= (and b!5061843 c!868684) b!5061844))

(assert (= (and b!5061843 (not c!868684)) b!5061845))

(declare-fun m!6100776 () Bool)

(assert (=> b!5061844 m!6100776))

(declare-fun m!6100778 () Bool)

(assert (=> b!5061845 m!6100778))

(declare-fun m!6100780 () Bool)

(assert (=> b!5061845 m!6100780))

(assert (=> b!5061845 m!6100778))

(assert (=> b!5061845 m!6100780))

(declare-fun m!6100782 () Bool)

(assert (=> b!5061845 m!6100782))

(assert (=> b!5060627 d!1630730))

(declare-fun d!1630732 () Bool)

(assert (=> d!1630732 (= (list!18979 (xs!18896 (right!43137 (left!42807 ys!41)))) (innerList!15646 (xs!18896 (right!43137 (left!42807 ys!41)))))))

(assert (=> b!5060547 d!1630732))

(assert (=> bm!352442 d!1629742))

(declare-fun d!1630734 () Bool)

(assert (=> d!1630734 (= (list!18979 (xs!18896 (right!43137 (right!43137 xs!286)))) (innerList!15646 (xs!18896 (right!43137 (right!43137 xs!286)))))))

(assert (=> b!5060517 d!1630734))

(declare-fun d!1630736 () Bool)

(declare-fun lt!2088246 () Bool)

(assert (=> d!1630736 (= lt!2088246 (isEmpty!31621 (list!18977 (left!42807 (left!42807 xs!286)))))))

(assert (=> d!1630736 (= lt!2088246 (= (size!39064 (left!42807 (left!42807 xs!286))) 0))))

(assert (=> d!1630736 (= (isEmpty!31619 (left!42807 (left!42807 xs!286))) lt!2088246)))

(declare-fun bs!1189672 () Bool)

(assert (= bs!1189672 d!1630736))

(assert (=> bs!1189672 m!6097992))

(assert (=> bs!1189672 m!6097992))

(declare-fun m!6100784 () Bool)

(assert (=> bs!1189672 m!6100784))

(assert (=> bs!1189672 m!6098440))

(assert (=> b!5060507 d!1630736))

(declare-fun b!5061847 () Bool)

(declare-fun e!3159324 () List!58552)

(declare-fun e!3159325 () List!58552)

(assert (=> b!5061847 (= e!3159324 e!3159325)))

(declare-fun c!868686 () Bool)

(assert (=> b!5061847 (= c!868686 ((_ is Leaf!25842) lt!2088045))))

(declare-fun b!5061848 () Bool)

(assert (=> b!5061848 (= e!3159325 (list!18979 (xs!18896 lt!2088045)))))

(declare-fun b!5061846 () Bool)

(assert (=> b!5061846 (= e!3159324 Nil!58428)))

(declare-fun b!5061849 () Bool)

(assert (=> b!5061849 (= e!3159325 (++!12779 (list!18977 (left!42807 lt!2088045)) (list!18977 (right!43137 lt!2088045))))))

(declare-fun d!1630738 () Bool)

(declare-fun c!868685 () Bool)

(assert (=> d!1630738 (= c!868685 ((_ is Empty!15558) lt!2088045))))

(assert (=> d!1630738 (= (list!18977 lt!2088045) e!3159324)))

(assert (= (and d!1630738 c!868685) b!5061846))

(assert (= (and d!1630738 (not c!868685)) b!5061847))

(assert (= (and b!5061847 c!868686) b!5061848))

(assert (= (and b!5061847 (not c!868686)) b!5061849))

(declare-fun m!6100786 () Bool)

(assert (=> b!5061848 m!6100786))

(declare-fun m!6100788 () Bool)

(assert (=> b!5061849 m!6100788))

(declare-fun m!6100790 () Bool)

(assert (=> b!5061849 m!6100790))

(assert (=> b!5061849 m!6100788))

(assert (=> b!5061849 m!6100790))

(declare-fun m!6100792 () Bool)

(assert (=> b!5061849 m!6100792))

(assert (=> b!5060709 d!1630738))

(declare-fun d!1630740 () Bool)

(declare-fun e!3159326 () Bool)

(assert (=> d!1630740 e!3159326))

(declare-fun res!2155339 () Bool)

(assert (=> d!1630740 (=> (not res!2155339) (not e!3159326))))

(declare-fun lt!2088247 () List!58552)

(assert (=> d!1630740 (= res!2155339 (= (content!10414 lt!2088247) ((_ map or) (content!10414 (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (content!10414 (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))))

(declare-fun e!3159327 () List!58552)

(assert (=> d!1630740 (= lt!2088247 e!3159327)))

(declare-fun c!868687 () Bool)

(assert (=> d!1630740 (= c!868687 ((_ is Nil!58428) (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))))

(assert (=> d!1630740 (= (++!12779 (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) lt!2088247)))

(declare-fun b!5061853 () Bool)

(assert (=> b!5061853 (= e!3159326 (or (not (= (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) Nil!58428)) (= lt!2088247 (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))))

(declare-fun b!5061852 () Bool)

(declare-fun res!2155338 () Bool)

(assert (=> b!5061852 (=> (not res!2155338) (not e!3159326))))

(assert (=> b!5061852 (= res!2155338 (= (size!39065 lt!2088247) (+ (size!39065 (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (size!39065 (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))))

(declare-fun b!5061850 () Bool)

(assert (=> b!5061850 (= e!3159327 (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))

(declare-fun b!5061851 () Bool)

(assert (=> b!5061851 (= e!3159327 (Cons!58428 (h!64876 (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (++!12779 (t!371255 (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(assert (= (and d!1630740 c!868687) b!5061850))

(assert (= (and d!1630740 (not c!868687)) b!5061851))

(assert (= (and d!1630740 res!2155339) b!5061852))

(assert (= (and b!5061852 res!2155338) b!5061853))

(declare-fun m!6100794 () Bool)

(assert (=> d!1630740 m!6100794))

(assert (=> d!1630740 m!6098402))

(declare-fun m!6100796 () Bool)

(assert (=> d!1630740 m!6100796))

(assert (=> d!1630740 m!6098404))

(declare-fun m!6100798 () Bool)

(assert (=> d!1630740 m!6100798))

(declare-fun m!6100800 () Bool)

(assert (=> b!5061852 m!6100800))

(assert (=> b!5061852 m!6098402))

(declare-fun m!6100802 () Bool)

(assert (=> b!5061852 m!6100802))

(assert (=> b!5061852 m!6098404))

(declare-fun m!6100804 () Bool)

(assert (=> b!5061852 m!6100804))

(assert (=> b!5061851 m!6098404))

(declare-fun m!6100806 () Bool)

(assert (=> b!5061851 m!6100806))

(assert (=> b!5060709 d!1630740))

(declare-fun b!5061855 () Bool)

(declare-fun e!3159328 () List!58552)

(declare-fun e!3159329 () List!58552)

(assert (=> b!5061855 (= e!3159328 e!3159329)))

(declare-fun c!868689 () Bool)

(assert (=> b!5061855 (= c!868689 ((_ is Leaf!25842) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))

(declare-fun b!5061856 () Bool)

(assert (=> b!5061856 (= e!3159329 (list!18979 (xs!18896 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))))

(declare-fun b!5061854 () Bool)

(assert (=> b!5061854 (= e!3159328 Nil!58428)))

(declare-fun b!5061857 () Bool)

(assert (=> b!5061857 (= e!3159329 (++!12779 (list!18977 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (list!18977 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))))

(declare-fun c!868688 () Bool)

(declare-fun d!1630742 () Bool)

(assert (=> d!1630742 (= c!868688 ((_ is Empty!15558) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))

(assert (=> d!1630742 (= (list!18977 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) e!3159328)))

(assert (= (and d!1630742 c!868688) b!5061854))

(assert (= (and d!1630742 (not c!868688)) b!5061855))

(assert (= (and b!5061855 c!868689) b!5061856))

(assert (= (and b!5061855 (not c!868689)) b!5061857))

(declare-fun m!6100808 () Bool)

(assert (=> b!5061856 m!6100808))

(assert (=> b!5061857 m!6100160))

(assert (=> b!5061857 m!6100166))

(assert (=> b!5061857 m!6100160))

(assert (=> b!5061857 m!6100166))

(declare-fun m!6100810 () Bool)

(assert (=> b!5061857 m!6100810))

(assert (=> b!5060709 d!1630742))

(declare-fun b!5061859 () Bool)

(declare-fun e!3159330 () List!58552)

(declare-fun e!3159331 () List!58552)

(assert (=> b!5061859 (= e!3159330 e!3159331)))

(declare-fun c!868691 () Bool)

(assert (=> b!5061859 (= c!868691 ((_ is Leaf!25842) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))

(declare-fun b!5061860 () Bool)

(assert (=> b!5061860 (= e!3159331 (list!18979 (xs!18896 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5061858 () Bool)

(assert (=> b!5061858 (= e!3159330 Nil!58428)))

(declare-fun b!5061861 () Bool)

(assert (=> b!5061861 (= e!3159331 (++!12779 (list!18977 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (list!18977 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun c!868690 () Bool)

(declare-fun d!1630744 () Bool)

(assert (=> d!1630744 (= c!868690 ((_ is Empty!15558) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))

(assert (=> d!1630744 (= (list!18977 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) e!3159330)))

(assert (= (and d!1630744 c!868690) b!5061858))

(assert (= (and d!1630744 (not c!868690)) b!5061859))

(assert (= (and b!5061859 c!868691) b!5061860))

(assert (= (and b!5061859 (not c!868691)) b!5061861))

(declare-fun m!6100812 () Bool)

(assert (=> b!5061860 m!6100812))

(assert (=> b!5061861 m!6100176))

(assert (=> b!5061861 m!6100172))

(assert (=> b!5061861 m!6100176))

(assert (=> b!5061861 m!6100172))

(declare-fun m!6100814 () Bool)

(assert (=> b!5061861 m!6100814))

(assert (=> b!5060709 d!1630744))

(declare-fun d!1630746 () Bool)

(declare-fun e!3159332 () Bool)

(assert (=> d!1630746 e!3159332))

(declare-fun res!2155341 () Bool)

(assert (=> d!1630746 (=> (not res!2155341) (not e!3159332))))

(declare-fun lt!2088248 () List!58552)

(assert (=> d!1630746 (= res!2155341 (= (content!10414 lt!2088248) ((_ map or) (content!10414 (t!371255 (list!18977 (left!42807 lt!2087928)))) (content!10414 (list!18977 (right!43137 lt!2087928))))))))

(declare-fun e!3159333 () List!58552)

(assert (=> d!1630746 (= lt!2088248 e!3159333)))

(declare-fun c!868692 () Bool)

(assert (=> d!1630746 (= c!868692 ((_ is Nil!58428) (t!371255 (list!18977 (left!42807 lt!2087928)))))))

(assert (=> d!1630746 (= (++!12779 (t!371255 (list!18977 (left!42807 lt!2087928))) (list!18977 (right!43137 lt!2087928))) lt!2088248)))

(declare-fun b!5061865 () Bool)

(assert (=> b!5061865 (= e!3159332 (or (not (= (list!18977 (right!43137 lt!2087928)) Nil!58428)) (= lt!2088248 (t!371255 (list!18977 (left!42807 lt!2087928))))))))

(declare-fun b!5061864 () Bool)

(declare-fun res!2155340 () Bool)

(assert (=> b!5061864 (=> (not res!2155340) (not e!3159332))))

(assert (=> b!5061864 (= res!2155340 (= (size!39065 lt!2088248) (+ (size!39065 (t!371255 (list!18977 (left!42807 lt!2087928)))) (size!39065 (list!18977 (right!43137 lt!2087928))))))))

(declare-fun b!5061862 () Bool)

(assert (=> b!5061862 (= e!3159333 (list!18977 (right!43137 lt!2087928)))))

(declare-fun b!5061863 () Bool)

(assert (=> b!5061863 (= e!3159333 (Cons!58428 (h!64876 (t!371255 (list!18977 (left!42807 lt!2087928)))) (++!12779 (t!371255 (t!371255 (list!18977 (left!42807 lt!2087928)))) (list!18977 (right!43137 lt!2087928)))))))

(assert (= (and d!1630746 c!868692) b!5061862))

(assert (= (and d!1630746 (not c!868692)) b!5061863))

(assert (= (and d!1630746 res!2155341) b!5061864))

(assert (= (and b!5061864 res!2155340) b!5061865))

(declare-fun m!6100816 () Bool)

(assert (=> d!1630746 m!6100816))

(assert (=> d!1630746 m!6100700))

(assert (=> d!1630746 m!6097332))

(assert (=> d!1630746 m!6098210))

(declare-fun m!6100818 () Bool)

(assert (=> b!5061864 m!6100818))

(assert (=> b!5061864 m!6100608))

(assert (=> b!5061864 m!6097332))

(assert (=> b!5061864 m!6098216))

(assert (=> b!5061863 m!6097332))

(declare-fun m!6100820 () Bool)

(assert (=> b!5061863 m!6100820))

(assert (=> b!5060621 d!1630746))

(declare-fun b!5061866 () Bool)

(declare-fun res!2155343 () Bool)

(declare-fun e!3159334 () Bool)

(assert (=> b!5061866 (=> (not res!2155343) (not e!3159334))))

(assert (=> b!5061866 (= res!2155343 (isBalanced!4420 (left!42807 (left!42807 lt!2087966))))))

(declare-fun b!5061867 () Bool)

(declare-fun res!2155344 () Bool)

(assert (=> b!5061867 (=> (not res!2155344) (not e!3159334))))

(assert (=> b!5061867 (= res!2155344 (isBalanced!4420 (right!43137 (left!42807 lt!2087966))))))

(declare-fun b!5061868 () Bool)

(declare-fun res!2155346 () Bool)

(assert (=> b!5061868 (=> (not res!2155346) (not e!3159334))))

(assert (=> b!5061868 (= res!2155346 (not (isEmpty!31619 (left!42807 (left!42807 lt!2087966)))))))

(declare-fun b!5061869 () Bool)

(assert (=> b!5061869 (= e!3159334 (not (isEmpty!31619 (right!43137 (left!42807 lt!2087966)))))))

(declare-fun b!5061870 () Bool)

(declare-fun res!2155347 () Bool)

(assert (=> b!5061870 (=> (not res!2155347) (not e!3159334))))

(assert (=> b!5061870 (= res!2155347 (<= (- (height!2135 (left!42807 (left!42807 lt!2087966))) (height!2135 (right!43137 (left!42807 lt!2087966)))) 1))))

(declare-fun b!5061871 () Bool)

(declare-fun e!3159335 () Bool)

(assert (=> b!5061871 (= e!3159335 e!3159334)))

(declare-fun res!2155345 () Bool)

(assert (=> b!5061871 (=> (not res!2155345) (not e!3159334))))

(assert (=> b!5061871 (= res!2155345 (<= (- 1) (- (height!2135 (left!42807 (left!42807 lt!2087966))) (height!2135 (right!43137 (left!42807 lt!2087966))))))))

(declare-fun d!1630748 () Bool)

(declare-fun res!2155342 () Bool)

(assert (=> d!1630748 (=> res!2155342 e!3159335)))

(assert (=> d!1630748 (= res!2155342 (not ((_ is Node!15558) (left!42807 lt!2087966))))))

(assert (=> d!1630748 (= (isBalanced!4420 (left!42807 lt!2087966)) e!3159335)))

(assert (= (and d!1630748 (not res!2155342)) b!5061871))

(assert (= (and b!5061871 res!2155345) b!5061870))

(assert (= (and b!5061870 res!2155347) b!5061866))

(assert (= (and b!5061866 res!2155343) b!5061867))

(assert (= (and b!5061867 res!2155344) b!5061868))

(assert (= (and b!5061868 res!2155346) b!5061869))

(declare-fun m!6100822 () Bool)

(assert (=> b!5061868 m!6100822))

(declare-fun m!6100824 () Bool)

(assert (=> b!5061870 m!6100824))

(declare-fun m!6100826 () Bool)

(assert (=> b!5061870 m!6100826))

(declare-fun m!6100828 () Bool)

(assert (=> b!5061867 m!6100828))

(declare-fun m!6100830 () Bool)

(assert (=> b!5061869 m!6100830))

(declare-fun m!6100832 () Bool)

(assert (=> b!5061866 m!6100832))

(assert (=> b!5061871 m!6100824))

(assert (=> b!5061871 m!6100826))

(assert (=> b!5060533 d!1630748))

(declare-fun b!5061872 () Bool)

(declare-fun res!2155349 () Bool)

(declare-fun e!3159336 () Bool)

(assert (=> b!5061872 (=> (not res!2155349) (not e!3159336))))

(assert (=> b!5061872 (= res!2155349 (isBalanced!4420 (left!42807 (right!43137 (left!42807 lt!2087928)))))))

(declare-fun b!5061873 () Bool)

(declare-fun res!2155350 () Bool)

(assert (=> b!5061873 (=> (not res!2155350) (not e!3159336))))

(assert (=> b!5061873 (= res!2155350 (isBalanced!4420 (right!43137 (right!43137 (left!42807 lt!2087928)))))))

(declare-fun b!5061874 () Bool)

(declare-fun res!2155352 () Bool)

(assert (=> b!5061874 (=> (not res!2155352) (not e!3159336))))

(assert (=> b!5061874 (= res!2155352 (not (isEmpty!31619 (left!42807 (right!43137 (left!42807 lt!2087928))))))))

(declare-fun b!5061875 () Bool)

(assert (=> b!5061875 (= e!3159336 (not (isEmpty!31619 (right!43137 (right!43137 (left!42807 lt!2087928))))))))

(declare-fun b!5061876 () Bool)

(declare-fun res!2155353 () Bool)

(assert (=> b!5061876 (=> (not res!2155353) (not e!3159336))))

(assert (=> b!5061876 (= res!2155353 (<= (- (height!2135 (left!42807 (right!43137 (left!42807 lt!2087928)))) (height!2135 (right!43137 (right!43137 (left!42807 lt!2087928))))) 1))))

(declare-fun b!5061877 () Bool)

(declare-fun e!3159337 () Bool)

(assert (=> b!5061877 (= e!3159337 e!3159336)))

(declare-fun res!2155351 () Bool)

(assert (=> b!5061877 (=> (not res!2155351) (not e!3159336))))

(assert (=> b!5061877 (= res!2155351 (<= (- 1) (- (height!2135 (left!42807 (right!43137 (left!42807 lt!2087928)))) (height!2135 (right!43137 (right!43137 (left!42807 lt!2087928)))))))))

(declare-fun d!1630750 () Bool)

(declare-fun res!2155348 () Bool)

(assert (=> d!1630750 (=> res!2155348 e!3159337)))

(assert (=> d!1630750 (= res!2155348 (not ((_ is Node!15558) (right!43137 (left!42807 lt!2087928)))))))

(assert (=> d!1630750 (= (isBalanced!4420 (right!43137 (left!42807 lt!2087928))) e!3159337)))

(assert (= (and d!1630750 (not res!2155348)) b!5061877))

(assert (= (and b!5061877 res!2155351) b!5061876))

(assert (= (and b!5061876 res!2155353) b!5061872))

(assert (= (and b!5061872 res!2155349) b!5061873))

(assert (= (and b!5061873 res!2155350) b!5061874))

(assert (= (and b!5061874 res!2155352) b!5061875))

(declare-fun m!6100834 () Bool)

(assert (=> b!5061874 m!6100834))

(declare-fun m!6100836 () Bool)

(assert (=> b!5061876 m!6100836))

(declare-fun m!6100838 () Bool)

(assert (=> b!5061876 m!6100838))

(declare-fun m!6100840 () Bool)

(assert (=> b!5061873 m!6100840))

(declare-fun m!6100842 () Bool)

(assert (=> b!5061875 m!6100842))

(declare-fun m!6100844 () Bool)

(assert (=> b!5061872 m!6100844))

(assert (=> b!5061877 m!6100836))

(assert (=> b!5061877 m!6100838))

(assert (=> b!5060714 d!1630750))

(assert (=> b!5060596 d!1629804))

(assert (=> b!5060596 d!1629664))

(assert (=> b!5060596 d!1629660))

(assert (=> b!5060596 d!1629454))

(declare-fun d!1630752 () Bool)

(assert (=> d!1630752 (= (inv!77522 (xs!18896 (right!43137 (right!43137 xs!286)))) (<= (size!39065 (innerList!15646 (xs!18896 (right!43137 (right!43137 xs!286))))) 2147483647))))

(declare-fun bs!1189673 () Bool)

(assert (= bs!1189673 d!1630752))

(declare-fun m!6100846 () Bool)

(assert (=> bs!1189673 m!6100846))

(assert (=> b!5060771 d!1630752))

(declare-fun d!1630754 () Bool)

(declare-fun e!3159338 () Bool)

(assert (=> d!1630754 e!3159338))

(declare-fun res!2155355 () Bool)

(assert (=> d!1630754 (=> (not res!2155355) (not e!3159338))))

(declare-fun lt!2088249 () List!58552)

(assert (=> d!1630754 (= res!2155355 (= (content!10414 lt!2088249) ((_ map or) (content!10414 (list!18977 (left!42807 (left!42807 (right!43137 xs!286))))) (content!10414 (list!18977 (right!43137 (left!42807 (right!43137 xs!286))))))))))

(declare-fun e!3159339 () List!58552)

(assert (=> d!1630754 (= lt!2088249 e!3159339)))

(declare-fun c!868693 () Bool)

(assert (=> d!1630754 (= c!868693 ((_ is Nil!58428) (list!18977 (left!42807 (left!42807 (right!43137 xs!286))))))))

(assert (=> d!1630754 (= (++!12779 (list!18977 (left!42807 (left!42807 (right!43137 xs!286)))) (list!18977 (right!43137 (left!42807 (right!43137 xs!286))))) lt!2088249)))

(declare-fun b!5061881 () Bool)

(assert (=> b!5061881 (= e!3159338 (or (not (= (list!18977 (right!43137 (left!42807 (right!43137 xs!286)))) Nil!58428)) (= lt!2088249 (list!18977 (left!42807 (left!42807 (right!43137 xs!286)))))))))

(declare-fun b!5061880 () Bool)

(declare-fun res!2155354 () Bool)

(assert (=> b!5061880 (=> (not res!2155354) (not e!3159338))))

(assert (=> b!5061880 (= res!2155354 (= (size!39065 lt!2088249) (+ (size!39065 (list!18977 (left!42807 (left!42807 (right!43137 xs!286))))) (size!39065 (list!18977 (right!43137 (left!42807 (right!43137 xs!286))))))))))

(declare-fun b!5061878 () Bool)

(assert (=> b!5061878 (= e!3159339 (list!18977 (right!43137 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5061879 () Bool)

(assert (=> b!5061879 (= e!3159339 (Cons!58428 (h!64876 (list!18977 (left!42807 (left!42807 (right!43137 xs!286))))) (++!12779 (t!371255 (list!18977 (left!42807 (left!42807 (right!43137 xs!286))))) (list!18977 (right!43137 (left!42807 (right!43137 xs!286)))))))))

(assert (= (and d!1630754 c!868693) b!5061878))

(assert (= (and d!1630754 (not c!868693)) b!5061879))

(assert (= (and d!1630754 res!2155355) b!5061880))

(assert (= (and b!5061880 res!2155354) b!5061881))

(declare-fun m!6100848 () Bool)

(assert (=> d!1630754 m!6100848))

(assert (=> d!1630754 m!6098018))

(declare-fun m!6100850 () Bool)

(assert (=> d!1630754 m!6100850))

(assert (=> d!1630754 m!6098020))

(declare-fun m!6100852 () Bool)

(assert (=> d!1630754 m!6100852))

(declare-fun m!6100854 () Bool)

(assert (=> b!5061880 m!6100854))

(assert (=> b!5061880 m!6098018))

(declare-fun m!6100856 () Bool)

(assert (=> b!5061880 m!6100856))

(assert (=> b!5061880 m!6098020))

(declare-fun m!6100858 () Bool)

(assert (=> b!5061880 m!6100858))

(assert (=> b!5061879 m!6098020))

(declare-fun m!6100860 () Bool)

(assert (=> b!5061879 m!6100860))

(assert (=> b!5060528 d!1630754))

(declare-fun b!5061883 () Bool)

(declare-fun e!3159340 () List!58552)

(declare-fun e!3159341 () List!58552)

(assert (=> b!5061883 (= e!3159340 e!3159341)))

(declare-fun c!868695 () Bool)

(assert (=> b!5061883 (= c!868695 ((_ is Leaf!25842) (left!42807 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5061884 () Bool)

(assert (=> b!5061884 (= e!3159341 (list!18979 (xs!18896 (left!42807 (left!42807 (right!43137 xs!286))))))))

(declare-fun b!5061882 () Bool)

(assert (=> b!5061882 (= e!3159340 Nil!58428)))

(declare-fun b!5061885 () Bool)

(assert (=> b!5061885 (= e!3159341 (++!12779 (list!18977 (left!42807 (left!42807 (left!42807 (right!43137 xs!286))))) (list!18977 (right!43137 (left!42807 (left!42807 (right!43137 xs!286)))))))))

(declare-fun d!1630756 () Bool)

(declare-fun c!868694 () Bool)

(assert (=> d!1630756 (= c!868694 ((_ is Empty!15558) (left!42807 (left!42807 (right!43137 xs!286)))))))

(assert (=> d!1630756 (= (list!18977 (left!42807 (left!42807 (right!43137 xs!286)))) e!3159340)))

(assert (= (and d!1630756 c!868694) b!5061882))

(assert (= (and d!1630756 (not c!868694)) b!5061883))

(assert (= (and b!5061883 c!868695) b!5061884))

(assert (= (and b!5061883 (not c!868695)) b!5061885))

(declare-fun m!6100862 () Bool)

(assert (=> b!5061884 m!6100862))

(declare-fun m!6100864 () Bool)

(assert (=> b!5061885 m!6100864))

(declare-fun m!6100866 () Bool)

(assert (=> b!5061885 m!6100866))

(assert (=> b!5061885 m!6100864))

(assert (=> b!5061885 m!6100866))

(declare-fun m!6100868 () Bool)

(assert (=> b!5061885 m!6100868))

(assert (=> b!5060528 d!1630756))

(declare-fun b!5061887 () Bool)

(declare-fun e!3159342 () List!58552)

(declare-fun e!3159343 () List!58552)

(assert (=> b!5061887 (= e!3159342 e!3159343)))

(declare-fun c!868697 () Bool)

(assert (=> b!5061887 (= c!868697 ((_ is Leaf!25842) (right!43137 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5061888 () Bool)

(assert (=> b!5061888 (= e!3159343 (list!18979 (xs!18896 (right!43137 (left!42807 (right!43137 xs!286))))))))

(declare-fun b!5061886 () Bool)

(assert (=> b!5061886 (= e!3159342 Nil!58428)))

(declare-fun b!5061889 () Bool)

(assert (=> b!5061889 (= e!3159343 (++!12779 (list!18977 (left!42807 (right!43137 (left!42807 (right!43137 xs!286))))) (list!18977 (right!43137 (right!43137 (left!42807 (right!43137 xs!286)))))))))

(declare-fun d!1630758 () Bool)

(declare-fun c!868696 () Bool)

(assert (=> d!1630758 (= c!868696 ((_ is Empty!15558) (right!43137 (left!42807 (right!43137 xs!286)))))))

(assert (=> d!1630758 (= (list!18977 (right!43137 (left!42807 (right!43137 xs!286)))) e!3159342)))

(assert (= (and d!1630758 c!868696) b!5061886))

(assert (= (and d!1630758 (not c!868696)) b!5061887))

(assert (= (and b!5061887 c!868697) b!5061888))

(assert (= (and b!5061887 (not c!868697)) b!5061889))

(declare-fun m!6100870 () Bool)

(assert (=> b!5061888 m!6100870))

(declare-fun m!6100872 () Bool)

(assert (=> b!5061889 m!6100872))

(declare-fun m!6100874 () Bool)

(assert (=> b!5061889 m!6100874))

(assert (=> b!5061889 m!6100872))

(assert (=> b!5061889 m!6100874))

(declare-fun m!6100876 () Bool)

(assert (=> b!5061889 m!6100876))

(assert (=> b!5060528 d!1630758))

(declare-fun b!5061890 () Bool)

(declare-fun res!2155357 () Bool)

(declare-fun e!3159344 () Bool)

(assert (=> b!5061890 (=> (not res!2155357) (not e!3159344))))

(assert (=> b!5061890 (= res!2155357 (isBalanced!4420 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5061891 () Bool)

(declare-fun res!2155358 () Bool)

(assert (=> b!5061891 (=> (not res!2155358) (not e!3159344))))

(assert (=> b!5061891 (= res!2155358 (isBalanced!4420 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5061892 () Bool)

(declare-fun res!2155360 () Bool)

(assert (=> b!5061892 (=> (not res!2155360) (not e!3159344))))

(assert (=> b!5061892 (= res!2155360 (not (isEmpty!31619 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun b!5061893 () Bool)

(assert (=> b!5061893 (= e!3159344 (not (isEmpty!31619 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))

(declare-fun b!5061894 () Bool)

(declare-fun res!2155361 () Bool)

(assert (=> b!5061894 (=> (not res!2155361) (not e!3159344))))

(assert (=> b!5061894 (= res!2155361 (<= (- (height!2135 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (height!2135 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))) 1))))

(declare-fun b!5061895 () Bool)

(declare-fun e!3159345 () Bool)

(assert (=> b!5061895 (= e!3159345 e!3159344)))

(declare-fun res!2155359 () Bool)

(assert (=> b!5061895 (=> (not res!2155359) (not e!3159344))))

(assert (=> b!5061895 (= res!2155359 (<= (- 1) (- (height!2135 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))) (height!2135 (right!43137 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))))

(declare-fun d!1630760 () Bool)

(declare-fun res!2155356 () Bool)

(assert (=> d!1630760 (=> res!2155356 e!3159345)))

(assert (=> d!1630760 (= res!2155356 (not ((_ is Node!15558) (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))

(assert (=> d!1630760 (= (isBalanced!4420 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) e!3159345)))

(assert (= (and d!1630760 (not res!2155356)) b!5061895))

(assert (= (and b!5061895 res!2155359) b!5061894))

(assert (= (and b!5061894 res!2155361) b!5061890))

(assert (= (and b!5061890 res!2155357) b!5061891))

(assert (= (and b!5061891 res!2155358) b!5061892))

(assert (= (and b!5061892 res!2155360) b!5061893))

(declare-fun m!6100878 () Bool)

(assert (=> b!5061892 m!6100878))

(declare-fun m!6100880 () Bool)

(assert (=> b!5061894 m!6100880))

(declare-fun m!6100882 () Bool)

(assert (=> b!5061894 m!6100882))

(declare-fun m!6100884 () Bool)

(assert (=> b!5061891 m!6100884))

(declare-fun m!6100886 () Bool)

(assert (=> b!5061893 m!6100886))

(declare-fun m!6100888 () Bool)

(assert (=> b!5061890 m!6100888))

(assert (=> b!5061895 m!6100880))

(assert (=> b!5061895 m!6100882))

(assert (=> b!5060703 d!1630760))

(declare-fun d!1630762 () Bool)

(declare-fun lt!2088250 () Bool)

(assert (=> d!1630762 (= lt!2088250 (isEmpty!31621 (list!18977 (left!42807 (left!42807 ys!41)))))))

(assert (=> d!1630762 (= lt!2088250 (= (size!39064 (left!42807 (left!42807 ys!41))) 0))))

(assert (=> d!1630762 (= (isEmpty!31619 (left!42807 (left!42807 ys!41))) lt!2088250)))

(declare-fun bs!1189674 () Bool)

(assert (= bs!1189674 d!1630762))

(assert (=> bs!1189674 m!6097050))

(assert (=> bs!1189674 m!6097050))

(declare-fun m!6100890 () Bool)

(assert (=> bs!1189674 m!6100890))

(assert (=> bs!1189674 m!6097956))

(assert (=> b!5060501 d!1630762))

(declare-fun d!1630764 () Bool)

(declare-fun res!2155362 () Bool)

(declare-fun e!3159346 () Bool)

(assert (=> d!1630764 (=> (not res!2155362) (not e!3159346))))

(assert (=> d!1630764 (= res!2155362 (= (csize!31346 (right!43137 (left!42807 ys!41))) (+ (size!39064 (left!42807 (right!43137 (left!42807 ys!41)))) (size!39064 (right!43137 (right!43137 (left!42807 ys!41)))))))))

(assert (=> d!1630764 (= (inv!77526 (right!43137 (left!42807 ys!41))) e!3159346)))

(declare-fun b!5061896 () Bool)

(declare-fun res!2155363 () Bool)

(assert (=> b!5061896 (=> (not res!2155363) (not e!3159346))))

(assert (=> b!5061896 (= res!2155363 (and (not (= (left!42807 (right!43137 (left!42807 ys!41))) Empty!15558)) (not (= (right!43137 (right!43137 (left!42807 ys!41))) Empty!15558))))))

(declare-fun b!5061897 () Bool)

(declare-fun res!2155364 () Bool)

(assert (=> b!5061897 (=> (not res!2155364) (not e!3159346))))

(assert (=> b!5061897 (= res!2155364 (= (cheight!15769 (right!43137 (left!42807 ys!41))) (+ (max!0 (height!2135 (left!42807 (right!43137 (left!42807 ys!41)))) (height!2135 (right!43137 (right!43137 (left!42807 ys!41))))) 1)))))

(declare-fun b!5061898 () Bool)

(assert (=> b!5061898 (= e!3159346 (<= 0 (cheight!15769 (right!43137 (left!42807 ys!41)))))))

(assert (= (and d!1630764 res!2155362) b!5061896))

(assert (= (and b!5061896 res!2155363) b!5061897))

(assert (= (and b!5061897 res!2155364) b!5061898))

(declare-fun m!6100892 () Bool)

(assert (=> d!1630764 m!6100892))

(declare-fun m!6100894 () Bool)

(assert (=> d!1630764 m!6100894))

(declare-fun m!6100896 () Bool)

(assert (=> b!5061897 m!6100896))

(declare-fun m!6100898 () Bool)

(assert (=> b!5061897 m!6100898))

(assert (=> b!5061897 m!6100896))

(assert (=> b!5061897 m!6100898))

(declare-fun m!6100900 () Bool)

(assert (=> b!5061897 m!6100900))

(assert (=> b!5060652 d!1630764))

(declare-fun b!5061899 () Bool)

(declare-fun res!2155366 () Bool)

(declare-fun e!3159347 () Bool)

(assert (=> b!5061899 (=> (not res!2155366) (not e!3159347))))

(assert (=> b!5061899 (= res!2155366 (isBalanced!4420 (left!42807 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5061900 () Bool)

(declare-fun res!2155367 () Bool)

(assert (=> b!5061900 (=> (not res!2155367) (not e!3159347))))

(assert (=> b!5061900 (= res!2155367 (isBalanced!4420 (right!43137 (left!42807 (right!43137 xs!286)))))))

(declare-fun b!5061901 () Bool)

(declare-fun res!2155369 () Bool)

(assert (=> b!5061901 (=> (not res!2155369) (not e!3159347))))

(assert (=> b!5061901 (= res!2155369 (not (isEmpty!31619 (left!42807 (left!42807 (right!43137 xs!286))))))))

(declare-fun b!5061902 () Bool)

(assert (=> b!5061902 (= e!3159347 (not (isEmpty!31619 (right!43137 (left!42807 (right!43137 xs!286))))))))

(declare-fun b!5061903 () Bool)

(declare-fun res!2155370 () Bool)

(assert (=> b!5061903 (=> (not res!2155370) (not e!3159347))))

(assert (=> b!5061903 (= res!2155370 (<= (- (height!2135 (left!42807 (left!42807 (right!43137 xs!286)))) (height!2135 (right!43137 (left!42807 (right!43137 xs!286))))) 1))))

(declare-fun b!5061904 () Bool)

(declare-fun e!3159348 () Bool)

(assert (=> b!5061904 (= e!3159348 e!3159347)))

(declare-fun res!2155368 () Bool)

(assert (=> b!5061904 (=> (not res!2155368) (not e!3159347))))

(assert (=> b!5061904 (= res!2155368 (<= (- 1) (- (height!2135 (left!42807 (left!42807 (right!43137 xs!286)))) (height!2135 (right!43137 (left!42807 (right!43137 xs!286)))))))))

(declare-fun d!1630766 () Bool)

(declare-fun res!2155365 () Bool)

(assert (=> d!1630766 (=> res!2155365 e!3159348)))

(assert (=> d!1630766 (= res!2155365 (not ((_ is Node!15558) (left!42807 (right!43137 xs!286)))))))

(assert (=> d!1630766 (= (isBalanced!4420 (left!42807 (right!43137 xs!286))) e!3159348)))

(assert (= (and d!1630766 (not res!2155365)) b!5061904))

(assert (= (and b!5061904 res!2155368) b!5061903))

(assert (= (and b!5061903 res!2155370) b!5061899))

(assert (= (and b!5061899 res!2155366) b!5061900))

(assert (= (and b!5061900 res!2155367) b!5061901))

(assert (= (and b!5061901 res!2155369) b!5061902))

(declare-fun m!6100902 () Bool)

(assert (=> b!5061901 m!6100902))

(assert (=> b!5061903 m!6100036))

(assert (=> b!5061903 m!6100038))

(declare-fun m!6100904 () Bool)

(assert (=> b!5061900 m!6100904))

(declare-fun m!6100906 () Bool)

(assert (=> b!5061902 m!6100906))

(declare-fun m!6100908 () Bool)

(assert (=> b!5061899 m!6100908))

(assert (=> b!5061904 m!6100036))

(assert (=> b!5061904 m!6100038))

(assert (=> b!5060605 d!1630766))

(assert (=> b!5060559 d!1630708))

(assert (=> b!5060559 d!1630710))

(declare-fun d!1630768 () Bool)

(declare-fun lt!2088251 () Int)

(assert (=> d!1630768 (>= lt!2088251 0)))

(declare-fun e!3159349 () Int)

(assert (=> d!1630768 (= lt!2088251 e!3159349)))

(declare-fun c!868698 () Bool)

(assert (=> d!1630768 (= c!868698 ((_ is Nil!58428) (innerList!15646 (xs!18896 (right!43137 ys!41)))))))

(assert (=> d!1630768 (= (size!39065 (innerList!15646 (xs!18896 (right!43137 ys!41)))) lt!2088251)))

(declare-fun b!5061905 () Bool)

(assert (=> b!5061905 (= e!3159349 0)))

(declare-fun b!5061906 () Bool)

(assert (=> b!5061906 (= e!3159349 (+ 1 (size!39065 (t!371255 (innerList!15646 (xs!18896 (right!43137 ys!41)))))))))

(assert (= (and d!1630768 c!868698) b!5061905))

(assert (= (and d!1630768 (not c!868698)) b!5061906))

(declare-fun m!6100910 () Bool)

(assert (=> b!5061906 m!6100910))

(assert (=> d!1629782 d!1630768))

(declare-fun d!1630770 () Bool)

(declare-fun e!3159350 () Bool)

(assert (=> d!1630770 e!3159350))

(declare-fun res!2155372 () Bool)

(assert (=> d!1630770 (=> (not res!2155372) (not e!3159350))))

(declare-fun lt!2088252 () List!58552)

(assert (=> d!1630770 (= res!2155372 (= (content!10414 lt!2088252) ((_ map or) (content!10414 (list!18977 (left!42807 xs!286))) (content!10414 (list!18977 (left!42807 (right!43137 xs!286)))))))))

(declare-fun e!3159351 () List!58552)

(assert (=> d!1630770 (= lt!2088252 e!3159351)))

(declare-fun c!868699 () Bool)

(assert (=> d!1630770 (= c!868699 ((_ is Nil!58428) (list!18977 (left!42807 xs!286))))))

(assert (=> d!1630770 (= (++!12779 (list!18977 (left!42807 xs!286)) (list!18977 (left!42807 (right!43137 xs!286)))) lt!2088252)))

(declare-fun b!5061910 () Bool)

(assert (=> b!5061910 (= e!3159350 (or (not (= (list!18977 (left!42807 (right!43137 xs!286))) Nil!58428)) (= lt!2088252 (list!18977 (left!42807 xs!286)))))))

(declare-fun b!5061909 () Bool)

(declare-fun res!2155371 () Bool)

(assert (=> b!5061909 (=> (not res!2155371) (not e!3159350))))

(assert (=> b!5061909 (= res!2155371 (= (size!39065 lt!2088252) (+ (size!39065 (list!18977 (left!42807 xs!286))) (size!39065 (list!18977 (left!42807 (right!43137 xs!286)))))))))

(declare-fun b!5061907 () Bool)

(assert (=> b!5061907 (= e!3159351 (list!18977 (left!42807 (right!43137 xs!286))))))

(declare-fun b!5061908 () Bool)

(assert (=> b!5061908 (= e!3159351 (Cons!58428 (h!64876 (list!18977 (left!42807 xs!286))) (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (left!42807 (right!43137 xs!286))))))))

(assert (= (and d!1630770 c!868699) b!5061907))

(assert (= (and d!1630770 (not c!868699)) b!5061908))

(assert (= (and d!1630770 res!2155372) b!5061909))

(assert (= (and b!5061909 res!2155371) b!5061910))

(declare-fun m!6100912 () Bool)

(assert (=> d!1630770 m!6100912))

(assert (=> d!1630770 m!6097062))

(assert (=> d!1630770 m!6098114))

(assert (=> d!1630770 m!6097056))

(assert (=> d!1630770 m!6100330))

(declare-fun m!6100914 () Bool)

(assert (=> b!5061909 m!6100914))

(assert (=> b!5061909 m!6097062))

(assert (=> b!5061909 m!6098100))

(assert (=> b!5061909 m!6097056))

(assert (=> b!5061909 m!6100334))

(assert (=> b!5061908 m!6097056))

(assert (=> b!5061908 m!6100340))

(assert (=> bm!352425 d!1630770))

(declare-fun d!1630772 () Bool)

(assert (=> d!1630772 (= (height!2135 (ite c!868361 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) lt!2088043)) (ite ((_ is Empty!15558) (ite c!868361 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) lt!2088043)) 0 (ite ((_ is Leaf!25842) (ite c!868361 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) lt!2088043)) 1 (cheight!15769 (ite c!868361 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) lt!2088043)))))))

(assert (=> bm!352459 d!1630772))

(declare-fun d!1630774 () Bool)

(declare-fun e!3159352 () Bool)

(assert (=> d!1630774 e!3159352))

(declare-fun res!2155374 () Bool)

(assert (=> d!1630774 (=> (not res!2155374) (not e!3159352))))

(declare-fun lt!2088253 () List!58552)

(assert (=> d!1630774 (= res!2155374 (= (content!10414 lt!2088253) ((_ map or) (content!10414 (list!18977 (left!42807 (left!42807 (left!42807 ys!41))))) (content!10414 (list!18977 (right!43137 (left!42807 (left!42807 ys!41))))))))))

(declare-fun e!3159353 () List!58552)

(assert (=> d!1630774 (= lt!2088253 e!3159353)))

(declare-fun c!868700 () Bool)

(assert (=> d!1630774 (= c!868700 ((_ is Nil!58428) (list!18977 (left!42807 (left!42807 (left!42807 ys!41))))))))

(assert (=> d!1630774 (= (++!12779 (list!18977 (left!42807 (left!42807 (left!42807 ys!41)))) (list!18977 (right!43137 (left!42807 (left!42807 ys!41))))) lt!2088253)))

(declare-fun b!5061914 () Bool)

(assert (=> b!5061914 (= e!3159352 (or (not (= (list!18977 (right!43137 (left!42807 (left!42807 ys!41)))) Nil!58428)) (= lt!2088253 (list!18977 (left!42807 (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5061913 () Bool)

(declare-fun res!2155373 () Bool)

(assert (=> b!5061913 (=> (not res!2155373) (not e!3159352))))

(assert (=> b!5061913 (= res!2155373 (= (size!39065 lt!2088253) (+ (size!39065 (list!18977 (left!42807 (left!42807 (left!42807 ys!41))))) (size!39065 (list!18977 (right!43137 (left!42807 (left!42807 ys!41))))))))))

(declare-fun b!5061911 () Bool)

(assert (=> b!5061911 (= e!3159353 (list!18977 (right!43137 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5061912 () Bool)

(assert (=> b!5061912 (= e!3159353 (Cons!58428 (h!64876 (list!18977 (left!42807 (left!42807 (left!42807 ys!41))))) (++!12779 (t!371255 (list!18977 (left!42807 (left!42807 (left!42807 ys!41))))) (list!18977 (right!43137 (left!42807 (left!42807 ys!41)))))))))

(assert (= (and d!1630774 c!868700) b!5061911))

(assert (= (and d!1630774 (not c!868700)) b!5061912))

(assert (= (and d!1630774 res!2155374) b!5061913))

(assert (= (and b!5061913 res!2155373) b!5061914))

(declare-fun m!6100916 () Bool)

(assert (=> d!1630774 m!6100916))

(assert (=> d!1630774 m!6098060))

(declare-fun m!6100918 () Bool)

(assert (=> d!1630774 m!6100918))

(assert (=> d!1630774 m!6098062))

(declare-fun m!6100920 () Bool)

(assert (=> d!1630774 m!6100920))

(declare-fun m!6100922 () Bool)

(assert (=> b!5061913 m!6100922))

(assert (=> b!5061913 m!6098060))

(declare-fun m!6100924 () Bool)

(assert (=> b!5061913 m!6100924))

(assert (=> b!5061913 m!6098062))

(declare-fun m!6100926 () Bool)

(assert (=> b!5061913 m!6100926))

(assert (=> b!5061912 m!6098062))

(declare-fun m!6100928 () Bool)

(assert (=> b!5061912 m!6100928))

(assert (=> b!5060544 d!1630774))

(declare-fun b!5061916 () Bool)

(declare-fun e!3159354 () List!58552)

(declare-fun e!3159355 () List!58552)

(assert (=> b!5061916 (= e!3159354 e!3159355)))

(declare-fun c!868702 () Bool)

(assert (=> b!5061916 (= c!868702 ((_ is Leaf!25842) (left!42807 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5061917 () Bool)

(assert (=> b!5061917 (= e!3159355 (list!18979 (xs!18896 (left!42807 (left!42807 (left!42807 ys!41))))))))

(declare-fun b!5061915 () Bool)

(assert (=> b!5061915 (= e!3159354 Nil!58428)))

(declare-fun b!5061918 () Bool)

(assert (=> b!5061918 (= e!3159355 (++!12779 (list!18977 (left!42807 (left!42807 (left!42807 (left!42807 ys!41))))) (list!18977 (right!43137 (left!42807 (left!42807 (left!42807 ys!41)))))))))

(declare-fun d!1630776 () Bool)

(declare-fun c!868701 () Bool)

(assert (=> d!1630776 (= c!868701 ((_ is Empty!15558) (left!42807 (left!42807 (left!42807 ys!41)))))))

(assert (=> d!1630776 (= (list!18977 (left!42807 (left!42807 (left!42807 ys!41)))) e!3159354)))

(assert (= (and d!1630776 c!868701) b!5061915))

(assert (= (and d!1630776 (not c!868701)) b!5061916))

(assert (= (and b!5061916 c!868702) b!5061917))

(assert (= (and b!5061916 (not c!868702)) b!5061918))

(declare-fun m!6100930 () Bool)

(assert (=> b!5061917 m!6100930))

(declare-fun m!6100932 () Bool)

(assert (=> b!5061918 m!6100932))

(declare-fun m!6100934 () Bool)

(assert (=> b!5061918 m!6100934))

(assert (=> b!5061918 m!6100932))

(assert (=> b!5061918 m!6100934))

(declare-fun m!6100936 () Bool)

(assert (=> b!5061918 m!6100936))

(assert (=> b!5060544 d!1630776))

(declare-fun b!5061920 () Bool)

(declare-fun e!3159356 () List!58552)

(declare-fun e!3159357 () List!58552)

(assert (=> b!5061920 (= e!3159356 e!3159357)))

(declare-fun c!868704 () Bool)

(assert (=> b!5061920 (= c!868704 ((_ is Leaf!25842) (right!43137 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5061921 () Bool)

(assert (=> b!5061921 (= e!3159357 (list!18979 (xs!18896 (right!43137 (left!42807 (left!42807 ys!41))))))))

(declare-fun b!5061919 () Bool)

(assert (=> b!5061919 (= e!3159356 Nil!58428)))

(declare-fun b!5061922 () Bool)

(assert (=> b!5061922 (= e!3159357 (++!12779 (list!18977 (left!42807 (right!43137 (left!42807 (left!42807 ys!41))))) (list!18977 (right!43137 (right!43137 (left!42807 (left!42807 ys!41)))))))))

(declare-fun d!1630778 () Bool)

(declare-fun c!868703 () Bool)

(assert (=> d!1630778 (= c!868703 ((_ is Empty!15558) (right!43137 (left!42807 (left!42807 ys!41)))))))

(assert (=> d!1630778 (= (list!18977 (right!43137 (left!42807 (left!42807 ys!41)))) e!3159356)))

(assert (= (and d!1630778 c!868703) b!5061919))

(assert (= (and d!1630778 (not c!868703)) b!5061920))

(assert (= (and b!5061920 c!868704) b!5061921))

(assert (= (and b!5061920 (not c!868704)) b!5061922))

(declare-fun m!6100938 () Bool)

(assert (=> b!5061921 m!6100938))

(declare-fun m!6100940 () Bool)

(assert (=> b!5061922 m!6100940))

(declare-fun m!6100942 () Bool)

(assert (=> b!5061922 m!6100942))

(assert (=> b!5061922 m!6100940))

(assert (=> b!5061922 m!6100942))

(declare-fun m!6100944 () Bool)

(assert (=> b!5061922 m!6100944))

(assert (=> b!5060544 d!1630778))

(declare-fun d!1630780 () Bool)

(assert (=> d!1630780 (= (inv!77522 (xs!18896 (left!42807 (left!42807 ys!41)))) (<= (size!39065 (innerList!15646 (xs!18896 (left!42807 (left!42807 ys!41))))) 2147483647))))

(declare-fun bs!1189675 () Bool)

(assert (= bs!1189675 d!1630780))

(declare-fun m!6100946 () Bool)

(assert (=> bs!1189675 m!6100946))

(assert (=> b!5060759 d!1630780))

(declare-fun d!1630782 () Bool)

(declare-fun e!3159358 () Bool)

(assert (=> d!1630782 e!3159358))

(declare-fun res!2155376 () Bool)

(assert (=> d!1630782 (=> (not res!2155376) (not e!3159358))))

(declare-fun lt!2088254 () List!58552)

(assert (=> d!1630782 (= res!2155376 (= (content!10414 lt!2088254) ((_ map or) (content!10414 (list!18977 (left!42807 (left!42807 xs!286)))) (content!10414 (list!18977 (right!43137 (left!42807 xs!286)))))))))

(declare-fun e!3159359 () List!58552)

(assert (=> d!1630782 (= lt!2088254 e!3159359)))

(declare-fun c!868705 () Bool)

(assert (=> d!1630782 (= c!868705 ((_ is Nil!58428) (list!18977 (left!42807 (left!42807 xs!286)))))))

(assert (=> d!1630782 (= (++!12779 (list!18977 (left!42807 (left!42807 xs!286))) (list!18977 (right!43137 (left!42807 xs!286)))) lt!2088254)))

(declare-fun b!5061926 () Bool)

(assert (=> b!5061926 (= e!3159358 (or (not (= (list!18977 (right!43137 (left!42807 xs!286))) Nil!58428)) (= lt!2088254 (list!18977 (left!42807 (left!42807 xs!286))))))))

(declare-fun b!5061925 () Bool)

(declare-fun res!2155375 () Bool)

(assert (=> b!5061925 (=> (not res!2155375) (not e!3159358))))

(assert (=> b!5061925 (= res!2155375 (= (size!39065 lt!2088254) (+ (size!39065 (list!18977 (left!42807 (left!42807 xs!286)))) (size!39065 (list!18977 (right!43137 (left!42807 xs!286)))))))))

(declare-fun b!5061923 () Bool)

(assert (=> b!5061923 (= e!3159359 (list!18977 (right!43137 (left!42807 xs!286))))))

(declare-fun b!5061924 () Bool)

(assert (=> b!5061924 (= e!3159359 (Cons!58428 (h!64876 (list!18977 (left!42807 (left!42807 xs!286)))) (++!12779 (t!371255 (list!18977 (left!42807 (left!42807 xs!286)))) (list!18977 (right!43137 (left!42807 xs!286))))))))

(assert (= (and d!1630782 c!868705) b!5061923))

(assert (= (and d!1630782 (not c!868705)) b!5061924))

(assert (= (and d!1630782 res!2155376) b!5061925))

(assert (= (and b!5061925 res!2155375) b!5061926))

(declare-fun m!6100948 () Bool)

(assert (=> d!1630782 m!6100948))

(assert (=> d!1630782 m!6097992))

(declare-fun m!6100950 () Bool)

(assert (=> d!1630782 m!6100950))

(assert (=> d!1630782 m!6097994))

(declare-fun m!6100952 () Bool)

(assert (=> d!1630782 m!6100952))

(declare-fun m!6100954 () Bool)

(assert (=> b!5061925 m!6100954))

(assert (=> b!5061925 m!6097992))

(declare-fun m!6100956 () Bool)

(assert (=> b!5061925 m!6100956))

(assert (=> b!5061925 m!6097994))

(declare-fun m!6100958 () Bool)

(assert (=> b!5061925 m!6100958))

(assert (=> b!5061924 m!6097994))

(declare-fun m!6100960 () Bool)

(assert (=> b!5061924 m!6100960))

(assert (=> b!5060514 d!1630782))

(declare-fun b!5061928 () Bool)

(declare-fun e!3159360 () List!58552)

(declare-fun e!3159361 () List!58552)

(assert (=> b!5061928 (= e!3159360 e!3159361)))

(declare-fun c!868707 () Bool)

(assert (=> b!5061928 (= c!868707 ((_ is Leaf!25842) (left!42807 (left!42807 xs!286))))))

(declare-fun b!5061929 () Bool)

(assert (=> b!5061929 (= e!3159361 (list!18979 (xs!18896 (left!42807 (left!42807 xs!286)))))))

(declare-fun b!5061927 () Bool)

(assert (=> b!5061927 (= e!3159360 Nil!58428)))

(declare-fun b!5061930 () Bool)

(assert (=> b!5061930 (= e!3159361 (++!12779 (list!18977 (left!42807 (left!42807 (left!42807 xs!286)))) (list!18977 (right!43137 (left!42807 (left!42807 xs!286))))))))

(declare-fun d!1630784 () Bool)

(declare-fun c!868706 () Bool)

(assert (=> d!1630784 (= c!868706 ((_ is Empty!15558) (left!42807 (left!42807 xs!286))))))

(assert (=> d!1630784 (= (list!18977 (left!42807 (left!42807 xs!286))) e!3159360)))

(assert (= (and d!1630784 c!868706) b!5061927))

(assert (= (and d!1630784 (not c!868706)) b!5061928))

(assert (= (and b!5061928 c!868707) b!5061929))

(assert (= (and b!5061928 (not c!868707)) b!5061930))

(declare-fun m!6100962 () Bool)

(assert (=> b!5061929 m!6100962))

(declare-fun m!6100964 () Bool)

(assert (=> b!5061930 m!6100964))

(declare-fun m!6100966 () Bool)

(assert (=> b!5061930 m!6100966))

(assert (=> b!5061930 m!6100964))

(assert (=> b!5061930 m!6100966))

(declare-fun m!6100968 () Bool)

(assert (=> b!5061930 m!6100968))

(assert (=> b!5060514 d!1630784))

(declare-fun b!5061932 () Bool)

(declare-fun e!3159362 () List!58552)

(declare-fun e!3159363 () List!58552)

(assert (=> b!5061932 (= e!3159362 e!3159363)))

(declare-fun c!868709 () Bool)

(assert (=> b!5061932 (= c!868709 ((_ is Leaf!25842) (right!43137 (left!42807 xs!286))))))

(declare-fun b!5061933 () Bool)

(assert (=> b!5061933 (= e!3159363 (list!18979 (xs!18896 (right!43137 (left!42807 xs!286)))))))

(declare-fun b!5061931 () Bool)

(assert (=> b!5061931 (= e!3159362 Nil!58428)))

(declare-fun b!5061934 () Bool)

(assert (=> b!5061934 (= e!3159363 (++!12779 (list!18977 (left!42807 (right!43137 (left!42807 xs!286)))) (list!18977 (right!43137 (right!43137 (left!42807 xs!286))))))))

(declare-fun d!1630786 () Bool)

(declare-fun c!868708 () Bool)

(assert (=> d!1630786 (= c!868708 ((_ is Empty!15558) (right!43137 (left!42807 xs!286))))))

(assert (=> d!1630786 (= (list!18977 (right!43137 (left!42807 xs!286))) e!3159362)))

(assert (= (and d!1630786 c!868708) b!5061931))

(assert (= (and d!1630786 (not c!868708)) b!5061932))

(assert (= (and b!5061932 c!868709) b!5061933))

(assert (= (and b!5061932 (not c!868709)) b!5061934))

(assert (=> b!5061933 m!6100254))

(declare-fun m!6100970 () Bool)

(assert (=> b!5061934 m!6100970))

(declare-fun m!6100972 () Bool)

(assert (=> b!5061934 m!6100972))

(assert (=> b!5061934 m!6100970))

(assert (=> b!5061934 m!6100972))

(declare-fun m!6100974 () Bool)

(assert (=> b!5061934 m!6100974))

(assert (=> b!5060514 d!1630786))

(declare-fun d!1630788 () Bool)

(assert (=> d!1630788 (= (list!18979 (xs!18896 (left!42807 lt!2087928))) (innerList!15646 (xs!18896 (left!42807 lt!2087928))))))

(assert (=> b!5060626 d!1630788))

(declare-fun d!1630790 () Bool)

(declare-fun lt!2088255 () Int)

(assert (=> d!1630790 (>= lt!2088255 0)))

(declare-fun e!3159364 () Int)

(assert (=> d!1630790 (= lt!2088255 e!3159364)))

(declare-fun c!868710 () Bool)

(assert (=> d!1630790 (= c!868710 ((_ is Nil!58428) (t!371255 (list!18977 ys!41))))))

(assert (=> d!1630790 (= (size!39065 (t!371255 (list!18977 ys!41))) lt!2088255)))

(declare-fun b!5061935 () Bool)

(assert (=> b!5061935 (= e!3159364 0)))

(declare-fun b!5061936 () Bool)

(assert (=> b!5061936 (= e!3159364 (+ 1 (size!39065 (t!371255 (t!371255 (list!18977 ys!41))))))))

(assert (= (and d!1630790 c!868710) b!5061935))

(assert (= (and d!1630790 (not c!868710)) b!5061936))

(declare-fun m!6100976 () Bool)

(assert (=> b!5061936 m!6100976))

(assert (=> b!5060737 d!1630790))

(declare-fun b!5061937 () Bool)

(declare-fun res!2155378 () Bool)

(declare-fun e!3159365 () Bool)

(assert (=> b!5061937 (=> (not res!2155378) (not e!3159365))))

(assert (=> b!5061937 (= res!2155378 (isBalanced!4420 (left!42807 (left!42807 (right!43137 ys!41)))))))

(declare-fun b!5061938 () Bool)

(declare-fun res!2155379 () Bool)

(assert (=> b!5061938 (=> (not res!2155379) (not e!3159365))))

(assert (=> b!5061938 (= res!2155379 (isBalanced!4420 (right!43137 (left!42807 (right!43137 ys!41)))))))

(declare-fun b!5061939 () Bool)

(declare-fun res!2155381 () Bool)

(assert (=> b!5061939 (=> (not res!2155381) (not e!3159365))))

(assert (=> b!5061939 (= res!2155381 (not (isEmpty!31619 (left!42807 (left!42807 (right!43137 ys!41))))))))

(declare-fun b!5061940 () Bool)

(assert (=> b!5061940 (= e!3159365 (not (isEmpty!31619 (right!43137 (left!42807 (right!43137 ys!41))))))))

(declare-fun b!5061941 () Bool)

(declare-fun res!2155382 () Bool)

(assert (=> b!5061941 (=> (not res!2155382) (not e!3159365))))

(assert (=> b!5061941 (= res!2155382 (<= (- (height!2135 (left!42807 (left!42807 (right!43137 ys!41)))) (height!2135 (right!43137 (left!42807 (right!43137 ys!41))))) 1))))

(declare-fun b!5061942 () Bool)

(declare-fun e!3159366 () Bool)

(assert (=> b!5061942 (= e!3159366 e!3159365)))

(declare-fun res!2155380 () Bool)

(assert (=> b!5061942 (=> (not res!2155380) (not e!3159365))))

(assert (=> b!5061942 (= res!2155380 (<= (- 1) (- (height!2135 (left!42807 (left!42807 (right!43137 ys!41)))) (height!2135 (right!43137 (left!42807 (right!43137 ys!41)))))))))

(declare-fun d!1630792 () Bool)

(declare-fun res!2155377 () Bool)

(assert (=> d!1630792 (=> res!2155377 e!3159366)))

(assert (=> d!1630792 (= res!2155377 (not ((_ is Node!15558) (left!42807 (right!43137 ys!41)))))))

(assert (=> d!1630792 (= (isBalanced!4420 (left!42807 (right!43137 ys!41))) e!3159366)))

(assert (= (and d!1630792 (not res!2155377)) b!5061942))

(assert (= (and b!5061942 res!2155380) b!5061941))

(assert (= (and b!5061941 res!2155382) b!5061937))

(assert (= (and b!5061937 res!2155378) b!5061938))

(assert (= (and b!5061938 res!2155379) b!5061939))

(assert (= (and b!5061939 res!2155381) b!5061940))

(declare-fun m!6100978 () Bool)

(assert (=> b!5061939 m!6100978))

(declare-fun m!6100980 () Bool)

(assert (=> b!5061941 m!6100980))

(declare-fun m!6100982 () Bool)

(assert (=> b!5061941 m!6100982))

(declare-fun m!6100984 () Bool)

(assert (=> b!5061938 m!6100984))

(declare-fun m!6100986 () Bool)

(assert (=> b!5061940 m!6100986))

(declare-fun m!6100988 () Bool)

(assert (=> b!5061937 m!6100988))

(assert (=> b!5061942 m!6100980))

(assert (=> b!5061942 m!6100982))

(assert (=> b!5060655 d!1630792))

(declare-fun d!1630794 () Bool)

(declare-fun lt!2088256 () Int)

(assert (=> d!1630794 (= lt!2088256 (size!39065 (list!18977 (left!42807 (right!43137 xs!286)))))))

(assert (=> d!1630794 (= lt!2088256 (ite ((_ is Empty!15558) (left!42807 (right!43137 xs!286))) 0 (ite ((_ is Leaf!25842) (left!42807 (right!43137 xs!286))) (csize!31347 (left!42807 (right!43137 xs!286))) (csize!31346 (left!42807 (right!43137 xs!286))))))))

(assert (=> d!1630794 (= (size!39064 (left!42807 (right!43137 xs!286))) lt!2088256)))

(declare-fun bs!1189676 () Bool)

(assert (= bs!1189676 d!1630794))

(assert (=> bs!1189676 m!6097056))

(assert (=> bs!1189676 m!6097056))

(assert (=> bs!1189676 m!6100334))

(assert (=> d!1629748 d!1630794))

(declare-fun d!1630796 () Bool)

(declare-fun lt!2088257 () Int)

(assert (=> d!1630796 (= lt!2088257 (size!39065 (list!18977 (right!43137 (right!43137 xs!286)))))))

(assert (=> d!1630796 (= lt!2088257 (ite ((_ is Empty!15558) (right!43137 (right!43137 xs!286))) 0 (ite ((_ is Leaf!25842) (right!43137 (right!43137 xs!286))) (csize!31347 (right!43137 (right!43137 xs!286))) (csize!31346 (right!43137 (right!43137 xs!286))))))))

(assert (=> d!1630796 (= (size!39064 (right!43137 (right!43137 xs!286))) lt!2088257)))

(declare-fun bs!1189677 () Bool)

(assert (= bs!1189677 d!1630796))

(assert (=> bs!1189677 m!6097058))

(assert (=> bs!1189677 m!6097058))

(assert (=> bs!1189677 m!6098030))

(assert (=> d!1629748 d!1630796))

(declare-fun b!5061943 () Bool)

(declare-fun res!2155384 () Bool)

(declare-fun e!3159367 () Bool)

(assert (=> b!5061943 (=> (not res!2155384) (not e!3159367))))

(assert (=> b!5061943 (= res!2155384 (isBalanced!4420 (left!42807 (right!43137 (left!42807 xs!286)))))))

(declare-fun b!5061944 () Bool)

(declare-fun res!2155385 () Bool)

(assert (=> b!5061944 (=> (not res!2155385) (not e!3159367))))

(assert (=> b!5061944 (= res!2155385 (isBalanced!4420 (right!43137 (right!43137 (left!42807 xs!286)))))))

(declare-fun b!5061945 () Bool)

(declare-fun res!2155387 () Bool)

(assert (=> b!5061945 (=> (not res!2155387) (not e!3159367))))

(assert (=> b!5061945 (= res!2155387 (not (isEmpty!31619 (left!42807 (right!43137 (left!42807 xs!286))))))))

(declare-fun b!5061946 () Bool)

(assert (=> b!5061946 (= e!3159367 (not (isEmpty!31619 (right!43137 (right!43137 (left!42807 xs!286))))))))

(declare-fun b!5061947 () Bool)

(declare-fun res!2155388 () Bool)

(assert (=> b!5061947 (=> (not res!2155388) (not e!3159367))))

(assert (=> b!5061947 (= res!2155388 (<= (- (height!2135 (left!42807 (right!43137 (left!42807 xs!286)))) (height!2135 (right!43137 (right!43137 (left!42807 xs!286))))) 1))))

(declare-fun b!5061948 () Bool)

(declare-fun e!3159368 () Bool)

(assert (=> b!5061948 (= e!3159368 e!3159367)))

(declare-fun res!2155386 () Bool)

(assert (=> b!5061948 (=> (not res!2155386) (not e!3159367))))

(assert (=> b!5061948 (= res!2155386 (<= (- 1) (- (height!2135 (left!42807 (right!43137 (left!42807 xs!286)))) (height!2135 (right!43137 (right!43137 (left!42807 xs!286)))))))))

(declare-fun d!1630798 () Bool)

(declare-fun res!2155383 () Bool)

(assert (=> d!1630798 (=> res!2155383 e!3159368)))

(assert (=> d!1630798 (= res!2155383 (not ((_ is Node!15558) (right!43137 (left!42807 xs!286)))))))

(assert (=> d!1630798 (= (isBalanced!4420 (right!43137 (left!42807 xs!286))) e!3159368)))

(assert (= (and d!1630798 (not res!2155383)) b!5061948))

(assert (= (and b!5061948 res!2155386) b!5061947))

(assert (= (and b!5061947 res!2155388) b!5061943))

(assert (= (and b!5061943 res!2155384) b!5061944))

(assert (= (and b!5061944 res!2155385) b!5061945))

(assert (= (and b!5061945 res!2155387) b!5061946))

(declare-fun m!6100990 () Bool)

(assert (=> b!5061945 m!6100990))

(assert (=> b!5061947 m!6100528))

(assert (=> b!5061947 m!6100530))

(declare-fun m!6100992 () Bool)

(assert (=> b!5061944 m!6100992))

(declare-fun m!6100994 () Bool)

(assert (=> b!5061946 m!6100994))

(declare-fun m!6100996 () Bool)

(assert (=> b!5061943 m!6100996))

(assert (=> b!5061948 m!6100528))

(assert (=> b!5061948 m!6100530))

(assert (=> b!5060506 d!1630798))

(assert (=> b!5060618 d!1630514))

(assert (=> b!5060618 d!1630516))

(declare-fun d!1630800 () Bool)

(declare-fun res!2155389 () Bool)

(declare-fun e!3159369 () Bool)

(assert (=> d!1630800 (=> (not res!2155389) (not e!3159369))))

(assert (=> d!1630800 (= res!2155389 (= (csize!31346 (left!42807 (right!43137 ys!41))) (+ (size!39064 (left!42807 (left!42807 (right!43137 ys!41)))) (size!39064 (right!43137 (left!42807 (right!43137 ys!41)))))))))

(assert (=> d!1630800 (= (inv!77526 (left!42807 (right!43137 ys!41))) e!3159369)))

(declare-fun b!5061949 () Bool)

(declare-fun res!2155390 () Bool)

(assert (=> b!5061949 (=> (not res!2155390) (not e!3159369))))

(assert (=> b!5061949 (= res!2155390 (and (not (= (left!42807 (left!42807 (right!43137 ys!41))) Empty!15558)) (not (= (right!43137 (left!42807 (right!43137 ys!41))) Empty!15558))))))

(declare-fun b!5061950 () Bool)

(declare-fun res!2155391 () Bool)

(assert (=> b!5061950 (=> (not res!2155391) (not e!3159369))))

(assert (=> b!5061950 (= res!2155391 (= (cheight!15769 (left!42807 (right!43137 ys!41))) (+ (max!0 (height!2135 (left!42807 (left!42807 (right!43137 ys!41)))) (height!2135 (right!43137 (left!42807 (right!43137 ys!41))))) 1)))))

(declare-fun b!5061951 () Bool)

(assert (=> b!5061951 (= e!3159369 (<= 0 (cheight!15769 (left!42807 (right!43137 ys!41)))))))

(assert (= (and d!1630800 res!2155389) b!5061949))

(assert (= (and b!5061949 res!2155390) b!5061950))

(assert (= (and b!5061950 res!2155391) b!5061951))

(declare-fun m!6100998 () Bool)

(assert (=> d!1630800 m!6100998))

(declare-fun m!6101000 () Bool)

(assert (=> d!1630800 m!6101000))

(assert (=> b!5061950 m!6100980))

(assert (=> b!5061950 m!6100982))

(assert (=> b!5061950 m!6100980))

(assert (=> b!5061950 m!6100982))

(declare-fun m!6101002 () Bool)

(assert (=> b!5061950 m!6101002))

(assert (=> b!5060549 d!1630800))

(declare-fun d!1630802 () Bool)

(declare-fun res!2155392 () Bool)

(declare-fun e!3159370 () Bool)

(assert (=> d!1630802 (=> (not res!2155392) (not e!3159370))))

(assert (=> d!1630802 (= res!2155392 (<= (size!39065 (list!18979 (xs!18896 (left!42807 (left!42807 xs!286))))) 512))))

(assert (=> d!1630802 (= (inv!77527 (left!42807 (left!42807 xs!286))) e!3159370)))

(declare-fun b!5061952 () Bool)

(declare-fun res!2155393 () Bool)

(assert (=> b!5061952 (=> (not res!2155393) (not e!3159370))))

(assert (=> b!5061952 (= res!2155393 (= (csize!31347 (left!42807 (left!42807 xs!286))) (size!39065 (list!18979 (xs!18896 (left!42807 (left!42807 xs!286)))))))))

(declare-fun b!5061953 () Bool)

(assert (=> b!5061953 (= e!3159370 (and (> (csize!31347 (left!42807 (left!42807 xs!286))) 0) (<= (csize!31347 (left!42807 (left!42807 xs!286))) 512)))))

(assert (= (and d!1630802 res!2155392) b!5061952))

(assert (= (and b!5061952 res!2155393) b!5061953))

(assert (=> d!1630802 m!6100962))

(assert (=> d!1630802 m!6100962))

(declare-fun m!6101004 () Bool)

(assert (=> d!1630802 m!6101004))

(assert (=> b!5061952 m!6100962))

(assert (=> b!5061952 m!6100962))

(assert (=> b!5061952 m!6101004))

(assert (=> b!5060723 d!1630802))

(declare-fun d!1630804 () Bool)

(declare-fun lt!2088258 () Int)

(assert (=> d!1630804 (>= lt!2088258 0)))

(declare-fun e!3159371 () Int)

(assert (=> d!1630804 (= lt!2088258 e!3159371)))

(declare-fun c!868711 () Bool)

(assert (=> d!1630804 (= c!868711 ((_ is Nil!58428) lt!2088030))))

(assert (=> d!1630804 (= (size!39065 lt!2088030) lt!2088258)))

(declare-fun b!5061954 () Bool)

(assert (=> b!5061954 (= e!3159371 0)))

(declare-fun b!5061955 () Bool)

(assert (=> b!5061955 (= e!3159371 (+ 1 (size!39065 (t!371255 lt!2088030))))))

(assert (= (and d!1630804 c!868711) b!5061954))

(assert (= (and d!1630804 (not c!868711)) b!5061955))

(declare-fun m!6101006 () Bool)

(assert (=> b!5061955 m!6101006))

(assert (=> b!5060586 d!1630804))

(declare-fun d!1630806 () Bool)

(declare-fun lt!2088259 () Int)

(assert (=> d!1630806 (>= lt!2088259 0)))

(declare-fun e!3159372 () Int)

(assert (=> d!1630806 (= lt!2088259 e!3159372)))

(declare-fun c!868712 () Bool)

(assert (=> d!1630806 (= c!868712 ((_ is Nil!58428) (list!18977 (left!42807 xs!286))))))

(assert (=> d!1630806 (= (size!39065 (list!18977 (left!42807 xs!286))) lt!2088259)))

(declare-fun b!5061956 () Bool)

(assert (=> b!5061956 (= e!3159372 0)))

(declare-fun b!5061957 () Bool)

(assert (=> b!5061957 (= e!3159372 (+ 1 (size!39065 (t!371255 (list!18977 (left!42807 xs!286))))))))

(assert (= (and d!1630806 c!868712) b!5061956))

(assert (= (and d!1630806 (not c!868712)) b!5061957))

(assert (=> b!5061957 m!6100010))

(assert (=> b!5060586 d!1630806))

(declare-fun d!1630808 () Bool)

(declare-fun lt!2088260 () Int)

(assert (=> d!1630808 (>= lt!2088260 0)))

(declare-fun e!3159373 () Int)

(assert (=> d!1630808 (= lt!2088260 e!3159373)))

(declare-fun c!868713 () Bool)

(assert (=> d!1630808 (= c!868713 ((_ is Nil!58428) (list!18977 (++!12778 (right!43137 xs!286) ys!41))))))

(assert (=> d!1630808 (= (size!39065 (list!18977 (++!12778 (right!43137 xs!286) ys!41))) lt!2088260)))

(declare-fun b!5061958 () Bool)

(assert (=> b!5061958 (= e!3159373 0)))

(declare-fun b!5061959 () Bool)

(assert (=> b!5061959 (= e!3159373 (+ 1 (size!39065 (t!371255 (list!18977 (++!12778 (right!43137 xs!286) ys!41))))))))

(assert (= (and d!1630808 c!868713) b!5061958))

(assert (= (and d!1630808 (not c!868713)) b!5061959))

(declare-fun m!6101008 () Bool)

(assert (=> b!5061959 m!6101008))

(assert (=> b!5060586 d!1630808))

(declare-fun d!1630810 () Bool)

(declare-fun e!3159374 () Bool)

(assert (=> d!1630810 e!3159374))

(declare-fun res!2155395 () Bool)

(assert (=> d!1630810 (=> (not res!2155395) (not e!3159374))))

(declare-fun lt!2088261 () List!58552)

(assert (=> d!1630810 (= res!2155395 (= (content!10414 lt!2088261) ((_ map or) (content!10414 (list!18977 (left!42807 (right!43137 ys!41)))) (content!10414 (list!18977 (right!43137 (right!43137 ys!41)))))))))

(declare-fun e!3159375 () List!58552)

(assert (=> d!1630810 (= lt!2088261 e!3159375)))

(declare-fun c!868714 () Bool)

(assert (=> d!1630810 (= c!868714 ((_ is Nil!58428) (list!18977 (left!42807 (right!43137 ys!41)))))))

(assert (=> d!1630810 (= (++!12779 (list!18977 (left!42807 (right!43137 ys!41))) (list!18977 (right!43137 (right!43137 ys!41)))) lt!2088261)))

(declare-fun b!5061963 () Bool)

(assert (=> b!5061963 (= e!3159374 (or (not (= (list!18977 (right!43137 (right!43137 ys!41))) Nil!58428)) (= lt!2088261 (list!18977 (left!42807 (right!43137 ys!41))))))))

(declare-fun b!5061962 () Bool)

(declare-fun res!2155394 () Bool)

(assert (=> b!5061962 (=> (not res!2155394) (not e!3159374))))

(assert (=> b!5061962 (= res!2155394 (= (size!39065 lt!2088261) (+ (size!39065 (list!18977 (left!42807 (right!43137 ys!41)))) (size!39065 (list!18977 (right!43137 (right!43137 ys!41)))))))))

(declare-fun b!5061960 () Bool)

(assert (=> b!5061960 (= e!3159375 (list!18977 (right!43137 (right!43137 ys!41))))))

(declare-fun b!5061961 () Bool)

(assert (=> b!5061961 (= e!3159375 (Cons!58428 (h!64876 (list!18977 (left!42807 (right!43137 ys!41)))) (++!12779 (t!371255 (list!18977 (left!42807 (right!43137 ys!41)))) (list!18977 (right!43137 (right!43137 ys!41))))))))

(assert (= (and d!1630810 c!868714) b!5061960))

(assert (= (and d!1630810 (not c!868714)) b!5061961))

(assert (= (and d!1630810 res!2155395) b!5061962))

(assert (= (and b!5061962 res!2155394) b!5061963))

(declare-fun m!6101010 () Bool)

(assert (=> d!1630810 m!6101010))

(assert (=> d!1630810 m!6098252))

(declare-fun m!6101012 () Bool)

(assert (=> d!1630810 m!6101012))

(assert (=> d!1630810 m!6098254))

(declare-fun m!6101014 () Bool)

(assert (=> d!1630810 m!6101014))

(declare-fun m!6101016 () Bool)

(assert (=> b!5061962 m!6101016))

(assert (=> b!5061962 m!6098252))

(assert (=> b!5061962 m!6100346))

(assert (=> b!5061962 m!6098254))

(assert (=> b!5061962 m!6100348))

(assert (=> b!5061961 m!6098254))

(declare-fun m!6101018 () Bool)

(assert (=> b!5061961 m!6101018))

(assert (=> b!5060643 d!1630810))

(declare-fun b!5061965 () Bool)

(declare-fun e!3159376 () List!58552)

(declare-fun e!3159377 () List!58552)

(assert (=> b!5061965 (= e!3159376 e!3159377)))

(declare-fun c!868716 () Bool)

(assert (=> b!5061965 (= c!868716 ((_ is Leaf!25842) (left!42807 (right!43137 ys!41))))))

(declare-fun b!5061966 () Bool)

(assert (=> b!5061966 (= e!3159377 (list!18979 (xs!18896 (left!42807 (right!43137 ys!41)))))))

(declare-fun b!5061964 () Bool)

(assert (=> b!5061964 (= e!3159376 Nil!58428)))

(declare-fun b!5061967 () Bool)

(assert (=> b!5061967 (= e!3159377 (++!12779 (list!18977 (left!42807 (left!42807 (right!43137 ys!41)))) (list!18977 (right!43137 (left!42807 (right!43137 ys!41))))))))

(declare-fun d!1630812 () Bool)

(declare-fun c!868715 () Bool)

(assert (=> d!1630812 (= c!868715 ((_ is Empty!15558) (left!42807 (right!43137 ys!41))))))

(assert (=> d!1630812 (= (list!18977 (left!42807 (right!43137 ys!41))) e!3159376)))

(assert (= (and d!1630812 c!868715) b!5061964))

(assert (= (and d!1630812 (not c!868715)) b!5061965))

(assert (= (and b!5061965 c!868716) b!5061966))

(assert (= (and b!5061965 (not c!868716)) b!5061967))

(assert (=> b!5061966 m!6100648))

(declare-fun m!6101020 () Bool)

(assert (=> b!5061967 m!6101020))

(declare-fun m!6101022 () Bool)

(assert (=> b!5061967 m!6101022))

(assert (=> b!5061967 m!6101020))

(assert (=> b!5061967 m!6101022))

(declare-fun m!6101024 () Bool)

(assert (=> b!5061967 m!6101024))

(assert (=> b!5060643 d!1630812))

(declare-fun b!5061969 () Bool)

(declare-fun e!3159378 () List!58552)

(declare-fun e!3159379 () List!58552)

(assert (=> b!5061969 (= e!3159378 e!3159379)))

(declare-fun c!868718 () Bool)

(assert (=> b!5061969 (= c!868718 ((_ is Leaf!25842) (right!43137 (right!43137 ys!41))))))

(declare-fun b!5061970 () Bool)

(assert (=> b!5061970 (= e!3159379 (list!18979 (xs!18896 (right!43137 (right!43137 ys!41)))))))

(declare-fun b!5061968 () Bool)

(assert (=> b!5061968 (= e!3159378 Nil!58428)))

(declare-fun b!5061971 () Bool)

(assert (=> b!5061971 (= e!3159379 (++!12779 (list!18977 (left!42807 (right!43137 (right!43137 ys!41)))) (list!18977 (right!43137 (right!43137 (right!43137 ys!41))))))))

(declare-fun d!1630814 () Bool)

(declare-fun c!868717 () Bool)

(assert (=> d!1630814 (= c!868717 ((_ is Empty!15558) (right!43137 (right!43137 ys!41))))))

(assert (=> d!1630814 (= (list!18977 (right!43137 (right!43137 ys!41))) e!3159378)))

(assert (= (and d!1630814 c!868717) b!5061968))

(assert (= (and d!1630814 (not c!868717)) b!5061969))

(assert (= (and b!5061969 c!868718) b!5061970))

(assert (= (and b!5061969 (not c!868718)) b!5061971))

(declare-fun m!6101026 () Bool)

(assert (=> b!5061970 m!6101026))

(declare-fun m!6101028 () Bool)

(assert (=> b!5061971 m!6101028))

(declare-fun m!6101030 () Bool)

(assert (=> b!5061971 m!6101030))

(assert (=> b!5061971 m!6101028))

(assert (=> b!5061971 m!6101030))

(declare-fun m!6101032 () Bool)

(assert (=> b!5061971 m!6101032))

(assert (=> b!5060643 d!1630814))

(declare-fun b!5061972 () Bool)

(declare-fun res!2155397 () Bool)

(declare-fun e!3159380 () Bool)

(assert (=> b!5061972 (=> (not res!2155397) (not e!3159380))))

(assert (=> b!5061972 (= res!2155397 (isBalanced!4420 (left!42807 (left!42807 (left!42807 lt!2087928)))))))

(declare-fun b!5061973 () Bool)

(declare-fun res!2155398 () Bool)

(assert (=> b!5061973 (=> (not res!2155398) (not e!3159380))))

(assert (=> b!5061973 (= res!2155398 (isBalanced!4420 (right!43137 (left!42807 (left!42807 lt!2087928)))))))

(declare-fun b!5061974 () Bool)

(declare-fun res!2155400 () Bool)

(assert (=> b!5061974 (=> (not res!2155400) (not e!3159380))))

(assert (=> b!5061974 (= res!2155400 (not (isEmpty!31619 (left!42807 (left!42807 (left!42807 lt!2087928))))))))

(declare-fun b!5061975 () Bool)

(assert (=> b!5061975 (= e!3159380 (not (isEmpty!31619 (right!43137 (left!42807 (left!42807 lt!2087928))))))))

(declare-fun b!5061976 () Bool)

(declare-fun res!2155401 () Bool)

(assert (=> b!5061976 (=> (not res!2155401) (not e!3159380))))

(assert (=> b!5061976 (= res!2155401 (<= (- (height!2135 (left!42807 (left!42807 (left!42807 lt!2087928)))) (height!2135 (right!43137 (left!42807 (left!42807 lt!2087928))))) 1))))

(declare-fun b!5061977 () Bool)

(declare-fun e!3159381 () Bool)

(assert (=> b!5061977 (= e!3159381 e!3159380)))

(declare-fun res!2155399 () Bool)

(assert (=> b!5061977 (=> (not res!2155399) (not e!3159380))))

(assert (=> b!5061977 (= res!2155399 (<= (- 1) (- (height!2135 (left!42807 (left!42807 (left!42807 lt!2087928)))) (height!2135 (right!43137 (left!42807 (left!42807 lt!2087928)))))))))

(declare-fun d!1630816 () Bool)

(declare-fun res!2155396 () Bool)

(assert (=> d!1630816 (=> res!2155396 e!3159381)))

(assert (=> d!1630816 (= res!2155396 (not ((_ is Node!15558) (left!42807 (left!42807 lt!2087928)))))))

(assert (=> d!1630816 (= (isBalanced!4420 (left!42807 (left!42807 lt!2087928))) e!3159381)))

(assert (= (and d!1630816 (not res!2155396)) b!5061977))

(assert (= (and b!5061977 res!2155399) b!5061976))

(assert (= (and b!5061976 res!2155401) b!5061972))

(assert (= (and b!5061972 res!2155397) b!5061973))

(assert (= (and b!5061973 res!2155398) b!5061974))

(assert (= (and b!5061974 res!2155400) b!5061975))

(declare-fun m!6101034 () Bool)

(assert (=> b!5061974 m!6101034))

(declare-fun m!6101036 () Bool)

(assert (=> b!5061976 m!6101036))

(declare-fun m!6101038 () Bool)

(assert (=> b!5061976 m!6101038))

(declare-fun m!6101040 () Bool)

(assert (=> b!5061973 m!6101040))

(declare-fun m!6101042 () Bool)

(assert (=> b!5061975 m!6101042))

(declare-fun m!6101044 () Bool)

(assert (=> b!5061972 m!6101044))

(assert (=> b!5061977 m!6101036))

(assert (=> b!5061977 m!6101038))

(assert (=> b!5060713 d!1630816))

(declare-fun d!1630818 () Bool)

(assert (=> d!1630818 (= (max!0 (height!2135 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) (height!2135 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))) (ite (< (height!2135 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) (height!2135 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))) (height!2135 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) (height!2135 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))))))))

(assert (=> b!5060676 d!1630818))

(declare-fun d!1630820 () Bool)

(assert (=> d!1630820 (= (height!2135 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) (ite ((_ is Empty!15558) (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) 0 (ite ((_ is Leaf!25842) (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) 1 (cheight!15769 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))))))))

(assert (=> b!5060676 d!1630820))

(declare-fun d!1630822 () Bool)

(declare-fun lt!2088262 () Int)

(assert (=> d!1630822 (= lt!2088262 (size!39065 (list!18977 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))))))

(assert (=> d!1630822 (= lt!2088262 (ite ((_ is Empty!15558) (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) 0 (ite ((_ is Leaf!25842) (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) (csize!31347 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) (csize!31346 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))))))))

(assert (=> d!1630822 (= (size!39064 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) lt!2088262)))

(declare-fun bs!1189678 () Bool)

(assert (= bs!1189678 d!1630822))

(assert (=> bs!1189678 m!6098332))

(assert (=> bs!1189678 m!6098332))

(declare-fun m!6101046 () Bool)

(assert (=> bs!1189678 m!6101046))

(assert (=> b!5060676 d!1630822))

(declare-fun d!1630824 () Bool)

(declare-fun lt!2088263 () Int)

(assert (=> d!1630824 (= lt!2088263 (size!39065 (list!18977 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))))))))

(assert (=> d!1630824 (= lt!2088263 (ite ((_ is Empty!15558) (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) 0 (ite ((_ is Leaf!25842) (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) (csize!31347 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) (csize!31346 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))))))))

(assert (=> d!1630824 (= (size!39064 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) lt!2088263)))

(declare-fun bs!1189679 () Bool)

(assert (= bs!1189679 d!1630824))

(assert (=> bs!1189679 m!6098330))

(assert (=> bs!1189679 m!6098330))

(declare-fun m!6101048 () Bool)

(assert (=> bs!1189679 m!6101048))

(assert (=> b!5060676 d!1630824))

(declare-fun d!1630826 () Bool)

(assert (=> d!1630826 (= (height!2135 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) (ite ((_ is Empty!15558) (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) 0 (ite ((_ is Leaf!25842) (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) 1 (cheight!15769 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))))))))

(assert (=> b!5060676 d!1630826))

(declare-fun d!1630828 () Bool)

(declare-fun c!868719 () Bool)

(assert (=> d!1630828 (= c!868719 ((_ is Node!15558) (left!42807 (right!43137 (right!43137 xs!286)))))))

(declare-fun e!3159382 () Bool)

(assert (=> d!1630828 (= (inv!77523 (left!42807 (right!43137 (right!43137 xs!286)))) e!3159382)))

(declare-fun b!5061978 () Bool)

(assert (=> b!5061978 (= e!3159382 (inv!77526 (left!42807 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5061979 () Bool)

(declare-fun e!3159383 () Bool)

(assert (=> b!5061979 (= e!3159382 e!3159383)))

(declare-fun res!2155402 () Bool)

(assert (=> b!5061979 (= res!2155402 (not ((_ is Leaf!25842) (left!42807 (right!43137 (right!43137 xs!286))))))))

(assert (=> b!5061979 (=> res!2155402 e!3159383)))

(declare-fun b!5061980 () Bool)

(assert (=> b!5061980 (= e!3159383 (inv!77527 (left!42807 (right!43137 (right!43137 xs!286)))))))

(assert (= (and d!1630828 c!868719) b!5061978))

(assert (= (and d!1630828 (not c!868719)) b!5061979))

(assert (= (and b!5061979 (not res!2155402)) b!5061980))

(declare-fun m!6101050 () Bool)

(assert (=> b!5061978 m!6101050))

(declare-fun m!6101052 () Bool)

(assert (=> b!5061980 m!6101052))

(assert (=> b!5060770 d!1630828))

(declare-fun d!1630830 () Bool)

(declare-fun c!868720 () Bool)

(assert (=> d!1630830 (= c!868720 ((_ is Node!15558) (right!43137 (right!43137 (right!43137 xs!286)))))))

(declare-fun e!3159384 () Bool)

(assert (=> d!1630830 (= (inv!77523 (right!43137 (right!43137 (right!43137 xs!286)))) e!3159384)))

(declare-fun b!5061981 () Bool)

(assert (=> b!5061981 (= e!3159384 (inv!77526 (right!43137 (right!43137 (right!43137 xs!286)))))))

(declare-fun b!5061982 () Bool)

(declare-fun e!3159385 () Bool)

(assert (=> b!5061982 (= e!3159384 e!3159385)))

(declare-fun res!2155403 () Bool)

(assert (=> b!5061982 (= res!2155403 (not ((_ is Leaf!25842) (right!43137 (right!43137 (right!43137 xs!286))))))))

(assert (=> b!5061982 (=> res!2155403 e!3159385)))

(declare-fun b!5061983 () Bool)

(assert (=> b!5061983 (= e!3159385 (inv!77527 (right!43137 (right!43137 (right!43137 xs!286)))))))

(assert (= (and d!1630830 c!868720) b!5061981))

(assert (= (and d!1630830 (not c!868720)) b!5061982))

(assert (= (and b!5061982 (not res!2155403)) b!5061983))

(declare-fun m!6101054 () Bool)

(assert (=> b!5061981 m!6101054))

(declare-fun m!6101056 () Bool)

(assert (=> b!5061983 m!6101056))

(assert (=> b!5060770 d!1630830))

(declare-fun d!1630832 () Bool)

(declare-fun res!2155404 () Bool)

(declare-fun e!3159386 () Bool)

(assert (=> d!1630832 (=> (not res!2155404) (not e!3159386))))

(assert (=> d!1630832 (= res!2155404 (<= (size!39065 (list!18979 (xs!18896 (left!42807 (right!43137 xs!286))))) 512))))

(assert (=> d!1630832 (= (inv!77527 (left!42807 (right!43137 xs!286))) e!3159386)))

(declare-fun b!5061984 () Bool)

(declare-fun res!2155405 () Bool)

(assert (=> b!5061984 (=> (not res!2155405) (not e!3159386))))

(assert (=> b!5061984 (= res!2155405 (= (csize!31347 (left!42807 (right!43137 xs!286))) (size!39065 (list!18979 (xs!18896 (left!42807 (right!43137 xs!286)))))))))

(declare-fun b!5061985 () Bool)

(assert (=> b!5061985 (= e!3159386 (and (> (csize!31347 (left!42807 (right!43137 xs!286))) 0) (<= (csize!31347 (left!42807 (right!43137 xs!286))) 512)))))

(assert (= (and d!1630832 res!2155404) b!5061984))

(assert (= (and b!5061984 res!2155405) b!5061985))

(assert (=> d!1630832 m!6098016))

(assert (=> d!1630832 m!6098016))

(declare-fun m!6101058 () Bool)

(assert (=> d!1630832 m!6101058))

(assert (=> b!5061984 m!6098016))

(assert (=> b!5061984 m!6098016))

(assert (=> b!5061984 m!6101058))

(assert (=> b!5060748 d!1630832))

(assert (=> b!5060702 d!1630650))

(assert (=> b!5060702 d!1630648))

(declare-fun d!1630834 () Bool)

(declare-fun e!3159387 () Bool)

(assert (=> d!1630834 e!3159387))

(declare-fun res!2155407 () Bool)

(assert (=> d!1630834 (=> (not res!2155407) (not e!3159387))))

(declare-fun lt!2088264 () List!58552)

(assert (=> d!1630834 (= res!2155407 (= (content!10414 lt!2088264) ((_ map or) (content!10414 (t!371255 (list!18977 (left!42807 xs!286)))) (content!10414 (list!18977 (++!12778 (right!43137 xs!286) ys!41))))))))

(declare-fun e!3159388 () List!58552)

(assert (=> d!1630834 (= lt!2088264 e!3159388)))

(declare-fun c!868721 () Bool)

(assert (=> d!1630834 (= c!868721 ((_ is Nil!58428) (t!371255 (list!18977 (left!42807 xs!286)))))))

(assert (=> d!1630834 (= (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) (list!18977 (++!12778 (right!43137 xs!286) ys!41))) lt!2088264)))

(declare-fun b!5061989 () Bool)

(assert (=> b!5061989 (= e!3159387 (or (not (= (list!18977 (++!12778 (right!43137 xs!286) ys!41)) Nil!58428)) (= lt!2088264 (t!371255 (list!18977 (left!42807 xs!286))))))))

(declare-fun b!5061988 () Bool)

(declare-fun res!2155406 () Bool)

(assert (=> b!5061988 (=> (not res!2155406) (not e!3159387))))

(assert (=> b!5061988 (= res!2155406 (= (size!39065 lt!2088264) (+ (size!39065 (t!371255 (list!18977 (left!42807 xs!286)))) (size!39065 (list!18977 (++!12778 (right!43137 xs!286) ys!41))))))))

(declare-fun b!5061986 () Bool)

(assert (=> b!5061986 (= e!3159388 (list!18977 (++!12778 (right!43137 xs!286) ys!41)))))

(declare-fun b!5061987 () Bool)

(assert (=> b!5061987 (= e!3159388 (Cons!58428 (h!64876 (t!371255 (list!18977 (left!42807 xs!286)))) (++!12779 (t!371255 (t!371255 (list!18977 (left!42807 xs!286)))) (list!18977 (++!12778 (right!43137 xs!286) ys!41)))))))

(assert (= (and d!1630834 c!868721) b!5061986))

(assert (= (and d!1630834 (not c!868721)) b!5061987))

(assert (= (and d!1630834 res!2155407) b!5061988))

(assert (= (and b!5061988 res!2155406) b!5061989))

(declare-fun m!6101060 () Bool)

(assert (=> d!1630834 m!6101060))

(assert (=> d!1630834 m!6100006))

(assert (=> d!1630834 m!6097084))

(assert (=> d!1630834 m!6098144))

(declare-fun m!6101062 () Bool)

(assert (=> b!5061988 m!6101062))

(assert (=> b!5061988 m!6100010))

(assert (=> b!5061988 m!6097084))

(assert (=> b!5061988 m!6098098))

(assert (=> b!5061987 m!6097084))

(declare-fun m!6101064 () Bool)

(assert (=> b!5061987 m!6101064))

(assert (=> b!5060585 d!1630834))

(declare-fun d!1630836 () Bool)

(assert (=> d!1630836 (= (list!18979 (xs!18896 (right!43137 ys!41))) (innerList!15646 (xs!18896 (right!43137 ys!41))))))

(assert (=> b!5060642 d!1630836))

(declare-fun d!1630838 () Bool)

(assert (=> d!1630838 (= (list!18979 (xs!18896 (left!42807 (right!43137 xs!286)))) (innerList!15646 (xs!18896 (left!42807 (right!43137 xs!286)))))))

(assert (=> b!5060527 d!1630838))

(declare-fun b!5061990 () Bool)

(declare-fun res!2155409 () Bool)

(declare-fun e!3159389 () Bool)

(assert (=> b!5061990 (=> (not res!2155409) (not e!3159389))))

(assert (=> b!5061990 (= res!2155409 (isBalanced!4420 (left!42807 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5061991 () Bool)

(declare-fun res!2155410 () Bool)

(assert (=> b!5061991 (=> (not res!2155410) (not e!3159389))))

(assert (=> b!5061991 (= res!2155410 (isBalanced!4420 (right!43137 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5061992 () Bool)

(declare-fun res!2155412 () Bool)

(assert (=> b!5061992 (=> (not res!2155412) (not e!3159389))))

(assert (=> b!5061992 (= res!2155412 (not (isEmpty!31619 (left!42807 (right!43137 (left!42807 ys!41))))))))

(declare-fun b!5061993 () Bool)

(assert (=> b!5061993 (= e!3159389 (not (isEmpty!31619 (right!43137 (right!43137 (left!42807 ys!41))))))))

(declare-fun b!5061994 () Bool)

(declare-fun res!2155413 () Bool)

(assert (=> b!5061994 (=> (not res!2155413) (not e!3159389))))

(assert (=> b!5061994 (= res!2155413 (<= (- (height!2135 (left!42807 (right!43137 (left!42807 ys!41)))) (height!2135 (right!43137 (right!43137 (left!42807 ys!41))))) 1))))

(declare-fun b!5061995 () Bool)

(declare-fun e!3159390 () Bool)

(assert (=> b!5061995 (= e!3159390 e!3159389)))

(declare-fun res!2155411 () Bool)

(assert (=> b!5061995 (=> (not res!2155411) (not e!3159389))))

(assert (=> b!5061995 (= res!2155411 (<= (- 1) (- (height!2135 (left!42807 (right!43137 (left!42807 ys!41)))) (height!2135 (right!43137 (right!43137 (left!42807 ys!41)))))))))

(declare-fun d!1630840 () Bool)

(declare-fun res!2155408 () Bool)

(assert (=> d!1630840 (=> res!2155408 e!3159390)))

(assert (=> d!1630840 (= res!2155408 (not ((_ is Node!15558) (right!43137 (left!42807 ys!41)))))))

(assert (=> d!1630840 (= (isBalanced!4420 (right!43137 (left!42807 ys!41))) e!3159390)))

(assert (= (and d!1630840 (not res!2155408)) b!5061995))

(assert (= (and b!5061995 res!2155411) b!5061994))

(assert (= (and b!5061994 res!2155413) b!5061990))

(assert (= (and b!5061990 res!2155409) b!5061991))

(assert (= (and b!5061991 res!2155410) b!5061992))

(assert (= (and b!5061992 res!2155412) b!5061993))

(declare-fun m!6101066 () Bool)

(assert (=> b!5061992 m!6101066))

(assert (=> b!5061994 m!6100896))

(assert (=> b!5061994 m!6100898))

(declare-fun m!6101068 () Bool)

(assert (=> b!5061991 m!6101068))

(declare-fun m!6101070 () Bool)

(assert (=> b!5061993 m!6101070))

(declare-fun m!6101072 () Bool)

(assert (=> b!5061990 m!6101072))

(assert (=> b!5061995 m!6100896))

(assert (=> b!5061995 m!6100898))

(assert (=> b!5060500 d!1630840))

(declare-fun d!1630842 () Bool)

(declare-fun e!3159391 () Bool)

(assert (=> d!1630842 e!3159391))

(declare-fun res!2155415 () Bool)

(assert (=> d!1630842 (=> (not res!2155415) (not e!3159391))))

(declare-fun lt!2088265 () List!58552)

(assert (=> d!1630842 (= res!2155415 (= (content!10414 lt!2088265) ((_ map or) (content!10414 (list!18977 xs!286)) (content!10414 call!352437))))))

(declare-fun e!3159392 () List!58552)

(assert (=> d!1630842 (= lt!2088265 e!3159392)))

(declare-fun c!868722 () Bool)

(assert (=> d!1630842 (= c!868722 ((_ is Nil!58428) (list!18977 xs!286)))))

(assert (=> d!1630842 (= (++!12779 (list!18977 xs!286) call!352437) lt!2088265)))

(declare-fun b!5061999 () Bool)

(assert (=> b!5061999 (= e!3159391 (or (not (= call!352437 Nil!58428)) (= lt!2088265 (list!18977 xs!286))))))

(declare-fun b!5061998 () Bool)

(declare-fun res!2155414 () Bool)

(assert (=> b!5061998 (=> (not res!2155414) (not e!3159391))))

(assert (=> b!5061998 (= res!2155414 (= (size!39065 lt!2088265) (+ (size!39065 (list!18977 xs!286)) (size!39065 call!352437))))))

(declare-fun b!5061996 () Bool)

(assert (=> b!5061996 (= e!3159392 call!352437)))

(declare-fun b!5061997 () Bool)

(assert (=> b!5061997 (= e!3159392 (Cons!58428 (h!64876 (list!18977 xs!286)) (++!12779 (t!371255 (list!18977 xs!286)) call!352437)))))

(assert (= (and d!1630842 c!868722) b!5061996))

(assert (= (and d!1630842 (not c!868722)) b!5061997))

(assert (= (and d!1630842 res!2155415) b!5061998))

(assert (= (and b!5061998 res!2155414) b!5061999))

(declare-fun m!6101074 () Bool)

(assert (=> d!1630842 m!6101074))

(assert (=> d!1630842 m!6096984))

(assert (=> d!1630842 m!6097338))

(declare-fun m!6101076 () Bool)

(assert (=> d!1630842 m!6101076))

(declare-fun m!6101078 () Bool)

(assert (=> b!5061998 m!6101078))

(assert (=> b!5061998 m!6096984))

(assert (=> b!5061998 m!6097344))

(declare-fun m!6101080 () Bool)

(assert (=> b!5061998 m!6101080))

(declare-fun m!6101082 () Bool)

(assert (=> b!5061997 m!6101082))

(assert (=> bm!352432 d!1630842))

(declare-fun d!1630844 () Bool)

(declare-fun c!868723 () Bool)

(assert (=> d!1630844 (= c!868723 ((_ is Node!15558) (left!42807 (left!42807 (left!42807 ys!41)))))))

(declare-fun e!3159393 () Bool)

(assert (=> d!1630844 (= (inv!77523 (left!42807 (left!42807 (left!42807 ys!41)))) e!3159393)))

(declare-fun b!5062000 () Bool)

(assert (=> b!5062000 (= e!3159393 (inv!77526 (left!42807 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5062001 () Bool)

(declare-fun e!3159394 () Bool)

(assert (=> b!5062001 (= e!3159393 e!3159394)))

(declare-fun res!2155416 () Bool)

(assert (=> b!5062001 (= res!2155416 (not ((_ is Leaf!25842) (left!42807 (left!42807 (left!42807 ys!41))))))))

(assert (=> b!5062001 (=> res!2155416 e!3159394)))

(declare-fun b!5062002 () Bool)

(assert (=> b!5062002 (= e!3159394 (inv!77527 (left!42807 (left!42807 (left!42807 ys!41)))))))

(assert (= (and d!1630844 c!868723) b!5062000))

(assert (= (and d!1630844 (not c!868723)) b!5062001))

(assert (= (and b!5062001 (not res!2155416)) b!5062002))

(declare-fun m!6101084 () Bool)

(assert (=> b!5062000 m!6101084))

(declare-fun m!6101086 () Bool)

(assert (=> b!5062002 m!6101086))

(assert (=> b!5060758 d!1630844))

(declare-fun d!1630846 () Bool)

(declare-fun c!868724 () Bool)

(assert (=> d!1630846 (= c!868724 ((_ is Node!15558) (right!43137 (left!42807 (left!42807 ys!41)))))))

(declare-fun e!3159395 () Bool)

(assert (=> d!1630846 (= (inv!77523 (right!43137 (left!42807 (left!42807 ys!41)))) e!3159395)))

(declare-fun b!5062003 () Bool)

(assert (=> b!5062003 (= e!3159395 (inv!77526 (right!43137 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5062004 () Bool)

(declare-fun e!3159396 () Bool)

(assert (=> b!5062004 (= e!3159395 e!3159396)))

(declare-fun res!2155417 () Bool)

(assert (=> b!5062004 (= res!2155417 (not ((_ is Leaf!25842) (right!43137 (left!42807 (left!42807 ys!41))))))))

(assert (=> b!5062004 (=> res!2155417 e!3159396)))

(declare-fun b!5062005 () Bool)

(assert (=> b!5062005 (= e!3159396 (inv!77527 (right!43137 (left!42807 (left!42807 ys!41)))))))

(assert (= (and d!1630846 c!868724) b!5062003))

(assert (= (and d!1630846 (not c!868724)) b!5062004))

(assert (= (and b!5062004 (not res!2155417)) b!5062005))

(declare-fun m!6101088 () Bool)

(assert (=> b!5062003 m!6101088))

(declare-fun m!6101090 () Bool)

(assert (=> b!5062005 m!6101090))

(assert (=> b!5060758 d!1630846))

(assert (=> d!1629690 d!1630808))

(assert (=> d!1629690 d!1629716))

(declare-fun b!5062007 () Bool)

(declare-fun e!3159397 () List!58552)

(declare-fun e!3159398 () List!58552)

(assert (=> b!5062007 (= e!3159397 e!3159398)))

(declare-fun c!868726 () Bool)

(assert (=> b!5062007 (= c!868726 ((_ is Leaf!25842) lt!2088039))))

(declare-fun b!5062008 () Bool)

(assert (=> b!5062008 (= e!3159398 (list!18979 (xs!18896 lt!2088039)))))

(declare-fun b!5062006 () Bool)

(assert (=> b!5062006 (= e!3159397 Nil!58428)))

(declare-fun b!5062009 () Bool)

(assert (=> b!5062009 (= e!3159398 (++!12779 (list!18977 (left!42807 lt!2088039)) (list!18977 (right!43137 lt!2088039))))))

(declare-fun d!1630848 () Bool)

(declare-fun c!868725 () Bool)

(assert (=> d!1630848 (= c!868725 ((_ is Empty!15558) lt!2088039))))

(assert (=> d!1630848 (= (list!18977 lt!2088039) e!3159397)))

(assert (= (and d!1630848 c!868725) b!5062006))

(assert (= (and d!1630848 (not c!868725)) b!5062007))

(assert (= (and b!5062007 c!868726) b!5062008))

(assert (= (and b!5062007 (not c!868726)) b!5062009))

(declare-fun m!6101092 () Bool)

(assert (=> b!5062008 m!6101092))

(declare-fun m!6101094 () Bool)

(assert (=> b!5062009 m!6101094))

(declare-fun m!6101096 () Bool)

(assert (=> b!5062009 m!6101096))

(assert (=> b!5062009 m!6101094))

(assert (=> b!5062009 m!6101096))

(declare-fun m!6101098 () Bool)

(assert (=> b!5062009 m!6101098))

(assert (=> d!1629774 d!1630848))

(declare-fun d!1630850 () Bool)

(declare-fun e!3159399 () Bool)

(assert (=> d!1630850 e!3159399))

(declare-fun res!2155419 () Bool)

(assert (=> d!1630850 (=> (not res!2155419) (not e!3159399))))

(declare-fun lt!2088266 () List!58552)

(assert (=> d!1630850 (= res!2155419 (= (content!10414 lt!2088266) ((_ map or) (content!10414 (list!18977 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))))) (content!10414 (list!18977 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))))))))

(declare-fun e!3159400 () List!58552)

(assert (=> d!1630850 (= lt!2088266 e!3159400)))

(declare-fun c!868727 () Bool)

(assert (=> d!1630850 (= c!868727 ((_ is Nil!58428) (list!18977 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))))))))

(assert (=> d!1630850 (= (++!12779 (list!18977 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) (list!18977 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))) lt!2088266)))

(declare-fun b!5062013 () Bool)

(assert (=> b!5062013 (= e!3159399 (or (not (= (list!18977 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) Nil!58428)) (= lt!2088266 (list!18977 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))))))))

(declare-fun b!5062012 () Bool)

(declare-fun res!2155418 () Bool)

(assert (=> b!5062012 (=> (not res!2155418) (not e!3159399))))

(assert (=> b!5062012 (= res!2155418 (= (size!39065 lt!2088266) (+ (size!39065 (list!18977 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))))) (size!39065 (list!18977 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))))))))

(declare-fun b!5062010 () Bool)

(assert (=> b!5062010 (= e!3159400 (list!18977 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))))))

(declare-fun b!5062011 () Bool)

(assert (=> b!5062011 (= e!3159400 (Cons!58428 (h!64876 (list!18977 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))))) (++!12779 (t!371255 (list!18977 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))))) (list!18977 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))))))))

(assert (= (and d!1630850 c!868727) b!5062010))

(assert (= (and d!1630850 (not c!868727)) b!5062011))

(assert (= (and d!1630850 res!2155419) b!5062012))

(assert (= (and b!5062012 res!2155418) b!5062013))

(declare-fun m!6101100 () Bool)

(assert (=> d!1630850 m!6101100))

(assert (=> d!1630850 m!6098330))

(declare-fun m!6101102 () Bool)

(assert (=> d!1630850 m!6101102))

(assert (=> d!1630850 m!6098332))

(declare-fun m!6101104 () Bool)

(assert (=> d!1630850 m!6101104))

(declare-fun m!6101106 () Bool)

(assert (=> b!5062012 m!6101106))

(assert (=> b!5062012 m!6098330))

(assert (=> b!5062012 m!6101048))

(assert (=> b!5062012 m!6098332))

(assert (=> b!5062012 m!6101046))

(assert (=> b!5062011 m!6098332))

(declare-fun m!6101108 () Bool)

(assert (=> b!5062011 m!6101108))

(assert (=> d!1629774 d!1630850))

(declare-fun b!5062015 () Bool)

(declare-fun e!3159401 () List!58552)

(declare-fun e!3159402 () List!58552)

(assert (=> b!5062015 (= e!3159401 e!3159402)))

(declare-fun c!868729 () Bool)

(assert (=> b!5062015 (= c!868729 ((_ is Leaf!25842) (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))))))

(declare-fun b!5062016 () Bool)

(assert (=> b!5062016 (= e!3159402 (list!18979 (xs!18896 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))))))))

(declare-fun b!5062014 () Bool)

(assert (=> b!5062014 (= e!3159401 Nil!58428)))

(declare-fun b!5062017 () Bool)

(assert (=> b!5062017 (= e!3159402 (++!12779 (list!18977 (left!42807 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964))))) (list!18977 (right!43137 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))))))))

(declare-fun c!868728 () Bool)

(declare-fun d!1630852 () Bool)

(assert (=> d!1630852 (= c!868728 ((_ is Empty!15558) (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))))))

(assert (=> d!1630852 (= (list!18977 (ite c!868194 (right!43137 xs!286) (ite c!868195 (ite c!868200 (left!42807 (right!43137 xs!286)) call!352367) (ite c!868196 call!352366 lt!2087964)))) e!3159401)))

(assert (= (and d!1630852 c!868728) b!5062014))

(assert (= (and d!1630852 (not c!868728)) b!5062015))

(assert (= (and b!5062015 c!868729) b!5062016))

(assert (= (and b!5062015 (not c!868729)) b!5062017))

(declare-fun m!6101110 () Bool)

(assert (=> b!5062016 m!6101110))

(declare-fun m!6101112 () Bool)

(assert (=> b!5062017 m!6101112))

(declare-fun m!6101114 () Bool)

(assert (=> b!5062017 m!6101114))

(assert (=> b!5062017 m!6101112))

(assert (=> b!5062017 m!6101114))

(declare-fun m!6101116 () Bool)

(assert (=> b!5062017 m!6101116))

(assert (=> d!1629774 d!1630852))

(declare-fun b!5062019 () Bool)

(declare-fun e!3159403 () List!58552)

(declare-fun e!3159404 () List!58552)

(assert (=> b!5062019 (= e!3159403 e!3159404)))

(declare-fun c!868731 () Bool)

(assert (=> b!5062019 (= c!868731 ((_ is Leaf!25842) (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))))))

(declare-fun b!5062020 () Bool)

(assert (=> b!5062020 (= e!3159404 (list!18979 (xs!18896 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))))))

(declare-fun b!5062018 () Bool)

(assert (=> b!5062018 (= e!3159403 Nil!58428)))

(declare-fun b!5062021 () Bool)

(assert (=> b!5062021 (= e!3159404 (++!12779 (list!18977 (left!42807 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366))))) (list!18977 (right!43137 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))))))))

(declare-fun d!1630854 () Bool)

(declare-fun c!868730 () Bool)

(assert (=> d!1630854 (= c!868730 ((_ is Empty!15558) (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))))))

(assert (=> d!1630854 (= (list!18977 (ite c!868194 ys!41 (ite c!868195 (ite c!868200 call!352367 lt!2087965) (ite c!868196 (right!43137 ys!41) call!352366)))) e!3159403)))

(assert (= (and d!1630854 c!868730) b!5062018))

(assert (= (and d!1630854 (not c!868730)) b!5062019))

(assert (= (and b!5062019 c!868731) b!5062020))

(assert (= (and b!5062019 (not c!868731)) b!5062021))

(declare-fun m!6101118 () Bool)

(assert (=> b!5062020 m!6101118))

(declare-fun m!6101120 () Bool)

(assert (=> b!5062021 m!6101120))

(declare-fun m!6101122 () Bool)

(assert (=> b!5062021 m!6101122))

(assert (=> b!5062021 m!6101120))

(assert (=> b!5062021 m!6101122))

(declare-fun m!6101124 () Bool)

(assert (=> b!5062021 m!6101124))

(assert (=> d!1629774 d!1630854))

(declare-fun d!1630856 () Bool)

(declare-fun lt!2088267 () Bool)

(assert (=> d!1630856 (= lt!2088267 (isEmpty!31621 (list!18977 (right!43137 (right!43137 lt!2087928)))))))

(assert (=> d!1630856 (= lt!2088267 (= (size!39064 (right!43137 (right!43137 lt!2087928))) 0))))

(assert (=> d!1630856 (= (isEmpty!31619 (right!43137 (right!43137 lt!2087928))) lt!2088267)))

(declare-fun bs!1189680 () Bool)

(assert (= bs!1189680 d!1630856))

(assert (=> bs!1189680 m!6098232))

(assert (=> bs!1189680 m!6098232))

(declare-fun m!6101126 () Bool)

(assert (=> bs!1189680 m!6101126))

(declare-fun m!6101128 () Bool)

(assert (=> bs!1189680 m!6101128))

(assert (=> b!5060558 d!1630856))

(assert (=> d!1629730 d!1630596))

(assert (=> d!1629730 d!1630540))

(declare-fun b!5062022 () Bool)

(declare-fun e!3159408 () Conc!15558)

(declare-fun call!352562 () Conc!15558)

(assert (=> b!5062022 (= e!3159408 call!352562)))

(declare-fun b!5062023 () Bool)

(declare-fun c!868732 () Bool)

(declare-fun call!352573 () Int)

(declare-fun call!352567 () Int)

(assert (=> b!5062023 (= c!868732 (>= call!352573 call!352567))))

(declare-fun e!3159414 () Conc!15558)

(declare-fun e!3159406 () Conc!15558)

(assert (=> b!5062023 (= e!3159414 e!3159406)))

(declare-fun b!5062024 () Bool)

(declare-fun c!868737 () Bool)

(declare-fun call!352564 () Int)

(assert (=> b!5062024 (= c!868737 (>= call!352564 call!352573))))

(declare-fun e!3159413 () Conc!15558)

(assert (=> b!5062024 (= e!3159414 e!3159413)))

(declare-fun bm!352557 () Bool)

(declare-fun call!352568 () Conc!15558)

(declare-fun call!352575 () Conc!15558)

(assert (=> bm!352557 (= call!352568 call!352575)))

(declare-fun b!5062025 () Bool)

(declare-fun e!3159405 () Conc!15558)

(declare-fun call!352563 () Conc!15558)

(assert (=> b!5062025 (= e!3159405 call!352563)))

(declare-fun bm!352558 () Bool)

(declare-fun call!352566 () Conc!15558)

(declare-fun call!352576 () Conc!15558)

(assert (=> bm!352558 (= call!352566 call!352576)))

(declare-fun b!5062026 () Bool)

(assert (=> b!5062026 (= e!3159406 e!3159408)))

(declare-fun lt!2088270 () Conc!15558)

(declare-fun call!352577 () Conc!15558)

(assert (=> b!5062026 (= lt!2088270 call!352577)))

(declare-fun c!868739 () Bool)

(declare-fun call!352572 () Int)

(assert (=> b!5062026 (= c!868739 (= call!352564 (- call!352572 3)))))

(declare-fun c!868734 () Bool)

(declare-fun bm!352559 () Bool)

(assert (=> bm!352559 (= call!352573 (height!2135 (ite c!868734 (left!42807 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (left!42807 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))))

(declare-fun b!5062027 () Bool)

(assert (=> b!5062027 (= e!3159413 call!352566)))

(declare-fun b!5062028 () Bool)

(declare-fun res!2155422 () Bool)

(declare-fun e!3159410 () Bool)

(assert (=> b!5062028 (=> (not res!2155422) (not e!3159410))))

(declare-fun lt!2088271 () Conc!15558)

(assert (=> b!5062028 (= res!2155422 (>= (height!2135 lt!2088271) (max!0 (height!2135 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (height!2135 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))))

(declare-fun bm!352560 () Bool)

(declare-fun call!352574 () Conc!15558)

(assert (=> bm!352560 (= call!352577 call!352574)))

(declare-fun b!5062029 () Bool)

(declare-fun call!352569 () Conc!15558)

(assert (=> b!5062029 (= e!3159406 call!352569)))

(declare-fun bm!352561 () Bool)

(assert (=> bm!352561 (= call!352564 (height!2135 (ite c!868734 lt!2088270 (right!43137 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))))

(declare-fun b!5062030 () Bool)

(declare-fun e!3159412 () Conc!15558)

(assert (=> b!5062030 (= e!3159413 e!3159412)))

(declare-fun lt!2088269 () Conc!15558)

(declare-fun call!352565 () Conc!15558)

(assert (=> b!5062030 (= lt!2088269 call!352565)))

(declare-fun c!868735 () Bool)

(assert (=> b!5062030 (= c!868735 (= call!352567 (- call!352572 3)))))

(declare-fun b!5062031 () Bool)

(declare-fun res!2155421 () Bool)

(assert (=> b!5062031 (=> (not res!2155421) (not e!3159410))))

(assert (=> b!5062031 (= res!2155421 (isBalanced!4420 lt!2088271))))

(declare-fun bm!352562 () Bool)

(assert (=> bm!352562 (= call!352569 call!352576)))

(declare-fun bm!352563 () Bool)

(declare-fun call!352570 () Conc!15558)

(assert (=> bm!352563 (= call!352570 call!352566)))

(declare-fun b!5062032 () Bool)

(declare-fun c!868733 () Bool)

(declare-fun lt!2088268 () Int)

(assert (=> b!5062032 (= c!868733 (and (<= (- 1) lt!2088268) (<= lt!2088268 1)))))

(assert (=> b!5062032 (= lt!2088268 (- (height!2135 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))) (height!2135 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))))

(declare-fun e!3159409 () Conc!15558)

(assert (=> b!5062032 (= e!3159409 e!3159405)))

(declare-fun b!5062033 () Bool)

(declare-fun e!3159411 () Bool)

(assert (=> b!5062033 (= e!3159411 (isBalanced!4420 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))

(declare-fun bm!352564 () Bool)

(assert (=> bm!352564 (= call!352576 (<>!392 (ite c!868734 (ite c!868732 (left!42807 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (ite c!868739 (left!42807 (right!43137 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (left!42807 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))) (ite c!868737 call!352565 (ite c!868735 lt!2088269 (right!43137 (left!42807 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))) (ite c!868734 (ite c!868732 call!352577 (ite c!868739 lt!2088270 (left!42807 (right!43137 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))) (ite c!868737 (right!43137 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))) (ite c!868735 (right!43137 (left!42807 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))) (right!43137 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))))))

(declare-fun bm!352565 () Bool)

(assert (=> bm!352565 (= call!352575 call!352563)))

(declare-fun bm!352566 () Bool)

(assert (=> bm!352566 (= call!352565 call!352574)))

(declare-fun e!3159407 () Conc!15558)

(declare-fun b!5062034 () Bool)

(assert (=> b!5062034 (= e!3159407 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))))

(declare-fun b!5062035 () Bool)

(assert (=> b!5062035 (= e!3159412 call!352568)))

(declare-fun b!5062036 () Bool)

(assert (=> b!5062036 (= e!3159408 call!352562)))

(declare-fun b!5062037 () Bool)

(assert (=> b!5062037 (= e!3159409 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))))

(declare-fun b!5062038 () Bool)

(assert (=> b!5062038 (= e!3159407 e!3159409)))

(declare-fun c!868736 () Bool)

(assert (=> b!5062038 (= c!868736 (= (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))) Empty!15558))))

(declare-fun b!5062039 () Bool)

(assert (=> b!5062039 (= e!3159410 (= (list!18977 lt!2088271) (++!12779 (list!18977 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (list!18977 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))))

(declare-fun b!5062040 () Bool)

(declare-fun res!2155420 () Bool)

(assert (=> b!5062040 (=> (not res!2155420) (not e!3159410))))

(assert (=> b!5062040 (= res!2155420 (<= (height!2135 lt!2088271) (+ (max!0 (height!2135 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (height!2135 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))) 1)))))

(declare-fun b!5062041 () Bool)

(assert (=> b!5062041 (= e!3159412 call!352568)))

(declare-fun b!5062042 () Bool)

(assert (=> b!5062042 (= e!3159405 e!3159414)))

(assert (=> b!5062042 (= c!868734 (< lt!2088268 (- 1)))))

(declare-fun d!1630858 () Bool)

(assert (=> d!1630858 e!3159410))

(declare-fun res!2155424 () Bool)

(assert (=> d!1630858 (=> (not res!2155424) (not e!3159410))))

(assert (=> d!1630858 (= res!2155424 (appendAssocInst!906 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))

(assert (=> d!1630858 (= lt!2088271 e!3159407)))

(declare-fun c!868738 () Bool)

(assert (=> d!1630858 (= c!868738 (= (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) Empty!15558))))

(assert (=> d!1630858 e!3159411))

(declare-fun res!2155423 () Bool)

(assert (=> d!1630858 (=> (not res!2155423) (not e!3159411))))

(assert (=> d!1630858 (= res!2155423 (isBalanced!4420 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))))

(assert (=> d!1630858 (= (++!12778 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))) lt!2088271)))

(declare-fun bm!352567 () Bool)

(declare-fun call!352571 () Conc!15558)

(assert (=> bm!352567 (= call!352571 call!352569)))

(declare-fun bm!352568 () Bool)

(assert (=> bm!352568 (= call!352572 (height!2135 (ite c!868734 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))))))))

(declare-fun bm!352569 () Bool)

(assert (=> bm!352569 (= call!352562 call!352575)))

(declare-fun bm!352570 () Bool)

(assert (=> bm!352570 (= call!352574 (++!12778 (ite c!868734 (ite c!868732 (right!43137 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (right!43137 (right!43137 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))))) (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) (ite c!868734 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))) (ite c!868737 (left!42807 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))) (left!42807 (left!42807 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))))))

(declare-fun bm!352571 () Bool)

(assert (=> bm!352571 (= call!352567 (height!2135 (ite c!868734 (right!43137 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) lt!2088269)))))

(declare-fun bm!352572 () Bool)

(assert (=> bm!352572 (= call!352563 (<>!392 (ite c!868733 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (ite c!868734 (ite c!868739 (left!42807 (ite c!868361 (ite c!868359 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (right!43137 (right!43137 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))))) (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286)))) call!352571) (ite c!868735 call!352570 lt!2088269))) (ite c!868733 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))))))) (ite c!868734 (ite c!868739 call!352571 lt!2088270) (ite c!868735 (right!43137 (ite c!868361 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41)))) (ite c!868364 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))) (left!42807 (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))) call!352570)))))))

(assert (= (and d!1630858 res!2155423) b!5062033))

(assert (= (and d!1630858 c!868738) b!5062034))

(assert (= (and d!1630858 (not c!868738)) b!5062038))

(assert (= (and b!5062038 c!868736) b!5062037))

(assert (= (and b!5062038 (not c!868736)) b!5062032))

(assert (= (and b!5062032 c!868733) b!5062025))

(assert (= (and b!5062032 (not c!868733)) b!5062042))

(assert (= (and b!5062042 c!868734) b!5062023))

(assert (= (and b!5062042 (not c!868734)) b!5062024))

(assert (= (and b!5062023 c!868732) b!5062029))

(assert (= (and b!5062023 (not c!868732)) b!5062026))

(assert (= (and b!5062026 c!868739) b!5062022))

(assert (= (and b!5062026 (not c!868739)) b!5062036))

(assert (= (or b!5062022 b!5062036) bm!352567))

(assert (= (or b!5062022 b!5062036) bm!352569))

(assert (= (or b!5062029 b!5062026) bm!352560))

(assert (= (or b!5062029 bm!352567) bm!352562))

(assert (= (and b!5062024 c!868737) b!5062027))

(assert (= (and b!5062024 (not c!868737)) b!5062030))

(assert (= (and b!5062030 c!868735) b!5062035))

(assert (= (and b!5062030 (not c!868735)) b!5062041))

(assert (= (or b!5062035 b!5062041) bm!352563))

(assert (= (or b!5062035 b!5062041) bm!352557))

(assert (= (or b!5062027 b!5062030) bm!352566))

(assert (= (or b!5062027 bm!352563) bm!352558))

(assert (= (or bm!352562 bm!352558) bm!352564))

(assert (= (or b!5062023 b!5062024) bm!352559))

(assert (= (or bm!352569 bm!352557) bm!352565))

(assert (= (or bm!352560 bm!352566) bm!352570))

(assert (= (or b!5062026 b!5062024) bm!352561))

(assert (= (or b!5062026 b!5062030) bm!352568))

(assert (= (or b!5062023 b!5062030) bm!352571))

(assert (= (or b!5062025 bm!352565) bm!352572))

(assert (= (and d!1630858 res!2155424) b!5062031))

(assert (= (and b!5062031 res!2155421) b!5062040))

(assert (= (and b!5062040 res!2155420) b!5062028))

(assert (= (and b!5062028 res!2155422) b!5062039))

(declare-fun m!6101130 () Bool)

(assert (=> bm!352572 m!6101130))

(declare-fun m!6101132 () Bool)

(assert (=> bm!352568 m!6101132))

(declare-fun m!6101134 () Bool)

(assert (=> bm!352571 m!6101134))

(declare-fun m!6101136 () Bool)

(assert (=> b!5062028 m!6101136))

(declare-fun m!6101138 () Bool)

(assert (=> b!5062028 m!6101138))

(declare-fun m!6101140 () Bool)

(assert (=> b!5062028 m!6101140))

(assert (=> b!5062028 m!6101138))

(assert (=> b!5062028 m!6101140))

(declare-fun m!6101142 () Bool)

(assert (=> b!5062028 m!6101142))

(declare-fun m!6101144 () Bool)

(assert (=> bm!352564 m!6101144))

(declare-fun m!6101146 () Bool)

(assert (=> d!1630858 m!6101146))

(declare-fun m!6101148 () Bool)

(assert (=> d!1630858 m!6101148))

(declare-fun m!6101150 () Bool)

(assert (=> b!5062031 m!6101150))

(declare-fun m!6101152 () Bool)

(assert (=> bm!352559 m!6101152))

(assert (=> b!5062032 m!6101140))

(assert (=> b!5062032 m!6101138))

(declare-fun m!6101154 () Bool)

(assert (=> b!5062033 m!6101154))

(assert (=> b!5062040 m!6101136))

(assert (=> b!5062040 m!6101138))

(assert (=> b!5062040 m!6101140))

(assert (=> b!5062040 m!6101138))

(assert (=> b!5062040 m!6101140))

(assert (=> b!5062040 m!6101142))

(declare-fun m!6101156 () Bool)

(assert (=> bm!352561 m!6101156))

(declare-fun m!6101158 () Bool)

(assert (=> b!5062039 m!6101158))

(declare-fun m!6101160 () Bool)

(assert (=> b!5062039 m!6101160))

(declare-fun m!6101162 () Bool)

(assert (=> b!5062039 m!6101162))

(assert (=> b!5062039 m!6101160))

(assert (=> b!5062039 m!6101162))

(declare-fun m!6101164 () Bool)

(assert (=> b!5062039 m!6101164))

(declare-fun m!6101166 () Bool)

(assert (=> bm!352570 m!6101166))

(assert (=> bm!352458 d!1630858))

(assert (=> b!5060603 d!1629454))

(declare-fun bm!352573 () Bool)

(declare-fun call!352579 () List!58552)

(assert (=> bm!352573 (= call!352579 (++!12779 (list!18977 (left!42807 (right!43137 xs!286))) (list!18977 (left!42807 (right!43137 (right!43137 xs!286))))))))

(declare-fun b!5062043 () Bool)

(declare-fun e!3159415 () Bool)

(declare-fun call!352580 () List!58552)

(declare-fun call!352578 () List!58552)

(assert (=> b!5062043 (= e!3159415 (= call!352580 call!352578))))

(declare-fun bm!352574 () Bool)

(declare-fun call!352581 () List!58552)

(assert (=> bm!352574 (= call!352581 (++!12779 (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) (++!12779 (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41))))))

(declare-fun b!5062044 () Bool)

(assert (=> b!5062044 (= e!3159415 (= call!352580 call!352578))))

(declare-fun lt!2088272 () Bool)

(assert (=> b!5062044 (= lt!2088272 (appendAssoc!298 (t!371255 (list!18977 (left!42807 (right!43137 xs!286)))) (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) (++!12779 (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41))))))

(declare-fun bm!352575 () Bool)

(assert (=> bm!352575 (= call!352580 (++!12779 call!352579 (++!12779 (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41))))))

(declare-fun d!1630860 () Bool)

(assert (=> d!1630860 e!3159415))

(declare-fun c!868740 () Bool)

(assert (=> d!1630860 (= c!868740 ((_ is Nil!58428) (list!18977 (left!42807 (right!43137 xs!286)))))))

(assert (=> d!1630860 (= (appendAssoc!298 (list!18977 (left!42807 (right!43137 xs!286))) (list!18977 (left!42807 (right!43137 (right!43137 xs!286)))) (++!12779 (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41))) true)))

(declare-fun bm!352576 () Bool)

(assert (=> bm!352576 (= call!352578 (++!12779 (list!18977 (left!42807 (right!43137 xs!286))) call!352581))))

(assert (= (and d!1630860 c!868740) b!5062043))

(assert (= (and d!1630860 (not c!868740)) b!5062044))

(assert (= (or b!5062043 b!5062044) bm!352573))

(assert (= (or b!5062043 b!5062044) bm!352574))

(assert (= (or b!5062043 b!5062044) bm!352576))

(assert (= (or b!5062043 b!5062044) bm!352575))

(assert (=> bm!352576 m!6097056))

(declare-fun m!6101168 () Bool)

(assert (=> bm!352576 m!6101168))

(assert (=> bm!352573 m!6097056))

(assert (=> bm!352573 m!6098000))

(declare-fun m!6101170 () Bool)

(assert (=> bm!352573 m!6101170))

(assert (=> bm!352574 m!6098000))

(assert (=> bm!352574 m!6098166))

(declare-fun m!6101172 () Bool)

(assert (=> bm!352574 m!6101172))

(assert (=> bm!352575 m!6098166))

(declare-fun m!6101174 () Bool)

(assert (=> bm!352575 m!6101174))

(assert (=> b!5062044 m!6098000))

(assert (=> b!5062044 m!6098166))

(declare-fun m!6101176 () Bool)

(assert (=> b!5062044 m!6101176))

(assert (=> b!5060603 d!1630860))

(assert (=> b!5060603 d!1630640))

(assert (=> b!5060603 d!1629664))

(declare-fun d!1630862 () Bool)

(declare-fun e!3159416 () Bool)

(assert (=> d!1630862 e!3159416))

(declare-fun res!2155426 () Bool)

(assert (=> d!1630862 (=> (not res!2155426) (not e!3159416))))

(declare-fun lt!2088273 () List!58552)

(assert (=> d!1630862 (= res!2155426 (= (content!10414 lt!2088273) ((_ map or) (content!10414 (list!18977 (right!43137 (right!43137 (right!43137 xs!286))))) (content!10414 (list!18977 ys!41)))))))

(declare-fun e!3159417 () List!58552)

(assert (=> d!1630862 (= lt!2088273 e!3159417)))

(declare-fun c!868741 () Bool)

(assert (=> d!1630862 (= c!868741 ((_ is Nil!58428) (list!18977 (right!43137 (right!43137 (right!43137 xs!286))))))))

(assert (=> d!1630862 (= (++!12779 (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))) (list!18977 ys!41)) lt!2088273)))

(declare-fun b!5062048 () Bool)

(assert (=> b!5062048 (= e!3159416 (or (not (= (list!18977 ys!41) Nil!58428)) (= lt!2088273 (list!18977 (right!43137 (right!43137 (right!43137 xs!286)))))))))

(declare-fun b!5062047 () Bool)

(declare-fun res!2155425 () Bool)

(assert (=> b!5062047 (=> (not res!2155425) (not e!3159416))))

(assert (=> b!5062047 (= res!2155425 (= (size!39065 lt!2088273) (+ (size!39065 (list!18977 (right!43137 (right!43137 (right!43137 xs!286))))) (size!39065 (list!18977 ys!41)))))))

(declare-fun b!5062045 () Bool)

(assert (=> b!5062045 (= e!3159417 (list!18977 ys!41))))

(declare-fun b!5062046 () Bool)

(assert (=> b!5062046 (= e!3159417 (Cons!58428 (h!64876 (list!18977 (right!43137 (right!43137 (right!43137 xs!286))))) (++!12779 (t!371255 (list!18977 (right!43137 (right!43137 (right!43137 xs!286))))) (list!18977 ys!41))))))

(assert (= (and d!1630862 c!868741) b!5062045))

(assert (= (and d!1630862 (not c!868741)) b!5062046))

(assert (= (and d!1630862 res!2155426) b!5062047))

(assert (= (and b!5062047 res!2155425) b!5062048))

(declare-fun m!6101178 () Bool)

(assert (=> d!1630862 m!6101178))

(assert (=> d!1630862 m!6098002))

(assert (=> d!1630862 m!6100538))

(assert (=> d!1630862 m!6096986))

(assert (=> d!1630862 m!6097340))

(declare-fun m!6101180 () Bool)

(assert (=> b!5062047 m!6101180))

(assert (=> b!5062047 m!6098002))

(assert (=> b!5062047 m!6100544))

(assert (=> b!5062047 m!6096986))

(assert (=> b!5062047 m!6097346))

(assert (=> b!5062046 m!6096986))

(declare-fun m!6101182 () Bool)

(assert (=> b!5062046 m!6101182))

(assert (=> b!5060603 d!1630862))

(assert (=> b!5060603 d!1630638))

(declare-fun d!1630864 () Bool)

(assert (=> d!1630864 (= (list!18979 (xs!18896 (left!42807 (left!42807 ys!41)))) (innerList!15646 (xs!18896 (left!42807 (left!42807 ys!41)))))))

(assert (=> b!5060543 d!1630864))

(assert (=> b!5060698 d!1630644))

(assert (=> b!5060698 d!1630646))

(assert (=> b!5060698 d!1630648))

(assert (=> b!5060698 d!1630650))

(declare-fun d!1630866 () Bool)

(declare-fun c!868742 () Bool)

(assert (=> d!1630866 (= c!868742 ((_ is Nil!58428) lt!2088030))))

(declare-fun e!3159418 () (InoxSet T!105076))

(assert (=> d!1630866 (= (content!10414 lt!2088030) e!3159418)))

(declare-fun b!5062049 () Bool)

(assert (=> b!5062049 (= e!3159418 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5062050 () Bool)

(assert (=> b!5062050 (= e!3159418 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 lt!2088030) true) (content!10414 (t!371255 lt!2088030))))))

(assert (= (and d!1630866 c!868742) b!5062049))

(assert (= (and d!1630866 (not c!868742)) b!5062050))

(declare-fun m!6101184 () Bool)

(assert (=> b!5062050 m!6101184))

(declare-fun m!6101186 () Bool)

(assert (=> b!5062050 m!6101186))

(assert (=> d!1629714 d!1630866))

(assert (=> d!1629714 d!1630426))

(declare-fun d!1630868 () Bool)

(declare-fun c!868743 () Bool)

(assert (=> d!1630868 (= c!868743 ((_ is Nil!58428) (list!18977 (++!12778 (right!43137 xs!286) ys!41))))))

(declare-fun e!3159419 () (InoxSet T!105076))

(assert (=> d!1630868 (= (content!10414 (list!18977 (++!12778 (right!43137 xs!286) ys!41))) e!3159419)))

(declare-fun b!5062051 () Bool)

(assert (=> b!5062051 (= e!3159419 ((as const (Array T!105076 Bool)) false))))

(declare-fun b!5062052 () Bool)

(assert (=> b!5062052 (= e!3159419 ((_ map or) (store ((as const (Array T!105076 Bool)) false) (h!64876 (list!18977 (++!12778 (right!43137 xs!286) ys!41))) true) (content!10414 (t!371255 (list!18977 (++!12778 (right!43137 xs!286) ys!41))))))))

(assert (= (and d!1630868 c!868743) b!5062051))

(assert (= (and d!1630868 (not c!868743)) b!5062052))

(declare-fun m!6101188 () Bool)

(assert (=> b!5062052 m!6101188))

(declare-fun m!6101190 () Bool)

(assert (=> b!5062052 m!6101190))

(assert (=> d!1629714 d!1630868))

(assert (=> b!5060513 d!1630604))

(declare-fun d!1630870 () Bool)

(declare-fun e!3159420 () Bool)

(assert (=> d!1630870 e!3159420))

(declare-fun res!2155428 () Bool)

(assert (=> d!1630870 (=> (not res!2155428) (not e!3159420))))

(declare-fun lt!2088274 () List!58552)

(assert (=> d!1630870 (= res!2155428 (= (content!10414 lt!2088274) ((_ map or) (content!10414 (list!18977 (left!42807 xs!286))) (content!10414 call!352441))))))

(declare-fun e!3159421 () List!58552)

(assert (=> d!1630870 (= lt!2088274 e!3159421)))

(declare-fun c!868744 () Bool)

(assert (=> d!1630870 (= c!868744 ((_ is Nil!58428) (list!18977 (left!42807 xs!286))))))

(assert (=> d!1630870 (= (++!12779 (list!18977 (left!42807 xs!286)) call!352441) lt!2088274)))

(declare-fun b!5062056 () Bool)

(assert (=> b!5062056 (= e!3159420 (or (not (= call!352441 Nil!58428)) (= lt!2088274 (list!18977 (left!42807 xs!286)))))))

(declare-fun b!5062055 () Bool)

(declare-fun res!2155427 () Bool)

(assert (=> b!5062055 (=> (not res!2155427) (not e!3159420))))

(assert (=> b!5062055 (= res!2155427 (= (size!39065 lt!2088274) (+ (size!39065 (list!18977 (left!42807 xs!286))) (size!39065 call!352441))))))

(declare-fun b!5062053 () Bool)

(assert (=> b!5062053 (= e!3159421 call!352441)))

(declare-fun b!5062054 () Bool)

(assert (=> b!5062054 (= e!3159421 (Cons!58428 (h!64876 (list!18977 (left!42807 xs!286))) (++!12779 (t!371255 (list!18977 (left!42807 xs!286))) call!352441)))))

(assert (= (and d!1630870 c!868744) b!5062053))

(assert (= (and d!1630870 (not c!868744)) b!5062054))

(assert (= (and d!1630870 res!2155428) b!5062055))

(assert (= (and b!5062055 res!2155427) b!5062056))

(declare-fun m!6101192 () Bool)

(assert (=> d!1630870 m!6101192))

(assert (=> d!1630870 m!6097062))

(assert (=> d!1630870 m!6098114))

(declare-fun m!6101194 () Bool)

(assert (=> d!1630870 m!6101194))

(declare-fun m!6101196 () Bool)

(assert (=> b!5062055 m!6101196))

(assert (=> b!5062055 m!6097062))

(assert (=> b!5062055 m!6098100))

(declare-fun m!6101198 () Bool)

(assert (=> b!5062055 m!6101198))

(declare-fun m!6101200 () Bool)

(assert (=> b!5062054 m!6101200))

(assert (=> bm!352436 d!1630870))

(declare-fun d!1630872 () Bool)

(declare-fun lt!2088275 () Int)

(assert (=> d!1630872 (>= lt!2088275 0)))

(declare-fun e!3159422 () Int)

(assert (=> d!1630872 (= lt!2088275 e!3159422)))

(declare-fun c!868745 () Bool)

(assert (=> d!1630872 (= c!868745 ((_ is Nil!58428) (list!18979 (xs!18896 (right!43137 ys!41)))))))

(assert (=> d!1630872 (= (size!39065 (list!18979 (xs!18896 (right!43137 ys!41)))) lt!2088275)))

(declare-fun b!5062057 () Bool)

(assert (=> b!5062057 (= e!3159422 0)))

(declare-fun b!5062058 () Bool)

(assert (=> b!5062058 (= e!3159422 (+ 1 (size!39065 (t!371255 (list!18979 (xs!18896 (right!43137 ys!41)))))))))

(assert (= (and d!1630872 c!868745) b!5062057))

(assert (= (and d!1630872 (not c!868745)) b!5062058))

(declare-fun m!6101202 () Bool)

(assert (=> b!5062058 m!6101202))

(assert (=> d!1629686 d!1630872))

(assert (=> d!1629686 d!1630836))

(declare-fun d!1630874 () Bool)

(assert (=> d!1630874 (= (isEmpty!31621 (list!18977 (right!43137 lt!2087928))) ((_ is Nil!58428) (list!18977 (right!43137 lt!2087928))))))

(assert (=> d!1629668 d!1630874))

(assert (=> d!1629668 d!1629740))

(declare-fun d!1630876 () Bool)

(declare-fun lt!2088276 () Int)

(assert (=> d!1630876 (= lt!2088276 (size!39065 (list!18977 (right!43137 lt!2087928))))))

(assert (=> d!1630876 (= lt!2088276 (ite ((_ is Empty!15558) (right!43137 lt!2087928)) 0 (ite ((_ is Leaf!25842) (right!43137 lt!2087928)) (csize!31347 (right!43137 lt!2087928)) (csize!31346 (right!43137 lt!2087928)))))))

(assert (=> d!1630876 (= (size!39064 (right!43137 lt!2087928)) lt!2088276)))

(declare-fun bs!1189681 () Bool)

(assert (= bs!1189681 d!1630876))

(assert (=> bs!1189681 m!6097332))

(assert (=> bs!1189681 m!6097332))

(assert (=> bs!1189681 m!6098216))

(assert (=> d!1629668 d!1630876))

(declare-fun b!5062059 () Bool)

(declare-fun res!2155430 () Bool)

(declare-fun e!3159423 () Bool)

(assert (=> b!5062059 (=> (not res!2155430) (not e!3159423))))

(assert (=> b!5062059 (= res!2155430 (isBalanced!4420 (left!42807 (left!42807 (left!42807 xs!286)))))))

(declare-fun b!5062060 () Bool)

(declare-fun res!2155431 () Bool)

(assert (=> b!5062060 (=> (not res!2155431) (not e!3159423))))

(assert (=> b!5062060 (= res!2155431 (isBalanced!4420 (right!43137 (left!42807 (left!42807 xs!286)))))))

(declare-fun b!5062061 () Bool)

(declare-fun res!2155433 () Bool)

(assert (=> b!5062061 (=> (not res!2155433) (not e!3159423))))

(assert (=> b!5062061 (= res!2155433 (not (isEmpty!31619 (left!42807 (left!42807 (left!42807 xs!286))))))))

(declare-fun b!5062062 () Bool)

(assert (=> b!5062062 (= e!3159423 (not (isEmpty!31619 (right!43137 (left!42807 (left!42807 xs!286))))))))

(declare-fun b!5062063 () Bool)

(declare-fun res!2155434 () Bool)

(assert (=> b!5062063 (=> (not res!2155434) (not e!3159423))))

(assert (=> b!5062063 (= res!2155434 (<= (- (height!2135 (left!42807 (left!42807 (left!42807 xs!286)))) (height!2135 (right!43137 (left!42807 (left!42807 xs!286))))) 1))))

(declare-fun b!5062064 () Bool)

(declare-fun e!3159424 () Bool)

(assert (=> b!5062064 (= e!3159424 e!3159423)))

(declare-fun res!2155432 () Bool)

(assert (=> b!5062064 (=> (not res!2155432) (not e!3159423))))

(assert (=> b!5062064 (= res!2155432 (<= (- 1) (- (height!2135 (left!42807 (left!42807 (left!42807 xs!286)))) (height!2135 (right!43137 (left!42807 (left!42807 xs!286)))))))))

(declare-fun d!1630878 () Bool)

(declare-fun res!2155429 () Bool)

(assert (=> d!1630878 (=> res!2155429 e!3159424)))

(assert (=> d!1630878 (= res!2155429 (not ((_ is Node!15558) (left!42807 (left!42807 xs!286)))))))

(assert (=> d!1630878 (= (isBalanced!4420 (left!42807 (left!42807 xs!286))) e!3159424)))

(assert (= (and d!1630878 (not res!2155429)) b!5062064))

(assert (= (and b!5062064 res!2155432) b!5062063))

(assert (= (and b!5062063 res!2155434) b!5062059))

(assert (= (and b!5062059 res!2155430) b!5062060))

(assert (= (and b!5062060 res!2155431) b!5062061))

(assert (= (and b!5062061 res!2155433) b!5062062))

(declare-fun m!6101204 () Bool)

(assert (=> b!5062061 m!6101204))

(declare-fun m!6101206 () Bool)

(assert (=> b!5062063 m!6101206))

(declare-fun m!6101208 () Bool)

(assert (=> b!5062063 m!6101208))

(declare-fun m!6101210 () Bool)

(assert (=> b!5062060 m!6101210))

(declare-fun m!6101212 () Bool)

(assert (=> b!5062062 m!6101212))

(declare-fun m!6101214 () Bool)

(assert (=> b!5062059 m!6101214))

(assert (=> b!5062064 m!6101206))

(assert (=> b!5062064 m!6101208))

(assert (=> b!5060505 d!1630878))

(declare-fun d!1630880 () Bool)

(assert (=> d!1630880 (= (isEmpty!31621 (list!18977 (right!43137 xs!286))) ((_ is Nil!58428) (list!18977 (right!43137 xs!286))))))

(assert (=> d!1629764 d!1630880))

(assert (=> d!1629764 d!1629702))

(assert (=> d!1629764 d!1630446))

(assert (=> b!5060565 d!1630872))

(assert (=> b!5060565 d!1630836))

(declare-fun d!1630882 () Bool)

(declare-fun e!3159425 () Bool)

(assert (=> d!1630882 e!3159425))

(declare-fun res!2155436 () Bool)

(assert (=> d!1630882 (=> (not res!2155436) (not e!3159425))))

(declare-fun lt!2088277 () List!58552)

(assert (=> d!1630882 (= res!2155436 (= (content!10414 lt!2088277) ((_ map or) (content!10414 (list!18977 xs!286)) (content!10414 (list!18977 (left!42807 ys!41))))))))

(declare-fun e!3159426 () List!58552)

(assert (=> d!1630882 (= lt!2088277 e!3159426)))

(declare-fun c!868746 () Bool)

(assert (=> d!1630882 (= c!868746 ((_ is Nil!58428) (list!18977 xs!286)))))

(assert (=> d!1630882 (= (++!12779 (list!18977 xs!286) (list!18977 (left!42807 ys!41))) lt!2088277)))

(declare-fun b!5062068 () Bool)

(assert (=> b!5062068 (= e!3159425 (or (not (= (list!18977 (left!42807 ys!41)) Nil!58428)) (= lt!2088277 (list!18977 xs!286))))))

(declare-fun b!5062067 () Bool)

(declare-fun res!2155435 () Bool)

(assert (=> b!5062067 (=> (not res!2155435) (not e!3159425))))

(assert (=> b!5062067 (= res!2155435 (= (size!39065 lt!2088277) (+ (size!39065 (list!18977 xs!286)) (size!39065 (list!18977 (left!42807 ys!41))))))))

(declare-fun b!5062065 () Bool)

(assert (=> b!5062065 (= e!3159426 (list!18977 (left!42807 ys!41)))))

(declare-fun b!5062066 () Bool)

(assert (=> b!5062066 (= e!3159426 (Cons!58428 (h!64876 (list!18977 xs!286)) (++!12779 (t!371255 (list!18977 xs!286)) (list!18977 (left!42807 ys!41)))))))

(assert (= (and d!1630882 c!868746) b!5062065))

(assert (= (and d!1630882 (not c!868746)) b!5062066))

(assert (= (and d!1630882 res!2155436) b!5062067))

(assert (= (and b!5062067 res!2155435) b!5062068))

(declare-fun m!6101216 () Bool)

(assert (=> d!1630882 m!6101216))

(assert (=> d!1630882 m!6096984))

(assert (=> d!1630882 m!6097338))

(assert (=> d!1630882 m!6097078))

(assert (=> d!1630882 m!6098238))

(declare-fun m!6101218 () Bool)

(assert (=> b!5062067 m!6101218))

(assert (=> b!5062067 m!6096984))

(assert (=> b!5062067 m!6097344))

(assert (=> b!5062067 m!6097078))

(assert (=> b!5062067 m!6098244))

(assert (=> b!5062066 m!6097078))

(assert (=> b!5062066 m!6100622))

(assert (=> bm!352441 d!1630882))

(declare-fun d!1630884 () Bool)

(declare-fun e!3159427 () Bool)

(assert (=> d!1630884 e!3159427))

(declare-fun res!2155438 () Bool)

(assert (=> d!1630884 (=> (not res!2155438) (not e!3159427))))

(declare-fun lt!2088278 () List!58552)

(assert (=> d!1630884 (= res!2155438 (= (content!10414 lt!2088278) ((_ map or) (content!10414 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) (content!10414 call!352445))))))

(declare-fun e!3159428 () List!58552)

(assert (=> d!1630884 (= lt!2088278 e!3159428)))

(declare-fun c!868747 () Bool)

(assert (=> d!1630884 (= c!868747 ((_ is Nil!58428) (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))))))

(assert (=> d!1630884 (= (++!12779 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))) call!352445) lt!2088278)))

(declare-fun b!5062072 () Bool)

(assert (=> b!5062072 (= e!3159427 (or (not (= call!352445 Nil!58428)) (= lt!2088278 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5062071 () Bool)

(declare-fun res!2155437 () Bool)

(assert (=> b!5062071 (=> (not res!2155437) (not e!3159427))))

(assert (=> b!5062071 (= res!2155437 (= (size!39065 lt!2088278) (+ (size!39065 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) (size!39065 call!352445))))))

(declare-fun b!5062069 () Bool)

(assert (=> b!5062069 (= e!3159428 call!352445)))

(declare-fun b!5062070 () Bool)

(assert (=> b!5062070 (= e!3159428 (Cons!58428 (h!64876 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) (++!12779 (t!371255 (++!12779 (list!18977 xs!286) (list!18977 (left!42807 (left!42807 ys!41))))) call!352445)))))

(assert (= (and d!1630884 c!868747) b!5062069))

(assert (= (and d!1630884 (not c!868747)) b!5062070))

(assert (= (and d!1630884 res!2155438) b!5062071))

(assert (= (and b!5062071 res!2155437) b!5062072))

(declare-fun m!6101220 () Bool)

(assert (=> d!1630884 m!6101220))

(assert (=> d!1630884 m!6097072))

(assert (=> d!1630884 m!6100488))

(declare-fun m!6101222 () Bool)

(assert (=> d!1630884 m!6101222))

(declare-fun m!6101224 () Bool)

(assert (=> b!5062071 m!6101224))

(assert (=> b!5062071 m!6097072))

(assert (=> b!5062071 m!6100492))

(declare-fun m!6101226 () Bool)

(assert (=> b!5062071 m!6101226))

(declare-fun m!6101228 () Bool)

(assert (=> b!5062070 m!6101228))

(assert (=> bm!352440 d!1630884))

(declare-fun d!1630886 () Bool)

(assert (=> d!1630886 (= (height!2135 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) (ite ((_ is Empty!15558) (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) 0 (ite ((_ is Leaf!25842) (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) 1 (cheight!15769 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))))))))

(assert (=> b!5060664 d!1630886))

(declare-fun d!1630888 () Bool)

(declare-fun lt!2088279 () Int)

(assert (=> d!1630888 (= lt!2088279 (size!39065 (list!18977 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))))))

(assert (=> d!1630888 (= lt!2088279 (ite ((_ is Empty!15558) (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) 0 (ite ((_ is Leaf!25842) (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) (csize!31347 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) (csize!31346 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))))))))

(assert (=> d!1630888 (= (size!39064 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) lt!2088279)))

(declare-fun bs!1189682 () Bool)

(assert (= bs!1189682 d!1630888))

(assert (=> bs!1189682 m!6098292))

(assert (=> bs!1189682 m!6098292))

(declare-fun m!6101230 () Bool)

(assert (=> bs!1189682 m!6101230))

(assert (=> b!5060664 d!1630888))

(declare-fun lt!2088280 () Int)

(declare-fun d!1630890 () Bool)

(assert (=> d!1630890 (= lt!2088280 (size!39065 (list!18977 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))))))))

(assert (=> d!1630890 (= lt!2088280 (ite ((_ is Empty!15558) (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) 0 (ite ((_ is Leaf!25842) (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) (csize!31347 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) (csize!31346 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))))))))

(assert (=> d!1630890 (= (size!39064 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) lt!2088280)))

(declare-fun bs!1189683 () Bool)

(assert (= bs!1189683 d!1630890))

(assert (=> bs!1189683 m!6098290))

(assert (=> bs!1189683 m!6098290))

(declare-fun m!6101232 () Bool)

(assert (=> bs!1189683 m!6101232))

(assert (=> b!5060664 d!1630890))

(declare-fun d!1630892 () Bool)

(assert (=> d!1630892 (= (height!2135 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) (ite ((_ is Empty!15558) (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) 0 (ite ((_ is Leaf!25842) (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) 1 (cheight!15769 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))))))))

(assert (=> b!5060664 d!1630892))

(declare-fun d!1630894 () Bool)

(assert (=> d!1630894 (= (max!0 (height!2135 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) (height!2135 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))) (ite (< (height!2135 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) (height!2135 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))) (height!2135 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) (height!2135 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))))))))

(assert (=> b!5060664 d!1630894))

(declare-fun d!1630896 () Bool)

(declare-fun lt!2088281 () Int)

(assert (=> d!1630896 (= lt!2088281 (size!39065 (list!18977 (left!42807 (left!42807 xs!286)))))))

(assert (=> d!1630896 (= lt!2088281 (ite ((_ is Empty!15558) (left!42807 (left!42807 xs!286))) 0 (ite ((_ is Leaf!25842) (left!42807 (left!42807 xs!286))) (csize!31347 (left!42807 (left!42807 xs!286))) (csize!31346 (left!42807 (left!42807 xs!286))))))))

(assert (=> d!1630896 (= (size!39064 (left!42807 (left!42807 xs!286))) lt!2088281)))

(declare-fun bs!1189684 () Bool)

(assert (= bs!1189684 d!1630896))

(assert (=> bs!1189684 m!6097992))

(assert (=> bs!1189684 m!6097992))

(assert (=> bs!1189684 m!6100956))

(assert (=> d!1629806 d!1630896))

(declare-fun d!1630898 () Bool)

(declare-fun lt!2088282 () Int)

(assert (=> d!1630898 (= lt!2088282 (size!39065 (list!18977 (right!43137 (left!42807 xs!286)))))))

(assert (=> d!1630898 (= lt!2088282 (ite ((_ is Empty!15558) (right!43137 (left!42807 xs!286))) 0 (ite ((_ is Leaf!25842) (right!43137 (left!42807 xs!286))) (csize!31347 (right!43137 (left!42807 xs!286))) (csize!31346 (right!43137 (left!42807 xs!286))))))))

(assert (=> d!1630898 (= (size!39064 (right!43137 (left!42807 xs!286))) lt!2088282)))

(declare-fun bs!1189685 () Bool)

(assert (= bs!1189685 d!1630898))

(assert (=> bs!1189685 m!6097994))

(assert (=> bs!1189685 m!6097994))

(assert (=> bs!1189685 m!6100958))

(assert (=> d!1629806 d!1630898))

(declare-fun d!1630900 () Bool)

(declare-fun res!2155439 () Bool)

(declare-fun e!3159429 () Bool)

(assert (=> d!1630900 (=> (not res!2155439) (not e!3159429))))

(assert (=> d!1630900 (= res!2155439 (<= (size!39065 (list!18979 (xs!18896 (right!43137 (right!43137 ys!41))))) 512))))

(assert (=> d!1630900 (= (inv!77527 (right!43137 (right!43137 ys!41))) e!3159429)))

(declare-fun b!5062073 () Bool)

(declare-fun res!2155440 () Bool)

(assert (=> b!5062073 (=> (not res!2155440) (not e!3159429))))

(assert (=> b!5062073 (= res!2155440 (= (csize!31347 (right!43137 (right!43137 ys!41))) (size!39065 (list!18979 (xs!18896 (right!43137 (right!43137 ys!41)))))))))

(declare-fun b!5062074 () Bool)

(assert (=> b!5062074 (= e!3159429 (and (> (csize!31347 (right!43137 (right!43137 ys!41))) 0) (<= (csize!31347 (right!43137 (right!43137 ys!41))) 512)))))

(assert (= (and d!1630900 res!2155439) b!5062073))

(assert (= (and b!5062073 res!2155440) b!5062074))

(assert (=> d!1630900 m!6101026))

(assert (=> d!1630900 m!6101026))

(declare-fun m!6101234 () Bool)

(assert (=> d!1630900 m!6101234))

(assert (=> b!5062073 m!6101026))

(assert (=> b!5062073 m!6101026))

(assert (=> b!5062073 m!6101234))

(assert (=> b!5060554 d!1630900))

(declare-fun d!1630902 () Bool)

(declare-fun res!2155441 () Bool)

(declare-fun e!3159430 () Bool)

(assert (=> d!1630902 (=> (not res!2155441) (not e!3159430))))

(assert (=> d!1630902 (= res!2155441 (= (csize!31346 (left!42807 (left!42807 xs!286))) (+ (size!39064 (left!42807 (left!42807 (left!42807 xs!286)))) (size!39064 (right!43137 (left!42807 (left!42807 xs!286)))))))))

(assert (=> d!1630902 (= (inv!77526 (left!42807 (left!42807 xs!286))) e!3159430)))

(declare-fun b!5062075 () Bool)

(declare-fun res!2155442 () Bool)

(assert (=> b!5062075 (=> (not res!2155442) (not e!3159430))))

(assert (=> b!5062075 (= res!2155442 (and (not (= (left!42807 (left!42807 (left!42807 xs!286))) Empty!15558)) (not (= (right!43137 (left!42807 (left!42807 xs!286))) Empty!15558))))))

(declare-fun b!5062076 () Bool)

(declare-fun res!2155443 () Bool)

(assert (=> b!5062076 (=> (not res!2155443) (not e!3159430))))

(assert (=> b!5062076 (= res!2155443 (= (cheight!15769 (left!42807 (left!42807 xs!286))) (+ (max!0 (height!2135 (left!42807 (left!42807 (left!42807 xs!286)))) (height!2135 (right!43137 (left!42807 (left!42807 xs!286))))) 1)))))

(declare-fun b!5062077 () Bool)

(assert (=> b!5062077 (= e!3159430 (<= 0 (cheight!15769 (left!42807 (left!42807 xs!286)))))))

(assert (= (and d!1630902 res!2155441) b!5062075))

(assert (= (and b!5062075 res!2155442) b!5062076))

(assert (= (and b!5062076 res!2155443) b!5062077))

(declare-fun m!6101236 () Bool)

(assert (=> d!1630902 m!6101236))

(declare-fun m!6101238 () Bool)

(assert (=> d!1630902 m!6101238))

(assert (=> b!5062076 m!6101206))

(assert (=> b!5062076 m!6101208))

(assert (=> b!5062076 m!6101206))

(assert (=> b!5062076 m!6101208))

(declare-fun m!6101240 () Bool)

(assert (=> b!5062076 m!6101240))

(assert (=> b!5060721 d!1630902))

(declare-fun d!1630904 () Bool)

(assert (=> d!1630904 (= (inv!77522 (xs!18896 (left!42807 (right!43137 ys!41)))) (<= (size!39065 (innerList!15646 (xs!18896 (left!42807 (right!43137 ys!41))))) 2147483647))))

(declare-fun bs!1189686 () Bool)

(assert (= bs!1189686 d!1630904))

(declare-fun m!6101242 () Bool)

(assert (=> bs!1189686 m!6101242))

(assert (=> b!5060774 d!1630904))

(declare-fun d!1630906 () Bool)

(declare-fun e!3159431 () Bool)

(assert (=> d!1630906 e!3159431))

(declare-fun res!2155445 () Bool)

(assert (=> d!1630906 (=> (not res!2155445) (not e!3159431))))

(declare-fun lt!2088283 () List!58552)

(assert (=> d!1630906 (= res!2155445 (= (content!10414 lt!2088283) ((_ map or) (content!10414 call!352435) (content!10414 (list!18977 (right!43137 (left!42807 ys!41)))))))))

(declare-fun e!3159432 () List!58552)

(assert (=> d!1630906 (= lt!2088283 e!3159432)))

(declare-fun c!868748 () Bool)

(assert (=> d!1630906 (= c!868748 ((_ is Nil!58428) call!352435))))

(assert (=> d!1630906 (= (++!12779 call!352435 (list!18977 (right!43137 (left!42807 ys!41)))) lt!2088283)))

(declare-fun b!5062081 () Bool)

(assert (=> b!5062081 (= e!3159431 (or (not (= (list!18977 (right!43137 (left!42807 ys!41))) Nil!58428)) (= lt!2088283 call!352435)))))

(declare-fun b!5062080 () Bool)

(declare-fun res!2155444 () Bool)

(assert (=> b!5062080 (=> (not res!2155444) (not e!3159431))))

(assert (=> b!5062080 (= res!2155444 (= (size!39065 lt!2088283) (+ (size!39065 call!352435) (size!39065 (list!18977 (right!43137 (left!42807 ys!41)))))))))

(declare-fun b!5062078 () Bool)

(assert (=> b!5062078 (= e!3159432 (list!18977 (right!43137 (left!42807 ys!41))))))

(declare-fun b!5062079 () Bool)

(assert (=> b!5062079 (= e!3159432 (Cons!58428 (h!64876 call!352435) (++!12779 (t!371255 call!352435) (list!18977 (right!43137 (left!42807 ys!41))))))))

(assert (= (and d!1630906 c!868748) b!5062078))

(assert (= (and d!1630906 (not c!868748)) b!5062079))

(assert (= (and d!1630906 res!2155445) b!5062080))

(assert (= (and b!5062080 res!2155444) b!5062081))

(declare-fun m!6101244 () Bool)

(assert (=> d!1630906 m!6101244))

(declare-fun m!6101246 () Bool)

(assert (=> d!1630906 m!6101246))

(assert (=> d!1630906 m!6097052))

(assert (=> d!1630906 m!6100104))

(declare-fun m!6101248 () Bool)

(assert (=> b!5062080 m!6101248))

(declare-fun m!6101250 () Bool)

(assert (=> b!5062080 m!6101250))

(assert (=> b!5062080 m!6097052))

(assert (=> b!5062080 m!6100108))

(assert (=> b!5062079 m!6097052))

(declare-fun m!6101252 () Bool)

(assert (=> b!5062079 m!6101252))

(assert (=> bm!352431 d!1630906))

(declare-fun d!1630908 () Bool)

(declare-fun lt!2088284 () Bool)

(assert (=> d!1630908 (= lt!2088284 (isEmpty!31621 (list!18977 (left!42807 (right!43137 lt!2087928)))))))

(assert (=> d!1630908 (= lt!2088284 (= (size!39064 (left!42807 (right!43137 lt!2087928))) 0))))

(assert (=> d!1630908 (= (isEmpty!31619 (left!42807 (right!43137 lt!2087928))) lt!2088284)))

(declare-fun bs!1189687 () Bool)

(assert (= bs!1189687 d!1630908))

(assert (=> bs!1189687 m!6098230))

(assert (=> bs!1189687 m!6098230))

(declare-fun m!6101254 () Bool)

(assert (=> bs!1189687 m!6101254))

(declare-fun m!6101256 () Bool)

(assert (=> bs!1189687 m!6101256))

(assert (=> b!5060557 d!1630908))

(declare-fun b!5062083 () Bool)

(declare-fun e!3159433 () List!58552)

(declare-fun e!3159434 () List!58552)

(assert (=> b!5062083 (= e!3159433 e!3159434)))

(declare-fun c!868750 () Bool)

(assert (=> b!5062083 (= c!868750 ((_ is Leaf!25842) lt!2088036))))

(declare-fun b!5062084 () Bool)

(assert (=> b!5062084 (= e!3159434 (list!18979 (xs!18896 lt!2088036)))))

(declare-fun b!5062082 () Bool)

(assert (=> b!5062082 (= e!3159433 Nil!58428)))

(declare-fun b!5062085 () Bool)

(assert (=> b!5062085 (= e!3159434 (++!12779 (list!18977 (left!42807 lt!2088036)) (list!18977 (right!43137 lt!2088036))))))

(declare-fun d!1630910 () Bool)

(declare-fun c!868749 () Bool)

(assert (=> d!1630910 (= c!868749 ((_ is Empty!15558) lt!2088036))))

(assert (=> d!1630910 (= (list!18977 lt!2088036) e!3159433)))

(assert (= (and d!1630910 c!868749) b!5062082))

(assert (= (and d!1630910 (not c!868749)) b!5062083))

(assert (= (and b!5062083 c!868750) b!5062084))

(assert (= (and b!5062083 (not c!868750)) b!5062085))

(declare-fun m!6101258 () Bool)

(assert (=> b!5062084 m!6101258))

(declare-fun m!6101260 () Bool)

(assert (=> b!5062085 m!6101260))

(declare-fun m!6101262 () Bool)

(assert (=> b!5062085 m!6101262))

(assert (=> b!5062085 m!6101260))

(assert (=> b!5062085 m!6101262))

(declare-fun m!6101264 () Bool)

(assert (=> b!5062085 m!6101264))

(assert (=> d!1629766 d!1630910))

(declare-fun d!1630912 () Bool)

(declare-fun e!3159435 () Bool)

(assert (=> d!1630912 e!3159435))

(declare-fun res!2155447 () Bool)

(assert (=> d!1630912 (=> (not res!2155447) (not e!3159435))))

(declare-fun lt!2088285 () List!58552)

(assert (=> d!1630912 (= res!2155447 (= (content!10414 lt!2088285) ((_ map or) (content!10414 (list!18977 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))))) (content!10414 (list!18977 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))))))))

(declare-fun e!3159436 () List!58552)

(assert (=> d!1630912 (= lt!2088285 e!3159436)))

(declare-fun c!868751 () Bool)

(assert (=> d!1630912 (= c!868751 ((_ is Nil!58428) (list!18977 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))))))))

(assert (=> d!1630912 (= (++!12779 (list!18977 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) (list!18977 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))) lt!2088285)))

(declare-fun b!5062089 () Bool)

(assert (=> b!5062089 (= e!3159435 (or (not (= (list!18977 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) Nil!58428)) (= lt!2088285 (list!18977 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))))))))

(declare-fun b!5062088 () Bool)

(declare-fun res!2155446 () Bool)

(assert (=> b!5062088 (=> (not res!2155446) (not e!3159435))))

(assert (=> b!5062088 (= res!2155446 (= (size!39065 lt!2088285) (+ (size!39065 (list!18977 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))))) (size!39065 (list!18977 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))))))))

(declare-fun b!5062086 () Bool)

(assert (=> b!5062086 (= e!3159436 (list!18977 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))))))

(declare-fun b!5062087 () Bool)

(assert (=> b!5062087 (= e!3159436 (Cons!58428 (h!64876 (list!18977 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))))) (++!12779 (t!371255 (list!18977 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))))) (list!18977 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))))))))

(assert (= (and d!1630912 c!868751) b!5062086))

(assert (= (and d!1630912 (not c!868751)) b!5062087))

(assert (= (and d!1630912 res!2155447) b!5062088))

(assert (= (and b!5062088 res!2155446) b!5062089))

(declare-fun m!6101266 () Bool)

(assert (=> d!1630912 m!6101266))

(assert (=> d!1630912 m!6098290))

(declare-fun m!6101268 () Bool)

(assert (=> d!1630912 m!6101268))

(assert (=> d!1630912 m!6098292))

(declare-fun m!6101270 () Bool)

(assert (=> d!1630912 m!6101270))

(declare-fun m!6101272 () Bool)

(assert (=> b!5062088 m!6101272))

(assert (=> b!5062088 m!6098290))

(assert (=> b!5062088 m!6101232))

(assert (=> b!5062088 m!6098292))

(assert (=> b!5062088 m!6101230))

(assert (=> b!5062087 m!6098292))

(declare-fun m!6101274 () Bool)

(assert (=> b!5062087 m!6101274))

(assert (=> d!1629766 d!1630912))

(declare-fun b!5062091 () Bool)

(declare-fun e!3159437 () List!58552)

(declare-fun e!3159438 () List!58552)

(assert (=> b!5062091 (= e!3159437 e!3159438)))

(declare-fun c!868753 () Bool)

(assert (=> b!5062091 (= c!868753 ((_ is Leaf!25842) (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))))))

(declare-fun b!5062092 () Bool)

(assert (=> b!5062092 (= e!3159438 (list!18979 (xs!18896 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))))))))

(declare-fun b!5062090 () Bool)

(assert (=> b!5062090 (= e!3159437 Nil!58428)))

(declare-fun b!5062093 () Bool)

(assert (=> b!5062093 (= e!3159438 (++!12779 (list!18977 (left!42807 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41))))))) (list!18977 (right!43137 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))))))))

(declare-fun c!868752 () Bool)

(declare-fun d!1630914 () Bool)

(assert (=> d!1630914 (= c!868752 ((_ is Empty!15558) (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))))))

(assert (=> d!1630914 (= (list!18977 (ite c!868195 (ite c!868193 (left!42807 (right!43137 xs!286)) (ite c!868200 (left!42807 (right!43137 (right!43137 xs!286))) (left!42807 (right!43137 xs!286)))) (ite c!868198 call!352361 (ite c!868196 lt!2087964 (right!43137 (left!42807 ys!41)))))) e!3159437)))

(assert (= (and d!1630914 c!868752) b!5062090))

(assert (= (and d!1630914 (not c!868752)) b!5062091))

(assert (= (and b!5062091 c!868753) b!5062092))

(assert (= (and b!5062091 (not c!868753)) b!5062093))

(declare-fun m!6101276 () Bool)

(assert (=> b!5062092 m!6101276))

(declare-fun m!6101278 () Bool)

(assert (=> b!5062093 m!6101278))

(declare-fun m!6101280 () Bool)

(assert (=> b!5062093 m!6101280))

(assert (=> b!5062093 m!6101278))

(assert (=> b!5062093 m!6101280))

(declare-fun m!6101282 () Bool)

(assert (=> b!5062093 m!6101282))

(assert (=> d!1629766 d!1630914))

(declare-fun b!5062095 () Bool)

(declare-fun e!3159439 () List!58552)

(declare-fun e!3159440 () List!58552)

(assert (=> b!5062095 (= e!3159439 e!3159440)))

(declare-fun c!868755 () Bool)

(assert (=> b!5062095 (= c!868755 ((_ is Leaf!25842) (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))))))

(declare-fun b!5062096 () Bool)

(assert (=> b!5062096 (= e!3159440 (list!18979 (xs!18896 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))))))

(declare-fun b!5062094 () Bool)

(assert (=> b!5062094 (= e!3159439 Nil!58428)))

(declare-fun b!5062097 () Bool)

(assert (=> b!5062097 (= e!3159440 (++!12779 (list!18977 (left!42807 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41)))))) (list!18977 (right!43137 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))))))))

(declare-fun c!868754 () Bool)

(declare-fun d!1630916 () Bool)

(assert (=> d!1630916 (= c!868754 ((_ is Empty!15558) (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))))))

(assert (=> d!1630916 (= (list!18977 (ite c!868195 (ite c!868193 call!352373 (ite c!868200 lt!2087965 (left!42807 (right!43137 (right!43137 xs!286))))) (ite c!868198 (right!43137 ys!41) (ite c!868196 (right!43137 (left!42807 ys!41)) (right!43137 ys!41))))) e!3159439)))

(assert (= (and d!1630916 c!868754) b!5062094))

(assert (= (and d!1630916 (not c!868754)) b!5062095))

(assert (= (and b!5062095 c!868755) b!5062096))

(assert (= (and b!5062095 (not c!868755)) b!5062097))

(declare-fun m!6101284 () Bool)

(assert (=> b!5062096 m!6101284))

(declare-fun m!6101286 () Bool)

(assert (=> b!5062097 m!6101286))

(declare-fun m!6101288 () Bool)

(assert (=> b!5062097 m!6101288))

(assert (=> b!5062097 m!6101286))

(assert (=> b!5062097 m!6101288))

(declare-fun m!6101290 () Bool)

(assert (=> b!5062097 m!6101290))

(assert (=> d!1629766 d!1630916))

(declare-fun b!5062098 () Bool)

(declare-fun res!2155449 () Bool)

(declare-fun e!3159441 () Bool)

(assert (=> b!5062098 (=> (not res!2155449) (not e!3159441))))

(assert (=> b!5062098 (= res!2155449 (isBalanced!4420 (left!42807 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5062099 () Bool)

(declare-fun res!2155450 () Bool)

(assert (=> b!5062099 (=> (not res!2155450) (not e!3159441))))

(assert (=> b!5062099 (= res!2155450 (isBalanced!4420 (right!43137 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5062100 () Bool)

(declare-fun res!2155452 () Bool)

(assert (=> b!5062100 (=> (not res!2155452) (not e!3159441))))

(assert (=> b!5062100 (= res!2155452 (not (isEmpty!31619 (left!42807 (left!42807 (left!42807 ys!41))))))))

(declare-fun b!5062101 () Bool)

(assert (=> b!5062101 (= e!3159441 (not (isEmpty!31619 (right!43137 (left!42807 (left!42807 ys!41))))))))

(declare-fun b!5062102 () Bool)

(declare-fun res!2155453 () Bool)

(assert (=> b!5062102 (=> (not res!2155453) (not e!3159441))))

(assert (=> b!5062102 (= res!2155453 (<= (- (height!2135 (left!42807 (left!42807 (left!42807 ys!41)))) (height!2135 (right!43137 (left!42807 (left!42807 ys!41))))) 1))))

(declare-fun b!5062103 () Bool)

(declare-fun e!3159442 () Bool)

(assert (=> b!5062103 (= e!3159442 e!3159441)))

(declare-fun res!2155451 () Bool)

(assert (=> b!5062103 (=> (not res!2155451) (not e!3159441))))

(assert (=> b!5062103 (= res!2155451 (<= (- 1) (- (height!2135 (left!42807 (left!42807 (left!42807 ys!41)))) (height!2135 (right!43137 (left!42807 (left!42807 ys!41)))))))))

(declare-fun d!1630918 () Bool)

(declare-fun res!2155448 () Bool)

(assert (=> d!1630918 (=> res!2155448 e!3159442)))

(assert (=> d!1630918 (= res!2155448 (not ((_ is Node!15558) (left!42807 (left!42807 ys!41)))))))

(assert (=> d!1630918 (= (isBalanced!4420 (left!42807 (left!42807 ys!41))) e!3159442)))

(assert (= (and d!1630918 (not res!2155448)) b!5062103))

(assert (= (and b!5062103 res!2155451) b!5062102))

(assert (= (and b!5062102 res!2155453) b!5062098))

(assert (= (and b!5062098 res!2155449) b!5062099))

(assert (= (and b!5062099 res!2155450) b!5062100))

(assert (= (and b!5062100 res!2155452) b!5062101))

(declare-fun m!6101292 () Bool)

(assert (=> b!5062100 m!6101292))

(assert (=> b!5062102 m!6100286))

(assert (=> b!5062102 m!6100288))

(declare-fun m!6101294 () Bool)

(assert (=> b!5062099 m!6101294))

(declare-fun m!6101296 () Bool)

(assert (=> b!5062101 m!6101296))

(declare-fun m!6101298 () Bool)

(assert (=> b!5062098 m!6101298))

(assert (=> b!5062103 m!6100286))

(assert (=> b!5062103 m!6100288))

(assert (=> b!5060499 d!1630918))

(declare-fun d!1630920 () Bool)

(declare-fun e!3159443 () Bool)

(assert (=> d!1630920 e!3159443))

(declare-fun res!2155455 () Bool)

(assert (=> d!1630920 (=> (not res!2155455) (not e!3159443))))

(declare-fun lt!2088286 () List!58552)

(assert (=> d!1630920 (= res!2155455 (= (content!10414 lt!2088286) ((_ map or) (content!10414 (list!18977 (left!42807 (right!43137 xs!286)))) (content!10414 call!352469))))))

(declare-fun e!3159444 () List!58552)

(assert (=> d!1630920 (= lt!2088286 e!3159444)))

(declare-fun c!868756 () Bool)

(assert (=> d!1630920 (= c!868756 ((_ is Nil!58428) (list!18977 (left!42807 (right!43137 xs!286)))))))

(assert (=> d!1630920 (= (++!12779 (list!18977 (left!42807 (right!43137 xs!286))) call!352469) lt!2088286)))

(declare-fun b!5062107 () Bool)

(assert (=> b!5062107 (= e!3159443 (or (not (= call!352469 Nil!58428)) (= lt!2088286 (list!18977 (left!42807 (right!43137 xs!286))))))))

(declare-fun b!5062106 () Bool)

(declare-fun res!2155454 () Bool)

(assert (=> b!5062106 (=> (not res!2155454) (not e!3159443))))

(assert (=> b!5062106 (= res!2155454 (= (size!39065 lt!2088286) (+ (size!39065 (list!18977 (left!42807 (right!43137 xs!286)))) (size!39065 call!352469))))))

(declare-fun b!5062104 () Bool)

(assert (=> b!5062104 (= e!3159444 call!352469)))

(declare-fun b!5062105 () Bool)

(assert (=> b!5062105 (= e!3159444 (Cons!58428 (h!64876 (list!18977 (left!42807 (right!43137 xs!286)))) (++!12779 (t!371255 (list!18977 (left!42807 (right!43137 xs!286)))) call!352469)))))

(assert (= (and d!1630920 c!868756) b!5062104))

(assert (= (and d!1630920 (not c!868756)) b!5062105))

(assert (= (and d!1630920 res!2155455) b!5062106))

(assert (= (and b!5062106 res!2155454) b!5062107))

(declare-fun m!6101300 () Bool)

(assert (=> d!1630920 m!6101300))

(assert (=> d!1630920 m!6097056))

(assert (=> d!1630920 m!6100330))

(declare-fun m!6101302 () Bool)

(assert (=> d!1630920 m!6101302))

(declare-fun m!6101304 () Bool)

(assert (=> b!5062106 m!6101304))

(assert (=> b!5062106 m!6097056))

(assert (=> b!5062106 m!6100334))

(declare-fun m!6101306 () Bool)

(assert (=> b!5062106 m!6101306))

(declare-fun m!6101308 () Bool)

(assert (=> b!5062105 m!6101308))

(assert (=> bm!352464 d!1630920))

(declare-fun d!1630922 () Bool)

(declare-fun lt!2088287 () Int)

(assert (=> d!1630922 (= lt!2088287 (size!39065 (list!18977 (left!42807 (left!42807 ys!41)))))))

(assert (=> d!1630922 (= lt!2088287 (ite ((_ is Empty!15558) (left!42807 (left!42807 ys!41))) 0 (ite ((_ is Leaf!25842) (left!42807 (left!42807 ys!41))) (csize!31347 (left!42807 (left!42807 ys!41))) (csize!31346 (left!42807 (left!42807 ys!41))))))))

(assert (=> d!1630922 (= (size!39064 (left!42807 (left!42807 ys!41))) lt!2088287)))

(declare-fun bs!1189688 () Bool)

(assert (= bs!1189688 d!1630922))

(assert (=> bs!1189688 m!6097050))

(assert (=> bs!1189688 m!6097050))

(assert (=> bs!1189688 m!6098324))

(assert (=> d!1629644 d!1630922))

(declare-fun d!1630924 () Bool)

(declare-fun lt!2088288 () Int)

(assert (=> d!1630924 (= lt!2088288 (size!39065 (list!18977 (right!43137 (left!42807 ys!41)))))))

(assert (=> d!1630924 (= lt!2088288 (ite ((_ is Empty!15558) (right!43137 (left!42807 ys!41))) 0 (ite ((_ is Leaf!25842) (right!43137 (left!42807 ys!41))) (csize!31347 (right!43137 (left!42807 ys!41))) (csize!31346 (right!43137 (left!42807 ys!41))))))))

(assert (=> d!1630924 (= (size!39064 (right!43137 (left!42807 ys!41))) lt!2088288)))

(declare-fun bs!1189689 () Bool)

(assert (= bs!1189689 d!1630924))

(assert (=> bs!1189689 m!6097052))

(assert (=> bs!1189689 m!6097052))

(assert (=> bs!1189689 m!6100108))

(assert (=> d!1629644 d!1630924))

(declare-fun bm!352577 () Bool)

(declare-fun call!352583 () List!58552)

(assert (=> bm!352577 (= call!352583 (++!12779 (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 (left!42807 ys!41)))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5062108 () Bool)

(declare-fun e!3159445 () Bool)

(declare-fun call!352584 () List!58552)

(declare-fun call!352582 () List!58552)

(assert (=> b!5062108 (= e!3159445 (= call!352584 call!352582))))

(declare-fun bm!352578 () Bool)

(declare-fun call!352585 () List!58552)

(assert (=> bm!352578 (= call!352585 (++!12779 (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))))))

(declare-fun b!5062109 () Bool)

(assert (=> b!5062109 (= e!3159445 (= call!352584 call!352582))))

(declare-fun lt!2088289 () Bool)

(assert (=> b!5062109 (= lt!2088289 (appendAssoc!298 (t!371255 (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 (left!42807 ys!41))))) (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))))))

(declare-fun bm!352579 () Bool)

(assert (=> bm!352579 (= call!352584 (++!12779 call!352583 (list!18977 (right!43137 ys!41))))))

(declare-fun d!1630926 () Bool)

(assert (=> d!1630926 e!3159445))

(declare-fun c!868757 () Bool)

(assert (=> d!1630926 (= c!868757 ((_ is Nil!58428) (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 (left!42807 ys!41))))))))

(assert (=> d!1630926 (= (appendAssoc!298 (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 (left!42807 ys!41)))) (list!18977 (right!43137 (left!42807 ys!41))) (list!18977 (right!43137 ys!41))) true)))

(declare-fun bm!352580 () Bool)

(assert (=> bm!352580 (= call!352582 (++!12779 (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 (left!42807 ys!41)))) call!352585))))

(assert (= (and d!1630926 c!868757) b!5062108))

(assert (= (and d!1630926 (not c!868757)) b!5062109))

(assert (= (or b!5062108 b!5062109) bm!352577))

(assert (= (or b!5062108 b!5062109) bm!352578))

(assert (= (or b!5062108 b!5062109) bm!352580))

(assert (= (or b!5062108 b!5062109) bm!352579))

(assert (=> bm!352580 m!6098170))

(declare-fun m!6101310 () Bool)

(assert (=> bm!352580 m!6101310))

(assert (=> bm!352577 m!6098170))

(assert (=> bm!352577 m!6097052))

(declare-fun m!6101312 () Bool)

(assert (=> bm!352577 m!6101312))

(assert (=> bm!352578 m!6097052))

(assert (=> bm!352578 m!6097074))

(assert (=> bm!352578 m!6098312))

(assert (=> bm!352579 m!6097074))

(declare-fun m!6101314 () Bool)

(assert (=> bm!352579 m!6101314))

(assert (=> b!5062109 m!6097052))

(assert (=> b!5062109 m!6097074))

(declare-fun m!6101316 () Bool)

(assert (=> b!5062109 m!6101316))

(assert (=> b!5060602 d!1630926))

(assert (=> b!5060602 d!1629678))

(assert (=> b!5060602 d!1629676))

(declare-fun d!1630928 () Bool)

(declare-fun e!3159446 () Bool)

(assert (=> d!1630928 e!3159446))

(declare-fun res!2155457 () Bool)

(assert (=> d!1630928 (=> (not res!2155457) (not e!3159446))))

(declare-fun lt!2088290 () List!58552)

(assert (=> d!1630928 (= res!2155457 (= (content!10414 lt!2088290) ((_ map or) (content!10414 (list!18977 (right!43137 xs!286))) (content!10414 (list!18977 (left!42807 (left!42807 ys!41)))))))))

(declare-fun e!3159447 () List!58552)

(assert (=> d!1630928 (= lt!2088290 e!3159447)))

(declare-fun c!868758 () Bool)

(assert (=> d!1630928 (= c!868758 ((_ is Nil!58428) (list!18977 (right!43137 xs!286))))))

(assert (=> d!1630928 (= (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 (left!42807 ys!41)))) lt!2088290)))

(declare-fun b!5062113 () Bool)

(assert (=> b!5062113 (= e!3159446 (or (not (= (list!18977 (left!42807 (left!42807 ys!41))) Nil!58428)) (= lt!2088290 (list!18977 (right!43137 xs!286)))))))

(declare-fun b!5062112 () Bool)

(declare-fun res!2155456 () Bool)

(assert (=> b!5062112 (=> (not res!2155456) (not e!3159446))))

(assert (=> b!5062112 (= res!2155456 (= (size!39065 lt!2088290) (+ (size!39065 (list!18977 (right!43137 xs!286))) (size!39065 (list!18977 (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5062110 () Bool)

(assert (=> b!5062110 (= e!3159447 (list!18977 (left!42807 (left!42807 ys!41))))))

(declare-fun b!5062111 () Bool)

(assert (=> b!5062111 (= e!3159447 (Cons!58428 (h!64876 (list!18977 (right!43137 xs!286))) (++!12779 (t!371255 (list!18977 (right!43137 xs!286))) (list!18977 (left!42807 (left!42807 ys!41))))))))

(assert (= (and d!1630928 c!868758) b!5062110))

(assert (= (and d!1630928 (not c!868758)) b!5062111))

(assert (= (and d!1630928 res!2155457) b!5062112))

(assert (= (and b!5062112 res!2155456) b!5062113))

(declare-fun m!6101318 () Bool)

(assert (=> d!1630928 m!6101318))

(assert (=> d!1630928 m!6097068))

(assert (=> d!1630928 m!6098116))

(assert (=> d!1630928 m!6097050))

(assert (=> d!1630928 m!6098320))

(declare-fun m!6101320 () Bool)

(assert (=> b!5062112 m!6101320))

(assert (=> b!5062112 m!6097068))

(assert (=> b!5062112 m!6098120))

(assert (=> b!5062112 m!6097050))

(assert (=> b!5062112 m!6098324))

(assert (=> b!5062111 m!6097050))

(declare-fun m!6101322 () Bool)

(assert (=> b!5062111 m!6101322))

(assert (=> b!5060602 d!1630928))

(assert (=> b!5060602 d!1629702))

(assert (=> b!5060602 d!1629746))

(assert (=> b!5060173 d!1629800))

(assert (=> b!5060173 d!1629802))

(declare-fun d!1630930 () Bool)

(assert (=> d!1630930 (= (height!2135 (ite c!868361 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))) (ite ((_ is Empty!15558) (ite c!868361 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))) 0 (ite ((_ is Leaf!25842) (ite c!868361 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))) 1 (cheight!15769 (ite c!868361 (left!42807 (ite c!868195 (ite c!868193 (right!43137 (right!43137 xs!286)) (right!43137 (right!43137 (right!43137 xs!286)))) (right!43137 xs!286))) (left!42807 (ite c!868195 ys!41 (ite c!868198 (left!42807 ys!41) (left!42807 (left!42807 ys!41))))))))))))

(assert (=> bm!352447 d!1630930))

(declare-fun d!1630932 () Bool)

(assert (=> d!1630932 (= (inv!77522 (xs!18896 (left!42807 (left!42807 xs!286)))) (<= (size!39065 (innerList!15646 (xs!18896 (left!42807 (left!42807 xs!286))))) 2147483647))))

(declare-fun bs!1189690 () Bool)

(assert (= bs!1189690 d!1630932))

(declare-fun m!6101324 () Bool)

(assert (=> bs!1189690 m!6101324))

(assert (=> b!5060753 d!1630932))

(declare-fun d!1630934 () Bool)

(assert (=> d!1630934 (= (inv!77522 (xs!18896 (right!43137 (left!42807 ys!41)))) (<= (size!39065 (innerList!15646 (xs!18896 (right!43137 (left!42807 ys!41))))) 2147483647))))

(declare-fun bs!1189691 () Bool)

(assert (= bs!1189691 d!1630934))

(declare-fun m!6101326 () Bool)

(assert (=> bs!1189691 m!6101326))

(assert (=> b!5060762 d!1630934))

(assert (=> d!1629720 d!1630720))

(assert (=> d!1629720 d!1629824))

(assert (=> b!5060647 d!1630672))

(assert (=> b!5060647 d!1630510))

(assert (=> d!1629696 d!1630806))

(assert (=> d!1629696 d!1629658))

(declare-fun bm!352581 () Bool)

(declare-fun call!352587 () List!58552)

(assert (=> bm!352581 (= call!352587 (++!12779 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 (left!42807 ys!41)))))))

(declare-fun b!5062114 () Bool)

(declare-fun e!3159448 () Bool)

(declare-fun call!352588 () List!58552)

(declare-fun call!352586 () List!58552)

(assert (=> b!5062114 (= e!3159448 (= call!352588 call!352586))))

(declare-fun bm!352582 () Bool)

(declare-fun call!352589 () List!58552)

(assert (=> bm!352582 (= call!352589 (++!12779 (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun b!5062115 () Bool)

(assert (=> b!5062115 (= e!3159448 (= call!352588 call!352586))))

(declare-fun lt!2088291 () Bool)

(assert (=> b!5062115 (= lt!2088291 (appendAssoc!298 (t!371255 (list!18977 (right!43137 xs!286))) (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun bm!352583 () Bool)

(assert (=> bm!352583 (= call!352588 (++!12779 call!352587 (list!18977 (right!43137 (left!42807 ys!41)))))))

(declare-fun d!1630936 () Bool)

(assert (=> d!1630936 e!3159448))

(declare-fun c!868759 () Bool)

(assert (=> d!1630936 (= c!868759 ((_ is Nil!58428) (list!18977 (right!43137 xs!286))))))

(assert (=> d!1630936 (= (appendAssoc!298 (list!18977 (right!43137 xs!286)) (list!18977 (left!42807 (left!42807 ys!41))) (list!18977 (right!43137 (left!42807 ys!41)))) true)))

(declare-fun bm!352584 () Bool)

(assert (=> bm!352584 (= call!352586 (++!12779 (list!18977 (right!43137 xs!286)) call!352589))))

(assert (= (and d!1630936 c!868759) b!5062114))

(assert (= (and d!1630936 (not c!868759)) b!5062115))

(assert (= (or b!5062114 b!5062115) bm!352581))

(assert (= (or b!5062114 b!5062115) bm!352582))

(assert (= (or b!5062114 b!5062115) bm!352584))

(assert (= (or b!5062114 b!5062115) bm!352583))

(assert (=> bm!352584 m!6097068))

(declare-fun m!6101328 () Bool)

(assert (=> bm!352584 m!6101328))

(assert (=> bm!352581 m!6097068))

(assert (=> bm!352581 m!6097050))

(assert (=> bm!352581 m!6098170))

(assert (=> bm!352582 m!6097050))

(assert (=> bm!352582 m!6097052))

(assert (=> bm!352582 m!6098052))

(assert (=> bm!352583 m!6097052))

(declare-fun m!6101330 () Bool)

(assert (=> bm!352583 m!6101330))

(assert (=> b!5062115 m!6097050))

(assert (=> b!5062115 m!6097052))

(declare-fun m!6101332 () Bool)

(assert (=> b!5062115 m!6101332))

(assert (=> b!5060601 d!1630936))

(assert (=> b!5060601 d!1629702))

(assert (=> b!5060601 d!1629676))

(assert (=> b!5060601 d!1629678))

(declare-fun d!1630938 () Bool)

(declare-fun res!2155458 () Bool)

(declare-fun e!3159449 () Bool)

(assert (=> d!1630938 (=> (not res!2155458) (not e!3159449))))

(assert (=> d!1630938 (= res!2155458 (<= (size!39065 (list!18979 (xs!18896 (left!42807 (left!42807 ys!41))))) 512))))

(assert (=> d!1630938 (= (inv!77527 (left!42807 (left!42807 ys!41))) e!3159449)))

(declare-fun b!5062116 () Bool)

(declare-fun res!2155459 () Bool)

(assert (=> b!5062116 (=> (not res!2155459) (not e!3159449))))

(assert (=> b!5062116 (= res!2155459 (= (csize!31347 (left!42807 (left!42807 ys!41))) (size!39065 (list!18979 (xs!18896 (left!42807 (left!42807 ys!41)))))))))

(declare-fun b!5062117 () Bool)

(assert (=> b!5062117 (= e!3159449 (and (> (csize!31347 (left!42807 (left!42807 ys!41))) 0) (<= (csize!31347 (left!42807 (left!42807 ys!41))) 512)))))

(assert (= (and d!1630938 res!2155458) b!5062116))

(assert (= (and b!5062116 res!2155459) b!5062117))

(assert (=> d!1630938 m!6098058))

(assert (=> d!1630938 m!6098058))

(declare-fun m!6101334 () Bool)

(assert (=> d!1630938 m!6101334))

(assert (=> b!5062116 m!6098058))

(assert (=> b!5062116 m!6098058))

(assert (=> b!5062116 m!6101334))

(assert (=> b!5060651 d!1630938))

(declare-fun d!1630940 () Bool)

(declare-fun e!3159450 () Bool)

(assert (=> d!1630940 e!3159450))

(declare-fun res!2155461 () Bool)

(assert (=> d!1630940 (=> (not res!2155461) (not e!3159450))))

(declare-fun lt!2088292 () List!58552)

(assert (=> d!1630940 (= res!2155461 (= (content!10414 lt!2088292) ((_ map or) (content!10414 call!352439) (content!10414 (list!18977 ys!41)))))))

(declare-fun e!3159451 () List!58552)

(assert (=> d!1630940 (= lt!2088292 e!3159451)))

(declare-fun c!868760 () Bool)

(assert (=> d!1630940 (= c!868760 ((_ is Nil!58428) call!352439))))

(assert (=> d!1630940 (= (++!12779 call!352439 (list!18977 ys!41)) lt!2088292)))

(declare-fun b!5062121 () Bool)

(assert (=> b!5062121 (= e!3159450 (or (not (= (list!18977 ys!41) Nil!58428)) (= lt!2088292 call!352439)))))

(declare-fun b!5062120 () Bool)

(declare-fun res!2155460 () Bool)

(assert (=> b!5062120 (=> (not res!2155460) (not e!3159450))))

(assert (=> b!5062120 (= res!2155460 (= (size!39065 lt!2088292) (+ (size!39065 call!352439) (size!39065 (list!18977 ys!41)))))))

(declare-fun b!5062118 () Bool)

(assert (=> b!5062118 (= e!3159451 (list!18977 ys!41))))

(declare-fun b!5062119 () Bool)

(assert (=> b!5062119 (= e!3159451 (Cons!58428 (h!64876 call!352439) (++!12779 (t!371255 call!352439) (list!18977 ys!41))))))

(assert (= (and d!1630940 c!868760) b!5062118))

(assert (= (and d!1630940 (not c!868760)) b!5062119))

(assert (= (and d!1630940 res!2155461) b!5062120))

(assert (= (and b!5062120 res!2155460) b!5062121))

(declare-fun m!6101336 () Bool)

(assert (=> d!1630940 m!6101336))

(declare-fun m!6101338 () Bool)

(assert (=> d!1630940 m!6101338))

(assert (=> d!1630940 m!6096986))

(assert (=> d!1630940 m!6097340))

(declare-fun m!6101340 () Bool)

(assert (=> b!5062120 m!6101340))

(declare-fun m!6101342 () Bool)

(assert (=> b!5062120 m!6101342))

(assert (=> b!5062120 m!6096986))

(assert (=> b!5062120 m!6097346))

(assert (=> b!5062119 m!6096986))

(declare-fun m!6101344 () Bool)

(assert (=> b!5062119 m!6101344))

(assert (=> bm!352435 d!1630940))

(assert (=> b!5060719 d!1630602))

(assert (=> b!5060719 d!1630604))

(declare-fun d!1630942 () Bool)

(declare-fun e!3159452 () Bool)

(assert (=> d!1630942 e!3159452))

(declare-fun res!2155463 () Bool)

(assert (=> d!1630942 (=> (not res!2155463) (not e!3159452))))

(declare-fun lt!2088293 () List!58552)

(assert (=> d!1630942 (= res!2155463 (= (content!10414 lt!2088293) ((_ map or) (content!10414 (list!18977 (left!42807 lt!2087939))) (content!10414 (list!18977 (right!43137 lt!2087939))))))))

(declare-fun e!3159453 () List!58552)

(assert (=> d!1630942 (= lt!2088293 e!3159453)))

(declare-fun c!868761 () Bool)

(assert (=> d!1630942 (= c!868761 ((_ is Nil!58428) (list!18977 (left!42807 lt!2087939))))))

(assert (=> d!1630942 (= (++!12779 (list!18977 (left!42807 lt!2087939)) (list!18977 (right!43137 lt!2087939))) lt!2088293)))

(declare-fun b!5062125 () Bool)

(assert (=> b!5062125 (= e!3159452 (or (not (= (list!18977 (right!43137 lt!2087939)) Nil!58428)) (= lt!2088293 (list!18977 (left!42807 lt!2087939)))))))

(declare-fun b!5062124 () Bool)

(declare-fun res!2155462 () Bool)

(assert (=> b!5062124 (=> (not res!2155462) (not e!3159452))))

(assert (=> b!5062124 (= res!2155462 (= (size!39065 lt!2088293) (+ (size!39065 (list!18977 (left!42807 lt!2087939))) (size!39065 (list!18977 (right!43137 lt!2087939))))))))

(declare-fun b!5062122 () Bool)

(assert (=> b!5062122 (= e!3159453 (list!18977 (right!43137 lt!2087939)))))

(declare-fun b!5062123 () Bool)

(assert (=> b!5062123 (= e!3159453 (Cons!58428 (h!64876 (list!18977 (left!42807 lt!2087939))) (++!12779 (t!371255 (list!18977 (left!42807 lt!2087939))) (list!18977 (right!43137 lt!2087939)))))))

(assert (= (and d!1630942 c!868761) b!5062122))

(assert (= (and d!1630942 (not c!868761)) b!5062123))

(assert (= (and d!1630942 res!2155463) b!5062124))

(assert (= (and b!5062124 res!2155462) b!5062125))

(declare-fun m!6101346 () Bool)

(assert (=> d!1630942 m!6101346))

(assert (=> d!1630942 m!6098136))

(declare-fun m!6101348 () Bool)

(assert (=> d!1630942 m!6101348))

(assert (=> d!1630942 m!6098138))

(declare-fun m!6101350 () Bool)

(assert (=> d!1630942 m!6101350))

(declare-fun m!6101352 () Bool)

(assert (=> b!5062124 m!6101352))

(assert (=> b!5062124 m!6098136))

(declare-fun m!6101354 () Bool)

(assert (=> b!5062124 m!6101354))

(assert (=> b!5062124 m!6098138))

(declare-fun m!6101356 () Bool)

(assert (=> b!5062124 m!6101356))

(assert (=> b!5062123 m!6098138))

(declare-fun m!6101358 () Bool)

(assert (=> b!5062123 m!6101358))

(assert (=> b!5060583 d!1630942))

(declare-fun b!5062127 () Bool)

(declare-fun e!3159454 () List!58552)

(declare-fun e!3159455 () List!58552)

(assert (=> b!5062127 (= e!3159454 e!3159455)))

(declare-fun c!868763 () Bool)

(assert (=> b!5062127 (= c!868763 ((_ is Leaf!25842) (left!42807 lt!2087939)))))

(declare-fun b!5062128 () Bool)

(assert (=> b!5062128 (= e!3159455 (list!18979 (xs!18896 (left!42807 lt!2087939))))))

(declare-fun b!5062126 () Bool)

(assert (=> b!5062126 (= e!3159454 Nil!58428)))

(declare-fun b!5062129 () Bool)

(assert (=> b!5062129 (= e!3159455 (++!12779 (list!18977 (left!42807 (left!42807 lt!2087939))) (list!18977 (right!43137 (left!42807 lt!2087939)))))))

(declare-fun d!1630944 () Bool)

(declare-fun c!868762 () Bool)

(assert (=> d!1630944 (= c!868762 ((_ is Empty!15558) (left!42807 lt!2087939)))))

(assert (=> d!1630944 (= (list!18977 (left!42807 lt!2087939)) e!3159454)))

(assert (= (and d!1630944 c!868762) b!5062126))

(assert (= (and d!1630944 (not c!868762)) b!5062127))

(assert (= (and b!5062127 c!868763) b!5062128))

(assert (= (and b!5062127 (not c!868763)) b!5062129))

(declare-fun m!6101360 () Bool)

(assert (=> b!5062128 m!6101360))

(declare-fun m!6101362 () Bool)

(assert (=> b!5062129 m!6101362))

(declare-fun m!6101364 () Bool)

(assert (=> b!5062129 m!6101364))

(assert (=> b!5062129 m!6101362))

(assert (=> b!5062129 m!6101364))

(declare-fun m!6101366 () Bool)

(assert (=> b!5062129 m!6101366))

(assert (=> b!5060583 d!1630944))

(declare-fun b!5062131 () Bool)

(declare-fun e!3159456 () List!58552)

(declare-fun e!3159457 () List!58552)

(assert (=> b!5062131 (= e!3159456 e!3159457)))

(declare-fun c!868765 () Bool)

(assert (=> b!5062131 (= c!868765 ((_ is Leaf!25842) (right!43137 lt!2087939)))))

(declare-fun b!5062132 () Bool)

(assert (=> b!5062132 (= e!3159457 (list!18979 (xs!18896 (right!43137 lt!2087939))))))

(declare-fun b!5062130 () Bool)

(assert (=> b!5062130 (= e!3159456 Nil!58428)))

(declare-fun b!5062133 () Bool)

(assert (=> b!5062133 (= e!3159457 (++!12779 (list!18977 (left!42807 (right!43137 lt!2087939))) (list!18977 (right!43137 (right!43137 lt!2087939)))))))

(declare-fun d!1630946 () Bool)

(declare-fun c!868764 () Bool)

(assert (=> d!1630946 (= c!868764 ((_ is Empty!15558) (right!43137 lt!2087939)))))

(assert (=> d!1630946 (= (list!18977 (right!43137 lt!2087939)) e!3159456)))

(assert (= (and d!1630946 c!868764) b!5062130))

(assert (= (and d!1630946 (not c!868764)) b!5062131))

(assert (= (and b!5062131 c!868765) b!5062132))

(assert (= (and b!5062131 (not c!868765)) b!5062133))

(declare-fun m!6101368 () Bool)

(assert (=> b!5062132 m!6101368))

(declare-fun m!6101370 () Bool)

(assert (=> b!5062133 m!6101370))

(declare-fun m!6101372 () Bool)

(assert (=> b!5062133 m!6101372))

(assert (=> b!5062133 m!6101370))

(assert (=> b!5062133 m!6101372))

(declare-fun m!6101374 () Bool)

(assert (=> b!5062133 m!6101374))

(assert (=> b!5060583 d!1630946))

(assert (=> b!5060665 d!1630688))

(assert (=> b!5060665 d!1629704))

(declare-fun d!1630948 () Bool)

(declare-fun e!3159458 () Bool)

(assert (=> d!1630948 e!3159458))

(declare-fun res!2155465 () Bool)

(assert (=> d!1630948 (=> (not res!2155465) (not e!3159458))))

(declare-fun lt!2088294 () List!58552)

(assert (=> d!1630948 (= res!2155465 (= (content!10414 lt!2088294) ((_ map or) (content!10414 call!352443) (content!10414 (list!18977 (right!43137 ys!41))))))))

(declare-fun e!3159459 () List!58552)

(assert (=> d!1630948 (= lt!2088294 e!3159459)))

(declare-fun c!868766 () Bool)

(assert (=> d!1630948 (= c!868766 ((_ is Nil!58428) call!352443))))

(assert (=> d!1630948 (= (++!12779 call!352443 (list!18977 (right!43137 ys!41))) lt!2088294)))

(declare-fun b!5062137 () Bool)

(assert (=> b!5062137 (= e!3159458 (or (not (= (list!18977 (right!43137 ys!41)) Nil!58428)) (= lt!2088294 call!352443)))))

(declare-fun b!5062136 () Bool)

(declare-fun res!2155464 () Bool)

(assert (=> b!5062136 (=> (not res!2155464) (not e!3159458))))

(assert (=> b!5062136 (= res!2155464 (= (size!39065 lt!2088294) (+ (size!39065 call!352443) (size!39065 (list!18977 (right!43137 ys!41))))))))

(declare-fun b!5062134 () Bool)

(assert (=> b!5062134 (= e!3159459 (list!18977 (right!43137 ys!41)))))

(declare-fun b!5062135 () Bool)

(assert (=> b!5062135 (= e!3159459 (Cons!58428 (h!64876 call!352443) (++!12779 (t!371255 call!352443) (list!18977 (right!43137 ys!41)))))))

(assert (= (and d!1630948 c!868766) b!5062134))

(assert (= (and d!1630948 (not c!868766)) b!5062135))

(assert (= (and d!1630948 res!2155465) b!5062136))

(assert (= (and b!5062136 res!2155464) b!5062137))

(declare-fun m!6101376 () Bool)

(assert (=> d!1630948 m!6101376))

(declare-fun m!6101378 () Bool)

(assert (=> d!1630948 m!6101378))

(assert (=> d!1630948 m!6097074))

(assert (=> d!1630948 m!6098240))

(declare-fun m!6101380 () Bool)

(assert (=> b!5062136 m!6101380))

(declare-fun m!6101382 () Bool)

(assert (=> b!5062136 m!6101382))

(assert (=> b!5062136 m!6097074))

(assert (=> b!5062136 m!6098246))

(assert (=> b!5062135 m!6097074))

(declare-fun m!6101384 () Bool)

(assert (=> b!5062135 m!6101384))

(assert (=> bm!352439 d!1630948))

(declare-fun d!1630950 () Bool)

(declare-fun lt!2088295 () Int)

(assert (=> d!1630950 (>= lt!2088295 0)))

(declare-fun e!3159460 () Int)

(assert (=> d!1630950 (= lt!2088295 e!3159460)))

(declare-fun c!868767 () Bool)

(assert (=> d!1630950 (= c!868767 ((_ is Nil!58428) lt!2088028))))

(assert (=> d!1630950 (= (size!39065 lt!2088028) lt!2088295)))

(declare-fun b!5062138 () Bool)

(assert (=> b!5062138 (= e!3159460 0)))

(declare-fun b!5062139 () Bool)

(assert (=> b!5062139 (= e!3159460 (+ 1 (size!39065 (t!371255 lt!2088028))))))

(assert (= (and d!1630950 c!868767) b!5062138))

(assert (= (and d!1630950 (not c!868767)) b!5062139))

(declare-fun m!6101386 () Bool)

(assert (=> b!5062139 m!6101386))

(assert (=> b!5060572 d!1630950))

(assert (=> b!5060572 d!1630806))

(declare-fun d!1630952 () Bool)

(declare-fun lt!2088296 () Int)

(assert (=> d!1630952 (>= lt!2088296 0)))

(declare-fun e!3159461 () Int)

(assert (=> d!1630952 (= lt!2088296 e!3159461)))

(declare-fun c!868768 () Bool)

(assert (=> d!1630952 (= c!868768 ((_ is Nil!58428) (list!18977 (right!43137 xs!286))))))

(assert (=> d!1630952 (= (size!39065 (list!18977 (right!43137 xs!286))) lt!2088296)))

(declare-fun b!5062140 () Bool)

(assert (=> b!5062140 (= e!3159461 0)))

(declare-fun b!5062141 () Bool)

(assert (=> b!5062141 (= e!3159461 (+ 1 (size!39065 (t!371255 (list!18977 (right!43137 xs!286))))))))

(assert (= (and d!1630952 c!868768) b!5062140))

(assert (= (and d!1630952 (not c!868768)) b!5062141))

(assert (=> b!5062141 m!6100196))

(assert (=> b!5060572 d!1630952))

(declare-fun d!1630954 () Bool)

(declare-fun lt!2088297 () Int)

(assert (=> d!1630954 (>= lt!2088297 0)))

(declare-fun e!3159462 () Int)

(assert (=> d!1630954 (= lt!2088297 e!3159462)))

(declare-fun c!868769 () Bool)

(assert (=> d!1630954 (= c!868769 ((_ is Nil!58428) lt!2088050))))

(assert (=> d!1630954 (= (size!39065 lt!2088050) lt!2088297)))

(declare-fun b!5062142 () Bool)

(assert (=> b!5062142 (= e!3159462 0)))

(declare-fun b!5062143 () Bool)

(assert (=> b!5062143 (= e!3159462 (+ 1 (size!39065 (t!371255 lt!2088050))))))

(assert (= (and d!1630954 c!868769) b!5062142))

(assert (= (and d!1630954 (not c!868769)) b!5062143))

(declare-fun m!6101388 () Bool)

(assert (=> b!5062143 m!6101388))

(assert (=> b!5060744 d!1630954))

(assert (=> b!5060744 d!1630952))

(assert (=> b!5060744 d!1629812))

(declare-fun b!5062144 () Bool)

(declare-fun e!3159463 () Bool)

(declare-fun tp!1414104 () Bool)

(assert (=> b!5062144 (= e!3159463 (and tp_is_empty!37039 tp!1414104))))

(assert (=> b!5060763 (= tp!1414021 e!3159463)))

(assert (= (and b!5060763 ((_ is Cons!58428) (innerList!15646 (xs!18896 (right!43137 (left!42807 ys!41)))))) b!5062144))

(declare-fun tp!1414107 () Bool)

(declare-fun e!3159464 () Bool)

(declare-fun tp!1414106 () Bool)

(declare-fun b!5062145 () Bool)

(assert (=> b!5062145 (= e!3159464 (and (inv!77523 (left!42807 (left!42807 (left!42807 (right!43137 xs!286))))) tp!1414106 (inv!77523 (right!43137 (left!42807 (left!42807 (right!43137 xs!286))))) tp!1414107))))

(declare-fun b!5062147 () Bool)

(declare-fun e!3159465 () Bool)

(declare-fun tp!1414105 () Bool)

(assert (=> b!5062147 (= e!3159465 tp!1414105)))

(declare-fun b!5062146 () Bool)

(assert (=> b!5062146 (= e!3159464 (and (inv!77522 (xs!18896 (left!42807 (left!42807 (right!43137 xs!286))))) e!3159465))))

(assert (=> b!5060767 (= tp!1414028 (and (inv!77523 (left!42807 (left!42807 (right!43137 xs!286)))) e!3159464))))

(assert (= (and b!5060767 ((_ is Node!15558) (left!42807 (left!42807 (right!43137 xs!286))))) b!5062145))

(assert (= b!5062146 b!5062147))

(assert (= (and b!5060767 ((_ is Leaf!25842) (left!42807 (left!42807 (right!43137 xs!286))))) b!5062146))

(declare-fun m!6101390 () Bool)

(assert (=> b!5062145 m!6101390))

(declare-fun m!6101392 () Bool)

(assert (=> b!5062145 m!6101392))

(declare-fun m!6101394 () Bool)

(assert (=> b!5062146 m!6101394))

(assert (=> b!5060767 m!6098498))

(declare-fun tp!1414109 () Bool)

(declare-fun tp!1414110 () Bool)

(declare-fun b!5062148 () Bool)

(declare-fun e!3159466 () Bool)

(assert (=> b!5062148 (= e!3159466 (and (inv!77523 (left!42807 (right!43137 (left!42807 (right!43137 xs!286))))) tp!1414109 (inv!77523 (right!43137 (right!43137 (left!42807 (right!43137 xs!286))))) tp!1414110))))

(declare-fun b!5062150 () Bool)

(declare-fun e!3159467 () Bool)

(declare-fun tp!1414108 () Bool)

(assert (=> b!5062150 (= e!3159467 tp!1414108)))

(declare-fun b!5062149 () Bool)

(assert (=> b!5062149 (= e!3159466 (and (inv!77522 (xs!18896 (right!43137 (left!42807 (right!43137 xs!286))))) e!3159467))))

(assert (=> b!5060767 (= tp!1414029 (and (inv!77523 (right!43137 (left!42807 (right!43137 xs!286)))) e!3159466))))

(assert (= (and b!5060767 ((_ is Node!15558) (right!43137 (left!42807 (right!43137 xs!286))))) b!5062148))

(assert (= b!5062149 b!5062150))

(assert (= (and b!5060767 ((_ is Leaf!25842) (right!43137 (left!42807 (right!43137 xs!286))))) b!5062149))

(declare-fun m!6101396 () Bool)

(assert (=> b!5062148 m!6101396))

(declare-fun m!6101398 () Bool)

(assert (=> b!5062148 m!6101398))

(declare-fun m!6101400 () Bool)

(assert (=> b!5062149 m!6101400))

(assert (=> b!5060767 m!6098500))

(declare-fun b!5062151 () Bool)

(declare-fun e!3159468 () Bool)

(declare-fun tp!1414111 () Bool)

(assert (=> b!5062151 (= e!3159468 (and tp_is_empty!37039 tp!1414111))))

(assert (=> b!5060779 (= tp!1414039 e!3159468)))

(assert (= (and b!5060779 ((_ is Cons!58428) (t!371255 (innerList!15646 (xs!18896 (left!42807 xs!286)))))) b!5062151))

(declare-fun b!5062152 () Bool)

(declare-fun e!3159469 () Bool)

(declare-fun tp!1414114 () Bool)

(declare-fun tp!1414113 () Bool)

(assert (=> b!5062152 (= e!3159469 (and (inv!77523 (left!42807 (left!42807 (right!43137 (right!43137 ys!41))))) tp!1414113 (inv!77523 (right!43137 (left!42807 (right!43137 (right!43137 ys!41))))) tp!1414114))))

(declare-fun b!5062154 () Bool)

(declare-fun e!3159470 () Bool)

(declare-fun tp!1414112 () Bool)

(assert (=> b!5062154 (= e!3159470 tp!1414112)))

(declare-fun b!5062153 () Bool)

(assert (=> b!5062153 (= e!3159469 (and (inv!77522 (xs!18896 (left!42807 (right!43137 (right!43137 ys!41))))) e!3159470))))

(assert (=> b!5060776 (= tp!1414037 (and (inv!77523 (left!42807 (right!43137 (right!43137 ys!41)))) e!3159469))))

(assert (= (and b!5060776 ((_ is Node!15558) (left!42807 (right!43137 (right!43137 ys!41))))) b!5062152))

(assert (= b!5062153 b!5062154))

(assert (= (and b!5060776 ((_ is Leaf!25842) (left!42807 (right!43137 (right!43137 ys!41))))) b!5062153))

(declare-fun m!6101402 () Bool)

(assert (=> b!5062152 m!6101402))

(declare-fun m!6101404 () Bool)

(assert (=> b!5062152 m!6101404))

(declare-fun m!6101406 () Bool)

(assert (=> b!5062153 m!6101406))

(assert (=> b!5060776 m!6098516))

(declare-fun tp!1414116 () Bool)

(declare-fun e!3159471 () Bool)

(declare-fun tp!1414117 () Bool)

(declare-fun b!5062155 () Bool)

(assert (=> b!5062155 (= e!3159471 (and (inv!77523 (left!42807 (right!43137 (right!43137 (right!43137 ys!41))))) tp!1414116 (inv!77523 (right!43137 (right!43137 (right!43137 (right!43137 ys!41))))) tp!1414117))))

(declare-fun b!5062157 () Bool)

(declare-fun e!3159472 () Bool)

(declare-fun tp!1414115 () Bool)

(assert (=> b!5062157 (= e!3159472 tp!1414115)))

(declare-fun b!5062156 () Bool)

(assert (=> b!5062156 (= e!3159471 (and (inv!77522 (xs!18896 (right!43137 (right!43137 (right!43137 ys!41))))) e!3159472))))

(assert (=> b!5060776 (= tp!1414038 (and (inv!77523 (right!43137 (right!43137 (right!43137 ys!41)))) e!3159471))))

(assert (= (and b!5060776 ((_ is Node!15558) (right!43137 (right!43137 (right!43137 ys!41))))) b!5062155))

(assert (= b!5062156 b!5062157))

(assert (= (and b!5060776 ((_ is Leaf!25842) (right!43137 (right!43137 (right!43137 ys!41))))) b!5062156))

(declare-fun m!6101408 () Bool)

(assert (=> b!5062155 m!6101408))

(declare-fun m!6101410 () Bool)

(assert (=> b!5062155 m!6101410))

(declare-fun m!6101412 () Bool)

(assert (=> b!5062156 m!6101412))

(assert (=> b!5060776 m!6098518))

(declare-fun b!5062158 () Bool)

(declare-fun e!3159473 () Bool)

(declare-fun tp!1414118 () Bool)

(assert (=> b!5062158 (= e!3159473 (and tp_is_empty!37039 tp!1414118))))

(assert (=> b!5060765 (= tp!1414025 e!3159473)))

(assert (= (and b!5060765 ((_ is Cons!58428) (t!371255 (t!371255 (innerList!15646 (xs!18896 ys!41)))))) b!5062158))

(declare-fun b!5062159 () Bool)

(declare-fun e!3159474 () Bool)

(declare-fun tp!1414119 () Bool)

(assert (=> b!5062159 (= e!3159474 (and tp_is_empty!37039 tp!1414119))))

(assert (=> b!5060778 (= tp!1414036 e!3159474)))

(assert (= (and b!5060778 ((_ is Cons!58428) (innerList!15646 (xs!18896 (right!43137 (right!43137 ys!41)))))) b!5062159))

(declare-fun b!5062160 () Bool)

(declare-fun e!3159475 () Bool)

(declare-fun tp!1414120 () Bool)

(assert (=> b!5062160 (= e!3159475 (and tp_is_empty!37039 tp!1414120))))

(assert (=> b!5060754 (= tp!1414012 e!3159475)))

(assert (= (and b!5060754 ((_ is Cons!58428) (innerList!15646 (xs!18896 (left!42807 (left!42807 xs!286)))))) b!5062160))

(declare-fun b!5062161 () Bool)

(declare-fun e!3159476 () Bool)

(declare-fun tp!1414121 () Bool)

(assert (=> b!5062161 (= e!3159476 (and tp_is_empty!37039 tp!1414121))))

(assert (=> b!5060760 (= tp!1414018 e!3159476)))

(assert (= (and b!5060760 ((_ is Cons!58428) (innerList!15646 (xs!18896 (left!42807 (left!42807 ys!41)))))) b!5062161))

(declare-fun tp!1414124 () Bool)

(declare-fun b!5062162 () Bool)

(declare-fun e!3159477 () Bool)

(declare-fun tp!1414123 () Bool)

(assert (=> b!5062162 (= e!3159477 (and (inv!77523 (left!42807 (left!42807 (left!42807 (left!42807 xs!286))))) tp!1414123 (inv!77523 (right!43137 (left!42807 (left!42807 (left!42807 xs!286))))) tp!1414124))))

(declare-fun b!5062164 () Bool)

(declare-fun e!3159478 () Bool)

(declare-fun tp!1414122 () Bool)

(assert (=> b!5062164 (= e!3159478 tp!1414122)))

(declare-fun b!5062163 () Bool)

(assert (=> b!5062163 (= e!3159477 (and (inv!77522 (xs!18896 (left!42807 (left!42807 (left!42807 xs!286))))) e!3159478))))

(assert (=> b!5060752 (= tp!1414013 (and (inv!77523 (left!42807 (left!42807 (left!42807 xs!286)))) e!3159477))))

(assert (= (and b!5060752 ((_ is Node!15558) (left!42807 (left!42807 (left!42807 xs!286))))) b!5062162))

(assert (= b!5062163 b!5062164))

(assert (= (and b!5060752 ((_ is Leaf!25842) (left!42807 (left!42807 (left!42807 xs!286))))) b!5062163))

(declare-fun m!6101414 () Bool)

(assert (=> b!5062162 m!6101414))

(declare-fun m!6101416 () Bool)

(assert (=> b!5062162 m!6101416))

(declare-fun m!6101418 () Bool)

(assert (=> b!5062163 m!6101418))

(assert (=> b!5060752 m!6098474))

(declare-fun e!3159479 () Bool)

(declare-fun tp!1414127 () Bool)

(declare-fun b!5062165 () Bool)

(declare-fun tp!1414126 () Bool)

(assert (=> b!5062165 (= e!3159479 (and (inv!77523 (left!42807 (right!43137 (left!42807 (left!42807 xs!286))))) tp!1414126 (inv!77523 (right!43137 (right!43137 (left!42807 (left!42807 xs!286))))) tp!1414127))))

(declare-fun b!5062167 () Bool)

(declare-fun e!3159480 () Bool)

(declare-fun tp!1414125 () Bool)

(assert (=> b!5062167 (= e!3159480 tp!1414125)))

(declare-fun b!5062166 () Bool)

(assert (=> b!5062166 (= e!3159479 (and (inv!77522 (xs!18896 (right!43137 (left!42807 (left!42807 xs!286))))) e!3159480))))

(assert (=> b!5060752 (= tp!1414014 (and (inv!77523 (right!43137 (left!42807 (left!42807 xs!286)))) e!3159479))))

(assert (= (and b!5060752 ((_ is Node!15558) (right!43137 (left!42807 (left!42807 xs!286))))) b!5062165))

(assert (= b!5062166 b!5062167))

(assert (= (and b!5060752 ((_ is Leaf!25842) (right!43137 (left!42807 (left!42807 xs!286))))) b!5062166))

(declare-fun m!6101420 () Bool)

(assert (=> b!5062165 m!6101420))

(declare-fun m!6101422 () Bool)

(assert (=> b!5062165 m!6101422))

(declare-fun m!6101424 () Bool)

(assert (=> b!5062166 m!6101424))

(assert (=> b!5060752 m!6098476))

(declare-fun b!5062168 () Bool)

(declare-fun e!3159481 () Bool)

(declare-fun tp!1414128 () Bool)

(assert (=> b!5062168 (= e!3159481 (and tp_is_empty!37039 tp!1414128))))

(assert (=> b!5060764 (= tp!1414024 e!3159481)))

(assert (= (and b!5060764 ((_ is Cons!58428) (t!371255 (innerList!15646 (xs!18896 (right!43137 ys!41)))))) b!5062168))

(declare-fun b!5062169 () Bool)

(declare-fun tp!1414131 () Bool)

(declare-fun e!3159482 () Bool)

(declare-fun tp!1414130 () Bool)

(assert (=> b!5062169 (= e!3159482 (and (inv!77523 (left!42807 (left!42807 (right!43137 (left!42807 ys!41))))) tp!1414130 (inv!77523 (right!43137 (left!42807 (right!43137 (left!42807 ys!41))))) tp!1414131))))

(declare-fun b!5062171 () Bool)

(declare-fun e!3159483 () Bool)

(declare-fun tp!1414129 () Bool)

(assert (=> b!5062171 (= e!3159483 tp!1414129)))

(declare-fun b!5062170 () Bool)

(assert (=> b!5062170 (= e!3159482 (and (inv!77522 (xs!18896 (left!42807 (right!43137 (left!42807 ys!41))))) e!3159483))))

(assert (=> b!5060761 (= tp!1414022 (and (inv!77523 (left!42807 (right!43137 (left!42807 ys!41)))) e!3159482))))

(assert (= (and b!5060761 ((_ is Node!15558) (left!42807 (right!43137 (left!42807 ys!41))))) b!5062169))

(assert (= b!5062170 b!5062171))

(assert (= (and b!5060761 ((_ is Leaf!25842) (left!42807 (right!43137 (left!42807 ys!41))))) b!5062170))

(declare-fun m!6101426 () Bool)

(assert (=> b!5062169 m!6101426))

(declare-fun m!6101428 () Bool)

(assert (=> b!5062169 m!6101428))

(declare-fun m!6101430 () Bool)

(assert (=> b!5062170 m!6101430))

(assert (=> b!5060761 m!6098492))

(declare-fun tp!1414133 () Bool)

(declare-fun tp!1414134 () Bool)

(declare-fun e!3159484 () Bool)

(declare-fun b!5062172 () Bool)

(assert (=> b!5062172 (= e!3159484 (and (inv!77523 (left!42807 (right!43137 (right!43137 (left!42807 ys!41))))) tp!1414133 (inv!77523 (right!43137 (right!43137 (right!43137 (left!42807 ys!41))))) tp!1414134))))

(declare-fun b!5062174 () Bool)

(declare-fun e!3159485 () Bool)

(declare-fun tp!1414132 () Bool)

(assert (=> b!5062174 (= e!3159485 tp!1414132)))

(declare-fun b!5062173 () Bool)

(assert (=> b!5062173 (= e!3159484 (and (inv!77522 (xs!18896 (right!43137 (right!43137 (left!42807 ys!41))))) e!3159485))))

(assert (=> b!5060761 (= tp!1414023 (and (inv!77523 (right!43137 (right!43137 (left!42807 ys!41)))) e!3159484))))

(assert (= (and b!5060761 ((_ is Node!15558) (right!43137 (right!43137 (left!42807 ys!41))))) b!5062172))

(assert (= b!5062173 b!5062174))

(assert (= (and b!5060761 ((_ is Leaf!25842) (right!43137 (right!43137 (left!42807 ys!41))))) b!5062173))

(declare-fun m!6101432 () Bool)

(assert (=> b!5062172 m!6101432))

(declare-fun m!6101434 () Bool)

(assert (=> b!5062172 m!6101434))

(declare-fun m!6101436 () Bool)

(assert (=> b!5062173 m!6101436))

(assert (=> b!5060761 m!6098494))

(declare-fun b!5062175 () Bool)

(declare-fun e!3159486 () Bool)

(declare-fun tp!1414135 () Bool)

(assert (=> b!5062175 (= e!3159486 (and tp_is_empty!37039 tp!1414135))))

(assert (=> b!5060775 (= tp!1414033 e!3159486)))

(assert (= (and b!5060775 ((_ is Cons!58428) (innerList!15646 (xs!18896 (left!42807 (right!43137 ys!41)))))) b!5062175))

(declare-fun tp!1414137 () Bool)

(declare-fun e!3159487 () Bool)

(declare-fun b!5062176 () Bool)

(declare-fun tp!1414138 () Bool)

(assert (=> b!5062176 (= e!3159487 (and (inv!77523 (left!42807 (left!42807 (left!42807 (left!42807 ys!41))))) tp!1414137 (inv!77523 (right!43137 (left!42807 (left!42807 (left!42807 ys!41))))) tp!1414138))))

(declare-fun b!5062178 () Bool)

(declare-fun e!3159488 () Bool)

(declare-fun tp!1414136 () Bool)

(assert (=> b!5062178 (= e!3159488 tp!1414136)))

(declare-fun b!5062177 () Bool)

(assert (=> b!5062177 (= e!3159487 (and (inv!77522 (xs!18896 (left!42807 (left!42807 (left!42807 ys!41))))) e!3159488))))

(assert (=> b!5060758 (= tp!1414019 (and (inv!77523 (left!42807 (left!42807 (left!42807 ys!41)))) e!3159487))))

(assert (= (and b!5060758 ((_ is Node!15558) (left!42807 (left!42807 (left!42807 ys!41))))) b!5062176))

(assert (= b!5062177 b!5062178))

(assert (= (and b!5060758 ((_ is Leaf!25842) (left!42807 (left!42807 (left!42807 ys!41))))) b!5062177))

(declare-fun m!6101438 () Bool)

(assert (=> b!5062176 m!6101438))

(declare-fun m!6101440 () Bool)

(assert (=> b!5062176 m!6101440))

(declare-fun m!6101442 () Bool)

(assert (=> b!5062177 m!6101442))

(assert (=> b!5060758 m!6098486))

(declare-fun tp!1414140 () Bool)

(declare-fun tp!1414141 () Bool)

(declare-fun e!3159489 () Bool)

(declare-fun b!5062179 () Bool)

(assert (=> b!5062179 (= e!3159489 (and (inv!77523 (left!42807 (right!43137 (left!42807 (left!42807 ys!41))))) tp!1414140 (inv!77523 (right!43137 (right!43137 (left!42807 (left!42807 ys!41))))) tp!1414141))))

(declare-fun b!5062181 () Bool)

(declare-fun e!3159490 () Bool)

(declare-fun tp!1414139 () Bool)

(assert (=> b!5062181 (= e!3159490 tp!1414139)))

(declare-fun b!5062180 () Bool)

(assert (=> b!5062180 (= e!3159489 (and (inv!77522 (xs!18896 (right!43137 (left!42807 (left!42807 ys!41))))) e!3159490))))

(assert (=> b!5060758 (= tp!1414020 (and (inv!77523 (right!43137 (left!42807 (left!42807 ys!41)))) e!3159489))))

(assert (= (and b!5060758 ((_ is Node!15558) (right!43137 (left!42807 (left!42807 ys!41))))) b!5062179))

(assert (= b!5062180 b!5062181))

(assert (= (and b!5060758 ((_ is Leaf!25842) (right!43137 (left!42807 (left!42807 ys!41))))) b!5062180))

(declare-fun m!6101444 () Bool)

(assert (=> b!5062179 m!6101444))

(declare-fun m!6101446 () Bool)

(assert (=> b!5062179 m!6101446))

(declare-fun m!6101448 () Bool)

(assert (=> b!5062180 m!6101448))

(assert (=> b!5060758 m!6098488))

(declare-fun b!5062182 () Bool)

(declare-fun e!3159491 () Bool)

(declare-fun tp!1414142 () Bool)

(assert (=> b!5062182 (= e!3159491 (and tp_is_empty!37039 tp!1414142))))

(assert (=> b!5060781 (= tp!1414041 e!3159491)))

(assert (= (and b!5060781 ((_ is Cons!58428) (t!371255 (innerList!15646 (xs!18896 (right!43137 xs!286)))))) b!5062182))

(declare-fun b!5062183 () Bool)

(declare-fun e!3159492 () Bool)

(declare-fun tp!1414143 () Bool)

(assert (=> b!5062183 (= e!3159492 (and tp_is_empty!37039 tp!1414143))))

(assert (=> b!5060772 (= tp!1414030 e!3159492)))

(assert (= (and b!5060772 ((_ is Cons!58428) (innerList!15646 (xs!18896 (right!43137 (right!43137 xs!286)))))) b!5062183))

(declare-fun b!5062184 () Bool)

(declare-fun e!3159493 () Bool)

(declare-fun tp!1414144 () Bool)

(assert (=> b!5062184 (= e!3159493 (and tp_is_empty!37039 tp!1414144))))

(assert (=> b!5060766 (= tp!1414026 e!3159493)))

(assert (= (and b!5060766 ((_ is Cons!58428) (t!371255 (t!371255 (innerList!15646 (xs!18896 xs!286)))))) b!5062184))

(declare-fun b!5062185 () Bool)

(declare-fun tp!1414147 () Bool)

(declare-fun tp!1414146 () Bool)

(declare-fun e!3159494 () Bool)

(assert (=> b!5062185 (= e!3159494 (and (inv!77523 (left!42807 (left!42807 (left!42807 (right!43137 ys!41))))) tp!1414146 (inv!77523 (right!43137 (left!42807 (left!42807 (right!43137 ys!41))))) tp!1414147))))

(declare-fun b!5062187 () Bool)

(declare-fun e!3159495 () Bool)

(declare-fun tp!1414145 () Bool)

(assert (=> b!5062187 (= e!3159495 tp!1414145)))

(declare-fun b!5062186 () Bool)

(assert (=> b!5062186 (= e!3159494 (and (inv!77522 (xs!18896 (left!42807 (left!42807 (right!43137 ys!41))))) e!3159495))))

(assert (=> b!5060773 (= tp!1414034 (and (inv!77523 (left!42807 (left!42807 (right!43137 ys!41)))) e!3159494))))

(assert (= (and b!5060773 ((_ is Node!15558) (left!42807 (left!42807 (right!43137 ys!41))))) b!5062185))

(assert (= b!5062186 b!5062187))

(assert (= (and b!5060773 ((_ is Leaf!25842) (left!42807 (left!42807 (right!43137 ys!41))))) b!5062186))

(declare-fun m!6101450 () Bool)

(assert (=> b!5062185 m!6101450))

(declare-fun m!6101452 () Bool)

(assert (=> b!5062185 m!6101452))

(declare-fun m!6101454 () Bool)

(assert (=> b!5062186 m!6101454))

(assert (=> b!5060773 m!6098510))

(declare-fun e!3159496 () Bool)

(declare-fun tp!1414150 () Bool)

(declare-fun tp!1414149 () Bool)

(declare-fun b!5062188 () Bool)

(assert (=> b!5062188 (= e!3159496 (and (inv!77523 (left!42807 (right!43137 (left!42807 (right!43137 ys!41))))) tp!1414149 (inv!77523 (right!43137 (right!43137 (left!42807 (right!43137 ys!41))))) tp!1414150))))

(declare-fun b!5062190 () Bool)

(declare-fun e!3159497 () Bool)

(declare-fun tp!1414148 () Bool)

(assert (=> b!5062190 (= e!3159497 tp!1414148)))

(declare-fun b!5062189 () Bool)

(assert (=> b!5062189 (= e!3159496 (and (inv!77522 (xs!18896 (right!43137 (left!42807 (right!43137 ys!41))))) e!3159497))))

(assert (=> b!5060773 (= tp!1414035 (and (inv!77523 (right!43137 (left!42807 (right!43137 ys!41)))) e!3159496))))

(assert (= (and b!5060773 ((_ is Node!15558) (right!43137 (left!42807 (right!43137 ys!41))))) b!5062188))

(assert (= b!5062189 b!5062190))

(assert (= (and b!5060773 ((_ is Leaf!25842) (right!43137 (left!42807 (right!43137 ys!41))))) b!5062189))

(declare-fun m!6101456 () Bool)

(assert (=> b!5062188 m!6101456))

(declare-fun m!6101458 () Bool)

(assert (=> b!5062188 m!6101458))

(declare-fun m!6101460 () Bool)

(assert (=> b!5062189 m!6101460))

(assert (=> b!5060773 m!6098512))

(declare-fun b!5062191 () Bool)

(declare-fun e!3159498 () Bool)

(declare-fun tp!1414151 () Bool)

(assert (=> b!5062191 (= e!3159498 (and tp_is_empty!37039 tp!1414151))))

(assert (=> b!5060780 (= tp!1414040 e!3159498)))

(assert (= (and b!5060780 ((_ is Cons!58428) (t!371255 (innerList!15646 (xs!18896 (left!42807 ys!41)))))) b!5062191))

(declare-fun b!5062192 () Bool)

(declare-fun tp!1414153 () Bool)

(declare-fun e!3159499 () Bool)

(declare-fun tp!1414154 () Bool)

(assert (=> b!5062192 (= e!3159499 (and (inv!77523 (left!42807 (left!42807 (right!43137 (left!42807 xs!286))))) tp!1414153 (inv!77523 (right!43137 (left!42807 (right!43137 (left!42807 xs!286))))) tp!1414154))))

(declare-fun b!5062194 () Bool)

(declare-fun e!3159500 () Bool)

(declare-fun tp!1414152 () Bool)

(assert (=> b!5062194 (= e!3159500 tp!1414152)))

(declare-fun b!5062193 () Bool)

(assert (=> b!5062193 (= e!3159499 (and (inv!77522 (xs!18896 (left!42807 (right!43137 (left!42807 xs!286))))) e!3159500))))

(assert (=> b!5060755 (= tp!1414016 (and (inv!77523 (left!42807 (right!43137 (left!42807 xs!286)))) e!3159499))))

(assert (= (and b!5060755 ((_ is Node!15558) (left!42807 (right!43137 (left!42807 xs!286))))) b!5062192))

(assert (= b!5062193 b!5062194))

(assert (= (and b!5060755 ((_ is Leaf!25842) (left!42807 (right!43137 (left!42807 xs!286))))) b!5062193))

(declare-fun m!6101462 () Bool)

(assert (=> b!5062192 m!6101462))

(declare-fun m!6101464 () Bool)

(assert (=> b!5062192 m!6101464))

(declare-fun m!6101466 () Bool)

(assert (=> b!5062193 m!6101466))

(assert (=> b!5060755 m!6098480))

(declare-fun e!3159501 () Bool)

(declare-fun b!5062195 () Bool)

(declare-fun tp!1414157 () Bool)

(declare-fun tp!1414156 () Bool)

(assert (=> b!5062195 (= e!3159501 (and (inv!77523 (left!42807 (right!43137 (right!43137 (left!42807 xs!286))))) tp!1414156 (inv!77523 (right!43137 (right!43137 (right!43137 (left!42807 xs!286))))) tp!1414157))))

(declare-fun b!5062197 () Bool)

(declare-fun e!3159502 () Bool)

(declare-fun tp!1414155 () Bool)

(assert (=> b!5062197 (= e!3159502 tp!1414155)))

(declare-fun b!5062196 () Bool)

(assert (=> b!5062196 (= e!3159501 (and (inv!77522 (xs!18896 (right!43137 (right!43137 (left!42807 xs!286))))) e!3159502))))

(assert (=> b!5060755 (= tp!1414017 (and (inv!77523 (right!43137 (right!43137 (left!42807 xs!286)))) e!3159501))))

(assert (= (and b!5060755 ((_ is Node!15558) (right!43137 (right!43137 (left!42807 xs!286))))) b!5062195))

(assert (= b!5062196 b!5062197))

(assert (= (and b!5060755 ((_ is Leaf!25842) (right!43137 (right!43137 (left!42807 xs!286))))) b!5062196))

(declare-fun m!6101468 () Bool)

(assert (=> b!5062195 m!6101468))

(declare-fun m!6101470 () Bool)

(assert (=> b!5062195 m!6101470))

(declare-fun m!6101472 () Bool)

(assert (=> b!5062196 m!6101472))

(assert (=> b!5060755 m!6098482))

(declare-fun b!5062198 () Bool)

(declare-fun e!3159503 () Bool)

(declare-fun tp!1414158 () Bool)

(assert (=> b!5062198 (= e!3159503 (and tp_is_empty!37039 tp!1414158))))

(assert (=> b!5060769 (= tp!1414027 e!3159503)))

(assert (= (and b!5060769 ((_ is Cons!58428) (innerList!15646 (xs!18896 (left!42807 (right!43137 xs!286)))))) b!5062198))

(declare-fun b!5062199 () Bool)

(declare-fun e!3159504 () Bool)

(declare-fun tp!1414159 () Bool)

(assert (=> b!5062199 (= e!3159504 (and tp_is_empty!37039 tp!1414159))))

(assert (=> b!5060757 (= tp!1414015 e!3159504)))

(assert (= (and b!5060757 ((_ is Cons!58428) (innerList!15646 (xs!18896 (right!43137 (left!42807 xs!286)))))) b!5062199))

(declare-fun tp!1414162 () Bool)

(declare-fun tp!1414161 () Bool)

(declare-fun b!5062200 () Bool)

(declare-fun e!3159505 () Bool)

(assert (=> b!5062200 (= e!3159505 (and (inv!77523 (left!42807 (left!42807 (right!43137 (right!43137 xs!286))))) tp!1414161 (inv!77523 (right!43137 (left!42807 (right!43137 (right!43137 xs!286))))) tp!1414162))))

(declare-fun b!5062202 () Bool)

(declare-fun e!3159506 () Bool)

(declare-fun tp!1414160 () Bool)

(assert (=> b!5062202 (= e!3159506 tp!1414160)))

(declare-fun b!5062201 () Bool)

(assert (=> b!5062201 (= e!3159505 (and (inv!77522 (xs!18896 (left!42807 (right!43137 (right!43137 xs!286))))) e!3159506))))

(assert (=> b!5060770 (= tp!1414031 (and (inv!77523 (left!42807 (right!43137 (right!43137 xs!286)))) e!3159505))))

(assert (= (and b!5060770 ((_ is Node!15558) (left!42807 (right!43137 (right!43137 xs!286))))) b!5062200))

(assert (= b!5062201 b!5062202))

(assert (= (and b!5060770 ((_ is Leaf!25842) (left!42807 (right!43137 (right!43137 xs!286))))) b!5062201))

(declare-fun m!6101474 () Bool)

(assert (=> b!5062200 m!6101474))

(declare-fun m!6101476 () Bool)

(assert (=> b!5062200 m!6101476))

(declare-fun m!6101478 () Bool)

(assert (=> b!5062201 m!6101478))

(assert (=> b!5060770 m!6098504))

(declare-fun tp!1414164 () Bool)

(declare-fun e!3159507 () Bool)

(declare-fun b!5062203 () Bool)

(declare-fun tp!1414165 () Bool)

(assert (=> b!5062203 (= e!3159507 (and (inv!77523 (left!42807 (right!43137 (right!43137 (right!43137 xs!286))))) tp!1414164 (inv!77523 (right!43137 (right!43137 (right!43137 (right!43137 xs!286))))) tp!1414165))))

(declare-fun b!5062205 () Bool)

(declare-fun e!3159508 () Bool)

(declare-fun tp!1414163 () Bool)

(assert (=> b!5062205 (= e!3159508 tp!1414163)))

(declare-fun b!5062204 () Bool)

(assert (=> b!5062204 (= e!3159507 (and (inv!77522 (xs!18896 (right!43137 (right!43137 (right!43137 xs!286))))) e!3159508))))

(assert (=> b!5060770 (= tp!1414032 (and (inv!77523 (right!43137 (right!43137 (right!43137 xs!286)))) e!3159507))))

(assert (= (and b!5060770 ((_ is Node!15558) (right!43137 (right!43137 (right!43137 xs!286))))) b!5062203))

(assert (= b!5062204 b!5062205))

(assert (= (and b!5060770 ((_ is Leaf!25842) (right!43137 (right!43137 (right!43137 xs!286))))) b!5062204))

(declare-fun m!6101480 () Bool)

(assert (=> b!5062203 m!6101480))

(declare-fun m!6101482 () Bool)

(assert (=> b!5062203 m!6101482))

(declare-fun m!6101484 () Bool)

(assert (=> b!5062204 m!6101484))

(assert (=> b!5060770 m!6098506))

(check-sat (not b!5062150) (not d!1630568) (not b!5061906) (not b!5061588) (not b!5061827) (not b!5061813) (not b!5062050) (not b!5062151) (not b!5061870) (not d!1630512) (not b!5061801) (not d!1630862) (not b!5061551) (not b!5061771) (not d!1630754) (not b!5061518) (not b!5062120) (not b!5061974) (not b!5062115) (not b!5061779) (not bm!352545) (not d!1630642) (not b!5061773) (not b!5062177) (not b!5062203) (not bm!352573) (not b!5061939) (not b!5062099) (not b!5061723) (not b!5062196) (not b!5062194) (not b!5061574) (not b!5062084) (not b!5061866) (not b!5061933) (not b!5061874) (not d!1630810) (not d!1630928) (not b!5061503) (not b!5061558) (not b!5062093) (not b!5062059) (not b!5062067) (not b!5061630) (not bm!352543) (not b!5062200) (not b!5061536) (not b!5062192) (not bm!352578) (not b!5061727) (not b!5061888) (not bm!352552) (not b!5061877) (not b!5061849) (not b!5061526) (not d!1630906) (not b!5061917) (not d!1630764) (not b!5062132) (not b!5061555) (not b!5061805) (not b!5061686) (not b!5062205) (not b!5062180) (not b!5061650) (not b!5061873) (not b!5061977) (not b!5062119) (not bm!352550) (not b!5062106) (not b!5061521) (not b!5061826) (not b!5062158) (not bm!352564) (not b!5061515) (not b!5061947) (not b!5061695) (not b!5061978) (not b!5061671) (not d!1630682) (not b!5061828) (not bm!352549) (not b!5061599) (not b!5061679) (not d!1630546) (not b!5061983) (not b!5061781) (not d!1630714) (not b!5061685) (not d!1630442) (not bm!352581) (not bm!352559) (not b!5060755) (not b!5061495) (not b!5061884) (not bm!352551) (not d!1630576) (not b!5062149) (not d!1630520) (not b!5061980) (not b!5062079) (not b!5061668) (not b!5061879) (not d!1630942) (not b!5061995) (not b!5062174) (not b!5061765) (not b!5061557) (not b!5062183) (not b!5062032) (not b!5061608) (not b!5061868) (not b!5061731) (not d!1630888) (not d!1630492) (not bm!352572) (not b!5061516) (not b!5061626) (not b!5061875) (not b!5062033) (not d!1630832) (not d!1630712) (not d!1630912) (not b!5062147) (not b!5061546) (not b!5061591) (not b!5061988) (not b!5061539) (not b!5061794) (not b!5062156) (not b!5061821) (not b!5061943) (not b!5061777) (not b!5061791) (not b!5061660) (not b!5061655) (not b!5062157) (not b!5061683) (not b!5061609) (not bm!352542) (not b!5061542) (not b!5061584) (not b!5061970) (not b!5062161) (not b!5061880) (not b!5062141) (not b!5061714) (not b!5061661) (not d!1630940) (not bm!352532) (not b!5062185) (not b!5062193) (not b!5061610) (not b!5062011) (not d!1630700) (not b!5061603) (not b!5061552) (not b!5062088) (not b!5061973) (not b!5061981) (not b!5061909) (not b!5061925) (not b!5061560) (not b!5062098) (not b!5061605) (not b!5061519) (not d!1630550) (not b!5061538) (not b!5061840) (not d!1630740) (not b!5062136) (not b!5061754) (not b!5061637) (not b!5061705) (not b!5061590) (not b!5061706) (not d!1630794) (not b!5061721) (not b!5061499) (not bm!352570) (not b!5061857) (not b!5061735) (not bm!352527) (not b!5061673) (not bm!352547) (not b!5062162) (not b!5061651) (not b!5062135) (not d!1630882) (not b!5062202) (not b!5061908) (not b!5062199) (not b!5061900) (not b!5061936) (not d!1630628) (not b!5062058) (not b!5061739) (not b!5062054) (not b!5061811) (not bm!352583) (not b!5061992) (not bm!352540) (not b!5062186) (not bm!352575) (not b!5061740) (not b!5062146) (not b!5061513) (not b!5061788) (not b!5062152) (not d!1630540) (not b!5061642) (not b!5062154) (not b!5061803) (not b!5062189) (not b!5061645) (not d!1630616) (not b!5060773) (not b!5062182) (not d!1630608) (not b!5062165) (not b!5062076) (not b!5062060) (not b!5062031) (not d!1630652) (not bm!352526) (not d!1630586) (not b!5061913) (not b!5062187) (not b!5062005) (not b!5061665) (not d!1630726) (not b!5062145) (not b!5061597) (not b!5062129) (not b!5061549) (not d!1630876) (not b!5062021) (not b!5060752) (not b!5062102) (not b!5061622) (not b!5061761) (not b!5061611) (not b!5061618) (not b!5061952) (not d!1630736) (not b!5061975) (not d!1630598) (not b!5061577) (not bm!352571) (not d!1630746) (not d!1630536) (not b!5061820) (not b!5062092) (not b!5062164) (not b!5061569) (not b!5061669) (not b!5062144) (not b!5062201) (not d!1630482) (not b!5061894) (not b!5062139) (not b!5061554) (not b!5061976) (not b!5061699) (not d!1630834) (not b!5061991) (not bm!352536) (not b!5061531) (not b!5062097) (not b!5061990) (not b!5061774) (not b!5061563) (not d!1630890) (not b!5061587) (not d!1630762) (not bm!352577) (not b!5061807) (not b!5061496) (not b!5062133) (not b!5061616) (not d!1630858) (not b!5062044) (not bm!352548) (not b!5061633) (not d!1630870) (not b!5062070) (not bm!352544) (not b!5061576) (not b!5061891) (not d!1630478) (not d!1630636) (not b!5061782) (not b!5061959) (not b!5061972) (not d!1630900) (not bm!352561) (not b!5061836) (not d!1630782) (not b!5062064) (not b!5061856) (not b!5061769) (not b!5061930) (not b!5061921) (not d!1630614) (not d!1630394) (not b!5062112) (not bm!352539) (not bm!352574) (not b!5061948) (not b!5062101) (not b!5061863) (not b!5061534) (not b!5061638) (not b!5061759) (not b!5061614) (not b!5061743) (not b!5061844) (not bm!352534) (not d!1630800) (not b!5062153) (not b!5061696) (not b!5061792) (not b!5062111) (not b!5061867) (not b!5061709) (not b!5062008) (not b!5061885) (not b!5061700) (not b!5062105) (not d!1630850) (not b!5062178) (not b!5061872) (not b!5062160) (not b!5062175) (not bm!352528) (not b!5061889) (not b!5061835) (not b!5061631) (not b!5061508) (not bm!352535) (not b!5062170) (not d!1630904) (not b!5062197) (not d!1630548) (not b!5061825) (not d!1630920) (not d!1630596) (not b!5062155) (not b!5061912) (not d!1630544) (not d!1630472) (not b!5061724) (not d!1630924) (not b!5061717) (not d!1630526) (not b!5061758) (not b!5061890) (not d!1630824) (not b!5061987) (not b!5061903) (not d!1630680) (not b!5062163) (not b!5061961) (not b!5061938) (not b!5062085) (not b!5061997) (not bm!352579) (not b!5061829) (not b!5061967) (not bm!352546) (not b!5061746) (not b!5062166) (not b!5061517) (not b!5061817) (not bm!352576) (not b!5061775) (not d!1630780) (not b!5061823) (not b!5062204) (not bm!352529) (not d!1630534) (not b!5060776) (not b!5061937) (not b!5062191) (not b!5061994) (not b!5061778) (not b!5062062) (not b!5061946) (not b!5060758) (not b!5061861) (not bm!352531) (not b!5061500) (not b!5062116) (not b!5061950) (not b!5062047) (not bm!352537) (not b!5061966) (not b!5061583) (not b!5061612) (not b!5061763) (not b!5061666) (not b!5061690) (not b!5062195) (not d!1630932) (not b!5062198) (not b!5061795) (not b!5061971) (not b!5061918) (not b!5061924) (not b!5062003) (not b!5061955) (not b!5062172) (not b!5061749) (not b!5061871) (not b!5061634) (not b!5061892) (not b!5062188) (not d!1630898) (not b!5061797) (not b!5061595) (not b!5062002) (not d!1630506) (not d!1630938) (not b!5061830) (not d!1630494) (not b!5061941) (not b!5061575) (not b!5062184) (not bm!352556) (not bm!352580) (not bm!352582) (not b!5061594) (not b!5061522) (not b!5062009) (not b!5061601) (not b!5061822) (not b!5062169) (not d!1630392) (not b!5061729) (not b!5061664) (not b!5061564) (not b!5061505) (not b!5061744) (not b!5061621) (not b!5061593) (not b!5062063) (not b!5061512) (not b!5062000) (not b!5061785) (not b!5061548) (not bm!352554) (not b!5061544) (not bm!352533) (not d!1630796) (not b!5062109) (not b!5062020) (not b!5061897) (not bm!352555) (not d!1630588) (not b!5062143) (not b!5062176) (not b!5061984) (not b!5061711) (not b!5061944) (not b!5061570) (not b!5061613) (not b!5062103) (not b!5061833) (not b!5062016) (not b!5061703) (not b!5061580) (not b!5061767) (not d!1630606) (not b!5061851) (not b!5061562) (not b!5062096) (not d!1630934) (not b!5061869) (not d!1630686) (not b!5062190) (not b!5062066) (not b!5061864) (not b!5061677) (not b!5062046) (not d!1630922) (not bm!352525) (not b!5061510) (not d!1630654) (not d!1630822) (not bm!352530) (not b!5062073) (not b!5061922) (not b!5061641) (not b!5062028) (not b!5061929) (not b!5061734) (not d!1630600) (not b!5062052) (not b!5062080) (not b!5061899) (not d!1630774) (not d!1630884) (not d!1630948) (not b!5061694) (not bm!352538) (not b!5060767) (not b!5061750) (not b!5061776) (not b!5062173) (not b!5061942) (not b!5062100) (not d!1630908) (not b!5061904) (not d!1630446) tp_is_empty!37039 (not b!5061962) (not b!5061831) (not d!1630508) (not b!5061993) (not b!5062040) (not b!5061567) (not b!5061819) (not b!5061934) (not b!5062171) (not b!5061528) (not b!5061681) (not b!5061713) (not b!5061719) (not b!5062124) (not b!5062128) (not b!5061592) (not bm!352553) (not d!1630518) (not b!5062071) (not b!5061675) (not b!5062168) (not b!5061524) (not bm!352541) (not b!5061579) (not b!5061653) (not b!5061572) (not b!5061876) (not b!5062167) (not b!5062087) (not b!5061656) (not b!5061945) (not b!5062179) (not d!1630896) (not d!1630480) (not d!1630634) (not b!5061940) (not b!5061860) (not d!1630770) (not d!1630752) (not b!5061841) (not b!5061814) (not b!5061818) (not b!5061530) (not b!5062039) (not d!1630902) (not b!5061691) (not b!5062017) (not b!5061755) (not bm!352568) (not d!1630552) (not b!5061902) (not d!1630404) (not b!5062012) (not b!5061852) (not b!5061895) (not b!5062123) (not b!5061848) (not b!5061957) (not d!1630856) (not b!5061646) (not d!1630558) (not b!5062055) (not b!5061998) (not d!1630802) (not d!1630698) (not b!5062159) (not b!5061514) (not b!5062061) (not d!1630842) (not b!5062181) (not bm!352584) (not b!5061648) (not b!5061573) (not b!5061568) (not b!5061787) (not b!5061845) (not b!5061627) (not b!5062148) (not b!5060761) (not b!5060770) (not b!5061901) (not b!5061893) (not d!1630428))
(check-sat)
