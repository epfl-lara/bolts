; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110530 () Bool)

(assert start!110530)

(declare-datatypes ((BalanceConc!8148 0) (IArray!8219 0) (Object!2288 0) (List!12597 0) (Conc!4107 0))(
  ( (BalanceConc!8149 (c!208400 Conc!4107)) )
  ( (IArray!8220 (innerList!4167 List!12597)) )
  ( (BalanceConc!8147 (value!70256 BalanceConc!8148)) (List!12596 (value!70257 List!12597)) (Character!58 (value!70258 (_ BitVec 16))) (Open!58 (value!70259 Int)) )
  ( (Nil!12537) (Cons!12537 (h!17938 Object!2288) (t!115641 List!12597)) )
  ( (Node!4107 (left!10813 Conc!4107) (right!11143 Conc!4107) (csize!8444 Int) (cheight!4318 Int)) (Leaf!6358 (xs!6818 IArray!8219) (csize!8445 Int)) (Empty!4107) )
))
(declare-datatypes ((T!23394 0))(
  ( (T!23395 (val!4164 Int)) )
))
(declare-datatypes ((List!12598 0))(
  ( (Nil!12538) (Cons!12538 (h!17939 T!23394) (t!115642 List!12598)) )
))
(declare-datatypes ((Vector!120 0))(
  ( (Vector!121 (underlying!2804 Object!2288) (overflowing!117 List!12598)) )
))
(declare-fun thiss!9518 () Vector!120)

(declare-fun list!4656 (Vector!120) List!12598)

(declare-fun choose!7842 (Vector!120) Vector!120)

(assert (=> start!110530 (not (= (list!4656 (choose!7842 thiss!9518)) (list!4656 thiss!9518)))))

(declare-fun e!798884 () Bool)

(assert (=> start!110530 e!798884))

(declare-fun b!1255357 () Bool)

(declare-fun tp!370240 () Bool)

(declare-fun tp!370241 () Bool)

(assert (=> b!1255357 (= e!798884 (and tp!370240 tp!370241))))

(assert (= start!110530 b!1255357))

(declare-fun m!1413661 () Bool)

(assert (=> start!110530 m!1413661))

(assert (=> start!110530 m!1413661))

(declare-fun m!1413663 () Bool)

(assert (=> start!110530 m!1413663))

(declare-fun m!1413665 () Bool)

(assert (=> start!110530 m!1413665))

(check-sat (not start!110530) (not b!1255357))
(check-sat)
(get-model)

(declare-fun d!354793 () Bool)

(declare-fun choose!7843 (Vector!120) List!12598)

(assert (=> d!354793 (= (list!4656 (choose!7842 thiss!9518)) (choose!7843 (choose!7842 thiss!9518)))))

(declare-fun bs!289949 () Bool)

(assert (= bs!289949 d!354793))

(assert (=> bs!289949 m!1413661))

(declare-fun m!1413667 () Bool)

(assert (=> bs!289949 m!1413667))

(assert (=> start!110530 d!354793))

(declare-fun d!354797 () Bool)

(declare-fun choose!7845 (Vector!120) Vector!120)

(assert (=> d!354797 (= (choose!7842 thiss!9518) (choose!7845 thiss!9518))))

(declare-fun bs!289951 () Bool)

(assert (= bs!289951 d!354797))

(declare-fun m!1413671 () Bool)

(assert (=> bs!289951 m!1413671))

(assert (=> start!110530 d!354797))

(declare-fun d!354801 () Bool)

(assert (=> d!354801 (= (list!4656 thiss!9518) (choose!7843 thiss!9518))))

(declare-fun bs!289952 () Bool)

(assert (= bs!289952 d!354801))

(declare-fun m!1413673 () Bool)

(assert (=> bs!289952 m!1413673))

(assert (=> start!110530 d!354801))

(declare-fun b!1255375 () Bool)

(declare-fun e!798894 () Bool)

(declare-fun tp!370250 () Bool)

(declare-fun inv!16825 (Conc!4107) Bool)

(assert (=> b!1255375 (= e!798894 (and (inv!16825 (c!208400 (value!70256 (underlying!2804 thiss!9518)))) tp!370250))))

(declare-fun b!1255374 () Bool)

(declare-fun e!798893 () Bool)

(declare-fun inv!16826 (BalanceConc!8148) Bool)

(assert (=> b!1255374 (= e!798893 (and (inv!16826 (value!70256 (underlying!2804 thiss!9518))) e!798894))))

