; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189060 () Bool)

(assert start!189060)

(declare-fun b!1888200 () Bool)

(declare-fun e!1204986 () Bool)

(declare-fun tp_is_empty!9009 () Bool)

(declare-fun tp!538325 () Bool)

(assert (=> b!1888200 (= e!1204986 (and tp_is_empty!9009 tp!538325))))

(declare-fun b!1888201 () Bool)

(declare-fun e!1204985 () Bool)

(declare-fun tp!538326 () Bool)

(assert (=> b!1888201 (= e!1204985 (and tp_is_empty!9009 tp!538326))))

(declare-fun res!843140 () Bool)

(declare-fun e!1204987 () Bool)

(assert (=> start!189060 (=> (not res!843140) (not e!1204987))))

(declare-datatypes ((B!1753 0))(
  ( (B!1754 (val!6162 Int)) )
))
(declare-datatypes ((List!21155 0))(
  ( (Nil!21073) (Cons!21073 (h!26474 B!1753) (t!175154 List!21155)) )
))
(declare-fun l1!1329 () List!21155)

(declare-fun l2!1298 () List!21155)

(declare-fun subseq!421 (List!21155 List!21155) Bool)

(assert (=> start!189060 (= res!843140 (subseq!421 l1!1329 l2!1298))))

(assert (=> start!189060 e!1204987))

(assert (=> start!189060 e!1204985))

(declare-fun e!1204988 () Bool)

(assert (=> start!189060 e!1204988))

(assert (=> start!189060 e!1204986))

(declare-fun b!1888202 () Bool)

(declare-fun res!843139 () Bool)

(assert (=> b!1888202 (=> (not res!843139) (not e!1204987))))

(assert (=> b!1888202 (= res!843139 (not (subseq!421 (t!175154 l1!1329) l2!1298)))))

(declare-fun b!1888203 () Bool)

(declare-fun l3!256 () List!21155)

(assert (=> b!1888203 (= e!1204987 (not (subseq!421 l2!1298 (t!175154 l3!256))))))

(declare-fun b!1888204 () Bool)

(declare-fun res!843137 () Bool)

(assert (=> b!1888204 (=> (not res!843137) (not e!1204987))))

(assert (=> b!1888204 (= res!843137 (= (h!26474 l1!1329) (h!26474 l2!1298)))))

(declare-fun b!1888205 () Bool)

(declare-fun tp!538324 () Bool)

(assert (=> b!1888205 (= e!1204988 (and tp_is_empty!9009 tp!538324))))

(declare-fun b!1888206 () Bool)

(declare-fun res!843142 () Bool)

(assert (=> b!1888206 (=> (not res!843142) (not e!1204987))))

(assert (=> b!1888206 (= res!843142 (subseq!421 l2!1298 l3!256))))

(declare-fun b!1888207 () Bool)

(declare-fun res!843138 () Bool)

(assert (=> b!1888207 (=> (not res!843138) (not e!1204987))))

(assert (=> b!1888207 (= res!843138 (not (subseq!421 (t!175154 l2!1298) (t!175154 l3!256))))))

(declare-fun b!1888208 () Bool)

(declare-fun res!843141 () Bool)

(assert (=> b!1888208 (=> (not res!843141) (not e!1204987))))

(get-info :version)

(assert (=> b!1888208 (= res!843141 (and (or (not ((_ is Cons!21073) l1!1329)) (not ((_ is Cons!21073) l2!1298)) (not ((_ is Cons!21073) l3!256)) (= (h!26474 l2!1298) (h!26474 l3!256))) ((_ is Cons!21073) l1!1329) ((_ is Cons!21073) l2!1298) ((_ is Cons!21073) l3!256) (= (h!26474 l2!1298) (h!26474 l3!256))))))

(assert (= (and start!189060 res!843140) b!1888206))

(assert (= (and b!1888206 res!843142) b!1888208))

(assert (= (and b!1888208 res!843141) b!1888207))

(assert (= (and b!1888207 res!843138) b!1888204))

(assert (= (and b!1888204 res!843137) b!1888202))

(assert (= (and b!1888202 res!843139) b!1888203))

(assert (= (and start!189060 ((_ is Cons!21073) l1!1329)) b!1888201))

(assert (= (and start!189060 ((_ is Cons!21073) l2!1298)) b!1888205))

(assert (= (and start!189060 ((_ is Cons!21073) l3!256)) b!1888200))

(declare-fun m!2319753 () Bool)

(assert (=> b!1888207 m!2319753))

