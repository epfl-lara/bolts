; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536322 () Bool)

(assert start!536322)

(declare-fun b!5090090 () Bool)

(declare-fun res!2166615 () Bool)

(declare-fun e!3174467 () Bool)

(assert (=> b!5090090 (=> (not res!2166615) (not e!3174467))))

(declare-fun i!607 () Int)

(declare-datatypes ((T!105524 0))(
  ( (T!105525 (val!23710 Int)) )
))
(declare-datatypes ((List!58635 0))(
  ( (Nil!58511) (Cons!58511 (h!64959 T!105524) (t!371528 List!58635)) )
))
(declare-datatypes ((IArray!31313 0))(
  ( (IArray!31314 (innerList!15714 List!58635)) )
))
(declare-datatypes ((Conc!15626 0))(
  ( (Node!15626 (left!42911 Conc!15626) (right!43241 Conc!15626) (csize!31482 Int) (cheight!15837 Int)) (Leaf!25944 (xs!19008 IArray!31313) (csize!31483 Int)) (Empty!15626) )
))
(declare-fun t!3643 () Conc!15626)

(declare-fun size!39194 (Conc!15626) Int)

(assert (=> b!5090090 (= res!2166615 (< i!607 (size!39194 t!3643)))))

(declare-fun res!2166613 () Bool)

(assert (=> start!536322 (=> (not res!2166613) (not e!3174467))))

(assert (=> start!536322 (= res!2166613 (<= 0 i!607))))

(assert (=> start!536322 e!3174467))

(assert (=> start!536322 true))

(declare-fun e!3174466 () Bool)

(declare-fun inv!77883 (Conc!15626) Bool)

(assert (=> start!536322 (and (inv!77883 t!3643) e!3174466)))

(declare-fun b!5090091 () Bool)

(declare-fun e!3174465 () Bool)

(declare-fun inv!77884 (IArray!31313) Bool)

(assert (=> b!5090091 (= e!3174466 (and (inv!77884 (xs!19008 t!3643)) e!3174465))))

(declare-fun b!5090092 () Bool)

(declare-fun res!2166616 () Bool)

(assert (=> b!5090092 (=> (not res!2166616) (not e!3174467))))

(get-info :version)

(assert (=> b!5090092 (= res!2166616 (and (not ((_ is Leaf!25944) t!3643)) ((_ is Node!15626) t!3643)))))

(declare-fun b!5090093 () Bool)

(declare-fun e!3174468 () Bool)

(assert (=> b!5090093 (= e!3174467 e!3174468)))

(declare-fun res!2166614 () Bool)

(assert (=> b!5090093 (=> (not res!2166614) (not e!3174468))))

(declare-fun lt!2092339 () Int)

(assert (=> b!5090093 (= res!2166614 (>= i!607 lt!2092339))))

(assert (=> b!5090093 (= lt!2092339 (size!39194 (left!42911 t!3643)))))

(declare-fun lt!2092340 () Bool)

(declare-fun appendIndex!417 (List!58635 List!58635 Int) Bool)

(declare-fun list!19084 (Conc!15626) List!58635)

(assert (=> b!5090093 (= lt!2092340 (appendIndex!417 (list!19084 (left!42911 t!3643)) (list!19084 (right!43241 t!3643)) i!607))))

(declare-fun b!5090094 () Bool)

(declare-fun tp!1418981 () Bool)

(declare-fun tp!1418982 () Bool)

(assert (=> b!5090094 (= e!3174466 (and (inv!77883 (left!42911 t!3643)) tp!1418981 (inv!77883 (right!43241 t!3643)) tp!1418982))))

(declare-fun b!5090095 () Bool)

(declare-fun size!39195 (List!58635) Int)

(assert (=> b!5090095 (= e!3174468 (>= i!607 (size!39195 (list!19084 t!3643))))))

(declare-fun lt!2092338 () T!105524)

(declare-fun apply!14258 (Conc!15626 Int) T!105524)

(assert (=> b!5090095 (= lt!2092338 (apply!14258 (right!43241 t!3643) (- i!607 lt!2092339)))))

(declare-fun b!5090096 () Bool)

