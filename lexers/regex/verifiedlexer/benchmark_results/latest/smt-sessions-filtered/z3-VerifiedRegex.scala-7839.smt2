; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411308 () Bool)

(assert start!411308)

(declare-fun b!4281142 () Bool)

(declare-fun res!1757252 () Bool)

(declare-fun e!2657779 () Bool)

(assert (=> b!4281142 (=> (not res!1757252) (not e!2657779))))

(declare-fun i!561 () Int)

(declare-datatypes ((T!80200 0))(
  ( (T!80201 (val!15302 Int)) )
))
(declare-datatypes ((List!47511 0))(
  ( (Nil!47387) (Cons!47387 (h!52807 T!80200) (t!354098 List!47511)) )
))
(declare-datatypes ((IArray!28743 0))(
  ( (IArray!28744 (innerList!14429 List!47511)) )
))
(declare-fun arr!11 () IArray!28743)

(declare-fun size!34721 (IArray!28743) Int)

(assert (=> b!4281142 (= res!1757252 (<= i!561 (size!34721 arr!11)))))

(declare-fun b!4281143 () Bool)

(declare-fun res!1757254 () Bool)

(declare-fun e!2657778 () Bool)

(assert (=> b!4281143 (=> (not res!1757254) (not e!2657778))))

(assert (=> b!4281143 (= res!1757254 (> i!561 0))))

(declare-fun b!4281144 () Bool)

(declare-fun e!2657780 () Bool)

(declare-fun tp!1309420 () Bool)

(assert (=> b!4281144 (= e!2657780 tp!1309420)))

(declare-fun res!1757255 () Bool)

(assert (=> start!411308 (=> (not res!1757255) (not e!2657779))))

(assert (=> start!411308 (= res!1757255 (<= 0 i!561))))

(assert (=> start!411308 e!2657779))

(assert (=> start!411308 true))

(declare-fun inv!62805 (IArray!28743) Bool)

(assert (=> start!411308 (and (inv!62805 arr!11) e!2657780)))

(declare-fun e!2657781 () Bool)

(assert (=> start!411308 e!2657781))

(declare-fun acc!244 () List!47511)

(declare-fun lt!1515106 () List!47511)

(declare-fun b!4281145 () Bool)

(declare-fun rec!43 (IArray!28743 Int List!47511) List!47511)

(declare-fun $colon$colon!649 (List!47511 T!80200) List!47511)

(declare-fun apply!10822 (IArray!28743 Int) T!80200)

(assert (=> b!4281145 (= e!2657778 (not (= (rec!43 arr!11 (- i!561 1) ($colon$colon!649 acc!244 (apply!10822 arr!11 (- i!561 1)))) lt!1515106)))))

(declare-fun lt!1515104 () List!47511)

(declare-fun tail!6880 (List!47511) List!47511)

(declare-fun drop!2169 (List!47511 Int) List!47511)

(assert (=> b!4281145 (= (tail!6880 lt!1515104) (drop!2169 lt!1515106 (+ 1 (- i!561 1))))))

(declare-datatypes ((Unit!66349 0))(
  ( (Unit!66350) )
))
(declare-fun lt!1515105 () Unit!66349)

(declare-fun lemmaDropTail!1141 (List!47511 Int) Unit!66349)

(assert (=> b!4281145 (= lt!1515105 (lemmaDropTail!1141 lt!1515106 (- i!561 1)))))

(declare-fun head!9017 (List!47511) T!80200)

(declare-fun apply!10823 (List!47511 Int) T!80200)

(assert (=> b!4281145 (= (head!9017 lt!1515104) (apply!10823 lt!1515106 (- i!561 1)))))

(assert (=> b!4281145 (= lt!1515104 (drop!2169 lt!1515106 (- i!561 1)))))

(declare-fun lt!1515107 () Unit!66349)

(declare-fun lemmaDropApply!1261 (List!47511 Int) Unit!66349)

(assert (=> b!4281145 (= lt!1515107 (lemmaDropApply!1261 lt!1515106 (- i!561 1)))))

(declare-fun b!4281146 () Bool)

(declare-fun tp_is_empty!23013 () Bool)

(declare-fun tp!1309419 () Bool)

