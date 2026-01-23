; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189028 () Bool)

(assert start!189028)

(declare-fun b!1887772 () Bool)

(declare-fun e!1204685 () Bool)

(declare-fun tp_is_empty!8997 () Bool)

(declare-fun tp!538240 () Bool)

(assert (=> b!1887772 (= e!1204685 (and tp_is_empty!8997 tp!538240))))

(declare-fun b!1887773 () Bool)

(declare-fun e!1204687 () Bool)

(declare-fun tp!538241 () Bool)

(assert (=> b!1887773 (= e!1204687 (and tp_is_empty!8997 tp!538241))))

(declare-fun res!842838 () Bool)

(declare-fun e!1204688 () Bool)

(assert (=> start!189028 (=> (not res!842838) (not e!1204688))))

(declare-datatypes ((B!1741 0))(
  ( (B!1742 (val!6156 Int)) )
))
(declare-datatypes ((List!21149 0))(
  ( (Nil!21067) (Cons!21067 (h!26468 B!1741) (t!175148 List!21149)) )
))
(declare-fun l1!1329 () List!21149)

(declare-fun l2!1298 () List!21149)

(declare-fun subseq!415 (List!21149 List!21149) Bool)

(assert (=> start!189028 (= res!842838 (subseq!415 l1!1329 l2!1298))))

(assert (=> start!189028 e!1204688))

(declare-fun e!1204686 () Bool)

(assert (=> start!189028 e!1204686))

(assert (=> start!189028 e!1204685))

(assert (=> start!189028 e!1204687))

(declare-fun b!1887774 () Bool)

(declare-fun res!842833 () Bool)

(assert (=> b!1887774 (=> (not res!842833) (not e!1204688))))

(assert (=> b!1887774 (= res!842833 (subseq!415 (t!175148 l1!1329) l2!1298))))

(declare-fun b!1887775 () Bool)

(declare-fun res!842835 () Bool)

(assert (=> b!1887775 (=> (not res!842835) (not e!1204688))))

(declare-fun l3!256 () List!21149)

(get-info :version)

(assert (=> b!1887775 (= res!842835 (and (or (not ((_ is Cons!21067) l1!1329)) (not ((_ is Cons!21067) l2!1298)) (not ((_ is Cons!21067) l3!256)) (= (h!26468 l2!1298) (h!26468 l3!256))) ((_ is Cons!21067) l1!1329) ((_ is Cons!21067) l2!1298) ((_ is Cons!21067) l3!256) (= (h!26468 l2!1298) (h!26468 l3!256))))))

(declare-fun b!1887776 () Bool)

(declare-fun tp!538242 () Bool)

(assert (=> b!1887776 (= e!1204686 (and tp_is_empty!8997 tp!538242))))

(declare-fun b!1887777 () Bool)

(assert (=> b!1887777 (= e!1204688 (not (subseq!415 l2!1298 (t!175148 l3!256))))))

(declare-fun b!1887778 () Bool)

(declare-fun res!842834 () Bool)

(assert (=> b!1887778 (=> (not res!842834) (not e!1204688))))

(assert (=> b!1887778 (= res!842834 (not (subseq!415 (t!175148 l2!1298) (t!175148 l3!256))))))

(declare-fun b!1887779 () Bool)

(declare-fun res!842836 () Bool)

(assert (=> b!1887779 (=> (not res!842836) (not e!1204688))))

(assert (=> b!1887779 (= res!842836 (= (h!26468 l1!1329) (h!26468 l2!1298)))))

(declare-fun b!1887780 () Bool)

(declare-fun res!842837 () Bool)

(assert (=> b!1887780 (=> (not res!842837) (not e!1204688))))

(assert (=> b!1887780 (= res!842837 (subseq!415 l2!1298 l3!256))))

(assert (= (and start!189028 res!842838) b!1887780))

(assert (= (and b!1887780 res!842837) b!1887775))

(assert (= (and b!1887775 res!842835) b!1887778))

(assert (= (and b!1887778 res!842834) b!1887779))

(assert (= (and b!1887779 res!842836) b!1887774))

(assert (= (and b!1887774 res!842833) b!1887777))

(assert (= (and start!189028 ((_ is Cons!21067) l1!1329)) b!1887776))

(assert (= (and start!189028 ((_ is Cons!21067) l2!1298)) b!1887772))

(assert (= (and start!189028 ((_ is Cons!21067) l3!256)) b!1887773))

(declare-fun m!2319561 () Bool)

(assert (=> b!1887774 m!2319561))

