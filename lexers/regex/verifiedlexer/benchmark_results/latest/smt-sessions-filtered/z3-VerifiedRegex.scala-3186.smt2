; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185988 () Bool)

(assert start!185988)

(declare-fun b!1860818 () Bool)

(declare-fun e!1188408 () Bool)

(declare-datatypes ((T!32878 0))(
  ( (T!32879 (val!5908 Int)) )
))
(declare-datatypes ((List!20725 0))(
  ( (Nil!20643) (Cons!20643 (h!26044 T!32878) (t!172740 List!20725)) )
))
(declare-datatypes ((IArray!13681 0))(
  ( (IArray!13682 (innerList!6898 List!20725)) )
))
(declare-datatypes ((Conc!6838 0))(
  ( (Node!6838 (left!16610 Conc!6838) (right!16940 Conc!6838) (csize!13906 Int) (cheight!7049 Int)) (Leaf!10025 (xs!9714 IArray!13681) (csize!13907 Int)) (Empty!6838) )
))
(declare-fun t!4595 () Conc!6838)

(declare-fun list!8400 (Conc!6838) List!20725)

(assert (=> b!1860818 (= e!1188408 (= (list!8400 t!4595) Nil!20643))))

(declare-fun b!1860819 () Bool)

(declare-fun res!833247 () Bool)

(assert (=> b!1860819 (=> (not res!833247) (not e!1188408))))

(get-info :version)

(assert (=> b!1860819 (= res!833247 (and ((_ is Leaf!10025) t!4595) (= (csize!13907 t!4595) 1)))))

(declare-fun b!1860820 () Bool)

(declare-fun e!1188409 () Bool)

(declare-fun tp!530288 () Bool)

(assert (=> b!1860820 (= e!1188409 tp!530288)))

(declare-fun b!1860821 () Bool)

(declare-fun res!833246 () Bool)

(assert (=> b!1860821 (=> (not res!833246) (not e!1188408))))

(declare-fun isBalanced!2139 (Conc!6838) Bool)

(assert (=> b!1860821 (= res!833246 (isBalanced!2139 Empty!6838))))

(declare-fun b!1860817 () Bool)

(declare-fun tp!530290 () Bool)

(declare-fun e!1188407 () Bool)

(declare-fun tp!530289 () Bool)

(declare-fun inv!27181 (Conc!6838) Bool)

(assert (=> b!1860817 (= e!1188407 (and (inv!27181 (left!16610 t!4595)) tp!530290 (inv!27181 (right!16940 t!4595)) tp!530289))))

(declare-fun res!833249 () Bool)

(assert (=> start!185988 (=> (not res!833249) (not e!1188408))))

(assert (=> start!185988 (= res!833249 (isBalanced!2139 t!4595))))

(assert (=> start!185988 e!1188408))

(assert (=> start!185988 (and (inv!27181 t!4595) e!1188407)))

(declare-fun b!1860822 () Bool)

(declare-fun res!833248 () Bool)

(assert (=> b!1860822 (=> (not res!833248) (not e!1188408))))

(declare-fun isEmpty!12835 (Conc!6838) Bool)

(assert (=> b!1860822 (= res!833248 (not (isEmpty!12835 t!4595)))))

(declare-fun b!1860823 () Bool)

(declare-fun inv!27182 (IArray!13681) Bool)

(assert (=> b!1860823 (= e!1188407 (and (inv!27182 (xs!9714 t!4595)) e!1188409))))

(assert (= (and start!185988 res!833249) b!1860822))

(assert (= (and b!1860822 res!833248) b!1860819))

(assert (= (and b!1860819 res!833247) b!1860821))

(assert (= (and b!1860821 res!833246) b!1860818))

(assert (= (and start!185988 ((_ is Node!6838) t!4595)) b!1860817))

(assert (= b!1860823 b!1860820))

(assert (= (and start!185988 ((_ is Leaf!10025) t!4595)) b!1860823))

(declare-fun m!2284463 () Bool)

(assert (=> b!1860817 m!2284463))

(declare-fun m!2284465 () Bool)

(assert (=> b!1860817 m!2284465))

(declare-fun m!2284467 () Bool)

(assert (=> b!1860818 m!2284467))

(declare-fun m!2284469 () Bool)

(assert (=> b!1860822 m!2284469))

(declare-fun m!2284471 () Bool)

(assert (=> b!1860821 m!2284471))

(declare-fun m!2284473 () Bool)

(assert (=> b!1860823 m!2284473))

(declare-fun m!2284475 () Bool)

(assert (=> start!185988 m!2284475))

(declare-fun m!2284477 () Bool)

(assert (=> start!185988 m!2284477))

(check-sat (not b!1860820) (not start!185988) (not b!1860821) (not b!1860817) (not b!1860818) (not b!1860823) (not b!1860822))
(check-sat)
(get-model)

(declare-fun b!1860844 () Bool)

(declare-fun e!1188422 () List!20725)

(assert (=> b!1860844 (= e!1188422 Nil!20643)))

(declare-fun b!1860847 () Bool)

(declare-fun e!1188423 () List!20725)

(declare-fun ++!5571 (List!20725 List!20725) List!20725)

(assert (=> b!1860847 (= e!1188423 (++!5571 (list!8400 (left!16610 t!4595)) (list!8400 (right!16940 t!4595))))))

(declare-fun d!567833 () Bool)

(declare-fun c!303066 () Bool)

(assert (=> d!567833 (= c!303066 ((_ is Empty!6838) t!4595))))

(assert (=> d!567833 (= (list!8400 t!4595) e!1188422)))

(declare-fun b!1860845 () Bool)

(assert (=> b!1860845 (= e!1188422 e!1188423)))

(declare-fun c!303067 () Bool)

(assert (=> b!1860845 (= c!303067 ((_ is Leaf!10025) t!4595))))

(declare-fun b!1860846 () Bool)

(declare-fun list!8401 (IArray!13681) List!20725)

(assert (=> b!1860846 (= e!1188423 (list!8401 (xs!9714 t!4595)))))

(assert (= (and d!567833 c!303066) b!1860844))

(assert (= (and d!567833 (not c!303066)) b!1860845))

(assert (= (and b!1860845 c!303067) b!1860846))

(assert (= (and b!1860845 (not c!303067)) b!1860847))

(declare-fun m!2284491 () Bool)

(assert (=> b!1860847 m!2284491))

(declare-fun m!2284493 () Bool)

(assert (=> b!1860847 m!2284493))

(assert (=> b!1860847 m!2284491))

(assert (=> b!1860847 m!2284493))

(declare-fun m!2284495 () Bool)

(assert (=> b!1860847 m!2284495))

(declare-fun m!2284497 () Bool)

(assert (=> b!1860846 m!2284497))

(assert (=> b!1860818 d!567833))

(declare-fun d!567841 () Bool)

(declare-fun size!16323 (List!20725) Int)

(assert (=> d!567841 (= (inv!27182 (xs!9714 t!4595)) (<= (size!16323 (innerList!6898 (xs!9714 t!4595))) 2147483647))))

(declare-fun bs!411477 () Bool)

(assert (= bs!411477 d!567841))

(declare-fun m!2284499 () Bool)

(assert (=> bs!411477 m!2284499))

(assert (=> b!1860823 d!567841))

(declare-fun d!567843 () Bool)

(declare-fun c!303076 () Bool)

(assert (=> d!567843 (= c!303076 ((_ is Node!6838) (left!16610 t!4595)))))

(declare-fun e!1188434 () Bool)

(assert (=> d!567843 (= (inv!27181 (left!16610 t!4595)) e!1188434)))

(declare-fun b!1860866 () Bool)

(declare-fun inv!27185 (Conc!6838) Bool)

(assert (=> b!1860866 (= e!1188434 (inv!27185 (left!16610 t!4595)))))

(declare-fun b!1860867 () Bool)

(declare-fun e!1188435 () Bool)

(assert (=> b!1860867 (= e!1188434 e!1188435)))

(declare-fun res!833256 () Bool)

(assert (=> b!1860867 (= res!833256 (not ((_ is Leaf!10025) (left!16610 t!4595))))))

(assert (=> b!1860867 (=> res!833256 e!1188435)))

(declare-fun b!1860868 () Bool)

(declare-fun inv!27186 (Conc!6838) Bool)

(assert (=> b!1860868 (= e!1188435 (inv!27186 (left!16610 t!4595)))))

(assert (= (and d!567843 c!303076) b!1860866))

(assert (= (and d!567843 (not c!303076)) b!1860867))

(assert (= (and b!1860867 (not res!833256)) b!1860868))

(declare-fun m!2284509 () Bool)

(assert (=> b!1860866 m!2284509))

