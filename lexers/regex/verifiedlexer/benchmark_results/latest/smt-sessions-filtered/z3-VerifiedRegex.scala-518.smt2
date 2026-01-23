; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14330 () Bool)

(assert start!14330)

(declare-fun res!64169 () Bool)

(declare-fun e!79524 () Bool)

(assert (=> start!14330 (=> (not res!64169) (not e!79524))))

(declare-fun i!959 () Int)

(assert (=> start!14330 (= res!64169 (<= 0 i!959))))

(assert (=> start!14330 e!79524))

(assert (=> start!14330 true))

(declare-fun e!79523 () Bool)

(assert (=> start!14330 e!79523))

(declare-fun b!136660 () Bool)

(declare-fun e!79525 () Bool)

(assert (=> b!136660 (= e!79524 (not e!79525))))

(declare-fun res!64170 () Bool)

(assert (=> b!136660 (=> res!64170 e!79525)))

(declare-fun lt!40939 () Int)

(assert (=> b!136660 (= res!64170 (> i!959 lt!40939))))

(declare-datatypes ((T!5694 0))(
  ( (T!5695 (val!932 Int)) )
))
(declare-datatypes ((List!2256 0))(
  ( (Nil!2247) (Cons!2247 (h!7644 T!5694) (t!22843 List!2256)) )
))
(declare-fun lt!40940 () List!2256)

(declare-fun size!2032 (List!2256) Int)

(assert (=> b!136660 (= lt!40939 (size!2032 lt!40940))))

(declare-datatypes ((List!2258 0) (Conc!595 0) (IArray!1191 0) (Object!402 0) (BalanceConc!1198 0))(
  ( (Nil!2248) (Cons!2248 (h!7645 Object!402) (t!22844 List!2258)) )
  ( (Node!595 (left!1757 Conc!595) (right!2087 Conc!595) (csize!1420 Int) (cheight!806 Int)) (Leaf!1114 (xs!3190 IArray!1191) (csize!1421 Int)) (Empty!595) )
  ( (IArray!1192 (innerList!653 List!2258)) )
  ( (BalanceConc!1197 (value!14872 BalanceConc!1198)) (List!2257 (value!14873 List!2258)) (Character!8 (value!14874 (_ BitVec 16))) (Open!8 (value!14875 Int)) )
  ( (BalanceConc!1199 (c!28926 Conc!595)) )
))
(declare-datatypes ((Vector!20 0))(
  ( (Vector!21 (underlying!1082 Object!402) (overflowing!67 List!2256)) )
))
(declare-fun thiss!9372 () Vector!20)

(declare-fun list!823 (Vector!20) List!2256)

(assert (=> b!136660 (= lt!40940 (list!823 thiss!9372))))

(declare-fun size!2033 (Vector!20) Int)

(assert (=> b!136660 (= lt!40939 (size!2033 thiss!9372))))

(declare-datatypes ((tuple2!2428 0))(
  ( (tuple2!2429 (_1!1424 Vector!20) (_2!1424 Vector!20)) )
))
(declare-fun lt!40938 () tuple2!2428)

(declare-fun b!136661 () Bool)

(declare-datatypes ((tuple2!2430 0))(
  ( (tuple2!2431 (_1!1425 List!2256) (_2!1425 List!2256)) )
))
(declare-fun splitAtIndex!2 (List!2256 Int) tuple2!2430)

(assert (=> b!136661 (= e!79525 (= (splitAtIndex!2 lt!40940 i!959) (tuple2!2431 (list!823 (_1!1424 lt!40938)) (list!823 (_2!1424 lt!40938)))))))

(declare-fun choose!1716 (Vector!20 Int) tuple2!2428)

(assert (=> b!136661 (= lt!40938 (choose!1716 thiss!9372 i!959))))

(declare-fun b!136662 () Bool)

(declare-fun tp!71248 () Bool)

(declare-fun tp!71247 () Bool)

(assert (=> b!136662 (= e!79523 (and tp!71248 tp!71247))))

(assert (= (and start!14330 res!64169) b!136660))

(assert (= (and b!136660 (not res!64170)) b!136661))

(assert (= start!14330 b!136662))

(declare-fun m!121191 () Bool)

(assert (=> b!136660 m!121191))

(declare-fun m!121193 () Bool)

(assert (=> b!136660 m!121193))

(declare-fun m!121195 () Bool)

(assert (=> b!136660 m!121195))

(declare-fun m!121197 () Bool)

(assert (=> b!136661 m!121197))

(declare-fun m!121199 () Bool)

(assert (=> b!136661 m!121199))

(declare-fun m!121201 () Bool)

(assert (=> b!136661 m!121201))

(declare-fun m!121203 () Bool)

