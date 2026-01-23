; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215170 () Bool)

(assert start!215170)

(declare-fun b!2210162 () Bool)

(declare-fun res!949833 () Bool)

(declare-fun e!1411687 () Bool)

(assert (=> b!2210162 (=> (not res!949833) (not e!1411687))))

(declare-datatypes ((T!40508 0))(
  ( (T!40509 (val!7372 Int)) )
))
(declare-datatypes ((List!25936 0))(
  ( (Nil!25852) (Cons!25852 (h!31253 T!40508) (t!198620 List!25936)) )
))
(declare-datatypes ((IArray!16903 0))(
  ( (IArray!16904 (innerList!8509 List!25936)) )
))
(declare-datatypes ((Conc!8449 0))(
  ( (Node!8449 (left!19876 Conc!8449) (right!20206 Conc!8449) (csize!17128 Int) (cheight!8660 Int)) (Leaf!12373 (xs!11391 IArray!16903) (csize!17129 Int)) (Empty!8449) )
))
(declare-fun t!4663 () Conc!8449)

(declare-fun isEmpty!14787 (Conc!8449) Bool)

(assert (=> b!2210162 (= res!949833 (not (isEmpty!14787 t!4663)))))

(declare-fun tp!686993 () Bool)

(declare-fun b!2210163 () Bool)

(declare-fun tp!686992 () Bool)

(declare-fun e!1411686 () Bool)

(declare-fun inv!34966 (Conc!8449) Bool)

(assert (=> b!2210163 (= e!1411686 (and (inv!34966 (left!19876 t!4663)) tp!686992 (inv!34966 (right!20206 t!4663)) tp!686993))))

(declare-fun b!2210164 () Bool)

(declare-fun e!1411685 () Bool)

(declare-fun inv!34967 (IArray!16903) Bool)

(assert (=> b!2210164 (= e!1411686 (and (inv!34967 (xs!11391 t!4663)) e!1411685))))

(declare-fun b!2210165 () Bool)

(declare-fun tp!686994 () Bool)

(assert (=> b!2210165 (= e!1411685 tp!686994)))

(declare-fun b!2210166 () Bool)

(declare-fun list!10016 (Conc!8449) List!25936)

(assert (=> b!2210166 (= e!1411687 (= (list!10016 t!4663) Nil!25852))))

(declare-fun lt!826318 () T!40508)

(declare-fun apply!6399 (IArray!16903 Int) T!40508)

(assert (=> b!2210166 (= lt!826318 (apply!6399 (xs!11391 t!4663) 0))))

(declare-fun b!2210167 () Bool)

(declare-fun res!949832 () Bool)

(assert (=> b!2210167 (=> (not res!949832) (not e!1411687))))

(get-info :version)

(assert (=> b!2210167 (= res!949832 ((_ is Leaf!12373) t!4663))))

(declare-fun res!949831 () Bool)

(assert (=> start!215170 (=> (not res!949831) (not e!1411687))))

(declare-fun isBalanced!2607 (Conc!8449) Bool)

(assert (=> start!215170 (= res!949831 (isBalanced!2607 t!4663))))

(assert (=> start!215170 e!1411687))

(assert (=> start!215170 (and (inv!34966 t!4663) e!1411686)))

(assert (= (and start!215170 res!949831) b!2210162))

(assert (= (and b!2210162 res!949833) b!2210167))

(assert (= (and b!2210167 res!949832) b!2210166))

(assert (= (and start!215170 ((_ is Node!8449) t!4663)) b!2210163))

(assert (= b!2210164 b!2210165))

(assert (= (and start!215170 ((_ is Leaf!12373) t!4663)) b!2210164))

(declare-fun m!2651863 () Bool)

(assert (=> start!215170 m!2651863))

(declare-fun m!2651865 () Bool)

(assert (=> start!215170 m!2651865))

(declare-fun m!2651867 () Bool)

(assert (=> b!2210163 m!2651867))

(declare-fun m!2651869 () Bool)

(assert (=> b!2210163 m!2651869))

(declare-fun m!2651871 () Bool)

(assert (=> b!2210166 m!2651871))

(declare-fun m!2651873 () Bool)

(assert (=> b!2210166 m!2651873))

(declare-fun m!2651875 () Bool)

(assert (=> b!2210162 m!2651875))

(declare-fun m!2651877 () Bool)

(assert (=> b!2210164 m!2651877))

(check-sat (not start!215170) (not b!2210162) (not b!2210164) (not b!2210166) (not b!2210165) (not b!2210163))
(check-sat)
(get-model)

(declare-fun d!660590 () Bool)

(declare-fun size!20150 (List!25936) Int)

(assert (=> d!660590 (= (inv!34967 (xs!11391 t!4663)) (<= (size!20150 (innerList!8509 (xs!11391 t!4663))) 2147483647))))

(declare-fun bs!451367 () Bool)

(assert (= bs!451367 d!660590))

(declare-fun m!2651879 () Bool)

(assert (=> bs!451367 m!2651879))

(assert (=> b!2210164 d!660590))

(declare-fun d!660594 () Bool)

(declare-fun c!353274 () Bool)

(assert (=> d!660594 (= c!353274 ((_ is Node!8449) (left!19876 t!4663)))))

(declare-fun e!1411696 () Bool)

(assert (=> d!660594 (= (inv!34966 (left!19876 t!4663)) e!1411696)))

(declare-fun b!2210182 () Bool)

(declare-fun inv!34968 (Conc!8449) Bool)

(assert (=> b!2210182 (= e!1411696 (inv!34968 (left!19876 t!4663)))))

(declare-fun b!2210183 () Bool)

(declare-fun e!1411697 () Bool)

(assert (=> b!2210183 (= e!1411696 e!1411697)))

(declare-fun res!949836 () Bool)

(assert (=> b!2210183 (= res!949836 (not ((_ is Leaf!12373) (left!19876 t!4663))))))

(assert (=> b!2210183 (=> res!949836 e!1411697)))

(declare-fun b!2210184 () Bool)

(declare-fun inv!34969 (Conc!8449) Bool)

(assert (=> b!2210184 (= e!1411697 (inv!34969 (left!19876 t!4663)))))

(assert (= (and d!660594 c!353274) b!2210182))

(assert (= (and d!660594 (not c!353274)) b!2210183))

(assert (= (and b!2210183 (not res!949836)) b!2210184))

(declare-fun m!2651881 () Bool)

(assert (=> b!2210182 m!2651881))

(declare-fun m!2651883 () Bool)

(assert (=> b!2210184 m!2651883))

(assert (=> b!2210163 d!660594))

(declare-fun d!660596 () Bool)

(declare-fun c!353275 () Bool)

(assert (=> d!660596 (= c!353275 ((_ is Node!8449) (right!20206 t!4663)))))

(declare-fun e!1411698 () Bool)

(assert (=> d!660596 (= (inv!34966 (right!20206 t!4663)) e!1411698)))

(declare-fun b!2210185 () Bool)

(assert (=> b!2210185 (= e!1411698 (inv!34968 (right!20206 t!4663)))))

(declare-fun b!2210186 () Bool)

(declare-fun e!1411699 () Bool)

(assert (=> b!2210186 (= e!1411698 e!1411699)))

(declare-fun res!949837 () Bool)

(assert (=> b!2210186 (= res!949837 (not ((_ is Leaf!12373) (right!20206 t!4663))))))

(assert (=> b!2210186 (=> res!949837 e!1411699)))

(declare-fun b!2210187 () Bool)

(assert (=> b!2210187 (= e!1411699 (inv!34969 (right!20206 t!4663)))))

(assert (= (and d!660596 c!353275) b!2210185))

(assert (= (and d!660596 (not c!353275)) b!2210186))

(assert (= (and b!2210186 (not res!949837)) b!2210187))

(declare-fun m!2651885 () Bool)

(assert (=> b!2210185 m!2651885))

(declare-fun m!2651887 () Bool)

(assert (=> b!2210187 m!2651887))

(assert (=> b!2210163 d!660596))

(declare-fun d!660598 () Bool)

(declare-fun res!949858 () Bool)

(declare-fun e!1411710 () Bool)

(assert (=> d!660598 (=> res!949858 e!1411710)))

(assert (=> d!660598 (= res!949858 (not ((_ is Node!8449) t!4663)))))

(assert (=> d!660598 (= (isBalanced!2607 t!4663) e!1411710)))

(declare-fun b!2210207 () Bool)

(declare-fun res!949855 () Bool)

(declare-fun e!1411709 () Bool)

(assert (=> b!2210207 (=> (not res!949855) (not e!1411709))))

(assert (=> b!2210207 (= res!949855 (isBalanced!2607 (right!20206 t!4663)))))

(declare-fun b!2210208 () Bool)

(assert (=> b!2210208 (= e!1411709 (not (isEmpty!14787 (right!20206 t!4663))))))

