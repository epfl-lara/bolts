; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189048 () Bool)

(assert start!189048)

(declare-fun b!1888059 () Bool)

(declare-fun res!843028 () Bool)

(declare-fun e!1204881 () Bool)

(assert (=> b!1888059 (=> (not res!843028) (not e!1204881))))

(declare-datatypes ((B!1749 0))(
  ( (B!1750 (val!6160 Int)) )
))
(declare-datatypes ((List!21153 0))(
  ( (Nil!21071) (Cons!21071 (h!26472 B!1749) (t!175152 List!21153)) )
))
(declare-fun l2!1298 () List!21153)

(declare-fun l3!256 () List!21153)

(declare-fun subseq!419 (List!21153 List!21153) Bool)

(assert (=> b!1888059 (= res!843028 (subseq!419 l2!1298 l3!256))))

(declare-fun b!1888060 () Bool)

(declare-fun e!1204880 () Bool)

(declare-fun tp_is_empty!9005 () Bool)

(declare-fun tp!538297 () Bool)

(assert (=> b!1888060 (= e!1204880 (and tp_is_empty!9005 tp!538297))))

(declare-fun b!1888061 () Bool)

(declare-fun res!843031 () Bool)

(assert (=> b!1888061 (=> (not res!843031) (not e!1204881))))

(assert (=> b!1888061 (= res!843031 (not (subseq!419 (t!175152 l2!1298) (t!175152 l3!256))))))

(declare-fun res!843030 () Bool)

(assert (=> start!189048 (=> (not res!843030) (not e!1204881))))

(declare-fun l1!1329 () List!21153)

(assert (=> start!189048 (= res!843030 (subseq!419 l1!1329 l2!1298))))

(assert (=> start!189048 e!1204881))

(declare-fun e!1204879 () Bool)

(assert (=> start!189048 e!1204879))

(assert (=> start!189048 e!1204880))

(declare-fun e!1204882 () Bool)

(assert (=> start!189048 e!1204882))

(declare-fun b!1888062 () Bool)

(declare-fun res!843032 () Bool)

(assert (=> b!1888062 (=> (not res!843032) (not e!1204881))))

(assert (=> b!1888062 (= res!843032 (subseq!419 l2!1298 (t!175152 l3!256)))))

(declare-fun b!1888063 () Bool)

(assert (=> b!1888063 (= e!1204881 (not (subseq!419 l1!1329 l3!256)))))

(assert (=> b!1888063 (subseq!419 (t!175152 l1!1329) (t!175152 l3!256))))

(declare-datatypes ((Unit!35494 0))(
  ( (Unit!35495) )
))
(declare-fun lt!723774 () Unit!35494)

(declare-fun lemmaSubSeqTransitive!10 (List!21153 List!21153 List!21153) Unit!35494)

(assert (=> b!1888063 (= lt!723774 (lemmaSubSeqTransitive!10 (t!175152 l1!1329) l2!1298 (t!175152 l3!256)))))

(declare-fun b!1888064 () Bool)

(declare-fun res!843029 () Bool)

(assert (=> b!1888064 (=> (not res!843029) (not e!1204881))))

(get-info :version)

(assert (=> b!1888064 (= res!843029 (and (or (not ((_ is Cons!21071) l1!1329)) (not ((_ is Cons!21071) l2!1298)) (not ((_ is Cons!21071) l3!256)) (= (h!26472 l2!1298) (h!26472 l3!256))) ((_ is Cons!21071) l1!1329) ((_ is Cons!21071) l2!1298) ((_ is Cons!21071) l3!256) (= (h!26472 l2!1298) (h!26472 l3!256))))))

(declare-fun b!1888065 () Bool)

(declare-fun tp!538298 () Bool)

(assert (=> b!1888065 (= e!1204882 (and tp_is_empty!9005 tp!538298))))

(declare-fun b!1888066 () Bool)

(declare-fun res!843033 () Bool)

(assert (=> b!1888066 (=> (not res!843033) (not e!1204881))))

(assert (=> b!1888066 (= res!843033 (= (h!26472 l1!1329) (h!26472 l2!1298)))))

(declare-fun b!1888067 () Bool)

