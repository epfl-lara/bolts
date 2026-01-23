; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186048 () Bool)

(assert start!186048)

(declare-fun b!1861215 () Bool)

(declare-fun e!1188612 () Bool)

(declare-datatypes ((T!32906 0))(
  ( (T!32907 (val!5912 Int)) )
))
(declare-datatypes ((List!20729 0))(
  ( (Nil!20647) (Cons!20647 (h!26048 T!32906) (t!172754 List!20729)) )
))
(declare-datatypes ((IArray!13689 0))(
  ( (IArray!13690 (innerList!6902 List!20729)) )
))
(declare-datatypes ((Conc!6842 0))(
  ( (Node!6842 (left!16616 Conc!6842) (right!16946 Conc!6842) (csize!13914 Int) (cheight!7053 Int)) (Leaf!10031 (xs!9718 IArray!13689) (csize!13915 Int)) (Empty!6842) )
))
(declare-fun t!4595 () Conc!6842)

(declare-fun e!1188613 () Bool)

(declare-fun inv!27199 (IArray!13689) Bool)

(assert (=> b!1861215 (= e!1188612 (and (inv!27199 (xs!9718 t!4595)) e!1188613))))

(declare-fun b!1861216 () Bool)

(declare-fun e!1188610 () Bool)

(declare-fun e!1188611 () Bool)

(assert (=> b!1861216 (= e!1188610 (not e!1188611))))

(declare-fun res!833440 () Bool)

(assert (=> b!1861216 (=> (not res!833440) (not e!1188611))))

(assert (=> b!1861216 (= res!833440 (<= 1 (csize!13915 t!4595)))))

(declare-fun lt!717775 () List!20729)

(declare-fun tail!2803 (List!20729) List!20729)

(declare-fun slice!557 (List!20729 Int Int) List!20729)

(declare-fun size!16331 (List!20729) Int)

(assert (=> b!1861216 (= (tail!2803 lt!717775) (slice!557 lt!717775 1 (size!16331 lt!717775)))))

(declare-datatypes ((Unit!35259 0))(
  ( (Unit!35260) )
))
(declare-fun lt!717774 () Unit!35259)

(declare-fun sliceTailLemma!24 (List!20729) Unit!35259)

(assert (=> b!1861216 (= lt!717774 (sliceTailLemma!24 lt!717775))))

(declare-fun list!8406 (IArray!13689) List!20729)

(assert (=> b!1861216 (= lt!717775 (list!8406 (xs!9718 t!4595)))))

(declare-fun tp!530385 () Bool)

(declare-fun b!1861217 () Bool)

(declare-fun tp!530386 () Bool)

(declare-fun inv!27200 (Conc!6842) Bool)

(assert (=> b!1861217 (= e!1188612 (and (inv!27200 (left!16616 t!4595)) tp!530386 (inv!27200 (right!16946 t!4595)) tp!530385))))

(declare-fun b!1861219 () Bool)

(declare-fun res!833441 () Bool)

(assert (=> b!1861219 (=> (not res!833441) (not e!1188610))))

(get-info :version)

(assert (=> b!1861219 (= res!833441 (and ((_ is Leaf!10031) t!4595) (not (= (csize!13915 t!4595) 1))))))

(declare-fun b!1861220 () Bool)

(declare-fun size!16332 (IArray!13689) Int)

(assert (=> b!1861220 (= e!1188611 (<= (csize!13915 t!4595) (size!16332 (xs!9718 t!4595))))))

(declare-fun b!1861221 () Bool)

(declare-fun tp!530384 () Bool)

(assert (=> b!1861221 (= e!1188613 tp!530384)))

(declare-fun b!1861218 () Bool)

(declare-fun res!833442 () Bool)

(assert (=> b!1861218 (=> (not res!833442) (not e!1188610))))

(declare-fun isEmpty!12841 (Conc!6842) Bool)

(assert (=> b!1861218 (= res!833442 (not (isEmpty!12841 t!4595)))))

(declare-fun res!833443 () Bool)

(assert (=> start!186048 (=> (not res!833443) (not e!1188610))))

(declare-fun isBalanced!2143 (Conc!6842) Bool)

(assert (=> start!186048 (= res!833443 (isBalanced!2143 t!4595))))

(assert (=> start!186048 e!1188610))

(assert (=> start!186048 (and (inv!27200 t!4595) e!1188612)))

(assert (= (and start!186048 res!833443) b!1861218))

(assert (= (and b!1861218 res!833442) b!1861219))

(assert (= (and b!1861219 res!833441) b!1861216))

(assert (= (and b!1861216 res!833440) b!1861220))

(assert (= (and start!186048 ((_ is Node!6842) t!4595)) b!1861217))

(assert (= b!1861215 b!1861221))

(assert (= (and start!186048 ((_ is Leaf!10031) t!4595)) b!1861215))

(declare-fun m!2284919 () Bool)

(assert (=> b!1861218 m!2284919))

(declare-fun m!2284921 () Bool)

(assert (=> b!1861217 m!2284921))

(declare-fun m!2284923 () Bool)

(assert (=> b!1861217 m!2284923))

(declare-fun m!2284925 () Bool)

(assert (=> start!186048 m!2284925))

(declare-fun m!2284927 () Bool)

(assert (=> start!186048 m!2284927))

(declare-fun m!2284929 () Bool)

(assert (=> b!1861220 m!2284929))

(declare-fun m!2284931 () Bool)

(assert (=> b!1861215 m!2284931))

(declare-fun m!2284933 () Bool)

(assert (=> b!1861216 m!2284933))

(declare-fun m!2284935 () Bool)

(assert (=> b!1861216 m!2284935))

(declare-fun m!2284937 () Bool)

(assert (=> b!1861216 m!2284937))

(assert (=> b!1861216 m!2284937))

(declare-fun m!2284939 () Bool)

(assert (=> b!1861216 m!2284939))

(declare-fun m!2284941 () Bool)

(assert (=> b!1861216 m!2284941))

(check-sat (not b!1861221) (not b!1861216) (not b!1861217) (not b!1861218) (not b!1861220) (not start!186048) (not b!1861215))
(check-sat)
(get-model)

(declare-fun d!567989 () Bool)

(declare-fun lt!717778 () Bool)

(declare-fun isEmpty!12842 (List!20729) Bool)

(declare-fun list!8407 (Conc!6842) List!20729)

(assert (=> d!567989 (= lt!717778 (isEmpty!12842 (list!8407 t!4595)))))

(declare-fun size!16333 (Conc!6842) Int)

(assert (=> d!567989 (= lt!717778 (= (size!16333 t!4595) 0))))

(assert (=> d!567989 (= (isEmpty!12841 t!4595) lt!717778)))

(declare-fun bs!411494 () Bool)

(assert (= bs!411494 d!567989))

(declare-fun m!2284943 () Bool)

(assert (=> bs!411494 m!2284943))

(assert (=> bs!411494 m!2284943))

(declare-fun m!2284945 () Bool)

(assert (=> bs!411494 m!2284945))

(declare-fun m!2284947 () Bool)

(assert (=> bs!411494 m!2284947))

(assert (=> b!1861218 d!567989))

(declare-fun d!567993 () Bool)

(declare-fun c!303110 () Bool)

(assert (=> d!567993 (= c!303110 ((_ is Node!6842) (left!16616 t!4595)))))

(declare-fun e!1188624 () Bool)

(assert (=> d!567993 (= (inv!27200 (left!16616 t!4595)) e!1188624)))

(declare-fun b!1861246 () Bool)

(declare-fun inv!27201 (Conc!6842) Bool)

(assert (=> b!1861246 (= e!1188624 (inv!27201 (left!16616 t!4595)))))

(declare-fun b!1861247 () Bool)

(declare-fun e!1188625 () Bool)

(assert (=> b!1861247 (= e!1188624 e!1188625)))

(declare-fun res!833464 () Bool)

(assert (=> b!1861247 (= res!833464 (not ((_ is Leaf!10031) (left!16616 t!4595))))))

(assert (=> b!1861247 (=> res!833464 e!1188625)))

(declare-fun b!1861248 () Bool)

(declare-fun inv!27202 (Conc!6842) Bool)

(assert (=> b!1861248 (= e!1188625 (inv!27202 (left!16616 t!4595)))))

(assert (= (and d!567993 c!303110) b!1861246))

(assert (= (and d!567993 (not c!303110)) b!1861247))

(assert (= (and b!1861247 (not res!833464)) b!1861248))

(declare-fun m!2284961 () Bool)

(assert (=> b!1861246 m!2284961))

(declare-fun m!2284963 () Bool)

(assert (=> b!1861248 m!2284963))

(assert (=> b!1861217 d!567993))

(declare-fun d!567997 () Bool)

(declare-fun c!303111 () Bool)

(assert (=> d!567997 (= c!303111 ((_ is Node!6842) (right!16946 t!4595)))))

(declare-fun e!1188626 () Bool)

(assert (=> d!567997 (= (inv!27200 (right!16946 t!4595)) e!1188626)))

(declare-fun b!1861249 () Bool)

(assert (=> b!1861249 (= e!1188626 (inv!27201 (right!16946 t!4595)))))

(declare-fun b!1861250 () Bool)

(declare-fun e!1188627 () Bool)

(assert (=> b!1861250 (= e!1188626 e!1188627)))

