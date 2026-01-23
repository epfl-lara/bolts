; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3332 () Bool)

(assert start!3332)

(declare-fun res!31992 () Bool)

(declare-fun e!27792 () Bool)

(assert (=> start!3332 (=> res!31992 e!27792)))

(declare-fun lt!6860 () Int)

(assert (=> start!3332 (= res!31992 (= lt!6860 0))))

(declare-fun e!27790 () Bool)

(assert (=> start!3332 e!27790))

(declare-fun res!31993 () Bool)

(assert (=> start!3332 (=> (not res!31993) (not e!27790))))

(declare-datatypes ((T!2596 0))(
  ( (T!2597 (val!257 Int)) )
))
(declare-datatypes ((List!825 0))(
  ( (Nil!820) (Cons!820 (h!6216 T!2596) (t!17023 List!825)) )
))
(declare-fun lt!6859 () List!825)

(declare-fun size!805 (List!825) Int)

(assert (=> start!3332 (= res!31993 (= lt!6860 (size!805 lt!6859)))))

(declare-datatypes ((BalanceConc!322 0) (Object!172 0) (IArray!319 0) (Conc!159 0) (List!827 0))(
  ( (BalanceConc!323 (c!16302 Conc!159)) )
  ( (BalanceConc!321 (value!7896 BalanceConc!322)) (List!826 (value!7897 List!827)) (Character!4 (value!7898 (_ BitVec 16))) (Open!4 (value!7899 Int)) )
  ( (IArray!320 (innerList!217 List!827)) )
  ( (Node!159 (left!628 Conc!159) (right!958 Conc!159) (csize!548 Int) (cheight!370 Int)) (Leaf!369 (xs!2738 IArray!319) (csize!549 Int)) (Empty!159) )
  ( (Nil!821) (Cons!821 (h!6217 Object!172) (t!17024 List!827)) )
))
(declare-datatypes ((Vector!12 0))(
  ( (Vector!13 (underlying!770 Object!172) (overflowing!63 List!825)) )
))
(declare-fun thiss!9494 () Vector!12)

(declare-fun list!222 (Vector!12) List!825)

(assert (=> start!3332 (= lt!6859 (list!222 thiss!9494))))

(declare-fun size!806 (Vector!12) Int)

(assert (=> start!3332 (= lt!6860 (size!806 thiss!9494))))

(assert (=> start!3332 (not e!27792)))

(declare-fun e!27791 () Bool)

(assert (=> start!3332 e!27791))

(declare-fun b!47981 () Bool)

(declare-fun isEmpty!162 (List!825) Bool)

(assert (=> b!47981 (= e!27790 (= (= lt!6860 0) (isEmpty!162 lt!6859)))))

(declare-fun b!47982 () Bool)

(declare-fun choose!1150 (Vector!12) Vector!12)

(declare-fun tail!29 (List!825) List!825)

(assert (=> b!47982 (= e!27792 (= (list!222 (choose!1150 thiss!9494)) (tail!29 lt!6859)))))

(declare-fun b!47983 () Bool)

(declare-fun tp!32372 () Bool)

(declare-fun tp!32373 () Bool)

(assert (=> b!47983 (= e!27791 (and tp!32372 tp!32373))))

(assert (= (and start!3332 res!31993) b!47981))

(assert (= (and start!3332 (not res!31992)) b!47982))

(assert (= start!3332 b!47983))

(declare-fun m!21934 () Bool)

(assert (=> start!3332 m!21934))

(declare-fun m!21936 () Bool)

(assert (=> start!3332 m!21936))

(declare-fun m!21938 () Bool)

(assert (=> start!3332 m!21938))

(declare-fun m!21940 () Bool)

(assert (=> b!47981 m!21940))

(declare-fun m!21942 () Bool)

(assert (=> b!47982 m!21942))

(assert (=> b!47982 m!21942))

(declare-fun m!21944 () Bool)

(assert (=> b!47982 m!21944))

