; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215678 () Bool)

(assert start!215678)

(declare-fun b!2213280 () Bool)

(declare-fun e!1413306 () Bool)

(declare-datatypes ((T!40634 0))(
  ( (T!40635 (val!7390 Int)) )
))
(declare-datatypes ((List!25954 0))(
  ( (Nil!25870) (Cons!25870 (h!31271 T!40634) (t!198720 List!25954)) )
))
(declare-datatypes ((IArray!16939 0))(
  ( (IArray!16940 (innerList!8527 List!25954)) )
))
(declare-datatypes ((Conc!8467 0))(
  ( (Node!8467 (left!19903 Conc!8467) (right!20233 Conc!8467) (csize!17164 Int) (cheight!8678 Int)) (Leaf!12400 (xs!11409 IArray!16939) (csize!17165 Int)) (Empty!8467) )
))
(declare-fun t!4663 () Conc!8467)

(declare-fun e!1413307 () Bool)

(declare-fun inv!35063 (IArray!16939) Bool)

(assert (=> b!2213280 (= e!1413306 (and (inv!35063 (xs!11409 t!4663)) e!1413307))))

(declare-fun res!951225 () Bool)

(declare-fun e!1413305 () Bool)

(assert (=> start!215678 (=> (not res!951225) (not e!1413305))))

(declare-fun isBalanced!2625 (Conc!8467) Bool)

(assert (=> start!215678 (= res!951225 (isBalanced!2625 t!4663))))

(assert (=> start!215678 e!1413305))

(declare-fun inv!35064 (Conc!8467) Bool)

(assert (=> start!215678 (and (inv!35064 t!4663) e!1413306)))

(declare-fun b!2213281 () Bool)

(declare-fun tp!687696 () Bool)

(assert (=> b!2213281 (= e!1413307 tp!687696)))

(declare-fun b!2213282 () Bool)

(declare-fun res!951227 () Bool)

(assert (=> b!2213282 (=> (not res!951227) (not e!1413305))))

(get-info :version)

(assert (=> b!2213282 (= res!951227 (and (not ((_ is Leaf!12400) t!4663)) (not ((_ is Node!8467) t!4663))))))

(declare-fun b!2213283 () Bool)

(declare-fun tp!687697 () Bool)

(declare-fun tp!687698 () Bool)

(assert (=> b!2213283 (= e!1413306 (and (inv!35064 (left!19903 t!4663)) tp!687697 (inv!35064 (right!20233 t!4663)) tp!687698))))

(declare-fun b!2213284 () Bool)

(declare-fun res!951226 () Bool)

(assert (=> b!2213284 (=> (not res!951226) (not e!1413305))))

(declare-fun isEmpty!14823 (Conc!8467) Bool)

(assert (=> b!2213284 (= res!951226 (not (isEmpty!14823 t!4663)))))

(declare-fun b!2213285 () Bool)

(declare-fun err!4137 () T!40634)

(declare-fun head!4729 (List!25954) T!40634)

(declare-fun list!10048 (Conc!8467) List!25954)

(assert (=> b!2213285 (= e!1413305 (not (= err!4137 (head!4729 (list!10048 t!4663)))))))

(assert (=> b!2213285 true))

(declare-fun tp_is_empty!9801 () Bool)

(assert (=> b!2213285 tp_is_empty!9801))

(assert (= (and start!215678 res!951225) b!2213284))

(assert (= (and b!2213284 res!951226) b!2213282))

(assert (= (and b!2213282 res!951227) b!2213285))

(assert (= (and start!215678 ((_ is Node!8467) t!4663)) b!2213283))

(assert (= b!2213280 b!2213281))

(assert (= (and start!215678 ((_ is Leaf!12400) t!4663)) b!2213280))

(declare-fun m!2655623 () Bool)

(assert (=> start!215678 m!2655623))

(declare-fun m!2655625 () Bool)

(assert (=> start!215678 m!2655625))

(declare-fun m!2655627 () Bool)

(assert (=> b!2213283 m!2655627))

(declare-fun m!2655629 () Bool)

(assert (=> b!2213283 m!2655629))

(declare-fun m!2655631 () Bool)

(assert (=> b!2213284 m!2655631))

(declare-fun m!2655633 () Bool)

(assert (=> b!2213280 m!2655633))

(declare-fun m!2655635 () Bool)

(assert (=> b!2213285 m!2655635))

(assert (=> b!2213285 m!2655635))

(declare-fun m!2655637 () Bool)

(assert (=> b!2213285 m!2655637))

(check-sat (not start!215678) (not b!2213283) tp_is_empty!9801 (not b!2213280) (not b!2213285) (not b!2213281) (not b!2213284))
(check-sat)
(get-model)

(declare-fun d!661925 () Bool)

(declare-fun c!353744 () Bool)

(assert (=> d!661925 (= c!353744 ((_ is Node!8467) (left!19903 t!4663)))))

(declare-fun e!1413316 () Bool)

(assert (=> d!661925 (= (inv!35064 (left!19903 t!4663)) e!1413316)))

(declare-fun b!2213302 () Bool)

(declare-fun inv!35065 (Conc!8467) Bool)

(assert (=> b!2213302 (= e!1413316 (inv!35065 (left!19903 t!4663)))))

(declare-fun b!2213303 () Bool)

(declare-fun e!1413317 () Bool)

(assert (=> b!2213303 (= e!1413316 e!1413317)))

(declare-fun res!951240 () Bool)

(assert (=> b!2213303 (= res!951240 (not ((_ is Leaf!12400) (left!19903 t!4663))))))

(assert (=> b!2213303 (=> res!951240 e!1413317)))

(declare-fun b!2213304 () Bool)

(declare-fun inv!35066 (Conc!8467) Bool)

(assert (=> b!2213304 (= e!1413317 (inv!35066 (left!19903 t!4663)))))

(assert (= (and d!661925 c!353744) b!2213302))

(assert (= (and d!661925 (not c!353744)) b!2213303))

(assert (= (and b!2213303 (not res!951240)) b!2213304))

(declare-fun m!2655639 () Bool)

(assert (=> b!2213302 m!2655639))

(declare-fun m!2655641 () Bool)

(assert (=> b!2213304 m!2655641))

(assert (=> b!2213283 d!661925))

(declare-fun d!661927 () Bool)

(declare-fun c!353745 () Bool)

(assert (=> d!661927 (= c!353745 ((_ is Node!8467) (right!20233 t!4663)))))

(declare-fun e!1413318 () Bool)

(assert (=> d!661927 (= (inv!35064 (right!20233 t!4663)) e!1413318)))

(declare-fun b!2213307 () Bool)

(assert (=> b!2213307 (= e!1413318 (inv!35065 (right!20233 t!4663)))))

(declare-fun b!2213308 () Bool)

(declare-fun e!1413319 () Bool)

(assert (=> b!2213308 (= e!1413318 e!1413319)))

(declare-fun res!951243 () Bool)

(assert (=> b!2213308 (= res!951243 (not ((_ is Leaf!12400) (right!20233 t!4663))))))

(assert (=> b!2213308 (=> res!951243 e!1413319)))

(declare-fun b!2213309 () Bool)

(assert (=> b!2213309 (= e!1413319 (inv!35066 (right!20233 t!4663)))))

(assert (= (and d!661927 c!353745) b!2213307))

(assert (= (and d!661927 (not c!353745)) b!2213308))

(assert (= (and b!2213308 (not res!951243)) b!2213309))

(declare-fun m!2655643 () Bool)

(assert (=> b!2213307 m!2655643))

(declare-fun m!2655645 () Bool)

(assert (=> b!2213309 m!2655645))

(assert (=> b!2213283 d!661927))

(declare-fun b!2213328 () Bool)

(declare-fun res!951266 () Bool)

(declare-fun e!1413326 () Bool)

(assert (=> b!2213328 (=> (not res!951266) (not e!1413326))))

(assert (=> b!2213328 (= res!951266 (isBalanced!2625 (right!20233 t!4663)))))

(declare-fun b!2213329 () Bool)

(declare-fun res!951263 () Bool)

(assert (=> b!2213329 (=> (not res!951263) (not e!1413326))))

(declare-fun height!1290 (Conc!8467) Int)

