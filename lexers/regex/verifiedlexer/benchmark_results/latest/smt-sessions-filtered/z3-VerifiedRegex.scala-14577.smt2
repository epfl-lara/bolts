; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755612 () Bool)

(assert start!755612)

(declare-datatypes ((T!148348 0))(
  ( (T!148349 (val!32552 Int)) )
))
(declare-datatypes ((List!75066 0))(
  ( (Nil!74941) (Cons!74941 (h!81389 T!148348) (t!390820 List!75066)) )
))
(declare-datatypes ((BalanceConc!30848 0) (Conc!15944 0) (Object!9123 0) (List!75068 0) (IArray!31949 0))(
  ( (BalanceConc!30849 (c!1472671 Conc!15944)) )
  ( (Node!15944 (left!57161 Conc!15944) (right!57491 Conc!15944) (csize!32118 Int) (cheight!16155 Int)) (Leaf!30522 (xs!19342 IArray!31949) (csize!32119 Int)) (Empty!15944) )
  ( (BalanceConc!30847 (value!290216 BalanceConc!30848)) (List!75067 (value!290217 List!75068)) (Character!124 (value!290218 (_ BitVec 16))) (Open!124 (value!290219 Int)) )
  ( (Nil!74942) (Cons!74942 (h!81390 Object!9123) (t!390821 List!75068)) )
  ( (IArray!31950 (innerList!16032 List!75068)) )
))
(declare-datatypes ((Vector!256 0))(
  ( (Vector!257 (underlying!10470 Object!9123) (overflowing!185 List!75066)) )
))
(declare-fun thiss!9322 () Vector!256)

(declare-fun t!5886 () T!148348)

(declare-fun choose!60443 (Vector!256 T!148348) Bool)

(declare-fun contains!20906 (List!75066 T!148348) Bool)

(declare-fun list!19486 (Vector!256) List!75066)

(assert (=> start!755612 (not (= (choose!60443 thiss!9322 t!5886) (contains!20906 (list!19486 thiss!9322) t!5886)))))

(declare-fun e!4727971 () Bool)

(assert (=> start!755612 e!4727971))

(declare-fun tp_is_empty!54209 () Bool)

(assert (=> start!755612 tp_is_empty!54209))

(declare-fun b!8025749 () Bool)

(declare-fun tp!2401880 () Bool)

(declare-fun tp!2401881 () Bool)

(assert (=> b!8025749 (= e!4727971 (and tp!2401880 tp!2401881))))

(assert (= start!755612 b!8025749))

(declare-fun m!8388324 () Bool)

(assert (=> start!755612 m!8388324))

(declare-fun m!8388326 () Bool)

(assert (=> start!755612 m!8388326))

(assert (=> start!755612 m!8388326))

(declare-fun m!8388328 () Bool)

(assert (=> start!755612 m!8388328))

(check-sat (not start!755612) (not b!8025749) tp_is_empty!54209)
(check-sat)
(get-model)

(declare-fun d!2393284 () Bool)

(declare-fun choose!60444 (Vector!256 T!148348) Bool)

(assert (=> d!2393284 (= (choose!60443 thiss!9322 t!5886) (choose!60444 thiss!9322 t!5886))))

(declare-fun bs!1971291 () Bool)

(assert (= bs!1971291 d!2393284))

(declare-fun m!8388330 () Bool)

(assert (=> bs!1971291 m!8388330))

(assert (=> start!755612 d!2393284))

(declare-fun d!2393286 () Bool)

(declare-fun lt!2720767 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15964 (List!75066) (InoxSet T!148348))

(assert (=> d!2393286 (= lt!2720767 (select (content!15964 (list!19486 thiss!9322)) t!5886))))

(declare-fun e!4727976 () Bool)

(assert (=> d!2393286 (= lt!2720767 e!4727976)))

(declare-fun res!3173745 () Bool)

(assert (=> d!2393286 (=> (not res!3173745) (not e!4727976))))

(get-info :version)

(assert (=> d!2393286 (= res!3173745 ((_ is Cons!74941) (list!19486 thiss!9322)))))

(assert (=> d!2393286 (= (contains!20906 (list!19486 thiss!9322) t!5886) lt!2720767)))

(declare-fun b!8025754 () Bool)

(declare-fun e!4727977 () Bool)

(assert (=> b!8025754 (= e!4727976 e!4727977)))

(declare-fun res!3173746 () Bool)

