; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534670 () Bool)

(assert start!534670)

(declare-fun b!5056095 () Bool)

(declare-fun e!3156262 () Bool)

(declare-datatypes ((T!105034 0))(
  ( (T!105035 (val!23636 Int)) )
))
(declare-datatypes ((List!58546 0))(
  ( (Nil!58422) (Cons!58422 (h!64870 T!105034) (t!371221 List!58546)) )
))
(declare-fun lt!2087419 () List!58546)

(declare-fun lt!2087418 () List!58546)

(declare-fun ++!12771 (List!58546 List!58546) List!58546)

(assert (=> b!5056095 (= e!3156262 (not (= lt!2087419 (++!12771 lt!2087419 lt!2087418))))))

(declare-datatypes ((IArray!31165 0))(
  ( (IArray!31166 (innerList!15640 List!58546)) )
))
(declare-datatypes ((Conc!15552 0))(
  ( (Node!15552 (left!42798 Conc!15552) (right!43128 Conc!15552) (csize!31334 Int) (cheight!15763 Int)) (Leaf!25833 (xs!18884 IArray!31165) (csize!31335 Int)) (Empty!15552) )
))
(declare-fun xs!286 () Conc!15552)

(declare-fun list!18965 (Conc!15552) List!58546)

(assert (=> b!5056095 (= lt!2087419 (list!18965 xs!286))))

(declare-fun ys!41 () Conc!15552)

(assert (=> b!5056095 (= lt!2087418 (list!18965 ys!41))))

(declare-fun b!5056096 () Bool)

(declare-fun e!3156261 () Bool)

(declare-fun e!3156266 () Bool)

(declare-fun inv!77489 (IArray!31165) Bool)

(assert (=> b!5056096 (= e!3156261 (and (inv!77489 (xs!18884 ys!41)) e!3156266))))

(declare-fun b!5056097 () Bool)

(declare-fun res!2152975 () Bool)

(declare-fun e!3156264 () Bool)

(assert (=> b!5056097 (=> (not res!2152975) (not e!3156264))))

(assert (=> b!5056097 (= res!2152975 (and (not (= xs!286 Empty!15552)) (= ys!41 Empty!15552)))))

(declare-fun b!5056098 () Bool)

(declare-fun e!3156263 () Bool)

(assert (=> b!5056098 (= e!3156264 e!3156263)))

(declare-fun res!2152977 () Bool)

(assert (=> b!5056098 (=> res!2152977 e!3156263)))

(declare-fun appendAssocInst!902 (Conc!15552 Conc!15552) Bool)

(assert (=> b!5056098 (= res!2152977 (not (appendAssocInst!902 xs!286 ys!41)))))

(declare-fun b!5056099 () Bool)

(declare-fun tp!1413267 () Bool)

(declare-fun tp!1413269 () Bool)

(declare-fun e!3156265 () Bool)

(declare-fun inv!77490 (Conc!15552) Bool)

(assert (=> b!5056099 (= e!3156265 (and (inv!77490 (left!42798 xs!286)) tp!1413267 (inv!77490 (right!43128 xs!286)) tp!1413269))))

(declare-fun res!2152973 () Bool)

(assert (=> start!534670 (=> (not res!2152973) (not e!3156264))))

(declare-fun isBalanced!4414 (Conc!15552) Bool)

(assert (=> start!534670 (= res!2152973 (isBalanced!4414 xs!286))))

(assert (=> start!534670 e!3156264))

(assert (=> start!534670 (and (inv!77490 xs!286) e!3156265)))

(assert (=> start!534670 (and (inv!77490 ys!41) e!3156261)))

(declare-fun b!5056100 () Bool)

(declare-fun e!3156260 () Bool)

(declare-fun tp!1413266 () Bool)

(assert (=> b!5056100 (= e!3156260 tp!1413266)))

(declare-fun b!5056101 () Bool)

(declare-fun res!2152974 () Bool)

(assert (=> b!5056101 (=> (not res!2152974) (not e!3156264))))

(assert (=> b!5056101 (= res!2152974 (isBalanced!4414 ys!41))))

(declare-fun b!5056102 () Bool)

(assert (=> b!5056102 (= e!3156265 (and (inv!77489 (xs!18884 xs!286)) e!3156260))))

(declare-fun b!5056103 () Bool)

(declare-fun tp!1413265 () Bool)

(assert (=> b!5056103 (= e!3156266 tp!1413265)))

(declare-fun b!5056104 () Bool)

(assert (=> b!5056104 (= e!3156263 e!3156262)))

(declare-fun res!2152976 () Bool)

(assert (=> b!5056104 (=> res!2152976 e!3156262)))

(declare-fun lt!2087420 () Int)

(declare-fun lt!2087421 () Int)