(declare-fun tp!538296 () Bool)

(assert (=> b!1888067 (= e!1204879 (and tp_is_empty!9005 tp!538296))))

(declare-fun b!1888068 () Bool)

(declare-fun res!843034 () Bool)

(assert (=> b!1888068 (=> (not res!843034) (not e!1204881))))

(assert (=> b!1888068 (= res!843034 (subseq!419 (t!175152 l1!1329) l2!1298))))

(assert (= (and start!189048 res!843030) b!1888059))

(assert (= (and b!1888059 res!843028) b!1888064))

(assert (= (and b!1888064 res!843029) b!1888061))

(assert (= (and b!1888061 res!843031) b!1888066))

(assert (= (and b!1888066 res!843033) b!1888068))

(assert (= (and b!1888068 res!843034) b!1888062))

(assert (= (and b!1888062 res!843032) b!1888063))

(assert (= (and start!189048 ((_ is Cons!21071) l1!1329)) b!1888067))

(assert (= (and start!189048 ((_ is Cons!21071) l2!1298)) b!1888060))

(assert (= (and start!189048 ((_ is Cons!21071) l3!256)) b!1888065))

(declare-fun m!2319687 () Bool)

(assert (=> b!1888068 m!2319687))

(declare-fun m!2319689 () Bool)

(assert (=> b!1888063 m!2319689))

(declare-fun m!2319691 () Bool)

(assert (=> b!1888063 m!2319691))

(declare-fun m!2319693 () Bool)

(assert (=> b!1888063 m!2319693))

(declare-fun m!2319695 () Bool)

(assert (=> b!1888059 m!2319695))

(declare-fun m!2319697 () Bool)

(assert (=> start!189048 m!2319697))

(declare-fun m!2319699 () Bool)

(assert (=> b!1888061 m!2319699))

(declare-fun m!2319701 () Bool)

(assert (=> b!1888062 m!2319701))

(check-sat (not b!1888065) (not b!1888068) (not b!1888063) (not b!1888061) (not b!1888060) (not b!1888059) tp_is_empty!9005 (not b!1888067) (not start!189048) (not b!1888062))
(check-sat)
(get-model)

(declare-fun b!1888093 () Bool)

(declare-fun e!1204907 () Bool)

(declare-fun e!1204909 () Bool)

(assert (=> b!1888093 (= e!1204907 e!1204909)))

(declare-fun res!843059 () Bool)

(assert (=> b!1888093 (=> (not res!843059) (not e!1204909))))

(assert (=> b!1888093 (= res!843059 ((_ is Cons!21071) l3!256))))

(declare-fun b!1888096 () Bool)

(declare-fun e!1204908 () Bool)

(assert (=> b!1888096 (= e!1204908 (subseq!419 l2!1298 (t!175152 l3!256)))))

(declare-fun d!578336 () Bool)

(declare-fun res!843062 () Bool)

(assert (=> d!578336 (=> res!843062 e!1204907)))

(assert (=> d!578336 (= res!843062 ((_ is Nil!21071) l2!1298))))

(assert (=> d!578336 (= (subseq!419 l2!1298 l3!256) e!1204907)))

(declare-fun b!1888095 () Bool)

(declare-fun e!1204910 () Bool)

(assert (=> b!1888095 (= e!1204910 (subseq!419 (t!175152 l2!1298) (t!175152 l3!256)))))

(declare-fun b!1888094 () Bool)

(assert (=> b!1888094 (= e!1204909 e!1204908)))

(declare-fun res!843061 () Bool)

(assert (=> b!1888094 (=> res!843061 e!1204908)))

(assert (=> b!1888094 (= res!843061 e!1204910)))

(declare-fun res!843060 () Bool)

(assert (=> b!1888094 (=> (not res!843060) (not e!1204910))))

(assert (=> b!1888094 (= res!843060 (= (h!26472 l2!1298) (h!26472 l3!256)))))

(assert (= (and d!578336 (not res!843062)) b!1888093))

(assert (= (and b!1888093 res!843059) b!1888094))

(assert (= (and b!1888094 res!843060) b!1888095))

(assert (= (and b!1888094 (not res!843061)) b!1888096))

