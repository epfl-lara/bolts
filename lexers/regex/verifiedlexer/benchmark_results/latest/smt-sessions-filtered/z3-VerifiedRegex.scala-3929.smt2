; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215482 () Bool)

(assert start!215482)

(declare-fun b!2211918 () Bool)

(declare-fun res!950652 () Bool)

(declare-fun e!1412591 () Bool)

(assert (=> b!2211918 (=> (not res!950652) (not e!1412591))))

(declare-datatypes ((T!40592 0))(
  ( (T!40593 (val!7384 Int)) )
))
(declare-datatypes ((List!25948 0))(
  ( (Nil!25864) (Cons!25864 (h!31265 T!40592) (t!198682 List!25948)) )
))
(declare-datatypes ((IArray!16927 0))(
  ( (IArray!16928 (innerList!8521 List!25948)) )
))
(declare-datatypes ((Conc!8461 0))(
  ( (Node!8461 (left!19894 Conc!8461) (right!20224 Conc!8461) (csize!17152 Int) (cheight!8672 Int)) (Leaf!12391 (xs!11403 IArray!16927) (csize!17153 Int)) (Empty!8461) )
))
(declare-fun t!4663 () Conc!8461)

(declare-fun isEmpty!14811 (Conc!8461) Bool)

(assert (=> b!2211918 (= res!950652 (not (isEmpty!14811 t!4663)))))

(declare-fun b!2211919 () Bool)

(declare-fun e!1412592 () Bool)

(declare-fun tp!687402 () Bool)

(assert (=> b!2211919 (= e!1412592 tp!687402)))

(declare-fun b!2211920 () Bool)

(declare-fun ConcPrimitiveSize!24 (Conc!8461) Int)

(assert (=> b!2211920 (= e!1412591 (>= (ConcPrimitiveSize!24 (left!19894 t!4663)) (ConcPrimitiveSize!24 t!4663)))))

(declare-fun res!950651 () Bool)

(assert (=> start!215482 (=> (not res!950651) (not e!1412591))))

(declare-fun isBalanced!2619 (Conc!8461) Bool)

(assert (=> start!215482 (= res!950651 (isBalanced!2619 t!4663))))

(assert (=> start!215482 e!1412591))

(declare-fun e!1412593 () Bool)

(declare-fun inv!35030 (Conc!8461) Bool)

(assert (=> start!215482 (and (inv!35030 t!4663) e!1412593)))

(declare-fun b!2211921 () Bool)

(declare-fun inv!35031 (IArray!16927) Bool)

(assert (=> b!2211921 (= e!1412593 (and (inv!35031 (xs!11403 t!4663)) e!1412592))))

(declare-fun tp!687401 () Bool)

(declare-fun b!2211922 () Bool)

(declare-fun tp!687400 () Bool)

(assert (=> b!2211922 (= e!1412593 (and (inv!35030 (left!19894 t!4663)) tp!687400 (inv!35030 (right!20224 t!4663)) tp!687401))))

(declare-fun b!2211923 () Bool)

(declare-fun res!950653 () Bool)

(assert (=> b!2211923 (=> (not res!950653) (not e!1412591))))

(get-info :version)

(assert (=> b!2211923 (= res!950653 (and (not ((_ is Leaf!12391) t!4663)) ((_ is Node!8461) t!4663)))))

(assert (= (and start!215482 res!950651) b!2211918))

(assert (= (and b!2211918 res!950652) b!2211923))

(assert (= (and b!2211923 res!950653) b!2211920))

(assert (= (and start!215482 ((_ is Node!8461) t!4663)) b!2211922))

(assert (= b!2211921 b!2211919))

(assert (= (and start!215482 ((_ is Leaf!12391) t!4663)) b!2211921))

(declare-fun m!2653815 () Bool)

(assert (=> b!2211922 m!2653815))

(declare-fun m!2653817 () Bool)

(assert (=> b!2211922 m!2653817))

(declare-fun m!2653819 () Bool)

(assert (=> start!215482 m!2653819))

(declare-fun m!2653821 () Bool)

(assert (=> start!215482 m!2653821))

(declare-fun m!2653823 () Bool)

(assert (=> b!2211921 m!2653823))

(declare-fun m!2653825 () Bool)

(assert (=> b!2211920 m!2653825))

(declare-fun m!2653827 () Bool)

(assert (=> b!2211920 m!2653827))

(declare-fun m!2653829 () Bool)

(assert (=> b!2211918 m!2653829))

(check-sat (not b!2211918) (not b!2211919) (not b!2211921) (not b!2211920) (not b!2211922) (not start!215482))
(check-sat)
(get-model)

(declare-fun d!661220 () Bool)

(declare-fun c!353512 () Bool)

(assert (=> d!661220 (= c!353512 ((_ is Node!8461) (left!19894 t!4663)))))

(declare-fun e!1412602 () Bool)

(assert (=> d!661220 (= (inv!35030 (left!19894 t!4663)) e!1412602)))

(declare-fun b!2211936 () Bool)

(declare-fun inv!35032 (Conc!8461) Bool)

(assert (=> b!2211936 (= e!1412602 (inv!35032 (left!19894 t!4663)))))

(declare-fun b!2211937 () Bool)

(declare-fun e!1412603 () Bool)

(assert (=> b!2211937 (= e!1412602 e!1412603)))

(declare-fun res!950658 () Bool)

(assert (=> b!2211937 (= res!950658 (not ((_ is Leaf!12391) (left!19894 t!4663))))))

(assert (=> b!2211937 (=> res!950658 e!1412603)))

(declare-fun b!2211938 () Bool)

(declare-fun inv!35034 (Conc!8461) Bool)

(assert (=> b!2211938 (= e!1412603 (inv!35034 (left!19894 t!4663)))))

(assert (= (and d!661220 c!353512) b!2211936))

(assert (= (and d!661220 (not c!353512)) b!2211937))

(assert (= (and b!2211937 (not res!950658)) b!2211938))

(declare-fun m!2653831 () Bool)

(assert (=> b!2211936 m!2653831))

(declare-fun m!2653833 () Bool)

(assert (=> b!2211938 m!2653833))

(assert (=> b!2211922 d!661220))

(declare-fun d!661224 () Bool)

(declare-fun c!353513 () Bool)

(assert (=> d!661224 (= c!353513 ((_ is Node!8461) (right!20224 t!4663)))))

(declare-fun e!1412604 () Bool)

(assert (=> d!661224 (= (inv!35030 (right!20224 t!4663)) e!1412604)))

(declare-fun b!2211939 () Bool)

(assert (=> b!2211939 (= e!1412604 (inv!35032 (right!20224 t!4663)))))

(declare-fun b!2211940 () Bool)

(declare-fun e!1412605 () Bool)

(assert (=> b!2211940 (= e!1412604 e!1412605)))

(declare-fun res!950659 () Bool)

(assert (=> b!2211940 (= res!950659 (not ((_ is Leaf!12391) (right!20224 t!4663))))))

(assert (=> b!2211940 (=> res!950659 e!1412605)))

(declare-fun b!2211941 () Bool)

(assert (=> b!2211941 (= e!1412605 (inv!35034 (right!20224 t!4663)))))

(assert (= (and d!661224 c!353513) b!2211939))

(assert (= (and d!661224 (not c!353513)) b!2211940))

(assert (= (and b!2211940 (not res!950659)) b!2211941))

(declare-fun m!2653835 () Bool)

(assert (=> b!2211939 m!2653835))

(declare-fun m!2653837 () Bool)

(assert (=> b!2211941 m!2653837))

(assert (=> b!2211922 d!661224))

(declare-fun d!661226 () Bool)

(declare-fun res!950690 () Bool)

(declare-fun e!1412619 () Bool)

(assert (=> d!661226 (=> res!950690 e!1412619)))

(assert (=> d!661226 (= res!950690 (not ((_ is Node!8461) t!4663)))))

(assert (=> d!661226 (= (isBalanced!2619 t!4663) e!1412619)))

(declare-fun b!2211972 () Bool)

(declare-fun res!950686 () Bool)

(declare-fun e!1412618 () Bool)

(assert (=> b!2211972 (=> (not res!950686) (not e!1412618))))

(assert (=> b!2211972 (= res!950686 (isBalanced!2619 (right!20224 t!4663)))))

(declare-fun b!2211973 () Bool)

(assert (=> b!2211973 (= e!1412619 e!1412618)))

(declare-fun res!950688 () Bool)

(assert (=> b!2211973 (=> (not res!950688) (not e!1412618))))

(declare-fun height!1284 (Conc!8461) Int)

(assert (=> b!2211973 (= res!950688 (<= (- 1) (- (height!1284 (left!19894 t!4663)) (height!1284 (right!20224 t!4663)))))))

(declare-fun b!2211974 () Bool)

(declare-fun res!950691 () Bool)

(assert (=> b!2211974 (=> (not res!950691) (not e!1412618))))

(assert (=> b!2211974 (= res!950691 (isBalanced!2619 (left!19894 t!4663)))))

(declare-fun b!2211975 () Bool)

(declare-fun res!950687 () Bool)

(assert (=> b!2211975 (=> (not res!950687) (not e!1412618))))

(assert (=> b!2211975 (= res!950687 (<= (- (height!1284 (left!19894 t!4663)) (height!1284 (right!20224 t!4663))) 1))))

