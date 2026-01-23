; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189036 () Bool)

(assert start!189036)

(declare-fun b!1887901 () Bool)

(declare-fun res!842933 () Bool)

(declare-fun e!1204776 () Bool)

(assert (=> b!1887901 (=> (not res!842933) (not e!1204776))))

(declare-datatypes ((B!1745 0))(
  ( (B!1746 (val!6158 Int)) )
))
(declare-datatypes ((List!21151 0))(
  ( (Nil!21069) (Cons!21069 (h!26470 B!1745) (t!175150 List!21151)) )
))
(declare-fun l2!1298 () List!21151)

(declare-fun l3!256 () List!21151)

(declare-fun subseq!417 (List!21151 List!21151) Bool)

(assert (=> b!1887901 (= res!842933 (subseq!417 l2!1298 (t!175150 l3!256)))))

(declare-fun b!1887902 () Bool)

(declare-fun res!842931 () Bool)

(assert (=> b!1887902 (=> (not res!842931) (not e!1204776))))

(assert (=> b!1887902 (= res!842931 (subseq!417 l2!1298 l3!256))))

(declare-fun b!1887903 () Bool)

(declare-fun res!842932 () Bool)

(assert (=> b!1887903 (=> (not res!842932) (not e!1204776))))

(declare-fun l1!1329 () List!21151)

(get-info :version)

(assert (=> b!1887903 (= res!842932 (and (or (not ((_ is Cons!21069) l1!1329)) (not ((_ is Cons!21069) l2!1298)) (not ((_ is Cons!21069) l3!256)) (= (h!26470 l2!1298) (h!26470 l3!256))) ((_ is Cons!21069) l1!1329) ((_ is Cons!21069) l2!1298) ((_ is Cons!21069) l3!256) (= (h!26470 l2!1298) (h!26470 l3!256))))))

(declare-fun b!1887905 () Bool)

(declare-fun e!1204775 () Bool)

(declare-fun tp_is_empty!9001 () Bool)

(declare-fun tp!538270 () Bool)

(assert (=> b!1887905 (= e!1204775 (and tp_is_empty!9001 tp!538270))))

(declare-fun b!1887906 () Bool)

(declare-fun e!1204777 () Bool)

(declare-fun tp!538268 () Bool)

(assert (=> b!1887906 (= e!1204777 (and tp_is_empty!9001 tp!538268))))

(declare-fun b!1887907 () Bool)

(declare-fun lt!723751 () Int)

(declare-fun lt!723752 () Int)

(declare-fun lt!723754 () Int)

(declare-fun lt!723750 () Int)

(assert (=> b!1887907 (= e!1204776 (and (>= lt!723754 lt!723751) (or (not (= lt!723754 lt!723751)) (>= lt!723750 lt!723752))))))

(declare-fun size!16719 (List!21151) Int)

(assert (=> b!1887907 (= lt!723752 (size!16719 l3!256))))

(assert (=> b!1887907 (= lt!723751 (size!16719 l1!1329))))

(assert (=> b!1887907 (= lt!723750 (size!16719 (t!175150 l3!256)))))

(declare-fun lt!723753 () Int)

(assert (=> b!1887907 (= lt!723753 (size!16719 l2!1298))))

(assert (=> b!1887907 (= lt!723754 (size!16719 (t!175150 l1!1329)))))

(declare-fun b!1887908 () Bool)

(declare-fun res!842936 () Bool)

(assert (=> b!1887908 (=> (not res!842936) (not e!1204776))))

(assert (=> b!1887908 (= res!842936 (subseq!417 (t!175150 l1!1329) l2!1298))))

(declare-fun b!1887904 () Bool)

(declare-fun res!842934 () Bool)

(assert (=> b!1887904 (=> (not res!842934) (not e!1204776))))

(assert (=> b!1887904 (= res!842934 (= (h!26470 l1!1329) (h!26470 l2!1298)))))

(declare-fun res!842935 () Bool)

(assert (=> start!189036 (=> (not res!842935) (not e!1204776))))

(assert (=> start!189036 (= res!842935 (subseq!417 l1!1329 l2!1298))))

(assert (=> start!189036 e!1204776))