(declare-fun m!2284511 () Bool)

(assert (=> b!1860868 m!2284511))

(assert (=> b!1860817 d!567843))

(declare-fun d!567847 () Bool)

(declare-fun c!303077 () Bool)

(assert (=> d!567847 (= c!303077 ((_ is Node!6838) (right!16940 t!4595)))))

(declare-fun e!1188436 () Bool)

(assert (=> d!567847 (= (inv!27181 (right!16940 t!4595)) e!1188436)))

(declare-fun b!1860869 () Bool)

(assert (=> b!1860869 (= e!1188436 (inv!27185 (right!16940 t!4595)))))

(declare-fun b!1860870 () Bool)

(declare-fun e!1188437 () Bool)

(assert (=> b!1860870 (= e!1188436 e!1188437)))

(declare-fun res!833257 () Bool)

(assert (=> b!1860870 (= res!833257 (not ((_ is Leaf!10025) (right!16940 t!4595))))))

(assert (=> b!1860870 (=> res!833257 e!1188437)))

(declare-fun b!1860871 () Bool)

(assert (=> b!1860871 (= e!1188437 (inv!27186 (right!16940 t!4595)))))

(assert (= (and d!567847 c!303077) b!1860869))

(assert (= (and d!567847 (not c!303077)) b!1860870))

(assert (= (and b!1860870 (not res!833257)) b!1860871))

(declare-fun m!2284513 () Bool)

(assert (=> b!1860869 m!2284513))

(declare-fun m!2284515 () Bool)

(assert (=> b!1860871 m!2284515))

(assert (=> b!1860817 d!567847))

(declare-fun d!567849 () Bool)

(declare-fun lt!717735 () Bool)

(declare-fun isEmpty!12837 (List!20725) Bool)

(assert (=> d!567849 (= lt!717735 (isEmpty!12837 (list!8400 t!4595)))))

(declare-fun size!16325 (Conc!6838) Int)

(assert (=> d!567849 (= lt!717735 (= (size!16325 t!4595) 0))))

(assert (=> d!567849 (= (isEmpty!12835 t!4595) lt!717735)))

(declare-fun bs!411478 () Bool)

(assert (= bs!411478 d!567849))

(assert (=> bs!411478 m!2284467))

(assert (=> bs!411478 m!2284467))

(declare-fun m!2284517 () Bool)

(assert (=> bs!411478 m!2284517))

(declare-fun m!2284519 () Bool)

(assert (=> bs!411478 m!2284519))

(assert (=> b!1860822 d!567849))

(declare-fun b!1860919 () Bool)

(declare-fun e!1188456 () Bool)

(assert (=> b!1860919 (= e!1188456 (not (isEmpty!12835 (right!16940 Empty!6838))))))

(declare-fun b!1860921 () Bool)

(declare-fun res!833297 () Bool)

(assert (=> b!1860921 (=> (not res!833297) (not e!1188456))))

(assert (=> b!1860921 (= res!833297 (not (isEmpty!12835 (left!16610 Empty!6838))))))

(declare-fun b!1860922 () Bool)

(declare-fun res!833295 () Bool)

(assert (=> b!1860922 (=> (not res!833295) (not e!1188456))))

(declare-fun height!1033 (Conc!6838) Int)

(assert (=> b!1860922 (= res!833295 (<= (- (height!1033 (left!16610 Empty!6838)) (height!1033 (right!16940 Empty!6838))) 1))))

(declare-fun b!1860923 () Bool)

(declare-fun res!833299 () Bool)

(assert (=> b!1860923 (=> (not res!833299) (not e!1188456))))

(assert (=> b!1860923 (= res!833299 (isBalanced!2139 (left!16610 Empty!6838)))))

(declare-fun b!1860924 () Bool)

(declare-fun res!833296 () Bool)

(assert (=> b!1860924 (=> (not res!833296) (not e!1188456))))

(assert (=> b!1860924 (= res!833296 (isBalanced!2139 (right!16940 Empty!6838)))))

(declare-fun b!1860920 () Bool)

(declare-fun e!1188457 () Bool)

(assert (=> b!1860920 (= e!1188457 e!1188456)))

(declare-fun res!833300 () Bool)

(assert (=> b!1860920 (=> (not res!833300) (not e!1188456))))

(assert (=> b!1860920 (= res!833300 (<= (- 1) (- (height!1033 (left!16610 Empty!6838)) (height!1033 (right!16940 Empty!6838)))))))

(declare-fun d!567851 () Bool)

(declare-fun res!833298 () Bool)

(assert (=> d!567851 (=> res!833298 e!1188457)))

(assert (=> d!567851 (= res!833298 (not ((_ is Node!6838) Empty!6838)))))

(assert (=> d!567851 (= (isBalanced!2139 Empty!6838) e!1188457)))

(assert (= (and d!567851 (not res!833298)) b!1860920))

(assert (= (and b!1860920 res!833300) b!1860922))

(assert (= (and b!1860922 res!833295) b!1860923))

(assert (= (and b!1860923 res!833299) b!1860924))

(assert (= (and b!1860924 res!833296) b!1860921))

(assert (= (and b!1860921 res!833297) b!1860919))

(declare-fun m!2284551 () Bool)

(assert (=> b!1860924 m!2284551))

(declare-fun m!2284553 () Bool)

(assert (=> b!1860920 m!2284553))

(declare-fun m!2284555 () Bool)

(assert (=> b!1860920 m!2284555))

(declare-fun m!2284557 () Bool)

(assert (=> b!1860919 m!2284557))

(assert (=> b!1860922 m!2284553))

(assert (=> b!1860922 m!2284555))

(declare-fun m!2284559 () Bool)

(assert (=> b!1860923 m!2284559))

(declare-fun m!2284561 () Bool)

(assert (=> b!1860921 m!2284561))

(assert (=> b!1860821 d!567851))

(declare-fun b!1860928 () Bool)

(declare-fun e!1188460 () Bool)

(assert (=> b!1860928 (= e!1188460 (not (isEmpty!12835 (right!16940 t!4595))))))

(declare-fun b!1860930 () Bool)

(declare-fun res!833303 () Bool)

(assert (=> b!1860930 (=> (not res!833303) (not e!1188460))))

(assert (=> b!1860930 (= res!833303 (not (isEmpty!12835 (left!16610 t!4595))))))

(declare-fun b!1860931 () Bool)

(declare-fun res!833301 () Bool)

(assert (=> b!1860931 (=> (not res!833301) (not e!1188460))))

(assert (=> b!1860931 (= res!833301 (<= (- (height!1033 (left!16610 t!4595)) (height!1033 (right!16940 t!4595))) 1))))

(declare-fun b!1860932 () Bool)

(declare-fun res!833305 () Bool)

(assert (=> b!1860932 (=> (not res!833305) (not e!1188460))))

(assert (=> b!1860932 (= res!833305 (isBalanced!2139 (left!16610 t!4595)))))

(declare-fun b!1860933 () Bool)

(declare-fun res!833302 () Bool)

(assert (=> b!1860933 (=> (not res!833302) (not e!1188460))))

(assert (=> b!1860933 (= res!833302 (isBalanced!2139 (right!16940 t!4595)))))

(declare-fun b!1860929 () Bool)

(declare-fun e!1188461 () Bool)

(assert (=> b!1860929 (= e!1188461 e!1188460)))

(declare-fun res!833306 () Bool)

(assert (=> b!1860929 (=> (not res!833306) (not e!1188460))))

(assert (=> b!1860929 (= res!833306 (<= (- 1) (- (height!1033 (left!16610 t!4595)) (height!1033 (right!16940 t!4595)))))))

(declare-fun d!567859 () Bool)

(declare-fun res!833304 () Bool)

(assert (=> d!567859 (=> res!833304 e!1188461)))

(assert (=> d!567859 (= res!833304 (not ((_ is Node!6838) t!4595)))))

(assert (=> d!567859 (= (isBalanced!2139 t!4595) e!1188461)))

(assert (= (and d!567859 (not res!833304)) b!1860929))

(assert (= (and b!1860929 res!833306) b!1860931))

(assert (= (and b!1860931 res!833301) b!1860932))

(assert (= (and b!1860932 res!833305) b!1860933))

(assert (= (and b!1860933 res!833302) b!1860930))

(assert (= (and b!1860930 res!833303) b!1860928))

(declare-fun m!2284569 () Bool)

(assert (=> b!1860933 m!2284569))

(declare-fun m!2284571 () Bool)

(assert (=> b!1860929 m!2284571))

(declare-fun m!2284573 () Bool)

(assert (=> b!1860929 m!2284573))

(declare-fun m!2284575 () Bool)

(assert (=> b!1860928 m!2284575))