(assert (=> b!2213329 (= res!951263 (<= (- (height!1290 (left!19903 t!4663)) (height!1290 (right!20233 t!4663))) 1))))

(declare-fun d!661929 () Bool)

(declare-fun res!951265 () Bool)

(declare-fun e!1413327 () Bool)

(assert (=> d!661929 (=> res!951265 e!1413327)))

(assert (=> d!661929 (= res!951265 (not ((_ is Node!8467) t!4663)))))

(assert (=> d!661929 (= (isBalanced!2625 t!4663) e!1413327)))

(declare-fun b!2213330 () Bool)

(assert (=> b!2213330 (= e!1413326 (not (isEmpty!14823 (right!20233 t!4663))))))

(declare-fun b!2213331 () Bool)

(assert (=> b!2213331 (= e!1413327 e!1413326)))

(declare-fun res!951264 () Bool)

(assert (=> b!2213331 (=> (not res!951264) (not e!1413326))))

(assert (=> b!2213331 (= res!951264 (<= (- 1) (- (height!1290 (left!19903 t!4663)) (height!1290 (right!20233 t!4663)))))))

(declare-fun b!2213332 () Bool)

(declare-fun res!951267 () Bool)

(assert (=> b!2213332 (=> (not res!951267) (not e!1413326))))

(assert (=> b!2213332 (= res!951267 (isBalanced!2625 (left!19903 t!4663)))))

(declare-fun b!2213333 () Bool)

(declare-fun res!951262 () Bool)

(assert (=> b!2213333 (=> (not res!951262) (not e!1413326))))

(assert (=> b!2213333 (= res!951262 (not (isEmpty!14823 (left!19903 t!4663))))))

(assert (= (and d!661929 (not res!951265)) b!2213331))

(assert (= (and b!2213331 res!951264) b!2213329))

(assert (= (and b!2213329 res!951263) b!2213332))

(assert (= (and b!2213332 res!951267) b!2213328))

(assert (= (and b!2213328 res!951266) b!2213333))

(assert (= (and b!2213333 res!951262) b!2213330))

(declare-fun m!2655659 () Bool)

(assert (=> b!2213333 m!2655659))

(declare-fun m!2655661 () Bool)

(assert (=> b!2213328 m!2655661))

(declare-fun m!2655663 () Bool)

(assert (=> b!2213331 m!2655663))

(declare-fun m!2655665 () Bool)

(assert (=> b!2213331 m!2655665))

(assert (=> b!2213329 m!2655663))

(assert (=> b!2213329 m!2655665))

(declare-fun m!2655667 () Bool)

(assert (=> b!2213332 m!2655667))

(declare-fun m!2655669 () Bool)

(assert (=> b!2213330 m!2655669))

(assert (=> start!215678 d!661929))

(declare-fun d!661933 () Bool)

(declare-fun c!353748 () Bool)

(assert (=> d!661933 (= c!353748 ((_ is Node!8467) t!4663))))

(declare-fun e!1413332 () Bool)

(assert (=> d!661933 (= (inv!35064 t!4663) e!1413332)))

(declare-fun b!2213340 () Bool)

(assert (=> b!2213340 (= e!1413332 (inv!35065 t!4663))))

(declare-fun b!2213341 () Bool)

(declare-fun e!1413333 () Bool)

(assert (=> b!2213341 (= e!1413332 e!1413333)))

(declare-fun res!951270 () Bool)

(assert (=> b!2213341 (= res!951270 (not ((_ is Leaf!12400) t!4663)))))

(assert (=> b!2213341 (=> res!951270 e!1413333)))

(declare-fun b!2213342 () Bool)

(assert (=> b!2213342 (= e!1413333 (inv!35066 t!4663))))

(assert (= (and d!661933 c!353748) b!2213340))

(assert (= (and d!661933 (not c!353748)) b!2213341))

(assert (= (and b!2213341 (not res!951270)) b!2213342))

(declare-fun m!2655671 () Bool)

(assert (=> b!2213340 m!2655671))

(declare-fun m!2655673 () Bool)

(assert (=> b!2213342 m!2655673))

(assert (=> start!215678 d!661933))

(declare-fun d!661935 () Bool)

(declare-fun lt!826673 () Bool)

(declare-fun isEmpty!14824 (List!25954) Bool)

(assert (=> d!661935 (= lt!826673 (isEmpty!14824 (list!10048 t!4663)))))

(declare-fun size!20193 (Conc!8467) Int)

(assert (=> d!661935 (= lt!826673 (= (size!20193 t!4663) 0))))

(assert (=> d!661935 (= (isEmpty!14823 t!4663) lt!826673)))

(declare-fun bs!451537 () Bool)

(assert (= bs!451537 d!661935))

(assert (=> bs!451537 m!2655635))

(assert (=> bs!451537 m!2655635))

(declare-fun m!2655679 () Bool)

(assert (=> bs!451537 m!2655679))

(declare-fun m!2655681 () Bool)

(assert (=> bs!451537 m!2655681))

(assert (=> b!2213284 d!661935))

(declare-fun d!661939 () Bool)

(assert (=> d!661939 (= (head!4729 (list!10048 t!4663)) (h!31271 (list!10048 t!4663)))))

(assert (=> b!2213285 d!661939))

(declare-fun b!2213356 () Bool)

(declare-fun e!1413341 () List!25954)

(declare-fun list!10049 (IArray!16939) List!25954)

(assert (=> b!2213356 (= e!1413341 (list!10049 (xs!11409 t!4663)))))

(declare-fun b!2213354 () Bool)

(declare-fun e!1413340 () List!25954)

(assert (=> b!2213354 (= e!1413340 Nil!25870)))

(declare-fun b!2213357 () Bool)

(declare-fun ++!6456 (List!25954 List!25954) List!25954)

(assert (=> b!2213357 (= e!1413341 (++!6456 (list!10048 (left!19903 t!4663)) (list!10048 (right!20233 t!4663))))))

(declare-fun b!2213355 () Bool)

(assert (=> b!2213355 (= e!1413340 e!1413341)))

(declare-fun c!353755 () Bool)

(assert (=> b!2213355 (= c!353755 ((_ is Leaf!12400) t!4663))))

(declare-fun d!661941 () Bool)

(declare-fun c!353754 () Bool)

(assert (=> d!661941 (= c!353754 ((_ is Empty!8467) t!4663))))

(assert (=> d!661941 (= (list!10048 t!4663) e!1413340)))

(assert (= (and d!661941 c!353754) b!2213354))

(assert (= (and d!661941 (not c!353754)) b!2213355))

(assert (= (and b!2213355 c!353755) b!2213356))

(assert (= (and b!2213355 (not c!353755)) b!2213357))

(declare-fun m!2655689 () Bool)

(assert (=> b!2213356 m!2655689))

(declare-fun m!2655691 () Bool)

(assert (=> b!2213357 m!2655691))

(declare-fun m!2655693 () Bool)

(assert (=> b!2213357 m!2655693))

(assert (=> b!2213357 m!2655691))

(assert (=> b!2213357 m!2655693))

(declare-fun m!2655695 () Bool)

(assert (=> b!2213357 m!2655695))

(assert (=> b!2213285 d!661941))

(declare-fun d!661949 () Bool)

(declare-fun size!20195 (List!25954) Int)

(assert (=> d!661949 (= (inv!35063 (xs!11409 t!4663)) (<= (size!20195 (innerList!8527 (xs!11409 t!4663))) 2147483647))))

(declare-fun bs!451540 () Bool)

(assert (= bs!451540 d!661949))

(declare-fun m!2655697 () Bool)

(assert (=> bs!451540 m!2655697))

(assert (=> b!2213280 d!661949))

(declare-fun b!2213374 () Bool)

(declare-fun tp!687705 () Bool)

(declare-fun e!1413351 () Bool)

(declare-fun tp!687707 () Bool)

(assert (=> b!2213374 (= e!1413351 (and (inv!35064 (left!19903 (left!19903 t!4663))) tp!687707 (inv!35064 (right!20233 (left!19903 t!4663))) tp!687705))))

(declare-fun b!2213376 () Bool)

(declare-fun e!1413350 () Bool)