(declare-fun b!2211976 () Bool)

(declare-fun res!950689 () Bool)

(assert (=> b!2211976 (=> (not res!950689) (not e!1412618))))

(assert (=> b!2211976 (= res!950689 (not (isEmpty!14811 (left!19894 t!4663))))))

(declare-fun b!2211977 () Bool)

(assert (=> b!2211977 (= e!1412618 (not (isEmpty!14811 (right!20224 t!4663))))))

(assert (= (and d!661226 (not res!950690)) b!2211973))

(assert (= (and b!2211973 res!950688) b!2211975))

(assert (= (and b!2211975 res!950687) b!2211974))

(assert (= (and b!2211974 res!950691) b!2211972))

(assert (= (and b!2211972 res!950686) b!2211976))

(assert (= (and b!2211976 res!950689) b!2211977))

(declare-fun m!2653847 () Bool)

(assert (=> b!2211972 m!2653847))

(declare-fun m!2653849 () Bool)

(assert (=> b!2211976 m!2653849))

(declare-fun m!2653851 () Bool)

(assert (=> b!2211974 m!2653851))

(declare-fun m!2653853 () Bool)

(assert (=> b!2211973 m!2653853))

(declare-fun m!2653855 () Bool)

(assert (=> b!2211973 m!2653855))

(declare-fun m!2653857 () Bool)

(assert (=> b!2211977 m!2653857))

(assert (=> b!2211975 m!2653853))

(assert (=> b!2211975 m!2653855))

(assert (=> start!215482 d!661226))

(declare-fun d!661232 () Bool)

(declare-fun c!353516 () Bool)

(assert (=> d!661232 (= c!353516 ((_ is Node!8461) t!4663))))

(declare-fun e!1412622 () Bool)

(assert (=> d!661232 (= (inv!35030 t!4663) e!1412622)))

(declare-fun b!2211984 () Bool)

(assert (=> b!2211984 (= e!1412622 (inv!35032 t!4663))))

(declare-fun b!2211985 () Bool)

(declare-fun e!1412623 () Bool)

(assert (=> b!2211985 (= e!1412622 e!1412623)))

(declare-fun res!950698 () Bool)

(assert (=> b!2211985 (= res!950698 (not ((_ is Leaf!12391) t!4663)))))

(assert (=> b!2211985 (=> res!950698 e!1412623)))

(declare-fun b!2211986 () Bool)

(assert (=> b!2211986 (= e!1412623 (inv!35034 t!4663))))

(assert (= (and d!661232 c!353516) b!2211984))

(assert (= (and d!661232 (not c!353516)) b!2211985))

(assert (= (and b!2211985 (not res!950698)) b!2211986))

(declare-fun m!2653859 () Bool)

(assert (=> b!2211984 m!2653859))

(declare-fun m!2653863 () Bool)

(assert (=> b!2211986 m!2653863))

(assert (=> start!215482 d!661232))

(declare-fun d!661234 () Bool)

(declare-fun size!20179 (List!25948) Int)

(assert (=> d!661234 (= (inv!35031 (xs!11403 t!4663)) (<= (size!20179 (innerList!8521 (xs!11403 t!4663))) 2147483647))))

(declare-fun bs!451453 () Bool)

(assert (= bs!451453 d!661234))

(declare-fun m!2653879 () Bool)

(assert (=> bs!451453 m!2653879))

(assert (=> b!2211921 d!661234))

(declare-fun b!2212014 () Bool)

(declare-fun e!1412639 () Int)

(declare-fun call!132401 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!2212014 (= e!1412639 (+ 1 (ConcPrimitiveSize!24 (left!19894 (left!19894 t!4663))) (ConcPrimitiveSize!24 (right!20224 (left!19894 t!4663))) (BigIntAbs!0 (csize!17152 (left!19894 t!4663))) call!132401))))

(declare-fun b!2212015 () Bool)

(declare-fun e!1412638 () Int)

(assert (=> b!2212015 (= e!1412639 e!1412638)))

(declare-fun c!353531 () Bool)

(assert (=> b!2212015 (= c!353531 ((_ is Leaf!12391) (left!19894 t!4663)))))

(declare-fun d!661240 () Bool)

(declare-fun lt!826507 () Int)

(assert (=> d!661240 (>= lt!826507 0)))

(assert (=> d!661240 (= lt!826507 e!1412639)))

(declare-fun c!353530 () Bool)

(assert (=> d!661240 (= c!353530 ((_ is Node!8461) (left!19894 t!4663)))))

(assert (=> d!661240 (= (ConcPrimitiveSize!24 (left!19894 t!4663)) lt!826507)))

(declare-fun bm!132396 () Bool)

(assert (=> bm!132396 (= call!132401 (BigIntAbs!0 (ite c!353530 (cheight!8672 (left!19894 t!4663)) (csize!17153 (left!19894 t!4663)))))))

(declare-fun b!2212016 () Bool)

(assert (=> b!2212016 (= e!1412638 0)))

(declare-fun b!2212017 () Bool)

(declare-fun IArrayPrimitiveSize!23 (IArray!16927) Int)

(assert (=> b!2212017 (= e!1412638 (+ 1 (IArrayPrimitiveSize!23 (xs!11403 (left!19894 t!4663))) call!132401))))

(assert (= (and d!661240 c!353530) b!2212014))

(assert (= (and d!661240 (not c!353530)) b!2212015))

(assert (= (and b!2212015 c!353531) b!2212017))

(assert (= (and b!2212015 (not c!353531)) b!2212016))

(assert (= (or b!2212014 b!2212017) bm!132396))

(declare-fun m!2653899 () Bool)

(assert (=> b!2212014 m!2653899))

(declare-fun m!2653901 () Bool)

(assert (=> b!2212014 m!2653901))

(declare-fun m!2653903 () Bool)

(assert (=> b!2212014 m!2653903))

(declare-fun m!2653905 () Bool)

(assert (=> bm!132396 m!2653905))

(declare-fun m!2653907 () Bool)

(assert (=> b!2212017 m!2653907))

(assert (=> b!2211920 d!661240))

(declare-fun b!2212018 () Bool)

(declare-fun e!1412641 () Int)

(declare-fun call!132402 () Int)

(assert (=> b!2212018 (= e!1412641 (+ 1 (ConcPrimitiveSize!24 (left!19894 t!4663)) (ConcPrimitiveSize!24 (right!20224 t!4663)) (BigIntAbs!0 (csize!17152 t!4663)) call!132402))))

(declare-fun b!2212019 () Bool)

(declare-fun e!1412640 () Int)

(assert (=> b!2212019 (= e!1412641 e!1412640)))

(declare-fun c!353533 () Bool)

(assert (=> b!2212019 (= c!353533 ((_ is Leaf!12391) t!4663))))

(declare-fun d!661246 () Bool)

(declare-fun lt!826508 () Int)

(assert (=> d!661246 (>= lt!826508 0)))

(assert (=> d!661246 (= lt!826508 e!1412641)))

(declare-fun c!353532 () Bool)

(assert (=> d!661246 (= c!353532 ((_ is Node!8461) t!4663))))

(assert (=> d!661246 (= (ConcPrimitiveSize!24 t!4663) lt!826508)))

(declare-fun bm!132397 () Bool)

(assert (=> bm!132397 (= call!132402 (BigIntAbs!0 (ite c!353532 (cheight!8672 t!4663) (csize!17153 t!4663))))))

(declare-fun b!2212020 () Bool)

(assert (=> b!2212020 (= e!1412640 0)))

(declare-fun b!2212021 () Bool)

(assert (=> b!2212021 (= e!1412640 (+ 1 (IArrayPrimitiveSize!23 (xs!11403 t!4663)) call!132402))))

(assert (= (and d!661246 c!353532) b!2212018))

(assert (= (and d!661246 (not c!353532)) b!2212019))

(assert (= (and b!2212019 c!353533) b!2212021))

(assert (= (and b!2212019 (not c!353533)) b!2212020))

(assert (= (or b!2212018 b!2212021) bm!132397))

(assert (=> b!2212018 m!2653825))

(declare-fun m!2653909 () Bool)

(assert (=> b!2212018 m!2653909))

(declare-fun m!2653911 () Bool)

(assert (=> b!2212018 m!2653911))

(declare-fun m!2653913 () Bool)

(assert (=> bm!132397 m!2653913))

(declare-fun m!2653915 () Bool)

(assert (=> b!2212021 m!2653915))

(assert (=> b!2211920 d!661246))

(declare-fun d!661248 () Bool)

(declare-fun lt!826514 () Bool)

(declare-fun isEmpty!14812 (List!25948) Bool)

(declare-fun list!10035 (Conc!8461) List!25948)

(assert (=> d!661248 (= lt!826514 (isEmpty!14812 (list!10035 t!4663)))))

(declare-fun size!20180 (Conc!8461) Int)

(assert (=> d!661248 (= lt!826514 (= (size!20180 t!4663) 0))))

(assert (=> d!661248 (= (isEmpty!14811 t!4663) lt!826514)))

(declare-fun bs!451455 () Bool)

(assert (= bs!451455 d!661248))

(declare-fun m!2653923 () Bool)

(assert (=> bs!451455 m!2653923))

(assert (=> bs!451455 m!2653923))

(declare-fun m!2653925 () Bool)

(assert (=> bs!451455 m!2653925))

