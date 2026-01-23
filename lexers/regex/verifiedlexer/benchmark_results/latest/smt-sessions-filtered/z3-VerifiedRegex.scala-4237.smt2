; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228790 () Bool)

(assert start!228790)

(declare-datatypes ((T!43796 0))(
  ( (T!43797 (val!7964 Int)) )
))
(declare-datatypes ((List!27750 0))(
  ( (Nil!27652) (Cons!27652 (h!33053 T!43796) (t!207382 List!27750)) )
))
(declare-datatypes ((IArray!18119 0))(
  ( (IArray!18120 (innerList!9117 List!27750)) )
))
(declare-datatypes ((Conc!9057 0))(
  ( (Node!9057 (left!20982 Conc!9057) (right!21312 Conc!9057) (csize!18344 Int) (cheight!9268 Int)) (Leaf!13295 (xs!12011 IArray!18119) (csize!18345 Int)) (Empty!9057) )
))
(declare-fun acc!252 () Conc!9057)

(declare-fun tp!736048 () Bool)

(declare-fun tp!736049 () Bool)

(declare-fun e!1486089 () Bool)

(declare-fun b!2318217 () Bool)

(declare-fun inv!37559 (Conc!9057) Bool)

(assert (=> b!2318217 (= e!1486089 (and (inv!37559 (left!20982 acc!252)) tp!736048 (inv!37559 (right!21312 acc!252)) tp!736049))))

(declare-fun b!2318218 () Bool)

(declare-fun e!1486083 () Bool)

(declare-fun tp!736050 () Bool)

(assert (=> b!2318218 (= e!1486083 tp!736050)))

(declare-fun res!990428 () Bool)

(declare-fun e!1486086 () Bool)

(assert (=> start!228790 (=> (not res!990428) (not e!1486086))))

(declare-fun isBalanced!2751 (Conc!9057) Bool)

(assert (=> start!228790 (= res!990428 (isBalanced!2751 acc!252))))

(assert (=> start!228790 e!1486086))

(assert (=> start!228790 (and (inv!37559 acc!252) e!1486089)))

(declare-fun arr!18 () IArray!18119)

(declare-fun inv!37560 (IArray!18119) Bool)

(assert (=> start!228790 (and (inv!37560 arr!18) e!1486083)))

(declare-fun b!2318219 () Bool)

(declare-fun e!1486085 () Bool)

(assert (=> b!2318219 (= e!1486089 (and (inv!37560 (xs!12011 acc!252)) e!1486085))))

(declare-fun b!2318220 () Bool)

(declare-fun tp!736051 () Bool)

(assert (=> b!2318220 (= e!1486085 tp!736051)))

(declare-fun b!2318221 () Bool)

(declare-fun e!1486088 () Bool)

(declare-fun lt!859810 () List!27750)

(declare-fun lt!859809 () List!27750)

(assert (=> b!2318221 (= e!1486088 (= lt!859810 lt!859809))))

(declare-fun ++!6807 (List!27750 List!27750) List!27750)

(declare-fun slice!686 (List!27750 Int Int) List!27750)

(declare-fun size!21891 (List!27750) Int)

(assert (=> b!2318221 (= (++!6807 (slice!686 lt!859809 0 512) (slice!686 lt!859809 512 (size!21891 lt!859809))) lt!859809)))

(declare-datatypes ((Unit!40510 0))(
  ( (Unit!40511) )
))
(declare-fun lt!859806 () Unit!40510)

(declare-fun sliceSplit!18 (List!27750 Int) Unit!40510)

(assert (=> b!2318221 (= lt!859806 (sliceSplit!18 lt!859809 512))))

(declare-fun list!10984 (IArray!18119) List!27750)

(assert (=> b!2318221 (= lt!859809 (list!10984 arr!18))))

(declare-fun b!2318222 () Bool)

(declare-fun e!1486084 () Bool)

(assert (=> b!2318222 (= e!1486086 e!1486084)))

(declare-fun res!990429 () Bool)

(assert (=> b!2318222 (=> (not res!990429) (not e!1486084))))

(declare-fun lt!859816 () Int)

(assert (=> b!2318222 (= res!990429 (> lt!859816 512))))

(declare-fun size!21892 (IArray!18119) Int)

(assert (=> b!2318222 (= lt!859816 (size!21892 arr!18))))

(declare-fun b!2318223 () Bool)

(declare-fun e!1486087 () Bool)

(assert (=> b!2318223 (= e!1486087 (not e!1486088))))

(declare-fun res!990430 () Bool)

(assert (=> b!2318223 (=> res!990430 e!1486088)))

(declare-fun lt!859813 () List!27750)

(declare-fun lt!859815 () List!27750)

(assert (=> b!2318223 (= res!990430 (not (= lt!859813 lt!859815)))))

(declare-fun lt!859818 () List!27750)

(assert (=> b!2318223 (= lt!859818 lt!859813)))

(declare-fun lt!859808 () List!27750)

(assert (=> b!2318223 (= lt!859813 (++!6807 lt!859808 lt!859810))))

(declare-fun lt!859811 () List!27750)

(declare-fun lt!859817 () List!27750)

(assert (=> b!2318223 (= lt!859810 (++!6807 lt!859811 lt!859817))))

(declare-fun lt!859814 () Unit!40510)

(declare-fun lemmaConcatAssociativity!1453 (List!27750 List!27750 List!27750) Unit!40510)

(assert (=> b!2318223 (= lt!859814 (lemmaConcatAssociativity!1453 lt!859808 lt!859811 lt!859817))))

(declare-fun b!2318224 () Bool)

(declare-fun res!990431 () Bool)

(assert (=> b!2318224 (=> res!990431 e!1486088)))

(declare-fun lt!859812 () Conc!9057)

(assert (=> b!2318224 (= res!990431 (not (isBalanced!2751 lt!859812)))))

(declare-fun b!2318225 () Bool)

(assert (=> b!2318225 (= e!1486084 e!1486087)))

(declare-fun res!990432 () Bool)

(assert (=> b!2318225 (=> (not res!990432) (not e!1486087))))

(assert (=> b!2318225 (= res!990432 (= lt!859818 lt!859815))))

(declare-fun list!10985 (Conc!9057) List!27750)

(assert (=> b!2318225 (= lt!859815 (list!10985 lt!859812))))

(assert (=> b!2318225 (= lt!859818 (++!6807 (++!6807 lt!859808 lt!859811) lt!859817))))

(declare-fun lt!859819 () IArray!18119)

(assert (=> b!2318225 (= lt!859817 (list!10984 lt!859819))))

(declare-fun lt!859807 () Conc!9057)

(assert (=> b!2318225 (= lt!859811 (list!10985 lt!859807))))

(assert (=> b!2318225 (= lt!859808 (list!10985 acc!252))))

(declare-fun fromArray!29 (IArray!18119 Conc!9057) Conc!9057)

(declare-fun ++!6808 (Conc!9057 Conc!9057) Conc!9057)

(assert (=> b!2318225 (= lt!859812 (fromArray!29 lt!859819 (++!6808 acc!252 lt!859807)))))

(declare-fun slice!687 (IArray!18119 Int Int) IArray!18119)

(assert (=> b!2318225 (= lt!859819 (slice!687 arr!18 512 lt!859816))))

(assert (=> b!2318225 (= lt!859807 (Leaf!13295 (slice!687 arr!18 0 512) 512))))

(assert (= (and start!228790 res!990428) b!2318222))

(assert (= (and b!2318222 res!990429) b!2318225))

(assert (= (and b!2318225 res!990432) b!2318223))

(assert (= (and b!2318223 (not res!990430)) b!2318224))

(assert (= (and b!2318224 (not res!990431)) b!2318221))

(get-info :version)

(assert (= (and start!228790 ((_ is Node!9057) acc!252)) b!2318217))

(assert (= b!2318219 b!2318220))

(assert (= (and start!228790 ((_ is Leaf!13295) acc!252)) b!2318219))

(assert (= start!228790 b!2318218))

(declare-fun m!2745993 () Bool)

(assert (=> b!2318222 m!2745993))

(declare-fun m!2745995 () Bool)

(assert (=> b!2318224 m!2745995))

(declare-fun m!2745997 () Bool)

(assert (=> b!2318225 m!2745997))

(declare-fun m!2745999 () Bool)

(assert (=> b!2318225 m!2745999))

(declare-fun m!2746001 () Bool)

(assert (=> b!2318225 m!2746001))

(declare-fun m!2746003 () Bool)

(assert (=> b!2318225 m!2746003))

(declare-fun m!2746005 () Bool)

(assert (=> b!2318225 m!2746005))

(declare-fun m!2746007 () Bool)

(assert (=> b!2318225 m!2746007))

(declare-fun m!2746009 () Bool)

(assert (=> b!2318225 m!2746009))

(declare-fun m!2746011 () Bool)

(assert (=> b!2318225 m!2746011))

(assert (=> b!2318225 m!2746009))

(declare-fun m!2746013 () Bool)

(assert (=> b!2318225 m!2746013))

(assert (=> b!2318225 m!2746007))

(declare-fun m!2746015 () Bool)

(assert (=> b!2318225 m!2746015))

(declare-fun m!2746017 () Bool)

(assert (=> start!228790 m!2746017))

(declare-fun m!2746019 () Bool)

(assert (=> start!228790 m!2746019))

(declare-fun m!2746021 () Bool)

(assert (=> start!228790 m!2746021))

(declare-fun m!2746023 () Bool)

(assert (=> b!2318221 m!2746023))

(declare-fun m!2746025 () Bool)

(assert (=> b!2318221 m!2746025))

(declare-fun m!2746027 () Bool)

(assert (=> b!2318221 m!2746027))

(declare-fun m!2746029 () Bool)

(assert (=> b!2318221 m!2746029))

(assert (=> b!2318221 m!2746023))

(declare-fun m!2746031 () Bool)

(assert (=> b!2318221 m!2746031))

(declare-fun m!2746033 () Bool)

(assert (=> b!2318221 m!2746033))

(assert (=> b!2318221 m!2746025))

(assert (=> b!2318221 m!2746031))

(declare-fun m!2746035 () Bool)

(assert (=> b!2318217 m!2746035))

(declare-fun m!2746037 () Bool)

(assert (=> b!2318217 m!2746037))

(declare-fun m!2746039 () Bool)

(assert (=> b!2318219 m!2746039))

(declare-fun m!2746041 () Bool)

(assert (=> b!2318223 m!2746041))

(declare-fun m!2746043 () Bool)

(assert (=> b!2318223 m!2746043))

(declare-fun m!2746045 () Bool)

(assert (=> b!2318223 m!2746045))

(check-sat (not b!2318222) (not b!2318220) (not start!228790) (not b!2318224) (not b!2318221) (not b!2318225) (not b!2318219) (not b!2318218) (not b!2318217) (not b!2318223))
(check-sat)
(get-model)

(declare-fun b!2318238 () Bool)

(declare-fun res!990448 () Bool)

(declare-fun e!1486095 () Bool)

(assert (=> b!2318238 (=> (not res!990448) (not e!1486095))))

(assert (=> b!2318238 (= res!990448 (isBalanced!2751 (right!21312 acc!252)))))

(declare-fun d!685202 () Bool)

(declare-fun res!990450 () Bool)

(declare-fun e!1486094 () Bool)

(assert (=> d!685202 (=> res!990450 e!1486094)))

(assert (=> d!685202 (= res!990450 (not ((_ is Node!9057) acc!252)))))

(assert (=> d!685202 (= (isBalanced!2751 acc!252) e!1486094)))

(declare-fun b!2318239 () Bool)

(assert (=> b!2318239 (= e!1486094 e!1486095)))

(declare-fun res!990447 () Bool)

(assert (=> b!2318239 (=> (not res!990447) (not e!1486095))))

(declare-fun height!1320 (Conc!9057) Int)

(assert (=> b!2318239 (= res!990447 (<= (- 1) (- (height!1320 (left!20982 acc!252)) (height!1320 (right!21312 acc!252)))))))

(declare-fun b!2318240 () Bool)

(declare-fun res!990449 () Bool)

(assert (=> b!2318240 (=> (not res!990449) (not e!1486095))))

(declare-fun isEmpty!15774 (Conc!9057) Bool)

(assert (=> b!2318240 (= res!990449 (not (isEmpty!15774 (left!20982 acc!252))))))

(declare-fun b!2318241 () Bool)

(declare-fun res!990445 () Bool)

(assert (=> b!2318241 (=> (not res!990445) (not e!1486095))))

(assert (=> b!2318241 (= res!990445 (<= (- (height!1320 (left!20982 acc!252)) (height!1320 (right!21312 acc!252))) 1))))

(declare-fun b!2318242 () Bool)

(assert (=> b!2318242 (= e!1486095 (not (isEmpty!15774 (right!21312 acc!252))))))

(declare-fun b!2318243 () Bool)

(declare-fun res!990446 () Bool)

(assert (=> b!2318243 (=> (not res!990446) (not e!1486095))))

(assert (=> b!2318243 (= res!990446 (isBalanced!2751 (left!20982 acc!252)))))

(assert (= (and d!685202 (not res!990450)) b!2318239))

(assert (= (and b!2318239 res!990447) b!2318241))

(assert (= (and b!2318241 res!990445) b!2318243))

(assert (= (and b!2318243 res!990446) b!2318238))

(assert (= (and b!2318238 res!990448) b!2318240))

(assert (= (and b!2318240 res!990449) b!2318242))

(declare-fun m!2746053 () Bool)

(assert (=> b!2318240 m!2746053))

(declare-fun m!2746055 () Bool)

(assert (=> b!2318243 m!2746055))

(declare-fun m!2746057 () Bool)

(assert (=> b!2318242 m!2746057))

(declare-fun m!2746059 () Bool)

(assert (=> b!2318241 m!2746059))

(declare-fun m!2746061 () Bool)

(assert (=> b!2318241 m!2746061))

(declare-fun m!2746063 () Bool)

(assert (=> b!2318238 m!2746063))

(assert (=> b!2318239 m!2746059))

(assert (=> b!2318239 m!2746061))

(assert (=> start!228790 d!685202))

(declare-fun d!685212 () Bool)

(declare-fun c!367532 () Bool)

(assert (=> d!685212 (= c!367532 ((_ is Node!9057) acc!252))))

(declare-fun e!1486104 () Bool)

(assert (=> d!685212 (= (inv!37559 acc!252) e!1486104)))

(declare-fun b!2318258 () Bool)

(declare-fun inv!37563 (Conc!9057) Bool)

(assert (=> b!2318258 (= e!1486104 (inv!37563 acc!252))))

(declare-fun b!2318259 () Bool)

(declare-fun e!1486105 () Bool)

(assert (=> b!2318259 (= e!1486104 e!1486105)))

(declare-fun res!990457 () Bool)

(assert (=> b!2318259 (= res!990457 (not ((_ is Leaf!13295) acc!252)))))

(assert (=> b!2318259 (=> res!990457 e!1486105)))

(declare-fun b!2318260 () Bool)

(declare-fun inv!37564 (Conc!9057) Bool)

(assert (=> b!2318260 (= e!1486105 (inv!37564 acc!252))))

(assert (= (and d!685212 c!367532) b!2318258))

(assert (= (and d!685212 (not c!367532)) b!2318259))

(assert (= (and b!2318259 (not res!990457)) b!2318260))

(declare-fun m!2746065 () Bool)

(assert (=> b!2318258 m!2746065))

(declare-fun m!2746067 () Bool)

(assert (=> b!2318260 m!2746067))

(assert (=> start!228790 d!685212))

(declare-fun d!685214 () Bool)

(assert (=> d!685214 (= (inv!37560 arr!18) (<= (size!21891 (innerList!9117 arr!18)) 2147483647))))

(declare-fun bs!458904 () Bool)

(assert (= bs!458904 d!685214))

(declare-fun m!2746069 () Bool)

(assert (=> bs!458904 m!2746069))

(assert (=> start!228790 d!685214))

(declare-fun lt!859835 () List!27750)

(declare-fun b!2318286 () Bool)

(declare-fun e!1486118 () Bool)

(assert (=> b!2318286 (= e!1486118 (or (not (= lt!859817 Nil!27652)) (= lt!859835 (++!6807 lt!859808 lt!859811))))))

(declare-fun b!2318285 () Bool)

(declare-fun res!990466 () Bool)

(assert (=> b!2318285 (=> (not res!990466) (not e!1486118))))

(assert (=> b!2318285 (= res!990466 (= (size!21891 lt!859835) (+ (size!21891 (++!6807 lt!859808 lt!859811)) (size!21891 lt!859817))))))

(declare-fun b!2318283 () Bool)

(declare-fun e!1486117 () List!27750)

(assert (=> b!2318283 (= e!1486117 lt!859817)))

(declare-fun b!2318284 () Bool)

(assert (=> b!2318284 (= e!1486117 (Cons!27652 (h!33053 (++!6807 lt!859808 lt!859811)) (++!6807 (t!207382 (++!6807 lt!859808 lt!859811)) lt!859817)))))

(declare-fun d!685216 () Bool)

(assert (=> d!685216 e!1486118))

(declare-fun res!990467 () Bool)

(assert (=> d!685216 (=> (not res!990467) (not e!1486118))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3736 (List!27750) (InoxSet T!43796))

(assert (=> d!685216 (= res!990467 (= (content!3736 lt!859835) ((_ map or) (content!3736 (++!6807 lt!859808 lt!859811)) (content!3736 lt!859817))))))

(assert (=> d!685216 (= lt!859835 e!1486117)))

(declare-fun c!367540 () Bool)

(assert (=> d!685216 (= c!367540 ((_ is Nil!27652) (++!6807 lt!859808 lt!859811)))))

(assert (=> d!685216 (= (++!6807 (++!6807 lt!859808 lt!859811) lt!859817) lt!859835)))

(assert (= (and d!685216 c!367540) b!2318283))

(assert (= (and d!685216 (not c!367540)) b!2318284))

(assert (= (and d!685216 res!990467) b!2318285))

(assert (= (and b!2318285 res!990466) b!2318286))

(declare-fun m!2746113 () Bool)

(assert (=> b!2318285 m!2746113))

(assert (=> b!2318285 m!2746007))

(declare-fun m!2746121 () Bool)

(assert (=> b!2318285 m!2746121))

(declare-fun m!2746127 () Bool)

(assert (=> b!2318285 m!2746127))

(declare-fun m!2746129 () Bool)

(assert (=> b!2318284 m!2746129))

(declare-fun m!2746131 () Bool)

(assert (=> d!685216 m!2746131))

(assert (=> d!685216 m!2746007))

(declare-fun m!2746133 () Bool)

(assert (=> d!685216 m!2746133))

(declare-fun m!2746135 () Bool)

(assert (=> d!685216 m!2746135))

(assert (=> b!2318225 d!685216))

(declare-fun b!2318302 () Bool)

(declare-fun e!1486126 () List!27750)

(assert (=> b!2318302 (= e!1486126 (++!6807 (list!10985 (left!20982 acc!252)) (list!10985 (right!21312 acc!252))))))

(declare-fun b!2318299 () Bool)

(declare-fun e!1486125 () List!27750)

(assert (=> b!2318299 (= e!1486125 Nil!27652)))

(declare-fun d!685230 () Bool)

(declare-fun c!367546 () Bool)

(assert (=> d!685230 (= c!367546 ((_ is Empty!9057) acc!252))))

(assert (=> d!685230 (= (list!10985 acc!252) e!1486125)))

(declare-fun b!2318301 () Bool)

(assert (=> b!2318301 (= e!1486126 (list!10984 (xs!12011 acc!252)))))

(declare-fun b!2318300 () Bool)

(assert (=> b!2318300 (= e!1486125 e!1486126)))

(declare-fun c!367547 () Bool)

(assert (=> b!2318300 (= c!367547 ((_ is Leaf!13295) acc!252))))

(assert (= (and d!685230 c!367546) b!2318299))

(assert (= (and d!685230 (not c!367546)) b!2318300))

(assert (= (and b!2318300 c!367547) b!2318301))

(assert (= (and b!2318300 (not c!367547)) b!2318302))

(declare-fun m!2746143 () Bool)

(assert (=> b!2318302 m!2746143))

(declare-fun m!2746145 () Bool)

(assert (=> b!2318302 m!2746145))

(assert (=> b!2318302 m!2746143))

(assert (=> b!2318302 m!2746145))

(declare-fun m!2746147 () Bool)

(assert (=> b!2318302 m!2746147))

(declare-fun m!2746149 () Bool)

(assert (=> b!2318301 m!2746149))

(assert (=> b!2318225 d!685230))

(declare-fun d!685236 () Bool)

(declare-fun lt!859842 () IArray!18119)

(assert (=> d!685236 (= lt!859842 (IArray!18120 (slice!686 (list!10984 arr!18) 512 lt!859816)))))

(declare-fun choose!13580 (IArray!18119 Int Int) IArray!18119)

(assert (=> d!685236 (= lt!859842 (choose!13580 arr!18 512 lt!859816))))

(declare-fun e!1486133 () Bool)

(assert (=> d!685236 e!1486133))

(declare-fun res!990484 () Bool)

(assert (=> d!685236 (=> (not res!990484) (not e!1486133))))

(assert (=> d!685236 (= res!990484 (and (<= 0 512) (<= 512 lt!859816)))))

(assert (=> d!685236 (= (slice!687 arr!18 512 lt!859816) lt!859842)))

(declare-fun b!2318317 () Bool)

(assert (=> b!2318317 (= e!1486133 (<= lt!859816 (size!21892 arr!18)))))

(assert (= (and d!685236 res!990484) b!2318317))

(assert (=> d!685236 m!2746027))

(assert (=> d!685236 m!2746027))

(declare-fun m!2746151 () Bool)

(assert (=> d!685236 m!2746151))

(declare-fun m!2746153 () Bool)

(assert (=> d!685236 m!2746153))

(assert (=> b!2318317 m!2745993))

(assert (=> b!2318225 d!685236))

(declare-fun b!2318321 () Bool)

(declare-fun e!1486135 () List!27750)

(assert (=> b!2318321 (= e!1486135 (++!6807 (list!10985 (left!20982 lt!859812)) (list!10985 (right!21312 lt!859812))))))

(declare-fun b!2318318 () Bool)

(declare-fun e!1486134 () List!27750)

(assert (=> b!2318318 (= e!1486134 Nil!27652)))

(declare-fun d!685238 () Bool)

(declare-fun c!367548 () Bool)

(assert (=> d!685238 (= c!367548 ((_ is Empty!9057) lt!859812))))

(assert (=> d!685238 (= (list!10985 lt!859812) e!1486134)))

(declare-fun b!2318320 () Bool)

(assert (=> b!2318320 (= e!1486135 (list!10984 (xs!12011 lt!859812)))))

(declare-fun b!2318319 () Bool)

(assert (=> b!2318319 (= e!1486134 e!1486135)))

(declare-fun c!367549 () Bool)

(assert (=> b!2318319 (= c!367549 ((_ is Leaf!13295) lt!859812))))

(assert (= (and d!685238 c!367548) b!2318318))

(assert (= (and d!685238 (not c!367548)) b!2318319))

(assert (= (and b!2318319 c!367549) b!2318320))

(assert (= (and b!2318319 (not c!367549)) b!2318321))

(declare-fun m!2746155 () Bool)

(assert (=> b!2318321 m!2746155))

(declare-fun m!2746157 () Bool)

(assert (=> b!2318321 m!2746157))

(assert (=> b!2318321 m!2746155))

(assert (=> b!2318321 m!2746157))

(declare-fun m!2746159 () Bool)

(assert (=> b!2318321 m!2746159))

(declare-fun m!2746161 () Bool)

(assert (=> b!2318320 m!2746161))

(assert (=> b!2318225 d!685238))

(declare-fun b!2318381 () Bool)

(declare-fun e!1486170 () Conc!9057)

(assert (=> b!2318381 (= e!1486170 (++!6808 acc!252 lt!859807))))

(declare-fun b!2318382 () Bool)

(declare-fun lt!859876 () Conc!9057)

(declare-fun e!1486169 () Bool)

(assert (=> b!2318382 (= e!1486169 (= (list!10985 lt!859876) (++!6807 (list!10985 (++!6808 acc!252 lt!859807)) (list!10984 lt!859819))))))

(declare-fun b!2318383 () Bool)

(declare-fun call!138106 () Conc!9057)

(declare-fun call!138105 () Int)

(declare-fun e!1486168 () Conc!9057)

(assert (=> b!2318383 (= e!1486168 (fromArray!29 (slice!687 lt!859819 512 call!138105) call!138106))))

(declare-fun lt!859878 () Conc!9057)

(assert (=> b!2318383 (= lt!859878 (Leaf!13295 (slice!687 lt!859819 0 512) 512))))

(declare-fun lt!859884 () Conc!9057)

(assert (=> b!2318383 (= lt!859884 (fromArray!29 (slice!687 lt!859819 512 call!138105) call!138106))))

(declare-fun lt!859881 () List!27750)

(assert (=> b!2318383 (= lt!859881 (list!10985 (++!6808 acc!252 lt!859807)))))

(declare-fun lt!859885 () List!27750)

(assert (=> b!2318383 (= lt!859885 (list!10985 lt!859878))))

(declare-fun lt!859879 () List!27750)

(assert (=> b!2318383 (= lt!859879 (list!10984 (slice!687 lt!859819 512 call!138105)))))

(declare-fun lt!859886 () Unit!40510)

(assert (=> b!2318383 (= lt!859886 (lemmaConcatAssociativity!1453 lt!859881 lt!859885 lt!859879))))

(assert (=> b!2318383 (= (++!6807 (++!6807 lt!859881 lt!859885) lt!859879) (++!6807 lt!859881 (++!6807 lt!859885 lt!859879)))))

(declare-fun lt!859880 () Unit!40510)

(assert (=> b!2318383 (= lt!859880 lt!859886)))

(declare-fun lt!859883 () List!27750)

(assert (=> b!2318383 (= lt!859883 (list!10984 lt!859819))))

(declare-fun lt!859882 () Int)

(assert (=> b!2318383 (= lt!859882 512)))

(declare-fun lt!859875 () Unit!40510)

(assert (=> b!2318383 (= lt!859875 (sliceSplit!18 lt!859883 lt!859882))))

(assert (=> b!2318383 (= (++!6807 (slice!686 lt!859883 0 lt!859882) (slice!686 lt!859883 lt!859882 (size!21891 lt!859883))) lt!859883)))

(declare-fun lt!859877 () Unit!40510)

(assert (=> b!2318383 (= lt!859877 lt!859875)))

(declare-fun bm!138100 () Bool)

(assert (=> bm!138100 (= call!138105 (size!21892 lt!859819))))

(declare-fun b!2318384 () Bool)

(assert (=> b!2318384 (= e!1486170 call!138106)))

(declare-fun b!2318385 () Bool)

(assert (=> b!2318385 (= e!1486168 e!1486170)))

(declare-fun c!367573 () Bool)

(assert (=> b!2318385 (= c!367573 (= call!138105 0))))

(declare-fun c!367574 () Bool)

(declare-fun bm!138101 () Bool)

(assert (=> bm!138101 (= call!138106 (++!6808 (++!6808 acc!252 lt!859807) (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)))))

(declare-fun d!685240 () Bool)

(assert (=> d!685240 e!1486169))

(declare-fun res!990498 () Bool)

(assert (=> d!685240 (=> (not res!990498) (not e!1486169))))

(assert (=> d!685240 (= res!990498 (isBalanced!2751 lt!859876))))

(assert (=> d!685240 (= lt!859876 e!1486168)))

(assert (=> d!685240 (= c!367574 (<= (size!21892 lt!859819) 512))))

(assert (=> d!685240 (isBalanced!2751 (++!6808 acc!252 lt!859807))))

(assert (=> d!685240 (= (fromArray!29 lt!859819 (++!6808 acc!252 lt!859807)) lt!859876)))

(assert (= (and d!685240 c!367574) b!2318385))

(assert (= (and d!685240 (not c!367574)) b!2318383))

(assert (= (and b!2318385 c!367573) b!2318381))

(assert (= (and b!2318385 (not c!367573)) b!2318384))

(assert (= (or b!2318385 b!2318384 b!2318383) bm!138100))

(assert (= (or b!2318384 b!2318383) bm!138101))

(assert (= (and d!685240 res!990498) b!2318382))

(assert (=> bm!138101 m!2746009))

(declare-fun m!2746181 () Bool)

(assert (=> bm!138101 m!2746181))

(declare-fun m!2746183 () Bool)

(assert (=> d!685240 m!2746183))

(declare-fun m!2746185 () Bool)

(assert (=> d!685240 m!2746185))

(assert (=> d!685240 m!2746009))

(declare-fun m!2746187 () Bool)

(assert (=> d!685240 m!2746187))

(assert (=> bm!138100 m!2746185))

(declare-fun m!2746189 () Bool)

(assert (=> b!2318383 m!2746189))

(declare-fun m!2746191 () Bool)

(assert (=> b!2318383 m!2746191))

(declare-fun m!2746193 () Bool)

(assert (=> b!2318383 m!2746193))

(assert (=> b!2318383 m!2746189))

(declare-fun m!2746195 () Bool)

(assert (=> b!2318383 m!2746195))

(assert (=> b!2318383 m!2746009))

(declare-fun m!2746197 () Bool)

(assert (=> b!2318383 m!2746197))

(declare-fun m!2746199 () Bool)

(assert (=> b!2318383 m!2746199))

(declare-fun m!2746201 () Bool)

(assert (=> b!2318383 m!2746201))

(assert (=> b!2318383 m!2746001))

(declare-fun m!2746203 () Bool)

(assert (=> b!2318383 m!2746203))

(declare-fun m!2746205 () Bool)

(assert (=> b!2318383 m!2746205))

(assert (=> b!2318383 m!2746191))

(declare-fun m!2746207 () Bool)

(assert (=> b!2318383 m!2746207))

(declare-fun m!2746209 () Bool)

(assert (=> b!2318383 m!2746209))

(assert (=> b!2318383 m!2746203))

(declare-fun m!2746211 () Bool)

(assert (=> b!2318383 m!2746211))

(declare-fun m!2746213 () Bool)

(assert (=> b!2318383 m!2746213))

(declare-fun m!2746215 () Bool)

(assert (=> b!2318383 m!2746215))

(assert (=> b!2318383 m!2746199))

(assert (=> b!2318383 m!2746195))

(declare-fun m!2746217 () Bool)

(assert (=> b!2318383 m!2746217))

(assert (=> b!2318383 m!2746203))

(declare-fun m!2746219 () Bool)

(assert (=> b!2318383 m!2746219))

(assert (=> b!2318383 m!2746207))

(declare-fun m!2746221 () Bool)

(assert (=> b!2318382 m!2746221))

(assert (=> b!2318382 m!2746009))

(assert (=> b!2318382 m!2746197))

(assert (=> b!2318382 m!2746001))

(assert (=> b!2318382 m!2746197))

(assert (=> b!2318382 m!2746001))

(declare-fun m!2746223 () Bool)

(assert (=> b!2318382 m!2746223))

(assert (=> b!2318225 d!685240))

(declare-fun b!2318472 () Bool)

(declare-fun e!1486215 () Conc!9057)

(declare-fun e!1486213 () Conc!9057)

(assert (=> b!2318472 (= e!1486215 e!1486213)))

(declare-fun lt!859935 () Conc!9057)

(declare-fun call!138191 () Conc!9057)

(assert (=> b!2318472 (= lt!859935 call!138191)))

(declare-fun c!367611 () Bool)

(declare-fun call!138187 () Int)

(declare-fun call!138194 () Int)

(assert (=> b!2318472 (= c!367611 (= call!138187 (- call!138194 3)))))

(declare-fun lt!859938 () Conc!9057)

(declare-fun call!138183 () Conc!9057)

(declare-fun bm!138176 () Bool)

(declare-fun c!367606 () Bool)

(declare-fun call!138182 () Conc!9057)

(declare-fun call!138181 () Conc!9057)

(declare-fun c!367605 () Bool)

(declare-fun <>!210 (Conc!9057 Conc!9057) Conc!9057)

(assert (=> bm!138176 (= call!138181 (<>!210 (ite c!367605 (ite c!367611 (left!20982 acc!252) call!138183) (ite c!367606 call!138182 lt!859938)) (ite c!367605 (ite c!367611 call!138183 lt!859935) (ite c!367606 (right!21312 lt!859807) call!138182))))))

(declare-fun b!2318473 () Bool)

(declare-fun res!990528 () Bool)

(declare-fun e!1486218 () Bool)

(assert (=> b!2318473 (=> (not res!990528) (not e!1486218))))

(declare-fun lt!859936 () Conc!9057)

(assert (=> b!2318473 (= res!990528 (isBalanced!2751 lt!859936))))

(declare-fun call!138189 () Int)

(declare-fun bm!138177 () Bool)

(assert (=> bm!138177 (= call!138189 (height!1320 (ite c!367605 (right!21312 acc!252) lt!859938)))))

(declare-fun bm!138178 () Bool)

(declare-fun c!367607 () Bool)

(declare-fun c!367608 () Bool)

(declare-fun call!138185 () Conc!9057)

(declare-fun call!138196 () Conc!9057)

(declare-fun c!367612 () Bool)

(assert (=> bm!138178 (= call!138185 (<>!210 (ite c!367607 acc!252 (ite c!367605 (ite c!367608 (left!20982 acc!252) (ite c!367611 (left!20982 (right!21312 acc!252)) (left!20982 acc!252))) (ite c!367612 call!138196 (ite c!367606 lt!859938 (right!21312 (left!20982 lt!859807)))))) (ite c!367607 lt!859807 (ite c!367605 (ite c!367608 call!138191 (ite c!367611 lt!859935 (left!20982 (right!21312 acc!252)))) (ite c!367612 (right!21312 lt!859807) (ite c!367606 (right!21312 (left!20982 lt!859807)) (right!21312 lt!859807)))))))))

(declare-fun bm!138180 () Bool)

(assert (=> bm!138180 (= call!138187 (height!1320 (ite c!367605 lt!859935 (right!21312 lt!859807))))))

(declare-fun bm!138181 () Bool)

(assert (=> bm!138181 (= call!138194 (height!1320 (ite c!367605 acc!252 lt!859807)))))

(declare-fun bm!138182 () Bool)

(declare-fun call!138192 () Conc!9057)

(declare-fun call!138186 () Conc!9057)

(assert (=> bm!138182 (= call!138192 call!138186)))

(declare-fun b!2318474 () Bool)

(declare-fun res!990527 () Bool)

(assert (=> b!2318474 (=> (not res!990527) (not e!1486218))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2318474 (= res!990527 (<= (height!1320 lt!859936) (+ (max!0 (height!1320 acc!252) (height!1320 lt!859807)) 1)))))

(declare-fun bm!138183 () Bool)

(declare-fun call!138193 () Conc!9057)

(assert (=> bm!138183 (= call!138193 call!138181)))

(declare-fun b!2318475 () Bool)

(declare-fun e!1486221 () Conc!9057)

(assert (=> b!2318475 (= e!1486221 call!138193)))

(declare-fun b!2318476 () Bool)

(declare-fun call!138190 () Int)

(assert (=> b!2318476 (= c!367608 (>= call!138190 call!138189))))

(declare-fun e!1486220 () Conc!9057)

(assert (=> b!2318476 (= e!1486220 e!1486215)))

(declare-fun b!2318477 () Bool)

(declare-fun e!1486212 () Conc!9057)

(assert (=> b!2318477 (= e!1486212 call!138192)))

(declare-fun b!2318478 () Bool)

(assert (=> b!2318478 (= c!367612 (>= call!138187 call!138190))))

(assert (=> b!2318478 (= e!1486220 e!1486212)))

(declare-fun bm!138184 () Bool)

(declare-fun call!138188 () Conc!9057)

(assert (=> bm!138184 (= call!138183 call!138188)))

(declare-fun b!2318479 () Bool)

(declare-fun e!1486214 () Conc!9057)

(assert (=> b!2318479 (= e!1486214 lt!859807)))

(declare-fun b!2318480 () Bool)

(declare-fun e!1486216 () Conc!9057)

(assert (=> b!2318480 (= e!1486216 call!138185)))

(declare-fun bm!138185 () Bool)

(declare-fun call!138184 () Conc!9057)

(assert (=> bm!138185 (= call!138196 call!138184)))

(declare-fun b!2318481 () Bool)

(declare-fun call!138195 () Conc!9057)

(assert (=> b!2318481 (= e!1486213 call!138195)))

(declare-fun b!2318482 () Bool)

(assert (=> b!2318482 (= e!1486216 e!1486220)))

(declare-fun lt!859937 () Int)

(assert (=> b!2318482 (= c!367605 (< lt!859937 (- 1)))))

(declare-fun b!2318483 () Bool)

(assert (=> b!2318483 (= e!1486212 e!1486221)))

(assert (=> b!2318483 (= lt!859938 call!138196)))

(assert (=> b!2318483 (= c!367606 (= call!138189 (- call!138194 3)))))

(declare-fun b!2318484 () Bool)

(declare-fun e!1486217 () Conc!9057)

(assert (=> b!2318484 (= e!1486214 e!1486217)))

(declare-fun c!367609 () Bool)

(assert (=> b!2318484 (= c!367609 (= lt!859807 Empty!9057))))

(declare-fun bm!138186 () Bool)

(assert (=> bm!138186 (= call!138190 (height!1320 (ite c!367605 (left!20982 acc!252) (left!20982 lt!859807))))))

(declare-fun bm!138187 () Bool)

(assert (=> bm!138187 (= call!138184 (++!6808 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252) (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))))))

(declare-fun b!2318485 () Bool)

(declare-fun e!1486219 () Bool)

(assert (=> b!2318485 (= e!1486219 (isBalanced!2751 lt!859807))))

(declare-fun b!2318486 () Bool)

(assert (=> b!2318486 (= c!367607 (and (<= (- 1) lt!859937) (<= lt!859937 1)))))

(assert (=> b!2318486 (= lt!859937 (- (height!1320 lt!859807) (height!1320 acc!252)))))

(assert (=> b!2318486 (= e!1486217 e!1486216)))

(declare-fun b!2318487 () Bool)

(assert (=> b!2318487 (= e!1486218 (= (list!10985 lt!859936) (++!6807 (list!10985 acc!252) (list!10985 lt!859807))))))

(declare-fun bm!138188 () Bool)

(assert (=> bm!138188 (= call!138182 call!138192)))

(declare-fun bm!138189 () Bool)

(assert (=> bm!138189 (= call!138186 call!138185)))

(declare-fun b!2318488 () Bool)

(declare-fun res!990526 () Bool)

(assert (=> b!2318488 (=> (not res!990526) (not e!1486218))))

(assert (=> b!2318488 (= res!990526 (>= (height!1320 lt!859936) (max!0 (height!1320 acc!252) (height!1320 lt!859807))))))

(declare-fun b!2318489 () Bool)

(assert (=> b!2318489 (= e!1486215 call!138188)))

(declare-fun b!2318490 () Bool)

(assert (=> b!2318490 (= e!1486217 acc!252)))

(declare-fun b!2318491 () Bool)

(assert (=> b!2318491 (= e!1486221 call!138193)))

(declare-fun bm!138190 () Bool)

(assert (=> bm!138190 (= call!138195 call!138181)))

(declare-fun d!685248 () Bool)

(assert (=> d!685248 e!1486218))

(declare-fun res!990525 () Bool)

(assert (=> d!685248 (=> (not res!990525) (not e!1486218))))

(declare-fun appendAssocInst!604 (Conc!9057 Conc!9057) Bool)

(assert (=> d!685248 (= res!990525 (appendAssocInst!604 acc!252 lt!859807))))

