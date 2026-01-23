; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188946 () Bool)

(assert start!188946)

(declare-fun b!1886781 () Bool)

(declare-fun e!1203982 () Bool)

(declare-datatypes ((B!1707 0))(
  ( (B!1708 (val!6139 Int)) )
))
(declare-datatypes ((List!21132 0))(
  ( (Nil!21050) (Cons!21050 (h!26451 B!1707) (t!175131 List!21132)) )
))
(declare-fun l1!1329 () List!21132)

(declare-fun l3!256 () List!21132)

(declare-fun subseq!400 (List!21132 List!21132) Bool)

(assert (=> b!1886781 (= e!1203982 (not (subseq!400 l1!1329 l3!256)))))

(assert (=> b!1886781 (subseq!400 (t!175131 l1!1329) (t!175131 l3!256))))

(declare-fun l2!1298 () List!21132)

(declare-datatypes ((Unit!35480 0))(
  ( (Unit!35481) )
))
(declare-fun lt!723603 () Unit!35480)

(declare-fun lemmaSubSeqTransitive!3 (List!21132 List!21132 List!21132) Unit!35480)

(assert (=> b!1886781 (= lt!723603 (lemmaSubSeqTransitive!3 (t!175131 l1!1329) (t!175131 l2!1298) (t!175131 l3!256)))))

(declare-fun res!842154 () Bool)

(assert (=> start!188946 (=> (not res!842154) (not e!1203982))))

(assert (=> start!188946 (= res!842154 (subseq!400 l1!1329 l2!1298))))

(assert (=> start!188946 e!1203982))

(declare-fun e!1203984 () Bool)

(assert (=> start!188946 e!1203984))

(declare-fun e!1203981 () Bool)

(assert (=> start!188946 e!1203981))

(declare-fun e!1203983 () Bool)

(assert (=> start!188946 e!1203983))

(declare-fun b!1886782 () Bool)

(declare-fun tp_is_empty!8963 () Bool)

(declare-fun tp!538018 () Bool)

(assert (=> b!1886782 (= e!1203981 (and tp_is_empty!8963 tp!538018))))

(declare-fun b!1886783 () Bool)

(declare-fun tp!538017 () Bool)

(assert (=> b!1886783 (= e!1203984 (and tp_is_empty!8963 tp!538017))))

(declare-fun b!1886784 () Bool)

(declare-fun res!842151 () Bool)

(assert (=> b!1886784 (=> (not res!842151) (not e!1203982))))

(assert (=> b!1886784 (= res!842151 (subseq!400 (t!175131 l2!1298) (t!175131 l3!256)))))

(declare-fun b!1886785 () Bool)

(declare-fun res!842149 () Bool)

(assert (=> b!1886785 (=> (not res!842149) (not e!1203982))))

(assert (=> b!1886785 (= res!842149 (subseq!400 (t!175131 l1!1329) (t!175131 l2!1298)))))

(declare-fun b!1886786 () Bool)

(declare-fun res!842150 () Bool)

(assert (=> b!1886786 (=> (not res!842150) (not e!1203982))))

(assert (=> b!1886786 (= res!842150 (and (or (not (is-Cons!21050 l1!1329)) (not (is-Cons!21050 l2!1298)) (not (is-Cons!21050 l3!256)) (= (h!26451 l2!1298) (h!26451 l3!256))) (is-Cons!21050 l1!1329) (is-Cons!21050 l2!1298) (is-Cons!21050 l3!256) (= (h!26451 l2!1298) (h!26451 l3!256))))))

(declare-fun b!1886787 () Bool)

(declare-fun res!842152 () Bool)

(assert (=> b!1886787 (=> (not res!842152) (not e!1203982))))

(assert (=> b!1886787 (= res!842152 (= (h!26451 l1!1329) (h!26451 l2!1298)))))

(declare-fun b!1886788 () Bool)

(declare-fun tp!538019 () Bool)

(assert (=> b!1886788 (= e!1203983 (and tp_is_empty!8963 tp!538019))))

(declare-fun b!1886789 () Bool)

(declare-fun res!842153 () Bool)

(assert (=> b!1886789 (=> (not res!842153) (not e!1203982))))

(assert (=> b!1886789 (= res!842153 (subseq!400 l2!1298 l3!256))))

(assert (= (and start!188946 res!842154) b!1886789))

(assert (= (and b!1886789 res!842153) b!1886786))

(assert (= (and b!1886786 res!842150) b!1886784))

(assert (= (and b!1886784 res!842151) b!1886787))