(declare-fun b!2210209 () Bool)

(declare-fun res!949853 () Bool)

(assert (=> b!2210209 (=> (not res!949853) (not e!1411709))))

(assert (=> b!2210209 (= res!949853 (isBalanced!2607 (left!19876 t!4663)))))

(declare-fun b!2210210 () Bool)

(assert (=> b!2210210 (= e!1411710 e!1411709)))

(declare-fun res!949854 () Bool)

(assert (=> b!2210210 (=> (not res!949854) (not e!1411709))))

(declare-fun height!1272 (Conc!8449) Int)

(assert (=> b!2210210 (= res!949854 (<= (- 1) (- (height!1272 (left!19876 t!4663)) (height!1272 (right!20206 t!4663)))))))

(declare-fun b!2210211 () Bool)

(declare-fun res!949856 () Bool)

(assert (=> b!2210211 (=> (not res!949856) (not e!1411709))))

(assert (=> b!2210211 (= res!949856 (not (isEmpty!14787 (left!19876 t!4663))))))

(declare-fun b!2210212 () Bool)

(declare-fun res!949857 () Bool)

(assert (=> b!2210212 (=> (not res!949857) (not e!1411709))))

(assert (=> b!2210212 (= res!949857 (<= (- (height!1272 (left!19876 t!4663)) (height!1272 (right!20206 t!4663))) 1))))

(assert (= (and d!660598 (not res!949858)) b!2210210))

(assert (= (and b!2210210 res!949854) b!2210212))

(assert (= (and b!2210212 res!949857) b!2210209))

(assert (= (and b!2210209 res!949853) b!2210207))

(assert (= (and b!2210207 res!949855) b!2210211))

(assert (= (and b!2210211 res!949856) b!2210208))

(declare-fun m!2651903 () Bool)

(assert (=> b!2210209 m!2651903))

(declare-fun m!2651905 () Bool)

(assert (=> b!2210211 m!2651905))

(declare-fun m!2651907 () Bool)

(assert (=> b!2210212 m!2651907))

(declare-fun m!2651909 () Bool)

(assert (=> b!2210212 m!2651909))

(assert (=> b!2210210 m!2651907))

(assert (=> b!2210210 m!2651909))

(declare-fun m!2651911 () Bool)

(assert (=> b!2210208 m!2651911))

(declare-fun m!2651913 () Bool)

(assert (=> b!2210207 m!2651913))

(assert (=> start!215170 d!660598))

(declare-fun d!660604 () Bool)

(declare-fun c!353278 () Bool)

(assert (=> d!660604 (= c!353278 ((_ is Node!8449) t!4663))))

(declare-fun e!1411711 () Bool)

(assert (=> d!660604 (= (inv!34966 t!4663) e!1411711)))

(declare-fun b!2210213 () Bool)

(assert (=> b!2210213 (= e!1411711 (inv!34968 t!4663))))

(declare-fun b!2210214 () Bool)

(declare-fun e!1411712 () Bool)

(assert (=> b!2210214 (= e!1411711 e!1411712)))

(declare-fun res!949859 () Bool)

(assert (=> b!2210214 (= res!949859 (not ((_ is Leaf!12373) t!4663)))))

(assert (=> b!2210214 (=> res!949859 e!1411712)))

(declare-fun b!2210215 () Bool)

(assert (=> b!2210215 (= e!1411712 (inv!34969 t!4663))))

(assert (= (and d!660604 c!353278) b!2210213))

(assert (= (and d!660604 (not c!353278)) b!2210214))

(assert (= (and b!2210214 (not res!949859)) b!2210215))

(declare-fun m!2651915 () Bool)

(assert (=> b!2210213 m!2651915))

(declare-fun m!2651917 () Bool)

(assert (=> b!2210215 m!2651917))

(assert (=> start!215170 d!660604))

(declare-fun d!660606 () Bool)

(declare-fun lt!826324 () Bool)

(declare-fun isEmpty!14789 (List!25936) Bool)

(assert (=> d!660606 (= lt!826324 (isEmpty!14789 (list!10016 t!4663)))))

(declare-fun size!20153 (Conc!8449) Int)

(assert (=> d!660606 (= lt!826324 (= (size!20153 t!4663) 0))))

(assert (=> d!660606 (= (isEmpty!14787 t!4663) lt!826324)))

(declare-fun bs!451368 () Bool)

(assert (= bs!451368 d!660606))

(assert (=> bs!451368 m!2651871))

(assert (=> bs!451368 m!2651871))

(declare-fun m!2651923 () Bool)

(assert (=> bs!451368 m!2651923))

(declare-fun m!2651925 () Bool)

(assert (=> bs!451368 m!2651925))

(assert (=> b!2210162 d!660606))

(declare-fun b!2210237 () Bool)

(declare-fun e!1411725 () List!25936)

(declare-fun e!1411726 () List!25936)

(assert (=> b!2210237 (= e!1411725 e!1411726)))

(declare-fun c!353288 () Bool)

(assert (=> b!2210237 (= c!353288 ((_ is Leaf!12373) t!4663))))

(declare-fun b!2210236 () Bool)

(assert (=> b!2210236 (= e!1411725 Nil!25852)))

(declare-fun b!2210239 () Bool)

(declare-fun ++!6443 (List!25936 List!25936) List!25936)

(assert (=> b!2210239 (= e!1411726 (++!6443 (list!10016 (left!19876 t!4663)) (list!10016 (right!20206 t!4663))))))

(declare-fun b!2210238 () Bool)

(declare-fun list!10018 (IArray!16903) List!25936)

(assert (=> b!2210238 (= e!1411726 (list!10018 (xs!11391 t!4663)))))

(declare-fun d!660610 () Bool)

(declare-fun c!353287 () Bool)

(assert (=> d!660610 (= c!353287 ((_ is Empty!8449) t!4663))))

(assert (=> d!660610 (= (list!10016 t!4663) e!1411725)))

(assert (= (and d!660610 c!353287) b!2210236))

(assert (= (and d!660610 (not c!353287)) b!2210237))

(assert (= (and b!2210237 c!353288) b!2210238))

(assert (= (and b!2210237 (not c!353288)) b!2210239))

(declare-fun m!2651937 () Bool)

(assert (=> b!2210239 m!2651937))

(declare-fun m!2651939 () Bool)

(assert (=> b!2210239 m!2651939))

(assert (=> b!2210239 m!2651937))

(assert (=> b!2210239 m!2651939))

(declare-fun m!2651941 () Bool)

(assert (=> b!2210239 m!2651941))

(declare-fun m!2651943 () Bool)

(assert (=> b!2210238 m!2651943))

(assert (=> b!2210166 d!660610))

(declare-fun d!660618 () Bool)

(declare-fun lt!826330 () T!40508)

(declare-fun apply!6401 (List!25936 Int) T!40508)

(assert (=> d!660618 (= lt!826330 (apply!6401 (list!10018 (xs!11391 t!4663)) 0))))

(declare-fun choose!13048 (IArray!16903 Int) T!40508)

(assert (=> d!660618 (= lt!826330 (choose!13048 (xs!11391 t!4663) 0))))

(declare-fun e!1411733 () Bool)

(assert (=> d!660618 e!1411733))

(declare-fun res!949878 () Bool)

(assert (=> d!660618 (=> (not res!949878) (not e!1411733))))

(assert (=> d!660618 (= res!949878 (<= 0 0))))

(assert (=> d!660618 (= (apply!6399 (xs!11391 t!4663) 0) lt!826330)))

(declare-fun b!2210254 () Bool)

(declare-fun size!20155 (IArray!16903) Int)

(assert (=> b!2210254 (= e!1411733 (< 0 (size!20155 (xs!11391 t!4663))))))

(assert (= (and d!660618 res!949878) b!2210254))

(assert (=> d!660618 m!2651943))

(assert (=> d!660618 m!2651943))

(declare-fun m!2651945 () Bool)

(assert (=> d!660618 m!2651945))

(declare-fun m!2651947 () Bool)

(assert (=> d!660618 m!2651947))

(declare-fun m!2651949 () Bool)

(assert (=> b!2210254 m!2651949))

(assert (=> b!2210166 d!660618))

(declare-fun tp!687006 () Bool)

(declare-fun b!2210281 () Bool)

(declare-fun tp!687007 () Bool)

(declare-fun e!1411748 () Bool)

(assert (=> b!2210281 (= e!1411748 (and (inv!34966 (left!19876 (left!19876 t!4663))) tp!687007 (inv!34966 (right!20206 (left!19876 t!4663))) tp!687006))))

(declare-fun b!2210283 () Bool)

(declare-fun e!1411747 () Bool)

(declare-fun tp!687008 () Bool)

(assert (=> b!2210283 (= e!1411747 tp!687008)))

(declare-fun b!2210282 () Bool)