(assert (=> d!685248 (= lt!859936 e!1486214)))

(declare-fun c!367610 () Bool)

(assert (=> d!685248 (= c!367610 (= acc!252 Empty!9057))))

(assert (=> d!685248 e!1486219))

(declare-fun res!990529 () Bool)

(assert (=> d!685248 (=> (not res!990529) (not e!1486219))))

(assert (=> d!685248 (= res!990529 (isBalanced!2751 acc!252))))

(assert (=> d!685248 (= (++!6808 acc!252 lt!859807) lt!859936)))

(declare-fun bm!138179 () Bool)

(assert (=> bm!138179 (= call!138188 call!138186)))

(declare-fun bm!138191 () Bool)

(assert (=> bm!138191 (= call!138191 call!138184)))

(declare-fun b!2318492 () Bool)

(assert (=> b!2318492 (= e!1486213 call!138195)))

(assert (= (and d!685248 res!990529) b!2318485))

(assert (= (and d!685248 c!367610) b!2318479))

(assert (= (and d!685248 (not c!367610)) b!2318484))

(assert (= (and b!2318484 c!367609) b!2318490))

(assert (= (and b!2318484 (not c!367609)) b!2318486))

(assert (= (and b!2318486 c!367607) b!2318480))

(assert (= (and b!2318486 (not c!367607)) b!2318482))

(assert (= (and b!2318482 c!367605) b!2318476))

(assert (= (and b!2318482 (not c!367605)) b!2318478))

(assert (= (and b!2318476 c!367608) b!2318489))

(assert (= (and b!2318476 (not c!367608)) b!2318472))

(assert (= (and b!2318472 c!367611) b!2318481))

(assert (= (and b!2318472 (not c!367611)) b!2318492))

(assert (= (or b!2318481 b!2318492) bm!138184))

(assert (= (or b!2318481 b!2318492) bm!138190))

(assert (= (or b!2318489 b!2318472) bm!138191))

(assert (= (or b!2318489 bm!138184) bm!138179))

(assert (= (and b!2318478 c!367612) b!2318477))

(assert (= (and b!2318478 (not c!367612)) b!2318483))

(assert (= (and b!2318483 c!367606) b!2318491))

(assert (= (and b!2318483 (not c!367606)) b!2318475))

(assert (= (or b!2318491 b!2318475) bm!138188))

(assert (= (or b!2318491 b!2318475) bm!138183))

(assert (= (or b!2318477 b!2318483) bm!138185))

(assert (= (or b!2318477 bm!138188) bm!138182))

(assert (= (or bm!138179 bm!138182) bm!138189))

(assert (= (or b!2318472 b!2318483) bm!138181))

(assert (= (or bm!138190 bm!138183) bm!138176))

(assert (= (or b!2318476 b!2318478) bm!138186))

(assert (= (or b!2318476 b!2318483) bm!138177))

(assert (= (or b!2318472 b!2318478) bm!138180))

(assert (= (or bm!138191 bm!138185) bm!138187))

(assert (= (or b!2318480 bm!138189) bm!138178))

(assert (= (and d!685248 res!990525) b!2318473))

(assert (= (and b!2318473 res!990528) b!2318474))

(assert (= (and b!2318474 res!990527) b!2318488))

(assert (= (and b!2318488 res!990526) b!2318487))

(declare-fun m!2746311 () Bool)

(assert (=> bm!138180 m!2746311))

(declare-fun m!2746313 () Bool)

(assert (=> b!2318485 m!2746313))

(declare-fun m!2746315 () Bool)

(assert (=> b!2318473 m!2746315))

(declare-fun m!2746317 () Bool)

(assert (=> b!2318488 m!2746317))

(declare-fun m!2746319 () Bool)

(assert (=> b!2318488 m!2746319))

(declare-fun m!2746321 () Bool)

(assert (=> b!2318488 m!2746321))

(assert (=> b!2318488 m!2746319))

(assert (=> b!2318488 m!2746321))

(declare-fun m!2746323 () Bool)

(assert (=> b!2318488 m!2746323))

(declare-fun m!2746325 () Bool)

(assert (=> bm!138178 m!2746325))

(declare-fun m!2746327 () Bool)

(assert (=> b!2318487 m!2746327))

(assert (=> b!2318487 m!2745999))

(assert (=> b!2318487 m!2746003))

(assert (=> b!2318487 m!2745999))

(assert (=> b!2318487 m!2746003))

(declare-fun m!2746329 () Bool)

(assert (=> b!2318487 m!2746329))

(declare-fun m!2746331 () Bool)

(assert (=> bm!138176 m!2746331))

(assert (=> b!2318486 m!2746321))

(assert (=> b!2318486 m!2746319))

(declare-fun m!2746333 () Bool)

(assert (=> bm!138177 m!2746333))

(declare-fun m!2746335 () Bool)

(assert (=> bm!138187 m!2746335))

(declare-fun m!2746337 () Bool)

(assert (=> bm!138186 m!2746337))

(declare-fun m!2746339 () Bool)

(assert (=> d!685248 m!2746339))

(assert (=> d!685248 m!2746017))

(assert (=> b!2318474 m!2746317))

(assert (=> b!2318474 m!2746319))

(assert (=> b!2318474 m!2746321))

(assert (=> b!2318474 m!2746319))

(assert (=> b!2318474 m!2746321))

(assert (=> b!2318474 m!2746323))

(declare-fun m!2746343 () Bool)

(assert (=> bm!138181 m!2746343))

(assert (=> b!2318225 d!685248))

(declare-fun b!2318503 () Bool)

(declare-fun e!1486228 () Bool)

(declare-fun lt!859943 () List!27750)

(assert (=> b!2318503 (= e!1486228 (or (not (= lt!859811 Nil!27652)) (= lt!859943 lt!859808)))))

(declare-fun b!2318502 () Bool)

(declare-fun res!990535 () Bool)

(assert (=> b!2318502 (=> (not res!990535) (not e!1486228))))

(assert (=> b!2318502 (= res!990535 (= (size!21891 lt!859943) (+ (size!21891 lt!859808) (size!21891 lt!859811))))))

(declare-fun b!2318500 () Bool)

(declare-fun e!1486227 () List!27750)

(assert (=> b!2318500 (= e!1486227 lt!859811)))

(declare-fun b!2318501 () Bool)

(assert (=> b!2318501 (= e!1486227 (Cons!27652 (h!33053 lt!859808) (++!6807 (t!207382 lt!859808) lt!859811)))))

(declare-fun d!685260 () Bool)

(assert (=> d!685260 e!1486228))

(declare-fun res!990536 () Bool)

(assert (=> d!685260 (=> (not res!990536) (not e!1486228))))

(assert (=> d!685260 (= res!990536 (= (content!3736 lt!859943) ((_ map or) (content!3736 lt!859808) (content!3736 lt!859811))))))

(assert (=> d!685260 (= lt!859943 e!1486227)))

(declare-fun c!367614 () Bool)

(assert (=> d!685260 (= c!367614 ((_ is Nil!27652) lt!859808))))

(assert (=> d!685260 (= (++!6807 lt!859808 lt!859811) lt!859943)))

(assert (= (and d!685260 c!367614) b!2318500))

(assert (= (and d!685260 (not c!367614)) b!2318501))

(assert (= (and d!685260 res!990536) b!2318502))

(assert (= (and b!2318502 res!990535) b!2318503))

(declare-fun m!2746347 () Bool)

(assert (=> b!2318502 m!2746347))

(declare-fun m!2746349 () Bool)

(assert (=> b!2318502 m!2746349))

(declare-fun m!2746351 () Bool)

(assert (=> b!2318502 m!2746351))

(declare-fun m!2746353 () Bool)

(assert (=> b!2318501 m!2746353))

(declare-fun m!2746355 () Bool)

(assert (=> d!685260 m!2746355))

(declare-fun m!2746357 () Bool)

(assert (=> d!685260 m!2746357))

(declare-fun m!2746359 () Bool)

(assert (=> d!685260 m!2746359))

(assert (=> b!2318225 d!685260))

(declare-fun b!2318511 () Bool)

(declare-fun e!1486232 () List!27750)

(assert (=> b!2318511 (= e!1486232 (++!6807 (list!10985 (left!20982 lt!859807)) (list!10985 (right!21312 lt!859807))))))

(declare-fun b!2318508 () Bool)

(declare-fun e!1486231 () List!27750)

(assert (=> b!2318508 (= e!1486231 Nil!27652)))

(declare-fun d!685262 () Bool)

(declare-fun c!367617 () Bool)

(assert (=> d!685262 (= c!367617 ((_ is Empty!9057) lt!859807))))

(assert (=> d!685262 (= (list!10985 lt!859807) e!1486231)))

(declare-fun b!2318510 () Bool)

(assert (=> b!2318510 (= e!1486232 (list!10984 (xs!12011 lt!859807)))))

(declare-fun b!2318509 () Bool)

(assert (=> b!2318509 (= e!1486231 e!1486232)))

(declare-fun c!367618 () Bool)

(assert (=> b!2318509 (= c!367618 ((_ is Leaf!13295) lt!859807))))

(assert (= (and d!685262 c!367617) b!2318508))

(assert (= (and d!685262 (not c!367617)) b!2318509))

(assert (= (and b!2318509 c!367618) b!2318510))

(assert (= (and b!2318509 (not c!367618)) b!2318511))

(declare-fun m!2746361 () Bool)

(assert (=> b!2318511 m!2746361))

(declare-fun m!2746363 () Bool)

(assert (=> b!2318511 m!2746363))

(assert (=> b!2318511 m!2746361))

(assert (=> b!2318511 m!2746363))

(declare-fun m!2746365 () Bool)

(assert (=> b!2318511 m!2746365))

(declare-fun m!2746367 () Bool)

(assert (=> b!2318510 m!2746367))

(assert (=> b!2318225 d!685262))

(declare-fun d!685264 () Bool)

(declare-fun lt!859944 () IArray!18119)

(assert (=> d!685264 (= lt!859944 (IArray!18120 (slice!686 (list!10984 arr!18) 0 512)))))

(assert (=> d!685264 (= lt!859944 (choose!13580 arr!18 0 512))))

(declare-fun e!1486235 () Bool)

(assert (=> d!685264 e!1486235))

(declare-fun res!990537 () Bool)

(assert (=> d!685264 (=> (not res!990537) (not e!1486235))))

(assert (=> d!685264 (= res!990537 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!685264 (= (slice!687 arr!18 0 512) lt!859944)))

(declare-fun b!2318516 () Bool)

(assert (=> b!2318516 (= e!1486235 (<= 512 (size!21892 arr!18)))))

(assert (= (and d!685264 res!990537) b!2318516))

(assert (=> d!685264 m!2746027))

(assert (=> d!685264 m!2746027))

(declare-fun m!2746369 () Bool)

(assert (=> d!685264 m!2746369))

(declare-fun m!2746371 () Bool)

(assert (=> d!685264 m!2746371))

(assert (=> b!2318516 m!2745993))

(assert (=> b!2318225 d!685264))

(declare-fun d!685266 () Bool)

(assert (=> d!685266 (= (list!10984 lt!859819) (innerList!9117 lt!859819))))

(assert (=> b!2318225 d!685266))

(declare-fun d!685270 () Bool)

(declare-fun lt!859949 () Int)

(assert (=> d!685270 (= lt!859949 (size!21891 (list!10984 arr!18)))))

(declare-fun choose!13582 (IArray!18119) Int)

(assert (=> d!685270 (= lt!859949 (choose!13582 arr!18))))

(assert (=> d!685270 (= (size!21892 arr!18) lt!859949)))

(declare-fun bs!458910 () Bool)

(assert (= bs!458910 d!685270))

(assert (=> bs!458910 m!2746027))

(assert (=> bs!458910 m!2746027))

(declare-fun m!2746425 () Bool)

(assert (=> bs!458910 m!2746425))

(declare-fun m!2746429 () Bool)

(assert (=> bs!458910 m!2746429))

(assert (=> b!2318222 d!685270))

(declare-fun b!2318553 () Bool)

(declare-fun e!1486254 () Bool)

(declare-fun lt!859950 () List!27750)

(assert (=> b!2318553 (= e!1486254 (or (not (= (slice!686 lt!859809 512 (size!21891 lt!859809)) Nil!27652)) (= lt!859950 (slice!686 lt!859809 0 512))))))

(declare-fun b!2318552 () Bool)

(declare-fun res!990549 () Bool)

(assert (=> b!2318552 (=> (not res!990549) (not e!1486254))))

(assert (=> b!2318552 (= res!990549 (= (size!21891 lt!859950) (+ (size!21891 (slice!686 lt!859809 0 512)) (size!21891 (slice!686 lt!859809 512 (size!21891 lt!859809))))))))

(declare-fun b!2318550 () Bool)

(declare-fun e!1486253 () List!27750)

(assert (=> b!2318550 (= e!1486253 (slice!686 lt!859809 512 (size!21891 lt!859809)))))

(declare-fun b!2318551 () Bool)

(assert (=> b!2318551 (= e!1486253 (Cons!27652 (h!33053 (slice!686 lt!859809 0 512)) (++!6807 (t!207382 (slice!686 lt!859809 0 512)) (slice!686 lt!859809 512 (size!21891 lt!859809)))))))

(declare-fun d!685284 () Bool)

(assert (=> d!685284 e!1486254))

(declare-fun res!990550 () Bool)

(assert (=> d!685284 (=> (not res!990550) (not e!1486254))))

(assert (=> d!685284 (= res!990550 (= (content!3736 lt!859950) ((_ map or) (content!3736 (slice!686 lt!859809 0 512)) (content!3736 (slice!686 lt!859809 512 (size!21891 lt!859809))))))))

(assert (=> d!685284 (= lt!859950 e!1486253)))

(declare-fun c!367630 () Bool)

(assert (=> d!685284 (= c!367630 ((_ is Nil!27652) (slice!686 lt!859809 0 512)))))

(assert (=> d!685284 (= (++!6807 (slice!686 lt!859809 0 512) (slice!686 lt!859809 512 (size!21891 lt!859809))) lt!859950)))

(assert (= (and d!685284 c!367630) b!2318550))

(assert (= (and d!685284 (not c!367630)) b!2318551))

(assert (= (and d!685284 res!990550) b!2318552))

(assert (= (and b!2318552 res!990549) b!2318553))

(declare-fun m!2746431 () Bool)

(assert (=> b!2318552 m!2746431))

(assert (=> b!2318552 m!2746023))

(declare-fun m!2746433 () Bool)

(assert (=> b!2318552 m!2746433))

(assert (=> b!2318552 m!2746031))

(declare-fun m!2746435 () Bool)

(assert (=> b!2318552 m!2746435))

(assert (=> b!2318551 m!2746031))

(declare-fun m!2746437 () Bool)

(assert (=> b!2318551 m!2746437))

(declare-fun m!2746439 () Bool)

(assert (=> d!685284 m!2746439))

(assert (=> d!685284 m!2746023))

(declare-fun m!2746441 () Bool)

(assert (=> d!685284 m!2746441))

(assert (=> d!685284 m!2746031))

(declare-fun m!2746443 () Bool)

(assert (=> d!685284 m!2746443))

(assert (=> b!2318221 d!685284))

(declare-fun d!685286 () Bool)

(assert (=> d!685286 (= (list!10984 arr!18) (innerList!9117 arr!18))))

(assert (=> b!2318221 d!685286))

(declare-fun d!685288 () Bool)

(assert (=> d!685288 (= (++!6807 (slice!686 lt!859809 0 512) (slice!686 lt!859809 512 (size!21891 lt!859809))) lt!859809)))

(declare-fun lt!859953 () Unit!40510)

(declare-fun choose!13583 (List!27750 Int) Unit!40510)

(assert (=> d!685288 (= lt!859953 (choose!13583 lt!859809 512))))

(assert (=> d!685288 (= (sliceSplit!18 lt!859809 512) lt!859953)))

(declare-fun bs!458911 () Bool)

(assert (= bs!458911 d!685288))

(assert (=> bs!458911 m!2746023))

(assert (=> bs!458911 m!2746025))

(assert (=> bs!458911 m!2746031))

(declare-fun m!2746457 () Bool)

(assert (=> bs!458911 m!2746457))

(assert (=> bs!458911 m!2746025))

(assert (=> bs!458911 m!2746023))

(assert (=> bs!458911 m!2746031))

(assert (=> bs!458911 m!2746033))

(assert (=> b!2318221 d!685288))

(declare-fun d!685290 () Bool)

(declare-fun take!481 (List!27750 Int) List!27750)

(declare-fun drop!1504 (List!27750 Int) List!27750)

(assert (=> d!685290 (= (slice!686 lt!859809 0 512) (take!481 (drop!1504 lt!859809 0) (- 512 0)))))

(declare-fun bs!458912 () Bool)

(assert (= bs!458912 d!685290))

(declare-fun m!2746459 () Bool)

(assert (=> bs!458912 m!2746459))

(assert (=> bs!458912 m!2746459))

(declare-fun m!2746461 () Bool)

(assert (=> bs!458912 m!2746461))

(assert (=> b!2318221 d!685290))

(declare-fun d!685292 () Bool)

(assert (=> d!685292 (= (slice!686 lt!859809 512 (size!21891 lt!859809)) (take!481 (drop!1504 lt!859809 512) (- (size!21891 lt!859809) 512)))))

(declare-fun bs!458913 () Bool)

(assert (= bs!458913 d!685292))

(declare-fun m!2746463 () Bool)

(assert (=> bs!458913 m!2746463))

(assert (=> bs!458913 m!2746463))

(declare-fun m!2746465 () Bool)

(assert (=> bs!458913 m!2746465))

(assert (=> b!2318221 d!685292))

(declare-fun d!685294 () Bool)

(declare-fun lt!859956 () Int)

(assert (=> d!685294 (>= lt!859956 0)))

(declare-fun e!1486267 () Int)

(assert (=> d!685294 (= lt!859956 e!1486267)))

(declare-fun c!367633 () Bool)

(assert (=> d!685294 (= c!367633 ((_ is Nil!27652) lt!859809))))

(assert (=> d!685294 (= (size!21891 lt!859809) lt!859956)))

(declare-fun b!2318574 () Bool)

(assert (=> b!2318574 (= e!1486267 0)))

(declare-fun b!2318575 () Bool)

(assert (=> b!2318575 (= e!1486267 (+ 1 (size!21891 (t!207382 lt!859809))))))

(assert (= (and d!685294 c!367633) b!2318574))

(assert (= (and d!685294 (not c!367633)) b!2318575))

(declare-fun m!2746467 () Bool)

(assert (=> b!2318575 m!2746467))

(assert (=> b!2318221 d!685294))

(declare-fun e!1486269 () Bool)

(declare-fun b!2318579 () Bool)

(declare-fun lt!859957 () List!27750)

(assert (=> b!2318579 (= e!1486269 (or (not (= lt!859810 Nil!27652)) (= lt!859957 lt!859808)))))

(declare-fun b!2318578 () Bool)

(declare-fun res!990551 () Bool)

(assert (=> b!2318578 (=> (not res!990551) (not e!1486269))))

(assert (=> b!2318578 (= res!990551 (= (size!21891 lt!859957) (+ (size!21891 lt!859808) (size!21891 lt!859810))))))

(declare-fun b!2318576 () Bool)

(declare-fun e!1486268 () List!27750)

(assert (=> b!2318576 (= e!1486268 lt!859810)))

(declare-fun b!2318577 () Bool)

(assert (=> b!2318577 (= e!1486268 (Cons!27652 (h!33053 lt!859808) (++!6807 (t!207382 lt!859808) lt!859810)))))

(declare-fun d!685296 () Bool)

(assert (=> d!685296 e!1486269))

(declare-fun res!990552 () Bool)

(assert (=> d!685296 (=> (not res!990552) (not e!1486269))))

(assert (=> d!685296 (= res!990552 (= (content!3736 lt!859957) ((_ map or) (content!3736 lt!859808) (content!3736 lt!859810))))))

(assert (=> d!685296 (= lt!859957 e!1486268)))

(declare-fun c!367634 () Bool)

(assert (=> d!685296 (= c!367634 ((_ is Nil!27652) lt!859808))))

(assert (=> d!685296 (= (++!6807 lt!859808 lt!859810) lt!859957)))

(assert (= (and d!685296 c!367634) b!2318576))

(assert (= (and d!685296 (not c!367634)) b!2318577))

(assert (= (and d!685296 res!990552) b!2318578))

(assert (= (and b!2318578 res!990551) b!2318579))

(declare-fun m!2746469 () Bool)

(assert (=> b!2318578 m!2746469))

(assert (=> b!2318578 m!2746349))

(declare-fun m!2746471 () Bool)

(assert (=> b!2318578 m!2746471))

(declare-fun m!2746473 () Bool)

(assert (=> b!2318577 m!2746473))

(declare-fun m!2746475 () Bool)

(assert (=> d!685296 m!2746475))

(assert (=> d!685296 m!2746357))

(declare-fun m!2746477 () Bool)

(assert (=> d!685296 m!2746477))

(assert (=> b!2318223 d!685296))

(declare-fun lt!859958 () List!27750)

(declare-fun b!2318583 () Bool)

(declare-fun e!1486271 () Bool)

(assert (=> b!2318583 (= e!1486271 (or (not (= lt!859817 Nil!27652)) (= lt!859958 lt!859811)))))

(declare-fun b!2318582 () Bool)

(declare-fun res!990553 () Bool)

(assert (=> b!2318582 (=> (not res!990553) (not e!1486271))))

(assert (=> b!2318582 (= res!990553 (= (size!21891 lt!859958) (+ (size!21891 lt!859811) (size!21891 lt!859817))))))

(declare-fun b!2318580 () Bool)

(declare-fun e!1486270 () List!27750)

(assert (=> b!2318580 (= e!1486270 lt!859817)))

(declare-fun b!2318581 () Bool)

(assert (=> b!2318581 (= e!1486270 (Cons!27652 (h!33053 lt!859811) (++!6807 (t!207382 lt!859811) lt!859817)))))

(declare-fun d!685298 () Bool)

(assert (=> d!685298 e!1486271))

(declare-fun res!990554 () Bool)

(assert (=> d!685298 (=> (not res!990554) (not e!1486271))))

(assert (=> d!685298 (= res!990554 (= (content!3736 lt!859958) ((_ map or) (content!3736 lt!859811) (content!3736 lt!859817))))))

(assert (=> d!685298 (= lt!859958 e!1486270)))

(declare-fun c!367635 () Bool)

(assert (=> d!685298 (= c!367635 ((_ is Nil!27652) lt!859811))))

(assert (=> d!685298 (= (++!6807 lt!859811 lt!859817) lt!859958)))

(assert (= (and d!685298 c!367635) b!2318580))

(assert (= (and d!685298 (not c!367635)) b!2318581))

(assert (= (and d!685298 res!990554) b!2318582))

(assert (= (and b!2318582 res!990553) b!2318583))

(declare-fun m!2746479 () Bool)

(assert (=> b!2318582 m!2746479))

(assert (=> b!2318582 m!2746351))

(assert (=> b!2318582 m!2746127))

(declare-fun m!2746481 () Bool)

(assert (=> b!2318581 m!2746481))

(declare-fun m!2746483 () Bool)

(assert (=> d!685298 m!2746483))

(assert (=> d!685298 m!2746359))

(assert (=> d!685298 m!2746135))

(assert (=> b!2318223 d!685298))

(declare-fun d!685300 () Bool)

(assert (=> d!685300 (= (++!6807 (++!6807 lt!859808 lt!859811) lt!859817) (++!6807 lt!859808 (++!6807 lt!859811 lt!859817)))))

(declare-fun lt!859961 () Unit!40510)

(declare-fun choose!13584 (List!27750 List!27750 List!27750) Unit!40510)

(assert (=> d!685300 (= lt!859961 (choose!13584 lt!859808 lt!859811 lt!859817))))

(assert (=> d!685300 (= (lemmaConcatAssociativity!1453 lt!859808 lt!859811 lt!859817) lt!859961)))

(declare-fun bs!458914 () Bool)

(assert (= bs!458914 d!685300))

(assert (=> bs!458914 m!2746007))

(declare-fun m!2746485 () Bool)

(assert (=> bs!458914 m!2746485))

(assert (=> bs!458914 m!2746007))

(assert (=> bs!458914 m!2746015))

(assert (=> bs!458914 m!2746043))

(assert (=> bs!458914 m!2746043))

(declare-fun m!2746487 () Bool)

(assert (=> bs!458914 m!2746487))

(assert (=> b!2318223 d!685300))

(declare-fun d!685302 () Bool)

(declare-fun c!367636 () Bool)

(assert (=> d!685302 (= c!367636 ((_ is Node!9057) (left!20982 acc!252)))))

(declare-fun e!1486272 () Bool)

(assert (=> d!685302 (= (inv!37559 (left!20982 acc!252)) e!1486272)))

(declare-fun b!2318584 () Bool)

(assert (=> b!2318584 (= e!1486272 (inv!37563 (left!20982 acc!252)))))

(declare-fun b!2318585 () Bool)

(declare-fun e!1486273 () Bool)

(assert (=> b!2318585 (= e!1486272 e!1486273)))

(declare-fun res!990555 () Bool)

(assert (=> b!2318585 (= res!990555 (not ((_ is Leaf!13295) (left!20982 acc!252))))))

(assert (=> b!2318585 (=> res!990555 e!1486273)))

(declare-fun b!2318586 () Bool)

(assert (=> b!2318586 (= e!1486273 (inv!37564 (left!20982 acc!252)))))

(assert (= (and d!685302 c!367636) b!2318584))

(assert (= (and d!685302 (not c!367636)) b!2318585))

(assert (= (and b!2318585 (not res!990555)) b!2318586))

(declare-fun m!2746489 () Bool)

(assert (=> b!2318584 m!2746489))

(declare-fun m!2746491 () Bool)

(assert (=> b!2318586 m!2746491))

(assert (=> b!2318217 d!685302))

(declare-fun d!685304 () Bool)

(declare-fun c!367637 () Bool)

(assert (=> d!685304 (= c!367637 ((_ is Node!9057) (right!21312 acc!252)))))

(declare-fun e!1486274 () Bool)

(assert (=> d!685304 (= (inv!37559 (right!21312 acc!252)) e!1486274)))

(declare-fun b!2318587 () Bool)

(assert (=> b!2318587 (= e!1486274 (inv!37563 (right!21312 acc!252)))))

(declare-fun b!2318588 () Bool)

(declare-fun e!1486275 () Bool)

(assert (=> b!2318588 (= e!1486274 e!1486275)))

(declare-fun res!990556 () Bool)

(assert (=> b!2318588 (= res!990556 (not ((_ is Leaf!13295) (right!21312 acc!252))))))

(assert (=> b!2318588 (=> res!990556 e!1486275)))

(declare-fun b!2318589 () Bool)

(assert (=> b!2318589 (= e!1486275 (inv!37564 (right!21312 acc!252)))))

(assert (= (and d!685304 c!367637) b!2318587))

(assert (= (and d!685304 (not c!367637)) b!2318588))

(assert (= (and b!2318588 (not res!990556)) b!2318589))

(declare-fun m!2746493 () Bool)

(assert (=> b!2318587 m!2746493))

(declare-fun m!2746495 () Bool)

(assert (=> b!2318589 m!2746495))

(assert (=> b!2318217 d!685304))

(declare-fun d!685306 () Bool)

(assert (=> d!685306 (= (inv!37560 (xs!12011 acc!252)) (<= (size!21891 (innerList!9117 (xs!12011 acc!252))) 2147483647))))

(declare-fun bs!458915 () Bool)

(assert (= bs!458915 d!685306))

(declare-fun m!2746497 () Bool)

(assert (=> bs!458915 m!2746497))

(assert (=> b!2318219 d!685306))

(declare-fun b!2318590 () Bool)

(declare-fun res!990560 () Bool)

(declare-fun e!1486277 () Bool)

(assert (=> b!2318590 (=> (not res!990560) (not e!1486277))))

(assert (=> b!2318590 (= res!990560 (isBalanced!2751 (right!21312 lt!859812)))))

(declare-fun d!685308 () Bool)

(declare-fun res!990562 () Bool)

(declare-fun e!1486276 () Bool)

(assert (=> d!685308 (=> res!990562 e!1486276)))

(assert (=> d!685308 (= res!990562 (not ((_ is Node!9057) lt!859812)))))

(assert (=> d!685308 (= (isBalanced!2751 lt!859812) e!1486276)))

(declare-fun b!2318591 () Bool)

(assert (=> b!2318591 (= e!1486276 e!1486277)))

(declare-fun res!990559 () Bool)

(assert (=> b!2318591 (=> (not res!990559) (not e!1486277))))

(assert (=> b!2318591 (= res!990559 (<= (- 1) (- (height!1320 (left!20982 lt!859812)) (height!1320 (right!21312 lt!859812)))))))

(declare-fun b!2318592 () Bool)

(declare-fun res!990561 () Bool)

(assert (=> b!2318592 (=> (not res!990561) (not e!1486277))))

(assert (=> b!2318592 (= res!990561 (not (isEmpty!15774 (left!20982 lt!859812))))))

(declare-fun b!2318593 () Bool)

(declare-fun res!990557 () Bool)

(assert (=> b!2318593 (=> (not res!990557) (not e!1486277))))

(assert (=> b!2318593 (= res!990557 (<= (- (height!1320 (left!20982 lt!859812)) (height!1320 (right!21312 lt!859812))) 1))))

(declare-fun b!2318594 () Bool)

(assert (=> b!2318594 (= e!1486277 (not (isEmpty!15774 (right!21312 lt!859812))))))

(declare-fun b!2318595 () Bool)

(declare-fun res!990558 () Bool)

(assert (=> b!2318595 (=> (not res!990558) (not e!1486277))))

(assert (=> b!2318595 (= res!990558 (isBalanced!2751 (left!20982 lt!859812)))))

(assert (= (and d!685308 (not res!990562)) b!2318591))

(assert (= (and b!2318591 res!990559) b!2318593))

(assert (= (and b!2318593 res!990557) b!2318595))

(assert (= (and b!2318595 res!990558) b!2318590))

(assert (= (and b!2318590 res!990560) b!2318592))

(assert (= (and b!2318592 res!990561) b!2318594))

(declare-fun m!2746499 () Bool)

(assert (=> b!2318592 m!2746499))

(declare-fun m!2746501 () Bool)

(assert (=> b!2318595 m!2746501))

(declare-fun m!2746503 () Bool)

(assert (=> b!2318594 m!2746503))

(declare-fun m!2746505 () Bool)

(assert (=> b!2318593 m!2746505))

(declare-fun m!2746507 () Bool)

(assert (=> b!2318593 m!2746507))

(declare-fun m!2746509 () Bool)

(assert (=> b!2318590 m!2746509))

(assert (=> b!2318591 m!2746505))

(assert (=> b!2318591 m!2746507))

(assert (=> b!2318224 d!685308))

(declare-fun b!2318600 () Bool)

(declare-fun e!1486280 () Bool)

(declare-fun tp_is_empty!10805 () Bool)

(declare-fun tp!736070 () Bool)

(assert (=> b!2318600 (= e!1486280 (and tp_is_empty!10805 tp!736070))))

(assert (=> b!2318220 (= tp!736051 e!1486280)))

(assert (= (and b!2318220 ((_ is Cons!27652) (innerList!9117 (xs!12011 acc!252)))) b!2318600))

(declare-fun b!2318601 () Bool)

(declare-fun e!1486281 () Bool)

(declare-fun tp!736071 () Bool)

(assert (=> b!2318601 (= e!1486281 (and tp_is_empty!10805 tp!736071))))

(assert (=> b!2318218 (= tp!736050 e!1486281)))

(assert (= (and b!2318218 ((_ is Cons!27652) (innerList!9117 arr!18))) b!2318601))

(declare-fun e!1486287 () Bool)

(declare-fun b!2318610 () Bool)

(declare-fun tp!736078 () Bool)

(declare-fun tp!736080 () Bool)

(assert (=> b!2318610 (= e!1486287 (and (inv!37559 (left!20982 (left!20982 acc!252))) tp!736078 (inv!37559 (right!21312 (left!20982 acc!252))) tp!736080))))

(declare-fun b!2318612 () Bool)

(declare-fun e!1486286 () Bool)

(declare-fun tp!736079 () Bool)

(assert (=> b!2318612 (= e!1486286 tp!736079)))

(declare-fun b!2318611 () Bool)

(assert (=> b!2318611 (= e!1486287 (and (inv!37560 (xs!12011 (left!20982 acc!252))) e!1486286))))

(assert (=> b!2318217 (= tp!736048 (and (inv!37559 (left!20982 acc!252)) e!1486287))))

(assert (= (and b!2318217 ((_ is Node!9057) (left!20982 acc!252))) b!2318610))

(assert (= b!2318611 b!2318612))

(assert (= (and b!2318217 ((_ is Leaf!13295) (left!20982 acc!252))) b!2318611))

(declare-fun m!2746511 () Bool)

(assert (=> b!2318610 m!2746511))

(declare-fun m!2746513 () Bool)

(assert (=> b!2318610 m!2746513))

(declare-fun m!2746515 () Bool)

(assert (=> b!2318611 m!2746515))

(assert (=> b!2318217 m!2746035))

(declare-fun tp!736081 () Bool)

(declare-fun b!2318613 () Bool)

(declare-fun tp!736083 () Bool)

(declare-fun e!1486289 () Bool)

(assert (=> b!2318613 (= e!1486289 (and (inv!37559 (left!20982 (right!21312 acc!252))) tp!736081 (inv!37559 (right!21312 (right!21312 acc!252))) tp!736083))))

(declare-fun b!2318615 () Bool)

(declare-fun e!1486288 () Bool)

(declare-fun tp!736082 () Bool)

(assert (=> b!2318615 (= e!1486288 tp!736082)))

(declare-fun b!2318614 () Bool)

(assert (=> b!2318614 (= e!1486289 (and (inv!37560 (xs!12011 (right!21312 acc!252))) e!1486288))))

(assert (=> b!2318217 (= tp!736049 (and (inv!37559 (right!21312 acc!252)) e!1486289))))

(assert (= (and b!2318217 ((_ is Node!9057) (right!21312 acc!252))) b!2318613))

(assert (= b!2318614 b!2318615))

(assert (= (and b!2318217 ((_ is Leaf!13295) (right!21312 acc!252))) b!2318614))

(declare-fun m!2746517 () Bool)

(assert (=> b!2318613 m!2746517))

(declare-fun m!2746519 () Bool)

(assert (=> b!2318613 m!2746519))

(declare-fun m!2746521 () Bool)

(assert (=> b!2318614 m!2746521))

(assert (=> b!2318217 m!2746037))

(check-sat (not d!685260) (not b!2318575) (not d!685296) (not b!2318302) (not b!2318595) (not b!2318593) (not d!685288) (not b!2318610) (not b!2318239) (not b!2318217) (not b!2318473) (not b!2318510) (not bm!138181) (not b!2318584) (not d!685290) (not b!2318589) (not b!2318613) (not b!2318320) (not b!2318612) (not bm!138180) (not d!685298) (not bm!138187) (not b!2318516) (not b!2318578) (not d!685214) (not b!2318501) (not b!2318383) (not b!2318285) (not b!2318551) (not bm!138101) (not b!2318601) (not b!2318577) (not b!2318321) (not b!2318488) (not d!685284) (not b!2318260) (not b!2318592) (not b!2318615) (not b!2318594) (not b!2318258) (not b!2318591) (not b!2318474) (not b!2318301) (not b!2318581) (not b!2318382) (not d!685292) (not b!2318586) (not b!2318600) tp_is_empty!10805 (not d!685270) (not b!2318486) (not b!2318614) (not b!2318502) (not bm!138186) (not b!2318487) (not b!2318587) (not b!2318243) (not bm!138100) (not b!2318241) (not b!2318552) (not d!685264) (not b!2318611) (not b!2318590) (not d!685236) (not bm!138178) (not b!2318284) (not d!685216) (not b!2318242) (not b!2318240) (not d!685248) (not b!2318317) (not b!2318582) (not b!2318238) (not bm!138176) (not d!685300) (not b!2318485) (not d!685306) (not b!2318511) (not d!685240) (not bm!138177))
(check-sat)
(get-model)

(declare-fun b!2318620 () Bool)

(declare-fun res!990566 () Bool)

(declare-fun e!1486293 () Bool)

(assert (=> b!2318620 (=> (not res!990566) (not e!1486293))))

(assert (=> b!2318620 (= res!990566 (isBalanced!2751 (right!21312 (left!20982 acc!252))))))

(declare-fun d!685312 () Bool)

(declare-fun res!990568 () Bool)

(declare-fun e!1486292 () Bool)

(assert (=> d!685312 (=> res!990568 e!1486292)))

(assert (=> d!685312 (= res!990568 (not ((_ is Node!9057) (left!20982 acc!252))))))

(assert (=> d!685312 (= (isBalanced!2751 (left!20982 acc!252)) e!1486292)))

(declare-fun b!2318621 () Bool)

(assert (=> b!2318621 (= e!1486292 e!1486293)))

(declare-fun res!990565 () Bool)

(assert (=> b!2318621 (=> (not res!990565) (not e!1486293))))

(assert (=> b!2318621 (= res!990565 (<= (- 1) (- (height!1320 (left!20982 (left!20982 acc!252))) (height!1320 (right!21312 (left!20982 acc!252))))))))

(declare-fun b!2318622 () Bool)

(declare-fun res!990567 () Bool)

(assert (=> b!2318622 (=> (not res!990567) (not e!1486293))))

(assert (=> b!2318622 (= res!990567 (not (isEmpty!15774 (left!20982 (left!20982 acc!252)))))))

(declare-fun b!2318623 () Bool)

(declare-fun res!990563 () Bool)

(assert (=> b!2318623 (=> (not res!990563) (not e!1486293))))

(assert (=> b!2318623 (= res!990563 (<= (- (height!1320 (left!20982 (left!20982 acc!252))) (height!1320 (right!21312 (left!20982 acc!252)))) 1))))

(declare-fun b!2318624 () Bool)

(assert (=> b!2318624 (= e!1486293 (not (isEmpty!15774 (right!21312 (left!20982 acc!252)))))))

(declare-fun b!2318625 () Bool)

(declare-fun res!990564 () Bool)

(assert (=> b!2318625 (=> (not res!990564) (not e!1486293))))

(assert (=> b!2318625 (= res!990564 (isBalanced!2751 (left!20982 (left!20982 acc!252))))))

(assert (= (and d!685312 (not res!990568)) b!2318621))

(assert (= (and b!2318621 res!990565) b!2318623))

(assert (= (and b!2318623 res!990563) b!2318625))

(assert (= (and b!2318625 res!990564) b!2318620))

(assert (= (and b!2318620 res!990566) b!2318622))

(assert (= (and b!2318622 res!990567) b!2318624))

(declare-fun m!2746531 () Bool)

(assert (=> b!2318622 m!2746531))

(declare-fun m!2746533 () Bool)

(assert (=> b!2318625 m!2746533))

(declare-fun m!2746535 () Bool)

(assert (=> b!2318624 m!2746535))

(declare-fun m!2746537 () Bool)

(assert (=> b!2318623 m!2746537))

(declare-fun m!2746539 () Bool)

(assert (=> b!2318623 m!2746539))

(declare-fun m!2746541 () Bool)

(assert (=> b!2318620 m!2746541))

(assert (=> b!2318621 m!2746537))

(assert (=> b!2318621 m!2746539))

(assert (=> b!2318243 d!685312))

(declare-fun d!685318 () Bool)

(assert (=> d!685318 (= (height!1320 (ite c!367605 acc!252 lt!859807)) (ite ((_ is Empty!9057) (ite c!367605 acc!252 lt!859807)) 0 (ite ((_ is Leaf!13295) (ite c!367605 acc!252 lt!859807)) 1 (cheight!9268 (ite c!367605 acc!252 lt!859807)))))))

(assert (=> bm!138181 d!685318))

(declare-fun d!685326 () Bool)

(declare-fun lt!859971 () Bool)

(declare-fun isEmpty!15775 (List!27750) Bool)

(assert (=> d!685326 (= lt!859971 (isEmpty!15775 (list!10985 (right!21312 lt!859812))))))

(declare-fun size!21893 (Conc!9057) Int)

(assert (=> d!685326 (= lt!859971 (= (size!21893 (right!21312 lt!859812)) 0))))

(assert (=> d!685326 (= (isEmpty!15774 (right!21312 lt!859812)) lt!859971)))

(declare-fun bs!458916 () Bool)

(assert (= bs!458916 d!685326))

(assert (=> bs!458916 m!2746157))

(assert (=> bs!458916 m!2746157))

(declare-fun m!2746569 () Bool)

(assert (=> bs!458916 m!2746569))

(declare-fun m!2746571 () Bool)

(assert (=> bs!458916 m!2746571))

(assert (=> b!2318594 d!685326))

(declare-fun d!685338 () Bool)

(assert (=> d!685338 (= (height!1320 (left!20982 acc!252)) (ite ((_ is Empty!9057) (left!20982 acc!252)) 0 (ite ((_ is Leaf!13295) (left!20982 acc!252)) 1 (cheight!9268 (left!20982 acc!252)))))))

(assert (=> b!2318239 d!685338))

(declare-fun d!685340 () Bool)

(assert (=> d!685340 (= (height!1320 (right!21312 acc!252)) (ite ((_ is Empty!9057) (right!21312 acc!252)) 0 (ite ((_ is Leaf!13295) (right!21312 acc!252)) 1 (cheight!9268 (right!21312 acc!252)))))))

(assert (=> b!2318239 d!685340))

(declare-fun b!2318648 () Bool)

(declare-fun e!1486308 () Conc!9057)

(declare-fun e!1486306 () Conc!9057)

(assert (=> b!2318648 (= e!1486308 e!1486306)))

(declare-fun lt!859972 () Conc!9057)

(declare-fun call!138207 () Conc!9057)

(assert (=> b!2318648 (= lt!859972 call!138207)))

(declare-fun c!367656 () Bool)

(declare-fun call!138203 () Int)

(declare-fun call!138210 () Int)

(assert (=> b!2318648 (= c!367656 (= call!138203 (- call!138210 3)))))

(declare-fun call!138199 () Conc!9057)

(declare-fun lt!859975 () Conc!9057)

(declare-fun call!138198 () Conc!9057)

(declare-fun call!138197 () Conc!9057)

(declare-fun bm!138192 () Bool)

(declare-fun c!367650 () Bool)

(declare-fun c!367651 () Bool)

(assert (=> bm!138192 (= call!138197 (<>!210 (ite c!367650 (ite c!367656 (left!20982 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)) call!138199) (ite c!367651 call!138198 lt!859975)) (ite c!367650 (ite c!367656 call!138199 lt!859972) (ite c!367651 (right!21312 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))) call!138198))))))