(assert (=> b!136661 m!121203))

(check-sat (not b!136661) (not b!136660) (not b!136662))
(check-sat)
(get-model)

(declare-fun b!136693 () Bool)

(declare-fun e!79541 () tuple2!2430)

(assert (=> b!136693 (= e!79541 (tuple2!2431 Nil!2247 Nil!2247))))

(declare-fun b!136694 () Bool)

(declare-fun lt!40952 () tuple2!2430)

(declare-fun e!79543 () Bool)

(declare-fun drop!105 (List!2256 Int) List!2256)

(assert (=> b!136694 (= e!79543 (= (_2!1425 lt!40952) (drop!105 lt!40940 i!959)))))

(declare-fun b!136695 () Bool)

(declare-fun lt!40951 () tuple2!2430)

(assert (=> b!136695 (= lt!40951 (splitAtIndex!2 (t!22843 lt!40940) (- i!959 1)))))

(declare-fun e!79542 () tuple2!2430)

(assert (=> b!136695 (= e!79542 (tuple2!2431 (Cons!2247 (h!7644 lt!40940) (_1!1425 lt!40951)) (_2!1425 lt!40951)))))

(declare-fun b!136696 () Bool)

(assert (=> b!136696 (= e!79542 (tuple2!2431 Nil!2247 lt!40940))))

(declare-fun d!32769 () Bool)

(assert (=> d!32769 e!79543))

(declare-fun res!64181 () Bool)

(assert (=> d!32769 (=> (not res!64181) (not e!79543))))

(declare-fun ++!516 (List!2256 List!2256) List!2256)

(assert (=> d!32769 (= res!64181 (= (++!516 (_1!1425 lt!40952) (_2!1425 lt!40952)) lt!40940))))

(assert (=> d!32769 (= lt!40952 e!79541)))

(declare-fun c!28937 () Bool)

(get-info :version)

(assert (=> d!32769 (= c!28937 ((_ is Nil!2247) lt!40940))))

(assert (=> d!32769 (= (splitAtIndex!2 lt!40940 i!959) lt!40952)))

(declare-fun b!136697 () Bool)

(declare-fun res!64182 () Bool)

(assert (=> b!136697 (=> (not res!64182) (not e!79543))))

(declare-fun take!2 (List!2256 Int) List!2256)

(assert (=> b!136697 (= res!64182 (= (_1!1425 lt!40952) (take!2 lt!40940 i!959)))))

(declare-fun b!136698 () Bool)

(assert (=> b!136698 (= e!79541 e!79542)))

(declare-fun c!28938 () Bool)

(assert (=> b!136698 (= c!28938 (<= i!959 0))))

(assert (= (and d!32769 c!28937) b!136693))

(assert (= (and d!32769 (not c!28937)) b!136698))

(assert (= (and b!136698 c!28938) b!136696))

(assert (= (and b!136698 (not c!28938)) b!136695))

(assert (= (and d!32769 res!64181) b!136697))

(assert (= (and b!136697 res!64182) b!136694))

(declare-fun m!121219 () Bool)

(assert (=> b!136694 m!121219))

(declare-fun m!121221 () Bool)

(assert (=> b!136695 m!121221))

(declare-fun m!121223 () Bool)

(assert (=> d!32769 m!121223))

(declare-fun m!121225 () Bool)

(assert (=> b!136697 m!121225))

(assert (=> b!136661 d!32769))

(declare-fun d!32779 () Bool)

(declare-fun choose!1719 (Vector!20) List!2256)

(assert (=> d!32779 (= (list!823 (_1!1424 lt!40938)) (choose!1719 (_1!1424 lt!40938)))))

(declare-fun bs!12763 () Bool)

(assert (= bs!12763 d!32779))

(declare-fun m!121227 () Bool)

(assert (=> bs!12763 m!121227))

(assert (=> b!136661 d!32779))

(declare-fun d!32781 () Bool)

(assert (=> d!32781 (= (list!823 (_2!1424 lt!40938)) (choose!1719 (_2!1424 lt!40938)))))

(declare-fun bs!12764 () Bool)

(assert (= bs!12764 d!32781))

(declare-fun m!121229 () Bool)

(assert (=> bs!12764 m!121229))

(assert (=> b!136661 d!32781))

(declare-fun d!32783 () Bool)

(declare-fun choose!1720 (Vector!20 Int) tuple2!2428)

(assert (=> d!32783 (= (choose!1716 thiss!9372 i!959) (choose!1720 thiss!9372 i!959))))

(declare-fun bs!12766 () Bool)

(assert (= bs!12766 d!32783))

(declare-fun m!121235 () Bool)

(assert (=> bs!12766 m!121235))

(assert (=> b!136661 d!32783))