(declare-fun tp!1418983 () Bool)

(assert (=> b!5090096 (= e!3174465 tp!1418983)))

(assert (= (and start!536322 res!2166613) b!5090090))

(assert (= (and b!5090090 res!2166615) b!5090092))

(assert (= (and b!5090092 res!2166616) b!5090093))

(assert (= (and b!5090093 res!2166614) b!5090095))

(assert (= (and start!536322 ((_ is Node!15626) t!3643)) b!5090094))

(assert (= b!5090091 b!5090096))

(assert (= (and start!536322 ((_ is Leaf!25944) t!3643)) b!5090091))

(declare-fun m!6148282 () Bool)

(assert (=> b!5090091 m!6148282))

(declare-fun m!6148284 () Bool)

(assert (=> b!5090095 m!6148284))

(assert (=> b!5090095 m!6148284))

(declare-fun m!6148286 () Bool)

(assert (=> b!5090095 m!6148286))

(declare-fun m!6148288 () Bool)

(assert (=> b!5090095 m!6148288))

(declare-fun m!6148290 () Bool)

(assert (=> b!5090093 m!6148290))

(declare-fun m!6148292 () Bool)

(assert (=> b!5090093 m!6148292))

(declare-fun m!6148294 () Bool)

(assert (=> b!5090093 m!6148294))

(assert (=> b!5090093 m!6148292))

(assert (=> b!5090093 m!6148294))

(declare-fun m!6148296 () Bool)

(assert (=> b!5090093 m!6148296))

(declare-fun m!6148298 () Bool)

(assert (=> b!5090094 m!6148298))

(declare-fun m!6148300 () Bool)

(assert (=> b!5090094 m!6148300))

(declare-fun m!6148302 () Bool)

(assert (=> start!536322 m!6148302))

(declare-fun m!6148304 () Bool)

(assert (=> b!5090090 m!6148304))

(check-sat (not b!5090095) (not b!5090093) (not b!5090091) (not b!5090094) (not start!536322) (not b!5090096) (not b!5090090))
(check-sat)
(get-model)

(declare-fun d!1647706 () Bool)

(declare-fun c!874711 () Bool)

(assert (=> d!1647706 (= c!874711 ((_ is Node!15626) t!3643))))

(declare-fun e!3174473 () Bool)

(assert (=> d!1647706 (= (inv!77883 t!3643) e!3174473)))

(declare-fun b!5090103 () Bool)

(declare-fun inv!77885 (Conc!15626) Bool)

(assert (=> b!5090103 (= e!3174473 (inv!77885 t!3643))))

(declare-fun b!5090104 () Bool)

(declare-fun e!3174474 () Bool)

(assert (=> b!5090104 (= e!3174473 e!3174474)))

(declare-fun res!2166619 () Bool)

(assert (=> b!5090104 (= res!2166619 (not ((_ is Leaf!25944) t!3643)))))

(assert (=> b!5090104 (=> res!2166619 e!3174474)))

(declare-fun b!5090105 () Bool)

(declare-fun inv!77886 (Conc!15626) Bool)

(assert (=> b!5090105 (= e!3174474 (inv!77886 t!3643))))

(assert (= (and d!1647706 c!874711) b!5090103))

(assert (= (and d!1647706 (not c!874711)) b!5090104))

(assert (= (and b!5090104 (not res!2166619)) b!5090105))

(declare-fun m!6148306 () Bool)

(assert (=> b!5090103 m!6148306))

(declare-fun m!6148308 () Bool)

(assert (=> b!5090105 m!6148308))

(assert (=> start!536322 d!1647706))

(declare-fun d!1647710 () Bool)

(assert (=> d!1647710 (= (inv!77884 (xs!19008 t!3643)) (<= (size!39195 (innerList!15714 (xs!19008 t!3643))) 2147483647))))

(declare-fun bs!1191120 () Bool)

(assert (= bs!1191120 d!1647710))

(declare-fun m!6148310 () Bool)

(assert (=> bs!1191120 m!6148310))

(assert (=> b!5090091 d!1647710))

(declare-fun d!1647712 () Bool)

(declare-fun lt!2092343 () Int)