(declare-fun m!2653927 () Bool)

(assert (=> bs!451455 m!2653927))

(assert (=> b!2211918 d!661248))

(declare-fun tp!687416 () Bool)

(declare-fun e!1412651 () Bool)

(declare-fun tp!687415 () Bool)

(declare-fun b!2212038 () Bool)

(assert (=> b!2212038 (= e!1412651 (and (inv!35030 (left!19894 (left!19894 t!4663))) tp!687415 (inv!35030 (right!20224 (left!19894 t!4663))) tp!687416))))

(declare-fun b!2212040 () Bool)

(declare-fun e!1412650 () Bool)

(declare-fun tp!687417 () Bool)

(assert (=> b!2212040 (= e!1412650 tp!687417)))

(declare-fun b!2212039 () Bool)

(assert (=> b!2212039 (= e!1412651 (and (inv!35031 (xs!11403 (left!19894 t!4663))) e!1412650))))

(assert (=> b!2211922 (= tp!687400 (and (inv!35030 (left!19894 t!4663)) e!1412651))))

(assert (= (and b!2211922 ((_ is Node!8461) (left!19894 t!4663))) b!2212038))

(assert (= b!2212039 b!2212040))

(assert (= (and b!2211922 ((_ is Leaf!12391) (left!19894 t!4663))) b!2212039))

(declare-fun m!2653931 () Bool)

(assert (=> b!2212038 m!2653931))

(declare-fun m!2653933 () Bool)

(assert (=> b!2212038 m!2653933))

(declare-fun m!2653935 () Bool)

(assert (=> b!2212039 m!2653935))

(assert (=> b!2211922 m!2653815))

(declare-fun tp!687421 () Bool)

(declare-fun tp!687422 () Bool)

(declare-fun e!1412655 () Bool)

(declare-fun b!2212044 () Bool)

(assert (=> b!2212044 (= e!1412655 (and (inv!35030 (left!19894 (right!20224 t!4663))) tp!687421 (inv!35030 (right!20224 (right!20224 t!4663))) tp!687422))))

(declare-fun b!2212046 () Bool)

(declare-fun e!1412654 () Bool)

(declare-fun tp!687423 () Bool)

(assert (=> b!2212046 (= e!1412654 tp!687423)))

(declare-fun b!2212045 () Bool)

(assert (=> b!2212045 (= e!1412655 (and (inv!35031 (xs!11403 (right!20224 t!4663))) e!1412654))))

(assert (=> b!2211922 (= tp!687401 (and (inv!35030 (right!20224 t!4663)) e!1412655))))

(assert (= (and b!2211922 ((_ is Node!8461) (right!20224 t!4663))) b!2212044))

(assert (= b!2212045 b!2212046))

(assert (= (and b!2211922 ((_ is Leaf!12391) (right!20224 t!4663))) b!2212045))

(declare-fun m!2653937 () Bool)

(assert (=> b!2212044 m!2653937))

(declare-fun m!2653941 () Bool)

(assert (=> b!2212044 m!2653941))

(declare-fun m!2653945 () Bool)

(assert (=> b!2212045 m!2653945))

(assert (=> b!2211922 m!2653817))

(declare-fun b!2212056 () Bool)

(declare-fun e!1412660 () Bool)

(declare-fun tp_is_empty!9787 () Bool)

(declare-fun tp!687429 () Bool)

(assert (=> b!2212056 (= e!1412660 (and tp_is_empty!9787 tp!687429))))

(assert (=> b!2211919 (= tp!687402 e!1412660)))

(assert (= (and b!2211919 ((_ is Cons!25864) (innerList!8521 (xs!11403 t!4663)))) b!2212056))

(check-sat (not b!2211941) (not b!2211976) (not b!2211938) (not b!2212039) (not b!2211984) (not d!661234) tp_is_empty!9787 (not b!2211972) (not b!2211977) (not d!661248) (not b!2211974) (not b!2212056) (not b!2211936) (not b!2212017) (not b!2211973) (not b!2212040) (not b!2212038) (not b!2211986) (not bm!132397) (not b!2212044) (not b!2212021) (not b!2212046) (not b!2211975) (not b!2211939) (not b!2212014) (not b!2211922) (not bm!132396) (not b!2212045) (not b!2212018))
(check-sat)
(get-model)

(declare-fun d!661252 () Bool)

(declare-fun res!950706 () Bool)

(declare-fun e!1412666 () Bool)

(assert (=> d!661252 (=> (not res!950706) (not e!1412666))))

(assert (=> d!661252 (= res!950706 (= (csize!17152 (left!19894 t!4663)) (+ (size!20180 (left!19894 (left!19894 t!4663))) (size!20180 (right!20224 (left!19894 t!4663))))))))

(assert (=> d!661252 (= (inv!35032 (left!19894 t!4663)) e!1412666)))

(declare-fun b!2212066 () Bool)

(declare-fun res!950707 () Bool)

(assert (=> b!2212066 (=> (not res!950707) (not e!1412666))))

(assert (=> b!2212066 (= res!950707 (and (not (= (left!19894 (left!19894 t!4663)) Empty!8461)) (not (= (right!20224 (left!19894 t!4663)) Empty!8461))))))

(declare-fun b!2212067 () Bool)

(declare-fun res!950708 () Bool)

(assert (=> b!2212067 (=> (not res!950708) (not e!1412666))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2212067 (= res!950708 (= (cheight!8672 (left!19894 t!4663)) (+ (max!0 (height!1284 (left!19894 (left!19894 t!4663))) (height!1284 (right!20224 (left!19894 t!4663)))) 1)))))

(declare-fun b!2212068 () Bool)

(assert (=> b!2212068 (= e!1412666 (<= 0 (cheight!8672 (left!19894 t!4663))))))

(assert (= (and d!661252 res!950706) b!2212066))

(assert (= (and b!2212066 res!950707) b!2212067))

(assert (= (and b!2212067 res!950708) b!2212068))

(declare-fun m!2653955 () Bool)

(assert (=> d!661252 m!2653955))

(declare-fun m!2653957 () Bool)

(assert (=> d!661252 m!2653957))

(declare-fun m!2653959 () Bool)

(assert (=> b!2212067 m!2653959))

(declare-fun m!2653961 () Bool)

(assert (=> b!2212067 m!2653961))

(assert (=> b!2212067 m!2653959))

(assert (=> b!2212067 m!2653961))

(declare-fun m!2653963 () Bool)

(assert (=> b!2212067 m!2653963))

(assert (=> b!2211936 d!661252))

(assert (=> b!2211922 d!661220))

(assert (=> b!2211922 d!661224))

(declare-fun d!661254 () Bool)

(declare-fun lt!826517 () Int)

(assert (=> d!661254 (>= lt!826517 0)))

(declare-fun e!1412669 () Int)

(assert (=> d!661254 (= lt!826517 e!1412669)))

(declare-fun c!353536 () Bool)

(assert (=> d!661254 (= c!353536 ((_ is Nil!25864) (innerList!8521 (xs!11403 t!4663))))))

(assert (=> d!661254 (= (size!20179 (innerList!8521 (xs!11403 t!4663))) lt!826517)))

(declare-fun b!2212073 () Bool)

(assert (=> b!2212073 (= e!1412669 0)))

(declare-fun b!2212074 () Bool)

(assert (=> b!2212074 (= e!1412669 (+ 1 (size!20179 (t!198682 (innerList!8521 (xs!11403 t!4663))))))))

(assert (= (and d!661254 c!353536) b!2212073))

(assert (= (and d!661254 (not c!353536)) b!2212074))

(declare-fun m!2653965 () Bool)

(assert (=> b!2212074 m!2653965))

(assert (=> d!661234 d!661254))

(declare-fun d!661256 () Bool)

(assert (=> d!661256 (= (inv!35031 (xs!11403 (right!20224 t!4663))) (<= (size!20179 (innerList!8521 (xs!11403 (right!20224 t!4663)))) 2147483647))))

(declare-fun bs!451457 () Bool)

(assert (= bs!451457 d!661256))

(declare-fun m!2653967 () Bool)

(assert (=> bs!451457 m!2653967))

(assert (=> b!2212045 d!661256))

(declare-fun d!661258 () Bool)

(declare-fun lt!826520 () Int)

(assert (=> d!661258 (>= lt!826520 0)))

(declare-fun ListPrimitiveSize!148 (List!25948) Int)

(assert (=> d!661258 (= lt!826520 (+ 1 (ListPrimitiveSize!148 (innerList!8521 (xs!11403 (left!19894 t!4663))))))))

(assert (=> d!661258 (= (IArrayPrimitiveSize!23 (xs!11403 (left!19894 t!4663))) lt!826520)))

(declare-fun bs!451458 () Bool)

(assert (= bs!451458 d!661258))

(declare-fun m!2653969 () Bool)

(assert (=> bs!451458 m!2653969))

(assert (=> b!2212017 d!661258))

(declare-fun d!661260 () Bool)

(assert (=> d!661260 (= (inv!35031 (xs!11403 (left!19894 t!4663))) (<= (size!20179 (innerList!8521 (xs!11403 (left!19894 t!4663)))) 2147483647))))

(declare-fun bs!451459 () Bool)

(assert (= bs!451459 d!661260))

(declare-fun m!2653971 () Bool)

(assert (=> bs!451459 m!2653971))