(assert (=> b!1860931 m!2284571))

(assert (=> b!1860931 m!2284573))

(declare-fun m!2284577 () Bool)

(assert (=> b!1860932 m!2284577))

(declare-fun m!2284581 () Bool)

(assert (=> b!1860930 m!2284581))

(assert (=> start!185988 d!567859))

(declare-fun d!567861 () Bool)

(declare-fun c!303079 () Bool)

(assert (=> d!567861 (= c!303079 ((_ is Node!6838) t!4595))))

(declare-fun e!1188464 () Bool)

(assert (=> d!567861 (= (inv!27181 t!4595) e!1188464)))

(declare-fun b!1860937 () Bool)

(assert (=> b!1860937 (= e!1188464 (inv!27185 t!4595))))

(declare-fun b!1860938 () Bool)

(declare-fun e!1188465 () Bool)

(assert (=> b!1860938 (= e!1188464 e!1188465)))

(declare-fun res!833307 () Bool)

(assert (=> b!1860938 (= res!833307 (not ((_ is Leaf!10025) t!4595)))))

(assert (=> b!1860938 (=> res!833307 e!1188465)))

(declare-fun b!1860939 () Bool)

(assert (=> b!1860939 (= e!1188465 (inv!27186 t!4595))))

(assert (= (and d!567861 c!303079) b!1860937))

(assert (= (and d!567861 (not c!303079)) b!1860938))

(assert (= (and b!1860938 (not res!833307)) b!1860939))

(declare-fun m!2284587 () Bool)

(assert (=> b!1860937 m!2284587))

(declare-fun m!2284589 () Bool)

(assert (=> b!1860939 m!2284589))

(assert (=> start!185988 d!567861))

(declare-fun tp!530313 () Bool)

(declare-fun e!1188473 () Bool)

(declare-fun tp!530314 () Bool)

(declare-fun b!1860953 () Bool)

(assert (=> b!1860953 (= e!1188473 (and (inv!27181 (left!16610 (left!16610 t!4595))) tp!530314 (inv!27181 (right!16940 (left!16610 t!4595))) tp!530313))))

(declare-fun b!1860955 () Bool)

(declare-fun e!1188474 () Bool)

(declare-fun tp!530312 () Bool)

(assert (=> b!1860955 (= e!1188474 tp!530312)))

(declare-fun b!1860954 () Bool)

(assert (=> b!1860954 (= e!1188473 (and (inv!27182 (xs!9714 (left!16610 t!4595))) e!1188474))))

(assert (=> b!1860817 (= tp!530290 (and (inv!27181 (left!16610 t!4595)) e!1188473))))

(assert (= (and b!1860817 ((_ is Node!6838) (left!16610 t!4595))) b!1860953))

(assert (= b!1860954 b!1860955))

(assert (= (and b!1860817 ((_ is Leaf!10025) (left!16610 t!4595))) b!1860954))

(declare-fun m!2284591 () Bool)

(assert (=> b!1860953 m!2284591))

(declare-fun m!2284593 () Bool)

(assert (=> b!1860953 m!2284593))

(declare-fun m!2284595 () Bool)

(assert (=> b!1860954 m!2284595))

(assert (=> b!1860817 m!2284463))

(declare-fun tp!530316 () Bool)

(declare-fun b!1860956 () Bool)

(declare-fun tp!530317 () Bool)

(declare-fun e!1188475 () Bool)

(assert (=> b!1860956 (= e!1188475 (and (inv!27181 (left!16610 (right!16940 t!4595))) tp!530317 (inv!27181 (right!16940 (right!16940 t!4595))) tp!530316))))

(declare-fun b!1860958 () Bool)

(declare-fun e!1188476 () Bool)

(declare-fun tp!530315 () Bool)

(assert (=> b!1860958 (= e!1188476 tp!530315)))

(declare-fun b!1860957 () Bool)

(assert (=> b!1860957 (= e!1188475 (and (inv!27182 (xs!9714 (right!16940 t!4595))) e!1188476))))

(assert (=> b!1860817 (= tp!530289 (and (inv!27181 (right!16940 t!4595)) e!1188475))))

(assert (= (and b!1860817 ((_ is Node!6838) (right!16940 t!4595))) b!1860956))

(assert (= b!1860957 b!1860958))

(assert (= (and b!1860817 ((_ is Leaf!10025) (right!16940 t!4595))) b!1860957))

(declare-fun m!2284597 () Bool)

(assert (=> b!1860956 m!2284597))

(declare-fun m!2284599 () Bool)

(assert (=> b!1860956 m!2284599))

(declare-fun m!2284601 () Bool)

(assert (=> b!1860957 m!2284601))

(assert (=> b!1860817 m!2284465))

(declare-fun b!1860963 () Bool)

(declare-fun e!1188479 () Bool)

(declare-fun tp_is_empty!8611 () Bool)

(declare-fun tp!530320 () Bool)

(assert (=> b!1860963 (= e!1188479 (and tp_is_empty!8611 tp!530320))))

(assert (=> b!1860820 (= tp!530288 e!1188479)))

(assert (= (and b!1860820 ((_ is Cons!20643) (innerList!6898 (xs!9714 t!4595)))) b!1860963))

(check-sat (not b!1860937) (not b!1860921) (not b!1860954) (not b!1860817) (not b!1860956) tp_is_empty!8611 (not b!1860922) (not d!567841) (not b!1860939) (not b!1860953) (not b!1860846) (not b!1860919) (not b!1860931) (not b!1860866) (not b!1860847) (not b!1860924) (not b!1860955) (not d!567849) (not b!1860868) (not b!1860933) (not b!1860958) (not b!1860869) (not b!1860920) (not b!1860932) (not b!1860929) (not b!1860957) (not b!1860930) (not b!1860928) (not b!1860923) (not b!1860963) (not b!1860871))
(check-sat)
(get-model)

(declare-fun d!567863 () Bool)

(declare-fun lt!717738 () Int)

(assert (=> d!567863 (>= lt!717738 0)))

(declare-fun e!1188482 () Int)

(assert (=> d!567863 (= lt!717738 e!1188482)))

(declare-fun c!303082 () Bool)

(assert (=> d!567863 (= c!303082 ((_ is Nil!20643) (innerList!6898 (xs!9714 t!4595))))))

(assert (=> d!567863 (= (size!16323 (innerList!6898 (xs!9714 t!4595))) lt!717738)))

(declare-fun b!1860968 () Bool)

(assert (=> b!1860968 (= e!1188482 0)))

(declare-fun b!1860969 () Bool)

(assert (=> b!1860969 (= e!1188482 (+ 1 (size!16323 (t!172740 (innerList!6898 (xs!9714 t!4595))))))))

(assert (= (and d!567863 c!303082) b!1860968))

(assert (= (and d!567863 (not c!303082)) b!1860969))

(declare-fun m!2284603 () Bool)

(assert (=> b!1860969 m!2284603))

(assert (=> d!567841 d!567863))

(declare-fun d!567865 () Bool)

(assert (not d!567865))

(assert (=> b!1860924 d!567865))

(declare-fun d!567867 () Bool)

(assert (=> d!567867 (= (inv!27182 (xs!9714 (left!16610 t!4595))) (<= (size!16323 (innerList!6898 (xs!9714 (left!16610 t!4595)))) 2147483647))))

(declare-fun bs!411480 () Bool)

(assert (= bs!411480 d!567867))

(declare-fun m!2284605 () Bool)

(assert (=> bs!411480 m!2284605))

(assert (=> b!1860954 d!567867))

(declare-fun d!567869 () Bool)

(declare-fun res!833314 () Bool)

(declare-fun e!1188485 () Bool)

(assert (=> d!567869 (=> (not res!833314) (not e!1188485))))

(assert (=> d!567869 (= res!833314 (= (csize!13906 (left!16610 t!4595)) (+ (size!16325 (left!16610 (left!16610 t!4595))) (size!16325 (right!16940 (left!16610 t!4595))))))))

(assert (=> d!567869 (= (inv!27185 (left!16610 t!4595)) e!1188485)))

(declare-fun b!1860976 () Bool)

(declare-fun res!833315 () Bool)

(assert (=> b!1860976 (=> (not res!833315) (not e!1188485))))

(assert (=> b!1860976 (= res!833315 (and (not (= (left!16610 (left!16610 t!4595)) Empty!6838)) (not (= (right!16940 (left!16610 t!4595)) Empty!6838))))))

(declare-fun b!1860977 () Bool)

(declare-fun res!833316 () Bool)

(assert (=> b!1860977 (=> (not res!833316) (not e!1188485))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1860977 (= res!833316 (= (cheight!7049 (left!16610 t!4595)) (+ (max!0 (height!1033 (left!16610 (left!16610 t!4595))) (height!1033 (right!16940 (left!16610 t!4595)))) 1)))))