(assert (=> start!189036 e!1204777))

(declare-fun e!1204778 () Bool)

(assert (=> start!189036 e!1204778))

(assert (=> start!189036 e!1204775))

(declare-fun b!1887909 () Bool)

(declare-fun res!842930 () Bool)

(assert (=> b!1887909 (=> (not res!842930) (not e!1204776))))

(assert (=> b!1887909 (= res!842930 (not (subseq!417 (t!175150 l2!1298) (t!175150 l3!256))))))

(declare-fun b!1887910 () Bool)

(declare-fun tp!538269 () Bool)

(assert (=> b!1887910 (= e!1204778 (and tp_is_empty!9001 tp!538269))))

(assert (= (and start!189036 res!842935) b!1887902))

(assert (= (and b!1887902 res!842931) b!1887903))

(assert (= (and b!1887903 res!842932) b!1887909))

(assert (= (and b!1887909 res!842930) b!1887904))

(assert (= (and b!1887904 res!842934) b!1887908))

(assert (= (and b!1887908 res!842936) b!1887901))

(assert (= (and b!1887901 res!842933) b!1887907))

(assert (= (and start!189036 ((_ is Cons!21069) l1!1329)) b!1887906))

(assert (= (and start!189036 ((_ is Cons!21069) l2!1298)) b!1887910))

(assert (= (and start!189036 ((_ is Cons!21069) l3!256)) b!1887905))

(declare-fun m!2319615 () Bool)

(assert (=> b!1887901 m!2319615))

(declare-fun m!2319617 () Bool)

(assert (=> b!1887909 m!2319617))

(declare-fun m!2319619 () Bool)

(assert (=> start!189036 m!2319619))

(declare-fun m!2319621 () Bool)

(assert (=> b!1887908 m!2319621))

(declare-fun m!2319623 () Bool)

(assert (=> b!1887902 m!2319623))

(declare-fun m!2319625 () Bool)

(assert (=> b!1887907 m!2319625))

(declare-fun m!2319627 () Bool)

(assert (=> b!1887907 m!2319627))

(declare-fun m!2319629 () Bool)

(assert (=> b!1887907 m!2319629))

(declare-fun m!2319631 () Bool)

(assert (=> b!1887907 m!2319631))

(declare-fun m!2319633 () Bool)

(assert (=> b!1887907 m!2319633))

(check-sat tp_is_empty!9001 (not start!189036) (not b!1887907) (not b!1887902) (not b!1887908) (not b!1887901) (not b!1887905) (not b!1887906) (not b!1887910) (not b!1887909))
(check-sat)
(get-model)

(declare-fun d!578293 () Bool)

(declare-fun res!842962 () Bool)

(declare-fun e!1204805 () Bool)

(assert (=> d!578293 (=> res!842962 e!1204805)))

(assert (=> d!578293 (= res!842962 ((_ is Nil!21069) l1!1329))))

(assert (=> d!578293 (= (subseq!417 l1!1329 l2!1298) e!1204805)))

(declare-fun b!1887936 () Bool)

(declare-fun e!1204806 () Bool)

(declare-fun e!1204803 () Bool)

(assert (=> b!1887936 (= e!1204806 e!1204803)))

(declare-fun res!842961 () Bool)

(assert (=> b!1887936 (=> res!842961 e!1204803)))

(declare-fun e!1204804 () Bool)

(assert (=> b!1887936 (= res!842961 e!1204804)))

(declare-fun res!842963 () Bool)

(assert (=> b!1887936 (=> (not res!842963) (not e!1204804))))

(assert (=> b!1887936 (= res!842963 (= (h!26470 l1!1329) (h!26470 l2!1298)))))

(declare-fun b!1887937 () Bool)

(assert (=> b!1887937 (= e!1204804 (subseq!417 (t!175150 l1!1329) (t!175150 l2!1298)))))

(declare-fun b!1887935 () Bool)

(assert (=> b!1887935 (= e!1204805 e!1204806)))

(declare-fun res!842964 () Bool)

(assert (=> b!1887935 (=> (not res!842964) (not e!1204806))))

(assert (=> b!1887935 (= res!842964 ((_ is Cons!21069) l2!1298))))