(declare-fun d!32789 () Bool)

(declare-fun lt!40961 () Int)

(assert (=> d!32789 (>= lt!40961 0)))

(declare-fun e!79553 () Int)

(assert (=> d!32789 (= lt!40961 e!79553)))

(declare-fun c!28944 () Bool)

(assert (=> d!32789 (= c!28944 ((_ is Nil!2247) lt!40940))))

(assert (=> d!32789 (= (size!2032 lt!40940) lt!40961)))

(declare-fun b!136717 () Bool)

(assert (=> b!136717 (= e!79553 0)))

(declare-fun b!136718 () Bool)

(assert (=> b!136718 (= e!79553 (+ 1 (size!2032 (t!22843 lt!40940))))))

(assert (= (and d!32789 c!28944) b!136717))

(assert (= (and d!32789 (not c!28944)) b!136718))

(declare-fun m!121241 () Bool)

(assert (=> b!136718 m!121241))

(assert (=> b!136660 d!32789))

(declare-fun d!32791 () Bool)

(assert (=> d!32791 (= (list!823 thiss!9372) (choose!1719 thiss!9372))))

(declare-fun bs!12768 () Bool)

(assert (= bs!12768 d!32791))

(declare-fun m!121243 () Bool)

(assert (=> bs!12768 m!121243))

(assert (=> b!136660 d!32791))

(declare-fun d!32793 () Bool)

(declare-fun lt!40964 () Int)

(assert (=> d!32793 (= lt!40964 (size!2032 (list!823 thiss!9372)))))

(declare-fun choose!1722 (Vector!20) Int)

(assert (=> d!32793 (= lt!40964 (choose!1722 thiss!9372))))

(assert (=> d!32793 (= (size!2033 thiss!9372) lt!40964)))

(declare-fun bs!12769 () Bool)

(assert (= bs!12769 d!32793))

(assert (=> bs!12769 m!121193))

(assert (=> bs!12769 m!121193))

(declare-fun m!121249 () Bool)

(assert (=> bs!12769 m!121249))

(declare-fun m!121251 () Bool)

(assert (=> bs!12769 m!121251))

(assert (=> b!136660 d!32793))

(declare-fun b!136736 () Bool)

(declare-fun e!79564 () Bool)

(declare-fun tp!71262 () Bool)

(declare-fun inv!2959 (Conc!595) Bool)

(assert (=> b!136736 (= e!79564 (and (inv!2959 (c!28926 (value!14872 (underlying!1082 thiss!9372)))) tp!71262))))

(declare-fun b!136735 () Bool)

(declare-fun e!79563 () Bool)

(declare-fun inv!2960 (BalanceConc!1198) Bool)

(assert (=> b!136735 (= e!79563 (and (inv!2960 (value!14872 (underlying!1082 thiss!9372))) e!79564))))

(declare-fun b!136737 () Bool)

(declare-fun tp!71263 () Bool)

(assert (=> b!136737 (= e!79563 tp!71263)))

(assert (=> b!136662 (= tp!71248 e!79563)))

(assert (= b!136735 b!136736))

(assert (= (and b!136662 ((_ is BalanceConc!1197) (underlying!1082 thiss!9372))) b!136735))

(assert (= (and b!136662 ((_ is List!2257) (underlying!1082 thiss!9372))) b!136737))

(declare-fun m!121253 () Bool)

(assert (=> b!136736 m!121253))

(declare-fun m!121255 () Bool)

(assert (=> b!136735 m!121255))

(declare-fun b!136742 () Bool)

(declare-fun e!79567 () Bool)

(declare-fun tp_is_empty!1537 () Bool)

(declare-fun tp!71266 () Bool)

(assert (=> b!136742 (= e!79567 (and tp_is_empty!1537 tp!71266))))

(assert (=> b!136662 (= tp!71247 e!79567)))

(assert (= (and b!136662 ((_ is Cons!2247) (overflowing!67 thiss!9372))) b!136742))

(check-sat (not b!136718) (not b!136737) (not d!32769) (not b!136735) (not d!32791) (not b!136694) (not b!136736) (not b!136742) (not b!136695) (not d!32783) (not b!136697) (not d!32781) tp_is_empty!1537 (not d!32793) (not d!32779))
(check-sat)
(get-model)

(declare-fun d!32795 () Bool)

(declare-fun res!64185 () tuple2!2428)

(assert (=> d!32795 (= (splitAtIndex!2 (list!823 thiss!9372) i!959) (tuple2!2431 (list!823 (_1!1424 res!64185)) (list!823 (_2!1424 res!64185))))))

(declare-fun e!79573 () Bool)

(declare-fun e!79572 () Bool)

(assert (=> d!32795 (and e!79573 e!79572)))