(declare-fun b!1860978 () Bool)

(assert (=> b!1860978 (= e!1188485 (<= 0 (cheight!7049 (left!16610 t!4595))))))

(assert (= (and d!567869 res!833314) b!1860976))

(assert (= (and b!1860976 res!833315) b!1860977))

(assert (= (and b!1860977 res!833316) b!1860978))

(declare-fun m!2284607 () Bool)

(assert (=> d!567869 m!2284607))

(declare-fun m!2284609 () Bool)

(assert (=> d!567869 m!2284609))

(declare-fun m!2284611 () Bool)

(assert (=> b!1860977 m!2284611))

(declare-fun m!2284613 () Bool)

(assert (=> b!1860977 m!2284613))

(assert (=> b!1860977 m!2284611))

(assert (=> b!1860977 m!2284613))

(declare-fun m!2284615 () Bool)

(assert (=> b!1860977 m!2284615))

(assert (=> b!1860866 d!567869))

(declare-fun d!567871 () Bool)

(assert (=> d!567871 (= (isEmpty!12837 (list!8400 t!4595)) ((_ is Nil!20643) (list!8400 t!4595)))))

(assert (=> d!567849 d!567871))

(assert (=> d!567849 d!567833))

(declare-fun d!567873 () Bool)

(declare-fun lt!717741 () Int)

(assert (=> d!567873 (= lt!717741 (size!16323 (list!8400 t!4595)))))

(assert (=> d!567873 (= lt!717741 (ite ((_ is Empty!6838) t!4595) 0 (ite ((_ is Leaf!10025) t!4595) (csize!13907 t!4595) (csize!13906 t!4595))))))

(assert (=> d!567873 (= (size!16325 t!4595) lt!717741)))

(declare-fun bs!411481 () Bool)

(assert (= bs!411481 d!567873))

(assert (=> bs!411481 m!2284467))

(assert (=> bs!411481 m!2284467))

(declare-fun m!2284617 () Bool)

(assert (=> bs!411481 m!2284617))

(assert (=> d!567849 d!567873))

(declare-fun d!567875 () Bool)

(declare-fun res!833321 () Bool)

(declare-fun e!1188488 () Bool)

(assert (=> d!567875 (=> (not res!833321) (not e!1188488))))

(assert (=> d!567875 (= res!833321 (<= (size!16323 (list!8401 (xs!9714 (left!16610 t!4595)))) 512))))

(assert (=> d!567875 (= (inv!27186 (left!16610 t!4595)) e!1188488)))

(declare-fun b!1860983 () Bool)

(declare-fun res!833322 () Bool)

(assert (=> b!1860983 (=> (not res!833322) (not e!1188488))))

(assert (=> b!1860983 (= res!833322 (= (csize!13907 (left!16610 t!4595)) (size!16323 (list!8401 (xs!9714 (left!16610 t!4595))))))))

(declare-fun b!1860984 () Bool)

(assert (=> b!1860984 (= e!1188488 (and (> (csize!13907 (left!16610 t!4595)) 0) (<= (csize!13907 (left!16610 t!4595)) 512)))))

(assert (= (and d!567875 res!833321) b!1860983))

(assert (= (and b!1860983 res!833322) b!1860984))

(declare-fun m!2284619 () Bool)

(assert (=> d!567875 m!2284619))

(assert (=> d!567875 m!2284619))

(declare-fun m!2284621 () Bool)

(assert (=> d!567875 m!2284621))

(assert (=> b!1860983 m!2284619))

(assert (=> b!1860983 m!2284619))

(assert (=> b!1860983 m!2284621))

(assert (=> b!1860868 d!567875))

(assert (=> b!1860817 d!567843))

(assert (=> b!1860817 d!567847))

(declare-fun d!567877 () Bool)

(declare-fun lt!717742 () Bool)

(assert (=> d!567877 (= lt!717742 (isEmpty!12837 (list!8400 (right!16940 t!4595))))))

(assert (=> d!567877 (= lt!717742 (= (size!16325 (right!16940 t!4595)) 0))))

(assert (=> d!567877 (= (isEmpty!12835 (right!16940 t!4595)) lt!717742)))

(declare-fun bs!411482 () Bool)

(assert (= bs!411482 d!567877))

(assert (=> bs!411482 m!2284493))

(assert (=> bs!411482 m!2284493))

(declare-fun m!2284623 () Bool)

(assert (=> bs!411482 m!2284623))

(declare-fun m!2284625 () Bool)

(assert (=> bs!411482 m!2284625))

(assert (=> b!1860928 d!567877))

(declare-fun b!1860994 () Bool)

(declare-fun e!1188494 () List!20725)

(assert (=> b!1860994 (= e!1188494 (Cons!20643 (h!26044 (list!8400 (left!16610 t!4595))) (++!5571 (t!172740 (list!8400 (left!16610 t!4595))) (list!8400 (right!16940 t!4595)))))))

(declare-fun d!567879 () Bool)

(declare-fun e!1188493 () Bool)

(assert (=> d!567879 e!1188493))

(declare-fun res!833327 () Bool)

(assert (=> d!567879 (=> (not res!833327) (not e!1188493))))

(declare-fun lt!717745 () List!20725)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3060 (List!20725) (InoxSet T!32878))

(assert (=> d!567879 (= res!833327 (= (content!3060 lt!717745) ((_ map or) (content!3060 (list!8400 (left!16610 t!4595))) (content!3060 (list!8400 (right!16940 t!4595))))))))

(assert (=> d!567879 (= lt!717745 e!1188494)))

(declare-fun c!303085 () Bool)

(assert (=> d!567879 (= c!303085 ((_ is Nil!20643) (list!8400 (left!16610 t!4595))))))

(assert (=> d!567879 (= (++!5571 (list!8400 (left!16610 t!4595)) (list!8400 (right!16940 t!4595))) lt!717745)))

(declare-fun b!1860993 () Bool)

(assert (=> b!1860993 (= e!1188494 (list!8400 (right!16940 t!4595)))))

(declare-fun b!1860996 () Bool)

(assert (=> b!1860996 (= e!1188493 (or (not (= (list!8400 (right!16940 t!4595)) Nil!20643)) (= lt!717745 (list!8400 (left!16610 t!4595)))))))

(declare-fun b!1860995 () Bool)

(declare-fun res!833328 () Bool)

(assert (=> b!1860995 (=> (not res!833328) (not e!1188493))))

(assert (=> b!1860995 (= res!833328 (= (size!16323 lt!717745) (+ (size!16323 (list!8400 (left!16610 t!4595))) (size!16323 (list!8400 (right!16940 t!4595))))))))

(assert (= (and d!567879 c!303085) b!1860993))

(assert (= (and d!567879 (not c!303085)) b!1860994))

(assert (= (and d!567879 res!833327) b!1860995))

(assert (= (and b!1860995 res!833328) b!1860996))

(assert (=> b!1860994 m!2284493))

(declare-fun m!2284627 () Bool)

(assert (=> b!1860994 m!2284627))

(declare-fun m!2284629 () Bool)

(assert (=> d!567879 m!2284629))

(assert (=> d!567879 m!2284491))

(declare-fun m!2284631 () Bool)

(assert (=> d!567879 m!2284631))

(assert (=> d!567879 m!2284493))

(declare-fun m!2284633 () Bool)

(assert (=> d!567879 m!2284633))

(declare-fun m!2284635 () Bool)

(assert (=> b!1860995 m!2284635))

(assert (=> b!1860995 m!2284491))

(declare-fun m!2284637 () Bool)

(assert (=> b!1860995 m!2284637))

(assert (=> b!1860995 m!2284493))

(declare-fun m!2284639 () Bool)

(assert (=> b!1860995 m!2284639))

(assert (=> b!1860847 d!567879))

(declare-fun b!1860997 () Bool)

(declare-fun e!1188495 () List!20725)

(assert (=> b!1860997 (= e!1188495 Nil!20643)))

(declare-fun b!1861000 () Bool)

(declare-fun e!1188496 () List!20725)

(assert (=> b!1861000 (= e!1188496 (++!5571 (list!8400 (left!16610 (left!16610 t!4595))) (list!8400 (right!16940 (left!16610 t!4595)))))))

(declare-fun d!567883 () Bool)

(declare-fun c!303086 () Bool)

(assert (=> d!567883 (= c!303086 ((_ is Empty!6838) (left!16610 t!4595)))))

(assert (=> d!567883 (= (list!8400 (left!16610 t!4595)) e!1188495)))

(declare-fun b!1860998 () Bool)

(assert (=> b!1860998 (= e!1188495 e!1188496)))