(assert (=> b!4281146 (= e!2657781 (and tp_is_empty!23013 tp!1309419))))

(declare-fun b!4281147 () Bool)

(assert (=> b!4281147 (= e!2657779 e!2657778)))

(declare-fun res!1757253 () Bool)

(assert (=> b!4281147 (=> (not res!1757253) (not e!2657778))))

(assert (=> b!4281147 (= res!1757253 (= acc!244 (drop!2169 lt!1515106 i!561)))))

(declare-fun list!17309 (IArray!28743) List!47511)

(assert (=> b!4281147 (= lt!1515106 (list!17309 arr!11))))

(assert (= (and start!411308 res!1757255) b!4281142))

(assert (= (and b!4281142 res!1757252) b!4281147))

(assert (= (and b!4281147 res!1757253) b!4281143))

(assert (= (and b!4281143 res!1757254) b!4281145))

(assert (= start!411308 b!4281144))

(get-info :version)

(assert (= (and start!411308 ((_ is Cons!47387) acc!244)) b!4281146))

(declare-fun m!4878731 () Bool)

(assert (=> b!4281142 m!4878731))

(declare-fun m!4878733 () Bool)

(assert (=> start!411308 m!4878733))

(declare-fun m!4878735 () Bool)

(assert (=> b!4281145 m!4878735))

(declare-fun m!4878737 () Bool)

(assert (=> b!4281145 m!4878737))

(declare-fun m!4878739 () Bool)

(assert (=> b!4281145 m!4878739))

(declare-fun m!4878741 () Bool)

(assert (=> b!4281145 m!4878741))

(declare-fun m!4878743 () Bool)

(assert (=> b!4281145 m!4878743))

(declare-fun m!4878745 () Bool)

(assert (=> b!4281145 m!4878745))

(declare-fun m!4878747 () Bool)

(assert (=> b!4281145 m!4878747))

(declare-fun m!4878749 () Bool)

(assert (=> b!4281145 m!4878749))

(declare-fun m!4878751 () Bool)

(assert (=> b!4281145 m!4878751))

(assert (=> b!4281145 m!4878743))

(assert (=> b!4281145 m!4878745))

(declare-fun m!4878753 () Bool)

(assert (=> b!4281145 m!4878753))

(declare-fun m!4878755 () Bool)

(assert (=> b!4281147 m!4878755))

(declare-fun m!4878757 () Bool)

(assert (=> b!4281147 m!4878757))

(check-sat (not start!411308) (not b!4281146) (not b!4281145) (not b!4281144) (not b!4281142) tp_is_empty!23013 (not b!4281147))
(check-sat)
(get-model)

(declare-fun d!1264648 () Bool)

(declare-fun lt!1515110 () Int)

(declare-fun size!34722 (List!47511) Int)

(assert (=> d!1264648 (= lt!1515110 (size!34722 (list!17309 arr!11)))))

(declare-fun choose!26116 (IArray!28743) Int)

(assert (=> d!1264648 (= lt!1515110 (choose!26116 arr!11))))

(assert (=> d!1264648 (= (size!34721 arr!11) lt!1515110)))

(declare-fun bs!602739 () Bool)

(assert (= bs!602739 d!1264648))

(assert (=> bs!602739 m!4878757))

(assert (=> bs!602739 m!4878757))

(declare-fun m!4878759 () Bool)

(assert (=> bs!602739 m!4878759))

(declare-fun m!4878761 () Bool)

(assert (=> bs!602739 m!4878761))

(assert (=> b!4281142 d!1264648))

(declare-fun bm!294341 () Bool)

(declare-fun call!294346 () Int)

(assert (=> bm!294341 (= call!294346 (size!34722 lt!1515106))))

(declare-fun b!4281187 () Bool)

(declare-fun e!2657807 () Bool)

(declare-fun lt!1515118 () List!47511)

(declare-fun e!2657805 () Int)

(assert (=> b!4281187 (= e!2657807 (= (size!34722 lt!1515118) e!2657805))))

(declare-fun c!729591 () Bool)

(assert (=> b!4281187 (= c!729591 (<= i!561 0))))

(declare-fun b!4281188 () Bool)

(declare-fun e!2657809 () Int)

(assert (=> b!4281188 (= e!2657809 (- call!294346 i!561))))

