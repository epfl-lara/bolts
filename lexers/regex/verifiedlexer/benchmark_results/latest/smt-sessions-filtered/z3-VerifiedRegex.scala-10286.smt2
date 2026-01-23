; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535090 () Bool)

(assert start!535090)

(declare-fun b!5065934 () Bool)

(declare-fun e!3161462 () Bool)

(declare-datatypes ((T!105118 0))(
  ( (T!105119 (val!23648 Int)) )
))
(declare-datatypes ((List!58558 0))(
  ( (Nil!58434) (Cons!58434 (h!64882 T!105118) (t!371291 List!58558)) )
))
(declare-datatypes ((IArray!31189 0))(
  ( (IArray!31190 (innerList!15652 List!58558)) )
))
(declare-datatypes ((Conc!15564 0))(
  ( (Node!15564 (left!42816 Conc!15564) (right!43146 Conc!15564) (csize!31358 Int) (cheight!15775 Int)) (Leaf!25851 (xs!18914 IArray!31189) (csize!31359 Int)) (Empty!15564) )
))
(declare-fun xs!286 () Conc!15564)

(declare-fun e!3161470 () Bool)

(declare-fun inv!77555 (IArray!31189) Bool)

(assert (=> b!5065934 (= e!3161462 (and (inv!77555 (xs!18914 xs!286)) e!3161470))))

(declare-fun b!5065935 () Bool)

(declare-fun tp!1414727 () Bool)

(declare-fun tp!1414725 () Bool)

(declare-fun inv!77556 (Conc!15564) Bool)

(assert (=> b!5065935 (= e!3161462 (and (inv!77556 (left!42816 xs!286)) tp!1414725 (inv!77556 (right!43146 xs!286)) tp!1414727))))

(declare-fun b!5065936 () Bool)

(declare-fun e!3161467 () Bool)

(declare-fun e!3161464 () Bool)

(assert (=> b!5065936 (= e!3161467 e!3161464)))

(declare-fun res!2156997 () Bool)

(assert (=> b!5065936 (=> res!2156997 e!3161464)))

(declare-fun lt!2088867 () Int)

(declare-fun lt!2088871 () Int)

(assert (=> b!5065936 (= res!2156997 (or (> lt!2088867 (+ 1 lt!2088871)) (< lt!2088867 lt!2088871)))))

(declare-fun lt!2088868 () Conc!15564)

(declare-fun height!2141 (Conc!15564) Int)

(assert (=> b!5065936 (= lt!2088867 (height!2141 lt!2088868))))

(declare-fun lt!2088869 () Int)

(declare-fun lt!2088866 () Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5065936 (= lt!2088871 (max!0 lt!2088869 lt!2088866))))

(declare-fun b!5065937 () Bool)

(declare-fun e!3161469 () Bool)

(assert (=> b!5065937 (= e!3161469 e!3161467)))

(declare-fun res!2156996 () Bool)

(assert (=> b!5065937 (=> res!2156996 e!3161467)))

(declare-fun ys!41 () Conc!15564)

(declare-fun appendAssocInst!910 (Conc!15564 Conc!15564) Bool)

(assert (=> b!5065937 (= res!2156996 (not (appendAssocInst!910 xs!286 ys!41)))))

(declare-fun lt!2088865 () Conc!15564)

(declare-fun <>!396 (Conc!15564 Conc!15564) Conc!15564)

(assert (=> b!5065937 (= lt!2088868 (<>!396 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))) lt!2088865))))

(declare-fun b!5065938 () Bool)

(declare-fun e!3161468 () Bool)

(declare-fun e!3161465 () Bool)

(assert (=> b!5065938 (= e!3161468 (and (inv!77555 (xs!18914 ys!41)) e!3161465))))

(declare-fun b!5065939 () Bool)

(declare-fun tp!1414726 () Bool)

(assert (=> b!5065939 (= e!3161470 tp!1414726)))

(declare-fun b!5065940 () Bool)

(declare-fun e!3161466 () Bool)

(assert (=> b!5065940 (= e!3161466 e!3161469)))

(declare-fun res!2157000 () Bool)

(assert (=> b!5065940 (=> (not res!2157000) (not e!3161469))))

(assert (=> b!5065940 (= res!2157000 (not (= (height!2141 lt!2088865) (- lt!2088869 3))))))

(declare-fun ++!12788 (Conc!15564 Conc!15564) Conc!15564)

(assert (=> b!5065940 (= lt!2088865 (++!12788 (right!43146 (right!43146 xs!286)) ys!41))))

(declare-fun b!5065941 () Bool)

(declare-fun tp!1414724 () Bool)

(assert (=> b!5065941 (= e!3161465 tp!1414724)))

(declare-fun b!5065942 () Bool)

(declare-fun tp!1414728 () Bool)

(declare-fun tp!1414729 () Bool)

(assert (=> b!5065942 (= e!3161468 (and (inv!77556 (left!42816 ys!41)) tp!1414728 (inv!77556 (right!43146 ys!41)) tp!1414729))))

(declare-fun b!5065943 () Bool)

(declare-fun res!2157001 () Bool)

(declare-fun e!3161463 () Bool)

(assert (=> b!5065943 (=> (not res!2157001) (not e!3161463))))

(declare-fun isBalanced!4426 (Conc!15564) Bool)

(assert (=> b!5065943 (= res!2157001 (isBalanced!4426 ys!41))))

(declare-fun res!2156992 () Bool)

(assert (=> start!535090 (=> (not res!2156992) (not e!3161463))))

(assert (=> start!535090 (= res!2156992 (isBalanced!4426 xs!286))))

(assert (=> start!535090 e!3161463))

(assert (=> start!535090 (and (inv!77556 xs!286) e!3161462)))

(assert (=> start!535090 (and (inv!77556 ys!41) e!3161468)))

(declare-fun b!5065944 () Bool)

(declare-fun res!2156994 () Bool)

(assert (=> b!5065944 (=> res!2156994 e!3161467)))

(assert (=> b!5065944 (= res!2156994 (not (isBalanced!4426 lt!2088868)))))

(declare-fun b!5065945 () Bool)

(declare-fun res!2156995 () Bool)

(assert (=> b!5065945 (=> (not res!2156995) (not e!3161466))))

(assert (=> b!5065945 (= res!2156995 (< (height!2141 (left!42816 xs!286)) (height!2141 (right!43146 xs!286))))))

(declare-fun b!5065946 () Bool)

(assert (=> b!5065946 (= e!3161463 e!3161466)))

(declare-fun res!2156998 () Bool)

(assert (=> b!5065946 (=> (not res!2156998) (not e!3161466))))

(declare-fun lt!2088870 () Int)

(get-info :version)

(assert (=> b!5065946 (= res!2156998 (and (or (> (- 1) lt!2088870) (> lt!2088870 1)) (< lt!2088870 (- 1)) ((_ is Node!15564) xs!286)))))

(assert (=> b!5065946 (= lt!2088870 (- lt!2088866 lt!2088869))))

(assert (=> b!5065946 (= lt!2088869 (height!2141 xs!286))))

(assert (=> b!5065946 (= lt!2088866 (height!2141 ys!41))))

(declare-fun b!5065947 () Bool)

(declare-fun res!2156993 () Bool)

(assert (=> b!5065947 (=> (not res!2156993) (not e!3161466))))

(assert (=> b!5065947 (= res!2156993 ((_ is Node!15564) (right!43146 xs!286)))))

(declare-fun b!5065948 () Bool)

(declare-fun list!18989 (Conc!15564) List!58558)

(declare-fun ++!12789 (List!58558 List!58558) List!58558)

(assert (=> b!5065948 (= e!3161464 (not (= (list!18989 lt!2088868) (++!12789 (list!18989 xs!286) (list!18989 ys!41)))))))

(declare-fun b!5065949 () Bool)

(declare-fun res!2156999 () Bool)

(assert (=> b!5065949 (=> (not res!2156999) (not e!3161463))))

(assert (=> b!5065949 (= res!2156999 (and (not (= xs!286 Empty!15564)) (not (= ys!41 Empty!15564))))))

(assert (= (and start!535090 res!2156992) b!5065943))

(assert (= (and b!5065943 res!2157001) b!5065949))

(assert (= (and b!5065949 res!2156999) b!5065946))

(assert (= (and b!5065946 res!2156998) b!5065945))

(assert (= (and b!5065945 res!2156995) b!5065947))

(assert (= (and b!5065947 res!2156993) b!5065940))

(assert (= (and b!5065940 res!2157000) b!5065937))

(assert (= (and b!5065937 (not res!2156996)) b!5065944))

(assert (= (and b!5065944 (not res!2156994)) b!5065936))

(assert (= (and b!5065936 (not res!2156997)) b!5065948))

(assert (= (and start!535090 ((_ is Node!15564) xs!286)) b!5065935))

(assert (= b!5065934 b!5065939))

(assert (= (and start!535090 ((_ is Leaf!25851) xs!286)) b!5065934))

(assert (= (and start!535090 ((_ is Node!15564) ys!41)) b!5065942))

(assert (= b!5065938 b!5065941))

(assert (= (and start!535090 ((_ is Leaf!25851) ys!41)) b!5065938))

(declare-fun m!6107970 () Bool)

(assert (=> b!5065948 m!6107970))

(declare-fun m!6107972 () Bool)

(assert (=> b!5065948 m!6107972))

(declare-fun m!6107974 () Bool)

(assert (=> b!5065948 m!6107974))

(assert (=> b!5065948 m!6107972))

(assert (=> b!5065948 m!6107974))

(declare-fun m!6107976 () Bool)

(assert (=> b!5065948 m!6107976))

(declare-fun m!6107978 () Bool)

(assert (=> b!5065943 m!6107978))

(declare-fun m!6107980 () Bool)

(assert (=> b!5065936 m!6107980))

(declare-fun m!6107982 () Bool)

(assert (=> b!5065936 m!6107982))

(declare-fun m!6107984 () Bool)

(assert (=> b!5065942 m!6107984))

(declare-fun m!6107986 () Bool)

(assert (=> b!5065942 m!6107986))

(declare-fun m!6107988 () Bool)

(assert (=> b!5065937 m!6107988))

(declare-fun m!6107990 () Bool)

(assert (=> b!5065937 m!6107990))

(assert (=> b!5065937 m!6107990))

(declare-fun m!6107992 () Bool)

(assert (=> b!5065937 m!6107992))

(declare-fun m!6107994 () Bool)

(assert (=> b!5065934 m!6107994))

(declare-fun m!6107996 () Bool)

(assert (=> b!5065938 m!6107996))

(declare-fun m!6107998 () Bool)

(assert (=> b!5065935 m!6107998))

(declare-fun m!6108000 () Bool)

(assert (=> b!5065935 m!6108000))

(declare-fun m!6108002 () Bool)

(assert (=> b!5065945 m!6108002))

(declare-fun m!6108004 () Bool)

(assert (=> b!5065945 m!6108004))

(declare-fun m!6108006 () Bool)

(assert (=> b!5065944 m!6108006))

(declare-fun m!6108008 () Bool)

(assert (=> b!5065940 m!6108008))

(declare-fun m!6108010 () Bool)

(assert (=> b!5065940 m!6108010))

(declare-fun m!6108012 () Bool)

(assert (=> start!535090 m!6108012))

(declare-fun m!6108014 () Bool)

(assert (=> start!535090 m!6108014))

(declare-fun m!6108016 () Bool)

(assert (=> start!535090 m!6108016))

(declare-fun m!6108018 () Bool)

(assert (=> b!5065946 m!6108018))

(declare-fun m!6108020 () Bool)

(assert (=> b!5065946 m!6108020))

(check-sat (not b!5065948) (not start!535090) (not b!5065935) (not b!5065942) (not b!5065941) (not b!5065934) (not b!5065944) (not b!5065945) (not b!5065937) (not b!5065938) (not b!5065936) (not b!5065943) (not b!5065946) (not b!5065939) (not b!5065940))
(check-sat)
(get-model)

(declare-fun b!5065962 () Bool)

(declare-fun res!2157016 () Bool)

(declare-fun e!3161476 () Bool)

(assert (=> b!5065962 (=> (not res!2157016) (not e!3161476))))

(assert (=> b!5065962 (= res!2157016 (isBalanced!4426 (left!42816 lt!2088868)))))

(declare-fun b!5065963 () Bool)

(declare-fun e!3161475 () Bool)

(assert (=> b!5065963 (= e!3161475 e!3161476)))

(declare-fun res!2157019 () Bool)

(assert (=> b!5065963 (=> (not res!2157019) (not e!3161476))))

(assert (=> b!5065963 (= res!2157019 (<= (- 1) (- (height!2141 (left!42816 lt!2088868)) (height!2141 (right!43146 lt!2088868)))))))

(declare-fun b!5065964 () Bool)

(declare-fun res!2157014 () Bool)

(assert (=> b!5065964 (=> (not res!2157014) (not e!3161476))))

(declare-fun isEmpty!31631 (Conc!15564) Bool)

(assert (=> b!5065964 (= res!2157014 (not (isEmpty!31631 (left!42816 lt!2088868))))))

(declare-fun b!5065966 () Bool)

(declare-fun res!2157018 () Bool)

(assert (=> b!5065966 (=> (not res!2157018) (not e!3161476))))

(assert (=> b!5065966 (= res!2157018 (<= (- (height!2141 (left!42816 lt!2088868)) (height!2141 (right!43146 lt!2088868))) 1))))

(declare-fun b!5065967 () Bool)

(assert (=> b!5065967 (= e!3161476 (not (isEmpty!31631 (right!43146 lt!2088868))))))

(declare-fun b!5065965 () Bool)

(declare-fun res!2157015 () Bool)

(assert (=> b!5065965 (=> (not res!2157015) (not e!3161476))))

(assert (=> b!5065965 (= res!2157015 (isBalanced!4426 (right!43146 lt!2088868)))))

(declare-fun d!1633307 () Bool)

(declare-fun res!2157017 () Bool)

(assert (=> d!1633307 (=> res!2157017 e!3161475)))

(assert (=> d!1633307 (= res!2157017 (not ((_ is Node!15564) lt!2088868)))))

(assert (=> d!1633307 (= (isBalanced!4426 lt!2088868) e!3161475)))

(assert (= (and d!1633307 (not res!2157017)) b!5065963))

(assert (= (and b!5065963 res!2157019) b!5065966))

(assert (= (and b!5065966 res!2157018) b!5065962))

(assert (= (and b!5065962 res!2157016) b!5065965))

(assert (= (and b!5065965 res!2157015) b!5065964))

(assert (= (and b!5065964 res!2157014) b!5065967))

(declare-fun m!6108022 () Bool)

(assert (=> b!5065964 m!6108022))

(declare-fun m!6108024 () Bool)

(assert (=> b!5065962 m!6108024))

(declare-fun m!6108026 () Bool)

(assert (=> b!5065967 m!6108026))

(declare-fun m!6108028 () Bool)

(assert (=> b!5065966 m!6108028))

(declare-fun m!6108030 () Bool)

(assert (=> b!5065966 m!6108030))

(declare-fun m!6108032 () Bool)

(assert (=> b!5065965 m!6108032))

(assert (=> b!5065963 m!6108028))

(assert (=> b!5065963 m!6108030))

(assert (=> b!5065944 d!1633307))

(declare-fun d!1633309 () Bool)

(assert (=> d!1633309 (= (height!2141 (left!42816 xs!286)) (ite ((_ is Empty!15564) (left!42816 xs!286)) 0 (ite ((_ is Leaf!25851) (left!42816 xs!286)) 1 (cheight!15775 (left!42816 xs!286)))))))

(assert (=> b!5065945 d!1633309))

(declare-fun d!1633311 () Bool)

(assert (=> d!1633311 (= (height!2141 (right!43146 xs!286)) (ite ((_ is Empty!15564) (right!43146 xs!286)) 0 (ite ((_ is Leaf!25851) (right!43146 xs!286)) 1 (cheight!15775 (right!43146 xs!286)))))))

(assert (=> b!5065945 d!1633311))

(declare-fun d!1633313 () Bool)

(declare-fun size!39074 (List!58558) Int)

(assert (=> d!1633313 (= (inv!77555 (xs!18914 xs!286)) (<= (size!39074 (innerList!15652 (xs!18914 xs!286))) 2147483647))))

(declare-fun bs!1189886 () Bool)

(assert (= bs!1189886 d!1633313))

(declare-fun m!6108034 () Bool)

(assert (=> bs!1189886 m!6108034))

(assert (=> b!5065934 d!1633313))

(declare-fun d!1633317 () Bool)

(declare-fun c!869589 () Bool)

(assert (=> d!1633317 (= c!869589 ((_ is Node!15564) (left!42816 xs!286)))))

(declare-fun e!3161487 () Bool)

(assert (=> d!1633317 (= (inv!77556 (left!42816 xs!286)) e!3161487)))

(declare-fun b!5065983 () Bool)

(declare-fun inv!77559 (Conc!15564) Bool)

(assert (=> b!5065983 (= e!3161487 (inv!77559 (left!42816 xs!286)))))

(declare-fun b!5065984 () Bool)

(declare-fun e!3161488 () Bool)

(assert (=> b!5065984 (= e!3161487 e!3161488)))

(declare-fun res!2157025 () Bool)

(assert (=> b!5065984 (= res!2157025 (not ((_ is Leaf!25851) (left!42816 xs!286))))))

(assert (=> b!5065984 (=> res!2157025 e!3161488)))

(declare-fun b!5065985 () Bool)

(declare-fun inv!77560 (Conc!15564) Bool)

(assert (=> b!5065985 (= e!3161488 (inv!77560 (left!42816 xs!286)))))

(assert (= (and d!1633317 c!869589) b!5065983))

(assert (= (and d!1633317 (not c!869589)) b!5065984))

(assert (= (and b!5065984 (not res!2157025)) b!5065985))

(declare-fun m!6108040 () Bool)

(assert (=> b!5065983 m!6108040))

(declare-fun m!6108042 () Bool)

(assert (=> b!5065985 m!6108042))

(assert (=> b!5065935 d!1633317))

(declare-fun d!1633321 () Bool)

(declare-fun c!869591 () Bool)

(assert (=> d!1633321 (= c!869591 ((_ is Node!15564) (right!43146 xs!286)))))

(declare-fun e!3161491 () Bool)

(assert (=> d!1633321 (= (inv!77556 (right!43146 xs!286)) e!3161491)))

(declare-fun b!5065989 () Bool)

(assert (=> b!5065989 (= e!3161491 (inv!77559 (right!43146 xs!286)))))

(declare-fun b!5065990 () Bool)

(declare-fun e!3161492 () Bool)

(assert (=> b!5065990 (= e!3161491 e!3161492)))

(declare-fun res!2157027 () Bool)

(assert (=> b!5065990 (= res!2157027 (not ((_ is Leaf!25851) (right!43146 xs!286))))))

(assert (=> b!5065990 (=> res!2157027 e!3161492)))

(declare-fun b!5065991 () Bool)

(assert (=> b!5065991 (= e!3161492 (inv!77560 (right!43146 xs!286)))))

(assert (= (and d!1633321 c!869591) b!5065989))

(assert (= (and d!1633321 (not c!869591)) b!5065990))

(assert (= (and b!5065990 (not res!2157027)) b!5065991))

(declare-fun m!6108048 () Bool)

(assert (=> b!5065989 m!6108048))

(declare-fun m!6108050 () Bool)

(assert (=> b!5065991 m!6108050))

(assert (=> b!5065935 d!1633321))

(declare-fun d!1633325 () Bool)

(assert (=> d!1633325 (= (height!2141 xs!286) (ite ((_ is Empty!15564) xs!286) 0 (ite ((_ is Leaf!25851) xs!286) 1 (cheight!15775 xs!286))))))

(assert (=> b!5065946 d!1633325))

(declare-fun d!1633327 () Bool)

(assert (=> d!1633327 (= (height!2141 ys!41) (ite ((_ is Empty!15564) ys!41) 0 (ite ((_ is Leaf!25851) ys!41) 1 (cheight!15775 ys!41))))))

(assert (=> b!5065946 d!1633327))

(declare-fun d!1633329 () Bool)

(assert (=> d!1633329 (= (height!2141 lt!2088868) (ite ((_ is Empty!15564) lt!2088868) 0 (ite ((_ is Leaf!25851) lt!2088868) 1 (cheight!15775 lt!2088868))))))

(assert (=> b!5065936 d!1633329))

(declare-fun d!1633331 () Bool)

(assert (=> d!1633331 (= (max!0 lt!2088869 lt!2088866) (ite (< lt!2088869 lt!2088866) lt!2088866 lt!2088869))))

(assert (=> b!5065936 d!1633331))

(declare-fun b!5066047 () Bool)

(declare-fun e!3161529 () Bool)

(declare-fun e!3161528 () Bool)

(assert (=> b!5066047 (= e!3161529 e!3161528)))

(declare-fun res!2157085 () Bool)

(assert (=> b!5066047 (=> (not res!2157085) (not e!3161528))))

(declare-fun appendAssoc!301 (List!58558 List!58558 List!58558) Bool)

(assert (=> b!5066047 (= res!2157085 (appendAssoc!301 (list!18989 xs!286) (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))))))

(declare-fun b!5066048 () Bool)

(declare-fun e!3161533 () Bool)

(declare-fun e!3161531 () Bool)

(assert (=> b!5066048 (= e!3161533 e!3161531)))

(declare-fun res!2157078 () Bool)

(assert (=> b!5066048 (=> (not res!2157078) (not e!3161531))))

(assert (=> b!5066048 (= res!2157078 (appendAssoc!301 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun b!5066049 () Bool)

(declare-fun e!3161530 () Bool)

(declare-fun e!3161526 () Bool)

(assert (=> b!5066049 (= e!3161530 e!3161526)))

(declare-fun res!2157084 () Bool)

(assert (=> b!5066049 (=> (not res!2157084) (not e!3161526))))

(assert (=> b!5066049 (= res!2157084 (appendAssoc!301 (list!18989 (left!42816 (right!43146 xs!286))) (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)))))

(declare-fun b!5066050 () Bool)

(declare-fun e!3161532 () Bool)

(assert (=> b!5066050 (= e!3161532 e!3161529)))

(declare-fun res!2157083 () Bool)

(assert (=> b!5066050 (=> res!2157083 e!3161529)))

(assert (=> b!5066050 (= res!2157083 (not ((_ is Node!15564) ys!41)))))

(declare-fun b!5066051 () Bool)

(assert (=> b!5066051 (= e!3161528 e!3161533)))

(declare-fun res!2157082 () Bool)

(assert (=> b!5066051 (=> res!2157082 e!3161533)))

(assert (=> b!5066051 (= res!2157082 (not ((_ is Node!15564) (left!42816 ys!41))))))

(declare-fun b!5066052 () Bool)

(declare-fun e!3161527 () Bool)

(assert (=> b!5066052 (= e!3161527 e!3161530)))

(declare-fun res!2157080 () Bool)

(assert (=> b!5066052 (=> res!2157080 e!3161530)))

(assert (=> b!5066052 (= res!2157080 (not ((_ is Node!15564) (right!43146 xs!286))))))

(declare-fun b!5066053 () Bool)

(assert (=> b!5066053 (= e!3161526 (appendAssoc!301 (list!18989 (left!42816 xs!286)) (list!18989 (left!42816 (right!43146 xs!286))) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))

(declare-fun b!5066054 () Bool)

(declare-fun e!3161525 () Bool)

(assert (=> b!5066054 (= e!3161525 e!3161527)))

(declare-fun res!2157081 () Bool)

(assert (=> b!5066054 (=> (not res!2157081) (not e!3161527))))

(assert (=> b!5066054 (= res!2157081 (appendAssoc!301 (list!18989 (left!42816 xs!286)) (list!18989 (right!43146 xs!286)) (list!18989 ys!41)))))

(declare-fun d!1633335 () Bool)

(assert (=> d!1633335 e!3161532))

(declare-fun res!2157086 () Bool)

(assert (=> d!1633335 (=> (not res!2157086) (not e!3161532))))

(assert (=> d!1633335 (= res!2157086 e!3161525)))

(declare-fun res!2157079 () Bool)

(assert (=> d!1633335 (=> res!2157079 e!3161525)))

(assert (=> d!1633335 (= res!2157079 (not ((_ is Node!15564) xs!286)))))

(assert (=> d!1633335 (= (appendAssocInst!910 xs!286 ys!41) true)))

(declare-fun b!5066046 () Bool)

(assert (=> b!5066046 (= e!3161531 (appendAssoc!301 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))) (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))))))

(assert (= (and d!1633335 (not res!2157079)) b!5066054))

(assert (= (and b!5066054 res!2157081) b!5066052))

(assert (= (and b!5066052 (not res!2157080)) b!5066049))

(assert (= (and b!5066049 res!2157084) b!5066053))

(assert (= (and d!1633335 res!2157086) b!5066050))

(assert (= (and b!5066050 (not res!2157083)) b!5066047))

(assert (= (and b!5066047 res!2157085) b!5066051))

(assert (= (and b!5066051 (not res!2157082)) b!5066048))

(assert (= (and b!5066048 res!2157078) b!5066046))

(declare-fun m!6108092 () Bool)

(assert (=> b!5066049 m!6108092))

(declare-fun m!6108094 () Bool)

(assert (=> b!5066049 m!6108094))

(assert (=> b!5066049 m!6107974))

(assert (=> b!5066049 m!6108092))

(assert (=> b!5066049 m!6108094))

(assert (=> b!5066049 m!6107974))

(declare-fun m!6108096 () Bool)

(assert (=> b!5066049 m!6108096))

(assert (=> b!5066047 m!6107972))

(declare-fun m!6108098 () Bool)

(assert (=> b!5066047 m!6108098))

(declare-fun m!6108100 () Bool)

(assert (=> b!5066047 m!6108100))

(assert (=> b!5066047 m!6107972))

(assert (=> b!5066047 m!6108098))

(assert (=> b!5066047 m!6108100))

(declare-fun m!6108102 () Bool)

(assert (=> b!5066047 m!6108102))

(assert (=> b!5066048 m!6107972))

(declare-fun m!6108104 () Bool)

(assert (=> b!5066048 m!6108104))

(declare-fun m!6108106 () Bool)

(assert (=> b!5066048 m!6108106))

(assert (=> b!5066048 m!6107972))

(assert (=> b!5066048 m!6108104))

(assert (=> b!5066048 m!6108106))

(declare-fun m!6108108 () Bool)

(assert (=> b!5066048 m!6108108))

(assert (=> b!5066053 m!6108094))

(assert (=> b!5066053 m!6107974))

(declare-fun m!6108110 () Bool)

(assert (=> b!5066053 m!6108110))

(assert (=> b!5066053 m!6107974))

(declare-fun m!6108112 () Bool)

(assert (=> b!5066053 m!6108112))

(assert (=> b!5066053 m!6108094))

(assert (=> b!5066053 m!6108092))

(assert (=> b!5066053 m!6108112))

(assert (=> b!5066053 m!6108092))

(assert (=> b!5066053 m!6108110))

(declare-fun m!6108114 () Bool)

(assert (=> b!5066053 m!6108114))

(assert (=> b!5066054 m!6108112))

(declare-fun m!6108116 () Bool)

(assert (=> b!5066054 m!6108116))

(assert (=> b!5066054 m!6107974))

(assert (=> b!5066054 m!6108112))

(assert (=> b!5066054 m!6108116))

(assert (=> b!5066054 m!6107974))

(declare-fun m!6108118 () Bool)

(assert (=> b!5066054 m!6108118))

(assert (=> b!5066046 m!6107972))

(assert (=> b!5066046 m!6108100))

(declare-fun m!6108120 () Bool)

(assert (=> b!5066046 m!6108120))

(assert (=> b!5066046 m!6108106))

(assert (=> b!5066046 m!6108100))

(declare-fun m!6108122 () Bool)

(assert (=> b!5066046 m!6108122))

(assert (=> b!5066046 m!6107972))

(assert (=> b!5066046 m!6108104))

(assert (=> b!5066046 m!6108120))

(assert (=> b!5066046 m!6108106))

(assert (=> b!5066046 m!6108104))

(assert (=> b!5065937 d!1633335))

(declare-fun b!5066064 () Bool)

(declare-fun e!3161538 () Conc!15564)

(declare-fun e!3161539 () Conc!15564)

(assert (=> b!5066064 (= e!3161538 e!3161539)))

(declare-fun c!869599 () Bool)

(assert (=> b!5066064 (= c!869599 (= lt!2088865 Empty!15564))))

(declare-fun b!5066065 () Bool)

(assert (=> b!5066065 (= e!3161539 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))

(declare-fun d!1633355 () Bool)

(declare-fun lt!2088874 () Conc!15564)

(assert (=> d!1633355 (= (list!18989 lt!2088874) (++!12789 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) (list!18989 lt!2088865)))))

(assert (=> d!1633355 (= lt!2088874 e!3161538)))

(declare-fun c!869598 () Bool)

(assert (=> d!1633355 (= c!869598 (= (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))) Empty!15564))))

(assert (=> d!1633355 (= (<>!396 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))) lt!2088865) lt!2088874)))

(declare-fun b!5066063 () Bool)

(assert (=> b!5066063 (= e!3161538 lt!2088865)))

(declare-fun b!5066066 () Bool)

(declare-fun size!39075 (Conc!15564) Int)

(assert (=> b!5066066 (= e!3161539 (Node!15564 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))) lt!2088865 (+ (size!39075 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) (size!39075 lt!2088865)) (+ (max!0 (height!2141 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) (height!2141 lt!2088865)) 1)))))

(assert (= (and d!1633355 c!869598) b!5066063))

(assert (= (and d!1633355 (not c!869598)) b!5066064))

(assert (= (and b!5066064 c!869599) b!5066065))

(assert (= (and b!5066064 (not c!869599)) b!5066066))

(declare-fun m!6108124 () Bool)

(assert (=> d!1633355 m!6108124))

(assert (=> d!1633355 m!6107990))

(declare-fun m!6108126 () Bool)

(assert (=> d!1633355 m!6108126))

(declare-fun m!6108128 () Bool)

(assert (=> d!1633355 m!6108128))

(assert (=> d!1633355 m!6108126))

(assert (=> d!1633355 m!6108128))

(declare-fun m!6108130 () Bool)

(assert (=> d!1633355 m!6108130))

(declare-fun m!6108132 () Bool)

(assert (=> b!5066066 m!6108132))

(assert (=> b!5066066 m!6108008))

(declare-fun m!6108134 () Bool)

(assert (=> b!5066066 m!6108134))

(assert (=> b!5066066 m!6107990))

(assert (=> b!5066066 m!6108132))

(declare-fun m!6108136 () Bool)

(assert (=> b!5066066 m!6108136))

(assert (=> b!5066066 m!6108008))

(assert (=> b!5066066 m!6107990))

(declare-fun m!6108138 () Bool)

(assert (=> b!5066066 m!6108138))

(assert (=> b!5065937 d!1633355))

(declare-fun b!5066068 () Bool)

(declare-fun e!3161540 () Conc!15564)

(declare-fun e!3161541 () Conc!15564)

(assert (=> b!5066068 (= e!3161540 e!3161541)))

(declare-fun c!869601 () Bool)

(assert (=> b!5066068 (= c!869601 (= (left!42816 (right!43146 xs!286)) Empty!15564))))

(declare-fun b!5066069 () Bool)

(assert (=> b!5066069 (= e!3161541 (left!42816 xs!286))))

(declare-fun d!1633357 () Bool)

(declare-fun lt!2088875 () Conc!15564)

(assert (=> d!1633357 (= (list!18989 lt!2088875) (++!12789 (list!18989 (left!42816 xs!286)) (list!18989 (left!42816 (right!43146 xs!286)))))))

(assert (=> d!1633357 (= lt!2088875 e!3161540)))

(declare-fun c!869600 () Bool)

(assert (=> d!1633357 (= c!869600 (= (left!42816 xs!286) Empty!15564))))

(assert (=> d!1633357 (= (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))) lt!2088875)))

(declare-fun b!5066067 () Bool)

(assert (=> b!5066067 (= e!3161540 (left!42816 (right!43146 xs!286)))))

(declare-fun b!5066070 () Bool)

(assert (=> b!5066070 (= e!3161541 (Node!15564 (left!42816 xs!286) (left!42816 (right!43146 xs!286)) (+ (size!39075 (left!42816 xs!286)) (size!39075 (left!42816 (right!43146 xs!286)))) (+ (max!0 (height!2141 (left!42816 xs!286)) (height!2141 (left!42816 (right!43146 xs!286)))) 1)))))

(assert (= (and d!1633357 c!869600) b!5066067))

(assert (= (and d!1633357 (not c!869600)) b!5066068))

(assert (= (and b!5066068 c!869601) b!5066069))

(assert (= (and b!5066068 (not c!869601)) b!5066070))

(declare-fun m!6108140 () Bool)

(assert (=> d!1633357 m!6108140))

(assert (=> d!1633357 m!6108112))

(assert (=> d!1633357 m!6108092))

(assert (=> d!1633357 m!6108112))

(assert (=> d!1633357 m!6108092))

(declare-fun m!6108142 () Bool)

(assert (=> d!1633357 m!6108142))

(assert (=> b!5066070 m!6108002))

(declare-fun m!6108144 () Bool)

(assert (=> b!5066070 m!6108144))

(declare-fun m!6108146 () Bool)

(assert (=> b!5066070 m!6108146))

(assert (=> b!5066070 m!6108002))

(declare-fun m!6108148 () Bool)

(assert (=> b!5066070 m!6108148))

(assert (=> b!5066070 m!6108144))

(declare-fun m!6108150 () Bool)

(assert (=> b!5066070 m!6108150))

(assert (=> b!5065937 d!1633357))

(declare-fun d!1633359 () Bool)

(declare-fun c!869608 () Bool)

(assert (=> d!1633359 (= c!869608 ((_ is Empty!15564) lt!2088868))))

(declare-fun e!3161550 () List!58558)

(assert (=> d!1633359 (= (list!18989 lt!2088868) e!3161550)))

(declare-fun b!5066086 () Bool)

(declare-fun e!3161551 () List!58558)

(assert (=> b!5066086 (= e!3161550 e!3161551)))

(declare-fun c!869609 () Bool)

(assert (=> b!5066086 (= c!869609 ((_ is Leaf!25851) lt!2088868))))

(declare-fun b!5066085 () Bool)

(assert (=> b!5066085 (= e!3161550 Nil!58434)))

(declare-fun b!5066088 () Bool)

(assert (=> b!5066088 (= e!3161551 (++!12789 (list!18989 (left!42816 lt!2088868)) (list!18989 (right!43146 lt!2088868))))))

(declare-fun b!5066087 () Bool)

(declare-fun list!18990 (IArray!31189) List!58558)

(assert (=> b!5066087 (= e!3161551 (list!18990 (xs!18914 lt!2088868)))))

(assert (= (and d!1633359 c!869608) b!5066085))

(assert (= (and d!1633359 (not c!869608)) b!5066086))

(assert (= (and b!5066086 c!869609) b!5066087))

(assert (= (and b!5066086 (not c!869609)) b!5066088))

(declare-fun m!6108152 () Bool)

(assert (=> b!5066088 m!6108152))

(declare-fun m!6108154 () Bool)

(assert (=> b!5066088 m!6108154))

(assert (=> b!5066088 m!6108152))

(assert (=> b!5066088 m!6108154))

(declare-fun m!6108156 () Bool)

(assert (=> b!5066088 m!6108156))

(declare-fun m!6108158 () Bool)

(assert (=> b!5066087 m!6108158))

(assert (=> b!5065948 d!1633359))

(declare-fun b!5066127 () Bool)

(declare-fun res!2157094 () Bool)

(declare-fun e!3161570 () Bool)

(assert (=> b!5066127 (=> (not res!2157094) (not e!3161570))))

(declare-fun lt!2088886 () List!58558)

(assert (=> b!5066127 (= res!2157094 (= (size!39074 lt!2088886) (+ (size!39074 (list!18989 xs!286)) (size!39074 (list!18989 ys!41)))))))

(declare-fun b!5066128 () Bool)

(assert (=> b!5066128 (= e!3161570 (or (not (= (list!18989 ys!41) Nil!58434)) (= lt!2088886 (list!18989 xs!286))))))

(declare-fun b!5066126 () Bool)

(declare-fun e!3161571 () List!58558)

(assert (=> b!5066126 (= e!3161571 (Cons!58434 (h!64882 (list!18989 xs!286)) (++!12789 (t!371291 (list!18989 xs!286)) (list!18989 ys!41))))))

(declare-fun b!5066125 () Bool)

(assert (=> b!5066125 (= e!3161571 (list!18989 ys!41))))

(declare-fun d!1633361 () Bool)

(assert (=> d!1633361 e!3161570))

(declare-fun res!2157093 () Bool)

(assert (=> d!1633361 (=> (not res!2157093) (not e!3161570))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10417 (List!58558) (InoxSet T!105118))

(assert (=> d!1633361 (= res!2157093 (= (content!10417 lt!2088886) ((_ map or) (content!10417 (list!18989 xs!286)) (content!10417 (list!18989 ys!41)))))))

(assert (=> d!1633361 (= lt!2088886 e!3161571)))

(declare-fun c!869626 () Bool)

(assert (=> d!1633361 (= c!869626 ((_ is Nil!58434) (list!18989 xs!286)))))

(assert (=> d!1633361 (= (++!12789 (list!18989 xs!286) (list!18989 ys!41)) lt!2088886)))

(assert (= (and d!1633361 c!869626) b!5066125))

(assert (= (and d!1633361 (not c!869626)) b!5066126))

(assert (= (and d!1633361 res!2157093) b!5066127))

(assert (= (and b!5066127 res!2157094) b!5066128))

(declare-fun m!6108160 () Bool)

(assert (=> b!5066127 m!6108160))

(assert (=> b!5066127 m!6107972))

(declare-fun m!6108162 () Bool)

(assert (=> b!5066127 m!6108162))

(assert (=> b!5066127 m!6107974))

(declare-fun m!6108164 () Bool)

(assert (=> b!5066127 m!6108164))

(assert (=> b!5066126 m!6107974))

(declare-fun m!6108166 () Bool)

(assert (=> b!5066126 m!6108166))

(declare-fun m!6108168 () Bool)

(assert (=> d!1633361 m!6108168))

(assert (=> d!1633361 m!6107972))

(declare-fun m!6108170 () Bool)

(assert (=> d!1633361 m!6108170))

(assert (=> d!1633361 m!6107974))

(declare-fun m!6108172 () Bool)

(assert (=> d!1633361 m!6108172))

(assert (=> b!5065948 d!1633361))

(declare-fun d!1633363 () Bool)

(declare-fun c!869627 () Bool)

(assert (=> d!1633363 (= c!869627 ((_ is Empty!15564) xs!286))))

(declare-fun e!3161572 () List!58558)

(assert (=> d!1633363 (= (list!18989 xs!286) e!3161572)))

(declare-fun b!5066130 () Bool)

(declare-fun e!3161573 () List!58558)

(assert (=> b!5066130 (= e!3161572 e!3161573)))

(declare-fun c!869628 () Bool)

(assert (=> b!5066130 (= c!869628 ((_ is Leaf!25851) xs!286))))

(declare-fun b!5066129 () Bool)

(assert (=> b!5066129 (= e!3161572 Nil!58434)))

(declare-fun b!5066132 () Bool)

(assert (=> b!5066132 (= e!3161573 (++!12789 (list!18989 (left!42816 xs!286)) (list!18989 (right!43146 xs!286))))))

(declare-fun b!5066131 () Bool)

(assert (=> b!5066131 (= e!3161573 (list!18990 (xs!18914 xs!286)))))

(assert (= (and d!1633363 c!869627) b!5066129))

(assert (= (and d!1633363 (not c!869627)) b!5066130))

(assert (= (and b!5066130 c!869628) b!5066131))

(assert (= (and b!5066130 (not c!869628)) b!5066132))

(assert (=> b!5066132 m!6108112))

(assert (=> b!5066132 m!6108116))

(assert (=> b!5066132 m!6108112))

(assert (=> b!5066132 m!6108116))

(declare-fun m!6108174 () Bool)

(assert (=> b!5066132 m!6108174))

(declare-fun m!6108176 () Bool)

(assert (=> b!5066131 m!6108176))

(assert (=> b!5065948 d!1633363))

(declare-fun d!1633365 () Bool)

(declare-fun c!869629 () Bool)

(assert (=> d!1633365 (= c!869629 ((_ is Empty!15564) ys!41))))

(declare-fun e!3161574 () List!58558)

(assert (=> d!1633365 (= (list!18989 ys!41) e!3161574)))

(declare-fun b!5066134 () Bool)

(declare-fun e!3161575 () List!58558)

(assert (=> b!5066134 (= e!3161574 e!3161575)))

(declare-fun c!869630 () Bool)

(assert (=> b!5066134 (= c!869630 ((_ is Leaf!25851) ys!41))))

(declare-fun b!5066133 () Bool)

(assert (=> b!5066133 (= e!3161574 Nil!58434)))

(declare-fun b!5066136 () Bool)

(assert (=> b!5066136 (= e!3161575 (++!12789 (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))))))

(declare-fun b!5066135 () Bool)

(assert (=> b!5066135 (= e!3161575 (list!18990 (xs!18914 ys!41)))))

(assert (= (and d!1633365 c!869629) b!5066133))

(assert (= (and d!1633365 (not c!869629)) b!5066134))

(assert (= (and b!5066134 c!869630) b!5066135))

(assert (= (and b!5066134 (not c!869630)) b!5066136))

(assert (=> b!5066136 m!6108098))

(assert (=> b!5066136 m!6108100))

(assert (=> b!5066136 m!6108098))

(assert (=> b!5066136 m!6108100))

(declare-fun m!6108178 () Bool)

(assert (=> b!5066136 m!6108178))

(declare-fun m!6108180 () Bool)

(assert (=> b!5066135 m!6108180))

(assert (=> b!5065948 d!1633365))

(declare-fun d!1633367 () Bool)

(assert (=> d!1633367 (= (inv!77555 (xs!18914 ys!41)) (<= (size!39074 (innerList!15652 (xs!18914 ys!41))) 2147483647))))

(declare-fun bs!1189887 () Bool)

(assert (= bs!1189887 d!1633367))

(declare-fun m!6108182 () Bool)

(assert (=> bs!1189887 m!6108182))

(assert (=> b!5065938 d!1633367))

(declare-fun d!1633369 () Bool)

(assert (=> d!1633369 (= (height!2141 lt!2088865) (ite ((_ is Empty!15564) lt!2088865) 0 (ite ((_ is Leaf!25851) lt!2088865) 1 (cheight!15775 lt!2088865))))))

(assert (=> b!5065940 d!1633369))

(declare-fun bm!352985 () Bool)

(declare-fun call!352992 () Conc!15564)

(declare-fun call!352998 () Conc!15564)

(assert (=> bm!352985 (= call!352992 call!352998)))

(declare-fun b!5066315 () Bool)

(declare-fun res!2157153 () Bool)

(declare-fun e!3161686 () Bool)

(assert (=> b!5066315 (=> (not res!2157153) (not e!3161686))))

(declare-fun lt!2088908 () Conc!15564)

(assert (=> b!5066315 (= res!2157153 (<= (height!2141 lt!2088908) (+ (max!0 (height!2141 (right!43146 (right!43146 xs!286))) (height!2141 ys!41)) 1)))))

(declare-fun b!5066316 () Bool)

(declare-fun e!3161685 () Conc!15564)

(declare-fun call!352996 () Conc!15564)

(assert (=> b!5066316 (= e!3161685 call!352996)))

(declare-fun bm!352986 () Bool)

(declare-fun call!353002 () Conc!15564)

(assert (=> bm!352986 (= call!352998 call!353002)))

(declare-fun bm!352987 () Bool)

(declare-fun c!869680 () Bool)

(declare-fun call!353004 () Int)

(assert (=> bm!352987 (= call!353004 (height!2141 (ite c!869680 (right!43146 (right!43146 xs!286)) (left!42816 ys!41))))))

(declare-fun c!869681 () Bool)

(declare-fun bm!352988 () Bool)

(declare-fun c!869682 () Bool)

(declare-fun lt!2088906 () Conc!15564)

(declare-fun c!869683 () Bool)

(declare-fun c!869678 () Bool)

(declare-fun call!352997 () Conc!15564)

(declare-fun call!352994 () Conc!15564)

(declare-fun lt!2088909 () Conc!15564)

(assert (=> bm!352988 (= call!353002 (<>!396 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))) (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))))))

(declare-fun b!5066317 () Bool)

(declare-fun res!2157157 () Bool)

(assert (=> b!5066317 (=> (not res!2157157) (not e!3161686))))

(assert (=> b!5066317 (= res!2157157 (>= (height!2141 lt!2088908) (max!0 (height!2141 (right!43146 (right!43146 xs!286))) (height!2141 ys!41))))))

(declare-fun b!5066318 () Bool)

(declare-fun res!2157155 () Bool)

(assert (=> b!5066318 (=> (not res!2157155) (not e!3161686))))

(assert (=> b!5066318 (= res!2157155 (isBalanced!4426 lt!2088908))))

(declare-fun bm!352989 () Bool)

(declare-fun call!352993 () Conc!15564)

(assert (=> bm!352989 (= call!352993 call!353002)))

(declare-fun b!5066320 () Bool)

(declare-fun e!3161682 () Conc!15564)

(declare-fun e!3161681 () Conc!15564)

(assert (=> b!5066320 (= e!3161682 e!3161681)))

(assert (=> b!5066320 (= lt!2088906 call!352997)))

(declare-fun call!352990 () Int)

(declare-fun call!352995 () Int)

(assert (=> b!5066320 (= c!869681 (= call!352990 (- call!352995 3)))))

(declare-fun b!5066321 () Bool)

(assert (=> b!5066321 (= e!3161685 call!352996)))

(declare-fun bm!352990 () Bool)

(declare-fun call!352999 () Conc!15564)

(assert (=> bm!352990 (= call!352999 call!352993)))

(declare-fun b!5066322 () Bool)

(assert (=> b!5066322 (= e!3161686 (= (list!18989 lt!2088908) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))

(declare-fun b!5066323 () Bool)

(assert (=> b!5066323 (= e!3161682 call!352998)))

(declare-fun b!5066324 () Bool)

(declare-fun call!352991 () Int)

(assert (=> b!5066324 (= c!869683 (>= call!352991 call!352995))))

(declare-fun e!3161684 () Conc!15564)

(declare-fun e!3161688 () Conc!15564)

(assert (=> b!5066324 (= e!3161684 e!3161688)))

(declare-fun bm!352991 () Bool)

(declare-fun call!353003 () Conc!15564)

(assert (=> bm!352991 (= call!352997 call!353003)))

(declare-fun b!5066325 () Bool)

(assert (=> b!5066325 (= e!3161688 e!3161685)))

(assert (=> b!5066325 (= lt!2088909 call!352994)))

(assert (=> b!5066325 (= c!869682 (= call!352990 (- call!353004 3)))))

(declare-fun bm!352992 () Bool)

(assert (=> bm!352992 (= call!352991 (height!2141 (ite c!869680 (left!42816 (right!43146 (right!43146 xs!286))) (right!43146 ys!41))))))

(declare-fun bm!352993 () Bool)

(assert (=> bm!352993 (= call!352995 (height!2141 (ite c!869680 (right!43146 (right!43146 (right!43146 xs!286))) ys!41)))))

(declare-fun b!5066326 () Bool)

(declare-fun e!3161679 () Conc!15564)

(declare-fun e!3161683 () Conc!15564)

(assert (=> b!5066326 (= e!3161679 e!3161683)))

(declare-fun c!869684 () Bool)

(assert (=> b!5066326 (= c!869684 (= ys!41 Empty!15564))))

(declare-fun b!5066327 () Bool)

(assert (=> b!5066327 (= e!3161683 (right!43146 (right!43146 xs!286)))))

(declare-fun b!5066328 () Bool)

(declare-fun call!353005 () Conc!15564)

(assert (=> b!5066328 (= e!3161681 call!353005)))

(declare-fun bm!352994 () Bool)

(assert (=> bm!352994 (= call!352990 (height!2141 (ite c!869680 lt!2088909 lt!2088906)))))

(declare-fun b!5066329 () Bool)

(declare-fun e!3161687 () Conc!15564)

(declare-fun call!353000 () Conc!15564)

(assert (=> b!5066329 (= e!3161687 call!353000)))

(declare-fun bm!352995 () Bool)

(assert (=> bm!352995 (= call!353003 (++!12788 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))

(declare-fun b!5066330 () Bool)

(assert (=> b!5066330 (= e!3161688 call!352993)))

(declare-fun bm!352996 () Bool)

(declare-fun call!353001 () Conc!15564)

(assert (=> bm!352996 (= call!353001 call!353000)))

(declare-fun b!5066331 () Bool)

(assert (=> b!5066331 (= c!869678 (>= call!352991 call!353004))))

(assert (=> b!5066331 (= e!3161684 e!3161682)))

(declare-fun bm!352997 () Bool)

(assert (=> bm!352997 (= call!353005 call!353001)))

(declare-fun b!5066332 () Bool)

(declare-fun c!869685 () Bool)

(declare-fun lt!2088907 () Int)

(assert (=> b!5066332 (= c!869685 (and (<= (- 1) lt!2088907) (<= lt!2088907 1)))))

(assert (=> b!5066332 (= lt!2088907 (- (height!2141 ys!41) (height!2141 (right!43146 (right!43146 xs!286)))))))

(assert (=> b!5066332 (= e!3161683 e!3161687)))

(declare-fun b!5066333 () Bool)

(declare-fun e!3161680 () Bool)

(assert (=> b!5066333 (= e!3161680 (isBalanced!4426 ys!41))))

(declare-fun b!5066334 () Bool)

(assert (=> b!5066334 (= e!3161679 ys!41)))

(declare-fun bm!352998 () Bool)

(assert (=> bm!352998 (= call!353000 (<>!396 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))) (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))))))

(declare-fun b!5066335 () Bool)

(assert (=> b!5066335 (= e!3161681 call!353005)))

(declare-fun b!5066319 () Bool)

(assert (=> b!5066319 (= e!3161687 e!3161684)))

(assert (=> b!5066319 (= c!869680 (< lt!2088907 (- 1)))))

(declare-fun d!1633371 () Bool)

(assert (=> d!1633371 e!3161686))

(declare-fun res!2157156 () Bool)

(assert (=> d!1633371 (=> (not res!2157156) (not e!3161686))))

(assert (=> d!1633371 (= res!2157156 (appendAssocInst!910 (right!43146 (right!43146 xs!286)) ys!41))))

(assert (=> d!1633371 (= lt!2088908 e!3161679)))

(declare-fun c!869679 () Bool)

(assert (=> d!1633371 (= c!869679 (= (right!43146 (right!43146 xs!286)) Empty!15564))))

(assert (=> d!1633371 e!3161680))

(declare-fun res!2157154 () Bool)

(assert (=> d!1633371 (=> (not res!2157154) (not e!3161680))))

(assert (=> d!1633371 (= res!2157154 (isBalanced!4426 (right!43146 (right!43146 xs!286))))))

(assert (=> d!1633371 (= (++!12788 (right!43146 (right!43146 xs!286)) ys!41) lt!2088908)))

(declare-fun bm!352999 () Bool)

(assert (=> bm!352999 (= call!352994 call!353003)))

(declare-fun bm!353000 () Bool)

(assert (=> bm!353000 (= call!352996 call!353001)))

(assert (= (and d!1633371 res!2157154) b!5066333))

(assert (= (and d!1633371 c!869679) b!5066334))

(assert (= (and d!1633371 (not c!869679)) b!5066326))

(assert (= (and b!5066326 c!869684) b!5066327))

(assert (= (and b!5066326 (not c!869684)) b!5066332))

(assert (= (and b!5066332 c!869685) b!5066329))

(assert (= (and b!5066332 (not c!869685)) b!5066319))

(assert (= (and b!5066319 c!869680) b!5066324))

(assert (= (and b!5066319 (not c!869680)) b!5066331))

(assert (= (and b!5066324 c!869683) b!5066330))

(assert (= (and b!5066324 (not c!869683)) b!5066325))

(assert (= (and b!5066325 c!869682) b!5066321))

(assert (= (and b!5066325 (not c!869682)) b!5066316))

(assert (= (or b!5066321 b!5066316) bm!352990))

(assert (= (or b!5066321 b!5066316) bm!353000))

(assert (= (or b!5066330 b!5066325) bm!352999))

(assert (= (or b!5066330 bm!352990) bm!352989))

(assert (= (and b!5066331 c!869678) b!5066323))

(assert (= (and b!5066331 (not c!869678)) b!5066320))

(assert (= (and b!5066320 c!869681) b!5066335))

(assert (= (and b!5066320 (not c!869681)) b!5066328))

(assert (= (or b!5066335 b!5066328) bm!352985))

(assert (= (or b!5066335 b!5066328) bm!352997))

(assert (= (or b!5066323 b!5066320) bm!352991))

(assert (= (or b!5066323 bm!352985) bm!352986))

(assert (= (or bm!352999 bm!352991) bm!352995))

(assert (= (or b!5066324 b!5066331) bm!352992))

(assert (= (or b!5066324 b!5066320) bm!352993))

(assert (= (or b!5066325 b!5066331) bm!352987))

(assert (= (or bm!353000 bm!352997) bm!352996))

(assert (= (or bm!352989 bm!352986) bm!352988))

(assert (= (or b!5066325 b!5066320) bm!352994))

(assert (= (or b!5066329 bm!352996) bm!352998))

(assert (= (and d!1633371 res!2157156) b!5066318))

(assert (= (and b!5066318 res!2157155) b!5066315))

(assert (= (and b!5066315 res!2157153) b!5066317))

(assert (= (and b!5066317 res!2157157) b!5066322))

(declare-fun m!6108338 () Bool)

(assert (=> d!1633371 m!6108338))

(declare-fun m!6108340 () Bool)

(assert (=> d!1633371 m!6108340))

(declare-fun m!6108342 () Bool)

(assert (=> b!5066318 m!6108342))

(declare-fun m!6108344 () Bool)

(assert (=> b!5066315 m!6108344))

(declare-fun m!6108346 () Bool)

(assert (=> b!5066315 m!6108346))

(assert (=> b!5066315 m!6108020))

(assert (=> b!5066315 m!6108346))

(assert (=> b!5066315 m!6108020))

(declare-fun m!6108348 () Bool)

(assert (=> b!5066315 m!6108348))

(declare-fun m!6108350 () Bool)

(assert (=> bm!352992 m!6108350))

(assert (=> b!5066317 m!6108344))

(assert (=> b!5066317 m!6108346))

(assert (=> b!5066317 m!6108020))

(assert (=> b!5066317 m!6108346))

(assert (=> b!5066317 m!6108020))

(assert (=> b!5066317 m!6108348))

(declare-fun m!6108352 () Bool)

(assert (=> bm!352998 m!6108352))

(declare-fun m!6108354 () Bool)

(assert (=> bm!352994 m!6108354))

(assert (=> b!5066333 m!6107978))

(declare-fun m!6108356 () Bool)

(assert (=> bm!352995 m!6108356))

(declare-fun m!6108358 () Bool)

(assert (=> bm!352993 m!6108358))

(assert (=> b!5066332 m!6108020))

(assert (=> b!5066332 m!6108346))

(declare-fun m!6108360 () Bool)

(assert (=> b!5066322 m!6108360))

(assert (=> b!5066322 m!6108094))

(assert (=> b!5066322 m!6107974))

(assert (=> b!5066322 m!6108094))

(assert (=> b!5066322 m!6107974))

(assert (=> b!5066322 m!6108110))

(declare-fun m!6108362 () Bool)

(assert (=> bm!352987 m!6108362))

(declare-fun m!6108364 () Bool)

(assert (=> bm!352988 m!6108364))

(assert (=> b!5065940 d!1633371))

(declare-fun d!1633399 () Bool)

(declare-fun c!869686 () Bool)

(assert (=> d!1633399 (= c!869686 ((_ is Node!15564) (left!42816 ys!41)))))

(declare-fun e!3161689 () Bool)

(assert (=> d!1633399 (= (inv!77556 (left!42816 ys!41)) e!3161689)))

(declare-fun b!5066336 () Bool)

(assert (=> b!5066336 (= e!3161689 (inv!77559 (left!42816 ys!41)))))

(declare-fun b!5066337 () Bool)

(declare-fun e!3161690 () Bool)

(assert (=> b!5066337 (= e!3161689 e!3161690)))

(declare-fun res!2157158 () Bool)

(assert (=> b!5066337 (= res!2157158 (not ((_ is Leaf!25851) (left!42816 ys!41))))))

(assert (=> b!5066337 (=> res!2157158 e!3161690)))

(declare-fun b!5066338 () Bool)

(assert (=> b!5066338 (= e!3161690 (inv!77560 (left!42816 ys!41)))))

(assert (= (and d!1633399 c!869686) b!5066336))

(assert (= (and d!1633399 (not c!869686)) b!5066337))

(assert (= (and b!5066337 (not res!2157158)) b!5066338))

(declare-fun m!6108366 () Bool)

(assert (=> b!5066336 m!6108366))

(declare-fun m!6108368 () Bool)

(assert (=> b!5066338 m!6108368))

(assert (=> b!5065942 d!1633399))

(declare-fun d!1633401 () Bool)

(declare-fun c!869687 () Bool)

(assert (=> d!1633401 (= c!869687 ((_ is Node!15564) (right!43146 ys!41)))))

(declare-fun e!3161691 () Bool)

(assert (=> d!1633401 (= (inv!77556 (right!43146 ys!41)) e!3161691)))

(declare-fun b!5066339 () Bool)

(assert (=> b!5066339 (= e!3161691 (inv!77559 (right!43146 ys!41)))))

(declare-fun b!5066340 () Bool)

(declare-fun e!3161692 () Bool)

(assert (=> b!5066340 (= e!3161691 e!3161692)))

(declare-fun res!2157159 () Bool)

(assert (=> b!5066340 (= res!2157159 (not ((_ is Leaf!25851) (right!43146 ys!41))))))

(assert (=> b!5066340 (=> res!2157159 e!3161692)))

(declare-fun b!5066341 () Bool)

(assert (=> b!5066341 (= e!3161692 (inv!77560 (right!43146 ys!41)))))

(assert (= (and d!1633401 c!869687) b!5066339))

(assert (= (and d!1633401 (not c!869687)) b!5066340))

(assert (= (and b!5066340 (not res!2157159)) b!5066341))

(declare-fun m!6108370 () Bool)

(assert (=> b!5066339 m!6108370))

(declare-fun m!6108372 () Bool)

(assert (=> b!5066341 m!6108372))

(assert (=> b!5065942 d!1633401))

(declare-fun b!5066342 () Bool)

(declare-fun res!2157162 () Bool)

(declare-fun e!3161694 () Bool)

(assert (=> b!5066342 (=> (not res!2157162) (not e!3161694))))

(assert (=> b!5066342 (= res!2157162 (isBalanced!4426 (left!42816 ys!41)))))

(declare-fun b!5066343 () Bool)

(declare-fun e!3161693 () Bool)

(assert (=> b!5066343 (= e!3161693 e!3161694)))

(declare-fun res!2157165 () Bool)

(assert (=> b!5066343 (=> (not res!2157165) (not e!3161694))))

(assert (=> b!5066343 (= res!2157165 (<= (- 1) (- (height!2141 (left!42816 ys!41)) (height!2141 (right!43146 ys!41)))))))

(declare-fun b!5066344 () Bool)

(declare-fun res!2157160 () Bool)

(assert (=> b!5066344 (=> (not res!2157160) (not e!3161694))))

(assert (=> b!5066344 (= res!2157160 (not (isEmpty!31631 (left!42816 ys!41))))))

(declare-fun b!5066346 () Bool)

(declare-fun res!2157164 () Bool)

(assert (=> b!5066346 (=> (not res!2157164) (not e!3161694))))

(assert (=> b!5066346 (= res!2157164 (<= (- (height!2141 (left!42816 ys!41)) (height!2141 (right!43146 ys!41))) 1))))

(declare-fun b!5066347 () Bool)

(assert (=> b!5066347 (= e!3161694 (not (isEmpty!31631 (right!43146 ys!41))))))

(declare-fun b!5066345 () Bool)

(declare-fun res!2157161 () Bool)

(assert (=> b!5066345 (=> (not res!2157161) (not e!3161694))))

(assert (=> b!5066345 (= res!2157161 (isBalanced!4426 (right!43146 ys!41)))))

(declare-fun d!1633403 () Bool)

(declare-fun res!2157163 () Bool)

(assert (=> d!1633403 (=> res!2157163 e!3161693)))

(assert (=> d!1633403 (= res!2157163 (not ((_ is Node!15564) ys!41)))))

(assert (=> d!1633403 (= (isBalanced!4426 ys!41) e!3161693)))

(assert (= (and d!1633403 (not res!2157163)) b!5066343))

(assert (= (and b!5066343 res!2157165) b!5066346))

(assert (= (and b!5066346 res!2157164) b!5066342))

(assert (= (and b!5066342 res!2157162) b!5066345))

(assert (= (and b!5066345 res!2157161) b!5066344))

(assert (= (and b!5066344 res!2157160) b!5066347))

(declare-fun m!6108374 () Bool)

(assert (=> b!5066344 m!6108374))

(declare-fun m!6108376 () Bool)

(assert (=> b!5066342 m!6108376))

(declare-fun m!6108378 () Bool)

(assert (=> b!5066347 m!6108378))

(declare-fun m!6108380 () Bool)

(assert (=> b!5066346 m!6108380))

(declare-fun m!6108382 () Bool)

(assert (=> b!5066346 m!6108382))

(declare-fun m!6108384 () Bool)

(assert (=> b!5066345 m!6108384))

(assert (=> b!5066343 m!6108380))

(assert (=> b!5066343 m!6108382))

(assert (=> b!5065943 d!1633403))

(declare-fun b!5066348 () Bool)

(declare-fun res!2157168 () Bool)

(declare-fun e!3161696 () Bool)

(assert (=> b!5066348 (=> (not res!2157168) (not e!3161696))))

(assert (=> b!5066348 (= res!2157168 (isBalanced!4426 (left!42816 xs!286)))))

(declare-fun b!5066349 () Bool)

(declare-fun e!3161695 () Bool)

(assert (=> b!5066349 (= e!3161695 e!3161696)))

(declare-fun res!2157171 () Bool)

(assert (=> b!5066349 (=> (not res!2157171) (not e!3161696))))

(assert (=> b!5066349 (= res!2157171 (<= (- 1) (- (height!2141 (left!42816 xs!286)) (height!2141 (right!43146 xs!286)))))))

(declare-fun b!5066350 () Bool)

(declare-fun res!2157166 () Bool)

(assert (=> b!5066350 (=> (not res!2157166) (not e!3161696))))

(assert (=> b!5066350 (= res!2157166 (not (isEmpty!31631 (left!42816 xs!286))))))

(declare-fun b!5066352 () Bool)

(declare-fun res!2157170 () Bool)

(assert (=> b!5066352 (=> (not res!2157170) (not e!3161696))))

(assert (=> b!5066352 (= res!2157170 (<= (- (height!2141 (left!42816 xs!286)) (height!2141 (right!43146 xs!286))) 1))))

(declare-fun b!5066353 () Bool)

(assert (=> b!5066353 (= e!3161696 (not (isEmpty!31631 (right!43146 xs!286))))))

(declare-fun b!5066351 () Bool)

(declare-fun res!2157167 () Bool)

(assert (=> b!5066351 (=> (not res!2157167) (not e!3161696))))

(assert (=> b!5066351 (= res!2157167 (isBalanced!4426 (right!43146 xs!286)))))

(declare-fun d!1633405 () Bool)

(declare-fun res!2157169 () Bool)

(assert (=> d!1633405 (=> res!2157169 e!3161695)))

(assert (=> d!1633405 (= res!2157169 (not ((_ is Node!15564) xs!286)))))

(assert (=> d!1633405 (= (isBalanced!4426 xs!286) e!3161695)))

(assert (= (and d!1633405 (not res!2157169)) b!5066349))

(assert (= (and b!5066349 res!2157171) b!5066352))

(assert (= (and b!5066352 res!2157170) b!5066348))

(assert (= (and b!5066348 res!2157168) b!5066351))

(assert (= (and b!5066351 res!2157167) b!5066350))

(assert (= (and b!5066350 res!2157166) b!5066353))

(declare-fun m!6108386 () Bool)

(assert (=> b!5066350 m!6108386))

(declare-fun m!6108388 () Bool)

(assert (=> b!5066348 m!6108388))

(declare-fun m!6108390 () Bool)

(assert (=> b!5066353 m!6108390))

(assert (=> b!5066352 m!6108002))

(assert (=> b!5066352 m!6108004))

(declare-fun m!6108392 () Bool)

(assert (=> b!5066351 m!6108392))

(assert (=> b!5066349 m!6108002))

(assert (=> b!5066349 m!6108004))

(assert (=> start!535090 d!1633405))

(declare-fun d!1633407 () Bool)

(declare-fun c!869688 () Bool)

(assert (=> d!1633407 (= c!869688 ((_ is Node!15564) xs!286))))

(declare-fun e!3161697 () Bool)

(assert (=> d!1633407 (= (inv!77556 xs!286) e!3161697)))

(declare-fun b!5066354 () Bool)

(assert (=> b!5066354 (= e!3161697 (inv!77559 xs!286))))

(declare-fun b!5066355 () Bool)

(declare-fun e!3161698 () Bool)

(assert (=> b!5066355 (= e!3161697 e!3161698)))

(declare-fun res!2157172 () Bool)

(assert (=> b!5066355 (= res!2157172 (not ((_ is Leaf!25851) xs!286)))))

(assert (=> b!5066355 (=> res!2157172 e!3161698)))

(declare-fun b!5066356 () Bool)

(assert (=> b!5066356 (= e!3161698 (inv!77560 xs!286))))

(assert (= (and d!1633407 c!869688) b!5066354))

(assert (= (and d!1633407 (not c!869688)) b!5066355))

(assert (= (and b!5066355 (not res!2157172)) b!5066356))

(declare-fun m!6108394 () Bool)

(assert (=> b!5066354 m!6108394))

(declare-fun m!6108396 () Bool)

(assert (=> b!5066356 m!6108396))

(assert (=> start!535090 d!1633407))

(declare-fun d!1633409 () Bool)

(declare-fun c!869689 () Bool)

(assert (=> d!1633409 (= c!869689 ((_ is Node!15564) ys!41))))

(declare-fun e!3161699 () Bool)

(assert (=> d!1633409 (= (inv!77556 ys!41) e!3161699)))

(declare-fun b!5066357 () Bool)

(assert (=> b!5066357 (= e!3161699 (inv!77559 ys!41))))

(declare-fun b!5066358 () Bool)

(declare-fun e!3161700 () Bool)

(assert (=> b!5066358 (= e!3161699 e!3161700)))

(declare-fun res!2157173 () Bool)

(assert (=> b!5066358 (= res!2157173 (not ((_ is Leaf!25851) ys!41)))))

(assert (=> b!5066358 (=> res!2157173 e!3161700)))

(declare-fun b!5066359 () Bool)

(assert (=> b!5066359 (= e!3161700 (inv!77560 ys!41))))

(assert (= (and d!1633409 c!869689) b!5066357))

(assert (= (and d!1633409 (not c!869689)) b!5066358))

(assert (= (and b!5066358 (not res!2157173)) b!5066359))

(declare-fun m!6108398 () Bool)

(assert (=> b!5066357 m!6108398))

(declare-fun m!6108400 () Bool)

(assert (=> b!5066359 m!6108400))

(assert (=> start!535090 d!1633409))

(declare-fun b!5066364 () Bool)

(declare-fun e!3161703 () Bool)

(declare-fun tp_is_empty!37051 () Bool)

(declare-fun tp!1414754 () Bool)

(assert (=> b!5066364 (= e!3161703 (and tp_is_empty!37051 tp!1414754))))

(assert (=> b!5065939 (= tp!1414726 e!3161703)))

(assert (= (and b!5065939 ((_ is Cons!58434) (innerList!15652 (xs!18914 xs!286)))) b!5066364))

(declare-fun b!5066373 () Bool)

(declare-fun e!3161709 () Bool)

(declare-fun tp!1414762 () Bool)

(declare-fun tp!1414763 () Bool)

(assert (=> b!5066373 (= e!3161709 (and (inv!77556 (left!42816 (left!42816 xs!286))) tp!1414762 (inv!77556 (right!43146 (left!42816 xs!286))) tp!1414763))))

(declare-fun b!5066375 () Bool)

(declare-fun e!3161708 () Bool)

(declare-fun tp!1414761 () Bool)

(assert (=> b!5066375 (= e!3161708 tp!1414761)))

(declare-fun b!5066374 () Bool)

(assert (=> b!5066374 (= e!3161709 (and (inv!77555 (xs!18914 (left!42816 xs!286))) e!3161708))))

(assert (=> b!5065935 (= tp!1414725 (and (inv!77556 (left!42816 xs!286)) e!3161709))))

(assert (= (and b!5065935 ((_ is Node!15564) (left!42816 xs!286))) b!5066373))

(assert (= b!5066374 b!5066375))

(assert (= (and b!5065935 ((_ is Leaf!25851) (left!42816 xs!286))) b!5066374))

(declare-fun m!6108402 () Bool)

(assert (=> b!5066373 m!6108402))

(declare-fun m!6108404 () Bool)

(assert (=> b!5066373 m!6108404))

(declare-fun m!6108406 () Bool)

(assert (=> b!5066374 m!6108406))

(assert (=> b!5065935 m!6107998))

(declare-fun b!5066376 () Bool)

(declare-fun tp!1414765 () Bool)

(declare-fun tp!1414766 () Bool)

(declare-fun e!3161711 () Bool)

(assert (=> b!5066376 (= e!3161711 (and (inv!77556 (left!42816 (right!43146 xs!286))) tp!1414765 (inv!77556 (right!43146 (right!43146 xs!286))) tp!1414766))))

(declare-fun b!5066378 () Bool)

(declare-fun e!3161710 () Bool)

(declare-fun tp!1414764 () Bool)

(assert (=> b!5066378 (= e!3161710 tp!1414764)))

(declare-fun b!5066377 () Bool)

(assert (=> b!5066377 (= e!3161711 (and (inv!77555 (xs!18914 (right!43146 xs!286))) e!3161710))))

(assert (=> b!5065935 (= tp!1414727 (and (inv!77556 (right!43146 xs!286)) e!3161711))))

(assert (= (and b!5065935 ((_ is Node!15564) (right!43146 xs!286))) b!5066376))

(assert (= b!5066377 b!5066378))

(assert (= (and b!5065935 ((_ is Leaf!25851) (right!43146 xs!286))) b!5066377))

(declare-fun m!6108408 () Bool)

(assert (=> b!5066376 m!6108408))

(declare-fun m!6108410 () Bool)

(assert (=> b!5066376 m!6108410))

(declare-fun m!6108412 () Bool)

(assert (=> b!5066377 m!6108412))

(assert (=> b!5065935 m!6108000))

(declare-fun b!5066379 () Bool)

(declare-fun e!3161712 () Bool)

(declare-fun tp!1414767 () Bool)

(assert (=> b!5066379 (= e!3161712 (and tp_is_empty!37051 tp!1414767))))

(assert (=> b!5065941 (= tp!1414724 e!3161712)))

(assert (= (and b!5065941 ((_ is Cons!58434) (innerList!15652 (xs!18914 ys!41)))) b!5066379))

(declare-fun b!5066380 () Bool)

(declare-fun tp!1414770 () Bool)

(declare-fun e!3161714 () Bool)

(declare-fun tp!1414769 () Bool)

(assert (=> b!5066380 (= e!3161714 (and (inv!77556 (left!42816 (left!42816 ys!41))) tp!1414769 (inv!77556 (right!43146 (left!42816 ys!41))) tp!1414770))))

(declare-fun b!5066382 () Bool)

(declare-fun e!3161713 () Bool)

(declare-fun tp!1414768 () Bool)

(assert (=> b!5066382 (= e!3161713 tp!1414768)))

(declare-fun b!5066381 () Bool)

(assert (=> b!5066381 (= e!3161714 (and (inv!77555 (xs!18914 (left!42816 ys!41))) e!3161713))))

(assert (=> b!5065942 (= tp!1414728 (and (inv!77556 (left!42816 ys!41)) e!3161714))))

(assert (= (and b!5065942 ((_ is Node!15564) (left!42816 ys!41))) b!5066380))

(assert (= b!5066381 b!5066382))

(assert (= (and b!5065942 ((_ is Leaf!25851) (left!42816 ys!41))) b!5066381))

(declare-fun m!6108414 () Bool)

(assert (=> b!5066380 m!6108414))

(declare-fun m!6108416 () Bool)

(assert (=> b!5066380 m!6108416))

(declare-fun m!6108418 () Bool)

(assert (=> b!5066381 m!6108418))

(assert (=> b!5065942 m!6107984))

(declare-fun e!3161716 () Bool)

(declare-fun tp!1414772 () Bool)

(declare-fun tp!1414773 () Bool)

(declare-fun b!5066383 () Bool)

(assert (=> b!5066383 (= e!3161716 (and (inv!77556 (left!42816 (right!43146 ys!41))) tp!1414772 (inv!77556 (right!43146 (right!43146 ys!41))) tp!1414773))))

(declare-fun b!5066385 () Bool)

(declare-fun e!3161715 () Bool)

(declare-fun tp!1414771 () Bool)

(assert (=> b!5066385 (= e!3161715 tp!1414771)))

(declare-fun b!5066384 () Bool)

(assert (=> b!5066384 (= e!3161716 (and (inv!77555 (xs!18914 (right!43146 ys!41))) e!3161715))))

(assert (=> b!5065942 (= tp!1414729 (and (inv!77556 (right!43146 ys!41)) e!3161716))))

(assert (= (and b!5065942 ((_ is Node!15564) (right!43146 ys!41))) b!5066383))

(assert (= b!5066384 b!5066385))

(assert (= (and b!5065942 ((_ is Leaf!25851) (right!43146 ys!41))) b!5066384))

(declare-fun m!6108420 () Bool)

(assert (=> b!5066383 m!6108420))

(declare-fun m!6108422 () Bool)

(assert (=> b!5066383 m!6108422))

(declare-fun m!6108424 () Bool)

(assert (=> b!5066384 m!6108424))

(assert (=> b!5065942 m!6107986))

(check-sat (not d!1633355) (not b!5066066) (not b!5066352) (not b!5066343) (not b!5066131) (not b!5065964) (not b!5065942) (not b!5066135) (not b!5066381) (not b!5066332) (not b!5066315) (not bm!352992) (not d!1633313) (not b!5066383) (not bm!352988) (not b!5066354) (not b!5066054) tp_is_empty!37051 (not b!5066088) (not b!5066344) (not b!5066359) (not b!5066373) (not b!5066333) (not b!5066346) (not b!5066049) (not b!5066385) (not b!5066070) (not b!5066377) (not bm!352998) (not b!5066136) (not b!5066317) (not b!5066375) (not b!5066380) (not b!5066347) (not b!5066345) (not b!5066053) (not b!5066048) (not b!5065985) (not b!5065966) (not b!5066374) (not b!5066087) (not b!5065935) (not b!5065967) (not b!5065989) (not b!5066348) (not b!5066351) (not b!5066384) (not bm!352993) (not d!1633367) (not bm!352994) (not b!5065962) (not b!5066336) (not b!5066322) (not b!5066338) (not b!5066350) (not b!5066356) (not b!5066047) (not b!5066349) (not b!5066378) (not bm!352995) (not b!5066357) (not b!5066318) (not b!5066132) (not b!5066127) (not b!5066353) (not b!5065963) (not b!5065965) (not b!5066126) (not d!1633357) (not b!5066364) (not b!5065991) (not b!5066376) (not b!5065983) (not d!1633371) (not b!5066379) (not b!5066342) (not d!1633361) (not b!5066046) (not bm!352987) (not b!5066341) (not b!5066382) (not b!5066339))
(check-sat)
(get-model)

(declare-fun d!1633411 () Bool)

(declare-fun c!869690 () Bool)

(assert (=> d!1633411 (= c!869690 ((_ is Node!15564) (left!42816 (right!43146 xs!286))))))

(declare-fun e!3161717 () Bool)

(assert (=> d!1633411 (= (inv!77556 (left!42816 (right!43146 xs!286))) e!3161717)))

(declare-fun b!5066386 () Bool)

(assert (=> b!5066386 (= e!3161717 (inv!77559 (left!42816 (right!43146 xs!286))))))

(declare-fun b!5066387 () Bool)

(declare-fun e!3161718 () Bool)

(assert (=> b!5066387 (= e!3161717 e!3161718)))

(declare-fun res!2157174 () Bool)

(assert (=> b!5066387 (= res!2157174 (not ((_ is Leaf!25851) (left!42816 (right!43146 xs!286)))))))

(assert (=> b!5066387 (=> res!2157174 e!3161718)))

(declare-fun b!5066388 () Bool)

(assert (=> b!5066388 (= e!3161718 (inv!77560 (left!42816 (right!43146 xs!286))))))

(assert (= (and d!1633411 c!869690) b!5066386))

(assert (= (and d!1633411 (not c!869690)) b!5066387))

(assert (= (and b!5066387 (not res!2157174)) b!5066388))

(declare-fun m!6108426 () Bool)

(assert (=> b!5066386 m!6108426))

(declare-fun m!6108428 () Bool)

(assert (=> b!5066388 m!6108428))

(assert (=> b!5066376 d!1633411))

(declare-fun d!1633413 () Bool)

(declare-fun c!869691 () Bool)

(assert (=> d!1633413 (= c!869691 ((_ is Node!15564) (right!43146 (right!43146 xs!286))))))

(declare-fun e!3161719 () Bool)

(assert (=> d!1633413 (= (inv!77556 (right!43146 (right!43146 xs!286))) e!3161719)))

(declare-fun b!5066389 () Bool)

(assert (=> b!5066389 (= e!3161719 (inv!77559 (right!43146 (right!43146 xs!286))))))

(declare-fun b!5066390 () Bool)

(declare-fun e!3161720 () Bool)

(assert (=> b!5066390 (= e!3161719 e!3161720)))

(declare-fun res!2157175 () Bool)

(assert (=> b!5066390 (= res!2157175 (not ((_ is Leaf!25851) (right!43146 (right!43146 xs!286)))))))

(assert (=> b!5066390 (=> res!2157175 e!3161720)))

(declare-fun b!5066391 () Bool)

(assert (=> b!5066391 (= e!3161720 (inv!77560 (right!43146 (right!43146 xs!286))))))

(assert (= (and d!1633413 c!869691) b!5066389))

(assert (= (and d!1633413 (not c!869691)) b!5066390))

(assert (= (and b!5066390 (not res!2157175)) b!5066391))

(declare-fun m!6108430 () Bool)

(assert (=> b!5066389 m!6108430))

(declare-fun m!6108432 () Bool)

(assert (=> b!5066391 m!6108432))

(assert (=> b!5066376 d!1633413))

(declare-fun bm!353009 () Bool)

(declare-fun call!353016 () List!58558)

(declare-fun call!353017 () List!58558)

(assert (=> bm!353009 (= call!353016 (++!12789 call!353017 (list!18989 ys!41)))))

(declare-fun bm!353010 () Bool)

(declare-fun call!353015 () List!58558)

(assert (=> bm!353010 (= call!353015 (++!12789 (list!18989 (right!43146 xs!286)) (list!18989 ys!41)))))

(declare-fun bm!353011 () Bool)

(declare-fun call!353014 () List!58558)

(assert (=> bm!353011 (= call!353014 (++!12789 (list!18989 (left!42816 xs!286)) call!353015))))

(declare-fun b!5066397 () Bool)

(declare-fun e!3161723 () Bool)

(assert (=> b!5066397 (= e!3161723 (= call!353016 call!353014))))

(declare-fun bm!353012 () Bool)

(assert (=> bm!353012 (= call!353017 (++!12789 (list!18989 (left!42816 xs!286)) (list!18989 (right!43146 xs!286))))))

(declare-fun d!1633415 () Bool)

(assert (=> d!1633415 e!3161723))

(declare-fun c!869694 () Bool)

(assert (=> d!1633415 (= c!869694 ((_ is Nil!58434) (list!18989 (left!42816 xs!286))))))

(assert (=> d!1633415 (= (appendAssoc!301 (list!18989 (left!42816 xs!286)) (list!18989 (right!43146 xs!286)) (list!18989 ys!41)) true)))

(declare-fun b!5066396 () Bool)

(assert (=> b!5066396 (= e!3161723 (= call!353016 call!353014))))

(declare-fun lt!2088912 () Bool)

(assert (=> b!5066396 (= lt!2088912 (appendAssoc!301 (t!371291 (list!18989 (left!42816 xs!286))) (list!18989 (right!43146 xs!286)) (list!18989 ys!41)))))

(assert (= (and d!1633415 c!869694) b!5066397))

(assert (= (and d!1633415 (not c!869694)) b!5066396))

(assert (= (or b!5066397 b!5066396) bm!353012))

(assert (= (or b!5066397 b!5066396) bm!353010))

(assert (= (or b!5066397 b!5066396) bm!353011))

(assert (= (or b!5066397 b!5066396) bm!353009))

(assert (=> bm!353011 m!6108112))

(declare-fun m!6108434 () Bool)

(assert (=> bm!353011 m!6108434))

(assert (=> bm!353012 m!6108112))

(assert (=> bm!353012 m!6108116))

(assert (=> bm!353012 m!6108174))

(assert (=> bm!353010 m!6108116))

(assert (=> bm!353010 m!6107974))

(declare-fun m!6108436 () Bool)

(assert (=> bm!353010 m!6108436))

(assert (=> b!5066396 m!6108116))

(assert (=> b!5066396 m!6107974))

(declare-fun m!6108438 () Bool)

(assert (=> b!5066396 m!6108438))

(assert (=> bm!353009 m!6107974))

(declare-fun m!6108440 () Bool)

(assert (=> bm!353009 m!6108440))

(assert (=> b!5066054 d!1633415))

(declare-fun d!1633417 () Bool)

(declare-fun c!869695 () Bool)

(assert (=> d!1633417 (= c!869695 ((_ is Empty!15564) (left!42816 xs!286)))))

(declare-fun e!3161724 () List!58558)

(assert (=> d!1633417 (= (list!18989 (left!42816 xs!286)) e!3161724)))

(declare-fun b!5066399 () Bool)

(declare-fun e!3161725 () List!58558)

(assert (=> b!5066399 (= e!3161724 e!3161725)))

(declare-fun c!869696 () Bool)

(assert (=> b!5066399 (= c!869696 ((_ is Leaf!25851) (left!42816 xs!286)))))

(declare-fun b!5066398 () Bool)

(assert (=> b!5066398 (= e!3161724 Nil!58434)))

(declare-fun b!5066401 () Bool)

(assert (=> b!5066401 (= e!3161725 (++!12789 (list!18989 (left!42816 (left!42816 xs!286))) (list!18989 (right!43146 (left!42816 xs!286)))))))

(declare-fun b!5066400 () Bool)

(assert (=> b!5066400 (= e!3161725 (list!18990 (xs!18914 (left!42816 xs!286))))))

(assert (= (and d!1633417 c!869695) b!5066398))

(assert (= (and d!1633417 (not c!869695)) b!5066399))

(assert (= (and b!5066399 c!869696) b!5066400))

(assert (= (and b!5066399 (not c!869696)) b!5066401))

(declare-fun m!6108442 () Bool)

(assert (=> b!5066401 m!6108442))

(declare-fun m!6108444 () Bool)

(assert (=> b!5066401 m!6108444))

(assert (=> b!5066401 m!6108442))

(assert (=> b!5066401 m!6108444))

(declare-fun m!6108446 () Bool)

(assert (=> b!5066401 m!6108446))

(declare-fun m!6108448 () Bool)

(assert (=> b!5066400 m!6108448))

(assert (=> b!5066054 d!1633417))

(declare-fun d!1633419 () Bool)

(declare-fun c!869697 () Bool)

(assert (=> d!1633419 (= c!869697 ((_ is Empty!15564) (right!43146 xs!286)))))

(declare-fun e!3161726 () List!58558)

(assert (=> d!1633419 (= (list!18989 (right!43146 xs!286)) e!3161726)))

(declare-fun b!5066403 () Bool)

(declare-fun e!3161727 () List!58558)

(assert (=> b!5066403 (= e!3161726 e!3161727)))

(declare-fun c!869698 () Bool)

(assert (=> b!5066403 (= c!869698 ((_ is Leaf!25851) (right!43146 xs!286)))))

(declare-fun b!5066402 () Bool)

(assert (=> b!5066402 (= e!3161726 Nil!58434)))

(declare-fun b!5066405 () Bool)

(assert (=> b!5066405 (= e!3161727 (++!12789 (list!18989 (left!42816 (right!43146 xs!286))) (list!18989 (right!43146 (right!43146 xs!286)))))))

(declare-fun b!5066404 () Bool)

(assert (=> b!5066404 (= e!3161727 (list!18990 (xs!18914 (right!43146 xs!286))))))

(assert (= (and d!1633419 c!869697) b!5066402))

(assert (= (and d!1633419 (not c!869697)) b!5066403))

(assert (= (and b!5066403 c!869698) b!5066404))

(assert (= (and b!5066403 (not c!869698)) b!5066405))

(assert (=> b!5066405 m!6108092))

(assert (=> b!5066405 m!6108094))

(assert (=> b!5066405 m!6108092))

(assert (=> b!5066405 m!6108094))

(declare-fun m!6108450 () Bool)

(assert (=> b!5066405 m!6108450))

(declare-fun m!6108452 () Bool)

(assert (=> b!5066404 m!6108452))

(assert (=> b!5066054 d!1633419))

(assert (=> b!5066054 d!1633365))

(declare-fun d!1633421 () Bool)

(declare-fun lt!2088915 () Int)

(assert (=> d!1633421 (>= lt!2088915 0)))

(declare-fun e!3161730 () Int)

(assert (=> d!1633421 (= lt!2088915 e!3161730)))

(declare-fun c!869701 () Bool)

(assert (=> d!1633421 (= c!869701 ((_ is Nil!58434) (innerList!15652 (xs!18914 ys!41))))))

(assert (=> d!1633421 (= (size!39074 (innerList!15652 (xs!18914 ys!41))) lt!2088915)))

(declare-fun b!5066410 () Bool)

(assert (=> b!5066410 (= e!3161730 0)))

(declare-fun b!5066411 () Bool)

(assert (=> b!5066411 (= e!3161730 (+ 1 (size!39074 (t!371291 (innerList!15652 (xs!18914 ys!41))))))))

(assert (= (and d!1633421 c!869701) b!5066410))

(assert (= (and d!1633421 (not c!869701)) b!5066411))

(declare-fun m!6108454 () Bool)

(assert (=> b!5066411 m!6108454))

(assert (=> d!1633367 d!1633421))

(declare-fun d!1633423 () Bool)

(assert (=> d!1633423 (= (height!2141 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) (ite ((_ is Empty!15564) (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) 0 (ite ((_ is Leaf!25851) (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) 1 (cheight!15775 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))))

(assert (=> b!5066066 d!1633423))

(assert (=> b!5066066 d!1633369))

(declare-fun d!1633425 () Bool)

(declare-fun lt!2088918 () Int)

(assert (=> d!1633425 (= lt!2088918 (size!39074 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(assert (=> d!1633425 (= lt!2088918 (ite ((_ is Empty!15564) (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) 0 (ite ((_ is Leaf!25851) (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) (csize!31359 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) (csize!31358 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))))

(assert (=> d!1633425 (= (size!39075 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) lt!2088918)))

(declare-fun bs!1189890 () Bool)

(assert (= bs!1189890 d!1633425))

(assert (=> bs!1189890 m!6107990))

(assert (=> bs!1189890 m!6108126))

(assert (=> bs!1189890 m!6108126))

(declare-fun m!6108456 () Bool)

(assert (=> bs!1189890 m!6108456))

(assert (=> b!5066066 d!1633425))

(declare-fun d!1633427 () Bool)

(declare-fun lt!2088919 () Int)

(assert (=> d!1633427 (= lt!2088919 (size!39074 (list!18989 lt!2088865)))))

(assert (=> d!1633427 (= lt!2088919 (ite ((_ is Empty!15564) lt!2088865) 0 (ite ((_ is Leaf!25851) lt!2088865) (csize!31359 lt!2088865) (csize!31358 lt!2088865))))))

(assert (=> d!1633427 (= (size!39075 lt!2088865) lt!2088919)))

(declare-fun bs!1189891 () Bool)

(assert (= bs!1189891 d!1633427))

(assert (=> bs!1189891 m!6108128))

(assert (=> bs!1189891 m!6108128))

(declare-fun m!6108458 () Bool)

(assert (=> bs!1189891 m!6108458))

(assert (=> b!5066066 d!1633427))

(declare-fun d!1633429 () Bool)

(assert (=> d!1633429 (= (max!0 (height!2141 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) (height!2141 lt!2088865)) (ite (< (height!2141 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) (height!2141 lt!2088865)) (height!2141 lt!2088865) (height!2141 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(assert (=> b!5066066 d!1633429))

(declare-fun b!5066414 () Bool)

(declare-fun res!2157177 () Bool)

(declare-fun e!3161731 () Bool)

(assert (=> b!5066414 (=> (not res!2157177) (not e!3161731))))

(declare-fun lt!2088920 () List!58558)

(assert (=> b!5066414 (= res!2157177 (= (size!39074 lt!2088920) (+ (size!39074 (list!18989 (left!42816 xs!286))) (size!39074 (list!18989 (right!43146 xs!286))))))))

(declare-fun b!5066415 () Bool)

(assert (=> b!5066415 (= e!3161731 (or (not (= (list!18989 (right!43146 xs!286)) Nil!58434)) (= lt!2088920 (list!18989 (left!42816 xs!286)))))))

(declare-fun b!5066413 () Bool)

(declare-fun e!3161732 () List!58558)

(assert (=> b!5066413 (= e!3161732 (Cons!58434 (h!64882 (list!18989 (left!42816 xs!286))) (++!12789 (t!371291 (list!18989 (left!42816 xs!286))) (list!18989 (right!43146 xs!286)))))))

(declare-fun b!5066412 () Bool)

(assert (=> b!5066412 (= e!3161732 (list!18989 (right!43146 xs!286)))))

(declare-fun d!1633431 () Bool)

(assert (=> d!1633431 e!3161731))

(declare-fun res!2157176 () Bool)

(assert (=> d!1633431 (=> (not res!2157176) (not e!3161731))))

(assert (=> d!1633431 (= res!2157176 (= (content!10417 lt!2088920) ((_ map or) (content!10417 (list!18989 (left!42816 xs!286))) (content!10417 (list!18989 (right!43146 xs!286))))))))

(assert (=> d!1633431 (= lt!2088920 e!3161732)))

(declare-fun c!869702 () Bool)

(assert (=> d!1633431 (= c!869702 ((_ is Nil!58434) (list!18989 (left!42816 xs!286))))))

(assert (=> d!1633431 (= (++!12789 (list!18989 (left!42816 xs!286)) (list!18989 (right!43146 xs!286))) lt!2088920)))

(assert (= (and d!1633431 c!869702) b!5066412))

(assert (= (and d!1633431 (not c!869702)) b!5066413))

(assert (= (and d!1633431 res!2157176) b!5066414))

(assert (= (and b!5066414 res!2157177) b!5066415))

(declare-fun m!6108460 () Bool)

(assert (=> b!5066414 m!6108460))

(assert (=> b!5066414 m!6108112))

(declare-fun m!6108462 () Bool)

(assert (=> b!5066414 m!6108462))

(assert (=> b!5066414 m!6108116))

(declare-fun m!6108464 () Bool)

(assert (=> b!5066414 m!6108464))

(assert (=> b!5066413 m!6108116))

(declare-fun m!6108466 () Bool)

(assert (=> b!5066413 m!6108466))

(declare-fun m!6108468 () Bool)

(assert (=> d!1633431 m!6108468))

(assert (=> d!1633431 m!6108112))

(declare-fun m!6108470 () Bool)

(assert (=> d!1633431 m!6108470))

(assert (=> d!1633431 m!6108116))

(declare-fun m!6108472 () Bool)

(assert (=> d!1633431 m!6108472))

(assert (=> b!5066132 d!1633431))

(assert (=> b!5066132 d!1633417))

(assert (=> b!5066132 d!1633419))

(declare-fun d!1633433 () Bool)

(declare-fun c!869703 () Bool)

(assert (=> d!1633433 (= c!869703 ((_ is Empty!15564) lt!2088908))))

(declare-fun e!3161733 () List!58558)

(assert (=> d!1633433 (= (list!18989 lt!2088908) e!3161733)))

(declare-fun b!5066417 () Bool)

(declare-fun e!3161734 () List!58558)

(assert (=> b!5066417 (= e!3161733 e!3161734)))

(declare-fun c!869704 () Bool)

(assert (=> b!5066417 (= c!869704 ((_ is Leaf!25851) lt!2088908))))

(declare-fun b!5066416 () Bool)

(assert (=> b!5066416 (= e!3161733 Nil!58434)))

(declare-fun b!5066419 () Bool)

(assert (=> b!5066419 (= e!3161734 (++!12789 (list!18989 (left!42816 lt!2088908)) (list!18989 (right!43146 lt!2088908))))))

(declare-fun b!5066418 () Bool)

(assert (=> b!5066418 (= e!3161734 (list!18990 (xs!18914 lt!2088908)))))

(assert (= (and d!1633433 c!869703) b!5066416))

(assert (= (and d!1633433 (not c!869703)) b!5066417))

(assert (= (and b!5066417 c!869704) b!5066418))

(assert (= (and b!5066417 (not c!869704)) b!5066419))

(declare-fun m!6108474 () Bool)

(assert (=> b!5066419 m!6108474))

(declare-fun m!6108476 () Bool)

(assert (=> b!5066419 m!6108476))

(assert (=> b!5066419 m!6108474))

(assert (=> b!5066419 m!6108476))

(declare-fun m!6108478 () Bool)

(assert (=> b!5066419 m!6108478))

(declare-fun m!6108480 () Bool)

(assert (=> b!5066418 m!6108480))

(assert (=> b!5066322 d!1633433))

(declare-fun b!5066422 () Bool)

(declare-fun res!2157179 () Bool)

(declare-fun e!3161735 () Bool)

(assert (=> b!5066422 (=> (not res!2157179) (not e!3161735))))

(declare-fun lt!2088921 () List!58558)

(assert (=> b!5066422 (= res!2157179 (= (size!39074 lt!2088921) (+ (size!39074 (list!18989 (right!43146 (right!43146 xs!286)))) (size!39074 (list!18989 ys!41)))))))

(declare-fun b!5066423 () Bool)

(assert (=> b!5066423 (= e!3161735 (or (not (= (list!18989 ys!41) Nil!58434)) (= lt!2088921 (list!18989 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5066421 () Bool)

(declare-fun e!3161736 () List!58558)

(assert (=> b!5066421 (= e!3161736 (Cons!58434 (h!64882 (list!18989 (right!43146 (right!43146 xs!286)))) (++!12789 (t!371291 (list!18989 (right!43146 (right!43146 xs!286)))) (list!18989 ys!41))))))

(declare-fun b!5066420 () Bool)

(assert (=> b!5066420 (= e!3161736 (list!18989 ys!41))))

(declare-fun d!1633435 () Bool)

(assert (=> d!1633435 e!3161735))

(declare-fun res!2157178 () Bool)

(assert (=> d!1633435 (=> (not res!2157178) (not e!3161735))))

(assert (=> d!1633435 (= res!2157178 (= (content!10417 lt!2088921) ((_ map or) (content!10417 (list!18989 (right!43146 (right!43146 xs!286)))) (content!10417 (list!18989 ys!41)))))))

(assert (=> d!1633435 (= lt!2088921 e!3161736)))

(declare-fun c!869705 () Bool)

(assert (=> d!1633435 (= c!869705 ((_ is Nil!58434) (list!18989 (right!43146 (right!43146 xs!286)))))))

(assert (=> d!1633435 (= (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)) lt!2088921)))

(assert (= (and d!1633435 c!869705) b!5066420))

(assert (= (and d!1633435 (not c!869705)) b!5066421))

(assert (= (and d!1633435 res!2157178) b!5066422))

(assert (= (and b!5066422 res!2157179) b!5066423))

(declare-fun m!6108482 () Bool)

(assert (=> b!5066422 m!6108482))

(assert (=> b!5066422 m!6108094))

(declare-fun m!6108484 () Bool)

(assert (=> b!5066422 m!6108484))

(assert (=> b!5066422 m!6107974))

(assert (=> b!5066422 m!6108164))

(assert (=> b!5066421 m!6107974))

(declare-fun m!6108486 () Bool)

(assert (=> b!5066421 m!6108486))

(declare-fun m!6108488 () Bool)

(assert (=> d!1633435 m!6108488))

(assert (=> d!1633435 m!6108094))

(declare-fun m!6108490 () Bool)

(assert (=> d!1633435 m!6108490))

(assert (=> d!1633435 m!6107974))

(assert (=> d!1633435 m!6108172))

(assert (=> b!5066322 d!1633435))

(declare-fun d!1633437 () Bool)

(declare-fun c!869706 () Bool)

(assert (=> d!1633437 (= c!869706 ((_ is Empty!15564) (right!43146 (right!43146 xs!286))))))

(declare-fun e!3161737 () List!58558)

(assert (=> d!1633437 (= (list!18989 (right!43146 (right!43146 xs!286))) e!3161737)))

(declare-fun b!5066425 () Bool)

(declare-fun e!3161738 () List!58558)

(assert (=> b!5066425 (= e!3161737 e!3161738)))

(declare-fun c!869707 () Bool)

(assert (=> b!5066425 (= c!869707 ((_ is Leaf!25851) (right!43146 (right!43146 xs!286))))))

(declare-fun b!5066424 () Bool)

(assert (=> b!5066424 (= e!3161737 Nil!58434)))

(declare-fun b!5066427 () Bool)

(assert (=> b!5066427 (= e!3161738 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) (list!18989 (right!43146 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5066426 () Bool)

(assert (=> b!5066426 (= e!3161738 (list!18990 (xs!18914 (right!43146 (right!43146 xs!286)))))))

(assert (= (and d!1633437 c!869706) b!5066424))

(assert (= (and d!1633437 (not c!869706)) b!5066425))

(assert (= (and b!5066425 c!869707) b!5066426))

(assert (= (and b!5066425 (not c!869707)) b!5066427))

(declare-fun m!6108492 () Bool)

(assert (=> b!5066427 m!6108492))

(declare-fun m!6108494 () Bool)

(assert (=> b!5066427 m!6108494))

(assert (=> b!5066427 m!6108492))

(assert (=> b!5066427 m!6108494))

(declare-fun m!6108496 () Bool)

(assert (=> b!5066427 m!6108496))

(declare-fun m!6108498 () Bool)

(assert (=> b!5066426 m!6108498))

(assert (=> b!5066322 d!1633437))

(assert (=> b!5066322 d!1633365))

(declare-fun b!5066430 () Bool)

(declare-fun res!2157181 () Bool)

(declare-fun e!3161739 () Bool)

(assert (=> b!5066430 (=> (not res!2157181) (not e!3161739))))

(declare-fun lt!2088922 () List!58558)

(assert (=> b!5066430 (= res!2157181 (= (size!39074 lt!2088922) (+ (size!39074 (list!18989 (left!42816 lt!2088868))) (size!39074 (list!18989 (right!43146 lt!2088868))))))))

(declare-fun b!5066431 () Bool)

(assert (=> b!5066431 (= e!3161739 (or (not (= (list!18989 (right!43146 lt!2088868)) Nil!58434)) (= lt!2088922 (list!18989 (left!42816 lt!2088868)))))))

(declare-fun b!5066429 () Bool)

(declare-fun e!3161740 () List!58558)

(assert (=> b!5066429 (= e!3161740 (Cons!58434 (h!64882 (list!18989 (left!42816 lt!2088868))) (++!12789 (t!371291 (list!18989 (left!42816 lt!2088868))) (list!18989 (right!43146 lt!2088868)))))))

(declare-fun b!5066428 () Bool)

(assert (=> b!5066428 (= e!3161740 (list!18989 (right!43146 lt!2088868)))))

(declare-fun d!1633439 () Bool)

(assert (=> d!1633439 e!3161739))

(declare-fun res!2157180 () Bool)

(assert (=> d!1633439 (=> (not res!2157180) (not e!3161739))))

(assert (=> d!1633439 (= res!2157180 (= (content!10417 lt!2088922) ((_ map or) (content!10417 (list!18989 (left!42816 lt!2088868))) (content!10417 (list!18989 (right!43146 lt!2088868))))))))

(assert (=> d!1633439 (= lt!2088922 e!3161740)))

(declare-fun c!869708 () Bool)

(assert (=> d!1633439 (= c!869708 ((_ is Nil!58434) (list!18989 (left!42816 lt!2088868))))))

(assert (=> d!1633439 (= (++!12789 (list!18989 (left!42816 lt!2088868)) (list!18989 (right!43146 lt!2088868))) lt!2088922)))

(assert (= (and d!1633439 c!869708) b!5066428))

(assert (= (and d!1633439 (not c!869708)) b!5066429))

(assert (= (and d!1633439 res!2157180) b!5066430))

(assert (= (and b!5066430 res!2157181) b!5066431))

(declare-fun m!6108500 () Bool)

(assert (=> b!5066430 m!6108500))

(assert (=> b!5066430 m!6108152))

(declare-fun m!6108502 () Bool)

(assert (=> b!5066430 m!6108502))

(assert (=> b!5066430 m!6108154))

(declare-fun m!6108504 () Bool)

(assert (=> b!5066430 m!6108504))

(assert (=> b!5066429 m!6108154))

(declare-fun m!6108506 () Bool)

(assert (=> b!5066429 m!6108506))

(declare-fun m!6108508 () Bool)

(assert (=> d!1633439 m!6108508))

(assert (=> d!1633439 m!6108152))

(declare-fun m!6108510 () Bool)

(assert (=> d!1633439 m!6108510))

(assert (=> d!1633439 m!6108154))

(declare-fun m!6108512 () Bool)

(assert (=> d!1633439 m!6108512))

(assert (=> b!5066088 d!1633439))

(declare-fun d!1633441 () Bool)

(declare-fun c!869709 () Bool)

(assert (=> d!1633441 (= c!869709 ((_ is Empty!15564) (left!42816 lt!2088868)))))

(declare-fun e!3161741 () List!58558)

(assert (=> d!1633441 (= (list!18989 (left!42816 lt!2088868)) e!3161741)))

(declare-fun b!5066433 () Bool)

(declare-fun e!3161742 () List!58558)

(assert (=> b!5066433 (= e!3161741 e!3161742)))

(declare-fun c!869710 () Bool)

(assert (=> b!5066433 (= c!869710 ((_ is Leaf!25851) (left!42816 lt!2088868)))))

(declare-fun b!5066432 () Bool)

(assert (=> b!5066432 (= e!3161741 Nil!58434)))

(declare-fun b!5066435 () Bool)

(assert (=> b!5066435 (= e!3161742 (++!12789 (list!18989 (left!42816 (left!42816 lt!2088868))) (list!18989 (right!43146 (left!42816 lt!2088868)))))))

(declare-fun b!5066434 () Bool)

(assert (=> b!5066434 (= e!3161742 (list!18990 (xs!18914 (left!42816 lt!2088868))))))

(assert (= (and d!1633441 c!869709) b!5066432))

(assert (= (and d!1633441 (not c!869709)) b!5066433))

(assert (= (and b!5066433 c!869710) b!5066434))

(assert (= (and b!5066433 (not c!869710)) b!5066435))

(declare-fun m!6108514 () Bool)

(assert (=> b!5066435 m!6108514))

(declare-fun m!6108516 () Bool)

(assert (=> b!5066435 m!6108516))

(assert (=> b!5066435 m!6108514))

(assert (=> b!5066435 m!6108516))

(declare-fun m!6108518 () Bool)

(assert (=> b!5066435 m!6108518))

(declare-fun m!6108520 () Bool)

(assert (=> b!5066434 m!6108520))

(assert (=> b!5066088 d!1633441))

(declare-fun d!1633443 () Bool)

(declare-fun c!869711 () Bool)

(assert (=> d!1633443 (= c!869711 ((_ is Empty!15564) (right!43146 lt!2088868)))))

(declare-fun e!3161743 () List!58558)

(assert (=> d!1633443 (= (list!18989 (right!43146 lt!2088868)) e!3161743)))

(declare-fun b!5066437 () Bool)

(declare-fun e!3161744 () List!58558)

(assert (=> b!5066437 (= e!3161743 e!3161744)))

(declare-fun c!869712 () Bool)

(assert (=> b!5066437 (= c!869712 ((_ is Leaf!25851) (right!43146 lt!2088868)))))

(declare-fun b!5066436 () Bool)

(assert (=> b!5066436 (= e!3161743 Nil!58434)))

(declare-fun b!5066439 () Bool)

(assert (=> b!5066439 (= e!3161744 (++!12789 (list!18989 (left!42816 (right!43146 lt!2088868))) (list!18989 (right!43146 (right!43146 lt!2088868)))))))

(declare-fun b!5066438 () Bool)

(assert (=> b!5066438 (= e!3161744 (list!18990 (xs!18914 (right!43146 lt!2088868))))))

(assert (= (and d!1633443 c!869711) b!5066436))

(assert (= (and d!1633443 (not c!869711)) b!5066437))

(assert (= (and b!5066437 c!869712) b!5066438))

(assert (= (and b!5066437 (not c!869712)) b!5066439))

(declare-fun m!6108522 () Bool)

(assert (=> b!5066439 m!6108522))

(declare-fun m!6108524 () Bool)

(assert (=> b!5066439 m!6108524))

(assert (=> b!5066439 m!6108522))

(assert (=> b!5066439 m!6108524))

(declare-fun m!6108526 () Bool)

(assert (=> b!5066439 m!6108526))

(declare-fun m!6108528 () Bool)

(assert (=> b!5066438 m!6108528))

(assert (=> b!5066088 d!1633443))

(declare-fun d!1633445 () Bool)

(declare-fun c!869713 () Bool)

(assert (=> d!1633445 (= c!869713 ((_ is Node!15564) (left!42816 (left!42816 ys!41))))))

(declare-fun e!3161745 () Bool)

(assert (=> d!1633445 (= (inv!77556 (left!42816 (left!42816 ys!41))) e!3161745)))

(declare-fun b!5066440 () Bool)

(assert (=> b!5066440 (= e!3161745 (inv!77559 (left!42816 (left!42816 ys!41))))))

(declare-fun b!5066441 () Bool)

(declare-fun e!3161746 () Bool)

(assert (=> b!5066441 (= e!3161745 e!3161746)))

(declare-fun res!2157182 () Bool)

(assert (=> b!5066441 (= res!2157182 (not ((_ is Leaf!25851) (left!42816 (left!42816 ys!41)))))))

(assert (=> b!5066441 (=> res!2157182 e!3161746)))

(declare-fun b!5066442 () Bool)

(assert (=> b!5066442 (= e!3161746 (inv!77560 (left!42816 (left!42816 ys!41))))))

(assert (= (and d!1633445 c!869713) b!5066440))

(assert (= (and d!1633445 (not c!869713)) b!5066441))

(assert (= (and b!5066441 (not res!2157182)) b!5066442))

(declare-fun m!6108530 () Bool)

(assert (=> b!5066440 m!6108530))

(declare-fun m!6108532 () Bool)

(assert (=> b!5066442 m!6108532))

(assert (=> b!5066380 d!1633445))

(declare-fun d!1633447 () Bool)

(declare-fun c!869714 () Bool)

(assert (=> d!1633447 (= c!869714 ((_ is Node!15564) (right!43146 (left!42816 ys!41))))))

(declare-fun e!3161747 () Bool)

(assert (=> d!1633447 (= (inv!77556 (right!43146 (left!42816 ys!41))) e!3161747)))

(declare-fun b!5066443 () Bool)

(assert (=> b!5066443 (= e!3161747 (inv!77559 (right!43146 (left!42816 ys!41))))))

(declare-fun b!5066444 () Bool)

(declare-fun e!3161748 () Bool)

(assert (=> b!5066444 (= e!3161747 e!3161748)))

(declare-fun res!2157183 () Bool)

(assert (=> b!5066444 (= res!2157183 (not ((_ is Leaf!25851) (right!43146 (left!42816 ys!41)))))))

(assert (=> b!5066444 (=> res!2157183 e!3161748)))

(declare-fun b!5066445 () Bool)

(assert (=> b!5066445 (= e!3161748 (inv!77560 (right!43146 (left!42816 ys!41))))))

(assert (= (and d!1633447 c!869714) b!5066443))

(assert (= (and d!1633447 (not c!869714)) b!5066444))

(assert (= (and b!5066444 (not res!2157183)) b!5066445))

(declare-fun m!6108534 () Bool)

(assert (=> b!5066443 m!6108534))

(declare-fun m!6108536 () Bool)

(assert (=> b!5066445 m!6108536))

(assert (=> b!5066380 d!1633447))

(declare-fun d!1633449 () Bool)

(declare-fun c!869717 () Bool)

(assert (=> d!1633449 (= c!869717 ((_ is Nil!58434) lt!2088886))))

(declare-fun e!3161751 () (InoxSet T!105118))

(assert (=> d!1633449 (= (content!10417 lt!2088886) e!3161751)))

(declare-fun b!5066450 () Bool)

(assert (=> b!5066450 (= e!3161751 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5066451 () Bool)

(assert (=> b!5066451 (= e!3161751 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 lt!2088886) true) (content!10417 (t!371291 lt!2088886))))))

(assert (= (and d!1633449 c!869717) b!5066450))

(assert (= (and d!1633449 (not c!869717)) b!5066451))

(declare-fun m!6108538 () Bool)

(assert (=> b!5066451 m!6108538))

(declare-fun m!6108540 () Bool)

(assert (=> b!5066451 m!6108540))

(assert (=> d!1633361 d!1633449))

(declare-fun d!1633451 () Bool)

(declare-fun c!869718 () Bool)

(assert (=> d!1633451 (= c!869718 ((_ is Nil!58434) (list!18989 xs!286)))))

(declare-fun e!3161752 () (InoxSet T!105118))

(assert (=> d!1633451 (= (content!10417 (list!18989 xs!286)) e!3161752)))

(declare-fun b!5066452 () Bool)

(assert (=> b!5066452 (= e!3161752 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5066453 () Bool)

(assert (=> b!5066453 (= e!3161752 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 xs!286)) true) (content!10417 (t!371291 (list!18989 xs!286)))))))

(assert (= (and d!1633451 c!869718) b!5066452))

(assert (= (and d!1633451 (not c!869718)) b!5066453))

(declare-fun m!6108542 () Bool)

(assert (=> b!5066453 m!6108542))

(declare-fun m!6108544 () Bool)

(assert (=> b!5066453 m!6108544))

(assert (=> d!1633361 d!1633451))

(declare-fun d!1633453 () Bool)

(declare-fun c!869719 () Bool)

(assert (=> d!1633453 (= c!869719 ((_ is Nil!58434) (list!18989 ys!41)))))

(declare-fun e!3161753 () (InoxSet T!105118))

(assert (=> d!1633453 (= (content!10417 (list!18989 ys!41)) e!3161753)))

(declare-fun b!5066454 () Bool)

(assert (=> b!5066454 (= e!3161753 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5066455 () Bool)

(assert (=> b!5066455 (= e!3161753 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 ys!41)) true) (content!10417 (t!371291 (list!18989 ys!41)))))))

(assert (= (and d!1633453 c!869719) b!5066454))

(assert (= (and d!1633453 (not c!869719)) b!5066455))

(declare-fun m!6108546 () Bool)

(assert (=> b!5066455 m!6108546))

(declare-fun m!6108548 () Bool)

(assert (=> b!5066455 m!6108548))

(assert (=> d!1633361 d!1633453))

(declare-fun d!1633455 () Bool)

(declare-fun res!2157188 () Bool)

(declare-fun e!3161756 () Bool)

(assert (=> d!1633455 (=> (not res!2157188) (not e!3161756))))

(assert (=> d!1633455 (= res!2157188 (<= (size!39074 (list!18990 (xs!18914 (left!42816 ys!41)))) 512))))

(assert (=> d!1633455 (= (inv!77560 (left!42816 ys!41)) e!3161756)))

(declare-fun b!5066460 () Bool)

(declare-fun res!2157189 () Bool)

(assert (=> b!5066460 (=> (not res!2157189) (not e!3161756))))

(assert (=> b!5066460 (= res!2157189 (= (csize!31359 (left!42816 ys!41)) (size!39074 (list!18990 (xs!18914 (left!42816 ys!41))))))))

(declare-fun b!5066461 () Bool)

(assert (=> b!5066461 (= e!3161756 (and (> (csize!31359 (left!42816 ys!41)) 0) (<= (csize!31359 (left!42816 ys!41)) 512)))))

(assert (= (and d!1633455 res!2157188) b!5066460))

(assert (= (and b!5066460 res!2157189) b!5066461))

(declare-fun m!6108550 () Bool)

(assert (=> d!1633455 m!6108550))

(assert (=> d!1633455 m!6108550))

(declare-fun m!6108552 () Bool)

(assert (=> d!1633455 m!6108552))

(assert (=> b!5066460 m!6108550))

(assert (=> b!5066460 m!6108550))

(assert (=> b!5066460 m!6108552))

(assert (=> b!5066338 d!1633455))

(assert (=> b!5066070 d!1633309))

(declare-fun d!1633457 () Bool)

(declare-fun lt!2088923 () Int)

(assert (=> d!1633457 (= lt!2088923 (size!39074 (list!18989 (left!42816 (right!43146 xs!286)))))))

(assert (=> d!1633457 (= lt!2088923 (ite ((_ is Empty!15564) (left!42816 (right!43146 xs!286))) 0 (ite ((_ is Leaf!25851) (left!42816 (right!43146 xs!286))) (csize!31359 (left!42816 (right!43146 xs!286))) (csize!31358 (left!42816 (right!43146 xs!286))))))))

(assert (=> d!1633457 (= (size!39075 (left!42816 (right!43146 xs!286))) lt!2088923)))

(declare-fun bs!1189892 () Bool)

(assert (= bs!1189892 d!1633457))

(assert (=> bs!1189892 m!6108092))

(assert (=> bs!1189892 m!6108092))

(declare-fun m!6108554 () Bool)

(assert (=> bs!1189892 m!6108554))

(assert (=> b!5066070 d!1633457))

(declare-fun d!1633459 () Bool)

(assert (=> d!1633459 (= (max!0 (height!2141 (left!42816 xs!286)) (height!2141 (left!42816 (right!43146 xs!286)))) (ite (< (height!2141 (left!42816 xs!286)) (height!2141 (left!42816 (right!43146 xs!286)))) (height!2141 (left!42816 (right!43146 xs!286))) (height!2141 (left!42816 xs!286))))))

(assert (=> b!5066070 d!1633459))

(declare-fun d!1633461 () Bool)

(assert (=> d!1633461 (= (height!2141 (left!42816 (right!43146 xs!286))) (ite ((_ is Empty!15564) (left!42816 (right!43146 xs!286))) 0 (ite ((_ is Leaf!25851) (left!42816 (right!43146 xs!286))) 1 (cheight!15775 (left!42816 (right!43146 xs!286))))))))

(assert (=> b!5066070 d!1633461))

(declare-fun d!1633463 () Bool)

(declare-fun lt!2088924 () Int)

(assert (=> d!1633463 (= lt!2088924 (size!39074 (list!18989 (left!42816 xs!286))))))

(assert (=> d!1633463 (= lt!2088924 (ite ((_ is Empty!15564) (left!42816 xs!286)) 0 (ite ((_ is Leaf!25851) (left!42816 xs!286)) (csize!31359 (left!42816 xs!286)) (csize!31358 (left!42816 xs!286)))))))

(assert (=> d!1633463 (= (size!39075 (left!42816 xs!286)) lt!2088924)))

(declare-fun bs!1189893 () Bool)

(assert (= bs!1189893 d!1633463))

(assert (=> bs!1189893 m!6108112))

(assert (=> bs!1189893 m!6108112))

(assert (=> bs!1189893 m!6108462))

(assert (=> b!5066070 d!1633463))

(assert (=> b!5066332 d!1633327))

(declare-fun d!1633465 () Bool)

(assert (=> d!1633465 (= (height!2141 (right!43146 (right!43146 xs!286))) (ite ((_ is Empty!15564) (right!43146 (right!43146 xs!286))) 0 (ite ((_ is Leaf!25851) (right!43146 (right!43146 xs!286))) 1 (cheight!15775 (right!43146 (right!43146 xs!286))))))))

(assert (=> b!5066332 d!1633465))

(declare-fun d!1633467 () Bool)

(declare-fun res!2157198 () Bool)

(declare-fun e!3161765 () Bool)

(assert (=> d!1633467 (=> (not res!2157198) (not e!3161765))))

(assert (=> d!1633467 (= res!2157198 (= (csize!31358 (left!42816 ys!41)) (+ (size!39075 (left!42816 (left!42816 ys!41))) (size!39075 (right!43146 (left!42816 ys!41))))))))

(assert (=> d!1633467 (= (inv!77559 (left!42816 ys!41)) e!3161765)))

(declare-fun b!5066480 () Bool)

(declare-fun res!2157199 () Bool)

(assert (=> b!5066480 (=> (not res!2157199) (not e!3161765))))

(assert (=> b!5066480 (= res!2157199 (and (not (= (left!42816 (left!42816 ys!41)) Empty!15564)) (not (= (right!43146 (left!42816 ys!41)) Empty!15564))))))

(declare-fun b!5066481 () Bool)

(declare-fun res!2157200 () Bool)

(assert (=> b!5066481 (=> (not res!2157200) (not e!3161765))))

(assert (=> b!5066481 (= res!2157200 (= (cheight!15775 (left!42816 ys!41)) (+ (max!0 (height!2141 (left!42816 (left!42816 ys!41))) (height!2141 (right!43146 (left!42816 ys!41)))) 1)))))

(declare-fun b!5066482 () Bool)

(assert (=> b!5066482 (= e!3161765 (<= 0 (cheight!15775 (left!42816 ys!41))))))

(assert (= (and d!1633467 res!2157198) b!5066480))

(assert (= (and b!5066480 res!2157199) b!5066481))

(assert (= (and b!5066481 res!2157200) b!5066482))

(declare-fun m!6108586 () Bool)

(assert (=> d!1633467 m!6108586))

(declare-fun m!6108588 () Bool)

(assert (=> d!1633467 m!6108588))

(declare-fun m!6108590 () Bool)

(assert (=> b!5066481 m!6108590))

(declare-fun m!6108592 () Bool)

(assert (=> b!5066481 m!6108592))

(assert (=> b!5066481 m!6108590))

(assert (=> b!5066481 m!6108592))

(declare-fun m!6108594 () Bool)

(assert (=> b!5066481 m!6108594))

(assert (=> b!5066336 d!1633467))

(assert (=> b!5065942 d!1633399))

(assert (=> b!5065942 d!1633401))

(declare-fun d!1633477 () Bool)

(declare-fun lt!2088928 () Bool)

(declare-fun isEmpty!31632 (List!58558) Bool)

(assert (=> d!1633477 (= lt!2088928 (isEmpty!31632 (list!18989 (right!43146 xs!286))))))

(assert (=> d!1633477 (= lt!2088928 (= (size!39075 (right!43146 xs!286)) 0))))

(assert (=> d!1633477 (= (isEmpty!31631 (right!43146 xs!286)) lt!2088928)))

(declare-fun bs!1189894 () Bool)

(assert (= bs!1189894 d!1633477))

(assert (=> bs!1189894 m!6108116))

(assert (=> bs!1189894 m!6108116))

(declare-fun m!6108616 () Bool)

(assert (=> bs!1189894 m!6108616))

(declare-fun m!6108618 () Bool)

(assert (=> bs!1189894 m!6108618))

(assert (=> b!5066353 d!1633477))

(declare-fun b!5066493 () Bool)

(declare-fun res!2157209 () Bool)

(declare-fun e!3161771 () Bool)

(assert (=> b!5066493 (=> (not res!2157209) (not e!3161771))))

(assert (=> b!5066493 (= res!2157209 (isBalanced!4426 (left!42816 lt!2088908)))))

(declare-fun b!5066494 () Bool)

(declare-fun e!3161770 () Bool)

(assert (=> b!5066494 (= e!3161770 e!3161771)))

(declare-fun res!2157212 () Bool)

(assert (=> b!5066494 (=> (not res!2157212) (not e!3161771))))

(assert (=> b!5066494 (= res!2157212 (<= (- 1) (- (height!2141 (left!42816 lt!2088908)) (height!2141 (right!43146 lt!2088908)))))))

(declare-fun b!5066495 () Bool)

(declare-fun res!2157207 () Bool)

(assert (=> b!5066495 (=> (not res!2157207) (not e!3161771))))

(assert (=> b!5066495 (= res!2157207 (not (isEmpty!31631 (left!42816 lt!2088908))))))

(declare-fun b!5066497 () Bool)

(declare-fun res!2157211 () Bool)

(assert (=> b!5066497 (=> (not res!2157211) (not e!3161771))))

(assert (=> b!5066497 (= res!2157211 (<= (- (height!2141 (left!42816 lt!2088908)) (height!2141 (right!43146 lt!2088908))) 1))))

(declare-fun b!5066498 () Bool)

(assert (=> b!5066498 (= e!3161771 (not (isEmpty!31631 (right!43146 lt!2088908))))))

(declare-fun b!5066496 () Bool)

(declare-fun res!2157208 () Bool)

(assert (=> b!5066496 (=> (not res!2157208) (not e!3161771))))

(assert (=> b!5066496 (= res!2157208 (isBalanced!4426 (right!43146 lt!2088908)))))

(declare-fun d!1633483 () Bool)

(declare-fun res!2157210 () Bool)

(assert (=> d!1633483 (=> res!2157210 e!3161770)))

(assert (=> d!1633483 (= res!2157210 (not ((_ is Node!15564) lt!2088908)))))

(assert (=> d!1633483 (= (isBalanced!4426 lt!2088908) e!3161770)))

(assert (= (and d!1633483 (not res!2157210)) b!5066494))

(assert (= (and b!5066494 res!2157212) b!5066497))

(assert (= (and b!5066497 res!2157211) b!5066493))

(assert (= (and b!5066493 res!2157209) b!5066496))

(assert (= (and b!5066496 res!2157208) b!5066495))

(assert (= (and b!5066495 res!2157207) b!5066498))

(declare-fun m!6108620 () Bool)

(assert (=> b!5066495 m!6108620))

(declare-fun m!6108622 () Bool)

(assert (=> b!5066493 m!6108622))

(declare-fun m!6108624 () Bool)

(assert (=> b!5066498 m!6108624))

(declare-fun m!6108626 () Bool)

(assert (=> b!5066497 m!6108626))

(declare-fun m!6108628 () Bool)

(assert (=> b!5066497 m!6108628))

(declare-fun m!6108630 () Bool)

(assert (=> b!5066496 m!6108630))

(assert (=> b!5066494 m!6108626))

(assert (=> b!5066494 m!6108628))

(assert (=> b!5066318 d!1633483))

(declare-fun b!5066499 () Bool)

(declare-fun res!2157215 () Bool)

(declare-fun e!3161773 () Bool)

(assert (=> b!5066499 (=> (not res!2157215) (not e!3161773))))

(assert (=> b!5066499 (= res!2157215 (isBalanced!4426 (left!42816 (right!43146 xs!286))))))

(declare-fun b!5066500 () Bool)

(declare-fun e!3161772 () Bool)

(assert (=> b!5066500 (= e!3161772 e!3161773)))

(declare-fun res!2157218 () Bool)

(assert (=> b!5066500 (=> (not res!2157218) (not e!3161773))))

(assert (=> b!5066500 (= res!2157218 (<= (- 1) (- (height!2141 (left!42816 (right!43146 xs!286))) (height!2141 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5066501 () Bool)

(declare-fun res!2157213 () Bool)

(assert (=> b!5066501 (=> (not res!2157213) (not e!3161773))))

(assert (=> b!5066501 (= res!2157213 (not (isEmpty!31631 (left!42816 (right!43146 xs!286)))))))

(declare-fun b!5066503 () Bool)

(declare-fun res!2157217 () Bool)

(assert (=> b!5066503 (=> (not res!2157217) (not e!3161773))))

(assert (=> b!5066503 (= res!2157217 (<= (- (height!2141 (left!42816 (right!43146 xs!286))) (height!2141 (right!43146 (right!43146 xs!286)))) 1))))

(declare-fun b!5066504 () Bool)

(assert (=> b!5066504 (= e!3161773 (not (isEmpty!31631 (right!43146 (right!43146 xs!286)))))))

(declare-fun b!5066502 () Bool)

(declare-fun res!2157214 () Bool)

(assert (=> b!5066502 (=> (not res!2157214) (not e!3161773))))

(assert (=> b!5066502 (= res!2157214 (isBalanced!4426 (right!43146 (right!43146 xs!286))))))

(declare-fun d!1633485 () Bool)

(declare-fun res!2157216 () Bool)

(assert (=> d!1633485 (=> res!2157216 e!3161772)))

(assert (=> d!1633485 (= res!2157216 (not ((_ is Node!15564) (right!43146 xs!286))))))

(assert (=> d!1633485 (= (isBalanced!4426 (right!43146 xs!286)) e!3161772)))

(assert (= (and d!1633485 (not res!2157216)) b!5066500))

(assert (= (and b!5066500 res!2157218) b!5066503))

(assert (= (and b!5066503 res!2157217) b!5066499))

(assert (= (and b!5066499 res!2157215) b!5066502))

(assert (= (and b!5066502 res!2157214) b!5066501))

(assert (= (and b!5066501 res!2157213) b!5066504))

(declare-fun m!6108632 () Bool)

(assert (=> b!5066501 m!6108632))

(declare-fun m!6108634 () Bool)

(assert (=> b!5066499 m!6108634))

(declare-fun m!6108636 () Bool)

(assert (=> b!5066504 m!6108636))

(assert (=> b!5066503 m!6108144))

(assert (=> b!5066503 m!6108346))

(assert (=> b!5066502 m!6108340))

(assert (=> b!5066500 m!6108144))

(assert (=> b!5066500 m!6108346))

(assert (=> b!5066351 d!1633485))

(declare-fun d!1633487 () Bool)

(assert (=> d!1633487 (= (inv!77555 (xs!18914 (right!43146 ys!41))) (<= (size!39074 (innerList!15652 (xs!18914 (right!43146 ys!41)))) 2147483647))))

(declare-fun bs!1189895 () Bool)

(assert (= bs!1189895 d!1633487))

(declare-fun m!6108638 () Bool)

(assert (=> bs!1189895 m!6108638))

(assert (=> b!5066384 d!1633487))

(declare-fun b!5066506 () Bool)

(declare-fun e!3161774 () Conc!15564)

(declare-fun e!3161775 () Conc!15564)

(assert (=> b!5066506 (= e!3161774 e!3161775)))

(declare-fun c!869728 () Bool)

(assert (=> b!5066506 (= c!869728 (= (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))) Empty!15564))))

(declare-fun b!5066507 () Bool)

(assert (=> b!5066507 (= e!3161775 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))))))

(declare-fun lt!2088929 () Conc!15564)

(declare-fun d!1633489 () Bool)

(assert (=> d!1633489 (= (list!18989 lt!2088929) (++!12789 (list!18989 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) (list!18989 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))))))

(assert (=> d!1633489 (= lt!2088929 e!3161774)))

(declare-fun c!869727 () Bool)

(assert (=> d!1633489 (= c!869727 (= (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))) Empty!15564))))

(assert (=> d!1633489 (= (<>!396 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))) (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) lt!2088929)))

(declare-fun b!5066505 () Bool)

(assert (=> b!5066505 (= e!3161774 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))))

(declare-fun b!5066508 () Bool)

(assert (=> b!5066508 (= e!3161775 (Node!15564 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))) (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))) (+ (size!39075 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) (size!39075 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))) (+ (max!0 (height!2141 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) (height!2141 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))) 1)))))

(assert (= (and d!1633489 c!869727) b!5066505))

(assert (= (and d!1633489 (not c!869727)) b!5066506))

(assert (= (and b!5066506 c!869728) b!5066507))

(assert (= (and b!5066506 (not c!869728)) b!5066508))

(declare-fun m!6108640 () Bool)

(assert (=> d!1633489 m!6108640))

(declare-fun m!6108642 () Bool)

(assert (=> d!1633489 m!6108642))

(declare-fun m!6108644 () Bool)

(assert (=> d!1633489 m!6108644))

(assert (=> d!1633489 m!6108642))

(assert (=> d!1633489 m!6108644))

(declare-fun m!6108646 () Bool)

(assert (=> d!1633489 m!6108646))

(declare-fun m!6108648 () Bool)

(assert (=> b!5066508 m!6108648))

(declare-fun m!6108650 () Bool)

(assert (=> b!5066508 m!6108650))

(declare-fun m!6108652 () Bool)

(assert (=> b!5066508 m!6108652))

(assert (=> b!5066508 m!6108648))

(declare-fun m!6108654 () Bool)

(assert (=> b!5066508 m!6108654))

(assert (=> b!5066508 m!6108650))

(declare-fun m!6108656 () Bool)

(assert (=> b!5066508 m!6108656))

(assert (=> bm!352988 d!1633489))

(declare-fun d!1633491 () Bool)

(declare-fun res!2157225 () Bool)

(declare-fun e!3161778 () Bool)

(assert (=> d!1633491 (=> (not res!2157225) (not e!3161778))))

(assert (=> d!1633491 (= res!2157225 (= (csize!31358 (right!43146 xs!286)) (+ (size!39075 (left!42816 (right!43146 xs!286))) (size!39075 (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1633491 (= (inv!77559 (right!43146 xs!286)) e!3161778)))

(declare-fun b!5066515 () Bool)

(declare-fun res!2157226 () Bool)

(assert (=> b!5066515 (=> (not res!2157226) (not e!3161778))))

(assert (=> b!5066515 (= res!2157226 (and (not (= (left!42816 (right!43146 xs!286)) Empty!15564)) (not (= (right!43146 (right!43146 xs!286)) Empty!15564))))))

(declare-fun b!5066516 () Bool)

(declare-fun res!2157227 () Bool)

(assert (=> b!5066516 (=> (not res!2157227) (not e!3161778))))

(assert (=> b!5066516 (= res!2157227 (= (cheight!15775 (right!43146 xs!286)) (+ (max!0 (height!2141 (left!42816 (right!43146 xs!286))) (height!2141 (right!43146 (right!43146 xs!286)))) 1)))))

(declare-fun b!5066517 () Bool)

(assert (=> b!5066517 (= e!3161778 (<= 0 (cheight!15775 (right!43146 xs!286))))))

(assert (= (and d!1633491 res!2157225) b!5066515))

(assert (= (and b!5066515 res!2157226) b!5066516))

(assert (= (and b!5066516 res!2157227) b!5066517))

(assert (=> d!1633491 m!6108148))

(declare-fun m!6108658 () Bool)

(assert (=> d!1633491 m!6108658))

(assert (=> b!5066516 m!6108144))

(assert (=> b!5066516 m!6108346))

(assert (=> b!5066516 m!6108144))

(assert (=> b!5066516 m!6108346))

(declare-fun m!6108660 () Bool)

(assert (=> b!5066516 m!6108660))

(assert (=> b!5065989 d!1633491))

(declare-fun d!1633493 () Bool)

(assert (=> d!1633493 (= (height!2141 (left!42816 lt!2088868)) (ite ((_ is Empty!15564) (left!42816 lt!2088868)) 0 (ite ((_ is Leaf!25851) (left!42816 lt!2088868)) 1 (cheight!15775 (left!42816 lt!2088868)))))))

(assert (=> b!5065963 d!1633493))

(declare-fun d!1633495 () Bool)

(assert (=> d!1633495 (= (height!2141 (right!43146 lt!2088868)) (ite ((_ is Empty!15564) (right!43146 lt!2088868)) 0 (ite ((_ is Leaf!25851) (right!43146 lt!2088868)) 1 (cheight!15775 (right!43146 lt!2088868)))))))

(assert (=> b!5065963 d!1633495))

(assert (=> b!5066349 d!1633309))

(assert (=> b!5066349 d!1633311))

(declare-fun d!1633497 () Bool)

(declare-fun res!2157228 () Bool)

(declare-fun e!3161779 () Bool)

(assert (=> d!1633497 (=> (not res!2157228) (not e!3161779))))

(assert (=> d!1633497 (= res!2157228 (<= (size!39074 (list!18990 (xs!18914 xs!286))) 512))))

(assert (=> d!1633497 (= (inv!77560 xs!286) e!3161779)))

(declare-fun b!5066518 () Bool)

(declare-fun res!2157229 () Bool)

(assert (=> b!5066518 (=> (not res!2157229) (not e!3161779))))

(assert (=> b!5066518 (= res!2157229 (= (csize!31359 xs!286) (size!39074 (list!18990 (xs!18914 xs!286)))))))

(declare-fun b!5066519 () Bool)

(assert (=> b!5066519 (= e!3161779 (and (> (csize!31359 xs!286) 0) (<= (csize!31359 xs!286) 512)))))

(assert (= (and d!1633497 res!2157228) b!5066518))

(assert (= (and b!5066518 res!2157229) b!5066519))

(assert (=> d!1633497 m!6108176))

(assert (=> d!1633497 m!6108176))

(declare-fun m!6108662 () Bool)

(assert (=> d!1633497 m!6108662))

(assert (=> b!5066518 m!6108176))

(assert (=> b!5066518 m!6108176))

(assert (=> b!5066518 m!6108662))

(assert (=> b!5066356 d!1633497))

(declare-fun bm!353013 () Bool)

(declare-fun call!353020 () List!58558)

(declare-fun call!353021 () List!58558)

(assert (=> bm!353013 (= call!353020 (++!12789 call!353021 (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353014 () Bool)

(declare-fun call!353019 () List!58558)

(assert (=> bm!353014 (= call!353019 (++!12789 (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353015 () Bool)

(declare-fun call!353018 () List!58558)

(assert (=> bm!353015 (= call!353018 (++!12789 (list!18989 xs!286) call!353019))))

(declare-fun b!5066521 () Bool)

(declare-fun e!3161780 () Bool)

(assert (=> b!5066521 (= e!3161780 (= call!353020 call!353018))))

(declare-fun bm!353016 () Bool)

(assert (=> bm!353016 (= call!353021 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 ys!41))))))

(declare-fun d!1633499 () Bool)

(assert (=> d!1633499 e!3161780))

(declare-fun c!869729 () Bool)

(assert (=> d!1633499 (= c!869729 ((_ is Nil!58434) (list!18989 xs!286)))))

(assert (=> d!1633499 (= (appendAssoc!301 (list!18989 xs!286) (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))) true)))

(declare-fun b!5066520 () Bool)

(assert (=> b!5066520 (= e!3161780 (= call!353020 call!353018))))

(declare-fun lt!2088930 () Bool)

(assert (=> b!5066520 (= lt!2088930 (appendAssoc!301 (t!371291 (list!18989 xs!286)) (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))))))

(assert (= (and d!1633499 c!869729) b!5066521))

(assert (= (and d!1633499 (not c!869729)) b!5066520))

(assert (= (or b!5066521 b!5066520) bm!353016))

(assert (= (or b!5066521 b!5066520) bm!353014))

(assert (= (or b!5066521 b!5066520) bm!353015))

(assert (= (or b!5066521 b!5066520) bm!353013))

(assert (=> bm!353015 m!6107972))

(declare-fun m!6108664 () Bool)

(assert (=> bm!353015 m!6108664))

(assert (=> bm!353016 m!6107972))

(assert (=> bm!353016 m!6108098))

(declare-fun m!6108666 () Bool)

(assert (=> bm!353016 m!6108666))

(assert (=> bm!353014 m!6108098))

(assert (=> bm!353014 m!6108100))

(assert (=> bm!353014 m!6108178))

(assert (=> b!5066520 m!6108098))

(assert (=> b!5066520 m!6108100))

(declare-fun m!6108668 () Bool)

(assert (=> b!5066520 m!6108668))

(assert (=> bm!353013 m!6108100))

(declare-fun m!6108670 () Bool)

(assert (=> bm!353013 m!6108670))

(assert (=> b!5066047 d!1633499))

(assert (=> b!5066047 d!1633363))

(declare-fun d!1633501 () Bool)

(declare-fun c!869730 () Bool)

(assert (=> d!1633501 (= c!869730 ((_ is Empty!15564) (left!42816 ys!41)))))

(declare-fun e!3161781 () List!58558)

(assert (=> d!1633501 (= (list!18989 (left!42816 ys!41)) e!3161781)))

(declare-fun b!5066523 () Bool)

(declare-fun e!3161782 () List!58558)

(assert (=> b!5066523 (= e!3161781 e!3161782)))

(declare-fun c!869731 () Bool)

(assert (=> b!5066523 (= c!869731 ((_ is Leaf!25851) (left!42816 ys!41)))))

(declare-fun b!5066522 () Bool)

(assert (=> b!5066522 (= e!3161781 Nil!58434)))

(declare-fun b!5066525 () Bool)

(assert (=> b!5066525 (= e!3161782 (++!12789 (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun b!5066524 () Bool)

(assert (=> b!5066524 (= e!3161782 (list!18990 (xs!18914 (left!42816 ys!41))))))

(assert (= (and d!1633501 c!869730) b!5066522))

(assert (= (and d!1633501 (not c!869730)) b!5066523))

(assert (= (and b!5066523 c!869731) b!5066524))

(assert (= (and b!5066523 (not c!869731)) b!5066525))

(assert (=> b!5066525 m!6108104))

(assert (=> b!5066525 m!6108106))

(assert (=> b!5066525 m!6108104))

(assert (=> b!5066525 m!6108106))

(declare-fun m!6108672 () Bool)

(assert (=> b!5066525 m!6108672))

(assert (=> b!5066524 m!6108550))

(assert (=> b!5066047 d!1633501))

(declare-fun d!1633503 () Bool)

(declare-fun c!869732 () Bool)

(assert (=> d!1633503 (= c!869732 ((_ is Empty!15564) (right!43146 ys!41)))))

(declare-fun e!3161784 () List!58558)

(assert (=> d!1633503 (= (list!18989 (right!43146 ys!41)) e!3161784)))

(declare-fun b!5066530 () Bool)

(declare-fun e!3161785 () List!58558)

(assert (=> b!5066530 (= e!3161784 e!3161785)))

(declare-fun c!869733 () Bool)

(assert (=> b!5066530 (= c!869733 ((_ is Leaf!25851) (right!43146 ys!41)))))

(declare-fun b!5066529 () Bool)

(assert (=> b!5066529 (= e!3161784 Nil!58434)))

(declare-fun b!5066532 () Bool)

(assert (=> b!5066532 (= e!3161785 (++!12789 (list!18989 (left!42816 (right!43146 ys!41))) (list!18989 (right!43146 (right!43146 ys!41)))))))

(declare-fun b!5066531 () Bool)

(assert (=> b!5066531 (= e!3161785 (list!18990 (xs!18914 (right!43146 ys!41))))))

(assert (= (and d!1633503 c!869732) b!5066529))

(assert (= (and d!1633503 (not c!869732)) b!5066530))

(assert (= (and b!5066530 c!869733) b!5066531))

(assert (= (and b!5066530 (not c!869733)) b!5066532))

(declare-fun m!6108676 () Bool)

(assert (=> b!5066532 m!6108676))

(declare-fun m!6108680 () Bool)

(assert (=> b!5066532 m!6108680))

(assert (=> b!5066532 m!6108676))

(assert (=> b!5066532 m!6108680))

(declare-fun m!6108686 () Bool)

(assert (=> b!5066532 m!6108686))

(declare-fun m!6108688 () Bool)

(assert (=> b!5066531 m!6108688))

(assert (=> b!5066047 d!1633503))

(declare-fun d!1633505 () Bool)

(declare-fun res!2157233 () Bool)

(declare-fun e!3161786 () Bool)

(assert (=> d!1633505 (=> (not res!2157233) (not e!3161786))))

(assert (=> d!1633505 (= res!2157233 (<= (size!39074 (list!18990 (xs!18914 (right!43146 xs!286)))) 512))))

(assert (=> d!1633505 (= (inv!77560 (right!43146 xs!286)) e!3161786)))

(declare-fun b!5066533 () Bool)

(declare-fun res!2157234 () Bool)

(assert (=> b!5066533 (=> (not res!2157234) (not e!3161786))))

(assert (=> b!5066533 (= res!2157234 (= (csize!31359 (right!43146 xs!286)) (size!39074 (list!18990 (xs!18914 (right!43146 xs!286))))))))

(declare-fun b!5066534 () Bool)

(assert (=> b!5066534 (= e!3161786 (and (> (csize!31359 (right!43146 xs!286)) 0) (<= (csize!31359 (right!43146 xs!286)) 512)))))

(assert (= (and d!1633505 res!2157233) b!5066533))

(assert (= (and b!5066533 res!2157234) b!5066534))

(assert (=> d!1633505 m!6108452))

(assert (=> d!1633505 m!6108452))

(declare-fun m!6108692 () Bool)

(assert (=> d!1633505 m!6108692))

(assert (=> b!5066533 m!6108452))

(assert (=> b!5066533 m!6108452))

(assert (=> b!5066533 m!6108692))

(assert (=> b!5065991 d!1633505))

(declare-fun d!1633513 () Bool)

(declare-fun c!869734 () Bool)

(assert (=> d!1633513 (= c!869734 ((_ is Node!15564) (left!42816 (left!42816 xs!286))))))

(declare-fun e!3161787 () Bool)

(assert (=> d!1633513 (= (inv!77556 (left!42816 (left!42816 xs!286))) e!3161787)))

(declare-fun b!5066535 () Bool)

(assert (=> b!5066535 (= e!3161787 (inv!77559 (left!42816 (left!42816 xs!286))))))

(declare-fun b!5066536 () Bool)

(declare-fun e!3161788 () Bool)

(assert (=> b!5066536 (= e!3161787 e!3161788)))

(declare-fun res!2157235 () Bool)

(assert (=> b!5066536 (= res!2157235 (not ((_ is Leaf!25851) (left!42816 (left!42816 xs!286)))))))

(assert (=> b!5066536 (=> res!2157235 e!3161788)))

(declare-fun b!5066537 () Bool)

(assert (=> b!5066537 (= e!3161788 (inv!77560 (left!42816 (left!42816 xs!286))))))

(assert (= (and d!1633513 c!869734) b!5066535))

(assert (= (and d!1633513 (not c!869734)) b!5066536))

(assert (= (and b!5066536 (not res!2157235)) b!5066537))

(declare-fun m!6108694 () Bool)

(assert (=> b!5066535 m!6108694))

(declare-fun m!6108696 () Bool)

(assert (=> b!5066537 m!6108696))

(assert (=> b!5066373 d!1633513))

(declare-fun d!1633517 () Bool)

(declare-fun c!869735 () Bool)

(assert (=> d!1633517 (= c!869735 ((_ is Node!15564) (right!43146 (left!42816 xs!286))))))

(declare-fun e!3161789 () Bool)

(assert (=> d!1633517 (= (inv!77556 (right!43146 (left!42816 xs!286))) e!3161789)))

(declare-fun b!5066538 () Bool)

(assert (=> b!5066538 (= e!3161789 (inv!77559 (right!43146 (left!42816 xs!286))))))

(declare-fun b!5066539 () Bool)

(declare-fun e!3161790 () Bool)

(assert (=> b!5066539 (= e!3161789 e!3161790)))

(declare-fun res!2157236 () Bool)

(assert (=> b!5066539 (= res!2157236 (not ((_ is Leaf!25851) (right!43146 (left!42816 xs!286)))))))

(assert (=> b!5066539 (=> res!2157236 e!3161790)))

(declare-fun b!5066540 () Bool)

(assert (=> b!5066540 (= e!3161790 (inv!77560 (right!43146 (left!42816 xs!286))))))

(assert (= (and d!1633517 c!869735) b!5066538))

(assert (= (and d!1633517 (not c!869735)) b!5066539))

(assert (= (and b!5066539 (not res!2157236)) b!5066540))

(declare-fun m!6108698 () Bool)

(assert (=> b!5066538 m!6108698))

(declare-fun m!6108700 () Bool)

(assert (=> b!5066540 m!6108700))

(assert (=> b!5066373 d!1633517))

(declare-fun d!1633519 () Bool)

(declare-fun res!2157237 () Bool)

(declare-fun e!3161791 () Bool)

(assert (=> d!1633519 (=> (not res!2157237) (not e!3161791))))

(assert (=> d!1633519 (= res!2157237 (<= (size!39074 (list!18990 (xs!18914 (right!43146 ys!41)))) 512))))

(assert (=> d!1633519 (= (inv!77560 (right!43146 ys!41)) e!3161791)))

(declare-fun b!5066541 () Bool)

(declare-fun res!2157238 () Bool)

(assert (=> b!5066541 (=> (not res!2157238) (not e!3161791))))

(assert (=> b!5066541 (= res!2157238 (= (csize!31359 (right!43146 ys!41)) (size!39074 (list!18990 (xs!18914 (right!43146 ys!41))))))))

(declare-fun b!5066542 () Bool)

(assert (=> b!5066542 (= e!3161791 (and (> (csize!31359 (right!43146 ys!41)) 0) (<= (csize!31359 (right!43146 ys!41)) 512)))))

(assert (= (and d!1633519 res!2157237) b!5066541))

(assert (= (and b!5066541 res!2157238) b!5066542))

(assert (=> d!1633519 m!6108688))

(assert (=> d!1633519 m!6108688))

(declare-fun m!6108702 () Bool)

(assert (=> d!1633519 m!6108702))

(assert (=> b!5066541 m!6108688))

(assert (=> b!5066541 m!6108688))

(assert (=> b!5066541 m!6108702))

(assert (=> b!5066341 d!1633519))

(declare-fun b!5066543 () Bool)

(declare-fun res!2157241 () Bool)

(declare-fun e!3161793 () Bool)

(assert (=> b!5066543 (=> (not res!2157241) (not e!3161793))))

(assert (=> b!5066543 (= res!2157241 (isBalanced!4426 (left!42816 (right!43146 lt!2088868))))))

(declare-fun b!5066544 () Bool)

(declare-fun e!3161792 () Bool)

(assert (=> b!5066544 (= e!3161792 e!3161793)))

(declare-fun res!2157244 () Bool)

(assert (=> b!5066544 (=> (not res!2157244) (not e!3161793))))

(assert (=> b!5066544 (= res!2157244 (<= (- 1) (- (height!2141 (left!42816 (right!43146 lt!2088868))) (height!2141 (right!43146 (right!43146 lt!2088868))))))))

(declare-fun b!5066545 () Bool)

(declare-fun res!2157239 () Bool)

(assert (=> b!5066545 (=> (not res!2157239) (not e!3161793))))

(assert (=> b!5066545 (= res!2157239 (not (isEmpty!31631 (left!42816 (right!43146 lt!2088868)))))))

(declare-fun b!5066547 () Bool)

(declare-fun res!2157243 () Bool)

(assert (=> b!5066547 (=> (not res!2157243) (not e!3161793))))

(assert (=> b!5066547 (= res!2157243 (<= (- (height!2141 (left!42816 (right!43146 lt!2088868))) (height!2141 (right!43146 (right!43146 lt!2088868)))) 1))))

(declare-fun b!5066548 () Bool)

(assert (=> b!5066548 (= e!3161793 (not (isEmpty!31631 (right!43146 (right!43146 lt!2088868)))))))

(declare-fun b!5066546 () Bool)

(declare-fun res!2157240 () Bool)

(assert (=> b!5066546 (=> (not res!2157240) (not e!3161793))))

(assert (=> b!5066546 (= res!2157240 (isBalanced!4426 (right!43146 (right!43146 lt!2088868))))))

(declare-fun d!1633525 () Bool)

(declare-fun res!2157242 () Bool)

(assert (=> d!1633525 (=> res!2157242 e!3161792)))

(assert (=> d!1633525 (= res!2157242 (not ((_ is Node!15564) (right!43146 lt!2088868))))))

(assert (=> d!1633525 (= (isBalanced!4426 (right!43146 lt!2088868)) e!3161792)))

(assert (= (and d!1633525 (not res!2157242)) b!5066544))

(assert (= (and b!5066544 res!2157244) b!5066547))

(assert (= (and b!5066547 res!2157243) b!5066543))

(assert (= (and b!5066543 res!2157241) b!5066546))

(assert (= (and b!5066546 res!2157240) b!5066545))

(assert (= (and b!5066545 res!2157239) b!5066548))

(declare-fun m!6108704 () Bool)

(assert (=> b!5066545 m!6108704))

(declare-fun m!6108706 () Bool)

(assert (=> b!5066543 m!6108706))

(declare-fun m!6108708 () Bool)

(assert (=> b!5066548 m!6108708))

(declare-fun m!6108710 () Bool)

(assert (=> b!5066547 m!6108710))

(declare-fun m!6108712 () Bool)

(assert (=> b!5066547 m!6108712))

(declare-fun m!6108714 () Bool)

(assert (=> b!5066546 m!6108714))

(assert (=> b!5066544 m!6108710))

(assert (=> b!5066544 m!6108712))

(assert (=> b!5065965 d!1633525))

(declare-fun d!1633527 () Bool)

(assert (=> d!1633527 (= (list!18990 (xs!18914 ys!41)) (innerList!15652 (xs!18914 ys!41)))))

(assert (=> b!5066135 d!1633527))

(declare-fun d!1633529 () Bool)

(assert (=> d!1633529 (= (height!2141 lt!2088908) (ite ((_ is Empty!15564) lt!2088908) 0 (ite ((_ is Leaf!25851) lt!2088908) 1 (cheight!15775 lt!2088908))))))

(assert (=> b!5066315 d!1633529))

(declare-fun d!1633531 () Bool)

(assert (=> d!1633531 (= (max!0 (height!2141 (right!43146 (right!43146 xs!286))) (height!2141 ys!41)) (ite (< (height!2141 (right!43146 (right!43146 xs!286))) (height!2141 ys!41)) (height!2141 ys!41) (height!2141 (right!43146 (right!43146 xs!286)))))))

(assert (=> b!5066315 d!1633531))

(assert (=> b!5066315 d!1633465))

(assert (=> b!5066315 d!1633327))

(declare-fun d!1633533 () Bool)

(declare-fun res!2157245 () Bool)

(declare-fun e!3161794 () Bool)

(assert (=> d!1633533 (=> (not res!2157245) (not e!3161794))))

(assert (=> d!1633533 (= res!2157245 (= (csize!31358 xs!286) (+ (size!39075 (left!42816 xs!286)) (size!39075 (right!43146 xs!286)))))))

(assert (=> d!1633533 (= (inv!77559 xs!286) e!3161794)))

(declare-fun b!5066549 () Bool)

(declare-fun res!2157246 () Bool)

(assert (=> b!5066549 (=> (not res!2157246) (not e!3161794))))

(assert (=> b!5066549 (= res!2157246 (and (not (= (left!42816 xs!286) Empty!15564)) (not (= (right!43146 xs!286) Empty!15564))))))

(declare-fun b!5066550 () Bool)

(declare-fun res!2157247 () Bool)

(assert (=> b!5066550 (=> (not res!2157247) (not e!3161794))))

(assert (=> b!5066550 (= res!2157247 (= (cheight!15775 xs!286) (+ (max!0 (height!2141 (left!42816 xs!286)) (height!2141 (right!43146 xs!286))) 1)))))

(declare-fun b!5066551 () Bool)

(assert (=> b!5066551 (= e!3161794 (<= 0 (cheight!15775 xs!286)))))

(assert (= (and d!1633533 res!2157245) b!5066549))

(assert (= (and b!5066549 res!2157246) b!5066550))

(assert (= (and b!5066550 res!2157247) b!5066551))

(assert (=> d!1633533 m!6108150))

(assert (=> d!1633533 m!6108618))

(assert (=> b!5066550 m!6108002))

(assert (=> b!5066550 m!6108004))

(assert (=> b!5066550 m!6108002))

(assert (=> b!5066550 m!6108004))

(declare-fun m!6108716 () Bool)

(assert (=> b!5066550 m!6108716))

(assert (=> b!5066354 d!1633533))

(declare-fun d!1633535 () Bool)

(declare-fun lt!2088931 () Int)

(assert (=> d!1633535 (>= lt!2088931 0)))

(declare-fun e!3161795 () Int)

(assert (=> d!1633535 (= lt!2088931 e!3161795)))

(declare-fun c!869736 () Bool)

(assert (=> d!1633535 (= c!869736 ((_ is Nil!58434) (innerList!15652 (xs!18914 xs!286))))))

(assert (=> d!1633535 (= (size!39074 (innerList!15652 (xs!18914 xs!286))) lt!2088931)))

(declare-fun b!5066552 () Bool)

(assert (=> b!5066552 (= e!3161795 0)))

(declare-fun b!5066553 () Bool)

(assert (=> b!5066553 (= e!3161795 (+ 1 (size!39074 (t!371291 (innerList!15652 (xs!18914 xs!286))))))))

(assert (= (and d!1633535 c!869736) b!5066552))

(assert (= (and d!1633535 (not c!869736)) b!5066553))

(declare-fun m!6108718 () Bool)

(assert (=> b!5066553 m!6108718))

(assert (=> d!1633313 d!1633535))

(declare-fun bm!353017 () Bool)

(declare-fun call!353024 () List!58558)

(declare-fun call!353025 () List!58558)

(assert (=> bm!353017 (= call!353024 (++!12789 call!353025 (list!18989 ys!41)))))

(declare-fun bm!353018 () Bool)

(declare-fun call!353023 () List!58558)

(assert (=> bm!353018 (= call!353023 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)))))

(declare-fun bm!353019 () Bool)

(declare-fun call!353022 () List!58558)

(assert (=> bm!353019 (= call!353022 (++!12789 (list!18989 (left!42816 (right!43146 xs!286))) call!353023))))

(declare-fun b!5066555 () Bool)

(declare-fun e!3161796 () Bool)

(assert (=> b!5066555 (= e!3161796 (= call!353024 call!353022))))

(declare-fun bm!353020 () Bool)

(assert (=> bm!353020 (= call!353025 (++!12789 (list!18989 (left!42816 (right!43146 xs!286))) (list!18989 (right!43146 (right!43146 xs!286)))))))

(declare-fun d!1633537 () Bool)

(assert (=> d!1633537 e!3161796))

(declare-fun c!869737 () Bool)

(assert (=> d!1633537 (= c!869737 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 xs!286)))))))

(assert (=> d!1633537 (= (appendAssoc!301 (list!18989 (left!42816 (right!43146 xs!286))) (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)) true)))

(declare-fun b!5066554 () Bool)

(assert (=> b!5066554 (= e!3161796 (= call!353024 call!353022))))

(declare-fun lt!2088934 () Bool)

(assert (=> b!5066554 (= lt!2088934 (appendAssoc!301 (t!371291 (list!18989 (left!42816 (right!43146 xs!286)))) (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)))))

(assert (= (and d!1633537 c!869737) b!5066555))

(assert (= (and d!1633537 (not c!869737)) b!5066554))

(assert (= (or b!5066555 b!5066554) bm!353020))

(assert (= (or b!5066555 b!5066554) bm!353018))

(assert (= (or b!5066555 b!5066554) bm!353019))

(assert (= (or b!5066555 b!5066554) bm!353017))

(assert (=> bm!353019 m!6108092))

(declare-fun m!6108720 () Bool)

(assert (=> bm!353019 m!6108720))

(assert (=> bm!353020 m!6108092))

(assert (=> bm!353020 m!6108094))

(assert (=> bm!353020 m!6108450))

(assert (=> bm!353018 m!6108094))

(assert (=> bm!353018 m!6107974))

(assert (=> bm!353018 m!6108110))

(assert (=> b!5066554 m!6108094))

(assert (=> b!5066554 m!6107974))

(declare-fun m!6108722 () Bool)

(assert (=> b!5066554 m!6108722))

(assert (=> bm!353017 m!6107974))

(declare-fun m!6108724 () Bool)

(assert (=> bm!353017 m!6108724))

(assert (=> b!5066049 d!1633537))

(declare-fun d!1633539 () Bool)

(declare-fun c!869738 () Bool)

(assert (=> d!1633539 (= c!869738 ((_ is Empty!15564) (left!42816 (right!43146 xs!286))))))

(declare-fun e!3161797 () List!58558)

(assert (=> d!1633539 (= (list!18989 (left!42816 (right!43146 xs!286))) e!3161797)))

(declare-fun b!5066557 () Bool)

(declare-fun e!3161798 () List!58558)

(assert (=> b!5066557 (= e!3161797 e!3161798)))

(declare-fun c!869739 () Bool)

(assert (=> b!5066557 (= c!869739 ((_ is Leaf!25851) (left!42816 (right!43146 xs!286))))))

(declare-fun b!5066556 () Bool)

(assert (=> b!5066556 (= e!3161797 Nil!58434)))

(declare-fun b!5066559 () Bool)

(assert (=> b!5066559 (= e!3161798 (++!12789 (list!18989 (left!42816 (left!42816 (right!43146 xs!286)))) (list!18989 (right!43146 (left!42816 (right!43146 xs!286))))))))

(declare-fun b!5066558 () Bool)

(assert (=> b!5066558 (= e!3161798 (list!18990 (xs!18914 (left!42816 (right!43146 xs!286)))))))

(assert (= (and d!1633539 c!869738) b!5066556))

(assert (= (and d!1633539 (not c!869738)) b!5066557))

(assert (= (and b!5066557 c!869739) b!5066558))

(assert (= (and b!5066557 (not c!869739)) b!5066559))

(declare-fun m!6108730 () Bool)

(assert (=> b!5066559 m!6108730))

(declare-fun m!6108732 () Bool)

(assert (=> b!5066559 m!6108732))

(assert (=> b!5066559 m!6108730))

(assert (=> b!5066559 m!6108732))

(declare-fun m!6108734 () Bool)

(assert (=> b!5066559 m!6108734))

(declare-fun m!6108736 () Bool)

(assert (=> b!5066558 m!6108736))

(assert (=> b!5066049 d!1633539))

(assert (=> b!5066049 d!1633437))

(assert (=> b!5066049 d!1633365))

(declare-fun d!1633543 () Bool)

(declare-fun res!2157248 () Bool)

(declare-fun e!3161799 () Bool)

(assert (=> d!1633543 (=> (not res!2157248) (not e!3161799))))

(assert (=> d!1633543 (= res!2157248 (= (csize!31358 (right!43146 ys!41)) (+ (size!39075 (left!42816 (right!43146 ys!41))) (size!39075 (right!43146 (right!43146 ys!41))))))))

(assert (=> d!1633543 (= (inv!77559 (right!43146 ys!41)) e!3161799)))

(declare-fun b!5066560 () Bool)

(declare-fun res!2157249 () Bool)

(assert (=> b!5066560 (=> (not res!2157249) (not e!3161799))))

(assert (=> b!5066560 (= res!2157249 (and (not (= (left!42816 (right!43146 ys!41)) Empty!15564)) (not (= (right!43146 (right!43146 ys!41)) Empty!15564))))))

(declare-fun b!5066561 () Bool)

(declare-fun res!2157250 () Bool)

(assert (=> b!5066561 (=> (not res!2157250) (not e!3161799))))

(assert (=> b!5066561 (= res!2157250 (= (cheight!15775 (right!43146 ys!41)) (+ (max!0 (height!2141 (left!42816 (right!43146 ys!41))) (height!2141 (right!43146 (right!43146 ys!41)))) 1)))))

(declare-fun b!5066562 () Bool)

(assert (=> b!5066562 (= e!3161799 (<= 0 (cheight!15775 (right!43146 ys!41))))))

(assert (= (and d!1633543 res!2157248) b!5066560))

(assert (= (and b!5066560 res!2157249) b!5066561))

(assert (= (and b!5066561 res!2157250) b!5066562))

(declare-fun m!6108738 () Bool)

(assert (=> d!1633543 m!6108738))

(declare-fun m!6108740 () Bool)

(assert (=> d!1633543 m!6108740))

(declare-fun m!6108742 () Bool)

(assert (=> b!5066561 m!6108742))

(declare-fun m!6108744 () Bool)

(assert (=> b!5066561 m!6108744))

(assert (=> b!5066561 m!6108742))

(assert (=> b!5066561 m!6108744))

(declare-fun m!6108746 () Bool)

(assert (=> b!5066561 m!6108746))

(assert (=> b!5066339 d!1633543))

(declare-fun d!1633545 () Bool)

(declare-fun lt!2088936 () Bool)

(assert (=> d!1633545 (= lt!2088936 (isEmpty!31632 (list!18989 (right!43146 lt!2088868))))))

(assert (=> d!1633545 (= lt!2088936 (= (size!39075 (right!43146 lt!2088868)) 0))))

(assert (=> d!1633545 (= (isEmpty!31631 (right!43146 lt!2088868)) lt!2088936)))

(declare-fun bs!1189897 () Bool)

(assert (= bs!1189897 d!1633545))

(assert (=> bs!1189897 m!6108154))

(assert (=> bs!1189897 m!6108154))

(declare-fun m!6108748 () Bool)

(assert (=> bs!1189897 m!6108748))

(declare-fun m!6108750 () Bool)

(assert (=> bs!1189897 m!6108750))

(assert (=> b!5065967 d!1633545))

(declare-fun d!1633547 () Bool)

(assert (=> d!1633547 (= (height!2141 (left!42816 ys!41)) (ite ((_ is Empty!15564) (left!42816 ys!41)) 0 (ite ((_ is Leaf!25851) (left!42816 ys!41)) 1 (cheight!15775 (left!42816 ys!41)))))))

(assert (=> b!5066346 d!1633547))

(declare-fun d!1633549 () Bool)

(assert (=> d!1633549 (= (height!2141 (right!43146 ys!41)) (ite ((_ is Empty!15564) (right!43146 ys!41)) 0 (ite ((_ is Leaf!25851) (right!43146 ys!41)) 1 (cheight!15775 (right!43146 ys!41)))))))

(assert (=> b!5066346 d!1633549))

(declare-fun d!1633551 () Bool)

(declare-fun lt!2088937 () Bool)

(assert (=> d!1633551 (= lt!2088937 (isEmpty!31632 (list!18989 (left!42816 ys!41))))))

(assert (=> d!1633551 (= lt!2088937 (= (size!39075 (left!42816 ys!41)) 0))))

(assert (=> d!1633551 (= (isEmpty!31631 (left!42816 ys!41)) lt!2088937)))

(declare-fun bs!1189898 () Bool)

(assert (= bs!1189898 d!1633551))

(assert (=> bs!1189898 m!6108098))

(assert (=> bs!1189898 m!6108098))

(declare-fun m!6108752 () Bool)

(assert (=> bs!1189898 m!6108752))

(declare-fun m!6108754 () Bool)

(assert (=> bs!1189898 m!6108754))

(assert (=> b!5066344 d!1633551))

(declare-fun d!1633553 () Bool)

(declare-fun c!869740 () Bool)

(assert (=> d!1633553 (= c!869740 ((_ is Empty!15564) lt!2088875))))

(declare-fun e!3161800 () List!58558)

(assert (=> d!1633553 (= (list!18989 lt!2088875) e!3161800)))

(declare-fun b!5066564 () Bool)

(declare-fun e!3161801 () List!58558)

(assert (=> b!5066564 (= e!3161800 e!3161801)))

(declare-fun c!869741 () Bool)

(assert (=> b!5066564 (= c!869741 ((_ is Leaf!25851) lt!2088875))))

(declare-fun b!5066563 () Bool)

(assert (=> b!5066563 (= e!3161800 Nil!58434)))

(declare-fun b!5066566 () Bool)

(assert (=> b!5066566 (= e!3161801 (++!12789 (list!18989 (left!42816 lt!2088875)) (list!18989 (right!43146 lt!2088875))))))

(declare-fun b!5066565 () Bool)

(assert (=> b!5066565 (= e!3161801 (list!18990 (xs!18914 lt!2088875)))))

(assert (= (and d!1633553 c!869740) b!5066563))

(assert (= (and d!1633553 (not c!869740)) b!5066564))

(assert (= (and b!5066564 c!869741) b!5066565))

(assert (= (and b!5066564 (not c!869741)) b!5066566))

(declare-fun m!6108756 () Bool)

(assert (=> b!5066566 m!6108756))

(declare-fun m!6108758 () Bool)

(assert (=> b!5066566 m!6108758))

(assert (=> b!5066566 m!6108756))

(assert (=> b!5066566 m!6108758))

(declare-fun m!6108760 () Bool)

(assert (=> b!5066566 m!6108760))

(declare-fun m!6108762 () Bool)

(assert (=> b!5066565 m!6108762))

(assert (=> d!1633357 d!1633553))

(declare-fun b!5066573 () Bool)

(declare-fun res!2157256 () Bool)

(declare-fun e!3161804 () Bool)

(assert (=> b!5066573 (=> (not res!2157256) (not e!3161804))))

(declare-fun lt!2088938 () List!58558)

(assert (=> b!5066573 (= res!2157256 (= (size!39074 lt!2088938) (+ (size!39074 (list!18989 (left!42816 xs!286))) (size!39074 (list!18989 (left!42816 (right!43146 xs!286)))))))))

(declare-fun b!5066574 () Bool)

(assert (=> b!5066574 (= e!3161804 (or (not (= (list!18989 (left!42816 (right!43146 xs!286))) Nil!58434)) (= lt!2088938 (list!18989 (left!42816 xs!286)))))))

(declare-fun b!5066572 () Bool)

(declare-fun e!3161805 () List!58558)

(assert (=> b!5066572 (= e!3161805 (Cons!58434 (h!64882 (list!18989 (left!42816 xs!286))) (++!12789 (t!371291 (list!18989 (left!42816 xs!286))) (list!18989 (left!42816 (right!43146 xs!286))))))))

(declare-fun b!5066571 () Bool)

(assert (=> b!5066571 (= e!3161805 (list!18989 (left!42816 (right!43146 xs!286))))))

(declare-fun d!1633555 () Bool)

(assert (=> d!1633555 e!3161804))

(declare-fun res!2157255 () Bool)

(assert (=> d!1633555 (=> (not res!2157255) (not e!3161804))))

(assert (=> d!1633555 (= res!2157255 (= (content!10417 lt!2088938) ((_ map or) (content!10417 (list!18989 (left!42816 xs!286))) (content!10417 (list!18989 (left!42816 (right!43146 xs!286)))))))))

(assert (=> d!1633555 (= lt!2088938 e!3161805)))

(declare-fun c!869742 () Bool)

(assert (=> d!1633555 (= c!869742 ((_ is Nil!58434) (list!18989 (left!42816 xs!286))))))

(assert (=> d!1633555 (= (++!12789 (list!18989 (left!42816 xs!286)) (list!18989 (left!42816 (right!43146 xs!286)))) lt!2088938)))

(assert (= (and d!1633555 c!869742) b!5066571))

(assert (= (and d!1633555 (not c!869742)) b!5066572))

(assert (= (and d!1633555 res!2157255) b!5066573))

(assert (= (and b!5066573 res!2157256) b!5066574))

(declare-fun m!6108764 () Bool)

(assert (=> b!5066573 m!6108764))

(assert (=> b!5066573 m!6108112))

(assert (=> b!5066573 m!6108462))

(assert (=> b!5066573 m!6108092))

(assert (=> b!5066573 m!6108554))

(assert (=> b!5066572 m!6108092))

(declare-fun m!6108766 () Bool)

(assert (=> b!5066572 m!6108766))

(declare-fun m!6108768 () Bool)

(assert (=> d!1633555 m!6108768))

(assert (=> d!1633555 m!6108112))

(assert (=> d!1633555 m!6108470))

(assert (=> d!1633555 m!6108092))

(declare-fun m!6108770 () Bool)

(assert (=> d!1633555 m!6108770))

(assert (=> d!1633357 d!1633555))

(assert (=> d!1633357 d!1633417))

(assert (=> d!1633357 d!1633539))

(declare-fun d!1633557 () Bool)

(assert (=> d!1633557 (= (height!2141 (ite c!869680 (left!42816 (right!43146 (right!43146 xs!286))) (right!43146 ys!41))) (ite ((_ is Empty!15564) (ite c!869680 (left!42816 (right!43146 (right!43146 xs!286))) (right!43146 ys!41))) 0 (ite ((_ is Leaf!25851) (ite c!869680 (left!42816 (right!43146 (right!43146 xs!286))) (right!43146 ys!41))) 1 (cheight!15775 (ite c!869680 (left!42816 (right!43146 (right!43146 xs!286))) (right!43146 ys!41))))))))

(assert (=> bm!352992 d!1633557))

(assert (=> b!5066053 d!1633365))

(assert (=> b!5066053 d!1633417))

(assert (=> b!5066053 d!1633437))

(declare-fun bm!353021 () Bool)

(declare-fun call!353028 () List!58558)

(declare-fun call!353029 () List!58558)

(assert (=> bm!353021 (= call!353028 (++!12789 call!353029 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))

(declare-fun bm!353022 () Bool)

(declare-fun call!353027 () List!58558)

(assert (=> bm!353022 (= call!353027 (++!12789 (list!18989 (left!42816 (right!43146 xs!286))) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))

(declare-fun bm!353023 () Bool)

(declare-fun call!353026 () List!58558)

(assert (=> bm!353023 (= call!353026 (++!12789 (list!18989 (left!42816 xs!286)) call!353027))))

(declare-fun b!5066576 () Bool)

(declare-fun e!3161806 () Bool)

(assert (=> b!5066576 (= e!3161806 (= call!353028 call!353026))))

(declare-fun bm!353024 () Bool)

(assert (=> bm!353024 (= call!353029 (++!12789 (list!18989 (left!42816 xs!286)) (list!18989 (left!42816 (right!43146 xs!286)))))))

(declare-fun d!1633559 () Bool)

(assert (=> d!1633559 e!3161806))

(declare-fun c!869743 () Bool)

(assert (=> d!1633559 (= c!869743 ((_ is Nil!58434) (list!18989 (left!42816 xs!286))))))

(assert (=> d!1633559 (= (appendAssoc!301 (list!18989 (left!42816 xs!286)) (list!18989 (left!42816 (right!43146 xs!286))) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))) true)))

(declare-fun b!5066575 () Bool)

(assert (=> b!5066575 (= e!3161806 (= call!353028 call!353026))))

(declare-fun lt!2088939 () Bool)

(assert (=> b!5066575 (= lt!2088939 (appendAssoc!301 (t!371291 (list!18989 (left!42816 xs!286))) (list!18989 (left!42816 (right!43146 xs!286))) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))

(assert (= (and d!1633559 c!869743) b!5066576))

(assert (= (and d!1633559 (not c!869743)) b!5066575))

(assert (= (or b!5066576 b!5066575) bm!353024))

(assert (= (or b!5066576 b!5066575) bm!353022))

(assert (= (or b!5066576 b!5066575) bm!353023))

(assert (= (or b!5066576 b!5066575) bm!353021))

(assert (=> bm!353023 m!6108112))

(declare-fun m!6108772 () Bool)

(assert (=> bm!353023 m!6108772))

(assert (=> bm!353024 m!6108112))

(assert (=> bm!353024 m!6108092))

(assert (=> bm!353024 m!6108142))

(assert (=> bm!353022 m!6108092))

(assert (=> bm!353022 m!6108110))

(declare-fun m!6108774 () Bool)

(assert (=> bm!353022 m!6108774))

(assert (=> b!5066575 m!6108092))

(assert (=> b!5066575 m!6108110))

(declare-fun m!6108776 () Bool)

(assert (=> b!5066575 m!6108776))

(assert (=> bm!353021 m!6108110))

(declare-fun m!6108778 () Bool)

(assert (=> bm!353021 m!6108778))

(assert (=> b!5066053 d!1633559))

(assert (=> b!5066053 d!1633539))

(assert (=> b!5066053 d!1633435))

(declare-fun d!1633561 () Bool)

(assert (=> d!1633561 (= (inv!77555 (xs!18914 (right!43146 xs!286))) (<= (size!39074 (innerList!15652 (xs!18914 (right!43146 xs!286)))) 2147483647))))

(declare-fun bs!1189899 () Bool)

(assert (= bs!1189899 d!1633561))

(declare-fun m!6108780 () Bool)

(assert (=> bs!1189899 m!6108780))

(assert (=> b!5066377 d!1633561))

(declare-fun b!5066579 () Bool)

(declare-fun res!2157261 () Bool)

(declare-fun e!3161809 () Bool)

(assert (=> b!5066579 (=> (not res!2157261) (not e!3161809))))

(assert (=> b!5066579 (= res!2157261 (isBalanced!4426 (left!42816 (left!42816 ys!41))))))

(declare-fun b!5066580 () Bool)

(declare-fun e!3161808 () Bool)

(assert (=> b!5066580 (= e!3161808 e!3161809)))

(declare-fun res!2157264 () Bool)

(assert (=> b!5066580 (=> (not res!2157264) (not e!3161809))))

(assert (=> b!5066580 (= res!2157264 (<= (- 1) (- (height!2141 (left!42816 (left!42816 ys!41))) (height!2141 (right!43146 (left!42816 ys!41))))))))

(declare-fun b!5066581 () Bool)

(declare-fun res!2157259 () Bool)

(assert (=> b!5066581 (=> (not res!2157259) (not e!3161809))))

(assert (=> b!5066581 (= res!2157259 (not (isEmpty!31631 (left!42816 (left!42816 ys!41)))))))

(declare-fun b!5066583 () Bool)

(declare-fun res!2157263 () Bool)

(assert (=> b!5066583 (=> (not res!2157263) (not e!3161809))))

(assert (=> b!5066583 (= res!2157263 (<= (- (height!2141 (left!42816 (left!42816 ys!41))) (height!2141 (right!43146 (left!42816 ys!41)))) 1))))

(declare-fun b!5066584 () Bool)

(assert (=> b!5066584 (= e!3161809 (not (isEmpty!31631 (right!43146 (left!42816 ys!41)))))))

(declare-fun b!5066582 () Bool)

(declare-fun res!2157260 () Bool)

(assert (=> b!5066582 (=> (not res!2157260) (not e!3161809))))

(assert (=> b!5066582 (= res!2157260 (isBalanced!4426 (right!43146 (left!42816 ys!41))))))

(declare-fun d!1633563 () Bool)

(declare-fun res!2157262 () Bool)

(assert (=> d!1633563 (=> res!2157262 e!3161808)))

(assert (=> d!1633563 (= res!2157262 (not ((_ is Node!15564) (left!42816 ys!41))))))

(assert (=> d!1633563 (= (isBalanced!4426 (left!42816 ys!41)) e!3161808)))

(assert (= (and d!1633563 (not res!2157262)) b!5066580))

(assert (= (and b!5066580 res!2157264) b!5066583))

(assert (= (and b!5066583 res!2157263) b!5066579))

(assert (= (and b!5066579 res!2157261) b!5066582))

(assert (= (and b!5066582 res!2157260) b!5066581))

(assert (= (and b!5066581 res!2157259) b!5066584))

(declare-fun m!6108784 () Bool)

(assert (=> b!5066581 m!6108784))

(declare-fun m!6108786 () Bool)

(assert (=> b!5066579 m!6108786))

(declare-fun m!6108788 () Bool)

(assert (=> b!5066584 m!6108788))

(assert (=> b!5066583 m!6108590))

(assert (=> b!5066583 m!6108592))

(declare-fun m!6108792 () Bool)

(assert (=> b!5066582 m!6108792))

(assert (=> b!5066580 m!6108590))

(assert (=> b!5066580 m!6108592))

(assert (=> b!5066342 d!1633563))

(declare-fun d!1633565 () Bool)

(declare-fun res!2157265 () Bool)

(declare-fun e!3161810 () Bool)

(assert (=> d!1633565 (=> (not res!2157265) (not e!3161810))))

(assert (=> d!1633565 (= res!2157265 (<= (size!39074 (list!18990 (xs!18914 ys!41))) 512))))

(assert (=> d!1633565 (= (inv!77560 ys!41) e!3161810)))

(declare-fun b!5066585 () Bool)

(declare-fun res!2157266 () Bool)

(assert (=> b!5066585 (=> (not res!2157266) (not e!3161810))))

(assert (=> b!5066585 (= res!2157266 (= (csize!31359 ys!41) (size!39074 (list!18990 (xs!18914 ys!41)))))))

(declare-fun b!5066586 () Bool)

(assert (=> b!5066586 (= e!3161810 (and (> (csize!31359 ys!41) 0) (<= (csize!31359 ys!41) 512)))))

(assert (= (and d!1633565 res!2157265) b!5066585))

(assert (= (and b!5066585 res!2157266) b!5066586))

(assert (=> d!1633565 m!6108180))

(assert (=> d!1633565 m!6108180))

(declare-fun m!6108794 () Bool)

(assert (=> d!1633565 m!6108794))

(assert (=> b!5066585 m!6108180))

(assert (=> b!5066585 m!6108180))

(assert (=> b!5066585 m!6108794))

(assert (=> b!5066359 d!1633565))

(assert (=> b!5065935 d!1633317))

(assert (=> b!5065935 d!1633321))

(declare-fun d!1633569 () Bool)

(declare-fun res!2157267 () Bool)

(declare-fun e!3161811 () Bool)

(assert (=> d!1633569 (=> (not res!2157267) (not e!3161811))))

(assert (=> d!1633569 (= res!2157267 (= (csize!31358 ys!41) (+ (size!39075 (left!42816 ys!41)) (size!39075 (right!43146 ys!41)))))))

(assert (=> d!1633569 (= (inv!77559 ys!41) e!3161811)))

(declare-fun b!5066587 () Bool)

(declare-fun res!2157268 () Bool)

(assert (=> b!5066587 (=> (not res!2157268) (not e!3161811))))

(assert (=> b!5066587 (= res!2157268 (and (not (= (left!42816 ys!41) Empty!15564)) (not (= (right!43146 ys!41) Empty!15564))))))

(declare-fun b!5066588 () Bool)

(declare-fun res!2157269 () Bool)

(assert (=> b!5066588 (=> (not res!2157269) (not e!3161811))))

(assert (=> b!5066588 (= res!2157269 (= (cheight!15775 ys!41) (+ (max!0 (height!2141 (left!42816 ys!41)) (height!2141 (right!43146 ys!41))) 1)))))

(declare-fun b!5066589 () Bool)

(assert (=> b!5066589 (= e!3161811 (<= 0 (cheight!15775 ys!41)))))

(assert (= (and d!1633569 res!2157267) b!5066587))

(assert (= (and b!5066587 res!2157268) b!5066588))

(assert (= (and b!5066588 res!2157269) b!5066589))

(assert (=> d!1633569 m!6108754))

(declare-fun m!6108800 () Bool)

(assert (=> d!1633569 m!6108800))

(assert (=> b!5066588 m!6108380))

(assert (=> b!5066588 m!6108382))

(assert (=> b!5066588 m!6108380))

(assert (=> b!5066588 m!6108382))

(declare-fun m!6108802 () Bool)

(assert (=> b!5066588 m!6108802))

(assert (=> b!5066357 d!1633569))

(declare-fun d!1633573 () Bool)

(assert (=> d!1633573 (= (list!18990 (xs!18914 lt!2088868)) (innerList!15652 (xs!18914 lt!2088868)))))

(assert (=> b!5066087 d!1633573))

(declare-fun d!1633575 () Bool)

(assert (=> d!1633575 (= (inv!77555 (xs!18914 (left!42816 ys!41))) (<= (size!39074 (innerList!15652 (xs!18914 (left!42816 ys!41)))) 2147483647))))

(declare-fun bs!1189901 () Bool)

(assert (= bs!1189901 d!1633575))

(declare-fun m!6108804 () Bool)

(assert (=> bs!1189901 m!6108804))

(assert (=> b!5066381 d!1633575))

(declare-fun b!5066591 () Bool)

(declare-fun e!3161812 () Conc!15564)

(declare-fun e!3161813 () Conc!15564)

(assert (=> b!5066591 (= e!3161812 e!3161813)))

(declare-fun c!869745 () Bool)

(assert (=> b!5066591 (= c!869745 (= (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))) Empty!15564))))

(declare-fun b!5066592 () Bool)

(assert (=> b!5066592 (= e!3161813 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))))))

(declare-fun d!1633577 () Bool)

(declare-fun lt!2088941 () Conc!15564)

(assert (=> d!1633577 (= (list!18989 lt!2088941) (++!12789 (list!18989 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) (list!18989 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))))))

(assert (=> d!1633577 (= lt!2088941 e!3161812)))

(declare-fun c!869744 () Bool)

(assert (=> d!1633577 (= c!869744 (= (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))) Empty!15564))))

(assert (=> d!1633577 (= (<>!396 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))) (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) lt!2088941)))

(declare-fun b!5066590 () Bool)

(assert (=> b!5066590 (= e!3161812 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))))

(declare-fun b!5066593 () Bool)

(assert (=> b!5066593 (= e!3161813 (Node!15564 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))) (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))) (+ (size!39075 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) (size!39075 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))) (+ (max!0 (height!2141 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) (height!2141 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))) 1)))))

(assert (= (and d!1633577 c!869744) b!5066590))

(assert (= (and d!1633577 (not c!869744)) b!5066591))

(assert (= (and b!5066591 c!869745) b!5066592))

(assert (= (and b!5066591 (not c!869745)) b!5066593))

(declare-fun m!6108806 () Bool)

(assert (=> d!1633577 m!6108806))

(declare-fun m!6108808 () Bool)

(assert (=> d!1633577 m!6108808))

(declare-fun m!6108810 () Bool)

(assert (=> d!1633577 m!6108810))

(assert (=> d!1633577 m!6108808))

(assert (=> d!1633577 m!6108810))

(declare-fun m!6108812 () Bool)

(assert (=> d!1633577 m!6108812))

(declare-fun m!6108814 () Bool)

(assert (=> b!5066593 m!6108814))

(declare-fun m!6108816 () Bool)

(assert (=> b!5066593 m!6108816))

(declare-fun m!6108818 () Bool)

(assert (=> b!5066593 m!6108818))

(assert (=> b!5066593 m!6108814))

(declare-fun m!6108820 () Bool)

(assert (=> b!5066593 m!6108820))

(assert (=> b!5066593 m!6108816))

(declare-fun m!6108822 () Bool)

(assert (=> b!5066593 m!6108822))

(assert (=> bm!352998 d!1633577))

(declare-fun b!5066596 () Bool)

(declare-fun res!2157271 () Bool)

(declare-fun e!3161814 () Bool)

(assert (=> b!5066596 (=> (not res!2157271) (not e!3161814))))

(declare-fun lt!2088942 () List!58558)

(assert (=> b!5066596 (= res!2157271 (= (size!39074 lt!2088942) (+ (size!39074 (t!371291 (list!18989 xs!286))) (size!39074 (list!18989 ys!41)))))))

(declare-fun b!5066597 () Bool)

(assert (=> b!5066597 (= e!3161814 (or (not (= (list!18989 ys!41) Nil!58434)) (= lt!2088942 (t!371291 (list!18989 xs!286)))))))

(declare-fun b!5066595 () Bool)

(declare-fun e!3161815 () List!58558)

(assert (=> b!5066595 (= e!3161815 (Cons!58434 (h!64882 (t!371291 (list!18989 xs!286))) (++!12789 (t!371291 (t!371291 (list!18989 xs!286))) (list!18989 ys!41))))))

(declare-fun b!5066594 () Bool)

(assert (=> b!5066594 (= e!3161815 (list!18989 ys!41))))

(declare-fun d!1633579 () Bool)

(assert (=> d!1633579 e!3161814))

(declare-fun res!2157270 () Bool)

(assert (=> d!1633579 (=> (not res!2157270) (not e!3161814))))

(assert (=> d!1633579 (= res!2157270 (= (content!10417 lt!2088942) ((_ map or) (content!10417 (t!371291 (list!18989 xs!286))) (content!10417 (list!18989 ys!41)))))))

(assert (=> d!1633579 (= lt!2088942 e!3161815)))

(declare-fun c!869746 () Bool)

(assert (=> d!1633579 (= c!869746 ((_ is Nil!58434) (t!371291 (list!18989 xs!286))))))

(assert (=> d!1633579 (= (++!12789 (t!371291 (list!18989 xs!286)) (list!18989 ys!41)) lt!2088942)))

(assert (= (and d!1633579 c!869746) b!5066594))

(assert (= (and d!1633579 (not c!869746)) b!5066595))

(assert (= (and d!1633579 res!2157270) b!5066596))

(assert (= (and b!5066596 res!2157271) b!5066597))

(declare-fun m!6108824 () Bool)

(assert (=> b!5066596 m!6108824))

(declare-fun m!6108826 () Bool)

(assert (=> b!5066596 m!6108826))

(assert (=> b!5066596 m!6107974))

(assert (=> b!5066596 m!6108164))

(assert (=> b!5066595 m!6107974))

(declare-fun m!6108828 () Bool)

(assert (=> b!5066595 m!6108828))

(declare-fun m!6108830 () Bool)

(assert (=> d!1633579 m!6108830))

(assert (=> d!1633579 m!6108544))

(assert (=> d!1633579 m!6107974))

(assert (=> d!1633579 m!6108172))

(assert (=> b!5066126 d!1633579))

(assert (=> b!5066333 d!1633403))

(declare-fun d!1633581 () Bool)

(declare-fun lt!2088945 () Int)

(assert (=> d!1633581 (>= lt!2088945 0)))

(declare-fun e!3161816 () Int)

(assert (=> d!1633581 (= lt!2088945 e!3161816)))

(declare-fun c!869747 () Bool)

(assert (=> d!1633581 (= c!869747 ((_ is Nil!58434) lt!2088886))))

(assert (=> d!1633581 (= (size!39074 lt!2088886) lt!2088945)))

(declare-fun b!5066598 () Bool)

(assert (=> b!5066598 (= e!3161816 0)))

(declare-fun b!5066599 () Bool)

(assert (=> b!5066599 (= e!3161816 (+ 1 (size!39074 (t!371291 lt!2088886))))))

(assert (= (and d!1633581 c!869747) b!5066598))

(assert (= (and d!1633581 (not c!869747)) b!5066599))

(declare-fun m!6108832 () Bool)

(assert (=> b!5066599 m!6108832))

(assert (=> b!5066127 d!1633581))

(declare-fun d!1633583 () Bool)

(declare-fun lt!2088946 () Int)

(assert (=> d!1633583 (>= lt!2088946 0)))

(declare-fun e!3161819 () Int)

(assert (=> d!1633583 (= lt!2088946 e!3161819)))

(declare-fun c!869750 () Bool)

(assert (=> d!1633583 (= c!869750 ((_ is Nil!58434) (list!18989 xs!286)))))

(assert (=> d!1633583 (= (size!39074 (list!18989 xs!286)) lt!2088946)))

(declare-fun b!5066604 () Bool)

(assert (=> b!5066604 (= e!3161819 0)))

(declare-fun b!5066605 () Bool)

(assert (=> b!5066605 (= e!3161819 (+ 1 (size!39074 (t!371291 (list!18989 xs!286)))))))

(assert (= (and d!1633583 c!869750) b!5066604))

(assert (= (and d!1633583 (not c!869750)) b!5066605))

(assert (=> b!5066605 m!6108826))

(assert (=> b!5066127 d!1633583))

(declare-fun d!1633585 () Bool)

(declare-fun lt!2088947 () Int)

(assert (=> d!1633585 (>= lt!2088947 0)))

(declare-fun e!3161820 () Int)

(assert (=> d!1633585 (= lt!2088947 e!3161820)))

(declare-fun c!869751 () Bool)

(assert (=> d!1633585 (= c!869751 ((_ is Nil!58434) (list!18989 ys!41)))))

(assert (=> d!1633585 (= (size!39074 (list!18989 ys!41)) lt!2088947)))

(declare-fun b!5066606 () Bool)

(assert (=> b!5066606 (= e!3161820 0)))

(declare-fun b!5066607 () Bool)

(assert (=> b!5066607 (= e!3161820 (+ 1 (size!39074 (t!371291 (list!18989 ys!41)))))))

(assert (= (and d!1633585 c!869751) b!5066606))

(assert (= (and d!1633585 (not c!869751)) b!5066607))

(declare-fun m!6108834 () Bool)

(assert (=> b!5066607 m!6108834))

(assert (=> b!5066127 d!1633585))

(declare-fun d!1633587 () Bool)

(declare-fun res!2157272 () Bool)

(declare-fun e!3161821 () Bool)

(assert (=> d!1633587 (=> (not res!2157272) (not e!3161821))))

(assert (=> d!1633587 (= res!2157272 (= (csize!31358 (left!42816 xs!286)) (+ (size!39075 (left!42816 (left!42816 xs!286))) (size!39075 (right!43146 (left!42816 xs!286))))))))

(assert (=> d!1633587 (= (inv!77559 (left!42816 xs!286)) e!3161821)))

(declare-fun b!5066608 () Bool)

(declare-fun res!2157273 () Bool)

(assert (=> b!5066608 (=> (not res!2157273) (not e!3161821))))

(assert (=> b!5066608 (= res!2157273 (and (not (= (left!42816 (left!42816 xs!286)) Empty!15564)) (not (= (right!43146 (left!42816 xs!286)) Empty!15564))))))

(declare-fun b!5066609 () Bool)

(declare-fun res!2157274 () Bool)

(assert (=> b!5066609 (=> (not res!2157274) (not e!3161821))))

(assert (=> b!5066609 (= res!2157274 (= (cheight!15775 (left!42816 xs!286)) (+ (max!0 (height!2141 (left!42816 (left!42816 xs!286))) (height!2141 (right!43146 (left!42816 xs!286)))) 1)))))

(declare-fun b!5066610 () Bool)

(assert (=> b!5066610 (= e!3161821 (<= 0 (cheight!15775 (left!42816 xs!286))))))

(assert (= (and d!1633587 res!2157272) b!5066608))

(assert (= (and b!5066608 res!2157273) b!5066609))

(assert (= (and b!5066609 res!2157274) b!5066610))

(declare-fun m!6108836 () Bool)

(assert (=> d!1633587 m!6108836))

(declare-fun m!6108838 () Bool)

(assert (=> d!1633587 m!6108838))

(declare-fun m!6108840 () Bool)

(assert (=> b!5066609 m!6108840))

(declare-fun m!6108842 () Bool)

(assert (=> b!5066609 m!6108842))

(assert (=> b!5066609 m!6108840))

(assert (=> b!5066609 m!6108842))

(declare-fun m!6108844 () Bool)

(assert (=> b!5066609 m!6108844))

(assert (=> b!5065983 d!1633587))

(declare-fun d!1633589 () Bool)

(declare-fun res!2157275 () Bool)

(declare-fun e!3161822 () Bool)

(assert (=> d!1633589 (=> (not res!2157275) (not e!3161822))))

(assert (=> d!1633589 (= res!2157275 (<= (size!39074 (list!18990 (xs!18914 (left!42816 xs!286)))) 512))))

(assert (=> d!1633589 (= (inv!77560 (left!42816 xs!286)) e!3161822)))

(declare-fun b!5066611 () Bool)

(declare-fun res!2157276 () Bool)

(assert (=> b!5066611 (=> (not res!2157276) (not e!3161822))))

(assert (=> b!5066611 (= res!2157276 (= (csize!31359 (left!42816 xs!286)) (size!39074 (list!18990 (xs!18914 (left!42816 xs!286))))))))

(declare-fun b!5066612 () Bool)

(assert (=> b!5066612 (= e!3161822 (and (> (csize!31359 (left!42816 xs!286)) 0) (<= (csize!31359 (left!42816 xs!286)) 512)))))

(assert (= (and d!1633589 res!2157275) b!5066611))

(assert (= (and b!5066611 res!2157276) b!5066612))

(assert (=> d!1633589 m!6108448))

(assert (=> d!1633589 m!6108448))

(declare-fun m!6108846 () Bool)

(assert (=> d!1633589 m!6108846))

(assert (=> b!5066611 m!6108448))

(assert (=> b!5066611 m!6108448))

(assert (=> b!5066611 m!6108846))

(assert (=> b!5065985 d!1633589))

(declare-fun b!5066614 () Bool)

(declare-fun e!3161827 () Bool)

(declare-fun e!3161826 () Bool)

(assert (=> b!5066614 (= e!3161827 e!3161826)))

(declare-fun res!2157284 () Bool)

(assert (=> b!5066614 (=> (not res!2157284) (not e!3161826))))

(assert (=> b!5066614 (= res!2157284 (appendAssoc!301 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))))))

(declare-fun b!5066615 () Bool)

(declare-fun e!3161831 () Bool)

(declare-fun e!3161829 () Bool)

(assert (=> b!5066615 (= e!3161831 e!3161829)))

(declare-fun res!2157277 () Bool)

(assert (=> b!5066615 (=> (not res!2157277) (not e!3161829))))

(assert (=> b!5066615 (= res!2157277 (appendAssoc!301 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun b!5066616 () Bool)

(declare-fun e!3161828 () Bool)

(declare-fun e!3161824 () Bool)

(assert (=> b!5066616 (= e!3161828 e!3161824)))

(declare-fun res!2157283 () Bool)

(assert (=> b!5066616 (=> (not res!2157283) (not e!3161824))))

(assert (=> b!5066616 (= res!2157283 (appendAssoc!301 (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41)))))

(declare-fun b!5066617 () Bool)

(declare-fun e!3161830 () Bool)

(assert (=> b!5066617 (= e!3161830 e!3161827)))

(declare-fun res!2157282 () Bool)

(assert (=> b!5066617 (=> res!2157282 e!3161827)))

(assert (=> b!5066617 (= res!2157282 (not ((_ is Node!15564) ys!41)))))

(declare-fun b!5066618 () Bool)

(assert (=> b!5066618 (= e!3161826 e!3161831)))

(declare-fun res!2157281 () Bool)

(assert (=> b!5066618 (=> res!2157281 e!3161831)))

(assert (=> b!5066618 (= res!2157281 (not ((_ is Node!15564) (left!42816 ys!41))))))

(declare-fun b!5066619 () Bool)

(declare-fun e!3161825 () Bool)

(assert (=> b!5066619 (= e!3161825 e!3161828)))

(declare-fun res!2157279 () Bool)

(assert (=> b!5066619 (=> res!2157279 e!3161828)))

(assert (=> b!5066619 (= res!2157279 (not ((_ is Node!15564) (right!43146 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5066620 () Bool)

(assert (=> b!5066620 (= e!3161824 (appendAssoc!301 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) (++!12789 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41))))))

(declare-fun b!5066621 () Bool)

(declare-fun e!3161823 () Bool)

(assert (=> b!5066621 (= e!3161823 e!3161825)))

(declare-fun res!2157280 () Bool)

(assert (=> b!5066621 (=> (not res!2157280) (not e!3161825))))

(assert (=> b!5066621 (= res!2157280 (appendAssoc!301 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) (list!18989 (right!43146 (right!43146 (right!43146 xs!286)))) (list!18989 ys!41)))))

(declare-fun d!1633591 () Bool)

(assert (=> d!1633591 e!3161830))

(declare-fun res!2157285 () Bool)

(assert (=> d!1633591 (=> (not res!2157285) (not e!3161830))))

(assert (=> d!1633591 (= res!2157285 e!3161823)))

(declare-fun res!2157278 () Bool)

(assert (=> d!1633591 (=> res!2157278 e!3161823)))

(assert (=> d!1633591 (= res!2157278 (not ((_ is Node!15564) (right!43146 (right!43146 xs!286)))))))

(assert (=> d!1633591 (= (appendAssocInst!910 (right!43146 (right!43146 xs!286)) ys!41) true)))

(declare-fun b!5066613 () Bool)

(assert (=> b!5066613 (= e!3161829 (appendAssoc!301 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 (left!42816 ys!41)))) (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))))))

(assert (= (and d!1633591 (not res!2157278)) b!5066621))

(assert (= (and b!5066621 res!2157280) b!5066619))

(assert (= (and b!5066619 (not res!2157279)) b!5066616))

(assert (= (and b!5066616 res!2157283) b!5066620))

(assert (= (and d!1633591 res!2157285) b!5066617))

(assert (= (and b!5066617 (not res!2157282)) b!5066614))

(assert (= (and b!5066614 res!2157284) b!5066618))

(assert (= (and b!5066618 (not res!2157281)) b!5066615))

(assert (= (and b!5066615 res!2157277) b!5066613))

(declare-fun m!6108850 () Bool)

(assert (=> b!5066616 m!6108850))

(declare-fun m!6108852 () Bool)

(assert (=> b!5066616 m!6108852))

(assert (=> b!5066616 m!6107974))

(assert (=> b!5066616 m!6108850))

(assert (=> b!5066616 m!6108852))

(assert (=> b!5066616 m!6107974))

(declare-fun m!6108854 () Bool)

(assert (=> b!5066616 m!6108854))

(assert (=> b!5066614 m!6108094))

(assert (=> b!5066614 m!6108098))

(assert (=> b!5066614 m!6108100))

(assert (=> b!5066614 m!6108094))

(assert (=> b!5066614 m!6108098))

(assert (=> b!5066614 m!6108100))

(declare-fun m!6108856 () Bool)

(assert (=> b!5066614 m!6108856))

(assert (=> b!5066615 m!6108094))

(assert (=> b!5066615 m!6108104))

(assert (=> b!5066615 m!6108106))

(assert (=> b!5066615 m!6108094))

(assert (=> b!5066615 m!6108104))

(assert (=> b!5066615 m!6108106))

(declare-fun m!6108858 () Bool)

(assert (=> b!5066615 m!6108858))

(assert (=> b!5066620 m!6108852))

(assert (=> b!5066620 m!6107974))

(declare-fun m!6108862 () Bool)

(assert (=> b!5066620 m!6108862))

(assert (=> b!5066620 m!6107974))

(assert (=> b!5066620 m!6108492))

(assert (=> b!5066620 m!6108852))

(assert (=> b!5066620 m!6108850))

(assert (=> b!5066620 m!6108492))

(assert (=> b!5066620 m!6108850))

(assert (=> b!5066620 m!6108862))

(declare-fun m!6108864 () Bool)

(assert (=> b!5066620 m!6108864))

(assert (=> b!5066621 m!6108492))

(assert (=> b!5066621 m!6108494))

(assert (=> b!5066621 m!6107974))

(assert (=> b!5066621 m!6108492))

(assert (=> b!5066621 m!6108494))

(assert (=> b!5066621 m!6107974))

(declare-fun m!6108866 () Bool)

(assert (=> b!5066621 m!6108866))

(assert (=> b!5066613 m!6108094))

(assert (=> b!5066613 m!6108100))

(declare-fun m!6108870 () Bool)

(assert (=> b!5066613 m!6108870))

(assert (=> b!5066613 m!6108106))

(assert (=> b!5066613 m!6108100))

(declare-fun m!6108872 () Bool)

(assert (=> b!5066613 m!6108872))

(assert (=> b!5066613 m!6108094))

(assert (=> b!5066613 m!6108104))

(assert (=> b!5066613 m!6108870))

(assert (=> b!5066613 m!6108106))

(assert (=> b!5066613 m!6108104))

(assert (=> d!1633371 d!1633591))

(declare-fun b!5066628 () Bool)

(declare-fun res!2157288 () Bool)

(declare-fun e!3161836 () Bool)

(assert (=> b!5066628 (=> (not res!2157288) (not e!3161836))))

(assert (=> b!5066628 (= res!2157288 (isBalanced!4426 (left!42816 (right!43146 (right!43146 xs!286)))))))

(declare-fun b!5066629 () Bool)

(declare-fun e!3161835 () Bool)

(assert (=> b!5066629 (= e!3161835 e!3161836)))

(declare-fun res!2157291 () Bool)

(assert (=> b!5066629 (=> (not res!2157291) (not e!3161836))))

(assert (=> b!5066629 (= res!2157291 (<= (- 1) (- (height!2141 (left!42816 (right!43146 (right!43146 xs!286)))) (height!2141 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5066630 () Bool)

(declare-fun res!2157286 () Bool)

(assert (=> b!5066630 (=> (not res!2157286) (not e!3161836))))

(assert (=> b!5066630 (= res!2157286 (not (isEmpty!31631 (left!42816 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5066632 () Bool)

(declare-fun res!2157290 () Bool)

(assert (=> b!5066632 (=> (not res!2157290) (not e!3161836))))

(assert (=> b!5066632 (= res!2157290 (<= (- (height!2141 (left!42816 (right!43146 (right!43146 xs!286)))) (height!2141 (right!43146 (right!43146 (right!43146 xs!286))))) 1))))

(declare-fun b!5066633 () Bool)

(assert (=> b!5066633 (= e!3161836 (not (isEmpty!31631 (right!43146 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5066631 () Bool)

(declare-fun res!2157287 () Bool)

(assert (=> b!5066631 (=> (not res!2157287) (not e!3161836))))

(assert (=> b!5066631 (= res!2157287 (isBalanced!4426 (right!43146 (right!43146 (right!43146 xs!286)))))))

(declare-fun d!1633599 () Bool)

(declare-fun res!2157289 () Bool)

(assert (=> d!1633599 (=> res!2157289 e!3161835)))

(assert (=> d!1633599 (= res!2157289 (not ((_ is Node!15564) (right!43146 (right!43146 xs!286)))))))

(assert (=> d!1633599 (= (isBalanced!4426 (right!43146 (right!43146 xs!286))) e!3161835)))

(assert (= (and d!1633599 (not res!2157289)) b!5066629))

(assert (= (and b!5066629 res!2157291) b!5066632))

(assert (= (and b!5066632 res!2157290) b!5066628))

(assert (= (and b!5066628 res!2157288) b!5066631))

(assert (= (and b!5066631 res!2157287) b!5066630))

(assert (= (and b!5066630 res!2157286) b!5066633))

(declare-fun m!6108874 () Bool)

(assert (=> b!5066630 m!6108874))

(declare-fun m!6108876 () Bool)

(assert (=> b!5066628 m!6108876))

(declare-fun m!6108878 () Bool)

(assert (=> b!5066633 m!6108878))

(declare-fun m!6108880 () Bool)

(assert (=> b!5066632 m!6108880))

(declare-fun m!6108882 () Bool)

(assert (=> b!5066632 m!6108882))

(declare-fun m!6108884 () Bool)

(assert (=> b!5066631 m!6108884))

(assert (=> b!5066629 m!6108880))

(assert (=> b!5066629 m!6108882))

(assert (=> d!1633371 d!1633599))

(assert (=> b!5066352 d!1633309))

(assert (=> b!5066352 d!1633311))

(assert (=> b!5066317 d!1633529))

(assert (=> b!5066317 d!1633531))

(assert (=> b!5066317 d!1633465))

(assert (=> b!5066317 d!1633327))

(declare-fun b!5066655 () Bool)

(declare-fun res!2157299 () Bool)

(declare-fun e!3161848 () Bool)

(assert (=> b!5066655 (=> (not res!2157299) (not e!3161848))))

(assert (=> b!5066655 (= res!2157299 (isBalanced!4426 (left!42816 (left!42816 lt!2088868))))))

(declare-fun b!5066656 () Bool)

(declare-fun e!3161847 () Bool)

(assert (=> b!5066656 (= e!3161847 e!3161848)))

(declare-fun res!2157302 () Bool)

(assert (=> b!5066656 (=> (not res!2157302) (not e!3161848))))

(assert (=> b!5066656 (= res!2157302 (<= (- 1) (- (height!2141 (left!42816 (left!42816 lt!2088868))) (height!2141 (right!43146 (left!42816 lt!2088868))))))))

(declare-fun b!5066657 () Bool)

(declare-fun res!2157297 () Bool)

(assert (=> b!5066657 (=> (not res!2157297) (not e!3161848))))

(assert (=> b!5066657 (= res!2157297 (not (isEmpty!31631 (left!42816 (left!42816 lt!2088868)))))))

(declare-fun b!5066659 () Bool)

(declare-fun res!2157301 () Bool)

(assert (=> b!5066659 (=> (not res!2157301) (not e!3161848))))

(assert (=> b!5066659 (= res!2157301 (<= (- (height!2141 (left!42816 (left!42816 lt!2088868))) (height!2141 (right!43146 (left!42816 lt!2088868)))) 1))))

(declare-fun b!5066660 () Bool)

(assert (=> b!5066660 (= e!3161848 (not (isEmpty!31631 (right!43146 (left!42816 lt!2088868)))))))

(declare-fun b!5066658 () Bool)

(declare-fun res!2157298 () Bool)

(assert (=> b!5066658 (=> (not res!2157298) (not e!3161848))))

(assert (=> b!5066658 (= res!2157298 (isBalanced!4426 (right!43146 (left!42816 lt!2088868))))))

(declare-fun d!1633603 () Bool)

(declare-fun res!2157300 () Bool)

(assert (=> d!1633603 (=> res!2157300 e!3161847)))

(assert (=> d!1633603 (= res!2157300 (not ((_ is Node!15564) (left!42816 lt!2088868))))))

(assert (=> d!1633603 (= (isBalanced!4426 (left!42816 lt!2088868)) e!3161847)))

(assert (= (and d!1633603 (not res!2157300)) b!5066656))

(assert (= (and b!5066656 res!2157302) b!5066659))

(assert (= (and b!5066659 res!2157301) b!5066655))

(assert (= (and b!5066655 res!2157299) b!5066658))

(assert (= (and b!5066658 res!2157298) b!5066657))

(assert (= (and b!5066657 res!2157297) b!5066660))

(declare-fun m!6108886 () Bool)

(assert (=> b!5066657 m!6108886))

(declare-fun m!6108888 () Bool)

(assert (=> b!5066655 m!6108888))

(declare-fun m!6108890 () Bool)

(assert (=> b!5066660 m!6108890))

(declare-fun m!6108892 () Bool)

(assert (=> b!5066659 m!6108892))

(declare-fun m!6108894 () Bool)

(assert (=> b!5066659 m!6108894))

(declare-fun m!6108896 () Bool)

(assert (=> b!5066658 m!6108896))

(assert (=> b!5066656 m!6108892))

(assert (=> b!5066656 m!6108894))

(assert (=> b!5065962 d!1633603))

(declare-fun d!1633605 () Bool)

(declare-fun lt!2088955 () Bool)

(assert (=> d!1633605 (= lt!2088955 (isEmpty!31632 (list!18989 (left!42816 xs!286))))))

(assert (=> d!1633605 (= lt!2088955 (= (size!39075 (left!42816 xs!286)) 0))))

(assert (=> d!1633605 (= (isEmpty!31631 (left!42816 xs!286)) lt!2088955)))

(declare-fun bs!1189902 () Bool)

(assert (= bs!1189902 d!1633605))

(assert (=> bs!1189902 m!6108112))

(assert (=> bs!1189902 m!6108112))

(declare-fun m!6108898 () Bool)

(assert (=> bs!1189902 m!6108898))

(assert (=> bs!1189902 m!6108150))

(assert (=> b!5066350 d!1633605))

(declare-fun d!1633607 () Bool)

(declare-fun c!869763 () Bool)

(assert (=> d!1633607 (= c!869763 ((_ is Node!15564) (left!42816 (right!43146 ys!41))))))

(declare-fun e!3161849 () Bool)

(assert (=> d!1633607 (= (inv!77556 (left!42816 (right!43146 ys!41))) e!3161849)))

(declare-fun b!5066661 () Bool)

(assert (=> b!5066661 (= e!3161849 (inv!77559 (left!42816 (right!43146 ys!41))))))

(declare-fun b!5066662 () Bool)

(declare-fun e!3161850 () Bool)

(assert (=> b!5066662 (= e!3161849 e!3161850)))

(declare-fun res!2157303 () Bool)

(assert (=> b!5066662 (= res!2157303 (not ((_ is Leaf!25851) (left!42816 (right!43146 ys!41)))))))

(assert (=> b!5066662 (=> res!2157303 e!3161850)))

(declare-fun b!5066663 () Bool)

(assert (=> b!5066663 (= e!3161850 (inv!77560 (left!42816 (right!43146 ys!41))))))

(assert (= (and d!1633607 c!869763) b!5066661))

(assert (= (and d!1633607 (not c!869763)) b!5066662))

(assert (= (and b!5066662 (not res!2157303)) b!5066663))

(declare-fun m!6108900 () Bool)

(assert (=> b!5066661 m!6108900))

(declare-fun m!6108902 () Bool)

(assert (=> b!5066663 m!6108902))

(assert (=> b!5066383 d!1633607))

(declare-fun d!1633609 () Bool)

(declare-fun c!869764 () Bool)

(assert (=> d!1633609 (= c!869764 ((_ is Node!15564) (right!43146 (right!43146 ys!41))))))

(declare-fun e!3161851 () Bool)

(assert (=> d!1633609 (= (inv!77556 (right!43146 (right!43146 ys!41))) e!3161851)))

(declare-fun b!5066664 () Bool)

(assert (=> b!5066664 (= e!3161851 (inv!77559 (right!43146 (right!43146 ys!41))))))

(declare-fun b!5066665 () Bool)

(declare-fun e!3161852 () Bool)

(assert (=> b!5066665 (= e!3161851 e!3161852)))

(declare-fun res!2157304 () Bool)

(assert (=> b!5066665 (= res!2157304 (not ((_ is Leaf!25851) (right!43146 (right!43146 ys!41)))))))

(assert (=> b!5066665 (=> res!2157304 e!3161852)))

(declare-fun b!5066666 () Bool)

(assert (=> b!5066666 (= e!3161852 (inv!77560 (right!43146 (right!43146 ys!41))))))

(assert (= (and d!1633609 c!869764) b!5066664))

(assert (= (and d!1633609 (not c!869764)) b!5066665))

(assert (= (and b!5066665 (not res!2157304)) b!5066666))

(declare-fun m!6108904 () Bool)

(assert (=> b!5066664 m!6108904))

(declare-fun m!6108906 () Bool)

(assert (=> b!5066666 m!6108906))

(assert (=> b!5066383 d!1633609))

(declare-fun d!1633611 () Bool)

(assert (=> d!1633611 (= (height!2141 (ite c!869680 (right!43146 (right!43146 xs!286)) (left!42816 ys!41))) (ite ((_ is Empty!15564) (ite c!869680 (right!43146 (right!43146 xs!286)) (left!42816 ys!41))) 0 (ite ((_ is Leaf!25851) (ite c!869680 (right!43146 (right!43146 xs!286)) (left!42816 ys!41))) 1 (cheight!15775 (ite c!869680 (right!43146 (right!43146 xs!286)) (left!42816 ys!41))))))))

(assert (=> bm!352987 d!1633611))

(declare-fun bm!353041 () Bool)

(declare-fun call!353048 () Conc!15564)

(declare-fun call!353054 () Conc!15564)

(assert (=> bm!353041 (= call!353048 call!353054)))

(declare-fun b!5066667 () Bool)

(declare-fun res!2157305 () Bool)

(declare-fun e!3161860 () Bool)

(assert (=> b!5066667 (=> (not res!2157305) (not e!3161860))))

(declare-fun lt!2088958 () Conc!15564)

(assert (=> b!5066667 (= res!2157305 (<= (height!2141 lt!2088958) (+ (max!0 (height!2141 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (height!2141 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) 1)))))

(declare-fun b!5066668 () Bool)

(declare-fun e!3161859 () Conc!15564)

(declare-fun call!353052 () Conc!15564)

(assert (=> b!5066668 (= e!3161859 call!353052)))

(declare-fun bm!353042 () Bool)

(declare-fun call!353058 () Conc!15564)

(assert (=> bm!353042 (= call!353054 call!353058)))

(declare-fun bm!353043 () Bool)

(declare-fun call!353060 () Int)

(declare-fun c!869767 () Bool)

(assert (=> bm!353043 (= call!353060 (height!2141 (ite c!869767 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun bm!353044 () Bool)

(declare-fun c!869770 () Bool)

(declare-fun lt!2088959 () Conc!15564)

(declare-fun c!869769 () Bool)

(declare-fun call!353053 () Conc!15564)

(declare-fun lt!2088956 () Conc!15564)

(declare-fun c!869768 () Bool)

(declare-fun call!353050 () Conc!15564)

(declare-fun c!869765 () Bool)

(assert (=> bm!353044 (= call!353058 (<>!396 (ite c!869767 (ite c!869770 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869769 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869765 call!353053 (ite c!869768 lt!2088956 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))) (ite c!869767 (ite c!869770 call!353050 (ite c!869769 lt!2088959 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))) (ite c!869765 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (ite c!869768 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))

(declare-fun b!5066669 () Bool)

(declare-fun res!2157309 () Bool)

(assert (=> b!5066669 (=> (not res!2157309) (not e!3161860))))

(assert (=> b!5066669 (= res!2157309 (>= (height!2141 lt!2088958) (max!0 (height!2141 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (height!2141 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun b!5066670 () Bool)

(declare-fun res!2157307 () Bool)

(assert (=> b!5066670 (=> (not res!2157307) (not e!3161860))))

(assert (=> b!5066670 (= res!2157307 (isBalanced!4426 lt!2088958))))

(declare-fun bm!353045 () Bool)

(declare-fun call!353049 () Conc!15564)

(assert (=> bm!353045 (= call!353049 call!353058)))

(declare-fun b!5066672 () Bool)

(declare-fun e!3161856 () Conc!15564)

(declare-fun e!3161855 () Conc!15564)

(assert (=> b!5066672 (= e!3161856 e!3161855)))

(assert (=> b!5066672 (= lt!2088956 call!353053)))

(declare-fun call!353046 () Int)

(declare-fun call!353051 () Int)

(assert (=> b!5066672 (= c!869768 (= call!353046 (- call!353051 3)))))

(declare-fun b!5066673 () Bool)

(assert (=> b!5066673 (= e!3161859 call!353052)))

(declare-fun bm!353046 () Bool)

(declare-fun call!353055 () Conc!15564)

(assert (=> bm!353046 (= call!353055 call!353049)))

(declare-fun b!5066674 () Bool)

(assert (=> b!5066674 (= e!3161860 (= (list!18989 lt!2088958) (++!12789 (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun b!5066675 () Bool)

(assert (=> b!5066675 (= e!3161856 call!353054)))

(declare-fun b!5066676 () Bool)

(declare-fun call!353047 () Int)

(assert (=> b!5066676 (= c!869770 (>= call!353047 call!353051))))

(declare-fun e!3161858 () Conc!15564)

(declare-fun e!3161862 () Conc!15564)

(assert (=> b!5066676 (= e!3161858 e!3161862)))

(declare-fun bm!353047 () Bool)

(declare-fun call!353059 () Conc!15564)

(assert (=> bm!353047 (= call!353053 call!353059)))

(declare-fun b!5066677 () Bool)

(assert (=> b!5066677 (= e!3161862 e!3161859)))

(assert (=> b!5066677 (= lt!2088959 call!353050)))

(assert (=> b!5066677 (= c!869769 (= call!353046 (- call!353060 3)))))

(declare-fun bm!353048 () Bool)

(assert (=> bm!353048 (= call!353047 (height!2141 (ite c!869767 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun bm!353049 () Bool)

(assert (=> bm!353049 (= call!353051 (height!2141 (ite c!869767 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5066678 () Bool)

(declare-fun e!3161853 () Conc!15564)

(declare-fun e!3161857 () Conc!15564)

(assert (=> b!5066678 (= e!3161853 e!3161857)))

(declare-fun c!869771 () Bool)

(assert (=> b!5066678 (= c!869771 (= (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) Empty!15564))))

(declare-fun b!5066679 () Bool)

(assert (=> b!5066679 (= e!3161857 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))

(declare-fun b!5066680 () Bool)

(declare-fun call!353061 () Conc!15564)

(assert (=> b!5066680 (= e!3161855 call!353061)))

(declare-fun bm!353050 () Bool)

(assert (=> bm!353050 (= call!353046 (height!2141 (ite c!869767 lt!2088959 lt!2088956)))))

(declare-fun b!5066681 () Bool)

(declare-fun e!3161861 () Conc!15564)

(declare-fun call!353056 () Conc!15564)

(assert (=> b!5066681 (= e!3161861 call!353056)))

(declare-fun bm!353051 () Bool)

(assert (=> bm!353051 (= call!353059 (++!12788 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))

(declare-fun b!5066682 () Bool)

(assert (=> b!5066682 (= e!3161862 call!353049)))

(declare-fun bm!353052 () Bool)

(declare-fun call!353057 () Conc!15564)

(assert (=> bm!353052 (= call!353057 call!353056)))

(declare-fun b!5066683 () Bool)

(assert (=> b!5066683 (= c!869765 (>= call!353047 call!353060))))

(assert (=> b!5066683 (= e!3161858 e!3161856)))

(declare-fun bm!353053 () Bool)

(assert (=> bm!353053 (= call!353061 call!353057)))

(declare-fun b!5066684 () Bool)

(declare-fun c!869772 () Bool)

(declare-fun lt!2088957 () Int)

(assert (=> b!5066684 (= c!869772 (and (<= (- 1) lt!2088957) (<= lt!2088957 1)))))

(assert (=> b!5066684 (= lt!2088957 (- (height!2141 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (height!2141 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))))

(assert (=> b!5066684 (= e!3161857 e!3161861)))

(declare-fun e!3161854 () Bool)

(declare-fun b!5066685 () Bool)

(assert (=> b!5066685 (= e!3161854 (isBalanced!4426 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))

(declare-fun b!5066686 () Bool)

(assert (=> b!5066686 (= e!3161853 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))

(declare-fun bm!353054 () Bool)

(assert (=> bm!353054 (= call!353056 (<>!396 (ite c!869772 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869767 (ite c!869769 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) call!353055) (ite c!869768 call!353048 lt!2088956))) (ite c!869772 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869767 (ite c!869769 call!353055 lt!2088959) (ite c!869768 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) call!353048)))))))

(declare-fun b!5066687 () Bool)

(assert (=> b!5066687 (= e!3161855 call!353061)))

(declare-fun b!5066671 () Bool)

(assert (=> b!5066671 (= e!3161861 e!3161858)))

(assert (=> b!5066671 (= c!869767 (< lt!2088957 (- 1)))))

(declare-fun d!1633613 () Bool)

(assert (=> d!1633613 e!3161860))

(declare-fun res!2157308 () Bool)

(assert (=> d!1633613 (=> (not res!2157308) (not e!3161860))))

(assert (=> d!1633613 (= res!2157308 (appendAssocInst!910 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))

(assert (=> d!1633613 (= lt!2088958 e!3161853)))

(declare-fun c!869766 () Bool)

(assert (=> d!1633613 (= c!869766 (= (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) Empty!15564))))

(assert (=> d!1633613 e!3161854))

(declare-fun res!2157306 () Bool)

(assert (=> d!1633613 (=> (not res!2157306) (not e!3161854))))

(assert (=> d!1633613 (= res!2157306 (isBalanced!4426 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))

(assert (=> d!1633613 (= (++!12788 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) lt!2088958)))

(declare-fun bm!353055 () Bool)

(assert (=> bm!353055 (= call!353050 call!353059)))

(declare-fun bm!353056 () Bool)

(assert (=> bm!353056 (= call!353052 call!353057)))

(assert (= (and d!1633613 res!2157306) b!5066685))

(assert (= (and d!1633613 c!869766) b!5066686))

(assert (= (and d!1633613 (not c!869766)) b!5066678))

(assert (= (and b!5066678 c!869771) b!5066679))

(assert (= (and b!5066678 (not c!869771)) b!5066684))

(assert (= (and b!5066684 c!869772) b!5066681))

(assert (= (and b!5066684 (not c!869772)) b!5066671))

(assert (= (and b!5066671 c!869767) b!5066676))

(assert (= (and b!5066671 (not c!869767)) b!5066683))

(assert (= (and b!5066676 c!869770) b!5066682))

(assert (= (and b!5066676 (not c!869770)) b!5066677))

(assert (= (and b!5066677 c!869769) b!5066673))

(assert (= (and b!5066677 (not c!869769)) b!5066668))

(assert (= (or b!5066673 b!5066668) bm!353046))

(assert (= (or b!5066673 b!5066668) bm!353056))

(assert (= (or b!5066682 b!5066677) bm!353055))

(assert (= (or b!5066682 bm!353046) bm!353045))

(assert (= (and b!5066683 c!869765) b!5066675))

(assert (= (and b!5066683 (not c!869765)) b!5066672))

(assert (= (and b!5066672 c!869768) b!5066687))

(assert (= (and b!5066672 (not c!869768)) b!5066680))

(assert (= (or b!5066687 b!5066680) bm!353041))

(assert (= (or b!5066687 b!5066680) bm!353053))

(assert (= (or b!5066675 b!5066672) bm!353047))

(assert (= (or b!5066675 bm!353041) bm!353042))

(assert (= (or bm!353055 bm!353047) bm!353051))

(assert (= (or b!5066676 b!5066683) bm!353048))

(assert (= (or b!5066676 b!5066672) bm!353049))

(assert (= (or b!5066677 b!5066683) bm!353043))

(assert (= (or bm!353056 bm!353053) bm!353052))

(assert (= (or bm!353045 bm!353042) bm!353044))

(assert (= (or b!5066677 b!5066672) bm!353050))

(assert (= (or b!5066681 bm!353052) bm!353054))

(assert (= (and d!1633613 res!2157308) b!5066670))

(assert (= (and b!5066670 res!2157307) b!5066667))

(assert (= (and b!5066667 res!2157305) b!5066669))

(assert (= (and b!5066669 res!2157309) b!5066674))

(declare-fun m!6108908 () Bool)

(assert (=> d!1633613 m!6108908))

(declare-fun m!6108910 () Bool)

(assert (=> d!1633613 m!6108910))

(declare-fun m!6108912 () Bool)

(assert (=> b!5066670 m!6108912))

(declare-fun m!6108914 () Bool)

(assert (=> b!5066667 m!6108914))

(declare-fun m!6108916 () Bool)

(assert (=> b!5066667 m!6108916))

(declare-fun m!6108918 () Bool)

(assert (=> b!5066667 m!6108918))

(assert (=> b!5066667 m!6108916))

(assert (=> b!5066667 m!6108918))

(declare-fun m!6108920 () Bool)

(assert (=> b!5066667 m!6108920))

(declare-fun m!6108922 () Bool)

(assert (=> bm!353048 m!6108922))

(assert (=> b!5066669 m!6108914))

(assert (=> b!5066669 m!6108916))

(assert (=> b!5066669 m!6108918))

(assert (=> b!5066669 m!6108916))

(assert (=> b!5066669 m!6108918))

(assert (=> b!5066669 m!6108920))

(declare-fun m!6108924 () Bool)

(assert (=> bm!353054 m!6108924))

(declare-fun m!6108926 () Bool)

(assert (=> bm!353050 m!6108926))

(declare-fun m!6108928 () Bool)

(assert (=> b!5066685 m!6108928))

(declare-fun m!6108930 () Bool)

(assert (=> bm!353051 m!6108930))

(declare-fun m!6108932 () Bool)

(assert (=> bm!353049 m!6108932))

(assert (=> b!5066684 m!6108918))

(assert (=> b!5066684 m!6108916))

(declare-fun m!6108934 () Bool)

(assert (=> b!5066674 m!6108934))

(declare-fun m!6108936 () Bool)

(assert (=> b!5066674 m!6108936))

(declare-fun m!6108938 () Bool)

(assert (=> b!5066674 m!6108938))

(assert (=> b!5066674 m!6108936))

(assert (=> b!5066674 m!6108938))

(declare-fun m!6108940 () Bool)

(assert (=> b!5066674 m!6108940))

(declare-fun m!6108942 () Bool)

(assert (=> bm!353043 m!6108942))

(declare-fun m!6108944 () Bool)

(assert (=> bm!353044 m!6108944))

(assert (=> bm!352995 d!1633613))

(declare-fun d!1633615 () Bool)

(declare-fun lt!2088960 () Bool)

(assert (=> d!1633615 (= lt!2088960 (isEmpty!31632 (list!18989 (left!42816 lt!2088868))))))

(assert (=> d!1633615 (= lt!2088960 (= (size!39075 (left!42816 lt!2088868)) 0))))

(assert (=> d!1633615 (= (isEmpty!31631 (left!42816 lt!2088868)) lt!2088960)))

(declare-fun bs!1189903 () Bool)

(assert (= bs!1189903 d!1633615))

(assert (=> bs!1189903 m!6108152))

(assert (=> bs!1189903 m!6108152))

(declare-fun m!6108946 () Bool)

(assert (=> bs!1189903 m!6108946))

(declare-fun m!6108948 () Bool)

(assert (=> bs!1189903 m!6108948))

(assert (=> b!5065964 d!1633615))

(declare-fun d!1633617 () Bool)

(declare-fun c!869773 () Bool)

(assert (=> d!1633617 (= c!869773 ((_ is Empty!15564) lt!2088874))))

(declare-fun e!3161863 () List!58558)

(assert (=> d!1633617 (= (list!18989 lt!2088874) e!3161863)))

(declare-fun b!5066689 () Bool)

(declare-fun e!3161864 () List!58558)

(assert (=> b!5066689 (= e!3161863 e!3161864)))

(declare-fun c!869774 () Bool)

(assert (=> b!5066689 (= c!869774 ((_ is Leaf!25851) lt!2088874))))

(declare-fun b!5066688 () Bool)

(assert (=> b!5066688 (= e!3161863 Nil!58434)))

(declare-fun b!5066691 () Bool)

(assert (=> b!5066691 (= e!3161864 (++!12789 (list!18989 (left!42816 lt!2088874)) (list!18989 (right!43146 lt!2088874))))))

(declare-fun b!5066690 () Bool)

(assert (=> b!5066690 (= e!3161864 (list!18990 (xs!18914 lt!2088874)))))

(assert (= (and d!1633617 c!869773) b!5066688))

(assert (= (and d!1633617 (not c!869773)) b!5066689))

(assert (= (and b!5066689 c!869774) b!5066690))

(assert (= (and b!5066689 (not c!869774)) b!5066691))

(declare-fun m!6108950 () Bool)

(assert (=> b!5066691 m!6108950))

(declare-fun m!6108952 () Bool)

(assert (=> b!5066691 m!6108952))

(assert (=> b!5066691 m!6108950))

(assert (=> b!5066691 m!6108952))

(declare-fun m!6108954 () Bool)

(assert (=> b!5066691 m!6108954))

(declare-fun m!6108956 () Bool)

(assert (=> b!5066690 m!6108956))

(assert (=> d!1633355 d!1633617))

(declare-fun b!5066694 () Bool)

(declare-fun res!2157311 () Bool)

(declare-fun e!3161865 () Bool)

(assert (=> b!5066694 (=> (not res!2157311) (not e!3161865))))

(declare-fun lt!2088961 () List!58558)

(assert (=> b!5066694 (= res!2157311 (= (size!39074 lt!2088961) (+ (size!39074 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) (size!39074 (list!18989 lt!2088865)))))))

(declare-fun b!5066695 () Bool)

(assert (=> b!5066695 (= e!3161865 (or (not (= (list!18989 lt!2088865) Nil!58434)) (= lt!2088961 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))))

(declare-fun b!5066693 () Bool)

(declare-fun e!3161866 () List!58558)

(assert (=> b!5066693 (= e!3161866 (Cons!58434 (h!64882 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) (++!12789 (t!371291 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) (list!18989 lt!2088865))))))

(declare-fun b!5066692 () Bool)

(assert (=> b!5066692 (= e!3161866 (list!18989 lt!2088865))))

(declare-fun d!1633619 () Bool)

(assert (=> d!1633619 e!3161865))

(declare-fun res!2157310 () Bool)

(assert (=> d!1633619 (=> (not res!2157310) (not e!3161865))))

(assert (=> d!1633619 (= res!2157310 (= (content!10417 lt!2088961) ((_ map or) (content!10417 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) (content!10417 (list!18989 lt!2088865)))))))

(assert (=> d!1633619 (= lt!2088961 e!3161866)))

(declare-fun c!869775 () Bool)

(assert (=> d!1633619 (= c!869775 ((_ is Nil!58434) (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(assert (=> d!1633619 (= (++!12789 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) (list!18989 lt!2088865)) lt!2088961)))

(assert (= (and d!1633619 c!869775) b!5066692))

(assert (= (and d!1633619 (not c!869775)) b!5066693))

(assert (= (and d!1633619 res!2157310) b!5066694))

(assert (= (and b!5066694 res!2157311) b!5066695))

(declare-fun m!6108968 () Bool)

(assert (=> b!5066694 m!6108968))

(assert (=> b!5066694 m!6108126))

(assert (=> b!5066694 m!6108456))

(assert (=> b!5066694 m!6108128))

(assert (=> b!5066694 m!6108458))

(assert (=> b!5066693 m!6108128))

(declare-fun m!6108972 () Bool)

(assert (=> b!5066693 m!6108972))

(declare-fun m!6108976 () Bool)

(assert (=> d!1633619 m!6108976))

(assert (=> d!1633619 m!6108126))

(declare-fun m!6108980 () Bool)

(assert (=> d!1633619 m!6108980))

(assert (=> d!1633619 m!6108128))

(declare-fun m!6108982 () Bool)

(assert (=> d!1633619 m!6108982))

(assert (=> d!1633355 d!1633619))

(declare-fun d!1633621 () Bool)

(declare-fun c!869776 () Bool)

(assert (=> d!1633621 (= c!869776 ((_ is Empty!15564) (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))

(declare-fun e!3161867 () List!58558)

(assert (=> d!1633621 (= (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))) e!3161867)))

(declare-fun b!5066697 () Bool)

(declare-fun e!3161868 () List!58558)

(assert (=> b!5066697 (= e!3161867 e!3161868)))

(declare-fun c!869777 () Bool)

(assert (=> b!5066697 (= c!869777 ((_ is Leaf!25851) (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))

(declare-fun b!5066696 () Bool)

(assert (=> b!5066696 (= e!3161867 Nil!58434)))

(declare-fun b!5066699 () Bool)

(assert (=> b!5066699 (= e!3161868 (++!12789 (list!18989 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) (list!18989 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))))

(declare-fun b!5066698 () Bool)

(assert (=> b!5066698 (= e!3161868 (list!18990 (xs!18914 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(assert (= (and d!1633621 c!869776) b!5066696))

(assert (= (and d!1633621 (not c!869776)) b!5066697))

(assert (= (and b!5066697 c!869777) b!5066698))

(assert (= (and b!5066697 (not c!869777)) b!5066699))

(declare-fun m!6108992 () Bool)

(assert (=> b!5066699 m!6108992))

(declare-fun m!6108994 () Bool)

(assert (=> b!5066699 m!6108994))

(assert (=> b!5066699 m!6108992))

(assert (=> b!5066699 m!6108994))

(declare-fun m!6108998 () Bool)

(assert (=> b!5066699 m!6108998))

(declare-fun m!6109000 () Bool)

(assert (=> b!5066698 m!6109000))

(assert (=> d!1633355 d!1633621))

(declare-fun d!1633623 () Bool)

(declare-fun c!869778 () Bool)

(assert (=> d!1633623 (= c!869778 ((_ is Empty!15564) lt!2088865))))

(declare-fun e!3161869 () List!58558)

(assert (=> d!1633623 (= (list!18989 lt!2088865) e!3161869)))

(declare-fun b!5066701 () Bool)

(declare-fun e!3161870 () List!58558)

(assert (=> b!5066701 (= e!3161869 e!3161870)))

(declare-fun c!869779 () Bool)

(assert (=> b!5066701 (= c!869779 ((_ is Leaf!25851) lt!2088865))))

(declare-fun b!5066700 () Bool)

(assert (=> b!5066700 (= e!3161869 Nil!58434)))

(declare-fun b!5066703 () Bool)

(assert (=> b!5066703 (= e!3161870 (++!12789 (list!18989 (left!42816 lt!2088865)) (list!18989 (right!43146 lt!2088865))))))

(declare-fun b!5066702 () Bool)

(assert (=> b!5066702 (= e!3161870 (list!18990 (xs!18914 lt!2088865)))))

(assert (= (and d!1633623 c!869778) b!5066700))

(assert (= (and d!1633623 (not c!869778)) b!5066701))

(assert (= (and b!5066701 c!869779) b!5066702))

(assert (= (and b!5066701 (not c!869779)) b!5066703))

(declare-fun m!6109002 () Bool)

(assert (=> b!5066703 m!6109002))

(declare-fun m!6109006 () Bool)

(assert (=> b!5066703 m!6109006))

(assert (=> b!5066703 m!6109002))

(assert (=> b!5066703 m!6109006))

(declare-fun m!6109008 () Bool)

(assert (=> b!5066703 m!6109008))

(declare-fun m!6109010 () Bool)

(assert (=> b!5066702 m!6109010))

(assert (=> d!1633355 d!1633623))

(declare-fun d!1633625 () Bool)

(assert (=> d!1633625 (= (inv!77555 (xs!18914 (left!42816 xs!286))) (<= (size!39074 (innerList!15652 (xs!18914 (left!42816 xs!286)))) 2147483647))))

(declare-fun bs!1189904 () Bool)

(assert (= bs!1189904 d!1633625))

(declare-fun m!6109012 () Bool)

(assert (=> bs!1189904 m!6109012))

(assert (=> b!5066374 d!1633625))

(assert (=> b!5066046 d!1633363))

(assert (=> b!5066046 d!1633503))

(declare-fun d!1633627 () Bool)

(declare-fun c!869780 () Bool)

(assert (=> d!1633627 (= c!869780 ((_ is Empty!15564) (right!43146 (left!42816 ys!41))))))

(declare-fun e!3161871 () List!58558)

(assert (=> d!1633627 (= (list!18989 (right!43146 (left!42816 ys!41))) e!3161871)))

(declare-fun b!5066705 () Bool)

(declare-fun e!3161872 () List!58558)

(assert (=> b!5066705 (= e!3161871 e!3161872)))

(declare-fun c!869781 () Bool)

(assert (=> b!5066705 (= c!869781 ((_ is Leaf!25851) (right!43146 (left!42816 ys!41))))))

(declare-fun b!5066704 () Bool)

(assert (=> b!5066704 (= e!3161871 Nil!58434)))

(declare-fun b!5066707 () Bool)

(assert (=> b!5066707 (= e!3161872 (++!12789 (list!18989 (left!42816 (right!43146 (left!42816 ys!41)))) (list!18989 (right!43146 (right!43146 (left!42816 ys!41))))))))

(declare-fun b!5066706 () Bool)

(assert (=> b!5066706 (= e!3161872 (list!18990 (xs!18914 (right!43146 (left!42816 ys!41)))))))

(assert (= (and d!1633627 c!869780) b!5066704))

(assert (= (and d!1633627 (not c!869780)) b!5066705))

(assert (= (and b!5066705 c!869781) b!5066706))

(assert (= (and b!5066705 (not c!869781)) b!5066707))

(declare-fun m!6109016 () Bool)

(assert (=> b!5066707 m!6109016))

(declare-fun m!6109018 () Bool)

(assert (=> b!5066707 m!6109018))

(assert (=> b!5066707 m!6109016))

(assert (=> b!5066707 m!6109018))

(declare-fun m!6109020 () Bool)

(assert (=> b!5066707 m!6109020))

(declare-fun m!6109022 () Bool)

(assert (=> b!5066706 m!6109022))

(assert (=> b!5066046 d!1633627))

(declare-fun bm!353057 () Bool)

(declare-fun call!353064 () List!58558)

(declare-fun call!353065 () List!58558)

(assert (=> bm!353057 (= call!353064 (++!12789 call!353065 (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353058 () Bool)

(declare-fun call!353063 () List!58558)

(assert (=> bm!353058 (= call!353063 (++!12789 (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))))))

(declare-fun call!353062 () List!58558)

(declare-fun bm!353059 () Bool)

(assert (=> bm!353059 (= call!353062 (++!12789 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))) call!353063))))

(declare-fun b!5066709 () Bool)

(declare-fun e!3161873 () Bool)

(assert (=> b!5066709 (= e!3161873 (= call!353064 call!353062))))

(declare-fun bm!353060 () Bool)

(assert (=> bm!353060 (= call!353065 (++!12789 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun d!1633629 () Bool)

(assert (=> d!1633629 e!3161873))

(declare-fun c!869782 () Bool)

(assert (=> d!1633629 (= c!869782 ((_ is Nil!58434) (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))))))

(assert (=> d!1633629 (= (appendAssoc!301 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))) (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))) true)))

(declare-fun b!5066708 () Bool)

(assert (=> b!5066708 (= e!3161873 (= call!353064 call!353062))))

(declare-fun lt!2088962 () Bool)

(assert (=> b!5066708 (= lt!2088962 (appendAssoc!301 (t!371291 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))))))

(assert (= (and d!1633629 c!869782) b!5066709))

(assert (= (and d!1633629 (not c!869782)) b!5066708))

(assert (= (or b!5066709 b!5066708) bm!353060))

(assert (= (or b!5066709 b!5066708) bm!353058))

(assert (= (or b!5066709 b!5066708) bm!353059))

(assert (= (or b!5066709 b!5066708) bm!353057))

(assert (=> bm!353059 m!6108120))

(declare-fun m!6109032 () Bool)

(assert (=> bm!353059 m!6109032))

(assert (=> bm!353060 m!6108120))

(assert (=> bm!353060 m!6108106))

(declare-fun m!6109034 () Bool)

(assert (=> bm!353060 m!6109034))

(assert (=> bm!353058 m!6108106))

(assert (=> bm!353058 m!6108100))

(declare-fun m!6109036 () Bool)

(assert (=> bm!353058 m!6109036))

(assert (=> b!5066708 m!6108106))

(assert (=> b!5066708 m!6108100))

(declare-fun m!6109038 () Bool)

(assert (=> b!5066708 m!6109038))

(assert (=> bm!353057 m!6108100))

(declare-fun m!6109040 () Bool)

(assert (=> bm!353057 m!6109040))

(assert (=> b!5066046 d!1633629))

(declare-fun b!5066712 () Bool)

(declare-fun res!2157313 () Bool)

(declare-fun e!3161874 () Bool)

(assert (=> b!5066712 (=> (not res!2157313) (not e!3161874))))

(declare-fun lt!2088963 () List!58558)

(assert (=> b!5066712 (= res!2157313 (= (size!39074 lt!2088963) (+ (size!39074 (list!18989 xs!286)) (size!39074 (list!18989 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5066713 () Bool)

(assert (=> b!5066713 (= e!3161874 (or (not (= (list!18989 (left!42816 (left!42816 ys!41))) Nil!58434)) (= lt!2088963 (list!18989 xs!286))))))

(declare-fun b!5066711 () Bool)

(declare-fun e!3161875 () List!58558)

(assert (=> b!5066711 (= e!3161875 (Cons!58434 (h!64882 (list!18989 xs!286)) (++!12789 (t!371291 (list!18989 xs!286)) (list!18989 (left!42816 (left!42816 ys!41))))))))

(declare-fun b!5066710 () Bool)

(assert (=> b!5066710 (= e!3161875 (list!18989 (left!42816 (left!42816 ys!41))))))

(declare-fun d!1633635 () Bool)

(assert (=> d!1633635 e!3161874))

(declare-fun res!2157312 () Bool)

(assert (=> d!1633635 (=> (not res!2157312) (not e!3161874))))

(assert (=> d!1633635 (= res!2157312 (= (content!10417 lt!2088963) ((_ map or) (content!10417 (list!18989 xs!286)) (content!10417 (list!18989 (left!42816 (left!42816 ys!41)))))))))

(assert (=> d!1633635 (= lt!2088963 e!3161875)))

(declare-fun c!869783 () Bool)

(assert (=> d!1633635 (= c!869783 ((_ is Nil!58434) (list!18989 xs!286)))))

(assert (=> d!1633635 (= (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))) lt!2088963)))

(assert (= (and d!1633635 c!869783) b!5066710))

(assert (= (and d!1633635 (not c!869783)) b!5066711))

(assert (= (and d!1633635 res!2157312) b!5066712))

(assert (= (and b!5066712 res!2157313) b!5066713))

(declare-fun m!6109042 () Bool)

(assert (=> b!5066712 m!6109042))

(assert (=> b!5066712 m!6107972))

(assert (=> b!5066712 m!6108162))

(assert (=> b!5066712 m!6108104))

(declare-fun m!6109044 () Bool)

(assert (=> b!5066712 m!6109044))

(assert (=> b!5066711 m!6108104))

(declare-fun m!6109046 () Bool)

(assert (=> b!5066711 m!6109046))

(declare-fun m!6109048 () Bool)

(assert (=> d!1633635 m!6109048))

(assert (=> d!1633635 m!6107972))

(assert (=> d!1633635 m!6108170))

(assert (=> d!1633635 m!6108104))

(declare-fun m!6109050 () Bool)

(assert (=> d!1633635 m!6109050))

(assert (=> b!5066046 d!1633635))

(declare-fun d!1633637 () Bool)

(declare-fun c!869784 () Bool)

(assert (=> d!1633637 (= c!869784 ((_ is Empty!15564) (left!42816 (left!42816 ys!41))))))

(declare-fun e!3161876 () List!58558)

(assert (=> d!1633637 (= (list!18989 (left!42816 (left!42816 ys!41))) e!3161876)))

(declare-fun b!5066715 () Bool)

(declare-fun e!3161877 () List!58558)

(assert (=> b!5066715 (= e!3161876 e!3161877)))

(declare-fun c!869785 () Bool)

(assert (=> b!5066715 (= c!869785 ((_ is Leaf!25851) (left!42816 (left!42816 ys!41))))))

(declare-fun b!5066714 () Bool)

(assert (=> b!5066714 (= e!3161876 Nil!58434)))

(declare-fun b!5066717 () Bool)

(assert (=> b!5066717 (= e!3161877 (++!12789 (list!18989 (left!42816 (left!42816 (left!42816 ys!41)))) (list!18989 (right!43146 (left!42816 (left!42816 ys!41))))))))

(declare-fun b!5066716 () Bool)

(assert (=> b!5066716 (= e!3161877 (list!18990 (xs!18914 (left!42816 (left!42816 ys!41)))))))

(assert (= (and d!1633637 c!869784) b!5066714))

(assert (= (and d!1633637 (not c!869784)) b!5066715))

(assert (= (and b!5066715 c!869785) b!5066716))

(assert (= (and b!5066715 (not c!869785)) b!5066717))

(declare-fun m!6109052 () Bool)

(assert (=> b!5066717 m!6109052))

(declare-fun m!6109054 () Bool)

(assert (=> b!5066717 m!6109054))

(assert (=> b!5066717 m!6109052))

(assert (=> b!5066717 m!6109054))

(declare-fun m!6109056 () Bool)

(assert (=> b!5066717 m!6109056))

(declare-fun m!6109058 () Bool)

(assert (=> b!5066716 m!6109058))

(assert (=> b!5066046 d!1633637))

(declare-fun b!5066718 () Bool)

(declare-fun res!2157316 () Bool)

(declare-fun e!3161879 () Bool)

(assert (=> b!5066718 (=> (not res!2157316) (not e!3161879))))

(assert (=> b!5066718 (= res!2157316 (isBalanced!4426 (left!42816 (left!42816 xs!286))))))

(declare-fun b!5066719 () Bool)

(declare-fun e!3161878 () Bool)

(assert (=> b!5066719 (= e!3161878 e!3161879)))

(declare-fun res!2157319 () Bool)

(assert (=> b!5066719 (=> (not res!2157319) (not e!3161879))))

(assert (=> b!5066719 (= res!2157319 (<= (- 1) (- (height!2141 (left!42816 (left!42816 xs!286))) (height!2141 (right!43146 (left!42816 xs!286))))))))

(declare-fun b!5066720 () Bool)

(declare-fun res!2157314 () Bool)

(assert (=> b!5066720 (=> (not res!2157314) (not e!3161879))))

(assert (=> b!5066720 (= res!2157314 (not (isEmpty!31631 (left!42816 (left!42816 xs!286)))))))

(declare-fun b!5066722 () Bool)

(declare-fun res!2157318 () Bool)

(assert (=> b!5066722 (=> (not res!2157318) (not e!3161879))))

(assert (=> b!5066722 (= res!2157318 (<= (- (height!2141 (left!42816 (left!42816 xs!286))) (height!2141 (right!43146 (left!42816 xs!286)))) 1))))

(declare-fun b!5066723 () Bool)

(assert (=> b!5066723 (= e!3161879 (not (isEmpty!31631 (right!43146 (left!42816 xs!286)))))))

(declare-fun b!5066721 () Bool)

(declare-fun res!2157315 () Bool)

(assert (=> b!5066721 (=> (not res!2157315) (not e!3161879))))

(assert (=> b!5066721 (= res!2157315 (isBalanced!4426 (right!43146 (left!42816 xs!286))))))

(declare-fun d!1633639 () Bool)

(declare-fun res!2157317 () Bool)

(assert (=> d!1633639 (=> res!2157317 e!3161878)))

(assert (=> d!1633639 (= res!2157317 (not ((_ is Node!15564) (left!42816 xs!286))))))

(assert (=> d!1633639 (= (isBalanced!4426 (left!42816 xs!286)) e!3161878)))

(assert (= (and d!1633639 (not res!2157317)) b!5066719))

(assert (= (and b!5066719 res!2157319) b!5066722))

(assert (= (and b!5066722 res!2157318) b!5066718))

(assert (= (and b!5066718 res!2157316) b!5066721))

(assert (= (and b!5066721 res!2157315) b!5066720))

(assert (= (and b!5066720 res!2157314) b!5066723))

(declare-fun m!6109060 () Bool)

(assert (=> b!5066720 m!6109060))

(declare-fun m!6109062 () Bool)

(assert (=> b!5066718 m!6109062))

(declare-fun m!6109064 () Bool)

(assert (=> b!5066723 m!6109064))

(assert (=> b!5066722 m!6108840))

(assert (=> b!5066722 m!6108842))

(declare-fun m!6109066 () Bool)

(assert (=> b!5066721 m!6109066))

(assert (=> b!5066719 m!6108840))

(assert (=> b!5066719 m!6108842))

(assert (=> b!5066348 d!1633639))

(declare-fun d!1633641 () Bool)

(assert (=> d!1633641 (= (height!2141 (ite c!869680 lt!2088909 lt!2088906)) (ite ((_ is Empty!15564) (ite c!869680 lt!2088909 lt!2088906)) 0 (ite ((_ is Leaf!25851) (ite c!869680 lt!2088909 lt!2088906)) 1 (cheight!15775 (ite c!869680 lt!2088909 lt!2088906)))))))

(assert (=> bm!352994 d!1633641))

(assert (=> b!5065966 d!1633493))

(assert (=> b!5065966 d!1633495))

(declare-fun d!1633643 () Bool)

(declare-fun lt!2088964 () Bool)

(assert (=> d!1633643 (= lt!2088964 (isEmpty!31632 (list!18989 (right!43146 ys!41))))))

(assert (=> d!1633643 (= lt!2088964 (= (size!39075 (right!43146 ys!41)) 0))))

(assert (=> d!1633643 (= (isEmpty!31631 (right!43146 ys!41)) lt!2088964)))

(declare-fun bs!1189905 () Bool)

(assert (= bs!1189905 d!1633643))

(assert (=> bs!1189905 m!6108100))

(assert (=> bs!1189905 m!6108100))

(declare-fun m!6109068 () Bool)

(assert (=> bs!1189905 m!6109068))

(assert (=> bs!1189905 m!6108800))

(assert (=> b!5066347 d!1633643))

(declare-fun bm!353061 () Bool)

(declare-fun call!353068 () List!58558)

(declare-fun call!353069 () List!58558)

(assert (=> bm!353061 (= call!353068 (++!12789 call!353069 (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun bm!353062 () Bool)

(declare-fun call!353067 () List!58558)

(assert (=> bm!353062 (= call!353067 (++!12789 (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun bm!353063 () Bool)

(declare-fun call!353066 () List!58558)

(assert (=> bm!353063 (= call!353066 (++!12789 (list!18989 xs!286) call!353067))))

(declare-fun b!5066725 () Bool)

(declare-fun e!3161880 () Bool)

(assert (=> b!5066725 (= e!3161880 (= call!353068 call!353066))))

(declare-fun bm!353064 () Bool)

(assert (=> bm!353064 (= call!353069 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))))))

(declare-fun d!1633645 () Bool)

(assert (=> d!1633645 e!3161880))

(declare-fun c!869786 () Bool)

(assert (=> d!1633645 (= c!869786 ((_ is Nil!58434) (list!18989 xs!286)))))

(assert (=> d!1633645 (= (appendAssoc!301 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))) true)))

(declare-fun b!5066724 () Bool)

(assert (=> b!5066724 (= e!3161880 (= call!353068 call!353066))))

(declare-fun lt!2088965 () Bool)

(assert (=> b!5066724 (= lt!2088965 (appendAssoc!301 (t!371291 (list!18989 xs!286)) (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(assert (= (and d!1633645 c!869786) b!5066725))

(assert (= (and d!1633645 (not c!869786)) b!5066724))

(assert (= (or b!5066725 b!5066724) bm!353064))

(assert (= (or b!5066725 b!5066724) bm!353062))

(assert (= (or b!5066725 b!5066724) bm!353063))

(assert (= (or b!5066725 b!5066724) bm!353061))

(assert (=> bm!353063 m!6107972))

(declare-fun m!6109070 () Bool)

(assert (=> bm!353063 m!6109070))

(assert (=> bm!353064 m!6107972))

(assert (=> bm!353064 m!6108104))

(assert (=> bm!353064 m!6108120))

(assert (=> bm!353062 m!6108104))

(assert (=> bm!353062 m!6108106))

(assert (=> bm!353062 m!6108672))

(assert (=> b!5066724 m!6108104))

(assert (=> b!5066724 m!6108106))

(declare-fun m!6109072 () Bool)

(assert (=> b!5066724 m!6109072))

(assert (=> bm!353061 m!6108106))

(declare-fun m!6109074 () Bool)

(assert (=> bm!353061 m!6109074))

(assert (=> b!5066048 d!1633645))

(assert (=> b!5066048 d!1633363))

(assert (=> b!5066048 d!1633637))

(assert (=> b!5066048 d!1633627))

(declare-fun b!5066728 () Bool)

(declare-fun res!2157321 () Bool)

(declare-fun e!3161881 () Bool)

(assert (=> b!5066728 (=> (not res!2157321) (not e!3161881))))

(declare-fun lt!2088968 () List!58558)

(assert (=> b!5066728 (= res!2157321 (= (size!39074 lt!2088968) (+ (size!39074 (list!18989 (left!42816 ys!41))) (size!39074 (list!18989 (right!43146 ys!41))))))))

(declare-fun b!5066729 () Bool)

(assert (=> b!5066729 (= e!3161881 (or (not (= (list!18989 (right!43146 ys!41)) Nil!58434)) (= lt!2088968 (list!18989 (left!42816 ys!41)))))))

(declare-fun b!5066727 () Bool)

(declare-fun e!3161882 () List!58558)

(assert (=> b!5066727 (= e!3161882 (Cons!58434 (h!64882 (list!18989 (left!42816 ys!41))) (++!12789 (t!371291 (list!18989 (left!42816 ys!41))) (list!18989 (right!43146 ys!41)))))))

(declare-fun b!5066726 () Bool)

(assert (=> b!5066726 (= e!3161882 (list!18989 (right!43146 ys!41)))))

(declare-fun d!1633647 () Bool)

(assert (=> d!1633647 e!3161881))

(declare-fun res!2157320 () Bool)

(assert (=> d!1633647 (=> (not res!2157320) (not e!3161881))))

(assert (=> d!1633647 (= res!2157320 (= (content!10417 lt!2088968) ((_ map or) (content!10417 (list!18989 (left!42816 ys!41))) (content!10417 (list!18989 (right!43146 ys!41))))))))

(assert (=> d!1633647 (= lt!2088968 e!3161882)))

(declare-fun c!869787 () Bool)

(assert (=> d!1633647 (= c!869787 ((_ is Nil!58434) (list!18989 (left!42816 ys!41))))))

(assert (=> d!1633647 (= (++!12789 (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))) lt!2088968)))

(assert (= (and d!1633647 c!869787) b!5066726))

(assert (= (and d!1633647 (not c!869787)) b!5066727))

(assert (= (and d!1633647 res!2157320) b!5066728))

(assert (= (and b!5066728 res!2157321) b!5066729))

(declare-fun m!6109076 () Bool)

(assert (=> b!5066728 m!6109076))

(assert (=> b!5066728 m!6108098))

(declare-fun m!6109078 () Bool)

(assert (=> b!5066728 m!6109078))

(assert (=> b!5066728 m!6108100))

(declare-fun m!6109080 () Bool)

(assert (=> b!5066728 m!6109080))

(assert (=> b!5066727 m!6108100))

(declare-fun m!6109082 () Bool)

(assert (=> b!5066727 m!6109082))

(declare-fun m!6109084 () Bool)

(assert (=> d!1633647 m!6109084))

(assert (=> d!1633647 m!6108098))

(declare-fun m!6109086 () Bool)

(assert (=> d!1633647 m!6109086))

(assert (=> d!1633647 m!6108100))

(declare-fun m!6109088 () Bool)

(assert (=> d!1633647 m!6109088))

(assert (=> b!5066136 d!1633647))

(assert (=> b!5066136 d!1633501))

(assert (=> b!5066136 d!1633503))

(declare-fun b!5066730 () Bool)

(declare-fun res!2157324 () Bool)

(declare-fun e!3161884 () Bool)

(assert (=> b!5066730 (=> (not res!2157324) (not e!3161884))))

(assert (=> b!5066730 (= res!2157324 (isBalanced!4426 (left!42816 (right!43146 ys!41))))))

(declare-fun b!5066731 () Bool)

(declare-fun e!3161883 () Bool)

(assert (=> b!5066731 (= e!3161883 e!3161884)))

(declare-fun res!2157327 () Bool)

(assert (=> b!5066731 (=> (not res!2157327) (not e!3161884))))

(assert (=> b!5066731 (= res!2157327 (<= (- 1) (- (height!2141 (left!42816 (right!43146 ys!41))) (height!2141 (right!43146 (right!43146 ys!41))))))))

(declare-fun b!5066732 () Bool)

(declare-fun res!2157322 () Bool)

(assert (=> b!5066732 (=> (not res!2157322) (not e!3161884))))

(assert (=> b!5066732 (= res!2157322 (not (isEmpty!31631 (left!42816 (right!43146 ys!41)))))))

(declare-fun b!5066734 () Bool)

(declare-fun res!2157326 () Bool)

(assert (=> b!5066734 (=> (not res!2157326) (not e!3161884))))

(assert (=> b!5066734 (= res!2157326 (<= (- (height!2141 (left!42816 (right!43146 ys!41))) (height!2141 (right!43146 (right!43146 ys!41)))) 1))))

(declare-fun b!5066735 () Bool)

(assert (=> b!5066735 (= e!3161884 (not (isEmpty!31631 (right!43146 (right!43146 ys!41)))))))

(declare-fun b!5066733 () Bool)

(declare-fun res!2157323 () Bool)

(assert (=> b!5066733 (=> (not res!2157323) (not e!3161884))))

(assert (=> b!5066733 (= res!2157323 (isBalanced!4426 (right!43146 (right!43146 ys!41))))))

(declare-fun d!1633649 () Bool)

(declare-fun res!2157325 () Bool)

(assert (=> d!1633649 (=> res!2157325 e!3161883)))

(assert (=> d!1633649 (= res!2157325 (not ((_ is Node!15564) (right!43146 ys!41))))))

(assert (=> d!1633649 (= (isBalanced!4426 (right!43146 ys!41)) e!3161883)))

(assert (= (and d!1633649 (not res!2157325)) b!5066731))

(assert (= (and b!5066731 res!2157327) b!5066734))

(assert (= (and b!5066734 res!2157326) b!5066730))

(assert (= (and b!5066730 res!2157324) b!5066733))

(assert (= (and b!5066733 res!2157323) b!5066732))

(assert (= (and b!5066732 res!2157322) b!5066735))

(declare-fun m!6109090 () Bool)

(assert (=> b!5066732 m!6109090))

(declare-fun m!6109092 () Bool)

(assert (=> b!5066730 m!6109092))

(declare-fun m!6109094 () Bool)

(assert (=> b!5066735 m!6109094))

(assert (=> b!5066734 m!6108742))

(assert (=> b!5066734 m!6108744))

(declare-fun m!6109096 () Bool)

(assert (=> b!5066733 m!6109096))

(assert (=> b!5066731 m!6108742))

(assert (=> b!5066731 m!6108744))

(assert (=> b!5066345 d!1633649))

(declare-fun d!1633651 () Bool)

(assert (=> d!1633651 (= (height!2141 (ite c!869680 (right!43146 (right!43146 (right!43146 xs!286))) ys!41)) (ite ((_ is Empty!15564) (ite c!869680 (right!43146 (right!43146 (right!43146 xs!286))) ys!41)) 0 (ite ((_ is Leaf!25851) (ite c!869680 (right!43146 (right!43146 (right!43146 xs!286))) ys!41)) 1 (cheight!15775 (ite c!869680 (right!43146 (right!43146 (right!43146 xs!286))) ys!41)))))))

(assert (=> bm!352993 d!1633651))

(assert (=> b!5066343 d!1633547))

(assert (=> b!5066343 d!1633549))

(declare-fun d!1633653 () Bool)

(assert (=> d!1633653 (= (list!18990 (xs!18914 xs!286)) (innerList!15652 (xs!18914 xs!286)))))

(assert (=> b!5066131 d!1633653))

(declare-fun b!5066736 () Bool)

(declare-fun e!3161885 () Bool)

(declare-fun tp!1414774 () Bool)

(assert (=> b!5066736 (= e!3161885 (and tp_is_empty!37051 tp!1414774))))

(assert (=> b!5066364 (= tp!1414754 e!3161885)))

(assert (= (and b!5066364 ((_ is Cons!58434) (t!371291 (innerList!15652 (xs!18914 xs!286))))) b!5066736))

(declare-fun b!5066737 () Bool)

(declare-fun e!3161886 () Bool)

(declare-fun tp!1414775 () Bool)

(assert (=> b!5066737 (= e!3161886 (and tp_is_empty!37051 tp!1414775))))

(assert (=> b!5066379 (= tp!1414767 e!3161886)))

(assert (= (and b!5066379 ((_ is Cons!58434) (t!371291 (innerList!15652 (xs!18914 ys!41))))) b!5066737))

(declare-fun b!5066738 () Bool)

(declare-fun tp!1414778 () Bool)

(declare-fun e!3161888 () Bool)

(declare-fun tp!1414777 () Bool)

(assert (=> b!5066738 (= e!3161888 (and (inv!77556 (left!42816 (left!42816 (right!43146 xs!286)))) tp!1414777 (inv!77556 (right!43146 (left!42816 (right!43146 xs!286)))) tp!1414778))))

(declare-fun b!5066740 () Bool)

(declare-fun e!3161887 () Bool)

(declare-fun tp!1414776 () Bool)

(assert (=> b!5066740 (= e!3161887 tp!1414776)))

(declare-fun b!5066739 () Bool)

(assert (=> b!5066739 (= e!3161888 (and (inv!77555 (xs!18914 (left!42816 (right!43146 xs!286)))) e!3161887))))

(assert (=> b!5066376 (= tp!1414765 (and (inv!77556 (left!42816 (right!43146 xs!286))) e!3161888))))

(assert (= (and b!5066376 ((_ is Node!15564) (left!42816 (right!43146 xs!286)))) b!5066738))

(assert (= b!5066739 b!5066740))

(assert (= (and b!5066376 ((_ is Leaf!25851) (left!42816 (right!43146 xs!286)))) b!5066739))

(declare-fun m!6109098 () Bool)

(assert (=> b!5066738 m!6109098))

(declare-fun m!6109100 () Bool)

(assert (=> b!5066738 m!6109100))

(declare-fun m!6109102 () Bool)

(assert (=> b!5066739 m!6109102))

(assert (=> b!5066376 m!6108408))

(declare-fun tp!1414781 () Bool)

(declare-fun b!5066741 () Bool)

(declare-fun tp!1414780 () Bool)

(declare-fun e!3161891 () Bool)

(assert (=> b!5066741 (= e!3161891 (and (inv!77556 (left!42816 (right!43146 (right!43146 xs!286)))) tp!1414780 (inv!77556 (right!43146 (right!43146 (right!43146 xs!286)))) tp!1414781))))

(declare-fun b!5066743 () Bool)

(declare-fun e!3161889 () Bool)

(declare-fun tp!1414779 () Bool)

(assert (=> b!5066743 (= e!3161889 tp!1414779)))

(declare-fun b!5066742 () Bool)

(assert (=> b!5066742 (= e!3161891 (and (inv!77555 (xs!18914 (right!43146 (right!43146 xs!286)))) e!3161889))))

(assert (=> b!5066376 (= tp!1414766 (and (inv!77556 (right!43146 (right!43146 xs!286))) e!3161891))))

(assert (= (and b!5066376 ((_ is Node!15564) (right!43146 (right!43146 xs!286)))) b!5066741))

(assert (= b!5066742 b!5066743))

(assert (= (and b!5066376 ((_ is Leaf!25851) (right!43146 (right!43146 xs!286)))) b!5066742))

(declare-fun m!6109104 () Bool)

(assert (=> b!5066741 m!6109104))

(declare-fun m!6109106 () Bool)

(assert (=> b!5066741 m!6109106))

(declare-fun m!6109108 () Bool)

(assert (=> b!5066742 m!6109108))

(assert (=> b!5066376 m!6108410))

(declare-fun e!3161894 () Bool)

(declare-fun b!5066750 () Bool)

(declare-fun tp!1414784 () Bool)

(declare-fun tp!1414783 () Bool)

(assert (=> b!5066750 (= e!3161894 (and (inv!77556 (left!42816 (left!42816 (right!43146 ys!41)))) tp!1414783 (inv!77556 (right!43146 (left!42816 (right!43146 ys!41)))) tp!1414784))))

(declare-fun b!5066752 () Bool)

(declare-fun e!3161893 () Bool)

(declare-fun tp!1414782 () Bool)

(assert (=> b!5066752 (= e!3161893 tp!1414782)))

(declare-fun b!5066751 () Bool)

(assert (=> b!5066751 (= e!3161894 (and (inv!77555 (xs!18914 (left!42816 (right!43146 ys!41)))) e!3161893))))

(assert (=> b!5066383 (= tp!1414772 (and (inv!77556 (left!42816 (right!43146 ys!41))) e!3161894))))

(assert (= (and b!5066383 ((_ is Node!15564) (left!42816 (right!43146 ys!41)))) b!5066750))

(assert (= b!5066751 b!5066752))

(assert (= (and b!5066383 ((_ is Leaf!25851) (left!42816 (right!43146 ys!41)))) b!5066751))

(declare-fun m!6109110 () Bool)

(assert (=> b!5066750 m!6109110))

(declare-fun m!6109112 () Bool)

(assert (=> b!5066750 m!6109112))

(declare-fun m!6109114 () Bool)

(assert (=> b!5066751 m!6109114))

(assert (=> b!5066383 m!6108420))

(declare-fun b!5066753 () Bool)

(declare-fun e!3161896 () Bool)

(declare-fun tp!1414787 () Bool)

(declare-fun tp!1414786 () Bool)

(assert (=> b!5066753 (= e!3161896 (and (inv!77556 (left!42816 (right!43146 (right!43146 ys!41)))) tp!1414786 (inv!77556 (right!43146 (right!43146 (right!43146 ys!41)))) tp!1414787))))

(declare-fun b!5066755 () Bool)

(declare-fun e!3161895 () Bool)

(declare-fun tp!1414785 () Bool)

(assert (=> b!5066755 (= e!3161895 tp!1414785)))

(declare-fun b!5066754 () Bool)

(assert (=> b!5066754 (= e!3161896 (and (inv!77555 (xs!18914 (right!43146 (right!43146 ys!41)))) e!3161895))))

(assert (=> b!5066383 (= tp!1414773 (and (inv!77556 (right!43146 (right!43146 ys!41))) e!3161896))))

(assert (= (and b!5066383 ((_ is Node!15564) (right!43146 (right!43146 ys!41)))) b!5066753))

(assert (= b!5066754 b!5066755))

(assert (= (and b!5066383 ((_ is Leaf!25851) (right!43146 (right!43146 ys!41)))) b!5066754))

(declare-fun m!6109116 () Bool)

(assert (=> b!5066753 m!6109116))

(declare-fun m!6109118 () Bool)

(assert (=> b!5066753 m!6109118))

(declare-fun m!6109120 () Bool)

(assert (=> b!5066754 m!6109120))

(assert (=> b!5066383 m!6108422))

(declare-fun b!5066756 () Bool)

(declare-fun e!3161897 () Bool)

(declare-fun tp!1414788 () Bool)

(assert (=> b!5066756 (= e!3161897 (and tp_is_empty!37051 tp!1414788))))

(assert (=> b!5066375 (= tp!1414761 e!3161897)))

(assert (= (and b!5066375 ((_ is Cons!58434) (innerList!15652 (xs!18914 (left!42816 xs!286))))) b!5066756))

(declare-fun b!5066757 () Bool)

(declare-fun e!3161898 () Bool)

(declare-fun tp!1414789 () Bool)

(assert (=> b!5066757 (= e!3161898 (and tp_is_empty!37051 tp!1414789))))

(assert (=> b!5066382 (= tp!1414768 e!3161898)))

(assert (= (and b!5066382 ((_ is Cons!58434) (innerList!15652 (xs!18914 (left!42816 ys!41))))) b!5066757))

(declare-fun b!5066758 () Bool)

(declare-fun tp!1414791 () Bool)

(declare-fun e!3161900 () Bool)

(declare-fun tp!1414792 () Bool)

(assert (=> b!5066758 (= e!3161900 (and (inv!77556 (left!42816 (left!42816 (left!42816 xs!286)))) tp!1414791 (inv!77556 (right!43146 (left!42816 (left!42816 xs!286)))) tp!1414792))))

(declare-fun b!5066760 () Bool)

(declare-fun e!3161899 () Bool)

(declare-fun tp!1414790 () Bool)

(assert (=> b!5066760 (= e!3161899 tp!1414790)))

(declare-fun b!5066759 () Bool)

(assert (=> b!5066759 (= e!3161900 (and (inv!77555 (xs!18914 (left!42816 (left!42816 xs!286)))) e!3161899))))

(assert (=> b!5066373 (= tp!1414762 (and (inv!77556 (left!42816 (left!42816 xs!286))) e!3161900))))

(assert (= (and b!5066373 ((_ is Node!15564) (left!42816 (left!42816 xs!286)))) b!5066758))

(assert (= b!5066759 b!5066760))

(assert (= (and b!5066373 ((_ is Leaf!25851) (left!42816 (left!42816 xs!286)))) b!5066759))

(declare-fun m!6109134 () Bool)

(assert (=> b!5066758 m!6109134))

(declare-fun m!6109136 () Bool)

(assert (=> b!5066758 m!6109136))

(declare-fun m!6109138 () Bool)

(assert (=> b!5066759 m!6109138))

(assert (=> b!5066373 m!6108402))

(declare-fun e!3161904 () Bool)

(declare-fun tp!1414795 () Bool)

(declare-fun tp!1414794 () Bool)

(declare-fun b!5066764 () Bool)

(assert (=> b!5066764 (= e!3161904 (and (inv!77556 (left!42816 (right!43146 (left!42816 xs!286)))) tp!1414794 (inv!77556 (right!43146 (right!43146 (left!42816 xs!286)))) tp!1414795))))

(declare-fun b!5066766 () Bool)

(declare-fun e!3161903 () Bool)

(declare-fun tp!1414793 () Bool)

(assert (=> b!5066766 (= e!3161903 tp!1414793)))

(declare-fun b!5066765 () Bool)

(assert (=> b!5066765 (= e!3161904 (and (inv!77555 (xs!18914 (right!43146 (left!42816 xs!286)))) e!3161903))))

(assert (=> b!5066373 (= tp!1414763 (and (inv!77556 (right!43146 (left!42816 xs!286))) e!3161904))))

(assert (= (and b!5066373 ((_ is Node!15564) (right!43146 (left!42816 xs!286)))) b!5066764))

(assert (= b!5066765 b!5066766))

(assert (= (and b!5066373 ((_ is Leaf!25851) (right!43146 (left!42816 xs!286)))) b!5066765))

(declare-fun m!6109140 () Bool)

(assert (=> b!5066764 m!6109140))

(declare-fun m!6109142 () Bool)

(assert (=> b!5066764 m!6109142))

(declare-fun m!6109144 () Bool)

(assert (=> b!5066765 m!6109144))

(assert (=> b!5066373 m!6108404))

(declare-fun b!5066767 () Bool)

(declare-fun e!3161905 () Bool)

(declare-fun tp!1414796 () Bool)

(assert (=> b!5066767 (= e!3161905 (and tp_is_empty!37051 tp!1414796))))

(assert (=> b!5066378 (= tp!1414764 e!3161905)))

(assert (= (and b!5066378 ((_ is Cons!58434) (innerList!15652 (xs!18914 (right!43146 xs!286))))) b!5066767))

(declare-fun b!5066768 () Bool)

(declare-fun tp!1414798 () Bool)

(declare-fun e!3161907 () Bool)

(declare-fun tp!1414799 () Bool)

(assert (=> b!5066768 (= e!3161907 (and (inv!77556 (left!42816 (left!42816 (left!42816 ys!41)))) tp!1414798 (inv!77556 (right!43146 (left!42816 (left!42816 ys!41)))) tp!1414799))))

(declare-fun b!5066770 () Bool)

(declare-fun e!3161906 () Bool)

(declare-fun tp!1414797 () Bool)

(assert (=> b!5066770 (= e!3161906 tp!1414797)))

(declare-fun b!5066769 () Bool)

(assert (=> b!5066769 (= e!3161907 (and (inv!77555 (xs!18914 (left!42816 (left!42816 ys!41)))) e!3161906))))

(assert (=> b!5066380 (= tp!1414769 (and (inv!77556 (left!42816 (left!42816 ys!41))) e!3161907))))

(assert (= (and b!5066380 ((_ is Node!15564) (left!42816 (left!42816 ys!41)))) b!5066768))

(assert (= b!5066769 b!5066770))

(assert (= (and b!5066380 ((_ is Leaf!25851) (left!42816 (left!42816 ys!41)))) b!5066769))

(declare-fun m!6109150 () Bool)

(assert (=> b!5066768 m!6109150))

(declare-fun m!6109152 () Bool)

(assert (=> b!5066768 m!6109152))

(declare-fun m!6109154 () Bool)

(assert (=> b!5066769 m!6109154))

(assert (=> b!5066380 m!6108414))

(declare-fun e!3161911 () Bool)

(declare-fun tp!1414802 () Bool)

(declare-fun b!5066774 () Bool)

(declare-fun tp!1414801 () Bool)

(assert (=> b!5066774 (= e!3161911 (and (inv!77556 (left!42816 (right!43146 (left!42816 ys!41)))) tp!1414801 (inv!77556 (right!43146 (right!43146 (left!42816 ys!41)))) tp!1414802))))

(declare-fun b!5066776 () Bool)

(declare-fun e!3161910 () Bool)

(declare-fun tp!1414800 () Bool)

(assert (=> b!5066776 (= e!3161910 tp!1414800)))

(declare-fun b!5066775 () Bool)

(assert (=> b!5066775 (= e!3161911 (and (inv!77555 (xs!18914 (right!43146 (left!42816 ys!41)))) e!3161910))))

(assert (=> b!5066380 (= tp!1414770 (and (inv!77556 (right!43146 (left!42816 ys!41))) e!3161911))))

(assert (= (and b!5066380 ((_ is Node!15564) (right!43146 (left!42816 ys!41)))) b!5066774))

(assert (= b!5066775 b!5066776))

(assert (= (and b!5066380 ((_ is Leaf!25851) (right!43146 (left!42816 ys!41)))) b!5066775))

(declare-fun m!6109160 () Bool)

(assert (=> b!5066774 m!6109160))

(declare-fun m!6109162 () Bool)

(assert (=> b!5066774 m!6109162))

(declare-fun m!6109164 () Bool)

(assert (=> b!5066775 m!6109164))

(assert (=> b!5066380 m!6108416))

(declare-fun b!5066783 () Bool)

(declare-fun e!3161914 () Bool)

(declare-fun tp!1414803 () Bool)

(assert (=> b!5066783 (= e!3161914 (and tp_is_empty!37051 tp!1414803))))

(assert (=> b!5066385 (= tp!1414771 e!3161914)))

(assert (= (and b!5066385 ((_ is Cons!58434) (innerList!15652 (xs!18914 (right!43146 ys!41))))) b!5066783))

(check-sat (not b!5066421) (not b!5066632) (not b!5066706) (not b!5066559) (not b!5066698) (not b!5066419) (not b!5066629) (not b!5066535) (not d!1633425) (not b!5066663) (not b!5066735) (not b!5066413) (not b!5066758) (not d!1633551) (not b!5066546) (not b!5066585) (not b!5066711) (not b!5066742) (not b!5066396) (not b!5066580) (not b!5066703) (not d!1633647) (not b!5066658) (not b!5066383) (not bm!353059) (not b!5066429) (not d!1633489) (not bm!353009) (not b!5066525) (not b!5066388) (not b!5066609) (not b!5066502) (not d!1633435) tp_is_empty!37051 (not b!5066373) (not b!5066493) (not b!5066481) (not b!5066670) (not b!5066422) (not d!1633427) (not d!1633487) (not b!5066544) (not bm!353019) (not b!5066588) (not b!5066607) (not b!5066775) (not b!5066757) (not b!5066733) (not b!5066764) (not b!5066728) (not b!5066674) (not b!5066547) (not b!5066776) (not b!5066499) (not b!5066657) (not bm!353062) (not bm!353044) (not b!5066661) (not d!1633561) (not d!1633467) (not b!5066445) (not b!5066434) (not b!5066581) (not b!5066504) (not b!5066738) (not bm!353017) (not d!1633613) (not b!5066401) (not b!5066723) (not b!5066702) (not b!5066755) (not b!5066538) (not b!5066727) (not b!5066737) (not bm!353043) (not b!5066783) (not b!5066664) (not b!5066496) (not b!5066593) (not bm!353023) (not b!5066545) (not b!5066708) (not b!5066766) (not b!5066656) (not d!1633505) (not b!5066717) (not b!5066537) (not b!5066411) (not b!5066498) (not b!5066583) (not bm!353063) (not b!5066531) (not d!1633565) (not d!1633587) (not b!5066558) (not d!1633533) (not b!5066614) (not b!5066503) (not b!5066630) (not b!5066501) (not b!5066500) (not b!5066754) (not b!5066380) (not b!5066451) (not bm!353012) (not b!5066690) (not b!5066438) (not b!5066724) (not b!5066460) (not d!1633625) (not bm!353050) (not b!5066699) (not b!5066541) (not b!5066752) (not d!1633491) (not b!5066750) (not bm!353058) (not b!5066628) (not d!1633457) (not b!5066760) (not bm!353022) (not b!5066620) (not b!5066684) (not b!5066418) (not d!1633519) (not b!5066613) (not b!5066731) (not b!5066741) (not b!5066770) (not bm!353048) (not b!5066584) (not b!5066740) (not b!5066561) (not b!5066508) (not d!1633569) (not bm!353061) (not b!5066414) (not b!5066575) (not b!5066400) (not b!5066769) (not d!1633555) (not b!5066693) (not d!1633543) (not b!5066712) (not bm!353011) (not b!5066566) (not bm!353051) (not b!5066572) (not b!5066518) (not b!5066655) (not b!5066516) (not b!5066743) (not d!1633463) (not d!1633643) (not b!5066774) (not bm!353054) (not b!5066497) (not d!1633545) (not b!5066716) (not bm!353060) (not b!5066440) (not b!5066427) (not d!1633619) (not b!5066520) (not b!5066599) (not b!5066719) (not b!5066605) (not d!1633615) (not bm!353024) (not b!5066611) (not bm!353015) (not b!5066720) (not d!1633635) (not bm!353010) (not b!5066736) (not b!5066439) (not d!1633431) (not b!5066666) (not b!5066430) (not b!5066659) (not bm!353064) (not bm!353014) (not b!5066442) (not b!5066391) (not d!1633439) (not b!5066730) (not b!5066739) (not b!5066554) (not b!5066404) (not b!5066753) (not b!5066579) (not b!5066616) (not b!5066553) (not b!5066759) (not b!5066718) (not b!5066596) (not b!5066667) (not b!5066386) (not bm!353016) (not b!5066426) (not b!5066722) (not b!5066707) (not b!5066734) (not bm!353057) (not d!1633579) (not b!5066595) (not d!1633497) (not b!5066543) (not b!5066768) (not b!5066694) (not d!1633455) (not b!5066376) (not b!5066582) (not bm!353021) (not b!5066494) (not d!1633575) (not b!5066548) (not b!5066732) (not b!5066540) (not b!5066524) (not b!5066405) (not b!5066435) (not bm!353049) (not d!1633605) (not b!5066495) (not b!5066756) (not b!5066631) (not bm!353018) (not b!5066767) (not b!5066550) (not d!1633589) (not d!1633477) (not bm!353013) (not b!5066389) (not b!5066669) (not b!5066691) (not b!5066443) (not b!5066685) (not d!1633577) (not b!5066533) (not b!5066660) (not b!5066565) (not b!5066621) (not b!5066765) (not b!5066455) (not b!5066751) (not bm!353020) (not b!5066633) (not b!5066453) (not b!5066532) (not b!5066615) (not b!5066721) (not b!5066573))
(check-sat)
(get-model)

(assert (=> b!5066376 d!1633411))

(assert (=> b!5066376 d!1633413))

(declare-fun b!5067012 () Bool)

(declare-fun res!2157427 () Bool)

(declare-fun e!3162035 () Bool)

(assert (=> b!5067012 (=> (not res!2157427) (not e!3162035))))

(declare-fun lt!2088996 () List!58558)

(assert (=> b!5067012 (= res!2157427 (= (size!39074 lt!2088996) (+ (size!39074 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) (size!39074 (list!18989 (right!43146 (left!42816 ys!41)))))))))

(declare-fun b!5067013 () Bool)

(assert (=> b!5067013 (= e!3162035 (or (not (= (list!18989 (right!43146 (left!42816 ys!41))) Nil!58434)) (= lt!2088996 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067011 () Bool)

(declare-fun e!3162036 () List!58558)

(assert (=> b!5067011 (= e!3162036 (Cons!58434 (h!64882 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) (++!12789 (t!371291 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) (list!18989 (right!43146 (left!42816 ys!41))))))))

(declare-fun b!5067010 () Bool)

(assert (=> b!5067010 (= e!3162036 (list!18989 (right!43146 (left!42816 ys!41))))))

(declare-fun d!1633815 () Bool)

(assert (=> d!1633815 e!3162035))

(declare-fun res!2157426 () Bool)

(assert (=> d!1633815 (=> (not res!2157426) (not e!3162035))))

(assert (=> d!1633815 (= res!2157426 (= (content!10417 lt!2088996) ((_ map or) (content!10417 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) (content!10417 (list!18989 (right!43146 (left!42816 ys!41)))))))))

(assert (=> d!1633815 (= lt!2088996 e!3162036)))

(declare-fun c!869846 () Bool)

(assert (=> d!1633815 (= c!869846 ((_ is Nil!58434) (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))))))

(assert (=> d!1633815 (= (++!12789 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))) (list!18989 (right!43146 (left!42816 ys!41)))) lt!2088996)))

(assert (= (and d!1633815 c!869846) b!5067010))

(assert (= (and d!1633815 (not c!869846)) b!5067011))

(assert (= (and d!1633815 res!2157426) b!5067012))

(assert (= (and b!5067012 res!2157427) b!5067013))

(declare-fun m!6109634 () Bool)

(assert (=> b!5067012 m!6109634))

(assert (=> b!5067012 m!6108120))

(declare-fun m!6109636 () Bool)

(assert (=> b!5067012 m!6109636))

(assert (=> b!5067012 m!6108106))

(declare-fun m!6109638 () Bool)

(assert (=> b!5067012 m!6109638))

(assert (=> b!5067011 m!6108106))

(declare-fun m!6109640 () Bool)

(assert (=> b!5067011 m!6109640))

(declare-fun m!6109642 () Bool)

(assert (=> d!1633815 m!6109642))

(assert (=> d!1633815 m!6108120))

(declare-fun m!6109644 () Bool)

(assert (=> d!1633815 m!6109644))

(assert (=> d!1633815 m!6108106))

(declare-fun m!6109646 () Bool)

(assert (=> d!1633815 m!6109646))

(assert (=> bm!353060 d!1633815))

(declare-fun d!1633817 () Bool)

(assert (=> d!1633817 (= (inv!77555 (xs!18914 (left!42816 (right!43146 xs!286)))) (<= (size!39074 (innerList!15652 (xs!18914 (left!42816 (right!43146 xs!286))))) 2147483647))))

(declare-fun bs!1189918 () Bool)

(assert (= bs!1189918 d!1633817))

(declare-fun m!6109648 () Bool)

(assert (=> bs!1189918 m!6109648))

(assert (=> b!5066739 d!1633817))

(declare-fun d!1633819 () Bool)

(declare-fun lt!2088997 () Bool)

(assert (=> d!1633819 (= lt!2088997 (isEmpty!31632 (list!18989 (right!43146 (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1633819 (= lt!2088997 (= (size!39075 (right!43146 (right!43146 (right!43146 xs!286)))) 0))))

(assert (=> d!1633819 (= (isEmpty!31631 (right!43146 (right!43146 (right!43146 xs!286)))) lt!2088997)))

(declare-fun bs!1189919 () Bool)

(assert (= bs!1189919 d!1633819))

(assert (=> bs!1189919 m!6108494))

(assert (=> bs!1189919 m!6108494))

(declare-fun m!6109650 () Bool)

(assert (=> bs!1189919 m!6109650))

(declare-fun m!6109652 () Bool)

(assert (=> bs!1189919 m!6109652))

(assert (=> b!5066633 d!1633819))

(assert (=> d!1633491 d!1633457))

(declare-fun d!1633821 () Bool)

(declare-fun lt!2088998 () Int)

(assert (=> d!1633821 (= lt!2088998 (size!39074 (list!18989 (right!43146 (right!43146 xs!286)))))))

(assert (=> d!1633821 (= lt!2088998 (ite ((_ is Empty!15564) (right!43146 (right!43146 xs!286))) 0 (ite ((_ is Leaf!25851) (right!43146 (right!43146 xs!286))) (csize!31359 (right!43146 (right!43146 xs!286))) (csize!31358 (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1633821 (= (size!39075 (right!43146 (right!43146 xs!286))) lt!2088998)))

(declare-fun bs!1189920 () Bool)

(assert (= bs!1189920 d!1633821))

(assert (=> bs!1189920 m!6108094))

(assert (=> bs!1189920 m!6108094))

(assert (=> bs!1189920 m!6108484))

(assert (=> d!1633491 d!1633821))

(assert (=> b!5066380 d!1633445))

(assert (=> b!5066380 d!1633447))

(declare-fun d!1633823 () Bool)

(declare-fun res!2157428 () Bool)

(declare-fun e!3162037 () Bool)

(assert (=> d!1633823 (=> (not res!2157428) (not e!3162037))))

(assert (=> d!1633823 (= res!2157428 (= (csize!31358 (left!42816 (right!43146 xs!286))) (+ (size!39075 (left!42816 (left!42816 (right!43146 xs!286)))) (size!39075 (right!43146 (left!42816 (right!43146 xs!286)))))))))

(assert (=> d!1633823 (= (inv!77559 (left!42816 (right!43146 xs!286))) e!3162037)))

(declare-fun b!5067014 () Bool)

(declare-fun res!2157429 () Bool)

(assert (=> b!5067014 (=> (not res!2157429) (not e!3162037))))

(assert (=> b!5067014 (= res!2157429 (and (not (= (left!42816 (left!42816 (right!43146 xs!286))) Empty!15564)) (not (= (right!43146 (left!42816 (right!43146 xs!286))) Empty!15564))))))

(declare-fun b!5067015 () Bool)

(declare-fun res!2157430 () Bool)

(assert (=> b!5067015 (=> (not res!2157430) (not e!3162037))))

(assert (=> b!5067015 (= res!2157430 (= (cheight!15775 (left!42816 (right!43146 xs!286))) (+ (max!0 (height!2141 (left!42816 (left!42816 (right!43146 xs!286)))) (height!2141 (right!43146 (left!42816 (right!43146 xs!286))))) 1)))))

(declare-fun b!5067016 () Bool)

(assert (=> b!5067016 (= e!3162037 (<= 0 (cheight!15775 (left!42816 (right!43146 xs!286)))))))

(assert (= (and d!1633823 res!2157428) b!5067014))

(assert (= (and b!5067014 res!2157429) b!5067015))

(assert (= (and b!5067015 res!2157430) b!5067016))

(declare-fun m!6109654 () Bool)

(assert (=> d!1633823 m!6109654))

(declare-fun m!6109656 () Bool)

(assert (=> d!1633823 m!6109656))

(declare-fun m!6109658 () Bool)

(assert (=> b!5067015 m!6109658))

(declare-fun m!6109660 () Bool)

(assert (=> b!5067015 m!6109660))

(assert (=> b!5067015 m!6109658))

(assert (=> b!5067015 m!6109660))

(declare-fun m!6109662 () Bool)

(assert (=> b!5067015 m!6109662))

(assert (=> b!5066386 d!1633823))

(declare-fun d!1633825 () Bool)

(declare-fun lt!2088999 () Bool)

(assert (=> d!1633825 (= lt!2088999 (isEmpty!31632 (list!18989 (right!43146 (left!42816 ys!41)))))))

(assert (=> d!1633825 (= lt!2088999 (= (size!39075 (right!43146 (left!42816 ys!41))) 0))))

(assert (=> d!1633825 (= (isEmpty!31631 (right!43146 (left!42816 ys!41))) lt!2088999)))

(declare-fun bs!1189921 () Bool)

(assert (= bs!1189921 d!1633825))

(assert (=> bs!1189921 m!6108106))

(assert (=> bs!1189921 m!6108106))

(declare-fun m!6109664 () Bool)

(assert (=> bs!1189921 m!6109664))

(assert (=> bs!1189921 m!6108588))

(assert (=> b!5066584 d!1633825))

(declare-fun d!1633827 () Bool)

(assert (=> d!1633827 (= (height!2141 (left!42816 (right!43146 lt!2088868))) (ite ((_ is Empty!15564) (left!42816 (right!43146 lt!2088868))) 0 (ite ((_ is Leaf!25851) (left!42816 (right!43146 lt!2088868))) 1 (cheight!15775 (left!42816 (right!43146 lt!2088868))))))))

(assert (=> b!5066547 d!1633827))

(declare-fun d!1633829 () Bool)

(assert (=> d!1633829 (= (height!2141 (right!43146 (right!43146 lt!2088868))) (ite ((_ is Empty!15564) (right!43146 (right!43146 lt!2088868))) 0 (ite ((_ is Leaf!25851) (right!43146 (right!43146 lt!2088868))) 1 (cheight!15775 (right!43146 (right!43146 lt!2088868))))))))

(assert (=> b!5066547 d!1633829))

(declare-fun d!1633831 () Bool)

(declare-fun lt!2089000 () Int)

(assert (=> d!1633831 (= lt!2089000 (size!39074 (list!18989 (left!42816 (left!42816 ys!41)))))))

(assert (=> d!1633831 (= lt!2089000 (ite ((_ is Empty!15564) (left!42816 (left!42816 ys!41))) 0 (ite ((_ is Leaf!25851) (left!42816 (left!42816 ys!41))) (csize!31359 (left!42816 (left!42816 ys!41))) (csize!31358 (left!42816 (left!42816 ys!41))))))))

(assert (=> d!1633831 (= (size!39075 (left!42816 (left!42816 ys!41))) lt!2089000)))

(declare-fun bs!1189922 () Bool)

(assert (= bs!1189922 d!1633831))

(assert (=> bs!1189922 m!6108104))

(assert (=> bs!1189922 m!6108104))

(assert (=> bs!1189922 m!6109044))

(assert (=> d!1633467 d!1633831))

(declare-fun d!1633833 () Bool)

(declare-fun lt!2089001 () Int)

(assert (=> d!1633833 (= lt!2089001 (size!39074 (list!18989 (right!43146 (left!42816 ys!41)))))))

(assert (=> d!1633833 (= lt!2089001 (ite ((_ is Empty!15564) (right!43146 (left!42816 ys!41))) 0 (ite ((_ is Leaf!25851) (right!43146 (left!42816 ys!41))) (csize!31359 (right!43146 (left!42816 ys!41))) (csize!31358 (right!43146 (left!42816 ys!41))))))))

(assert (=> d!1633833 (= (size!39075 (right!43146 (left!42816 ys!41))) lt!2089001)))

(declare-fun bs!1189923 () Bool)

(assert (= bs!1189923 d!1633833))

(assert (=> bs!1189923 m!6108106))

(assert (=> bs!1189923 m!6108106))

(assert (=> bs!1189923 m!6109638))

(assert (=> d!1633467 d!1633833))

(declare-fun d!1633835 () Bool)

(declare-fun lt!2089002 () Int)

(assert (=> d!1633835 (>= lt!2089002 0)))

(declare-fun e!3162038 () Int)

(assert (=> d!1633835 (= lt!2089002 e!3162038)))

(declare-fun c!869847 () Bool)

(assert (=> d!1633835 (= c!869847 ((_ is Nil!58434) (list!18990 (xs!18914 xs!286))))))

(assert (=> d!1633835 (= (size!39074 (list!18990 (xs!18914 xs!286))) lt!2089002)))

(declare-fun b!5067017 () Bool)

(assert (=> b!5067017 (= e!3162038 0)))

(declare-fun b!5067018 () Bool)

(assert (=> b!5067018 (= e!3162038 (+ 1 (size!39074 (t!371291 (list!18990 (xs!18914 xs!286))))))))

(assert (= (and d!1633835 c!869847) b!5067017))

(assert (= (and d!1633835 (not c!869847)) b!5067018))

(declare-fun m!6109666 () Bool)

(assert (=> b!5067018 m!6109666))

(assert (=> d!1633497 d!1633835))

(assert (=> d!1633497 d!1633653))

(declare-fun d!1633837 () Bool)

(declare-fun lt!2089003 () Bool)

(assert (=> d!1633837 (= lt!2089003 (isEmpty!31632 (list!18989 (right!43146 (left!42816 xs!286)))))))

(assert (=> d!1633837 (= lt!2089003 (= (size!39075 (right!43146 (left!42816 xs!286))) 0))))

(assert (=> d!1633837 (= (isEmpty!31631 (right!43146 (left!42816 xs!286))) lt!2089003)))

(declare-fun bs!1189924 () Bool)

(assert (= bs!1189924 d!1633837))

(assert (=> bs!1189924 m!6108444))

(assert (=> bs!1189924 m!6108444))

(declare-fun m!6109668 () Bool)

(assert (=> bs!1189924 m!6109668))

(assert (=> bs!1189924 m!6108838))

(assert (=> b!5066723 d!1633837))

(declare-fun b!5067019 () Bool)

(declare-fun res!2157433 () Bool)

(declare-fun e!3162040 () Bool)

(assert (=> b!5067019 (=> (not res!2157433) (not e!3162040))))

(assert (=> b!5067019 (= res!2157433 (isBalanced!4426 (left!42816 (left!42816 lt!2088908))))))

(declare-fun b!5067020 () Bool)

(declare-fun e!3162039 () Bool)

(assert (=> b!5067020 (= e!3162039 e!3162040)))

(declare-fun res!2157436 () Bool)

(assert (=> b!5067020 (=> (not res!2157436) (not e!3162040))))

(assert (=> b!5067020 (= res!2157436 (<= (- 1) (- (height!2141 (left!42816 (left!42816 lt!2088908))) (height!2141 (right!43146 (left!42816 lt!2088908))))))))

(declare-fun b!5067021 () Bool)

(declare-fun res!2157431 () Bool)

(assert (=> b!5067021 (=> (not res!2157431) (not e!3162040))))

(assert (=> b!5067021 (= res!2157431 (not (isEmpty!31631 (left!42816 (left!42816 lt!2088908)))))))

(declare-fun b!5067023 () Bool)

(declare-fun res!2157435 () Bool)

(assert (=> b!5067023 (=> (not res!2157435) (not e!3162040))))

(assert (=> b!5067023 (= res!2157435 (<= (- (height!2141 (left!42816 (left!42816 lt!2088908))) (height!2141 (right!43146 (left!42816 lt!2088908)))) 1))))

(declare-fun b!5067024 () Bool)

(assert (=> b!5067024 (= e!3162040 (not (isEmpty!31631 (right!43146 (left!42816 lt!2088908)))))))

(declare-fun b!5067022 () Bool)

(declare-fun res!2157432 () Bool)

(assert (=> b!5067022 (=> (not res!2157432) (not e!3162040))))

(assert (=> b!5067022 (= res!2157432 (isBalanced!4426 (right!43146 (left!42816 lt!2088908))))))

(declare-fun d!1633839 () Bool)

(declare-fun res!2157434 () Bool)

(assert (=> d!1633839 (=> res!2157434 e!3162039)))

(assert (=> d!1633839 (= res!2157434 (not ((_ is Node!15564) (left!42816 lt!2088908))))))

(assert (=> d!1633839 (= (isBalanced!4426 (left!42816 lt!2088908)) e!3162039)))

(assert (= (and d!1633839 (not res!2157434)) b!5067020))

(assert (= (and b!5067020 res!2157436) b!5067023))

(assert (= (and b!5067023 res!2157435) b!5067019))

(assert (= (and b!5067019 res!2157433) b!5067022))

(assert (= (and b!5067022 res!2157432) b!5067021))

(assert (= (and b!5067021 res!2157431) b!5067024))

(declare-fun m!6109670 () Bool)

(assert (=> b!5067021 m!6109670))

(declare-fun m!6109672 () Bool)

(assert (=> b!5067019 m!6109672))

(declare-fun m!6109674 () Bool)

(assert (=> b!5067024 m!6109674))

(declare-fun m!6109676 () Bool)

(assert (=> b!5067023 m!6109676))

(declare-fun m!6109678 () Bool)

(assert (=> b!5067023 m!6109678))

(declare-fun m!6109680 () Bool)

(assert (=> b!5067022 m!6109680))

(assert (=> b!5067020 m!6109676))

(assert (=> b!5067020 m!6109678))

(assert (=> b!5066493 d!1633839))

(declare-fun d!1633841 () Bool)

(declare-fun lt!2089004 () Bool)

(assert (=> d!1633841 (= lt!2089004 (isEmpty!31632 (list!18989 (right!43146 (right!43146 ys!41)))))))

(assert (=> d!1633841 (= lt!2089004 (= (size!39075 (right!43146 (right!43146 ys!41))) 0))))

(assert (=> d!1633841 (= (isEmpty!31631 (right!43146 (right!43146 ys!41))) lt!2089004)))

(declare-fun bs!1189925 () Bool)

(assert (= bs!1189925 d!1633841))

(assert (=> bs!1189925 m!6108680))

(assert (=> bs!1189925 m!6108680))

(declare-fun m!6109682 () Bool)

(assert (=> bs!1189925 m!6109682))

(assert (=> bs!1189925 m!6108740))

(assert (=> b!5066735 d!1633841))

(declare-fun b!5067027 () Bool)

(declare-fun res!2157438 () Bool)

(declare-fun e!3162041 () Bool)

(assert (=> b!5067027 (=> (not res!2157438) (not e!3162041))))

(declare-fun lt!2089005 () List!58558)

(assert (=> b!5067027 (= res!2157438 (= (size!39074 lt!2089005) (+ (size!39074 (list!18989 (left!42816 (right!43146 xs!286)))) (size!39074 (list!18989 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067028 () Bool)

(assert (=> b!5067028 (= e!3162041 (or (not (= (list!18989 (right!43146 (right!43146 xs!286))) Nil!58434)) (= lt!2089005 (list!18989 (left!42816 (right!43146 xs!286))))))))

(declare-fun b!5067026 () Bool)

(declare-fun e!3162042 () List!58558)

(assert (=> b!5067026 (= e!3162042 (Cons!58434 (h!64882 (list!18989 (left!42816 (right!43146 xs!286)))) (++!12789 (t!371291 (list!18989 (left!42816 (right!43146 xs!286)))) (list!18989 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5067025 () Bool)

(assert (=> b!5067025 (= e!3162042 (list!18989 (right!43146 (right!43146 xs!286))))))

(declare-fun d!1633843 () Bool)

(assert (=> d!1633843 e!3162041))

(declare-fun res!2157437 () Bool)

(assert (=> d!1633843 (=> (not res!2157437) (not e!3162041))))

(assert (=> d!1633843 (= res!2157437 (= (content!10417 lt!2089005) ((_ map or) (content!10417 (list!18989 (left!42816 (right!43146 xs!286)))) (content!10417 (list!18989 (right!43146 (right!43146 xs!286)))))))))

(assert (=> d!1633843 (= lt!2089005 e!3162042)))

(declare-fun c!869848 () Bool)

(assert (=> d!1633843 (= c!869848 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 xs!286)))))))

(assert (=> d!1633843 (= (++!12789 (list!18989 (left!42816 (right!43146 xs!286))) (list!18989 (right!43146 (right!43146 xs!286)))) lt!2089005)))

(assert (= (and d!1633843 c!869848) b!5067025))

(assert (= (and d!1633843 (not c!869848)) b!5067026))

(assert (= (and d!1633843 res!2157437) b!5067027))

(assert (= (and b!5067027 res!2157438) b!5067028))

(declare-fun m!6109684 () Bool)

(assert (=> b!5067027 m!6109684))

(assert (=> b!5067027 m!6108092))

(assert (=> b!5067027 m!6108554))

(assert (=> b!5067027 m!6108094))

(assert (=> b!5067027 m!6108484))

(assert (=> b!5067026 m!6108094))

(declare-fun m!6109686 () Bool)

(assert (=> b!5067026 m!6109686))

(declare-fun m!6109688 () Bool)

(assert (=> d!1633843 m!6109688))

(assert (=> d!1633843 m!6108092))

(assert (=> d!1633843 m!6108770))

(assert (=> d!1633843 m!6108094))

(assert (=> d!1633843 m!6108490))

(assert (=> b!5066405 d!1633843))

(assert (=> b!5066405 d!1633539))

(assert (=> b!5066405 d!1633437))

(assert (=> bm!353018 d!1633435))

(declare-fun d!1633845 () Bool)

(declare-fun c!869849 () Bool)

(assert (=> d!1633845 (= c!869849 ((_ is Node!15564) (left!42816 (right!43146 (left!42816 ys!41)))))))

(declare-fun e!3162043 () Bool)

(assert (=> d!1633845 (= (inv!77556 (left!42816 (right!43146 (left!42816 ys!41)))) e!3162043)))

(declare-fun b!5067029 () Bool)

(assert (=> b!5067029 (= e!3162043 (inv!77559 (left!42816 (right!43146 (left!42816 ys!41)))))))

(declare-fun b!5067030 () Bool)

(declare-fun e!3162044 () Bool)

(assert (=> b!5067030 (= e!3162043 e!3162044)))

(declare-fun res!2157439 () Bool)

(assert (=> b!5067030 (= res!2157439 (not ((_ is Leaf!25851) (left!42816 (right!43146 (left!42816 ys!41))))))))

(assert (=> b!5067030 (=> res!2157439 e!3162044)))

(declare-fun b!5067031 () Bool)

(assert (=> b!5067031 (= e!3162044 (inv!77560 (left!42816 (right!43146 (left!42816 ys!41)))))))

(assert (= (and d!1633845 c!869849) b!5067029))

(assert (= (and d!1633845 (not c!869849)) b!5067030))

(assert (= (and b!5067030 (not res!2157439)) b!5067031))

(declare-fun m!6109690 () Bool)

(assert (=> b!5067029 m!6109690))

(declare-fun m!6109692 () Bool)

(assert (=> b!5067031 m!6109692))

(assert (=> b!5066774 d!1633845))

(declare-fun d!1633847 () Bool)

(declare-fun c!869850 () Bool)

(assert (=> d!1633847 (= c!869850 ((_ is Node!15564) (right!43146 (right!43146 (left!42816 ys!41)))))))

(declare-fun e!3162045 () Bool)

(assert (=> d!1633847 (= (inv!77556 (right!43146 (right!43146 (left!42816 ys!41)))) e!3162045)))

(declare-fun b!5067032 () Bool)

(assert (=> b!5067032 (= e!3162045 (inv!77559 (right!43146 (right!43146 (left!42816 ys!41)))))))

(declare-fun b!5067033 () Bool)

(declare-fun e!3162046 () Bool)

(assert (=> b!5067033 (= e!3162045 e!3162046)))

(declare-fun res!2157440 () Bool)

(assert (=> b!5067033 (= res!2157440 (not ((_ is Leaf!25851) (right!43146 (right!43146 (left!42816 ys!41))))))))

(assert (=> b!5067033 (=> res!2157440 e!3162046)))

(declare-fun b!5067034 () Bool)

(assert (=> b!5067034 (= e!3162046 (inv!77560 (right!43146 (right!43146 (left!42816 ys!41)))))))

(assert (= (and d!1633847 c!869850) b!5067032))

(assert (= (and d!1633847 (not c!869850)) b!5067033))

(assert (= (and b!5067033 (not res!2157440)) b!5067034))

(declare-fun m!6109694 () Bool)

(assert (=> b!5067032 m!6109694))

(declare-fun m!6109696 () Bool)

(assert (=> b!5067034 m!6109696))

(assert (=> b!5066774 d!1633847))

(declare-fun b!5067037 () Bool)

(declare-fun res!2157442 () Bool)

(declare-fun e!3162047 () Bool)

(assert (=> b!5067037 (=> (not res!2157442) (not e!3162047))))

(declare-fun lt!2089006 () List!58558)

(assert (=> b!5067037 (= res!2157442 (= (size!39074 lt!2089006) (+ (size!39074 call!353021) (size!39074 (list!18989 (right!43146 ys!41))))))))

(declare-fun b!5067038 () Bool)

(assert (=> b!5067038 (= e!3162047 (or (not (= (list!18989 (right!43146 ys!41)) Nil!58434)) (= lt!2089006 call!353021)))))

(declare-fun b!5067036 () Bool)

(declare-fun e!3162048 () List!58558)

(assert (=> b!5067036 (= e!3162048 (Cons!58434 (h!64882 call!353021) (++!12789 (t!371291 call!353021) (list!18989 (right!43146 ys!41)))))))

(declare-fun b!5067035 () Bool)

(assert (=> b!5067035 (= e!3162048 (list!18989 (right!43146 ys!41)))))

(declare-fun d!1633849 () Bool)

(assert (=> d!1633849 e!3162047))

(declare-fun res!2157441 () Bool)

(assert (=> d!1633849 (=> (not res!2157441) (not e!3162047))))

(assert (=> d!1633849 (= res!2157441 (= (content!10417 lt!2089006) ((_ map or) (content!10417 call!353021) (content!10417 (list!18989 (right!43146 ys!41))))))))

(assert (=> d!1633849 (= lt!2089006 e!3162048)))

(declare-fun c!869851 () Bool)

(assert (=> d!1633849 (= c!869851 ((_ is Nil!58434) call!353021))))

(assert (=> d!1633849 (= (++!12789 call!353021 (list!18989 (right!43146 ys!41))) lt!2089006)))

(assert (= (and d!1633849 c!869851) b!5067035))

(assert (= (and d!1633849 (not c!869851)) b!5067036))

(assert (= (and d!1633849 res!2157441) b!5067037))

(assert (= (and b!5067037 res!2157442) b!5067038))

(declare-fun m!6109698 () Bool)

(assert (=> b!5067037 m!6109698))

(declare-fun m!6109700 () Bool)

(assert (=> b!5067037 m!6109700))

(assert (=> b!5067037 m!6108100))

(assert (=> b!5067037 m!6109080))

(assert (=> b!5067036 m!6108100))

(declare-fun m!6109702 () Bool)

(assert (=> b!5067036 m!6109702))

(declare-fun m!6109704 () Bool)

(assert (=> d!1633849 m!6109704))

(declare-fun m!6109706 () Bool)

(assert (=> d!1633849 m!6109706))

(assert (=> d!1633849 m!6108100))

(assert (=> d!1633849 m!6109088))

(assert (=> bm!353013 d!1633849))

(declare-fun b!5067041 () Bool)

(declare-fun res!2157444 () Bool)

(declare-fun e!3162049 () Bool)

(assert (=> b!5067041 (=> (not res!2157444) (not e!3162049))))

(declare-fun lt!2089007 () List!58558)

(assert (=> b!5067041 (= res!2157444 (= (size!39074 lt!2089007) (+ (size!39074 (list!18989 (left!42816 (right!43146 ys!41)))) (size!39074 (list!18989 (right!43146 (right!43146 ys!41)))))))))

(declare-fun b!5067042 () Bool)

(assert (=> b!5067042 (= e!3162049 (or (not (= (list!18989 (right!43146 (right!43146 ys!41))) Nil!58434)) (= lt!2089007 (list!18989 (left!42816 (right!43146 ys!41))))))))

(declare-fun b!5067040 () Bool)

(declare-fun e!3162050 () List!58558)

(assert (=> b!5067040 (= e!3162050 (Cons!58434 (h!64882 (list!18989 (left!42816 (right!43146 ys!41)))) (++!12789 (t!371291 (list!18989 (left!42816 (right!43146 ys!41)))) (list!18989 (right!43146 (right!43146 ys!41))))))))

(declare-fun b!5067039 () Bool)

(assert (=> b!5067039 (= e!3162050 (list!18989 (right!43146 (right!43146 ys!41))))))

(declare-fun d!1633851 () Bool)

(assert (=> d!1633851 e!3162049))

(declare-fun res!2157443 () Bool)

(assert (=> d!1633851 (=> (not res!2157443) (not e!3162049))))

(assert (=> d!1633851 (= res!2157443 (= (content!10417 lt!2089007) ((_ map or) (content!10417 (list!18989 (left!42816 (right!43146 ys!41)))) (content!10417 (list!18989 (right!43146 (right!43146 ys!41)))))))))

(assert (=> d!1633851 (= lt!2089007 e!3162050)))

(declare-fun c!869852 () Bool)

(assert (=> d!1633851 (= c!869852 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 ys!41)))))))

(assert (=> d!1633851 (= (++!12789 (list!18989 (left!42816 (right!43146 ys!41))) (list!18989 (right!43146 (right!43146 ys!41)))) lt!2089007)))

(assert (= (and d!1633851 c!869852) b!5067039))

(assert (= (and d!1633851 (not c!869852)) b!5067040))

(assert (= (and d!1633851 res!2157443) b!5067041))

(assert (= (and b!5067041 res!2157444) b!5067042))

(declare-fun m!6109708 () Bool)

(assert (=> b!5067041 m!6109708))

(assert (=> b!5067041 m!6108676))

(declare-fun m!6109710 () Bool)

(assert (=> b!5067041 m!6109710))

(assert (=> b!5067041 m!6108680))

(declare-fun m!6109712 () Bool)

(assert (=> b!5067041 m!6109712))

(assert (=> b!5067040 m!6108680))

(declare-fun m!6109714 () Bool)

(assert (=> b!5067040 m!6109714))

(declare-fun m!6109716 () Bool)

(assert (=> d!1633851 m!6109716))

(assert (=> d!1633851 m!6108676))

(declare-fun m!6109718 () Bool)

(assert (=> d!1633851 m!6109718))

(assert (=> d!1633851 m!6108680))

(declare-fun m!6109720 () Bool)

(assert (=> d!1633851 m!6109720))

(assert (=> b!5066532 d!1633851))

(declare-fun d!1633853 () Bool)

(declare-fun c!869853 () Bool)

(assert (=> d!1633853 (= c!869853 ((_ is Empty!15564) (left!42816 (right!43146 ys!41))))))

(declare-fun e!3162051 () List!58558)

(assert (=> d!1633853 (= (list!18989 (left!42816 (right!43146 ys!41))) e!3162051)))

(declare-fun b!5067044 () Bool)

(declare-fun e!3162052 () List!58558)

(assert (=> b!5067044 (= e!3162051 e!3162052)))

(declare-fun c!869854 () Bool)

(assert (=> b!5067044 (= c!869854 ((_ is Leaf!25851) (left!42816 (right!43146 ys!41))))))

(declare-fun b!5067043 () Bool)

(assert (=> b!5067043 (= e!3162051 Nil!58434)))

(declare-fun b!5067046 () Bool)

(assert (=> b!5067046 (= e!3162052 (++!12789 (list!18989 (left!42816 (left!42816 (right!43146 ys!41)))) (list!18989 (right!43146 (left!42816 (right!43146 ys!41))))))))

(declare-fun b!5067045 () Bool)

(assert (=> b!5067045 (= e!3162052 (list!18990 (xs!18914 (left!42816 (right!43146 ys!41)))))))

(assert (= (and d!1633853 c!869853) b!5067043))

(assert (= (and d!1633853 (not c!869853)) b!5067044))

(assert (= (and b!5067044 c!869854) b!5067045))

(assert (= (and b!5067044 (not c!869854)) b!5067046))

(declare-fun m!6109722 () Bool)

(assert (=> b!5067046 m!6109722))

(declare-fun m!6109724 () Bool)

(assert (=> b!5067046 m!6109724))

(assert (=> b!5067046 m!6109722))

(assert (=> b!5067046 m!6109724))

(declare-fun m!6109726 () Bool)

(assert (=> b!5067046 m!6109726))

(declare-fun m!6109728 () Bool)

(assert (=> b!5067045 m!6109728))

(assert (=> b!5066532 d!1633853))

(declare-fun d!1633855 () Bool)

(declare-fun c!869855 () Bool)

(assert (=> d!1633855 (= c!869855 ((_ is Empty!15564) (right!43146 (right!43146 ys!41))))))

(declare-fun e!3162053 () List!58558)

(assert (=> d!1633855 (= (list!18989 (right!43146 (right!43146 ys!41))) e!3162053)))

(declare-fun b!5067048 () Bool)

(declare-fun e!3162054 () List!58558)

(assert (=> b!5067048 (= e!3162053 e!3162054)))

(declare-fun c!869856 () Bool)

(assert (=> b!5067048 (= c!869856 ((_ is Leaf!25851) (right!43146 (right!43146 ys!41))))))

(declare-fun b!5067047 () Bool)

(assert (=> b!5067047 (= e!3162053 Nil!58434)))

(declare-fun b!5067050 () Bool)

(assert (=> b!5067050 (= e!3162054 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 ys!41)))) (list!18989 (right!43146 (right!43146 (right!43146 ys!41))))))))

(declare-fun b!5067049 () Bool)

(assert (=> b!5067049 (= e!3162054 (list!18990 (xs!18914 (right!43146 (right!43146 ys!41)))))))

(assert (= (and d!1633855 c!869855) b!5067047))

(assert (= (and d!1633855 (not c!869855)) b!5067048))

(assert (= (and b!5067048 c!869856) b!5067049))

(assert (= (and b!5067048 (not c!869856)) b!5067050))

(declare-fun m!6109730 () Bool)

(assert (=> b!5067050 m!6109730))

(declare-fun m!6109732 () Bool)

(assert (=> b!5067050 m!6109732))

(assert (=> b!5067050 m!6109730))

(assert (=> b!5067050 m!6109732))

(declare-fun m!6109734 () Bool)

(assert (=> b!5067050 m!6109734))

(declare-fun m!6109736 () Bool)

(assert (=> b!5067049 m!6109736))

(assert (=> b!5066532 d!1633855))

(declare-fun d!1633857 () Bool)

(declare-fun c!869857 () Bool)

(assert (=> d!1633857 (= c!869857 ((_ is Node!15564) (left!42816 (left!42816 (left!42816 ys!41)))))))

(declare-fun e!3162055 () Bool)

(assert (=> d!1633857 (= (inv!77556 (left!42816 (left!42816 (left!42816 ys!41)))) e!3162055)))

(declare-fun b!5067051 () Bool)

(assert (=> b!5067051 (= e!3162055 (inv!77559 (left!42816 (left!42816 (left!42816 ys!41)))))))

(declare-fun b!5067052 () Bool)

(declare-fun e!3162056 () Bool)

(assert (=> b!5067052 (= e!3162055 e!3162056)))

(declare-fun res!2157445 () Bool)

(assert (=> b!5067052 (= res!2157445 (not ((_ is Leaf!25851) (left!42816 (left!42816 (left!42816 ys!41))))))))

(assert (=> b!5067052 (=> res!2157445 e!3162056)))

(declare-fun b!5067053 () Bool)

(assert (=> b!5067053 (= e!3162056 (inv!77560 (left!42816 (left!42816 (left!42816 ys!41)))))))

(assert (= (and d!1633857 c!869857) b!5067051))

(assert (= (and d!1633857 (not c!869857)) b!5067052))

(assert (= (and b!5067052 (not res!2157445)) b!5067053))

(declare-fun m!6109738 () Bool)

(assert (=> b!5067051 m!6109738))

(declare-fun m!6109740 () Bool)

(assert (=> b!5067053 m!6109740))

(assert (=> b!5066768 d!1633857))

(declare-fun d!1633859 () Bool)

(declare-fun c!869858 () Bool)

(assert (=> d!1633859 (= c!869858 ((_ is Node!15564) (right!43146 (left!42816 (left!42816 ys!41)))))))

(declare-fun e!3162057 () Bool)

(assert (=> d!1633859 (= (inv!77556 (right!43146 (left!42816 (left!42816 ys!41)))) e!3162057)))

(declare-fun b!5067054 () Bool)

(assert (=> b!5067054 (= e!3162057 (inv!77559 (right!43146 (left!42816 (left!42816 ys!41)))))))

(declare-fun b!5067055 () Bool)

(declare-fun e!3162058 () Bool)

(assert (=> b!5067055 (= e!3162057 e!3162058)))

(declare-fun res!2157446 () Bool)

(assert (=> b!5067055 (= res!2157446 (not ((_ is Leaf!25851) (right!43146 (left!42816 (left!42816 ys!41))))))))

(assert (=> b!5067055 (=> res!2157446 e!3162058)))

(declare-fun b!5067056 () Bool)

(assert (=> b!5067056 (= e!3162058 (inv!77560 (right!43146 (left!42816 (left!42816 ys!41)))))))

(assert (= (and d!1633859 c!869858) b!5067054))

(assert (= (and d!1633859 (not c!869858)) b!5067055))

(assert (= (and b!5067055 (not res!2157446)) b!5067056))

(declare-fun m!6109742 () Bool)

(assert (=> b!5067054 m!6109742))

(declare-fun m!6109744 () Bool)

(assert (=> b!5067056 m!6109744))

(assert (=> b!5066768 d!1633859))

(declare-fun d!1633861 () Bool)

(declare-fun res!2157447 () Bool)

(declare-fun e!3162059 () Bool)

(assert (=> d!1633861 (=> (not res!2157447) (not e!3162059))))

(assert (=> d!1633861 (= res!2157447 (<= (size!39074 (list!18990 (xs!18914 (left!42816 (left!42816 xs!286))))) 512))))

(assert (=> d!1633861 (= (inv!77560 (left!42816 (left!42816 xs!286))) e!3162059)))

(declare-fun b!5067057 () Bool)

(declare-fun res!2157448 () Bool)

(assert (=> b!5067057 (=> (not res!2157448) (not e!3162059))))

(assert (=> b!5067057 (= res!2157448 (= (csize!31359 (left!42816 (left!42816 xs!286))) (size!39074 (list!18990 (xs!18914 (left!42816 (left!42816 xs!286)))))))))

(declare-fun b!5067058 () Bool)

(assert (=> b!5067058 (= e!3162059 (and (> (csize!31359 (left!42816 (left!42816 xs!286))) 0) (<= (csize!31359 (left!42816 (left!42816 xs!286))) 512)))))

(assert (= (and d!1633861 res!2157447) b!5067057))

(assert (= (and b!5067057 res!2157448) b!5067058))

(declare-fun m!6109746 () Bool)

(assert (=> d!1633861 m!6109746))

(assert (=> d!1633861 m!6109746))

(declare-fun m!6109748 () Bool)

(assert (=> d!1633861 m!6109748))

(assert (=> b!5067057 m!6109746))

(assert (=> b!5067057 m!6109746))

(assert (=> b!5067057 m!6109748))

(assert (=> b!5066537 d!1633861))

(declare-fun d!1633863 () Bool)

(assert (=> d!1633863 (= (list!18990 (xs!18914 (left!42816 (left!42816 ys!41)))) (innerList!15652 (xs!18914 (left!42816 (left!42816 ys!41)))))))

(assert (=> b!5066716 d!1633863))

(declare-fun d!1633865 () Bool)

(declare-fun c!869859 () Bool)

(assert (=> d!1633865 (= c!869859 ((_ is Node!15564) (left!42816 (left!42816 (left!42816 xs!286)))))))

(declare-fun e!3162060 () Bool)

(assert (=> d!1633865 (= (inv!77556 (left!42816 (left!42816 (left!42816 xs!286)))) e!3162060)))

(declare-fun b!5067059 () Bool)

(assert (=> b!5067059 (= e!3162060 (inv!77559 (left!42816 (left!42816 (left!42816 xs!286)))))))

(declare-fun b!5067060 () Bool)

(declare-fun e!3162061 () Bool)

(assert (=> b!5067060 (= e!3162060 e!3162061)))

(declare-fun res!2157449 () Bool)

(assert (=> b!5067060 (= res!2157449 (not ((_ is Leaf!25851) (left!42816 (left!42816 (left!42816 xs!286))))))))

(assert (=> b!5067060 (=> res!2157449 e!3162061)))

(declare-fun b!5067061 () Bool)

(assert (=> b!5067061 (= e!3162061 (inv!77560 (left!42816 (left!42816 (left!42816 xs!286)))))))

(assert (= (and d!1633865 c!869859) b!5067059))

(assert (= (and d!1633865 (not c!869859)) b!5067060))

(assert (= (and b!5067060 (not res!2157449)) b!5067061))

(declare-fun m!6109750 () Bool)

(assert (=> b!5067059 m!6109750))

(declare-fun m!6109752 () Bool)

(assert (=> b!5067061 m!6109752))

(assert (=> b!5066758 d!1633865))

(declare-fun d!1633867 () Bool)

(declare-fun c!869860 () Bool)

(assert (=> d!1633867 (= c!869860 ((_ is Node!15564) (right!43146 (left!42816 (left!42816 xs!286)))))))

(declare-fun e!3162062 () Bool)

(assert (=> d!1633867 (= (inv!77556 (right!43146 (left!42816 (left!42816 xs!286)))) e!3162062)))

(declare-fun b!5067062 () Bool)

(assert (=> b!5067062 (= e!3162062 (inv!77559 (right!43146 (left!42816 (left!42816 xs!286)))))))

(declare-fun b!5067063 () Bool)

(declare-fun e!3162063 () Bool)

(assert (=> b!5067063 (= e!3162062 e!3162063)))

(declare-fun res!2157450 () Bool)

(assert (=> b!5067063 (= res!2157450 (not ((_ is Leaf!25851) (right!43146 (left!42816 (left!42816 xs!286))))))))

(assert (=> b!5067063 (=> res!2157450 e!3162063)))

(declare-fun b!5067064 () Bool)

(assert (=> b!5067064 (= e!3162063 (inv!77560 (right!43146 (left!42816 (left!42816 xs!286)))))))

(assert (= (and d!1633867 c!869860) b!5067062))

(assert (= (and d!1633867 (not c!869860)) b!5067063))

(assert (= (and b!5067063 (not res!2157450)) b!5067064))

(declare-fun m!6109754 () Bool)

(assert (=> b!5067062 m!6109754))

(declare-fun m!6109756 () Bool)

(assert (=> b!5067064 m!6109756))

(assert (=> b!5066758 d!1633867))

(declare-fun d!1633869 () Bool)

(assert (=> d!1633869 (= (inv!77555 (xs!18914 (right!43146 (right!43146 xs!286)))) (<= (size!39074 (innerList!15652 (xs!18914 (right!43146 (right!43146 xs!286))))) 2147483647))))

(declare-fun bs!1189926 () Bool)

(assert (= bs!1189926 d!1633869))

(declare-fun m!6109758 () Bool)

(assert (=> bs!1189926 m!6109758))

(assert (=> b!5066742 d!1633869))

(declare-fun b!5067067 () Bool)

(declare-fun res!2157452 () Bool)

(declare-fun e!3162064 () Bool)

(assert (=> b!5067067 (=> (not res!2157452) (not e!3162064))))

(declare-fun lt!2089008 () List!58558)

(assert (=> b!5067067 (= res!2157452 (= (size!39074 lt!2089008) (+ (size!39074 (t!371291 (list!18989 (right!43146 (right!43146 xs!286))))) (size!39074 (list!18989 ys!41)))))))

(declare-fun b!5067068 () Bool)

(assert (=> b!5067068 (= e!3162064 (or (not (= (list!18989 ys!41) Nil!58434)) (= lt!2089008 (t!371291 (list!18989 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067066 () Bool)

(declare-fun e!3162065 () List!58558)

(assert (=> b!5067066 (= e!3162065 (Cons!58434 (h!64882 (t!371291 (list!18989 (right!43146 (right!43146 xs!286))))) (++!12789 (t!371291 (t!371291 (list!18989 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41))))))

(declare-fun b!5067065 () Bool)

(assert (=> b!5067065 (= e!3162065 (list!18989 ys!41))))

(declare-fun d!1633871 () Bool)

(assert (=> d!1633871 e!3162064))

(declare-fun res!2157451 () Bool)

(assert (=> d!1633871 (=> (not res!2157451) (not e!3162064))))

(assert (=> d!1633871 (= res!2157451 (= (content!10417 lt!2089008) ((_ map or) (content!10417 (t!371291 (list!18989 (right!43146 (right!43146 xs!286))))) (content!10417 (list!18989 ys!41)))))))

(assert (=> d!1633871 (= lt!2089008 e!3162065)))

(declare-fun c!869861 () Bool)

(assert (=> d!1633871 (= c!869861 ((_ is Nil!58434) (t!371291 (list!18989 (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1633871 (= (++!12789 (t!371291 (list!18989 (right!43146 (right!43146 xs!286)))) (list!18989 ys!41)) lt!2089008)))

(assert (= (and d!1633871 c!869861) b!5067065))

(assert (= (and d!1633871 (not c!869861)) b!5067066))

(assert (= (and d!1633871 res!2157451) b!5067067))

(assert (= (and b!5067067 res!2157452) b!5067068))

(declare-fun m!6109760 () Bool)

(assert (=> b!5067067 m!6109760))

(declare-fun m!6109762 () Bool)

(assert (=> b!5067067 m!6109762))

(assert (=> b!5067067 m!6107974))

(assert (=> b!5067067 m!6108164))

(assert (=> b!5067066 m!6107974))

(declare-fun m!6109764 () Bool)

(assert (=> b!5067066 m!6109764))

(declare-fun m!6109766 () Bool)

(assert (=> d!1633871 m!6109766))

(declare-fun m!6109768 () Bool)

(assert (=> d!1633871 m!6109768))

(assert (=> d!1633871 m!6107974))

(assert (=> d!1633871 m!6108172))

(assert (=> b!5066421 d!1633871))

(declare-fun d!1633873 () Bool)

(declare-fun res!2157453 () Bool)

(declare-fun e!3162066 () Bool)

(assert (=> d!1633873 (=> (not res!2157453) (not e!3162066))))

(assert (=> d!1633873 (= res!2157453 (<= (size!39074 (list!18990 (xs!18914 (left!42816 (right!43146 ys!41))))) 512))))

(assert (=> d!1633873 (= (inv!77560 (left!42816 (right!43146 ys!41))) e!3162066)))

(declare-fun b!5067069 () Bool)

(declare-fun res!2157454 () Bool)

(assert (=> b!5067069 (=> (not res!2157454) (not e!3162066))))

(assert (=> b!5067069 (= res!2157454 (= (csize!31359 (left!42816 (right!43146 ys!41))) (size!39074 (list!18990 (xs!18914 (left!42816 (right!43146 ys!41)))))))))

(declare-fun b!5067070 () Bool)

(assert (=> b!5067070 (= e!3162066 (and (> (csize!31359 (left!42816 (right!43146 ys!41))) 0) (<= (csize!31359 (left!42816 (right!43146 ys!41))) 512)))))

(assert (= (and d!1633873 res!2157453) b!5067069))

(assert (= (and b!5067069 res!2157454) b!5067070))

(assert (=> d!1633873 m!6109728))

(assert (=> d!1633873 m!6109728))

(declare-fun m!6109770 () Bool)

(assert (=> d!1633873 m!6109770))

(assert (=> b!5067069 m!6109728))

(assert (=> b!5067069 m!6109728))

(assert (=> b!5067069 m!6109770))

(assert (=> b!5066663 d!1633873))

(declare-fun b!5067073 () Bool)

(declare-fun res!2157456 () Bool)

(declare-fun e!3162067 () Bool)

(assert (=> b!5067073 (=> (not res!2157456) (not e!3162067))))

(declare-fun lt!2089009 () List!58558)

(assert (=> b!5067073 (= res!2157456 (= (size!39074 lt!2089009) (+ (size!39074 (list!18989 (left!42816 (right!43146 lt!2088868)))) (size!39074 (list!18989 (right!43146 (right!43146 lt!2088868)))))))))

(declare-fun b!5067074 () Bool)

(assert (=> b!5067074 (= e!3162067 (or (not (= (list!18989 (right!43146 (right!43146 lt!2088868))) Nil!58434)) (= lt!2089009 (list!18989 (left!42816 (right!43146 lt!2088868))))))))

(declare-fun b!5067072 () Bool)

(declare-fun e!3162068 () List!58558)

(assert (=> b!5067072 (= e!3162068 (Cons!58434 (h!64882 (list!18989 (left!42816 (right!43146 lt!2088868)))) (++!12789 (t!371291 (list!18989 (left!42816 (right!43146 lt!2088868)))) (list!18989 (right!43146 (right!43146 lt!2088868))))))))

(declare-fun b!5067071 () Bool)

(assert (=> b!5067071 (= e!3162068 (list!18989 (right!43146 (right!43146 lt!2088868))))))

(declare-fun d!1633875 () Bool)

(assert (=> d!1633875 e!3162067))

(declare-fun res!2157455 () Bool)

(assert (=> d!1633875 (=> (not res!2157455) (not e!3162067))))

(assert (=> d!1633875 (= res!2157455 (= (content!10417 lt!2089009) ((_ map or) (content!10417 (list!18989 (left!42816 (right!43146 lt!2088868)))) (content!10417 (list!18989 (right!43146 (right!43146 lt!2088868)))))))))

(assert (=> d!1633875 (= lt!2089009 e!3162068)))

(declare-fun c!869862 () Bool)

(assert (=> d!1633875 (= c!869862 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 lt!2088868)))))))

(assert (=> d!1633875 (= (++!12789 (list!18989 (left!42816 (right!43146 lt!2088868))) (list!18989 (right!43146 (right!43146 lt!2088868)))) lt!2089009)))

(assert (= (and d!1633875 c!869862) b!5067071))

(assert (= (and d!1633875 (not c!869862)) b!5067072))

(assert (= (and d!1633875 res!2157455) b!5067073))

(assert (= (and b!5067073 res!2157456) b!5067074))

(declare-fun m!6109772 () Bool)

(assert (=> b!5067073 m!6109772))

(assert (=> b!5067073 m!6108522))

(declare-fun m!6109774 () Bool)

(assert (=> b!5067073 m!6109774))

(assert (=> b!5067073 m!6108524))

(declare-fun m!6109776 () Bool)

(assert (=> b!5067073 m!6109776))

(assert (=> b!5067072 m!6108524))

(declare-fun m!6109778 () Bool)

(assert (=> b!5067072 m!6109778))

(declare-fun m!6109780 () Bool)

(assert (=> d!1633875 m!6109780))

(assert (=> d!1633875 m!6108522))

(declare-fun m!6109782 () Bool)

(assert (=> d!1633875 m!6109782))

(assert (=> d!1633875 m!6108524))

(declare-fun m!6109784 () Bool)

(assert (=> d!1633875 m!6109784))

(assert (=> b!5066439 d!1633875))

(declare-fun d!1633877 () Bool)

(declare-fun c!869863 () Bool)

(assert (=> d!1633877 (= c!869863 ((_ is Empty!15564) (left!42816 (right!43146 lt!2088868))))))

(declare-fun e!3162069 () List!58558)

(assert (=> d!1633877 (= (list!18989 (left!42816 (right!43146 lt!2088868))) e!3162069)))

(declare-fun b!5067076 () Bool)

(declare-fun e!3162070 () List!58558)

(assert (=> b!5067076 (= e!3162069 e!3162070)))

(declare-fun c!869864 () Bool)

(assert (=> b!5067076 (= c!869864 ((_ is Leaf!25851) (left!42816 (right!43146 lt!2088868))))))

(declare-fun b!5067075 () Bool)

(assert (=> b!5067075 (= e!3162069 Nil!58434)))

(declare-fun b!5067078 () Bool)

(assert (=> b!5067078 (= e!3162070 (++!12789 (list!18989 (left!42816 (left!42816 (right!43146 lt!2088868)))) (list!18989 (right!43146 (left!42816 (right!43146 lt!2088868))))))))

(declare-fun b!5067077 () Bool)

(assert (=> b!5067077 (= e!3162070 (list!18990 (xs!18914 (left!42816 (right!43146 lt!2088868)))))))

(assert (= (and d!1633877 c!869863) b!5067075))

(assert (= (and d!1633877 (not c!869863)) b!5067076))

(assert (= (and b!5067076 c!869864) b!5067077))

(assert (= (and b!5067076 (not c!869864)) b!5067078))

(declare-fun m!6109786 () Bool)

(assert (=> b!5067078 m!6109786))

(declare-fun m!6109788 () Bool)

(assert (=> b!5067078 m!6109788))

(assert (=> b!5067078 m!6109786))

(assert (=> b!5067078 m!6109788))

(declare-fun m!6109790 () Bool)

(assert (=> b!5067078 m!6109790))

(declare-fun m!6109792 () Bool)

(assert (=> b!5067077 m!6109792))

(assert (=> b!5066439 d!1633877))

(declare-fun d!1633879 () Bool)

(declare-fun c!869865 () Bool)

(assert (=> d!1633879 (= c!869865 ((_ is Empty!15564) (right!43146 (right!43146 lt!2088868))))))

(declare-fun e!3162071 () List!58558)

(assert (=> d!1633879 (= (list!18989 (right!43146 (right!43146 lt!2088868))) e!3162071)))

(declare-fun b!5067080 () Bool)

(declare-fun e!3162072 () List!58558)

(assert (=> b!5067080 (= e!3162071 e!3162072)))

(declare-fun c!869866 () Bool)

(assert (=> b!5067080 (= c!869866 ((_ is Leaf!25851) (right!43146 (right!43146 lt!2088868))))))

(declare-fun b!5067079 () Bool)

(assert (=> b!5067079 (= e!3162071 Nil!58434)))

(declare-fun b!5067082 () Bool)

(assert (=> b!5067082 (= e!3162072 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 lt!2088868)))) (list!18989 (right!43146 (right!43146 (right!43146 lt!2088868))))))))

(declare-fun b!5067081 () Bool)

(assert (=> b!5067081 (= e!3162072 (list!18990 (xs!18914 (right!43146 (right!43146 lt!2088868)))))))

(assert (= (and d!1633879 c!869865) b!5067079))

(assert (= (and d!1633879 (not c!869865)) b!5067080))

(assert (= (and b!5067080 c!869866) b!5067081))

(assert (= (and b!5067080 (not c!869866)) b!5067082))

(declare-fun m!6109794 () Bool)

(assert (=> b!5067082 m!6109794))

(declare-fun m!6109796 () Bool)

(assert (=> b!5067082 m!6109796))

(assert (=> b!5067082 m!6109794))

(assert (=> b!5067082 m!6109796))

(declare-fun m!6109798 () Bool)

(assert (=> b!5067082 m!6109798))

(declare-fun m!6109800 () Bool)

(assert (=> b!5067081 m!6109800))

(assert (=> b!5066439 d!1633879))

(declare-fun d!1633881 () Bool)

(assert (=> d!1633881 (= (height!2141 (ite c!869767 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (ite ((_ is Empty!15564) (ite c!869767 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) 0 (ite ((_ is Leaf!25851) (ite c!869767 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) 1 (cheight!15775 (ite c!869767 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))))

(assert (=> bm!353049 d!1633881))

(declare-fun d!1633883 () Bool)

(declare-fun res!2157457 () Bool)

(declare-fun e!3162073 () Bool)

(assert (=> d!1633883 (=> (not res!2157457) (not e!3162073))))

(assert (=> d!1633883 (= res!2157457 (<= (size!39074 (list!18990 (xs!18914 (left!42816 (left!42816 ys!41))))) 512))))

(assert (=> d!1633883 (= (inv!77560 (left!42816 (left!42816 ys!41))) e!3162073)))

(declare-fun b!5067083 () Bool)

(declare-fun res!2157458 () Bool)

(assert (=> b!5067083 (=> (not res!2157458) (not e!3162073))))

(assert (=> b!5067083 (= res!2157458 (= (csize!31359 (left!42816 (left!42816 ys!41))) (size!39074 (list!18990 (xs!18914 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067084 () Bool)

(assert (=> b!5067084 (= e!3162073 (and (> (csize!31359 (left!42816 (left!42816 ys!41))) 0) (<= (csize!31359 (left!42816 (left!42816 ys!41))) 512)))))

(assert (= (and d!1633883 res!2157457) b!5067083))

(assert (= (and b!5067083 res!2157458) b!5067084))

(assert (=> d!1633883 m!6109058))

(assert (=> d!1633883 m!6109058))

(declare-fun m!6109802 () Bool)

(assert (=> d!1633883 m!6109802))

(assert (=> b!5067083 m!6109058))

(assert (=> b!5067083 m!6109058))

(assert (=> b!5067083 m!6109802))

(assert (=> b!5066442 d!1633883))

(declare-fun d!1633885 () Bool)

(declare-fun lt!2089010 () Int)

(assert (=> d!1633885 (= lt!2089010 (size!39074 (list!18989 (left!42816 ys!41))))))

(assert (=> d!1633885 (= lt!2089010 (ite ((_ is Empty!15564) (left!42816 ys!41)) 0 (ite ((_ is Leaf!25851) (left!42816 ys!41)) (csize!31359 (left!42816 ys!41)) (csize!31358 (left!42816 ys!41)))))))

(assert (=> d!1633885 (= (size!39075 (left!42816 ys!41)) lt!2089010)))

(declare-fun bs!1189927 () Bool)

(assert (= bs!1189927 d!1633885))

(assert (=> bs!1189927 m!6108098))

(assert (=> bs!1189927 m!6108098))

(assert (=> bs!1189927 m!6109078))

(assert (=> d!1633569 d!1633885))

(declare-fun d!1633887 () Bool)

(declare-fun lt!2089011 () Int)

(assert (=> d!1633887 (= lt!2089011 (size!39074 (list!18989 (right!43146 ys!41))))))

(assert (=> d!1633887 (= lt!2089011 (ite ((_ is Empty!15564) (right!43146 ys!41)) 0 (ite ((_ is Leaf!25851) (right!43146 ys!41)) (csize!31359 (right!43146 ys!41)) (csize!31358 (right!43146 ys!41)))))))

(assert (=> d!1633887 (= (size!39075 (right!43146 ys!41)) lt!2089011)))

(declare-fun bs!1189928 () Bool)

(assert (= bs!1189928 d!1633887))

(assert (=> bs!1189928 m!6108100))

(assert (=> bs!1189928 m!6108100))

(assert (=> bs!1189928 m!6109080))

(assert (=> d!1633569 d!1633887))

(declare-fun d!1633889 () Bool)

(declare-fun lt!2089012 () Int)

(assert (=> d!1633889 (>= lt!2089012 0)))

(declare-fun e!3162074 () Int)

(assert (=> d!1633889 (= lt!2089012 e!3162074)))

(declare-fun c!869867 () Bool)

(assert (=> d!1633889 (= c!869867 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 xs!286)))))))

(assert (=> d!1633889 (= (size!39074 (list!18989 (left!42816 (right!43146 xs!286)))) lt!2089012)))

(declare-fun b!5067085 () Bool)

(assert (=> b!5067085 (= e!3162074 0)))

(declare-fun b!5067086 () Bool)

(assert (=> b!5067086 (= e!3162074 (+ 1 (size!39074 (t!371291 (list!18989 (left!42816 (right!43146 xs!286)))))))))

(assert (= (and d!1633889 c!869867) b!5067085))

(assert (= (and d!1633889 (not c!869867)) b!5067086))

(declare-fun m!6109804 () Bool)

(assert (=> b!5067086 m!6109804))

(assert (=> d!1633457 d!1633889))

(assert (=> d!1633457 d!1633539))

(declare-fun d!1633891 () Bool)

(declare-fun c!869868 () Bool)

(assert (=> d!1633891 (= c!869868 ((_ is Nil!58434) lt!2088921))))

(declare-fun e!3162075 () (InoxSet T!105118))

(assert (=> d!1633891 (= (content!10417 lt!2088921) e!3162075)))

(declare-fun b!5067087 () Bool)

(assert (=> b!5067087 (= e!3162075 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067088 () Bool)

(assert (=> b!5067088 (= e!3162075 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 lt!2088921) true) (content!10417 (t!371291 lt!2088921))))))

(assert (= (and d!1633891 c!869868) b!5067087))

(assert (= (and d!1633891 (not c!869868)) b!5067088))

(declare-fun m!6109806 () Bool)

(assert (=> b!5067088 m!6109806))

(declare-fun m!6109808 () Bool)

(assert (=> b!5067088 m!6109808))

(assert (=> d!1633435 d!1633891))

(declare-fun d!1633893 () Bool)

(declare-fun c!869869 () Bool)

(assert (=> d!1633893 (= c!869869 ((_ is Nil!58434) (list!18989 (right!43146 (right!43146 xs!286)))))))

(declare-fun e!3162076 () (InoxSet T!105118))

(assert (=> d!1633893 (= (content!10417 (list!18989 (right!43146 (right!43146 xs!286)))) e!3162076)))

(declare-fun b!5067089 () Bool)

(assert (=> b!5067089 (= e!3162076 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067090 () Bool)

(assert (=> b!5067090 (= e!3162076 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 (right!43146 (right!43146 xs!286)))) true) (content!10417 (t!371291 (list!18989 (right!43146 (right!43146 xs!286)))))))))

(assert (= (and d!1633893 c!869869) b!5067089))

(assert (= (and d!1633893 (not c!869869)) b!5067090))

(declare-fun m!6109810 () Bool)

(assert (=> b!5067090 m!6109810))

(assert (=> b!5067090 m!6109768))

(assert (=> d!1633435 d!1633893))

(assert (=> d!1633435 d!1633453))

(assert (=> b!5066620 d!1633365))

(declare-fun d!1633895 () Bool)

(declare-fun c!869870 () Bool)

(assert (=> d!1633895 (= c!869870 ((_ is Empty!15564) (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))))))

(declare-fun e!3162077 () List!58558)

(assert (=> d!1633895 (= (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) e!3162077)))

(declare-fun b!5067092 () Bool)

(declare-fun e!3162078 () List!58558)

(assert (=> b!5067092 (= e!3162077 e!3162078)))

(declare-fun c!869871 () Bool)

(assert (=> b!5067092 (= c!869871 ((_ is Leaf!25851) (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5067091 () Bool)

(assert (=> b!5067091 (= e!3162077 Nil!58434)))

(declare-fun b!5067094 () Bool)

(assert (=> b!5067094 (= e!3162078 (++!12789 (list!18989 (left!42816 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (list!18989 (right!43146 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))))))))

(declare-fun b!5067093 () Bool)

(assert (=> b!5067093 (= e!3162078 (list!18990 (xs!18914 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(assert (= (and d!1633895 c!869870) b!5067091))

(assert (= (and d!1633895 (not c!869870)) b!5067092))

(assert (= (and b!5067092 c!869871) b!5067093))

(assert (= (and b!5067092 (not c!869871)) b!5067094))

(declare-fun m!6109812 () Bool)

(assert (=> b!5067094 m!6109812))

(declare-fun m!6109814 () Bool)

(assert (=> b!5067094 m!6109814))

(assert (=> b!5067094 m!6109812))

(assert (=> b!5067094 m!6109814))

(declare-fun m!6109816 () Bool)

(assert (=> b!5067094 m!6109816))

(declare-fun m!6109818 () Bool)

(assert (=> b!5067093 m!6109818))

(assert (=> b!5066620 d!1633895))

(declare-fun bm!353097 () Bool)

(declare-fun call!353105 () List!58558)

(declare-fun call!353104 () List!58558)

(assert (=> bm!353097 (= call!353104 (++!12789 call!353105 (++!12789 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41))))))

(declare-fun bm!353098 () Bool)

(declare-fun call!353103 () List!58558)

(assert (=> bm!353098 (= call!353103 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) (++!12789 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41))))))

(declare-fun bm!353099 () Bool)

(declare-fun call!353102 () List!58558)

(assert (=> bm!353099 (= call!353102 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) call!353103))))

(declare-fun b!5067096 () Bool)

(declare-fun e!3162079 () Bool)

(assert (=> b!5067096 (= e!3162079 (= call!353104 call!353102))))

(declare-fun bm!353100 () Bool)

(assert (=> bm!353100 (= call!353105 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(declare-fun d!1633897 () Bool)

(assert (=> d!1633897 e!3162079))

(declare-fun c!869872 () Bool)

(assert (=> d!1633897 (= c!869872 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1633897 (= (appendAssoc!301 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) (++!12789 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41))) true)))

(declare-fun b!5067095 () Bool)

(assert (=> b!5067095 (= e!3162079 (= call!353104 call!353102))))

(declare-fun lt!2089013 () Bool)

(assert (=> b!5067095 (= lt!2089013 (appendAssoc!301 (t!371291 (list!18989 (left!42816 (right!43146 (right!43146 xs!286))))) (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) (++!12789 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41))))))

(assert (= (and d!1633897 c!869872) b!5067096))

(assert (= (and d!1633897 (not c!869872)) b!5067095))

(assert (= (or b!5067096 b!5067095) bm!353100))

(assert (= (or b!5067096 b!5067095) bm!353098))

(assert (= (or b!5067096 b!5067095) bm!353099))

(assert (= (or b!5067096 b!5067095) bm!353097))

(assert (=> bm!353099 m!6108492))

(declare-fun m!6109820 () Bool)

(assert (=> bm!353099 m!6109820))

(assert (=> bm!353100 m!6108492))

(assert (=> bm!353100 m!6108850))

(declare-fun m!6109822 () Bool)

(assert (=> bm!353100 m!6109822))

(assert (=> bm!353098 m!6108850))

(assert (=> bm!353098 m!6108862))

(declare-fun m!6109824 () Bool)

(assert (=> bm!353098 m!6109824))

(assert (=> b!5067095 m!6108850))

(assert (=> b!5067095 m!6108862))

(declare-fun m!6109826 () Bool)

(assert (=> b!5067095 m!6109826))

(assert (=> bm!353097 m!6108862))

(declare-fun m!6109828 () Bool)

(assert (=> bm!353097 m!6109828))

(assert (=> b!5066620 d!1633897))

(declare-fun b!5067099 () Bool)

(declare-fun res!2157460 () Bool)

(declare-fun e!3162080 () Bool)

(assert (=> b!5067099 (=> (not res!2157460) (not e!3162080))))

(declare-fun lt!2089014 () List!58558)

(assert (=> b!5067099 (= res!2157460 (= (size!39074 lt!2089014) (+ (size!39074 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))) (size!39074 (list!18989 ys!41)))))))

(declare-fun b!5067100 () Bool)

(assert (=> b!5067100 (= e!3162080 (or (not (= (list!18989 ys!41) Nil!58434)) (= lt!2089014 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))))))))

(declare-fun b!5067098 () Bool)

(declare-fun e!3162081 () List!58558)

(assert (=> b!5067098 (= e!3162081 (Cons!58434 (h!64882 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))) (++!12789 (t!371291 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))) (list!18989 ys!41))))))

(declare-fun b!5067097 () Bool)

(assert (=> b!5067097 (= e!3162081 (list!18989 ys!41))))

(declare-fun d!1633899 () Bool)

(assert (=> d!1633899 e!3162080))

(declare-fun res!2157459 () Bool)

(assert (=> d!1633899 (=> (not res!2157459) (not e!3162080))))

(assert (=> d!1633899 (= res!2157459 (= (content!10417 lt!2089014) ((_ map or) (content!10417 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))) (content!10417 (list!18989 ys!41)))))))

(assert (=> d!1633899 (= lt!2089014 e!3162081)))

(declare-fun c!869873 () Bool)

(assert (=> d!1633899 (= c!869873 ((_ is Nil!58434) (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(assert (=> d!1633899 (= (++!12789 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41)) lt!2089014)))

(assert (= (and d!1633899 c!869873) b!5067097))

(assert (= (and d!1633899 (not c!869873)) b!5067098))

(assert (= (and d!1633899 res!2157459) b!5067099))

(assert (= (and b!5067099 res!2157460) b!5067100))

(declare-fun m!6109830 () Bool)

(assert (=> b!5067099 m!6109830))

(assert (=> b!5067099 m!6108852))

(declare-fun m!6109832 () Bool)

(assert (=> b!5067099 m!6109832))

(assert (=> b!5067099 m!6107974))

(assert (=> b!5067099 m!6108164))

(assert (=> b!5067098 m!6107974))

(declare-fun m!6109834 () Bool)

(assert (=> b!5067098 m!6109834))

(declare-fun m!6109836 () Bool)

(assert (=> d!1633899 m!6109836))

(assert (=> d!1633899 m!6108852))

(declare-fun m!6109838 () Bool)

(assert (=> d!1633899 m!6109838))

(assert (=> d!1633899 m!6107974))

(assert (=> d!1633899 m!6108172))

(assert (=> b!5066620 d!1633899))

(declare-fun d!1633901 () Bool)

(declare-fun c!869874 () Bool)

(assert (=> d!1633901 (= c!869874 ((_ is Empty!15564) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))))))

(declare-fun e!3162082 () List!58558)

(assert (=> d!1633901 (= (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) e!3162082)))

(declare-fun b!5067102 () Bool)

(declare-fun e!3162083 () List!58558)

(assert (=> b!5067102 (= e!3162082 e!3162083)))

(declare-fun c!869875 () Bool)

(assert (=> b!5067102 (= c!869875 ((_ is Leaf!25851) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5067101 () Bool)

(assert (=> b!5067101 (= e!3162082 Nil!58434)))

(declare-fun b!5067104 () Bool)

(assert (=> b!5067104 (= e!3162083 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))) (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))))))))

(declare-fun b!5067103 () Bool)

(assert (=> b!5067103 (= e!3162083 (list!18990 (xs!18914 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(assert (= (and d!1633901 c!869874) b!5067101))

(assert (= (and d!1633901 (not c!869874)) b!5067102))

(assert (= (and b!5067102 c!869875) b!5067103))

(assert (= (and b!5067102 (not c!869875)) b!5067104))

(declare-fun m!6109840 () Bool)

(assert (=> b!5067104 m!6109840))

(declare-fun m!6109842 () Bool)

(assert (=> b!5067104 m!6109842))

(assert (=> b!5067104 m!6109840))

(assert (=> b!5067104 m!6109842))

(declare-fun m!6109844 () Bool)

(assert (=> b!5067104 m!6109844))

(declare-fun m!6109846 () Bool)

(assert (=> b!5067103 m!6109846))

(assert (=> b!5066620 d!1633901))

(declare-fun d!1633903 () Bool)

(declare-fun c!869876 () Bool)

(assert (=> d!1633903 (= c!869876 ((_ is Empty!15564) (left!42816 (right!43146 (right!43146 xs!286)))))))

(declare-fun e!3162084 () List!58558)

(assert (=> d!1633903 (= (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) e!3162084)))

(declare-fun b!5067106 () Bool)

(declare-fun e!3162085 () List!58558)

(assert (=> b!5067106 (= e!3162084 e!3162085)))

(declare-fun c!869877 () Bool)

(assert (=> b!5067106 (= c!869877 ((_ is Leaf!25851) (left!42816 (right!43146 (right!43146 xs!286)))))))

(declare-fun b!5067105 () Bool)

(assert (=> b!5067105 (= e!3162084 Nil!58434)))

(declare-fun b!5067108 () Bool)

(assert (=> b!5067108 (= e!3162085 (++!12789 (list!18989 (left!42816 (left!42816 (right!43146 (right!43146 xs!286))))) (list!18989 (right!43146 (left!42816 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067107 () Bool)

(assert (=> b!5067107 (= e!3162085 (list!18990 (xs!18914 (left!42816 (right!43146 (right!43146 xs!286))))))))

(assert (= (and d!1633903 c!869876) b!5067105))

(assert (= (and d!1633903 (not c!869876)) b!5067106))

(assert (= (and b!5067106 c!869877) b!5067107))

(assert (= (and b!5067106 (not c!869877)) b!5067108))

(declare-fun m!6109848 () Bool)

(assert (=> b!5067108 m!6109848))

(declare-fun m!6109850 () Bool)

(assert (=> b!5067108 m!6109850))

(assert (=> b!5067108 m!6109848))

(assert (=> b!5067108 m!6109850))

(declare-fun m!6109852 () Bool)

(assert (=> b!5067108 m!6109852))

(declare-fun m!6109854 () Bool)

(assert (=> b!5067107 m!6109854))

(assert (=> b!5066620 d!1633903))

(declare-fun d!1633905 () Bool)

(declare-fun lt!2089015 () Bool)

(assert (=> d!1633905 (= lt!2089015 (isEmpty!31632 (list!18989 (right!43146 (right!43146 lt!2088868)))))))

(assert (=> d!1633905 (= lt!2089015 (= (size!39075 (right!43146 (right!43146 lt!2088868))) 0))))

(assert (=> d!1633905 (= (isEmpty!31631 (right!43146 (right!43146 lt!2088868))) lt!2089015)))

(declare-fun bs!1189929 () Bool)

(assert (= bs!1189929 d!1633905))

(assert (=> bs!1189929 m!6108524))

(assert (=> bs!1189929 m!6108524))

(declare-fun m!6109856 () Bool)

(assert (=> bs!1189929 m!6109856))

(declare-fun m!6109858 () Bool)

(assert (=> bs!1189929 m!6109858))

(assert (=> b!5066548 d!1633905))

(declare-fun b!5067111 () Bool)

(declare-fun res!2157462 () Bool)

(declare-fun e!3162086 () Bool)

(assert (=> b!5067111 (=> (not res!2157462) (not e!3162086))))

(declare-fun lt!2089016 () List!58558)

(assert (=> b!5067111 (= res!2157462 (= (size!39074 lt!2089016) (+ (size!39074 call!353069) (size!39074 (list!18989 (right!43146 (left!42816 ys!41)))))))))

(declare-fun b!5067112 () Bool)

(assert (=> b!5067112 (= e!3162086 (or (not (= (list!18989 (right!43146 (left!42816 ys!41))) Nil!58434)) (= lt!2089016 call!353069)))))

(declare-fun b!5067110 () Bool)

(declare-fun e!3162087 () List!58558)

(assert (=> b!5067110 (= e!3162087 (Cons!58434 (h!64882 call!353069) (++!12789 (t!371291 call!353069) (list!18989 (right!43146 (left!42816 ys!41))))))))

(declare-fun b!5067109 () Bool)

(assert (=> b!5067109 (= e!3162087 (list!18989 (right!43146 (left!42816 ys!41))))))

(declare-fun d!1633907 () Bool)

(assert (=> d!1633907 e!3162086))

(declare-fun res!2157461 () Bool)

(assert (=> d!1633907 (=> (not res!2157461) (not e!3162086))))

(assert (=> d!1633907 (= res!2157461 (= (content!10417 lt!2089016) ((_ map or) (content!10417 call!353069) (content!10417 (list!18989 (right!43146 (left!42816 ys!41)))))))))

(assert (=> d!1633907 (= lt!2089016 e!3162087)))

(declare-fun c!869878 () Bool)

(assert (=> d!1633907 (= c!869878 ((_ is Nil!58434) call!353069))))

(assert (=> d!1633907 (= (++!12789 call!353069 (list!18989 (right!43146 (left!42816 ys!41)))) lt!2089016)))

(assert (= (and d!1633907 c!869878) b!5067109))

(assert (= (and d!1633907 (not c!869878)) b!5067110))

(assert (= (and d!1633907 res!2157461) b!5067111))

(assert (= (and b!5067111 res!2157462) b!5067112))

(declare-fun m!6109860 () Bool)

(assert (=> b!5067111 m!6109860))

(declare-fun m!6109862 () Bool)

(assert (=> b!5067111 m!6109862))

(assert (=> b!5067111 m!6108106))

(assert (=> b!5067111 m!6109638))

(assert (=> b!5067110 m!6108106))

(declare-fun m!6109864 () Bool)

(assert (=> b!5067110 m!6109864))

(declare-fun m!6109866 () Bool)

(assert (=> d!1633907 m!6109866))

(declare-fun m!6109868 () Bool)

(assert (=> d!1633907 m!6109868))

(assert (=> d!1633907 m!6108106))

(assert (=> d!1633907 m!6109646))

(assert (=> bm!353061 d!1633907))

(declare-fun d!1633909 () Bool)

(assert (=> d!1633909 (= (isEmpty!31632 (list!18989 (left!42816 ys!41))) ((_ is Nil!58434) (list!18989 (left!42816 ys!41))))))

(assert (=> d!1633551 d!1633909))

(assert (=> d!1633551 d!1633501))

(assert (=> d!1633551 d!1633885))

(declare-fun d!1633911 () Bool)

(declare-fun lt!2089017 () Int)

(assert (=> d!1633911 (>= lt!2089017 0)))

(declare-fun e!3162088 () Int)

(assert (=> d!1633911 (= lt!2089017 e!3162088)))

(declare-fun c!869879 () Bool)

(assert (=> d!1633911 (= c!869879 ((_ is Nil!58434) (list!18990 (xs!18914 ys!41))))))

(assert (=> d!1633911 (= (size!39074 (list!18990 (xs!18914 ys!41))) lt!2089017)))

(declare-fun b!5067113 () Bool)

(assert (=> b!5067113 (= e!3162088 0)))

(declare-fun b!5067114 () Bool)

(assert (=> b!5067114 (= e!3162088 (+ 1 (size!39074 (t!371291 (list!18990 (xs!18914 ys!41))))))))

(assert (= (and d!1633911 c!869879) b!5067113))

(assert (= (and d!1633911 (not c!869879)) b!5067114))

(declare-fun m!6109870 () Bool)

(assert (=> b!5067114 m!6109870))

(assert (=> b!5066585 d!1633911))

(assert (=> b!5066585 d!1633527))

(declare-fun b!5067117 () Bool)

(declare-fun res!2157464 () Bool)

(declare-fun e!3162089 () Bool)

(assert (=> b!5067117 (=> (not res!2157464) (not e!3162089))))

(declare-fun lt!2089018 () List!58558)

(assert (=> b!5067117 (= res!2157464 (= (size!39074 lt!2089018) (+ (size!39074 call!353017) (size!39074 (list!18989 ys!41)))))))

(declare-fun b!5067118 () Bool)

(assert (=> b!5067118 (= e!3162089 (or (not (= (list!18989 ys!41) Nil!58434)) (= lt!2089018 call!353017)))))

(declare-fun b!5067116 () Bool)

(declare-fun e!3162090 () List!58558)

(assert (=> b!5067116 (= e!3162090 (Cons!58434 (h!64882 call!353017) (++!12789 (t!371291 call!353017) (list!18989 ys!41))))))

(declare-fun b!5067115 () Bool)

(assert (=> b!5067115 (= e!3162090 (list!18989 ys!41))))

(declare-fun d!1633913 () Bool)

(assert (=> d!1633913 e!3162089))

(declare-fun res!2157463 () Bool)

(assert (=> d!1633913 (=> (not res!2157463) (not e!3162089))))

(assert (=> d!1633913 (= res!2157463 (= (content!10417 lt!2089018) ((_ map or) (content!10417 call!353017) (content!10417 (list!18989 ys!41)))))))

(assert (=> d!1633913 (= lt!2089018 e!3162090)))

(declare-fun c!869880 () Bool)

(assert (=> d!1633913 (= c!869880 ((_ is Nil!58434) call!353017))))

(assert (=> d!1633913 (= (++!12789 call!353017 (list!18989 ys!41)) lt!2089018)))

(assert (= (and d!1633913 c!869880) b!5067115))

(assert (= (and d!1633913 (not c!869880)) b!5067116))

(assert (= (and d!1633913 res!2157463) b!5067117))

(assert (= (and b!5067117 res!2157464) b!5067118))

(declare-fun m!6109872 () Bool)

(assert (=> b!5067117 m!6109872))

(declare-fun m!6109874 () Bool)

(assert (=> b!5067117 m!6109874))

(assert (=> b!5067117 m!6107974))

(assert (=> b!5067117 m!6108164))

(assert (=> b!5067116 m!6107974))

(declare-fun m!6109876 () Bool)

(assert (=> b!5067116 m!6109876))

(declare-fun m!6109878 () Bool)

(assert (=> d!1633913 m!6109878))

(declare-fun m!6109880 () Bool)

(assert (=> d!1633913 m!6109880))

(assert (=> d!1633913 m!6107974))

(assert (=> d!1633913 m!6108172))

(assert (=> bm!353009 d!1633913))

(declare-fun d!1633915 () Bool)

(assert (=> d!1633915 (= (height!2141 (left!42816 lt!2088908)) (ite ((_ is Empty!15564) (left!42816 lt!2088908)) 0 (ite ((_ is Leaf!25851) (left!42816 lt!2088908)) 1 (cheight!15775 (left!42816 lt!2088908)))))))

(assert (=> b!5066494 d!1633915))

(declare-fun d!1633917 () Bool)

(assert (=> d!1633917 (= (height!2141 (right!43146 lt!2088908)) (ite ((_ is Empty!15564) (right!43146 lt!2088908)) 0 (ite ((_ is Leaf!25851) (right!43146 lt!2088908)) 1 (cheight!15775 (right!43146 lt!2088908)))))))

(assert (=> b!5066494 d!1633917))

(declare-fun d!1633919 () Bool)

(declare-fun c!869881 () Bool)

(assert (=> d!1633919 (= c!869881 ((_ is Nil!58434) (t!371291 lt!2088886)))))

(declare-fun e!3162091 () (InoxSet T!105118))

(assert (=> d!1633919 (= (content!10417 (t!371291 lt!2088886)) e!3162091)))

(declare-fun b!5067119 () Bool)

(assert (=> b!5067119 (= e!3162091 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067120 () Bool)

(assert (=> b!5067120 (= e!3162091 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (t!371291 lt!2088886)) true) (content!10417 (t!371291 (t!371291 lt!2088886)))))))

(assert (= (and d!1633919 c!869881) b!5067119))

(assert (= (and d!1633919 (not c!869881)) b!5067120))

(declare-fun m!6109882 () Bool)

(assert (=> b!5067120 m!6109882))

(declare-fun m!6109884 () Bool)

(assert (=> b!5067120 m!6109884))

(assert (=> b!5066451 d!1633919))

(declare-fun b!5067123 () Bool)

(declare-fun res!2157466 () Bool)

(declare-fun e!3162092 () Bool)

(assert (=> b!5067123 (=> (not res!2157466) (not e!3162092))))

(declare-fun lt!2089019 () List!58558)

(assert (=> b!5067123 (= res!2157466 (= (size!39074 lt!2089019) (+ (size!39074 (t!371291 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) (size!39074 (list!18989 lt!2088865)))))))

(declare-fun b!5067124 () Bool)

(assert (=> b!5067124 (= e!3162092 (or (not (= (list!18989 lt!2088865) Nil!58434)) (= lt!2089019 (t!371291 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))))

(declare-fun b!5067122 () Bool)

(declare-fun e!3162093 () List!58558)

(assert (=> b!5067122 (= e!3162093 (Cons!58434 (h!64882 (t!371291 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) (++!12789 (t!371291 (t!371291 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) (list!18989 lt!2088865))))))

(declare-fun b!5067121 () Bool)

(assert (=> b!5067121 (= e!3162093 (list!18989 lt!2088865))))

(declare-fun d!1633921 () Bool)

(assert (=> d!1633921 e!3162092))

(declare-fun res!2157465 () Bool)

(assert (=> d!1633921 (=> (not res!2157465) (not e!3162092))))

(assert (=> d!1633921 (= res!2157465 (= (content!10417 lt!2089019) ((_ map or) (content!10417 (t!371291 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) (content!10417 (list!18989 lt!2088865)))))))

(assert (=> d!1633921 (= lt!2089019 e!3162093)))

(declare-fun c!869882 () Bool)

(assert (=> d!1633921 (= c!869882 ((_ is Nil!58434) (t!371291 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))))

(assert (=> d!1633921 (= (++!12789 (t!371291 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) (list!18989 lt!2088865)) lt!2089019)))

(assert (= (and d!1633921 c!869882) b!5067121))

(assert (= (and d!1633921 (not c!869882)) b!5067122))

(assert (= (and d!1633921 res!2157465) b!5067123))

(assert (= (and b!5067123 res!2157466) b!5067124))

(declare-fun m!6109886 () Bool)

(assert (=> b!5067123 m!6109886))

(declare-fun m!6109888 () Bool)

(assert (=> b!5067123 m!6109888))

(assert (=> b!5067123 m!6108128))

(assert (=> b!5067123 m!6108458))

(assert (=> b!5067122 m!6108128))

(declare-fun m!6109890 () Bool)

(assert (=> b!5067122 m!6109890))

(declare-fun m!6109892 () Bool)

(assert (=> d!1633921 m!6109892))

(declare-fun m!6109894 () Bool)

(assert (=> d!1633921 m!6109894))

(assert (=> d!1633921 m!6108128))

(assert (=> d!1633921 m!6108982))

(assert (=> b!5066693 d!1633921))

(declare-fun d!1633923 () Bool)

(assert (=> d!1633923 (= (inv!77555 (xs!18914 (right!43146 (left!42816 ys!41)))) (<= (size!39074 (innerList!15652 (xs!18914 (right!43146 (left!42816 ys!41))))) 2147483647))))

(declare-fun bs!1189930 () Bool)

(assert (= bs!1189930 d!1633923))

(declare-fun m!6109896 () Bool)

(assert (=> bs!1189930 m!6109896))

(assert (=> b!5066775 d!1633923))

(declare-fun b!5067127 () Bool)

(declare-fun res!2157468 () Bool)

(declare-fun e!3162094 () Bool)

(assert (=> b!5067127 (=> (not res!2157468) (not e!3162094))))

(declare-fun lt!2089020 () List!58558)

(assert (=> b!5067127 (= res!2157468 (= (size!39074 lt!2089020) (+ (size!39074 (list!18989 (left!42816 (right!43146 xs!286)))) (size!39074 call!353023))))))

(declare-fun b!5067128 () Bool)

(assert (=> b!5067128 (= e!3162094 (or (not (= call!353023 Nil!58434)) (= lt!2089020 (list!18989 (left!42816 (right!43146 xs!286))))))))

(declare-fun b!5067126 () Bool)

(declare-fun e!3162095 () List!58558)

(assert (=> b!5067126 (= e!3162095 (Cons!58434 (h!64882 (list!18989 (left!42816 (right!43146 xs!286)))) (++!12789 (t!371291 (list!18989 (left!42816 (right!43146 xs!286)))) call!353023)))))

(declare-fun b!5067125 () Bool)

(assert (=> b!5067125 (= e!3162095 call!353023)))

(declare-fun d!1633925 () Bool)

(assert (=> d!1633925 e!3162094))

(declare-fun res!2157467 () Bool)

(assert (=> d!1633925 (=> (not res!2157467) (not e!3162094))))

(assert (=> d!1633925 (= res!2157467 (= (content!10417 lt!2089020) ((_ map or) (content!10417 (list!18989 (left!42816 (right!43146 xs!286)))) (content!10417 call!353023))))))

(assert (=> d!1633925 (= lt!2089020 e!3162095)))

(declare-fun c!869883 () Bool)

(assert (=> d!1633925 (= c!869883 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 xs!286)))))))

(assert (=> d!1633925 (= (++!12789 (list!18989 (left!42816 (right!43146 xs!286))) call!353023) lt!2089020)))

(assert (= (and d!1633925 c!869883) b!5067125))

(assert (= (and d!1633925 (not c!869883)) b!5067126))

(assert (= (and d!1633925 res!2157467) b!5067127))

(assert (= (and b!5067127 res!2157468) b!5067128))

(declare-fun m!6109898 () Bool)

(assert (=> b!5067127 m!6109898))

(assert (=> b!5067127 m!6108092))

(assert (=> b!5067127 m!6108554))

(declare-fun m!6109900 () Bool)

(assert (=> b!5067127 m!6109900))

(declare-fun m!6109902 () Bool)

(assert (=> b!5067126 m!6109902))

(declare-fun m!6109904 () Bool)

(assert (=> d!1633925 m!6109904))

(assert (=> d!1633925 m!6108092))

(assert (=> d!1633925 m!6108770))

(declare-fun m!6109906 () Bool)

(assert (=> d!1633925 m!6109906))

(assert (=> bm!353019 d!1633925))

(declare-fun bm!353101 () Bool)

(declare-fun call!353108 () List!58558)

(declare-fun call!353109 () List!58558)

(assert (=> bm!353101 (= call!353108 (++!12789 call!353109 (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353102 () Bool)

(declare-fun call!353107 () List!58558)

(assert (=> bm!353102 (= call!353107 (++!12789 (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353103 () Bool)

(declare-fun call!353106 () List!58558)

(assert (=> bm!353103 (= call!353106 (++!12789 (t!371291 (list!18989 xs!286)) call!353107))))

(declare-fun b!5067130 () Bool)

(declare-fun e!3162096 () Bool)

(assert (=> b!5067130 (= e!3162096 (= call!353108 call!353106))))

(declare-fun bm!353104 () Bool)

(assert (=> bm!353104 (= call!353109 (++!12789 (t!371291 (list!18989 xs!286)) (list!18989 (left!42816 ys!41))))))

(declare-fun d!1633927 () Bool)

(assert (=> d!1633927 e!3162096))

(declare-fun c!869884 () Bool)

(assert (=> d!1633927 (= c!869884 ((_ is Nil!58434) (t!371291 (list!18989 xs!286))))))

(assert (=> d!1633927 (= (appendAssoc!301 (t!371291 (list!18989 xs!286)) (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))) true)))

(declare-fun b!5067129 () Bool)

(assert (=> b!5067129 (= e!3162096 (= call!353108 call!353106))))

(declare-fun lt!2089021 () Bool)

(assert (=> b!5067129 (= lt!2089021 (appendAssoc!301 (t!371291 (t!371291 (list!18989 xs!286))) (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))))))

(assert (= (and d!1633927 c!869884) b!5067130))

(assert (= (and d!1633927 (not c!869884)) b!5067129))

(assert (= (or b!5067130 b!5067129) bm!353104))

(assert (= (or b!5067130 b!5067129) bm!353102))

(assert (= (or b!5067130 b!5067129) bm!353103))

(assert (= (or b!5067130 b!5067129) bm!353101))

(declare-fun m!6109908 () Bool)

(assert (=> bm!353103 m!6109908))

(assert (=> bm!353104 m!6108098))

(declare-fun m!6109910 () Bool)

(assert (=> bm!353104 m!6109910))

(assert (=> bm!353102 m!6108098))

(assert (=> bm!353102 m!6108100))

(assert (=> bm!353102 m!6108178))

(assert (=> b!5067129 m!6108098))

(assert (=> b!5067129 m!6108100))

(declare-fun m!6109912 () Bool)

(assert (=> b!5067129 m!6109912))

(assert (=> bm!353101 m!6108100))

(declare-fun m!6109914 () Bool)

(assert (=> bm!353101 m!6109914))

(assert (=> b!5066520 d!1633927))

(declare-fun d!1633929 () Bool)

(assert (=> d!1633929 (= (max!0 (height!2141 (left!42816 (right!43146 ys!41))) (height!2141 (right!43146 (right!43146 ys!41)))) (ite (< (height!2141 (left!42816 (right!43146 ys!41))) (height!2141 (right!43146 (right!43146 ys!41)))) (height!2141 (right!43146 (right!43146 ys!41))) (height!2141 (left!42816 (right!43146 ys!41)))))))

(assert (=> b!5066561 d!1633929))

(declare-fun d!1633931 () Bool)

(assert (=> d!1633931 (= (height!2141 (left!42816 (right!43146 ys!41))) (ite ((_ is Empty!15564) (left!42816 (right!43146 ys!41))) 0 (ite ((_ is Leaf!25851) (left!42816 (right!43146 ys!41))) 1 (cheight!15775 (left!42816 (right!43146 ys!41))))))))

(assert (=> b!5066561 d!1633931))

(declare-fun d!1633933 () Bool)

(assert (=> d!1633933 (= (height!2141 (right!43146 (right!43146 ys!41))) (ite ((_ is Empty!15564) (right!43146 (right!43146 ys!41))) 0 (ite ((_ is Leaf!25851) (right!43146 (right!43146 ys!41))) 1 (cheight!15775 (right!43146 (right!43146 ys!41))))))))

(assert (=> b!5066561 d!1633933))

(declare-fun d!1633935 () Bool)

(assert (=> d!1633935 (= (inv!77555 (xs!18914 (left!42816 (left!42816 xs!286)))) (<= (size!39074 (innerList!15652 (xs!18914 (left!42816 (left!42816 xs!286))))) 2147483647))))

(declare-fun bs!1189931 () Bool)

(assert (= bs!1189931 d!1633935))

(declare-fun m!6109916 () Bool)

(assert (=> bs!1189931 m!6109916))

(assert (=> b!5066759 d!1633935))

(declare-fun b!5067133 () Bool)

(declare-fun res!2157470 () Bool)

(declare-fun e!3162097 () Bool)

(assert (=> b!5067133 (=> (not res!2157470) (not e!3162097))))

(declare-fun lt!2089022 () List!58558)

(assert (=> b!5067133 (= res!2157470 (= (size!39074 lt!2089022) (+ (size!39074 (list!18989 (left!42816 (left!42816 (left!42816 ys!41))))) (size!39074 (list!18989 (right!43146 (left!42816 (left!42816 ys!41))))))))))

(declare-fun b!5067134 () Bool)

(assert (=> b!5067134 (= e!3162097 (or (not (= (list!18989 (right!43146 (left!42816 (left!42816 ys!41)))) Nil!58434)) (= lt!2089022 (list!18989 (left!42816 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067132 () Bool)

(declare-fun e!3162098 () List!58558)

(assert (=> b!5067132 (= e!3162098 (Cons!58434 (h!64882 (list!18989 (left!42816 (left!42816 (left!42816 ys!41))))) (++!12789 (t!371291 (list!18989 (left!42816 (left!42816 (left!42816 ys!41))))) (list!18989 (right!43146 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067131 () Bool)

(assert (=> b!5067131 (= e!3162098 (list!18989 (right!43146 (left!42816 (left!42816 ys!41)))))))

(declare-fun d!1633937 () Bool)

(assert (=> d!1633937 e!3162097))

(declare-fun res!2157469 () Bool)

(assert (=> d!1633937 (=> (not res!2157469) (not e!3162097))))

(assert (=> d!1633937 (= res!2157469 (= (content!10417 lt!2089022) ((_ map or) (content!10417 (list!18989 (left!42816 (left!42816 (left!42816 ys!41))))) (content!10417 (list!18989 (right!43146 (left!42816 (left!42816 ys!41))))))))))

(assert (=> d!1633937 (= lt!2089022 e!3162098)))

(declare-fun c!869885 () Bool)

(assert (=> d!1633937 (= c!869885 ((_ is Nil!58434) (list!18989 (left!42816 (left!42816 (left!42816 ys!41))))))))

(assert (=> d!1633937 (= (++!12789 (list!18989 (left!42816 (left!42816 (left!42816 ys!41)))) (list!18989 (right!43146 (left!42816 (left!42816 ys!41))))) lt!2089022)))

(assert (= (and d!1633937 c!869885) b!5067131))

(assert (= (and d!1633937 (not c!869885)) b!5067132))

(assert (= (and d!1633937 res!2157469) b!5067133))

(assert (= (and b!5067133 res!2157470) b!5067134))

(declare-fun m!6109918 () Bool)

(assert (=> b!5067133 m!6109918))

(assert (=> b!5067133 m!6109052))

(declare-fun m!6109920 () Bool)

(assert (=> b!5067133 m!6109920))

(assert (=> b!5067133 m!6109054))

(declare-fun m!6109922 () Bool)

(assert (=> b!5067133 m!6109922))

(assert (=> b!5067132 m!6109054))

(declare-fun m!6109924 () Bool)

(assert (=> b!5067132 m!6109924))

(declare-fun m!6109926 () Bool)

(assert (=> d!1633937 m!6109926))

(assert (=> d!1633937 m!6109052))

(declare-fun m!6109928 () Bool)

(assert (=> d!1633937 m!6109928))

(assert (=> d!1633937 m!6109054))

(declare-fun m!6109930 () Bool)

(assert (=> d!1633937 m!6109930))

(assert (=> b!5066717 d!1633937))

(declare-fun d!1633939 () Bool)

(declare-fun c!869886 () Bool)

(assert (=> d!1633939 (= c!869886 ((_ is Empty!15564) (left!42816 (left!42816 (left!42816 ys!41)))))))

(declare-fun e!3162099 () List!58558)

(assert (=> d!1633939 (= (list!18989 (left!42816 (left!42816 (left!42816 ys!41)))) e!3162099)))

(declare-fun b!5067136 () Bool)

(declare-fun e!3162100 () List!58558)

(assert (=> b!5067136 (= e!3162099 e!3162100)))

(declare-fun c!869887 () Bool)

(assert (=> b!5067136 (= c!869887 ((_ is Leaf!25851) (left!42816 (left!42816 (left!42816 ys!41)))))))

(declare-fun b!5067135 () Bool)

(assert (=> b!5067135 (= e!3162099 Nil!58434)))

(declare-fun b!5067138 () Bool)

(assert (=> b!5067138 (= e!3162100 (++!12789 (list!18989 (left!42816 (left!42816 (left!42816 (left!42816 ys!41))))) (list!18989 (right!43146 (left!42816 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067137 () Bool)

(assert (=> b!5067137 (= e!3162100 (list!18990 (xs!18914 (left!42816 (left!42816 (left!42816 ys!41))))))))

(assert (= (and d!1633939 c!869886) b!5067135))

(assert (= (and d!1633939 (not c!869886)) b!5067136))

(assert (= (and b!5067136 c!869887) b!5067137))

(assert (= (and b!5067136 (not c!869887)) b!5067138))

(declare-fun m!6109932 () Bool)

(assert (=> b!5067138 m!6109932))

(declare-fun m!6109934 () Bool)

(assert (=> b!5067138 m!6109934))

(assert (=> b!5067138 m!6109932))

(assert (=> b!5067138 m!6109934))

(declare-fun m!6109936 () Bool)

(assert (=> b!5067138 m!6109936))

(declare-fun m!6109938 () Bool)

(assert (=> b!5067137 m!6109938))

(assert (=> b!5066717 d!1633939))

(declare-fun d!1633941 () Bool)

(declare-fun c!869888 () Bool)

(assert (=> d!1633941 (= c!869888 ((_ is Empty!15564) (right!43146 (left!42816 (left!42816 ys!41)))))))

(declare-fun e!3162101 () List!58558)

(assert (=> d!1633941 (= (list!18989 (right!43146 (left!42816 (left!42816 ys!41)))) e!3162101)))

(declare-fun b!5067140 () Bool)

(declare-fun e!3162102 () List!58558)

(assert (=> b!5067140 (= e!3162101 e!3162102)))

(declare-fun c!869889 () Bool)

(assert (=> b!5067140 (= c!869889 ((_ is Leaf!25851) (right!43146 (left!42816 (left!42816 ys!41)))))))

(declare-fun b!5067139 () Bool)

(assert (=> b!5067139 (= e!3162101 Nil!58434)))

(declare-fun b!5067142 () Bool)

(assert (=> b!5067142 (= e!3162102 (++!12789 (list!18989 (left!42816 (right!43146 (left!42816 (left!42816 ys!41))))) (list!18989 (right!43146 (right!43146 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067141 () Bool)

(assert (=> b!5067141 (= e!3162102 (list!18990 (xs!18914 (right!43146 (left!42816 (left!42816 ys!41))))))))

(assert (= (and d!1633941 c!869888) b!5067139))

(assert (= (and d!1633941 (not c!869888)) b!5067140))

(assert (= (and b!5067140 c!869889) b!5067141))

(assert (= (and b!5067140 (not c!869889)) b!5067142))

(declare-fun m!6109940 () Bool)

(assert (=> b!5067142 m!6109940))

(declare-fun m!6109942 () Bool)

(assert (=> b!5067142 m!6109942))

(assert (=> b!5067142 m!6109940))

(assert (=> b!5067142 m!6109942))

(declare-fun m!6109944 () Bool)

(assert (=> b!5067142 m!6109944))

(declare-fun m!6109946 () Bool)

(assert (=> b!5067141 m!6109946))

(assert (=> b!5066717 d!1633941))

(declare-fun d!1633943 () Bool)

(assert (=> d!1633943 (= (inv!77555 (xs!18914 (left!42816 (left!42816 ys!41)))) (<= (size!39074 (innerList!15652 (xs!18914 (left!42816 (left!42816 ys!41))))) 2147483647))))

(declare-fun bs!1189932 () Bool)

(assert (= bs!1189932 d!1633943))

(declare-fun m!6109948 () Bool)

(assert (=> bs!1189932 m!6109948))

(assert (=> b!5066769 d!1633943))

(declare-fun d!1633945 () Bool)

(declare-fun lt!2089023 () Int)

(assert (=> d!1633945 (>= lt!2089023 0)))

(declare-fun e!3162103 () Int)

(assert (=> d!1633945 (= lt!2089023 e!3162103)))

(declare-fun c!869890 () Bool)

(assert (=> d!1633945 (= c!869890 ((_ is Nil!58434) lt!2088921))))

(assert (=> d!1633945 (= (size!39074 lt!2088921) lt!2089023)))

(declare-fun b!5067143 () Bool)

(assert (=> b!5067143 (= e!3162103 0)))

(declare-fun b!5067144 () Bool)

(assert (=> b!5067144 (= e!3162103 (+ 1 (size!39074 (t!371291 lt!2088921))))))

(assert (= (and d!1633945 c!869890) b!5067143))

(assert (= (and d!1633945 (not c!869890)) b!5067144))

(declare-fun m!6109950 () Bool)

(assert (=> b!5067144 m!6109950))

(assert (=> b!5066422 d!1633945))

(declare-fun d!1633947 () Bool)

(declare-fun lt!2089024 () Int)

(assert (=> d!1633947 (>= lt!2089024 0)))

(declare-fun e!3162104 () Int)

(assert (=> d!1633947 (= lt!2089024 e!3162104)))

(declare-fun c!869891 () Bool)

(assert (=> d!1633947 (= c!869891 ((_ is Nil!58434) (list!18989 (right!43146 (right!43146 xs!286)))))))

(assert (=> d!1633947 (= (size!39074 (list!18989 (right!43146 (right!43146 xs!286)))) lt!2089024)))

(declare-fun b!5067145 () Bool)

(assert (=> b!5067145 (= e!3162104 0)))

(declare-fun b!5067146 () Bool)

(assert (=> b!5067146 (= e!3162104 (+ 1 (size!39074 (t!371291 (list!18989 (right!43146 (right!43146 xs!286)))))))))

(assert (= (and d!1633947 c!869891) b!5067145))

(assert (= (and d!1633947 (not c!869891)) b!5067146))

(assert (=> b!5067146 m!6109762))

(assert (=> b!5066422 d!1633947))

(assert (=> b!5066422 d!1633585))

(declare-fun d!1633949 () Bool)

(declare-fun lt!2089025 () Int)

(assert (=> d!1633949 (>= lt!2089025 0)))

(declare-fun e!3162105 () Int)

(assert (=> d!1633949 (= lt!2089025 e!3162105)))

(declare-fun c!869892 () Bool)

(assert (=> d!1633949 (= c!869892 ((_ is Nil!58434) (list!18990 (xs!18914 (right!43146 xs!286)))))))

(assert (=> d!1633949 (= (size!39074 (list!18990 (xs!18914 (right!43146 xs!286)))) lt!2089025)))

(declare-fun b!5067147 () Bool)

(assert (=> b!5067147 (= e!3162105 0)))

(declare-fun b!5067148 () Bool)

(assert (=> b!5067148 (= e!3162105 (+ 1 (size!39074 (t!371291 (list!18990 (xs!18914 (right!43146 xs!286)))))))))

(assert (= (and d!1633949 c!869892) b!5067147))

(assert (= (and d!1633949 (not c!869892)) b!5067148))

(declare-fun m!6109952 () Bool)

(assert (=> b!5067148 m!6109952))

(assert (=> d!1633505 d!1633949))

(declare-fun d!1633951 () Bool)

(assert (=> d!1633951 (= (list!18990 (xs!18914 (right!43146 xs!286))) (innerList!15652 (xs!18914 (right!43146 xs!286))))))

(assert (=> d!1633505 d!1633951))

(declare-fun d!1633953 () Bool)

(declare-fun c!869893 () Bool)

(assert (=> d!1633953 (= c!869893 ((_ is Nil!58434) lt!2088961))))

(declare-fun e!3162106 () (InoxSet T!105118))

(assert (=> d!1633953 (= (content!10417 lt!2088961) e!3162106)))

(declare-fun b!5067149 () Bool)

(assert (=> b!5067149 (= e!3162106 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067150 () Bool)

(assert (=> b!5067150 (= e!3162106 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 lt!2088961) true) (content!10417 (t!371291 lt!2088961))))))

(assert (= (and d!1633953 c!869893) b!5067149))

(assert (= (and d!1633953 (not c!869893)) b!5067150))

(declare-fun m!6109954 () Bool)

(assert (=> b!5067150 m!6109954))

(declare-fun m!6109956 () Bool)

(assert (=> b!5067150 m!6109956))

(assert (=> d!1633619 d!1633953))

(declare-fun d!1633955 () Bool)

(declare-fun c!869894 () Bool)

(assert (=> d!1633955 (= c!869894 ((_ is Nil!58434) (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(declare-fun e!3162107 () (InoxSet T!105118))

(assert (=> d!1633955 (= (content!10417 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) e!3162107)))

(declare-fun b!5067151 () Bool)

(assert (=> b!5067151 (= e!3162107 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067152 () Bool)

(assert (=> b!5067152 (= e!3162107 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) true) (content!10417 (t!371291 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))))

(assert (= (and d!1633955 c!869894) b!5067151))

(assert (= (and d!1633955 (not c!869894)) b!5067152))

(declare-fun m!6109958 () Bool)

(assert (=> b!5067152 m!6109958))

(assert (=> b!5067152 m!6109894))

(assert (=> d!1633619 d!1633955))

(declare-fun d!1633957 () Bool)

(declare-fun c!869895 () Bool)

(assert (=> d!1633957 (= c!869895 ((_ is Nil!58434) (list!18989 lt!2088865)))))

(declare-fun e!3162108 () (InoxSet T!105118))

(assert (=> d!1633957 (= (content!10417 (list!18989 lt!2088865)) e!3162108)))

(declare-fun b!5067153 () Bool)

(assert (=> b!5067153 (= e!3162108 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067154 () Bool)

(assert (=> b!5067154 (= e!3162108 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 lt!2088865)) true) (content!10417 (t!371291 (list!18989 lt!2088865)))))))

(assert (= (and d!1633957 c!869895) b!5067153))

(assert (= (and d!1633957 (not c!869895)) b!5067154))

(declare-fun m!6109960 () Bool)

(assert (=> b!5067154 m!6109960))

(declare-fun m!6109962 () Bool)

(assert (=> b!5067154 m!6109962))

(assert (=> d!1633619 d!1633957))

(declare-fun d!1633959 () Bool)

(declare-fun lt!2089026 () Int)

(assert (=> d!1633959 (>= lt!2089026 0)))

(declare-fun e!3162109 () Int)

(assert (=> d!1633959 (= lt!2089026 e!3162109)))

(declare-fun c!869896 () Bool)

(assert (=> d!1633959 (= c!869896 ((_ is Nil!58434) (t!371291 (list!18989 ys!41))))))

(assert (=> d!1633959 (= (size!39074 (t!371291 (list!18989 ys!41))) lt!2089026)))

(declare-fun b!5067155 () Bool)

(assert (=> b!5067155 (= e!3162109 0)))

(declare-fun b!5067156 () Bool)

(assert (=> b!5067156 (= e!3162109 (+ 1 (size!39074 (t!371291 (t!371291 (list!18989 ys!41))))))))

(assert (= (and d!1633959 c!869896) b!5067155))

(assert (= (and d!1633959 (not c!869896)) b!5067156))

(declare-fun m!6109964 () Bool)

(assert (=> b!5067156 m!6109964))

(assert (=> b!5066607 d!1633959))

(declare-fun d!1633961 () Bool)

(declare-fun lt!2089027 () Int)

(assert (=> d!1633961 (>= lt!2089027 0)))

(declare-fun e!3162110 () Int)

(assert (=> d!1633961 (= lt!2089027 e!3162110)))

(declare-fun c!869897 () Bool)

(assert (=> d!1633961 (= c!869897 ((_ is Nil!58434) (innerList!15652 (xs!18914 (left!42816 xs!286)))))))

(assert (=> d!1633961 (= (size!39074 (innerList!15652 (xs!18914 (left!42816 xs!286)))) lt!2089027)))

(declare-fun b!5067157 () Bool)

(assert (=> b!5067157 (= e!3162110 0)))

(declare-fun b!5067158 () Bool)

(assert (=> b!5067158 (= e!3162110 (+ 1 (size!39074 (t!371291 (innerList!15652 (xs!18914 (left!42816 xs!286)))))))))

(assert (= (and d!1633961 c!869897) b!5067157))

(assert (= (and d!1633961 (not c!869897)) b!5067158))

(declare-fun m!6109966 () Bool)

(assert (=> b!5067158 m!6109966))

(assert (=> d!1633625 d!1633961))

(declare-fun b!5067161 () Bool)

(declare-fun res!2157472 () Bool)

(declare-fun e!3162111 () Bool)

(assert (=> b!5067161 (=> (not res!2157472) (not e!3162111))))

(declare-fun lt!2089028 () List!58558)

(assert (=> b!5067161 (= res!2157472 (= (size!39074 lt!2089028) (+ (size!39074 (t!371291 (list!18989 (left!42816 ys!41)))) (size!39074 (list!18989 (right!43146 ys!41))))))))

(declare-fun b!5067162 () Bool)

(assert (=> b!5067162 (= e!3162111 (or (not (= (list!18989 (right!43146 ys!41)) Nil!58434)) (= lt!2089028 (t!371291 (list!18989 (left!42816 ys!41))))))))

(declare-fun b!5067160 () Bool)

(declare-fun e!3162112 () List!58558)

(assert (=> b!5067160 (= e!3162112 (Cons!58434 (h!64882 (t!371291 (list!18989 (left!42816 ys!41)))) (++!12789 (t!371291 (t!371291 (list!18989 (left!42816 ys!41)))) (list!18989 (right!43146 ys!41)))))))

(declare-fun b!5067159 () Bool)

(assert (=> b!5067159 (= e!3162112 (list!18989 (right!43146 ys!41)))))

(declare-fun d!1633963 () Bool)

(assert (=> d!1633963 e!3162111))

(declare-fun res!2157471 () Bool)

(assert (=> d!1633963 (=> (not res!2157471) (not e!3162111))))

(assert (=> d!1633963 (= res!2157471 (= (content!10417 lt!2089028) ((_ map or) (content!10417 (t!371291 (list!18989 (left!42816 ys!41)))) (content!10417 (list!18989 (right!43146 ys!41))))))))

(assert (=> d!1633963 (= lt!2089028 e!3162112)))

(declare-fun c!869898 () Bool)

(assert (=> d!1633963 (= c!869898 ((_ is Nil!58434) (t!371291 (list!18989 (left!42816 ys!41)))))))

(assert (=> d!1633963 (= (++!12789 (t!371291 (list!18989 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))) lt!2089028)))

(assert (= (and d!1633963 c!869898) b!5067159))

(assert (= (and d!1633963 (not c!869898)) b!5067160))

(assert (= (and d!1633963 res!2157471) b!5067161))

(assert (= (and b!5067161 res!2157472) b!5067162))

(declare-fun m!6109968 () Bool)

(assert (=> b!5067161 m!6109968))

(declare-fun m!6109970 () Bool)

(assert (=> b!5067161 m!6109970))

(assert (=> b!5067161 m!6108100))

(assert (=> b!5067161 m!6109080))

(assert (=> b!5067160 m!6108100))

(declare-fun m!6109972 () Bool)

(assert (=> b!5067160 m!6109972))

(declare-fun m!6109974 () Bool)

(assert (=> d!1633963 m!6109974))

(declare-fun m!6109976 () Bool)

(assert (=> d!1633963 m!6109976))

(assert (=> d!1633963 m!6108100))

(assert (=> d!1633963 m!6109088))

(assert (=> b!5066727 d!1633963))

(declare-fun d!1633965 () Bool)

(declare-fun res!2157473 () Bool)

(declare-fun e!3162113 () Bool)

(assert (=> d!1633965 (=> (not res!2157473) (not e!3162113))))

(assert (=> d!1633965 (= res!2157473 (<= (size!39074 (list!18990 (xs!18914 (left!42816 (right!43146 xs!286))))) 512))))

(assert (=> d!1633965 (= (inv!77560 (left!42816 (right!43146 xs!286))) e!3162113)))

(declare-fun b!5067163 () Bool)

(declare-fun res!2157474 () Bool)

(assert (=> b!5067163 (=> (not res!2157474) (not e!3162113))))

(assert (=> b!5067163 (= res!2157474 (= (csize!31359 (left!42816 (right!43146 xs!286))) (size!39074 (list!18990 (xs!18914 (left!42816 (right!43146 xs!286)))))))))

(declare-fun b!5067164 () Bool)

(assert (=> b!5067164 (= e!3162113 (and (> (csize!31359 (left!42816 (right!43146 xs!286))) 0) (<= (csize!31359 (left!42816 (right!43146 xs!286))) 512)))))

(assert (= (and d!1633965 res!2157473) b!5067163))

(assert (= (and b!5067163 res!2157474) b!5067164))

(assert (=> d!1633965 m!6108736))

(assert (=> d!1633965 m!6108736))

(declare-fun m!6109978 () Bool)

(assert (=> d!1633965 m!6109978))

(assert (=> b!5067163 m!6108736))

(assert (=> b!5067163 m!6108736))

(assert (=> b!5067163 m!6109978))

(assert (=> b!5066388 d!1633965))

(declare-fun bm!353105 () Bool)

(declare-fun call!353112 () List!58558)

(declare-fun call!353113 () List!58558)

(assert (=> bm!353105 (= call!353112 (++!12789 call!353113 (list!18989 ys!41)))))

(declare-fun bm!353106 () Bool)

(declare-fun call!353111 () List!58558)

(assert (=> bm!353106 (= call!353111 (++!12789 (list!18989 (right!43146 (right!43146 (right!43146 xs!286)))) (list!18989 ys!41)))))

(declare-fun bm!353107 () Bool)

(declare-fun call!353110 () List!58558)

(assert (=> bm!353107 (= call!353110 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) call!353111))))

(declare-fun b!5067166 () Bool)

(declare-fun e!3162114 () Bool)

(assert (=> b!5067166 (= e!3162114 (= call!353112 call!353110))))

(declare-fun bm!353108 () Bool)

(assert (=> bm!353108 (= call!353113 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) (list!18989 (right!43146 (right!43146 (right!43146 xs!286))))))))

(declare-fun d!1633967 () Bool)

(assert (=> d!1633967 e!3162114))

(declare-fun c!869899 () Bool)

(assert (=> d!1633967 (= c!869899 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1633967 (= (appendAssoc!301 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) (list!18989 (right!43146 (right!43146 (right!43146 xs!286)))) (list!18989 ys!41)) true)))

(declare-fun b!5067165 () Bool)

(assert (=> b!5067165 (= e!3162114 (= call!353112 call!353110))))

(declare-fun lt!2089029 () Bool)

(assert (=> b!5067165 (= lt!2089029 (appendAssoc!301 (t!371291 (list!18989 (left!42816 (right!43146 (right!43146 xs!286))))) (list!18989 (right!43146 (right!43146 (right!43146 xs!286)))) (list!18989 ys!41)))))

(assert (= (and d!1633967 c!869899) b!5067166))

(assert (= (and d!1633967 (not c!869899)) b!5067165))

(assert (= (or b!5067166 b!5067165) bm!353108))

(assert (= (or b!5067166 b!5067165) bm!353106))

(assert (= (or b!5067166 b!5067165) bm!353107))

(assert (= (or b!5067166 b!5067165) bm!353105))

(assert (=> bm!353107 m!6108492))

(declare-fun m!6109980 () Bool)

(assert (=> bm!353107 m!6109980))

(assert (=> bm!353108 m!6108492))

(assert (=> bm!353108 m!6108494))

(assert (=> bm!353108 m!6108496))

(assert (=> bm!353106 m!6108494))

(assert (=> bm!353106 m!6107974))

(declare-fun m!6109982 () Bool)

(assert (=> bm!353106 m!6109982))

(assert (=> b!5067165 m!6108494))

(assert (=> b!5067165 m!6107974))

(declare-fun m!6109984 () Bool)

(assert (=> b!5067165 m!6109984))

(assert (=> bm!353105 m!6107974))

(declare-fun m!6109986 () Bool)

(assert (=> bm!353105 m!6109986))

(assert (=> b!5066621 d!1633967))

(assert (=> b!5066621 d!1633903))

(declare-fun d!1633969 () Bool)

(declare-fun c!869900 () Bool)

(assert (=> d!1633969 (= c!869900 ((_ is Empty!15564) (right!43146 (right!43146 (right!43146 xs!286)))))))

(declare-fun e!3162115 () List!58558)

(assert (=> d!1633969 (= (list!18989 (right!43146 (right!43146 (right!43146 xs!286)))) e!3162115)))

(declare-fun b!5067168 () Bool)

(declare-fun e!3162116 () List!58558)

(assert (=> b!5067168 (= e!3162115 e!3162116)))

(declare-fun c!869901 () Bool)

(assert (=> b!5067168 (= c!869901 ((_ is Leaf!25851) (right!43146 (right!43146 (right!43146 xs!286)))))))

(declare-fun b!5067167 () Bool)

(assert (=> b!5067167 (= e!3162115 Nil!58434)))

(declare-fun b!5067170 () Bool)

(assert (=> b!5067170 (= e!3162116 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067169 () Bool)

(assert (=> b!5067169 (= e!3162116 (list!18990 (xs!18914 (right!43146 (right!43146 (right!43146 xs!286))))))))

(assert (= (and d!1633969 c!869900) b!5067167))

(assert (= (and d!1633969 (not c!869900)) b!5067168))

(assert (= (and b!5067168 c!869901) b!5067169))

(assert (= (and b!5067168 (not c!869901)) b!5067170))

(assert (=> b!5067170 m!6108850))

(assert (=> b!5067170 m!6108852))

(assert (=> b!5067170 m!6108850))

(assert (=> b!5067170 m!6108852))

(declare-fun m!6109988 () Bool)

(assert (=> b!5067170 m!6109988))

(declare-fun m!6109990 () Bool)

(assert (=> b!5067169 m!6109990))

(assert (=> b!5066621 d!1633969))

(assert (=> b!5066621 d!1633365))

(declare-fun d!1633971 () Bool)

(declare-fun c!869902 () Bool)

(assert (=> d!1633971 (= c!869902 ((_ is Node!15564) (left!42816 (right!43146 (right!43146 ys!41)))))))

(declare-fun e!3162117 () Bool)

(assert (=> d!1633971 (= (inv!77556 (left!42816 (right!43146 (right!43146 ys!41)))) e!3162117)))

(declare-fun b!5067171 () Bool)

(assert (=> b!5067171 (= e!3162117 (inv!77559 (left!42816 (right!43146 (right!43146 ys!41)))))))

(declare-fun b!5067172 () Bool)

(declare-fun e!3162118 () Bool)

(assert (=> b!5067172 (= e!3162117 e!3162118)))

(declare-fun res!2157475 () Bool)

(assert (=> b!5067172 (= res!2157475 (not ((_ is Leaf!25851) (left!42816 (right!43146 (right!43146 ys!41))))))))

(assert (=> b!5067172 (=> res!2157475 e!3162118)))

(declare-fun b!5067173 () Bool)

(assert (=> b!5067173 (= e!3162118 (inv!77560 (left!42816 (right!43146 (right!43146 ys!41)))))))

(assert (= (and d!1633971 c!869902) b!5067171))

(assert (= (and d!1633971 (not c!869902)) b!5067172))

(assert (= (and b!5067172 (not res!2157475)) b!5067173))

(declare-fun m!6109992 () Bool)

(assert (=> b!5067171 m!6109992))

(declare-fun m!6109994 () Bool)

(assert (=> b!5067173 m!6109994))

(assert (=> b!5066753 d!1633971))

(declare-fun d!1633973 () Bool)

(declare-fun c!869903 () Bool)

(assert (=> d!1633973 (= c!869903 ((_ is Node!15564) (right!43146 (right!43146 (right!43146 ys!41)))))))

(declare-fun e!3162119 () Bool)

(assert (=> d!1633973 (= (inv!77556 (right!43146 (right!43146 (right!43146 ys!41)))) e!3162119)))

(declare-fun b!5067174 () Bool)

(assert (=> b!5067174 (= e!3162119 (inv!77559 (right!43146 (right!43146 (right!43146 ys!41)))))))

(declare-fun b!5067175 () Bool)

(declare-fun e!3162120 () Bool)

(assert (=> b!5067175 (= e!3162119 e!3162120)))

(declare-fun res!2157476 () Bool)

(assert (=> b!5067175 (= res!2157476 (not ((_ is Leaf!25851) (right!43146 (right!43146 (right!43146 ys!41))))))))

(assert (=> b!5067175 (=> res!2157476 e!3162120)))

(declare-fun b!5067176 () Bool)

(assert (=> b!5067176 (= e!3162120 (inv!77560 (right!43146 (right!43146 (right!43146 ys!41)))))))

(assert (= (and d!1633973 c!869903) b!5067174))

(assert (= (and d!1633973 (not c!869903)) b!5067175))

(assert (= (and b!5067175 (not res!2157476)) b!5067176))

(declare-fun m!6109996 () Bool)

(assert (=> b!5067174 m!6109996))

(declare-fun m!6109998 () Bool)

(assert (=> b!5067176 m!6109998))

(assert (=> b!5066753 d!1633973))

(declare-fun bm!353109 () Bool)

(declare-fun call!353116 () List!58558)

(declare-fun call!353117 () List!58558)

(assert (=> bm!353109 (= call!353116 (++!12789 call!353117 (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun bm!353110 () Bool)

(declare-fun call!353115 () List!58558)

(assert (=> bm!353110 (= call!353115 (++!12789 (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun bm!353111 () Bool)

(declare-fun call!353114 () List!58558)

(assert (=> bm!353111 (= call!353114 (++!12789 (t!371291 (list!18989 xs!286)) call!353115))))

(declare-fun b!5067178 () Bool)

(declare-fun e!3162121 () Bool)

(assert (=> b!5067178 (= e!3162121 (= call!353116 call!353114))))

(declare-fun bm!353112 () Bool)

(assert (=> bm!353112 (= call!353117 (++!12789 (t!371291 (list!18989 xs!286)) (list!18989 (left!42816 (left!42816 ys!41)))))))

(declare-fun d!1633975 () Bool)

(assert (=> d!1633975 e!3162121))

(declare-fun c!869904 () Bool)

(assert (=> d!1633975 (= c!869904 ((_ is Nil!58434) (t!371291 (list!18989 xs!286))))))

(assert (=> d!1633975 (= (appendAssoc!301 (t!371291 (list!18989 xs!286)) (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))) true)))

(declare-fun b!5067177 () Bool)

(assert (=> b!5067177 (= e!3162121 (= call!353116 call!353114))))

(declare-fun lt!2089030 () Bool)

(assert (=> b!5067177 (= lt!2089030 (appendAssoc!301 (t!371291 (t!371291 (list!18989 xs!286))) (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(assert (= (and d!1633975 c!869904) b!5067178))

(assert (= (and d!1633975 (not c!869904)) b!5067177))

(assert (= (or b!5067178 b!5067177) bm!353112))

(assert (= (or b!5067178 b!5067177) bm!353110))

(assert (= (or b!5067178 b!5067177) bm!353111))

(assert (= (or b!5067178 b!5067177) bm!353109))

(declare-fun m!6110000 () Bool)

(assert (=> bm!353111 m!6110000))

(assert (=> bm!353112 m!6108104))

(assert (=> bm!353112 m!6109046))

(assert (=> bm!353110 m!6108104))

(assert (=> bm!353110 m!6108106))

(assert (=> bm!353110 m!6108672))

(assert (=> b!5067177 m!6108104))

(assert (=> b!5067177 m!6108106))

(declare-fun m!6110002 () Bool)

(assert (=> b!5067177 m!6110002))

(assert (=> bm!353109 m!6108106))

(declare-fun m!6110004 () Bool)

(assert (=> bm!353109 m!6110004))

(assert (=> b!5066724 d!1633975))

(declare-fun d!1633977 () Bool)

(declare-fun lt!2089031 () Int)

(assert (=> d!1633977 (>= lt!2089031 0)))

(declare-fun e!3162122 () Int)

(assert (=> d!1633977 (= lt!2089031 e!3162122)))

(declare-fun c!869905 () Bool)

(assert (=> d!1633977 (= c!869905 ((_ is Nil!58434) (list!18990 (xs!18914 (left!42816 ys!41)))))))

(assert (=> d!1633977 (= (size!39074 (list!18990 (xs!18914 (left!42816 ys!41)))) lt!2089031)))

(declare-fun b!5067179 () Bool)

(assert (=> b!5067179 (= e!3162122 0)))

(declare-fun b!5067180 () Bool)

(assert (=> b!5067180 (= e!3162122 (+ 1 (size!39074 (t!371291 (list!18990 (xs!18914 (left!42816 ys!41)))))))))

(assert (= (and d!1633977 c!869905) b!5067179))

(assert (= (and d!1633977 (not c!869905)) b!5067180))

(declare-fun m!6110006 () Bool)

(assert (=> b!5067180 m!6110006))

(assert (=> d!1633455 d!1633977))

(declare-fun d!1633979 () Bool)

(assert (=> d!1633979 (= (list!18990 (xs!18914 (left!42816 ys!41))) (innerList!15652 (xs!18914 (left!42816 ys!41))))))

(assert (=> d!1633455 d!1633979))

(declare-fun b!5067181 () Bool)

(declare-fun res!2157479 () Bool)

(declare-fun e!3162124 () Bool)

(assert (=> b!5067181 (=> (not res!2157479) (not e!3162124))))

(assert (=> b!5067181 (= res!2157479 (isBalanced!4426 (left!42816 (left!42816 (left!42816 lt!2088868)))))))

(declare-fun b!5067182 () Bool)

(declare-fun e!3162123 () Bool)

(assert (=> b!5067182 (= e!3162123 e!3162124)))

(declare-fun res!2157482 () Bool)

(assert (=> b!5067182 (=> (not res!2157482) (not e!3162124))))

(assert (=> b!5067182 (= res!2157482 (<= (- 1) (- (height!2141 (left!42816 (left!42816 (left!42816 lt!2088868)))) (height!2141 (right!43146 (left!42816 (left!42816 lt!2088868)))))))))

(declare-fun b!5067183 () Bool)

(declare-fun res!2157477 () Bool)

(assert (=> b!5067183 (=> (not res!2157477) (not e!3162124))))

(assert (=> b!5067183 (= res!2157477 (not (isEmpty!31631 (left!42816 (left!42816 (left!42816 lt!2088868))))))))

(declare-fun b!5067185 () Bool)

(declare-fun res!2157481 () Bool)

(assert (=> b!5067185 (=> (not res!2157481) (not e!3162124))))

(assert (=> b!5067185 (= res!2157481 (<= (- (height!2141 (left!42816 (left!42816 (left!42816 lt!2088868)))) (height!2141 (right!43146 (left!42816 (left!42816 lt!2088868))))) 1))))

(declare-fun b!5067186 () Bool)

(assert (=> b!5067186 (= e!3162124 (not (isEmpty!31631 (right!43146 (left!42816 (left!42816 lt!2088868))))))))

(declare-fun b!5067184 () Bool)

(declare-fun res!2157478 () Bool)

(assert (=> b!5067184 (=> (not res!2157478) (not e!3162124))))

(assert (=> b!5067184 (= res!2157478 (isBalanced!4426 (right!43146 (left!42816 (left!42816 lt!2088868)))))))

(declare-fun d!1633981 () Bool)

(declare-fun res!2157480 () Bool)

(assert (=> d!1633981 (=> res!2157480 e!3162123)))

(assert (=> d!1633981 (= res!2157480 (not ((_ is Node!15564) (left!42816 (left!42816 lt!2088868)))))))

(assert (=> d!1633981 (= (isBalanced!4426 (left!42816 (left!42816 lt!2088868))) e!3162123)))

(assert (= (and d!1633981 (not res!2157480)) b!5067182))

(assert (= (and b!5067182 res!2157482) b!5067185))

(assert (= (and b!5067185 res!2157481) b!5067181))

(assert (= (and b!5067181 res!2157479) b!5067184))

(assert (= (and b!5067184 res!2157478) b!5067183))

(assert (= (and b!5067183 res!2157477) b!5067186))

(declare-fun m!6110008 () Bool)

(assert (=> b!5067183 m!6110008))

(declare-fun m!6110010 () Bool)

(assert (=> b!5067181 m!6110010))

(declare-fun m!6110012 () Bool)

(assert (=> b!5067186 m!6110012))

(declare-fun m!6110014 () Bool)

(assert (=> b!5067185 m!6110014))

(declare-fun m!6110016 () Bool)

(assert (=> b!5067185 m!6110016))

(declare-fun m!6110018 () Bool)

(assert (=> b!5067184 m!6110018))

(assert (=> b!5067182 m!6110014))

(assert (=> b!5067182 m!6110016))

(assert (=> b!5066655 d!1633981))

(declare-fun bm!353113 () Bool)

(declare-fun call!353120 () List!58558)

(declare-fun call!353121 () List!58558)

(assert (=> bm!353113 (= call!353120 (++!12789 call!353121 (list!18989 ys!41)))))

(declare-fun bm!353114 () Bool)

(declare-fun call!353119 () List!58558)

(assert (=> bm!353114 (= call!353119 (++!12789 (list!18989 (right!43146 xs!286)) (list!18989 ys!41)))))

(declare-fun bm!353115 () Bool)

(declare-fun call!353118 () List!58558)

(assert (=> bm!353115 (= call!353118 (++!12789 (t!371291 (list!18989 (left!42816 xs!286))) call!353119))))

(declare-fun b!5067188 () Bool)

(declare-fun e!3162125 () Bool)

(assert (=> b!5067188 (= e!3162125 (= call!353120 call!353118))))

(declare-fun bm!353116 () Bool)

(assert (=> bm!353116 (= call!353121 (++!12789 (t!371291 (list!18989 (left!42816 xs!286))) (list!18989 (right!43146 xs!286))))))

(declare-fun d!1633983 () Bool)

(assert (=> d!1633983 e!3162125))

(declare-fun c!869906 () Bool)

(assert (=> d!1633983 (= c!869906 ((_ is Nil!58434) (t!371291 (list!18989 (left!42816 xs!286)))))))

(assert (=> d!1633983 (= (appendAssoc!301 (t!371291 (list!18989 (left!42816 xs!286))) (list!18989 (right!43146 xs!286)) (list!18989 ys!41)) true)))

(declare-fun b!5067187 () Bool)

(assert (=> b!5067187 (= e!3162125 (= call!353120 call!353118))))

(declare-fun lt!2089032 () Bool)

(assert (=> b!5067187 (= lt!2089032 (appendAssoc!301 (t!371291 (t!371291 (list!18989 (left!42816 xs!286)))) (list!18989 (right!43146 xs!286)) (list!18989 ys!41)))))

(assert (= (and d!1633983 c!869906) b!5067188))

(assert (= (and d!1633983 (not c!869906)) b!5067187))

(assert (= (or b!5067188 b!5067187) bm!353116))

(assert (= (or b!5067188 b!5067187) bm!353114))

(assert (= (or b!5067188 b!5067187) bm!353115))

(assert (= (or b!5067188 b!5067187) bm!353113))

(declare-fun m!6110020 () Bool)

(assert (=> bm!353115 m!6110020))

(assert (=> bm!353116 m!6108116))

(assert (=> bm!353116 m!6108466))

(assert (=> bm!353114 m!6108116))

(assert (=> bm!353114 m!6107974))

(assert (=> bm!353114 m!6108436))

(assert (=> b!5067187 m!6108116))

(assert (=> b!5067187 m!6107974))

(declare-fun m!6110022 () Bool)

(assert (=> b!5067187 m!6110022))

(assert (=> bm!353113 m!6107974))

(declare-fun m!6110024 () Bool)

(assert (=> bm!353113 m!6110024))

(assert (=> b!5066396 d!1633983))

(declare-fun d!1633985 () Bool)

(declare-fun lt!2089033 () Bool)

(assert (=> d!1633985 (= lt!2089033 (isEmpty!31632 (list!18989 (left!42816 lt!2088908))))))

(assert (=> d!1633985 (= lt!2089033 (= (size!39075 (left!42816 lt!2088908)) 0))))

(assert (=> d!1633985 (= (isEmpty!31631 (left!42816 lt!2088908)) lt!2089033)))

(declare-fun bs!1189933 () Bool)

(assert (= bs!1189933 d!1633985))

(assert (=> bs!1189933 m!6108474))

(assert (=> bs!1189933 m!6108474))

(declare-fun m!6110026 () Bool)

(assert (=> bs!1189933 m!6110026))

(declare-fun m!6110028 () Bool)

(assert (=> bs!1189933 m!6110028))

(assert (=> b!5066495 d!1633985))

(assert (=> b!5066460 d!1633977))

(assert (=> b!5066460 d!1633979))

(declare-fun d!1633987 () Bool)

(declare-fun lt!2089034 () Int)

(assert (=> d!1633987 (>= lt!2089034 0)))

(declare-fun e!3162126 () Int)

(assert (=> d!1633987 (= lt!2089034 e!3162126)))

(declare-fun c!869907 () Bool)

(assert (=> d!1633987 (= c!869907 ((_ is Nil!58434) lt!2088961))))

(assert (=> d!1633987 (= (size!39074 lt!2088961) lt!2089034)))

(declare-fun b!5067189 () Bool)

(assert (=> b!5067189 (= e!3162126 0)))

(declare-fun b!5067190 () Bool)

(assert (=> b!5067190 (= e!3162126 (+ 1 (size!39074 (t!371291 lt!2088961))))))

(assert (= (and d!1633987 c!869907) b!5067189))

(assert (= (and d!1633987 (not c!869907)) b!5067190))

(declare-fun m!6110030 () Bool)

(assert (=> b!5067190 m!6110030))

(assert (=> b!5066694 d!1633987))

(declare-fun d!1633989 () Bool)

(declare-fun lt!2089035 () Int)

(assert (=> d!1633989 (>= lt!2089035 0)))

(declare-fun e!3162127 () Int)

(assert (=> d!1633989 (= lt!2089035 e!3162127)))

(declare-fun c!869908 () Bool)

(assert (=> d!1633989 (= c!869908 ((_ is Nil!58434) (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(assert (=> d!1633989 (= (size!39074 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) lt!2089035)))

(declare-fun b!5067191 () Bool)

(assert (=> b!5067191 (= e!3162127 0)))

(declare-fun b!5067192 () Bool)

(assert (=> b!5067192 (= e!3162127 (+ 1 (size!39074 (t!371291 (list!18989 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))))

(assert (= (and d!1633989 c!869908) b!5067191))

(assert (= (and d!1633989 (not c!869908)) b!5067192))

(assert (=> b!5067192 m!6109888))

(assert (=> b!5066694 d!1633989))

(declare-fun d!1633991 () Bool)

(declare-fun lt!2089036 () Int)

(assert (=> d!1633991 (>= lt!2089036 0)))

(declare-fun e!3162128 () Int)

(assert (=> d!1633991 (= lt!2089036 e!3162128)))

(declare-fun c!869909 () Bool)

(assert (=> d!1633991 (= c!869909 ((_ is Nil!58434) (list!18989 lt!2088865)))))

(assert (=> d!1633991 (= (size!39074 (list!18989 lt!2088865)) lt!2089036)))

(declare-fun b!5067193 () Bool)

(assert (=> b!5067193 (= e!3162128 0)))

(declare-fun b!5067194 () Bool)

(assert (=> b!5067194 (= e!3162128 (+ 1 (size!39074 (t!371291 (list!18989 lt!2088865)))))))

(assert (= (and d!1633991 c!869909) b!5067193))

(assert (= (and d!1633991 (not c!869909)) b!5067194))

(declare-fun m!6110032 () Bool)

(assert (=> b!5067194 m!6110032))

(assert (=> b!5066694 d!1633991))

(assert (=> bm!353014 d!1633647))

(declare-fun d!1633993 () Bool)

(assert (=> d!1633993 (= (list!18990 (xs!18914 lt!2088875)) (innerList!15652 (xs!18914 lt!2088875)))))

(assert (=> b!5066565 d!1633993))

(declare-fun d!1633995 () Bool)

(assert (=> d!1633995 (= (height!2141 (ite c!869767 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))) (ite ((_ is Empty!15564) (ite c!869767 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))) 0 (ite ((_ is Leaf!25851) (ite c!869767 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))) 1 (cheight!15775 (ite c!869767 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))

(assert (=> bm!353043 d!1633995))

(assert (=> b!5066613 d!1633437))

(declare-fun b!5067197 () Bool)

(declare-fun res!2157484 () Bool)

(declare-fun e!3162129 () Bool)

(assert (=> b!5067197 (=> (not res!2157484) (not e!3162129))))

(declare-fun lt!2089037 () List!58558)

(assert (=> b!5067197 (= res!2157484 (= (size!39074 lt!2089037) (+ (size!39074 (list!18989 (right!43146 (right!43146 xs!286)))) (size!39074 (list!18989 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067198 () Bool)

(assert (=> b!5067198 (= e!3162129 (or (not (= (list!18989 (left!42816 (left!42816 ys!41))) Nil!58434)) (= lt!2089037 (list!18989 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5067196 () Bool)

(declare-fun e!3162130 () List!58558)

(assert (=> b!5067196 (= e!3162130 (Cons!58434 (h!64882 (list!18989 (right!43146 (right!43146 xs!286)))) (++!12789 (t!371291 (list!18989 (right!43146 (right!43146 xs!286)))) (list!18989 (left!42816 (left!42816 ys!41))))))))

(declare-fun b!5067195 () Bool)

(assert (=> b!5067195 (= e!3162130 (list!18989 (left!42816 (left!42816 ys!41))))))

(declare-fun d!1633997 () Bool)

(assert (=> d!1633997 e!3162129))

(declare-fun res!2157483 () Bool)

(assert (=> d!1633997 (=> (not res!2157483) (not e!3162129))))

(assert (=> d!1633997 (= res!2157483 (= (content!10417 lt!2089037) ((_ map or) (content!10417 (list!18989 (right!43146 (right!43146 xs!286)))) (content!10417 (list!18989 (left!42816 (left!42816 ys!41)))))))))

(assert (=> d!1633997 (= lt!2089037 e!3162130)))

(declare-fun c!869910 () Bool)

(assert (=> d!1633997 (= c!869910 ((_ is Nil!58434) (list!18989 (right!43146 (right!43146 xs!286)))))))

(assert (=> d!1633997 (= (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 (left!42816 ys!41)))) lt!2089037)))

(assert (= (and d!1633997 c!869910) b!5067195))

(assert (= (and d!1633997 (not c!869910)) b!5067196))

(assert (= (and d!1633997 res!2157483) b!5067197))

(assert (= (and b!5067197 res!2157484) b!5067198))

(declare-fun m!6110034 () Bool)

(assert (=> b!5067197 m!6110034))

(assert (=> b!5067197 m!6108094))

(assert (=> b!5067197 m!6108484))

(assert (=> b!5067197 m!6108104))

(assert (=> b!5067197 m!6109044))

(assert (=> b!5067196 m!6108104))

(declare-fun m!6110036 () Bool)

(assert (=> b!5067196 m!6110036))

(declare-fun m!6110038 () Bool)

(assert (=> d!1633997 m!6110038))

(assert (=> d!1633997 m!6108094))

(assert (=> d!1633997 m!6108490))

(assert (=> d!1633997 m!6108104))

(assert (=> d!1633997 m!6109050))

(assert (=> b!5066613 d!1633997))

(assert (=> b!5066613 d!1633503))

(assert (=> b!5066613 d!1633627))

(assert (=> b!5066613 d!1633637))

(declare-fun bm!353117 () Bool)

(declare-fun call!353124 () List!58558)

(declare-fun call!353125 () List!58558)

(assert (=> bm!353117 (= call!353124 (++!12789 call!353125 (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353118 () Bool)

(declare-fun call!353123 () List!58558)

(assert (=> bm!353118 (= call!353123 (++!12789 (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353119 () Bool)

(declare-fun call!353122 () List!58558)

(assert (=> bm!353119 (= call!353122 (++!12789 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 (left!42816 ys!41)))) call!353123))))

(declare-fun b!5067200 () Bool)

(declare-fun e!3162131 () Bool)

(assert (=> b!5067200 (= e!3162131 (= call!353124 call!353122))))

(declare-fun bm!353120 () Bool)

(assert (=> bm!353120 (= call!353125 (++!12789 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 (left!42816 ys!41)))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun d!1633999 () Bool)

(assert (=> d!1633999 e!3162131))

(declare-fun c!869911 () Bool)

(assert (=> d!1633999 (= c!869911 ((_ is Nil!58434) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 (left!42816 ys!41))))))))

(assert (=> d!1633999 (= (appendAssoc!301 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 (left!42816 ys!41)))) (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))) true)))

(declare-fun b!5067199 () Bool)

(assert (=> b!5067199 (= e!3162131 (= call!353124 call!353122))))

(declare-fun lt!2089038 () Bool)

(assert (=> b!5067199 (= lt!2089038 (appendAssoc!301 (t!371291 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 (left!42816 ys!41))))) (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))))))

(assert (= (and d!1633999 c!869911) b!5067200))

(assert (= (and d!1633999 (not c!869911)) b!5067199))

(assert (= (or b!5067200 b!5067199) bm!353120))

(assert (= (or b!5067200 b!5067199) bm!353118))

(assert (= (or b!5067200 b!5067199) bm!353119))

(assert (= (or b!5067200 b!5067199) bm!353117))

(assert (=> bm!353119 m!6108870))

(declare-fun m!6110040 () Bool)

(assert (=> bm!353119 m!6110040))

(assert (=> bm!353120 m!6108870))

(assert (=> bm!353120 m!6108106))

(declare-fun m!6110042 () Bool)

(assert (=> bm!353120 m!6110042))

(assert (=> bm!353118 m!6108106))

(assert (=> bm!353118 m!6108100))

(assert (=> bm!353118 m!6109036))

(assert (=> b!5067199 m!6108106))

(assert (=> b!5067199 m!6108100))

(declare-fun m!6110044 () Bool)

(assert (=> b!5067199 m!6110044))

(assert (=> bm!353117 m!6108100))

(declare-fun m!6110046 () Bool)

(assert (=> bm!353117 m!6110046))

(assert (=> b!5066613 d!1633999))

(declare-fun d!1634001 () Bool)

(declare-fun lt!2089039 () Int)

(assert (=> d!1634001 (>= lt!2089039 0)))

(declare-fun e!3162132 () Int)

(assert (=> d!1634001 (= lt!2089039 e!3162132)))

(declare-fun c!869912 () Bool)

(assert (=> d!1634001 (= c!869912 ((_ is Nil!58434) (list!18989 (left!42816 xs!286))))))

(assert (=> d!1634001 (= (size!39074 (list!18989 (left!42816 xs!286))) lt!2089039)))

(declare-fun b!5067201 () Bool)

(assert (=> b!5067201 (= e!3162132 0)))

(declare-fun b!5067202 () Bool)

(assert (=> b!5067202 (= e!3162132 (+ 1 (size!39074 (t!371291 (list!18989 (left!42816 xs!286))))))))

(assert (= (and d!1634001 c!869912) b!5067201))

(assert (= (and d!1634001 (not c!869912)) b!5067202))

(declare-fun m!6110048 () Bool)

(assert (=> b!5067202 m!6110048))

(assert (=> d!1633463 d!1634001))

(assert (=> d!1633463 d!1633417))

(assert (=> b!5066373 d!1633513))

(assert (=> b!5066373 d!1633517))

(declare-fun d!1634003 () Bool)

(declare-fun c!869913 () Bool)

(assert (=> d!1634003 (= c!869913 ((_ is Empty!15564) lt!2088941))))

(declare-fun e!3162133 () List!58558)

(assert (=> d!1634003 (= (list!18989 lt!2088941) e!3162133)))

(declare-fun b!5067204 () Bool)

(declare-fun e!3162134 () List!58558)

(assert (=> b!5067204 (= e!3162133 e!3162134)))

(declare-fun c!869914 () Bool)

(assert (=> b!5067204 (= c!869914 ((_ is Leaf!25851) lt!2088941))))

(declare-fun b!5067203 () Bool)

(assert (=> b!5067203 (= e!3162133 Nil!58434)))

(declare-fun b!5067206 () Bool)

(assert (=> b!5067206 (= e!3162134 (++!12789 (list!18989 (left!42816 lt!2088941)) (list!18989 (right!43146 lt!2088941))))))

(declare-fun b!5067205 () Bool)

(assert (=> b!5067205 (= e!3162134 (list!18990 (xs!18914 lt!2088941)))))

(assert (= (and d!1634003 c!869913) b!5067203))

(assert (= (and d!1634003 (not c!869913)) b!5067204))

(assert (= (and b!5067204 c!869914) b!5067205))

(assert (= (and b!5067204 (not c!869914)) b!5067206))

(declare-fun m!6110050 () Bool)

(assert (=> b!5067206 m!6110050))

(declare-fun m!6110052 () Bool)

(assert (=> b!5067206 m!6110052))

(assert (=> b!5067206 m!6110050))

(assert (=> b!5067206 m!6110052))

(declare-fun m!6110054 () Bool)

(assert (=> b!5067206 m!6110054))

(declare-fun m!6110056 () Bool)

(assert (=> b!5067205 m!6110056))

(assert (=> d!1633577 d!1634003))

(declare-fun b!5067209 () Bool)

(declare-fun res!2157486 () Bool)

(declare-fun e!3162135 () Bool)

(assert (=> b!5067209 (=> (not res!2157486) (not e!3162135))))

(declare-fun lt!2089040 () List!58558)

(assert (=> b!5067209 (= res!2157486 (= (size!39074 lt!2089040) (+ (size!39074 (list!18989 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))))) (size!39074 (list!18989 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))))))))

(declare-fun b!5067210 () Bool)

(assert (=> b!5067210 (= e!3162135 (or (not (= (list!18989 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) Nil!58434)) (= lt!2089040 (list!18989 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))))))))

(declare-fun b!5067208 () Bool)

(declare-fun e!3162136 () List!58558)

(assert (=> b!5067208 (= e!3162136 (Cons!58434 (h!64882 (list!18989 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))))) (++!12789 (t!371291 (list!18989 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))))) (list!18989 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))))))))

(declare-fun b!5067207 () Bool)

(assert (=> b!5067207 (= e!3162136 (list!18989 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))))))

(declare-fun d!1634005 () Bool)

(assert (=> d!1634005 e!3162135))

(declare-fun res!2157485 () Bool)

(assert (=> d!1634005 (=> (not res!2157485) (not e!3162135))))

(assert (=> d!1634005 (= res!2157485 (= (content!10417 lt!2089040) ((_ map or) (content!10417 (list!18989 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))))) (content!10417 (list!18989 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))))))))

(assert (=> d!1634005 (= lt!2089040 e!3162136)))

(declare-fun c!869915 () Bool)

(assert (=> d!1634005 (= c!869915 ((_ is Nil!58434) (list!18989 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))))))))

(assert (=> d!1634005 (= (++!12789 (list!18989 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) (list!18989 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))) lt!2089040)))

(assert (= (and d!1634005 c!869915) b!5067207))

(assert (= (and d!1634005 (not c!869915)) b!5067208))

(assert (= (and d!1634005 res!2157485) b!5067209))

(assert (= (and b!5067209 res!2157486) b!5067210))

(declare-fun m!6110058 () Bool)

(assert (=> b!5067209 m!6110058))

(assert (=> b!5067209 m!6108808))

(declare-fun m!6110060 () Bool)

(assert (=> b!5067209 m!6110060))

(assert (=> b!5067209 m!6108810))

(declare-fun m!6110062 () Bool)

(assert (=> b!5067209 m!6110062))

(assert (=> b!5067208 m!6108810))

(declare-fun m!6110064 () Bool)

(assert (=> b!5067208 m!6110064))

(declare-fun m!6110066 () Bool)

(assert (=> d!1634005 m!6110066))

(assert (=> d!1634005 m!6108808))

(declare-fun m!6110068 () Bool)

(assert (=> d!1634005 m!6110068))

(assert (=> d!1634005 m!6108810))

(declare-fun m!6110070 () Bool)

(assert (=> d!1634005 m!6110070))

(assert (=> d!1633577 d!1634005))

(declare-fun c!869916 () Bool)

(declare-fun d!1634007 () Bool)

(assert (=> d!1634007 (= c!869916 ((_ is Empty!15564) (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))))))

(declare-fun e!3162137 () List!58558)

(assert (=> d!1634007 (= (list!18989 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) e!3162137)))

(declare-fun b!5067212 () Bool)

(declare-fun e!3162138 () List!58558)

(assert (=> b!5067212 (= e!3162137 e!3162138)))

(declare-fun c!869917 () Bool)

(assert (=> b!5067212 (= c!869917 ((_ is Leaf!25851) (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))))))

(declare-fun b!5067211 () Bool)

(assert (=> b!5067211 (= e!3162137 Nil!58434)))

(declare-fun b!5067214 () Bool)

(assert (=> b!5067214 (= e!3162138 (++!12789 (list!18989 (left!42816 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))))) (list!18989 (right!43146 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))))))))

(declare-fun b!5067213 () Bool)

(assert (=> b!5067213 (= e!3162138 (list!18990 (xs!18914 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))))))))

(assert (= (and d!1634007 c!869916) b!5067211))

(assert (= (and d!1634007 (not c!869916)) b!5067212))

(assert (= (and b!5067212 c!869917) b!5067213))

(assert (= (and b!5067212 (not c!869917)) b!5067214))

(declare-fun m!6110072 () Bool)

(assert (=> b!5067214 m!6110072))

(declare-fun m!6110074 () Bool)

(assert (=> b!5067214 m!6110074))

(assert (=> b!5067214 m!6110072))

(assert (=> b!5067214 m!6110074))

(declare-fun m!6110076 () Bool)

(assert (=> b!5067214 m!6110076))

(declare-fun m!6110078 () Bool)

(assert (=> b!5067213 m!6110078))

(assert (=> d!1633577 d!1634007))

(declare-fun c!869918 () Bool)

(declare-fun d!1634009 () Bool)

(assert (=> d!1634009 (= c!869918 ((_ is Empty!15564) (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))))))

(declare-fun e!3162139 () List!58558)

(assert (=> d!1634009 (= (list!18989 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) e!3162139)))

(declare-fun b!5067216 () Bool)

(declare-fun e!3162140 () List!58558)

(assert (=> b!5067216 (= e!3162139 e!3162140)))

(declare-fun c!869919 () Bool)

(assert (=> b!5067216 (= c!869919 ((_ is Leaf!25851) (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))))))

(declare-fun b!5067215 () Bool)

(assert (=> b!5067215 (= e!3162139 Nil!58434)))

(declare-fun b!5067218 () Bool)

(assert (=> b!5067218 (= e!3162140 (++!12789 (list!18989 (left!42816 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))) (list!18989 (right!43146 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))))))))

(declare-fun b!5067217 () Bool)

(assert (=> b!5067217 (= e!3162140 (list!18990 (xs!18914 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))))))

(assert (= (and d!1634009 c!869918) b!5067215))

(assert (= (and d!1634009 (not c!869918)) b!5067216))

(assert (= (and b!5067216 c!869919) b!5067217))

(assert (= (and b!5067216 (not c!869919)) b!5067218))

(declare-fun m!6110080 () Bool)

(assert (=> b!5067218 m!6110080))

(declare-fun m!6110082 () Bool)

(assert (=> b!5067218 m!6110082))

(assert (=> b!5067218 m!6110080))

(assert (=> b!5067218 m!6110082))

(declare-fun m!6110084 () Bool)

(assert (=> b!5067218 m!6110084))

(declare-fun m!6110086 () Bool)

(assert (=> b!5067217 m!6110086))

(assert (=> d!1633577 d!1634009))

(declare-fun d!1634011 () Bool)

(declare-fun c!869920 () Bool)

(assert (=> d!1634011 (= c!869920 ((_ is Nil!58434) (t!371291 (list!18989 xs!286))))))

(declare-fun e!3162141 () (InoxSet T!105118))

(assert (=> d!1634011 (= (content!10417 (t!371291 (list!18989 xs!286))) e!3162141)))

(declare-fun b!5067219 () Bool)

(assert (=> b!5067219 (= e!3162141 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067220 () Bool)

(assert (=> b!5067220 (= e!3162141 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (t!371291 (list!18989 xs!286))) true) (content!10417 (t!371291 (t!371291 (list!18989 xs!286))))))))

(assert (= (and d!1634011 c!869920) b!5067219))

(assert (= (and d!1634011 (not c!869920)) b!5067220))

(declare-fun m!6110088 () Bool)

(assert (=> b!5067220 m!6110088))

(declare-fun m!6110090 () Bool)

(assert (=> b!5067220 m!6110090))

(assert (=> b!5066453 d!1634011))

(declare-fun d!1634013 () Bool)

(declare-fun lt!2089041 () Int)

(assert (=> d!1634013 (>= lt!2089041 0)))

(declare-fun e!3162142 () Int)

(assert (=> d!1634013 (= lt!2089041 e!3162142)))

(declare-fun c!869921 () Bool)

(assert (=> d!1634013 (= c!869921 ((_ is Nil!58434) (t!371291 lt!2088886)))))

(assert (=> d!1634013 (= (size!39074 (t!371291 lt!2088886)) lt!2089041)))

(declare-fun b!5067221 () Bool)

(assert (=> b!5067221 (= e!3162142 0)))

(declare-fun b!5067222 () Bool)

(assert (=> b!5067222 (= e!3162142 (+ 1 (size!39074 (t!371291 (t!371291 lt!2088886)))))))

(assert (= (and d!1634013 c!869921) b!5067221))

(assert (= (and d!1634013 (not c!869921)) b!5067222))

(declare-fun m!6110092 () Bool)

(assert (=> b!5067222 m!6110092))

(assert (=> b!5066599 d!1634013))

(declare-fun d!1634015 () Bool)

(declare-fun lt!2089042 () Int)

(assert (=> d!1634015 (>= lt!2089042 0)))

(declare-fun e!3162143 () Int)

(assert (=> d!1634015 (= lt!2089042 e!3162143)))

(declare-fun c!869922 () Bool)

(assert (=> d!1634015 (= c!869922 ((_ is Nil!58434) lt!2088968))))

(assert (=> d!1634015 (= (size!39074 lt!2088968) lt!2089042)))

(declare-fun b!5067223 () Bool)

(assert (=> b!5067223 (= e!3162143 0)))

(declare-fun b!5067224 () Bool)

(assert (=> b!5067224 (= e!3162143 (+ 1 (size!39074 (t!371291 lt!2088968))))))

(assert (= (and d!1634015 c!869922) b!5067223))

(assert (= (and d!1634015 (not c!869922)) b!5067224))

(declare-fun m!6110094 () Bool)

(assert (=> b!5067224 m!6110094))

(assert (=> b!5066728 d!1634015))

(declare-fun d!1634017 () Bool)

(declare-fun lt!2089043 () Int)

(assert (=> d!1634017 (>= lt!2089043 0)))

(declare-fun e!3162144 () Int)

(assert (=> d!1634017 (= lt!2089043 e!3162144)))

(declare-fun c!869923 () Bool)

(assert (=> d!1634017 (= c!869923 ((_ is Nil!58434) (list!18989 (left!42816 ys!41))))))

(assert (=> d!1634017 (= (size!39074 (list!18989 (left!42816 ys!41))) lt!2089043)))

(declare-fun b!5067225 () Bool)

(assert (=> b!5067225 (= e!3162144 0)))

(declare-fun b!5067226 () Bool)

(assert (=> b!5067226 (= e!3162144 (+ 1 (size!39074 (t!371291 (list!18989 (left!42816 ys!41))))))))

(assert (= (and d!1634017 c!869923) b!5067225))

(assert (= (and d!1634017 (not c!869923)) b!5067226))

(assert (=> b!5067226 m!6109970))

(assert (=> b!5066728 d!1634017))

(declare-fun d!1634019 () Bool)

(declare-fun lt!2089044 () Int)

(assert (=> d!1634019 (>= lt!2089044 0)))

(declare-fun e!3162145 () Int)

(assert (=> d!1634019 (= lt!2089044 e!3162145)))

(declare-fun c!869924 () Bool)

(assert (=> d!1634019 (= c!869924 ((_ is Nil!58434) (list!18989 (right!43146 ys!41))))))

(assert (=> d!1634019 (= (size!39074 (list!18989 (right!43146 ys!41))) lt!2089044)))

(declare-fun b!5067227 () Bool)

(assert (=> b!5067227 (= e!3162145 0)))

(declare-fun b!5067228 () Bool)

(assert (=> b!5067228 (= e!3162145 (+ 1 (size!39074 (t!371291 (list!18989 (right!43146 ys!41))))))))

(assert (= (and d!1634019 c!869924) b!5067227))

(assert (= (and d!1634019 (not c!869924)) b!5067228))

(declare-fun m!6110096 () Bool)

(assert (=> b!5067228 m!6110096))

(assert (=> b!5066728 d!1634019))

(declare-fun d!1634021 () Bool)

(assert (=> d!1634021 (= (inv!77555 (xs!18914 (right!43146 (right!43146 ys!41)))) (<= (size!39074 (innerList!15652 (xs!18914 (right!43146 (right!43146 ys!41))))) 2147483647))))

(declare-fun bs!1189934 () Bool)

(assert (= bs!1189934 d!1634021))

(declare-fun m!6110098 () Bool)

(assert (=> bs!1189934 m!6110098))

(assert (=> b!5066754 d!1634021))

(declare-fun d!1634023 () Bool)

(assert (=> d!1634023 (= (isEmpty!31632 (list!18989 (right!43146 xs!286))) ((_ is Nil!58434) (list!18989 (right!43146 xs!286))))))

(assert (=> d!1633477 d!1634023))

(assert (=> d!1633477 d!1633419))

(declare-fun d!1634025 () Bool)

(declare-fun lt!2089045 () Int)

(assert (=> d!1634025 (= lt!2089045 (size!39074 (list!18989 (right!43146 xs!286))))))

(assert (=> d!1634025 (= lt!2089045 (ite ((_ is Empty!15564) (right!43146 xs!286)) 0 (ite ((_ is Leaf!25851) (right!43146 xs!286)) (csize!31359 (right!43146 xs!286)) (csize!31358 (right!43146 xs!286)))))))

(assert (=> d!1634025 (= (size!39075 (right!43146 xs!286)) lt!2089045)))

(declare-fun bs!1189935 () Bool)

(assert (= bs!1189935 d!1634025))

(assert (=> bs!1189935 m!6108116))

(assert (=> bs!1189935 m!6108116))

(assert (=> bs!1189935 m!6108464))

(assert (=> d!1633477 d!1634025))

(declare-fun b!5067231 () Bool)

(declare-fun res!2157488 () Bool)

(declare-fun e!3162146 () Bool)

(assert (=> b!5067231 (=> (not res!2157488) (not e!3162146))))

(declare-fun lt!2089046 () List!58558)

(assert (=> b!5067231 (= res!2157488 (= (size!39074 lt!2089046) (+ (size!39074 call!353029) (size!39074 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))))

(declare-fun b!5067232 () Bool)

(assert (=> b!5067232 (= e!3162146 (or (not (= (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)) Nil!58434)) (= lt!2089046 call!353029)))))

(declare-fun e!3162147 () List!58558)

(declare-fun b!5067230 () Bool)

(assert (=> b!5067230 (= e!3162147 (Cons!58434 (h!64882 call!353029) (++!12789 (t!371291 call!353029) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)))))))

(declare-fun b!5067229 () Bool)

(assert (=> b!5067229 (= e!3162147 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)))))

(declare-fun d!1634027 () Bool)

(assert (=> d!1634027 e!3162146))

(declare-fun res!2157487 () Bool)

(assert (=> d!1634027 (=> (not res!2157487) (not e!3162146))))

(assert (=> d!1634027 (= res!2157487 (= (content!10417 lt!2089046) ((_ map or) (content!10417 call!353029) (content!10417 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))))

(assert (=> d!1634027 (= lt!2089046 e!3162147)))

(declare-fun c!869925 () Bool)

(assert (=> d!1634027 (= c!869925 ((_ is Nil!58434) call!353029))))

(assert (=> d!1634027 (= (++!12789 call!353029 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))) lt!2089046)))

(assert (= (and d!1634027 c!869925) b!5067229))

(assert (= (and d!1634027 (not c!869925)) b!5067230))

(assert (= (and d!1634027 res!2157487) b!5067231))

(assert (= (and b!5067231 res!2157488) b!5067232))

(declare-fun m!6110100 () Bool)

(assert (=> b!5067231 m!6110100))

(declare-fun m!6110102 () Bool)

(assert (=> b!5067231 m!6110102))

(assert (=> b!5067231 m!6108110))

(declare-fun m!6110104 () Bool)

(assert (=> b!5067231 m!6110104))

(assert (=> b!5067230 m!6108110))

(declare-fun m!6110106 () Bool)

(assert (=> b!5067230 m!6110106))

(declare-fun m!6110108 () Bool)

(assert (=> d!1634027 m!6110108))

(declare-fun m!6110110 () Bool)

(assert (=> d!1634027 m!6110110))

(assert (=> d!1634027 m!6108110))

(declare-fun m!6110112 () Bool)

(assert (=> d!1634027 m!6110112))

(assert (=> bm!353021 d!1634027))

(declare-fun d!1634029 () Bool)

(declare-fun c!869926 () Bool)

(assert (=> d!1634029 (= c!869926 ((_ is Empty!15564) lt!2088958))))

(declare-fun e!3162148 () List!58558)

(assert (=> d!1634029 (= (list!18989 lt!2088958) e!3162148)))

(declare-fun b!5067234 () Bool)

(declare-fun e!3162149 () List!58558)

(assert (=> b!5067234 (= e!3162148 e!3162149)))

(declare-fun c!869927 () Bool)

(assert (=> b!5067234 (= c!869927 ((_ is Leaf!25851) lt!2088958))))

(declare-fun b!5067233 () Bool)

(assert (=> b!5067233 (= e!3162148 Nil!58434)))

(declare-fun b!5067236 () Bool)

(assert (=> b!5067236 (= e!3162149 (++!12789 (list!18989 (left!42816 lt!2088958)) (list!18989 (right!43146 lt!2088958))))))

(declare-fun b!5067235 () Bool)

(assert (=> b!5067235 (= e!3162149 (list!18990 (xs!18914 lt!2088958)))))

(assert (= (and d!1634029 c!869926) b!5067233))

(assert (= (and d!1634029 (not c!869926)) b!5067234))

(assert (= (and b!5067234 c!869927) b!5067235))

(assert (= (and b!5067234 (not c!869927)) b!5067236))

(declare-fun m!6110114 () Bool)

(assert (=> b!5067236 m!6110114))

(declare-fun m!6110116 () Bool)

(assert (=> b!5067236 m!6110116))

(assert (=> b!5067236 m!6110114))

(assert (=> b!5067236 m!6110116))

(declare-fun m!6110118 () Bool)

(assert (=> b!5067236 m!6110118))

(declare-fun m!6110120 () Bool)

(assert (=> b!5067235 m!6110120))

(assert (=> b!5066674 d!1634029))

(declare-fun b!5067239 () Bool)

(declare-fun res!2157490 () Bool)

(declare-fun e!3162150 () Bool)

(assert (=> b!5067239 (=> (not res!2157490) (not e!3162150))))

(declare-fun lt!2089047 () List!58558)

(assert (=> b!5067239 (= res!2157490 (= (size!39074 lt!2089047) (+ (size!39074 (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (size!39074 (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))))

(declare-fun b!5067240 () Bool)

(assert (=> b!5067240 (= e!3162150 (or (not (= (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) Nil!58434)) (= lt!2089047 (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067238 () Bool)

(declare-fun e!3162151 () List!58558)

(assert (=> b!5067238 (= e!3162151 (Cons!58434 (h!64882 (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (++!12789 (t!371291 (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun b!5067237 () Bool)

(assert (=> b!5067237 (= e!3162151 (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))

(declare-fun d!1634031 () Bool)

(assert (=> d!1634031 e!3162150))

(declare-fun res!2157489 () Bool)

(assert (=> d!1634031 (=> (not res!2157489) (not e!3162150))))

(assert (=> d!1634031 (= res!2157489 (= (content!10417 lt!2089047) ((_ map or) (content!10417 (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (content!10417 (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))))

(assert (=> d!1634031 (= lt!2089047 e!3162151)))

(declare-fun c!869928 () Bool)

(assert (=> d!1634031 (= c!869928 ((_ is Nil!58434) (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1634031 (= (++!12789 (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) lt!2089047)))

(assert (= (and d!1634031 c!869928) b!5067237))

(assert (= (and d!1634031 (not c!869928)) b!5067238))

(assert (= (and d!1634031 res!2157489) b!5067239))

(assert (= (and b!5067239 res!2157490) b!5067240))

(declare-fun m!6110122 () Bool)

(assert (=> b!5067239 m!6110122))

(assert (=> b!5067239 m!6108936))

(declare-fun m!6110124 () Bool)

(assert (=> b!5067239 m!6110124))

(assert (=> b!5067239 m!6108938))

(declare-fun m!6110126 () Bool)

(assert (=> b!5067239 m!6110126))

(assert (=> b!5067238 m!6108938))

(declare-fun m!6110128 () Bool)

(assert (=> b!5067238 m!6110128))

(declare-fun m!6110130 () Bool)

(assert (=> d!1634031 m!6110130))

(assert (=> d!1634031 m!6108936))

(declare-fun m!6110132 () Bool)

(assert (=> d!1634031 m!6110132))

(assert (=> d!1634031 m!6108938))

(declare-fun m!6110134 () Bool)

(assert (=> d!1634031 m!6110134))

(assert (=> b!5066674 d!1634031))

(declare-fun c!869929 () Bool)

(declare-fun d!1634033 () Bool)

(assert (=> d!1634033 (= c!869929 ((_ is Empty!15564) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))

(declare-fun e!3162152 () List!58558)

(assert (=> d!1634033 (= (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) e!3162152)))

(declare-fun b!5067242 () Bool)

(declare-fun e!3162153 () List!58558)

(assert (=> b!5067242 (= e!3162152 e!3162153)))

(declare-fun c!869930 () Bool)

(assert (=> b!5067242 (= c!869930 ((_ is Leaf!25851) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))

(declare-fun b!5067241 () Bool)

(assert (=> b!5067241 (= e!3162152 Nil!58434)))

(declare-fun b!5067244 () Bool)

(assert (=> b!5067244 (= e!3162153 (++!12789 (list!18989 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (list!18989 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067243 () Bool)

(assert (=> b!5067243 (= e!3162153 (list!18990 (xs!18914 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))))

(assert (= (and d!1634033 c!869929) b!5067241))

(assert (= (and d!1634033 (not c!869929)) b!5067242))

(assert (= (and b!5067242 c!869930) b!5067243))

(assert (= (and b!5067242 (not c!869930)) b!5067244))

(declare-fun m!6110136 () Bool)

(assert (=> b!5067244 m!6110136))

(declare-fun m!6110138 () Bool)

(assert (=> b!5067244 m!6110138))

(assert (=> b!5067244 m!6110136))

(assert (=> b!5067244 m!6110138))

(declare-fun m!6110140 () Bool)

(assert (=> b!5067244 m!6110140))

(declare-fun m!6110142 () Bool)

(assert (=> b!5067243 m!6110142))

(assert (=> b!5066674 d!1634033))

(declare-fun d!1634035 () Bool)

(declare-fun c!869931 () Bool)

(assert (=> d!1634035 (= c!869931 ((_ is Empty!15564) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))

(declare-fun e!3162154 () List!58558)

(assert (=> d!1634035 (= (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) e!3162154)))

(declare-fun b!5067246 () Bool)

(declare-fun e!3162155 () List!58558)

(assert (=> b!5067246 (= e!3162154 e!3162155)))

(declare-fun c!869932 () Bool)

(assert (=> b!5067246 (= c!869932 ((_ is Leaf!25851) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))

(declare-fun b!5067245 () Bool)

(assert (=> b!5067245 (= e!3162154 Nil!58434)))

(declare-fun b!5067248 () Bool)

(assert (=> b!5067248 (= e!3162155 (++!12789 (list!18989 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (list!18989 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun b!5067247 () Bool)

(assert (=> b!5067247 (= e!3162155 (list!18990 (xs!18914 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))

(assert (= (and d!1634035 c!869931) b!5067245))

(assert (= (and d!1634035 (not c!869931)) b!5067246))

(assert (= (and b!5067246 c!869932) b!5067247))

(assert (= (and b!5067246 (not c!869932)) b!5067248))

(declare-fun m!6110144 () Bool)

(assert (=> b!5067248 m!6110144))

(declare-fun m!6110146 () Bool)

(assert (=> b!5067248 m!6110146))

(assert (=> b!5067248 m!6110144))

(assert (=> b!5067248 m!6110146))

(declare-fun m!6110148 () Bool)

(assert (=> b!5067248 m!6110148))

(declare-fun m!6110150 () Bool)

(assert (=> b!5067247 m!6110150))

(assert (=> b!5066674 d!1634035))

(declare-fun b!5067251 () Bool)

(declare-fun res!2157492 () Bool)

(declare-fun e!3162156 () Bool)

(assert (=> b!5067251 (=> (not res!2157492) (not e!3162156))))

(declare-fun lt!2089048 () List!58558)

(assert (=> b!5067251 (= res!2157492 (= (size!39074 lt!2089048) (+ (size!39074 (list!18989 (left!42816 (left!42816 ys!41)))) (size!39074 (list!18989 (right!43146 (left!42816 ys!41)))))))))

(declare-fun b!5067252 () Bool)

(assert (=> b!5067252 (= e!3162156 (or (not (= (list!18989 (right!43146 (left!42816 ys!41))) Nil!58434)) (= lt!2089048 (list!18989 (left!42816 (left!42816 ys!41))))))))

(declare-fun b!5067250 () Bool)

(declare-fun e!3162157 () List!58558)

(assert (=> b!5067250 (= e!3162157 (Cons!58434 (h!64882 (list!18989 (left!42816 (left!42816 ys!41)))) (++!12789 (t!371291 (list!18989 (left!42816 (left!42816 ys!41)))) (list!18989 (right!43146 (left!42816 ys!41))))))))

(declare-fun b!5067249 () Bool)

(assert (=> b!5067249 (= e!3162157 (list!18989 (right!43146 (left!42816 ys!41))))))

(declare-fun d!1634037 () Bool)

(assert (=> d!1634037 e!3162156))

(declare-fun res!2157491 () Bool)

(assert (=> d!1634037 (=> (not res!2157491) (not e!3162156))))

(assert (=> d!1634037 (= res!2157491 (= (content!10417 lt!2089048) ((_ map or) (content!10417 (list!18989 (left!42816 (left!42816 ys!41)))) (content!10417 (list!18989 (right!43146 (left!42816 ys!41)))))))))

(assert (=> d!1634037 (= lt!2089048 e!3162157)))

(declare-fun c!869933 () Bool)

(assert (=> d!1634037 (= c!869933 ((_ is Nil!58434) (list!18989 (left!42816 (left!42816 ys!41)))))))

(assert (=> d!1634037 (= (++!12789 (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))) lt!2089048)))

(assert (= (and d!1634037 c!869933) b!5067249))

(assert (= (and d!1634037 (not c!869933)) b!5067250))

(assert (= (and d!1634037 res!2157491) b!5067251))

(assert (= (and b!5067251 res!2157492) b!5067252))

(declare-fun m!6110152 () Bool)

(assert (=> b!5067251 m!6110152))

(assert (=> b!5067251 m!6108104))

(assert (=> b!5067251 m!6109044))

(assert (=> b!5067251 m!6108106))

(assert (=> b!5067251 m!6109638))

(assert (=> b!5067250 m!6108106))

(declare-fun m!6110154 () Bool)

(assert (=> b!5067250 m!6110154))

(declare-fun m!6110156 () Bool)

(assert (=> d!1634037 m!6110156))

(assert (=> d!1634037 m!6108104))

(assert (=> d!1634037 m!6109050))

(assert (=> d!1634037 m!6108106))

(assert (=> d!1634037 m!6109646))

(assert (=> bm!353062 d!1634037))

(declare-fun b!5067253 () Bool)

(declare-fun res!2157495 () Bool)

(declare-fun e!3162159 () Bool)

(assert (=> b!5067253 (=> (not res!2157495) (not e!3162159))))

(assert (=> b!5067253 (= res!2157495 (isBalanced!4426 (left!42816 (left!42816 (right!43146 xs!286)))))))

(declare-fun b!5067254 () Bool)

(declare-fun e!3162158 () Bool)

(assert (=> b!5067254 (= e!3162158 e!3162159)))

(declare-fun res!2157498 () Bool)

(assert (=> b!5067254 (=> (not res!2157498) (not e!3162159))))

(assert (=> b!5067254 (= res!2157498 (<= (- 1) (- (height!2141 (left!42816 (left!42816 (right!43146 xs!286)))) (height!2141 (right!43146 (left!42816 (right!43146 xs!286)))))))))

(declare-fun b!5067255 () Bool)

(declare-fun res!2157493 () Bool)

(assert (=> b!5067255 (=> (not res!2157493) (not e!3162159))))

(assert (=> b!5067255 (= res!2157493 (not (isEmpty!31631 (left!42816 (left!42816 (right!43146 xs!286))))))))

(declare-fun b!5067257 () Bool)

(declare-fun res!2157497 () Bool)

(assert (=> b!5067257 (=> (not res!2157497) (not e!3162159))))

(assert (=> b!5067257 (= res!2157497 (<= (- (height!2141 (left!42816 (left!42816 (right!43146 xs!286)))) (height!2141 (right!43146 (left!42816 (right!43146 xs!286))))) 1))))

(declare-fun b!5067258 () Bool)

(assert (=> b!5067258 (= e!3162159 (not (isEmpty!31631 (right!43146 (left!42816 (right!43146 xs!286))))))))

(declare-fun b!5067256 () Bool)

(declare-fun res!2157494 () Bool)

(assert (=> b!5067256 (=> (not res!2157494) (not e!3162159))))

(assert (=> b!5067256 (= res!2157494 (isBalanced!4426 (right!43146 (left!42816 (right!43146 xs!286)))))))

(declare-fun d!1634039 () Bool)

(declare-fun res!2157496 () Bool)

(assert (=> d!1634039 (=> res!2157496 e!3162158)))

(assert (=> d!1634039 (= res!2157496 (not ((_ is Node!15564) (left!42816 (right!43146 xs!286)))))))

(assert (=> d!1634039 (= (isBalanced!4426 (left!42816 (right!43146 xs!286))) e!3162158)))

(assert (= (and d!1634039 (not res!2157496)) b!5067254))

(assert (= (and b!5067254 res!2157498) b!5067257))

(assert (= (and b!5067257 res!2157497) b!5067253))

(assert (= (and b!5067253 res!2157495) b!5067256))

(assert (= (and b!5067256 res!2157494) b!5067255))

(assert (= (and b!5067255 res!2157493) b!5067258))

(declare-fun m!6110158 () Bool)

(assert (=> b!5067255 m!6110158))

(declare-fun m!6110160 () Bool)

(assert (=> b!5067253 m!6110160))

(declare-fun m!6110162 () Bool)

(assert (=> b!5067258 m!6110162))

(assert (=> b!5067257 m!6109658))

(assert (=> b!5067257 m!6109660))

(declare-fun m!6110164 () Bool)

(assert (=> b!5067256 m!6110164))

(assert (=> b!5067254 m!6109658))

(assert (=> b!5067254 m!6109660))

(assert (=> b!5066499 d!1634039))

(declare-fun d!1634041 () Bool)

(assert (=> d!1634041 (= (height!2141 (left!42816 (left!42816 lt!2088868))) (ite ((_ is Empty!15564) (left!42816 (left!42816 lt!2088868))) 0 (ite ((_ is Leaf!25851) (left!42816 (left!42816 lt!2088868))) 1 (cheight!15775 (left!42816 (left!42816 lt!2088868))))))))

(assert (=> b!5066656 d!1634041))

(declare-fun d!1634043 () Bool)

(assert (=> d!1634043 (= (height!2141 (right!43146 (left!42816 lt!2088868))) (ite ((_ is Empty!15564) (right!43146 (left!42816 lt!2088868))) 0 (ite ((_ is Leaf!25851) (right!43146 (left!42816 lt!2088868))) 1 (cheight!15775 (right!43146 (left!42816 lt!2088868))))))))

(assert (=> b!5066656 d!1634043))

(declare-fun d!1634045 () Bool)

(declare-fun res!2157499 () Bool)

(declare-fun e!3162160 () Bool)

(assert (=> d!1634045 (=> (not res!2157499) (not e!3162160))))

(assert (=> d!1634045 (= res!2157499 (= (csize!31358 (right!43146 (right!43146 ys!41))) (+ (size!39075 (left!42816 (right!43146 (right!43146 ys!41)))) (size!39075 (right!43146 (right!43146 (right!43146 ys!41)))))))))

(assert (=> d!1634045 (= (inv!77559 (right!43146 (right!43146 ys!41))) e!3162160)))

(declare-fun b!5067259 () Bool)

(declare-fun res!2157500 () Bool)

(assert (=> b!5067259 (=> (not res!2157500) (not e!3162160))))

(assert (=> b!5067259 (= res!2157500 (and (not (= (left!42816 (right!43146 (right!43146 ys!41))) Empty!15564)) (not (= (right!43146 (right!43146 (right!43146 ys!41))) Empty!15564))))))

(declare-fun b!5067260 () Bool)

(declare-fun res!2157501 () Bool)

(assert (=> b!5067260 (=> (not res!2157501) (not e!3162160))))

(assert (=> b!5067260 (= res!2157501 (= (cheight!15775 (right!43146 (right!43146 ys!41))) (+ (max!0 (height!2141 (left!42816 (right!43146 (right!43146 ys!41)))) (height!2141 (right!43146 (right!43146 (right!43146 ys!41))))) 1)))))

(declare-fun b!5067261 () Bool)

(assert (=> b!5067261 (= e!3162160 (<= 0 (cheight!15775 (right!43146 (right!43146 ys!41)))))))

(assert (= (and d!1634045 res!2157499) b!5067259))

(assert (= (and b!5067259 res!2157500) b!5067260))

(assert (= (and b!5067260 res!2157501) b!5067261))

(declare-fun m!6110166 () Bool)

(assert (=> d!1634045 m!6110166))

(declare-fun m!6110168 () Bool)

(assert (=> d!1634045 m!6110168))

(declare-fun m!6110170 () Bool)

(assert (=> b!5067260 m!6110170))

(declare-fun m!6110172 () Bool)

(assert (=> b!5067260 m!6110172))

(assert (=> b!5067260 m!6110170))

(assert (=> b!5067260 m!6110172))

(declare-fun m!6110174 () Bool)

(assert (=> b!5067260 m!6110174))

(assert (=> b!5066664 d!1634045))

(declare-fun d!1634047 () Bool)

(declare-fun lt!2089049 () Int)

(assert (=> d!1634047 (>= lt!2089049 0)))

(declare-fun e!3162161 () Int)

(assert (=> d!1634047 (= lt!2089049 e!3162161)))

(declare-fun c!869934 () Bool)

(assert (=> d!1634047 (= c!869934 ((_ is Nil!58434) (t!371291 (list!18989 xs!286))))))

(assert (=> d!1634047 (= (size!39074 (t!371291 (list!18989 xs!286))) lt!2089049)))

(declare-fun b!5067262 () Bool)

(assert (=> b!5067262 (= e!3162161 0)))

(declare-fun b!5067263 () Bool)

(assert (=> b!5067263 (= e!3162161 (+ 1 (size!39074 (t!371291 (t!371291 (list!18989 xs!286))))))))

(assert (= (and d!1634047 c!869934) b!5067262))

(assert (= (and d!1634047 (not c!869934)) b!5067263))

(declare-fun m!6110176 () Bool)

(assert (=> b!5067263 m!6110176))

(assert (=> b!5066605 d!1634047))

(declare-fun b!5067266 () Bool)

(declare-fun res!2157503 () Bool)

(declare-fun e!3162162 () Bool)

(assert (=> b!5067266 (=> (not res!2157503) (not e!3162162))))

(declare-fun lt!2089050 () List!58558)

(assert (=> b!5067266 (= res!2157503 (= (size!39074 lt!2089050) (+ (size!39074 call!353065) (size!39074 (list!18989 (right!43146 ys!41))))))))

(declare-fun b!5067267 () Bool)

(assert (=> b!5067267 (= e!3162162 (or (not (= (list!18989 (right!43146 ys!41)) Nil!58434)) (= lt!2089050 call!353065)))))

(declare-fun b!5067265 () Bool)

(declare-fun e!3162163 () List!58558)

(assert (=> b!5067265 (= e!3162163 (Cons!58434 (h!64882 call!353065) (++!12789 (t!371291 call!353065) (list!18989 (right!43146 ys!41)))))))

(declare-fun b!5067264 () Bool)

(assert (=> b!5067264 (= e!3162163 (list!18989 (right!43146 ys!41)))))

(declare-fun d!1634049 () Bool)

(assert (=> d!1634049 e!3162162))

(declare-fun res!2157502 () Bool)

(assert (=> d!1634049 (=> (not res!2157502) (not e!3162162))))

(assert (=> d!1634049 (= res!2157502 (= (content!10417 lt!2089050) ((_ map or) (content!10417 call!353065) (content!10417 (list!18989 (right!43146 ys!41))))))))

(assert (=> d!1634049 (= lt!2089050 e!3162163)))

(declare-fun c!869935 () Bool)

(assert (=> d!1634049 (= c!869935 ((_ is Nil!58434) call!353065))))

(assert (=> d!1634049 (= (++!12789 call!353065 (list!18989 (right!43146 ys!41))) lt!2089050)))

(assert (= (and d!1634049 c!869935) b!5067264))

(assert (= (and d!1634049 (not c!869935)) b!5067265))

(assert (= (and d!1634049 res!2157502) b!5067266))

(assert (= (and b!5067266 res!2157503) b!5067267))

(declare-fun m!6110178 () Bool)

(assert (=> b!5067266 m!6110178))

(declare-fun m!6110180 () Bool)

(assert (=> b!5067266 m!6110180))

(assert (=> b!5067266 m!6108100))

(assert (=> b!5067266 m!6109080))

(assert (=> b!5067265 m!6108100))

(declare-fun m!6110182 () Bool)

(assert (=> b!5067265 m!6110182))

(declare-fun m!6110184 () Bool)

(assert (=> d!1634049 m!6110184))

(declare-fun m!6110186 () Bool)

(assert (=> d!1634049 m!6110186))

(assert (=> d!1634049 m!6108100))

(assert (=> d!1634049 m!6109088))

(assert (=> bm!353057 d!1634049))

(declare-fun d!1634051 () Bool)

(assert (=> d!1634051 (= (height!2141 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (ite ((_ is Empty!15564) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) 0 (ite ((_ is Leaf!25851) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) 1 (cheight!15775 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(assert (=> b!5066684 d!1634051))

(declare-fun d!1634053 () Bool)

(assert (=> d!1634053 (= (height!2141 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite ((_ is Empty!15564) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) 0 (ite ((_ is Leaf!25851) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) 1 (cheight!15775 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))))

(assert (=> b!5066684 d!1634053))

(declare-fun b!5067270 () Bool)

(declare-fun res!2157505 () Bool)

(declare-fun e!3162164 () Bool)

(assert (=> b!5067270 (=> (not res!2157505) (not e!3162164))))

(declare-fun lt!2089051 () List!58558)

(assert (=> b!5067270 (= res!2157505 (= (size!39074 lt!2089051) (+ (size!39074 (list!18989 (right!43146 xs!286))) (size!39074 (list!18989 ys!41)))))))

(declare-fun b!5067271 () Bool)

(assert (=> b!5067271 (= e!3162164 (or (not (= (list!18989 ys!41) Nil!58434)) (= lt!2089051 (list!18989 (right!43146 xs!286)))))))

(declare-fun b!5067269 () Bool)

(declare-fun e!3162165 () List!58558)

(assert (=> b!5067269 (= e!3162165 (Cons!58434 (h!64882 (list!18989 (right!43146 xs!286))) (++!12789 (t!371291 (list!18989 (right!43146 xs!286))) (list!18989 ys!41))))))

(declare-fun b!5067268 () Bool)

(assert (=> b!5067268 (= e!3162165 (list!18989 ys!41))))

(declare-fun d!1634055 () Bool)

(assert (=> d!1634055 e!3162164))

(declare-fun res!2157504 () Bool)

(assert (=> d!1634055 (=> (not res!2157504) (not e!3162164))))

(assert (=> d!1634055 (= res!2157504 (= (content!10417 lt!2089051) ((_ map or) (content!10417 (list!18989 (right!43146 xs!286))) (content!10417 (list!18989 ys!41)))))))

(assert (=> d!1634055 (= lt!2089051 e!3162165)))

(declare-fun c!869936 () Bool)

(assert (=> d!1634055 (= c!869936 ((_ is Nil!58434) (list!18989 (right!43146 xs!286))))))

(assert (=> d!1634055 (= (++!12789 (list!18989 (right!43146 xs!286)) (list!18989 ys!41)) lt!2089051)))

(assert (= (and d!1634055 c!869936) b!5067268))

(assert (= (and d!1634055 (not c!869936)) b!5067269))

(assert (= (and d!1634055 res!2157504) b!5067270))

(assert (= (and b!5067270 res!2157505) b!5067271))

(declare-fun m!6110188 () Bool)

(assert (=> b!5067270 m!6110188))

(assert (=> b!5067270 m!6108116))

(assert (=> b!5067270 m!6108464))

(assert (=> b!5067270 m!6107974))

(assert (=> b!5067270 m!6108164))

(assert (=> b!5067269 m!6107974))

(declare-fun m!6110190 () Bool)

(assert (=> b!5067269 m!6110190))

(declare-fun m!6110192 () Bool)

(assert (=> d!1634055 m!6110192))

(assert (=> d!1634055 m!6108116))

(assert (=> d!1634055 m!6108472))

(assert (=> d!1634055 m!6107974))

(assert (=> d!1634055 m!6108172))

(assert (=> bm!353010 d!1634055))

(declare-fun b!5067272 () Bool)

(declare-fun res!2157508 () Bool)

(declare-fun e!3162167 () Bool)

(assert (=> b!5067272 (=> (not res!2157508) (not e!3162167))))

(assert (=> b!5067272 (= res!2157508 (isBalanced!4426 (left!42816 (right!43146 lt!2088908))))))

(declare-fun b!5067273 () Bool)

(declare-fun e!3162166 () Bool)

(assert (=> b!5067273 (= e!3162166 e!3162167)))

(declare-fun res!2157511 () Bool)

(assert (=> b!5067273 (=> (not res!2157511) (not e!3162167))))

(assert (=> b!5067273 (= res!2157511 (<= (- 1) (- (height!2141 (left!42816 (right!43146 lt!2088908))) (height!2141 (right!43146 (right!43146 lt!2088908))))))))

(declare-fun b!5067274 () Bool)

(declare-fun res!2157506 () Bool)

(assert (=> b!5067274 (=> (not res!2157506) (not e!3162167))))

(assert (=> b!5067274 (= res!2157506 (not (isEmpty!31631 (left!42816 (right!43146 lt!2088908)))))))

(declare-fun b!5067276 () Bool)

(declare-fun res!2157510 () Bool)

(assert (=> b!5067276 (=> (not res!2157510) (not e!3162167))))

(assert (=> b!5067276 (= res!2157510 (<= (- (height!2141 (left!42816 (right!43146 lt!2088908))) (height!2141 (right!43146 (right!43146 lt!2088908)))) 1))))

(declare-fun b!5067277 () Bool)

(assert (=> b!5067277 (= e!3162167 (not (isEmpty!31631 (right!43146 (right!43146 lt!2088908)))))))

(declare-fun b!5067275 () Bool)

(declare-fun res!2157507 () Bool)

(assert (=> b!5067275 (=> (not res!2157507) (not e!3162167))))

(assert (=> b!5067275 (= res!2157507 (isBalanced!4426 (right!43146 (right!43146 lt!2088908))))))

(declare-fun d!1634057 () Bool)

(declare-fun res!2157509 () Bool)

(assert (=> d!1634057 (=> res!2157509 e!3162166)))

(assert (=> d!1634057 (= res!2157509 (not ((_ is Node!15564) (right!43146 lt!2088908))))))

(assert (=> d!1634057 (= (isBalanced!4426 (right!43146 lt!2088908)) e!3162166)))

(assert (= (and d!1634057 (not res!2157509)) b!5067273))

(assert (= (and b!5067273 res!2157511) b!5067276))

(assert (= (and b!5067276 res!2157510) b!5067272))

(assert (= (and b!5067272 res!2157508) b!5067275))

(assert (= (and b!5067275 res!2157507) b!5067274))

(assert (= (and b!5067274 res!2157506) b!5067277))

(declare-fun m!6110194 () Bool)

(assert (=> b!5067274 m!6110194))

(declare-fun m!6110196 () Bool)

(assert (=> b!5067272 m!6110196))

(declare-fun m!6110198 () Bool)

(assert (=> b!5067277 m!6110198))

(declare-fun m!6110200 () Bool)

(assert (=> b!5067276 m!6110200))

(declare-fun m!6110202 () Bool)

(assert (=> b!5067276 m!6110202))

(declare-fun m!6110204 () Bool)

(assert (=> b!5067275 m!6110204))

(assert (=> b!5067273 m!6110200))

(assert (=> b!5067273 m!6110202))

(assert (=> b!5066496 d!1634057))

(declare-fun d!1634059 () Bool)

(declare-fun lt!2089052 () Int)

(assert (=> d!1634059 (>= lt!2089052 0)))

(declare-fun e!3162168 () Int)

(assert (=> d!1634059 (= lt!2089052 e!3162168)))

(declare-fun c!869937 () Bool)

(assert (=> d!1634059 (= c!869937 ((_ is Nil!58434) (list!18990 (xs!18914 (right!43146 ys!41)))))))

(assert (=> d!1634059 (= (size!39074 (list!18990 (xs!18914 (right!43146 ys!41)))) lt!2089052)))

(declare-fun b!5067278 () Bool)

(assert (=> b!5067278 (= e!3162168 0)))

(declare-fun b!5067279 () Bool)

(assert (=> b!5067279 (= e!3162168 (+ 1 (size!39074 (t!371291 (list!18990 (xs!18914 (right!43146 ys!41)))))))))

(assert (= (and d!1634059 c!869937) b!5067278))

(assert (= (and d!1634059 (not c!869937)) b!5067279))

(declare-fun m!6110206 () Bool)

(assert (=> b!5067279 m!6110206))

(assert (=> b!5066541 d!1634059))

(declare-fun d!1634061 () Bool)

(assert (=> d!1634061 (= (list!18990 (xs!18914 (right!43146 ys!41))) (innerList!15652 (xs!18914 (right!43146 ys!41))))))

(assert (=> b!5066541 d!1634061))

(declare-fun b!5067280 () Bool)

(declare-fun res!2157514 () Bool)

(declare-fun e!3162170 () Bool)

(assert (=> b!5067280 (=> (not res!2157514) (not e!3162170))))

(assert (=> b!5067280 (= res!2157514 (isBalanced!4426 (left!42816 (left!42816 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5067281 () Bool)

(declare-fun e!3162169 () Bool)

(assert (=> b!5067281 (= e!3162169 e!3162170)))

(declare-fun res!2157517 () Bool)

(assert (=> b!5067281 (=> (not res!2157517) (not e!3162170))))

(assert (=> b!5067281 (= res!2157517 (<= (- 1) (- (height!2141 (left!42816 (left!42816 (right!43146 (right!43146 xs!286))))) (height!2141 (right!43146 (left!42816 (right!43146 (right!43146 xs!286))))))))))

(declare-fun b!5067282 () Bool)

(declare-fun res!2157512 () Bool)

(assert (=> b!5067282 (=> (not res!2157512) (not e!3162170))))

(assert (=> b!5067282 (= res!2157512 (not (isEmpty!31631 (left!42816 (left!42816 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067284 () Bool)

(declare-fun res!2157516 () Bool)

(assert (=> b!5067284 (=> (not res!2157516) (not e!3162170))))

(assert (=> b!5067284 (= res!2157516 (<= (- (height!2141 (left!42816 (left!42816 (right!43146 (right!43146 xs!286))))) (height!2141 (right!43146 (left!42816 (right!43146 (right!43146 xs!286)))))) 1))))

(declare-fun b!5067285 () Bool)

(assert (=> b!5067285 (= e!3162170 (not (isEmpty!31631 (right!43146 (left!42816 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067283 () Bool)

(declare-fun res!2157513 () Bool)

(assert (=> b!5067283 (=> (not res!2157513) (not e!3162170))))

(assert (=> b!5067283 (= res!2157513 (isBalanced!4426 (right!43146 (left!42816 (right!43146 (right!43146 xs!286))))))))

(declare-fun d!1634063 () Bool)

(declare-fun res!2157515 () Bool)

(assert (=> d!1634063 (=> res!2157515 e!3162169)))

(assert (=> d!1634063 (= res!2157515 (not ((_ is Node!15564) (left!42816 (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1634063 (= (isBalanced!4426 (left!42816 (right!43146 (right!43146 xs!286)))) e!3162169)))

(assert (= (and d!1634063 (not res!2157515)) b!5067281))

(assert (= (and b!5067281 res!2157517) b!5067284))

(assert (= (and b!5067284 res!2157516) b!5067280))

(assert (= (and b!5067280 res!2157514) b!5067283))

(assert (= (and b!5067283 res!2157513) b!5067282))

(assert (= (and b!5067282 res!2157512) b!5067285))

(declare-fun m!6110208 () Bool)

(assert (=> b!5067282 m!6110208))

(declare-fun m!6110210 () Bool)

(assert (=> b!5067280 m!6110210))

(declare-fun m!6110212 () Bool)

(assert (=> b!5067285 m!6110212))

(declare-fun m!6110214 () Bool)

(assert (=> b!5067284 m!6110214))

(declare-fun m!6110216 () Bool)

(assert (=> b!5067284 m!6110216))

(declare-fun m!6110218 () Bool)

(assert (=> b!5067283 m!6110218))

(assert (=> b!5067281 m!6110214))

(assert (=> b!5067281 m!6110216))

(assert (=> b!5066628 d!1634063))

(declare-fun d!1634065 () Bool)

(assert (=> d!1634065 (= (max!0 (height!2141 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) (height!2141 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))) (ite (< (height!2141 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) (height!2141 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))) (height!2141 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) (height!2141 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))))))))

(assert (=> b!5066593 d!1634065))

(declare-fun lt!2089053 () Int)

(declare-fun d!1634067 () Bool)

(assert (=> d!1634067 (= lt!2089053 (size!39074 (list!18989 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992))))))))

(assert (=> d!1634067 (= lt!2089053 (ite ((_ is Empty!15564) (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) 0 (ite ((_ is Leaf!25851) (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) (csize!31359 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) (csize!31358 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))))))))

(assert (=> d!1634067 (= (size!39075 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) lt!2089053)))

(declare-fun bs!1189936 () Bool)

(assert (= bs!1189936 d!1634067))

(assert (=> bs!1189936 m!6108810))

(assert (=> bs!1189936 m!6108810))

(assert (=> bs!1189936 m!6110062))

(assert (=> b!5066593 d!1634067))

(declare-fun d!1634069 () Bool)

(assert (=> d!1634069 (= (height!2141 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) (ite ((_ is Empty!15564) (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) 0 (ite ((_ is Leaf!25851) (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) 1 (cheight!15775 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))))))))

(assert (=> b!5066593 d!1634069))

(declare-fun lt!2089054 () Int)

(declare-fun d!1634071 () Bool)

(assert (=> d!1634071 (= lt!2089054 (size!39074 (list!18989 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906))))))))

(assert (=> d!1634071 (= lt!2089054 (ite ((_ is Empty!15564) (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) 0 (ite ((_ is Leaf!25851) (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) (csize!31359 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) (csize!31358 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))))))))

(assert (=> d!1634071 (= (size!39075 (ite c!869685 (right!43146 (right!43146 xs!286)) (ite c!869680 (ite c!869682 (left!42816 (right!43146 (right!43146 xs!286))) call!352999) (ite c!869681 call!352992 lt!2088906)))) lt!2089054)))

(declare-fun bs!1189937 () Bool)

(assert (= bs!1189937 d!1634071))

(assert (=> bs!1189937 m!6108808))

(assert (=> bs!1189937 m!6108808))

(assert (=> bs!1189937 m!6110060))

(assert (=> b!5066593 d!1634071))

(declare-fun d!1634073 () Bool)

(assert (=> d!1634073 (= (height!2141 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) (ite ((_ is Empty!15564) (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) 0 (ite ((_ is Leaf!25851) (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))) 1 (cheight!15775 (ite c!869685 ys!41 (ite c!869680 (ite c!869682 call!352999 lt!2088909) (ite c!869681 (right!43146 ys!41) call!352992)))))))))

(assert (=> b!5066593 d!1634073))

(assert (=> bm!353020 d!1633843))

(declare-fun d!1634075 () Bool)

(assert (=> d!1634075 (= (max!0 (height!2141 (left!42816 (left!42816 xs!286))) (height!2141 (right!43146 (left!42816 xs!286)))) (ite (< (height!2141 (left!42816 (left!42816 xs!286))) (height!2141 (right!43146 (left!42816 xs!286)))) (height!2141 (right!43146 (left!42816 xs!286))) (height!2141 (left!42816 (left!42816 xs!286)))))))

(assert (=> b!5066609 d!1634075))

(declare-fun d!1634077 () Bool)

(assert (=> d!1634077 (= (height!2141 (left!42816 (left!42816 xs!286))) (ite ((_ is Empty!15564) (left!42816 (left!42816 xs!286))) 0 (ite ((_ is Leaf!25851) (left!42816 (left!42816 xs!286))) 1 (cheight!15775 (left!42816 (left!42816 xs!286))))))))

(assert (=> b!5066609 d!1634077))

(declare-fun d!1634079 () Bool)

(assert (=> d!1634079 (= (height!2141 (right!43146 (left!42816 xs!286))) (ite ((_ is Empty!15564) (right!43146 (left!42816 xs!286))) 0 (ite ((_ is Leaf!25851) (right!43146 (left!42816 xs!286))) 1 (cheight!15775 (right!43146 (left!42816 xs!286))))))))

(assert (=> b!5066609 d!1634079))

(declare-fun b!5067288 () Bool)

(declare-fun res!2157519 () Bool)

(declare-fun e!3162171 () Bool)

(assert (=> b!5067288 (=> (not res!2157519) (not e!3162171))))

(declare-fun lt!2089055 () List!58558)

(assert (=> b!5067288 (= res!2157519 (= (size!39074 lt!2089055) (+ (size!39074 (list!18989 xs!286)) (size!39074 call!353019))))))

(declare-fun b!5067289 () Bool)

(assert (=> b!5067289 (= e!3162171 (or (not (= call!353019 Nil!58434)) (= lt!2089055 (list!18989 xs!286))))))

(declare-fun b!5067287 () Bool)

(declare-fun e!3162172 () List!58558)

(assert (=> b!5067287 (= e!3162172 (Cons!58434 (h!64882 (list!18989 xs!286)) (++!12789 (t!371291 (list!18989 xs!286)) call!353019)))))

(declare-fun b!5067286 () Bool)

(assert (=> b!5067286 (= e!3162172 call!353019)))

(declare-fun d!1634081 () Bool)

(assert (=> d!1634081 e!3162171))

(declare-fun res!2157518 () Bool)

(assert (=> d!1634081 (=> (not res!2157518) (not e!3162171))))

(assert (=> d!1634081 (= res!2157518 (= (content!10417 lt!2089055) ((_ map or) (content!10417 (list!18989 xs!286)) (content!10417 call!353019))))))

(assert (=> d!1634081 (= lt!2089055 e!3162172)))

(declare-fun c!869938 () Bool)

(assert (=> d!1634081 (= c!869938 ((_ is Nil!58434) (list!18989 xs!286)))))

(assert (=> d!1634081 (= (++!12789 (list!18989 xs!286) call!353019) lt!2089055)))

(assert (= (and d!1634081 c!869938) b!5067286))

(assert (= (and d!1634081 (not c!869938)) b!5067287))

(assert (= (and d!1634081 res!2157518) b!5067288))

(assert (= (and b!5067288 res!2157519) b!5067289))

(declare-fun m!6110220 () Bool)

(assert (=> b!5067288 m!6110220))

(assert (=> b!5067288 m!6107972))

(assert (=> b!5067288 m!6108162))

(declare-fun m!6110222 () Bool)

(assert (=> b!5067288 m!6110222))

(declare-fun m!6110224 () Bool)

(assert (=> b!5067287 m!6110224))

(declare-fun m!6110226 () Bool)

(assert (=> d!1634081 m!6110226))

(assert (=> d!1634081 m!6107972))

(assert (=> d!1634081 m!6108170))

(declare-fun m!6110228 () Bool)

(assert (=> d!1634081 m!6110228))

(assert (=> bm!353015 d!1634081))

(declare-fun bm!353121 () Bool)

(declare-fun call!353128 () List!58558)

(declare-fun call!353129 () List!58558)

(assert (=> bm!353121 (= call!353128 (++!12789 call!353129 (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353122 () Bool)

(declare-fun call!353127 () List!58558)

(assert (=> bm!353122 (= call!353127 (++!12789 (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353123 () Bool)

(declare-fun call!353126 () List!58558)

(assert (=> bm!353123 (= call!353126 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) call!353127))))

(declare-fun b!5067291 () Bool)

(declare-fun e!3162173 () Bool)

(assert (=> b!5067291 (= e!3162173 (= call!353128 call!353126))))

(declare-fun bm!353124 () Bool)

(assert (=> bm!353124 (= call!353129 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 ys!41))))))

(declare-fun d!1634083 () Bool)

(assert (=> d!1634083 e!3162173))

(declare-fun c!869939 () Bool)

(assert (=> d!1634083 (= c!869939 ((_ is Nil!58434) (list!18989 (right!43146 (right!43146 xs!286)))))))

(assert (=> d!1634083 (= (appendAssoc!301 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))) true)))

(declare-fun b!5067290 () Bool)

(assert (=> b!5067290 (= e!3162173 (= call!353128 call!353126))))

(declare-fun lt!2089056 () Bool)

(assert (=> b!5067290 (= lt!2089056 (appendAssoc!301 (t!371291 (list!18989 (right!43146 (right!43146 xs!286)))) (list!18989 (left!42816 ys!41)) (list!18989 (right!43146 ys!41))))))

(assert (= (and d!1634083 c!869939) b!5067291))

(assert (= (and d!1634083 (not c!869939)) b!5067290))

(assert (= (or b!5067291 b!5067290) bm!353124))

(assert (= (or b!5067291 b!5067290) bm!353122))

(assert (= (or b!5067291 b!5067290) bm!353123))

(assert (= (or b!5067291 b!5067290) bm!353121))

(assert (=> bm!353123 m!6108094))

(declare-fun m!6110230 () Bool)

(assert (=> bm!353123 m!6110230))

(assert (=> bm!353124 m!6108094))

(assert (=> bm!353124 m!6108098))

(declare-fun m!6110232 () Bool)

(assert (=> bm!353124 m!6110232))

(assert (=> bm!353122 m!6108098))

(assert (=> bm!353122 m!6108100))

(assert (=> bm!353122 m!6108178))

(assert (=> b!5067290 m!6108098))

(assert (=> b!5067290 m!6108100))

(declare-fun m!6110234 () Bool)

(assert (=> b!5067290 m!6110234))

(assert (=> bm!353121 m!6108100))

(declare-fun m!6110236 () Bool)

(assert (=> bm!353121 m!6110236))

(assert (=> b!5066614 d!1634083))

(assert (=> b!5066614 d!1633437))

(assert (=> b!5066614 d!1633501))

(assert (=> b!5066614 d!1633503))

(declare-fun b!5067294 () Bool)

(declare-fun res!2157521 () Bool)

(declare-fun e!3162174 () Bool)

(assert (=> b!5067294 (=> (not res!2157521) (not e!3162174))))

(declare-fun lt!2089057 () List!58558)

(assert (=> b!5067294 (= res!2157521 (= (size!39074 lt!2089057) (+ (size!39074 (list!18989 (left!42816 lt!2088875))) (size!39074 (list!18989 (right!43146 lt!2088875))))))))

(declare-fun b!5067295 () Bool)

(assert (=> b!5067295 (= e!3162174 (or (not (= (list!18989 (right!43146 lt!2088875)) Nil!58434)) (= lt!2089057 (list!18989 (left!42816 lt!2088875)))))))

(declare-fun b!5067293 () Bool)

(declare-fun e!3162175 () List!58558)

(assert (=> b!5067293 (= e!3162175 (Cons!58434 (h!64882 (list!18989 (left!42816 lt!2088875))) (++!12789 (t!371291 (list!18989 (left!42816 lt!2088875))) (list!18989 (right!43146 lt!2088875)))))))

(declare-fun b!5067292 () Bool)

(assert (=> b!5067292 (= e!3162175 (list!18989 (right!43146 lt!2088875)))))

(declare-fun d!1634085 () Bool)

(assert (=> d!1634085 e!3162174))

(declare-fun res!2157520 () Bool)

(assert (=> d!1634085 (=> (not res!2157520) (not e!3162174))))

(assert (=> d!1634085 (= res!2157520 (= (content!10417 lt!2089057) ((_ map or) (content!10417 (list!18989 (left!42816 lt!2088875))) (content!10417 (list!18989 (right!43146 lt!2088875))))))))

(assert (=> d!1634085 (= lt!2089057 e!3162175)))

(declare-fun c!869940 () Bool)

(assert (=> d!1634085 (= c!869940 ((_ is Nil!58434) (list!18989 (left!42816 lt!2088875))))))

(assert (=> d!1634085 (= (++!12789 (list!18989 (left!42816 lt!2088875)) (list!18989 (right!43146 lt!2088875))) lt!2089057)))

(assert (= (and d!1634085 c!869940) b!5067292))

(assert (= (and d!1634085 (not c!869940)) b!5067293))

(assert (= (and d!1634085 res!2157520) b!5067294))

(assert (= (and b!5067294 res!2157521) b!5067295))

(declare-fun m!6110238 () Bool)

(assert (=> b!5067294 m!6110238))

(assert (=> b!5067294 m!6108756))

(declare-fun m!6110240 () Bool)

(assert (=> b!5067294 m!6110240))

(assert (=> b!5067294 m!6108758))

(declare-fun m!6110242 () Bool)

(assert (=> b!5067294 m!6110242))

(assert (=> b!5067293 m!6108758))

(declare-fun m!6110244 () Bool)

(assert (=> b!5067293 m!6110244))

(declare-fun m!6110246 () Bool)

(assert (=> d!1634085 m!6110246))

(assert (=> d!1634085 m!6108756))

(declare-fun m!6110248 () Bool)

(assert (=> d!1634085 m!6110248))

(assert (=> d!1634085 m!6108758))

(declare-fun m!6110250 () Bool)

(assert (=> d!1634085 m!6110250))

(assert (=> b!5066566 d!1634085))

(declare-fun d!1634087 () Bool)

(declare-fun c!869941 () Bool)

(assert (=> d!1634087 (= c!869941 ((_ is Empty!15564) (left!42816 lt!2088875)))))

(declare-fun e!3162176 () List!58558)

(assert (=> d!1634087 (= (list!18989 (left!42816 lt!2088875)) e!3162176)))

(declare-fun b!5067297 () Bool)

(declare-fun e!3162177 () List!58558)

(assert (=> b!5067297 (= e!3162176 e!3162177)))

(declare-fun c!869942 () Bool)

(assert (=> b!5067297 (= c!869942 ((_ is Leaf!25851) (left!42816 lt!2088875)))))

(declare-fun b!5067296 () Bool)

(assert (=> b!5067296 (= e!3162176 Nil!58434)))

(declare-fun b!5067299 () Bool)

(assert (=> b!5067299 (= e!3162177 (++!12789 (list!18989 (left!42816 (left!42816 lt!2088875))) (list!18989 (right!43146 (left!42816 lt!2088875)))))))

(declare-fun b!5067298 () Bool)

(assert (=> b!5067298 (= e!3162177 (list!18990 (xs!18914 (left!42816 lt!2088875))))))

(assert (= (and d!1634087 c!869941) b!5067296))

(assert (= (and d!1634087 (not c!869941)) b!5067297))

(assert (= (and b!5067297 c!869942) b!5067298))

(assert (= (and b!5067297 (not c!869942)) b!5067299))

(declare-fun m!6110252 () Bool)

(assert (=> b!5067299 m!6110252))

(declare-fun m!6110254 () Bool)

(assert (=> b!5067299 m!6110254))

(assert (=> b!5067299 m!6110252))

(assert (=> b!5067299 m!6110254))

(declare-fun m!6110256 () Bool)

(assert (=> b!5067299 m!6110256))

(declare-fun m!6110258 () Bool)

(assert (=> b!5067298 m!6110258))

(assert (=> b!5066566 d!1634087))

(declare-fun d!1634089 () Bool)

(declare-fun c!869943 () Bool)

(assert (=> d!1634089 (= c!869943 ((_ is Empty!15564) (right!43146 lt!2088875)))))

(declare-fun e!3162178 () List!58558)

(assert (=> d!1634089 (= (list!18989 (right!43146 lt!2088875)) e!3162178)))

(declare-fun b!5067301 () Bool)

(declare-fun e!3162179 () List!58558)

(assert (=> b!5067301 (= e!3162178 e!3162179)))

(declare-fun c!869944 () Bool)

(assert (=> b!5067301 (= c!869944 ((_ is Leaf!25851) (right!43146 lt!2088875)))))

(declare-fun b!5067300 () Bool)

(assert (=> b!5067300 (= e!3162178 Nil!58434)))

(declare-fun b!5067303 () Bool)

(assert (=> b!5067303 (= e!3162179 (++!12789 (list!18989 (left!42816 (right!43146 lt!2088875))) (list!18989 (right!43146 (right!43146 lt!2088875)))))))

(declare-fun b!5067302 () Bool)

(assert (=> b!5067302 (= e!3162179 (list!18990 (xs!18914 (right!43146 lt!2088875))))))

(assert (= (and d!1634089 c!869943) b!5067300))

(assert (= (and d!1634089 (not c!869943)) b!5067301))

(assert (= (and b!5067301 c!869944) b!5067302))

(assert (= (and b!5067301 (not c!869944)) b!5067303))

(declare-fun m!6110260 () Bool)

(assert (=> b!5067303 m!6110260))

(declare-fun m!6110262 () Bool)

(assert (=> b!5067303 m!6110262))

(assert (=> b!5067303 m!6110260))

(assert (=> b!5067303 m!6110262))

(declare-fun m!6110264 () Bool)

(assert (=> b!5067303 m!6110264))

(declare-fun m!6110266 () Bool)

(assert (=> b!5067302 m!6110266))

(assert (=> b!5066566 d!1634089))

(declare-fun b!5067305 () Bool)

(declare-fun e!3162180 () Conc!15564)

(declare-fun e!3162181 () Conc!15564)

(assert (=> b!5067305 (= e!3162180 e!3162181)))

(declare-fun c!869946 () Bool)

(assert (=> b!5067305 (= c!869946 (= (ite c!869767 (ite c!869770 call!353050 (ite c!869769 lt!2088959 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))) (ite c!869765 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (ite c!869768 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))) Empty!15564))))

(declare-fun b!5067306 () Bool)

(assert (=> b!5067306 (= e!3162181 (ite c!869767 (ite c!869770 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869769 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869765 call!353053 (ite c!869768 lt!2088956 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))

(declare-fun d!1634091 () Bool)

(declare-fun lt!2089058 () Conc!15564)

(assert (=> d!1634091 (= (list!18989 lt!2089058) (++!12789 (list!18989 (ite c!869767 (ite c!869770 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869769 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869765 call!353053 (ite c!869768 lt!2088956 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))) (list!18989 (ite c!869767 (ite c!869770 call!353050 (ite c!869769 lt!2088959 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))) (ite c!869765 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (ite c!869768 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))))))

(assert (=> d!1634091 (= lt!2089058 e!3162180)))

(declare-fun c!869945 () Bool)

(assert (=> d!1634091 (= c!869945 (= (ite c!869767 (ite c!869770 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869769 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869765 call!353053 (ite c!869768 lt!2088956 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))) Empty!15564))))

(assert (=> d!1634091 (= (<>!396 (ite c!869767 (ite c!869770 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869769 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869765 call!353053 (ite c!869768 lt!2088956 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))) (ite c!869767 (ite c!869770 call!353050 (ite c!869769 lt!2088959 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))) (ite c!869765 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (ite c!869768 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))) lt!2089058)))

(declare-fun b!5067304 () Bool)

(assert (=> b!5067304 (= e!3162180 (ite c!869767 (ite c!869770 call!353050 (ite c!869769 lt!2088959 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))) (ite c!869765 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (ite c!869768 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))))

(declare-fun b!5067307 () Bool)

(assert (=> b!5067307 (= e!3162181 (Node!15564 (ite c!869767 (ite c!869770 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869769 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869765 call!353053 (ite c!869768 lt!2088956 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))) (ite c!869767 (ite c!869770 call!353050 (ite c!869769 lt!2088959 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))) (ite c!869765 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (ite c!869768 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))) (+ (size!39075 (ite c!869767 (ite c!869770 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869769 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869765 call!353053 (ite c!869768 lt!2088956 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))) (size!39075 (ite c!869767 (ite c!869770 call!353050 (ite c!869769 lt!2088959 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))) (ite c!869765 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (ite c!869768 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))) (+ (max!0 (height!2141 (ite c!869767 (ite c!869770 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869769 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869765 call!353053 (ite c!869768 lt!2088956 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))) (height!2141 (ite c!869767 (ite c!869770 call!353050 (ite c!869769 lt!2088959 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))) (ite c!869765 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (ite c!869768 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))) 1)))))

(assert (= (and d!1634091 c!869945) b!5067304))

(assert (= (and d!1634091 (not c!869945)) b!5067305))

(assert (= (and b!5067305 c!869946) b!5067306))

(assert (= (and b!5067305 (not c!869946)) b!5067307))

(declare-fun m!6110268 () Bool)

(assert (=> d!1634091 m!6110268))

(declare-fun m!6110270 () Bool)

(assert (=> d!1634091 m!6110270))

(declare-fun m!6110272 () Bool)

(assert (=> d!1634091 m!6110272))

(assert (=> d!1634091 m!6110270))

(assert (=> d!1634091 m!6110272))

(declare-fun m!6110274 () Bool)

(assert (=> d!1634091 m!6110274))

(declare-fun m!6110276 () Bool)

(assert (=> b!5067307 m!6110276))

(declare-fun m!6110278 () Bool)

(assert (=> b!5067307 m!6110278))

(declare-fun m!6110280 () Bool)

(assert (=> b!5067307 m!6110280))

(assert (=> b!5067307 m!6110276))

(declare-fun m!6110282 () Bool)

(assert (=> b!5067307 m!6110282))

(assert (=> b!5067307 m!6110278))

(declare-fun m!6110284 () Bool)

(assert (=> b!5067307 m!6110284))

(assert (=> bm!353044 d!1634091))

(declare-fun d!1634093 () Bool)

(declare-fun res!2157522 () Bool)

(declare-fun e!3162182 () Bool)

(assert (=> d!1634093 (=> (not res!2157522) (not e!3162182))))

(assert (=> d!1634093 (= res!2157522 (= (csize!31358 (right!43146 (left!42816 ys!41))) (+ (size!39075 (left!42816 (right!43146 (left!42816 ys!41)))) (size!39075 (right!43146 (right!43146 (left!42816 ys!41)))))))))

(assert (=> d!1634093 (= (inv!77559 (right!43146 (left!42816 ys!41))) e!3162182)))

(declare-fun b!5067308 () Bool)

(declare-fun res!2157523 () Bool)

(assert (=> b!5067308 (=> (not res!2157523) (not e!3162182))))

(assert (=> b!5067308 (= res!2157523 (and (not (= (left!42816 (right!43146 (left!42816 ys!41))) Empty!15564)) (not (= (right!43146 (right!43146 (left!42816 ys!41))) Empty!15564))))))

(declare-fun b!5067309 () Bool)

(declare-fun res!2157524 () Bool)

(assert (=> b!5067309 (=> (not res!2157524) (not e!3162182))))

(assert (=> b!5067309 (= res!2157524 (= (cheight!15775 (right!43146 (left!42816 ys!41))) (+ (max!0 (height!2141 (left!42816 (right!43146 (left!42816 ys!41)))) (height!2141 (right!43146 (right!43146 (left!42816 ys!41))))) 1)))))

(declare-fun b!5067310 () Bool)

(assert (=> b!5067310 (= e!3162182 (<= 0 (cheight!15775 (right!43146 (left!42816 ys!41)))))))

(assert (= (and d!1634093 res!2157522) b!5067308))

(assert (= (and b!5067308 res!2157523) b!5067309))

(assert (= (and b!5067309 res!2157524) b!5067310))

(declare-fun m!6110286 () Bool)

(assert (=> d!1634093 m!6110286))

(declare-fun m!6110288 () Bool)

(assert (=> d!1634093 m!6110288))

(declare-fun m!6110290 () Bool)

(assert (=> b!5067309 m!6110290))

(declare-fun m!6110292 () Bool)

(assert (=> b!5067309 m!6110292))

(assert (=> b!5067309 m!6110290))

(assert (=> b!5067309 m!6110292))

(declare-fun m!6110294 () Bool)

(assert (=> b!5067309 m!6110294))

(assert (=> b!5066443 d!1634093))

(declare-fun b!5067311 () Bool)

(declare-fun res!2157527 () Bool)

(declare-fun e!3162184 () Bool)

(assert (=> b!5067311 (=> (not res!2157527) (not e!3162184))))

(assert (=> b!5067311 (= res!2157527 (isBalanced!4426 (left!42816 (left!42816 (left!42816 ys!41)))))))

(declare-fun b!5067312 () Bool)

(declare-fun e!3162183 () Bool)

(assert (=> b!5067312 (= e!3162183 e!3162184)))

(declare-fun res!2157530 () Bool)

(assert (=> b!5067312 (=> (not res!2157530) (not e!3162184))))

(assert (=> b!5067312 (= res!2157530 (<= (- 1) (- (height!2141 (left!42816 (left!42816 (left!42816 ys!41)))) (height!2141 (right!43146 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067313 () Bool)

(declare-fun res!2157525 () Bool)

(assert (=> b!5067313 (=> (not res!2157525) (not e!3162184))))

(assert (=> b!5067313 (= res!2157525 (not (isEmpty!31631 (left!42816 (left!42816 (left!42816 ys!41))))))))

(declare-fun b!5067315 () Bool)

(declare-fun res!2157529 () Bool)

(assert (=> b!5067315 (=> (not res!2157529) (not e!3162184))))

(assert (=> b!5067315 (= res!2157529 (<= (- (height!2141 (left!42816 (left!42816 (left!42816 ys!41)))) (height!2141 (right!43146 (left!42816 (left!42816 ys!41))))) 1))))

(declare-fun b!5067316 () Bool)

(assert (=> b!5067316 (= e!3162184 (not (isEmpty!31631 (right!43146 (left!42816 (left!42816 ys!41))))))))

(declare-fun b!5067314 () Bool)

(declare-fun res!2157526 () Bool)

(assert (=> b!5067314 (=> (not res!2157526) (not e!3162184))))

(assert (=> b!5067314 (= res!2157526 (isBalanced!4426 (right!43146 (left!42816 (left!42816 ys!41)))))))

(declare-fun d!1634095 () Bool)

(declare-fun res!2157528 () Bool)

(assert (=> d!1634095 (=> res!2157528 e!3162183)))

(assert (=> d!1634095 (= res!2157528 (not ((_ is Node!15564) (left!42816 (left!42816 ys!41)))))))

(assert (=> d!1634095 (= (isBalanced!4426 (left!42816 (left!42816 ys!41))) e!3162183)))

(assert (= (and d!1634095 (not res!2157528)) b!5067312))

(assert (= (and b!5067312 res!2157530) b!5067315))

(assert (= (and b!5067315 res!2157529) b!5067311))

(assert (= (and b!5067311 res!2157527) b!5067314))

(assert (= (and b!5067314 res!2157526) b!5067313))

(assert (= (and b!5067313 res!2157525) b!5067316))

(declare-fun m!6110296 () Bool)

(assert (=> b!5067313 m!6110296))

(declare-fun m!6110298 () Bool)

(assert (=> b!5067311 m!6110298))

(declare-fun m!6110300 () Bool)

(assert (=> b!5067316 m!6110300))

(declare-fun m!6110302 () Bool)

(assert (=> b!5067315 m!6110302))

(declare-fun m!6110304 () Bool)

(assert (=> b!5067315 m!6110304))

(declare-fun m!6110306 () Bool)

(assert (=> b!5067314 m!6110306))

(assert (=> b!5067312 m!6110302))

(assert (=> b!5067312 m!6110304))

(assert (=> b!5066579 d!1634095))

(declare-fun d!1634097 () Bool)

(assert (=> d!1634097 (= (list!18990 (xs!18914 (left!42816 (right!43146 xs!286)))) (innerList!15652 (xs!18914 (left!42816 (right!43146 xs!286)))))))

(assert (=> b!5066558 d!1634097))

(declare-fun d!1634099 () Bool)

(declare-fun lt!2089059 () Int)

(assert (=> d!1634099 (>= lt!2089059 0)))

(declare-fun e!3162185 () Int)

(assert (=> d!1634099 (= lt!2089059 e!3162185)))

(declare-fun c!869947 () Bool)

(assert (=> d!1634099 (= c!869947 ((_ is Nil!58434) (list!18990 (xs!18914 (left!42816 xs!286)))))))

(assert (=> d!1634099 (= (size!39074 (list!18990 (xs!18914 (left!42816 xs!286)))) lt!2089059)))

(declare-fun b!5067317 () Bool)

(assert (=> b!5067317 (= e!3162185 0)))

(declare-fun b!5067318 () Bool)

(assert (=> b!5067318 (= e!3162185 (+ 1 (size!39074 (t!371291 (list!18990 (xs!18914 (left!42816 xs!286)))))))))

(assert (= (and d!1634099 c!869947) b!5067317))

(assert (= (and d!1634099 (not c!869947)) b!5067318))

(declare-fun m!6110308 () Bool)

(assert (=> b!5067318 m!6110308))

(assert (=> b!5066611 d!1634099))

(declare-fun d!1634101 () Bool)

(assert (=> d!1634101 (= (list!18990 (xs!18914 (left!42816 xs!286))) (innerList!15652 (xs!18914 (left!42816 xs!286))))))

(assert (=> b!5066611 d!1634101))

(declare-fun b!5067319 () Bool)

(declare-fun res!2157533 () Bool)

(declare-fun e!3162187 () Bool)

(assert (=> b!5067319 (=> (not res!2157533) (not e!3162187))))

(assert (=> b!5067319 (= res!2157533 (isBalanced!4426 (left!42816 (left!42816 (left!42816 xs!286)))))))

(declare-fun b!5067320 () Bool)

(declare-fun e!3162186 () Bool)

(assert (=> b!5067320 (= e!3162186 e!3162187)))

(declare-fun res!2157536 () Bool)

(assert (=> b!5067320 (=> (not res!2157536) (not e!3162187))))

(assert (=> b!5067320 (= res!2157536 (<= (- 1) (- (height!2141 (left!42816 (left!42816 (left!42816 xs!286)))) (height!2141 (right!43146 (left!42816 (left!42816 xs!286)))))))))

(declare-fun b!5067321 () Bool)

(declare-fun res!2157531 () Bool)

(assert (=> b!5067321 (=> (not res!2157531) (not e!3162187))))

(assert (=> b!5067321 (= res!2157531 (not (isEmpty!31631 (left!42816 (left!42816 (left!42816 xs!286))))))))

(declare-fun b!5067323 () Bool)

(declare-fun res!2157535 () Bool)

(assert (=> b!5067323 (=> (not res!2157535) (not e!3162187))))

(assert (=> b!5067323 (= res!2157535 (<= (- (height!2141 (left!42816 (left!42816 (left!42816 xs!286)))) (height!2141 (right!43146 (left!42816 (left!42816 xs!286))))) 1))))

(declare-fun b!5067324 () Bool)

(assert (=> b!5067324 (= e!3162187 (not (isEmpty!31631 (right!43146 (left!42816 (left!42816 xs!286))))))))

(declare-fun b!5067322 () Bool)

(declare-fun res!2157532 () Bool)

(assert (=> b!5067322 (=> (not res!2157532) (not e!3162187))))

(assert (=> b!5067322 (= res!2157532 (isBalanced!4426 (right!43146 (left!42816 (left!42816 xs!286)))))))

(declare-fun d!1634103 () Bool)

(declare-fun res!2157534 () Bool)

(assert (=> d!1634103 (=> res!2157534 e!3162186)))

(assert (=> d!1634103 (= res!2157534 (not ((_ is Node!15564) (left!42816 (left!42816 xs!286)))))))

(assert (=> d!1634103 (= (isBalanced!4426 (left!42816 (left!42816 xs!286))) e!3162186)))

(assert (= (and d!1634103 (not res!2157534)) b!5067320))

(assert (= (and b!5067320 res!2157536) b!5067323))

(assert (= (and b!5067323 res!2157535) b!5067319))

(assert (= (and b!5067319 res!2157533) b!5067322))

(assert (= (and b!5067322 res!2157532) b!5067321))

(assert (= (and b!5067321 res!2157531) b!5067324))

(declare-fun m!6110310 () Bool)

(assert (=> b!5067321 m!6110310))

(declare-fun m!6110312 () Bool)

(assert (=> b!5067319 m!6110312))

(declare-fun m!6110314 () Bool)

(assert (=> b!5067324 m!6110314))

(declare-fun m!6110316 () Bool)

(assert (=> b!5067323 m!6110316))

(declare-fun m!6110318 () Bool)

(assert (=> b!5067323 m!6110318))

(declare-fun m!6110320 () Bool)

(assert (=> b!5067322 m!6110320))

(assert (=> b!5067320 m!6110316))

(assert (=> b!5067320 m!6110318))

(assert (=> b!5066718 d!1634103))

(declare-fun b!5067325 () Bool)

(declare-fun res!2157539 () Bool)

(declare-fun e!3162189 () Bool)

(assert (=> b!5067325 (=> (not res!2157539) (not e!3162189))))

(assert (=> b!5067325 (= res!2157539 (isBalanced!4426 (left!42816 (left!42816 (right!43146 ys!41)))))))

(declare-fun b!5067326 () Bool)

(declare-fun e!3162188 () Bool)

(assert (=> b!5067326 (= e!3162188 e!3162189)))

(declare-fun res!2157542 () Bool)

(assert (=> b!5067326 (=> (not res!2157542) (not e!3162189))))

(assert (=> b!5067326 (= res!2157542 (<= (- 1) (- (height!2141 (left!42816 (left!42816 (right!43146 ys!41)))) (height!2141 (right!43146 (left!42816 (right!43146 ys!41)))))))))

(declare-fun b!5067327 () Bool)

(declare-fun res!2157537 () Bool)

(assert (=> b!5067327 (=> (not res!2157537) (not e!3162189))))

(assert (=> b!5067327 (= res!2157537 (not (isEmpty!31631 (left!42816 (left!42816 (right!43146 ys!41))))))))

(declare-fun b!5067329 () Bool)

(declare-fun res!2157541 () Bool)

(assert (=> b!5067329 (=> (not res!2157541) (not e!3162189))))

(assert (=> b!5067329 (= res!2157541 (<= (- (height!2141 (left!42816 (left!42816 (right!43146 ys!41)))) (height!2141 (right!43146 (left!42816 (right!43146 ys!41))))) 1))))

(declare-fun b!5067330 () Bool)

(assert (=> b!5067330 (= e!3162189 (not (isEmpty!31631 (right!43146 (left!42816 (right!43146 ys!41))))))))

(declare-fun b!5067328 () Bool)

(declare-fun res!2157538 () Bool)

(assert (=> b!5067328 (=> (not res!2157538) (not e!3162189))))

(assert (=> b!5067328 (= res!2157538 (isBalanced!4426 (right!43146 (left!42816 (right!43146 ys!41)))))))

(declare-fun d!1634105 () Bool)

(declare-fun res!2157540 () Bool)

(assert (=> d!1634105 (=> res!2157540 e!3162188)))

(assert (=> d!1634105 (= res!2157540 (not ((_ is Node!15564) (left!42816 (right!43146 ys!41)))))))

(assert (=> d!1634105 (= (isBalanced!4426 (left!42816 (right!43146 ys!41))) e!3162188)))

(assert (= (and d!1634105 (not res!2157540)) b!5067326))

(assert (= (and b!5067326 res!2157542) b!5067329))

(assert (= (and b!5067329 res!2157541) b!5067325))

(assert (= (and b!5067325 res!2157539) b!5067328))

(assert (= (and b!5067328 res!2157538) b!5067327))

(assert (= (and b!5067327 res!2157537) b!5067330))

(declare-fun m!6110322 () Bool)

(assert (=> b!5067327 m!6110322))

(declare-fun m!6110324 () Bool)

(assert (=> b!5067325 m!6110324))

(declare-fun m!6110326 () Bool)

(assert (=> b!5067330 m!6110326))

(declare-fun m!6110328 () Bool)

(assert (=> b!5067329 m!6110328))

(declare-fun m!6110330 () Bool)

(assert (=> b!5067329 m!6110330))

(declare-fun m!6110332 () Bool)

(assert (=> b!5067328 m!6110332))

(assert (=> b!5067326 m!6110328))

(assert (=> b!5067326 m!6110330))

(assert (=> b!5066730 d!1634105))

(declare-fun d!1634107 () Bool)

(declare-fun lt!2089060 () Int)

(assert (=> d!1634107 (= lt!2089060 (size!39074 (list!18989 (left!42816 (right!43146 ys!41)))))))

(assert (=> d!1634107 (= lt!2089060 (ite ((_ is Empty!15564) (left!42816 (right!43146 ys!41))) 0 (ite ((_ is Leaf!25851) (left!42816 (right!43146 ys!41))) (csize!31359 (left!42816 (right!43146 ys!41))) (csize!31358 (left!42816 (right!43146 ys!41))))))))

(assert (=> d!1634107 (= (size!39075 (left!42816 (right!43146 ys!41))) lt!2089060)))

(declare-fun bs!1189938 () Bool)

(assert (= bs!1189938 d!1634107))

(assert (=> bs!1189938 m!6108676))

(assert (=> bs!1189938 m!6108676))

(assert (=> bs!1189938 m!6109710))

(assert (=> d!1633543 d!1634107))

(declare-fun d!1634109 () Bool)

(declare-fun lt!2089061 () Int)

(assert (=> d!1634109 (= lt!2089061 (size!39074 (list!18989 (right!43146 (right!43146 ys!41)))))))

(assert (=> d!1634109 (= lt!2089061 (ite ((_ is Empty!15564) (right!43146 (right!43146 ys!41))) 0 (ite ((_ is Leaf!25851) (right!43146 (right!43146 ys!41))) (csize!31359 (right!43146 (right!43146 ys!41))) (csize!31358 (right!43146 (right!43146 ys!41))))))))

(assert (=> d!1634109 (= (size!39075 (right!43146 (right!43146 ys!41))) lt!2089061)))

(declare-fun bs!1189939 () Bool)

(assert (= bs!1189939 d!1634109))

(assert (=> bs!1189939 m!6108680))

(assert (=> bs!1189939 m!6108680))

(assert (=> bs!1189939 m!6109712))

(assert (=> d!1633543 d!1634109))

(declare-fun d!1634111 () Bool)

(assert (=> d!1634111 (= (isEmpty!31632 (list!18989 (right!43146 ys!41))) ((_ is Nil!58434) (list!18989 (right!43146 ys!41))))))

(assert (=> d!1633643 d!1634111))

(assert (=> d!1633643 d!1633503))

(assert (=> d!1633643 d!1633887))

(declare-fun call!353132 () List!58558)

(declare-fun call!353133 () List!58558)

(declare-fun bm!353125 () Bool)

(assert (=> bm!353125 (= call!353132 (++!12789 call!353133 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))

(declare-fun bm!353126 () Bool)

(declare-fun call!353131 () List!58558)

(assert (=> bm!353126 (= call!353131 (++!12789 (list!18989 (left!42816 (right!43146 xs!286))) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))

(declare-fun bm!353127 () Bool)

(declare-fun call!353130 () List!58558)

(assert (=> bm!353127 (= call!353130 (++!12789 (t!371291 (list!18989 (left!42816 xs!286))) call!353131))))

(declare-fun b!5067332 () Bool)

(declare-fun e!3162190 () Bool)

(assert (=> b!5067332 (= e!3162190 (= call!353132 call!353130))))

(declare-fun bm!353128 () Bool)

(assert (=> bm!353128 (= call!353133 (++!12789 (t!371291 (list!18989 (left!42816 xs!286))) (list!18989 (left!42816 (right!43146 xs!286)))))))

(declare-fun d!1634113 () Bool)

(assert (=> d!1634113 e!3162190))

(declare-fun c!869948 () Bool)

(assert (=> d!1634113 (= c!869948 ((_ is Nil!58434) (t!371291 (list!18989 (left!42816 xs!286)))))))

(assert (=> d!1634113 (= (appendAssoc!301 (t!371291 (list!18989 (left!42816 xs!286))) (list!18989 (left!42816 (right!43146 xs!286))) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))) true)))

(declare-fun b!5067331 () Bool)

(assert (=> b!5067331 (= e!3162190 (= call!353132 call!353130))))

(declare-fun lt!2089062 () Bool)

(assert (=> b!5067331 (= lt!2089062 (appendAssoc!301 (t!371291 (t!371291 (list!18989 (left!42816 xs!286)))) (list!18989 (left!42816 (right!43146 xs!286))) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))

(assert (= (and d!1634113 c!869948) b!5067332))

(assert (= (and d!1634113 (not c!869948)) b!5067331))

(assert (= (or b!5067332 b!5067331) bm!353128))

(assert (= (or b!5067332 b!5067331) bm!353126))

(assert (= (or b!5067332 b!5067331) bm!353127))

(assert (= (or b!5067332 b!5067331) bm!353125))

(declare-fun m!6110334 () Bool)

(assert (=> bm!353127 m!6110334))

(assert (=> bm!353128 m!6108092))

(assert (=> bm!353128 m!6108766))

(assert (=> bm!353126 m!6108092))

(assert (=> bm!353126 m!6108110))

(assert (=> bm!353126 m!6108774))

(assert (=> b!5067331 m!6108092))

(assert (=> b!5067331 m!6108110))

(declare-fun m!6110336 () Bool)

(assert (=> b!5067331 m!6110336))

(assert (=> bm!353125 m!6108110))

(declare-fun m!6110338 () Bool)

(assert (=> bm!353125 m!6110338))

(assert (=> b!5066575 d!1634113))

(assert (=> b!5066500 d!1633461))

(assert (=> b!5066500 d!1633465))

(declare-fun b!5067335 () Bool)

(declare-fun res!2157544 () Bool)

(declare-fun e!3162191 () Bool)

(assert (=> b!5067335 (=> (not res!2157544) (not e!3162191))))

(declare-fun lt!2089063 () List!58558)

(assert (=> b!5067335 (= res!2157544 (= (size!39074 lt!2089063) (+ (size!39074 (list!18989 xs!286)) (size!39074 call!353067))))))

(declare-fun b!5067336 () Bool)

(assert (=> b!5067336 (= e!3162191 (or (not (= call!353067 Nil!58434)) (= lt!2089063 (list!18989 xs!286))))))

(declare-fun b!5067334 () Bool)

(declare-fun e!3162192 () List!58558)

(assert (=> b!5067334 (= e!3162192 (Cons!58434 (h!64882 (list!18989 xs!286)) (++!12789 (t!371291 (list!18989 xs!286)) call!353067)))))

(declare-fun b!5067333 () Bool)

(assert (=> b!5067333 (= e!3162192 call!353067)))

(declare-fun d!1634115 () Bool)

(assert (=> d!1634115 e!3162191))

(declare-fun res!2157543 () Bool)

(assert (=> d!1634115 (=> (not res!2157543) (not e!3162191))))

(assert (=> d!1634115 (= res!2157543 (= (content!10417 lt!2089063) ((_ map or) (content!10417 (list!18989 xs!286)) (content!10417 call!353067))))))

(assert (=> d!1634115 (= lt!2089063 e!3162192)))

(declare-fun c!869949 () Bool)

(assert (=> d!1634115 (= c!869949 ((_ is Nil!58434) (list!18989 xs!286)))))

(assert (=> d!1634115 (= (++!12789 (list!18989 xs!286) call!353067) lt!2089063)))

(assert (= (and d!1634115 c!869949) b!5067333))

(assert (= (and d!1634115 (not c!869949)) b!5067334))

(assert (= (and d!1634115 res!2157543) b!5067335))

(assert (= (and b!5067335 res!2157544) b!5067336))

(declare-fun m!6110340 () Bool)

(assert (=> b!5067335 m!6110340))

(assert (=> b!5067335 m!6107972))

(assert (=> b!5067335 m!6108162))

(declare-fun m!6110342 () Bool)

(assert (=> b!5067335 m!6110342))

(declare-fun m!6110344 () Bool)

(assert (=> b!5067334 m!6110344))

(declare-fun m!6110346 () Bool)

(assert (=> d!1634115 m!6110346))

(assert (=> d!1634115 m!6107972))

(assert (=> d!1634115 m!6108170))

(declare-fun m!6110348 () Bool)

(assert (=> d!1634115 m!6110348))

(assert (=> bm!353063 d!1634115))

(assert (=> b!5066518 d!1633835))

(assert (=> b!5066518 d!1633653))

(declare-fun d!1634117 () Bool)

(declare-fun lt!2089064 () Bool)

(assert (=> d!1634117 (= lt!2089064 (isEmpty!31632 (list!18989 (left!42816 (left!42816 lt!2088868)))))))

(assert (=> d!1634117 (= lt!2089064 (= (size!39075 (left!42816 (left!42816 lt!2088868))) 0))))

(assert (=> d!1634117 (= (isEmpty!31631 (left!42816 (left!42816 lt!2088868))) lt!2089064)))

(declare-fun bs!1189940 () Bool)

(assert (= bs!1189940 d!1634117))

(assert (=> bs!1189940 m!6108514))

(assert (=> bs!1189940 m!6108514))

(declare-fun m!6110350 () Bool)

(assert (=> bs!1189940 m!6110350))

(declare-fun m!6110352 () Bool)

(assert (=> bs!1189940 m!6110352))

(assert (=> b!5066657 d!1634117))

(declare-fun bm!353129 () Bool)

(declare-fun call!353136 () List!58558)

(declare-fun call!353137 () List!58558)

(assert (=> bm!353129 (= call!353136 (++!12789 call!353137 (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353130 () Bool)

(declare-fun call!353135 () List!58558)

(assert (=> bm!353130 (= call!353135 (++!12789 (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))))))

(declare-fun bm!353131 () Bool)

(declare-fun call!353134 () List!58558)

(assert (=> bm!353131 (= call!353134 (++!12789 (t!371291 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) call!353135))))

(declare-fun b!5067338 () Bool)

(declare-fun e!3162193 () Bool)

(assert (=> b!5067338 (= e!3162193 (= call!353136 call!353134))))

(declare-fun bm!353132 () Bool)

(assert (=> bm!353132 (= call!353137 (++!12789 (t!371291 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun d!1634119 () Bool)

(assert (=> d!1634119 e!3162193))

(declare-fun c!869950 () Bool)

(assert (=> d!1634119 (= c!869950 ((_ is Nil!58434) (t!371291 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))))))))

(assert (=> d!1634119 (= (appendAssoc!301 (t!371291 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))) true)))

(declare-fun b!5067337 () Bool)

(assert (=> b!5067337 (= e!3162193 (= call!353136 call!353134))))

(declare-fun lt!2089065 () Bool)

(assert (=> b!5067337 (= lt!2089065 (appendAssoc!301 (t!371291 (t!371291 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))))) (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))))))

(assert (= (and d!1634119 c!869950) b!5067338))

(assert (= (and d!1634119 (not c!869950)) b!5067337))

(assert (= (or b!5067338 b!5067337) bm!353132))

(assert (= (or b!5067338 b!5067337) bm!353130))

(assert (= (or b!5067338 b!5067337) bm!353131))

(assert (= (or b!5067338 b!5067337) bm!353129))

(declare-fun m!6110354 () Bool)

(assert (=> bm!353131 m!6110354))

(assert (=> bm!353132 m!6108106))

(assert (=> bm!353132 m!6109640))

(assert (=> bm!353130 m!6108106))

(assert (=> bm!353130 m!6108100))

(assert (=> bm!353130 m!6109036))

(assert (=> b!5067337 m!6108106))

(assert (=> b!5067337 m!6108100))

(declare-fun m!6110356 () Bool)

(assert (=> b!5067337 m!6110356))

(assert (=> bm!353129 m!6108100))

(declare-fun m!6110358 () Bool)

(assert (=> bm!353129 m!6110358))

(assert (=> b!5066708 d!1634119))

(declare-fun d!1634121 () Bool)

(assert (=> d!1634121 (= (height!2141 (left!42816 (right!43146 (right!43146 xs!286)))) (ite ((_ is Empty!15564) (left!42816 (right!43146 (right!43146 xs!286)))) 0 (ite ((_ is Leaf!25851) (left!42816 (right!43146 (right!43146 xs!286)))) 1 (cheight!15775 (left!42816 (right!43146 (right!43146 xs!286)))))))))

(assert (=> b!5066629 d!1634121))

(declare-fun d!1634123 () Bool)

(assert (=> d!1634123 (= (height!2141 (right!43146 (right!43146 (right!43146 xs!286)))) (ite ((_ is Empty!15564) (right!43146 (right!43146 (right!43146 xs!286)))) 0 (ite ((_ is Leaf!25851) (right!43146 (right!43146 (right!43146 xs!286)))) 1 (cheight!15775 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(assert (=> b!5066629 d!1634123))

(declare-fun b!5067339 () Bool)

(declare-fun res!2157547 () Bool)

(declare-fun e!3162195 () Bool)

(assert (=> b!5067339 (=> (not res!2157547) (not e!3162195))))

(assert (=> b!5067339 (= res!2157547 (isBalanced!4426 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067340 () Bool)

(declare-fun e!3162194 () Bool)

(assert (=> b!5067340 (= e!3162194 e!3162195)))

(declare-fun res!2157550 () Bool)

(assert (=> b!5067340 (=> (not res!2157550) (not e!3162195))))

(assert (=> b!5067340 (= res!2157550 (<= (- 1) (- (height!2141 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (height!2141 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))))

(declare-fun b!5067341 () Bool)

(declare-fun res!2157545 () Bool)

(assert (=> b!5067341 (=> (not res!2157545) (not e!3162195))))

(assert (=> b!5067341 (= res!2157545 (not (isEmpty!31631 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun b!5067343 () Bool)

(declare-fun res!2157549 () Bool)

(assert (=> b!5067343 (=> (not res!2157549) (not e!3162195))))

(assert (=> b!5067343 (= res!2157549 (<= (- (height!2141 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (height!2141 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))) 1))))

(declare-fun b!5067344 () Bool)

(assert (=> b!5067344 (= e!3162195 (not (isEmpty!31631 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun b!5067342 () Bool)

(declare-fun res!2157546 () Bool)

(assert (=> b!5067342 (=> (not res!2157546) (not e!3162195))))

(assert (=> b!5067342 (= res!2157546 (isBalanced!4426 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))

(declare-fun d!1634125 () Bool)

(declare-fun res!2157548 () Bool)

(assert (=> d!1634125 (=> res!2157548 e!3162194)))

(assert (=> d!1634125 (= res!2157548 (not ((_ is Node!15564) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))

(assert (=> d!1634125 (= (isBalanced!4426 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) e!3162194)))

(assert (= (and d!1634125 (not res!2157548)) b!5067340))

(assert (= (and b!5067340 res!2157550) b!5067343))

(assert (= (and b!5067343 res!2157549) b!5067339))

(assert (= (and b!5067339 res!2157547) b!5067342))

(assert (= (and b!5067342 res!2157546) b!5067341))

(assert (= (and b!5067341 res!2157545) b!5067344))

(declare-fun m!6110360 () Bool)

(assert (=> b!5067341 m!6110360))

(declare-fun m!6110362 () Bool)

(assert (=> b!5067339 m!6110362))

(declare-fun m!6110364 () Bool)

(assert (=> b!5067344 m!6110364))

(declare-fun m!6110366 () Bool)

(assert (=> b!5067343 m!6110366))

(declare-fun m!6110368 () Bool)

(assert (=> b!5067343 m!6110368))

(declare-fun m!6110370 () Bool)

(assert (=> b!5067342 m!6110370))

(assert (=> b!5067340 m!6110366))

(assert (=> b!5067340 m!6110368))

(assert (=> b!5066685 d!1634125))

(declare-fun b!5067347 () Bool)

(declare-fun res!2157552 () Bool)

(declare-fun e!3162196 () Bool)

(assert (=> b!5067347 (=> (not res!2157552) (not e!3162196))))

(declare-fun lt!2089066 () List!58558)

(assert (=> b!5067347 (= res!2157552 (= (size!39074 lt!2089066) (+ (size!39074 (list!18989 (left!42816 xs!286))) (size!39074 call!353015))))))

(declare-fun b!5067348 () Bool)

(assert (=> b!5067348 (= e!3162196 (or (not (= call!353015 Nil!58434)) (= lt!2089066 (list!18989 (left!42816 xs!286)))))))

(declare-fun b!5067346 () Bool)

(declare-fun e!3162197 () List!58558)

(assert (=> b!5067346 (= e!3162197 (Cons!58434 (h!64882 (list!18989 (left!42816 xs!286))) (++!12789 (t!371291 (list!18989 (left!42816 xs!286))) call!353015)))))

(declare-fun b!5067345 () Bool)

(assert (=> b!5067345 (= e!3162197 call!353015)))

(declare-fun d!1634127 () Bool)

(assert (=> d!1634127 e!3162196))

(declare-fun res!2157551 () Bool)

(assert (=> d!1634127 (=> (not res!2157551) (not e!3162196))))

(assert (=> d!1634127 (= res!2157551 (= (content!10417 lt!2089066) ((_ map or) (content!10417 (list!18989 (left!42816 xs!286))) (content!10417 call!353015))))))

(assert (=> d!1634127 (= lt!2089066 e!3162197)))

(declare-fun c!869951 () Bool)

(assert (=> d!1634127 (= c!869951 ((_ is Nil!58434) (list!18989 (left!42816 xs!286))))))

(assert (=> d!1634127 (= (++!12789 (list!18989 (left!42816 xs!286)) call!353015) lt!2089066)))

(assert (= (and d!1634127 c!869951) b!5067345))

(assert (= (and d!1634127 (not c!869951)) b!5067346))

(assert (= (and d!1634127 res!2157551) b!5067347))

(assert (= (and b!5067347 res!2157552) b!5067348))

(declare-fun m!6110372 () Bool)

(assert (=> b!5067347 m!6110372))

(assert (=> b!5067347 m!6108112))

(assert (=> b!5067347 m!6108462))

(declare-fun m!6110374 () Bool)

(assert (=> b!5067347 m!6110374))

(declare-fun m!6110376 () Bool)

(assert (=> b!5067346 m!6110376))

(declare-fun m!6110378 () Bool)

(assert (=> d!1634127 m!6110378))

(assert (=> d!1634127 m!6108112))

(assert (=> d!1634127 m!6108470))

(declare-fun m!6110380 () Bool)

(assert (=> d!1634127 m!6110380))

(assert (=> bm!353011 d!1634127))

(assert (=> b!5066497 d!1633915))

(assert (=> b!5066497 d!1633917))

(declare-fun d!1634129 () Bool)

(declare-fun c!869952 () Bool)

(assert (=> d!1634129 (= c!869952 ((_ is Empty!15564) lt!2088929))))

(declare-fun e!3162198 () List!58558)

(assert (=> d!1634129 (= (list!18989 lt!2088929) e!3162198)))

(declare-fun b!5067350 () Bool)

(declare-fun e!3162199 () List!58558)

(assert (=> b!5067350 (= e!3162198 e!3162199)))

(declare-fun c!869953 () Bool)

(assert (=> b!5067350 (= c!869953 ((_ is Leaf!25851) lt!2088929))))

(declare-fun b!5067349 () Bool)

(assert (=> b!5067349 (= e!3162198 Nil!58434)))

(declare-fun b!5067352 () Bool)

(assert (=> b!5067352 (= e!3162199 (++!12789 (list!18989 (left!42816 lt!2088929)) (list!18989 (right!43146 lt!2088929))))))

(declare-fun b!5067351 () Bool)

(assert (=> b!5067351 (= e!3162199 (list!18990 (xs!18914 lt!2088929)))))

(assert (= (and d!1634129 c!869952) b!5067349))

(assert (= (and d!1634129 (not c!869952)) b!5067350))

(assert (= (and b!5067350 c!869953) b!5067351))

(assert (= (and b!5067350 (not c!869953)) b!5067352))

(declare-fun m!6110382 () Bool)

(assert (=> b!5067352 m!6110382))

(declare-fun m!6110384 () Bool)

(assert (=> b!5067352 m!6110384))

(assert (=> b!5067352 m!6110382))

(assert (=> b!5067352 m!6110384))

(declare-fun m!6110386 () Bool)

(assert (=> b!5067352 m!6110386))

(declare-fun m!6110388 () Bool)

(assert (=> b!5067351 m!6110388))

(assert (=> d!1633489 d!1634129))

(declare-fun b!5067355 () Bool)

(declare-fun res!2157554 () Bool)

(declare-fun e!3162200 () Bool)

(assert (=> b!5067355 (=> (not res!2157554) (not e!3162200))))

(declare-fun lt!2089067 () List!58558)

(assert (=> b!5067355 (= res!2157554 (= (size!39074 lt!2089067) (+ (size!39074 (list!18989 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))))) (size!39074 (list!18989 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))))))))

(declare-fun b!5067356 () Bool)

(assert (=> b!5067356 (= e!3162200 (or (not (= (list!18989 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) Nil!58434)) (= lt!2089067 (list!18989 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))))))))

(declare-fun e!3162201 () List!58558)

(declare-fun b!5067354 () Bool)

(assert (=> b!5067354 (= e!3162201 (Cons!58434 (h!64882 (list!18989 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))))) (++!12789 (t!371291 (list!18989 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))))) (list!18989 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))))))))

(declare-fun b!5067353 () Bool)

(assert (=> b!5067353 (= e!3162201 (list!18989 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))))))

(declare-fun d!1634131 () Bool)

(assert (=> d!1634131 e!3162200))

(declare-fun res!2157553 () Bool)

(assert (=> d!1634131 (=> (not res!2157553) (not e!3162200))))

(assert (=> d!1634131 (= res!2157553 (= (content!10417 lt!2089067) ((_ map or) (content!10417 (list!18989 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))))) (content!10417 (list!18989 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))))))))

(assert (=> d!1634131 (= lt!2089067 e!3162201)))

(declare-fun c!869954 () Bool)

(assert (=> d!1634131 (= c!869954 ((_ is Nil!58434) (list!18989 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))))))))

(assert (=> d!1634131 (= (++!12789 (list!18989 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) (list!18989 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))) lt!2089067)))

(assert (= (and d!1634131 c!869954) b!5067353))

(assert (= (and d!1634131 (not c!869954)) b!5067354))

(assert (= (and d!1634131 res!2157553) b!5067355))

(assert (= (and b!5067355 res!2157554) b!5067356))

(declare-fun m!6110390 () Bool)

(assert (=> b!5067355 m!6110390))

(assert (=> b!5067355 m!6108642))

(declare-fun m!6110392 () Bool)

(assert (=> b!5067355 m!6110392))

(assert (=> b!5067355 m!6108644))

(declare-fun m!6110394 () Bool)

(assert (=> b!5067355 m!6110394))

(assert (=> b!5067354 m!6108644))

(declare-fun m!6110396 () Bool)

(assert (=> b!5067354 m!6110396))

(declare-fun m!6110398 () Bool)

(assert (=> d!1634131 m!6110398))

(assert (=> d!1634131 m!6108642))

(declare-fun m!6110400 () Bool)

(assert (=> d!1634131 m!6110400))

(assert (=> d!1634131 m!6108644))

(declare-fun m!6110402 () Bool)

(assert (=> d!1634131 m!6110402))

(assert (=> d!1633489 d!1634131))

(declare-fun c!869955 () Bool)

(declare-fun d!1634133 () Bool)

(assert (=> d!1634133 (= c!869955 ((_ is Empty!15564) (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))))))

(declare-fun e!3162202 () List!58558)

(assert (=> d!1634133 (= (list!18989 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) e!3162202)))

(declare-fun b!5067358 () Bool)

(declare-fun e!3162203 () List!58558)

(assert (=> b!5067358 (= e!3162202 e!3162203)))

(declare-fun c!869956 () Bool)

(assert (=> b!5067358 (= c!869956 ((_ is Leaf!25851) (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))))))

(declare-fun b!5067357 () Bool)

(assert (=> b!5067357 (= e!3162202 Nil!58434)))

(declare-fun b!5067360 () Bool)

(assert (=> b!5067360 (= e!3162203 (++!12789 (list!18989 (left!42816 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))))) (list!18989 (right!43146 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))))))))

(declare-fun b!5067359 () Bool)

(assert (=> b!5067359 (= e!3162203 (list!18990 (xs!18914 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))))))))

(assert (= (and d!1634133 c!869955) b!5067357))

(assert (= (and d!1634133 (not c!869955)) b!5067358))

(assert (= (and b!5067358 c!869956) b!5067359))

(assert (= (and b!5067358 (not c!869956)) b!5067360))

(declare-fun m!6110404 () Bool)

(assert (=> b!5067360 m!6110404))

(declare-fun m!6110406 () Bool)

(assert (=> b!5067360 m!6110406))

(assert (=> b!5067360 m!6110404))

(assert (=> b!5067360 m!6110406))

(declare-fun m!6110408 () Bool)

(assert (=> b!5067360 m!6110408))

(declare-fun m!6110410 () Bool)

(assert (=> b!5067359 m!6110410))

(assert (=> d!1633489 d!1634133))

(declare-fun d!1634135 () Bool)

(declare-fun c!869957 () Bool)

(assert (=> d!1634135 (= c!869957 ((_ is Empty!15564) (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))))))

(declare-fun e!3162204 () List!58558)

(assert (=> d!1634135 (= (list!18989 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) e!3162204)))

(declare-fun b!5067362 () Bool)

(declare-fun e!3162205 () List!58558)

(assert (=> b!5067362 (= e!3162204 e!3162205)))

(declare-fun c!869958 () Bool)

(assert (=> b!5067362 (= c!869958 ((_ is Leaf!25851) (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))))))

(declare-fun b!5067361 () Bool)

(assert (=> b!5067361 (= e!3162204 Nil!58434)))

(declare-fun b!5067364 () Bool)

(assert (=> b!5067364 (= e!3162205 (++!12789 (list!18989 (left!42816 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))) (list!18989 (right!43146 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))))))))

(declare-fun b!5067363 () Bool)

(assert (=> b!5067363 (= e!3162205 (list!18990 (xs!18914 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))))))

(assert (= (and d!1634135 c!869957) b!5067361))

(assert (= (and d!1634135 (not c!869957)) b!5067362))

(assert (= (and b!5067362 c!869958) b!5067363))

(assert (= (and b!5067362 (not c!869958)) b!5067364))

(declare-fun m!6110412 () Bool)

(assert (=> b!5067364 m!6110412))

(declare-fun m!6110414 () Bool)

(assert (=> b!5067364 m!6110414))

(assert (=> b!5067364 m!6110412))

(assert (=> b!5067364 m!6110414))

(declare-fun m!6110416 () Bool)

(assert (=> b!5067364 m!6110416))

(declare-fun m!6110418 () Bool)

(assert (=> b!5067363 m!6110418))

(assert (=> d!1633489 d!1634135))

(declare-fun d!1634137 () Bool)

(assert (=> d!1634137 (= (isEmpty!31632 (list!18989 (left!42816 xs!286))) ((_ is Nil!58434) (list!18989 (left!42816 xs!286))))))

(assert (=> d!1633605 d!1634137))

(assert (=> d!1633605 d!1633417))

(assert (=> d!1633605 d!1633463))

(declare-fun d!1634139 () Bool)

(assert (=> d!1634139 (= (height!2141 lt!2088958) (ite ((_ is Empty!15564) lt!2088958) 0 (ite ((_ is Leaf!25851) lt!2088958) 1 (cheight!15775 lt!2088958))))))

(assert (=> b!5066669 d!1634139))

(declare-fun d!1634141 () Bool)

(assert (=> d!1634141 (= (max!0 (height!2141 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (height!2141 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (ite (< (height!2141 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (height!2141 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (height!2141 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (height!2141 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))))

(assert (=> b!5066669 d!1634141))

(assert (=> b!5066669 d!1634053))

(assert (=> b!5066669 d!1634051))

(declare-fun bm!353133 () Bool)

(declare-fun call!353140 () List!58558)

(declare-fun call!353141 () List!58558)

(assert (=> bm!353133 (= call!353140 (++!12789 call!353141 (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun bm!353134 () Bool)

(declare-fun call!353139 () List!58558)

(assert (=> bm!353134 (= call!353139 (++!12789 (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(declare-fun bm!353135 () Bool)

(declare-fun call!353138 () List!58558)

(assert (=> bm!353135 (= call!353138 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) call!353139))))

(declare-fun b!5067366 () Bool)

(declare-fun e!3162206 () Bool)

(assert (=> b!5067366 (= e!3162206 (= call!353140 call!353138))))

(declare-fun bm!353136 () Bool)

(assert (=> bm!353136 (= call!353141 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 (left!42816 ys!41)))))))

(declare-fun d!1634143 () Bool)

(assert (=> d!1634143 e!3162206))

(declare-fun c!869959 () Bool)

(assert (=> d!1634143 (= c!869959 ((_ is Nil!58434) (list!18989 (right!43146 (right!43146 xs!286)))))))

(assert (=> d!1634143 (= (appendAssoc!301 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))) true)))

(declare-fun b!5067365 () Bool)

(assert (=> b!5067365 (= e!3162206 (= call!353140 call!353138))))

(declare-fun lt!2089068 () Bool)

(assert (=> b!5067365 (= lt!2089068 (appendAssoc!301 (t!371291 (list!18989 (right!43146 (right!43146 xs!286)))) (list!18989 (left!42816 (left!42816 ys!41))) (list!18989 (right!43146 (left!42816 ys!41)))))))

(assert (= (and d!1634143 c!869959) b!5067366))

(assert (= (and d!1634143 (not c!869959)) b!5067365))

(assert (= (or b!5067366 b!5067365) bm!353136))

(assert (= (or b!5067366 b!5067365) bm!353134))

(assert (= (or b!5067366 b!5067365) bm!353135))

(assert (= (or b!5067366 b!5067365) bm!353133))

(assert (=> bm!353135 m!6108094))

(declare-fun m!6110420 () Bool)

(assert (=> bm!353135 m!6110420))

(assert (=> bm!353136 m!6108094))

(assert (=> bm!353136 m!6108104))

(assert (=> bm!353136 m!6108870))

(assert (=> bm!353134 m!6108104))

(assert (=> bm!353134 m!6108106))

(assert (=> bm!353134 m!6108672))

(assert (=> b!5067365 m!6108104))

(assert (=> b!5067365 m!6108106))

(declare-fun m!6110422 () Bool)

(assert (=> b!5067365 m!6110422))

(assert (=> bm!353133 m!6108106))

(declare-fun m!6110424 () Bool)

(assert (=> bm!353133 m!6110424))

(assert (=> b!5066615 d!1634143))

(assert (=> b!5066615 d!1633437))

(assert (=> b!5066615 d!1633637))

(assert (=> b!5066615 d!1633627))

(declare-fun d!1634145 () Bool)

(assert (=> d!1634145 (= (height!2141 (left!42816 (left!42816 ys!41))) (ite ((_ is Empty!15564) (left!42816 (left!42816 ys!41))) 0 (ite ((_ is Leaf!25851) (left!42816 (left!42816 ys!41))) 1 (cheight!15775 (left!42816 (left!42816 ys!41))))))))

(assert (=> b!5066580 d!1634145))

(declare-fun d!1634147 () Bool)

(assert (=> d!1634147 (= (height!2141 (right!43146 (left!42816 ys!41))) (ite ((_ is Empty!15564) (right!43146 (left!42816 ys!41))) 0 (ite ((_ is Leaf!25851) (right!43146 (left!42816 ys!41))) 1 (cheight!15775 (right!43146 (left!42816 ys!41))))))))

(assert (=> b!5066580 d!1634147))

(declare-fun b!5067367 () Bool)

(declare-fun res!2157557 () Bool)

(declare-fun e!3162208 () Bool)

(assert (=> b!5067367 (=> (not res!2157557) (not e!3162208))))

(assert (=> b!5067367 (= res!2157557 (isBalanced!4426 (left!42816 (left!42816 (right!43146 lt!2088868)))))))

(declare-fun b!5067368 () Bool)

(declare-fun e!3162207 () Bool)

(assert (=> b!5067368 (= e!3162207 e!3162208)))

(declare-fun res!2157560 () Bool)

(assert (=> b!5067368 (=> (not res!2157560) (not e!3162208))))

(assert (=> b!5067368 (= res!2157560 (<= (- 1) (- (height!2141 (left!42816 (left!42816 (right!43146 lt!2088868)))) (height!2141 (right!43146 (left!42816 (right!43146 lt!2088868)))))))))

(declare-fun b!5067369 () Bool)

(declare-fun res!2157555 () Bool)

(assert (=> b!5067369 (=> (not res!2157555) (not e!3162208))))

(assert (=> b!5067369 (= res!2157555 (not (isEmpty!31631 (left!42816 (left!42816 (right!43146 lt!2088868))))))))

(declare-fun b!5067371 () Bool)

(declare-fun res!2157559 () Bool)

(assert (=> b!5067371 (=> (not res!2157559) (not e!3162208))))

(assert (=> b!5067371 (= res!2157559 (<= (- (height!2141 (left!42816 (left!42816 (right!43146 lt!2088868)))) (height!2141 (right!43146 (left!42816 (right!43146 lt!2088868))))) 1))))

(declare-fun b!5067372 () Bool)

(assert (=> b!5067372 (= e!3162208 (not (isEmpty!31631 (right!43146 (left!42816 (right!43146 lt!2088868))))))))

(declare-fun b!5067370 () Bool)

(declare-fun res!2157556 () Bool)

(assert (=> b!5067370 (=> (not res!2157556) (not e!3162208))))

(assert (=> b!5067370 (= res!2157556 (isBalanced!4426 (right!43146 (left!42816 (right!43146 lt!2088868)))))))

(declare-fun d!1634149 () Bool)

(declare-fun res!2157558 () Bool)

(assert (=> d!1634149 (=> res!2157558 e!3162207)))

(assert (=> d!1634149 (= res!2157558 (not ((_ is Node!15564) (left!42816 (right!43146 lt!2088868)))))))

(assert (=> d!1634149 (= (isBalanced!4426 (left!42816 (right!43146 lt!2088868))) e!3162207)))

(assert (= (and d!1634149 (not res!2157558)) b!5067368))

(assert (= (and b!5067368 res!2157560) b!5067371))

(assert (= (and b!5067371 res!2157559) b!5067367))

(assert (= (and b!5067367 res!2157557) b!5067370))

(assert (= (and b!5067370 res!2157556) b!5067369))

(assert (= (and b!5067369 res!2157555) b!5067372))

(declare-fun m!6110426 () Bool)

(assert (=> b!5067369 m!6110426))

(declare-fun m!6110428 () Bool)

(assert (=> b!5067367 m!6110428))

(declare-fun m!6110430 () Bool)

(assert (=> b!5067372 m!6110430))

(declare-fun m!6110432 () Bool)

(assert (=> b!5067371 m!6110432))

(declare-fun m!6110434 () Bool)

(assert (=> b!5067371 m!6110434))

(declare-fun m!6110436 () Bool)

(assert (=> b!5067370 m!6110436))

(assert (=> b!5067368 m!6110432))

(assert (=> b!5067368 m!6110434))

(assert (=> b!5066543 d!1634149))

(declare-fun d!1634151 () Bool)

(declare-fun c!869960 () Bool)

(assert (=> d!1634151 (= c!869960 ((_ is Nil!58434) (t!371291 (list!18989 ys!41))))))

(declare-fun e!3162209 () (InoxSet T!105118))

(assert (=> d!1634151 (= (content!10417 (t!371291 (list!18989 ys!41))) e!3162209)))

(declare-fun b!5067373 () Bool)

(assert (=> b!5067373 (= e!3162209 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067374 () Bool)

(assert (=> b!5067374 (= e!3162209 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (t!371291 (list!18989 ys!41))) true) (content!10417 (t!371291 (t!371291 (list!18989 ys!41))))))))

(assert (= (and d!1634151 c!869960) b!5067373))

(assert (= (and d!1634151 (not c!869960)) b!5067374))

(declare-fun m!6110438 () Bool)

(assert (=> b!5067374 m!6110438))

(declare-fun m!6110440 () Bool)

(assert (=> b!5067374 m!6110440))

(assert (=> b!5066455 d!1634151))

(declare-fun b!5067377 () Bool)

(declare-fun res!2157562 () Bool)

(declare-fun e!3162210 () Bool)

(assert (=> b!5067377 (=> (not res!2157562) (not e!3162210))))

(declare-fun lt!2089069 () List!58558)

(assert (=> b!5067377 (= res!2157562 (= (size!39074 lt!2089069) (+ (size!39074 (list!18989 (left!42816 (left!42816 (right!43146 xs!286))))) (size!39074 (list!18989 (right!43146 (left!42816 (right!43146 xs!286))))))))))

(declare-fun b!5067378 () Bool)

(assert (=> b!5067378 (= e!3162210 (or (not (= (list!18989 (right!43146 (left!42816 (right!43146 xs!286)))) Nil!58434)) (= lt!2089069 (list!18989 (left!42816 (left!42816 (right!43146 xs!286)))))))))

(declare-fun b!5067376 () Bool)

(declare-fun e!3162211 () List!58558)

(assert (=> b!5067376 (= e!3162211 (Cons!58434 (h!64882 (list!18989 (left!42816 (left!42816 (right!43146 xs!286))))) (++!12789 (t!371291 (list!18989 (left!42816 (left!42816 (right!43146 xs!286))))) (list!18989 (right!43146 (left!42816 (right!43146 xs!286)))))))))

(declare-fun b!5067375 () Bool)

(assert (=> b!5067375 (= e!3162211 (list!18989 (right!43146 (left!42816 (right!43146 xs!286)))))))

(declare-fun d!1634153 () Bool)

(assert (=> d!1634153 e!3162210))

(declare-fun res!2157561 () Bool)

(assert (=> d!1634153 (=> (not res!2157561) (not e!3162210))))

(assert (=> d!1634153 (= res!2157561 (= (content!10417 lt!2089069) ((_ map or) (content!10417 (list!18989 (left!42816 (left!42816 (right!43146 xs!286))))) (content!10417 (list!18989 (right!43146 (left!42816 (right!43146 xs!286))))))))))

(assert (=> d!1634153 (= lt!2089069 e!3162211)))

(declare-fun c!869961 () Bool)

(assert (=> d!1634153 (= c!869961 ((_ is Nil!58434) (list!18989 (left!42816 (left!42816 (right!43146 xs!286))))))))

(assert (=> d!1634153 (= (++!12789 (list!18989 (left!42816 (left!42816 (right!43146 xs!286)))) (list!18989 (right!43146 (left!42816 (right!43146 xs!286))))) lt!2089069)))

(assert (= (and d!1634153 c!869961) b!5067375))

(assert (= (and d!1634153 (not c!869961)) b!5067376))

(assert (= (and d!1634153 res!2157561) b!5067377))

(assert (= (and b!5067377 res!2157562) b!5067378))

(declare-fun m!6110442 () Bool)

(assert (=> b!5067377 m!6110442))

(assert (=> b!5067377 m!6108730))

(declare-fun m!6110444 () Bool)

(assert (=> b!5067377 m!6110444))

(assert (=> b!5067377 m!6108732))

(declare-fun m!6110446 () Bool)

(assert (=> b!5067377 m!6110446))

(assert (=> b!5067376 m!6108732))

(declare-fun m!6110448 () Bool)

(assert (=> b!5067376 m!6110448))

(declare-fun m!6110450 () Bool)

(assert (=> d!1634153 m!6110450))

(assert (=> d!1634153 m!6108730))

(declare-fun m!6110452 () Bool)

(assert (=> d!1634153 m!6110452))

(assert (=> d!1634153 m!6108732))

(declare-fun m!6110454 () Bool)

(assert (=> d!1634153 m!6110454))

(assert (=> b!5066559 d!1634153))

(declare-fun d!1634155 () Bool)

(declare-fun c!869962 () Bool)

(assert (=> d!1634155 (= c!869962 ((_ is Empty!15564) (left!42816 (left!42816 (right!43146 xs!286)))))))

(declare-fun e!3162212 () List!58558)

(assert (=> d!1634155 (= (list!18989 (left!42816 (left!42816 (right!43146 xs!286)))) e!3162212)))

(declare-fun b!5067380 () Bool)

(declare-fun e!3162213 () List!58558)

(assert (=> b!5067380 (= e!3162212 e!3162213)))

(declare-fun c!869963 () Bool)

(assert (=> b!5067380 (= c!869963 ((_ is Leaf!25851) (left!42816 (left!42816 (right!43146 xs!286)))))))

(declare-fun b!5067379 () Bool)

(assert (=> b!5067379 (= e!3162212 Nil!58434)))

(declare-fun b!5067382 () Bool)

(assert (=> b!5067382 (= e!3162213 (++!12789 (list!18989 (left!42816 (left!42816 (left!42816 (right!43146 xs!286))))) (list!18989 (right!43146 (left!42816 (left!42816 (right!43146 xs!286)))))))))

(declare-fun b!5067381 () Bool)

(assert (=> b!5067381 (= e!3162213 (list!18990 (xs!18914 (left!42816 (left!42816 (right!43146 xs!286))))))))

(assert (= (and d!1634155 c!869962) b!5067379))

(assert (= (and d!1634155 (not c!869962)) b!5067380))

(assert (= (and b!5067380 c!869963) b!5067381))

(assert (= (and b!5067380 (not c!869963)) b!5067382))

(declare-fun m!6110456 () Bool)

(assert (=> b!5067382 m!6110456))

(declare-fun m!6110458 () Bool)

(assert (=> b!5067382 m!6110458))

(assert (=> b!5067382 m!6110456))

(assert (=> b!5067382 m!6110458))

(declare-fun m!6110460 () Bool)

(assert (=> b!5067382 m!6110460))

(declare-fun m!6110462 () Bool)

(assert (=> b!5067381 m!6110462))

(assert (=> b!5066559 d!1634155))

(declare-fun d!1634157 () Bool)

(declare-fun c!869964 () Bool)

(assert (=> d!1634157 (= c!869964 ((_ is Empty!15564) (right!43146 (left!42816 (right!43146 xs!286)))))))

(declare-fun e!3162214 () List!58558)

(assert (=> d!1634157 (= (list!18989 (right!43146 (left!42816 (right!43146 xs!286)))) e!3162214)))

(declare-fun b!5067384 () Bool)

(declare-fun e!3162215 () List!58558)

(assert (=> b!5067384 (= e!3162214 e!3162215)))

(declare-fun c!869965 () Bool)

(assert (=> b!5067384 (= c!869965 ((_ is Leaf!25851) (right!43146 (left!42816 (right!43146 xs!286)))))))

(declare-fun b!5067383 () Bool)

(assert (=> b!5067383 (= e!3162214 Nil!58434)))

(declare-fun b!5067386 () Bool)

(assert (=> b!5067386 (= e!3162215 (++!12789 (list!18989 (left!42816 (right!43146 (left!42816 (right!43146 xs!286))))) (list!18989 (right!43146 (right!43146 (left!42816 (right!43146 xs!286)))))))))

(declare-fun b!5067385 () Bool)

(assert (=> b!5067385 (= e!3162215 (list!18990 (xs!18914 (right!43146 (left!42816 (right!43146 xs!286))))))))

(assert (= (and d!1634157 c!869964) b!5067383))

(assert (= (and d!1634157 (not c!869964)) b!5067384))

(assert (= (and b!5067384 c!869965) b!5067385))

(assert (= (and b!5067384 (not c!869965)) b!5067386))

(declare-fun m!6110464 () Bool)

(assert (=> b!5067386 m!6110464))

(declare-fun m!6110466 () Bool)

(assert (=> b!5067386 m!6110466))

(assert (=> b!5067386 m!6110464))

(assert (=> b!5067386 m!6110466))

(declare-fun m!6110468 () Bool)

(assert (=> b!5067386 m!6110468))

(declare-fun m!6110470 () Bool)

(assert (=> b!5067385 m!6110470))

(assert (=> b!5066559 d!1634157))

(declare-fun b!5067389 () Bool)

(declare-fun res!2157564 () Bool)

(declare-fun e!3162216 () Bool)

(assert (=> b!5067389 (=> (not res!2157564) (not e!3162216))))

(declare-fun lt!2089070 () List!58558)

(assert (=> b!5067389 (= res!2157564 (= (size!39074 lt!2089070) (+ (size!39074 (t!371291 (list!18989 xs!286))) (size!39074 (list!18989 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067390 () Bool)

(assert (=> b!5067390 (= e!3162216 (or (not (= (list!18989 (left!42816 (left!42816 ys!41))) Nil!58434)) (= lt!2089070 (t!371291 (list!18989 xs!286)))))))

(declare-fun b!5067388 () Bool)

(declare-fun e!3162217 () List!58558)

(assert (=> b!5067388 (= e!3162217 (Cons!58434 (h!64882 (t!371291 (list!18989 xs!286))) (++!12789 (t!371291 (t!371291 (list!18989 xs!286))) (list!18989 (left!42816 (left!42816 ys!41))))))))

(declare-fun b!5067387 () Bool)

(assert (=> b!5067387 (= e!3162217 (list!18989 (left!42816 (left!42816 ys!41))))))

(declare-fun d!1634159 () Bool)

(assert (=> d!1634159 e!3162216))

(declare-fun res!2157563 () Bool)

(assert (=> d!1634159 (=> (not res!2157563) (not e!3162216))))

(assert (=> d!1634159 (= res!2157563 (= (content!10417 lt!2089070) ((_ map or) (content!10417 (t!371291 (list!18989 xs!286))) (content!10417 (list!18989 (left!42816 (left!42816 ys!41)))))))))

(assert (=> d!1634159 (= lt!2089070 e!3162217)))

(declare-fun c!869966 () Bool)

(assert (=> d!1634159 (= c!869966 ((_ is Nil!58434) (t!371291 (list!18989 xs!286))))))

(assert (=> d!1634159 (= (++!12789 (t!371291 (list!18989 xs!286)) (list!18989 (left!42816 (left!42816 ys!41)))) lt!2089070)))

(assert (= (and d!1634159 c!869966) b!5067387))

(assert (= (and d!1634159 (not c!869966)) b!5067388))

(assert (= (and d!1634159 res!2157563) b!5067389))

(assert (= (and b!5067389 res!2157564) b!5067390))

(declare-fun m!6110472 () Bool)

(assert (=> b!5067389 m!6110472))

(assert (=> b!5067389 m!6108826))

(assert (=> b!5067389 m!6108104))

(assert (=> b!5067389 m!6109044))

(assert (=> b!5067388 m!6108104))

(declare-fun m!6110474 () Bool)

(assert (=> b!5067388 m!6110474))

(declare-fun m!6110476 () Bool)

(assert (=> d!1634159 m!6110476))

(assert (=> d!1634159 m!6108544))

(assert (=> d!1634159 m!6108104))

(assert (=> d!1634159 m!6109050))

(assert (=> b!5066711 d!1634159))

(declare-fun d!1634161 () Bool)

(declare-fun res!2157565 () Bool)

(declare-fun e!3162218 () Bool)

(assert (=> d!1634161 (=> (not res!2157565) (not e!3162218))))

(assert (=> d!1634161 (= res!2157565 (= (csize!31358 (right!43146 (right!43146 xs!286))) (+ (size!39075 (left!42816 (right!43146 (right!43146 xs!286)))) (size!39075 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(assert (=> d!1634161 (= (inv!77559 (right!43146 (right!43146 xs!286))) e!3162218)))

(declare-fun b!5067391 () Bool)

(declare-fun res!2157566 () Bool)

(assert (=> b!5067391 (=> (not res!2157566) (not e!3162218))))

(assert (=> b!5067391 (= res!2157566 (and (not (= (left!42816 (right!43146 (right!43146 xs!286))) Empty!15564)) (not (= (right!43146 (right!43146 (right!43146 xs!286))) Empty!15564))))))

(declare-fun b!5067392 () Bool)

(declare-fun res!2157567 () Bool)

(assert (=> b!5067392 (=> (not res!2157567) (not e!3162218))))

(assert (=> b!5067392 (= res!2157567 (= (cheight!15775 (right!43146 (right!43146 xs!286))) (+ (max!0 (height!2141 (left!42816 (right!43146 (right!43146 xs!286)))) (height!2141 (right!43146 (right!43146 (right!43146 xs!286))))) 1)))))

(declare-fun b!5067393 () Bool)

(assert (=> b!5067393 (= e!3162218 (<= 0 (cheight!15775 (right!43146 (right!43146 xs!286)))))))

(assert (= (and d!1634161 res!2157565) b!5067391))

(assert (= (and b!5067391 res!2157566) b!5067392))

(assert (= (and b!5067392 res!2157567) b!5067393))

(declare-fun m!6110478 () Bool)

(assert (=> d!1634161 m!6110478))

(assert (=> d!1634161 m!6109652))

(assert (=> b!5067392 m!6108880))

(assert (=> b!5067392 m!6108882))

(assert (=> b!5067392 m!6108880))

(assert (=> b!5067392 m!6108882))

(declare-fun m!6110480 () Bool)

(assert (=> b!5067392 m!6110480))

(assert (=> b!5066389 d!1634161))

(assert (=> b!5066719 d!1634077))

(assert (=> b!5066719 d!1634079))

(declare-fun d!1634163 () Bool)

(assert (=> d!1634163 (= (height!2141 (ite c!869767 lt!2088959 lt!2088956)) (ite ((_ is Empty!15564) (ite c!869767 lt!2088959 lt!2088956)) 0 (ite ((_ is Leaf!25851) (ite c!869767 lt!2088959 lt!2088956)) 1 (cheight!15775 (ite c!869767 lt!2088959 lt!2088956)))))))

(assert (=> bm!353050 d!1634163))

(assert (=> b!5066731 d!1633931))

(assert (=> b!5066731 d!1633933))

(declare-fun d!1634165 () Bool)

(assert (=> d!1634165 (= (list!18990 (xs!18914 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) (innerList!15652 (xs!18914 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(assert (=> b!5066698 d!1634165))

(declare-fun d!1634167 () Bool)

(declare-fun c!869967 () Bool)

(assert (=> d!1634167 (= c!869967 ((_ is Node!15564) (left!42816 (left!42816 (right!43146 ys!41)))))))

(declare-fun e!3162219 () Bool)

(assert (=> d!1634167 (= (inv!77556 (left!42816 (left!42816 (right!43146 ys!41)))) e!3162219)))

(declare-fun b!5067394 () Bool)

(assert (=> b!5067394 (= e!3162219 (inv!77559 (left!42816 (left!42816 (right!43146 ys!41)))))))

(declare-fun b!5067395 () Bool)

(declare-fun e!3162220 () Bool)

(assert (=> b!5067395 (= e!3162219 e!3162220)))

(declare-fun res!2157568 () Bool)

(assert (=> b!5067395 (= res!2157568 (not ((_ is Leaf!25851) (left!42816 (left!42816 (right!43146 ys!41))))))))

(assert (=> b!5067395 (=> res!2157568 e!3162220)))

(declare-fun b!5067396 () Bool)

(assert (=> b!5067396 (= e!3162220 (inv!77560 (left!42816 (left!42816 (right!43146 ys!41)))))))

(assert (= (and d!1634167 c!869967) b!5067394))

(assert (= (and d!1634167 (not c!869967)) b!5067395))

(assert (= (and b!5067395 (not res!2157568)) b!5067396))

(declare-fun m!6110482 () Bool)

(assert (=> b!5067394 m!6110482))

(declare-fun m!6110484 () Bool)

(assert (=> b!5067396 m!6110484))

(assert (=> b!5066750 d!1634167))

(declare-fun d!1634169 () Bool)

(declare-fun c!869968 () Bool)

(assert (=> d!1634169 (= c!869968 ((_ is Node!15564) (right!43146 (left!42816 (right!43146 ys!41)))))))

(declare-fun e!3162221 () Bool)

(assert (=> d!1634169 (= (inv!77556 (right!43146 (left!42816 (right!43146 ys!41)))) e!3162221)))

(declare-fun b!5067397 () Bool)

(assert (=> b!5067397 (= e!3162221 (inv!77559 (right!43146 (left!42816 (right!43146 ys!41)))))))

(declare-fun b!5067398 () Bool)

(declare-fun e!3162222 () Bool)

(assert (=> b!5067398 (= e!3162221 e!3162222)))

(declare-fun res!2157569 () Bool)

(assert (=> b!5067398 (= res!2157569 (not ((_ is Leaf!25851) (right!43146 (left!42816 (right!43146 ys!41))))))))

(assert (=> b!5067398 (=> res!2157569 e!3162222)))

(declare-fun b!5067399 () Bool)

(assert (=> b!5067399 (= e!3162222 (inv!77560 (right!43146 (left!42816 (right!43146 ys!41)))))))

(assert (= (and d!1634169 c!869968) b!5067397))

(assert (= (and d!1634169 (not c!869968)) b!5067398))

(assert (= (and b!5067398 (not res!2157569)) b!5067399))

(declare-fun m!6110486 () Bool)

(assert (=> b!5067397 m!6110486))

(declare-fun m!6110488 () Bool)

(assert (=> b!5067399 m!6110488))

(assert (=> b!5066750 d!1634169))

(declare-fun b!5067401 () Bool)

(declare-fun e!3162227 () Bool)

(declare-fun e!3162226 () Bool)

(assert (=> b!5067401 (= e!3162227 e!3162226)))

(declare-fun res!2157577 () Bool)

(assert (=> b!5067401 (=> (not res!2157577) (not e!3162226))))

(assert (=> b!5067401 (= res!2157577 (appendAssoc!301 (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (list!18989 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))) (list!18989 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun b!5067402 () Bool)

(declare-fun e!3162231 () Bool)

(declare-fun e!3162229 () Bool)

(assert (=> b!5067402 (= e!3162231 e!3162229)))

(declare-fun res!2157570 () Bool)

(assert (=> b!5067402 (=> (not res!2157570) (not e!3162229))))

(assert (=> b!5067402 (= res!2157570 (appendAssoc!301 (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (list!18989 (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))) (list!18989 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))))

(declare-fun b!5067403 () Bool)

(declare-fun e!3162228 () Bool)

(declare-fun e!3162224 () Bool)

(assert (=> b!5067403 (= e!3162228 e!3162224)))

(declare-fun res!2157576 () Bool)

(assert (=> b!5067403 (=> (not res!2157576) (not e!3162224))))

(assert (=> b!5067403 (= res!2157576 (appendAssoc!301 (list!18989 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (list!18989 (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067404 () Bool)

(declare-fun e!3162230 () Bool)

(assert (=> b!5067404 (= e!3162230 e!3162227)))

(declare-fun res!2157575 () Bool)

(assert (=> b!5067404 (=> res!2157575 e!3162227)))

(assert (=> b!5067404 (= res!2157575 (not ((_ is Node!15564) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067405 () Bool)

(assert (=> b!5067405 (= e!3162226 e!3162231)))

(declare-fun res!2157574 () Bool)

(assert (=> b!5067405 (=> res!2157574 e!3162231)))

(assert (=> b!5067405 (= res!2157574 (not ((_ is Node!15564) (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun b!5067406 () Bool)

(declare-fun e!3162225 () Bool)

(assert (=> b!5067406 (= e!3162225 e!3162228)))

(declare-fun res!2157572 () Bool)

(assert (=> b!5067406 (=> res!2157572 e!3162228)))

(assert (=> b!5067406 (= res!2157572 (not ((_ is Node!15564) (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067407 () Bool)

(assert (=> b!5067407 (= e!3162224 (appendAssoc!301 (list!18989 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (list!18989 (left!42816 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (++!12789 (list!18989 (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(declare-fun b!5067408 () Bool)

(declare-fun e!3162223 () Bool)

(assert (=> b!5067408 (= e!3162223 e!3162225)))

(declare-fun res!2157573 () Bool)

(assert (=> b!5067408 (=> (not res!2157573) (not e!3162225))))

(assert (=> b!5067408 (= res!2157573 (appendAssoc!301 (list!18989 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (list!18989 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (list!18989 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))

(declare-fun d!1634171 () Bool)

(assert (=> d!1634171 e!3162230))

(declare-fun res!2157578 () Bool)

(assert (=> d!1634171 (=> (not res!2157578) (not e!3162230))))

(assert (=> d!1634171 (= res!2157578 e!3162223)))

(declare-fun res!2157571 () Bool)

(assert (=> d!1634171 (=> res!2157571 e!3162223)))

(assert (=> d!1634171 (= res!2157571 (not ((_ is Node!15564) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1634171 (= (appendAssocInst!910 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) true)))

(declare-fun b!5067400 () Bool)

(assert (=> b!5067400 (= e!3162229 (appendAssoc!301 (++!12789 (list!18989 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (list!18989 (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))) (list!18989 (right!43146 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))) (list!18989 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))

(assert (= (and d!1634171 (not res!2157571)) b!5067408))

(assert (= (and b!5067408 res!2157573) b!5067406))

(assert (= (and b!5067406 (not res!2157572)) b!5067403))

(assert (= (and b!5067403 res!2157576) b!5067407))

(assert (= (and d!1634171 res!2157578) b!5067404))

(assert (= (and b!5067404 (not res!2157575)) b!5067401))

(assert (= (and b!5067401 res!2157577) b!5067405))

(assert (= (and b!5067405 (not res!2157574)) b!5067402))

(assert (= (and b!5067402 res!2157570) b!5067400))

(declare-fun m!6110490 () Bool)

(assert (=> b!5067403 m!6110490))

(declare-fun m!6110492 () Bool)

(assert (=> b!5067403 m!6110492))

(assert (=> b!5067403 m!6108938))

(assert (=> b!5067403 m!6110490))

(assert (=> b!5067403 m!6110492))

(assert (=> b!5067403 m!6108938))

(declare-fun m!6110494 () Bool)

(assert (=> b!5067403 m!6110494))

(assert (=> b!5067401 m!6108936))

(assert (=> b!5067401 m!6110144))

(assert (=> b!5067401 m!6110146))

(assert (=> b!5067401 m!6108936))

(assert (=> b!5067401 m!6110144))

(assert (=> b!5067401 m!6110146))

(declare-fun m!6110496 () Bool)

(assert (=> b!5067401 m!6110496))

(assert (=> b!5067402 m!6108936))

(declare-fun m!6110498 () Bool)

(assert (=> b!5067402 m!6110498))

(declare-fun m!6110500 () Bool)

(assert (=> b!5067402 m!6110500))

(assert (=> b!5067402 m!6108936))

(assert (=> b!5067402 m!6110498))

(assert (=> b!5067402 m!6110500))

(declare-fun m!6110502 () Bool)

(assert (=> b!5067402 m!6110502))

(assert (=> b!5067407 m!6110492))

(assert (=> b!5067407 m!6108938))

(declare-fun m!6110504 () Bool)

(assert (=> b!5067407 m!6110504))

(assert (=> b!5067407 m!6108938))

(assert (=> b!5067407 m!6110136))

(assert (=> b!5067407 m!6110492))

(assert (=> b!5067407 m!6110490))

(assert (=> b!5067407 m!6110136))

(assert (=> b!5067407 m!6110490))

(assert (=> b!5067407 m!6110504))

(declare-fun m!6110506 () Bool)

(assert (=> b!5067407 m!6110506))

(assert (=> b!5067408 m!6110136))

(assert (=> b!5067408 m!6110138))

(assert (=> b!5067408 m!6108938))

(assert (=> b!5067408 m!6110136))

(assert (=> b!5067408 m!6110138))

(assert (=> b!5067408 m!6108938))

(declare-fun m!6110508 () Bool)

(assert (=> b!5067408 m!6110508))

(assert (=> b!5067400 m!6108936))

(assert (=> b!5067400 m!6110146))

(declare-fun m!6110510 () Bool)

(assert (=> b!5067400 m!6110510))

(assert (=> b!5067400 m!6110500))

(assert (=> b!5067400 m!6110146))

(declare-fun m!6110512 () Bool)

(assert (=> b!5067400 m!6110512))

(assert (=> b!5067400 m!6108936))

(assert (=> b!5067400 m!6110498))

(assert (=> b!5067400 m!6110510))

(assert (=> b!5067400 m!6110500))

(assert (=> b!5067400 m!6110498))

(assert (=> d!1633613 d!1634171))

(declare-fun b!5067409 () Bool)

(declare-fun res!2157581 () Bool)

(declare-fun e!3162233 () Bool)

(assert (=> b!5067409 (=> (not res!2157581) (not e!3162233))))

(assert (=> b!5067409 (= res!2157581 (isBalanced!4426 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5067410 () Bool)

(declare-fun e!3162232 () Bool)

(assert (=> b!5067410 (= e!3162232 e!3162233)))

(declare-fun res!2157584 () Bool)

(assert (=> b!5067410 (=> (not res!2157584) (not e!3162233))))

(assert (=> b!5067410 (= res!2157584 (<= (- 1) (- (height!2141 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (height!2141 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))))))

(declare-fun b!5067411 () Bool)

(declare-fun res!2157579 () Bool)

(assert (=> b!5067411 (=> (not res!2157579) (not e!3162233))))

(assert (=> b!5067411 (= res!2157579 (not (isEmpty!31631 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067413 () Bool)

(declare-fun res!2157583 () Bool)

(assert (=> b!5067413 (=> (not res!2157583) (not e!3162233))))

(assert (=> b!5067413 (= res!2157583 (<= (- (height!2141 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (height!2141 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) 1))))

(declare-fun b!5067414 () Bool)

(assert (=> b!5067414 (= e!3162233 (not (isEmpty!31631 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067412 () Bool)

(declare-fun res!2157580 () Bool)

(assert (=> b!5067412 (=> (not res!2157580) (not e!3162233))))

(assert (=> b!5067412 (= res!2157580 (isBalanced!4426 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))))

(declare-fun d!1634173 () Bool)

(declare-fun res!2157582 () Bool)

(assert (=> d!1634173 (=> res!2157582 e!3162232)))

(assert (=> d!1634173 (= res!2157582 (not ((_ is Node!15564) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1634173 (= (isBalanced!4426 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) e!3162232)))

(assert (= (and d!1634173 (not res!2157582)) b!5067410))

(assert (= (and b!5067410 res!2157584) b!5067413))

(assert (= (and b!5067413 res!2157583) b!5067409))

(assert (= (and b!5067409 res!2157581) b!5067412))

(assert (= (and b!5067412 res!2157580) b!5067411))

(assert (= (and b!5067411 res!2157579) b!5067414))

(declare-fun m!6110514 () Bool)

(assert (=> b!5067411 m!6110514))

(declare-fun m!6110516 () Bool)

(assert (=> b!5067409 m!6110516))

(declare-fun m!6110518 () Bool)

(assert (=> b!5067414 m!6110518))

(declare-fun m!6110520 () Bool)

(assert (=> b!5067413 m!6110520))

(declare-fun m!6110522 () Bool)

(assert (=> b!5067413 m!6110522))

(declare-fun m!6110524 () Bool)

(assert (=> b!5067412 m!6110524))

(assert (=> b!5067410 m!6110520))

(assert (=> b!5067410 m!6110522))

(assert (=> d!1633613 d!1634173))

(declare-fun d!1634175 () Bool)

(assert (=> d!1634175 (= (list!18990 (xs!18914 (right!43146 (right!43146 xs!286)))) (innerList!15652 (xs!18914 (right!43146 (right!43146 xs!286)))))))

(assert (=> b!5066426 d!1634175))

(declare-fun d!1634177 () Bool)

(declare-fun lt!2089071 () Int)

(assert (=> d!1634177 (= lt!2089071 (size!39074 (list!18989 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))))))))

(assert (=> d!1634177 (= lt!2089071 (ite ((_ is Empty!15564) (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) 0 (ite ((_ is Leaf!25851) (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) (csize!31359 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) (csize!31358 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))))))))

(assert (=> d!1634177 (= (size!39075 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) lt!2089071)))

(declare-fun bs!1189941 () Bool)

(assert (= bs!1189941 d!1634177))

(assert (=> bs!1189941 m!6108642))

(assert (=> bs!1189941 m!6108642))

(assert (=> bs!1189941 m!6110392))

(assert (=> b!5066508 d!1634177))

(declare-fun lt!2089072 () Int)

(declare-fun d!1634179 () Bool)

(assert (=> d!1634179 (= lt!2089072 (size!39074 (list!18989 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))))))

(assert (=> d!1634179 (= lt!2089072 (ite ((_ is Empty!15564) (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) 0 (ite ((_ is Leaf!25851) (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) (csize!31359 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) (csize!31358 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))))))))

(assert (=> d!1634179 (= (size!39075 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) lt!2089072)))

(declare-fun bs!1189942 () Bool)

(assert (= bs!1189942 d!1634179))

(assert (=> bs!1189942 m!6108644))

(assert (=> bs!1189942 m!6108644))

(assert (=> bs!1189942 m!6110394))

(assert (=> b!5066508 d!1634179))

(declare-fun d!1634181 () Bool)

(assert (=> d!1634181 (= (height!2141 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) (ite ((_ is Empty!15564) (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) 0 (ite ((_ is Leaf!25851) (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) 1 (cheight!15775 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))))))))

(assert (=> b!5066508 d!1634181))

(declare-fun d!1634183 () Bool)

(assert (=> d!1634183 (= (max!0 (height!2141 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) (height!2141 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))) (ite (< (height!2141 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41)))))) (height!2141 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41)))))) (height!2141 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) (height!2141 (ite c!869680 (ite c!869683 (left!42816 (right!43146 (right!43146 xs!286))) (ite c!869682 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))) (left!42816 (right!43146 (right!43146 xs!286))))) (ite c!869678 call!352997 (ite c!869681 lt!2088906 (right!43146 (left!42816 ys!41))))))))))

(assert (=> b!5066508 d!1634183))

(declare-fun d!1634185 () Bool)

(assert (=> d!1634185 (= (height!2141 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) (ite ((_ is Empty!15564) (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) 0 (ite ((_ is Leaf!25851) (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))) 1 (cheight!15775 (ite c!869680 (ite c!869683 call!352994 (ite c!869682 lt!2088909 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (ite c!869678 (right!43146 ys!41) (ite c!869681 (right!43146 (left!42816 ys!41)) (right!43146 ys!41))))))))))

(assert (=> b!5066508 d!1634185))

(declare-fun d!1634187 () Bool)

(assert (=> d!1634187 (= (max!0 (height!2141 (left!42816 xs!286)) (height!2141 (right!43146 xs!286))) (ite (< (height!2141 (left!42816 xs!286)) (height!2141 (right!43146 xs!286))) (height!2141 (right!43146 xs!286)) (height!2141 (left!42816 xs!286))))))

(assert (=> b!5066550 d!1634187))

(assert (=> b!5066550 d!1633309))

(assert (=> b!5066550 d!1633311))

(declare-fun d!1634189 () Bool)

(declare-fun c!869969 () Bool)

(assert (=> d!1634189 (= c!869969 ((_ is Nil!58434) lt!2088963))))

(declare-fun e!3162234 () (InoxSet T!105118))

(assert (=> d!1634189 (= (content!10417 lt!2088963) e!3162234)))

(declare-fun b!5067415 () Bool)

(assert (=> b!5067415 (= e!3162234 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067416 () Bool)

(assert (=> b!5067416 (= e!3162234 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 lt!2088963) true) (content!10417 (t!371291 lt!2088963))))))

(assert (= (and d!1634189 c!869969) b!5067415))

(assert (= (and d!1634189 (not c!869969)) b!5067416))

(declare-fun m!6110526 () Bool)

(assert (=> b!5067416 m!6110526))

(declare-fun m!6110528 () Bool)

(assert (=> b!5067416 m!6110528))

(assert (=> d!1633635 d!1634189))

(assert (=> d!1633635 d!1633451))

(declare-fun d!1634191 () Bool)

(declare-fun c!869970 () Bool)

(assert (=> d!1634191 (= c!869970 ((_ is Nil!58434) (list!18989 (left!42816 (left!42816 ys!41)))))))

(declare-fun e!3162235 () (InoxSet T!105118))

(assert (=> d!1634191 (= (content!10417 (list!18989 (left!42816 (left!42816 ys!41)))) e!3162235)))

(declare-fun b!5067417 () Bool)

(assert (=> b!5067417 (= e!3162235 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067418 () Bool)

(assert (=> b!5067418 (= e!3162235 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 (left!42816 (left!42816 ys!41)))) true) (content!10417 (t!371291 (list!18989 (left!42816 (left!42816 ys!41)))))))))

(assert (= (and d!1634191 c!869970) b!5067417))

(assert (= (and d!1634191 (not c!869970)) b!5067418))

(declare-fun m!6110530 () Bool)

(assert (=> b!5067418 m!6110530))

(declare-fun m!6110532 () Bool)

(assert (=> b!5067418 m!6110532))

(assert (=> d!1633635 d!1634191))

(declare-fun d!1634193 () Bool)

(declare-fun res!2157585 () Bool)

(declare-fun e!3162236 () Bool)

(assert (=> d!1634193 (=> (not res!2157585) (not e!3162236))))

(assert (=> d!1634193 (= res!2157585 (= (csize!31358 (right!43146 (left!42816 xs!286))) (+ (size!39075 (left!42816 (right!43146 (left!42816 xs!286)))) (size!39075 (right!43146 (right!43146 (left!42816 xs!286)))))))))

(assert (=> d!1634193 (= (inv!77559 (right!43146 (left!42816 xs!286))) e!3162236)))

(declare-fun b!5067419 () Bool)

(declare-fun res!2157586 () Bool)

(assert (=> b!5067419 (=> (not res!2157586) (not e!3162236))))

(assert (=> b!5067419 (= res!2157586 (and (not (= (left!42816 (right!43146 (left!42816 xs!286))) Empty!15564)) (not (= (right!43146 (right!43146 (left!42816 xs!286))) Empty!15564))))))

(declare-fun b!5067420 () Bool)

(declare-fun res!2157587 () Bool)

(assert (=> b!5067420 (=> (not res!2157587) (not e!3162236))))

(assert (=> b!5067420 (= res!2157587 (= (cheight!15775 (right!43146 (left!42816 xs!286))) (+ (max!0 (height!2141 (left!42816 (right!43146 (left!42816 xs!286)))) (height!2141 (right!43146 (right!43146 (left!42816 xs!286))))) 1)))))

(declare-fun b!5067421 () Bool)

(assert (=> b!5067421 (= e!3162236 (<= 0 (cheight!15775 (right!43146 (left!42816 xs!286)))))))

(assert (= (and d!1634193 res!2157585) b!5067419))

(assert (= (and b!5067419 res!2157586) b!5067420))

(assert (= (and b!5067420 res!2157587) b!5067421))

(declare-fun m!6110534 () Bool)

(assert (=> d!1634193 m!6110534))

(declare-fun m!6110536 () Bool)

(assert (=> d!1634193 m!6110536))

(declare-fun m!6110538 () Bool)

(assert (=> b!5067420 m!6110538))

(declare-fun m!6110540 () Bool)

(assert (=> b!5067420 m!6110540))

(assert (=> b!5067420 m!6110538))

(assert (=> b!5067420 m!6110540))

(declare-fun m!6110542 () Bool)

(assert (=> b!5067420 m!6110542))

(assert (=> b!5066538 d!1634193))

(declare-fun b!5067424 () Bool)

(declare-fun res!2157589 () Bool)

(declare-fun e!3162237 () Bool)

(assert (=> b!5067424 (=> (not res!2157589) (not e!3162237))))

(declare-fun lt!2089073 () List!58558)

(assert (=> b!5067424 (= res!2157589 (= (size!39074 lt!2089073) (+ (size!39074 (list!18989 (left!42816 (right!43146 xs!286)))) (size!39074 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))))

(declare-fun b!5067425 () Bool)

(assert (=> b!5067425 (= e!3162237 (or (not (= (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)) Nil!58434)) (= lt!2089073 (list!18989 (left!42816 (right!43146 xs!286))))))))

(declare-fun b!5067423 () Bool)

(declare-fun e!3162238 () List!58558)

(assert (=> b!5067423 (= e!3162238 (Cons!58434 (h!64882 (list!18989 (left!42816 (right!43146 xs!286)))) (++!12789 (t!371291 (list!18989 (left!42816 (right!43146 xs!286)))) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)))))))

(declare-fun b!5067422 () Bool)

(assert (=> b!5067422 (= e!3162238 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)))))

(declare-fun d!1634195 () Bool)

(assert (=> d!1634195 e!3162237))

(declare-fun res!2157588 () Bool)

(assert (=> d!1634195 (=> (not res!2157588) (not e!3162237))))

(assert (=> d!1634195 (= res!2157588 (= (content!10417 lt!2089073) ((_ map or) (content!10417 (list!18989 (left!42816 (right!43146 xs!286)))) (content!10417 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))))))))

(assert (=> d!1634195 (= lt!2089073 e!3162238)))

(declare-fun c!869971 () Bool)

(assert (=> d!1634195 (= c!869971 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 xs!286)))))))

(assert (=> d!1634195 (= (++!12789 (list!18989 (left!42816 (right!43146 xs!286))) (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41))) lt!2089073)))

(assert (= (and d!1634195 c!869971) b!5067422))

(assert (= (and d!1634195 (not c!869971)) b!5067423))

(assert (= (and d!1634195 res!2157588) b!5067424))

(assert (= (and b!5067424 res!2157589) b!5067425))

(declare-fun m!6110544 () Bool)

(assert (=> b!5067424 m!6110544))

(assert (=> b!5067424 m!6108092))

(assert (=> b!5067424 m!6108554))

(assert (=> b!5067424 m!6108110))

(assert (=> b!5067424 m!6110104))

(assert (=> b!5067423 m!6108110))

(declare-fun m!6110546 () Bool)

(assert (=> b!5067423 m!6110546))

(declare-fun m!6110548 () Bool)

(assert (=> d!1634195 m!6110548))

(assert (=> d!1634195 m!6108092))

(assert (=> d!1634195 m!6108770))

(assert (=> d!1634195 m!6108110))

(assert (=> d!1634195 m!6110112))

(assert (=> bm!353022 d!1634195))

(declare-fun d!1634197 () Bool)

(declare-fun lt!2089074 () Bool)

(assert (=> d!1634197 (= lt!2089074 (isEmpty!31632 (list!18989 (left!42816 (right!43146 xs!286)))))))

(assert (=> d!1634197 (= lt!2089074 (= (size!39075 (left!42816 (right!43146 xs!286))) 0))))

(assert (=> d!1634197 (= (isEmpty!31631 (left!42816 (right!43146 xs!286))) lt!2089074)))

(declare-fun bs!1189943 () Bool)

(assert (= bs!1189943 d!1634197))

(assert (=> bs!1189943 m!6108092))

(assert (=> bs!1189943 m!6108092))

(declare-fun m!6110550 () Bool)

(assert (=> bs!1189943 m!6110550))

(assert (=> bs!1189943 m!6108148))

(assert (=> b!5066501 d!1634197))

(assert (=> d!1633425 d!1633989))

(assert (=> d!1633425 d!1633621))

(declare-fun b!5067426 () Bool)

(declare-fun res!2157592 () Bool)

(declare-fun e!3162240 () Bool)

(assert (=> b!5067426 (=> (not res!2157592) (not e!3162240))))

(assert (=> b!5067426 (= res!2157592 (isBalanced!4426 (left!42816 (right!43146 (left!42816 lt!2088868)))))))

(declare-fun b!5067427 () Bool)

(declare-fun e!3162239 () Bool)

(assert (=> b!5067427 (= e!3162239 e!3162240)))

(declare-fun res!2157595 () Bool)

(assert (=> b!5067427 (=> (not res!2157595) (not e!3162240))))

(assert (=> b!5067427 (= res!2157595 (<= (- 1) (- (height!2141 (left!42816 (right!43146 (left!42816 lt!2088868)))) (height!2141 (right!43146 (right!43146 (left!42816 lt!2088868)))))))))

(declare-fun b!5067428 () Bool)

(declare-fun res!2157590 () Bool)

(assert (=> b!5067428 (=> (not res!2157590) (not e!3162240))))

(assert (=> b!5067428 (= res!2157590 (not (isEmpty!31631 (left!42816 (right!43146 (left!42816 lt!2088868))))))))

(declare-fun b!5067430 () Bool)

(declare-fun res!2157594 () Bool)

(assert (=> b!5067430 (=> (not res!2157594) (not e!3162240))))

(assert (=> b!5067430 (= res!2157594 (<= (- (height!2141 (left!42816 (right!43146 (left!42816 lt!2088868)))) (height!2141 (right!43146 (right!43146 (left!42816 lt!2088868))))) 1))))

(declare-fun b!5067431 () Bool)

(assert (=> b!5067431 (= e!3162240 (not (isEmpty!31631 (right!43146 (right!43146 (left!42816 lt!2088868))))))))

(declare-fun b!5067429 () Bool)

(declare-fun res!2157591 () Bool)

(assert (=> b!5067429 (=> (not res!2157591) (not e!3162240))))

(assert (=> b!5067429 (= res!2157591 (isBalanced!4426 (right!43146 (right!43146 (left!42816 lt!2088868)))))))

(declare-fun d!1634199 () Bool)

(declare-fun res!2157593 () Bool)

(assert (=> d!1634199 (=> res!2157593 e!3162239)))

(assert (=> d!1634199 (= res!2157593 (not ((_ is Node!15564) (right!43146 (left!42816 lt!2088868)))))))

(assert (=> d!1634199 (= (isBalanced!4426 (right!43146 (left!42816 lt!2088868))) e!3162239)))

(assert (= (and d!1634199 (not res!2157593)) b!5067427))

(assert (= (and b!5067427 res!2157595) b!5067430))

(assert (= (and b!5067430 res!2157594) b!5067426))

(assert (= (and b!5067426 res!2157592) b!5067429))

(assert (= (and b!5067429 res!2157591) b!5067428))

(assert (= (and b!5067428 res!2157590) b!5067431))

(declare-fun m!6110552 () Bool)

(assert (=> b!5067428 m!6110552))

(declare-fun m!6110554 () Bool)

(assert (=> b!5067426 m!6110554))

(declare-fun m!6110556 () Bool)

(assert (=> b!5067431 m!6110556))

(declare-fun m!6110558 () Bool)

(assert (=> b!5067430 m!6110558))

(declare-fun m!6110560 () Bool)

(assert (=> b!5067430 m!6110560))

(declare-fun m!6110562 () Bool)

(assert (=> b!5067429 m!6110562))

(assert (=> b!5067427 m!6110558))

(assert (=> b!5067427 m!6110560))

(assert (=> b!5066658 d!1634199))

(declare-fun d!1634201 () Bool)

(declare-fun res!2157596 () Bool)

(declare-fun e!3162241 () Bool)

(assert (=> d!1634201 (=> (not res!2157596) (not e!3162241))))

(assert (=> d!1634201 (= res!2157596 (<= (size!39074 (list!18990 (xs!18914 (right!43146 (right!43146 ys!41))))) 512))))

(assert (=> d!1634201 (= (inv!77560 (right!43146 (right!43146 ys!41))) e!3162241)))

(declare-fun b!5067432 () Bool)

(declare-fun res!2157597 () Bool)

(assert (=> b!5067432 (=> (not res!2157597) (not e!3162241))))

(assert (=> b!5067432 (= res!2157597 (= (csize!31359 (right!43146 (right!43146 ys!41))) (size!39074 (list!18990 (xs!18914 (right!43146 (right!43146 ys!41)))))))))

(declare-fun b!5067433 () Bool)

(assert (=> b!5067433 (= e!3162241 (and (> (csize!31359 (right!43146 (right!43146 ys!41))) 0) (<= (csize!31359 (right!43146 (right!43146 ys!41))) 512)))))

(assert (= (and d!1634201 res!2157596) b!5067432))

(assert (= (and b!5067432 res!2157597) b!5067433))

(assert (=> d!1634201 m!6109736))

(assert (=> d!1634201 m!6109736))

(declare-fun m!6110564 () Bool)

(assert (=> d!1634201 m!6110564))

(assert (=> b!5067432 m!6109736))

(assert (=> b!5067432 m!6109736))

(assert (=> b!5067432 m!6110564))

(assert (=> b!5066666 d!1634201))

(declare-fun b!5067436 () Bool)

(declare-fun res!2157599 () Bool)

(declare-fun e!3162242 () Bool)

(assert (=> b!5067436 (=> (not res!2157599) (not e!3162242))))

(declare-fun lt!2089075 () List!58558)

(assert (=> b!5067436 (= res!2157599 (= (size!39074 lt!2089075) (+ (size!39074 (list!18989 (right!43146 (left!42816 ys!41)))) (size!39074 (list!18989 (right!43146 ys!41))))))))

(declare-fun b!5067437 () Bool)

(assert (=> b!5067437 (= e!3162242 (or (not (= (list!18989 (right!43146 ys!41)) Nil!58434)) (= lt!2089075 (list!18989 (right!43146 (left!42816 ys!41))))))))

(declare-fun b!5067435 () Bool)

(declare-fun e!3162243 () List!58558)

(assert (=> b!5067435 (= e!3162243 (Cons!58434 (h!64882 (list!18989 (right!43146 (left!42816 ys!41)))) (++!12789 (t!371291 (list!18989 (right!43146 (left!42816 ys!41)))) (list!18989 (right!43146 ys!41)))))))

(declare-fun b!5067434 () Bool)

(assert (=> b!5067434 (= e!3162243 (list!18989 (right!43146 ys!41)))))

(declare-fun d!1634203 () Bool)

(assert (=> d!1634203 e!3162242))

(declare-fun res!2157598 () Bool)

(assert (=> d!1634203 (=> (not res!2157598) (not e!3162242))))

(assert (=> d!1634203 (= res!2157598 (= (content!10417 lt!2089075) ((_ map or) (content!10417 (list!18989 (right!43146 (left!42816 ys!41)))) (content!10417 (list!18989 (right!43146 ys!41))))))))

(assert (=> d!1634203 (= lt!2089075 e!3162243)))

(declare-fun c!869972 () Bool)

(assert (=> d!1634203 (= c!869972 ((_ is Nil!58434) (list!18989 (right!43146 (left!42816 ys!41)))))))

(assert (=> d!1634203 (= (++!12789 (list!18989 (right!43146 (left!42816 ys!41))) (list!18989 (right!43146 ys!41))) lt!2089075)))

(assert (= (and d!1634203 c!869972) b!5067434))

(assert (= (and d!1634203 (not c!869972)) b!5067435))

(assert (= (and d!1634203 res!2157598) b!5067436))

(assert (= (and b!5067436 res!2157599) b!5067437))

(declare-fun m!6110566 () Bool)

(assert (=> b!5067436 m!6110566))

(assert (=> b!5067436 m!6108106))

(assert (=> b!5067436 m!6109638))

(assert (=> b!5067436 m!6108100))

(assert (=> b!5067436 m!6109080))

(assert (=> b!5067435 m!6108100))

(declare-fun m!6110568 () Bool)

(assert (=> b!5067435 m!6110568))

(declare-fun m!6110570 () Bool)

(assert (=> d!1634203 m!6110570))

(assert (=> d!1634203 m!6108106))

(assert (=> d!1634203 m!6109646))

(assert (=> d!1634203 m!6108100))

(assert (=> d!1634203 m!6109088))

(assert (=> bm!353058 d!1634203))

(declare-fun d!1634205 () Bool)

(declare-fun lt!2089076 () Bool)

(assert (=> d!1634205 (= lt!2089076 (isEmpty!31632 (list!18989 (right!43146 lt!2088908))))))

(assert (=> d!1634205 (= lt!2089076 (= (size!39075 (right!43146 lt!2088908)) 0))))

(assert (=> d!1634205 (= (isEmpty!31631 (right!43146 lt!2088908)) lt!2089076)))

(declare-fun bs!1189944 () Bool)

(assert (= bs!1189944 d!1634205))

(assert (=> bs!1189944 m!6108476))

(assert (=> bs!1189944 m!6108476))

(declare-fun m!6110572 () Bool)

(assert (=> bs!1189944 m!6110572))

(declare-fun m!6110574 () Bool)

(assert (=> bs!1189944 m!6110574))

(assert (=> b!5066498 d!1634205))

(declare-fun d!1634207 () Bool)

(declare-fun lt!2089077 () Bool)

(assert (=> d!1634207 (= lt!2089077 (isEmpty!31632 (list!18989 (left!42816 (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1634207 (= lt!2089077 (= (size!39075 (left!42816 (right!43146 (right!43146 xs!286)))) 0))))

(assert (=> d!1634207 (= (isEmpty!31631 (left!42816 (right!43146 (right!43146 xs!286)))) lt!2089077)))

(declare-fun bs!1189945 () Bool)

(assert (= bs!1189945 d!1634207))

(assert (=> bs!1189945 m!6108492))

(assert (=> bs!1189945 m!6108492))

(declare-fun m!6110576 () Bool)

(assert (=> bs!1189945 m!6110576))

(assert (=> bs!1189945 m!6110478))

(assert (=> b!5066630 d!1634207))

(declare-fun d!1634209 () Bool)

(assert (=> d!1634209 (= (list!18990 (xs!18914 (right!43146 (left!42816 ys!41)))) (innerList!15652 (xs!18914 (right!43146 (left!42816 ys!41)))))))

(assert (=> b!5066706 d!1634209))

(declare-fun b!5067440 () Bool)

(declare-fun res!2157601 () Bool)

(declare-fun e!3162244 () Bool)

(assert (=> b!5067440 (=> (not res!2157601) (not e!3162244))))

(declare-fun lt!2089078 () List!58558)

(assert (=> b!5067440 (= res!2157601 (= (size!39074 lt!2089078) (+ (size!39074 (list!18989 xs!286)) (size!39074 (list!18989 (left!42816 ys!41))))))))

(declare-fun b!5067441 () Bool)

(assert (=> b!5067441 (= e!3162244 (or (not (= (list!18989 (left!42816 ys!41)) Nil!58434)) (= lt!2089078 (list!18989 xs!286))))))

(declare-fun b!5067439 () Bool)

(declare-fun e!3162245 () List!58558)

(assert (=> b!5067439 (= e!3162245 (Cons!58434 (h!64882 (list!18989 xs!286)) (++!12789 (t!371291 (list!18989 xs!286)) (list!18989 (left!42816 ys!41)))))))

(declare-fun b!5067438 () Bool)

(assert (=> b!5067438 (= e!3162245 (list!18989 (left!42816 ys!41)))))

(declare-fun d!1634211 () Bool)

(assert (=> d!1634211 e!3162244))

(declare-fun res!2157600 () Bool)

(assert (=> d!1634211 (=> (not res!2157600) (not e!3162244))))

(assert (=> d!1634211 (= res!2157600 (= (content!10417 lt!2089078) ((_ map or) (content!10417 (list!18989 xs!286)) (content!10417 (list!18989 (left!42816 ys!41))))))))

(assert (=> d!1634211 (= lt!2089078 e!3162245)))

(declare-fun c!869973 () Bool)

(assert (=> d!1634211 (= c!869973 ((_ is Nil!58434) (list!18989 xs!286)))))

(assert (=> d!1634211 (= (++!12789 (list!18989 xs!286) (list!18989 (left!42816 ys!41))) lt!2089078)))

(assert (= (and d!1634211 c!869973) b!5067438))

(assert (= (and d!1634211 (not c!869973)) b!5067439))

(assert (= (and d!1634211 res!2157600) b!5067440))

(assert (= (and b!5067440 res!2157601) b!5067441))

(declare-fun m!6110578 () Bool)

(assert (=> b!5067440 m!6110578))

(assert (=> b!5067440 m!6107972))

(assert (=> b!5067440 m!6108162))

(assert (=> b!5067440 m!6108098))

(assert (=> b!5067440 m!6109078))

(assert (=> b!5067439 m!6108098))

(assert (=> b!5067439 m!6109910))

(declare-fun m!6110580 () Bool)

(assert (=> d!1634211 m!6110580))

(assert (=> d!1634211 m!6107972))

(assert (=> d!1634211 m!6108170))

(assert (=> d!1634211 m!6108098))

(assert (=> d!1634211 m!6109086))

(assert (=> bm!353016 d!1634211))

(declare-fun bm!353137 () Bool)

(declare-fun call!353144 () List!58558)

(declare-fun call!353145 () List!58558)

(assert (=> bm!353137 (= call!353144 (++!12789 call!353145 (list!18989 ys!41)))))

(declare-fun bm!353138 () Bool)

(declare-fun call!353143 () List!58558)

(assert (=> bm!353138 (= call!353143 (++!12789 (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41)))))

(declare-fun bm!353139 () Bool)

(declare-fun call!353142 () List!58558)

(assert (=> bm!353139 (= call!353142 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) call!353143))))

(declare-fun b!5067443 () Bool)

(declare-fun e!3162246 () Bool)

(assert (=> b!5067443 (= e!3162246 (= call!353144 call!353142))))

(declare-fun bm!353140 () Bool)

(assert (=> bm!353140 (= call!353145 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(declare-fun d!1634213 () Bool)

(assert (=> d!1634213 e!3162246))

(declare-fun c!869974 () Bool)

(assert (=> d!1634213 (= c!869974 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(assert (=> d!1634213 (= (appendAssoc!301 (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41)) true)))

(declare-fun b!5067442 () Bool)

(assert (=> b!5067442 (= e!3162246 (= call!353144 call!353142))))

(declare-fun lt!2089079 () Bool)

(assert (=> b!5067442 (= lt!2089079 (appendAssoc!301 (t!371291 (list!18989 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))) (list!18989 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (list!18989 ys!41)))))

(assert (= (and d!1634213 c!869974) b!5067443))

(assert (= (and d!1634213 (not c!869974)) b!5067442))

(assert (= (or b!5067443 b!5067442) bm!353140))

(assert (= (or b!5067443 b!5067442) bm!353138))

(assert (= (or b!5067443 b!5067442) bm!353139))

(assert (= (or b!5067443 b!5067442) bm!353137))

(assert (=> bm!353139 m!6108850))

(declare-fun m!6110582 () Bool)

(assert (=> bm!353139 m!6110582))

(assert (=> bm!353140 m!6108850))

(assert (=> bm!353140 m!6108852))

(assert (=> bm!353140 m!6109988))

(assert (=> bm!353138 m!6108852))

(assert (=> bm!353138 m!6107974))

(assert (=> bm!353138 m!6108862))

(assert (=> b!5067442 m!6108852))

(assert (=> b!5067442 m!6107974))

(declare-fun m!6110584 () Bool)

(assert (=> b!5067442 m!6110584))

(assert (=> bm!353137 m!6107974))

(declare-fun m!6110586 () Bool)

(assert (=> bm!353137 m!6110586))

(assert (=> b!5066616 d!1634213))

(assert (=> b!5066616 d!1633895))

(assert (=> b!5066616 d!1633901))

(assert (=> b!5066616 d!1633365))

(declare-fun b!5067444 () Bool)

(declare-fun res!2157604 () Bool)

(declare-fun e!3162248 () Bool)

(assert (=> b!5067444 (=> (not res!2157604) (not e!3162248))))

(assert (=> b!5067444 (= res!2157604 (isBalanced!4426 (left!42816 lt!2088958)))))

(declare-fun b!5067445 () Bool)

(declare-fun e!3162247 () Bool)

(assert (=> b!5067445 (= e!3162247 e!3162248)))

(declare-fun res!2157607 () Bool)

(assert (=> b!5067445 (=> (not res!2157607) (not e!3162248))))

(assert (=> b!5067445 (= res!2157607 (<= (- 1) (- (height!2141 (left!42816 lt!2088958)) (height!2141 (right!43146 lt!2088958)))))))

(declare-fun b!5067446 () Bool)

(declare-fun res!2157602 () Bool)

(assert (=> b!5067446 (=> (not res!2157602) (not e!3162248))))

(assert (=> b!5067446 (= res!2157602 (not (isEmpty!31631 (left!42816 lt!2088958))))))

(declare-fun b!5067448 () Bool)

(declare-fun res!2157606 () Bool)

(assert (=> b!5067448 (=> (not res!2157606) (not e!3162248))))

(assert (=> b!5067448 (= res!2157606 (<= (- (height!2141 (left!42816 lt!2088958)) (height!2141 (right!43146 lt!2088958))) 1))))

(declare-fun b!5067449 () Bool)

(assert (=> b!5067449 (= e!3162248 (not (isEmpty!31631 (right!43146 lt!2088958))))))

(declare-fun b!5067447 () Bool)

(declare-fun res!2157603 () Bool)

(assert (=> b!5067447 (=> (not res!2157603) (not e!3162248))))

(assert (=> b!5067447 (= res!2157603 (isBalanced!4426 (right!43146 lt!2088958)))))

(declare-fun d!1634215 () Bool)

(declare-fun res!2157605 () Bool)

(assert (=> d!1634215 (=> res!2157605 e!3162247)))

(assert (=> d!1634215 (= res!2157605 (not ((_ is Node!15564) lt!2088958)))))

(assert (=> d!1634215 (= (isBalanced!4426 lt!2088958) e!3162247)))

(assert (= (and d!1634215 (not res!2157605)) b!5067445))

(assert (= (and b!5067445 res!2157607) b!5067448))

(assert (= (and b!5067448 res!2157606) b!5067444))

(assert (= (and b!5067444 res!2157604) b!5067447))

(assert (= (and b!5067447 res!2157603) b!5067446))

(assert (= (and b!5067446 res!2157602) b!5067449))

(declare-fun m!6110588 () Bool)

(assert (=> b!5067446 m!6110588))

(declare-fun m!6110590 () Bool)

(assert (=> b!5067444 m!6110590))

(declare-fun m!6110592 () Bool)

(assert (=> b!5067449 m!6110592))

(declare-fun m!6110594 () Bool)

(assert (=> b!5067448 m!6110594))

(declare-fun m!6110596 () Bool)

(assert (=> b!5067448 m!6110596))

(declare-fun m!6110598 () Bool)

(assert (=> b!5067447 m!6110598))

(assert (=> b!5067445 m!6110594))

(assert (=> b!5067445 m!6110596))

(assert (=> b!5066670 d!1634215))

(assert (=> b!5066544 d!1633827))

(assert (=> b!5066544 d!1633829))

(declare-fun d!1634217 () Bool)

(declare-fun res!2157608 () Bool)

(declare-fun e!3162249 () Bool)

(assert (=> d!1634217 (=> (not res!2157608) (not e!3162249))))

(assert (=> d!1634217 (= res!2157608 (<= (size!39074 (list!18990 (xs!18914 (right!43146 (left!42816 ys!41))))) 512))))

(assert (=> d!1634217 (= (inv!77560 (right!43146 (left!42816 ys!41))) e!3162249)))

(declare-fun b!5067450 () Bool)

(declare-fun res!2157609 () Bool)

(assert (=> b!5067450 (=> (not res!2157609) (not e!3162249))))

(assert (=> b!5067450 (= res!2157609 (= (csize!31359 (right!43146 (left!42816 ys!41))) (size!39074 (list!18990 (xs!18914 (right!43146 (left!42816 ys!41)))))))))

(declare-fun b!5067451 () Bool)

(assert (=> b!5067451 (= e!3162249 (and (> (csize!31359 (right!43146 (left!42816 ys!41))) 0) (<= (csize!31359 (right!43146 (left!42816 ys!41))) 512)))))

(assert (= (and d!1634217 res!2157608) b!5067450))

(assert (= (and b!5067450 res!2157609) b!5067451))

(assert (=> d!1634217 m!6109022))

(assert (=> d!1634217 m!6109022))

(declare-fun m!6110600 () Bool)

(assert (=> d!1634217 m!6110600))

(assert (=> b!5067450 m!6109022))

(assert (=> b!5067450 m!6109022))

(assert (=> b!5067450 m!6110600))

(assert (=> b!5066445 d!1634217))

(declare-fun d!1634219 () Bool)

(declare-fun lt!2089080 () Bool)

(assert (=> d!1634219 (= lt!2089080 (isEmpty!31632 (list!18989 (left!42816 (left!42816 ys!41)))))))

(assert (=> d!1634219 (= lt!2089080 (= (size!39075 (left!42816 (left!42816 ys!41))) 0))))

(assert (=> d!1634219 (= (isEmpty!31631 (left!42816 (left!42816 ys!41))) lt!2089080)))

(declare-fun bs!1189946 () Bool)

(assert (= bs!1189946 d!1634219))

(assert (=> bs!1189946 m!6108104))

(assert (=> bs!1189946 m!6108104))

(declare-fun m!6110602 () Bool)

(assert (=> bs!1189946 m!6110602))

(assert (=> bs!1189946 m!6108586))

(assert (=> b!5066581 d!1634219))

(declare-fun d!1634221 () Bool)

(assert (=> d!1634221 (= (list!18990 (xs!18914 lt!2088874)) (innerList!15652 (xs!18914 lt!2088874)))))

(assert (=> b!5066690 d!1634221))

(declare-fun d!1634223 () Bool)

(assert (=> d!1634223 (= (list!18990 (xs!18914 lt!2088865)) (innerList!15652 (xs!18914 lt!2088865)))))

(assert (=> b!5066702 d!1634223))

(assert (=> b!5066524 d!1633979))

(assert (=> b!5066383 d!1633607))

(assert (=> b!5066383 d!1633609))

(declare-fun d!1634225 () Bool)

(assert (=> d!1634225 (= (max!0 (height!2141 (left!42816 (left!42816 ys!41))) (height!2141 (right!43146 (left!42816 ys!41)))) (ite (< (height!2141 (left!42816 (left!42816 ys!41))) (height!2141 (right!43146 (left!42816 ys!41)))) (height!2141 (right!43146 (left!42816 ys!41))) (height!2141 (left!42816 (left!42816 ys!41)))))))

(assert (=> b!5066481 d!1634225))

(assert (=> b!5066481 d!1634145))

(assert (=> b!5066481 d!1634147))

(declare-fun d!1634227 () Bool)

(declare-fun lt!2089081 () Int)

(assert (=> d!1634227 (>= lt!2089081 0)))

(declare-fun e!3162250 () Int)

(assert (=> d!1634227 (= lt!2089081 e!3162250)))

(declare-fun c!869975 () Bool)

(assert (=> d!1634227 (= c!869975 ((_ is Nil!58434) lt!2088963))))

(assert (=> d!1634227 (= (size!39074 lt!2088963) lt!2089081)))

(declare-fun b!5067452 () Bool)

(assert (=> b!5067452 (= e!3162250 0)))

(declare-fun b!5067453 () Bool)

(assert (=> b!5067453 (= e!3162250 (+ 1 (size!39074 (t!371291 lt!2088963))))))

(assert (= (and d!1634227 c!869975) b!5067452))

(assert (= (and d!1634227 (not c!869975)) b!5067453))

(declare-fun m!6110604 () Bool)

(assert (=> b!5067453 m!6110604))

(assert (=> b!5066712 d!1634227))

(assert (=> b!5066712 d!1633583))

(declare-fun d!1634229 () Bool)

(declare-fun lt!2089082 () Int)

(assert (=> d!1634229 (>= lt!2089082 0)))

(declare-fun e!3162251 () Int)

(assert (=> d!1634229 (= lt!2089082 e!3162251)))

(declare-fun c!869976 () Bool)

(assert (=> d!1634229 (= c!869976 ((_ is Nil!58434) (list!18989 (left!42816 (left!42816 ys!41)))))))

(assert (=> d!1634229 (= (size!39074 (list!18989 (left!42816 (left!42816 ys!41)))) lt!2089082)))

(declare-fun b!5067454 () Bool)

(assert (=> b!5067454 (= e!3162251 0)))

(declare-fun b!5067455 () Bool)

(assert (=> b!5067455 (= e!3162251 (+ 1 (size!39074 (t!371291 (list!18989 (left!42816 (left!42816 ys!41)))))))))

(assert (= (and d!1634229 c!869976) b!5067454))

(assert (= (and d!1634229 (not c!869976)) b!5067455))

(declare-fun m!6110606 () Bool)

(assert (=> b!5067455 m!6110606))

(assert (=> b!5066712 d!1634229))

(assert (=> d!1633565 d!1633911))

(assert (=> d!1633565 d!1633527))

(declare-fun d!1634231 () Bool)

(declare-fun c!869977 () Bool)

(assert (=> d!1634231 (= c!869977 ((_ is Nil!58434) lt!2088968))))

(declare-fun e!3162252 () (InoxSet T!105118))

(assert (=> d!1634231 (= (content!10417 lt!2088968) e!3162252)))

(declare-fun b!5067456 () Bool)

(assert (=> b!5067456 (= e!3162252 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067457 () Bool)

(assert (=> b!5067457 (= e!3162252 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 lt!2088968) true) (content!10417 (t!371291 lt!2088968))))))

(assert (= (and d!1634231 c!869977) b!5067456))

(assert (= (and d!1634231 (not c!869977)) b!5067457))

(declare-fun m!6110608 () Bool)

(assert (=> b!5067457 m!6110608))

(declare-fun m!6110610 () Bool)

(assert (=> b!5067457 m!6110610))

(assert (=> d!1633647 d!1634231))

(declare-fun d!1634233 () Bool)

(declare-fun c!869978 () Bool)

(assert (=> d!1634233 (= c!869978 ((_ is Nil!58434) (list!18989 (left!42816 ys!41))))))

(declare-fun e!3162253 () (InoxSet T!105118))

(assert (=> d!1634233 (= (content!10417 (list!18989 (left!42816 ys!41))) e!3162253)))

(declare-fun b!5067458 () Bool)

(assert (=> b!5067458 (= e!3162253 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067459 () Bool)

(assert (=> b!5067459 (= e!3162253 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 (left!42816 ys!41))) true) (content!10417 (t!371291 (list!18989 (left!42816 ys!41))))))))

(assert (= (and d!1634233 c!869978) b!5067458))

(assert (= (and d!1634233 (not c!869978)) b!5067459))

(declare-fun m!6110612 () Bool)

(assert (=> b!5067459 m!6110612))

(assert (=> b!5067459 m!6109976))

(assert (=> d!1633647 d!1634233))

(declare-fun d!1634235 () Bool)

(declare-fun c!869979 () Bool)

(assert (=> d!1634235 (= c!869979 ((_ is Nil!58434) (list!18989 (right!43146 ys!41))))))

(declare-fun e!3162254 () (InoxSet T!105118))

(assert (=> d!1634235 (= (content!10417 (list!18989 (right!43146 ys!41))) e!3162254)))

(declare-fun b!5067460 () Bool)

(assert (=> b!5067460 (= e!3162254 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067461 () Bool)

(assert (=> b!5067461 (= e!3162254 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 (right!43146 ys!41))) true) (content!10417 (t!371291 (list!18989 (right!43146 ys!41))))))))

(assert (= (and d!1634235 c!869979) b!5067460))

(assert (= (and d!1634235 (not c!869979)) b!5067461))

(declare-fun m!6110614 () Bool)

(assert (=> b!5067461 m!6110614))

(declare-fun m!6110616 () Bool)

(assert (=> b!5067461 m!6110616))

(assert (=> d!1633647 d!1634235))

(declare-fun d!1634237 () Bool)

(declare-fun lt!2089083 () Bool)

(assert (=> d!1634237 (= lt!2089083 (isEmpty!31632 (list!18989 (left!42816 (left!42816 xs!286)))))))

(assert (=> d!1634237 (= lt!2089083 (= (size!39075 (left!42816 (left!42816 xs!286))) 0))))

(assert (=> d!1634237 (= (isEmpty!31631 (left!42816 (left!42816 xs!286))) lt!2089083)))

(declare-fun bs!1189947 () Bool)

(assert (= bs!1189947 d!1634237))

(assert (=> bs!1189947 m!6108442))

(assert (=> bs!1189947 m!6108442))

(declare-fun m!6110618 () Bool)

(assert (=> bs!1189947 m!6110618))

(assert (=> bs!1189947 m!6108836))

(assert (=> b!5066720 d!1634237))

(declare-fun b!5067464 () Bool)

(declare-fun res!2157611 () Bool)

(declare-fun e!3162255 () Bool)

(assert (=> b!5067464 (=> (not res!2157611) (not e!3162255))))

(declare-fun lt!2089084 () List!58558)

(assert (=> b!5067464 (= res!2157611 (= (size!39074 lt!2089084) (+ (size!39074 (list!18989 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) (size!39074 (list!18989 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))))))

(declare-fun b!5067465 () Bool)

(assert (=> b!5067465 (= e!3162255 (or (not (= (list!18989 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) Nil!58434)) (= lt!2089084 (list!18989 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))))

(declare-fun b!5067463 () Bool)

(declare-fun e!3162256 () List!58558)

(assert (=> b!5067463 (= e!3162256 (Cons!58434 (h!64882 (list!18989 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) (++!12789 (t!371291 (list!18989 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) (list!18989 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))))

(declare-fun b!5067462 () Bool)

(assert (=> b!5067462 (= e!3162256 (list!18989 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(declare-fun d!1634239 () Bool)

(assert (=> d!1634239 e!3162255))

(declare-fun res!2157610 () Bool)

(assert (=> d!1634239 (=> (not res!2157610) (not e!3162255))))

(assert (=> d!1634239 (= res!2157610 (= (content!10417 lt!2089084) ((_ map or) (content!10417 (list!18989 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) (content!10417 (list!18989 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))))))

(assert (=> d!1634239 (= lt!2089084 e!3162256)))

(declare-fun c!869980 () Bool)

(assert (=> d!1634239 (= c!869980 ((_ is Nil!58434) (list!18989 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))))

(assert (=> d!1634239 (= (++!12789 (list!18989 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) (list!18989 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) lt!2089084)))

(assert (= (and d!1634239 c!869980) b!5067462))

(assert (= (and d!1634239 (not c!869980)) b!5067463))

(assert (= (and d!1634239 res!2157610) b!5067464))

(assert (= (and b!5067464 res!2157611) b!5067465))

(declare-fun m!6110620 () Bool)

(assert (=> b!5067464 m!6110620))

(assert (=> b!5067464 m!6108992))

(declare-fun m!6110622 () Bool)

(assert (=> b!5067464 m!6110622))

(assert (=> b!5067464 m!6108994))

(declare-fun m!6110624 () Bool)

(assert (=> b!5067464 m!6110624))

(assert (=> b!5067463 m!6108994))

(declare-fun m!6110626 () Bool)

(assert (=> b!5067463 m!6110626))

(declare-fun m!6110628 () Bool)

(assert (=> d!1634239 m!6110628))

(assert (=> d!1634239 m!6108992))

(declare-fun m!6110630 () Bool)

(assert (=> d!1634239 m!6110630))

(assert (=> d!1634239 m!6108994))

(declare-fun m!6110632 () Bool)

(assert (=> d!1634239 m!6110632))

(assert (=> b!5066699 d!1634239))

(declare-fun d!1634241 () Bool)

(declare-fun c!869981 () Bool)

(assert (=> d!1634241 (= c!869981 ((_ is Empty!15564) (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(declare-fun e!3162257 () List!58558)

(assert (=> d!1634241 (= (list!18989 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) e!3162257)))

(declare-fun b!5067467 () Bool)

(declare-fun e!3162258 () List!58558)

(assert (=> b!5067467 (= e!3162257 e!3162258)))

(declare-fun c!869982 () Bool)

(assert (=> b!5067467 (= c!869982 ((_ is Leaf!25851) (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(declare-fun b!5067466 () Bool)

(assert (=> b!5067466 (= e!3162257 Nil!58434)))

(declare-fun b!5067469 () Bool)

(assert (=> b!5067469 (= e!3162258 (++!12789 (list!18989 (left!42816 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) (list!18989 (right!43146 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))))

(declare-fun b!5067468 () Bool)

(assert (=> b!5067468 (= e!3162258 (list!18990 (xs!18914 (left!42816 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))))

(assert (= (and d!1634241 c!869981) b!5067466))

(assert (= (and d!1634241 (not c!869981)) b!5067467))

(assert (= (and b!5067467 c!869982) b!5067468))

(assert (= (and b!5067467 (not c!869982)) b!5067469))

(declare-fun m!6110634 () Bool)

(assert (=> b!5067469 m!6110634))

(declare-fun m!6110636 () Bool)

(assert (=> b!5067469 m!6110636))

(assert (=> b!5067469 m!6110634))

(assert (=> b!5067469 m!6110636))

(declare-fun m!6110638 () Bool)

(assert (=> b!5067469 m!6110638))

(declare-fun m!6110640 () Bool)

(assert (=> b!5067468 m!6110640))

(assert (=> b!5066699 d!1634241))

(declare-fun d!1634243 () Bool)

(declare-fun c!869983 () Bool)

(assert (=> d!1634243 (= c!869983 ((_ is Empty!15564) (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(declare-fun e!3162259 () List!58558)

(assert (=> d!1634243 (= (list!18989 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))) e!3162259)))

(declare-fun b!5067471 () Bool)

(declare-fun e!3162260 () List!58558)

(assert (=> b!5067471 (= e!3162259 e!3162260)))

(declare-fun c!869984 () Bool)

(assert (=> b!5067471 (= c!869984 ((_ is Leaf!25851) (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))

(declare-fun b!5067470 () Bool)

(assert (=> b!5067470 (= e!3162259 Nil!58434)))

(declare-fun b!5067473 () Bool)

(assert (=> b!5067473 (= e!3162260 (++!12789 (list!18989 (left!42816 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))) (list!18989 (right!43146 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286))))))))))

(declare-fun b!5067472 () Bool)

(assert (=> b!5067472 (= e!3162260 (list!18990 (xs!18914 (right!43146 (<>!396 (left!42816 xs!286) (left!42816 (right!43146 xs!286)))))))))

(assert (= (and d!1634243 c!869983) b!5067470))

(assert (= (and d!1634243 (not c!869983)) b!5067471))

(assert (= (and b!5067471 c!869984) b!5067472))

(assert (= (and b!5067471 (not c!869984)) b!5067473))

(declare-fun m!6110642 () Bool)

(assert (=> b!5067473 m!6110642))

(declare-fun m!6110644 () Bool)

(assert (=> b!5067473 m!6110644))

(assert (=> b!5067473 m!6110642))

(assert (=> b!5067473 m!6110644))

(declare-fun m!6110646 () Bool)

(assert (=> b!5067473 m!6110646))

(declare-fun m!6110648 () Bool)

(assert (=> b!5067472 m!6110648))

(assert (=> b!5066699 d!1634243))

(declare-fun d!1634245 () Bool)

(declare-fun lt!2089085 () Int)

(assert (=> d!1634245 (= lt!2089085 (size!39074 (list!18989 (left!42816 (left!42816 xs!286)))))))

(assert (=> d!1634245 (= lt!2089085 (ite ((_ is Empty!15564) (left!42816 (left!42816 xs!286))) 0 (ite ((_ is Leaf!25851) (left!42816 (left!42816 xs!286))) (csize!31359 (left!42816 (left!42816 xs!286))) (csize!31358 (left!42816 (left!42816 xs!286))))))))

(assert (=> d!1634245 (= (size!39075 (left!42816 (left!42816 xs!286))) lt!2089085)))

(declare-fun bs!1189948 () Bool)

(assert (= bs!1189948 d!1634245))

(assert (=> bs!1189948 m!6108442))

(assert (=> bs!1189948 m!6108442))

(declare-fun m!6110650 () Bool)

(assert (=> bs!1189948 m!6110650))

(assert (=> d!1633587 d!1634245))

(declare-fun d!1634247 () Bool)

(declare-fun lt!2089086 () Int)

(assert (=> d!1634247 (= lt!2089086 (size!39074 (list!18989 (right!43146 (left!42816 xs!286)))))))

(assert (=> d!1634247 (= lt!2089086 (ite ((_ is Empty!15564) (right!43146 (left!42816 xs!286))) 0 (ite ((_ is Leaf!25851) (right!43146 (left!42816 xs!286))) (csize!31359 (right!43146 (left!42816 xs!286))) (csize!31358 (right!43146 (left!42816 xs!286))))))))

(assert (=> d!1634247 (= (size!39075 (right!43146 (left!42816 xs!286))) lt!2089086)))

(declare-fun bs!1189949 () Bool)

(assert (= bs!1189949 d!1634247))

(assert (=> bs!1189949 m!6108444))

(assert (=> bs!1189949 m!6108444))

(declare-fun m!6110652 () Bool)

(assert (=> bs!1189949 m!6110652))

(assert (=> d!1633587 d!1634247))

(declare-fun d!1634249 () Bool)

(declare-fun lt!2089087 () Bool)

(assert (=> d!1634249 (= lt!2089087 (isEmpty!31632 (list!18989 (left!42816 (right!43146 ys!41)))))))

(assert (=> d!1634249 (= lt!2089087 (= (size!39075 (left!42816 (right!43146 ys!41))) 0))))

(assert (=> d!1634249 (= (isEmpty!31631 (left!42816 (right!43146 ys!41))) lt!2089087)))

(declare-fun bs!1189950 () Bool)

(assert (= bs!1189950 d!1634249))

(assert (=> bs!1189950 m!6108676))

(assert (=> bs!1189950 m!6108676))

(declare-fun m!6110654 () Bool)

(assert (=> bs!1189950 m!6110654))

(assert (=> bs!1189950 m!6108738))

(assert (=> b!5066732 d!1634249))

(declare-fun b!5067476 () Bool)

(declare-fun res!2157613 () Bool)

(declare-fun e!3162261 () Bool)

(assert (=> b!5067476 (=> (not res!2157613) (not e!3162261))))

(declare-fun lt!2089088 () List!58558)

(assert (=> b!5067476 (= res!2157613 (= (size!39074 lt!2089088) (+ (size!39074 (list!18989 (left!42816 (right!43146 (right!43146 xs!286))))) (size!39074 (list!18989 (right!43146 (right!43146 (right!43146 xs!286))))))))))

(declare-fun b!5067477 () Bool)

(assert (=> b!5067477 (= e!3162261 (or (not (= (list!18989 (right!43146 (right!43146 (right!43146 xs!286)))) Nil!58434)) (= lt!2089088 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067475 () Bool)

(declare-fun e!3162262 () List!58558)

(assert (=> b!5067475 (= e!3162262 (Cons!58434 (h!64882 (list!18989 (left!42816 (right!43146 (right!43146 xs!286))))) (++!12789 (t!371291 (list!18989 (left!42816 (right!43146 (right!43146 xs!286))))) (list!18989 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067474 () Bool)

(assert (=> b!5067474 (= e!3162262 (list!18989 (right!43146 (right!43146 (right!43146 xs!286)))))))

(declare-fun d!1634251 () Bool)

(assert (=> d!1634251 e!3162261))

(declare-fun res!2157612 () Bool)

(assert (=> d!1634251 (=> (not res!2157612) (not e!3162261))))

(assert (=> d!1634251 (= res!2157612 (= (content!10417 lt!2089088) ((_ map or) (content!10417 (list!18989 (left!42816 (right!43146 (right!43146 xs!286))))) (content!10417 (list!18989 (right!43146 (right!43146 (right!43146 xs!286))))))))))

(assert (=> d!1634251 (= lt!2089088 e!3162262)))

(declare-fun c!869985 () Bool)

(assert (=> d!1634251 (= c!869985 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1634251 (= (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 xs!286)))) (list!18989 (right!43146 (right!43146 (right!43146 xs!286))))) lt!2089088)))

(assert (= (and d!1634251 c!869985) b!5067474))

(assert (= (and d!1634251 (not c!869985)) b!5067475))

(assert (= (and d!1634251 res!2157612) b!5067476))

(assert (= (and b!5067476 res!2157613) b!5067477))

(declare-fun m!6110656 () Bool)

(assert (=> b!5067476 m!6110656))

(assert (=> b!5067476 m!6108492))

(declare-fun m!6110658 () Bool)

(assert (=> b!5067476 m!6110658))

(assert (=> b!5067476 m!6108494))

(declare-fun m!6110660 () Bool)

(assert (=> b!5067476 m!6110660))

(assert (=> b!5067475 m!6108494))

(declare-fun m!6110662 () Bool)

(assert (=> b!5067475 m!6110662))

(declare-fun m!6110664 () Bool)

(assert (=> d!1634251 m!6110664))

(assert (=> d!1634251 m!6108492))

(declare-fun m!6110666 () Bool)

(assert (=> d!1634251 m!6110666))

(assert (=> d!1634251 m!6108494))

(declare-fun m!6110668 () Bool)

(assert (=> d!1634251 m!6110668))

(assert (=> b!5066427 d!1634251))

(assert (=> b!5066427 d!1633903))

(assert (=> b!5066427 d!1633969))

(declare-fun d!1634253 () Bool)

(assert (=> d!1634253 (= (inv!77555 (xs!18914 (left!42816 (right!43146 ys!41)))) (<= (size!39074 (innerList!15652 (xs!18914 (left!42816 (right!43146 ys!41))))) 2147483647))))

(declare-fun bs!1189951 () Bool)

(assert (= bs!1189951 d!1634253))

(declare-fun m!6110670 () Bool)

(assert (=> bs!1189951 m!6110670))

(assert (=> b!5066751 d!1634253))

(declare-fun d!1634255 () Bool)

(assert (=> d!1634255 (= (max!0 (height!2141 (left!42816 (right!43146 xs!286))) (height!2141 (right!43146 (right!43146 xs!286)))) (ite (< (height!2141 (left!42816 (right!43146 xs!286))) (height!2141 (right!43146 (right!43146 xs!286)))) (height!2141 (right!43146 (right!43146 xs!286))) (height!2141 (left!42816 (right!43146 xs!286)))))))

(assert (=> b!5066516 d!1634255))

(assert (=> b!5066516 d!1633461))

(assert (=> b!5066516 d!1633465))

(declare-fun d!1634257 () Bool)

(assert (=> d!1634257 (= (isEmpty!31632 (list!18989 (right!43146 lt!2088868))) ((_ is Nil!58434) (list!18989 (right!43146 lt!2088868))))))

(assert (=> d!1633545 d!1634257))

(assert (=> d!1633545 d!1633443))

(declare-fun d!1634259 () Bool)

(declare-fun lt!2089089 () Int)

(assert (=> d!1634259 (= lt!2089089 (size!39074 (list!18989 (right!43146 lt!2088868))))))

(assert (=> d!1634259 (= lt!2089089 (ite ((_ is Empty!15564) (right!43146 lt!2088868)) 0 (ite ((_ is Leaf!25851) (right!43146 lt!2088868)) (csize!31359 (right!43146 lt!2088868)) (csize!31358 (right!43146 lt!2088868)))))))

(assert (=> d!1634259 (= (size!39075 (right!43146 lt!2088868)) lt!2089089)))

(declare-fun bs!1189952 () Bool)

(assert (= bs!1189952 d!1634259))

(assert (=> bs!1189952 m!6108154))

(assert (=> bs!1189952 m!6108154))

(assert (=> bs!1189952 m!6108504))

(assert (=> d!1633545 d!1634259))

(declare-fun b!5067480 () Bool)

(declare-fun res!2157615 () Bool)

(declare-fun e!3162263 () Bool)

(assert (=> b!5067480 (=> (not res!2157615) (not e!3162263))))

(declare-fun lt!2089090 () List!58558)

(assert (=> b!5067480 (= res!2157615 (= (size!39074 lt!2089090) (+ (size!39074 (list!18989 (left!42816 xs!286))) (size!39074 call!353027))))))

(declare-fun b!5067481 () Bool)

(assert (=> b!5067481 (= e!3162263 (or (not (= call!353027 Nil!58434)) (= lt!2089090 (list!18989 (left!42816 xs!286)))))))

(declare-fun b!5067479 () Bool)

(declare-fun e!3162264 () List!58558)

(assert (=> b!5067479 (= e!3162264 (Cons!58434 (h!64882 (list!18989 (left!42816 xs!286))) (++!12789 (t!371291 (list!18989 (left!42816 xs!286))) call!353027)))))

(declare-fun b!5067478 () Bool)

(assert (=> b!5067478 (= e!3162264 call!353027)))

(declare-fun d!1634261 () Bool)

(assert (=> d!1634261 e!3162263))

(declare-fun res!2157614 () Bool)

(assert (=> d!1634261 (=> (not res!2157614) (not e!3162263))))

(assert (=> d!1634261 (= res!2157614 (= (content!10417 lt!2089090) ((_ map or) (content!10417 (list!18989 (left!42816 xs!286))) (content!10417 call!353027))))))

(assert (=> d!1634261 (= lt!2089090 e!3162264)))

(declare-fun c!869986 () Bool)

(assert (=> d!1634261 (= c!869986 ((_ is Nil!58434) (list!18989 (left!42816 xs!286))))))

(assert (=> d!1634261 (= (++!12789 (list!18989 (left!42816 xs!286)) call!353027) lt!2089090)))

(assert (= (and d!1634261 c!869986) b!5067478))

(assert (= (and d!1634261 (not c!869986)) b!5067479))

(assert (= (and d!1634261 res!2157614) b!5067480))

(assert (= (and b!5067480 res!2157615) b!5067481))

(declare-fun m!6110672 () Bool)

(assert (=> b!5067480 m!6110672))

(assert (=> b!5067480 m!6108112))

(assert (=> b!5067480 m!6108462))

(declare-fun m!6110674 () Bool)

(assert (=> b!5067480 m!6110674))

(declare-fun m!6110676 () Bool)

(assert (=> b!5067479 m!6110676))

(declare-fun m!6110678 () Bool)

(assert (=> d!1634261 m!6110678))

(assert (=> d!1634261 m!6108112))

(assert (=> d!1634261 m!6108470))

(declare-fun m!6110680 () Bool)

(assert (=> d!1634261 m!6110680))

(assert (=> bm!353023 d!1634261))

(assert (=> bm!353064 d!1633635))

(declare-fun d!1634263 () Bool)

(declare-fun lt!2089091 () Int)

(assert (=> d!1634263 (>= lt!2089091 0)))

(declare-fun e!3162265 () Int)

(assert (=> d!1634263 (= lt!2089091 e!3162265)))

(declare-fun c!869987 () Bool)

(assert (=> d!1634263 (= c!869987 ((_ is Nil!58434) (innerList!15652 (xs!18914 (left!42816 ys!41)))))))

(assert (=> d!1634263 (= (size!39074 (innerList!15652 (xs!18914 (left!42816 ys!41)))) lt!2089091)))

(declare-fun b!5067482 () Bool)

(assert (=> b!5067482 (= e!3162265 0)))

(declare-fun b!5067483 () Bool)

(assert (=> b!5067483 (= e!3162265 (+ 1 (size!39074 (t!371291 (innerList!15652 (xs!18914 (left!42816 ys!41)))))))))

(assert (= (and d!1634263 c!869987) b!5067482))

(assert (= (and d!1634263 (not c!869987)) b!5067483))

(declare-fun m!6110682 () Bool)

(assert (=> b!5067483 m!6110682))

(assert (=> d!1633575 d!1634263))

(assert (=> b!5066502 d!1633599))

(declare-fun b!5067486 () Bool)

(declare-fun res!2157617 () Bool)

(declare-fun e!3162266 () Bool)

(assert (=> b!5067486 (=> (not res!2157617) (not e!3162266))))

(declare-fun lt!2089092 () List!58558)

(assert (=> b!5067486 (= res!2157617 (= (size!39074 lt!2089092) (+ (size!39074 (t!371291 (t!371291 (list!18989 xs!286)))) (size!39074 (list!18989 ys!41)))))))

(declare-fun b!5067487 () Bool)

(assert (=> b!5067487 (= e!3162266 (or (not (= (list!18989 ys!41) Nil!58434)) (= lt!2089092 (t!371291 (t!371291 (list!18989 xs!286))))))))

(declare-fun b!5067485 () Bool)

(declare-fun e!3162267 () List!58558)

(assert (=> b!5067485 (= e!3162267 (Cons!58434 (h!64882 (t!371291 (t!371291 (list!18989 xs!286)))) (++!12789 (t!371291 (t!371291 (t!371291 (list!18989 xs!286)))) (list!18989 ys!41))))))

(declare-fun b!5067484 () Bool)

(assert (=> b!5067484 (= e!3162267 (list!18989 ys!41))))

(declare-fun d!1634265 () Bool)

(assert (=> d!1634265 e!3162266))

(declare-fun res!2157616 () Bool)

(assert (=> d!1634265 (=> (not res!2157616) (not e!3162266))))

(assert (=> d!1634265 (= res!2157616 (= (content!10417 lt!2089092) ((_ map or) (content!10417 (t!371291 (t!371291 (list!18989 xs!286)))) (content!10417 (list!18989 ys!41)))))))

(assert (=> d!1634265 (= lt!2089092 e!3162267)))

(declare-fun c!869988 () Bool)

(assert (=> d!1634265 (= c!869988 ((_ is Nil!58434) (t!371291 (t!371291 (list!18989 xs!286)))))))

(assert (=> d!1634265 (= (++!12789 (t!371291 (t!371291 (list!18989 xs!286))) (list!18989 ys!41)) lt!2089092)))

(assert (= (and d!1634265 c!869988) b!5067484))

(assert (= (and d!1634265 (not c!869988)) b!5067485))

(assert (= (and d!1634265 res!2157616) b!5067486))

(assert (= (and b!5067486 res!2157617) b!5067487))

(declare-fun m!6110684 () Bool)

(assert (=> b!5067486 m!6110684))

(assert (=> b!5067486 m!6110176))

(assert (=> b!5067486 m!6107974))

(assert (=> b!5067486 m!6108164))

(assert (=> b!5067485 m!6107974))

(declare-fun m!6110686 () Bool)

(assert (=> b!5067485 m!6110686))

(declare-fun m!6110688 () Bool)

(assert (=> d!1634265 m!6110688))

(assert (=> d!1634265 m!6110090))

(assert (=> d!1634265 m!6107974))

(assert (=> d!1634265 m!6108172))

(assert (=> b!5066595 d!1634265))

(assert (=> b!5066659 d!1634041))

(assert (=> b!5066659 d!1634043))

(declare-fun b!5067490 () Bool)

(declare-fun res!2157619 () Bool)

(declare-fun e!3162268 () Bool)

(assert (=> b!5067490 (=> (not res!2157619) (not e!3162268))))

(declare-fun lt!2089093 () List!58558)

(assert (=> b!5067490 (= res!2157619 (= (size!39074 lt!2089093) (+ (size!39074 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) (size!39074 call!353063))))))

(declare-fun b!5067491 () Bool)

(assert (=> b!5067491 (= e!3162268 (or (not (= call!353063 Nil!58434)) (= lt!2089093 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))))))))

(declare-fun b!5067489 () Bool)

(declare-fun e!3162269 () List!58558)

(assert (=> b!5067489 (= e!3162269 (Cons!58434 (h!64882 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) (++!12789 (t!371291 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) call!353063)))))

(declare-fun b!5067488 () Bool)

(assert (=> b!5067488 (= e!3162269 call!353063)))

(declare-fun d!1634267 () Bool)

(assert (=> d!1634267 e!3162268))

(declare-fun res!2157618 () Bool)

(assert (=> d!1634267 (=> (not res!2157618) (not e!3162268))))

(assert (=> d!1634267 (= res!2157618 (= (content!10417 lt!2089093) ((_ map or) (content!10417 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))) (content!10417 call!353063))))))

(assert (=> d!1634267 (= lt!2089093 e!3162269)))

(declare-fun c!869989 () Bool)

(assert (=> d!1634267 (= c!869989 ((_ is Nil!58434) (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41))))))))

(assert (=> d!1634267 (= (++!12789 (++!12789 (list!18989 xs!286) (list!18989 (left!42816 (left!42816 ys!41)))) call!353063) lt!2089093)))

(assert (= (and d!1634267 c!869989) b!5067488))

(assert (= (and d!1634267 (not c!869989)) b!5067489))

(assert (= (and d!1634267 res!2157618) b!5067490))

(assert (= (and b!5067490 res!2157619) b!5067491))

(declare-fun m!6110690 () Bool)

(assert (=> b!5067490 m!6110690))

(assert (=> b!5067490 m!6108120))

(assert (=> b!5067490 m!6109636))

(declare-fun m!6110692 () Bool)

(assert (=> b!5067490 m!6110692))

(declare-fun m!6110694 () Bool)

(assert (=> b!5067489 m!6110694))

(declare-fun m!6110696 () Bool)

(assert (=> d!1634267 m!6110696))

(assert (=> d!1634267 m!6108120))

(assert (=> d!1634267 m!6109644))

(declare-fun m!6110698 () Bool)

(assert (=> d!1634267 m!6110698))

(assert (=> bm!353059 d!1634267))

(declare-fun b!5067494 () Bool)

(declare-fun res!2157621 () Bool)

(declare-fun e!3162270 () Bool)

(assert (=> b!5067494 (=> (not res!2157621) (not e!3162270))))

(declare-fun lt!2089094 () List!58558)

(assert (=> b!5067494 (= res!2157621 (= (size!39074 lt!2089094) (+ (size!39074 (t!371291 (list!18989 (left!42816 xs!286)))) (size!39074 (list!18989 (left!42816 (right!43146 xs!286)))))))))

(declare-fun b!5067495 () Bool)

(assert (=> b!5067495 (= e!3162270 (or (not (= (list!18989 (left!42816 (right!43146 xs!286))) Nil!58434)) (= lt!2089094 (t!371291 (list!18989 (left!42816 xs!286))))))))

(declare-fun b!5067493 () Bool)

(declare-fun e!3162271 () List!58558)

(assert (=> b!5067493 (= e!3162271 (Cons!58434 (h!64882 (t!371291 (list!18989 (left!42816 xs!286)))) (++!12789 (t!371291 (t!371291 (list!18989 (left!42816 xs!286)))) (list!18989 (left!42816 (right!43146 xs!286))))))))

(declare-fun b!5067492 () Bool)

(assert (=> b!5067492 (= e!3162271 (list!18989 (left!42816 (right!43146 xs!286))))))

(declare-fun d!1634269 () Bool)

(assert (=> d!1634269 e!3162270))

(declare-fun res!2157620 () Bool)

(assert (=> d!1634269 (=> (not res!2157620) (not e!3162270))))

(assert (=> d!1634269 (= res!2157620 (= (content!10417 lt!2089094) ((_ map or) (content!10417 (t!371291 (list!18989 (left!42816 xs!286)))) (content!10417 (list!18989 (left!42816 (right!43146 xs!286)))))))))

(assert (=> d!1634269 (= lt!2089094 e!3162271)))

(declare-fun c!869990 () Bool)

(assert (=> d!1634269 (= c!869990 ((_ is Nil!58434) (t!371291 (list!18989 (left!42816 xs!286)))))))

(assert (=> d!1634269 (= (++!12789 (t!371291 (list!18989 (left!42816 xs!286))) (list!18989 (left!42816 (right!43146 xs!286)))) lt!2089094)))

(assert (= (and d!1634269 c!869990) b!5067492))

(assert (= (and d!1634269 (not c!869990)) b!5067493))

(assert (= (and d!1634269 res!2157620) b!5067494))

(assert (= (and b!5067494 res!2157621) b!5067495))

(declare-fun m!6110700 () Bool)

(assert (=> b!5067494 m!6110700))

(assert (=> b!5067494 m!6110048))

(assert (=> b!5067494 m!6108092))

(assert (=> b!5067494 m!6108554))

(assert (=> b!5067493 m!6108092))

(declare-fun m!6110702 () Bool)

(assert (=> b!5067493 m!6110702))

(declare-fun m!6110704 () Bool)

(assert (=> d!1634269 m!6110704))

(declare-fun m!6110706 () Bool)

(assert (=> d!1634269 m!6110706))

(assert (=> d!1634269 m!6108092))

(assert (=> d!1634269 m!6108770))

(assert (=> b!5066572 d!1634269))

(declare-fun b!5067496 () Bool)

(declare-fun res!2157624 () Bool)

(declare-fun e!3162273 () Bool)

(assert (=> b!5067496 (=> (not res!2157624) (not e!3162273))))

(assert (=> b!5067496 (= res!2157624 (isBalanced!4426 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))))))

(declare-fun b!5067497 () Bool)

(declare-fun e!3162272 () Bool)

(assert (=> b!5067497 (= e!3162272 e!3162273)))

(declare-fun res!2157627 () Bool)

(assert (=> b!5067497 (=> (not res!2157627) (not e!3162273))))

(assert (=> b!5067497 (= res!2157627 (<= (- 1) (- (height!2141 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) (height!2141 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))))))))

(declare-fun b!5067498 () Bool)

(declare-fun res!2157622 () Bool)

(assert (=> b!5067498 (=> (not res!2157622) (not e!3162273))))

(assert (=> b!5067498 (= res!2157622 (not (isEmpty!31631 (left!42816 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067500 () Bool)

(declare-fun res!2157626 () Bool)

(assert (=> b!5067500 (=> (not res!2157626) (not e!3162273))))

(assert (=> b!5067500 (= res!2157626 (<= (- (height!2141 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) (height!2141 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))) 1))))

(declare-fun b!5067501 () Bool)

(assert (=> b!5067501 (= e!3162273 (not (isEmpty!31631 (right!43146 (right!43146 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067499 () Bool)

(declare-fun res!2157623 () Bool)

(assert (=> b!5067499 (=> (not res!2157623) (not e!3162273))))

(assert (=> b!5067499 (= res!2157623 (isBalanced!4426 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))))))

(declare-fun d!1634271 () Bool)

(declare-fun res!2157625 () Bool)

(assert (=> d!1634271 (=> res!2157625 e!3162272)))

(assert (=> d!1634271 (= res!2157625 (not ((_ is Node!15564) (right!43146 (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1634271 (= (isBalanced!4426 (right!43146 (right!43146 (right!43146 xs!286)))) e!3162272)))

(assert (= (and d!1634271 (not res!2157625)) b!5067497))

(assert (= (and b!5067497 res!2157627) b!5067500))

(assert (= (and b!5067500 res!2157626) b!5067496))

(assert (= (and b!5067496 res!2157624) b!5067499))

(assert (= (and b!5067499 res!2157623) b!5067498))

(assert (= (and b!5067498 res!2157622) b!5067501))

(declare-fun m!6110708 () Bool)

(assert (=> b!5067498 m!6110708))

(declare-fun m!6110710 () Bool)

(assert (=> b!5067496 m!6110710))

(declare-fun m!6110712 () Bool)

(assert (=> b!5067501 m!6110712))

(declare-fun m!6110714 () Bool)

(assert (=> b!5067500 m!6110714))

(declare-fun m!6110716 () Bool)

(assert (=> b!5067500 m!6110716))

(declare-fun m!6110718 () Bool)

(assert (=> b!5067499 m!6110718))

(assert (=> b!5067497 m!6110714))

(assert (=> b!5067497 m!6110716))

(assert (=> b!5066631 d!1634271))

(declare-fun d!1634273 () Bool)

(declare-fun lt!2089095 () Int)

(assert (=> d!1634273 (>= lt!2089095 0)))

(declare-fun e!3162274 () Int)

(assert (=> d!1634273 (= lt!2089095 e!3162274)))

(declare-fun c!869991 () Bool)

(assert (=> d!1634273 (= c!869991 ((_ is Nil!58434) (innerList!15652 (xs!18914 (right!43146 xs!286)))))))

(assert (=> d!1634273 (= (size!39074 (innerList!15652 (xs!18914 (right!43146 xs!286)))) lt!2089095)))

(declare-fun b!5067502 () Bool)

(assert (=> b!5067502 (= e!3162274 0)))

(declare-fun b!5067503 () Bool)

(assert (=> b!5067503 (= e!3162274 (+ 1 (size!39074 (t!371291 (innerList!15652 (xs!18914 (right!43146 xs!286)))))))))

(assert (= (and d!1634273 c!869991) b!5067502))

(assert (= (and d!1634273 (not c!869991)) b!5067503))

(declare-fun m!6110720 () Bool)

(assert (=> b!5067503 m!6110720))

(assert (=> d!1633561 d!1634273))

(declare-fun b!5067505 () Bool)

(declare-fun e!3162275 () Conc!15564)

(declare-fun e!3162276 () Conc!15564)

(assert (=> b!5067505 (= e!3162275 e!3162276)))

(declare-fun c!869993 () Bool)

(assert (=> b!5067505 (= c!869993 (= (ite c!869772 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869767 (ite c!869769 call!353055 lt!2088959) (ite c!869768 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) call!353048))) Empty!15564))))

(declare-fun b!5067506 () Bool)

(assert (=> b!5067506 (= e!3162276 (ite c!869772 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869767 (ite c!869769 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) call!353055) (ite c!869768 call!353048 lt!2088956))))))

(declare-fun lt!2089096 () Conc!15564)

(declare-fun d!1634275 () Bool)

(assert (=> d!1634275 (= (list!18989 lt!2089096) (++!12789 (list!18989 (ite c!869772 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869767 (ite c!869769 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) call!353055) (ite c!869768 call!353048 lt!2088956)))) (list!18989 (ite c!869772 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869767 (ite c!869769 call!353055 lt!2088959) (ite c!869768 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) call!353048))))))))

(assert (=> d!1634275 (= lt!2089096 e!3162275)))

(declare-fun c!869992 () Bool)

(assert (=> d!1634275 (= c!869992 (= (ite c!869772 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869767 (ite c!869769 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) call!353055) (ite c!869768 call!353048 lt!2088956))) Empty!15564))))

(assert (=> d!1634275 (= (<>!396 (ite c!869772 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869767 (ite c!869769 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) call!353055) (ite c!869768 call!353048 lt!2088956))) (ite c!869772 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869767 (ite c!869769 call!353055 lt!2088959) (ite c!869768 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) call!353048)))) lt!2089096)))

(declare-fun b!5067504 () Bool)

(assert (=> b!5067504 (= e!3162275 (ite c!869772 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869767 (ite c!869769 call!353055 lt!2088959) (ite c!869768 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) call!353048))))))

(declare-fun b!5067507 () Bool)

(assert (=> b!5067507 (= e!3162276 (Node!15564 (ite c!869772 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869767 (ite c!869769 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) call!353055) (ite c!869768 call!353048 lt!2088956))) (ite c!869772 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869767 (ite c!869769 call!353055 lt!2088959) (ite c!869768 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) call!353048))) (+ (size!39075 (ite c!869772 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869767 (ite c!869769 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) call!353055) (ite c!869768 call!353048 lt!2088956)))) (size!39075 (ite c!869772 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869767 (ite c!869769 call!353055 lt!2088959) (ite c!869768 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) call!353048))))) (+ (max!0 (height!2141 (ite c!869772 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))) (ite c!869767 (ite c!869769 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) call!353055) (ite c!869768 call!353048 lt!2088956)))) (height!2141 (ite c!869772 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869767 (ite c!869769 call!353055 lt!2088959) (ite c!869768 (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) call!353048))))) 1)))))

(assert (= (and d!1634275 c!869992) b!5067504))

(assert (= (and d!1634275 (not c!869992)) b!5067505))

(assert (= (and b!5067505 c!869993) b!5067506))

(assert (= (and b!5067505 (not c!869993)) b!5067507))

(declare-fun m!6110722 () Bool)

(assert (=> d!1634275 m!6110722))

(declare-fun m!6110724 () Bool)

(assert (=> d!1634275 m!6110724))

(declare-fun m!6110726 () Bool)

(assert (=> d!1634275 m!6110726))

(assert (=> d!1634275 m!6110724))

(assert (=> d!1634275 m!6110726))

(declare-fun m!6110728 () Bool)

(assert (=> d!1634275 m!6110728))

(declare-fun m!6110730 () Bool)

(assert (=> b!5067507 m!6110730))

(declare-fun m!6110732 () Bool)

(assert (=> b!5067507 m!6110732))

(declare-fun m!6110734 () Bool)

(assert (=> b!5067507 m!6110734))

(assert (=> b!5067507 m!6110730))

(declare-fun m!6110736 () Bool)

(assert (=> b!5067507 m!6110736))

(assert (=> b!5067507 m!6110732))

(declare-fun m!6110738 () Bool)

(assert (=> b!5067507 m!6110738))

(assert (=> bm!353054 d!1634275))

(assert (=> bm!353012 d!1633431))

(declare-fun b!5067510 () Bool)

(declare-fun res!2157629 () Bool)

(declare-fun e!3162277 () Bool)

(assert (=> b!5067510 (=> (not res!2157629) (not e!3162277))))

(declare-fun lt!2089097 () List!58558)

(assert (=> b!5067510 (= res!2157629 (= (size!39074 lt!2089097) (+ (size!39074 (list!18989 (left!42816 (right!43146 (left!42816 ys!41))))) (size!39074 (list!18989 (right!43146 (right!43146 (left!42816 ys!41))))))))))

(declare-fun b!5067511 () Bool)

(assert (=> b!5067511 (= e!3162277 (or (not (= (list!18989 (right!43146 (right!43146 (left!42816 ys!41)))) Nil!58434)) (= lt!2089097 (list!18989 (left!42816 (right!43146 (left!42816 ys!41)))))))))

(declare-fun b!5067509 () Bool)

(declare-fun e!3162278 () List!58558)

(assert (=> b!5067509 (= e!3162278 (Cons!58434 (h!64882 (list!18989 (left!42816 (right!43146 (left!42816 ys!41))))) (++!12789 (t!371291 (list!18989 (left!42816 (right!43146 (left!42816 ys!41))))) (list!18989 (right!43146 (right!43146 (left!42816 ys!41)))))))))

(declare-fun b!5067508 () Bool)

(assert (=> b!5067508 (= e!3162278 (list!18989 (right!43146 (right!43146 (left!42816 ys!41)))))))

(declare-fun d!1634277 () Bool)

(assert (=> d!1634277 e!3162277))

(declare-fun res!2157628 () Bool)

(assert (=> d!1634277 (=> (not res!2157628) (not e!3162277))))

(assert (=> d!1634277 (= res!2157628 (= (content!10417 lt!2089097) ((_ map or) (content!10417 (list!18989 (left!42816 (right!43146 (left!42816 ys!41))))) (content!10417 (list!18989 (right!43146 (right!43146 (left!42816 ys!41))))))))))

(assert (=> d!1634277 (= lt!2089097 e!3162278)))

(declare-fun c!869994 () Bool)

(assert (=> d!1634277 (= c!869994 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 (left!42816 ys!41))))))))

(assert (=> d!1634277 (= (++!12789 (list!18989 (left!42816 (right!43146 (left!42816 ys!41)))) (list!18989 (right!43146 (right!43146 (left!42816 ys!41))))) lt!2089097)))

(assert (= (and d!1634277 c!869994) b!5067508))

(assert (= (and d!1634277 (not c!869994)) b!5067509))

(assert (= (and d!1634277 res!2157628) b!5067510))

(assert (= (and b!5067510 res!2157629) b!5067511))

(declare-fun m!6110740 () Bool)

(assert (=> b!5067510 m!6110740))

(assert (=> b!5067510 m!6109016))

(declare-fun m!6110742 () Bool)

(assert (=> b!5067510 m!6110742))

(assert (=> b!5067510 m!6109018))

(declare-fun m!6110744 () Bool)

(assert (=> b!5067510 m!6110744))

(assert (=> b!5067509 m!6109018))

(declare-fun m!6110746 () Bool)

(assert (=> b!5067509 m!6110746))

(declare-fun m!6110748 () Bool)

(assert (=> d!1634277 m!6110748))

(assert (=> d!1634277 m!6109016))

(declare-fun m!6110750 () Bool)

(assert (=> d!1634277 m!6110750))

(assert (=> d!1634277 m!6109018))

(declare-fun m!6110752 () Bool)

(assert (=> d!1634277 m!6110752))

(assert (=> b!5066707 d!1634277))

(declare-fun d!1634279 () Bool)

(declare-fun c!869995 () Bool)

(assert (=> d!1634279 (= c!869995 ((_ is Empty!15564) (left!42816 (right!43146 (left!42816 ys!41)))))))

(declare-fun e!3162279 () List!58558)

(assert (=> d!1634279 (= (list!18989 (left!42816 (right!43146 (left!42816 ys!41)))) e!3162279)))

(declare-fun b!5067513 () Bool)

(declare-fun e!3162280 () List!58558)

(assert (=> b!5067513 (= e!3162279 e!3162280)))

(declare-fun c!869996 () Bool)

(assert (=> b!5067513 (= c!869996 ((_ is Leaf!25851) (left!42816 (right!43146 (left!42816 ys!41)))))))

(declare-fun b!5067512 () Bool)

(assert (=> b!5067512 (= e!3162279 Nil!58434)))

(declare-fun b!5067515 () Bool)

(assert (=> b!5067515 (= e!3162280 (++!12789 (list!18989 (left!42816 (left!42816 (right!43146 (left!42816 ys!41))))) (list!18989 (right!43146 (left!42816 (right!43146 (left!42816 ys!41)))))))))

(declare-fun b!5067514 () Bool)

(assert (=> b!5067514 (= e!3162280 (list!18990 (xs!18914 (left!42816 (right!43146 (left!42816 ys!41))))))))

(assert (= (and d!1634279 c!869995) b!5067512))

(assert (= (and d!1634279 (not c!869995)) b!5067513))

(assert (= (and b!5067513 c!869996) b!5067514))

(assert (= (and b!5067513 (not c!869996)) b!5067515))

(declare-fun m!6110754 () Bool)

(assert (=> b!5067515 m!6110754))

(declare-fun m!6110756 () Bool)

(assert (=> b!5067515 m!6110756))

(assert (=> b!5067515 m!6110754))

(assert (=> b!5067515 m!6110756))

(declare-fun m!6110758 () Bool)

(assert (=> b!5067515 m!6110758))

(declare-fun m!6110760 () Bool)

(assert (=> b!5067514 m!6110760))

(assert (=> b!5066707 d!1634279))

(declare-fun d!1634281 () Bool)

(declare-fun c!869997 () Bool)

(assert (=> d!1634281 (= c!869997 ((_ is Empty!15564) (right!43146 (right!43146 (left!42816 ys!41)))))))

(declare-fun e!3162281 () List!58558)

(assert (=> d!1634281 (= (list!18989 (right!43146 (right!43146 (left!42816 ys!41)))) e!3162281)))

(declare-fun b!5067517 () Bool)

(declare-fun e!3162282 () List!58558)

(assert (=> b!5067517 (= e!3162281 e!3162282)))

(declare-fun c!869998 () Bool)

(assert (=> b!5067517 (= c!869998 ((_ is Leaf!25851) (right!43146 (right!43146 (left!42816 ys!41)))))))

(declare-fun b!5067516 () Bool)

(assert (=> b!5067516 (= e!3162281 Nil!58434)))

(declare-fun b!5067519 () Bool)

(assert (=> b!5067519 (= e!3162282 (++!12789 (list!18989 (left!42816 (right!43146 (right!43146 (left!42816 ys!41))))) (list!18989 (right!43146 (right!43146 (right!43146 (left!42816 ys!41)))))))))

(declare-fun b!5067518 () Bool)

(assert (=> b!5067518 (= e!3162282 (list!18990 (xs!18914 (right!43146 (right!43146 (left!42816 ys!41))))))))

(assert (= (and d!1634281 c!869997) b!5067516))

(assert (= (and d!1634281 (not c!869997)) b!5067517))

(assert (= (and b!5067517 c!869998) b!5067518))

(assert (= (and b!5067517 (not c!869998)) b!5067519))

(declare-fun m!6110762 () Bool)

(assert (=> b!5067519 m!6110762))

(declare-fun m!6110764 () Bool)

(assert (=> b!5067519 m!6110764))

(assert (=> b!5067519 m!6110762))

(assert (=> b!5067519 m!6110764))

(declare-fun m!6110766 () Bool)

(assert (=> b!5067519 m!6110766))

(declare-fun m!6110768 () Bool)

(assert (=> b!5067518 m!6110768))

(assert (=> b!5066707 d!1634281))

(declare-fun b!5067520 () Bool)

(declare-fun res!2157632 () Bool)

(declare-fun e!3162284 () Bool)

(assert (=> b!5067520 (=> (not res!2157632) (not e!3162284))))

(assert (=> b!5067520 (= res!2157632 (isBalanced!4426 (left!42816 (right!43146 (left!42816 ys!41)))))))

(declare-fun b!5067521 () Bool)

(declare-fun e!3162283 () Bool)

(assert (=> b!5067521 (= e!3162283 e!3162284)))

(declare-fun res!2157635 () Bool)

(assert (=> b!5067521 (=> (not res!2157635) (not e!3162284))))

(assert (=> b!5067521 (= res!2157635 (<= (- 1) (- (height!2141 (left!42816 (right!43146 (left!42816 ys!41)))) (height!2141 (right!43146 (right!43146 (left!42816 ys!41)))))))))

(declare-fun b!5067522 () Bool)

(declare-fun res!2157630 () Bool)

(assert (=> b!5067522 (=> (not res!2157630) (not e!3162284))))

(assert (=> b!5067522 (= res!2157630 (not (isEmpty!31631 (left!42816 (right!43146 (left!42816 ys!41))))))))

(declare-fun b!5067524 () Bool)

(declare-fun res!2157634 () Bool)

(assert (=> b!5067524 (=> (not res!2157634) (not e!3162284))))

(assert (=> b!5067524 (= res!2157634 (<= (- (height!2141 (left!42816 (right!43146 (left!42816 ys!41)))) (height!2141 (right!43146 (right!43146 (left!42816 ys!41))))) 1))))

(declare-fun b!5067525 () Bool)

(assert (=> b!5067525 (= e!3162284 (not (isEmpty!31631 (right!43146 (right!43146 (left!42816 ys!41))))))))

(declare-fun b!5067523 () Bool)

(declare-fun res!2157631 () Bool)

(assert (=> b!5067523 (=> (not res!2157631) (not e!3162284))))

(assert (=> b!5067523 (= res!2157631 (isBalanced!4426 (right!43146 (right!43146 (left!42816 ys!41)))))))

(declare-fun d!1634283 () Bool)

(declare-fun res!2157633 () Bool)

(assert (=> d!1634283 (=> res!2157633 e!3162283)))

(assert (=> d!1634283 (= res!2157633 (not ((_ is Node!15564) (right!43146 (left!42816 ys!41)))))))

(assert (=> d!1634283 (= (isBalanced!4426 (right!43146 (left!42816 ys!41))) e!3162283)))

(assert (= (and d!1634283 (not res!2157633)) b!5067521))

(assert (= (and b!5067521 res!2157635) b!5067524))

(assert (= (and b!5067524 res!2157634) b!5067520))

(assert (= (and b!5067520 res!2157632) b!5067523))

(assert (= (and b!5067523 res!2157631) b!5067522))

(assert (= (and b!5067522 res!2157630) b!5067525))

(declare-fun m!6110770 () Bool)

(assert (=> b!5067522 m!6110770))

(declare-fun m!6110772 () Bool)

(assert (=> b!5067520 m!6110772))

(declare-fun m!6110774 () Bool)

(assert (=> b!5067525 m!6110774))

(assert (=> b!5067524 m!6110290))

(assert (=> b!5067524 m!6110292))

(declare-fun m!6110776 () Bool)

(assert (=> b!5067523 m!6110776))

(assert (=> b!5067521 m!6110290))

(assert (=> b!5067521 m!6110292))

(assert (=> b!5066582 d!1634283))

(declare-fun b!5067528 () Bool)

(declare-fun res!2157637 () Bool)

(declare-fun e!3162285 () Bool)

(assert (=> b!5067528 (=> (not res!2157637) (not e!3162285))))

(declare-fun lt!2089098 () List!58558)

(assert (=> b!5067528 (= res!2157637 (= (size!39074 lt!2089098) (+ (size!39074 (list!18989 (left!42816 lt!2088874))) (size!39074 (list!18989 (right!43146 lt!2088874))))))))

(declare-fun b!5067529 () Bool)

(assert (=> b!5067529 (= e!3162285 (or (not (= (list!18989 (right!43146 lt!2088874)) Nil!58434)) (= lt!2089098 (list!18989 (left!42816 lt!2088874)))))))

(declare-fun b!5067527 () Bool)

(declare-fun e!3162286 () List!58558)

(assert (=> b!5067527 (= e!3162286 (Cons!58434 (h!64882 (list!18989 (left!42816 lt!2088874))) (++!12789 (t!371291 (list!18989 (left!42816 lt!2088874))) (list!18989 (right!43146 lt!2088874)))))))

(declare-fun b!5067526 () Bool)

(assert (=> b!5067526 (= e!3162286 (list!18989 (right!43146 lt!2088874)))))

(declare-fun d!1634285 () Bool)

(assert (=> d!1634285 e!3162285))

(declare-fun res!2157636 () Bool)

(assert (=> d!1634285 (=> (not res!2157636) (not e!3162285))))

(assert (=> d!1634285 (= res!2157636 (= (content!10417 lt!2089098) ((_ map or) (content!10417 (list!18989 (left!42816 lt!2088874))) (content!10417 (list!18989 (right!43146 lt!2088874))))))))

(assert (=> d!1634285 (= lt!2089098 e!3162286)))

(declare-fun c!869999 () Bool)

(assert (=> d!1634285 (= c!869999 ((_ is Nil!58434) (list!18989 (left!42816 lt!2088874))))))

(assert (=> d!1634285 (= (++!12789 (list!18989 (left!42816 lt!2088874)) (list!18989 (right!43146 lt!2088874))) lt!2089098)))

(assert (= (and d!1634285 c!869999) b!5067526))

(assert (= (and d!1634285 (not c!869999)) b!5067527))

(assert (= (and d!1634285 res!2157636) b!5067528))

(assert (= (and b!5067528 res!2157637) b!5067529))

(declare-fun m!6110778 () Bool)

(assert (=> b!5067528 m!6110778))

(assert (=> b!5067528 m!6108950))

(declare-fun m!6110780 () Bool)

(assert (=> b!5067528 m!6110780))

(assert (=> b!5067528 m!6108952))

(declare-fun m!6110782 () Bool)

(assert (=> b!5067528 m!6110782))

(assert (=> b!5067527 m!6108952))

(declare-fun m!6110784 () Bool)

(assert (=> b!5067527 m!6110784))

(declare-fun m!6110786 () Bool)

(assert (=> d!1634285 m!6110786))

(assert (=> d!1634285 m!6108950))

(declare-fun m!6110788 () Bool)

(assert (=> d!1634285 m!6110788))

(assert (=> d!1634285 m!6108952))

(declare-fun m!6110790 () Bool)

(assert (=> d!1634285 m!6110790))

(assert (=> b!5066691 d!1634285))

(declare-fun d!1634287 () Bool)

(declare-fun c!870000 () Bool)

(assert (=> d!1634287 (= c!870000 ((_ is Empty!15564) (left!42816 lt!2088874)))))

(declare-fun e!3162287 () List!58558)

(assert (=> d!1634287 (= (list!18989 (left!42816 lt!2088874)) e!3162287)))

(declare-fun b!5067531 () Bool)

(declare-fun e!3162288 () List!58558)

(assert (=> b!5067531 (= e!3162287 e!3162288)))

(declare-fun c!870001 () Bool)

(assert (=> b!5067531 (= c!870001 ((_ is Leaf!25851) (left!42816 lt!2088874)))))

(declare-fun b!5067530 () Bool)

(assert (=> b!5067530 (= e!3162287 Nil!58434)))

(declare-fun b!5067533 () Bool)

(assert (=> b!5067533 (= e!3162288 (++!12789 (list!18989 (left!42816 (left!42816 lt!2088874))) (list!18989 (right!43146 (left!42816 lt!2088874)))))))

(declare-fun b!5067532 () Bool)

(assert (=> b!5067532 (= e!3162288 (list!18990 (xs!18914 (left!42816 lt!2088874))))))

(assert (= (and d!1634287 c!870000) b!5067530))

(assert (= (and d!1634287 (not c!870000)) b!5067531))

(assert (= (and b!5067531 c!870001) b!5067532))

(assert (= (and b!5067531 (not c!870001)) b!5067533))

(declare-fun m!6110792 () Bool)

(assert (=> b!5067533 m!6110792))

(declare-fun m!6110794 () Bool)

(assert (=> b!5067533 m!6110794))

(assert (=> b!5067533 m!6110792))

(assert (=> b!5067533 m!6110794))

(declare-fun m!6110796 () Bool)

(assert (=> b!5067533 m!6110796))

(declare-fun m!6110798 () Bool)

(assert (=> b!5067532 m!6110798))

(assert (=> b!5066691 d!1634287))

(declare-fun d!1634289 () Bool)

(declare-fun c!870002 () Bool)

(assert (=> d!1634289 (= c!870002 ((_ is Empty!15564) (right!43146 lt!2088874)))))

(declare-fun e!3162289 () List!58558)

(assert (=> d!1634289 (= (list!18989 (right!43146 lt!2088874)) e!3162289)))

(declare-fun b!5067535 () Bool)

(declare-fun e!3162290 () List!58558)

(assert (=> b!5067535 (= e!3162289 e!3162290)))

(declare-fun c!870003 () Bool)

(assert (=> b!5067535 (= c!870003 ((_ is Leaf!25851) (right!43146 lt!2088874)))))

(declare-fun b!5067534 () Bool)

(assert (=> b!5067534 (= e!3162289 Nil!58434)))

(declare-fun b!5067537 () Bool)

(assert (=> b!5067537 (= e!3162290 (++!12789 (list!18989 (left!42816 (right!43146 lt!2088874))) (list!18989 (right!43146 (right!43146 lt!2088874)))))))

(declare-fun b!5067536 () Bool)

(assert (=> b!5067536 (= e!3162290 (list!18990 (xs!18914 (right!43146 lt!2088874))))))

(assert (= (and d!1634289 c!870002) b!5067534))

(assert (= (and d!1634289 (not c!870002)) b!5067535))

(assert (= (and b!5067535 c!870003) b!5067536))

(assert (= (and b!5067535 (not c!870003)) b!5067537))

(declare-fun m!6110800 () Bool)

(assert (=> b!5067537 m!6110800))

(declare-fun m!6110802 () Bool)

(assert (=> b!5067537 m!6110802))

(assert (=> b!5067537 m!6110800))

(assert (=> b!5067537 m!6110802))

(declare-fun m!6110804 () Bool)

(assert (=> b!5067537 m!6110804))

(declare-fun m!6110806 () Bool)

(assert (=> b!5067536 m!6110806))

(assert (=> b!5066691 d!1634289))

(assert (=> b!5066400 d!1634101))

(declare-fun d!1634291 () Bool)

(declare-fun lt!2089099 () Bool)

(assert (=> d!1634291 (= lt!2089099 (isEmpty!31632 (list!18989 (left!42816 (right!43146 lt!2088868)))))))

(assert (=> d!1634291 (= lt!2089099 (= (size!39075 (left!42816 (right!43146 lt!2088868))) 0))))

(assert (=> d!1634291 (= (isEmpty!31631 (left!42816 (right!43146 lt!2088868))) lt!2089099)))

(declare-fun bs!1189953 () Bool)

(assert (= bs!1189953 d!1634291))

(assert (=> bs!1189953 m!6108522))

(assert (=> bs!1189953 m!6108522))

(declare-fun m!6110808 () Bool)

(assert (=> bs!1189953 m!6110808))

(declare-fun m!6110810 () Bool)

(assert (=> bs!1189953 m!6110810))

(assert (=> b!5066545 d!1634291))

(declare-fun d!1634293 () Bool)

(declare-fun c!870004 () Bool)

(assert (=> d!1634293 (= c!870004 ((_ is Nil!58434) lt!2088942))))

(declare-fun e!3162291 () (InoxSet T!105118))

(assert (=> d!1634293 (= (content!10417 lt!2088942) e!3162291)))

(declare-fun b!5067538 () Bool)

(assert (=> b!5067538 (= e!3162291 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067539 () Bool)

(assert (=> b!5067539 (= e!3162291 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 lt!2088942) true) (content!10417 (t!371291 lt!2088942))))))

(assert (= (and d!1634293 c!870004) b!5067538))

(assert (= (and d!1634293 (not c!870004)) b!5067539))

(declare-fun m!6110812 () Bool)

(assert (=> b!5067539 m!6110812))

(declare-fun m!6110814 () Bool)

(assert (=> b!5067539 m!6110814))

(assert (=> d!1633579 d!1634293))

(assert (=> d!1633579 d!1634011))

(assert (=> d!1633579 d!1633453))

(declare-fun d!1634295 () Bool)

(declare-fun lt!2089100 () Int)

(assert (=> d!1634295 (>= lt!2089100 0)))

(declare-fun e!3162292 () Int)

(assert (=> d!1634295 (= lt!2089100 e!3162292)))

(declare-fun c!870005 () Bool)

(assert (=> d!1634295 (= c!870005 ((_ is Nil!58434) (t!371291 (innerList!15652 (xs!18914 xs!286)))))))

(assert (=> d!1634295 (= (size!39074 (t!371291 (innerList!15652 (xs!18914 xs!286)))) lt!2089100)))

(declare-fun b!5067540 () Bool)

(assert (=> b!5067540 (= e!3162292 0)))

(declare-fun b!5067541 () Bool)

(assert (=> b!5067541 (= e!3162292 (+ 1 (size!39074 (t!371291 (t!371291 (innerList!15652 (xs!18914 xs!286)))))))))

(assert (= (and d!1634295 c!870005) b!5067540))

(assert (= (and d!1634295 (not c!870005)) b!5067541))

(declare-fun m!6110816 () Bool)

(assert (=> b!5067541 m!6110816))

(assert (=> b!5066553 d!1634295))

(declare-fun b!5067544 () Bool)

(declare-fun res!2157639 () Bool)

(declare-fun e!3162293 () Bool)

(assert (=> b!5067544 (=> (not res!2157639) (not e!3162293))))

(declare-fun lt!2089101 () List!58558)

(assert (=> b!5067544 (= res!2157639 (= (size!39074 lt!2089101) (+ (size!39074 (list!18989 (left!42816 lt!2088865))) (size!39074 (list!18989 (right!43146 lt!2088865))))))))

(declare-fun b!5067545 () Bool)

(assert (=> b!5067545 (= e!3162293 (or (not (= (list!18989 (right!43146 lt!2088865)) Nil!58434)) (= lt!2089101 (list!18989 (left!42816 lt!2088865)))))))

(declare-fun b!5067543 () Bool)

(declare-fun e!3162294 () List!58558)

(assert (=> b!5067543 (= e!3162294 (Cons!58434 (h!64882 (list!18989 (left!42816 lt!2088865))) (++!12789 (t!371291 (list!18989 (left!42816 lt!2088865))) (list!18989 (right!43146 lt!2088865)))))))

(declare-fun b!5067542 () Bool)

(assert (=> b!5067542 (= e!3162294 (list!18989 (right!43146 lt!2088865)))))

(declare-fun d!1634297 () Bool)

(assert (=> d!1634297 e!3162293))

(declare-fun res!2157638 () Bool)

(assert (=> d!1634297 (=> (not res!2157638) (not e!3162293))))

(assert (=> d!1634297 (= res!2157638 (= (content!10417 lt!2089101) ((_ map or) (content!10417 (list!18989 (left!42816 lt!2088865))) (content!10417 (list!18989 (right!43146 lt!2088865))))))))

(assert (=> d!1634297 (= lt!2089101 e!3162294)))

(declare-fun c!870006 () Bool)

(assert (=> d!1634297 (= c!870006 ((_ is Nil!58434) (list!18989 (left!42816 lt!2088865))))))

(assert (=> d!1634297 (= (++!12789 (list!18989 (left!42816 lt!2088865)) (list!18989 (right!43146 lt!2088865))) lt!2089101)))

(assert (= (and d!1634297 c!870006) b!5067542))

(assert (= (and d!1634297 (not c!870006)) b!5067543))

(assert (= (and d!1634297 res!2157638) b!5067544))

(assert (= (and b!5067544 res!2157639) b!5067545))

(declare-fun m!6110818 () Bool)

(assert (=> b!5067544 m!6110818))

(assert (=> b!5067544 m!6109002))

(declare-fun m!6110820 () Bool)

(assert (=> b!5067544 m!6110820))

(assert (=> b!5067544 m!6109006))

(declare-fun m!6110822 () Bool)

(assert (=> b!5067544 m!6110822))

(assert (=> b!5067543 m!6109006))

(declare-fun m!6110824 () Bool)

(assert (=> b!5067543 m!6110824))

(declare-fun m!6110826 () Bool)

(assert (=> d!1634297 m!6110826))

(assert (=> d!1634297 m!6109002))

(declare-fun m!6110828 () Bool)

(assert (=> d!1634297 m!6110828))

(assert (=> d!1634297 m!6109006))

(declare-fun m!6110830 () Bool)

(assert (=> d!1634297 m!6110830))

(assert (=> b!5066703 d!1634297))

(declare-fun d!1634299 () Bool)

(declare-fun c!870007 () Bool)

(assert (=> d!1634299 (= c!870007 ((_ is Empty!15564) (left!42816 lt!2088865)))))

(declare-fun e!3162295 () List!58558)

(assert (=> d!1634299 (= (list!18989 (left!42816 lt!2088865)) e!3162295)))

(declare-fun b!5067547 () Bool)

(declare-fun e!3162296 () List!58558)

(assert (=> b!5067547 (= e!3162295 e!3162296)))

(declare-fun c!870008 () Bool)

(assert (=> b!5067547 (= c!870008 ((_ is Leaf!25851) (left!42816 lt!2088865)))))

(declare-fun b!5067546 () Bool)

(assert (=> b!5067546 (= e!3162295 Nil!58434)))

(declare-fun b!5067549 () Bool)

(assert (=> b!5067549 (= e!3162296 (++!12789 (list!18989 (left!42816 (left!42816 lt!2088865))) (list!18989 (right!43146 (left!42816 lt!2088865)))))))

(declare-fun b!5067548 () Bool)

(assert (=> b!5067548 (= e!3162296 (list!18990 (xs!18914 (left!42816 lt!2088865))))))

(assert (= (and d!1634299 c!870007) b!5067546))

(assert (= (and d!1634299 (not c!870007)) b!5067547))

(assert (= (and b!5067547 c!870008) b!5067548))

(assert (= (and b!5067547 (not c!870008)) b!5067549))

(declare-fun m!6110832 () Bool)

(assert (=> b!5067549 m!6110832))

(declare-fun m!6110834 () Bool)

(assert (=> b!5067549 m!6110834))

(assert (=> b!5067549 m!6110832))

(assert (=> b!5067549 m!6110834))

(declare-fun m!6110836 () Bool)

(assert (=> b!5067549 m!6110836))

(declare-fun m!6110838 () Bool)

(assert (=> b!5067548 m!6110838))

(assert (=> b!5066703 d!1634299))

(declare-fun d!1634301 () Bool)

(declare-fun c!870009 () Bool)

(assert (=> d!1634301 (= c!870009 ((_ is Empty!15564) (right!43146 lt!2088865)))))

(declare-fun e!3162297 () List!58558)

(assert (=> d!1634301 (= (list!18989 (right!43146 lt!2088865)) e!3162297)))

(declare-fun b!5067551 () Bool)

(declare-fun e!3162298 () List!58558)

(assert (=> b!5067551 (= e!3162297 e!3162298)))

(declare-fun c!870010 () Bool)

(assert (=> b!5067551 (= c!870010 ((_ is Leaf!25851) (right!43146 lt!2088865)))))

(declare-fun b!5067550 () Bool)

(assert (=> b!5067550 (= e!3162297 Nil!58434)))

(declare-fun b!5067553 () Bool)

(assert (=> b!5067553 (= e!3162298 (++!12789 (list!18989 (left!42816 (right!43146 lt!2088865))) (list!18989 (right!43146 (right!43146 lt!2088865)))))))

(declare-fun b!5067552 () Bool)

(assert (=> b!5067552 (= e!3162298 (list!18990 (xs!18914 (right!43146 lt!2088865))))))

(assert (= (and d!1634301 c!870009) b!5067550))

(assert (= (and d!1634301 (not c!870009)) b!5067551))

(assert (= (and b!5067551 c!870010) b!5067552))

(assert (= (and b!5067551 (not c!870010)) b!5067553))

(declare-fun m!6110840 () Bool)

(assert (=> b!5067553 m!6110840))

(declare-fun m!6110842 () Bool)

(assert (=> b!5067553 m!6110842))

(assert (=> b!5067553 m!6110840))

(assert (=> b!5067553 m!6110842))

(declare-fun m!6110844 () Bool)

(assert (=> b!5067553 m!6110844))

(declare-fun m!6110846 () Bool)

(assert (=> b!5067552 m!6110846))

(assert (=> b!5066703 d!1634301))

(assert (=> b!5066525 d!1634037))

(assert (=> b!5066525 d!1633637))

(assert (=> b!5066525 d!1633627))

(declare-fun d!1634303 () Bool)

(declare-fun c!870011 () Bool)

(assert (=> d!1634303 (= c!870011 ((_ is Nil!58434) lt!2088938))))

(declare-fun e!3162299 () (InoxSet T!105118))

(assert (=> d!1634303 (= (content!10417 lt!2088938) e!3162299)))

(declare-fun b!5067554 () Bool)

(assert (=> b!5067554 (= e!3162299 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067555 () Bool)

(assert (=> b!5067555 (= e!3162299 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 lt!2088938) true) (content!10417 (t!371291 lt!2088938))))))

(assert (= (and d!1634303 c!870011) b!5067554))

(assert (= (and d!1634303 (not c!870011)) b!5067555))

(declare-fun m!6110848 () Bool)

(assert (=> b!5067555 m!6110848))

(declare-fun m!6110850 () Bool)

(assert (=> b!5067555 m!6110850))

(assert (=> d!1633555 d!1634303))

(declare-fun d!1634305 () Bool)

(declare-fun c!870012 () Bool)

(assert (=> d!1634305 (= c!870012 ((_ is Nil!58434) (list!18989 (left!42816 xs!286))))))

(declare-fun e!3162300 () (InoxSet T!105118))

(assert (=> d!1634305 (= (content!10417 (list!18989 (left!42816 xs!286))) e!3162300)))

(declare-fun b!5067556 () Bool)

(assert (=> b!5067556 (= e!3162300 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067557 () Bool)

(assert (=> b!5067557 (= e!3162300 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 (left!42816 xs!286))) true) (content!10417 (t!371291 (list!18989 (left!42816 xs!286))))))))

(assert (= (and d!1634305 c!870012) b!5067556))

(assert (= (and d!1634305 (not c!870012)) b!5067557))

(declare-fun m!6110852 () Bool)

(assert (=> b!5067557 m!6110852))

(assert (=> b!5067557 m!6110706))

(assert (=> d!1633555 d!1634305))

(declare-fun d!1634307 () Bool)

(declare-fun c!870013 () Bool)

(assert (=> d!1634307 (= c!870013 ((_ is Nil!58434) (list!18989 (left!42816 (right!43146 xs!286)))))))

(declare-fun e!3162301 () (InoxSet T!105118))

(assert (=> d!1634307 (= (content!10417 (list!18989 (left!42816 (right!43146 xs!286)))) e!3162301)))

(declare-fun b!5067558 () Bool)

(assert (=> b!5067558 (= e!3162301 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067559 () Bool)

(assert (=> b!5067559 (= e!3162301 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 (left!42816 (right!43146 xs!286)))) true) (content!10417 (t!371291 (list!18989 (left!42816 (right!43146 xs!286)))))))))

(assert (= (and d!1634307 c!870013) b!5067558))

(assert (= (and d!1634307 (not c!870013)) b!5067559))

(declare-fun m!6110854 () Bool)

(assert (=> b!5067559 m!6110854))

(declare-fun m!6110856 () Bool)

(assert (=> b!5067559 m!6110856))

(assert (=> d!1633555 d!1634307))

(declare-fun d!1634309 () Bool)

(declare-fun res!2157640 () Bool)

(declare-fun e!3162302 () Bool)

(assert (=> d!1634309 (=> (not res!2157640) (not e!3162302))))

(assert (=> d!1634309 (= res!2157640 (<= (size!39074 (list!18990 (xs!18914 (right!43146 (right!43146 xs!286))))) 512))))

(assert (=> d!1634309 (= (inv!77560 (right!43146 (right!43146 xs!286))) e!3162302)))

(declare-fun b!5067560 () Bool)

(declare-fun res!2157641 () Bool)

(assert (=> b!5067560 (=> (not res!2157641) (not e!3162302))))

(assert (=> b!5067560 (= res!2157641 (= (csize!31359 (right!43146 (right!43146 xs!286))) (size!39074 (list!18990 (xs!18914 (right!43146 (right!43146 xs!286)))))))))

(declare-fun b!5067561 () Bool)

(assert (=> b!5067561 (= e!3162302 (and (> (csize!31359 (right!43146 (right!43146 xs!286))) 0) (<= (csize!31359 (right!43146 (right!43146 xs!286))) 512)))))

(assert (= (and d!1634309 res!2157640) b!5067560))

(assert (= (and b!5067560 res!2157641) b!5067561))

(assert (=> d!1634309 m!6108498))

(assert (=> d!1634309 m!6108498))

(declare-fun m!6110858 () Bool)

(assert (=> d!1634309 m!6110858))

(assert (=> b!5067560 m!6108498))

(assert (=> b!5067560 m!6108498))

(assert (=> b!5067560 m!6110858))

(assert (=> b!5066391 d!1634309))

(declare-fun b!5067562 () Bool)

(declare-fun res!2157644 () Bool)

(declare-fun e!3162304 () Bool)

(assert (=> b!5067562 (=> (not res!2157644) (not e!3162304))))

(assert (=> b!5067562 (= res!2157644 (isBalanced!4426 (left!42816 (right!43146 (left!42816 xs!286)))))))

(declare-fun b!5067563 () Bool)

(declare-fun e!3162303 () Bool)

(assert (=> b!5067563 (= e!3162303 e!3162304)))

(declare-fun res!2157647 () Bool)

(assert (=> b!5067563 (=> (not res!2157647) (not e!3162304))))

(assert (=> b!5067563 (= res!2157647 (<= (- 1) (- (height!2141 (left!42816 (right!43146 (left!42816 xs!286)))) (height!2141 (right!43146 (right!43146 (left!42816 xs!286)))))))))

(declare-fun b!5067564 () Bool)

(declare-fun res!2157642 () Bool)

(assert (=> b!5067564 (=> (not res!2157642) (not e!3162304))))

(assert (=> b!5067564 (= res!2157642 (not (isEmpty!31631 (left!42816 (right!43146 (left!42816 xs!286))))))))

(declare-fun b!5067566 () Bool)

(declare-fun res!2157646 () Bool)

(assert (=> b!5067566 (=> (not res!2157646) (not e!3162304))))

(assert (=> b!5067566 (= res!2157646 (<= (- (height!2141 (left!42816 (right!43146 (left!42816 xs!286)))) (height!2141 (right!43146 (right!43146 (left!42816 xs!286))))) 1))))

(declare-fun b!5067567 () Bool)

(assert (=> b!5067567 (= e!3162304 (not (isEmpty!31631 (right!43146 (right!43146 (left!42816 xs!286))))))))

(declare-fun b!5067565 () Bool)

(declare-fun res!2157643 () Bool)

(assert (=> b!5067565 (=> (not res!2157643) (not e!3162304))))

(assert (=> b!5067565 (= res!2157643 (isBalanced!4426 (right!43146 (right!43146 (left!42816 xs!286)))))))

(declare-fun d!1634311 () Bool)

(declare-fun res!2157645 () Bool)

(assert (=> d!1634311 (=> res!2157645 e!3162303)))

(assert (=> d!1634311 (= res!2157645 (not ((_ is Node!15564) (right!43146 (left!42816 xs!286)))))))

(assert (=> d!1634311 (= (isBalanced!4426 (right!43146 (left!42816 xs!286))) e!3162303)))

(assert (= (and d!1634311 (not res!2157645)) b!5067563))

(assert (= (and b!5067563 res!2157647) b!5067566))

(assert (= (and b!5067566 res!2157646) b!5067562))

(assert (= (and b!5067562 res!2157644) b!5067565))

(assert (= (and b!5067565 res!2157643) b!5067564))

(assert (= (and b!5067564 res!2157642) b!5067567))

(declare-fun m!6110860 () Bool)

(assert (=> b!5067564 m!6110860))

(declare-fun m!6110862 () Bool)

(assert (=> b!5067562 m!6110862))

(declare-fun m!6110864 () Bool)

(assert (=> b!5067567 m!6110864))

(assert (=> b!5067566 m!6110538))

(assert (=> b!5067566 m!6110540))

(declare-fun m!6110866 () Bool)

(assert (=> b!5067565 m!6110866))

(assert (=> b!5067563 m!6110538))

(assert (=> b!5067563 m!6110540))

(assert (=> b!5066721 d!1634311))

(declare-fun bm!353141 () Bool)

(declare-fun call!353148 () Conc!15564)

(declare-fun call!353154 () Conc!15564)

(assert (=> bm!353141 (= call!353148 call!353154)))

(declare-fun b!5067568 () Bool)

(declare-fun res!2157648 () Bool)

(declare-fun e!3162312 () Bool)

(assert (=> b!5067568 (=> (not res!2157648) (not e!3162312))))

(declare-fun lt!2089104 () Conc!15564)

(assert (=> b!5067568 (= res!2157648 (<= (height!2141 lt!2089104) (+ (max!0 (height!2141 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (height!2141 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))) 1)))))

(declare-fun b!5067569 () Bool)

(declare-fun e!3162311 () Conc!15564)

(declare-fun call!353152 () Conc!15564)

(assert (=> b!5067569 (= e!3162311 call!353152)))

(declare-fun bm!353142 () Bool)

(declare-fun call!353158 () Conc!15564)

(assert (=> bm!353142 (= call!353154 call!353158)))

(declare-fun bm!353143 () Bool)

(declare-fun call!353160 () Int)

(declare-fun c!870016 () Bool)

(assert (=> bm!353143 (= call!353160 (height!2141 (ite c!870016 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (left!42816 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))))

(declare-fun lt!2089102 () Conc!15564)

(declare-fun c!870017 () Bool)

(declare-fun bm!353144 () Bool)

(declare-fun c!870018 () Bool)

(declare-fun call!353153 () Conc!15564)

(declare-fun c!870019 () Bool)

(declare-fun call!353150 () Conc!15564)

(declare-fun c!870014 () Bool)

(declare-fun lt!2089105 () Conc!15564)

(assert (=> bm!353144 (= call!353158 (<>!396 (ite c!870016 (ite c!870019 (left!42816 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (ite c!870018 (left!42816 (right!43146 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (left!42816 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))) (ite c!870014 call!353153 (ite c!870017 lt!2089102 (right!43146 (left!42816 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))) (ite c!870016 (ite c!870019 call!353150 (ite c!870018 lt!2089105 (left!42816 (right!43146 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))) (ite c!870014 (right!43146 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))) (ite c!870017 (right!43146 (left!42816 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))) (right!43146 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))))))

(declare-fun b!5067570 () Bool)

(declare-fun res!2157652 () Bool)

(assert (=> b!5067570 (=> (not res!2157652) (not e!3162312))))

(assert (=> b!5067570 (= res!2157652 (>= (height!2141 lt!2089104) (max!0 (height!2141 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (height!2141 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))))

(declare-fun b!5067571 () Bool)

(declare-fun res!2157650 () Bool)

(assert (=> b!5067571 (=> (not res!2157650) (not e!3162312))))

(assert (=> b!5067571 (= res!2157650 (isBalanced!4426 lt!2089104))))

(declare-fun bm!353145 () Bool)

(declare-fun call!353149 () Conc!15564)

(assert (=> bm!353145 (= call!353149 call!353158)))

(declare-fun b!5067573 () Bool)

(declare-fun e!3162308 () Conc!15564)

(declare-fun e!3162307 () Conc!15564)

(assert (=> b!5067573 (= e!3162308 e!3162307)))

(assert (=> b!5067573 (= lt!2089102 call!353153)))

(declare-fun call!353146 () Int)

(declare-fun call!353151 () Int)

(assert (=> b!5067573 (= c!870017 (= call!353146 (- call!353151 3)))))

(declare-fun b!5067574 () Bool)

(assert (=> b!5067574 (= e!3162311 call!353152)))

(declare-fun bm!353146 () Bool)

(declare-fun call!353155 () Conc!15564)

(assert (=> bm!353146 (= call!353155 call!353149)))

(declare-fun b!5067575 () Bool)

(assert (=> b!5067575 (= e!3162312 (= (list!18989 lt!2089104) (++!12789 (list!18989 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (list!18989 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))))

(declare-fun b!5067576 () Bool)

(assert (=> b!5067576 (= e!3162308 call!353154)))

(declare-fun b!5067577 () Bool)

(declare-fun call!353147 () Int)

(assert (=> b!5067577 (= c!870019 (>= call!353147 call!353151))))

(declare-fun e!3162310 () Conc!15564)

(declare-fun e!3162314 () Conc!15564)

(assert (=> b!5067577 (= e!3162310 e!3162314)))

(declare-fun bm!353147 () Bool)

(declare-fun call!353159 () Conc!15564)

(assert (=> bm!353147 (= call!353153 call!353159)))

(declare-fun b!5067578 () Bool)

(assert (=> b!5067578 (= e!3162314 e!3162311)))

(assert (=> b!5067578 (= lt!2089105 call!353150)))

(assert (=> b!5067578 (= c!870018 (= call!353146 (- call!353160 3)))))

(declare-fun bm!353148 () Bool)

(assert (=> bm!353148 (= call!353147 (height!2141 (ite c!870016 (left!42816 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (right!43146 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))))

(declare-fun bm!353149 () Bool)

(assert (=> bm!353149 (= call!353151 (height!2141 (ite c!870016 (right!43146 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))))))

(declare-fun b!5067579 () Bool)

(declare-fun e!3162305 () Conc!15564)

(declare-fun e!3162309 () Conc!15564)

(assert (=> b!5067579 (= e!3162305 e!3162309)))

(declare-fun c!870020 () Bool)

(assert (=> b!5067579 (= c!870020 (= (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))) Empty!15564))))

(declare-fun b!5067580 () Bool)

(assert (=> b!5067580 (= e!3162309 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))

(declare-fun b!5067581 () Bool)

(declare-fun call!353161 () Conc!15564)

(assert (=> b!5067581 (= e!3162307 call!353161)))

(declare-fun bm!353150 () Bool)

(assert (=> bm!353150 (= call!353146 (height!2141 (ite c!870016 lt!2089105 lt!2089102)))))

(declare-fun b!5067582 () Bool)

(declare-fun e!3162313 () Conc!15564)

(declare-fun call!353156 () Conc!15564)

(assert (=> b!5067582 (= e!3162313 call!353156)))

(declare-fun bm!353151 () Bool)

(assert (=> bm!353151 (= call!353159 (++!12788 (ite c!870016 (ite c!870019 (right!43146 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))) (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) (ite c!870016 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))) (ite c!870014 (left!42816 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))) (left!42816 (left!42816 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))))))

(declare-fun b!5067583 () Bool)

(assert (=> b!5067583 (= e!3162314 call!353149)))

(declare-fun bm!353152 () Bool)

(declare-fun call!353157 () Conc!15564)

(assert (=> bm!353152 (= call!353157 call!353156)))

(declare-fun b!5067584 () Bool)

(assert (=> b!5067584 (= c!870014 (>= call!353147 call!353160))))

(assert (=> b!5067584 (= e!3162310 e!3162308)))

(declare-fun bm!353153 () Bool)

(assert (=> bm!353153 (= call!353161 call!353157)))

(declare-fun b!5067585 () Bool)

(declare-fun c!870021 () Bool)

(declare-fun lt!2089103 () Int)

(assert (=> b!5067585 (= c!870021 (and (<= (- 1) lt!2089103) (<= lt!2089103 1)))))

(assert (=> b!5067585 (= lt!2089103 (- (height!2141 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))) (height!2141 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))))))

(assert (=> b!5067585 (= e!3162309 e!3162313)))

(declare-fun e!3162306 () Bool)

(declare-fun b!5067586 () Bool)

(assert (=> b!5067586 (= e!3162306 (isBalanced!4426 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))

(declare-fun b!5067587 () Bool)

(assert (=> b!5067587 (= e!3162305 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))))))

(declare-fun bm!353154 () Bool)

(assert (=> bm!353154 (= call!353156 (<>!396 (ite c!870021 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!870016 (ite c!870018 (left!42816 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))) call!353155) (ite c!870017 call!353148 lt!2089102))) (ite c!870021 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))))))) (ite c!870016 (ite c!870018 call!353155 lt!2089105) (ite c!870017 (right!43146 (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))) call!353148)))))))

(declare-fun b!5067588 () Bool)

(assert (=> b!5067588 (= e!3162307 call!353161)))

(declare-fun b!5067572 () Bool)

(assert (=> b!5067572 (= e!3162313 e!3162310)))

(assert (=> b!5067572 (= c!870016 (< lt!2089103 (- 1)))))

(declare-fun d!1634313 () Bool)

(assert (=> d!1634313 e!3162312))

(declare-fun res!2157651 () Bool)

(assert (=> d!1634313 (=> (not res!2157651) (not e!3162312))))

(assert (=> d!1634313 (= res!2157651 (appendAssocInst!910 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))

(assert (=> d!1634313 (= lt!2089104 e!3162305)))

(declare-fun c!870015 () Bool)

(assert (=> d!1634313 (= c!870015 (= (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) Empty!15564))))

(assert (=> d!1634313 e!3162306))

(declare-fun res!2157649 () Bool)

(assert (=> d!1634313 (=> (not res!2157649) (not e!3162306))))

(assert (=> d!1634313 (= res!2157649 (isBalanced!4426 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286))))))))

(assert (=> d!1634313 (= (++!12788 (ite c!869767 (ite c!869770 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (right!43146 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))))) (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (ite c!869767 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41)))) (ite c!869765 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))) (left!42816 (left!42816 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))) lt!2089104)))

(declare-fun bm!353155 () Bool)

(assert (=> bm!353155 (= call!353150 call!353159)))

(declare-fun bm!353156 () Bool)

(assert (=> bm!353156 (= call!353152 call!353157)))

(assert (= (and d!1634313 res!2157649) b!5067586))

(assert (= (and d!1634313 c!870015) b!5067587))

(assert (= (and d!1634313 (not c!870015)) b!5067579))

(assert (= (and b!5067579 c!870020) b!5067580))

(assert (= (and b!5067579 (not c!870020)) b!5067585))

(assert (= (and b!5067585 c!870021) b!5067582))

(assert (= (and b!5067585 (not c!870021)) b!5067572))

(assert (= (and b!5067572 c!870016) b!5067577))

(assert (= (and b!5067572 (not c!870016)) b!5067584))

(assert (= (and b!5067577 c!870019) b!5067583))

(assert (= (and b!5067577 (not c!870019)) b!5067578))

(assert (= (and b!5067578 c!870018) b!5067574))

(assert (= (and b!5067578 (not c!870018)) b!5067569))

(assert (= (or b!5067574 b!5067569) bm!353146))

(assert (= (or b!5067574 b!5067569) bm!353156))

(assert (= (or b!5067583 b!5067578) bm!353155))

(assert (= (or b!5067583 bm!353146) bm!353145))

(assert (= (and b!5067584 c!870014) b!5067576))

(assert (= (and b!5067584 (not c!870014)) b!5067573))

(assert (= (and b!5067573 c!870017) b!5067588))

(assert (= (and b!5067573 (not c!870017)) b!5067581))

(assert (= (or b!5067588 b!5067581) bm!353141))

(assert (= (or b!5067588 b!5067581) bm!353153))

(assert (= (or b!5067576 b!5067573) bm!353147))

(assert (= (or b!5067576 bm!353141) bm!353142))

(assert (= (or bm!353155 bm!353147) bm!353151))

(assert (= (or b!5067577 b!5067584) bm!353148))

(assert (= (or b!5067577 b!5067573) bm!353149))

(assert (= (or b!5067578 b!5067584) bm!353143))

(assert (= (or bm!353156 bm!353153) bm!353152))

(assert (= (or bm!353145 bm!353142) bm!353144))

(assert (= (or b!5067578 b!5067573) bm!353150))

(assert (= (or b!5067582 bm!353152) bm!353154))

(assert (= (and d!1634313 res!2157651) b!5067571))

(assert (= (and b!5067571 res!2157650) b!5067568))

(assert (= (and b!5067568 res!2157648) b!5067570))

(assert (= (and b!5067570 res!2157652) b!5067575))

(declare-fun m!6110868 () Bool)

(assert (=> d!1634313 m!6110868))

(declare-fun m!6110870 () Bool)

(assert (=> d!1634313 m!6110870))

(declare-fun m!6110872 () Bool)

(assert (=> b!5067571 m!6110872))

(declare-fun m!6110874 () Bool)

(assert (=> b!5067568 m!6110874))

(declare-fun m!6110876 () Bool)

(assert (=> b!5067568 m!6110876))

(declare-fun m!6110878 () Bool)

(assert (=> b!5067568 m!6110878))

(assert (=> b!5067568 m!6110876))

(assert (=> b!5067568 m!6110878))

(declare-fun m!6110880 () Bool)

(assert (=> b!5067568 m!6110880))

(declare-fun m!6110882 () Bool)

(assert (=> bm!353148 m!6110882))

(assert (=> b!5067570 m!6110874))

(assert (=> b!5067570 m!6110876))

(assert (=> b!5067570 m!6110878))

(assert (=> b!5067570 m!6110876))

(assert (=> b!5067570 m!6110878))

(assert (=> b!5067570 m!6110880))

(declare-fun m!6110884 () Bool)

(assert (=> bm!353154 m!6110884))

(declare-fun m!6110886 () Bool)

(assert (=> bm!353150 m!6110886))

(declare-fun m!6110888 () Bool)

(assert (=> b!5067586 m!6110888))

(declare-fun m!6110890 () Bool)

(assert (=> bm!353151 m!6110890))

(declare-fun m!6110892 () Bool)

(assert (=> bm!353149 m!6110892))

(assert (=> b!5067585 m!6110878))

(assert (=> b!5067585 m!6110876))

(declare-fun m!6110894 () Bool)

(assert (=> b!5067575 m!6110894))

(declare-fun m!6110896 () Bool)

(assert (=> b!5067575 m!6110896))

(declare-fun m!6110898 () Bool)

(assert (=> b!5067575 m!6110898))

(assert (=> b!5067575 m!6110896))

(assert (=> b!5067575 m!6110898))

(declare-fun m!6110900 () Bool)

(assert (=> b!5067575 m!6110900))

(declare-fun m!6110902 () Bool)

(assert (=> bm!353143 m!6110902))

(declare-fun m!6110904 () Bool)

(assert (=> bm!353144 m!6110904))

(assert (=> bm!353051 d!1634313))

(declare-fun d!1634315 () Bool)

(declare-fun c!870022 () Bool)

(assert (=> d!1634315 (= c!870022 ((_ is Node!15564) (left!42816 (right!43146 (left!42816 xs!286)))))))

(declare-fun e!3162315 () Bool)

(assert (=> d!1634315 (= (inv!77556 (left!42816 (right!43146 (left!42816 xs!286)))) e!3162315)))

(declare-fun b!5067589 () Bool)

(assert (=> b!5067589 (= e!3162315 (inv!77559 (left!42816 (right!43146 (left!42816 xs!286)))))))

(declare-fun b!5067590 () Bool)

(declare-fun e!3162316 () Bool)

(assert (=> b!5067590 (= e!3162315 e!3162316)))

(declare-fun res!2157653 () Bool)

(assert (=> b!5067590 (= res!2157653 (not ((_ is Leaf!25851) (left!42816 (right!43146 (left!42816 xs!286))))))))

(assert (=> b!5067590 (=> res!2157653 e!3162316)))

(declare-fun b!5067591 () Bool)

(assert (=> b!5067591 (= e!3162316 (inv!77560 (left!42816 (right!43146 (left!42816 xs!286)))))))

(assert (= (and d!1634315 c!870022) b!5067589))

(assert (= (and d!1634315 (not c!870022)) b!5067590))

(assert (= (and b!5067590 (not res!2157653)) b!5067591))

(declare-fun m!6110906 () Bool)

(assert (=> b!5067589 m!6110906))

(declare-fun m!6110908 () Bool)

(assert (=> b!5067591 m!6110908))

(assert (=> b!5066764 d!1634315))

(declare-fun d!1634317 () Bool)

(declare-fun c!870023 () Bool)

(assert (=> d!1634317 (= c!870023 ((_ is Node!15564) (right!43146 (right!43146 (left!42816 xs!286)))))))

(declare-fun e!3162317 () Bool)

(assert (=> d!1634317 (= (inv!77556 (right!43146 (right!43146 (left!42816 xs!286)))) e!3162317)))

(declare-fun b!5067592 () Bool)

(assert (=> b!5067592 (= e!3162317 (inv!77559 (right!43146 (right!43146 (left!42816 xs!286)))))))

(declare-fun b!5067593 () Bool)

(declare-fun e!3162318 () Bool)

(assert (=> b!5067593 (= e!3162317 e!3162318)))

(declare-fun res!2157654 () Bool)

(assert (=> b!5067593 (= res!2157654 (not ((_ is Leaf!25851) (right!43146 (right!43146 (left!42816 xs!286))))))))

(assert (=> b!5067593 (=> res!2157654 e!3162318)))

(declare-fun b!5067594 () Bool)

(assert (=> b!5067594 (= e!3162318 (inv!77560 (right!43146 (right!43146 (left!42816 xs!286)))))))

(assert (= (and d!1634317 c!870023) b!5067592))

(assert (= (and d!1634317 (not c!870023)) b!5067593))

(assert (= (and b!5067593 (not res!2157654)) b!5067594))

(declare-fun m!6110910 () Bool)

(assert (=> b!5067592 m!6110910))

(declare-fun m!6110912 () Bool)

(assert (=> b!5067594 m!6110912))

(assert (=> b!5066764 d!1634317))

(declare-fun b!5067597 () Bool)

(declare-fun res!2157656 () Bool)

(declare-fun e!3162319 () Bool)

(assert (=> b!5067597 (=> (not res!2157656) (not e!3162319))))

(declare-fun lt!2089106 () List!58558)

(assert (=> b!5067597 (= res!2157656 (= (size!39074 lt!2089106) (+ (size!39074 call!353025) (size!39074 (list!18989 ys!41)))))))

(declare-fun b!5067598 () Bool)

(assert (=> b!5067598 (= e!3162319 (or (not (= (list!18989 ys!41) Nil!58434)) (= lt!2089106 call!353025)))))

(declare-fun b!5067596 () Bool)

(declare-fun e!3162320 () List!58558)

(assert (=> b!5067596 (= e!3162320 (Cons!58434 (h!64882 call!353025) (++!12789 (t!371291 call!353025) (list!18989 ys!41))))))

(declare-fun b!5067595 () Bool)

(assert (=> b!5067595 (= e!3162320 (list!18989 ys!41))))

(declare-fun d!1634319 () Bool)

(assert (=> d!1634319 e!3162319))

(declare-fun res!2157655 () Bool)

(assert (=> d!1634319 (=> (not res!2157655) (not e!3162319))))

(assert (=> d!1634319 (= res!2157655 (= (content!10417 lt!2089106) ((_ map or) (content!10417 call!353025) (content!10417 (list!18989 ys!41)))))))

(assert (=> d!1634319 (= lt!2089106 e!3162320)))

(declare-fun c!870024 () Bool)

(assert (=> d!1634319 (= c!870024 ((_ is Nil!58434) call!353025))))

(assert (=> d!1634319 (= (++!12789 call!353025 (list!18989 ys!41)) lt!2089106)))

(assert (= (and d!1634319 c!870024) b!5067595))

(assert (= (and d!1634319 (not c!870024)) b!5067596))

(assert (= (and d!1634319 res!2157655) b!5067597))

(assert (= (and b!5067597 res!2157656) b!5067598))

(declare-fun m!6110914 () Bool)

(assert (=> b!5067597 m!6110914))

(declare-fun m!6110916 () Bool)

(assert (=> b!5067597 m!6110916))

(assert (=> b!5067597 m!6107974))

(assert (=> b!5067597 m!6108164))

(assert (=> b!5067596 m!6107974))

(declare-fun m!6110918 () Bool)

(assert (=> b!5067596 m!6110918))

(declare-fun m!6110920 () Bool)

(assert (=> d!1634319 m!6110920))

(declare-fun m!6110922 () Bool)

(assert (=> d!1634319 m!6110922))

(assert (=> d!1634319 m!6107974))

(assert (=> d!1634319 m!6108172))

(assert (=> bm!353017 d!1634319))

(declare-fun b!5067599 () Bool)

(declare-fun res!2157659 () Bool)

(declare-fun e!3162322 () Bool)

(assert (=> b!5067599 (=> (not res!2157659) (not e!3162322))))

(assert (=> b!5067599 (= res!2157659 (isBalanced!4426 (left!42816 (right!43146 (right!43146 ys!41)))))))

(declare-fun b!5067600 () Bool)

(declare-fun e!3162321 () Bool)

(assert (=> b!5067600 (= e!3162321 e!3162322)))

(declare-fun res!2157662 () Bool)

(assert (=> b!5067600 (=> (not res!2157662) (not e!3162322))))

(assert (=> b!5067600 (= res!2157662 (<= (- 1) (- (height!2141 (left!42816 (right!43146 (right!43146 ys!41)))) (height!2141 (right!43146 (right!43146 (right!43146 ys!41)))))))))

(declare-fun b!5067601 () Bool)

(declare-fun res!2157657 () Bool)

(assert (=> b!5067601 (=> (not res!2157657) (not e!3162322))))

(assert (=> b!5067601 (= res!2157657 (not (isEmpty!31631 (left!42816 (right!43146 (right!43146 ys!41))))))))

(declare-fun b!5067603 () Bool)

(declare-fun res!2157661 () Bool)

(assert (=> b!5067603 (=> (not res!2157661) (not e!3162322))))

(assert (=> b!5067603 (= res!2157661 (<= (- (height!2141 (left!42816 (right!43146 (right!43146 ys!41)))) (height!2141 (right!43146 (right!43146 (right!43146 ys!41))))) 1))))

(declare-fun b!5067604 () Bool)

(assert (=> b!5067604 (= e!3162322 (not (isEmpty!31631 (right!43146 (right!43146 (right!43146 ys!41))))))))

(declare-fun b!5067602 () Bool)

(declare-fun res!2157658 () Bool)

(assert (=> b!5067602 (=> (not res!2157658) (not e!3162322))))

(assert (=> b!5067602 (= res!2157658 (isBalanced!4426 (right!43146 (right!43146 (right!43146 ys!41)))))))

(declare-fun d!1634321 () Bool)

(declare-fun res!2157660 () Bool)

(assert (=> d!1634321 (=> res!2157660 e!3162321)))

(assert (=> d!1634321 (= res!2157660 (not ((_ is Node!15564) (right!43146 (right!43146 ys!41)))))))

(assert (=> d!1634321 (= (isBalanced!4426 (right!43146 (right!43146 ys!41))) e!3162321)))

(assert (= (and d!1634321 (not res!2157660)) b!5067600))

(assert (= (and b!5067600 res!2157662) b!5067603))

(assert (= (and b!5067603 res!2157661) b!5067599))

(assert (= (and b!5067599 res!2157659) b!5067602))

(assert (= (and b!5067602 res!2157658) b!5067601))

(assert (= (and b!5067601 res!2157657) b!5067604))

(declare-fun m!6110924 () Bool)

(assert (=> b!5067601 m!6110924))

(declare-fun m!6110926 () Bool)

(assert (=> b!5067599 m!6110926))

(declare-fun m!6110928 () Bool)

(assert (=> b!5067604 m!6110928))

(assert (=> b!5067603 m!6110170))

(assert (=> b!5067603 m!6110172))

(declare-fun m!6110930 () Bool)

(assert (=> b!5067602 m!6110930))

(assert (=> b!5067600 m!6110170))

(assert (=> b!5067600 m!6110172))

(assert (=> b!5066733 d!1634321))

(declare-fun d!1634323 () Bool)

(assert (=> d!1634323 (= (list!18990 (xs!18914 lt!2088908)) (innerList!15652 (xs!18914 lt!2088908)))))

(assert (=> b!5066418 d!1634323))

(declare-fun d!1634325 () Bool)

(declare-fun res!2157663 () Bool)

(declare-fun e!3162323 () Bool)

(assert (=> d!1634325 (=> (not res!2157663) (not e!3162323))))

(assert (=> d!1634325 (= res!2157663 (= (csize!31358 (left!42816 (left!42816 xs!286))) (+ (size!39075 (left!42816 (left!42816 (left!42816 xs!286)))) (size!39075 (right!43146 (left!42816 (left!42816 xs!286)))))))))

(assert (=> d!1634325 (= (inv!77559 (left!42816 (left!42816 xs!286))) e!3162323)))

(declare-fun b!5067605 () Bool)

(declare-fun res!2157664 () Bool)

(assert (=> b!5067605 (=> (not res!2157664) (not e!3162323))))

(assert (=> b!5067605 (= res!2157664 (and (not (= (left!42816 (left!42816 (left!42816 xs!286))) Empty!15564)) (not (= (right!43146 (left!42816 (left!42816 xs!286))) Empty!15564))))))

(declare-fun b!5067606 () Bool)

(declare-fun res!2157665 () Bool)

(assert (=> b!5067606 (=> (not res!2157665) (not e!3162323))))

(assert (=> b!5067606 (= res!2157665 (= (cheight!15775 (left!42816 (left!42816 xs!286))) (+ (max!0 (height!2141 (left!42816 (left!42816 (left!42816 xs!286)))) (height!2141 (right!43146 (left!42816 (left!42816 xs!286))))) 1)))))

(declare-fun b!5067607 () Bool)

(assert (=> b!5067607 (= e!3162323 (<= 0 (cheight!15775 (left!42816 (left!42816 xs!286)))))))

(assert (= (and d!1634325 res!2157663) b!5067605))

(assert (= (and b!5067605 res!2157664) b!5067606))

(assert (= (and b!5067606 res!2157665) b!5067607))

(declare-fun m!6110932 () Bool)

(assert (=> d!1634325 m!6110932))

(declare-fun m!6110934 () Bool)

(assert (=> d!1634325 m!6110934))

(assert (=> b!5067606 m!6110316))

(assert (=> b!5067606 m!6110318))

(assert (=> b!5067606 m!6110316))

(assert (=> b!5067606 m!6110318))

(declare-fun m!6110936 () Bool)

(assert (=> b!5067606 m!6110936))

(assert (=> b!5066535 d!1634325))

(declare-fun d!1634327 () Bool)

(assert (=> d!1634327 (= (list!18990 (xs!18914 (left!42816 lt!2088868))) (innerList!15652 (xs!18914 (left!42816 lt!2088868))))))

(assert (=> b!5066434 d!1634327))

(declare-fun b!5067610 () Bool)

(declare-fun res!2157667 () Bool)

(declare-fun e!3162324 () Bool)

(assert (=> b!5067610 (=> (not res!2157667) (not e!3162324))))

(declare-fun lt!2089107 () List!58558)

(assert (=> b!5067610 (= res!2157667 (= (size!39074 lt!2089107) (+ (size!39074 (t!371291 (list!18989 (left!42816 xs!286)))) (size!39074 (list!18989 (right!43146 xs!286))))))))

(declare-fun b!5067611 () Bool)

(assert (=> b!5067611 (= e!3162324 (or (not (= (list!18989 (right!43146 xs!286)) Nil!58434)) (= lt!2089107 (t!371291 (list!18989 (left!42816 xs!286))))))))

(declare-fun b!5067609 () Bool)

(declare-fun e!3162325 () List!58558)

(assert (=> b!5067609 (= e!3162325 (Cons!58434 (h!64882 (t!371291 (list!18989 (left!42816 xs!286)))) (++!12789 (t!371291 (t!371291 (list!18989 (left!42816 xs!286)))) (list!18989 (right!43146 xs!286)))))))

(declare-fun b!5067608 () Bool)

(assert (=> b!5067608 (= e!3162325 (list!18989 (right!43146 xs!286)))))

(declare-fun d!1634329 () Bool)

(assert (=> d!1634329 e!3162324))

(declare-fun res!2157666 () Bool)

(assert (=> d!1634329 (=> (not res!2157666) (not e!3162324))))

(assert (=> d!1634329 (= res!2157666 (= (content!10417 lt!2089107) ((_ map or) (content!10417 (t!371291 (list!18989 (left!42816 xs!286)))) (content!10417 (list!18989 (right!43146 xs!286))))))))

(assert (=> d!1634329 (= lt!2089107 e!3162325)))

(declare-fun c!870025 () Bool)

(assert (=> d!1634329 (= c!870025 ((_ is Nil!58434) (t!371291 (list!18989 (left!42816 xs!286)))))))

(assert (=> d!1634329 (= (++!12789 (t!371291 (list!18989 (left!42816 xs!286))) (list!18989 (right!43146 xs!286))) lt!2089107)))

(assert (= (and d!1634329 c!870025) b!5067608))

(assert (= (and d!1634329 (not c!870025)) b!5067609))

(assert (= (and d!1634329 res!2157666) b!5067610))

(assert (= (and b!5067610 res!2157667) b!5067611))

(declare-fun m!6110938 () Bool)

(assert (=> b!5067610 m!6110938))

(assert (=> b!5067610 m!6110048))

(assert (=> b!5067610 m!6108116))

(assert (=> b!5067610 m!6108464))

(assert (=> b!5067609 m!6108116))

(declare-fun m!6110940 () Bool)

(assert (=> b!5067609 m!6110940))

(declare-fun m!6110942 () Bool)

(assert (=> d!1634329 m!6110942))

(assert (=> d!1634329 m!6110706))

(assert (=> d!1634329 m!6108116))

(assert (=> d!1634329 m!6108472))

(assert (=> b!5066413 d!1634329))

(declare-fun d!1634331 () Bool)

(declare-fun res!2157668 () Bool)

(declare-fun e!3162326 () Bool)

(assert (=> d!1634331 (=> (not res!2157668) (not e!3162326))))

(assert (=> d!1634331 (= res!2157668 (= (csize!31358 (left!42816 (right!43146 ys!41))) (+ (size!39075 (left!42816 (left!42816 (right!43146 ys!41)))) (size!39075 (right!43146 (left!42816 (right!43146 ys!41)))))))))

(assert (=> d!1634331 (= (inv!77559 (left!42816 (right!43146 ys!41))) e!3162326)))

(declare-fun b!5067612 () Bool)

(declare-fun res!2157669 () Bool)

(assert (=> b!5067612 (=> (not res!2157669) (not e!3162326))))

(assert (=> b!5067612 (= res!2157669 (and (not (= (left!42816 (left!42816 (right!43146 ys!41))) Empty!15564)) (not (= (right!43146 (left!42816 (right!43146 ys!41))) Empty!15564))))))

(declare-fun b!5067613 () Bool)

(declare-fun res!2157670 () Bool)

(assert (=> b!5067613 (=> (not res!2157670) (not e!3162326))))

(assert (=> b!5067613 (= res!2157670 (= (cheight!15775 (left!42816 (right!43146 ys!41))) (+ (max!0 (height!2141 (left!42816 (left!42816 (right!43146 ys!41)))) (height!2141 (right!43146 (left!42816 (right!43146 ys!41))))) 1)))))

(declare-fun b!5067614 () Bool)

(assert (=> b!5067614 (= e!3162326 (<= 0 (cheight!15775 (left!42816 (right!43146 ys!41)))))))

(assert (= (and d!1634331 res!2157668) b!5067612))

(assert (= (and b!5067612 res!2157669) b!5067613))

(assert (= (and b!5067613 res!2157670) b!5067614))

(declare-fun m!6110944 () Bool)

(assert (=> d!1634331 m!6110944))

(declare-fun m!6110946 () Bool)

(assert (=> d!1634331 m!6110946))

(assert (=> b!5067613 m!6110328))

(assert (=> b!5067613 m!6110330))

(assert (=> b!5067613 m!6110328))

(assert (=> b!5067613 m!6110330))

(declare-fun m!6110948 () Bool)

(assert (=> b!5067613 m!6110948))

(assert (=> b!5066661 d!1634331))

(declare-fun b!5067617 () Bool)

(declare-fun res!2157672 () Bool)

(declare-fun e!3162327 () Bool)

(assert (=> b!5067617 (=> (not res!2157672) (not e!3162327))))

(declare-fun lt!2089108 () List!58558)

(assert (=> b!5067617 (= res!2157672 (= (size!39074 lt!2089108) (+ (size!39074 (t!371291 (list!18989 (left!42816 lt!2088868)))) (size!39074 (list!18989 (right!43146 lt!2088868))))))))

(declare-fun b!5067618 () Bool)

(assert (=> b!5067618 (= e!3162327 (or (not (= (list!18989 (right!43146 lt!2088868)) Nil!58434)) (= lt!2089108 (t!371291 (list!18989 (left!42816 lt!2088868))))))))

(declare-fun b!5067616 () Bool)

(declare-fun e!3162328 () List!58558)

(assert (=> b!5067616 (= e!3162328 (Cons!58434 (h!64882 (t!371291 (list!18989 (left!42816 lt!2088868)))) (++!12789 (t!371291 (t!371291 (list!18989 (left!42816 lt!2088868)))) (list!18989 (right!43146 lt!2088868)))))))

(declare-fun b!5067615 () Bool)

(assert (=> b!5067615 (= e!3162328 (list!18989 (right!43146 lt!2088868)))))

(declare-fun d!1634333 () Bool)

(assert (=> d!1634333 e!3162327))

(declare-fun res!2157671 () Bool)

(assert (=> d!1634333 (=> (not res!2157671) (not e!3162327))))

(assert (=> d!1634333 (= res!2157671 (= (content!10417 lt!2089108) ((_ map or) (content!10417 (t!371291 (list!18989 (left!42816 lt!2088868)))) (content!10417 (list!18989 (right!43146 lt!2088868))))))))

(assert (=> d!1634333 (= lt!2089108 e!3162328)))

(declare-fun c!870026 () Bool)

(assert (=> d!1634333 (= c!870026 ((_ is Nil!58434) (t!371291 (list!18989 (left!42816 lt!2088868)))))))

(assert (=> d!1634333 (= (++!12789 (t!371291 (list!18989 (left!42816 lt!2088868))) (list!18989 (right!43146 lt!2088868))) lt!2089108)))

(assert (= (and d!1634333 c!870026) b!5067615))

(assert (= (and d!1634333 (not c!870026)) b!5067616))

(assert (= (and d!1634333 res!2157671) b!5067617))

(assert (= (and b!5067617 res!2157672) b!5067618))

(declare-fun m!6110950 () Bool)

(assert (=> b!5067617 m!6110950))

(declare-fun m!6110952 () Bool)

(assert (=> b!5067617 m!6110952))

(assert (=> b!5067617 m!6108154))

(assert (=> b!5067617 m!6108504))

(assert (=> b!5067616 m!6108154))

(declare-fun m!6110954 () Bool)

(assert (=> b!5067616 m!6110954))

(declare-fun m!6110956 () Bool)

(assert (=> d!1634333 m!6110956))

(declare-fun m!6110958 () Bool)

(assert (=> d!1634333 m!6110958))

(assert (=> d!1634333 m!6108154))

(assert (=> d!1634333 m!6108512))

(assert (=> b!5066429 d!1634333))

(declare-fun d!1634335 () Bool)

(declare-fun res!2157673 () Bool)

(declare-fun e!3162329 () Bool)

(assert (=> d!1634335 (=> (not res!2157673) (not e!3162329))))

(assert (=> d!1634335 (= res!2157673 (<= (size!39074 (list!18990 (xs!18914 (right!43146 (left!42816 xs!286))))) 512))))

(assert (=> d!1634335 (= (inv!77560 (right!43146 (left!42816 xs!286))) e!3162329)))

(declare-fun b!5067619 () Bool)

(declare-fun res!2157674 () Bool)

(assert (=> b!5067619 (=> (not res!2157674) (not e!3162329))))

(assert (=> b!5067619 (= res!2157674 (= (csize!31359 (right!43146 (left!42816 xs!286))) (size!39074 (list!18990 (xs!18914 (right!43146 (left!42816 xs!286)))))))))

(declare-fun b!5067620 () Bool)

(assert (=> b!5067620 (= e!3162329 (and (> (csize!31359 (right!43146 (left!42816 xs!286))) 0) (<= (csize!31359 (right!43146 (left!42816 xs!286))) 512)))))

(assert (= (and d!1634335 res!2157673) b!5067619))

(assert (= (and b!5067619 res!2157674) b!5067620))

(declare-fun m!6110960 () Bool)

(assert (=> d!1634335 m!6110960))

(assert (=> d!1634335 m!6110960))

(declare-fun m!6110962 () Bool)

(assert (=> d!1634335 m!6110962))

(assert (=> b!5067619 m!6110960))

(assert (=> b!5067619 m!6110960))

(assert (=> b!5067619 m!6110962))

(assert (=> b!5066540 d!1634335))

(assert (=> b!5066503 d!1633461))

(assert (=> b!5066503 d!1633465))

(declare-fun d!1634337 () Bool)

(declare-fun c!870027 () Bool)

(assert (=> d!1634337 (= c!870027 ((_ is Node!15564) (left!42816 (left!42816 (right!43146 xs!286)))))))

(declare-fun e!3162330 () Bool)

(assert (=> d!1634337 (= (inv!77556 (left!42816 (left!42816 (right!43146 xs!286)))) e!3162330)))

(declare-fun b!5067621 () Bool)

(assert (=> b!5067621 (= e!3162330 (inv!77559 (left!42816 (left!42816 (right!43146 xs!286)))))))

(declare-fun b!5067622 () Bool)

(declare-fun e!3162331 () Bool)

(assert (=> b!5067622 (= e!3162330 e!3162331)))

(declare-fun res!2157675 () Bool)

(assert (=> b!5067622 (= res!2157675 (not ((_ is Leaf!25851) (left!42816 (left!42816 (right!43146 xs!286))))))))

(assert (=> b!5067622 (=> res!2157675 e!3162331)))

(declare-fun b!5067623 () Bool)

(assert (=> b!5067623 (= e!3162331 (inv!77560 (left!42816 (left!42816 (right!43146 xs!286)))))))

(assert (= (and d!1634337 c!870027) b!5067621))

(assert (= (and d!1634337 (not c!870027)) b!5067622))

(assert (= (and b!5067622 (not res!2157675)) b!5067623))

(declare-fun m!6110964 () Bool)

(assert (=> b!5067621 m!6110964))

(declare-fun m!6110966 () Bool)

(assert (=> b!5067623 m!6110966))

(assert (=> b!5066738 d!1634337))

(declare-fun d!1634339 () Bool)

(declare-fun c!870028 () Bool)

(assert (=> d!1634339 (= c!870028 ((_ is Node!15564) (right!43146 (left!42816 (right!43146 xs!286)))))))

(declare-fun e!3162332 () Bool)

(assert (=> d!1634339 (= (inv!77556 (right!43146 (left!42816 (right!43146 xs!286)))) e!3162332)))

(declare-fun b!5067624 () Bool)

(assert (=> b!5067624 (= e!3162332 (inv!77559 (right!43146 (left!42816 (right!43146 xs!286)))))))

(declare-fun b!5067625 () Bool)

(declare-fun e!3162333 () Bool)

(assert (=> b!5067625 (= e!3162332 e!3162333)))

(declare-fun res!2157676 () Bool)

(assert (=> b!5067625 (= res!2157676 (not ((_ is Leaf!25851) (right!43146 (left!42816 (right!43146 xs!286))))))))

(assert (=> b!5067625 (=> res!2157676 e!3162333)))

(declare-fun b!5067626 () Bool)

(assert (=> b!5067626 (= e!3162333 (inv!77560 (right!43146 (left!42816 (right!43146 xs!286)))))))

(assert (= (and d!1634339 c!870028) b!5067624))

(assert (= (and d!1634339 (not c!870028)) b!5067625))

(assert (= (and b!5067625 (not res!2157676)) b!5067626))

(declare-fun m!6110968 () Bool)

(assert (=> b!5067624 m!6110968))

(declare-fun m!6110970 () Bool)

(assert (=> b!5067626 m!6110970))

(assert (=> b!5066738 d!1634339))

(declare-fun d!1634341 () Bool)

(declare-fun lt!2089109 () Bool)

(assert (=> d!1634341 (= lt!2089109 (isEmpty!31632 (list!18989 (right!43146 (left!42816 lt!2088868)))))))

(assert (=> d!1634341 (= lt!2089109 (= (size!39075 (right!43146 (left!42816 lt!2088868))) 0))))

(assert (=> d!1634341 (= (isEmpty!31631 (right!43146 (left!42816 lt!2088868))) lt!2089109)))

(declare-fun bs!1189954 () Bool)

(assert (= bs!1189954 d!1634341))

(assert (=> bs!1189954 m!6108516))

(assert (=> bs!1189954 m!6108516))

(declare-fun m!6110972 () Bool)

(assert (=> bs!1189954 m!6110972))

(declare-fun m!6110974 () Bool)

(assert (=> bs!1189954 m!6110974))

(assert (=> b!5066660 d!1634341))

(declare-fun d!1634343 () Bool)

(declare-fun lt!2089110 () Int)

(assert (=> d!1634343 (>= lt!2089110 0)))

(declare-fun e!3162334 () Int)

(assert (=> d!1634343 (= lt!2089110 e!3162334)))

(declare-fun c!870029 () Bool)

(assert (=> d!1634343 (= c!870029 ((_ is Nil!58434) lt!2088942))))

(assert (=> d!1634343 (= (size!39074 lt!2088942) lt!2089110)))

(declare-fun b!5067627 () Bool)

(assert (=> b!5067627 (= e!3162334 0)))

(declare-fun b!5067628 () Bool)

(assert (=> b!5067628 (= e!3162334 (+ 1 (size!39074 (t!371291 lt!2088942))))))

(assert (= (and d!1634343 c!870029) b!5067627))

(assert (= (and d!1634343 (not c!870029)) b!5067628))

(declare-fun m!6110976 () Bool)

(assert (=> b!5067628 m!6110976))

(assert (=> b!5066596 d!1634343))

(assert (=> b!5066596 d!1634047))

(assert (=> b!5066596 d!1633585))

(declare-fun d!1634345 () Bool)

(declare-fun lt!2089111 () Int)

(assert (=> d!1634345 (>= lt!2089111 0)))

(declare-fun e!3162335 () Int)

(assert (=> d!1634345 (= lt!2089111 e!3162335)))

(declare-fun c!870030 () Bool)

(assert (=> d!1634345 (= c!870030 ((_ is Nil!58434) lt!2088938))))

(assert (=> d!1634345 (= (size!39074 lt!2088938) lt!2089111)))

(declare-fun b!5067629 () Bool)

(assert (=> b!5067629 (= e!3162335 0)))

(declare-fun b!5067630 () Bool)

(assert (=> b!5067630 (= e!3162335 (+ 1 (size!39074 (t!371291 lt!2088938))))))

(assert (= (and d!1634345 c!870030) b!5067629))

(assert (= (and d!1634345 (not c!870030)) b!5067630))

(declare-fun m!6110978 () Bool)

(assert (=> b!5067630 m!6110978))

(assert (=> b!5066573 d!1634345))

(assert (=> b!5066573 d!1634001))

(assert (=> b!5066573 d!1633889))

(declare-fun d!1634347 () Bool)

(declare-fun res!2157677 () Bool)

(declare-fun e!3162336 () Bool)

(assert (=> d!1634347 (=> (not res!2157677) (not e!3162336))))

(assert (=> d!1634347 (= res!2157677 (= (csize!31358 (left!42816 (left!42816 ys!41))) (+ (size!39075 (left!42816 (left!42816 (left!42816 ys!41)))) (size!39075 (right!43146 (left!42816 (left!42816 ys!41)))))))))

(assert (=> d!1634347 (= (inv!77559 (left!42816 (left!42816 ys!41))) e!3162336)))

(declare-fun b!5067631 () Bool)

(declare-fun res!2157678 () Bool)

(assert (=> b!5067631 (=> (not res!2157678) (not e!3162336))))

(assert (=> b!5067631 (= res!2157678 (and (not (= (left!42816 (left!42816 (left!42816 ys!41))) Empty!15564)) (not (= (right!43146 (left!42816 (left!42816 ys!41))) Empty!15564))))))

(declare-fun b!5067632 () Bool)

(declare-fun res!2157679 () Bool)

(assert (=> b!5067632 (=> (not res!2157679) (not e!3162336))))

(assert (=> b!5067632 (= res!2157679 (= (cheight!15775 (left!42816 (left!42816 ys!41))) (+ (max!0 (height!2141 (left!42816 (left!42816 (left!42816 ys!41)))) (height!2141 (right!43146 (left!42816 (left!42816 ys!41))))) 1)))))

(declare-fun b!5067633 () Bool)

(assert (=> b!5067633 (= e!3162336 (<= 0 (cheight!15775 (left!42816 (left!42816 ys!41)))))))

(assert (= (and d!1634347 res!2157677) b!5067631))

(assert (= (and b!5067631 res!2157678) b!5067632))

(assert (= (and b!5067632 res!2157679) b!5067633))

(declare-fun m!6110980 () Bool)

(assert (=> d!1634347 m!6110980))

(declare-fun m!6110982 () Bool)

(assert (=> d!1634347 m!6110982))

(assert (=> b!5067632 m!6110302))

(assert (=> b!5067632 m!6110304))

(assert (=> b!5067632 m!6110302))

(assert (=> b!5067632 m!6110304))

(declare-fun m!6110984 () Bool)

(assert (=> b!5067632 m!6110984))

(assert (=> b!5066440 d!1634347))

(declare-fun d!1634349 () Bool)

(assert (=> d!1634349 (= (isEmpty!31632 (list!18989 (left!42816 lt!2088868))) ((_ is Nil!58434) (list!18989 (left!42816 lt!2088868))))))

(assert (=> d!1633615 d!1634349))

(assert (=> d!1633615 d!1633441))

(declare-fun d!1634351 () Bool)

(declare-fun lt!2089112 () Int)

(assert (=> d!1634351 (= lt!2089112 (size!39074 (list!18989 (left!42816 lt!2088868))))))

(assert (=> d!1634351 (= lt!2089112 (ite ((_ is Empty!15564) (left!42816 lt!2088868)) 0 (ite ((_ is Leaf!25851) (left!42816 lt!2088868)) (csize!31359 (left!42816 lt!2088868)) (csize!31358 (left!42816 lt!2088868)))))))

(assert (=> d!1634351 (= (size!39075 (left!42816 lt!2088868)) lt!2089112)))

(declare-fun bs!1189955 () Bool)

(assert (= bs!1189955 d!1634351))

(assert (=> bs!1189955 m!6108152))

(assert (=> bs!1189955 m!6108152))

(assert (=> bs!1189955 m!6108502))

(assert (=> d!1633615 d!1634351))

(assert (=> b!5066632 d!1634121))

(assert (=> b!5066632 d!1634123))

(assert (=> d!1633533 d!1633463))

(assert (=> d!1633533 d!1634025))

(declare-fun d!1634353 () Bool)

(declare-fun c!870031 () Bool)

(assert (=> d!1634353 (= c!870031 ((_ is Nil!58434) lt!2088920))))

(declare-fun e!3162337 () (InoxSet T!105118))

(assert (=> d!1634353 (= (content!10417 lt!2088920) e!3162337)))

(declare-fun b!5067634 () Bool)

(assert (=> b!5067634 (= e!3162337 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067635 () Bool)

(assert (=> b!5067635 (= e!3162337 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 lt!2088920) true) (content!10417 (t!371291 lt!2088920))))))

(assert (= (and d!1634353 c!870031) b!5067634))

(assert (= (and d!1634353 (not c!870031)) b!5067635))

(declare-fun m!6110986 () Bool)

(assert (=> b!5067635 m!6110986))

(declare-fun m!6110988 () Bool)

(assert (=> b!5067635 m!6110988))

(assert (=> d!1633431 d!1634353))

(assert (=> d!1633431 d!1634305))

(declare-fun d!1634355 () Bool)

(declare-fun c!870032 () Bool)

(assert (=> d!1634355 (= c!870032 ((_ is Nil!58434) (list!18989 (right!43146 xs!286))))))

(declare-fun e!3162338 () (InoxSet T!105118))

(assert (=> d!1634355 (= (content!10417 (list!18989 (right!43146 xs!286))) e!3162338)))

(declare-fun b!5067636 () Bool)

(assert (=> b!5067636 (= e!3162338 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067637 () Bool)

(assert (=> b!5067637 (= e!3162338 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 (right!43146 xs!286))) true) (content!10417 (t!371291 (list!18989 (right!43146 xs!286))))))))

(assert (= (and d!1634355 c!870032) b!5067636))

(assert (= (and d!1634355 (not c!870032)) b!5067637))

(declare-fun m!6110990 () Bool)

(assert (=> b!5067637 m!6110990))

(declare-fun m!6110992 () Bool)

(assert (=> b!5067637 m!6110992))

(assert (=> d!1633431 d!1634355))

(declare-fun d!1634357 () Bool)

(declare-fun c!870033 () Bool)

(assert (=> d!1634357 (= c!870033 ((_ is Nil!58434) lt!2088922))))

(declare-fun e!3162339 () (InoxSet T!105118))

(assert (=> d!1634357 (= (content!10417 lt!2088922) e!3162339)))

(declare-fun b!5067638 () Bool)

(assert (=> b!5067638 (= e!3162339 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067639 () Bool)

(assert (=> b!5067639 (= e!3162339 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 lt!2088922) true) (content!10417 (t!371291 lt!2088922))))))

(assert (= (and d!1634357 c!870033) b!5067638))

(assert (= (and d!1634357 (not c!870033)) b!5067639))

(declare-fun m!6110994 () Bool)

(assert (=> b!5067639 m!6110994))

(declare-fun m!6110996 () Bool)

(assert (=> b!5067639 m!6110996))

(assert (=> d!1633439 d!1634357))

(declare-fun d!1634359 () Bool)

(declare-fun c!870034 () Bool)

(assert (=> d!1634359 (= c!870034 ((_ is Nil!58434) (list!18989 (left!42816 lt!2088868))))))

(declare-fun e!3162340 () (InoxSet T!105118))

(assert (=> d!1634359 (= (content!10417 (list!18989 (left!42816 lt!2088868))) e!3162340)))

(declare-fun b!5067640 () Bool)

(assert (=> b!5067640 (= e!3162340 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067641 () Bool)

(assert (=> b!5067641 (= e!3162340 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 (left!42816 lt!2088868))) true) (content!10417 (t!371291 (list!18989 (left!42816 lt!2088868))))))))

(assert (= (and d!1634359 c!870034) b!5067640))

(assert (= (and d!1634359 (not c!870034)) b!5067641))

(declare-fun m!6110998 () Bool)

(assert (=> b!5067641 m!6110998))

(assert (=> b!5067641 m!6110958))

(assert (=> d!1633439 d!1634359))

(declare-fun d!1634361 () Bool)

(declare-fun c!870035 () Bool)

(assert (=> d!1634361 (= c!870035 ((_ is Nil!58434) (list!18989 (right!43146 lt!2088868))))))

(declare-fun e!3162341 () (InoxSet T!105118))

(assert (=> d!1634361 (= (content!10417 (list!18989 (right!43146 lt!2088868))) e!3162341)))

(declare-fun b!5067642 () Bool)

(assert (=> b!5067642 (= e!3162341 ((as const (Array T!105118 Bool)) false))))

(declare-fun b!5067643 () Bool)

(assert (=> b!5067643 (= e!3162341 ((_ map or) (store ((as const (Array T!105118 Bool)) false) (h!64882 (list!18989 (right!43146 lt!2088868))) true) (content!10417 (t!371291 (list!18989 (right!43146 lt!2088868))))))))

(assert (= (and d!1634361 c!870035) b!5067642))

(assert (= (and d!1634361 (not c!870035)) b!5067643))

(declare-fun m!6111000 () Bool)

(assert (=> b!5067643 m!6111000))

(declare-fun m!6111002 () Bool)

(assert (=> b!5067643 m!6111002))

(assert (=> d!1633439 d!1634361))

(declare-fun b!5067644 () Bool)

(declare-fun res!2157682 () Bool)

(declare-fun e!3162343 () Bool)

(assert (=> b!5067644 (=> (not res!2157682) (not e!3162343))))

(assert (=> b!5067644 (= res!2157682 (isBalanced!4426 (left!42816 (right!43146 (right!43146 lt!2088868)))))))

(declare-fun b!5067645 () Bool)

(declare-fun e!3162342 () Bool)

(assert (=> b!5067645 (= e!3162342 e!3162343)))

(declare-fun res!2157685 () Bool)

(assert (=> b!5067645 (=> (not res!2157685) (not e!3162343))))

(assert (=> b!5067645 (= res!2157685 (<= (- 1) (- (height!2141 (left!42816 (right!43146 (right!43146 lt!2088868)))) (height!2141 (right!43146 (right!43146 (right!43146 lt!2088868)))))))))

(declare-fun b!5067646 () Bool)

(declare-fun res!2157680 () Bool)

(assert (=> b!5067646 (=> (not res!2157680) (not e!3162343))))

(assert (=> b!5067646 (= res!2157680 (not (isEmpty!31631 (left!42816 (right!43146 (right!43146 lt!2088868))))))))

(declare-fun b!5067648 () Bool)

(declare-fun res!2157684 () Bool)

(assert (=> b!5067648 (=> (not res!2157684) (not e!3162343))))

(assert (=> b!5067648 (= res!2157684 (<= (- (height!2141 (left!42816 (right!43146 (right!43146 lt!2088868)))) (height!2141 (right!43146 (right!43146 (right!43146 lt!2088868))))) 1))))

(declare-fun b!5067649 () Bool)

(assert (=> b!5067649 (= e!3162343 (not (isEmpty!31631 (right!43146 (right!43146 (right!43146 lt!2088868))))))))

(declare-fun b!5067647 () Bool)

(declare-fun res!2157681 () Bool)

(assert (=> b!5067647 (=> (not res!2157681) (not e!3162343))))

(assert (=> b!5067647 (= res!2157681 (isBalanced!4426 (right!43146 (right!43146 (right!43146 lt!2088868)))))))

(declare-fun d!1634363 () Bool)

(declare-fun res!2157683 () Bool)

(assert (=> d!1634363 (=> res!2157683 e!3162342)))

(assert (=> d!1634363 (= res!2157683 (not ((_ is Node!15564) (right!43146 (right!43146 lt!2088868)))))))

(assert (=> d!1634363 (= (isBalanced!4426 (right!43146 (right!43146 lt!2088868))) e!3162342)))

(assert (= (and d!1634363 (not res!2157683)) b!5067645))

(assert (= (and b!5067645 res!2157685) b!5067648))

(assert (= (and b!5067648 res!2157684) b!5067644))

(assert (= (and b!5067644 res!2157682) b!5067647))

(assert (= (and b!5067647 res!2157681) b!5067646))

(assert (= (and b!5067646 res!2157680) b!5067649))

(declare-fun m!6111004 () Bool)

(assert (=> b!5067646 m!6111004))

(declare-fun m!6111006 () Bool)

(assert (=> b!5067644 m!6111006))

(declare-fun m!6111008 () Bool)

(assert (=> b!5067649 m!6111008))

(declare-fun m!6111010 () Bool)

(assert (=> b!5067648 m!6111010))

(declare-fun m!6111012 () Bool)

(assert (=> b!5067648 m!6111012))

(declare-fun m!6111014 () Bool)

(assert (=> b!5067647 m!6111014))

(assert (=> b!5067645 m!6111010))

(assert (=> b!5067645 m!6111012))

(assert (=> b!5066546 d!1634363))

(assert (=> b!5066583 d!1634145))

(assert (=> b!5066583 d!1634147))

(declare-fun b!5067652 () Bool)

(declare-fun res!2157687 () Bool)

(declare-fun e!3162344 () Bool)

(assert (=> b!5067652 (=> (not res!2157687) (not e!3162344))))

(declare-fun lt!2089113 () List!58558)

(assert (=> b!5067652 (= res!2157687 (= (size!39074 lt!2089113) (+ (size!39074 (list!18989 (left!42816 (left!42816 xs!286)))) (size!39074 (list!18989 (right!43146 (left!42816 xs!286)))))))))

(declare-fun b!5067653 () Bool)

(assert (=> b!5067653 (= e!3162344 (or (not (= (list!18989 (right!43146 (left!42816 xs!286))) Nil!58434)) (= lt!2089113 (list!18989 (left!42816 (left!42816 xs!286))))))))

(declare-fun b!5067651 () Bool)

(declare-fun e!3162345 () List!58558)

(assert (=> b!5067651 (= e!3162345 (Cons!58434 (h!64882 (list!18989 (left!42816 (left!42816 xs!286)))) (++!12789 (t!371291 (list!18989 (left!42816 (left!42816 xs!286)))) (list!18989 (right!43146 (left!42816 xs!286))))))))

(declare-fun b!5067650 () Bool)

(assert (=> b!5067650 (= e!3162345 (list!18989 (right!43146 (left!42816 xs!286))))))

(declare-fun d!1634365 () Bool)

(assert (=> d!1634365 e!3162344))

(declare-fun res!2157686 () Bool)

(assert (=> d!1634365 (=> (not res!2157686) (not e!3162344))))

(assert (=> d!1634365 (= res!2157686 (= (content!10417 lt!2089113) ((_ map or) (content!10417 (list!18989 (left!42816 (left!42816 xs!286)))) (content!10417 (list!18989 (right!43146 (left!42816 xs!286)))))))))

(assert (=> d!1634365 (= lt!2089113 e!3162345)))

(declare-fun c!870036 () Bool)

(assert (=> d!1634365 (= c!870036 ((_ is Nil!58434) (list!18989 (left!42816 (left!42816 xs!286)))))))

(assert (=> d!1634365 (= (++!12789 (list!18989 (left!42816 (left!42816 xs!286))) (list!18989 (right!43146 (left!42816 xs!286)))) lt!2089113)))

(assert (= (and d!1634365 c!870036) b!5067650))

(assert (= (and d!1634365 (not c!870036)) b!5067651))

(assert (= (and d!1634365 res!2157686) b!5067652))

(assert (= (and b!5067652 res!2157687) b!5067653))

(declare-fun m!6111016 () Bool)

(assert (=> b!5067652 m!6111016))

(assert (=> b!5067652 m!6108442))

(assert (=> b!5067652 m!6110650))

(assert (=> b!5067652 m!6108444))

(assert (=> b!5067652 m!6110652))

(assert (=> b!5067651 m!6108444))

(declare-fun m!6111018 () Bool)

(assert (=> b!5067651 m!6111018))

(declare-fun m!6111020 () Bool)

(assert (=> d!1634365 m!6111020))

(assert (=> d!1634365 m!6108442))

(declare-fun m!6111022 () Bool)

(assert (=> d!1634365 m!6111022))

(assert (=> d!1634365 m!6108444))

(declare-fun m!6111024 () Bool)

(assert (=> d!1634365 m!6111024))

(assert (=> b!5066401 d!1634365))

(declare-fun d!1634367 () Bool)

(declare-fun c!870037 () Bool)

(assert (=> d!1634367 (= c!870037 ((_ is Empty!15564) (left!42816 (left!42816 xs!286))))))

(declare-fun e!3162346 () List!58558)

(assert (=> d!1634367 (= (list!18989 (left!42816 (left!42816 xs!286))) e!3162346)))

(declare-fun b!5067655 () Bool)

(declare-fun e!3162347 () List!58558)

(assert (=> b!5067655 (= e!3162346 e!3162347)))

(declare-fun c!870038 () Bool)

(assert (=> b!5067655 (= c!870038 ((_ is Leaf!25851) (left!42816 (left!42816 xs!286))))))

(declare-fun b!5067654 () Bool)

(assert (=> b!5067654 (= e!3162346 Nil!58434)))

(declare-fun b!5067657 () Bool)

(assert (=> b!5067657 (= e!3162347 (++!12789 (list!18989 (left!42816 (left!42816 (left!42816 xs!286)))) (list!18989 (right!43146 (left!42816 (left!42816 xs!286))))))))

(declare-fun b!5067656 () Bool)

(assert (=> b!5067656 (= e!3162347 (list!18990 (xs!18914 (left!42816 (left!42816 xs!286)))))))

(assert (= (and d!1634367 c!870037) b!5067654))

(assert (= (and d!1634367 (not c!870037)) b!5067655))

(assert (= (and b!5067655 c!870038) b!5067656))

(assert (= (and b!5067655 (not c!870038)) b!5067657))

(declare-fun m!6111026 () Bool)

(assert (=> b!5067657 m!6111026))

(declare-fun m!6111028 () Bool)

(assert (=> b!5067657 m!6111028))

(assert (=> b!5067657 m!6111026))

(assert (=> b!5067657 m!6111028))

(declare-fun m!6111030 () Bool)

(assert (=> b!5067657 m!6111030))

(assert (=> b!5067656 m!6109746))

(assert (=> b!5066401 d!1634367))

(declare-fun d!1634369 () Bool)

(declare-fun c!870039 () Bool)

(assert (=> d!1634369 (= c!870039 ((_ is Empty!15564) (right!43146 (left!42816 xs!286))))))

(declare-fun e!3162348 () List!58558)

(assert (=> d!1634369 (= (list!18989 (right!43146 (left!42816 xs!286))) e!3162348)))

(declare-fun b!5067659 () Bool)

(declare-fun e!3162349 () List!58558)

(assert (=> b!5067659 (= e!3162348 e!3162349)))

(declare-fun c!870040 () Bool)

(assert (=> b!5067659 (= c!870040 ((_ is Leaf!25851) (right!43146 (left!42816 xs!286))))))

(declare-fun b!5067658 () Bool)

(assert (=> b!5067658 (= e!3162348 Nil!58434)))

(declare-fun b!5067661 () Bool)

(assert (=> b!5067661 (= e!3162349 (++!12789 (list!18989 (left!42816 (right!43146 (left!42816 xs!286)))) (list!18989 (right!43146 (right!43146 (left!42816 xs!286))))))))

(declare-fun b!5067660 () Bool)

(assert (=> b!5067660 (= e!3162349 (list!18990 (xs!18914 (right!43146 (left!42816 xs!286)))))))

(assert (= (and d!1634369 c!870039) b!5067658))

(assert (= (and d!1634369 (not c!870039)) b!5067659))

(assert (= (and b!5067659 c!870040) b!5067660))

(assert (= (and b!5067659 (not c!870040)) b!5067661))

(declare-fun m!6111032 () Bool)

(assert (=> b!5067661 m!6111032))

(declare-fun m!6111034 () Bool)

(assert (=> b!5067661 m!6111034))

(assert (=> b!5067661 m!6111032))

(assert (=> b!5067661 m!6111034))

(declare-fun m!6111036 () Bool)

(assert (=> b!5067661 m!6111036))

(assert (=> b!5067660 m!6110960))

(assert (=> b!5066401 d!1634369))

(declare-fun d!1634371 () Bool)

(declare-fun lt!2089114 () Int)

(assert (=> d!1634371 (>= lt!2089114 0)))

(declare-fun e!3162350 () Int)

(assert (=> d!1634371 (= lt!2089114 e!3162350)))

(declare-fun c!870041 () Bool)

(assert (=> d!1634371 (= c!870041 ((_ is Nil!58434) (t!371291 (innerList!15652 (xs!18914 ys!41)))))))

(assert (=> d!1634371 (= (size!39074 (t!371291 (innerList!15652 (xs!18914 ys!41)))) lt!2089114)))

(declare-fun b!5067662 () Bool)

(assert (=> b!5067662 (= e!3162350 0)))

(declare-fun b!5067663 () Bool)

(assert (=> b!5067663 (= e!3162350 (+ 1 (size!39074 (t!371291 (t!371291 (innerList!15652 (xs!18914 ys!41)))))))))

(assert (= (and d!1634371 c!870041) b!5067662))

(assert (= (and d!1634371 (not c!870041)) b!5067663))

(declare-fun m!6111038 () Bool)

(assert (=> b!5067663 m!6111038))

(assert (=> b!5066411 d!1634371))

(assert (=> b!5066533 d!1633949))

(assert (=> b!5066533 d!1633951))

(assert (=> d!1633519 d!1634059))

(assert (=> d!1633519 d!1634061))

(assert (=> b!5066722 d!1634077))

(assert (=> b!5066722 d!1634079))

(declare-fun d!1634373 () Bool)

(assert (=> d!1634373 (= (inv!77555 (xs!18914 (right!43146 (left!42816 xs!286)))) (<= (size!39074 (innerList!15652 (xs!18914 (right!43146 (left!42816 xs!286))))) 2147483647))))

(declare-fun bs!1189956 () Bool)

(assert (= bs!1189956 d!1634373))

(declare-fun m!6111040 () Bool)

(assert (=> bs!1189956 m!6111040))

(assert (=> b!5066765 d!1634373))

(assert (=> b!5066734 d!1633931))

(assert (=> b!5066734 d!1633933))

(assert (=> b!5066404 d!1633951))

(declare-fun d!1634375 () Bool)

(declare-fun lt!2089115 () Int)

(assert (=> d!1634375 (>= lt!2089115 0)))

(declare-fun e!3162351 () Int)

(assert (=> d!1634375 (= lt!2089115 e!3162351)))

(declare-fun c!870042 () Bool)

(assert (=> d!1634375 (= c!870042 ((_ is Nil!58434) (innerList!15652 (xs!18914 (right!43146 ys!41)))))))

(assert (=> d!1634375 (= (size!39074 (innerList!15652 (xs!18914 (right!43146 ys!41)))) lt!2089115)))

(declare-fun b!5067664 () Bool)

(assert (=> b!5067664 (= e!3162351 0)))

(declare-fun b!5067665 () Bool)

(assert (=> b!5067665 (= e!3162351 (+ 1 (size!39074 (t!371291 (innerList!15652 (xs!18914 (right!43146 ys!41)))))))))

(assert (= (and d!1634375 c!870042) b!5067664))

(assert (= (and d!1634375 (not c!870042)) b!5067665))

(declare-fun m!6111042 () Bool)

(assert (=> b!5067665 m!6111042))

(assert (=> d!1633487 d!1634375))

(assert (=> d!1633427 d!1633991))

(assert (=> d!1633427 d!1633623))

(declare-fun bm!353157 () Bool)

(declare-fun call!353164 () List!58558)

(declare-fun call!353165 () List!58558)

(assert (=> bm!353157 (= call!353164 (++!12789 call!353165 (list!18989 ys!41)))))

(declare-fun bm!353158 () Bool)

(declare-fun call!353163 () List!58558)

(assert (=> bm!353158 (= call!353163 (++!12789 (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)))))

(declare-fun bm!353159 () Bool)

(declare-fun call!353162 () List!58558)

(assert (=> bm!353159 (= call!353162 (++!12789 (t!371291 (list!18989 (left!42816 (right!43146 xs!286)))) call!353163))))

(declare-fun b!5067667 () Bool)

(declare-fun e!3162352 () Bool)

(assert (=> b!5067667 (= e!3162352 (= call!353164 call!353162))))

(declare-fun bm!353160 () Bool)

(assert (=> bm!353160 (= call!353165 (++!12789 (t!371291 (list!18989 (left!42816 (right!43146 xs!286)))) (list!18989 (right!43146 (right!43146 xs!286)))))))

(declare-fun d!1634377 () Bool)

(assert (=> d!1634377 e!3162352))

(declare-fun c!870043 () Bool)

(assert (=> d!1634377 (= c!870043 ((_ is Nil!58434) (t!371291 (list!18989 (left!42816 (right!43146 xs!286))))))))

(assert (=> d!1634377 (= (appendAssoc!301 (t!371291 (list!18989 (left!42816 (right!43146 xs!286)))) (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)) true)))

(declare-fun b!5067666 () Bool)

(assert (=> b!5067666 (= e!3162352 (= call!353164 call!353162))))

(declare-fun lt!2089116 () Bool)

(assert (=> b!5067666 (= lt!2089116 (appendAssoc!301 (t!371291 (t!371291 (list!18989 (left!42816 (right!43146 xs!286))))) (list!18989 (right!43146 (right!43146 xs!286))) (list!18989 ys!41)))))

(assert (= (and d!1634377 c!870043) b!5067667))

(assert (= (and d!1634377 (not c!870043)) b!5067666))

(assert (= (or b!5067667 b!5067666) bm!353160))

(assert (= (or b!5067667 b!5067666) bm!353158))

(assert (= (or b!5067667 b!5067666) bm!353159))

(assert (= (or b!5067667 b!5067666) bm!353157))

(declare-fun m!6111044 () Bool)

(assert (=> bm!353159 m!6111044))

(assert (=> bm!353160 m!6108094))

(assert (=> bm!353160 m!6109686))

(assert (=> bm!353158 m!6108094))

(assert (=> bm!353158 m!6107974))

(assert (=> bm!353158 m!6108110))

(assert (=> b!5067666 m!6108094))

(assert (=> b!5067666 m!6107974))

(declare-fun m!6111046 () Bool)

(assert (=> b!5067666 m!6111046))

(assert (=> bm!353157 m!6107974))

(declare-fun m!6111048 () Bool)

(assert (=> bm!353157 m!6111048))

(assert (=> b!5066554 d!1634377))

(declare-fun b!5067670 () Bool)

(declare-fun res!2157689 () Bool)

(declare-fun e!3162353 () Bool)

(assert (=> b!5067670 (=> (not res!2157689) (not e!3162353))))

(declare-fun lt!2089117 () List!58558)

(assert (=> b!5067670 (= res!2157689 (= (size!39074 lt!2089117) (+ (size!39074 (list!18989 (left!42816 lt!2088908))) (size!39074 (list!18989 (right!43146 lt!2088908))))))))

(declare-fun b!5067671 () Bool)

(assert (=> b!5067671 (= e!3162353 (or (not (= (list!18989 (right!43146 lt!2088908)) Nil!58434)) (= lt!2089117 (list!18989 (left!42816 lt!2088908)))))))

(declare-fun b!5067669 () Bool)

(declare-fun e!3162354 () List!58558)

(assert (=> b!5067669 (= e!3162354 (Cons!58434 (h!64882 (list!18989 (left!42816 lt!2088908))) (++!12789 (t!371291 (list!18989 (left!42816 lt!2088908))) (list!18989 (right!43146 lt!2088908)))))))

(declare-fun b!5067668 () Bool)

(assert (=> b!5067668 (= e!3162354 (list!18989 (right!43146 lt!2088908)))))

(declare-fun d!1634379 () Bool)

(assert (=> d!1634379 e!3162353))

(declare-fun res!2157688 () Bool)

(assert (=> d!1634379 (=> (not res!2157688) (not e!3162353))))

(assert (=> d!1634379 (= res!2157688 (= (content!10417 lt!2089117) ((_ map or) (content!10417 (list!18989 (left!42816 lt!2088908))) (content!10417 (list!18989 (right!43146 lt!2088908))))))))

(assert (=> d!1634379 (= lt!2089117 e!3162354)))

(declare-fun c!870044 () Bool)

(assert (=> d!1634379 (= c!870044 ((_ is Nil!58434) (list!18989 (left!42816 lt!2088908))))))

(assert (=> d!1634379 (= (++!12789 (list!18989 (left!42816 lt!2088908)) (list!18989 (right!43146 lt!2088908))) lt!2089117)))

(assert (= (and d!1634379 c!870044) b!5067668))

(assert (= (and d!1634379 (not c!870044)) b!5067669))

(assert (= (and d!1634379 res!2157688) b!5067670))

(assert (= (and b!5067670 res!2157689) b!5067671))

(declare-fun m!6111050 () Bool)

(assert (=> b!5067670 m!6111050))

(assert (=> b!5067670 m!6108474))

(declare-fun m!6111052 () Bool)

(assert (=> b!5067670 m!6111052))

(assert (=> b!5067670 m!6108476))

(declare-fun m!6111054 () Bool)

(assert (=> b!5067670 m!6111054))

(assert (=> b!5067669 m!6108476))

(declare-fun m!6111056 () Bool)

(assert (=> b!5067669 m!6111056))

(declare-fun m!6111058 () Bool)

(assert (=> d!1634379 m!6111058))

(assert (=> d!1634379 m!6108474))

(declare-fun m!6111060 () Bool)

(assert (=> d!1634379 m!6111060))

(assert (=> d!1634379 m!6108476))

(declare-fun m!6111062 () Bool)

(assert (=> d!1634379 m!6111062))

(assert (=> b!5066419 d!1634379))

(declare-fun d!1634381 () Bool)

(declare-fun c!870045 () Bool)

(assert (=> d!1634381 (= c!870045 ((_ is Empty!15564) (left!42816 lt!2088908)))))

(declare-fun e!3162355 () List!58558)

(assert (=> d!1634381 (= (list!18989 (left!42816 lt!2088908)) e!3162355)))

(declare-fun b!5067673 () Bool)

(declare-fun e!3162356 () List!58558)

(assert (=> b!5067673 (= e!3162355 e!3162356)))

(declare-fun c!870046 () Bool)

(assert (=> b!5067673 (= c!870046 ((_ is Leaf!25851) (left!42816 lt!2088908)))))

(declare-fun b!5067672 () Bool)

(assert (=> b!5067672 (= e!3162355 Nil!58434)))

(declare-fun b!5067675 () Bool)

(assert (=> b!5067675 (= e!3162356 (++!12789 (list!18989 (left!42816 (left!42816 lt!2088908))) (list!18989 (right!43146 (left!42816 lt!2088908)))))))

(declare-fun b!5067674 () Bool)

(assert (=> b!5067674 (= e!3162356 (list!18990 (xs!18914 (left!42816 lt!2088908))))))

(assert (= (and d!1634381 c!870045) b!5067672))

(assert (= (and d!1634381 (not c!870045)) b!5067673))

(assert (= (and b!5067673 c!870046) b!5067674))

(assert (= (and b!5067673 (not c!870046)) b!5067675))

(declare-fun m!6111064 () Bool)

(assert (=> b!5067675 m!6111064))

(declare-fun m!6111066 () Bool)

(assert (=> b!5067675 m!6111066))

(assert (=> b!5067675 m!6111064))

(assert (=> b!5067675 m!6111066))

(declare-fun m!6111068 () Bool)

(assert (=> b!5067675 m!6111068))

(declare-fun m!6111070 () Bool)

(assert (=> b!5067674 m!6111070))

(assert (=> b!5066419 d!1634381))

(declare-fun d!1634383 () Bool)

(declare-fun c!870047 () Bool)

(assert (=> d!1634383 (= c!870047 ((_ is Empty!15564) (right!43146 lt!2088908)))))

(declare-fun e!3162357 () List!58558)

(assert (=> d!1634383 (= (list!18989 (right!43146 lt!2088908)) e!3162357)))

(declare-fun b!5067677 () Bool)

(declare-fun e!3162358 () List!58558)

(assert (=> b!5067677 (= e!3162357 e!3162358)))

(declare-fun c!870048 () Bool)

(assert (=> b!5067677 (= c!870048 ((_ is Leaf!25851) (right!43146 lt!2088908)))))

(declare-fun b!5067676 () Bool)

(assert (=> b!5067676 (= e!3162357 Nil!58434)))

(declare-fun b!5067679 () Bool)

(assert (=> b!5067679 (= e!3162358 (++!12789 (list!18989 (left!42816 (right!43146 lt!2088908))) (list!18989 (right!43146 (right!43146 lt!2088908)))))))

(declare-fun b!5067678 () Bool)

(assert (=> b!5067678 (= e!3162358 (list!18990 (xs!18914 (right!43146 lt!2088908))))))

(assert (= (and d!1634383 c!870047) b!5067676))

(assert (= (and d!1634383 (not c!870047)) b!5067677))

(assert (= (and b!5067677 c!870048) b!5067678))

(assert (= (and b!5067677 (not c!870048)) b!5067679))

(declare-fun m!6111072 () Bool)

(assert (=> b!5067679 m!6111072))

(declare-fun m!6111074 () Bool)

(assert (=> b!5067679 m!6111074))

(assert (=> b!5067679 m!6111072))

(assert (=> b!5067679 m!6111074))

(declare-fun m!6111076 () Bool)

(assert (=> b!5067679 m!6111076))

(declare-fun m!6111078 () Bool)

(assert (=> b!5067678 m!6111078))

(assert (=> b!5066419 d!1634383))

(assert (=> b!5066531 d!1634061))

(declare-fun b!5067682 () Bool)

(declare-fun res!2157691 () Bool)

(declare-fun e!3162359 () Bool)

(assert (=> b!5067682 (=> (not res!2157691) (not e!3162359))))

(declare-fun lt!2089118 () List!58558)

(assert (=> b!5067682 (= res!2157691 (= (size!39074 lt!2089118) (+ (size!39074 (list!18989 (left!42816 (left!42816 lt!2088868)))) (size!39074 (list!18989 (right!43146 (left!42816 lt!2088868)))))))))

(declare-fun b!5067683 () Bool)

(assert (=> b!5067683 (= e!3162359 (or (not (= (list!18989 (right!43146 (left!42816 lt!2088868))) Nil!58434)) (= lt!2089118 (list!18989 (left!42816 (left!42816 lt!2088868))))))))

(declare-fun b!5067681 () Bool)

(declare-fun e!3162360 () List!58558)

(assert (=> b!5067681 (= e!3162360 (Cons!58434 (h!64882 (list!18989 (left!42816 (left!42816 lt!2088868)))) (++!12789 (t!371291 (list!18989 (left!42816 (left!42816 lt!2088868)))) (list!18989 (right!43146 (left!42816 lt!2088868))))))))

(declare-fun b!5067680 () Bool)

(assert (=> b!5067680 (= e!3162360 (list!18989 (right!43146 (left!42816 lt!2088868))))))

(declare-fun d!1634385 () Bool)

(assert (=> d!1634385 e!3162359))

(declare-fun res!2157690 () Bool)

(assert (=> d!1634385 (=> (not res!2157690) (not e!3162359))))

(assert (=> d!1634385 (= res!2157690 (= (content!10417 lt!2089118) ((_ map or) (content!10417 (list!18989 (left!42816 (left!42816 lt!2088868)))) (content!10417 (list!18989 (right!43146 (left!42816 lt!2088868)))))))))

(assert (=> d!1634385 (= lt!2089118 e!3162360)))

(declare-fun c!870049 () Bool)

(assert (=> d!1634385 (= c!870049 ((_ is Nil!58434) (list!18989 (left!42816 (left!42816 lt!2088868)))))))

(assert (=> d!1634385 (= (++!12789 (list!18989 (left!42816 (left!42816 lt!2088868))) (list!18989 (right!43146 (left!42816 lt!2088868)))) lt!2089118)))

(assert (= (and d!1634385 c!870049) b!5067680))

(assert (= (and d!1634385 (not c!870049)) b!5067681))

(assert (= (and d!1634385 res!2157690) b!5067682))

(assert (= (and b!5067682 res!2157691) b!5067683))

(declare-fun m!6111080 () Bool)

(assert (=> b!5067682 m!6111080))

(assert (=> b!5067682 m!6108514))

(declare-fun m!6111082 () Bool)

(assert (=> b!5067682 m!6111082))

(assert (=> b!5067682 m!6108516))

(declare-fun m!6111084 () Bool)

(assert (=> b!5067682 m!6111084))

(assert (=> b!5067681 m!6108516))

(declare-fun m!6111086 () Bool)

(assert (=> b!5067681 m!6111086))

(declare-fun m!6111088 () Bool)

(assert (=> d!1634385 m!6111088))

(assert (=> d!1634385 m!6108514))

(declare-fun m!6111090 () Bool)

(assert (=> d!1634385 m!6111090))

(assert (=> d!1634385 m!6108516))

(declare-fun m!6111092 () Bool)

(assert (=> d!1634385 m!6111092))

(assert (=> b!5066435 d!1634385))

(declare-fun d!1634387 () Bool)

(declare-fun c!870050 () Bool)

(assert (=> d!1634387 (= c!870050 ((_ is Empty!15564) (left!42816 (left!42816 lt!2088868))))))

(declare-fun e!3162361 () List!58558)

(assert (=> d!1634387 (= (list!18989 (left!42816 (left!42816 lt!2088868))) e!3162361)))

(declare-fun b!5067685 () Bool)

(declare-fun e!3162362 () List!58558)

(assert (=> b!5067685 (= e!3162361 e!3162362)))

(declare-fun c!870051 () Bool)

(assert (=> b!5067685 (= c!870051 ((_ is Leaf!25851) (left!42816 (left!42816 lt!2088868))))))

(declare-fun b!5067684 () Bool)

(assert (=> b!5067684 (= e!3162361 Nil!58434)))

(declare-fun b!5067687 () Bool)

(assert (=> b!5067687 (= e!3162362 (++!12789 (list!18989 (left!42816 (left!42816 (left!42816 lt!2088868)))) (list!18989 (right!43146 (left!42816 (left!42816 lt!2088868))))))))

(declare-fun b!5067686 () Bool)

(assert (=> b!5067686 (= e!3162362 (list!18990 (xs!18914 (left!42816 (left!42816 lt!2088868)))))))

(assert (= (and d!1634387 c!870050) b!5067684))

(assert (= (and d!1634387 (not c!870050)) b!5067685))

(assert (= (and b!5067685 c!870051) b!5067686))

(assert (= (and b!5067685 (not c!870051)) b!5067687))

(declare-fun m!6111094 () Bool)

(assert (=> b!5067687 m!6111094))

(declare-fun m!6111096 () Bool)

(assert (=> b!5067687 m!6111096))

(assert (=> b!5067687 m!6111094))

(assert (=> b!5067687 m!6111096))

(declare-fun m!6111098 () Bool)

(assert (=> b!5067687 m!6111098))

(declare-fun m!6111100 () Bool)

(assert (=> b!5067686 m!6111100))

(assert (=> b!5066435 d!1634387))

(declare-fun d!1634389 () Bool)

(declare-fun c!870052 () Bool)

(assert (=> d!1634389 (= c!870052 ((_ is Empty!15564) (right!43146 (left!42816 lt!2088868))))))

(declare-fun e!3162363 () List!58558)

(assert (=> d!1634389 (= (list!18989 (right!43146 (left!42816 lt!2088868))) e!3162363)))

(declare-fun b!5067689 () Bool)

(declare-fun e!3162364 () List!58558)

(assert (=> b!5067689 (= e!3162363 e!3162364)))

(declare-fun c!870053 () Bool)

(assert (=> b!5067689 (= c!870053 ((_ is Leaf!25851) (right!43146 (left!42816 lt!2088868))))))

(declare-fun b!5067688 () Bool)

(assert (=> b!5067688 (= e!3162363 Nil!58434)))

(declare-fun b!5067691 () Bool)

(assert (=> b!5067691 (= e!3162364 (++!12789 (list!18989 (left!42816 (right!43146 (left!42816 lt!2088868)))) (list!18989 (right!43146 (right!43146 (left!42816 lt!2088868))))))))

(declare-fun b!5067690 () Bool)

(assert (=> b!5067690 (= e!3162364 (list!18990 (xs!18914 (right!43146 (left!42816 lt!2088868)))))))

(assert (= (and d!1634389 c!870052) b!5067688))

(assert (= (and d!1634389 (not c!870052)) b!5067689))

(assert (= (and b!5067689 c!870053) b!5067690))

(assert (= (and b!5067689 (not c!870053)) b!5067691))

(declare-fun m!6111102 () Bool)

(assert (=> b!5067691 m!6111102))

(declare-fun m!6111104 () Bool)

(assert (=> b!5067691 m!6111104))

(assert (=> b!5067691 m!6111102))

(assert (=> b!5067691 m!6111104))

(declare-fun m!6111106 () Bool)

(assert (=> b!5067691 m!6111106))

(declare-fun m!6111108 () Bool)

(assert (=> b!5067690 m!6111108))

(assert (=> b!5066435 d!1634389))

(assert (=> b!5066667 d!1634139))

(assert (=> b!5066667 d!1634141))

(assert (=> b!5066667 d!1634053))

(assert (=> b!5066667 d!1634051))

(declare-fun d!1634391 () Bool)

(assert (=> d!1634391 (= (max!0 (height!2141 (left!42816 ys!41)) (height!2141 (right!43146 ys!41))) (ite (< (height!2141 (left!42816 ys!41)) (height!2141 (right!43146 ys!41))) (height!2141 (right!43146 ys!41)) (height!2141 (left!42816 ys!41))))))

(assert (=> b!5066588 d!1634391))

(assert (=> b!5066588 d!1633547))

(assert (=> b!5066588 d!1633549))

(declare-fun d!1634393 () Bool)

(declare-fun lt!2089119 () Int)

(assert (=> d!1634393 (>= lt!2089119 0)))

(declare-fun e!3162365 () Int)

(assert (=> d!1634393 (= lt!2089119 e!3162365)))

(declare-fun c!870054 () Bool)

(assert (=> d!1634393 (= c!870054 ((_ is Nil!58434) lt!2088920))))

(assert (=> d!1634393 (= (size!39074 lt!2088920) lt!2089119)))

(declare-fun b!5067692 () Bool)

(assert (=> b!5067692 (= e!3162365 0)))

(declare-fun b!5067693 () Bool)

(assert (=> b!5067693 (= e!3162365 (+ 1 (size!39074 (t!371291 lt!2088920))))))

(assert (= (and d!1634393 c!870054) b!5067692))

(assert (= (and d!1634393 (not c!870054)) b!5067693))

(declare-fun m!6111110 () Bool)

(assert (=> b!5067693 m!6111110))

(assert (=> b!5066414 d!1634393))

(assert (=> b!5066414 d!1634001))

(declare-fun d!1634395 () Bool)

(declare-fun lt!2089120 () Int)

(assert (=> d!1634395 (>= lt!2089120 0)))

(declare-fun e!3162366 () Int)

(assert (=> d!1634395 (= lt!2089120 e!3162366)))

(declare-fun c!870055 () Bool)

(assert (=> d!1634395 (= c!870055 ((_ is Nil!58434) (list!18989 (right!43146 xs!286))))))

(assert (=> d!1634395 (= (size!39074 (list!18989 (right!43146 xs!286))) lt!2089120)))

(declare-fun b!5067694 () Bool)

(assert (=> b!5067694 (= e!3162366 0)))

(declare-fun b!5067695 () Bool)

(assert (=> b!5067695 (= e!3162366 (+ 1 (size!39074 (t!371291 (list!18989 (right!43146 xs!286))))))))

(assert (= (and d!1634395 c!870055) b!5067694))

(assert (= (and d!1634395 (not c!870055)) b!5067695))

(declare-fun m!6111112 () Bool)

(assert (=> b!5067695 m!6111112))

(assert (=> b!5066414 d!1634395))

(assert (=> d!1633589 d!1634099))

(assert (=> d!1633589 d!1634101))

(declare-fun d!1634397 () Bool)

(declare-fun c!870056 () Bool)

(assert (=> d!1634397 (= c!870056 ((_ is Node!15564) (left!42816 (right!43146 (right!43146 xs!286)))))))

(declare-fun e!3162367 () Bool)

(assert (=> d!1634397 (= (inv!77556 (left!42816 (right!43146 (right!43146 xs!286)))) e!3162367)))

(declare-fun b!5067696 () Bool)

(assert (=> b!5067696 (= e!3162367 (inv!77559 (left!42816 (right!43146 (right!43146 xs!286)))))))

(declare-fun b!5067697 () Bool)

(declare-fun e!3162368 () Bool)

(assert (=> b!5067697 (= e!3162367 e!3162368)))

(declare-fun res!2157692 () Bool)

(assert (=> b!5067697 (= res!2157692 (not ((_ is Leaf!25851) (left!42816 (right!43146 (right!43146 xs!286))))))))

(assert (=> b!5067697 (=> res!2157692 e!3162368)))

(declare-fun b!5067698 () Bool)

(assert (=> b!5067698 (= e!3162368 (inv!77560 (left!42816 (right!43146 (right!43146 xs!286)))))))

(assert (= (and d!1634397 c!870056) b!5067696))

(assert (= (and d!1634397 (not c!870056)) b!5067697))

(assert (= (and b!5067697 (not res!2157692)) b!5067698))

(declare-fun m!6111114 () Bool)

(assert (=> b!5067696 m!6111114))

(declare-fun m!6111116 () Bool)

(assert (=> b!5067698 m!6111116))

(assert (=> b!5066741 d!1634397))

(declare-fun d!1634399 () Bool)

(declare-fun c!870057 () Bool)

(assert (=> d!1634399 (= c!870057 ((_ is Node!15564) (right!43146 (right!43146 (right!43146 xs!286)))))))

(declare-fun e!3162369 () Bool)

(assert (=> d!1634399 (= (inv!77556 (right!43146 (right!43146 (right!43146 xs!286)))) e!3162369)))

(declare-fun b!5067699 () Bool)

(assert (=> b!5067699 (= e!3162369 (inv!77559 (right!43146 (right!43146 (right!43146 xs!286)))))))

(declare-fun b!5067700 () Bool)

(declare-fun e!3162370 () Bool)

(assert (=> b!5067700 (= e!3162369 e!3162370)))

(declare-fun res!2157693 () Bool)

(assert (=> b!5067700 (= res!2157693 (not ((_ is Leaf!25851) (right!43146 (right!43146 (right!43146 xs!286))))))))

(assert (=> b!5067700 (=> res!2157693 e!3162370)))

(declare-fun b!5067701 () Bool)

(assert (=> b!5067701 (= e!3162370 (inv!77560 (right!43146 (right!43146 (right!43146 xs!286)))))))

(assert (= (and d!1634399 c!870057) b!5067699))

(assert (= (and d!1634399 (not c!870057)) b!5067700))

(assert (= (and b!5067700 (not res!2157693)) b!5067701))

(declare-fun m!6111118 () Bool)

(assert (=> b!5067699 m!6111118))

(declare-fun m!6111120 () Bool)

(assert (=> b!5067701 m!6111120))

(assert (=> b!5066741 d!1634399))

(declare-fun d!1634401 () Bool)

(declare-fun lt!2089121 () Int)

(assert (=> d!1634401 (>= lt!2089121 0)))

(declare-fun e!3162371 () Int)

(assert (=> d!1634401 (= lt!2089121 e!3162371)))

(declare-fun c!870058 () Bool)

(assert (=> d!1634401 (= c!870058 ((_ is Nil!58434) lt!2088922))))

(assert (=> d!1634401 (= (size!39074 lt!2088922) lt!2089121)))

(declare-fun b!5067702 () Bool)

(assert (=> b!5067702 (= e!3162371 0)))

(declare-fun b!5067703 () Bool)

(assert (=> b!5067703 (= e!3162371 (+ 1 (size!39074 (t!371291 lt!2088922))))))

(assert (= (and d!1634401 c!870058) b!5067702))

(assert (= (and d!1634401 (not c!870058)) b!5067703))

(declare-fun m!6111122 () Bool)

(assert (=> b!5067703 m!6111122))

(assert (=> b!5066430 d!1634401))

(declare-fun d!1634403 () Bool)

(declare-fun lt!2089122 () Int)

(assert (=> d!1634403 (>= lt!2089122 0)))

(declare-fun e!3162372 () Int)

(assert (=> d!1634403 (= lt!2089122 e!3162372)))

(declare-fun c!870059 () Bool)

(assert (=> d!1634403 (= c!870059 ((_ is Nil!58434) (list!18989 (left!42816 lt!2088868))))))

(assert (=> d!1634403 (= (size!39074 (list!18989 (left!42816 lt!2088868))) lt!2089122)))

(declare-fun b!5067704 () Bool)

(assert (=> b!5067704 (= e!3162372 0)))

(declare-fun b!5067705 () Bool)

(assert (=> b!5067705 (= e!3162372 (+ 1 (size!39074 (t!371291 (list!18989 (left!42816 lt!2088868))))))))

(assert (= (and d!1634403 c!870059) b!5067704))

(assert (= (and d!1634403 (not c!870059)) b!5067705))

(assert (=> b!5067705 m!6110952))

(assert (=> b!5066430 d!1634403))

(declare-fun d!1634405 () Bool)

(declare-fun lt!2089123 () Int)

(assert (=> d!1634405 (>= lt!2089123 0)))

(declare-fun e!3162373 () Int)

(assert (=> d!1634405 (= lt!2089123 e!3162373)))

(declare-fun c!870060 () Bool)

(assert (=> d!1634405 (= c!870060 ((_ is Nil!58434) (list!18989 (right!43146 lt!2088868))))))

(assert (=> d!1634405 (= (size!39074 (list!18989 (right!43146 lt!2088868))) lt!2089123)))

(declare-fun b!5067706 () Bool)

(assert (=> b!5067706 (= e!3162373 0)))

(declare-fun b!5067707 () Bool)

(assert (=> b!5067707 (= e!3162373 (+ 1 (size!39074 (t!371291 (list!18989 (right!43146 lt!2088868))))))))

(assert (= (and d!1634405 c!870060) b!5067706))

(assert (= (and d!1634405 (not c!870060)) b!5067707))

(declare-fun m!6111124 () Bool)

(assert (=> b!5067707 m!6111124))

(assert (=> b!5066430 d!1634405))

(assert (=> bm!353024 d!1633555))

(declare-fun d!1634407 () Bool)

(assert (=> d!1634407 (= (height!2141 (ite c!869767 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))) (ite ((_ is Empty!15564) (ite c!869767 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))) 0 (ite ((_ is Leaf!25851) (ite c!869767 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))) 1 (cheight!15775 (ite c!869767 (left!42816 (ite c!869680 (ite c!869683 (right!43146 (right!43146 (right!43146 xs!286))) (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) (right!43146 (right!43146 xs!286)))) (right!43146 (ite c!869680 ys!41 (ite c!869678 (left!42816 ys!41) (left!42816 (left!42816 ys!41))))))))))))

(assert (=> bm!353048 d!1634407))

(declare-fun d!1634409 () Bool)

(assert (=> d!1634409 (= (list!18990 (xs!18914 (right!43146 lt!2088868))) (innerList!15652 (xs!18914 (right!43146 lt!2088868))))))

(assert (=> b!5066438 d!1634409))

(declare-fun d!1634411 () Bool)

(declare-fun lt!2089124 () Bool)

(assert (=> d!1634411 (= lt!2089124 (isEmpty!31632 (list!18989 (right!43146 (right!43146 xs!286)))))))

(assert (=> d!1634411 (= lt!2089124 (= (size!39075 (right!43146 (right!43146 xs!286))) 0))))

(assert (=> d!1634411 (= (isEmpty!31631 (right!43146 (right!43146 xs!286))) lt!2089124)))

(declare-fun bs!1189957 () Bool)

(assert (= bs!1189957 d!1634411))

(assert (=> bs!1189957 m!6108094))

(assert (=> bs!1189957 m!6108094))

(declare-fun m!6111126 () Bool)

(assert (=> bs!1189957 m!6111126))

(assert (=> bs!1189957 m!6108658))

(assert (=> b!5066504 d!1634411))

(declare-fun b!5067708 () Bool)

(declare-fun e!3162374 () Bool)

(declare-fun tp!1414834 () Bool)

(assert (=> b!5067708 (= e!3162374 (and tp_is_empty!37051 tp!1414834))))

(assert (=> b!5066756 (= tp!1414788 e!3162374)))

(assert (= (and b!5066756 ((_ is Cons!58434) (t!371291 (innerList!15652 (xs!18914 (left!42816 xs!286)))))) b!5067708))

(declare-fun b!5067709 () Bool)

(declare-fun e!3162375 () Bool)

(declare-fun tp!1414835 () Bool)

(assert (=> b!5067709 (= e!3162375 (and tp_is_empty!37051 tp!1414835))))

(assert (=> b!5066770 (= tp!1414797 e!3162375)))

(assert (= (and b!5066770 ((_ is Cons!58434) (innerList!15652 (xs!18914 (left!42816 (left!42816 ys!41)))))) b!5067709))

(declare-fun b!5067710 () Bool)

(declare-fun e!3162376 () Bool)

(declare-fun tp!1414836 () Bool)

(assert (=> b!5067710 (= e!3162376 (and tp_is_empty!37051 tp!1414836))))

(assert (=> b!5066783 (= tp!1414803 e!3162376)))

(assert (= (and b!5066783 ((_ is Cons!58434) (t!371291 (innerList!15652 (xs!18914 (right!43146 ys!41)))))) b!5067710))

(declare-fun b!5067711 () Bool)

(declare-fun e!3162377 () Bool)

(declare-fun tp!1414837 () Bool)

(assert (=> b!5067711 (= e!3162377 (and tp_is_empty!37051 tp!1414837))))

(assert (=> b!5066755 (= tp!1414785 e!3162377)))

(assert (= (and b!5066755 ((_ is Cons!58434) (innerList!15652 (xs!18914 (right!43146 (right!43146 ys!41)))))) b!5067711))

(declare-fun b!5067712 () Bool)

(declare-fun e!3162378 () Bool)

(declare-fun tp!1414838 () Bool)

(assert (=> b!5067712 (= e!3162378 (and tp_is_empty!37051 tp!1414838))))

(assert (=> b!5066760 (= tp!1414790 e!3162378)))

(assert (= (and b!5066760 ((_ is Cons!58434) (innerList!15652 (xs!18914 (left!42816 (left!42816 xs!286)))))) b!5067712))

(declare-fun tp!1414841 () Bool)

(declare-fun e!3162380 () Bool)

(declare-fun b!5067713 () Bool)

(declare-fun tp!1414840 () Bool)

(assert (=> b!5067713 (= e!3162380 (and (inv!77556 (left!42816 (left!42816 (left!42816 (right!43146 xs!286))))) tp!1414840 (inv!77556 (right!43146 (left!42816 (left!42816 (right!43146 xs!286))))) tp!1414841))))

(declare-fun b!5067715 () Bool)

(declare-fun e!3162379 () Bool)

(declare-fun tp!1414839 () Bool)

(assert (=> b!5067715 (= e!3162379 tp!1414839)))

(declare-fun b!5067714 () Bool)

(assert (=> b!5067714 (= e!3162380 (and (inv!77555 (xs!18914 (left!42816 (left!42816 (right!43146 xs!286))))) e!3162379))))

(assert (=> b!5066738 (= tp!1414777 (and (inv!77556 (left!42816 (left!42816 (right!43146 xs!286)))) e!3162380))))

(assert (= (and b!5066738 ((_ is Node!15564) (left!42816 (left!42816 (right!43146 xs!286))))) b!5067713))

(assert (= b!5067714 b!5067715))

(assert (= (and b!5066738 ((_ is Leaf!25851) (left!42816 (left!42816 (right!43146 xs!286))))) b!5067714))

(declare-fun m!6111128 () Bool)

(assert (=> b!5067713 m!6111128))

(declare-fun m!6111130 () Bool)

(assert (=> b!5067713 m!6111130))

(declare-fun m!6111132 () Bool)

(assert (=> b!5067714 m!6111132))

(assert (=> b!5066738 m!6109098))

(declare-fun e!3162382 () Bool)

(declare-fun tp!1414843 () Bool)

(declare-fun tp!1414844 () Bool)

(declare-fun b!5067716 () Bool)

(assert (=> b!5067716 (= e!3162382 (and (inv!77556 (left!42816 (right!43146 (left!42816 (right!43146 xs!286))))) tp!1414843 (inv!77556 (right!43146 (right!43146 (left!42816 (right!43146 xs!286))))) tp!1414844))))

(declare-fun b!5067718 () Bool)

(declare-fun e!3162381 () Bool)

(declare-fun tp!1414842 () Bool)

(assert (=> b!5067718 (= e!3162381 tp!1414842)))

(declare-fun b!5067717 () Bool)

(assert (=> b!5067717 (= e!3162382 (and (inv!77555 (xs!18914 (right!43146 (left!42816 (right!43146 xs!286))))) e!3162381))))

(assert (=> b!5066738 (= tp!1414778 (and (inv!77556 (right!43146 (left!42816 (right!43146 xs!286)))) e!3162382))))

(assert (= (and b!5066738 ((_ is Node!15564) (right!43146 (left!42816 (right!43146 xs!286))))) b!5067716))

(assert (= b!5067717 b!5067718))

(assert (= (and b!5066738 ((_ is Leaf!25851) (right!43146 (left!42816 (right!43146 xs!286))))) b!5067717))

(declare-fun m!6111134 () Bool)

(assert (=> b!5067716 m!6111134))

(declare-fun m!6111136 () Bool)

(assert (=> b!5067716 m!6111136))

(declare-fun m!6111138 () Bool)

(assert (=> b!5067717 m!6111138))

(assert (=> b!5066738 m!6109100))

(declare-fun b!5067719 () Bool)

(declare-fun e!3162383 () Bool)

(declare-fun tp!1414845 () Bool)

(assert (=> b!5067719 (= e!3162383 (and tp_is_empty!37051 tp!1414845))))

(assert (=> b!5066767 (= tp!1414796 e!3162383)))

(assert (= (and b!5066767 ((_ is Cons!58434) (t!371291 (innerList!15652 (xs!18914 (right!43146 xs!286)))))) b!5067719))

(declare-fun b!5067720 () Bool)

(declare-fun e!3162385 () Bool)

(declare-fun tp!1414847 () Bool)

(declare-fun tp!1414848 () Bool)

(assert (=> b!5067720 (= e!3162385 (and (inv!77556 (left!42816 (left!42816 (right!43146 (left!42816 ys!41))))) tp!1414847 (inv!77556 (right!43146 (left!42816 (right!43146 (left!42816 ys!41))))) tp!1414848))))

(declare-fun b!5067722 () Bool)

(declare-fun e!3162384 () Bool)

(declare-fun tp!1414846 () Bool)

(assert (=> b!5067722 (= e!3162384 tp!1414846)))

(declare-fun b!5067721 () Bool)

(assert (=> b!5067721 (= e!3162385 (and (inv!77555 (xs!18914 (left!42816 (right!43146 (left!42816 ys!41))))) e!3162384))))

(assert (=> b!5066774 (= tp!1414801 (and (inv!77556 (left!42816 (right!43146 (left!42816 ys!41)))) e!3162385))))

(assert (= (and b!5066774 ((_ is Node!15564) (left!42816 (right!43146 (left!42816 ys!41))))) b!5067720))

(assert (= b!5067721 b!5067722))

(assert (= (and b!5066774 ((_ is Leaf!25851) (left!42816 (right!43146 (left!42816 ys!41))))) b!5067721))

(declare-fun m!6111140 () Bool)

(assert (=> b!5067720 m!6111140))

(declare-fun m!6111142 () Bool)

(assert (=> b!5067720 m!6111142))

(declare-fun m!6111144 () Bool)

(assert (=> b!5067721 m!6111144))

(assert (=> b!5066774 m!6109160))

(declare-fun tp!1414850 () Bool)

(declare-fun e!3162387 () Bool)

(declare-fun tp!1414851 () Bool)

(declare-fun b!5067723 () Bool)

(assert (=> b!5067723 (= e!3162387 (and (inv!77556 (left!42816 (right!43146 (right!43146 (left!42816 ys!41))))) tp!1414850 (inv!77556 (right!43146 (right!43146 (right!43146 (left!42816 ys!41))))) tp!1414851))))

(declare-fun b!5067725 () Bool)

(declare-fun e!3162386 () Bool)

(declare-fun tp!1414849 () Bool)

(assert (=> b!5067725 (= e!3162386 tp!1414849)))

(declare-fun b!5067724 () Bool)

(assert (=> b!5067724 (= e!3162387 (and (inv!77555 (xs!18914 (right!43146 (right!43146 (left!42816 ys!41))))) e!3162386))))

(assert (=> b!5066774 (= tp!1414802 (and (inv!77556 (right!43146 (right!43146 (left!42816 ys!41)))) e!3162387))))

(assert (= (and b!5066774 ((_ is Node!15564) (right!43146 (right!43146 (left!42816 ys!41))))) b!5067723))

(assert (= b!5067724 b!5067725))

(assert (= (and b!5066774 ((_ is Leaf!25851) (right!43146 (right!43146 (left!42816 ys!41))))) b!5067724))

(declare-fun m!6111146 () Bool)

(assert (=> b!5067723 m!6111146))

(declare-fun m!6111148 () Bool)

(assert (=> b!5067723 m!6111148))

(declare-fun m!6111150 () Bool)

(assert (=> b!5067724 m!6111150))

(assert (=> b!5066774 m!6109162))

(declare-fun tp!1414854 () Bool)

(declare-fun tp!1414853 () Bool)

(declare-fun e!3162389 () Bool)

(declare-fun b!5067726 () Bool)

(assert (=> b!5067726 (= e!3162389 (and (inv!77556 (left!42816 (left!42816 (right!43146 (left!42816 xs!286))))) tp!1414853 (inv!77556 (right!43146 (left!42816 (right!43146 (left!42816 xs!286))))) tp!1414854))))

(declare-fun b!5067728 () Bool)

(declare-fun e!3162388 () Bool)

(declare-fun tp!1414852 () Bool)

(assert (=> b!5067728 (= e!3162388 tp!1414852)))

(declare-fun b!5067727 () Bool)

(assert (=> b!5067727 (= e!3162389 (and (inv!77555 (xs!18914 (left!42816 (right!43146 (left!42816 xs!286))))) e!3162388))))

(assert (=> b!5066764 (= tp!1414794 (and (inv!77556 (left!42816 (right!43146 (left!42816 xs!286)))) e!3162389))))

(assert (= (and b!5066764 ((_ is Node!15564) (left!42816 (right!43146 (left!42816 xs!286))))) b!5067726))

(assert (= b!5067727 b!5067728))

(assert (= (and b!5066764 ((_ is Leaf!25851) (left!42816 (right!43146 (left!42816 xs!286))))) b!5067727))

(declare-fun m!6111152 () Bool)

(assert (=> b!5067726 m!6111152))

(declare-fun m!6111154 () Bool)

(assert (=> b!5067726 m!6111154))

(declare-fun m!6111156 () Bool)

(assert (=> b!5067727 m!6111156))

(assert (=> b!5066764 m!6109140))

(declare-fun tp!1414856 () Bool)

(declare-fun tp!1414857 () Bool)

(declare-fun b!5067729 () Bool)

(declare-fun e!3162391 () Bool)

(assert (=> b!5067729 (= e!3162391 (and (inv!77556 (left!42816 (right!43146 (right!43146 (left!42816 xs!286))))) tp!1414856 (inv!77556 (right!43146 (right!43146 (right!43146 (left!42816 xs!286))))) tp!1414857))))

(declare-fun b!5067731 () Bool)

(declare-fun e!3162390 () Bool)

(declare-fun tp!1414855 () Bool)

(assert (=> b!5067731 (= e!3162390 tp!1414855)))

(declare-fun b!5067730 () Bool)

(assert (=> b!5067730 (= e!3162391 (and (inv!77555 (xs!18914 (right!43146 (right!43146 (left!42816 xs!286))))) e!3162390))))

(assert (=> b!5066764 (= tp!1414795 (and (inv!77556 (right!43146 (right!43146 (left!42816 xs!286)))) e!3162391))))

(assert (= (and b!5066764 ((_ is Node!15564) (right!43146 (right!43146 (left!42816 xs!286))))) b!5067729))

(assert (= b!5067730 b!5067731))

(assert (= (and b!5066764 ((_ is Leaf!25851) (right!43146 (right!43146 (left!42816 xs!286))))) b!5067730))

(declare-fun m!6111158 () Bool)

(assert (=> b!5067729 m!6111158))

(declare-fun m!6111160 () Bool)

(assert (=> b!5067729 m!6111160))

(declare-fun m!6111162 () Bool)

(assert (=> b!5067730 m!6111162))

(assert (=> b!5066764 m!6109142))

(declare-fun b!5067732 () Bool)

(declare-fun e!3162392 () Bool)

(declare-fun tp!1414858 () Bool)

(assert (=> b!5067732 (= e!3162392 (and tp_is_empty!37051 tp!1414858))))

(assert (=> b!5066736 (= tp!1414774 e!3162392)))

(assert (= (and b!5066736 ((_ is Cons!58434) (t!371291 (t!371291 (innerList!15652 (xs!18914 xs!286)))))) b!5067732))

(declare-fun tp!1414861 () Bool)

(declare-fun tp!1414860 () Bool)

(declare-fun b!5067733 () Bool)

(declare-fun e!3162394 () Bool)

(assert (=> b!5067733 (= e!3162394 (and (inv!77556 (left!42816 (left!42816 (left!42816 (left!42816 ys!41))))) tp!1414860 (inv!77556 (right!43146 (left!42816 (left!42816 (left!42816 ys!41))))) tp!1414861))))

(declare-fun b!5067735 () Bool)

(declare-fun e!3162393 () Bool)

(declare-fun tp!1414859 () Bool)

(assert (=> b!5067735 (= e!3162393 tp!1414859)))

(declare-fun b!5067734 () Bool)

(assert (=> b!5067734 (= e!3162394 (and (inv!77555 (xs!18914 (left!42816 (left!42816 (left!42816 ys!41))))) e!3162393))))

(assert (=> b!5066768 (= tp!1414798 (and (inv!77556 (left!42816 (left!42816 (left!42816 ys!41)))) e!3162394))))

(assert (= (and b!5066768 ((_ is Node!15564) (left!42816 (left!42816 (left!42816 ys!41))))) b!5067733))

(assert (= b!5067734 b!5067735))

(assert (= (and b!5066768 ((_ is Leaf!25851) (left!42816 (left!42816 (left!42816 ys!41))))) b!5067734))

(declare-fun m!6111164 () Bool)

(assert (=> b!5067733 m!6111164))

(declare-fun m!6111166 () Bool)

(assert (=> b!5067733 m!6111166))

(declare-fun m!6111168 () Bool)

(assert (=> b!5067734 m!6111168))

(assert (=> b!5066768 m!6109150))

(declare-fun e!3162396 () Bool)

(declare-fun tp!1414864 () Bool)

(declare-fun b!5067736 () Bool)

(declare-fun tp!1414863 () Bool)

(assert (=> b!5067736 (= e!3162396 (and (inv!77556 (left!42816 (right!43146 (left!42816 (left!42816 ys!41))))) tp!1414863 (inv!77556 (right!43146 (right!43146 (left!42816 (left!42816 ys!41))))) tp!1414864))))

(declare-fun b!5067738 () Bool)

(declare-fun e!3162395 () Bool)

(declare-fun tp!1414862 () Bool)

(assert (=> b!5067738 (= e!3162395 tp!1414862)))

(declare-fun b!5067737 () Bool)

(assert (=> b!5067737 (= e!3162396 (and (inv!77555 (xs!18914 (right!43146 (left!42816 (left!42816 ys!41))))) e!3162395))))

(assert (=> b!5066768 (= tp!1414799 (and (inv!77556 (right!43146 (left!42816 (left!42816 ys!41)))) e!3162396))))

(assert (= (and b!5066768 ((_ is Node!15564) (right!43146 (left!42816 (left!42816 ys!41))))) b!5067736))

(assert (= b!5067737 b!5067738))

(assert (= (and b!5066768 ((_ is Leaf!25851) (right!43146 (left!42816 (left!42816 ys!41))))) b!5067737))

(declare-fun m!6111170 () Bool)

(assert (=> b!5067736 m!6111170))

(declare-fun m!6111172 () Bool)

(assert (=> b!5067736 m!6111172))

(declare-fun m!6111174 () Bool)

(assert (=> b!5067737 m!6111174))

(assert (=> b!5066768 m!6109152))

(declare-fun tp!1414866 () Bool)

(declare-fun e!3162398 () Bool)

(declare-fun tp!1414867 () Bool)

(declare-fun b!5067739 () Bool)

(assert (=> b!5067739 (= e!3162398 (and (inv!77556 (left!42816 (left!42816 (right!43146 (right!43146 ys!41))))) tp!1414866 (inv!77556 (right!43146 (left!42816 (right!43146 (right!43146 ys!41))))) tp!1414867))))

(declare-fun b!5067741 () Bool)

(declare-fun e!3162397 () Bool)

(declare-fun tp!1414865 () Bool)

(assert (=> b!5067741 (= e!3162397 tp!1414865)))

(declare-fun b!5067740 () Bool)

(assert (=> b!5067740 (= e!3162398 (and (inv!77555 (xs!18914 (left!42816 (right!43146 (right!43146 ys!41))))) e!3162397))))

(assert (=> b!5066753 (= tp!1414786 (and (inv!77556 (left!42816 (right!43146 (right!43146 ys!41)))) e!3162398))))

(assert (= (and b!5066753 ((_ is Node!15564) (left!42816 (right!43146 (right!43146 ys!41))))) b!5067739))

(assert (= b!5067740 b!5067741))

(assert (= (and b!5066753 ((_ is Leaf!25851) (left!42816 (right!43146 (right!43146 ys!41))))) b!5067740))

(declare-fun m!6111176 () Bool)

(assert (=> b!5067739 m!6111176))

(declare-fun m!6111178 () Bool)

(assert (=> b!5067739 m!6111178))

(declare-fun m!6111180 () Bool)

(assert (=> b!5067740 m!6111180))

(assert (=> b!5066753 m!6109116))

(declare-fun tp!1414869 () Bool)

(declare-fun e!3162400 () Bool)

(declare-fun b!5067742 () Bool)

(declare-fun tp!1414870 () Bool)

(assert (=> b!5067742 (= e!3162400 (and (inv!77556 (left!42816 (right!43146 (right!43146 (right!43146 ys!41))))) tp!1414869 (inv!77556 (right!43146 (right!43146 (right!43146 (right!43146 ys!41))))) tp!1414870))))

(declare-fun b!5067744 () Bool)

(declare-fun e!3162399 () Bool)

(declare-fun tp!1414868 () Bool)

(assert (=> b!5067744 (= e!3162399 tp!1414868)))

(declare-fun b!5067743 () Bool)

(assert (=> b!5067743 (= e!3162400 (and (inv!77555 (xs!18914 (right!43146 (right!43146 (right!43146 ys!41))))) e!3162399))))

(assert (=> b!5066753 (= tp!1414787 (and (inv!77556 (right!43146 (right!43146 (right!43146 ys!41)))) e!3162400))))

(assert (= (and b!5066753 ((_ is Node!15564) (right!43146 (right!43146 (right!43146 ys!41))))) b!5067742))

(assert (= b!5067743 b!5067744))

(assert (= (and b!5066753 ((_ is Leaf!25851) (right!43146 (right!43146 (right!43146 ys!41))))) b!5067743))

(declare-fun m!6111182 () Bool)

(assert (=> b!5067742 m!6111182))

(declare-fun m!6111184 () Bool)

(assert (=> b!5067742 m!6111184))

(declare-fun m!6111186 () Bool)

(assert (=> b!5067743 m!6111186))

(assert (=> b!5066753 m!6109118))

(declare-fun e!3162402 () Bool)

(declare-fun b!5067745 () Bool)

(declare-fun tp!1414873 () Bool)

(declare-fun tp!1414872 () Bool)

(assert (=> b!5067745 (= e!3162402 (and (inv!77556 (left!42816 (left!42816 (left!42816 (left!42816 xs!286))))) tp!1414872 (inv!77556 (right!43146 (left!42816 (left!42816 (left!42816 xs!286))))) tp!1414873))))

(declare-fun b!5067747 () Bool)

(declare-fun e!3162401 () Bool)

(declare-fun tp!1414871 () Bool)

(assert (=> b!5067747 (= e!3162401 tp!1414871)))

(declare-fun b!5067746 () Bool)

(assert (=> b!5067746 (= e!3162402 (and (inv!77555 (xs!18914 (left!42816 (left!42816 (left!42816 xs!286))))) e!3162401))))

(assert (=> b!5066758 (= tp!1414791 (and (inv!77556 (left!42816 (left!42816 (left!42816 xs!286)))) e!3162402))))

(assert (= (and b!5066758 ((_ is Node!15564) (left!42816 (left!42816 (left!42816 xs!286))))) b!5067745))

(assert (= b!5067746 b!5067747))

(assert (= (and b!5066758 ((_ is Leaf!25851) (left!42816 (left!42816 (left!42816 xs!286))))) b!5067746))

(declare-fun m!6111188 () Bool)

(assert (=> b!5067745 m!6111188))

(declare-fun m!6111190 () Bool)

(assert (=> b!5067745 m!6111190))

(declare-fun m!6111192 () Bool)

(assert (=> b!5067746 m!6111192))

(assert (=> b!5066758 m!6109134))

(declare-fun e!3162404 () Bool)

(declare-fun b!5067748 () Bool)

(declare-fun tp!1414875 () Bool)

(declare-fun tp!1414876 () Bool)

(assert (=> b!5067748 (= e!3162404 (and (inv!77556 (left!42816 (right!43146 (left!42816 (left!42816 xs!286))))) tp!1414875 (inv!77556 (right!43146 (right!43146 (left!42816 (left!42816 xs!286))))) tp!1414876))))

(declare-fun b!5067750 () Bool)

(declare-fun e!3162403 () Bool)

(declare-fun tp!1414874 () Bool)

(assert (=> b!5067750 (= e!3162403 tp!1414874)))

(declare-fun b!5067749 () Bool)

(assert (=> b!5067749 (= e!3162404 (and (inv!77555 (xs!18914 (right!43146 (left!42816 (left!42816 xs!286))))) e!3162403))))

(assert (=> b!5066758 (= tp!1414792 (and (inv!77556 (right!43146 (left!42816 (left!42816 xs!286)))) e!3162404))))

(assert (= (and b!5066758 ((_ is Node!15564) (right!43146 (left!42816 (left!42816 xs!286))))) b!5067748))

(assert (= b!5067749 b!5067750))

(assert (= (and b!5066758 ((_ is Leaf!25851) (right!43146 (left!42816 (left!42816 xs!286))))) b!5067749))

(declare-fun m!6111194 () Bool)

(assert (=> b!5067748 m!6111194))

(declare-fun m!6111196 () Bool)

(assert (=> b!5067748 m!6111196))

(declare-fun m!6111198 () Bool)

(assert (=> b!5067749 m!6111198))

(assert (=> b!5066758 m!6109136))

(declare-fun b!5067751 () Bool)

(declare-fun e!3162405 () Bool)

(declare-fun tp!1414877 () Bool)

(assert (=> b!5067751 (= e!3162405 (and tp_is_empty!37051 tp!1414877))))

(assert (=> b!5066743 (= tp!1414779 e!3162405)))

(assert (= (and b!5066743 ((_ is Cons!58434) (innerList!15652 (xs!18914 (right!43146 (right!43146 xs!286)))))) b!5067751))

(declare-fun b!5067752 () Bool)

(declare-fun e!3162406 () Bool)

(declare-fun tp!1414878 () Bool)

(assert (=> b!5067752 (= e!3162406 (and tp_is_empty!37051 tp!1414878))))

(assert (=> b!5066752 (= tp!1414782 e!3162406)))

(assert (= (and b!5066752 ((_ is Cons!58434) (innerList!15652 (xs!18914 (left!42816 (right!43146 ys!41)))))) b!5067752))

(declare-fun b!5067753 () Bool)

(declare-fun e!3162407 () Bool)

(declare-fun tp!1414879 () Bool)

(assert (=> b!5067753 (= e!3162407 (and tp_is_empty!37051 tp!1414879))))

(assert (=> b!5066757 (= tp!1414789 e!3162407)))

(assert (= (and b!5066757 ((_ is Cons!58434) (t!371291 (innerList!15652 (xs!18914 (left!42816 ys!41)))))) b!5067753))

(declare-fun tp!1414881 () Bool)

(declare-fun b!5067754 () Bool)

(declare-fun tp!1414882 () Bool)

(declare-fun e!3162409 () Bool)

(assert (=> b!5067754 (= e!3162409 (and (inv!77556 (left!42816 (left!42816 (left!42816 (right!43146 ys!41))))) tp!1414881 (inv!77556 (right!43146 (left!42816 (left!42816 (right!43146 ys!41))))) tp!1414882))))

(declare-fun b!5067756 () Bool)

(declare-fun e!3162408 () Bool)

(declare-fun tp!1414880 () Bool)

(assert (=> b!5067756 (= e!3162408 tp!1414880)))

(declare-fun b!5067755 () Bool)

(assert (=> b!5067755 (= e!3162409 (and (inv!77555 (xs!18914 (left!42816 (left!42816 (right!43146 ys!41))))) e!3162408))))

(assert (=> b!5066750 (= tp!1414783 (and (inv!77556 (left!42816 (left!42816 (right!43146 ys!41)))) e!3162409))))

(assert (= (and b!5066750 ((_ is Node!15564) (left!42816 (left!42816 (right!43146 ys!41))))) b!5067754))

(assert (= b!5067755 b!5067756))

(assert (= (and b!5066750 ((_ is Leaf!25851) (left!42816 (left!42816 (right!43146 ys!41))))) b!5067755))

(declare-fun m!6111200 () Bool)

(assert (=> b!5067754 m!6111200))

(declare-fun m!6111202 () Bool)

(assert (=> b!5067754 m!6111202))

(declare-fun m!6111204 () Bool)

(assert (=> b!5067755 m!6111204))

(assert (=> b!5066750 m!6109110))

(declare-fun tp!1414885 () Bool)

(declare-fun e!3162411 () Bool)

(declare-fun b!5067757 () Bool)

(declare-fun tp!1414884 () Bool)

(assert (=> b!5067757 (= e!3162411 (and (inv!77556 (left!42816 (right!43146 (left!42816 (right!43146 ys!41))))) tp!1414884 (inv!77556 (right!43146 (right!43146 (left!42816 (right!43146 ys!41))))) tp!1414885))))

(declare-fun b!5067759 () Bool)

(declare-fun e!3162410 () Bool)

(declare-fun tp!1414883 () Bool)

(assert (=> b!5067759 (= e!3162410 tp!1414883)))

(declare-fun b!5067758 () Bool)

(assert (=> b!5067758 (= e!3162411 (and (inv!77555 (xs!18914 (right!43146 (left!42816 (right!43146 ys!41))))) e!3162410))))

(assert (=> b!5066750 (= tp!1414784 (and (inv!77556 (right!43146 (left!42816 (right!43146 ys!41)))) e!3162411))))

(assert (= (and b!5066750 ((_ is Node!15564) (right!43146 (left!42816 (right!43146 ys!41))))) b!5067757))

(assert (= b!5067758 b!5067759))

(assert (= (and b!5066750 ((_ is Leaf!25851) (right!43146 (left!42816 (right!43146 ys!41))))) b!5067758))

(declare-fun m!6111206 () Bool)

(assert (=> b!5067757 m!6111206))

(declare-fun m!6111208 () Bool)

(assert (=> b!5067757 m!6111208))

(declare-fun m!6111210 () Bool)

(assert (=> b!5067758 m!6111210))

(assert (=> b!5066750 m!6109112))

(declare-fun b!5067760 () Bool)

(declare-fun e!3162412 () Bool)

(declare-fun tp!1414886 () Bool)

(assert (=> b!5067760 (= e!3162412 (and tp_is_empty!37051 tp!1414886))))

(assert (=> b!5066737 (= tp!1414775 e!3162412)))

(assert (= (and b!5066737 ((_ is Cons!58434) (t!371291 (t!371291 (innerList!15652 (xs!18914 ys!41)))))) b!5067760))

(declare-fun e!3162414 () Bool)

(declare-fun tp!1414889 () Bool)

(declare-fun b!5067761 () Bool)

(declare-fun tp!1414888 () Bool)

(assert (=> b!5067761 (= e!3162414 (and (inv!77556 (left!42816 (left!42816 (right!43146 (right!43146 xs!286))))) tp!1414888 (inv!77556 (right!43146 (left!42816 (right!43146 (right!43146 xs!286))))) tp!1414889))))

(declare-fun b!5067763 () Bool)

(declare-fun e!3162413 () Bool)

(declare-fun tp!1414887 () Bool)

(assert (=> b!5067763 (= e!3162413 tp!1414887)))

(declare-fun b!5067762 () Bool)

(assert (=> b!5067762 (= e!3162414 (and (inv!77555 (xs!18914 (left!42816 (right!43146 (right!43146 xs!286))))) e!3162413))))

(assert (=> b!5066741 (= tp!1414780 (and (inv!77556 (left!42816 (right!43146 (right!43146 xs!286)))) e!3162414))))

(assert (= (and b!5066741 ((_ is Node!15564) (left!42816 (right!43146 (right!43146 xs!286))))) b!5067761))

(assert (= b!5067762 b!5067763))

(assert (= (and b!5066741 ((_ is Leaf!25851) (left!42816 (right!43146 (right!43146 xs!286))))) b!5067762))

(declare-fun m!6111212 () Bool)

(assert (=> b!5067761 m!6111212))

(declare-fun m!6111214 () Bool)

(assert (=> b!5067761 m!6111214))

(declare-fun m!6111216 () Bool)

(assert (=> b!5067762 m!6111216))

(assert (=> b!5066741 m!6109104))

(declare-fun e!3162416 () Bool)

(declare-fun tp!1414892 () Bool)

(declare-fun b!5067764 () Bool)

(declare-fun tp!1414891 () Bool)

(assert (=> b!5067764 (= e!3162416 (and (inv!77556 (left!42816 (right!43146 (right!43146 (right!43146 xs!286))))) tp!1414891 (inv!77556 (right!43146 (right!43146 (right!43146 (right!43146 xs!286))))) tp!1414892))))

(declare-fun b!5067766 () Bool)

(declare-fun e!3162415 () Bool)

(declare-fun tp!1414890 () Bool)

(assert (=> b!5067766 (= e!3162415 tp!1414890)))

(declare-fun b!5067765 () Bool)

(assert (=> b!5067765 (= e!3162416 (and (inv!77555 (xs!18914 (right!43146 (right!43146 (right!43146 xs!286))))) e!3162415))))

(assert (=> b!5066741 (= tp!1414781 (and (inv!77556 (right!43146 (right!43146 (right!43146 xs!286)))) e!3162416))))

(assert (= (and b!5066741 ((_ is Node!15564) (right!43146 (right!43146 (right!43146 xs!286))))) b!5067764))

(assert (= b!5067765 b!5067766))

(assert (= (and b!5066741 ((_ is Leaf!25851) (right!43146 (right!43146 (right!43146 xs!286))))) b!5067765))

(declare-fun m!6111218 () Bool)

(assert (=> b!5067764 m!6111218))

(declare-fun m!6111220 () Bool)

(assert (=> b!5067764 m!6111220))

(declare-fun m!6111222 () Bool)

(assert (=> b!5067765 m!6111222))

(assert (=> b!5066741 m!6109106))

(declare-fun b!5067767 () Bool)

(declare-fun e!3162417 () Bool)

(declare-fun tp!1414893 () Bool)

(assert (=> b!5067767 (= e!3162417 (and tp_is_empty!37051 tp!1414893))))

(assert (=> b!5066776 (= tp!1414800 e!3162417)))

(assert (= (and b!5066776 ((_ is Cons!58434) (innerList!15652 (xs!18914 (right!43146 (left!42816 ys!41)))))) b!5067767))

(declare-fun b!5067768 () Bool)

(declare-fun e!3162418 () Bool)

(declare-fun tp!1414894 () Bool)

(assert (=> b!5067768 (= e!3162418 (and tp_is_empty!37051 tp!1414894))))

(assert (=> b!5066766 (= tp!1414793 e!3162418)))

(assert (= (and b!5066766 ((_ is Cons!58434) (innerList!15652 (xs!18914 (right!43146 (left!42816 xs!286)))))) b!5067768))

(declare-fun b!5067769 () Bool)

(declare-fun e!3162419 () Bool)

(declare-fun tp!1414895 () Bool)

(assert (=> b!5067769 (= e!3162419 (and tp_is_empty!37051 tp!1414895))))

(assert (=> b!5066740 (= tp!1414776 e!3162419)))

(assert (= (and b!5066740 ((_ is Cons!58434) (innerList!15652 (xs!18914 (left!42816 (right!43146 xs!286)))))) b!5067769))

(check-sat (not b!5067430) (not d!1634341) (not b!5067722) (not b!5067371) (not b!5067687) (not d!1634385) (not b!5067711) (not b!5067756) (not b!5067276) (not b!5067469) (not b!5067698) (not b!5067448) (not b!5067476) (not b!5067388) (not b!5067288) (not b!5067644) (not d!1633963) (not b!5067328) (not b!5067524) (not b!5067352) (not b!5067752) (not b!5067657) (not d!1634027) (not d!1633843) (not b!5067533) (not bm!353149) (not b!5067707) (not b!5067150) (not d!1634329) (not b!5066758) (not b!5067020) (not bm!353130) (not b!5067757) (not d!1634055) (not b!5067666) (not b!5067170) (not b!5067765) (not b!5067148) (not b!5067606) (not b!5067695) (not b!5067741) (not b!5067645) (not b!5067769) (not b!5067263) (not d!1634201) (not b!5067483) (not b!5067228) (not d!1634331) (not b!5067616) (not b!5067313) (not bm!353121) (not b!5067610) (not b!5067669) (not b!5067736) (not d!1634107) (not d!1633883) (not b!5067626) (not d!1633817) (not d!1634261) (not b!5067374) (not b!5067552) (not b!5067108) (not b!5067161) (not d!1634153) (not b!5067185) (not b!5067283) (not b!5067015) (not b!5067367) (not b!5067539) (not b!5067277) (not b!5067368) (not b!5067408) (not bm!353148) (not b!5067548) (not b!5067040) (not bm!353123) (not b!5067372) (not d!1634037) (not b!5067553) (not b!5067290) (not bm!353128) (not d!1634211) (not bm!353100) (not b!5067768) (not b!5067256) (not b!5067648) (not b!5067323) (not b!5067129) (not b!5067565) (not b!5067086) (not b!5067429) (not b!5067036) (not d!1633937) (not b!5067585) (not b!5067564) (not b!5067054) (not b!5067498) (not d!1634347) (not b!5067251) (not b!5067265) (not b!5067158) (not b!5067497) (not b!5067343) (not b!5067021) (not b!5067617) (not d!1634309) (not b!5067455) tp_is_empty!37051 (not b!5067284) (not b!5067543) (not b!5067347) (not b!5067067) (not bm!353105) (not b!5067011) (not d!1633849) (not d!1634411) (not d!1634045) (not b!5067196) (not b!5067045) (not d!1634159) (not b!5067078) (not b!5067521) (not b!5067639) (not b!5067273) (not b!5067072) (not b!5067169) (not b!5067023) (not b!5067703) (not b!5067094) (not b!5067409) (not b!5067414) (not b!5067385) (not b!5066764) (not b!5067555) (not b!5067682) (not d!1634195) (not d!1634265) (not b!5067160) (not b!5067220) (not b!5067377) (not b!5067299) (not b!5067560) (not b!5067247) (not b!5067272) (not d!1633869) (not b!5067641) (not b!5067754) (not b!5067729) (not bm!353113) (not d!1633887) (not b!5067342) (not d!1634325) (not d!1634277) (not b!5067751) (not bm!353106) (not b!5066738) (not b!5067599) (not b!5067624) (not b!5067568) (not d!1634267) (not b!5067197) (not b!5067479) (not b!5067248) (not b!5067351) (not b!5067051) (not b!5067056) (not b!5067649) (not b!5067239) (not b!5067077) (not bm!353098) (not b!5067407) (not b!5067146) (not b!5067339) (not b!5067712) (not bm!353114) (not b!5067503) (not b!5067403) (not b!5067319) (not bm!353109) (not b!5067381) (not b!5067309) (not b!5067501) (not d!1633997) (not b!5067253) (not b!5067027) (not b!5067428) (not b!5067459) (not d!1633943) (not b!5067461) (not d!1634049) (not d!1633899) (not bm!353118) (not d!1634239) (not b!5067559) (not b!5067619) (not bm!353101) (not b!5067181) (not b!5067318) (not b!5067152) (not b!5067733) (not d!1633913) (not b!5067725) (not b!5067311) (not b!5067099) (not b!5067026) (not b!5067528) (not b!5067728) (not b!5067678) (not bm!353099) (not b!5067057) (not b!5067061) (not b!5067586) (not d!1633831) (not d!1633925) (not b!5067537) (not b!5067103) (not b!5067693) (not b!5067335) (not b!5067507) (not b!5067199) (not b!5067285) (not b!5067062) (not bm!353120) (not b!5067173) (not bm!353110) (not b!5067760) (not d!1634131) (not b!5067029) (not d!1634285) (not b!5067463) (not b!5067601) (not bm!353135) (not b!5067735) (not b!5067665) (not b!5067359) (not b!5067093) (not b!5067696) (not b!5067214) (not b!5067316) (not b!5067399) (not b!5067510) (not d!1633823) (not b!5067018) (not b!5067266) (not b!5067740) (not bm!353144) (not b!5067046) (not b!5067171) (not d!1634031) (not bm!353102) (not b!5067340) (not b!5067652) (not b!5067742) (not b!5067287) (not b!5067294) (not bm!353138) (not b!5067603) (not b!5067238) (not d!1634259) (not b!5067369) (not b!5067413) (not b!5067315) (not b!5067691) (not b!5067602) (not b!5067600) (not d!1634207) (not b!5067705) (not b!5067370) (not b!5067699) (not b!5067721) (not b!5067661) (not b!5067411) (not b!5067327) (not b!5067209) (not b!5067127) (not b!5067034) (not b!5067701) (not b!5067186) (not b!5067184) (not b!5067236) (not b!5067766) (not b!5067183) (not bm!353132) (not bm!353143) (not b!5067493) (not d!1633851) (not b!5067081) (not b!5067643) (not d!1633907) (not b!5067532) (not b!5067037) (not b!5067401) (not b!5067424) (not d!1634127) (not b!5067012) (not b!5067686) (not b!5067544) (not b!5067720) (not b!5067499) (not d!1633841) (not b!5067567) (not b!5067138) (not b!5067244) (not b!5066750) (not bm!353140) (not b!5067363) (not b!5067019) (not b!5067182) (not b!5067679) (not b!5067566) (not b!5067489) (not b!5067690) (not d!1634365) (not b!5067364) (not b!5067402) (not d!1634319) (not b!5067180) (not b!5067282) (not d!1634067) (not b!5067120) (not b!5067116) (not b!5067176) (not b!5067670) (not b!5067098) (not b!5067717) (not b!5066741) (not b!5067341) (not b!5067314) (not b!5067708) (not d!1634193) (not b!5067154) (not b!5067331) (not b!5067623) (not b!5067436) (not d!1633837) (not b!5067090) (not b!5067396) (not bm!353119) (not b!5067330) (not b!5067737) (not b!5067440) (not b!5067270) (not b!5067110) (not b!5067279) (not b!5067746) (not b!5067073) (not bm!353139) (not b!5067088) (not b!5067647) (not b!5067500) (not b!5067444) (not b!5067360) (not b!5067475) (not d!1633921) (not bm!353157) (not b!5067202) (not b!5067069) (not b!5067329) (not b!5067255) (not b!5067496) (not b!5067710) (not b!5067724) (not bm!353097) (not b!5067275) (not b!5067594) (not d!1634109) (not bm!353126) (not b!5067719) (not d!1634335) (not d!1634025) (not b!5067767) (not b!5067589) (not bm!353154) (not b!5067674) (not b!5067066) (not bm!353122) (not d!1634351) (not bm!353127) (not d!1634021) (not d!1634253) (not b!5067123) (not b!5067293) (not b!5067224) (not b!5067480) (not bm!353150) (not b!5067053) (not b!5067562) (not b!5067049) (not bm!353134) (not b!5067549) (not d!1634115) (not b!5067726) (not d!1634245) (not d!1634297) (not d!1633935) (not d!1634237) (not b!5067400) (not b!5067133) (not d!1634117) (not b!5066774) (not b!5067190) (not b!5067107) (not b!5067663) (not b!5067122) (not bm!353125) (not b!5067646) (not b!5067114) (not b!5067509) (not b!5067522) (not b!5067490) (not bm!353131) (not b!5067730) (not b!5067281) (not d!1634179) (not b!5067753) (not b!5067064) (not bm!353116) (not b!5067571) (not b!5067714) (not b!5067382) (not b!5067177) (not b!5067494) (not b!5067747) (not bm!353117) (not bm!353136) (not d!1634291) (not d!1633875) (not b!5067192) (not b!5067418) (not b!5067630) (not b!5067022) (not b!5067137) (not b!5067104) (not b!5067325) (not b!5067389) (not b!5067739) (not b!5067637) (not b!5067144) (not d!1633825) (not bm!353151) (not b!5067117) (not b!5067743) (not b!5067523) (not b!5066753) (not b!5067447) (not b!5067570) (not b!5067518) (not b!5067727) (not b!5067354) (not d!1633873) (not d!1633923) (not b!5067235) (not b!5067675) (not b!5067321) (not bm!353111) (not d!1634333) (not b!5067312) (not b!5067713) (not b!5067334) (not b!5067660) (not b!5067427) (not b!5067485) (not b!5067230) (not d!1634275) (not d!1634249) (not d!1634313) (not b!5067410) (not d!1633833) (not b!5067257) (not b!5067744) (not b!5067449) (not d!1634071) (not b!5067604) (not b!5067376) (not b!5067346) (not d!1634205) (not d!1633885) (not b!5067194) (not b!5066768) (not d!1634203) (not b!5067723) (not b!5067165) (not d!1634217) (not b!5067486) (not b!5067718) (not b!5067298) (not b!5067307) (not b!5067596) (not b!5067515) (not b!5067218) (not bm!353137) (not b!5067174) (not bm!353107) (not d!1633965) (not b!5067563) (not b!5067734) (not d!1633871) (not b!5067762) (not b!5067432) (not b!5067591) (not b!5067557) (not b!5067716) (not b!5067394) (not d!1634177) (not d!1633815) (not bm!353160) (not b!5067473) (not b!5067059) (not b!5067326) (not b!5067575) (not d!1634085) (not b!5067142) (not b!5067635) (not b!5067303) (not b!5067426) (not b!5067163) (not b!5067095) (not b!5067412) (not b!5067324) (not bm!353112) (not b!5067763) (not b!5067514) (not b!5067254) (not b!5067755) (not b!5067250) (not b!5067392) (not d!1633819) (not b!5067453) (not bm!353159) (not b!5067764) (not d!1634161) (not b!5067435) (not b!5067715) (not b!5067709) (not d!1634373) (not d!1634197) (not b!5067082) (not b!5067231) (not b!5067213) (not b!5067344) (not b!5067519) (not d!1634091) (not b!5067597) (not b!5067280) (not b!5067681) (not d!1634005) (not bm!353133) (not d!1634093) (not bm!353103) (not b!5067024) (not b!5067031) (not b!5067628) (not bm!353124) (not b!5067464) (not b!5067738) (not b!5067450) (not b!5067226) (not b!5067442) (not b!5067420) (not b!5067748) (not b!5067222) (not d!1634269) (not b!5067745) (not b!5067258) (not b!5067337) (not b!5067541) (not b!5067759) (not b!5067187) (not b!5067320) (not b!5067423) (not b!5067260) (not b!5067083) (not b!5067205) (not b!5067206) (not b!5067355) (not b!5067208) (not b!5067397) (not b!5067217) (not b!5067632) (not b!5067439) (not b!5067041) (not b!5067609) (not bm!353104) (not b!5067656) (not b!5067111) (not b!5067416) (not b!5067274) (not d!1634081) (not b!5067431) (not d!1633985) (not b!5067731) (not b!5067302) (not b!5067132) (not b!5067592) (not b!5067269) (not d!1633861) (not d!1634379) (not b!5067322) (not b!5067445) (not b!5067651) (not d!1633821) (not b!5067457) (not b!5067621) (not b!5067156) (not b!5067468) (not b!5067613) (not b!5067758) (not b!5067520) (not b!5067365) (not bm!353115) (not b!5067732) (not b!5067446) (not b!5067527) (not b!5067525) (not bm!353108) (not d!1633905) (not b!5067750) (not b!5067536) (not b!5067749) (not d!1634251) (not b!5067126) (not b!5067386) (not b!5067761) (not bm!353129) (not bm!353158) (not b!5067141) (not b!5067050) (not b!5067472) (not b!5067032) (not d!1634219) (not b!5067243) (not d!1634247))
(check-sat)