(declare-fun m!21946 () Bool)

(assert (=> b!47982 m!21946))

(check-sat (not b!47981) (not b!47982) (not start!3332) (not b!47983))
(check-sat)
(get-model)

(declare-fun d!5760 () Bool)

(get-info :version)

(assert (=> d!5760 (= (isEmpty!162 lt!6859) ((_ is Nil!820) lt!6859))))

(assert (=> b!47981 d!5760))

(declare-fun d!5762 () Bool)

(declare-fun choose!1151 (Vector!12) List!825)

(assert (=> d!5762 (= (list!222 (choose!1150 thiss!9494)) (choose!1151 (choose!1150 thiss!9494)))))

(declare-fun bs!6417 () Bool)

(assert (= bs!6417 d!5762))

(assert (=> bs!6417 m!21942))

(declare-fun m!21948 () Bool)

(assert (=> bs!6417 m!21948))

(assert (=> b!47982 d!5762))

(declare-fun d!5766 () Bool)

(declare-fun choose!1152 (Vector!12) Vector!12)

(assert (=> d!5766 (= (choose!1150 thiss!9494) (choose!1152 thiss!9494))))

(declare-fun bs!6419 () Bool)

(assert (= bs!6419 d!5766))

(declare-fun m!21950 () Bool)

(assert (=> bs!6419 m!21950))

(assert (=> b!47982 d!5766))

(declare-fun d!5768 () Bool)

(assert (=> d!5768 (= (tail!29 lt!6859) (t!17023 lt!6859))))

(assert (=> b!47982 d!5768))

(declare-fun d!5772 () Bool)

(declare-fun lt!6863 () Int)

(assert (=> d!5772 (>= lt!6863 0)))

(declare-fun e!27795 () Int)

(assert (=> d!5772 (= lt!6863 e!27795)))

(declare-fun c!16305 () Bool)

(assert (=> d!5772 (= c!16305 ((_ is Nil!820) lt!6859))))

(assert (=> d!5772 (= (size!805 lt!6859) lt!6863)))

(declare-fun b!47988 () Bool)

(assert (=> b!47988 (= e!27795 0)))

(declare-fun b!47989 () Bool)

(assert (=> b!47989 (= e!27795 (+ 1 (size!805 (t!17023 lt!6859))))))

(assert (= (and d!5772 c!16305) b!47988))

(assert (= (and d!5772 (not c!16305)) b!47989))

(declare-fun m!21956 () Bool)

(assert (=> b!47989 m!21956))

(assert (=> start!3332 d!5772))

(declare-fun d!5778 () Bool)

(assert (=> d!5778 (= (list!222 thiss!9494) (choose!1151 thiss!9494))))

(declare-fun bs!6421 () Bool)

(assert (= bs!6421 d!5778))

(declare-fun m!21958 () Bool)

(assert (=> bs!6421 m!21958))

(assert (=> start!3332 d!5778))

(declare-fun d!5780 () Bool)

(declare-fun lt!6866 () Int)

(assert (=> d!5780 (= lt!6866 (size!805 (list!222 thiss!9494)))))

(declare-fun choose!1153 (Vector!12) Int)

(assert (=> d!5780 (= lt!6866 (choose!1153 thiss!9494))))

(assert (=> d!5780 (= (size!806 thiss!9494) lt!6866)))

(declare-fun bs!6422 () Bool)

(assert (= bs!6422 d!5780))

(assert (=> bs!6422 m!21936))

(assert (=> bs!6422 m!21936))

(declare-fun m!21960 () Bool)

(assert (=> bs!6422 m!21960))

(declare-fun m!21962 () Bool)

(assert (=> bs!6422 m!21962))

(assert (=> start!3332 d!5780))

(declare-fun b!48003 () Bool)

(declare-fun e!27803 () Bool)

(declare-fun tp!32378 () Bool)

(declare-fun inv!1108 (Conc!159) Bool)