(assert (=> d!1647712 (= lt!2092343 (size!39195 (list!19084 (left!42911 t!3643))))))

(assert (=> d!1647712 (= lt!2092343 (ite ((_ is Empty!15626) (left!42911 t!3643)) 0 (ite ((_ is Leaf!25944) (left!42911 t!3643)) (csize!31483 (left!42911 t!3643)) (csize!31482 (left!42911 t!3643)))))))

(assert (=> d!1647712 (= (size!39194 (left!42911 t!3643)) lt!2092343)))

(declare-fun bs!1191121 () Bool)

(assert (= bs!1191121 d!1647712))

(assert (=> bs!1191121 m!6148292))

(assert (=> bs!1191121 m!6148292))

(declare-fun m!6148312 () Bool)

(assert (=> bs!1191121 m!6148312))

(assert (=> b!5090093 d!1647712))

(declare-fun b!5090135 () Bool)

(declare-fun e!3174496 () Int)

(assert (=> b!5090135 (= e!3174496 (- i!607 (size!39195 (list!19084 (left!42911 t!3643)))))))

(declare-fun d!1647714 () Bool)

(declare-fun e!3174498 () T!105524)

(declare-fun apply!14259 (List!58635 Int) T!105524)

(declare-fun ++!12830 (List!58635 List!58635) List!58635)

(assert (=> d!1647714 (= (apply!14259 (++!12830 (list!19084 (left!42911 t!3643)) (list!19084 (right!43241 t!3643))) i!607) e!3174498)))

(declare-fun c!874721 () Bool)

(assert (=> d!1647714 (= c!874721 (< i!607 (size!39195 (list!19084 (left!42911 t!3643)))))))

(declare-fun lt!2092351 () Bool)

(declare-fun e!3174497 () Bool)

(assert (=> d!1647714 (= lt!2092351 e!3174497)))

(declare-fun res!2166631 () Bool)

(assert (=> d!1647714 (=> res!2166631 e!3174497)))

(assert (=> d!1647714 (= res!2166631 (or ((_ is Nil!58511) (list!19084 (left!42911 t!3643))) (= i!607 0)))))

(declare-fun e!3174495 () Bool)

(assert (=> d!1647714 e!3174495))

(declare-fun res!2166632 () Bool)

(assert (=> d!1647714 (=> (not res!2166632) (not e!3174495))))

(assert (=> d!1647714 (= res!2166632 (<= 0 i!607))))

(assert (=> d!1647714 (= (appendIndex!417 (list!19084 (left!42911 t!3643)) (list!19084 (right!43241 t!3643)) i!607) true)))

(declare-fun b!5090136 () Bool)

(assert (=> b!5090136 (= e!3174496 i!607)))

(declare-fun b!5090137 () Bool)

(declare-fun call!354642 () T!105524)

(assert (=> b!5090137 (= e!3174498 call!354642)))

(declare-fun bm!354637 () Bool)

(assert (=> bm!354637 (= call!354642 (apply!14259 (ite c!874721 (list!19084 (left!42911 t!3643)) (list!19084 (right!43241 t!3643))) e!3174496))))

(declare-fun c!874722 () Bool)

(assert (=> bm!354637 (= c!874722 c!874721)))

(declare-fun b!5090138 () Bool)

(assert (=> b!5090138 (= e!3174497 (appendIndex!417 (t!371528 (list!19084 (left!42911 t!3643))) (list!19084 (right!43241 t!3643)) (- i!607 1)))))

(declare-fun b!5090139 () Bool)

(assert (=> b!5090139 (= e!3174498 call!354642)))

(declare-fun b!5090140 () Bool)

(assert (=> b!5090140 (= e!3174495 (< i!607 (+ (size!39195 (list!19084 (left!42911 t!3643))) (size!39195 (list!19084 (right!43241 t!3643))))))))

(assert (= (and d!1647714 res!2166632) b!5090140))

(assert (= (and d!1647714 (not res!2166631)) b!5090138))

(assert (= (and d!1647714 c!874721) b!5090137))

(assert (= (and d!1647714 (not c!874721)) b!5090139))

(assert (= (or b!5090137 b!5090139) bm!354637))