(declare-fun m!2319563 () Bool)

(assert (=> b!1887778 m!2319563))

(declare-fun m!2319565 () Bool)

(assert (=> b!1887780 m!2319565))

(declare-fun m!2319567 () Bool)

(assert (=> start!189028 m!2319567))

(declare-fun m!2319569 () Bool)

(assert (=> b!1887777 m!2319569))

(check-sat (not b!1887773) (not b!1887774) (not b!1887772) (not start!189028) (not b!1887780) (not b!1887777) tp_is_empty!8997 (not b!1887776) (not b!1887778))
(check-sat)
(get-model)

(declare-fun b!1887799 () Bool)

(declare-fun e!1204707 () Bool)

(assert (=> b!1887799 (= e!1204707 (subseq!415 (t!175148 (t!175148 l1!1329)) (t!175148 l2!1298)))))

(declare-fun d!578272 () Bool)

(declare-fun res!842855 () Bool)

(declare-fun e!1204706 () Bool)

(assert (=> d!578272 (=> res!842855 e!1204706)))

(assert (=> d!578272 (= res!842855 ((_ is Nil!21067) (t!175148 l1!1329)))))

(assert (=> d!578272 (= (subseq!415 (t!175148 l1!1329) l2!1298) e!1204706)))

(declare-fun b!1887800 () Bool)

(declare-fun e!1204705 () Bool)

(assert (=> b!1887800 (= e!1204705 (subseq!415 (t!175148 l1!1329) (t!175148 l2!1298)))))

(declare-fun b!1887798 () Bool)

(declare-fun e!1204708 () Bool)

(assert (=> b!1887798 (= e!1204708 e!1204705)))

(declare-fun res!842857 () Bool)

(assert (=> b!1887798 (=> res!842857 e!1204705)))

(assert (=> b!1887798 (= res!842857 e!1204707)))

(declare-fun res!842858 () Bool)

(assert (=> b!1887798 (=> (not res!842858) (not e!1204707))))

(assert (=> b!1887798 (= res!842858 (= (h!26468 (t!175148 l1!1329)) (h!26468 l2!1298)))))

(declare-fun b!1887797 () Bool)

(assert (=> b!1887797 (= e!1204706 e!1204708)))

(declare-fun res!842856 () Bool)

(assert (=> b!1887797 (=> (not res!842856) (not e!1204708))))

(assert (=> b!1887797 (= res!842856 ((_ is Cons!21067) l2!1298))))

(assert (= (and d!578272 (not res!842855)) b!1887797))

(assert (= (and b!1887797 res!842856) b!1887798))

(assert (= (and b!1887798 res!842858) b!1887799))

(assert (= (and b!1887798 (not res!842857)) b!1887800))

(declare-fun m!2319571 () Bool)

(assert (=> b!1887799 m!2319571))

(declare-fun m!2319573 () Bool)

(assert (=> b!1887800 m!2319573))

(assert (=> b!1887774 d!578272))

(declare-fun b!1887803 () Bool)

(declare-fun e!1204711 () Bool)

(assert (=> b!1887803 (= e!1204711 (subseq!415 (t!175148 l2!1298) (t!175148 l3!256)))))

(declare-fun d!578276 () Bool)

(declare-fun res!842859 () Bool)

(declare-fun e!1204710 () Bool)

(assert (=> d!578276 (=> res!842859 e!1204710)))

(assert (=> d!578276 (= res!842859 ((_ is Nil!21067) l2!1298))))

(assert (=> d!578276 (= (subseq!415 l2!1298 l3!256) e!1204710)))

(declare-fun b!1887804 () Bool)

(declare-fun e!1204709 () Bool)

(assert (=> b!1887804 (= e!1204709 (subseq!415 l2!1298 (t!175148 l3!256)))))

(declare-fun b!1887802 () Bool)

(declare-fun e!1204712 () Bool)

(assert (=> b!1887802 (= e!1204712 e!1204709)))

(declare-fun res!842861 () Bool)

(assert (=> b!1887802 (=> res!842861 e!1204709)))

(assert (=> b!1887802 (= res!842861 e!1204711)))

(declare-fun res!842862 () Bool)

(assert (=> b!1887802 (=> (not res!842862) (not e!1204711))))

(assert (=> b!1887802 (= res!842862 (= (h!26468 l2!1298) (h!26468 l3!256)))))

(declare-fun b!1887801 () Bool)

(assert (=> b!1887801 (= e!1204710 e!1204712)))

(declare-fun res!842860 () Bool)