(assert (=> b!48003 (= e!27803 (and (inv!1108 (c!16302 (value!7896 (underlying!770 thiss!9494)))) tp!32378))))

(declare-fun b!48002 () Bool)

(declare-fun e!27802 () Bool)

(declare-fun inv!1109 (BalanceConc!322) Bool)

(assert (=> b!48002 (= e!27802 (and (inv!1109 (value!7896 (underlying!770 thiss!9494))) e!27803))))

(declare-fun b!48004 () Bool)

(declare-fun tp!32379 () Bool)

(assert (=> b!48004 (= e!27802 tp!32379)))

(assert (=> b!47983 (= tp!32372 e!27802)))

(assert (= b!48002 b!48003))

(assert (= (and b!47983 ((_ is BalanceConc!321) (underlying!770 thiss!9494))) b!48002))

(assert (= (and b!47983 ((_ is List!826) (underlying!770 thiss!9494))) b!48004))

(declare-fun m!21964 () Bool)

(assert (=> b!48003 m!21964))

(declare-fun m!21966 () Bool)

(assert (=> b!48002 m!21966))

(declare-fun b!48009 () Bool)

(declare-fun e!27806 () Bool)

(declare-fun tp_is_empty!423 () Bool)

(declare-fun tp!32382 () Bool)

(assert (=> b!48009 (= e!27806 (and tp_is_empty!423 tp!32382))))

(assert (=> b!47983 (= tp!32373 e!27806)))

(assert (= (and b!47983 ((_ is Cons!820) (overflowing!63 thiss!9494))) b!48009))

(check-sat tp_is_empty!423 (not d!5762) (not b!48004) (not d!5766) (not b!47989) (not d!5778) (not b!48003) (not b!48002) (not d!5780) (not b!48009))
(check-sat)
(get-model)

(declare-fun d!5786 () Bool)

(declare-fun res!31996 () Vector!12)

(assert (=> d!5786 (= (list!222 res!31996) (tail!29 (list!222 thiss!9494)))))

(declare-fun e!27819 () Bool)

(assert (=> d!5786 e!27819))

(assert (=> d!5786 (= (choose!1152 thiss!9494) res!31996)))

(declare-fun b!48030 () Bool)

(declare-fun tp!32396 () Bool)

(declare-fun tp!32397 () Bool)

(assert (=> b!48030 (= e!27819 (and tp!32396 tp!32397))))

(assert (= d!5786 b!48030))

(declare-fun m!21980 () Bool)

(assert (=> d!5786 m!21980))

(assert (=> d!5786 m!21936))

(assert (=> d!5786 m!21936))

(declare-fun m!21982 () Bool)

(assert (=> d!5786 m!21982))

(assert (=> d!5766 d!5786))

(declare-fun d!5788 () Bool)

(declare-fun c!16311 () Bool)

(assert (=> d!5788 (= c!16311 ((_ is Node!159) (c!16302 (value!7896 (underlying!770 thiss!9494)))))))

(declare-fun e!27824 () Bool)

(assert (=> d!5788 (= (inv!1108 (c!16302 (value!7896 (underlying!770 thiss!9494)))) e!27824)))

(declare-fun b!48037 () Bool)

(declare-fun inv!1112 (Conc!159) Bool)

(assert (=> b!48037 (= e!27824 (inv!1112 (c!16302 (value!7896 (underlying!770 thiss!9494)))))))

(declare-fun b!48038 () Bool)

(declare-fun e!27825 () Bool)

(assert (=> b!48038 (= e!27824 e!27825)))

(declare-fun res!31999 () Bool)

(assert (=> b!48038 (= res!31999 (not ((_ is Leaf!369) (c!16302 (value!7896 (underlying!770 thiss!9494))))))))

(assert (=> b!48038 (=> res!31999 e!27825)))

(declare-fun b!48039 () Bool)

(declare-fun inv!1113 (Conc!159) Bool)