(assert (= (and bm!354637 c!874722) b!5090136))

(assert (= (and bm!354637 (not c!874722)) b!5090135))

(assert (=> b!5090135 m!6148292))

(assert (=> b!5090135 m!6148312))

(declare-fun m!6148320 () Bool)

(assert (=> bm!354637 m!6148320))

(assert (=> b!5090138 m!6148294))

(declare-fun m!6148322 () Bool)

(assert (=> b!5090138 m!6148322))

(assert (=> b!5090140 m!6148292))

(assert (=> b!5090140 m!6148312))

(assert (=> b!5090140 m!6148294))

(declare-fun m!6148324 () Bool)

(assert (=> b!5090140 m!6148324))

(assert (=> d!1647714 m!6148292))

(assert (=> d!1647714 m!6148294))

(declare-fun m!6148326 () Bool)

(assert (=> d!1647714 m!6148326))

(assert (=> d!1647714 m!6148326))

(declare-fun m!6148328 () Bool)

(assert (=> d!1647714 m!6148328))

(assert (=> d!1647714 m!6148292))

(assert (=> d!1647714 m!6148312))

(assert (=> b!5090093 d!1647714))

(declare-fun b!5090162 () Bool)

(declare-fun e!3174510 () List!58635)

(assert (=> b!5090162 (= e!3174510 (++!12830 (list!19084 (left!42911 (left!42911 t!3643))) (list!19084 (right!43241 (left!42911 t!3643)))))))

(declare-fun d!1647720 () Bool)

(declare-fun c!874731 () Bool)

(assert (=> d!1647720 (= c!874731 ((_ is Empty!15626) (left!42911 t!3643)))))

(declare-fun e!3174509 () List!58635)

(assert (=> d!1647720 (= (list!19084 (left!42911 t!3643)) e!3174509)))

(declare-fun b!5090159 () Bool)

(assert (=> b!5090159 (= e!3174509 Nil!58511)))

(declare-fun b!5090160 () Bool)

(assert (=> b!5090160 (= e!3174509 e!3174510)))

(declare-fun c!874732 () Bool)

(assert (=> b!5090160 (= c!874732 ((_ is Leaf!25944) (left!42911 t!3643)))))

(declare-fun b!5090161 () Bool)

(declare-fun list!19085 (IArray!31313) List!58635)

(assert (=> b!5090161 (= e!3174510 (list!19085 (xs!19008 (left!42911 t!3643))))))

(assert (= (and d!1647720 c!874731) b!5090159))

(assert (= (and d!1647720 (not c!874731)) b!5090160))

(assert (= (and b!5090160 c!874732) b!5090161))

(assert (= (and b!5090160 (not c!874732)) b!5090162))

(declare-fun m!6148340 () Bool)

(assert (=> b!5090162 m!6148340))

(declare-fun m!6148342 () Bool)

(assert (=> b!5090162 m!6148342))

(assert (=> b!5090162 m!6148340))

(assert (=> b!5090162 m!6148342))

(declare-fun m!6148344 () Bool)

(assert (=> b!5090162 m!6148344))

(declare-fun m!6148346 () Bool)

(assert (=> b!5090161 m!6148346))

(assert (=> b!5090093 d!1647720))

(declare-fun b!5090166 () Bool)

(declare-fun e!3174512 () List!58635)

(assert (=> b!5090166 (= e!3174512 (++!12830 (list!19084 (left!42911 (right!43241 t!3643))) (list!19084 (right!43241 (right!43241 t!3643)))))))

(declare-fun d!1647724 () Bool)

(declare-fun c!874733 () Bool)

(assert (=> d!1647724 (= c!874733 ((_ is Empty!15626) (right!43241 t!3643)))))

(declare-fun e!3174511 () List!58635)

(assert (=> d!1647724 (= (list!19084 (right!43241 t!3643)) e!3174511)))

(declare-fun b!5090163 () Bool)

(assert (=> b!5090163 (= e!3174511 Nil!58511)))

(declare-fun b!5090164 () Bool)

(assert (=> b!5090164 (= e!3174511 e!3174512)))

(declare-fun c!874734 () Bool)