(assert (=> b!1888096 m!2319701))

(assert (=> b!1888095 m!2319699))

(assert (=> b!1888059 d!578336))

(declare-fun b!1888097 () Bool)

(declare-fun e!1204911 () Bool)

(declare-fun e!1204913 () Bool)

(assert (=> b!1888097 (= e!1204911 e!1204913)))

(declare-fun res!843063 () Bool)

(assert (=> b!1888097 (=> (not res!843063) (not e!1204913))))

(assert (=> b!1888097 (= res!843063 ((_ is Cons!21071) l3!256))))

(declare-fun b!1888100 () Bool)

(declare-fun e!1204912 () Bool)

(assert (=> b!1888100 (= e!1204912 (subseq!419 l1!1329 (t!175152 l3!256)))))

(declare-fun d!578342 () Bool)

(declare-fun res!843066 () Bool)

(assert (=> d!578342 (=> res!843066 e!1204911)))

(assert (=> d!578342 (= res!843066 ((_ is Nil!21071) l1!1329))))

(assert (=> d!578342 (= (subseq!419 l1!1329 l3!256) e!1204911)))

(declare-fun b!1888099 () Bool)

(declare-fun e!1204914 () Bool)

(assert (=> b!1888099 (= e!1204914 (subseq!419 (t!175152 l1!1329) (t!175152 l3!256)))))

(declare-fun b!1888098 () Bool)

(assert (=> b!1888098 (= e!1204913 e!1204912)))

(declare-fun res!843065 () Bool)

(assert (=> b!1888098 (=> res!843065 e!1204912)))

(assert (=> b!1888098 (= res!843065 e!1204914)))

(declare-fun res!843064 () Bool)

(assert (=> b!1888098 (=> (not res!843064) (not e!1204914))))

(assert (=> b!1888098 (= res!843064 (= (h!26472 l1!1329) (h!26472 l3!256)))))

(assert (= (and d!578342 (not res!843066)) b!1888097))

(assert (= (and b!1888097 res!843063) b!1888098))

(assert (= (and b!1888098 res!843064) b!1888099))

(assert (= (and b!1888098 (not res!843065)) b!1888100))

(declare-fun m!2319709 () Bool)

(assert (=> b!1888100 m!2319709))

(assert (=> b!1888099 m!2319691))

(assert (=> b!1888063 d!578342))

(declare-fun b!1888101 () Bool)

(declare-fun e!1204915 () Bool)

(declare-fun e!1204917 () Bool)

(assert (=> b!1888101 (= e!1204915 e!1204917)))

(declare-fun res!843067 () Bool)

(assert (=> b!1888101 (=> (not res!843067) (not e!1204917))))

(assert (=> b!1888101 (= res!843067 ((_ is Cons!21071) (t!175152 l3!256)))))

(declare-fun b!1888104 () Bool)

(declare-fun e!1204916 () Bool)

(assert (=> b!1888104 (= e!1204916 (subseq!419 (t!175152 l1!1329) (t!175152 (t!175152 l3!256))))))

(declare-fun d!578344 () Bool)

(declare-fun res!843070 () Bool)

(assert (=> d!578344 (=> res!843070 e!1204915)))

(assert (=> d!578344 (= res!843070 ((_ is Nil!21071) (t!175152 l1!1329)))))

(assert (=> d!578344 (= (subseq!419 (t!175152 l1!1329) (t!175152 l3!256)) e!1204915)))

(declare-fun b!1888103 () Bool)

(declare-fun e!1204918 () Bool)

(assert (=> b!1888103 (= e!1204918 (subseq!419 (t!175152 (t!175152 l1!1329)) (t!175152 (t!175152 l3!256))))))

(declare-fun b!1888102 () Bool)

(assert (=> b!1888102 (= e!1204917 e!1204916)))

(declare-fun res!843069 () Bool)

(assert (=> b!1888102 (=> res!843069 e!1204916)))

(assert (=> b!1888102 (= res!843069 e!1204918)))

(declare-fun res!843068 () Bool)

(assert (=> b!1888102 (=> (not res!843068) (not e!1204918))))

(assert (=> b!1888102 (= res!843068 (= (h!26472 (t!175152 l1!1329)) (h!26472 (t!175152 l3!256))))))