(declare-fun b!2318649 () Bool)

(declare-fun res!990574 () Bool)

(declare-fun e!1486311 () Bool)

(assert (=> b!2318649 (=> (not res!990574) (not e!1486311))))

(declare-fun lt!859973 () Conc!9057)

(assert (=> b!2318649 (= res!990574 (isBalanced!2751 lt!859973))))

(declare-fun bm!138193 () Bool)

(declare-fun call!138205 () Int)

(assert (=> bm!138193 (= call!138205 (height!1320 (ite c!367650 (right!21312 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)) lt!859975)))))

(declare-fun call!138212 () Conc!9057)

(declare-fun call!138201 () Conc!9057)

(declare-fun c!367652 () Bool)

(declare-fun bm!138194 () Bool)

(declare-fun c!367653 () Bool)

(declare-fun c!367657 () Bool)

(assert (=> bm!138194 (= call!138201 (<>!210 (ite c!367652 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252) (ite c!367650 (ite c!367653 (left!20982 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)) (ite c!367656 (left!20982 (right!21312 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252))) (left!20982 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)))) (ite c!367657 call!138212 (ite c!367651 lt!859975 (right!21312 (left!20982 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807)))))))))) (ite c!367652 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807)))) (ite c!367650 (ite c!367653 call!138207 (ite c!367656 lt!859972 (left!20982 (right!21312 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252))))) (ite c!367657 (right!21312 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))) (ite c!367651 (right!21312 (left!20982 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807)))))) (right!21312 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807)))))))))))))

(declare-fun bm!138196 () Bool)

(assert (=> bm!138196 (= call!138203 (height!1320 (ite c!367650 lt!859972 (right!21312 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))))))))

(declare-fun bm!138197 () Bool)

(assert (=> bm!138197 (= call!138210 (height!1320 (ite c!367650 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252) (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807)))))))))

(declare-fun bm!138198 () Bool)

(declare-fun call!138208 () Conc!9057)

(declare-fun call!138202 () Conc!9057)

(assert (=> bm!138198 (= call!138208 call!138202)))

(declare-fun b!2318650 () Bool)

(declare-fun res!990573 () Bool)

(assert (=> b!2318650 (=> (not res!990573) (not e!1486311))))

(assert (=> b!2318650 (= res!990573 (<= (height!1320 lt!859973) (+ (max!0 (height!1320 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)) (height!1320 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807)))))) 1)))))

(declare-fun bm!138199 () Bool)

(declare-fun call!138209 () Conc!9057)

(assert (=> bm!138199 (= call!138209 call!138197)))

(declare-fun b!2318651 () Bool)

(declare-fun e!1486314 () Conc!9057)

(assert (=> b!2318651 (= e!1486314 call!138209)))

(declare-fun b!2318652 () Bool)

(declare-fun call!138206 () Int)

(assert (=> b!2318652 (= c!367653 (>= call!138206 call!138205))))

(declare-fun e!1486313 () Conc!9057)

(assert (=> b!2318652 (= e!1486313 e!1486308)))

(declare-fun b!2318653 () Bool)

(declare-fun e!1486305 () Conc!9057)

(assert (=> b!2318653 (= e!1486305 call!138208)))

(declare-fun b!2318654 () Bool)

(assert (=> b!2318654 (= c!367657 (>= call!138203 call!138206))))

(assert (=> b!2318654 (= e!1486313 e!1486305)))

(declare-fun bm!138200 () Bool)

(declare-fun call!138204 () Conc!9057)

(assert (=> bm!138200 (= call!138199 call!138204)))

(declare-fun b!2318655 () Bool)

(declare-fun e!1486307 () Conc!9057)

(assert (=> b!2318655 (= e!1486307 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807)))))))

(declare-fun b!2318656 () Bool)

(declare-fun e!1486309 () Conc!9057)

(assert (=> b!2318656 (= e!1486309 call!138201)))

(declare-fun bm!138201 () Bool)

(declare-fun call!138200 () Conc!9057)

(assert (=> bm!138201 (= call!138212 call!138200)))

(declare-fun b!2318657 () Bool)

(declare-fun call!138211 () Conc!9057)

(assert (=> b!2318657 (= e!1486306 call!138211)))

(declare-fun b!2318658 () Bool)

(assert (=> b!2318658 (= e!1486309 e!1486313)))

(declare-fun lt!859974 () Int)

(assert (=> b!2318658 (= c!367650 (< lt!859974 (- 1)))))

(declare-fun b!2318659 () Bool)

(assert (=> b!2318659 (= e!1486305 e!1486314)))

(assert (=> b!2318659 (= lt!859975 call!138212)))

(assert (=> b!2318659 (= c!367651 (= call!138205 (- call!138210 3)))))

(declare-fun b!2318660 () Bool)

(declare-fun e!1486310 () Conc!9057)

(assert (=> b!2318660 (= e!1486307 e!1486310)))

(declare-fun c!367654 () Bool)

(assert (=> b!2318660 (= c!367654 (= (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807)))) Empty!9057))))

(declare-fun bm!138202 () Bool)

(assert (=> bm!138202 (= call!138206 (height!1320 (ite c!367650 (left!20982 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)) (left!20982 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))))))))

(declare-fun bm!138203 () Bool)

(assert (=> bm!138203 (= call!138200 (++!6808 (ite c!367650 (ite c!367653 (right!21312 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)) (right!21312 (right!21312 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)))) (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)) (ite c!367650 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807)))) (ite c!367657 (left!20982 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))) (left!20982 (left!20982 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))))))))))

(declare-fun b!2318661 () Bool)

(declare-fun e!1486312 () Bool)

(assert (=> b!2318661 (= e!1486312 (isBalanced!2751 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))))))

(declare-fun b!2318662 () Bool)

(assert (=> b!2318662 (= c!367652 (and (<= (- 1) lt!859974) (<= lt!859974 1)))))

(assert (=> b!2318662 (= lt!859974 (- (height!1320 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))) (height!1320 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252))))))

(assert (=> b!2318662 (= e!1486310 e!1486309)))

(declare-fun b!2318663 () Bool)

(assert (=> b!2318663 (= e!1486311 (= (list!10985 lt!859973) (++!6807 (list!10985 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)) (list!10985 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))))))))

(declare-fun bm!138204 () Bool)

(assert (=> bm!138204 (= call!138198 call!138208)))

(declare-fun bm!138205 () Bool)

(assert (=> bm!138205 (= call!138202 call!138201)))

(declare-fun b!2318664 () Bool)

(declare-fun res!990572 () Bool)

(assert (=> b!2318664 (=> (not res!990572) (not e!1486311))))

(assert (=> b!2318664 (= res!990572 (>= (height!1320 lt!859973) (max!0 (height!1320 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)) (height!1320 (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))))))))

(declare-fun b!2318665 () Bool)

(assert (=> b!2318665 (= e!1486308 call!138204)))

(declare-fun b!2318666 () Bool)

(assert (=> b!2318666 (= e!1486310 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252))))

(declare-fun b!2318667 () Bool)

(assert (=> b!2318667 (= e!1486314 call!138209)))

(declare-fun bm!138206 () Bool)

(assert (=> bm!138206 (= call!138211 call!138197)))

(declare-fun d!685342 () Bool)

(assert (=> d!685342 e!1486311))

(declare-fun res!990571 () Bool)

(assert (=> d!685342 (=> (not res!990571) (not e!1486311))))

(assert (=> d!685342 (= res!990571 (appendAssocInst!604 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252) (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))))))

(assert (=> d!685342 (= lt!859973 e!1486307)))

(declare-fun c!367655 () Bool)

(assert (=> d!685342 (= c!367655 (= (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252) Empty!9057))))

(assert (=> d!685342 e!1486312))

(declare-fun res!990575 () Bool)

(assert (=> d!685342 (=> (not res!990575) (not e!1486312))))

(assert (=> d!685342 (= res!990575 (isBalanced!2751 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252)))))

(assert (=> d!685342 (= (++!6808 (ite c!367605 (ite c!367608 (right!21312 acc!252) (right!21312 (right!21312 acc!252))) acc!252) (ite c!367605 lt!859807 (ite c!367612 (left!20982 lt!859807) (left!20982 (left!20982 lt!859807))))) lt!859973)))

(declare-fun bm!138195 () Bool)

(assert (=> bm!138195 (= call!138204 call!138202)))

(declare-fun bm!138207 () Bool)

(assert (=> bm!138207 (= call!138207 call!138200)))

(declare-fun b!2318668 () Bool)

(assert (=> b!2318668 (= e!1486306 call!138211)))

(assert (= (and d!685342 res!990575) b!2318661))

(assert (= (and d!685342 c!367655) b!2318655))

(assert (= (and d!685342 (not c!367655)) b!2318660))

(assert (= (and b!2318660 c!367654) b!2318666))

(assert (= (and b!2318660 (not c!367654)) b!2318662))

(assert (= (and b!2318662 c!367652) b!2318656))

(assert (= (and b!2318662 (not c!367652)) b!2318658))

(assert (= (and b!2318658 c!367650) b!2318652))

(assert (= (and b!2318658 (not c!367650)) b!2318654))

(assert (= (and b!2318652 c!367653) b!2318665))

(assert (= (and b!2318652 (not c!367653)) b!2318648))

(assert (= (and b!2318648 c!367656) b!2318657))

(assert (= (and b!2318648 (not c!367656)) b!2318668))

(assert (= (or b!2318657 b!2318668) bm!138200))

(assert (= (or b!2318657 b!2318668) bm!138206))

(assert (= (or b!2318665 b!2318648) bm!138207))

(assert (= (or b!2318665 bm!138200) bm!138195))

(assert (= (and b!2318654 c!367657) b!2318653))

(assert (= (and b!2318654 (not c!367657)) b!2318659))

(assert (= (and b!2318659 c!367651) b!2318667))

(assert (= (and b!2318659 (not c!367651)) b!2318651))

(assert (= (or b!2318667 b!2318651) bm!138204))

(assert (= (or b!2318667 b!2318651) bm!138199))

(assert (= (or b!2318653 b!2318659) bm!138201))

(assert (= (or b!2318653 bm!138204) bm!138198))

(assert (= (or bm!138195 bm!138198) bm!138205))

(assert (= (or b!2318648 b!2318659) bm!138197))

(assert (= (or bm!138206 bm!138199) bm!138192))

(assert (= (or b!2318652 b!2318654) bm!138202))

(assert (= (or b!2318652 b!2318659) bm!138193))

(assert (= (or b!2318648 b!2318654) bm!138196))

(assert (= (or bm!138207 bm!138201) bm!138203))

(assert (= (or b!2318656 bm!138205) bm!138194))

(assert (= (and d!685342 res!990571) b!2318649))

(assert (= (and b!2318649 res!990574) b!2318650))

(assert (= (and b!2318650 res!990573) b!2318664))

(assert (= (and b!2318664 res!990572) b!2318663))

(declare-fun m!2746573 () Bool)

(assert (=> bm!138196 m!2746573))

(declare-fun m!2746575 () Bool)

(assert (=> b!2318661 m!2746575))

(declare-fun m!2746577 () Bool)

(assert (=> b!2318649 m!2746577))

(declare-fun m!2746579 () Bool)

(assert (=> b!2318664 m!2746579))

(declare-fun m!2746581 () Bool)

(assert (=> b!2318664 m!2746581))

(declare-fun m!2746583 () Bool)

(assert (=> b!2318664 m!2746583))

(assert (=> b!2318664 m!2746581))

(assert (=> b!2318664 m!2746583))

(declare-fun m!2746585 () Bool)

(assert (=> b!2318664 m!2746585))

(declare-fun m!2746587 () Bool)

(assert (=> bm!138194 m!2746587))

(declare-fun m!2746589 () Bool)

(assert (=> b!2318663 m!2746589))

(declare-fun m!2746591 () Bool)

(assert (=> b!2318663 m!2746591))

(declare-fun m!2746593 () Bool)

(assert (=> b!2318663 m!2746593))

(assert (=> b!2318663 m!2746591))

(assert (=> b!2318663 m!2746593))

(declare-fun m!2746595 () Bool)

(assert (=> b!2318663 m!2746595))

(declare-fun m!2746597 () Bool)

(assert (=> bm!138192 m!2746597))

(assert (=> b!2318662 m!2746583))

(assert (=> b!2318662 m!2746581))

(declare-fun m!2746599 () Bool)

(assert (=> bm!138193 m!2746599))

(declare-fun m!2746601 () Bool)

(assert (=> bm!138203 m!2746601))

(declare-fun m!2746603 () Bool)

(assert (=> bm!138202 m!2746603))

(declare-fun m!2746605 () Bool)

(assert (=> d!685342 m!2746605))

(declare-fun m!2746607 () Bool)

(assert (=> d!685342 m!2746607))

(assert (=> b!2318650 m!2746579))

(assert (=> b!2318650 m!2746581))

(assert (=> b!2318650 m!2746583))

(assert (=> b!2318650 m!2746581))

(assert (=> b!2318650 m!2746583))

(assert (=> b!2318650 m!2746585))

(declare-fun m!2746609 () Bool)

(assert (=> bm!138197 m!2746609))

(assert (=> bm!138187 d!685342))

(declare-fun b!2318683 () Bool)

(declare-fun res!990581 () Bool)

(declare-fun e!1486324 () Bool)

(assert (=> b!2318683 (=> (not res!990581) (not e!1486324))))

(assert (=> b!2318683 (= res!990581 (isBalanced!2751 (right!21312 lt!859876)))))

(declare-fun d!685344 () Bool)

(declare-fun res!990583 () Bool)

(declare-fun e!1486323 () Bool)

(assert (=> d!685344 (=> res!990583 e!1486323)))

(assert (=> d!685344 (= res!990583 (not ((_ is Node!9057) lt!859876)))))

(assert (=> d!685344 (= (isBalanced!2751 lt!859876) e!1486323)))

(declare-fun b!2318684 () Bool)

(assert (=> b!2318684 (= e!1486323 e!1486324)))

(declare-fun res!990580 () Bool)

(assert (=> b!2318684 (=> (not res!990580) (not e!1486324))))

(assert (=> b!2318684 (= res!990580 (<= (- 1) (- (height!1320 (left!20982 lt!859876)) (height!1320 (right!21312 lt!859876)))))))

(declare-fun b!2318685 () Bool)

(declare-fun res!990582 () Bool)

(assert (=> b!2318685 (=> (not res!990582) (not e!1486324))))

(assert (=> b!2318685 (= res!990582 (not (isEmpty!15774 (left!20982 lt!859876))))))

(declare-fun b!2318686 () Bool)

(declare-fun res!990578 () Bool)

(assert (=> b!2318686 (=> (not res!990578) (not e!1486324))))

(assert (=> b!2318686 (= res!990578 (<= (- (height!1320 (left!20982 lt!859876)) (height!1320 (right!21312 lt!859876))) 1))))

(declare-fun b!2318687 () Bool)

(assert (=> b!2318687 (= e!1486324 (not (isEmpty!15774 (right!21312 lt!859876))))))

(declare-fun b!2318688 () Bool)

(declare-fun res!990579 () Bool)

(assert (=> b!2318688 (=> (not res!990579) (not e!1486324))))

(assert (=> b!2318688 (= res!990579 (isBalanced!2751 (left!20982 lt!859876)))))

(assert (= (and d!685344 (not res!990583)) b!2318684))

(assert (= (and b!2318684 res!990580) b!2318686))

(assert (= (and b!2318686 res!990578) b!2318688))

(assert (= (and b!2318688 res!990579) b!2318683))

(assert (= (and b!2318683 res!990581) b!2318685))

(assert (= (and b!2318685 res!990582) b!2318687))

(declare-fun m!2746611 () Bool)

(assert (=> b!2318685 m!2746611))

(declare-fun m!2746613 () Bool)

(assert (=> b!2318688 m!2746613))

(declare-fun m!2746615 () Bool)

(assert (=> b!2318687 m!2746615))

(declare-fun m!2746617 () Bool)

(assert (=> b!2318686 m!2746617))

(declare-fun m!2746619 () Bool)

(assert (=> b!2318686 m!2746619))

(declare-fun m!2746621 () Bool)

(assert (=> b!2318683 m!2746621))

(assert (=> b!2318684 m!2746617))

(assert (=> b!2318684 m!2746619))

(assert (=> d!685240 d!685344))

(declare-fun d!685346 () Bool)

(declare-fun lt!859978 () Int)

(assert (=> d!685346 (= lt!859978 (size!21891 (list!10984 lt!859819)))))

(assert (=> d!685346 (= lt!859978 (choose!13582 lt!859819))))

(assert (=> d!685346 (= (size!21892 lt!859819) lt!859978)))

(declare-fun bs!458917 () Bool)

(assert (= bs!458917 d!685346))

(assert (=> bs!458917 m!2746001))

(assert (=> bs!458917 m!2746001))

(declare-fun m!2746623 () Bool)

(assert (=> bs!458917 m!2746623))

(declare-fun m!2746625 () Bool)

(assert (=> bs!458917 m!2746625))

(assert (=> d!685240 d!685346))

(declare-fun b!2318689 () Bool)

(declare-fun res!990587 () Bool)

(declare-fun e!1486326 () Bool)

(assert (=> b!2318689 (=> (not res!990587) (not e!1486326))))

(assert (=> b!2318689 (= res!990587 (isBalanced!2751 (right!21312 (++!6808 acc!252 lt!859807))))))

(declare-fun d!685348 () Bool)

(declare-fun res!990589 () Bool)

(declare-fun e!1486325 () Bool)

(assert (=> d!685348 (=> res!990589 e!1486325)))

(assert (=> d!685348 (= res!990589 (not ((_ is Node!9057) (++!6808 acc!252 lt!859807))))))

(assert (=> d!685348 (= (isBalanced!2751 (++!6808 acc!252 lt!859807)) e!1486325)))

(declare-fun b!2318690 () Bool)

(assert (=> b!2318690 (= e!1486325 e!1486326)))

(declare-fun res!990586 () Bool)

(assert (=> b!2318690 (=> (not res!990586) (not e!1486326))))

(assert (=> b!2318690 (= res!990586 (<= (- 1) (- (height!1320 (left!20982 (++!6808 acc!252 lt!859807))) (height!1320 (right!21312 (++!6808 acc!252 lt!859807))))))))

(declare-fun b!2318691 () Bool)

(declare-fun res!990588 () Bool)

(assert (=> b!2318691 (=> (not res!990588) (not e!1486326))))

(assert (=> b!2318691 (= res!990588 (not (isEmpty!15774 (left!20982 (++!6808 acc!252 lt!859807)))))))

(declare-fun b!2318692 () Bool)

(declare-fun res!990584 () Bool)

(assert (=> b!2318692 (=> (not res!990584) (not e!1486326))))

(assert (=> b!2318692 (= res!990584 (<= (- (height!1320 (left!20982 (++!6808 acc!252 lt!859807))) (height!1320 (right!21312 (++!6808 acc!252 lt!859807)))) 1))))

(declare-fun b!2318693 () Bool)

(assert (=> b!2318693 (= e!1486326 (not (isEmpty!15774 (right!21312 (++!6808 acc!252 lt!859807)))))))

(declare-fun b!2318694 () Bool)

(declare-fun res!990585 () Bool)

(assert (=> b!2318694 (=> (not res!990585) (not e!1486326))))

(assert (=> b!2318694 (= res!990585 (isBalanced!2751 (left!20982 (++!6808 acc!252 lt!859807))))))

(assert (= (and d!685348 (not res!990589)) b!2318690))

(assert (= (and b!2318690 res!990586) b!2318692))

(assert (= (and b!2318692 res!990584) b!2318694))

(assert (= (and b!2318694 res!990585) b!2318689))

(assert (= (and b!2318689 res!990587) b!2318691))

(assert (= (and b!2318691 res!990588) b!2318693))

(declare-fun m!2746627 () Bool)

(assert (=> b!2318691 m!2746627))

(declare-fun m!2746629 () Bool)

(assert (=> b!2318694 m!2746629))

(declare-fun m!2746631 () Bool)

(assert (=> b!2318693 m!2746631))

(declare-fun m!2746633 () Bool)

(assert (=> b!2318692 m!2746633))

(declare-fun m!2746635 () Bool)

(assert (=> b!2318692 m!2746635))

(declare-fun m!2746637 () Bool)

(assert (=> b!2318689 m!2746637))

(assert (=> b!2318690 m!2746633))

(assert (=> b!2318690 m!2746635))

(assert (=> d!685240 d!685348))

(declare-fun d!685350 () Bool)

(assert (=> d!685350 (= (height!1320 (ite c!367605 (right!21312 acc!252) lt!859938)) (ite ((_ is Empty!9057) (ite c!367605 (right!21312 acc!252) lt!859938)) 0 (ite ((_ is Leaf!13295) (ite c!367605 (right!21312 acc!252) lt!859938)) 1 (cheight!9268 (ite c!367605 (right!21312 acc!252) lt!859938)))))))

(assert (=> bm!138177 d!685350))

(assert (=> b!2318241 d!685338))

(assert (=> b!2318241 d!685340))

(declare-fun d!685352 () Bool)

(assert (=> d!685352 (= (height!1320 lt!859807) (ite ((_ is Empty!9057) lt!859807) 0 (ite ((_ is Leaf!13295) lt!859807) 1 (cheight!9268 lt!859807))))))

(assert (=> b!2318486 d!685352))

(declare-fun d!685354 () Bool)

(assert (=> d!685354 (= (height!1320 acc!252) (ite ((_ is Empty!9057) acc!252) 0 (ite ((_ is Leaf!13295) acc!252) 1 (cheight!9268 acc!252))))))

(assert (=> b!2318486 d!685354))

(declare-fun b!2318705 () Bool)

(declare-fun e!1486332 () Bool)

(declare-fun lt!859980 () List!27750)

(assert (=> b!2318705 (= e!1486332 (or (not (= (slice!686 lt!859809 512 (size!21891 lt!859809)) Nil!27652)) (= lt!859980 (t!207382 (slice!686 lt!859809 0 512)))))))

(declare-fun b!2318704 () Bool)

(declare-fun res!990591 () Bool)

(assert (=> b!2318704 (=> (not res!990591) (not e!1486332))))

(assert (=> b!2318704 (= res!990591 (= (size!21891 lt!859980) (+ (size!21891 (t!207382 (slice!686 lt!859809 0 512))) (size!21891 (slice!686 lt!859809 512 (size!21891 lt!859809))))))))

(declare-fun b!2318702 () Bool)

(declare-fun e!1486331 () List!27750)

(assert (=> b!2318702 (= e!1486331 (slice!686 lt!859809 512 (size!21891 lt!859809)))))

(declare-fun b!2318703 () Bool)

(assert (=> b!2318703 (= e!1486331 (Cons!27652 (h!33053 (t!207382 (slice!686 lt!859809 0 512))) (++!6807 (t!207382 (t!207382 (slice!686 lt!859809 0 512))) (slice!686 lt!859809 512 (size!21891 lt!859809)))))))

(declare-fun d!685356 () Bool)

(assert (=> d!685356 e!1486332))

(declare-fun res!990592 () Bool)

(assert (=> d!685356 (=> (not res!990592) (not e!1486332))))

(assert (=> d!685356 (= res!990592 (= (content!3736 lt!859980) ((_ map or) (content!3736 (t!207382 (slice!686 lt!859809 0 512))) (content!3736 (slice!686 lt!859809 512 (size!21891 lt!859809))))))))

(assert (=> d!685356 (= lt!859980 e!1486331)))

(declare-fun c!367667 () Bool)

(assert (=> d!685356 (= c!367667 ((_ is Nil!27652) (t!207382 (slice!686 lt!859809 0 512))))))

(assert (=> d!685356 (= (++!6807 (t!207382 (slice!686 lt!859809 0 512)) (slice!686 lt!859809 512 (size!21891 lt!859809))) lt!859980)))

(assert (= (and d!685356 c!367667) b!2318702))

(assert (= (and d!685356 (not c!367667)) b!2318703))

(assert (= (and d!685356 res!990592) b!2318704))

(assert (= (and b!2318704 res!990591) b!2318705))

(declare-fun m!2746649 () Bool)

(assert (=> b!2318704 m!2746649))

(declare-fun m!2746651 () Bool)

(assert (=> b!2318704 m!2746651))

(assert (=> b!2318704 m!2746031))

(assert (=> b!2318704 m!2746435))

(assert (=> b!2318703 m!2746031))

(declare-fun m!2746653 () Bool)

(assert (=> b!2318703 m!2746653))

(declare-fun m!2746655 () Bool)

(assert (=> d!685356 m!2746655))

(declare-fun m!2746657 () Bool)

(assert (=> d!685356 m!2746657))

(assert (=> d!685356 m!2746031))

(assert (=> d!685356 m!2746443))

(assert (=> b!2318551 d!685356))

(declare-fun e!1486334 () Bool)

(declare-fun b!2318709 () Bool)

(declare-fun lt!859981 () List!27750)

(assert (=> b!2318709 (= e!1486334 (or (not (= lt!859811 Nil!27652)) (= lt!859981 (t!207382 lt!859808))))))

(declare-fun b!2318708 () Bool)

(declare-fun res!990593 () Bool)

(assert (=> b!2318708 (=> (not res!990593) (not e!1486334))))

(assert (=> b!2318708 (= res!990593 (= (size!21891 lt!859981) (+ (size!21891 (t!207382 lt!859808)) (size!21891 lt!859811))))))

(declare-fun b!2318706 () Bool)

(declare-fun e!1486333 () List!27750)

(assert (=> b!2318706 (= e!1486333 lt!859811)))

(declare-fun b!2318707 () Bool)

(assert (=> b!2318707 (= e!1486333 (Cons!27652 (h!33053 (t!207382 lt!859808)) (++!6807 (t!207382 (t!207382 lt!859808)) lt!859811)))))

(declare-fun d!685360 () Bool)

(assert (=> d!685360 e!1486334))

(declare-fun res!990594 () Bool)

(assert (=> d!685360 (=> (not res!990594) (not e!1486334))))

(assert (=> d!685360 (= res!990594 (= (content!3736 lt!859981) ((_ map or) (content!3736 (t!207382 lt!859808)) (content!3736 lt!859811))))))

(assert (=> d!685360 (= lt!859981 e!1486333)))

(declare-fun c!367668 () Bool)

(assert (=> d!685360 (= c!367668 ((_ is Nil!27652) (t!207382 lt!859808)))))

(assert (=> d!685360 (= (++!6807 (t!207382 lt!859808) lt!859811) lt!859981)))

(assert (= (and d!685360 c!367668) b!2318706))

(assert (= (and d!685360 (not c!367668)) b!2318707))

(assert (= (and d!685360 res!990594) b!2318708))

(assert (= (and b!2318708 res!990593) b!2318709))

(declare-fun m!2746659 () Bool)

(assert (=> b!2318708 m!2746659))

(declare-fun m!2746661 () Bool)

(assert (=> b!2318708 m!2746661))

(assert (=> b!2318708 m!2746351))

(declare-fun m!2746663 () Bool)

(assert (=> b!2318707 m!2746663))

(declare-fun m!2746665 () Bool)

(assert (=> d!685360 m!2746665))

(declare-fun m!2746667 () Bool)

(assert (=> d!685360 m!2746667))

(assert (=> d!685360 m!2746359))

(assert (=> b!2318501 d!685360))

(declare-fun b!2318710 () Bool)

(declare-fun e!1486338 () Conc!9057)

(declare-fun e!1486336 () Conc!9057)

(assert (=> b!2318710 (= e!1486338 e!1486336)))

(declare-fun lt!859982 () Conc!9057)

(declare-fun call!138223 () Conc!9057)

(assert (=> b!2318710 (= lt!859982 call!138223)))

(declare-fun c!367675 () Bool)

(declare-fun call!138219 () Int)

(declare-fun call!138226 () Int)

(assert (=> b!2318710 (= c!367675 (= call!138219 (- call!138226 3)))))

(declare-fun bm!138208 () Bool)

(declare-fun call!138214 () Conc!9057)

(declare-fun call!138215 () Conc!9057)

(declare-fun c!367669 () Bool)

(declare-fun lt!859985 () Conc!9057)

(declare-fun c!367670 () Bool)

(declare-fun call!138213 () Conc!9057)

(assert (=> bm!138208 (= call!138213 (<>!210 (ite c!367669 (ite c!367675 (left!20982 (++!6808 acc!252 lt!859807)) call!138215) (ite c!367670 call!138214 lt!859985)) (ite c!367669 (ite c!367675 call!138215 lt!859982) (ite c!367670 (right!21312 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)) call!138214))))))

(declare-fun b!2318711 () Bool)

(declare-fun res!990598 () Bool)

(declare-fun e!1486341 () Bool)

(assert (=> b!2318711 (=> (not res!990598) (not e!1486341))))

(declare-fun lt!859983 () Conc!9057)

(assert (=> b!2318711 (= res!990598 (isBalanced!2751 lt!859983))))

(declare-fun call!138221 () Int)

(declare-fun bm!138209 () Bool)

(assert (=> bm!138209 (= call!138221 (height!1320 (ite c!367669 (right!21312 (++!6808 acc!252 lt!859807)) lt!859985)))))

(declare-fun c!367672 () Bool)

(declare-fun call!138217 () Conc!9057)

(declare-fun call!138228 () Conc!9057)

(declare-fun c!367676 () Bool)

(declare-fun c!367671 () Bool)

(declare-fun bm!138210 () Bool)

(assert (=> bm!138210 (= call!138217 (<>!210 (ite c!367671 (++!6808 acc!252 lt!859807) (ite c!367669 (ite c!367672 (left!20982 (++!6808 acc!252 lt!859807)) (ite c!367675 (left!20982 (right!21312 (++!6808 acc!252 lt!859807))) (left!20982 (++!6808 acc!252 lt!859807)))) (ite c!367676 call!138228 (ite c!367670 lt!859985 (right!21312 (left!20982 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878))))))) (ite c!367671 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878) (ite c!367669 (ite c!367672 call!138223 (ite c!367675 lt!859982 (left!20982 (right!21312 (++!6808 acc!252 lt!859807))))) (ite c!367676 (right!21312 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)) (ite c!367670 (right!21312 (left!20982 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878))) (right!21312 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878))))))))))

(declare-fun bm!138212 () Bool)

(assert (=> bm!138212 (= call!138219 (height!1320 (ite c!367669 lt!859982 (right!21312 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)))))))

(declare-fun bm!138213 () Bool)

(assert (=> bm!138213 (= call!138226 (height!1320 (ite c!367669 (++!6808 acc!252 lt!859807) (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878))))))

(declare-fun bm!138214 () Bool)

(declare-fun call!138224 () Conc!9057)

(declare-fun call!138218 () Conc!9057)

(assert (=> bm!138214 (= call!138224 call!138218)))

(declare-fun b!2318712 () Bool)

(declare-fun res!990597 () Bool)

(assert (=> b!2318712 (=> (not res!990597) (not e!1486341))))

(assert (=> b!2318712 (= res!990597 (<= (height!1320 lt!859983) (+ (max!0 (height!1320 (++!6808 acc!252 lt!859807)) (height!1320 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878))) 1)))))

(declare-fun bm!138215 () Bool)

(declare-fun call!138225 () Conc!9057)

(assert (=> bm!138215 (= call!138225 call!138213)))

(declare-fun b!2318713 () Bool)

(declare-fun e!1486344 () Conc!9057)

(assert (=> b!2318713 (= e!1486344 call!138225)))

(declare-fun b!2318714 () Bool)

(declare-fun call!138222 () Int)

(assert (=> b!2318714 (= c!367672 (>= call!138222 call!138221))))

(declare-fun e!1486343 () Conc!9057)

(assert (=> b!2318714 (= e!1486343 e!1486338)))

(declare-fun b!2318715 () Bool)

(declare-fun e!1486335 () Conc!9057)

(assert (=> b!2318715 (= e!1486335 call!138224)))

(declare-fun b!2318716 () Bool)

(assert (=> b!2318716 (= c!367676 (>= call!138219 call!138222))))

(assert (=> b!2318716 (= e!1486343 e!1486335)))

(declare-fun bm!138216 () Bool)

(declare-fun call!138220 () Conc!9057)

(assert (=> bm!138216 (= call!138215 call!138220)))

(declare-fun b!2318717 () Bool)

(declare-fun e!1486337 () Conc!9057)

(assert (=> b!2318717 (= e!1486337 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878))))

(declare-fun b!2318718 () Bool)

(declare-fun e!1486339 () Conc!9057)

(assert (=> b!2318718 (= e!1486339 call!138217)))

(declare-fun bm!138217 () Bool)

(declare-fun call!138216 () Conc!9057)

(assert (=> bm!138217 (= call!138228 call!138216)))

(declare-fun b!2318719 () Bool)

(declare-fun call!138227 () Conc!9057)

(assert (=> b!2318719 (= e!1486336 call!138227)))

(declare-fun b!2318720 () Bool)

(assert (=> b!2318720 (= e!1486339 e!1486343)))

(declare-fun lt!859984 () Int)

(assert (=> b!2318720 (= c!367669 (< lt!859984 (- 1)))))

(declare-fun b!2318721 () Bool)

(assert (=> b!2318721 (= e!1486335 e!1486344)))

(assert (=> b!2318721 (= lt!859985 call!138228)))

(assert (=> b!2318721 (= c!367670 (= call!138221 (- call!138226 3)))))

(declare-fun b!2318722 () Bool)

(declare-fun e!1486340 () Conc!9057)

(assert (=> b!2318722 (= e!1486337 e!1486340)))

(declare-fun c!367673 () Bool)

(assert (=> b!2318722 (= c!367673 (= (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878) Empty!9057))))

(declare-fun bm!138218 () Bool)

(assert (=> bm!138218 (= call!138222 (height!1320 (ite c!367669 (left!20982 (++!6808 acc!252 lt!859807)) (left!20982 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)))))))

(declare-fun bm!138219 () Bool)

(assert (=> bm!138219 (= call!138216 (++!6808 (ite c!367669 (ite c!367672 (right!21312 (++!6808 acc!252 lt!859807)) (right!21312 (right!21312 (++!6808 acc!252 lt!859807)))) (++!6808 acc!252 lt!859807)) (ite c!367669 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878) (ite c!367676 (left!20982 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)) (left!20982 (left!20982 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)))))))))

(declare-fun b!2318723 () Bool)

(declare-fun e!1486342 () Bool)

(assert (=> b!2318723 (= e!1486342 (isBalanced!2751 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)))))

(declare-fun b!2318724 () Bool)

(assert (=> b!2318724 (= c!367671 (and (<= (- 1) lt!859984) (<= lt!859984 1)))))

(assert (=> b!2318724 (= lt!859984 (- (height!1320 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)) (height!1320 (++!6808 acc!252 lt!859807))))))

(assert (=> b!2318724 (= e!1486340 e!1486339)))

(declare-fun b!2318725 () Bool)

(assert (=> b!2318725 (= e!1486341 (= (list!10985 lt!859983) (++!6807 (list!10985 (++!6808 acc!252 lt!859807)) (list!10985 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)))))))

(declare-fun bm!138220 () Bool)

(assert (=> bm!138220 (= call!138214 call!138224)))

(declare-fun bm!138221 () Bool)

(assert (=> bm!138221 (= call!138218 call!138217)))

(declare-fun b!2318726 () Bool)

(declare-fun res!990596 () Bool)

(assert (=> b!2318726 (=> (not res!990596) (not e!1486341))))

(assert (=> b!2318726 (= res!990596 (>= (height!1320 lt!859983) (max!0 (height!1320 (++!6808 acc!252 lt!859807)) (height!1320 (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)))))))

(declare-fun b!2318727 () Bool)

(assert (=> b!2318727 (= e!1486338 call!138220)))

(declare-fun b!2318728 () Bool)

(assert (=> b!2318728 (= e!1486340 (++!6808 acc!252 lt!859807))))

(declare-fun b!2318729 () Bool)

(assert (=> b!2318729 (= e!1486344 call!138225)))

(declare-fun bm!138222 () Bool)

(assert (=> bm!138222 (= call!138227 call!138213)))

(declare-fun d!685362 () Bool)

(assert (=> d!685362 e!1486341))

(declare-fun res!990595 () Bool)

(assert (=> d!685362 (=> (not res!990595) (not e!1486341))))

(assert (=> d!685362 (= res!990595 (appendAssocInst!604 (++!6808 acc!252 lt!859807) (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)))))

(assert (=> d!685362 (= lt!859983 e!1486337)))