(assert (=> b!2212039 d!661260))

(declare-fun d!661262 () Bool)

(assert (=> d!661262 (= (isEmpty!14812 (list!10035 t!4663)) ((_ is Nil!25864) (list!10035 t!4663)))))

(assert (=> d!661248 d!661262))

(declare-fun b!2212085 () Bool)

(declare-fun e!1412675 () List!25948)

(declare-fun list!10037 (IArray!16927) List!25948)

(assert (=> b!2212085 (= e!1412675 (list!10037 (xs!11403 t!4663)))))

(declare-fun b!2212084 () Bool)

(declare-fun e!1412674 () List!25948)

(assert (=> b!2212084 (= e!1412674 e!1412675)))

(declare-fun c!353542 () Bool)

(assert (=> b!2212084 (= c!353542 ((_ is Leaf!12391) t!4663))))

(declare-fun b!2212086 () Bool)

(declare-fun ++!6450 (List!25948 List!25948) List!25948)

(assert (=> b!2212086 (= e!1412675 (++!6450 (list!10035 (left!19894 t!4663)) (list!10035 (right!20224 t!4663))))))

(declare-fun b!2212083 () Bool)

(assert (=> b!2212083 (= e!1412674 Nil!25864)))

(declare-fun d!661264 () Bool)

(declare-fun c!353541 () Bool)

(assert (=> d!661264 (= c!353541 ((_ is Empty!8461) t!4663))))

(assert (=> d!661264 (= (list!10035 t!4663) e!1412674)))

(assert (= (and d!661264 c!353541) b!2212083))

(assert (= (and d!661264 (not c!353541)) b!2212084))

(assert (= (and b!2212084 c!353542) b!2212085))

(assert (= (and b!2212084 (not c!353542)) b!2212086))

(declare-fun m!2653973 () Bool)

(assert (=> b!2212085 m!2653973))

(declare-fun m!2653975 () Bool)

(assert (=> b!2212086 m!2653975))

(declare-fun m!2653977 () Bool)

(assert (=> b!2212086 m!2653977))

(assert (=> b!2212086 m!2653975))

(assert (=> b!2212086 m!2653977))

(declare-fun m!2653979 () Bool)

(assert (=> b!2212086 m!2653979))

(assert (=> d!661248 d!661264))

(declare-fun d!661266 () Bool)

(declare-fun lt!826523 () Int)

(assert (=> d!661266 (= lt!826523 (size!20179 (list!10035 t!4663)))))

(assert (=> d!661266 (= lt!826523 (ite ((_ is Empty!8461) t!4663) 0 (ite ((_ is Leaf!12391) t!4663) (csize!17153 t!4663) (csize!17152 t!4663))))))

(assert (=> d!661266 (= (size!20180 t!4663) lt!826523)))

(declare-fun bs!451460 () Bool)

(assert (= bs!451460 d!661266))

(assert (=> bs!451460 m!2653923))

(assert (=> bs!451460 m!2653923))

(declare-fun m!2653981 () Bool)

(assert (=> bs!451460 m!2653981))

(assert (=> d!661248 d!661266))

(declare-fun d!661268 () Bool)

(declare-fun lt!826524 () Bool)

(assert (=> d!661268 (= lt!826524 (isEmpty!14812 (list!10035 (right!20224 t!4663))))))

(assert (=> d!661268 (= lt!826524 (= (size!20180 (right!20224 t!4663)) 0))))

(assert (=> d!661268 (= (isEmpty!14811 (right!20224 t!4663)) lt!826524)))

(declare-fun bs!451461 () Bool)

(assert (= bs!451461 d!661268))

(assert (=> bs!451461 m!2653977))

(assert (=> bs!451461 m!2653977))

(declare-fun m!2653983 () Bool)

(assert (=> bs!451461 m!2653983))

(declare-fun m!2653985 () Bool)

(assert (=> bs!451461 m!2653985))

(assert (=> b!2211977 d!661268))

(declare-fun d!661270 () Bool)

(declare-fun c!353543 () Bool)

(assert (=> d!661270 (= c!353543 ((_ is Node!8461) (left!19894 (right!20224 t!4663))))))

(declare-fun e!1412676 () Bool)

(assert (=> d!661270 (= (inv!35030 (left!19894 (right!20224 t!4663))) e!1412676)))

(declare-fun b!2212087 () Bool)

(assert (=> b!2212087 (= e!1412676 (inv!35032 (left!19894 (right!20224 t!4663))))))

(declare-fun b!2212088 () Bool)

(declare-fun e!1412677 () Bool)

(assert (=> b!2212088 (= e!1412676 e!1412677)))

(declare-fun res!950709 () Bool)

(assert (=> b!2212088 (= res!950709 (not ((_ is Leaf!12391) (left!19894 (right!20224 t!4663)))))))

(assert (=> b!2212088 (=> res!950709 e!1412677)))

(declare-fun b!2212089 () Bool)

(assert (=> b!2212089 (= e!1412677 (inv!35034 (left!19894 (right!20224 t!4663))))))

(assert (= (and d!661270 c!353543) b!2212087))

(assert (= (and d!661270 (not c!353543)) b!2212088))

(assert (= (and b!2212088 (not res!950709)) b!2212089))

(declare-fun m!2653987 () Bool)

(assert (=> b!2212087 m!2653987))

(declare-fun m!2653989 () Bool)

(assert (=> b!2212089 m!2653989))

(assert (=> b!2212044 d!661270))

(declare-fun d!661272 () Bool)

(declare-fun c!353544 () Bool)

(assert (=> d!661272 (= c!353544 ((_ is Node!8461) (right!20224 (right!20224 t!4663))))))

(declare-fun e!1412678 () Bool)

(assert (=> d!661272 (= (inv!35030 (right!20224 (right!20224 t!4663))) e!1412678)))

(declare-fun b!2212090 () Bool)

(assert (=> b!2212090 (= e!1412678 (inv!35032 (right!20224 (right!20224 t!4663))))))

(declare-fun b!2212091 () Bool)

(declare-fun e!1412679 () Bool)

(assert (=> b!2212091 (= e!1412678 e!1412679)))

(declare-fun res!950710 () Bool)

(assert (=> b!2212091 (= res!950710 (not ((_ is Leaf!12391) (right!20224 (right!20224 t!4663)))))))

(assert (=> b!2212091 (=> res!950710 e!1412679)))

(declare-fun b!2212092 () Bool)

(assert (=> b!2212092 (= e!1412679 (inv!35034 (right!20224 (right!20224 t!4663))))))

(assert (= (and d!661272 c!353544) b!2212090))

(assert (= (and d!661272 (not c!353544)) b!2212091))

(assert (= (and b!2212091 (not res!950710)) b!2212092))

(declare-fun m!2653991 () Bool)

(assert (=> b!2212090 m!2653991))

(declare-fun m!2653993 () Bool)

(assert (=> b!2212092 m!2653993))

(assert (=> b!2212044 d!661272))

(declare-fun d!661274 () Bool)

(declare-fun lt!826525 () Bool)

(assert (=> d!661274 (= lt!826525 (isEmpty!14812 (list!10035 (left!19894 t!4663))))))

(assert (=> d!661274 (= lt!826525 (= (size!20180 (left!19894 t!4663)) 0))))

(assert (=> d!661274 (= (isEmpty!14811 (left!19894 t!4663)) lt!826525)))

(declare-fun bs!451462 () Bool)

(assert (= bs!451462 d!661274))

(assert (=> bs!451462 m!2653975))

(assert (=> bs!451462 m!2653975))

(declare-fun m!2653995 () Bool)

(assert (=> bs!451462 m!2653995))

(declare-fun m!2653997 () Bool)

(assert (=> bs!451462 m!2653997))

(assert (=> b!2211976 d!661274))

(declare-fun d!661276 () Bool)

(declare-fun c!353545 () Bool)

(assert (=> d!661276 (= c!353545 ((_ is Node!8461) (left!19894 (left!19894 t!4663))))))

(declare-fun e!1412680 () Bool)

(assert (=> d!661276 (= (inv!35030 (left!19894 (left!19894 t!4663))) e!1412680)))

(declare-fun b!2212093 () Bool)

(assert (=> b!2212093 (= e!1412680 (inv!35032 (left!19894 (left!19894 t!4663))))))

(declare-fun b!2212094 () Bool)

(declare-fun e!1412681 () Bool)

(assert (=> b!2212094 (= e!1412680 e!1412681)))

(declare-fun res!950711 () Bool)

(assert (=> b!2212094 (= res!950711 (not ((_ is Leaf!12391) (left!19894 (left!19894 t!4663)))))))

(assert (=> b!2212094 (=> res!950711 e!1412681)))

(declare-fun b!2212095 () Bool)

(assert (=> b!2212095 (= e!1412681 (inv!35034 (left!19894 (left!19894 t!4663))))))

(assert (= (and d!661276 c!353545) b!2212093))

(assert (= (and d!661276 (not c!353545)) b!2212094))

(assert (= (and b!2212094 (not res!950711)) b!2212095))

(declare-fun m!2653999 () Bool)

(assert (=> b!2212093 m!2653999))

(declare-fun m!2654001 () Bool)

(assert (=> b!2212095 m!2654001))

(assert (=> b!2212038 d!661276))

(declare-fun d!661278 () Bool)

(declare-fun c!353546 () Bool)