(declare-fun b!1255376 () Bool)

(declare-fun tp!370251 () Bool)

(assert (=> b!1255376 (= e!798893 tp!370251)))

(assert (=> b!1255357 (= tp!370240 e!798893)))

(assert (= b!1255374 b!1255375))

(get-info :version)

(assert (= (and b!1255357 ((_ is BalanceConc!8147) (underlying!2804 thiss!9518))) b!1255374))

(assert (= (and b!1255357 ((_ is List!12596) (underlying!2804 thiss!9518))) b!1255376))

(declare-fun m!1413679 () Bool)

(assert (=> b!1255375 m!1413679))

(declare-fun m!1413681 () Bool)

(assert (=> b!1255374 m!1413681))

(declare-fun b!1255388 () Bool)

(declare-fun e!798901 () Bool)

(declare-fun tp_is_empty!6469 () Bool)

(declare-fun tp!370258 () Bool)

(assert (=> b!1255388 (= e!798901 (and tp_is_empty!6469 tp!370258))))

(assert (=> b!1255357 (= tp!370241 e!798901)))

(assert (= (and b!1255357 ((_ is Cons!12538) (overflowing!117 thiss!9518))) b!1255388))

(check-sat (not d!354793) (not b!1255374) (not d!354797) (not b!1255376) (not b!1255375) (not d!354801) tp_is_empty!6469 (not b!1255388))
(check-sat)
(get-model)

(declare-fun d!354805 () Bool)

(declare-fun res!555943 () Vector!120)

(assert (=> d!354805 (= (list!4656 res!555943) (list!4656 thiss!9518))))

(declare-fun e!798905 () Bool)

(assert (=> d!354805 e!798905))

(assert (=> d!354805 (= (choose!7845 thiss!9518) res!555943)))

(declare-fun b!1255392 () Bool)

(declare-fun tp!370264 () Bool)

(declare-fun tp!370265 () Bool)

(assert (=> b!1255392 (= e!798905 (and tp!370264 tp!370265))))

(assert (= d!354805 b!1255392))

(declare-fun m!1413687 () Bool)

(assert (=> d!354805 m!1413687))

(assert (=> d!354805 m!1413665))

(assert (=> d!354797 d!354805))

(declare-fun d!354807 () Bool)

(assert (=> d!354807 true))

(declare-fun e!798908 () Bool)

(assert (=> d!354807 e!798908))

(declare-fun res!555946 () List!12598)

(assert (=> d!354807 (= (choose!7843 thiss!9518) res!555946)))

(declare-fun b!1255395 () Bool)

(declare-fun tp!370268 () Bool)

(assert (=> b!1255395 (= e!798908 (and tp_is_empty!6469 tp!370268))))

(assert (= (and d!354807 ((_ is Cons!12538) res!555946)) b!1255395))

(assert (=> d!354801 d!354807))

(declare-fun d!354809 () Bool)

(declare-fun c!208403 () Bool)

(assert (=> d!354809 (= c!208403 ((_ is Node!4107) (c!208400 (value!70256 (underlying!2804 thiss!9518)))))))

(declare-fun e!798918 () Bool)

(assert (=> d!354809 (= (inv!16825 (c!208400 (value!70256 (underlying!2804 thiss!9518)))) e!798918)))

(declare-fun b!1255407 () Bool)

(declare-fun inv!16829 (Conc!4107) Bool)

(assert (=> b!1255407 (= e!798918 (inv!16829 (c!208400 (value!70256 (underlying!2804 thiss!9518)))))))

(declare-fun b!1255408 () Bool)

(declare-fun e!798919 () Bool)

(assert (=> b!1255408 (= e!798918 e!798919)))

(declare-fun res!555954 () Bool)

(assert (=> b!1255408 (= res!555954 (not ((_ is Leaf!6358) (c!208400 (value!70256 (underlying!2804 thiss!9518))))))))

(assert (=> b!1255408 (=> res!555954 e!798919)))

(declare-fun b!1255409 () Bool)

(declare-fun inv!16830 (Conc!4107) Bool)

(assert (=> b!1255409 (= e!798919 (inv!16830 (c!208400 (value!70256 (underlying!2804 thiss!9518)))))))

(assert (= (and d!354809 c!208403) b!1255407))

(assert (= (and d!354809 (not c!208403)) b!1255408))

(assert (= (and b!1255408 (not res!555954)) b!1255409))