(assert (= (and b!1886787 res!842152) b!1886785))

(assert (= (and b!1886785 res!842149) b!1886781))

(assert (= (and start!188946 (is-Cons!21050 l1!1329)) b!1886783))

(assert (= (and start!188946 (is-Cons!21050 l2!1298)) b!1886782))

(assert (= (and start!188946 (is-Cons!21050 l3!256)) b!1886788))

(declare-fun m!2319111 () Bool)

(assert (=> b!1886789 m!2319111))

(declare-fun m!2319113 () Bool)

(assert (=> b!1886781 m!2319113))

(declare-fun m!2319115 () Bool)

(assert (=> b!1886781 m!2319115))

(declare-fun m!2319117 () Bool)

(assert (=> b!1886781 m!2319117))

(declare-fun m!2319119 () Bool)

(assert (=> start!188946 m!2319119))

(declare-fun m!2319121 () Bool)

(assert (=> b!1886785 m!2319121))

(declare-fun m!2319123 () Bool)

(assert (=> b!1886784 m!2319123))

(push 1)

(assert (not b!1886788))

(assert (not b!1886784))

(assert tp_is_empty!8963)

(assert (not b!1886789))

(assert (not start!188946))

(assert (not b!1886785))

(assert (not b!1886783))

(assert (not b!1886781))

