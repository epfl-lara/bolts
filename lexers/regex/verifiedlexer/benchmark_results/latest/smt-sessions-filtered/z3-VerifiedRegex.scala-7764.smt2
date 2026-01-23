; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407858 () Bool)

(assert start!407858)

(declare-fun b_free!126669 () Bool)

(declare-fun b_next!127373 () Bool)

(assert (=> start!407858 (= b_free!126669 (not b_next!127373))))

(declare-fun tp!1306412 () Bool)

(declare-fun b_and!337535 () Bool)

(assert (=> start!407858 (= tp!1306412 b_and!337535)))

(declare-fun b!4256988 () Bool)

(declare-fun e!2644022 () Bool)

(declare-datatypes ((T!79350 0))(
  ( (T!79351 (val!15217 Int)) )
))
(declare-datatypes ((List!47346 0))(
  ( (Nil!47222) (Cons!47222 (h!52642 T!79350) (t!352959 List!47346)) )
))
(declare-datatypes ((IArray!28465 0))(
  ( (IArray!28466 (innerList!14290 List!47346)) )
))
(declare-datatypes ((Conc!14230 0))(
  ( (Node!14230 (left!35002 Conc!14230) (right!35332 Conc!14230) (csize!28690 Int) (cheight!14441 Int)) (Leaf!21995 (xs!17536 IArray!28465) (csize!28691 Int)) (Empty!14230) )
))
(declare-fun t!4386 () Conc!14230)

(declare-fun f!428 () Int)

(declare-datatypes ((B!2805 0))(
  ( (B!2806 (val!15218 Int)) )
))
(declare-datatypes ((List!47347 0))(
  ( (Nil!47223) (Cons!47223 (h!52643 B!2805) (t!352960 List!47347)) )
))
(declare-datatypes ((IArray!28467 0))(
  ( (IArray!28468 (innerList!14291 List!47347)) )
))
(declare-datatypes ((Conc!14231 0))(
  ( (Node!14231 (left!35003 Conc!14231) (right!35333 Conc!14231) (csize!28692 Int) (cheight!14442 Int)) (Leaf!21996 (xs!17537 IArray!28467) (csize!28693 Int)) (Empty!14231) )
))
(declare-fun inv!62076 (Conc!14231) Bool)

(declare-fun map!9646 (IArray!28465 Int) IArray!28467)

(assert (=> b!4256988 (= e!2644022 (not (inv!62076 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))))))

(declare-fun b!4256989 () Bool)

(declare-fun e!2644024 () Bool)

(declare-fun tp!1306410 () Bool)

(assert (=> b!4256989 (= e!2644024 tp!1306410)))

(declare-fun b!4256990 () Bool)

(declare-fun res!1749956 () Bool)

(assert (=> b!4256990 (=> (not res!1749956) (not e!2644022))))

(get-info :version)

(assert (=> b!4256990 (= res!1749956 (and (not ((_ is Empty!14230) t!4386)) ((_ is Leaf!21995) t!4386)))))

(declare-fun b!4256992 () Bool)

(declare-fun tp!1306411 () Bool)

(declare-fun e!2644023 () Bool)

(declare-fun tp!1306409 () Bool)

(declare-fun inv!62077 (Conc!14230) Bool)

(assert (=> b!4256992 (= e!2644023 (and (inv!62077 (left!35002 t!4386)) tp!1306411 (inv!62077 (right!35332 t!4386)) tp!1306409))))

(declare-fun res!1749957 () Bool)

(assert (=> start!407858 (=> (not res!1749957) (not e!2644022))))

(declare-fun isBalanced!3790 (Conc!14230) Bool)

(assert (=> start!407858 (= res!1749957 (isBalanced!3790 t!4386))))

(assert (=> start!407858 e!2644022))

(assert (=> start!407858 (and (inv!62077 t!4386) e!2644023)))

(assert (=> start!407858 tp!1306412))

(declare-fun b!4256991 () Bool)

(declare-fun inv!62078 (IArray!28465) Bool)

(assert (=> b!4256991 (= e!2644023 (and (inv!62078 (xs!17536 t!4386)) e!2644024))))

(assert (= (and start!407858 res!1749957) b!4256990))

(assert (= (and b!4256990 res!1749956) b!4256988))

(assert (= (and start!407858 ((_ is Node!14230) t!4386)) b!4256992))

(assert (= b!4256991 b!4256989))

(assert (= (and start!407858 ((_ is Leaf!21995) t!4386)) b!4256991))

(declare-fun m!4842137 () Bool)

(assert (=> b!4256988 m!4842137))

(declare-fun m!4842139 () Bool)

(assert (=> b!4256988 m!4842139))

(declare-fun m!4842141 () Bool)

(assert (=> b!4256992 m!4842141))

(declare-fun m!4842143 () Bool)

(assert (=> b!4256992 m!4842143))

(declare-fun m!4842145 () Bool)

(assert (=> start!407858 m!4842145))

(declare-fun m!4842147 () Bool)

(assert (=> start!407858 m!4842147))

(declare-fun m!4842149 () Bool)

(assert (=> b!4256991 m!4842149))

(check-sat (not b!4256988) (not b!4256989) (not b_next!127373) (not b!4256992) (not b!4256991) (not start!407858) b_and!337535)
(check-sat b_and!337535 (not b_next!127373))
(get-model)

(declare-fun d!1251751 () Bool)

(declare-fun c!722766 () Bool)

(assert (=> d!1251751 (= c!722766 ((_ is Node!14231) (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))))

(declare-fun e!2644033 () Bool)

(assert (=> d!1251751 (= (inv!62076 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))) e!2644033)))

(declare-fun b!4257005 () Bool)

(declare-fun inv!62079 (Conc!14231) Bool)

(assert (=> b!4257005 (= e!2644033 (inv!62079 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))))

(declare-fun b!4257006 () Bool)

(declare-fun e!2644034 () Bool)

(assert (=> b!4257006 (= e!2644033 e!2644034)))

(declare-fun res!1749962 () Bool)

(assert (=> b!4257006 (= res!1749962 (not ((_ is Leaf!21996) (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))))))

(assert (=> b!4257006 (=> res!1749962 e!2644034)))

(declare-fun b!4257007 () Bool)

(declare-fun inv!62081 (Conc!14231) Bool)

(assert (=> b!4257007 (= e!2644034 (inv!62081 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))))

(assert (= (and d!1251751 c!722766) b!4257005))

(assert (= (and d!1251751 (not c!722766)) b!4257006))

(assert (= (and b!4257006 (not res!1749962)) b!4257007))

(declare-fun m!4842153 () Bool)

(assert (=> b!4257005 m!4842153))

(declare-fun m!4842155 () Bool)

(assert (=> b!4257007 m!4842155))

(assert (=> b!4256988 d!1251751))

(declare-fun d!1251755 () Bool)

(declare-fun lt!1509895 () IArray!28467)

(declare-fun map!9647 (List!47346 Int) List!47347)

(declare-fun list!17030 (IArray!28465) List!47346)

(assert (=> d!1251755 (= lt!1509895 (IArray!28468 (map!9647 (list!17030 (xs!17536 t!4386)) f!428)))))

(declare-fun choose!25973 (IArray!28465 Int) IArray!28467)

(assert (=> d!1251755 (= lt!1509895 (choose!25973 (xs!17536 t!4386) f!428))))

(assert (=> d!1251755 (= (map!9646 (xs!17536 t!4386) f!428) lt!1509895)))

(declare-fun bs!598845 () Bool)

(assert (= bs!598845 d!1251755))

(declare-fun m!4842161 () Bool)

(assert (=> bs!598845 m!4842161))

(assert (=> bs!598845 m!4842161))

(declare-fun m!4842163 () Bool)

(assert (=> bs!598845 m!4842163))

(declare-fun m!4842165 () Bool)

(assert (=> bs!598845 m!4842165))

(assert (=> b!4256988 d!1251755))

(declare-fun d!1251759 () Bool)

(declare-fun c!722770 () Bool)

(assert (=> d!1251759 (= c!722770 ((_ is Node!14230) (left!35002 t!4386)))))

(declare-fun e!2644041 () Bool)

(assert (=> d!1251759 (= (inv!62077 (left!35002 t!4386)) e!2644041)))

(declare-fun b!4257017 () Bool)

(declare-fun inv!62083 (Conc!14230) Bool)

(assert (=> b!4257017 (= e!2644041 (inv!62083 (left!35002 t!4386)))))

(declare-fun b!4257018 () Bool)

(declare-fun e!2644042 () Bool)

(assert (=> b!4257018 (= e!2644041 e!2644042)))

(declare-fun res!1749966 () Bool)

(assert (=> b!4257018 (= res!1749966 (not ((_ is Leaf!21995) (left!35002 t!4386))))))

(assert (=> b!4257018 (=> res!1749966 e!2644042)))

(declare-fun b!4257019 () Bool)

(declare-fun inv!62084 (Conc!14230) Bool)

(assert (=> b!4257019 (= e!2644042 (inv!62084 (left!35002 t!4386)))))

(assert (= (and d!1251759 c!722770) b!4257017))

(assert (= (and d!1251759 (not c!722770)) b!4257018))

(assert (= (and b!4257018 (not res!1749966)) b!4257019))

(declare-fun m!4842173 () Bool)

(assert (=> b!4257017 m!4842173))

(declare-fun m!4842175 () Bool)

(assert (=> b!4257019 m!4842175))

(assert (=> b!4256992 d!1251759))

(declare-fun d!1251763 () Bool)

(declare-fun c!722771 () Bool)

(assert (=> d!1251763 (= c!722771 ((_ is Node!14230) (right!35332 t!4386)))))

(declare-fun e!2644047 () Bool)

(assert (=> d!1251763 (= (inv!62077 (right!35332 t!4386)) e!2644047)))

(declare-fun b!4257022 () Bool)

(assert (=> b!4257022 (= e!2644047 (inv!62083 (right!35332 t!4386)))))

(declare-fun b!4257023 () Bool)

(declare-fun e!2644048 () Bool)

(assert (=> b!4257023 (= e!2644047 e!2644048)))

(declare-fun res!1749971 () Bool)

(assert (=> b!4257023 (= res!1749971 (not ((_ is Leaf!21995) (right!35332 t!4386))))))

(assert (=> b!4257023 (=> res!1749971 e!2644048)))

(declare-fun b!4257024 () Bool)

(assert (=> b!4257024 (= e!2644048 (inv!62084 (right!35332 t!4386)))))

(assert (= (and d!1251763 c!722771) b!4257022))

(assert (= (and d!1251763 (not c!722771)) b!4257023))

(assert (= (and b!4257023 (not res!1749971)) b!4257024))

(declare-fun m!4842177 () Bool)

(assert (=> b!4257022 m!4842177))

(declare-fun m!4842179 () Bool)

(assert (=> b!4257024 m!4842179))

(assert (=> b!4256992 d!1251763))

(declare-fun b!4257059 () Bool)

(declare-fun res!1750004 () Bool)

(declare-fun e!2644059 () Bool)

(assert (=> b!4257059 (=> (not res!1750004) (not e!2644059))))

(assert (=> b!4257059 (= res!1750004 (isBalanced!3790 (left!35002 t!4386)))))

(declare-fun b!4257060 () Bool)

(declare-fun e!2644060 () Bool)

(assert (=> b!4257060 (= e!2644060 e!2644059)))

(declare-fun res!1750002 () Bool)

(assert (=> b!4257060 (=> (not res!1750002) (not e!2644059))))

(declare-fun height!1854 (Conc!14230) Int)

(assert (=> b!4257060 (= res!1750002 (<= (- 1) (- (height!1854 (left!35002 t!4386)) (height!1854 (right!35332 t!4386)))))))

(declare-fun b!4257061 () Bool)

(declare-fun res!1750005 () Bool)

(assert (=> b!4257061 (=> (not res!1750005) (not e!2644059))))

(declare-fun isEmpty!27955 (Conc!14230) Bool)

(assert (=> b!4257061 (= res!1750005 (not (isEmpty!27955 (left!35002 t!4386))))))

(declare-fun b!4257062 () Bool)

(declare-fun res!1750001 () Bool)

(assert (=> b!4257062 (=> (not res!1750001) (not e!2644059))))

(assert (=> b!4257062 (= res!1750001 (<= (- (height!1854 (left!35002 t!4386)) (height!1854 (right!35332 t!4386))) 1))))

(declare-fun d!1251765 () Bool)

(declare-fun res!1750000 () Bool)

(assert (=> d!1251765 (=> res!1750000 e!2644060)))

(assert (=> d!1251765 (= res!1750000 (not ((_ is Node!14230) t!4386)))))

(assert (=> d!1251765 (= (isBalanced!3790 t!4386) e!2644060)))

(declare-fun b!4257063 () Bool)

(assert (=> b!4257063 (= e!2644059 (not (isEmpty!27955 (right!35332 t!4386))))))

(declare-fun b!4257064 () Bool)

(declare-fun res!1750003 () Bool)

(assert (=> b!4257064 (=> (not res!1750003) (not e!2644059))))

(assert (=> b!4257064 (= res!1750003 (isBalanced!3790 (right!35332 t!4386)))))

(assert (= (and d!1251765 (not res!1750000)) b!4257060))

(assert (= (and b!4257060 res!1750002) b!4257062))

(assert (= (and b!4257062 res!1750001) b!4257059))

(assert (= (and b!4257059 res!1750004) b!4257064))

(assert (= (and b!4257064 res!1750003) b!4257061))

(assert (= (and b!4257061 res!1750005) b!4257063))

(declare-fun m!4842193 () Bool)

(assert (=> b!4257062 m!4842193))

(declare-fun m!4842195 () Bool)

(assert (=> b!4257062 m!4842195))

(declare-fun m!4842197 () Bool)

(assert (=> b!4257063 m!4842197))

(assert (=> b!4257060 m!4842193))

(assert (=> b!4257060 m!4842195))

(declare-fun m!4842203 () Bool)

(assert (=> b!4257059 m!4842203))

(declare-fun m!4842205 () Bool)

(assert (=> b!4257064 m!4842205))

(declare-fun m!4842207 () Bool)

(assert (=> b!4257061 m!4842207))

(assert (=> start!407858 d!1251765))

(declare-fun d!1251771 () Bool)

(declare-fun c!722776 () Bool)

(assert (=> d!1251771 (= c!722776 ((_ is Node!14230) t!4386))))

(declare-fun e!2644065 () Bool)

(assert (=> d!1251771 (= (inv!62077 t!4386) e!2644065)))

(declare-fun b!4257071 () Bool)

(assert (=> b!4257071 (= e!2644065 (inv!62083 t!4386))))

(declare-fun b!4257072 () Bool)

(declare-fun e!2644066 () Bool)

(assert (=> b!4257072 (= e!2644065 e!2644066)))

(declare-fun res!1750008 () Bool)

(assert (=> b!4257072 (= res!1750008 (not ((_ is Leaf!21995) t!4386)))))

(assert (=> b!4257072 (=> res!1750008 e!2644066)))

(declare-fun b!4257073 () Bool)

(assert (=> b!4257073 (= e!2644066 (inv!62084 t!4386))))

(assert (= (and d!1251771 c!722776) b!4257071))

(assert (= (and d!1251771 (not c!722776)) b!4257072))

(assert (= (and b!4257072 (not res!1750008)) b!4257073))

(declare-fun m!4842213 () Bool)

(assert (=> b!4257071 m!4842213))

(declare-fun m!4842215 () Bool)

(assert (=> b!4257073 m!4842215))

(assert (=> start!407858 d!1251771))

(declare-fun d!1251775 () Bool)

(declare-fun size!34566 (List!47346) Int)

(assert (=> d!1251775 (= (inv!62078 (xs!17536 t!4386)) (<= (size!34566 (innerList!14290 (xs!17536 t!4386))) 2147483647))))

(declare-fun bs!598847 () Bool)

(assert (= bs!598847 d!1251775))

(declare-fun m!4842221 () Bool)

(assert (=> bs!598847 m!4842221))

(assert (=> b!4256991 d!1251775))

(declare-fun b!4257094 () Bool)

(declare-fun e!2644078 () Bool)

(declare-fun tp_is_empty!22841 () Bool)

(declare-fun tp!1306424 () Bool)

(assert (=> b!4257094 (= e!2644078 (and tp_is_empty!22841 tp!1306424))))

(assert (=> b!4256989 (= tp!1306410 e!2644078)))

(assert (= (and b!4256989 ((_ is Cons!47222) (innerList!14290 (xs!17536 t!4386)))) b!4257094))

(declare-fun e!2644088 () Bool)

(declare-fun tp!1306437 () Bool)

(declare-fun tp!1306439 () Bool)

(declare-fun b!4257109 () Bool)

(assert (=> b!4257109 (= e!2644088 (and (inv!62077 (left!35002 (left!35002 t!4386))) tp!1306437 (inv!62077 (right!35332 (left!35002 t!4386))) tp!1306439))))

(declare-fun b!4257111 () Bool)

(declare-fun e!2644087 () Bool)

(declare-fun tp!1306438 () Bool)

(assert (=> b!4257111 (= e!2644087 tp!1306438)))

(declare-fun b!4257110 () Bool)

(assert (=> b!4257110 (= e!2644088 (and (inv!62078 (xs!17536 (left!35002 t!4386))) e!2644087))))

(assert (=> b!4256992 (= tp!1306411 (and (inv!62077 (left!35002 t!4386)) e!2644088))))

(assert (= (and b!4256992 ((_ is Node!14230) (left!35002 t!4386))) b!4257109))

(assert (= b!4257110 b!4257111))

(assert (= (and b!4256992 ((_ is Leaf!21995) (left!35002 t!4386))) b!4257110))

(declare-fun m!4842235 () Bool)

(assert (=> b!4257109 m!4842235))

(declare-fun m!4842237 () Bool)

(assert (=> b!4257109 m!4842237))

(declare-fun m!4842239 () Bool)

(assert (=> b!4257110 m!4842239))

(assert (=> b!4256992 m!4842141))

(declare-fun tp!1306440 () Bool)

(declare-fun e!2644090 () Bool)

(declare-fun b!4257112 () Bool)

(declare-fun tp!1306442 () Bool)

(assert (=> b!4257112 (= e!2644090 (and (inv!62077 (left!35002 (right!35332 t!4386))) tp!1306440 (inv!62077 (right!35332 (right!35332 t!4386))) tp!1306442))))

(declare-fun b!4257114 () Bool)

(declare-fun e!2644089 () Bool)

(declare-fun tp!1306441 () Bool)

(assert (=> b!4257114 (= e!2644089 tp!1306441)))

(declare-fun b!4257113 () Bool)

(assert (=> b!4257113 (= e!2644090 (and (inv!62078 (xs!17536 (right!35332 t!4386))) e!2644089))))

(assert (=> b!4256992 (= tp!1306409 (and (inv!62077 (right!35332 t!4386)) e!2644090))))

(assert (= (and b!4256992 ((_ is Node!14230) (right!35332 t!4386))) b!4257112))

(assert (= b!4257113 b!4257114))

(assert (= (and b!4256992 ((_ is Leaf!21995) (right!35332 t!4386))) b!4257113))

(declare-fun m!4842241 () Bool)

(assert (=> b!4257112 m!4842241))

(declare-fun m!4842243 () Bool)

(assert (=> b!4257112 m!4842243))

(declare-fun m!4842245 () Bool)

(assert (=> b!4257113 m!4842245))

(assert (=> b!4256992 m!4842143))

(check-sat b_and!337535 (not b!4257114) (not d!1251775) (not b!4257024) (not b!4257073) (not b!4257113) (not b!4257064) (not b!4257017) (not b!4257063) (not b_next!127373) (not b!4257060) tp_is_empty!22841 (not b!4257071) (not b!4257111) (not b!4257094) (not b!4257022) (not b!4257059) (not d!1251755) (not b!4257062) (not b!4257007) (not b!4257109) (not b!4256992) (not b!4257061) (not b!4257112) (not b!4257110) (not b!4257019) (not b!4257005))
(check-sat b_and!337535 (not b_next!127373))
(get-model)

(declare-fun d!1251777 () Bool)

(declare-fun res!1750016 () Bool)

(declare-fun e!2644093 () Bool)

(assert (=> d!1251777 (=> (not res!1750016) (not e!2644093))))

(declare-fun size!34567 (Conc!14230) Int)

(assert (=> d!1251777 (= res!1750016 (= (csize!28690 (left!35002 t!4386)) (+ (size!34567 (left!35002 (left!35002 t!4386))) (size!34567 (right!35332 (left!35002 t!4386))))))))