(assert (=> b!2210282 (= e!1411748 (and (inv!34967 (xs!11391 (left!19876 t!4663))) e!1411747))))

(assert (=> b!2210163 (= tp!686992 (and (inv!34966 (left!19876 t!4663)) e!1411748))))

(assert (= (and b!2210163 ((_ is Node!8449) (left!19876 t!4663))) b!2210281))

(assert (= b!2210282 b!2210283))

(assert (= (and b!2210163 ((_ is Leaf!12373) (left!19876 t!4663))) b!2210282))

(declare-fun m!2651967 () Bool)

(assert (=> b!2210281 m!2651967))

(declare-fun m!2651969 () Bool)

(assert (=> b!2210281 m!2651969))

(declare-fun m!2651971 () Bool)

(assert (=> b!2210282 m!2651971))

(assert (=> b!2210163 m!2651867))

(declare-fun tp!687014 () Bool)

(declare-fun tp!687013 () Bool)

(declare-fun e!1411752 () Bool)

(declare-fun b!2210288 () Bool)

(assert (=> b!2210288 (= e!1411752 (and (inv!34966 (left!19876 (right!20206 t!4663))) tp!687014 (inv!34966 (right!20206 (right!20206 t!4663))) tp!687013))))

(declare-fun b!2210290 () Bool)

(declare-fun e!1411751 () Bool)

(declare-fun tp!687015 () Bool)

(assert (=> b!2210290 (= e!1411751 tp!687015)))

(declare-fun b!2210289 () Bool)

(assert (=> b!2210289 (= e!1411752 (and (inv!34967 (xs!11391 (right!20206 t!4663))) e!1411751))))

(assert (=> b!2210163 (= tp!686993 (and (inv!34966 (right!20206 t!4663)) e!1411752))))

(assert (= (and b!2210163 ((_ is Node!8449) (right!20206 t!4663))) b!2210288))

(assert (= b!2210289 b!2210290))

(assert (= (and b!2210163 ((_ is Leaf!12373) (right!20206 t!4663))) b!2210289))

(declare-fun m!2651973 () Bool)

(assert (=> b!2210288 m!2651973))

(declare-fun m!2651975 () Bool)

(assert (=> b!2210288 m!2651975))

(declare-fun m!2651977 () Bool)

(assert (=> b!2210289 m!2651977))

(assert (=> b!2210163 m!2651869))

(declare-fun b!2210295 () Bool)

(declare-fun e!1411755 () Bool)

(declare-fun tp_is_empty!9765 () Bool)

(declare-fun tp!687018 () Bool)

(assert (=> b!2210295 (= e!1411755 (and tp_is_empty!9765 tp!687018))))

(assert (=> b!2210165 (= tp!686994 e!1411755)))

(assert (= (and b!2210165 ((_ is Cons!25852) (innerList!8509 (xs!11391 t!4663)))) b!2210295))

(check-sat (not b!2210213) (not b!2210295) (not b!2210283) (not b!2210290) (not b!2210209) (not d!660606) (not b!2210282) (not d!660590) (not b!2210289) (not b!2210215) (not b!2210163) (not b!2210211) (not b!2210182) (not b!2210184) (not b!2210238) (not b!2210288) (not b!2210207) (not b!2210210) (not b!2210208) (not b!2210281) (not b!2210212) (not b!2210239) tp_is_empty!9765 (not b!2210187) (not b!2210185) (not d!660618) (not b!2210254))
(check-sat)
(get-model)

(declare-fun d!660622 () Bool)

(declare-fun res!949891 () Bool)

(declare-fun e!1411761 () Bool)

(assert (=> d!660622 (=> res!949891 e!1411761)))

(assert (=> d!660622 (= res!949891 (not ((_ is Node!8449) (right!20206 t!4663))))))

(assert (=> d!660622 (= (isBalanced!2607 (right!20206 t!4663)) e!1411761)))

(declare-fun b!2210302 () Bool)

(declare-fun res!949888 () Bool)

(declare-fun e!1411760 () Bool)

(assert (=> b!2210302 (=> (not res!949888) (not e!1411760))))

(assert (=> b!2210302 (= res!949888 (isBalanced!2607 (right!20206 (right!20206 t!4663))))))

(declare-fun b!2210303 () Bool)

(assert (=> b!2210303 (= e!1411760 (not (isEmpty!14787 (right!20206 (right!20206 t!4663)))))))

(declare-fun b!2210304 () Bool)

(declare-fun res!949886 () Bool)

(assert (=> b!2210304 (=> (not res!949886) (not e!1411760))))

(assert (=> b!2210304 (= res!949886 (isBalanced!2607 (left!19876 (right!20206 t!4663))))))

(declare-fun b!2210305 () Bool)

(assert (=> b!2210305 (= e!1411761 e!1411760)))

(declare-fun res!949887 () Bool)

(assert (=> b!2210305 (=> (not res!949887) (not e!1411760))))

(assert (=> b!2210305 (= res!949887 (<= (- 1) (- (height!1272 (left!19876 (right!20206 t!4663))) (height!1272 (right!20206 (right!20206 t!4663))))))))

(declare-fun b!2210306 () Bool)

(declare-fun res!949889 () Bool)

(assert (=> b!2210306 (=> (not res!949889) (not e!1411760))))

(assert (=> b!2210306 (= res!949889 (not (isEmpty!14787 (left!19876 (right!20206 t!4663)))))))

(declare-fun b!2210307 () Bool)

(declare-fun res!949890 () Bool)

(assert (=> b!2210307 (=> (not res!949890) (not e!1411760))))

(assert (=> b!2210307 (= res!949890 (<= (- (height!1272 (left!19876 (right!20206 t!4663))) (height!1272 (right!20206 (right!20206 t!4663)))) 1))))

(assert (= (and d!660622 (not res!949891)) b!2210305))

(assert (= (and b!2210305 res!949887) b!2210307))

(assert (= (and b!2210307 res!949890) b!2210304))

(assert (= (and b!2210304 res!949886) b!2210302))

(assert (= (and b!2210302 res!949888) b!2210306))

(assert (= (and b!2210306 res!949889) b!2210303))

(declare-fun m!2651991 () Bool)

(assert (=> b!2210304 m!2651991))

(declare-fun m!2651993 () Bool)

(assert (=> b!2210306 m!2651993))

(declare-fun m!2651995 () Bool)

(assert (=> b!2210307 m!2651995))

(declare-fun m!2651997 () Bool)

(assert (=> b!2210307 m!2651997))

(assert (=> b!2210305 m!2651995))

(assert (=> b!2210305 m!2651997))

(declare-fun m!2651999 () Bool)

(assert (=> b!2210303 m!2651999))

(declare-fun m!2652001 () Bool)

(assert (=> b!2210302 m!2652001))

(assert (=> b!2210207 d!660622))

(declare-fun d!660624 () Bool)

(assert (=> d!660624 (= (inv!34967 (xs!11391 (right!20206 t!4663))) (<= (size!20150 (innerList!8509 (xs!11391 (right!20206 t!4663)))) 2147483647))))

(declare-fun bs!451371 () Bool)

(assert (= bs!451371 d!660624))

(declare-fun m!2652003 () Bool)

(assert (=> bs!451371 m!2652003))

(assert (=> b!2210289 d!660624))

(declare-fun d!660626 () Bool)

(declare-fun c!353290 () Bool)

(assert (=> d!660626 (= c!353290 ((_ is Node!8449) (left!19876 (right!20206 t!4663))))))

(declare-fun e!1411762 () Bool)

(assert (=> d!660626 (= (inv!34966 (left!19876 (right!20206 t!4663))) e!1411762)))

(declare-fun b!2210308 () Bool)

(assert (=> b!2210308 (= e!1411762 (inv!34968 (left!19876 (right!20206 t!4663))))))

(declare-fun b!2210309 () Bool)

(declare-fun e!1411763 () Bool)

(assert (=> b!2210309 (= e!1411762 e!1411763)))

(declare-fun res!949892 () Bool)

(assert (=> b!2210309 (= res!949892 (not ((_ is Leaf!12373) (left!19876 (right!20206 t!4663)))))))

(assert (=> b!2210309 (=> res!949892 e!1411763)))

(declare-fun b!2210310 () Bool)

(assert (=> b!2210310 (= e!1411763 (inv!34969 (left!19876 (right!20206 t!4663))))))

(assert (= (and d!660626 c!353290) b!2210308))

(assert (= (and d!660626 (not c!353290)) b!2210309))

(assert (= (and b!2210309 (not res!949892)) b!2210310))

(declare-fun m!2652005 () Bool)

(assert (=> b!2210308 m!2652005))

(declare-fun m!2652007 () Bool)

(assert (=> b!2210310 m!2652007))

(assert (=> b!2210288 d!660626))

(declare-fun d!660628 () Bool)

(declare-fun c!353291 () Bool)

