; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106204 () Bool)

(assert start!106204)

(declare-fun b!1194102 () Bool)

(declare-fun e!767229 () Bool)

(declare-datatypes ((T!21600 0))(
  ( (T!21601 (val!3862 Int)) )
))
(declare-datatypes ((List!12041 0))(
  ( (Nil!12017) (Cons!12017 (h!17418 T!21600) (t!112319 List!12041)) )
))
(declare-fun lt!409923 () List!12041)

(declare-fun e!767232 () List!12041)

(assert (=> b!1194102 (= e!767229 (= lt!409923 e!767232))))

(declare-fun c!198427 () Bool)

(declare-fun until!31 () Int)

(declare-fun lt!409921 () Int)

(assert (=> b!1194102 (= c!198427 (<= until!31 lt!409921))))

(declare-fun bm!83054 () Bool)

(declare-fun from!553 () Int)

(declare-fun c!198428 () Bool)

(declare-fun lt!409922 () List!12041)

(declare-fun call!83059 () List!12041)

(declare-fun slice!444 (List!12041 Int Int) List!12041)

(assert (=> bm!83054 (= call!83059 (slice!444 lt!409922 (ite c!198428 (- from!553 lt!409921) 0) (- until!31 lt!409921)))))

(declare-fun b!1194103 () Bool)

(declare-fun call!83060 () List!12041)

(assert (=> b!1194103 (= e!767232 call!83060)))

(declare-fun b!1194105 () Bool)

(declare-fun res!539092 () Bool)

(declare-fun e!767233 () Bool)

(assert (=> b!1194105 (=> (not res!539092) (not e!767233))))

(declare-datatypes ((IArray!7905 0))(
  ( (IArray!7906 (innerList!4010 List!12041)) )
))
(declare-datatypes ((Conc!3950 0))(
  ( (Node!3950 (left!10473 Conc!3950) (right!10803 Conc!3950) (csize!8130 Int) (cheight!4161 Int)) (Leaf!6050 (xs!6655 IArray!7905) (csize!8131 Int)) (Empty!3950) )
))
(declare-fun t!4115 () Conc!3950)

(get-info :version)

(assert (=> b!1194105 (= res!539092 (and (not (= from!553 until!31)) (not ((_ is Leaf!6050) t!4115)) ((_ is Node!3950) t!4115)))))

(declare-fun b!1194106 () Bool)

(declare-fun e!767230 () Bool)

(assert (=> b!1194106 (= e!767233 (not e!767230))))

(declare-fun res!539094 () Bool)

(assert (=> b!1194106 (=> res!539094 e!767230)))

(declare-fun lt!409925 () Int)

(assert (=> b!1194106 (= res!539094 (or (<= lt!409925 from!553) (<= until!31 lt!409925)))))

(declare-fun size!9518 (Conc!3950) Int)

(assert (=> b!1194106 (= lt!409925 (size!9518 (left!10473 t!4115)))))

(assert (=> b!1194106 e!767229))

(assert (=> b!1194106 (= c!198428 (<= lt!409921 from!553))))

(declare-fun lt!409926 () List!12041)

(declare-fun ++!3059 (List!12041 List!12041) List!12041)

(assert (=> b!1194106 (= lt!409923 (slice!444 (++!3059 lt!409926 lt!409922) from!553 until!31))))

(declare-fun size!9519 (List!12041) Int)

(assert (=> b!1194106 (= lt!409921 (size!9519 lt!409926))))

(declare-datatypes ((Unit!18440 0))(
  ( (Unit!18441) )
))
(declare-fun lt!409924 () Unit!18440)

(declare-fun sliceLemma!31 (List!12041 List!12041 Int Int) Unit!18440)

(assert (=> b!1194106 (= lt!409924 (sliceLemma!31 lt!409926 lt!409922 from!553 until!31))))

(declare-fun list!4443 (Conc!3950) List!12041)

(assert (=> b!1194106 (= lt!409922 (list!4443 (right!10803 t!4115)))))

(assert (=> b!1194106 (= lt!409926 (list!4443 (left!10473 t!4115)))))

(declare-fun bm!83055 () Bool)

(assert (=> bm!83055 (= call!83060 (slice!444 lt!409926 from!553 (ite c!198427 until!31 lt!409921)))))

(declare-fun b!1194107 () Bool)

(assert (=> b!1194107 (= e!767229 (= lt!409923 call!83059))))

(declare-fun b!1194108 () Bool)

(declare-fun e!767231 () Bool)

(declare-fun e!767234 () Bool)

(declare-fun inv!15980 (IArray!7905) Bool)

(assert (=> b!1194108 (= e!767231 (and (inv!15980 (xs!6655 t!4115)) e!767234))))

(declare-fun b!1194109 () Bool)

(declare-fun res!539095 () Bool)

(assert (=> b!1194109 (=> (not res!539095) (not e!767233))))

(assert (=> b!1194109 (= res!539095 (<= until!31 (size!9518 t!4115)))))

(declare-fun b!1194110 () Bool)

(assert (=> b!1194110 (= e!767232 (++!3059 call!83060 call!83059))))

(declare-fun b!1194111 () Bool)

(declare-fun res!539096 () Bool)

(assert (=> b!1194111 (=> (not res!539096) (not e!767233))))

(declare-fun isBalanced!1135 (Conc!3950) Bool)

(assert (=> b!1194111 (= res!539096 (isBalanced!1135 t!4115))))

(declare-fun b!1194104 () Bool)

(assert (=> b!1194104 (= e!767230 (<= until!31 (size!9519 (list!4443 t!4115))))))

(declare-fun res!539091 () Bool)

(assert (=> start!106204 (=> (not res!539091) (not e!767233))))