(assert (=> d!1251777 (= (inv!62083 (left!35002 t!4386)) e!2644093)))

(declare-fun b!4257121 () Bool)

(declare-fun res!1750017 () Bool)

(assert (=> b!4257121 (=> (not res!1750017) (not e!2644093))))

(assert (=> b!4257121 (= res!1750017 (and (not (= (left!35002 (left!35002 t!4386)) Empty!14230)) (not (= (right!35332 (left!35002 t!4386)) Empty!14230))))))

(declare-fun b!4257122 () Bool)

(declare-fun res!1750018 () Bool)

(assert (=> b!4257122 (=> (not res!1750018) (not e!2644093))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4257122 (= res!1750018 (= (cheight!14441 (left!35002 t!4386)) (+ (max!0 (height!1854 (left!35002 (left!35002 t!4386))) (height!1854 (right!35332 (left!35002 t!4386)))) 1)))))

(declare-fun b!4257123 () Bool)

(assert (=> b!4257123 (= e!2644093 (<= 0 (cheight!14441 (left!35002 t!4386))))))

(assert (= (and d!1251777 res!1750016) b!4257121))

(assert (= (and b!4257121 res!1750017) b!4257122))

(assert (= (and b!4257122 res!1750018) b!4257123))

(declare-fun m!4842247 () Bool)

(assert (=> d!1251777 m!4842247))

(declare-fun m!4842249 () Bool)

(assert (=> d!1251777 m!4842249))

(declare-fun m!4842251 () Bool)

(assert (=> b!4257122 m!4842251))

(declare-fun m!4842253 () Bool)

(assert (=> b!4257122 m!4842253))

(assert (=> b!4257122 m!4842251))

(assert (=> b!4257122 m!4842253))

(declare-fun m!4842255 () Bool)

(assert (=> b!4257122 m!4842255))

(assert (=> b!4257017 d!1251777))

(declare-fun d!1251779 () Bool)

(declare-fun res!1750019 () Bool)

(declare-fun e!2644094 () Bool)

(assert (=> d!1251779 (=> (not res!1750019) (not e!2644094))))

(assert (=> d!1251779 (= res!1750019 (= (csize!28690 t!4386) (+ (size!34567 (left!35002 t!4386)) (size!34567 (right!35332 t!4386)))))))

(assert (=> d!1251779 (= (inv!62083 t!4386) e!2644094)))

(declare-fun b!4257124 () Bool)

(declare-fun res!1750020 () Bool)

(assert (=> b!4257124 (=> (not res!1750020) (not e!2644094))))

(assert (=> b!4257124 (= res!1750020 (and (not (= (left!35002 t!4386) Empty!14230)) (not (= (right!35332 t!4386) Empty!14230))))))

(declare-fun b!4257125 () Bool)

(declare-fun res!1750021 () Bool)

(assert (=> b!4257125 (=> (not res!1750021) (not e!2644094))))

(assert (=> b!4257125 (= res!1750021 (= (cheight!14441 t!4386) (+ (max!0 (height!1854 (left!35002 t!4386)) (height!1854 (right!35332 t!4386))) 1)))))

(declare-fun b!4257126 () Bool)

(assert (=> b!4257126 (= e!2644094 (<= 0 (cheight!14441 t!4386)))))

(assert (= (and d!1251779 res!1750019) b!4257124))

(assert (= (and b!4257124 res!1750020) b!4257125))

(assert (= (and b!4257125 res!1750021) b!4257126))

(declare-fun m!4842257 () Bool)

(assert (=> d!1251779 m!4842257))

(declare-fun m!4842259 () Bool)

(assert (=> d!1251779 m!4842259))

(assert (=> b!4257125 m!4842193))

(assert (=> b!4257125 m!4842195))

(assert (=> b!4257125 m!4842193))

(assert (=> b!4257125 m!4842195))

(declare-fun m!4842261 () Bool)

(assert (=> b!4257125 m!4842261))

(assert (=> b!4257071 d!1251779))

(declare-fun d!1251781 () Bool)

(assert (=> d!1251781 (= (height!1854 (left!35002 t!4386)) (ite ((_ is Empty!14230) (left!35002 t!4386)) 0 (ite ((_ is Leaf!21995) (left!35002 t!4386)) 1 (cheight!14441 (left!35002 t!4386)))))))

(assert (=> b!4257060 d!1251781))

(declare-fun d!1251783 () Bool)

(assert (=> d!1251783 (= (height!1854 (right!35332 t!4386)) (ite ((_ is Empty!14230) (right!35332 t!4386)) 0 (ite ((_ is Leaf!21995) (right!35332 t!4386)) 1 (cheight!14441 (right!35332 t!4386)))))))

(assert (=> b!4257060 d!1251783))

(declare-fun d!1251785 () Bool)

(declare-fun lt!1509899 () Int)

(assert (=> d!1251785 (>= lt!1509899 0)))

(declare-fun e!2644097 () Int)

(assert (=> d!1251785 (= lt!1509899 e!2644097)))

(declare-fun c!722780 () Bool)

(assert (=> d!1251785 (= c!722780 ((_ is Nil!47222) (innerList!14290 (xs!17536 t!4386))))))

(assert (=> d!1251785 (= (size!34566 (innerList!14290 (xs!17536 t!4386))) lt!1509899)))

(declare-fun b!4257131 () Bool)

(assert (=> b!4257131 (= e!2644097 0)))

(declare-fun b!4257132 () Bool)

(assert (=> b!4257132 (= e!2644097 (+ 1 (size!34566 (t!352959 (innerList!14290 (xs!17536 t!4386))))))))

(assert (= (and d!1251785 c!722780) b!4257131))

(assert (= (and d!1251785 (not c!722780)) b!4257132))

(declare-fun m!4842263 () Bool)

(assert (=> b!4257132 m!4842263))

(assert (=> d!1251775 d!1251785))

(declare-fun d!1251787 () Bool)

(assert (=> d!1251787 (= (inv!62078 (xs!17536 (right!35332 t!4386))) (<= (size!34566 (innerList!14290 (xs!17536 (right!35332 t!4386)))) 2147483647))))

(declare-fun bs!598848 () Bool)

(assert (= bs!598848 d!1251787))

(declare-fun m!4842265 () Bool)

(assert (=> bs!598848 m!4842265))

(assert (=> b!4257113 d!1251787))

(declare-fun d!1251789 () Bool)

(declare-fun lt!1509902 () Bool)

(declare-fun isEmpty!27956 (List!47346) Bool)

(declare-fun list!17032 (Conc!14230) List!47346)

(assert (=> d!1251789 (= lt!1509902 (isEmpty!27956 (list!17032 (left!35002 t!4386))))))

(assert (=> d!1251789 (= lt!1509902 (= (size!34567 (left!35002 t!4386)) 0))))

(assert (=> d!1251789 (= (isEmpty!27955 (left!35002 t!4386)) lt!1509902)))

(declare-fun bs!598849 () Bool)

(assert (= bs!598849 d!1251789))

(declare-fun m!4842267 () Bool)

(assert (=> bs!598849 m!4842267))

(assert (=> bs!598849 m!4842267))

(declare-fun m!4842269 () Bool)

(assert (=> bs!598849 m!4842269))

(assert (=> bs!598849 m!4842257))

(assert (=> b!4257061 d!1251789))

(declare-fun d!1251791 () Bool)

(declare-fun res!1750028 () Bool)

(declare-fun e!2644100 () Bool)

(assert (=> d!1251791 (=> (not res!1750028) (not e!2644100))))

(declare-fun size!34568 (Conc!14231) Int)

(assert (=> d!1251791 (= res!1750028 (= (csize!28692 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))) (+ (size!34568 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (size!34568 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))))))))

(assert (=> d!1251791 (= (inv!62079 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))) e!2644100)))

(declare-fun b!4257139 () Bool)

(declare-fun res!1750029 () Bool)

(assert (=> b!4257139 (=> (not res!1750029) (not e!2644100))))

(assert (=> b!4257139 (= res!1750029 (and (not (= (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))) Empty!14231)) (not (= (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))) Empty!14231))))))

(declare-fun b!4257140 () Bool)

(declare-fun res!1750030 () Bool)

(assert (=> b!4257140 (=> (not res!1750030) (not e!2644100))))

(declare-fun height!1855 (Conc!14231) Int)

(assert (=> b!4257140 (= res!1750030 (= (cheight!14442 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))) (+ (max!0 (height!1855 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (height!1855 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))) 1)))))

(declare-fun b!4257141 () Bool)

(assert (=> b!4257141 (= e!2644100 (<= 0 (cheight!14442 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))))))

(assert (= (and d!1251791 res!1750028) b!4257139))

(assert (= (and b!4257139 res!1750029) b!4257140))

(assert (= (and b!4257140 res!1750030) b!4257141))

(declare-fun m!4842271 () Bool)

(assert (=> d!1251791 m!4842271))

(declare-fun m!4842273 () Bool)

(assert (=> d!1251791 m!4842273))

(declare-fun m!4842275 () Bool)

(assert (=> b!4257140 m!4842275))

(declare-fun m!4842277 () Bool)

(assert (=> b!4257140 m!4842277))

(assert (=> b!4257140 m!4842275))

(assert (=> b!4257140 m!4842277))

(declare-fun m!4842279 () Bool)

(assert (=> b!4257140 m!4842279))

(assert (=> b!4257005 d!1251791))

(assert (=> b!4256992 d!1251759))

(assert (=> b!4256992 d!1251763))

(declare-fun d!1251793 () Bool)

(declare-fun res!1750035 () Bool)

(declare-fun e!2644103 () Bool)

(assert (=> d!1251793 (=> (not res!1750035) (not e!2644103))))

(assert (=> d!1251793 (= res!1750035 (<= (size!34566 (list!17030 (xs!17536 (right!35332 t!4386)))) 512))))

(assert (=> d!1251793 (= (inv!62084 (right!35332 t!4386)) e!2644103)))

(declare-fun b!4257146 () Bool)

(declare-fun res!1750036 () Bool)

(assert (=> b!4257146 (=> (not res!1750036) (not e!2644103))))

(assert (=> b!4257146 (= res!1750036 (= (csize!28691 (right!35332 t!4386)) (size!34566 (list!17030 (xs!17536 (right!35332 t!4386))))))))

(declare-fun b!4257147 () Bool)

(assert (=> b!4257147 (= e!2644103 (and (> (csize!28691 (right!35332 t!4386)) 0) (<= (csize!28691 (right!35332 t!4386)) 512)))))

(assert (= (and d!1251793 res!1750035) b!4257146))

(assert (= (and b!4257146 res!1750036) b!4257147))

(declare-fun m!4842281 () Bool)

(assert (=> d!1251793 m!4842281))

(assert (=> d!1251793 m!4842281))

(declare-fun m!4842283 () Bool)

(assert (=> d!1251793 m!4842283))

(assert (=> b!4257146 m!4842281))

(assert (=> b!4257146 m!4842281))

(assert (=> b!4257146 m!4842283))

(assert (=> b!4257024 d!1251793))

(declare-fun b!4257148 () Bool)

(declare-fun res!1750041 () Bool)

(declare-fun e!2644104 () Bool)

(assert (=> b!4257148 (=> (not res!1750041) (not e!2644104))))

(assert (=> b!4257148 (= res!1750041 (isBalanced!3790 (left!35002 (left!35002 t!4386))))))

(declare-fun b!4257149 () Bool)

(declare-fun e!2644105 () Bool)

(assert (=> b!4257149 (= e!2644105 e!2644104)))

(declare-fun res!1750039 () Bool)

(assert (=> b!4257149 (=> (not res!1750039) (not e!2644104))))

(assert (=> b!4257149 (= res!1750039 (<= (- 1) (- (height!1854 (left!35002 (left!35002 t!4386))) (height!1854 (right!35332 (left!35002 t!4386))))))))

(declare-fun b!4257150 () Bool)

(declare-fun res!1750042 () Bool)

(assert (=> b!4257150 (=> (not res!1750042) (not e!2644104))))

(assert (=> b!4257150 (= res!1750042 (not (isEmpty!27955 (left!35002 (left!35002 t!4386)))))))

(declare-fun b!4257151 () Bool)

(declare-fun res!1750038 () Bool)

(assert (=> b!4257151 (=> (not res!1750038) (not e!2644104))))

(assert (=> b!4257151 (= res!1750038 (<= (- (height!1854 (left!35002 (left!35002 t!4386))) (height!1854 (right!35332 (left!35002 t!4386)))) 1))))

(declare-fun d!1251797 () Bool)

(declare-fun res!1750037 () Bool)

(assert (=> d!1251797 (=> res!1750037 e!2644105)))

(assert (=> d!1251797 (= res!1750037 (not ((_ is Node!14230) (left!35002 t!4386))))))

(assert (=> d!1251797 (= (isBalanced!3790 (left!35002 t!4386)) e!2644105)))

(declare-fun b!4257152 () Bool)

(assert (=> b!4257152 (= e!2644104 (not (isEmpty!27955 (right!35332 (left!35002 t!4386)))))))

(declare-fun b!4257153 () Bool)

(declare-fun res!1750040 () Bool)

(assert (=> b!4257153 (=> (not res!1750040) (not e!2644104))))

(assert (=> b!4257153 (= res!1750040 (isBalanced!3790 (right!35332 (left!35002 t!4386))))))

(assert (= (and d!1251797 (not res!1750037)) b!4257149))

(assert (= (and b!4257149 res!1750039) b!4257151))

(assert (= (and b!4257151 res!1750038) b!4257148))

(assert (= (and b!4257148 res!1750041) b!4257153))

(assert (= (and b!4257153 res!1750040) b!4257150))

(assert (= (and b!4257150 res!1750042) b!4257152))

(assert (=> b!4257151 m!4842251))

(assert (=> b!4257151 m!4842253))

(declare-fun m!4842285 () Bool)

(assert (=> b!4257152 m!4842285))

(assert (=> b!4257149 m!4842251))

(assert (=> b!4257149 m!4842253))

(declare-fun m!4842287 () Bool)

(assert (=> b!4257148 m!4842287))

(declare-fun m!4842289 () Bool)

(assert (=> b!4257153 m!4842289))

(declare-fun m!4842291 () Bool)

(assert (=> b!4257150 m!4842291))

(assert (=> b!4257059 d!1251797))

(declare-fun d!1251799 () Bool)

(declare-fun c!722781 () Bool)

(assert (=> d!1251799 (= c!722781 ((_ is Node!14230) (left!35002 (right!35332 t!4386))))))

(declare-fun e!2644108 () Bool)

(assert (=> d!1251799 (= (inv!62077 (left!35002 (right!35332 t!4386))) e!2644108)))

(declare-fun b!4257158 () Bool)

(assert (=> b!4257158 (= e!2644108 (inv!62083 (left!35002 (right!35332 t!4386))))))

(declare-fun b!4257159 () Bool)

(declare-fun e!2644109 () Bool)

(assert (=> b!4257159 (= e!2644108 e!2644109)))

(declare-fun res!1750047 () Bool)

(assert (=> b!4257159 (= res!1750047 (not ((_ is Leaf!21995) (left!35002 (right!35332 t!4386)))))))

(assert (=> b!4257159 (=> res!1750047 e!2644109)))

(declare-fun b!4257160 () Bool)

(assert (=> b!4257160 (= e!2644109 (inv!62084 (left!35002 (right!35332 t!4386))))))

(assert (= (and d!1251799 c!722781) b!4257158))

(assert (= (and d!1251799 (not c!722781)) b!4257159))

(assert (= (and b!4257159 (not res!1750047)) b!4257160))

(declare-fun m!4842293 () Bool)

(assert (=> b!4257158 m!4842293))

(declare-fun m!4842295 () Bool)

(assert (=> b!4257160 m!4842295))

(assert (=> b!4257112 d!1251799))

(declare-fun d!1251801 () Bool)

(declare-fun c!722782 () Bool)

(assert (=> d!1251801 (= c!722782 ((_ is Node!14230) (right!35332 (right!35332 t!4386))))))

(declare-fun e!2644110 () Bool)

(assert (=> d!1251801 (= (inv!62077 (right!35332 (right!35332 t!4386))) e!2644110)))

(declare-fun b!4257161 () Bool)

(assert (=> b!4257161 (= e!2644110 (inv!62083 (right!35332 (right!35332 t!4386))))))

(declare-fun b!4257162 () Bool)

(declare-fun e!2644111 () Bool)

(assert (=> b!4257162 (= e!2644110 e!2644111)))

(declare-fun res!1750048 () Bool)

(assert (=> b!4257162 (= res!1750048 (not ((_ is Leaf!21995) (right!35332 (right!35332 t!4386)))))))

(assert (=> b!4257162 (=> res!1750048 e!2644111)))

(declare-fun b!4257163 () Bool)

(assert (=> b!4257163 (= e!2644111 (inv!62084 (right!35332 (right!35332 t!4386))))))

(assert (= (and d!1251801 c!722782) b!4257161))

(assert (= (and d!1251801 (not c!722782)) b!4257162))

(assert (= (and b!4257162 (not res!1750048)) b!4257163))

(declare-fun m!4842297 () Bool)

(assert (=> b!4257161 m!4842297))

(declare-fun m!4842299 () Bool)

(assert (=> b!4257163 m!4842299))

(assert (=> b!4257112 d!1251801))

(declare-fun d!1251803 () Bool)

(declare-fun lt!1509907 () List!47347)

(declare-fun size!34570 (List!47347) Int)

(assert (=> d!1251803 (= (size!34570 lt!1509907) (size!34566 (list!17030 (xs!17536 t!4386))))))

(declare-fun e!2644115 () List!47347)

(assert (=> d!1251803 (= lt!1509907 e!2644115)))

(declare-fun c!722785 () Bool)

(assert (=> d!1251803 (= c!722785 ((_ is Nil!47222) (list!17030 (xs!17536 t!4386))))))

(assert (=> d!1251803 (= (map!9647 (list!17030 (xs!17536 t!4386)) f!428) lt!1509907)))

(declare-fun b!4257170 () Bool)

(assert (=> b!4257170 (= e!2644115 Nil!47223)))

(declare-fun b!4257171 () Bool)

(declare-fun $colon$colon!622 (List!47347 B!2805) List!47347)

(declare-fun dynLambda!20210 (Int T!79350) B!2805)

(assert (=> b!4257171 (= e!2644115 ($colon$colon!622 (map!9647 (t!352959 (list!17030 (xs!17536 t!4386))) f!428) (dynLambda!20210 f!428 (h!52642 (list!17030 (xs!17536 t!4386))))))))

(assert (= (and d!1251803 c!722785) b!4257170))

(assert (= (and d!1251803 (not c!722785)) b!4257171))

(declare-fun b_lambda!125419 () Bool)

(assert (=> (not b_lambda!125419) (not b!4257171)))

(declare-fun t!352967 () Bool)

(declare-fun tb!256747 () Bool)

(assert (=> (and start!407858 (= f!428 f!428) t!352967) tb!256747))

(declare-fun result!313256 () Bool)

(declare-fun tp_is_empty!22843 () Bool)

(assert (=> tb!256747 (= result!313256 tp_is_empty!22843)))

(assert (=> b!4257171 t!352967))

(declare-fun b_and!337537 () Bool)

(assert (= b_and!337535 (and (=> t!352967 result!313256) b_and!337537)))

(declare-fun m!4842309 () Bool)

(assert (=> d!1251803 m!4842309))

(assert (=> d!1251803 m!4842161))

(declare-fun m!4842311 () Bool)

(assert (=> d!1251803 m!4842311))

(declare-fun m!4842313 () Bool)

(assert (=> b!4257171 m!4842313))

(declare-fun m!4842315 () Bool)

(assert (=> b!4257171 m!4842315))

(assert (=> b!4257171 m!4842313))

(assert (=> b!4257171 m!4842315))

(declare-fun m!4842317 () Bool)

(assert (=> b!4257171 m!4842317))

(assert (=> d!1251755 d!1251803))

(declare-fun d!1251809 () Bool)

(assert (=> d!1251809 (= (list!17030 (xs!17536 t!4386)) (innerList!14290 (xs!17536 t!4386)))))

(assert (=> d!1251755 d!1251809))

(declare-fun d!1251815 () Bool)

(declare-fun _$10!106 () IArray!28467)

(assert (=> d!1251815 (= _$10!106 (IArray!28468 (map!9647 (list!17030 (xs!17536 t!4386)) f!428)))))

(declare-fun e!2644122 () Bool)

(declare-fun inv!62087 (IArray!28467) Bool)