(declare-fun b!1887938 () Bool)

(assert (=> b!1887938 (= e!1204803 (subseq!417 l1!1329 (t!175150 l2!1298)))))

(assert (= (and d!578293 (not res!842962)) b!1887935))

(assert (= (and b!1887935 res!842964) b!1887936))

(assert (= (and b!1887936 res!842963) b!1887937))

(assert (= (and b!1887936 (not res!842961)) b!1887938))

(declare-fun m!2319639 () Bool)

(assert (=> b!1887937 m!2319639))

(declare-fun m!2319645 () Bool)

(assert (=> b!1887938 m!2319645))

(assert (=> start!189036 d!578293))

(declare-fun d!578303 () Bool)

(declare-fun res!842974 () Bool)

(declare-fun e!1204817 () Bool)

(assert (=> d!578303 (=> res!842974 e!1204817)))

(assert (=> d!578303 (= res!842974 ((_ is Nil!21069) l2!1298))))

(assert (=> d!578303 (= (subseq!417 l2!1298 (t!175150 l3!256)) e!1204817)))

(declare-fun b!1887948 () Bool)

(declare-fun e!1204818 () Bool)

(declare-fun e!1204815 () Bool)

(assert (=> b!1887948 (= e!1204818 e!1204815)))

(declare-fun res!842973 () Bool)

(assert (=> b!1887948 (=> res!842973 e!1204815)))

(declare-fun e!1204816 () Bool)

(assert (=> b!1887948 (= res!842973 e!1204816)))

(declare-fun res!842975 () Bool)

(assert (=> b!1887948 (=> (not res!842975) (not e!1204816))))

(assert (=> b!1887948 (= res!842975 (= (h!26470 l2!1298) (h!26470 (t!175150 l3!256))))))

(declare-fun b!1887949 () Bool)

(assert (=> b!1887949 (= e!1204816 (subseq!417 (t!175150 l2!1298) (t!175150 (t!175150 l3!256))))))

(declare-fun b!1887947 () Bool)

(assert (=> b!1887947 (= e!1204817 e!1204818)))

(declare-fun res!842976 () Bool)

(assert (=> b!1887947 (=> (not res!842976) (not e!1204818))))

(assert (=> b!1887947 (= res!842976 ((_ is Cons!21069) (t!175150 l3!256)))))

(declare-fun b!1887950 () Bool)

(assert (=> b!1887950 (= e!1204815 (subseq!417 l2!1298 (t!175150 (t!175150 l3!256))))))

(assert (= (and d!578303 (not res!842974)) b!1887947))

(assert (= (and b!1887947 res!842976) b!1887948))

(assert (= (and b!1887948 res!842975) b!1887949))

(assert (= (and b!1887948 (not res!842973)) b!1887950))

(declare-fun m!2319649 () Bool)

(assert (=> b!1887949 m!2319649))

(declare-fun m!2319651 () Bool)

(assert (=> b!1887950 m!2319651))

(assert (=> b!1887901 d!578303))

(declare-fun d!578307 () Bool)

(declare-fun lt!723760 () Int)

(assert (=> d!578307 (>= lt!723760 0)))

(declare-fun e!1204828 () Int)

(assert (=> d!578307 (= lt!723760 e!1204828)))

(declare-fun c!308162 () Bool)

(assert (=> d!578307 (= c!308162 ((_ is Nil!21069) l1!1329))))

(assert (=> d!578307 (= (size!16719 l1!1329) lt!723760)))

(declare-fun b!1887965 () Bool)

(assert (=> b!1887965 (= e!1204828 0)))

(declare-fun b!1887966 () Bool)

(assert (=> b!1887966 (= e!1204828 (+ 1 (size!16719 (t!175150 l1!1329))))))

(assert (= (and d!578307 c!308162) b!1887965))

(assert (= (and d!578307 (not c!308162)) b!1887966))

(assert (=> b!1887966 m!2319633))

(assert (=> b!1887907 d!578307))

(declare-fun d!578315 () Bool)

(declare-fun lt!723763 () Int)

(assert (=> d!578315 (>= lt!723763 0)))