(declare-fun c!367674 () Bool)

(assert (=> d!685362 (= c!367674 (= (++!6808 acc!252 lt!859807) Empty!9057))))

(assert (=> d!685362 e!1486342))

(declare-fun res!990599 () Bool)

(assert (=> d!685362 (=> (not res!990599) (not e!1486342))))

(assert (=> d!685362 (= res!990599 (isBalanced!2751 (++!6808 acc!252 lt!859807)))))

(assert (=> d!685362 (= (++!6808 (++!6808 acc!252 lt!859807) (ite c!367574 (Leaf!13295 lt!859819 call!138105) lt!859878)) lt!859983)))

(declare-fun bm!138211 () Bool)

(assert (=> bm!138211 (= call!138220 call!138218)))

(declare-fun bm!138223 () Bool)

(assert (=> bm!138223 (= call!138223 call!138216)))

(declare-fun b!2318730 () Bool)

(assert (=> b!2318730 (= e!1486336 call!138227)))

(assert (= (and d!685362 res!990599) b!2318723))

(assert (= (and d!685362 c!367674) b!2318717))

(assert (= (and d!685362 (not c!367674)) b!2318722))

(assert (= (and b!2318722 c!367673) b!2318728))

(assert (= (and b!2318722 (not c!367673)) b!2318724))

(assert (= (and b!2318724 c!367671) b!2318718))

(assert (= (and b!2318724 (not c!367671)) b!2318720))

(assert (= (and b!2318720 c!367669) b!2318714))

(assert (= (and b!2318720 (not c!367669)) b!2318716))

(assert (= (and b!2318714 c!367672) b!2318727))

(assert (= (and b!2318714 (not c!367672)) b!2318710))

(assert (= (and b!2318710 c!367675) b!2318719))

(assert (= (and b!2318710 (not c!367675)) b!2318730))

(assert (= (or b!2318719 b!2318730) bm!138216))

(assert (= (or b!2318719 b!2318730) bm!138222))

(assert (= (or b!2318727 b!2318710) bm!138223))

(assert (= (or b!2318727 bm!138216) bm!138211))

(assert (= (and b!2318716 c!367676) b!2318715))

(assert (= (and b!2318716 (not c!367676)) b!2318721))

(assert (= (and b!2318721 c!367670) b!2318729))

(assert (= (and b!2318721 (not c!367670)) b!2318713))

(assert (= (or b!2318729 b!2318713) bm!138220))

(assert (= (or b!2318729 b!2318713) bm!138215))

(assert (= (or b!2318715 b!2318721) bm!138217))

(assert (= (or b!2318715 bm!138220) bm!138214))

(assert (= (or bm!138211 bm!138214) bm!138221))

(assert (= (or b!2318710 b!2318721) bm!138213))

(assert (= (or bm!138222 bm!138215) bm!138208))

(assert (= (or b!2318714 b!2318716) bm!138218))

(assert (= (or b!2318714 b!2318721) bm!138209))

(assert (= (or b!2318710 b!2318716) bm!138212))

(assert (= (or bm!138223 bm!138217) bm!138219))

(assert (= (or b!2318718 bm!138221) bm!138210))

(assert (= (and d!685362 res!990595) b!2318711))

(assert (= (and b!2318711 res!990598) b!2318712))

(assert (= (and b!2318712 res!990597) b!2318726))

(assert (= (and b!2318726 res!990596) b!2318725))

(declare-fun m!2746669 () Bool)

(assert (=> bm!138212 m!2746669))

(declare-fun m!2746671 () Bool)

(assert (=> b!2318723 m!2746671))

(declare-fun m!2746673 () Bool)

(assert (=> b!2318711 m!2746673))

(declare-fun m!2746675 () Bool)

(assert (=> b!2318726 m!2746675))

(assert (=> b!2318726 m!2746009))

(declare-fun m!2746677 () Bool)

(assert (=> b!2318726 m!2746677))

(declare-fun m!2746679 () Bool)

(assert (=> b!2318726 m!2746679))

(assert (=> b!2318726 m!2746677))

(assert (=> b!2318726 m!2746679))

(declare-fun m!2746681 () Bool)

(assert (=> b!2318726 m!2746681))

(declare-fun m!2746683 () Bool)

(assert (=> bm!138210 m!2746683))

(declare-fun m!2746685 () Bool)

(assert (=> b!2318725 m!2746685))

(assert (=> b!2318725 m!2746009))

(assert (=> b!2318725 m!2746197))

(declare-fun m!2746687 () Bool)

(assert (=> b!2318725 m!2746687))

(assert (=> b!2318725 m!2746197))

(assert (=> b!2318725 m!2746687))

(declare-fun m!2746689 () Bool)

(assert (=> b!2318725 m!2746689))

(declare-fun m!2746691 () Bool)

(assert (=> bm!138208 m!2746691))

(assert (=> b!2318724 m!2746679))

(assert (=> b!2318724 m!2746009))

(assert (=> b!2318724 m!2746677))

(declare-fun m!2746693 () Bool)

(assert (=> bm!138209 m!2746693))

(declare-fun m!2746695 () Bool)

(assert (=> bm!138219 m!2746695))

(declare-fun m!2746697 () Bool)

(assert (=> bm!138218 m!2746697))

(assert (=> d!685362 m!2746009))

(declare-fun m!2746699 () Bool)

(assert (=> d!685362 m!2746699))

(assert (=> d!685362 m!2746009))

(assert (=> d!685362 m!2746187))

(assert (=> b!2318712 m!2746675))

(assert (=> b!2318712 m!2746009))

(assert (=> b!2318712 m!2746677))

(assert (=> b!2318712 m!2746679))

(assert (=> b!2318712 m!2746677))

(assert (=> b!2318712 m!2746679))

(assert (=> b!2318712 m!2746681))

(declare-fun m!2746701 () Bool)

(assert (=> bm!138213 m!2746701))

(assert (=> bm!138101 d!685362))

(declare-fun b!2318757 () Bool)

(declare-fun e!1486359 () Conc!9057)

(assert (=> b!2318757 (= e!1486359 (ite c!367605 (ite c!367611 call!138183 lt!859935) (ite c!367606 (right!21312 lt!859807) call!138182)))))

(declare-fun e!1486360 () Conc!9057)

(declare-fun b!2318759 () Bool)

(assert (=> b!2318759 (= e!1486360 (ite c!367605 (ite c!367611 (left!20982 acc!252) call!138183) (ite c!367606 call!138182 lt!859938)))))

(declare-fun b!2318760 () Bool)

(assert (=> b!2318760 (= e!1486360 (Node!9057 (ite c!367605 (ite c!367611 (left!20982 acc!252) call!138183) (ite c!367606 call!138182 lt!859938)) (ite c!367605 (ite c!367611 call!138183 lt!859935) (ite c!367606 (right!21312 lt!859807) call!138182)) (+ (size!21893 (ite c!367605 (ite c!367611 (left!20982 acc!252) call!138183) (ite c!367606 call!138182 lt!859938))) (size!21893 (ite c!367605 (ite c!367611 call!138183 lt!859935) (ite c!367606 (right!21312 lt!859807) call!138182)))) (+ (max!0 (height!1320 (ite c!367605 (ite c!367611 (left!20982 acc!252) call!138183) (ite c!367606 call!138182 lt!859938))) (height!1320 (ite c!367605 (ite c!367611 call!138183 lt!859935) (ite c!367606 (right!21312 lt!859807) call!138182)))) 1)))))

(declare-fun b!2318758 () Bool)

(assert (=> b!2318758 (= e!1486359 e!1486360)))

(declare-fun c!367689 () Bool)

(assert (=> b!2318758 (= c!367689 (= (ite c!367605 (ite c!367611 call!138183 lt!859935) (ite c!367606 (right!21312 lt!859807) call!138182)) Empty!9057))))

(declare-fun lt!859990 () Conc!9057)

(declare-fun d!685364 () Bool)

(assert (=> d!685364 (= (list!10985 lt!859990) (++!6807 (list!10985 (ite c!367605 (ite c!367611 (left!20982 acc!252) call!138183) (ite c!367606 call!138182 lt!859938))) (list!10985 (ite c!367605 (ite c!367611 call!138183 lt!859935) (ite c!367606 (right!21312 lt!859807) call!138182)))))))

(assert (=> d!685364 (= lt!859990 e!1486359)))

(declare-fun c!367690 () Bool)

(assert (=> d!685364 (= c!367690 (= (ite c!367605 (ite c!367611 (left!20982 acc!252) call!138183) (ite c!367606 call!138182 lt!859938)) Empty!9057))))

(assert (=> d!685364 (= (<>!210 (ite c!367605 (ite c!367611 (left!20982 acc!252) call!138183) (ite c!367606 call!138182 lt!859938)) (ite c!367605 (ite c!367611 call!138183 lt!859935) (ite c!367606 (right!21312 lt!859807) call!138182))) lt!859990)))

(assert (= (and d!685364 c!367690) b!2318757))

(assert (= (and d!685364 (not c!367690)) b!2318758))

(assert (= (and b!2318758 c!367689) b!2318759))

(assert (= (and b!2318758 (not c!367689)) b!2318760))

(declare-fun m!2746703 () Bool)

(assert (=> b!2318760 m!2746703))

(declare-fun m!2746705 () Bool)

(assert (=> b!2318760 m!2746705))

(assert (=> b!2318760 m!2746705))

(declare-fun m!2746707 () Bool)

(assert (=> b!2318760 m!2746707))

(declare-fun m!2746709 () Bool)

(assert (=> b!2318760 m!2746709))

(assert (=> b!2318760 m!2746707))

(declare-fun m!2746711 () Bool)

(assert (=> b!2318760 m!2746711))

(declare-fun m!2746713 () Bool)

(assert (=> d!685364 m!2746713))

(declare-fun m!2746715 () Bool)

(assert (=> d!685364 m!2746715))

(declare-fun m!2746717 () Bool)

(assert (=> d!685364 m!2746717))

(assert (=> d!685364 m!2746715))

(assert (=> d!685364 m!2746717))

(declare-fun m!2746719 () Bool)

(assert (=> d!685364 m!2746719))

(assert (=> bm!138176 d!685364))

(declare-fun d!685366 () Bool)

(declare-fun lt!859992 () Bool)

(assert (=> d!685366 (= lt!859992 (isEmpty!15775 (list!10985 (left!20982 lt!859812))))))

(assert (=> d!685366 (= lt!859992 (= (size!21893 (left!20982 lt!859812)) 0))))

(assert (=> d!685366 (= (isEmpty!15774 (left!20982 lt!859812)) lt!859992)))

(declare-fun bs!458918 () Bool)

(assert (= bs!458918 d!685366))

(assert (=> bs!458918 m!2746155))

(assert (=> bs!458918 m!2746155))

(declare-fun m!2746721 () Bool)

(assert (=> bs!458918 m!2746721))

(declare-fun m!2746723 () Bool)

(assert (=> bs!458918 m!2746723))

(assert (=> b!2318592 d!685366))

(declare-fun d!685368 () Bool)

(assert (=> d!685368 (= (list!10984 (xs!12011 acc!252)) (innerList!9117 (xs!12011 acc!252)))))

(assert (=> b!2318301 d!685368))

(declare-fun d!685370 () Bool)

(assert (=> d!685370 (= (inv!37560 (xs!12011 (left!20982 acc!252))) (<= (size!21891 (innerList!9117 (xs!12011 (left!20982 acc!252)))) 2147483647))))

(declare-fun bs!458919 () Bool)

(assert (= bs!458919 d!685370))

(declare-fun m!2746725 () Bool)

(assert (=> bs!458919 m!2746725))

(assert (=> b!2318611 d!685370))

(declare-fun d!685372 () Bool)

(declare-fun lt!859993 () Int)

(assert (=> d!685372 (>= lt!859993 0)))

(declare-fun e!1486366 () Int)

(assert (=> d!685372 (= lt!859993 e!1486366)))

(declare-fun c!367695 () Bool)

(assert (=> d!685372 (= c!367695 ((_ is Nil!27652) lt!859958))))

(assert (=> d!685372 (= (size!21891 lt!859958) lt!859993)))

(declare-fun b!2318770 () Bool)

(assert (=> b!2318770 (= e!1486366 0)))

(declare-fun b!2318771 () Bool)

(assert (=> b!2318771 (= e!1486366 (+ 1 (size!21891 (t!207382 lt!859958))))))

(assert (= (and d!685372 c!367695) b!2318770))

(assert (= (and d!685372 (not c!367695)) b!2318771))

(declare-fun m!2746731 () Bool)

(assert (=> b!2318771 m!2746731))

(assert (=> b!2318582 d!685372))

(declare-fun d!685374 () Bool)

(declare-fun lt!859994 () Int)

(assert (=> d!685374 (>= lt!859994 0)))

(declare-fun e!1486367 () Int)

(assert (=> d!685374 (= lt!859994 e!1486367)))

(declare-fun c!367696 () Bool)

(assert (=> d!685374 (= c!367696 ((_ is Nil!27652) lt!859811))))

(assert (=> d!685374 (= (size!21891 lt!859811) lt!859994)))

(declare-fun b!2318772 () Bool)

(assert (=> b!2318772 (= e!1486367 0)))

(declare-fun b!2318773 () Bool)

(assert (=> b!2318773 (= e!1486367 (+ 1 (size!21891 (t!207382 lt!859811))))))

(assert (= (and d!685374 c!367696) b!2318772))

(assert (= (and d!685374 (not c!367696)) b!2318773))

(declare-fun m!2746737 () Bool)

(assert (=> b!2318773 m!2746737))

(assert (=> b!2318582 d!685374))

(declare-fun d!685378 () Bool)

(declare-fun lt!859996 () Int)

(assert (=> d!685378 (>= lt!859996 0)))

(declare-fun e!1486369 () Int)

(assert (=> d!685378 (= lt!859996 e!1486369)))

(declare-fun c!367698 () Bool)

(assert (=> d!685378 (= c!367698 ((_ is Nil!27652) lt!859817))))

(assert (=> d!685378 (= (size!21891 lt!859817) lt!859996)))

(declare-fun b!2318776 () Bool)

(assert (=> b!2318776 (= e!1486369 0)))

(declare-fun b!2318777 () Bool)

(assert (=> b!2318777 (= e!1486369 (+ 1 (size!21891 (t!207382 lt!859817))))))

(assert (= (and d!685378 c!367698) b!2318776))

(assert (= (and d!685378 (not c!367698)) b!2318777))

(declare-fun m!2746739 () Bool)

(assert (=> b!2318777 m!2746739))

(assert (=> b!2318582 d!685378))

(declare-fun b!2318778 () Bool)

(declare-fun res!990606 () Bool)

(declare-fun e!1486371 () Bool)

(assert (=> b!2318778 (=> (not res!990606) (not e!1486371))))

(assert (=> b!2318778 (= res!990606 (isBalanced!2751 (right!21312 (right!21312 lt!859812))))))

(declare-fun d!685380 () Bool)

(declare-fun res!990608 () Bool)

(declare-fun e!1486370 () Bool)

(assert (=> d!685380 (=> res!990608 e!1486370)))

(assert (=> d!685380 (= res!990608 (not ((_ is Node!9057) (right!21312 lt!859812))))))

(assert (=> d!685380 (= (isBalanced!2751 (right!21312 lt!859812)) e!1486370)))

(declare-fun b!2318779 () Bool)

(assert (=> b!2318779 (= e!1486370 e!1486371)))

(declare-fun res!990605 () Bool)

(assert (=> b!2318779 (=> (not res!990605) (not e!1486371))))

(assert (=> b!2318779 (= res!990605 (<= (- 1) (- (height!1320 (left!20982 (right!21312 lt!859812))) (height!1320 (right!21312 (right!21312 lt!859812))))))))

(declare-fun b!2318780 () Bool)

(declare-fun res!990607 () Bool)

(assert (=> b!2318780 (=> (not res!990607) (not e!1486371))))

(assert (=> b!2318780 (= res!990607 (not (isEmpty!15774 (left!20982 (right!21312 lt!859812)))))))

(declare-fun b!2318781 () Bool)

(declare-fun res!990603 () Bool)

(assert (=> b!2318781 (=> (not res!990603) (not e!1486371))))

(assert (=> b!2318781 (= res!990603 (<= (- (height!1320 (left!20982 (right!21312 lt!859812))) (height!1320 (right!21312 (right!21312 lt!859812)))) 1))))

(declare-fun b!2318782 () Bool)

(assert (=> b!2318782 (= e!1486371 (not (isEmpty!15774 (right!21312 (right!21312 lt!859812)))))))

(declare-fun b!2318783 () Bool)

(declare-fun res!990604 () Bool)

(assert (=> b!2318783 (=> (not res!990604) (not e!1486371))))

(assert (=> b!2318783 (= res!990604 (isBalanced!2751 (left!20982 (right!21312 lt!859812))))))

(assert (= (and d!685380 (not res!990608)) b!2318779))

(assert (= (and b!2318779 res!990605) b!2318781))

(assert (= (and b!2318781 res!990603) b!2318783))

(assert (= (and b!2318783 res!990604) b!2318778))

(assert (= (and b!2318778 res!990606) b!2318780))

(assert (= (and b!2318780 res!990607) b!2318782))

(declare-fun m!2746743 () Bool)

(assert (=> b!2318780 m!2746743))

(declare-fun m!2746745 () Bool)

(assert (=> b!2318783 m!2746745))

(declare-fun m!2746747 () Bool)

(assert (=> b!2318782 m!2746747))

(declare-fun m!2746749 () Bool)

(assert (=> b!2318781 m!2746749))

(declare-fun m!2746751 () Bool)

(assert (=> b!2318781 m!2746751))

(declare-fun m!2746753 () Bool)

(assert (=> b!2318778 m!2746753))

(assert (=> b!2318779 m!2746749))

(assert (=> b!2318779 m!2746751))

(assert (=> b!2318590 d!685380))

(assert (=> b!2318516 d!685270))

(declare-fun lt!859997 () List!27750)

(declare-fun e!1486373 () Bool)

(declare-fun b!2318787 () Bool)

(assert (=> b!2318787 (= e!1486373 (or (not (= lt!859810 Nil!27652)) (= lt!859997 (t!207382 lt!859808))))))

(declare-fun b!2318786 () Bool)

(declare-fun res!990609 () Bool)

(assert (=> b!2318786 (=> (not res!990609) (not e!1486373))))

(assert (=> b!2318786 (= res!990609 (= (size!21891 lt!859997) (+ (size!21891 (t!207382 lt!859808)) (size!21891 lt!859810))))))

(declare-fun b!2318784 () Bool)

(declare-fun e!1486372 () List!27750)

(assert (=> b!2318784 (= e!1486372 lt!859810)))

(declare-fun b!2318785 () Bool)

(assert (=> b!2318785 (= e!1486372 (Cons!27652 (h!33053 (t!207382 lt!859808)) (++!6807 (t!207382 (t!207382 lt!859808)) lt!859810)))))

(declare-fun d!685384 () Bool)

(assert (=> d!685384 e!1486373))

(declare-fun res!990610 () Bool)

(assert (=> d!685384 (=> (not res!990610) (not e!1486373))))

(assert (=> d!685384 (= res!990610 (= (content!3736 lt!859997) ((_ map or) (content!3736 (t!207382 lt!859808)) (content!3736 lt!859810))))))

(assert (=> d!685384 (= lt!859997 e!1486372)))

(declare-fun c!367699 () Bool)

(assert (=> d!685384 (= c!367699 ((_ is Nil!27652) (t!207382 lt!859808)))))

(assert (=> d!685384 (= (++!6807 (t!207382 lt!859808) lt!859810) lt!859997)))

(assert (= (and d!685384 c!367699) b!2318784))

(assert (= (and d!685384 (not c!367699)) b!2318785))

(assert (= (and d!685384 res!990610) b!2318786))

(assert (= (and b!2318786 res!990609) b!2318787))

(declare-fun m!2746755 () Bool)

(assert (=> b!2318786 m!2746755))

(assert (=> b!2318786 m!2746661))

(assert (=> b!2318786 m!2746471))

(declare-fun m!2746757 () Bool)

(assert (=> b!2318785 m!2746757))

(declare-fun m!2746759 () Bool)

(assert (=> d!685384 m!2746759))

(assert (=> d!685384 m!2746667))

(assert (=> d!685384 m!2746477))

(assert (=> b!2318577 d!685384))

(declare-fun b!2318788 () Bool)

(declare-fun e!1486376 () Conc!9057)

(assert (=> b!2318788 (= e!1486376 call!138106)))

(declare-fun e!1486375 () Bool)

(declare-fun b!2318789 () Bool)

(declare-fun lt!859999 () Conc!9057)

(assert (=> b!2318789 (= e!1486375 (= (list!10985 lt!859999) (++!6807 (list!10985 call!138106) (list!10984 (slice!687 lt!859819 512 call!138105)))))))

(declare-fun call!138232 () Int)

(declare-fun b!2318790 () Bool)

(declare-fun e!1486374 () Conc!9057)

(declare-fun call!138233 () Conc!9057)

(assert (=> b!2318790 (= e!1486374 (fromArray!29 (slice!687 (slice!687 lt!859819 512 call!138105) 512 call!138232) call!138233))))

(declare-fun lt!860001 () Conc!9057)

(assert (=> b!2318790 (= lt!860001 (Leaf!13295 (slice!687 (slice!687 lt!859819 512 call!138105) 0 512) 512))))

(declare-fun lt!860007 () Conc!9057)

(assert (=> b!2318790 (= lt!860007 (fromArray!29 (slice!687 (slice!687 lt!859819 512 call!138105) 512 call!138232) call!138233))))

(declare-fun lt!860004 () List!27750)

(assert (=> b!2318790 (= lt!860004 (list!10985 call!138106))))

(declare-fun lt!860008 () List!27750)

(assert (=> b!2318790 (= lt!860008 (list!10985 lt!860001))))

(declare-fun lt!860002 () List!27750)

(assert (=> b!2318790 (= lt!860002 (list!10984 (slice!687 (slice!687 lt!859819 512 call!138105) 512 call!138232)))))

(declare-fun lt!860009 () Unit!40510)

(assert (=> b!2318790 (= lt!860009 (lemmaConcatAssociativity!1453 lt!860004 lt!860008 lt!860002))))

(assert (=> b!2318790 (= (++!6807 (++!6807 lt!860004 lt!860008) lt!860002) (++!6807 lt!860004 (++!6807 lt!860008 lt!860002)))))

(declare-fun lt!860003 () Unit!40510)

(assert (=> b!2318790 (= lt!860003 lt!860009)))

(declare-fun lt!860006 () List!27750)

(assert (=> b!2318790 (= lt!860006 (list!10984 (slice!687 lt!859819 512 call!138105)))))

(declare-fun lt!860005 () Int)

(assert (=> b!2318790 (= lt!860005 512)))

(declare-fun lt!859998 () Unit!40510)

(assert (=> b!2318790 (= lt!859998 (sliceSplit!18 lt!860006 lt!860005))))

(assert (=> b!2318790 (= (++!6807 (slice!686 lt!860006 0 lt!860005) (slice!686 lt!860006 lt!860005 (size!21891 lt!860006))) lt!860006)))

(declare-fun lt!860000 () Unit!40510)

(assert (=> b!2318790 (= lt!860000 lt!859998)))

(declare-fun bm!138227 () Bool)

(assert (=> bm!138227 (= call!138232 (size!21892 (slice!687 lt!859819 512 call!138105)))))

(declare-fun b!2318791 () Bool)

(assert (=> b!2318791 (= e!1486376 call!138233)))

(declare-fun b!2318792 () Bool)

(assert (=> b!2318792 (= e!1486374 e!1486376)))

(declare-fun c!367700 () Bool)

(assert (=> b!2318792 (= c!367700 (= call!138232 0))))

(declare-fun bm!138228 () Bool)

(declare-fun c!367701 () Bool)

(assert (=> bm!138228 (= call!138233 (++!6808 call!138106 (ite c!367701 (Leaf!13295 (slice!687 lt!859819 512 call!138105) call!138232) lt!860001)))))

(declare-fun d!685386 () Bool)

(assert (=> d!685386 e!1486375))

(declare-fun res!990611 () Bool)

(assert (=> d!685386 (=> (not res!990611) (not e!1486375))))

(assert (=> d!685386 (= res!990611 (isBalanced!2751 lt!859999))))

(assert (=> d!685386 (= lt!859999 e!1486374)))

(assert (=> d!685386 (= c!367701 (<= (size!21892 (slice!687 lt!859819 512 call!138105)) 512))))

(assert (=> d!685386 (isBalanced!2751 call!138106)))

(assert (=> d!685386 (= (fromArray!29 (slice!687 lt!859819 512 call!138105) call!138106) lt!859999)))

(assert (= (and d!685386 c!367701) b!2318792))

(assert (= (and d!685386 (not c!367701)) b!2318790))

(assert (= (and b!2318792 c!367700) b!2318788))

(assert (= (and b!2318792 (not c!367700)) b!2318791))

(assert (= (or b!2318792 b!2318791 b!2318790) bm!138227))

(assert (= (or b!2318791 b!2318790) bm!138228))

(assert (= (and d!685386 res!990611) b!2318789))

(declare-fun m!2746761 () Bool)

(assert (=> bm!138228 m!2746761))

(declare-fun m!2746763 () Bool)

(assert (=> d!685386 m!2746763))

(assert (=> d!685386 m!2746203))

(declare-fun m!2746765 () Bool)

(assert (=> d!685386 m!2746765))

(declare-fun m!2746767 () Bool)

(assert (=> d!685386 m!2746767))

(assert (=> bm!138227 m!2746203))

(assert (=> bm!138227 m!2746765))

(declare-fun m!2746769 () Bool)

(assert (=> b!2318790 m!2746769))

(declare-fun m!2746771 () Bool)

(assert (=> b!2318790 m!2746771))

(declare-fun m!2746773 () Bool)

(assert (=> b!2318790 m!2746773))

(assert (=> b!2318790 m!2746769))

(declare-fun m!2746775 () Bool)

(assert (=> b!2318790 m!2746775))

(declare-fun m!2746777 () Bool)

(assert (=> b!2318790 m!2746777))

(declare-fun m!2746779 () Bool)

(assert (=> b!2318790 m!2746779))

(assert (=> b!2318790 m!2746203))

(declare-fun m!2746781 () Bool)

(assert (=> b!2318790 m!2746781))

(assert (=> b!2318790 m!2746203))

(assert (=> b!2318790 m!2746211))

(declare-fun m!2746783 () Bool)

(assert (=> b!2318790 m!2746783))

(declare-fun m!2746785 () Bool)

(assert (=> b!2318790 m!2746785))

(assert (=> b!2318790 m!2746771))

(declare-fun m!2746787 () Bool)

(assert (=> b!2318790 m!2746787))

(declare-fun m!2746789 () Bool)

(assert (=> b!2318790 m!2746789))

(assert (=> b!2318790 m!2746783))

(declare-fun m!2746791 () Bool)

(assert (=> b!2318790 m!2746791))

(declare-fun m!2746793 () Bool)

(assert (=> b!2318790 m!2746793))

(declare-fun m!2746795 () Bool)

(assert (=> b!2318790 m!2746795))

(assert (=> b!2318790 m!2746779))

(assert (=> b!2318790 m!2746775))

(declare-fun m!2746797 () Bool)

(assert (=> b!2318790 m!2746797))

(assert (=> b!2318790 m!2746203))

(assert (=> b!2318790 m!2746783))

(declare-fun m!2746799 () Bool)

(assert (=> b!2318790 m!2746799))

(assert (=> b!2318790 m!2746787))

(declare-fun m!2746801 () Bool)

(assert (=> b!2318789 m!2746801))

(assert (=> b!2318789 m!2746777))

(assert (=> b!2318789 m!2746203))

(assert (=> b!2318789 m!2746211))

(assert (=> b!2318789 m!2746777))

(assert (=> b!2318789 m!2746211))

(declare-fun m!2746803 () Bool)

(assert (=> b!2318789 m!2746803))

(assert (=> b!2318383 d!685386))

(declare-fun d!685392 () Bool)

(declare-fun lt!860010 () IArray!18119)

(assert (=> d!685392 (= lt!860010 (IArray!18120 (slice!686 (list!10984 lt!859819) 0 512)))))

(assert (=> d!685392 (= lt!860010 (choose!13580 lt!859819 0 512))))

(declare-fun e!1486377 () Bool)

(assert (=> d!685392 e!1486377))

(declare-fun res!990612 () Bool)

(assert (=> d!685392 (=> (not res!990612) (not e!1486377))))