(assert (=> d!32795 (= (choose!1720 thiss!9372 i!959) res!64185)))

(declare-fun b!136747 () Bool)

(declare-fun tp!71277 () Bool)

(declare-fun tp!71278 () Bool)

(assert (=> b!136747 (= e!79573 (and tp!71277 tp!71278))))

(declare-fun b!136748 () Bool)

(declare-fun tp!71276 () Bool)

(declare-fun tp!71275 () Bool)

(assert (=> b!136748 (= e!79572 (and tp!71276 tp!71275))))

(assert (= d!32795 b!136747))

(assert (= d!32795 b!136748))

(assert (=> d!32795 m!121193))

(assert (=> d!32795 m!121193))

(declare-fun m!121257 () Bool)

(assert (=> d!32795 m!121257))

(declare-fun m!121259 () Bool)

(assert (=> d!32795 m!121259))

(declare-fun m!121261 () Bool)

(assert (=> d!32795 m!121261))

(assert (=> d!32783 d!32795))

(declare-fun d!32797 () Bool)

(declare-fun lt!40965 () Int)

(assert (=> d!32797 (>= lt!40965 0)))

(declare-fun e!79574 () Int)

(assert (=> d!32797 (= lt!40965 e!79574)))

(declare-fun c!28945 () Bool)

(assert (=> d!32797 (= c!28945 ((_ is Nil!2247) (t!22843 lt!40940)))))

(assert (=> d!32797 (= (size!2032 (t!22843 lt!40940)) lt!40965)))

(declare-fun b!136749 () Bool)

(assert (=> b!136749 (= e!79574 0)))

(declare-fun b!136750 () Bool)

(assert (=> b!136750 (= e!79574 (+ 1 (size!2032 (t!22843 (t!22843 lt!40940)))))))

(assert (= (and d!32797 c!28945) b!136749))

(assert (= (and d!32797 (not c!28945)) b!136750))

(declare-fun m!121263 () Bool)

(assert (=> b!136750 m!121263))

(assert (=> b!136718 d!32797))

(declare-fun d!32799 () Bool)

(declare-fun c!28948 () Bool)

(assert (=> d!32799 (= c!28948 ((_ is Node!595) (c!28926 (value!14872 (underlying!1082 thiss!9372)))))))

(declare-fun e!79579 () Bool)

(assert (=> d!32799 (= (inv!2959 (c!28926 (value!14872 (underlying!1082 thiss!9372)))) e!79579)))

(declare-fun b!136757 () Bool)

(declare-fun inv!2961 (Conc!595) Bool)

(assert (=> b!136757 (= e!79579 (inv!2961 (c!28926 (value!14872 (underlying!1082 thiss!9372)))))))

(declare-fun b!136758 () Bool)

(declare-fun e!79580 () Bool)

(assert (=> b!136758 (= e!79579 e!79580)))

(declare-fun res!64188 () Bool)

(assert (=> b!136758 (= res!64188 (not ((_ is Leaf!1114) (c!28926 (value!14872 (underlying!1082 thiss!9372))))))))

(assert (=> b!136758 (=> res!64188 e!79580)))

(declare-fun b!136759 () Bool)

(declare-fun inv!2962 (Conc!595) Bool)

(assert (=> b!136759 (= e!79580 (inv!2962 (c!28926 (value!14872 (underlying!1082 thiss!9372)))))))

(assert (= (and d!32799 c!28948) b!136757))

(assert (= (and d!32799 (not c!28948)) b!136758))

(assert (= (and b!136758 (not res!64188)) b!136759))

(declare-fun m!121265 () Bool)

(assert (=> b!136757 m!121265))

(declare-fun m!121267 () Bool)

(assert (=> b!136759 m!121267))

(assert (=> b!136736 d!32799))

(declare-fun d!32801 () Bool)

(declare-fun e!79590 () Bool)

(assert (=> d!32801 e!79590))

(declare-fun res!64191 () Bool)

(assert (=> d!32801 (=> (not res!64191) (not e!79590))))

(declare-fun lt!40968 () List!2256)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!342 (List!2256) (InoxSet T!5694))

(assert (=> d!32801 (= res!64191 (= ((_ map implies) (content!342 lt!40968) (content!342 lt!40940)) ((as const (InoxSet T!5694)) true)))))

(declare-fun e!79592 () List!2256)

(assert (=> d!32801 (= lt!40968 e!79592)))

(declare-fun c!28955 () Bool)

(assert (=> d!32801 (= c!28955 (or ((_ is Nil!2247) lt!40940) (<= i!959 0)))))

(assert (=> d!32801 (= (take!2 lt!40940 i!959) lt!40968)))

(declare-fun b!136774 () Bool)