(declare-fun e!1204831 () Int)

(assert (=> d!578315 (= lt!723763 e!1204831)))

(declare-fun c!308165 () Bool)

(assert (=> d!578315 (= c!308165 ((_ is Nil!21069) l2!1298))))

(assert (=> d!578315 (= (size!16719 l2!1298) lt!723763)))

(declare-fun b!1887971 () Bool)

(assert (=> b!1887971 (= e!1204831 0)))

(declare-fun b!1887972 () Bool)

(assert (=> b!1887972 (= e!1204831 (+ 1 (size!16719 (t!175150 l2!1298))))))

(assert (= (and d!578315 c!308165) b!1887971))

(assert (= (and d!578315 (not c!308165)) b!1887972))

(declare-fun m!2319659 () Bool)

(assert (=> b!1887972 m!2319659))

(assert (=> b!1887907 d!578315))

(declare-fun d!578319 () Bool)

(declare-fun lt!723765 () Int)

(assert (=> d!578319 (>= lt!723765 0)))

(declare-fun e!1204833 () Int)

(assert (=> d!578319 (= lt!723765 e!1204833)))

(declare-fun c!308167 () Bool)

(assert (=> d!578319 (= c!308167 ((_ is Nil!21069) (t!175150 l1!1329)))))

(assert (=> d!578319 (= (size!16719 (t!175150 l1!1329)) lt!723765)))

(declare-fun b!1887975 () Bool)

(assert (=> b!1887975 (= e!1204833 0)))

(declare-fun b!1887976 () Bool)

(assert (=> b!1887976 (= e!1204833 (+ 1 (size!16719 (t!175150 (t!175150 l1!1329)))))))

(assert (= (and d!578319 c!308167) b!1887975))

(assert (= (and d!578319 (not c!308167)) b!1887976))

(declare-fun m!2319663 () Bool)

(assert (=> b!1887976 m!2319663))

(assert (=> b!1887907 d!578319))

(declare-fun d!578323 () Bool)

(declare-fun lt!723767 () Int)

(assert (=> d!578323 (>= lt!723767 0)))

(declare-fun e!1204835 () Int)

(assert (=> d!578323 (= lt!723767 e!1204835)))

(declare-fun c!308169 () Bool)

(assert (=> d!578323 (= c!308169 ((_ is Nil!21069) l3!256))))

(assert (=> d!578323 (= (size!16719 l3!256) lt!723767)))

(declare-fun b!1887981 () Bool)

(assert (=> b!1887981 (= e!1204835 0)))

(declare-fun b!1887982 () Bool)

(assert (=> b!1887982 (= e!1204835 (+ 1 (size!16719 (t!175150 l3!256))))))

(assert (= (and d!578323 c!308169) b!1887981))

(assert (= (and d!578323 (not c!308169)) b!1887982))

(assert (=> b!1887982 m!2319631))

(assert (=> b!1887907 d!578323))

(declare-fun d!578325 () Bool)

(declare-fun lt!723768 () Int)

(assert (=> d!578325 (>= lt!723768 0)))

(declare-fun e!1204838 () Int)

(assert (=> d!578325 (= lt!723768 e!1204838)))

(declare-fun c!308170 () Bool)

(assert (=> d!578325 (= c!308170 ((_ is Nil!21069) (t!175150 l3!256)))))

(assert (=> d!578325 (= (size!16719 (t!175150 l3!256)) lt!723768)))

(declare-fun b!1887985 () Bool)

(assert (=> b!1887985 (= e!1204838 0)))

(declare-fun b!1887986 () Bool)

(assert (=> b!1887986 (= e!1204838 (+ 1 (size!16719 (t!175150 (t!175150 l3!256)))))))

(assert (= (and d!578325 c!308170) b!1887985))

(assert (= (and d!578325 (not c!308170)) b!1887986))

(declare-fun m!2319665 () Bool)

(assert (=> b!1887986 m!2319665))

(assert (=> b!1887907 d!578325))

(declare-fun d!578327 () Bool)

(declare-fun res!842982 () Bool)

(declare-fun e!1204842 () Bool)

(assert (=> d!578327 (=> res!842982 e!1204842)))