(assert (=> start!106204 (= res!539091 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106204 e!767233))

(assert (=> start!106204 true))

(declare-fun inv!15981 (Conc!3950) Bool)

(assert (=> start!106204 (and (inv!15981 t!4115) e!767231)))

(declare-fun b!1194112 () Bool)

(declare-fun tp!340295 () Bool)

(declare-fun tp!340296 () Bool)

(assert (=> b!1194112 (= e!767231 (and (inv!15981 (left!10473 t!4115)) tp!340295 (inv!15981 (right!10803 t!4115)) tp!340296))))

(declare-fun b!1194113 () Bool)

(declare-fun res!539093 () Bool)

(assert (=> b!1194113 (=> res!539093 e!767230)))

(declare-fun ++!3060 (Conc!3950 Conc!3950) Conc!3950)

(declare-fun slice!445 (Conc!3950 Int Int) Conc!3950)

(assert (=> b!1194113 (= res!539093 (not (isBalanced!1135 (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))))

(declare-fun b!1194114 () Bool)

(declare-fun tp!340297 () Bool)

(assert (=> b!1194114 (= e!767234 tp!340297)))

(assert (= (and start!106204 res!539091) b!1194109))

(assert (= (and b!1194109 res!539095) b!1194111))

(assert (= (and b!1194111 res!539096) b!1194105))

(assert (= (and b!1194105 res!539092) b!1194106))

(assert (= (and b!1194106 c!198428) b!1194107))

(assert (= (and b!1194106 (not c!198428)) b!1194102))

(assert (= (and b!1194102 c!198427) b!1194103))

(assert (= (and b!1194102 (not c!198427)) b!1194110))

(assert (= (or b!1194103 b!1194110) bm!83055))

(assert (= (or b!1194107 b!1194110) bm!83054))

(assert (= (and b!1194106 (not res!539094)) b!1194113))

(assert (= (and b!1194113 (not res!539093)) b!1194104))

(assert (= (and start!106204 ((_ is Node!3950) t!4115)) b!1194112))

(assert (= b!1194108 b!1194114))

(assert (= (and start!106204 ((_ is Leaf!6050) t!4115)) b!1194108))

(declare-fun m!1368799 () Bool)

(assert (=> b!1194113 m!1368799))

(declare-fun m!1368801 () Bool)

(assert (=> b!1194113 m!1368801))

(assert (=> b!1194113 m!1368799))

(assert (=> b!1194113 m!1368801))

(declare-fun m!1368803 () Bool)

(assert (=> b!1194113 m!1368803))

(assert (=> b!1194113 m!1368803))

(declare-fun m!1368805 () Bool)

(assert (=> b!1194113 m!1368805))

(declare-fun m!1368807 () Bool)

(assert (=> bm!83054 m!1368807))

(declare-fun m!1368809 () Bool)

(assert (=> b!1194112 m!1368809))

(declare-fun m!1368811 () Bool)

(assert (=> b!1194112 m!1368811))

(declare-fun m!1368813 () Bool)

(assert (=> b!1194109 m!1368813))

(declare-fun m!1368815 () Bool)

(assert (=> b!1194111 m!1368815))

(declare-fun m!1368817 () Bool)

(assert (=> b!1194110 m!1368817))

(declare-fun m!1368819 () Bool)

(assert (=> bm!83055 m!1368819))

(declare-fun m!1368821 () Bool)

(assert (=> b!1194108 m!1368821))

(declare-fun m!1368823 () Bool)

(assert (=> b!1194104 m!1368823))

(assert (=> b!1194104 m!1368823))

(declare-fun m!1368825 () Bool)

(assert (=> b!1194104 m!1368825))

(declare-fun m!1368827 () Bool)

(assert (=> start!106204 m!1368827))

(declare-fun m!1368829 () Bool)

(assert (=> b!1194106 m!1368829))

(declare-fun m!1368831 () Bool)

(assert (=> b!1194106 m!1368831))

(declare-fun m!1368833 () Bool)

(assert (=> b!1194106 m!1368833))

(declare-fun m!1368835 () Bool)

(assert (=> b!1194106 m!1368835))

(declare-fun m!1368837 () Bool)

(assert (=> b!1194106 m!1368837))

(declare-fun m!1368839 () Bool)

(assert (=> b!1194106 m!1368839))

(declare-fun m!1368841 () Bool)

(assert (=> b!1194106 m!1368841))

(assert (=> b!1194106 m!1368837))

(check-sat (not start!106204) (not b!1194112) (not b!1194113) (not b!1194108) (not b!1194111) (not b!1194114) (not b!1194104) (not bm!83054) (not b!1194110) (not b!1194106) (not bm!83055) (not b!1194109))
(check-sat)
(get-model)

(declare-fun d!340930 () Bool)

(declare-fun take!114 (List!12041 Int) List!12041)

(declare-fun drop!586 (List!12041 Int) List!12041)

(assert (=> d!340930 (= (slice!444 lt!409926 from!553 (ite c!198427 until!31 lt!409921)) (take!114 (drop!586 lt!409926 from!553) (- (ite c!198427 until!31 lt!409921) from!553)))))

(declare-fun bs!287997 () Bool)

(assert (= bs!287997 d!340930))

(declare-fun m!1368843 () Bool)

(assert (=> bs!287997 m!1368843))

(assert (=> bs!287997 m!1368843))

(declare-fun m!1368845 () Bool)

(assert (=> bs!287997 m!1368845))

(assert (=> bm!83055 d!340930))

(declare-fun d!340932 () Bool)

(declare-fun lt!409929 () Int)

(assert (=> d!340932 (>= lt!409929 0)))

(declare-fun e!767237 () Int)

(assert (=> d!340932 (= lt!409929 e!767237)))

(declare-fun c!198431 () Bool)

(assert (=> d!340932 (= c!198431 ((_ is Nil!12017) lt!409926))))

(assert (=> d!340932 (= (size!9519 lt!409926) lt!409929)))

(declare-fun b!1194119 () Bool)

(assert (=> b!1194119 (= e!767237 0)))

(declare-fun b!1194120 () Bool)

(assert (=> b!1194120 (= e!767237 (+ 1 (size!9519 (t!112319 lt!409926))))))

(assert (= (and d!340932 c!198431) b!1194119))

(assert (= (and d!340932 (not c!198431)) b!1194120))

(declare-fun m!1368847 () Bool)

(assert (=> b!1194120 m!1368847))

(assert (=> b!1194106 d!340932))

(declare-fun d!340934 () Bool)

(assert (=> d!340934 (= (slice!444 (++!3059 lt!409926 lt!409922) from!553 until!31) (take!114 (drop!586 (++!3059 lt!409926 lt!409922) from!553) (- until!31 from!553)))))

(declare-fun bs!287998 () Bool)

(assert (= bs!287998 d!340934))

(assert (=> bs!287998 m!1368837))

(declare-fun m!1368849 () Bool)

(assert (=> bs!287998 m!1368849))

(assert (=> bs!287998 m!1368849))

(declare-fun m!1368851 () Bool)

(assert (=> bs!287998 m!1368851))

(assert (=> b!1194106 d!340934))

(declare-fun b!1194130 () Bool)

(declare-fun e!767242 () List!12041)

(declare-fun e!767243 () List!12041)

(assert (=> b!1194130 (= e!767242 e!767243)))

(declare-fun c!198437 () Bool)

(assert (=> b!1194130 (= c!198437 ((_ is Leaf!6050) (left!10473 t!4115)))))

(declare-fun d!340936 () Bool)

(declare-fun c!198436 () Bool)

(assert (=> d!340936 (= c!198436 ((_ is Empty!3950) (left!10473 t!4115)))))

(assert (=> d!340936 (= (list!4443 (left!10473 t!4115)) e!767242)))

(declare-fun b!1194129 () Bool)

(assert (=> b!1194129 (= e!767242 Nil!12017)))

(declare-fun b!1194131 () Bool)

(declare-fun list!4444 (IArray!7905) List!12041)

(assert (=> b!1194131 (= e!767243 (list!4444 (xs!6655 (left!10473 t!4115))))))

(declare-fun b!1194132 () Bool)

(assert (=> b!1194132 (= e!767243 (++!3059 (list!4443 (left!10473 (left!10473 t!4115))) (list!4443 (right!10803 (left!10473 t!4115)))))))

(assert (= (and d!340936 c!198436) b!1194129))

(assert (= (and d!340936 (not c!198436)) b!1194130))

(assert (= (and b!1194130 c!198437) b!1194131))

(assert (= (and b!1194130 (not c!198437)) b!1194132))

(declare-fun m!1368853 () Bool)

(assert (=> b!1194131 m!1368853))

(declare-fun m!1368855 () Bool)

(assert (=> b!1194132 m!1368855))

(declare-fun m!1368857 () Bool)

(assert (=> b!1194132 m!1368857))

(assert (=> b!1194132 m!1368855))

(assert (=> b!1194132 m!1368857))

(declare-fun m!1368859 () Bool)

(assert (=> b!1194132 m!1368859))

(assert (=> b!1194106 d!340936))

(declare-fun b!1194134 () Bool)

(declare-fun e!767244 () List!12041)

(declare-fun e!767245 () List!12041)

(assert (=> b!1194134 (= e!767244 e!767245)))

(declare-fun c!198439 () Bool)

(assert (=> b!1194134 (= c!198439 ((_ is Leaf!6050) (right!10803 t!4115)))))

(declare-fun d!340940 () Bool)

(declare-fun c!198438 () Bool)

(assert (=> d!340940 (= c!198438 ((_ is Empty!3950) (right!10803 t!4115)))))

(assert (=> d!340940 (= (list!4443 (right!10803 t!4115)) e!767244)))

(declare-fun b!1194133 () Bool)

(assert (=> b!1194133 (= e!767244 Nil!12017)))

(declare-fun b!1194135 () Bool)

(assert (=> b!1194135 (= e!767245 (list!4444 (xs!6655 (right!10803 t!4115))))))

(declare-fun b!1194136 () Bool)

(assert (=> b!1194136 (= e!767245 (++!3059 (list!4443 (left!10473 (right!10803 t!4115))) (list!4443 (right!10803 (right!10803 t!4115)))))))

(assert (= (and d!340940 c!198438) b!1194133))

(assert (= (and d!340940 (not c!198438)) b!1194134))

(assert (= (and b!1194134 c!198439) b!1194135))

(assert (= (and b!1194134 (not c!198439)) b!1194136))

(declare-fun m!1368861 () Bool)

(assert (=> b!1194135 m!1368861))

(declare-fun m!1368863 () Bool)

(assert (=> b!1194136 m!1368863))

(declare-fun m!1368865 () Bool)

(assert (=> b!1194136 m!1368865))

(assert (=> b!1194136 m!1368863))

(assert (=> b!1194136 m!1368865))

(declare-fun m!1368867 () Bool)

(assert (=> b!1194136 m!1368867))

(assert (=> b!1194106 d!340940))

(declare-fun b!1194169 () Bool)

(declare-fun e!767259 () List!12041)

(assert (=> b!1194169 (= e!767259 lt!409922)))

(declare-fun b!1194172 () Bool)

(declare-fun e!767258 () Bool)

(declare-fun lt!409932 () List!12041)

(assert (=> b!1194172 (= e!767258 (or (not (= lt!409922 Nil!12017)) (= lt!409932 lt!409926)))))

(declare-fun b!1194170 () Bool)

(assert (=> b!1194170 (= e!767259 (Cons!12017 (h!17418 lt!409926) (++!3059 (t!112319 lt!409926) lt!409922)))))

(declare-fun d!340942 () Bool)

(assert (=> d!340942 e!767258))

(declare-fun res!539125 () Bool)

(assert (=> d!340942 (=> (not res!539125) (not e!767258))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1673 (List!12041) (InoxSet T!21600))

(assert (=> d!340942 (= res!539125 (= (content!1673 lt!409932) ((_ map or) (content!1673 lt!409926) (content!1673 lt!409922))))))

(assert (=> d!340942 (= lt!409932 e!767259)))

(declare-fun c!198442 () Bool)

(assert (=> d!340942 (= c!198442 ((_ is Nil!12017) lt!409926))))

(assert (=> d!340942 (= (++!3059 lt!409926 lt!409922) lt!409932)))

(declare-fun b!1194171 () Bool)

(declare-fun res!539126 () Bool)

(assert (=> b!1194171 (=> (not res!539126) (not e!767258))))

(assert (=> b!1194171 (= res!539126 (= (size!9519 lt!409932) (+ (size!9519 lt!409926) (size!9519 lt!409922))))))

(assert (= (and d!340942 c!198442) b!1194169))

(assert (= (and d!340942 (not c!198442)) b!1194170))

(assert (= (and d!340942 res!539125) b!1194171))

(assert (= (and b!1194171 res!539126) b!1194172))

(declare-fun m!1368893 () Bool)

(assert (=> b!1194170 m!1368893))

(declare-fun m!1368895 () Bool)

(assert (=> d!340942 m!1368895))

(declare-fun m!1368897 () Bool)

(assert (=> d!340942 m!1368897))

(declare-fun m!1368899 () Bool)

(assert (=> d!340942 m!1368899))

(declare-fun m!1368901 () Bool)

(assert (=> b!1194171 m!1368901))

(assert (=> b!1194171 m!1368833))

(declare-fun m!1368903 () Bool)

(assert (=> b!1194171 m!1368903))

(assert (=> b!1194106 d!340942))

(declare-fun d!340948 () Bool)

(declare-fun lt!409935 () Int)

(assert (=> d!340948 (= lt!409935 (size!9519 (list!4443 (left!10473 t!4115))))))

(assert (=> d!340948 (= lt!409935 (ite ((_ is Empty!3950) (left!10473 t!4115)) 0 (ite ((_ is Leaf!6050) (left!10473 t!4115)) (csize!8131 (left!10473 t!4115)) (csize!8130 (left!10473 t!4115)))))))

(assert (=> d!340948 (= (size!9518 (left!10473 t!4115)) lt!409935)))

(declare-fun bs!287999 () Bool)

(assert (= bs!287999 d!340948))

(assert (=> bs!287999 m!1368841))

(assert (=> bs!287999 m!1368841))

(declare-fun m!1368905 () Bool)

(assert (=> bs!287999 m!1368905))

(assert (=> b!1194106 d!340948))

(declare-fun e!767271 () Bool)

(declare-fun b!1194187 () Bool)

(assert (=> b!1194187 (= e!767271 (<= until!31 (+ (size!9519 lt!409926) (size!9519 lt!409922))))))

(declare-fun b!1194188 () Bool)

(declare-fun e!767268 () Int)

(declare-fun call!83068 () Int)

(assert (=> b!1194188 (= e!767268 call!83068)))

(declare-fun b!1194189 () Bool)

(declare-fun e!767270 () List!12041)

(declare-fun e!767269 () List!12041)

(assert (=> b!1194189 (= e!767270 e!767269)))

(declare-fun c!198451 () Bool)

(assert (=> b!1194189 (= c!198451 (<= until!31 call!83068))))

(declare-fun b!1194190 () Bool)

(declare-fun call!83069 () List!12041)

(assert (=> b!1194190 (= e!767270 call!83069)))

(declare-fun b!1194191 () Bool)

(declare-fun call!83067 () List!12041)

(assert (=> b!1194191 (= e!767269 (++!3059 call!83067 (slice!444 lt!409922 0 (- until!31 call!83068))))))

(declare-fun d!340950 () Bool)

(assert (=> d!340950 (= (slice!444 (++!3059 lt!409926 lt!409922) from!553 until!31) e!767270)))

(declare-fun c!198450 () Bool)

(assert (=> d!340950 (= c!198450 (<= (size!9519 lt!409926) from!553))))

(declare-fun lt!409938 () Unit!18440)

(declare-fun choose!7715 (List!12041 List!12041 Int Int) Unit!18440)

(assert (=> d!340950 (= lt!409938 (choose!7715 lt!409926 lt!409922 from!553 until!31))))

(assert (=> d!340950 e!767271))

(declare-fun res!539129 () Bool)

(assert (=> d!340950 (=> (not res!539129) (not e!767271))))

(assert (=> d!340950 (= res!539129 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!340950 (= (sliceLemma!31 lt!409926 lt!409922 from!553 until!31) lt!409938)))

(declare-fun b!1194192 () Bool)

(assert (=> b!1194192 (= e!767268 until!31)))

(declare-fun bm!83062 () Bool)

(assert (=> bm!83062 (= call!83069 (slice!444 (ite c!198450 lt!409922 lt!409926) (ite c!198450 (- from!553 call!83068) from!553) (ite c!198450 (- until!31 call!83068) e!767268)))))

(declare-fun bm!83063 () Bool)

(declare-fun c!198449 () Bool)

(assert (=> bm!83063 (= c!198449 c!198451)))

(assert (=> bm!83063 (= call!83067 call!83069)))

(declare-fun b!1194193 () Bool)

(assert (=> b!1194193 (= e!767269 call!83067)))

(declare-fun bm!83064 () Bool)

(assert (=> bm!83064 (= call!83068 (size!9519 lt!409926))))

(assert (= (and d!340950 res!539129) b!1194187))

(assert (= (and d!340950 c!198450) b!1194190))

(assert (= (and d!340950 (not c!198450)) b!1194189))

(assert (= (and b!1194189 c!198451) b!1194193))

(assert (= (and b!1194189 (not c!198451)) b!1194191))

(assert (= (or b!1194193 b!1194191) bm!83063))

(assert (= (and bm!83063 c!198449) b!1194192))

(assert (= (and bm!83063 (not c!198449)) b!1194188))

(assert (= (or b!1194190 b!1194188 b!1194189 b!1194191) bm!83064))

(assert (= (or b!1194190 bm!83063) bm!83062))

(declare-fun m!1368907 () Bool)

(assert (=> b!1194191 m!1368907))

(assert (=> b!1194191 m!1368907))

(declare-fun m!1368909 () Bool)

(assert (=> b!1194191 m!1368909))

(assert (=> b!1194187 m!1368833))

(assert (=> b!1194187 m!1368903))

(assert (=> d!340950 m!1368837))

(assert (=> d!340950 m!1368837))

(assert (=> d!340950 m!1368839))

(assert (=> d!340950 m!1368833))

(declare-fun m!1368911 () Bool)

(assert (=> d!340950 m!1368911))

(declare-fun m!1368913 () Bool)

(assert (=> bm!83062 m!1368913))

(assert (=> bm!83064 m!1368833))

(assert (=> b!1194106 d!340950))

(declare-fun d!340952 () Bool)

(declare-fun lt!409939 () Int)

(assert (=> d!340952 (>= lt!409939 0)))

(declare-fun e!767272 () Int)

(assert (=> d!340952 (= lt!409939 e!767272)))

(declare-fun c!198452 () Bool)

(assert (=> d!340952 (= c!198452 ((_ is Nil!12017) (list!4443 t!4115)))))

(assert (=> d!340952 (= (size!9519 (list!4443 t!4115)) lt!409939)))

(declare-fun b!1194194 () Bool)

(assert (=> b!1194194 (= e!767272 0)))

(declare-fun b!1194195 () Bool)

(assert (=> b!1194195 (= e!767272 (+ 1 (size!9519 (t!112319 (list!4443 t!4115)))))))

(assert (= (and d!340952 c!198452) b!1194194))

(assert (= (and d!340952 (not c!198452)) b!1194195))

(declare-fun m!1368915 () Bool)

(assert (=> b!1194195 m!1368915))

(assert (=> b!1194104 d!340952))

(declare-fun b!1194197 () Bool)

(declare-fun e!767273 () List!12041)

(declare-fun e!767274 () List!12041)

(assert (=> b!1194197 (= e!767273 e!767274)))

(declare-fun c!198454 () Bool)

(assert (=> b!1194197 (= c!198454 ((_ is Leaf!6050) t!4115))))

(declare-fun d!340954 () Bool)

(declare-fun c!198453 () Bool)

(assert (=> d!340954 (= c!198453 ((_ is Empty!3950) t!4115))))

(assert (=> d!340954 (= (list!4443 t!4115) e!767273)))

(declare-fun b!1194196 () Bool)

(assert (=> b!1194196 (= e!767273 Nil!12017)))

(declare-fun b!1194198 () Bool)

(assert (=> b!1194198 (= e!767274 (list!4444 (xs!6655 t!4115)))))

(declare-fun b!1194199 () Bool)

(assert (=> b!1194199 (= e!767274 (++!3059 (list!4443 (left!10473 t!4115)) (list!4443 (right!10803 t!4115))))))

(assert (= (and d!340954 c!198453) b!1194196))

(assert (= (and d!340954 (not c!198453)) b!1194197))

(assert (= (and b!1194197 c!198454) b!1194198))

(assert (= (and b!1194197 (not c!198454)) b!1194199))

(declare-fun m!1368917 () Bool)

(assert (=> b!1194198 m!1368917))

(assert (=> b!1194199 m!1368841))

(assert (=> b!1194199 m!1368831))

(assert (=> b!1194199 m!1368841))

(assert (=> b!1194199 m!1368831))

(declare-fun m!1368919 () Bool)

(assert (=> b!1194199 m!1368919))

(assert (=> b!1194104 d!340954))

(declare-fun b!1194246 () Bool)

(declare-fun e!767298 () Bool)

(declare-fun e!767297 () Bool)

(assert (=> b!1194246 (= e!767298 e!767297)))

(declare-fun res!539146 () Bool)

(assert (=> b!1194246 (=> (not res!539146) (not e!767297))))

(declare-fun height!548 (Conc!3950) Int)

(assert (=> b!1194246 (= res!539146 (<= (- 1) (- (height!548 (left!10473 (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))) (height!548 (right!10803 (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))))))

(declare-fun b!1194247 () Bool)

(declare-fun isEmpty!7229 (Conc!3950) Bool)

(assert (=> b!1194247 (= e!767297 (not (isEmpty!7229 (right!10803 (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)))))))))

(declare-fun b!1194248 () Bool)

(declare-fun res!539144 () Bool)

(assert (=> b!1194248 (=> (not res!539144) (not e!767297))))

(assert (=> b!1194248 (= res!539144 (isBalanced!1135 (left!10473 (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))))

(declare-fun b!1194249 () Bool)

(declare-fun res!539148 () Bool)

(assert (=> b!1194249 (=> (not res!539148) (not e!767297))))

(assert (=> b!1194249 (= res!539148 (isBalanced!1135 (right!10803 (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))))

(declare-fun b!1194250 () Bool)

(declare-fun res!539147 () Bool)

(assert (=> b!1194250 (=> (not res!539147) (not e!767297))))

(assert (=> b!1194250 (= res!539147 (<= (- (height!548 (left!10473 (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))) (height!548 (right!10803 (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)))))) 1))))

(declare-fun d!340956 () Bool)

(declare-fun res!539145 () Bool)

(assert (=> d!340956 (=> res!539145 e!767298)))

(assert (=> d!340956 (= res!539145 (not ((_ is Node!3950) (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))))

(assert (=> d!340956 (= (isBalanced!1135 (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)))) e!767298)))

(declare-fun b!1194251 () Bool)

(declare-fun res!539149 () Bool)

(assert (=> b!1194251 (=> (not res!539149) (not e!767297))))

(assert (=> b!1194251 (= res!539149 (not (isEmpty!7229 (left!10473 (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)))))))))

(assert (= (and d!340956 (not res!539145)) b!1194246))

(assert (= (and b!1194246 res!539146) b!1194250))

(assert (= (and b!1194250 res!539147) b!1194248))

(assert (= (and b!1194248 res!539144) b!1194249))

(assert (= (and b!1194249 res!539148) b!1194251))

(assert (= (and b!1194251 res!539149) b!1194247))

(declare-fun m!1368921 () Bool)

(assert (=> b!1194250 m!1368921))

(declare-fun m!1368923 () Bool)

(assert (=> b!1194250 m!1368923))

(assert (=> b!1194246 m!1368921))

(assert (=> b!1194246 m!1368923))

(declare-fun m!1368925 () Bool)

(assert (=> b!1194248 m!1368925))

(declare-fun m!1368927 () Bool)

(assert (=> b!1194247 m!1368927))

(declare-fun m!1368929 () Bool)

(assert (=> b!1194249 m!1368929))

(declare-fun m!1368931 () Bool)

(assert (=> b!1194251 m!1368931))

(assert (=> b!1194113 d!340956))

(declare-fun b!1194419 () Bool)

(declare-fun e!767382 () Conc!3950)

(declare-fun call!83178 () Conc!3950)

(assert (=> b!1194419 (= e!767382 call!83178)))

(declare-fun e!767383 () Bool)

(declare-fun b!1194420 () Bool)

(declare-fun lt!409985 () Conc!3950)

(assert (=> b!1194420 (= e!767383 (= (list!4443 lt!409985) (++!3059 (list!4443 (slice!445 (left!10473 t!4115) from!553 lt!409925)) (list!4443 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))))

(declare-fun bm!83169 () Bool)

(declare-fun call!83188 () Conc!3950)

(declare-fun call!83183 () Conc!3950)

(assert (=> bm!83169 (= call!83188 call!83183)))

(declare-fun bm!83170 () Bool)

(declare-fun call!83179 () Int)

(declare-fun c!198538 () Bool)

(assert (=> bm!83170 (= call!83179 (height!548 (ite c!198538 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)))))))

(declare-fun bm!83171 () Bool)

(declare-fun call!83174 () Conc!3950)

(assert (=> bm!83171 (= call!83174 call!83178)))

(declare-fun bm!83172 () Bool)

(declare-fun call!83186 () Conc!3950)

(declare-fun call!83189 () Conc!3950)

(assert (=> bm!83172 (= call!83186 call!83189)))

(declare-fun d!340958 () Bool)

(assert (=> d!340958 e!767383))

(declare-fun res!539192 () Bool)

(assert (=> d!340958 (=> (not res!539192) (not e!767383))))

(declare-fun appendAssocInst!229 (Conc!3950 Conc!3950) Bool)

(assert (=> d!340958 (= res!539192 (appendAssocInst!229 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))

(declare-fun e!767387 () Conc!3950)

(assert (=> d!340958 (= lt!409985 e!767387)))

(declare-fun c!198536 () Bool)

(assert (=> d!340958 (= c!198536 (= (slice!445 (left!10473 t!4115) from!553 lt!409925) Empty!3950))))

(declare-fun e!767384 () Bool)

(assert (=> d!340958 e!767384))

(declare-fun res!539194 () Bool)

(assert (=> d!340958 (=> (not res!539194) (not e!767384))))

(assert (=> d!340958 (= res!539194 (isBalanced!1135 (slice!445 (left!10473 t!4115) from!553 lt!409925)))))

(assert (=> d!340958 (= (++!3060 (slice!445 (left!10473 t!4115) from!553 lt!409925) (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))) lt!409985)))

(declare-fun bm!83173 () Bool)

(declare-fun call!83184 () Conc!3950)

(assert (=> bm!83173 (= call!83184 call!83183)))

(declare-fun b!1194421 () Bool)

(declare-fun e!767390 () Conc!3950)

(assert (=> b!1194421 (= e!767390 call!83174)))

(declare-fun b!1194422 () Bool)

(declare-fun e!767385 () Conc!3950)

(declare-fun e!767381 () Conc!3950)

(assert (=> b!1194422 (= e!767385 e!767381)))

(declare-fun lt!409986 () Int)

(assert (=> b!1194422 (= c!198538 (< lt!409986 (- 1)))))

(declare-fun bm!83174 () Bool)

(declare-fun call!83176 () Conc!3950)

(assert (=> bm!83174 (= call!83178 call!83176)))

(declare-fun bm!83175 () Bool)

(declare-fun call!83180 () Int)

(assert (=> bm!83175 (= call!83180 (height!548 (ite c!198538 (left!10473 (slice!445 (left!10473 t!4115) from!553 lt!409925)) (left!10473 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))))

(declare-fun lt!409984 () Conc!3950)

(declare-fun call!83185 () Int)

(declare-fun bm!83176 () Bool)

(assert (=> bm!83176 (= call!83185 (height!548 (ite c!198538 lt!409984 (right!10803 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))))

(declare-fun b!1194423 () Bool)

(declare-fun e!767386 () Conc!3950)

(assert (=> b!1194423 (= e!767386 (slice!445 (left!10473 t!4115) from!553 lt!409925))))

(declare-fun bm!83177 () Bool)

(assert (=> bm!83177 (= call!83189 call!83176)))

(declare-fun bm!83178 () Bool)

(declare-fun lt!409983 () Conc!3950)

(declare-fun call!83175 () Int)

(assert (=> bm!83178 (= call!83175 (height!548 (ite c!198538 (right!10803 (slice!445 (left!10473 t!4115) from!553 lt!409925)) lt!409983)))))

(declare-fun bm!83179 () Bool)

(declare-fun call!83182 () Conc!3950)

(assert (=> bm!83179 (= call!83176 call!83182)))

(declare-fun b!1194424 () Bool)

(declare-fun res!539193 () Bool)

(assert (=> b!1194424 (=> (not res!539193) (not e!767383))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1194424 (= res!539193 (<= (height!548 lt!409985) (+ (max!0 (height!548 (slice!445 (left!10473 t!4115) from!553 lt!409925)) (height!548 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)))) 1)))))

(declare-fun b!1194425 () Bool)

(declare-fun c!198541 () Bool)

(assert (=> b!1194425 (= c!198541 (>= call!83180 call!83175))))

(assert (=> b!1194425 (= e!767381 e!767382)))

(declare-fun c!198539 () Bool)

(declare-fun c!198534 () Bool)

(declare-fun bm!83180 () Bool)

(declare-fun c!198535 () Bool)

(declare-fun call!83177 () Conc!3950)

(declare-fun c!198540 () Bool)

(declare-fun call!83181 () Conc!3950)

(declare-fun <>!81 (Conc!3950 Conc!3950) Conc!3950)

(assert (=> bm!83180 (= call!83182 (<>!81 (ite c!198539 (slice!445 (left!10473 t!4115) from!553 lt!409925) (ite c!198538 (ite (or c!198541 c!198535) (left!10473 (slice!445 (left!10473 t!4115) from!553 lt!409925)) call!83181) (ite c!198534 call!83188 (ite c!198540 call!83177 lt!409983)))) (ite c!198539 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)) (ite c!198538 (ite c!198541 call!83184 (ite c!198535 call!83181 lt!409984)) (ite (or c!198534 c!198540) (right!10803 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))) call!83177)))))))

(declare-fun b!1194426 () Bool)

(assert (=> b!1194426 (= e!767385 call!83182)))

(declare-fun b!1194427 () Bool)

(assert (=> b!1194427 (= e!767384 (isBalanced!1135 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))

(declare-fun b!1194428 () Bool)

(declare-fun res!539195 () Bool)

(assert (=> b!1194428 (=> (not res!539195) (not e!767383))))

(assert (=> b!1194428 (= res!539195 (isBalanced!1135 lt!409985))))

(declare-fun b!1194429 () Bool)

(assert (=> b!1194429 (= c!198539 (and (<= (- 1) lt!409986) (<= lt!409986 1)))))

(assert (=> b!1194429 (= lt!409986 (- (height!548 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))) (height!548 (slice!445 (left!10473 t!4115) from!553 lt!409925))))))

(assert (=> b!1194429 (= e!767386 e!767385)))

(declare-fun b!1194430 () Bool)

(declare-fun e!767389 () Conc!3950)

(declare-fun e!767388 () Conc!3950)

(assert (=> b!1194430 (= e!767389 e!767388)))

(assert (=> b!1194430 (= lt!409983 call!83188)))

(assert (=> b!1194430 (= c!198540 (= call!83175 (- call!83179 3)))))

(declare-fun b!1194431 () Bool)

(assert (=> b!1194431 (= e!767389 call!83189)))

(declare-fun b!1194432 () Bool)

(assert (=> b!1194432 (= e!767382 e!767390)))

(assert (=> b!1194432 (= lt!409984 call!83184)))

(assert (=> b!1194432 (= c!198535 (= call!83185 (- call!83179 3)))))

(declare-fun bm!83181 () Bool)

(declare-fun call!83187 () Conc!3950)

(assert (=> bm!83181 (= call!83177 call!83187)))

(declare-fun b!1194433 () Bool)

(assert (=> b!1194433 (= e!767387 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)))))

(declare-fun b!1194434 () Bool)

(assert (=> b!1194434 (= e!767388 call!83186)))

(declare-fun b!1194435 () Bool)

(assert (=> b!1194435 (= c!198534 (>= call!83185 call!83180))))

(assert (=> b!1194435 (= e!767381 e!767389)))

(declare-fun bm!83182 () Bool)

(assert (=> bm!83182 (= call!83187 (<>!81 (ite c!198538 (ite c!198535 (left!10473 (right!10803 (slice!445 (left!10473 t!4115) from!553 lt!409925))) (left!10473 (slice!445 (left!10473 t!4115) from!553 lt!409925))) (ite c!198540 lt!409983 (right!10803 (left!10473 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)))))) (ite c!198538 (ite c!198535 lt!409984 (left!10473 (right!10803 (slice!445 (left!10473 t!4115) from!553 lt!409925)))) (ite c!198540 (right!10803 (left!10473 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)))) (right!10803 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)))))))))