(assert (=> b!136774 (= e!79592 (Cons!2247 (h!7644 lt!40940) (take!2 (t!22843 lt!40940) (- i!959 1))))))

(declare-fun b!136775 () Bool)

(declare-fun e!79589 () Int)

(assert (=> b!136775 (= e!79590 (= (size!2032 lt!40968) e!79589))))

(declare-fun c!28956 () Bool)

(assert (=> b!136775 (= c!28956 (<= i!959 0))))

(declare-fun b!136776 () Bool)

(assert (=> b!136776 (= e!79589 0)))

(declare-fun b!136777 () Bool)

(declare-fun e!79591 () Int)

(assert (=> b!136777 (= e!79589 e!79591)))

(declare-fun c!28957 () Bool)

(assert (=> b!136777 (= c!28957 (>= i!959 (size!2032 lt!40940)))))

(declare-fun b!136778 () Bool)

(assert (=> b!136778 (= e!79592 Nil!2247)))

(declare-fun b!136779 () Bool)

(assert (=> b!136779 (= e!79591 i!959)))

(declare-fun b!136780 () Bool)

(assert (=> b!136780 (= e!79591 (size!2032 lt!40940))))

(assert (= (and d!32801 c!28955) b!136778))

(assert (= (and d!32801 (not c!28955)) b!136774))

(assert (= (and d!32801 res!64191) b!136775))

(assert (= (and b!136775 c!28956) b!136776))

(assert (= (and b!136775 (not c!28956)) b!136777))

(assert (= (and b!136777 c!28957) b!136780))

(assert (= (and b!136777 (not c!28957)) b!136779))

(declare-fun m!121269 () Bool)

(assert (=> d!32801 m!121269))

(declare-fun m!121271 () Bool)

(assert (=> d!32801 m!121271))

(assert (=> b!136777 m!121191))

(declare-fun m!121273 () Bool)

(assert (=> b!136775 m!121273))

(assert (=> b!136780 m!121191))

(declare-fun m!121275 () Bool)

(assert (=> b!136774 m!121275))

(assert (=> b!136697 d!32801))

(declare-fun d!32805 () Bool)

(declare-fun isBalanced!176 (Conc!595) Bool)

(assert (=> d!32805 (= (inv!2960 (value!14872 (underlying!1082 thiss!9372))) (isBalanced!176 (c!28926 (value!14872 (underlying!1082 thiss!9372)))))))

(declare-fun bs!12770 () Bool)

(assert (= bs!12770 d!32805))

(declare-fun m!121277 () Bool)

(assert (=> bs!12770 m!121277))

(assert (=> b!136735 d!32805))

(declare-fun d!32807 () Bool)

(declare-fun lt!40971 () Int)

(assert (=> d!32807 (>= lt!40971 0)))

(declare-fun e!79601 () Int)

(assert (=> d!32807 (= lt!40971 e!79601)))

(declare-fun c!28964 () Bool)

(assert (=> d!32807 (= c!28964 ((_ is Nil!2247) (list!823 thiss!9372)))))

(assert (=> d!32807 (= (size!2032 (list!823 thiss!9372)) lt!40971)))

(declare-fun b!136795 () Bool)

(assert (=> b!136795 (= e!79601 0)))

(declare-fun b!136796 () Bool)

(assert (=> b!136796 (= e!79601 (+ 1 (size!2032 (t!22843 (list!823 thiss!9372)))))))

(assert (= (and d!32807 c!28964) b!136795))

(assert (= (and d!32807 (not c!28964)) b!136796))

(declare-fun m!121279 () Bool)

(assert (=> b!136796 m!121279))

(assert (=> d!32793 d!32807))

(assert (=> d!32793 d!32791))

(declare-fun d!32809 () Bool)

(declare-fun res!64196 () Int)

(assert (=> d!32809 (= res!64196 (size!2032 (list!823 thiss!9372)))))

(assert (=> d!32809 true))

(assert (=> d!32809 (= (choose!1722 thiss!9372) res!64196)))

(declare-fun bs!12771 () Bool)

(assert (= bs!12771 d!32809))

(assert (=> bs!12771 m!121193))

(assert (=> bs!12771 m!121193))

(assert (=> bs!12771 m!121249))

(assert (=> d!32793 d!32809))

(declare-fun d!32811 () Bool)

(assert (=> d!32811 true))

(declare-fun e!79608 () Bool)

(assert (=> d!32811 e!79608))

(declare-fun res!64200 () List!2256)

(assert (=> d!32811 (= (choose!1719 (_1!1424 lt!40938)) res!64200)))

(declare-fun b!136806 () Bool)

(declare-fun tp!71281 () Bool)