(assert (=> b!48039 (= e!27825 (inv!1113 (c!16302 (value!7896 (underlying!770 thiss!9494)))))))

(assert (= (and d!5788 c!16311) b!48037))

(assert (= (and d!5788 (not c!16311)) b!48038))

(assert (= (and b!48038 (not res!31999)) b!48039))

(declare-fun m!21984 () Bool)

(assert (=> b!48037 m!21984))

(declare-fun m!21986 () Bool)

(assert (=> b!48039 m!21986))

(assert (=> b!48003 d!5788))

(declare-fun d!5790 () Bool)

(assert (=> d!5790 true))

(declare-fun e!27828 () Bool)

(assert (=> d!5790 e!27828))

(declare-fun res!32002 () List!825)

(assert (=> d!5790 (= (choose!1151 (choose!1150 thiss!9494)) res!32002)))

(declare-fun b!48042 () Bool)

(declare-fun tp!32400 () Bool)

(assert (=> b!48042 (= e!27828 (and tp_is_empty!423 tp!32400))))

(assert (= (and d!5790 ((_ is Cons!820) res!32002)) b!48042))

(assert (=> d!5762 d!5790))

(declare-fun d!5792 () Bool)

(declare-fun lt!6873 () Int)

(assert (=> d!5792 (>= lt!6873 0)))

(declare-fun e!27829 () Int)

(assert (=> d!5792 (= lt!6873 e!27829)))

(declare-fun c!16312 () Bool)

(assert (=> d!5792 (= c!16312 ((_ is Nil!820) (list!222 thiss!9494)))))

(assert (=> d!5792 (= (size!805 (list!222 thiss!9494)) lt!6873)))

(declare-fun b!48043 () Bool)

(assert (=> b!48043 (= e!27829 0)))

(declare-fun b!48044 () Bool)

(assert (=> b!48044 (= e!27829 (+ 1 (size!805 (t!17023 (list!222 thiss!9494)))))))

(assert (= (and d!5792 c!16312) b!48043))

(assert (= (and d!5792 (not c!16312)) b!48044))

(declare-fun m!21988 () Bool)

(assert (=> b!48044 m!21988))

(assert (=> d!5780 d!5792))

(assert (=> d!5780 d!5778))

(declare-fun d!5794 () Bool)

(declare-fun res!32005 () Int)

(assert (=> d!5794 (= res!32005 (size!805 (list!222 thiss!9494)))))

(assert (=> d!5794 true))

(assert (=> d!5794 (= (choose!1153 thiss!9494) res!32005)))

(declare-fun bs!6425 () Bool)

(assert (= bs!6425 d!5794))

(assert (=> bs!6425 m!21936))

(assert (=> bs!6425 m!21936))

(assert (=> bs!6425 m!21960))

(assert (=> d!5780 d!5794))

(declare-fun d!5796 () Bool)

(assert (=> d!5796 true))

(declare-fun e!27830 () Bool)

(assert (=> d!5796 e!27830))

(declare-fun res!32006 () List!825)

(assert (=> d!5796 (= (choose!1151 thiss!9494) res!32006)))

(declare-fun b!48045 () Bool)

(declare-fun tp!32401 () Bool)

(assert (=> b!48045 (= e!27830 (and tp_is_empty!423 tp!32401))))

(assert (= (and d!5796 ((_ is Cons!820) res!32006)) b!48045))

(assert (=> d!5778 d!5796))

(declare-fun d!5798 () Bool)

(declare-fun lt!6874 () Int)

(assert (=> d!5798 (>= lt!6874 0)))

(declare-fun e!27831 () Int)

(assert (=> d!5798 (= lt!6874 e!27831)))

(declare-fun c!16313 () Bool)

(assert (=> d!5798 (= c!16313 ((_ is Nil!820) (t!17023 lt!6859)))))

(assert (=> d!5798 (= (size!805 (t!17023 lt!6859)) lt!6874)))

(declare-fun b!48046 () Bool)