(declare-fun c!303087 () Bool)

(assert (=> b!1860998 (= c!303087 ((_ is Leaf!10025) (left!16610 t!4595)))))

(declare-fun b!1860999 () Bool)

(assert (=> b!1860999 (= e!1188496 (list!8401 (xs!9714 (left!16610 t!4595))))))

(assert (= (and d!567883 c!303086) b!1860997))

(assert (= (and d!567883 (not c!303086)) b!1860998))

(assert (= (and b!1860998 c!303087) b!1860999))

(assert (= (and b!1860998 (not c!303087)) b!1861000))

(declare-fun m!2284641 () Bool)

(assert (=> b!1861000 m!2284641))

(declare-fun m!2284643 () Bool)

(assert (=> b!1861000 m!2284643))

(assert (=> b!1861000 m!2284641))

(assert (=> b!1861000 m!2284643))

(declare-fun m!2284645 () Bool)

(assert (=> b!1861000 m!2284645))

(assert (=> b!1860999 m!2284619))

(assert (=> b!1860847 d!567883))

(declare-fun b!1861003 () Bool)

(declare-fun e!1188499 () List!20725)

(assert (=> b!1861003 (= e!1188499 Nil!20643)))

(declare-fun b!1861006 () Bool)

(declare-fun e!1188500 () List!20725)

(assert (=> b!1861006 (= e!1188500 (++!5571 (list!8400 (left!16610 (right!16940 t!4595))) (list!8400 (right!16940 (right!16940 t!4595)))))))

(declare-fun d!567885 () Bool)

(declare-fun c!303088 () Bool)

(assert (=> d!567885 (= c!303088 ((_ is Empty!6838) (right!16940 t!4595)))))

(assert (=> d!567885 (= (list!8400 (right!16940 t!4595)) e!1188499)))

(declare-fun b!1861004 () Bool)

(assert (=> b!1861004 (= e!1188499 e!1188500)))

(declare-fun c!303089 () Bool)

(assert (=> b!1861004 (= c!303089 ((_ is Leaf!10025) (right!16940 t!4595)))))

(declare-fun b!1861005 () Bool)

(assert (=> b!1861005 (= e!1188500 (list!8401 (xs!9714 (right!16940 t!4595))))))

(assert (= (and d!567885 c!303088) b!1861003))

(assert (= (and d!567885 (not c!303088)) b!1861004))

(assert (= (and b!1861004 c!303089) b!1861005))

(assert (= (and b!1861004 (not c!303089)) b!1861006))

(declare-fun m!2284647 () Bool)

(assert (=> b!1861006 m!2284647))

(declare-fun m!2284649 () Bool)

(assert (=> b!1861006 m!2284649))

(assert (=> b!1861006 m!2284647))

(assert (=> b!1861006 m!2284649))

(declare-fun m!2284651 () Bool)

(assert (=> b!1861006 m!2284651))

(declare-fun m!2284653 () Bool)

(assert (=> b!1861005 m!2284653))

(assert (=> b!1860847 d!567885))

(declare-fun d!567887 () Bool)

(assert (=> d!567887 (= (height!1033 (left!16610 t!4595)) (ite ((_ is Empty!6838) (left!16610 t!4595)) 0 (ite ((_ is Leaf!10025) (left!16610 t!4595)) 1 (cheight!7049 (left!16610 t!4595)))))))

(assert (=> b!1860931 d!567887))

(declare-fun d!567889 () Bool)

(assert (=> d!567889 (= (height!1033 (right!16940 t!4595)) (ite ((_ is Empty!6838) (right!16940 t!4595)) 0 (ite ((_ is Leaf!10025) (right!16940 t!4595)) 1 (cheight!7049 (right!16940 t!4595)))))))

(assert (=> b!1860931 d!567889))

(declare-fun d!567891 () Bool)

(declare-fun lt!717746 () Bool)

(assert (=> d!567891 (= lt!717746 (isEmpty!12837 (list!8400 (left!16610 t!4595))))))

(assert (=> d!567891 (= lt!717746 (= (size!16325 (left!16610 t!4595)) 0))))

(assert (=> d!567891 (= (isEmpty!12835 (left!16610 t!4595)) lt!717746)))

(declare-fun bs!411483 () Bool)

(assert (= bs!411483 d!567891))

(assert (=> bs!411483 m!2284491))

(assert (=> bs!411483 m!2284491))

(declare-fun m!2284655 () Bool)

(assert (=> bs!411483 m!2284655))

(declare-fun m!2284657 () Bool)

(assert (=> bs!411483 m!2284657))

(assert (=> b!1860930 d!567891))

(declare-fun d!567893 () Bool)

(assert (=> d!567893 (= (list!8401 (xs!9714 t!4595)) (innerList!6898 (xs!9714 t!4595)))))

(assert (=> b!1860846 d!567893))

(declare-fun d!567895 () Bool)

(declare-fun res!833338 () Bool)

(declare-fun e!1188502 () Bool)

(assert (=> d!567895 (=> (not res!833338) (not e!1188502))))

(assert (=> d!567895 (= res!833338 (= (csize!13906 t!4595) (+ (size!16325 (left!16610 t!4595)) (size!16325 (right!16940 t!4595)))))))

(assert (=> d!567895 (= (inv!27185 t!4595) e!1188502)))

(declare-fun b!1861014 () Bool)

(declare-fun res!833339 () Bool)

(assert (=> b!1861014 (=> (not res!833339) (not e!1188502))))

(assert (=> b!1861014 (= res!833339 (and (not (= (left!16610 t!4595) Empty!6838)) (not (= (right!16940 t!4595) Empty!6838))))))

(declare-fun b!1861015 () Bool)

(declare-fun res!833340 () Bool)

(assert (=> b!1861015 (=> (not res!833340) (not e!1188502))))

(assert (=> b!1861015 (= res!833340 (= (cheight!7049 t!4595) (+ (max!0 (height!1033 (left!16610 t!4595)) (height!1033 (right!16940 t!4595))) 1)))))

(declare-fun b!1861016 () Bool)

(assert (=> b!1861016 (= e!1188502 (<= 0 (cheight!7049 t!4595)))))

(assert (= (and d!567895 res!833338) b!1861014))

(assert (= (and b!1861014 res!833339) b!1861015))

(assert (= (and b!1861015 res!833340) b!1861016))

(assert (=> d!567895 m!2284657))

(assert (=> d!567895 m!2284625))

(assert (=> b!1861015 m!2284571))

(assert (=> b!1861015 m!2284573))

(assert (=> b!1861015 m!2284571))

(assert (=> b!1861015 m!2284573))

(declare-fun m!2284665 () Bool)

(assert (=> b!1861015 m!2284665))

(assert (=> b!1860937 d!567895))

(assert (=> b!1860929 d!567887))

(assert (=> b!1860929 d!567889))

(declare-fun b!1861020 () Bool)

(declare-fun e!1188504 () Bool)

(assert (=> b!1861020 (= e!1188504 (not (isEmpty!12835 (right!16940 (right!16940 t!4595)))))))

(declare-fun b!1861022 () Bool)

(declare-fun res!833346 () Bool)

(assert (=> b!1861022 (=> (not res!833346) (not e!1188504))))

(assert (=> b!1861022 (= res!833346 (not (isEmpty!12835 (left!16610 (right!16940 t!4595)))))))

(declare-fun b!1861023 () Bool)

(declare-fun res!833344 () Bool)

(assert (=> b!1861023 (=> (not res!833344) (not e!1188504))))

(assert (=> b!1861023 (= res!833344 (<= (- (height!1033 (left!16610 (right!16940 t!4595))) (height!1033 (right!16940 (right!16940 t!4595)))) 1))))

(declare-fun b!1861024 () Bool)

(declare-fun res!833348 () Bool)

(assert (=> b!1861024 (=> (not res!833348) (not e!1188504))))

(assert (=> b!1861024 (= res!833348 (isBalanced!2139 (left!16610 (right!16940 t!4595))))))

(declare-fun b!1861025 () Bool)

(declare-fun res!833345 () Bool)

(assert (=> b!1861025 (=> (not res!833345) (not e!1188504))))

(assert (=> b!1861025 (= res!833345 (isBalanced!2139 (right!16940 (right!16940 t!4595))))))

(declare-fun b!1861021 () Bool)

(declare-fun e!1188505 () Bool)

(assert (=> b!1861021 (= e!1188505 e!1188504)))

(declare-fun res!833349 () Bool)

(assert (=> b!1861021 (=> (not res!833349) (not e!1188504))))

(assert (=> b!1861021 (= res!833349 (<= (- 1) (- (height!1033 (left!16610 (right!16940 t!4595))) (height!1033 (right!16940 (right!16940 t!4595))))))))

