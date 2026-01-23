; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188904 () Bool)

(assert start!188904)

(declare-fun b!1886323 () Bool)

(declare-fun e!1203647 () Bool)

(declare-fun tp_is_empty!8949 () Bool)

(declare-fun tp!537916 () Bool)

(assert (=> b!1886323 (= e!1203647 (and tp_is_empty!8949 tp!537916))))

(declare-fun b!1886324 () Bool)

(declare-fun e!1203646 () Bool)

(declare-fun tp!537914 () Bool)

(assert (=> b!1886324 (= e!1203646 (and tp_is_empty!8949 tp!537914))))

(declare-fun b!1886325 () Bool)

(declare-fun e!1203648 () Bool)

(declare-datatypes ((B!1693 0))(
  ( (B!1694 (val!6132 Int)) )
))
(declare-datatypes ((List!21125 0))(
  ( (Nil!21043) (Cons!21043 (h!26444 B!1693) (t!175124 List!21125)) )
))
(declare-fun l2!1298 () List!21125)

(declare-fun l3!256 () List!21125)

(declare-fun subseq!393 (List!21125 List!21125) Bool)

(assert (=> b!1886325 (= e!1203648 (not (subseq!393 l2!1298 (t!175124 l3!256))))))

(declare-fun b!1886326 () Bool)

(declare-fun res!841866 () Bool)

(assert (=> b!1886326 (=> (not res!841866) (not e!1203648))))

(assert (=> b!1886326 (= res!841866 (subseq!393 l2!1298 l3!256))))

(declare-fun b!1886327 () Bool)

(declare-fun res!841868 () Bool)

(assert (=> b!1886327 (=> (not res!841868) (not e!1203648))))

(declare-fun l1!1329 () List!21125)

(get-info :version)

(assert (=> b!1886327 (= res!841868 (and ((_ is Cons!21043) l1!1329) ((_ is Cons!21043) l2!1298) ((_ is Cons!21043) l3!256) (not (= (h!26444 l2!1298) (h!26444 l3!256)))))))

(declare-fun b!1886328 () Bool)

(declare-fun e!1203645 () Bool)

(declare-fun tp!537915 () Bool)

(assert (=> b!1886328 (= e!1203645 (and tp_is_empty!8949 tp!537915))))

(declare-fun res!841867 () Bool)

(assert (=> start!188904 (=> (not res!841867) (not e!1203648))))

(assert (=> start!188904 (= res!841867 (subseq!393 l1!1329 l2!1298))))

(assert (=> start!188904 e!1203648))

(assert (=> start!188904 e!1203645))

(assert (=> start!188904 e!1203647))

(assert (=> start!188904 e!1203646))

(assert (= (and start!188904 res!841867) b!1886326))

(assert (= (and b!1886326 res!841866) b!1886327))

(assert (= (and b!1886327 res!841868) b!1886325))

(assert (= (and start!188904 ((_ is Cons!21043) l1!1329)) b!1886328))

(assert (= (and start!188904 ((_ is Cons!21043) l2!1298)) b!1886323))

(assert (= (and start!188904 ((_ is Cons!21043) l3!256)) b!1886324))

(declare-fun m!2318889 () Bool)

(assert (=> b!1886325 m!2318889))

(declare-fun m!2318891 () Bool)

(assert (=> b!1886326 m!2318891))

(declare-fun m!2318893 () Bool)

(assert (=> start!188904 m!2318893))

(check-sat (not b!1886328) (not b!1886325) (not start!188904) tp_is_empty!8949 (not b!1886326) (not b!1886323) (not b!1886324))
(check-sat)
(get-model)

(declare-fun b!1886345 () Bool)

(declare-fun e!1203666 () Bool)

(declare-fun e!1203665 () Bool)

(assert (=> b!1886345 (= e!1203666 e!1203665)))

(declare-fun res!841885 () Bool)

(assert (=> b!1886345 (=> (not res!841885) (not e!1203665))))