(declare-fun res!833465 () Bool)

(assert (=> b!1861250 (= res!833465 (not ((_ is Leaf!10031) (right!16946 t!4595))))))

(assert (=> b!1861250 (=> res!833465 e!1188627)))

(declare-fun b!1861251 () Bool)

(assert (=> b!1861251 (= e!1188627 (inv!27202 (right!16946 t!4595)))))

(assert (= (and d!567997 c!303111) b!1861249))

(assert (= (and d!567997 (not c!303111)) b!1861250))

(assert (= (and b!1861250 (not res!833465)) b!1861251))

(declare-fun m!2284965 () Bool)

(assert (=> b!1861249 m!2284965))

(declare-fun m!2284967 () Bool)

(assert (=> b!1861251 m!2284967))

(assert (=> b!1861217 d!567997))

(declare-fun d!567999 () Bool)

(assert (=> d!567999 (= (inv!27199 (xs!9718 t!4595)) (<= (size!16331 (innerList!6902 (xs!9718 t!4595))) 2147483647))))

(declare-fun bs!411495 () Bool)

(assert (= bs!411495 d!567999))

(declare-fun m!2284969 () Bool)

(assert (=> bs!411495 m!2284969))

(assert (=> b!1861215 d!567999))

(declare-fun d!568001 () Bool)

(assert (=> d!568001 (= (tail!2803 lt!717775) (slice!557 lt!717775 1 (size!16331 lt!717775)))))

(declare-fun lt!717781 () Unit!35259)

(declare-fun choose!11714 (List!20729) Unit!35259)

(assert (=> d!568001 (= lt!717781 (choose!11714 lt!717775))))

(assert (=> d!568001 (> (size!16331 lt!717775) 0)))

(assert (=> d!568001 (= (sliceTailLemma!24 lt!717775) lt!717781)))

(declare-fun bs!411496 () Bool)

(assert (= bs!411496 d!568001))

(assert (=> bs!411496 m!2284941))

(assert (=> bs!411496 m!2284937))

(assert (=> bs!411496 m!2284937))

(assert (=> bs!411496 m!2284939))

(declare-fun m!2284975 () Bool)

(assert (=> bs!411496 m!2284975))

(assert (=> b!1861216 d!568001))

(declare-fun d!568005 () Bool)

(declare-fun take!156 (List!20729 Int) List!20729)

(declare-fun drop!983 (List!20729 Int) List!20729)

(assert (=> d!568005 (= (slice!557 lt!717775 1 (size!16331 lt!717775)) (take!156 (drop!983 lt!717775 1) (- (size!16331 lt!717775) 1)))))

(declare-fun bs!411498 () Bool)

(assert (= bs!411498 d!568005))

(declare-fun m!2284981 () Bool)

(assert (=> bs!411498 m!2284981))

(assert (=> bs!411498 m!2284981))

(declare-fun m!2284983 () Bool)

(assert (=> bs!411498 m!2284983))

(assert (=> b!1861216 d!568005))

(declare-fun d!568009 () Bool)

(assert (=> d!568009 (= (list!8406 (xs!9718 t!4595)) (innerList!6902 (xs!9718 t!4595)))))

(assert (=> b!1861216 d!568009))

(declare-fun d!568011 () Bool)

(declare-fun lt!717790 () Int)

(assert (=> d!568011 (>= lt!717790 0)))

(declare-fun e!1188636 () Int)

(assert (=> d!568011 (= lt!717790 e!1188636)))

(declare-fun c!303117 () Bool)

(assert (=> d!568011 (= c!303117 ((_ is Nil!20647) lt!717775))))

(assert (=> d!568011 (= (size!16331 lt!717775) lt!717790)))

(declare-fun b!1861265 () Bool)

(assert (=> b!1861265 (= e!1188636 0)))

(declare-fun b!1861266 () Bool)

(assert (=> b!1861266 (= e!1188636 (+ 1 (size!16331 (t!172754 lt!717775))))))

(assert (= (and d!568011 c!303117) b!1861265))

(assert (= (and d!568011 (not c!303117)) b!1861266))

(declare-fun m!2284993 () Bool)

(assert (=> b!1861266 m!2284993))

(assert (=> b!1861216 d!568011))

(declare-fun d!568017 () Bool)

(assert (=> d!568017 (= (tail!2803 lt!717775) (t!172754 lt!717775))))

(assert (=> b!1861216 d!568017))

(declare-fun d!568023 () Bool)

(declare-fun lt!717793 () Int)

(assert (=> d!568023 (= lt!717793 (size!16331 (list!8406 (xs!9718 t!4595))))))

(declare-fun choose!11716 (IArray!13689) Int)

(assert (=> d!568023 (= lt!717793 (choose!11716 (xs!9718 t!4595)))))

(assert (=> d!568023 (= (size!16332 (xs!9718 t!4595)) lt!717793)))

(declare-fun bs!411501 () Bool)

(assert (= bs!411501 d!568023))

(assert (=> bs!411501 m!2284933))

(assert (=> bs!411501 m!2284933))

(declare-fun m!2285003 () Bool)

(assert (=> bs!411501 m!2285003))

(declare-fun m!2285005 () Bool)

(assert (=> bs!411501 m!2285005))

(assert (=> b!1861220 d!568023))

(declare-fun b!1861291 () Bool)

(declare-fun e!1188648 () Bool)

(declare-fun e!1188649 () Bool)

(assert (=> b!1861291 (= e!1188648 e!1188649)))

(declare-fun res!833488 () Bool)

(assert (=> b!1861291 (=> (not res!833488) (not e!1188649))))

(declare-fun height!1035 (Conc!6842) Int)

(assert (=> b!1861291 (= res!833488 (<= (- 1) (- (height!1035 (left!16616 t!4595)) (height!1035 (right!16946 t!4595)))))))

(declare-fun b!1861292 () Bool)

(declare-fun res!833486 () Bool)

(assert (=> b!1861292 (=> (not res!833486) (not e!1188649))))

(assert (=> b!1861292 (= res!833486 (<= (- (height!1035 (left!16616 t!4595)) (height!1035 (right!16946 t!4595))) 1))))

(declare-fun b!1861293 () Bool)

(assert (=> b!1861293 (= e!1188649 (not (isEmpty!12841 (right!16946 t!4595))))))

(declare-fun d!568025 () Bool)

(declare-fun res!833484 () Bool)

(assert (=> d!568025 (=> res!833484 e!1188648)))

(assert (=> d!568025 (= res!833484 (not ((_ is Node!6842) t!4595)))))

(assert (=> d!568025 (= (isBalanced!2143 t!4595) e!1188648)))

(declare-fun b!1861294 () Bool)

(declare-fun res!833483 () Bool)

(assert (=> b!1861294 (=> (not res!833483) (not e!1188649))))

(assert (=> b!1861294 (= res!833483 (not (isEmpty!12841 (left!16616 t!4595))))))

(declare-fun b!1861295 () Bool)

(declare-fun res!833485 () Bool)

(assert (=> b!1861295 (=> (not res!833485) (not e!1188649))))

(assert (=> b!1861295 (= res!833485 (isBalanced!2143 (left!16616 t!4595)))))

(declare-fun b!1861296 () Bool)

(declare-fun res!833487 () Bool)

(assert (=> b!1861296 (=> (not res!833487) (not e!1188649))))

(assert (=> b!1861296 (= res!833487 (isBalanced!2143 (right!16946 t!4595)))))

(assert (= (and d!568025 (not res!833484)) b!1861291))

(assert (= (and b!1861291 res!833488) b!1861292))

(assert (= (and b!1861292 res!833486) b!1861295))

(assert (= (and b!1861295 res!833485) b!1861296))

(assert (= (and b!1861296 res!833487) b!1861294))

(assert (= (and b!1861294 res!833483) b!1861293))

(declare-fun m!2285015 () Bool)

(assert (=> b!1861293 m!2285015))

(declare-fun m!2285017 () Bool)

(assert (=> b!1861294 m!2285017))

(declare-fun m!2285019 () Bool)

(assert (=> b!1861296 m!2285019))

(declare-fun m!2285021 () Bool)

(assert (=> b!1861295 m!2285021))

(declare-fun m!2285023 () Bool)

(assert (=> b!1861292 m!2285023))

(declare-fun m!2285025 () Bool)

(assert (=> b!1861292 m!2285025))

(assert (=> b!1861291 m!2285023))

(assert (=> b!1861291 m!2285025))

(assert (=> start!186048 d!568025))

(declare-fun d!568035 () Bool)

(declare-fun c!303123 () Bool)

(assert (=> d!568035 (= c!303123 ((_ is Node!6842) t!4595))))

(declare-fun e!1188654 () Bool)

(assert (=> d!568035 (= (inv!27200 t!4595) e!1188654)))

(declare-fun b!1861305 () Bool)

(assert (=> b!1861305 (= e!1188654 (inv!27201 t!4595))))

(declare-fun b!1861306 () Bool)

(declare-fun e!1188655 () Bool)

(assert (=> b!1861306 (= e!1188654 e!1188655)))

(declare-fun res!833489 () Bool)

(assert (=> b!1861306 (= res!833489 (not ((_ is Leaf!10031) t!4595)))))

(assert (=> b!1861306 (=> res!833489 e!1188655)))