(assert (=> b!5090164 (= c!874734 ((_ is Leaf!25944) (right!43241 t!3643)))))

(declare-fun b!5090165 () Bool)

(assert (=> b!5090165 (= e!3174512 (list!19085 (xs!19008 (right!43241 t!3643))))))

(assert (= (and d!1647724 c!874733) b!5090163))

(assert (= (and d!1647724 (not c!874733)) b!5090164))

(assert (= (and b!5090164 c!874734) b!5090165))

(assert (= (and b!5090164 (not c!874734)) b!5090166))

(declare-fun m!6148348 () Bool)

(assert (=> b!5090166 m!6148348))

(declare-fun m!6148350 () Bool)

(assert (=> b!5090166 m!6148350))

(assert (=> b!5090166 m!6148348))

(assert (=> b!5090166 m!6148350))

(declare-fun m!6148352 () Bool)

(assert (=> b!5090166 m!6148352))

(declare-fun m!6148354 () Bool)

(assert (=> b!5090165 m!6148354))

(assert (=> b!5090093 d!1647724))

(declare-fun d!1647726 () Bool)

(declare-fun c!874735 () Bool)

(assert (=> d!1647726 (= c!874735 ((_ is Node!15626) (left!42911 t!3643)))))

(declare-fun e!3174513 () Bool)

(assert (=> d!1647726 (= (inv!77883 (left!42911 t!3643)) e!3174513)))

(declare-fun b!5090167 () Bool)

(assert (=> b!5090167 (= e!3174513 (inv!77885 (left!42911 t!3643)))))

(declare-fun b!5090168 () Bool)

(declare-fun e!3174514 () Bool)

(assert (=> b!5090168 (= e!3174513 e!3174514)))

(declare-fun res!2166635 () Bool)

(assert (=> b!5090168 (= res!2166635 (not ((_ is Leaf!25944) (left!42911 t!3643))))))

(assert (=> b!5090168 (=> res!2166635 e!3174514)))

(declare-fun b!5090169 () Bool)

(assert (=> b!5090169 (= e!3174514 (inv!77886 (left!42911 t!3643)))))

(assert (= (and d!1647726 c!874735) b!5090167))

(assert (= (and d!1647726 (not c!874735)) b!5090168))

(assert (= (and b!5090168 (not res!2166635)) b!5090169))

(declare-fun m!6148356 () Bool)

(assert (=> b!5090167 m!6148356))

(declare-fun m!6148358 () Bool)

(assert (=> b!5090169 m!6148358))

(assert (=> b!5090094 d!1647726))

(declare-fun d!1647728 () Bool)

(declare-fun c!874738 () Bool)

(assert (=> d!1647728 (= c!874738 ((_ is Node!15626) (right!43241 t!3643)))))

(declare-fun e!3174517 () Bool)

(assert (=> d!1647728 (= (inv!77883 (right!43241 t!3643)) e!3174517)))

(declare-fun b!5090174 () Bool)

(assert (=> b!5090174 (= e!3174517 (inv!77885 (right!43241 t!3643)))))

(declare-fun b!5090175 () Bool)

(declare-fun e!3174518 () Bool)

(assert (=> b!5090175 (= e!3174517 e!3174518)))

(declare-fun res!2166636 () Bool)

(assert (=> b!5090175 (= res!2166636 (not ((_ is Leaf!25944) (right!43241 t!3643))))))

(assert (=> b!5090175 (=> res!2166636 e!3174518)))

(declare-fun b!5090176 () Bool)

(assert (=> b!5090176 (= e!3174518 (inv!77886 (right!43241 t!3643)))))

(assert (= (and d!1647728 c!874738) b!5090174))

(assert (= (and d!1647728 (not c!874738)) b!5090175))

(assert (= (and b!5090175 (not res!2166636)) b!5090176))

(declare-fun m!6148360 () Bool)

(assert (=> b!5090174 m!6148360))

(declare-fun m!6148362 () Bool)

(assert (=> b!5090176 m!6148362))

(assert (=> b!5090094 d!1647728))

(declare-fun d!1647730 () Bool)

(declare-fun lt!2092353 () Int)