(assert (=> d!1251815 (and (inv!62087 _$10!106) e!2644122)))

(assert (=> d!1251815 (= (choose!25973 (xs!17536 t!4386) f!428) _$10!106)))

(declare-fun b!4257182 () Bool)

(declare-fun tp!1306445 () Bool)

(assert (=> b!4257182 (= e!2644122 tp!1306445)))

(assert (= d!1251815 b!4257182))

(assert (=> d!1251815 m!4842161))

(assert (=> d!1251815 m!4842161))

(assert (=> d!1251815 m!4842163))

(declare-fun m!4842327 () Bool)

(assert (=> d!1251815 m!4842327))

(assert (=> d!1251755 d!1251815))

(declare-fun d!1251821 () Bool)

(assert (=> d!1251821 (= (inv!62078 (xs!17536 (left!35002 t!4386))) (<= (size!34566 (innerList!14290 (xs!17536 (left!35002 t!4386)))) 2147483647))))

(declare-fun bs!598851 () Bool)

(assert (= bs!598851 d!1251821))

(declare-fun m!4842329 () Bool)

(assert (=> bs!598851 m!4842329))

(assert (=> b!4257110 d!1251821))

(declare-fun d!1251823 () Bool)

(declare-fun c!722788 () Bool)

(assert (=> d!1251823 (= c!722788 ((_ is Node!14230) (left!35002 (left!35002 t!4386))))))

(declare-fun e!2644123 () Bool)

(assert (=> d!1251823 (= (inv!62077 (left!35002 (left!35002 t!4386))) e!2644123)))

(declare-fun b!4257183 () Bool)

(assert (=> b!4257183 (= e!2644123 (inv!62083 (left!35002 (left!35002 t!4386))))))

(declare-fun b!4257184 () Bool)

(declare-fun e!2644124 () Bool)

(assert (=> b!4257184 (= e!2644123 e!2644124)))

(declare-fun res!1750053 () Bool)

(assert (=> b!4257184 (= res!1750053 (not ((_ is Leaf!21995) (left!35002 (left!35002 t!4386)))))))

(assert (=> b!4257184 (=> res!1750053 e!2644124)))

(declare-fun b!4257185 () Bool)

(assert (=> b!4257185 (= e!2644124 (inv!62084 (left!35002 (left!35002 t!4386))))))

(assert (= (and d!1251823 c!722788) b!4257183))

(assert (= (and d!1251823 (not c!722788)) b!4257184))

(assert (= (and b!4257184 (not res!1750053)) b!4257185))

(declare-fun m!4842331 () Bool)

(assert (=> b!4257183 m!4842331))

(declare-fun m!4842333 () Bool)

(assert (=> b!4257185 m!4842333))

(assert (=> b!4257109 d!1251823))

(declare-fun d!1251825 () Bool)

(declare-fun c!722791 () Bool)

(assert (=> d!1251825 (= c!722791 ((_ is Node!14230) (right!35332 (left!35002 t!4386))))))

(declare-fun e!2644127 () Bool)

(assert (=> d!1251825 (= (inv!62077 (right!35332 (left!35002 t!4386))) e!2644127)))

(declare-fun b!4257190 () Bool)

(assert (=> b!4257190 (= e!2644127 (inv!62083 (right!35332 (left!35002 t!4386))))))

(declare-fun b!4257191 () Bool)

(declare-fun e!2644128 () Bool)

(assert (=> b!4257191 (= e!2644127 e!2644128)))

(declare-fun res!1750054 () Bool)

(assert (=> b!4257191 (= res!1750054 (not ((_ is Leaf!21995) (right!35332 (left!35002 t!4386)))))))

(assert (=> b!4257191 (=> res!1750054 e!2644128)))

(declare-fun b!4257192 () Bool)

(assert (=> b!4257192 (= e!2644128 (inv!62084 (right!35332 (left!35002 t!4386))))))

(assert (= (and d!1251825 c!722791) b!4257190))

(assert (= (and d!1251825 (not c!722791)) b!4257191))

(assert (= (and b!4257191 (not res!1750054)) b!4257192))

(declare-fun m!4842335 () Bool)

(assert (=> b!4257190 m!4842335))

(declare-fun m!4842337 () Bool)

(assert (=> b!4257192 m!4842337))

(assert (=> b!4257109 d!1251825))

(declare-fun d!1251827 () Bool)

(declare-fun res!1750055 () Bool)

(declare-fun e!2644129 () Bool)

(assert (=> d!1251827 (=> (not res!1750055) (not e!2644129))))

(assert (=> d!1251827 (= res!1750055 (= (csize!28690 (right!35332 t!4386)) (+ (size!34567 (left!35002 (right!35332 t!4386))) (size!34567 (right!35332 (right!35332 t!4386))))))))

(assert (=> d!1251827 (= (inv!62083 (right!35332 t!4386)) e!2644129)))

(declare-fun b!4257193 () Bool)

(declare-fun res!1750056 () Bool)

(assert (=> b!4257193 (=> (not res!1750056) (not e!2644129))))

(assert (=> b!4257193 (= res!1750056 (and (not (= (left!35002 (right!35332 t!4386)) Empty!14230)) (not (= (right!35332 (right!35332 t!4386)) Empty!14230))))))

(declare-fun b!4257194 () Bool)

(declare-fun res!1750057 () Bool)

(assert (=> b!4257194 (=> (not res!1750057) (not e!2644129))))

(assert (=> b!4257194 (= res!1750057 (= (cheight!14441 (right!35332 t!4386)) (+ (max!0 (height!1854 (left!35002 (right!35332 t!4386))) (height!1854 (right!35332 (right!35332 t!4386)))) 1)))))

(declare-fun b!4257195 () Bool)

(assert (=> b!4257195 (= e!2644129 (<= 0 (cheight!14441 (right!35332 t!4386))))))

(assert (= (and d!1251827 res!1750055) b!4257193))

(assert (= (and b!4257193 res!1750056) b!4257194))

(assert (= (and b!4257194 res!1750057) b!4257195))

(declare-fun m!4842339 () Bool)

(assert (=> d!1251827 m!4842339))

(declare-fun m!4842341 () Bool)

(assert (=> d!1251827 m!4842341))

(declare-fun m!4842343 () Bool)

(assert (=> b!4257194 m!4842343))

(declare-fun m!4842345 () Bool)

(assert (=> b!4257194 m!4842345))

(assert (=> b!4257194 m!4842343))

(assert (=> b!4257194 m!4842345))

(declare-fun m!4842347 () Bool)

(assert (=> b!4257194 m!4842347))

(assert (=> b!4257022 d!1251827))

(declare-fun d!1251829 () Bool)

(declare-fun lt!1509911 () Bool)

(assert (=> d!1251829 (= lt!1509911 (isEmpty!27956 (list!17032 (right!35332 t!4386))))))

(assert (=> d!1251829 (= lt!1509911 (= (size!34567 (right!35332 t!4386)) 0))))

(assert (=> d!1251829 (= (isEmpty!27955 (right!35332 t!4386)) lt!1509911)))

(declare-fun bs!598852 () Bool)

(assert (= bs!598852 d!1251829))

(declare-fun m!4842349 () Bool)

(assert (=> bs!598852 m!4842349))

(assert (=> bs!598852 m!4842349))

(declare-fun m!4842351 () Bool)

(assert (=> bs!598852 m!4842351))

(assert (=> bs!598852 m!4842259))

(assert (=> b!4257063 d!1251829))

(declare-fun d!1251831 () Bool)

(declare-fun res!1750058 () Bool)

(declare-fun e!2644130 () Bool)

(assert (=> d!1251831 (=> (not res!1750058) (not e!2644130))))

(assert (=> d!1251831 (= res!1750058 (<= (size!34566 (list!17030 (xs!17536 t!4386))) 512))))

(assert (=> d!1251831 (= (inv!62084 t!4386) e!2644130)))

(declare-fun b!4257196 () Bool)

(declare-fun res!1750059 () Bool)

(assert (=> b!4257196 (=> (not res!1750059) (not e!2644130))))

(assert (=> b!4257196 (= res!1750059 (= (csize!28691 t!4386) (size!34566 (list!17030 (xs!17536 t!4386)))))))

(declare-fun b!4257197 () Bool)

(assert (=> b!4257197 (= e!2644130 (and (> (csize!28691 t!4386) 0) (<= (csize!28691 t!4386) 512)))))

(assert (= (and d!1251831 res!1750058) b!4257196))

(assert (= (and b!4257196 res!1750059) b!4257197))

(assert (=> d!1251831 m!4842161))

(assert (=> d!1251831 m!4842161))

(assert (=> d!1251831 m!4842311))

(assert (=> b!4257196 m!4842161))

(assert (=> b!4257196 m!4842161))

(assert (=> b!4257196 m!4842311))

(assert (=> b!4257073 d!1251831))

(assert (=> b!4257062 d!1251781))

(assert (=> b!4257062 d!1251783))

(declare-fun d!1251833 () Bool)

(declare-fun res!1750064 () Bool)

(declare-fun e!2644136 () Bool)

(assert (=> d!1251833 (=> (not res!1750064) (not e!2644136))))

(declare-fun list!17034 (IArray!28467) List!47347)

(assert (=> d!1251833 (= res!1750064 (<= (size!34570 (list!17034 (xs!17537 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))) 512))))

(assert (=> d!1251833 (= (inv!62081 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))) e!2644136)))

(declare-fun b!4257208 () Bool)

(declare-fun res!1750065 () Bool)

(assert (=> b!4257208 (=> (not res!1750065) (not e!2644136))))

(assert (=> b!4257208 (= res!1750065 (= (csize!28693 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))) (size!34570 (list!17034 (xs!17537 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))))))))

(declare-fun b!4257209 () Bool)

(assert (=> b!4257209 (= e!2644136 (and (> (csize!28693 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))) 0) (<= (csize!28693 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))) 512)))))

(assert (= (and d!1251833 res!1750064) b!4257208))

(assert (= (and b!4257208 res!1750065) b!4257209))

(declare-fun m!4842361 () Bool)

(assert (=> d!1251833 m!4842361))

(assert (=> d!1251833 m!4842361))

(declare-fun m!4842363 () Bool)

(assert (=> d!1251833 m!4842363))

(assert (=> b!4257208 m!4842361))

(assert (=> b!4257208 m!4842361))

(assert (=> b!4257208 m!4842363))

(assert (=> b!4257007 d!1251833))

(declare-fun b!4257210 () Bool)

(declare-fun res!1750070 () Bool)

(declare-fun e!2644137 () Bool)

(assert (=> b!4257210 (=> (not res!1750070) (not e!2644137))))

(assert (=> b!4257210 (= res!1750070 (isBalanced!3790 (left!35002 (right!35332 t!4386))))))

(declare-fun b!4257211 () Bool)

(declare-fun e!2644138 () Bool)

(assert (=> b!4257211 (= e!2644138 e!2644137)))

(declare-fun res!1750068 () Bool)

(assert (=> b!4257211 (=> (not res!1750068) (not e!2644137))))

(assert (=> b!4257211 (= res!1750068 (<= (- 1) (- (height!1854 (left!35002 (right!35332 t!4386))) (height!1854 (right!35332 (right!35332 t!4386))))))))

(declare-fun b!4257212 () Bool)

(declare-fun res!1750071 () Bool)

(assert (=> b!4257212 (=> (not res!1750071) (not e!2644137))))

(assert (=> b!4257212 (= res!1750071 (not (isEmpty!27955 (left!35002 (right!35332 t!4386)))))))

(declare-fun b!4257213 () Bool)

(declare-fun res!1750067 () Bool)

(assert (=> b!4257213 (=> (not res!1750067) (not e!2644137))))

(assert (=> b!4257213 (= res!1750067 (<= (- (height!1854 (left!35002 (right!35332 t!4386))) (height!1854 (right!35332 (right!35332 t!4386)))) 1))))

(declare-fun d!1251839 () Bool)

(declare-fun res!1750066 () Bool)

(assert (=> d!1251839 (=> res!1750066 e!2644138)))

(assert (=> d!1251839 (= res!1750066 (not ((_ is Node!14230) (right!35332 t!4386))))))

(assert (=> d!1251839 (= (isBalanced!3790 (right!35332 t!4386)) e!2644138)))

(declare-fun b!4257214 () Bool)

(assert (=> b!4257214 (= e!2644137 (not (isEmpty!27955 (right!35332 (right!35332 t!4386)))))))

(declare-fun b!4257215 () Bool)

(declare-fun res!1750069 () Bool)

(assert (=> b!4257215 (=> (not res!1750069) (not e!2644137))))

(assert (=> b!4257215 (= res!1750069 (isBalanced!3790 (right!35332 (right!35332 t!4386))))))

(assert (= (and d!1251839 (not res!1750066)) b!4257211))

(assert (= (and b!4257211 res!1750068) b!4257213))

(assert (= (and b!4257213 res!1750067) b!4257210))

(assert (= (and b!4257210 res!1750070) b!4257215))

(assert (= (and b!4257215 res!1750069) b!4257212))

(assert (= (and b!4257212 res!1750071) b!4257214))

(assert (=> b!4257213 m!4842343))

(assert (=> b!4257213 m!4842345))

(declare-fun m!4842365 () Bool)

(assert (=> b!4257214 m!4842365))

(assert (=> b!4257211 m!4842343))

(assert (=> b!4257211 m!4842345))

(declare-fun m!4842367 () Bool)

(assert (=> b!4257210 m!4842367))

(declare-fun m!4842369 () Bool)

(assert (=> b!4257215 m!4842369))

(declare-fun m!4842371 () Bool)

(assert (=> b!4257212 m!4842371))

(assert (=> b!4257064 d!1251839))

(declare-fun d!1251841 () Bool)

(declare-fun res!1750072 () Bool)

(declare-fun e!2644140 () Bool)

(assert (=> d!1251841 (=> (not res!1750072) (not e!2644140))))

(assert (=> d!1251841 (= res!1750072 (<= (size!34566 (list!17030 (xs!17536 (left!35002 t!4386)))) 512))))

(assert (=> d!1251841 (= (inv!62084 (left!35002 t!4386)) e!2644140)))

(declare-fun b!4257217 () Bool)

(declare-fun res!1750073 () Bool)

(assert (=> b!4257217 (=> (not res!1750073) (not e!2644140))))

(assert (=> b!4257217 (= res!1750073 (= (csize!28691 (left!35002 t!4386)) (size!34566 (list!17030 (xs!17536 (left!35002 t!4386))))))))

(declare-fun b!4257218 () Bool)

(assert (=> b!4257218 (= e!2644140 (and (> (csize!28691 (left!35002 t!4386)) 0) (<= (csize!28691 (left!35002 t!4386)) 512)))))

(assert (= (and d!1251841 res!1750072) b!4257217))

(assert (= (and b!4257217 res!1750073) b!4257218))

(declare-fun m!4842377 () Bool)

(assert (=> d!1251841 m!4842377))

(assert (=> d!1251841 m!4842377))

(declare-fun m!4842379 () Bool)

(assert (=> d!1251841 m!4842379))

(assert (=> b!4257217 m!4842377))

(assert (=> b!4257217 m!4842377))

(assert (=> b!4257217 m!4842379))

(assert (=> b!4257019 d!1251841))

(declare-fun b!4257225 () Bool)

(declare-fun e!2644143 () Bool)

(declare-fun tp!1306449 () Bool)

(assert (=> b!4257225 (= e!2644143 (and tp_is_empty!22841 tp!1306449))))

(assert (=> b!4257114 (= tp!1306441 e!2644143)))

(assert (= (and b!4257114 ((_ is Cons!47222) (innerList!14290 (xs!17536 (right!35332 t!4386))))) b!4257225))

(declare-fun tp!1306450 () Bool)

(declare-fun b!4257226 () Bool)

(declare-fun e!2644145 () Bool)

(declare-fun tp!1306452 () Bool)

(assert (=> b!4257226 (= e!2644145 (and (inv!62077 (left!35002 (left!35002 (left!35002 t!4386)))) tp!1306450 (inv!62077 (right!35332 (left!35002 (left!35002 t!4386)))) tp!1306452))))

(declare-fun b!4257228 () Bool)

(declare-fun e!2644144 () Bool)

(declare-fun tp!1306451 () Bool)

(assert (=> b!4257228 (= e!2644144 tp!1306451)))

(declare-fun b!4257227 () Bool)

(assert (=> b!4257227 (= e!2644145 (and (inv!62078 (xs!17536 (left!35002 (left!35002 t!4386)))) e!2644144))))

(assert (=> b!4257109 (= tp!1306437 (and (inv!62077 (left!35002 (left!35002 t!4386))) e!2644145))))

(assert (= (and b!4257109 ((_ is Node!14230) (left!35002 (left!35002 t!4386)))) b!4257226))

(assert (= b!4257227 b!4257228))

(assert (= (and b!4257109 ((_ is Leaf!21995) (left!35002 (left!35002 t!4386)))) b!4257227))

(declare-fun m!4842385 () Bool)

(assert (=> b!4257226 m!4842385))

(declare-fun m!4842387 () Bool)

(assert (=> b!4257226 m!4842387))

(declare-fun m!4842389 () Bool)

(assert (=> b!4257227 m!4842389))

(assert (=> b!4257109 m!4842235))

(declare-fun tp!1306455 () Bool)

(declare-fun tp!1306453 () Bool)

(declare-fun b!4257229 () Bool)

(declare-fun e!2644147 () Bool)

(assert (=> b!4257229 (= e!2644147 (and (inv!62077 (left!35002 (right!35332 (left!35002 t!4386)))) tp!1306453 (inv!62077 (right!35332 (right!35332 (left!35002 t!4386)))) tp!1306455))))

(declare-fun b!4257231 () Bool)

(declare-fun e!2644146 () Bool)

(declare-fun tp!1306454 () Bool)

(assert (=> b!4257231 (= e!2644146 tp!1306454)))

(declare-fun b!4257230 () Bool)

(assert (=> b!4257230 (= e!2644147 (and (inv!62078 (xs!17536 (right!35332 (left!35002 t!4386)))) e!2644146))))

(assert (=> b!4257109 (= tp!1306439 (and (inv!62077 (right!35332 (left!35002 t!4386))) e!2644147))))

(assert (= (and b!4257109 ((_ is Node!14230) (right!35332 (left!35002 t!4386)))) b!4257229))

(assert (= b!4257230 b!4257231))

(assert (= (and b!4257109 ((_ is Leaf!21995) (right!35332 (left!35002 t!4386)))) b!4257230))

(declare-fun m!4842399 () Bool)

(assert (=> b!4257229 m!4842399))

(declare-fun m!4842403 () Bool)

(assert (=> b!4257229 m!4842403))

(declare-fun m!4842407 () Bool)

(assert (=> b!4257230 m!4842407))

(assert (=> b!4257109 m!4842237))

(declare-fun b!4257232 () Bool)

(declare-fun e!2644148 () Bool)

(declare-fun tp!1306456 () Bool)

(assert (=> b!4257232 (= e!2644148 (and tp_is_empty!22841 tp!1306456))))

(assert (=> b!4257111 (= tp!1306438 e!2644148)))

(assert (= (and b!4257111 ((_ is Cons!47222) (innerList!14290 (xs!17536 (left!35002 t!4386))))) b!4257232))

(declare-fun b!4257233 () Bool)

(declare-fun e!2644149 () Bool)

(declare-fun tp!1306457 () Bool)

(assert (=> b!4257233 (= e!2644149 (and tp_is_empty!22841 tp!1306457))))

(assert (=> b!4257094 (= tp!1306424 e!2644149)))

(assert (= (and b!4257094 ((_ is Cons!47222) (t!352959 (innerList!14290 (xs!17536 t!4386))))) b!4257233))

(declare-fun e!2644151 () Bool)

(declare-fun tp!1306460 () Bool)

(declare-fun b!4257234 () Bool)

(declare-fun tp!1306458 () Bool)

(assert (=> b!4257234 (= e!2644151 (and (inv!62077 (left!35002 (left!35002 (right!35332 t!4386)))) tp!1306458 (inv!62077 (right!35332 (left!35002 (right!35332 t!4386)))) tp!1306460))))

(declare-fun b!4257236 () Bool)

(declare-fun e!2644150 () Bool)

(declare-fun tp!1306459 () Bool)

(assert (=> b!4257236 (= e!2644150 tp!1306459)))

(declare-fun b!4257235 () Bool)

(assert (=> b!4257235 (= e!2644151 (and (inv!62078 (xs!17536 (left!35002 (right!35332 t!4386)))) e!2644150))))