(assert (=> d!578327 (= res!842982 ((_ is Nil!21069) l2!1298))))

(assert (=> d!578327 (= (subseq!417 l2!1298 l3!256) e!1204842)))

(declare-fun b!1887989 () Bool)

(declare-fun e!1204843 () Bool)

(declare-fun e!1204840 () Bool)

(assert (=> b!1887989 (= e!1204843 e!1204840)))

(declare-fun res!842981 () Bool)

(assert (=> b!1887989 (=> res!842981 e!1204840)))

(declare-fun e!1204841 () Bool)

(assert (=> b!1887989 (= res!842981 e!1204841)))

(declare-fun res!842983 () Bool)

(assert (=> b!1887989 (=> (not res!842983) (not e!1204841))))

(assert (=> b!1887989 (= res!842983 (= (h!26470 l2!1298) (h!26470 l3!256)))))

(declare-fun b!1887990 () Bool)

(assert (=> b!1887990 (= e!1204841 (subseq!417 (t!175150 l2!1298) (t!175150 l3!256)))))

(declare-fun b!1887988 () Bool)

(assert (=> b!1887988 (= e!1204842 e!1204843)))

(declare-fun res!842984 () Bool)

(assert (=> b!1887988 (=> (not res!842984) (not e!1204843))))

(assert (=> b!1887988 (= res!842984 ((_ is Cons!21069) l3!256))))

(declare-fun b!1887991 () Bool)

(assert (=> b!1887991 (= e!1204840 (subseq!417 l2!1298 (t!175150 l3!256)))))

(assert (= (and d!578327 (not res!842982)) b!1887988))

(assert (= (and b!1887988 res!842984) b!1887989))

(assert (= (and b!1887989 res!842983) b!1887990))

(assert (= (and b!1887989 (not res!842981)) b!1887991))

(assert (=> b!1887990 m!2319617))

(assert (=> b!1887991 m!2319615))

(assert (=> b!1887902 d!578327))

(declare-fun d!578329 () Bool)

(declare-fun res!842986 () Bool)

(declare-fun e!1204848 () Bool)

(assert (=> d!578329 (=> res!842986 e!1204848)))

(assert (=> d!578329 (= res!842986 ((_ is Nil!21069) (t!175150 l1!1329)))))

(assert (=> d!578329 (= (subseq!417 (t!175150 l1!1329) l2!1298) e!1204848)))

(declare-fun b!1887995 () Bool)

(declare-fun e!1204849 () Bool)

(declare-fun e!1204846 () Bool)

(assert (=> b!1887995 (= e!1204849 e!1204846)))

(declare-fun res!842985 () Bool)

(assert (=> b!1887995 (=> res!842985 e!1204846)))

(declare-fun e!1204847 () Bool)

(assert (=> b!1887995 (= res!842985 e!1204847)))

(declare-fun res!842987 () Bool)

(assert (=> b!1887995 (=> (not res!842987) (not e!1204847))))

(assert (=> b!1887995 (= res!842987 (= (h!26470 (t!175150 l1!1329)) (h!26470 l2!1298)))))

(declare-fun b!1887996 () Bool)

(assert (=> b!1887996 (= e!1204847 (subseq!417 (t!175150 (t!175150 l1!1329)) (t!175150 l2!1298)))))

(declare-fun b!1887994 () Bool)

(assert (=> b!1887994 (= e!1204848 e!1204849)))

(declare-fun res!842988 () Bool)

(assert (=> b!1887994 (=> (not res!842988) (not e!1204849))))

(assert (=> b!1887994 (= res!842988 ((_ is Cons!21069) l2!1298))))

(declare-fun b!1887997 () Bool)

(assert (=> b!1887997 (= e!1204846 (subseq!417 (t!175150 l1!1329) (t!175150 l2!1298)))))

(assert (= (and d!578329 (not res!842986)) b!1887994))

(assert (= (and b!1887994 res!842988) b!1887995))

(assert (= (and b!1887995 res!842987) b!1887996))

(assert (= (and b!1887995 (not res!842985)) b!1887997))

(declare-fun m!2319667 () Bool)

(assert (=> b!1887996 m!2319667))