(assert (=> b!1887801 (=> (not res!842860) (not e!1204712))))

(assert (=> b!1887801 (= res!842860 ((_ is Cons!21067) l3!256))))

(assert (= (and d!578276 (not res!842859)) b!1887801))

(assert (= (and b!1887801 res!842860) b!1887802))

(assert (= (and b!1887802 res!842862) b!1887803))

(assert (= (and b!1887802 (not res!842861)) b!1887804))

(assert (=> b!1887803 m!2319563))

(assert (=> b!1887804 m!2319569))

(assert (=> b!1887780 d!578276))

(declare-fun b!1887807 () Bool)

(declare-fun e!1204715 () Bool)

(assert (=> b!1887807 (= e!1204715 (subseq!415 (t!175148 l1!1329) (t!175148 l2!1298)))))

(declare-fun d!578278 () Bool)

(declare-fun res!842863 () Bool)

(declare-fun e!1204714 () Bool)

(assert (=> d!578278 (=> res!842863 e!1204714)))

(assert (=> d!578278 (= res!842863 ((_ is Nil!21067) l1!1329))))

(assert (=> d!578278 (= (subseq!415 l1!1329 l2!1298) e!1204714)))

(declare-fun b!1887808 () Bool)

(declare-fun e!1204713 () Bool)

(assert (=> b!1887808 (= e!1204713 (subseq!415 l1!1329 (t!175148 l2!1298)))))

(declare-fun b!1887806 () Bool)

(declare-fun e!1204716 () Bool)

(assert (=> b!1887806 (= e!1204716 e!1204713)))

(declare-fun res!842865 () Bool)

(assert (=> b!1887806 (=> res!842865 e!1204713)))

(assert (=> b!1887806 (= res!842865 e!1204715)))

(declare-fun res!842866 () Bool)

(assert (=> b!1887806 (=> (not res!842866) (not e!1204715))))

(assert (=> b!1887806 (= res!842866 (= (h!26468 l1!1329) (h!26468 l2!1298)))))

(declare-fun b!1887805 () Bool)

(assert (=> b!1887805 (= e!1204714 e!1204716)))

(declare-fun res!842864 () Bool)

(assert (=> b!1887805 (=> (not res!842864) (not e!1204716))))

(assert (=> b!1887805 (= res!842864 ((_ is Cons!21067) l2!1298))))

(assert (= (and d!578278 (not res!842863)) b!1887805))

(assert (= (and b!1887805 res!842864) b!1887806))

(assert (= (and b!1887806 res!842866) b!1887807))

(assert (= (and b!1887806 (not res!842865)) b!1887808))

(assert (=> b!1887807 m!2319573))

(declare-fun m!2319575 () Bool)

(assert (=> b!1887808 m!2319575))

(assert (=> start!189028 d!578278))

(declare-fun b!1887815 () Bool)

(declare-fun e!1204723 () Bool)

(assert (=> b!1887815 (= e!1204723 (subseq!415 (t!175148 l2!1298) (t!175148 (t!175148 l3!256))))))

(declare-fun d!578280 () Bool)

(declare-fun res!842871 () Bool)

(declare-fun e!1204722 () Bool)

(assert (=> d!578280 (=> res!842871 e!1204722)))

(assert (=> d!578280 (= res!842871 ((_ is Nil!21067) l2!1298))))

(assert (=> d!578280 (= (subseq!415 l2!1298 (t!175148 l3!256)) e!1204722)))

(declare-fun b!1887816 () Bool)

(declare-fun e!1204721 () Bool)

(assert (=> b!1887816 (= e!1204721 (subseq!415 l2!1298 (t!175148 (t!175148 l3!256))))))

(declare-fun b!1887814 () Bool)

(declare-fun e!1204724 () Bool)

(assert (=> b!1887814 (= e!1204724 e!1204721)))

(declare-fun res!842873 () Bool)

(assert (=> b!1887814 (=> res!842873 e!1204721)))

(assert (=> b!1887814 (= res!842873 e!1204723)))

(declare-fun res!842874 () Bool)

(assert (=> b!1887814 (=> (not res!842874) (not e!1204723))))

(assert (=> b!1887814 (= res!842874 (= (h!26468 l2!1298) (h!26468 (t!175148 l3!256))))))

(declare-fun b!1887813 () Bool)

(assert (=> b!1887813 (= e!1204722 e!1204724)))

(declare-fun res!842872 () Bool)

(assert (=> b!1887813 (=> (not res!842872) (not e!1204724))))