(assert (=> d!661278 (= c!353546 ((_ is Node!8461) (right!20224 (left!19894 t!4663))))))

(declare-fun e!1412682 () Bool)

(assert (=> d!661278 (= (inv!35030 (right!20224 (left!19894 t!4663))) e!1412682)))

(declare-fun b!2212096 () Bool)

(assert (=> b!2212096 (= e!1412682 (inv!35032 (right!20224 (left!19894 t!4663))))))

(declare-fun b!2212097 () Bool)

(declare-fun e!1412683 () Bool)

(assert (=> b!2212097 (= e!1412682 e!1412683)))

(declare-fun res!950712 () Bool)

(assert (=> b!2212097 (= res!950712 (not ((_ is Leaf!12391) (right!20224 (left!19894 t!4663)))))))

(assert (=> b!2212097 (=> res!950712 e!1412683)))

(declare-fun b!2212098 () Bool)

(assert (=> b!2212098 (= e!1412683 (inv!35034 (right!20224 (left!19894 t!4663))))))

(assert (= (and d!661278 c!353546) b!2212096))

(assert (= (and d!661278 (not c!353546)) b!2212097))

(assert (= (and b!2212097 (not res!950712)) b!2212098))

(declare-fun m!2654003 () Bool)

(assert (=> b!2212096 m!2654003))

(declare-fun m!2654005 () Bool)

(assert (=> b!2212098 m!2654005))

(assert (=> b!2212038 d!661278))

(declare-fun d!661280 () Bool)

(assert (=> d!661280 (= (BigIntAbs!0 (ite c!353530 (cheight!8672 (left!19894 t!4663)) (csize!17153 (left!19894 t!4663)))) (ite (>= (ite c!353530 (cheight!8672 (left!19894 t!4663)) (csize!17153 (left!19894 t!4663))) 0) (ite c!353530 (cheight!8672 (left!19894 t!4663)) (csize!17153 (left!19894 t!4663))) (- (ite c!353530 (cheight!8672 (left!19894 t!4663)) (csize!17153 (left!19894 t!4663))))))))

(assert (=> bm!132396 d!661280))

(declare-fun d!661282 () Bool)

(declare-fun res!950717 () Bool)

(declare-fun e!1412686 () Bool)

(assert (=> d!661282 (=> (not res!950717) (not e!1412686))))

(assert (=> d!661282 (= res!950717 (<= (size!20179 (list!10037 (xs!11403 (right!20224 t!4663)))) 512))))

(assert (=> d!661282 (= (inv!35034 (right!20224 t!4663)) e!1412686)))

(declare-fun b!2212103 () Bool)

(declare-fun res!950718 () Bool)

(assert (=> b!2212103 (=> (not res!950718) (not e!1412686))))

(assert (=> b!2212103 (= res!950718 (= (csize!17153 (right!20224 t!4663)) (size!20179 (list!10037 (xs!11403 (right!20224 t!4663))))))))

(declare-fun b!2212104 () Bool)

(assert (=> b!2212104 (= e!1412686 (and (> (csize!17153 (right!20224 t!4663)) 0) (<= (csize!17153 (right!20224 t!4663)) 512)))))

(assert (= (and d!661282 res!950717) b!2212103))

(assert (= (and b!2212103 res!950718) b!2212104))

(declare-fun m!2654007 () Bool)

(assert (=> d!661282 m!2654007))

(assert (=> d!661282 m!2654007))

(declare-fun m!2654009 () Bool)

(assert (=> d!661282 m!2654009))

(assert (=> b!2212103 m!2654007))

(assert (=> b!2212103 m!2654007))

(assert (=> b!2212103 m!2654009))

(assert (=> b!2211941 d!661282))

(declare-fun d!661284 () Bool)

(assert (=> d!661284 (= (height!1284 (left!19894 t!4663)) (ite ((_ is Empty!8461) (left!19894 t!4663)) 0 (ite ((_ is Leaf!12391) (left!19894 t!4663)) 1 (cheight!8672 (left!19894 t!4663)))))))

(assert (=> b!2211975 d!661284))

(declare-fun d!661286 () Bool)

(assert (=> d!661286 (= (height!1284 (right!20224 t!4663)) (ite ((_ is Empty!8461) (right!20224 t!4663)) 0 (ite ((_ is Leaf!12391) (right!20224 t!4663)) 1 (cheight!8672 (right!20224 t!4663)))))))

(assert (=> b!2211975 d!661286))

(declare-fun d!661288 () Bool)

(declare-fun res!950723 () Bool)

(declare-fun e!1412688 () Bool)

(assert (=> d!661288 (=> res!950723 e!1412688)))

(assert (=> d!661288 (= res!950723 (not ((_ is Node!8461) (left!19894 t!4663))))))

(assert (=> d!661288 (= (isBalanced!2619 (left!19894 t!4663)) e!1412688)))

(declare-fun b!2212105 () Bool)

(declare-fun res!950719 () Bool)

(declare-fun e!1412687 () Bool)

(assert (=> b!2212105 (=> (not res!950719) (not e!1412687))))

(assert (=> b!2212105 (= res!950719 (isBalanced!2619 (right!20224 (left!19894 t!4663))))))

(declare-fun b!2212106 () Bool)

(assert (=> b!2212106 (= e!1412688 e!1412687)))

(declare-fun res!950721 () Bool)

(assert (=> b!2212106 (=> (not res!950721) (not e!1412687))))

(assert (=> b!2212106 (= res!950721 (<= (- 1) (- (height!1284 (left!19894 (left!19894 t!4663))) (height!1284 (right!20224 (left!19894 t!4663))))))))

(declare-fun b!2212107 () Bool)

(declare-fun res!950724 () Bool)

(assert (=> b!2212107 (=> (not res!950724) (not e!1412687))))

(assert (=> b!2212107 (= res!950724 (isBalanced!2619 (left!19894 (left!19894 t!4663))))))

(declare-fun b!2212108 () Bool)

(declare-fun res!950720 () Bool)

(assert (=> b!2212108 (=> (not res!950720) (not e!1412687))))

(assert (=> b!2212108 (= res!950720 (<= (- (height!1284 (left!19894 (left!19894 t!4663))) (height!1284 (right!20224 (left!19894 t!4663)))) 1))))

(declare-fun b!2212109 () Bool)

(declare-fun res!950722 () Bool)

(assert (=> b!2212109 (=> (not res!950722) (not e!1412687))))

(assert (=> b!2212109 (= res!950722 (not (isEmpty!14811 (left!19894 (left!19894 t!4663)))))))

(declare-fun b!2212110 () Bool)

(assert (=> b!2212110 (= e!1412687 (not (isEmpty!14811 (right!20224 (left!19894 t!4663)))))))

(assert (= (and d!661288 (not res!950723)) b!2212106))

(assert (= (and b!2212106 res!950721) b!2212108))

(assert (= (and b!2212108 res!950720) b!2212107))

(assert (= (and b!2212107 res!950724) b!2212105))

(assert (= (and b!2212105 res!950719) b!2212109))

(assert (= (and b!2212109 res!950722) b!2212110))

(declare-fun m!2654011 () Bool)

(assert (=> b!2212105 m!2654011))

(declare-fun m!2654013 () Bool)

(assert (=> b!2212109 m!2654013))

(declare-fun m!2654015 () Bool)

(assert (=> b!2212107 m!2654015))

(assert (=> b!2212106 m!2653959))

(assert (=> b!2212106 m!2653961))

(declare-fun m!2654017 () Bool)

(assert (=> b!2212110 m!2654017))

(assert (=> b!2212108 m!2653959))

(assert (=> b!2212108 m!2653961))

(assert (=> b!2211974 d!661288))

(declare-fun b!2212111 () Bool)

(declare-fun e!1412690 () Int)

(declare-fun call!132403 () Int)

(assert (=> b!2212111 (= e!1412690 (+ 1 (ConcPrimitiveSize!24 (left!19894 (left!19894 (left!19894 t!4663)))) (ConcPrimitiveSize!24 (right!20224 (left!19894 (left!19894 t!4663)))) (BigIntAbs!0 (csize!17152 (left!19894 (left!19894 t!4663)))) call!132403))))

(declare-fun b!2212112 () Bool)

(declare-fun e!1412689 () Int)

(assert (=> b!2212112 (= e!1412690 e!1412689)))

(declare-fun c!353548 () Bool)

(assert (=> b!2212112 (= c!353548 ((_ is Leaf!12391) (left!19894 (left!19894 t!4663))))))

(declare-fun d!661290 () Bool)

(declare-fun lt!826526 () Int)

(assert (=> d!661290 (>= lt!826526 0)))

(assert (=> d!661290 (= lt!826526 e!1412690)))

(declare-fun c!353547 () Bool)

(assert (=> d!661290 (= c!353547 ((_ is Node!8461) (left!19894 (left!19894 t!4663))))))

(assert (=> d!661290 (= (ConcPrimitiveSize!24 (left!19894 (left!19894 t!4663))) lt!826526)))

(declare-fun bm!132398 () Bool)

(assert (=> bm!132398 (= call!132403 (BigIntAbs!0 (ite c!353547 (cheight!8672 (left!19894 (left!19894 t!4663))) (csize!17153 (left!19894 (left!19894 t!4663))))))))

(declare-fun b!2212113 () Bool)