(declare-fun b!1194436 () Bool)

(assert (=> b!1194436 (= e!767387 e!767386)))

(declare-fun c!198537 () Bool)

(assert (=> b!1194436 (= c!198537 (= (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)) Empty!3950))))

(declare-fun b!1194437 () Bool)

(assert (=> b!1194437 (= e!767390 call!83174)))

(declare-fun b!1194438 () Bool)

(declare-fun res!539191 () Bool)

(assert (=> b!1194438 (=> (not res!539191) (not e!767383))))

(assert (=> b!1194438 (= res!539191 (>= (height!548 lt!409985) (max!0 (height!548 (slice!445 (left!10473 t!4115) from!553 lt!409925)) (height!548 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))))

(declare-fun bm!83183 () Bool)

(assert (=> bm!83183 (= call!83183 (++!3060 (ite c!198538 (ite c!198541 (right!10803 (slice!445 (left!10473 t!4115) from!553 lt!409925)) (right!10803 (right!10803 (slice!445 (left!10473 t!4115) from!553 lt!409925)))) (slice!445 (left!10473 t!4115) from!553 lt!409925)) (ite c!198538 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)) (ite c!198534 (left!10473 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))) (left!10473 (left!10473 (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925))))))))))

(declare-fun b!1194439 () Bool)