(declare-fun b!1861307 () Bool)

(assert (=> b!1861307 (= e!1188655 (inv!27202 t!4595))))

(assert (= (and d!568035 c!303123) b!1861305))

(assert (= (and d!568035 (not c!303123)) b!1861306))

(assert (= (and b!1861306 (not res!833489)) b!1861307))

(declare-fun m!2285027 () Bool)

(assert (=> b!1861305 m!2285027))

(declare-fun m!2285029 () Bool)

(assert (=> b!1861307 m!2285029))

(assert (=> start!186048 d!568035))

(declare-fun e!1188666 () Bool)

(declare-fun tp!530408 () Bool)

(declare-fun tp!530407 () Bool)

(declare-fun b!1861326 () Bool)

(assert (=> b!1861326 (= e!1188666 (and (inv!27200 (left!16616 (left!16616 t!4595))) tp!530408 (inv!27200 (right!16946 (left!16616 t!4595))) tp!530407))))

(declare-fun b!1861328 () Bool)

(declare-fun e!1188667 () Bool)

(declare-fun tp!530409 () Bool)

(assert (=> b!1861328 (= e!1188667 tp!530409)))

(declare-fun b!1861327 () Bool)

(assert (=> b!1861327 (= e!1188666 (and (inv!27199 (xs!9718 (left!16616 t!4595))) e!1188667))))

(assert (=> b!1861217 (= tp!530386 (and (inv!27200 (left!16616 t!4595)) e!1188666))))

(assert (= (and b!1861217 ((_ is Node!6842) (left!16616 t!4595))) b!1861326))

(assert (= b!1861327 b!1861328))

(assert (= (and b!1861217 ((_ is Leaf!10031) (left!16616 t!4595))) b!1861327))

(declare-fun m!2285043 () Bool)

(assert (=> b!1861326 m!2285043))

(declare-fun m!2285045 () Bool)

(assert (=> b!1861326 m!2285045))

(declare-fun m!2285047 () Bool)

(assert (=> b!1861327 m!2285047))

(assert (=> b!1861217 m!2284921))

(declare-fun e!1188669 () Bool)

(declare-fun tp!530411 () Bool)

(declare-fun tp!530412 () Bool)

(declare-fun b!1861330 () Bool)

(assert (=> b!1861330 (= e!1188669 (and (inv!27200 (left!16616 (right!16946 t!4595))) tp!530412 (inv!27200 (right!16946 (right!16946 t!4595))) tp!530411))))

(declare-fun b!1861332 () Bool)

(declare-fun e!1188670 () Bool)

(declare-fun tp!530413 () Bool)

(assert (=> b!1861332 (= e!1188670 tp!530413)))

(declare-fun b!1861331 () Bool)

(assert (=> b!1861331 (= e!1188669 (and (inv!27199 (xs!9718 (right!16946 t!4595))) e!1188670))))

(assert (=> b!1861217 (= tp!530385 (and (inv!27200 (right!16946 t!4595)) e!1188669))))

(assert (= (and b!1861217 ((_ is Node!6842) (right!16946 t!4595))) b!1861330))

(assert (= b!1861331 b!1861332))

(assert (= (and b!1861217 ((_ is Leaf!10031) (right!16946 t!4595))) b!1861331))

(declare-fun m!2285049 () Bool)

(assert (=> b!1861330 m!2285049))

(declare-fun m!2285051 () Bool)

(assert (=> b!1861330 m!2285051))

(declare-fun m!2285053 () Bool)

(assert (=> b!1861331 m!2285053))

(assert (=> b!1861217 m!2284923))

(declare-fun b!1861337 () Bool)

(declare-fun e!1188673 () Bool)

(declare-fun tp_is_empty!8615 () Bool)

(declare-fun tp!530416 () Bool)

(assert (=> b!1861337 (= e!1188673 (and tp_is_empty!8615 tp!530416))))

(assert (=> b!1861221 (= tp!530384 e!1188673)))

(assert (= (and b!1861221 ((_ is Cons!20647) (innerList!6902 (xs!9718 t!4595)))) b!1861337))

(check-sat (not d!568005) (not b!1861246) (not d!567999) (not b!1861217) (not b!1861294) (not b!1861251) (not b!1861248) (not b!1861249) (not b!1861327) (not b!1861296) (not b!1861332) (not b!1861307) (not b!1861295) (not b!1861305) tp_is_empty!8615 (not b!1861291) (not b!1861328) (not d!568001) (not b!1861293) (not d!568023) (not b!1861331) (not b!1861266) (not b!1861330) (not b!1861337) (not b!1861292) (not b!1861326) (not d!567989))
(check-sat)
(get-model)

(declare-fun d!568037 () Bool)

(declare-fun c!303124 () Bool)

(assert (=> d!568037 (= c!303124 ((_ is Node!6842) (left!16616 (right!16946 t!4595))))))

(declare-fun e!1188674 () Bool)

(assert (=> d!568037 (= (inv!27200 (left!16616 (right!16946 t!4595))) e!1188674)))

(declare-fun b!1861338 () Bool)

(assert (=> b!1861338 (= e!1188674 (inv!27201 (left!16616 (right!16946 t!4595))))))

(declare-fun b!1861339 () Bool)

(declare-fun e!1188675 () Bool)

(assert (=> b!1861339 (= e!1188674 e!1188675)))

(declare-fun res!833490 () Bool)

(assert (=> b!1861339 (= res!833490 (not ((_ is Leaf!10031) (left!16616 (right!16946 t!4595)))))))

(assert (=> b!1861339 (=> res!833490 e!1188675)))

(declare-fun b!1861340 () Bool)

(assert (=> b!1861340 (= e!1188675 (inv!27202 (left!16616 (right!16946 t!4595))))))

(assert (= (and d!568037 c!303124) b!1861338))

(assert (= (and d!568037 (not c!303124)) b!1861339))

(assert (= (and b!1861339 (not res!833490)) b!1861340))

(declare-fun m!2285055 () Bool)

(assert (=> b!1861338 m!2285055))

(declare-fun m!2285057 () Bool)

(assert (=> b!1861340 m!2285057))

(assert (=> b!1861330 d!568037))

(declare-fun d!568039 () Bool)

(declare-fun c!303125 () Bool)

(assert (=> d!568039 (= c!303125 ((_ is Node!6842) (right!16946 (right!16946 t!4595))))))

(declare-fun e!1188676 () Bool)

(assert (=> d!568039 (= (inv!27200 (right!16946 (right!16946 t!4595))) e!1188676)))

(declare-fun b!1861341 () Bool)

(assert (=> b!1861341 (= e!1188676 (inv!27201 (right!16946 (right!16946 t!4595))))))

(declare-fun b!1861342 () Bool)

(declare-fun e!1188677 () Bool)

(assert (=> b!1861342 (= e!1188676 e!1188677)))

(declare-fun res!833491 () Bool)

(assert (=> b!1861342 (= res!833491 (not ((_ is Leaf!10031) (right!16946 (right!16946 t!4595)))))))

(assert (=> b!1861342 (=> res!833491 e!1188677)))

(declare-fun b!1861343 () Bool)

(assert (=> b!1861343 (= e!1188677 (inv!27202 (right!16946 (right!16946 t!4595))))))

(assert (= (and d!568039 c!303125) b!1861341))

(assert (= (and d!568039 (not c!303125)) b!1861342))

(assert (= (and b!1861342 (not res!833491)) b!1861343))

(declare-fun m!2285059 () Bool)

(assert (=> b!1861341 m!2285059))

(declare-fun m!2285061 () Bool)

(assert (=> b!1861343 m!2285061))

(assert (=> b!1861330 d!568039))

(declare-fun d!568041 () Bool)

(assert (=> d!568041 (= (inv!27199 (xs!9718 (right!16946 t!4595))) (<= (size!16331 (innerList!6902 (xs!9718 (right!16946 t!4595)))) 2147483647))))

(declare-fun bs!411504 () Bool)

(assert (= bs!411504 d!568041))

(declare-fun m!2285063 () Bool)

(assert (=> bs!411504 m!2285063))

(assert (=> b!1861331 d!568041))

(declare-fun d!568043 () Bool)

(declare-fun res!833496 () Bool)

(declare-fun e!1188680 () Bool)

(assert (=> d!568043 (=> (not res!833496) (not e!1188680))))

(assert (=> d!568043 (= res!833496 (<= (size!16331 (list!8406 (xs!9718 (right!16946 t!4595)))) 512))))

(assert (=> d!568043 (= (inv!27202 (right!16946 t!4595)) e!1188680)))

(declare-fun b!1861348 () Bool)

(declare-fun res!833497 () Bool)

(assert (=> b!1861348 (=> (not res!833497) (not e!1188680))))

(assert (=> b!1861348 (= res!833497 (= (csize!13915 (right!16946 t!4595)) (size!16331 (list!8406 (xs!9718 (right!16946 t!4595))))))))

(declare-fun b!1861349 () Bool)

(assert (=> b!1861349 (= e!1188680 (and (> (csize!13915 (right!16946 t!4595)) 0) (<= (csize!13915 (right!16946 t!4595)) 512)))))

(assert (= (and d!568043 res!833496) b!1861348))

(assert (= (and b!1861348 res!833497) b!1861349))

(declare-fun m!2285065 () Bool)