(declare-fun m!2319755 () Bool)

(assert (=> b!1888206 m!2319755))

(declare-fun m!2319757 () Bool)

(assert (=> b!1888202 m!2319757))

(declare-fun m!2319759 () Bool)

(assert (=> b!1888203 m!2319759))

(declare-fun m!2319761 () Bool)

(assert (=> start!189060 m!2319761))

(check-sat (not b!1888206) (not b!1888205) (not b!1888200) (not b!1888207) (not b!1888203) (not start!189060) tp_is_empty!9009 (not b!1888201) (not b!1888202))
(check-sat)
(get-model)

(declare-fun d!578369 () Bool)

(declare-fun res!843165 () Bool)

(declare-fun e!1205016 () Bool)

(assert (=> d!578369 (=> res!843165 e!1205016)))

(assert (=> d!578369 (= res!843165 ((_ is Nil!21073) l1!1329))))

(assert (=> d!578369 (= (subseq!421 l1!1329 l2!1298) e!1205016)))

(declare-fun b!1888234 () Bool)

(declare-fun e!1205009 () Bool)

(assert (=> b!1888234 (= e!1205009 (subseq!421 (t!175154 l1!1329) (t!175154 l2!1298)))))

(declare-fun b!1888232 () Bool)

(declare-fun e!1205011 () Bool)

(declare-fun e!1205012 () Bool)

(assert (=> b!1888232 (= e!1205011 e!1205012)))

(declare-fun res!843166 () Bool)

(assert (=> b!1888232 (=> res!843166 e!1205012)))

(assert (=> b!1888232 (= res!843166 e!1205009)))

(declare-fun res!843164 () Bool)

(assert (=> b!1888232 (=> (not res!843164) (not e!1205009))))

(assert (=> b!1888232 (= res!843164 (= (h!26474 l1!1329) (h!26474 l2!1298)))))

(declare-fun b!1888230 () Bool)

(assert (=> b!1888230 (= e!1205016 e!1205011)))

(declare-fun res!843169 () Bool)

(assert (=> b!1888230 (=> (not res!843169) (not e!1205011))))

(assert (=> b!1888230 (= res!843169 ((_ is Cons!21073) l2!1298))))

(declare-fun b!1888236 () Bool)

(assert (=> b!1888236 (= e!1205012 (subseq!421 l1!1329 (t!175154 l2!1298)))))

(assert (= (and d!578369 (not res!843165)) b!1888230))

(assert (= (and b!1888230 res!843169) b!1888232))

(assert (= (and b!1888232 res!843164) b!1888234))

(assert (= (and b!1888232 (not res!843166)) b!1888236))

(declare-fun m!2319767 () Bool)

(assert (=> b!1888234 m!2319767))

(declare-fun m!2319769 () Bool)

(assert (=> b!1888236 m!2319769))

(assert (=> start!189060 d!578369))

(declare-fun d!578375 () Bool)

(declare-fun res!843176 () Bool)

(declare-fun e!1205024 () Bool)

(assert (=> d!578375 (=> res!843176 e!1205024)))

(assert (=> d!578375 (= res!843176 ((_ is Nil!21073) l2!1298))))

(assert (=> d!578375 (= (subseq!421 l2!1298 (t!175154 l3!256)) e!1205024)))

(declare-fun b!1888243 () Bool)

(declare-fun e!1205021 () Bool)

(assert (=> b!1888243 (= e!1205021 (subseq!421 (t!175154 l2!1298) (t!175154 (t!175154 l3!256))))))

(declare-fun b!1888242 () Bool)

(declare-fun e!1205022 () Bool)

(declare-fun e!1205023 () Bool)

(assert (=> b!1888242 (= e!1205022 e!1205023)))

(declare-fun res!843177 () Bool)

(assert (=> b!1888242 (=> res!843177 e!1205023)))

(assert (=> b!1888242 (= res!843177 e!1205021)))

(declare-fun res!843175 () Bool)

(assert (=> b!1888242 (=> (not res!843175) (not e!1205021))))

(assert (=> b!1888242 (= res!843175 (= (h!26474 l2!1298) (h!26474 (t!175154 l3!256))))))

(declare-fun b!1888241 () Bool)

(assert (=> b!1888241 (= e!1205024 e!1205022)))

(declare-fun res!843178 () Bool)

(assert (=> b!1888241 (=> (not res!843178) (not e!1205022))))

(assert (=> b!1888241 (= res!843178 ((_ is Cons!21073) (t!175154 l3!256)))))

(declare-fun b!1888244 () Bool)

