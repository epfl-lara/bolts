; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188960 () Bool)

(assert start!188960)

(declare-fun b!1886940 () Bool)

(declare-fun e!1204094 () Bool)

(declare-fun tp_is_empty!8969 () Bool)

(declare-fun tp!538056 () Bool)

(assert (=> b!1886940 (= e!1204094 (and tp_is_empty!8969 tp!538056))))

(declare-fun res!842272 () Bool)

(declare-fun e!1204092 () Bool)

(assert (=> start!188960 (=> (not res!842272) (not e!1204092))))

(declare-datatypes ((B!1713 0))(
  ( (B!1714 (val!6142 Int)) )
))
(declare-datatypes ((List!21135 0))(
  ( (Nil!21053) (Cons!21053 (h!26454 B!1713) (t!175134 List!21135)) )
))
(declare-fun l1!1329 () List!21135)

(declare-fun l2!1298 () List!21135)

(declare-fun subseq!403 (List!21135 List!21135) Bool)

(assert (=> start!188960 (= res!842272 (subseq!403 l1!1329 l2!1298))))

(assert (=> start!188960 e!1204092))

(assert (=> start!188960 e!1204094))

(declare-fun e!1204093 () Bool)

(assert (=> start!188960 e!1204093))

(declare-fun e!1204091 () Bool)

(assert (=> start!188960 e!1204091))

(declare-fun b!1886941 () Bool)

(declare-fun tp!538055 () Bool)

(assert (=> b!1886941 (= e!1204093 (and tp_is_empty!8969 tp!538055))))

(declare-fun b!1886942 () Bool)

(declare-fun res!842268 () Bool)

(assert (=> b!1886942 (=> (not res!842268) (not e!1204092))))

(assert (=> b!1886942 (= res!842268 (= (h!26454 l1!1329) (h!26454 l2!1298)))))

(declare-fun b!1886943 () Bool)

(declare-fun res!842270 () Bool)

(assert (=> b!1886943 (=> (not res!842270) (not e!1204092))))

(assert (=> b!1886943 (= res!842270 (not (subseq!403 (t!175134 l1!1329) (t!175134 l2!1298))))))

(declare-fun b!1886944 () Bool)

(declare-fun res!842267 () Bool)

(assert (=> b!1886944 (=> (not res!842267) (not e!1204092))))

(declare-fun l3!256 () List!21135)

(assert (=> b!1886944 (= res!842267 (subseq!403 (t!175134 l2!1298) (t!175134 l3!256)))))

(declare-fun b!1886945 () Bool)

(assert (=> b!1886945 (= e!1204092 (not (subseq!403 l1!1329 (t!175134 l2!1298))))))

(declare-fun b!1886946 () Bool)

(declare-fun tp!538054 () Bool)

(assert (=> b!1886946 (= e!1204091 (and tp_is_empty!8969 tp!538054))))

(declare-fun b!1886947 () Bool)

(declare-fun res!842271 () Bool)

(assert (=> b!1886947 (=> (not res!842271) (not e!1204092))))

(assert (=> b!1886947 (= res!842271 (subseq!403 l2!1298 l3!256))))

(declare-fun b!1886948 () Bool)

(declare-fun res!842269 () Bool)

(assert (=> b!1886948 (=> (not res!842269) (not e!1204092))))

(get-info :version)

(assert (=> b!1886948 (= res!842269 (and (or (not ((_ is Cons!21053) l1!1329)) (not ((_ is Cons!21053) l2!1298)) (not ((_ is Cons!21053) l3!256)) (= (h!26454 l2!1298) (h!26454 l3!256))) ((_ is Cons!21053) l1!1329) ((_ is Cons!21053) l2!1298) ((_ is Cons!21053) l3!256) (= (h!26454 l2!1298) (h!26454 l3!256))))))

(assert (= (and start!188960 res!842272) b!1886947))

(assert (= (and b!1886947 res!842271) b!1886948))

(assert (= (and b!1886948 res!842269) b!1886944))

(assert (= (and b!1886944 res!842267) b!1886942))

(assert (= (and b!1886942 res!842268) b!1886943))

(assert (= (and b!1886943 res!842270) b!1886945))

(assert (= (and start!188960 ((_ is Cons!21053) l1!1329)) b!1886940))

(assert (= (and start!188960 ((_ is Cons!21053) l2!1298)) b!1886941))

(assert (= (and start!188960 ((_ is Cons!21053) l3!256)) b!1886946))

(declare-fun m!2319189 () Bool)

(assert (=> b!1886947 m!2319189))