(assert (=> b!4257112 (= tp!1306440 (and (inv!62077 (left!35002 (right!35332 t!4386))) e!2644151))))

(assert (= (and b!4257112 ((_ is Node!14230) (left!35002 (right!35332 t!4386)))) b!4257234))

(assert (= b!4257235 b!4257236))

(assert (= (and b!4257112 ((_ is Leaf!21995) (left!35002 (right!35332 t!4386)))) b!4257235))

(declare-fun m!4842411 () Bool)

(assert (=> b!4257234 m!4842411))

(declare-fun m!4842413 () Bool)

(assert (=> b!4257234 m!4842413))

(declare-fun m!4842415 () Bool)

(assert (=> b!4257235 m!4842415))

(assert (=> b!4257112 m!4842241))

(declare-fun e!2644155 () Bool)

(declare-fun tp!1306463 () Bool)

(declare-fun tp!1306461 () Bool)

(declare-fun b!4257243 () Bool)

(assert (=> b!4257243 (= e!2644155 (and (inv!62077 (left!35002 (right!35332 (right!35332 t!4386)))) tp!1306461 (inv!62077 (right!35332 (right!35332 (right!35332 t!4386)))) tp!1306463))))

(declare-fun b!4257245 () Bool)

(declare-fun e!2644154 () Bool)

(declare-fun tp!1306462 () Bool)

(assert (=> b!4257245 (= e!2644154 tp!1306462)))

(declare-fun b!4257244 () Bool)

(assert (=> b!4257244 (= e!2644155 (and (inv!62078 (xs!17536 (right!35332 (right!35332 t!4386)))) e!2644154))))

(assert (=> b!4257112 (= tp!1306442 (and (inv!62077 (right!35332 (right!35332 t!4386))) e!2644155))))

(assert (= (and b!4257112 ((_ is Node!14230) (right!35332 (right!35332 t!4386)))) b!4257243))

(assert (= b!4257244 b!4257245))

(assert (= (and b!4257112 ((_ is Leaf!21995) (right!35332 (right!35332 t!4386)))) b!4257244))

(declare-fun m!4842417 () Bool)

(assert (=> b!4257243 m!4842417))

(declare-fun m!4842419 () Bool)

(assert (=> b!4257243 m!4842419))

(declare-fun m!4842421 () Bool)

(assert (=> b!4257244 m!4842421))

(assert (=> b!4257112 m!4842243))

(declare-fun b_lambda!125423 () Bool)

(assert (= b_lambda!125419 (or (and start!407858 b_free!126669) b_lambda!125423)))

(check-sat (not b!4257214) (not b!4257192) (not b!4257149) (not b!4257194) (not b!4257112) (not d!1251779) (not b!4257244) (not b!4257151) (not b!4257215) (not b!4257183) (not d!1251777) (not b!4257196) (not b!4257185) (not b!4257210) (not b!4257231) (not b!4257153) (not b!4257190) (not b!4257212) (not b!4257182) (not b!4257235) (not b!4257152) (not b!4257236) (not d!1251803) (not b!4257161) (not d!1251787) (not b!4257227) (not b!4257211) b_and!337537 (not b!4257225) (not b!4257163) (not d!1251827) (not b!4257150) (not d!1251789) (not b_next!127373) (not b_lambda!125423) (not d!1251791) (not d!1251815) (not b!4257229) (not b!4257230) (not b!4257208) (not d!1251821) tp_is_empty!22841 (not d!1251833) (not b!4257122) (not b!4257109) (not b!4257226) (not b!4257233) (not b!4257245) (not d!1251841) (not d!1251831) (not b!4257228) (not b!4257217) (not b!4257234) (not b!4257243) (not b!4257160) (not b!4257140) (not b!4257132) tp_is_empty!22843 (not d!1251793) (not d!1251829) (not b!4257148) (not b!4257125) (not b!4257213) (not b!4257232) (not b!4257146) (not b!4257158) (not b!4257171))
(check-sat b_and!337537 (not b_next!127373))
(get-model)

(declare-fun d!1251873 () Bool)

(declare-fun res!1750122 () Bool)

(declare-fun e!2644187 () Bool)

(assert (=> d!1251873 (=> (not res!1750122) (not e!2644187))))

(assert (=> d!1251873 (= res!1750122 (<= (size!34566 (list!17030 (xs!17536 (right!35332 (right!35332 t!4386))))) 512))))

(assert (=> d!1251873 (= (inv!62084 (right!35332 (right!35332 t!4386))) e!2644187)))

(declare-fun b!4257307 () Bool)

(declare-fun res!1750123 () Bool)

(assert (=> b!4257307 (=> (not res!1750123) (not e!2644187))))

(assert (=> b!4257307 (= res!1750123 (= (csize!28691 (right!35332 (right!35332 t!4386))) (size!34566 (list!17030 (xs!17536 (right!35332 (right!35332 t!4386)))))))))

(declare-fun b!4257308 () Bool)

(assert (=> b!4257308 (= e!2644187 (and (> (csize!28691 (right!35332 (right!35332 t!4386))) 0) (<= (csize!28691 (right!35332 (right!35332 t!4386))) 512)))))

(assert (= (and d!1251873 res!1750122) b!4257307))

(assert (= (and b!4257307 res!1750123) b!4257308))

(declare-fun m!4842507 () Bool)

(assert (=> d!1251873 m!4842507))

(assert (=> d!1251873 m!4842507))

(declare-fun m!4842509 () Bool)

(assert (=> d!1251873 m!4842509))

(assert (=> b!4257307 m!4842507))

(assert (=> b!4257307 m!4842507))

(assert (=> b!4257307 m!4842509))

(assert (=> b!4257163 d!1251873))

(declare-fun d!1251875 () Bool)

(declare-fun res!1750124 () Bool)

(declare-fun e!2644188 () Bool)

(assert (=> d!1251875 (=> (not res!1750124) (not e!2644188))))

(assert (=> d!1251875 (= res!1750124 (<= (size!34566 (list!17030 (xs!17536 (left!35002 (left!35002 t!4386))))) 512))))

(assert (=> d!1251875 (= (inv!62084 (left!35002 (left!35002 t!4386))) e!2644188)))

(declare-fun b!4257309 () Bool)

(declare-fun res!1750125 () Bool)

(assert (=> b!4257309 (=> (not res!1750125) (not e!2644188))))

(assert (=> b!4257309 (= res!1750125 (= (csize!28691 (left!35002 (left!35002 t!4386))) (size!34566 (list!17030 (xs!17536 (left!35002 (left!35002 t!4386)))))))))

(declare-fun b!4257310 () Bool)

(assert (=> b!4257310 (= e!2644188 (and (> (csize!28691 (left!35002 (left!35002 t!4386))) 0) (<= (csize!28691 (left!35002 (left!35002 t!4386))) 512)))))

(assert (= (and d!1251875 res!1750124) b!4257309))

(assert (= (and b!4257309 res!1750125) b!4257310))

(declare-fun m!4842511 () Bool)

(assert (=> d!1251875 m!4842511))

(assert (=> d!1251875 m!4842511))

(declare-fun m!4842513 () Bool)

(assert (=> d!1251875 m!4842513))

(assert (=> b!4257309 m!4842511))

(assert (=> b!4257309 m!4842511))

(assert (=> b!4257309 m!4842513))

(assert (=> b!4257185 d!1251875))

(declare-fun d!1251877 () Bool)

(assert (=> d!1251877 (= (height!1854 (left!35002 (right!35332 t!4386))) (ite ((_ is Empty!14230) (left!35002 (right!35332 t!4386))) 0 (ite ((_ is Leaf!21995) (left!35002 (right!35332 t!4386))) 1 (cheight!14441 (left!35002 (right!35332 t!4386))))))))

(assert (=> b!4257211 d!1251877))

(declare-fun d!1251879 () Bool)

(assert (=> d!1251879 (= (height!1854 (right!35332 (right!35332 t!4386))) (ite ((_ is Empty!14230) (right!35332 (right!35332 t!4386))) 0 (ite ((_ is Leaf!21995) (right!35332 (right!35332 t!4386))) 1 (cheight!14441 (right!35332 (right!35332 t!4386))))))))

(assert (=> b!4257211 d!1251879))

(declare-fun d!1251881 () Bool)

(declare-fun c!722798 () Bool)

(assert (=> d!1251881 (= c!722798 ((_ is Node!14230) (left!35002 (right!35332 (right!35332 t!4386)))))))

(declare-fun e!2644189 () Bool)

(assert (=> d!1251881 (= (inv!62077 (left!35002 (right!35332 (right!35332 t!4386)))) e!2644189)))

(declare-fun b!4257311 () Bool)

(assert (=> b!4257311 (= e!2644189 (inv!62083 (left!35002 (right!35332 (right!35332 t!4386)))))))

(declare-fun b!4257312 () Bool)

(declare-fun e!2644190 () Bool)

(assert (=> b!4257312 (= e!2644189 e!2644190)))

(declare-fun res!1750126 () Bool)

(assert (=> b!4257312 (= res!1750126 (not ((_ is Leaf!21995) (left!35002 (right!35332 (right!35332 t!4386))))))))

(assert (=> b!4257312 (=> res!1750126 e!2644190)))

(declare-fun b!4257313 () Bool)

(assert (=> b!4257313 (= e!2644190 (inv!62084 (left!35002 (right!35332 (right!35332 t!4386)))))))

(assert (= (and d!1251881 c!722798) b!4257311))

(assert (= (and d!1251881 (not c!722798)) b!4257312))

(assert (= (and b!4257312 (not res!1750126)) b!4257313))

(declare-fun m!4842515 () Bool)

(assert (=> b!4257311 m!4842515))

(declare-fun m!4842517 () Bool)

(assert (=> b!4257313 m!4842517))

(assert (=> b!4257243 d!1251881))

(declare-fun d!1251883 () Bool)

(declare-fun c!722799 () Bool)

(assert (=> d!1251883 (= c!722799 ((_ is Node!14230) (right!35332 (right!35332 (right!35332 t!4386)))))))

(declare-fun e!2644191 () Bool)

(assert (=> d!1251883 (= (inv!62077 (right!35332 (right!35332 (right!35332 t!4386)))) e!2644191)))

(declare-fun b!4257314 () Bool)

(assert (=> b!4257314 (= e!2644191 (inv!62083 (right!35332 (right!35332 (right!35332 t!4386)))))))

(declare-fun b!4257315 () Bool)

(declare-fun e!2644192 () Bool)

(assert (=> b!4257315 (= e!2644191 e!2644192)))

(declare-fun res!1750127 () Bool)

(assert (=> b!4257315 (= res!1750127 (not ((_ is Leaf!21995) (right!35332 (right!35332 (right!35332 t!4386))))))))

(assert (=> b!4257315 (=> res!1750127 e!2644192)))

(declare-fun b!4257316 () Bool)

(assert (=> b!4257316 (= e!2644192 (inv!62084 (right!35332 (right!35332 (right!35332 t!4386)))))))

(assert (= (and d!1251883 c!722799) b!4257314))

(assert (= (and d!1251883 (not c!722799)) b!4257315))

(assert (= (and b!4257315 (not res!1750127)) b!4257316))

(declare-fun m!4842519 () Bool)

(assert (=> b!4257314 m!4842519))

(declare-fun m!4842521 () Bool)

(assert (=> b!4257316 m!4842521))

(assert (=> b!4257243 d!1251883))

(declare-fun d!1251885 () Bool)

(declare-fun lt!1509917 () Bool)

(assert (=> d!1251885 (= lt!1509917 (isEmpty!27956 (list!17032 (left!35002 (left!35002 t!4386)))))))

(assert (=> d!1251885 (= lt!1509917 (= (size!34567 (left!35002 (left!35002 t!4386))) 0))))

(assert (=> d!1251885 (= (isEmpty!27955 (left!35002 (left!35002 t!4386))) lt!1509917)))

(declare-fun bs!598856 () Bool)

(assert (= bs!598856 d!1251885))

(declare-fun m!4842523 () Bool)

(assert (=> bs!598856 m!4842523))

(assert (=> bs!598856 m!4842523))

(declare-fun m!4842525 () Bool)

(assert (=> bs!598856 m!4842525))

(assert (=> bs!598856 m!4842247))

(assert (=> b!4257150 d!1251885))

(declare-fun d!1251887 () Bool)

(declare-fun lt!1509918 () Bool)

(assert (=> d!1251887 (= lt!1509918 (isEmpty!27956 (list!17032 (right!35332 (left!35002 t!4386)))))))

(assert (=> d!1251887 (= lt!1509918 (= (size!34567 (right!35332 (left!35002 t!4386))) 0))))

(assert (=> d!1251887 (= (isEmpty!27955 (right!35332 (left!35002 t!4386))) lt!1509918)))

(declare-fun bs!598857 () Bool)

(assert (= bs!598857 d!1251887))

(declare-fun m!4842527 () Bool)

(assert (=> bs!598857 m!4842527))

(assert (=> bs!598857 m!4842527))

(declare-fun m!4842529 () Bool)

(assert (=> bs!598857 m!4842529))

(assert (=> bs!598857 m!4842249))

(assert (=> b!4257152 d!1251887))

(assert (=> b!4257112 d!1251799))

(assert (=> b!4257112 d!1251801))

(declare-fun d!1251889 () Bool)

(declare-fun res!1750128 () Bool)

(declare-fun e!2644193 () Bool)

(assert (=> d!1251889 (=> (not res!1750128) (not e!2644193))))

(assert (=> d!1251889 (= res!1750128 (= (csize!28690 (right!35332 (right!35332 t!4386))) (+ (size!34567 (left!35002 (right!35332 (right!35332 t!4386)))) (size!34567 (right!35332 (right!35332 (right!35332 t!4386)))))))))

(assert (=> d!1251889 (= (inv!62083 (right!35332 (right!35332 t!4386))) e!2644193)))

(declare-fun b!4257317 () Bool)

(declare-fun res!1750129 () Bool)

(assert (=> b!4257317 (=> (not res!1750129) (not e!2644193))))

(assert (=> b!4257317 (= res!1750129 (and (not (= (left!35002 (right!35332 (right!35332 t!4386))) Empty!14230)) (not (= (right!35332 (right!35332 (right!35332 t!4386))) Empty!14230))))))

(declare-fun b!4257318 () Bool)

(declare-fun res!1750130 () Bool)

(assert (=> b!4257318 (=> (not res!1750130) (not e!2644193))))

(assert (=> b!4257318 (= res!1750130 (= (cheight!14441 (right!35332 (right!35332 t!4386))) (+ (max!0 (height!1854 (left!35002 (right!35332 (right!35332 t!4386)))) (height!1854 (right!35332 (right!35332 (right!35332 t!4386))))) 1)))))

(declare-fun b!4257319 () Bool)

(assert (=> b!4257319 (= e!2644193 (<= 0 (cheight!14441 (right!35332 (right!35332 t!4386)))))))

(assert (= (and d!1251889 res!1750128) b!4257317))

(assert (= (and b!4257317 res!1750129) b!4257318))

(assert (= (and b!4257318 res!1750130) b!4257319))

(declare-fun m!4842531 () Bool)

(assert (=> d!1251889 m!4842531))

(declare-fun m!4842533 () Bool)

(assert (=> d!1251889 m!4842533))

(declare-fun m!4842535 () Bool)

(assert (=> b!4257318 m!4842535))

(declare-fun m!4842537 () Bool)

(assert (=> b!4257318 m!4842537))

(assert (=> b!4257318 m!4842535))

(assert (=> b!4257318 m!4842537))

(declare-fun m!4842539 () Bool)

(assert (=> b!4257318 m!4842539))

(assert (=> b!4257161 d!1251889))

(declare-fun d!1251891 () Bool)

(declare-fun res!1750131 () Bool)

(declare-fun e!2644194 () Bool)

(assert (=> d!1251891 (=> (not res!1750131) (not e!2644194))))

(assert (=> d!1251891 (= res!1750131 (= (csize!28690 (left!35002 (left!35002 t!4386))) (+ (size!34567 (left!35002 (left!35002 (left!35002 t!4386)))) (size!34567 (right!35332 (left!35002 (left!35002 t!4386)))))))))

(assert (=> d!1251891 (= (inv!62083 (left!35002 (left!35002 t!4386))) e!2644194)))

(declare-fun b!4257320 () Bool)

(declare-fun res!1750132 () Bool)

(assert (=> b!4257320 (=> (not res!1750132) (not e!2644194))))

(assert (=> b!4257320 (= res!1750132 (and (not (= (left!35002 (left!35002 (left!35002 t!4386))) Empty!14230)) (not (= (right!35332 (left!35002 (left!35002 t!4386))) Empty!14230))))))

(declare-fun b!4257321 () Bool)

(declare-fun res!1750133 () Bool)

(assert (=> b!4257321 (=> (not res!1750133) (not e!2644194))))

(assert (=> b!4257321 (= res!1750133 (= (cheight!14441 (left!35002 (left!35002 t!4386))) (+ (max!0 (height!1854 (left!35002 (left!35002 (left!35002 t!4386)))) (height!1854 (right!35332 (left!35002 (left!35002 t!4386))))) 1)))))

(declare-fun b!4257322 () Bool)

(assert (=> b!4257322 (= e!2644194 (<= 0 (cheight!14441 (left!35002 (left!35002 t!4386)))))))

(assert (= (and d!1251891 res!1750131) b!4257320))

(assert (= (and b!4257320 res!1750132) b!4257321))

(assert (= (and b!4257321 res!1750133) b!4257322))

(declare-fun m!4842541 () Bool)

(assert (=> d!1251891 m!4842541))

(declare-fun m!4842543 () Bool)

(assert (=> d!1251891 m!4842543))

(declare-fun m!4842545 () Bool)

(assert (=> b!4257321 m!4842545))

(declare-fun m!4842547 () Bool)

(assert (=> b!4257321 m!4842547))

(assert (=> b!4257321 m!4842545))

(assert (=> b!4257321 m!4842547))

(declare-fun m!4842549 () Bool)

(assert (=> b!4257321 m!4842549))

(assert (=> b!4257183 d!1251891))

(declare-fun b!4257323 () Bool)

(declare-fun res!1750138 () Bool)

(declare-fun e!2644195 () Bool)

(assert (=> b!4257323 (=> (not res!1750138) (not e!2644195))))

(assert (=> b!4257323 (= res!1750138 (isBalanced!3790 (left!35002 (right!35332 (right!35332 t!4386)))))))

(declare-fun b!4257324 () Bool)

(declare-fun e!2644196 () Bool)

(assert (=> b!4257324 (= e!2644196 e!2644195)))

(declare-fun res!1750136 () Bool)

(assert (=> b!4257324 (=> (not res!1750136) (not e!2644195))))

(assert (=> b!4257324 (= res!1750136 (<= (- 1) (- (height!1854 (left!35002 (right!35332 (right!35332 t!4386)))) (height!1854 (right!35332 (right!35332 (right!35332 t!4386)))))))))

(declare-fun b!4257325 () Bool)

(declare-fun res!1750139 () Bool)

(assert (=> b!4257325 (=> (not res!1750139) (not e!2644195))))

(assert (=> b!4257325 (= res!1750139 (not (isEmpty!27955 (left!35002 (right!35332 (right!35332 t!4386))))))))

(declare-fun b!4257326 () Bool)

(declare-fun res!1750135 () Bool)

(assert (=> b!4257326 (=> (not res!1750135) (not e!2644195))))

(assert (=> b!4257326 (= res!1750135 (<= (- (height!1854 (left!35002 (right!35332 (right!35332 t!4386)))) (height!1854 (right!35332 (right!35332 (right!35332 t!4386))))) 1))))

(declare-fun d!1251893 () Bool)

(declare-fun res!1750134 () Bool)

(assert (=> d!1251893 (=> res!1750134 e!2644196)))

(assert (=> d!1251893 (= res!1750134 (not ((_ is Node!14230) (right!35332 (right!35332 t!4386)))))))

(assert (=> d!1251893 (= (isBalanced!3790 (right!35332 (right!35332 t!4386))) e!2644196)))

(declare-fun b!4257327 () Bool)

(assert (=> b!4257327 (= e!2644195 (not (isEmpty!27955 (right!35332 (right!35332 (right!35332 t!4386))))))))

(declare-fun b!4257328 () Bool)

(declare-fun res!1750137 () Bool)

(assert (=> b!4257328 (=> (not res!1750137) (not e!2644195))))

(assert (=> b!4257328 (= res!1750137 (isBalanced!3790 (right!35332 (right!35332 (right!35332 t!4386)))))))

(assert (= (and d!1251893 (not res!1750134)) b!4257324))

