; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95414 () Bool)

(assert start!95414)

(declare-fun lt!375668 () Int)

(declare-datatypes ((Conc!3399 0) (Object!1939 0) (BalanceConc!6814 0) (IArray!6803 0) (List!10775 0))(
  ( (Node!3399 (left!9359 Conc!3399) (right!9689 Conc!3399) (csize!7028 Int) (cheight!3610 Int)) (Leaf!5334 (xs!6092 IArray!6803) (csize!7029 Int)) (Empty!3399) )
  ( (BalanceConc!6813 (value!60857 BalanceConc!6814)) (List!10774 (value!60858 List!10775)) (Character!16 (value!60859 (_ BitVec 16))) (Open!16 (value!60860 Int)) )
  ( (BalanceConc!6815 (c!187779 Conc!3399)) )
  ( (IArray!6804 (innerList!3459 List!10775)) )
  ( (Nil!10757) (Cons!10757 (h!16158 Object!1939) (t!105337 List!10775)) )
))
(declare-datatypes ((T!19870 0))(
  ( (T!19871 (val!3570 Int)) )
))
(declare-datatypes ((List!10776 0))(
  ( (Nil!10758) (Cons!10758 (h!16159 T!19870) (t!105338 List!10776)) )
))
(declare-datatypes ((Vector!36 0))(
  ( (Vector!37 (underlying!2710 Object!1939) (overflowing!75 List!10776)) )
))
(declare-fun other!25 () Vector!36)

(declare-fun size!8367 (List!10776) Int)

(declare-fun list!3884 (Vector!36) List!10776)

(assert (=> start!95414 (= lt!375668 (size!8367 (list!3884 other!25)))))

(declare-fun size!8368 (Vector!36) Int)

(assert (=> start!95414 (= lt!375668 (size!8368 other!25))))

(declare-fun lt!375669 () Int)

(declare-fun thiss!9530 () Vector!36)

(assert (=> start!95414 (= lt!375669 (size!8367 (list!3884 thiss!9530)))))

(assert (=> start!95414 (= lt!375669 (size!8368 thiss!9530))))

(assert (=> start!95414 (not (or (not (= lt!375669 lt!375668)) (<= 0 lt!375669)))))

(declare-fun e!700793 () Bool)

(assert (=> start!95414 e!700793))

(declare-fun e!700794 () Bool)

(assert (=> start!95414 e!700794))

(declare-fun b!1105754 () Bool)

(declare-fun tp!327353 () Bool)

(declare-fun tp!327354 () Bool)

(assert (=> b!1105754 (= e!700793 (and tp!327353 tp!327354))))

(declare-fun b!1105755 () Bool)

(declare-fun tp!327355 () Bool)

(declare-fun tp!327356 () Bool)

(assert (=> b!1105755 (= e!700794 (and tp!327355 tp!327356))))

(assert (= start!95414 b!1105754))

(assert (= start!95414 b!1105755))

(declare-fun m!1263343 () Bool)

(assert (=> start!95414 m!1263343))

(declare-fun m!1263345 () Bool)

(assert (=> start!95414 m!1263345))

(declare-fun m!1263347 () Bool)

(assert (=> start!95414 m!1263347))

(declare-fun m!1263349 () Bool)

(assert (=> start!95414 m!1263349))

(declare-fun m!1263351 () Bool)

(assert (=> start!95414 m!1263351))

(assert (=> start!95414 m!1263347))

(declare-fun m!1263353 () Bool)

(assert (=> start!95414 m!1263353))

(assert (=> start!95414 m!1263343))

(check-sat (not start!95414) (not b!1105755) (not b!1105754))
(check-sat)
(get-model)

(declare-fun d!313149 () Bool)

(declare-fun choose!7165 (Vector!36) List!10776)

(assert (=> d!313149 (= (list!3884 other!25) (choose!7165 other!25))))

(declare-fun bs!260016 () Bool)

(assert (= bs!260016 d!313149))