(declare-fun m!2319191 () Bool)

(assert (=> b!1886944 m!2319191))

(declare-fun m!2319193 () Bool)

(assert (=> b!1886943 m!2319193))

(declare-fun m!2319195 () Bool)

(assert (=> start!188960 m!2319195))

(declare-fun m!2319197 () Bool)

(assert (=> b!1886945 m!2319197))

(check-sat (not b!1886941) tp_is_empty!8969 (not start!188960) (not b!1886946) (not b!1886940) (not b!1886944) (not b!1886943) (not b!1886947) (not b!1886945))
(check-sat)
(get-model)

(declare-fun d!578095 () Bool)

(declare-fun res!842297 () Bool)

(declare-fun e!1204122 () Bool)

(assert (=> d!578095 (=> res!842297 e!1204122)))

(assert (=> d!578095 (= res!842297 ((_ is Nil!21053) l1!1329))))

(assert (=> d!578095 (= (subseq!403 l1!1329 (t!175134 l2!1298)) e!1204122)))

(declare-fun b!1886974 () Bool)

(declare-fun e!1204120 () Bool)

(declare-fun e!1204119 () Bool)

(assert (=> b!1886974 (= e!1204120 e!1204119)))

(declare-fun res!842299 () Bool)

(assert (=> b!1886974 (=> res!842299 e!1204119)))

(declare-fun e!1204121 () Bool)

(assert (=> b!1886974 (= res!842299 e!1204121)))

(declare-fun res!842298 () Bool)

(assert (=> b!1886974 (=> (not res!842298) (not e!1204121))))

(assert (=> b!1886974 (= res!842298 (= (h!26454 l1!1329) (h!26454 (t!175134 l2!1298))))))

(declare-fun b!1886976 () Bool)

(assert (=> b!1886976 (= e!1204119 (subseq!403 l1!1329 (t!175134 (t!175134 l2!1298))))))

(declare-fun b!1886975 () Bool)

(assert (=> b!1886975 (= e!1204121 (subseq!403 (t!175134 l1!1329) (t!175134 (t!175134 l2!1298))))))

(declare-fun b!1886973 () Bool)

(assert (=> b!1886973 (= e!1204122 e!1204120)))

(declare-fun res!842300 () Bool)

(assert (=> b!1886973 (=> (not res!842300) (not e!1204120))))

(assert (=> b!1886973 (= res!842300 ((_ is Cons!21053) (t!175134 l2!1298)))))

(assert (= (and d!578095 (not res!842297)) b!1886973))

(assert (= (and b!1886973 res!842300) b!1886974))

(assert (= (and b!1886974 res!842298) b!1886975))

(assert (= (and b!1886974 (not res!842299)) b!1886976))

(declare-fun m!2319205 () Bool)

(assert (=> b!1886976 m!2319205))

(declare-fun m!2319207 () Bool)

(assert (=> b!1886975 m!2319207))

(assert (=> b!1886945 d!578095))

(declare-fun d!578101 () Bool)

(declare-fun res!842305 () Bool)

(declare-fun e!1204130 () Bool)

(assert (=> d!578101 (=> res!842305 e!1204130)))

(assert (=> d!578101 (= res!842305 ((_ is Nil!21053) (t!175134 l1!1329)))))

(assert (=> d!578101 (= (subseq!403 (t!175134 l1!1329) (t!175134 l2!1298)) e!1204130)))

(declare-fun b!1886982 () Bool)

(declare-fun e!1204128 () Bool)

(declare-fun e!1204127 () Bool)

(assert (=> b!1886982 (= e!1204128 e!1204127)))

(declare-fun res!842307 () Bool)

(assert (=> b!1886982 (=> res!842307 e!1204127)))

(declare-fun e!1204129 () Bool)

(assert (=> b!1886982 (= res!842307 e!1204129)))

(declare-fun res!842306 () Bool)

(assert (=> b!1886982 (=> (not res!842306) (not e!1204129))))

(assert (=> b!1886982 (= res!842306 (= (h!26454 (t!175134 l1!1329)) (h!26454 (t!175134 l2!1298))))))

(declare-fun b!1886984 () Bool)

(assert (=> b!1886984 (= e!1204127 (subseq!403 (t!175134 l1!1329) (t!175134 (t!175134 l2!1298))))))

(declare-fun b!1886983 () Bool)

(assert (=> b!1886983 (= e!1204129 (subseq!403 (t!175134 (t!175134 l1!1329)) (t!175134 (t!175134 l2!1298))))))

(declare-fun b!1886981 () Bool)