(assert (=> b!1887997 m!2319639))

(assert (=> b!1887908 d!578329))

(declare-fun d!578331 () Bool)

(declare-fun res!842990 () Bool)

(declare-fun e!1204852 () Bool)

(assert (=> d!578331 (=> res!842990 e!1204852)))

(assert (=> d!578331 (= res!842990 ((_ is Nil!21069) (t!175150 l2!1298)))))

(assert (=> d!578331 (= (subseq!417 (t!175150 l2!1298) (t!175150 l3!256)) e!1204852)))

(declare-fun b!1887999 () Bool)

(declare-fun e!1204853 () Bool)

(declare-fun e!1204850 () Bool)

(assert (=> b!1887999 (= e!1204853 e!1204850)))

(declare-fun res!842989 () Bool)

(assert (=> b!1887999 (=> res!842989 e!1204850)))

(declare-fun e!1204851 () Bool)

(assert (=> b!1887999 (= res!842989 e!1204851)))

(declare-fun res!842991 () Bool)

(assert (=> b!1887999 (=> (not res!842991) (not e!1204851))))

(assert (=> b!1887999 (= res!842991 (= (h!26470 (t!175150 l2!1298)) (h!26470 (t!175150 l3!256))))))

(declare-fun b!1888000 () Bool)

(assert (=> b!1888000 (= e!1204851 (subseq!417 (t!175150 (t!175150 l2!1298)) (t!175150 (t!175150 l3!256))))))

(declare-fun b!1887998 () Bool)

(assert (=> b!1887998 (= e!1204852 e!1204853)))

(declare-fun res!842992 () Bool)

(assert (=> b!1887998 (=> (not res!842992) (not e!1204853))))

(assert (=> b!1887998 (= res!842992 ((_ is Cons!21069) (t!175150 l3!256)))))

(declare-fun b!1888001 () Bool)

(assert (=> b!1888001 (= e!1204850 (subseq!417 (t!175150 l2!1298) (t!175150 (t!175150 l3!256))))))

(assert (= (and d!578331 (not res!842990)) b!1887998))

(assert (= (and b!1887998 res!842992) b!1887999))

(assert (= (and b!1887999 res!842991) b!1888000))

(assert (= (and b!1887999 (not res!842989)) b!1888001))

(declare-fun m!2319669 () Bool)

(assert (=> b!1888000 m!2319669))

(assert (=> b!1888001 m!2319649))

(assert (=> b!1887909 d!578331))

(declare-fun b!1888006 () Bool)

(declare-fun e!1204856 () Bool)

(declare-fun tp!538278 () Bool)

(assert (=> b!1888006 (= e!1204856 (and tp_is_empty!9001 tp!538278))))

(assert (=> b!1887910 (= tp!538269 e!1204856)))

(assert (= (and b!1887910 ((_ is Cons!21069) (t!175150 l2!1298))) b!1888006))

(declare-fun b!1888007 () Bool)

(declare-fun e!1204857 () Bool)

(declare-fun tp!538279 () Bool)

(assert (=> b!1888007 (= e!1204857 (and tp_is_empty!9001 tp!538279))))

(assert (=> b!1887905 (= tp!538270 e!1204857)))

(assert (= (and b!1887905 ((_ is Cons!21069) (t!175150 l3!256))) b!1888007))

(declare-fun b!1888008 () Bool)

(declare-fun e!1204858 () Bool)

(declare-fun tp!538280 () Bool)

(assert (=> b!1888008 (= e!1204858 (and tp_is_empty!9001 tp!538280))))

(assert (=> b!1887906 (= tp!538268 e!1204858)))

(assert (= (and b!1887906 ((_ is Cons!21069) (t!175150 l1!1329))) b!1888008))

(check-sat (not b!1887966) (not b!1887972) tp_is_empty!9001 (not b!1888000) (not b!1887986) (not b!1887976) (not b!1888001) (not b!1888006) (not b!1887991) (not b!1887996) (not b!1887982) (not b!1887990) (not b!1887997) (not b!1887950) (not b!1887949) (not b!1887937) (not b!1887938) (not b!1888007) (not b!1888008))
(check-sat)