(assert (= (and d!578344 (not res!843070)) b!1888101))

(assert (= (and b!1888101 res!843067) b!1888102))

(assert (= (and b!1888102 res!843068) b!1888103))

(assert (= (and b!1888102 (not res!843069)) b!1888104))

(declare-fun m!2319711 () Bool)

(assert (=> b!1888104 m!2319711))

(declare-fun m!2319713 () Bool)

(assert (=> b!1888103 m!2319713))

(assert (=> b!1888063 d!578344))

(declare-fun d!578346 () Bool)

(assert (=> d!578346 (subseq!419 (t!175152 l1!1329) (t!175152 l3!256))))

(declare-fun lt!723780 () Unit!35494)

(declare-fun choose!11816 (List!21153 List!21153 List!21153) Unit!35494)

(assert (=> d!578346 (= lt!723780 (choose!11816 (t!175152 l1!1329) l2!1298 (t!175152 l3!256)))))

(assert (=> d!578346 (subseq!419 (t!175152 l1!1329) l2!1298)))

(assert (=> d!578346 (= (lemmaSubSeqTransitive!10 (t!175152 l1!1329) l2!1298 (t!175152 l3!256)) lt!723780)))

(declare-fun bs!413004 () Bool)

(assert (= bs!413004 d!578346))

(assert (=> bs!413004 m!2319691))

(declare-fun m!2319725 () Bool)

(assert (=> bs!413004 m!2319725))

(assert (=> bs!413004 m!2319687))

(assert (=> b!1888063 d!578346))

(declare-fun b!1888117 () Bool)

(declare-fun e!1204931 () Bool)

(declare-fun e!1204933 () Bool)

(assert (=> b!1888117 (= e!1204931 e!1204933)))

(declare-fun res!843083 () Bool)

(assert (=> b!1888117 (=> (not res!843083) (not e!1204933))))

(assert (=> b!1888117 (= res!843083 ((_ is Cons!21071) l2!1298))))

(declare-fun b!1888120 () Bool)

(declare-fun e!1204932 () Bool)

(assert (=> b!1888120 (= e!1204932 (subseq!419 (t!175152 l1!1329) (t!175152 l2!1298)))))

(declare-fun d!578354 () Bool)

(declare-fun res!843086 () Bool)

(assert (=> d!578354 (=> res!843086 e!1204931)))

(assert (=> d!578354 (= res!843086 ((_ is Nil!21071) (t!175152 l1!1329)))))

(assert (=> d!578354 (= (subseq!419 (t!175152 l1!1329) l2!1298) e!1204931)))

(declare-fun b!1888119 () Bool)

(declare-fun e!1204934 () Bool)

(assert (=> b!1888119 (= e!1204934 (subseq!419 (t!175152 (t!175152 l1!1329)) (t!175152 l2!1298)))))

(declare-fun b!1888118 () Bool)

(assert (=> b!1888118 (= e!1204933 e!1204932)))

(declare-fun res!843085 () Bool)

(assert (=> b!1888118 (=> res!843085 e!1204932)))

(assert (=> b!1888118 (= res!843085 e!1204934)))

(declare-fun res!843084 () Bool)

(assert (=> b!1888118 (=> (not res!843084) (not e!1204934))))

(assert (=> b!1888118 (= res!843084 (= (h!26472 (t!175152 l1!1329)) (h!26472 l2!1298)))))

(assert (= (and d!578354 (not res!843086)) b!1888117))

(assert (= (and b!1888117 res!843083) b!1888118))

(assert (= (and b!1888118 res!843084) b!1888119))

(assert (= (and b!1888118 (not res!843085)) b!1888120))

(declare-fun m!2319727 () Bool)

(assert (=> b!1888120 m!2319727))

(declare-fun m!2319729 () Bool)

(assert (=> b!1888119 m!2319729))

(assert (=> b!1888068 d!578354))

(declare-fun b!1888125 () Bool)

(declare-fun e!1204939 () Bool)

(declare-fun e!1204941 () Bool)

(assert (=> b!1888125 (= e!1204939 e!1204941)))

(declare-fun res!843091 () Bool)