(assert (=> d!1647730 (= lt!2092353 (size!39195 (list!19084 t!3643)))))

(assert (=> d!1647730 (= lt!2092353 (ite ((_ is Empty!15626) t!3643) 0 (ite ((_ is Leaf!25944) t!3643) (csize!31483 t!3643) (csize!31482 t!3643))))))

(assert (=> d!1647730 (= (size!39194 t!3643) lt!2092353)))

(declare-fun bs!1191123 () Bool)

(assert (= bs!1191123 d!1647730))

(assert (=> bs!1191123 m!6148284))

(assert (=> bs!1191123 m!6148284))

(assert (=> bs!1191123 m!6148286))

(assert (=> b!5090090 d!1647730))

(declare-fun d!1647732 () Bool)

(declare-fun lt!2092356 () Int)

(assert (=> d!1647732 (>= lt!2092356 0)))

(declare-fun e!3174527 () Int)

(assert (=> d!1647732 (= lt!2092356 e!3174527)))

(declare-fun c!874747 () Bool)

(assert (=> d!1647732 (= c!874747 ((_ is Nil!58511) (list!19084 t!3643)))))

(assert (=> d!1647732 (= (size!39195 (list!19084 t!3643)) lt!2092356)))

(declare-fun b!5090193 () Bool)

(assert (=> b!5090193 (= e!3174527 0)))

(declare-fun b!5090194 () Bool)

(assert (=> b!5090194 (= e!3174527 (+ 1 (size!39195 (t!371528 (list!19084 t!3643)))))))

(assert (= (and d!1647732 c!874747) b!5090193))

(assert (= (and d!1647732 (not c!874747)) b!5090194))

(declare-fun m!6148378 () Bool)

(assert (=> b!5090194 m!6148378))

(assert (=> b!5090095 d!1647732))

(declare-fun b!5090198 () Bool)

(declare-fun e!3174529 () List!58635)

(assert (=> b!5090198 (= e!3174529 (++!12830 (list!19084 (left!42911 t!3643)) (list!19084 (right!43241 t!3643))))))

(declare-fun d!1647736 () Bool)

(declare-fun c!874748 () Bool)

(assert (=> d!1647736 (= c!874748 ((_ is Empty!15626) t!3643))))

(declare-fun e!3174528 () List!58635)

(assert (=> d!1647736 (= (list!19084 t!3643) e!3174528)))

(declare-fun b!5090195 () Bool)

(assert (=> b!5090195 (= e!3174528 Nil!58511)))

(declare-fun b!5090196 () Bool)

(assert (=> b!5090196 (= e!3174528 e!3174529)))

(declare-fun c!874749 () Bool)

(assert (=> b!5090196 (= c!874749 ((_ is Leaf!25944) t!3643))))

(declare-fun b!5090197 () Bool)

(assert (=> b!5090197 (= e!3174529 (list!19085 (xs!19008 t!3643)))))

(assert (= (and d!1647736 c!874748) b!5090195))

(assert (= (and d!1647736 (not c!874748)) b!5090196))

(assert (= (and b!5090196 c!874749) b!5090197))

(assert (= (and b!5090196 (not c!874749)) b!5090198))

(assert (=> b!5090198 m!6148292))

(assert (=> b!5090198 m!6148294))

(assert (=> b!5090198 m!6148292))

(assert (=> b!5090198 m!6148294))

(assert (=> b!5090198 m!6148326))

(declare-fun m!6148386 () Bool)

(assert (=> b!5090197 m!6148386))

(assert (=> b!5090095 d!1647736))

(declare-fun b!5090243 () Bool)

(declare-fun e!3174558 () Int)

(assert (=> b!5090243 (= e!3174558 (- i!607 lt!2092339))))

(declare-fun b!5090244 () Bool)

(declare-fun e!3174556 () T!105524)

(declare-fun call!354650 () T!105524)

(assert (=> b!5090244 (= e!3174556 call!354650)))

(declare-fun bm!354645 () Bool)

(declare-fun c!874769 () Bool)

(declare-fun c!874771 () Bool)

(assert (=> bm!354645 (= c!874769 c!874771)))