(assert (=> b!48046 (= e!27831 0)))

(declare-fun b!48047 () Bool)

(assert (=> b!48047 (= e!27831 (+ 1 (size!805 (t!17023 (t!17023 lt!6859)))))))

(assert (= (and d!5798 c!16313) b!48046))

(assert (= (and d!5798 (not c!16313)) b!48047))

(declare-fun m!21990 () Bool)

(assert (=> b!48047 m!21990))

(assert (=> b!47989 d!5798))

(declare-fun d!5800 () Bool)

(declare-fun isBalanced!31 (Conc!159) Bool)

(assert (=> d!5800 (= (inv!1109 (value!7896 (underlying!770 thiss!9494))) (isBalanced!31 (c!16302 (value!7896 (underlying!770 thiss!9494)))))))

(declare-fun bs!6426 () Bool)

(assert (= bs!6426 d!5800))

(declare-fun m!21992 () Bool)

(assert (=> bs!6426 m!21992))

(assert (=> b!48002 d!5800))

(declare-fun b!48048 () Bool)

(declare-fun e!27832 () Bool)

(declare-fun tp!32402 () Bool)

(assert (=> b!48048 (= e!27832 (and tp_is_empty!423 tp!32402))))

(assert (=> b!48009 (= tp!32382 e!27832)))

(assert (= (and b!48009 ((_ is Cons!820) (t!17023 (overflowing!63 thiss!9494)))) b!48048))

(declare-fun b!48053 () Bool)

(declare-fun e!27835 () Bool)

(declare-fun tp!32407 () Bool)

(declare-fun tp!32408 () Bool)

(assert (=> b!48053 (= e!27835 (and tp!32407 tp!32408))))

(assert (=> b!48004 (= tp!32379 e!27835)))

(assert (= (and b!48004 ((_ is Cons!821) (value!7897 (underlying!770 thiss!9494)))) b!48053))

(declare-fun b!48062 () Bool)

(declare-fun tp!32417 () Bool)

(declare-fun tp!32415 () Bool)

(declare-fun e!27840 () Bool)

(assert (=> b!48062 (= e!27840 (and (inv!1108 (left!628 (c!16302 (value!7896 (underlying!770 thiss!9494))))) tp!32417 (inv!1108 (right!958 (c!16302 (value!7896 (underlying!770 thiss!9494))))) tp!32415))))

(declare-fun b!48064 () Bool)

(declare-fun e!27841 () Bool)

(declare-fun tp!32416 () Bool)

(assert (=> b!48064 (= e!27841 tp!32416)))

(declare-fun b!48063 () Bool)

(declare-fun inv!1114 (IArray!319) Bool)

(assert (=> b!48063 (= e!27840 (and (inv!1114 (xs!2738 (c!16302 (value!7896 (underlying!770 thiss!9494))))) e!27841))))

(assert (=> b!48003 (= tp!32378 (and (inv!1108 (c!16302 (value!7896 (underlying!770 thiss!9494)))) e!27840))))

(assert (= (and b!48003 ((_ is Node!159) (c!16302 (value!7896 (underlying!770 thiss!9494))))) b!48062))

(assert (= b!48063 b!48064))

(assert (= (and b!48003 ((_ is Leaf!369) (c!16302 (value!7896 (underlying!770 thiss!9494))))) b!48063))

(declare-fun m!21994 () Bool)

(assert (=> b!48062 m!21994))

(declare-fun m!21996 () Bool)

(assert (=> b!48062 m!21996))

(declare-fun m!21998 () Bool)

(assert (=> b!48063 m!21998))

(assert (=> b!48003 m!21964))

(check-sat (not b!48045) tp_is_empty!423 (not b!48003) (not d!5800) (not b!48030) (not b!48048) (not b!48047) (not d!5786) (not b!48053) (not b!48062) (not b!48037) (not d!5794) (not b!48042) (not b!48064) (not b!48044) (not b!48063) (not b!48039))
(check-sat)