(declare-fun d!567899 () Bool)

(declare-fun res!833347 () Bool)

(assert (=> d!567899 (=> res!833347 e!1188505)))

(assert (=> d!567899 (= res!833347 (not ((_ is Node!6838) (right!16940 t!4595))))))

(assert (=> d!567899 (= (isBalanced!2139 (right!16940 t!4595)) e!1188505)))

(assert (= (and d!567899 (not res!833347)) b!1861021))

(assert (= (and b!1861021 res!833349) b!1861023))

(assert (= (and b!1861023 res!833344) b!1861024))

(assert (= (and b!1861024 res!833348) b!1861025))

(assert (= (and b!1861025 res!833345) b!1861022))

(assert (= (and b!1861022 res!833346) b!1861020))

(declare-fun m!2284677 () Bool)

(assert (=> b!1861025 m!2284677))

(declare-fun m!2284679 () Bool)

(assert (=> b!1861021 m!2284679))

(declare-fun m!2284681 () Bool)

(assert (=> b!1861021 m!2284681))

(declare-fun m!2284683 () Bool)

(assert (=> b!1861020 m!2284683))

(assert (=> b!1861023 m!2284679))

(assert (=> b!1861023 m!2284681))

(declare-fun m!2284685 () Bool)

(assert (=> b!1861024 m!2284685))

(declare-fun m!2284687 () Bool)

(assert (=> b!1861022 m!2284687))

(assert (=> b!1860933 d!567899))

(declare-fun b!1861026 () Bool)

(declare-fun e!1188506 () Bool)

(assert (=> b!1861026 (= e!1188506 (not (isEmpty!12835 (right!16940 (left!16610 t!4595)))))))

(declare-fun b!1861028 () Bool)

(declare-fun res!833352 () Bool)

(assert (=> b!1861028 (=> (not res!833352) (not e!1188506))))

(assert (=> b!1861028 (= res!833352 (not (isEmpty!12835 (left!16610 (left!16610 t!4595)))))))

(declare-fun b!1861029 () Bool)

(declare-fun res!833350 () Bool)

(assert (=> b!1861029 (=> (not res!833350) (not e!1188506))))

(assert (=> b!1861029 (= res!833350 (<= (- (height!1033 (left!16610 (left!16610 t!4595))) (height!1033 (right!16940 (left!16610 t!4595)))) 1))))

(declare-fun b!1861030 () Bool)

(declare-fun res!833354 () Bool)

(assert (=> b!1861030 (=> (not res!833354) (not e!1188506))))

(assert (=> b!1861030 (= res!833354 (isBalanced!2139 (left!16610 (left!16610 t!4595))))))

(declare-fun b!1861031 () Bool)

(declare-fun res!833351 () Bool)

(assert (=> b!1861031 (=> (not res!833351) (not e!1188506))))

(assert (=> b!1861031 (= res!833351 (isBalanced!2139 (right!16940 (left!16610 t!4595))))))

(declare-fun b!1861027 () Bool)

(declare-fun e!1188507 () Bool)

(assert (=> b!1861027 (= e!1188507 e!1188506)))

(declare-fun res!833355 () Bool)

(assert (=> b!1861027 (=> (not res!833355) (not e!1188506))))

(assert (=> b!1861027 (= res!833355 (<= (- 1) (- (height!1033 (left!16610 (left!16610 t!4595))) (height!1033 (right!16940 (left!16610 t!4595))))))))

(declare-fun d!567903 () Bool)

(declare-fun res!833353 () Bool)

(assert (=> d!567903 (=> res!833353 e!1188507)))

(assert (=> d!567903 (= res!833353 (not ((_ is Node!6838) (left!16610 t!4595))))))

(assert (=> d!567903 (= (isBalanced!2139 (left!16610 t!4595)) e!1188507)))

(assert (= (and d!567903 (not res!833353)) b!1861027))

(assert (= (and b!1861027 res!833355) b!1861029))

(assert (= (and b!1861029 res!833350) b!1861030))

(assert (= (and b!1861030 res!833354) b!1861031))

(assert (= (and b!1861031 res!833351) b!1861028))

(assert (= (and b!1861028 res!833352) b!1861026))

(declare-fun m!2284689 () Bool)

(assert (=> b!1861031 m!2284689))

(assert (=> b!1861027 m!2284611))

(assert (=> b!1861027 m!2284613))

(declare-fun m!2284691 () Bool)

(assert (=> b!1861026 m!2284691))

(assert (=> b!1861029 m!2284611))

(assert (=> b!1861029 m!2284613))

(declare-fun m!2284693 () Bool)

(assert (=> b!1861030 m!2284693))

(declare-fun m!2284695 () Bool)

(assert (=> b!1861028 m!2284695))

(assert (=> b!1860932 d!567903))

(declare-fun d!567905 () Bool)

(assert (=> d!567905 (= (inv!27182 (xs!9714 (right!16940 t!4595))) (<= (size!16323 (innerList!6898 (xs!9714 (right!16940 t!4595)))) 2147483647))))

(declare-fun bs!411484 () Bool)

(assert (= bs!411484 d!567905))

(declare-fun m!2284697 () Bool)

(assert (=> bs!411484 m!2284697))

(assert (=> b!1860957 d!567905))

(declare-fun d!567907 () Bool)

(declare-fun c!303090 () Bool)

(assert (=> d!567907 (= c!303090 ((_ is Node!6838) (left!16610 (right!16940 t!4595))))))

(declare-fun e!1188508 () Bool)

(assert (=> d!567907 (= (inv!27181 (left!16610 (right!16940 t!4595))) e!1188508)))

(declare-fun b!1861034 () Bool)

(assert (=> b!1861034 (= e!1188508 (inv!27185 (left!16610 (right!16940 t!4595))))))

(declare-fun b!1861035 () Bool)

(declare-fun e!1188509 () Bool)

(assert (=> b!1861035 (= e!1188508 e!1188509)))

(declare-fun res!833356 () Bool)

(assert (=> b!1861035 (= res!833356 (not ((_ is Leaf!10025) (left!16610 (right!16940 t!4595)))))))

(assert (=> b!1861035 (=> res!833356 e!1188509)))

(declare-fun b!1861036 () Bool)

(assert (=> b!1861036 (= e!1188509 (inv!27186 (left!16610 (right!16940 t!4595))))))

(assert (= (and d!567907 c!303090) b!1861034))

(assert (= (and d!567907 (not c!303090)) b!1861035))

(assert (= (and b!1861035 (not res!833356)) b!1861036))

(declare-fun m!2284699 () Bool)

(assert (=> b!1861034 m!2284699))

(declare-fun m!2284701 () Bool)

(assert (=> b!1861036 m!2284701))

(assert (=> b!1860956 d!567907))

(declare-fun d!567909 () Bool)

(declare-fun c!303093 () Bool)

(assert (=> d!567909 (= c!303093 ((_ is Node!6838) (right!16940 (right!16940 t!4595))))))

(declare-fun e!1188512 () Bool)

(assert (=> d!567909 (= (inv!27181 (right!16940 (right!16940 t!4595))) e!1188512)))

(declare-fun b!1861039 () Bool)

(assert (=> b!1861039 (= e!1188512 (inv!27185 (right!16940 (right!16940 t!4595))))))

(declare-fun b!1861040 () Bool)

(declare-fun e!1188513 () Bool)

(assert (=> b!1861040 (= e!1188512 e!1188513)))

(declare-fun res!833357 () Bool)

(assert (=> b!1861040 (= res!833357 (not ((_ is Leaf!10025) (right!16940 (right!16940 t!4595)))))))

(assert (=> b!1861040 (=> res!833357 e!1188513)))

(declare-fun b!1861041 () Bool)

(assert (=> b!1861041 (= e!1188513 (inv!27186 (right!16940 (right!16940 t!4595))))))

(assert (= (and d!567909 c!303093) b!1861039))

(assert (= (and d!567909 (not c!303093)) b!1861040))

(assert (= (and b!1861040 (not res!833357)) b!1861041))

(declare-fun m!2284703 () Bool)

(assert (=> b!1861039 m!2284703))

(declare-fun m!2284705 () Bool)

(assert (=> b!1861041 m!2284705))

(assert (=> b!1860956 d!567909))

(declare-fun d!567911 () Bool)

(declare-fun res!833358 () Bool)

(declare-fun e!1188514 () Bool)

(assert (=> d!567911 (=> (not res!833358) (not e!1188514))))

(assert (=> d!567911 (= res!833358 (<= (size!16323 (list!8401 (xs!9714 t!4595))) 512))))

(assert (=> d!567911 (= (inv!27186 t!4595) e!1188514)))