(assert (=> b!8025754 (=> res!3173746 e!4727977)))

(assert (=> b!8025754 (= res!3173746 (= (h!81389 (list!19486 thiss!9322)) t!5886))))

(declare-fun b!8025755 () Bool)

(assert (=> b!8025755 (= e!4727977 (contains!20906 (t!390820 (list!19486 thiss!9322)) t!5886))))

(assert (= (and d!2393286 res!3173745) b!8025754))

(assert (= (and b!8025754 (not res!3173746)) b!8025755))

(assert (=> d!2393286 m!8388326))

(declare-fun m!8388334 () Bool)

(assert (=> d!2393286 m!8388334))

(declare-fun m!8388336 () Bool)

(assert (=> d!2393286 m!8388336))

(declare-fun m!8388338 () Bool)

(assert (=> b!8025755 m!8388338))

(assert (=> start!755612 d!2393286))

(declare-fun d!2393292 () Bool)

(declare-fun choose!60445 (Vector!256) List!75066)

(assert (=> d!2393292 (= (list!19486 thiss!9322) (choose!60445 thiss!9322))))

(declare-fun bs!1971293 () Bool)

(assert (= bs!1971293 d!2393292))

(declare-fun m!8388340 () Bool)

(assert (=> bs!1971293 m!8388340))

(assert (=> start!755612 d!2393292))

(declare-fun b!8025765 () Bool)

(declare-fun e!4727983 () Bool)

(declare-fun tp!2401886 () Bool)

(declare-fun inv!96621 (Conc!15944) Bool)

(assert (=> b!8025765 (= e!4727983 (and (inv!96621 (c!1472671 (value!290216 (underlying!10470 thiss!9322)))) tp!2401886))))

(declare-fun b!8025764 () Bool)

(declare-fun e!4727982 () Bool)

(declare-fun inv!96622 (BalanceConc!30848) Bool)

(assert (=> b!8025764 (= e!4727982 (and (inv!96622 (value!290216 (underlying!10470 thiss!9322))) e!4727983))))

(declare-fun b!8025766 () Bool)

(declare-fun tp!2401887 () Bool)

(assert (=> b!8025766 (= e!4727982 tp!2401887)))

(assert (=> b!8025749 (= tp!2401880 e!4727982)))

(assert (= b!8025764 b!8025765))

(assert (= (and b!8025749 ((_ is BalanceConc!30847) (underlying!10470 thiss!9322))) b!8025764))

(assert (= (and b!8025749 ((_ is List!75067) (underlying!10470 thiss!9322))) b!8025766))

(declare-fun m!8388342 () Bool)

(assert (=> b!8025765 m!8388342))

(declare-fun m!8388344 () Bool)

(assert (=> b!8025764 m!8388344))

(declare-fun b!8025771 () Bool)

(declare-fun e!4727986 () Bool)

(declare-fun tp!2401890 () Bool)

(assert (=> b!8025771 (= e!4727986 (and tp_is_empty!54209 tp!2401890))))

(assert (=> b!8025749 (= tp!2401881 e!4727986)))

(assert (= (and b!8025749 ((_ is Cons!74941) (overflowing!185 thiss!9322))) b!8025771))

(check-sat (not d!2393284) (not b!8025764) (not d!2393292) (not d!2393286) (not b!8025755) (not b!8025766) (not b!8025771) tp_is_empty!54209 (not b!8025765))
(check-sat)
(get-model)

(declare-fun d!2393296 () Bool)

(declare-fun lt!2720771 () Bool)

(assert (=> d!2393296 (= lt!2720771 (select (content!15964 (t!390820 (list!19486 thiss!9322))) t!5886))))

(declare-fun e!4728002 () Bool)

(assert (=> d!2393296 (= lt!2720771 e!4728002)))

(declare-fun res!3173753 () Bool)

(assert (=> d!2393296 (=> (not res!3173753) (not e!4728002))))

(assert (=> d!2393296 (= res!3173753 ((_ is Cons!74941) (t!390820 (list!19486 thiss!9322))))))

(assert (=> d!2393296 (= (contains!20906 (t!390820 (list!19486 thiss!9322)) t!5886) lt!2720771)))

(declare-fun b!8025794 () Bool)

(declare-fun e!4728003 () Bool)

(assert (=> b!8025794 (= e!4728002 e!4728003)))

(declare-fun res!3173754 () Bool)

(assert (=> b!8025794 (=> res!3173754 e!4728003)))