(assert (=> d!685392 (= res!990612 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!685392 (= (slice!687 lt!859819 0 512) lt!860010)))

(declare-fun b!2318793 () Bool)

(assert (=> b!2318793 (= e!1486377 (<= 512 (size!21892 lt!859819)))))

(assert (= (and d!685392 res!990612) b!2318793))

(assert (=> d!685392 m!2746001))

(assert (=> d!685392 m!2746001))

(declare-fun m!2746805 () Bool)

(assert (=> d!685392 m!2746805))

(declare-fun m!2746807 () Bool)

(assert (=> d!685392 m!2746807))

(assert (=> b!2318793 m!2746185))

(assert (=> b!2318383 d!685392))

(declare-fun b!2318799 () Bool)

(declare-fun e!1486380 () List!27750)

(assert (=> b!2318799 (= e!1486380 (++!6807 (list!10985 (left!20982 lt!859878)) (list!10985 (right!21312 lt!859878))))))

(declare-fun b!2318796 () Bool)

(declare-fun e!1486379 () List!27750)

(assert (=> b!2318796 (= e!1486379 Nil!27652)))

(declare-fun d!685400 () Bool)

(declare-fun c!367703 () Bool)

(assert (=> d!685400 (= c!367703 ((_ is Empty!9057) lt!859878))))

(assert (=> d!685400 (= (list!10985 lt!859878) e!1486379)))

(declare-fun b!2318798 () Bool)

(assert (=> b!2318798 (= e!1486380 (list!10984 (xs!12011 lt!859878)))))

(declare-fun b!2318797 () Bool)

(assert (=> b!2318797 (= e!1486379 e!1486380)))

(declare-fun c!367704 () Bool)

(assert (=> b!2318797 (= c!367704 ((_ is Leaf!13295) lt!859878))))

(assert (= (and d!685400 c!367703) b!2318796))

(assert (= (and d!685400 (not c!367703)) b!2318797))

(assert (= (and b!2318797 c!367704) b!2318798))

(assert (= (and b!2318797 (not c!367704)) b!2318799))

(declare-fun m!2746811 () Bool)

(assert (=> b!2318799 m!2746811))

(declare-fun m!2746813 () Bool)

(assert (=> b!2318799 m!2746813))

(assert (=> b!2318799 m!2746811))

(assert (=> b!2318799 m!2746813))

(declare-fun m!2746815 () Bool)

(assert (=> b!2318799 m!2746815))

(declare-fun m!2746817 () Bool)

(assert (=> b!2318798 m!2746817))

(assert (=> b!2318383 d!685400))

(declare-fun lt!860012 () List!27750)

(declare-fun e!1486384 () Bool)

(declare-fun b!2318807 () Bool)

(assert (=> b!2318807 (= e!1486384 (or (not (= (slice!686 lt!859883 lt!859882 (size!21891 lt!859883)) Nil!27652)) (= lt!860012 (slice!686 lt!859883 0 lt!859882))))))

(declare-fun b!2318806 () Bool)

(declare-fun res!990613 () Bool)

(assert (=> b!2318806 (=> (not res!990613) (not e!1486384))))

(assert (=> b!2318806 (= res!990613 (= (size!21891 lt!860012) (+ (size!21891 (slice!686 lt!859883 0 lt!859882)) (size!21891 (slice!686 lt!859883 lt!859882 (size!21891 lt!859883))))))))

(declare-fun b!2318804 () Bool)

(declare-fun e!1486383 () List!27750)

(assert (=> b!2318804 (= e!1486383 (slice!686 lt!859883 lt!859882 (size!21891 lt!859883)))))

(declare-fun b!2318805 () Bool)

(assert (=> b!2318805 (= e!1486383 (Cons!27652 (h!33053 (slice!686 lt!859883 0 lt!859882)) (++!6807 (t!207382 (slice!686 lt!859883 0 lt!859882)) (slice!686 lt!859883 lt!859882 (size!21891 lt!859883)))))))

(declare-fun d!685404 () Bool)

(assert (=> d!685404 e!1486384))

(declare-fun res!990614 () Bool)

(assert (=> d!685404 (=> (not res!990614) (not e!1486384))))

(assert (=> d!685404 (= res!990614 (= (content!3736 lt!860012) ((_ map or) (content!3736 (slice!686 lt!859883 0 lt!859882)) (content!3736 (slice!686 lt!859883 lt!859882 (size!21891 lt!859883))))))))

(assert (=> d!685404 (= lt!860012 e!1486383)))

(declare-fun c!367707 () Bool)

(assert (=> d!685404 (= c!367707 ((_ is Nil!27652) (slice!686 lt!859883 0 lt!859882)))))

(assert (=> d!685404 (= (++!6807 (slice!686 lt!859883 0 lt!859882) (slice!686 lt!859883 lt!859882 (size!21891 lt!859883))) lt!860012)))

(assert (= (and d!685404 c!367707) b!2318804))

(assert (= (and d!685404 (not c!367707)) b!2318805))

(assert (= (and d!685404 res!990614) b!2318806))

(assert (= (and b!2318806 res!990613) b!2318807))

(declare-fun m!2746827 () Bool)

(assert (=> b!2318806 m!2746827))

(assert (=> b!2318806 m!2746199))

(declare-fun m!2746829 () Bool)

(assert (=> b!2318806 m!2746829))

(assert (=> b!2318806 m!2746195))

(declare-fun m!2746831 () Bool)

(assert (=> b!2318806 m!2746831))

(assert (=> b!2318805 m!2746195))

(declare-fun m!2746833 () Bool)

(assert (=> b!2318805 m!2746833))

(declare-fun m!2746835 () Bool)

(assert (=> d!685404 m!2746835))

(assert (=> d!685404 m!2746199))

(declare-fun m!2746837 () Bool)

(assert (=> d!685404 m!2746837))

(assert (=> d!685404 m!2746195))

(declare-fun m!2746841 () Bool)

(assert (=> d!685404 m!2746841))

(assert (=> b!2318383 d!685404))

(declare-fun d!685408 () Bool)

(assert (=> d!685408 (= (slice!686 lt!859883 lt!859882 (size!21891 lt!859883)) (take!481 (drop!1504 lt!859883 lt!859882) (- (size!21891 lt!859883) lt!859882)))))

(declare-fun bs!458921 () Bool)

(assert (= bs!458921 d!685408))

(declare-fun m!2746853 () Bool)

(assert (=> bs!458921 m!2746853))

(assert (=> bs!458921 m!2746853))

(declare-fun m!2746857 () Bool)

(assert (=> bs!458921 m!2746857))

(assert (=> b!2318383 d!685408))

(assert (=> b!2318383 d!685266))

(declare-fun d!685412 () Bool)

(assert (=> d!685412 (= (++!6807 (slice!686 lt!859883 0 lt!859882) (slice!686 lt!859883 lt!859882 (size!21891 lt!859883))) lt!859883)))

(declare-fun lt!860014 () Unit!40510)

(assert (=> d!685412 (= lt!860014 (choose!13583 lt!859883 lt!859882))))

(assert (=> d!685412 (= (sliceSplit!18 lt!859883 lt!859882) lt!860014)))

(declare-fun bs!458922 () Bool)

(assert (= bs!458922 d!685412))

(assert (=> bs!458922 m!2746199))

(assert (=> bs!458922 m!2746189))

(assert (=> bs!458922 m!2746195))

(declare-fun m!2746859 () Bool)

(assert (=> bs!458922 m!2746859))

(assert (=> bs!458922 m!2746189))

(assert (=> bs!458922 m!2746199))

(assert (=> bs!458922 m!2746195))

(assert (=> bs!458922 m!2746217))

(assert (=> b!2318383 d!685412))

(declare-fun b!2318815 () Bool)

(declare-fun lt!860015 () List!27750)

(declare-fun e!1486388 () Bool)

(assert (=> b!2318815 (= e!1486388 (or (not (= (++!6807 lt!859885 lt!859879) Nil!27652)) (= lt!860015 lt!859881)))))

(declare-fun b!2318814 () Bool)

(declare-fun res!990617 () Bool)

(assert (=> b!2318814 (=> (not res!990617) (not e!1486388))))

(assert (=> b!2318814 (= res!990617 (= (size!21891 lt!860015) (+ (size!21891 lt!859881) (size!21891 (++!6807 lt!859885 lt!859879)))))))

(declare-fun b!2318812 () Bool)

(declare-fun e!1486387 () List!27750)

(assert (=> b!2318812 (= e!1486387 (++!6807 lt!859885 lt!859879))))

(declare-fun b!2318813 () Bool)

(assert (=> b!2318813 (= e!1486387 (Cons!27652 (h!33053 lt!859881) (++!6807 (t!207382 lt!859881) (++!6807 lt!859885 lt!859879))))))

(declare-fun d!685414 () Bool)

(assert (=> d!685414 e!1486388))

(declare-fun res!990618 () Bool)

(assert (=> d!685414 (=> (not res!990618) (not e!1486388))))

(assert (=> d!685414 (= res!990618 (= (content!3736 lt!860015) ((_ map or) (content!3736 lt!859881) (content!3736 (++!6807 lt!859885 lt!859879)))))))

(assert (=> d!685414 (= lt!860015 e!1486387)))

(declare-fun c!367709 () Bool)

(assert (=> d!685414 (= c!367709 ((_ is Nil!27652) lt!859881))))

(assert (=> d!685414 (= (++!6807 lt!859881 (++!6807 lt!859885 lt!859879)) lt!860015)))

(assert (= (and d!685414 c!367709) b!2318812))

(assert (= (and d!685414 (not c!367709)) b!2318813))

(assert (= (and d!685414 res!990618) b!2318814))

(assert (= (and b!2318814 res!990617) b!2318815))

(declare-fun m!2746861 () Bool)

(assert (=> b!2318814 m!2746861))

(declare-fun m!2746863 () Bool)

(assert (=> b!2318814 m!2746863))

(assert (=> b!2318814 m!2746191))

(declare-fun m!2746865 () Bool)

(assert (=> b!2318814 m!2746865))

(assert (=> b!2318813 m!2746191))

(declare-fun m!2746867 () Bool)

(assert (=> b!2318813 m!2746867))

(declare-fun m!2746869 () Bool)

(assert (=> d!685414 m!2746869))

(declare-fun m!2746871 () Bool)

(assert (=> d!685414 m!2746871))

(assert (=> d!685414 m!2746191))

(declare-fun m!2746873 () Bool)

(assert (=> d!685414 m!2746873))

(assert (=> b!2318383 d!685414))

(declare-fun d!685416 () Bool)

(assert (=> d!685416 (= (slice!686 lt!859883 0 lt!859882) (take!481 (drop!1504 lt!859883 0) (- lt!859882 0)))))

(declare-fun bs!458923 () Bool)

(assert (= bs!458923 d!685416))

(declare-fun m!2746875 () Bool)

(assert (=> bs!458923 m!2746875))

(assert (=> bs!458923 m!2746875))

(declare-fun m!2746877 () Bool)

(assert (=> bs!458923 m!2746877))

(assert (=> b!2318383 d!685416))

(declare-fun d!685418 () Bool)

(declare-fun lt!860016 () Int)

(assert (=> d!685418 (>= lt!860016 0)))

(declare-fun e!1486389 () Int)

(assert (=> d!685418 (= lt!860016 e!1486389)))

(declare-fun c!367710 () Bool)

(assert (=> d!685418 (= c!367710 ((_ is Nil!27652) lt!859883))))

(assert (=> d!685418 (= (size!21891 lt!859883) lt!860016)))

(declare-fun b!2318816 () Bool)

(assert (=> b!2318816 (= e!1486389 0)))

(declare-fun b!2318817 () Bool)

(assert (=> b!2318817 (= e!1486389 (+ 1 (size!21891 (t!207382 lt!859883))))))

(assert (= (and d!685418 c!367710) b!2318816))

(assert (= (and d!685418 (not c!367710)) b!2318817))

(declare-fun m!2746879 () Bool)

(assert (=> b!2318817 m!2746879))

(assert (=> b!2318383 d!685418))

(declare-fun b!2318821 () Bool)

(declare-fun e!1486391 () Bool)

(declare-fun lt!860017 () List!27750)

(assert (=> b!2318821 (= e!1486391 (or (not (= lt!859885 Nil!27652)) (= lt!860017 lt!859881)))))

(declare-fun b!2318820 () Bool)

(declare-fun res!990619 () Bool)

(assert (=> b!2318820 (=> (not res!990619) (not e!1486391))))

(assert (=> b!2318820 (= res!990619 (= (size!21891 lt!860017) (+ (size!21891 lt!859881) (size!21891 lt!859885))))))

(declare-fun b!2318818 () Bool)

(declare-fun e!1486390 () List!27750)

(assert (=> b!2318818 (= e!1486390 lt!859885)))

(declare-fun b!2318819 () Bool)

(assert (=> b!2318819 (= e!1486390 (Cons!27652 (h!33053 lt!859881) (++!6807 (t!207382 lt!859881) lt!859885)))))

(declare-fun d!685420 () Bool)

(assert (=> d!685420 e!1486391))

(declare-fun res!990620 () Bool)

(assert (=> d!685420 (=> (not res!990620) (not e!1486391))))

(assert (=> d!685420 (= res!990620 (= (content!3736 lt!860017) ((_ map or) (content!3736 lt!859881) (content!3736 lt!859885))))))

(assert (=> d!685420 (= lt!860017 e!1486390)))

(declare-fun c!367711 () Bool)

(assert (=> d!685420 (= c!367711 ((_ is Nil!27652) lt!859881))))

(assert (=> d!685420 (= (++!6807 lt!859881 lt!859885) lt!860017)))

(assert (= (and d!685420 c!367711) b!2318818))

(assert (= (and d!685420 (not c!367711)) b!2318819))

(assert (= (and d!685420 res!990620) b!2318820))

(assert (= (and b!2318820 res!990619) b!2318821))

(declare-fun m!2746881 () Bool)

(assert (=> b!2318820 m!2746881))

(assert (=> b!2318820 m!2746863))

(declare-fun m!2746883 () Bool)

(assert (=> b!2318820 m!2746883))

(declare-fun m!2746885 () Bool)

(assert (=> b!2318819 m!2746885))

(declare-fun m!2746887 () Bool)

(assert (=> d!685420 m!2746887))

(assert (=> d!685420 m!2746871))

(declare-fun m!2746889 () Bool)

(assert (=> d!685420 m!2746889))

(assert (=> b!2318383 d!685420))

(declare-fun b!2318825 () Bool)

(declare-fun e!1486393 () List!27750)

(assert (=> b!2318825 (= e!1486393 (++!6807 (list!10985 (left!20982 (++!6808 acc!252 lt!859807))) (list!10985 (right!21312 (++!6808 acc!252 lt!859807)))))))

(declare-fun b!2318822 () Bool)

(declare-fun e!1486392 () List!27750)

(assert (=> b!2318822 (= e!1486392 Nil!27652)))

(declare-fun d!685422 () Bool)

(declare-fun c!367712 () Bool)

(assert (=> d!685422 (= c!367712 ((_ is Empty!9057) (++!6808 acc!252 lt!859807)))))

(assert (=> d!685422 (= (list!10985 (++!6808 acc!252 lt!859807)) e!1486392)))

(declare-fun b!2318824 () Bool)

(assert (=> b!2318824 (= e!1486393 (list!10984 (xs!12011 (++!6808 acc!252 lt!859807))))))

(declare-fun b!2318823 () Bool)

(assert (=> b!2318823 (= e!1486392 e!1486393)))

(declare-fun c!367713 () Bool)

(assert (=> b!2318823 (= c!367713 ((_ is Leaf!13295) (++!6808 acc!252 lt!859807)))))

(assert (= (and d!685422 c!367712) b!2318822))

(assert (= (and d!685422 (not c!367712)) b!2318823))

(assert (= (and b!2318823 c!367713) b!2318824))

(assert (= (and b!2318823 (not c!367713)) b!2318825))

(declare-fun m!2746891 () Bool)

(assert (=> b!2318825 m!2746891))

(declare-fun m!2746893 () Bool)

(assert (=> b!2318825 m!2746893))

(assert (=> b!2318825 m!2746891))

(assert (=> b!2318825 m!2746893))

(declare-fun m!2746895 () Bool)

(assert (=> b!2318825 m!2746895))

(declare-fun m!2746897 () Bool)

(assert (=> b!2318824 m!2746897))

(assert (=> b!2318383 d!685422))

(declare-fun d!685424 () Bool)

(declare-fun lt!860018 () IArray!18119)

(assert (=> d!685424 (= lt!860018 (IArray!18120 (slice!686 (list!10984 lt!859819) 512 call!138105)))))

(assert (=> d!685424 (= lt!860018 (choose!13580 lt!859819 512 call!138105))))

(declare-fun e!1486394 () Bool)

(assert (=> d!685424 e!1486394))

(declare-fun res!990621 () Bool)

(assert (=> d!685424 (=> (not res!990621) (not e!1486394))))

(assert (=> d!685424 (= res!990621 (and (<= 0 512) (<= 512 call!138105)))))

(assert (=> d!685424 (= (slice!687 lt!859819 512 call!138105) lt!860018)))

(declare-fun b!2318826 () Bool)

(assert (=> b!2318826 (= e!1486394 (<= call!138105 (size!21892 lt!859819)))))

(assert (= (and d!685424 res!990621) b!2318826))

(assert (=> d!685424 m!2746001))

(assert (=> d!685424 m!2746001))

(declare-fun m!2746899 () Bool)

(assert (=> d!685424 m!2746899))

(declare-fun m!2746901 () Bool)

(assert (=> d!685424 m!2746901))

(assert (=> b!2318826 m!2746185))

(assert (=> b!2318383 d!685424))

(declare-fun d!685426 () Bool)

(assert (=> d!685426 (= (list!10984 (slice!687 lt!859819 512 call!138105)) (innerList!9117 (slice!687 lt!859819 512 call!138105)))))

(assert (=> b!2318383 d!685426))

(declare-fun b!2318830 () Bool)

(declare-fun lt!860019 () List!27750)

(declare-fun e!1486396 () Bool)

(assert (=> b!2318830 (= e!1486396 (or (not (= lt!859879 Nil!27652)) (= lt!860019 lt!859885)))))

(declare-fun b!2318829 () Bool)

(declare-fun res!990622 () Bool)

(assert (=> b!2318829 (=> (not res!990622) (not e!1486396))))

(assert (=> b!2318829 (= res!990622 (= (size!21891 lt!860019) (+ (size!21891 lt!859885) (size!21891 lt!859879))))))

(declare-fun b!2318827 () Bool)

(declare-fun e!1486395 () List!27750)

(assert (=> b!2318827 (= e!1486395 lt!859879)))

(declare-fun b!2318828 () Bool)

(assert (=> b!2318828 (= e!1486395 (Cons!27652 (h!33053 lt!859885) (++!6807 (t!207382 lt!859885) lt!859879)))))

(declare-fun d!685428 () Bool)

(assert (=> d!685428 e!1486396))

(declare-fun res!990623 () Bool)

(assert (=> d!685428 (=> (not res!990623) (not e!1486396))))

(assert (=> d!685428 (= res!990623 (= (content!3736 lt!860019) ((_ map or) (content!3736 lt!859885) (content!3736 lt!859879))))))

(assert (=> d!685428 (= lt!860019 e!1486395)))

(declare-fun c!367714 () Bool)

(assert (=> d!685428 (= c!367714 ((_ is Nil!27652) lt!859885))))

(assert (=> d!685428 (= (++!6807 lt!859885 lt!859879) lt!860019)))

(assert (= (and d!685428 c!367714) b!2318827))

(assert (= (and d!685428 (not c!367714)) b!2318828))

(assert (= (and d!685428 res!990623) b!2318829))

(assert (= (and b!2318829 res!990622) b!2318830))

(declare-fun m!2746903 () Bool)

(assert (=> b!2318829 m!2746903))

(assert (=> b!2318829 m!2746883))

(declare-fun m!2746905 () Bool)

(assert (=> b!2318829 m!2746905))

(declare-fun m!2746907 () Bool)

(assert (=> b!2318828 m!2746907))

(declare-fun m!2746909 () Bool)

(assert (=> d!685428 m!2746909))

(assert (=> d!685428 m!2746889))

(declare-fun m!2746911 () Bool)

(assert (=> d!685428 m!2746911))

(assert (=> b!2318383 d!685428))

(declare-fun b!2318834 () Bool)

(declare-fun e!1486398 () Bool)

(declare-fun lt!860020 () List!27750)

(assert (=> b!2318834 (= e!1486398 (or (not (= lt!859879 Nil!27652)) (= lt!860020 (++!6807 lt!859881 lt!859885))))))

(declare-fun b!2318833 () Bool)

(declare-fun res!990624 () Bool)

(assert (=> b!2318833 (=> (not res!990624) (not e!1486398))))

(assert (=> b!2318833 (= res!990624 (= (size!21891 lt!860020) (+ (size!21891 (++!6807 lt!859881 lt!859885)) (size!21891 lt!859879))))))

(declare-fun b!2318831 () Bool)

(declare-fun e!1486397 () List!27750)

(assert (=> b!2318831 (= e!1486397 lt!859879)))

(declare-fun b!2318832 () Bool)

(assert (=> b!2318832 (= e!1486397 (Cons!27652 (h!33053 (++!6807 lt!859881 lt!859885)) (++!6807 (t!207382 (++!6807 lt!859881 lt!859885)) lt!859879)))))

(declare-fun d!685430 () Bool)

(assert (=> d!685430 e!1486398))

(declare-fun res!990625 () Bool)

(assert (=> d!685430 (=> (not res!990625) (not e!1486398))))

(assert (=> d!685430 (= res!990625 (= (content!3736 lt!860020) ((_ map or) (content!3736 (++!6807 lt!859881 lt!859885)) (content!3736 lt!859879))))))

(assert (=> d!685430 (= lt!860020 e!1486397)))

(declare-fun c!367715 () Bool)

(assert (=> d!685430 (= c!367715 ((_ is Nil!27652) (++!6807 lt!859881 lt!859885)))))

(assert (=> d!685430 (= (++!6807 (++!6807 lt!859881 lt!859885) lt!859879) lt!860020)))

(assert (= (and d!685430 c!367715) b!2318831))

(assert (= (and d!685430 (not c!367715)) b!2318832))

(assert (= (and d!685430 res!990625) b!2318833))

(assert (= (and b!2318833 res!990624) b!2318834))

(declare-fun m!2746913 () Bool)

(assert (=> b!2318833 m!2746913))

(assert (=> b!2318833 m!2746207))

(declare-fun m!2746915 () Bool)

(assert (=> b!2318833 m!2746915))

(assert (=> b!2318833 m!2746905))

(declare-fun m!2746917 () Bool)

(assert (=> b!2318832 m!2746917))

(declare-fun m!2746919 () Bool)

(assert (=> d!685430 m!2746919))

(assert (=> d!685430 m!2746207))

(declare-fun m!2746921 () Bool)

(assert (=> d!685430 m!2746921))

(assert (=> d!685430 m!2746911))

(assert (=> b!2318383 d!685430))

(declare-fun d!685432 () Bool)

(assert (=> d!685432 (= (++!6807 (++!6807 lt!859881 lt!859885) lt!859879) (++!6807 lt!859881 (++!6807 lt!859885 lt!859879)))))

(declare-fun lt!860021 () Unit!40510)

(assert (=> d!685432 (= lt!860021 (choose!13584 lt!859881 lt!859885 lt!859879))))

(assert (=> d!685432 (= (lemmaConcatAssociativity!1453 lt!859881 lt!859885 lt!859879) lt!860021)))

(declare-fun bs!458924 () Bool)

(assert (= bs!458924 d!685432))

(assert (=> bs!458924 m!2746207))

(declare-fun m!2746923 () Bool)

(assert (=> bs!458924 m!2746923))

(assert (=> bs!458924 m!2746207))

(assert (=> bs!458924 m!2746209))

(assert (=> bs!458924 m!2746191))

(assert (=> bs!458924 m!2746191))

(assert (=> bs!458924 m!2746193))

(assert (=> b!2318383 d!685432))

(declare-fun b!2318838 () Bool)

(declare-fun e!1486400 () Bool)

(declare-fun lt!860022 () List!27750)

(assert (=> b!2318838 (= e!1486400 (or (not (= (list!10985 (right!21312 lt!859812)) Nil!27652)) (= lt!860022 (list!10985 (left!20982 lt!859812)))))))

(declare-fun b!2318837 () Bool)

(declare-fun res!990626 () Bool)

(assert (=> b!2318837 (=> (not res!990626) (not e!1486400))))

(assert (=> b!2318837 (= res!990626 (= (size!21891 lt!860022) (+ (size!21891 (list!10985 (left!20982 lt!859812))) (size!21891 (list!10985 (right!21312 lt!859812))))))))

(declare-fun b!2318835 () Bool)

(declare-fun e!1486399 () List!27750)

(assert (=> b!2318835 (= e!1486399 (list!10985 (right!21312 lt!859812)))))

(declare-fun b!2318836 () Bool)

(assert (=> b!2318836 (= e!1486399 (Cons!27652 (h!33053 (list!10985 (left!20982 lt!859812))) (++!6807 (t!207382 (list!10985 (left!20982 lt!859812))) (list!10985 (right!21312 lt!859812)))))))

(declare-fun d!685434 () Bool)

(assert (=> d!685434 e!1486400))

(declare-fun res!990627 () Bool)

(assert (=> d!685434 (=> (not res!990627) (not e!1486400))))

(assert (=> d!685434 (= res!990627 (= (content!3736 lt!860022) ((_ map or) (content!3736 (list!10985 (left!20982 lt!859812))) (content!3736 (list!10985 (right!21312 lt!859812))))))))

(assert (=> d!685434 (= lt!860022 e!1486399)))

(declare-fun c!367716 () Bool)

(assert (=> d!685434 (= c!367716 ((_ is Nil!27652) (list!10985 (left!20982 lt!859812))))))

(assert (=> d!685434 (= (++!6807 (list!10985 (left!20982 lt!859812)) (list!10985 (right!21312 lt!859812))) lt!860022)))

(assert (= (and d!685434 c!367716) b!2318835))

(assert (= (and d!685434 (not c!367716)) b!2318836))

(assert (= (and d!685434 res!990627) b!2318837))

(assert (= (and b!2318837 res!990626) b!2318838))

(declare-fun m!2746925 () Bool)

(assert (=> b!2318837 m!2746925))

(assert (=> b!2318837 m!2746155))

(declare-fun m!2746927 () Bool)

(assert (=> b!2318837 m!2746927))

(assert (=> b!2318837 m!2746157))

(declare-fun m!2746929 () Bool)

(assert (=> b!2318837 m!2746929))

(assert (=> b!2318836 m!2746157))

(declare-fun m!2746931 () Bool)

(assert (=> b!2318836 m!2746931))

(declare-fun m!2746933 () Bool)

(assert (=> d!685434 m!2746933))

(assert (=> d!685434 m!2746155))

(declare-fun m!2746935 () Bool)

(assert (=> d!685434 m!2746935))

(assert (=> d!685434 m!2746157))

(declare-fun m!2746937 () Bool)

(assert (=> d!685434 m!2746937))

(assert (=> b!2318321 d!685434))

(declare-fun b!2318842 () Bool)

(declare-fun e!1486402 () List!27750)

(assert (=> b!2318842 (= e!1486402 (++!6807 (list!10985 (left!20982 (left!20982 lt!859812))) (list!10985 (right!21312 (left!20982 lt!859812)))))))

(declare-fun b!2318839 () Bool)

(declare-fun e!1486401 () List!27750)

(assert (=> b!2318839 (= e!1486401 Nil!27652)))

(declare-fun d!685436 () Bool)

(declare-fun c!367717 () Bool)

(assert (=> d!685436 (= c!367717 ((_ is Empty!9057) (left!20982 lt!859812)))))

(assert (=> d!685436 (= (list!10985 (left!20982 lt!859812)) e!1486401)))

(declare-fun b!2318841 () Bool)

(assert (=> b!2318841 (= e!1486402 (list!10984 (xs!12011 (left!20982 lt!859812))))))

(declare-fun b!2318840 () Bool)

(assert (=> b!2318840 (= e!1486401 e!1486402)))

(declare-fun c!367718 () Bool)

(assert (=> b!2318840 (= c!367718 ((_ is Leaf!13295) (left!20982 lt!859812)))))

(assert (= (and d!685436 c!367717) b!2318839))

(assert (= (and d!685436 (not c!367717)) b!2318840))

(assert (= (and b!2318840 c!367718) b!2318841))

(assert (= (and b!2318840 (not c!367718)) b!2318842))

(declare-fun m!2746939 () Bool)

(assert (=> b!2318842 m!2746939))

(declare-fun m!2746941 () Bool)

(assert (=> b!2318842 m!2746941))

(assert (=> b!2318842 m!2746939))

(assert (=> b!2318842 m!2746941))

(declare-fun m!2746943 () Bool)

(assert (=> b!2318842 m!2746943))

(declare-fun m!2746945 () Bool)

(assert (=> b!2318841 m!2746945))

(assert (=> b!2318321 d!685436))

(declare-fun b!2318846 () Bool)

(declare-fun e!1486404 () List!27750)

(assert (=> b!2318846 (= e!1486404 (++!6807 (list!10985 (left!20982 (right!21312 lt!859812))) (list!10985 (right!21312 (right!21312 lt!859812)))))))

(declare-fun b!2318843 () Bool)

(declare-fun e!1486403 () List!27750)

(assert (=> b!2318843 (= e!1486403 Nil!27652)))

(declare-fun d!685438 () Bool)

(declare-fun c!367719 () Bool)

(assert (=> d!685438 (= c!367719 ((_ is Empty!9057) (right!21312 lt!859812)))))

(assert (=> d!685438 (= (list!10985 (right!21312 lt!859812)) e!1486403)))

(declare-fun b!2318845 () Bool)

(assert (=> b!2318845 (= e!1486404 (list!10984 (xs!12011 (right!21312 lt!859812))))))

(declare-fun b!2318844 () Bool)

(assert (=> b!2318844 (= e!1486403 e!1486404)))

(declare-fun c!367720 () Bool)

(assert (=> b!2318844 (= c!367720 ((_ is Leaf!13295) (right!21312 lt!859812)))))

(assert (= (and d!685438 c!367719) b!2318843))

(assert (= (and d!685438 (not c!367719)) b!2318844))

(assert (= (and b!2318844 c!367720) b!2318845))

(assert (= (and b!2318844 (not c!367720)) b!2318846))

(declare-fun m!2746947 () Bool)

(assert (=> b!2318846 m!2746947))

(declare-fun m!2746949 () Bool)

(assert (=> b!2318846 m!2746949))

(assert (=> b!2318846 m!2746947))

(assert (=> b!2318846 m!2746949))

(declare-fun m!2746951 () Bool)

(assert (=> b!2318846 m!2746951))

(declare-fun m!2746953 () Bool)

(assert (=> b!2318845 m!2746953))

(assert (=> b!2318321 d!685438))

(declare-fun d!685440 () Bool)

(declare-fun c!367723 () Bool)

(assert (=> d!685440 (= c!367723 ((_ is Nil!27652) lt!859943))))

(declare-fun e!1486425 () (InoxSet T!43796))

(assert (=> d!685440 (= (content!3736 lt!859943) e!1486425)))

(declare-fun b!2318869 () Bool)

(assert (=> b!2318869 (= e!1486425 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2318870 () Bool)

(assert (=> b!2318870 (= e!1486425 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 lt!859943) true) (content!3736 (t!207382 lt!859943))))))

(assert (= (and d!685440 c!367723) b!2318869))

(assert (= (and d!685440 (not c!367723)) b!2318870))

(declare-fun m!2746955 () Bool)

(assert (=> b!2318870 m!2746955))

(declare-fun m!2746957 () Bool)

(assert (=> b!2318870 m!2746957))

(assert (=> d!685260 d!685440))

(declare-fun d!685442 () Bool)

(declare-fun c!367724 () Bool)

(assert (=> d!685442 (= c!367724 ((_ is Nil!27652) lt!859808))))

(declare-fun e!1486426 () (InoxSet T!43796))

(assert (=> d!685442 (= (content!3736 lt!859808) e!1486426)))

(declare-fun b!2318871 () Bool)

(assert (=> b!2318871 (= e!1486426 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2318872 () Bool)

(assert (=> b!2318872 (= e!1486426 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 lt!859808) true) (content!3736 (t!207382 lt!859808))))))

(assert (= (and d!685442 c!367724) b!2318871))

(assert (= (and d!685442 (not c!367724)) b!2318872))

(declare-fun m!2746959 () Bool)

(assert (=> b!2318872 m!2746959))

(assert (=> b!2318872 m!2746667))

(assert (=> d!685260 d!685442))

(declare-fun d!685444 () Bool)

(declare-fun c!367725 () Bool)

(assert (=> d!685444 (= c!367725 ((_ is Nil!27652) lt!859811))))

(declare-fun e!1486427 () (InoxSet T!43796))

(assert (=> d!685444 (= (content!3736 lt!859811) e!1486427)))

(declare-fun b!2318873 () Bool)

(assert (=> b!2318873 (= e!1486427 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2318874 () Bool)

(assert (=> b!2318874 (= e!1486427 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 lt!859811) true) (content!3736 (t!207382 lt!859811))))))

(assert (= (and d!685444 c!367725) b!2318873))

(assert (= (and d!685444 (not c!367725)) b!2318874))

(declare-fun m!2746961 () Bool)

(assert (=> b!2318874 m!2746961))

(declare-fun m!2746963 () Bool)

(assert (=> b!2318874 m!2746963))

(assert (=> d!685260 d!685444))

(declare-fun d!685446 () Bool)

(assert (=> d!685446 (= (list!10984 (xs!12011 lt!859807)) (innerList!9117 (xs!12011 lt!859807)))))

(assert (=> b!2318510 d!685446))

(declare-fun d!685448 () Bool)

(declare-fun c!367726 () Bool)

(assert (=> d!685448 (= c!367726 ((_ is Node!9057) (left!20982 (right!21312 acc!252))))))

(declare-fun e!1486428 () Bool)

(assert (=> d!685448 (= (inv!37559 (left!20982 (right!21312 acc!252))) e!1486428)))

(declare-fun b!2318875 () Bool)

(assert (=> b!2318875 (= e!1486428 (inv!37563 (left!20982 (right!21312 acc!252))))))

(declare-fun b!2318876 () Bool)

(declare-fun e!1486429 () Bool)

(assert (=> b!2318876 (= e!1486428 e!1486429)))

(declare-fun res!990646 () Bool)

(assert (=> b!2318876 (= res!990646 (not ((_ is Leaf!13295) (left!20982 (right!21312 acc!252)))))))

(assert (=> b!2318876 (=> res!990646 e!1486429)))

(declare-fun b!2318877 () Bool)

(assert (=> b!2318877 (= e!1486429 (inv!37564 (left!20982 (right!21312 acc!252))))))

(assert (= (and d!685448 c!367726) b!2318875))

(assert (= (and d!685448 (not c!367726)) b!2318876))

(assert (= (and b!2318876 (not res!990646)) b!2318877))

(declare-fun m!2746965 () Bool)

(assert (=> b!2318875 m!2746965))

(declare-fun m!2746967 () Bool)

(assert (=> b!2318877 m!2746967))

(assert (=> b!2318613 d!685448))

(declare-fun d!685450 () Bool)

(declare-fun c!367727 () Bool)

(assert (=> d!685450 (= c!367727 ((_ is Node!9057) (right!21312 (right!21312 acc!252))))))

(declare-fun e!1486430 () Bool)

(assert (=> d!685450 (= (inv!37559 (right!21312 (right!21312 acc!252))) e!1486430)))

(declare-fun b!2318878 () Bool)

(assert (=> b!2318878 (= e!1486430 (inv!37563 (right!21312 (right!21312 acc!252))))))

(declare-fun b!2318879 () Bool)

(declare-fun e!1486431 () Bool)

(assert (=> b!2318879 (= e!1486430 e!1486431)))

(declare-fun res!990647 () Bool)

(assert (=> b!2318879 (= res!990647 (not ((_ is Leaf!13295) (right!21312 (right!21312 acc!252)))))))

(assert (=> b!2318879 (=> res!990647 e!1486431)))

(declare-fun b!2318880 () Bool)

(assert (=> b!2318880 (= e!1486431 (inv!37564 (right!21312 (right!21312 acc!252))))))

(assert (= (and d!685450 c!367727) b!2318878))

(assert (= (and d!685450 (not c!367727)) b!2318879))

(assert (= (and b!2318879 (not res!990647)) b!2318880))

(declare-fun m!2746969 () Bool)

(assert (=> b!2318878 m!2746969))

(declare-fun m!2746971 () Bool)

(assert (=> b!2318880 m!2746971))

(assert (=> b!2318613 d!685450))

(declare-fun d!685452 () Bool)

(declare-fun lt!860023 () Int)

(assert (=> d!685452 (>= lt!860023 0)))

(declare-fun e!1486432 () Int)

(assert (=> d!685452 (= lt!860023 e!1486432)))

(declare-fun c!367728 () Bool)

(assert (=> d!685452 (= c!367728 ((_ is Nil!27652) lt!859835))))

(assert (=> d!685452 (= (size!21891 lt!859835) lt!860023)))

(declare-fun b!2318881 () Bool)

(assert (=> b!2318881 (= e!1486432 0)))

(declare-fun b!2318882 () Bool)

(assert (=> b!2318882 (= e!1486432 (+ 1 (size!21891 (t!207382 lt!859835))))))

(assert (= (and d!685452 c!367728) b!2318881))

(assert (= (and d!685452 (not c!367728)) b!2318882))

(declare-fun m!2746973 () Bool)

(assert (=> b!2318882 m!2746973))

(assert (=> b!2318285 d!685452))

(declare-fun d!685454 () Bool)

(declare-fun lt!860024 () Int)

(assert (=> d!685454 (>= lt!860024 0)))

(declare-fun e!1486433 () Int)

(assert (=> d!685454 (= lt!860024 e!1486433)))

(declare-fun c!367729 () Bool)

(assert (=> d!685454 (= c!367729 ((_ is Nil!27652) (++!6807 lt!859808 lt!859811)))))

(assert (=> d!685454 (= (size!21891 (++!6807 lt!859808 lt!859811)) lt!860024)))

(declare-fun b!2318883 () Bool)

(assert (=> b!2318883 (= e!1486433 0)))

(declare-fun b!2318884 () Bool)

(assert (=> b!2318884 (= e!1486433 (+ 1 (size!21891 (t!207382 (++!6807 lt!859808 lt!859811)))))))

(assert (= (and d!685454 c!367729) b!2318883))

(assert (= (and d!685454 (not c!367729)) b!2318884))

(declare-fun m!2746975 () Bool)

(assert (=> b!2318884 m!2746975))

(assert (=> b!2318285 d!685454))

(assert (=> b!2318285 d!685378))

(declare-fun b!2318888 () Bool)

(declare-fun e!1486435 () Bool)

(declare-fun lt!860025 () List!27750)

(assert (=> b!2318888 (= e!1486435 (or (not (= lt!859817 Nil!27652)) (= lt!860025 (t!207382 (++!6807 lt!859808 lt!859811)))))))

(declare-fun b!2318887 () Bool)

(declare-fun res!990648 () Bool)

(assert (=> b!2318887 (=> (not res!990648) (not e!1486435))))

(assert (=> b!2318887 (= res!990648 (= (size!21891 lt!860025) (+ (size!21891 (t!207382 (++!6807 lt!859808 lt!859811))) (size!21891 lt!859817))))))

(declare-fun b!2318885 () Bool)

(declare-fun e!1486434 () List!27750)

(assert (=> b!2318885 (= e!1486434 lt!859817)))

(declare-fun b!2318886 () Bool)

(assert (=> b!2318886 (= e!1486434 (Cons!27652 (h!33053 (t!207382 (++!6807 lt!859808 lt!859811))) (++!6807 (t!207382 (t!207382 (++!6807 lt!859808 lt!859811))) lt!859817)))))

(declare-fun d!685456 () Bool)

(assert (=> d!685456 e!1486435))

(declare-fun res!990649 () Bool)

(assert (=> d!685456 (=> (not res!990649) (not e!1486435))))

(assert (=> d!685456 (= res!990649 (= (content!3736 lt!860025) ((_ map or) (content!3736 (t!207382 (++!6807 lt!859808 lt!859811))) (content!3736 lt!859817))))))

(assert (=> d!685456 (= lt!860025 e!1486434)))

(declare-fun c!367730 () Bool)

(assert (=> d!685456 (= c!367730 ((_ is Nil!27652) (t!207382 (++!6807 lt!859808 lt!859811))))))

(assert (=> d!685456 (= (++!6807 (t!207382 (++!6807 lt!859808 lt!859811)) lt!859817) lt!860025)))

(assert (= (and d!685456 c!367730) b!2318885))

(assert (= (and d!685456 (not c!367730)) b!2318886))

(assert (= (and d!685456 res!990649) b!2318887))

(assert (= (and b!2318887 res!990648) b!2318888))

(declare-fun m!2746977 () Bool)

(assert (=> b!2318887 m!2746977))

(assert (=> b!2318887 m!2746975))

(assert (=> b!2318887 m!2746127))

(declare-fun m!2746979 () Bool)

(assert (=> b!2318886 m!2746979))

(declare-fun m!2746981 () Bool)

(assert (=> d!685456 m!2746981))

(declare-fun m!2746983 () Bool)

(assert (=> d!685456 m!2746983))

(assert (=> d!685456 m!2746135))

(assert (=> b!2318284 d!685456))

(declare-fun d!685458 () Bool)

(declare-fun lt!860026 () Int)

(assert (=> d!685458 (>= lt!860026 0)))

(declare-fun e!1486436 () Int)

(assert (=> d!685458 (= lt!860026 e!1486436)))

(declare-fun c!367731 () Bool)

(assert (=> d!685458 (= c!367731 ((_ is Nil!27652) (innerList!9117 arr!18)))))

(assert (=> d!685458 (= (size!21891 (innerList!9117 arr!18)) lt!860026)))

(declare-fun b!2318889 () Bool)

(assert (=> b!2318889 (= e!1486436 0)))

(declare-fun b!2318890 () Bool)

(assert (=> b!2318890 (= e!1486436 (+ 1 (size!21891 (t!207382 (innerList!9117 arr!18)))))))

(assert (= (and d!685458 c!367731) b!2318889))

(assert (= (and d!685458 (not c!367731)) b!2318890))

(declare-fun m!2746985 () Bool)

(assert (=> b!2318890 m!2746985))

(assert (=> d!685214 d!685458))

(declare-fun d!685460 () Bool)

(assert (=> d!685460 (= (slice!686 (list!10984 arr!18) 0 512) (take!481 (drop!1504 (list!10984 arr!18) 0) (- 512 0)))))

(declare-fun bs!458925 () Bool)

(assert (= bs!458925 d!685460))

(assert (=> bs!458925 m!2746027))

(declare-fun m!2746987 () Bool)

(assert (=> bs!458925 m!2746987))

(assert (=> bs!458925 m!2746987))

(declare-fun m!2746989 () Bool)

(assert (=> bs!458925 m!2746989))

(assert (=> d!685264 d!685460))

(assert (=> d!685264 d!685286))

(declare-fun d!685462 () Bool)

(declare-fun _$4!1097 () IArray!18119)

(assert (=> d!685462 (= _$4!1097 (IArray!18120 (slice!686 (list!10984 arr!18) 0 512)))))

(declare-fun e!1486448 () Bool)

(assert (=> d!685462 (and (inv!37560 _$4!1097) e!1486448)))

(assert (=> d!685462 (= (choose!13580 arr!18 0 512) _$4!1097)))

(declare-fun b!2318894 () Bool)

(declare-fun tp!736086 () Bool)

(assert (=> b!2318894 (= e!1486448 tp!736086)))

(assert (= d!685462 b!2318894))

(assert (=> d!685462 m!2746027))

(assert (=> d!685462 m!2746027))

(assert (=> d!685462 m!2746369))

(declare-fun m!2746991 () Bool)

(assert (=> d!685462 m!2746991))

(assert (=> d!685264 d!685462))

(declare-fun d!685464 () Bool)

(declare-fun res!990663 () Bool)

(declare-fun e!1486451 () Bool)

(assert (=> d!685464 (=> (not res!990663) (not e!1486451))))

(assert (=> d!685464 (= res!990663 (<= (size!21891 (list!10984 (xs!12011 (left!20982 acc!252)))) 512))))

(assert (=> d!685464 (= (inv!37564 (left!20982 acc!252)) e!1486451)))

(declare-fun b!2318907 () Bool)

(declare-fun res!990664 () Bool)

(assert (=> b!2318907 (=> (not res!990664) (not e!1486451))))

(assert (=> b!2318907 (= res!990664 (= (csize!18345 (left!20982 acc!252)) (size!21891 (list!10984 (xs!12011 (left!20982 acc!252))))))))

(declare-fun b!2318908 () Bool)

(assert (=> b!2318908 (= e!1486451 (and (> (csize!18345 (left!20982 acc!252)) 0) (<= (csize!18345 (left!20982 acc!252)) 512)))))

(assert (= (and d!685464 res!990663) b!2318907))

(assert (= (and b!2318907 res!990664) b!2318908))

(declare-fun m!2747017 () Bool)

(assert (=> d!685464 m!2747017))

(assert (=> d!685464 m!2747017))

(declare-fun m!2747019 () Bool)

(assert (=> d!685464 m!2747019))

(assert (=> b!2318907 m!2747017))

(assert (=> b!2318907 m!2747017))

(assert (=> b!2318907 m!2747019))

(assert (=> b!2318586 d!685464))

(declare-fun d!685468 () Bool)

(declare-fun c!367732 () Bool)

(assert (=> d!685468 (= c!367732 ((_ is Nil!27652) lt!859957))))

(declare-fun e!1486452 () (InoxSet T!43796))

(assert (=> d!685468 (= (content!3736 lt!859957) e!1486452)))

(declare-fun b!2318909 () Bool)

(assert (=> b!2318909 (= e!1486452 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2318910 () Bool)

(assert (=> b!2318910 (= e!1486452 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 lt!859957) true) (content!3736 (t!207382 lt!859957))))))

(assert (= (and d!685468 c!367732) b!2318909))

(assert (= (and d!685468 (not c!367732)) b!2318910))

(declare-fun m!2747021 () Bool)

(assert (=> b!2318910 m!2747021))

(declare-fun m!2747023 () Bool)

(assert (=> b!2318910 m!2747023))

(assert (=> d!685296 d!685468))

(assert (=> d!685296 d!685442))

(declare-fun d!685470 () Bool)

(declare-fun c!367733 () Bool)

(assert (=> d!685470 (= c!367733 ((_ is Nil!27652) lt!859810))))

(declare-fun e!1486453 () (InoxSet T!43796))

(assert (=> d!685470 (= (content!3736 lt!859810) e!1486453)))

(declare-fun b!2318911 () Bool)

(assert (=> b!2318911 (= e!1486453 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2318912 () Bool)

(assert (=> b!2318912 (= e!1486453 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 lt!859810) true) (content!3736 (t!207382 lt!859810))))))

(assert (= (and d!685470 c!367733) b!2318911))

(assert (= (and d!685470 (not c!367733)) b!2318912))

(declare-fun m!2747025 () Bool)

(assert (=> b!2318912 m!2747025))

(declare-fun m!2747027 () Bool)

(assert (=> b!2318912 m!2747027))

(assert (=> d!685296 d!685470))

(declare-fun b!2318945 () Bool)

(declare-fun e!1486471 () Int)

(assert (=> b!2318945 (= e!1486471 (size!21891 (drop!1504 lt!859809 0)))))

(declare-fun b!2318946 () Bool)

(declare-fun e!1486474 () Bool)

(declare-fun lt!860033 () List!27750)

(declare-fun e!1486473 () Int)

(assert (=> b!2318946 (= e!1486474 (= (size!21891 lt!860033) e!1486473))))

(declare-fun c!367750 () Bool)

(assert (=> b!2318946 (= c!367750 (<= (- 512 0) 0))))

(declare-fun d!685472 () Bool)

(assert (=> d!685472 e!1486474))

(declare-fun res!990667 () Bool)

(assert (=> d!685472 (=> (not res!990667) (not e!1486474))))

(assert (=> d!685472 (= res!990667 (= ((_ map implies) (content!3736 lt!860033) (content!3736 (drop!1504 lt!859809 0))) ((as const (InoxSet T!43796)) true)))))

(declare-fun e!1486472 () List!27750)

(assert (=> d!685472 (= lt!860033 e!1486472)))

(declare-fun c!367749 () Bool)

(assert (=> d!685472 (= c!367749 (or ((_ is Nil!27652) (drop!1504 lt!859809 0)) (<= (- 512 0) 0)))))

(assert (=> d!685472 (= (take!481 (drop!1504 lt!859809 0) (- 512 0)) lt!860033)))

(declare-fun b!2318947 () Bool)

(assert (=> b!2318947 (= e!1486473 e!1486471)))

(declare-fun c!367751 () Bool)

(assert (=> b!2318947 (= c!367751 (>= (- 512 0) (size!21891 (drop!1504 lt!859809 0))))))

(declare-fun b!2318948 () Bool)

(assert (=> b!2318948 (= e!1486473 0)))

(declare-fun b!2318949 () Bool)

(assert (=> b!2318949 (= e!1486472 Nil!27652)))

(declare-fun b!2318950 () Bool)

(assert (=> b!2318950 (= e!1486471 (- 512 0))))

(declare-fun b!2318951 () Bool)

(assert (=> b!2318951 (= e!1486472 (Cons!27652 (h!33053 (drop!1504 lt!859809 0)) (take!481 (t!207382 (drop!1504 lt!859809 0)) (- (- 512 0) 1))))))

(assert (= (and d!685472 c!367749) b!2318949))

(assert (= (and d!685472 (not c!367749)) b!2318951))

(assert (= (and d!685472 res!990667) b!2318946))

(assert (= (and b!2318946 c!367750) b!2318948))

(assert (= (and b!2318946 (not c!367750)) b!2318947))

(assert (= (and b!2318947 c!367751) b!2318945))

(assert (= (and b!2318947 (not c!367751)) b!2318950))

(assert (=> b!2318947 m!2746459))

(declare-fun m!2747065 () Bool)

(assert (=> b!2318947 m!2747065))

(declare-fun m!2747067 () Bool)

(assert (=> d!685472 m!2747067))

(assert (=> d!685472 m!2746459))

(declare-fun m!2747069 () Bool)

(assert (=> d!685472 m!2747069))

(declare-fun m!2747071 () Bool)

(assert (=> b!2318946 m!2747071))