(assert (=> bm!354645 (= call!354650 (apply!14258 (ite c!874771 (left!42911 (right!43241 t!3643)) (right!43241 (right!43241 t!3643))) e!3174558))))

(declare-fun b!5090245 () Bool)

(declare-fun e!3174555 () T!105524)

(assert (=> b!5090245 (= e!3174555 e!3174556)))

(declare-fun lt!2092368 () Bool)

(assert (=> b!5090245 (= lt!2092368 (appendIndex!417 (list!19084 (left!42911 (right!43241 t!3643))) (list!19084 (right!43241 (right!43241 t!3643))) (- i!607 lt!2092339)))))

(assert (=> b!5090245 (= c!874771 (< (- i!607 lt!2092339) (size!39194 (left!42911 (right!43241 t!3643)))))))

(declare-fun d!1647742 () Bool)

(declare-fun lt!2092369 () T!105524)

(assert (=> d!1647742 (= lt!2092369 (apply!14259 (list!19084 (right!43241 t!3643)) (- i!607 lt!2092339)))))

(assert (=> d!1647742 (= lt!2092369 e!3174555)))

(declare-fun c!874770 () Bool)

(assert (=> d!1647742 (= c!874770 ((_ is Leaf!25944) (right!43241 t!3643)))))

(declare-fun e!3174557 () Bool)

(assert (=> d!1647742 e!3174557))

(declare-fun res!2166643 () Bool)

(assert (=> d!1647742 (=> (not res!2166643) (not e!3174557))))

(assert (=> d!1647742 (= res!2166643 (<= 0 (- i!607 lt!2092339)))))

(assert (=> d!1647742 (= (apply!14258 (right!43241 t!3643) (- i!607 lt!2092339)) lt!2092369)))

(declare-fun b!5090246 () Bool)

(assert (=> b!5090246 (= e!3174557 (< (- i!607 lt!2092339) (size!39194 (right!43241 t!3643))))))

(declare-fun b!5090247 () Bool)

(assert (=> b!5090247 (= e!3174558 (- (- i!607 lt!2092339) (size!39194 (left!42911 (right!43241 t!3643)))))))

(declare-fun b!5090248 () Bool)

(assert (=> b!5090248 (= e!3174556 call!354650)))

(declare-fun b!5090249 () Bool)

(declare-fun apply!14261 (IArray!31313 Int) T!105524)

(assert (=> b!5090249 (= e!3174555 (apply!14261 (xs!19008 (right!43241 t!3643)) (- i!607 lt!2092339)))))

(assert (= (and d!1647742 res!2166643) b!5090246))

(assert (= (and d!1647742 c!874770) b!5090249))

(assert (= (and d!1647742 (not c!874770)) b!5090245))

(assert (= (and b!5090245 c!874771) b!5090244))

(assert (= (and b!5090245 (not c!874771)) b!5090248))

(assert (= (or b!5090244 b!5090248) bm!354645))

(assert (= (and bm!354645 c!874769) b!5090243))

(assert (= (and bm!354645 (not c!874769)) b!5090247))

(declare-fun m!6148396 () Bool)

(assert (=> b!5090249 m!6148396))

(declare-fun m!6148398 () Bool)

(assert (=> bm!354645 m!6148398))

(assert (=> b!5090245 m!6148348))

(assert (=> b!5090245 m!6148350))

(assert (=> b!5090245 m!6148348))

(assert (=> b!5090245 m!6148350))

(declare-fun m!6148400 () Bool)

(assert (=> b!5090245 m!6148400))

(declare-fun m!6148402 () Bool)

(assert (=> b!5090245 m!6148402))

(assert (=> d!1647742 m!6148294))

(assert (=> d!1647742 m!6148294))

(declare-fun m!6148404 () Bool)

(assert (=> d!1647742 m!6148404))

(assert (=> b!5090247 m!6148402))

(declare-fun m!6148406 () Bool)

(assert (=> b!5090246 m!6148406))

(assert (=> b!5090095 d!1647742))

(declare-fun b!5090254 () Bool)

(declare-fun e!3174561 () Bool)

(declare-fun tp_is_empty!37129 () Bool)

(declare-fun tp!1418986 () Bool)