(assert (=> b!8025794 (= res!3173754 (= (h!81389 (t!390820 (list!19486 thiss!9322))) t!5886))))

(declare-fun b!8025795 () Bool)

(assert (=> b!8025795 (= e!4728003 (contains!20906 (t!390820 (t!390820 (list!19486 thiss!9322))) t!5886))))

(assert (= (and d!2393296 res!3173753) b!8025794))

(assert (= (and b!8025794 (not res!3173754)) b!8025795))

(declare-fun m!8388358 () Bool)

(assert (=> d!2393296 m!8388358))

(declare-fun m!8388360 () Bool)

(assert (=> d!2393296 m!8388360))

(declare-fun m!8388362 () Bool)

(assert (=> b!8025795 m!8388362))

(assert (=> b!8025755 d!2393296))

(declare-fun d!2393298 () Bool)

(declare-fun c!1472674 () Bool)

(assert (=> d!2393298 (= c!1472674 ((_ is Nil!74941) (list!19486 thiss!9322)))))

(declare-fun e!4728006 () (InoxSet T!148348))

(assert (=> d!2393298 (= (content!15964 (list!19486 thiss!9322)) e!4728006)))

(declare-fun b!8025800 () Bool)

(assert (=> b!8025800 (= e!4728006 ((as const (Array T!148348 Bool)) false))))

(declare-fun b!8025801 () Bool)

(assert (=> b!8025801 (= e!4728006 ((_ map or) (store ((as const (Array T!148348 Bool)) false) (h!81389 (list!19486 thiss!9322)) true) (content!15964 (t!390820 (list!19486 thiss!9322)))))))

(assert (= (and d!2393298 c!1472674) b!8025800))

(assert (= (and d!2393298 (not c!1472674)) b!8025801))

(declare-fun m!8388364 () Bool)

(assert (=> b!8025801 m!8388364))

(assert (=> b!8025801 m!8388358))

(assert (=> d!2393286 d!2393298))

(declare-fun d!2393300 () Bool)

(declare-fun isBalanced!4549 (Conc!15944) Bool)

(assert (=> d!2393300 (= (inv!96622 (value!290216 (underlying!10470 thiss!9322))) (isBalanced!4549 (c!1472671 (value!290216 (underlying!10470 thiss!9322)))))))

(declare-fun bs!1971295 () Bool)

(assert (= bs!1971295 d!2393300))

(declare-fun m!8388366 () Bool)

(assert (=> bs!1971295 m!8388366))

(assert (=> b!8025764 d!2393300))

(declare-fun d!2393302 () Bool)

(declare-fun c!1472677 () Bool)

(assert (=> d!2393302 (= c!1472677 ((_ is Node!15944) (c!1472671 (value!290216 (underlying!10470 thiss!9322)))))))

(declare-fun e!4728011 () Bool)

(assert (=> d!2393302 (= (inv!96621 (c!1472671 (value!290216 (underlying!10470 thiss!9322)))) e!4728011)))

(declare-fun b!8025808 () Bool)

(declare-fun inv!96625 (Conc!15944) Bool)

(assert (=> b!8025808 (= e!4728011 (inv!96625 (c!1472671 (value!290216 (underlying!10470 thiss!9322)))))))

(declare-fun b!8025809 () Bool)

(declare-fun e!4728012 () Bool)

(assert (=> b!8025809 (= e!4728011 e!4728012)))

(declare-fun res!3173757 () Bool)

(assert (=> b!8025809 (= res!3173757 (not ((_ is Leaf!30522) (c!1472671 (value!290216 (underlying!10470 thiss!9322))))))))

(assert (=> b!8025809 (=> res!3173757 e!4728012)))

(declare-fun b!8025810 () Bool)

(declare-fun inv!96626 (Conc!15944) Bool)

(assert (=> b!8025810 (= e!4728012 (inv!96626 (c!1472671 (value!290216 (underlying!10470 thiss!9322)))))))

(assert (= (and d!2393302 c!1472677) b!8025808))

(assert (= (and d!2393302 (not c!1472677)) b!8025809))

(assert (= (and b!8025809 (not res!3173757)) b!8025810))

(declare-fun m!8388368 () Bool)

(assert (=> b!8025808 m!8388368))

(declare-fun m!8388370 () Bool)

(assert (=> b!8025810 m!8388370))

(assert (=> b!8025765 d!2393302))

(declare-fun d!2393304 () Bool)

