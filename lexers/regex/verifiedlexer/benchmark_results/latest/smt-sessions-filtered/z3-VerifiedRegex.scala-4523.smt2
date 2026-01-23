; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239822 () Bool)

(assert start!239822)

(declare-datatypes ((BalanceConc!17920 0) (IArray!18311 0) (Conc!9153 0) (Object!4734 0) (List!28716 0))(
  ( (BalanceConc!17921 (c!392707 Conc!9153)) )
  ( (IArray!18312 (innerList!9213 List!28716)) )
  ( (Node!9153 (left!21992 Conc!9153) (right!22322 Conc!9153) (csize!18536 Int) (cheight!9364 Int)) (Leaf!13677 (xs!12133 IArray!18311) (csize!18537 Int)) (Empty!9153) )
  ( (BalanceConc!17919 (value!142175 BalanceConc!17920)) (List!28715 (value!142176 List!28716)) (Character!98 (value!142177 (_ BitVec 16))) (Open!98 (value!142178 Int)) )
  ( (Nil!28616) (Cons!28616 (h!34017 Object!4734) (t!208691 List!28716)) )
))
(declare-datatypes ((T!46776 0))(
  ( (T!46777 (val!8560 Int)) )
))
(declare-datatypes ((List!28717 0))(
  ( (Nil!28617) (Cons!28617 (h!34018 T!46776) (t!208692 List!28717)) )
))
(declare-datatypes ((Vector!200 0))(
  ( (Vector!201 (underlying!6700 Object!4734) (overflowing!157 List!28717)) )
))
(declare-fun thiss!9293 () Vector!200)

(declare-fun choose!14558 (Vector!200) Int)

(declare-fun size!22280 (List!28717) Int)

(declare-fun list!11095 (Vector!200) List!28717)

(assert (=> start!239822 (not (= (choose!14558 thiss!9293) (size!22280 (list!11095 thiss!9293))))))

(declare-fun e!1560476 () Bool)

(assert (=> start!239822 e!1560476))

(declare-fun b!2460432 () Bool)

(declare-fun tp!783318 () Bool)

(declare-fun tp!783319 () Bool)

(assert (=> b!2460432 (= e!1560476 (and tp!783318 tp!783319))))

(assert (= start!239822 b!2460432))

(declare-fun m!2829873 () Bool)

(assert (=> start!239822 m!2829873))

(declare-fun m!2829875 () Bool)

(assert (=> start!239822 m!2829875))

(assert (=> start!239822 m!2829875))

(declare-fun m!2829877 () Bool)

(assert (=> start!239822 m!2829877))

(check-sat (not start!239822) (not b!2460432))
(check-sat)
(get-model)

(declare-fun d!708270 () Bool)

(declare-fun choose!14559 (Vector!200) Int)

(assert (=> d!708270 (= (choose!14558 thiss!9293) (choose!14559 thiss!9293))))

(declare-fun bs!466196 () Bool)

(assert (= bs!466196 d!708270))

(declare-fun m!2829879 () Bool)

(assert (=> bs!466196 m!2829879))

(assert (=> start!239822 d!708270))

(declare-fun d!708274 () Bool)

(declare-fun lt!880979 () Int)

(assert (=> d!708274 (>= lt!880979 0)))

(declare-fun e!1560479 () Int)

(assert (=> d!708274 (= lt!880979 e!1560479)))

(declare-fun c!392710 () Bool)

(get-info :version)

(assert (=> d!708274 (= c!392710 ((_ is Nil!28617) (list!11095 thiss!9293)))))

(assert (=> d!708274 (= (size!22280 (list!11095 thiss!9293)) lt!880979)))

(declare-fun b!2460437 () Bool)

(assert (=> b!2460437 (= e!1560479 0)))

(declare-fun b!2460438 () Bool)

(assert (=> b!2460438 (= e!1560479 (+ 1 (size!22280 (t!208692 (list!11095 thiss!9293)))))))

(assert (= (and d!708274 c!392710) b!2460437))

(assert (= (and d!708274 (not c!392710)) b!2460438))

(declare-fun m!2829883 () Bool)

(assert (=> b!2460438 m!2829883))

(assert (=> start!239822 d!708274))

(declare-fun d!708278 () Bool)

(declare-fun choose!14560 (Vector!200) List!28717)

(assert (=> d!708278 (= (list!11095 thiss!9293) (choose!14560 thiss!9293))))

(declare-fun bs!466198 () Bool)

(assert (= bs!466198 d!708278))

(declare-fun m!2829885 () Bool)

(assert (=> bs!466198 m!2829885))

(assert (=> start!239822 d!708278))

(declare-fun b!2460452 () Bool)

(declare-fun e!1560487 () Bool)

(declare-fun tp!783324 () Bool)

(declare-fun inv!38683 (Conc!9153) Bool)