(assert (=> d!568043 m!2285065))

(assert (=> d!568043 m!2285065))

(declare-fun m!2285067 () Bool)

(assert (=> d!568043 m!2285067))

(assert (=> b!1861348 m!2285065))

(assert (=> b!1861348 m!2285065))

(assert (=> b!1861348 m!2285067))

(assert (=> b!1861251 d!568043))

(declare-fun d!568045 () Bool)

(declare-fun res!833504 () Bool)

(declare-fun e!1188683 () Bool)

(assert (=> d!568045 (=> (not res!833504) (not e!1188683))))

(assert (=> d!568045 (= res!833504 (= (csize!13914 (left!16616 t!4595)) (+ (size!16333 (left!16616 (left!16616 t!4595))) (size!16333 (right!16946 (left!16616 t!4595))))))))

(assert (=> d!568045 (= (inv!27201 (left!16616 t!4595)) e!1188683)))

(declare-fun b!1861356 () Bool)

(declare-fun res!833505 () Bool)

(assert (=> b!1861356 (=> (not res!833505) (not e!1188683))))

(assert (=> b!1861356 (= res!833505 (and (not (= (left!16616 (left!16616 t!4595)) Empty!6842)) (not (= (right!16946 (left!16616 t!4595)) Empty!6842))))))

(declare-fun b!1861357 () Bool)

(declare-fun res!833506 () Bool)

(assert (=> b!1861357 (=> (not res!833506) (not e!1188683))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1861357 (= res!833506 (= (cheight!7053 (left!16616 t!4595)) (+ (max!0 (height!1035 (left!16616 (left!16616 t!4595))) (height!1035 (right!16946 (left!16616 t!4595)))) 1)))))

(declare-fun b!1861358 () Bool)

(assert (=> b!1861358 (= e!1188683 (<= 0 (cheight!7053 (left!16616 t!4595))))))

(assert (= (and d!568045 res!833504) b!1861356))

(assert (= (and b!1861356 res!833505) b!1861357))

(assert (= (and b!1861357 res!833506) b!1861358))

(declare-fun m!2285069 () Bool)

(assert (=> d!568045 m!2285069))

(declare-fun m!2285071 () Bool)

(assert (=> d!568045 m!2285071))

(declare-fun m!2285073 () Bool)

(assert (=> b!1861357 m!2285073))

(declare-fun m!2285075 () Bool)

(assert (=> b!1861357 m!2285075))

(assert (=> b!1861357 m!2285073))

(assert (=> b!1861357 m!2285075))

(declare-fun m!2285077 () Bool)

(assert (=> b!1861357 m!2285077))

(assert (=> b!1861246 d!568045))

(declare-fun d!568047 () Bool)

(assert (=> d!568047 (= (inv!27199 (xs!9718 (left!16616 t!4595))) (<= (size!16331 (innerList!6902 (xs!9718 (left!16616 t!4595)))) 2147483647))))

(declare-fun bs!411505 () Bool)

(assert (= bs!411505 d!568047))

(declare-fun m!2285079 () Bool)

(assert (=> bs!411505 m!2285079))

(assert (=> b!1861327 d!568047))

(declare-fun d!568049 () Bool)

(declare-fun lt!717800 () Int)

(assert (=> d!568049 (>= lt!717800 0)))

(declare-fun e!1188684 () Int)

(assert (=> d!568049 (= lt!717800 e!1188684)))

(declare-fun c!303126 () Bool)

(assert (=> d!568049 (= c!303126 ((_ is Nil!20647) (innerList!6902 (xs!9718 t!4595))))))

(assert (=> d!568049 (= (size!16331 (innerList!6902 (xs!9718 t!4595))) lt!717800)))

(declare-fun b!1861359 () Bool)

(assert (=> b!1861359 (= e!1188684 0)))

(declare-fun b!1861360 () Bool)

(assert (=> b!1861360 (= e!1188684 (+ 1 (size!16331 (t!172754 (innerList!6902 (xs!9718 t!4595))))))))

(assert (= (and d!568049 c!303126) b!1861359))

(assert (= (and d!568049 (not c!303126)) b!1861360))

(declare-fun m!2285081 () Bool)

(assert (=> b!1861360 m!2285081))

(assert (=> d!567999 d!568049))

(declare-fun d!568051 () Bool)

(declare-fun c!303127 () Bool)

(assert (=> d!568051 (= c!303127 ((_ is Node!6842) (left!16616 (left!16616 t!4595))))))

(declare-fun e!1188685 () Bool)

(assert (=> d!568051 (= (inv!27200 (left!16616 (left!16616 t!4595))) e!1188685)))

(declare-fun b!1861361 () Bool)

(assert (=> b!1861361 (= e!1188685 (inv!27201 (left!16616 (left!16616 t!4595))))))

(declare-fun b!1861362 () Bool)

(declare-fun e!1188686 () Bool)

(assert (=> b!1861362 (= e!1188685 e!1188686)))

(declare-fun res!833507 () Bool)

(assert (=> b!1861362 (= res!833507 (not ((_ is Leaf!10031) (left!16616 (left!16616 t!4595)))))))

(assert (=> b!1861362 (=> res!833507 e!1188686)))

(declare-fun b!1861363 () Bool)

(assert (=> b!1861363 (= e!1188686 (inv!27202 (left!16616 (left!16616 t!4595))))))

(assert (= (and d!568051 c!303127) b!1861361))

(assert (= (and d!568051 (not c!303127)) b!1861362))

(assert (= (and b!1861362 (not res!833507)) b!1861363))

(declare-fun m!2285083 () Bool)

(assert (=> b!1861361 m!2285083))

(declare-fun m!2285085 () Bool)

(assert (=> b!1861363 m!2285085))

(assert (=> b!1861326 d!568051))

(declare-fun d!568053 () Bool)

(declare-fun c!303128 () Bool)

(assert (=> d!568053 (= c!303128 ((_ is Node!6842) (right!16946 (left!16616 t!4595))))))

(declare-fun e!1188687 () Bool)

(assert (=> d!568053 (= (inv!27200 (right!16946 (left!16616 t!4595))) e!1188687)))

(declare-fun b!1861364 () Bool)

(assert (=> b!1861364 (= e!1188687 (inv!27201 (right!16946 (left!16616 t!4595))))))

(declare-fun b!1861365 () Bool)

(declare-fun e!1188688 () Bool)

(assert (=> b!1861365 (= e!1188687 e!1188688)))

(declare-fun res!833508 () Bool)

(assert (=> b!1861365 (= res!833508 (not ((_ is Leaf!10031) (right!16946 (left!16616 t!4595)))))))

(assert (=> b!1861365 (=> res!833508 e!1188688)))

(declare-fun b!1861366 () Bool)

(assert (=> b!1861366 (= e!1188688 (inv!27202 (right!16946 (left!16616 t!4595))))))

(assert (= (and d!568053 c!303128) b!1861364))

(assert (= (and d!568053 (not c!303128)) b!1861365))

(assert (= (and b!1861365 (not res!833508)) b!1861366))

(declare-fun m!2285087 () Bool)

(assert (=> b!1861364 m!2285087))

(declare-fun m!2285089 () Bool)

(assert (=> b!1861366 m!2285089))

(assert (=> b!1861326 d!568053))

(declare-fun d!568055 () Bool)

(assert (=> d!568055 (= (height!1035 (left!16616 t!4595)) (ite ((_ is Empty!6842) (left!16616 t!4595)) 0 (ite ((_ is Leaf!10031) (left!16616 t!4595)) 1 (cheight!7053 (left!16616 t!4595)))))))

(assert (=> b!1861291 d!568055))

(declare-fun d!568057 () Bool)

(assert (=> d!568057 (= (height!1035 (right!16946 t!4595)) (ite ((_ is Empty!6842) (right!16946 t!4595)) 0 (ite ((_ is Leaf!10031) (right!16946 t!4595)) 1 (cheight!7053 (right!16946 t!4595)))))))

(assert (=> b!1861291 d!568057))

(declare-fun d!568059 () Bool)

(declare-fun res!833509 () Bool)

(declare-fun e!1188689 () Bool)

(assert (=> d!568059 (=> (not res!833509) (not e!1188689))))

(assert (=> d!568059 (= res!833509 (<= (size!16331 (list!8406 (xs!9718 (left!16616 t!4595)))) 512))))

(assert (=> d!568059 (= (inv!27202 (left!16616 t!4595)) e!1188689)))

(declare-fun b!1861367 () Bool)

(declare-fun res!833510 () Bool)

(assert (=> b!1861367 (=> (not res!833510) (not e!1188689))))

(assert (=> b!1861367 (= res!833510 (= (csize!13915 (left!16616 t!4595)) (size!16331 (list!8406 (xs!9718 (left!16616 t!4595))))))))

(declare-fun b!1861368 () Bool)

(assert (=> b!1861368 (= e!1188689 (and (> (csize!13915 (left!16616 t!4595)) 0) (<= (csize!13915 (left!16616 t!4595)) 512)))))

(assert (= (and d!568059 res!833509) b!1861367))

(assert (= (and b!1861367 res!833510) b!1861368))

(declare-fun m!2285091 () Bool)

(assert (=> d!568059 m!2285091))

(assert (=> d!568059 m!2285091))

(declare-fun m!2285093 () Bool)