(assert (= (and b!4257324 res!1750136) b!4257326))

(assert (= (and b!4257326 res!1750135) b!4257323))

(assert (= (and b!4257323 res!1750138) b!4257328))

(assert (= (and b!4257328 res!1750137) b!4257325))

(assert (= (and b!4257325 res!1750139) b!4257327))

(assert (=> b!4257326 m!4842535))

(assert (=> b!4257326 m!4842537))

(declare-fun m!4842551 () Bool)

(assert (=> b!4257327 m!4842551))

(assert (=> b!4257324 m!4842535))

(assert (=> b!4257324 m!4842537))

(declare-fun m!4842553 () Bool)

(assert (=> b!4257323 m!4842553))

(declare-fun m!4842555 () Bool)

(assert (=> b!4257328 m!4842555))

(declare-fun m!4842557 () Bool)

(assert (=> b!4257325 m!4842557))

(assert (=> b!4257215 d!1251893))

(declare-fun d!1251895 () Bool)

(declare-fun res!1750140 () Bool)

(declare-fun e!2644197 () Bool)

(assert (=> d!1251895 (=> (not res!1750140) (not e!2644197))))

(assert (=> d!1251895 (= res!1750140 (<= (size!34566 (list!17030 (xs!17536 (right!35332 (left!35002 t!4386))))) 512))))

(assert (=> d!1251895 (= (inv!62084 (right!35332 (left!35002 t!4386))) e!2644197)))

(declare-fun b!4257329 () Bool)

(declare-fun res!1750141 () Bool)

(assert (=> b!4257329 (=> (not res!1750141) (not e!2644197))))

(assert (=> b!4257329 (= res!1750141 (= (csize!28691 (right!35332 (left!35002 t!4386))) (size!34566 (list!17030 (xs!17536 (right!35332 (left!35002 t!4386)))))))))

(declare-fun b!4257330 () Bool)

(assert (=> b!4257330 (= e!2644197 (and (> (csize!28691 (right!35332 (left!35002 t!4386))) 0) (<= (csize!28691 (right!35332 (left!35002 t!4386))) 512)))))

(assert (= (and d!1251895 res!1750140) b!4257329))

(assert (= (and b!4257329 res!1750141) b!4257330))

(declare-fun m!4842559 () Bool)

(assert (=> d!1251895 m!4842559))

(assert (=> d!1251895 m!4842559))

(declare-fun m!4842561 () Bool)

(assert (=> d!1251895 m!4842561))

(assert (=> b!4257329 m!4842559))

(assert (=> b!4257329 m!4842559))

(assert (=> b!4257329 m!4842561))

(assert (=> b!4257192 d!1251895))

(declare-fun d!1251897 () Bool)

(declare-fun lt!1509919 () Int)

(assert (=> d!1251897 (>= lt!1509919 0)))

(declare-fun e!2644198 () Int)

(assert (=> d!1251897 (= lt!1509919 e!2644198)))

(declare-fun c!722800 () Bool)

(assert (=> d!1251897 (= c!722800 ((_ is Nil!47222) (t!352959 (innerList!14290 (xs!17536 t!4386)))))))

(assert (=> d!1251897 (= (size!34566 (t!352959 (innerList!14290 (xs!17536 t!4386)))) lt!1509919)))

(declare-fun b!4257331 () Bool)

(assert (=> b!4257331 (= e!2644198 0)))

(declare-fun b!4257332 () Bool)

(assert (=> b!4257332 (= e!2644198 (+ 1 (size!34566 (t!352959 (t!352959 (innerList!14290 (xs!17536 t!4386)))))))))

(assert (= (and d!1251897 c!722800) b!4257331))

(assert (= (and d!1251897 (not c!722800)) b!4257332))

(declare-fun m!4842563 () Bool)

(assert (=> b!4257332 m!4842563))

(assert (=> b!4257132 d!1251897))

(assert (=> b!4257109 d!1251823))

(assert (=> b!4257109 d!1251825))

(declare-fun d!1251899 () Bool)

(declare-fun res!1750142 () Bool)

(declare-fun e!2644199 () Bool)

(assert (=> d!1251899 (=> (not res!1750142) (not e!2644199))))

(assert (=> d!1251899 (= res!1750142 (= (csize!28690 (left!35002 (right!35332 t!4386))) (+ (size!34567 (left!35002 (left!35002 (right!35332 t!4386)))) (size!34567 (right!35332 (left!35002 (right!35332 t!4386)))))))))

(assert (=> d!1251899 (= (inv!62083 (left!35002 (right!35332 t!4386))) e!2644199)))

(declare-fun b!4257333 () Bool)

(declare-fun res!1750143 () Bool)

(assert (=> b!4257333 (=> (not res!1750143) (not e!2644199))))

(assert (=> b!4257333 (= res!1750143 (and (not (= (left!35002 (left!35002 (right!35332 t!4386))) Empty!14230)) (not (= (right!35332 (left!35002 (right!35332 t!4386))) Empty!14230))))))

(declare-fun b!4257334 () Bool)

(declare-fun res!1750144 () Bool)

(assert (=> b!4257334 (=> (not res!1750144) (not e!2644199))))

(assert (=> b!4257334 (= res!1750144 (= (cheight!14441 (left!35002 (right!35332 t!4386))) (+ (max!0 (height!1854 (left!35002 (left!35002 (right!35332 t!4386)))) (height!1854 (right!35332 (left!35002 (right!35332 t!4386))))) 1)))))

(declare-fun b!4257335 () Bool)

(assert (=> b!4257335 (= e!2644199 (<= 0 (cheight!14441 (left!35002 (right!35332 t!4386)))))))

(assert (= (and d!1251899 res!1750142) b!4257333))

(assert (= (and b!4257333 res!1750143) b!4257334))

(assert (= (and b!4257334 res!1750144) b!4257335))

(declare-fun m!4842565 () Bool)

(assert (=> d!1251899 m!4842565))

(declare-fun m!4842567 () Bool)

(assert (=> d!1251899 m!4842567))

(declare-fun m!4842569 () Bool)

(assert (=> b!4257334 m!4842569))

(declare-fun m!4842571 () Bool)

(assert (=> b!4257334 m!4842571))

(assert (=> b!4257334 m!4842569))

(assert (=> b!4257334 m!4842571))

(declare-fun m!4842573 () Bool)

(assert (=> b!4257334 m!4842573))

(assert (=> b!4257158 d!1251899))

(declare-fun d!1251901 () Bool)

(declare-fun lt!1509922 () Int)

(assert (=> d!1251901 (>= lt!1509922 0)))

(declare-fun e!2644202 () Int)

(assert (=> d!1251901 (= lt!1509922 e!2644202)))

(declare-fun c!722803 () Bool)

(assert (=> d!1251901 (= c!722803 ((_ is Nil!47223) lt!1509907))))

(assert (=> d!1251901 (= (size!34570 lt!1509907) lt!1509922)))

(declare-fun b!4257340 () Bool)

(assert (=> b!4257340 (= e!2644202 0)))

(declare-fun b!4257341 () Bool)

(assert (=> b!4257341 (= e!2644202 (+ 1 (size!34570 (t!352960 lt!1509907))))))

(assert (= (and d!1251901 c!722803) b!4257340))

(assert (= (and d!1251901 (not c!722803)) b!4257341))

(declare-fun m!4842575 () Bool)

(assert (=> b!4257341 m!4842575))

(assert (=> d!1251803 d!1251901))

(declare-fun d!1251903 () Bool)

(declare-fun lt!1509923 () Int)

(assert (=> d!1251903 (>= lt!1509923 0)))

(declare-fun e!2644203 () Int)

(assert (=> d!1251903 (= lt!1509923 e!2644203)))

(declare-fun c!722804 () Bool)

(assert (=> d!1251903 (= c!722804 ((_ is Nil!47222) (list!17030 (xs!17536 t!4386))))))

(assert (=> d!1251903 (= (size!34566 (list!17030 (xs!17536 t!4386))) lt!1509923)))

(declare-fun b!4257342 () Bool)

(assert (=> b!4257342 (= e!2644203 0)))

(declare-fun b!4257343 () Bool)

(assert (=> b!4257343 (= e!2644203 (+ 1 (size!34566 (t!352959 (list!17030 (xs!17536 t!4386))))))))

(assert (= (and d!1251903 c!722804) b!4257342))

(assert (= (and d!1251903 (not c!722804)) b!4257343))

(declare-fun m!4842577 () Bool)

(assert (=> b!4257343 m!4842577))

(assert (=> d!1251803 d!1251903))

(declare-fun d!1251905 () Bool)

(declare-fun lt!1509924 () Int)

(assert (=> d!1251905 (>= lt!1509924 0)))

(declare-fun e!2644204 () Int)

(assert (=> d!1251905 (= lt!1509924 e!2644204)))

(declare-fun c!722805 () Bool)

(assert (=> d!1251905 (= c!722805 ((_ is Nil!47223) (list!17034 (xs!17537 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))))))

(assert (=> d!1251905 (= (size!34570 (list!17034 (xs!17537 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))) lt!1509924)))

(declare-fun b!4257344 () Bool)

(assert (=> b!4257344 (= e!2644204 0)))

(declare-fun b!4257345 () Bool)

(assert (=> b!4257345 (= e!2644204 (+ 1 (size!34570 (t!352960 (list!17034 (xs!17537 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))))))))

(assert (= (and d!1251905 c!722805) b!4257344))

(assert (= (and d!1251905 (not c!722805)) b!4257345))

(declare-fun m!4842579 () Bool)

(assert (=> b!4257345 m!4842579))

(assert (=> b!4257208 d!1251905))

(declare-fun d!1251907 () Bool)