(assert (=> b!2318945 m!2746459))

(assert (=> b!2318945 m!2747065))

(declare-fun m!2747073 () Bool)

(assert (=> b!2318951 m!2747073))

(assert (=> d!685290 d!685472))

(declare-fun b!2318980 () Bool)

(declare-fun e!1486495 () Bool)

(declare-fun lt!860036 () List!27750)

(declare-fun e!1486492 () Int)

(assert (=> b!2318980 (= e!1486495 (= (size!21891 lt!860036) e!1486492))))

(declare-fun c!367760 () Bool)

(assert (=> b!2318980 (= c!367760 (<= 0 0))))

(declare-fun bm!138231 () Bool)

(declare-fun call!138236 () Int)

(assert (=> bm!138231 (= call!138236 (size!21891 lt!859809))))

(declare-fun d!685486 () Bool)

(assert (=> d!685486 e!1486495))

(declare-fun res!990676 () Bool)

(assert (=> d!685486 (=> (not res!990676) (not e!1486495))))

(assert (=> d!685486 (= res!990676 (= ((_ map implies) (content!3736 lt!860036) (content!3736 lt!859809)) ((as const (InoxSet T!43796)) true)))))

(declare-fun e!1486494 () List!27750)

(assert (=> d!685486 (= lt!860036 e!1486494)))

(declare-fun c!367761 () Bool)

(assert (=> d!685486 (= c!367761 ((_ is Nil!27652) lt!859809))))

(assert (=> d!685486 (= (drop!1504 lt!859809 0) lt!860036)))

(declare-fun b!2318981 () Bool)

(declare-fun e!1486491 () Int)

(assert (=> b!2318981 (= e!1486491 (- call!138236 0))))

(declare-fun b!2318982 () Bool)

(declare-fun e!1486493 () List!27750)

(assert (=> b!2318982 (= e!1486493 lt!859809)))

(declare-fun b!2318983 () Bool)

(assert (=> b!2318983 (= e!1486494 e!1486493)))

(declare-fun c!367763 () Bool)

(assert (=> b!2318983 (= c!367763 (<= 0 0))))

(declare-fun b!2318984 () Bool)

(assert (=> b!2318984 (= e!1486492 e!1486491)))

(declare-fun c!367762 () Bool)

(assert (=> b!2318984 (= c!367762 (>= 0 call!138236))))

(declare-fun b!2318985 () Bool)

(assert (=> b!2318985 (= e!1486491 0)))

(declare-fun b!2318986 () Bool)

(assert (=> b!2318986 (= e!1486494 Nil!27652)))

(declare-fun b!2318987 () Bool)

(assert (=> b!2318987 (= e!1486493 (drop!1504 (t!207382 lt!859809) (- 0 1)))))

(declare-fun b!2318988 () Bool)

(assert (=> b!2318988 (= e!1486492 call!138236)))

(assert (= (and d!685486 c!367761) b!2318986))

(assert (= (and d!685486 (not c!367761)) b!2318983))

(assert (= (and b!2318983 c!367763) b!2318982))

(assert (= (and b!2318983 (not c!367763)) b!2318987))

(assert (= (and d!685486 res!990676) b!2318980))

(assert (= (and b!2318980 c!367760) b!2318988))

(assert (= (and b!2318980 (not c!367760)) b!2318984))

(assert (= (and b!2318984 c!367762) b!2318985))

(assert (= (and b!2318984 (not c!367762)) b!2318981))

(assert (= (or b!2318988 b!2318984 b!2318981) bm!138231))

(declare-fun m!2747097 () Bool)

(assert (=> b!2318980 m!2747097))

(assert (=> bm!138231 m!2746025))

(declare-fun m!2747099 () Bool)

(assert (=> d!685486 m!2747099))

(declare-fun m!2747101 () Bool)

(assert (=> d!685486 m!2747101))

(declare-fun m!2747103 () Bool)

(assert (=> b!2318987 m!2747103))

(assert (=> d!685290 d!685486))

(declare-fun d!685504 () Bool)

(assert (=> d!685504 (= (height!1320 (ite c!367605 lt!859935 (right!21312 lt!859807))) (ite ((_ is Empty!9057) (ite c!367605 lt!859935 (right!21312 lt!859807))) 0 (ite ((_ is Leaf!13295) (ite c!367605 lt!859935 (right!21312 lt!859807))) 1 (cheight!9268 (ite c!367605 lt!859935 (right!21312 lt!859807))))))))

(assert (=> bm!138180 d!685504))

(declare-fun d!685506 () Bool)

(declare-fun lt!860037 () Int)

(assert (=> d!685506 (>= lt!860037 0)))

(declare-fun e!1486496 () Int)

(assert (=> d!685506 (= lt!860037 e!1486496)))

(declare-fun c!367764 () Bool)

(assert (=> d!685506 (= c!367764 ((_ is Nil!27652) lt!859950))))

(assert (=> d!685506 (= (size!21891 lt!859950) lt!860037)))

(declare-fun b!2318989 () Bool)

(assert (=> b!2318989 (= e!1486496 0)))

(declare-fun b!2318990 () Bool)

(assert (=> b!2318990 (= e!1486496 (+ 1 (size!21891 (t!207382 lt!859950))))))

(assert (= (and d!685506 c!367764) b!2318989))

(assert (= (and d!685506 (not c!367764)) b!2318990))

(declare-fun m!2747105 () Bool)

(assert (=> b!2318990 m!2747105))

(assert (=> b!2318552 d!685506))

(declare-fun d!685508 () Bool)

(declare-fun lt!860038 () Int)

(assert (=> d!685508 (>= lt!860038 0)))

(declare-fun e!1486497 () Int)

(assert (=> d!685508 (= lt!860038 e!1486497)))

(declare-fun c!367765 () Bool)

(assert (=> d!685508 (= c!367765 ((_ is Nil!27652) (slice!686 lt!859809 0 512)))))

(assert (=> d!685508 (= (size!21891 (slice!686 lt!859809 0 512)) lt!860038)))

(declare-fun b!2318991 () Bool)

(assert (=> b!2318991 (= e!1486497 0)))

(declare-fun b!2318992 () Bool)

(assert (=> b!2318992 (= e!1486497 (+ 1 (size!21891 (t!207382 (slice!686 lt!859809 0 512)))))))

(assert (= (and d!685508 c!367765) b!2318991))

(assert (= (and d!685508 (not c!367765)) b!2318992))

(assert (=> b!2318992 m!2746651))

(assert (=> b!2318552 d!685508))

(declare-fun d!685510 () Bool)

(declare-fun lt!860039 () Int)

(assert (=> d!685510 (>= lt!860039 0)))

(declare-fun e!1486498 () Int)

(assert (=> d!685510 (= lt!860039 e!1486498)))

(declare-fun c!367766 () Bool)

(assert (=> d!685510 (= c!367766 ((_ is Nil!27652) (slice!686 lt!859809 512 (size!21891 lt!859809))))))

(assert (=> d!685510 (= (size!21891 (slice!686 lt!859809 512 (size!21891 lt!859809))) lt!860039)))

(declare-fun b!2318993 () Bool)

(assert (=> b!2318993 (= e!1486498 0)))

(declare-fun b!2318994 () Bool)

(assert (=> b!2318994 (= e!1486498 (+ 1 (size!21891 (t!207382 (slice!686 lt!859809 512 (size!21891 lt!859809))))))))

(assert (= (and d!685510 c!367766) b!2318993))

(assert (= (and d!685510 (not c!367766)) b!2318994))

(declare-fun m!2747107 () Bool)

(assert (=> b!2318994 m!2747107))

(assert (=> b!2318552 d!685510))

(declare-fun d!685512 () Bool)

(declare-fun lt!860040 () Int)

(assert (=> d!685512 (>= lt!860040 0)))

(declare-fun e!1486499 () Int)

(assert (=> d!685512 (= lt!860040 e!1486499)))

(declare-fun c!367767 () Bool)

(assert (=> d!685512 (= c!367767 ((_ is Nil!27652) (t!207382 lt!859809)))))

(assert (=> d!685512 (= (size!21891 (t!207382 lt!859809)) lt!860040)))

(declare-fun b!2318995 () Bool)

(assert (=> b!2318995 (= e!1486499 0)))

(declare-fun b!2318996 () Bool)

(assert (=> b!2318996 (= e!1486499 (+ 1 (size!21891 (t!207382 (t!207382 lt!859809)))))))

(assert (= (and d!685512 c!367767) b!2318995))

(assert (= (and d!685512 (not c!367767)) b!2318996))

(declare-fun m!2747109 () Bool)

(assert (=> b!2318996 m!2747109))

(assert (=> b!2318575 d!685512))

(declare-fun d!685514 () Bool)

(declare-fun lt!860041 () Bool)

(assert (=> d!685514 (= lt!860041 (isEmpty!15775 (list!10985 (right!21312 acc!252))))))

(assert (=> d!685514 (= lt!860041 (= (size!21893 (right!21312 acc!252)) 0))))

(assert (=> d!685514 (= (isEmpty!15774 (right!21312 acc!252)) lt!860041)))

(declare-fun bs!458930 () Bool)

(assert (= bs!458930 d!685514))

(assert (=> bs!458930 m!2746145))

(assert (=> bs!458930 m!2746145))

(declare-fun m!2747111 () Bool)

(assert (=> bs!458930 m!2747111))

(declare-fun m!2747113 () Bool)

(assert (=> bs!458930 m!2747113))

(assert (=> b!2318242 d!685514))

(declare-fun d!685516 () Bool)

(declare-fun lt!860044 () Int)

(assert (=> d!685516 (>= lt!860044 0)))

(declare-fun e!1486500 () Int)

(assert (=> d!685516 (= lt!860044 e!1486500)))

(declare-fun c!367768 () Bool)

(assert (=> d!685516 (= c!367768 ((_ is Nil!27652) (innerList!9117 (xs!12011 acc!252))))))

(assert (=> d!685516 (= (size!21891 (innerList!9117 (xs!12011 acc!252))) lt!860044)))

(declare-fun b!2318997 () Bool)

(assert (=> b!2318997 (= e!1486500 0)))

(declare-fun b!2318998 () Bool)

(assert (=> b!2318998 (= e!1486500 (+ 1 (size!21891 (t!207382 (innerList!9117 (xs!12011 acc!252))))))))

(assert (= (and d!685516 c!367768) b!2318997))

(assert (= (and d!685516 (not c!367768)) b!2318998))

(declare-fun m!2747115 () Bool)

(assert (=> b!2318998 m!2747115))

(assert (=> d!685306 d!685516))

(declare-fun b!2319002 () Bool)

(declare-fun e!1486502 () List!27750)

(assert (=> b!2319002 (= e!1486502 (++!6807 (list!10985 (left!20982 lt!859936)) (list!10985 (right!21312 lt!859936))))))

(declare-fun b!2318999 () Bool)

(declare-fun e!1486501 () List!27750)

(assert (=> b!2318999 (= e!1486501 Nil!27652)))

(declare-fun d!685518 () Bool)

(declare-fun c!367769 () Bool)

(assert (=> d!685518 (= c!367769 ((_ is Empty!9057) lt!859936))))

(assert (=> d!685518 (= (list!10985 lt!859936) e!1486501)))

(declare-fun b!2319001 () Bool)

(assert (=> b!2319001 (= e!1486502 (list!10984 (xs!12011 lt!859936)))))

(declare-fun b!2319000 () Bool)

(assert (=> b!2319000 (= e!1486501 e!1486502)))

(declare-fun c!367770 () Bool)

(assert (=> b!2319000 (= c!367770 ((_ is Leaf!13295) lt!859936))))

(assert (= (and d!685518 c!367769) b!2318999))

(assert (= (and d!685518 (not c!367769)) b!2319000))

(assert (= (and b!2319000 c!367770) b!2319001))

(assert (= (and b!2319000 (not c!367770)) b!2319002))

(declare-fun m!2747117 () Bool)

(assert (=> b!2319002 m!2747117))

(declare-fun m!2747119 () Bool)

(assert (=> b!2319002 m!2747119))

(assert (=> b!2319002 m!2747117))

(assert (=> b!2319002 m!2747119))

(declare-fun m!2747121 () Bool)

(assert (=> b!2319002 m!2747121))

(declare-fun m!2747123 () Bool)

(assert (=> b!2319001 m!2747123))

(assert (=> b!2318487 d!685518))

(declare-fun b!2319006 () Bool)

(declare-fun e!1486504 () Bool)

(declare-fun lt!860045 () List!27750)

(assert (=> b!2319006 (= e!1486504 (or (not (= (list!10985 lt!859807) Nil!27652)) (= lt!860045 (list!10985 acc!252))))))

(declare-fun b!2319005 () Bool)

(declare-fun res!990677 () Bool)

(assert (=> b!2319005 (=> (not res!990677) (not e!1486504))))

(assert (=> b!2319005 (= res!990677 (= (size!21891 lt!860045) (+ (size!21891 (list!10985 acc!252)) (size!21891 (list!10985 lt!859807)))))))

(declare-fun b!2319003 () Bool)

(declare-fun e!1486503 () List!27750)

(assert (=> b!2319003 (= e!1486503 (list!10985 lt!859807))))

(declare-fun b!2319004 () Bool)

(assert (=> b!2319004 (= e!1486503 (Cons!27652 (h!33053 (list!10985 acc!252)) (++!6807 (t!207382 (list!10985 acc!252)) (list!10985 lt!859807))))))

(declare-fun d!685520 () Bool)

(assert (=> d!685520 e!1486504))

(declare-fun res!990678 () Bool)

(assert (=> d!685520 (=> (not res!990678) (not e!1486504))))

(assert (=> d!685520 (= res!990678 (= (content!3736 lt!860045) ((_ map or) (content!3736 (list!10985 acc!252)) (content!3736 (list!10985 lt!859807)))))))

(assert (=> d!685520 (= lt!860045 e!1486503)))

(declare-fun c!367771 () Bool)

(assert (=> d!685520 (= c!367771 ((_ is Nil!27652) (list!10985 acc!252)))))

(assert (=> d!685520 (= (++!6807 (list!10985 acc!252) (list!10985 lt!859807)) lt!860045)))

(assert (= (and d!685520 c!367771) b!2319003))

(assert (= (and d!685520 (not c!367771)) b!2319004))

(assert (= (and d!685520 res!990678) b!2319005))

(assert (= (and b!2319005 res!990677) b!2319006))

(declare-fun m!2747125 () Bool)

(assert (=> b!2319005 m!2747125))

(assert (=> b!2319005 m!2745999))

(declare-fun m!2747127 () Bool)

(assert (=> b!2319005 m!2747127))

(assert (=> b!2319005 m!2746003))

(declare-fun m!2747131 () Bool)

(assert (=> b!2319005 m!2747131))

(assert (=> b!2319004 m!2746003))

(declare-fun m!2747133 () Bool)

(assert (=> b!2319004 m!2747133))

(declare-fun m!2747137 () Bool)

(assert (=> d!685520 m!2747137))

(assert (=> d!685520 m!2745999))

(declare-fun m!2747139 () Bool)

(assert (=> d!685520 m!2747139))

(assert (=> d!685520 m!2746003))

(declare-fun m!2747141 () Bool)

(assert (=> d!685520 m!2747141))

(assert (=> b!2318487 d!685520))

(assert (=> b!2318487 d!685230))

(assert (=> b!2318487 d!685262))

(assert (=> d!685300 d!685216))

(assert (=> d!685300 d!685260))

(declare-fun d!685524 () Bool)

(assert (=> d!685524 (= (++!6807 (++!6807 lt!859808 lt!859811) lt!859817) (++!6807 lt!859808 (++!6807 lt!859811 lt!859817)))))

(assert (=> d!685524 true))

(declare-fun _$15!482 () Unit!40510)

(assert (=> d!685524 (= (choose!13584 lt!859808 lt!859811 lt!859817) _$15!482)))

(declare-fun bs!458932 () Bool)

(assert (= bs!458932 d!685524))

(assert (=> bs!458932 m!2746007))

(assert (=> bs!458932 m!2746007))

(assert (=> bs!458932 m!2746015))

(assert (=> bs!458932 m!2746043))

(assert (=> bs!458932 m!2746043))

(assert (=> bs!458932 m!2746487))

(assert (=> d!685300 d!685524))

(assert (=> d!685300 d!685298))

(declare-fun b!2319016 () Bool)

(declare-fun e!1486508 () Bool)

(declare-fun lt!860047 () List!27750)

(assert (=> b!2319016 (= e!1486508 (or (not (= (++!6807 lt!859811 lt!859817) Nil!27652)) (= lt!860047 lt!859808)))))

(declare-fun b!2319015 () Bool)

(declare-fun res!990685 () Bool)

(assert (=> b!2319015 (=> (not res!990685) (not e!1486508))))

(assert (=> b!2319015 (= res!990685 (= (size!21891 lt!860047) (+ (size!21891 lt!859808) (size!21891 (++!6807 lt!859811 lt!859817)))))))

(declare-fun b!2319013 () Bool)

(declare-fun e!1486507 () List!27750)

(assert (=> b!2319013 (= e!1486507 (++!6807 lt!859811 lt!859817))))

(declare-fun b!2319014 () Bool)

(assert (=> b!2319014 (= e!1486507 (Cons!27652 (h!33053 lt!859808) (++!6807 (t!207382 lt!859808) (++!6807 lt!859811 lt!859817))))))

(declare-fun d!685530 () Bool)

(assert (=> d!685530 e!1486508))

(declare-fun res!990686 () Bool)

(assert (=> d!685530 (=> (not res!990686) (not e!1486508))))

(assert (=> d!685530 (= res!990686 (= (content!3736 lt!860047) ((_ map or) (content!3736 lt!859808) (content!3736 (++!6807 lt!859811 lt!859817)))))))

(assert (=> d!685530 (= lt!860047 e!1486507)))

(declare-fun c!367772 () Bool)

(assert (=> d!685530 (= c!367772 ((_ is Nil!27652) lt!859808))))

(assert (=> d!685530 (= (++!6807 lt!859808 (++!6807 lt!859811 lt!859817)) lt!860047)))

(assert (= (and d!685530 c!367772) b!2319013))

(assert (= (and d!685530 (not c!367772)) b!2319014))

(assert (= (and d!685530 res!990686) b!2319015))

(assert (= (and b!2319015 res!990685) b!2319016))

(declare-fun m!2747155 () Bool)

(assert (=> b!2319015 m!2747155))

(assert (=> b!2319015 m!2746349))

(assert (=> b!2319015 m!2746043))

(declare-fun m!2747157 () Bool)

(assert (=> b!2319015 m!2747157))

(assert (=> b!2319014 m!2746043))

(declare-fun m!2747159 () Bool)

(assert (=> b!2319014 m!2747159))

(declare-fun m!2747161 () Bool)

(assert (=> d!685530 m!2747161))

(assert (=> d!685530 m!2746357))

(assert (=> d!685530 m!2746043))

(declare-fun m!2747163 () Bool)

(assert (=> d!685530 m!2747163))

(assert (=> d!685300 d!685530))

(declare-fun d!685532 () Bool)

(declare-fun res!990699 () Bool)

(declare-fun e!1486514 () Bool)

(assert (=> d!685532 (=> (not res!990699) (not e!1486514))))

(assert (=> d!685532 (= res!990699 (= (csize!18344 (left!20982 acc!252)) (+ (size!21893 (left!20982 (left!20982 acc!252))) (size!21893 (right!21312 (left!20982 acc!252))))))))

(assert (=> d!685532 (= (inv!37563 (left!20982 acc!252)) e!1486514)))

(declare-fun b!2319029 () Bool)

(declare-fun res!990700 () Bool)

(assert (=> b!2319029 (=> (not res!990700) (not e!1486514))))

(assert (=> b!2319029 (= res!990700 (and (not (= (left!20982 (left!20982 acc!252)) Empty!9057)) (not (= (right!21312 (left!20982 acc!252)) Empty!9057))))))

(declare-fun b!2319030 () Bool)

(declare-fun res!990701 () Bool)

(assert (=> b!2319030 (=> (not res!990701) (not e!1486514))))

(assert (=> b!2319030 (= res!990701 (= (cheight!9268 (left!20982 acc!252)) (+ (max!0 (height!1320 (left!20982 (left!20982 acc!252))) (height!1320 (right!21312 (left!20982 acc!252)))) 1)))))

(declare-fun b!2319031 () Bool)

(assert (=> b!2319031 (= e!1486514 (<= 0 (cheight!9268 (left!20982 acc!252))))))

(assert (= (and d!685532 res!990699) b!2319029))

(assert (= (and b!2319029 res!990700) b!2319030))

(assert (= (and b!2319030 res!990701) b!2319031))

(declare-fun m!2747169 () Bool)

(assert (=> d!685532 m!2747169))

(declare-fun m!2747171 () Bool)

(assert (=> d!685532 m!2747171))

(assert (=> b!2319030 m!2746537))

(assert (=> b!2319030 m!2746539))

(assert (=> b!2319030 m!2746537))

(assert (=> b!2319030 m!2746539))

(declare-fun m!2747173 () Bool)

(assert (=> b!2319030 m!2747173))

(assert (=> b!2318584 d!685532))

(declare-fun d!685536 () Bool)

(declare-fun res!990708 () Bool)

(declare-fun e!1486517 () Bool)

(assert (=> d!685536 (=> (not res!990708) (not e!1486517))))

(assert (=> d!685536 (= res!990708 (<= (size!21891 (list!10984 (xs!12011 acc!252))) 512))))

(assert (=> d!685536 (= (inv!37564 acc!252) e!1486517)))

(declare-fun b!2319038 () Bool)

(declare-fun res!990709 () Bool)

(assert (=> b!2319038 (=> (not res!990709) (not e!1486517))))

(assert (=> b!2319038 (= res!990709 (= (csize!18345 acc!252) (size!21891 (list!10984 (xs!12011 acc!252)))))))

(declare-fun b!2319039 () Bool)

(assert (=> b!2319039 (= e!1486517 (and (> (csize!18345 acc!252) 0) (<= (csize!18345 acc!252) 512)))))

(assert (= (and d!685536 res!990708) b!2319038))

(assert (= (and b!2319038 res!990709) b!2319039))

(assert (=> d!685536 m!2746149))

(assert (=> d!685536 m!2746149))

(declare-fun m!2747175 () Bool)

(assert (=> d!685536 m!2747175))

(assert (=> b!2319038 m!2746149))

(assert (=> b!2319038 m!2746149))

(assert (=> b!2319038 m!2747175))

(assert (=> b!2318260 d!685536))

(declare-fun b!2319040 () Bool)

(declare-fun res!990713 () Bool)

(declare-fun e!1486519 () Bool)

(assert (=> b!2319040 (=> (not res!990713) (not e!1486519))))

(assert (=> b!2319040 (= res!990713 (isBalanced!2751 (right!21312 lt!859807)))))

(declare-fun d!685538 () Bool)

(declare-fun res!990715 () Bool)

(declare-fun e!1486518 () Bool)

(assert (=> d!685538 (=> res!990715 e!1486518)))

(assert (=> d!685538 (= res!990715 (not ((_ is Node!9057) lt!859807)))))

(assert (=> d!685538 (= (isBalanced!2751 lt!859807) e!1486518)))

(declare-fun b!2319041 () Bool)

(assert (=> b!2319041 (= e!1486518 e!1486519)))

(declare-fun res!990712 () Bool)

(assert (=> b!2319041 (=> (not res!990712) (not e!1486519))))

(assert (=> b!2319041 (= res!990712 (<= (- 1) (- (height!1320 (left!20982 lt!859807)) (height!1320 (right!21312 lt!859807)))))))

(declare-fun b!2319042 () Bool)

(declare-fun res!990714 () Bool)

(assert (=> b!2319042 (=> (not res!990714) (not e!1486519))))

(assert (=> b!2319042 (= res!990714 (not (isEmpty!15774 (left!20982 lt!859807))))))

(declare-fun b!2319043 () Bool)

(declare-fun res!990710 () Bool)

(assert (=> b!2319043 (=> (not res!990710) (not e!1486519))))

(assert (=> b!2319043 (= res!990710 (<= (- (height!1320 (left!20982 lt!859807)) (height!1320 (right!21312 lt!859807))) 1))))

(declare-fun b!2319044 () Bool)

(assert (=> b!2319044 (= e!1486519 (not (isEmpty!15774 (right!21312 lt!859807))))))

(declare-fun b!2319045 () Bool)

(declare-fun res!990711 () Bool)

(assert (=> b!2319045 (=> (not res!990711) (not e!1486519))))

(assert (=> b!2319045 (= res!990711 (isBalanced!2751 (left!20982 lt!859807)))))

(assert (= (and d!685538 (not res!990715)) b!2319041))

(assert (= (and b!2319041 res!990712) b!2319043))

(assert (= (and b!2319043 res!990710) b!2319045))

(assert (= (and b!2319045 res!990711) b!2319040))

(assert (= (and b!2319040 res!990713) b!2319042))

(assert (= (and b!2319042 res!990714) b!2319044))

(declare-fun m!2747189 () Bool)

(assert (=> b!2319042 m!2747189))

(declare-fun m!2747191 () Bool)

(assert (=> b!2319045 m!2747191))

(declare-fun m!2747193 () Bool)

(assert (=> b!2319044 m!2747193))

(declare-fun m!2747195 () Bool)

(assert (=> b!2319043 m!2747195))

(declare-fun m!2747197 () Bool)

(assert (=> b!2319043 m!2747197))

(declare-fun m!2747199 () Bool)

(assert (=> b!2319040 m!2747199))

(assert (=> b!2319041 m!2747195))

(assert (=> b!2319041 m!2747197))

(assert (=> b!2318485 d!685538))

(assert (=> b!2318217 d!685302))

(assert (=> b!2318217 d!685304))

(declare-fun d!685544 () Bool)

(declare-fun res!990716 () Bool)

(declare-fun e!1486521 () Bool)

(assert (=> d!685544 (=> (not res!990716) (not e!1486521))))

(assert (=> d!685544 (= res!990716 (= (csize!18344 acc!252) (+ (size!21893 (left!20982 acc!252)) (size!21893 (right!21312 acc!252)))))))

(assert (=> d!685544 (= (inv!37563 acc!252) e!1486521)))

(declare-fun b!2319048 () Bool)

(declare-fun res!990717 () Bool)

(assert (=> b!2319048 (=> (not res!990717) (not e!1486521))))

(assert (=> b!2319048 (= res!990717 (and (not (= (left!20982 acc!252) Empty!9057)) (not (= (right!21312 acc!252) Empty!9057))))))

(declare-fun b!2319050 () Bool)

(declare-fun res!990718 () Bool)

(assert (=> b!2319050 (=> (not res!990718) (not e!1486521))))

(assert (=> b!2319050 (= res!990718 (= (cheight!9268 acc!252) (+ (max!0 (height!1320 (left!20982 acc!252)) (height!1320 (right!21312 acc!252))) 1)))))

(declare-fun b!2319052 () Bool)

(assert (=> b!2319052 (= e!1486521 (<= 0 (cheight!9268 acc!252)))))

(assert (= (and d!685544 res!990716) b!2319048))

(assert (= (and b!2319048 res!990717) b!2319050))

(assert (= (and b!2319050 res!990718) b!2319052))

(declare-fun m!2747205 () Bool)

(assert (=> d!685544 m!2747205))

(assert (=> d!685544 m!2747113))

(assert (=> b!2319050 m!2746059))

(assert (=> b!2319050 m!2746061))

(assert (=> b!2319050 m!2746059))

(assert (=> b!2319050 m!2746061))

(declare-fun m!2747207 () Bool)

(assert (=> b!2319050 m!2747207))

(assert (=> b!2318258 d!685544))

(declare-fun d!685548 () Bool)

(declare-fun c!367776 () Bool)

(assert (=> d!685548 (= c!367776 ((_ is Nil!27652) lt!859950))))

(declare-fun e!1486524 () (InoxSet T!43796))

(assert (=> d!685548 (= (content!3736 lt!859950) e!1486524)))

(declare-fun b!2319055 () Bool)

(assert (=> b!2319055 (= e!1486524 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2319056 () Bool)

(assert (=> b!2319056 (= e!1486524 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 lt!859950) true) (content!3736 (t!207382 lt!859950))))))

(assert (= (and d!685548 c!367776) b!2319055))

(assert (= (and d!685548 (not c!367776)) b!2319056))

(declare-fun m!2747211 () Bool)

(assert (=> b!2319056 m!2747211))

(declare-fun m!2747213 () Bool)

(assert (=> b!2319056 m!2747213))

(assert (=> d!685284 d!685548))

(declare-fun d!685552 () Bool)

(declare-fun c!367779 () Bool)

(assert (=> d!685552 (= c!367779 ((_ is Nil!27652) (slice!686 lt!859809 0 512)))))

(declare-fun e!1486527 () (InoxSet T!43796))

(assert (=> d!685552 (= (content!3736 (slice!686 lt!859809 0 512)) e!1486527)))

(declare-fun b!2319061 () Bool)

(assert (=> b!2319061 (= e!1486527 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2319062 () Bool)

(assert (=> b!2319062 (= e!1486527 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 (slice!686 lt!859809 0 512)) true) (content!3736 (t!207382 (slice!686 lt!859809 0 512)))))))

(assert (= (and d!685552 c!367779) b!2319061))

(assert (= (and d!685552 (not c!367779)) b!2319062))

(declare-fun m!2747215 () Bool)

(assert (=> b!2319062 m!2747215))

(assert (=> b!2319062 m!2746657))

(assert (=> d!685284 d!685552))

(declare-fun d!685554 () Bool)

(declare-fun c!367780 () Bool)

(assert (=> d!685554 (= c!367780 ((_ is Nil!27652) (slice!686 lt!859809 512 (size!21891 lt!859809))))))

(declare-fun e!1486528 () (InoxSet T!43796))

(assert (=> d!685554 (= (content!3736 (slice!686 lt!859809 512 (size!21891 lt!859809))) e!1486528)))

(declare-fun b!2319063 () Bool)

(assert (=> b!2319063 (= e!1486528 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2319064 () Bool)

(assert (=> b!2319064 (= e!1486528 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 (slice!686 lt!859809 512 (size!21891 lt!859809))) true) (content!3736 (t!207382 (slice!686 lt!859809 512 (size!21891 lt!859809))))))))

(assert (= (and d!685554 c!367780) b!2319063))

(assert (= (and d!685554 (not c!367780)) b!2319064))

(declare-fun m!2747217 () Bool)

(assert (=> b!2319064 m!2747217))

(declare-fun m!2747219 () Bool)

(assert (=> b!2319064 m!2747219))

(assert (=> d!685284 d!685554))

(declare-fun b!2319065 () Bool)

(declare-fun res!990722 () Bool)

(declare-fun e!1486530 () Bool)

(assert (=> b!2319065 (=> (not res!990722) (not e!1486530))))

(assert (=> b!2319065 (= res!990722 (isBalanced!2751 (right!21312 (left!20982 lt!859812))))))

(declare-fun d!685556 () Bool)

(declare-fun res!990724 () Bool)

(declare-fun e!1486529 () Bool)

(assert (=> d!685556 (=> res!990724 e!1486529)))

(assert (=> d!685556 (= res!990724 (not ((_ is Node!9057) (left!20982 lt!859812))))))

(assert (=> d!685556 (= (isBalanced!2751 (left!20982 lt!859812)) e!1486529)))

(declare-fun b!2319066 () Bool)

(assert (=> b!2319066 (= e!1486529 e!1486530)))

(declare-fun res!990721 () Bool)

(assert (=> b!2319066 (=> (not res!990721) (not e!1486530))))

(assert (=> b!2319066 (= res!990721 (<= (- 1) (- (height!1320 (left!20982 (left!20982 lt!859812))) (height!1320 (right!21312 (left!20982 lt!859812))))))))

(declare-fun b!2319067 () Bool)

(declare-fun res!990723 () Bool)

(assert (=> b!2319067 (=> (not res!990723) (not e!1486530))))

(assert (=> b!2319067 (= res!990723 (not (isEmpty!15774 (left!20982 (left!20982 lt!859812)))))))

(declare-fun b!2319068 () Bool)

(declare-fun res!990719 () Bool)

(assert (=> b!2319068 (=> (not res!990719) (not e!1486530))))

(assert (=> b!2319068 (= res!990719 (<= (- (height!1320 (left!20982 (left!20982 lt!859812))) (height!1320 (right!21312 (left!20982 lt!859812)))) 1))))

(declare-fun b!2319069 () Bool)

(assert (=> b!2319069 (= e!1486530 (not (isEmpty!15774 (right!21312 (left!20982 lt!859812)))))))

(declare-fun b!2319070 () Bool)

(declare-fun res!990720 () Bool)

(assert (=> b!2319070 (=> (not res!990720) (not e!1486530))))

(assert (=> b!2319070 (= res!990720 (isBalanced!2751 (left!20982 (left!20982 lt!859812))))))

(assert (= (and d!685556 (not res!990724)) b!2319066))

(assert (= (and b!2319066 res!990721) b!2319068))

(assert (= (and b!2319068 res!990719) b!2319070))

(assert (= (and b!2319070 res!990720) b!2319065))

(assert (= (and b!2319065 res!990722) b!2319067))

(assert (= (and b!2319067 res!990723) b!2319069))

(declare-fun m!2747229 () Bool)

(assert (=> b!2319067 m!2747229))

(declare-fun m!2747231 () Bool)

(assert (=> b!2319070 m!2747231))

(declare-fun m!2747233 () Bool)

(assert (=> b!2319069 m!2747233))

(declare-fun m!2747235 () Bool)

(assert (=> b!2319068 m!2747235))

(declare-fun m!2747237 () Bool)

(assert (=> b!2319068 m!2747237))

(declare-fun m!2747239 () Bool)

(assert (=> b!2319065 m!2747239))

(assert (=> b!2319066 m!2747235))

(assert (=> b!2319066 m!2747237))

(assert (=> b!2318595 d!685556))

(declare-fun e!1486533 () Conc!9057)

(declare-fun b!2319075 () Bool)

(assert (=> b!2319075 (= e!1486533 (ite c!367607 lt!859807 (ite c!367605 (ite c!367608 call!138191 (ite c!367611 lt!859935 (left!20982 (right!21312 acc!252)))) (ite c!367612 (right!21312 lt!859807) (ite c!367606 (right!21312 (left!20982 lt!859807)) (right!21312 lt!859807))))))))

(declare-fun b!2319077 () Bool)

(declare-fun e!1486534 () Conc!9057)

(assert (=> b!2319077 (= e!1486534 (ite c!367607 acc!252 (ite c!367605 (ite c!367608 (left!20982 acc!252) (ite c!367611 (left!20982 (right!21312 acc!252)) (left!20982 acc!252))) (ite c!367612 call!138196 (ite c!367606 lt!859938 (right!21312 (left!20982 lt!859807)))))))))

(declare-fun b!2319078 () Bool)

(assert (=> b!2319078 (= e!1486534 (Node!9057 (ite c!367607 acc!252 (ite c!367605 (ite c!367608 (left!20982 acc!252) (ite c!367611 (left!20982 (right!21312 acc!252)) (left!20982 acc!252))) (ite c!367612 call!138196 (ite c!367606 lt!859938 (right!21312 (left!20982 lt!859807)))))) (ite c!367607 lt!859807 (ite c!367605 (ite c!367608 call!138191 (ite c!367611 lt!859935 (left!20982 (right!21312 acc!252)))) (ite c!367612 (right!21312 lt!859807) (ite c!367606 (right!21312 (left!20982 lt!859807)) (right!21312 lt!859807))))) (+ (size!21893 (ite c!367607 acc!252 (ite c!367605 (ite c!367608 (left!20982 acc!252) (ite c!367611 (left!20982 (right!21312 acc!252)) (left!20982 acc!252))) (ite c!367612 call!138196 (ite c!367606 lt!859938 (right!21312 (left!20982 lt!859807))))))) (size!21893 (ite c!367607 lt!859807 (ite c!367605 (ite c!367608 call!138191 (ite c!367611 lt!859935 (left!20982 (right!21312 acc!252)))) (ite c!367612 (right!21312 lt!859807) (ite c!367606 (right!21312 (left!20982 lt!859807)) (right!21312 lt!859807))))))) (+ (max!0 (height!1320 (ite c!367607 acc!252 (ite c!367605 (ite c!367608 (left!20982 acc!252) (ite c!367611 (left!20982 (right!21312 acc!252)) (left!20982 acc!252))) (ite c!367612 call!138196 (ite c!367606 lt!859938 (right!21312 (left!20982 lt!859807))))))) (height!1320 (ite c!367607 lt!859807 (ite c!367605 (ite c!367608 call!138191 (ite c!367611 lt!859935 (left!20982 (right!21312 acc!252)))) (ite c!367612 (right!21312 lt!859807) (ite c!367606 (right!21312 (left!20982 lt!859807)) (right!21312 lt!859807))))))) 1)))))

(declare-fun b!2319076 () Bool)

(assert (=> b!2319076 (= e!1486533 e!1486534)))

(declare-fun c!367782 () Bool)

(assert (=> b!2319076 (= c!367782 (= (ite c!367607 lt!859807 (ite c!367605 (ite c!367608 call!138191 (ite c!367611 lt!859935 (left!20982 (right!21312 acc!252)))) (ite c!367612 (right!21312 lt!859807) (ite c!367606 (right!21312 (left!20982 lt!859807)) (right!21312 lt!859807))))) Empty!9057))))

(declare-fun lt!860052 () Conc!9057)

(declare-fun d!685560 () Bool)

(assert (=> d!685560 (= (list!10985 lt!860052) (++!6807 (list!10985 (ite c!367607 acc!252 (ite c!367605 (ite c!367608 (left!20982 acc!252) (ite c!367611 (left!20982 (right!21312 acc!252)) (left!20982 acc!252))) (ite c!367612 call!138196 (ite c!367606 lt!859938 (right!21312 (left!20982 lt!859807))))))) (list!10985 (ite c!367607 lt!859807 (ite c!367605 (ite c!367608 call!138191 (ite c!367611 lt!859935 (left!20982 (right!21312 acc!252)))) (ite c!367612 (right!21312 lt!859807) (ite c!367606 (right!21312 (left!20982 lt!859807)) (right!21312 lt!859807))))))))))

(assert (=> d!685560 (= lt!860052 e!1486533)))

(declare-fun c!367783 () Bool)

(assert (=> d!685560 (= c!367783 (= (ite c!367607 acc!252 (ite c!367605 (ite c!367608 (left!20982 acc!252) (ite c!367611 (left!20982 (right!21312 acc!252)) (left!20982 acc!252))) (ite c!367612 call!138196 (ite c!367606 lt!859938 (right!21312 (left!20982 lt!859807)))))) Empty!9057))))

(assert (=> d!685560 (= (<>!210 (ite c!367607 acc!252 (ite c!367605 (ite c!367608 (left!20982 acc!252) (ite c!367611 (left!20982 (right!21312 acc!252)) (left!20982 acc!252))) (ite c!367612 call!138196 (ite c!367606 lt!859938 (right!21312 (left!20982 lt!859807)))))) (ite c!367607 lt!859807 (ite c!367605 (ite c!367608 call!138191 (ite c!367611 lt!859935 (left!20982 (right!21312 acc!252)))) (ite c!367612 (right!21312 lt!859807) (ite c!367606 (right!21312 (left!20982 lt!859807)) (right!21312 lt!859807)))))) lt!860052)))

(assert (= (and d!685560 c!367783) b!2319075))

(assert (= (and d!685560 (not c!367783)) b!2319076))

(assert (= (and b!2319076 c!367782) b!2319077))