(assert (=> b!136806 (= e!79608 (and tp_is_empty!1537 tp!71281))))

(assert (= (and d!32811 ((_ is Cons!2247) res!64200)) b!136806))

(assert (=> d!32779 d!32811))

(declare-fun b!136807 () Bool)

(declare-fun e!79609 () tuple2!2430)

(assert (=> b!136807 (= e!79609 (tuple2!2431 Nil!2247 Nil!2247))))

(declare-fun e!79611 () Bool)

(declare-fun lt!40974 () tuple2!2430)

(declare-fun b!136808 () Bool)

(assert (=> b!136808 (= e!79611 (= (_2!1425 lt!40974) (drop!105 (t!22843 lt!40940) (- i!959 1))))))

(declare-fun b!136809 () Bool)

(declare-fun lt!40973 () tuple2!2430)

(assert (=> b!136809 (= lt!40973 (splitAtIndex!2 (t!22843 (t!22843 lt!40940)) (- (- i!959 1) 1)))))

(declare-fun e!79610 () tuple2!2430)

(assert (=> b!136809 (= e!79610 (tuple2!2431 (Cons!2247 (h!7644 (t!22843 lt!40940)) (_1!1425 lt!40973)) (_2!1425 lt!40973)))))

(declare-fun b!136810 () Bool)

(assert (=> b!136810 (= e!79610 (tuple2!2431 Nil!2247 (t!22843 lt!40940)))))

(declare-fun d!32813 () Bool)

(assert (=> d!32813 e!79611))

(declare-fun res!64201 () Bool)

(assert (=> d!32813 (=> (not res!64201) (not e!79611))))

(assert (=> d!32813 (= res!64201 (= (++!516 (_1!1425 lt!40974) (_2!1425 lt!40974)) (t!22843 lt!40940)))))

(assert (=> d!32813 (= lt!40974 e!79609)))

(declare-fun c!28968 () Bool)

(assert (=> d!32813 (= c!28968 ((_ is Nil!2247) (t!22843 lt!40940)))))

(assert (=> d!32813 (= (splitAtIndex!2 (t!22843 lt!40940) (- i!959 1)) lt!40974)))

(declare-fun b!136811 () Bool)

(declare-fun res!64202 () Bool)

(assert (=> b!136811 (=> (not res!64202) (not e!79611))))

(assert (=> b!136811 (= res!64202 (= (_1!1425 lt!40974) (take!2 (t!22843 lt!40940) (- i!959 1))))))

(declare-fun b!136812 () Bool)

(assert (=> b!136812 (= e!79609 e!79610)))

(declare-fun c!28969 () Bool)

(assert (=> b!136812 (= c!28969 (<= (- i!959 1) 0))))

(assert (= (and d!32813 c!28968) b!136807))

(assert (= (and d!32813 (not c!28968)) b!136812))

(assert (= (and b!136812 c!28969) b!136810))

(assert (= (and b!136812 (not c!28969)) b!136809))

(assert (= (and d!32813 res!64201) b!136811))

(assert (= (and b!136811 res!64202) b!136808))

(declare-fun m!121289 () Bool)

(assert (=> b!136808 m!121289))

(declare-fun m!121291 () Bool)

(assert (=> b!136809 m!121291))

(declare-fun m!121293 () Bool)

(assert (=> d!32813 m!121293))

(assert (=> b!136811 m!121275))

(assert (=> b!136695 d!32813))

(declare-fun b!136834 () Bool)

(declare-fun e!79624 () List!2256)

(assert (=> b!136834 (= e!79624 (Cons!2247 (h!7644 (_1!1425 lt!40952)) (++!516 (t!22843 (_1!1425 lt!40952)) (_2!1425 lt!40952))))))

(declare-fun b!136836 () Bool)

(declare-fun e!79625 () Bool)

(declare-fun lt!40980 () List!2256)

(assert (=> b!136836 (= e!79625 (or (not (= (_2!1425 lt!40952) Nil!2247)) (= lt!40980 (_1!1425 lt!40952))))))

(declare-fun b!136833 () Bool)

(assert (=> b!136833 (= e!79624 (_2!1425 lt!40952))))

(declare-fun d!32817 () Bool)

(assert (=> d!32817 e!79625))

(declare-fun res!64214 () Bool)

(assert (=> d!32817 (=> (not res!64214) (not e!79625))))

(assert (=> d!32817 (= res!64214 (= (content!342 lt!40980) ((_ map or) (content!342 (_1!1425 lt!40952)) (content!342 (_2!1425 lt!40952)))))))

(assert (=> d!32817 (= lt!40980 e!79624)))

(declare-fun c!28975 () Bool)

(assert (=> d!32817 (= c!28975 ((_ is Nil!2247) (_1!1425 lt!40952)))))

