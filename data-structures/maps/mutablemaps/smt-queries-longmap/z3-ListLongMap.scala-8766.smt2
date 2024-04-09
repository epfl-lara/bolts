; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106518 () Bool)

(assert start!106518)

(declare-fun b!1265739 () Bool)

(declare-fun res!842845 () Bool)

(declare-fun e!720894 () Bool)

(assert (=> b!1265739 (=> (not res!842845) (not e!720894))))

(declare-datatypes ((B!1990 0))(
  ( (B!1991 (val!16330 Int)) )
))
(declare-datatypes ((tuple2!21328 0))(
  ( (tuple2!21329 (_1!10674 (_ BitVec 64)) (_2!10674 B!1990)) )
))
(declare-datatypes ((List!28497 0))(
  ( (Nil!28494) (Cons!28493 (h!29702 tuple2!21328) (t!42025 List!28497)) )
))
(declare-fun l!706 () List!28497)

(declare-fun isStrictlySorted!793 (List!28497) Bool)

(assert (=> b!1265739 (= res!842845 (isStrictlySorted!793 (t!42025 l!706)))))

(declare-fun b!1265740 () Bool)

(declare-fun ListPrimitiveSize!155 (List!28497) Int)

(assert (=> b!1265740 (= e!720894 (>= (ListPrimitiveSize!155 (t!42025 l!706)) (ListPrimitiveSize!155 l!706)))))

(declare-fun b!1265741 () Bool)

(declare-fun res!842848 () Bool)