(assert (=> d!660628 (= c!353291 ((_ is Node!8449) (right!20206 (right!20206 t!4663))))))

(declare-fun e!1411764 () Bool)

(assert (=> d!660628 (= (inv!34966 (right!20206 (right!20206 t!4663))) e!1411764)))

(declare-fun b!2210311 () Bool)

(assert (=> b!2210311 (= e!1411764 (inv!34968 (right!20206 (right!20206 t!4663))))))

(declare-fun b!2210312 () Bool)

(declare-fun e!1411765 () Bool)

(assert (=> b!2210312 (= e!1411764 e!1411765)))

(declare-fun res!949893 () Bool)

(assert (=> b!2210312 (= res!949893 (not ((_ is Leaf!12373) (right!20206 (right!20206 t!4663)))))))

(assert (=> b!2210312 (=> res!949893 e!1411765)))

(declare-fun b!2210313 () Bool)

(assert (=> b!2210313 (= e!1411765 (inv!34969 (right!20206 (right!20206 t!4663))))))

(assert (= (and d!660628 c!353291) b!2210311))

(assert (= (and d!660628 (not c!353291)) b!2210312))

(assert (= (and b!2210312 (not res!949893)) b!2210313))

(declare-fun m!2652009 () Bool)

(assert (=> b!2210311 m!2652009))

(declare-fun m!2652011 () Bool)

(assert (=> b!2210313 m!2652011))

(assert (=> b!2210288 d!660628))

(declare-fun d!660630 () Bool)

(assert (=> d!660630 (= (inv!34967 (xs!11391 (left!19876 t!4663))) (<= (size!20150 (innerList!8509 (xs!11391 (left!19876 t!4663)))) 2147483647))))

(declare-fun bs!451372 () Bool)

(assert (= bs!451372 d!660630))

(declare-fun m!2652013 () Bool)

(assert (=> bs!451372 m!2652013))

(assert (=> b!2210282 d!660630))

(declare-fun d!660632 () Bool)

(declare-fun c!353292 () Bool)

(assert (=> d!660632 (= c!353292 ((_ is Node!8449) (left!19876 (left!19876 t!4663))))))

(declare-fun e!1411766 () Bool)

(assert (=> d!660632 (= (inv!34966 (left!19876 (left!19876 t!4663))) e!1411766)))

(declare-fun b!2210314 () Bool)

(assert (=> b!2210314 (= e!1411766 (inv!34968 (left!19876 (left!19876 t!4663))))))

(declare-fun b!2210315 () Bool)

(declare-fun e!1411767 () Bool)

(assert (=> b!2210315 (= e!1411766 e!1411767)))

(declare-fun res!949894 () Bool)

(assert (=> b!2210315 (= res!949894 (not ((_ is Leaf!12373) (left!19876 (left!19876 t!4663)))))))

(assert (=> b!2210315 (=> res!949894 e!1411767)))

(declare-fun b!2210316 () Bool)

(assert (=> b!2210316 (= e!1411767 (inv!34969 (left!19876 (left!19876 t!4663))))))

(assert (= (and d!660632 c!353292) b!2210314))

(assert (= (and d!660632 (not c!353292)) b!2210315))

(assert (= (and b!2210315 (not res!949894)) b!2210316))

(declare-fun m!2652015 () Bool)

(assert (=> b!2210314 m!2652015))

(declare-fun m!2652017 () Bool)

(assert (=> b!2210316 m!2652017))

(assert (=> b!2210281 d!660632))

(declare-fun d!660634 () Bool)

(declare-fun c!353293 () Bool)

(assert (=> d!660634 (= c!353293 ((_ is Node!8449) (right!20206 (left!19876 t!4663))))))

(declare-fun e!1411768 () Bool)

(assert (=> d!660634 (= (inv!34966 (right!20206 (left!19876 t!4663))) e!1411768)))

(declare-fun b!2210317 () Bool)

(assert (=> b!2210317 (= e!1411768 (inv!34968 (right!20206 (left!19876 t!4663))))))

(declare-fun b!2210318 () Bool)

(declare-fun e!1411769 () Bool)

(assert (=> b!2210318 (= e!1411768 e!1411769)))

(declare-fun res!949895 () Bool)

(assert (=> b!2210318 (= res!949895 (not ((_ is Leaf!12373) (right!20206 (left!19876 t!4663)))))))

(assert (=> b!2210318 (=> res!949895 e!1411769)))

(declare-fun b!2210319 () Bool)

(assert (=> b!2210319 (= e!1411769 (inv!34969 (right!20206 (left!19876 t!4663))))))

(assert (= (and d!660634 c!353293) b!2210317))

(assert (= (and d!660634 (not c!353293)) b!2210318))

(assert (= (and b!2210318 (not res!949895)) b!2210319))

(declare-fun m!2652019 () Bool)

(assert (=> b!2210317 m!2652019))

(declare-fun m!2652021 () Bool)

(assert (=> b!2210319 m!2652021))

(assert (=> b!2210281 d!660634))

(declare-fun d!660636 () Bool)

(assert (=> d!660636 (= (height!1272 (left!19876 t!4663)) (ite ((_ is Empty!8449) (left!19876 t!4663)) 0 (ite ((_ is Leaf!12373) (left!19876 t!4663)) 1 (cheight!8660 (left!19876 t!4663)))))))

(assert (=> b!2210210 d!660636))

(declare-fun d!660638 () Bool)

(assert (=> d!660638 (= (height!1272 (right!20206 t!4663)) (ite ((_ is Empty!8449) (right!20206 t!4663)) 0 (ite ((_ is Leaf!12373) (right!20206 t!4663)) 1 (cheight!8660 (right!20206 t!4663)))))))

(assert (=> b!2210210 d!660638))

(declare-fun d!660640 () Bool)

(declare-fun res!949902 () Bool)

(declare-fun e!1411772 () Bool)

(assert (=> d!660640 (=> (not res!949902) (not e!1411772))))

(assert (=> d!660640 (= res!949902 (= (csize!17128 t!4663) (+ (size!20153 (left!19876 t!4663)) (size!20153 (right!20206 t!4663)))))))

(assert (=> d!660640 (= (inv!34968 t!4663) e!1411772)))

(declare-fun b!2210326 () Bool)

(declare-fun res!949903 () Bool)

(assert (=> b!2210326 (=> (not res!949903) (not e!1411772))))

(assert (=> b!2210326 (= res!949903 (and (not (= (left!19876 t!4663) Empty!8449)) (not (= (right!20206 t!4663) Empty!8449))))))

(declare-fun b!2210327 () Bool)

(declare-fun res!949904 () Bool)

(assert (=> b!2210327 (=> (not res!949904) (not e!1411772))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2210327 (= res!949904 (= (cheight!8660 t!4663) (+ (max!0 (height!1272 (left!19876 t!4663)) (height!1272 (right!20206 t!4663))) 1)))))

(declare-fun b!2210328 () Bool)

(assert (=> b!2210328 (= e!1411772 (<= 0 (cheight!8660 t!4663)))))

(assert (= (and d!660640 res!949902) b!2210326))

(assert (= (and b!2210326 res!949903) b!2210327))

(assert (= (and b!2210327 res!949904) b!2210328))

(declare-fun m!2652023 () Bool)

(assert (=> d!660640 m!2652023))

(declare-fun m!2652025 () Bool)

(assert (=> d!660640 m!2652025))

(assert (=> b!2210327 m!2651907))

(assert (=> b!2210327 m!2651909))

(assert (=> b!2210327 m!2651907))

(assert (=> b!2210327 m!2651909))

(declare-fun m!2652027 () Bool)

(assert (=> b!2210327 m!2652027))

(assert (=> b!2210213 d!660640))

(declare-fun d!660642 () Bool)

(declare-fun res!949910 () Bool)

(declare-fun e!1411774 () Bool)

(assert (=> d!660642 (=> res!949910 e!1411774)))

(assert (=> d!660642 (= res!949910 (not ((_ is Node!8449) (left!19876 t!4663))))))

(assert (=> d!660642 (= (isBalanced!2607 (left!19876 t!4663)) e!1411774)))

(declare-fun b!2210329 () Bool)

(declare-fun res!949907 () Bool)

(declare-fun e!1411773 () Bool)

(assert (=> b!2210329 (=> (not res!949907) (not e!1411773))))

(assert (=> b!2210329 (= res!949907 (isBalanced!2607 (right!20206 (left!19876 t!4663))))))

(declare-fun b!2210330 () Bool)

(assert (=> b!2210330 (= e!1411773 (not (isEmpty!14787 (right!20206 (left!19876 t!4663)))))))

(declare-fun b!2210331 () Bool)

(declare-fun res!949905 () Bool)

(assert (=> b!2210331 (=> (not res!949905) (not e!1411773))))