(assert (=> b!5056104 (= res!2152976 (or (> lt!2087420 (+ 1 lt!2087421)) (< lt!2087420 lt!2087421)))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2129 (Conc!15552) Int)

(assert (=> b!5056104 (= lt!2087421 (max!0 lt!2087420 (height!2129 ys!41)))))

(assert (=> b!5056104 (= lt!2087420 (height!2129 xs!286))))

(declare-fun tp!1413268 () Bool)

(declare-fun b!5056105 () Bool)

(declare-fun tp!1413264 () Bool)

(assert (=> b!5056105 (= e!3156261 (and (inv!77490 (left!42798 ys!41)) tp!1413268 (inv!77490 (right!43128 ys!41)) tp!1413264))))

(assert (= (and start!534670 res!2152973) b!5056101))

(assert (= (and b!5056101 res!2152974) b!5056097))

(assert (= (and b!5056097 res!2152975) b!5056098))

(assert (= (and b!5056098 (not res!2152977)) b!5056104))

(assert (= (and b!5056104 (not res!2152976)) b!5056095))

(get-info :version)

(assert (= (and start!534670 ((_ is Node!15552) xs!286)) b!5056099))

(assert (= b!5056102 b!5056100))

(assert (= (and start!534670 ((_ is Leaf!25833) xs!286)) b!5056102))

(assert (= (and start!534670 ((_ is Node!15552) ys!41)) b!5056105))

(assert (= b!5056096 b!5056103))

(assert (= (and start!534670 ((_ is Leaf!25833) ys!41)) b!5056096))

(declare-fun m!6090920 () Bool)

(assert (=> b!5056102 m!6090920))

(declare-fun m!6090922 () Bool)

(assert (=> b!5056098 m!6090922))

(declare-fun m!6090924 () Bool)

(assert (=> b!5056099 m!6090924))

(declare-fun m!6090926 () Bool)

(assert (=> b!5056099 m!6090926))

(declare-fun m!6090928 () Bool)

(assert (=> b!5056101 m!6090928))

(declare-fun m!6090930 () Bool)

(assert (=> b!5056104 m!6090930))

(assert (=> b!5056104 m!6090930))

(declare-fun m!6090932 () Bool)

(assert (=> b!5056104 m!6090932))

(declare-fun m!6090934 () Bool)

(assert (=> b!5056104 m!6090934))

(declare-fun m!6090936 () Bool)

(assert (=> b!5056095 m!6090936))

(declare-fun m!6090938 () Bool)

(assert (=> b!5056095 m!6090938))

(declare-fun m!6090940 () Bool)

(assert (=> b!5056095 m!6090940))

(declare-fun m!6090942 () Bool)

(assert (=> b!5056096 m!6090942))

(declare-fun m!6090944 () Bool)

(assert (=> start!534670 m!6090944))

(declare-fun m!6090946 () Bool)

(assert (=> start!534670 m!6090946))

(declare-fun m!6090948 () Bool)

(assert (=> start!534670 m!6090948))

(declare-fun m!6090950 () Bool)

(assert (=> b!5056105 m!6090950))

(declare-fun m!6090952 () Bool)

(assert (=> b!5056105 m!6090952))

(check-sat (not b!5056099) (not b!5056103) (not b!5056098) (not b!5056095) (not b!5056101) (not b!5056104) (not b!5056100) (not b!5056105) (not start!534670) (not b!5056102) (not b!5056096))
(check-sat)
(get-model)

(declare-fun d!1627119 () Bool)

(declare-fun size!39050 (List!58546) Int)

(assert (=> d!1627119 (= (inv!77489 (xs!18884 xs!286)) (<= (size!39050 (innerList!15640 (xs!18884 xs!286))) 2147483647))))

(declare-fun bs!1189388 () Bool)

(assert (= bs!1189388 d!1627119))

(declare-fun m!6090954 () Bool)

(assert (=> bs!1189388 m!6090954))

(assert (=> b!5056102 d!1627119))

(declare-fun b!5056130 () Bool)

(declare-fun e!3156280 () Bool)

(declare-fun e!3156279 () Bool)

(assert (=> b!5056130 (= e!3156280 e!3156279)))

(declare-fun res!2152999 () Bool)

(assert (=> b!5056130 (=> (not res!2152999) (not e!3156279))))

(assert (=> b!5056130 (= res!2152999 (<= (- 1) (- (height!2129 (left!42798 xs!286)) (height!2129 (right!43128 xs!286)))))))

(declare-fun b!5056131 () Bool)

(declare-fun res!2152997 () Bool)

(assert (=> b!5056131 (=> (not res!2152997) (not e!3156279))))

(assert (=> b!5056131 (= res!2152997 (isBalanced!4414 (left!42798 xs!286)))))

(declare-fun b!5056132 () Bool)

(declare-fun isEmpty!31606 (Conc!15552) Bool)

(assert (=> b!5056132 (= e!3156279 (not (isEmpty!31606 (right!43128 xs!286))))))

(declare-fun d!1627121 () Bool)

(declare-fun res!2152998 () Bool)

(assert (=> d!1627121 (=> res!2152998 e!3156280)))

(assert (=> d!1627121 (= res!2152998 (not ((_ is Node!15552) xs!286)))))

(assert (=> d!1627121 (= (isBalanced!4414 xs!286) e!3156280)))

(declare-fun b!5056133 () Bool)

(declare-fun res!2152994 () Bool)

(assert (=> b!5056133 (=> (not res!2152994) (not e!3156279))))

(assert (=> b!5056133 (= res!2152994 (isBalanced!4414 (right!43128 xs!286)))))

(declare-fun b!5056134 () Bool)

(declare-fun res!2152996 () Bool)

(assert (=> b!5056134 (=> (not res!2152996) (not e!3156279))))

(assert (=> b!5056134 (= res!2152996 (<= (- (height!2129 (left!42798 xs!286)) (height!2129 (right!43128 xs!286))) 1))))

(declare-fun b!5056135 () Bool)

(declare-fun res!2152995 () Bool)

(assert (=> b!5056135 (=> (not res!2152995) (not e!3156279))))

(assert (=> b!5056135 (= res!2152995 (not (isEmpty!31606 (left!42798 xs!286))))))

(assert (= (and d!1627121 (not res!2152998)) b!5056130))

(assert (= (and b!5056130 res!2152999) b!5056134))

(assert (= (and b!5056134 res!2152996) b!5056131))

(assert (= (and b!5056131 res!2152997) b!5056133))

(assert (= (and b!5056133 res!2152994) b!5056135))

(assert (= (and b!5056135 res!2152995) b!5056132))

(declare-fun m!6090966 () Bool)

(assert (=> b!5056133 m!6090966))

(declare-fun m!6090968 () Bool)

(assert (=> b!5056130 m!6090968))

(declare-fun m!6090970 () Bool)

(assert (=> b!5056130 m!6090970))

(assert (=> b!5056134 m!6090968))

(assert (=> b!5056134 m!6090970))

(declare-fun m!6090972 () Bool)

(assert (=> b!5056132 m!6090972))

(declare-fun m!6090974 () Bool)

(assert (=> b!5056131 m!6090974))

(declare-fun m!6090976 () Bool)

(assert (=> b!5056135 m!6090976))

(assert (=> start!534670 d!1627121))

(declare-fun d!1627135 () Bool)

(declare-fun c!867434 () Bool)

(assert (=> d!1627135 (= c!867434 ((_ is Node!15552) xs!286))))

(declare-fun e!3156289 () Bool)

(assert (=> d!1627135 (= (inv!77490 xs!286) e!3156289)))

(declare-fun b!5056154 () Bool)

(declare-fun inv!77493 (Conc!15552) Bool)

(assert (=> b!5056154 (= e!3156289 (inv!77493 xs!286))))

(declare-fun b!5056155 () Bool)

(declare-fun e!3156290 () Bool)

(assert (=> b!5056155 (= e!3156289 e!3156290)))

(declare-fun res!2153014 () Bool)

(assert (=> b!5056155 (= res!2153014 (not ((_ is Leaf!25833) xs!286)))))

(assert (=> b!5056155 (=> res!2153014 e!3156290)))

(declare-fun b!5056156 () Bool)

(declare-fun inv!77494 (Conc!15552) Bool)

(assert (=> b!5056156 (= e!3156290 (inv!77494 xs!286))))

(assert (= (and d!1627135 c!867434) b!5056154))

(assert (= (and d!1627135 (not c!867434)) b!5056155))

(assert (= (and b!5056155 (not res!2153014)) b!5056156))

(declare-fun m!6090978 () Bool)

(assert (=> b!5056154 m!6090978))

(declare-fun m!6090980 () Bool)

(assert (=> b!5056156 m!6090980))

(assert (=> start!534670 d!1627135))

(declare-fun d!1627137 () Bool)

(declare-fun c!867435 () Bool)

(assert (=> d!1627137 (= c!867435 ((_ is Node!15552) ys!41))))

(declare-fun e!3156293 () Bool)

(assert (=> d!1627137 (= (inv!77490 ys!41) e!3156293)))

(declare-fun b!5056163 () Bool)

(assert (=> b!5056163 (= e!3156293 (inv!77493 ys!41))))

(declare-fun b!5056164 () Bool)

(declare-fun e!3156294 () Bool)

(assert (=> b!5056164 (= e!3156293 e!3156294)))

(declare-fun res!2153021 () Bool)

(assert (=> b!5056164 (= res!2153021 (not ((_ is Leaf!25833) ys!41)))))

(assert (=> b!5056164 (=> res!2153021 e!3156294)))

(declare-fun b!5056165 () Bool)

(assert (=> b!5056165 (= e!3156294 (inv!77494 ys!41))))

(assert (= (and d!1627137 c!867435) b!5056163))

(assert (= (and d!1627137 (not c!867435)) b!5056164))

(assert (= (and b!5056164 (not res!2153021)) b!5056165))

(declare-fun m!6090982 () Bool)

(assert (=> b!5056163 m!6090982))

(declare-fun m!6090984 () Bool)

(assert (=> b!5056165 m!6090984))

(assert (=> start!534670 d!1627137))

(declare-fun b!5056220 () Bool)

(declare-fun e!3156344 () Bool)

(declare-fun appendAssoc!293 (List!58546 List!58546 List!58546) Bool)

(assert (=> b!5056220 (= e!3156344 (appendAssoc!293 (++!12771 (list!18965 xs!286) (list!18965 (left!42798 (left!42798 ys!41)))) (list!18965 (right!43128 (left!42798 ys!41))) (list!18965 (right!43128 ys!41))))))

(declare-fun b!5056221 () Bool)

(declare-fun e!3156347 () Bool)

(declare-fun e!3156348 () Bool)

(assert (=> b!5056221 (= e!3156347 e!3156348)))

(declare-fun res!2153073 () Bool)

(assert (=> b!5056221 (=> res!2153073 e!3156348)))

(assert (=> b!5056221 (= res!2153073 (not ((_ is Node!15552) (right!43128 xs!286))))))

(declare-fun b!5056222 () Bool)

(declare-fun e!3156349 () Bool)

(declare-fun e!3156341 () Bool)

(assert (=> b!5056222 (= e!3156349 e!3156341)))

(declare-fun res!2153068 () Bool)

(assert (=> b!5056222 (=> res!2153068 e!3156341)))

(assert (=> b!5056222 (= res!2153068 (not ((_ is Node!15552) ys!41)))))

(declare-fun b!5056223 () Bool)

(declare-fun e!3156345 () Bool)

(assert (=> b!5056223 (= e!3156345 (appendAssoc!293 (list!18965 (left!42798 xs!286)) (list!18965 (left!42798 (right!43128 xs!286))) (++!12771 (list!18965 (right!43128 (right!43128 xs!286))) (list!18965 ys!41))))))

(declare-fun b!5056224 () Bool)

(assert (=> b!5056224 (= e!3156348 e!3156345)))

(declare-fun res!2153076 () Bool)

(assert (=> b!5056224 (=> (not res!2153076) (not e!3156345))))

(assert (=> b!5056224 (= res!2153076 (appendAssoc!293 (list!18965 (left!42798 (right!43128 xs!286))) (list!18965 (right!43128 (right!43128 xs!286))) (list!18965 ys!41)))))

(declare-fun d!1627139 () Bool)

(assert (=> d!1627139 e!3156349))

(declare-fun res!2153069 () Bool)

(assert (=> d!1627139 (=> (not res!2153069) (not e!3156349))))

(declare-fun e!3156342 () Bool)

(assert (=> d!1627139 (= res!2153069 e!3156342)))

(declare-fun res!2153074 () Bool)

(assert (=> d!1627139 (=> res!2153074 e!3156342)))

(assert (=> d!1627139 (= res!2153074 (not ((_ is Node!15552) xs!286)))))

(assert (=> d!1627139 (= (appendAssocInst!902 xs!286 ys!41) true)))

(declare-fun b!5056225 () Bool)

(declare-fun e!3156343 () Bool)

(assert (=> b!5056225 (= e!3156341 e!3156343)))

(declare-fun res!2153071 () Bool)

(assert (=> b!5056225 (=> (not res!2153071) (not e!3156343))))

(assert (=> b!5056225 (= res!2153071 (appendAssoc!293 (list!18965 xs!286) (list!18965 (left!42798 ys!41)) (list!18965 (right!43128 ys!41))))))

(declare-fun b!5056226 () Bool)

(assert (=> b!5056226 (= e!3156342 e!3156347)))

(declare-fun res!2153075 () Bool)

(assert (=> b!5056226 (=> (not res!2153075) (not e!3156347))))

(assert (=> b!5056226 (= res!2153075 (appendAssoc!293 (list!18965 (left!42798 xs!286)) (list!18965 (right!43128 xs!286)) (list!18965 ys!41)))))

(declare-fun b!5056227 () Bool)

(declare-fun e!3156346 () Bool)

(assert (=> b!5056227 (= e!3156346 e!3156344)))

(declare-fun res!2153072 () Bool)

(assert (=> b!5056227 (=> (not res!2153072) (not e!3156344))))

(assert (=> b!5056227 (= res!2153072 (appendAssoc!293 (list!18965 xs!286) (list!18965 (left!42798 (left!42798 ys!41))) (list!18965 (right!43128 (left!42798 ys!41)))))))

(declare-fun b!5056228 () Bool)

(assert (=> b!5056228 (= e!3156343 e!3156346)))

(declare-fun res!2153070 () Bool)

(assert (=> b!5056228 (=> res!2153070 e!3156346)))

(assert (=> b!5056228 (= res!2153070 (not ((_ is Node!15552) (left!42798 ys!41))))))

(assert (= (and d!1627139 (not res!2153074)) b!5056226))

(assert (= (and b!5056226 res!2153075) b!5056221))

(assert (= (and b!5056221 (not res!2153073)) b!5056224))

(assert (= (and b!5056224 res!2153076) b!5056223))

(assert (= (and d!1627139 res!2153069) b!5056222))

(assert (= (and b!5056222 (not res!2153068)) b!5056225))

(assert (= (and b!5056225 res!2153071) b!5056228))

(assert (= (and b!5056228 (not res!2153070)) b!5056227))

(assert (= (and b!5056227 res!2153072) b!5056220))

(assert (=> b!5056220 m!6090938))

(declare-fun m!6091028 () Bool)

(assert (=> b!5056220 m!6091028))

(declare-fun m!6091030 () Bool)

(assert (=> b!5056220 m!6091030))

(assert (=> b!5056220 m!6091030))

(declare-fun m!6091032 () Bool)

(assert (=> b!5056220 m!6091032))

(declare-fun m!6091034 () Bool)

(assert (=> b!5056220 m!6091034))

(declare-fun m!6091036 () Bool)

(assert (=> b!5056220 m!6091036))

(assert (=> b!5056220 m!6091034))

(assert (=> b!5056220 m!6091032))

(assert (=> b!5056220 m!6091028))

(assert (=> b!5056220 m!6090938))

(assert (=> b!5056227 m!6090938))

(assert (=> b!5056227 m!6091028))

(assert (=> b!5056227 m!6091032))

(assert (=> b!5056227 m!6090938))

(assert (=> b!5056227 m!6091028))

(assert (=> b!5056227 m!6091032))

(declare-fun m!6091038 () Bool)

(assert (=> b!5056227 m!6091038))

(declare-fun m!6091040 () Bool)

(assert (=> b!5056226 m!6091040))

(declare-fun m!6091042 () Bool)

(assert (=> b!5056226 m!6091042))

(assert (=> b!5056226 m!6090940))

(assert (=> b!5056226 m!6091040))

(assert (=> b!5056226 m!6091042))

(assert (=> b!5056226 m!6090940))

(declare-fun m!6091044 () Bool)

(assert (=> b!5056226 m!6091044))

(assert (=> b!5056225 m!6090938))

(declare-fun m!6091046 () Bool)

(assert (=> b!5056225 m!6091046))

(assert (=> b!5056225 m!6091034))

(assert (=> b!5056225 m!6090938))

(assert (=> b!5056225 m!6091046))

(assert (=> b!5056225 m!6091034))

(declare-fun m!6091048 () Bool)

(assert (=> b!5056225 m!6091048))

(declare-fun m!6091050 () Bool)

(assert (=> b!5056224 m!6091050))

(declare-fun m!6091052 () Bool)

(assert (=> b!5056224 m!6091052))

(assert (=> b!5056224 m!6090940))

(assert (=> b!5056224 m!6091050))

(assert (=> b!5056224 m!6091052))

(assert (=> b!5056224 m!6090940))

(declare-fun m!6091054 () Bool)

(assert (=> b!5056224 m!6091054))

(assert (=> b!5056223 m!6090940))

(assert (=> b!5056223 m!6091050))

(assert (=> b!5056223 m!6091052))

(assert (=> b!5056223 m!6090940))

(declare-fun m!6091056 () Bool)

(assert (=> b!5056223 m!6091056))

(assert (=> b!5056223 m!6091040))

(assert (=> b!5056223 m!6091050))

(assert (=> b!5056223 m!6091056))

(declare-fun m!6091058 () Bool)

(assert (=> b!5056223 m!6091058))

(assert (=> b!5056223 m!6091052))

(assert (=> b!5056223 m!6091040))

(assert (=> b!5056098 d!1627139))

(declare-fun d!1627155 () Bool)

(assert (=> d!1627155 (= (max!0 lt!2087420 (height!2129 ys!41)) (ite (< lt!2087420 (height!2129 ys!41)) (height!2129 ys!41) lt!2087420))))

(assert (=> b!5056104 d!1627155))

(declare-fun d!1627157 () Bool)

(assert (=> d!1627157 (= (height!2129 ys!41) (ite ((_ is Empty!15552) ys!41) 0 (ite ((_ is Leaf!25833) ys!41) 1 (cheight!15763 ys!41))))))

(assert (=> b!5056104 d!1627157))

(declare-fun d!1627159 () Bool)

(assert (=> d!1627159 (= (height!2129 xs!286) (ite ((_ is Empty!15552) xs!286) 0 (ite ((_ is Leaf!25833) xs!286) 1 (cheight!15763 xs!286))))))

(assert (=> b!5056104 d!1627159))

(declare-fun d!1627161 () Bool)

(declare-fun c!867440 () Bool)

(assert (=> d!1627161 (= c!867440 ((_ is Node!15552) (left!42798 xs!286)))))

(declare-fun e!3156359 () Bool)

(assert (=> d!1627161 (= (inv!77490 (left!42798 xs!286)) e!3156359)))

(declare-fun b!5056238 () Bool)

(assert (=> b!5056238 (= e!3156359 (inv!77493 (left!42798 xs!286)))))

(declare-fun b!5056239 () Bool)

(declare-fun e!3156360 () Bool)

(assert (=> b!5056239 (= e!3156359 e!3156360)))

(declare-fun res!2153086 () Bool)

(assert (=> b!5056239 (= res!2153086 (not ((_ is Leaf!25833) (left!42798 xs!286))))))

(assert (=> b!5056239 (=> res!2153086 e!3156360)))

(declare-fun b!5056240 () Bool)

(assert (=> b!5056240 (= e!3156360 (inv!77494 (left!42798 xs!286)))))

(assert (= (and d!1627161 c!867440) b!5056238))

(assert (= (and d!1627161 (not c!867440)) b!5056239))

(assert (= (and b!5056239 (not res!2153086)) b!5056240))

(declare-fun m!6091090 () Bool)

(assert (=> b!5056238 m!6091090))

(declare-fun m!6091092 () Bool)

(assert (=> b!5056240 m!6091092))

(assert (=> b!5056099 d!1627161))

(declare-fun d!1627163 () Bool)

(declare-fun c!867441 () Bool)

(assert (=> d!1627163 (= c!867441 ((_ is Node!15552) (right!43128 xs!286)))))

(declare-fun e!3156361 () Bool)

(assert (=> d!1627163 (= (inv!77490 (right!43128 xs!286)) e!3156361)))

(declare-fun b!5056241 () Bool)

(assert (=> b!5056241 (= e!3156361 (inv!77493 (right!43128 xs!286)))))

(declare-fun b!5056242 () Bool)

(declare-fun e!3156362 () Bool)

(assert (=> b!5056242 (= e!3156361 e!3156362)))

(declare-fun res!2153087 () Bool)

(assert (=> b!5056242 (= res!2153087 (not ((_ is Leaf!25833) (right!43128 xs!286))))))

(assert (=> b!5056242 (=> res!2153087 e!3156362)))

(declare-fun b!5056243 () Bool)

(assert (=> b!5056243 (= e!3156362 (inv!77494 (right!43128 xs!286)))))

(assert (= (and d!1627163 c!867441) b!5056241))

(assert (= (and d!1627163 (not c!867441)) b!5056242))

(assert (= (and b!5056242 (not res!2153087)) b!5056243))

(declare-fun m!6091096 () Bool)

(assert (=> b!5056241 m!6091096))

(declare-fun m!6091098 () Bool)

(assert (=> b!5056243 m!6091098))

(assert (=> b!5056099 d!1627163))

(declare-fun d!1627167 () Bool)

(declare-fun c!867442 () Bool)

(assert (=> d!1627167 (= c!867442 ((_ is Node!15552) (left!42798 ys!41)))))

(declare-fun e!3156363 () Bool)

(assert (=> d!1627167 (= (inv!77490 (left!42798 ys!41)) e!3156363)))

(declare-fun b!5056244 () Bool)

(assert (=> b!5056244 (= e!3156363 (inv!77493 (left!42798 ys!41)))))

(declare-fun b!5056245 () Bool)

(declare-fun e!3156364 () Bool)

(assert (=> b!5056245 (= e!3156363 e!3156364)))

(declare-fun res!2153088 () Bool)

(assert (=> b!5056245 (= res!2153088 (not ((_ is Leaf!25833) (left!42798 ys!41))))))

(assert (=> b!5056245 (=> res!2153088 e!3156364)))

(declare-fun b!5056246 () Bool)

(assert (=> b!5056246 (= e!3156364 (inv!77494 (left!42798 ys!41)))))

(assert (= (and d!1627167 c!867442) b!5056244))

(assert (= (and d!1627167 (not c!867442)) b!5056245))

(assert (= (and b!5056245 (not res!2153088)) b!5056246))

(declare-fun m!6091100 () Bool)

(assert (=> b!5056244 m!6091100))

(declare-fun m!6091102 () Bool)

(assert (=> b!5056246 m!6091102))

(assert (=> b!5056105 d!1627167))

(declare-fun d!1627169 () Bool)

(declare-fun c!867443 () Bool)

(assert (=> d!1627169 (= c!867443 ((_ is Node!15552) (right!43128 ys!41)))))

(declare-fun e!3156365 () Bool)

(assert (=> d!1627169 (= (inv!77490 (right!43128 ys!41)) e!3156365)))

(declare-fun b!5056247 () Bool)

(assert (=> b!5056247 (= e!3156365 (inv!77493 (right!43128 ys!41)))))

(declare-fun b!5056248 () Bool)

(declare-fun e!3156366 () Bool)

(assert (=> b!5056248 (= e!3156365 e!3156366)))

(declare-fun res!2153089 () Bool)

(assert (=> b!5056248 (= res!2153089 (not ((_ is Leaf!25833) (right!43128 ys!41))))))

(assert (=> b!5056248 (=> res!2153089 e!3156366)))

(declare-fun b!5056249 () Bool)

(assert (=> b!5056249 (= e!3156366 (inv!77494 (right!43128 ys!41)))))

(assert (= (and d!1627169 c!867443) b!5056247))

(assert (= (and d!1627169 (not c!867443)) b!5056248))

(assert (= (and b!5056248 (not res!2153089)) b!5056249))

(declare-fun m!6091104 () Bool)

(assert (=> b!5056247 m!6091104))

(declare-fun m!6091106 () Bool)

(assert (=> b!5056249 m!6091106))

(assert (=> b!5056105 d!1627169))

(declare-fun b!5056271 () Bool)

(declare-fun e!3156378 () List!58546)

(assert (=> b!5056271 (= e!3156378 (Cons!58422 (h!64870 lt!2087419) (++!12771 (t!371221 lt!2087419) lt!2087418)))))

(declare-fun b!5056272 () Bool)

(declare-fun res!2153101 () Bool)

(declare-fun e!3156377 () Bool)

(assert (=> b!5056272 (=> (not res!2153101) (not e!3156377))))

(declare-fun lt!2087427 () List!58546)

(assert (=> b!5056272 (= res!2153101 (= (size!39050 lt!2087427) (+ (size!39050 lt!2087419) (size!39050 lt!2087418))))))

(declare-fun b!5056273 () Bool)

(assert (=> b!5056273 (= e!3156377 (or (not (= lt!2087418 Nil!58422)) (= lt!2087427 lt!2087419)))))

(declare-fun d!1627171 () Bool)

(assert (=> d!1627171 e!3156377))

(declare-fun res!2153100 () Bool)

(assert (=> d!1627171 (=> (not res!2153100) (not e!3156377))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10410 (List!58546) (InoxSet T!105034))

(assert (=> d!1627171 (= res!2153100 (= (content!10410 lt!2087427) ((_ map or) (content!10410 lt!2087419) (content!10410 lt!2087418))))))

(assert (=> d!1627171 (= lt!2087427 e!3156378)))

(declare-fun c!867449 () Bool)

(assert (=> d!1627171 (= c!867449 ((_ is Nil!58422) lt!2087419))))

(assert (=> d!1627171 (= (++!12771 lt!2087419 lt!2087418) lt!2087427)))

(declare-fun b!5056270 () Bool)

(assert (=> b!5056270 (= e!3156378 lt!2087418)))

(assert (= (and d!1627171 c!867449) b!5056270))

(assert (= (and d!1627171 (not c!867449)) b!5056271))

(assert (= (and d!1627171 res!2153100) b!5056272))

(assert (= (and b!5056272 res!2153101) b!5056273))

(declare-fun m!6091122 () Bool)

(assert (=> b!5056271 m!6091122))

(declare-fun m!6091124 () Bool)

(assert (=> b!5056272 m!6091124))

(declare-fun m!6091126 () Bool)

(assert (=> b!5056272 m!6091126))

(declare-fun m!6091128 () Bool)

(assert (=> b!5056272 m!6091128))

(declare-fun m!6091130 () Bool)

(assert (=> d!1627171 m!6091130))

(declare-fun m!6091132 () Bool)

(assert (=> d!1627171 m!6091132))

(declare-fun m!6091134 () Bool)

(assert (=> d!1627171 m!6091134))

(assert (=> b!5056095 d!1627171))

(declare-fun b!5056309 () Bool)

(declare-fun e!3156397 () List!58546)

(assert (=> b!5056309 (= e!3156397 Nil!58422)))

(declare-fun b!5056311 () Bool)

(declare-fun e!3156398 () List!58546)

(declare-fun list!18967 (IArray!31165) List!58546)

(assert (=> b!5056311 (= e!3156398 (list!18967 (xs!18884 xs!286)))))

(declare-fun b!5056312 () Bool)

(assert (=> b!5056312 (= e!3156398 (++!12771 (list!18965 (left!42798 xs!286)) (list!18965 (right!43128 xs!286))))))

(declare-fun d!1627175 () Bool)

(declare-fun c!867462 () Bool)

(assert (=> d!1627175 (= c!867462 ((_ is Empty!15552) xs!286))))

(assert (=> d!1627175 (= (list!18965 xs!286) e!3156397)))

(declare-fun b!5056310 () Bool)

(assert (=> b!5056310 (= e!3156397 e!3156398)))

(declare-fun c!867463 () Bool)

(assert (=> b!5056310 (= c!867463 ((_ is Leaf!25833) xs!286))))

(assert (= (and d!1627175 c!867462) b!5056309))

(assert (= (and d!1627175 (not c!867462)) b!5056310))

(assert (= (and b!5056310 c!867463) b!5056311))

(assert (= (and b!5056310 (not c!867463)) b!5056312))

(declare-fun m!6091150 () Bool)

(assert (=> b!5056311 m!6091150))

(assert (=> b!5056312 m!6091040))

(assert (=> b!5056312 m!6091042))

(assert (=> b!5056312 m!6091040))

(assert (=> b!5056312 m!6091042))

(declare-fun m!6091158 () Bool)

(assert (=> b!5056312 m!6091158))

(assert (=> b!5056095 d!1627175))

(declare-fun b!5056319 () Bool)

(declare-fun e!3156403 () List!58546)

(assert (=> b!5056319 (= e!3156403 Nil!58422)))

(declare-fun b!5056321 () Bool)

(declare-fun e!3156404 () List!58546)

(assert (=> b!5056321 (= e!3156404 (list!18967 (xs!18884 ys!41)))))

(declare-fun b!5056322 () Bool)

(assert (=> b!5056322 (= e!3156404 (++!12771 (list!18965 (left!42798 ys!41)) (list!18965 (right!43128 ys!41))))))

(declare-fun d!1627179 () Bool)

(declare-fun c!867464 () Bool)

(assert (=> d!1627179 (= c!867464 ((_ is Empty!15552) ys!41))))

(assert (=> d!1627179 (= (list!18965 ys!41) e!3156403)))

(declare-fun b!5056320 () Bool)

(assert (=> b!5056320 (= e!3156403 e!3156404)))

(declare-fun c!867465 () Bool)

(assert (=> b!5056320 (= c!867465 ((_ is Leaf!25833) ys!41))))

(assert (= (and d!1627179 c!867464) b!5056319))

(assert (= (and d!1627179 (not c!867464)) b!5056320))

(assert (= (and b!5056320 c!867465) b!5056321))

(assert (= (and b!5056320 (not c!867465)) b!5056322))

(declare-fun m!6091166 () Bool)

(assert (=> b!5056321 m!6091166))

(assert (=> b!5056322 m!6091046))

(assert (=> b!5056322 m!6091034))

(assert (=> b!5056322 m!6091046))

(assert (=> b!5056322 m!6091034))

(declare-fun m!6091168 () Bool)

(assert (=> b!5056322 m!6091168))

(assert (=> b!5056095 d!1627179))

(declare-fun d!1627181 () Bool)

(assert (=> d!1627181 (= (inv!77489 (xs!18884 ys!41)) (<= (size!39050 (innerList!15640 (xs!18884 ys!41))) 2147483647))))

(declare-fun bs!1189391 () Bool)

(assert (= bs!1189391 d!1627181))

(declare-fun m!6091176 () Bool)

(assert (=> bs!1189391 m!6091176))

(assert (=> b!5056096 d!1627181))

(declare-fun b!5056330 () Bool)

(declare-fun e!3156410 () Bool)

(declare-fun e!3156409 () Bool)

(assert (=> b!5056330 (= e!3156410 e!3156409)))

(declare-fun res!2153107 () Bool)

(assert (=> b!5056330 (=> (not res!2153107) (not e!3156409))))

(assert (=> b!5056330 (= res!2153107 (<= (- 1) (- (height!2129 (left!42798 ys!41)) (height!2129 (right!43128 ys!41)))))))

(declare-fun b!5056331 () Bool)

(declare-fun res!2153105 () Bool)

(assert (=> b!5056331 (=> (not res!2153105) (not e!3156409))))

(assert (=> b!5056331 (= res!2153105 (isBalanced!4414 (left!42798 ys!41)))))

(declare-fun b!5056332 () Bool)

(assert (=> b!5056332 (= e!3156409 (not (isEmpty!31606 (right!43128 ys!41))))))

(declare-fun d!1627183 () Bool)

(declare-fun res!2153106 () Bool)

(assert (=> d!1627183 (=> res!2153106 e!3156410)))

(assert (=> d!1627183 (= res!2153106 (not ((_ is Node!15552) ys!41)))))

(assert (=> d!1627183 (= (isBalanced!4414 ys!41) e!3156410)))

(declare-fun b!5056333 () Bool)

(declare-fun res!2153102 () Bool)

(assert (=> b!5056333 (=> (not res!2153102) (not e!3156409))))

(assert (=> b!5056333 (= res!2153102 (isBalanced!4414 (right!43128 ys!41)))))

(declare-fun b!5056334 () Bool)

(declare-fun res!2153104 () Bool)

(assert (=> b!5056334 (=> (not res!2153104) (not e!3156409))))

(assert (=> b!5056334 (= res!2153104 (<= (- (height!2129 (left!42798 ys!41)) (height!2129 (right!43128 ys!41))) 1))))

(declare-fun b!5056335 () Bool)

(declare-fun res!2153103 () Bool)

(assert (=> b!5056335 (=> (not res!2153103) (not e!3156409))))

(assert (=> b!5056335 (= res!2153103 (not (isEmpty!31606 (left!42798 ys!41))))))

(assert (= (and d!1627183 (not res!2153106)) b!5056330))

(assert (= (and b!5056330 res!2153107) b!5056334))

(assert (= (and b!5056334 res!2153104) b!5056331))

(assert (= (and b!5056331 res!2153105) b!5056333))

(assert (= (and b!5056333 res!2153102) b!5056335))

(assert (= (and b!5056335 res!2153103) b!5056332))

(declare-fun m!6091178 () Bool)

(assert (=> b!5056333 m!6091178))

(declare-fun m!6091180 () Bool)

(assert (=> b!5056330 m!6091180))

(declare-fun m!6091182 () Bool)

(assert (=> b!5056330 m!6091182))

(assert (=> b!5056334 m!6091180))

(assert (=> b!5056334 m!6091182))

(declare-fun m!6091184 () Bool)

(assert (=> b!5056332 m!6091184))

(declare-fun m!6091186 () Bool)

(assert (=> b!5056331 m!6091186))

(declare-fun m!6091188 () Bool)

(assert (=> b!5056335 m!6091188))

(assert (=> b!5056101 d!1627183))

(declare-fun b!5056342 () Bool)

(declare-fun e!3156415 () Bool)

(declare-fun tp_is_empty!37027 () Bool)

(declare-fun tp!1413294 () Bool)

(assert (=> b!5056342 (= e!3156415 (and tp_is_empty!37027 tp!1413294))))

(assert (=> b!5056103 (= tp!1413265 e!3156415)))

(assert (= (and b!5056103 ((_ is Cons!58422) (innerList!15640 (xs!18884 ys!41)))) b!5056342))

(declare-fun e!3156421 () Bool)

(declare-fun b!5056351 () Bool)

(declare-fun tp!1413302 () Bool)

(declare-fun tp!1413303 () Bool)

(assert (=> b!5056351 (= e!3156421 (and (inv!77490 (left!42798 (left!42798 xs!286))) tp!1413303 (inv!77490 (right!43128 (left!42798 xs!286))) tp!1413302))))

(declare-fun b!5056353 () Bool)

(declare-fun e!3156420 () Bool)

(declare-fun tp!1413301 () Bool)

(assert (=> b!5056353 (= e!3156420 tp!1413301)))

(declare-fun b!5056352 () Bool)

(assert (=> b!5056352 (= e!3156421 (and (inv!77489 (xs!18884 (left!42798 xs!286))) e!3156420))))

(assert (=> b!5056099 (= tp!1413267 (and (inv!77490 (left!42798 xs!286)) e!3156421))))

(assert (= (and b!5056099 ((_ is Node!15552) (left!42798 xs!286))) b!5056351))

(assert (= b!5056352 b!5056353))

(assert (= (and b!5056099 ((_ is Leaf!25833) (left!42798 xs!286))) b!5056352))

(declare-fun m!6091190 () Bool)

(assert (=> b!5056351 m!6091190))

(declare-fun m!6091192 () Bool)

(assert (=> b!5056351 m!6091192))

(declare-fun m!6091194 () Bool)

(assert (=> b!5056352 m!6091194))

(assert (=> b!5056099 m!6090924))

(declare-fun tp!1413306 () Bool)

(declare-fun tp!1413305 () Bool)

(declare-fun b!5056354 () Bool)

(declare-fun e!3156423 () Bool)

(assert (=> b!5056354 (= e!3156423 (and (inv!77490 (left!42798 (right!43128 xs!286))) tp!1413306 (inv!77490 (right!43128 (right!43128 xs!286))) tp!1413305))))

(declare-fun b!5056356 () Bool)

(declare-fun e!3156422 () Bool)

(declare-fun tp!1413304 () Bool)

(assert (=> b!5056356 (= e!3156422 tp!1413304)))

(declare-fun b!5056355 () Bool)

(assert (=> b!5056355 (= e!3156423 (and (inv!77489 (xs!18884 (right!43128 xs!286))) e!3156422))))

(assert (=> b!5056099 (= tp!1413269 (and (inv!77490 (right!43128 xs!286)) e!3156423))))

(assert (= (and b!5056099 ((_ is Node!15552) (right!43128 xs!286))) b!5056354))

(assert (= b!5056355 b!5056356))

(assert (= (and b!5056099 ((_ is Leaf!25833) (right!43128 xs!286))) b!5056355))

(declare-fun m!6091196 () Bool)

(assert (=> b!5056354 m!6091196))

(declare-fun m!6091198 () Bool)

(assert (=> b!5056354 m!6091198))

(declare-fun m!6091200 () Bool)

(assert (=> b!5056355 m!6091200))

(assert (=> b!5056099 m!6090926))

(declare-fun b!5056357 () Bool)

(declare-fun e!3156424 () Bool)

(declare-fun tp!1413307 () Bool)

(assert (=> b!5056357 (= e!3156424 (and tp_is_empty!37027 tp!1413307))))

(assert (=> b!5056100 (= tp!1413266 e!3156424)))

(assert (= (and b!5056100 ((_ is Cons!58422) (innerList!15640 (xs!18884 xs!286)))) b!5056357))

(declare-fun tp!1413309 () Bool)

(declare-fun tp!1413310 () Bool)

(declare-fun b!5056358 () Bool)

(declare-fun e!3156426 () Bool)

(assert (=> b!5056358 (= e!3156426 (and (inv!77490 (left!42798 (left!42798 ys!41))) tp!1413310 (inv!77490 (right!43128 (left!42798 ys!41))) tp!1413309))))

(declare-fun b!5056360 () Bool)

(declare-fun e!3156425 () Bool)

(declare-fun tp!1413308 () Bool)

(assert (=> b!5056360 (= e!3156425 tp!1413308)))

(declare-fun b!5056359 () Bool)

(assert (=> b!5056359 (= e!3156426 (and (inv!77489 (xs!18884 (left!42798 ys!41))) e!3156425))))

(assert (=> b!5056105 (= tp!1413268 (and (inv!77490 (left!42798 ys!41)) e!3156426))))

(assert (= (and b!5056105 ((_ is Node!15552) (left!42798 ys!41))) b!5056358))

(assert (= b!5056359 b!5056360))

(assert (= (and b!5056105 ((_ is Leaf!25833) (left!42798 ys!41))) b!5056359))

(declare-fun m!6091202 () Bool)

(assert (=> b!5056358 m!6091202))

(declare-fun m!6091204 () Bool)

(assert (=> b!5056358 m!6091204))

(declare-fun m!6091206 () Bool)

(assert (=> b!5056359 m!6091206))

(assert (=> b!5056105 m!6090950))

(declare-fun tp!1413312 () Bool)

(declare-fun b!5056361 () Bool)

(declare-fun e!3156428 () Bool)

(declare-fun tp!1413313 () Bool)

(assert (=> b!5056361 (= e!3156428 (and (inv!77490 (left!42798 (right!43128 ys!41))) tp!1413313 (inv!77490 (right!43128 (right!43128 ys!41))) tp!1413312))))

(declare-fun b!5056363 () Bool)

(declare-fun e!3156427 () Bool)

(declare-fun tp!1413311 () Bool)

(assert (=> b!5056363 (= e!3156427 tp!1413311)))

(declare-fun b!5056362 () Bool)

(assert (=> b!5056362 (= e!3156428 (and (inv!77489 (xs!18884 (right!43128 ys!41))) e!3156427))))

(assert (=> b!5056105 (= tp!1413264 (and (inv!77490 (right!43128 ys!41)) e!3156428))))

(assert (= (and b!5056105 ((_ is Node!15552) (right!43128 ys!41))) b!5056361))

(assert (= b!5056362 b!5056363))

(assert (= (and b!5056105 ((_ is Leaf!25833) (right!43128 ys!41))) b!5056362))

(declare-fun m!6091208 () Bool)

(assert (=> b!5056361 m!6091208))

(declare-fun m!6091210 () Bool)

(assert (=> b!5056361 m!6091210))

(declare-fun m!6091212 () Bool)

(assert (=> b!5056362 m!6091212))

(assert (=> b!5056105 m!6090952))

(check-sat (not b!5056130) (not b!5056363) (not b!5056247) (not b!5056321) (not b!5056360) (not d!1627119) (not b!5056241) (not b!5056271) (not b!5056135) (not b!5056246) (not b!5056227) (not b!5056332) (not b!5056357) (not b!5056099) (not b!5056352) (not b!5056240) (not b!5056355) (not b!5056356) (not b!5056334) (not b!5056322) (not b!5056163) (not b!5056225) (not b!5056105) (not b!5056131) (not b!5056311) (not b!5056132) (not b!5056342) (not b!5056359) (not b!5056353) (not b!5056272) (not b!5056134) (not b!5056165) (not b!5056154) (not b!5056361) (not b!5056223) (not b!5056226) (not b!5056331) tp_is_empty!37027 (not b!5056354) (not b!5056362) (not b!5056312) (not b!5056249) (not b!5056238) (not d!1627181) (not b!5056333) (not b!5056335) (not b!5056244) (not d!1627171) (not b!5056220) (not b!5056351) (not b!5056243) (not b!5056224) (not b!5056156) (not b!5056358) (not b!5056330) (not b!5056133))
(check-sat)
(get-model)

(declare-fun d!1627185 () Bool)

(declare-fun c!867466 () Bool)

(assert (=> d!1627185 (= c!867466 ((_ is Node!15552) (left!42798 (left!42798 ys!41))))))

(declare-fun e!3156429 () Bool)

(assert (=> d!1627185 (= (inv!77490 (left!42798 (left!42798 ys!41))) e!3156429)))

(declare-fun b!5056364 () Bool)

(assert (=> b!5056364 (= e!3156429 (inv!77493 (left!42798 (left!42798 ys!41))))))

(declare-fun b!5056365 () Bool)

(declare-fun e!3156430 () Bool)

(assert (=> b!5056365 (= e!3156429 e!3156430)))

(declare-fun res!2153108 () Bool)

(assert (=> b!5056365 (= res!2153108 (not ((_ is Leaf!25833) (left!42798 (left!42798 ys!41)))))))

(assert (=> b!5056365 (=> res!2153108 e!3156430)))

(declare-fun b!5056366 () Bool)

(assert (=> b!5056366 (= e!3156430 (inv!77494 (left!42798 (left!42798 ys!41))))))

(assert (= (and d!1627185 c!867466) b!5056364))

(assert (= (and d!1627185 (not c!867466)) b!5056365))

(assert (= (and b!5056365 (not res!2153108)) b!5056366))

(declare-fun m!6091214 () Bool)

(assert (=> b!5056364 m!6091214))

(declare-fun m!6091216 () Bool)

(assert (=> b!5056366 m!6091216))

(assert (=> b!5056358 d!1627185))

(declare-fun d!1627187 () Bool)

(declare-fun c!867467 () Bool)

(assert (=> d!1627187 (= c!867467 ((_ is Node!15552) (right!43128 (left!42798 ys!41))))))

(declare-fun e!3156431 () Bool)

(assert (=> d!1627187 (= (inv!77490 (right!43128 (left!42798 ys!41))) e!3156431)))

(declare-fun b!5056367 () Bool)

(assert (=> b!5056367 (= e!3156431 (inv!77493 (right!43128 (left!42798 ys!41))))))

(declare-fun b!5056368 () Bool)

(declare-fun e!3156432 () Bool)

(assert (=> b!5056368 (= e!3156431 e!3156432)))

(declare-fun res!2153109 () Bool)

(assert (=> b!5056368 (= res!2153109 (not ((_ is Leaf!25833) (right!43128 (left!42798 ys!41)))))))

(assert (=> b!5056368 (=> res!2153109 e!3156432)))

(declare-fun b!5056369 () Bool)

(assert (=> b!5056369 (= e!3156432 (inv!77494 (right!43128 (left!42798 ys!41))))))

(assert (= (and d!1627187 c!867467) b!5056367))

(assert (= (and d!1627187 (not c!867467)) b!5056368))

(assert (= (and b!5056368 (not res!2153109)) b!5056369))

(declare-fun m!6091218 () Bool)

(assert (=> b!5056367 m!6091218))

(declare-fun m!6091220 () Bool)

(assert (=> b!5056369 m!6091220))

(assert (=> b!5056358 d!1627187))

(declare-fun d!1627189 () Bool)

(declare-fun res!2153114 () Bool)

(declare-fun e!3156435 () Bool)

(assert (=> d!1627189 (=> (not res!2153114) (not e!3156435))))

(assert (=> d!1627189 (= res!2153114 (<= (size!39050 (list!18967 (xs!18884 (right!43128 ys!41)))) 512))))

(assert (=> d!1627189 (= (inv!77494 (right!43128 ys!41)) e!3156435)))

(declare-fun b!5056374 () Bool)

(declare-fun res!2153115 () Bool)

(assert (=> b!5056374 (=> (not res!2153115) (not e!3156435))))

(assert (=> b!5056374 (= res!2153115 (= (csize!31335 (right!43128 ys!41)) (size!39050 (list!18967 (xs!18884 (right!43128 ys!41))))))))

(declare-fun b!5056375 () Bool)

(assert (=> b!5056375 (= e!3156435 (and (> (csize!31335 (right!43128 ys!41)) 0) (<= (csize!31335 (right!43128 ys!41)) 512)))))

(assert (= (and d!1627189 res!2153114) b!5056374))

(assert (= (and b!5056374 res!2153115) b!5056375))

(declare-fun m!6091222 () Bool)

(assert (=> d!1627189 m!6091222))

(assert (=> d!1627189 m!6091222))

(declare-fun m!6091224 () Bool)

(assert (=> d!1627189 m!6091224))

(assert (=> b!5056374 m!6091222))

(assert (=> b!5056374 m!6091222))

(assert (=> b!5056374 m!6091224))

(assert (=> b!5056249 d!1627189))

(declare-fun b!5056377 () Bool)

(declare-fun e!3156437 () List!58546)

(assert (=> b!5056377 (= e!3156437 (Cons!58422 (h!64870 (t!371221 lt!2087419)) (++!12771 (t!371221 (t!371221 lt!2087419)) lt!2087418)))))

(declare-fun b!5056378 () Bool)

(declare-fun res!2153117 () Bool)

(declare-fun e!3156436 () Bool)

(assert (=> b!5056378 (=> (not res!2153117) (not e!3156436))))

(declare-fun lt!2087428 () List!58546)

(assert (=> b!5056378 (= res!2153117 (= (size!39050 lt!2087428) (+ (size!39050 (t!371221 lt!2087419)) (size!39050 lt!2087418))))))

(declare-fun b!5056379 () Bool)

(assert (=> b!5056379 (= e!3156436 (or (not (= lt!2087418 Nil!58422)) (= lt!2087428 (t!371221 lt!2087419))))))

(declare-fun d!1627191 () Bool)

(assert (=> d!1627191 e!3156436))

(declare-fun res!2153116 () Bool)

(assert (=> d!1627191 (=> (not res!2153116) (not e!3156436))))

(assert (=> d!1627191 (= res!2153116 (= (content!10410 lt!2087428) ((_ map or) (content!10410 (t!371221 lt!2087419)) (content!10410 lt!2087418))))))

(assert (=> d!1627191 (= lt!2087428 e!3156437)))

(declare-fun c!867468 () Bool)

(assert (=> d!1627191 (= c!867468 ((_ is Nil!58422) (t!371221 lt!2087419)))))

(assert (=> d!1627191 (= (++!12771 (t!371221 lt!2087419) lt!2087418) lt!2087428)))

(declare-fun b!5056376 () Bool)

(assert (=> b!5056376 (= e!3156437 lt!2087418)))

(assert (= (and d!1627191 c!867468) b!5056376))

(assert (= (and d!1627191 (not c!867468)) b!5056377))

(assert (= (and d!1627191 res!2153116) b!5056378))

(assert (= (and b!5056378 res!2153117) b!5056379))

(declare-fun m!6091226 () Bool)

(assert (=> b!5056377 m!6091226))

(declare-fun m!6091228 () Bool)

(assert (=> b!5056378 m!6091228))

(declare-fun m!6091230 () Bool)

(assert (=> b!5056378 m!6091230))

(assert (=> b!5056378 m!6091128))

(declare-fun m!6091232 () Bool)

(assert (=> d!1627191 m!6091232))

(declare-fun m!6091234 () Bool)

(assert (=> d!1627191 m!6091234))

(assert (=> d!1627191 m!6091134))

(assert (=> b!5056271 d!1627191))

(declare-fun d!1627193 () Bool)

(assert (=> d!1627193 (= (inv!77489 (xs!18884 (right!43128 ys!41))) (<= (size!39050 (innerList!15640 (xs!18884 (right!43128 ys!41)))) 2147483647))))

(declare-fun bs!1189392 () Bool)

(assert (= bs!1189392 d!1627193))

(declare-fun m!6091236 () Bool)

(assert (=> bs!1189392 m!6091236))

(assert (=> b!5056362 d!1627193))

(declare-fun b!5056381 () Bool)

(declare-fun e!3156439 () List!58546)

(assert (=> b!5056381 (= e!3156439 (Cons!58422 (h!64870 (list!18965 (left!42798 ys!41))) (++!12771 (t!371221 (list!18965 (left!42798 ys!41))) (list!18965 (right!43128 ys!41)))))))

(declare-fun b!5056382 () Bool)

(declare-fun res!2153119 () Bool)

(declare-fun e!3156438 () Bool)

(assert (=> b!5056382 (=> (not res!2153119) (not e!3156438))))

(declare-fun lt!2087429 () List!58546)

(assert (=> b!5056382 (= res!2153119 (= (size!39050 lt!2087429) (+ (size!39050 (list!18965 (left!42798 ys!41))) (size!39050 (list!18965 (right!43128 ys!41))))))))

(declare-fun b!5056383 () Bool)

(assert (=> b!5056383 (= e!3156438 (or (not (= (list!18965 (right!43128 ys!41)) Nil!58422)) (= lt!2087429 (list!18965 (left!42798 ys!41)))))))

(declare-fun d!1627195 () Bool)

(assert (=> d!1627195 e!3156438))

(declare-fun res!2153118 () Bool)

(assert (=> d!1627195 (=> (not res!2153118) (not e!3156438))))

(assert (=> d!1627195 (= res!2153118 (= (content!10410 lt!2087429) ((_ map or) (content!10410 (list!18965 (left!42798 ys!41))) (content!10410 (list!18965 (right!43128 ys!41))))))))

(assert (=> d!1627195 (= lt!2087429 e!3156439)))

(declare-fun c!867469 () Bool)

(assert (=> d!1627195 (= c!867469 ((_ is Nil!58422) (list!18965 (left!42798 ys!41))))))

(assert (=> d!1627195 (= (++!12771 (list!18965 (left!42798 ys!41)) (list!18965 (right!43128 ys!41))) lt!2087429)))

(declare-fun b!5056380 () Bool)

(assert (=> b!5056380 (= e!3156439 (list!18965 (right!43128 ys!41)))))

(assert (= (and d!1627195 c!867469) b!5056380))

(assert (= (and d!1627195 (not c!867469)) b!5056381))

(assert (= (and d!1627195 res!2153118) b!5056382))

(assert (= (and b!5056382 res!2153119) b!5056383))

(assert (=> b!5056381 m!6091034))

(declare-fun m!6091238 () Bool)

(assert (=> b!5056381 m!6091238))

(declare-fun m!6091240 () Bool)

(assert (=> b!5056382 m!6091240))

(assert (=> b!5056382 m!6091046))

(declare-fun m!6091242 () Bool)

(assert (=> b!5056382 m!6091242))

(assert (=> b!5056382 m!6091034))

(declare-fun m!6091244 () Bool)

(assert (=> b!5056382 m!6091244))

(declare-fun m!6091246 () Bool)

(assert (=> d!1627195 m!6091246))

(assert (=> d!1627195 m!6091046))

(declare-fun m!6091248 () Bool)

(assert (=> d!1627195 m!6091248))

(assert (=> d!1627195 m!6091034))

(declare-fun m!6091250 () Bool)

(assert (=> d!1627195 m!6091250))

(assert (=> b!5056322 d!1627195))

(declare-fun b!5056384 () Bool)

(declare-fun e!3156440 () List!58546)

(assert (=> b!5056384 (= e!3156440 Nil!58422)))

(declare-fun b!5056386 () Bool)

(declare-fun e!3156441 () List!58546)

(assert (=> b!5056386 (= e!3156441 (list!18967 (xs!18884 (left!42798 ys!41))))))

(declare-fun b!5056387 () Bool)

(assert (=> b!5056387 (= e!3156441 (++!12771 (list!18965 (left!42798 (left!42798 ys!41))) (list!18965 (right!43128 (left!42798 ys!41)))))))

(declare-fun d!1627197 () Bool)

(declare-fun c!867470 () Bool)

(assert (=> d!1627197 (= c!867470 ((_ is Empty!15552) (left!42798 ys!41)))))

(assert (=> d!1627197 (= (list!18965 (left!42798 ys!41)) e!3156440)))

(declare-fun b!5056385 () Bool)

(assert (=> b!5056385 (= e!3156440 e!3156441)))

(declare-fun c!867471 () Bool)

(assert (=> b!5056385 (= c!867471 ((_ is Leaf!25833) (left!42798 ys!41)))))

(assert (= (and d!1627197 c!867470) b!5056384))

(assert (= (and d!1627197 (not c!867470)) b!5056385))

(assert (= (and b!5056385 c!867471) b!5056386))

(assert (= (and b!5056385 (not c!867471)) b!5056387))

(declare-fun m!6091252 () Bool)

(assert (=> b!5056386 m!6091252))

(assert (=> b!5056387 m!6091028))

(assert (=> b!5056387 m!6091032))

(assert (=> b!5056387 m!6091028))

(assert (=> b!5056387 m!6091032))

(declare-fun m!6091254 () Bool)

(assert (=> b!5056387 m!6091254))

(assert (=> b!5056322 d!1627197))

(declare-fun b!5056388 () Bool)

(declare-fun e!3156442 () List!58546)

(assert (=> b!5056388 (= e!3156442 Nil!58422)))

(declare-fun b!5056390 () Bool)

(declare-fun e!3156443 () List!58546)

(assert (=> b!5056390 (= e!3156443 (list!18967 (xs!18884 (right!43128 ys!41))))))

(declare-fun b!5056391 () Bool)

(assert (=> b!5056391 (= e!3156443 (++!12771 (list!18965 (left!42798 (right!43128 ys!41))) (list!18965 (right!43128 (right!43128 ys!41)))))))

(declare-fun d!1627199 () Bool)

(declare-fun c!867472 () Bool)

(assert (=> d!1627199 (= c!867472 ((_ is Empty!15552) (right!43128 ys!41)))))

(assert (=> d!1627199 (= (list!18965 (right!43128 ys!41)) e!3156442)))

(declare-fun b!5056389 () Bool)

(assert (=> b!5056389 (= e!3156442 e!3156443)))

(declare-fun c!867473 () Bool)

(assert (=> b!5056389 (= c!867473 ((_ is Leaf!25833) (right!43128 ys!41)))))

(assert (= (and d!1627199 c!867472) b!5056388))

(assert (= (and d!1627199 (not c!867472)) b!5056389))

(assert (= (and b!5056389 c!867473) b!5056390))

(assert (= (and b!5056389 (not c!867473)) b!5056391))

(assert (=> b!5056390 m!6091222))

(declare-fun m!6091256 () Bool)

(assert (=> b!5056391 m!6091256))

(declare-fun m!6091258 () Bool)

(assert (=> b!5056391 m!6091258))

(assert (=> b!5056391 m!6091256))

(assert (=> b!5056391 m!6091258))

(declare-fun m!6091260 () Bool)

(assert (=> b!5056391 m!6091260))

(assert (=> b!5056322 d!1627199))

(declare-fun bm!352105 () Bool)

(declare-fun call!352110 () List!58546)

(declare-fun call!352112 () List!58546)

(assert (=> bm!352105 (= call!352110 (++!12771 call!352112 (list!18965 (right!43128 (left!42798 ys!41)))))))

(declare-fun d!1627201 () Bool)

(declare-fun e!3156451 () Bool)

(assert (=> d!1627201 e!3156451))

(declare-fun c!867481 () Bool)

(assert (=> d!1627201 (= c!867481 ((_ is Nil!58422) (list!18965 xs!286)))))

(assert (=> d!1627201 (= (appendAssoc!293 (list!18965 xs!286) (list!18965 (left!42798 (left!42798 ys!41))) (list!18965 (right!43128 (left!42798 ys!41)))) true)))

(declare-fun b!5056406 () Bool)

(declare-fun call!352113 () List!58546)

(assert (=> b!5056406 (= e!3156451 (= call!352110 call!352113))))

(declare-fun bm!352106 () Bool)

(declare-fun call!352111 () List!58546)

(assert (=> bm!352106 (= call!352111 (++!12771 (list!18965 (left!42798 (left!42798 ys!41))) (list!18965 (right!43128 (left!42798 ys!41)))))))

(declare-fun bm!352107 () Bool)

(assert (=> bm!352107 (= call!352113 (++!12771 (list!18965 xs!286) call!352111))))

(declare-fun b!5056407 () Bool)

(assert (=> b!5056407 (= e!3156451 (= call!352110 call!352113))))

(declare-fun lt!2087437 () Bool)

(assert (=> b!5056407 (= lt!2087437 (appendAssoc!293 (t!371221 (list!18965 xs!286)) (list!18965 (left!42798 (left!42798 ys!41))) (list!18965 (right!43128 (left!42798 ys!41)))))))

(declare-fun bm!352108 () Bool)

(assert (=> bm!352108 (= call!352112 (++!12771 (list!18965 xs!286) (list!18965 (left!42798 (left!42798 ys!41)))))))

(assert (= (and d!1627201 c!867481) b!5056406))

(assert (= (and d!1627201 (not c!867481)) b!5056407))

(assert (= (or b!5056406 b!5056407) bm!352108))

(assert (= (or b!5056406 b!5056407) bm!352106))

(assert (= (or b!5056406 b!5056407) bm!352107))

(assert (= (or b!5056406 b!5056407) bm!352105))

(assert (=> bm!352105 m!6091032))

(declare-fun m!6091268 () Bool)

(assert (=> bm!352105 m!6091268))

(assert (=> bm!352107 m!6090938))

(declare-fun m!6091270 () Bool)

(assert (=> bm!352107 m!6091270))

(assert (=> bm!352108 m!6090938))

(assert (=> bm!352108 m!6091028))

(assert (=> bm!352108 m!6091030))

(assert (=> bm!352106 m!6091028))

(assert (=> bm!352106 m!6091032))

(assert (=> bm!352106 m!6091254))

(assert (=> b!5056407 m!6091028))

(assert (=> b!5056407 m!6091032))

(declare-fun m!6091272 () Bool)

(assert (=> b!5056407 m!6091272))

(assert (=> b!5056227 d!1627201))

(assert (=> b!5056227 d!1627175))

(declare-fun b!5056408 () Bool)

(declare-fun e!3156452 () List!58546)

(assert (=> b!5056408 (= e!3156452 Nil!58422)))

(declare-fun b!5056410 () Bool)

(declare-fun e!3156453 () List!58546)

(assert (=> b!5056410 (= e!3156453 (list!18967 (xs!18884 (left!42798 (left!42798 ys!41)))))))

(declare-fun b!5056411 () Bool)

(assert (=> b!5056411 (= e!3156453 (++!12771 (list!18965 (left!42798 (left!42798 (left!42798 ys!41)))) (list!18965 (right!43128 (left!42798 (left!42798 ys!41))))))))

(declare-fun d!1627211 () Bool)

(declare-fun c!867482 () Bool)

(assert (=> d!1627211 (= c!867482 ((_ is Empty!15552) (left!42798 (left!42798 ys!41))))))

(assert (=> d!1627211 (= (list!18965 (left!42798 (left!42798 ys!41))) e!3156452)))

(declare-fun b!5056409 () Bool)

(assert (=> b!5056409 (= e!3156452 e!3156453)))

(declare-fun c!867483 () Bool)

(assert (=> b!5056409 (= c!867483 ((_ is Leaf!25833) (left!42798 (left!42798 ys!41))))))

(assert (= (and d!1627211 c!867482) b!5056408))

(assert (= (and d!1627211 (not c!867482)) b!5056409))

(assert (= (and b!5056409 c!867483) b!5056410))

(assert (= (and b!5056409 (not c!867483)) b!5056411))

(declare-fun m!6091274 () Bool)

(assert (=> b!5056410 m!6091274))

(declare-fun m!6091276 () Bool)

(assert (=> b!5056411 m!6091276))

(declare-fun m!6091278 () Bool)

(assert (=> b!5056411 m!6091278))

(assert (=> b!5056411 m!6091276))

(assert (=> b!5056411 m!6091278))

(declare-fun m!6091280 () Bool)

(assert (=> b!5056411 m!6091280))

(assert (=> b!5056227 d!1627211))

(declare-fun b!5056412 () Bool)

(declare-fun e!3156454 () List!58546)

(assert (=> b!5056412 (= e!3156454 Nil!58422)))

(declare-fun b!5056414 () Bool)

(declare-fun e!3156455 () List!58546)

(assert (=> b!5056414 (= e!3156455 (list!18967 (xs!18884 (right!43128 (left!42798 ys!41)))))))

(declare-fun b!5056415 () Bool)

(assert (=> b!5056415 (= e!3156455 (++!12771 (list!18965 (left!42798 (right!43128 (left!42798 ys!41)))) (list!18965 (right!43128 (right!43128 (left!42798 ys!41))))))))

(declare-fun d!1627213 () Bool)

(declare-fun c!867484 () Bool)

(assert (=> d!1627213 (= c!867484 ((_ is Empty!15552) (right!43128 (left!42798 ys!41))))))

(assert (=> d!1627213 (= (list!18965 (right!43128 (left!42798 ys!41))) e!3156454)))

(declare-fun b!5056413 () Bool)

(assert (=> b!5056413 (= e!3156454 e!3156455)))

(declare-fun c!867485 () Bool)

(assert (=> b!5056413 (= c!867485 ((_ is Leaf!25833) (right!43128 (left!42798 ys!41))))))

(assert (= (and d!1627213 c!867484) b!5056412))

(assert (= (and d!1627213 (not c!867484)) b!5056413))

(assert (= (and b!5056413 c!867485) b!5056414))

(assert (= (and b!5056413 (not c!867485)) b!5056415))

(declare-fun m!6091286 () Bool)

(assert (=> b!5056414 m!6091286))

(declare-fun m!6091288 () Bool)

(assert (=> b!5056415 m!6091288))

(declare-fun m!6091290 () Bool)

(assert (=> b!5056415 m!6091290))

(assert (=> b!5056415 m!6091288))

(assert (=> b!5056415 m!6091290))

(declare-fun m!6091292 () Bool)

(assert (=> b!5056415 m!6091292))

(assert (=> b!5056227 d!1627213))

(declare-fun b!5056421 () Bool)

(declare-fun e!3156459 () List!58546)

(assert (=> b!5056421 (= e!3156459 (Cons!58422 (h!64870 (list!18965 (left!42798 xs!286))) (++!12771 (t!371221 (list!18965 (left!42798 xs!286))) (list!18965 (right!43128 xs!286)))))))

(declare-fun b!5056422 () Bool)

(declare-fun res!2153121 () Bool)

(declare-fun e!3156458 () Bool)

(assert (=> b!5056422 (=> (not res!2153121) (not e!3156458))))

(declare-fun lt!2087441 () List!58546)

(assert (=> b!5056422 (= res!2153121 (= (size!39050 lt!2087441) (+ (size!39050 (list!18965 (left!42798 xs!286))) (size!39050 (list!18965 (right!43128 xs!286))))))))

(declare-fun b!5056423 () Bool)

(assert (=> b!5056423 (= e!3156458 (or (not (= (list!18965 (right!43128 xs!286)) Nil!58422)) (= lt!2087441 (list!18965 (left!42798 xs!286)))))))

(declare-fun d!1627217 () Bool)

(assert (=> d!1627217 e!3156458))

(declare-fun res!2153120 () Bool)

(assert (=> d!1627217 (=> (not res!2153120) (not e!3156458))))

(assert (=> d!1627217 (= res!2153120 (= (content!10410 lt!2087441) ((_ map or) (content!10410 (list!18965 (left!42798 xs!286))) (content!10410 (list!18965 (right!43128 xs!286))))))))

(assert (=> d!1627217 (= lt!2087441 e!3156459)))

(declare-fun c!867488 () Bool)

(assert (=> d!1627217 (= c!867488 ((_ is Nil!58422) (list!18965 (left!42798 xs!286))))))

(assert (=> d!1627217 (= (++!12771 (list!18965 (left!42798 xs!286)) (list!18965 (right!43128 xs!286))) lt!2087441)))

(declare-fun b!5056420 () Bool)

(assert (=> b!5056420 (= e!3156459 (list!18965 (right!43128 xs!286)))))

(assert (= (and d!1627217 c!867488) b!5056420))

(assert (= (and d!1627217 (not c!867488)) b!5056421))

(assert (= (and d!1627217 res!2153120) b!5056422))

(assert (= (and b!5056422 res!2153121) b!5056423))

(assert (=> b!5056421 m!6091042))

(declare-fun m!6091302 () Bool)

(assert (=> b!5056421 m!6091302))

(declare-fun m!6091304 () Bool)

(assert (=> b!5056422 m!6091304))

(assert (=> b!5056422 m!6091040))

(declare-fun m!6091308 () Bool)

(assert (=> b!5056422 m!6091308))

(assert (=> b!5056422 m!6091042))

(declare-fun m!6091312 () Bool)

(assert (=> b!5056422 m!6091312))

(declare-fun m!6091316 () Bool)

(assert (=> d!1627217 m!6091316))

(assert (=> d!1627217 m!6091040))

(declare-fun m!6091318 () Bool)

(assert (=> d!1627217 m!6091318))

(assert (=> d!1627217 m!6091042))

(declare-fun m!6091322 () Bool)

(assert (=> d!1627217 m!6091322))

(assert (=> b!5056312 d!1627217))

(declare-fun b!5056428 () Bool)

(declare-fun e!3156462 () List!58546)

(assert (=> b!5056428 (= e!3156462 Nil!58422)))

(declare-fun b!5056430 () Bool)

(declare-fun e!3156463 () List!58546)

(assert (=> b!5056430 (= e!3156463 (list!18967 (xs!18884 (left!42798 xs!286))))))

(declare-fun b!5056431 () Bool)

(assert (=> b!5056431 (= e!3156463 (++!12771 (list!18965 (left!42798 (left!42798 xs!286))) (list!18965 (right!43128 (left!42798 xs!286)))))))

(declare-fun d!1627221 () Bool)

(declare-fun c!867491 () Bool)

(assert (=> d!1627221 (= c!867491 ((_ is Empty!15552) (left!42798 xs!286)))))

(assert (=> d!1627221 (= (list!18965 (left!42798 xs!286)) e!3156462)))

(declare-fun b!5056429 () Bool)

(assert (=> b!5056429 (= e!3156462 e!3156463)))

(declare-fun c!867492 () Bool)

(assert (=> b!5056429 (= c!867492 ((_ is Leaf!25833) (left!42798 xs!286)))))

(assert (= (and d!1627221 c!867491) b!5056428))

(assert (= (and d!1627221 (not c!867491)) b!5056429))

(assert (= (and b!5056429 c!867492) b!5056430))

(assert (= (and b!5056429 (not c!867492)) b!5056431))

(declare-fun m!6091324 () Bool)

(assert (=> b!5056430 m!6091324))

(declare-fun m!6091326 () Bool)

(assert (=> b!5056431 m!6091326))

(declare-fun m!6091328 () Bool)

(assert (=> b!5056431 m!6091328))

(assert (=> b!5056431 m!6091326))

(assert (=> b!5056431 m!6091328))

(declare-fun m!6091330 () Bool)

(assert (=> b!5056431 m!6091330))

(assert (=> b!5056312 d!1627221))

(declare-fun b!5056432 () Bool)

(declare-fun e!3156464 () List!58546)

(assert (=> b!5056432 (= e!3156464 Nil!58422)))

(declare-fun b!5056434 () Bool)

(declare-fun e!3156465 () List!58546)

(assert (=> b!5056434 (= e!3156465 (list!18967 (xs!18884 (right!43128 xs!286))))))

(declare-fun b!5056435 () Bool)

(assert (=> b!5056435 (= e!3156465 (++!12771 (list!18965 (left!42798 (right!43128 xs!286))) (list!18965 (right!43128 (right!43128 xs!286)))))))

(declare-fun d!1627225 () Bool)

(declare-fun c!867493 () Bool)

(assert (=> d!1627225 (= c!867493 ((_ is Empty!15552) (right!43128 xs!286)))))

(assert (=> d!1627225 (= (list!18965 (right!43128 xs!286)) e!3156464)))

(declare-fun b!5056433 () Bool)

(assert (=> b!5056433 (= e!3156464 e!3156465)))

(declare-fun c!867494 () Bool)

(assert (=> b!5056433 (= c!867494 ((_ is Leaf!25833) (right!43128 xs!286)))))

(assert (= (and d!1627225 c!867493) b!5056432))

(assert (= (and d!1627225 (not c!867493)) b!5056433))

(assert (= (and b!5056433 c!867494) b!5056434))

(assert (= (and b!5056433 (not c!867494)) b!5056435))

(declare-fun m!6091332 () Bool)

(assert (=> b!5056434 m!6091332))

(assert (=> b!5056435 m!6091050))

(assert (=> b!5056435 m!6091052))

(assert (=> b!5056435 m!6091050))

(assert (=> b!5056435 m!6091052))

(declare-fun m!6091334 () Bool)

(assert (=> b!5056435 m!6091334))

(assert (=> b!5056312 d!1627225))

(declare-fun d!1627227 () Bool)

(declare-fun res!2153128 () Bool)

(declare-fun e!3156471 () Bool)

(assert (=> d!1627227 (=> (not res!2153128) (not e!3156471))))

(declare-fun size!39053 (Conc!15552) Int)

(assert (=> d!1627227 (= res!2153128 (= (csize!31334 (right!43128 ys!41)) (+ (size!39053 (left!42798 (right!43128 ys!41))) (size!39053 (right!43128 (right!43128 ys!41))))))))

(assert (=> d!1627227 (= (inv!77493 (right!43128 ys!41)) e!3156471)))

(declare-fun b!5056448 () Bool)

(declare-fun res!2153129 () Bool)

(assert (=> b!5056448 (=> (not res!2153129) (not e!3156471))))

(assert (=> b!5056448 (= res!2153129 (and (not (= (left!42798 (right!43128 ys!41)) Empty!15552)) (not (= (right!43128 (right!43128 ys!41)) Empty!15552))))))

(declare-fun b!5056449 () Bool)

(declare-fun res!2153130 () Bool)

(assert (=> b!5056449 (=> (not res!2153130) (not e!3156471))))

(assert (=> b!5056449 (= res!2153130 (= (cheight!15763 (right!43128 ys!41)) (+ (max!0 (height!2129 (left!42798 (right!43128 ys!41))) (height!2129 (right!43128 (right!43128 ys!41)))) 1)))))

(declare-fun b!5056450 () Bool)

(assert (=> b!5056450 (= e!3156471 (<= 0 (cheight!15763 (right!43128 ys!41))))))

(assert (= (and d!1627227 res!2153128) b!5056448))

(assert (= (and b!5056448 res!2153129) b!5056449))

(assert (= (and b!5056449 res!2153130) b!5056450))

(declare-fun m!6091346 () Bool)

(assert (=> d!1627227 m!6091346))

(declare-fun m!6091348 () Bool)

(assert (=> d!1627227 m!6091348))

(declare-fun m!6091350 () Bool)

(assert (=> b!5056449 m!6091350))

(declare-fun m!6091352 () Bool)

(assert (=> b!5056449 m!6091352))

(assert (=> b!5056449 m!6091350))

(assert (=> b!5056449 m!6091352))

(declare-fun m!6091354 () Bool)

(assert (=> b!5056449 m!6091354))

(assert (=> b!5056247 d!1627227))

(declare-fun d!1627231 () Bool)

(assert (=> d!1627231 (= (height!2129 (left!42798 xs!286)) (ite ((_ is Empty!15552) (left!42798 xs!286)) 0 (ite ((_ is Leaf!25833) (left!42798 xs!286)) 1 (cheight!15763 (left!42798 xs!286)))))))

(assert (=> b!5056130 d!1627231))

(declare-fun d!1627233 () Bool)

(assert (=> d!1627233 (= (height!2129 (right!43128 xs!286)) (ite ((_ is Empty!15552) (right!43128 xs!286)) 0 (ite ((_ is Leaf!25833) (right!43128 xs!286)) 1 (cheight!15763 (right!43128 xs!286)))))))

(assert (=> b!5056130 d!1627233))

(declare-fun d!1627235 () Bool)

(declare-fun lt!2087450 () Bool)

(declare-fun isEmpty!31609 (List!58546) Bool)

(assert (=> d!1627235 (= lt!2087450 (isEmpty!31609 (list!18965 (left!42798 ys!41))))))

(assert (=> d!1627235 (= lt!2087450 (= (size!39053 (left!42798 ys!41)) 0))))

(assert (=> d!1627235 (= (isEmpty!31606 (left!42798 ys!41)) lt!2087450)))

(declare-fun bs!1189395 () Bool)

(assert (= bs!1189395 d!1627235))

(assert (=> bs!1189395 m!6091046))

(assert (=> bs!1189395 m!6091046))

(declare-fun m!6091384 () Bool)

(assert (=> bs!1189395 m!6091384))

(declare-fun m!6091386 () Bool)

(assert (=> bs!1189395 m!6091386))

(assert (=> b!5056335 d!1627235))

(declare-fun d!1627249 () Bool)

(declare-fun lt!2087451 () Bool)

(assert (=> d!1627249 (= lt!2087451 (isEmpty!31609 (list!18965 (right!43128 xs!286))))))

(assert (=> d!1627249 (= lt!2087451 (= (size!39053 (right!43128 xs!286)) 0))))

(assert (=> d!1627249 (= (isEmpty!31606 (right!43128 xs!286)) lt!2087451)))

(declare-fun bs!1189396 () Bool)

(assert (= bs!1189396 d!1627249))

(assert (=> bs!1189396 m!6091042))

(assert (=> bs!1189396 m!6091042))

(declare-fun m!6091388 () Bool)

(assert (=> bs!1189396 m!6091388))

(declare-fun m!6091390 () Bool)

(assert (=> bs!1189396 m!6091390))

(assert (=> b!5056132 d!1627249))

(declare-fun d!1627251 () Bool)

(declare-fun c!867502 () Bool)

(assert (=> d!1627251 (= c!867502 ((_ is Node!15552) (left!42798 (left!42798 xs!286))))))

(declare-fun e!3156477 () Bool)

(assert (=> d!1627251 (= (inv!77490 (left!42798 (left!42798 xs!286))) e!3156477)))

(declare-fun b!5056461 () Bool)

(assert (=> b!5056461 (= e!3156477 (inv!77493 (left!42798 (left!42798 xs!286))))))

(declare-fun b!5056462 () Bool)

(declare-fun e!3156478 () Bool)

(assert (=> b!5056462 (= e!3156477 e!3156478)))

(declare-fun res!2153133 () Bool)

(assert (=> b!5056462 (= res!2153133 (not ((_ is Leaf!25833) (left!42798 (left!42798 xs!286)))))))

(assert (=> b!5056462 (=> res!2153133 e!3156478)))

(declare-fun b!5056463 () Bool)

(assert (=> b!5056463 (= e!3156478 (inv!77494 (left!42798 (left!42798 xs!286))))))

(assert (= (and d!1627251 c!867502) b!5056461))

(assert (= (and d!1627251 (not c!867502)) b!5056462))

(assert (= (and b!5056462 (not res!2153133)) b!5056463))

(declare-fun m!6091392 () Bool)

(assert (=> b!5056461 m!6091392))

(declare-fun m!6091394 () Bool)

(assert (=> b!5056463 m!6091394))

(assert (=> b!5056351 d!1627251))

(declare-fun d!1627253 () Bool)

(declare-fun c!867503 () Bool)

(assert (=> d!1627253 (= c!867503 ((_ is Node!15552) (right!43128 (left!42798 xs!286))))))

(declare-fun e!3156479 () Bool)

(assert (=> d!1627253 (= (inv!77490 (right!43128 (left!42798 xs!286))) e!3156479)))

(declare-fun b!5056464 () Bool)

(assert (=> b!5056464 (= e!3156479 (inv!77493 (right!43128 (left!42798 xs!286))))))

(declare-fun b!5056465 () Bool)

(declare-fun e!3156480 () Bool)

(assert (=> b!5056465 (= e!3156479 e!3156480)))

(declare-fun res!2153134 () Bool)

(assert (=> b!5056465 (= res!2153134 (not ((_ is Leaf!25833) (right!43128 (left!42798 xs!286)))))))

(assert (=> b!5056465 (=> res!2153134 e!3156480)))

(declare-fun b!5056466 () Bool)

(assert (=> b!5056466 (= e!3156480 (inv!77494 (right!43128 (left!42798 xs!286))))))

(assert (= (and d!1627253 c!867503) b!5056464))

(assert (= (and d!1627253 (not c!867503)) b!5056465))

(assert (= (and b!5056465 (not res!2153134)) b!5056466))

(declare-fun m!6091396 () Bool)

(assert (=> b!5056464 m!6091396))

(declare-fun m!6091398 () Bool)

(assert (=> b!5056466 m!6091398))

(assert (=> b!5056351 d!1627253))

(assert (=> b!5056223 d!1627179))

(assert (=> b!5056223 d!1627221))

(declare-fun b!5056469 () Bool)

(declare-fun e!3156483 () List!58546)

(assert (=> b!5056469 (= e!3156483 Nil!58422)))

(declare-fun b!5056473 () Bool)

(declare-fun e!3156484 () List!58546)

(assert (=> b!5056473 (= e!3156484 (list!18967 (xs!18884 (right!43128 (right!43128 xs!286)))))))

(declare-fun b!5056474 () Bool)

(assert (=> b!5056474 (= e!3156484 (++!12771 (list!18965 (left!42798 (right!43128 (right!43128 xs!286)))) (list!18965 (right!43128 (right!43128 (right!43128 xs!286))))))))

(declare-fun d!1627255 () Bool)

(declare-fun c!867504 () Bool)

(assert (=> d!1627255 (= c!867504 ((_ is Empty!15552) (right!43128 (right!43128 xs!286))))))

(assert (=> d!1627255 (= (list!18965 (right!43128 (right!43128 xs!286))) e!3156483)))

(declare-fun b!5056472 () Bool)

(assert (=> b!5056472 (= e!3156483 e!3156484)))

(declare-fun c!867505 () Bool)

(assert (=> b!5056472 (= c!867505 ((_ is Leaf!25833) (right!43128 (right!43128 xs!286))))))

(assert (= (and d!1627255 c!867504) b!5056469))

(assert (= (and d!1627255 (not c!867504)) b!5056472))

(assert (= (and b!5056472 c!867505) b!5056473))

(assert (= (and b!5056472 (not c!867505)) b!5056474))

(declare-fun m!6091400 () Bool)

(assert (=> b!5056473 m!6091400))

(declare-fun m!6091402 () Bool)

(assert (=> b!5056474 m!6091402))

(declare-fun m!6091404 () Bool)

(assert (=> b!5056474 m!6091404))

(assert (=> b!5056474 m!6091402))

(assert (=> b!5056474 m!6091404))

(declare-fun m!6091406 () Bool)

(assert (=> b!5056474 m!6091406))

(assert (=> b!5056223 d!1627255))

(declare-fun call!352126 () List!58546)

(declare-fun call!352128 () List!58546)

(declare-fun bm!352121 () Bool)

(assert (=> bm!352121 (= call!352126 (++!12771 call!352128 (++!12771 (list!18965 (right!43128 (right!43128 xs!286))) (list!18965 ys!41))))))

(declare-fun d!1627257 () Bool)

(declare-fun e!3156485 () Bool)

(assert (=> d!1627257 e!3156485))

(declare-fun c!867506 () Bool)

(assert (=> d!1627257 (= c!867506 ((_ is Nil!58422) (list!18965 (left!42798 xs!286))))))

(assert (=> d!1627257 (= (appendAssoc!293 (list!18965 (left!42798 xs!286)) (list!18965 (left!42798 (right!43128 xs!286))) (++!12771 (list!18965 (right!43128 (right!43128 xs!286))) (list!18965 ys!41))) true)))

(declare-fun b!5056475 () Bool)

(declare-fun call!352129 () List!58546)

(assert (=> b!5056475 (= e!3156485 (= call!352126 call!352129))))

(declare-fun bm!352122 () Bool)

(declare-fun call!352127 () List!58546)

(assert (=> bm!352122 (= call!352127 (++!12771 (list!18965 (left!42798 (right!43128 xs!286))) (++!12771 (list!18965 (right!43128 (right!43128 xs!286))) (list!18965 ys!41))))))

(declare-fun bm!352123 () Bool)

(assert (=> bm!352123 (= call!352129 (++!12771 (list!18965 (left!42798 xs!286)) call!352127))))

(declare-fun b!5056476 () Bool)

(assert (=> b!5056476 (= e!3156485 (= call!352126 call!352129))))

(declare-fun lt!2087452 () Bool)

(assert (=> b!5056476 (= lt!2087452 (appendAssoc!293 (t!371221 (list!18965 (left!42798 xs!286))) (list!18965 (left!42798 (right!43128 xs!286))) (++!12771 (list!18965 (right!43128 (right!43128 xs!286))) (list!18965 ys!41))))))

(declare-fun bm!352124 () Bool)

(assert (=> bm!352124 (= call!352128 (++!12771 (list!18965 (left!42798 xs!286)) (list!18965 (left!42798 (right!43128 xs!286)))))))

(assert (= (and d!1627257 c!867506) b!5056475))

(assert (= (and d!1627257 (not c!867506)) b!5056476))

(assert (= (or b!5056475 b!5056476) bm!352124))

(assert (= (or b!5056475 b!5056476) bm!352122))

(assert (= (or b!5056475 b!5056476) bm!352123))

(assert (= (or b!5056475 b!5056476) bm!352121))

(assert (=> bm!352121 m!6091056))

(declare-fun m!6091408 () Bool)

(assert (=> bm!352121 m!6091408))

(assert (=> bm!352123 m!6091040))

(declare-fun m!6091410 () Bool)

(assert (=> bm!352123 m!6091410))

(assert (=> bm!352124 m!6091040))

(assert (=> bm!352124 m!6091050))

(declare-fun m!6091412 () Bool)

(assert (=> bm!352124 m!6091412))

(assert (=> bm!352122 m!6091050))

(assert (=> bm!352122 m!6091056))

(declare-fun m!6091414 () Bool)

(assert (=> bm!352122 m!6091414))

(assert (=> b!5056476 m!6091050))

(assert (=> b!5056476 m!6091056))

(declare-fun m!6091416 () Bool)

(assert (=> b!5056476 m!6091416))

(assert (=> b!5056223 d!1627257))

(declare-fun b!5056479 () Bool)

(declare-fun e!3156487 () List!58546)

(assert (=> b!5056479 (= e!3156487 Nil!58422)))

(declare-fun b!5056481 () Bool)

(declare-fun e!3156488 () List!58546)

(assert (=> b!5056481 (= e!3156488 (list!18967 (xs!18884 (left!42798 (right!43128 xs!286)))))))

(declare-fun b!5056482 () Bool)

(assert (=> b!5056482 (= e!3156488 (++!12771 (list!18965 (left!42798 (left!42798 (right!43128 xs!286)))) (list!18965 (right!43128 (left!42798 (right!43128 xs!286))))))))

(declare-fun d!1627259 () Bool)

(declare-fun c!867507 () Bool)

(assert (=> d!1627259 (= c!867507 ((_ is Empty!15552) (left!42798 (right!43128 xs!286))))))

(assert (=> d!1627259 (= (list!18965 (left!42798 (right!43128 xs!286))) e!3156487)))

(declare-fun b!5056480 () Bool)

(assert (=> b!5056480 (= e!3156487 e!3156488)))

(declare-fun c!867508 () Bool)

(assert (=> b!5056480 (= c!867508 ((_ is Leaf!25833) (left!42798 (right!43128 xs!286))))))

(assert (= (and d!1627259 c!867507) b!5056479))

(assert (= (and d!1627259 (not c!867507)) b!5056480))

(assert (= (and b!5056480 c!867508) b!5056481))

(assert (= (and b!5056480 (not c!867508)) b!5056482))

(declare-fun m!6091422 () Bool)

(assert (=> b!5056481 m!6091422))

(declare-fun m!6091424 () Bool)

(assert (=> b!5056482 m!6091424))

(declare-fun m!6091426 () Bool)

(assert (=> b!5056482 m!6091426))

(assert (=> b!5056482 m!6091424))

(assert (=> b!5056482 m!6091426))

(declare-fun m!6091428 () Bool)

(assert (=> b!5056482 m!6091428))

(assert (=> b!5056223 d!1627259))

(declare-fun b!5056488 () Bool)

(declare-fun e!3156492 () List!58546)

(assert (=> b!5056488 (= e!3156492 (Cons!58422 (h!64870 (list!18965 (right!43128 (right!43128 xs!286)))) (++!12771 (t!371221 (list!18965 (right!43128 (right!43128 xs!286)))) (list!18965 ys!41))))))

(declare-fun b!5056489 () Bool)

(declare-fun res!2153144 () Bool)

(declare-fun e!3156491 () Bool)

(assert (=> b!5056489 (=> (not res!2153144) (not e!3156491))))

(declare-fun lt!2087454 () List!58546)

(assert (=> b!5056489 (= res!2153144 (= (size!39050 lt!2087454) (+ (size!39050 (list!18965 (right!43128 (right!43128 xs!286)))) (size!39050 (list!18965 ys!41)))))))

(declare-fun b!5056490 () Bool)

(assert (=> b!5056490 (= e!3156491 (or (not (= (list!18965 ys!41) Nil!58422)) (= lt!2087454 (list!18965 (right!43128 (right!43128 xs!286))))))))

(declare-fun d!1627263 () Bool)

(assert (=> d!1627263 e!3156491))

(declare-fun res!2153143 () Bool)

(assert (=> d!1627263 (=> (not res!2153143) (not e!3156491))))

(assert (=> d!1627263 (= res!2153143 (= (content!10410 lt!2087454) ((_ map or) (content!10410 (list!18965 (right!43128 (right!43128 xs!286)))) (content!10410 (list!18965 ys!41)))))))

(assert (=> d!1627263 (= lt!2087454 e!3156492)))

(declare-fun c!867510 () Bool)

(assert (=> d!1627263 (= c!867510 ((_ is Nil!58422) (list!18965 (right!43128 (right!43128 xs!286)))))))

(assert (=> d!1627263 (= (++!12771 (list!18965 (right!43128 (right!43128 xs!286))) (list!18965 ys!41)) lt!2087454)))

(declare-fun b!5056487 () Bool)

(assert (=> b!5056487 (= e!3156492 (list!18965 ys!41))))

(assert (= (and d!1627263 c!867510) b!5056487))

(assert (= (and d!1627263 (not c!867510)) b!5056488))

(assert (= (and d!1627263 res!2153143) b!5056489))

(assert (= (and b!5056489 res!2153144) b!5056490))

(assert (=> b!5056488 m!6090940))

(declare-fun m!6091434 () Bool)

(assert (=> b!5056488 m!6091434))

(declare-fun m!6091436 () Bool)

(assert (=> b!5056489 m!6091436))

(assert (=> b!5056489 m!6091052))

(declare-fun m!6091440 () Bool)

(assert (=> b!5056489 m!6091440))

(assert (=> b!5056489 m!6090940))

(declare-fun m!6091444 () Bool)

(assert (=> b!5056489 m!6091444))

(declare-fun m!6091448 () Bool)

(assert (=> d!1627263 m!6091448))

(assert (=> d!1627263 m!6091052))

(declare-fun m!6091452 () Bool)

(assert (=> d!1627263 m!6091452))

(assert (=> d!1627263 m!6090940))

(declare-fun m!6091456 () Bool)

(assert (=> d!1627263 m!6091456))

(assert (=> b!5056223 d!1627263))

(assert (=> b!5056134 d!1627231))

(assert (=> b!5056134 d!1627233))

(declare-fun bm!352125 () Bool)

(declare-fun call!352130 () List!58546)

(declare-fun call!352132 () List!58546)

(assert (=> bm!352125 (= call!352130 (++!12771 call!352132 (list!18965 (right!43128 ys!41))))))

(declare-fun d!1627267 () Bool)

(declare-fun e!3156495 () Bool)

(assert (=> d!1627267 e!3156495))

(declare-fun c!867513 () Bool)

(assert (=> d!1627267 (= c!867513 ((_ is Nil!58422) (list!18965 xs!286)))))

(assert (=> d!1627267 (= (appendAssoc!293 (list!18965 xs!286) (list!18965 (left!42798 ys!41)) (list!18965 (right!43128 ys!41))) true)))

(declare-fun b!5056495 () Bool)

(declare-fun call!352133 () List!58546)

(assert (=> b!5056495 (= e!3156495 (= call!352130 call!352133))))

(declare-fun bm!352126 () Bool)

(declare-fun call!352131 () List!58546)

(assert (=> bm!352126 (= call!352131 (++!12771 (list!18965 (left!42798 ys!41)) (list!18965 (right!43128 ys!41))))))

(declare-fun bm!352127 () Bool)

(assert (=> bm!352127 (= call!352133 (++!12771 (list!18965 xs!286) call!352131))))

(declare-fun b!5056496 () Bool)

(assert (=> b!5056496 (= e!3156495 (= call!352130 call!352133))))

(declare-fun lt!2087455 () Bool)

(assert (=> b!5056496 (= lt!2087455 (appendAssoc!293 (t!371221 (list!18965 xs!286)) (list!18965 (left!42798 ys!41)) (list!18965 (right!43128 ys!41))))))

(declare-fun bm!352128 () Bool)

(assert (=> bm!352128 (= call!352132 (++!12771 (list!18965 xs!286) (list!18965 (left!42798 ys!41))))))

(assert (= (and d!1627267 c!867513) b!5056495))

(assert (= (and d!1627267 (not c!867513)) b!5056496))

(assert (= (or b!5056495 b!5056496) bm!352128))

(assert (= (or b!5056495 b!5056496) bm!352126))

(assert (= (or b!5056495 b!5056496) bm!352127))

(assert (= (or b!5056495 b!5056496) bm!352125))

(assert (=> bm!352125 m!6091034))

(declare-fun m!6091460 () Bool)

(assert (=> bm!352125 m!6091460))

(assert (=> bm!352127 m!6090938))

(declare-fun m!6091462 () Bool)

(assert (=> bm!352127 m!6091462))

(assert (=> bm!352128 m!6090938))

(assert (=> bm!352128 m!6091046))

(declare-fun m!6091464 () Bool)

(assert (=> bm!352128 m!6091464))

(assert (=> bm!352126 m!6091046))

(assert (=> bm!352126 m!6091034))

(assert (=> bm!352126 m!6091168))

(assert (=> b!5056496 m!6091046))

(assert (=> b!5056496 m!6091034))

(declare-fun m!6091466 () Bool)

(assert (=> b!5056496 m!6091466))

(assert (=> b!5056225 d!1627267))

(assert (=> b!5056225 d!1627175))

(assert (=> b!5056225 d!1627197))

(assert (=> b!5056225 d!1627199))

(declare-fun d!1627271 () Bool)

(declare-fun lt!2087460 () Int)

(assert (=> d!1627271 (>= lt!2087460 0)))

(declare-fun e!3156505 () Int)

(assert (=> d!1627271 (= lt!2087460 e!3156505)))

(declare-fun c!867522 () Bool)

(assert (=> d!1627271 (= c!867522 ((_ is Nil!58422) lt!2087427))))

(assert (=> d!1627271 (= (size!39050 lt!2087427) lt!2087460)))

(declare-fun b!5056515 () Bool)

(assert (=> b!5056515 (= e!3156505 0)))

(declare-fun b!5056516 () Bool)

(assert (=> b!5056516 (= e!3156505 (+ 1 (size!39050 (t!371221 lt!2087427))))))

(assert (= (and d!1627271 c!867522) b!5056515))

(assert (= (and d!1627271 (not c!867522)) b!5056516))

(declare-fun m!6091508 () Bool)

(assert (=> b!5056516 m!6091508))

(assert (=> b!5056272 d!1627271))

(declare-fun d!1627281 () Bool)

(declare-fun lt!2087461 () Int)

(assert (=> d!1627281 (>= lt!2087461 0)))

(declare-fun e!3156508 () Int)

(assert (=> d!1627281 (= lt!2087461 e!3156508)))

(declare-fun c!867525 () Bool)

(assert (=> d!1627281 (= c!867525 ((_ is Nil!58422) lt!2087419))))

(assert (=> d!1627281 (= (size!39050 lt!2087419) lt!2087461)))

(declare-fun b!5056521 () Bool)

(assert (=> b!5056521 (= e!3156508 0)))

(declare-fun b!5056522 () Bool)

(assert (=> b!5056522 (= e!3156508 (+ 1 (size!39050 (t!371221 lt!2087419))))))

(assert (= (and d!1627281 c!867525) b!5056521))

(assert (= (and d!1627281 (not c!867525)) b!5056522))

(assert (=> b!5056522 m!6091230))

(assert (=> b!5056272 d!1627281))

(declare-fun d!1627283 () Bool)

(declare-fun lt!2087462 () Int)

(assert (=> d!1627283 (>= lt!2087462 0)))

(declare-fun e!3156509 () Int)

(assert (=> d!1627283 (= lt!2087462 e!3156509)))

(declare-fun c!867526 () Bool)

(assert (=> d!1627283 (= c!867526 ((_ is Nil!58422) lt!2087418))))

(assert (=> d!1627283 (= (size!39050 lt!2087418) lt!2087462)))

(declare-fun b!5056523 () Bool)

(assert (=> b!5056523 (= e!3156509 0)))

(declare-fun b!5056524 () Bool)

(assert (=> b!5056524 (= e!3156509 (+ 1 (size!39050 (t!371221 lt!2087418))))))

(assert (= (and d!1627283 c!867526) b!5056523))

(assert (= (and d!1627283 (not c!867526)) b!5056524))

(declare-fun m!6091518 () Bool)

(assert (=> b!5056524 m!6091518))

(assert (=> b!5056272 d!1627283))

(declare-fun d!1627287 () Bool)

(assert (=> d!1627287 (= (inv!77489 (xs!18884 (right!43128 xs!286))) (<= (size!39050 (innerList!15640 (xs!18884 (right!43128 xs!286)))) 2147483647))))

(declare-fun bs!1189397 () Bool)

(assert (= bs!1189397 d!1627287))

(declare-fun m!6091520 () Bool)

(assert (=> bs!1189397 m!6091520))

(assert (=> b!5056355 d!1627287))

(declare-fun b!5056531 () Bool)

(declare-fun e!3156513 () Bool)

(declare-fun e!3156512 () Bool)

(assert (=> b!5056531 (= e!3156513 e!3156512)))

(declare-fun res!2153158 () Bool)

(assert (=> b!5056531 (=> (not res!2153158) (not e!3156512))))

(assert (=> b!5056531 (= res!2153158 (<= (- 1) (- (height!2129 (left!42798 (left!42798 ys!41))) (height!2129 (right!43128 (left!42798 ys!41))))))))

(declare-fun b!5056532 () Bool)

(declare-fun res!2153156 () Bool)

(assert (=> b!5056532 (=> (not res!2153156) (not e!3156512))))

(assert (=> b!5056532 (= res!2153156 (isBalanced!4414 (left!42798 (left!42798 ys!41))))))

(declare-fun b!5056533 () Bool)

(assert (=> b!5056533 (= e!3156512 (not (isEmpty!31606 (right!43128 (left!42798 ys!41)))))))

(declare-fun d!1627293 () Bool)

(declare-fun res!2153157 () Bool)

(assert (=> d!1627293 (=> res!2153157 e!3156513)))

(assert (=> d!1627293 (= res!2153157 (not ((_ is Node!15552) (left!42798 ys!41))))))

(assert (=> d!1627293 (= (isBalanced!4414 (left!42798 ys!41)) e!3156513)))

(declare-fun b!5056534 () Bool)

(declare-fun res!2153153 () Bool)

(assert (=> b!5056534 (=> (not res!2153153) (not e!3156512))))

(assert (=> b!5056534 (= res!2153153 (isBalanced!4414 (right!43128 (left!42798 ys!41))))))

(declare-fun b!5056535 () Bool)

(declare-fun res!2153155 () Bool)

(assert (=> b!5056535 (=> (not res!2153155) (not e!3156512))))

(assert (=> b!5056535 (= res!2153155 (<= (- (height!2129 (left!42798 (left!42798 ys!41))) (height!2129 (right!43128 (left!42798 ys!41)))) 1))))

(declare-fun b!5056536 () Bool)

(declare-fun res!2153154 () Bool)

(assert (=> b!5056536 (=> (not res!2153154) (not e!3156512))))

(assert (=> b!5056536 (= res!2153154 (not (isEmpty!31606 (left!42798 (left!42798 ys!41)))))))

(assert (= (and d!1627293 (not res!2153157)) b!5056531))

(assert (= (and b!5056531 res!2153158) b!5056535))

(assert (= (and b!5056535 res!2153155) b!5056532))

(assert (= (and b!5056532 res!2153156) b!5056534))

(assert (= (and b!5056534 res!2153153) b!5056536))

(assert (= (and b!5056536 res!2153154) b!5056533))

(declare-fun m!6091524 () Bool)

(assert (=> b!5056534 m!6091524))

(declare-fun m!6091528 () Bool)

(assert (=> b!5056531 m!6091528))

(declare-fun m!6091530 () Bool)

(assert (=> b!5056531 m!6091530))

(assert (=> b!5056535 m!6091528))

(assert (=> b!5056535 m!6091530))

(declare-fun m!6091534 () Bool)

(assert (=> b!5056533 m!6091534))

(declare-fun m!6091538 () Bool)

(assert (=> b!5056532 m!6091538))

(declare-fun m!6091540 () Bool)

(assert (=> b!5056536 m!6091540))

(assert (=> b!5056331 d!1627293))

(declare-fun b!5056537 () Bool)

(declare-fun e!3156515 () Bool)

(declare-fun e!3156514 () Bool)

(assert (=> b!5056537 (= e!3156515 e!3156514)))

(declare-fun res!2153164 () Bool)

(assert (=> b!5056537 (=> (not res!2153164) (not e!3156514))))

(assert (=> b!5056537 (= res!2153164 (<= (- 1) (- (height!2129 (left!42798 (right!43128 ys!41))) (height!2129 (right!43128 (right!43128 ys!41))))))))

(declare-fun b!5056538 () Bool)

(declare-fun res!2153162 () Bool)

(assert (=> b!5056538 (=> (not res!2153162) (not e!3156514))))

(assert (=> b!5056538 (= res!2153162 (isBalanced!4414 (left!42798 (right!43128 ys!41))))))

(declare-fun b!5056539 () Bool)

(assert (=> b!5056539 (= e!3156514 (not (isEmpty!31606 (right!43128 (right!43128 ys!41)))))))

(declare-fun d!1627295 () Bool)

(declare-fun res!2153163 () Bool)

(assert (=> d!1627295 (=> res!2153163 e!3156515)))

(assert (=> d!1627295 (= res!2153163 (not ((_ is Node!15552) (right!43128 ys!41))))))

(assert (=> d!1627295 (= (isBalanced!4414 (right!43128 ys!41)) e!3156515)))

(declare-fun b!5056540 () Bool)

(declare-fun res!2153159 () Bool)

(assert (=> b!5056540 (=> (not res!2153159) (not e!3156514))))

(assert (=> b!5056540 (= res!2153159 (isBalanced!4414 (right!43128 (right!43128 ys!41))))))

(declare-fun b!5056541 () Bool)

(declare-fun res!2153161 () Bool)

(assert (=> b!5056541 (=> (not res!2153161) (not e!3156514))))

(assert (=> b!5056541 (= res!2153161 (<= (- (height!2129 (left!42798 (right!43128 ys!41))) (height!2129 (right!43128 (right!43128 ys!41)))) 1))))

(declare-fun b!5056542 () Bool)

(declare-fun res!2153160 () Bool)

(assert (=> b!5056542 (=> (not res!2153160) (not e!3156514))))

(assert (=> b!5056542 (= res!2153160 (not (isEmpty!31606 (left!42798 (right!43128 ys!41)))))))

(assert (= (and d!1627295 (not res!2153163)) b!5056537))

(assert (= (and b!5056537 res!2153164) b!5056541))

(assert (= (and b!5056541 res!2153161) b!5056538))

(assert (= (and b!5056538 res!2153162) b!5056540))

(assert (= (and b!5056540 res!2153159) b!5056542))

(assert (= (and b!5056542 res!2153160) b!5056539))

(declare-fun m!6091546 () Bool)

(assert (=> b!5056540 m!6091546))

(assert (=> b!5056537 m!6091350))

(assert (=> b!5056537 m!6091352))

(assert (=> b!5056541 m!6091350))

(assert (=> b!5056541 m!6091352))

(declare-fun m!6091548 () Bool)

(assert (=> b!5056539 m!6091548))

(declare-fun m!6091550 () Bool)

(assert (=> b!5056538 m!6091550))

(declare-fun m!6091552 () Bool)

(assert (=> b!5056542 m!6091552))

(assert (=> b!5056333 d!1627295))

(declare-fun d!1627299 () Bool)

(assert (=> d!1627299 (= (inv!77489 (xs!18884 (left!42798 ys!41))) (<= (size!39050 (innerList!15640 (xs!18884 (left!42798 ys!41)))) 2147483647))))

(declare-fun bs!1189398 () Bool)

(assert (= bs!1189398 d!1627299))

(declare-fun m!6091554 () Bool)

(assert (=> bs!1189398 m!6091554))

(assert (=> b!5056359 d!1627299))

(declare-fun d!1627301 () Bool)

(declare-fun res!2153165 () Bool)

(declare-fun e!3156516 () Bool)

(assert (=> d!1627301 (=> (not res!2153165) (not e!3156516))))

(assert (=> d!1627301 (= res!2153165 (= (csize!31334 ys!41) (+ (size!39053 (left!42798 ys!41)) (size!39053 (right!43128 ys!41)))))))

(assert (=> d!1627301 (= (inv!77493 ys!41) e!3156516)))

(declare-fun b!5056543 () Bool)

(declare-fun res!2153166 () Bool)

(assert (=> b!5056543 (=> (not res!2153166) (not e!3156516))))

(assert (=> b!5056543 (= res!2153166 (and (not (= (left!42798 ys!41) Empty!15552)) (not (= (right!43128 ys!41) Empty!15552))))))

(declare-fun b!5056544 () Bool)

(declare-fun res!2153167 () Bool)

(assert (=> b!5056544 (=> (not res!2153167) (not e!3156516))))

(assert (=> b!5056544 (= res!2153167 (= (cheight!15763 ys!41) (+ (max!0 (height!2129 (left!42798 ys!41)) (height!2129 (right!43128 ys!41))) 1)))))

(declare-fun b!5056545 () Bool)

(assert (=> b!5056545 (= e!3156516 (<= 0 (cheight!15763 ys!41)))))

(assert (= (and d!1627301 res!2153165) b!5056543))

(assert (= (and b!5056543 res!2153166) b!5056544))

(assert (= (and b!5056544 res!2153167) b!5056545))

(assert (=> d!1627301 m!6091386))

(declare-fun m!6091556 () Bool)

(assert (=> d!1627301 m!6091556))

(assert (=> b!5056544 m!6091180))

(assert (=> b!5056544 m!6091182))

(assert (=> b!5056544 m!6091180))

(assert (=> b!5056544 m!6091182))

(declare-fun m!6091558 () Bool)

(assert (=> b!5056544 m!6091558))

(assert (=> b!5056163 d!1627301))

(assert (=> b!5056105 d!1627167))

(assert (=> b!5056105 d!1627169))

(declare-fun d!1627303 () Bool)

(declare-fun res!2153168 () Bool)

(declare-fun e!3156517 () Bool)

(assert (=> d!1627303 (=> (not res!2153168) (not e!3156517))))

(assert (=> d!1627303 (= res!2153168 (<= (size!39050 (list!18967 (xs!18884 ys!41))) 512))))

(assert (=> d!1627303 (= (inv!77494 ys!41) e!3156517)))

(declare-fun b!5056546 () Bool)

(declare-fun res!2153169 () Bool)

(assert (=> b!5056546 (=> (not res!2153169) (not e!3156517))))

(assert (=> b!5056546 (= res!2153169 (= (csize!31335 ys!41) (size!39050 (list!18967 (xs!18884 ys!41)))))))

(declare-fun b!5056547 () Bool)

(assert (=> b!5056547 (= e!3156517 (and (> (csize!31335 ys!41) 0) (<= (csize!31335 ys!41) 512)))))

(assert (= (and d!1627303 res!2153168) b!5056546))

(assert (= (and b!5056546 res!2153169) b!5056547))

(assert (=> d!1627303 m!6091166))

(assert (=> d!1627303 m!6091166))

(declare-fun m!6091560 () Bool)

(assert (=> d!1627303 m!6091560))

(assert (=> b!5056546 m!6091166))

(assert (=> b!5056546 m!6091166))

(assert (=> b!5056546 m!6091560))

(assert (=> b!5056165 d!1627303))

(declare-fun d!1627305 () Bool)

(assert (=> d!1627305 (= (list!18967 (xs!18884 ys!41)) (innerList!15640 (xs!18884 ys!41)))))

(assert (=> b!5056321 d!1627305))

(declare-fun d!1627307 () Bool)

(declare-fun res!2153170 () Bool)

(declare-fun e!3156518 () Bool)

(assert (=> d!1627307 (=> (not res!2153170) (not e!3156518))))

(assert (=> d!1627307 (= res!2153170 (<= (size!39050 (list!18967 (xs!18884 (right!43128 xs!286)))) 512))))

(assert (=> d!1627307 (= (inv!77494 (right!43128 xs!286)) e!3156518)))

(declare-fun b!5056548 () Bool)

(declare-fun res!2153171 () Bool)

(assert (=> b!5056548 (=> (not res!2153171) (not e!3156518))))

(assert (=> b!5056548 (= res!2153171 (= (csize!31335 (right!43128 xs!286)) (size!39050 (list!18967 (xs!18884 (right!43128 xs!286))))))))

(declare-fun b!5056549 () Bool)

(assert (=> b!5056549 (= e!3156518 (and (> (csize!31335 (right!43128 xs!286)) 0) (<= (csize!31335 (right!43128 xs!286)) 512)))))

(assert (= (and d!1627307 res!2153170) b!5056548))

(assert (= (and b!5056548 res!2153171) b!5056549))

(assert (=> d!1627307 m!6091332))

(assert (=> d!1627307 m!6091332))

(declare-fun m!6091562 () Bool)

(assert (=> d!1627307 m!6091562))

(assert (=> b!5056548 m!6091332))

(assert (=> b!5056548 m!6091332))

(assert (=> b!5056548 m!6091562))

(assert (=> b!5056243 d!1627307))

(declare-fun bm!352133 () Bool)

(declare-fun call!352138 () List!58546)

(declare-fun call!352140 () List!58546)

(assert (=> bm!352133 (= call!352138 (++!12771 call!352140 (list!18965 ys!41)))))

(declare-fun d!1627309 () Bool)

(declare-fun e!3156521 () Bool)

(assert (=> d!1627309 e!3156521))

(declare-fun c!867527 () Bool)

(assert (=> d!1627309 (= c!867527 ((_ is Nil!58422) (list!18965 (left!42798 xs!286))))))

(assert (=> d!1627309 (= (appendAssoc!293 (list!18965 (left!42798 xs!286)) (list!18965 (right!43128 xs!286)) (list!18965 ys!41)) true)))

(declare-fun b!5056550 () Bool)

(declare-fun call!352141 () List!58546)

(assert (=> b!5056550 (= e!3156521 (= call!352138 call!352141))))

(declare-fun bm!352134 () Bool)

(declare-fun call!352139 () List!58546)

(assert (=> bm!352134 (= call!352139 (++!12771 (list!18965 (right!43128 xs!286)) (list!18965 ys!41)))))

(declare-fun bm!352135 () Bool)

(assert (=> bm!352135 (= call!352141 (++!12771 (list!18965 (left!42798 xs!286)) call!352139))))

(declare-fun b!5056553 () Bool)

(assert (=> b!5056553 (= e!3156521 (= call!352138 call!352141))))

(declare-fun lt!2087463 () Bool)

(assert (=> b!5056553 (= lt!2087463 (appendAssoc!293 (t!371221 (list!18965 (left!42798 xs!286))) (list!18965 (right!43128 xs!286)) (list!18965 ys!41)))))

(declare-fun bm!352136 () Bool)

(assert (=> bm!352136 (= call!352140 (++!12771 (list!18965 (left!42798 xs!286)) (list!18965 (right!43128 xs!286))))))

(assert (= (and d!1627309 c!867527) b!5056550))

(assert (= (and d!1627309 (not c!867527)) b!5056553))

(assert (= (or b!5056550 b!5056553) bm!352136))

(assert (= (or b!5056550 b!5056553) bm!352134))

(assert (= (or b!5056550 b!5056553) bm!352135))

(assert (= (or b!5056550 b!5056553) bm!352133))

(assert (=> bm!352133 m!6090940))

(declare-fun m!6091564 () Bool)

(assert (=> bm!352133 m!6091564))

(assert (=> bm!352135 m!6091040))

(declare-fun m!6091566 () Bool)

(assert (=> bm!352135 m!6091566))

(assert (=> bm!352136 m!6091040))

(assert (=> bm!352136 m!6091042))

(assert (=> bm!352136 m!6091158))

(assert (=> bm!352134 m!6091042))

(assert (=> bm!352134 m!6090940))

(declare-fun m!6091568 () Bool)

(assert (=> bm!352134 m!6091568))

(assert (=> b!5056553 m!6091042))

(assert (=> b!5056553 m!6090940))

(declare-fun m!6091570 () Bool)

(assert (=> b!5056553 m!6091570))

(assert (=> b!5056226 d!1627309))

(assert (=> b!5056226 d!1627221))

(assert (=> b!5056226 d!1627225))

(assert (=> b!5056226 d!1627179))

(declare-fun d!1627311 () Bool)

(declare-fun res!2153178 () Bool)

(declare-fun e!3156522 () Bool)

(assert (=> d!1627311 (=> (not res!2153178) (not e!3156522))))

(assert (=> d!1627311 (= res!2153178 (<= (size!39050 (list!18967 (xs!18884 (left!42798 xs!286)))) 512))))

(assert (=> d!1627311 (= (inv!77494 (left!42798 xs!286)) e!3156522)))

(declare-fun b!5056558 () Bool)

(declare-fun res!2153179 () Bool)

(assert (=> b!5056558 (=> (not res!2153179) (not e!3156522))))

(assert (=> b!5056558 (= res!2153179 (= (csize!31335 (left!42798 xs!286)) (size!39050 (list!18967 (xs!18884 (left!42798 xs!286))))))))

(declare-fun b!5056559 () Bool)

(assert (=> b!5056559 (= e!3156522 (and (> (csize!31335 (left!42798 xs!286)) 0) (<= (csize!31335 (left!42798 xs!286)) 512)))))

(assert (= (and d!1627311 res!2153178) b!5056558))

(assert (= (and b!5056558 res!2153179) b!5056559))

(assert (=> d!1627311 m!6091324))

(assert (=> d!1627311 m!6091324))

(declare-fun m!6091572 () Bool)

(assert (=> d!1627311 m!6091572))

(assert (=> b!5056558 m!6091324))

(assert (=> b!5056558 m!6091324))

(assert (=> b!5056558 m!6091572))

(assert (=> b!5056240 d!1627311))

(declare-fun d!1627313 () Bool)

(assert (=> d!1627313 (= (list!18967 (xs!18884 xs!286)) (innerList!15640 (xs!18884 xs!286)))))

(assert (=> b!5056311 d!1627313))

(declare-fun d!1627315 () Bool)

(declare-fun lt!2087464 () Int)

(assert (=> d!1627315 (>= lt!2087464 0)))

(declare-fun e!3156523 () Int)

(assert (=> d!1627315 (= lt!2087464 e!3156523)))

(declare-fun c!867528 () Bool)

(assert (=> d!1627315 (= c!867528 ((_ is Nil!58422) (innerList!15640 (xs!18884 ys!41))))))

(assert (=> d!1627315 (= (size!39050 (innerList!15640 (xs!18884 ys!41))) lt!2087464)))

(declare-fun b!5056560 () Bool)

(assert (=> b!5056560 (= e!3156523 0)))

(declare-fun b!5056561 () Bool)

(assert (=> b!5056561 (= e!3156523 (+ 1 (size!39050 (t!371221 (innerList!15640 (xs!18884 ys!41))))))))

(assert (= (and d!1627315 c!867528) b!5056560))

(assert (= (and d!1627315 (not c!867528)) b!5056561))

(declare-fun m!6091574 () Bool)

(assert (=> b!5056561 m!6091574))

(assert (=> d!1627181 d!1627315))

(declare-fun d!1627317 () Bool)

(declare-fun res!2153180 () Bool)

(declare-fun e!3156524 () Bool)

(assert (=> d!1627317 (=> (not res!2153180) (not e!3156524))))

(assert (=> d!1627317 (= res!2153180 (= (csize!31334 xs!286) (+ (size!39053 (left!42798 xs!286)) (size!39053 (right!43128 xs!286)))))))

(assert (=> d!1627317 (= (inv!77493 xs!286) e!3156524)))

(declare-fun b!5056562 () Bool)

(declare-fun res!2153181 () Bool)

(assert (=> b!5056562 (=> (not res!2153181) (not e!3156524))))

(assert (=> b!5056562 (= res!2153181 (and (not (= (left!42798 xs!286) Empty!15552)) (not (= (right!43128 xs!286) Empty!15552))))))

(declare-fun b!5056563 () Bool)

(declare-fun res!2153182 () Bool)

(assert (=> b!5056563 (=> (not res!2153182) (not e!3156524))))

(assert (=> b!5056563 (= res!2153182 (= (cheight!15763 xs!286) (+ (max!0 (height!2129 (left!42798 xs!286)) (height!2129 (right!43128 xs!286))) 1)))))

(declare-fun b!5056564 () Bool)

(assert (=> b!5056564 (= e!3156524 (<= 0 (cheight!15763 xs!286)))))

(assert (= (and d!1627317 res!2153180) b!5056562))

(assert (= (and b!5056562 res!2153181) b!5056563))

(assert (= (and b!5056563 res!2153182) b!5056564))

(declare-fun m!6091576 () Bool)

(assert (=> d!1627317 m!6091576))

(assert (=> d!1627317 m!6091390))

(assert (=> b!5056563 m!6090968))

(assert (=> b!5056563 m!6090970))

(assert (=> b!5056563 m!6090968))

(assert (=> b!5056563 m!6090970))

(declare-fun m!6091578 () Bool)

(assert (=> b!5056563 m!6091578))

(assert (=> b!5056154 d!1627317))

(assert (=> b!5056099 d!1627161))

(assert (=> b!5056099 d!1627163))

(declare-fun d!1627319 () Bool)

(declare-fun res!2153184 () Bool)

(declare-fun e!3156526 () Bool)

(assert (=> d!1627319 (=> (not res!2153184) (not e!3156526))))

(assert (=> d!1627319 (= res!2153184 (<= (size!39050 (list!18967 (xs!18884 xs!286))) 512))))

(assert (=> d!1627319 (= (inv!77494 xs!286) e!3156526)))

(declare-fun b!5056565 () Bool)

(declare-fun res!2153186 () Bool)

(assert (=> b!5056565 (=> (not res!2153186) (not e!3156526))))

(assert (=> b!5056565 (= res!2153186 (= (csize!31335 xs!286) (size!39050 (list!18967 (xs!18884 xs!286)))))))

(declare-fun b!5056567 () Bool)

(assert (=> b!5056567 (= e!3156526 (and (> (csize!31335 xs!286) 0) (<= (csize!31335 xs!286) 512)))))

(assert (= (and d!1627319 res!2153184) b!5056565))

(assert (= (and b!5056565 res!2153186) b!5056567))

(assert (=> d!1627319 m!6091150))

(assert (=> d!1627319 m!6091150))

(declare-fun m!6091580 () Bool)

(assert (=> d!1627319 m!6091580))

(assert (=> b!5056565 m!6091150))

(assert (=> b!5056565 m!6091150))

(assert (=> b!5056565 m!6091580))

(assert (=> b!5056156 d!1627319))

(declare-fun d!1627321 () Bool)

(assert (=> d!1627321 (= (height!2129 (left!42798 ys!41)) (ite ((_ is Empty!15552) (left!42798 ys!41)) 0 (ite ((_ is Leaf!25833) (left!42798 ys!41)) 1 (cheight!15763 (left!42798 ys!41)))))))

(assert (=> b!5056334 d!1627321))

(declare-fun d!1627323 () Bool)

(assert (=> d!1627323 (= (height!2129 (right!43128 ys!41)) (ite ((_ is Empty!15552) (right!43128 ys!41)) 0 (ite ((_ is Leaf!25833) (right!43128 ys!41)) 1 (cheight!15763 (right!43128 ys!41)))))))

(assert (=> b!5056334 d!1627323))

(declare-fun b!5056570 () Bool)

(declare-fun e!3156528 () Bool)

(declare-fun e!3156527 () Bool)

(assert (=> b!5056570 (= e!3156528 e!3156527)))

(declare-fun res!2153193 () Bool)

(assert (=> b!5056570 (=> (not res!2153193) (not e!3156527))))

(assert (=> b!5056570 (= res!2153193 (<= (- 1) (- (height!2129 (left!42798 (left!42798 xs!286))) (height!2129 (right!43128 (left!42798 xs!286))))))))

(declare-fun b!5056571 () Bool)

(declare-fun res!2153191 () Bool)

(assert (=> b!5056571 (=> (not res!2153191) (not e!3156527))))

(assert (=> b!5056571 (= res!2153191 (isBalanced!4414 (left!42798 (left!42798 xs!286))))))

(declare-fun b!5056572 () Bool)

(assert (=> b!5056572 (= e!3156527 (not (isEmpty!31606 (right!43128 (left!42798 xs!286)))))))

(declare-fun d!1627325 () Bool)

(declare-fun res!2153192 () Bool)

(assert (=> d!1627325 (=> res!2153192 e!3156528)))

(assert (=> d!1627325 (= res!2153192 (not ((_ is Node!15552) (left!42798 xs!286))))))

(assert (=> d!1627325 (= (isBalanced!4414 (left!42798 xs!286)) e!3156528)))

(declare-fun b!5056573 () Bool)

(declare-fun res!2153188 () Bool)

(assert (=> b!5056573 (=> (not res!2153188) (not e!3156527))))

(assert (=> b!5056573 (= res!2153188 (isBalanced!4414 (right!43128 (left!42798 xs!286))))))

(declare-fun b!5056574 () Bool)

(declare-fun res!2153190 () Bool)

(assert (=> b!5056574 (=> (not res!2153190) (not e!3156527))))

(assert (=> b!5056574 (= res!2153190 (<= (- (height!2129 (left!42798 (left!42798 xs!286))) (height!2129 (right!43128 (left!42798 xs!286)))) 1))))

(declare-fun b!5056575 () Bool)

(declare-fun res!2153189 () Bool)

(assert (=> b!5056575 (=> (not res!2153189) (not e!3156527))))

(assert (=> b!5056575 (= res!2153189 (not (isEmpty!31606 (left!42798 (left!42798 xs!286)))))))

(assert (= (and d!1627325 (not res!2153192)) b!5056570))

(assert (= (and b!5056570 res!2153193) b!5056574))

(assert (= (and b!5056574 res!2153190) b!5056571))

(assert (= (and b!5056571 res!2153191) b!5056573))

(assert (= (and b!5056573 res!2153188) b!5056575))

(assert (= (and b!5056575 res!2153189) b!5056572))

(declare-fun m!6091590 () Bool)

(assert (=> b!5056573 m!6091590))

(declare-fun m!6091592 () Bool)

(assert (=> b!5056570 m!6091592))

(declare-fun m!6091594 () Bool)

(assert (=> b!5056570 m!6091594))

(assert (=> b!5056574 m!6091592))

(assert (=> b!5056574 m!6091594))

(declare-fun m!6091596 () Bool)

(assert (=> b!5056572 m!6091596))

(declare-fun m!6091598 () Bool)

(assert (=> b!5056571 m!6091598))

(declare-fun m!6091600 () Bool)

(assert (=> b!5056575 m!6091600))

(assert (=> b!5056131 d!1627325))

(declare-fun b!5056581 () Bool)

(declare-fun e!3156532 () Bool)

(declare-fun e!3156531 () Bool)

(assert (=> b!5056581 (= e!3156532 e!3156531)))

(declare-fun res!2153202 () Bool)

(assert (=> b!5056581 (=> (not res!2153202) (not e!3156531))))

(assert (=> b!5056581 (= res!2153202 (<= (- 1) (- (height!2129 (left!42798 (right!43128 xs!286))) (height!2129 (right!43128 (right!43128 xs!286))))))))

(declare-fun b!5056582 () Bool)

(declare-fun res!2153200 () Bool)

(assert (=> b!5056582 (=> (not res!2153200) (not e!3156531))))

(assert (=> b!5056582 (= res!2153200 (isBalanced!4414 (left!42798 (right!43128 xs!286))))))

(declare-fun b!5056583 () Bool)

(assert (=> b!5056583 (= e!3156531 (not (isEmpty!31606 (right!43128 (right!43128 xs!286)))))))

(declare-fun d!1627331 () Bool)

(declare-fun res!2153201 () Bool)

(assert (=> d!1627331 (=> res!2153201 e!3156532)))

(assert (=> d!1627331 (= res!2153201 (not ((_ is Node!15552) (right!43128 xs!286))))))

(assert (=> d!1627331 (= (isBalanced!4414 (right!43128 xs!286)) e!3156532)))

(declare-fun b!5056584 () Bool)

(declare-fun res!2153197 () Bool)

(assert (=> b!5056584 (=> (not res!2153197) (not e!3156531))))

(assert (=> b!5056584 (= res!2153197 (isBalanced!4414 (right!43128 (right!43128 xs!286))))))

(declare-fun b!5056585 () Bool)

(declare-fun res!2153199 () Bool)

(assert (=> b!5056585 (=> (not res!2153199) (not e!3156531))))

(assert (=> b!5056585 (= res!2153199 (<= (- (height!2129 (left!42798 (right!43128 xs!286))) (height!2129 (right!43128 (right!43128 xs!286)))) 1))))

(declare-fun b!5056586 () Bool)

(declare-fun res!2153198 () Bool)

(assert (=> b!5056586 (=> (not res!2153198) (not e!3156531))))

(assert (=> b!5056586 (= res!2153198 (not (isEmpty!31606 (left!42798 (right!43128 xs!286)))))))

(assert (= (and d!1627331 (not res!2153201)) b!5056581))

(assert (= (and b!5056581 res!2153202) b!5056585))

(assert (= (and b!5056585 res!2153199) b!5056582))

(assert (= (and b!5056582 res!2153200) b!5056584))

(assert (= (and b!5056584 res!2153197) b!5056586))

(assert (= (and b!5056586 res!2153198) b!5056583))

(declare-fun m!6091612 () Bool)

(assert (=> b!5056584 m!6091612))

(declare-fun m!6091614 () Bool)

(assert (=> b!5056581 m!6091614))

(declare-fun m!6091616 () Bool)

(assert (=> b!5056581 m!6091616))

(assert (=> b!5056585 m!6091614))

(assert (=> b!5056585 m!6091616))

(declare-fun m!6091618 () Bool)

(assert (=> b!5056583 m!6091618))

(declare-fun m!6091620 () Bool)

(assert (=> b!5056582 m!6091620))

(declare-fun m!6091622 () Bool)

(assert (=> b!5056586 m!6091622))

(assert (=> b!5056133 d!1627331))

(declare-fun d!1627335 () Bool)

(assert (=> d!1627335 (= (inv!77489 (xs!18884 (left!42798 xs!286))) (<= (size!39050 (innerList!15640 (xs!18884 (left!42798 xs!286)))) 2147483647))))

(declare-fun bs!1189399 () Bool)

(assert (= bs!1189399 d!1627335))

(declare-fun m!6091626 () Bool)

(assert (=> bs!1189399 m!6091626))

(assert (=> b!5056352 d!1627335))

(declare-fun d!1627339 () Bool)

(declare-fun res!2153211 () Bool)

(declare-fun e!3156536 () Bool)

(assert (=> d!1627339 (=> (not res!2153211) (not e!3156536))))

(assert (=> d!1627339 (= res!2153211 (= (csize!31334 (right!43128 xs!286)) (+ (size!39053 (left!42798 (right!43128 xs!286))) (size!39053 (right!43128 (right!43128 xs!286))))))))

(assert (=> d!1627339 (= (inv!77493 (right!43128 xs!286)) e!3156536)))

(declare-fun b!5056595 () Bool)

(declare-fun res!2153212 () Bool)

(assert (=> b!5056595 (=> (not res!2153212) (not e!3156536))))

(assert (=> b!5056595 (= res!2153212 (and (not (= (left!42798 (right!43128 xs!286)) Empty!15552)) (not (= (right!43128 (right!43128 xs!286)) Empty!15552))))))

(declare-fun b!5056596 () Bool)

(declare-fun res!2153213 () Bool)

(assert (=> b!5056596 (=> (not res!2153213) (not e!3156536))))

(assert (=> b!5056596 (= res!2153213 (= (cheight!15763 (right!43128 xs!286)) (+ (max!0 (height!2129 (left!42798 (right!43128 xs!286))) (height!2129 (right!43128 (right!43128 xs!286)))) 1)))))

(declare-fun b!5056597 () Bool)

(assert (=> b!5056597 (= e!3156536 (<= 0 (cheight!15763 (right!43128 xs!286))))))

(assert (= (and d!1627339 res!2153211) b!5056595))

(assert (= (and b!5056595 res!2153212) b!5056596))

(assert (= (and b!5056596 res!2153213) b!5056597))

(declare-fun m!6091628 () Bool)

(assert (=> d!1627339 m!6091628))

(declare-fun m!6091630 () Bool)

(assert (=> d!1627339 m!6091630))

(assert (=> b!5056596 m!6091614))

(assert (=> b!5056596 m!6091616))

(assert (=> b!5056596 m!6091614))

(assert (=> b!5056596 m!6091616))

(declare-fun m!6091632 () Bool)

(assert (=> b!5056596 m!6091632))

(assert (=> b!5056241 d!1627339))

(declare-fun bm!352137 () Bool)

(declare-fun call!352142 () List!58546)

(declare-fun call!352144 () List!58546)

(assert (=> bm!352137 (= call!352142 (++!12771 call!352144 (list!18965 ys!41)))))

(declare-fun d!1627341 () Bool)

(declare-fun e!3156537 () Bool)

(assert (=> d!1627341 e!3156537))

(declare-fun c!867530 () Bool)

(assert (=> d!1627341 (= c!867530 ((_ is Nil!58422) (list!18965 (left!42798 (right!43128 xs!286)))))))

(assert (=> d!1627341 (= (appendAssoc!293 (list!18965 (left!42798 (right!43128 xs!286))) (list!18965 (right!43128 (right!43128 xs!286))) (list!18965 ys!41)) true)))

(declare-fun b!5056598 () Bool)

(declare-fun call!352145 () List!58546)

(assert (=> b!5056598 (= e!3156537 (= call!352142 call!352145))))

(declare-fun bm!352138 () Bool)

(declare-fun call!352143 () List!58546)

(assert (=> bm!352138 (= call!352143 (++!12771 (list!18965 (right!43128 (right!43128 xs!286))) (list!18965 ys!41)))))

(declare-fun bm!352139 () Bool)

(assert (=> bm!352139 (= call!352145 (++!12771 (list!18965 (left!42798 (right!43128 xs!286))) call!352143))))

(declare-fun b!5056599 () Bool)

(assert (=> b!5056599 (= e!3156537 (= call!352142 call!352145))))

(declare-fun lt!2087466 () Bool)

(assert (=> b!5056599 (= lt!2087466 (appendAssoc!293 (t!371221 (list!18965 (left!42798 (right!43128 xs!286)))) (list!18965 (right!43128 (right!43128 xs!286))) (list!18965 ys!41)))))

(declare-fun bm!352140 () Bool)

(assert (=> bm!352140 (= call!352144 (++!12771 (list!18965 (left!42798 (right!43128 xs!286))) (list!18965 (right!43128 (right!43128 xs!286)))))))

(assert (= (and d!1627341 c!867530) b!5056598))

(assert (= (and d!1627341 (not c!867530)) b!5056599))

(assert (= (or b!5056598 b!5056599) bm!352140))

(assert (= (or b!5056598 b!5056599) bm!352138))

(assert (= (or b!5056598 b!5056599) bm!352139))

(assert (= (or b!5056598 b!5056599) bm!352137))

(assert (=> bm!352137 m!6090940))

(declare-fun m!6091646 () Bool)

(assert (=> bm!352137 m!6091646))

(assert (=> bm!352139 m!6091050))

(declare-fun m!6091648 () Bool)

(assert (=> bm!352139 m!6091648))

(assert (=> bm!352140 m!6091050))

(assert (=> bm!352140 m!6091052))

(assert (=> bm!352140 m!6091334))

(assert (=> bm!352138 m!6091052))

(assert (=> bm!352138 m!6090940))

(assert (=> bm!352138 m!6091056))

(assert (=> b!5056599 m!6091052))

(assert (=> b!5056599 m!6090940))

(declare-fun m!6091652 () Bool)

(assert (=> b!5056599 m!6091652))

(assert (=> b!5056224 d!1627341))

(assert (=> b!5056224 d!1627259))

(assert (=> b!5056224 d!1627255))

(assert (=> b!5056224 d!1627179))

(declare-fun d!1627345 () Bool)

(declare-fun res!2153216 () Bool)

(declare-fun e!3156540 () Bool)

(assert (=> d!1627345 (=> (not res!2153216) (not e!3156540))))

(assert (=> d!1627345 (= res!2153216 (= (csize!31334 (left!42798 xs!286)) (+ (size!39053 (left!42798 (left!42798 xs!286))) (size!39053 (right!43128 (left!42798 xs!286))))))))

(assert (=> d!1627345 (= (inv!77493 (left!42798 xs!286)) e!3156540)))

(declare-fun b!5056604 () Bool)

(declare-fun res!2153217 () Bool)

(assert (=> b!5056604 (=> (not res!2153217) (not e!3156540))))

(assert (=> b!5056604 (= res!2153217 (and (not (= (left!42798 (left!42798 xs!286)) Empty!15552)) (not (= (right!43128 (left!42798 xs!286)) Empty!15552))))))

(declare-fun b!5056605 () Bool)

(declare-fun res!2153218 () Bool)

(assert (=> b!5056605 (=> (not res!2153218) (not e!3156540))))

(assert (=> b!5056605 (= res!2153218 (= (cheight!15763 (left!42798 xs!286)) (+ (max!0 (height!2129 (left!42798 (left!42798 xs!286))) (height!2129 (right!43128 (left!42798 xs!286)))) 1)))))

(declare-fun b!5056606 () Bool)

(assert (=> b!5056606 (= e!3156540 (<= 0 (cheight!15763 (left!42798 xs!286))))))

(assert (= (and d!1627345 res!2153216) b!5056604))

(assert (= (and b!5056604 res!2153217) b!5056605))

(assert (= (and b!5056605 res!2153218) b!5056606))

(declare-fun m!6091666 () Bool)

(assert (=> d!1627345 m!6091666))

(declare-fun m!6091668 () Bool)

(assert (=> d!1627345 m!6091668))

(assert (=> b!5056605 m!6091592))

(assert (=> b!5056605 m!6091594))

(assert (=> b!5056605 m!6091592))

(assert (=> b!5056605 m!6091594))

(declare-fun m!6091672 () Bool)

(assert (=> b!5056605 m!6091672))

(assert (=> b!5056238 d!1627345))

(declare-fun d!1627349 () Bool)

(declare-fun c!867534 () Bool)

(assert (=> d!1627349 (= c!867534 ((_ is Node!15552) (left!42798 (right!43128 ys!41))))))

(declare-fun e!3156543 () Bool)

(assert (=> d!1627349 (= (inv!77490 (left!42798 (right!43128 ys!41))) e!3156543)))

(declare-fun b!5056611 () Bool)

(assert (=> b!5056611 (= e!3156543 (inv!77493 (left!42798 (right!43128 ys!41))))))

(declare-fun b!5056612 () Bool)

(declare-fun e!3156544 () Bool)

(assert (=> b!5056612 (= e!3156543 e!3156544)))

(declare-fun res!2153219 () Bool)

(assert (=> b!5056612 (= res!2153219 (not ((_ is Leaf!25833) (left!42798 (right!43128 ys!41)))))))

(assert (=> b!5056612 (=> res!2153219 e!3156544)))

(declare-fun b!5056613 () Bool)

(assert (=> b!5056613 (= e!3156544 (inv!77494 (left!42798 (right!43128 ys!41))))))

(assert (= (and d!1627349 c!867534) b!5056611))

(assert (= (and d!1627349 (not c!867534)) b!5056612))

(assert (= (and b!5056612 (not res!2153219)) b!5056613))

(declare-fun m!6091676 () Bool)

(assert (=> b!5056611 m!6091676))

(declare-fun m!6091678 () Bool)

(assert (=> b!5056613 m!6091678))

(assert (=> b!5056361 d!1627349))

(declare-fun d!1627353 () Bool)

(declare-fun c!867535 () Bool)

(assert (=> d!1627353 (= c!867535 ((_ is Node!15552) (right!43128 (right!43128 ys!41))))))

(declare-fun e!3156546 () Bool)

(assert (=> d!1627353 (= (inv!77490 (right!43128 (right!43128 ys!41))) e!3156546)))

(declare-fun b!5056616 () Bool)

(assert (=> b!5056616 (= e!3156546 (inv!77493 (right!43128 (right!43128 ys!41))))))

(declare-fun b!5056617 () Bool)

(declare-fun e!3156547 () Bool)

(assert (=> b!5056617 (= e!3156546 e!3156547)))

(declare-fun res!2153222 () Bool)

(assert (=> b!5056617 (= res!2153222 (not ((_ is Leaf!25833) (right!43128 (right!43128 ys!41)))))))

(assert (=> b!5056617 (=> res!2153222 e!3156547)))

(declare-fun b!5056618 () Bool)

(assert (=> b!5056618 (= e!3156547 (inv!77494 (right!43128 (right!43128 ys!41))))))

(assert (= (and d!1627353 c!867535) b!5056616))

(assert (= (and d!1627353 (not c!867535)) b!5056617))

(assert (= (and b!5056617 (not res!2153222)) b!5056618))

(declare-fun m!6091682 () Bool)

(assert (=> b!5056616 m!6091682))

(declare-fun m!6091684 () Bool)

(assert (=> b!5056618 m!6091684))

(assert (=> b!5056361 d!1627353))

(declare-fun d!1627357 () Bool)

(declare-fun lt!2087468 () Bool)

(assert (=> d!1627357 (= lt!2087468 (isEmpty!31609 (list!18965 (left!42798 xs!286))))))

(assert (=> d!1627357 (= lt!2087468 (= (size!39053 (left!42798 xs!286)) 0))))

(assert (=> d!1627357 (= (isEmpty!31606 (left!42798 xs!286)) lt!2087468)))

(declare-fun bs!1189400 () Bool)

(assert (= bs!1189400 d!1627357))

(assert (=> bs!1189400 m!6091040))

(assert (=> bs!1189400 m!6091040))

(declare-fun m!6091686 () Bool)

(assert (=> bs!1189400 m!6091686))

(assert (=> bs!1189400 m!6091576))

(assert (=> b!5056135 d!1627357))

(declare-fun d!1627359 () Bool)

(declare-fun lt!2087469 () Int)

(assert (=> d!1627359 (>= lt!2087469 0)))

(declare-fun e!3156550 () Int)

(assert (=> d!1627359 (= lt!2087469 e!3156550)))

(declare-fun c!867537 () Bool)

(assert (=> d!1627359 (= c!867537 ((_ is Nil!58422) (innerList!15640 (xs!18884 xs!286))))))

(assert (=> d!1627359 (= (size!39050 (innerList!15640 (xs!18884 xs!286))) lt!2087469)))

(declare-fun b!5056622 () Bool)

(assert (=> b!5056622 (= e!3156550 0)))

(declare-fun b!5056623 () Bool)

(assert (=> b!5056623 (= e!3156550 (+ 1 (size!39050 (t!371221 (innerList!15640 (xs!18884 xs!286))))))))

(assert (= (and d!1627359 c!867537) b!5056622))

(assert (= (and d!1627359 (not c!867537)) b!5056623))

(declare-fun m!6091692 () Bool)

(assert (=> b!5056623 m!6091692))

(assert (=> d!1627119 d!1627359))

(declare-fun d!1627363 () Bool)

(declare-fun c!867539 () Bool)

(assert (=> d!1627363 (= c!867539 ((_ is Node!15552) (left!42798 (right!43128 xs!286))))))

(declare-fun e!3156553 () Bool)

(assert (=> d!1627363 (= (inv!77490 (left!42798 (right!43128 xs!286))) e!3156553)))

(declare-fun b!5056627 () Bool)

(assert (=> b!5056627 (= e!3156553 (inv!77493 (left!42798 (right!43128 xs!286))))))

(declare-fun b!5056628 () Bool)

(declare-fun e!3156554 () Bool)

(assert (=> b!5056628 (= e!3156553 e!3156554)))

(declare-fun res!2153225 () Bool)

(assert (=> b!5056628 (= res!2153225 (not ((_ is Leaf!25833) (left!42798 (right!43128 xs!286)))))))

(assert (=> b!5056628 (=> res!2153225 e!3156554)))

(declare-fun b!5056629 () Bool)

(assert (=> b!5056629 (= e!3156554 (inv!77494 (left!42798 (right!43128 xs!286))))))

(assert (= (and d!1627363 c!867539) b!5056627))

(assert (= (and d!1627363 (not c!867539)) b!5056628))

(assert (= (and b!5056628 (not res!2153225)) b!5056629))

(declare-fun m!6091698 () Bool)

(assert (=> b!5056627 m!6091698))

(declare-fun m!6091700 () Bool)

(assert (=> b!5056629 m!6091700))

(assert (=> b!5056354 d!1627363))

(declare-fun d!1627367 () Bool)

(declare-fun c!867540 () Bool)

(assert (=> d!1627367 (= c!867540 ((_ is Node!15552) (right!43128 (right!43128 xs!286))))))

(declare-fun e!3156555 () Bool)

(assert (=> d!1627367 (= (inv!77490 (right!43128 (right!43128 xs!286))) e!3156555)))

(declare-fun b!5056630 () Bool)

(assert (=> b!5056630 (= e!3156555 (inv!77493 (right!43128 (right!43128 xs!286))))))

(declare-fun b!5056631 () Bool)

(declare-fun e!3156556 () Bool)

(assert (=> b!5056631 (= e!3156555 e!3156556)))

(declare-fun res!2153226 () Bool)

(assert (=> b!5056631 (= res!2153226 (not ((_ is Leaf!25833) (right!43128 (right!43128 xs!286)))))))

(assert (=> b!5056631 (=> res!2153226 e!3156556)))

(declare-fun b!5056632 () Bool)

(assert (=> b!5056632 (= e!3156556 (inv!77494 (right!43128 (right!43128 xs!286))))))

(assert (= (and d!1627367 c!867540) b!5056630))

(assert (= (and d!1627367 (not c!867540)) b!5056631))

(assert (= (and b!5056631 (not res!2153226)) b!5056632))

(declare-fun m!6091704 () Bool)

(assert (=> b!5056630 m!6091704))

(declare-fun m!6091706 () Bool)

(assert (=> b!5056632 m!6091706))

(assert (=> b!5056354 d!1627367))

(assert (=> b!5056330 d!1627321))

(assert (=> b!5056330 d!1627323))

(declare-fun d!1627371 () Bool)

(declare-fun c!867544 () Bool)

(assert (=> d!1627371 (= c!867544 ((_ is Nil!58422) lt!2087427))))

(declare-fun e!3156564 () (InoxSet T!105034))

(assert (=> d!1627371 (= (content!10410 lt!2087427) e!3156564)))

(declare-fun b!5056651 () Bool)

(assert (=> b!5056651 (= e!3156564 ((as const (Array T!105034 Bool)) false))))

(declare-fun b!5056652 () Bool)

(assert (=> b!5056652 (= e!3156564 ((_ map or) (store ((as const (Array T!105034 Bool)) false) (h!64870 lt!2087427) true) (content!10410 (t!371221 lt!2087427))))))

(assert (= (and d!1627371 c!867544) b!5056651))

(assert (= (and d!1627371 (not c!867544)) b!5056652))

(declare-fun m!6091728 () Bool)

(assert (=> b!5056652 m!6091728))

(declare-fun m!6091730 () Bool)

(assert (=> b!5056652 m!6091730))

(assert (=> d!1627171 d!1627371))

(declare-fun d!1627379 () Bool)

(declare-fun c!867545 () Bool)

(assert (=> d!1627379 (= c!867545 ((_ is Nil!58422) lt!2087419))))

(declare-fun e!3156565 () (InoxSet T!105034))

(assert (=> d!1627379 (= (content!10410 lt!2087419) e!3156565)))

(declare-fun b!5056653 () Bool)

(assert (=> b!5056653 (= e!3156565 ((as const (Array T!105034 Bool)) false))))

(declare-fun b!5056654 () Bool)

(assert (=> b!5056654 (= e!3156565 ((_ map or) (store ((as const (Array T!105034 Bool)) false) (h!64870 lt!2087419) true) (content!10410 (t!371221 lt!2087419))))))

(assert (= (and d!1627379 c!867545) b!5056653))

(assert (= (and d!1627379 (not c!867545)) b!5056654))

(declare-fun m!6091740 () Bool)

(assert (=> b!5056654 m!6091740))

(assert (=> b!5056654 m!6091234))

(assert (=> d!1627171 d!1627379))

(declare-fun d!1627383 () Bool)

(declare-fun c!867546 () Bool)

(assert (=> d!1627383 (= c!867546 ((_ is Nil!58422) lt!2087418))))

(declare-fun e!3156567 () (InoxSet T!105034))

(assert (=> d!1627383 (= (content!10410 lt!2087418) e!3156567)))

(declare-fun b!5056658 () Bool)

(assert (=> b!5056658 (= e!3156567 ((as const (Array T!105034 Bool)) false))))

(declare-fun b!5056659 () Bool)

(assert (=> b!5056659 (= e!3156567 ((_ map or) (store ((as const (Array T!105034 Bool)) false) (h!64870 lt!2087418) true) (content!10410 (t!371221 lt!2087418))))))

(assert (= (and d!1627383 c!867546) b!5056658))

(assert (= (and d!1627383 (not c!867546)) b!5056659))

(declare-fun m!6091742 () Bool)

(assert (=> b!5056659 m!6091742))

(declare-fun m!6091744 () Bool)

(assert (=> b!5056659 m!6091744))

(assert (=> d!1627171 d!1627383))

(declare-fun d!1627385 () Bool)

(declare-fun res!2153242 () Bool)

(declare-fun e!3156568 () Bool)

(assert (=> d!1627385 (=> (not res!2153242) (not e!3156568))))

(assert (=> d!1627385 (= res!2153242 (= (csize!31334 (left!42798 ys!41)) (+ (size!39053 (left!42798 (left!42798 ys!41))) (size!39053 (right!43128 (left!42798 ys!41))))))))

(assert (=> d!1627385 (= (inv!77493 (left!42798 ys!41)) e!3156568)))

(declare-fun b!5056660 () Bool)

(declare-fun res!2153243 () Bool)

(assert (=> b!5056660 (=> (not res!2153243) (not e!3156568))))

(assert (=> b!5056660 (= res!2153243 (and (not (= (left!42798 (left!42798 ys!41)) Empty!15552)) (not (= (right!43128 (left!42798 ys!41)) Empty!15552))))))

(declare-fun b!5056661 () Bool)

(declare-fun res!2153244 () Bool)

(assert (=> b!5056661 (=> (not res!2153244) (not e!3156568))))

(assert (=> b!5056661 (= res!2153244 (= (cheight!15763 (left!42798 ys!41)) (+ (max!0 (height!2129 (left!42798 (left!42798 ys!41))) (height!2129 (right!43128 (left!42798 ys!41)))) 1)))))

(declare-fun b!5056662 () Bool)

(assert (=> b!5056662 (= e!3156568 (<= 0 (cheight!15763 (left!42798 ys!41))))))

(assert (= (and d!1627385 res!2153242) b!5056660))

(assert (= (and b!5056660 res!2153243) b!5056661))

(assert (= (and b!5056661 res!2153244) b!5056662))

(declare-fun m!6091748 () Bool)

(assert (=> d!1627385 m!6091748))

(declare-fun m!6091750 () Bool)

(assert (=> d!1627385 m!6091750))

(assert (=> b!5056661 m!6091528))

(assert (=> b!5056661 m!6091530))

(assert (=> b!5056661 m!6091528))

(assert (=> b!5056661 m!6091530))

(declare-fun m!6091756 () Bool)

(assert (=> b!5056661 m!6091756))

(assert (=> b!5056244 d!1627385))

(declare-fun d!1627391 () Bool)

(declare-fun lt!2087471 () Bool)

(assert (=> d!1627391 (= lt!2087471 (isEmpty!31609 (list!18965 (right!43128 ys!41))))))

(assert (=> d!1627391 (= lt!2087471 (= (size!39053 (right!43128 ys!41)) 0))))

(assert (=> d!1627391 (= (isEmpty!31606 (right!43128 ys!41)) lt!2087471)))

(declare-fun bs!1189403 () Bool)

(assert (= bs!1189403 d!1627391))

(assert (=> bs!1189403 m!6091034))

(assert (=> bs!1189403 m!6091034))

(declare-fun m!6091758 () Bool)

(assert (=> bs!1189403 m!6091758))

(assert (=> bs!1189403 m!6091556))

(assert (=> b!5056332 d!1627391))

(declare-fun d!1627393 () Bool)

(declare-fun res!2153247 () Bool)

(declare-fun e!3156573 () Bool)

(assert (=> d!1627393 (=> (not res!2153247) (not e!3156573))))

(assert (=> d!1627393 (= res!2153247 (<= (size!39050 (list!18967 (xs!18884 (left!42798 ys!41)))) 512))))

(assert (=> d!1627393 (= (inv!77494 (left!42798 ys!41)) e!3156573)))

(declare-fun b!5056669 () Bool)

(declare-fun res!2153248 () Bool)

(assert (=> b!5056669 (=> (not res!2153248) (not e!3156573))))

(assert (=> b!5056669 (= res!2153248 (= (csize!31335 (left!42798 ys!41)) (size!39050 (list!18967 (xs!18884 (left!42798 ys!41))))))))

(declare-fun b!5056670 () Bool)

(assert (=> b!5056670 (= e!3156573 (and (> (csize!31335 (left!42798 ys!41)) 0) (<= (csize!31335 (left!42798 ys!41)) 512)))))

(assert (= (and d!1627393 res!2153247) b!5056669))

(assert (= (and b!5056669 res!2153248) b!5056670))

(assert (=> d!1627393 m!6091252))

(assert (=> d!1627393 m!6091252))

(declare-fun m!6091764 () Bool)

(assert (=> d!1627393 m!6091764))

(assert (=> b!5056669 m!6091252))

(assert (=> b!5056669 m!6091252))

(assert (=> b!5056669 m!6091764))

(assert (=> b!5056246 d!1627393))

(assert (=> b!5056220 d!1627175))

(assert (=> b!5056220 d!1627199))

(assert (=> b!5056220 d!1627213))

(declare-fun bm!352145 () Bool)

(declare-fun call!352150 () List!58546)

(declare-fun call!352152 () List!58546)

(assert (=> bm!352145 (= call!352150 (++!12771 call!352152 (list!18965 (right!43128 ys!41))))))

(declare-fun d!1627397 () Bool)

(declare-fun e!3156575 () Bool)

(assert (=> d!1627397 e!3156575))

(declare-fun c!867549 () Bool)

(assert (=> d!1627397 (= c!867549 ((_ is Nil!58422) (++!12771 (list!18965 xs!286) (list!18965 (left!42798 (left!42798 ys!41))))))))

(assert (=> d!1627397 (= (appendAssoc!293 (++!12771 (list!18965 xs!286) (list!18965 (left!42798 (left!42798 ys!41)))) (list!18965 (right!43128 (left!42798 ys!41))) (list!18965 (right!43128 ys!41))) true)))

(declare-fun b!5056674 () Bool)

(declare-fun call!352153 () List!58546)

(assert (=> b!5056674 (= e!3156575 (= call!352150 call!352153))))

(declare-fun bm!352146 () Bool)

(declare-fun call!352151 () List!58546)

(assert (=> bm!352146 (= call!352151 (++!12771 (list!18965 (right!43128 (left!42798 ys!41))) (list!18965 (right!43128 ys!41))))))

(declare-fun bm!352147 () Bool)

(assert (=> bm!352147 (= call!352153 (++!12771 (++!12771 (list!18965 xs!286) (list!18965 (left!42798 (left!42798 ys!41)))) call!352151))))

(declare-fun b!5056675 () Bool)

(assert (=> b!5056675 (= e!3156575 (= call!352150 call!352153))))

(declare-fun lt!2087472 () Bool)

(assert (=> b!5056675 (= lt!2087472 (appendAssoc!293 (t!371221 (++!12771 (list!18965 xs!286) (list!18965 (left!42798 (left!42798 ys!41))))) (list!18965 (right!43128 (left!42798 ys!41))) (list!18965 (right!43128 ys!41))))))

(declare-fun bm!352148 () Bool)

(assert (=> bm!352148 (= call!352152 (++!12771 (++!12771 (list!18965 xs!286) (list!18965 (left!42798 (left!42798 ys!41)))) (list!18965 (right!43128 (left!42798 ys!41)))))))

(assert (= (and d!1627397 c!867549) b!5056674))

(assert (= (and d!1627397 (not c!867549)) b!5056675))

(assert (= (or b!5056674 b!5056675) bm!352148))

(assert (= (or b!5056674 b!5056675) bm!352146))

(assert (= (or b!5056674 b!5056675) bm!352147))

(assert (= (or b!5056674 b!5056675) bm!352145))

(assert (=> bm!352145 m!6091034))

(declare-fun m!6091772 () Bool)

(assert (=> bm!352145 m!6091772))

(assert (=> bm!352147 m!6091030))

(declare-fun m!6091774 () Bool)

(assert (=> bm!352147 m!6091774))

(assert (=> bm!352148 m!6091030))

(assert (=> bm!352148 m!6091032))

(declare-fun m!6091776 () Bool)

(assert (=> bm!352148 m!6091776))

(assert (=> bm!352146 m!6091032))

(assert (=> bm!352146 m!6091034))

(declare-fun m!6091778 () Bool)

(assert (=> bm!352146 m!6091778))

(assert (=> b!5056675 m!6091032))

(assert (=> b!5056675 m!6091034))

(declare-fun m!6091780 () Bool)

(assert (=> b!5056675 m!6091780))

(assert (=> b!5056220 d!1627397))

(declare-fun b!5056679 () Bool)

(declare-fun e!3156578 () List!58546)

(assert (=> b!5056679 (= e!3156578 (Cons!58422 (h!64870 (list!18965 xs!286)) (++!12771 (t!371221 (list!18965 xs!286)) (list!18965 (left!42798 (left!42798 ys!41))))))))

(declare-fun b!5056680 () Bool)

(declare-fun res!2153253 () Bool)

(declare-fun e!3156577 () Bool)

(assert (=> b!5056680 (=> (not res!2153253) (not e!3156577))))

(declare-fun lt!2087474 () List!58546)

(assert (=> b!5056680 (= res!2153253 (= (size!39050 lt!2087474) (+ (size!39050 (list!18965 xs!286)) (size!39050 (list!18965 (left!42798 (left!42798 ys!41)))))))))

(declare-fun b!5056681 () Bool)

(assert (=> b!5056681 (= e!3156577 (or (not (= (list!18965 (left!42798 (left!42798 ys!41))) Nil!58422)) (= lt!2087474 (list!18965 xs!286))))))

(declare-fun d!1627403 () Bool)

(assert (=> d!1627403 e!3156577))

(declare-fun res!2153252 () Bool)

(assert (=> d!1627403 (=> (not res!2153252) (not e!3156577))))

(assert (=> d!1627403 (= res!2153252 (= (content!10410 lt!2087474) ((_ map or) (content!10410 (list!18965 xs!286)) (content!10410 (list!18965 (left!42798 (left!42798 ys!41)))))))))

(assert (=> d!1627403 (= lt!2087474 e!3156578)))

(declare-fun c!867551 () Bool)

(assert (=> d!1627403 (= c!867551 ((_ is Nil!58422) (list!18965 xs!286)))))

(assert (=> d!1627403 (= (++!12771 (list!18965 xs!286) (list!18965 (left!42798 (left!42798 ys!41)))) lt!2087474)))

(declare-fun b!5056678 () Bool)

(assert (=> b!5056678 (= e!3156578 (list!18965 (left!42798 (left!42798 ys!41))))))

(assert (= (and d!1627403 c!867551) b!5056678))

(assert (= (and d!1627403 (not c!867551)) b!5056679))

(assert (= (and d!1627403 res!2153252) b!5056680))

(assert (= (and b!5056680 res!2153253) b!5056681))

(assert (=> b!5056679 m!6091028))

(declare-fun m!6091788 () Bool)

(assert (=> b!5056679 m!6091788))

(declare-fun m!6091790 () Bool)

(assert (=> b!5056680 m!6091790))

(assert (=> b!5056680 m!6090938))

(declare-fun m!6091792 () Bool)

(assert (=> b!5056680 m!6091792))

(assert (=> b!5056680 m!6091028))

(declare-fun m!6091794 () Bool)

(assert (=> b!5056680 m!6091794))

(declare-fun m!6091796 () Bool)

(assert (=> d!1627403 m!6091796))

(assert (=> d!1627403 m!6090938))

(declare-fun m!6091798 () Bool)

(assert (=> d!1627403 m!6091798))

(assert (=> d!1627403 m!6091028))

(declare-fun m!6091800 () Bool)

(assert (=> d!1627403 m!6091800))

(assert (=> b!5056220 d!1627403))

(assert (=> b!5056220 d!1627211))

(declare-fun b!5056682 () Bool)

(declare-fun e!3156579 () Bool)

(declare-fun tp!1413314 () Bool)

(assert (=> b!5056682 (= e!3156579 (and tp_is_empty!37027 tp!1413314))))

(assert (=> b!5056342 (= tp!1413294 e!3156579)))

(assert (= (and b!5056342 ((_ is Cons!58422) (t!371221 (innerList!15640 (xs!18884 ys!41))))) b!5056682))

(declare-fun e!3156581 () Bool)

(declare-fun tp!1413316 () Bool)

(declare-fun tp!1413317 () Bool)

(declare-fun b!5056683 () Bool)

(assert (=> b!5056683 (= e!3156581 (and (inv!77490 (left!42798 (left!42798 (right!43128 xs!286)))) tp!1413317 (inv!77490 (right!43128 (left!42798 (right!43128 xs!286)))) tp!1413316))))

(declare-fun b!5056685 () Bool)

(declare-fun e!3156580 () Bool)

(declare-fun tp!1413315 () Bool)

(assert (=> b!5056685 (= e!3156580 tp!1413315)))

(declare-fun b!5056684 () Bool)

(assert (=> b!5056684 (= e!3156581 (and (inv!77489 (xs!18884 (left!42798 (right!43128 xs!286)))) e!3156580))))

(assert (=> b!5056354 (= tp!1413306 (and (inv!77490 (left!42798 (right!43128 xs!286))) e!3156581))))

(assert (= (and b!5056354 ((_ is Node!15552) (left!42798 (right!43128 xs!286)))) b!5056683))

(assert (= b!5056684 b!5056685))

(assert (= (and b!5056354 ((_ is Leaf!25833) (left!42798 (right!43128 xs!286)))) b!5056684))

(declare-fun m!6091802 () Bool)

(assert (=> b!5056683 m!6091802))

(declare-fun m!6091804 () Bool)

(assert (=> b!5056683 m!6091804))

(declare-fun m!6091806 () Bool)

(assert (=> b!5056684 m!6091806))

(assert (=> b!5056354 m!6091196))

(declare-fun b!5056690 () Bool)

(declare-fun tp!1413319 () Bool)

(declare-fun tp!1413320 () Bool)

(declare-fun e!3156585 () Bool)

(assert (=> b!5056690 (= e!3156585 (and (inv!77490 (left!42798 (right!43128 (right!43128 xs!286)))) tp!1413320 (inv!77490 (right!43128 (right!43128 (right!43128 xs!286)))) tp!1413319))))

(declare-fun b!5056692 () Bool)

(declare-fun e!3156584 () Bool)

(declare-fun tp!1413318 () Bool)

(assert (=> b!5056692 (= e!3156584 tp!1413318)))

(declare-fun b!5056691 () Bool)

(assert (=> b!5056691 (= e!3156585 (and (inv!77489 (xs!18884 (right!43128 (right!43128 xs!286)))) e!3156584))))

(assert (=> b!5056354 (= tp!1413305 (and (inv!77490 (right!43128 (right!43128 xs!286))) e!3156585))))

(assert (= (and b!5056354 ((_ is Node!15552) (right!43128 (right!43128 xs!286)))) b!5056690))

(assert (= b!5056691 b!5056692))

(assert (= (and b!5056354 ((_ is Leaf!25833) (right!43128 (right!43128 xs!286)))) b!5056691))

(declare-fun m!6091808 () Bool)

(assert (=> b!5056690 m!6091808))

(declare-fun m!6091810 () Bool)

(assert (=> b!5056690 m!6091810))

(declare-fun m!6091812 () Bool)

(assert (=> b!5056691 m!6091812))

(assert (=> b!5056354 m!6091198))

(declare-fun b!5056693 () Bool)

(declare-fun e!3156586 () Bool)

(declare-fun tp!1413321 () Bool)

(assert (=> b!5056693 (= e!3156586 (and tp_is_empty!37027 tp!1413321))))

(assert (=> b!5056357 (= tp!1413307 e!3156586)))

(assert (= (and b!5056357 ((_ is Cons!58422) (t!371221 (innerList!15640 (xs!18884 xs!286))))) b!5056693))

(declare-fun tp!1413323 () Bool)

(declare-fun tp!1413324 () Bool)

(declare-fun b!5056694 () Bool)

(declare-fun e!3156588 () Bool)

(assert (=> b!5056694 (= e!3156588 (and (inv!77490 (left!42798 (left!42798 (left!42798 ys!41)))) tp!1413324 (inv!77490 (right!43128 (left!42798 (left!42798 ys!41)))) tp!1413323))))

(declare-fun b!5056696 () Bool)

(declare-fun e!3156587 () Bool)

(declare-fun tp!1413322 () Bool)

(assert (=> b!5056696 (= e!3156587 tp!1413322)))

(declare-fun b!5056695 () Bool)

(assert (=> b!5056695 (= e!3156588 (and (inv!77489 (xs!18884 (left!42798 (left!42798 ys!41)))) e!3156587))))

(assert (=> b!5056358 (= tp!1413310 (and (inv!77490 (left!42798 (left!42798 ys!41))) e!3156588))))

(assert (= (and b!5056358 ((_ is Node!15552) (left!42798 (left!42798 ys!41)))) b!5056694))

(assert (= b!5056695 b!5056696))

(assert (= (and b!5056358 ((_ is Leaf!25833) (left!42798 (left!42798 ys!41)))) b!5056695))

(declare-fun m!6091814 () Bool)

(assert (=> b!5056694 m!6091814))

(declare-fun m!6091816 () Bool)

(assert (=> b!5056694 m!6091816))

(declare-fun m!6091818 () Bool)

(assert (=> b!5056695 m!6091818))

(assert (=> b!5056358 m!6091202))

(declare-fun b!5056697 () Bool)

(declare-fun tp!1413326 () Bool)

(declare-fun e!3156590 () Bool)

(declare-fun tp!1413327 () Bool)

(assert (=> b!5056697 (= e!3156590 (and (inv!77490 (left!42798 (right!43128 (left!42798 ys!41)))) tp!1413327 (inv!77490 (right!43128 (right!43128 (left!42798 ys!41)))) tp!1413326))))

(declare-fun b!5056699 () Bool)

(declare-fun e!3156589 () Bool)

(declare-fun tp!1413325 () Bool)

(assert (=> b!5056699 (= e!3156589 tp!1413325)))

(declare-fun b!5056698 () Bool)

(assert (=> b!5056698 (= e!3156590 (and (inv!77489 (xs!18884 (right!43128 (left!42798 ys!41)))) e!3156589))))

(assert (=> b!5056358 (= tp!1413309 (and (inv!77490 (right!43128 (left!42798 ys!41))) e!3156590))))

(assert (= (and b!5056358 ((_ is Node!15552) (right!43128 (left!42798 ys!41)))) b!5056697))

(assert (= b!5056698 b!5056699))

(assert (= (and b!5056358 ((_ is Leaf!25833) (right!43128 (left!42798 ys!41)))) b!5056698))

(declare-fun m!6091820 () Bool)

(assert (=> b!5056697 m!6091820))

(declare-fun m!6091822 () Bool)

(assert (=> b!5056697 m!6091822))

(declare-fun m!6091824 () Bool)

(assert (=> b!5056698 m!6091824))

(assert (=> b!5056358 m!6091204))

(declare-fun b!5056701 () Bool)

(declare-fun e!3156592 () Bool)

(declare-fun tp!1413328 () Bool)

(assert (=> b!5056701 (= e!3156592 (and tp_is_empty!37027 tp!1413328))))

(assert (=> b!5056363 (= tp!1413311 e!3156592)))

(assert (= (and b!5056363 ((_ is Cons!58422) (innerList!15640 (xs!18884 (right!43128 ys!41))))) b!5056701))

(declare-fun tp!1413331 () Bool)

(declare-fun b!5056703 () Bool)

(declare-fun e!3156594 () Bool)

(declare-fun tp!1413330 () Bool)

(assert (=> b!5056703 (= e!3156594 (and (inv!77490 (left!42798 (left!42798 (left!42798 xs!286)))) tp!1413331 (inv!77490 (right!43128 (left!42798 (left!42798 xs!286)))) tp!1413330))))

(declare-fun b!5056705 () Bool)

(declare-fun e!3156593 () Bool)

(declare-fun tp!1413329 () Bool)

(assert (=> b!5056705 (= e!3156593 tp!1413329)))

(declare-fun b!5056704 () Bool)

(assert (=> b!5056704 (= e!3156594 (and (inv!77489 (xs!18884 (left!42798 (left!42798 xs!286)))) e!3156593))))

(assert (=> b!5056351 (= tp!1413303 (and (inv!77490 (left!42798 (left!42798 xs!286))) e!3156594))))

(assert (= (and b!5056351 ((_ is Node!15552) (left!42798 (left!42798 xs!286)))) b!5056703))

(assert (= b!5056704 b!5056705))

(assert (= (and b!5056351 ((_ is Leaf!25833) (left!42798 (left!42798 xs!286)))) b!5056704))

(declare-fun m!6091830 () Bool)

(assert (=> b!5056703 m!6091830))

(declare-fun m!6091832 () Bool)

(assert (=> b!5056703 m!6091832))

(declare-fun m!6091834 () Bool)

(assert (=> b!5056704 m!6091834))

(assert (=> b!5056351 m!6091190))

(declare-fun b!5056708 () Bool)

(declare-fun e!3156597 () Bool)

(declare-fun tp!1413333 () Bool)

(declare-fun tp!1413334 () Bool)

(assert (=> b!5056708 (= e!3156597 (and (inv!77490 (left!42798 (right!43128 (left!42798 xs!286)))) tp!1413334 (inv!77490 (right!43128 (right!43128 (left!42798 xs!286)))) tp!1413333))))

(declare-fun b!5056710 () Bool)

(declare-fun e!3156596 () Bool)

(declare-fun tp!1413332 () Bool)

(assert (=> b!5056710 (= e!3156596 tp!1413332)))

(declare-fun b!5056709 () Bool)

(assert (=> b!5056709 (= e!3156597 (and (inv!77489 (xs!18884 (right!43128 (left!42798 xs!286)))) e!3156596))))

(assert (=> b!5056351 (= tp!1413302 (and (inv!77490 (right!43128 (left!42798 xs!286))) e!3156597))))

(assert (= (and b!5056351 ((_ is Node!15552) (right!43128 (left!42798 xs!286)))) b!5056708))

(assert (= b!5056709 b!5056710))

(assert (= (and b!5056351 ((_ is Leaf!25833) (right!43128 (left!42798 xs!286)))) b!5056709))

(declare-fun m!6091840 () Bool)

(assert (=> b!5056708 m!6091840))

(declare-fun m!6091842 () Bool)

(assert (=> b!5056708 m!6091842))

(declare-fun m!6091844 () Bool)

(assert (=> b!5056709 m!6091844))

(assert (=> b!5056351 m!6091192))

(declare-fun b!5056713 () Bool)

(declare-fun e!3156599 () Bool)

(declare-fun tp!1413335 () Bool)

(assert (=> b!5056713 (= e!3156599 (and tp_is_empty!37027 tp!1413335))))

(assert (=> b!5056356 (= tp!1413304 e!3156599)))

(assert (= (and b!5056356 ((_ is Cons!58422) (innerList!15640 (xs!18884 (right!43128 xs!286))))) b!5056713))

(declare-fun b!5056716 () Bool)

(declare-fun e!3156601 () Bool)

(declare-fun tp!1413336 () Bool)

(assert (=> b!5056716 (= e!3156601 (and tp_is_empty!37027 tp!1413336))))

(assert (=> b!5056360 (= tp!1413308 e!3156601)))

(assert (= (and b!5056360 ((_ is Cons!58422) (innerList!15640 (xs!18884 (left!42798 ys!41))))) b!5056716))

(declare-fun b!5056717 () Bool)

(declare-fun e!3156602 () Bool)

(declare-fun tp!1413337 () Bool)

(assert (=> b!5056717 (= e!3156602 (and tp_is_empty!37027 tp!1413337))))

(assert (=> b!5056353 (= tp!1413301 e!3156602)))

(assert (= (and b!5056353 ((_ is Cons!58422) (innerList!15640 (xs!18884 (left!42798 xs!286))))) b!5056717))

(declare-fun tp!1413340 () Bool)

(declare-fun tp!1413339 () Bool)

(declare-fun e!3156604 () Bool)

(declare-fun b!5056718 () Bool)

(assert (=> b!5056718 (= e!3156604 (and (inv!77490 (left!42798 (left!42798 (right!43128 ys!41)))) tp!1413340 (inv!77490 (right!43128 (left!42798 (right!43128 ys!41)))) tp!1413339))))

(declare-fun b!5056720 () Bool)

(declare-fun e!3156603 () Bool)

(declare-fun tp!1413338 () Bool)

(assert (=> b!5056720 (= e!3156603 tp!1413338)))

(declare-fun b!5056719 () Bool)

(assert (=> b!5056719 (= e!3156604 (and (inv!77489 (xs!18884 (left!42798 (right!43128 ys!41)))) e!3156603))))

(assert (=> b!5056361 (= tp!1413313 (and (inv!77490 (left!42798 (right!43128 ys!41))) e!3156604))))

(assert (= (and b!5056361 ((_ is Node!15552) (left!42798 (right!43128 ys!41)))) b!5056718))

(assert (= b!5056719 b!5056720))

(assert (= (and b!5056361 ((_ is Leaf!25833) (left!42798 (right!43128 ys!41)))) b!5056719))

(declare-fun m!6091852 () Bool)

(assert (=> b!5056718 m!6091852))

(declare-fun m!6091854 () Bool)

(assert (=> b!5056718 m!6091854))

(declare-fun m!6091856 () Bool)

(assert (=> b!5056719 m!6091856))

(assert (=> b!5056361 m!6091208))

(declare-fun e!3156607 () Bool)

(declare-fun b!5056723 () Bool)

(declare-fun tp!1413342 () Bool)

(declare-fun tp!1413343 () Bool)

(assert (=> b!5056723 (= e!3156607 (and (inv!77490 (left!42798 (right!43128 (right!43128 ys!41)))) tp!1413343 (inv!77490 (right!43128 (right!43128 (right!43128 ys!41)))) tp!1413342))))

(declare-fun b!5056725 () Bool)

(declare-fun e!3156606 () Bool)

(declare-fun tp!1413341 () Bool)

(assert (=> b!5056725 (= e!3156606 tp!1413341)))

(declare-fun b!5056724 () Bool)

(assert (=> b!5056724 (= e!3156607 (and (inv!77489 (xs!18884 (right!43128 (right!43128 ys!41)))) e!3156606))))

(assert (=> b!5056361 (= tp!1413312 (and (inv!77490 (right!43128 (right!43128 ys!41))) e!3156607))))

(assert (= (and b!5056361 ((_ is Node!15552) (right!43128 (right!43128 ys!41)))) b!5056723))

(assert (= b!5056724 b!5056725))

(assert (= (and b!5056361 ((_ is Leaf!25833) (right!43128 (right!43128 ys!41)))) b!5056724))

(declare-fun m!6091858 () Bool)

(assert (=> b!5056723 m!6091858))

(declare-fun m!6091860 () Bool)

(assert (=> b!5056723 m!6091860))

(declare-fun m!6091862 () Bool)

(assert (=> b!5056724 m!6091862))

(assert (=> b!5056361 m!6091210))

(check-sat (not b!5056691) (not d!1627217) (not b!5056535) (not b!5056583) (not b!5056618) (not b!5056481) (not b!5056703) (not b!5056369) (not d!1627311) (not b!5056421) (not b!5056599) (not b!5056558) (not b!5056690) (not d!1627191) (not b!5056489) (not b!5056723) (not bm!352124) (not b!5056391) (not b!5056701) (not b!5056582) (not b!5056716) (not b!5056366) (not b!5056516) (not b!5056705) (not b!5056407) (not b!5056390) (not b!5056374) (not b!5056573) (not d!1627339) (not b!5056536) (not d!1627301) (not b!5056539) (not bm!352121) (not b!5056466) (not b!5056675) (not b!5056717) (not b!5056533) (not b!5056415) (not bm!352148) (not bm!352106) (not b!5056679) (not b!5056698) (not b!5056534) (not b!5056697) (not bm!352107) (not b!5056430) (not b!5056387) (not d!1627385) (not bm!352122) (not b!5056699) (not b!5056713) (not b!5056532) (not b!5056694) (not b!5056708) (not d!1627317) (not b!5056431) (not b!5056724) (not b!5056586) (not bm!352127) (not b!5056683) (not b!5056704) (not d!1627195) (not b!5056575) (not b!5056414) (not b!5056720) (not b!5056682) (not b!5056630) (not b!5056531) (not b!5056422) (not b!5056361) (not b!5056596) (not b!5056692) (not b!5056354) (not b!5056548) tp_is_empty!37027 (not b!5056496) (not b!5056541) (not b!5056434) (not b!5056463) (not d!1627303) (not b!5056482) (not b!5056553) (not d!1627319) (not b!5056542) (not d!1627307) (not bm!352146) (not bm!352145) (not bm!352105) (not d!1627189) (not bm!352139) (not b!5056709) (not b!5056378) (not b!5056364) (not bm!352137) (not b!5056540) (not b!5056581) (not b!5056476) (not d!1627345) (not bm!352123) (not b!5056565) (not b!5056563) (not b!5056584) (not b!5056386) (not d!1627249) (not b!5056669) (not d!1627357) (not b!5056381) (not b!5056661) (not d!1627299) (not b!5056561) (not b!5056571) (not bm!352140) (not b!5056611) (not b!5056544) (not b!5056538) (not bm!352147) (not d!1627287) (not b!5056574) (not b!5056449) (not b!5056696) (not b!5056524) (not b!5056488) (not d!1627235) (not b!5056461) (not b!5056616) (not d!1627393) (not b!5056585) (not bm!352133) (not b!5056572) (not bm!352134) (not b!5056725) (not d!1627391) (not b!5056710) (not b!5056435) (not bm!352138) (not b!5056684) (not b!5056629) (not d!1627403) (not b!5056695) (not b!5056546) (not d!1627263) (not bm!352136) (not bm!352135) (not b!5056659) (not b!5056474) (not b!5056351) (not b!5056652) (not b!5056537) (not d!1627227) (not b!5056570) (not b!5056693) (not b!5056411) (not b!5056627) (not bm!352108) (not b!5056382) (not b!5056654) (not b!5056632) (not b!5056410) (not b!5056718) (not b!5056605) (not b!5056367) (not b!5056464) (not b!5056377) (not b!5056623) (not b!5056522) (not b!5056680) (not b!5056685) (not bm!352128) (not b!5056613) (not bm!352125) (not b!5056473) (not b!5056719) (not bm!352126) (not d!1627335) (not d!1627193) (not b!5056358))
(check-sat)