(assert (=> b!1887813 (= res!842872 ((_ is Cons!21067) (t!175148 l3!256)))))

(assert (= (and d!578280 (not res!842871)) b!1887813))

(assert (= (and b!1887813 res!842872) b!1887814))

(assert (= (and b!1887814 res!842874) b!1887815))

(assert (= (and b!1887814 (not res!842873)) b!1887816))

(declare-fun m!2319577 () Bool)

(assert (=> b!1887815 m!2319577))

(declare-fun m!2319579 () Bool)

(assert (=> b!1887816 m!2319579))

(assert (=> b!1887777 d!578280))

(declare-fun b!1887819 () Bool)

(declare-fun e!1204727 () Bool)

(assert (=> b!1887819 (= e!1204727 (subseq!415 (t!175148 (t!175148 l2!1298)) (t!175148 (t!175148 l3!256))))))

(declare-fun d!578282 () Bool)

(declare-fun res!842875 () Bool)

(declare-fun e!1204726 () Bool)

(assert (=> d!578282 (=> res!842875 e!1204726)))

(assert (=> d!578282 (= res!842875 ((_ is Nil!21067) (t!175148 l2!1298)))))

(assert (=> d!578282 (= (subseq!415 (t!175148 l2!1298) (t!175148 l3!256)) e!1204726)))

(declare-fun b!1887820 () Bool)

(declare-fun e!1204725 () Bool)

(assert (=> b!1887820 (= e!1204725 (subseq!415 (t!175148 l2!1298) (t!175148 (t!175148 l3!256))))))

(declare-fun b!1887818 () Bool)

(declare-fun e!1204728 () Bool)

(assert (=> b!1887818 (= e!1204728 e!1204725)))

(declare-fun res!842877 () Bool)

(assert (=> b!1887818 (=> res!842877 e!1204725)))

(assert (=> b!1887818 (= res!842877 e!1204727)))

(declare-fun res!842878 () Bool)

(assert (=> b!1887818 (=> (not res!842878) (not e!1204727))))

(assert (=> b!1887818 (= res!842878 (= (h!26468 (t!175148 l2!1298)) (h!26468 (t!175148 l3!256))))))

(declare-fun b!1887817 () Bool)

(assert (=> b!1887817 (= e!1204726 e!1204728)))

(declare-fun res!842876 () Bool)

(assert (=> b!1887817 (=> (not res!842876) (not e!1204728))))

(assert (=> b!1887817 (= res!842876 ((_ is Cons!21067) (t!175148 l3!256)))))

(assert (= (and d!578282 (not res!842875)) b!1887817))

(assert (= (and b!1887817 res!842876) b!1887818))

(assert (= (and b!1887818 res!842878) b!1887819))

(assert (= (and b!1887818 (not res!842877)) b!1887820))

(declare-fun m!2319585 () Bool)

(assert (=> b!1887819 m!2319585))

(assert (=> b!1887820 m!2319577))

(assert (=> b!1887778 d!578282))

(declare-fun b!1887833 () Bool)

(declare-fun e!1204739 () Bool)

(declare-fun tp!538245 () Bool)

(assert (=> b!1887833 (= e!1204739 (and tp_is_empty!8997 tp!538245))))

(assert (=> b!1887776 (= tp!538242 e!1204739)))

(assert (= (and b!1887776 ((_ is Cons!21067) (t!175148 l1!1329))) b!1887833))

(declare-fun b!1887834 () Bool)

(declare-fun e!1204740 () Bool)

(declare-fun tp!538246 () Bool)

(assert (=> b!1887834 (= e!1204740 (and tp_is_empty!8997 tp!538246))))

(assert (=> b!1887772 (= tp!538240 e!1204740)))

(assert (= (and b!1887772 ((_ is Cons!21067) (t!175148 l2!1298))) b!1887834))

(declare-fun b!1887835 () Bool)

(declare-fun e!1204741 () Bool)

(declare-fun tp!538247 () Bool)

(assert (=> b!1887835 (= e!1204741 (and tp_is_empty!8997 tp!538247))))

(assert (=> b!1887773 (= tp!538241 e!1204741)))

(assert (= (and b!1887773 ((_ is Cons!21067) (t!175148 l3!256))) b!1887835))

(check-sat (not b!1887820) (not b!1887833) (not b!1887799) (not b!1887807) (not b!1887835) (not b!1887808) (not b!1887815) (not b!1887803) (not b!1887834) (not b!1887800) tp_is_empty!8997 (not b!1887819) (not b!1887804) (not b!1887816))
(check-sat)