(assert (=> b!1888244 (= e!1205023 (subseq!421 l2!1298 (t!175154 (t!175154 l3!256))))))

(assert (= (and d!578375 (not res!843176)) b!1888241))

(assert (= (and b!1888241 res!843178) b!1888242))

(assert (= (and b!1888242 res!843175) b!1888243))

(assert (= (and b!1888242 (not res!843177)) b!1888244))

(declare-fun m!2319775 () Bool)

(assert (=> b!1888243 m!2319775))

(declare-fun m!2319777 () Bool)

(assert (=> b!1888244 m!2319777))

(assert (=> b!1888203 d!578375))

(declare-fun d!578379 () Bool)

(declare-fun res!843184 () Bool)

(declare-fun e!1205032 () Bool)

(assert (=> d!578379 (=> res!843184 e!1205032)))

(assert (=> d!578379 (= res!843184 ((_ is Nil!21073) (t!175154 l1!1329)))))

(assert (=> d!578379 (= (subseq!421 (t!175154 l1!1329) l2!1298) e!1205032)))

(declare-fun b!1888251 () Bool)

(declare-fun e!1205029 () Bool)

(assert (=> b!1888251 (= e!1205029 (subseq!421 (t!175154 (t!175154 l1!1329)) (t!175154 l2!1298)))))

(declare-fun b!1888250 () Bool)

(declare-fun e!1205030 () Bool)

(declare-fun e!1205031 () Bool)

(assert (=> b!1888250 (= e!1205030 e!1205031)))

(declare-fun res!843185 () Bool)

(assert (=> b!1888250 (=> res!843185 e!1205031)))

(assert (=> b!1888250 (= res!843185 e!1205029)))

(declare-fun res!843183 () Bool)

(assert (=> b!1888250 (=> (not res!843183) (not e!1205029))))

(assert (=> b!1888250 (= res!843183 (= (h!26474 (t!175154 l1!1329)) (h!26474 l2!1298)))))

(declare-fun b!1888249 () Bool)

(assert (=> b!1888249 (= e!1205032 e!1205030)))

(declare-fun res!843186 () Bool)

(assert (=> b!1888249 (=> (not res!843186) (not e!1205030))))

(assert (=> b!1888249 (= res!843186 ((_ is Cons!21073) l2!1298))))

(declare-fun b!1888252 () Bool)

(assert (=> b!1888252 (= e!1205031 (subseq!421 (t!175154 l1!1329) (t!175154 l2!1298)))))

(assert (= (and d!578379 (not res!843184)) b!1888249))

(assert (= (and b!1888249 res!843186) b!1888250))

(assert (= (and b!1888250 res!843183) b!1888251))

(assert (= (and b!1888250 (not res!843185)) b!1888252))

(declare-fun m!2319779 () Bool)

(assert (=> b!1888251 m!2319779))

(assert (=> b!1888252 m!2319767))

(assert (=> b!1888202 d!578379))

(declare-fun d!578381 () Bool)

(declare-fun res!843188 () Bool)

(declare-fun e!1205036 () Bool)

(assert (=> d!578381 (=> res!843188 e!1205036)))

(assert (=> d!578381 (= res!843188 ((_ is Nil!21073) (t!175154 l2!1298)))))

(assert (=> d!578381 (= (subseq!421 (t!175154 l2!1298) (t!175154 l3!256)) e!1205036)))

(declare-fun b!1888255 () Bool)

(declare-fun e!1205033 () Bool)

(assert (=> b!1888255 (= e!1205033 (subseq!421 (t!175154 (t!175154 l2!1298)) (t!175154 (t!175154 l3!256))))))

(declare-fun b!1888254 () Bool)

(declare-fun e!1205034 () Bool)

(declare-fun e!1205035 () Bool)

(assert (=> b!1888254 (= e!1205034 e!1205035)))

(declare-fun res!843189 () Bool)

(assert (=> b!1888254 (=> res!843189 e!1205035)))

(assert (=> b!1888254 (= res!843189 e!1205033)))

(declare-fun res!843187 () Bool)

(assert (=> b!1888254 (=> (not res!843187) (not e!1205033))))

(assert (=> b!1888254 (= res!843187 (= (h!26474 (t!175154 l2!1298)) (h!26474 (t!175154 l3!256))))))

(declare-fun b!1888253 () Bool)

(assert (=> b!1888253 (= e!1205036 e!1205034)))

(declare-fun res!843190 () Bool)

(assert (=> b!1888253 (=> (not res!843190) (not e!1205034))))