(assert (=> b!1265741 (=> (not res!842848) (not e!720894))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!654 (List!28497 (_ BitVec 64)) Bool)

(assert (=> b!1265741 (= res!842848 (not (containsKey!654 l!706 key1!31)))))

(declare-fun res!842844 () Bool)

(assert (=> start!106518 (=> (not res!842844) (not e!720894))))

(assert (=> start!106518 (= res!842844 (isStrictlySorted!793 l!706))))

(assert (=> start!106518 e!720894))

(declare-fun e!720895 () Bool)

(assert (=> start!106518 e!720895))

(assert (=> start!106518 true))

(declare-fun b!1265742 () Bool)

(declare-fun res!842846 () Bool)

(assert (=> b!1265742 (=> (not res!842846) (not e!720894))))

(get-info :version)

(assert (=> b!1265742 (= res!842846 ((_ is Cons!28493) l!706))))

(declare-fun b!1265743 () Bool)

(declare-fun res!842847 () Bool)

(assert (=> b!1265743 (=> (not res!842847) (not e!720894))))

(assert (=> b!1265743 (= res!842847 (not (containsKey!654 (t!42025 l!706) key1!31)))))

(declare-fun b!1265744 () Bool)

(declare-fun tp_is_empty!32523 () Bool)

(declare-fun tp!96396 () Bool)

(assert (=> b!1265744 (= e!720895 (and tp_is_empty!32523 tp!96396))))

(assert (= (and start!106518 res!842844) b!1265741))

(assert (= (and b!1265741 res!842848) b!1265742))

(assert (= (and b!1265742 res!842846) b!1265739))

(assert (= (and b!1265739 res!842845) b!1265743))

(assert (= (and b!1265743 res!842847) b!1265740))

(assert (= (and start!106518 ((_ is Cons!28493) l!706)) b!1265744))

(declare-fun m!1165707 () Bool)

(assert (=> b!1265739 m!1165707))

(declare-fun m!1165709 () Bool)

(assert (=> b!1265741 m!1165709))

(declare-fun m!1165711 () Bool)

(assert (=> b!1265743 m!1165711))

(declare-fun m!1165713 () Bool)

(assert (=> start!106518 m!1165713))

(declare-fun m!1165715 () Bool)

(assert (=> b!1265740 m!1165715))

(declare-fun m!1165717 () Bool)

(assert (=> b!1265740 m!1165717))

(check-sat (not b!1265744) (not b!1265743) (not b!1265739) (not start!106518) tp_is_empty!32523 (not b!1265740) (not b!1265741))
(check-sat)
(get-model)

(declare-fun d!138911 () Bool)

(declare-fun lt!573998 () Int)

(assert (=> d!138911 (>= lt!573998 0)))

(declare-fun e!720908 () Int)

(assert (=> d!138911 (= lt!573998 e!720908)))

(declare-fun c!123274 () Bool)

(assert (=> d!138911 (= c!123274 ((_ is Nil!28494) (t!42025 l!706)))))

(assert (=> d!138911 (= (ListPrimitiveSize!155 (t!42025 l!706)) lt!573998)))

(declare-fun b!1265771 () Bool)

(assert (=> b!1265771 (= e!720908 0)))

(declare-fun b!1265772 () Bool)

(assert (=> b!1265772 (= e!720908 (+ 1 (ListPrimitiveSize!155 (t!42025 (t!42025 l!706)))))))

(assert (= (and d!138911 c!123274) b!1265771))

(assert (= (and d!138911 (not c!123274)) b!1265772))

(declare-fun m!1165731 () Bool)

(assert (=> b!1265772 m!1165731))

(assert (=> b!1265740 d!138911))

(declare-fun d!138917 () Bool)

(declare-fun lt!573999 () Int)

(assert (=> d!138917 (>= lt!573999 0)))

(declare-fun e!720911 () Int)

(assert (=> d!138917 (= lt!573999 e!720911)))

(declare-fun c!123275 () Bool)

(assert (=> d!138917 (= c!123275 ((_ is Nil!28494) l!706))))

(assert (=> d!138917 (= (ListPrimitiveSize!155 l!706) lt!573999)))

(declare-fun b!1265775 () Bool)

(assert (=> b!1265775 (= e!720911 0)))

(declare-fun b!1265776 () Bool)

(assert (=> b!1265776 (= e!720911 (+ 1 (ListPrimitiveSize!155 (t!42025 l!706))))))

(assert (= (and d!138917 c!123275) b!1265775))

(assert (= (and d!138917 (not c!123275)) b!1265776))

(assert (=> b!1265776 m!1165715))

(assert (=> b!1265740 d!138917))

(declare-fun d!138921 () Bool)

(declare-fun res!842892 () Bool)

(declare-fun e!720936 () Bool)

(assert (=> d!138921 (=> res!842892 e!720936)))

(assert (=> d!138921 (= res!842892 (and ((_ is Cons!28493) l!706) (= (_1!10674 (h!29702 l!706)) key1!31)))))

(assert (=> d!138921 (= (containsKey!654 l!706 key1!31) e!720936)))

(declare-fun b!1265803 () Bool)

(declare-fun e!720937 () Bool)

(assert (=> b!1265803 (= e!720936 e!720937)))

(declare-fun res!842893 () Bool)

(assert (=> b!1265803 (=> (not res!842893) (not e!720937))))

(assert (=> b!1265803 (= res!842893 (and (or (not ((_ is Cons!28493) l!706)) (bvsle (_1!10674 (h!29702 l!706)) key1!31)) ((_ is Cons!28493) l!706) (bvslt (_1!10674 (h!29702 l!706)) key1!31)))))

(declare-fun b!1265804 () Bool)

(assert (=> b!1265804 (= e!720937 (containsKey!654 (t!42025 l!706) key1!31))))

(assert (= (and d!138921 (not res!842892)) b!1265803))

(assert (= (and b!1265803 res!842893) b!1265804))

(assert (=> b!1265804 m!1165711))

(assert (=> b!1265741 d!138921))

(declare-fun d!138933 () Bool)

(declare-fun res!842900 () Bool)

(declare-fun e!720953 () Bool)

(assert (=> d!138933 (=> res!842900 e!720953)))

(assert (=> d!138933 (= res!842900 (or ((_ is Nil!28494) l!706) ((_ is Nil!28494) (t!42025 l!706))))))

(assert (=> d!138933 (= (isStrictlySorted!793 l!706) e!720953)))

(declare-fun b!1265826 () Bool)

(declare-fun e!720954 () Bool)

(assert (=> b!1265826 (= e!720953 e!720954)))

(declare-fun res!842901 () Bool)

(assert (=> b!1265826 (=> (not res!842901) (not e!720954))))

(assert (=> b!1265826 (= res!842901 (bvslt (_1!10674 (h!29702 l!706)) (_1!10674 (h!29702 (t!42025 l!706)))))))

(declare-fun b!1265827 () Bool)

(assert (=> b!1265827 (= e!720954 (isStrictlySorted!793 (t!42025 l!706)))))

(assert (= (and d!138933 (not res!842900)) b!1265826))

(assert (= (and b!1265826 res!842901) b!1265827))

(assert (=> b!1265827 m!1165707))

(assert (=> start!106518 d!138933))

(declare-fun d!138941 () Bool)

(declare-fun res!842904 () Bool)

(declare-fun e!720957 () Bool)

(assert (=> d!138941 (=> res!842904 e!720957)))

(assert (=> d!138941 (= res!842904 (and ((_ is Cons!28493) (t!42025 l!706)) (= (_1!10674 (h!29702 (t!42025 l!706))) key1!31)))))

(assert (=> d!138941 (= (containsKey!654 (t!42025 l!706) key1!31) e!720957)))

(declare-fun b!1265832 () Bool)

(declare-fun e!720958 () Bool)

(assert (=> b!1265832 (= e!720957 e!720958)))

(declare-fun res!842905 () Bool)

(assert (=> b!1265832 (=> (not res!842905) (not e!720958))))

(assert (=> b!1265832 (= res!842905 (and (or (not ((_ is Cons!28493) (t!42025 l!706))) (bvsle (_1!10674 (h!29702 (t!42025 l!706))) key1!31)) ((_ is Cons!28493) (t!42025 l!706)) (bvslt (_1!10674 (h!29702 (t!42025 l!706))) key1!31)))))

(declare-fun b!1265833 () Bool)

(assert (=> b!1265833 (= e!720958 (containsKey!654 (t!42025 (t!42025 l!706)) key1!31))))

(assert (= (and d!138941 (not res!842904)) b!1265832))

(assert (= (and b!1265832 res!842905) b!1265833))

(declare-fun m!1165743 () Bool)

(assert (=> b!1265833 m!1165743))

(assert (=> b!1265743 d!138941))

(declare-fun d!138943 () Bool)

(declare-fun res!842906 () Bool)

(declare-fun e!720959 () Bool)

(assert (=> d!138943 (=> res!842906 e!720959)))

(assert (=> d!138943 (= res!842906 (or ((_ is Nil!28494) (t!42025 l!706)) ((_ is Nil!28494) (t!42025 (t!42025 l!706)))))))

(assert (=> d!138943 (= (isStrictlySorted!793 (t!42025 l!706)) e!720959)))

(declare-fun b!1265834 () Bool)

(declare-fun e!720960 () Bool)

(assert (=> b!1265834 (= e!720959 e!720960)))

(declare-fun res!842907 () Bool)

(assert (=> b!1265834 (=> (not res!842907) (not e!720960))))

(assert (=> b!1265834 (= res!842907 (bvslt (_1!10674 (h!29702 (t!42025 l!706))) (_1!10674 (h!29702 (t!42025 (t!42025 l!706))))))))

(declare-fun b!1265835 () Bool)

(assert (=> b!1265835 (= e!720960 (isStrictlySorted!793 (t!42025 (t!42025 l!706))))))

(assert (= (and d!138943 (not res!842906)) b!1265834))

(assert (= (and b!1265834 res!842907) b!1265835))

(declare-fun m!1165745 () Bool)

(assert (=> b!1265835 m!1165745))

(assert (=> b!1265739 d!138943))

(declare-fun b!1265842 () Bool)

(declare-fun e!720965 () Bool)

(declare-fun tp!96405 () Bool)

(assert (=> b!1265842 (= e!720965 (and tp_is_empty!32523 tp!96405))))

(assert (=> b!1265744 (= tp!96396 e!720965)))

(assert (= (and b!1265744 ((_ is Cons!28493) (t!42025 l!706))) b!1265842))

(check-sat (not b!1265827) (not b!1265842) (not b!1265776) (not b!1265835) (not b!1265833) (not b!1265772) (not b!1265804) tp_is_empty!32523)
(check-sat)