(assert (=> d!32817 (= (++!516 (_1!1425 lt!40952) (_2!1425 lt!40952)) lt!40980)))

(declare-fun b!136835 () Bool)

(declare-fun res!64213 () Bool)

(assert (=> b!136835 (=> (not res!64213) (not e!79625))))

(assert (=> b!136835 (= res!64213 (= (size!2032 lt!40980) (+ (size!2032 (_1!1425 lt!40952)) (size!2032 (_2!1425 lt!40952)))))))

(assert (= (and d!32817 c!28975) b!136833))

(assert (= (and d!32817 (not c!28975)) b!136834))

(assert (= (and d!32817 res!64214) b!136835))

(assert (= (and b!136835 res!64213) b!136836))

(declare-fun m!121305 () Bool)

(assert (=> b!136834 m!121305))

(declare-fun m!121307 () Bool)

(assert (=> d!32817 m!121307))

(declare-fun m!121309 () Bool)

(assert (=> d!32817 m!121309))

(declare-fun m!121311 () Bool)

(assert (=> d!32817 m!121311))

(declare-fun m!121313 () Bool)

(assert (=> b!136835 m!121313))

(declare-fun m!121315 () Bool)

(assert (=> b!136835 m!121315))

(declare-fun m!121317 () Bool)

(assert (=> b!136835 m!121317))

(assert (=> d!32769 d!32817))

(declare-fun b!136863 () Bool)

(declare-fun e!79646 () Int)

(declare-fun call!5577 () Int)

(assert (=> b!136863 (= e!79646 (- call!5577 i!959))))

(declare-fun b!136864 () Bool)

(declare-fun e!79643 () Bool)

(declare-fun lt!40984 () List!2256)

(declare-fun e!79645 () Int)

(assert (=> b!136864 (= e!79643 (= (size!2032 lt!40984) e!79645))))

(declare-fun c!28986 () Bool)

(assert (=> b!136864 (= c!28986 (<= i!959 0))))

(declare-fun b!136865 () Bool)

(declare-fun e!79647 () List!2256)

(declare-fun e!79644 () List!2256)

(assert (=> b!136865 (= e!79647 e!79644)))

(declare-fun c!28987 () Bool)

(assert (=> b!136865 (= c!28987 (<= i!959 0))))

(declare-fun b!136866 () Bool)

(assert (=> b!136866 (= e!79646 0)))

(declare-fun b!136867 () Bool)

(assert (=> b!136867 (= e!79645 call!5577)))

(declare-fun b!136868 () Bool)

(assert (=> b!136868 (= e!79647 Nil!2247)))

(declare-fun b!136870 () Bool)

(assert (=> b!136870 (= e!79644 (drop!105 (t!22843 lt!40940) (- i!959 1)))))

(declare-fun d!32829 () Bool)

(assert (=> d!32829 e!79643))

(declare-fun res!64223 () Bool)

(assert (=> d!32829 (=> (not res!64223) (not e!79643))))

(assert (=> d!32829 (= res!64223 (= ((_ map implies) (content!342 lt!40984) (content!342 lt!40940)) ((as const (InoxSet T!5694)) true)))))

(assert (=> d!32829 (= lt!40984 e!79647)))

(declare-fun c!28985 () Bool)

(assert (=> d!32829 (= c!28985 ((_ is Nil!2247) lt!40940))))

(assert (=> d!32829 (= (drop!105 lt!40940 i!959) lt!40984)))

(declare-fun b!136869 () Bool)

(assert (=> b!136869 (= e!79644 lt!40940)))

(declare-fun b!136871 () Bool)

(assert (=> b!136871 (= e!79645 e!79646)))

(declare-fun c!28988 () Bool)

(assert (=> b!136871 (= c!28988 (>= i!959 call!5577))))

(declare-fun bm!5572 () Bool)

(assert (=> bm!5572 (= call!5577 (size!2032 lt!40940))))

(assert (= (and d!32829 c!28985) b!136868))

(assert (= (and d!32829 (not c!28985)) b!136865))

(assert (= (and b!136865 c!28987) b!136869))

(assert (= (and b!136865 (not c!28987)) b!136870))

(assert (= (and d!32829 res!64223) b!136864))

(assert (= (and b!136864 c!28986) b!136867))

(assert (= (and b!136864 (not c!28986)) b!136871))

(assert (= (and b!136871 c!28988) b!136866))

(assert (= (and b!136871 (not c!28988)) b!136863))

(assert (= (or b!136867 b!136871 b!136863) bm!5572))

(declare-fun m!121327 () Bool)

(assert (=> b!136864 m!121327))

(assert (=> b!136870 m!121289))

(declare-fun m!121329 () Bool)