(declare-fun tp!687706 () Bool)

(assert (=> b!2213376 (= e!1413350 tp!687706)))

(declare-fun b!2213375 () Bool)

(assert (=> b!2213375 (= e!1413351 (and (inv!35063 (xs!11409 (left!19903 t!4663))) e!1413350))))

(assert (=> b!2213283 (= tp!687697 (and (inv!35064 (left!19903 t!4663)) e!1413351))))

(assert (= (and b!2213283 ((_ is Node!8467) (left!19903 t!4663))) b!2213374))

(assert (= b!2213375 b!2213376))

(assert (= (and b!2213283 ((_ is Leaf!12400) (left!19903 t!4663))) b!2213375))

(declare-fun m!2655699 () Bool)

(assert (=> b!2213374 m!2655699))

(declare-fun m!2655701 () Bool)

(assert (=> b!2213374 m!2655701))

(declare-fun m!2655703 () Bool)

(assert (=> b!2213375 m!2655703))

(assert (=> b!2213283 m!2655627))

(declare-fun tp!687708 () Bool)

(declare-fun e!1413353 () Bool)

(declare-fun tp!687710 () Bool)

(declare-fun b!2213377 () Bool)

(assert (=> b!2213377 (= e!1413353 (and (inv!35064 (left!19903 (right!20233 t!4663))) tp!687710 (inv!35064 (right!20233 (right!20233 t!4663))) tp!687708))))

(declare-fun b!2213379 () Bool)

(declare-fun e!1413352 () Bool)

(declare-fun tp!687709 () Bool)

(assert (=> b!2213379 (= e!1413352 tp!687709)))

(declare-fun b!2213378 () Bool)

(assert (=> b!2213378 (= e!1413353 (and (inv!35063 (xs!11409 (right!20233 t!4663))) e!1413352))))

(assert (=> b!2213283 (= tp!687698 (and (inv!35064 (right!20233 t!4663)) e!1413353))))

(assert (= (and b!2213283 ((_ is Node!8467) (right!20233 t!4663))) b!2213377))

(assert (= b!2213378 b!2213379))

(assert (= (and b!2213283 ((_ is Leaf!12400) (right!20233 t!4663))) b!2213378))

(declare-fun m!2655705 () Bool)

(assert (=> b!2213377 m!2655705))

(declare-fun m!2655707 () Bool)

(assert (=> b!2213377 m!2655707))

(declare-fun m!2655709 () Bool)

(assert (=> b!2213378 m!2655709))

(assert (=> b!2213283 m!2655629))

(declare-fun b!2213384 () Bool)

(declare-fun e!1413356 () Bool)

(declare-fun tp!687713 () Bool)

(assert (=> b!2213384 (= e!1413356 (and tp_is_empty!9801 tp!687713))))

(assert (=> b!2213281 (= tp!687696 e!1413356)))

(assert (= (and b!2213281 ((_ is Cons!25870) (innerList!8527 (xs!11409 t!4663)))) b!2213384))

(check-sat (not b!2213377) (not b!2213330) (not b!2213331) (not b!2213340) (not b!2213309) (not b!2213375) (not b!2213283) tp_is_empty!9801 (not b!2213329) (not b!2213384) (not b!2213376) (not b!2213342) (not b!2213378) (not b!2213357) (not b!2213328) (not b!2213374) (not b!2213356) (not b!2213302) (not d!661935) (not b!2213304) (not b!2213379) (not b!2213333) (not b!2213332) (not d!661949) (not b!2213307))
(check-sat)
(get-model)

(declare-fun b!2213414 () Bool)

(declare-fun res!951278 () Bool)

(declare-fun e!1413374 () Bool)

(assert (=> b!2213414 (=> (not res!951278) (not e!1413374))))

(assert (=> b!2213414 (= res!951278 (isBalanced!2625 (right!20233 (right!20233 t!4663))))))

(declare-fun b!2213415 () Bool)

(declare-fun res!951275 () Bool)

(assert (=> b!2213415 (=> (not res!951275) (not e!1413374))))

(assert (=> b!2213415 (= res!951275 (<= (- (height!1290 (left!19903 (right!20233 t!4663))) (height!1290 (right!20233 (right!20233 t!4663)))) 1))))

(declare-fun d!661955 () Bool)

(declare-fun res!951277 () Bool)

(declare-fun e!1413375 () Bool)

(assert (=> d!661955 (=> res!951277 e!1413375)))

(assert (=> d!661955 (= res!951277 (not ((_ is Node!8467) (right!20233 t!4663))))))

(assert (=> d!661955 (= (isBalanced!2625 (right!20233 t!4663)) e!1413375)))

(declare-fun b!2213416 () Bool)

(assert (=> b!2213416 (= e!1413374 (not (isEmpty!14823 (right!20233 (right!20233 t!4663)))))))

(declare-fun b!2213417 () Bool)

(assert (=> b!2213417 (= e!1413375 e!1413374)))

(declare-fun res!951276 () Bool)

(assert (=> b!2213417 (=> (not res!951276) (not e!1413374))))

(assert (=> b!2213417 (= res!951276 (<= (- 1) (- (height!1290 (left!19903 (right!20233 t!4663))) (height!1290 (right!20233 (right!20233 t!4663))))))))

(declare-fun b!2213418 () Bool)

(declare-fun res!951279 () Bool)

(assert (=> b!2213418 (=> (not res!951279) (not e!1413374))))

(assert (=> b!2213418 (= res!951279 (isBalanced!2625 (left!19903 (right!20233 t!4663))))))

(declare-fun b!2213419 () Bool)

(declare-fun res!951274 () Bool)

(assert (=> b!2213419 (=> (not res!951274) (not e!1413374))))

(assert (=> b!2213419 (= res!951274 (not (isEmpty!14823 (left!19903 (right!20233 t!4663)))))))

(assert (= (and d!661955 (not res!951277)) b!2213417))

(assert (= (and b!2213417 res!951276) b!2213415))

(assert (= (and b!2213415 res!951275) b!2213418))

(assert (= (and b!2213418 res!951279) b!2213414))

(assert (= (and b!2213414 res!951278) b!2213419))

(assert (= (and b!2213419 res!951274) b!2213416))

(declare-fun m!2655739 () Bool)

(assert (=> b!2213419 m!2655739))

(declare-fun m!2655741 () Bool)

(assert (=> b!2213414 m!2655741))

(declare-fun m!2655743 () Bool)

(assert (=> b!2213417 m!2655743))

(declare-fun m!2655745 () Bool)

(assert (=> b!2213417 m!2655745))

(assert (=> b!2213415 m!2655743))

(assert (=> b!2213415 m!2655745))

(declare-fun m!2655747 () Bool)

(assert (=> b!2213418 m!2655747))

(declare-fun m!2655749 () Bool)

(assert (=> b!2213416 m!2655749))

(assert (=> b!2213328 d!661955))

(declare-fun d!661957 () Bool)

(declare-fun res!951284 () Bool)

(declare-fun e!1413378 () Bool)

(assert (=> d!661957 (=> (not res!951284) (not e!1413378))))

(assert (=> d!661957 (= res!951284 (<= (size!20195 (list!10049 (xs!11409 t!4663))) 512))))

(assert (=> d!661957 (= (inv!35066 t!4663) e!1413378)))

(declare-fun b!2213424 () Bool)

(declare-fun res!951285 () Bool)

(assert (=> b!2213424 (=> (not res!951285) (not e!1413378))))

(assert (=> b!2213424 (= res!951285 (= (csize!17165 t!4663) (size!20195 (list!10049 (xs!11409 t!4663)))))))

(declare-fun b!2213425 () Bool)

(assert (=> b!2213425 (= e!1413378 (and (> (csize!17165 t!4663) 0) (<= (csize!17165 t!4663) 512)))))

(assert (= (and d!661957 res!951284) b!2213424))

(assert (= (and b!2213424 res!951285) b!2213425))

(assert (=> d!661957 m!2655689))

(assert (=> d!661957 m!2655689))

(declare-fun m!2655751 () Bool)

(assert (=> d!661957 m!2655751))

(assert (=> b!2213424 m!2655689))

(assert (=> b!2213424 m!2655689))