(assert (=> b!2210331 (= res!949905 (isBalanced!2607 (left!19876 (left!19876 t!4663))))))

(declare-fun b!2210332 () Bool)

(assert (=> b!2210332 (= e!1411774 e!1411773)))

(declare-fun res!949906 () Bool)

(assert (=> b!2210332 (=> (not res!949906) (not e!1411773))))

(assert (=> b!2210332 (= res!949906 (<= (- 1) (- (height!1272 (left!19876 (left!19876 t!4663))) (height!1272 (right!20206 (left!19876 t!4663))))))))

(declare-fun b!2210333 () Bool)

(declare-fun res!949908 () Bool)

(assert (=> b!2210333 (=> (not res!949908) (not e!1411773))))

(assert (=> b!2210333 (= res!949908 (not (isEmpty!14787 (left!19876 (left!19876 t!4663)))))))

(declare-fun b!2210334 () Bool)

(declare-fun res!949909 () Bool)

(assert (=> b!2210334 (=> (not res!949909) (not e!1411773))))

(assert (=> b!2210334 (= res!949909 (<= (- (height!1272 (left!19876 (left!19876 t!4663))) (height!1272 (right!20206 (left!19876 t!4663)))) 1))))

(assert (= (and d!660642 (not res!949910)) b!2210332))

(assert (= (and b!2210332 res!949906) b!2210334))

(assert (= (and b!2210334 res!949909) b!2210331))

(assert (= (and b!2210331 res!949905) b!2210329))

(assert (= (and b!2210329 res!949907) b!2210333))

(assert (= (and b!2210333 res!949908) b!2210330))

(declare-fun m!2652029 () Bool)

(assert (=> b!2210331 m!2652029))

(declare-fun m!2652031 () Bool)

(assert (=> b!2210333 m!2652031))

(declare-fun m!2652033 () Bool)

(assert (=> b!2210334 m!2652033))

(declare-fun m!2652035 () Bool)

(assert (=> b!2210334 m!2652035))

(assert (=> b!2210332 m!2652033))

(assert (=> b!2210332 m!2652035))

(declare-fun m!2652037 () Bool)

(assert (=> b!2210330 m!2652037))

(declare-fun m!2652039 () Bool)

(assert (=> b!2210329 m!2652039))

(assert (=> b!2210209 d!660642))

(declare-fun d!660644 () Bool)

(declare-fun lt!826331 () Bool)

(assert (=> d!660644 (= lt!826331 (isEmpty!14789 (list!10016 (right!20206 t!4663))))))

(assert (=> d!660644 (= lt!826331 (= (size!20153 (right!20206 t!4663)) 0))))

(assert (=> d!660644 (= (isEmpty!14787 (right!20206 t!4663)) lt!826331)))

(declare-fun bs!451373 () Bool)

(assert (= bs!451373 d!660644))

(assert (=> bs!451373 m!2651939))

(assert (=> bs!451373 m!2651939))

(declare-fun m!2652041 () Bool)

(assert (=> bs!451373 m!2652041))

(assert (=> bs!451373 m!2652025))

(assert (=> b!2210208 d!660644))

(declare-fun d!660646 () Bool)

(declare-fun lt!826334 () Int)

(assert (=> d!660646 (= lt!826334 (size!20150 (list!10018 (xs!11391 t!4663))))))

(declare-fun choose!13049 (IArray!16903) Int)

(assert (=> d!660646 (= lt!826334 (choose!13049 (xs!11391 t!4663)))))

(assert (=> d!660646 (= (size!20155 (xs!11391 t!4663)) lt!826334)))

(declare-fun bs!451374 () Bool)

(assert (= bs!451374 d!660646))

(assert (=> bs!451374 m!2651943))

(assert (=> bs!451374 m!2651943))

(declare-fun m!2652043 () Bool)

(assert (=> bs!451374 m!2652043))

(declare-fun m!2652045 () Bool)

(assert (=> bs!451374 m!2652045))

(assert (=> b!2210254 d!660646))

(declare-fun d!660648 () Bool)

(declare-fun res!949915 () Bool)

(declare-fun e!1411777 () Bool)

(assert (=> d!660648 (=> (not res!949915) (not e!1411777))))

(assert (=> d!660648 (= res!949915 (<= (size!20150 (list!10018 (xs!11391 (left!19876 t!4663)))) 512))))

(assert (=> d!660648 (= (inv!34969 (left!19876 t!4663)) e!1411777)))

(declare-fun b!2210339 () Bool)

(declare-fun res!949916 () Bool)

(assert (=> b!2210339 (=> (not res!949916) (not e!1411777))))

(assert (=> b!2210339 (= res!949916 (= (csize!17129 (left!19876 t!4663)) (size!20150 (list!10018 (xs!11391 (left!19876 t!4663))))))))

(declare-fun b!2210340 () Bool)

(assert (=> b!2210340 (= e!1411777 (and (> (csize!17129 (left!19876 t!4663)) 0) (<= (csize!17129 (left!19876 t!4663)) 512)))))

(assert (= (and d!660648 res!949915) b!2210339))

(assert (= (and b!2210339 res!949916) b!2210340))

(declare-fun m!2652047 () Bool)

(assert (=> d!660648 m!2652047))

(assert (=> d!660648 m!2652047))

(declare-fun m!2652049 () Bool)

(assert (=> d!660648 m!2652049))

(assert (=> b!2210339 m!2652047))

(assert (=> b!2210339 m!2652047))

(assert (=> b!2210339 m!2652049))

(assert (=> b!2210184 d!660648))

(assert (=> b!2210212 d!660636))

(assert (=> b!2210212 d!660638))

(declare-fun d!660650 () Bool)

(declare-fun res!949917 () Bool)

(declare-fun e!1411778 () Bool)

(assert (=> d!660650 (=> (not res!949917) (not e!1411778))))

(assert (=> d!660650 (= res!949917 (<= (size!20150 (list!10018 (xs!11391 t!4663))) 512))))

(assert (=> d!660650 (= (inv!34969 t!4663) e!1411778)))

(declare-fun b!2210341 () Bool)

(declare-fun res!949918 () Bool)

(assert (=> b!2210341 (=> (not res!949918) (not e!1411778))))

(assert (=> b!2210341 (= res!949918 (= (csize!17129 t!4663) (size!20150 (list!10018 (xs!11391 t!4663)))))))

(declare-fun b!2210342 () Bool)

(assert (=> b!2210342 (= e!1411778 (and (> (csize!17129 t!4663) 0) (<= (csize!17129 t!4663) 512)))))

(assert (= (and d!660650 res!949917) b!2210341))

(assert (= (and b!2210341 res!949918) b!2210342))

(assert (=> d!660650 m!2651943))

(assert (=> d!660650 m!2651943))

(assert (=> d!660650 m!2652043))

(assert (=> b!2210341 m!2651943))

(assert (=> b!2210341 m!2651943))

(assert (=> b!2210341 m!2652043))

(assert (=> b!2210215 d!660650))

(declare-fun d!660652 () Bool)

(declare-fun res!949919 () Bool)

(declare-fun e!1411779 () Bool)

(assert (=> d!660652 (=> (not res!949919) (not e!1411779))))

(assert (=> d!660652 (= res!949919 (= (csize!17128 (left!19876 t!4663)) (+ (size!20153 (left!19876 (left!19876 t!4663))) (size!20153 (right!20206 (left!19876 t!4663))))))))

(assert (=> d!660652 (= (inv!34968 (left!19876 t!4663)) e!1411779)))

(declare-fun b!2210343 () Bool)

(declare-fun res!949920 () Bool)

(assert (=> b!2210343 (=> (not res!949920) (not e!1411779))))

(assert (=> b!2210343 (= res!949920 (and (not (= (left!19876 (left!19876 t!4663)) Empty!8449)) (not (= (right!20206 (left!19876 t!4663)) Empty!8449))))))

(declare-fun b!2210344 () Bool)

(declare-fun res!949921 () Bool)

(assert (=> b!2210344 (=> (not res!949921) (not e!1411779))))

(assert (=> b!2210344 (= res!949921 (= (cheight!8660 (left!19876 t!4663)) (+ (max!0 (height!1272 (left!19876 (left!19876 t!4663))) (height!1272 (right!20206 (left!19876 t!4663)))) 1)))))

(declare-fun b!2210345 () Bool)

(assert (=> b!2210345 (= e!1411779 (<= 0 (cheight!8660 (left!19876 t!4663))))))

(assert (= (and d!660652 res!949919) b!2210343))

(assert (= (and b!2210343 res!949920) b!2210344))

(assert (= (and b!2210344 res!949921) b!2210345))

(declare-fun m!2652051 () Bool)

(assert (=> d!660652 m!2652051))

(declare-fun m!2652053 () Bool)

(assert (=> d!660652 m!2652053))

(assert (=> b!2210344 m!2652033))

(assert (=> b!2210344 m!2652035))