(assert (= (and b!2319076 (not c!367782)) b!2319078))

(declare-fun m!2747253 () Bool)

(assert (=> b!2319078 m!2747253))

(declare-fun m!2747255 () Bool)

(assert (=> b!2319078 m!2747255))

(assert (=> b!2319078 m!2747255))

(declare-fun m!2747257 () Bool)

(assert (=> b!2319078 m!2747257))

(declare-fun m!2747259 () Bool)

(assert (=> b!2319078 m!2747259))

(assert (=> b!2319078 m!2747257))

(declare-fun m!2747261 () Bool)

(assert (=> b!2319078 m!2747261))

(declare-fun m!2747263 () Bool)

(assert (=> d!685560 m!2747263))

(declare-fun m!2747265 () Bool)

(assert (=> d!685560 m!2747265))

(declare-fun m!2747267 () Bool)

(assert (=> d!685560 m!2747267))

(assert (=> d!685560 m!2747265))

(assert (=> d!685560 m!2747267))

(declare-fun m!2747269 () Bool)

(assert (=> d!685560 m!2747269))

(assert (=> bm!138178 d!685560))

(declare-fun d!685564 () Bool)

(declare-fun lt!860053 () Bool)

(assert (=> d!685564 (= lt!860053 (isEmpty!15775 (list!10985 (left!20982 acc!252))))))

(assert (=> d!685564 (= lt!860053 (= (size!21893 (left!20982 acc!252)) 0))))

(assert (=> d!685564 (= (isEmpty!15774 (left!20982 acc!252)) lt!860053)))

(declare-fun bs!458933 () Bool)

(assert (= bs!458933 d!685564))

(assert (=> bs!458933 m!2746143))

(assert (=> bs!458933 m!2746143))

(declare-fun m!2747275 () Bool)

(assert (=> bs!458933 m!2747275))

(assert (=> bs!458933 m!2747205))

(assert (=> b!2318240 d!685564))

(declare-fun d!685566 () Bool)

(declare-fun res!990727 () Bool)

(declare-fun e!1486537 () Bool)

(assert (=> d!685566 (=> (not res!990727) (not e!1486537))))

(assert (=> d!685566 (= res!990727 (<= (size!21891 (list!10984 (xs!12011 (right!21312 acc!252)))) 512))))

(assert (=> d!685566 (= (inv!37564 (right!21312 acc!252)) e!1486537)))

(declare-fun b!2319083 () Bool)

(declare-fun res!990728 () Bool)

(assert (=> b!2319083 (=> (not res!990728) (not e!1486537))))

(assert (=> b!2319083 (= res!990728 (= (csize!18345 (right!21312 acc!252)) (size!21891 (list!10984 (xs!12011 (right!21312 acc!252))))))))

(declare-fun b!2319084 () Bool)

(assert (=> b!2319084 (= e!1486537 (and (> (csize!18345 (right!21312 acc!252)) 0) (<= (csize!18345 (right!21312 acc!252)) 512)))))

(assert (= (and d!685566 res!990727) b!2319083))

(assert (= (and b!2319083 res!990728) b!2319084))

(declare-fun m!2747281 () Bool)

(assert (=> d!685566 m!2747281))

(assert (=> d!685566 m!2747281))

(declare-fun m!2747283 () Bool)

(assert (=> d!685566 m!2747283))

(assert (=> b!2319083 m!2747281))

(assert (=> b!2319083 m!2747281))

(assert (=> b!2319083 m!2747283))

(assert (=> b!2318589 d!685566))

(declare-fun b!2319118 () Bool)

(declare-fun e!1486564 () Bool)

(declare-fun appendAssoc!154 (List!27750 List!27750 List!27750) Bool)

(assert (=> b!2319118 (= e!1486564 (appendAssoc!154 (++!6807 (list!10985 acc!252) (list!10985 (left!20982 (left!20982 lt!859807)))) (list!10985 (right!21312 (left!20982 lt!859807))) (list!10985 (right!21312 lt!859807))))))

(declare-fun b!2319119 () Bool)

(declare-fun e!1486566 () Bool)

(declare-fun e!1486563 () Bool)

(assert (=> b!2319119 (= e!1486566 e!1486563)))

(declare-fun res!990756 () Bool)

(assert (=> b!2319119 (=> res!990756 e!1486563)))

(assert (=> b!2319119 (= res!990756 (not ((_ is Node!9057) (right!21312 acc!252))))))

(declare-fun b!2319120 () Bool)

(declare-fun e!1486570 () Bool)

(declare-fun e!1486565 () Bool)

(assert (=> b!2319120 (= e!1486570 e!1486565)))

(declare-fun res!990758 () Bool)

(assert (=> b!2319120 (=> res!990758 e!1486565)))

(assert (=> b!2319120 (= res!990758 (not ((_ is Node!9057) (left!20982 lt!859807))))))

(declare-fun d!685570 () Bool)

(declare-fun e!1486567 () Bool)

(assert (=> d!685570 e!1486567))

(declare-fun res!990764 () Bool)

(assert (=> d!685570 (=> (not res!990764) (not e!1486567))))

(declare-fun e!1486569 () Bool)

(assert (=> d!685570 (= res!990764 e!1486569)))

(declare-fun res!990757 () Bool)

(assert (=> d!685570 (=> res!990757 e!1486569)))

(assert (=> d!685570 (= res!990757 (not ((_ is Node!9057) acc!252)))))

(assert (=> d!685570 (= (appendAssocInst!604 acc!252 lt!859807) true)))

(declare-fun b!2319121 () Bool)

(declare-fun e!1486568 () Bool)

(assert (=> b!2319121 (= e!1486567 e!1486568)))

(declare-fun res!990763 () Bool)

(assert (=> b!2319121 (=> res!990763 e!1486568)))

(assert (=> b!2319121 (= res!990763 (not ((_ is Node!9057) lt!859807)))))

(declare-fun b!2319122 () Bool)

(declare-fun e!1486562 () Bool)

(assert (=> b!2319122 (= e!1486563 e!1486562)))

(declare-fun res!990761 () Bool)

(assert (=> b!2319122 (=> (not res!990761) (not e!1486562))))

(assert (=> b!2319122 (= res!990761 (appendAssoc!154 (list!10985 (left!20982 (right!21312 acc!252))) (list!10985 (right!21312 (right!21312 acc!252))) (list!10985 lt!859807)))))

(declare-fun b!2319123 () Bool)

(assert (=> b!2319123 (= e!1486565 e!1486564)))

(declare-fun res!990760 () Bool)

(assert (=> b!2319123 (=> (not res!990760) (not e!1486564))))

(assert (=> b!2319123 (= res!990760 (appendAssoc!154 (list!10985 acc!252) (list!10985 (left!20982 (left!20982 lt!859807))) (list!10985 (right!21312 (left!20982 lt!859807)))))))

(declare-fun b!2319124 () Bool)

(assert (=> b!2319124 (= e!1486568 e!1486570)))

(declare-fun res!990759 () Bool)

(assert (=> b!2319124 (=> (not res!990759) (not e!1486570))))

(assert (=> b!2319124 (= res!990759 (appendAssoc!154 (list!10985 acc!252) (list!10985 (left!20982 lt!859807)) (list!10985 (right!21312 lt!859807))))))

(declare-fun b!2319125 () Bool)

(assert (=> b!2319125 (= e!1486562 (appendAssoc!154 (list!10985 (left!20982 acc!252)) (list!10985 (left!20982 (right!21312 acc!252))) (++!6807 (list!10985 (right!21312 (right!21312 acc!252))) (list!10985 lt!859807))))))

(declare-fun b!2319126 () Bool)

(assert (=> b!2319126 (= e!1486569 e!1486566)))

(declare-fun res!990762 () Bool)

(assert (=> b!2319126 (=> (not res!990762) (not e!1486566))))

(assert (=> b!2319126 (= res!990762 (appendAssoc!154 (list!10985 (left!20982 acc!252)) (list!10985 (right!21312 acc!252)) (list!10985 lt!859807)))))

(assert (= (and d!685570 (not res!990757)) b!2319126))

(assert (= (and b!2319126 res!990762) b!2319119))

(assert (= (and b!2319119 (not res!990756)) b!2319122))

(assert (= (and b!2319122 res!990761) b!2319125))

(assert (= (and d!685570 res!990764) b!2319121))

(assert (= (and b!2319121 (not res!990763)) b!2319124))

(assert (= (and b!2319124 res!990759) b!2319120))

(assert (= (and b!2319120 (not res!990758)) b!2319123))

(assert (= (and b!2319123 res!990760) b!2319118))

(assert (=> b!2319118 m!2746363))

(assert (=> b!2319118 m!2745999))

(declare-fun m!2747311 () Bool)

(assert (=> b!2319118 m!2747311))

(declare-fun m!2747313 () Bool)

(assert (=> b!2319118 m!2747313))

(declare-fun m!2747315 () Bool)

(assert (=> b!2319118 m!2747315))

(assert (=> b!2319118 m!2747311))

(assert (=> b!2319118 m!2747313))

(assert (=> b!2319118 m!2747315))

(assert (=> b!2319118 m!2746363))

(declare-fun m!2747317 () Bool)

(assert (=> b!2319118 m!2747317))

(assert (=> b!2319118 m!2745999))

(assert (=> b!2319123 m!2745999))

(assert (=> b!2319123 m!2747311))

(assert (=> b!2319123 m!2747315))

(assert (=> b!2319123 m!2745999))

(assert (=> b!2319123 m!2747311))

(assert (=> b!2319123 m!2747315))

(declare-fun m!2747319 () Bool)

(assert (=> b!2319123 m!2747319))

(assert (=> b!2319126 m!2746143))

(assert (=> b!2319126 m!2746145))

(assert (=> b!2319126 m!2746003))

(assert (=> b!2319126 m!2746143))

(assert (=> b!2319126 m!2746145))

(assert (=> b!2319126 m!2746003))

(declare-fun m!2747321 () Bool)

(assert (=> b!2319126 m!2747321))

(assert (=> b!2319124 m!2745999))

(assert (=> b!2319124 m!2746361))

(assert (=> b!2319124 m!2746363))

(assert (=> b!2319124 m!2745999))

(assert (=> b!2319124 m!2746361))

(assert (=> b!2319124 m!2746363))

(declare-fun m!2747323 () Bool)

(assert (=> b!2319124 m!2747323))

(assert (=> b!2319125 m!2746143))

(declare-fun m!2747325 () Bool)

(assert (=> b!2319125 m!2747325))

(declare-fun m!2747327 () Bool)

(assert (=> b!2319125 m!2747327))

(declare-fun m!2747329 () Bool)

(assert (=> b!2319125 m!2747329))

(assert (=> b!2319125 m!2746003))

(assert (=> b!2319125 m!2747325))

(declare-fun m!2747331 () Bool)

(assert (=> b!2319125 m!2747331))

(assert (=> b!2319125 m!2747331))

(assert (=> b!2319125 m!2746003))

(assert (=> b!2319125 m!2747327))

(assert (=> b!2319125 m!2746143))

(assert (=> b!2319122 m!2747325))

(assert (=> b!2319122 m!2747331))

(assert (=> b!2319122 m!2746003))

(assert (=> b!2319122 m!2747325))

(assert (=> b!2319122 m!2747331))

(assert (=> b!2319122 m!2746003))

(declare-fun m!2747333 () Bool)

(assert (=> b!2319122 m!2747333))

(assert (=> d!685248 d!685570))

(assert (=> d!685248 d!685202))

(declare-fun d!685594 () Bool)

(assert (=> d!685594 (= (height!1320 (left!20982 lt!859812)) (ite ((_ is Empty!9057) (left!20982 lt!859812)) 0 (ite ((_ is Leaf!13295) (left!20982 lt!859812)) 1 (cheight!9268 (left!20982 lt!859812)))))))

(assert (=> b!2318591 d!685594))

(declare-fun d!685596 () Bool)

(assert (=> d!685596 (= (height!1320 (right!21312 lt!859812)) (ite ((_ is Empty!9057) (right!21312 lt!859812)) 0 (ite ((_ is Leaf!13295) (right!21312 lt!859812)) 1 (cheight!9268 (right!21312 lt!859812)))))))

(assert (=> b!2318591 d!685596))

(declare-fun d!685598 () Bool)

(declare-fun c!367792 () Bool)

(assert (=> d!685598 (= c!367792 ((_ is Node!9057) (left!20982 (left!20982 acc!252))))))

(declare-fun e!1486577 () Bool)

(assert (=> d!685598 (= (inv!37559 (left!20982 (left!20982 acc!252))) e!1486577)))

(declare-fun b!2319137 () Bool)

(assert (=> b!2319137 (= e!1486577 (inv!37563 (left!20982 (left!20982 acc!252))))))

(declare-fun b!2319138 () Bool)

(declare-fun e!1486578 () Bool)

(assert (=> b!2319138 (= e!1486577 e!1486578)))

(declare-fun res!990769 () Bool)

(assert (=> b!2319138 (= res!990769 (not ((_ is Leaf!13295) (left!20982 (left!20982 acc!252)))))))

(assert (=> b!2319138 (=> res!990769 e!1486578)))

(declare-fun b!2319139 () Bool)

(assert (=> b!2319139 (= e!1486578 (inv!37564 (left!20982 (left!20982 acc!252))))))

(assert (= (and d!685598 c!367792) b!2319137))

(assert (= (and d!685598 (not c!367792)) b!2319138))

(assert (= (and b!2319138 (not res!990769)) b!2319139))

(declare-fun m!2747345 () Bool)

(assert (=> b!2319137 m!2747345))

(declare-fun m!2747347 () Bool)

(assert (=> b!2319139 m!2747347))

(assert (=> b!2318610 d!685598))

(declare-fun d!685602 () Bool)

(declare-fun c!367793 () Bool)

(assert (=> d!685602 (= c!367793 ((_ is Node!9057) (right!21312 (left!20982 acc!252))))))

(declare-fun e!1486579 () Bool)

(assert (=> d!685602 (= (inv!37559 (right!21312 (left!20982 acc!252))) e!1486579)))

(declare-fun b!2319140 () Bool)

(assert (=> b!2319140 (= e!1486579 (inv!37563 (right!21312 (left!20982 acc!252))))))

(declare-fun b!2319141 () Bool)

(declare-fun e!1486580 () Bool)

(assert (=> b!2319141 (= e!1486579 e!1486580)))

(declare-fun res!990770 () Bool)

(assert (=> b!2319141 (= res!990770 (not ((_ is Leaf!13295) (right!21312 (left!20982 acc!252)))))))

(assert (=> b!2319141 (=> res!990770 e!1486580)))

(declare-fun b!2319142 () Bool)

(assert (=> b!2319142 (= e!1486580 (inv!37564 (right!21312 (left!20982 acc!252))))))

(assert (= (and d!685602 c!367793) b!2319140))

(assert (= (and d!685602 (not c!367793)) b!2319141))

(assert (= (and b!2319141 (not res!990770)) b!2319142))

(declare-fun m!2747349 () Bool)

(assert (=> b!2319140 m!2747349))

(declare-fun m!2747351 () Bool)

(assert (=> b!2319142 m!2747351))

(assert (=> b!2318610 d!685602))

(assert (=> b!2318317 d!685270))

(declare-fun b!2319147 () Bool)

(declare-fun res!990776 () Bool)

(declare-fun e!1486584 () Bool)

(assert (=> b!2319147 (=> (not res!990776) (not e!1486584))))

(assert (=> b!2319147 (= res!990776 (isBalanced!2751 (right!21312 lt!859936)))))

(declare-fun d!685606 () Bool)

(declare-fun res!990778 () Bool)

(declare-fun e!1486583 () Bool)

(assert (=> d!685606 (=> res!990778 e!1486583)))

(assert (=> d!685606 (= res!990778 (not ((_ is Node!9057) lt!859936)))))

(assert (=> d!685606 (= (isBalanced!2751 lt!859936) e!1486583)))

(declare-fun b!2319148 () Bool)

(assert (=> b!2319148 (= e!1486583 e!1486584)))

(declare-fun res!990775 () Bool)

(assert (=> b!2319148 (=> (not res!990775) (not e!1486584))))

(assert (=> b!2319148 (= res!990775 (<= (- 1) (- (height!1320 (left!20982 lt!859936)) (height!1320 (right!21312 lt!859936)))))))

(declare-fun b!2319149 () Bool)

(declare-fun res!990777 () Bool)

(assert (=> b!2319149 (=> (not res!990777) (not e!1486584))))

(assert (=> b!2319149 (= res!990777 (not (isEmpty!15774 (left!20982 lt!859936))))))

(declare-fun b!2319150 () Bool)

(declare-fun res!990773 () Bool)

(assert (=> b!2319150 (=> (not res!990773) (not e!1486584))))

(assert (=> b!2319150 (= res!990773 (<= (- (height!1320 (left!20982 lt!859936)) (height!1320 (right!21312 lt!859936))) 1))))

(declare-fun b!2319151 () Bool)

(assert (=> b!2319151 (= e!1486584 (not (isEmpty!15774 (right!21312 lt!859936))))))

(declare-fun b!2319152 () Bool)

(declare-fun res!990774 () Bool)

(assert (=> b!2319152 (=> (not res!990774) (not e!1486584))))

(assert (=> b!2319152 (= res!990774 (isBalanced!2751 (left!20982 lt!859936)))))

(assert (= (and d!685606 (not res!990778)) b!2319148))

(assert (= (and b!2319148 res!990775) b!2319150))

(assert (= (and b!2319150 res!990773) b!2319152))

(assert (= (and b!2319152 res!990774) b!2319147))

(assert (= (and b!2319147 res!990776) b!2319149))

(assert (= (and b!2319149 res!990777) b!2319151))

(declare-fun m!2747361 () Bool)

(assert (=> b!2319149 m!2747361))

(declare-fun m!2747363 () Bool)

(assert (=> b!2319152 m!2747363))

(declare-fun m!2747365 () Bool)

(assert (=> b!2319151 m!2747365))

(declare-fun m!2747367 () Bool)

(assert (=> b!2319150 m!2747367))

(declare-fun m!2747369 () Bool)

(assert (=> b!2319150 m!2747369))

(declare-fun m!2747371 () Bool)

(assert (=> b!2319147 m!2747371))

(assert (=> b!2319148 m!2747367))

(assert (=> b!2319148 m!2747369))

(assert (=> b!2318473 d!685606))

(declare-fun b!2319157 () Bool)

(declare-fun res!990784 () Bool)

(declare-fun e!1486588 () Bool)

(assert (=> b!2319157 (=> (not res!990784) (not e!1486588))))

(assert (=> b!2319157 (= res!990784 (isBalanced!2751 (right!21312 (right!21312 acc!252))))))

(declare-fun d!685610 () Bool)

(declare-fun res!990786 () Bool)

(declare-fun e!1486587 () Bool)

(assert (=> d!685610 (=> res!990786 e!1486587)))

(assert (=> d!685610 (= res!990786 (not ((_ is Node!9057) (right!21312 acc!252))))))

(assert (=> d!685610 (= (isBalanced!2751 (right!21312 acc!252)) e!1486587)))

(declare-fun b!2319158 () Bool)

(assert (=> b!2319158 (= e!1486587 e!1486588)))

(declare-fun res!990783 () Bool)

(assert (=> b!2319158 (=> (not res!990783) (not e!1486588))))

(assert (=> b!2319158 (= res!990783 (<= (- 1) (- (height!1320 (left!20982 (right!21312 acc!252))) (height!1320 (right!21312 (right!21312 acc!252))))))))

(declare-fun b!2319159 () Bool)

(declare-fun res!990785 () Bool)

(assert (=> b!2319159 (=> (not res!990785) (not e!1486588))))

(assert (=> b!2319159 (= res!990785 (not (isEmpty!15774 (left!20982 (right!21312 acc!252)))))))

(declare-fun b!2319160 () Bool)

(declare-fun res!990781 () Bool)

(assert (=> b!2319160 (=> (not res!990781) (not e!1486588))))

(assert (=> b!2319160 (= res!990781 (<= (- (height!1320 (left!20982 (right!21312 acc!252))) (height!1320 (right!21312 (right!21312 acc!252)))) 1))))

(declare-fun b!2319161 () Bool)

(assert (=> b!2319161 (= e!1486588 (not (isEmpty!15774 (right!21312 (right!21312 acc!252)))))))

(declare-fun b!2319162 () Bool)

(declare-fun res!990782 () Bool)

(assert (=> b!2319162 (=> (not res!990782) (not e!1486588))))

(assert (=> b!2319162 (= res!990782 (isBalanced!2751 (left!20982 (right!21312 acc!252))))))

(assert (= (and d!685610 (not res!990786)) b!2319158))

(assert (= (and b!2319158 res!990783) b!2319160))

(assert (= (and b!2319160 res!990781) b!2319162))

(assert (= (and b!2319162 res!990782) b!2319157))

(assert (= (and b!2319157 res!990784) b!2319159))

(assert (= (and b!2319159 res!990785) b!2319161))

(declare-fun m!2747379 () Bool)

(assert (=> b!2319159 m!2747379))

(declare-fun m!2747381 () Bool)

(assert (=> b!2319162 m!2747381))

(declare-fun m!2747383 () Bool)

(assert (=> b!2319161 m!2747383))

(declare-fun m!2747385 () Bool)

(assert (=> b!2319160 m!2747385))

(declare-fun m!2747387 () Bool)

(assert (=> b!2319160 m!2747387))

(declare-fun m!2747391 () Bool)

(assert (=> b!2319157 m!2747391))

(assert (=> b!2319158 m!2747385))

(assert (=> b!2319158 m!2747387))

(assert (=> b!2318238 d!685610))

(declare-fun d!685614 () Bool)

(declare-fun lt!860062 () Int)

(assert (=> d!685614 (>= lt!860062 0)))

(declare-fun e!1486591 () Int)

(assert (=> d!685614 (= lt!860062 e!1486591)))

(declare-fun c!367797 () Bool)

(assert (=> d!685614 (= c!367797 ((_ is Nil!27652) lt!859943))))

(assert (=> d!685614 (= (size!21891 lt!859943) lt!860062)))

(declare-fun b!2319167 () Bool)

(assert (=> b!2319167 (= e!1486591 0)))

(declare-fun b!2319168 () Bool)

(assert (=> b!2319168 (= e!1486591 (+ 1 (size!21891 (t!207382 lt!859943))))))

(assert (= (and d!685614 c!367797) b!2319167))

(assert (= (and d!685614 (not c!367797)) b!2319168))

(declare-fun m!2747399 () Bool)

(assert (=> b!2319168 m!2747399))

(assert (=> b!2318502 d!685614))

(declare-fun d!685618 () Bool)

(declare-fun lt!860063 () Int)

(assert (=> d!685618 (>= lt!860063 0)))

(declare-fun e!1486593 () Int)

(assert (=> d!685618 (= lt!860063 e!1486593)))

(declare-fun c!367798 () Bool)

(assert (=> d!685618 (= c!367798 ((_ is Nil!27652) lt!859808))))

(assert (=> d!685618 (= (size!21891 lt!859808) lt!860063)))

(declare-fun b!2319171 () Bool)

(assert (=> b!2319171 (= e!1486593 0)))

(declare-fun b!2319172 () Bool)

(assert (=> b!2319172 (= e!1486593 (+ 1 (size!21891 (t!207382 lt!859808))))))

(assert (= (and d!685618 c!367798) b!2319171))

(assert (= (and d!685618 (not c!367798)) b!2319172))

(assert (=> b!2319172 m!2746661))

(assert (=> b!2318502 d!685618))

(assert (=> b!2318502 d!685374))

(declare-fun b!2319176 () Bool)

(declare-fun e!1486595 () Bool)

(declare-fun lt!860064 () List!27750)

(assert (=> b!2319176 (= e!1486595 (or (not (= (list!10985 (right!21312 acc!252)) Nil!27652)) (= lt!860064 (list!10985 (left!20982 acc!252)))))))

(declare-fun b!2319175 () Bool)

(declare-fun res!990791 () Bool)

(assert (=> b!2319175 (=> (not res!990791) (not e!1486595))))

(assert (=> b!2319175 (= res!990791 (= (size!21891 lt!860064) (+ (size!21891 (list!10985 (left!20982 acc!252))) (size!21891 (list!10985 (right!21312 acc!252))))))))

(declare-fun b!2319173 () Bool)

(declare-fun e!1486594 () List!27750)

(assert (=> b!2319173 (= e!1486594 (list!10985 (right!21312 acc!252)))))

(declare-fun b!2319174 () Bool)

(assert (=> b!2319174 (= e!1486594 (Cons!27652 (h!33053 (list!10985 (left!20982 acc!252))) (++!6807 (t!207382 (list!10985 (left!20982 acc!252))) (list!10985 (right!21312 acc!252)))))))

(declare-fun d!685620 () Bool)

(assert (=> d!685620 e!1486595))

(declare-fun res!990792 () Bool)

(assert (=> d!685620 (=> (not res!990792) (not e!1486595))))

(assert (=> d!685620 (= res!990792 (= (content!3736 lt!860064) ((_ map or) (content!3736 (list!10985 (left!20982 acc!252))) (content!3736 (list!10985 (right!21312 acc!252))))))))

(assert (=> d!685620 (= lt!860064 e!1486594)))

(declare-fun c!367799 () Bool)

(assert (=> d!685620 (= c!367799 ((_ is Nil!27652) (list!10985 (left!20982 acc!252))))))

(assert (=> d!685620 (= (++!6807 (list!10985 (left!20982 acc!252)) (list!10985 (right!21312 acc!252))) lt!860064)))

(assert (= (and d!685620 c!367799) b!2319173))

(assert (= (and d!685620 (not c!367799)) b!2319174))

(assert (= (and d!685620 res!990792) b!2319175))

(assert (= (and b!2319175 res!990791) b!2319176))

(declare-fun m!2747405 () Bool)

(assert (=> b!2319175 m!2747405))

(assert (=> b!2319175 m!2746143))

(declare-fun m!2747407 () Bool)

(assert (=> b!2319175 m!2747407))

(assert (=> b!2319175 m!2746145))

(declare-fun m!2747409 () Bool)

(assert (=> b!2319175 m!2747409))

(assert (=> b!2319174 m!2746145))

(declare-fun m!2747413 () Bool)

(assert (=> b!2319174 m!2747413))

(declare-fun m!2747417 () Bool)

(assert (=> d!685620 m!2747417))

(assert (=> d!685620 m!2746143))

(declare-fun m!2747419 () Bool)

(assert (=> d!685620 m!2747419))

(assert (=> d!685620 m!2746145))

(declare-fun m!2747421 () Bool)

(assert (=> d!685620 m!2747421))

(assert (=> b!2318302 d!685620))

(declare-fun b!2319186 () Bool)

(declare-fun e!1486599 () List!27750)

(assert (=> b!2319186 (= e!1486599 (++!6807 (list!10985 (left!20982 (left!20982 acc!252))) (list!10985 (right!21312 (left!20982 acc!252)))))))

(declare-fun b!2319183 () Bool)

(declare-fun e!1486598 () List!27750)

(assert (=> b!2319183 (= e!1486598 Nil!27652)))

(declare-fun d!685624 () Bool)

(declare-fun c!367800 () Bool)

(assert (=> d!685624 (= c!367800 ((_ is Empty!9057) (left!20982 acc!252)))))

(assert (=> d!685624 (= (list!10985 (left!20982 acc!252)) e!1486598)))

(declare-fun b!2319185 () Bool)

(assert (=> b!2319185 (= e!1486599 (list!10984 (xs!12011 (left!20982 acc!252))))))

(declare-fun b!2319184 () Bool)

(assert (=> b!2319184 (= e!1486598 e!1486599)))

(declare-fun c!367801 () Bool)

(assert (=> b!2319184 (= c!367801 ((_ is Leaf!13295) (left!20982 acc!252)))))

(assert (= (and d!685624 c!367800) b!2319183))

(assert (= (and d!685624 (not c!367800)) b!2319184))

(assert (= (and b!2319184 c!367801) b!2319185))

(assert (= (and b!2319184 (not c!367801)) b!2319186))

(declare-fun m!2747431 () Bool)

(assert (=> b!2319186 m!2747431))

(declare-fun m!2747433 () Bool)

(assert (=> b!2319186 m!2747433))

(assert (=> b!2319186 m!2747431))

(assert (=> b!2319186 m!2747433))

(declare-fun m!2747435 () Bool)

(assert (=> b!2319186 m!2747435))

(assert (=> b!2319185 m!2747017))

(assert (=> b!2318302 d!685624))

(declare-fun b!2319196 () Bool)

(declare-fun e!1486603 () List!27750)

(assert (=> b!2319196 (= e!1486603 (++!6807 (list!10985 (left!20982 (right!21312 acc!252))) (list!10985 (right!21312 (right!21312 acc!252)))))))

(declare-fun b!2319193 () Bool)

(declare-fun e!1486602 () List!27750)

(assert (=> b!2319193 (= e!1486602 Nil!27652)))

(declare-fun d!685628 () Bool)

(declare-fun c!367802 () Bool)

(assert (=> d!685628 (= c!367802 ((_ is Empty!9057) (right!21312 acc!252)))))

(assert (=> d!685628 (= (list!10985 (right!21312 acc!252)) e!1486602)))

(declare-fun b!2319195 () Bool)

(assert (=> b!2319195 (= e!1486603 (list!10984 (xs!12011 (right!21312 acc!252))))))

(declare-fun b!2319194 () Bool)

(assert (=> b!2319194 (= e!1486602 e!1486603)))

(declare-fun c!367803 () Bool)

(assert (=> b!2319194 (= c!367803 ((_ is Leaf!13295) (right!21312 acc!252)))))

(assert (= (and d!685628 c!367802) b!2319193))

(assert (= (and d!685628 (not c!367802)) b!2319194))

(assert (= (and b!2319194 c!367803) b!2319195))

(assert (= (and b!2319194 (not c!367803)) b!2319196))

(assert (=> b!2319196 m!2747325))

(assert (=> b!2319196 m!2747331))

(assert (=> b!2319196 m!2747325))

(assert (=> b!2319196 m!2747331))

(declare-fun m!2747443 () Bool)

(assert (=> b!2319196 m!2747443))

(assert (=> b!2319195 m!2747281))

(assert (=> b!2318302 d!685628))

(declare-fun d!685630 () Bool)

(assert (=> d!685630 (= (height!1320 (ite c!367605 (left!20982 acc!252) (left!20982 lt!859807))) (ite ((_ is Empty!9057) (ite c!367605 (left!20982 acc!252) (left!20982 lt!859807))) 0 (ite ((_ is Leaf!13295) (ite c!367605 (left!20982 acc!252) (left!20982 lt!859807))) 1 (cheight!9268 (ite c!367605 (left!20982 acc!252) (left!20982 lt!859807))))))))

(assert (=> bm!138186 d!685630))

(assert (=> b!2318593 d!685594))

(assert (=> b!2318593 d!685596))

(declare-fun b!2319200 () Bool)

(declare-fun e!1486605 () Int)

(assert (=> b!2319200 (= e!1486605 (size!21891 (drop!1504 lt!859809 512)))))

(declare-fun b!2319201 () Bool)

(declare-fun e!1486608 () Bool)

(declare-fun lt!860065 () List!27750)

(declare-fun e!1486607 () Int)

(assert (=> b!2319201 (= e!1486608 (= (size!21891 lt!860065) e!1486607))))

(declare-fun c!367805 () Bool)

(assert (=> b!2319201 (= c!367805 (<= (- (size!21891 lt!859809) 512) 0))))

(declare-fun d!685634 () Bool)

(assert (=> d!685634 e!1486608))

(declare-fun res!990808 () Bool)

(assert (=> d!685634 (=> (not res!990808) (not e!1486608))))

(assert (=> d!685634 (= res!990808 (= ((_ map implies) (content!3736 lt!860065) (content!3736 (drop!1504 lt!859809 512))) ((as const (InoxSet T!43796)) true)))))

(declare-fun e!1486606 () List!27750)

(assert (=> d!685634 (= lt!860065 e!1486606)))

(declare-fun c!367804 () Bool)

(assert (=> d!685634 (= c!367804 (or ((_ is Nil!27652) (drop!1504 lt!859809 512)) (<= (- (size!21891 lt!859809) 512) 0)))))

(assert (=> d!685634 (= (take!481 (drop!1504 lt!859809 512) (- (size!21891 lt!859809) 512)) lt!860065)))

(declare-fun b!2319202 () Bool)

(assert (=> b!2319202 (= e!1486607 e!1486605)))

(declare-fun c!367806 () Bool)

(assert (=> b!2319202 (= c!367806 (>= (- (size!21891 lt!859809) 512) (size!21891 (drop!1504 lt!859809 512))))))

(declare-fun b!2319203 () Bool)

(assert (=> b!2319203 (= e!1486607 0)))

(declare-fun b!2319204 () Bool)

(assert (=> b!2319204 (= e!1486606 Nil!27652)))

(declare-fun b!2319205 () Bool)

(assert (=> b!2319205 (= e!1486605 (- (size!21891 lt!859809) 512))))

(declare-fun b!2319206 () Bool)

(assert (=> b!2319206 (= e!1486606 (Cons!27652 (h!33053 (drop!1504 lt!859809 512)) (take!481 (t!207382 (drop!1504 lt!859809 512)) (- (- (size!21891 lt!859809) 512) 1))))))

(assert (= (and d!685634 c!367804) b!2319204))

(assert (= (and d!685634 (not c!367804)) b!2319206))

(assert (= (and d!685634 res!990808) b!2319201))

(assert (= (and b!2319201 c!367805) b!2319203))

(assert (= (and b!2319201 (not c!367805)) b!2319202))

(assert (= (and b!2319202 c!367806) b!2319200))

(assert (= (and b!2319202 (not c!367806)) b!2319205))

(assert (=> b!2319202 m!2746463))

(declare-fun m!2747457 () Bool)

(assert (=> b!2319202 m!2747457))

(declare-fun m!2747459 () Bool)

(assert (=> d!685634 m!2747459))

(assert (=> d!685634 m!2746463))

(declare-fun m!2747461 () Bool)

(assert (=> d!685634 m!2747461))

(declare-fun m!2747463 () Bool)

(assert (=> b!2319201 m!2747463))

(assert (=> b!2319200 m!2746463))

(assert (=> b!2319200 m!2747457))

(declare-fun m!2747465 () Bool)

(assert (=> b!2319206 m!2747465))

(assert (=> d!685292 d!685634))

(declare-fun b!2319214 () Bool)

(declare-fun e!1486617 () Bool)

(declare-fun lt!860067 () List!27750)

(declare-fun e!1486614 () Int)

(assert (=> b!2319214 (= e!1486617 (= (size!21891 lt!860067) e!1486614))))

(declare-fun c!367810 () Bool)

(assert (=> b!2319214 (= c!367810 (<= 512 0))))

(declare-fun bm!138232 () Bool)

(declare-fun call!138237 () Int)

(assert (=> bm!138232 (= call!138237 (size!21891 lt!859809))))

(declare-fun d!685640 () Bool)

(assert (=> d!685640 e!1486617))

(declare-fun res!990810 () Bool)

(assert (=> d!685640 (=> (not res!990810) (not e!1486617))))

(assert (=> d!685640 (= res!990810 (= ((_ map implies) (content!3736 lt!860067) (content!3736 lt!859809)) ((as const (InoxSet T!43796)) true)))))

(declare-fun e!1486616 () List!27750)

(assert (=> d!685640 (= lt!860067 e!1486616)))

(declare-fun c!367811 () Bool)

(assert (=> d!685640 (= c!367811 ((_ is Nil!27652) lt!859809))))

(assert (=> d!685640 (= (drop!1504 lt!859809 512) lt!860067)))

(declare-fun b!2319215 () Bool)

(declare-fun e!1486613 () Int)

(assert (=> b!2319215 (= e!1486613 (- call!138237 512))))

(declare-fun b!2319216 () Bool)

(declare-fun e!1486615 () List!27750)

(assert (=> b!2319216 (= e!1486615 lt!859809)))

(declare-fun b!2319217 () Bool)

(assert (=> b!2319217 (= e!1486616 e!1486615)))

(declare-fun c!367813 () Bool)

(assert (=> b!2319217 (= c!367813 (<= 512 0))))

(declare-fun b!2319218 () Bool)

(assert (=> b!2319218 (= e!1486614 e!1486613)))

(declare-fun c!367812 () Bool)

(assert (=> b!2319218 (= c!367812 (>= 512 call!138237))))

(declare-fun b!2319219 () Bool)

(assert (=> b!2319219 (= e!1486613 0)))

(declare-fun b!2319220 () Bool)

(assert (=> b!2319220 (= e!1486616 Nil!27652)))

(declare-fun b!2319221 () Bool)

(assert (=> b!2319221 (= e!1486615 (drop!1504 (t!207382 lt!859809) (- 512 1)))))

(declare-fun b!2319222 () Bool)

(assert (=> b!2319222 (= e!1486614 call!138237)))

(assert (= (and d!685640 c!367811) b!2319220))

(assert (= (and d!685640 (not c!367811)) b!2319217))

(assert (= (and b!2319217 c!367813) b!2319216))

(assert (= (and b!2319217 (not c!367813)) b!2319221))

(assert (= (and d!685640 res!990810) b!2319214))

(assert (= (and b!2319214 c!367810) b!2319222))

(assert (= (and b!2319214 (not c!367810)) b!2319218))

(assert (= (and b!2319218 c!367812) b!2319219))

(assert (= (and b!2319218 (not c!367812)) b!2319215))

(assert (= (or b!2319222 b!2319218 b!2319215) bm!138232))

(declare-fun m!2747477 () Bool)

(assert (=> b!2319214 m!2747477))

(assert (=> bm!138232 m!2746025))

(declare-fun m!2747479 () Bool)

(assert (=> d!685640 m!2747479))

(assert (=> d!685640 m!2747101))

(declare-fun m!2747481 () Bool)

(assert (=> b!2319221 m!2747481))

(assert (=> d!685292 d!685640))

(assert (=> bm!138100 d!685346))

(declare-fun d!685644 () Bool)

(declare-fun lt!860069 () Int)

(assert (=> d!685644 (>= lt!860069 0)))

(declare-fun e!1486623 () Int)

(assert (=> d!685644 (= lt!860069 e!1486623)))

(declare-fun c!367818 () Bool)

(assert (=> d!685644 (= c!367818 ((_ is Nil!27652) lt!859957))))

(assert (=> d!685644 (= (size!21891 lt!859957) lt!860069)))

(declare-fun b!2319232 () Bool)

(assert (=> b!2319232 (= e!1486623 0)))

(declare-fun b!2319233 () Bool)

(assert (=> b!2319233 (= e!1486623 (+ 1 (size!21891 (t!207382 lt!859957))))))

(assert (= (and d!685644 c!367818) b!2319232))

(assert (= (and d!685644 (not c!367818)) b!2319233))

(declare-fun m!2747483 () Bool)

(assert (=> b!2319233 m!2747483))

(assert (=> b!2318578 d!685644))

(assert (=> b!2318578 d!685618))

(declare-fun d!685646 () Bool)

(declare-fun lt!860070 () Int)

(assert (=> d!685646 (>= lt!860070 0)))

(declare-fun e!1486624 () Int)

(assert (=> d!685646 (= lt!860070 e!1486624)))

(declare-fun c!367819 () Bool)

(assert (=> d!685646 (= c!367819 ((_ is Nil!27652) lt!859810))))

(assert (=> d!685646 (= (size!21891 lt!859810) lt!860070)))

(declare-fun b!2319234 () Bool)

(assert (=> b!2319234 (= e!1486624 0)))

(declare-fun b!2319235 () Bool)