(assert (=> b!1888125 (=> (not res!843091) (not e!1204941))))

(assert (=> b!1888125 (= res!843091 ((_ is Cons!21071) (t!175152 l3!256)))))

(declare-fun b!1888128 () Bool)

(declare-fun e!1204940 () Bool)

(assert (=> b!1888128 (= e!1204940 (subseq!419 l2!1298 (t!175152 (t!175152 l3!256))))))

(declare-fun d!578358 () Bool)

(declare-fun res!843094 () Bool)

(assert (=> d!578358 (=> res!843094 e!1204939)))

(assert (=> d!578358 (= res!843094 ((_ is Nil!21071) l2!1298))))

(assert (=> d!578358 (= (subseq!419 l2!1298 (t!175152 l3!256)) e!1204939)))

(declare-fun b!1888127 () Bool)

(declare-fun e!1204942 () Bool)

(assert (=> b!1888127 (= e!1204942 (subseq!419 (t!175152 l2!1298) (t!175152 (t!175152 l3!256))))))

(declare-fun b!1888126 () Bool)

(assert (=> b!1888126 (= e!1204941 e!1204940)))

(declare-fun res!843093 () Bool)

(assert (=> b!1888126 (=> res!843093 e!1204940)))

(assert (=> b!1888126 (= res!843093 e!1204942)))

(declare-fun res!843092 () Bool)

(assert (=> b!1888126 (=> (not res!843092) (not e!1204942))))

(assert (=> b!1888126 (= res!843092 (= (h!26472 l2!1298) (h!26472 (t!175152 l3!256))))))

(assert (= (and d!578358 (not res!843094)) b!1888125))

(assert (= (and b!1888125 res!843091) b!1888126))

(assert (= (and b!1888126 res!843092) b!1888127))

(assert (= (and b!1888126 (not res!843093)) b!1888128))

(declare-fun m!2319733 () Bool)

(assert (=> b!1888128 m!2319733))

(declare-fun m!2319735 () Bool)

(assert (=> b!1888127 m!2319735))

(assert (=> b!1888062 d!578358))

(declare-fun b!1888133 () Bool)

(declare-fun e!1204947 () Bool)

(declare-fun e!1204949 () Bool)

(assert (=> b!1888133 (= e!1204947 e!1204949)))

(declare-fun res!843099 () Bool)

(assert (=> b!1888133 (=> (not res!843099) (not e!1204949))))

(assert (=> b!1888133 (= res!843099 ((_ is Cons!21071) (t!175152 l3!256)))))

(declare-fun b!1888136 () Bool)

(declare-fun e!1204948 () Bool)

(assert (=> b!1888136 (= e!1204948 (subseq!419 (t!175152 l2!1298) (t!175152 (t!175152 l3!256))))))

(declare-fun d!578362 () Bool)

(declare-fun res!843102 () Bool)

(assert (=> d!578362 (=> res!843102 e!1204947)))

(assert (=> d!578362 (= res!843102 ((_ is Nil!21071) (t!175152 l2!1298)))))

(assert (=> d!578362 (= (subseq!419 (t!175152 l2!1298) (t!175152 l3!256)) e!1204947)))

(declare-fun b!1888135 () Bool)

(declare-fun e!1204950 () Bool)

(assert (=> b!1888135 (= e!1204950 (subseq!419 (t!175152 (t!175152 l2!1298)) (t!175152 (t!175152 l3!256))))))

(declare-fun b!1888134 () Bool)

(assert (=> b!1888134 (= e!1204949 e!1204948)))

(declare-fun res!843101 () Bool)

(assert (=> b!1888134 (=> res!843101 e!1204948)))

(assert (=> b!1888134 (= res!843101 e!1204950)))

(declare-fun res!843100 () Bool)

(assert (=> b!1888134 (=> (not res!843100) (not e!1204950))))

(assert (=> b!1888134 (= res!843100 (= (h!26472 (t!175152 l2!1298)) (h!26472 (t!175152 l3!256))))))

(assert (= (and d!578362 (not res!843102)) b!1888133))

(assert (= (and b!1888133 res!843099) b!1888134))

(assert (= (and b!1888134 res!843100) b!1888135))