(declare-fun b!1861042 () Bool)

(declare-fun res!833359 () Bool)

(assert (=> b!1861042 (=> (not res!833359) (not e!1188514))))

(assert (=> b!1861042 (= res!833359 (= (csize!13907 t!4595) (size!16323 (list!8401 (xs!9714 t!4595)))))))

(declare-fun b!1861043 () Bool)

(assert (=> b!1861043 (= e!1188514 (and (> (csize!13907 t!4595) 0) (<= (csize!13907 t!4595) 512)))))

(assert (= (and d!567911 res!833358) b!1861042))

(assert (= (and b!1861042 res!833359) b!1861043))

(assert (=> d!567911 m!2284497))

(assert (=> d!567911 m!2284497))

(declare-fun m!2284707 () Bool)

(assert (=> d!567911 m!2284707))

(assert (=> b!1861042 m!2284497))

(assert (=> b!1861042 m!2284497))

(assert (=> b!1861042 m!2284707))

(assert (=> b!1860939 d!567911))

(declare-fun d!567913 () Bool)

(declare-fun res!833360 () Bool)

(declare-fun e!1188515 () Bool)

(assert (=> d!567913 (=> (not res!833360) (not e!1188515))))

(assert (=> d!567913 (= res!833360 (= (csize!13906 (right!16940 t!4595)) (+ (size!16325 (left!16610 (right!16940 t!4595))) (size!16325 (right!16940 (right!16940 t!4595))))))))

(assert (=> d!567913 (= (inv!27185 (right!16940 t!4595)) e!1188515)))

(declare-fun b!1861044 () Bool)

(declare-fun res!833361 () Bool)

(assert (=> b!1861044 (=> (not res!833361) (not e!1188515))))

(assert (=> b!1861044 (= res!833361 (and (not (= (left!16610 (right!16940 t!4595)) Empty!6838)) (not (= (right!16940 (right!16940 t!4595)) Empty!6838))))))

(declare-fun b!1861045 () Bool)

(declare-fun res!833362 () Bool)

(assert (=> b!1861045 (=> (not res!833362) (not e!1188515))))

(assert (=> b!1861045 (= res!833362 (= (cheight!7049 (right!16940 t!4595)) (+ (max!0 (height!1033 (left!16610 (right!16940 t!4595))) (height!1033 (right!16940 (right!16940 t!4595)))) 1)))))

(declare-fun b!1861046 () Bool)

(assert (=> b!1861046 (= e!1188515 (<= 0 (cheight!7049 (right!16940 t!4595))))))

(assert (= (and d!567913 res!833360) b!1861044))

(assert (= (and b!1861044 res!833361) b!1861045))

(assert (= (and b!1861045 res!833362) b!1861046))

(declare-fun m!2284709 () Bool)

(assert (=> d!567913 m!2284709))

(declare-fun m!2284711 () Bool)

(assert (=> d!567913 m!2284711))

(assert (=> b!1861045 m!2284679))

(assert (=> b!1861045 m!2284681))

(assert (=> b!1861045 m!2284679))

(assert (=> b!1861045 m!2284681))

(declare-fun m!2284715 () Bool)

(assert (=> b!1861045 m!2284715))

(assert (=> b!1860869 d!567913))

(declare-fun d!567917 () Bool)

(assert (not d!567917))

(assert (=> b!1860920 d!567917))

(declare-fun d!567921 () Bool)

(assert (not d!567921))

(assert (=> b!1860920 d!567921))

(declare-fun d!567923 () Bool)

(assert (not d!567923))

(assert (=> b!1860919 d!567923))

(declare-fun d!567925 () Bool)

(assert (not d!567925))

(assert (=> b!1860923 d!567925))

(declare-fun d!567927 () Bool)

(declare-fun c!303095 () Bool)

(assert (=> d!567927 (= c!303095 ((_ is Node!6838) (left!16610 (left!16610 t!4595))))))

(declare-fun e!1188517 () Bool)

(assert (=> d!567927 (= (inv!27181 (left!16610 (left!16610 t!4595))) e!1188517)))

(declare-fun b!1861049 () Bool)

(assert (=> b!1861049 (= e!1188517 (inv!27185 (left!16610 (left!16610 t!4595))))))

(declare-fun b!1861050 () Bool)

(declare-fun e!1188518 () Bool)

(assert (=> b!1861050 (= e!1188517 e!1188518)))

(declare-fun res!833363 () Bool)

(assert (=> b!1861050 (= res!833363 (not ((_ is Leaf!10025) (left!16610 (left!16610 t!4595)))))))

(assert (=> b!1861050 (=> res!833363 e!1188518)))

(declare-fun b!1861051 () Bool)

(assert (=> b!1861051 (= e!1188518 (inv!27186 (left!16610 (left!16610 t!4595))))))

(assert (= (and d!567927 c!303095) b!1861049))

(assert (= (and d!567927 (not c!303095)) b!1861050))

(assert (= (and b!1861050 (not res!833363)) b!1861051))

(declare-fun m!2284719 () Bool)

(assert (=> b!1861049 m!2284719))

(declare-fun m!2284721 () Bool)

(assert (=> b!1861051 m!2284721))

(assert (=> b!1860953 d!567927))

(declare-fun d!567929 () Bool)

(declare-fun c!303096 () Bool)

(assert (=> d!567929 (= c!303096 ((_ is Node!6838) (right!16940 (left!16610 t!4595))))))

(declare-fun e!1188521 () Bool)

(assert (=> d!567929 (= (inv!27181 (right!16940 (left!16610 t!4595))) e!1188521)))

(declare-fun b!1861056 () Bool)

(assert (=> b!1861056 (= e!1188521 (inv!27185 (right!16940 (left!16610 t!4595))))))

(declare-fun b!1861057 () Bool)

(declare-fun e!1188522 () Bool)

(assert (=> b!1861057 (= e!1188521 e!1188522)))

(declare-fun res!833368 () Bool)

(assert (=> b!1861057 (= res!833368 (not ((_ is Leaf!10025) (right!16940 (left!16610 t!4595)))))))

(assert (=> b!1861057 (=> res!833368 e!1188522)))

(declare-fun b!1861058 () Bool)

(assert (=> b!1861058 (= e!1188522 (inv!27186 (right!16940 (left!16610 t!4595))))))

(assert (= (and d!567929 c!303096) b!1861056))

(assert (= (and d!567929 (not c!303096)) b!1861057))

(assert (= (and b!1861057 (not res!833368)) b!1861058))

(declare-fun m!2284723 () Bool)

(assert (=> b!1861056 m!2284723))

(declare-fun m!2284725 () Bool)

(assert (=> b!1861058 m!2284725))

(assert (=> b!1860953 d!567929))

(declare-fun d!567931 () Bool)

(declare-fun res!833369 () Bool)

(declare-fun e!1188523 () Bool)

(assert (=> d!567931 (=> (not res!833369) (not e!1188523))))

(assert (=> d!567931 (= res!833369 (<= (size!16323 (list!8401 (xs!9714 (right!16940 t!4595)))) 512))))

(assert (=> d!567931 (= (inv!27186 (right!16940 t!4595)) e!1188523)))

(declare-fun b!1861059 () Bool)

(declare-fun res!833370 () Bool)

(assert (=> b!1861059 (=> (not res!833370) (not e!1188523))))

(assert (=> b!1861059 (= res!833370 (= (csize!13907 (right!16940 t!4595)) (size!16323 (list!8401 (xs!9714 (right!16940 t!4595))))))))

(declare-fun b!1861060 () Bool)

(assert (=> b!1861060 (= e!1188523 (and (> (csize!13907 (right!16940 t!4595)) 0) (<= (csize!13907 (right!16940 t!4595)) 512)))))

(assert (= (and d!567931 res!833369) b!1861059))

(assert (= (and b!1861059 res!833370) b!1861060))

(assert (=> d!567931 m!2284653))

(assert (=> d!567931 m!2284653))

(declare-fun m!2284727 () Bool)

(assert (=> d!567931 m!2284727))

(assert (=> b!1861059 m!2284653))

(assert (=> b!1861059 m!2284653))

(assert (=> b!1861059 m!2284727))

(assert (=> b!1860871 d!567931))

(assert (=> b!1860922 d!567917))

(assert (=> b!1860922 d!567921))

(declare-fun d!567933 () Bool)

(assert (not d!567933))

(assert (=> b!1860921 d!567933))

(declare-fun b!1861061 () Bool)

(declare-fun e!1188524 () Bool)

(declare-fun tp!530321 () Bool)

(assert (=> b!1861061 (= e!1188524 (and tp_is_empty!8611 tp!530321))))

(assert (=> b!1860963 (= tp!530320 e!1188524)))