(assert (=> b!1194439 (= e!767388 call!83186)))

(declare-fun bm!83184 () Bool)

(assert (=> bm!83184 (= call!83181 call!83187)))

(assert (= (and d!340958 res!539194) b!1194427))

(assert (= (and d!340958 c!198536) b!1194433))

(assert (= (and d!340958 (not c!198536)) b!1194436))

(assert (= (and b!1194436 c!198537) b!1194423))

(assert (= (and b!1194436 (not c!198537)) b!1194429))

(assert (= (and b!1194429 c!198539) b!1194426))

(assert (= (and b!1194429 (not c!198539)) b!1194422))

(assert (= (and b!1194422 c!198538) b!1194425))

(assert (= (and b!1194422 (not c!198538)) b!1194435))

(assert (= (and b!1194425 c!198541) b!1194419))

(assert (= (and b!1194425 (not c!198541)) b!1194432))

(assert (= (and b!1194432 c!198535) b!1194437))

(assert (= (and b!1194432 (not c!198535)) b!1194421))

(assert (= (or b!1194437 b!1194421) bm!83184))

(assert (= (or b!1194437 b!1194421) bm!83171))

(assert (= (or b!1194419 b!1194432) bm!83173))

(assert (= (or b!1194419 bm!83171) bm!83174))

(assert (= (and b!1194435 c!198534) b!1194431))

(assert (= (and b!1194435 (not c!198534)) b!1194430))

(assert (= (and b!1194430 c!198540) b!1194439))

(assert (= (and b!1194430 (not c!198540)) b!1194434))

(assert (= (or b!1194439 b!1194434) bm!83181))

(assert (= (or b!1194439 b!1194434) bm!83172))

(assert (= (or b!1194431 b!1194430) bm!83169))

(assert (= (or b!1194431 bm!83172) bm!83177))

(assert (= (or b!1194425 b!1194435) bm!83175))

(assert (= (or b!1194432 b!1194435) bm!83176))

(assert (= (or b!1194432 b!1194430) bm!83170))

(assert (= (or bm!83174 bm!83177) bm!83179))

(assert (= (or bm!83184 bm!83181) bm!83182))

(assert (= (or bm!83173 bm!83169) bm!83183))

(assert (= (or b!1194425 b!1194430) bm!83178))

(assert (= (or b!1194426 bm!83179) bm!83180))

(assert (= (and d!340958 res!539192) b!1194428))

(assert (= (and b!1194428 res!539195) b!1194424))

(assert (= (and b!1194424 res!539193) b!1194438))

(assert (= (and b!1194438 res!539191) b!1194420))