(assert (=> b!2210344 m!2652033))

(assert (=> b!2210344 m!2652035))

(declare-fun m!2652055 () Bool)

(assert (=> b!2210344 m!2652055))

(assert (=> b!2210182 d!660652))

(declare-fun d!660654 () Bool)

(declare-fun lt!826335 () Bool)

(assert (=> d!660654 (= lt!826335 (isEmpty!14789 (list!10016 (left!19876 t!4663))))))

(assert (=> d!660654 (= lt!826335 (= (size!20153 (left!19876 t!4663)) 0))))

(assert (=> d!660654 (= (isEmpty!14787 (left!19876 t!4663)) lt!826335)))

(declare-fun bs!451375 () Bool)

(assert (= bs!451375 d!660654))

(assert (=> bs!451375 m!2651937))

(assert (=> bs!451375 m!2651937))

(declare-fun m!2652057 () Bool)

(assert (=> bs!451375 m!2652057))

(assert (=> bs!451375 m!2652023))

(assert (=> b!2210211 d!660654))

(declare-fun b!2210356 () Bool)

(declare-fun res!949927 () Bool)

(declare-fun e!1411785 () Bool)

(assert (=> b!2210356 (=> (not res!949927) (not e!1411785))))

(declare-fun lt!826338 () List!25936)

(assert (=> b!2210356 (= res!949927 (= (size!20150 lt!826338) (+ (size!20150 (list!10016 (left!19876 t!4663))) (size!20150 (list!10016 (right!20206 t!4663))))))))

(declare-fun b!2210357 () Bool)

(assert (=> b!2210357 (= e!1411785 (or (not (= (list!10016 (right!20206 t!4663)) Nil!25852)) (= lt!826338 (list!10016 (left!19876 t!4663)))))))

(declare-fun d!660656 () Bool)

(assert (=> d!660656 e!1411785))

(declare-fun res!949926 () Bool)