(assert (=> d!568059 m!2285093))

(assert (=> b!1861367 m!2285091))

(assert (=> b!1861367 m!2285091))

(assert (=> b!1861367 m!2285093))

(assert (=> b!1861248 d!568059))

(declare-fun d!568061 () Bool)

(declare-fun lt!717801 () Int)

(assert (=> d!568061 (>= lt!717801 0)))

(declare-fun e!1188690 () Int)

(assert (=> d!568061 (= lt!717801 e!1188690)))

(declare-fun c!303129 () Bool)

(assert (=> d!568061 (= c!303129 ((_ is Nil!20647) (list!8406 (xs!9718 t!4595))))))

(assert (=> d!568061 (= (size!16331 (list!8406 (xs!9718 t!4595))) lt!717801)))

(declare-fun b!1861369 () Bool)

(assert (=> b!1861369 (= e!1188690 0)))

(declare-fun b!1861370 () Bool)

(assert (=> b!1861370 (= e!1188690 (+ 1 (size!16331 (t!172754 (list!8406 (xs!9718 t!4595))))))))

(assert (= (and d!568061 c!303129) b!1861369))

(assert (= (and d!568061 (not c!303129)) b!1861370))

(declare-fun m!2285095 () Bool)

(assert (=> b!1861370 m!2285095))

(assert (=> d!568023 d!568061))

(assert (=> d!568023 d!568009))

(declare-fun d!568063 () Bool)

(declare-fun _$1!10115 () Int)

(assert (=> d!568063 (= _$1!10115 (size!16331 (list!8406 (xs!9718 t!4595))))))

(assert (=> d!568063 true))

(assert (=> d!568063 (= (choose!11716 (xs!9718 t!4595)) _$1!10115)))

(declare-fun bs!411506 () Bool)

(assert (= bs!411506 d!568063))

(assert (=> bs!411506 m!2284933))

(assert (=> bs!411506 m!2284933))

(assert (=> bs!411506 m!2285003))

(assert (=> d!568023 d!568063))

(declare-fun b!1861395 () Bool)

(declare-fun e!1188705 () Int)

(assert (=> b!1861395 (= e!1188705 0)))

(declare-fun b!1861396 () Bool)

(declare-fun e!1188704 () List!20729)

(assert (=> b!1861396 (= e!1188704 Nil!20647)))

(declare-fun b!1861397 () Bool)

(declare-fun e!1188706 () Bool)

(declare-fun lt!717806 () List!20729)

(assert (=> b!1861397 (= e!1188706 (= (size!16331 lt!717806) e!1188705))))

(declare-fun c!303138 () Bool)

(assert (=> b!1861397 (= c!303138 (<= (- (size!16331 lt!717775) 1) 0))))

(declare-fun b!1861398 () Bool)

(assert (=> b!1861398 (= e!1188704 (Cons!20647 (h!26048 (drop!983 lt!717775 1)) (take!156 (t!172754 (drop!983 lt!717775 1)) (- (- (size!16331 lt!717775) 1) 1))))))

(declare-fun b!1861399 () Bool)

(declare-fun e!1188707 () Int)

(assert (=> b!1861399 (= e!1188707 (size!16331 (drop!983 lt!717775 1)))))

(declare-fun b!1861400 () Bool)

(assert (=> b!1861400 (= e!1188707 (- (size!16331 lt!717775) 1))))

(declare-fun d!568065 () Bool)

(assert (=> d!568065 e!1188706))

(declare-fun res!833521 () Bool)