(declare-fun m!1369071 () Bool)

(assert (=> bm!83170 m!1369071))

(declare-fun m!1369073 () Bool)

(assert (=> bm!83180 m!1369073))

(declare-fun m!1369075 () Bool)

(assert (=> bm!83182 m!1369075))

(assert (=> d!340958 m!1368799))

(assert (=> d!340958 m!1368801))

(declare-fun m!1369077 () Bool)

(assert (=> d!340958 m!1369077))

(assert (=> d!340958 m!1368799))

(declare-fun m!1369079 () Bool)

(assert (=> d!340958 m!1369079))

(declare-fun m!1369081 () Bool)

(assert (=> bm!83183 m!1369081))

(declare-fun m!1369083 () Bool)

(assert (=> b!1194424 m!1369083))

(assert (=> b!1194424 m!1368799))

(declare-fun m!1369085 () Bool)

(assert (=> b!1194424 m!1369085))

(assert (=> b!1194424 m!1368801))

(declare-fun m!1369087 () Bool)

(assert (=> b!1194424 m!1369087))

(assert (=> b!1194424 m!1369085))

(assert (=> b!1194424 m!1369087))

(declare-fun m!1369089 () Bool)

(assert (=> b!1194424 m!1369089))

(declare-fun m!1369091 () Bool)

(assert (=> bm!83178 m!1369091))

(declare-fun m!1369093 () Bool)

(assert (=> b!1194420 m!1369093))

(assert (=> b!1194420 m!1368799))

(declare-fun m!1369095 () Bool)

(assert (=> b!1194420 m!1369095))

(assert (=> b!1194420 m!1368801))

(declare-fun m!1369097 () Bool)

(assert (=> b!1194420 m!1369097))

(assert (=> b!1194420 m!1369095))

(assert (=> b!1194420 m!1369097))

(declare-fun m!1369099 () Bool)

(assert (=> b!1194420 m!1369099))

(assert (=> b!1194427 m!1368801))

(declare-fun m!1369101 () Bool)

(assert (=> b!1194427 m!1369101))

(declare-fun m!1369103 () Bool)

(assert (=> b!1194428 m!1369103))

(declare-fun m!1369105 () Bool)

(assert (=> bm!83175 m!1369105))

(assert (=> b!1194438 m!1369083))

(assert (=> b!1194438 m!1368799))

(assert (=> b!1194438 m!1369085))

(assert (=> b!1194438 m!1368801))

(assert (=> b!1194438 m!1369087))

(assert (=> b!1194438 m!1369085))

(assert (=> b!1194438 m!1369087))

(assert (=> b!1194438 m!1369089))

(declare-fun m!1369107 () Bool)

(assert (=> bm!83176 m!1369107))

(assert (=> b!1194429 m!1368801))

(assert (=> b!1194429 m!1369087))

(assert (=> b!1194429 m!1368799))

(assert (=> b!1194429 m!1369085))

(assert (=> b!1194113 d!340958))

(declare-fun b!1194569 () Bool)

(declare-fun e!767464 () List!12041)

(declare-fun e!767462 () List!12041)

(assert (=> b!1194569 (= e!767464 e!767462)))

(declare-fun c!198590 () Bool)

(declare-fun call!83216 () Int)

(assert (=> b!1194569 (= c!198590 (<= lt!409925 call!83216))))

(declare-fun b!1194570 () Bool)

(declare-fun call!83213 () List!12041)

(assert (=> b!1194570 (= e!767464 call!83213)))

(declare-fun b!1194571 () Bool)

(declare-fun e!767468 () Bool)

(assert (=> b!1194571 (= e!767468 (isBalanced!1135 (left!10473 t!4115)))))

(declare-fun b!1194573 () Bool)

(declare-fun e!767465 () Int)

(assert (=> b!1194573 (= e!767465 lt!409925)))

(declare-fun b!1194574 () Bool)

(declare-fun call!83214 () List!12041)

(assert (=> b!1194574 (= e!767462 call!83214)))

(declare-fun bm!83206 () Bool)

(declare-fun call!83211 () Int)

(assert (=> bm!83206 (= call!83211 (size!9518 (left!10473 (left!10473 t!4115))))))

(declare-fun bm!83207 () Bool)

(declare-fun lt!410012 () List!12041)

(assert (=> bm!83207 (= call!83216 (size!9519 lt!410012))))

(declare-fun b!1194575 () Bool)

(declare-fun e!767467 () Conc!3950)

(declare-fun call!83212 () Conc!3950)

(assert (=> b!1194575 (= e!767467 call!83212)))

(declare-fun b!1194576 () Bool)

(assert (=> b!1194576 (= e!767465 call!83216)))

(declare-fun b!1194577 () Bool)

(declare-fun c!198596 () Bool)

(assert (=> b!1194577 (= c!198596 (= (- lt!409925 from!553) 0))))

(declare-fun e!767469 () Conc!3950)

(declare-fun e!767466 () Conc!3950)

(assert (=> b!1194577 (= e!767469 e!767466)))

(declare-fun b!1194578 () Bool)

(declare-fun e!767471 () Bool)

(declare-fun lt!410011 () Conc!3950)

(assert (=> b!1194578 (= e!767471 (= (list!4443 lt!410011) (slice!444 (list!4443 (left!10473 t!4115)) from!553 lt!409925)))))

(declare-fun e!767472 () Conc!3950)

(declare-fun b!1194579 () Bool)

(declare-fun call!83215 () Conc!3950)

(assert (=> b!1194579 (= e!767472 (++!3060 (slice!445 (left!10473 (left!10473 t!4115)) from!553 call!83211) call!83215))))

(declare-fun b!1194580 () Bool)

(declare-fun c!198593 () Bool)

(assert (=> b!1194580 (= c!198593 (<= (size!9518 (left!10473 (left!10473 t!4115))) from!553))))

(declare-fun lt!410013 () Unit!18440)

(declare-fun lt!410009 () Unit!18440)

(assert (=> b!1194580 (= lt!410013 lt!410009)))

(declare-fun lt!410010 () List!12041)

(assert (=> b!1194580 (= (slice!444 (++!3059 lt!410012 lt!410010) from!553 lt!409925) e!767464)))

(declare-fun c!198589 () Bool)

(assert (=> b!1194580 (= c!198589 (<= (size!9519 lt!410012) from!553))))

(assert (=> b!1194580 (= lt!410009 (sliceLemma!31 lt!410012 lt!410010 from!553 lt!409925))))

(assert (=> b!1194580 (= lt!410010 (list!4443 (right!10803 (left!10473 t!4115))))))

(assert (=> b!1194580 (= lt!410012 (list!4443 (left!10473 (left!10473 t!4115))))))

(assert (=> b!1194580 (= e!767469 e!767467)))

(declare-fun b!1194581 () Bool)

(assert (=> b!1194581 (= e!767466 Empty!3950)))

(declare-fun b!1194582 () Bool)

(declare-fun e!767470 () Int)

(assert (=> b!1194582 (= e!767470 lt!409925)))

(declare-fun b!1194583 () Bool)

(assert (=> b!1194583 (= e!767462 (++!3059 call!83214 (slice!444 lt!410010 0 (- lt!409925 call!83216))))))

(declare-fun b!1194572 () Bool)

(assert (=> b!1194572 (= e!767472 call!83215)))

(declare-fun d!340978 () Bool)

(assert (=> d!340978 e!767471))

(declare-fun res!539213 () Bool)

(assert (=> d!340978 (=> (not res!539213) (not e!767471))))

(assert (=> d!340978 (= res!539213 (isBalanced!1135 lt!410011))))

(declare-fun e!767463 () Conc!3950)

(assert (=> d!340978 (= lt!410011 e!767463)))

(declare-fun c!198594 () Bool)

(assert (=> d!340978 (= c!198594 (= from!553 lt!409925))))

(assert (=> d!340978 e!767468))

(declare-fun res!539214 () Bool)

(assert (=> d!340978 (=> (not res!539214) (not e!767468))))

(assert (=> d!340978 (= res!539214 (and (<= 0 from!553) (<= from!553 lt!409925)))))

(assert (=> d!340978 (= (slice!445 (left!10473 t!4115) from!553 lt!409925) lt!410011)))

(declare-fun bm!83208 () Bool)

(declare-fun c!198592 () Bool)

(assert (=> bm!83208 (= c!198592 c!198590)))

(assert (=> bm!83208 (= call!83214 call!83213)))

(declare-fun bm!83209 () Bool)

(assert (=> bm!83209 (= call!83213 (slice!444 (ite c!198589 lt!410010 lt!410012) (ite c!198589 (- from!553 call!83216) from!553) (ite c!198589 (- lt!409925 call!83216) e!767465)))))

(declare-fun c!198595 () Bool)

(declare-fun bm!83210 () Bool)

(assert (=> bm!83210 (= call!83212 (slice!445 (ite c!198593 (right!10803 (left!10473 t!4115)) (ite c!198595 (left!10473 (left!10473 t!4115)) (right!10803 (left!10473 t!4115)))) (ite c!198593 (- from!553 call!83211) (ite c!198595 from!553 0)) (ite c!198593 (- lt!409925 call!83211) e!767470)))))

(declare-fun b!1194584 () Bool)

(declare-fun slice!447 (IArray!7905 Int Int) IArray!7905)

(assert (=> b!1194584 (= e!767466 (Leaf!6050 (slice!447 (xs!6655 (left!10473 t!4115)) from!553 lt!409925) (- lt!409925 from!553)))))

(declare-fun b!1194585 () Bool)

(assert (=> b!1194585 (= e!767463 Empty!3950)))

(declare-fun bm!83211 () Bool)

(declare-fun c!198597 () Bool)

(assert (=> bm!83211 (= c!198597 c!198595)))

(assert (=> bm!83211 (= call!83215 call!83212)))

(declare-fun b!1194586 () Bool)

(assert (=> b!1194586 (= e!767467 e!767472)))

(assert (=> b!1194586 (= c!198595 (<= lt!409925 call!83211))))

(declare-fun b!1194587 () Bool)

(declare-fun res!539212 () Bool)

(assert (=> b!1194587 (=> (not res!539212) (not e!767468))))

(assert (=> b!1194587 (= res!539212 (<= lt!409925 (size!9518 (left!10473 t!4115))))))

(declare-fun b!1194588 () Bool)

(assert (=> b!1194588 (= e!767470 (- lt!409925 call!83211))))

(declare-fun b!1194589 () Bool)

(assert (=> b!1194589 (= e!767463 e!767469)))

(declare-fun c!198591 () Bool)

(assert (=> b!1194589 (= c!198591 ((_ is Leaf!6050) (left!10473 t!4115)))))

(assert (= (and d!340978 res!539214) b!1194587))

(assert (= (and b!1194587 res!539212) b!1194571))