(assert (=> b!2460452 (= e!1560487 (and (inv!38683 (c!392707 (value!142175 (underlying!6700 thiss!9293)))) tp!783324))))

(declare-fun b!2460451 () Bool)

(declare-fun e!1560486 () Bool)

(declare-fun inv!38684 (BalanceConc!17920) Bool)

(assert (=> b!2460451 (= e!1560486 (and (inv!38684 (value!142175 (underlying!6700 thiss!9293))) e!1560487))))

(declare-fun b!2460453 () Bool)

(declare-fun tp!783325 () Bool)

(assert (=> b!2460453 (= e!1560486 tp!783325)))

(assert (=> b!2460432 (= tp!783318 e!1560486)))

(assert (= b!2460451 b!2460452))

(assert (= (and b!2460432 ((_ is BalanceConc!17919) (underlying!6700 thiss!9293))) b!2460451))

(assert (= (and b!2460432 ((_ is List!28715) (underlying!6700 thiss!9293))) b!2460453))

(declare-fun m!2829887 () Bool)

(assert (=> b!2460452 m!2829887))

(declare-fun m!2829889 () Bool)

(assert (=> b!2460451 m!2829889))

(declare-fun b!2460458 () Bool)

(declare-fun e!1560490 () Bool)

(declare-fun tp_is_empty!11889 () Bool)

(declare-fun tp!783328 () Bool)

(assert (=> b!2460458 (= e!1560490 (and tp_is_empty!11889 tp!783328))))

(assert (=> b!2460432 (= tp!783319 e!1560490)))

(assert (= (and b!2460432 ((_ is Cons!28617) (overflowing!157 thiss!9293))) b!2460458))

(check-sat (not b!2460438) (not d!708278) (not b!2460452) (not b!2460458) (not b!2460451) (not d!708270) tp_is_empty!11889 (not b!2460453))
(check-sat)
(get-model)

(declare-fun d!708282 () Bool)

(assert (=> d!708282 true))

(declare-fun e!1560503 () Bool)

(assert (=> d!708282 e!1560503))

(declare-fun res!1042673 () List!28717)

(assert (=> d!708282 (= (choose!14560 thiss!9293) res!1042673)))

(declare-fun b!2460479 () Bool)

(declare-fun tp!783340 () Bool)

(assert (=> b!2460479 (= e!1560503 (and tp_is_empty!11889 tp!783340))))

(assert (= (and d!708282 ((_ is Cons!28617) res!1042673)) b!2460479))

(assert (=> d!708278 d!708282))

(declare-fun d!708284 () Bool)

(declare-fun lt!880983 () Int)

(assert (=> d!708284 (>= lt!880983 0)))

(declare-fun e!1560504 () Int)

(assert (=> d!708284 (= lt!880983 e!1560504)))

(declare-fun c!392714 () Bool)

(assert (=> d!708284 (= c!392714 ((_ is Nil!28617) (t!208692 (list!11095 thiss!9293))))))

(assert (=> d!708284 (= (size!22280 (t!208692 (list!11095 thiss!9293))) lt!880983)))

(declare-fun b!2460480 () Bool)

(assert (=> b!2460480 (= e!1560504 0)))

(declare-fun b!2460481 () Bool)

(assert (=> b!2460481 (= e!1560504 (+ 1 (size!22280 (t!208692 (t!208692 (list!11095 thiss!9293))))))))

(assert (= (and d!708284 c!392714) b!2460480))

(assert (= (and d!708284 (not c!392714)) b!2460481))

(declare-fun m!2829899 () Bool)

(assert (=> b!2460481 m!2829899))

(assert (=> b!2460438 d!708284))

(declare-fun d!708286 () Bool)

(declare-fun isBalanced!2791 (Conc!9153) Bool)

(assert (=> d!708286 (= (inv!38684 (value!142175 (underlying!6700 thiss!9293))) (isBalanced!2791 (c!392707 (value!142175 (underlying!6700 thiss!9293)))))))

(declare-fun bs!466200 () Bool)

(assert (= bs!466200 d!708286))

(declare-fun m!2829901 () Bool)

(assert (=> bs!466200 m!2829901))

(assert (=> b!2460451 d!708286))

(declare-fun d!708288 () Bool)

(declare-fun res!1042676 () Int)

(assert (=> d!708288 (= res!1042676 (size!22280 (list!11095 thiss!9293)))))

(assert (=> d!708288 true))

(assert (=> d!708288 (= (choose!14559 thiss!9293) res!1042676)))

(declare-fun bs!466201 () Bool)

(assert (= bs!466201 d!708288))

(assert (=> bs!466201 m!2829875))

(assert (=> bs!466201 m!2829875))

(assert (=> bs!466201 m!2829877))

(assert (=> d!708270 d!708288))

(declare-fun d!708290 () Bool)