(declare-fun b!4281189 () Bool)

(assert (=> b!4281189 (= e!2657809 0)))

(declare-fun b!4281191 () Bool)

(declare-fun e!2657808 () List!47511)

(declare-fun e!2657806 () List!47511)

(assert (=> b!4281191 (= e!2657808 e!2657806)))

(declare-fun c!729589 () Bool)

(assert (=> b!4281191 (= c!729589 (<= i!561 0))))

(declare-fun b!4281192 () Bool)

(assert (=> b!4281192 (= e!2657805 call!294346)))

(declare-fun b!4281193 () Bool)

(assert (=> b!4281193 (= e!2657808 Nil!47387)))

(declare-fun b!4281194 () Bool)

(assert (=> b!4281194 (= e!2657806 (drop!2169 (t!354098 lt!1515106) (- i!561 1)))))

(declare-fun b!4281195 () Bool)

(assert (=> b!4281195 (= e!2657806 lt!1515106)))

(declare-fun d!1264652 () Bool)

(assert (=> d!1264652 e!2657807))

(declare-fun res!1757263 () Bool)

(assert (=> d!1264652 (=> (not res!1757263) (not e!2657807))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7504 (List!47511) (InoxSet T!80200))

(assert (=> d!1264652 (= res!1757263 (= ((_ map implies) (content!7504 lt!1515118) (content!7504 lt!1515106)) ((as const (InoxSet T!80200)) true)))))

(assert (=> d!1264652 (= lt!1515118 e!2657808)))

(declare-fun c!729592 () Bool)

(assert (=> d!1264652 (= c!729592 ((_ is Nil!47387) lt!1515106))))

(assert (=> d!1264652 (= (drop!2169 lt!1515106 i!561) lt!1515118)))

(declare-fun b!4281190 () Bool)

(assert (=> b!4281190 (= e!2657805 e!2657809)))

(declare-fun c!729590 () Bool)

(assert (=> b!4281190 (= c!729590 (>= i!561 call!294346))))

(assert (= (and d!1264652 c!729592) b!4281193))

(assert (= (and d!1264652 (not c!729592)) b!4281191))

(assert (= (and b!4281191 c!729589) b!4281195))

(assert (= (and b!4281191 (not c!729589)) b!4281194))

(assert (= (and d!1264652 res!1757263) b!4281187))

(assert (= (and b!4281187 c!729591) b!4281192))

(assert (= (and b!4281187 (not c!729591)) b!4281190))

(assert (= (and b!4281190 c!729590) b!4281189))

(assert (= (and b!4281190 (not c!729590)) b!4281188))

(assert (= (or b!4281192 b!4281190 b!4281188) bm!294341))

(declare-fun m!4878771 () Bool)

(assert (=> bm!294341 m!4878771))

(declare-fun m!4878773 () Bool)

(assert (=> b!4281187 m!4878773))

(declare-fun m!4878775 () Bool)

(assert (=> b!4281194 m!4878775))

(declare-fun m!4878777 () Bool)

(assert (=> d!1264652 m!4878777))

(declare-fun m!4878779 () Bool)

(assert (=> d!1264652 m!4878779))

(assert (=> b!4281147 d!1264652))

(declare-fun d!1264656 () Bool)

(assert (=> d!1264656 (= (list!17309 arr!11) (innerList!14429 arr!11))))

(assert (=> b!4281147 d!1264656))

(declare-fun d!1264658 () Bool)

(assert (=> d!1264658 (= (inv!62805 arr!11) (<= (size!34722 (innerList!14429 arr!11)) 2147483647))))

(declare-fun bs!602740 () Bool)

(assert (= bs!602740 d!1264658))

(declare-fun m!4878781 () Bool)

(assert (=> bs!602740 m!4878781))

(assert (=> start!411308 d!1264658))

(declare-fun bm!294344 () Bool)

(declare-fun call!294349 () Int)

(assert (=> bm!294344 (= call!294349 (size!34722 lt!1515106))))

(declare-fun b!4281196 () Bool)

(declare-fun e!2657812 () Bool)

(declare-fun lt!1515119 () List!47511)

(declare-fun e!2657810 () Int)

(assert (=> b!4281196 (= e!2657812 (= (size!34722 lt!1515119) e!2657810))))

(declare-fun c!729595 () Bool)

(assert (=> b!4281196 (= c!729595 (<= (- i!561 1) 0))))

(declare-fun b!4281197 () Bool)

(declare-fun e!2657814 () Int)

(assert (=> b!4281197 (= e!2657814 (- call!294349 (- i!561 1)))))

(declare-fun b!4281198 () Bool)

(assert (=> b!4281198 (= e!2657814 0)))

(declare-fun b!4281200 () Bool)

(declare-fun e!2657813 () List!47511)

(declare-fun e!2657811 () List!47511)

(assert (=> b!4281200 (= e!2657813 e!2657811)))

(declare-fun c!729593 () Bool)

(assert (=> b!4281200 (= c!729593 (<= (- i!561 1) 0))))

(declare-fun b!4281201 () Bool)

(assert (=> b!4281201 (= e!2657810 call!294349)))

(declare-fun b!4281202 () Bool)

(assert (=> b!4281202 (= e!2657813 Nil!47387)))

(declare-fun b!4281203 () Bool)

(assert (=> b!4281203 (= e!2657811 (drop!2169 (t!354098 lt!1515106) (- (- i!561 1) 1)))))

(declare-fun b!4281204 () Bool)

(assert (=> b!4281204 (= e!2657811 lt!1515106)))

(declare-fun d!1264660 () Bool)

(assert (=> d!1264660 e!2657812))

(declare-fun res!1757264 () Bool)

(assert (=> d!1264660 (=> (not res!1757264) (not e!2657812))))

(assert (=> d!1264660 (= res!1757264 (= ((_ map implies) (content!7504 lt!1515119) (content!7504 lt!1515106)) ((as const (InoxSet T!80200)) true)))))

(assert (=> d!1264660 (= lt!1515119 e!2657813)))

(declare-fun c!729596 () Bool)

(assert (=> d!1264660 (= c!729596 ((_ is Nil!47387) lt!1515106))))

(assert (=> d!1264660 (= (drop!2169 lt!1515106 (- i!561 1)) lt!1515119)))

(declare-fun b!4281199 () Bool)

(assert (=> b!4281199 (= e!2657810 e!2657814)))

(declare-fun c!729594 () Bool)

(assert (=> b!4281199 (= c!729594 (>= (- i!561 1) call!294349))))

(assert (= (and d!1264660 c!729596) b!4281202))

(assert (= (and d!1264660 (not c!729596)) b!4281200))

(assert (= (and b!4281200 c!729593) b!4281204))

(assert (= (and b!4281200 (not c!729593)) b!4281203))

(assert (= (and d!1264660 res!1757264) b!4281196))

(assert (= (and b!4281196 c!729595) b!4281201))

(assert (= (and b!4281196 (not c!729595)) b!4281199))

(assert (= (and b!4281199 c!729594) b!4281198))

(assert (= (and b!4281199 (not c!729594)) b!4281197))

(assert (= (or b!4281201 b!4281199 b!4281197) bm!294344))

(assert (=> bm!294344 m!4878771))

(declare-fun m!4878783 () Bool)

(assert (=> b!4281196 m!4878783))

(declare-fun m!4878785 () Bool)

(assert (=> b!4281203 m!4878785))

(declare-fun m!4878787 () Bool)

(assert (=> d!1264660 m!4878787))

(assert (=> d!1264660 m!4878779))

(assert (=> b!4281145 d!1264660))

(declare-fun d!1264662 () Bool)

(declare-fun lt!1515124 () T!80200)

(declare-fun contains!9794 (List!47511 T!80200) Bool)

(assert (=> d!1264662 (contains!9794 lt!1515106 lt!1515124)))

(declare-fun e!2657830 () T!80200)

(assert (=> d!1264662 (= lt!1515124 e!2657830)))

(declare-fun c!729607 () Bool)

(assert (=> d!1264662 (= c!729607 (= (- i!561 1) 0))))

(declare-fun e!2657829 () Bool)

(assert (=> d!1264662 e!2657829))

(declare-fun res!1757269 () Bool)

(assert (=> d!1264662 (=> (not res!1757269) (not e!2657829))))

(assert (=> d!1264662 (= res!1757269 (<= 0 (- i!561 1)))))

(assert (=> d!1264662 (= (apply!10823 lt!1515106 (- i!561 1)) lt!1515124)))

(declare-fun b!4281229 () Bool)

(assert (=> b!4281229 (= e!2657829 (< (- i!561 1) (size!34722 lt!1515106)))))

(declare-fun b!4281230 () Bool)

(assert (=> b!4281230 (= e!2657830 (head!9017 lt!1515106))))

(declare-fun b!4281231 () Bool)

(assert (=> b!4281231 (= e!2657830 (apply!10823 (tail!6880 lt!1515106) (- (- i!561 1) 1)))))

(assert (= (and d!1264662 res!1757269) b!4281229))

(assert (= (and d!1264662 c!729607) b!4281230))

(assert (= (and d!1264662 (not c!729607)) b!4281231))

(declare-fun m!4878803 () Bool)

(assert (=> d!1264662 m!4878803))

(assert (=> b!4281229 m!4878771))

(declare-fun m!4878805 () Bool)

(assert (=> b!4281230 m!4878805))

(declare-fun m!4878807 () Bool)

(assert (=> b!4281231 m!4878807))

(assert (=> b!4281231 m!4878807))

(declare-fun m!4878809 () Bool)

(assert (=> b!4281231 m!4878809))

(assert (=> b!4281145 d!1264662))

(declare-fun d!1264670 () Bool)

(assert (=> d!1264670 (= (tail!6880 lt!1515104) (t!354098 lt!1515104))))

(assert (=> b!4281145 d!1264670))

(declare-fun d!1264672 () Bool)

(declare-fun lt!1515153 () List!47511)

(assert (=> d!1264672 (= lt!1515153 (list!17309 arr!11))))

(declare-fun e!2657845 () List!47511)

(assert (=> d!1264672 (= lt!1515153 e!2657845)))

(declare-fun c!729613 () Bool)

(assert (=> d!1264672 (= c!729613 (<= (- i!561 1) 0))))

(declare-fun e!2657844 () Bool)

(assert (=> d!1264672 e!2657844))

(declare-fun res!1757278 () Bool)

(assert (=> d!1264672 (=> (not res!1757278) (not e!2657844))))

(assert (=> d!1264672 (= res!1757278 (<= 0 (- i!561 1)))))

(assert (=> d!1264672 (= (rec!43 arr!11 (- i!561 1) ($colon$colon!649 acc!244 (apply!10822 arr!11 (- i!561 1)))) lt!1515153)))

(declare-fun b!4281250 () Bool)

(assert (=> b!4281250 (= e!2657844 (<= (- i!561 1) (size!34721 arr!11)))))

(declare-fun b!4281251 () Bool)

(assert (=> b!4281251 (= e!2657845 ($colon$colon!649 acc!244 (apply!10822 arr!11 (- i!561 1))))))

(declare-fun b!4281252 () Bool)

(assert (=> b!4281252 (= e!2657845 (rec!43 arr!11 (- (- i!561 1) 1) ($colon$colon!649 ($colon$colon!649 acc!244 (apply!10822 arr!11 (- i!561 1))) (apply!10822 arr!11 (- (- i!561 1) 1)))))))

(declare-fun lt!1515149 () List!47511)

(assert (=> b!4281252 (= lt!1515149 (list!17309 arr!11))))

(declare-fun lt!1515151 () Int)

(assert (=> b!4281252 (= lt!1515151 (- (- i!561 1) 1))))

(declare-fun lt!1515156 () Unit!66349)

(assert (=> b!4281252 (= lt!1515156 (lemmaDropApply!1261 lt!1515149 lt!1515151))))

(assert (=> b!4281252 (= (head!9017 (drop!2169 lt!1515149 lt!1515151)) (apply!10823 lt!1515149 lt!1515151))))

(declare-fun lt!1515152 () Unit!66349)

(assert (=> b!4281252 (= lt!1515152 lt!1515156)))

(declare-fun lt!1515154 () List!47511)

(assert (=> b!4281252 (= lt!1515154 (list!17309 arr!11))))

(declare-fun lt!1515150 () Int)

(assert (=> b!4281252 (= lt!1515150 (- (- i!561 1) 1))))

(declare-fun lt!1515155 () Unit!66349)

(assert (=> b!4281252 (= lt!1515155 (lemmaDropTail!1141 lt!1515154 lt!1515150))))

(assert (=> b!4281252 (= (tail!6880 (drop!2169 lt!1515154 lt!1515150)) (drop!2169 lt!1515154 (+ lt!1515150 1)))))

(declare-fun lt!1515157 () Unit!66349)

(assert (=> b!4281252 (= lt!1515157 lt!1515155)))

(assert (= (and d!1264672 res!1757278) b!4281250))

(assert (= (and d!1264672 c!729613) b!4281251))

(assert (= (and d!1264672 (not c!729613)) b!4281252))

(assert (=> d!1264672 m!4878757))

(assert (=> b!4281250 m!4878731))

(assert (=> b!4281252 m!4878745))

(declare-fun m!4878823 () Bool)

(assert (=> b!4281252 m!4878823))

(declare-fun m!4878825 () Bool)

(assert (=> b!4281252 m!4878825))

(declare-fun m!4878827 () Bool)

(assert (=> b!4281252 m!4878827))

(assert (=> b!4281252 m!4878825))

(declare-fun m!4878829 () Bool)

(assert (=> b!4281252 m!4878829))

(declare-fun m!4878831 () Bool)

(assert (=> b!4281252 m!4878831))

(declare-fun m!4878833 () Bool)

(assert (=> b!4281252 m!4878833))

(declare-fun m!4878835 () Bool)

(assert (=> b!4281252 m!4878835))

(assert (=> b!4281252 m!4878757))

(assert (=> b!4281252 m!4878827))

(declare-fun m!4878837 () Bool)

(assert (=> b!4281252 m!4878837))

(declare-fun m!4878839 () Bool)

(assert (=> b!4281252 m!4878839))

(assert (=> b!4281252 m!4878831))

(assert (=> b!4281252 m!4878823))

(declare-fun m!4878841 () Bool)

(assert (=> b!4281252 m!4878841))

(declare-fun m!4878843 () Bool)

(assert (=> b!4281252 m!4878843))

(assert (=> b!4281145 d!1264672))

(declare-fun d!1264680 () Bool)

(assert (=> d!1264680 (= (tail!6880 (drop!2169 lt!1515106 (- i!561 1))) (drop!2169 lt!1515106 (+ (- i!561 1) 1)))))

(declare-fun lt!1515178 () Unit!66349)

(declare-fun choose!26118 (List!47511 Int) Unit!66349)

(assert (=> d!1264680 (= lt!1515178 (choose!26118 lt!1515106 (- i!561 1)))))

(declare-fun e!2657852 () Bool)

(assert (=> d!1264680 e!2657852))

(declare-fun res!1757283 () Bool)

(assert (=> d!1264680 (=> (not res!1757283) (not e!2657852))))

(assert (=> d!1264680 (= res!1757283 (>= (- i!561 1) 0))))

(assert (=> d!1264680 (= (lemmaDropTail!1141 lt!1515106 (- i!561 1)) lt!1515178)))

(declare-fun b!4281261 () Bool)

(assert (=> b!4281261 (= e!2657852 (< (- i!561 1) (size!34722 lt!1515106)))))

(assert (= (and d!1264680 res!1757283) b!4281261))

(assert (=> d!1264680 m!4878735))

(assert (=> d!1264680 m!4878735))

(declare-fun m!4878845 () Bool)

(assert (=> d!1264680 m!4878845))

(declare-fun m!4878847 () Bool)

(assert (=> d!1264680 m!4878847))

(declare-fun m!4878849 () Bool)

(assert (=> d!1264680 m!4878849))

(assert (=> b!4281261 m!4878771))

(assert (=> b!4281145 d!1264680))

(declare-fun d!1264682 () Bool)

(assert (=> d!1264682 (= (head!9017 lt!1515104) (h!52807 lt!1515104))))

(assert (=> b!4281145 d!1264682))

(declare-fun bm!294347 () Bool)

(declare-fun call!294352 () Int)

(assert (=> bm!294347 (= call!294352 (size!34722 lt!1515106))))

(declare-fun b!4281262 () Bool)

(declare-fun e!2657855 () Bool)

(declare-fun lt!1515179 () List!47511)

(declare-fun e!2657853 () Int)

(assert (=> b!4281262 (= e!2657855 (= (size!34722 lt!1515179) e!2657853))))

(declare-fun c!729618 () Bool)

(assert (=> b!4281262 (= c!729618 (<= (+ 1 (- i!561 1)) 0))))

(declare-fun b!4281263 () Bool)

(declare-fun e!2657857 () Int)

(assert (=> b!4281263 (= e!2657857 (- call!294352 (+ 1 (- i!561 1))))))

(declare-fun b!4281264 () Bool)

(assert (=> b!4281264 (= e!2657857 0)))

(declare-fun b!4281266 () Bool)

(declare-fun e!2657856 () List!47511)

(declare-fun e!2657854 () List!47511)

(assert (=> b!4281266 (= e!2657856 e!2657854)))

(declare-fun c!729616 () Bool)

(assert (=> b!4281266 (= c!729616 (<= (+ 1 (- i!561 1)) 0))))

(declare-fun b!4281267 () Bool)

(assert (=> b!4281267 (= e!2657853 call!294352)))

(declare-fun b!4281268 () Bool)

(assert (=> b!4281268 (= e!2657856 Nil!47387)))

(declare-fun b!4281269 () Bool)

(assert (=> b!4281269 (= e!2657854 (drop!2169 (t!354098 lt!1515106) (- (+ 1 (- i!561 1)) 1)))))

(declare-fun b!4281270 () Bool)

(assert (=> b!4281270 (= e!2657854 lt!1515106)))

(declare-fun d!1264684 () Bool)

(assert (=> d!1264684 e!2657855))

(declare-fun res!1757284 () Bool)

(assert (=> d!1264684 (=> (not res!1757284) (not e!2657855))))

(assert (=> d!1264684 (= res!1757284 (= ((_ map implies) (content!7504 lt!1515179) (content!7504 lt!1515106)) ((as const (InoxSet T!80200)) true)))))

(assert (=> d!1264684 (= lt!1515179 e!2657856)))

(declare-fun c!729619 () Bool)

(assert (=> d!1264684 (= c!729619 ((_ is Nil!47387) lt!1515106))))

(assert (=> d!1264684 (= (drop!2169 lt!1515106 (+ 1 (- i!561 1))) lt!1515179)))

(declare-fun b!4281265 () Bool)

(assert (=> b!4281265 (= e!2657853 e!2657857)))

(declare-fun c!729617 () Bool)

(assert (=> b!4281265 (= c!729617 (>= (+ 1 (- i!561 1)) call!294352))))

(assert (= (and d!1264684 c!729619) b!4281268))

(assert (= (and d!1264684 (not c!729619)) b!4281266))

(assert (= (and b!4281266 c!729616) b!4281270))

(assert (= (and b!4281266 (not c!729616)) b!4281269))

(assert (= (and d!1264684 res!1757284) b!4281262))

(assert (= (and b!4281262 c!729618) b!4281267))

(assert (= (and b!4281262 (not c!729618)) b!4281265))

(assert (= (and b!4281265 c!729617) b!4281264))

(assert (= (and b!4281265 (not c!729617)) b!4281263))

(assert (= (or b!4281267 b!4281265 b!4281263) bm!294347))

(assert (=> bm!294347 m!4878771))

(declare-fun m!4878851 () Bool)

(assert (=> b!4281262 m!4878851))

(declare-fun m!4878853 () Bool)

(assert (=> b!4281269 m!4878853))

(declare-fun m!4878855 () Bool)

(assert (=> d!1264684 m!4878855))

(assert (=> d!1264684 m!4878779))

(assert (=> b!4281145 d!1264684))

(declare-fun d!1264686 () Bool)

(assert (=> d!1264686 (= ($colon$colon!649 acc!244 (apply!10822 arr!11 (- i!561 1))) (Cons!47387 (apply!10822 arr!11 (- i!561 1)) acc!244))))

(assert (=> b!4281145 d!1264686))

(declare-fun d!1264688 () Bool)

(assert (=> d!1264688 (= (head!9017 (drop!2169 lt!1515106 (- i!561 1))) (apply!10823 lt!1515106 (- i!561 1)))))

(declare-fun lt!1515193 () Unit!66349)

(declare-fun choose!26121 (List!47511 Int) Unit!66349)

(assert (=> d!1264688 (= lt!1515193 (choose!26121 lt!1515106 (- i!561 1)))))

(declare-fun e!2657864 () Bool)

(assert (=> d!1264688 e!2657864))

(declare-fun res!1757290 () Bool)

(assert (=> d!1264688 (=> (not res!1757290) (not e!2657864))))

(assert (=> d!1264688 (= res!1757290 (>= (- i!561 1) 0))))

(assert (=> d!1264688 (= (lemmaDropApply!1261 lt!1515106 (- i!561 1)) lt!1515193)))

(declare-fun b!4281278 () Bool)

(assert (=> b!4281278 (= e!2657864 (< (- i!561 1) (size!34722 lt!1515106)))))

(assert (= (and d!1264688 res!1757290) b!4281278))

(assert (=> d!1264688 m!4878735))

(assert (=> d!1264688 m!4878735))

(declare-fun m!4878879 () Bool)

(assert (=> d!1264688 m!4878879))

(assert (=> d!1264688 m!4878739))

(declare-fun m!4878881 () Bool)

(assert (=> d!1264688 m!4878881))

(assert (=> b!4281278 m!4878771))

(assert (=> b!4281145 d!1264688))

(declare-fun d!1264694 () Bool)

(declare-fun lt!1515201 () T!80200)

(assert (=> d!1264694 (= lt!1515201 (apply!10823 (list!17309 arr!11) (- i!561 1)))))

(declare-fun choose!26122 (IArray!28743 Int) T!80200)

(assert (=> d!1264694 (= lt!1515201 (choose!26122 arr!11 (- i!561 1)))))

(declare-fun e!2657875 () Bool)

(assert (=> d!1264694 e!2657875))

(declare-fun res!1757295 () Bool)

(assert (=> d!1264694 (=> (not res!1757295) (not e!2657875))))

(assert (=> d!1264694 (= res!1757295 (<= 0 (- i!561 1)))))

(assert (=> d!1264694 (= (apply!10822 arr!11 (- i!561 1)) lt!1515201)))

(declare-fun b!4281295 () Bool)

(assert (=> b!4281295 (= e!2657875 (< (- i!561 1) (size!34721 arr!11)))))

(assert (= (and d!1264694 res!1757295) b!4281295))

(assert (=> d!1264694 m!4878757))

(assert (=> d!1264694 m!4878757))

(declare-fun m!4878899 () Bool)

(assert (=> d!1264694 m!4878899))

(declare-fun m!4878901 () Bool)

(assert (=> d!1264694 m!4878901))

(assert (=> b!4281295 m!4878731))

(assert (=> b!4281145 d!1264694))

(declare-fun b!4281302 () Bool)

(declare-fun e!2657880 () Bool)

(declare-fun tp!1309427 () Bool)

(assert (=> b!4281302 (= e!2657880 (and tp_is_empty!23013 tp!1309427))))

(assert (=> b!4281144 (= tp!1309420 e!2657880)))

(assert (= (and b!4281144 ((_ is Cons!47387) (innerList!14429 arr!11))) b!4281302))

(declare-fun b!4281303 () Bool)

(declare-fun e!2657881 () Bool)

(declare-fun tp!1309428 () Bool)

(assert (=> b!4281303 (= e!2657881 (and tp_is_empty!23013 tp!1309428))))

(assert (=> b!4281146 (= tp!1309419 e!2657881)))

(assert (= (and b!4281146 ((_ is Cons!47387) (t!354098 acc!244))) b!4281303))

(check-sat (not b!4281229) (not b!4281278) (not b!4281303) (not d!1264658) (not d!1264684) (not bm!294344) (not b!4281269) (not b!4281252) (not b!4281262) (not b!4281302) (not b!4281194) (not d!1264648) (not bm!294347) (not b!4281261) (not d!1264688) (not b!4281295) (not d!1264694) (not d!1264662) (not d!1264680) (not b!4281187) (not d!1264652) (not d!1264660) (not b!4281230) (not b!4281250) (not b!4281196) (not b!4281231) tp_is_empty!23013 (not b!4281203) (not bm!294341) (not d!1264672))
(check-sat)