(assert (= (and d!340978 c!198594) b!1194585))

(assert (= (and d!340978 (not c!198594)) b!1194589))

(assert (= (and b!1194589 c!198591) b!1194577))

(assert (= (and b!1194589 (not c!198591)) b!1194580))

(assert (= (and b!1194577 c!198596) b!1194581))

(assert (= (and b!1194577 (not c!198596)) b!1194584))

(assert (= (and b!1194580 c!198589) b!1194570))

(assert (= (and b!1194580 (not c!198589)) b!1194569))

(assert (= (and b!1194569 c!198590) b!1194574))

(assert (= (and b!1194569 (not c!198590)) b!1194583))

(assert (= (or b!1194574 b!1194583) bm!83208))

(assert (= (and bm!83208 c!198592) b!1194573))

(assert (= (and bm!83208 (not c!198592)) b!1194576))

(assert (= (or b!1194570 b!1194569 b!1194583 b!1194576) bm!83207))

(assert (= (or b!1194570 bm!83208) bm!83209))

(assert (= (and b!1194580 c!198593) b!1194575))

(assert (= (and b!1194580 (not c!198593)) b!1194586))

(assert (= (and b!1194586 c!198595) b!1194572))

(assert (= (and b!1194586 (not c!198595)) b!1194579))

(assert (= (or b!1194572 b!1194579) bm!83211))

(assert (= (and bm!83211 c!198597) b!1194582))

(assert (= (and bm!83211 (not c!198597)) b!1194588))

(assert (= (or b!1194575 b!1194579 b!1194586 b!1194588) bm!83206))

(assert (= (or b!1194575 bm!83211) bm!83210))

(assert (= (and d!340978 res!539213) b!1194578))

(declare-fun m!1369169 () Bool)

(assert (=> b!1194579 m!1369169))

(assert (=> b!1194579 m!1369169))

(declare-fun m!1369171 () Bool)

(assert (=> b!1194579 m!1369171))

(declare-fun m!1369173 () Bool)

(assert (=> d!340978 m!1369173))

(declare-fun m!1369175 () Bool)

(assert (=> bm!83207 m!1369175))

(declare-fun m!1369177 () Bool)

(assert (=> bm!83210 m!1369177))

(declare-fun m!1369179 () Bool)

(assert (=> b!1194578 m!1369179))

(assert (=> b!1194578 m!1368841))

(assert (=> b!1194578 m!1368841))

(declare-fun m!1369181 () Bool)

(assert (=> b!1194578 m!1369181))

(declare-fun m!1369183 () Bool)

(assert (=> b!1194583 m!1369183))

(assert (=> b!1194583 m!1369183))

(declare-fun m!1369185 () Bool)

(assert (=> b!1194583 m!1369185))

(declare-fun m!1369187 () Bool)

(assert (=> b!1194571 m!1369187))

(declare-fun m!1369189 () Bool)

(assert (=> bm!83206 m!1369189))

(declare-fun m!1369191 () Bool)

(assert (=> b!1194580 m!1369191))

(declare-fun m!1369193 () Bool)

(assert (=> b!1194580 m!1369193))

(assert (=> b!1194580 m!1368855))

(assert (=> b!1194580 m!1369189))

(assert (=> b!1194580 m!1368857))

(assert (=> b!1194580 m!1369193))

(declare-fun m!1369195 () Bool)

(assert (=> b!1194580 m!1369195))

(assert (=> b!1194580 m!1369175))

(declare-fun m!1369197 () Bool)

(assert (=> b!1194584 m!1369197))

(assert (=> b!1194587 m!1368835))

(declare-fun m!1369199 () Bool)

(assert (=> bm!83209 m!1369199))

(assert (=> b!1194113 d!340978))

(declare-fun b!1194590 () Bool)

(declare-fun e!767475 () List!12041)

(declare-fun e!767473 () List!12041)

(assert (=> b!1194590 (= e!767475 e!767473)))

(declare-fun c!198599 () Bool)

(declare-fun call!83222 () Int)

(assert (=> b!1194590 (= c!198599 (<= (- until!31 lt!409925) call!83222))))

(declare-fun b!1194591 () Bool)

(declare-fun call!83219 () List!12041)

(assert (=> b!1194591 (= e!767475 call!83219)))

(declare-fun b!1194592 () Bool)

(declare-fun e!767479 () Bool)

(assert (=> b!1194592 (= e!767479 (isBalanced!1135 (right!10803 t!4115)))))

(declare-fun b!1194594 () Bool)

(declare-fun e!767476 () Int)

(assert (=> b!1194594 (= e!767476 (- until!31 lt!409925))))

(declare-fun b!1194595 () Bool)

(declare-fun call!83220 () List!12041)

(assert (=> b!1194595 (= e!767473 call!83220)))

(declare-fun bm!83212 () Bool)

(declare-fun call!83217 () Int)

(assert (=> bm!83212 (= call!83217 (size!9518 (left!10473 (right!10803 t!4115))))))

(declare-fun bm!83213 () Bool)

(declare-fun lt!410017 () List!12041)

(assert (=> bm!83213 (= call!83222 (size!9519 lt!410017))))

(declare-fun b!1194596 () Bool)

(declare-fun e!767478 () Conc!3950)

(declare-fun call!83218 () Conc!3950)

(assert (=> b!1194596 (= e!767478 call!83218)))

(declare-fun b!1194597 () Bool)

(assert (=> b!1194597 (= e!767476 call!83222)))

(declare-fun b!1194598 () Bool)

(declare-fun c!198605 () Bool)

(assert (=> b!1194598 (= c!198605 (= (- (- until!31 lt!409925) 0) 0))))

(declare-fun e!767480 () Conc!3950)

(declare-fun e!767477 () Conc!3950)

(assert (=> b!1194598 (= e!767480 e!767477)))

(declare-fun e!767482 () Bool)

(declare-fun lt!410016 () Conc!3950)

(declare-fun b!1194599 () Bool)

(assert (=> b!1194599 (= e!767482 (= (list!4443 lt!410016) (slice!444 (list!4443 (right!10803 t!4115)) 0 (- until!31 lt!409925))))))

(declare-fun b!1194600 () Bool)

(declare-fun call!83221 () Conc!3950)

(declare-fun e!767483 () Conc!3950)

(assert (=> b!1194600 (= e!767483 (++!3060 (slice!445 (left!10473 (right!10803 t!4115)) 0 call!83217) call!83221))))

(declare-fun b!1194601 () Bool)

(declare-fun c!198602 () Bool)

(assert (=> b!1194601 (= c!198602 (<= (size!9518 (left!10473 (right!10803 t!4115))) 0))))

(declare-fun lt!410018 () Unit!18440)

(declare-fun lt!410014 () Unit!18440)

(assert (=> b!1194601 (= lt!410018 lt!410014)))

(declare-fun lt!410015 () List!12041)

(assert (=> b!1194601 (= (slice!444 (++!3059 lt!410017 lt!410015) 0 (- until!31 lt!409925)) e!767475)))

(declare-fun c!198598 () Bool)

(assert (=> b!1194601 (= c!198598 (<= (size!9519 lt!410017) 0))))

(assert (=> b!1194601 (= lt!410014 (sliceLemma!31 lt!410017 lt!410015 0 (- until!31 lt!409925)))))

(assert (=> b!1194601 (= lt!410015 (list!4443 (right!10803 (right!10803 t!4115))))))

(assert (=> b!1194601 (= lt!410017 (list!4443 (left!10473 (right!10803 t!4115))))))

(assert (=> b!1194601 (= e!767480 e!767478)))

(declare-fun b!1194602 () Bool)

(assert (=> b!1194602 (= e!767477 Empty!3950)))

(declare-fun b!1194603 () Bool)

(declare-fun e!767481 () Int)

(assert (=> b!1194603 (= e!767481 (- until!31 lt!409925))))

(declare-fun b!1194604 () Bool)

(assert (=> b!1194604 (= e!767473 (++!3059 call!83220 (slice!444 lt!410015 0 (- (- until!31 lt!409925) call!83222))))))

(declare-fun b!1194593 () Bool)

(assert (=> b!1194593 (= e!767483 call!83221)))

(declare-fun d!341000 () Bool)

(assert (=> d!341000 e!767482))

(declare-fun res!539216 () Bool)

(assert (=> d!341000 (=> (not res!539216) (not e!767482))))

(assert (=> d!341000 (= res!539216 (isBalanced!1135 lt!410016))))

(declare-fun e!767474 () Conc!3950)

(assert (=> d!341000 (= lt!410016 e!767474)))

(declare-fun c!198603 () Bool)

(assert (=> d!341000 (= c!198603 (= 0 (- until!31 lt!409925)))))

(assert (=> d!341000 e!767479))

(declare-fun res!539217 () Bool)

(assert (=> d!341000 (=> (not res!539217) (not e!767479))))

(assert (=> d!341000 (= res!539217 (and (<= 0 0) (<= 0 (- until!31 lt!409925))))))

(assert (=> d!341000 (= (slice!445 (right!10803 t!4115) 0 (- until!31 lt!409925)) lt!410016)))

(declare-fun bm!83214 () Bool)

(declare-fun c!198601 () Bool)

(assert (=> bm!83214 (= c!198601 c!198599)))

(assert (=> bm!83214 (= call!83220 call!83219)))

(declare-fun bm!83215 () Bool)

(assert (=> bm!83215 (= call!83219 (slice!444 (ite c!198598 lt!410015 lt!410017) (ite c!198598 (- 0 call!83222) 0) (ite c!198598 (- (- until!31 lt!409925) call!83222) e!767476)))))

(declare-fun bm!83216 () Bool)

(declare-fun c!198604 () Bool)

(assert (=> bm!83216 (= call!83218 (slice!445 (ite c!198602 (right!10803 (right!10803 t!4115)) (ite c!198604 (left!10473 (right!10803 t!4115)) (right!10803 (right!10803 t!4115)))) (ite c!198602 (- 0 call!83217) (ite c!198604 0 0)) (ite c!198602 (- (- until!31 lt!409925) call!83217) e!767481)))))

(declare-fun b!1194605 () Bool)

(assert (=> b!1194605 (= e!767477 (Leaf!6050 (slice!447 (xs!6655 (right!10803 t!4115)) 0 (- until!31 lt!409925)) (- (- until!31 lt!409925) 0)))))

(declare-fun b!1194606 () Bool)

(assert (=> b!1194606 (= e!767474 Empty!3950)))

(declare-fun bm!83217 () Bool)

(declare-fun c!198606 () Bool)

(assert (=> bm!83217 (= c!198606 c!198604)))

(assert (=> bm!83217 (= call!83221 call!83218)))

(declare-fun b!1194607 () Bool)

(assert (=> b!1194607 (= e!767478 e!767483)))