(declare-fun c!392717 () Bool)

(assert (=> d!708290 (= c!392717 ((_ is Node!9153) (c!392707 (value!142175 (underlying!6700 thiss!9293)))))))

(declare-fun e!1560509 () Bool)

(assert (=> d!708290 (= (inv!38683 (c!392707 (value!142175 (underlying!6700 thiss!9293)))) e!1560509)))

(declare-fun b!2460488 () Bool)

(declare-fun inv!38687 (Conc!9153) Bool)

(assert (=> b!2460488 (= e!1560509 (inv!38687 (c!392707 (value!142175 (underlying!6700 thiss!9293)))))))

(declare-fun b!2460489 () Bool)

(declare-fun e!1560510 () Bool)

(assert (=> b!2460489 (= e!1560509 e!1560510)))

(declare-fun res!1042679 () Bool)

(assert (=> b!2460489 (= res!1042679 (not ((_ is Leaf!13677) (c!392707 (value!142175 (underlying!6700 thiss!9293))))))))

(assert (=> b!2460489 (=> res!1042679 e!1560510)))

(declare-fun b!2460490 () Bool)

(declare-fun inv!38688 (Conc!9153) Bool)

(assert (=> b!2460490 (= e!1560510 (inv!38688 (c!392707 (value!142175 (underlying!6700 thiss!9293)))))))

(assert (= (and d!708290 c!392717) b!2460488))

(assert (= (and d!708290 (not c!392717)) b!2460489))

(assert (= (and b!2460489 (not res!1042679)) b!2460490))

(declare-fun m!2829903 () Bool)

(assert (=> b!2460488 m!2829903))

(declare-fun m!2829905 () Bool)

(assert (=> b!2460490 m!2829905))

(assert (=> b!2460452 d!708290))

(declare-fun b!2460495 () Bool)

(declare-fun e!1560513 () Bool)

(declare-fun tp!783345 () Bool)

(declare-fun tp!783346 () Bool)

(assert (=> b!2460495 (= e!1560513 (and tp!783345 tp!783346))))

(assert (=> b!2460453 (= tp!783325 e!1560513)))

(assert (= (and b!2460453 ((_ is Cons!28616) (value!142176 (underlying!6700 thiss!9293)))) b!2460495))

(declare-fun b!2460496 () Bool)

(declare-fun e!1560514 () Bool)

(declare-fun tp!783347 () Bool)

(assert (=> b!2460496 (= e!1560514 (and tp_is_empty!11889 tp!783347))))

(assert (=> b!2460458 (= tp!783328 e!1560514)))

(assert (= (and b!2460458 ((_ is Cons!28617) (t!208692 (overflowing!157 thiss!9293)))) b!2460496))

(declare-fun e!1560520 () Bool)

(declare-fun b!2460505 () Bool)

(declare-fun tp!783355 () Bool)

(declare-fun tp!783356 () Bool)

(assert (=> b!2460505 (= e!1560520 (and (inv!38683 (left!21992 (c!392707 (value!142175 (underlying!6700 thiss!9293))))) tp!783356 (inv!38683 (right!22322 (c!392707 (value!142175 (underlying!6700 thiss!9293))))) tp!783355))))

(declare-fun b!2460507 () Bool)

(declare-fun e!1560519 () Bool)

(declare-fun tp!783354 () Bool)

(assert (=> b!2460507 (= e!1560519 tp!783354)))

(declare-fun b!2460506 () Bool)

(declare-fun inv!38691 (IArray!18311) Bool)

(assert (=> b!2460506 (= e!1560520 (and (inv!38691 (xs!12133 (c!392707 (value!142175 (underlying!6700 thiss!9293))))) e!1560519))))

(assert (=> b!2460452 (= tp!783324 (and (inv!38683 (c!392707 (value!142175 (underlying!6700 thiss!9293)))) e!1560520))))

(assert (= (and b!2460452 ((_ is Node!9153) (c!392707 (value!142175 (underlying!6700 thiss!9293))))) b!2460505))

(assert (= b!2460506 b!2460507))

(assert (= (and b!2460452 ((_ is Leaf!13677) (c!392707 (value!142175 (underlying!6700 thiss!9293))))) b!2460506))

(declare-fun m!2829907 () Bool)

(assert (=> b!2460505 m!2829907))

(declare-fun m!2829909 () Bool)

(assert (=> b!2460505 m!2829909))

(declare-fun m!2829911 () Bool)

(assert (=> b!2460506 m!2829911))

(assert (=> b!2460452 m!2829887))

(check-sat (not b!2460506) (not b!2460490) tp_is_empty!11889 (not b!2460505) (not b!2460507) (not b!2460479) (not b!2460495) (not b!2460496) (not b!2460488) (not b!2460452) (not b!2460481) (not d!708288) (not d!708286))
(check-sat)