(assert (=> b!2212113 (= e!1412689 0)))

(declare-fun b!2212114 () Bool)

(assert (=> b!2212114 (= e!1412689 (+ 1 (IArrayPrimitiveSize!23 (xs!11403 (left!19894 (left!19894 t!4663)))) call!132403))))

(assert (= (and d!661290 c!353547) b!2212111))

(assert (= (and d!661290 (not c!353547)) b!2212112))

(assert (= (and b!2212112 c!353548) b!2212114))

(assert (= (and b!2212112 (not c!353548)) b!2212113))

(assert (= (or b!2212111 b!2212114) bm!132398))

(declare-fun m!2654019 () Bool)

(assert (=> b!2212111 m!2654019))

(declare-fun m!2654021 () Bool)

(assert (=> b!2212111 m!2654021))

(declare-fun m!2654023 () Bool)

(assert (=> b!2212111 m!2654023))

(declare-fun m!2654025 () Bool)

(assert (=> bm!132398 m!2654025))

(declare-fun m!2654027 () Bool)

(assert (=> b!2212114 m!2654027))

(assert (=> b!2212014 d!661290))

(declare-fun b!2212115 () Bool)

(declare-fun e!1412692 () Int)

(declare-fun call!132404 () Int)

(assert (=> b!2212115 (= e!1412692 (+ 1 (ConcPrimitiveSize!24 (left!19894 (right!20224 (left!19894 t!4663)))) (ConcPrimitiveSize!24 (right!20224 (right!20224 (left!19894 t!4663)))) (BigIntAbs!0 (csize!17152 (right!20224 (left!19894 t!4663)))) call!132404))))

(declare-fun b!2212116 () Bool)

(declare-fun e!1412691 () Int)

(assert (=> b!2212116 (= e!1412692 e!1412691)))

(declare-fun c!353550 () Bool)

(assert (=> b!2212116 (= c!353550 ((_ is Leaf!12391) (right!20224 (left!19894 t!4663))))))

(declare-fun d!661294 () Bool)

(declare-fun lt!826527 () Int)

(assert (=> d!661294 (>= lt!826527 0)))

(assert (=> d!661294 (= lt!826527 e!1412692)))

(declare-fun c!353549 () Bool)

(assert (=> d!661294 (= c!353549 ((_ is Node!8461) (right!20224 (left!19894 t!4663))))))

(assert (=> d!661294 (= (ConcPrimitiveSize!24 (right!20224 (left!19894 t!4663))) lt!826527)))

(declare-fun bm!132399 () Bool)

(assert (=> bm!132399 (= call!132404 (BigIntAbs!0 (ite c!353549 (cheight!8672 (right!20224 (left!19894 t!4663))) (csize!17153 (right!20224 (left!19894 t!4663))))))))

(declare-fun b!2212117 () Bool)

(assert (=> b!2212117 (= e!1412691 0)))

(declare-fun b!2212118 () Bool)

(assert (=> b!2212118 (= e!1412691 (+ 1 (IArrayPrimitiveSize!23 (xs!11403 (right!20224 (left!19894 t!4663)))) call!132404))))

(assert (= (and d!661294 c!353549) b!2212115))

(assert (= (and d!661294 (not c!353549)) b!2212116))

(assert (= (and b!2212116 c!353550) b!2212118))

(assert (= (and b!2212116 (not c!353550)) b!2212117))

(assert (= (or b!2212115 b!2212118) bm!132399))

(declare-fun m!2654029 () Bool)

(assert (=> b!2212115 m!2654029))

(declare-fun m!2654031 () Bool)

(assert (=> b!2212115 m!2654031))

(declare-fun m!2654033 () Bool)

(assert (=> b!2212115 m!2654033))

(declare-fun m!2654035 () Bool)

(assert (=> bm!132399 m!2654035))

(declare-fun m!2654037 () Bool)

(assert (=> b!2212118 m!2654037))

(assert (=> b!2212014 d!661294))

(declare-fun d!661296 () Bool)

(assert (=> d!661296 (= (BigIntAbs!0 (csize!17152 (left!19894 t!4663))) (ite (>= (csize!17152 (left!19894 t!4663)) 0) (csize!17152 (left!19894 t!4663)) (- (csize!17152 (left!19894 t!4663)))))))

(assert (=> b!2212014 d!661296))

(declare-fun d!661298 () Bool)

(declare-fun res!950725 () Bool)

(declare-fun e!1412693 () Bool)

(assert (=> d!661298 (=> (not res!950725) (not e!1412693))))

(assert (=> d!661298 (= res!950725 (= (csize!17152 (right!20224 t!4663)) (+ (size!20180 (left!19894 (right!20224 t!4663))) (size!20180 (right!20224 (right!20224 t!4663))))))))

(assert (=> d!661298 (= (inv!35032 (right!20224 t!4663)) e!1412693)))

(declare-fun b!2212119 () Bool)

(declare-fun res!950726 () Bool)

(assert (=> b!2212119 (=> (not res!950726) (not e!1412693))))

(assert (=> b!2212119 (= res!950726 (and (not (= (left!19894 (right!20224 t!4663)) Empty!8461)) (not (= (right!20224 (right!20224 t!4663)) Empty!8461))))))

(declare-fun b!2212120 () Bool)

(declare-fun res!950727 () Bool)

(assert (=> b!2212120 (=> (not res!950727) (not e!1412693))))

(assert (=> b!2212120 (= res!950727 (= (cheight!8672 (right!20224 t!4663)) (+ (max!0 (height!1284 (left!19894 (right!20224 t!4663))) (height!1284 (right!20224 (right!20224 t!4663)))) 1)))))

(declare-fun b!2212121 () Bool)

(assert (=> b!2212121 (= e!1412693 (<= 0 (cheight!8672 (right!20224 t!4663))))))

(assert (= (and d!661298 res!950725) b!2212119))

(assert (= (and b!2212119 res!950726) b!2212120))

(assert (= (and b!2212120 res!950727) b!2212121))

(declare-fun m!2654039 () Bool)

(assert (=> d!661298 m!2654039))

(declare-fun m!2654041 () Bool)

(assert (=> d!661298 m!2654041))

(declare-fun m!2654043 () Bool)

(assert (=> b!2212120 m!2654043))

(declare-fun m!2654045 () Bool)

(assert (=> b!2212120 m!2654045))

(assert (=> b!2212120 m!2654043))

(assert (=> b!2212120 m!2654045))

(declare-fun m!2654047 () Bool)

(assert (=> b!2212120 m!2654047))

(assert (=> b!2211939 d!661298))

(assert (=> b!2211973 d!661284))

(assert (=> b!2211973 d!661286))

(declare-fun d!661300 () Bool)

(declare-fun res!950732 () Bool)

(declare-fun e!1412695 () Bool)

(assert (=> d!661300 (=> res!950732 e!1412695)))

(assert (=> d!661300 (= res!950732 (not ((_ is Node!8461) (right!20224 t!4663))))))

(assert (=> d!661300 (= (isBalanced!2619 (right!20224 t!4663)) e!1412695)))

(declare-fun b!2212122 () Bool)

(declare-fun res!950728 () Bool)

(declare-fun e!1412694 () Bool)

(assert (=> b!2212122 (=> (not res!950728) (not e!1412694))))

(assert (=> b!2212122 (= res!950728 (isBalanced!2619 (right!20224 (right!20224 t!4663))))))

(declare-fun b!2212123 () Bool)

(assert (=> b!2212123 (= e!1412695 e!1412694)))

(declare-fun res!950730 () Bool)

(assert (=> b!2212123 (=> (not res!950730) (not e!1412694))))

(assert (=> b!2212123 (= res!950730 (<= (- 1) (- (height!1284 (left!19894 (right!20224 t!4663))) (height!1284 (right!20224 (right!20224 t!4663))))))))

(declare-fun b!2212124 () Bool)

(declare-fun res!950733 () Bool)

(assert (=> b!2212124 (=> (not res!950733) (not e!1412694))))

(assert (=> b!2212124 (= res!950733 (isBalanced!2619 (left!19894 (right!20224 t!4663))))))

(declare-fun b!2212125 () Bool)

(declare-fun res!950729 () Bool)

(assert (=> b!2212125 (=> (not res!950729) (not e!1412694))))

(assert (=> b!2212125 (= res!950729 (<= (- (height!1284 (left!19894 (right!20224 t!4663))) (height!1284 (right!20224 (right!20224 t!4663)))) 1))))

(declare-fun b!2212126 () Bool)

(declare-fun res!950731 () Bool)

(assert (=> b!2212126 (=> (not res!950731) (not e!1412694))))

(assert (=> b!2212126 (= res!950731 (not (isEmpty!14811 (left!19894 (right!20224 t!4663)))))))

(declare-fun b!2212127 () Bool)

(assert (=> b!2212127 (= e!1412694 (not (isEmpty!14811 (right!20224 (right!20224 t!4663)))))))

(assert (= (and d!661300 (not res!950732)) b!2212123))

(assert (= (and b!2212123 res!950730) b!2212125))

(assert (= (and b!2212125 res!950729) b!2212124))

(assert (= (and b!2212124 res!950733) b!2212122))

(assert (= (and b!2212122 res!950728) b!2212126))

(assert (= (and b!2212126 res!950731) b!2212127))

(declare-fun m!2654049 () Bool)