(assert (=> d!660656 (=> (not res!949926) (not e!1411785))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3509 (List!25936) (InoxSet T!40508))

(assert (=> d!660656 (= res!949926 (= (content!3509 lt!826338) ((_ map or) (content!3509 (list!10016 (left!19876 t!4663))) (content!3509 (list!10016 (right!20206 t!4663))))))))

(declare-fun e!1411784 () List!25936)

(assert (=> d!660656 (= lt!826338 e!1411784)))

(declare-fun c!353296 () Bool)

(assert (=> d!660656 (= c!353296 ((_ is Nil!25852) (list!10016 (left!19876 t!4663))))))

(assert (=> d!660656 (= (++!6443 (list!10016 (left!19876 t!4663)) (list!10016 (right!20206 t!4663))) lt!826338)))

(declare-fun b!2210354 () Bool)

(assert (=> b!2210354 (= e!1411784 (list!10016 (right!20206 t!4663)))))

(declare-fun b!2210355 () Bool)

(assert (=> b!2210355 (= e!1411784 (Cons!25852 (h!31253 (list!10016 (left!19876 t!4663))) (++!6443 (t!198620 (list!10016 (left!19876 t!4663))) (list!10016 (right!20206 t!4663)))))))

(assert (= (and d!660656 c!353296) b!2210354))

(assert (= (and d!660656 (not c!353296)) b!2210355))

(assert (= (and d!660656 res!949926) b!2210356))

(assert (= (and b!2210356 res!949927) b!2210357))

(declare-fun m!2652059 () Bool)

(assert (=> b!2210356 m!2652059))

(assert (=> b!2210356 m!2651937))

(declare-fun m!2652061 () Bool)

(assert (=> b!2210356 m!2652061))

(assert (=> b!2210356 m!2651939))

(declare-fun m!2652063 () Bool)

(assert (=> b!2210356 m!2652063))

(declare-fun m!2652065 () Bool)

(assert (=> d!660656 m!2652065))

(assert (=> d!660656 m!2651937))

(declare-fun m!2652067 () Bool)

(assert (=> d!660656 m!2652067))

(assert (=> d!660656 m!2651939))

(declare-fun m!2652069 () Bool)

(assert (=> d!660656 m!2652069))

(assert (=> b!2210355 m!2651939))

(declare-fun m!2652071 () Bool)

(assert (=> b!2210355 m!2652071))

(assert (=> b!2210239 d!660656))

(declare-fun b!2210359 () Bool)

(declare-fun e!1411786 () List!25936)

(declare-fun e!1411787 () List!25936)

(assert (=> b!2210359 (= e!1411786 e!1411787)))

(declare-fun c!353298 () Bool)

(assert (=> b!2210359 (= c!353298 ((_ is Leaf!12373) (left!19876 t!4663)))))

(declare-fun b!2210358 () Bool)

(assert (=> b!2210358 (= e!1411786 Nil!25852)))

(declare-fun b!2210361 () Bool)

(assert (=> b!2210361 (= e!1411787 (++!6443 (list!10016 (left!19876 (left!19876 t!4663))) (list!10016 (right!20206 (left!19876 t!4663)))))))

(declare-fun b!2210360 () Bool)

(assert (=> b!2210360 (= e!1411787 (list!10018 (xs!11391 (left!19876 t!4663))))))

(declare-fun d!660660 () Bool)

(declare-fun c!353297 () Bool)

(assert (=> d!660660 (= c!353297 ((_ is Empty!8449) (left!19876 t!4663)))))

(assert (=> d!660660 (= (list!10016 (left!19876 t!4663)) e!1411786)))

(assert (= (and d!660660 c!353297) b!2210358))

(assert (= (and d!660660 (not c!353297)) b!2210359))

(assert (= (and b!2210359 c!353298) b!2210360))

(assert (= (and b!2210359 (not c!353298)) b!2210361))

(declare-fun m!2652073 () Bool)

(assert (=> b!2210361 m!2652073))

(declare-fun m!2652075 () Bool)

(assert (=> b!2210361 m!2652075))

(assert (=> b!2210361 m!2652073))

(assert (=> b!2210361 m!2652075))

(declare-fun m!2652077 () Bool)

(assert (=> b!2210361 m!2652077))

(assert (=> b!2210360 m!2652047))

(assert (=> b!2210239 d!660660))

(declare-fun b!2210369 () Bool)

(declare-fun e!1411792 () List!25936)

(declare-fun e!1411793 () List!25936)

(assert (=> b!2210369 (= e!1411792 e!1411793)))

(declare-fun c!353302 () Bool)

(assert (=> b!2210369 (= c!353302 ((_ is Leaf!12373) (right!20206 t!4663)))))

(declare-fun b!2210368 () Bool)

(assert (=> b!2210368 (= e!1411792 Nil!25852)))

(declare-fun b!2210371 () Bool)

(assert (=> b!2210371 (= e!1411793 (++!6443 (list!10016 (left!19876 (right!20206 t!4663))) (list!10016 (right!20206 (right!20206 t!4663)))))))

(declare-fun b!2210370 () Bool)

(assert (=> b!2210370 (= e!1411793 (list!10018 (xs!11391 (right!20206 t!4663))))))

(declare-fun d!660662 () Bool)

(declare-fun c!353301 () Bool)

(assert (=> d!660662 (= c!353301 ((_ is Empty!8449) (right!20206 t!4663)))))

(assert (=> d!660662 (= (list!10016 (right!20206 t!4663)) e!1411792)))

(assert (= (and d!660662 c!353301) b!2210368))

(assert (= (and d!660662 (not c!353301)) b!2210369))

(assert (= (and b!2210369 c!353302) b!2210370))

(assert (= (and b!2210369 (not c!353302)) b!2210371))

(declare-fun m!2652079 () Bool)

(assert (=> b!2210371 m!2652079))

(declare-fun m!2652081 () Bool)

(assert (=> b!2210371 m!2652081))

(assert (=> b!2210371 m!2652079))

(assert (=> b!2210371 m!2652081))

(declare-fun m!2652083 () Bool)

(assert (=> b!2210371 m!2652083))

(declare-fun m!2652085 () Bool)

(assert (=> b!2210370 m!2652085))

(assert (=> b!2210239 d!660662))

(declare-fun d!660664 () Bool)

(assert (=> d!660664 (= (list!10018 (xs!11391 t!4663)) (innerList!8509 (xs!11391 t!4663)))))

(assert (=> b!2210238 d!660664))

(assert (=> b!2210163 d!660594))

(assert (=> b!2210163 d!660596))

(declare-fun d!660666 () Bool)

(assert (=> d!660666 (= (isEmpty!14789 (list!10016 t!4663)) ((_ is Nil!25852) (list!10016 t!4663)))))

(assert (=> d!660606 d!660666))

(assert (=> d!660606 d!660610))

(declare-fun d!660668 () Bool)

(declare-fun lt!826344 () Int)

(assert (=> d!660668 (= lt!826344 (size!20150 (list!10016 t!4663)))))

(assert (=> d!660668 (= lt!826344 (ite ((_ is Empty!8449) t!4663) 0 (ite ((_ is Leaf!12373) t!4663) (csize!17129 t!4663) (csize!17128 t!4663))))))

(assert (=> d!660668 (= (size!20153 t!4663) lt!826344)))

(declare-fun bs!451376 () Bool)

(assert (= bs!451376 d!660668))

(assert (=> bs!451376 m!2651871))

(assert (=> bs!451376 m!2651871))

(declare-fun m!2652097 () Bool)

(assert (=> bs!451376 m!2652097))

(assert (=> d!660606 d!660668))

(declare-fun d!660674 () Bool)

(declare-fun lt!826347 () Int)

(assert (=> d!660674 (>= lt!826347 0)))

(declare-fun e!1411800 () Int)

(assert (=> d!660674 (= lt!826347 e!1411800)))

(declare-fun c!353306 () Bool)

(assert (=> d!660674 (= c!353306 ((_ is Nil!25852) (innerList!8509 (xs!11391 t!4663))))))

(assert (=> d!660674 (= (size!20150 (innerList!8509 (xs!11391 t!4663))) lt!826347)))

(declare-fun b!2210383 () Bool)

(assert (=> b!2210383 (= e!1411800 0)))

(declare-fun b!2210384 () Bool)

(assert (=> b!2210384 (= e!1411800 (+ 1 (size!20150 (t!198620 (innerList!8509 (xs!11391 t!4663))))))))

(assert (= (and d!660674 c!353306) b!2210383))

(assert (= (and d!660674 (not c!353306)) b!2210384))

(declare-fun m!2652099 () Bool)

(assert (=> b!2210384 m!2652099))

(assert (=> d!660590 d!660674))

(declare-fun d!660678 () Bool)

(declare-fun res!949935 () Bool)

(declare-fun e!1411801 () Bool)

(assert (=> d!660678 (=> (not res!949935) (not e!1411801))))

(assert (=> d!660678 (= res!949935 (= (csize!17128 (right!20206 t!4663)) (+ (size!20153 (left!19876 (right!20206 t!4663))) (size!20153 (right!20206 (right!20206 t!4663))))))))

(assert (=> d!660678 (= (inv!34968 (right!20206 t!4663)) e!1411801)))

(declare-fun b!2210385 () Bool)

(declare-fun res!949936 () Bool)

(assert (=> b!2210385 (=> (not res!949936) (not e!1411801))))

(assert (=> b!2210385 (= res!949936 (and (not (= (left!19876 (right!20206 t!4663)) Empty!8449)) (not (= (right!20206 (right!20206 t!4663)) Empty!8449))))))

(declare-fun b!2210386 () Bool)

(declare-fun res!949937 () Bool)

(assert (=> b!2210386 (=> (not res!949937) (not e!1411801))))

(assert (=> b!2210386 (= res!949937 (= (cheight!8660 (right!20206 t!4663)) (+ (max!0 (height!1272 (left!19876 (right!20206 t!4663))) (height!1272 (right!20206 (right!20206 t!4663)))) 1)))))

(declare-fun b!2210387 () Bool)

(assert (=> b!2210387 (= e!1411801 (<= 0 (cheight!8660 (right!20206 t!4663))))))

(assert (= (and d!660678 res!949935) b!2210385))

(assert (= (and b!2210385 res!949936) b!2210386))

(assert (= (and b!2210386 res!949937) b!2210387))

(declare-fun m!2652101 () Bool)

(assert (=> d!660678 m!2652101))

(declare-fun m!2652103 () Bool)

(assert (=> d!660678 m!2652103))

(assert (=> b!2210386 m!2651995))

(assert (=> b!2210386 m!2651997))

(assert (=> b!2210386 m!2651995))

(assert (=> b!2210386 m!2651997))

(declare-fun m!2652105 () Bool)

(assert (=> b!2210386 m!2652105))

(assert (=> b!2210185 d!660678))

(declare-fun d!660680 () Bool)

(declare-fun res!949940 () Bool)

(declare-fun e!1411803 () Bool)

(assert (=> d!660680 (=> (not res!949940) (not e!1411803))))

(assert (=> d!660680 (= res!949940 (<= (size!20150 (list!10018 (xs!11391 (right!20206 t!4663)))) 512))))

(assert (=> d!660680 (= (inv!34969 (right!20206 t!4663)) e!1411803)))

(declare-fun b!2210390 () Bool)

(declare-fun res!949941 () Bool)

(assert (=> b!2210390 (=> (not res!949941) (not e!1411803))))

(assert (=> b!2210390 (= res!949941 (= (csize!17129 (right!20206 t!4663)) (size!20150 (list!10018 (xs!11391 (right!20206 t!4663))))))))

(declare-fun b!2210391 () Bool)

(assert (=> b!2210391 (= e!1411803 (and (> (csize!17129 (right!20206 t!4663)) 0) (<= (csize!17129 (right!20206 t!4663)) 512)))))

(assert (= (and d!660680 res!949940) b!2210390))

(assert (= (and b!2210390 res!949941) b!2210391))

(assert (=> d!660680 m!2652085))

(assert (=> d!660680 m!2652085))

(declare-fun m!2652107 () Bool)

(assert (=> d!660680 m!2652107))

(assert (=> b!2210390 m!2652085))

(assert (=> b!2210390 m!2652085))

(assert (=> b!2210390 m!2652107))

(assert (=> b!2210187 d!660680))

(declare-fun d!660682 () Bool)

(declare-fun lt!826353 () T!40508)

(declare-fun contains!4292 (List!25936 T!40508) Bool)

(assert (=> d!660682 (contains!4292 (list!10018 (xs!11391 t!4663)) lt!826353)))

(declare-fun e!1411811 () T!40508)

(assert (=> d!660682 (= lt!826353 e!1411811)))

(declare-fun c!353312 () Bool)

(assert (=> d!660682 (= c!353312 (= 0 0))))

(declare-fun e!1411812 () Bool)

(assert (=> d!660682 e!1411812))

(declare-fun res!949944 () Bool)

(assert (=> d!660682 (=> (not res!949944) (not e!1411812))))

(assert (=> d!660682 (= res!949944 (<= 0 0))))

(assert (=> d!660682 (= (apply!6401 (list!10018 (xs!11391 t!4663)) 0) lt!826353)))

(declare-fun b!2210404 () Bool)

(assert (=> b!2210404 (= e!1411812 (< 0 (size!20150 (list!10018 (xs!11391 t!4663)))))))

(declare-fun b!2210405 () Bool)

(declare-fun head!4717 (List!25936) T!40508)

(assert (=> b!2210405 (= e!1411811 (head!4717 (list!10018 (xs!11391 t!4663))))))

(declare-fun b!2210406 () Bool)

(declare-fun tail!3209 (List!25936) List!25936)

(assert (=> b!2210406 (= e!1411811 (apply!6401 (tail!3209 (list!10018 (xs!11391 t!4663))) (- 0 1)))))

(assert (= (and d!660682 res!949944) b!2210404))

(assert (= (and d!660682 c!353312) b!2210405))

(assert (= (and d!660682 (not c!353312)) b!2210406))

(assert (=> d!660682 m!2651943))

(declare-fun m!2652113 () Bool)

(assert (=> d!660682 m!2652113))

(assert (=> b!2210404 m!2651943))

(assert (=> b!2210404 m!2652043))

(assert (=> b!2210405 m!2651943))

(declare-fun m!2652115 () Bool)

(assert (=> b!2210405 m!2652115))

(assert (=> b!2210406 m!2651943))

(declare-fun m!2652117 () Bool)

(assert (=> b!2210406 m!2652117))

(assert (=> b!2210406 m!2652117))

(declare-fun m!2652119 () Bool)

(assert (=> b!2210406 m!2652119))

(assert (=> d!660618 d!660682))

(assert (=> d!660618 d!660664))

(declare-fun d!660692 () Bool)

(declare-fun _$3!414 () T!40508)

(assert (=> d!660692 (= _$3!414 (apply!6401 (list!10018 (xs!11391 t!4663)) 0))))

(assert (=> d!660692 tp_is_empty!9765))

(assert (=> d!660692 (= (choose!13048 (xs!11391 t!4663) 0) _$3!414)))

(declare-fun bs!451380 () Bool)

(assert (= bs!451380 d!660692))

(assert (=> bs!451380 m!2651943))

(assert (=> bs!451380 m!2651943))

(assert (=> bs!451380 m!2651945))

(assert (=> d!660618 d!660692))

(declare-fun b!2210413 () Bool)

(declare-fun e!1411817 () Bool)

(declare-fun tp!687025 () Bool)

(assert (=> b!2210413 (= e!1411817 (and tp_is_empty!9765 tp!687025))))

(assert (=> b!2210283 (= tp!687008 e!1411817)))

(assert (= (and b!2210283 ((_ is Cons!25852) (innerList!8509 (xs!11391 (left!19876 t!4663))))) b!2210413))

(declare-fun tp!687026 () Bool)

(declare-fun e!1411819 () Bool)

(declare-fun b!2210414 () Bool)

(declare-fun tp!687027 () Bool)

(assert (=> b!2210414 (= e!1411819 (and (inv!34966 (left!19876 (left!19876 (right!20206 t!4663)))) tp!687027 (inv!34966 (right!20206 (left!19876 (right!20206 t!4663)))) tp!687026))))

(declare-fun b!2210416 () Bool)

(declare-fun e!1411818 () Bool)

(declare-fun tp!687028 () Bool)

(assert (=> b!2210416 (= e!1411818 tp!687028)))

(declare-fun b!2210415 () Bool)

(assert (=> b!2210415 (= e!1411819 (and (inv!34967 (xs!11391 (left!19876 (right!20206 t!4663)))) e!1411818))))

(assert (=> b!2210288 (= tp!687014 (and (inv!34966 (left!19876 (right!20206 t!4663))) e!1411819))))

(assert (= (and b!2210288 ((_ is Node!8449) (left!19876 (right!20206 t!4663)))) b!2210414))

(assert (= b!2210415 b!2210416))

(assert (= (and b!2210288 ((_ is Leaf!12373) (left!19876 (right!20206 t!4663)))) b!2210415))

(declare-fun m!2652131 () Bool)

(assert (=> b!2210414 m!2652131))

(declare-fun m!2652133 () Bool)

(assert (=> b!2210414 m!2652133))

(declare-fun m!2652135 () Bool)

(assert (=> b!2210415 m!2652135))

(assert (=> b!2210288 m!2651973))

(declare-fun tp!687029 () Bool)

(declare-fun tp!687030 () Bool)

(declare-fun e!1411821 () Bool)

(declare-fun b!2210417 () Bool)

(assert (=> b!2210417 (= e!1411821 (and (inv!34966 (left!19876 (right!20206 (right!20206 t!4663)))) tp!687030 (inv!34966 (right!20206 (right!20206 (right!20206 t!4663)))) tp!687029))))

(declare-fun b!2210419 () Bool)

(declare-fun e!1411820 () Bool)

(declare-fun tp!687031 () Bool)

(assert (=> b!2210419 (= e!1411820 tp!687031)))

(declare-fun b!2210418 () Bool)

(assert (=> b!2210418 (= e!1411821 (and (inv!34967 (xs!11391 (right!20206 (right!20206 t!4663)))) e!1411820))))

(assert (=> b!2210288 (= tp!687013 (and (inv!34966 (right!20206 (right!20206 t!4663))) e!1411821))))

(assert (= (and b!2210288 ((_ is Node!8449) (right!20206 (right!20206 t!4663)))) b!2210417))

(assert (= b!2210418 b!2210419))

(assert (= (and b!2210288 ((_ is Leaf!12373) (right!20206 (right!20206 t!4663)))) b!2210418))

(declare-fun m!2652137 () Bool)

(assert (=> b!2210417 m!2652137))

(declare-fun m!2652139 () Bool)

(assert (=> b!2210417 m!2652139))

(declare-fun m!2652141 () Bool)

(assert (=> b!2210418 m!2652141))

(assert (=> b!2210288 m!2651975))

(declare-fun tp!687032 () Bool)

(declare-fun e!1411823 () Bool)

(declare-fun tp!687033 () Bool)

(declare-fun b!2210420 () Bool)

(assert (=> b!2210420 (= e!1411823 (and (inv!34966 (left!19876 (left!19876 (left!19876 t!4663)))) tp!687033 (inv!34966 (right!20206 (left!19876 (left!19876 t!4663)))) tp!687032))))

(declare-fun b!2210422 () Bool)

(declare-fun e!1411822 () Bool)

(declare-fun tp!687034 () Bool)

(assert (=> b!2210422 (= e!1411822 tp!687034)))

(declare-fun b!2210421 () Bool)

(assert (=> b!2210421 (= e!1411823 (and (inv!34967 (xs!11391 (left!19876 (left!19876 t!4663)))) e!1411822))))

(assert (=> b!2210281 (= tp!687007 (and (inv!34966 (left!19876 (left!19876 t!4663))) e!1411823))))

(assert (= (and b!2210281 ((_ is Node!8449) (left!19876 (left!19876 t!4663)))) b!2210420))

(assert (= b!2210421 b!2210422))

(assert (= (and b!2210281 ((_ is Leaf!12373) (left!19876 (left!19876 t!4663)))) b!2210421))

(declare-fun m!2652145 () Bool)

(assert (=> b!2210420 m!2652145))

(declare-fun m!2652147 () Bool)

(assert (=> b!2210420 m!2652147))

(declare-fun m!2652149 () Bool)

(assert (=> b!2210421 m!2652149))

(assert (=> b!2210281 m!2651967))

(declare-fun e!1411827 () Bool)

(declare-fun tp!687035 () Bool)

(declare-fun tp!687036 () Bool)

(declare-fun b!2210426 () Bool)

(assert (=> b!2210426 (= e!1411827 (and (inv!34966 (left!19876 (right!20206 (left!19876 t!4663)))) tp!687036 (inv!34966 (right!20206 (right!20206 (left!19876 t!4663)))) tp!687035))))

(declare-fun b!2210428 () Bool)

(declare-fun e!1411826 () Bool)

(declare-fun tp!687037 () Bool)

(assert (=> b!2210428 (= e!1411826 tp!687037)))

(declare-fun b!2210427 () Bool)

(assert (=> b!2210427 (= e!1411827 (and (inv!34967 (xs!11391 (right!20206 (left!19876 t!4663)))) e!1411826))))

(assert (=> b!2210281 (= tp!687006 (and (inv!34966 (right!20206 (left!19876 t!4663))) e!1411827))))

(assert (= (and b!2210281 ((_ is Node!8449) (right!20206 (left!19876 t!4663)))) b!2210426))

(assert (= b!2210427 b!2210428))

(assert (= (and b!2210281 ((_ is Leaf!12373) (right!20206 (left!19876 t!4663)))) b!2210427))

(declare-fun m!2652155 () Bool)

(assert (=> b!2210426 m!2652155))

(declare-fun m!2652157 () Bool)

(assert (=> b!2210426 m!2652157))

(declare-fun m!2652159 () Bool)

(assert (=> b!2210427 m!2652159))

(assert (=> b!2210281 m!2651969))

(declare-fun b!2210432 () Bool)

(declare-fun e!1411830 () Bool)

(declare-fun tp!687038 () Bool)

(assert (=> b!2210432 (= e!1411830 (and tp_is_empty!9765 tp!687038))))

(assert (=> b!2210295 (= tp!687018 e!1411830)))

(assert (= (and b!2210295 ((_ is Cons!25852) (t!198620 (innerList!8509 (xs!11391 t!4663))))) b!2210432))

(declare-fun b!2210433 () Bool)

(declare-fun e!1411831 () Bool)

(declare-fun tp!687039 () Bool)

(assert (=> b!2210433 (= e!1411831 (and tp_is_empty!9765 tp!687039))))

(assert (=> b!2210290 (= tp!687015 e!1411831)))

(assert (= (and b!2210290 ((_ is Cons!25852) (innerList!8509 (xs!11391 (right!20206 t!4663))))) b!2210433))

(check-sat (not d!660692) (not b!2210308) (not d!660640) (not b!2210417) (not d!660646) (not b!2210360) (not b!2210422) (not b!2210303) (not b!2210344) (not b!2210327) (not b!2210288) (not b!2210302) (not b!2210334) (not d!660648) (not b!2210281) (not b!2210390) (not b!2210339) (not b!2210384) (not b!2210361) (not b!2210341) (not b!2210427) (not b!2210386) (not d!660656) (not b!2210306) (not b!2210404) (not d!660680) tp_is_empty!9765 (not b!2210317) (not d!660678) (not b!2210418) (not d!660682) (not b!2210356) (not b!2210330) (not d!660652) (not b!2210405) (not d!660668) (not d!660644) (not b!2210420) (not b!2210305) (not b!2210426) (not d!660654) (not b!2210311) (not b!2210421) (not b!2210406) (not b!2210331) (not b!2210319) (not b!2210313) (not b!2210307) (not b!2210370) (not b!2210419) (not b!2210333) (not b!2210433) (not b!2210304) (not b!2210355) (not b!2210416) (not b!2210314) (not b!2210371) (not b!2210316) (not b!2210310) (not b!2210413) (not b!2210432) (not b!2210415) (not b!2210428) (not b!2210329) (not b!2210414) (not b!2210332) (not d!660624) (not d!660650) (not d!660630))
(check-sat)