(assert (=> b!5090254 (= e!3174561 (and tp_is_empty!37129 tp!1418986))))

(assert (=> b!5090096 (= tp!1418983 e!3174561)))

(assert (= (and b!5090096 ((_ is Cons!58511) (innerList!15714 (xs!19008 t!3643)))) b!5090254))

(declare-fun tp!1418994 () Bool)

(declare-fun b!5090270 () Bool)

(declare-fun tp!1418993 () Bool)

(declare-fun e!3174571 () Bool)

(assert (=> b!5090270 (= e!3174571 (and (inv!77883 (left!42911 (left!42911 t!3643))) tp!1418993 (inv!77883 (right!43241 (left!42911 t!3643))) tp!1418994))))

(declare-fun b!5090272 () Bool)

(declare-fun e!3174570 () Bool)

(declare-fun tp!1418995 () Bool)

(assert (=> b!5090272 (= e!3174570 tp!1418995)))

(declare-fun b!5090271 () Bool)

(assert (=> b!5090271 (= e!3174571 (and (inv!77884 (xs!19008 (left!42911 t!3643))) e!3174570))))

(assert (=> b!5090094 (= tp!1418981 (and (inv!77883 (left!42911 t!3643)) e!3174571))))

(assert (= (and b!5090094 ((_ is Node!15626) (left!42911 t!3643))) b!5090270))

(assert (= b!5090271 b!5090272))

(assert (= (and b!5090094 ((_ is Leaf!25944) (left!42911 t!3643))) b!5090271))

(declare-fun m!6148408 () Bool)

(assert (=> b!5090270 m!6148408))

(declare-fun m!6148410 () Bool)

(assert (=> b!5090270 m!6148410))

(declare-fun m!6148412 () Bool)

(assert (=> b!5090271 m!6148412))

(assert (=> b!5090094 m!6148298))

(declare-fun tp!1418996 () Bool)

(declare-fun b!5090273 () Bool)

(declare-fun e!3174573 () Bool)

(declare-fun tp!1418997 () Bool)

(assert (=> b!5090273 (= e!3174573 (and (inv!77883 (left!42911 (right!43241 t!3643))) tp!1418996 (inv!77883 (right!43241 (right!43241 t!3643))) tp!1418997))))

(declare-fun b!5090275 () Bool)

(declare-fun e!3174572 () Bool)

(declare-fun tp!1418998 () Bool)

(assert (=> b!5090275 (= e!3174572 tp!1418998)))

(declare-fun b!5090274 () Bool)

(assert (=> b!5090274 (= e!3174573 (and (inv!77884 (xs!19008 (right!43241 t!3643))) e!3174572))))

(assert (=> b!5090094 (= tp!1418982 (and (inv!77883 (right!43241 t!3643)) e!3174573))))

(assert (= (and b!5090094 ((_ is Node!15626) (right!43241 t!3643))) b!5090273))

(assert (= b!5090274 b!5090275))

(assert (= (and b!5090094 ((_ is Leaf!25944) (right!43241 t!3643))) b!5090274))

(declare-fun m!6148420 () Bool)

(assert (=> b!5090273 m!6148420))

(declare-fun m!6148422 () Bool)

(assert (=> b!5090273 m!6148422))

(declare-fun m!6148424 () Bool)

(assert (=> b!5090274 m!6148424))

(assert (=> b!5090094 m!6148300))

(check-sat (not b!5090198) (not b!5090169) tp_is_empty!37129 (not b!5090247) (not b!5090272) (not d!1647712) (not b!5090271) (not b!5090162) (not b!5090140) (not d!1647710) (not b!5090274) (not b!5090165) (not b!5090103) (not b!5090135) (not b!5090254) (not b!5090166) (not b!5090176) (not d!1647730) (not b!5090161) (not b!5090197) (not b!5090273) (not b!5090246) (not bm!354637) (not b!5090174) (not b!5090275) (not d!1647742) (not d!1647714) (not b!5090249) (not b!5090105) (not b!5090167) (not b!5090094) (not b!5090270) (not b!5090245) (not bm!354645) (not b!5090138) (not b!5090194))
(check-sat)