(assert (=> d!1251907 (= (list!17034 (xs!17537 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (innerList!14291 (xs!17537 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))))))

(assert (=> b!4257208 d!1251907))

(declare-fun d!1251909 () Bool)

(assert (=> d!1251909 (= (inv!62078 (xs!17536 (left!35002 (left!35002 t!4386)))) (<= (size!34566 (innerList!14290 (xs!17536 (left!35002 (left!35002 t!4386))))) 2147483647))))

(declare-fun bs!598858 () Bool)

(assert (= bs!598858 d!1251909))

(declare-fun m!4842581 () Bool)

(assert (=> bs!598858 m!4842581))

(assert (=> b!4257227 d!1251909))

(assert (=> b!4257213 d!1251877))

(assert (=> b!4257213 d!1251879))

(declare-fun d!1251911 () Bool)

(declare-fun res!1750145 () Bool)

(declare-fun e!2644205 () Bool)

(assert (=> d!1251911 (=> (not res!1750145) (not e!2644205))))

(assert (=> d!1251911 (= res!1750145 (= (csize!28690 (right!35332 (left!35002 t!4386))) (+ (size!34567 (left!35002 (right!35332 (left!35002 t!4386)))) (size!34567 (right!35332 (right!35332 (left!35002 t!4386)))))))))

(assert (=> d!1251911 (= (inv!62083 (right!35332 (left!35002 t!4386))) e!2644205)))

(declare-fun b!4257346 () Bool)

(declare-fun res!1750146 () Bool)

(assert (=> b!4257346 (=> (not res!1750146) (not e!2644205))))

(assert (=> b!4257346 (= res!1750146 (and (not (= (left!35002 (right!35332 (left!35002 t!4386))) Empty!14230)) (not (= (right!35332 (right!35332 (left!35002 t!4386))) Empty!14230))))))

(declare-fun b!4257347 () Bool)

(declare-fun res!1750147 () Bool)

(assert (=> b!4257347 (=> (not res!1750147) (not e!2644205))))

(assert (=> b!4257347 (= res!1750147 (= (cheight!14441 (right!35332 (left!35002 t!4386))) (+ (max!0 (height!1854 (left!35002 (right!35332 (left!35002 t!4386)))) (height!1854 (right!35332 (right!35332 (left!35002 t!4386))))) 1)))))

(declare-fun b!4257348 () Bool)

(assert (=> b!4257348 (= e!2644205 (<= 0 (cheight!14441 (right!35332 (left!35002 t!4386)))))))

(assert (= (and d!1251911 res!1750145) b!4257346))

(assert (= (and b!4257346 res!1750146) b!4257347))

(assert (= (and b!4257347 res!1750147) b!4257348))

(declare-fun m!4842583 () Bool)

(assert (=> d!1251911 m!4842583))

(declare-fun m!4842585 () Bool)

(assert (=> d!1251911 m!4842585))

(declare-fun m!4842587 () Bool)

(assert (=> b!4257347 m!4842587))

(declare-fun m!4842589 () Bool)

(assert (=> b!4257347 m!4842589))

(assert (=> b!4257347 m!4842587))

(assert (=> b!4257347 m!4842589))

(declare-fun m!4842591 () Bool)

(assert (=> b!4257347 m!4842591))

(assert (=> b!4257190 d!1251911))

(declare-fun d!1251913 () Bool)

(declare-fun c!722806 () Bool)

(assert (=> d!1251913 (= c!722806 ((_ is Node!14230) (left!35002 (left!35002 (right!35332 t!4386)))))))

(declare-fun e!2644206 () Bool)

(assert (=> d!1251913 (= (inv!62077 (left!35002 (left!35002 (right!35332 t!4386)))) e!2644206)))

(declare-fun b!4257349 () Bool)

(assert (=> b!4257349 (= e!2644206 (inv!62083 (left!35002 (left!35002 (right!35332 t!4386)))))))

(declare-fun b!4257350 () Bool)

(declare-fun e!2644207 () Bool)

(assert (=> b!4257350 (= e!2644206 e!2644207)))

(declare-fun res!1750148 () Bool)

(assert (=> b!4257350 (= res!1750148 (not ((_ is Leaf!21995) (left!35002 (left!35002 (right!35332 t!4386))))))))

(assert (=> b!4257350 (=> res!1750148 e!2644207)))

(declare-fun b!4257351 () Bool)

(assert (=> b!4257351 (= e!2644207 (inv!62084 (left!35002 (left!35002 (right!35332 t!4386)))))))

(assert (= (and d!1251913 c!722806) b!4257349))

(assert (= (and d!1251913 (not c!722806)) b!4257350))

(assert (= (and b!4257350 (not res!1750148)) b!4257351))

(declare-fun m!4842593 () Bool)

(assert (=> b!4257349 m!4842593))

(declare-fun m!4842595 () Bool)

(assert (=> b!4257351 m!4842595))

(assert (=> b!4257234 d!1251913))

(declare-fun d!1251915 () Bool)

(declare-fun c!722807 () Bool)

(assert (=> d!1251915 (= c!722807 ((_ is Node!14230) (right!35332 (left!35002 (right!35332 t!4386)))))))

(declare-fun e!2644208 () Bool)

(assert (=> d!1251915 (= (inv!62077 (right!35332 (left!35002 (right!35332 t!4386)))) e!2644208)))

(declare-fun b!4257352 () Bool)

(assert (=> b!4257352 (= e!2644208 (inv!62083 (right!35332 (left!35002 (right!35332 t!4386)))))))

(declare-fun b!4257353 () Bool)

(declare-fun e!2644209 () Bool)

(assert (=> b!4257353 (= e!2644208 e!2644209)))

(declare-fun res!1750149 () Bool)

(assert (=> b!4257353 (= res!1750149 (not ((_ is Leaf!21995) (right!35332 (left!35002 (right!35332 t!4386))))))))

(assert (=> b!4257353 (=> res!1750149 e!2644209)))

(declare-fun b!4257354 () Bool)

(assert (=> b!4257354 (= e!2644209 (inv!62084 (right!35332 (left!35002 (right!35332 t!4386)))))))

(assert (= (and d!1251915 c!722807) b!4257352))

(assert (= (and d!1251915 (not c!722807)) b!4257353))

(assert (= (and b!4257353 (not res!1750149)) b!4257354))

(declare-fun m!4842597 () Bool)

(assert (=> b!4257352 m!4842597))

(declare-fun m!4842599 () Bool)

(assert (=> b!4257354 m!4842599))

(assert (=> b!4257234 d!1251915))

(declare-fun d!1251917 () Bool)

(declare-fun lt!1509927 () Int)

(assert (=> d!1251917 (= lt!1509927 (size!34566 (list!17032 (left!35002 (right!35332 t!4386)))))))

(assert (=> d!1251917 (= lt!1509927 (ite ((_ is Empty!14230) (left!35002 (right!35332 t!4386))) 0 (ite ((_ is Leaf!21995) (left!35002 (right!35332 t!4386))) (csize!28691 (left!35002 (right!35332 t!4386))) (csize!28690 (left!35002 (right!35332 t!4386))))))))

(assert (=> d!1251917 (= (size!34567 (left!35002 (right!35332 t!4386))) lt!1509927)))

(declare-fun bs!598859 () Bool)

(assert (= bs!598859 d!1251917))

(declare-fun m!4842601 () Bool)

(assert (=> bs!598859 m!4842601))

(assert (=> bs!598859 m!4842601))

(declare-fun m!4842603 () Bool)

(assert (=> bs!598859 m!4842603))

(assert (=> d!1251827 d!1251917))

(declare-fun d!1251919 () Bool)

(declare-fun lt!1509928 () Int)

(assert (=> d!1251919 (= lt!1509928 (size!34566 (list!17032 (right!35332 (right!35332 t!4386)))))))

(assert (=> d!1251919 (= lt!1509928 (ite ((_ is Empty!14230) (right!35332 (right!35332 t!4386))) 0 (ite ((_ is Leaf!21995) (right!35332 (right!35332 t!4386))) (csize!28691 (right!35332 (right!35332 t!4386))) (csize!28690 (right!35332 (right!35332 t!4386))))))))

(assert (=> d!1251919 (= (size!34567 (right!35332 (right!35332 t!4386))) lt!1509928)))

(declare-fun bs!598860 () Bool)

(assert (= bs!598860 d!1251919))

(declare-fun m!4842605 () Bool)

(assert (=> bs!598860 m!4842605))

(assert (=> bs!598860 m!4842605))

(declare-fun m!4842607 () Bool)

(assert (=> bs!598860 m!4842607))

(assert (=> d!1251827 d!1251919))

(declare-fun d!1251921 () Bool)

(declare-fun lt!1509929 () Int)

(assert (=> d!1251921 (= lt!1509929 (size!34566 (list!17032 (left!35002 t!4386))))))

(assert (=> d!1251921 (= lt!1509929 (ite ((_ is Empty!14230) (left!35002 t!4386)) 0 (ite ((_ is Leaf!21995) (left!35002 t!4386)) (csize!28691 (left!35002 t!4386)) (csize!28690 (left!35002 t!4386)))))))

(assert (=> d!1251921 (= (size!34567 (left!35002 t!4386)) lt!1509929)))

(declare-fun bs!598861 () Bool)

(assert (= bs!598861 d!1251921))

(assert (=> bs!598861 m!4842267))

(assert (=> bs!598861 m!4842267))

(declare-fun m!4842609 () Bool)

(assert (=> bs!598861 m!4842609))

(assert (=> d!1251779 d!1251921))

(declare-fun d!1251923 () Bool)

(declare-fun lt!1509930 () Int)

(assert (=> d!1251923 (= lt!1509930 (size!34566 (list!17032 (right!35332 t!4386))))))

(assert (=> d!1251923 (= lt!1509930 (ite ((_ is Empty!14230) (right!35332 t!4386)) 0 (ite ((_ is Leaf!21995) (right!35332 t!4386)) (csize!28691 (right!35332 t!4386)) (csize!28690 (right!35332 t!4386)))))))

(assert (=> d!1251923 (= (size!34567 (right!35332 t!4386)) lt!1509930)))

(declare-fun bs!598862 () Bool)

(assert (= bs!598862 d!1251923))

(assert (=> bs!598862 m!4842349))

(assert (=> bs!598862 m!4842349))

(declare-fun m!4842611 () Bool)

(assert (=> bs!598862 m!4842611))

(assert (=> d!1251779 d!1251923))

(declare-fun d!1251925 () Bool)

(assert (=> d!1251925 (= (isEmpty!27956 (list!17032 (right!35332 t!4386))) ((_ is Nil!47222) (list!17032 (right!35332 t!4386))))))

(assert (=> d!1251829 d!1251925))

(declare-fun d!1251927 () Bool)

(declare-fun c!722812 () Bool)

(assert (=> d!1251927 (= c!722812 ((_ is Empty!14230) (right!35332 t!4386)))))

(declare-fun e!2644214 () List!47346)

(assert (=> d!1251927 (= (list!17032 (right!35332 t!4386)) e!2644214)))

(declare-fun b!4257366 () Bool)

(declare-fun e!2644215 () List!47346)

(declare-fun ++!12015 (List!47346 List!47346) List!47346)

(assert (=> b!4257366 (= e!2644215 (++!12015 (list!17032 (left!35002 (right!35332 t!4386))) (list!17032 (right!35332 (right!35332 t!4386)))))))

(declare-fun b!4257363 () Bool)

(assert (=> b!4257363 (= e!2644214 Nil!47222)))

(declare-fun b!4257365 () Bool)

(assert (=> b!4257365 (= e!2644215 (list!17030 (xs!17536 (right!35332 t!4386))))))

(declare-fun b!4257364 () Bool)

(assert (=> b!4257364 (= e!2644214 e!2644215)))

(declare-fun c!722813 () Bool)

(assert (=> b!4257364 (= c!722813 ((_ is Leaf!21995) (right!35332 t!4386)))))

(assert (= (and d!1251927 c!722812) b!4257363))

(assert (= (and d!1251927 (not c!722812)) b!4257364))

(assert (= (and b!4257364 c!722813) b!4257365))

(assert (= (and b!4257364 (not c!722813)) b!4257366))

(assert (=> b!4257366 m!4842601))

(assert (=> b!4257366 m!4842605))

(assert (=> b!4257366 m!4842601))

(assert (=> b!4257366 m!4842605))

(declare-fun m!4842613 () Bool)

(assert (=> b!4257366 m!4842613))

(assert (=> b!4257365 m!4842281))

(assert (=> d!1251829 d!1251927))

(assert (=> d!1251829 d!1251923))

(declare-fun d!1251929 () Bool)

(declare-fun lt!1509931 () Int)

(assert (=> d!1251929 (>= lt!1509931 0)))

(declare-fun e!2644216 () Int)

(assert (=> d!1251929 (= lt!1509931 e!2644216)))

(declare-fun c!722814 () Bool)

(assert (=> d!1251929 (= c!722814 ((_ is Nil!47222) (innerList!14290 (xs!17536 (right!35332 t!4386)))))))

(assert (=> d!1251929 (= (size!34566 (innerList!14290 (xs!17536 (right!35332 t!4386)))) lt!1509931)))

(declare-fun b!4257367 () Bool)

(assert (=> b!4257367 (= e!2644216 0)))

(declare-fun b!4257368 () Bool)

(assert (=> b!4257368 (= e!2644216 (+ 1 (size!34566 (t!352959 (innerList!14290 (xs!17536 (right!35332 t!4386)))))))))

(assert (= (and d!1251929 c!722814) b!4257367))

(assert (= (and d!1251929 (not c!722814)) b!4257368))

(declare-fun m!4842615 () Bool)

(assert (=> b!4257368 m!4842615))

(assert (=> d!1251787 d!1251929))

(declare-fun d!1251931 () Bool)

(declare-fun res!1750150 () Bool)

(declare-fun e!2644217 () Bool)

(assert (=> d!1251931 (=> (not res!1750150) (not e!2644217))))

(assert (=> d!1251931 (= res!1750150 (<= (size!34566 (list!17030 (xs!17536 (left!35002 (right!35332 t!4386))))) 512))))

(assert (=> d!1251931 (= (inv!62084 (left!35002 (right!35332 t!4386))) e!2644217)))

(declare-fun b!4257369 () Bool)

(declare-fun res!1750151 () Bool)

(assert (=> b!4257369 (=> (not res!1750151) (not e!2644217))))

(assert (=> b!4257369 (= res!1750151 (= (csize!28691 (left!35002 (right!35332 t!4386))) (size!34566 (list!17030 (xs!17536 (left!35002 (right!35332 t!4386)))))))))

(declare-fun b!4257370 () Bool)

(assert (=> b!4257370 (= e!2644217 (and (> (csize!28691 (left!35002 (right!35332 t!4386))) 0) (<= (csize!28691 (left!35002 (right!35332 t!4386))) 512)))))

(assert (= (and d!1251931 res!1750150) b!4257369))

(assert (= (and b!4257369 res!1750151) b!4257370))

(declare-fun m!4842617 () Bool)

(assert (=> d!1251931 m!4842617))

(assert (=> d!1251931 m!4842617))

(declare-fun m!4842619 () Bool)

(assert (=> d!1251931 m!4842619))

(assert (=> b!4257369 m!4842617))

(assert (=> b!4257369 m!4842617))

(assert (=> b!4257369 m!4842619))

(assert (=> b!4257160 d!1251931))

(declare-fun d!1251933 () Bool)

(assert (=> d!1251933 (= (max!0 (height!1854 (left!35002 (left!35002 t!4386))) (height!1854 (right!35332 (left!35002 t!4386)))) (ite (< (height!1854 (left!35002 (left!35002 t!4386))) (height!1854 (right!35332 (left!35002 t!4386)))) (height!1854 (right!35332 (left!35002 t!4386))) (height!1854 (left!35002 (left!35002 t!4386)))))))

(assert (=> b!4257122 d!1251933))

(declare-fun d!1251935 () Bool)

(assert (=> d!1251935 (= (height!1854 (left!35002 (left!35002 t!4386))) (ite ((_ is Empty!14230) (left!35002 (left!35002 t!4386))) 0 (ite ((_ is Leaf!21995) (left!35002 (left!35002 t!4386))) 1 (cheight!14441 (left!35002 (left!35002 t!4386))))))))

(assert (=> b!4257122 d!1251935))

(declare-fun d!1251937 () Bool)

(assert (=> d!1251937 (= (height!1854 (right!35332 (left!35002 t!4386))) (ite ((_ is Empty!14230) (right!35332 (left!35002 t!4386))) 0 (ite ((_ is Leaf!21995) (right!35332 (left!35002 t!4386))) 1 (cheight!14441 (right!35332 (left!35002 t!4386))))))))

(assert (=> b!4257122 d!1251937))

(declare-fun d!1251939 () Bool)

(assert (=> d!1251939 (= (max!0 (height!1854 (left!35002 (right!35332 t!4386))) (height!1854 (right!35332 (right!35332 t!4386)))) (ite (< (height!1854 (left!35002 (right!35332 t!4386))) (height!1854 (right!35332 (right!35332 t!4386)))) (height!1854 (right!35332 (right!35332 t!4386))) (height!1854 (left!35002 (right!35332 t!4386)))))))

(assert (=> b!4257194 d!1251939))

(assert (=> b!4257194 d!1251877))

(assert (=> b!4257194 d!1251879))

(assert (=> b!4257149 d!1251935))

(assert (=> b!4257149 d!1251937))

(assert (=> d!1251831 d!1251903))

(assert (=> d!1251831 d!1251809))

(declare-fun d!1251941 () Bool)

(assert (=> d!1251941 (= (inv!62078 (xs!17536 (right!35332 (left!35002 t!4386)))) (<= (size!34566 (innerList!14290 (xs!17536 (right!35332 (left!35002 t!4386))))) 2147483647))))

(declare-fun bs!598863 () Bool)

(assert (= bs!598863 d!1251941))

(declare-fun m!4842621 () Bool)

(assert (=> bs!598863 m!4842621))

(assert (=> b!4257230 d!1251941))

(declare-fun d!1251943 () Bool)

(assert (=> d!1251943 (= (max!0 (height!1854 (left!35002 t!4386)) (height!1854 (right!35332 t!4386))) (ite (< (height!1854 (left!35002 t!4386)) (height!1854 (right!35332 t!4386))) (height!1854 (right!35332 t!4386)) (height!1854 (left!35002 t!4386))))))

(assert (=> b!4257125 d!1251943))

(assert (=> b!4257125 d!1251781))

(assert (=> b!4257125 d!1251783))

(declare-fun d!1251945 () Bool)

(declare-fun lt!1509932 () Int)

(assert (=> d!1251945 (= lt!1509932 (size!34566 (list!17032 (left!35002 (left!35002 t!4386)))))))

(assert (=> d!1251945 (= lt!1509932 (ite ((_ is Empty!14230) (left!35002 (left!35002 t!4386))) 0 (ite ((_ is Leaf!21995) (left!35002 (left!35002 t!4386))) (csize!28691 (left!35002 (left!35002 t!4386))) (csize!28690 (left!35002 (left!35002 t!4386))))))))

(assert (=> d!1251945 (= (size!34567 (left!35002 (left!35002 t!4386))) lt!1509932)))

(declare-fun bs!598864 () Bool)

(assert (= bs!598864 d!1251945))

(assert (=> bs!598864 m!4842523))

(assert (=> bs!598864 m!4842523))

(declare-fun m!4842623 () Bool)

(assert (=> bs!598864 m!4842623))

(assert (=> d!1251777 d!1251945))

(declare-fun d!1251947 () Bool)

(declare-fun lt!1509933 () Int)

(assert (=> d!1251947 (= lt!1509933 (size!34566 (list!17032 (right!35332 (left!35002 t!4386)))))))

(assert (=> d!1251947 (= lt!1509933 (ite ((_ is Empty!14230) (right!35332 (left!35002 t!4386))) 0 (ite ((_ is Leaf!21995) (right!35332 (left!35002 t!4386))) (csize!28691 (right!35332 (left!35002 t!4386))) (csize!28690 (right!35332 (left!35002 t!4386))))))))

(assert (=> d!1251947 (= (size!34567 (right!35332 (left!35002 t!4386))) lt!1509933)))

(declare-fun bs!598865 () Bool)

(assert (= bs!598865 d!1251947))

(assert (=> bs!598865 m!4842527))

(assert (=> bs!598865 m!4842527))

(declare-fun m!4842625 () Bool)

(assert (=> bs!598865 m!4842625))

(assert (=> d!1251777 d!1251947))

(declare-fun d!1251949 () Bool)

(declare-fun lt!1509934 () Int)

(assert (=> d!1251949 (>= lt!1509934 0)))

(declare-fun e!2644218 () Int)

(assert (=> d!1251949 (= lt!1509934 e!2644218)))

(declare-fun c!722815 () Bool)

(assert (=> d!1251949 (= c!722815 ((_ is Nil!47222) (list!17030 (xs!17536 (right!35332 t!4386)))))))

(assert (=> d!1251949 (= (size!34566 (list!17030 (xs!17536 (right!35332 t!4386)))) lt!1509934)))

(declare-fun b!4257371 () Bool)

(assert (=> b!4257371 (= e!2644218 0)))

(declare-fun b!4257372 () Bool)

(assert (=> b!4257372 (= e!2644218 (+ 1 (size!34566 (t!352959 (list!17030 (xs!17536 (right!35332 t!4386)))))))))

(assert (= (and d!1251949 c!722815) b!4257371))

(assert (= (and d!1251949 (not c!722815)) b!4257372))

(declare-fun m!4842627 () Bool)

(assert (=> b!4257372 m!4842627))

(assert (=> b!4257146 d!1251949))

(declare-fun d!1251951 () Bool)

(assert (=> d!1251951 (= (list!17030 (xs!17536 (right!35332 t!4386))) (innerList!14290 (xs!17536 (right!35332 t!4386))))))

(assert (=> b!4257146 d!1251951))

(declare-fun b!4257373 () Bool)

(declare-fun res!1750156 () Bool)

(declare-fun e!2644219 () Bool)

(assert (=> b!4257373 (=> (not res!1750156) (not e!2644219))))

(assert (=> b!4257373 (= res!1750156 (isBalanced!3790 (left!35002 (right!35332 (left!35002 t!4386)))))))

(declare-fun b!4257374 () Bool)

(declare-fun e!2644220 () Bool)

(assert (=> b!4257374 (= e!2644220 e!2644219)))

(declare-fun res!1750154 () Bool)

(assert (=> b!4257374 (=> (not res!1750154) (not e!2644219))))

(assert (=> b!4257374 (= res!1750154 (<= (- 1) (- (height!1854 (left!35002 (right!35332 (left!35002 t!4386)))) (height!1854 (right!35332 (right!35332 (left!35002 t!4386)))))))))

(declare-fun b!4257375 () Bool)

(declare-fun res!1750157 () Bool)

(assert (=> b!4257375 (=> (not res!1750157) (not e!2644219))))

(assert (=> b!4257375 (= res!1750157 (not (isEmpty!27955 (left!35002 (right!35332 (left!35002 t!4386))))))))

(declare-fun b!4257376 () Bool)

(declare-fun res!1750153 () Bool)

(assert (=> b!4257376 (=> (not res!1750153) (not e!2644219))))

(assert (=> b!4257376 (= res!1750153 (<= (- (height!1854 (left!35002 (right!35332 (left!35002 t!4386)))) (height!1854 (right!35332 (right!35332 (left!35002 t!4386))))) 1))))

(declare-fun d!1251953 () Bool)

(declare-fun res!1750152 () Bool)

(assert (=> d!1251953 (=> res!1750152 e!2644220)))

(assert (=> d!1251953 (= res!1750152 (not ((_ is Node!14230) (right!35332 (left!35002 t!4386)))))))

(assert (=> d!1251953 (= (isBalanced!3790 (right!35332 (left!35002 t!4386))) e!2644220)))

(declare-fun b!4257377 () Bool)

(assert (=> b!4257377 (= e!2644219 (not (isEmpty!27955 (right!35332 (right!35332 (left!35002 t!4386))))))))

(declare-fun b!4257378 () Bool)

(declare-fun res!1750155 () Bool)

(assert (=> b!4257378 (=> (not res!1750155) (not e!2644219))))

(assert (=> b!4257378 (= res!1750155 (isBalanced!3790 (right!35332 (right!35332 (left!35002 t!4386)))))))

(assert (= (and d!1251953 (not res!1750152)) b!4257374))

(assert (= (and b!4257374 res!1750154) b!4257376))

(assert (= (and b!4257376 res!1750153) b!4257373))

(assert (= (and b!4257373 res!1750156) b!4257378))

(assert (= (and b!4257378 res!1750155) b!4257375))

(assert (= (and b!4257375 res!1750157) b!4257377))

(assert (=> b!4257376 m!4842587))

(assert (=> b!4257376 m!4842589))

(declare-fun m!4842629 () Bool)

(assert (=> b!4257377 m!4842629))

(assert (=> b!4257374 m!4842587))

(assert (=> b!4257374 m!4842589))

(declare-fun m!4842631 () Bool)

(assert (=> b!4257373 m!4842631))

(declare-fun m!4842633 () Bool)

(assert (=> b!4257378 m!4842633))

(declare-fun m!4842635 () Bool)

(assert (=> b!4257375 m!4842635))

(assert (=> b!4257153 d!1251953))

(assert (=> b!4257196 d!1251903))

(assert (=> b!4257196 d!1251809))

(declare-fun d!1251955 () Bool)

(declare-fun c!722816 () Bool)

(assert (=> d!1251955 (= c!722816 ((_ is Node!14230) (left!35002 (left!35002 (left!35002 t!4386)))))))

(declare-fun e!2644221 () Bool)

(assert (=> d!1251955 (= (inv!62077 (left!35002 (left!35002 (left!35002 t!4386)))) e!2644221)))

(declare-fun b!4257379 () Bool)

(assert (=> b!4257379 (= e!2644221 (inv!62083 (left!35002 (left!35002 (left!35002 t!4386)))))))

(declare-fun b!4257380 () Bool)

(declare-fun e!2644222 () Bool)

(assert (=> b!4257380 (= e!2644221 e!2644222)))

(declare-fun res!1750158 () Bool)

(assert (=> b!4257380 (= res!1750158 (not ((_ is Leaf!21995) (left!35002 (left!35002 (left!35002 t!4386))))))))

(assert (=> b!4257380 (=> res!1750158 e!2644222)))

(declare-fun b!4257381 () Bool)

(assert (=> b!4257381 (= e!2644222 (inv!62084 (left!35002 (left!35002 (left!35002 t!4386)))))))

(assert (= (and d!1251955 c!722816) b!4257379))

(assert (= (and d!1251955 (not c!722816)) b!4257380))

(assert (= (and b!4257380 (not res!1750158)) b!4257381))

(declare-fun m!4842637 () Bool)

(assert (=> b!4257379 m!4842637))

(declare-fun m!4842639 () Bool)

(assert (=> b!4257381 m!4842639))

(assert (=> b!4257226 d!1251955))

(declare-fun d!1251957 () Bool)

(declare-fun c!722817 () Bool)

(assert (=> d!1251957 (= c!722817 ((_ is Node!14230) (right!35332 (left!35002 (left!35002 t!4386)))))))

(declare-fun e!2644223 () Bool)

(assert (=> d!1251957 (= (inv!62077 (right!35332 (left!35002 (left!35002 t!4386)))) e!2644223)))

(declare-fun b!4257382 () Bool)

(assert (=> b!4257382 (= e!2644223 (inv!62083 (right!35332 (left!35002 (left!35002 t!4386)))))))

(declare-fun b!4257383 () Bool)

(declare-fun e!2644224 () Bool)

(assert (=> b!4257383 (= e!2644223 e!2644224)))

(declare-fun res!1750159 () Bool)

(assert (=> b!4257383 (= res!1750159 (not ((_ is Leaf!21995) (right!35332 (left!35002 (left!35002 t!4386))))))))

(assert (=> b!4257383 (=> res!1750159 e!2644224)))

(declare-fun b!4257384 () Bool)

(assert (=> b!4257384 (= e!2644224 (inv!62084 (right!35332 (left!35002 (left!35002 t!4386)))))))

(assert (= (and d!1251957 c!722817) b!4257382))

(assert (= (and d!1251957 (not c!722817)) b!4257383))

(assert (= (and b!4257383 (not res!1750159)) b!4257384))

(declare-fun m!4842641 () Bool)

(assert (=> b!4257382 m!4842641))

(declare-fun m!4842643 () Bool)

(assert (=> b!4257384 m!4842643))

(assert (=> b!4257226 d!1251957))

(declare-fun b!4257385 () Bool)

(declare-fun res!1750164 () Bool)

(declare-fun e!2644225 () Bool)

(assert (=> b!4257385 (=> (not res!1750164) (not e!2644225))))

(assert (=> b!4257385 (= res!1750164 (isBalanced!3790 (left!35002 (left!35002 (right!35332 t!4386)))))))

(declare-fun b!4257386 () Bool)

(declare-fun e!2644226 () Bool)

(assert (=> b!4257386 (= e!2644226 e!2644225)))

(declare-fun res!1750162 () Bool)

(assert (=> b!4257386 (=> (not res!1750162) (not e!2644225))))

(assert (=> b!4257386 (= res!1750162 (<= (- 1) (- (height!1854 (left!35002 (left!35002 (right!35332 t!4386)))) (height!1854 (right!35332 (left!35002 (right!35332 t!4386)))))))))

(declare-fun b!4257387 () Bool)

(declare-fun res!1750165 () Bool)

(assert (=> b!4257387 (=> (not res!1750165) (not e!2644225))))

(assert (=> b!4257387 (= res!1750165 (not (isEmpty!27955 (left!35002 (left!35002 (right!35332 t!4386))))))))

(declare-fun b!4257388 () Bool)

(declare-fun res!1750161 () Bool)

(assert (=> b!4257388 (=> (not res!1750161) (not e!2644225))))

(assert (=> b!4257388 (= res!1750161 (<= (- (height!1854 (left!35002 (left!35002 (right!35332 t!4386)))) (height!1854 (right!35332 (left!35002 (right!35332 t!4386))))) 1))))

(declare-fun d!1251959 () Bool)

(declare-fun res!1750160 () Bool)

(assert (=> d!1251959 (=> res!1750160 e!2644226)))

(assert (=> d!1251959 (= res!1750160 (not ((_ is Node!14230) (left!35002 (right!35332 t!4386)))))))

(assert (=> d!1251959 (= (isBalanced!3790 (left!35002 (right!35332 t!4386))) e!2644226)))

(declare-fun b!4257389 () Bool)

(assert (=> b!4257389 (= e!2644225 (not (isEmpty!27955 (right!35332 (left!35002 (right!35332 t!4386))))))))

(declare-fun b!4257390 () Bool)

(declare-fun res!1750163 () Bool)

(assert (=> b!4257390 (=> (not res!1750163) (not e!2644225))))

(assert (=> b!4257390 (= res!1750163 (isBalanced!3790 (right!35332 (left!35002 (right!35332 t!4386)))))))

(assert (= (and d!1251959 (not res!1750160)) b!4257386))

(assert (= (and b!4257386 res!1750162) b!4257388))

(assert (= (and b!4257388 res!1750161) b!4257385))

(assert (= (and b!4257385 res!1750164) b!4257390))

(assert (= (and b!4257390 res!1750163) b!4257387))

(assert (= (and b!4257387 res!1750165) b!4257389))

(assert (=> b!4257388 m!4842569))

(assert (=> b!4257388 m!4842571))

(declare-fun m!4842645 () Bool)

(assert (=> b!4257389 m!4842645))

(assert (=> b!4257386 m!4842569))

(assert (=> b!4257386 m!4842571))

(declare-fun m!4842647 () Bool)

(assert (=> b!4257385 m!4842647))

(declare-fun m!4842649 () Bool)

(assert (=> b!4257390 m!4842649))

(declare-fun m!4842651 () Bool)

(assert (=> b!4257387 m!4842651))

(assert (=> b!4257210 d!1251959))

(declare-fun d!1251961 () Bool)

(assert (=> d!1251961 (= ($colon$colon!622 (map!9647 (t!352959 (list!17030 (xs!17536 t!4386))) f!428) (dynLambda!20210 f!428 (h!52642 (list!17030 (xs!17536 t!4386))))) (Cons!47223 (dynLambda!20210 f!428 (h!52642 (list!17030 (xs!17536 t!4386)))) (map!9647 (t!352959 (list!17030 (xs!17536 t!4386))) f!428)))))

(assert (=> b!4257171 d!1251961))

(declare-fun d!1251963 () Bool)

(declare-fun lt!1509935 () List!47347)

(assert (=> d!1251963 (= (size!34570 lt!1509935) (size!34566 (t!352959 (list!17030 (xs!17536 t!4386)))))))

(declare-fun e!2644227 () List!47347)

(assert (=> d!1251963 (= lt!1509935 e!2644227)))

(declare-fun c!722818 () Bool)

(assert (=> d!1251963 (= c!722818 ((_ is Nil!47222) (t!352959 (list!17030 (xs!17536 t!4386)))))))

(assert (=> d!1251963 (= (map!9647 (t!352959 (list!17030 (xs!17536 t!4386))) f!428) lt!1509935)))

(declare-fun b!4257391 () Bool)

(assert (=> b!4257391 (= e!2644227 Nil!47223)))

(declare-fun b!4257392 () Bool)

(assert (=> b!4257392 (= e!2644227 ($colon$colon!622 (map!9647 (t!352959 (t!352959 (list!17030 (xs!17536 t!4386)))) f!428) (dynLambda!20210 f!428 (h!52642 (t!352959 (list!17030 (xs!17536 t!4386)))))))))

(assert (= (and d!1251963 c!722818) b!4257391))

(assert (= (and d!1251963 (not c!722818)) b!4257392))

(declare-fun b_lambda!125427 () Bool)

(assert (=> (not b_lambda!125427) (not b!4257392)))

(declare-fun t!352975 () Bool)

(declare-fun tb!256751 () Bool)

(assert (=> (and start!407858 (= f!428 f!428) t!352975) tb!256751))

(declare-fun result!313264 () Bool)

(assert (=> tb!256751 (= result!313264 tp_is_empty!22843)))

(assert (=> b!4257392 t!352975))

(declare-fun b_and!337541 () Bool)

(assert (= b_and!337537 (and (=> t!352975 result!313264) b_and!337541)))

(declare-fun m!4842653 () Bool)

(assert (=> d!1251963 m!4842653))

(assert (=> d!1251963 m!4842577))

(declare-fun m!4842655 () Bool)

(assert (=> b!4257392 m!4842655))

(declare-fun m!4842657 () Bool)

(assert (=> b!4257392 m!4842657))

(assert (=> b!4257392 m!4842655))

(assert (=> b!4257392 m!4842657))

(declare-fun m!4842659 () Bool)

(assert (=> b!4257392 m!4842659))

(assert (=> b!4257171 d!1251963))

(declare-fun d!1251965 () Bool)

(declare-fun lt!1509936 () Int)

(assert (=> d!1251965 (>= lt!1509936 0)))

(declare-fun e!2644228 () Int)

(assert (=> d!1251965 (= lt!1509936 e!2644228)))

(declare-fun c!722819 () Bool)

(assert (=> d!1251965 (= c!722819 ((_ is Nil!47222) (list!17030 (xs!17536 (left!35002 t!4386)))))))

(assert (=> d!1251965 (= (size!34566 (list!17030 (xs!17536 (left!35002 t!4386)))) lt!1509936)))

(declare-fun b!4257393 () Bool)

(assert (=> b!4257393 (= e!2644228 0)))

(declare-fun b!4257394 () Bool)

(assert (=> b!4257394 (= e!2644228 (+ 1 (size!34566 (t!352959 (list!17030 (xs!17536 (left!35002 t!4386)))))))))

(assert (= (and d!1251965 c!722819) b!4257393))

(assert (= (and d!1251965 (not c!722819)) b!4257394))

(declare-fun m!4842661 () Bool)

(assert (=> b!4257394 m!4842661))

(assert (=> d!1251841 d!1251965))

(declare-fun d!1251967 () Bool)

(assert (=> d!1251967 (= (list!17030 (xs!17536 (left!35002 t!4386))) (innerList!14290 (xs!17536 (left!35002 t!4386))))))

(assert (=> d!1251841 d!1251967))

(declare-fun d!1251969 () Bool)

(assert (=> d!1251969 (= (inv!62078 (xs!17536 (right!35332 (right!35332 t!4386)))) (<= (size!34566 (innerList!14290 (xs!17536 (right!35332 (right!35332 t!4386))))) 2147483647))))

(declare-fun bs!598866 () Bool)

(assert (= bs!598866 d!1251969))

(declare-fun m!4842663 () Bool)

(assert (=> bs!598866 m!4842663))

(assert (=> b!4257244 d!1251969))

(assert (=> b!4257151 d!1251935))

(assert (=> b!4257151 d!1251937))

(declare-fun d!1251971 () Bool)

(declare-fun lt!1509939 () Int)

(declare-fun list!17036 (Conc!14231) List!47347)

(assert (=> d!1251971 (= lt!1509939 (size!34570 (list!17036 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))))))