(assert (= (and b!1860963 ((_ is Cons!20643) (t!172740 (innerList!6898 (xs!9714 t!4595))))) b!1861061))

(declare-fun b!1861062 () Bool)

(declare-fun e!1188525 () Bool)

(declare-fun tp!530322 () Bool)

(assert (=> b!1861062 (= e!1188525 (and tp_is_empty!8611 tp!530322))))

(assert (=> b!1860955 (= tp!530312 e!1188525)))

(assert (= (and b!1860955 ((_ is Cons!20643) (innerList!6898 (xs!9714 (left!16610 t!4595))))) b!1861062))

(declare-fun b!1861065 () Bool)

(declare-fun e!1188527 () Bool)

(declare-fun tp!530323 () Bool)

(assert (=> b!1861065 (= e!1188527 (and tp_is_empty!8611 tp!530323))))

(assert (=> b!1860958 (= tp!530315 e!1188527)))

(assert (= (and b!1860958 ((_ is Cons!20643) (innerList!6898 (xs!9714 (right!16940 t!4595))))) b!1861065))

(declare-fun tp!530325 () Bool)

(declare-fun e!1188528 () Bool)

(declare-fun b!1861066 () Bool)

(declare-fun tp!530326 () Bool)

(assert (=> b!1861066 (= e!1188528 (and (inv!27181 (left!16610 (left!16610 (left!16610 t!4595)))) tp!530326 (inv!27181 (right!16940 (left!16610 (left!16610 t!4595)))) tp!530325))))

(declare-fun b!1861068 () Bool)

(declare-fun e!1188529 () Bool)

(declare-fun tp!530324 () Bool)

(assert (=> b!1861068 (= e!1188529 tp!530324)))

(declare-fun b!1861067 () Bool)

(assert (=> b!1861067 (= e!1188528 (and (inv!27182 (xs!9714 (left!16610 (left!16610 t!4595)))) e!1188529))))

(assert (=> b!1860953 (= tp!530314 (and (inv!27181 (left!16610 (left!16610 t!4595))) e!1188528))))

(assert (= (and b!1860953 ((_ is Node!6838) (left!16610 (left!16610 t!4595)))) b!1861066))

(assert (= b!1861067 b!1861068))

(assert (= (and b!1860953 ((_ is Leaf!10025) (left!16610 (left!16610 t!4595)))) b!1861067))

(declare-fun m!2284731 () Bool)

(assert (=> b!1861066 m!2284731))

(declare-fun m!2284733 () Bool)

(assert (=> b!1861066 m!2284733))

(declare-fun m!2284735 () Bool)

(assert (=> b!1861067 m!2284735))

(assert (=> b!1860953 m!2284591))

(declare-fun tp!530328 () Bool)

(declare-fun tp!530329 () Bool)

(declare-fun e!1188532 () Bool)

(declare-fun b!1861072 () Bool)

(assert (=> b!1861072 (= e!1188532 (and (inv!27181 (left!16610 (right!16940 (left!16610 t!4595)))) tp!530329 (inv!27181 (right!16940 (right!16940 (left!16610 t!4595)))) tp!530328))))

(declare-fun b!1861074 () Bool)

(declare-fun e!1188533 () Bool)

(declare-fun tp!530327 () Bool)

(assert (=> b!1861074 (= e!1188533 tp!530327)))

(declare-fun b!1861073 () Bool)

(assert (=> b!1861073 (= e!1188532 (and (inv!27182 (xs!9714 (right!16940 (left!16610 t!4595)))) e!1188533))))

(assert (=> b!1860953 (= tp!530313 (and (inv!27181 (right!16940 (left!16610 t!4595))) e!1188532))))

(assert (= (and b!1860953 ((_ is Node!6838) (right!16940 (left!16610 t!4595)))) b!1861072))

(assert (= b!1861073 b!1861074))

(assert (= (and b!1860953 ((_ is Leaf!10025) (right!16940 (left!16610 t!4595)))) b!1861073))

(declare-fun m!2284741 () Bool)

(assert (=> b!1861072 m!2284741))

(declare-fun m!2284743 () Bool)

(assert (=> b!1861072 m!2284743))

(declare-fun m!2284745 () Bool)

(assert (=> b!1861073 m!2284745))

(assert (=> b!1860953 m!2284593))

(declare-fun tp!530331 () Bool)

(declare-fun tp!530332 () Bool)

(declare-fun b!1861078 () Bool)

(declare-fun e!1188536 () Bool)

(assert (=> b!1861078 (= e!1188536 (and (inv!27181 (left!16610 (left!16610 (right!16940 t!4595)))) tp!530332 (inv!27181 (right!16940 (left!16610 (right!16940 t!4595)))) tp!530331))))

(declare-fun b!1861080 () Bool)

(declare-fun e!1188537 () Bool)

(declare-fun tp!530330 () Bool)

(assert (=> b!1861080 (= e!1188537 tp!530330)))

(declare-fun b!1861079 () Bool)

(assert (=> b!1861079 (= e!1188536 (and (inv!27182 (xs!9714 (left!16610 (right!16940 t!4595)))) e!1188537))))

(assert (=> b!1860956 (= tp!530317 (and (inv!27181 (left!16610 (right!16940 t!4595))) e!1188536))))

(assert (= (and b!1860956 ((_ is Node!6838) (left!16610 (right!16940 t!4595)))) b!1861078))

(assert (= b!1861079 b!1861080))

(assert (= (and b!1860956 ((_ is Leaf!10025) (left!16610 (right!16940 t!4595)))) b!1861079))

(declare-fun m!2284751 () Bool)

(assert (=> b!1861078 m!2284751))

(declare-fun m!2284753 () Bool)

(assert (=> b!1861078 m!2284753))

(declare-fun m!2284755 () Bool)

(assert (=> b!1861079 m!2284755))

(assert (=> b!1860956 m!2284597))

(declare-fun tp!530335 () Bool)

(declare-fun e!1188538 () Bool)

(declare-fun tp!530334 () Bool)

(declare-fun b!1861081 () Bool)

(assert (=> b!1861081 (= e!1188538 (and (inv!27181 (left!16610 (right!16940 (right!16940 t!4595)))) tp!530335 (inv!27181 (right!16940 (right!16940 (right!16940 t!4595)))) tp!530334))))

(declare-fun b!1861083 () Bool)

(declare-fun e!1188539 () Bool)

(declare-fun tp!530333 () Bool)

(assert (=> b!1861083 (= e!1188539 tp!530333)))

(declare-fun b!1861082 () Bool)

(assert (=> b!1861082 (= e!1188538 (and (inv!27182 (xs!9714 (right!16940 (right!16940 t!4595)))) e!1188539))))

(assert (=> b!1860956 (= tp!530316 (and (inv!27181 (right!16940 (right!16940 t!4595))) e!1188538))))

(assert (= (and b!1860956 ((_ is Node!6838) (right!16940 (right!16940 t!4595)))) b!1861081))

(assert (= b!1861082 b!1861083))

(assert (= (and b!1860956 ((_ is Leaf!10025) (right!16940 (right!16940 t!4595)))) b!1861082))

(declare-fun m!2284757 () Bool)

(assert (=> b!1861081 m!2284757))

(declare-fun m!2284759 () Bool)

(assert (=> b!1861081 m!2284759))

(declare-fun m!2284761 () Bool)

(assert (=> b!1861082 m!2284761))

(assert (=> b!1860956 m!2284599))

(check-sat (not b!1861027) (not b!1861030) (not b!1861079) (not b!1861029) (not b!1861028) (not b!1861000) (not b!1861051) (not b!1861039) (not b!1861073) (not b!1860983) (not b!1861042) (not b!1861045) (not b!1861062) (not b!1861005) (not d!567911) (not b!1861081) (not b!1861021) (not b!1861065) (not b!1861006) (not b!1861034) (not d!567873) (not d!567867) (not b!1861083) (not b!1861082) (not d!567879) (not b!1861061) (not b!1861023) (not b!1860956) (not b!1861024) tp_is_empty!8611 (not b!1861066) (not d!567869) (not b!1861058) (not b!1861072) (not b!1861020) (not b!1861056) (not b!1861067) (not d!567875) (not b!1861031) (not b!1861026) (not b!1861068) (not b!1861036) (not b!1861022) (not b!1860995) (not b!1861074) (not b!1860994) (not d!567913) (not d!567891) (not b!1861059) (not d!567895) (not b!1860999) (not b!1861041) (not b!1860977) (not d!567905) (not b!1860953) (not b!1860969) (not b!1861049) (not b!1861015) (not d!567931) (not d!567877) (not b!1861080) (not b!1861025) (not b!1861078))
(check-sat)