(assert (=> b!2212122 m!2654049))

(declare-fun m!2654051 () Bool)

(assert (=> b!2212126 m!2654051))

(declare-fun m!2654053 () Bool)

(assert (=> b!2212124 m!2654053))

(assert (=> b!2212123 m!2654043))

(assert (=> b!2212123 m!2654045))

(declare-fun m!2654055 () Bool)

(assert (=> b!2212127 m!2654055))

(assert (=> b!2212125 m!2654043))

(assert (=> b!2212125 m!2654045))

(assert (=> b!2211972 d!661300))

(declare-fun d!661302 () Bool)

(declare-fun res!950734 () Bool)

(declare-fun e!1412696 () Bool)

(assert (=> d!661302 (=> (not res!950734) (not e!1412696))))

(assert (=> d!661302 (= res!950734 (<= (size!20179 (list!10037 (xs!11403 t!4663))) 512))))

(assert (=> d!661302 (= (inv!35034 t!4663) e!1412696)))

(declare-fun b!2212128 () Bool)

(declare-fun res!950735 () Bool)

(assert (=> b!2212128 (=> (not res!950735) (not e!1412696))))

(assert (=> b!2212128 (= res!950735 (= (csize!17153 t!4663) (size!20179 (list!10037 (xs!11403 t!4663)))))))

(declare-fun b!2212129 () Bool)

(assert (=> b!2212129 (= e!1412696 (and (> (csize!17153 t!4663) 0) (<= (csize!17153 t!4663) 512)))))

(assert (= (and d!661302 res!950734) b!2212128))

(assert (= (and b!2212128 res!950735) b!2212129))

(assert (=> d!661302 m!2653973))

(assert (=> d!661302 m!2653973))

(declare-fun m!2654057 () Bool)

(assert (=> d!661302 m!2654057))

(assert (=> b!2212128 m!2653973))

(assert (=> b!2212128 m!2653973))

(assert (=> b!2212128 m!2654057))

(assert (=> b!2211986 d!661302))

(declare-fun d!661304 () Bool)

(declare-fun res!950736 () Bool)

(declare-fun e!1412697 () Bool)

(assert (=> d!661304 (=> (not res!950736) (not e!1412697))))

(assert (=> d!661304 (= res!950736 (= (csize!17152 t!4663) (+ (size!20180 (left!19894 t!4663)) (size!20180 (right!20224 t!4663)))))))

(assert (=> d!661304 (= (inv!35032 t!4663) e!1412697)))

(declare-fun b!2212130 () Bool)

(declare-fun res!950737 () Bool)

(assert (=> b!2212130 (=> (not res!950737) (not e!1412697))))

(assert (=> b!2212130 (= res!950737 (and (not (= (left!19894 t!4663) Empty!8461)) (not (= (right!20224 t!4663) Empty!8461))))))

(declare-fun b!2212131 () Bool)

(declare-fun res!950738 () Bool)

(assert (=> b!2212131 (=> (not res!950738) (not e!1412697))))

(assert (=> b!2212131 (= res!950738 (= (cheight!8672 t!4663) (+ (max!0 (height!1284 (left!19894 t!4663)) (height!1284 (right!20224 t!4663))) 1)))))

(declare-fun b!2212132 () Bool)

(assert (=> b!2212132 (= e!1412697 (<= 0 (cheight!8672 t!4663)))))

(assert (= (and d!661304 res!950736) b!2212130))

(assert (= (and b!2212130 res!950737) b!2212131))

(assert (= (and b!2212131 res!950738) b!2212132))

(assert (=> d!661304 m!2653997))

(assert (=> d!661304 m!2653985))

(assert (=> b!2212131 m!2653853))

(assert (=> b!2212131 m!2653855))

(assert (=> b!2212131 m!2653853))

(assert (=> b!2212131 m!2653855))

(declare-fun m!2654061 () Bool)

(assert (=> b!2212131 m!2654061))

(assert (=> b!2211984 d!661304))

(declare-fun d!661308 () Bool)

(declare-fun lt!826531 () Int)

(assert (=> d!661308 (>= lt!826531 0)))

(assert (=> d!661308 (= lt!826531 (+ 1 (ListPrimitiveSize!148 (innerList!8521 (xs!11403 t!4663)))))))

(assert (=> d!661308 (= (IArrayPrimitiveSize!23 (xs!11403 t!4663)) lt!826531)))

(declare-fun bs!451464 () Bool)

(assert (= bs!451464 d!661308))

(declare-fun m!2654063 () Bool)

(assert (=> bs!451464 m!2654063))

(assert (=> b!2212021 d!661308))

(declare-fun d!661310 () Bool)

(assert (=> d!661310 (= (BigIntAbs!0 (ite c!353532 (cheight!8672 t!4663) (csize!17153 t!4663))) (ite (>= (ite c!353532 (cheight!8672 t!4663) (csize!17153 t!4663)) 0) (ite c!353532 (cheight!8672 t!4663) (csize!17153 t!4663)) (- (ite c!353532 (cheight!8672 t!4663) (csize!17153 t!4663)))))))

(assert (=> bm!132397 d!661310))

(assert (=> b!2212018 d!661240))

(declare-fun b!2212133 () Bool)

(declare-fun e!1412699 () Int)

(declare-fun call!132405 () Int)

(assert (=> b!2212133 (= e!1412699 (+ 1 (ConcPrimitiveSize!24 (left!19894 (right!20224 t!4663))) (ConcPrimitiveSize!24 (right!20224 (right!20224 t!4663))) (BigIntAbs!0 (csize!17152 (right!20224 t!4663))) call!132405))))

(declare-fun b!2212134 () Bool)

(declare-fun e!1412698 () Int)

(assert (=> b!2212134 (= e!1412699 e!1412698)))

(declare-fun c!353552 () Bool)

(assert (=> b!2212134 (= c!353552 ((_ is Leaf!12391) (right!20224 t!4663)))))

(declare-fun d!661312 () Bool)

(declare-fun lt!826532 () Int)

(assert (=> d!661312 (>= lt!826532 0)))

(assert (=> d!661312 (= lt!826532 e!1412699)))

(declare-fun c!353551 () Bool)

(assert (=> d!661312 (= c!353551 ((_ is Node!8461) (right!20224 t!4663)))))

(assert (=> d!661312 (= (ConcPrimitiveSize!24 (right!20224 t!4663)) lt!826532)))

(declare-fun bm!132400 () Bool)

(assert (=> bm!132400 (= call!132405 (BigIntAbs!0 (ite c!353551 (cheight!8672 (right!20224 t!4663)) (csize!17153 (right!20224 t!4663)))))))

(declare-fun b!2212135 () Bool)

(assert (=> b!2212135 (= e!1412698 0)))

(declare-fun b!2212136 () Bool)

(assert (=> b!2212136 (= e!1412698 (+ 1 (IArrayPrimitiveSize!23 (xs!11403 (right!20224 t!4663))) call!132405))))

(assert (= (and d!661312 c!353551) b!2212133))

(assert (= (and d!661312 (not c!353551)) b!2212134))

(assert (= (and b!2212134 c!353552) b!2212136))

(assert (= (and b!2212134 (not c!353552)) b!2212135))

(assert (= (or b!2212133 b!2212136) bm!132400))

(declare-fun m!2654065 () Bool)

(assert (=> b!2212133 m!2654065))

(declare-fun m!2654067 () Bool)

(assert (=> b!2212133 m!2654067))

(declare-fun m!2654069 () Bool)

(assert (=> b!2212133 m!2654069))

(declare-fun m!2654071 () Bool)

(assert (=> bm!132400 m!2654071))

(declare-fun m!2654073 () Bool)

(assert (=> b!2212136 m!2654073))

(assert (=> b!2212018 d!661312))

(declare-fun d!661314 () Bool)

(assert (=> d!661314 (= (BigIntAbs!0 (csize!17152 t!4663)) (ite (>= (csize!17152 t!4663) 0) (csize!17152 t!4663) (- (csize!17152 t!4663))))))

(assert (=> b!2212018 d!661314))

(declare-fun d!661316 () Bool)

(declare-fun res!950739 () Bool)

(declare-fun e!1412700 () Bool)

(assert (=> d!661316 (=> (not res!950739) (not e!1412700))))

(assert (=> d!661316 (= res!950739 (<= (size!20179 (list!10037 (xs!11403 (left!19894 t!4663)))) 512))))

(assert (=> d!661316 (= (inv!35034 (left!19894 t!4663)) e!1412700)))

(declare-fun b!2212137 () Bool)

(declare-fun res!950740 () Bool)

(assert (=> b!2212137 (=> (not res!950740) (not e!1412700))))

(assert (=> b!2212137 (= res!950740 (= (csize!17153 (left!19894 t!4663)) (size!20179 (list!10037 (xs!11403 (left!19894 t!4663))))))))

(declare-fun b!2212138 () Bool)

(assert (=> b!2212138 (= e!1412700 (and (> (csize!17153 (left!19894 t!4663)) 0) (<= (csize!17153 (left!19894 t!4663)) 512)))))

(assert (= (and d!661316 res!950739) b!2212137))

(assert (= (and b!2212137 res!950740) b!2212138))

(declare-fun m!2654075 () Bool)

(assert (=> d!661316 m!2654075))

(assert (=> d!661316 m!2654075))

(declare-fun m!2654077 () Bool)