(assert (=> b!1888253 (= res!843190 ((_ is Cons!21073) (t!175154 l3!256)))))

(declare-fun b!1888256 () Bool)

(assert (=> b!1888256 (= e!1205035 (subseq!421 (t!175154 l2!1298) (t!175154 (t!175154 l3!256))))))

(assert (= (and d!578381 (not res!843188)) b!1888253))

(assert (= (and b!1888253 res!843190) b!1888254))

(assert (= (and b!1888254 res!843187) b!1888255))

(assert (= (and b!1888254 (not res!843189)) b!1888256))

(declare-fun m!2319783 () Bool)

(assert (=> b!1888255 m!2319783))

(assert (=> b!1888256 m!2319775))

(assert (=> b!1888207 d!578381))

(declare-fun d!578385 () Bool)

(declare-fun res!843196 () Bool)

(declare-fun e!1205044 () Bool)

(assert (=> d!578385 (=> res!843196 e!1205044)))

(assert (=> d!578385 (= res!843196 ((_ is Nil!21073) l2!1298))))

(assert (=> d!578385 (= (subseq!421 l2!1298 l3!256) e!1205044)))

(declare-fun b!1888263 () Bool)

(declare-fun e!1205041 () Bool)

(assert (=> b!1888263 (= e!1205041 (subseq!421 (t!175154 l2!1298) (t!175154 l3!256)))))

(declare-fun b!1888262 () Bool)

(declare-fun e!1205042 () Bool)

(declare-fun e!1205043 () Bool)

(assert (=> b!1888262 (= e!1205042 e!1205043)))

(declare-fun res!843197 () Bool)

(assert (=> b!1888262 (=> res!843197 e!1205043)))

(assert (=> b!1888262 (= res!843197 e!1205041)))

(declare-fun res!843195 () Bool)

(assert (=> b!1888262 (=> (not res!843195) (not e!1205041))))

(assert (=> b!1888262 (= res!843195 (= (h!26474 l2!1298) (h!26474 l3!256)))))

(declare-fun b!1888261 () Bool)

(assert (=> b!1888261 (= e!1205044 e!1205042)))

(declare-fun res!843198 () Bool)

(assert (=> b!1888261 (=> (not res!843198) (not e!1205042))))

(assert (=> b!1888261 (= res!843198 ((_ is Cons!21073) l3!256))))

(declare-fun b!1888264 () Bool)

(assert (=> b!1888264 (= e!1205043 (subseq!421 l2!1298 (t!175154 l3!256)))))

(assert (= (and d!578385 (not res!843196)) b!1888261))

(assert (= (and b!1888261 res!843198) b!1888262))

(assert (= (and b!1888262 res!843195) b!1888263))

(assert (= (and b!1888262 (not res!843197)) b!1888264))

(assert (=> b!1888263 m!2319753))

(assert (=> b!1888264 m!2319759))

(assert (=> b!1888206 d!578385))

(declare-fun b!1888275 () Bool)

(declare-fun e!1205051 () Bool)

(declare-fun tp!538333 () Bool)

(assert (=> b!1888275 (= e!1205051 (and tp_is_empty!9009 tp!538333))))

(assert (=> b!1888200 (= tp!538325 e!1205051)))

(assert (= (and b!1888200 ((_ is Cons!21073) (t!175154 l3!256))) b!1888275))

(declare-fun b!1888277 () Bool)

(declare-fun e!1205053 () Bool)

(declare-fun tp!538335 () Bool)

(assert (=> b!1888277 (= e!1205053 (and tp_is_empty!9009 tp!538335))))

(assert (=> b!1888205 (= tp!538324 e!1205053)))

(assert (= (and b!1888205 ((_ is Cons!21073) (t!175154 l2!1298))) b!1888277))

(declare-fun b!1888278 () Bool)

(declare-fun e!1205054 () Bool)

(declare-fun tp!538336 () Bool)

(assert (=> b!1888278 (= e!1205054 (and tp_is_empty!9009 tp!538336))))

(assert (=> b!1888201 (= tp!538326 e!1205054)))

(assert (= (and b!1888201 ((_ is Cons!21073) (t!175154 l1!1329))) b!1888278))

(check-sat (not b!1888263) (not b!1888256) (not b!1888278) (not b!1888264) (not b!1888277) (not b!1888252) tp_is_empty!9009 (not b!1888251) (not b!1888255) (not b!1888244) (not b!1888275) (not b!1888236) (not b!1888234) (not b!1888243))
(check-sat)