(assert (=> b!2213424 m!2655751))

(assert (=> b!2213342 d!661957))

(declare-fun d!661959 () Bool)

(declare-fun res!951286 () Bool)

(declare-fun e!1413379 () Bool)

(assert (=> d!661959 (=> (not res!951286) (not e!1413379))))

(assert (=> d!661959 (= res!951286 (<= (size!20195 (list!10049 (xs!11409 (right!20233 t!4663)))) 512))))

(assert (=> d!661959 (= (inv!35066 (right!20233 t!4663)) e!1413379)))

(declare-fun b!2213426 () Bool)

(declare-fun res!951287 () Bool)

(assert (=> b!2213426 (=> (not res!951287) (not e!1413379))))

(assert (=> b!2213426 (= res!951287 (= (csize!17165 (right!20233 t!4663)) (size!20195 (list!10049 (xs!11409 (right!20233 t!4663))))))))

(declare-fun b!2213427 () Bool)

(assert (=> b!2213427 (= e!1413379 (and (> (csize!17165 (right!20233 t!4663)) 0) (<= (csize!17165 (right!20233 t!4663)) 512)))))

(assert (= (and d!661959 res!951286) b!2213426))

(assert (= (and b!2213426 res!951287) b!2213427))

(declare-fun m!2655753 () Bool)

(assert (=> d!661959 m!2655753))

(assert (=> d!661959 m!2655753))

(declare-fun m!2655755 () Bool)

(assert (=> d!661959 m!2655755))

(assert (=> b!2213426 m!2655753))

(assert (=> b!2213426 m!2655753))

(assert (=> b!2213426 m!2655755))

(assert (=> b!2213309 d!661959))

(assert (=> b!2213283 d!661925))

(assert (=> b!2213283 d!661927))

(declare-fun d!661961 () Bool)

(assert (=> d!661961 (= (height!1290 (left!19903 t!4663)) (ite ((_ is Empty!8467) (left!19903 t!4663)) 0 (ite ((_ is Leaf!12400) (left!19903 t!4663)) 1 (cheight!8678 (left!19903 t!4663)))))))

(assert (=> b!2213329 d!661961))

(declare-fun d!661963 () Bool)

(assert (=> d!661963 (= (height!1290 (right!20233 t!4663)) (ite ((_ is Empty!8467) (right!20233 t!4663)) 0 (ite ((_ is Leaf!12400) (right!20233 t!4663)) 1 (cheight!8678 (right!20233 t!4663)))))))

(assert (=> b!2213329 d!661963))

(declare-fun d!661965 () Bool)

(assert (=> d!661965 (= (inv!35063 (xs!11409 (right!20233 t!4663))) (<= (size!20195 (innerList!8527 (xs!11409 (right!20233 t!4663)))) 2147483647))))

(declare-fun bs!451541 () Bool)

(assert (= bs!451541 d!661965))

(declare-fun m!2655757 () Bool)

(assert (=> bs!451541 m!2655757))

(assert (=> b!2213378 d!661965))

(declare-fun d!661967 () Bool)

(declare-fun lt!826677 () Bool)

(assert (=> d!661967 (= lt!826677 (isEmpty!14824 (list!10048 (right!20233 t!4663))))))

(assert (=> d!661967 (= lt!826677 (= (size!20193 (right!20233 t!4663)) 0))))

(assert (=> d!661967 (= (isEmpty!14823 (right!20233 t!4663)) lt!826677)))

(declare-fun bs!451542 () Bool)

(assert (= bs!451542 d!661967))

(assert (=> bs!451542 m!2655693))

(assert (=> bs!451542 m!2655693))

(declare-fun m!2655759 () Bool)

(assert (=> bs!451542 m!2655759))

(declare-fun m!2655761 () Bool)

(assert (=> bs!451542 m!2655761))

(assert (=> b!2213330 d!661967))

(declare-fun d!661969 () Bool)

(declare-fun res!951294 () Bool)

(declare-fun e!1413382 () Bool)

(assert (=> d!661969 (=> (not res!951294) (not e!1413382))))

(assert (=> d!661969 (= res!951294 (= (csize!17164 t!4663) (+ (size!20193 (left!19903 t!4663)) (size!20193 (right!20233 t!4663)))))))

(assert (=> d!661969 (= (inv!35065 t!4663) e!1413382)))

(declare-fun b!2213434 () Bool)

(declare-fun res!951295 () Bool)

(assert (=> b!2213434 (=> (not res!951295) (not e!1413382))))

(assert (=> b!2213434 (= res!951295 (and (not (= (left!19903 t!4663) Empty!8467)) (not (= (right!20233 t!4663) Empty!8467))))))

(declare-fun b!2213435 () Bool)

(declare-fun res!951296 () Bool)

(assert (=> b!2213435 (=> (not res!951296) (not e!1413382))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2213435 (= res!951296 (= (cheight!8678 t!4663) (+ (max!0 (height!1290 (left!19903 t!4663)) (height!1290 (right!20233 t!4663))) 1)))))

(declare-fun b!2213436 () Bool)

(assert (=> b!2213436 (= e!1413382 (<= 0 (cheight!8678 t!4663)))))

(assert (= (and d!661969 res!951294) b!2213434))

(assert (= (and b!2213434 res!951295) b!2213435))

(assert (= (and b!2213435 res!951296) b!2213436))

(declare-fun m!2655763 () Bool)

(assert (=> d!661969 m!2655763))

(assert (=> d!661969 m!2655761))

(assert (=> b!2213435 m!2655663))

(assert (=> b!2213435 m!2655665))

(assert (=> b!2213435 m!2655663))

(assert (=> b!2213435 m!2655665))

(declare-fun m!2655765 () Bool)

(assert (=> b!2213435 m!2655765))

(assert (=> b!2213340 d!661969))

(declare-fun d!661971 () Bool)

(declare-fun res!951297 () Bool)

(declare-fun e!1413383 () Bool)

(assert (=> d!661971 (=> (not res!951297) (not e!1413383))))

(assert (=> d!661971 (= res!951297 (= (csize!17164 (right!20233 t!4663)) (+ (size!20193 (left!19903 (right!20233 t!4663))) (size!20193 (right!20233 (right!20233 t!4663))))))))

(assert (=> d!661971 (= (inv!35065 (right!20233 t!4663)) e!1413383)))

(declare-fun b!2213437 () Bool)

(declare-fun res!951298 () Bool)

(assert (=> b!2213437 (=> (not res!951298) (not e!1413383))))

(assert (=> b!2213437 (= res!951298 (and (not (= (left!19903 (right!20233 t!4663)) Empty!8467)) (not (= (right!20233 (right!20233 t!4663)) Empty!8467))))))

(declare-fun b!2213438 () Bool)

(declare-fun res!951299 () Bool)

(assert (=> b!2213438 (=> (not res!951299) (not e!1413383))))

(assert (=> b!2213438 (= res!951299 (= (cheight!8678 (right!20233 t!4663)) (+ (max!0 (height!1290 (left!19903 (right!20233 t!4663))) (height!1290 (right!20233 (right!20233 t!4663)))) 1)))))

(declare-fun b!2213439 () Bool)

(assert (=> b!2213439 (= e!1413383 (<= 0 (cheight!8678 (right!20233 t!4663))))))

(assert (= (and d!661971 res!951297) b!2213437))

(assert (= (and b!2213437 res!951298) b!2213438))

(assert (= (and b!2213438 res!951299) b!2213439))

(declare-fun m!2655767 () Bool)

(assert (=> d!661971 m!2655767))

(declare-fun m!2655769 () Bool)

(assert (=> d!661971 m!2655769))

(assert (=> b!2213438 m!2655743))

(assert (=> b!2213438 m!2655745))

(assert (=> b!2213438 m!2655743))

(assert (=> b!2213438 m!2655745))

(declare-fun m!2655771 () Bool)

(assert (=> b!2213438 m!2655771))

(assert (=> b!2213307 d!661971))

(declare-fun d!661973 () Bool)

(declare-fun res!951300 () Bool)

(declare-fun e!1413384 () Bool)

(assert (=> d!661973 (=> (not res!951300) (not e!1413384))))

