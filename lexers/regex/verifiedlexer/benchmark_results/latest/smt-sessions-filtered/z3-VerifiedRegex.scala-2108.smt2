; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106560 () Bool)

(assert start!106560)

(declare-fun b!1197068 () Bool)

(declare-fun res!540258 () Bool)

(declare-fun e!768759 () Bool)

(assert (=> b!1197068 (=> (not res!540258) (not e!768759))))

(declare-fun until!31 () Int)

(declare-datatypes ((T!21726 0))(
  ( (T!21727 (val!3880 Int)) )
))
(declare-datatypes ((List!12059 0))(
  ( (Nil!12035) (Cons!12035 (h!17436 T!21726) (t!112389 List!12059)) )
))
(declare-datatypes ((IArray!7941 0))(
  ( (IArray!7942 (innerList!4028 List!12059)) )
))
(declare-datatypes ((Conc!3968 0))(
  ( (Node!3968 (left!10500 Conc!3968) (right!10830 Conc!3968) (csize!8166 Int) (cheight!4179 Int)) (Leaf!6077 (xs!6675 IArray!7941) (csize!8167 Int)) (Empty!3968) )
))
(declare-fun t!4115 () Conc!3968)

(declare-fun size!9554 (Conc!3968) Int)

(assert (=> b!1197068 (= res!540258 (<= until!31 (size!9554 t!4115)))))

(declare-fun res!540255 () Bool)

(assert (=> start!106560 (=> (not res!540255) (not e!768759))))

(declare-fun from!553 () Int)