(assert (not b!1886782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1886826 () Bool)

(declare-fun e!1204008 () Bool)

(declare-fun e!1204007 () Bool)

(assert (=> b!1886826 (= e!1204008 e!1204007)))

(declare-fun res!842183 () Bool)

(assert (=> b!1886826 (=> res!842183 e!1204007)))

(declare-fun e!1204006 () Bool)

(assert (=> b!1886826 (= res!842183 e!1204006)))

(declare-fun res!842181 () Bool)

(assert (=> b!1886826 (=> (not res!842181) (not e!1204006))))

(assert (=> b!1886826 (= res!842181 (= (h!26451 l2!1298) (h!26451 l3!256)))))

(declare-fun d!578064 () Bool)

(declare-fun res!842182 () Bool)

(declare-fun e!1204005 () Bool)

(assert (=> d!578064 (=> res!842182 e!1204005)))

(assert (=> d!578064 (= res!842182 (is-Nil!21050 l2!1298))))

(assert (=> d!578064 (= (subseq!400 l2!1298 l3!256) e!1204005)))

(declare-fun b!1886825 () Bool)

(assert (=> b!1886825 (= e!1204005 e!1204008)))

(declare-fun res!842184 () Bool)

(assert (=> b!1886825 (=> (not res!842184) (not e!1204008))))

(assert (=> b!1886825 (= res!842184 (is-Cons!21050 l3!256))))

(declare-fun b!1886828 () Bool)

(assert (=> b!1886828 (= e!1204007 (subseq!400 l2!1298 (t!175131 l3!256)))))

(declare-fun b!1886827 () Bool)

(assert (=> b!1886827 (= e!1204006 (subseq!400 (t!175131 l2!1298) (t!175131 l3!256)))))

(assert (= (and d!578064 (not res!842182)) b!1886825))

(assert (= (and b!1886825 res!842184) b!1886826))

(assert (= (and b!1886826 res!842181) b!1886827))

(assert (= (and b!1886826 (not res!842183)) b!1886828))

(declare-fun m!2319139 () Bool)

(assert (=> b!1886828 m!2319139))

(assert (=> b!1886827 m!2319123))

(assert (=> b!1886789 d!578064))

(declare-fun b!1886830 () Bool)

(declare-fun e!1204012 () Bool)

(declare-fun e!1204011 () Bool)

(assert (=> b!1886830 (= e!1204012 e!1204011)))

(declare-fun res!842187 () Bool)

(assert (=> b!1886830 (=> res!842187 e!1204011)))

(declare-fun e!1204010 () Bool)

(assert (=> b!1886830 (= res!842187 e!1204010)))

(declare-fun res!842185 () Bool)

(assert (=> b!1886830 (=> (not res!842185) (not e!1204010))))

(assert (=> b!1886830 (= res!842185 (= (h!26451 (t!175131 l2!1298)) (h!26451 (t!175131 l3!256))))))

(declare-fun d!578068 () Bool)

(declare-fun res!842186 () Bool)

(declare-fun e!1204009 () Bool)

(assert (=> d!578068 (=> res!842186 e!1204009)))

(assert (=> d!578068 (= res!842186 (is-Nil!21050 (t!175131 l2!1298)))))

(assert (=> d!578068 (= (subseq!400 (t!175131 l2!1298) (t!175131 l3!256)) e!1204009)))

(declare-fun b!1886829 () Bool)

(assert (=> b!1886829 (= e!1204009 e!1204012)))

(declare-fun res!842188 () Bool)

(assert (=> b!1886829 (=> (not res!842188) (not e!1204012))))

(assert (=> b!1886829 (= res!842188 (is-Cons!21050 (t!175131 l3!256)))))

(declare-fun b!1886832 () Bool)

(assert (=> b!1886832 (= e!1204011 (subseq!400 (t!175131 l2!1298) (t!175131 (t!175131 l3!256))))))

(declare-fun b!1886831 () Bool)

(assert (=> b!1886831 (= e!1204010 (subseq!400 (t!175131 (t!175131 l2!1298)) (t!175131 (t!175131 l3!256))))))

(assert (= (and d!578068 (not res!842186)) b!1886829))

(assert (= (and b!1886829 res!842188) b!1886830))

(assert (= (and b!1886830 res!842185) b!1886831))

(assert (= (and b!1886830 (not res!842187)) b!1886832))

(declare-fun m!2319141 () Bool)

(assert (=> b!1886832 m!2319141))

(declare-fun m!2319143 () Bool)

(assert (=> b!1886831 m!2319143))

(assert (=> b!1886784 d!578068))

(declare-fun b!1886834 () Bool)

(declare-fun e!1204016 () Bool)

(declare-fun e!1204015 () Bool)

(assert (=> b!1886834 (= e!1204016 e!1204015)))

(declare-fun res!842191 () Bool)

(assert (=> b!1886834 (=> res!842191 e!1204015)))

(declare-fun e!1204014 () Bool)

(assert (=> b!1886834 (= res!842191 e!1204014)))

(declare-fun res!842189 () Bool)

(assert (=> b!1886834 (=> (not res!842189) (not e!1204014))))

(assert (=> b!1886834 (= res!842189 (= (h!26451 l1!1329) (h!26451 l2!1298)))))

(declare-fun d!578070 () Bool)

(declare-fun res!842190 () Bool)

(declare-fun e!1204013 () Bool)

(assert (=> d!578070 (=> res!842190 e!1204013)))

(assert (=> d!578070 (= res!842190 (is-Nil!21050 l1!1329))))

(assert (=> d!578070 (= (subseq!400 l1!1329 l2!1298) e!1204013)))

(declare-fun b!1886833 () Bool)

(assert (=> b!1886833 (= e!1204013 e!1204016)))

(declare-fun res!842192 () Bool)

(assert (=> b!1886833 (=> (not res!842192) (not e!1204016))))

(assert (=> b!1886833 (= res!842192 (is-Cons!21050 l2!1298))))

(declare-fun b!1886836 () Bool)

(assert (=> b!1886836 (= e!1204015 (subseq!400 l1!1329 (t!175131 l2!1298)))))

(declare-fun b!1886835 () Bool)

(assert (=> b!1886835 (= e!1204014 (subseq!400 (t!175131 l1!1329) (t!175131 l2!1298)))))

(assert (= (and d!578070 (not res!842190)) b!1886833))

(assert (= (and b!1886833 res!842192) b!1886834))

(assert (= (and b!1886834 res!842189) b!1886835))

(assert (= (and b!1886834 (not res!842191)) b!1886836))

(declare-fun m!2319145 () Bool)

(assert (=> b!1886836 m!2319145))

(assert (=> b!1886835 m!2319121))

(assert (=> start!188946 d!578070))

(declare-fun b!1886838 () Bool)

(declare-fun e!1204020 () Bool)

(declare-fun e!1204019 () Bool)

(assert (=> b!1886838 (= e!1204020 e!1204019)))

(declare-fun res!842195 () Bool)

(assert (=> b!1886838 (=> res!842195 e!1204019)))

(declare-fun e!1204018 () Bool)

(assert (=> b!1886838 (= res!842195 e!1204018)))

(declare-fun res!842193 () Bool)

(assert (=> b!1886838 (=> (not res!842193) (not e!1204018))))

(assert (=> b!1886838 (= res!842193 (= (h!26451 l1!1329) (h!26451 l3!256)))))

(declare-fun d!578072 () Bool)

(declare-fun res!842194 () Bool)

(declare-fun e!1204017 () Bool)

(assert (=> d!578072 (=> res!842194 e!1204017)))

(assert (=> d!578072 (= res!842194 (is-Nil!21050 l1!1329))))

(assert (=> d!578072 (= (subseq!400 l1!1329 l3!256) e!1204017)))

(declare-fun b!1886837 () Bool)

(assert (=> b!1886837 (= e!1204017 e!1204020)))

(declare-fun res!842196 () Bool)

(assert (=> b!1886837 (=> (not res!842196) (not e!1204020))))

(assert (=> b!1886837 (= res!842196 (is-Cons!21050 l3!256))))

(declare-fun b!1886840 () Bool)

(assert (=> b!1886840 (= e!1204019 (subseq!400 l1!1329 (t!175131 l3!256)))))

(declare-fun b!1886839 () Bool)

(assert (=> b!1886839 (= e!1204018 (subseq!400 (t!175131 l1!1329) (t!175131 l3!256)))))

(assert (= (and d!578072 (not res!842194)) b!1886837))

(assert (= (and b!1886837 res!842196) b!1886838))

(assert (= (and b!1886838 res!842193) b!1886839))

(assert (= (and b!1886838 (not res!842195)) b!1886840))

(declare-fun m!2319147 () Bool)

(assert (=> b!1886840 m!2319147))

(assert (=> b!1886839 m!2319115))

(assert (=> b!1886781 d!578072))

(declare-fun b!1886842 () Bool)

(declare-fun e!1204024 () Bool)

(declare-fun e!1204023 () Bool)

(assert (=> b!1886842 (= e!1204024 e!1204023)))

(declare-fun res!842199 () Bool)

(assert (=> b!1886842 (=> res!842199 e!1204023)))

(declare-fun e!1204022 () Bool)

(assert (=> b!1886842 (= res!842199 e!1204022)))

(declare-fun res!842197 () Bool)

(assert (=> b!1886842 (=> (not res!842197) (not e!1204022))))

(assert (=> b!1886842 (= res!842197 (= (h!26451 (t!175131 l1!1329)) (h!26451 (t!175131 l3!256))))))

(declare-fun d!578074 () Bool)

(declare-fun res!842198 () Bool)

(declare-fun e!1204021 () Bool)

(assert (=> d!578074 (=> res!842198 e!1204021)))

(assert (=> d!578074 (= res!842198 (is-Nil!21050 (t!175131 l1!1329)))))

(assert (=> d!578074 (= (subseq!400 (t!175131 l1!1329) (t!175131 l3!256)) e!1204021)))

(declare-fun b!1886841 () Bool)

(assert (=> b!1886841 (= e!1204021 e!1204024)))

(declare-fun res!842200 () Bool)

(assert (=> b!1886841 (=> (not res!842200) (not e!1204024))))

(assert (=> b!1886841 (= res!842200 (is-Cons!21050 (t!175131 l3!256)))))

(declare-fun b!1886844 () Bool)

(assert (=> b!1886844 (= e!1204023 (subseq!400 (t!175131 l1!1329) (t!175131 (t!175131 l3!256))))))

(declare-fun b!1886843 () Bool)

(assert (=> b!1886843 (= e!1204022 (subseq!400 (t!175131 (t!175131 l1!1329)) (t!175131 (t!175131 l3!256))))))

(assert (= (and d!578074 (not res!842198)) b!1886841))

(assert (= (and b!1886841 res!842200) b!1886842))

(assert (= (and b!1886842 res!842197) b!1886843))

(assert (= (and b!1886842 (not res!842199)) b!1886844))

(declare-fun m!2319149 () Bool)

(assert (=> b!1886844 m!2319149))

(declare-fun m!2319151 () Bool)

(assert (=> b!1886843 m!2319151))

(assert (=> b!1886781 d!578074))

(declare-fun d!578076 () Bool)

(assert (=> d!578076 (subseq!400 (t!175131 l1!1329) (t!175131 l3!256))))

(declare-fun lt!723609 () Unit!35480)

(declare-fun choose!11809 (List!21132 List!21132 List!21132) Unit!35480)

(assert (=> d!578076 (= lt!723609 (choose!11809 (t!175131 l1!1329) (t!175131 l2!1298) (t!175131 l3!256)))))

(assert (=> d!578076 (subseq!400 (t!175131 l1!1329) (t!175131 l2!1298))))

(assert (=> d!578076 (= (lemmaSubSeqTransitive!3 (t!175131 l1!1329) (t!175131 l2!1298) (t!175131 l3!256)) lt!723609)))

(declare-fun bs!412977 () Bool)

(assert (= bs!412977 d!578076))

(assert (=> bs!412977 m!2319115))

(declare-fun m!2319153 () Bool)

(assert (=> bs!412977 m!2319153))

(assert (=> bs!412977 m!2319121))

(assert (=> b!1886781 d!578076))

(declare-fun b!1886846 () Bool)

(declare-fun e!1204028 () Bool)

(declare-fun e!1204027 () Bool)

(assert (=> b!1886846 (= e!1204028 e!1204027)))

(declare-fun res!842203 () Bool)

(assert (=> b!1886846 (=> res!842203 e!1204027)))

(declare-fun e!1204026 () Bool)

(assert (=> b!1886846 (= res!842203 e!1204026)))

(declare-fun res!842201 () Bool)

(assert (=> b!1886846 (=> (not res!842201) (not e!1204026))))

(assert (=> b!1886846 (= res!842201 (= (h!26451 (t!175131 l1!1329)) (h!26451 (t!175131 l2!1298))))))

(declare-fun d!578078 () Bool)

(declare-fun res!842202 () Bool)

(declare-fun e!1204025 () Bool)

(assert (=> d!578078 (=> res!842202 e!1204025)))

(assert (=> d!578078 (= res!842202 (is-Nil!21050 (t!175131 l1!1329)))))

(assert (=> d!578078 (= (subseq!400 (t!175131 l1!1329) (t!175131 l2!1298)) e!1204025)))

(declare-fun b!1886845 () Bool)

(assert (=> b!1886845 (= e!1204025 e!1204028)))

(declare-fun res!842204 () Bool)

(assert (=> b!1886845 (=> (not res!842204) (not e!1204028))))

(assert (=> b!1886845 (= res!842204 (is-Cons!21050 (t!175131 l2!1298)))))

(declare-fun b!1886848 () Bool)

(assert (=> b!1886848 (= e!1204027 (subseq!400 (t!175131 l1!1329) (t!175131 (t!175131 l2!1298))))))

(declare-fun b!1886847 () Bool)

(assert (=> b!1886847 (= e!1204026 (subseq!400 (t!175131 (t!175131 l1!1329)) (t!175131 (t!175131 l2!1298))))))

(assert (= (and d!578078 (not res!842202)) b!1886845))

(assert (= (and b!1886845 res!842204) b!1886846))

(assert (= (and b!1886846 res!842201) b!1886847))

(assert (= (and b!1886846 (not res!842203)) b!1886848))

(declare-fun m!2319155 () Bool)

(assert (=> b!1886848 m!2319155))

(declare-fun m!2319157 () Bool)

(assert (=> b!1886847 m!2319157))

(assert (=> b!1886785 d!578078))

(declare-fun b!1886855 () Bool)

(declare-fun e!1204033 () Bool)

(declare-fun tp!538031 () Bool)

(assert (=> b!1886855 (= e!1204033 (and tp_is_empty!8963 tp!538031))))

(assert (=> b!1886782 (= tp!538018 e!1204033)))

(assert (= (and b!1886782 (is-Cons!21050 (t!175131 l2!1298))) b!1886855))

(declare-fun b!1886856 () Bool)

(declare-fun e!1204036 () Bool)

(declare-fun tp!538032 () Bool)

(assert (=> b!1886856 (= e!1204036 (and tp_is_empty!8963 tp!538032))))

(assert (=> b!1886788 (= tp!538019 e!1204036)))

(assert (= (and b!1886788 (is-Cons!21050 (t!175131 l3!256))) b!1886856))

(declare-fun b!1886859 () Bool)

(declare-fun e!1204037 () Bool)

(declare-fun tp!538033 () Bool)

(assert (=> b!1886859 (= e!1204037 (and tp_is_empty!8963 tp!538033))))

(assert (=> b!1886783 (= tp!538017 e!1204037)))

(assert (= (and b!1886783 (is-Cons!21050 (t!175131 l1!1329))) b!1886859))

(push 1)

(assert (not b!1886836))

(assert (not b!1886828))

(assert (not b!1886859))

(assert (not b!1886839))

(assert (not b!1886831))

(assert (not b!1886855))

(assert (not b!1886840))

(assert tp_is_empty!8963)

(assert (not b!1886848))

(assert (not b!1886835))

(assert (not b!1886832))

(assert (not d!578076))

(assert (not b!1886827))

(assert (not b!1886843))

(assert (not b!1886844))

(assert (not b!1886847))

(assert (not b!1886856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