(assert (=> d!2393304 true))

(declare-fun e!4728015 () Bool)

(assert (=> d!2393304 e!4728015))

(declare-fun res!3173760 () List!75066)

(assert (=> d!2393304 (= (choose!60445 thiss!9322) res!3173760)))

(declare-fun b!8025813 () Bool)

(declare-fun tp!2401902 () Bool)

(assert (=> b!8025813 (= e!4728015 (and tp_is_empty!54209 tp!2401902))))

(assert (= (and d!2393304 ((_ is Cons!74941) res!3173760)) b!8025813))

(assert (=> d!2393292 d!2393304))

(declare-fun d!2393306 () Bool)

(declare-fun res!3173763 () Bool)

(assert (=> d!2393306 (= res!3173763 (contains!20906 (list!19486 thiss!9322) t!5886))))

(assert (=> d!2393306 true))

(assert (=> d!2393306 (= (choose!60444 thiss!9322 t!5886) res!3173763)))

(declare-fun bs!1971296 () Bool)

(assert (= bs!1971296 d!2393306))

(assert (=> bs!1971296 m!8388326))

(assert (=> bs!1971296 m!8388326))

(assert (=> bs!1971296 m!8388328))

(assert (=> d!2393284 d!2393306))

(declare-fun b!8025814 () Bool)

(declare-fun e!4728016 () Bool)

(declare-fun tp!2401903 () Bool)

(assert (=> b!8025814 (= e!4728016 (and tp_is_empty!54209 tp!2401903))))

(assert (=> b!8025771 (= tp!2401890 e!4728016)))

(assert (= (and b!8025771 ((_ is Cons!74941) (t!390820 (overflowing!185 thiss!9322)))) b!8025814))

(declare-fun tp!2401911 () Bool)

(declare-fun b!8025823 () Bool)

(declare-fun e!4728021 () Bool)

(declare-fun tp!2401910 () Bool)

(assert (=> b!8025823 (= e!4728021 (and (inv!96621 (left!57161 (c!1472671 (value!290216 (underlying!10470 thiss!9322))))) tp!2401910 (inv!96621 (right!57491 (c!1472671 (value!290216 (underlying!10470 thiss!9322))))) tp!2401911))))

(declare-fun b!8025825 () Bool)

(declare-fun e!4728022 () Bool)

(declare-fun tp!2401912 () Bool)

(assert (=> b!8025825 (= e!4728022 tp!2401912)))

(declare-fun b!8025824 () Bool)

(declare-fun inv!96627 (IArray!31949) Bool)

(assert (=> b!8025824 (= e!4728021 (and (inv!96627 (xs!19342 (c!1472671 (value!290216 (underlying!10470 thiss!9322))))) e!4728022))))

(assert (=> b!8025765 (= tp!2401886 (and (inv!96621 (c!1472671 (value!290216 (underlying!10470 thiss!9322)))) e!4728021))))

(assert (= (and b!8025765 ((_ is Node!15944) (c!1472671 (value!290216 (underlying!10470 thiss!9322))))) b!8025823))

(assert (= b!8025824 b!8025825))

(assert (= (and b!8025765 ((_ is Leaf!30522) (c!1472671 (value!290216 (underlying!10470 thiss!9322))))) b!8025824))

(declare-fun m!8388372 () Bool)

(assert (=> b!8025823 m!8388372))

(declare-fun m!8388374 () Bool)

(assert (=> b!8025823 m!8388374))

(declare-fun m!8388376 () Bool)

(assert (=> b!8025824 m!8388376))

(assert (=> b!8025765 m!8388342))

(declare-fun b!8025830 () Bool)

(declare-fun e!4728025 () Bool)

(declare-fun tp!2401917 () Bool)

(declare-fun tp!2401918 () Bool)

(assert (=> b!8025830 (= e!4728025 (and tp!2401917 tp!2401918))))

(assert (=> b!8025766 (= tp!2401887 e!4728025)))

(assert (= (and b!8025766 ((_ is Cons!74942) (value!290217 (underlying!10470 thiss!9322)))) b!8025830))

(check-sat (not b!8025823) (not b!8025825) (not b!8025814) (not b!8025813) (not d!2393296) (not b!8025824) (not d!2393300) (not b!8025810) (not b!8025808) (not b!8025830) (not d!2393306) (not b!8025795) (not b!8025801) tp_is_empty!54209 (not b!8025765))
(check-sat)