(assert (=> d!661316 m!2654077))

(assert (=> b!2212137 m!2654075))

(assert (=> b!2212137 m!2654075))

(assert (=> b!2212137 m!2654077))

(assert (=> b!2211938 d!661316))

(declare-fun e!1412702 () Bool)

(declare-fun tp!687433 () Bool)

(declare-fun b!2212139 () Bool)

(declare-fun tp!687434 () Bool)

(assert (=> b!2212139 (= e!1412702 (and (inv!35030 (left!19894 (left!19894 (right!20224 t!4663)))) tp!687433 (inv!35030 (right!20224 (left!19894 (right!20224 t!4663)))) tp!687434))))

(declare-fun b!2212141 () Bool)

(declare-fun e!1412701 () Bool)

(declare-fun tp!687435 () Bool)

(assert (=> b!2212141 (= e!1412701 tp!687435)))

(declare-fun b!2212140 () Bool)

(assert (=> b!2212140 (= e!1412702 (and (inv!35031 (xs!11403 (left!19894 (right!20224 t!4663)))) e!1412701))))

(assert (=> b!2212044 (= tp!687421 (and (inv!35030 (left!19894 (right!20224 t!4663))) e!1412702))))

(assert (= (and b!2212044 ((_ is Node!8461) (left!19894 (right!20224 t!4663)))) b!2212139))

(assert (= b!2212140 b!2212141))

(assert (= (and b!2212044 ((_ is Leaf!12391) (left!19894 (right!20224 t!4663)))) b!2212140))

(declare-fun m!2654079 () Bool)

(assert (=> b!2212139 m!2654079))

(declare-fun m!2654081 () Bool)

(assert (=> b!2212139 m!2654081))

(declare-fun m!2654083 () Bool)

(assert (=> b!2212140 m!2654083))

(assert (=> b!2212044 m!2653937))

(declare-fun b!2212142 () Bool)

(declare-fun tp!687437 () Bool)

(declare-fun tp!687436 () Bool)

(declare-fun e!1412704 () Bool)

(assert (=> b!2212142 (= e!1412704 (and (inv!35030 (left!19894 (right!20224 (right!20224 t!4663)))) tp!687436 (inv!35030 (right!20224 (right!20224 (right!20224 t!4663)))) tp!687437))))

(declare-fun b!2212144 () Bool)

(declare-fun e!1412703 () Bool)

(declare-fun tp!687438 () Bool)

(assert (=> b!2212144 (= e!1412703 tp!687438)))

(declare-fun b!2212143 () Bool)

(assert (=> b!2212143 (= e!1412704 (and (inv!35031 (xs!11403 (right!20224 (right!20224 t!4663)))) e!1412703))))

(assert (=> b!2212044 (= tp!687422 (and (inv!35030 (right!20224 (right!20224 t!4663))) e!1412704))))

(assert (= (and b!2212044 ((_ is Node!8461) (right!20224 (right!20224 t!4663)))) b!2212142))

(assert (= b!2212143 b!2212144))

(assert (= (and b!2212044 ((_ is Leaf!12391) (right!20224 (right!20224 t!4663)))) b!2212143))

(declare-fun m!2654085 () Bool)

(assert (=> b!2212142 m!2654085))

(declare-fun m!2654087 () Bool)

(assert (=> b!2212142 m!2654087))

(declare-fun m!2654089 () Bool)

(assert (=> b!2212143 m!2654089))

(assert (=> b!2212044 m!2653941))

(declare-fun e!1412706 () Bool)

(declare-fun tp!687440 () Bool)

(declare-fun tp!687439 () Bool)

(declare-fun b!2212145 () Bool)

(assert (=> b!2212145 (= e!1412706 (and (inv!35030 (left!19894 (left!19894 (left!19894 t!4663)))) tp!687439 (inv!35030 (right!20224 (left!19894 (left!19894 t!4663)))) tp!687440))))

(declare-fun b!2212147 () Bool)

(declare-fun e!1412705 () Bool)

(declare-fun tp!687441 () Bool)

(assert (=> b!2212147 (= e!1412705 tp!687441)))

(declare-fun b!2212146 () Bool)

(assert (=> b!2212146 (= e!1412706 (and (inv!35031 (xs!11403 (left!19894 (left!19894 t!4663)))) e!1412705))))

(assert (=> b!2212038 (= tp!687415 (and (inv!35030 (left!19894 (left!19894 t!4663))) e!1412706))))

(assert (= (and b!2212038 ((_ is Node!8461) (left!19894 (left!19894 t!4663)))) b!2212145))

(assert (= b!2212146 b!2212147))

(assert (= (and b!2212038 ((_ is Leaf!12391) (left!19894 (left!19894 t!4663)))) b!2212146))

(declare-fun m!2654091 () Bool)

(assert (=> b!2212145 m!2654091))

(declare-fun m!2654093 () Bool)

(assert (=> b!2212145 m!2654093))

(declare-fun m!2654095 () Bool)

(assert (=> b!2212146 m!2654095))

(assert (=> b!2212038 m!2653931))

(declare-fun e!1412708 () Bool)

(declare-fun tp!687443 () Bool)

(declare-fun tp!687442 () Bool)

(declare-fun b!2212148 () Bool)

(assert (=> b!2212148 (= e!1412708 (and (inv!35030 (left!19894 (right!20224 (left!19894 t!4663)))) tp!687442 (inv!35030 (right!20224 (right!20224 (left!19894 t!4663)))) tp!687443))))

(declare-fun b!2212150 () Bool)

(declare-fun e!1412707 () Bool)

(declare-fun tp!687444 () Bool)

(assert (=> b!2212150 (= e!1412707 tp!687444)))

(declare-fun b!2212149 () Bool)

(assert (=> b!2212149 (= e!1412708 (and (inv!35031 (xs!11403 (right!20224 (left!19894 t!4663)))) e!1412707))))

(assert (=> b!2212038 (= tp!687416 (and (inv!35030 (right!20224 (left!19894 t!4663))) e!1412708))))

(assert (= (and b!2212038 ((_ is Node!8461) (right!20224 (left!19894 t!4663)))) b!2212148))

(assert (= b!2212149 b!2212150))

(assert (= (and b!2212038 ((_ is Leaf!12391) (right!20224 (left!19894 t!4663)))) b!2212149))

(declare-fun m!2654097 () Bool)

(assert (=> b!2212148 m!2654097))

(declare-fun m!2654099 () Bool)

(assert (=> b!2212148 m!2654099))

(declare-fun m!2654101 () Bool)

(assert (=> b!2212149 m!2654101))

(assert (=> b!2212038 m!2653933))

(declare-fun b!2212157 () Bool)

(declare-fun e!1412711 () Bool)

(declare-fun tp!687445 () Bool)

(assert (=> b!2212157 (= e!1412711 (and tp_is_empty!9787 tp!687445))))

(assert (=> b!2212056 (= tp!687429 e!1412711)))

(assert (= (and b!2212056 ((_ is Cons!25864) (t!198682 (innerList!8521 (xs!11403 t!4663))))) b!2212157))

(declare-fun b!2212158 () Bool)

(declare-fun e!1412712 () Bool)

(declare-fun tp!687446 () Bool)

(assert (=> b!2212158 (= e!1412712 (and tp_is_empty!9787 tp!687446))))

(assert (=> b!2212046 (= tp!687423 e!1412712)))

(assert (= (and b!2212046 ((_ is Cons!25864) (innerList!8521 (xs!11403 (right!20224 t!4663))))) b!2212158))

(declare-fun b!2212159 () Bool)

(declare-fun e!1412713 () Bool)

(declare-fun tp!687447 () Bool)

(assert (=> b!2212159 (= e!1412713 (and tp_is_empty!9787 tp!687447))))

(assert (=> b!2212040 (= tp!687417 e!1412713)))

(assert (= (and b!2212040 ((_ is Cons!25864) (innerList!8521 (xs!11403 (left!19894 t!4663))))) b!2212159))

(check-sat (not b!2212111) (not b!2212106) (not b!2212122) (not b!2212107) (not b!2212087) (not b!2212143) (not b!2212074) (not bm!132399) (not b!2212148) (not b!2212126) (not d!661298) (not b!2212095) (not b!2212092) (not b!2212136) (not d!661308) (not b!2212145) (not b!2212139) (not d!661316) (not b!2212109) (not b!2212114) (not b!2212085) (not b!2212038) (not d!661282) (not b!2212110) (not b!2212141) (not b!2212131) (not b!2212044) (not b!2212142) (not b!2212157) (not b!2212105) (not b!2212127) (not d!661260) (not b!2212123) (not b!2212144) (not b!2212158) (not b!2212125) (not b!2212108) (not d!661268) (not b!2212124) (not d!661266) (not b!2212103) (not bm!132400) (not b!2212089) (not b!2212093) (not bm!132398) (not d!661274) (not b!2212137) (not b!2212150) (not b!2212115) (not b!2212090) (not d!661304) (not b!2212128) tp_is_empty!9787 (not d!661302) (not d!661252) (not b!2212086) (not b!2212098) (not b!2212096) (not b!2212147) (not b!2212118) (not b!2212140) (not b!2212146) (not b!2212133) (not b!2212149) (not b!2212159) (not b!2212120) (not d!661258) (not d!661256) (not b!2212067))
(check-sat)