(assert (=> start!106560 (= res!540255 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106560 e!768759))

(assert (=> start!106560 true))

(declare-fun e!768760 () Bool)

(declare-fun inv!16071 (Conc!3968) Bool)

(assert (=> start!106560 (and (inv!16071 t!4115) e!768760)))

(declare-fun b!1197069 () Bool)

(declare-fun res!540256 () Bool)

(assert (=> b!1197069 (=> (not res!540256) (not e!768759))))

(declare-fun isBalanced!1153 (Conc!3968) Bool)

(assert (=> b!1197069 (= res!540256 (isBalanced!1153 t!4115))))

(declare-fun b!1197070 () Bool)

(declare-fun size!9555 (List!12059) Int)

(declare-fun list!4469 (Conc!3968) List!12059)

(assert (=> b!1197070 (= e!768759 (> until!31 (+ (size!9555 (list!4469 (left!10500 t!4115))) (size!9555 (list!4469 (right!10830 t!4115))))))))

(declare-fun tp!340867 () Bool)

(declare-fun tp!340866 () Bool)

(declare-fun b!1197071 () Bool)

(assert (=> b!1197071 (= e!768760 (and (inv!16071 (left!10500 t!4115)) tp!340867 (inv!16071 (right!10830 t!4115)) tp!340866))))

(declare-fun b!1197072 () Bool)

(declare-fun e!768758 () Bool)

(declare-fun inv!16072 (IArray!7941) Bool)

(assert (=> b!1197072 (= e!768760 (and (inv!16072 (xs!6675 t!4115)) e!768758))))

(declare-fun b!1197073 () Bool)

(declare-fun tp!340865 () Bool)

(assert (=> b!1197073 (= e!768758 tp!340865)))

(declare-fun b!1197074 () Bool)

(declare-fun res!540257 () Bool)

(assert (=> b!1197074 (=> (not res!540257) (not e!768759))))

(get-info :version)

(assert (=> b!1197074 (= res!540257 (and (not (= from!553 until!31)) (not ((_ is Leaf!6077) t!4115)) ((_ is Node!3968) t!4115)))))

(assert (= (and start!106560 res!540255) b!1197068))

(assert (= (and b!1197068 res!540258) b!1197069))

(assert (= (and b!1197069 res!540256) b!1197074))

(assert (= (and b!1197074 res!540257) b!1197070))

(assert (= (and start!106560 ((_ is Node!3968) t!4115)) b!1197071))

(assert (= b!1197072 b!1197073))

(assert (= (and start!106560 ((_ is Leaf!6077) t!4115)) b!1197072))

(declare-fun m!1371895 () Bool)

(assert (=> b!1197068 m!1371895))

(declare-fun m!1371897 () Bool)

(assert (=> start!106560 m!1371897))

(declare-fun m!1371899 () Bool)

(assert (=> b!1197069 m!1371899))

(declare-fun m!1371901 () Bool)

(assert (=> b!1197072 m!1371901))

(declare-fun m!1371903 () Bool)

(assert (=> b!1197070 m!1371903))

(assert (=> b!1197070 m!1371903))

(declare-fun m!1371905 () Bool)

(assert (=> b!1197070 m!1371905))

(declare-fun m!1371907 () Bool)

(assert (=> b!1197070 m!1371907))

(assert (=> b!1197070 m!1371907))

(declare-fun m!1371909 () Bool)

(assert (=> b!1197070 m!1371909))

(declare-fun m!1371911 () Bool)

(assert (=> b!1197071 m!1371911))

(declare-fun m!1371913 () Bool)

(assert (=> b!1197071 m!1371913))

(check-sat (not b!1197068) (not b!1197073) (not b!1197070) (not start!106560) (not b!1197071) (not b!1197069) (not b!1197072))
(check-sat)
(get-model)

(declare-fun d!341923 () Bool)

(declare-fun lt!410249 () Int)

(assert (=> d!341923 (>= lt!410249 0)))

(declare-fun e!768763 () Int)

(assert (=> d!341923 (= lt!410249 e!768763)))

(declare-fun c!199017 () Bool)

(assert (=> d!341923 (= c!199017 ((_ is Nil!12035) (list!4469 (left!10500 t!4115))))))

(assert (=> d!341923 (= (size!9555 (list!4469 (left!10500 t!4115))) lt!410249)))

(declare-fun b!1197079 () Bool)

(assert (=> b!1197079 (= e!768763 0)))

(declare-fun b!1197080 () Bool)

(assert (=> b!1197080 (= e!768763 (+ 1 (size!9555 (t!112389 (list!4469 (left!10500 t!4115))))))))

(assert (= (and d!341923 c!199017) b!1197079))

(assert (= (and d!341923 (not c!199017)) b!1197080))

(declare-fun m!1371915 () Bool)

(assert (=> b!1197080 m!1371915))

(assert (=> b!1197070 d!341923))

(declare-fun b!1197097 () Bool)

(declare-fun e!768772 () List!12059)

(declare-fun list!4470 (IArray!7941) List!12059)

(assert (=> b!1197097 (= e!768772 (list!4470 (xs!6675 (left!10500 t!4115))))))

(declare-fun b!1197098 () Bool)

(declare-fun ++!3069 (List!12059 List!12059) List!12059)

(assert (=> b!1197098 (= e!768772 (++!3069 (list!4469 (left!10500 (left!10500 t!4115))) (list!4469 (right!10830 (left!10500 t!4115)))))))

(declare-fun d!341925 () Bool)

(declare-fun c!199025 () Bool)

(assert (=> d!341925 (= c!199025 ((_ is Empty!3968) (left!10500 t!4115)))))

(declare-fun e!768771 () List!12059)

(assert (=> d!341925 (= (list!4469 (left!10500 t!4115)) e!768771)))

(declare-fun b!1197095 () Bool)

(assert (=> b!1197095 (= e!768771 Nil!12035)))

(declare-fun b!1197096 () Bool)

(assert (=> b!1197096 (= e!768771 e!768772)))

(declare-fun c!199026 () Bool)

(assert (=> b!1197096 (= c!199026 ((_ is Leaf!6077) (left!10500 t!4115)))))

(assert (= (and d!341925 c!199025) b!1197095))

(assert (= (and d!341925 (not c!199025)) b!1197096))

(assert (= (and b!1197096 c!199026) b!1197097))

(assert (= (and b!1197096 (not c!199026)) b!1197098))

(declare-fun m!1371919 () Bool)

(assert (=> b!1197097 m!1371919))

(declare-fun m!1371921 () Bool)

(assert (=> b!1197098 m!1371921))

(declare-fun m!1371923 () Bool)

(assert (=> b!1197098 m!1371923))

(assert (=> b!1197098 m!1371921))

(assert (=> b!1197098 m!1371923))

(declare-fun m!1371925 () Bool)

(assert (=> b!1197098 m!1371925))

(assert (=> b!1197070 d!341925))

(declare-fun d!341931 () Bool)

(declare-fun lt!410253 () Int)

(assert (=> d!341931 (>= lt!410253 0)))

(declare-fun e!768773 () Int)

(assert (=> d!341931 (= lt!410253 e!768773)))

(declare-fun c!199027 () Bool)

(assert (=> d!341931 (= c!199027 ((_ is Nil!12035) (list!4469 (right!10830 t!4115))))))

(assert (=> d!341931 (= (size!9555 (list!4469 (right!10830 t!4115))) lt!410253)))

(declare-fun b!1197099 () Bool)

(assert (=> b!1197099 (= e!768773 0)))

(declare-fun b!1197100 () Bool)

(assert (=> b!1197100 (= e!768773 (+ 1 (size!9555 (t!112389 (list!4469 (right!10830 t!4115))))))))

(assert (= (and d!341931 c!199027) b!1197099))

(assert (= (and d!341931 (not c!199027)) b!1197100))

(declare-fun m!1371927 () Bool)

(assert (=> b!1197100 m!1371927))

(assert (=> b!1197070 d!341931))

(declare-fun b!1197103 () Bool)

(declare-fun e!768775 () List!12059)

(assert (=> b!1197103 (= e!768775 (list!4470 (xs!6675 (right!10830 t!4115))))))

(declare-fun b!1197104 () Bool)

(assert (=> b!1197104 (= e!768775 (++!3069 (list!4469 (left!10500 (right!10830 t!4115))) (list!4469 (right!10830 (right!10830 t!4115)))))))

(declare-fun d!341933 () Bool)

(declare-fun c!199028 () Bool)

(assert (=> d!341933 (= c!199028 ((_ is Empty!3968) (right!10830 t!4115)))))

(declare-fun e!768774 () List!12059)

(assert (=> d!341933 (= (list!4469 (right!10830 t!4115)) e!768774)))

(declare-fun b!1197101 () Bool)

(assert (=> b!1197101 (= e!768774 Nil!12035)))

(declare-fun b!1197102 () Bool)

(assert (=> b!1197102 (= e!768774 e!768775)))

(declare-fun c!199029 () Bool)

(assert (=> b!1197102 (= c!199029 ((_ is Leaf!6077) (right!10830 t!4115)))))

(assert (= (and d!341933 c!199028) b!1197101))

(assert (= (and d!341933 (not c!199028)) b!1197102))

(assert (= (and b!1197102 c!199029) b!1197103))

(assert (= (and b!1197102 (not c!199029)) b!1197104))

(declare-fun m!1371929 () Bool)

(assert (=> b!1197103 m!1371929))

(declare-fun m!1371931 () Bool)

(assert (=> b!1197104 m!1371931))

(declare-fun m!1371933 () Bool)

(assert (=> b!1197104 m!1371933))

(assert (=> b!1197104 m!1371931))

(assert (=> b!1197104 m!1371933))

(declare-fun m!1371935 () Bool)

(assert (=> b!1197104 m!1371935))

(assert (=> b!1197070 d!341933))

(declare-fun d!341935 () Bool)

(declare-fun c!199041 () Bool)

(assert (=> d!341935 (= c!199041 ((_ is Node!3968) t!4115))))

(declare-fun e!768789 () Bool)

(assert (=> d!341935 (= (inv!16071 t!4115) e!768789)))

(declare-fun b!1197129 () Bool)

(declare-fun inv!16073 (Conc!3968) Bool)

(assert (=> b!1197129 (= e!768789 (inv!16073 t!4115))))

(declare-fun b!1197130 () Bool)

(declare-fun e!768790 () Bool)

(assert (=> b!1197130 (= e!768789 e!768790)))

(declare-fun res!540261 () Bool)

(assert (=> b!1197130 (= res!540261 (not ((_ is Leaf!6077) t!4115)))))

(assert (=> b!1197130 (=> res!540261 e!768790)))

(declare-fun b!1197131 () Bool)

(declare-fun inv!16074 (Conc!3968) Bool)

(assert (=> b!1197131 (= e!768790 (inv!16074 t!4115))))

(assert (= (and d!341935 c!199041) b!1197129))

(assert (= (and d!341935 (not c!199041)) b!1197130))

(assert (= (and b!1197130 (not res!540261)) b!1197131))

(declare-fun m!1371955 () Bool)

(assert (=> b!1197129 m!1371955))

(declare-fun m!1371957 () Bool)

(assert (=> b!1197131 m!1371957))

(assert (=> start!106560 d!341935))

(declare-fun d!341943 () Bool)

(declare-fun c!199042 () Bool)

(assert (=> d!341943 (= c!199042 ((_ is Node!3968) (left!10500 t!4115)))))

(declare-fun e!768791 () Bool)

(assert (=> d!341943 (= (inv!16071 (left!10500 t!4115)) e!768791)))

(declare-fun b!1197132 () Bool)

(assert (=> b!1197132 (= e!768791 (inv!16073 (left!10500 t!4115)))))

(declare-fun b!1197133 () Bool)

(declare-fun e!768792 () Bool)

(assert (=> b!1197133 (= e!768791 e!768792)))

(declare-fun res!540262 () Bool)

(assert (=> b!1197133 (= res!540262 (not ((_ is Leaf!6077) (left!10500 t!4115))))))

(assert (=> b!1197133 (=> res!540262 e!768792)))

(declare-fun b!1197134 () Bool)

(assert (=> b!1197134 (= e!768792 (inv!16074 (left!10500 t!4115)))))

(assert (= (and d!341943 c!199042) b!1197132))

(assert (= (and d!341943 (not c!199042)) b!1197133))

(assert (= (and b!1197133 (not res!540262)) b!1197134))

(declare-fun m!1371959 () Bool)

(assert (=> b!1197132 m!1371959))

(declare-fun m!1371961 () Bool)

(assert (=> b!1197134 m!1371961))

(assert (=> b!1197071 d!341943))

(declare-fun d!341945 () Bool)

(declare-fun c!199043 () Bool)

(assert (=> d!341945 (= c!199043 ((_ is Node!3968) (right!10830 t!4115)))))

(declare-fun e!768793 () Bool)

(assert (=> d!341945 (= (inv!16071 (right!10830 t!4115)) e!768793)))

(declare-fun b!1197135 () Bool)

(assert (=> b!1197135 (= e!768793 (inv!16073 (right!10830 t!4115)))))

(declare-fun b!1197136 () Bool)

(declare-fun e!768794 () Bool)

(assert (=> b!1197136 (= e!768793 e!768794)))

(declare-fun res!540263 () Bool)

(assert (=> b!1197136 (= res!540263 (not ((_ is Leaf!6077) (right!10830 t!4115))))))

(assert (=> b!1197136 (=> res!540263 e!768794)))

(declare-fun b!1197137 () Bool)

(assert (=> b!1197137 (= e!768794 (inv!16074 (right!10830 t!4115)))))

(assert (= (and d!341945 c!199043) b!1197135))

(assert (= (and d!341945 (not c!199043)) b!1197136))

(assert (= (and b!1197136 (not res!540263)) b!1197137))

(declare-fun m!1371963 () Bool)

(assert (=> b!1197135 m!1371963))

(declare-fun m!1371965 () Bool)

(assert (=> b!1197137 m!1371965))

(assert (=> b!1197071 d!341945))

(declare-fun d!341947 () Bool)

(assert (=> d!341947 (= (inv!16072 (xs!6675 t!4115)) (<= (size!9555 (innerList!4028 (xs!6675 t!4115))) 2147483647))))

(declare-fun bs!288129 () Bool)

(assert (= bs!288129 d!341947))

(declare-fun m!1371967 () Bool)

(assert (=> bs!288129 m!1371967))

(assert (=> b!1197072 d!341947))

(declare-fun d!341949 () Bool)

(declare-fun lt!410257 () Int)

(assert (=> d!341949 (= lt!410257 (size!9555 (list!4469 t!4115)))))

(assert (=> d!341949 (= lt!410257 (ite ((_ is Empty!3968) t!4115) 0 (ite ((_ is Leaf!6077) t!4115) (csize!8167 t!4115) (csize!8166 t!4115))))))

(assert (=> d!341949 (= (size!9554 t!4115) lt!410257)))

(declare-fun bs!288130 () Bool)

(assert (= bs!288130 d!341949))

(declare-fun m!1371973 () Bool)

(assert (=> bs!288130 m!1371973))

(assert (=> bs!288130 m!1371973))

(declare-fun m!1371975 () Bool)

(assert (=> bs!288130 m!1371975))

(assert (=> b!1197068 d!341949))

(declare-fun b!1197177 () Bool)

(declare-fun res!540298 () Bool)

(declare-fun e!768814 () Bool)

(assert (=> b!1197177 (=> (not res!540298) (not e!768814))))

(declare-fun height!561 (Conc!3968) Int)

(assert (=> b!1197177 (= res!540298 (<= (- (height!561 (left!10500 t!4115)) (height!561 (right!10830 t!4115))) 1))))

(declare-fun b!1197178 () Bool)

(declare-fun e!768813 () Bool)

(assert (=> b!1197178 (= e!768813 e!768814)))

(declare-fun res!540296 () Bool)

(assert (=> b!1197178 (=> (not res!540296) (not e!768814))))

(assert (=> b!1197178 (= res!540296 (<= (- 1) (- (height!561 (left!10500 t!4115)) (height!561 (right!10830 t!4115)))))))

(declare-fun b!1197180 () Bool)

(declare-fun res!540294 () Bool)

(assert (=> b!1197180 (=> (not res!540294) (not e!768814))))

(assert (=> b!1197180 (= res!540294 (isBalanced!1153 (left!10500 t!4115)))))

(declare-fun b!1197181 () Bool)

(declare-fun res!540295 () Bool)

(assert (=> b!1197181 (=> (not res!540295) (not e!768814))))

(assert (=> b!1197181 (= res!540295 (isBalanced!1153 (right!10830 t!4115)))))

(declare-fun b!1197182 () Bool)

(declare-fun res!540297 () Bool)

(assert (=> b!1197182 (=> (not res!540297) (not e!768814))))

(declare-fun isEmpty!7248 (Conc!3968) Bool)

(assert (=> b!1197182 (= res!540297 (not (isEmpty!7248 (left!10500 t!4115))))))

(declare-fun b!1197179 () Bool)

(assert (=> b!1197179 (= e!768814 (not (isEmpty!7248 (right!10830 t!4115))))))

(declare-fun d!341953 () Bool)

(declare-fun res!540293 () Bool)

(assert (=> d!341953 (=> res!540293 e!768813)))

(assert (=> d!341953 (= res!540293 (not ((_ is Node!3968) t!4115)))))

(assert (=> d!341953 (= (isBalanced!1153 t!4115) e!768813)))

(assert (= (and d!341953 (not res!540293)) b!1197178))

(assert (= (and b!1197178 res!540296) b!1197177))

(assert (= (and b!1197177 res!540298) b!1197180))

(assert (= (and b!1197180 res!540294) b!1197181))

(assert (= (and b!1197181 res!540295) b!1197182))

(assert (= (and b!1197182 res!540297) b!1197179))

(declare-fun m!1371985 () Bool)

(assert (=> b!1197180 m!1371985))

(declare-fun m!1371987 () Bool)

(assert (=> b!1197179 m!1371987))

(declare-fun m!1371989 () Bool)

(assert (=> b!1197178 m!1371989))

(declare-fun m!1371991 () Bool)

(assert (=> b!1197178 m!1371991))

(declare-fun m!1371993 () Bool)

(assert (=> b!1197182 m!1371993))

(declare-fun m!1371995 () Bool)

(assert (=> b!1197181 m!1371995))

(assert (=> b!1197177 m!1371989))

(assert (=> b!1197177 m!1371991))

(assert (=> b!1197069 d!341953))

(declare-fun tp!340875 () Bool)

(declare-fun e!768822 () Bool)

(declare-fun b!1197197 () Bool)

(declare-fun tp!340876 () Bool)

(assert (=> b!1197197 (= e!768822 (and (inv!16071 (left!10500 (left!10500 t!4115))) tp!340875 (inv!16071 (right!10830 (left!10500 t!4115))) tp!340876))))

(declare-fun b!1197199 () Bool)

(declare-fun e!768821 () Bool)

(declare-fun tp!340874 () Bool)

(assert (=> b!1197199 (= e!768821 tp!340874)))

(declare-fun b!1197198 () Bool)

(assert (=> b!1197198 (= e!768822 (and (inv!16072 (xs!6675 (left!10500 t!4115))) e!768821))))

(assert (=> b!1197071 (= tp!340867 (and (inv!16071 (left!10500 t!4115)) e!768822))))

(assert (= (and b!1197071 ((_ is Node!3968) (left!10500 t!4115))) b!1197197))

(assert (= b!1197198 b!1197199))

(assert (= (and b!1197071 ((_ is Leaf!6077) (left!10500 t!4115))) b!1197198))

(declare-fun m!1372011 () Bool)

(assert (=> b!1197197 m!1372011))

(declare-fun m!1372013 () Bool)

(assert (=> b!1197197 m!1372013))

(declare-fun m!1372015 () Bool)

(assert (=> b!1197198 m!1372015))

(assert (=> b!1197071 m!1371911))

(declare-fun tp!340878 () Bool)

(declare-fun e!768824 () Bool)

(declare-fun b!1197200 () Bool)

(declare-fun tp!340879 () Bool)

(assert (=> b!1197200 (= e!768824 (and (inv!16071 (left!10500 (right!10830 t!4115))) tp!340878 (inv!16071 (right!10830 (right!10830 t!4115))) tp!340879))))

(declare-fun b!1197202 () Bool)

(declare-fun e!768823 () Bool)

(declare-fun tp!340877 () Bool)

(assert (=> b!1197202 (= e!768823 tp!340877)))

(declare-fun b!1197201 () Bool)

(assert (=> b!1197201 (= e!768824 (and (inv!16072 (xs!6675 (right!10830 t!4115))) e!768823))))

(assert (=> b!1197071 (= tp!340866 (and (inv!16071 (right!10830 t!4115)) e!768824))))

(assert (= (and b!1197071 ((_ is Node!3968) (right!10830 t!4115))) b!1197200))

(assert (= b!1197201 b!1197202))

(assert (= (and b!1197071 ((_ is Leaf!6077) (right!10830 t!4115))) b!1197201))

(declare-fun m!1372017 () Bool)

(assert (=> b!1197200 m!1372017))

(declare-fun m!1372019 () Bool)

(assert (=> b!1197200 m!1372019))

(declare-fun m!1372021 () Bool)

(assert (=> b!1197201 m!1372021))

(assert (=> b!1197071 m!1371913))

(declare-fun b!1197207 () Bool)

(declare-fun e!768827 () Bool)

(declare-fun tp_is_empty!5961 () Bool)

(declare-fun tp!340882 () Bool)

(assert (=> b!1197207 (= e!768827 (and tp_is_empty!5961 tp!340882))))

(assert (=> b!1197073 (= tp!340865 e!768827)))

(assert (= (and b!1197073 ((_ is Cons!12035) (innerList!4028 (xs!6675 t!4115)))) b!1197207))

(check-sat (not d!341949) (not b!1197080) (not b!1197198) (not b!1197207) (not b!1197201) (not b!1197181) (not b!1197197) (not b!1197131) (not b!1197135) (not b!1197134) tp_is_empty!5961 (not b!1197182) (not b!1197180) (not b!1197199) (not b!1197200) (not b!1197177) (not b!1197104) (not b!1197071) (not b!1197100) (not b!1197098) (not b!1197097) (not b!1197137) (not b!1197179) (not d!341947) (not b!1197132) (not b!1197103) (not b!1197202) (not b!1197178) (not b!1197129))
(check-sat)
(get-model)

(declare-fun d!341963 () Bool)

(declare-fun lt!410261 () Int)

(assert (=> d!341963 (>= lt!410261 0)))

(declare-fun e!768839 () Int)

(assert (=> d!341963 (= lt!410261 e!768839)))

(declare-fun c!199049 () Bool)

(assert (=> d!341963 (= c!199049 ((_ is Nil!12035) (t!112389 (list!4469 (right!10830 t!4115)))))))

(assert (=> d!341963 (= (size!9555 (t!112389 (list!4469 (right!10830 t!4115)))) lt!410261)))

(declare-fun b!1197227 () Bool)

(assert (=> b!1197227 (= e!768839 0)))

(declare-fun b!1197228 () Bool)

(assert (=> b!1197228 (= e!768839 (+ 1 (size!9555 (t!112389 (t!112389 (list!4469 (right!10830 t!4115)))))))))

(assert (= (and d!341963 c!199049) b!1197227))

(assert (= (and d!341963 (not c!199049)) b!1197228))

(declare-fun m!1372039 () Bool)

(assert (=> b!1197228 m!1372039))

(assert (=> b!1197100 d!341963))

(declare-fun d!341965 () Bool)

(declare-fun lt!410262 () Int)

(assert (=> d!341965 (>= lt!410262 0)))

(declare-fun e!768840 () Int)

(assert (=> d!341965 (= lt!410262 e!768840)))

(declare-fun c!199050 () Bool)

(assert (=> d!341965 (= c!199050 ((_ is Nil!12035) (list!4469 t!4115)))))

(assert (=> d!341965 (= (size!9555 (list!4469 t!4115)) lt!410262)))

(declare-fun b!1197229 () Bool)

(assert (=> b!1197229 (= e!768840 0)))

(declare-fun b!1197230 () Bool)

(assert (=> b!1197230 (= e!768840 (+ 1 (size!9555 (t!112389 (list!4469 t!4115)))))))

(assert (= (and d!341965 c!199050) b!1197229))

(assert (= (and d!341965 (not c!199050)) b!1197230))

(declare-fun m!1372041 () Bool)

(assert (=> b!1197230 m!1372041))

(assert (=> d!341949 d!341965))

(declare-fun b!1197233 () Bool)

(declare-fun e!768842 () List!12059)

(assert (=> b!1197233 (= e!768842 (list!4470 (xs!6675 t!4115)))))

(declare-fun b!1197234 () Bool)

(assert (=> b!1197234 (= e!768842 (++!3069 (list!4469 (left!10500 t!4115)) (list!4469 (right!10830 t!4115))))))

(declare-fun d!341967 () Bool)

(declare-fun c!199051 () Bool)

(assert (=> d!341967 (= c!199051 ((_ is Empty!3968) t!4115))))

(declare-fun e!768841 () List!12059)

(assert (=> d!341967 (= (list!4469 t!4115) e!768841)))

(declare-fun b!1197231 () Bool)

(assert (=> b!1197231 (= e!768841 Nil!12035)))

(declare-fun b!1197232 () Bool)

(assert (=> b!1197232 (= e!768841 e!768842)))

(declare-fun c!199052 () Bool)

(assert (=> b!1197232 (= c!199052 ((_ is Leaf!6077) t!4115))))

(assert (= (and d!341967 c!199051) b!1197231))

(assert (= (and d!341967 (not c!199051)) b!1197232))

(assert (= (and b!1197232 c!199052) b!1197233))

(assert (= (and b!1197232 (not c!199052)) b!1197234))

(declare-fun m!1372043 () Bool)

(assert (=> b!1197233 m!1372043))

(assert (=> b!1197234 m!1371903))

(assert (=> b!1197234 m!1371907))

(assert (=> b!1197234 m!1371903))

(assert (=> b!1197234 m!1371907))

(declare-fun m!1372045 () Bool)

(assert (=> b!1197234 m!1372045))

(assert (=> d!341949 d!341967))

(declare-fun d!341969 () Bool)

(declare-fun c!199053 () Bool)

(assert (=> d!341969 (= c!199053 ((_ is Node!3968) (left!10500 (right!10830 t!4115))))))

(declare-fun e!768843 () Bool)

(assert (=> d!341969 (= (inv!16071 (left!10500 (right!10830 t!4115))) e!768843)))

(declare-fun b!1197235 () Bool)

(assert (=> b!1197235 (= e!768843 (inv!16073 (left!10500 (right!10830 t!4115))))))

(declare-fun b!1197236 () Bool)

(declare-fun e!768844 () Bool)

(assert (=> b!1197236 (= e!768843 e!768844)))

(declare-fun res!540305 () Bool)

(assert (=> b!1197236 (= res!540305 (not ((_ is Leaf!6077) (left!10500 (right!10830 t!4115)))))))

(assert (=> b!1197236 (=> res!540305 e!768844)))

(declare-fun b!1197237 () Bool)

(assert (=> b!1197237 (= e!768844 (inv!16074 (left!10500 (right!10830 t!4115))))))

(assert (= (and d!341969 c!199053) b!1197235))

(assert (= (and d!341969 (not c!199053)) b!1197236))

(assert (= (and b!1197236 (not res!540305)) b!1197237))

(declare-fun m!1372047 () Bool)

(assert (=> b!1197235 m!1372047))

(declare-fun m!1372049 () Bool)

(assert (=> b!1197237 m!1372049))

(assert (=> b!1197200 d!341969))

(declare-fun d!341971 () Bool)

(declare-fun c!199054 () Bool)

(assert (=> d!341971 (= c!199054 ((_ is Node!3968) (right!10830 (right!10830 t!4115))))))

(declare-fun e!768845 () Bool)

(assert (=> d!341971 (= (inv!16071 (right!10830 (right!10830 t!4115))) e!768845)))

(declare-fun b!1197238 () Bool)

(assert (=> b!1197238 (= e!768845 (inv!16073 (right!10830 (right!10830 t!4115))))))

(declare-fun b!1197239 () Bool)

(declare-fun e!768846 () Bool)

(assert (=> b!1197239 (= e!768845 e!768846)))

(declare-fun res!540306 () Bool)

(assert (=> b!1197239 (= res!540306 (not ((_ is Leaf!6077) (right!10830 (right!10830 t!4115)))))))

(assert (=> b!1197239 (=> res!540306 e!768846)))

(declare-fun b!1197240 () Bool)

(assert (=> b!1197240 (= e!768846 (inv!16074 (right!10830 (right!10830 t!4115))))))

(assert (= (and d!341971 c!199054) b!1197238))

(assert (= (and d!341971 (not c!199054)) b!1197239))

(assert (= (and b!1197239 (not res!540306)) b!1197240))

(declare-fun m!1372051 () Bool)

(assert (=> b!1197238 m!1372051))

(declare-fun m!1372053 () Bool)

(assert (=> b!1197240 m!1372053))

(assert (=> b!1197200 d!341971))

(declare-fun d!341973 () Bool)

(declare-fun res!540313 () Bool)

(declare-fun e!768849 () Bool)

(assert (=> d!341973 (=> (not res!540313) (not e!768849))))

(assert (=> d!341973 (= res!540313 (= (csize!8166 t!4115) (+ (size!9554 (left!10500 t!4115)) (size!9554 (right!10830 t!4115)))))))

(assert (=> d!341973 (= (inv!16073 t!4115) e!768849)))

(declare-fun b!1197247 () Bool)

(declare-fun res!540314 () Bool)

(assert (=> b!1197247 (=> (not res!540314) (not e!768849))))

(assert (=> b!1197247 (= res!540314 (and (not (= (left!10500 t!4115) Empty!3968)) (not (= (right!10830 t!4115) Empty!3968))))))

(declare-fun b!1197248 () Bool)

(declare-fun res!540315 () Bool)

(assert (=> b!1197248 (=> (not res!540315) (not e!768849))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1197248 (= res!540315 (= (cheight!4179 t!4115) (+ (max!0 (height!561 (left!10500 t!4115)) (height!561 (right!10830 t!4115))) 1)))))

(declare-fun b!1197249 () Bool)

(assert (=> b!1197249 (= e!768849 (<= 0 (cheight!4179 t!4115)))))

(assert (= (and d!341973 res!540313) b!1197247))

(assert (= (and b!1197247 res!540314) b!1197248))

(assert (= (and b!1197248 res!540315) b!1197249))

(declare-fun m!1372055 () Bool)

(assert (=> d!341973 m!1372055))

(declare-fun m!1372057 () Bool)

(assert (=> d!341973 m!1372057))

(assert (=> b!1197248 m!1371989))

(assert (=> b!1197248 m!1371991))

(assert (=> b!1197248 m!1371989))

(assert (=> b!1197248 m!1371991))

(declare-fun m!1372059 () Bool)

(assert (=> b!1197248 m!1372059))

(assert (=> b!1197129 d!341973))

(declare-fun d!341975 () Bool)

(assert (=> d!341975 (= (inv!16072 (xs!6675 (right!10830 t!4115))) (<= (size!9555 (innerList!4028 (xs!6675 (right!10830 t!4115)))) 2147483647))))

(declare-fun bs!288133 () Bool)

(assert (= bs!288133 d!341975))

(declare-fun m!1372061 () Bool)

(assert (=> bs!288133 m!1372061))

(assert (=> b!1197201 d!341975))

(declare-fun d!341977 () Bool)

(assert (=> d!341977 (= (height!561 (left!10500 t!4115)) (ite ((_ is Empty!3968) (left!10500 t!4115)) 0 (ite ((_ is Leaf!6077) (left!10500 t!4115)) 1 (cheight!4179 (left!10500 t!4115)))))))

(assert (=> b!1197178 d!341977))

(declare-fun d!341979 () Bool)

(assert (=> d!341979 (= (height!561 (right!10830 t!4115)) (ite ((_ is Empty!3968) (right!10830 t!4115)) 0 (ite ((_ is Leaf!6077) (right!10830 t!4115)) 1 (cheight!4179 (right!10830 t!4115)))))))

(assert (=> b!1197178 d!341979))

(declare-fun d!341981 () Bool)

(declare-fun res!540316 () Bool)

(declare-fun e!768850 () Bool)

(assert (=> d!341981 (=> (not res!540316) (not e!768850))))

(assert (=> d!341981 (= res!540316 (= (csize!8166 (left!10500 t!4115)) (+ (size!9554 (left!10500 (left!10500 t!4115))) (size!9554 (right!10830 (left!10500 t!4115))))))))

(assert (=> d!341981 (= (inv!16073 (left!10500 t!4115)) e!768850)))

(declare-fun b!1197250 () Bool)

(declare-fun res!540317 () Bool)

(assert (=> b!1197250 (=> (not res!540317) (not e!768850))))

(assert (=> b!1197250 (= res!540317 (and (not (= (left!10500 (left!10500 t!4115)) Empty!3968)) (not (= (right!10830 (left!10500 t!4115)) Empty!3968))))))

(declare-fun b!1197251 () Bool)

(declare-fun res!540318 () Bool)

(assert (=> b!1197251 (=> (not res!540318) (not e!768850))))

(assert (=> b!1197251 (= res!540318 (= (cheight!4179 (left!10500 t!4115)) (+ (max!0 (height!561 (left!10500 (left!10500 t!4115))) (height!561 (right!10830 (left!10500 t!4115)))) 1)))))

(declare-fun b!1197252 () Bool)

(assert (=> b!1197252 (= e!768850 (<= 0 (cheight!4179 (left!10500 t!4115))))))

(assert (= (and d!341981 res!540316) b!1197250))

(assert (= (and b!1197250 res!540317) b!1197251))

(assert (= (and b!1197251 res!540318) b!1197252))

(declare-fun m!1372063 () Bool)

(assert (=> d!341981 m!1372063))

(declare-fun m!1372065 () Bool)

(assert (=> d!341981 m!1372065))

(declare-fun m!1372067 () Bool)

(assert (=> b!1197251 m!1372067))

(declare-fun m!1372069 () Bool)

(assert (=> b!1197251 m!1372069))

(assert (=> b!1197251 m!1372067))

(assert (=> b!1197251 m!1372069))

(declare-fun m!1372071 () Bool)

(assert (=> b!1197251 m!1372071))

(assert (=> b!1197132 d!341981))

(declare-fun d!341983 () Bool)

(declare-fun lt!410263 () Int)

(assert (=> d!341983 (>= lt!410263 0)))

(declare-fun e!768851 () Int)

(assert (=> d!341983 (= lt!410263 e!768851)))

(declare-fun c!199055 () Bool)

(assert (=> d!341983 (= c!199055 ((_ is Nil!12035) (innerList!4028 (xs!6675 t!4115))))))

(assert (=> d!341983 (= (size!9555 (innerList!4028 (xs!6675 t!4115))) lt!410263)))

(declare-fun b!1197253 () Bool)

(assert (=> b!1197253 (= e!768851 0)))

(declare-fun b!1197254 () Bool)

(assert (=> b!1197254 (= e!768851 (+ 1 (size!9555 (t!112389 (innerList!4028 (xs!6675 t!4115))))))))

(assert (= (and d!341983 c!199055) b!1197253))

(assert (= (and d!341983 (not c!199055)) b!1197254))

(declare-fun m!1372073 () Bool)

(assert (=> b!1197254 m!1372073))

(assert (=> d!341947 d!341983))

(declare-fun d!341985 () Bool)

(declare-fun lt!410266 () Bool)

(declare-fun isEmpty!7250 (List!12059) Bool)

(assert (=> d!341985 (= lt!410266 (isEmpty!7250 (list!4469 (right!10830 t!4115))))))

(assert (=> d!341985 (= lt!410266 (= (size!9554 (right!10830 t!4115)) 0))))

(assert (=> d!341985 (= (isEmpty!7248 (right!10830 t!4115)) lt!410266)))

(declare-fun bs!288134 () Bool)

(assert (= bs!288134 d!341985))

(assert (=> bs!288134 m!1371907))

(assert (=> bs!288134 m!1371907))

(declare-fun m!1372075 () Bool)

(assert (=> bs!288134 m!1372075))

(assert (=> bs!288134 m!1372057))

(assert (=> b!1197179 d!341985))

(declare-fun d!341987 () Bool)

(declare-fun lt!410267 () Int)

(assert (=> d!341987 (>= lt!410267 0)))

(declare-fun e!768852 () Int)

(assert (=> d!341987 (= lt!410267 e!768852)))

(declare-fun c!199056 () Bool)

(assert (=> d!341987 (= c!199056 ((_ is Nil!12035) (t!112389 (list!4469 (left!10500 t!4115)))))))

(assert (=> d!341987 (= (size!9555 (t!112389 (list!4469 (left!10500 t!4115)))) lt!410267)))

(declare-fun b!1197255 () Bool)

(assert (=> b!1197255 (= e!768852 0)))

(declare-fun b!1197256 () Bool)

(assert (=> b!1197256 (= e!768852 (+ 1 (size!9555 (t!112389 (t!112389 (list!4469 (left!10500 t!4115)))))))))

(assert (= (and d!341987 c!199056) b!1197255))

(assert (= (and d!341987 (not c!199056)) b!1197256))

(declare-fun m!1372077 () Bool)

(assert (=> b!1197256 m!1372077))

(assert (=> b!1197080 d!341987))

(declare-fun b!1197257 () Bool)

(declare-fun res!540324 () Bool)

(declare-fun e!768854 () Bool)

(assert (=> b!1197257 (=> (not res!540324) (not e!768854))))

(assert (=> b!1197257 (= res!540324 (<= (- (height!561 (left!10500 (left!10500 t!4115))) (height!561 (right!10830 (left!10500 t!4115)))) 1))))

(declare-fun b!1197258 () Bool)

(declare-fun e!768853 () Bool)

(assert (=> b!1197258 (= e!768853 e!768854)))

(declare-fun res!540322 () Bool)

(assert (=> b!1197258 (=> (not res!540322) (not e!768854))))

(assert (=> b!1197258 (= res!540322 (<= (- 1) (- (height!561 (left!10500 (left!10500 t!4115))) (height!561 (right!10830 (left!10500 t!4115))))))))

(declare-fun b!1197260 () Bool)

(declare-fun res!540320 () Bool)

(assert (=> b!1197260 (=> (not res!540320) (not e!768854))))

(assert (=> b!1197260 (= res!540320 (isBalanced!1153 (left!10500 (left!10500 t!4115))))))

(declare-fun b!1197261 () Bool)

(declare-fun res!540321 () Bool)

(assert (=> b!1197261 (=> (not res!540321) (not e!768854))))

(assert (=> b!1197261 (= res!540321 (isBalanced!1153 (right!10830 (left!10500 t!4115))))))

(declare-fun b!1197262 () Bool)

(declare-fun res!540323 () Bool)

(assert (=> b!1197262 (=> (not res!540323) (not e!768854))))

(assert (=> b!1197262 (= res!540323 (not (isEmpty!7248 (left!10500 (left!10500 t!4115)))))))

(declare-fun b!1197259 () Bool)

(assert (=> b!1197259 (= e!768854 (not (isEmpty!7248 (right!10830 (left!10500 t!4115)))))))

(declare-fun d!341989 () Bool)

(declare-fun res!540319 () Bool)

(assert (=> d!341989 (=> res!540319 e!768853)))

(assert (=> d!341989 (= res!540319 (not ((_ is Node!3968) (left!10500 t!4115))))))

(assert (=> d!341989 (= (isBalanced!1153 (left!10500 t!4115)) e!768853)))

(assert (= (and d!341989 (not res!540319)) b!1197258))

(assert (= (and b!1197258 res!540322) b!1197257))

(assert (= (and b!1197257 res!540324) b!1197260))

(assert (= (and b!1197260 res!540320) b!1197261))

(assert (= (and b!1197261 res!540321) b!1197262))

(assert (= (and b!1197262 res!540323) b!1197259))

(declare-fun m!1372079 () Bool)

(assert (=> b!1197260 m!1372079))

(declare-fun m!1372081 () Bool)

(assert (=> b!1197259 m!1372081))

(assert (=> b!1197258 m!1372067))

(assert (=> b!1197258 m!1372069))

(declare-fun m!1372083 () Bool)

(assert (=> b!1197262 m!1372083))

(declare-fun m!1372085 () Bool)

(assert (=> b!1197261 m!1372085))

(assert (=> b!1197257 m!1372067))

(assert (=> b!1197257 m!1372069))

(assert (=> b!1197180 d!341989))

(declare-fun d!341991 () Bool)

(declare-fun res!540329 () Bool)

(declare-fun e!768857 () Bool)

(assert (=> d!341991 (=> (not res!540329) (not e!768857))))

(assert (=> d!341991 (= res!540329 (<= (size!9555 (list!4470 (xs!6675 (left!10500 t!4115)))) 512))))

(assert (=> d!341991 (= (inv!16074 (left!10500 t!4115)) e!768857)))

(declare-fun b!1197267 () Bool)

(declare-fun res!540330 () Bool)

(assert (=> b!1197267 (=> (not res!540330) (not e!768857))))

(assert (=> b!1197267 (= res!540330 (= (csize!8167 (left!10500 t!4115)) (size!9555 (list!4470 (xs!6675 (left!10500 t!4115))))))))

(declare-fun b!1197268 () Bool)

(assert (=> b!1197268 (= e!768857 (and (> (csize!8167 (left!10500 t!4115)) 0) (<= (csize!8167 (left!10500 t!4115)) 512)))))

(assert (= (and d!341991 res!540329) b!1197267))

(assert (= (and b!1197267 res!540330) b!1197268))

(assert (=> d!341991 m!1371919))

(assert (=> d!341991 m!1371919))

(declare-fun m!1372087 () Bool)

(assert (=> d!341991 m!1372087))

(assert (=> b!1197267 m!1371919))

(assert (=> b!1197267 m!1371919))

(assert (=> b!1197267 m!1372087))

(assert (=> b!1197134 d!341991))

(declare-fun b!1197269 () Bool)

(declare-fun res!540336 () Bool)

(declare-fun e!768859 () Bool)

(assert (=> b!1197269 (=> (not res!540336) (not e!768859))))

(assert (=> b!1197269 (= res!540336 (<= (- (height!561 (left!10500 (right!10830 t!4115))) (height!561 (right!10830 (right!10830 t!4115)))) 1))))

(declare-fun b!1197270 () Bool)

(declare-fun e!768858 () Bool)

(assert (=> b!1197270 (= e!768858 e!768859)))

(declare-fun res!540334 () Bool)

(assert (=> b!1197270 (=> (not res!540334) (not e!768859))))

(assert (=> b!1197270 (= res!540334 (<= (- 1) (- (height!561 (left!10500 (right!10830 t!4115))) (height!561 (right!10830 (right!10830 t!4115))))))))

(declare-fun b!1197272 () Bool)

(declare-fun res!540332 () Bool)

(assert (=> b!1197272 (=> (not res!540332) (not e!768859))))

(assert (=> b!1197272 (= res!540332 (isBalanced!1153 (left!10500 (right!10830 t!4115))))))

(declare-fun b!1197273 () Bool)

(declare-fun res!540333 () Bool)

(assert (=> b!1197273 (=> (not res!540333) (not e!768859))))

(assert (=> b!1197273 (= res!540333 (isBalanced!1153 (right!10830 (right!10830 t!4115))))))

(declare-fun b!1197274 () Bool)

(declare-fun res!540335 () Bool)

(assert (=> b!1197274 (=> (not res!540335) (not e!768859))))

(assert (=> b!1197274 (= res!540335 (not (isEmpty!7248 (left!10500 (right!10830 t!4115)))))))

(declare-fun b!1197271 () Bool)

(assert (=> b!1197271 (= e!768859 (not (isEmpty!7248 (right!10830 (right!10830 t!4115)))))))

(declare-fun d!341993 () Bool)

(declare-fun res!540331 () Bool)

(assert (=> d!341993 (=> res!540331 e!768858)))

(assert (=> d!341993 (= res!540331 (not ((_ is Node!3968) (right!10830 t!4115))))))

(assert (=> d!341993 (= (isBalanced!1153 (right!10830 t!4115)) e!768858)))

(assert (= (and d!341993 (not res!540331)) b!1197270))

(assert (= (and b!1197270 res!540334) b!1197269))

(assert (= (and b!1197269 res!540336) b!1197272))

(assert (= (and b!1197272 res!540332) b!1197273))

(assert (= (and b!1197273 res!540333) b!1197274))

(assert (= (and b!1197274 res!540335) b!1197271))

(declare-fun m!1372089 () Bool)

(assert (=> b!1197272 m!1372089))

(declare-fun m!1372091 () Bool)

(assert (=> b!1197271 m!1372091))

(declare-fun m!1372093 () Bool)

(assert (=> b!1197270 m!1372093))

(declare-fun m!1372095 () Bool)

(assert (=> b!1197270 m!1372095))

(declare-fun m!1372097 () Bool)

(assert (=> b!1197274 m!1372097))

(declare-fun m!1372099 () Bool)

(assert (=> b!1197273 m!1372099))

(assert (=> b!1197269 m!1372093))

(assert (=> b!1197269 m!1372095))

(assert (=> b!1197181 d!341993))

(declare-fun d!341995 () Bool)

(declare-fun lt!410268 () Bool)

(assert (=> d!341995 (= lt!410268 (isEmpty!7250 (list!4469 (left!10500 t!4115))))))

(assert (=> d!341995 (= lt!410268 (= (size!9554 (left!10500 t!4115)) 0))))

(assert (=> d!341995 (= (isEmpty!7248 (left!10500 t!4115)) lt!410268)))

(declare-fun bs!288135 () Bool)

(assert (= bs!288135 d!341995))

(assert (=> bs!288135 m!1371903))

(assert (=> bs!288135 m!1371903))

(declare-fun m!1372101 () Bool)

(assert (=> bs!288135 m!1372101))

(assert (=> bs!288135 m!1372055))

(assert (=> b!1197182 d!341995))

(declare-fun d!341997 () Bool)

(declare-fun res!540337 () Bool)

(declare-fun e!768860 () Bool)

(assert (=> d!341997 (=> (not res!540337) (not e!768860))))

(assert (=> d!341997 (= res!540337 (<= (size!9555 (list!4470 (xs!6675 (right!10830 t!4115)))) 512))))

(assert (=> d!341997 (= (inv!16074 (right!10830 t!4115)) e!768860)))

(declare-fun b!1197275 () Bool)

(declare-fun res!540338 () Bool)

(assert (=> b!1197275 (=> (not res!540338) (not e!768860))))

(assert (=> b!1197275 (= res!540338 (= (csize!8167 (right!10830 t!4115)) (size!9555 (list!4470 (xs!6675 (right!10830 t!4115))))))))

(declare-fun b!1197276 () Bool)

(assert (=> b!1197276 (= e!768860 (and (> (csize!8167 (right!10830 t!4115)) 0) (<= (csize!8167 (right!10830 t!4115)) 512)))))

(assert (= (and d!341997 res!540337) b!1197275))

(assert (= (and b!1197275 res!540338) b!1197276))

(assert (=> d!341997 m!1371929))

(assert (=> d!341997 m!1371929))

(declare-fun m!1372103 () Bool)

(assert (=> d!341997 m!1372103))

(assert (=> b!1197275 m!1371929))

(assert (=> b!1197275 m!1371929))

(assert (=> b!1197275 m!1372103))

(assert (=> b!1197137 d!341997))

(declare-fun d!341999 () Bool)

(declare-fun c!199057 () Bool)

(assert (=> d!341999 (= c!199057 ((_ is Node!3968) (left!10500 (left!10500 t!4115))))))

(declare-fun e!768861 () Bool)

(assert (=> d!341999 (= (inv!16071 (left!10500 (left!10500 t!4115))) e!768861)))

(declare-fun b!1197277 () Bool)

(assert (=> b!1197277 (= e!768861 (inv!16073 (left!10500 (left!10500 t!4115))))))

(declare-fun b!1197278 () Bool)

(declare-fun e!768862 () Bool)

(assert (=> b!1197278 (= e!768861 e!768862)))

(declare-fun res!540339 () Bool)

(assert (=> b!1197278 (= res!540339 (not ((_ is Leaf!6077) (left!10500 (left!10500 t!4115)))))))

(assert (=> b!1197278 (=> res!540339 e!768862)))

(declare-fun b!1197279 () Bool)

(assert (=> b!1197279 (= e!768862 (inv!16074 (left!10500 (left!10500 t!4115))))))

(assert (= (and d!341999 c!199057) b!1197277))

(assert (= (and d!341999 (not c!199057)) b!1197278))

(assert (= (and b!1197278 (not res!540339)) b!1197279))

(declare-fun m!1372105 () Bool)

(assert (=> b!1197277 m!1372105))

(declare-fun m!1372107 () Bool)

(assert (=> b!1197279 m!1372107))

(assert (=> b!1197197 d!341999))

(declare-fun d!342001 () Bool)

(declare-fun c!199058 () Bool)

(assert (=> d!342001 (= c!199058 ((_ is Node!3968) (right!10830 (left!10500 t!4115))))))

(declare-fun e!768863 () Bool)

(assert (=> d!342001 (= (inv!16071 (right!10830 (left!10500 t!4115))) e!768863)))

(declare-fun b!1197280 () Bool)

(assert (=> b!1197280 (= e!768863 (inv!16073 (right!10830 (left!10500 t!4115))))))

(declare-fun b!1197281 () Bool)

(declare-fun e!768864 () Bool)

(assert (=> b!1197281 (= e!768863 e!768864)))

(declare-fun res!540340 () Bool)

(assert (=> b!1197281 (= res!540340 (not ((_ is Leaf!6077) (right!10830 (left!10500 t!4115)))))))

(assert (=> b!1197281 (=> res!540340 e!768864)))

(declare-fun b!1197282 () Bool)

(assert (=> b!1197282 (= e!768864 (inv!16074 (right!10830 (left!10500 t!4115))))))

(assert (= (and d!342001 c!199058) b!1197280))

(assert (= (and d!342001 (not c!199058)) b!1197281))

(assert (= (and b!1197281 (not res!540340)) b!1197282))

(declare-fun m!1372109 () Bool)

(assert (=> b!1197280 m!1372109))

(declare-fun m!1372111 () Bool)

(assert (=> b!1197282 m!1372111))

(assert (=> b!1197197 d!342001))

(declare-fun d!342003 () Bool)

(assert (=> d!342003 (= (inv!16072 (xs!6675 (left!10500 t!4115))) (<= (size!9555 (innerList!4028 (xs!6675 (left!10500 t!4115)))) 2147483647))))

(declare-fun bs!288136 () Bool)

(assert (= bs!288136 d!342003))

(declare-fun m!1372113 () Bool)

(assert (=> bs!288136 m!1372113))

(assert (=> b!1197198 d!342003))

(assert (=> b!1197071 d!341943))

(assert (=> b!1197071 d!341945))

(declare-fun d!342005 () Bool)

(assert (=> d!342005 (= (list!4470 (xs!6675 (right!10830 t!4115))) (innerList!4028 (xs!6675 (right!10830 t!4115))))))

(assert (=> b!1197103 d!342005))

(declare-fun b!1197294 () Bool)

(declare-fun e!768869 () Bool)

(declare-fun lt!410271 () List!12059)

(assert (=> b!1197294 (= e!768869 (or (not (= (list!4469 (right!10830 (right!10830 t!4115))) Nil!12035)) (= lt!410271 (list!4469 (left!10500 (right!10830 t!4115))))))))

(declare-fun b!1197292 () Bool)

(declare-fun e!768870 () List!12059)

(assert (=> b!1197292 (= e!768870 (Cons!12035 (h!17436 (list!4469 (left!10500 (right!10830 t!4115)))) (++!3069 (t!112389 (list!4469 (left!10500 (right!10830 t!4115)))) (list!4469 (right!10830 (right!10830 t!4115))))))))

(declare-fun d!342007 () Bool)

(assert (=> d!342007 e!768869))

(declare-fun res!540345 () Bool)

(assert (=> d!342007 (=> (not res!540345) (not e!768869))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1681 (List!12059) (InoxSet T!21726))

(assert (=> d!342007 (= res!540345 (= (content!1681 lt!410271) ((_ map or) (content!1681 (list!4469 (left!10500 (right!10830 t!4115)))) (content!1681 (list!4469 (right!10830 (right!10830 t!4115)))))))))

(assert (=> d!342007 (= lt!410271 e!768870)))

(declare-fun c!199061 () Bool)

(assert (=> d!342007 (= c!199061 ((_ is Nil!12035) (list!4469 (left!10500 (right!10830 t!4115)))))))

(assert (=> d!342007 (= (++!3069 (list!4469 (left!10500 (right!10830 t!4115))) (list!4469 (right!10830 (right!10830 t!4115)))) lt!410271)))

(declare-fun b!1197291 () Bool)

(assert (=> b!1197291 (= e!768870 (list!4469 (right!10830 (right!10830 t!4115))))))

(declare-fun b!1197293 () Bool)

(declare-fun res!540346 () Bool)

(assert (=> b!1197293 (=> (not res!540346) (not e!768869))))

(assert (=> b!1197293 (= res!540346 (= (size!9555 lt!410271) (+ (size!9555 (list!4469 (left!10500 (right!10830 t!4115)))) (size!9555 (list!4469 (right!10830 (right!10830 t!4115)))))))))

(assert (= (and d!342007 c!199061) b!1197291))

(assert (= (and d!342007 (not c!199061)) b!1197292))

(assert (= (and d!342007 res!540345) b!1197293))

(assert (= (and b!1197293 res!540346) b!1197294))

(assert (=> b!1197292 m!1371933))

(declare-fun m!1372115 () Bool)

(assert (=> b!1197292 m!1372115))

(declare-fun m!1372117 () Bool)

(assert (=> d!342007 m!1372117))

(assert (=> d!342007 m!1371931))

(declare-fun m!1372119 () Bool)

(assert (=> d!342007 m!1372119))

(assert (=> d!342007 m!1371933))

(declare-fun m!1372121 () Bool)

(assert (=> d!342007 m!1372121))

(declare-fun m!1372123 () Bool)

(assert (=> b!1197293 m!1372123))

(assert (=> b!1197293 m!1371931))

(declare-fun m!1372125 () Bool)

(assert (=> b!1197293 m!1372125))

(assert (=> b!1197293 m!1371933))

(declare-fun m!1372127 () Bool)

(assert (=> b!1197293 m!1372127))

(assert (=> b!1197104 d!342007))

(declare-fun b!1197297 () Bool)

(declare-fun e!768872 () List!12059)

(assert (=> b!1197297 (= e!768872 (list!4470 (xs!6675 (left!10500 (right!10830 t!4115)))))))

(declare-fun b!1197298 () Bool)

(assert (=> b!1197298 (= e!768872 (++!3069 (list!4469 (left!10500 (left!10500 (right!10830 t!4115)))) (list!4469 (right!10830 (left!10500 (right!10830 t!4115))))))))

(declare-fun d!342009 () Bool)

(declare-fun c!199062 () Bool)

(assert (=> d!342009 (= c!199062 ((_ is Empty!3968) (left!10500 (right!10830 t!4115))))))

(declare-fun e!768871 () List!12059)

(assert (=> d!342009 (= (list!4469 (left!10500 (right!10830 t!4115))) e!768871)))

(declare-fun b!1197295 () Bool)

(assert (=> b!1197295 (= e!768871 Nil!12035)))

(declare-fun b!1197296 () Bool)

(assert (=> b!1197296 (= e!768871 e!768872)))

(declare-fun c!199063 () Bool)

(assert (=> b!1197296 (= c!199063 ((_ is Leaf!6077) (left!10500 (right!10830 t!4115))))))

(assert (= (and d!342009 c!199062) b!1197295))

(assert (= (and d!342009 (not c!199062)) b!1197296))

(assert (= (and b!1197296 c!199063) b!1197297))

(assert (= (and b!1197296 (not c!199063)) b!1197298))

(declare-fun m!1372129 () Bool)

(assert (=> b!1197297 m!1372129))

(declare-fun m!1372131 () Bool)

(assert (=> b!1197298 m!1372131))

(declare-fun m!1372133 () Bool)

(assert (=> b!1197298 m!1372133))

(assert (=> b!1197298 m!1372131))

(assert (=> b!1197298 m!1372133))

(declare-fun m!1372135 () Bool)

(assert (=> b!1197298 m!1372135))

(assert (=> b!1197104 d!342009))

(declare-fun b!1197301 () Bool)

(declare-fun e!768874 () List!12059)

(assert (=> b!1197301 (= e!768874 (list!4470 (xs!6675 (right!10830 (right!10830 t!4115)))))))

(declare-fun b!1197302 () Bool)

(assert (=> b!1197302 (= e!768874 (++!3069 (list!4469 (left!10500 (right!10830 (right!10830 t!4115)))) (list!4469 (right!10830 (right!10830 (right!10830 t!4115))))))))

(declare-fun d!342011 () Bool)

(declare-fun c!199064 () Bool)

(assert (=> d!342011 (= c!199064 ((_ is Empty!3968) (right!10830 (right!10830 t!4115))))))

(declare-fun e!768873 () List!12059)

(assert (=> d!342011 (= (list!4469 (right!10830 (right!10830 t!4115))) e!768873)))

(declare-fun b!1197299 () Bool)

(assert (=> b!1197299 (= e!768873 Nil!12035)))

(declare-fun b!1197300 () Bool)

(assert (=> b!1197300 (= e!768873 e!768874)))

(declare-fun c!199065 () Bool)

(assert (=> b!1197300 (= c!199065 ((_ is Leaf!6077) (right!10830 (right!10830 t!4115))))))

(assert (= (and d!342011 c!199064) b!1197299))

(assert (= (and d!342011 (not c!199064)) b!1197300))

(assert (= (and b!1197300 c!199065) b!1197301))

(assert (= (and b!1197300 (not c!199065)) b!1197302))

(declare-fun m!1372137 () Bool)

(assert (=> b!1197301 m!1372137))

(declare-fun m!1372139 () Bool)

(assert (=> b!1197302 m!1372139))

(declare-fun m!1372141 () Bool)

(assert (=> b!1197302 m!1372141))

(assert (=> b!1197302 m!1372139))

(assert (=> b!1197302 m!1372141))

(declare-fun m!1372143 () Bool)

(assert (=> b!1197302 m!1372143))

(assert (=> b!1197104 d!342011))

(assert (=> b!1197177 d!341977))

(assert (=> b!1197177 d!341979))

(declare-fun d!342013 () Bool)

(declare-fun res!540347 () Bool)

(declare-fun e!768875 () Bool)

(assert (=> d!342013 (=> (not res!540347) (not e!768875))))

(assert (=> d!342013 (= res!540347 (<= (size!9555 (list!4470 (xs!6675 t!4115))) 512))))

(assert (=> d!342013 (= (inv!16074 t!4115) e!768875)))

(declare-fun b!1197303 () Bool)

(declare-fun res!540348 () Bool)

(assert (=> b!1197303 (=> (not res!540348) (not e!768875))))

(assert (=> b!1197303 (= res!540348 (= (csize!8167 t!4115) (size!9555 (list!4470 (xs!6675 t!4115)))))))

(declare-fun b!1197304 () Bool)

(assert (=> b!1197304 (= e!768875 (and (> (csize!8167 t!4115) 0) (<= (csize!8167 t!4115) 512)))))

(assert (= (and d!342013 res!540347) b!1197303))

(assert (= (and b!1197303 res!540348) b!1197304))

(assert (=> d!342013 m!1372043))

(assert (=> d!342013 m!1372043))

(declare-fun m!1372145 () Bool)

(assert (=> d!342013 m!1372145))

(assert (=> b!1197303 m!1372043))

(assert (=> b!1197303 m!1372043))

(assert (=> b!1197303 m!1372145))

(assert (=> b!1197131 d!342013))

(declare-fun d!342015 () Bool)

(assert (=> d!342015 (= (list!4470 (xs!6675 (left!10500 t!4115))) (innerList!4028 (xs!6675 (left!10500 t!4115))))))

(assert (=> b!1197097 d!342015))

(declare-fun b!1197308 () Bool)

(declare-fun e!768876 () Bool)

(declare-fun lt!410272 () List!12059)

(assert (=> b!1197308 (= e!768876 (or (not (= (list!4469 (right!10830 (left!10500 t!4115))) Nil!12035)) (= lt!410272 (list!4469 (left!10500 (left!10500 t!4115))))))))

(declare-fun b!1197306 () Bool)

(declare-fun e!768877 () List!12059)

(assert (=> b!1197306 (= e!768877 (Cons!12035 (h!17436 (list!4469 (left!10500 (left!10500 t!4115)))) (++!3069 (t!112389 (list!4469 (left!10500 (left!10500 t!4115)))) (list!4469 (right!10830 (left!10500 t!4115))))))))

(declare-fun d!342017 () Bool)

(assert (=> d!342017 e!768876))

(declare-fun res!540349 () Bool)

(assert (=> d!342017 (=> (not res!540349) (not e!768876))))

(assert (=> d!342017 (= res!540349 (= (content!1681 lt!410272) ((_ map or) (content!1681 (list!4469 (left!10500 (left!10500 t!4115)))) (content!1681 (list!4469 (right!10830 (left!10500 t!4115)))))))))

(assert (=> d!342017 (= lt!410272 e!768877)))

(declare-fun c!199066 () Bool)

(assert (=> d!342017 (= c!199066 ((_ is Nil!12035) (list!4469 (left!10500 (left!10500 t!4115)))))))

(assert (=> d!342017 (= (++!3069 (list!4469 (left!10500 (left!10500 t!4115))) (list!4469 (right!10830 (left!10500 t!4115)))) lt!410272)))

(declare-fun b!1197305 () Bool)

(assert (=> b!1197305 (= e!768877 (list!4469 (right!10830 (left!10500 t!4115))))))

(declare-fun b!1197307 () Bool)

(declare-fun res!540350 () Bool)

(assert (=> b!1197307 (=> (not res!540350) (not e!768876))))

(assert (=> b!1197307 (= res!540350 (= (size!9555 lt!410272) (+ (size!9555 (list!4469 (left!10500 (left!10500 t!4115)))) (size!9555 (list!4469 (right!10830 (left!10500 t!4115)))))))))

(assert (= (and d!342017 c!199066) b!1197305))

(assert (= (and d!342017 (not c!199066)) b!1197306))

(assert (= (and d!342017 res!540349) b!1197307))

(assert (= (and b!1197307 res!540350) b!1197308))

(assert (=> b!1197306 m!1371923))

(declare-fun m!1372147 () Bool)

(assert (=> b!1197306 m!1372147))

(declare-fun m!1372149 () Bool)

(assert (=> d!342017 m!1372149))

(assert (=> d!342017 m!1371921))

(declare-fun m!1372151 () Bool)

(assert (=> d!342017 m!1372151))

(assert (=> d!342017 m!1371923))

(declare-fun m!1372153 () Bool)

(assert (=> d!342017 m!1372153))

(declare-fun m!1372155 () Bool)

(assert (=> b!1197307 m!1372155))

(assert (=> b!1197307 m!1371921))

(declare-fun m!1372157 () Bool)

(assert (=> b!1197307 m!1372157))

(assert (=> b!1197307 m!1371923))

(declare-fun m!1372159 () Bool)

(assert (=> b!1197307 m!1372159))

(assert (=> b!1197098 d!342017))

(declare-fun b!1197311 () Bool)

(declare-fun e!768879 () List!12059)

(assert (=> b!1197311 (= e!768879 (list!4470 (xs!6675 (left!10500 (left!10500 t!4115)))))))

(declare-fun b!1197312 () Bool)

(assert (=> b!1197312 (= e!768879 (++!3069 (list!4469 (left!10500 (left!10500 (left!10500 t!4115)))) (list!4469 (right!10830 (left!10500 (left!10500 t!4115))))))))

(declare-fun d!342019 () Bool)

(declare-fun c!199067 () Bool)

(assert (=> d!342019 (= c!199067 ((_ is Empty!3968) (left!10500 (left!10500 t!4115))))))

(declare-fun e!768878 () List!12059)

(assert (=> d!342019 (= (list!4469 (left!10500 (left!10500 t!4115))) e!768878)))

(declare-fun b!1197309 () Bool)

(assert (=> b!1197309 (= e!768878 Nil!12035)))

(declare-fun b!1197310 () Bool)

(assert (=> b!1197310 (= e!768878 e!768879)))

(declare-fun c!199068 () Bool)

(assert (=> b!1197310 (= c!199068 ((_ is Leaf!6077) (left!10500 (left!10500 t!4115))))))

(assert (= (and d!342019 c!199067) b!1197309))

(assert (= (and d!342019 (not c!199067)) b!1197310))

(assert (= (and b!1197310 c!199068) b!1197311))

(assert (= (and b!1197310 (not c!199068)) b!1197312))

(declare-fun m!1372161 () Bool)

(assert (=> b!1197311 m!1372161))

(declare-fun m!1372163 () Bool)

(assert (=> b!1197312 m!1372163))

(declare-fun m!1372165 () Bool)

(assert (=> b!1197312 m!1372165))

(assert (=> b!1197312 m!1372163))

(assert (=> b!1197312 m!1372165))

(declare-fun m!1372167 () Bool)

(assert (=> b!1197312 m!1372167))

(assert (=> b!1197098 d!342019))

(declare-fun b!1197315 () Bool)

(declare-fun e!768881 () List!12059)

(assert (=> b!1197315 (= e!768881 (list!4470 (xs!6675 (right!10830 (left!10500 t!4115)))))))

(declare-fun b!1197316 () Bool)

(assert (=> b!1197316 (= e!768881 (++!3069 (list!4469 (left!10500 (right!10830 (left!10500 t!4115)))) (list!4469 (right!10830 (right!10830 (left!10500 t!4115))))))))

(declare-fun d!342023 () Bool)

(declare-fun c!199069 () Bool)

(assert (=> d!342023 (= c!199069 ((_ is Empty!3968) (right!10830 (left!10500 t!4115))))))

(declare-fun e!768880 () List!12059)

(assert (=> d!342023 (= (list!4469 (right!10830 (left!10500 t!4115))) e!768880)))

(declare-fun b!1197313 () Bool)

(assert (=> b!1197313 (= e!768880 Nil!12035)))

(declare-fun b!1197314 () Bool)

(assert (=> b!1197314 (= e!768880 e!768881)))

(declare-fun c!199070 () Bool)

(assert (=> b!1197314 (= c!199070 ((_ is Leaf!6077) (right!10830 (left!10500 t!4115))))))

(assert (= (and d!342023 c!199069) b!1197313))

(assert (= (and d!342023 (not c!199069)) b!1197314))

(assert (= (and b!1197314 c!199070) b!1197315))

(assert (= (and b!1197314 (not c!199070)) b!1197316))

(declare-fun m!1372169 () Bool)

(assert (=> b!1197315 m!1372169))

(declare-fun m!1372171 () Bool)

(assert (=> b!1197316 m!1372171))

(declare-fun m!1372173 () Bool)

(assert (=> b!1197316 m!1372173))

(assert (=> b!1197316 m!1372171))

(assert (=> b!1197316 m!1372173))

(declare-fun m!1372175 () Bool)

(assert (=> b!1197316 m!1372175))

(assert (=> b!1197098 d!342023))

(declare-fun d!342025 () Bool)

(declare-fun res!540351 () Bool)

(declare-fun e!768882 () Bool)

(assert (=> d!342025 (=> (not res!540351) (not e!768882))))

(assert (=> d!342025 (= res!540351 (= (csize!8166 (right!10830 t!4115)) (+ (size!9554 (left!10500 (right!10830 t!4115))) (size!9554 (right!10830 (right!10830 t!4115))))))))

(assert (=> d!342025 (= (inv!16073 (right!10830 t!4115)) e!768882)))

(declare-fun b!1197317 () Bool)

(declare-fun res!540352 () Bool)

(assert (=> b!1197317 (=> (not res!540352) (not e!768882))))

(assert (=> b!1197317 (= res!540352 (and (not (= (left!10500 (right!10830 t!4115)) Empty!3968)) (not (= (right!10830 (right!10830 t!4115)) Empty!3968))))))

(declare-fun b!1197318 () Bool)

(declare-fun res!540353 () Bool)

(assert (=> b!1197318 (=> (not res!540353) (not e!768882))))

(assert (=> b!1197318 (= res!540353 (= (cheight!4179 (right!10830 t!4115)) (+ (max!0 (height!561 (left!10500 (right!10830 t!4115))) (height!561 (right!10830 (right!10830 t!4115)))) 1)))))

(declare-fun b!1197319 () Bool)

(assert (=> b!1197319 (= e!768882 (<= 0 (cheight!4179 (right!10830 t!4115))))))

(assert (= (and d!342025 res!540351) b!1197317))

(assert (= (and b!1197317 res!540352) b!1197318))

(assert (= (and b!1197318 res!540353) b!1197319))

(declare-fun m!1372177 () Bool)

(assert (=> d!342025 m!1372177))

(declare-fun m!1372179 () Bool)

(assert (=> d!342025 m!1372179))

(assert (=> b!1197318 m!1372093))

(assert (=> b!1197318 m!1372095))

(assert (=> b!1197318 m!1372093))

(assert (=> b!1197318 m!1372095))

(declare-fun m!1372181 () Bool)

(assert (=> b!1197318 m!1372181))

(assert (=> b!1197135 d!342025))

(declare-fun tp!340900 () Bool)

(declare-fun e!768884 () Bool)

(declare-fun tp!340899 () Bool)

(declare-fun b!1197320 () Bool)

(assert (=> b!1197320 (= e!768884 (and (inv!16071 (left!10500 (left!10500 (left!10500 t!4115)))) tp!340899 (inv!16071 (right!10830 (left!10500 (left!10500 t!4115)))) tp!340900))))

(declare-fun b!1197322 () Bool)

(declare-fun e!768883 () Bool)

(declare-fun tp!340898 () Bool)

(assert (=> b!1197322 (= e!768883 tp!340898)))

(declare-fun b!1197321 () Bool)

(assert (=> b!1197321 (= e!768884 (and (inv!16072 (xs!6675 (left!10500 (left!10500 t!4115)))) e!768883))))

(assert (=> b!1197197 (= tp!340875 (and (inv!16071 (left!10500 (left!10500 t!4115))) e!768884))))

(assert (= (and b!1197197 ((_ is Node!3968) (left!10500 (left!10500 t!4115)))) b!1197320))

(assert (= b!1197321 b!1197322))

(assert (= (and b!1197197 ((_ is Leaf!6077) (left!10500 (left!10500 t!4115)))) b!1197321))

(declare-fun m!1372183 () Bool)

(assert (=> b!1197320 m!1372183))

(declare-fun m!1372185 () Bool)

(assert (=> b!1197320 m!1372185))

(declare-fun m!1372187 () Bool)

(assert (=> b!1197321 m!1372187))

(assert (=> b!1197197 m!1372011))

(declare-fun tp!340903 () Bool)

(declare-fun e!768886 () Bool)

(declare-fun tp!340902 () Bool)

(declare-fun b!1197323 () Bool)

(assert (=> b!1197323 (= e!768886 (and (inv!16071 (left!10500 (right!10830 (left!10500 t!4115)))) tp!340902 (inv!16071 (right!10830 (right!10830 (left!10500 t!4115)))) tp!340903))))

(declare-fun b!1197325 () Bool)

(declare-fun e!768885 () Bool)

(declare-fun tp!340901 () Bool)

(assert (=> b!1197325 (= e!768885 tp!340901)))

(declare-fun b!1197324 () Bool)

(assert (=> b!1197324 (= e!768886 (and (inv!16072 (xs!6675 (right!10830 (left!10500 t!4115)))) e!768885))))

(assert (=> b!1197197 (= tp!340876 (and (inv!16071 (right!10830 (left!10500 t!4115))) e!768886))))

(assert (= (and b!1197197 ((_ is Node!3968) (right!10830 (left!10500 t!4115)))) b!1197323))

(assert (= b!1197324 b!1197325))

(assert (= (and b!1197197 ((_ is Leaf!6077) (right!10830 (left!10500 t!4115)))) b!1197324))

(declare-fun m!1372189 () Bool)

(assert (=> b!1197323 m!1372189))

(declare-fun m!1372191 () Bool)

(assert (=> b!1197323 m!1372191))

(declare-fun m!1372193 () Bool)

(assert (=> b!1197324 m!1372193))

(assert (=> b!1197197 m!1372013))

(declare-fun b!1197326 () Bool)

(declare-fun e!768887 () Bool)

(declare-fun tp!340904 () Bool)

(assert (=> b!1197326 (= e!768887 (and tp_is_empty!5961 tp!340904))))

(assert (=> b!1197202 (= tp!340877 e!768887)))

(assert (= (and b!1197202 ((_ is Cons!12035) (innerList!4028 (xs!6675 (right!10830 t!4115))))) b!1197326))

(declare-fun b!1197327 () Bool)

(declare-fun e!768888 () Bool)

(declare-fun tp!340905 () Bool)

(assert (=> b!1197327 (= e!768888 (and tp_is_empty!5961 tp!340905))))

(assert (=> b!1197207 (= tp!340882 e!768888)))

(assert (= (and b!1197207 ((_ is Cons!12035) (t!112389 (innerList!4028 (xs!6675 t!4115))))) b!1197327))

(declare-fun b!1197328 () Bool)

(declare-fun e!768889 () Bool)

(declare-fun tp!340906 () Bool)

(assert (=> b!1197328 (= e!768889 (and tp_is_empty!5961 tp!340906))))

(assert (=> b!1197199 (= tp!340874 e!768889)))

(assert (= (and b!1197199 ((_ is Cons!12035) (innerList!4028 (xs!6675 (left!10500 t!4115))))) b!1197328))

(declare-fun b!1197329 () Bool)

(declare-fun e!768891 () Bool)

(declare-fun tp!340908 () Bool)

(declare-fun tp!340909 () Bool)

(assert (=> b!1197329 (= e!768891 (and (inv!16071 (left!10500 (left!10500 (right!10830 t!4115)))) tp!340908 (inv!16071 (right!10830 (left!10500 (right!10830 t!4115)))) tp!340909))))

(declare-fun b!1197331 () Bool)

(declare-fun e!768890 () Bool)

(declare-fun tp!340907 () Bool)

(assert (=> b!1197331 (= e!768890 tp!340907)))

(declare-fun b!1197330 () Bool)

(assert (=> b!1197330 (= e!768891 (and (inv!16072 (xs!6675 (left!10500 (right!10830 t!4115)))) e!768890))))

(assert (=> b!1197200 (= tp!340878 (and (inv!16071 (left!10500 (right!10830 t!4115))) e!768891))))

(assert (= (and b!1197200 ((_ is Node!3968) (left!10500 (right!10830 t!4115)))) b!1197329))

(assert (= b!1197330 b!1197331))

(assert (= (and b!1197200 ((_ is Leaf!6077) (left!10500 (right!10830 t!4115)))) b!1197330))

(declare-fun m!1372195 () Bool)

(assert (=> b!1197329 m!1372195))

(declare-fun m!1372197 () Bool)

(assert (=> b!1197329 m!1372197))

(declare-fun m!1372199 () Bool)

(assert (=> b!1197330 m!1372199))

(assert (=> b!1197200 m!1372017))

(declare-fun tp!340912 () Bool)

(declare-fun tp!340911 () Bool)

(declare-fun e!768893 () Bool)

(declare-fun b!1197332 () Bool)

(assert (=> b!1197332 (= e!768893 (and (inv!16071 (left!10500 (right!10830 (right!10830 t!4115)))) tp!340911 (inv!16071 (right!10830 (right!10830 (right!10830 t!4115)))) tp!340912))))

(declare-fun b!1197334 () Bool)

(declare-fun e!768892 () Bool)

(declare-fun tp!340910 () Bool)

(assert (=> b!1197334 (= e!768892 tp!340910)))

(declare-fun b!1197333 () Bool)

(assert (=> b!1197333 (= e!768893 (and (inv!16072 (xs!6675 (right!10830 (right!10830 t!4115)))) e!768892))))

(assert (=> b!1197200 (= tp!340879 (and (inv!16071 (right!10830 (right!10830 t!4115))) e!768893))))

(assert (= (and b!1197200 ((_ is Node!3968) (right!10830 (right!10830 t!4115)))) b!1197332))

(assert (= b!1197333 b!1197334))

(assert (= (and b!1197200 ((_ is Leaf!6077) (right!10830 (right!10830 t!4115)))) b!1197333))

(declare-fun m!1372201 () Bool)

(assert (=> b!1197332 m!1372201))

(declare-fun m!1372203 () Bool)

(assert (=> b!1197332 m!1372203))

(declare-fun m!1372205 () Bool)

(assert (=> b!1197333 m!1372205))

(assert (=> b!1197200 m!1372019))

(check-sat (not b!1197256) (not b!1197332) (not d!341991) (not b!1197311) (not b!1197251) (not b!1197233) (not b!1197292) tp_is_empty!5961 (not b!1197235) (not b!1197260) (not d!341975) (not b!1197320) (not b!1197274) (not b!1197307) (not b!1197269) (not b!1197200) (not b!1197325) (not b!1197257) (not d!342013) (not b!1197323) (not b!1197312) (not b!1197329) (not b!1197273) (not b!1197315) (not b!1197240) (not b!1197259) (not b!1197318) (not d!341985) (not d!342017) (not b!1197248) (not b!1197230) (not b!1197272) (not b!1197328) (not b!1197271) (not b!1197267) (not b!1197237) (not d!341973) (not b!1197238) (not b!1197303) (not b!1197333) (not b!1197280) (not b!1197228) (not b!1197258) (not b!1197197) (not b!1197277) (not d!342025) (not b!1197282) (not b!1197324) (not b!1197275) (not b!1197302) (not b!1197279) (not d!341995) (not b!1197322) (not b!1197270) (not b!1197331) (not b!1197301) (not b!1197330) (not b!1197254) (not d!341981) (not b!1197297) (not d!342003) (not b!1197327) (not b!1197262) (not b!1197334) (not b!1197261) (not b!1197293) (not b!1197326) (not d!342007) (not b!1197298) (not b!1197306) (not b!1197321) (not b!1197234) (not b!1197316) (not d!341997))
(check-sat)
(get-model)

(declare-fun d!342087 () Bool)

(declare-fun res!540403 () Bool)

(declare-fun e!768949 () Bool)

(assert (=> d!342087 (=> (not res!540403) (not e!768949))))

(assert (=> d!342087 (= res!540403 (= (csize!8166 (right!10830 (right!10830 t!4115))) (+ (size!9554 (left!10500 (right!10830 (right!10830 t!4115)))) (size!9554 (right!10830 (right!10830 (right!10830 t!4115)))))))))

(assert (=> d!342087 (= (inv!16073 (right!10830 (right!10830 t!4115))) e!768949)))

(declare-fun b!1197443 () Bool)

(declare-fun res!540404 () Bool)

(assert (=> b!1197443 (=> (not res!540404) (not e!768949))))

(assert (=> b!1197443 (= res!540404 (and (not (= (left!10500 (right!10830 (right!10830 t!4115))) Empty!3968)) (not (= (right!10830 (right!10830 (right!10830 t!4115))) Empty!3968))))))

(declare-fun b!1197444 () Bool)

(declare-fun res!540405 () Bool)

(assert (=> b!1197444 (=> (not res!540405) (not e!768949))))

(assert (=> b!1197444 (= res!540405 (= (cheight!4179 (right!10830 (right!10830 t!4115))) (+ (max!0 (height!561 (left!10500 (right!10830 (right!10830 t!4115)))) (height!561 (right!10830 (right!10830 (right!10830 t!4115))))) 1)))))

(declare-fun b!1197445 () Bool)

(assert (=> b!1197445 (= e!768949 (<= 0 (cheight!4179 (right!10830 (right!10830 t!4115)))))))

(assert (= (and d!342087 res!540403) b!1197443))

(assert (= (and b!1197443 res!540404) b!1197444))

(assert (= (and b!1197444 res!540405) b!1197445))

(declare-fun m!1372375 () Bool)

(assert (=> d!342087 m!1372375))

(declare-fun m!1372377 () Bool)

(assert (=> d!342087 m!1372377))

(declare-fun m!1372379 () Bool)

(assert (=> b!1197444 m!1372379))

(declare-fun m!1372381 () Bool)

(assert (=> b!1197444 m!1372381))

(assert (=> b!1197444 m!1372379))

(assert (=> b!1197444 m!1372381))

(declare-fun m!1372383 () Bool)

(assert (=> b!1197444 m!1372383))

(assert (=> b!1197238 d!342087))

(declare-fun d!342089 () Bool)

(assert (=> d!342089 (= (list!4470 (xs!6675 (right!10830 (right!10830 t!4115)))) (innerList!4028 (xs!6675 (right!10830 (right!10830 t!4115)))))))

(assert (=> b!1197301 d!342089))

(declare-fun d!342091 () Bool)

(declare-fun res!540406 () Bool)

(declare-fun e!768950 () Bool)

(assert (=> d!342091 (=> (not res!540406) (not e!768950))))

(assert (=> d!342091 (= res!540406 (<= (size!9555 (list!4470 (xs!6675 (right!10830 (right!10830 t!4115))))) 512))))

(assert (=> d!342091 (= (inv!16074 (right!10830 (right!10830 t!4115))) e!768950)))

(declare-fun b!1197446 () Bool)

(declare-fun res!540407 () Bool)

(assert (=> b!1197446 (=> (not res!540407) (not e!768950))))

(assert (=> b!1197446 (= res!540407 (= (csize!8167 (right!10830 (right!10830 t!4115))) (size!9555 (list!4470 (xs!6675 (right!10830 (right!10830 t!4115)))))))))

(declare-fun b!1197447 () Bool)

(assert (=> b!1197447 (= e!768950 (and (> (csize!8167 (right!10830 (right!10830 t!4115))) 0) (<= (csize!8167 (right!10830 (right!10830 t!4115))) 512)))))

(assert (= (and d!342091 res!540406) b!1197446))

(assert (= (and b!1197446 res!540407) b!1197447))

(assert (=> d!342091 m!1372137))

(assert (=> d!342091 m!1372137))

(declare-fun m!1372385 () Bool)

(assert (=> d!342091 m!1372385))

(assert (=> b!1197446 m!1372137))

(assert (=> b!1197446 m!1372137))

(assert (=> b!1197446 m!1372385))

(assert (=> b!1197240 d!342091))

(declare-fun d!342093 () Bool)

(declare-fun lt!410285 () Int)

(assert (=> d!342093 (>= lt!410285 0)))

(declare-fun e!768951 () Int)

(assert (=> d!342093 (= lt!410285 e!768951)))

(declare-fun c!199093 () Bool)

(assert (=> d!342093 (= c!199093 ((_ is Nil!12035) lt!410271))))

(assert (=> d!342093 (= (size!9555 lt!410271) lt!410285)))

(declare-fun b!1197448 () Bool)

(assert (=> b!1197448 (= e!768951 0)))

(declare-fun b!1197449 () Bool)

(assert (=> b!1197449 (= e!768951 (+ 1 (size!9555 (t!112389 lt!410271))))))

(assert (= (and d!342093 c!199093) b!1197448))

(assert (= (and d!342093 (not c!199093)) b!1197449))

(declare-fun m!1372387 () Bool)

(assert (=> b!1197449 m!1372387))

(assert (=> b!1197293 d!342093))

(declare-fun d!342095 () Bool)

(declare-fun lt!410286 () Int)

(assert (=> d!342095 (>= lt!410286 0)))

(declare-fun e!768952 () Int)

(assert (=> d!342095 (= lt!410286 e!768952)))

(declare-fun c!199094 () Bool)

(assert (=> d!342095 (= c!199094 ((_ is Nil!12035) (list!4469 (left!10500 (right!10830 t!4115)))))))

(assert (=> d!342095 (= (size!9555 (list!4469 (left!10500 (right!10830 t!4115)))) lt!410286)))

(declare-fun b!1197450 () Bool)

(assert (=> b!1197450 (= e!768952 0)))

(declare-fun b!1197451 () Bool)

(assert (=> b!1197451 (= e!768952 (+ 1 (size!9555 (t!112389 (list!4469 (left!10500 (right!10830 t!4115)))))))))

(assert (= (and d!342095 c!199094) b!1197450))

(assert (= (and d!342095 (not c!199094)) b!1197451))

(declare-fun m!1372389 () Bool)

(assert (=> b!1197451 m!1372389))

(assert (=> b!1197293 d!342095))

(declare-fun d!342097 () Bool)

(declare-fun lt!410287 () Int)

(assert (=> d!342097 (>= lt!410287 0)))

(declare-fun e!768953 () Int)

(assert (=> d!342097 (= lt!410287 e!768953)))

(declare-fun c!199095 () Bool)

(assert (=> d!342097 (= c!199095 ((_ is Nil!12035) (list!4469 (right!10830 (right!10830 t!4115)))))))

(assert (=> d!342097 (= (size!9555 (list!4469 (right!10830 (right!10830 t!4115)))) lt!410287)))

(declare-fun b!1197452 () Bool)

(assert (=> b!1197452 (= e!768953 0)))

(declare-fun b!1197453 () Bool)

(assert (=> b!1197453 (= e!768953 (+ 1 (size!9555 (t!112389 (list!4469 (right!10830 (right!10830 t!4115)))))))))

(assert (= (and d!342097 c!199095) b!1197452))

(assert (= (and d!342097 (not c!199095)) b!1197453))

(declare-fun m!1372391 () Bool)

(assert (=> b!1197453 m!1372391))

(assert (=> b!1197293 d!342097))

(declare-fun d!342099 () Bool)

(declare-fun lt!410288 () Int)

(assert (=> d!342099 (= lt!410288 (size!9555 (list!4469 (left!10500 (right!10830 t!4115)))))))

(assert (=> d!342099 (= lt!410288 (ite ((_ is Empty!3968) (left!10500 (right!10830 t!4115))) 0 (ite ((_ is Leaf!6077) (left!10500 (right!10830 t!4115))) (csize!8167 (left!10500 (right!10830 t!4115))) (csize!8166 (left!10500 (right!10830 t!4115))))))))

(assert (=> d!342099 (= (size!9554 (left!10500 (right!10830 t!4115))) lt!410288)))

(declare-fun bs!288141 () Bool)

(assert (= bs!288141 d!342099))

(assert (=> bs!288141 m!1371931))

(assert (=> bs!288141 m!1371931))

(assert (=> bs!288141 m!1372125))

(assert (=> d!342025 d!342099))

(declare-fun d!342101 () Bool)

(declare-fun lt!410289 () Int)

(assert (=> d!342101 (= lt!410289 (size!9555 (list!4469 (right!10830 (right!10830 t!4115)))))))

(assert (=> d!342101 (= lt!410289 (ite ((_ is Empty!3968) (right!10830 (right!10830 t!4115))) 0 (ite ((_ is Leaf!6077) (right!10830 (right!10830 t!4115))) (csize!8167 (right!10830 (right!10830 t!4115))) (csize!8166 (right!10830 (right!10830 t!4115))))))))

(assert (=> d!342101 (= (size!9554 (right!10830 (right!10830 t!4115))) lt!410289)))

(declare-fun bs!288142 () Bool)

(assert (= bs!288142 d!342101))

(assert (=> bs!288142 m!1371933))

(assert (=> bs!288142 m!1371933))

(assert (=> bs!288142 m!1372127))

(assert (=> d!342025 d!342101))

(declare-fun d!342103 () Bool)

(assert (=> d!342103 (= (height!561 (left!10500 (left!10500 t!4115))) (ite ((_ is Empty!3968) (left!10500 (left!10500 t!4115))) 0 (ite ((_ is Leaf!6077) (left!10500 (left!10500 t!4115))) 1 (cheight!4179 (left!10500 (left!10500 t!4115))))))))

(assert (=> b!1197257 d!342103))

(declare-fun d!342105 () Bool)

(assert (=> d!342105 (= (height!561 (right!10830 (left!10500 t!4115))) (ite ((_ is Empty!3968) (right!10830 (left!10500 t!4115))) 0 (ite ((_ is Leaf!6077) (right!10830 (left!10500 t!4115))) 1 (cheight!4179 (right!10830 (left!10500 t!4115))))))))

(assert (=> b!1197257 d!342105))

(declare-fun d!342107 () Bool)

(assert (=> d!342107 (= (isEmpty!7250 (list!4469 (left!10500 t!4115))) ((_ is Nil!12035) (list!4469 (left!10500 t!4115))))))

(assert (=> d!341995 d!342107))

(assert (=> d!341995 d!341925))

(declare-fun d!342109 () Bool)

(declare-fun lt!410290 () Int)

(assert (=> d!342109 (= lt!410290 (size!9555 (list!4469 (left!10500 t!4115))))))

(assert (=> d!342109 (= lt!410290 (ite ((_ is Empty!3968) (left!10500 t!4115)) 0 (ite ((_ is Leaf!6077) (left!10500 t!4115)) (csize!8167 (left!10500 t!4115)) (csize!8166 (left!10500 t!4115)))))))

(assert (=> d!342109 (= (size!9554 (left!10500 t!4115)) lt!410290)))

(declare-fun bs!288143 () Bool)

(assert (= bs!288143 d!342109))

(assert (=> bs!288143 m!1371903))

(assert (=> bs!288143 m!1371903))

(assert (=> bs!288143 m!1371905))

(assert (=> d!341995 d!342109))

(declare-fun d!342111 () Bool)

(declare-fun lt!410291 () Bool)

(assert (=> d!342111 (= lt!410291 (isEmpty!7250 (list!4469 (right!10830 (left!10500 t!4115)))))))

(assert (=> d!342111 (= lt!410291 (= (size!9554 (right!10830 (left!10500 t!4115))) 0))))

(assert (=> d!342111 (= (isEmpty!7248 (right!10830 (left!10500 t!4115))) lt!410291)))

(declare-fun bs!288144 () Bool)

(assert (= bs!288144 d!342111))

(assert (=> bs!288144 m!1371923))

(assert (=> bs!288144 m!1371923))

(declare-fun m!1372393 () Bool)

(assert (=> bs!288144 m!1372393))

(assert (=> bs!288144 m!1372065))

(assert (=> b!1197259 d!342111))

(declare-fun d!342113 () Bool)

(assert (=> d!342113 (= (isEmpty!7250 (list!4469 (right!10830 t!4115))) ((_ is Nil!12035) (list!4469 (right!10830 t!4115))))))

(assert (=> d!341985 d!342113))

(assert (=> d!341985 d!341933))

(declare-fun d!342115 () Bool)

(declare-fun lt!410292 () Int)

(assert (=> d!342115 (= lt!410292 (size!9555 (list!4469 (right!10830 t!4115))))))

(assert (=> d!342115 (= lt!410292 (ite ((_ is Empty!3968) (right!10830 t!4115)) 0 (ite ((_ is Leaf!6077) (right!10830 t!4115)) (csize!8167 (right!10830 t!4115)) (csize!8166 (right!10830 t!4115)))))))

(assert (=> d!342115 (= (size!9554 (right!10830 t!4115)) lt!410292)))

(declare-fun bs!288145 () Bool)

(assert (= bs!288145 d!342115))

(assert (=> bs!288145 m!1371907))

(assert (=> bs!288145 m!1371907))

(assert (=> bs!288145 m!1371909))

(assert (=> d!341985 d!342115))

(declare-fun d!342117 () Bool)

(declare-fun lt!410293 () Int)

(assert (=> d!342117 (>= lt!410293 0)))

(declare-fun e!768954 () Int)

(assert (=> d!342117 (= lt!410293 e!768954)))

(declare-fun c!199096 () Bool)

(assert (=> d!342117 (= c!199096 ((_ is Nil!12035) (list!4470 (xs!6675 t!4115))))))

(assert (=> d!342117 (= (size!9555 (list!4470 (xs!6675 t!4115))) lt!410293)))

(declare-fun b!1197454 () Bool)

(assert (=> b!1197454 (= e!768954 0)))

(declare-fun b!1197455 () Bool)

(assert (=> b!1197455 (= e!768954 (+ 1 (size!9555 (t!112389 (list!4470 (xs!6675 t!4115))))))))

(assert (= (and d!342117 c!199096) b!1197454))

(assert (= (and d!342117 (not c!199096)) b!1197455))

(declare-fun m!1372395 () Bool)

(assert (=> b!1197455 m!1372395))

(assert (=> b!1197303 d!342117))

(declare-fun d!342119 () Bool)

(assert (=> d!342119 (= (list!4470 (xs!6675 t!4115)) (innerList!4028 (xs!6675 t!4115)))))

(assert (=> b!1197303 d!342119))

(declare-fun d!342121 () Bool)

(assert (=> d!342121 (= (inv!16072 (xs!6675 (left!10500 (right!10830 t!4115)))) (<= (size!9555 (innerList!4028 (xs!6675 (left!10500 (right!10830 t!4115))))) 2147483647))))

(declare-fun bs!288146 () Bool)

(assert (= bs!288146 d!342121))

(declare-fun m!1372397 () Bool)

(assert (=> bs!288146 m!1372397))

(assert (=> b!1197330 d!342121))

(declare-fun d!342123 () Bool)

(declare-fun lt!410294 () Int)

(assert (=> d!342123 (>= lt!410294 0)))

(declare-fun e!768955 () Int)

(assert (=> d!342123 (= lt!410294 e!768955)))

(declare-fun c!199097 () Bool)

(assert (=> d!342123 (= c!199097 ((_ is Nil!12035) (list!4470 (xs!6675 (left!10500 t!4115)))))))

(assert (=> d!342123 (= (size!9555 (list!4470 (xs!6675 (left!10500 t!4115)))) lt!410294)))

(declare-fun b!1197456 () Bool)

(assert (=> b!1197456 (= e!768955 0)))

(declare-fun b!1197457 () Bool)

(assert (=> b!1197457 (= e!768955 (+ 1 (size!9555 (t!112389 (list!4470 (xs!6675 (left!10500 t!4115)))))))))

(assert (= (and d!342123 c!199097) b!1197456))

(assert (= (and d!342123 (not c!199097)) b!1197457))

(declare-fun m!1372399 () Bool)

(assert (=> b!1197457 m!1372399))

(assert (=> d!341991 d!342123))

(assert (=> d!341991 d!342015))

(assert (=> b!1197233 d!342119))

(declare-fun d!342125 () Bool)

(declare-fun lt!410295 () Int)

(assert (=> d!342125 (>= lt!410295 0)))

(declare-fun e!768956 () Int)

(assert (=> d!342125 (= lt!410295 e!768956)))

(declare-fun c!199098 () Bool)

(assert (=> d!342125 (= c!199098 ((_ is Nil!12035) (innerList!4028 (xs!6675 (right!10830 t!4115)))))))

(assert (=> d!342125 (= (size!9555 (innerList!4028 (xs!6675 (right!10830 t!4115)))) lt!410295)))

(declare-fun b!1197458 () Bool)

(assert (=> b!1197458 (= e!768956 0)))

(declare-fun b!1197459 () Bool)

(assert (=> b!1197459 (= e!768956 (+ 1 (size!9555 (t!112389 (innerList!4028 (xs!6675 (right!10830 t!4115)))))))))

(assert (= (and d!342125 c!199098) b!1197458))

(assert (= (and d!342125 (not c!199098)) b!1197459))

(declare-fun m!1372401 () Bool)

(assert (=> b!1197459 m!1372401))

(assert (=> d!341975 d!342125))

(declare-fun d!342127 () Bool)

(declare-fun c!199099 () Bool)

(assert (=> d!342127 (= c!199099 ((_ is Node!3968) (left!10500 (left!10500 (left!10500 t!4115)))))))

(declare-fun e!768957 () Bool)

(assert (=> d!342127 (= (inv!16071 (left!10500 (left!10500 (left!10500 t!4115)))) e!768957)))

(declare-fun b!1197460 () Bool)

(assert (=> b!1197460 (= e!768957 (inv!16073 (left!10500 (left!10500 (left!10500 t!4115)))))))

(declare-fun b!1197461 () Bool)

(declare-fun e!768958 () Bool)

(assert (=> b!1197461 (= e!768957 e!768958)))

(declare-fun res!540408 () Bool)

(assert (=> b!1197461 (= res!540408 (not ((_ is Leaf!6077) (left!10500 (left!10500 (left!10500 t!4115))))))))

(assert (=> b!1197461 (=> res!540408 e!768958)))

(declare-fun b!1197462 () Bool)

(assert (=> b!1197462 (= e!768958 (inv!16074 (left!10500 (left!10500 (left!10500 t!4115)))))))

(assert (= (and d!342127 c!199099) b!1197460))

(assert (= (and d!342127 (not c!199099)) b!1197461))

(assert (= (and b!1197461 (not res!540408)) b!1197462))

(declare-fun m!1372403 () Bool)

(assert (=> b!1197460 m!1372403))

(declare-fun m!1372405 () Bool)

(assert (=> b!1197462 m!1372405))

(assert (=> b!1197320 d!342127))

(declare-fun d!342129 () Bool)

(declare-fun c!199100 () Bool)

(assert (=> d!342129 (= c!199100 ((_ is Node!3968) (right!10830 (left!10500 (left!10500 t!4115)))))))

(declare-fun e!768959 () Bool)

(assert (=> d!342129 (= (inv!16071 (right!10830 (left!10500 (left!10500 t!4115)))) e!768959)))

(declare-fun b!1197463 () Bool)

(assert (=> b!1197463 (= e!768959 (inv!16073 (right!10830 (left!10500 (left!10500 t!4115)))))))

(declare-fun b!1197464 () Bool)

(declare-fun e!768960 () Bool)

(assert (=> b!1197464 (= e!768959 e!768960)))

(declare-fun res!540409 () Bool)

(assert (=> b!1197464 (= res!540409 (not ((_ is Leaf!6077) (right!10830 (left!10500 (left!10500 t!4115))))))))

(assert (=> b!1197464 (=> res!540409 e!768960)))

(declare-fun b!1197465 () Bool)

(assert (=> b!1197465 (= e!768960 (inv!16074 (right!10830 (left!10500 (left!10500 t!4115)))))))

(assert (= (and d!342129 c!199100) b!1197463))

(assert (= (and d!342129 (not c!199100)) b!1197464))

(assert (= (and b!1197464 (not res!540409)) b!1197465))

(declare-fun m!1372407 () Bool)

(assert (=> b!1197463 m!1372407))

(declare-fun m!1372409 () Bool)

(assert (=> b!1197465 m!1372409))

(assert (=> b!1197320 d!342129))

(declare-fun d!342131 () Bool)

(declare-fun lt!410296 () Bool)

(assert (=> d!342131 (= lt!410296 (isEmpty!7250 (list!4469 (left!10500 (right!10830 t!4115)))))))

(assert (=> d!342131 (= lt!410296 (= (size!9554 (left!10500 (right!10830 t!4115))) 0))))

(assert (=> d!342131 (= (isEmpty!7248 (left!10500 (right!10830 t!4115))) lt!410296)))

(declare-fun bs!288147 () Bool)

(assert (= bs!288147 d!342131))

(assert (=> bs!288147 m!1371931))

(assert (=> bs!288147 m!1371931))

(declare-fun m!1372411 () Bool)

(assert (=> bs!288147 m!1372411))

(assert (=> bs!288147 m!1372177))

(assert (=> b!1197274 d!342131))

(declare-fun d!342133 () Bool)

(declare-fun c!199103 () Bool)

(assert (=> d!342133 (= c!199103 ((_ is Nil!12035) lt!410271))))

(declare-fun e!768963 () (InoxSet T!21726))

(assert (=> d!342133 (= (content!1681 lt!410271) e!768963)))

(declare-fun b!1197470 () Bool)

(assert (=> b!1197470 (= e!768963 ((as const (Array T!21726 Bool)) false))))

(declare-fun b!1197471 () Bool)

(assert (=> b!1197471 (= e!768963 ((_ map or) (store ((as const (Array T!21726 Bool)) false) (h!17436 lt!410271) true) (content!1681 (t!112389 lt!410271))))))

(assert (= (and d!342133 c!199103) b!1197470))

(assert (= (and d!342133 (not c!199103)) b!1197471))

(declare-fun m!1372413 () Bool)

(assert (=> b!1197471 m!1372413))

(declare-fun m!1372415 () Bool)

(assert (=> b!1197471 m!1372415))

(assert (=> d!342007 d!342133))

(declare-fun d!342135 () Bool)

(declare-fun c!199104 () Bool)

(assert (=> d!342135 (= c!199104 ((_ is Nil!12035) (list!4469 (left!10500 (right!10830 t!4115)))))))

(declare-fun e!768964 () (InoxSet T!21726))

(assert (=> d!342135 (= (content!1681 (list!4469 (left!10500 (right!10830 t!4115)))) e!768964)))

(declare-fun b!1197472 () Bool)

(assert (=> b!1197472 (= e!768964 ((as const (Array T!21726 Bool)) false))))

(declare-fun b!1197473 () Bool)

(assert (=> b!1197473 (= e!768964 ((_ map or) (store ((as const (Array T!21726 Bool)) false) (h!17436 (list!4469 (left!10500 (right!10830 t!4115)))) true) (content!1681 (t!112389 (list!4469 (left!10500 (right!10830 t!4115)))))))))

(assert (= (and d!342135 c!199104) b!1197472))

(assert (= (and d!342135 (not c!199104)) b!1197473))

(declare-fun m!1372417 () Bool)

(assert (=> b!1197473 m!1372417))

(declare-fun m!1372419 () Bool)

(assert (=> b!1197473 m!1372419))

(assert (=> d!342007 d!342135))

(declare-fun d!342137 () Bool)

(declare-fun c!199105 () Bool)

(assert (=> d!342137 (= c!199105 ((_ is Nil!12035) (list!4469 (right!10830 (right!10830 t!4115)))))))

(declare-fun e!768965 () (InoxSet T!21726))

(assert (=> d!342137 (= (content!1681 (list!4469 (right!10830 (right!10830 t!4115)))) e!768965)))

(declare-fun b!1197474 () Bool)

(assert (=> b!1197474 (= e!768965 ((as const (Array T!21726 Bool)) false))))

(declare-fun b!1197475 () Bool)

(assert (=> b!1197475 (= e!768965 ((_ map or) (store ((as const (Array T!21726 Bool)) false) (h!17436 (list!4469 (right!10830 (right!10830 t!4115)))) true) (content!1681 (t!112389 (list!4469 (right!10830 (right!10830 t!4115)))))))))

(assert (= (and d!342137 c!199105) b!1197474))

(assert (= (and d!342137 (not c!199105)) b!1197475))

(declare-fun m!1372421 () Bool)

(assert (=> b!1197475 m!1372421))

(declare-fun m!1372423 () Bool)

(assert (=> b!1197475 m!1372423))

(assert (=> d!342007 d!342137))

(declare-fun d!342139 () Bool)

(declare-fun lt!410297 () Int)

(assert (=> d!342139 (>= lt!410297 0)))

(declare-fun e!768966 () Int)

(assert (=> d!342139 (= lt!410297 e!768966)))

(declare-fun c!199106 () Bool)

(assert (=> d!342139 (= c!199106 ((_ is Nil!12035) (t!112389 (innerList!4028 (xs!6675 t!4115)))))))

(assert (=> d!342139 (= (size!9555 (t!112389 (innerList!4028 (xs!6675 t!4115)))) lt!410297)))

(declare-fun b!1197476 () Bool)

(assert (=> b!1197476 (= e!768966 0)))

(declare-fun b!1197477 () Bool)

(assert (=> b!1197477 (= e!768966 (+ 1 (size!9555 (t!112389 (t!112389 (innerList!4028 (xs!6675 t!4115)))))))))

(assert (= (and d!342139 c!199106) b!1197476))

(assert (= (and d!342139 (not c!199106)) b!1197477))

(declare-fun m!1372425 () Bool)

(assert (=> b!1197477 m!1372425))

(assert (=> b!1197254 d!342139))

(assert (=> d!342013 d!342117))

(assert (=> d!342013 d!342119))

(assert (=> b!1197267 d!342123))

(assert (=> b!1197267 d!342015))

(declare-fun b!1197481 () Bool)

(declare-fun e!768967 () Bool)

(declare-fun lt!410298 () List!12059)

(assert (=> b!1197481 (= e!768967 (or (not (= (list!4469 (right!10830 (right!10830 (left!10500 t!4115)))) Nil!12035)) (= lt!410298 (list!4469 (left!10500 (right!10830 (left!10500 t!4115)))))))))

(declare-fun b!1197479 () Bool)

(declare-fun e!768968 () List!12059)

(assert (=> b!1197479 (= e!768968 (Cons!12035 (h!17436 (list!4469 (left!10500 (right!10830 (left!10500 t!4115))))) (++!3069 (t!112389 (list!4469 (left!10500 (right!10830 (left!10500 t!4115))))) (list!4469 (right!10830 (right!10830 (left!10500 t!4115)))))))))

(declare-fun d!342141 () Bool)

(assert (=> d!342141 e!768967))

(declare-fun res!540410 () Bool)

(assert (=> d!342141 (=> (not res!540410) (not e!768967))))

(assert (=> d!342141 (= res!540410 (= (content!1681 lt!410298) ((_ map or) (content!1681 (list!4469 (left!10500 (right!10830 (left!10500 t!4115))))) (content!1681 (list!4469 (right!10830 (right!10830 (left!10500 t!4115))))))))))

(assert (=> d!342141 (= lt!410298 e!768968)))

(declare-fun c!199107 () Bool)

(assert (=> d!342141 (= c!199107 ((_ is Nil!12035) (list!4469 (left!10500 (right!10830 (left!10500 t!4115))))))))

(assert (=> d!342141 (= (++!3069 (list!4469 (left!10500 (right!10830 (left!10500 t!4115)))) (list!4469 (right!10830 (right!10830 (left!10500 t!4115))))) lt!410298)))

(declare-fun b!1197478 () Bool)

(assert (=> b!1197478 (= e!768968 (list!4469 (right!10830 (right!10830 (left!10500 t!4115)))))))

(declare-fun b!1197480 () Bool)

(declare-fun res!540411 () Bool)

(assert (=> b!1197480 (=> (not res!540411) (not e!768967))))

(assert (=> b!1197480 (= res!540411 (= (size!9555 lt!410298) (+ (size!9555 (list!4469 (left!10500 (right!10830 (left!10500 t!4115))))) (size!9555 (list!4469 (right!10830 (right!10830 (left!10500 t!4115))))))))))

(assert (= (and d!342141 c!199107) b!1197478))

(assert (= (and d!342141 (not c!199107)) b!1197479))

(assert (= (and d!342141 res!540410) b!1197480))

(assert (= (and b!1197480 res!540411) b!1197481))

(assert (=> b!1197479 m!1372173))

(declare-fun m!1372427 () Bool)

(assert (=> b!1197479 m!1372427))

(declare-fun m!1372429 () Bool)

(assert (=> d!342141 m!1372429))

(assert (=> d!342141 m!1372171))

(declare-fun m!1372431 () Bool)

(assert (=> d!342141 m!1372431))

(assert (=> d!342141 m!1372173))

(declare-fun m!1372433 () Bool)

(assert (=> d!342141 m!1372433))

(declare-fun m!1372435 () Bool)

(assert (=> b!1197480 m!1372435))

(assert (=> b!1197480 m!1372171))

(declare-fun m!1372437 () Bool)

(assert (=> b!1197480 m!1372437))

(assert (=> b!1197480 m!1372173))

(declare-fun m!1372439 () Bool)

(assert (=> b!1197480 m!1372439))

(assert (=> b!1197316 d!342141))

(declare-fun b!1197484 () Bool)

(declare-fun e!768970 () List!12059)

(assert (=> b!1197484 (= e!768970 (list!4470 (xs!6675 (left!10500 (right!10830 (left!10500 t!4115))))))))

(declare-fun b!1197485 () Bool)

(assert (=> b!1197485 (= e!768970 (++!3069 (list!4469 (left!10500 (left!10500 (right!10830 (left!10500 t!4115))))) (list!4469 (right!10830 (left!10500 (right!10830 (left!10500 t!4115)))))))))

(declare-fun d!342143 () Bool)

(declare-fun c!199108 () Bool)

(assert (=> d!342143 (= c!199108 ((_ is Empty!3968) (left!10500 (right!10830 (left!10500 t!4115)))))))

(declare-fun e!768969 () List!12059)

(assert (=> d!342143 (= (list!4469 (left!10500 (right!10830 (left!10500 t!4115)))) e!768969)))

(declare-fun b!1197482 () Bool)

(assert (=> b!1197482 (= e!768969 Nil!12035)))

(declare-fun b!1197483 () Bool)

(assert (=> b!1197483 (= e!768969 e!768970)))

(declare-fun c!199109 () Bool)

(assert (=> b!1197483 (= c!199109 ((_ is Leaf!6077) (left!10500 (right!10830 (left!10500 t!4115)))))))

(assert (= (and d!342143 c!199108) b!1197482))

(assert (= (and d!342143 (not c!199108)) b!1197483))

(assert (= (and b!1197483 c!199109) b!1197484))

(assert (= (and b!1197483 (not c!199109)) b!1197485))

(declare-fun m!1372441 () Bool)

(assert (=> b!1197484 m!1372441))

(declare-fun m!1372443 () Bool)

(assert (=> b!1197485 m!1372443))

(declare-fun m!1372445 () Bool)

(assert (=> b!1197485 m!1372445))

(assert (=> b!1197485 m!1372443))

(assert (=> b!1197485 m!1372445))

(declare-fun m!1372447 () Bool)

(assert (=> b!1197485 m!1372447))

(assert (=> b!1197316 d!342143))

(declare-fun b!1197488 () Bool)

(declare-fun e!768972 () List!12059)

(assert (=> b!1197488 (= e!768972 (list!4470 (xs!6675 (right!10830 (right!10830 (left!10500 t!4115))))))))

(declare-fun b!1197489 () Bool)

(assert (=> b!1197489 (= e!768972 (++!3069 (list!4469 (left!10500 (right!10830 (right!10830 (left!10500 t!4115))))) (list!4469 (right!10830 (right!10830 (right!10830 (left!10500 t!4115)))))))))

(declare-fun d!342145 () Bool)

(declare-fun c!199110 () Bool)

(assert (=> d!342145 (= c!199110 ((_ is Empty!3968) (right!10830 (right!10830 (left!10500 t!4115)))))))

(declare-fun e!768971 () List!12059)

(assert (=> d!342145 (= (list!4469 (right!10830 (right!10830 (left!10500 t!4115)))) e!768971)))

(declare-fun b!1197486 () Bool)

(assert (=> b!1197486 (= e!768971 Nil!12035)))

(declare-fun b!1197487 () Bool)

(assert (=> b!1197487 (= e!768971 e!768972)))

(declare-fun c!199111 () Bool)

(assert (=> b!1197487 (= c!199111 ((_ is Leaf!6077) (right!10830 (right!10830 (left!10500 t!4115)))))))

(assert (= (and d!342145 c!199110) b!1197486))

(assert (= (and d!342145 (not c!199110)) b!1197487))

(assert (= (and b!1197487 c!199111) b!1197488))

(assert (= (and b!1197487 (not c!199111)) b!1197489))

(declare-fun m!1372449 () Bool)

(assert (=> b!1197488 m!1372449))

(declare-fun m!1372451 () Bool)

(assert (=> b!1197489 m!1372451))

(declare-fun m!1372453 () Bool)

(assert (=> b!1197489 m!1372453))

(assert (=> b!1197489 m!1372451))

(assert (=> b!1197489 m!1372453))

(declare-fun m!1372455 () Bool)

(assert (=> b!1197489 m!1372455))

(assert (=> b!1197316 d!342145))

(declare-fun d!342147 () Bool)

(assert (=> d!342147 (= (inv!16072 (xs!6675 (right!10830 (left!10500 t!4115)))) (<= (size!9555 (innerList!4028 (xs!6675 (right!10830 (left!10500 t!4115))))) 2147483647))))

(declare-fun bs!288148 () Bool)

(assert (= bs!288148 d!342147))

(declare-fun m!1372457 () Bool)

(assert (=> bs!288148 m!1372457))

(assert (=> b!1197324 d!342147))

(declare-fun d!342149 () Bool)

(assert (=> d!342149 (= (list!4470 (xs!6675 (left!10500 (left!10500 t!4115)))) (innerList!4028 (xs!6675 (left!10500 (left!10500 t!4115)))))))

(assert (=> b!1197311 d!342149))

(declare-fun b!1197490 () Bool)

(declare-fun res!540417 () Bool)

(declare-fun e!768974 () Bool)

(assert (=> b!1197490 (=> (not res!540417) (not e!768974))))

(assert (=> b!1197490 (= res!540417 (<= (- (height!561 (left!10500 (left!10500 (left!10500 t!4115)))) (height!561 (right!10830 (left!10500 (left!10500 t!4115))))) 1))))

(declare-fun b!1197491 () Bool)

(declare-fun e!768973 () Bool)

(assert (=> b!1197491 (= e!768973 e!768974)))

(declare-fun res!540415 () Bool)

(assert (=> b!1197491 (=> (not res!540415) (not e!768974))))

(assert (=> b!1197491 (= res!540415 (<= (- 1) (- (height!561 (left!10500 (left!10500 (left!10500 t!4115)))) (height!561 (right!10830 (left!10500 (left!10500 t!4115)))))))))

(declare-fun b!1197493 () Bool)

(declare-fun res!540413 () Bool)

(assert (=> b!1197493 (=> (not res!540413) (not e!768974))))

(assert (=> b!1197493 (= res!540413 (isBalanced!1153 (left!10500 (left!10500 (left!10500 t!4115)))))))

(declare-fun b!1197494 () Bool)

(declare-fun res!540414 () Bool)

(assert (=> b!1197494 (=> (not res!540414) (not e!768974))))

(assert (=> b!1197494 (= res!540414 (isBalanced!1153 (right!10830 (left!10500 (left!10500 t!4115)))))))

(declare-fun b!1197495 () Bool)

(declare-fun res!540416 () Bool)

(assert (=> b!1197495 (=> (not res!540416) (not e!768974))))

(assert (=> b!1197495 (= res!540416 (not (isEmpty!7248 (left!10500 (left!10500 (left!10500 t!4115))))))))

(declare-fun b!1197492 () Bool)

(assert (=> b!1197492 (= e!768974 (not (isEmpty!7248 (right!10830 (left!10500 (left!10500 t!4115))))))))

(declare-fun d!342151 () Bool)

(declare-fun res!540412 () Bool)

(assert (=> d!342151 (=> res!540412 e!768973)))

(assert (=> d!342151 (= res!540412 (not ((_ is Node!3968) (left!10500 (left!10500 t!4115)))))))

(assert (=> d!342151 (= (isBalanced!1153 (left!10500 (left!10500 t!4115))) e!768973)))

(assert (= (and d!342151 (not res!540412)) b!1197491))

(assert (= (and b!1197491 res!540415) b!1197490))

(assert (= (and b!1197490 res!540417) b!1197493))

(assert (= (and b!1197493 res!540413) b!1197494))

(assert (= (and b!1197494 res!540414) b!1197495))

(assert (= (and b!1197495 res!540416) b!1197492))

(declare-fun m!1372459 () Bool)

(assert (=> b!1197493 m!1372459))

(declare-fun m!1372461 () Bool)

(assert (=> b!1197492 m!1372461))

(declare-fun m!1372463 () Bool)

(assert (=> b!1197491 m!1372463))

(declare-fun m!1372465 () Bool)

(assert (=> b!1197491 m!1372465))

(declare-fun m!1372467 () Bool)

(assert (=> b!1197495 m!1372467))

(declare-fun m!1372469 () Bool)

(assert (=> b!1197494 m!1372469))

(assert (=> b!1197490 m!1372463))

(assert (=> b!1197490 m!1372465))

(assert (=> b!1197260 d!342151))

(declare-fun d!342153 () Bool)

(assert (=> d!342153 (= (height!561 (left!10500 (right!10830 t!4115))) (ite ((_ is Empty!3968) (left!10500 (right!10830 t!4115))) 0 (ite ((_ is Leaf!6077) (left!10500 (right!10830 t!4115))) 1 (cheight!4179 (left!10500 (right!10830 t!4115))))))))

(assert (=> b!1197270 d!342153))

(declare-fun d!342155 () Bool)

(assert (=> d!342155 (= (height!561 (right!10830 (right!10830 t!4115))) (ite ((_ is Empty!3968) (right!10830 (right!10830 t!4115))) 0 (ite ((_ is Leaf!6077) (right!10830 (right!10830 t!4115))) 1 (cheight!4179 (right!10830 (right!10830 t!4115))))))))

(assert (=> b!1197270 d!342155))

(declare-fun d!342157 () Bool)

(declare-fun lt!410299 () Bool)

(assert (=> d!342157 (= lt!410299 (isEmpty!7250 (list!4469 (left!10500 (left!10500 t!4115)))))))

(assert (=> d!342157 (= lt!410299 (= (size!9554 (left!10500 (left!10500 t!4115))) 0))))

(assert (=> d!342157 (= (isEmpty!7248 (left!10500 (left!10500 t!4115))) lt!410299)))

(declare-fun bs!288149 () Bool)

(assert (= bs!288149 d!342157))

(assert (=> bs!288149 m!1371921))

(assert (=> bs!288149 m!1371921))

(declare-fun m!1372471 () Bool)

(assert (=> bs!288149 m!1372471))

(assert (=> bs!288149 m!1372063))

(assert (=> b!1197262 d!342157))

(declare-fun d!342159 () Bool)

(declare-fun c!199112 () Bool)

(assert (=> d!342159 (= c!199112 ((_ is Node!3968) (left!10500 (right!10830 (right!10830 t!4115)))))))

(declare-fun e!768975 () Bool)

(assert (=> d!342159 (= (inv!16071 (left!10500 (right!10830 (right!10830 t!4115)))) e!768975)))

(declare-fun b!1197496 () Bool)

(assert (=> b!1197496 (= e!768975 (inv!16073 (left!10500 (right!10830 (right!10830 t!4115)))))))

(declare-fun b!1197497 () Bool)

(declare-fun e!768976 () Bool)

(assert (=> b!1197497 (= e!768975 e!768976)))

(declare-fun res!540418 () Bool)

(assert (=> b!1197497 (= res!540418 (not ((_ is Leaf!6077) (left!10500 (right!10830 (right!10830 t!4115))))))))

(assert (=> b!1197497 (=> res!540418 e!768976)))

(declare-fun b!1197498 () Bool)

(assert (=> b!1197498 (= e!768976 (inv!16074 (left!10500 (right!10830 (right!10830 t!4115)))))))

(assert (= (and d!342159 c!199112) b!1197496))

(assert (= (and d!342159 (not c!199112)) b!1197497))

(assert (= (and b!1197497 (not res!540418)) b!1197498))

(declare-fun m!1372473 () Bool)

(assert (=> b!1197496 m!1372473))

(declare-fun m!1372475 () Bool)

(assert (=> b!1197498 m!1372475))

(assert (=> b!1197332 d!342159))

(declare-fun d!342161 () Bool)

(declare-fun c!199113 () Bool)

(assert (=> d!342161 (= c!199113 ((_ is Node!3968) (right!10830 (right!10830 (right!10830 t!4115)))))))

(declare-fun e!768977 () Bool)

(assert (=> d!342161 (= (inv!16071 (right!10830 (right!10830 (right!10830 t!4115)))) e!768977)))

(declare-fun b!1197499 () Bool)

(assert (=> b!1197499 (= e!768977 (inv!16073 (right!10830 (right!10830 (right!10830 t!4115)))))))

(declare-fun b!1197500 () Bool)

(declare-fun e!768978 () Bool)

(assert (=> b!1197500 (= e!768977 e!768978)))

(declare-fun res!540419 () Bool)

(assert (=> b!1197500 (= res!540419 (not ((_ is Leaf!6077) (right!10830 (right!10830 (right!10830 t!4115))))))))

(assert (=> b!1197500 (=> res!540419 e!768978)))

(declare-fun b!1197501 () Bool)

(assert (=> b!1197501 (= e!768978 (inv!16074 (right!10830 (right!10830 (right!10830 t!4115)))))))

(assert (= (and d!342161 c!199113) b!1197499))

(assert (= (and d!342161 (not c!199113)) b!1197500))

(assert (= (and b!1197500 (not res!540419)) b!1197501))

(declare-fun m!1372477 () Bool)

(assert (=> b!1197499 m!1372477))

(declare-fun m!1372479 () Bool)

(assert (=> b!1197501 m!1372479))

(assert (=> b!1197332 d!342161))

(declare-fun b!1197502 () Bool)

(declare-fun res!540425 () Bool)

(declare-fun e!768980 () Bool)

(assert (=> b!1197502 (=> (not res!540425) (not e!768980))))

(assert (=> b!1197502 (= res!540425 (<= (- (height!561 (left!10500 (left!10500 (right!10830 t!4115)))) (height!561 (right!10830 (left!10500 (right!10830 t!4115))))) 1))))

(declare-fun b!1197503 () Bool)

(declare-fun e!768979 () Bool)

(assert (=> b!1197503 (= e!768979 e!768980)))

(declare-fun res!540423 () Bool)

(assert (=> b!1197503 (=> (not res!540423) (not e!768980))))

(assert (=> b!1197503 (= res!540423 (<= (- 1) (- (height!561 (left!10500 (left!10500 (right!10830 t!4115)))) (height!561 (right!10830 (left!10500 (right!10830 t!4115)))))))))

(declare-fun b!1197505 () Bool)

(declare-fun res!540421 () Bool)

(assert (=> b!1197505 (=> (not res!540421) (not e!768980))))

(assert (=> b!1197505 (= res!540421 (isBalanced!1153 (left!10500 (left!10500 (right!10830 t!4115)))))))

(declare-fun b!1197506 () Bool)

(declare-fun res!540422 () Bool)

(assert (=> b!1197506 (=> (not res!540422) (not e!768980))))

(assert (=> b!1197506 (= res!540422 (isBalanced!1153 (right!10830 (left!10500 (right!10830 t!4115)))))))

(declare-fun b!1197507 () Bool)

(declare-fun res!540424 () Bool)

(assert (=> b!1197507 (=> (not res!540424) (not e!768980))))

(assert (=> b!1197507 (= res!540424 (not (isEmpty!7248 (left!10500 (left!10500 (right!10830 t!4115))))))))

(declare-fun b!1197504 () Bool)

(assert (=> b!1197504 (= e!768980 (not (isEmpty!7248 (right!10830 (left!10500 (right!10830 t!4115))))))))

(declare-fun d!342163 () Bool)

(declare-fun res!540420 () Bool)

(assert (=> d!342163 (=> res!540420 e!768979)))

(assert (=> d!342163 (= res!540420 (not ((_ is Node!3968) (left!10500 (right!10830 t!4115)))))))

(assert (=> d!342163 (= (isBalanced!1153 (left!10500 (right!10830 t!4115))) e!768979)))

(assert (= (and d!342163 (not res!540420)) b!1197503))

(assert (= (and b!1197503 res!540423) b!1197502))

(assert (= (and b!1197502 res!540425) b!1197505))

(assert (= (and b!1197505 res!540421) b!1197506))

(assert (= (and b!1197506 res!540422) b!1197507))

(assert (= (and b!1197507 res!540424) b!1197504))

(declare-fun m!1372481 () Bool)

(assert (=> b!1197505 m!1372481))

(declare-fun m!1372483 () Bool)

(assert (=> b!1197504 m!1372483))

(declare-fun m!1372485 () Bool)

(assert (=> b!1197503 m!1372485))

(declare-fun m!1372487 () Bool)

(assert (=> b!1197503 m!1372487))

(declare-fun m!1372489 () Bool)

(assert (=> b!1197507 m!1372489))

(declare-fun m!1372491 () Bool)

(assert (=> b!1197506 m!1372491))

(assert (=> b!1197502 m!1372485))

(assert (=> b!1197502 m!1372487))

(assert (=> b!1197272 d!342163))

(declare-fun b!1197511 () Bool)

(declare-fun e!768981 () Bool)

(declare-fun lt!410300 () List!12059)

(assert (=> b!1197511 (= e!768981 (or (not (= (list!4469 (right!10830 (left!10500 t!4115))) Nil!12035)) (= lt!410300 (t!112389 (list!4469 (left!10500 (left!10500 t!4115)))))))))

(declare-fun b!1197509 () Bool)

(declare-fun e!768982 () List!12059)

(assert (=> b!1197509 (= e!768982 (Cons!12035 (h!17436 (t!112389 (list!4469 (left!10500 (left!10500 t!4115))))) (++!3069 (t!112389 (t!112389 (list!4469 (left!10500 (left!10500 t!4115))))) (list!4469 (right!10830 (left!10500 t!4115))))))))

(declare-fun d!342165 () Bool)

(assert (=> d!342165 e!768981))

(declare-fun res!540426 () Bool)

(assert (=> d!342165 (=> (not res!540426) (not e!768981))))

(assert (=> d!342165 (= res!540426 (= (content!1681 lt!410300) ((_ map or) (content!1681 (t!112389 (list!4469 (left!10500 (left!10500 t!4115))))) (content!1681 (list!4469 (right!10830 (left!10500 t!4115)))))))))

(assert (=> d!342165 (= lt!410300 e!768982)))

(declare-fun c!199114 () Bool)

(assert (=> d!342165 (= c!199114 ((_ is Nil!12035) (t!112389 (list!4469 (left!10500 (left!10500 t!4115))))))))

(assert (=> d!342165 (= (++!3069 (t!112389 (list!4469 (left!10500 (left!10500 t!4115)))) (list!4469 (right!10830 (left!10500 t!4115)))) lt!410300)))

(declare-fun b!1197508 () Bool)

(assert (=> b!1197508 (= e!768982 (list!4469 (right!10830 (left!10500 t!4115))))))

(declare-fun b!1197510 () Bool)

(declare-fun res!540427 () Bool)

(assert (=> b!1197510 (=> (not res!540427) (not e!768981))))

(assert (=> b!1197510 (= res!540427 (= (size!9555 lt!410300) (+ (size!9555 (t!112389 (list!4469 (left!10500 (left!10500 t!4115))))) (size!9555 (list!4469 (right!10830 (left!10500 t!4115)))))))))

(assert (= (and d!342165 c!199114) b!1197508))

(assert (= (and d!342165 (not c!199114)) b!1197509))

(assert (= (and d!342165 res!540426) b!1197510))

(assert (= (and b!1197510 res!540427) b!1197511))

(assert (=> b!1197509 m!1371923))

(declare-fun m!1372493 () Bool)

(assert (=> b!1197509 m!1372493))

(declare-fun m!1372495 () Bool)

(assert (=> d!342165 m!1372495))

(declare-fun m!1372497 () Bool)

(assert (=> d!342165 m!1372497))

(assert (=> d!342165 m!1371923))

(assert (=> d!342165 m!1372153))

(declare-fun m!1372499 () Bool)

(assert (=> b!1197510 m!1372499))

(declare-fun m!1372501 () Bool)

(assert (=> b!1197510 m!1372501))

(assert (=> b!1197510 m!1371923))

(assert (=> b!1197510 m!1372159))

(assert (=> b!1197306 d!342165))

(declare-fun d!342167 () Bool)

(assert (=> d!342167 (= (inv!16072 (xs!6675 (left!10500 (left!10500 t!4115)))) (<= (size!9555 (innerList!4028 (xs!6675 (left!10500 (left!10500 t!4115))))) 2147483647))))

(declare-fun bs!288150 () Bool)

(assert (= bs!288150 d!342167))

(declare-fun m!1372503 () Bool)

(assert (=> bs!288150 m!1372503))

(assert (=> b!1197321 d!342167))

(declare-fun b!1197515 () Bool)

(declare-fun e!768983 () Bool)

(declare-fun lt!410301 () List!12059)

(assert (=> b!1197515 (= e!768983 (or (not (= (list!4469 (right!10830 (right!10830 t!4115))) Nil!12035)) (= lt!410301 (t!112389 (list!4469 (left!10500 (right!10830 t!4115)))))))))

(declare-fun b!1197513 () Bool)

(declare-fun e!768984 () List!12059)

(assert (=> b!1197513 (= e!768984 (Cons!12035 (h!17436 (t!112389 (list!4469 (left!10500 (right!10830 t!4115))))) (++!3069 (t!112389 (t!112389 (list!4469 (left!10500 (right!10830 t!4115))))) (list!4469 (right!10830 (right!10830 t!4115))))))))

(declare-fun d!342169 () Bool)

(assert (=> d!342169 e!768983))

(declare-fun res!540428 () Bool)

(assert (=> d!342169 (=> (not res!540428) (not e!768983))))

(assert (=> d!342169 (= res!540428 (= (content!1681 lt!410301) ((_ map or) (content!1681 (t!112389 (list!4469 (left!10500 (right!10830 t!4115))))) (content!1681 (list!4469 (right!10830 (right!10830 t!4115)))))))))

(assert (=> d!342169 (= lt!410301 e!768984)))

(declare-fun c!199115 () Bool)

(assert (=> d!342169 (= c!199115 ((_ is Nil!12035) (t!112389 (list!4469 (left!10500 (right!10830 t!4115))))))))

(assert (=> d!342169 (= (++!3069 (t!112389 (list!4469 (left!10500 (right!10830 t!4115)))) (list!4469 (right!10830 (right!10830 t!4115)))) lt!410301)))

(declare-fun b!1197512 () Bool)

(assert (=> b!1197512 (= e!768984 (list!4469 (right!10830 (right!10830 t!4115))))))

(declare-fun b!1197514 () Bool)

(declare-fun res!540429 () Bool)

(assert (=> b!1197514 (=> (not res!540429) (not e!768983))))

(assert (=> b!1197514 (= res!540429 (= (size!9555 lt!410301) (+ (size!9555 (t!112389 (list!4469 (left!10500 (right!10830 t!4115))))) (size!9555 (list!4469 (right!10830 (right!10830 t!4115)))))))))

(assert (= (and d!342169 c!199115) b!1197512))

(assert (= (and d!342169 (not c!199115)) b!1197513))

(assert (= (and d!342169 res!540428) b!1197514))

(assert (= (and b!1197514 res!540429) b!1197515))

(assert (=> b!1197513 m!1371933))

(declare-fun m!1372505 () Bool)

(assert (=> b!1197513 m!1372505))

(declare-fun m!1372507 () Bool)

(assert (=> d!342169 m!1372507))

(assert (=> d!342169 m!1372419))

(assert (=> d!342169 m!1371933))

(assert (=> d!342169 m!1372121))

(declare-fun m!1372509 () Bool)

(assert (=> b!1197514 m!1372509))

(assert (=> b!1197514 m!1372389))

(assert (=> b!1197514 m!1371933))

(assert (=> b!1197514 m!1372127))

(assert (=> b!1197292 d!342169))

(declare-fun d!342171 () Bool)

(declare-fun lt!410302 () Int)

(assert (=> d!342171 (>= lt!410302 0)))

(declare-fun e!768985 () Int)

(assert (=> d!342171 (= lt!410302 e!768985)))

(declare-fun c!199116 () Bool)

(assert (=> d!342171 (= c!199116 ((_ is Nil!12035) (innerList!4028 (xs!6675 (left!10500 t!4115)))))))

(assert (=> d!342171 (= (size!9555 (innerList!4028 (xs!6675 (left!10500 t!4115)))) lt!410302)))

(declare-fun b!1197516 () Bool)

(assert (=> b!1197516 (= e!768985 0)))

(declare-fun b!1197517 () Bool)

(assert (=> b!1197517 (= e!768985 (+ 1 (size!9555 (t!112389 (innerList!4028 (xs!6675 (left!10500 t!4115)))))))))

(assert (= (and d!342171 c!199116) b!1197516))

(assert (= (and d!342171 (not c!199116)) b!1197517))

(declare-fun m!1372511 () Bool)

(assert (=> b!1197517 m!1372511))

(assert (=> d!342003 d!342171))

(declare-fun d!342173 () Bool)

(declare-fun res!540430 () Bool)

(declare-fun e!768986 () Bool)

(assert (=> d!342173 (=> (not res!540430) (not e!768986))))

(assert (=> d!342173 (= res!540430 (= (csize!8166 (left!10500 (left!10500 t!4115))) (+ (size!9554 (left!10500 (left!10500 (left!10500 t!4115)))) (size!9554 (right!10830 (left!10500 (left!10500 t!4115)))))))))

(assert (=> d!342173 (= (inv!16073 (left!10500 (left!10500 t!4115))) e!768986)))

(declare-fun b!1197518 () Bool)

(declare-fun res!540431 () Bool)

(assert (=> b!1197518 (=> (not res!540431) (not e!768986))))

(assert (=> b!1197518 (= res!540431 (and (not (= (left!10500 (left!10500 (left!10500 t!4115))) Empty!3968)) (not (= (right!10830 (left!10500 (left!10500 t!4115))) Empty!3968))))))

(declare-fun b!1197519 () Bool)

(declare-fun res!540432 () Bool)

(assert (=> b!1197519 (=> (not res!540432) (not e!768986))))

(assert (=> b!1197519 (= res!540432 (= (cheight!4179 (left!10500 (left!10500 t!4115))) (+ (max!0 (height!561 (left!10500 (left!10500 (left!10500 t!4115)))) (height!561 (right!10830 (left!10500 (left!10500 t!4115))))) 1)))))

(declare-fun b!1197520 () Bool)

(assert (=> b!1197520 (= e!768986 (<= 0 (cheight!4179 (left!10500 (left!10500 t!4115)))))))

(assert (= (and d!342173 res!540430) b!1197518))

(assert (= (and b!1197518 res!540431) b!1197519))

(assert (= (and b!1197519 res!540432) b!1197520))

(declare-fun m!1372513 () Bool)

(assert (=> d!342173 m!1372513))

(declare-fun m!1372515 () Bool)

(assert (=> d!342173 m!1372515))

(assert (=> b!1197519 m!1372463))

(assert (=> b!1197519 m!1372465))

(assert (=> b!1197519 m!1372463))

(assert (=> b!1197519 m!1372465))

(declare-fun m!1372517 () Bool)

(assert (=> b!1197519 m!1372517))

(assert (=> b!1197277 d!342173))

(declare-fun d!342175 () Bool)

(declare-fun c!199117 () Bool)

(assert (=> d!342175 (= c!199117 ((_ is Nil!12035) lt!410272))))

(declare-fun e!768987 () (InoxSet T!21726))

(assert (=> d!342175 (= (content!1681 lt!410272) e!768987)))

(declare-fun b!1197521 () Bool)

(assert (=> b!1197521 (= e!768987 ((as const (Array T!21726 Bool)) false))))

(declare-fun b!1197522 () Bool)

(assert (=> b!1197522 (= e!768987 ((_ map or) (store ((as const (Array T!21726 Bool)) false) (h!17436 lt!410272) true) (content!1681 (t!112389 lt!410272))))))

(assert (= (and d!342175 c!199117) b!1197521))

(assert (= (and d!342175 (not c!199117)) b!1197522))

(declare-fun m!1372519 () Bool)

(assert (=> b!1197522 m!1372519))

(declare-fun m!1372521 () Bool)

(assert (=> b!1197522 m!1372521))

(assert (=> d!342017 d!342175))

(declare-fun d!342177 () Bool)

(declare-fun c!199118 () Bool)

(assert (=> d!342177 (= c!199118 ((_ is Nil!12035) (list!4469 (left!10500 (left!10500 t!4115)))))))

(declare-fun e!768988 () (InoxSet T!21726))

(assert (=> d!342177 (= (content!1681 (list!4469 (left!10500 (left!10500 t!4115)))) e!768988)))

(declare-fun b!1197523 () Bool)

(assert (=> b!1197523 (= e!768988 ((as const (Array T!21726 Bool)) false))))

(declare-fun b!1197524 () Bool)

(assert (=> b!1197524 (= e!768988 ((_ map or) (store ((as const (Array T!21726 Bool)) false) (h!17436 (list!4469 (left!10500 (left!10500 t!4115)))) true) (content!1681 (t!112389 (list!4469 (left!10500 (left!10500 t!4115)))))))))

(assert (= (and d!342177 c!199118) b!1197523))

(assert (= (and d!342177 (not c!199118)) b!1197524))

(declare-fun m!1372523 () Bool)

(assert (=> b!1197524 m!1372523))

(assert (=> b!1197524 m!1372497))

(assert (=> d!342017 d!342177))

(declare-fun d!342179 () Bool)

(declare-fun c!199119 () Bool)

(assert (=> d!342179 (= c!199119 ((_ is Nil!12035) (list!4469 (right!10830 (left!10500 t!4115)))))))

(declare-fun e!768989 () (InoxSet T!21726))

(assert (=> d!342179 (= (content!1681 (list!4469 (right!10830 (left!10500 t!4115)))) e!768989)))

(declare-fun b!1197525 () Bool)

(assert (=> b!1197525 (= e!768989 ((as const (Array T!21726 Bool)) false))))

(declare-fun b!1197526 () Bool)

(assert (=> b!1197526 (= e!768989 ((_ map or) (store ((as const (Array T!21726 Bool)) false) (h!17436 (list!4469 (right!10830 (left!10500 t!4115)))) true) (content!1681 (t!112389 (list!4469 (right!10830 (left!10500 t!4115)))))))))

(assert (= (and d!342179 c!199119) b!1197525))

(assert (= (and d!342179 (not c!199119)) b!1197526))

(declare-fun m!1372525 () Bool)

(assert (=> b!1197526 m!1372525))

(declare-fun m!1372527 () Bool)

(assert (=> b!1197526 m!1372527))

(assert (=> d!342017 d!342179))

(declare-fun b!1197530 () Bool)

(declare-fun e!768990 () Bool)

(declare-fun lt!410303 () List!12059)

(assert (=> b!1197530 (= e!768990 (or (not (= (list!4469 (right!10830 (right!10830 (right!10830 t!4115)))) Nil!12035)) (= lt!410303 (list!4469 (left!10500 (right!10830 (right!10830 t!4115)))))))))

(declare-fun b!1197528 () Bool)

(declare-fun e!768991 () List!12059)

(assert (=> b!1197528 (= e!768991 (Cons!12035 (h!17436 (list!4469 (left!10500 (right!10830 (right!10830 t!4115))))) (++!3069 (t!112389 (list!4469 (left!10500 (right!10830 (right!10830 t!4115))))) (list!4469 (right!10830 (right!10830 (right!10830 t!4115)))))))))

(declare-fun d!342181 () Bool)

(assert (=> d!342181 e!768990))

(declare-fun res!540433 () Bool)

(assert (=> d!342181 (=> (not res!540433) (not e!768990))))

(assert (=> d!342181 (= res!540433 (= (content!1681 lt!410303) ((_ map or) (content!1681 (list!4469 (left!10500 (right!10830 (right!10830 t!4115))))) (content!1681 (list!4469 (right!10830 (right!10830 (right!10830 t!4115))))))))))

(assert (=> d!342181 (= lt!410303 e!768991)))

(declare-fun c!199120 () Bool)

(assert (=> d!342181 (= c!199120 ((_ is Nil!12035) (list!4469 (left!10500 (right!10830 (right!10830 t!4115))))))))

(assert (=> d!342181 (= (++!3069 (list!4469 (left!10500 (right!10830 (right!10830 t!4115)))) (list!4469 (right!10830 (right!10830 (right!10830 t!4115))))) lt!410303)))

(declare-fun b!1197527 () Bool)

(assert (=> b!1197527 (= e!768991 (list!4469 (right!10830 (right!10830 (right!10830 t!4115)))))))

(declare-fun b!1197529 () Bool)

(declare-fun res!540434 () Bool)

(assert (=> b!1197529 (=> (not res!540434) (not e!768990))))

(assert (=> b!1197529 (= res!540434 (= (size!9555 lt!410303) (+ (size!9555 (list!4469 (left!10500 (right!10830 (right!10830 t!4115))))) (size!9555 (list!4469 (right!10830 (right!10830 (right!10830 t!4115))))))))))

(assert (= (and d!342181 c!199120) b!1197527))

(assert (= (and d!342181 (not c!199120)) b!1197528))

(assert (= (and d!342181 res!540433) b!1197529))

(assert (= (and b!1197529 res!540434) b!1197530))

(assert (=> b!1197528 m!1372141))

(declare-fun m!1372529 () Bool)

(assert (=> b!1197528 m!1372529))

(declare-fun m!1372531 () Bool)

(assert (=> d!342181 m!1372531))

(assert (=> d!342181 m!1372139))

(declare-fun m!1372533 () Bool)

(assert (=> d!342181 m!1372533))

(assert (=> d!342181 m!1372141))

(declare-fun m!1372535 () Bool)

(assert (=> d!342181 m!1372535))

(declare-fun m!1372537 () Bool)

(assert (=> b!1197529 m!1372537))

(assert (=> b!1197529 m!1372139))

(declare-fun m!1372539 () Bool)

(assert (=> b!1197529 m!1372539))

(assert (=> b!1197529 m!1372141))

(declare-fun m!1372541 () Bool)

(assert (=> b!1197529 m!1372541))

(assert (=> b!1197302 d!342181))

(declare-fun b!1197533 () Bool)

(declare-fun e!768993 () List!12059)

(assert (=> b!1197533 (= e!768993 (list!4470 (xs!6675 (left!10500 (right!10830 (right!10830 t!4115))))))))

(declare-fun b!1197534 () Bool)

(assert (=> b!1197534 (= e!768993 (++!3069 (list!4469 (left!10500 (left!10500 (right!10830 (right!10830 t!4115))))) (list!4469 (right!10830 (left!10500 (right!10830 (right!10830 t!4115)))))))))

(declare-fun d!342183 () Bool)

(declare-fun c!199121 () Bool)

(assert (=> d!342183 (= c!199121 ((_ is Empty!3968) (left!10500 (right!10830 (right!10830 t!4115)))))))

(declare-fun e!768992 () List!12059)

(assert (=> d!342183 (= (list!4469 (left!10500 (right!10830 (right!10830 t!4115)))) e!768992)))

(declare-fun b!1197531 () Bool)

(assert (=> b!1197531 (= e!768992 Nil!12035)))

(declare-fun b!1197532 () Bool)

(assert (=> b!1197532 (= e!768992 e!768993)))

(declare-fun c!199122 () Bool)

(assert (=> b!1197532 (= c!199122 ((_ is Leaf!6077) (left!10500 (right!10830 (right!10830 t!4115)))))))

(assert (= (and d!342183 c!199121) b!1197531))

(assert (= (and d!342183 (not c!199121)) b!1197532))

(assert (= (and b!1197532 c!199122) b!1197533))

(assert (= (and b!1197532 (not c!199122)) b!1197534))

(declare-fun m!1372543 () Bool)

(assert (=> b!1197533 m!1372543))

(declare-fun m!1372545 () Bool)

(assert (=> b!1197534 m!1372545))

(declare-fun m!1372547 () Bool)

(assert (=> b!1197534 m!1372547))

(assert (=> b!1197534 m!1372545))

(assert (=> b!1197534 m!1372547))

(declare-fun m!1372549 () Bool)

(assert (=> b!1197534 m!1372549))

(assert (=> b!1197302 d!342183))

(declare-fun b!1197537 () Bool)

(declare-fun e!768995 () List!12059)

(assert (=> b!1197537 (= e!768995 (list!4470 (xs!6675 (right!10830 (right!10830 (right!10830 t!4115))))))))

(declare-fun b!1197538 () Bool)

(assert (=> b!1197538 (= e!768995 (++!3069 (list!4469 (left!10500 (right!10830 (right!10830 (right!10830 t!4115))))) (list!4469 (right!10830 (right!10830 (right!10830 (right!10830 t!4115)))))))))

(declare-fun d!342185 () Bool)

(declare-fun c!199123 () Bool)

(assert (=> d!342185 (= c!199123 ((_ is Empty!3968) (right!10830 (right!10830 (right!10830 t!4115)))))))

(declare-fun e!768994 () List!12059)

(assert (=> d!342185 (= (list!4469 (right!10830 (right!10830 (right!10830 t!4115)))) e!768994)))

(declare-fun b!1197535 () Bool)

(assert (=> b!1197535 (= e!768994 Nil!12035)))

(declare-fun b!1197536 () Bool)

(assert (=> b!1197536 (= e!768994 e!768995)))

(declare-fun c!199124 () Bool)

(assert (=> b!1197536 (= c!199124 ((_ is Leaf!6077) (right!10830 (right!10830 (right!10830 t!4115)))))))

(assert (= (and d!342185 c!199123) b!1197535))

(assert (= (and d!342185 (not c!199123)) b!1197536))

(assert (= (and b!1197536 c!199124) b!1197537))

(assert (= (and b!1197536 (not c!199124)) b!1197538))

(declare-fun m!1372551 () Bool)

(assert (=> b!1197537 m!1372551))

(declare-fun m!1372553 () Bool)

(assert (=> b!1197538 m!1372553))

(declare-fun m!1372555 () Bool)

(assert (=> b!1197538 m!1372555))

(assert (=> b!1197538 m!1372553))

(assert (=> b!1197538 m!1372555))

(declare-fun m!1372557 () Bool)

(assert (=> b!1197538 m!1372557))

(assert (=> b!1197302 d!342185))

(assert (=> b!1197258 d!342103))

(assert (=> b!1197258 d!342105))

(assert (=> b!1197200 d!341969))

(assert (=> b!1197200 d!341971))

(declare-fun d!342187 () Bool)

(declare-fun res!540435 () Bool)

(declare-fun e!768996 () Bool)

(assert (=> d!342187 (=> (not res!540435) (not e!768996))))

(assert (=> d!342187 (= res!540435 (<= (size!9555 (list!4470 (xs!6675 (left!10500 (left!10500 t!4115))))) 512))))

(assert (=> d!342187 (= (inv!16074 (left!10500 (left!10500 t!4115))) e!768996)))

(declare-fun b!1197539 () Bool)

(declare-fun res!540436 () Bool)

(assert (=> b!1197539 (=> (not res!540436) (not e!768996))))

(assert (=> b!1197539 (= res!540436 (= (csize!8167 (left!10500 (left!10500 t!4115))) (size!9555 (list!4470 (xs!6675 (left!10500 (left!10500 t!4115)))))))))

(declare-fun b!1197540 () Bool)

(assert (=> b!1197540 (= e!768996 (and (> (csize!8167 (left!10500 (left!10500 t!4115))) 0) (<= (csize!8167 (left!10500 (left!10500 t!4115))) 512)))))

(assert (= (and d!342187 res!540435) b!1197539))

(assert (= (and b!1197539 res!540436) b!1197540))

(assert (=> d!342187 m!1372161))

(assert (=> d!342187 m!1372161))

(declare-fun m!1372559 () Bool)

(assert (=> d!342187 m!1372559))

(assert (=> b!1197539 m!1372161))

(assert (=> b!1197539 m!1372161))

(assert (=> b!1197539 m!1372559))

(assert (=> b!1197279 d!342187))

(declare-fun d!342189 () Bool)

(assert (=> d!342189 (= (list!4470 (xs!6675 (left!10500 (right!10830 t!4115)))) (innerList!4028 (xs!6675 (left!10500 (right!10830 t!4115)))))))

(assert (=> b!1197297 d!342189))

(declare-fun b!1197544 () Bool)

(declare-fun e!768997 () Bool)

(declare-fun lt!410304 () List!12059)

(assert (=> b!1197544 (= e!768997 (or (not (= (list!4469 (right!10830 (left!10500 (left!10500 t!4115)))) Nil!12035)) (= lt!410304 (list!4469 (left!10500 (left!10500 (left!10500 t!4115)))))))))

(declare-fun b!1197542 () Bool)

(declare-fun e!768998 () List!12059)

(assert (=> b!1197542 (= e!768998 (Cons!12035 (h!17436 (list!4469 (left!10500 (left!10500 (left!10500 t!4115))))) (++!3069 (t!112389 (list!4469 (left!10500 (left!10500 (left!10500 t!4115))))) (list!4469 (right!10830 (left!10500 (left!10500 t!4115)))))))))

(declare-fun d!342191 () Bool)

(assert (=> d!342191 e!768997))

(declare-fun res!540437 () Bool)

(assert (=> d!342191 (=> (not res!540437) (not e!768997))))

(assert (=> d!342191 (= res!540437 (= (content!1681 lt!410304) ((_ map or) (content!1681 (list!4469 (left!10500 (left!10500 (left!10500 t!4115))))) (content!1681 (list!4469 (right!10830 (left!10500 (left!10500 t!4115))))))))))

(assert (=> d!342191 (= lt!410304 e!768998)))

(declare-fun c!199125 () Bool)

(assert (=> d!342191 (= c!199125 ((_ is Nil!12035) (list!4469 (left!10500 (left!10500 (left!10500 t!4115))))))))

(assert (=> d!342191 (= (++!3069 (list!4469 (left!10500 (left!10500 (left!10500 t!4115)))) (list!4469 (right!10830 (left!10500 (left!10500 t!4115))))) lt!410304)))

(declare-fun b!1197541 () Bool)

(assert (=> b!1197541 (= e!768998 (list!4469 (right!10830 (left!10500 (left!10500 t!4115)))))))

(declare-fun b!1197543 () Bool)

(declare-fun res!540438 () Bool)

(assert (=> b!1197543 (=> (not res!540438) (not e!768997))))

(assert (=> b!1197543 (= res!540438 (= (size!9555 lt!410304) (+ (size!9555 (list!4469 (left!10500 (left!10500 (left!10500 t!4115))))) (size!9555 (list!4469 (right!10830 (left!10500 (left!10500 t!4115))))))))))

(assert (= (and d!342191 c!199125) b!1197541))

(assert (= (and d!342191 (not c!199125)) b!1197542))

(assert (= (and d!342191 res!540437) b!1197543))

(assert (= (and b!1197543 res!540438) b!1197544))

(assert (=> b!1197542 m!1372165))

(declare-fun m!1372561 () Bool)

(assert (=> b!1197542 m!1372561))

(declare-fun m!1372563 () Bool)

(assert (=> d!342191 m!1372563))

(assert (=> d!342191 m!1372163))

(declare-fun m!1372565 () Bool)

(assert (=> d!342191 m!1372565))

(assert (=> d!342191 m!1372165))

(declare-fun m!1372567 () Bool)

(assert (=> d!342191 m!1372567))

(declare-fun m!1372569 () Bool)

(assert (=> b!1197543 m!1372569))

(assert (=> b!1197543 m!1372163))

(declare-fun m!1372571 () Bool)

(assert (=> b!1197543 m!1372571))

(assert (=> b!1197543 m!1372165))

(declare-fun m!1372573 () Bool)

(assert (=> b!1197543 m!1372573))

(assert (=> b!1197312 d!342191))

(declare-fun b!1197547 () Bool)

(declare-fun e!769000 () List!12059)

(assert (=> b!1197547 (= e!769000 (list!4470 (xs!6675 (left!10500 (left!10500 (left!10500 t!4115))))))))

(declare-fun b!1197548 () Bool)

(assert (=> b!1197548 (= e!769000 (++!3069 (list!4469 (left!10500 (left!10500 (left!10500 (left!10500 t!4115))))) (list!4469 (right!10830 (left!10500 (left!10500 (left!10500 t!4115)))))))))

(declare-fun d!342193 () Bool)

(declare-fun c!199126 () Bool)

(assert (=> d!342193 (= c!199126 ((_ is Empty!3968) (left!10500 (left!10500 (left!10500 t!4115)))))))

(declare-fun e!768999 () List!12059)

(assert (=> d!342193 (= (list!4469 (left!10500 (left!10500 (left!10500 t!4115)))) e!768999)))

(declare-fun b!1197545 () Bool)

(assert (=> b!1197545 (= e!768999 Nil!12035)))

(declare-fun b!1197546 () Bool)

(assert (=> b!1197546 (= e!768999 e!769000)))

(declare-fun c!199127 () Bool)

(assert (=> b!1197546 (= c!199127 ((_ is Leaf!6077) (left!10500 (left!10500 (left!10500 t!4115)))))))

(assert (= (and d!342193 c!199126) b!1197545))

(assert (= (and d!342193 (not c!199126)) b!1197546))

(assert (= (and b!1197546 c!199127) b!1197547))

(assert (= (and b!1197546 (not c!199127)) b!1197548))

(declare-fun m!1372575 () Bool)

(assert (=> b!1197547 m!1372575))

(declare-fun m!1372577 () Bool)

(assert (=> b!1197548 m!1372577))

(declare-fun m!1372579 () Bool)

(assert (=> b!1197548 m!1372579))

(assert (=> b!1197548 m!1372577))

(assert (=> b!1197548 m!1372579))

(declare-fun m!1372581 () Bool)

(assert (=> b!1197548 m!1372581))

(assert (=> b!1197312 d!342193))

(declare-fun b!1197551 () Bool)

(declare-fun e!769002 () List!12059)

(assert (=> b!1197551 (= e!769002 (list!4470 (xs!6675 (right!10830 (left!10500 (left!10500 t!4115))))))))

(declare-fun b!1197552 () Bool)

(assert (=> b!1197552 (= e!769002 (++!3069 (list!4469 (left!10500 (right!10830 (left!10500 (left!10500 t!4115))))) (list!4469 (right!10830 (right!10830 (left!10500 (left!10500 t!4115)))))))))

(declare-fun d!342195 () Bool)

(declare-fun c!199128 () Bool)

(assert (=> d!342195 (= c!199128 ((_ is Empty!3968) (right!10830 (left!10500 (left!10500 t!4115)))))))

(declare-fun e!769001 () List!12059)

(assert (=> d!342195 (= (list!4469 (right!10830 (left!10500 (left!10500 t!4115)))) e!769001)))

(declare-fun b!1197549 () Bool)

(assert (=> b!1197549 (= e!769001 Nil!12035)))

(declare-fun b!1197550 () Bool)

(assert (=> b!1197550 (= e!769001 e!769002)))

(declare-fun c!199129 () Bool)

(assert (=> b!1197550 (= c!199129 ((_ is Leaf!6077) (right!10830 (left!10500 (left!10500 t!4115)))))))

(assert (= (and d!342195 c!199128) b!1197549))

(assert (= (and d!342195 (not c!199128)) b!1197550))

(assert (= (and b!1197550 c!199129) b!1197551))

(assert (= (and b!1197550 (not c!199129)) b!1197552))

(declare-fun m!1372583 () Bool)

(assert (=> b!1197551 m!1372583))

(declare-fun m!1372585 () Bool)

(assert (=> b!1197552 m!1372585))

(declare-fun m!1372587 () Bool)

(assert (=> b!1197552 m!1372587))

(assert (=> b!1197552 m!1372585))

(assert (=> b!1197552 m!1372587))

(declare-fun m!1372589 () Bool)

(assert (=> b!1197552 m!1372589))

(assert (=> b!1197312 d!342195))

(declare-fun d!342197 () Bool)

(declare-fun res!540439 () Bool)

(declare-fun e!769003 () Bool)

(assert (=> d!342197 (=> (not res!540439) (not e!769003))))

(assert (=> d!342197 (= res!540439 (<= (size!9555 (list!4470 (xs!6675 (right!10830 (left!10500 t!4115))))) 512))))

(assert (=> d!342197 (= (inv!16074 (right!10830 (left!10500 t!4115))) e!769003)))

(declare-fun b!1197553 () Bool)

(declare-fun res!540440 () Bool)

(assert (=> b!1197553 (=> (not res!540440) (not e!769003))))

(assert (=> b!1197553 (= res!540440 (= (csize!8167 (right!10830 (left!10500 t!4115))) (size!9555 (list!4470 (xs!6675 (right!10830 (left!10500 t!4115)))))))))

(declare-fun b!1197554 () Bool)

(assert (=> b!1197554 (= e!769003 (and (> (csize!8167 (right!10830 (left!10500 t!4115))) 0) (<= (csize!8167 (right!10830 (left!10500 t!4115))) 512)))))

(assert (= (and d!342197 res!540439) b!1197553))

(assert (= (and b!1197553 res!540440) b!1197554))

(assert (=> d!342197 m!1372169))

(assert (=> d!342197 m!1372169))

(declare-fun m!1372591 () Bool)

(assert (=> d!342197 m!1372591))

(assert (=> b!1197553 m!1372169))

(assert (=> b!1197553 m!1372169))

(assert (=> b!1197553 m!1372591))

(assert (=> b!1197282 d!342197))

(declare-fun b!1197558 () Bool)

(declare-fun e!769004 () Bool)

(declare-fun lt!410305 () List!12059)

(assert (=> b!1197558 (= e!769004 (or (not (= (list!4469 (right!10830 t!4115)) Nil!12035)) (= lt!410305 (list!4469 (left!10500 t!4115)))))))

(declare-fun b!1197556 () Bool)

(declare-fun e!769005 () List!12059)

(assert (=> b!1197556 (= e!769005 (Cons!12035 (h!17436 (list!4469 (left!10500 t!4115))) (++!3069 (t!112389 (list!4469 (left!10500 t!4115))) (list!4469 (right!10830 t!4115)))))))

(declare-fun d!342199 () Bool)

(assert (=> d!342199 e!769004))

(declare-fun res!540441 () Bool)

(assert (=> d!342199 (=> (not res!540441) (not e!769004))))

(assert (=> d!342199 (= res!540441 (= (content!1681 lt!410305) ((_ map or) (content!1681 (list!4469 (left!10500 t!4115))) (content!1681 (list!4469 (right!10830 t!4115))))))))

(assert (=> d!342199 (= lt!410305 e!769005)))

(declare-fun c!199130 () Bool)

(assert (=> d!342199 (= c!199130 ((_ is Nil!12035) (list!4469 (left!10500 t!4115))))))

(assert (=> d!342199 (= (++!3069 (list!4469 (left!10500 t!4115)) (list!4469 (right!10830 t!4115))) lt!410305)))

(declare-fun b!1197555 () Bool)

(assert (=> b!1197555 (= e!769005 (list!4469 (right!10830 t!4115)))))

(declare-fun b!1197557 () Bool)

(declare-fun res!540442 () Bool)

(assert (=> b!1197557 (=> (not res!540442) (not e!769004))))

(assert (=> b!1197557 (= res!540442 (= (size!9555 lt!410305) (+ (size!9555 (list!4469 (left!10500 t!4115))) (size!9555 (list!4469 (right!10830 t!4115))))))))

(assert (= (and d!342199 c!199130) b!1197555))

(assert (= (and d!342199 (not c!199130)) b!1197556))

(assert (= (and d!342199 res!540441) b!1197557))

(assert (= (and b!1197557 res!540442) b!1197558))

(assert (=> b!1197556 m!1371907))

(declare-fun m!1372593 () Bool)

(assert (=> b!1197556 m!1372593))

(declare-fun m!1372595 () Bool)

(assert (=> d!342199 m!1372595))

(assert (=> d!342199 m!1371903))

(declare-fun m!1372597 () Bool)

(assert (=> d!342199 m!1372597))

(assert (=> d!342199 m!1371907))

(declare-fun m!1372599 () Bool)

(assert (=> d!342199 m!1372599))

(declare-fun m!1372601 () Bool)

(assert (=> b!1197557 m!1372601))

(assert (=> b!1197557 m!1371903))

(assert (=> b!1197557 m!1371905))

(assert (=> b!1197557 m!1371907))

(assert (=> b!1197557 m!1371909))

(assert (=> b!1197234 d!342199))

(assert (=> b!1197234 d!341925))

(assert (=> b!1197234 d!341933))

(declare-fun d!342201 () Bool)

(declare-fun lt!410306 () Int)

(assert (=> d!342201 (>= lt!410306 0)))

(declare-fun e!769006 () Int)

(assert (=> d!342201 (= lt!410306 e!769006)))

(declare-fun c!199131 () Bool)

(assert (=> d!342201 (= c!199131 ((_ is Nil!12035) (t!112389 (t!112389 (list!4469 (right!10830 t!4115))))))))

(assert (=> d!342201 (= (size!9555 (t!112389 (t!112389 (list!4469 (right!10830 t!4115))))) lt!410306)))

(declare-fun b!1197559 () Bool)

(assert (=> b!1197559 (= e!769006 0)))

(declare-fun b!1197560 () Bool)

(assert (=> b!1197560 (= e!769006 (+ 1 (size!9555 (t!112389 (t!112389 (t!112389 (list!4469 (right!10830 t!4115))))))))))

(assert (= (and d!342201 c!199131) b!1197559))

(assert (= (and d!342201 (not c!199131)) b!1197560))

(declare-fun m!1372603 () Bool)

(assert (=> b!1197560 m!1372603))

(assert (=> b!1197228 d!342201))

(declare-fun d!342203 () Bool)

(declare-fun lt!410307 () Int)

(assert (=> d!342203 (>= lt!410307 0)))

(declare-fun e!769007 () Int)

(assert (=> d!342203 (= lt!410307 e!769007)))

(declare-fun c!199132 () Bool)

(assert (=> d!342203 (= c!199132 ((_ is Nil!12035) (t!112389 (t!112389 (list!4469 (left!10500 t!4115))))))))

(assert (=> d!342203 (= (size!9555 (t!112389 (t!112389 (list!4469 (left!10500 t!4115))))) lt!410307)))

(declare-fun b!1197561 () Bool)

(assert (=> b!1197561 (= e!769007 0)))

(declare-fun b!1197562 () Bool)

(assert (=> b!1197562 (= e!769007 (+ 1 (size!9555 (t!112389 (t!112389 (t!112389 (list!4469 (left!10500 t!4115))))))))))

(assert (= (and d!342203 c!199132) b!1197561))

(assert (= (and d!342203 (not c!199132)) b!1197562))

(declare-fun m!1372605 () Bool)

(assert (=> b!1197562 m!1372605))

(assert (=> b!1197256 d!342203))

(assert (=> b!1197197 d!341999))

(assert (=> b!1197197 d!342001))

(declare-fun d!342205 () Bool)

(declare-fun lt!410308 () Int)

(assert (=> d!342205 (>= lt!410308 0)))

(declare-fun e!769008 () Int)

(assert (=> d!342205 (= lt!410308 e!769008)))

(declare-fun c!199133 () Bool)

(assert (=> d!342205 (= c!199133 ((_ is Nil!12035) lt!410272))))

(assert (=> d!342205 (= (size!9555 lt!410272) lt!410308)))

(declare-fun b!1197563 () Bool)

(assert (=> b!1197563 (= e!769008 0)))

(declare-fun b!1197564 () Bool)

(assert (=> b!1197564 (= e!769008 (+ 1 (size!9555 (t!112389 lt!410272))))))

(assert (= (and d!342205 c!199133) b!1197563))

(assert (= (and d!342205 (not c!199133)) b!1197564))

(declare-fun m!1372607 () Bool)

(assert (=> b!1197564 m!1372607))

(assert (=> b!1197307 d!342205))

(declare-fun d!342207 () Bool)

(declare-fun lt!410309 () Int)

(assert (=> d!342207 (>= lt!410309 0)))

(declare-fun e!769009 () Int)

(assert (=> d!342207 (= lt!410309 e!769009)))

(declare-fun c!199134 () Bool)

(assert (=> d!342207 (= c!199134 ((_ is Nil!12035) (list!4469 (left!10500 (left!10500 t!4115)))))))

(assert (=> d!342207 (= (size!9555 (list!4469 (left!10500 (left!10500 t!4115)))) lt!410309)))

(declare-fun b!1197565 () Bool)

(assert (=> b!1197565 (= e!769009 0)))

(declare-fun b!1197566 () Bool)

(assert (=> b!1197566 (= e!769009 (+ 1 (size!9555 (t!112389 (list!4469 (left!10500 (left!10500 t!4115)))))))))

(assert (= (and d!342207 c!199134) b!1197565))

(assert (= (and d!342207 (not c!199134)) b!1197566))

(assert (=> b!1197566 m!1372501))

(assert (=> b!1197307 d!342207))

(declare-fun d!342209 () Bool)

(declare-fun lt!410310 () Int)

(assert (=> d!342209 (>= lt!410310 0)))

(declare-fun e!769010 () Int)

(assert (=> d!342209 (= lt!410310 e!769010)))

(declare-fun c!199135 () Bool)

(assert (=> d!342209 (= c!199135 ((_ is Nil!12035) (list!4469 (right!10830 (left!10500 t!4115)))))))

(assert (=> d!342209 (= (size!9555 (list!4469 (right!10830 (left!10500 t!4115)))) lt!410310)))

(declare-fun b!1197567 () Bool)

(assert (=> b!1197567 (= e!769010 0)))

(declare-fun b!1197568 () Bool)

(assert (=> b!1197568 (= e!769010 (+ 1 (size!9555 (t!112389 (list!4469 (right!10830 (left!10500 t!4115)))))))))

(assert (= (and d!342209 c!199135) b!1197567))

(assert (= (and d!342209 (not c!199135)) b!1197568))

(declare-fun m!1372609 () Bool)

(assert (=> b!1197568 m!1372609))

(assert (=> b!1197307 d!342209))

(declare-fun d!342211 () Bool)

(assert (=> d!342211 (= (list!4470 (xs!6675 (right!10830 (left!10500 t!4115)))) (innerList!4028 (xs!6675 (right!10830 (left!10500 t!4115)))))))

(assert (=> b!1197315 d!342211))

(declare-fun d!342213 () Bool)

(declare-fun lt!410311 () Int)

(assert (=> d!342213 (>= lt!410311 0)))

(declare-fun e!769011 () Int)

(assert (=> d!342213 (= lt!410311 e!769011)))

(declare-fun c!199136 () Bool)

(assert (=> d!342213 (= c!199136 ((_ is Nil!12035) (list!4470 (xs!6675 (right!10830 t!4115)))))))

(assert (=> d!342213 (= (size!9555 (list!4470 (xs!6675 (right!10830 t!4115)))) lt!410311)))

(declare-fun b!1197569 () Bool)

(assert (=> b!1197569 (= e!769011 0)))

(declare-fun b!1197570 () Bool)

(assert (=> b!1197570 (= e!769011 (+ 1 (size!9555 (t!112389 (list!4470 (xs!6675 (right!10830 t!4115)))))))))

(assert (= (and d!342213 c!199136) b!1197569))

(assert (= (and d!342213 (not c!199136)) b!1197570))

(declare-fun m!1372611 () Bool)

(assert (=> b!1197570 m!1372611))

(assert (=> b!1197275 d!342213))

(assert (=> b!1197275 d!342005))

(declare-fun d!342215 () Bool)

(declare-fun c!199137 () Bool)

(assert (=> d!342215 (= c!199137 ((_ is Node!3968) (left!10500 (right!10830 (left!10500 t!4115)))))))

(declare-fun e!769012 () Bool)

(assert (=> d!342215 (= (inv!16071 (left!10500 (right!10830 (left!10500 t!4115)))) e!769012)))

(declare-fun b!1197571 () Bool)

(assert (=> b!1197571 (= e!769012 (inv!16073 (left!10500 (right!10830 (left!10500 t!4115)))))))

(declare-fun b!1197572 () Bool)

(declare-fun e!769013 () Bool)

(assert (=> b!1197572 (= e!769012 e!769013)))

(declare-fun res!540443 () Bool)

(assert (=> b!1197572 (= res!540443 (not ((_ is Leaf!6077) (left!10500 (right!10830 (left!10500 t!4115))))))))

(assert (=> b!1197572 (=> res!540443 e!769013)))

(declare-fun b!1197573 () Bool)

(assert (=> b!1197573 (= e!769013 (inv!16074 (left!10500 (right!10830 (left!10500 t!4115)))))))

(assert (= (and d!342215 c!199137) b!1197571))

(assert (= (and d!342215 (not c!199137)) b!1197572))

(assert (= (and b!1197572 (not res!540443)) b!1197573))

(declare-fun m!1372613 () Bool)

(assert (=> b!1197571 m!1372613))

(declare-fun m!1372615 () Bool)

(assert (=> b!1197573 m!1372615))

(assert (=> b!1197323 d!342215))

(declare-fun d!342217 () Bool)

(declare-fun c!199138 () Bool)

(assert (=> d!342217 (= c!199138 ((_ is Node!3968) (right!10830 (right!10830 (left!10500 t!4115)))))))

(declare-fun e!769014 () Bool)

(assert (=> d!342217 (= (inv!16071 (right!10830 (right!10830 (left!10500 t!4115)))) e!769014)))

(declare-fun b!1197574 () Bool)

(assert (=> b!1197574 (= e!769014 (inv!16073 (right!10830 (right!10830 (left!10500 t!4115)))))))

(declare-fun b!1197575 () Bool)

(declare-fun e!769015 () Bool)

(assert (=> b!1197575 (= e!769014 e!769015)))

(declare-fun res!540444 () Bool)

(assert (=> b!1197575 (= res!540444 (not ((_ is Leaf!6077) (right!10830 (right!10830 (left!10500 t!4115))))))))

(assert (=> b!1197575 (=> res!540444 e!769015)))

(declare-fun b!1197576 () Bool)

(assert (=> b!1197576 (= e!769015 (inv!16074 (right!10830 (right!10830 (left!10500 t!4115)))))))

(assert (= (and d!342217 c!199138) b!1197574))

(assert (= (and d!342217 (not c!199138)) b!1197575))

(assert (= (and b!1197575 (not res!540444)) b!1197576))

(declare-fun m!1372617 () Bool)

(assert (=> b!1197574 m!1372617))

(declare-fun m!1372619 () Bool)

(assert (=> b!1197576 m!1372619))

(assert (=> b!1197323 d!342217))

(declare-fun d!342219 () Bool)

(declare-fun res!540445 () Bool)

(declare-fun e!769016 () Bool)

(assert (=> d!342219 (=> (not res!540445) (not e!769016))))

(assert (=> d!342219 (= res!540445 (= (csize!8166 (right!10830 (left!10500 t!4115))) (+ (size!9554 (left!10500 (right!10830 (left!10500 t!4115)))) (size!9554 (right!10830 (right!10830 (left!10500 t!4115)))))))))

(assert (=> d!342219 (= (inv!16073 (right!10830 (left!10500 t!4115))) e!769016)))

(declare-fun b!1197577 () Bool)

(declare-fun res!540446 () Bool)

(assert (=> b!1197577 (=> (not res!540446) (not e!769016))))

(assert (=> b!1197577 (= res!540446 (and (not (= (left!10500 (right!10830 (left!10500 t!4115))) Empty!3968)) (not (= (right!10830 (right!10830 (left!10500 t!4115))) Empty!3968))))))

(declare-fun b!1197578 () Bool)

(declare-fun res!540447 () Bool)

(assert (=> b!1197578 (=> (not res!540447) (not e!769016))))

(assert (=> b!1197578 (= res!540447 (= (cheight!4179 (right!10830 (left!10500 t!4115))) (+ (max!0 (height!561 (left!10500 (right!10830 (left!10500 t!4115)))) (height!561 (right!10830 (right!10830 (left!10500 t!4115))))) 1)))))

(declare-fun b!1197579 () Bool)

(assert (=> b!1197579 (= e!769016 (<= 0 (cheight!4179 (right!10830 (left!10500 t!4115)))))))

(assert (= (and d!342219 res!540445) b!1197577))

(assert (= (and b!1197577 res!540446) b!1197578))

(assert (= (and b!1197578 res!540447) b!1197579))

(declare-fun m!1372621 () Bool)

(assert (=> d!342219 m!1372621))

(declare-fun m!1372623 () Bool)

(assert (=> d!342219 m!1372623))

(declare-fun m!1372625 () Bool)

(assert (=> b!1197578 m!1372625))

(declare-fun m!1372627 () Bool)

(assert (=> b!1197578 m!1372627))

(assert (=> b!1197578 m!1372625))

(assert (=> b!1197578 m!1372627))

(declare-fun m!1372629 () Bool)

(assert (=> b!1197578 m!1372629))

(assert (=> b!1197280 d!342219))

(declare-fun d!342221 () Bool)

(assert (=> d!342221 (= (max!0 (height!561 (left!10500 (left!10500 t!4115))) (height!561 (right!10830 (left!10500 t!4115)))) (ite (< (height!561 (left!10500 (left!10500 t!4115))) (height!561 (right!10830 (left!10500 t!4115)))) (height!561 (right!10830 (left!10500 t!4115))) (height!561 (left!10500 (left!10500 t!4115)))))))

(assert (=> b!1197251 d!342221))

(assert (=> b!1197251 d!342103))

(assert (=> b!1197251 d!342105))

(declare-fun d!342223 () Bool)

(declare-fun c!199139 () Bool)

(assert (=> d!342223 (= c!199139 ((_ is Node!3968) (left!10500 (left!10500 (right!10830 t!4115)))))))

(declare-fun e!769017 () Bool)

(assert (=> d!342223 (= (inv!16071 (left!10500 (left!10500 (right!10830 t!4115)))) e!769017)))

(declare-fun b!1197580 () Bool)

(assert (=> b!1197580 (= e!769017 (inv!16073 (left!10500 (left!10500 (right!10830 t!4115)))))))

(declare-fun b!1197581 () Bool)

(declare-fun e!769018 () Bool)

(assert (=> b!1197581 (= e!769017 e!769018)))

(declare-fun res!540448 () Bool)

(assert (=> b!1197581 (= res!540448 (not ((_ is Leaf!6077) (left!10500 (left!10500 (right!10830 t!4115))))))))

(assert (=> b!1197581 (=> res!540448 e!769018)))

(declare-fun b!1197582 () Bool)

(assert (=> b!1197582 (= e!769018 (inv!16074 (left!10500 (left!10500 (right!10830 t!4115)))))))

(assert (= (and d!342223 c!199139) b!1197580))

(assert (= (and d!342223 (not c!199139)) b!1197581))

(assert (= (and b!1197581 (not res!540448)) b!1197582))

(declare-fun m!1372631 () Bool)

(assert (=> b!1197580 m!1372631))

(declare-fun m!1372633 () Bool)

(assert (=> b!1197582 m!1372633))

(assert (=> b!1197329 d!342223))

(declare-fun d!342225 () Bool)

(declare-fun c!199140 () Bool)

(assert (=> d!342225 (= c!199140 ((_ is Node!3968) (right!10830 (left!10500 (right!10830 t!4115)))))))

(declare-fun e!769019 () Bool)

(assert (=> d!342225 (= (inv!16071 (right!10830 (left!10500 (right!10830 t!4115)))) e!769019)))

(declare-fun b!1197583 () Bool)

(assert (=> b!1197583 (= e!769019 (inv!16073 (right!10830 (left!10500 (right!10830 t!4115)))))))

(declare-fun b!1197584 () Bool)

(declare-fun e!769020 () Bool)

(assert (=> b!1197584 (= e!769019 e!769020)))

(declare-fun res!540449 () Bool)

(assert (=> b!1197584 (= res!540449 (not ((_ is Leaf!6077) (right!10830 (left!10500 (right!10830 t!4115))))))))

(assert (=> b!1197584 (=> res!540449 e!769020)))

(declare-fun b!1197585 () Bool)

(assert (=> b!1197585 (= e!769020 (inv!16074 (right!10830 (left!10500 (right!10830 t!4115)))))))

(assert (= (and d!342225 c!199140) b!1197583))

(assert (= (and d!342225 (not c!199140)) b!1197584))

(assert (= (and b!1197584 (not res!540449)) b!1197585))

(declare-fun m!1372635 () Bool)

(assert (=> b!1197583 m!1372635))

(declare-fun m!1372637 () Bool)

(assert (=> b!1197585 m!1372637))

(assert (=> b!1197329 d!342225))

(assert (=> b!1197269 d!342153))

(assert (=> b!1197269 d!342155))

(declare-fun b!1197589 () Bool)

(declare-fun e!769021 () Bool)

(declare-fun lt!410312 () List!12059)

(assert (=> b!1197589 (= e!769021 (or (not (= (list!4469 (right!10830 (left!10500 (right!10830 t!4115)))) Nil!12035)) (= lt!410312 (list!4469 (left!10500 (left!10500 (right!10830 t!4115)))))))))

(declare-fun b!1197587 () Bool)

(declare-fun e!769022 () List!12059)

(assert (=> b!1197587 (= e!769022 (Cons!12035 (h!17436 (list!4469 (left!10500 (left!10500 (right!10830 t!4115))))) (++!3069 (t!112389 (list!4469 (left!10500 (left!10500 (right!10830 t!4115))))) (list!4469 (right!10830 (left!10500 (right!10830 t!4115)))))))))

(declare-fun d!342227 () Bool)

(assert (=> d!342227 e!769021))

(declare-fun res!540450 () Bool)

(assert (=> d!342227 (=> (not res!540450) (not e!769021))))

(assert (=> d!342227 (= res!540450 (= (content!1681 lt!410312) ((_ map or) (content!1681 (list!4469 (left!10500 (left!10500 (right!10830 t!4115))))) (content!1681 (list!4469 (right!10830 (left!10500 (right!10830 t!4115))))))))))

(assert (=> d!342227 (= lt!410312 e!769022)))

(declare-fun c!199141 () Bool)

(assert (=> d!342227 (= c!199141 ((_ is Nil!12035) (list!4469 (left!10500 (left!10500 (right!10830 t!4115))))))))

(assert (=> d!342227 (= (++!3069 (list!4469 (left!10500 (left!10500 (right!10830 t!4115)))) (list!4469 (right!10830 (left!10500 (right!10830 t!4115))))) lt!410312)))

(declare-fun b!1197586 () Bool)

(assert (=> b!1197586 (= e!769022 (list!4469 (right!10830 (left!10500 (right!10830 t!4115)))))))

(declare-fun b!1197588 () Bool)

(declare-fun res!540451 () Bool)

(assert (=> b!1197588 (=> (not res!540451) (not e!769021))))

(assert (=> b!1197588 (= res!540451 (= (size!9555 lt!410312) (+ (size!9555 (list!4469 (left!10500 (left!10500 (right!10830 t!4115))))) (size!9555 (list!4469 (right!10830 (left!10500 (right!10830 t!4115))))))))))

(assert (= (and d!342227 c!199141) b!1197586))

(assert (= (and d!342227 (not c!199141)) b!1197587))

(assert (= (and d!342227 res!540450) b!1197588))

(assert (= (and b!1197588 res!540451) b!1197589))

(assert (=> b!1197587 m!1372133))

(declare-fun m!1372639 () Bool)

(assert (=> b!1197587 m!1372639))

(declare-fun m!1372641 () Bool)

(assert (=> d!342227 m!1372641))

(assert (=> d!342227 m!1372131))

(declare-fun m!1372643 () Bool)

(assert (=> d!342227 m!1372643))

(assert (=> d!342227 m!1372133))

(declare-fun m!1372645 () Bool)

(assert (=> d!342227 m!1372645))

(declare-fun m!1372647 () Bool)

(assert (=> b!1197588 m!1372647))

(assert (=> b!1197588 m!1372131))

(declare-fun m!1372649 () Bool)

(assert (=> b!1197588 m!1372649))

(assert (=> b!1197588 m!1372133))

(declare-fun m!1372651 () Bool)

(assert (=> b!1197588 m!1372651))

(assert (=> b!1197298 d!342227))

(declare-fun b!1197592 () Bool)

(declare-fun e!769024 () List!12059)

(assert (=> b!1197592 (= e!769024 (list!4470 (xs!6675 (left!10500 (left!10500 (right!10830 t!4115))))))))

(declare-fun b!1197593 () Bool)

(assert (=> b!1197593 (= e!769024 (++!3069 (list!4469 (left!10500 (left!10500 (left!10500 (right!10830 t!4115))))) (list!4469 (right!10830 (left!10500 (left!10500 (right!10830 t!4115)))))))))

(declare-fun d!342229 () Bool)

(declare-fun c!199142 () Bool)

(assert (=> d!342229 (= c!199142 ((_ is Empty!3968) (left!10500 (left!10500 (right!10830 t!4115)))))))

(declare-fun e!769023 () List!12059)

(assert (=> d!342229 (= (list!4469 (left!10500 (left!10500 (right!10830 t!4115)))) e!769023)))

(declare-fun b!1197590 () Bool)

(assert (=> b!1197590 (= e!769023 Nil!12035)))

(declare-fun b!1197591 () Bool)

(assert (=> b!1197591 (= e!769023 e!769024)))

(declare-fun c!199143 () Bool)

(assert (=> b!1197591 (= c!199143 ((_ is Leaf!6077) (left!10500 (left!10500 (right!10830 t!4115)))))))

(assert (= (and d!342229 c!199142) b!1197590))

(assert (= (and d!342229 (not c!199142)) b!1197591))

(assert (= (and b!1197591 c!199143) b!1197592))

(assert (= (and b!1197591 (not c!199143)) b!1197593))

(declare-fun m!1372653 () Bool)

(assert (=> b!1197592 m!1372653))

(declare-fun m!1372655 () Bool)

(assert (=> b!1197593 m!1372655))

(declare-fun m!1372657 () Bool)

(assert (=> b!1197593 m!1372657))

(assert (=> b!1197593 m!1372655))

(assert (=> b!1197593 m!1372657))

(declare-fun m!1372659 () Bool)

(assert (=> b!1197593 m!1372659))

(assert (=> b!1197298 d!342229))

(declare-fun b!1197596 () Bool)

(declare-fun e!769026 () List!12059)

(assert (=> b!1197596 (= e!769026 (list!4470 (xs!6675 (right!10830 (left!10500 (right!10830 t!4115))))))))

(declare-fun b!1197597 () Bool)

(assert (=> b!1197597 (= e!769026 (++!3069 (list!4469 (left!10500 (right!10830 (left!10500 (right!10830 t!4115))))) (list!4469 (right!10830 (right!10830 (left!10500 (right!10830 t!4115)))))))))

(declare-fun d!342231 () Bool)

(declare-fun c!199144 () Bool)

(assert (=> d!342231 (= c!199144 ((_ is Empty!3968) (right!10830 (left!10500 (right!10830 t!4115)))))))

(declare-fun e!769025 () List!12059)

(assert (=> d!342231 (= (list!4469 (right!10830 (left!10500 (right!10830 t!4115)))) e!769025)))

(declare-fun b!1197594 () Bool)

(assert (=> b!1197594 (= e!769025 Nil!12035)))

(declare-fun b!1197595 () Bool)

(assert (=> b!1197595 (= e!769025 e!769026)))

(declare-fun c!199145 () Bool)

(assert (=> b!1197595 (= c!199145 ((_ is Leaf!6077) (right!10830 (left!10500 (right!10830 t!4115)))))))

(assert (= (and d!342231 c!199144) b!1197594))

(assert (= (and d!342231 (not c!199144)) b!1197595))

(assert (= (and b!1197595 c!199145) b!1197596))

(assert (= (and b!1197595 (not c!199145)) b!1197597))

(declare-fun m!1372661 () Bool)

(assert (=> b!1197596 m!1372661))

(declare-fun m!1372663 () Bool)

(assert (=> b!1197597 m!1372663))

(declare-fun m!1372665 () Bool)

(assert (=> b!1197597 m!1372665))

(assert (=> b!1197597 m!1372663))

(assert (=> b!1197597 m!1372665))

(declare-fun m!1372667 () Bool)

(assert (=> b!1197597 m!1372667))

(assert (=> b!1197298 d!342231))

(declare-fun b!1197598 () Bool)

(declare-fun res!540457 () Bool)

(declare-fun e!769028 () Bool)

(assert (=> b!1197598 (=> (not res!540457) (not e!769028))))

(assert (=> b!1197598 (= res!540457 (<= (- (height!561 (left!10500 (right!10830 (left!10500 t!4115)))) (height!561 (right!10830 (right!10830 (left!10500 t!4115))))) 1))))

(declare-fun b!1197599 () Bool)

(declare-fun e!769027 () Bool)

(assert (=> b!1197599 (= e!769027 e!769028)))

(declare-fun res!540455 () Bool)

(assert (=> b!1197599 (=> (not res!540455) (not e!769028))))

(assert (=> b!1197599 (= res!540455 (<= (- 1) (- (height!561 (left!10500 (right!10830 (left!10500 t!4115)))) (height!561 (right!10830 (right!10830 (left!10500 t!4115)))))))))

(declare-fun b!1197601 () Bool)

(declare-fun res!540453 () Bool)

(assert (=> b!1197601 (=> (not res!540453) (not e!769028))))

(assert (=> b!1197601 (= res!540453 (isBalanced!1153 (left!10500 (right!10830 (left!10500 t!4115)))))))

(declare-fun b!1197602 () Bool)

(declare-fun res!540454 () Bool)

(assert (=> b!1197602 (=> (not res!540454) (not e!769028))))

(assert (=> b!1197602 (= res!540454 (isBalanced!1153 (right!10830 (right!10830 (left!10500 t!4115)))))))

(declare-fun b!1197603 () Bool)

(declare-fun res!540456 () Bool)

(assert (=> b!1197603 (=> (not res!540456) (not e!769028))))

(assert (=> b!1197603 (= res!540456 (not (isEmpty!7248 (left!10500 (right!10830 (left!10500 t!4115))))))))

(declare-fun b!1197600 () Bool)

(assert (=> b!1197600 (= e!769028 (not (isEmpty!7248 (right!10830 (right!10830 (left!10500 t!4115))))))))

(declare-fun d!342233 () Bool)

(declare-fun res!540452 () Bool)

(assert (=> d!342233 (=> res!540452 e!769027)))

(assert (=> d!342233 (= res!540452 (not ((_ is Node!3968) (right!10830 (left!10500 t!4115)))))))

(assert (=> d!342233 (= (isBalanced!1153 (right!10830 (left!10500 t!4115))) e!769027)))

(assert (= (and d!342233 (not res!540452)) b!1197599))

(assert (= (and b!1197599 res!540455) b!1197598))

(assert (= (and b!1197598 res!540457) b!1197601))

(assert (= (and b!1197601 res!540453) b!1197602))

(assert (= (and b!1197602 res!540454) b!1197603))

(assert (= (and b!1197603 res!540456) b!1197600))

(declare-fun m!1372669 () Bool)

(assert (=> b!1197601 m!1372669))

(declare-fun m!1372671 () Bool)

(assert (=> b!1197600 m!1372671))

(assert (=> b!1197599 m!1372625))

(assert (=> b!1197599 m!1372627))

(declare-fun m!1372673 () Bool)

(assert (=> b!1197603 m!1372673))

(declare-fun m!1372675 () Bool)

(assert (=> b!1197602 m!1372675))

(assert (=> b!1197598 m!1372625))

(assert (=> b!1197598 m!1372627))

(assert (=> b!1197261 d!342233))

(declare-fun d!342235 () Bool)

(declare-fun lt!410313 () Int)

(assert (=> d!342235 (>= lt!410313 0)))

(declare-fun e!769029 () Int)

(assert (=> d!342235 (= lt!410313 e!769029)))

(declare-fun c!199146 () Bool)

(assert (=> d!342235 (= c!199146 ((_ is Nil!12035) (t!112389 (list!4469 t!4115))))))

(assert (=> d!342235 (= (size!9555 (t!112389 (list!4469 t!4115))) lt!410313)))

(declare-fun b!1197604 () Bool)

(assert (=> b!1197604 (= e!769029 0)))

(declare-fun b!1197605 () Bool)

(assert (=> b!1197605 (= e!769029 (+ 1 (size!9555 (t!112389 (t!112389 (list!4469 t!4115))))))))

(assert (= (and d!342235 c!199146) b!1197604))

(assert (= (and d!342235 (not c!199146)) b!1197605))

(declare-fun m!1372677 () Bool)

(assert (=> b!1197605 m!1372677))

(assert (=> b!1197230 d!342235))

(declare-fun d!342237 () Bool)

(declare-fun lt!410314 () Bool)

(assert (=> d!342237 (= lt!410314 (isEmpty!7250 (list!4469 (right!10830 (right!10830 t!4115)))))))

(assert (=> d!342237 (= lt!410314 (= (size!9554 (right!10830 (right!10830 t!4115))) 0))))

(assert (=> d!342237 (= (isEmpty!7248 (right!10830 (right!10830 t!4115))) lt!410314)))

(declare-fun bs!288151 () Bool)

(assert (= bs!288151 d!342237))

(assert (=> bs!288151 m!1371933))

(assert (=> bs!288151 m!1371933))

(declare-fun m!1372679 () Bool)

(assert (=> bs!288151 m!1372679))

(assert (=> bs!288151 m!1372179))

(assert (=> b!1197271 d!342237))

(assert (=> d!341973 d!342109))

(assert (=> d!341973 d!342115))

(declare-fun d!342239 () Bool)

(assert (=> d!342239 (= (max!0 (height!561 (left!10500 (right!10830 t!4115))) (height!561 (right!10830 (right!10830 t!4115)))) (ite (< (height!561 (left!10500 (right!10830 t!4115))) (height!561 (right!10830 (right!10830 t!4115)))) (height!561 (right!10830 (right!10830 t!4115))) (height!561 (left!10500 (right!10830 t!4115)))))))

(assert (=> b!1197318 d!342239))

(assert (=> b!1197318 d!342153))

(assert (=> b!1197318 d!342155))

(declare-fun d!342241 () Bool)

(declare-fun res!540458 () Bool)

(declare-fun e!769030 () Bool)

(assert (=> d!342241 (=> (not res!540458) (not e!769030))))

(assert (=> d!342241 (= res!540458 (= (csize!8166 (left!10500 (right!10830 t!4115))) (+ (size!9554 (left!10500 (left!10500 (right!10830 t!4115)))) (size!9554 (right!10830 (left!10500 (right!10830 t!4115)))))))))

(assert (=> d!342241 (= (inv!16073 (left!10500 (right!10830 t!4115))) e!769030)))

(declare-fun b!1197606 () Bool)

(declare-fun res!540459 () Bool)

(assert (=> b!1197606 (=> (not res!540459) (not e!769030))))

(assert (=> b!1197606 (= res!540459 (and (not (= (left!10500 (left!10500 (right!10830 t!4115))) Empty!3968)) (not (= (right!10830 (left!10500 (right!10830 t!4115))) Empty!3968))))))

(declare-fun b!1197607 () Bool)

(declare-fun res!540460 () Bool)

(assert (=> b!1197607 (=> (not res!540460) (not e!769030))))

(assert (=> b!1197607 (= res!540460 (= (cheight!4179 (left!10500 (right!10830 t!4115))) (+ (max!0 (height!561 (left!10500 (left!10500 (right!10830 t!4115)))) (height!561 (right!10830 (left!10500 (right!10830 t!4115))))) 1)))))

(declare-fun b!1197608 () Bool)

(assert (=> b!1197608 (= e!769030 (<= 0 (cheight!4179 (left!10500 (right!10830 t!4115)))))))

(assert (= (and d!342241 res!540458) b!1197606))

(assert (= (and b!1197606 res!540459) b!1197607))

(assert (= (and b!1197607 res!540460) b!1197608))

(declare-fun m!1372681 () Bool)

(assert (=> d!342241 m!1372681))

(declare-fun m!1372683 () Bool)

(assert (=> d!342241 m!1372683))

(assert (=> b!1197607 m!1372485))

(assert (=> b!1197607 m!1372487))

(assert (=> b!1197607 m!1372485))

(assert (=> b!1197607 m!1372487))

(declare-fun m!1372685 () Bool)

(assert (=> b!1197607 m!1372685))

(assert (=> b!1197235 d!342241))

(declare-fun d!342243 () Bool)

(assert (=> d!342243 (= (inv!16072 (xs!6675 (right!10830 (right!10830 t!4115)))) (<= (size!9555 (innerList!4028 (xs!6675 (right!10830 (right!10830 t!4115))))) 2147483647))))

(declare-fun bs!288152 () Bool)

(assert (= bs!288152 d!342243))

(declare-fun m!1372687 () Bool)

(assert (=> bs!288152 m!1372687))

(assert (=> b!1197333 d!342243))

(declare-fun d!342245 () Bool)

(declare-fun lt!410315 () Int)

(assert (=> d!342245 (= lt!410315 (size!9555 (list!4469 (left!10500 (left!10500 t!4115)))))))

(assert (=> d!342245 (= lt!410315 (ite ((_ is Empty!3968) (left!10500 (left!10500 t!4115))) 0 (ite ((_ is Leaf!6077) (left!10500 (left!10500 t!4115))) (csize!8167 (left!10500 (left!10500 t!4115))) (csize!8166 (left!10500 (left!10500 t!4115))))))))

(assert (=> d!342245 (= (size!9554 (left!10500 (left!10500 t!4115))) lt!410315)))

(declare-fun bs!288153 () Bool)

(assert (= bs!288153 d!342245))

(assert (=> bs!288153 m!1371921))

(assert (=> bs!288153 m!1371921))

(assert (=> bs!288153 m!1372157))

(assert (=> d!341981 d!342245))

(declare-fun d!342247 () Bool)

(declare-fun lt!410316 () Int)

(assert (=> d!342247 (= lt!410316 (size!9555 (list!4469 (right!10830 (left!10500 t!4115)))))))

(assert (=> d!342247 (= lt!410316 (ite ((_ is Empty!3968) (right!10830 (left!10500 t!4115))) 0 (ite ((_ is Leaf!6077) (right!10830 (left!10500 t!4115))) (csize!8167 (right!10830 (left!10500 t!4115))) (csize!8166 (right!10830 (left!10500 t!4115))))))))

(assert (=> d!342247 (= (size!9554 (right!10830 (left!10500 t!4115))) lt!410316)))

(declare-fun bs!288154 () Bool)

(assert (= bs!288154 d!342247))

(assert (=> bs!288154 m!1371923))

(assert (=> bs!288154 m!1371923))

(assert (=> bs!288154 m!1372159))

(assert (=> d!341981 d!342247))

(assert (=> d!341997 d!342213))

(assert (=> d!341997 d!342005))

(declare-fun d!342249 () Bool)

(assert (=> d!342249 (= (max!0 (height!561 (left!10500 t!4115)) (height!561 (right!10830 t!4115))) (ite (< (height!561 (left!10500 t!4115)) (height!561 (right!10830 t!4115))) (height!561 (right!10830 t!4115)) (height!561 (left!10500 t!4115))))))

(assert (=> b!1197248 d!342249))

(assert (=> b!1197248 d!341977))

(assert (=> b!1197248 d!341979))

(declare-fun b!1197609 () Bool)

(declare-fun res!540466 () Bool)

(declare-fun e!769032 () Bool)

(assert (=> b!1197609 (=> (not res!540466) (not e!769032))))

(assert (=> b!1197609 (= res!540466 (<= (- (height!561 (left!10500 (right!10830 (right!10830 t!4115)))) (height!561 (right!10830 (right!10830 (right!10830 t!4115))))) 1))))

(declare-fun b!1197610 () Bool)

(declare-fun e!769031 () Bool)

(assert (=> b!1197610 (= e!769031 e!769032)))

(declare-fun res!540464 () Bool)

(assert (=> b!1197610 (=> (not res!540464) (not e!769032))))

(assert (=> b!1197610 (= res!540464 (<= (- 1) (- (height!561 (left!10500 (right!10830 (right!10830 t!4115)))) (height!561 (right!10830 (right!10830 (right!10830 t!4115)))))))))

(declare-fun b!1197612 () Bool)

(declare-fun res!540462 () Bool)

(assert (=> b!1197612 (=> (not res!540462) (not e!769032))))

(assert (=> b!1197612 (= res!540462 (isBalanced!1153 (left!10500 (right!10830 (right!10830 t!4115)))))))

(declare-fun b!1197613 () Bool)

(declare-fun res!540463 () Bool)

(assert (=> b!1197613 (=> (not res!540463) (not e!769032))))

(assert (=> b!1197613 (= res!540463 (isBalanced!1153 (right!10830 (right!10830 (right!10830 t!4115)))))))

(declare-fun b!1197614 () Bool)

(declare-fun res!540465 () Bool)

(assert (=> b!1197614 (=> (not res!540465) (not e!769032))))

(assert (=> b!1197614 (= res!540465 (not (isEmpty!7248 (left!10500 (right!10830 (right!10830 t!4115))))))))

(declare-fun b!1197611 () Bool)

(assert (=> b!1197611 (= e!769032 (not (isEmpty!7248 (right!10830 (right!10830 (right!10830 t!4115))))))))

(declare-fun d!342251 () Bool)

(declare-fun res!540461 () Bool)

(assert (=> d!342251 (=> res!540461 e!769031)))

(assert (=> d!342251 (= res!540461 (not ((_ is Node!3968) (right!10830 (right!10830 t!4115)))))))

(assert (=> d!342251 (= (isBalanced!1153 (right!10830 (right!10830 t!4115))) e!769031)))

(assert (= (and d!342251 (not res!540461)) b!1197610))

(assert (= (and b!1197610 res!540464) b!1197609))

(assert (= (and b!1197609 res!540466) b!1197612))

(assert (= (and b!1197612 res!540462) b!1197613))

(assert (= (and b!1197613 res!540463) b!1197614))

(assert (= (and b!1197614 res!540465) b!1197611))

(declare-fun m!1372689 () Bool)

(assert (=> b!1197612 m!1372689))

(declare-fun m!1372691 () Bool)

(assert (=> b!1197611 m!1372691))

(assert (=> b!1197610 m!1372379))

(assert (=> b!1197610 m!1372381))

(declare-fun m!1372693 () Bool)

(assert (=> b!1197614 m!1372693))

(declare-fun m!1372695 () Bool)

(assert (=> b!1197613 m!1372695))

(assert (=> b!1197609 m!1372379))

(assert (=> b!1197609 m!1372381))

(assert (=> b!1197273 d!342251))

(declare-fun d!342253 () Bool)

(declare-fun res!540467 () Bool)

(declare-fun e!769033 () Bool)

(assert (=> d!342253 (=> (not res!540467) (not e!769033))))

(assert (=> d!342253 (= res!540467 (<= (size!9555 (list!4470 (xs!6675 (left!10500 (right!10830 t!4115))))) 512))))

(assert (=> d!342253 (= (inv!16074 (left!10500 (right!10830 t!4115))) e!769033)))

(declare-fun b!1197615 () Bool)

(declare-fun res!540468 () Bool)

(assert (=> b!1197615 (=> (not res!540468) (not e!769033))))

(assert (=> b!1197615 (= res!540468 (= (csize!8167 (left!10500 (right!10830 t!4115))) (size!9555 (list!4470 (xs!6675 (left!10500 (right!10830 t!4115)))))))))

(declare-fun b!1197616 () Bool)

(assert (=> b!1197616 (= e!769033 (and (> (csize!8167 (left!10500 (right!10830 t!4115))) 0) (<= (csize!8167 (left!10500 (right!10830 t!4115))) 512)))))

(assert (= (and d!342253 res!540467) b!1197615))

(assert (= (and b!1197615 res!540468) b!1197616))

(assert (=> d!342253 m!1372129))

(assert (=> d!342253 m!1372129))

(declare-fun m!1372697 () Bool)

(assert (=> d!342253 m!1372697))

(assert (=> b!1197615 m!1372129))

(assert (=> b!1197615 m!1372129))

(assert (=> b!1197615 m!1372697))

(assert (=> b!1197237 d!342253))

(declare-fun b!1197617 () Bool)

(declare-fun e!769034 () Bool)

(declare-fun tp!340928 () Bool)

(assert (=> b!1197617 (= e!769034 (and tp_is_empty!5961 tp!340928))))

(assert (=> b!1197327 (= tp!340905 e!769034)))

(assert (= (and b!1197327 ((_ is Cons!12035) (t!112389 (t!112389 (innerList!4028 (xs!6675 t!4115)))))) b!1197617))

(declare-fun b!1197618 () Bool)

(declare-fun e!769035 () Bool)

(declare-fun tp!340929 () Bool)

(assert (=> b!1197618 (= e!769035 (and tp_is_empty!5961 tp!340929))))

(assert (=> b!1197331 (= tp!340907 e!769035)))

(assert (= (and b!1197331 ((_ is Cons!12035) (innerList!4028 (xs!6675 (left!10500 (right!10830 t!4115)))))) b!1197618))

(declare-fun b!1197619 () Bool)

(declare-fun e!769036 () Bool)

(declare-fun tp!340930 () Bool)

(assert (=> b!1197619 (= e!769036 (and tp_is_empty!5961 tp!340930))))

(assert (=> b!1197322 (= tp!340898 e!769036)))

(assert (= (and b!1197322 ((_ is Cons!12035) (innerList!4028 (xs!6675 (left!10500 (left!10500 t!4115)))))) b!1197619))

(declare-fun tp!340933 () Bool)

(declare-fun b!1197620 () Bool)

(declare-fun e!769038 () Bool)

(declare-fun tp!340932 () Bool)

(assert (=> b!1197620 (= e!769038 (and (inv!16071 (left!10500 (left!10500 (right!10830 (right!10830 t!4115))))) tp!340932 (inv!16071 (right!10830 (left!10500 (right!10830 (right!10830 t!4115))))) tp!340933))))

(declare-fun b!1197622 () Bool)

(declare-fun e!769037 () Bool)

(declare-fun tp!340931 () Bool)

(assert (=> b!1197622 (= e!769037 tp!340931)))

(declare-fun b!1197621 () Bool)

(assert (=> b!1197621 (= e!769038 (and (inv!16072 (xs!6675 (left!10500 (right!10830 (right!10830 t!4115))))) e!769037))))

(assert (=> b!1197332 (= tp!340911 (and (inv!16071 (left!10500 (right!10830 (right!10830 t!4115)))) e!769038))))

(assert (= (and b!1197332 ((_ is Node!3968) (left!10500 (right!10830 (right!10830 t!4115))))) b!1197620))

(assert (= b!1197621 b!1197622))

(assert (= (and b!1197332 ((_ is Leaf!6077) (left!10500 (right!10830 (right!10830 t!4115))))) b!1197621))

(declare-fun m!1372699 () Bool)

(assert (=> b!1197620 m!1372699))

(declare-fun m!1372701 () Bool)

(assert (=> b!1197620 m!1372701))

(declare-fun m!1372703 () Bool)

(assert (=> b!1197621 m!1372703))

(assert (=> b!1197332 m!1372201))

(declare-fun tp!340935 () Bool)

(declare-fun e!769040 () Bool)

(declare-fun tp!340936 () Bool)

(declare-fun b!1197623 () Bool)

(assert (=> b!1197623 (= e!769040 (and (inv!16071 (left!10500 (right!10830 (right!10830 (right!10830 t!4115))))) tp!340935 (inv!16071 (right!10830 (right!10830 (right!10830 (right!10830 t!4115))))) tp!340936))))

(declare-fun b!1197625 () Bool)

(declare-fun e!769039 () Bool)

(declare-fun tp!340934 () Bool)

(assert (=> b!1197625 (= e!769039 tp!340934)))

(declare-fun b!1197624 () Bool)

(assert (=> b!1197624 (= e!769040 (and (inv!16072 (xs!6675 (right!10830 (right!10830 (right!10830 t!4115))))) e!769039))))

(assert (=> b!1197332 (= tp!340912 (and (inv!16071 (right!10830 (right!10830 (right!10830 t!4115)))) e!769040))))

(assert (= (and b!1197332 ((_ is Node!3968) (right!10830 (right!10830 (right!10830 t!4115))))) b!1197623))

(assert (= b!1197624 b!1197625))

(assert (= (and b!1197332 ((_ is Leaf!6077) (right!10830 (right!10830 (right!10830 t!4115))))) b!1197624))

(declare-fun m!1372705 () Bool)

(assert (=> b!1197623 m!1372705))

(declare-fun m!1372707 () Bool)

(assert (=> b!1197623 m!1372707))

(declare-fun m!1372709 () Bool)

(assert (=> b!1197624 m!1372709))

(assert (=> b!1197332 m!1372203))

(declare-fun tp!340939 () Bool)

(declare-fun tp!340938 () Bool)

(declare-fun e!769042 () Bool)

(declare-fun b!1197626 () Bool)

(assert (=> b!1197626 (= e!769042 (and (inv!16071 (left!10500 (left!10500 (right!10830 (left!10500 t!4115))))) tp!340938 (inv!16071 (right!10830 (left!10500 (right!10830 (left!10500 t!4115))))) tp!340939))))

(declare-fun b!1197628 () Bool)

(declare-fun e!769041 () Bool)

(declare-fun tp!340937 () Bool)

(assert (=> b!1197628 (= e!769041 tp!340937)))

(declare-fun b!1197627 () Bool)

(assert (=> b!1197627 (= e!769042 (and (inv!16072 (xs!6675 (left!10500 (right!10830 (left!10500 t!4115))))) e!769041))))

(assert (=> b!1197323 (= tp!340902 (and (inv!16071 (left!10500 (right!10830 (left!10500 t!4115)))) e!769042))))

(assert (= (and b!1197323 ((_ is Node!3968) (left!10500 (right!10830 (left!10500 t!4115))))) b!1197626))

(assert (= b!1197627 b!1197628))

(assert (= (and b!1197323 ((_ is Leaf!6077) (left!10500 (right!10830 (left!10500 t!4115))))) b!1197627))

(declare-fun m!1372711 () Bool)

(assert (=> b!1197626 m!1372711))

(declare-fun m!1372713 () Bool)

(assert (=> b!1197626 m!1372713))

(declare-fun m!1372715 () Bool)

(assert (=> b!1197627 m!1372715))

(assert (=> b!1197323 m!1372189))

(declare-fun e!769044 () Bool)

(declare-fun b!1197629 () Bool)

(declare-fun tp!340942 () Bool)

(declare-fun tp!340941 () Bool)

(assert (=> b!1197629 (= e!769044 (and (inv!16071 (left!10500 (right!10830 (right!10830 (left!10500 t!4115))))) tp!340941 (inv!16071 (right!10830 (right!10830 (right!10830 (left!10500 t!4115))))) tp!340942))))

(declare-fun b!1197631 () Bool)

(declare-fun e!769043 () Bool)

(declare-fun tp!340940 () Bool)

(assert (=> b!1197631 (= e!769043 tp!340940)))

(declare-fun b!1197630 () Bool)

(assert (=> b!1197630 (= e!769044 (and (inv!16072 (xs!6675 (right!10830 (right!10830 (left!10500 t!4115))))) e!769043))))

(assert (=> b!1197323 (= tp!340903 (and (inv!16071 (right!10830 (right!10830 (left!10500 t!4115)))) e!769044))))

(assert (= (and b!1197323 ((_ is Node!3968) (right!10830 (right!10830 (left!10500 t!4115))))) b!1197629))

(assert (= b!1197630 b!1197631))

(assert (= (and b!1197323 ((_ is Leaf!6077) (right!10830 (right!10830 (left!10500 t!4115))))) b!1197630))

(declare-fun m!1372717 () Bool)

(assert (=> b!1197629 m!1372717))

(declare-fun m!1372719 () Bool)

(assert (=> b!1197629 m!1372719))

(declare-fun m!1372721 () Bool)

(assert (=> b!1197630 m!1372721))

(assert (=> b!1197323 m!1372191))

(declare-fun b!1197632 () Bool)

(declare-fun e!769045 () Bool)

(declare-fun tp!340943 () Bool)

(assert (=> b!1197632 (= e!769045 (and tp_is_empty!5961 tp!340943))))

(assert (=> b!1197326 (= tp!340904 e!769045)))

(assert (= (and b!1197326 ((_ is Cons!12035) (t!112389 (innerList!4028 (xs!6675 (right!10830 t!4115)))))) b!1197632))

(declare-fun b!1197633 () Bool)

(declare-fun e!769046 () Bool)

(declare-fun tp!340944 () Bool)

(assert (=> b!1197633 (= e!769046 (and tp_is_empty!5961 tp!340944))))

(assert (=> b!1197328 (= tp!340906 e!769046)))

(assert (= (and b!1197328 ((_ is Cons!12035) (t!112389 (innerList!4028 (xs!6675 (left!10500 t!4115)))))) b!1197633))

(declare-fun b!1197634 () Bool)

(declare-fun e!769047 () Bool)

(declare-fun tp!340945 () Bool)

(assert (=> b!1197634 (= e!769047 (and tp_is_empty!5961 tp!340945))))

(assert (=> b!1197334 (= tp!340910 e!769047)))

(assert (= (and b!1197334 ((_ is Cons!12035) (innerList!4028 (xs!6675 (right!10830 (right!10830 t!4115)))))) b!1197634))

(declare-fun b!1197635 () Bool)

(declare-fun e!769049 () Bool)

(declare-fun tp!340948 () Bool)

(declare-fun tp!340947 () Bool)

(assert (=> b!1197635 (= e!769049 (and (inv!16071 (left!10500 (left!10500 (left!10500 (right!10830 t!4115))))) tp!340947 (inv!16071 (right!10830 (left!10500 (left!10500 (right!10830 t!4115))))) tp!340948))))

(declare-fun b!1197637 () Bool)

(declare-fun e!769048 () Bool)

(declare-fun tp!340946 () Bool)

(assert (=> b!1197637 (= e!769048 tp!340946)))

(declare-fun b!1197636 () Bool)

(assert (=> b!1197636 (= e!769049 (and (inv!16072 (xs!6675 (left!10500 (left!10500 (right!10830 t!4115))))) e!769048))))

(assert (=> b!1197329 (= tp!340908 (and (inv!16071 (left!10500 (left!10500 (right!10830 t!4115)))) e!769049))))

(assert (= (and b!1197329 ((_ is Node!3968) (left!10500 (left!10500 (right!10830 t!4115))))) b!1197635))

(assert (= b!1197636 b!1197637))

(assert (= (and b!1197329 ((_ is Leaf!6077) (left!10500 (left!10500 (right!10830 t!4115))))) b!1197636))

(declare-fun m!1372723 () Bool)

(assert (=> b!1197635 m!1372723))

(declare-fun m!1372725 () Bool)

(assert (=> b!1197635 m!1372725))

(declare-fun m!1372727 () Bool)

(assert (=> b!1197636 m!1372727))

(assert (=> b!1197329 m!1372195))

(declare-fun e!769051 () Bool)

(declare-fun b!1197638 () Bool)

(declare-fun tp!340950 () Bool)

(declare-fun tp!340951 () Bool)

(assert (=> b!1197638 (= e!769051 (and (inv!16071 (left!10500 (right!10830 (left!10500 (right!10830 t!4115))))) tp!340950 (inv!16071 (right!10830 (right!10830 (left!10500 (right!10830 t!4115))))) tp!340951))))

(declare-fun b!1197640 () Bool)

(declare-fun e!769050 () Bool)

(declare-fun tp!340949 () Bool)

(assert (=> b!1197640 (= e!769050 tp!340949)))

(declare-fun b!1197639 () Bool)

(assert (=> b!1197639 (= e!769051 (and (inv!16072 (xs!6675 (right!10830 (left!10500 (right!10830 t!4115))))) e!769050))))

(assert (=> b!1197329 (= tp!340909 (and (inv!16071 (right!10830 (left!10500 (right!10830 t!4115)))) e!769051))))

(assert (= (and b!1197329 ((_ is Node!3968) (right!10830 (left!10500 (right!10830 t!4115))))) b!1197638))

(assert (= b!1197639 b!1197640))

(assert (= (and b!1197329 ((_ is Leaf!6077) (right!10830 (left!10500 (right!10830 t!4115))))) b!1197639))

(declare-fun m!1372729 () Bool)

(assert (=> b!1197638 m!1372729))

(declare-fun m!1372731 () Bool)

(assert (=> b!1197638 m!1372731))

(declare-fun m!1372733 () Bool)

(assert (=> b!1197639 m!1372733))

(assert (=> b!1197329 m!1372197))

(declare-fun b!1197641 () Bool)

(declare-fun e!769052 () Bool)

(declare-fun tp!340952 () Bool)

(assert (=> b!1197641 (= e!769052 (and tp_is_empty!5961 tp!340952))))

(assert (=> b!1197325 (= tp!340901 e!769052)))

(assert (= (and b!1197325 ((_ is Cons!12035) (innerList!4028 (xs!6675 (right!10830 (left!10500 t!4115)))))) b!1197641))

(declare-fun tp!340955 () Bool)

(declare-fun tp!340954 () Bool)

(declare-fun b!1197642 () Bool)

(declare-fun e!769054 () Bool)

(assert (=> b!1197642 (= e!769054 (and (inv!16071 (left!10500 (left!10500 (left!10500 (left!10500 t!4115))))) tp!340954 (inv!16071 (right!10830 (left!10500 (left!10500 (left!10500 t!4115))))) tp!340955))))

(declare-fun b!1197644 () Bool)

(declare-fun e!769053 () Bool)

(declare-fun tp!340953 () Bool)

(assert (=> b!1197644 (= e!769053 tp!340953)))

(declare-fun b!1197643 () Bool)

(assert (=> b!1197643 (= e!769054 (and (inv!16072 (xs!6675 (left!10500 (left!10500 (left!10500 t!4115))))) e!769053))))

(assert (=> b!1197320 (= tp!340899 (and (inv!16071 (left!10500 (left!10500 (left!10500 t!4115)))) e!769054))))

(assert (= (and b!1197320 ((_ is Node!3968) (left!10500 (left!10500 (left!10500 t!4115))))) b!1197642))

(assert (= b!1197643 b!1197644))

(assert (= (and b!1197320 ((_ is Leaf!6077) (left!10500 (left!10500 (left!10500 t!4115))))) b!1197643))

(declare-fun m!1372735 () Bool)

(assert (=> b!1197642 m!1372735))

(declare-fun m!1372737 () Bool)

(assert (=> b!1197642 m!1372737))

(declare-fun m!1372739 () Bool)

(assert (=> b!1197643 m!1372739))

(assert (=> b!1197320 m!1372183))

(declare-fun tp!340957 () Bool)

(declare-fun b!1197645 () Bool)

(declare-fun e!769056 () Bool)

(declare-fun tp!340958 () Bool)

(assert (=> b!1197645 (= e!769056 (and (inv!16071 (left!10500 (right!10830 (left!10500 (left!10500 t!4115))))) tp!340957 (inv!16071 (right!10830 (right!10830 (left!10500 (left!10500 t!4115))))) tp!340958))))

(declare-fun b!1197647 () Bool)

(declare-fun e!769055 () Bool)

(declare-fun tp!340956 () Bool)

(assert (=> b!1197647 (= e!769055 tp!340956)))

(declare-fun b!1197646 () Bool)

(assert (=> b!1197646 (= e!769056 (and (inv!16072 (xs!6675 (right!10830 (left!10500 (left!10500 t!4115))))) e!769055))))

(assert (=> b!1197320 (= tp!340900 (and (inv!16071 (right!10830 (left!10500 (left!10500 t!4115)))) e!769056))))

(assert (= (and b!1197320 ((_ is Node!3968) (right!10830 (left!10500 (left!10500 t!4115))))) b!1197645))

(assert (= b!1197646 b!1197647))

(assert (= (and b!1197320 ((_ is Leaf!6077) (right!10830 (left!10500 (left!10500 t!4115))))) b!1197646))

(declare-fun m!1372741 () Bool)

(assert (=> b!1197645 m!1372741))

(declare-fun m!1372743 () Bool)

(assert (=> b!1197645 m!1372743))

(declare-fun m!1372745 () Bool)

(assert (=> b!1197646 m!1372745))

(assert (=> b!1197320 m!1372185))

(check-sat (not b!1197444) (not b!1197624) (not b!1197637) (not b!1197507) (not b!1197451) (not b!1197635) (not d!342253) (not d!342227) (not b!1197320) (not b!1197522) (not b!1197574) (not b!1197607) (not b!1197493) (not b!1197488) (not b!1197610) (not b!1197621) (not b!1197623) (not b!1197323) (not b!1197332) (not b!1197557) (not b!1197514) (not d!342157) (not b!1197627) (not b!1197329) (not b!1197587) (not b!1197491) (not b!1197560) (not d!342197) (not b!1197477) (not b!1197573) (not d!342147) (not b!1197499) (not b!1197609) (not b!1197630) (not b!1197538) (not b!1197501) (not b!1197479) (not d!342167) (not b!1197473) (not b!1197571) (not b!1197636) (not b!1197585) (not b!1197625) (not b!1197519) (not b!1197529) (not b!1197562) (not b!1197582) (not b!1197633) (not d!342191) (not d!342165) (not b!1197494) (not b!1197485) (not b!1197446) (not b!1197639) (not d!342181) (not b!1197578) (not b!1197638) (not b!1197534) (not b!1197640) (not b!1197564) (not b!1197601) (not b!1197463) (not b!1197566) (not b!1197618) (not b!1197580) (not d!342111) (not d!342087) (not b!1197619) (not b!1197645) (not b!1197598) (not b!1197526) (not b!1197617) (not b!1197644) (not b!1197611) (not b!1197570) (not b!1197583) (not b!1197548) (not b!1197471) (not b!1197517) (not b!1197524) (not b!1197513) (not b!1197489) (not d!342243) (not b!1197495) (not b!1197632) (not b!1197599) (not b!1197505) (not b!1197449) (not d!342247) (not b!1197553) (not d!342091) (not b!1197622) (not b!1197503) (not b!1197457) (not d!342173) (not b!1197533) (not b!1197537) (not d!342241) (not b!1197593) (not b!1197628) (not d!342199) (not b!1197504) (not d!342237) (not b!1197600) (not b!1197615) (not b!1197647) (not b!1197602) (not b!1197634) (not b!1197510) (not b!1197509) (not b!1197459) (not b!1197629) (not b!1197597) (not d!342219) (not b!1197643) (not d!342121) (not d!342131) (not b!1197603) (not b!1197614) (not b!1197552) (not d!342115) (not b!1197568) (not b!1197506) (not b!1197496) (not b!1197492) (not b!1197543) (not b!1197484) (not d!342169) (not b!1197642) (not b!1197465) (not b!1197646) (not b!1197556) (not b!1197480) (not d!342101) (not b!1197613) (not b!1197612) (not d!342245) (not d!342187) (not b!1197502) (not b!1197490) (not d!342109) (not b!1197596) (not b!1197626) (not b!1197588) tp_is_empty!5961 (not d!342141) (not b!1197542) (not b!1197462) (not b!1197498) (not b!1197576) (not d!342099) (not b!1197547) (not b!1197475) (not b!1197528) (not b!1197460) (not b!1197453) (not b!1197631) (not b!1197455) (not b!1197592) (not b!1197605) (not b!1197539) (not b!1197551) (not b!1197620) (not b!1197641))
(check-sat)