(assert (=> d!1251971 (= lt!1509939 (ite ((_ is Empty!14231) (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) 0 (ite ((_ is Leaf!21996) (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (csize!28693 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (csize!28692 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))))))))

(assert (=> d!1251971 (= (size!34568 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) lt!1509939)))

(declare-fun bs!598867 () Bool)

(assert (= bs!598867 d!1251971))

(declare-fun m!4842665 () Bool)

(assert (=> bs!598867 m!4842665))

(assert (=> bs!598867 m!4842665))

(declare-fun m!4842667 () Bool)

(assert (=> bs!598867 m!4842667))

(assert (=> d!1251791 d!1251971))

(declare-fun d!1251973 () Bool)

(declare-fun lt!1509940 () Int)

(assert (=> d!1251973 (= lt!1509940 (size!34570 (list!17036 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))))))

(assert (=> d!1251973 (= lt!1509940 (ite ((_ is Empty!14231) (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) 0 (ite ((_ is Leaf!21996) (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (csize!28693 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (csize!28692 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))))))))

(assert (=> d!1251973 (= (size!34568 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) lt!1509940)))

(declare-fun bs!598868 () Bool)

(assert (= bs!598868 d!1251973))

(declare-fun m!4842669 () Bool)

(assert (=> bs!598868 m!4842669))

(assert (=> bs!598868 m!4842669))

(declare-fun m!4842671 () Bool)

(assert (=> bs!598868 m!4842671))

(assert (=> d!1251791 d!1251973))

(declare-fun d!1251975 () Bool)

(declare-fun lt!1509941 () Bool)

(assert (=> d!1251975 (= lt!1509941 (isEmpty!27956 (list!17032 (right!35332 (right!35332 t!4386)))))))

(assert (=> d!1251975 (= lt!1509941 (= (size!34567 (right!35332 (right!35332 t!4386))) 0))))

(assert (=> d!1251975 (= (isEmpty!27955 (right!35332 (right!35332 t!4386))) lt!1509941)))

(declare-fun bs!598869 () Bool)

(assert (= bs!598869 d!1251975))

(assert (=> bs!598869 m!4842605))

(assert (=> bs!598869 m!4842605))

(declare-fun m!4842673 () Bool)

(assert (=> bs!598869 m!4842673))

(assert (=> bs!598869 m!4842341))

(assert (=> b!4257214 d!1251975))

(declare-fun d!1251977 () Bool)

(assert (=> d!1251977 (= (max!0 (height!1855 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (height!1855 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))) (ite (< (height!1855 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (height!1855 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))) (height!1855 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (height!1855 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386))))))))

(assert (=> b!4257140 d!1251977))

(declare-fun d!1251979 () Bool)

(assert (=> d!1251979 (= (height!1855 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (ite ((_ is Empty!14231) (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) 0 (ite ((_ is Leaf!21996) (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) 1 (cheight!14442 (left!35003 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))))))))

(assert (=> b!4257140 d!1251979))

(declare-fun d!1251981 () Bool)

(assert (=> d!1251981 (= (height!1855 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) (ite ((_ is Empty!14231) (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) 0 (ite ((_ is Leaf!21996) (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))) 1 (cheight!14442 (right!35333 (Leaf!21996 (map!9646 (xs!17536 t!4386) f!428) (csize!28691 t!4386)))))))))

(assert (=> b!4257140 d!1251981))

(assert (=> d!1251815 d!1251803))

(assert (=> d!1251815 d!1251809))

(declare-fun d!1251983 () Bool)

(assert (=> d!1251983 (= (inv!62087 _$10!106) (<= (size!34570 (innerList!14291 _$10!106)) 2147483647))))

(declare-fun bs!598870 () Bool)

(assert (= bs!598870 d!1251983))

(declare-fun m!4842675 () Bool)

(assert (=> bs!598870 m!4842675))

(assert (=> d!1251815 d!1251983))

(assert (=> d!1251793 d!1251949))

(assert (=> d!1251793 d!1251951))

(declare-fun d!1251985 () Bool)

(declare-fun lt!1509942 () Bool)

(assert (=> d!1251985 (= lt!1509942 (isEmpty!27956 (list!17032 (left!35002 (right!35332 t!4386)))))))

(assert (=> d!1251985 (= lt!1509942 (= (size!34567 (left!35002 (right!35332 t!4386))) 0))))

(assert (=> d!1251985 (= (isEmpty!27955 (left!35002 (right!35332 t!4386))) lt!1509942)))

(declare-fun bs!598871 () Bool)

(assert (= bs!598871 d!1251985))

(assert (=> bs!598871 m!4842601))

(assert (=> bs!598871 m!4842601))

(declare-fun m!4842677 () Bool)

(assert (=> bs!598871 m!4842677))

(assert (=> bs!598871 m!4842339))

(assert (=> b!4257212 d!1251985))

(assert (=> b!4257217 d!1251965))

(assert (=> b!4257217 d!1251967))

(assert (=> d!1251833 d!1251905))

(assert (=> d!1251833 d!1251907))

(declare-fun d!1251987 () Bool)

(declare-fun lt!1509943 () Int)

(assert (=> d!1251987 (>= lt!1509943 0)))

(declare-fun e!2644229 () Int)

(assert (=> d!1251987 (= lt!1509943 e!2644229)))

(declare-fun c!722820 () Bool)

(assert (=> d!1251987 (= c!722820 ((_ is Nil!47222) (innerList!14290 (xs!17536 (left!35002 t!4386)))))))

(assert (=> d!1251987 (= (size!34566 (innerList!14290 (xs!17536 (left!35002 t!4386)))) lt!1509943)))

(declare-fun b!4257395 () Bool)

(assert (=> b!4257395 (= e!2644229 0)))

(declare-fun b!4257396 () Bool)

(assert (=> b!4257396 (= e!2644229 (+ 1 (size!34566 (t!352959 (innerList!14290 (xs!17536 (left!35002 t!4386)))))))))

(assert (= (and d!1251987 c!722820) b!4257395))

(assert (= (and d!1251987 (not c!722820)) b!4257396))

(declare-fun m!4842679 () Bool)

(assert (=> b!4257396 m!4842679))

(assert (=> d!1251821 d!1251987))

(declare-fun b!4257397 () Bool)

(declare-fun res!1750170 () Bool)

(declare-fun e!2644230 () Bool)

(assert (=> b!4257397 (=> (not res!1750170) (not e!2644230))))

(assert (=> b!4257397 (= res!1750170 (isBalanced!3790 (left!35002 (left!35002 (left!35002 t!4386)))))))

(declare-fun b!4257398 () Bool)

(declare-fun e!2644231 () Bool)

(assert (=> b!4257398 (= e!2644231 e!2644230)))

(declare-fun res!1750168 () Bool)

(assert (=> b!4257398 (=> (not res!1750168) (not e!2644230))))

(assert (=> b!4257398 (= res!1750168 (<= (- 1) (- (height!1854 (left!35002 (left!35002 (left!35002 t!4386)))) (height!1854 (right!35332 (left!35002 (left!35002 t!4386)))))))))

(declare-fun b!4257399 () Bool)

(declare-fun res!1750171 () Bool)

(assert (=> b!4257399 (=> (not res!1750171) (not e!2644230))))

(assert (=> b!4257399 (= res!1750171 (not (isEmpty!27955 (left!35002 (left!35002 (left!35002 t!4386))))))))

(declare-fun b!4257400 () Bool)

(declare-fun res!1750167 () Bool)

(assert (=> b!4257400 (=> (not res!1750167) (not e!2644230))))

(assert (=> b!4257400 (= res!1750167 (<= (- (height!1854 (left!35002 (left!35002 (left!35002 t!4386)))) (height!1854 (right!35332 (left!35002 (left!35002 t!4386))))) 1))))

(declare-fun d!1251989 () Bool)

(declare-fun res!1750166 () Bool)

(assert (=> d!1251989 (=> res!1750166 e!2644231)))

(assert (=> d!1251989 (= res!1750166 (not ((_ is Node!14230) (left!35002 (left!35002 t!4386)))))))

(assert (=> d!1251989 (= (isBalanced!3790 (left!35002 (left!35002 t!4386))) e!2644231)))

(declare-fun b!4257401 () Bool)

(assert (=> b!4257401 (= e!2644230 (not (isEmpty!27955 (right!35332 (left!35002 (left!35002 t!4386))))))))

(declare-fun b!4257402 () Bool)

(declare-fun res!1750169 () Bool)

(assert (=> b!4257402 (=> (not res!1750169) (not e!2644230))))

(assert (=> b!4257402 (= res!1750169 (isBalanced!3790 (right!35332 (left!35002 (left!35002 t!4386)))))))

(assert (= (and d!1251989 (not res!1750166)) b!4257398))

(assert (= (and b!4257398 res!1750168) b!4257400))

(assert (= (and b!4257400 res!1750167) b!4257397))

(assert (= (and b!4257397 res!1750170) b!4257402))

(assert (= (and b!4257402 res!1750169) b!4257399))

(assert (= (and b!4257399 res!1750171) b!4257401))

(assert (=> b!4257400 m!4842545))

(assert (=> b!4257400 m!4842547))

(declare-fun m!4842681 () Bool)

(assert (=> b!4257401 m!4842681))

(assert (=> b!4257398 m!4842545))

(assert (=> b!4257398 m!4842547))

(declare-fun m!4842683 () Bool)

(assert (=> b!4257397 m!4842683))

(declare-fun m!4842685 () Bool)

(assert (=> b!4257402 m!4842685))

(declare-fun m!4842687 () Bool)

(assert (=> b!4257399 m!4842687))

(assert (=> b!4257148 d!1251989))

(declare-fun d!1251991 () Bool)

(declare-fun c!722821 () Bool)

(assert (=> d!1251991 (= c!722821 ((_ is Node!14230) (left!35002 (right!35332 (left!35002 t!4386)))))))

(declare-fun e!2644232 () Bool)

(assert (=> d!1251991 (= (inv!62077 (left!35002 (right!35332 (left!35002 t!4386)))) e!2644232)))

(declare-fun b!4257403 () Bool)

(assert (=> b!4257403 (= e!2644232 (inv!62083 (left!35002 (right!35332 (left!35002 t!4386)))))))

(declare-fun b!4257404 () Bool)

(declare-fun e!2644233 () Bool)

(assert (=> b!4257404 (= e!2644232 e!2644233)))

(declare-fun res!1750172 () Bool)

(assert (=> b!4257404 (= res!1750172 (not ((_ is Leaf!21995) (left!35002 (right!35332 (left!35002 t!4386))))))))

(assert (=> b!4257404 (=> res!1750172 e!2644233)))

(declare-fun b!4257405 () Bool)

(assert (=> b!4257405 (= e!2644233 (inv!62084 (left!35002 (right!35332 (left!35002 t!4386)))))))

(assert (= (and d!1251991 c!722821) b!4257403))

(assert (= (and d!1251991 (not c!722821)) b!4257404))

(assert (= (and b!4257404 (not res!1750172)) b!4257405))

(declare-fun m!4842689 () Bool)

(assert (=> b!4257403 m!4842689))

(declare-fun m!4842691 () Bool)

(assert (=> b!4257405 m!4842691))

(assert (=> b!4257229 d!1251991))

(declare-fun d!1251993 () Bool)

(declare-fun c!722822 () Bool)

(assert (=> d!1251993 (= c!722822 ((_ is Node!14230) (right!35332 (right!35332 (left!35002 t!4386)))))))

(declare-fun e!2644234 () Bool)

(assert (=> d!1251993 (= (inv!62077 (right!35332 (right!35332 (left!35002 t!4386)))) e!2644234)))

(declare-fun b!4257406 () Bool)

(assert (=> b!4257406 (= e!2644234 (inv!62083 (right!35332 (right!35332 (left!35002 t!4386)))))))

(declare-fun b!4257407 () Bool)

(declare-fun e!2644235 () Bool)

(assert (=> b!4257407 (= e!2644234 e!2644235)))

(declare-fun res!1750173 () Bool)

(assert (=> b!4257407 (= res!1750173 (not ((_ is Leaf!21995) (right!35332 (right!35332 (left!35002 t!4386))))))))

(assert (=> b!4257407 (=> res!1750173 e!2644235)))

(declare-fun b!4257408 () Bool)

(assert (=> b!4257408 (= e!2644235 (inv!62084 (right!35332 (right!35332 (left!35002 t!4386)))))))

(assert (= (and d!1251993 c!722822) b!4257406))

(assert (= (and d!1251993 (not c!722822)) b!4257407))

(assert (= (and b!4257407 (not res!1750173)) b!4257408))

(declare-fun m!4842693 () Bool)

(assert (=> b!4257406 m!4842693))

(declare-fun m!4842695 () Bool)

(assert (=> b!4257408 m!4842695))

(assert (=> b!4257229 d!1251993))

(declare-fun d!1251995 () Bool)

(assert (=> d!1251995 (= (isEmpty!27956 (list!17032 (left!35002 t!4386))) ((_ is Nil!47222) (list!17032 (left!35002 t!4386))))))

(assert (=> d!1251789 d!1251995))

(declare-fun d!1251997 () Bool)

(declare-fun c!722823 () Bool)

(assert (=> d!1251997 (= c!722823 ((_ is Empty!14230) (left!35002 t!4386)))))

(declare-fun e!2644236 () List!47346)

(assert (=> d!1251997 (= (list!17032 (left!35002 t!4386)) e!2644236)))

(declare-fun b!4257412 () Bool)

(declare-fun e!2644237 () List!47346)

(assert (=> b!4257412 (= e!2644237 (++!12015 (list!17032 (left!35002 (left!35002 t!4386))) (list!17032 (right!35332 (left!35002 t!4386)))))))

(declare-fun b!4257409 () Bool)

(assert (=> b!4257409 (= e!2644236 Nil!47222)))

(declare-fun b!4257411 () Bool)

(assert (=> b!4257411 (= e!2644237 (list!17030 (xs!17536 (left!35002 t!4386))))))

(declare-fun b!4257410 () Bool)

(assert (=> b!4257410 (= e!2644236 e!2644237)))

(declare-fun c!722824 () Bool)

(assert (=> b!4257410 (= c!722824 ((_ is Leaf!21995) (left!35002 t!4386)))))

(assert (= (and d!1251997 c!722823) b!4257409))

(assert (= (and d!1251997 (not c!722823)) b!4257410))

(assert (= (and b!4257410 c!722824) b!4257411))

(assert (= (and b!4257410 (not c!722824)) b!4257412))

(assert (=> b!4257412 m!4842523))

(assert (=> b!4257412 m!4842527))

(assert (=> b!4257412 m!4842523))

(assert (=> b!4257412 m!4842527))

(declare-fun m!4842697 () Bool)

(assert (=> b!4257412 m!4842697))

(assert (=> b!4257411 m!4842377))

(assert (=> d!1251789 d!1251997))

(assert (=> d!1251789 d!1251921))

(declare-fun d!1251999 () Bool)

(assert (=> d!1251999 (= (inv!62078 (xs!17536 (left!35002 (right!35332 t!4386)))) (<= (size!34566 (innerList!14290 (xs!17536 (left!35002 (right!35332 t!4386))))) 2147483647))))

(declare-fun bs!598872 () Bool)

(assert (= bs!598872 d!1251999))

(declare-fun m!4842699 () Bool)

(assert (=> bs!598872 m!4842699))

(assert (=> b!4257235 d!1251999))

(declare-fun b!4257413 () Bool)

(declare-fun e!2644238 () Bool)

(declare-fun tp!1306479 () Bool)

(assert (=> b!4257413 (= e!2644238 (and tp_is_empty!22841 tp!1306479))))

(assert (=> b!4257245 (= tp!1306462 e!2644238)))

(assert (= (and b!4257245 ((_ is Cons!47222) (innerList!14290 (xs!17536 (right!35332 (right!35332 t!4386)))))) b!4257413))

(declare-fun b!4257414 () Bool)

(declare-fun tp!1306480 () Bool)

(declare-fun tp!1306482 () Bool)

(declare-fun e!2644240 () Bool)

(assert (=> b!4257414 (= e!2644240 (and (inv!62077 (left!35002 (left!35002 (left!35002 (left!35002 t!4386))))) tp!1306480 (inv!62077 (right!35332 (left!35002 (left!35002 (left!35002 t!4386))))) tp!1306482))))

(declare-fun b!4257416 () Bool)

(declare-fun e!2644239 () Bool)

(declare-fun tp!1306481 () Bool)

(assert (=> b!4257416 (= e!2644239 tp!1306481)))

(declare-fun b!4257415 () Bool)

(assert (=> b!4257415 (= e!2644240 (and (inv!62078 (xs!17536 (left!35002 (left!35002 (left!35002 t!4386))))) e!2644239))))

(assert (=> b!4257226 (= tp!1306450 (and (inv!62077 (left!35002 (left!35002 (left!35002 t!4386)))) e!2644240))))

(assert (= (and b!4257226 ((_ is Node!14230) (left!35002 (left!35002 (left!35002 t!4386))))) b!4257414))

(assert (= b!4257415 b!4257416))

(assert (= (and b!4257226 ((_ is Leaf!21995) (left!35002 (left!35002 (left!35002 t!4386))))) b!4257415))

(declare-fun m!4842701 () Bool)

(assert (=> b!4257414 m!4842701))

(declare-fun m!4842703 () Bool)

(assert (=> b!4257414 m!4842703))

(declare-fun m!4842705 () Bool)

(assert (=> b!4257415 m!4842705))

(assert (=> b!4257226 m!4842385))

(declare-fun b!4257417 () Bool)

(declare-fun tp!1306483 () Bool)

(declare-fun e!2644242 () Bool)

(declare-fun tp!1306485 () Bool)

(assert (=> b!4257417 (= e!2644242 (and (inv!62077 (left!35002 (right!35332 (left!35002 (left!35002 t!4386))))) tp!1306483 (inv!62077 (right!35332 (right!35332 (left!35002 (left!35002 t!4386))))) tp!1306485))))

(declare-fun b!4257419 () Bool)

(declare-fun e!2644241 () Bool)

(declare-fun tp!1306484 () Bool)

(assert (=> b!4257419 (= e!2644241 tp!1306484)))

(declare-fun b!4257418 () Bool)

(assert (=> b!4257418 (= e!2644242 (and (inv!62078 (xs!17536 (right!35332 (left!35002 (left!35002 t!4386))))) e!2644241))))

(assert (=> b!4257226 (= tp!1306452 (and (inv!62077 (right!35332 (left!35002 (left!35002 t!4386)))) e!2644242))))

(assert (= (and b!4257226 ((_ is Node!14230) (right!35332 (left!35002 (left!35002 t!4386))))) b!4257417))

(assert (= b!4257418 b!4257419))

(assert (= (and b!4257226 ((_ is Leaf!21995) (right!35332 (left!35002 (left!35002 t!4386))))) b!4257418))

(declare-fun m!4842707 () Bool)

(assert (=> b!4257417 m!4842707))

(declare-fun m!4842709 () Bool)

(assert (=> b!4257417 m!4842709))

(declare-fun m!4842711 () Bool)

(assert (=> b!4257418 m!4842711))

(assert (=> b!4257226 m!4842387))

(declare-fun e!2644244 () Bool)

(declare-fun tp!1306488 () Bool)

(declare-fun tp!1306486 () Bool)

(declare-fun b!4257420 () Bool)

(assert (=> b!4257420 (= e!2644244 (and (inv!62077 (left!35002 (left!35002 (left!35002 (right!35332 t!4386))))) tp!1306486 (inv!62077 (right!35332 (left!35002 (left!35002 (right!35332 t!4386))))) tp!1306488))))

(declare-fun b!4257422 () Bool)

(declare-fun e!2644243 () Bool)

(declare-fun tp!1306487 () Bool)

(assert (=> b!4257422 (= e!2644243 tp!1306487)))

(declare-fun b!4257421 () Bool)

(assert (=> b!4257421 (= e!2644244 (and (inv!62078 (xs!17536 (left!35002 (left!35002 (right!35332 t!4386))))) e!2644243))))

(assert (=> b!4257234 (= tp!1306458 (and (inv!62077 (left!35002 (left!35002 (right!35332 t!4386)))) e!2644244))))

(assert (= (and b!4257234 ((_ is Node!14230) (left!35002 (left!35002 (right!35332 t!4386))))) b!4257420))

(assert (= b!4257421 b!4257422))

(assert (= (and b!4257234 ((_ is Leaf!21995) (left!35002 (left!35002 (right!35332 t!4386))))) b!4257421))

(declare-fun m!4842713 () Bool)

(assert (=> b!4257420 m!4842713))

(declare-fun m!4842715 () Bool)

(assert (=> b!4257420 m!4842715))

(declare-fun m!4842717 () Bool)

(assert (=> b!4257421 m!4842717))

(assert (=> b!4257234 m!4842411))

(declare-fun tp!1306489 () Bool)

(declare-fun tp!1306491 () Bool)

(declare-fun e!2644246 () Bool)

(declare-fun b!4257423 () Bool)

(assert (=> b!4257423 (= e!2644246 (and (inv!62077 (left!35002 (right!35332 (left!35002 (right!35332 t!4386))))) tp!1306489 (inv!62077 (right!35332 (right!35332 (left!35002 (right!35332 t!4386))))) tp!1306491))))

(declare-fun b!4257425 () Bool)

(declare-fun e!2644245 () Bool)

(declare-fun tp!1306490 () Bool)

(assert (=> b!4257425 (= e!2644245 tp!1306490)))

(declare-fun b!4257424 () Bool)

(assert (=> b!4257424 (= e!2644246 (and (inv!62078 (xs!17536 (right!35332 (left!35002 (right!35332 t!4386))))) e!2644245))))

(assert (=> b!4257234 (= tp!1306460 (and (inv!62077 (right!35332 (left!35002 (right!35332 t!4386)))) e!2644246))))

(assert (= (and b!4257234 ((_ is Node!14230) (right!35332 (left!35002 (right!35332 t!4386))))) b!4257423))

(assert (= b!4257424 b!4257425))

(assert (= (and b!4257234 ((_ is Leaf!21995) (right!35332 (left!35002 (right!35332 t!4386))))) b!4257424))

(declare-fun m!4842719 () Bool)

(assert (=> b!4257423 m!4842719))

(declare-fun m!4842721 () Bool)

(assert (=> b!4257423 m!4842721))

(declare-fun m!4842723 () Bool)

(assert (=> b!4257424 m!4842723))

(assert (=> b!4257234 m!4842413))

(declare-fun b!4257426 () Bool)

(declare-fun e!2644247 () Bool)

(declare-fun tp!1306492 () Bool)

(assert (=> b!4257426 (= e!2644247 (and tp_is_empty!22841 tp!1306492))))

(assert (=> b!4257233 (= tp!1306457 e!2644247)))

(assert (= (and b!4257233 ((_ is Cons!47222) (t!352959 (t!352959 (innerList!14290 (xs!17536 t!4386)))))) b!4257426))

(declare-fun tp!1306493 () Bool)

(declare-fun e!2644249 () Bool)

(declare-fun b!4257427 () Bool)

(declare-fun tp!1306495 () Bool)

(assert (=> b!4257427 (= e!2644249 (and (inv!62077 (left!35002 (left!35002 (right!35332 (right!35332 t!4386))))) tp!1306493 (inv!62077 (right!35332 (left!35002 (right!35332 (right!35332 t!4386))))) tp!1306495))))

(declare-fun b!4257429 () Bool)

(declare-fun e!2644248 () Bool)

(declare-fun tp!1306494 () Bool)

(assert (=> b!4257429 (= e!2644248 tp!1306494)))

(declare-fun b!4257428 () Bool)

(assert (=> b!4257428 (= e!2644249 (and (inv!62078 (xs!17536 (left!35002 (right!35332 (right!35332 t!4386))))) e!2644248))))

(assert (=> b!4257243 (= tp!1306461 (and (inv!62077 (left!35002 (right!35332 (right!35332 t!4386)))) e!2644249))))

(assert (= (and b!4257243 ((_ is Node!14230) (left!35002 (right!35332 (right!35332 t!4386))))) b!4257427))

(assert (= b!4257428 b!4257429))

(assert (= (and b!4257243 ((_ is Leaf!21995) (left!35002 (right!35332 (right!35332 t!4386))))) b!4257428))

(declare-fun m!4842725 () Bool)

(assert (=> b!4257427 m!4842725))

(declare-fun m!4842727 () Bool)

(assert (=> b!4257427 m!4842727))

(declare-fun m!4842729 () Bool)

(assert (=> b!4257428 m!4842729))

(assert (=> b!4257243 m!4842417))

(declare-fun b!4257430 () Bool)

(declare-fun tp!1306496 () Bool)

(declare-fun tp!1306498 () Bool)

(declare-fun e!2644251 () Bool)

(assert (=> b!4257430 (= e!2644251 (and (inv!62077 (left!35002 (right!35332 (right!35332 (right!35332 t!4386))))) tp!1306496 (inv!62077 (right!35332 (right!35332 (right!35332 (right!35332 t!4386))))) tp!1306498))))

(declare-fun b!4257432 () Bool)

(declare-fun e!2644250 () Bool)

(declare-fun tp!1306497 () Bool)

(assert (=> b!4257432 (= e!2644250 tp!1306497)))

(declare-fun b!4257431 () Bool)

(assert (=> b!4257431 (= e!2644251 (and (inv!62078 (xs!17536 (right!35332 (right!35332 (right!35332 t!4386))))) e!2644250))))

(assert (=> b!4257243 (= tp!1306463 (and (inv!62077 (right!35332 (right!35332 (right!35332 t!4386)))) e!2644251))))

(assert (= (and b!4257243 ((_ is Node!14230) (right!35332 (right!35332 (right!35332 t!4386))))) b!4257430))

(assert (= b!4257431 b!4257432))

(assert (= (and b!4257243 ((_ is Leaf!21995) (right!35332 (right!35332 (right!35332 t!4386))))) b!4257431))

(declare-fun m!4842731 () Bool)

(assert (=> b!4257430 m!4842731))

(declare-fun m!4842733 () Bool)

(assert (=> b!4257430 m!4842733))

(declare-fun m!4842735 () Bool)

(assert (=> b!4257431 m!4842735))

(assert (=> b!4257243 m!4842419))

(declare-fun b!4257437 () Bool)

(declare-fun e!2644254 () Bool)

(declare-fun tp!1306501 () Bool)

(assert (=> b!4257437 (= e!2644254 (and tp_is_empty!22843 tp!1306501))))

(assert (=> b!4257182 (= tp!1306445 e!2644254)))

(assert (= (and b!4257182 ((_ is Cons!47223) (innerList!14291 _$10!106))) b!4257437))

(declare-fun b!4257438 () Bool)

(declare-fun tp!1306504 () Bool)

(declare-fun tp!1306502 () Bool)

(declare-fun e!2644256 () Bool)

(assert (=> b!4257438 (= e!2644256 (and (inv!62077 (left!35002 (left!35002 (right!35332 (left!35002 t!4386))))) tp!1306502 (inv!62077 (right!35332 (left!35002 (right!35332 (left!35002 t!4386))))) tp!1306504))))

(declare-fun b!4257440 () Bool)

(declare-fun e!2644255 () Bool)

(declare-fun tp!1306503 () Bool)

(assert (=> b!4257440 (= e!2644255 tp!1306503)))

(declare-fun b!4257439 () Bool)

(assert (=> b!4257439 (= e!2644256 (and (inv!62078 (xs!17536 (left!35002 (right!35332 (left!35002 t!4386))))) e!2644255))))

(assert (=> b!4257229 (= tp!1306453 (and (inv!62077 (left!35002 (right!35332 (left!35002 t!4386)))) e!2644256))))

(assert (= (and b!4257229 ((_ is Node!14230) (left!35002 (right!35332 (left!35002 t!4386))))) b!4257438))

(assert (= b!4257439 b!4257440))

(assert (= (and b!4257229 ((_ is Leaf!21995) (left!35002 (right!35332 (left!35002 t!4386))))) b!4257439))

(declare-fun m!4842737 () Bool)

(assert (=> b!4257438 m!4842737))

(declare-fun m!4842739 () Bool)

(assert (=> b!4257438 m!4842739))

(declare-fun m!4842741 () Bool)

(assert (=> b!4257439 m!4842741))

(assert (=> b!4257229 m!4842399))

(declare-fun b!4257441 () Bool)

(declare-fun tp!1306507 () Bool)

(declare-fun e!2644258 () Bool)

(declare-fun tp!1306505 () Bool)

(assert (=> b!4257441 (= e!2644258 (and (inv!62077 (left!35002 (right!35332 (right!35332 (left!35002 t!4386))))) tp!1306505 (inv!62077 (right!35332 (right!35332 (right!35332 (left!35002 t!4386))))) tp!1306507))))

(declare-fun b!4257443 () Bool)

(declare-fun e!2644257 () Bool)

(declare-fun tp!1306506 () Bool)

(assert (=> b!4257443 (= e!2644257 tp!1306506)))

(declare-fun b!4257442 () Bool)

(assert (=> b!4257442 (= e!2644258 (and (inv!62078 (xs!17536 (right!35332 (right!35332 (left!35002 t!4386))))) e!2644257))))

(assert (=> b!4257229 (= tp!1306455 (and (inv!62077 (right!35332 (right!35332 (left!35002 t!4386)))) e!2644258))))

(assert (= (and b!4257229 ((_ is Node!14230) (right!35332 (right!35332 (left!35002 t!4386))))) b!4257441))

(assert (= b!4257442 b!4257443))

(assert (= (and b!4257229 ((_ is Leaf!21995) (right!35332 (right!35332 (left!35002 t!4386))))) b!4257442))

(declare-fun m!4842743 () Bool)

(assert (=> b!4257441 m!4842743))

(declare-fun m!4842745 () Bool)

(assert (=> b!4257441 m!4842745))

(declare-fun m!4842747 () Bool)

(assert (=> b!4257442 m!4842747))

(assert (=> b!4257229 m!4842403))

(declare-fun b!4257444 () Bool)

(declare-fun e!2644259 () Bool)

(declare-fun tp!1306508 () Bool)

(assert (=> b!4257444 (= e!2644259 (and tp_is_empty!22841 tp!1306508))))

(assert (=> b!4257231 (= tp!1306454 e!2644259)))

(assert (= (and b!4257231 ((_ is Cons!47222) (innerList!14290 (xs!17536 (right!35332 (left!35002 t!4386)))))) b!4257444))

(declare-fun b!4257445 () Bool)

(declare-fun e!2644260 () Bool)

(declare-fun tp!1306509 () Bool)

(assert (=> b!4257445 (= e!2644260 (and tp_is_empty!22841 tp!1306509))))

(assert (=> b!4257232 (= tp!1306456 e!2644260)))

(assert (= (and b!4257232 ((_ is Cons!47222) (t!352959 (innerList!14290 (xs!17536 (left!35002 t!4386)))))) b!4257445))

(declare-fun b!4257446 () Bool)

(declare-fun e!2644261 () Bool)

(declare-fun tp!1306510 () Bool)

(assert (=> b!4257446 (= e!2644261 (and tp_is_empty!22841 tp!1306510))))

(assert (=> b!4257225 (= tp!1306449 e!2644261)))

(assert (= (and b!4257225 ((_ is Cons!47222) (t!352959 (innerList!14290 (xs!17536 (right!35332 t!4386)))))) b!4257446))

(declare-fun b!4257447 () Bool)

(declare-fun e!2644262 () Bool)

(declare-fun tp!1306511 () Bool)

(assert (=> b!4257447 (= e!2644262 (and tp_is_empty!22841 tp!1306511))))

(assert (=> b!4257228 (= tp!1306451 e!2644262)))

(assert (= (and b!4257228 ((_ is Cons!47222) (innerList!14290 (xs!17536 (left!35002 (left!35002 t!4386)))))) b!4257447))

(declare-fun b!4257448 () Bool)

(declare-fun e!2644263 () Bool)

(declare-fun tp!1306512 () Bool)

(assert (=> b!4257448 (= e!2644263 (and tp_is_empty!22841 tp!1306512))))

(assert (=> b!4257236 (= tp!1306459 e!2644263)))

(assert (= (and b!4257236 ((_ is Cons!47222) (innerList!14290 (xs!17536 (left!35002 (right!35332 t!4386)))))) b!4257448))

(declare-fun b_lambda!125429 () Bool)

(assert (= b_lambda!125427 (or (and start!407858 b_free!126669) b_lambda!125429)))

(check-sat (not b!4257399) (not b!4257424) (not b!4257318) (not d!1251917) (not b!4257332) (not b!4257402) (not d!1251983) (not d!1251975) (not b!4257387) (not b!4257324) (not b!4257394) (not b!4257386) (not d!1251969) (not b!4257429) (not b!4257397) (not d!1251971) (not b!4257351) (not b!4257321) (not d!1251963) (not b!4257401) (not b!4257421) (not b!4257365) (not b!4257431) (not b!4257422) (not d!1251921) (not d!1251919) (not d!1251985) (not b!4257381) (not b!4257343) (not b!4257326) (not d!1251947) (not b!4257366) (not b!4257354) (not b!4257328) (not b!4257403) (not b!4257341) (not b!4257352) (not b!4257417) (not b!4257418) (not b!4257426) (not d!1251909) (not b!4257396) (not b!4257425) (not d!1251941) (not d!1251873) (not b!4257412) (not b!4257375) (not b!4257415) (not b!4257347) (not b!4257408) (not b!4257437) (not b!4257376) (not b!4257444) (not d!1251885) (not d!1251999) (not b!4257390) (not b!4257327) (not b!4257427) (not b!4257448) (not b!4257406) (not b!4257349) (not b!4257311) (not d!1251923) (not b!4257413) (not b!4257438) (not b!4257378) (not b!4257446) (not b_next!127373) (not b!4257440) (not b!4257373) (not b!4257411) (not b_lambda!125423) (not b!4257400) (not d!1251973) (not b!4257382) (not d!1251911) (not b!4257416) (not b!4257420) (not b!4257229) (not d!1251875) (not d!1251887) tp_is_empty!22841 (not b!4257334) (not b!4257405) (not b!4257377) (not b!4257439) (not b!4257443) (not b!4257442) (not b!4257226) (not b!4257314) (not d!1251899) (not b!4257345) (not b!4257388) (not b!4257323) (not d!1251931) (not b!4257419) (not b!4257398) (not b!4257369) (not b!4257384) (not b!4257316) (not b!4257313) (not b!4257423) (not b!4257374) (not b!4257307) (not b!4257432) (not b!4257243) (not b!4257392) (not b!4257441) (not b!4257325) (not b!4257414) (not b!4257379) (not b!4257234) (not b!4257372) (not b!4257368) (not d!1251895) tp_is_empty!22843 (not b!4257447) (not b_lambda!125429) (not d!1251889) (not b!4257445) (not b!4257428) (not b!4257309) (not b!4257329) (not d!1251891) b_and!337541 (not b!4257389) (not b!4257385) (not d!1251945) (not b!4257430))
(check-sat b_and!337541 (not b_next!127373))