(assert (= (and b!1888134 (not res!843101)) b!1888136))

(assert (=> b!1888136 m!2319735))

(declare-fun m!2319739 () Bool)

(assert (=> b!1888135 m!2319739))

(assert (=> b!1888061 d!578362))

(declare-fun b!1888141 () Bool)

(declare-fun e!1204953 () Bool)

(declare-fun e!1204955 () Bool)

(assert (=> b!1888141 (= e!1204953 e!1204955)))

(declare-fun res!843103 () Bool)

(assert (=> b!1888141 (=> (not res!843103) (not e!1204955))))

(assert (=> b!1888141 (= res!843103 ((_ is Cons!21071) l2!1298))))

(declare-fun b!1888144 () Bool)

(declare-fun e!1204954 () Bool)

(assert (=> b!1888144 (= e!1204954 (subseq!419 l1!1329 (t!175152 l2!1298)))))

(declare-fun d!578364 () Bool)

(declare-fun res!843106 () Bool)

(assert (=> d!578364 (=> res!843106 e!1204953)))

(assert (=> d!578364 (= res!843106 ((_ is Nil!21071) l1!1329))))

(assert (=> d!578364 (= (subseq!419 l1!1329 l2!1298) e!1204953)))

(declare-fun b!1888143 () Bool)

(declare-fun e!1204956 () Bool)

(assert (=> b!1888143 (= e!1204956 (subseq!419 (t!175152 l1!1329) (t!175152 l2!1298)))))

(declare-fun b!1888142 () Bool)

(assert (=> b!1888142 (= e!1204955 e!1204954)))

(declare-fun res!843105 () Bool)

(assert (=> b!1888142 (=> res!843105 e!1204954)))

(assert (=> b!1888142 (= res!843105 e!1204956)))

(declare-fun res!843104 () Bool)

(assert (=> b!1888142 (=> (not res!843104) (not e!1204956))))

(assert (=> b!1888142 (= res!843104 (= (h!26472 l1!1329) (h!26472 l2!1298)))))

(assert (= (and d!578364 (not res!843106)) b!1888141))

(assert (= (and b!1888141 res!843103) b!1888142))

(assert (= (and b!1888142 res!843104) b!1888143))

(assert (= (and b!1888142 (not res!843105)) b!1888144))

(declare-fun m!2319741 () Bool)

(assert (=> b!1888144 m!2319741))

(assert (=> b!1888143 m!2319727))

(assert (=> start!189048 d!578364))

(declare-fun b!1888152 () Bool)

(declare-fun e!1204962 () Bool)

(declare-fun tp!538306 () Bool)

(assert (=> b!1888152 (= e!1204962 (and tp_is_empty!9005 tp!538306))))

(assert (=> b!1888067 (= tp!538296 e!1204962)))

(assert (= (and b!1888067 ((_ is Cons!21071) (t!175152 l1!1329))) b!1888152))

(declare-fun b!1888153 () Bool)

(declare-fun e!1204963 () Bool)

(declare-fun tp!538307 () Bool)

(assert (=> b!1888153 (= e!1204963 (and tp_is_empty!9005 tp!538307))))

(assert (=> b!1888060 (= tp!538297 e!1204963)))

(assert (= (and b!1888060 ((_ is Cons!21071) (t!175152 l2!1298))) b!1888153))

(declare-fun b!1888154 () Bool)

(declare-fun e!1204964 () Bool)

(declare-fun tp!538308 () Bool)

(assert (=> b!1888154 (= e!1204964 (and tp_is_empty!9005 tp!538308))))

(assert (=> b!1888065 (= tp!538298 e!1204964)))

(assert (= (and b!1888065 ((_ is Cons!21071) (t!175152 l3!256))) b!1888154))

(check-sat (not b!1888127) (not b!1888154) (not b!1888119) (not d!578346) (not b!1888135) (not b!1888100) (not b!1888128) (not b!1888103) (not b!1888104) (not b!1888143) (not b!1888144) (not b!1888099) (not b!1888095) (not b!1888136) (not b!1888152) (not b!1888120) (not b!1888153) tp_is_empty!9005 (not b!1888096))
(check-sat)