(assert (=> b!1886981 (= e!1204130 e!1204128)))

(declare-fun res!842308 () Bool)

(assert (=> b!1886981 (=> (not res!842308) (not e!1204128))))

(assert (=> b!1886981 (= res!842308 ((_ is Cons!21053) (t!175134 l2!1298)))))

(assert (= (and d!578101 (not res!842305)) b!1886981))

(assert (= (and b!1886981 res!842308) b!1886982))

(assert (= (and b!1886982 res!842306) b!1886983))

(assert (= (and b!1886982 (not res!842307)) b!1886984))

(assert (=> b!1886984 m!2319207))

(declare-fun m!2319212 () Bool)

(assert (=> b!1886983 m!2319212))

(assert (=> b!1886943 d!578101))

(declare-fun d!578105 () Bool)

(declare-fun res!842313 () Bool)

(declare-fun e!1204138 () Bool)

(assert (=> d!578105 (=> res!842313 e!1204138)))

(assert (=> d!578105 (= res!842313 ((_ is Nil!21053) l1!1329))))

(assert (=> d!578105 (= (subseq!403 l1!1329 l2!1298) e!1204138)))

(declare-fun b!1886990 () Bool)

(declare-fun e!1204136 () Bool)

(declare-fun e!1204135 () Bool)

(assert (=> b!1886990 (= e!1204136 e!1204135)))

(declare-fun res!842315 () Bool)

(assert (=> b!1886990 (=> res!842315 e!1204135)))

(declare-fun e!1204137 () Bool)

(assert (=> b!1886990 (= res!842315 e!1204137)))

(declare-fun res!842314 () Bool)

(assert (=> b!1886990 (=> (not res!842314) (not e!1204137))))

(assert (=> b!1886990 (= res!842314 (= (h!26454 l1!1329) (h!26454 l2!1298)))))

(declare-fun b!1886992 () Bool)

(assert (=> b!1886992 (= e!1204135 (subseq!403 l1!1329 (t!175134 l2!1298)))))

(declare-fun b!1886991 () Bool)

(assert (=> b!1886991 (= e!1204137 (subseq!403 (t!175134 l1!1329) (t!175134 l2!1298)))))

(declare-fun b!1886989 () Bool)

(assert (=> b!1886989 (= e!1204138 e!1204136)))

(declare-fun res!842316 () Bool)

(assert (=> b!1886989 (=> (not res!842316) (not e!1204136))))

(assert (=> b!1886989 (= res!842316 ((_ is Cons!21053) l2!1298))))

(assert (= (and d!578105 (not res!842313)) b!1886989))

(assert (= (and b!1886989 res!842316) b!1886990))

(assert (= (and b!1886990 res!842314) b!1886991))

(assert (= (and b!1886990 (not res!842315)) b!1886992))

(assert (=> b!1886992 m!2319197))

(assert (=> b!1886991 m!2319193))

(assert (=> start!188960 d!578105))

(declare-fun d!578109 () Bool)

(declare-fun res!842321 () Bool)

(declare-fun e!1204146 () Bool)

(assert (=> d!578109 (=> res!842321 e!1204146)))

(assert (=> d!578109 (= res!842321 ((_ is Nil!21053) (t!175134 l2!1298)))))

(assert (=> d!578109 (= (subseq!403 (t!175134 l2!1298) (t!175134 l3!256)) e!1204146)))

(declare-fun b!1886998 () Bool)

(declare-fun e!1204144 () Bool)

(declare-fun e!1204143 () Bool)

(assert (=> b!1886998 (= e!1204144 e!1204143)))

(declare-fun res!842323 () Bool)

(assert (=> b!1886998 (=> res!842323 e!1204143)))

(declare-fun e!1204145 () Bool)

(assert (=> b!1886998 (= res!842323 e!1204145)))

(declare-fun res!842322 () Bool)

(assert (=> b!1886998 (=> (not res!842322) (not e!1204145))))

(assert (=> b!1886998 (= res!842322 (= (h!26454 (t!175134 l2!1298)) (h!26454 (t!175134 l3!256))))))

(declare-fun b!1887000 () Bool)

(assert (=> b!1887000 (= e!1204143 (subseq!403 (t!175134 l2!1298) (t!175134 (t!175134 l3!256))))))

(declare-fun b!1886999 () Bool)

(assert (=> b!1886999 (= e!1204145 (subseq!403 (t!175134 (t!175134 l2!1298)) (t!175134 (t!175134 l3!256))))))

(declare-fun b!1886997 () Bool)

(assert (=> b!1886997 (= e!1204146 e!1204144)))