(declare-fun m!1263357 () Bool)

(assert (=> bs!260016 m!1263357))

(assert (=> start!95414 d!313149))

(declare-fun d!313151 () Bool)

(declare-fun lt!375677 () Int)

(assert (=> d!313151 (= lt!375677 (size!8367 (list!3884 thiss!9530)))))

(declare-fun choose!7166 (Vector!36) Int)

(assert (=> d!313151 (= lt!375677 (choose!7166 thiss!9530))))

(assert (=> d!313151 (= (size!8368 thiss!9530) lt!375677)))

(declare-fun bs!260018 () Bool)

(assert (= bs!260018 d!313151))

(assert (=> bs!260018 m!1263347))

(assert (=> bs!260018 m!1263347))

(assert (=> bs!260018 m!1263353))

(declare-fun m!1263361 () Bool)

(assert (=> bs!260018 m!1263361))

(assert (=> start!95414 d!313151))

(declare-fun d!313155 () Bool)

(declare-fun lt!375683 () Int)

(assert (=> d!313155 (>= lt!375683 0)))

(declare-fun e!700805 () Int)

(assert (=> d!313155 (= lt!375683 e!700805)))

(declare-fun c!187786 () Bool)

(get-info :version)

(assert (=> d!313155 (= c!187786 ((_ is Nil!10758) (list!3884 other!25)))))

(assert (=> d!313155 (= (size!8367 (list!3884 other!25)) lt!375683)))

(declare-fun b!1105774 () Bool)

(assert (=> b!1105774 (= e!700805 0)))

(declare-fun b!1105775 () Bool)

(assert (=> b!1105775 (= e!700805 (+ 1 (size!8367 (t!105338 (list!3884 other!25)))))))

(assert (= (and d!313155 c!187786) b!1105774))

(assert (= (and d!313155 (not c!187786)) b!1105775))

(declare-fun m!1263371 () Bool)

(assert (=> b!1105775 m!1263371))

(assert (=> start!95414 d!313155))

(declare-fun d!313163 () Bool)

(declare-fun lt!375684 () Int)

(assert (=> d!313163 (>= lt!375684 0)))

(declare-fun e!700806 () Int)

(assert (=> d!313163 (= lt!375684 e!700806)))

(declare-fun c!187787 () Bool)

(assert (=> d!313163 (= c!187787 ((_ is Nil!10758) (list!3884 thiss!9530)))))

(assert (=> d!313163 (= (size!8367 (list!3884 thiss!9530)) lt!375684)))

(declare-fun b!1105778 () Bool)

(assert (=> b!1105778 (= e!700806 0)))

(declare-fun b!1105779 () Bool)

(assert (=> b!1105779 (= e!700806 (+ 1 (size!8367 (t!105338 (list!3884 thiss!9530)))))))

(assert (= (and d!313163 c!187787) b!1105778))

(assert (= (and d!313163 (not c!187787)) b!1105779))

(declare-fun m!1263373 () Bool)

(assert (=> b!1105779 m!1263373))

(assert (=> start!95414 d!313163))

(declare-fun d!313165 () Bool)

(assert (=> d!313165 (= (list!3884 thiss!9530) (choose!7165 thiss!9530))))

(declare-fun bs!260021 () Bool)

(assert (= bs!260021 d!313165))

(declare-fun m!1263375 () Bool)

(assert (=> bs!260021 m!1263375))

(assert (=> start!95414 d!313165))

(declare-fun d!313167 () Bool)

(declare-fun lt!375685 () Int)

(assert (=> d!313167 (= lt!375685 (size!8367 (list!3884 other!25)))))

(assert (=> d!313167 (= lt!375685 (choose!7166 other!25))))

(assert (=> d!313167 (= (size!8368 other!25) lt!375685)))

(declare-fun bs!260022 () Bool)

(assert (= bs!260022 d!313167))

(assert (=> bs!260022 m!1263343))

(assert (=> bs!260022 m!1263343))

(assert (=> bs!260022 m!1263345))