(assert (=> d!568065 (=> (not res!833521) (not e!1188706))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3062 (List!20729) (InoxSet T!32906))

(assert (=> d!568065 (= res!833521 (= ((_ map implies) (content!3062 lt!717806) (content!3062 (drop!983 lt!717775 1))) ((as const (InoxSet T!32906)) true)))))

(assert (=> d!568065 (= lt!717806 e!1188704)))

(declare-fun c!303137 () Bool)

(assert (=> d!568065 (= c!303137 (or ((_ is Nil!20647) (drop!983 lt!717775 1)) (<= (- (size!16331 lt!717775) 1) 0)))))

(assert (=> d!568065 (= (take!156 (drop!983 lt!717775 1) (- (size!16331 lt!717775) 1)) lt!717806)))

(declare-fun b!1861401 () Bool)

(assert (=> b!1861401 (= e!1188705 e!1188707)))

(declare-fun c!303139 () Bool)

(assert (=> b!1861401 (= c!303139 (>= (- (size!16331 lt!717775) 1) (size!16331 (drop!983 lt!717775 1))))))

(assert (= (and d!568065 c!303137) b!1861396))

(assert (= (and d!568065 (not c!303137)) b!1861398))

(assert (= (and d!568065 res!833521) b!1861397))

(assert (= (and b!1861397 c!303138) b!1861395))

(assert (= (and b!1861397 (not c!303138)) b!1861401))

(assert (= (and b!1861401 c!303139) b!1861399))

(assert (= (and b!1861401 (not c!303139)) b!1861400))

(declare-fun m!2285111 () Bool)

(assert (=> b!1861397 m!2285111))

(assert (=> b!1861399 m!2284981))

(declare-fun m!2285113 () Bool)

(assert (=> b!1861399 m!2285113))

(declare-fun m!2285115 () Bool)

(assert (=> b!1861398 m!2285115))

(assert (=> b!1861401 m!2284981))

(assert (=> b!1861401 m!2285113))

(declare-fun m!2285117 () Bool)

(assert (=> d!568065 m!2285117))

(assert (=> d!568065 m!2284981))

(declare-fun m!2285119 () Bool)

(assert (=> d!568065 m!2285119))

(assert (=> d!568005 d!568065))

(declare-fun b!1861438 () Bool)

(declare-fun e!1188728 () Bool)

(declare-fun lt!717812 () List!20729)

(declare-fun e!1188726 () Int)

(assert (=> b!1861438 (= e!1188728 (= (size!16331 lt!717812) e!1188726))))

(declare-fun c!303156 () Bool)

(assert (=> b!1861438 (= c!303156 (<= 1 0))))

(declare-fun d!568081 () Bool)

(assert (=> d!568081 e!1188728))

(declare-fun res!833530 () Bool)

(assert (=> d!568081 (=> (not res!833530) (not e!1188728))))

(assert (=> d!568081 (= res!833530 (= ((_ map implies) (content!3062 lt!717812) (content!3062 lt!717775)) ((as const (InoxSet T!32906)) true)))))

(declare-fun e!1188730 () List!20729)

(assert (=> d!568081 (= lt!717812 e!1188730)))

(declare-fun c!303157 () Bool)

(assert (=> d!568081 (= c!303157 ((_ is Nil!20647) lt!717775))))

(assert (=> d!568081 (= (drop!983 lt!717775 1) lt!717812)))

(declare-fun b!1861439 () Bool)

(declare-fun e!1188729 () List!20729)

(assert (=> b!1861439 (= e!1188730 e!1188729)))

(declare-fun c!303154 () Bool)

(assert (=> b!1861439 (= c!303154 (<= 1 0))))

(declare-fun b!1861440 () Bool)

(declare-fun e!1188727 () Int)

(assert (=> b!1861440 (= e!1188726 e!1188727)))

(declare-fun c!303155 () Bool)

(declare-fun call!115690 () Int)

(assert (=> b!1861440 (= c!303155 (>= 1 call!115690))))

(declare-fun b!1861441 () Bool)

(assert (=> b!1861441 (= e!1188729 (drop!983 (t!172754 lt!717775) (- 1 1)))))

(declare-fun b!1861442 () Bool)

(assert (=> b!1861442 (= e!1188727 (- call!115690 1))))

(declare-fun bm!115685 () Bool)

(assert (=> bm!115685 (= call!115690 (size!16331 lt!717775))))

(declare-fun b!1861443 () Bool)

(assert (=> b!1861443 (= e!1188726 call!115690)))

(declare-fun b!1861444 () Bool)

(assert (=> b!1861444 (= e!1188727 0)))

(declare-fun b!1861445 () Bool)

(assert (=> b!1861445 (= e!1188730 Nil!20647)))

(declare-fun b!1861446 () Bool)

(assert (=> b!1861446 (= e!1188729 lt!717775)))

(assert (= (and d!568081 c!303157) b!1861445))

(assert (= (and d!568081 (not c!303157)) b!1861439))

(assert (= (and b!1861439 c!303154) b!1861446))

(assert (= (and b!1861439 (not c!303154)) b!1861441))

(assert (= (and d!568081 res!833530) b!1861438))

(assert (= (and b!1861438 c!303156) b!1861443))

(assert (= (and b!1861438 (not c!303156)) b!1861440))

(assert (= (and b!1861440 c!303155) b!1861444))

(assert (= (and b!1861440 (not c!303155)) b!1861442))

(assert (= (or b!1861443 b!1861440 b!1861442) bm!115685))

(declare-fun m!2285129 () Bool)

(assert (=> b!1861438 m!2285129))

(declare-fun m!2285133 () Bool)

(assert (=> d!568081 m!2285133))

(declare-fun m!2285137 () Bool)

(assert (=> d!568081 m!2285137))

(declare-fun m!2285141 () Bool)

(assert (=> b!1861441 m!2285141))

(assert (=> bm!115685 m!2284937))

(assert (=> d!568005 d!568081))

(declare-fun d!568089 () Bool)

(declare-fun lt!717814 () Bool)

(assert (=> d!568089 (= lt!717814 (isEmpty!12842 (list!8407 (left!16616 t!4595))))))

(assert (=> d!568089 (= lt!717814 (= (size!16333 (left!16616 t!4595)) 0))))

(assert (=> d!568089 (= (isEmpty!12841 (left!16616 t!4595)) lt!717814)))

(declare-fun bs!411510 () Bool)

(assert (= bs!411510 d!568089))

(declare-fun m!2285145 () Bool)

(assert (=> bs!411510 m!2285145))

(assert (=> bs!411510 m!2285145))

(declare-fun m!2285149 () Bool)

(assert (=> bs!411510 m!2285149))

(declare-fun m!2285151 () Bool)

(assert (=> bs!411510 m!2285151))

(assert (=> b!1861294 d!568089))

(assert (=> b!1861292 d!568055))

(assert (=> b!1861292 d!568057))

(declare-fun d!568093 () Bool)

(declare-fun lt!717816 () Bool)

(assert (=> d!568093 (= lt!717816 (isEmpty!12842 (list!8407 (right!16946 t!4595))))))

(assert (=> d!568093 (= lt!717816 (= (size!16333 (right!16946 t!4595)) 0))))

(assert (=> d!568093 (= (isEmpty!12841 (right!16946 t!4595)) lt!717816)))

(declare-fun bs!411511 () Bool)

(assert (= bs!411511 d!568093))

(declare-fun m!2285153 () Bool)

(assert (=> bs!411511 m!2285153))

(assert (=> bs!411511 m!2285153))

(declare-fun m!2285157 () Bool)

(assert (=> bs!411511 m!2285157))

(declare-fun m!2285159 () Bool)

(assert (=> bs!411511 m!2285159))

(assert (=> b!1861293 d!568093))

(declare-fun b!1861454 () Bool)

(declare-fun e!1188734 () Bool)

(declare-fun e!1188735 () Bool)

(assert (=> b!1861454 (= e!1188734 e!1188735)))

(declare-fun res!833539 () Bool)

(assert (=> b!1861454 (=> (not res!833539) (not e!1188735))))

(assert (=> b!1861454 (= res!833539 (<= (- 1) (- (height!1035 (left!16616 (right!16946 t!4595))) (height!1035 (right!16946 (right!16946 t!4595))))))))

(declare-fun b!1861455 () Bool)

(declare-fun res!833537 () Bool)

(assert (=> b!1861455 (=> (not res!833537) (not e!1188735))))

(assert (=> b!1861455 (= res!833537 (<= (- (height!1035 (left!16616 (right!16946 t!4595))) (height!1035 (right!16946 (right!16946 t!4595)))) 1))))

(declare-fun b!1861456 () Bool)

(assert (=> b!1861456 (= e!1188735 (not (isEmpty!12841 (right!16946 (right!16946 t!4595)))))))

(declare-fun d!568097 () Bool)

(declare-fun res!833535 () Bool)

(assert (=> d!568097 (=> res!833535 e!1188734)))

(assert (=> d!568097 (= res!833535 (not ((_ is Node!6842) (right!16946 t!4595))))))

(assert (=> d!568097 (= (isBalanced!2143 (right!16946 t!4595)) e!1188734)))

(declare-fun b!1861457 () Bool)

(declare-fun res!833534 () Bool)

(assert (=> b!1861457 (=> (not res!833534) (not e!1188735))))

(assert (=> b!1861457 (= res!833534 (not (isEmpty!12841 (left!16616 (right!16946 t!4595)))))))

(declare-fun b!1861458 () Bool)

(declare-fun res!833536 () Bool)

(assert (=> b!1861458 (=> (not res!833536) (not e!1188735))))

(assert (=> b!1861458 (= res!833536 (isBalanced!2143 (left!16616 (right!16946 t!4595))))))

(declare-fun b!1861459 () Bool)

(declare-fun res!833538 () Bool)

(assert (=> b!1861459 (=> (not res!833538) (not e!1188735))))

(assert (=> b!1861459 (= res!833538 (isBalanced!2143 (right!16946 (right!16946 t!4595))))))

(assert (= (and d!568097 (not res!833535)) b!1861454))

(assert (= (and b!1861454 res!833539) b!1861455))

(assert (= (and b!1861455 res!833537) b!1861458))

(assert (= (and b!1861458 res!833536) b!1861459))

(assert (= (and b!1861459 res!833538) b!1861457))

(assert (= (and b!1861457 res!833534) b!1861456))

(declare-fun m!2285161 () Bool)

(assert (=> b!1861456 m!2285161))

(declare-fun m!2285163 () Bool)

(assert (=> b!1861457 m!2285163))

(declare-fun m!2285165 () Bool)

(assert (=> b!1861459 m!2285165))

(declare-fun m!2285167 () Bool)

(assert (=> b!1861458 m!2285167))

(declare-fun m!2285169 () Bool)

(assert (=> b!1861455 m!2285169))

(declare-fun m!2285171 () Bool)

(assert (=> b!1861455 m!2285171))

(assert (=> b!1861454 m!2285169))

(assert (=> b!1861454 m!2285171))

(assert (=> b!1861296 d!568097))

(assert (=> d!568001 d!568017))

(assert (=> d!568001 d!568005))

(assert (=> d!568001 d!568011))

(declare-fun d!568099 () Bool)

(assert (=> d!568099 (= (tail!2803 lt!717775) (slice!557 lt!717775 1 (size!16331 lt!717775)))))

(assert (=> d!568099 true))

(declare-fun _$13!1406 () Unit!35259)

(assert (=> d!568099 (= (choose!11714 lt!717775) _$13!1406)))

(declare-fun bs!411514 () Bool)

(assert (= bs!411514 d!568099))

(assert (=> bs!411514 m!2284941))

(assert (=> bs!411514 m!2284937))

(assert (=> bs!411514 m!2284937))

(assert (=> bs!411514 m!2284939))

(assert (=> d!568001 d!568099))

(declare-fun d!568111 () Bool)

(declare-fun res!833548 () Bool)

(declare-fun e!1188739 () Bool)

(assert (=> d!568111 (=> (not res!833548) (not e!1188739))))

(assert (=> d!568111 (= res!833548 (= (csize!13914 t!4595) (+ (size!16333 (left!16616 t!4595)) (size!16333 (right!16946 t!4595)))))))

(assert (=> d!568111 (= (inv!27201 t!4595) e!1188739)))

(declare-fun b!1861468 () Bool)

(declare-fun res!833549 () Bool)

(assert (=> b!1861468 (=> (not res!833549) (not e!1188739))))

(assert (=> b!1861468 (= res!833549 (and (not (= (left!16616 t!4595) Empty!6842)) (not (= (right!16946 t!4595) Empty!6842))))))

(declare-fun b!1861469 () Bool)

(declare-fun res!833550 () Bool)

(assert (=> b!1861469 (=> (not res!833550) (not e!1188739))))

(assert (=> b!1861469 (= res!833550 (= (cheight!7053 t!4595) (+ (max!0 (height!1035 (left!16616 t!4595)) (height!1035 (right!16946 t!4595))) 1)))))

(declare-fun b!1861470 () Bool)

(assert (=> b!1861470 (= e!1188739 (<= 0 (cheight!7053 t!4595)))))

(assert (= (and d!568111 res!833548) b!1861468))

(assert (= (and b!1861468 res!833549) b!1861469))

(assert (= (and b!1861469 res!833550) b!1861470))

(assert (=> d!568111 m!2285151))

(assert (=> d!568111 m!2285159))

(assert (=> b!1861469 m!2285023))

(assert (=> b!1861469 m!2285025))

(assert (=> b!1861469 m!2285023))

(assert (=> b!1861469 m!2285025))

(declare-fun m!2285195 () Bool)

(assert (=> b!1861469 m!2285195))

(assert (=> b!1861305 d!568111))

(declare-fun d!568117 () Bool)

(assert (=> d!568117 (= (isEmpty!12842 (list!8407 t!4595)) ((_ is Nil!20647) (list!8407 t!4595)))))

(assert (=> d!567989 d!568117))

(declare-fun d!568121 () Bool)

(declare-fun c!303166 () Bool)

(assert (=> d!568121 (= c!303166 ((_ is Empty!6842) t!4595))))

(declare-fun e!1188750 () List!20729)

(assert (=> d!568121 (= (list!8407 t!4595) e!1188750)))

(declare-fun b!1861492 () Bool)

(declare-fun e!1188751 () List!20729)

(assert (=> b!1861492 (= e!1188750 e!1188751)))

(declare-fun c!303167 () Bool)

(assert (=> b!1861492 (= c!303167 ((_ is Leaf!10031) t!4595))))

(declare-fun b!1861494 () Bool)

(declare-fun ++!5574 (List!20729 List!20729) List!20729)

(assert (=> b!1861494 (= e!1188751 (++!5574 (list!8407 (left!16616 t!4595)) (list!8407 (right!16946 t!4595))))))

(declare-fun b!1861491 () Bool)

(assert (=> b!1861491 (= e!1188750 Nil!20647)))

(declare-fun b!1861493 () Bool)

(assert (=> b!1861493 (= e!1188751 (list!8406 (xs!9718 t!4595)))))

(assert (= (and d!568121 c!303166) b!1861491))

(assert (= (and d!568121 (not c!303166)) b!1861492))

(assert (= (and b!1861492 c!303167) b!1861493))

(assert (= (and b!1861492 (not c!303167)) b!1861494))

(assert (=> b!1861494 m!2285145))

(assert (=> b!1861494 m!2285153))

(assert (=> b!1861494 m!2285145))

(assert (=> b!1861494 m!2285153))

(declare-fun m!2285213 () Bool)

(assert (=> b!1861494 m!2285213))

(assert (=> b!1861493 m!2284933))

(assert (=> d!567989 d!568121))

(declare-fun d!568129 () Bool)

(declare-fun lt!717822 () Int)

(assert (=> d!568129 (= lt!717822 (size!16331 (list!8407 t!4595)))))

(assert (=> d!568129 (= lt!717822 (ite ((_ is Empty!6842) t!4595) 0 (ite ((_ is Leaf!10031) t!4595) (csize!13915 t!4595) (csize!13914 t!4595))))))

(assert (=> d!568129 (= (size!16333 t!4595) lt!717822)))

(declare-fun bs!411517 () Bool)

(assert (= bs!411517 d!568129))

(assert (=> bs!411517 m!2284943))

(assert (=> bs!411517 m!2284943))

(declare-fun m!2285215 () Bool)

(assert (=> bs!411517 m!2285215))

(assert (=> d!567989 d!568129))

(declare-fun b!1861509 () Bool)

(declare-fun e!1188760 () Bool)

(declare-fun e!1188761 () Bool)

(assert (=> b!1861509 (= e!1188760 e!1188761)))

(declare-fun res!833566 () Bool)

(assert (=> b!1861509 (=> (not res!833566) (not e!1188761))))

(assert (=> b!1861509 (= res!833566 (<= (- 1) (- (height!1035 (left!16616 (left!16616 t!4595))) (height!1035 (right!16946 (left!16616 t!4595))))))))

(declare-fun b!1861510 () Bool)

(declare-fun res!833564 () Bool)

(assert (=> b!1861510 (=> (not res!833564) (not e!1188761))))

(assert (=> b!1861510 (= res!833564 (<= (- (height!1035 (left!16616 (left!16616 t!4595))) (height!1035 (right!16946 (left!16616 t!4595)))) 1))))

(declare-fun b!1861511 () Bool)

(assert (=> b!1861511 (= e!1188761 (not (isEmpty!12841 (right!16946 (left!16616 t!4595)))))))

(declare-fun d!568131 () Bool)

(declare-fun res!833562 () Bool)

(assert (=> d!568131 (=> res!833562 e!1188760)))

(assert (=> d!568131 (= res!833562 (not ((_ is Node!6842) (left!16616 t!4595))))))

(assert (=> d!568131 (= (isBalanced!2143 (left!16616 t!4595)) e!1188760)))

(declare-fun b!1861512 () Bool)

(declare-fun res!833561 () Bool)

(assert (=> b!1861512 (=> (not res!833561) (not e!1188761))))

(assert (=> b!1861512 (= res!833561 (not (isEmpty!12841 (left!16616 (left!16616 t!4595)))))))

(declare-fun b!1861513 () Bool)

(declare-fun res!833563 () Bool)

(assert (=> b!1861513 (=> (not res!833563) (not e!1188761))))

(assert (=> b!1861513 (= res!833563 (isBalanced!2143 (left!16616 (left!16616 t!4595))))))

(declare-fun b!1861514 () Bool)

(declare-fun res!833565 () Bool)

(assert (=> b!1861514 (=> (not res!833565) (not e!1188761))))

(assert (=> b!1861514 (= res!833565 (isBalanced!2143 (right!16946 (left!16616 t!4595))))))

(assert (= (and d!568131 (not res!833562)) b!1861509))

(assert (= (and b!1861509 res!833566) b!1861510))

(assert (= (and b!1861510 res!833564) b!1861513))

(assert (= (and b!1861513 res!833563) b!1861514))

(assert (= (and b!1861514 res!833565) b!1861512))

(assert (= (and b!1861512 res!833561) b!1861511))

(declare-fun m!2285217 () Bool)

(assert (=> b!1861511 m!2285217))

(declare-fun m!2285219 () Bool)

(assert (=> b!1861512 m!2285219))

(declare-fun m!2285221 () Bool)

(assert (=> b!1861514 m!2285221))

(declare-fun m!2285223 () Bool)

(assert (=> b!1861513 m!2285223))

(assert (=> b!1861510 m!2285073))

(assert (=> b!1861510 m!2285075))

(assert (=> b!1861509 m!2285073))

(assert (=> b!1861509 m!2285075))

(assert (=> b!1861295 d!568131))

(assert (=> b!1861217 d!567993))

(assert (=> b!1861217 d!567997))

(declare-fun d!568133 () Bool)

(declare-fun res!833567 () Bool)

(declare-fun e!1188762 () Bool)

(assert (=> d!568133 (=> (not res!833567) (not e!1188762))))

(assert (=> d!568133 (= res!833567 (<= (size!16331 (list!8406 (xs!9718 t!4595))) 512))))

(assert (=> d!568133 (= (inv!27202 t!4595) e!1188762)))

(declare-fun b!1861515 () Bool)

(declare-fun res!833568 () Bool)

(assert (=> b!1861515 (=> (not res!833568) (not e!1188762))))

(assert (=> b!1861515 (= res!833568 (= (csize!13915 t!4595) (size!16331 (list!8406 (xs!9718 t!4595)))))))

(declare-fun b!1861516 () Bool)

(assert (=> b!1861516 (= e!1188762 (and (> (csize!13915 t!4595) 0) (<= (csize!13915 t!4595) 512)))))

(assert (= (and d!568133 res!833567) b!1861515))

(assert (= (and b!1861515 res!833568) b!1861516))

(assert (=> d!568133 m!2284933))

(assert (=> d!568133 m!2284933))

(assert (=> d!568133 m!2285003))

(assert (=> b!1861515 m!2284933))

(assert (=> b!1861515 m!2284933))

(assert (=> b!1861515 m!2285003))

(assert (=> b!1861307 d!568133))

(declare-fun d!568135 () Bool)

(declare-fun res!833569 () Bool)

(declare-fun e!1188763 () Bool)

(assert (=> d!568135 (=> (not res!833569) (not e!1188763))))

(assert (=> d!568135 (= res!833569 (= (csize!13914 (right!16946 t!4595)) (+ (size!16333 (left!16616 (right!16946 t!4595))) (size!16333 (right!16946 (right!16946 t!4595))))))))

(assert (=> d!568135 (= (inv!27201 (right!16946 t!4595)) e!1188763)))

(declare-fun b!1861517 () Bool)

(declare-fun res!833570 () Bool)

(assert (=> b!1861517 (=> (not res!833570) (not e!1188763))))

(assert (=> b!1861517 (= res!833570 (and (not (= (left!16616 (right!16946 t!4595)) Empty!6842)) (not (= (right!16946 (right!16946 t!4595)) Empty!6842))))))

(declare-fun b!1861518 () Bool)

(declare-fun res!833571 () Bool)

(assert (=> b!1861518 (=> (not res!833571) (not e!1188763))))

(assert (=> b!1861518 (= res!833571 (= (cheight!7053 (right!16946 t!4595)) (+ (max!0 (height!1035 (left!16616 (right!16946 t!4595))) (height!1035 (right!16946 (right!16946 t!4595)))) 1)))))

(declare-fun b!1861519 () Bool)

(assert (=> b!1861519 (= e!1188763 (<= 0 (cheight!7053 (right!16946 t!4595))))))

(assert (= (and d!568135 res!833569) b!1861517))

(assert (= (and b!1861517 res!833570) b!1861518))

(assert (= (and b!1861518 res!833571) b!1861519))

(declare-fun m!2285225 () Bool)

(assert (=> d!568135 m!2285225))

(declare-fun m!2285227 () Bool)

(assert (=> d!568135 m!2285227))

(assert (=> b!1861518 m!2285169))

(assert (=> b!1861518 m!2285171))

(assert (=> b!1861518 m!2285169))

(assert (=> b!1861518 m!2285171))

(declare-fun m!2285229 () Bool)

(assert (=> b!1861518 m!2285229))

(assert (=> b!1861249 d!568135))

(declare-fun d!568137 () Bool)

(declare-fun lt!717823 () Int)

(assert (=> d!568137 (>= lt!717823 0)))

(declare-fun e!1188764 () Int)

(assert (=> d!568137 (= lt!717823 e!1188764)))

(declare-fun c!303174 () Bool)

(assert (=> d!568137 (= c!303174 ((_ is Nil!20647) (t!172754 lt!717775)))))

(assert (=> d!568137 (= (size!16331 (t!172754 lt!717775)) lt!717823)))

(declare-fun b!1861520 () Bool)

(assert (=> b!1861520 (= e!1188764 0)))

(declare-fun b!1861521 () Bool)

(assert (=> b!1861521 (= e!1188764 (+ 1 (size!16331 (t!172754 (t!172754 lt!717775)))))))

(assert (= (and d!568137 c!303174) b!1861520))

(assert (= (and d!568137 (not c!303174)) b!1861521))

(declare-fun m!2285231 () Bool)

(assert (=> b!1861521 m!2285231))

(assert (=> b!1861266 d!568137))

(declare-fun tp!530418 () Bool)

(declare-fun e!1188769 () Bool)

(declare-fun b!1861529 () Bool)

(declare-fun tp!530417 () Bool)

(assert (=> b!1861529 (= e!1188769 (and (inv!27200 (left!16616 (left!16616 (right!16946 t!4595)))) tp!530418 (inv!27200 (right!16946 (left!16616 (right!16946 t!4595)))) tp!530417))))

(declare-fun b!1861531 () Bool)

(declare-fun e!1188770 () Bool)

(declare-fun tp!530419 () Bool)

(assert (=> b!1861531 (= e!1188770 tp!530419)))

(declare-fun b!1861530 () Bool)

(assert (=> b!1861530 (= e!1188769 (and (inv!27199 (xs!9718 (left!16616 (right!16946 t!4595)))) e!1188770))))

(assert (=> b!1861330 (= tp!530412 (and (inv!27200 (left!16616 (right!16946 t!4595))) e!1188769))))

(assert (= (and b!1861330 ((_ is Node!6842) (left!16616 (right!16946 t!4595)))) b!1861529))

(assert (= b!1861530 b!1861531))

(assert (= (and b!1861330 ((_ is Leaf!10031) (left!16616 (right!16946 t!4595)))) b!1861530))

(declare-fun m!2285233 () Bool)

(assert (=> b!1861529 m!2285233))

(declare-fun m!2285235 () Bool)

(assert (=> b!1861529 m!2285235))

(declare-fun m!2285237 () Bool)

(assert (=> b!1861530 m!2285237))

(assert (=> b!1861330 m!2285049))

(declare-fun b!1861532 () Bool)

(declare-fun e!1188771 () Bool)

(declare-fun tp!530420 () Bool)

(declare-fun tp!530421 () Bool)

(assert (=> b!1861532 (= e!1188771 (and (inv!27200 (left!16616 (right!16946 (right!16946 t!4595)))) tp!530421 (inv!27200 (right!16946 (right!16946 (right!16946 t!4595)))) tp!530420))))

(declare-fun b!1861534 () Bool)

(declare-fun e!1188772 () Bool)

(declare-fun tp!530422 () Bool)

(assert (=> b!1861534 (= e!1188772 tp!530422)))

(declare-fun b!1861533 () Bool)

(assert (=> b!1861533 (= e!1188771 (and (inv!27199 (xs!9718 (right!16946 (right!16946 t!4595)))) e!1188772))))

(assert (=> b!1861330 (= tp!530411 (and (inv!27200 (right!16946 (right!16946 t!4595))) e!1188771))))

(assert (= (and b!1861330 ((_ is Node!6842) (right!16946 (right!16946 t!4595)))) b!1861532))

(assert (= b!1861533 b!1861534))

(assert (= (and b!1861330 ((_ is Leaf!10031) (right!16946 (right!16946 t!4595)))) b!1861533))

(declare-fun m!2285247 () Bool)

(assert (=> b!1861532 m!2285247))

(declare-fun m!2285251 () Bool)

(assert (=> b!1861532 m!2285251))

(declare-fun m!2285253 () Bool)

(assert (=> b!1861533 m!2285253))

(assert (=> b!1861330 m!2285051))

(declare-fun b!1861535 () Bool)

(declare-fun e!1188773 () Bool)

(declare-fun tp!530423 () Bool)

(assert (=> b!1861535 (= e!1188773 (and tp_is_empty!8615 tp!530423))))

(assert (=> b!1861328 (= tp!530409 e!1188773)))

(assert (= (and b!1861328 ((_ is Cons!20647) (innerList!6902 (xs!9718 (left!16616 t!4595))))) b!1861535))

(declare-fun tp!530424 () Bool)

(declare-fun b!1861536 () Bool)

(declare-fun e!1188774 () Bool)

(declare-fun tp!530425 () Bool)

(assert (=> b!1861536 (= e!1188774 (and (inv!27200 (left!16616 (left!16616 (left!16616 t!4595)))) tp!530425 (inv!27200 (right!16946 (left!16616 (left!16616 t!4595)))) tp!530424))))

(declare-fun b!1861538 () Bool)

(declare-fun e!1188775 () Bool)

(declare-fun tp!530426 () Bool)

(assert (=> b!1861538 (= e!1188775 tp!530426)))

(declare-fun b!1861537 () Bool)

(assert (=> b!1861537 (= e!1188774 (and (inv!27199 (xs!9718 (left!16616 (left!16616 t!4595)))) e!1188775))))

(assert (=> b!1861326 (= tp!530408 (and (inv!27200 (left!16616 (left!16616 t!4595))) e!1188774))))

(assert (= (and b!1861326 ((_ is Node!6842) (left!16616 (left!16616 t!4595)))) b!1861536))

(assert (= b!1861537 b!1861538))

(assert (= (and b!1861326 ((_ is Leaf!10031) (left!16616 (left!16616 t!4595)))) b!1861537))

(declare-fun m!2285255 () Bool)

(assert (=> b!1861536 m!2285255))

(declare-fun m!2285257 () Bool)

(assert (=> b!1861536 m!2285257))

(declare-fun m!2285259 () Bool)

(assert (=> b!1861537 m!2285259))

(assert (=> b!1861326 m!2285043))

(declare-fun e!1188776 () Bool)

(declare-fun b!1861539 () Bool)

(declare-fun tp!530428 () Bool)

(declare-fun tp!530427 () Bool)

(assert (=> b!1861539 (= e!1188776 (and (inv!27200 (left!16616 (right!16946 (left!16616 t!4595)))) tp!530428 (inv!27200 (right!16946 (right!16946 (left!16616 t!4595)))) tp!530427))))

(declare-fun b!1861541 () Bool)

(declare-fun e!1188777 () Bool)

(declare-fun tp!530429 () Bool)

(assert (=> b!1861541 (= e!1188777 tp!530429)))

(declare-fun b!1861540 () Bool)

(assert (=> b!1861540 (= e!1188776 (and (inv!27199 (xs!9718 (right!16946 (left!16616 t!4595)))) e!1188777))))

(assert (=> b!1861326 (= tp!530407 (and (inv!27200 (right!16946 (left!16616 t!4595))) e!1188776))))

(assert (= (and b!1861326 ((_ is Node!6842) (right!16946 (left!16616 t!4595)))) b!1861539))

(assert (= b!1861540 b!1861541))

(assert (= (and b!1861326 ((_ is Leaf!10031) (right!16946 (left!16616 t!4595)))) b!1861540))

(declare-fun m!2285261 () Bool)

(assert (=> b!1861539 m!2285261))

(declare-fun m!2285263 () Bool)

(assert (=> b!1861539 m!2285263))

(declare-fun m!2285265 () Bool)

(assert (=> b!1861540 m!2285265))

(assert (=> b!1861326 m!2285045))

(declare-fun b!1861542 () Bool)

(declare-fun e!1188778 () Bool)

(declare-fun tp!530430 () Bool)

(assert (=> b!1861542 (= e!1188778 (and tp_is_empty!8615 tp!530430))))

(assert (=> b!1861337 (= tp!530416 e!1188778)))

(assert (= (and b!1861337 ((_ is Cons!20647) (t!172754 (innerList!6902 (xs!9718 t!4595))))) b!1861542))

(declare-fun b!1861543 () Bool)

(declare-fun e!1188779 () Bool)

(declare-fun tp!530431 () Bool)

(assert (=> b!1861543 (= e!1188779 (and tp_is_empty!8615 tp!530431))))

(assert (=> b!1861332 (= tp!530413 e!1188779)))

(assert (= (and b!1861332 ((_ is Cons!20647) (innerList!6902 (xs!9718 (right!16946 t!4595))))) b!1861543))

(check-sat (not d!568129) (not d!568093) (not b!1861357) (not b!1861456) (not b!1861441) (not d!568099) (not d!568135) (not b!1861399) (not b!1861370) (not b!1861338) (not b!1861533) (not b!1861537) (not b!1861536) (not b!1861494) (not b!1861454) tp_is_empty!8615 (not b!1861397) (not b!1861360) (not b!1861366) (not b!1861510) (not b!1861529) (not d!568047) (not b!1861532) (not d!568045) (not bm!115685) (not b!1861511) (not d!568065) (not b!1861361) (not b!1861534) (not b!1861543) (not b!1861541) (not b!1861515) (not d!568111) (not b!1861469) (not b!1861340) (not b!1861542) (not b!1861457) (not b!1861509) (not d!568089) (not b!1861540) (not b!1861341) (not b!1861539) (not b!1861459) (not b!1861493) (not b!1861458) (not b!1861398) (not b!1861401) (not b!1861535) (not b!1861364) (not b!1861521) (not b!1861330) (not b!1861530) (not d!568059) (not d!568041) (not d!568043) (not b!1861514) (not d!568063) (not b!1861513) (not b!1861367) (not b!1861363) (not b!1861518) (not d!568081) (not b!1861326) (not b!1861343) (not b!1861348) (not b!1861512) (not b!1861438) (not b!1861455) (not b!1861538) (not b!1861531) (not d!568133))
(check-sat)