(assert (=> b!1886345 (= res!841885 ((_ is Cons!21043) l3!256))))

(declare-fun d!577956 () Bool)

(declare-fun res!841888 () Bool)

(assert (=> d!577956 (=> res!841888 e!1203666)))

(assert (=> d!577956 (= res!841888 ((_ is Nil!21043) l2!1298))))

(assert (=> d!577956 (= (subseq!393 l2!1298 l3!256) e!1203666)))

(declare-fun b!1886347 () Bool)

(declare-fun e!1203667 () Bool)

(assert (=> b!1886347 (= e!1203667 (subseq!393 (t!175124 l2!1298) (t!175124 l3!256)))))

(declare-fun b!1886348 () Bool)

(declare-fun e!1203668 () Bool)

(assert (=> b!1886348 (= e!1203668 (subseq!393 l2!1298 (t!175124 l3!256)))))

(declare-fun b!1886346 () Bool)

(assert (=> b!1886346 (= e!1203665 e!1203668)))

(declare-fun res!841886 () Bool)

(assert (=> b!1886346 (=> res!841886 e!1203668)))

(assert (=> b!1886346 (= res!841886 e!1203667)))

(declare-fun res!841887 () Bool)

(assert (=> b!1886346 (=> (not res!841887) (not e!1203667))))

(assert (=> b!1886346 (= res!841887 (= (h!26444 l2!1298) (h!26444 l3!256)))))

(assert (= (and d!577956 (not res!841888)) b!1886345))

(assert (= (and b!1886345 res!841885) b!1886346))

(assert (= (and b!1886346 res!841887) b!1886347))

(assert (= (and b!1886346 (not res!841886)) b!1886348))

(declare-fun m!2318895 () Bool)

(assert (=> b!1886347 m!2318895))

(assert (=> b!1886348 m!2318889))

(assert (=> b!1886326 d!577956))

(declare-fun b!1886349 () Bool)

(declare-fun e!1203670 () Bool)

(declare-fun e!1203669 () Bool)

(assert (=> b!1886349 (= e!1203670 e!1203669)))

(declare-fun res!841889 () Bool)

(assert (=> b!1886349 (=> (not res!841889) (not e!1203669))))

(assert (=> b!1886349 (= res!841889 ((_ is Cons!21043) l2!1298))))

(declare-fun d!577960 () Bool)

(declare-fun res!841892 () Bool)

(assert (=> d!577960 (=> res!841892 e!1203670)))

(assert (=> d!577960 (= res!841892 ((_ is Nil!21043) l1!1329))))

(assert (=> d!577960 (= (subseq!393 l1!1329 l2!1298) e!1203670)))

(declare-fun b!1886351 () Bool)

(declare-fun e!1203671 () Bool)

(assert (=> b!1886351 (= e!1203671 (subseq!393 (t!175124 l1!1329) (t!175124 l2!1298)))))

(declare-fun b!1886352 () Bool)

(declare-fun e!1203672 () Bool)

(assert (=> b!1886352 (= e!1203672 (subseq!393 l1!1329 (t!175124 l2!1298)))))

(declare-fun b!1886350 () Bool)

(assert (=> b!1886350 (= e!1203669 e!1203672)))

(declare-fun res!841890 () Bool)

(assert (=> b!1886350 (=> res!841890 e!1203672)))

(assert (=> b!1886350 (= res!841890 e!1203671)))

(declare-fun res!841891 () Bool)

(assert (=> b!1886350 (=> (not res!841891) (not e!1203671))))

(assert (=> b!1886350 (= res!841891 (= (h!26444 l1!1329) (h!26444 l2!1298)))))

(assert (= (and d!577960 (not res!841892)) b!1886349))

(assert (= (and b!1886349 res!841889) b!1886350))

(assert (= (and b!1886350 res!841891) b!1886351))

(assert (= (and b!1886350 (not res!841890)) b!1886352))

(declare-fun m!2318897 () Bool)

(assert (=> b!1886351 m!2318897))