(assert (=> d!661973 (= res!951300 (<= (size!20195 (list!10049 (xs!11409 (left!19903 t!4663)))) 512))))

(assert (=> d!661973 (= (inv!35066 (left!19903 t!4663)) e!1413384)))

(declare-fun b!2213440 () Bool)

(declare-fun res!951301 () Bool)

(assert (=> b!2213440 (=> (not res!951301) (not e!1413384))))

(assert (=> b!2213440 (= res!951301 (= (csize!17165 (left!19903 t!4663)) (size!20195 (list!10049 (xs!11409 (left!19903 t!4663))))))))

(declare-fun b!2213441 () Bool)

(assert (=> b!2213441 (= e!1413384 (and (> (csize!17165 (left!19903 t!4663)) 0) (<= (csize!17165 (left!19903 t!4663)) 512)))))

(assert (= (and d!661973 res!951300) b!2213440))

(assert (= (and b!2213440 res!951301) b!2213441))

(declare-fun m!2655773 () Bool)

(assert (=> d!661973 m!2655773))

(assert (=> d!661973 m!2655773))

(declare-fun m!2655775 () Bool)

(assert (=> d!661973 m!2655775))

(assert (=> b!2213440 m!2655773))

(assert (=> b!2213440 m!2655773))

(assert (=> b!2213440 m!2655775))

(assert (=> b!2213304 d!661973))

(declare-fun b!2213452 () Bool)

(declare-fun res!951307 () Bool)

(declare-fun e!1413390 () Bool)

(assert (=> b!2213452 (=> (not res!951307) (not e!1413390))))

(declare-fun lt!826680 () List!25954)

(assert (=> b!2213452 (= res!951307 (= (size!20195 lt!826680) (+ (size!20195 (list!10048 (left!19903 t!4663))) (size!20195 (list!10048 (right!20233 t!4663))))))))

(declare-fun b!2213453 () Bool)

(assert (=> b!2213453 (= e!1413390 (or (not (= (list!10048 (right!20233 t!4663)) Nil!25870)) (= lt!826680 (list!10048 (left!19903 t!4663)))))))

(declare-fun d!661975 () Bool)

(assert (=> d!661975 e!1413390))

(declare-fun res!951306 () Bool)