(assert (=> b!1194607 (= c!198604 (<= (- until!31 lt!409925) call!83217))))

(declare-fun b!1194608 () Bool)

(declare-fun res!539215 () Bool)

(assert (=> b!1194608 (=> (not res!539215) (not e!767479))))

(assert (=> b!1194608 (= res!539215 (<= (- until!31 lt!409925) (size!9518 (right!10803 t!4115))))))

(declare-fun b!1194609 () Bool)

(assert (=> b!1194609 (= e!767481 (- (- until!31 lt!409925) call!83217))))

(declare-fun b!1194610 () Bool)

(assert (=> b!1194610 (= e!767474 e!767480)))

(declare-fun c!198600 () Bool)

(assert (=> b!1194610 (= c!198600 ((_ is Leaf!6050) (right!10803 t!4115)))))

(assert (= (and d!341000 res!539217) b!1194608))

(assert (= (and b!1194608 res!539215) b!1194592))

(assert (= (and d!341000 c!198603) b!1194606))

(assert (= (and d!341000 (not c!198603)) b!1194610))

(assert (= (and b!1194610 c!198600) b!1194598))

(assert (= (and b!1194610 (not c!198600)) b!1194601))

(assert (= (and b!1194598 c!198605) b!1194602))

(assert (= (and b!1194598 (not c!198605)) b!1194605))

(assert (= (and b!1194601 c!198598) b!1194591))

(assert (= (and b!1194601 (not c!198598)) b!1194590))

(assert (= (and b!1194590 c!198599) b!1194595))

(assert (= (and b!1194590 (not c!198599)) b!1194604))

(assert (= (or b!1194595 b!1194604) bm!83214))

(assert (= (and bm!83214 c!198601) b!1194594))

(assert (= (and bm!83214 (not c!198601)) b!1194597))

(assert (= (or b!1194591 b!1194590 b!1194604 b!1194597) bm!83213))

(assert (= (or b!1194591 bm!83214) bm!83215))

(assert (= (and b!1194601 c!198602) b!1194596))

(assert (= (and b!1194601 (not c!198602)) b!1194607))

(assert (= (and b!1194607 c!198604) b!1194593))

(assert (= (and b!1194607 (not c!198604)) b!1194600))

(assert (= (or b!1194593 b!1194600) bm!83217))

(assert (= (and bm!83217 c!198606) b!1194603))

(assert (= (and bm!83217 (not c!198606)) b!1194609))

(assert (= (or b!1194596 b!1194600 b!1194607 b!1194609) bm!83212))

(assert (= (or b!1194596 bm!83217) bm!83216))

(assert (= (and d!341000 res!539216) b!1194599))

(declare-fun m!1369201 () Bool)

(assert (=> b!1194600 m!1369201))

(assert (=> b!1194600 m!1369201))

(declare-fun m!1369203 () Bool)

(assert (=> b!1194600 m!1369203))

(declare-fun m!1369205 () Bool)

(assert (=> d!341000 m!1369205))

(declare-fun m!1369207 () Bool)

(assert (=> bm!83213 m!1369207))

(declare-fun m!1369209 () Bool)

(assert (=> bm!83216 m!1369209))

(declare-fun m!1369211 () Bool)

(assert (=> b!1194599 m!1369211))

(assert (=> b!1194599 m!1368831))

(assert (=> b!1194599 m!1368831))

(declare-fun m!1369213 () Bool)

(assert (=> b!1194599 m!1369213))

(declare-fun m!1369215 () Bool)

(assert (=> b!1194604 m!1369215))

(assert (=> b!1194604 m!1369215))

(declare-fun m!1369217 () Bool)

(assert (=> b!1194604 m!1369217))

(declare-fun m!1369219 () Bool)

(assert (=> b!1194592 m!1369219))

(declare-fun m!1369221 () Bool)

(assert (=> bm!83212 m!1369221))

(declare-fun m!1369223 () Bool)

(assert (=> b!1194601 m!1369223))

(declare-fun m!1369225 () Bool)

(assert (=> b!1194601 m!1369225))

(assert (=> b!1194601 m!1368863))

(assert (=> b!1194601 m!1369221))

(assert (=> b!1194601 m!1368865))

(assert (=> b!1194601 m!1369225))

(declare-fun m!1369227 () Bool)

(assert (=> b!1194601 m!1369227))

(assert (=> b!1194601 m!1369207))

(declare-fun m!1369229 () Bool)

(assert (=> b!1194605 m!1369229))

(declare-fun m!1369231 () Bool)

(assert (=> b!1194608 m!1369231))

(declare-fun m!1369233 () Bool)

(assert (=> bm!83215 m!1369233))

(assert (=> b!1194113 d!341000))

(declare-fun d!341002 () Bool)

(assert (=> d!341002 (= (slice!444 lt!409922 (ite c!198428 (- from!553 lt!409921) 0) (- until!31 lt!409921)) (take!114 (drop!586 lt!409922 (ite c!198428 (- from!553 lt!409921) 0)) (- (- until!31 lt!409921) (ite c!198428 (- from!553 lt!409921) 0))))))

(declare-fun bs!288006 () Bool)

(assert (= bs!288006 d!341002))

(declare-fun m!1369235 () Bool)

(assert (=> bs!288006 m!1369235))

(assert (=> bs!288006 m!1369235))

(declare-fun m!1369237 () Bool)

(assert (=> bs!288006 m!1369237))

(assert (=> bm!83054 d!341002))

(declare-fun d!341004 () Bool)

(declare-fun c!198609 () Bool)

(assert (=> d!341004 (= c!198609 ((_ is Node!3950) (left!10473 t!4115)))))

(declare-fun e!767488 () Bool)

(assert (=> d!341004 (= (inv!15981 (left!10473 t!4115)) e!767488)))

(declare-fun b!1194617 () Bool)

(declare-fun inv!15984 (Conc!3950) Bool)

(assert (=> b!1194617 (= e!767488 (inv!15984 (left!10473 t!4115)))))

(declare-fun b!1194618 () Bool)

(declare-fun e!767489 () Bool)

(assert (=> b!1194618 (= e!767488 e!767489)))

(declare-fun res!539220 () Bool)

(assert (=> b!1194618 (= res!539220 (not ((_ is Leaf!6050) (left!10473 t!4115))))))

(assert (=> b!1194618 (=> res!539220 e!767489)))

(declare-fun b!1194619 () Bool)

(declare-fun inv!15985 (Conc!3950) Bool)

(assert (=> b!1194619 (= e!767489 (inv!15985 (left!10473 t!4115)))))

(assert (= (and d!341004 c!198609) b!1194617))

(assert (= (and d!341004 (not c!198609)) b!1194618))

(assert (= (and b!1194618 (not res!539220)) b!1194619))

(declare-fun m!1369239 () Bool)

(assert (=> b!1194617 m!1369239))

(declare-fun m!1369241 () Bool)

(assert (=> b!1194619 m!1369241))

(assert (=> b!1194112 d!341004))

(declare-fun d!341006 () Bool)

(declare-fun c!198610 () Bool)

(assert (=> d!341006 (= c!198610 ((_ is Node!3950) (right!10803 t!4115)))))

(declare-fun e!767490 () Bool)

(assert (=> d!341006 (= (inv!15981 (right!10803 t!4115)) e!767490)))

(declare-fun b!1194620 () Bool)

(assert (=> b!1194620 (= e!767490 (inv!15984 (right!10803 t!4115)))))

(declare-fun b!1194621 () Bool)

(declare-fun e!767491 () Bool)

(assert (=> b!1194621 (= e!767490 e!767491)))

(declare-fun res!539221 () Bool)

(assert (=> b!1194621 (= res!539221 (not ((_ is Leaf!6050) (right!10803 t!4115))))))

(assert (=> b!1194621 (=> res!539221 e!767491)))

(declare-fun b!1194622 () Bool)

(assert (=> b!1194622 (= e!767491 (inv!15985 (right!10803 t!4115)))))

(assert (= (and d!341006 c!198610) b!1194620))

(assert (= (and d!341006 (not c!198610)) b!1194621))

(assert (= (and b!1194621 (not res!539221)) b!1194622))

(declare-fun m!1369243 () Bool)

(assert (=> b!1194620 m!1369243))

(declare-fun m!1369245 () Bool)

(assert (=> b!1194622 m!1369245))

(assert (=> b!1194112 d!341006))

(declare-fun b!1194623 () Bool)

(declare-fun e!767493 () Bool)

(declare-fun e!767492 () Bool)

(assert (=> b!1194623 (= e!767493 e!767492)))

(declare-fun res!539224 () Bool)

(assert (=> b!1194623 (=> (not res!539224) (not e!767492))))

(assert (=> b!1194623 (= res!539224 (<= (- 1) (- (height!548 (left!10473 t!4115)) (height!548 (right!10803 t!4115)))))))

(declare-fun b!1194624 () Bool)

(assert (=> b!1194624 (= e!767492 (not (isEmpty!7229 (right!10803 t!4115))))))

(declare-fun b!1194625 () Bool)

(declare-fun res!539222 () Bool)

(assert (=> b!1194625 (=> (not res!539222) (not e!767492))))

(assert (=> b!1194625 (= res!539222 (isBalanced!1135 (left!10473 t!4115)))))

(declare-fun b!1194626 () Bool)

(declare-fun res!539226 () Bool)

(assert (=> b!1194626 (=> (not res!539226) (not e!767492))))

(assert (=> b!1194626 (= res!539226 (isBalanced!1135 (right!10803 t!4115)))))

(declare-fun b!1194627 () Bool)

(declare-fun res!539225 () Bool)

(assert (=> b!1194627 (=> (not res!539225) (not e!767492))))

(assert (=> b!1194627 (= res!539225 (<= (- (height!548 (left!10473 t!4115)) (height!548 (right!10803 t!4115))) 1))))

(declare-fun d!341008 () Bool)

(declare-fun res!539223 () Bool)

(assert (=> d!341008 (=> res!539223 e!767493)))

(assert (=> d!341008 (= res!539223 (not ((_ is Node!3950) t!4115)))))

(assert (=> d!341008 (= (isBalanced!1135 t!4115) e!767493)))

(declare-fun b!1194628 () Bool)

(declare-fun res!539227 () Bool)

(assert (=> b!1194628 (=> (not res!539227) (not e!767492))))

(assert (=> b!1194628 (= res!539227 (not (isEmpty!7229 (left!10473 t!4115))))))

(assert (= (and d!341008 (not res!539223)) b!1194623))

(assert (= (and b!1194623 res!539224) b!1194627))

(assert (= (and b!1194627 res!539225) b!1194625))

(assert (= (and b!1194625 res!539222) b!1194626))

(assert (= (and b!1194626 res!539226) b!1194628))

(assert (= (and b!1194628 res!539227) b!1194624))

(declare-fun m!1369247 () Bool)