(assert (=> b!2319235 (= e!1486624 (+ 1 (size!21891 (t!207382 lt!859810))))))

(assert (= (and d!685646 c!367819) b!2319234))

(assert (= (and d!685646 (not c!367819)) b!2319235))

(declare-fun m!2747485 () Bool)

(assert (=> b!2319235 m!2747485))

(assert (=> b!2318578 d!685646))

(declare-fun d!685648 () Bool)

(declare-fun res!990812 () Bool)

(declare-fun e!1486625 () Bool)

(assert (=> d!685648 (=> (not res!990812) (not e!1486625))))

(assert (=> d!685648 (= res!990812 (= (csize!18344 (right!21312 acc!252)) (+ (size!21893 (left!20982 (right!21312 acc!252))) (size!21893 (right!21312 (right!21312 acc!252))))))))

(assert (=> d!685648 (= (inv!37563 (right!21312 acc!252)) e!1486625)))

(declare-fun b!2319236 () Bool)

(declare-fun res!990813 () Bool)

(assert (=> b!2319236 (=> (not res!990813) (not e!1486625))))

(assert (=> b!2319236 (= res!990813 (and (not (= (left!20982 (right!21312 acc!252)) Empty!9057)) (not (= (right!21312 (right!21312 acc!252)) Empty!9057))))))

(declare-fun b!2319237 () Bool)

(declare-fun res!990814 () Bool)

(assert (=> b!2319237 (=> (not res!990814) (not e!1486625))))

(assert (=> b!2319237 (= res!990814 (= (cheight!9268 (right!21312 acc!252)) (+ (max!0 (height!1320 (left!20982 (right!21312 acc!252))) (height!1320 (right!21312 (right!21312 acc!252)))) 1)))))

(declare-fun b!2319238 () Bool)

(assert (=> b!2319238 (= e!1486625 (<= 0 (cheight!9268 (right!21312 acc!252))))))

(assert (= (and d!685648 res!990812) b!2319236))

(assert (= (and b!2319236 res!990813) b!2319237))

(assert (= (and b!2319237 res!990814) b!2319238))

(declare-fun m!2747493 () Bool)

(assert (=> d!685648 m!2747493))

(declare-fun m!2747497 () Bool)

(assert (=> d!685648 m!2747497))

(assert (=> b!2319237 m!2747385))

(assert (=> b!2319237 m!2747387))

(assert (=> b!2319237 m!2747385))

(assert (=> b!2319237 m!2747387))

(declare-fun m!2747501 () Bool)

(assert (=> b!2319237 m!2747501))

(assert (=> b!2318587 d!685648))

(declare-fun b!2319246 () Bool)

(declare-fun e!1486629 () Bool)

(declare-fun lt!860071 () List!27750)

(assert (=> b!2319246 (= e!1486629 (or (not (= (list!10985 (right!21312 lt!859807)) Nil!27652)) (= lt!860071 (list!10985 (left!20982 lt!859807)))))))

(declare-fun b!2319245 () Bool)

(declare-fun res!990815 () Bool)

(assert (=> b!2319245 (=> (not res!990815) (not e!1486629))))

(assert (=> b!2319245 (= res!990815 (= (size!21891 lt!860071) (+ (size!21891 (list!10985 (left!20982 lt!859807))) (size!21891 (list!10985 (right!21312 lt!859807))))))))

(declare-fun b!2319243 () Bool)

(declare-fun e!1486628 () List!27750)

(assert (=> b!2319243 (= e!1486628 (list!10985 (right!21312 lt!859807)))))

(declare-fun b!2319244 () Bool)

(assert (=> b!2319244 (= e!1486628 (Cons!27652 (h!33053 (list!10985 (left!20982 lt!859807))) (++!6807 (t!207382 (list!10985 (left!20982 lt!859807))) (list!10985 (right!21312 lt!859807)))))))

(declare-fun d!685654 () Bool)

(assert (=> d!685654 e!1486629))

(declare-fun res!990816 () Bool)

(assert (=> d!685654 (=> (not res!990816) (not e!1486629))))

(assert (=> d!685654 (= res!990816 (= (content!3736 lt!860071) ((_ map or) (content!3736 (list!10985 (left!20982 lt!859807))) (content!3736 (list!10985 (right!21312 lt!859807))))))))

(assert (=> d!685654 (= lt!860071 e!1486628)))

(declare-fun c!367822 () Bool)

(assert (=> d!685654 (= c!367822 ((_ is Nil!27652) (list!10985 (left!20982 lt!859807))))))

(assert (=> d!685654 (= (++!6807 (list!10985 (left!20982 lt!859807)) (list!10985 (right!21312 lt!859807))) lt!860071)))

(assert (= (and d!685654 c!367822) b!2319243))

(assert (= (and d!685654 (not c!367822)) b!2319244))

(assert (= (and d!685654 res!990816) b!2319245))

(assert (= (and b!2319245 res!990815) b!2319246))

(declare-fun m!2747505 () Bool)

(assert (=> b!2319245 m!2747505))

(assert (=> b!2319245 m!2746361))

(declare-fun m!2747507 () Bool)

(assert (=> b!2319245 m!2747507))

(assert (=> b!2319245 m!2746363))

(declare-fun m!2747509 () Bool)

(assert (=> b!2319245 m!2747509))

(assert (=> b!2319244 m!2746363))

(declare-fun m!2747511 () Bool)

(assert (=> b!2319244 m!2747511))

(declare-fun m!2747515 () Bool)

(assert (=> d!685654 m!2747515))

(assert (=> d!685654 m!2746361))

(declare-fun m!2747517 () Bool)

(assert (=> d!685654 m!2747517))

(assert (=> d!685654 m!2746363))

(declare-fun m!2747519 () Bool)

(assert (=> d!685654 m!2747519))

(assert (=> b!2318511 d!685654))

(declare-fun b!2319254 () Bool)

(declare-fun e!1486633 () List!27750)

(assert (=> b!2319254 (= e!1486633 (++!6807 (list!10985 (left!20982 (left!20982 lt!859807))) (list!10985 (right!21312 (left!20982 lt!859807)))))))

(declare-fun b!2319251 () Bool)

(declare-fun e!1486632 () List!27750)

(assert (=> b!2319251 (= e!1486632 Nil!27652)))

(declare-fun d!685660 () Bool)

(declare-fun c!367825 () Bool)

(assert (=> d!685660 (= c!367825 ((_ is Empty!9057) (left!20982 lt!859807)))))

(assert (=> d!685660 (= (list!10985 (left!20982 lt!859807)) e!1486632)))

(declare-fun b!2319253 () Bool)

(assert (=> b!2319253 (= e!1486633 (list!10984 (xs!12011 (left!20982 lt!859807))))))

(declare-fun b!2319252 () Bool)

(assert (=> b!2319252 (= e!1486632 e!1486633)))

(declare-fun c!367826 () Bool)

(assert (=> b!2319252 (= c!367826 ((_ is Leaf!13295) (left!20982 lt!859807)))))

(assert (= (and d!685660 c!367825) b!2319251))

(assert (= (and d!685660 (not c!367825)) b!2319252))

(assert (= (and b!2319252 c!367826) b!2319253))

(assert (= (and b!2319252 (not c!367826)) b!2319254))

(assert (=> b!2319254 m!2747311))

(assert (=> b!2319254 m!2747315))

(assert (=> b!2319254 m!2747311))

(assert (=> b!2319254 m!2747315))

(declare-fun m!2747529 () Bool)

(assert (=> b!2319254 m!2747529))

(declare-fun m!2747531 () Bool)

(assert (=> b!2319253 m!2747531))

(assert (=> b!2318511 d!685660))

(declare-fun b!2319259 () Bool)

(declare-fun e!1486636 () List!27750)

(assert (=> b!2319259 (= e!1486636 (++!6807 (list!10985 (left!20982 (right!21312 lt!859807))) (list!10985 (right!21312 (right!21312 lt!859807)))))))

(declare-fun b!2319256 () Bool)

(declare-fun e!1486635 () List!27750)

(assert (=> b!2319256 (= e!1486635 Nil!27652)))

(declare-fun d!685664 () Bool)

(declare-fun c!367827 () Bool)

(assert (=> d!685664 (= c!367827 ((_ is Empty!9057) (right!21312 lt!859807)))))

(assert (=> d!685664 (= (list!10985 (right!21312 lt!859807)) e!1486635)))

(declare-fun b!2319258 () Bool)

(assert (=> b!2319258 (= e!1486636 (list!10984 (xs!12011 (right!21312 lt!859807))))))

(declare-fun b!2319257 () Bool)

(assert (=> b!2319257 (= e!1486635 e!1486636)))

(declare-fun c!367828 () Bool)

(assert (=> b!2319257 (= c!367828 ((_ is Leaf!13295) (right!21312 lt!859807)))))

(assert (= (and d!685664 c!367827) b!2319256))

(assert (= (and d!685664 (not c!367827)) b!2319257))

(assert (= (and b!2319257 c!367828) b!2319258))

(assert (= (and b!2319257 (not c!367828)) b!2319259))

(declare-fun m!2747533 () Bool)

(assert (=> b!2319259 m!2747533))

(declare-fun m!2747535 () Bool)

(assert (=> b!2319259 m!2747535))

(assert (=> b!2319259 m!2747533))

(assert (=> b!2319259 m!2747535))

(declare-fun m!2747541 () Bool)

(assert (=> b!2319259 m!2747541))

(declare-fun m!2747543 () Bool)

(assert (=> b!2319258 m!2747543))

(assert (=> b!2318511 d!685664))

(declare-fun d!685668 () Bool)

(assert (=> d!685668 (= (inv!37560 (xs!12011 (right!21312 acc!252))) (<= (size!21891 (innerList!9117 (xs!12011 (right!21312 acc!252)))) 2147483647))))

(declare-fun bs!458938 () Bool)

(assert (= bs!458938 d!685668))

(declare-fun m!2747545 () Bool)

(assert (=> bs!458938 m!2747545))

(assert (=> b!2318614 d!685668))

(declare-fun d!685670 () Bool)

(assert (=> d!685670 (= (slice!686 (list!10984 arr!18) 512 lt!859816) (take!481 (drop!1504 (list!10984 arr!18) 512) (- lt!859816 512)))))

(declare-fun bs!458939 () Bool)

(assert (= bs!458939 d!685670))

(assert (=> bs!458939 m!2746027))

(declare-fun m!2747547 () Bool)

(assert (=> bs!458939 m!2747547))

(assert (=> bs!458939 m!2747547))

(declare-fun m!2747553 () Bool)

(assert (=> bs!458939 m!2747553))

(assert (=> d!685236 d!685670))

(assert (=> d!685236 d!685286))

(declare-fun d!685672 () Bool)

(declare-fun _$4!1102 () IArray!18119)

(assert (=> d!685672 (= _$4!1102 (IArray!18120 (slice!686 (list!10984 arr!18) 512 lt!859816)))))

(declare-fun e!1486639 () Bool)

(assert (=> d!685672 (and (inv!37560 _$4!1102) e!1486639)))

(assert (=> d!685672 (= (choose!13580 arr!18 512 lt!859816) _$4!1102)))

(declare-fun b!2319264 () Bool)

(declare-fun tp!736091 () Bool)

(assert (=> b!2319264 (= e!1486639 tp!736091)))

(assert (= d!685672 b!2319264))

(assert (=> d!685672 m!2746027))

(assert (=> d!685672 m!2746027))

(assert (=> d!685672 m!2746151))

(declare-fun m!2747565 () Bool)

(assert (=> d!685672 m!2747565))

(assert (=> d!685236 d!685672))

(declare-fun b!2319273 () Bool)

(declare-fun e!1486644 () List!27750)

(assert (=> b!2319273 (= e!1486644 (++!6807 (list!10985 (left!20982 lt!859876)) (list!10985 (right!21312 lt!859876))))))

(declare-fun b!2319270 () Bool)

(declare-fun e!1486643 () List!27750)

(assert (=> b!2319270 (= e!1486643 Nil!27652)))

(declare-fun d!685678 () Bool)

(declare-fun c!367832 () Bool)

(assert (=> d!685678 (= c!367832 ((_ is Empty!9057) lt!859876))))

(assert (=> d!685678 (= (list!10985 lt!859876) e!1486643)))

(declare-fun b!2319272 () Bool)

(assert (=> b!2319272 (= e!1486644 (list!10984 (xs!12011 lt!859876)))))

(declare-fun b!2319271 () Bool)

(assert (=> b!2319271 (= e!1486643 e!1486644)))

(declare-fun c!367833 () Bool)

(assert (=> b!2319271 (= c!367833 ((_ is Leaf!13295) lt!859876))))

(assert (= (and d!685678 c!367832) b!2319270))

(assert (= (and d!685678 (not c!367832)) b!2319271))

(assert (= (and b!2319271 c!367833) b!2319272))

(assert (= (and b!2319271 (not c!367833)) b!2319273))

(declare-fun m!2747567 () Bool)

(assert (=> b!2319273 m!2747567))

(declare-fun m!2747569 () Bool)

(assert (=> b!2319273 m!2747569))

(assert (=> b!2319273 m!2747567))

(assert (=> b!2319273 m!2747569))

(declare-fun m!2747571 () Bool)

(assert (=> b!2319273 m!2747571))

(declare-fun m!2747573 () Bool)

(assert (=> b!2319272 m!2747573))

(assert (=> b!2318382 d!685678))

(declare-fun e!1486646 () Bool)

(declare-fun lt!860087 () List!27750)

(declare-fun b!2319277 () Bool)

(assert (=> b!2319277 (= e!1486646 (or (not (= (list!10984 lt!859819) Nil!27652)) (= lt!860087 (list!10985 (++!6808 acc!252 lt!859807)))))))

(declare-fun b!2319276 () Bool)

(declare-fun res!990821 () Bool)

(assert (=> b!2319276 (=> (not res!990821) (not e!1486646))))

(assert (=> b!2319276 (= res!990821 (= (size!21891 lt!860087) (+ (size!21891 (list!10985 (++!6808 acc!252 lt!859807))) (size!21891 (list!10984 lt!859819)))))))

(declare-fun b!2319274 () Bool)

(declare-fun e!1486645 () List!27750)

(assert (=> b!2319274 (= e!1486645 (list!10984 lt!859819))))

(declare-fun b!2319275 () Bool)

(assert (=> b!2319275 (= e!1486645 (Cons!27652 (h!33053 (list!10985 (++!6808 acc!252 lt!859807))) (++!6807 (t!207382 (list!10985 (++!6808 acc!252 lt!859807))) (list!10984 lt!859819))))))

(declare-fun d!685680 () Bool)

(assert (=> d!685680 e!1486646))

(declare-fun res!990822 () Bool)

(assert (=> d!685680 (=> (not res!990822) (not e!1486646))))

(assert (=> d!685680 (= res!990822 (= (content!3736 lt!860087) ((_ map or) (content!3736 (list!10985 (++!6808 acc!252 lt!859807))) (content!3736 (list!10984 lt!859819)))))))

(assert (=> d!685680 (= lt!860087 e!1486645)))

(declare-fun c!367834 () Bool)

(assert (=> d!685680 (= c!367834 ((_ is Nil!27652) (list!10985 (++!6808 acc!252 lt!859807))))))

(assert (=> d!685680 (= (++!6807 (list!10985 (++!6808 acc!252 lt!859807)) (list!10984 lt!859819)) lt!860087)))

(assert (= (and d!685680 c!367834) b!2319274))

(assert (= (and d!685680 (not c!367834)) b!2319275))

(assert (= (and d!685680 res!990822) b!2319276))

(assert (= (and b!2319276 res!990821) b!2319277))

(declare-fun m!2747605 () Bool)

(assert (=> b!2319276 m!2747605))

(assert (=> b!2319276 m!2746197))

(declare-fun m!2747617 () Bool)

(assert (=> b!2319276 m!2747617))

(assert (=> b!2319276 m!2746001))

(assert (=> b!2319276 m!2746623))

(assert (=> b!2319275 m!2746001))

(declare-fun m!2747623 () Bool)

(assert (=> b!2319275 m!2747623))

(declare-fun m!2747625 () Bool)

(assert (=> d!685680 m!2747625))

(assert (=> d!685680 m!2746197))

(declare-fun m!2747627 () Bool)

(assert (=> d!685680 m!2747627))

(assert (=> d!685680 m!2746001))

(declare-fun m!2747629 () Bool)

(assert (=> d!685680 m!2747629))

(assert (=> b!2318382 d!685680))

(assert (=> b!2318382 d!685422))

(assert (=> b!2318382 d!685266))

(declare-fun e!1486651 () Bool)

(declare-fun lt!860090 () List!27750)

(declare-fun b!2319287 () Bool)

(assert (=> b!2319287 (= e!1486651 (or (not (= lt!859817 Nil!27652)) (= lt!860090 (t!207382 lt!859811))))))

(declare-fun b!2319286 () Bool)

(declare-fun res!990825 () Bool)

(assert (=> b!2319286 (=> (not res!990825) (not e!1486651))))

(assert (=> b!2319286 (= res!990825 (= (size!21891 lt!860090) (+ (size!21891 (t!207382 lt!859811)) (size!21891 lt!859817))))))

(declare-fun b!2319284 () Bool)

(declare-fun e!1486650 () List!27750)

(assert (=> b!2319284 (= e!1486650 lt!859817)))

(declare-fun b!2319285 () Bool)

(assert (=> b!2319285 (= e!1486650 (Cons!27652 (h!33053 (t!207382 lt!859811)) (++!6807 (t!207382 (t!207382 lt!859811)) lt!859817)))))

(declare-fun d!685684 () Bool)

(assert (=> d!685684 e!1486651))

(declare-fun res!990826 () Bool)

(assert (=> d!685684 (=> (not res!990826) (not e!1486651))))

(assert (=> d!685684 (= res!990826 (= (content!3736 lt!860090) ((_ map or) (content!3736 (t!207382 lt!859811)) (content!3736 lt!859817))))))

(assert (=> d!685684 (= lt!860090 e!1486650)))

(declare-fun c!367837 () Bool)

(assert (=> d!685684 (= c!367837 ((_ is Nil!27652) (t!207382 lt!859811)))))

(assert (=> d!685684 (= (++!6807 (t!207382 lt!859811) lt!859817) lt!860090)))

(assert (= (and d!685684 c!367837) b!2319284))

(assert (= (and d!685684 (not c!367837)) b!2319285))

(assert (= (and d!685684 res!990826) b!2319286))

(assert (= (and b!2319286 res!990825) b!2319287))

(declare-fun m!2747657 () Bool)

(assert (=> b!2319286 m!2747657))

(assert (=> b!2319286 m!2746737))

(assert (=> b!2319286 m!2746127))

(declare-fun m!2747659 () Bool)

(assert (=> b!2319285 m!2747659))

(declare-fun m!2747661 () Bool)

(assert (=> d!685684 m!2747661))

(assert (=> d!685684 m!2746963))

(assert (=> d!685684 m!2746135))

(assert (=> b!2318581 d!685684))

(declare-fun d!685692 () Bool)

(assert (=> d!685692 (= (list!10984 (xs!12011 lt!859812)) (innerList!9117 (xs!12011 lt!859812)))))

(assert (=> b!2318320 d!685692))

(declare-fun d!685694 () Bool)

(declare-fun c!367840 () Bool)

(assert (=> d!685694 (= c!367840 ((_ is Nil!27652) lt!859835))))

(declare-fun e!1486656 () (InoxSet T!43796))

(assert (=> d!685694 (= (content!3736 lt!859835) e!1486656)))

(declare-fun b!2319296 () Bool)

(assert (=> b!2319296 (= e!1486656 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2319297 () Bool)

(assert (=> b!2319297 (= e!1486656 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 lt!859835) true) (content!3736 (t!207382 lt!859835))))))

(assert (= (and d!685694 c!367840) b!2319296))

(assert (= (and d!685694 (not c!367840)) b!2319297))

(declare-fun m!2747675 () Bool)

(assert (=> b!2319297 m!2747675))

(declare-fun m!2747679 () Bool)

(assert (=> b!2319297 m!2747679))

(assert (=> d!685216 d!685694))

(declare-fun d!685698 () Bool)

(declare-fun c!367841 () Bool)

(assert (=> d!685698 (= c!367841 ((_ is Nil!27652) (++!6807 lt!859808 lt!859811)))))

(declare-fun e!1486657 () (InoxSet T!43796))

(assert (=> d!685698 (= (content!3736 (++!6807 lt!859808 lt!859811)) e!1486657)))

(declare-fun b!2319298 () Bool)

(assert (=> b!2319298 (= e!1486657 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2319299 () Bool)

(assert (=> b!2319299 (= e!1486657 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 (++!6807 lt!859808 lt!859811)) true) (content!3736 (t!207382 (++!6807 lt!859808 lt!859811)))))))

(assert (= (and d!685698 c!367841) b!2319298))

(assert (= (and d!685698 (not c!367841)) b!2319299))

(declare-fun m!2747685 () Bool)

(assert (=> b!2319299 m!2747685))

(assert (=> b!2319299 m!2746983))

(assert (=> d!685216 d!685698))

(declare-fun d!685702 () Bool)

(declare-fun c!367843 () Bool)

(assert (=> d!685702 (= c!367843 ((_ is Nil!27652) lt!859817))))

(declare-fun e!1486660 () (InoxSet T!43796))

(assert (=> d!685702 (= (content!3736 lt!859817) e!1486660)))

(declare-fun b!2319304 () Bool)

(assert (=> b!2319304 (= e!1486660 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2319305 () Bool)

(assert (=> b!2319305 (= e!1486660 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 lt!859817) true) (content!3736 (t!207382 lt!859817))))))

(assert (= (and d!685702 c!367843) b!2319304))

(assert (= (and d!685702 (not c!367843)) b!2319305))

(declare-fun m!2747687 () Bool)

(assert (=> b!2319305 m!2747687))

(declare-fun m!2747689 () Bool)

(assert (=> b!2319305 m!2747689))

(assert (=> d!685216 d!685702))

(declare-fun d!685704 () Bool)

(declare-fun lt!860094 () Int)

(assert (=> d!685704 (>= lt!860094 0)))

(declare-fun e!1486661 () Int)

(assert (=> d!685704 (= lt!860094 e!1486661)))

(declare-fun c!367844 () Bool)

(assert (=> d!685704 (= c!367844 ((_ is Nil!27652) (list!10984 arr!18)))))

(assert (=> d!685704 (= (size!21891 (list!10984 arr!18)) lt!860094)))

(declare-fun b!2319306 () Bool)

(assert (=> b!2319306 (= e!1486661 0)))

(declare-fun b!2319307 () Bool)

(assert (=> b!2319307 (= e!1486661 (+ 1 (size!21891 (t!207382 (list!10984 arr!18)))))))

(assert (= (and d!685704 c!367844) b!2319306))

(assert (= (and d!685704 (not c!367844)) b!2319307))

(declare-fun m!2747701 () Bool)

(assert (=> b!2319307 m!2747701))

(assert (=> d!685270 d!685704))

(assert (=> d!685270 d!685286))

(declare-fun d!685710 () Bool)

(declare-fun _$1!10186 () Int)

(assert (=> d!685710 (= _$1!10186 (size!21891 (list!10984 arr!18)))))

(assert (=> d!685710 true))

(assert (=> d!685710 (= (choose!13582 arr!18) _$1!10186)))

(declare-fun bs!458943 () Bool)

(assert (= bs!458943 d!685710))

(assert (=> bs!458943 m!2746027))

(assert (=> bs!458943 m!2746027))

(assert (=> bs!458943 m!2746425))

(assert (=> d!685270 d!685710))

(declare-fun d!685726 () Bool)

(assert (=> d!685726 (= (height!1320 lt!859936) (ite ((_ is Empty!9057) lt!859936) 0 (ite ((_ is Leaf!13295) lt!859936) 1 (cheight!9268 lt!859936))))))

(assert (=> b!2318488 d!685726))

(declare-fun d!685730 () Bool)

(assert (=> d!685730 (= (max!0 (height!1320 acc!252) (height!1320 lt!859807)) (ite (< (height!1320 acc!252) (height!1320 lt!859807)) (height!1320 lt!859807) (height!1320 acc!252)))))

(assert (=> b!2318488 d!685730))

(assert (=> b!2318488 d!685354))

(assert (=> b!2318488 d!685352))

(assert (=> b!2318474 d!685726))

(assert (=> b!2318474 d!685730))

(assert (=> b!2318474 d!685354))

(assert (=> b!2318474 d!685352))

(declare-fun d!685732 () Bool)

(declare-fun c!367856 () Bool)

(assert (=> d!685732 (= c!367856 ((_ is Nil!27652) lt!859958))))

(declare-fun e!1486680 () (InoxSet T!43796))

(assert (=> d!685732 (= (content!3736 lt!859958) e!1486680)))

(declare-fun b!2319344 () Bool)

(assert (=> b!2319344 (= e!1486680 ((as const (Array T!43796 Bool)) false))))

(declare-fun b!2319345 () Bool)

(assert (=> b!2319345 (= e!1486680 ((_ map or) (store ((as const (Array T!43796 Bool)) false) (h!33053 lt!859958) true) (content!3736 (t!207382 lt!859958))))))

(assert (= (and d!685732 c!367856) b!2319344))

(assert (= (and d!685732 (not c!367856)) b!2319345))

(declare-fun m!2747733 () Bool)

(assert (=> b!2319345 m!2747733))

(declare-fun m!2747735 () Bool)

(assert (=> b!2319345 m!2747735))

(assert (=> d!685298 d!685732))

(assert (=> d!685298 d!685444))

(assert (=> d!685298 d!685702))

(assert (=> d!685288 d!685284))

(declare-fun d!685734 () Bool)

(assert (=> d!685734 (= (++!6807 (slice!686 lt!859809 0 512) (slice!686 lt!859809 512 (size!21891 lt!859809))) lt!859809)))

(assert (=> d!685734 true))

(declare-fun _$14!672 () Unit!40510)

(assert (=> d!685734 (= (choose!13583 lt!859809 512) _$14!672)))

(declare-fun bs!458944 () Bool)

(assert (= bs!458944 d!685734))

(assert (=> bs!458944 m!2746023))

(assert (=> bs!458944 m!2746025))

(assert (=> bs!458944 m!2746025))

(assert (=> bs!458944 m!2746031))

(assert (=> bs!458944 m!2746023))

(assert (=> bs!458944 m!2746031))

(assert (=> bs!458944 m!2746033))

(assert (=> d!685288 d!685734))

(assert (=> d!685288 d!685290))

(assert (=> d!685288 d!685292))

(assert (=> d!685288 d!685294))

(declare-fun b!2319346 () Bool)

(declare-fun e!1486681 () Bool)

(declare-fun tp!736092 () Bool)

(assert (=> b!2319346 (= e!1486681 (and tp_is_empty!10805 tp!736092))))

(assert (=> b!2318600 (= tp!736070 e!1486681)))

(assert (= (and b!2318600 ((_ is Cons!27652) (t!207382 (innerList!9117 (xs!12011 acc!252))))) b!2319346))

(declare-fun tp!736095 () Bool)

(declare-fun e!1486684 () Bool)

(declare-fun tp!736093 () Bool)

(declare-fun b!2319349 () Bool)

(assert (=> b!2319349 (= e!1486684 (and (inv!37559 (left!20982 (left!20982 (left!20982 acc!252)))) tp!736093 (inv!37559 (right!21312 (left!20982 (left!20982 acc!252)))) tp!736095))))

(declare-fun b!2319351 () Bool)

(declare-fun e!1486683 () Bool)

(declare-fun tp!736094 () Bool)

(assert (=> b!2319351 (= e!1486683 tp!736094)))

(declare-fun b!2319350 () Bool)

(assert (=> b!2319350 (= e!1486684 (and (inv!37560 (xs!12011 (left!20982 (left!20982 acc!252)))) e!1486683))))

(assert (=> b!2318610 (= tp!736078 (and (inv!37559 (left!20982 (left!20982 acc!252))) e!1486684))))

(assert (= (and b!2318610 ((_ is Node!9057) (left!20982 (left!20982 acc!252)))) b!2319349))

(assert (= b!2319350 b!2319351))

(assert (= (and b!2318610 ((_ is Leaf!13295) (left!20982 (left!20982 acc!252)))) b!2319350))

(declare-fun m!2747773 () Bool)

(assert (=> b!2319349 m!2747773))

(declare-fun m!2747775 () Bool)

(assert (=> b!2319349 m!2747775))

(declare-fun m!2747777 () Bool)

(assert (=> b!2319350 m!2747777))

(assert (=> b!2318610 m!2746511))

(declare-fun tp!736096 () Bool)

(declare-fun tp!736098 () Bool)

(declare-fun b!2319356 () Bool)

(declare-fun e!1486688 () Bool)

(assert (=> b!2319356 (= e!1486688 (and (inv!37559 (left!20982 (right!21312 (left!20982 acc!252)))) tp!736096 (inv!37559 (right!21312 (right!21312 (left!20982 acc!252)))) tp!736098))))

(declare-fun b!2319358 () Bool)

(declare-fun e!1486687 () Bool)

(declare-fun tp!736097 () Bool)

(assert (=> b!2319358 (= e!1486687 tp!736097)))

(declare-fun b!2319357 () Bool)

(assert (=> b!2319357 (= e!1486688 (and (inv!37560 (xs!12011 (right!21312 (left!20982 acc!252)))) e!1486687))))

(assert (=> b!2318610 (= tp!736080 (and (inv!37559 (right!21312 (left!20982 acc!252))) e!1486688))))

(assert (= (and b!2318610 ((_ is Node!9057) (right!21312 (left!20982 acc!252)))) b!2319356))

(assert (= b!2319357 b!2319358))

(assert (= (and b!2318610 ((_ is Leaf!13295) (right!21312 (left!20982 acc!252)))) b!2319357))

(declare-fun m!2747779 () Bool)

(assert (=> b!2319356 m!2747779))

(declare-fun m!2747781 () Bool)

(assert (=> b!2319356 m!2747781))

(declare-fun m!2747783 () Bool)

(assert (=> b!2319357 m!2747783))

(assert (=> b!2318610 m!2746513))

(declare-fun b!2319359 () Bool)

(declare-fun e!1486689 () Bool)

(declare-fun tp!736099 () Bool)

(assert (=> b!2319359 (= e!1486689 (and tp_is_empty!10805 tp!736099))))

(assert (=> b!2318615 (= tp!736082 e!1486689)))

(assert (= (and b!2318615 ((_ is Cons!27652) (innerList!9117 (xs!12011 (right!21312 acc!252))))) b!2319359))

(declare-fun b!2319360 () Bool)

(declare-fun e!1486690 () Bool)

(declare-fun tp!736100 () Bool)

(assert (=> b!2319360 (= e!1486690 (and tp_is_empty!10805 tp!736100))))

(assert (=> b!2318612 (= tp!736079 e!1486690)))

(assert (= (and b!2318612 ((_ is Cons!27652) (innerList!9117 (xs!12011 (left!20982 acc!252))))) b!2319360))

(declare-fun b!2319361 () Bool)

(declare-fun e!1486692 () Bool)

(declare-fun tp!736101 () Bool)

(declare-fun tp!736103 () Bool)

(assert (=> b!2319361 (= e!1486692 (and (inv!37559 (left!20982 (left!20982 (right!21312 acc!252)))) tp!736101 (inv!37559 (right!21312 (left!20982 (right!21312 acc!252)))) tp!736103))))

(declare-fun b!2319363 () Bool)

(declare-fun e!1486691 () Bool)

(declare-fun tp!736102 () Bool)

(assert (=> b!2319363 (= e!1486691 tp!736102)))

(declare-fun b!2319362 () Bool)

(assert (=> b!2319362 (= e!1486692 (and (inv!37560 (xs!12011 (left!20982 (right!21312 acc!252)))) e!1486691))))

(assert (=> b!2318613 (= tp!736081 (and (inv!37559 (left!20982 (right!21312 acc!252))) e!1486692))))

(assert (= (and b!2318613 ((_ is Node!9057) (left!20982 (right!21312 acc!252)))) b!2319361))

(assert (= b!2319362 b!2319363))

(assert (= (and b!2318613 ((_ is Leaf!13295) (left!20982 (right!21312 acc!252)))) b!2319362))

(declare-fun m!2747803 () Bool)

(assert (=> b!2319361 m!2747803))

(declare-fun m!2747805 () Bool)

(assert (=> b!2319361 m!2747805))

(declare-fun m!2747807 () Bool)

(assert (=> b!2319362 m!2747807))

(assert (=> b!2318613 m!2746517))

(declare-fun e!1486696 () Bool)

(declare-fun b!2319368 () Bool)

(declare-fun tp!736106 () Bool)

(declare-fun tp!736104 () Bool)

(assert (=> b!2319368 (= e!1486696 (and (inv!37559 (left!20982 (right!21312 (right!21312 acc!252)))) tp!736104 (inv!37559 (right!21312 (right!21312 (right!21312 acc!252)))) tp!736106))))

(declare-fun b!2319370 () Bool)

(declare-fun e!1486695 () Bool)

(declare-fun tp!736105 () Bool)

(assert (=> b!2319370 (= e!1486695 tp!736105)))

(declare-fun b!2319369 () Bool)

(assert (=> b!2319369 (= e!1486696 (and (inv!37560 (xs!12011 (right!21312 (right!21312 acc!252)))) e!1486695))))

(assert (=> b!2318613 (= tp!736083 (and (inv!37559 (right!21312 (right!21312 acc!252))) e!1486696))))

(assert (= (and b!2318613 ((_ is Node!9057) (right!21312 (right!21312 acc!252)))) b!2319368))

(assert (= b!2319369 b!2319370))

(assert (= (and b!2318613 ((_ is Leaf!13295) (right!21312 (right!21312 acc!252)))) b!2319369))

(declare-fun m!2747809 () Bool)

(assert (=> b!2319368 m!2747809))

(declare-fun m!2747811 () Bool)

(assert (=> b!2319368 m!2747811))

(declare-fun m!2747813 () Bool)

(assert (=> b!2319369 m!2747813))

(assert (=> b!2318613 m!2746519))

(declare-fun b!2319371 () Bool)

(declare-fun e!1486697 () Bool)

(declare-fun tp!736107 () Bool)

(assert (=> b!2319371 (= e!1486697 (and tp_is_empty!10805 tp!736107))))

(assert (=> b!2318601 (= tp!736071 e!1486697)))

(assert (= (and b!2318601 ((_ is Cons!27652) (t!207382 (innerList!9117 arr!18)))) b!2319371))

(check-sat (not b!2318693) (not d!685566) (not d!685366) (not b!2318686) (not d!685424) (not bm!138194) (not b!2319045) (not b!2318805) (not b!2318872) (not bm!138227) (not b!2318951) (not b!2319118) (not b!2318688) (not b!2319244) (not b!2319002) (not b!2318987) (not b!2318613) (not b!2319142) (not b!2319160) (not b!2318980) (not b!2318624) (not b!2319066) (not b!2319043) (not b!2319196) (not b!2319175) (not b!2318790) (not b!2319122) (not b!2318890) (not b!2318814) (not b!2319254) (not b!2318661) (not b!2319147) (not d!685364) (not b!2319040) (not b!2319126) (not b!2318996) (not d!685634) (not b!2318870) (not d!685414) (not b!2318786) (not b!2319044) (not b!2319070) (not b!2318707) (not b!2319149) (not b!2319139) (not b!2319140) (not b!2318785) (not b!2319041) (not b!2319307) (not bm!138208) (not b!2319158) (not b!2319137) (not d!685392) (not b!2318684) (not b!2318874) (not bm!138213) (not d!685420) (not b!2318877) (not d!685464) (not b!2318622) (not b!2318782) (not b!2319186) (not b!2318992) (not bm!138210) (not d!685648) (not b!2319237) (not b!2318878) (not b!2318994) (not d!685670) (not d!685530) (not b!2318793) (not b!2318998) (not b!2319069) (not d!685564) (not b!2318694) (not b!2318771) (not b!2318947) (not b!2319356) (not b!2319161) (not d!685672) (not bm!138202) (not d!685412) (not d!685460) (not b!2319004) (not b!2319272) (not b!2319349) (not d!685370) (not b!2318912) (not b!2319214) (not b!2318806) (not b!2318886) (not b!2319357) (not bm!138209) (not d!685408) (not bm!138218) (not b!2319201) (not b!2318846) (not b!2319083) (not b!2319064) (not b!2319276) (not b!2318621) (not d!685356) (not d!685384) (not b!2319185) (not b!2319162) (not d!685432) (not b!2318817) (not b!2319233) (not d!685362) (not b!2318691) (not b!2319050) (not d!685434) (not b!2318910) (not b!2319159) (not b!2318841) (not b!2318773) (not b!2318780) (not b!2318798) (not d!685520) (not b!2319221) (not b!2318625) (not b!2318711) (not b!2318778) (not b!2318819) (not b!2318990) (not b!2319195) (not b!2318836) (not b!2319273) (not b!2318760) (not b!2319123) (not d!685342) (not b!2318828) (not b!2318845) (not b!2319001) (not bm!138232) (not b!2319297) (not b!2318712) (not d!685326) (not b!2319152) (not b!2318820) tp_is_empty!10805 (not b!2319065) (not b!2318779) (not b!2319370) (not b!2318783) (not d!685640) (not bm!138212) (not b!2319174) (not b!2318829) (not b!2318703) (not b!2318723) (not b!2319151) (not b!2319369) (not b!2318880) (not b!2319259) (not b!2319150) (not b!2319285) (not d!685360) (not b!2318683) (not b!2319056) (not b!2318725) (not b!2318887) (not b!2319371) (not d!685472) (not b!2318726) (not b!2319067) (not bm!138196) (not b!2319345) (not d!685462) (not b!2319350) (not b!2319358) (not b!2319042) (not b!2318826) (not b!2319157) (not b!2319038) (not b!2319245) (not d!685346) (not d!685514) (not b!2318650) (not b!2319202) (not b!2318789) (not d!685430) (not b!2318610) (not d!685416) (not b!2318825) (not b!2318663) (not d!685536) (not d!685486) (not b!2318781) (not bm!138203) (not b!2318620) (not bm!138193) (not b!2319124) (not d!685524) (not bm!138197) (not d!685734) (not d!685684) (not b!2318813) (not b!2318649) (not b!2319346) (not b!2319264) (not b!2318833) (not d!685620) (not d!685456) (not b!2319030) (not b!2318704) (not b!2318907) (not d!685532) (not b!2319360) (not b!2318882) (not b!2318777) (not b!2319363) (not b!2319305) (not b!2318708) (not b!2319235) (not b!2319275) (not b!2318894) (not b!2319200) (not d!685668) (not bm!138228) (not b!2319078) (not b!2319368) (not b!2319258) (not d!685404) (not bm!138219) (not b!2318837) (not d!685710) (not b!2318824) (not b!2319148) (not b!2319125) (not b!2319068) (not b!2318884) (not b!2318832) (not b!2319172) (not d!685428) (not b!2318692) (not b!2319168) (not b!2319351) (not d!685680) (not b!2319015) (not b!2318685) (not b!2319361) (not b!2319286) (not b!2318664) (not d!685560) (not b!2319299) (not b!2318724) (not b!2318945) (not b!2319359) (not b!2319062) (not b!2318690) (not bm!138231) (not b!2318623) (not b!2318946) (not b!2319206) (not b!2319005) (not d!685386) (not bm!138192) (not b!2318662) (not b!2318689) (not b!2318799) (not d!685654) (not b!2318842) (not b!2318875) (not b!2319362) (not b!2318687) (not d!685544) (not b!2319014) (not b!2319253))
(check-sat)