(declare-fun m!1413689 () Bool)

(assert (=> b!1255407 m!1413689))

(declare-fun m!1413691 () Bool)

(assert (=> b!1255409 m!1413691))

(assert (=> b!1255375 d!354809))

(declare-fun d!354815 () Bool)

(assert (=> d!354815 true))

(declare-fun e!798920 () Bool)

(assert (=> d!354815 e!798920))

(declare-fun res!555955 () List!12598)

(assert (=> d!354815 (= (choose!7843 (choose!7842 thiss!9518)) res!555955)))

(declare-fun b!1255410 () Bool)

(declare-fun tp!370276 () Bool)

(assert (=> b!1255410 (= e!798920 (and tp_is_empty!6469 tp!370276))))

(assert (= (and d!354815 ((_ is Cons!12538) res!555955)) b!1255410))

(assert (=> d!354793 d!354815))

(declare-fun d!354817 () Bool)

(declare-fun isBalanced!1197 (Conc!4107) Bool)

(assert (=> d!354817 (= (inv!16826 (value!70256 (underlying!2804 thiss!9518))) (isBalanced!1197 (c!208400 (value!70256 (underlying!2804 thiss!9518)))))))

(declare-fun bs!289955 () Bool)

(assert (= bs!289955 d!354817))

(declare-fun m!1413695 () Bool)

(assert (=> bs!289955 m!1413695))

(assert (=> b!1255374 d!354817))

(declare-fun b!1255416 () Bool)

(declare-fun e!798924 () Bool)

(declare-fun tp!370283 () Bool)

(declare-fun tp!370284 () Bool)

(assert (=> b!1255416 (= e!798924 (and tp!370283 tp!370284))))

(assert (=> b!1255376 (= tp!370251 e!798924)))

(assert (= (and b!1255376 ((_ is Cons!12537) (value!70257 (underlying!2804 thiss!9518)))) b!1255416))

(declare-fun tp!370292 () Bool)

(declare-fun e!798934 () Bool)

(declare-fun b!1255431 () Bool)

(declare-fun tp!370293 () Bool)

(assert (=> b!1255431 (= e!798934 (and (inv!16825 (left!10813 (c!208400 (value!70256 (underlying!2804 thiss!9518))))) tp!370292 (inv!16825 (right!11143 (c!208400 (value!70256 (underlying!2804 thiss!9518))))) tp!370293))))

(declare-fun b!1255433 () Bool)

(declare-fun e!798933 () Bool)

(declare-fun tp!370291 () Bool)

(assert (=> b!1255433 (= e!798933 tp!370291)))

(declare-fun b!1255432 () Bool)

(declare-fun inv!16831 (IArray!8219) Bool)

(assert (=> b!1255432 (= e!798934 (and (inv!16831 (xs!6818 (c!208400 (value!70256 (underlying!2804 thiss!9518))))) e!798933))))

(assert (=> b!1255375 (= tp!370250 (and (inv!16825 (c!208400 (value!70256 (underlying!2804 thiss!9518)))) e!798934))))

(assert (= (and b!1255375 ((_ is Node!4107) (c!208400 (value!70256 (underlying!2804 thiss!9518))))) b!1255431))

(assert (= b!1255432 b!1255433))

(assert (= (and b!1255375 ((_ is Leaf!6358) (c!208400 (value!70256 (underlying!2804 thiss!9518))))) b!1255432))

(declare-fun m!1413697 () Bool)

(assert (=> b!1255431 m!1413697))

(declare-fun m!1413699 () Bool)

(assert (=> b!1255431 m!1413699))

(declare-fun m!1413701 () Bool)

(assert (=> b!1255432 m!1413701))

(assert (=> b!1255375 m!1413679))

(declare-fun b!1255437 () Bool)

(declare-fun e!798937 () Bool)

(declare-fun tp!370294 () Bool)

(assert (=> b!1255437 (= e!798937 (and tp_is_empty!6469 tp!370294))))

(assert (=> b!1255388 (= tp!370258 e!798937)))

(assert (= (and b!1255388 ((_ is Cons!12538) (t!115642 (overflowing!117 thiss!9518)))) b!1255437))

(check-sat tp_is_empty!6469 (not b!1255392) (not d!354817) (not b!1255407) (not b!1255375) (not b!1255410) (not d!354805) (not b!1255431) (not b!1255432) (not b!1255416) (not b!1255395) (not b!1255409) (not b!1255433) (not b!1255437))
(check-sat)