(declare-fun m!2318899 () Bool)

(assert (=> b!1886352 m!2318899))

(assert (=> start!188904 d!577960))

(declare-fun b!1886357 () Bool)

(declare-fun e!1203678 () Bool)

(declare-fun e!1203677 () Bool)

(assert (=> b!1886357 (= e!1203678 e!1203677)))

(declare-fun res!841897 () Bool)

(assert (=> b!1886357 (=> (not res!841897) (not e!1203677))))

(assert (=> b!1886357 (= res!841897 ((_ is Cons!21043) (t!175124 l3!256)))))

(declare-fun d!577962 () Bool)

(declare-fun res!841900 () Bool)

(assert (=> d!577962 (=> res!841900 e!1203678)))

(assert (=> d!577962 (= res!841900 ((_ is Nil!21043) l2!1298))))

(assert (=> d!577962 (= (subseq!393 l2!1298 (t!175124 l3!256)) e!1203678)))

(declare-fun b!1886359 () Bool)

(declare-fun e!1203679 () Bool)

(assert (=> b!1886359 (= e!1203679 (subseq!393 (t!175124 l2!1298) (t!175124 (t!175124 l3!256))))))

(declare-fun b!1886360 () Bool)

(declare-fun e!1203680 () Bool)

(assert (=> b!1886360 (= e!1203680 (subseq!393 l2!1298 (t!175124 (t!175124 l3!256))))))

(declare-fun b!1886358 () Bool)

(assert (=> b!1886358 (= e!1203677 e!1203680)))

(declare-fun res!841898 () Bool)

(assert (=> b!1886358 (=> res!841898 e!1203680)))

(assert (=> b!1886358 (= res!841898 e!1203679)))

(declare-fun res!841899 () Bool)

(assert (=> b!1886358 (=> (not res!841899) (not e!1203679))))

(assert (=> b!1886358 (= res!841899 (= (h!26444 l2!1298) (h!26444 (t!175124 l3!256))))))

(assert (= (and d!577962 (not res!841900)) b!1886357))

(assert (= (and b!1886357 res!841897) b!1886358))

(assert (= (and b!1886358 res!841899) b!1886359))

(assert (= (and b!1886358 (not res!841898)) b!1886360))

(declare-fun m!2318905 () Bool)

(assert (=> b!1886359 m!2318905))

(declare-fun m!2318907 () Bool)

(assert (=> b!1886360 m!2318907))

(assert (=> b!1886325 d!577962))

(declare-fun b!1886377 () Bool)

(declare-fun e!1203693 () Bool)

(declare-fun tp!537919 () Bool)

(assert (=> b!1886377 (= e!1203693 (and tp_is_empty!8949 tp!537919))))

(assert (=> b!1886328 (= tp!537915 e!1203693)))

(assert (= (and b!1886328 ((_ is Cons!21043) (t!175124 l1!1329))) b!1886377))

(declare-fun b!1886378 () Bool)

(declare-fun e!1203694 () Bool)

(declare-fun tp!537922 () Bool)

(assert (=> b!1886378 (= e!1203694 (and tp_is_empty!8949 tp!537922))))

(assert (=> b!1886324 (= tp!537914 e!1203694)))

(assert (= (and b!1886324 ((_ is Cons!21043) (t!175124 l3!256))) b!1886378))

(declare-fun b!1886379 () Bool)

(declare-fun e!1203695 () Bool)

(declare-fun tp!537923 () Bool)

(assert (=> b!1886379 (= e!1203695 (and tp_is_empty!8949 tp!537923))))

(assert (=> b!1886323 (= tp!537916 e!1203695)))

(assert (= (and b!1886323 ((_ is Cons!21043) (t!175124 l2!1298))) b!1886379))

(check-sat (not b!1886359) (not b!1886347) (not b!1886351) (not b!1886360) tp_is_empty!8949 (not b!1886352) (not b!1886377) (not b!1886348) (not b!1886378) (not b!1886379))
(check-sat)