(assert (=> d!32829 m!121329))

(assert (=> d!32829 m!121271))

(assert (=> bm!5572 m!121191))

(assert (=> b!136694 d!32829))

(declare-fun d!32837 () Bool)

(assert (=> d!32837 true))

(declare-fun e!79648 () Bool)

(assert (=> d!32837 e!79648))

(declare-fun res!64224 () List!2256)

(assert (=> d!32837 (= (choose!1719 (_2!1424 lt!40938)) res!64224)))

(declare-fun b!136875 () Bool)

(declare-fun tp!71298 () Bool)

(assert (=> b!136875 (= e!79648 (and tp_is_empty!1537 tp!71298))))

(assert (= (and d!32837 ((_ is Cons!2247) res!64224)) b!136875))

(assert (=> d!32781 d!32837))

(declare-fun d!32839 () Bool)

(assert (=> d!32839 true))

(declare-fun e!79651 () Bool)

(assert (=> d!32839 e!79651))

(declare-fun res!64225 () List!2256)

(assert (=> d!32839 (= (choose!1719 thiss!9372) res!64225)))

(declare-fun b!136877 () Bool)

(declare-fun tp!71299 () Bool)

(assert (=> b!136877 (= e!79651 (and tp_is_empty!1537 tp!71299))))

(assert (= (and d!32839 ((_ is Cons!2247) res!64225)) b!136877))

(assert (=> d!32791 d!32839))

(declare-fun b!136878 () Bool)

(declare-fun e!79652 () Bool)

(declare-fun tp!71300 () Bool)

(assert (=> b!136878 (= e!79652 (and tp_is_empty!1537 tp!71300))))

(assert (=> b!136742 (= tp!71266 e!79652)))

(assert (= (and b!136742 ((_ is Cons!2247) (t!22843 (overflowing!67 thiss!9372)))) b!136878))

(declare-fun b!136887 () Bool)

(declare-fun e!79657 () Bool)

(declare-fun tp!71305 () Bool)

(declare-fun tp!71306 () Bool)

(assert (=> b!136887 (= e!79657 (and tp!71305 tp!71306))))

(assert (=> b!136737 (= tp!71263 e!79657)))

(assert (= (and b!136737 ((_ is Cons!2248) (value!14873 (underlying!1082 thiss!9372)))) b!136887))

(declare-fun e!79664 () Bool)

(declare-fun tp!71314 () Bool)

(declare-fun b!136900 () Bool)

(declare-fun tp!71315 () Bool)

(assert (=> b!136900 (= e!79664 (and (inv!2959 (left!1757 (c!28926 (value!14872 (underlying!1082 thiss!9372))))) tp!71315 (inv!2959 (right!2087 (c!28926 (value!14872 (underlying!1082 thiss!9372))))) tp!71314))))

(declare-fun b!136902 () Bool)

(declare-fun e!79665 () Bool)

(declare-fun tp!71313 () Bool)

(assert (=> b!136902 (= e!79665 tp!71313)))

(declare-fun b!136901 () Bool)

(declare-fun inv!2963 (IArray!1191) Bool)

(assert (=> b!136901 (= e!79664 (and (inv!2963 (xs!3190 (c!28926 (value!14872 (underlying!1082 thiss!9372))))) e!79665))))

(assert (=> b!136736 (= tp!71262 (and (inv!2959 (c!28926 (value!14872 (underlying!1082 thiss!9372)))) e!79664))))

(assert (= (and b!136736 ((_ is Node!595) (c!28926 (value!14872 (underlying!1082 thiss!9372))))) b!136900))

(assert (= b!136901 b!136902))

(assert (= (and b!136736 ((_ is Leaf!1114) (c!28926 (value!14872 (underlying!1082 thiss!9372))))) b!136901))

(declare-fun m!121331 () Bool)

(assert (=> b!136900 m!121331))

(declare-fun m!121333 () Bool)

(assert (=> b!136900 m!121333))

(declare-fun m!121335 () Bool)

(assert (=> b!136901 m!121335))

(assert (=> b!136736 m!121253))

(check-sat (not b!136887) (not b!136902) (not b!136750) (not b!136777) (not b!136796) (not b!136736) (not b!136870) (not d!32829) (not b!136759) (not b!136757) (not b!136901) (not b!136877) (not d!32805) (not d!32795) (not bm!5572) (not b!136748) (not b!136809) (not d!32801) (not b!136747) (not b!136811) (not b!136900) tp_is_empty!1537 (not b!136808) (not b!136774) (not b!136835) (not b!136806) (not b!136878) (not d!32813) (not b!136780) (not b!136834) (not b!136775) (not d!32809) (not d!32817) (not b!136864) (not b!136875))
(check-sat)