(assert (=> b!1194627 m!1369247))

(declare-fun m!1369249 () Bool)

(assert (=> b!1194627 m!1369249))

(assert (=> b!1194623 m!1369247))

(assert (=> b!1194623 m!1369249))

(assert (=> b!1194625 m!1369187))

(declare-fun m!1369251 () Bool)

(assert (=> b!1194624 m!1369251))

(assert (=> b!1194626 m!1369219))

(declare-fun m!1369253 () Bool)

(assert (=> b!1194628 m!1369253))

(assert (=> b!1194111 d!341008))

(declare-fun d!341010 () Bool)

(declare-fun c!198611 () Bool)

(assert (=> d!341010 (= c!198611 ((_ is Node!3950) t!4115))))

(declare-fun e!767494 () Bool)

(assert (=> d!341010 (= (inv!15981 t!4115) e!767494)))

(declare-fun b!1194629 () Bool)

(assert (=> b!1194629 (= e!767494 (inv!15984 t!4115))))

(declare-fun b!1194630 () Bool)

(declare-fun e!767495 () Bool)

(assert (=> b!1194630 (= e!767494 e!767495)))

(declare-fun res!539228 () Bool)

(assert (=> b!1194630 (= res!539228 (not ((_ is Leaf!6050) t!4115)))))

(assert (=> b!1194630 (=> res!539228 e!767495)))

(declare-fun b!1194631 () Bool)

(assert (=> b!1194631 (= e!767495 (inv!15985 t!4115))))

(assert (= (and d!341010 c!198611) b!1194629))

(assert (= (and d!341010 (not c!198611)) b!1194630))

(assert (= (and b!1194630 (not res!539228)) b!1194631))

(declare-fun m!1369255 () Bool)

(assert (=> b!1194629 m!1369255))

(declare-fun m!1369257 () Bool)

(assert (=> b!1194631 m!1369257))

(assert (=> start!106204 d!341010))

(declare-fun b!1194632 () Bool)

(declare-fun e!767497 () List!12041)

(assert (=> b!1194632 (= e!767497 call!83059)))

(declare-fun e!767496 () Bool)

(declare-fun lt!410019 () List!12041)

(declare-fun b!1194635 () Bool)

(assert (=> b!1194635 (= e!767496 (or (not (= call!83059 Nil!12017)) (= lt!410019 call!83060)))))

(declare-fun b!1194633 () Bool)

(assert (=> b!1194633 (= e!767497 (Cons!12017 (h!17418 call!83060) (++!3059 (t!112319 call!83060) call!83059)))))

(declare-fun d!341012 () Bool)

(assert (=> d!341012 e!767496))

(declare-fun res!539229 () Bool)

(assert (=> d!341012 (=> (not res!539229) (not e!767496))))

(assert (=> d!341012 (= res!539229 (= (content!1673 lt!410019) ((_ map or) (content!1673 call!83060) (content!1673 call!83059))))))

(assert (=> d!341012 (= lt!410019 e!767497)))

(declare-fun c!198612 () Bool)

(assert (=> d!341012 (= c!198612 ((_ is Nil!12017) call!83060))))

(assert (=> d!341012 (= (++!3059 call!83060 call!83059) lt!410019)))

(declare-fun b!1194634 () Bool)

(declare-fun res!539230 () Bool)

(assert (=> b!1194634 (=> (not res!539230) (not e!767496))))

(assert (=> b!1194634 (= res!539230 (= (size!9519 lt!410019) (+ (size!9519 call!83060) (size!9519 call!83059))))))

(assert (= (and d!341012 c!198612) b!1194632))

(assert (= (and d!341012 (not c!198612)) b!1194633))

(assert (= (and d!341012 res!539229) b!1194634))

(assert (= (and b!1194634 res!539230) b!1194635))

(declare-fun m!1369259 () Bool)

(assert (=> b!1194633 m!1369259))

(declare-fun m!1369261 () Bool)

(assert (=> d!341012 m!1369261))

(declare-fun m!1369263 () Bool)

(assert (=> d!341012 m!1369263))

(declare-fun m!1369265 () Bool)

(assert (=> d!341012 m!1369265))

(declare-fun m!1369267 () Bool)

(assert (=> b!1194634 m!1369267))

(declare-fun m!1369269 () Bool)

(assert (=> b!1194634 m!1369269))

(declare-fun m!1369271 () Bool)

(assert (=> b!1194634 m!1369271))

(assert (=> b!1194110 d!341012))

(declare-fun d!341014 () Bool)

(declare-fun lt!410020 () Int)

(assert (=> d!341014 (= lt!410020 (size!9519 (list!4443 t!4115)))))

(assert (=> d!341014 (= lt!410020 (ite ((_ is Empty!3950) t!4115) 0 (ite ((_ is Leaf!6050) t!4115) (csize!8131 t!4115) (csize!8130 t!4115))))))

(assert (=> d!341014 (= (size!9518 t!4115) lt!410020)))

(declare-fun bs!288007 () Bool)

(assert (= bs!288007 d!341014))

(assert (=> bs!288007 m!1368823))

(assert (=> bs!288007 m!1368823))

(assert (=> bs!288007 m!1368825))

(assert (=> b!1194109 d!341014))

(declare-fun d!341016 () Bool)

(assert (=> d!341016 (= (inv!15980 (xs!6655 t!4115)) (<= (size!9519 (innerList!4010 (xs!6655 t!4115))) 2147483647))))

(declare-fun bs!288008 () Bool)

(assert (= bs!288008 d!341016))

(declare-fun m!1369273 () Bool)

(assert (=> bs!288008 m!1369273))

(assert (=> b!1194108 d!341016))

(declare-fun b!1194644 () Bool)

(declare-fun tp!340321 () Bool)

(declare-fun e!767502 () Bool)

(declare-fun tp!340319 () Bool)

(assert (=> b!1194644 (= e!767502 (and (inv!15981 (left!10473 (left!10473 t!4115))) tp!340321 (inv!15981 (right!10803 (left!10473 t!4115))) tp!340319))))

(declare-fun b!1194646 () Bool)

(declare-fun e!767503 () Bool)

(declare-fun tp!340320 () Bool)

(assert (=> b!1194646 (= e!767503 tp!340320)))

(declare-fun b!1194645 () Bool)

(assert (=> b!1194645 (= e!767502 (and (inv!15980 (xs!6655 (left!10473 t!4115))) e!767503))))

(assert (=> b!1194112 (= tp!340295 (and (inv!15981 (left!10473 t!4115)) e!767502))))

(assert (= (and b!1194112 ((_ is Node!3950) (left!10473 t!4115))) b!1194644))

(assert (= b!1194645 b!1194646))

(assert (= (and b!1194112 ((_ is Leaf!6050) (left!10473 t!4115))) b!1194645))

(declare-fun m!1369275 () Bool)

(assert (=> b!1194644 m!1369275))

(declare-fun m!1369277 () Bool)

(assert (=> b!1194644 m!1369277))

(declare-fun m!1369279 () Bool)

(assert (=> b!1194645 m!1369279))

(assert (=> b!1194112 m!1368809))

(declare-fun tp!340324 () Bool)

(declare-fun b!1194647 () Bool)

(declare-fun e!767504 () Bool)

(declare-fun tp!340322 () Bool)

(assert (=> b!1194647 (= e!767504 (and (inv!15981 (left!10473 (right!10803 t!4115))) tp!340324 (inv!15981 (right!10803 (right!10803 t!4115))) tp!340322))))

(declare-fun b!1194649 () Bool)

(declare-fun e!767505 () Bool)

(declare-fun tp!340323 () Bool)

(assert (=> b!1194649 (= e!767505 tp!340323)))

(declare-fun b!1194648 () Bool)

(assert (=> b!1194648 (= e!767504 (and (inv!15980 (xs!6655 (right!10803 t!4115))) e!767505))))

(assert (=> b!1194112 (= tp!340296 (and (inv!15981 (right!10803 t!4115)) e!767504))))

(assert (= (and b!1194112 ((_ is Node!3950) (right!10803 t!4115))) b!1194647))

(assert (= b!1194648 b!1194649))

(assert (= (and b!1194112 ((_ is Leaf!6050) (right!10803 t!4115))) b!1194648))

(declare-fun m!1369281 () Bool)

(assert (=> b!1194647 m!1369281))

(declare-fun m!1369283 () Bool)

(assert (=> b!1194647 m!1369283))

(declare-fun m!1369285 () Bool)

(assert (=> b!1194648 m!1369285))

(assert (=> b!1194112 m!1368811))

(declare-fun b!1194654 () Bool)

(declare-fun e!767508 () Bool)

(declare-fun tp_is_empty!5935 () Bool)

(declare-fun tp!340327 () Bool)

(assert (=> b!1194654 (= e!767508 (and tp_is_empty!5935 tp!340327))))

(assert (=> b!1194114 (= tp!340297 e!767508)))

(assert (= (and b!1194114 ((_ is Cons!12017) (innerList!4010 (xs!6655 t!4115)))) b!1194654))

(check-sat (not d!340942) (not b!1194619) (not b!1194199) (not b!1194187) (not b!1194250) (not b!1194579) (not b!1194438) (not d!340978) (not b!1194599) (not b!1194623) (not bm!83062) (not bm!83216) (not d!341000) (not b!1194634) (not b!1194170) (not b!1194645) (not b!1194584) (not b!1194120) (not b!1194654) (not bm!83064) (not b!1194427) (not b!1194644) (not bm!83210) (not b!1194424) (not b!1194132) (not b!1194617) (not b!1194620) (not b!1194429) (not d!340948) (not bm!83207) (not b!1194587) (not d!341014) (not b!1194136) (not b!1194646) (not b!1194578) (not b!1194246) (not bm!83212) (not b!1194251) (not b!1194627) (not bm!83215) (not b!1194608) tp_is_empty!5935 (not bm!83175) (not b!1194171) (not bm!83182) (not b!1194112) (not b!1194647) (not bm!83180) (not b!1194624) (not b!1194420) (not b!1194191) (not d!340930) (not d!341016) (not bm!83206) (not b!1194628) (not bm!83209) (not b!1194249) (not b!1194247) (not bm!83213) (not b!1194622) (not d!341012) (not b!1194605) (not b!1194604) (not b!1194198) (not b!1194600) (not d!340934) (not d!340958) (not b!1194601) (not b!1194626) (not b!1194131) (not b!1194580) (not b!1194629) (not bm!83178) (not b!1194625) (not bm!83170) (not b!1194195) (not b!1194649) (not b!1194135) (not b!1194648) (not b!1194248) (not bm!83183) (not d!340950) (not b!1194633) (not d!341002) (not b!1194571) (not b!1194428) (not b!1194583) (not bm!83176) (not b!1194592) (not b!1194631))
(check-sat)