(declare-fun res!842324 () Bool)

(assert (=> b!1886997 (=> (not res!842324) (not e!1204144))))

(assert (=> b!1886997 (= res!842324 ((_ is Cons!21053) (t!175134 l3!256)))))

(assert (= (and d!578109 (not res!842321)) b!1886997))

(assert (= (and b!1886997 res!842324) b!1886998))

(assert (= (and b!1886998 res!842322) b!1886999))

(assert (= (and b!1886998 (not res!842323)) b!1887000))

(declare-fun m!2319217 () Bool)

(assert (=> b!1887000 m!2319217))

(declare-fun m!2319219 () Bool)

(assert (=> b!1886999 m!2319219))

(assert (=> b!1886944 d!578109))

(declare-fun d!578111 () Bool)

(declare-fun res!842325 () Bool)

(declare-fun e!1204152 () Bool)

(assert (=> d!578111 (=> res!842325 e!1204152)))

(assert (=> d!578111 (= res!842325 ((_ is Nil!21053) l2!1298))))

(assert (=> d!578111 (= (subseq!403 l2!1298 l3!256) e!1204152)))

(declare-fun b!1887006 () Bool)

(declare-fun e!1204150 () Bool)

(declare-fun e!1204149 () Bool)

(assert (=> b!1887006 (= e!1204150 e!1204149)))

(declare-fun res!842327 () Bool)

(assert (=> b!1887006 (=> res!842327 e!1204149)))

(declare-fun e!1204151 () Bool)

(assert (=> b!1887006 (= res!842327 e!1204151)))

(declare-fun res!842326 () Bool)

(assert (=> b!1887006 (=> (not res!842326) (not e!1204151))))

(assert (=> b!1887006 (= res!842326 (= (h!26454 l2!1298) (h!26454 l3!256)))))

(declare-fun b!1887008 () Bool)

(assert (=> b!1887008 (= e!1204149 (subseq!403 l2!1298 (t!175134 l3!256)))))

(declare-fun b!1887007 () Bool)

(assert (=> b!1887007 (= e!1204151 (subseq!403 (t!175134 l2!1298) (t!175134 l3!256)))))

(declare-fun b!1887005 () Bool)

(assert (=> b!1887005 (= e!1204152 e!1204150)))

(declare-fun res!842328 () Bool)

(assert (=> b!1887005 (=> (not res!842328) (not e!1204150))))

(assert (=> b!1887005 (= res!842328 ((_ is Cons!21053) l3!256))))

(assert (= (and d!578111 (not res!842325)) b!1887005))

(assert (= (and b!1887005 res!842328) b!1887006))

(assert (= (and b!1887006 res!842326) b!1887007))

(assert (= (and b!1887006 (not res!842327)) b!1887008))

(declare-fun m!2319221 () Bool)

(assert (=> b!1887008 m!2319221))

(assert (=> b!1887007 m!2319191))

(assert (=> b!1886947 d!578111))

(declare-fun b!1887016 () Bool)

(declare-fun e!1204158 () Bool)

(declare-fun tp!538064 () Bool)

(assert (=> b!1887016 (= e!1204158 (and tp_is_empty!8969 tp!538064))))

(assert (=> b!1886940 (= tp!538056 e!1204158)))

(assert (= (and b!1886940 ((_ is Cons!21053) (t!175134 l1!1329))) b!1887016))

(declare-fun b!1887017 () Bool)

(declare-fun e!1204159 () Bool)

(declare-fun tp!538065 () Bool)

(assert (=> b!1887017 (= e!1204159 (and tp_is_empty!8969 tp!538065))))

(assert (=> b!1886946 (= tp!538054 e!1204159)))

(assert (= (and b!1886946 ((_ is Cons!21053) (t!175134 l3!256))) b!1887017))

(declare-fun b!1887018 () Bool)

(declare-fun e!1204160 () Bool)

(declare-fun tp!538066 () Bool)

(assert (=> b!1887018 (= e!1204160 (and tp_is_empty!8969 tp!538066))))

(assert (=> b!1886941 (= tp!538055 e!1204160)))

(assert (= (and b!1886941 ((_ is Cons!21053) (t!175134 l2!1298))) b!1887018))

(check-sat (not b!1886984) tp_is_empty!8969 (not b!1887017) (not b!1887007) (not b!1887000) (not b!1886992) (not b!1886983) (not b!1886999) (not b!1886976) (not b!1887016) (not b!1886991) (not b!1886975) (not b!1887018) (not b!1887008))
(check-sat)