(declare-fun m!1263377 () Bool)

(assert (=> bs!260022 m!1263377))

(assert (=> start!95414 d!313167))

(declare-fun b!1105801 () Bool)

(declare-fun e!700820 () Bool)

(declare-fun tp!327373 () Bool)

(declare-fun inv!13828 (Conc!3399) Bool)

(assert (=> b!1105801 (= e!700820 (and (inv!13828 (c!187779 (value!60857 (underlying!2710 other!25)))) tp!327373))))

(declare-fun b!1105800 () Bool)

(declare-fun e!700819 () Bool)

(declare-fun inv!13829 (BalanceConc!6814) Bool)

(assert (=> b!1105800 (= e!700819 (and (inv!13829 (value!60857 (underlying!2710 other!25))) e!700820))))

(declare-fun b!1105802 () Bool)

(declare-fun tp!327374 () Bool)

(assert (=> b!1105802 (= e!700819 tp!327374)))

(assert (=> b!1105755 (= tp!327355 e!700819)))

(assert (= b!1105800 b!1105801))

(assert (= (and b!1105755 ((_ is BalanceConc!6813) (underlying!2710 other!25))) b!1105800))

(assert (= (and b!1105755 ((_ is List!10774) (underlying!2710 other!25))) b!1105802))

(declare-fun m!1263387 () Bool)

(assert (=> b!1105801 m!1263387))

(declare-fun m!1263389 () Bool)

(assert (=> b!1105800 m!1263389))

(declare-fun b!1105807 () Bool)

(declare-fun e!700823 () Bool)

(declare-fun tp_is_empty!5705 () Bool)

(declare-fun tp!327377 () Bool)

(assert (=> b!1105807 (= e!700823 (and tp_is_empty!5705 tp!327377))))

(assert (=> b!1105755 (= tp!327356 e!700823)))

(assert (= (and b!1105755 ((_ is Cons!10758) (overflowing!75 other!25))) b!1105807))

(declare-fun b!1105809 () Bool)

(declare-fun e!700825 () Bool)

(declare-fun tp!327378 () Bool)

(assert (=> b!1105809 (= e!700825 (and (inv!13828 (c!187779 (value!60857 (underlying!2710 thiss!9530)))) tp!327378))))

(declare-fun b!1105808 () Bool)

(declare-fun e!700824 () Bool)

(assert (=> b!1105808 (= e!700824 (and (inv!13829 (value!60857 (underlying!2710 thiss!9530))) e!700825))))

(declare-fun b!1105810 () Bool)

(declare-fun tp!327379 () Bool)

(assert (=> b!1105810 (= e!700824 tp!327379)))

(assert (=> b!1105754 (= tp!327353 e!700824)))

(assert (= b!1105808 b!1105809))

(assert (= (and b!1105754 ((_ is BalanceConc!6813) (underlying!2710 thiss!9530))) b!1105808))

(assert (= (and b!1105754 ((_ is List!10774) (underlying!2710 thiss!9530))) b!1105810))

(declare-fun m!1263391 () Bool)

(assert (=> b!1105809 m!1263391))

(declare-fun m!1263393 () Bool)

(assert (=> b!1105808 m!1263393))

(declare-fun b!1105811 () Bool)

(declare-fun e!700826 () Bool)

(declare-fun tp!327380 () Bool)

(assert (=> b!1105811 (= e!700826 (and tp_is_empty!5705 tp!327380))))

(assert (=> b!1105754 (= tp!327354 e!700826)))

(assert (= (and b!1105754 ((_ is Cons!10758) (overflowing!75 thiss!9530))) b!1105811))

(check-sat (not b!1105809) tp_is_empty!5705 (not d!313149) (not b!1105808) (not b!1105807) (not b!1105775) (not d!313151) (not b!1105779) (not d!313167) (not b!1105811) (not b!1105800) (not d!313165) (not b!1105810) (not b!1105801) (not b!1105802))
(check-sat)