(assert (=> d!661975 (=> (not res!951306) (not e!1413390))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3519 (List!25954) (InoxSet T!40634))

(assert (=> d!661975 (= res!951306 (= (content!3519 lt!826680) ((_ map or) (content!3519 (list!10048 (left!19903 t!4663))) (content!3519 (list!10048 (right!20233 t!4663))))))))

(declare-fun e!1413389 () List!25954)

(assert (=> d!661975 (= lt!826680 e!1413389)))

(declare-fun c!353766 () Bool)

(assert (=> d!661975 (= c!353766 ((_ is Nil!25870) (list!10048 (left!19903 t!4663))))))

(assert (=> d!661975 (= (++!6456 (list!10048 (left!19903 t!4663)) (list!10048 (right!20233 t!4663))) lt!826680)))

(declare-fun b!2213450 () Bool)

(assert (=> b!2213450 (= e!1413389 (list!10048 (right!20233 t!4663)))))

(declare-fun b!2213451 () Bool)

(assert (=> b!2213451 (= e!1413389 (Cons!25870 (h!31271 (list!10048 (left!19903 t!4663))) (++!6456 (t!198720 (list!10048 (left!19903 t!4663))) (list!10048 (right!20233 t!4663)))))))

(assert (= (and d!661975 c!353766) b!2213450))

(assert (= (and d!661975 (not c!353766)) b!2213451))

(assert (= (and d!661975 res!951306) b!2213452))

(assert (= (and b!2213452 res!951307) b!2213453))

(declare-fun m!2655777 () Bool)

(assert (=> b!2213452 m!2655777))

(assert (=> b!2213452 m!2655691))

(declare-fun m!2655779 () Bool)

(assert (=> b!2213452 m!2655779))

(assert (=> b!2213452 m!2655693))

(declare-fun m!2655781 () Bool)

(assert (=> b!2213452 m!2655781))

(declare-fun m!2655783 () Bool)

(assert (=> d!661975 m!2655783))

(assert (=> d!661975 m!2655691))

(declare-fun m!2655785 () Bool)

(assert (=> d!661975 m!2655785))

(assert (=> d!661975 m!2655693))

(declare-fun m!2655787 () Bool)

(assert (=> d!661975 m!2655787))

(assert (=> b!2213451 m!2655693))

(declare-fun m!2655789 () Bool)

(assert (=> b!2213451 m!2655789))

(assert (=> b!2213357 d!661975))

(declare-fun b!2213456 () Bool)

(declare-fun e!1413392 () List!25954)

(assert (=> b!2213456 (= e!1413392 (list!10049 (xs!11409 (left!19903 t!4663))))))

(declare-fun b!2213454 () Bool)

(declare-fun e!1413391 () List!25954)

(assert (=> b!2213454 (= e!1413391 Nil!25870)))

(declare-fun b!2213457 () Bool)

(assert (=> b!2213457 (= e!1413392 (++!6456 (list!10048 (left!19903 (left!19903 t!4663))) (list!10048 (right!20233 (left!19903 t!4663)))))))

(declare-fun b!2213455 () Bool)

(assert (=> b!2213455 (= e!1413391 e!1413392)))

(declare-fun c!353768 () Bool)

(assert (=> b!2213455 (= c!353768 ((_ is Leaf!12400) (left!19903 t!4663)))))

(declare-fun d!661977 () Bool)

(declare-fun c!353767 () Bool)

(assert (=> d!661977 (= c!353767 ((_ is Empty!8467) (left!19903 t!4663)))))

(assert (=> d!661977 (= (list!10048 (left!19903 t!4663)) e!1413391)))

(assert (= (and d!661977 c!353767) b!2213454))

(assert (= (and d!661977 (not c!353767)) b!2213455))

(assert (= (and b!2213455 c!353768) b!2213456))

(assert (= (and b!2213455 (not c!353768)) b!2213457))

(assert (=> b!2213456 m!2655773))

(declare-fun m!2655791 () Bool)

(assert (=> b!2213457 m!2655791))

(declare-fun m!2655793 () Bool)

(assert (=> b!2213457 m!2655793))

(assert (=> b!2213457 m!2655791))

(assert (=> b!2213457 m!2655793))

(declare-fun m!2655795 () Bool)

(assert (=> b!2213457 m!2655795))

(assert (=> b!2213357 d!661977))

(declare-fun b!2213460 () Bool)

(declare-fun e!1413394 () List!25954)

(assert (=> b!2213460 (= e!1413394 (list!10049 (xs!11409 (right!20233 t!4663))))))

(declare-fun b!2213458 () Bool)

(declare-fun e!1413393 () List!25954)

(assert (=> b!2213458 (= e!1413393 Nil!25870)))

(declare-fun b!2213461 () Bool)

(assert (=> b!2213461 (= e!1413394 (++!6456 (list!10048 (left!19903 (right!20233 t!4663))) (list!10048 (right!20233 (right!20233 t!4663)))))))

(declare-fun b!2213459 () Bool)

(assert (=> b!2213459 (= e!1413393 e!1413394)))

(declare-fun c!353770 () Bool)

(assert (=> b!2213459 (= c!353770 ((_ is Leaf!12400) (right!20233 t!4663)))))

(declare-fun d!661979 () Bool)

(declare-fun c!353769 () Bool)

(assert (=> d!661979 (= c!353769 ((_ is Empty!8467) (right!20233 t!4663)))))

(assert (=> d!661979 (= (list!10048 (right!20233 t!4663)) e!1413393)))

(assert (= (and d!661979 c!353769) b!2213458))

(assert (= (and d!661979 (not c!353769)) b!2213459))

(assert (= (and b!2213459 c!353770) b!2213460))

(assert (= (and b!2213459 (not c!353770)) b!2213461))

(assert (=> b!2213460 m!2655753))

(declare-fun m!2655797 () Bool)

(assert (=> b!2213461 m!2655797))

(declare-fun m!2655799 () Bool)

(assert (=> b!2213461 m!2655799))

(assert (=> b!2213461 m!2655797))

(assert (=> b!2213461 m!2655799))

(declare-fun m!2655801 () Bool)

(assert (=> b!2213461 m!2655801))

(assert (=> b!2213357 d!661979))

(declare-fun d!661981 () Bool)

(assert (=> d!661981 (= (inv!35063 (xs!11409 (left!19903 t!4663))) (<= (size!20195 (innerList!8527 (xs!11409 (left!19903 t!4663)))) 2147483647))))

(declare-fun bs!451543 () Bool)

(assert (= bs!451543 d!661981))

(declare-fun m!2655803 () Bool)

(assert (=> bs!451543 m!2655803))

(assert (=> b!2213375 d!661981))

(declare-fun d!661983 () Bool)

(declare-fun lt!826681 () Bool)

(assert (=> d!661983 (= lt!826681 (isEmpty!14824 (list!10048 (left!19903 t!4663))))))

(assert (=> d!661983 (= lt!826681 (= (size!20193 (left!19903 t!4663)) 0))))

(assert (=> d!661983 (= (isEmpty!14823 (left!19903 t!4663)) lt!826681)))

(declare-fun bs!451544 () Bool)

(assert (= bs!451544 d!661983))

(assert (=> bs!451544 m!2655691))

(assert (=> bs!451544 m!2655691))

(declare-fun m!2655805 () Bool)

(assert (=> bs!451544 m!2655805))

(assert (=> bs!451544 m!2655763))

(assert (=> b!2213333 d!661983))

(declare-fun d!661985 () Bool)

(assert (=> d!661985 (= (isEmpty!14824 (list!10048 t!4663)) ((_ is Nil!25870) (list!10048 t!4663)))))

(assert (=> d!661935 d!661985))

(assert (=> d!661935 d!661941))

(declare-fun d!661987 () Bool)

(declare-fun lt!826684 () Int)

(assert (=> d!661987 (= lt!826684 (size!20195 (list!10048 t!4663)))))

(assert (=> d!661987 (= lt!826684 (ite ((_ is Empty!8467) t!4663) 0 (ite ((_ is Leaf!12400) t!4663) (csize!17165 t!4663) (csize!17164 t!4663))))))

(assert (=> d!661987 (= (size!20193 t!4663) lt!826684)))

(declare-fun bs!451545 () Bool)

(assert (= bs!451545 d!661987))

(assert (=> bs!451545 m!2655635))

(assert (=> bs!451545 m!2655635))

(declare-fun m!2655807 () Bool)

(assert (=> bs!451545 m!2655807))

(assert (=> d!661935 d!661987))

(declare-fun d!661989 () Bool)

(declare-fun c!353771 () Bool)

(assert (=> d!661989 (= c!353771 ((_ is Node!8467) (left!19903 (right!20233 t!4663))))))

(declare-fun e!1413395 () Bool)

(assert (=> d!661989 (= (inv!35064 (left!19903 (right!20233 t!4663))) e!1413395)))

(declare-fun b!2213462 () Bool)

(assert (=> b!2213462 (= e!1413395 (inv!35065 (left!19903 (right!20233 t!4663))))))

(declare-fun b!2213463 () Bool)

(declare-fun e!1413396 () Bool)

(assert (=> b!2213463 (= e!1413395 e!1413396)))

(declare-fun res!951308 () Bool)

(assert (=> b!2213463 (= res!951308 (not ((_ is Leaf!12400) (left!19903 (right!20233 t!4663)))))))

(assert (=> b!2213463 (=> res!951308 e!1413396)))

(declare-fun b!2213464 () Bool)

(assert (=> b!2213464 (= e!1413396 (inv!35066 (left!19903 (right!20233 t!4663))))))

(assert (= (and d!661989 c!353771) b!2213462))

(assert (= (and d!661989 (not c!353771)) b!2213463))

(assert (= (and b!2213463 (not res!951308)) b!2213464))

(declare-fun m!2655809 () Bool)

(assert (=> b!2213462 m!2655809))

(declare-fun m!2655811 () Bool)

(assert (=> b!2213464 m!2655811))

(assert (=> b!2213377 d!661989))

(declare-fun d!661991 () Bool)

(declare-fun c!353772 () Bool)

(assert (=> d!661991 (= c!353772 ((_ is Node!8467) (right!20233 (right!20233 t!4663))))))

(declare-fun e!1413397 () Bool)

(assert (=> d!661991 (= (inv!35064 (right!20233 (right!20233 t!4663))) e!1413397)))

(declare-fun b!2213465 () Bool)

(assert (=> b!2213465 (= e!1413397 (inv!35065 (right!20233 (right!20233 t!4663))))))

(declare-fun b!2213466 () Bool)

(declare-fun e!1413398 () Bool)

(assert (=> b!2213466 (= e!1413397 e!1413398)))

(declare-fun res!951309 () Bool)

(assert (=> b!2213466 (= res!951309 (not ((_ is Leaf!12400) (right!20233 (right!20233 t!4663)))))))

(assert (=> b!2213466 (=> res!951309 e!1413398)))

(declare-fun b!2213467 () Bool)

(assert (=> b!2213467 (= e!1413398 (inv!35066 (right!20233 (right!20233 t!4663))))))

(assert (= (and d!661991 c!353772) b!2213465))

(assert (= (and d!661991 (not c!353772)) b!2213466))

(assert (= (and b!2213466 (not res!951309)) b!2213467))

(declare-fun m!2655813 () Bool)

(assert (=> b!2213465 m!2655813))

(declare-fun m!2655815 () Bool)

(assert (=> b!2213467 m!2655815))

(assert (=> b!2213377 d!661991))

(declare-fun d!661993 () Bool)

(declare-fun res!951310 () Bool)

(declare-fun e!1413399 () Bool)

(assert (=> d!661993 (=> (not res!951310) (not e!1413399))))

(assert (=> d!661993 (= res!951310 (= (csize!17164 (left!19903 t!4663)) (+ (size!20193 (left!19903 (left!19903 t!4663))) (size!20193 (right!20233 (left!19903 t!4663))))))))

(assert (=> d!661993 (= (inv!35065 (left!19903 t!4663)) e!1413399)))

(declare-fun b!2213468 () Bool)

(declare-fun res!951311 () Bool)

(assert (=> b!2213468 (=> (not res!951311) (not e!1413399))))

(assert (=> b!2213468 (= res!951311 (and (not (= (left!19903 (left!19903 t!4663)) Empty!8467)) (not (= (right!20233 (left!19903 t!4663)) Empty!8467))))))

(declare-fun b!2213469 () Bool)

(declare-fun res!951312 () Bool)

(assert (=> b!2213469 (=> (not res!951312) (not e!1413399))))

(assert (=> b!2213469 (= res!951312 (= (cheight!8678 (left!19903 t!4663)) (+ (max!0 (height!1290 (left!19903 (left!19903 t!4663))) (height!1290 (right!20233 (left!19903 t!4663)))) 1)))))

(declare-fun b!2213470 () Bool)

(assert (=> b!2213470 (= e!1413399 (<= 0 (cheight!8678 (left!19903 t!4663))))))

(assert (= (and d!661993 res!951310) b!2213468))

(assert (= (and b!2213468 res!951311) b!2213469))

(assert (= (and b!2213469 res!951312) b!2213470))

(declare-fun m!2655817 () Bool)

(assert (=> d!661993 m!2655817))

(declare-fun m!2655819 () Bool)

(assert (=> d!661993 m!2655819))

(declare-fun m!2655821 () Bool)

(assert (=> b!2213469 m!2655821))

(declare-fun m!2655823 () Bool)

(assert (=> b!2213469 m!2655823))

(assert (=> b!2213469 m!2655821))

(assert (=> b!2213469 m!2655823))

(declare-fun m!2655825 () Bool)

(assert (=> b!2213469 m!2655825))

(assert (=> b!2213302 d!661993))

(assert (=> b!2213331 d!661961))

(assert (=> b!2213331 d!661963))

(declare-fun d!661995 () Bool)

(assert (=> d!661995 (= (list!10049 (xs!11409 t!4663)) (innerList!8527 (xs!11409 t!4663)))))

(assert (=> b!2213356 d!661995))

(declare-fun d!661997 () Bool)

(declare-fun c!353773 () Bool)

(assert (=> d!661997 (= c!353773 ((_ is Node!8467) (left!19903 (left!19903 t!4663))))))

(declare-fun e!1413400 () Bool)

(assert (=> d!661997 (= (inv!35064 (left!19903 (left!19903 t!4663))) e!1413400)))

(declare-fun b!2213471 () Bool)

(assert (=> b!2213471 (= e!1413400 (inv!35065 (left!19903 (left!19903 t!4663))))))

(declare-fun b!2213472 () Bool)

(declare-fun e!1413401 () Bool)

(assert (=> b!2213472 (= e!1413400 e!1413401)))

(declare-fun res!951313 () Bool)

(assert (=> b!2213472 (= res!951313 (not ((_ is Leaf!12400) (left!19903 (left!19903 t!4663)))))))

(assert (=> b!2213472 (=> res!951313 e!1413401)))

(declare-fun b!2213473 () Bool)

(assert (=> b!2213473 (= e!1413401 (inv!35066 (left!19903 (left!19903 t!4663))))))

(assert (= (and d!661997 c!353773) b!2213471))

(assert (= (and d!661997 (not c!353773)) b!2213472))

(assert (= (and b!2213472 (not res!951313)) b!2213473))

(declare-fun m!2655827 () Bool)

(assert (=> b!2213471 m!2655827))

(declare-fun m!2655829 () Bool)

(assert (=> b!2213473 m!2655829))

(assert (=> b!2213374 d!661997))

(declare-fun d!661999 () Bool)

(declare-fun c!353774 () Bool)

(assert (=> d!661999 (= c!353774 ((_ is Node!8467) (right!20233 (left!19903 t!4663))))))

(declare-fun e!1413402 () Bool)

(assert (=> d!661999 (= (inv!35064 (right!20233 (left!19903 t!4663))) e!1413402)))

(declare-fun b!2213474 () Bool)

(assert (=> b!2213474 (= e!1413402 (inv!35065 (right!20233 (left!19903 t!4663))))))

(declare-fun b!2213475 () Bool)

(declare-fun e!1413403 () Bool)

(assert (=> b!2213475 (= e!1413402 e!1413403)))

(declare-fun res!951314 () Bool)

(assert (=> b!2213475 (= res!951314 (not ((_ is Leaf!12400) (right!20233 (left!19903 t!4663)))))))

(assert (=> b!2213475 (=> res!951314 e!1413403)))

(declare-fun b!2213476 () Bool)

(assert (=> b!2213476 (= e!1413403 (inv!35066 (right!20233 (left!19903 t!4663))))))

(assert (= (and d!661999 c!353774) b!2213474))

(assert (= (and d!661999 (not c!353774)) b!2213475))

(assert (= (and b!2213475 (not res!951314)) b!2213476))

(declare-fun m!2655831 () Bool)

(assert (=> b!2213474 m!2655831))

(declare-fun m!2655833 () Bool)

(assert (=> b!2213476 m!2655833))

(assert (=> b!2213374 d!661999))

(declare-fun b!2213477 () Bool)

(declare-fun res!951319 () Bool)

(declare-fun e!1413404 () Bool)

(assert (=> b!2213477 (=> (not res!951319) (not e!1413404))))

(assert (=> b!2213477 (= res!951319 (isBalanced!2625 (right!20233 (left!19903 t!4663))))))

(declare-fun b!2213478 () Bool)

(declare-fun res!951316 () Bool)

(assert (=> b!2213478 (=> (not res!951316) (not e!1413404))))

(assert (=> b!2213478 (= res!951316 (<= (- (height!1290 (left!19903 (left!19903 t!4663))) (height!1290 (right!20233 (left!19903 t!4663)))) 1))))

(declare-fun d!662001 () Bool)

(declare-fun res!951318 () Bool)

(declare-fun e!1413405 () Bool)

(assert (=> d!662001 (=> res!951318 e!1413405)))

(assert (=> d!662001 (= res!951318 (not ((_ is Node!8467) (left!19903 t!4663))))))

(assert (=> d!662001 (= (isBalanced!2625 (left!19903 t!4663)) e!1413405)))

(declare-fun b!2213479 () Bool)

(assert (=> b!2213479 (= e!1413404 (not (isEmpty!14823 (right!20233 (left!19903 t!4663)))))))

(declare-fun b!2213480 () Bool)

(assert (=> b!2213480 (= e!1413405 e!1413404)))

(declare-fun res!951317 () Bool)

(assert (=> b!2213480 (=> (not res!951317) (not e!1413404))))

(assert (=> b!2213480 (= res!951317 (<= (- 1) (- (height!1290 (left!19903 (left!19903 t!4663))) (height!1290 (right!20233 (left!19903 t!4663))))))))

(declare-fun b!2213481 () Bool)

(declare-fun res!951320 () Bool)

(assert (=> b!2213481 (=> (not res!951320) (not e!1413404))))

(assert (=> b!2213481 (= res!951320 (isBalanced!2625 (left!19903 (left!19903 t!4663))))))

(declare-fun b!2213482 () Bool)

(declare-fun res!951315 () Bool)

(assert (=> b!2213482 (=> (not res!951315) (not e!1413404))))

(assert (=> b!2213482 (= res!951315 (not (isEmpty!14823 (left!19903 (left!19903 t!4663)))))))

(assert (= (and d!662001 (not res!951318)) b!2213480))

(assert (= (and b!2213480 res!951317) b!2213478))

(assert (= (and b!2213478 res!951316) b!2213481))

(assert (= (and b!2213481 res!951320) b!2213477))

(assert (= (and b!2213477 res!951319) b!2213482))

(assert (= (and b!2213482 res!951315) b!2213479))

(declare-fun m!2655835 () Bool)

(assert (=> b!2213482 m!2655835))

(declare-fun m!2655837 () Bool)

(assert (=> b!2213477 m!2655837))

(assert (=> b!2213480 m!2655821))

(assert (=> b!2213480 m!2655823))

(assert (=> b!2213478 m!2655821))

(assert (=> b!2213478 m!2655823))

(declare-fun m!2655839 () Bool)

(assert (=> b!2213481 m!2655839))

(declare-fun m!2655841 () Bool)

(assert (=> b!2213479 m!2655841))

(assert (=> b!2213332 d!662001))

(declare-fun d!662003 () Bool)

(declare-fun lt!826687 () Int)

(assert (=> d!662003 (>= lt!826687 0)))

(declare-fun e!1413408 () Int)

(assert (=> d!662003 (= lt!826687 e!1413408)))

(declare-fun c!353777 () Bool)

(assert (=> d!662003 (= c!353777 ((_ is Nil!25870) (innerList!8527 (xs!11409 t!4663))))))

(assert (=> d!662003 (= (size!20195 (innerList!8527 (xs!11409 t!4663))) lt!826687)))

(declare-fun b!2213487 () Bool)

(assert (=> b!2213487 (= e!1413408 0)))

(declare-fun b!2213488 () Bool)

(assert (=> b!2213488 (= e!1413408 (+ 1 (size!20195 (t!198720 (innerList!8527 (xs!11409 t!4663))))))))

(assert (= (and d!662003 c!353777) b!2213487))

(assert (= (and d!662003 (not c!353777)) b!2213488))

(declare-fun m!2655843 () Bool)

(assert (=> b!2213488 m!2655843))

(assert (=> d!661949 d!662003))

(declare-fun b!2213489 () Bool)

(declare-fun e!1413409 () Bool)

(declare-fun tp!687729 () Bool)

(assert (=> b!2213489 (= e!1413409 (and tp_is_empty!9801 tp!687729))))

(assert (=> b!2213379 (= tp!687709 e!1413409)))

(assert (= (and b!2213379 ((_ is Cons!25870) (innerList!8527 (xs!11409 (right!20233 t!4663))))) b!2213489))

(declare-fun b!2213490 () Bool)

(declare-fun e!1413410 () Bool)

(declare-fun tp!687730 () Bool)

(assert (=> b!2213490 (= e!1413410 (and tp_is_empty!9801 tp!687730))))

(assert (=> b!2213376 (= tp!687706 e!1413410)))

(assert (= (and b!2213376 ((_ is Cons!25870) (innerList!8527 (xs!11409 (left!19903 t!4663))))) b!2213490))

(declare-fun b!2213491 () Bool)

(declare-fun e!1413411 () Bool)

(declare-fun tp!687731 () Bool)

(assert (=> b!2213491 (= e!1413411 (and tp_is_empty!9801 tp!687731))))

(assert (=> b!2213384 (= tp!687713 e!1413411)))

(assert (= (and b!2213384 ((_ is Cons!25870) (t!198720 (innerList!8527 (xs!11409 t!4663))))) b!2213491))

(declare-fun b!2213492 () Bool)

(declare-fun e!1413413 () Bool)

(declare-fun tp!687734 () Bool)

(declare-fun tp!687732 () Bool)

(assert (=> b!2213492 (= e!1413413 (and (inv!35064 (left!19903 (left!19903 (right!20233 t!4663)))) tp!687734 (inv!35064 (right!20233 (left!19903 (right!20233 t!4663)))) tp!687732))))

(declare-fun b!2213494 () Bool)

(declare-fun e!1413412 () Bool)

(declare-fun tp!687733 () Bool)

(assert (=> b!2213494 (= e!1413412 tp!687733)))

(declare-fun b!2213493 () Bool)

(assert (=> b!2213493 (= e!1413413 (and (inv!35063 (xs!11409 (left!19903 (right!20233 t!4663)))) e!1413412))))

(assert (=> b!2213377 (= tp!687710 (and (inv!35064 (left!19903 (right!20233 t!4663))) e!1413413))))

(assert (= (and b!2213377 ((_ is Node!8467) (left!19903 (right!20233 t!4663)))) b!2213492))

(assert (= b!2213493 b!2213494))

(assert (= (and b!2213377 ((_ is Leaf!12400) (left!19903 (right!20233 t!4663)))) b!2213493))

(declare-fun m!2655845 () Bool)

(assert (=> b!2213492 m!2655845))

(declare-fun m!2655847 () Bool)

(assert (=> b!2213492 m!2655847))

(declare-fun m!2655849 () Bool)

(assert (=> b!2213493 m!2655849))

(assert (=> b!2213377 m!2655705))

(declare-fun tp!687735 () Bool)

(declare-fun tp!687737 () Bool)

(declare-fun b!2213495 () Bool)

(declare-fun e!1413415 () Bool)

(assert (=> b!2213495 (= e!1413415 (and (inv!35064 (left!19903 (right!20233 (right!20233 t!4663)))) tp!687737 (inv!35064 (right!20233 (right!20233 (right!20233 t!4663)))) tp!687735))))

(declare-fun b!2213497 () Bool)

(declare-fun e!1413414 () Bool)

(declare-fun tp!687736 () Bool)

(assert (=> b!2213497 (= e!1413414 tp!687736)))

(declare-fun b!2213496 () Bool)

(assert (=> b!2213496 (= e!1413415 (and (inv!35063 (xs!11409 (right!20233 (right!20233 t!4663)))) e!1413414))))

(assert (=> b!2213377 (= tp!687708 (and (inv!35064 (right!20233 (right!20233 t!4663))) e!1413415))))

(assert (= (and b!2213377 ((_ is Node!8467) (right!20233 (right!20233 t!4663)))) b!2213495))

(assert (= b!2213496 b!2213497))

(assert (= (and b!2213377 ((_ is Leaf!12400) (right!20233 (right!20233 t!4663)))) b!2213496))

(declare-fun m!2655851 () Bool)

(assert (=> b!2213495 m!2655851))

(declare-fun m!2655853 () Bool)

(assert (=> b!2213495 m!2655853))

(declare-fun m!2655855 () Bool)

(assert (=> b!2213496 m!2655855))

(assert (=> b!2213377 m!2655707))

(declare-fun tp!687738 () Bool)

(declare-fun e!1413417 () Bool)

(declare-fun tp!687740 () Bool)

(declare-fun b!2213498 () Bool)

(assert (=> b!2213498 (= e!1413417 (and (inv!35064 (left!19903 (left!19903 (left!19903 t!4663)))) tp!687740 (inv!35064 (right!20233 (left!19903 (left!19903 t!4663)))) tp!687738))))

(declare-fun b!2213500 () Bool)

(declare-fun e!1413416 () Bool)

(declare-fun tp!687739 () Bool)

(assert (=> b!2213500 (= e!1413416 tp!687739)))

(declare-fun b!2213499 () Bool)

(assert (=> b!2213499 (= e!1413417 (and (inv!35063 (xs!11409 (left!19903 (left!19903 t!4663)))) e!1413416))))

(assert (=> b!2213374 (= tp!687707 (and (inv!35064 (left!19903 (left!19903 t!4663))) e!1413417))))

(assert (= (and b!2213374 ((_ is Node!8467) (left!19903 (left!19903 t!4663)))) b!2213498))

(assert (= b!2213499 b!2213500))

(assert (= (and b!2213374 ((_ is Leaf!12400) (left!19903 (left!19903 t!4663)))) b!2213499))

(declare-fun m!2655857 () Bool)

(assert (=> b!2213498 m!2655857))

(declare-fun m!2655859 () Bool)

(assert (=> b!2213498 m!2655859))

(declare-fun m!2655861 () Bool)

(assert (=> b!2213499 m!2655861))

(assert (=> b!2213374 m!2655699))

(declare-fun tp!687741 () Bool)

(declare-fun b!2213501 () Bool)

(declare-fun e!1413419 () Bool)

(declare-fun tp!687743 () Bool)

(assert (=> b!2213501 (= e!1413419 (and (inv!35064 (left!19903 (right!20233 (left!19903 t!4663)))) tp!687743 (inv!35064 (right!20233 (right!20233 (left!19903 t!4663)))) tp!687741))))

(declare-fun b!2213503 () Bool)

(declare-fun e!1413418 () Bool)

(declare-fun tp!687742 () Bool)

(assert (=> b!2213503 (= e!1413418 tp!687742)))

(declare-fun b!2213502 () Bool)

(assert (=> b!2213502 (= e!1413419 (and (inv!35063 (xs!11409 (right!20233 (left!19903 t!4663)))) e!1413418))))

(assert (=> b!2213374 (= tp!687705 (and (inv!35064 (right!20233 (left!19903 t!4663))) e!1413419))))

(assert (= (and b!2213374 ((_ is Node!8467) (right!20233 (left!19903 t!4663)))) b!2213501))

(assert (= b!2213502 b!2213503))

(assert (= (and b!2213374 ((_ is Leaf!12400) (right!20233 (left!19903 t!4663)))) b!2213502))

(declare-fun m!2655863 () Bool)

(assert (=> b!2213501 m!2655863))

(declare-fun m!2655865 () Bool)

(assert (=> b!2213501 m!2655865))

(declare-fun m!2655867 () Bool)

(assert (=> b!2213502 m!2655867))

(assert (=> b!2213374 m!2655701))

(check-sat (not b!2213461) (not d!661973) (not b!2213479) (not d!661965) (not b!2213476) (not b!2213473) (not b!2213499) (not b!2213478) (not b!2213480) (not b!2213492) (not b!2213452) (not b!2213419) (not b!2213377) (not d!661983) (not b!2213424) (not b!2213500) (not b!2213488) (not b!2213451) (not b!2213435) (not d!661969) (not b!2213374) (not b!2213494) (not b!2213415) (not b!2213477) (not d!661981) (not b!2213414) (not b!2213502) (not d!661993) (not b!2213418) (not b!2213457) (not b!2213498) (not b!2213456) (not b!2213467) (not b!2213497) (not b!2213490) (not b!2213440) (not b!2213481) (not d!661967) (not b!2213464) (not b!2213462) (not b!2213493) (not b!2213438) tp_is_empty!9801 (not b!2213460) (not d!661975) (not b!2213495) (not b!2213503) (not b!2213489) (not b!2213474) (not d!661971) (not b!2213416) (not b!2213426) (not b!2213417) (not b!2213471) (not d!661957) (not b!2213465) (not d!661987) (not b!2213469) (not b!2213482) (not d!661959) (not b!2213496) (not b!2213501) (not b!2213491))
(check-sat)
